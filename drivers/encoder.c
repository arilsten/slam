#include "encoder.h"
#include "nrfx_ppi.h"
#include "nrf_delay.h"
#include "nrf_log.h"

#define ENCODER_PIN_LEFT  11
#define ENCODER_PIN_RIGHT 12

extern int RightMotorDirection;
extern int LeftMotorDirection;

static nrf_ppi_channel_t m_ppi_channel_left;
static nrf_ppi_channel_t m_ppi_channel_right;


encoderTicks encoder = {
  .left = 0,
  .right = 0
};
encoderTicks encoder_old = {
  .left = 0,
  .right = 0
};

void encoder_cb_left() {
    encoder.left += LeftMotorDirection;
};

void encoder_cb_right() {
    encoder.right += RightMotorDirection;
};

static void cb_trampoline(nrfx_gpiote_pin_t pin,
					      nrf_gpiote_polarity_t action) {
	if (pin == ENCODER_PIN_LEFT)
		encoder_cb_left();
	else if (pin == ENCODER_PIN_RIGHT)
		encoder_cb_right();
}

void timer_event_handler_dummy(nrf_timer_event_t event_type, void *p_context) {
	// dummy
}

static void gpiote_event_handler_dummy(nrfx_gpiote_pin_t pin,
					      nrf_gpiote_polarity_t action) {
	// dummy
}

void encoder_init_ppi(EncoderSide_t side, const nrfx_timer_t* counter) {
	nrfx_err_t err;
	if(!nrfx_gpiote_is_init())
		err = nrfx_gpiote_init();
	APP_ERROR_CHECK(err);

	uint32_t ppi_timer_task_addr = 0;
	uint32_t ppi_gpio_event_addr = 0;
	
	nrfx_gpiote_in_config_t config = NRFX_GPIOTE_CONFIG_IN_SENSE_LOTOHI(true);
	
	int pin;
	nrf_ppi_channel_t* ppi_channel;
	
	if (side == ENCODER_LEFT) {
		pin = ENCODER_PIN_LEFT;
		ppi_channel = &m_ppi_channel_left;
	} else {
		pin = ENCODER_PIN_RIGHT;
		ppi_channel = &m_ppi_channel_right;
	}
	
	// GPIO: initialize pin as input, enabling is the last step
	err = nrfx_gpiote_in_init(pin, &config, gpiote_event_handler_dummy);
	ppi_gpio_event_addr = nrfx_gpiote_in_event_addr_get(pin);
	
	// TIMER: configure as (high-precision) counter and enable
	nrfx_timer_config_t timer_config = NRFX_TIMER_DEFAULT_CONFIG;
	timer_config.mode = NRF_TIMER_MODE_COUNTER;
	err = nrfx_timer_init(counter, &timer_config, timer_event_handler_dummy);
	APP_ERROR_CHECK(err);
	nrfx_timer_enable(counter);
	ppi_timer_task_addr = nrfx_timer_task_address_get(counter, NRF_TIMER_TASK_COUNT);
	
	// PPI: set up and activate channel
	err = nrfx_ppi_channel_alloc(ppi_channel);
	APP_ERROR_CHECK(err);
	err = nrfx_ppi_channel_assign(	*ppi_channel,
									ppi_gpio_event_addr,
									ppi_timer_task_addr);
	APP_ERROR_CHECK(err);
	err = nrfx_ppi_channel_enable(*ppi_channel);
	APP_ERROR_CHECK(err);
	
	// GPIO: enable event
	nrfx_gpiote_in_event_enable(pin, false);
	
	for (;;) {
		//NRF_TIMER1->TASKS_CAPTURE[2] = 1;
		// NRF_LOG_INFO("counter:%d", NRF_TIMER1->CC[2]);//nrfx_timer_capture(&l_counter, NRF_TIMER_CC_CHANNEL0));
		nrfx_timer_capture(counter, 0);
		NRF_LOG_INFO("counter: %d", nrfx_timer_capture_get(counter, NRF_TIMER_CC_CHANNEL0));
		nrf_delay_ms(100);
	}
}

void encoder_init_int(){
	nrfx_err_t err;
	if(!nrfx_gpiote_is_init())
		err = nrfx_gpiote_init();
	
	nrfx_gpiote_in_config_t config = NRFX_GPIOTE_CONFIG_IN_SENSE_LOTOHI(true);
        err = nrfx_gpiote_in_init(ENCODER_PIN_LEFT, &config, cb_trampoline);
        nrfx_gpiote_in_event_enable(ENCODER_PIN_LEFT,true);
        err = nrfx_gpiote_in_init(ENCODER_PIN_RIGHT, &config, cb_trampoline);
        nrfx_gpiote_in_event_enable(ENCODER_PIN_RIGHT,true);
	
		
	APP_ERROR_CHECK(err);	
}

encoderTicks encoder_get_ticks(){
      encoderTicks ticks;

      //temporary store old values
      ticks.left = encoder_old.left;
      ticks.right = encoder_old.right;
      //update old values
      encoder_old.left = encoder.left;
      encoder_old.right = encoder.right;
      //calculate ticks since last call
      ticks.left = encoder_old.left - ticks.left;
      ticks.right = encoder_old.right - ticks.right;
      return ticks;
}

encoderTicks encoder_get_all_ticks(){
      encoderTicks ticks;
      ticks.left = encoder.left;
      ticks.right = encoder.right;
      return ticks;
      }


 