# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\pca10040\\s132\\ses//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
# 83 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h" 1
# 288 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
typedef signed char s8;
typedef signed short int s16;
typedef signed int s32;
typedef signed long long int s64;


typedef unsigned char u8;
typedef unsigned short int u16;
typedef unsigned int u32;
typedef unsigned long long int u64;
# 593 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
struct bma2x2_accel_data {
s16 x,
y,
z;
};




struct bma2x2_accel_data_temp {
s16 x,
y,
z;
s8 temp;
};




struct bma2x2_accel_eight_resolution {
s8 x,
y,
z;
};



struct bma2x2_accel_eight_resolution_temp {
s8 x,
y,
z;
s8 temp;
};
# 641 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
union fifo_frame {


 struct bma2x2_accel_data accel_data;


 s16 x;


 s16 y;


 s16 z;
};
# 667 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
struct bma2x2_t {

 u8 power_mode_u8;

 u8 chip_id;

 u8 ctrl_mode_reg;

 u8 low_mode_reg;

 u8 dev_addr;

 u8 fifo_config;

 s8(*bus_write)(u8, u8, u8 *, u8);

 s8(*bus_read)(u8, u8, u8 *, u8);

 s8(*burst_read)(u8, u8, u8 *, u32);

 void (*delay_msec)(u32);
};
# 699 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
struct fifo_configuration {

 u8 *fifo_data;

 u8 accel_byte_start_index;

 u8 fifo_length;
};
# 2179 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_burst_read(u8 addr_u8,
u8 *data_u8, u32 len_u32);
# 2207 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_init(struct bma2x2_t *bma2x2);
# 2226 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_write_reg(u8 adr_u8,
u8 *data_u8, u8 len_u8);
# 2245 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_read_reg(u8 adr_u8,
u8 *data_u8, u8 len_u8);
# 2270 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_read_accel_x(s16 *accel_x_s16);
# 2287 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_read_accel_eight_resolution_x(
s8 *accel_x_s8);
# 2308 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_read_accel_y(s16 *accel_y_s16);
# 2326 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_read_accel_eight_resolution_y(
s8 *accel_y_s8);
# 2347 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_read_accel_z(s16 *accel_z_s16);
# 2365 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_read_accel_eight_resolution_z(
s8 *accel_z_s8);
# 2384 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_read_accel_xyz(
struct bma2x2_accel_data *accel);
# 2404 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_read_accel_eight_resolution_xyz(
struct bma2x2_accel_eight_resolution *accel);
# 2424 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_tap_stat(
u8 *stat_tap_u8);
# 2441 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_orient_stat(
u8 *stat_orient_u8);
# 2457 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_fifo_stat(
u8 *stat_fifo_u8);
# 2474 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_fifo_frame_count(
u8 *frame_count_u8);
# 2491 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_fifo_overrun(
u8 *fifo_overrun_u8);
# 2512 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_stat(
u8 *intr_stat_u8);
# 2535 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_range(u8 *range_u8);
# 2557 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_range(u8 range_u8);
# 2586 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_bw(u8 *bw_u8);
# 2612 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_bw(u8 bw_u8);
# 2641 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_power_mode(
u8 *power_mode_u8);
# 2668 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_power_mode(u8 power_mode_u8);
# 2694 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_mode_value(u8 power_mode_u8);
# 2729 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_sleep_durn(u8 *sleep_durn_u8);
# 2761 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_sleep_durn(u8 sleep_durn_u8);
# 2782 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_sleep_timer_mode(
u8 *sleep_timer_u8);
# 2804 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_sleep_timer_mode(u8 sleep_timer_u8);
# 2825 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_high_bw(u8 *high_bw_u8);
# 2843 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_high_bw(u8 high_bw_u8);
# 2862 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_shadow_dis(u8 *shadow_dis_u8);
# 2881 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_shadow_dis(u8 shadow_dis_u8);
# 2898 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_soft_rst(void);
# 2915 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_update_image(void);
# 2963 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_enable(u8 intr_type_u8,
u8 *value_u8);
# 3009 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr_enable(u8 intr_type_u8,
u8 value_u8);
# 3031 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_fifo_full(u8 *fifo_full_u8);
# 3052 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr_fifo_full(u8 fifo_full_u8);
# 3075 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_fifo_wm(u8 *fifo_wm_u8);
# 3098 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr_fifo_wm(u8 fifo_wm_u8);
# 3127 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_slow_no_motion(u8 channel_u8,
u8 *slow_no_motion_u8);
# 3156 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_slow_no_motion(u8 channel_u8,
u8 slow_no_motion_u8);
# 3187 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_low_g(u8 channel_u8,
u8 *intr_low_g_u8);
# 3218 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr_low_g(u8 channel_u8,
u8 intr_low_u8);
# 3246 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_high_g(u8 channel_u8,
u8 *intr_high_g_u8);
# 3274 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr_high_g(u8 channel_u8,
u8 intr_high_g_u8);
# 3304 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_slope(u8 channel_u8,
u8 *intr_slope_u8);
# 3334 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr_slope(u8 channel_u8,
u8 intr_slope_u8);
# 3365 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_slow_no_motion(u8 channel_u8,
u8 *intr_slow_no_motion_u8);
# 3396 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr_slow_no_motion(u8 channel_u8,
u8 intr_slow_no_motion_u8);
# 3426 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_double_tap(u8 channel_u8,
u8 *intr_double_tap_u8);
# 3456 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr_double_tap(u8 channel_u8,
u8 intr_double_tap_u8);
# 3485 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_single_tap(u8 channel_u8,
u8 *intr_single_tap_u8);
# 3514 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr_single_tap(u8 channel_u8,
u8 intr_single_tap_u8);
# 3542 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_orient(u8 channel_u8,
u8 *intr_orient_u8);
# 3570 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr_orient(u8 channel_u8,
u8 intr_orient_u8);
# 3600 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_flat(u8 channel_u8,
u8 *intr_flat_u8);
# 3630 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr_flat(u8 channel_u8,
u8 intr_flat_u8);
# 3659 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_new_data(u8 channel_u8,
u8 *intr_newdata_u8);
# 3688 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_new_data(u8 channel_u8,
u8 intr_newdata_u8);
# 3711 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr1_fifo_wm(u8 *intr1_fifo_wm_u8);
# 3730 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr1_fifo_wm(u8 intr1_fifo_wm_u8);
# 3749 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr2_fifo_wm(u8 *intr2_fifo_wm_u8);
# 3768 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr2_fifo_wm(u8 intr2_fifo_wm_u8);
# 3789 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr1_fifo_full(
u8 *intr1_fifo_full_u8);
# 3811 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr1_fifo_full(u8 intr1_fifo_full_u8);
# 3833 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr2_fifo_full(
u8 *intr2_fifo_full_u8);
# 3856 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr2_fifo_full(u8 intr2_fifo_full_u8);
# 3889 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_source(u8 channel_u8,
u8 *intr_source_u8);
# 3920 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_source(u8 channel_u8,
u8 intr_source_u8);
# 3951 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_output_type(u8 channel_u8,
u8 *intr_output_type_u8);
# 3979 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr_output_type(u8 channel_u8,
u8 intr_output_type_u8);
# 4006 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_intr_level(u8 channel_u8,
u8 *intr_level_u8);
# 4033 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_intr_level(u8 channel_u8,
u8 intr_level_u8);
# 4057 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_rst_intr(u8 rst_intr_u8);
# 4093 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_latch_intr(u8 *latch_intr_u8);
# 4126 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_latch_intr(u8 latch_intr_u8);
# 4169 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_durn(u8 channel_u8,
u8 *durn_u8);
# 4210 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_durn(u8 channel_u8,
u8 durn_u8);
# 4275 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_thres(u8 channel_u8,
u8 *thres_u8);
# 4337 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_thres(u8 channel_u8,
u8 thres_u8);
# 4374 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_low_high_g_hyst(u8 channel_u8,
u8 *hyst_u8);
# 4408 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_low_high_g_hyst(u8 channel_u8,
u8 hyst_u8);
# 4431 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_low_g_mode(u8 *low_g_mode_u8);
# 4450 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_low_g_mode(u8 low_g_mode_u8);
# 4479 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_tap_durn(u8 *tap_durn_u8);
# 4505 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_tap_durn(u8 tap_durn_u8);
# 4528 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_tap_shock(u8 *tap_shock_u8);
# 4548 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_tap_shock(u8 tap_shock_u8);
# 4570 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_tap_quiet(u8 *tap_quiet_u8);
# 4589 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_tap_quiet(u8 tap_quiet_u8);
# 4616 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_tap_thres(u8 *tap_thres_u8);
# 4640 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_tap_thres(u8 tap_thres_u8);
# 4665 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_tap_sample(u8 *tap_sample_u8);
# 4687 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_tap_sample(u8 tap_sample_u8);
# 4713 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_orient_mode(u8 *orient_mode_u8);
# 4736 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_orient_mode(u8 orient_mode_u8);
# 4767 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_orient_block(
u8 *orient_block_u8);
# 4796 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_orient_block(u8 orient_block_u8);
# 4816 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_orient_hyst(u8 *orient_hyst_u8);
# 4833 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_orient_hyst(u8 orient_hyst_u8);
# 4861 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_theta(u8 channel_u8,
u8 *theta_u8);
# 4887 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_theta(u8 channel_u8,
u8 theta_u8);
# 4911 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_orient_enable(
u8 *orient_enable_u8);
# 4932 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_orient_enable(u8 orient_enable_u8);
# 4954 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_flat_hyst(u8 *flat_hyst_u8);
# 4973 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_flat_hyst(u8 flat_hyst_u8);
# 4999 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_flat_hold_time(
u8 *flat_hold_time_u8);
# 5023 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_flat_hold_time(
u8 flat_hold_time_u8);
# 5045 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_fifo_wml_trig(
u8 *fifo_wml_trig);
# 5064 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_fifo_wml_trig(
u8 fifo_wml_trig);
# 5090 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_selftest_axis(
u8 *selftest_axis_u8);
# 5113 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_selftest_axis(
u8 selftest_axis_u8);
# 5134 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_selftest_sign(
u8 *selftest_sign_u8);
# 5155 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_selftest_sign(
u8 selftest_sign_u8);
# 5177 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_nvmprog_mode(
u8 *nvmprog_mode_u8);
# 5196 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_nvmprog_mode(u8 nvmprog_mode_u8);
# 5217 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_nvprog_trig(u8 nvprog_trig_u8);
# 5237 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_nvmprog_ready(u8 *nvprog_ready_u8);
# 5257 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_nvmprog_remain(u8 *nvprog_remain_u8);
# 5281 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_spi3(u8 *spi3_u8);
# 5302 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_spi3(u8 spi3_u8);
# 5334 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_i2c_wdt(u8 channel_u8,
u8 *i2c_wdt_u8);
# 5367 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_i2c_wdt(u8 channel_u8,
u8 i2c_wdt_u8);
# 5401 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_slow_comp(u8 channel_u8,
u8 *slow_comp_u8);
# 5432 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_slow_comp(u8 channel_u8,
u8 slow_comp_u8);
# 5452 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_cal_rdy(u8 *cal_rdy_u8);
# 5471 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_cal_trigger(u8 cal_trigger_u8);
# 5489 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_offset_rst(u8 offset_rst_u8);
# 5528 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_offset_target(u8 channel_u8,
u8 *offset_u8);
# 5568 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_offset_target(u8 channel_u8,
u8 offset_u8);
# 5595 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_offset(u8 channel_u8,
s8 *offset_u8);
# 5622 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_offset(u8 channel_u8,
s8 offset_u8);
# 5648 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_fifo_mode(u8 *fifo_mode_u8);
# 5670 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_fifo_mode(u8 fifo_mode_u8);
# 5692 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_fifo_data_select(
u8 *fifo_data_select_u8);
# 5715 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_set_fifo_data_select(
u8 fifo_data_select_u8);
# 5741 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_read_fifo_data(
   struct fifo_configuration *fifo_conf);
# 5770 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_extract_accel(union fifo_frame *accel_frame,
  u8 *accel_frame_count, struct fifo_configuration *fifo_conf);
# 5791 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_read_temp(s8 *temp_s8);
# 5810 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_read_accel_xyzt(
struct bma2x2_accel_data_temp *accel);
# 5827 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_read_accel_eight_resolution_xyzt(
struct bma2x2_accel_eight_resolution_temp *accel);
# 5845 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
s8 bma2x2_get_fifo_data_output_reg(
u8 *output_reg_u8);
# 84 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c" 2

static struct bma2x2_t *p_bma2x2;

u8 V_BMA2x2RESOLUTION_U8 = (2);
# 103 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
static void get_accel_len_to_parse(u8 *data_index, u8 *data_read_length,
  u8 accel_frame_count, u8 fifo_data_select,
  struct fifo_configuration *fifo_conf);
# 126 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
static void unpack_accel_frame(union fifo_frame *accel_frame, u8 *data_index,
  u8 *accel_index, u8 fifo_data_select,
  struct fifo_configuration *fifo_conf);
# 141 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
static void unpack_accel_xyz(union fifo_frame *accel_frame, u8 *data_index,
  struct fifo_configuration *fifo_conf);
# 160 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_burst_read(u8 addr_u8,
u8 *data_u8, u32 len_u32)
{


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->burst_read(p_bma2x2->dev_addr, addr_u8, data_u8, len_u32)
                                                  ;
  }
 return com_rslt;
}
# 200 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_init(struct bma2x2_t *bma2x2)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);
 u8 config_data_u8 = ((u8)0);

 p_bma2x2 = bma2x2;
 if (p_bma2x2 == ((void *)0)) {

  com_rslt = ((s8)-127);
 } else {

  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x00), &data_u8, ((u8)1))

                                                             ;
  p_bma2x2->chip_id = data_u8;


  com_rslt += bma2x2_read_reg((0x3E),
  &config_data_u8, ((u8)1));
  p_bma2x2->fifo_config = config_data_u8;
 }
 return com_rslt;
}
# 244 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_write_reg(u8 adr_u8,
u8 *data_u8, u8 len_u8)
{


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

  com_rslt = p_bma2x2->bus_write(p_bma2x2->dev_addr, adr_u8, data_u8, len_u8)
                                               ;

  if (p_bma2x2->power_mode_u8 != (0)) {


   p_bma2x2->delay_msec(((u8)1));
  }
 }
 return com_rslt;
}
# 284 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_read_reg(u8 adr_u8,
u8 *data_u8, u8 len_u8)
{


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, adr_u8, data_u8, len_u8)
                                                ;
  }
 return com_rslt;
}
# 321 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_read_accel_x(s16 *accel_x_s16)
{


 s8 com_rslt = ((s8)-1);




 u8 data_u8[(2)] = {
 ((u8)0), ((u8)0)};
 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (V_BMA2x2RESOLUTION_U8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x02), data_u8, ((u8)2))


                              ;
   *accel_x_s16 = (s16)((((s32)((s8)
   data_u8[(1)]))
   << ((u8)8)) |
   (data_u8[(0)] &
   (0xF0)));
   *accel_x_s16 = *accel_x_s16 >>
   ((u8)4);
  break;

  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x02), data_u8, ((u8)2))


                              ;
   *accel_x_s16 = (s16)((((s32)((s8)
   data_u8[(1)]))
   << ((u8)8)) |
   (data_u8[(0)] &
   (0xC0)));
   *accel_x_s16 = *accel_x_s16 >>
   ((u8)6);
  break;

  case (2):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x02), data_u8, ((u8)2))


                              ;
   *accel_x_s16 = (s16)((((s32)((s8)
   data_u8[(1)]))
   << ((u8)8)) |
   (data_u8[(0)] &
   (0xFC)));
   *accel_x_s16 = *accel_x_s16 >>
   ((u8)2);
  break;
  default:
  break;
  }
 }
 return com_rslt;
}
# 401 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_read_accel_eight_resolution_x(
s8 *accel_x_s8)
{


 s8 com_rslt = ((s8)-1);
 u8 data = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x03), &data, ((u8)1))


                                ;
   *accel_x_s8 = ((data & (0xFF)) >> (0))
                      ;
  }
 return com_rslt;
}
# 442 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_read_accel_y(s16 *accel_y_s16)
{


 s8 com_rslt = ((s8)-1);




 u8 data_u8[(2)] = {((u8)0),
 ((u8)0)};

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (V_BMA2x2RESOLUTION_U8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x04), data_u8, ((u8)2))


                              ;
   *accel_y_s16 = (s16)((((s32)((s8)
   data_u8[(1)]))
   << ((u8)8)) |
   (data_u8[(0)] &
   (0xF0)));
   *accel_y_s16 = *accel_y_s16 >>
   ((u8)4);
  break;

  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x04), data_u8, ((u8)2))


                              ;
   *accel_y_s16 = (s16)((((s32)((s8)
   data_u8[(1)]))
   << ((u8)8)) |
   (data_u8[(0)] &
   (0xC0)));
   *accel_y_s16 = *accel_y_s16 >>
   ((u8)6);
  break;

  case (2):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x04), data_u8, ((u8)2))


                              ;
   *accel_y_s16 = (s16)((((s32)((s8)
   data_u8[(1)]))
   << ((u8)8)) |
   (data_u8[(0)] &
   (0xFC)));
   *accel_y_s16 = *accel_y_s16 >>
   ((u8)2);
  break;
  default:
  break;
  }
 }
 return com_rslt;
}
# 524 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_read_accel_eight_resolution_y(
s8 *accel_y_s8)
{


 s8 com_rslt = ((s8)-1);
 u8 data = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x05), &data, ((u8)1))


                                ;
   *accel_y_s8 = ((data & (0xFF)) >> (0))
                      ;
  }
 return com_rslt;
}
# 564 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_read_accel_z(s16 *accel_z_s16)
{


 s8 com_rslt = ((s8)-1);




 u8 data_u8[(2)] = {((u8)0),
 ((u8)0)};

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (V_BMA2x2RESOLUTION_U8) {
  case (0):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x06), data_u8, ((u8)2))


                              ;
   *accel_z_s16 = (s16)((((s32)((s8)
   data_u8[(1)]))
   << ((u8)8)) |
   (data_u8[(0)]
   & (0xF0)));
   *accel_z_s16 = *accel_z_s16 >>
   ((u8)4);
  break;

  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x06), data_u8, ((u8)2))


                              ;
   *accel_z_s16 = (s16)((((s32)((s8)
   data_u8[(1)]))
   << ((u8)8)) |
   (data_u8[(0)]
   & (0xC0)));
   *accel_z_s16 = *accel_z_s16 >>
   ((u8)6);
  break;

  case (2):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x06), data_u8, ((u8)2))


                              ;
   *accel_z_s16 = (s16)((((s32)((s8)
   data_u8[(1)]))
   << ((u8)8)) |
   (data_u8[(0)]
   & (0xFC)));
   *accel_z_s16 = *accel_z_s16 >>
   ((u8)2);
  break;
  default:
  break;
  }
 }
 return com_rslt;
}
# 646 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_read_accel_eight_resolution_z(
s8 *accel_z_s8)
{


 s8 com_rslt = ((s8)-1);
 u8 data = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x07), &data, ((u8)1))


                                ;
   *accel_z_s8 = ((data & (0xFF)) >> (0))
                      ;
  }
 return com_rslt;
}
# 684 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_read_accel_xyz(
struct bma2x2_accel_data *accel)
{


 s8 com_rslt = ((s8)-1);
# 698 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
 u8 data_u8[(6)] = {
 ((u8)0), ((u8)0),
 ((u8)0), ((u8)0),
 ((u8)0), ((u8)0)};

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (V_BMA2x2RESOLUTION_U8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x02), data_u8, ((u8)6))

                                  ;

   accel->x = (s16)((((s32)((s8)
   data_u8[(1)]))
   << ((u8)8)) |
   (data_u8[(0)] &
   (0xF0)));
   accel->x = accel->x >> ((u8)4);


   accel->y = (s16)((((s32)((s8)
   data_u8[(3)]))
   << ((u8)8)) |
   (data_u8[(2)] &
   (0xF0)));
   accel->y = accel->y >> ((u8)4);


   accel->z = (s16)((((s32)((s8)
   data_u8[(5)]))
   << ((u8)8)) |
   (data_u8[(4)] &
   (0xF0)));
   accel->z = accel->z >> ((u8)4);

  break;
  case (1):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x02), data_u8, ((u8)6))

                                  ;

   accel->x = (s16)((((s32)((s8)
   data_u8[(1)]))
   << ((u8)8)) |
   (data_u8[(0)] &
   (0xC0)));
   accel->x = accel->x >> ((u8)6);


   accel->y = (s16)((((s32)((s8)
   data_u8[(3)]))
   << ((u8)8)) |
   (data_u8[(2)] &
   (0xC0)));
   accel->y = accel->y >> ((u8)6);


   accel->z = (s16)((((s32)((s8)
   data_u8[(5)]))
   << ((u8)8)) |
   (data_u8[(4)]
   & (0xC0)));
   accel->z = accel->z >> ((u8)6);
  break;

  case (2):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x02), data_u8, ((u8)6))

                                  ;


   accel->x = (s16)((((s32)((s8)
   data_u8[(1)]))<<
   ((u8)8)) |
   (data_u8[(0)]
   & (0xFC)));
   accel->x = accel->x >> ((u8)2);


   accel->y = (s16)((((s32)((s8)
   data_u8[(3)]))<<
   ((u8)8)) |
   (data_u8[(2)]
   & (0xFC)));
   accel->y = accel->y >> ((u8)2);


   accel->z = (s16)((((s32)((s8)
   data_u8[(5)]))<<
   ((u8)8)) |
   (data_u8[(4)]
   & (0xFC)));
   accel->z = accel->z >> ((u8)2);
  break;
  default:
  break;
  }
 }
 return com_rslt;
}
# 821 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_read_accel_eight_resolution_xyz(
struct bma2x2_accel_eight_resolution *accel)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x03), &data_u8, ((u8)1))


                               ;
  accel->x = ((data_u8 & (0xFF)) >> (0))
                     ;

  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x05), &data_u8, ((u8)1))


                               ;
  accel->y = ((data_u8 & (0xFF)) >> (0))
                     ;

  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x07), &data_u8, ((u8)1))


                               ;
  accel->z = ((data_u8 & (0xFF)) >> (0))
                     ;
  }
 return com_rslt;
}
# 871 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_tap_stat(
u8 *stat_tap_u8)
{


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x0B), stat_tap_u8, ((u8)1))

                                             ;
  }
 return com_rslt;
}
# 904 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_orient_stat(
u8 *stat_orient_u8)
{


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x0C), stat_orient_u8, ((u8)1))

                                                ;
  }
 return com_rslt;
}
# 936 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_fifo_stat(
u8 *stat_fifo_u8)
{


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x0E), stat_fifo_u8, ((u8)1))


                                              ;
  }
 return com_rslt;
}
# 970 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_fifo_frame_count(
u8 *frame_count_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x0E), &data_u8, ((u8)1))


                                          ;
   *frame_count_u8 = ((data_u8 & (0x7F)) >> (0))
                                ;
  }
 return com_rslt;
}
# 1007 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_fifo_overrun(
u8 *fifo_overrun_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x0E), &data_u8, ((u8)1))


                                          ;
   *fifo_overrun_u8 = ((data_u8 & (0x80)) >> (7))
                            ;
  }
 return com_rslt;
}
# 1045 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_stat(
u8 *intr_stat_u8)
{


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x09), intr_stat_u8, ((u8)4))


                          ;
  }
 return com_rslt;
}
# 1085 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_range(u8 *range_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x0F), &data_u8, ((u8)1))

                               ;
  data_u8 = ((data_u8 & (0x0F)) >> (0));
  *range_u8 = data_u8;
 }
 return com_rslt;
}
# 1126 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_range(u8 range_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  if ((range_u8 == (3)) ||
  (range_u8 == (5)) ||
  (range_u8 == (8)) ||
  (range_u8 == (12))) {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x0F), &data_u8, ((u8)1))


                                ;
   switch (range_u8) {
   case (3):
    data_u8 = ((data_u8 & ~(0x0F)) | (((3)<<(0))&(0x0F)))

                    ;
   break;
   case (5):
    data_u8 = ((data_u8 & ~(0x0F)) | (((5)<<(0))&(0x0F)))

                    ;
   break;
   case (8):
    data_u8 = ((data_u8 & ~(0x0F)) | (((8)<<(0))&(0x0F)))

                    ;
   break;
   case (12):
    data_u8 = ((data_u8 & ~(0x0F)) | (((12)<<(0))&(0x0F)))

                     ;
   break;
   default:
   break;
   }

   com_rslt += bma2x2_write_reg((0x0F),
    &data_u8, ((u8)1));
  } else {
  com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 1203 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_bw(u8 *bw_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x10), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & (0x1F)) >> (0));
   *bw_u8 = data_u8;
  }
 return com_rslt;
}
# 1250 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_bw(u8 bw_u8)
{


s8 com_rslt = ((s8)-1);
u8 data_u8 = ((u8)0);
u8 data_bw_u8 = ((u8)0);
if (p_bma2x2 == ((void *)0)) {

  com_rslt = ((s8)-127);
 } else {

 if (p_bma2x2->chip_id == (0xFB)) {
  if (bw_u8 > ((u8)7) &&
  bw_u8 < ((u8)15)) {
   switch (bw_u8) {
   case (0x08):
    data_bw_u8 = (0x08);


   break;
   case (0x09):
    data_bw_u8 = (0x09);


   break;
   case (0x0A):
    data_bw_u8 = (0x0A);


   break;
   case (0x0B):
    data_bw_u8 = (0x0B);


   break;
   case (0x0C):
    data_bw_u8 = (0x0C);


   break;
   case (0x0D):
    data_bw_u8 = (0x0D);


   break;
   case (0x0E):
    data_bw_u8 = (0x0E);


   break;
   default:
   break;
   }

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x10), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0x1F)) | ((data_bw_u8<<(0))&(0x1F)))
                         ;
   com_rslt += bma2x2_write_reg
   ((0x10), &data_u8,
   ((u8)1));
   } else {
   com_rslt = ((s8)-2);
   }
  } else {
  if (bw_u8 > ((u8)7) &&
  bw_u8 < ((u8)16)) {
   switch (bw_u8) {
   case (0x08):
    data_bw_u8 = (0x08);


   break;
   case (0x09):
    data_bw_u8 = (0x09);


   break;
   case (0x0A):
    data_bw_u8 = (0x0A);


   break;
   case (0x0B):
    data_bw_u8 = (0x0B);


   break;
   case (0x0C):
    data_bw_u8 = (0x0C);


   break;
   case (0x0D):
    data_bw_u8 = (0x0D);


   break;
   case (0x0E):
    data_bw_u8 = (0x0E);


   break;
   case (0x0F):
    data_bw_u8 = (0x0F);


   break;
   default:
   break;
   }

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x10), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0x1F)) | ((data_bw_u8<<(0))&(0x1F)))
                                   ;
   com_rslt += bma2x2_write_reg(
   (0x10), &data_u8,
   ((u8)1));
   } else {
   com_rslt = ((s8)-2);
   }
  }
 }
 return com_rslt;
}
# 1406 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_power_mode(
u8 *power_mode_u8)
{


s8 com_rslt = ((s8)-1);
u8 data_u8 = ((u8)0);
u8 data2_u8 = ((u8)0);
if (p_bma2x2 == ((void *)0)) {

  com_rslt = ((s8)-127);
 } else {
  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x11), &data_u8, ((u8)1))

                                         ;
  com_rslt += p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x12), &data2_u8, ((u8)1))

                                          ;

  data_u8 = (data_u8 &
  (0xE0)) >>
  ((u8)5);
  data2_u8 = (data2_u8 &
  (0x40)) >>
  ((u8)6);

 if ((data_u8 ==
 (0x00)) &&
 (data2_u8 ==
 (0x00))) {
  *power_mode_u8 = (0);
  } else {
  if ((data_u8 ==
  (0x02)) &&
  (data2_u8 ==
  (0x00))) {
   *power_mode_u8 =
   (1);
   } else {
   if ((data_u8 ==
   (0x04)
   || data_u8 ==
   (0x06)) &&
   (data2_u8 ==
   (0x00))) {
    *power_mode_u8 =
    (2);
    } else {
    if (((data_u8 &
    (0x01))
    == (0x01))) {
     *power_mode_u8 =
     (3);
     } else {
     if ((data_u8 ==
     (0x02))
     && (data2_u8 ==
     (0x01))) {
      *power_mode_u8 =
      (4);
     } else {
     if ((data_u8 ==
     (0x04)) &&
     (data2_u8 ==
     (0x01)))
      *power_mode_u8 =
       (5);
     else
      *power_mode_u8 =
      (3);
      }
     }
    }
   }
  }
 }
 p_bma2x2->power_mode_u8 = *power_mode_u8;
return com_rslt;
}
# 1510 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_power_mode(u8 power_mode_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 mode_ctr_eleven_reg = ((u8)0);
 u8 mode_ctr_twel_reg = ((u8)0);
 u8 data_u8 = ((u8)0);
 u8 data2_u8 = ((u8)0);
 u8 pre_fifo_config_data = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  com_rslt = ((s8)-127);
 } else {
  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x11), &data_u8, 1)
                                     ;
  com_rslt += p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x12), &data2_u8, 1)
                                           ;


  pre_fifo_config_data = p_bma2x2->fifo_config;
  pre_fifo_config_data |= 0x0C;

  com_rslt += bma2x2_set_mode_value(power_mode_u8);
  mode_ctr_eleven_reg = p_bma2x2->ctrl_mode_reg;
  mode_ctr_twel_reg = p_bma2x2->low_mode_reg;


  data2_u8 = ((data2_u8 & ~(0x40)) | ((mode_ctr_twel_reg<<(6))&(0x40)))
                       ;
  com_rslt += bma2x2_write_reg((0x12),
     &data2_u8, 1);



  p_bma2x2->delay_msec(((u8)1));

  if (((p_bma2x2->power_mode_u8 == (1)) ||
   (p_bma2x2->power_mode_u8 == (4))) &&
    (power_mode_u8 == (0))) {

    data_u8 = ((data_u8 & ~(0xE0)) | ((((u8)4)<<(5))&(0xE0)))
                                             ;

    com_rslt += bma2x2_write_reg(
    (0x11), &data_u8,
    ((u8)1));

    com_rslt += bma2x2_write_reg(
    (0x3E), &pre_fifo_config_data, 1);
   }


  data_u8 = ((data_u8 & ~(0xE0)) | ((mode_ctr_eleven_reg<<(5))&(0xE0)))
                       ;
  com_rslt += bma2x2_write_reg((0x11), &data_u8, 1);


  p_bma2x2->delay_msec(((u8)1));

  com_rslt += bma2x2_write_reg((0x3E),
  &pre_fifo_config_data, 1);


  p_bma2x2->power_mode_u8 = power_mode_u8;
 }
 return com_rslt;
}
# 1604 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_mode_value(u8 power_mode_u8)
{
 s8 com_rslt = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  com_rslt = ((s8)-127);
 } else {
 if (power_mode_u8 < ((u8)6)) {
  switch (power_mode_u8) {
  case (0):
   p_bma2x2->ctrl_mode_reg =
   (0x00);
   p_bma2x2->low_mode_reg =
   (0x00);
  break;
  case (1):
   p_bma2x2->ctrl_mode_reg =
   (0x02);
   p_bma2x2->low_mode_reg =
   (0x00);
  break;
  case (4):
   p_bma2x2->ctrl_mode_reg =
   (0x02);
   p_bma2x2->low_mode_reg =
   (0x01);
  break;
  case (2):
   p_bma2x2->ctrl_mode_reg =
   (0x04);
   p_bma2x2->low_mode_reg =
   (0x00);
  break;
  case (5):
   p_bma2x2->ctrl_mode_reg =
   (0x04);
   p_bma2x2->low_mode_reg =
   (0x01);
  break;
  case (3):
   p_bma2x2->ctrl_mode_reg =
   (0x01);
  break;
  }
  } else {
   com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 1684 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_sleep_durn(u8 *sleep_durn_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x11), &data_u8, ((u8)1))

                                          ;
   *sleep_durn_u8 = ((data_u8 & (0x1E)) >> (1))
                               ;
  }
 return com_rslt;
}
# 1735 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_sleep_durn(u8 sleep_durn_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);
 u8 data_sleep_durn_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  if (sleep_durn_u8 > ((u8)4) &&
  sleep_durn_u8 < ((u8)16)) {
   switch (sleep_durn_u8) {
   case (0x05):
    data_sleep_durn_u8 = (0x05);


   break;
   case (0x06):
    data_sleep_durn_u8 = (0x06);


   break;
   case (0x07):
    data_sleep_durn_u8 = (0x07);


   break;
   case (0x08):
    data_sleep_durn_u8 = (0x08);


   break;
   case (0x09):
    data_sleep_durn_u8 = (0x09);


   break;
   case (0x0A):
    data_sleep_durn_u8 = (0x0A);


   break;
   case (0x0B):
    data_sleep_durn_u8 = (0x0B);


   break;
   case (0x0C):
    data_sleep_durn_u8 = (0x0C);


   break;
   case (0x0D):
    data_sleep_durn_u8 = (0x0D);


   break;
   case (0x0E):
    data_sleep_durn_u8 = (0x0E);


   break;
   case (0x0F):
    data_sleep_durn_u8 = (0x0F);


   break;
   default:
   break;
   }

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x11), &data_u8, ((u8)1))

                                          ;
   data_u8 = ((data_u8 & ~(0x1E)) | ((data_sleep_durn_u8<<(1))&(0x1E)))
                                                   ;
   com_rslt += bma2x2_write_reg((0x11),
   &data_u8, ((u8)1));
  } else {
  com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 1842 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_sleep_timer_mode(
u8 *sleep_timer_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x12), &data_u8, ((u8)1))

                                          ;
   *sleep_timer_u8 = ((data_u8 & (0x20)) >> (5))
                                ;
  }
 return com_rslt;
}
# 1883 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_sleep_timer_mode(u8 sleep_timer_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  if (sleep_timer_u8 < ((u8)2)) {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x12), &data_u8, ((u8)1))

                                          ;
   data_u8 = ((data_u8 & ~(0x20)) | ((sleep_timer_u8<<(5))&(0x20)))
                                                ;
   com_rslt += bma2x2_write_reg((0x12),
   &data_u8, ((u8)1));
  } else {
  com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 1926 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_high_bw(u8 *high_bw_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {
  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x13), &data_u8, ((u8)1))

                                          ;
   *high_bw_u8 = ((data_u8 & (0x80)) >> (7))
                                        ;
  }
 return com_rslt;
}
# 1962 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_high_bw(u8 high_bw_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {
  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x13), &data_u8, ((u8)1))

                                          ;
   data_u8 = ((data_u8 & ~(0x80)) | ((high_bw_u8<<(7))&(0x80)))
                                          ;
   com_rslt += bma2x2_write_reg(
   (0x13),
   &data_u8, ((u8)1));
  }
 return com_rslt;
}
# 2002 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_shadow_dis(u8 *shadow_dis_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {
  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x13), &data_u8, ((u8)1))


                                          ;
   *shadow_dis_u8 = ((data_u8 & (0x40)) >> (6))
                                    ;
  }
 return com_rslt;
}
# 2040 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_shadow_dis(u8 shadow_dis_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {
  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x13), &data_u8, ((u8)1))

                                          ;
   data_u8 = ((data_u8 & ~(0x40)) | ((shadow_dis_u8<<(6))&(0x40)))
                                                   ;
   com_rslt += bma2x2_write_reg((0x13),
   &data_u8, ((u8)1));
  }
 return com_rslt;
}
# 2076 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_soft_rst(void)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = (0xB6);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {


   com_rslt = bma2x2_write_reg((0x14),
   &data_u8, ((u8)1));
  }
 return com_rslt;
}
# 2110 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_update_image(void)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {
  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x33), &data_u8, ((u8)1))

                                          ;
   data_u8 = ((data_u8 & ~(0x08)) | ((((u8)1)<<(3))&(0x08)))

                                ;
   com_rslt += bma2x2_write_reg((0x33),
   &data_u8, ((u8)1));
  }
 return com_rslt;
}
# 2176 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_enable(u8 intr_type_u8,
u8 *value_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (intr_type_u8) {
  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x17), &data_u8, ((u8)1))


                                          ;
   *value_u8 = ((data_u8 & (0x08)) >> (3))
                                      ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x17), &data_u8, ((u8)1))


                                          ;
   *value_u8 = ((data_u8 & (0x01)) >> (0))
                                         ;
  break;
  case (2):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x17), &data_u8, ((u8)1))


                                          ;
   *value_u8 = ((data_u8 & (0x02)) >> (1))
                                         ;
  break;
  case (3):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x17), &data_u8, ((u8)1))


                                          ;
   *value_u8 = ((data_u8 & (0x04)) >> (2))
                                         ;
  break;
  case (4):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x17), &data_u8, ((u8)1))


                                          ;
   *value_u8 = ((data_u8 & (0x10)) >> (4))
                                         ;
  break;
  case (5):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x16), &data_u8, ((u8)1))


                                          ;
   *value_u8 = ((data_u8 & (0x01)) >> (0))
                                        ;
  break;
  case (6):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x16), &data_u8, ((u8)1))


                                          ;
   *value_u8 = ((data_u8 & (0x02)) >> (1))
                                        ;
  break;
  case (7):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x16), &data_u8, ((u8)1))


                                          ;
   *value_u8 = ((data_u8 & (0x04)) >> (2))
                                        ;
  break;
  case (8):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x16), &data_u8, ((u8)1))


                                          ;
   *value_u8 = ((data_u8 & (0x20)) >> (5))
                                           ;
  break;
  case (9):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x16), &data_u8, ((u8)1))


                                          ;
   *value_u8 = ((data_u8 & (0x10)) >> (4))
                                           ;
  break;
  case (10):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x16), &data_u8, ((u8)1))


                                          ;
   *value_u8 = ((data_u8 & (0x40)) >> (6))
                                       ;
  break;
  case (11):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x16), &data_u8, ((u8)1))


                                          ;
   *value_u8 = ((data_u8 & (0x80)) >> (7))
                                     ;
  break;
  default:
  com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 2336 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr_enable(u8 intr_type_u8,
u8 value_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);
 u8 data2_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x16), &data_u8, ((u8)1))

                                         ;
  com_rslt += p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x17), &data2_u8, ((u8)1))

                                          ;
  value_u8 = value_u8 & ((u8)1);
  switch (intr_type_u8) {
  case (0):

   data2_u8 = ((data2_u8 & ~(0x08)) | ((value_u8<<(3))&(0x08)))
                                      ;
  break;
  case (1):

   data2_u8 = ((data2_u8 & ~(0x01)) | ((value_u8<<(0))&(0x01)))
                                         ;
  break;
  case (2):

   data2_u8 = ((data2_u8 & ~(0x02)) | ((value_u8<<(1))&(0x02)))
                                         ;
  break;
  case (3):

   data2_u8 = ((data2_u8 & ~(0x04)) | ((value_u8<<(2))&(0x04)))
                                         ;
  break;
  case (4):

   data2_u8 = ((data2_u8 & ~(0x10)) | ((value_u8<<(4))&(0x10)))
                                         ;
  break;
  case (5):

   data_u8 = ((data_u8 & ~(0x01)) | ((value_u8<<(0))&(0x01)))
                                        ;
  break;
  case (6):

   data_u8 = ((data_u8 & ~(0x02)) | ((value_u8<<(1))&(0x02)))
                                        ;
  break;
  case (7):

   data_u8 = ((data_u8 & ~(0x04)) | ((value_u8<<(2))&(0x04)))
                                        ;
  break;
  case (8):

   data_u8 = ((data_u8 & ~(0x20)) | ((value_u8<<(5))&(0x20)))
                                            ;
  break;
  case (9):

   data_u8 = ((data_u8 & ~(0x10)) | ((value_u8<<(4))&(0x10)))
                                            ;
  break;
  case (10):

   data_u8 = ((data_u8 & ~(0x40)) | ((value_u8<<(6))&(0x40)))
                                       ;
  break;
  case (11):

   data_u8 = ((data_u8 & ~(0x80)) | ((value_u8<<(7))&(0x80)))
                                     ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }

  com_rslt += bma2x2_write_reg
  ((0x16),
  &data_u8, ((u8)1));
  com_rslt += bma2x2_write_reg
  ((0x17),
  &data2_u8, ((u8)1));
 }
 return com_rslt;
}
# 2451 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_fifo_full(u8 *fifo_full_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x17), &data_u8, ((u8)1))


                                          ;
   *fifo_full_u8 = ((data_u8 & (0x20)) >> (5))
                                     ;
  }
 return com_rslt;
}
# 2492 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr_fifo_full(u8 fifo_full_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  if (fifo_full_u8 < ((u8)2)) {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x17), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x20)) | ((fifo_full_u8<<(5))&(0x20)))

                ;
   com_rslt += bma2x2_write_reg(
   (0x17),
   &data_u8, ((u8)1));
  } else {
  com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 2543 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_fifo_wm(u8 *fifo_wm_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x17), &data_u8, ((u8)1))


                                          ;
   *fifo_wm_u8 = ((data_u8 & (0x40)) >> (6))
                                             ;
  }
 return com_rslt;
}
# 2586 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr_fifo_wm(u8 fifo_wm_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  if (fifo_wm_u8 < ((u8)2)) {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x17), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x40)) | ((fifo_wm_u8<<(6))&(0x40)))

              ;
   com_rslt += bma2x2_write_reg(
   (0x17),
   &data_u8, ((u8)1));
  } else {
  com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 2642 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_slow_no_motion(u8 channel_u8,
u8 *slow_no_motion_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

  switch (channel_u8) {
  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x18), &data_u8, ((u8)1))


                                          ;
   *slow_no_motion_u8 = ((data_u8 & (0x01)) >> (0))
                                                      ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x18), &data_u8, ((u8)1))


                                          ;
   *slow_no_motion_u8 = ((data_u8 & (0x02)) >> (1))
                                                      ;
  break;
  case (2):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x18), &data_u8, ((u8)1))


                                          ;
   *slow_no_motion_u8 = ((data_u8 & (0x04)) >> (2))
                                                      ;
  break;
  case (3):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x18), &data_u8, ((u8)1))


                                          ;
   *slow_no_motion_u8 = ((data_u8 & (0x08)) >> (3))

                                                 ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 2724 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_slow_no_motion(u8 channel_u8,
u8 slow_no_motion_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

  switch (channel_u8) {
  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x18), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x01)) | ((slow_no_motion_u8<<(0))&(0x01)))


                     ;
   com_rslt += bma2x2_write_reg(
   (0x18),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x18), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x02)) | ((slow_no_motion_u8<<(1))&(0x02)))


                     ;
   com_rslt += bma2x2_write_reg(
   (0x18),
   &data_u8, ((u8)1));
  break;
  case (2):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x18), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x04)) | ((slow_no_motion_u8<<(2))&(0x04)))


                     ;
   com_rslt += bma2x2_write_reg(
   (0x18),
   &data_u8, ((u8)1));
  break;
  case (3):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x18), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x08)) | ((slow_no_motion_u8<<(3))&(0x08)))


                     ;
   com_rslt += bma2x2_write_reg(
   (0x18),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 2826 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_low_g(u8 channel_u8,
u8 *intr_low_g_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   *intr_low_g_u8 = ((data_u8 & (0x01)) >> (0))
                                           ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   *intr_low_g_u8 = ((data_u8 & (0x01)) >> (0))
                                           ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 2892 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr_low_g(u8 channel_u8,
u8 intr_low_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {
  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x01)) | ((intr_low_u8<<(0))&(0x01)))
                                              ;
   com_rslt += bma2x2_write_reg(
   (0x19),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x01)) | ((intr_low_u8<<(0))&(0x01)))

               ;
   com_rslt += bma2x2_write_reg(
   (0x1B),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 2961 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_high_g(u8 channel_u8,
u8 *intr_high_g_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   *intr_high_g_u8 = ((data_u8 & (0x02)) >> (1))
                                            ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   *intr_high_g_u8 = ((data_u8 & (0x02)) >> (1))
                                            ;
  break;
  default:
  com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3024 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr_high_g(u8 channel_u8,
u8 intr_high_g_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

  switch (channel_u8) {
  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x02)) | ((intr_high_g_u8<<(1))&(0x02)))

                  ;
   com_rslt += bma2x2_write_reg(
   (0x19),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x02)) | ((intr_high_g_u8<<(1))&(0x02)))

                  ;
   com_rslt += bma2x2_write_reg(
   (0x1B),
   &data_u8, ((u8)1));
  break;
  default:
  com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3097 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_slope(u8 channel_u8,
u8 *intr_slope_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

  switch (channel_u8) {
  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   *intr_slope_u8 = ((data_u8 & (0x04)) >> (2))
                                           ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   *intr_slope_u8 = ((data_u8 & (0x04)) >> (2))
                                           ;
  break;
  default:
  com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3162 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr_slope(u8 channel_u8,
u8 intr_slope_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x04)) | ((intr_slope_u8<<(2))&(0x04)))

                 ;
   com_rslt += bma2x2_write_reg(
   (0x19),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x04)) | ((intr_slope_u8<<(2))&(0x04)))

                 ;
   com_rslt += bma2x2_write_reg(
   (0x1B),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3236 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_slow_no_motion(u8 channel_u8,
u8 *intr_slow_no_motion_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

  switch (channel_u8) {
  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   *intr_slow_no_motion_u8 = ((data_u8 & (0x08)) >> (3))
                                                    ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   *intr_slow_no_motion_u8 = ((data_u8 & (0x08)) >> (3))
                                                    ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3302 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr_slow_no_motion(u8 channel_u8,
u8 intr_slow_no_motion_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x08)) | ((intr_slow_no_motion_u8<<(3))&(0x08)))


                          ;
   com_rslt += bma2x2_write_reg(
   (0x19),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x08)) | ((intr_slow_no_motion_u8<<(3))&(0x08)))


                          ;
   com_rslt += bma2x2_write_reg(
   (0x1B),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3377 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_double_tap(u8 channel_u8,
u8 *intr_double_tap_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

  switch (channel_u8) {
  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   *intr_double_tap_u8 = ((data_u8 & (0x10)) >> (4))
                                                ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   *intr_double_tap_u8 = ((data_u8 & (0x10)) >> (4))
                                                ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3442 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr_double_tap(u8 channel_u8,
u8 intr_double_tap_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x10)) | ((intr_double_tap_u8<<(4))&(0x10)))


                      ;
   com_rslt += bma2x2_write_reg(
   (0x19),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x10)) | ((intr_double_tap_u8<<(4))&(0x10)))


                      ;
   com_rslt += bma2x2_write_reg(
   (0x1B),
   &data_u8, ((u8)1));
  break;
  default:
  com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3516 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_single_tap(u8 channel_u8,
u8 *intr_single_tap_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   *intr_single_tap_u8 = ((data_u8 & (0x20)) >> (5))
                                                ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   *intr_single_tap_u8 = ((data_u8 & (0x20)) >> (5))
                                                ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3580 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr_single_tap(u8 channel_u8,
u8 intr_single_tap_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x20)) | ((intr_single_tap_u8<<(5))&(0x20)))

                      ;
   com_rslt += bma2x2_write_reg(
   (0x19),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x20)) | ((intr_single_tap_u8<<(5))&(0x20)))


                      ;
   com_rslt += bma2x2_write_reg(
   (0x1B),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3652 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_orient(u8 channel_u8,
u8 *intr_orient_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   *intr_orient_u8 = ((data_u8 & (0x40)) >> (6))
                                            ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   *intr_orient_u8 = ((data_u8 & (0x40)) >> (6))
                                            ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3715 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr_orient(u8 channel_u8,
u8 intr_orient_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x40)) | ((intr_orient_u8<<(6))&(0x40)))

                                                  ;
   com_rslt += bma2x2_write_reg(
   (0x19),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x40)) | ((intr_orient_u8<<(6))&(0x40)))

                                                  ;
   com_rslt += bma2x2_write_reg(
   (0x1B),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3788 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_flat(u8 channel_u8,
u8 *intr_flat_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   *intr_flat_u8 = ((data_u8 & (0x80)) >> (7))
                                          ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   *intr_flat_u8 = ((data_u8 & (0x80)) >> (7))
                                          ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3853 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr_flat(u8 channel_u8,
u8 intr_flat_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x19), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x80)) | ((intr_flat_u8<<(7))&(0x80)))

                                              ;
   com_rslt += bma2x2_write_reg(
   (0x19),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1B), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x80)) | ((intr_flat_u8<<(7))&(0x80)))

                                              ;
   com_rslt += bma2x2_write_reg(
   (0x1B),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3925 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_new_data(u8 channel_u8,
u8 *intr_newdata_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1A), &data_u8, ((u8)1))


                                          ;
   *intr_newdata_u8 = ((data_u8 & (0x01)) >> (0))
                                             ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1A), &data_u8, ((u8)1))


                                          ;
   *intr_newdata_u8 = ((data_u8 & (0x80)) >> (7))
                                             ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 3989 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_new_data(u8 channel_u8,
u8 intr_newdata_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1A), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x01)) | ((intr_newdata_u8<<(0))&(0x01)))

                                                    ;
   com_rslt += bma2x2_write_reg(
   (0x1A),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1A), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x80)) | ((intr_newdata_u8<<(7))&(0x80)))

                                                    ;
   com_rslt += bma2x2_write_reg(
   (0x1A),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 4052 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr1_fifo_wm(u8 *intr1_fifo_wm_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1A), &data_u8, ((u8)1))


                                          ;
   *intr1_fifo_wm_u8 = ((data_u8 & (0x02)) >> (1))
                                             ;
  }
 return com_rslt;
}
# 4091 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr1_fifo_wm(u8 intr1_fifo_wm_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  if (intr1_fifo_wm_u8 <
  ((u8)2)) {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1A), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x02)) | ((intr1_fifo_wm_u8<<(1))&(0x02)))

                                                     ;
   com_rslt += bma2x2_write_reg(
   (0x1A),
   &data_u8, ((u8)1));
  } else {
  com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 4139 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr2_fifo_wm(u8 *intr2_fifo_wm_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1A), &data_u8, ((u8)1))


                                          ;
   *intr2_fifo_wm_u8 = ((data_u8 & (0x40)) >> (6))
                                             ;
  }
 return com_rslt;
}
# 4178 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr2_fifo_wm(u8 intr2_fifo_wm_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  if (intr2_fifo_wm_u8 <
  ((u8)2)) {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1A), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x40)) | ((intr2_fifo_wm_u8<<(6))&(0x40)))

                                                     ;
   com_rslt += bma2x2_write_reg(
   (0x1A),
   &data_u8, ((u8)1));
  } else {
  com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 4228 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr1_fifo_full(u8 *intr1_fifo_full_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1A), &data_u8, ((u8)1))


                                          ;
   *intr1_fifo_full_u8 = ((data_u8 & (0x04)) >> (2))
                                               ;
  }
 return com_rslt;
}
# 4269 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr1_fifo_full(u8 intr1_fifo_full_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  if (intr1_fifo_full_u8 <
  ((u8)2)) {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1A), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x04)) | ((intr1_fifo_full_u8<<(2))&(0x04)))

                      ;
   com_rslt += bma2x2_write_reg(
   (0x1A),
   &data_u8, ((u8)1));
   } else {
   com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 4320 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr2_fifo_full(u8 *intr2_fifo_full_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1A), &data_u8, ((u8)1))


                                          ;
   *intr2_fifo_full_u8 = ((data_u8 & (0x20)) >> (5))
                                               ;
  }
 return com_rslt;
}
# 4362 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr2_fifo_full(u8 intr2_fifo_full_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  if (intr2_fifo_full_u8 <
  ((u8)2)) {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1A), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x20)) | ((intr2_fifo_full_u8<<(5))&(0x20)))


                      ;
   com_rslt += bma2x2_write_reg(
   (0x1A),
   &data_u8, ((u8)1));
   } else {
   com_rslt = ((s8)-2);
   }
  }
 return com_rslt;
}
# 4422 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_source(u8 channel_u8,
u8 *intr_source_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {
  return ((s8)-127);
  } else {

  switch (channel_u8) {
  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1E), &data_u8, ((u8)1))


                                          ;
   *intr_source_u8 = ((data_u8 & (0x01)) >> (0))
                                             ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1E), &data_u8, ((u8)1))


                                          ;
   *intr_source_u8 = ((data_u8 & (0x02)) >> (1))
                                              ;
  break;
  case (2):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1E), &data_u8, ((u8)1))


                                          ;
   *intr_source_u8 = ((data_u8 & (0x04)) >> (2))
                                             ;
  break;
  case (3):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1E), &data_u8, ((u8)1))


                                          ;
   *intr_source_u8 = ((data_u8 & (0x08)) >> (3))
                                                      ;
  break;
  case (4):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1E), &data_u8, ((u8)1))


                                          ;
   *intr_source_u8 = ((data_u8 & (0x10)) >> (4))
                                           ;
  break;
  case (5):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1E), &data_u8, ((u8)1))


                                          ;
   *intr_source_u8 = ((data_u8 & (0x20)) >> (5))
                                            ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
   }
  }
 return com_rslt;
}
# 4519 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_source(u8 channel_u8,
u8 intr_source_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);
  if (p_bma2x2 == ((void *)0)) {
   com_rslt = ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1E), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x01)) | ((intr_source_u8<<(0))&(0x01)))

                                                   ;
   com_rslt += bma2x2_write_reg(
   (0x1E),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1E), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x02)) | ((intr_source_u8<<(1))&(0x02)))

                                                    ;
   com_rslt += bma2x2_write_reg(
   (0x1E),
   &data_u8, ((u8)1));
  break;
  case (2):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1E), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x04)) | ((intr_source_u8<<(2))&(0x04)))

                                                   ;
   com_rslt += bma2x2_write_reg(
   (0x1E),
   &data_u8, ((u8)1));
  break;
  case (3):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1E), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x08)) | ((intr_source_u8<<(3))&(0x08)))


                  ;
   com_rslt += bma2x2_write_reg(
   (0x1E),
   &data_u8, ((u8)1));
  break;
  case (4):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1E), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x10)) | ((intr_source_u8<<(4))&(0x10)))

                  ;
   com_rslt += bma2x2_write_reg(
   (0x1E),
   &data_u8, ((u8)1));
  break;
  case (5):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x1E), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x20)) | ((intr_source_u8<<(5))&(0x20)))

                  ;
   com_rslt += bma2x2_write_reg(
   (0x1E),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 4637 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_output_type(u8 channel_u8,
u8 *intr_output_type_u8)
{
  u8 data_u8 = ((u8)0);


  s8 com_rslt = ((s8)-1);

  if (p_bma2x2 == ((void *)0)) {
   com_rslt = ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x20), &data_u8, ((u8)1))


                                          ;
   *intr_output_type_u8 = ((data_u8 & (0x02)) >> (1))
                                          ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x20), &data_u8, ((u8)1))


                                          ;
   *intr_output_type_u8 = ((data_u8 & (0x08)) >> (3))
                                          ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 4699 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr_output_type(u8 channel_u8,
u8 intr_output_type_u8)
{
  u8 data_u8 = ((u8)0);


  s8 com_rslt = ((s8)-1);

  if (p_bma2x2 == ((void *)0)) {
   com_rslt = ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x20), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x02)) | ((intr_output_type_u8<<(1))&(0x02)))

                                                     ;
   com_rslt += bma2x2_write_reg(
   (0x20),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x20), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x08)) | ((intr_output_type_u8<<(3))&(0x08)))

                                                     ;
   com_rslt += bma2x2_write_reg(
   (0x20),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 4768 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_intr_level(u8 channel_u8,
u8 *intr_level_u8)
{
  u8 data_u8 = ((u8)0);


  s8 com_rslt = ((s8)-1);

  if (p_bma2x2 == ((void *)0)) {
   com_rslt = ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x20), &data_u8, ((u8)1))


                                          ;
   *intr_level_u8 = ((data_u8 & (0x01)) >> (0))
                                           ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x20), &data_u8, ((u8)1))


                                          ;
   *intr_level_u8 = ((data_u8 & (0x04)) >> (2))
                                           ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 4829 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_intr_level(u8 channel_u8,
u8 intr_level_u8)
{
  u8 data_u8 = ((u8)0);


  s8 com_rslt = ((s8)-1);

  if (p_bma2x2 == ((void *)0)) {
   com_rslt = ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x20), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x01)) | ((intr_level_u8<<(0))&(0x01)))

                                                ;
   com_rslt += bma2x2_write_reg(
   (0x20),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x20), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x04)) | ((intr_level_u8<<(2))&(0x04)))

                                                ;
   com_rslt += bma2x2_write_reg(
   (0x20),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 4892 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_rst_intr(u8 rst_intr_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x21), &data_u8, ((u8)1))

                                          ;
   data_u8 = ((data_u8 & ~(0x80)) | ((rst_intr_u8<<(7))&(0x80)))
                                            ;
   com_rslt += bma2x2_write_reg((0x21),
   &data_u8, ((u8)1));
  }
 return com_rslt;
}
# 4945 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_latch_intr(u8 *latch_intr_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x21), &data_u8, ((u8)1))

                                          ;
   *latch_intr_u8 = ((data_u8 & (0x0F)) >> (0))
                               ;
  }
 return com_rslt;
}
# 4997 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_latch_intr(u8 latch_intr_u8)
{
u8 data_u8 = ((u8)0);


s8 com_rslt = ((s8)-1);
u8 latch_durn_u8 = ((u8)0);
if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  if (latch_intr_u8 < ((u8)16)) {
   switch (latch_intr_u8) {
   case (0x00):
    latch_durn_u8 = (0x00);


   break;
   case (0x01):
    latch_durn_u8 = (0x01);


   break;
   case (0x02):
    latch_durn_u8 = (0x02);


   break;
   case (0x03):
    latch_durn_u8 = (0x03);


   break;
   case (0x04):
    latch_durn_u8 = (0x04);


   break;
   case (0x05):
    latch_durn_u8 = (0x05);


   break;
   case (0x06):
    latch_durn_u8 = (0x06);


   break;
   case (0x07):
    latch_durn_u8 = (0x07);


   break;
   case (0x08):
    latch_durn_u8 = (0x08);


   break;
   case (0x09):
    latch_durn_u8 = (0x09);


   break;
   case (0x0A):
    latch_durn_u8 = (0x0A);


   break;
   case (0x0B):
    latch_durn_u8 = (0x0B);


   break;
   case (0x0C):
    latch_durn_u8 = (0x0C);


   break;
   case (0x0D):
    latch_durn_u8 = (0x0D);


   break;
   case (0x0E):
    latch_durn_u8 = (0x0E);


   break;
   case (0x0F):
    latch_durn_u8 = (0x0F);


   break;
   default:
   break;
   }

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x21), &data_u8, ((u8)1))

                                          ;
   data_u8 = ((data_u8 & ~(0x0F)) | ((latch_durn_u8<<(0))&(0x0F)))
                                              ;
   com_rslt += bma2x2_write_reg((0x21),
   &data_u8, ((u8)1));
  } else {
  com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 5146 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_durn(u8 channel_u8,
u8 *durn_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

  switch (channel_u8) {
  case (0):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x22), &data_u8, ((u8)1))

                                          ;
   *durn_u8 = data_u8;
  break;
  case (1):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x25), &data_u8, ((u8)1))

                                          ;
   *durn_u8 = data_u8;
  break;
  case (2):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x27), &data_u8, ((u8)1))

                                          ;
   *durn_u8 = ((data_u8 & (0x03)) >> (0))
                               ;
  break;
  case (3):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x27), &data_u8, ((u8)1))


                                          ;
   *durn_u8 = ((data_u8 & (0xFC)) >> (2))
                                        ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 5237 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_durn(u8 channel_u8,
u8 durn_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

  switch (channel_u8) {
  case (0):

   data_u8 = durn_u8;
   com_rslt = bma2x2_write_reg((0x22),
   &data_u8, ((u8)1));
  break;
  case (1):

   data_u8 = durn_u8;
   com_rslt = bma2x2_write_reg(
   (0x25),
   &data_u8, ((u8)1));
  break;
  case (2):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x27), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x03)) | ((durn_u8<<(0))&(0x03)))
                                        ;
   com_rslt += bma2x2_write_reg(
   (0x27),
   &data_u8, ((u8)1));
  break;
  case (3):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x27), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0xFC)) | ((durn_u8<<(2))&(0xFC)))
                                                 ;
   com_rslt += bma2x2_write_reg(
   (0x27),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 5355 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_thres(u8 channel_u8,
u8 *thres_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x23), &data_u8, ((u8)1))

                                          ;
   *thres_u8 = data_u8;
  break;
  case (1):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x26), &data_u8, ((u8)1))


                                          ;
   *thres_u8 = data_u8;
  break;
  case (2):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x28), &data_u8, ((u8)1))


                                          ;
   *thres_u8 = data_u8;
  break;
  case (3):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x29), &data_u8, ((u8)1))


                                          ;
   *thres_u8 = data_u8;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 5467 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_thres(u8 channel_u8,
u8 thres_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):

   data_u8 = thres_u8;
   com_rslt = bma2x2_write_reg(
   (0x23), &data_u8,
   ((u8)1));
  break;
  case (1):

   data_u8 = thres_u8;
   com_rslt = bma2x2_write_reg(
   (0x26), &data_u8,
   ((u8)1));
  break;
  case (2):

   data_u8 = thres_u8;
   com_rslt = bma2x2_write_reg(
   (0x28), &data_u8,
   ((u8)1));
  break;
  case (3):

   data_u8 = thres_u8;
   com_rslt = bma2x2_write_reg(
   (0x29),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 5548 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_low_high_g_hyst(u8 channel_u8,
u8 *hyst_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x24), &data_u8, ((u8)1))


                                          ;
   *hyst_u8 = ((data_u8 & (0x03)) >> (0))
                               ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x24), &data_u8, ((u8)1))


                                          ;
   *hyst_u8 = ((data_u8 & (0xC0)) >> (6))
                                ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 5617 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_low_high_g_hyst(u8 channel_u8,
u8 hyst_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x24), &data_u8, ((u8)1))

                                          ;
   data_u8 = ((data_u8 & ~(0x03)) | ((hyst_u8<<(0))&(0x03)))
                                        ;
   com_rslt += bma2x2_write_reg(
   (0x24),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x24), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0xC0)) | ((hyst_u8<<(6))&(0xC0)))
                                         ;
   com_rslt += bma2x2_write_reg(
   (0x24),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 5677 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_low_g_mode(u8 *low_g_mode_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x24), &data_u8, ((u8)1))

                                          ;
   *low_g_mode_u8 = ((data_u8 & (0x04)) >> (2))
                          ;
  }
 return com_rslt;
}
# 5715 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_low_g_mode(u8 low_g_mode_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x24), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0x04)) | ((low_g_mode_u8<<(2))&(0x04)))
                                                   ;
   com_rslt += bma2x2_write_reg(
   (0x24),
   &data_u8, ((u8)1));
  }
 return com_rslt;
}
# 5764 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_tap_durn(u8 *tap_durn_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2A), &data_u8, ((u8)1))


                                ;
   *tap_durn_u8 = ((data_u8 & (0x07)) >> (0))
                             ;
  }
 return com_rslt;
}
# 5810 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_tap_durn(u8 tap_durn_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2A), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0x07)) | ((tap_durn_u8<<(0))&(0x07)))
                                          ;
   com_rslt += bma2x2_write_reg(
   (0x2A), &data_u8,
   ((u8)1));
  }
 return com_rslt;
}
# 5853 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_tap_shock(u8 *tap_shock_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2A), &data_u8, ((u8)1))


                                          ;
   *tap_shock_u8 = ((data_u8 & (0x40)) >> (6))
                         ;
  }
 return com_rslt;
}
# 5893 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_tap_shock(u8 tap_shock_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2A), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0x40)) | ((tap_shock_u8<<(6))&(0x40)))
                                       ;
   com_rslt += bma2x2_write_reg(
   (0x2A), &data_u8,
   ((u8)1));
  }
 return com_rslt;
}
# 5935 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_tap_quiet(u8 *tap_quiet_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2A), &data_u8, ((u8)1))


                                ;
   *tap_quiet_u8 = ((data_u8 & (0x80)) >> (7))
                                   ;
  }
 return com_rslt;
}
# 5974 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_tap_quiet(u8 tap_quiet_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2A), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x80)) | ((tap_quiet_u8<<(7))&(0x80)))
                                       ;
   com_rslt += bma2x2_write_reg(
   (0x2A),
   &data_u8, ((u8)1));
  }
 return com_rslt;
}
# 6021 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_tap_thres(u8 *tap_thres_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2B), &data_u8, ((u8)1))


                                          ;
   *tap_thres_u8 = ((data_u8 & (0x1F)) >> (0))
                              ;
  }
 return com_rslt;
}
# 6064 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_tap_thres(u8 tap_thres_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2B), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0x1F)) | ((tap_thres_u8<<(0))&(0x1F)))
                                            ;
   com_rslt += bma2x2_write_reg(
   (0x2B), &data_u8,
   ((u8)1));
  }
 return com_rslt;
}
# 6108 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_tap_sample(u8 *tap_sample_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2B), &data_u8, ((u8)1))


                                ;
   *tap_sample_u8 = ((data_u8 & (0xC0)) >> (6))
                                ;
  }
 return com_rslt;
}
# 6150 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_tap_sample(u8 tap_sample_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2B), &data_u8, ((u8)1))

                                          ;
   data_u8 = ((data_u8 & ~(0xC0)) | ((tap_sample_u8<<(6))&(0xC0)))
                                               ;
   com_rslt += bma2x2_write_reg(
   (0x2B), &data_u8,
   ((u8)1));
  }
 return com_rslt;
}
# 6195 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_orient_mode(u8 *orient_mode_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2C), &data_u8, ((u8)1))


                                ;
   *orient_mode_u8 = ((data_u8 & (0x03)) >> (0))
                               ;
  }
 return com_rslt;
}
# 6237 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_orient_mode(u8 orient_mode_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2C), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0x03)) | ((orient_mode_u8<<(0))&(0x03)))
                                      ;
   com_rslt += bma2x2_write_reg(
   (0x2C), &data_u8,
   ((u8)1));
  }
 return com_rslt;
}
# 6287 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_orient_block(
u8 *orient_block_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2C), &data_u8, ((u8)1))


                                ;
   *orient_block_u8 = ((data_u8 & (0x0C)) >> (2))
                                 ;
  }
 return com_rslt;
}
# 6336 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_orient_block(u8 orient_block_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2C), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0x0C)) | ((orient_block_u8<<(2))&(0x0C)))
                                                  ;
   com_rslt += bma2x2_write_reg(
   (0x2C), &data_u8,
   ((u8)1));
  }
 return com_rslt;
}
# 6376 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_orient_hyst(u8 *orient_hyst_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2C), &data_u8, ((u8)1))


                                ;
   *orient_hyst_u8 = ((data_u8 & (0x70)) >> (4))
                                ;
  }
 return com_rslt;
}
# 6413 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_orient_hyst(u8 orient_hyst_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2C), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0x70)) | ((orient_hyst_u8<<(4))&(0x70)))
                                      ;
   com_rslt += bma2x2_write_reg(
   (0x2C),
   &data_u8, ((u8)1));
  }
 return com_rslt;
}
# 6461 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_theta(u8 channel_u8,
u8 *theta_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2D), &data_u8, ((u8)1))


                                ;
   *theta_u8 = ((data_u8 & (0x3F)) >> (0))
                                ;
  break;
  case (1):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2E), &data_u8, ((u8)1))


                                          ;
   *theta_u8 = data_u8;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 6523 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_theta(u8 channel_u8,
u8 theta_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {

  case (0):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2D), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0x3F)) | ((theta_u8<<(0))&(0x3F)))
                                ;
   com_rslt += bma2x2_write_reg(
   (0x2D),
   &data_u8, ((u8)1));
  break;
  case (1):

   data_u8 = theta_u8;
   com_rslt = bma2x2_write_reg(
   (0x2E),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 6582 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_orient_enable(u8 *orient_enable_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2D), &data_u8, ((u8)1))


                                          ;
   *orient_enable_u8 = ((data_u8 & (0x40)) >> (6))
                                     ;
  }
 return com_rslt;
}
# 6621 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_orient_enable(u8 orient_enable_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2D), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x40)) | ((orient_enable_u8<<(6))&(0x40)))
                                             ;
   com_rslt += bma2x2_write_reg(
   (0x2D),
   &data_u8, ((u8)1));
  }
 return com_rslt;
}
# 6662 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_flat_hyst(u8 *flat_hyst_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2F), &data_u8, ((u8)1))


                                ;
   *flat_hyst_u8 = ((data_u8 & (0x07)) >> (0))
                              ;
  }
 return com_rslt;
}
# 6700 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_flat_hyst(u8 flat_hyst_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2F), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x07)) | ((flat_hyst_u8<<(0))&(0x07)))
                                            ;
   com_rslt += bma2x2_write_reg(
   (0x2F), &data_u8,
   ((u8)1));
  }
 return com_rslt;
}
# 6745 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_flat_hold_time(
u8 *flat_hold_time_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2F), &data_u8, ((u8)1))


                                          ;
   *flat_hold_time_u8 = ((data_u8 & (0x30)) >> (4))
                                   ;
  }
 return com_rslt;
}
# 6789 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_flat_hold_time(
u8 flat_hold_time_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x2F), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0x30)) | ((flat_hold_time_u8<<(4))&(0x30)))
                                                      ;
   com_rslt += bma2x2_write_reg(
   (0x2F), &data_u8,
   ((u8)1));
  }
 return com_rslt;
}
# 6831 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_fifo_wml_trig(
u8 *fifo_wml_trig)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x30), &data_u8, ((u8)1))


                                          ;
   *fifo_wml_trig = ((data_u8 & (0x3F)) >> (0))
                                         ;
  }
 return com_rslt;
}
# 6870 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_fifo_wml_trig(
u8 fifo_wml_trig)
{
 u8 data_u8 = ((u8)0);
 u8 power_mode = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  if (fifo_wml_trig < ((u8)32)) {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x30), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x3F)) | ((fifo_wml_trig<<(0))&(0x3F)))

                 ;
   com_rslt += bma2x2_get_power_mode(&power_mode);
   com_rslt += bma2x2_set_power_mode((5));
   com_rslt += bma2x2_write_reg(
   (0x30),
   &data_u8, ((u8)1));
   com_rslt += bma2x2_set_power_mode(power_mode);
  } else {
  com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 6925 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_selftest_axis(
u8 *selftest_axis_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x32), &data_u8, ((u8)1))


                                          ;
   *selftest_axis_u8 = ((data_u8 & (0x03)) >> (0))
                                    ;
  }
 return com_rslt;
}
# 6968 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_selftest_axis(
u8 selftest_axis_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  if (selftest_axis_u8 < ((u8)4)) {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x32), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x03)) | ((selftest_axis_u8<<(0))&(0x03)))
                                                      ;
   com_rslt += bma2x2_write_reg(
   (0x32),
   &data_u8, ((u8)1));
   } else {
  com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 7016 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_selftest_sign(
u8 *selftest_sign_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x32), &data_u8, ((u8)1))


                                          ;
   *selftest_sign_u8 = ((data_u8 & (0x04)) >> (2))
                                 ;
  }
 return com_rslt;
}
# 7057 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_selftest_sign(
u8 selftest_sign_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  if (selftest_sign_u8 <
  ((u8)2)) {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x32), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x04)) | ((selftest_sign_u8<<(2))&(0x04)))
                                                   ;
   com_rslt += bma2x2_write_reg(
   (0x32),
   &data_u8, ((u8)1));
  } else {
  com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 7104 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_nvmprog_mode(
u8 *nvmprog_mode_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {
  com_rslt = ((s8)-127);
 } else {

  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x33), &data_u8, ((u8)1))


                                         ;
  *nvmprog_mode_u8 = ((data_u8 & (0x01)) >> (0))
                                       ;
 }
 return com_rslt;
}
# 7142 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_nvmprog_mode(u8 nvmprog_mode_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  com_rslt = ((s8)-127);
 } else {

  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x33), &data_u8, ((u8)1))


                                         ;
  data_u8 = ((data_u8 & ~(0x01)) | ((nvmprog_mode_u8<<(0))&(0x01)))
                                                        ;
  com_rslt += bma2x2_write_reg
  ((0x33),
  &data_u8, ((u8)1));
 }
 return com_rslt;
}
# 7186 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_nvprog_trig(u8 nvprog_trig_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  com_rslt = ((s8)-127);
 } else {

  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x33), &data_u8, ((u8)1))


                                         ;
  data_u8 = ((data_u8 & ~(0x02)) | ((nvprog_trig_u8<<(1))&(0x02)))
                                                      ;
  com_rslt += bma2x2_write_reg
  ((0x33),
  &data_u8, ((u8)1));
 }
 return com_rslt;
}
# 7229 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_nvmprog_ready(u8 *nvprog_ready_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  com_rslt = ((s8)-127);
 } else {

  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x33), &data_u8, ((u8)1))


                                         ;
  *nvprog_ready_u8 = ((data_u8 & (0x04)) >> (2))
                                 ;
 }
 return com_rslt;
}
# 7269 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_nvmprog_remain(u8 *nvprog_remain_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (((void *)0) == p_bma2x2) {
  com_rslt = ((s8)-127);
 } else {

  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x33), &data_u8, ((u8)1))


                               ;
  *nvprog_remain_u8 = ((data_u8 & (0xF0)) >> (4))
                             ;
 }
 return com_rslt;
}
# 7309 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_spi3(u8 *spi3_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x34), &data_u8, ((u8)1))


                                          ;
   *spi3_u8 = ((data_u8 & (0x01)) >> (0))
                                      ;
  }
 return com_rslt;
}
# 7350 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_spi3(u8 spi3_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x34), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x01)) | ((spi3_u8<<(0))&(0x01)))
                                               ;
   com_rslt += bma2x2_write_reg(
   (0x34),
   &data_u8, ((u8)1));
  }
 return com_rslt;
}
# 7405 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_i2c_wdt(u8 channel_u8,
u8 *i2c_wdt_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {
  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x34), &data_u8, ((u8)1))


                                          ;
   *i2c_wdt_u8 = ((data_u8 & (0x02)) >> (1))
                         ;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x34), &data_u8, ((u8)1))


                                          ;
   *i2c_wdt_u8 = ((data_u8 & (0x04)) >> (2))
                                   ;
  break;
  default:
  com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 7472 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_i2c_wdt(u8 channel_u8,
u8 i2c_wdt_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {
  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x34), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x02)) | ((i2c_wdt_u8<<(1))&(0x02)))

                                     ;
   com_rslt += bma2x2_write_reg(
   (0x34),
   &data_u8, ((u8)1));
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x34), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x04)) | ((i2c_wdt_u8<<(2))&(0x04)))

                                     ;
   com_rslt += bma2x2_write_reg(
   (0x34),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 7545 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_slow_comp(u8 channel_u8,
u8 *slow_comp_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {
  case (0):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x36), &data_u8, ((u8)1))


                                          ;
   *slow_comp_u8 = ((data_u8 & (0x01)) >> (0))
                                       ;
  break;
  case (1):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x36), &data_u8, ((u8)1))


                                          ;
   *slow_comp_u8 = ((data_u8 & (0x02)) >> (1))
                                       ;
  break;
  case (2):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x36), &data_u8, ((u8)1))


                                          ;
   *slow_comp_u8 = ((data_u8 & (0x04)) >> (2))
                                       ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 7621 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_slow_comp(u8 channel_u8,
u8 slow_comp_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {
  case (0):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x36), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x01)) | ((slow_comp_u8<<(0))&(0x01)))

                                           ;
   com_rslt += bma2x2_write_reg(
   (0x36),
   &data_u8, ((u8)1));
  break;
  case (1):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x36), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x02)) | ((slow_comp_u8<<(1))&(0x02)))

                                           ;
   com_rslt += bma2x2_write_reg(
   (0x36),
   &data_u8, ((u8)1));
  break;
  case (2):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x36), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x04)) | ((slow_comp_u8<<(2))&(0x04)))

                                           ;
   com_rslt += bma2x2_write_reg(
   (0x36),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 7698 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_cal_rdy(u8 *cal_rdy_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x36), &data_u8, ((u8)1))


                                         ;
  *cal_rdy_u8 = ((data_u8 & (0x10)) >> (4))
                           ;
 }
 return com_rslt;
}
# 7736 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_cal_trigger(u8 cal_trigger_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x36), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0x60)) | ((cal_trigger_u8<<(5))&(0x60)))
                                      ;
   com_rslt += bma2x2_write_reg(
   (0x36),
   &data_u8, ((u8)1));
  }
 return com_rslt;
}
# 7776 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_offset_rst(u8 offset_rst_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x36), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x80)) | ((offset_rst_u8<<(7))&(0x80)))

                 ;
   com_rslt += bma2x2_write_reg(
   (0x36),
   &data_u8, ((u8)1));
  }
 return com_rslt;
}
# 7838 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_offset_target(u8 channel_u8,
u8 *offset_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {
  case (0):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x37), &data_u8, ((u8)1))


                                ;
   *offset_u8 = ((data_u8 & (0x01)) >> (0))
                      ;
  break;
  case (1):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x37), &data_u8, ((u8)1))


                                          ;
   *offset_u8 = ((data_u8 & (0x06)) >> (1))
                               ;
  break;
  case (2):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x37), &data_u8, ((u8)1))


                                          ;
   *offset_u8 = ((data_u8 & (0x18)) >> (3))
                               ;
  break;
  case (3):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x37), &data_u8, ((u8)1))


                                          ;
   *offset_u8 = ((data_u8 & (0x60)) >> (5))
                                         ;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 7932 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_offset_target(u8 channel_u8,
u8 offset_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {
  case (0):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x37), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x01)) | ((offset_u8<<(0))&(0x01)))
                                           ;
   com_rslt += bma2x2_write_reg(
   (0x37),
   &data_u8, ((u8)1));
  break;
  case (1):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x37), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x06)) | ((offset_u8<<(1))&(0x06)))
                                                    ;
   com_rslt += bma2x2_write_reg(
   (0x37),
   &data_u8, ((u8)1));
  break;
  case (2):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x37), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x18)) | ((offset_u8<<(3))&(0x18)))
                                                    ;
   com_rslt += bma2x2_write_reg(
   (0x37),
   &data_u8, ((u8)1));
  break;
  case (3):

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x37), &data_u8, ((u8)1))


                                          ;
   data_u8 = ((data_u8 & ~(0x60)) | ((offset_u8<<(5))&(0x60)))
                                                    ;
   com_rslt += bma2x2_write_reg(
   (0x37),
   &data_u8, ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 8025 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_offset(u8 channel_u8,
s8 *offset_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {
  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x38), &data_u8, ((u8)1))


                                ;
   *offset_u8 = (s8)data_u8;
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x39), &data_u8, ((u8)1))


                                ;
   *offset_u8 = (s8)data_u8;
  break;
  case (2):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x3A), &data_u8, ((u8)1))


                                ;
   *offset_u8 = (s8)data_u8;
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 8091 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_offset(u8 channel_u8,
s8 offset_u8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (channel_u8) {
  case (0):
   data_u8 = offset_u8;
   com_rslt = bma2x2_write_reg(
   (0x38), &data_u8,
   ((u8)1));
  break;
  case (1):
   data_u8 = offset_u8;
   com_rslt = bma2x2_write_reg(
   (0x39), &data_u8,
   ((u8)1));
  break;
  case (2):
   data_u8 = offset_u8;
   com_rslt = bma2x2_write_reg(
   (0x3A), &data_u8,
   ((u8)1));
  break;
  default:
   com_rslt = ((s8)-2);
  break;
  }
 }
 return com_rslt;
}
# 8150 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_fifo_mode(u8 *fifo_mode_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x3E), &data_u8, ((u8)1))


                                ;
   *fifo_mode_u8 = ((data_u8 & (0xC0)) >> (6))
                    ;
  }
 return com_rslt;
}
# 8191 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_fifo_mode(u8 fifo_mode_u8)
{
 u8 data_u8 = ((u8)0);
 u8 power_mode = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  com_rslt = ((s8)-127);
 } else {
  if (fifo_mode_u8 < ((u8)4)) {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x3E), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0xC0)) | ((fifo_mode_u8<<(6))&(0xC0)))
                                  ;
   data_u8 |= 0x0C;

   com_rslt += bma2x2_get_power_mode(&power_mode);
   com_rslt += bma2x2_set_power_mode((5));

   com_rslt += bma2x2_write_reg(
   (0x3E),
   &data_u8, ((u8)1));
   if (com_rslt == ((u8)0)) {

    p_bma2x2->fifo_config = data_u8;
   }

   com_rslt += bma2x2_set_power_mode(power_mode);

  } else {
   com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 8252 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_fifo_data_select(
u8 *fifo_data_select_u8)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x3E), &data_u8, ((u8)1))


                                          ;
   *fifo_data_select_u8 = ((data_u8 & (0x03)) >> (0))
                           ;
  }
 return com_rslt;
}
# 8294 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_set_fifo_data_select(
u8 fifo_data_select_u8)
{
 u8 data_u8 = ((u8)0);
 u8 power_mode = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  com_rslt = ((s8)-127);
 } else {
  if (fifo_data_select_u8 < ((u8)4)) {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x3E), &data_u8, ((u8)1))


                                ;
   data_u8 = ((data_u8 & ~(0x03)) | ((fifo_data_select_u8<<(0))&(0x03)))

                                                ;
   data_u8 |= 0x0C;

   com_rslt += bma2x2_get_power_mode(&power_mode);
   com_rslt += bma2x2_set_power_mode((5));


   com_rslt += bma2x2_write_reg(
    (0x3E), &data_u8, 1);
   if (com_rslt == ((u8)0)) {

    p_bma2x2->fifo_config = data_u8;
   }

   com_rslt += bma2x2_set_power_mode(power_mode);
  } else {
   com_rslt = ((s8)-2);
  }
 }
 return com_rslt;
}
# 8360 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_read_fifo_data(
    struct fifo_configuration *fifo_conf)
{
 u8 fifo_frame_count = 0;
 u8 fifo_data_bytes = 0;
 u8 fifo_data_select = 0;


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0) || fifo_conf->fifo_data == ((void *)0)) {

  com_rslt = ((s8)-127);
 } else {

  fifo_conf->accel_byte_start_index = 0;

  com_rslt = bma2x2_get_fifo_frame_count(&fifo_frame_count);

  com_rslt += bma2x2_get_fifo_data_select(&fifo_data_select);

  if (fifo_data_select == (0x00)) {

   fifo_data_bytes = fifo_frame_count *
     ((u8)6);
  } else {

   fifo_data_bytes = fifo_frame_count *
     ((u8)2);
  }


  if (fifo_conf->fifo_length > fifo_data_bytes) {


   fifo_conf->fifo_length = fifo_data_bytes;
  }

  com_rslt += p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x3F), fifo_conf->fifo_data, fifo_conf->fifo_length)

                          ;
 }
 return com_rslt;
}
# 8431 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_extract_accel(union fifo_frame *accel_frame,
 u8 *accel_frame_count, struct fifo_configuration *fifo_conf)
{
 u8 data_index = 0;
 u8 accel_index = 0;
 u8 data_read_length = 0;
 u8 fifo_data_select = 0;

 s8 com_rslt = 0;

 if (p_bma2x2 == ((void *)0) || fifo_conf->fifo_data == ((void *)0)) {


  com_rslt = ((s8)-127);
 } else {

  fifo_data_select = p_bma2x2->fifo_config &
      (0x03);


  get_accel_len_to_parse(&data_index, &data_read_length,
   *accel_frame_count, fifo_data_select, fifo_conf);


  for (; data_index < data_read_length; ) {
   unpack_accel_frame(accel_frame, &data_index,
    &accel_index, fifo_data_select, fifo_conf);
  }

  *accel_frame_count = accel_index;

  fifo_conf->accel_byte_start_index = data_index;
 }
 return com_rslt;
}





static void get_accel_len_to_parse(u8 *data_index, u8 *data_read_length,
 u8 accel_frame_count, u8 fifo_data_select,
 struct fifo_configuration *fifo_conf)
{

 *data_index = fifo_conf->accel_byte_start_index;

 if (fifo_data_select == (0x00)) {

  *data_read_length = accel_frame_count *
     ((u8)6);
 } else {

  *data_read_length = accel_frame_count *
     ((u8)2);
 }
 if ((*data_read_length) > fifo_conf->fifo_length) {


  *data_read_length = fifo_conf->fifo_length;
 }
}
# 8506 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
static void unpack_accel_frame(union fifo_frame *accel_frame, u8 *data_index,
 u8 *accel_index, u8 fifo_data_select,
 struct fifo_configuration *fifo_conf)
{
 u16 data_lsb = 0;
 u16 data_msb = 0;

 switch (fifo_data_select) {

 case (0x00):
  unpack_accel_xyz(&accel_frame[*accel_index], data_index,
        fifo_conf);

  (*accel_index)++;
 break;

 case (0x01):

  data_lsb = fifo_conf->fifo_data[(*data_index)++];
  data_msb = fifo_conf->fifo_data[(*data_index)++];
  accel_frame[*accel_index].x = (u16)((data_msb << 8) | data_lsb);


  if (V_BMA2x2RESOLUTION_U8 == (0)) {
   accel_frame[*accel_index].x =
     (accel_frame[*accel_index].x >> 4);
  } else if (V_BMA2x2RESOLUTION_U8 == (2)) {
   accel_frame[*accel_index].x =
     (accel_frame[*accel_index].x >> 2);
  } else if (V_BMA2x2RESOLUTION_U8 == (1)) {
   accel_frame[*accel_index].x =
     (accel_frame[*accel_index].x >> 6);
  }

  (*accel_index)++;
 break;

 case (0x02):

  data_lsb = fifo_conf->fifo_data[(*data_index)++];
  data_msb = fifo_conf->fifo_data[(*data_index)++];
  accel_frame[*accel_index].y = (u16)((data_msb << 8) | data_lsb);


  if (V_BMA2x2RESOLUTION_U8 == (0)) {
   accel_frame[*accel_index].y =
     (accel_frame[*accel_index].y >> 4);
  } else if (V_BMA2x2RESOLUTION_U8 == (2)) {
   accel_frame[*accel_index].y =
     (accel_frame[*accel_index].y >> 2);
  } else if (V_BMA2x2RESOLUTION_U8 == (1)) {
   accel_frame[*accel_index].y =
     (accel_frame[*accel_index].y >> 6);
  }

  (*accel_index)++;
 break;

 case (0x03):

  data_lsb = fifo_conf->fifo_data[(*data_index)++];
  data_msb = fifo_conf->fifo_data[(*data_index)++];
  accel_frame[*accel_index].z = (u16)((data_msb << 8) | data_lsb);


  if (V_BMA2x2RESOLUTION_U8 == (0)) {
   accel_frame[*accel_index].z =
     (accel_frame[*accel_index].z >> 4);
  } else if (V_BMA2x2RESOLUTION_U8 == (2)) {
   accel_frame[*accel_index].z =
     (accel_frame[*accel_index].z >> 2);
  } else if (V_BMA2x2RESOLUTION_U8 == (1)) {
   accel_frame[*accel_index].z =
     (accel_frame[*accel_index].z >> 6);
  }

  (*accel_index)++;
 break;

 default:
 break;
 }
}
# 8597 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
static void unpack_accel_xyz(union fifo_frame *accel_frame, u8 *data_index,
 struct fifo_configuration *fifo_conf)
{
 u16 data_lsb = 0;
 u16 data_msb = 0;


 data_lsb = fifo_conf->fifo_data[(*data_index)++];
 data_msb = fifo_conf->fifo_data[(*data_index)++];
 accel_frame->accel_data.x = (u16)((data_msb << 8) | data_lsb);


 data_lsb = fifo_conf->fifo_data[(*data_index)++];
 data_msb = fifo_conf->fifo_data[(*data_index)++];
 accel_frame->accel_data.y = (u16)((data_msb << 8) | data_lsb);


 data_lsb = fifo_conf->fifo_data[(*data_index)++];
 data_msb = fifo_conf->fifo_data[(*data_index)++];
 accel_frame->accel_data.z = (u16)((data_msb << 8) | data_lsb);


 if (V_BMA2x2RESOLUTION_U8 == (0)) {
  accel_frame->accel_data.x = (accel_frame->accel_data.x >> 4);
  accel_frame->accel_data.y = (accel_frame->accel_data.y >> 4);
  accel_frame->accel_data.z = (accel_frame->accel_data.z >> 4);
 } else if (V_BMA2x2RESOLUTION_U8 == (2)) {
  accel_frame->accel_data.x = (accel_frame->accel_data.x >> 2);
  accel_frame->accel_data.y = (accel_frame->accel_data.y >> 2);
  accel_frame->accel_data.z = (accel_frame->accel_data.z >> 2);
 } else if (V_BMA2x2RESOLUTION_U8 == (1)) {
  accel_frame->accel_data.x = (accel_frame->accel_data.x >> 6);
  accel_frame->accel_data.y = (accel_frame->accel_data.y >> 6);
  accel_frame->accel_data.z = (accel_frame->accel_data.z >> 6);
 }
}
# 8650 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_read_temp(s8 *temp_s8)
{
 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x08), &data_u8, ((u8)1))


                                          ;
   *temp_s8 = (s8)data_u8;
  }
 return com_rslt;
}
# 8684 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_read_accel_xyzt(
struct bma2x2_accel_data_temp *accel)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8[(7)] = {
 ((u8)0), ((u8)0),
 ((u8)0), ((u8)0),
 ((u8)0), ((u8)0),
 ((u8)0)};
 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
  switch (V_BMA2x2RESOLUTION_U8) {
  case (0):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x02), data_u8, ((u8)7))

                                      ;


   accel->x = (s16)((((s32)((s8)
   data_u8[(1)]))
   << ((u8)8))|
   (data_u8[(0)]
   & (0xF0)));
   accel->x = accel->x >> ((u8)4);


   accel->y = (s16)((((s32)((s8)
   data_u8[(3)]))
   << ((u8)8))|
   (data_u8[(2)]
   & (0xF0)));
   accel->y = accel->y >> ((u8)4);


   accel->z = (s16)((((s32)((s8)
   data_u8[(5)]))
   << ((u8)8))|
   (data_u8[(4)]
   & (0xF0)));
   accel->z = accel->z >> ((u8)4);

   accel->temp = (s8)data_u8[(6)];
  break;
  case (1):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x02), data_u8, ((u8)7))

                                      ;


   accel->x = (s16)((((s32)((s8)
   data_u8[(1)]))<<
   ((u8)8))|
   (data_u8[(0)]
   & (0xC0)));
   accel->x = accel->x >> ((u8)6);


   accel->y = (s16)((((s32)((s8)
   data_u8[(3)]))<<
   ((u8)8))|
   (data_u8[(2)]
   & (0xC0)));
   accel->y = accel->y >> ((u8)6);


   accel->z = (s16)((((s32)((s8)
   data_u8[(5)]))<<
   ((u8)8))|
   (data_u8[(4)]
   & (0xC0)));
   accel->z = accel->z >> ((u8)6);



   accel->temp = (s8)data_u8[(6)];
  break;
  case (2):
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x02), data_u8, ((u8)7))

                                      ;


   accel->x = (s16)((((s32)((s8)
   data_u8[(1)]))<<
   ((u8)8))|
   (data_u8[(0)]
   & (0xFC)));
   accel->x = accel->x >> ((u8)2);


   accel->y = (s16)((((s32)((s8)
   data_u8[(3)]))<<
   ((u8)8))|
   (data_u8[(2)]
   & (0xFC)));
   accel->y = accel->y >> ((u8)2);


   accel->z = (s16)((((s32)((s8)
   data_u8[(5)]))<<
   ((u8)8))|
   (data_u8[(4)]
   & (0xFC)));
   accel->z = accel->z >> ((u8)2);


   accel->temp = (s8)data_u8[(6)];
  break;
  default:
  break;
  }
 }
 return com_rslt;
}
# 8817 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_read_accel_eight_resolution_xyzt(
struct bma2x2_accel_eight_resolution_temp *accel)
{


 s8 com_rslt = ((s8)-1);
 u8 data_u8 = ((u8)0);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {
   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x03), &data_u8, ((u8)1))


                                ;
   accel->x = ((data_u8 & (0xFF)) >> (0))
                      ;

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x05), &data_u8, ((u8)1))


                                ;
   accel->y = ((data_u8 & (0xFF)) >> (0))
                      ;

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x07), &data_u8, ((u8)1))


                                ;
   accel->z = ((data_u8 & (0xFF)) >> (0))
                      ;

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x08), &data_u8, ((u8)1))

                                ;
   accel->temp = (s8)data_u8;
  }
 return com_rslt;
}
# 8873 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.c"
s8 bma2x2_get_fifo_data_output_reg(
u8 *output_reg_u8)
{



 u8 data_u8 = ((u8)0);


 s8 com_rslt = ((s8)-1);

 if (p_bma2x2 == ((void *)0)) {

  return ((s8)-127);
  } else {

   com_rslt = p_bma2x2->bus_read(p_bma2x2->dev_addr, (0x3F), &data_u8, ((u8)1))


                                          ;
   *output_reg_u8 = data_u8;
  }
 return com_rslt;
}
