#include "motor.h"
#include "nrfx_gpiote.h"
#include "app_pwm.h"

#define PIN_IN1 3
#define PIN_IN2 4
#define PIN_IN3 1
#define PIN_IN4 0
#define PIN_ENA 2
#define PIN_ENB 5

#define MOTOR_CHANNEL_RIGHT 0
#define MOTOR_CHANNEL_LEFT  1
#define MOTOR_FORWARDS      1
#define MOTOR_BACKWARDS    -1
APP_PWM_INSTANCE(PWM1, 1);
#define MAX_DUTY			20

extern int RightMotorDirection;
extern int LeftMotorDirection;

void pwm_ready_callback(uint32_t pwm_id)
{
	// dummy function
}

void motor_init() {
	nrfx_err_t err;
	
	if(!nrfx_gpiote_is_init())
		err = nrfx_gpiote_init();
	APP_ERROR_CHECK(err);
	
	nrfx_gpiote_out_config_t ina_config = NRFX_GPIOTE_CONFIG_OUT_SIMPLE(1);
	nrfx_gpiote_out_config_t inb_config = NRFX_GPIOTE_CONFIG_OUT_SIMPLE(0);
	nrfx_gpiote_out_init(PIN_IN1, &ina_config);
	nrfx_gpiote_out_init(PIN_IN2, &inb_config);
	nrfx_gpiote_out_init(PIN_IN3, &ina_config);
	nrfx_gpiote_out_init(PIN_IN4, &inb_config);
	
	app_pwm_config_t pwm1_cfg = APP_PWM_DEFAULT_CONFIG_2CH(5000L, PIN_ENA, PIN_ENB);
	pwm1_cfg.pin_polarity[0] = APP_PWM_POLARITY_ACTIVE_HIGH;
	pwm1_cfg.pin_polarity[1] = APP_PWM_POLARITY_ACTIVE_HIGH;
	err = app_pwm_init(&PWM1,&pwm1_cfg,pwm_ready_callback);
	APP_ERROR_CHECK(err);
	app_pwm_enable(&PWM1);
}

static inline int SATURATE_DUTY(int duty) {
	if (duty < 0)
		duty = 0;
	if (duty > MAX_DUTY)
		duty = MAX_DUTY;
	return duty;
}

void motor_forward(int duty) {
	nrfx_gpiote_out_set(PIN_IN1);
	nrfx_gpiote_out_clear(PIN_IN2);
	nrfx_gpiote_out_set(PIN_IN3);
	nrfx_gpiote_out_clear(PIN_IN4);
	duty = SATURATE_DUTY(duty);
	while (app_pwm_channel_duty_set(&PWM1, 0, duty) == NRF_ERROR_BUSY);
	while (app_pwm_channel_duty_set(&PWM1, 1, duty) == NRF_ERROR_BUSY);
        RightMotorDirection = MOTOR_FORWARDS;
        LeftMotorDirection  = MOTOR_FORWARDS;
}

void motor_right_forward(int duty) {
	nrfx_gpiote_out_set(PIN_IN1);
	nrfx_gpiote_out_clear(PIN_IN2);
	duty = SATURATE_DUTY(duty);
	while (app_pwm_channel_duty_set(&PWM1, 0, duty) == NRF_ERROR_BUSY);
        RightMotorDirection = MOTOR_FORWARDS;
}

void motor_left_forward(int duty) {      
	nrfx_gpiote_out_set(PIN_IN3);
	nrfx_gpiote_out_clear(PIN_IN4);
	duty = SATURATE_DUTY(duty);
	while (app_pwm_channel_duty_set(&PWM1, 1, duty) == NRF_ERROR_BUSY);
        LeftMotorDirection  = MOTOR_FORWARDS;
}

void motor_backward(int duty) {
	nrfx_gpiote_out_clear(PIN_IN1);
	nrfx_gpiote_out_set(PIN_IN2);
	nrfx_gpiote_out_clear(PIN_IN3);
	nrfx_gpiote_out_set(PIN_IN4);
	duty = SATURATE_DUTY(duty);
	while (app_pwm_channel_duty_set(&PWM1, 0, duty) == NRF_ERROR_BUSY);
	while (app_pwm_channel_duty_set(&PWM1, 1, duty) == NRF_ERROR_BUSY);
        RightMotorDirection = MOTOR_BACKWARDS;
        LeftMotorDirection  = MOTOR_BACKWARDS;
}

void motor_right_backward(int duty) {
	nrfx_gpiote_out_clear(PIN_IN1);
	nrfx_gpiote_out_set(PIN_IN2);
	duty = SATURATE_DUTY(duty);
	while (app_pwm_channel_duty_set(&PWM1, 0, duty) == NRF_ERROR_BUSY);
        RightMotorDirection = MOTOR_BACKWARDS;
}

void motor_left_backward(int duty) {
	nrfx_gpiote_out_clear(PIN_IN3);
	nrfx_gpiote_out_set(PIN_IN4);
	duty = SATURATE_DUTY(duty);
	while (app_pwm_channel_duty_set(&PWM1, 1, duty) == NRF_ERROR_BUSY);
    LeftMotorDirection  = MOTOR_BACKWARDS;
}

void motor_stop()  {
	while (app_pwm_channel_duty_set(&PWM1, 0, 0) == NRF_ERROR_BUSY);
	while (app_pwm_channel_duty_set(&PWM1, 1, 0) == NRF_ERROR_BUSY);
}

void motor_right_stop()  {
	while (app_pwm_channel_duty_set(&PWM1, 0, 0) == NRF_ERROR_BUSY);
}

void motor_left_stop() {
	while (app_pwm_channel_duty_set(&PWM1, 1, 0) == NRF_ERROR_BUSY);
}

void motor_brake() {
	nrfx_gpiote_out_set(PIN_IN1);
	nrfx_gpiote_out_set(PIN_IN2);
	nrfx_gpiote_out_set(PIN_IN3);
	nrfx_gpiote_out_set(PIN_IN4);
	while (app_pwm_channel_duty_set(&PWM1, 0, 0) == NRF_ERROR_BUSY);
	while (app_pwm_channel_duty_set(&PWM1, 1, 0) == NRF_ERROR_BUSY);
}

void motor_brake_left(){
 	nrfx_gpiote_out_set(PIN_IN3);
	nrfx_gpiote_out_set(PIN_IN4);
	while (app_pwm_channel_duty_set(&PWM1, 1, 0) == NRF_ERROR_BUSY);
}

void motor_brake_right(){
    nrfx_gpiote_out_set(PIN_IN1);
	nrfx_gpiote_out_set(PIN_IN2);
	while (app_pwm_channel_duty_set(&PWM1, 0, 0) == NRF_ERROR_BUSY);
}

void vMotorMovementSwitch(int leftSpeed, int rightSpeed){
    if (leftSpeed > 0){
		motor_left_forward(leftSpeed);
    }else if(leftSpeed < 0){
		motor_left_backward(-leftSpeed);
    }else{
		motor_brake_left();
    }
	
    if (rightSpeed > 0) {
		motor_right_forward(rightSpeed);
    }else if(rightSpeed < 0){
		motor_right_backward(-rightSpeed);
    }else{
		motor_brake_right();
    }
}
	
	
	
	