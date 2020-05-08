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


	// test variabler
	float gyrZ = 0;

	// Initialise the xLastWakeTime variable with the current time.
	TickType_t xLastWakeTime = xTaskGetTickCount();
	TickType_t xLastWakeTime2 = xLastWakeTime;
	float Z[7];
	kf_init(7,8);
	
	while (true) {
		count++;
		// Loop
		vTaskDelayUntil(&xLastWakeTime, 40);
		if (gHandshook) { // Check if we are ready
		int16_t leftWheelTicks = 0;
		int16_t rightWheelTicks = 0;
		float dRobot = 0;
		float dTheta = 0;

		/* DATA COLLECTION*/
		// Get encoder data, protect the global tick variables
		xSemaphoreTake(xTickMutex, 15);
		leftWheelTicks = gLeftWheelTicks;
		rightWheelTicks = gRightWheelTicks;
		xSemaphoreGive(xTickMutex);

		float dLeft = (float)(leftWheelTicks * WHEEL_FACTOR_MM);   // Distance left wheel has traveled since last sample
		float dRight = (float)(rightWheelTicks * WHEEL_FACTOR_MM); // Distance right wheel has traveled since last sample
		dRobot = (dLeft + dRight) / 2;
		dRobot = dRobot;				//TODO Remove this obviously shitty line
		dTheta = (dRight - dLeft) / WHEELBASE_MM; // Get angle from encoders, dervied from arch of circles formula

		// Get IMU data:
		if (IMU_newData()){
			IMU_read();                              // gather IMU readings
			gyro = IMU_getGyro();
			accel = IMU_getAccel();
			accel.x -=  accelXoffset;
			accel.y -=  accelYoffset;
			//gyrZ = fIMU_readFloatGyroZ() - gyroOffset; //GYRO Z is in degrees here
			gyrZ = gyro.z - gyroOffset;
			
			/*
			if(gyrZ < 0){
					NRF_LOG_INFO("\t Before gyrZ: -%i", gyrZ*-1000);
			}
			else{
				NRF_LOG_INFO("\t Before gyrZ: %i", gyrZ*1000);
			}
			
			if((-0.1 > gyrZ*100 ) || (gyrZ*100 > 0.1)){
				if(count % 100){
					//NRF_LOG_INFO("Inside threshold thing");
				}
				gyrZ = 0.0;
			}
			
			if(gyrZ < 0){
				NRF_LOG_INFO("\t After gyrZ: -%i", gyrZ*-1000);
			}
			else{
				NRF_LOG_INFO("\t After gyrZ: %i", gyrZ*1000);
			}
			
			
			
			if(count % 20 == 0){
				if(gyrZ < 0){
					NRF_LOG_INFO("\t gyrZ: -%i", gyrZ*-1000);
				}
				else{
					NRF_LOG_INFO("\t gyrZ: %i", gyrZ*1000);
				}
				
				if(gyroOffset < 0){
					NRF_LOG_INFO("gO: -%i", gyroOffset*-1000);
				}
				else{
					NRF_LOG_INFO("gO: %i", gyroOffset*1000);
				}
			}
			*/
			
			
			//char str1[20];
			//sprintf(str1,"gyrZ: %i", (int) gyrZ*100);
			//display_text_on_line(2,str1);                 //Check if the gyro measurement is the cause of heading drift
			vTaskDelay(10);  //arilsten: Seems like there has to be a delay here because the line below makes the robot not work properly.
			//NRF_LOG_INFO("ACC X:%d ,Y:%d, Z:%d",(int)(accel.x*10000), (int)(accel.y*10000), (int)(accel.z*10000));          // Prints often to RTT
			} else {
				//NRF_LOG_INFO("IMU Has no new data");
				gyrZ = 0.0;		 // This doesnt work as intended since the gyro has new data with noice present which makes the heading drift accordingly.
			}
			//get MAGNETOMETER data:
			// MAG_reading_t mag = mag_read();
			/* SENSOR DATA collected*/               
			/*step kalman filter*/       
			float cosTheta = cos(gTheta_hat);
			float sinTheta = sin(gTheta_hat);
			//filter estimates in gound plane coordinates   

			//TickType_t tickdiff =xTaskGetTickCount()- xLastWakeTime2;
			//xLastWakeTime2 = xTaskGetTickCount(); 
			//NRF_LOG_INFO("ET:%u",(uint32_t) tickdiff); //  used to check if timing issues

			//inputs in m AND RADIANS
			Z[0]=dRobot*cosTheta*0.025;  // encoder speed, x-axis // (distance /(40/1000))/1000
			Z[1]=accel.x*cosTheta*1.03; //+accel.y*sinTheta; //accelerometer  readings x-axis

			Z[2]=dRobot*sinTheta*0.025; // encoder speed y-axis
			Z[3]=accel.x*sinTheta*1.03; //+accel.y*cosTheta; //accellerometer reading y-axis

			Z[4]=dTheta*25.0; // encoder rotation speed (theta_hat)
			Z[5]=gyrZ*DEG2RAD; //gyro rotation speed (theta_hat)
			Z[6]=0;  // magnetometer HEADING( unused(come up with clever way to use (static field detection ?)also magnetometer sample rate is lower than filter))  

			if(dRobot==0){
				//kf_setGyroVar(1);//if wheels arent turning have less trust in gyro
				Z[1]=0.0; //if wheels arent turning dont trust accelerometer  
				Z[3]=0.0;
				accelXoffset += (accel.x/1000);//try to correct sensor offset drifting
			}else{
			
				//kf_setGyroVar(0.0134);
				if(fabs(Z[5]-Z[4])>0.2*Z[5]){ kf_setEncoderVar(1);} // if gyro and encoders mismatch (stuck?) trust gyro
				else {kf_setEncoderVar(0.03);}
			}

			kf_step(Z);//step the filter  
			kf_state = kalmanGetState();//extract state

			if(count > 200){
				if(kf_state.x < 0){
					NRF_LOG_INFO("X: -%i", kf_state.x*-1000);
				}
				else{
					NRF_LOG_INFO("X: %i", kf_state.x*1000);
				}
				
				if(kf_state.y < 0){
					NRF_LOG_INFO("Y: -%i", kf_state.y*-1000);
				}
				else{
					NRF_LOG_INFO("Y: %i", kf_state.y*1000);
				}
				
				if(kf_state.heading < 0){
					NRF_LOG_INFO("Hdn: -%i", kf_state.heading*-RAD2DEG);
				}
				else{
					NRF_LOG_INFO("Hdn: %i", kf_state.heading*RAD2DEG);
				}
				count = 0;
			}

			//NRF_LOG_INFO("gryo:%d,enc:%d",(int)(Z[5]*1000),(int)(Z[4]*1000));
			//NRF_LOG_INFO("x %d",(int)(kf_state.x*1000));
			//NRF_LOG_INFO("y %d",(int)(kf_state.y*1000));
			// NRF_LOG_INFO("AX: %d,Ay:%d",(int)(accel.x*1000),(int)(accel.y*1000));
			//NRF_LOG_INFO("\t Theta: %d" ,(int)(kf_state.heading*RAD2DEG));



			/*
			int oldheading = heading;
			heading = (int)(kf_state.heading);
			time = (xTaskGetTickCount()/1000);
			if(oldheading != heading){
			NRF_LOG_INFO("Est.Task| Sec: %i \t Hdng: %i", (int)time, (int)heading*RAD2DEG);
			}
			*/

			/*
			if(count == 200){
			NRF_LOG_INFO("\t kfHdng: %d", (float)((kf_state.heading)*RAD2DEG));  //\t --user-- Sec: %i \t globalTheta: %i
			count = 0;
			}
			*/

			/*
			if(count > 1000){
			NRF_LOG_INFO("E-gT: %i", (int)((gTheta_hat)*RAD2DEG));

			}
			*/

			// Update global pose

			vFunc_Inf2pi(&(kf_state.heading));
			xSemaphoreTake(xPoseMutex, 15);
			gTheta_hat = kf_state.heading;

			/*
			if(count > 1000){
			NRF_LOG_INFO("kfH: %i gT: %i" ,(int)((kf_state.heading)*RAD2DEG), (int)((gTheta_hat)*RAD2DEG));
			count = 0;
			}

			*/
			gX_hat = (int)(kf_state.x*1000); //convert from m to mm
			gY_hat = (int)(kf_state.y*1000);
			gLeft = dLeft;
			gRight = dRight;
			xSemaphoreGive(xPoseMutex);






			// Send semaphore to controller
			xSemaphoreGive(xControllerBSem);

			}else{
			if (gyroBiasGuard){//neccesary to complete this part only once
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

				for (i = 0; i <= samples; i++) {
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

					while (!IMU_newData()) {
						vTaskDelay(20); // wait for new data
						fails++;
						sprintf(str4,"cal F:%i S:%i",fails,sucsess);
						display_text_on_line(4,str4); 
					}
				}
				NRF_LOG_INFO("aFX: %i aFY: %i gF: %i", gyroF, accelFX, gyroOffset);
				gyroOffset = gyroF / (float)i;
				accelXoffset = accelFX/(float)i;
				accelYoffset = accelFY /(float)i;
				gyroBiasGuard = 0;

				NRF_LOG_INFO("aX: %i aY: %i g: %i", accelXoffset, accelYoffset, gyroOffset);

				if(!USEBLUETOOTH){
					gHandshook = true;
				}
			}
		}
	} // While(1) end
}