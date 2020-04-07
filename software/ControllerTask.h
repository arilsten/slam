/************************************************************************/
// File:            ControllerTask.h                                    //
// Author:                                                              //
// Purpose:         ControllerTask                                      //
//                                                                      //
/************************************************************************/

#ifndef CONTROLLER_TASK_H
#define CONTROLLER_TASK_H

#include <stdint.h>

void motorRegulator(int16_t lspeed, int16_t rspeed, encoderTicks ticks);
void vMainPoseControllerTask(void *pvParameters);









#endif /* CONTROLLER_TASK_H */