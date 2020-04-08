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

int newMsgCounter = 0;
int time = 0;

/* _________ SETUP VARIABLES __________ */
bool newServer = false;          // Changes between old and new message-style, when false it supports Grindviks server from 2019.

void vMainSensorTowerTask(void *pvParameters) {
    int count = 0;

    /* Task init */
    float thetahat = 0;
    int16_t xhat = 0;
    int16_t yhat = 0;
    uint8_t servoDirection = moveCounterClockwise;
    uint8_t servoStep = 0;
    uint8_t servoResolution = 1;                    //Is servoResolution used to turn the servoangle on or to 0? Look like it
    uint8_t robotMovement = moveStop;
    uint8_t idleCounter = 0;
    int16_t previous_left = 0;
    int16_t previous_right = 0;

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
                    servoStep *= servoResolution;
                    servoResolution = 1;
                    idleCounter = 1;
                    break;
                case moveForward:
                case moveBackward:
                    servoResolution = 5;
                    servoStep /= servoResolution;      
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
            vServo_setAngle(servoStep * servoResolution);
            vTaskDelayUntil(&xLastWakeTime, 200); // Wait total of 200 ms for servo to reach set point
            taskYIELD();

            uint8_t sensor[4];
            int16_t sensor16[4];
            if(USEBLUETOOTH){
                sensor[0] = (IrAnalogToMM(ir_read_blocking(distSensFwd), distSensFwd)/10);          //Saves distance in cm?
                sensor[1] = (IrAnalogToMM(ir_read_blocking(distSensLeft), distSensLeft)/10);
                sensor[2] = (IrAnalogToMM(ir_read_blocking(distSensRear), distSensRear)/10);
                sensor[3] = (IrAnalogToMM(ir_read_blocking(distSensRight), distSensRight)/10);
           
            }else{
                sensor16[0] = IrAnalogToMM(ir_read_blocking(distSensFwd), distSensFwd);              //Saves distance in mm?
                sensor16[1] = IrAnalogToMM(ir_read_blocking(distSensLeft), distSensLeft);
                sensor16[2] = IrAnalogToMM(ir_read_blocking(distSensRear), distSensRear);
                sensor16[3] = IrAnalogToMM(ir_read_blocking(distSensRight), distSensRight);
            }
         
            //NRF_LOG_INFO("F:%d L:%d R:%d B%d theta:%d", forwardSensor, leftSensor, rightSensor, rearSensor, (int)(thetahat * RAD2DEG));
            xSemaphoreTake(xPoseMutex, 40);
            thetahat = gTheta_hat;
            xhat = gX_hat;
            yhat = gY_hat;
            xSemaphoreGive(xPoseMutex);

            // Experimental
            if ((idleCounter > 10) && (robotMovement == moveStop)) {
                // If the robot stands idle for 1 second, send 'status:idle' in case the server missed it.
                send_idle();
                idleCounter = 1; //TODO IDLE FUNCTION
            } else if ((idleCounter >= 1) && (robotMovement == moveStop)) {
                idleCounter++;
            }
			

            // Send update to server
            // Java server message
            if(USEBLUETOOTH){                                                                    // distSensFwd, distSensLeft, distSensRear, distSensRight
                send_update(xhat/10, yhat/10, thetahat * RAD2DEG, servoStep * servoResolution, sensor[0], sensor[1],  sensor[2], sensor[3]);
				
            }else{ // C++ server message
				if(newServer){
					sendNewPoseMessage(xhat, yhat, thetahat, servoStep, sensor16); // New format from 2020.
				}else{
					sendOldPoseMessage(xhat, yhat, thetahat, servoStep, sensor16); // Old message formats supports Grindviks server from 2019.
				}
			}
			
			// Anti-collision
			int16_t angles[NUM_DIST_SENSORS];		// Needs 16 bit to cover -180 -> 180 degrees
			for(int i = 0; i < NUM_DIST_SENSORS; i++){
				int16_t xObject = distObjectXlocal(thetahat, servoStep, sensor16, i);
				int16_t yObject = distObjectYlocal(thetahat, servoStep, sensor16, i);
				uint16_t dist = sqrt(xObject*xObject + yObject*yObject);
				
				if(dist < COLLISION_THRESHOLD_MM){
					angles[i] = atan2(yObject, xObject)*RAD2DEG;
					//struct sCartesian Setpoint = {xhat/10, yhat/10};
					//xQueueSend(poseControllerQ, &Setpoint, 100);
					// When setting the setpoint to current position, the controller task takes care of stopping the robot.
					
				}else{
					angles[i] = 200; // Above 180 degrees
				}
				
			}
			xSemaphoreTake(xCollisionMutex, 20);
			memcpy(&collisionAngles, &angles, sizeof(angles));
			xSemaphoreGive(xCollisionMutex);


            // Iterate in a increasing/decreasign manner and depending on the robots movement
            if ((servoStep * servoResolution <= 90) && (servoDirection == moveCounterClockwise) && (robotMovement < moveClockwise)) {
                servoStep++;
            } else if ((servoStep * servoResolution > 0) && (servoDirection == moveClockwise) && (robotMovement < moveClockwise)) {
                servoStep--;
            }

            if ((servoStep * servoResolution >= 90) && (servoDirection == moveCounterClockwise)) {
                servoDirection = moveClockwise;
            } else if ((servoStep * servoResolution <= 0) && (servoDirection == moveClockwise)) {
                servoDirection = moveCounterClockwise;
            }
        }

        else { // Disconnected or unconfirmed
            vServo_setAngle(0);
            // Reset servo incrementation
            servoDirection = moveCounterClockwise;
            servoStep = 0;
            idleCounter = 0;
            vTaskDelay(100);
        }
    } // While end
}