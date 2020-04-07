# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160_support.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\pca10040\\s132\\ses//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160_support.c"
# 55 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160_support.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h" 1
# 259 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
typedef signed char s8;
typedef signed short int s16;
typedef signed int s32;
typedef signed long long int s64;


typedef unsigned char u8;
typedef unsigned short int u16;
typedef unsigned int u32;
typedef unsigned long long int u64;
# 1684 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
struct bmg160_data_t {
 s16 datax;
 s16 datay;
 s16 dataz;
 char intstatus[5];
};




struct bmg160_offset_t {
 u16 datax;
 u16 datay;
 u16 dataz;
};




struct bmg160_t {
 u8 chip_id;
 u8 dev_addr;

 s8 (*burst_read)(u8, u8, u8 *, s32);
 s8 (*bus_write)(u8, u8, u8 *, u8);
 s8 (*bus_read)(u8, u8, u8 *, u8);
 void (*delay_msec)(u32);
};
# 1738 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_init(struct bmg160_t *bmg160);
# 1756 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_data_X(s16 *v_data_x_s16);
# 1771 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_data_Y(s16 *v_data_y_s16);
# 1784 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_data_Z(s16 *v_data_z_s16);
# 1799 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_data_XYZ(struct bmg160_data_t *data);
# 1813 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_data_XYZI(struct bmg160_data_t *data);
# 1830 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_temp(s8 *v_temp_s8);
# 1851 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_read_register(u8 v_addr_u8,
u8 *v_data_u8, u8 v_len_u8);
# 1870 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_burst_read(u8 v_addr_u8,
u8 *v_data_u8, u32 v_len_u32);
# 1889 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_write_register(u8 v_addr_u8,
u8 *v_data_u8, u8 v_len_u8);
# 1911 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr_stat_reg_zero(
u8 *v_stat0_data_u8);
# 1933 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr_stat_reg_one(
u8 *v_stat1_data_u8);
# 1957 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr_stat_reg_two(
u8 *v_stat2_data_u8);
# 1982 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr_stat_reg_three(
u8 *v_stat3_data_u8);
# 2010 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_range_reg(u8 *v_range_u8);
# 2034 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_range_reg(u8 v_range_u8);
# 2065 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_bw(u8 *v_bw_u8);
# 2093 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_bw(u8 v_bw_u8);
# 2119 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_pmu_ext_tri_select(
u8 *v_pwu_ext_tri_select_u8);
# 2143 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_pmu_ext_tri_select(
u8 v_pwu_ext_tri_select_u8);
# 2168 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_high_bw(u8 *v_high_bw_u8);
# 2189 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_high_bw(u8 v_high_bw_u8);
# 2213 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_shadow_dis(u8 *v_shadow_dis_u8);
# 2234 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_shadow_dis(u8 v_shadow_dis_u8);
# 2252 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_soft_rst(void);
# 2276 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_data_enable(u8 *v_data_enable_u8);
# 2297 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_data_enable(u8 v_data_enable_u8);
# 2321 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_fifo_enable(u8 *v_fifo_enable_u8);
# 2342 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_fifo_enable(u8 v_fifo_enable_u8);
# 2366 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_auto_offset_enable(
u8 *v_offset_enable_u8);
# 2388 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_auto_offset_enable(
u8 v_offset_enable_u8);
# 2419 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr_output_type(u8 v_param_u8,
u8 *v_intr_output_type_u8);
# 2447 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_intr_output_type(u8 v_param_u8,
u8 v_intr_output_type_u8);
# 2475 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr_level(u8 v_param_u8,
u8 *v_intr_level_u8);
# 2503 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_intr_level(u8 v_param_u8,
u8 v_intr_level_u8);
# 2528 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr1_highrate(u8 *v_intr1_u8);
# 2549 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_intr1_highrate(
u8 v_intr1_u8);
# 2574 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr1_any_motion(
u8 *v_int1r_any_motion_u8);
# 2596 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_intr1_any_motion(
u8 v_int1r_any_motion_u8);
# 2626 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr_data(u8 v_axis_u8,
u8 *v_intr_data_u8);
# 2653 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_intr_data(u8 v_axis_u8,
u8 v_intr_data_u8);
# 2683 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr2_offset(u8 v_axis_u8,
u8 *v_intr2_offset_u8);
# 2710 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_intr2_offset(u8 v_axis_u8,
u8 v_intr2_offset_u8);
# 2737 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr_offset(u8 v_axis_u8,
u8 *v_intr1_offset_u8);
# 2764 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_intr1_offset(u8 v_axis_u8,
u8 v_intr1_offset_u8);
# 2789 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr2_fifo(u8 *v_intr_fifo_u8);
# 2810 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr1_fifo(u8 *v_intr_fifo_u8);
# 2837 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_intr_fifo(u8 v_axis_u8,
u8 v_intr_fifo_u8);
# 2862 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr2_highrate(
u8 *v_intr2_highrate_u8);
# 2884 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_intr2_highrate(
u8 v_intr2_highrate_u8);
# 2909 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_intr2_any_motion(
u8 *v_intr2_any_motion_u8);
# 2931 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_intr2_any_motion(
u8 v_intr2_any_motion_u8);
# 2962 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_offset_unfilt(u8 v_param_u8,
u8 *v_offset_unfilt_u8);
# 2990 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_offset_unfilt(u8 v_param_u8,
u8 v_offset_unfilt_u8);
# 3017 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_unfilt_data(u8 v_param_u8,
u8 *v_unfilt_data_u8);
# 3044 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_unfilt_data(u8 v_param_u8,
u8 v_unfilt_data_u8);
# 3066 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_any_motion_thres(
u8 *v_any_motion_thres_u8);
# 3085 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_any_motion_thres(
u8 v_any_motion_thres_u8);
# 3107 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_awake_durn(u8 *v_awake_durn_u8);
# 3128 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_awake_durn(u8 v_awake_durn_u8);
# 3149 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_any_motion_durn_sample(
u8 *v_durn_sample_u8);
# 3171 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_any_motion_durn_sample(
u8 v_durn_sample_u8);
# 3199 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_any_motion_enable_axis(u8 v_channel_u8,
u8 *v_any_motion_axis_u8);
# 3227 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_any_motion_enable_axis(u8 v_channel_u8,
u8 v_any_motion_axis_u8);
# 3250 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_fifo_wm_enable(
u8 *v_fifo_wm_enable_u8);
# 3270 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_fifo_wm_enable(
u8 v_fifo_wm_enable_u8);
# 3292 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_rst_intr(u8 v_rst_int_u8);
# 3310 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_offset_rst(
u8 v_offset_rst_u8);
# 3335 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_latch_stat(
u8 *v_latch_stat_u8);
# 3357 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_latch_stat(
u8 v_latch_stat_u8);
# 3392 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_latch_intr(u8 *v_latch_intr_u8);
# 3426 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_latch_intr(u8 v_latch_intr_u8);
# 3455 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_highrate_hyst(u8 v_channel_u8,
u8 *v_highrate_hyst_u8);
# 3482 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_highrate_hyst(u8 v_channel_u8,
u8 v_highrate_hyst_u8);
# 3509 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_highrate_thres(u8 v_channel_u8,
u8 *v_highrate_thres_u8);
# 3536 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_highrate_thres(u8 v_channel_u8,
u8 v_highrate_thres_u8);
# 3564 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_highrate_enable_axis(u8 v_channel_u8,
u8 *v_enable_u8);
# 3592 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_highrate_enable_axis(u8 v_channel_u8,
u8 v_enable_u8);
# 3622 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_highrate_durn_axis(u8 v_channel_u8,
u8 *v_highrate_durn_axis_u8);
# 3652 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_highrate_durn_axis(u8 v_channel_u8,
u8 v_highrate_durn_axis_u8);
# 3678 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_slow_offset_thres(
u8 *v_offset_thres_u8);
# 3701 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_slow_offset_thres(u8 v_offset_thres_u8);
# 3726 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_slow_offset_durn(
u8 *v_offset_durn_u8);
# 3752 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_slow_offset_durn(
u8 v_offset_durn_u8);
# 3781 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_slow_offset_enable_axis(
u8 v_channel_u8, u8 *v_slow_offset_u8);
# 3810 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_slow_offset_enable_axis(
u8 v_channel_u8, u8 v_slow_offset_u8);
# 3839 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_offset_word_length(u8 v_channel_u8,
u8 *v_offset_word_length_u8);
# 3868 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_offset_word_length(
u8 v_channel_u8, u8 v_offset_word_length_u8);
# 3885 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_enable_fast_offset(void);
# 3909 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_fast_offset_enable_axis(
u8 *v_fast_offset_u8);
# 3940 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_fast_offset_enable_axis(
u8 v_channel_u8, u8 v_fast_offset_u8);
# 3962 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_nvm_remain(u8 *v_nvm_remain_u8);
# 3980 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_nvm_load(u8 v_nvm_load_u8);
# 3998 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_nvm_rdy(u8 *v_nvm_rdy_u8);
# 4016 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_nvm_prog_trig(u8 nvm_prog_trig);
# 4035 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_nvm_prog_mode(u8 *nvm_prog_mode);
# 4054 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_nvm_prog_mode(u8 nvm_prog_mode);
# 4083 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_i2c_wdt(u8 v_channel_u8,
u8 *v_i2c_wdt_u8);
# 4110 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_i2c_wdt(u8 v_channel_u8,
u8 v_i2c_wdt_u8);
# 4135 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_spi3(u8 *v_spi3_u8);
# 4156 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_spi3(u8 v_spi3_u8);
# 4178 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_fifo_tag(u8 *v_fifo_tag_u8);
# 4197 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_fifo_tag(u8 v_fifo_tag_u8);
# 4214 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_fifo_wm_level(
u8 *v_fifo_wm_level_u8);
# 4232 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_fifo_wm_level(
u8 v_fifo_wm_level_u8);
# 4271 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_offset(u8 v_axis_u8,
s16 *v_offset_s16);
# 4307 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_offset(
u8 v_axis_u8, s16 v_offset_s16);
# 4330 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_gp(u8 v_param_u8,
u8 *v_gp_u8);
# 4353 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_gp(u8 v_param_u8,
u8 v_gp_u8);
# 4375 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_FIFO_data_reg(u8 *v_fifo_data_u8);
# 4392 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_fifo_stat_reg(
u8 *v_fifo_stat_u8);
# 4408 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_fifo_frame_count(
u8 *v_fifo_frame_count_u8);
# 4424 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_fifo_overrun(
u8 *v_fifo_overrun_u8);
# 4447 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_fifo_mode(u8 *v_fifo_mode_u8);
# 4469 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_fifo_mode(u8 v_fifo_mode_u8);
# 4491 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_fifo_data_select(
u8 *v_fifo_data_select_u8);
# 4514 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_fifo_data_select(
u8 v_fifo_data_select_u8);
# 4541 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_power_mode(u8 *v_power_mode_u8);
# 4564 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_power_mode(u8 v_power_mode_u8);
# 4586 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_selftest(u8 *v_result_u8);
# 4614 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_auto_sleep_durn(u8 *v_durn_u8);
# 4653 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_auto_sleep_durn(u8 v_durn_u8,
u8 v_bw_u8);
# 4680 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_get_sleep_durn(u8 *v_durn_u8);
# 4706 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
s8 bmg160_set_sleep_durn(u8 v_durn_u8);
# 56 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160_support.c" 2
# 105 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160_support.c"
void BMG160_delay_msek(u32 msek);




s32 bmg160_data_readout_template(void);
# 121 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160_support.c"
struct bmg160_t bmg160;





s32 bmg160_data_readout_template(void)
{


 s16 v_gyro_datax_s16, v_gyro_datay_s16, v_gyro_dataz_s16 = ((u8)0);

 struct bmg160_data_t data_gyro;

 struct bmg160_data_t gyro_xyzi_data;

 u8 v_gyro_value_u8 = ((u8)0);

 u8 v_bw_u8 = ((u8)0);

 s32 com_rslt = ((s8)-1);
# 160 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160_support.c"
 com_rslt = bmg160_init(&bmg160);
# 177 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160_support.c"
 com_rslt += bmg160_set_power_mode((0));
# 187 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160_support.c"
 v_bw_u8 = (1);
 com_rslt += bmg160_set_bw(v_bw_u8);


 com_rslt += bmg160_get_bw(&v_gyro_value_u8);







 com_rslt += bmg160_get_data_X(&v_gyro_datax_s16);

 com_rslt += bmg160_get_data_Y(&v_gyro_datay_s16);

 com_rslt += bmg160_get_data_Z(&v_gyro_dataz_s16);


 com_rslt += bmg160_get_data_XYZ(&data_gyro);



 com_rslt += bmg160_get_data_XYZI(&gyro_xyzi_data);
# 227 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160_support.c"
 com_rslt += bmg160_set_power_mode((1));




return com_rslt;
}
