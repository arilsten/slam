/************************************************************************/
// File:            EstimatorTask.c                                     //
// Author:																//
// Purpose:                                                             //
//                                                                      //
/************************************************************************/

#include "MPU6050.h"
#include "defines.h"
#include "freeRTOS.h"
#include "functions.h"
#include "mag3110.h"
#include "math.h"
#include "nrf_log.h"
#include "queue.h"
#include "semphr.h"
#include "timers.h"
#include "microsd.h"
#include "kalmanFilter.h"
#include "display.h"
#include "server_communication.h"
#include "EstimatorTask.h"
#include "globals.h"
#include "ControllerTask.h"

int8_t gyroBiasGuard = 1;
IMU_reading_t gyro;
IMU_reading_t accel;
state kf_state;


/* Pose estimator task */
void vMainPoseEstimatorTask(void *pvParameters) {
	int count = 0;
	float period_in_S = PERIOD_ESTIMATOR_MS / 1000.0;
	float accelXoffset = 0;
	float accelYoffset = 0 ;
	float gyroOffset = 0.0;
	float compassOffset = 0.0;

	int KFcounter = 0;
	int KFheading = 0;
	int time = 0;
	// float variance_gyro = 0.0482f;                                             // [rad] calculated offline, see report
	//float variance_encoder = (2.0f * WHEEL_FACTOR_MM) / (WHEELBASE_MM / 2.0f); // approximation, 0.0257 [rad]

	// float variance_gyro_encoder = (variance_gyro + variance_encoder) * period_in_S; // (Var gyro + var encoder) * timestep

	// For microsd-logging
	char gyrodata[20];
	int headingTime = 0;
	int headingLogCounter = 0;
	bool headingLogDone = false;

	uint8_t robotMovement = moveStop;

	char str2[20];
	char str3[20];

	// test variabler
	float gyrZ = 0;

	// Initialise the xLastWakeTime variable with the current time.
	TickType_t xLastWakeTime = xTaskGetTickCount();
	TickType_t xLastWakeTime2 = xLastWakeTime;
	float Z[7];
	kf_init(7,8);

	float gyroIntegral = 0;
	float gyroLimit = 0.1;

	while (true) {
		count++;
	
		// Loop
		vTaskDelayUntil(&xLastWakeTime, 40);
	
		if (gHandshook) { // gHandshook set to true in IMU calibration further down
			int16_t leftWheelTicks = 0;
			int16_t rightWheelTicks = 0;
			float dRobot = 0;
			float dTheta = 0;
		
			/* DATA COLLECTION*/
			// Get encoder data, protect the global tick variables
			//xSemaphoreTake(xTickMutex, 15);
			//leftWheelTicks = gLeftWheelTicks;
			//rightWheelTicks = gRightWheelTicks;
			//xSemaphoreGive(xTickMutex);
		
			/* This was added to reduce the position update during turns */
			if (xQueueReceive(scanStatusQ, &robotMovement, 15) == pdTRUE) {
				switch (robotMovement) {
				case moveStop:
				case moveForward:
				case moveBackward:
					xSemaphoreTake(xTickMutex, 15);
					leftWheelTicks = gLeftWheelTicks;
					rightWheelTicks = gRightWheelTicks;
					xSemaphoreGive(xTickMutex);
					break;
				case moveClockwise:
				case moveCounterClockwise:
					leftWheelTicks = 0;
					rightWheelTicks = 0;
					break;
				default:
					break;
				}
			}
		
		

			float dLeft = (float)(leftWheelTicks * WHEEL_FACTOR_MM);	// Distance left wheel has traveled since last sample
			float dRight = (float)(rightWheelTicks * WHEEL_FACTOR_MM);	// Distance right wheel has traveled since last sample
			dRobot = (dLeft + dRight) / 2;
			dTheta = (dRight - dLeft) / WHEELBASE_MM;					// Get angle from encoders, dervied from arch of circles formula
		
		
		
			// Get IMU data:
			if (IMU_newData()){
				IMU_read();                      
				gyro = IMU_getGyro();
				accel = IMU_getAccel();
				accel.x -=  accelXoffset;
				accel.y -=  accelYoffset;
				gyrZ = gyro.z - gyroOffset;		// [deg/sec]
			
				if(fabs(gyrZ) < gyroLimit){		// Compensate for noise from the gyro
					gyrZ = 0.0;
				}
			} else {
				NRF_LOG_INFO("No new data from IMU");
				gyrZ = 0.0;
			}
		
			/* Alternative to Kalman Filter. */
			gyroIntegral += gyrZ*DEG2RAD*(float)(40.0/1000.0);
		
			
			
			
			/* Used to check timing issues */
			//TickType_t tickdiff =xTaskGetTickCount()- xLastWakeTime2;
			//xLastWakeTime2 = xTaskGetTickCount(); 
			//NRF_LOG_INFO("ET:%u",(uint32_t) tickdiff);
		
		
		
			//get MAGNETOMETER data:
			// MAG_reading_t mag = mag_read();
		
			/* SENSOR DATA collected*/ 
		
			/*step kalman filter*/       
			float cosTheta = cos(gTheta_hat);
			float sinTheta = sin(gTheta_hat);  

			// inputs in meters and radians
			Z[0]=dRobot*cosTheta*0.025;		// encoder speed, x-axis // (distance /(40/1000))/1000
			Z[1]=accel.x*cosTheta*1.03;		// +accel.y*sinTheta; //accelerometer  readings x-axis

			Z[2]=dRobot*sinTheta*0.025;		// encoder speed y-axis
			Z[3]=accel.y*sinTheta*1.03;		//TODO +accel.y*cosTheta; //accellerometer reading y-axis

			Z[4]=dTheta*25.0;				// encoder rotation speed (theta_hat)
			Z[5]=gyrZ*DEG2RAD;				// Changed to decouple the gyro from the Kalman filter.gyrZ*DEG2RAD; //gyro rotation speed (theta_hat)
			Z[6]=0;							// magnetometer HEADING( unused(come up with clever way to use (static field detection ?)also magnetometer sample rate is lower than filter))  

			if(dRobot==0){
				//kf_setGyroVar(1);//if wheels arent turning have less trust in gyro
				Z[1]=0.0;	//if wheels arent turning dont trust accelerometer  
				Z[3]=0.0;
				accelXoffset += (accel.x/1000);		//try to correct sensor offset drifting
			}else{
				//kf_setGyroVar(0.0134);
				if(fabs(Z[5]-Z[4])>0.2*Z[5]){ kf_setEncoderVar(1);}		// if gyro and encoders mismatch (stuck?) trust gyro
				else {kf_setEncoderVar(0.03);}
			}


			kf_step(Z);//step the filter  
			kf_state = kalmanGetState();//extract state


			// Update global pose
			vFunc_Inf2pi(&(kf_state.heading));
			vFunc_Inf2pi(&(gyroIntegral));
			
			if(count > 40){
				
				headingTime = (xTaskGetTickCount());
				sprintf(str2, "%d, %d, %d", (int)(kf_state.heading*RAD2DEG), (int)(gyroIntegral*RAD2DEG), (int)(headingTime));
				NRF_LOG_INFO("%s", str2);
		
				count = 0;
			}
			
			xSemaphoreTake(xPoseMutex, 15);
			gTheta_hat = gyroIntegral;				// kf_state.heading is replaced with gyroIntegral
			gX_hat = (int)(kf_state.x*1000);		//convert from m to mm
			gY_hat = (int)(kf_state.y*1000);
			gLeft = dLeft;
			gRight = dRight;
			xSemaphoreGive(xPoseMutex);


			// Send semaphore to controller
			xSemaphoreGive(xControllerBSem);

		}else{
			// IMU calibration
			if(gyroBiasGuard){//neccesary to complete this part only once
				// Not connected, getting heading and gyro bias
				char str4[20];
				uint16_t i;
				uint16_t samples = 300;
				float gyroF = 0;
				float accelFX = 0;
				float accelFY = 0;
				int fails = 0;
				int sucsess = 0;
	
				vTaskDelay(150);//use delay so we dont write before i2c is initialized

				for (i = 0; i < samples; i++){
					IMU_read(); //needs to be called to get new gyro data
					gyro = IMU_getGyro();
					accel = IMU_getAccel();
					gyroF += gyro.z;
					accelFX += accel.x;
					accelFY += accel.y;

					vTaskDelay(40);
					sprintf(str4,"cal F:%i S:%i",fails,sucsess);
					display_text_on_line(4,str4);
					sucsess++;
			
					while (!IMU_newData()){
						vTaskDelay(20); // wait for new data
						fails++;
						sprintf(str4,"cal F:%i S:%i",fails,sucsess);
						display_text_on_line(4,str4); 
					}
				}
				//NRF_LOG_INFO("aFX: %i aFY: %i gF: %i", gyroF, accelFX, gyroOffset);
				NRF_LOG_INFO("Calib.i: %i", i);
				gyroOffset = gyroF / (float)samples;
				accelXoffset = accelFX/(float)samples;
				accelYoffset = accelFY /(float)samples;
				gyroBiasGuard = 0;

				NRF_LOG_INFO("aX: %i aY: %i g: %i", accelXoffset, accelYoffset, gyroOffset);

				if(!USEBLUETOOTH){
					gHandshook = true;
				}
			}

		}

	} // While(1) end

}