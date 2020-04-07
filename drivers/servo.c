#include "servo.h"
#include "app_pwm.h"

APP_PWM_INSTANCE(PWM2, 2);

#define PIN_SERVO 27

static void pwm_ready_callback(uint32_t pwm_id)
{
	// dummy function
}

void servo_init() {
	nrfx_err_t err;
	
	app_pwm_config_t pwm2_cfg = APP_PWM_DEFAULT_CONFIG_1CH(20000L, PIN_SERVO);
	pwm2_cfg.pin_polarity[0] = APP_PWM_POLARITY_ACTIVE_HIGH;
	
	err = app_pwm_init(&PWM2, &pwm2_cfg, pwm_ready_callback);
	APP_ERROR_CHECK(err);
	
	app_pwm_enable(&PWM2);
}

void vServo_setAngle(int angle) {
        int ticks = 1300 + (int)(19.84*angle);
        if(ticks <1300){ticks = 1300;}
        if(ticks>4000){ticks = 4000;}
	nrfx_err_t err;

        
	while (app_pwm_channel_duty_ticks_set(&PWM2, 0, ticks) == NRF_ERROR_BUSY);
}

