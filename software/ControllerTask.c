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

/*  Calculates new settings for the movement task */
void vMainPoseControllerTask(void *pvParameters) {
    int count = 0;

    /* Task init */
    struct sCartesian Setpoint = {0, 0}; // Updates from server
    struct sCartesian Error = {0, 0};    // Error values
    float radiusEpsilon = 15;            //[mm]The acceptable radius from goal for completion
    uint8_t lastMovement = 0;

    uint8_t maxDriveActuation = 90; //The max speed the motors will run at during drive max is 100, check also MAX_DUTY in motor.c.

    /* Controller variables for tuning */
    float rotateThreshold = 10.0 * DEG2RAD; // [rad] The threshold at which the robot will go from driving to rotation.
    float driveThreshold = 2.0 * DEG2RAD;   // [rad ]The threshold at which the robot will go from rotation to driving.
    float driveKp = 200;                    // Proportional gain for theta control during drive
    float driveKi = 1;                      // Integral gain for theta during drive
    float speedDecreaseThreshold = 300;     // [mm] Distance from goal where the robot will decrease its speed inverse proportionally
    float speedIncreaseThreshold = 100;     // [mm] Distance from start of movement where the speed increases to avoid spinning

    /* Current position variables */
    float thetahat = 0;
    int16_t xhat = 0;
    int16_t yhat = 0;

    /* Goal variables*/
    float distance = 0;
    float thetaDiff = 0;
    float thetaDer = 0;
    float thetaDiffInt = 0;
    float xTargt = 0;
    float yTargt = 0;

    float xdiff = 0;
    float ydiff = 0;
    float thetaTargt = 0;

    float leftIntError = 0;
    float rightIntError = 0;

    uint8_t doneTurning = false;
    volatile int16_t LSpeed = 0;
    volatile int16_t RSpeed = 0;

    uint8_t idleSendt = false;

    /* TESTING VARIABLES */
    uint8_t controllerStop = false;
    float distanceStart = 0;
    float prevDist = 0;
    float prevThetaDiff = 0;
    float thetahatStart = 0;
    float xhatStart = 0;
    float yhatStart = 0;
    float currentDriveActuation;
    uint8_t stuckIncrement = 0;

    uint8_t idlesendtInc = 0;
    uint8_t baseUpRampActuation = 10;
    uint8_t baseDownRampActuation = 5;
    uint8_t bBaseUpRampActFound = false;
    uint8_t bBaseDownRampActFound = false;
    uint8_t starteds = 0;
    uint8_t newOrder = false;
    uint8_t initIncrement = 40;
    uint8_t bStuck = false;
    char str4[20];
    float dLeft = 0;
    float dRight = 0;

    uint8_t stuckValueFound = false;

    while (1) {

        if (gHandshook) {
            xSemaphoreTake(xTickMutex, 1);
            //read in encoder values and update ticks since last reading
            encoderTicks ticks = encoder_get_ticks();
            gLeftWheelTicks = ticks.left;
            gRightWheelTicks = ticks.right;
            xSemaphoreGive(xTickMutex);
            if (xSemaphoreTake(xControllerBSem, portMAX_DELAY) == pdTRUE) { // Wait for synchronization from estimator
                
                // Get robot pose
                xSemaphoreTake(xPoseMutex, portMAX_DELAY);
                thetahat = gTheta_hat;
                xhat = gX_hat;
                yhat = gY_hat;
                dLeft = gLeft;
                dRight = gRight;
                xSemaphoreGive(xPoseMutex);

                // Check if a new update is received
                if (xQueueReceive(poseControllerQ, &Setpoint, 0) == pdTRUE) { /* poseControllerQueue is filled from SensorTowerTask and from MainCommunicationTask */
                    //xQueueReceive(poseControllerQ, &Setpoint, 20 / portTICK_PERIOD_MS); // Receive theta and radius set points from com task, wait for 20ms if necessary
                    xTargt = (float)Setpoint.x * 10; //Distance is received in cm, convert to mm for continuity
                    yTargt = (float)Setpoint.y * 10; //Distance is received in cm, convert to mm for continuity
                    thetahatStart = thetahat;
                    xhatStart = xhat;
                    yhatStart = yhat;
                    starteds++;
                    newOrder = true;
                    controllerStop = false;
                    doneTurning = false;
                    stuckIncrement = 0;
                    sprintf(str4,"Tx:%i Ty:%i",((int)xTargt),((int)yTargt));
                    display_text_on_line(4,str4); 
                }
				
                prevDist = distance;
                distance = (float)sqrt((xTargt - xhat) * (xTargt - xhat) + (yTargt - yhat) * (yTargt - yhat));

                xdiff = xTargt - xhat;
                ydiff = yTargt - yhat;
                thetaTargt = atan2(ydiff, xdiff); //atan() returns radians

                prevThetaDiff = thetaDiff;
                thetaDiff = thetaTargt - thetahat; //Might be outside pi to -pi degrees
                vFunc_Inf2pi(&thetaDiff);
                thetaDer = (thetaDiff - prevThetaDiff);
                vFunc_Inf2pi(&thetaDer);
                thetaDer = thetaDer * (1000.0 / 40);
            
                //Hysteresis mechanics
                if (fabs(thetaDiff) > rotateThreshold) {
                    //doneTurning = false; // should never happen ( but will happen when we close in on target due to 10 degrees at 1.5 cm
                }
                if (fabs(thetaDiff) < driveThreshold) {
                    doneTurning = true;
                    thetaDiffInt = 0; //reset the error integral
                }
                if(fabs(thetaDiff)>= (M_PI/2.0) && doneTurning){
					if(controllerStop == false){
						controllerStop = true; //our heading is more than 90 degrees away from target, stop..
                        NRF_LOG_INFO("HEADING is more the 90 degrees wrong stopping controller");
                    }
                }

                if ((prevThetaDiff - thetaDiff) > (M_PI / 2) || ((prevThetaDiff - thetaDiff) < (-M_PI / 2))) // Gone past target or new target
                {
                    distanceStart = distance;
                    if (newOrder == false) { //gone past target options are turn or stop we choose to stop
                        controllerStop = true;
                    } 
                } else {
                    distanceStart = (float)sqrt((xTargt - xhatStart) * (xTargt - xhatStart) + (yTargt - yhatStart) * (yTargt - yhatStart)); // KAN KANSKJE BLI FEIL VED ROTATSJON I STARTEN. ROBOTEN ROTERER IKKE HELT STATISK SÅ XHAT OG YHAT KAN VÆRE FEIL
                }

                float shortDistIncRatio = 1.0;
                float shortDistDecRatio = 1.0;
                if (distanceStart > 0 && distanceStart < (speedIncreaseThreshold + speedDecreaseThreshold)) { // Check if distance is shorter than upramp threshold + downramp threshold
                    float temp_inc = speedIncreaseThreshold;
                    float temp_dec = speedDecreaseThreshold;
                    speedIncreaseThreshold = distanceStart / 4;            // scale increase threshold to 1/4 of the Start distance
                    speedDecreaseThreshold = distanceStart * 3 / 4;        // scale the decrease threshold to 3/4 of the start distance
                    shortDistIncRatio = speedIncreaseThreshold / temp_inc; // ratio of new threshold to original one, used to scale the max actuation to the motors
                    shortDistDecRatio = speedDecreaseThreshold / temp_dec; // ratio of new threshold to original one, used to scale the max actuation to the motors
                } else {
                    speedDecreaseThreshold = 300;
                    speedIncreaseThreshold = 100;
                }

                if (distance > radiusEpsilon && !controllerStop) { //Not close enough to target
                    //Simple speed controller as the robot nears the target
                    idleSendt = false;
                    if (doneTurning) { //Start forward movement
                        
                        float distanceTraveled = distanceStart - distance;

                        // Ramp up
                        if (distanceTraveled >= 0 && distanceTraveled <= speedIncreaseThreshold) {
                            if (!bBaseUpRampActFound) {
                                if (distanceTraveled < 15) {
                                    baseUpRampActuation++;
                                } else {
                                    bBaseUpRampActFound = true;
                                    maxDriveActuation = baseUpRampActuation + 10;
                                }
                            } else if (dLeft == 0 || dRight == 0) {
                                stuckIncrement += 2;
                            }
                            float minUpDrive = baseUpRampActuation + stuckIncrement;
                            currentDriveActuation = ((((100 - minUpDrive) / 100) * (maxDriveActuation * shortDistIncRatio)) * distanceTraveled / speedIncreaseThreshold) + (baseUpRampActuation + stuckIncrement);
                        }

                        // Ramp down
                        else if (distance < speedDecreaseThreshold) {
                            if (distance > 50) {
                                if (dLeft == 0 || dRight == 0) {
                                    stuckIncrement = 2;
                                }
                                currentDriveActuation = baseUpRampActuation + stuckIncrement;
                            } else {
                                if (prevDist == distance) {
                                    stuckIncrement = baseUpRampActuation - baseDownRampActuation;
                                    baseDownRampActuation += 5;
                                }
                                float minDownDrive = (baseDownRampActuation) + stuckIncrement;
                                currentDriveActuation = ((((100 - minDownDrive) / 100) * (maxDriveActuation * shortDistDecRatio)) * (distance / speedDecreaseThreshold)) + ((baseDownRampActuation) + stuckIncrement);
                            }
                        } else {
                            currentDriveActuation = maxDriveActuation;
                        }

                        // PI controller for theta used during driving to point
                        LSpeed = currentDriveActuation - driveKp * thetaDiff - driveKi * leftIntError;  //Simple PI controller for theta
                        RSpeed = currentDriveActuation + driveKp * thetaDiff + driveKi * rightIntError; //Simple PI controller for theta

                        leftIntError += thetaDiff;
                        rightIntError -= thetaDiff;
                        //LSpeed = 0;
                        // RSpeed = 0;//added for testing ONLY turning
                        //TODO REMOVE THIS
                        lastMovement = moveForward;

                    } else { //we are rotating: Turn within drivethreshold(1) degrees of target
                        //controller for turning speed, used to generate a setpoint for wheelspeed based on the angle to target
                        float thetaTurned = thetahat -thetahatStart;
                        float thetaTurn = thetaTargt -thetahatStart;
                        vFunc_Inf2pi(&thetaTurn);
                        vFunc_Inf2pi(&thetaTurned);
                        float thetaMid = thetaTurn*0.75;
                        float thetaPastMid = thetahat-thetaMid;
                        vFunc_Inf2pi(&thetaPastMid);
                        float kp = 100;
                        float ki = 80;
                        float kd = 200;
                        
                        float rp = 0;
                        float ri = 0;
                        float rd = 0;
                      
                        float maxTurnBoost = fabs(thetaTurn)*15;

                        thetaDiffInt += thetaDiff * 40.0 / 1000.0;

                        rp = thetaTurned * kp;
                        rp = MIN(rp,maxTurnBoost);
                        rp = MAX(rp,-maxTurnBoost);
                      
                        
                        ri = ki * thetaDiffInt;
                        ri = MIN(ri,10);
                        ri = MAX(ri,-10);

                        
                        if(fabs(thetaTurned)>fabs(thetaTurn*0.75)){
                        rd= kd * (fabs(thetaPastMid));
                        if(thetaDiff>0){
                        rd = -rd;       //apply bandaid to sign problem
                        }
                        
                        rd = MIN(rd,maxTurnBoost);
                        rd = MAX(rd,-maxTurnBoost);
                        }

                      
                        float drivef = rp + rd + ri;
                        
                        //NRF_LOG_INFO("I:" NRF_LOG_FLOAT_MARKER, NRF_LOG_FLOAT(ri));
                        //NRF_LOG_INFO("p:" NRF_LOG_FLOAT_MARKER, NRF_LOG_FLOAT(rp));
                        //NRF_LOG_INFO("D:" NRF_LOG_FLOAT_MARKER, NRF_LOG_FLOAT(rd));
                        //NRF_LOG_INFO("Drive %d", drive);
                        drivef = MIN(drivef, 100.0);
                        drivef = MAX(drivef, -100.0);
                        int drive = (int)drivef;
                        LSpeed = (int)-drive;
                        RSpeed = (int)drive;

                        lastMovement =(thetaDiff<0) ? moveClockwise : moveCounterClockwise ;// just thrown in so tower task know we are turning
                        newOrder = false;
                    }
                    //NRF_LOG_INFO("WTL: %d WTR: %d WSL: %d WSR: %d", gLeftWheelTicks, gRightWheelTicks, LSpeed, RSpeed);
                   // NRF_LOG_INFO("DISTANCE:%d X:%d Y:%d theta:%d", distance, xhat, yhat, (int)(thetahat * RAD2DEG));
                        //vMotorMovementSwitch(LSpeed, RSpeed);
                    motorRegulator(LSpeed, RSpeed, ticks);
                } else { // Close enough to target

                    if (idleSendt == false) {
                        NRF_LOG_INFO("controller sending idle");
                        send_idle();
                        idlesendtInc = 0;
                        idleSendt = true;
                    }
                    idlesendtInc++;

                    motor_brake();

                    lastMovement = moveStop;
				
					display_text_on_line(4,"Reached target");
					
					
                }
                xQueueSend(scanStatusQ, &lastMovement, 0); // Send the current movement to the scan task
            }                                              // No semaphore available, task is blocking
            
            
            /*
            count++;
            if(count > 1000){
                NRF_LOG_INFO("C-gT: %i", (int)((gTheta_hat)*RAD2DEG));  //\t --user-- Sec: %i \t globalTheta: %i
                count = 0;
            }
            */
            



        }                                                  //if(gHandshook) end


        else {

            motor_brake();
        }
    }
}
		
float leftI;
float rightI;

//function implements a simple PI regulator for wheelspeed
void motorRegulator(int16_t lspeed, int16_t rspeed, encoderTicks ticks) {
    if (rightI > 0 && rspeed < 0 || rightI < 0 && rspeed > 0) {
        rightI = 0;
        leftI = 0;
    } //
    if (leftI > 0 && lspeed < 0 || leftI < 0 && lspeed > 0) {
        rightI = 0;
        leftI = 0;
    } // reset integral when direction changes, consider fliping integral sign
    int16_t Lspeed;
    int16_t Rspeed;
    float ki = 2.0;
    float kp = 1.0;
    float t = 40.0 / 1000.0;
    int lefterror = lspeed/2.0 - ticks.left;
    int righterror = rspeed/2.0 - ticks.right;
    leftI += lefterror * t;
    rightI += righterror * t;
    Rspeed = kp * righterror + ki * rightI;
    Lspeed = kp * lefterror + ki * leftI;

    //NRF_LOG_INFO("speed PID L: %d R:%d", (int)Lspeed, (int)Rspeed);
    if (Lspeed > 100) {
        Lspeed = 100;
    }
    if (Lspeed < -100) {
        Lspeed = -100;
    }
    if (Rspeed > 100) {
        Rspeed = 100;
    }
    if (Rspeed < -100) {
        Rspeed = -100;
    }

    vMotorMovementSwitch((int)Lspeed, (int)Rspeed);
}