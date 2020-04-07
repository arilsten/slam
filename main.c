/**
 * Name:	SLAM Application
 * Author:	Johan Korsnes
 * Date:	2018
 *
 * Heavily modiefied by: Endre leithe 2019 As part of the Lego Robot Project  
 *
 * Credits: The drivers in the project folder "drivers" are developed as part of
 *			the SLAM project. The code and FreeRTOS set-up is based on Nordic
 *			Semiconductor's example FreeRTOS project part of their SDK. The code
 *			and implementatino of Tracealyzer has been introduced as part of
 *			this project. The threads, queues and mutex have been set up as part
 *			of the SLAM project.
 *			
 *
 */

#include "FreeRTOS.h"
#include "app_error.h"
#include "app_timer.h"
#include "fds.h"
#include "nordic_common.h"
#include "nrf.h"
#include "nrf_delay.h"
#include "nrf_drv_clock.h"
#include "nrf_drv_ppi.h"
#include "nrf_log.h"
#include "nrf_log_ctrl.h"
#include "nrf_log_default_backends.h"
#include "nrf_sdh_freertos.h"
#include "semphr.h"
#include "task.h"
#include "timers.h"
#include <stdint.h>
#include <string.h>

#include "nrf_twi_mngr.h"


//#include "ble_cleanup.h" //bluetooth.c replace this
#include <math.h>
#include <stdio.h>
#include "MPU6050.h"
#include "arq.h"
#include "bluetooth.h"
#include "defines.h"
#include "display.h"
//#include "functions.h" not used directly
#include "encoder.h"
#include "i2c.h"
#include "ir.h"
#include "mag3110.h"
#include "microsd.h"
#include "motor.h"
#include "network.h"
#include "server_communication.h"
#include "servo.h"
#include "simple_protocol.h"
#include "SensorTowerTask.h"
#include "ControllerTask.h"
#include "EstimatorTask.h"
#include "DebugFunctions.h"
#include "MainComTask.h"
#include "globals.h"
//#include "SEGGER_SYSVIEW_Conf.h"
//#include "JLINK_MONITOR.h"
//#include "ble_cleanup.h"

/* DEFINING GLOBAL AND SHARED FLAG VARIABLES */
TaskHandle_t handle_display_task,
    handle_user_task,
    handle_microsd_task,
    pose_estimator_task,
    pose_controller_task,
    communication_task,
    sensor_tower_task,
    arq_task;

/* Semaphore handles */
SemaphoreHandle_t xScanLock;
SemaphoreHandle_t xPoseMutex;
SemaphoreHandle_t xTickMutex;
SemaphoreHandle_t xControllerBSem;
SemaphoreHandle_t xCommandReadyBSem;
SemaphoreHandle_t mutex_spi;
SemaphoreHandle_t xCollisionMutex;


/* Queues */
QueueHandle_t poseControllerQ = 0;
QueueHandle_t scanStatusQ = 0;
QueueHandle_t queue_microsd = 0;


// Flag to indicate connection status. Interrupt can change handshook status
uint8_t gHandshook = false;
uint8_t gPaused = false;

/* ________ SETUP VARIABLES ________ */
uint8_t USEBLUETOOTH = false; //for switching between bluetooth and NRF52840 dongle

// Global robot pose
float gTheta_hat = 0; 
int16_t gX_hat = 0;
int16_t gY_hat = 0;
float gLeft = 0;
float gRight = 0;

// Global encoder tick values, could probably be replaced by a queue
int16_t gRightWheelTicks = 0;
int16_t gLeftWheelTicks = 0;

// all SPI driver interaction occurs within mutex, so can safely use global bool
bool shared_SPI_init = false;

/**@brief A function which is hooked to idle task.
 * @note Idle hook must be enabled in FreeRTOS configuration (configUSE_IDLE_HOOK).
 */
void vApplicationIdleHook(void) {
#if NRF_LOG_ENABLED
    // vTaskResume(m_logger_thread);
#endif
}

/**@brief Function for initializing the clock.
 */
static void clock_init(void) {
    ret_code_t err_code = nrf_drv_clock_init();
    APP_ERROR_CHECK(err_code);
}

//globals for encoder
volatile int RightMotorDirection = 1;
volatile int LeftMotorDirection = 1;



/**@brief User task
 *
 * @details Task for miscellaneous operations. Currently only adding display ops
 *			to the display_task's queue.
 */
 
static void user_task(void *arg) {

/*TEMPLATE FOR WRITING TO MICROSD Card
     microsd_write_operation_t write;
    write.filename = "USR";
    write.content = "writeTEST";
     xQueueSendToBack(queue_microsd, &write, portMAX_DELAY);
 */
 
    //microsd_write_operation_t write;
    // write.filename = "USR";
    //write.content = "Startup\n";
    //xQueueSendToBack(queue_microsd, &write, portMAX_DELAY);

    //initialization of modules should be done after FreeRtos startup
    taskENTER_CRITICAL();
    motor_init();
    servo_init();
    encoder_init_int();
    taskEXIT_CRITICAL();
    i2cInit();
    vTaskDelay(30);
    IMU_init();
    //mag_init(MAG_OS_128);//oversampling rate used to set datarate 16->80hz 32->40hz 64->20hz 128->10hz
    //the rest of this is just used for testing and displaying values
    //vTaskSuspend(NULL);//no need to run more here except for debugging purposes
    vTaskPrioritySet(handle_user_task,1);
    vTaskDelay(5000);

    
    char str1[20];
    char str2[20];
    //char str3[20];
    //char str4[20];
	//char str5[20];
	
	int targetX = 100;
	int targetY = 0;
	bool sent = false;
	bool testWaypoint = false;
	
    while(true){
        vTaskDelay(1000);
        sprintf(str1,"X: %i Y: %i",(int)gX_hat, (int)gY_hat);
        display_text_on_line(1, str1);
        sprintf(str2,"HEADING: %i",(int) ((gTheta_hat)*RAD2DEG));
        display_text_on_line(2, str2);
	
        //NRF_LOG_INFO("HEADING_MAIN: %i",(int)(gTheta_hat)*RAD2DEG);     //Fails with programcounter at 0x26555 or something
        //encoderTicks tick = encoder_get_all_ticks();
        //sprintf(str4,"el:%d,er:%d",(int)tick.left,(int)tick.right); //stuff written to debug shows up in NETBEANS output
        //display_text_on_line(5,str4);
		
		// Test-function, sends targetX and targetY 1 minute after initialization.
		if(testWaypoint){
			int time = (xTaskGetTickCount()/1000);
			NRF_LOG_INFO("Time: %i", (int)time);
		
			if ((time > 60) && (sent == false)){
				struct sCartesian target = {targetX, targetY};
				xQueueSend(poseControllerQ, &target, 100);
				sent = true;
				time = 0;
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
    }
}


/**@brief Function for application main entry.
*   
*   vMainCommunicationTask only runs if USEBLUETOOTH is true, same for vARQTask.
*
*/



static void log_init(void) {
    ret_code_t err_code = NRF_LOG_INIT(NULL);
    APP_ERROR_CHECK(err_code);

    //NRF_LOG_DEFAULT_BACKENDS_INIT();
}

int main(void) {
    //NVIC_SetPriority(DebugMonitor_IRQn, 7ul);// should ENABLE MonitorModeDebugging but dosen't
    bool erase_bonds;
    log_init(); //nrf loging consider moving definition
    clock_init();

    ir_init();
   // SEGGER_SYSVIEW_Conf();//for segger systemview

    // Do not start any interrupt that uses system functions before system initialisation.
    // The best solution is to start the OS before any other initalisation.

    /* Deferred logging has been disabled for the SLAM application
	#if NRF_LOG_ENABLED
		if (pdPASS != xTaskCreate(logger_thread, "LOGGER", 256, NULL, 1, &m_logger_thread))
			APP_ERROR_HANDLER(NRF_ERROR_NO_MEM);
	#endif
	*/

    // SCB->SCR |= SCB_SCR_SLEEPDEEP_Msk;
    //ble_stack_init();

/**
	* The reset-reason functions are extremely useful as they help you rule out
	* issues with power supply without having to resort to a oscilloscope.
	*/
#if !NRF_LOG_ENABLED || !NRF_LOG_BACKEND_RTT_ENABLED
//char const * error_msg;
//vTraceEnable(TRC_START_AWAIT_HOST);
//vTraceEnable(TRC_INIT);
//error_msg = xTraceGetLastError();
#endif

/*
	* The reset-reason functions are extremely useful as they help you rule out
	* issues with power supply without having to resort to a oscilloscope.
	*/
//sd_power_reset_reason_get(&reset_reason);
//sd_power_reset_reason_clr(0xFFFFFFFF);

/**
	* The reset-reason functions are extremely useful as they help you rule out
	* issues with power supply without having to resort to a oscilloscope.
	*/
// RecorderDataPtr
#if !NRF_LOG_ENABLED || !NRF_LOG_BACKEND_RTT_ENABLED
//vTraceEnable(TRC_START);
//vTraceEnable(TRC_START_AWAIT_HOST);
//error_msg = xTraceGetLastError();
#endif

    BLE_init();
    arq_init();

    //initialize queues
	queue_display = xQueueCreate(5, sizeof(display_operation_t));       //For sending things to display
	queue_microsd = xQueueCreate(5, sizeof(microsd_write_operation_t)); //For writing things to micro SD
	poseControllerQ = xQueueCreate(1, sizeof(struct sCartesian));       // For setpoints to controller
	scanStatusQ = xQueueCreate(1, sizeof(uint8_t));                     // For robot status

	//initialize mutexes
	mutex_spi = xSemaphoreCreateMutex();
	xPoseMutex = xSemaphoreCreateMutex();       // Global variables for robot pose. Only updated from estimator, accessed from many
	xTickMutex = xSemaphoreCreateMutex();       // Global variable to hold robot tick values
	xControllerBSem = xSemaphoreCreateBinary(); // Estimator to Controller synchronization
	xCommandReadyBSem = xSemaphoreCreateBinary();
	xCollisionMutex = xSemaphoreCreateMutex();
	
    /*
	stack size is usStackDepth * stack width (4)
	for 100 we allocate 400Bytes.
	*/

    if (pdPASS != xTaskCreate(display_task, "DISP", 128, NULL, 1, &handle_display_task))
        APP_ERROR_HANDLER(NRF_ERROR_NO_MEM);
    //
    if (pdPASS != xTaskCreate(user_task, "USER", 128, NULL, 4, &handle_user_task)) //needs elevated priority because init functions
        APP_ERROR_HANDLER(NRF_ERROR_NO_MEM);

    //	//microsd_task causes errors
    if (pdPASS != xTaskCreate(microsd_task, "SD", 256, NULL, 1, &handle_microsd_task))
        APP_ERROR_HANDLER(NRF_ERROR_NO_MEM);
    
    if (pdPASS != xTaskCreate(vMainPoseEstimatorTask, "POSE", 256, NULL, 3, &pose_estimator_task))
        APP_ERROR_HANDLER(NRF_ERROR_NO_MEM);
	
    if (pdPASS != xTaskCreate(vMainPoseControllerTask, "POSC", 512, NULL, 1, &pose_controller_task))
        APP_ERROR_HANDLER(NRF_ERROR_NO_MEM);

    if (pdPASS != xTaskCreate(vMainSensorTowerTask, "SnsT", 256, NULL, 1, &sensor_tower_task))
		APP_ERROR_HANDLER(NRF_ERROR_NO_MEM);

	if (pdPASS != xTaskCreate(vMainCommunicationTask, "COM", 256, NULL, 1, &communication_task))  // Moved to this loop in order to use it for thread communications aswell
            APP_ERROR_HANDLER(NRF_ERROR_NO_MEM);

	/* Not ran when using thread */
    if (USEBLUETOOTH){
        if(pdPASS != xTaskCreate(vARQTask, "ARQ", 256, NULL, 2, &arq_task)) {
            NRF_LOG_INFO("vARQTask Creation Failed")
            APP_ERROR_HANDLER(NRF_ERROR_NO_MEM);
        }
        vTaskSuspend(arq_task);//suspend arq task to avoid start before init and avoids init before freertos start at same time
        //    // Creates a FreeRTOS task for the BLE stack.
        //    // The task will run advertising_start() before entering its loop.
        nrf_sdh_freertos_init((nrf_sdh_freertos_task_hook_t) advertising_start,&erase_bonds);
	}
    NRF_LOG_INFO("\nInitialization done. SLAM application now starting.\n.");

    vTaskStartScheduler();

    for (;;) {
        /**
		* vTaskStartSchedule returns only if the system failed to allocate heap
		* memory. Either reduce heap memory usage, or increase the allocation
		* of heap memory in FreeRTOSConfig.h via configTOTAL_HEAP_SIZE
		*/
        APP_ERROR_HANDLER(NRF_ERROR_FORBIDDEN);
    }
}
