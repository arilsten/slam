/************************************************************************/
// File:            functions.h                                         //
// Author:          Arild Stenset, NTNU Spring 2020                     //
// Purpose:         Arrange useful functions                            //
//                                                                      //
/************************************************************************/

#include "math.h"
#include "functions.h"
#include "defines.h"
#include "i2c.h"

/* Take any angle and put it inside -PI, PI */
void vFunc_Inf2pi(float *angle_in_radians){
    float result = fmod(*angle_in_radians,2*M_PI); //any angle is on form x +2*pi*n 
    if(result > M_PI){  //limit angle to +_ pi instead of +_2 pi 
      result -= 2*M_PI;
      }
    if(result < -M_PI){
      result += 2*M_PI;
    }
    *angle_in_radians = result;
}

/* Calculates the distance in x direction to a measured object*/
int16_t distObjectX(int16_t x, int16_t theta, int8_t servoAngle, int16_t* sensorData, uint8_t sensorNumber){
    int16_t xDist = x - cos(theta)*SENSOR_TOWER_OFFSET_X_MM + cos(theta+(servoAngle+sensorNumber*90)*DEG2RAD)*(sensorData[sensorNumber]);

    return xDist;
}


int16_t distObjectXlocal(int16_t theta, int8_t servoAngle, int16_t* sensorData, uint8_t sensorNumber){
    int16_t xDist = cos(theta+(servoAngle+sensorNumber*90)*DEG2RAD)*(sensorData[sensorNumber]);

    return xDist;
}


/* Calculates the distance in y direction to a measured object*/
int16_t distObjectY(int16_t y, int16_t theta, int8_t servoAngle, int16_t* sensorData, uint8_t sensorNumber){
    int16_t yDist = y - cos(theta)*SENSOR_TOWER_OFFSET_Y_MM + sin(theta+(servoAngle+sensorNumber*90)*DEG2RAD)*(sensorData[sensorNumber]);
    
    return yDist;
}


int16_t distObjectYlocal(int16_t theta, int8_t servoAngle, int16_t* sensorData, uint8_t sensorNumber){
    int16_t yDist = sin(theta+(servoAngle+sensorNumber*90)*DEG2RAD)*(sensorData[sensorNumber]);
	
    return yDist;
}


/* Arranges the message with robot positons, object positions and returns an array used from February 2020*/
void sendNewPoseMessage(int16_t x, int16_t y, int16_t theta, int8_t servoAngle, int16_t* sensorData){
	uint8_t msgLength = 23;
    int8_t data[msgLength];
    int16_t xObject;
    int16_t yObject;
    data[22] = 0;

    data[0] = (x & 0xFF);         //xLowByte                
    data[1] = (x >> 8);           //xHighByte
    data[2] = (y & 0xFF);             
    data[3] = (y >> 8);           
    data[4] = (theta & 0xFF);
    data[5] = (theta >> 8);

    for(int i = 0; i < NUM_DIST_SENSORS; i++){
        xObject = distObjectX(x, theta, servoAngle, sensorData, i);
        yObject = distObjectY(y, theta, servoAngle, sensorData, i);
        data[i*4+6] = (xObject & 0xFF);                   
        data[i*4+7] = (xObject >> 8);                     
        data[i*4+8] = (yObject & 0xFF);                   
        data[i*4+9] = (yObject >> 8);                    

        if(sensorData[i] < DETECTION_THRESHOLD_MM){
            data[22] |= (1 << ((NUM_DIST_SENSORS-i)-1));        
        }
        else{
            data[22] &= ~(1 << ((NUM_DIST_SENSORS-i)-1));
        }
    }
	i2cSendNOADDR(I2C_DEVICE_DONGLE, data, msgLength);
}


/* Arranges the message with robot positons, object positions and returns an array */
/* If using Grindviks server version, this function has to be used to format the messages */

void sendOldPoseMessage(int16_t x, int16_t y, int16_t theta, int8_t servoAngle, int16_t* sensorData){
	uint8_t msgLength = 8;
    int8_t data[msgLength];
    int16_t xObject;
    int16_t yObject;

    data[0] = (x & 0xFF);           // lowbyte               
    data[1] = (x >> 8);             // highByte
    data[2] = (y & 0xFF);          
    data[3] = (y >> 8);             
    
    for(int i = 0; i < NUM_DIST_SENSORS; i++){
        if(sensorData[i] < DETECTION_THRESHOLD_MM){
            xObject = distObjectX(x, theta, servoAngle, sensorData, i);
            yObject = distObjectY(y, theta, servoAngle, sensorData, i); 
            data[4] = (xObject & 0xFF);
            data[5] = (xObject >> 8);
            data[6] = (yObject & 0xFF);
            data[7] = (yObject >> 8);
            i2cSendNOADDR(I2C_DEVICE_DONGLE, data, msgLength);
        }
    }
}