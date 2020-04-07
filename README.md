# FreeRTOS on nRF for SLAM
This project is intended as a starting template for the SLAM application. It should have drivers for most of the sensors and actuators, and run FreeRTOS. Additionally it is set up for RTOS aware debugging.

## Installation
Download and extract nRF SDK v15.0.0. Move this project's content into a new folder under ```SDK_DIR/examples/ble_peripheral/NAME_OF_PROJECT```.

## FreeRTOS
The project builds on top of Nordic Semiconductor's port of FreeRTOS v10.0.0 which is part of their SDK. Refer to the official documentation at infocenter.nordicsemi.com. Due to problems with linking to their infocenter, the limitations on the RTOS is reproduced here:

Limitations:
You should be aware of the following limitations when using the nRF52 port of FreeRTOS with a SoftDevice:

* configLIBRARY_LOWEST_INTERRUPT_PRIORITY must be set to the same value as NRF_APP_PRIORITY_LOW.
* The syscall priority must be higher than or equal to the lowest application priority. To ensure this, set configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY to a value equal to or higher than NRF_APP_PRIORITY_LOW.
* It has not been tested if starting any interrupt before the FreeRTOS initialization is safe. Interrupts that use FreeRTOS functions from a priority level higher or equal to NRF_APP_PRIORITY_HIGH might break system initialization, because this level is higher than the SVC level. Therefore, start the system as quickly as possible and do the rest of the initialization in the thread.

## Debugging
### FreeRTOS Trace
RTOS aware debugging/tracing has been set up by implementing the Tracealyzer trace library on the target. Refer to the full thesis for more information on usage and configuration. Just remember that the Tracealyzer software on the host PC must be given the address in RecorderDataPtr during run-time.
### nRF Log
nRF logggin has been set up to use RTT technology, which is the same technology used by Tracealyzer to transfer the trace data. In my experience these two do not go along togher, which means that if nRF logging is used, tracing have to be disabled. This is currently handled automatically in the code with perprocessor defines.
