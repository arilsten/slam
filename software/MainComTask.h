/************************************************************************/
// File:            MainComTask.h                                      //
// Author:          Stenset, Spring 2020                                //
// Purpose:                                                             //
//                                                                      //
/************************************************************************/

#ifndef MAIN_COM_TASK_H
#define MAIN_COM_TASK_H

#include <stdint.h>
#include "defines.h"

extern int8_t collisionAngles[NUM_DIST_SENSORS];

void vMainCommunicationTask(void *pvParameters);






/* C++ server messages */
#define START_POSITION	1
#define NEW_WAYPOINT	114		//Test from Grindviks C++ server








#endif /* MAIN_COM_TASK_H */