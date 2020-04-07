/************************************************************************/
// File:            kalmanFilter.h                                      //
// Author:          Leithe                                              //
// Purpose:         kalman filter                             //
//                                                                      //
/************************************************************************/

#ifndef KALMAN_FILTER_H
#define KALMAN_FILTER_H

#include <stdint.h>

typedef struct{
float x;
float y;
float heading;
}state;

void kf_init(int16_t m, int16_t n);

int kf_step(float* Z);

state kalmanGetState();

void kf_setGyroVar(float value);

void kf_setEncoderVar(float value);




#endif /*KALMAN_FILTER_H*/