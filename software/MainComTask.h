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

extern int16_t collisionAngles[NUM_DIST_SENSORS];

void vMainCommunicationTask(void *pvParameters);






/* C++ server message types */
#define START_POSITION	1
#define NEW_WAYPOINT	114		// Found by test from Grindviks C++ server, may be changed in the new version for 2020.








#endif /* MAIN_COM_TASK_H */