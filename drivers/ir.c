#include "ir.h"
#include "nrfx_saadc.h"
#include "nrf_log.h"
#include "nrf_delay.h"
#include "math.h"
#include "defines.h"

/*
pinout: PCB to NRF52
IR1 TOP LEFT      AIN7
IR2 TOP RIGHT     AIN5
IR3 BOTTOM LEFT   AIN6
IR4 BOTTOM RIGHT  AIN4

*/


static const nrfx_saadc_config_t saadc_config = {
	.resolution = NRF_SAADC_RESOLUTION_12BIT,
	.oversample = NRF_SAADC_OVERSAMPLE_DISABLED,  //oversampling should not be used in scan mode, if more than 1 channel is enabled the adc enters scan mode
	.interrupt_priority = 7,
	.low_power_mode = false
};





bool calibration_completed = false;
bool initial_calibration_completed = false;

ir_cb_t cb;

static nrf_saadc_channel_config_t IR_config =
	NRFX_SAADC_DEFAULT_CHANNEL_CONFIG_SE(NRF_SAADC_INPUT_AIN4);

nrf_saadc_value_t conversion_buffer[N_SAMPLES];

void saadc_event_handler(nrfx_saadc_evt_t const* p_event) {
	nrfx_err_t err;
	switch (p_event->type) {
		case NRFX_SAADC_EVT_DONE:
			err = nrfx_saadc_buffer_convert(p_event->data.done.p_buffer,
											N_SAMPLES);
			APP_ERROR_CHECK(err);
		
			p_event->data.done.p_buffer;
			p_event->data.done.size;
			uint16_t average =  p_event->data.done.p_buffer[0] +
                                            p_event->data.done.p_buffer[1] +
                                            p_event->data.done.p_buffer[2] +
                                            p_event->data.done.p_buffer[3];
			cb(average);
			///< Event generated when the buffer is filled with samples.
			break;
		case NRFX_SAADC_EVT_LIMIT:
			p_event->data.limit.channel;
			p_event->data.limit.limit_type == NRF_SAADC_LIMIT_LOW;
			p_event->data.limit.limit_type == NRF_SAADC_LIMIT_HIGH;
			///< Event generated after one of the limits is reached.
			break;
		case NRFX_SAADC_EVT_CALIBRATEDONE:
			if (initial_calibration_completed != true)
				initial_calibration_completed = true;
			else
				calibration_completed = true;
			break;
		default:
			break;
	}
};

void ir_init(){
	nrfx_err_t err;	

	//channel configurations
	//Channel 0 IR1
	static nrf_saadc_channel_config_t channel_0_config = NRFX_SAADC_DEFAULT_CHANNEL_CONFIG_SE(NRF_SAADC_INPUT_AIN7);
	channel_0_config.gain = NRF_SAADC_GAIN1_4;
	channel_0_config.reference =NRF_SAADC_REFERENCE_VDD4;

	//channel 1 IR2
	static nrf_saadc_channel_config_t channel_1_config = NRFX_SAADC_DEFAULT_CHANNEL_CONFIG_SE(NRF_SAADC_INPUT_AIN5);
	channel_1_config.gain = NRF_SAADC_GAIN1_4;
	channel_1_config.reference =NRF_SAADC_REFERENCE_VDD4;

	//channel 2 IR3
	static nrf_saadc_channel_config_t channel_2_config = NRFX_SAADC_DEFAULT_CHANNEL_CONFIG_SE(NRF_SAADC_INPUT_AIN6);
	channel_2_config.gain = NRF_SAADC_GAIN1_4;
	channel_2_config.reference =NRF_SAADC_REFERENCE_VDD4;

	//channel 3 IR4
	static nrf_saadc_channel_config_t channel_3_config = NRFX_SAADC_DEFAULT_CHANNEL_CONFIG_SE(NRF_SAADC_INPUT_AIN4);
	channel_3_config.gain = NRF_SAADC_GAIN1_4;
	channel_3_config.reference =NRF_SAADC_REFERENCE_VDD4;


	/*
	IR_config.gain = NRF_SAADC_GAIN1_4;
	IR_config.reference = NRF_SAADC_REFERENCE_VDD4;

	nrf_saadc_channel_config_t IR2_config = IR_config;
	IR2_config.pin_p = (nrf_saadc_input_t)(NRF_SAADC_INPUT_AIN4);
	IR2_config.acq_time = NRF_SAADC_ACQTIME_3US;
	*/



	nrfx_saadc_init(&saadc_config, saadc_event_handler);
	APP_ERROR_CHECK(err);

	nrfx_saadc_channel_init(0, &channel_0_config);
	APP_ERROR_CHECK(err);

	nrfx_saadc_channel_init(1, &channel_1_config);
	APP_ERROR_CHECK(err);

	nrfx_saadc_channel_init(2, &channel_2_config);
	APP_ERROR_CHECK(err);


	nrfx_saadc_channel_init(3, &channel_3_config);
	APP_ERROR_CHECK(err);



	//nrfx_saadc_calibrate_offset(); // needs delay before read
	//APP_ERROR_CHECK(err);

	//while(!initial_calibration_completed) ;;

	//err = nrfx_saadc_buffer_convert(conversion_buffer,
	//								N_SAMPLES);
	//APP_ERROR_CHECK(err);

}
	

void ir_read(IR_Sensor_t sensor, ir_cb_t ir_cb) {
	nrfx_err_t err;
	
	cb = ir_cb;
	
	for (int i = 0; i < N_SAMPLES; i++) { 
		err = nrfx_saadc_sample();
		// event handler interrupts here
		APP_ERROR_CHECK(err);
	}
}

uint16_t ir_read_blocking(IR_Sensor_t sensor) {
	nrfx_err_t err;
	uint8_t channel = sensor;



	static nrf_saadc_value_t val[N_SAMPLES];
	int acc = 0;
	for (int i = 0; i < N_SAMPLES; i++) {
		err = nrfx_saadc_sample_convert(channel, val+i);
                APP_ERROR_CHECK(err);
		acc += val[i];
		
	}
	return (uint16_t)(acc / N_SAMPLES);
}

void ir_calibrate() {
	if (nrfx_saadc_calibrate_offset() != NRFX_SUCCESS) {
		NRF_LOG_INFO("nrfx_saadc_calibration_offset() failed.");
		return;
	}
	
	while(!calibration_completed) ;;
	calibration_completed = false;
}

uint8_t ui8DistSens_readCM(IR_Sensor_t sensor){
      uint16_t measurement = ir_read_blocking(sensor);
      return (uint8_t) MIN(ceil(pow(measurement/16250.0, -1.1)),80);
}

int16_t i16DistSens_readMM(IR_Sensor_t sensor){
      uint16_t measurement = ir_read_blocking(sensor);
      return (int16_t) MIN(ceil(pow(measurement/16250.0, -1.1))*10,800);
}

uint8_t IrAnalogToCM(uint16_t reading){
  return (uint8_t) ceil(pow(reading/16250.0, -1.1));
}

//this is the best calibration
int16_t IrAnalogToMM(uint16_t reading, IR_Sensor_t sensor){
    
    int16_t result = 0;

    if(sensor == IR_SENSOR_1){
    result = (int16_t) ceil((117168.0*pow(reading,-0.91)));
    }
    if (sensor == IR_SENSOR_2){
    result = (int16_t) ceil( (548401.0*pow(reading,-1.137)));
    }
    if(sensor == IR_SENSOR_3){
    result = (int16_t) ceil((219347*pow(reading,-1)));
    }
    if (sensor == IR_SENSOR_4){
    result = (int16_t) ceil((206247.0*pow(reading,-0.995)));
    }
    return MIN(result,1000);
}
