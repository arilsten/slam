/***************************************************************************/
// File:            MainComTask.c											//
// Author:          Stenset, Spring 2020									//
// Purpose:         Keep the main communication task and its functions		//
//					in its own source file, previously located in main.c	//
//																			//
/***************************************************************************/

#include <stdint.h>
#include <stdio.h>

#include "MainComTask.h"
#include "server_communication.h"
#include "FreeRTOS.h"
#include "task.h"
#include "arq.h"
#include "globals.h"
#include "nrf_log.h"
#include "i2c.h"
#include "functions.h"
#include "display.h"
#include "math.h"

int16_t collisionAngles[NUM_DIST_SENSORS] = {200}; // Just to be above 180 degrees

message_t message_in;

uint8_t counter = 0;


void vMainCommunicationTask(void *pvParameters){
    struct sCartesian Setpoint = {0, 0}; // Struct for setpoints from server

    if(USEBLUETOOTH){
		message_t command_in; // Buffer for recieved messages
		server_communication_init();
		vTaskResume(arq_task);

		uint8_t success = 0;

		while (!success) {
			success = server_connect();
			vTaskDelay(1000);
		}

		NRF_LOG_INFO("success: %d", success);
		vTaskDelay(200);
		send_handshake();
		NRF_LOG_INFO("Handshake Completed");
		while (1) {

			if (xSemaphoreTake(xCommandReadyBSem, portMAX_DELAY) == pdTRUE){ //TODO Is this semaphore used anywhere else?
				NRF_LOG_INFO("NEW Command in");
				// We have a new command from the server, copy it to the memory
				//vTaskSuspendAll ();       // Temporarily disable context switching
				//taskENTER_CRITICAL();
				command_in = message_in;
				//taskEXIT_CRITICAL();
				//xTaskResumeAll ();      // Enable context switching
				switch (command_in.type) {
				case TYPE_CONFIRM:
					NRF_LOG_INFO("MESSAGE WAS: TYPE_CONFIRM");
					//taskENTER_CRITICAL();
					gHandshook = true; // Set start flag true
					//taskEXIT_CRITICAL();

					break;
				
				case TYPE_PING:
					NRF_LOG_INFO("MESSAGE WAS: TYPE_PING");
					send_ping_response();
					break;
				
				case TYPE_ORDER:
					NRF_LOG_INFO("MESSAGE WAS: TYPE_ORDER x: %d,Y:%d",command_in.message.order.x,command_in.message.order.y);
					Setpoint.x = command_in.message.order.x;
					Setpoint.y = command_in.message.order.y;
					/* Relay new coordinates to position controller */
					xQueueSend(poseControllerQ, &Setpoint, 100);
					break;
				
				case TYPE_PAUSE:
					NRF_LOG_INFO("MESSAGE WAS: TYPE_PAUSE");
					// Stop sending update messages
					//taskENTER_CRITICAL();
					gPaused = true;
					//taskEXIT_CRITICAL();
					// Stop controller
					Setpoint.x = 0;
					Setpoint.y = 0;
					xQueueSend(poseControllerQ, &Setpoint, 100);
					break;
				
				case TYPE_UNPAUSE:
					NRF_LOG_INFO("MESSAGE WAS: TYPE_UNPAUSE");
					//taskENTER_CRITICAL();
					gPaused = false;
				   // taskEXIT_CRITICAL();
					break;
				
				case TYPE_FINISH:
					NRF_LOG_INFO("MESSAGE WAS: TYPE_FINISH");
					//taskENTER_CRITICAL();
					gHandshook = false;
					//taskEXIT_CRITICAL();
					break;

				default:
					NRF_LOG_INFO("message:case default No type %d", command_in.type);
				}
			} 
		}
	}
	else{ // If NRF52840 Dongle used with thread and C++ server
		uint8_t message[5] = {0};
		int16_t oldwaypoint[2] = {0};
		int16_t waypoint[2] = {0};
		
		while(true){
			i2cReciveNOADDR(I2C_DEVICE_DONGLE, &message, 5);
		
			switch(message[0]){
			
				case START_POSITION:
					if(xSemaphoreTake(xPoseMutex, 20) == pdTRUE){
						gX_hat = *((int16_t*)&message[1]);
						gY_hat = *((int16_t*)&message[3]);
						//TODO This may need some condition variables so the scanning and stuff dont start before this is received.
						xSemaphoreGive(xPoseMutex);
					}else{
						NRF_LOG_INFO("xPoseMutex not available!");
					}
					break;
			
				case NEW_WAYPOINT: // New waypoint from Grindviks server has message code 114, check MainComTask.h.
					oldwaypoint[0] = waypoint[0];
					oldwaypoint[1] = waypoint[1];
					waypoint[0] = *((int16_t*)&message[1]);
					waypoint[1] = *((int16_t*)&message[3]);
					
					int16_t wpAngle = atan2(waypoint[1], waypoint[0])*RAD2DEG;
					bool isvalidWaypoint = validWaypoint(wpAngle);
					
					if(isvalidWaypoint == false){
						display_text_on_line(3, "Discarded WP");
						NRF_LOG_INFO("WP not valid");
					}else{
						display_text_on_line(3, "");
						NRF_LOG_INFO("WP valid");
					}
					
					if((oldwaypoint[0] != waypoint[0] || oldwaypoint[1] != waypoint[1])){
						
						struct sCartesian target = {waypoint[0]/10, waypoint[1]/10};
						xQueueSend(poseControllerQ, &target, 100);
					}
					break;
			
				default:
					break;
			}
				
			vTaskDelay(100);
		}
	}
}