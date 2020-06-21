/************************************************************************/
// File:			defines.h
// Author:			Erlend Ese, NTNU Spring 2016
//					Remeasured by Stenset, spring 2020
/************************************************************************/

#ifndef DEFINES_H_
#define DEFINES_H_

#define ROBOT_NAME "NRF"
#define ROBOT_NAME_LENGTH 3

/************************************************************************/
/* PHYSICAL CONSTANTS - If the robot is changed these need to be changed 
Some of these will be sent to server during the start-up-handshake   
*/

#define WHEELBASE_MM				169  // Updated 30.03.2020 /* Length between wheel centers  */
#define ROBOT_TOTAL_WIDTH_MM		197  // Updated 30.03.2020 /* From outer rim to outer rim   */
#define ROBOT_TOTAL_LENGTH_MM		230  /* From front to aft, total	     */
#define ROBOT_AXEL_OFFSET_MM		0    /* From center of square	     */
#define SENSOR_TOWER_OFFSET_X_MM	0    /* From center of square         */
#define SENSOR_TOWER_OFFSET_Y_MM	0    /* From center of square		     */
#define SENSOR_OFFSET_RADIUS_MM		21   /* From center of tower		     */
#define ROBOT_DEADLINE_MS			200  /* Interval between measurements	     */
#define SENSOR1_HEADING_DEG			0    /* Sensor angle relative to body	     */
#define SENSOR2_HEADING_DEG			90
#define SENSOR3_HEADING_DEG			180
#define SENSOR4_HEADING_DEG			270

/****** Wheels ******/
#define WHEEL_DIAMETER_MM			68
#define WHEEL_CIRCUMFERENCE_MM			214  // [mm] Updated 30.03.2020
#define WHEEL_FACTOR_MM				(WHEEL_CIRCUMFERENCE_MM/297.0)       /* 297 [encoderticks/wheelrotation] = 11 [encoderticks/motorRotation] * 27 [gearboxRatio] */ 


/************************************************************************/
/* Program settings                                                     */
#define PERIOD_MOTOR_MS         20
#define PERIOD_ESTIMATOR_MS     40
#define PERIOD_SENSORS_MS       200
#define moveStop                0
#define moveForward             1
#define moveBackward            2
#define moveClockwise           3
#define moveCounterClockwise    4
#define moveLeftForward         5
#define moveRightForward        6
#define moveLeftBackward        7
#define moveRightBackward       8


/****** Motor ******/
#define MOTOR_FORWARDS			1
#define MOTOR_BACKWARDS			-1



/******** IR SENSORS ********/
#define IR_1						0
#define IR_2						1
#define IR_3						2
#define IR_4						3
#define NUM_DIST_SENSORS			4
#define DETECTION_THRESHOLD_MM		800
#define COLLISION_THRESHOLD_MM		250
#define COLLISION_THRESHOLD_CM		(COLLISION_THRESHOLD_MM/10)
#define COLLISION_SECTOR_OFFSET		60		//[degrees] (to each side)



/******** I2C ********/
#define I2C_DEVICE_DONGLE         0x72



/************************************************************************/
/* Macros
#ifndef M_PI
    #define M_PI 3.14159265358979323846
#endif
                                                               */
#define DEG2RAD M_PI / 180.0
#define RAD2DEG 180.0 / M_PI


#endif /* DEFINES_H_ */