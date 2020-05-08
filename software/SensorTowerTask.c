/************************************************************************/
// File:            SensorTowerTask.c                                   //
// Author:																//
// Purpose:                                                             //
//                                                                      //
/************************************************************************/

#include "defines.h"
#include "freeRTOS.h"
#include "ir.h"
#include "math.h"
#include "nrf_log.h"
#include "queue.h"
#include "semphr.h"
#include "server_communication.h"
#include "servo.h"
#include "timers.h"
#include "i2c.h"
#include "functions.h"
#include "SensorTowerTask.h"
#include "globals.h"
#include "MainComTask.h"
#include <stdlib.h>


/* _________ SETUP VARIABLES __________ */
bool newServer = false;          // Changes between old and new message-style, when false it supports Grindviks server from 2019. Difference is MQTT message-format.


void vMainSensorTowerTask(void *pvParameters) {
    
    /* Task init */
    float thetahat = 0;
    int16_t xhat = 0;
    int16_t yhat = 0;
    uint8_t servoDirection = moveCounterClockwise;
    uint8_t servoAngle = 0;
    uint8_t servoResolution = 1;                    
    uint8_t robotMovement = moveStop;
    uint8_t idleCounter = 0;
	uint8_t sensorDataCM[NUM_DIST_SENSORS];		 
    uint16_t sensorDataMM[NUM_DIST_SENSORS];	

    // Initialize the xLastWakeTime variable with the current time.
    TickType_t xLastWakeTime;
	
    while (true) {
        if ((gHandshook == true) && (gPaused == false)) {
            // xLastWakeTime variable with the current time.
            xLastWakeTime = xTaskGetTickCount();
            // Set scanning resolution depending on which movement the robot is executing.
            if (xQueueReceive(scanStatusQ, &robotMovement, 150) == pdTRUE) {
                // Set servo step length according to movement,
                // Note that the iterations are skipped while robot is rotating (see further downbelow)
                switch (robotMovement) {
                case moveStop:
                    servoAngle *= servoResolution;
                    servoResolution = 1;
                    idleCounter = 1;
                    break;
                case moveForward:
                case moveBackward:
                    servoResolution = 5;
                    servoAngle /= servoResolution;      
                    idleCounter = 0;
                    break;
                case moveClockwise:
                case moveCounterClockwise:
                    // Iterations are frozen while rotating, see further down
                    idleCounter = 0;
                    break;
                default:
                    idleCounter = 0;
                    break;
                }
            }
            vServo_setAngle(servoAngle * servoResolution);
            vTaskDelayUntil(&xLastWakeTime, 200); // Was 200 before 08.05.2020. Wait total of 200 ms for servo to reach set point
            taskYIELD();
			
			xSemaphoreTake(xPoseMutex, 40);
            thetahat = gTheta_hat;
            xhat = gX_hat;
            yhat = gY_hat;
            xSemaphoreGive(xPoseMutex);

             
			/* Collect sensor values and adjust collision sectors when necessary */
            for(uint8_t i = 0; i < NUM_DIST_SENSORS; i++){
				int16_t detectionAngle_DEG = getDetectionAngle(servoAngle, i);
				
				if(USEBLUETOOTH){
					sensorDataCM[i] = (IrAnalogToMM(ir_read_blocking(i), i)/10);
					if(sensorDataCM[i] <= COLLISION_THRESHOLD_CM && sensorDataCM[i] > 0){
						//Add functionality for stopping robot
						increaseCollisionSector(servoAngle, i);
					}else{
						decreaseCollisionSector(servoAngle, i);
					}
				}
				else{
					sensorDataMM[i] = IrAnalogToMM(ir_read_blocking(i), i);
					if(sensorDataMM[i] <= COLLISION_THRESHOLD_MM && sensorDataMM[i] > 0){
						
						//Add functionality for stopping robot
						increaseCollisionSector(detectionAngle_DEG, i);
					}else{
						decreaseCollisionSector(detectionAngle_DEG, i);
					}
				}
			}
			
			
			
			/*  Send update to server  */
            // Java server message
            if(USEBLUETOOTH){                                                                    
                send_update(xhat/10, yhat/10, thetahat * RAD2DEG, servoAngle * servoResolution, sensorDataCM[0], sensorDataCM[1],  sensorDataCM[2], sensorDataCM[3]);
				
            }else{ // C++ server message
				if(newServer){
					sendNewPoseMessage(xhat, yhat, thetahat, servoAngle, sensorDataMM); // New  message-format from spring 2020.
				}else{
					sendOldPoseMessage(xhat, yhat, thetahat, servoAngle, sensorDataMM); // Old message formats supports Grindviks server from 2019.
				}
			}
			
			
			
			
            // Experimental
            if ((idleCounter > 10) && (robotMovement == moveStop)) {
                // If the robot stands idle for 1 second, send 'status:idle' in case the server missed it.
                send_idle();
                idleCounter = 1; //TODO IDLE FUNCTION
            } else if ((idleCounter >= 1) && (robotMovement == moveStop)) {
                idleCounter++;
            }
			


            // Iterate in a increasing/decreasign manner and depending on the robots movement
            if ((servoAngle * servoResolution <= 90) && (servoDirection == moveCounterClockwise) && (robotMovement < moveClockwise)) {
                servoAngle++;
            } else if ((servoAngle * servoResolution > 0) && (servoDirection == moveClockwise) && (robotMovement < moveClockwise)) {
                servoAngle--;
            }

            if ((servoAngle * servoResolution >= 90) && (servoDirection == moveCounterClockwise)) {
                servoDirection = moveClockwise;
            } else if ((servoAngle * servoResolution <= 0) && (servoDirection == moveClockwise)) {
                servoDirection = moveCounterClockwise;
            }
        }

        else { // Disconnected or unconfirmed
            vServo_setAngle(0);
            // Reset servo incrementation
            servoDirection = moveCounterClockwise;
            servoAngle = 0;
            idleCounter = 0;
            vTaskDelay(100);
        }
    } // While end
}