/***************************************************************************/
// File:            MainComTask.h											//
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

int16_t collisionAngles[NUM_DIST_SENSORS] = {200}; // Just to be above 360 degrees

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
		counter++;
		uint8_t message[5] = {0};
		int16_t oldwaypoint[2] = {0};
		int16_t waypoint[2] = {0};
		int16_t collAngles[NUM_DIST_SENSORS];
		
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
					
					/*
					xSemaphoreTake(xCollisionMutex, 20);
					memcpy(&collAngles, &collisionAngles, sizeof(collisionAngles));
					xSemaphoreGive(xCollisionMutex);
					
					if(counter > 100){
						NRF_LOG_INFO("CollAngleSens1: %i", (int)collAngles[0]);
						NRF_LOG_INFO("CollAngleSens2: %i", (int)collAngles[1]);
						NRF_LOG_INFO("CollAngleSens3: %i", (int)collAngles[2]);
						NRF_LOG_INFO("CollAngleSens4: %i", (int)collAngles[3]);
						counter = 0;
					}
					*/
					
					//bool validWaypoint = checkWaypoint(int x, int y);
					
					// Add functionality to check if the new waypoint is valid
					if(oldwaypoint[0] != waypoint[0] || oldwaypoint[1] != waypoint[1]){
						struct sCartesian target = {waypoint[0]/10, waypoint[1]/10};
						xQueueSend(poseControllerQ, &target, 100);
					}
					if(counter > 300){
						NRF_LOG_INFO("Just got a new waypoint");
					}
					break;
			
				default:
					if(counter > 300){
						NRF_LOG_INFO("Unknown message type from server. Type: %i", (int)message[0]);
					}
			}
				
			vTaskDelay(100);
		}
	}
}