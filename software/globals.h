/************************************************************************/
// File:            globals.h                                      //
// Author:                                                        //
// Purpose:         Organize all global stash and shared stuff          //
//                                                                      //
/************************************************************************/

#ifndef GLOBALS_H
#define GLOBALS_H

#include <stdint.h>

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

extern TaskHandle_t handle_display_task,
    handle_user_task,
    handle_microsd_task,
    pose_estimator_task,
    pose_controller_task,
    communication_task,
    sensor_tower_task,
    arq_task;

/* Semaphore handles */
extern SemaphoreHandle_t xScanLock;
extern SemaphoreHandle_t xPoseMutex;
extern SemaphoreHandle_t xTickMutex;
extern SemaphoreHandle_t xControllerBSem;
extern SemaphoreHandle_t xCommandReadyBSem;
extern SemaphoreHandle_t mutex_spi;
//extern SemaphoreHandle_t xCollisionMutex;

/* Queues */
//QueueHandle_t movementQ = 0;
extern QueueHandle_t poseControllerQ;
extern QueueHandle_t scanStatusQ;
extern QueueHandle_t queue_microsd;

// Flag to indicate connection status. Interrupt can change handshook status
extern uint8_t gHandshook;
extern uint8_t gPaused;


/* Declaration of setup parameters*/
extern bool USEBLUETOOTH;	//for switching between bluetooth and NRF52840 dongle
extern bool newServer;		// For switching between Grindvik and Mullins' server versions
extern bool validateWP;		// If false, all waypoints are processed. If true, waypoints inside collision sectors are discarded.



// Global robot pose
extern float gTheta_hat; 
extern int16_t gX_hat;
extern int16_t gY_hat;
extern float gLeft;
extern float gRight;

// Global encoder tick values, could probably be replaced by a queue
extern int16_t gRightWheelTicks;
extern int16_t gLeftWheelTicks;


/* STRUCTURE */
struct sPolar {
    float heading;
    int16_t distance;
};

struct sCartesian {
    float x;
    float y;
};









#endif  /* GLOBALS_H */