/************************************************************************/
// File:            ControllerTask.c                                    //
// Author:																//
// Purpose:                                                             //
//                                                                      //
/************************************************************************/

#include "defines.h"
#include "encoder.h"
#include "freeRTOS.h"
#include "functions.h"
#include "math.h"
#include "motor.h"
#include "nrf_log.h"
#include "queue.h"
#include "semphr.h"
#include "timers.h"
#include "ControllerTask.h"
#include "globals.h"


/* Added 12.05.2020 */
float previousThetahat = 0;
float thetaDerivative = 0;
int controllerPrint = 0;
bool integrateTheta = true;
uint8_t thetaDoneCounter = 0;
float maxU = 25.0;
float minU = 20.0; //was 14.0
float stopU = 1.0;

float thetaErrorInt = 0;
float leftIntError;
float rightIntError;

float distanceDriven = 0;
float distanceToTarget = 0;

// Logging test
bool controllerLogDone = false;
int controllerLogCounter = 0;
int controllerTime = 0;
char controllerdata[20];

float thetaTargt = 0;

bool executingOrder = false;

/*  Calculates new settings for the movement task */
void vMainPoseControllerTask(void *pvParameters) {
    int count = 0;

    /* Task init */
    struct sCartesian Setpoint = {0, 0}; // Updates from server
    float radiusEpsilon = 15;            //[mm]The acceptable radius from goal for completion
    uint8_t lastMovement = 0;

    uint8_t maxDriveActuation = 90; //The max speed the motors will run at during drive max is 100, check also MAX_DUTY in motor.c.

    /* Controller variables for tuning */
    float rotateThreshold = 10.0 * DEG2RAD; // [rad] The threshold at which the robot will go from driving to rotation.
    float driveThreshold = 2.0 * DEG2RAD;   // [rad ]The threshold at which the robot will go from rotation to driving.

    /* Current position variables */
    float thetahat = 0;
    int16_t xhat = 0;
    int16_t yhat = 0;

    // Errors
    float distanceError = 0;
    float thetaError = 0;
	float xError = 0;
    float yError = 0;

	// Targets
    float xTargt = 0;
    float yTargt = 0;
    
	
    uint8_t doneTurning = false;
	uint8_t doneDriving = false;
    uint8_t idleSendt = false;

    /* TESTING VARIABLES */
    uint8_t controllerStop = false;
    float distanceStart = 0;
    float prevDistError = 0;
    float prevThetaError = 0;
    float thetahatStart = 0;
    float xhatStart = 0;
    float yhatStart = 0;
	
    uint8_t newOrder = false;
	bool collisionDetected = false;
    
    char str4[20];
    float dLeft = 0;
    float dRight = 0;
	
	TickType_t xLastWakeTime = xTaskGetTickCount();
	
    while (1) {
		/*  Used to check timing
		int previousTime = xLastWakeTime;
		xLastWakeTime = xTaskGetTickCount();
		int timeDifference = xLastWakeTime-previousTime;
		count++;
		if(count > 500){
			NRF_LOG_INFO("TimeDiff: %i", (int)timeDifference);
			count = 0;
		}
		*/
		
        if (gHandshook) {
			controllerPrint++;
			
			xSemaphoreTake(xTickMutex, 1);
			//read in encoder values and update ticks since last reading
			encoderTicks ticks = encoder_get_ticks();
			gLeftWheelTicks = ticks.left;
			gRightWheelTicks = ticks.right;
			xSemaphoreGive(xTickMutex);
			
            if (xSemaphoreTake(xControllerBSem, portMAX_DELAY) == pdTRUE) { // Wait for synchronization from estimator
                
				previousThetahat = thetahat;
                // Get robot pose
                xSemaphoreTake(xPoseMutex, portMAX_DELAY);
                thetahat = gTheta_hat;
                xhat = gX_hat;
                yhat = gY_hat;
                dLeft = gLeft;
                dRight = gRight;
                xSemaphoreGive(xPoseMutex);

                // Check if a new waypoint update is received
                if (xQueueReceive(poseControllerQ, &Setpoint, 0) == pdTRUE) { /* poseControllerQueue is filled from SensorTowerTask and from MainCommunicationTask */
                    //xQueueReceive(poseControllerQ, &Setpoint, 20 / portTICK_PERIOD_MS); // Receive theta and radius set points from com task, wait for 20ms if necessary
                    xTargt = (float)Setpoint.x * 10; //Distance is received in cm, convert to mm for continuity
                    yTargt = (float)Setpoint.y * 10; //Distance is received in cm, convert to mm for continuity
                    thetahatStart = thetahat;
                    xhatStart = xhat;
                    yhatStart = yhat;
                    newOrder = true;
                    controllerStop = false;
                    doneTurning = false;
                    collisionDetected = false;
					
                    sprintf(str4,"Tx:%i Ty:%i",((int)xTargt),((int)yTargt));
                    display_text_on_line(4,str4); 
                }
				
                prevDistError = distanceError;
				distanceToTarget = (float)sqrt((xTargt - xhatStart) * (xTargt - xhatStart) + (yTargt - yhatStart) * (yTargt - yhatStart));
                distanceError = (float)sqrt((xTargt - xhat) * (xTargt - xhat) + (yTargt - yhat) * (yTargt - yhat));
				distanceDriven = (float)sqrt((xhat - xhatStart) * (xhat - xhatStart) + (yhat - yhatStart) * (yhat - yhatStart));
				
                xError = xTargt - xhat;
                yError = yTargt - yhat;
                thetaTargt = atan2(yError, xError); //atan() returns radians
				vFunc_Inf2pi(&thetaTargt);

                prevThetaError = thetaError;
                thetaError = thetaTargt - thetahat; //Might be outside pi to -pi degrees
                vFunc_Inf2pi(&thetaError);
				
				thetaDerivative = previousThetahat-thetahat;
				vFunc_Inf2pi(&thetaDerivative);
				thetaDerivative *= (float)(1000.0/40);
				
				
                
				// Check for collision only when turning is complete 
				if(doneTurning){ 
					collisionDetected = checkForCollision();
				}else{
					collisionDetected = false;
				}
				
				
				
				if((distanceError < radiusEpsilon) || (distanceDriven > distanceToTarget) || (collisionDetected)){
					controllerStop = true;
					motor_brake();
					vMotorMovementSwitch(0,0);
					rightIntError = 0.0;
					thetaErrorInt = 0.0;
					lastMovement = moveStop;
					xQueueSend(scanStatusQ, &lastMovement, 0); // Send the current movement to the scan task
				}
				
                // Run controllers
                if (distanceError > radiusEpsilon && !controllerStop) { //Not close enough to target and controllerStop == false
                    idleSendt = false;
					
					newOrder = false;
					
                    if(doneTurning){ //Start forward movement
                        
						//NRF_LOG_INFO("BfCont: %d", (int)(1000*distanceError));
                        //float distanceTraveled = distanceStart - distanceError;
                        runDistanceController(distanceError, thetaError, thetaDerivative);
						//collisionDetected = checkForCollision();
						lastMovement = moveForward;
						xQueueSend(scanStatusQ, &lastMovement, 0); // Send the current movement to the scan task
						
                    }else{
						runThetaController(thetaError);
					
						lastMovement = (thetaError<0) ? moveClockwise : moveCounterClockwise ;   // let EstimatorTask and SensorTask know robot motion.
						xQueueSend(scanStatusQ, &lastMovement, 0); // Send the current movement to the scan task
						
						if(fabs(thetaError) < driveThreshold){
							thetaDoneCounter++;
							if(thetaDoneCounter > 20){
								thetaErrorInt = 0;		// Reset integral
								doneTurning = true;		// Allow distance controller to run
							}
						}
					}
                    
				}else{ // Close enough to target

                    if (idleSendt == false) {
                        NRF_LOG_INFO("controller sending idle");
                        send_idle();
                        idleSendt = true;
                    }
                    
                    motor_brake();
                    lastMovement = moveStop;
					xQueueSend(scanStatusQ, &lastMovement, 0); // Send the current movement to the scan task
					display_text_on_line(4,"Reached target");
                }
                //xQueueSend(scanStatusQ, &lastMovement, 0); // Send the current movement to the scan task
				
            } // No semaphore available, task is blocking
			
        } //if(gHandshook) end

        else {
            motor_brake();
        }
    }
}
		
float getThetaTarget(){
	return thetaTargt;	
}





void runDistanceController(float distanceErr, float thetaErr, float thetaDer){
	
	float kp = 0.03; //0.009 //Was 0.02
	float ki = 0.0;
	float kd = 0.0;
	
	float driveFwd = kp*distanceErr;
	
	//leftIntError += thetaError;
	rightIntError += thetaErr;
	
	float thetaKp = 60.0;      //120              // Proportional gain for theta control during drive
	float thetaKi = 5.0;			// Integral gain for theta during drive
	//float thetaKd = 10.0;		//120/3/5 not enough, 200/10/10, not .pic 19, only P 120
	
	
	if(driveFwd > maxU){
		driveFwd = maxU;
		
	}else if(driveFwd < minU && driveFwd > stopU){
		driveFwd = minU;   //Was minU
		
	}else{
		//driveFwd = 0;
		//driveFwd = 0;
		//vMotorMovementSwitch(0,0);
	}
	
	//NRF_LOG_INFO("dCont: %d", (int)(1000*distanceErr));
	//NRF_LOG_INFO("dFWD: %d", (int)(1000*driveFwd));
	
	float u = thetaKp*thetaErr + thetaKi*rightIntError; //heading control during driving
	
	int LeftFwd = (int)(driveFwd - u); // - driveKd*thetaDer - driveKi*rightIntError);  
	int RightFwd = (int)(driveFwd + u); // + driveKd*thetaDer + driveKi*rightIntError); 
	
	//NRF_LOG_INFO("dCont: %d", (int)(1000*distanceErr));
	//NRF_LOG_INFO("dFWD: %d", (int)(1000*driveFwd));
	
	vMotorMovementSwitch(LeftFwd, RightFwd);
	//vMotorMovementSwitch(0, 0); // Used to test heading controller
}





void runThetaController(float thetaDiff){
	if(integrateTheta){
		thetaErrorInt += thetaDiff;
	}
	float ki = 0.0;      // 0/30/2 very good
	float kp = 30.0;
	float kd = 2.0;
	float U = (kp*thetaDiff + ki*thetaErrorInt + kd*thetaDerivative);
	
	if(fabs(U) > maxU){
		U = (float)((U/fabs(U))*maxU);
		integrateTheta = false;
		
	}else if(fabs(U) < minU && fabs(U) > stopU){
		U = (float)((U/fabs(U))*minU); 
		integrateTheta = true;
		
	}else{
		//vMotorMovementSwitch(0,0);
	}
	
	int LeftSpeed = (int)-U;
	int RightSpeed = (int)U;
	
	vMotorMovementSwitch(LeftSpeed, RightSpeed);
	
}






