/************************************************************************/
// File:            ControllerTask.h                                    //
// Author:                                                              //
// Purpose:         ControllerTask                                      //
//                                                                      //
/************************************************************************/

#ifndef CONTROLLER_TASK_H
#define CONTROLLER_TASK_H

#include <stdint.h>


void vMainPoseControllerTask(void *pvParameters);
void runThetaController(float thetaDiff);
void runDistanceController(float distanceError, float thetaError);
float getThetaTarget(void);








#endif /* CONTROLLER_TASK_H */