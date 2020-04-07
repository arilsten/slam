# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\pca10040\\s132\\ses//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
# 54 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
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
# 55 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c" 2
static struct bmg160_t *p_bmg160;
# 81 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_init(struct bmg160_t *bmg160)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 p_bmg160 = bmg160;

 comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x00),&v_data_u8, ((u8)1))
                                                                     ;
 p_bmg160->chip_id = v_data_u8;
 return comres;
}
# 108 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_data_X(s16 *v_data_x_s16)
{

 s8 comres = ((u8)0);




 u8 v_data_u8[(2)] = {
 ((u8)0), ((u8)0)};

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x02)),v_data_u8, ((u8)2))

                                  ;
  v_data_u8[(0)] = ((v_data_u8[(0)] & (0xFF)) >> (0))

                        ;
  *v_data_x_s16 = (s16)
  ((((s32)((s8)v_data_u8[(1)])) <<
  (8))
  | (v_data_u8[(0)]));
 }
 return comres;
}
# 150 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_data_Y(s16 *v_data_y_s16)
{

 s8 comres = ((s8)-1);




 u8 v_data_u8[(2)] = {
 ((u8)0), ((u8)0)};

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x04)),v_data_u8, ((u8)2))


                       ;
  v_data_u8[(0)] =
  ((v_data_u8[(0)] & (0xFF)) >> (0))
                        ;
  *v_data_y_s16 = (s16)
  ((((s32)((s8)v_data_u8[(1)]))
  << (8)) |
  (v_data_u8[(0)]));
 }
 return comres;
}
# 191 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_data_Z(s16 *v_data_z_s16)
{

 s8 comres = ((s8)-1);




 u8 v_data_u8[(2)] = {
 ((u8)0), ((u8)0)};

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x06)),v_data_u8, ((u8)2))

                                   ;
  v_data_u8[(0)] =
  ((v_data_u8[(0)] & (0xFF)) >> (0))
                        ;
  *v_data_z_s16 = (s16)
  ((((s32)((s8)v_data_u8[(1)]))
  << (8))
  | (v_data_u8[(0)]));
 }
 return comres;
}
# 232 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_data_XYZ(struct bmg160_data_t *data)
{

 s8 comres = ((s8)-1);
# 244 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
 u8 v_data_u8[(6)] = {
 ((u8)0), ((u8)0),
 ((u8)0), ((u8)0),
 ((u8)0), ((u8)0)};

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x02)),v_data_u8, ((u8)6))

                                ;

  v_data_u8[(0)] =
  ((v_data_u8[(0)] & (0xFF)) >> (0))
                        ;
  data->datax = (s16)
  ((((s32)((s8)v_data_u8[(1)]))
  << (8)) |
  (v_data_u8[(0)]));

  v_data_u8[(2)] =
  ((v_data_u8[(2)] & (0xFF)) >> (0))
                        ;
  data->datay = (s16)
  ((((s32)((s8)v_data_u8[(3)]))
  << (8)) |
  (v_data_u8[(2)]));

  v_data_u8[(4)] =
  ((v_data_u8[(4)] & (0xFF)) >> (0))
                        ;
  data->dataz = (s16)
  ((((s32)((s8)v_data_u8[(5)]))
  << (8)) |
  (v_data_u8[(4)]));
 }
 return comres;
}
# 295 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_data_XYZI(struct bmg160_data_t *data)
{

 s8 comres = ((s8)-1);
# 313 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
 u8 v_data_u8[(12)] = {
 ((u8)0), ((u8)0),
 ((u8)0), ((u8)0),
 ((u8)0), ((u8)0),
 ((u8)0), ((u8)0),
 ((u8)0), ((u8)0),
 ((u8)0), ((u8)0)};

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x02)),v_data_u8, ((u8)12))

                                   ;

  v_data_u8[(0)] =
  ((v_data_u8[(0)] & (0xFF)) >> (0))
                        ;
  data->datax = (s16)
  ((((s32)((s8)v_data_u8[(1)]))
  << (8)) |
  (v_data_u8[(0)]));

  v_data_u8[(2)] =
  ((v_data_u8[(2)] & (0xFF)) >> (0))
                        ;
  data->datay = (s16)
  ((((s32)((s8)v_data_u8[(3)]))
  << (8)) |
  (v_data_u8[(2)]));

  v_data_u8[(4)] =
  ((v_data_u8[(4)] & (0xFF)) >> (0))
                        ;
  data->dataz = (s16)
  ((((s32)((s8)v_data_u8[(5)]))
  << (8)) |
  (v_data_u8[(4)]));

  data->intstatus[(0)] =
  v_data_u8[(7)];
  data->intstatus[(1)] =
  v_data_u8[(8)];
  data->intstatus[(2)] =
  v_data_u8[(9)];
  data->intstatus[(3)] =
  v_data_u8[(10)];
  data->intstatus[(4)] =
  v_data_u8[(11)];
 }
 return comres;
}
# 378 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_temp(s8 *v_temp_s8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x08),&v_data_u8, ((u8)1))

                                    ;
  *v_temp_s8 = v_data_u8;
 }
 return comres;
}
# 412 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_read_register(u8 v_addr_u8,
u8 *v_data_u8, u8 v_len_u8)
{

 s8 comres = ((s8)-1);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_read(p_bmg160->dev_addr, v_addr_u8,v_data_u8, v_len_u8)
                                                      ;
 }
 return comres;
}
# 443 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_burst_read(u8 v_addr_u8,
u8 *v_data_u8, u32 v_len_u32)
{

 s8 comres = ((s8)-1);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->burst_read(p_bmg160->dev_addr, v_addr_u8, v_data_u8, v_len_u32)
                                  ;
 }
 return comres;
}
# 474 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_write_register(u8 v_addr_u8,
u8 *v_data_u8, u8 v_len_u8)
{

 s8 comres = ((s8)-1);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_write(p_bmg160->dev_addr, v_addr_u8,v_data_u8, v_len_u8)
                                                      ;
 }
 return comres;
}
# 505 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr_stat_reg_zero(
u8 *v_stat0_data_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x09)),&v_data_u8, ((u8)1))


                                    ;
  *v_stat0_data_u8 =
  ((v_data_u8 & (0x06)) >> (1));
 }
 return comres;
}
# 545 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr_stat_reg_one(
u8 *v_stat1_data_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x0A)),&v_data_u8, ((u8)1))

                                                ;
  *v_stat1_data_u8 =
  ((v_data_u8 & (0xF0)) >> (4));
 }
 return comres;
}
# 586 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr_stat_reg_two(
u8 *v_stat2_data_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x0B)),&v_data_u8, ((u8)1))


                                    ;
  *v_stat2_data_u8 =
  ((v_data_u8 & (0x0F)) >> (0));
 }
 return comres;
}
# 629 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr_stat_reg_three(
u8 *v_stat3_data_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x0C)),&v_data_u8, ((u8)1))


                                    ;
  *v_stat3_data_u8 =
  ((v_data_u8 & (0x0F)) >> (0));
 }
 return comres;
}
# 672 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_range_reg(u8 *v_range_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x0F)),&v_data_u8, ((u8)1))


                                    ;
  *v_range_u8 =
  ((v_data_u8 & (0x07)) >> (0));
 }
 return comres;
}
# 714 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_range_reg(u8 v_range_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  if (v_range_u8 < ((u8)5)) {

   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x0F)),&v_data_u8, ((u8)1))


                                     ;
   v_data_u8 = ((v_data_u8&~(0x07))|((v_range_u8<<(0))&(0x07)))

              ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x0F)),&v_data_u8, ((u8)1))


                                     ;
  } else {
   comres = ((s8)-2);
  }
 }
 return comres;
}
# 769 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_bw(u8 *v_bw_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x10)),&v_data_u8, ((u8)1))

                                                ;
  *v_bw_u8 = ((v_data_u8 & (0x07)) >> (0))
                  ;
 }
 return comres;
}
# 814 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_bw(u8 v_bw_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);
 u8 v_mode_u8r = ((u8)0);
 u8 v_auto_sleep_dur = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  if (v_bw_u8 < ((u8)8)) {
   comres = bmg160_get_power_mode(&v_mode_u8r);
   if (v_mode_u8r == (4)) {

    comres = bmg160_get_auto_sleep_durn(
    &v_auto_sleep_dur);
    comres = bmg160_set_auto_sleep_durn(
    v_auto_sleep_dur,
    v_bw_u8);
    }

    comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x10)),&v_data_u8, ((u8)1))


                                                  ;
    v_data_u8 = ((v_data_u8&~(0x07))|((v_bw_u8<<(0))&(0x07)))
                            ;
    comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x10)),&v_data_u8, ((u8)1))


                                                  ;
  } else {
   comres = ((s8)-2);
  }
 }
 return comres;
}
# 874 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_pmu_ext_tri_select(
u8 *v_pwu_ext_tri_select_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x12)),&v_data_u8, ((u8)1))

                                                ;
  *v_pwu_ext_tri_select_u8 = ((v_data_u8 & (0x30)) >> (4))
                                       ;
 }
 return comres;
}
# 915 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_pmu_ext_tri_select(
u8 v_pwu_ext_tri_select_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x12)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x30))|((v_pwu_ext_tri_select_u8<<(4))&(0x30)))
                                                                ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x12)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 957 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_high_bw(u8 *v_high_bw_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x13)),&v_data_u8, ((u8)1))

                                    ;
  *v_high_bw_u8 = ((v_data_u8 & (0x80)) >> (7))
                 ;
 }
 return comres;
}
# 995 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_high_bw(u8 v_high_bw_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  if (v_high_bw_u8 < ((u8)2)) {

   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x13)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x80))|((v_high_bw_u8<<(7))&(0x80)))
                                ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x13)),&v_data_u8, ((u8)1))


                                                 ;
  } else {
   comres = ((s8)-2);
  }
 }
 return comres;
}
# 1042 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_shadow_dis(u8 *v_shadow_dis_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x13)),&v_data_u8, ((u8)1))

                                    ;
  *v_shadow_dis_u8 = ((v_data_u8 & (0x40)) >> (6))
                    ;
 }
 return comres;
}
# 1080 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_shadow_dis(u8 v_shadow_dis_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  if (v_shadow_dis_u8 < ((u8)2)) {

   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x13)),&v_data_u8, ((u8)1))


                                     ;
   v_data_u8 = ((v_data_u8&~(0x40))|((v_shadow_dis_u8<<(6))&(0x40)))
                                      ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x13)),&v_data_u8, ((u8)1))


                                     ;
  } else {
   comres = ((s8)-2);
  }
 }
 return comres;
}
# 1121 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_soft_rst(void)
{

 s8 comres = ((s8)-1);
 u8 v_soft_rst_u8 = ((u8)0);

 v_soft_rst_u8 = (0xB6);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_write(p_bmg160->dev_addr, (0x14),&v_soft_rst_u8, ((u8)1))

                                    ;
 }
 return comres;
}
# 1159 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_data_enable(u8 *v_data_enable_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x15)),&v_data_u8, ((u8)1))

                                    ;
  *v_data_enable_u8 = ((v_data_u8 & (0x80)) >> (7))
                           ;
 }
 return comres;
}
# 1197 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_data_enable(u8 v_data_enable_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x15)),&v_data_u8, ((u8)1))


                                                ;
  v_data_u8 = ((v_data_u8&~(0x80))|((v_data_enable_u8<<(7))&(0x80)))
                                             ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x15)),&v_data_u8, ((u8)1))


                                                ;
 }
 return comres;
}
# 1240 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_fifo_enable(u8 *v_fifo_enable_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x15)),&v_data_u8, ((u8)1))

                                                ;
  *v_fifo_enable_u8 = ((v_data_u8 & (0x40)) >> (6))
                           ;
 }
 return comres;
}
# 1278 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_fifo_enable(u8 v_fifo_enable_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  if (v_fifo_enable_u8 < ((u8)2)) {

   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x15)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x40))|((v_fifo_enable_u8<<(6))&(0x40)))
                                              ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x15)),&v_data_u8, ((u8)1))


                                                 ;
  } else {
   comres = ((s8)-2);
  }
 }
 return comres;
}
# 1325 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_auto_offset_enable(
u8 *v_offset_enable_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x15)),&v_data_u8, ((u8)1))

                                                ;
  *v_offset_enable_u8 = ((v_data_u8 & (0x04)) >> (2))
                                  ;
 }
 return comres;
}
# 1364 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_auto_offset_enable(u8 v_offset_enable_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x15)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x04))|((v_offset_enable_u8<<(2))&(0x04)))
                                                      ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x15)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 1411 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr_output_type(u8 v_param_u8,
u8 *v_intr_output_type_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_param_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x16)),&v_data_u8, ((u8)1))


                                                  ;
   *v_intr_output_type_u8 = ((v_data_u8 & (0x02)) >> (1))
                                       ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x16)),&v_data_u8, ((u8)1))


                                                 ;
   *v_intr_output_type_u8 = ((v_data_u8 & (0x08)) >> (3))
                                       ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 1472 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_intr_output_type(u8 v_param_u8,
u8 v_intr_output_type_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_param_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x16)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x02))|((v_intr_output_type_u8<<(1))&(0x02)))

                         ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x16)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x16)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x08))|((v_intr_output_type_u8<<(3))&(0x08)))

                         ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x16)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 1543 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr_level(u8 v_param_u8,
u8 *v_intr_level_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_param_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x16)),&v_data_u8, ((u8)1))


                                                 ;
   *v_intr_level_u8 = ((v_data_u8 & (0x01)) >> (0))
                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x16)),&v_data_u8, ((u8)1))


                                                 ;
   *v_intr_level_u8 = ((v_data_u8 & (0x04)) >> (2))
                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 1604 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_intr_level(u8 v_param_u8,
u8 v_intr_level_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_param_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x16)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x01))|((v_intr_level_u8<<(0))&(0x01)))
                                                  ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x16)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x16)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x04))|((v_intr_level_u8<<(2))&(0x04)))
                                                  ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x16)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 1667 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr1_highrate(u8 *v_intr1_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x17)),&v_data_u8, ((u8)1))

                                                ;
  *v_intr1_u8 = ((v_data_u8 & (0x08)) >> (3))
                                      ;
 }
 return comres;
}
# 1705 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_intr1_highrate(
u8 v_intr1_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x17)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x08))|((v_intr1_u8<<(3))&(0x08)))
                                                  ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x17)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 1747 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr1_any_motion(
u8 *v_int1r_any_motion_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x17)),&v_data_u8, ((u8)1))

                                                ;
  *v_int1r_any_motion_u8 = ((v_data_u8 & (0x02)) >> (1))
                                        ;
 }
 return comres;
}
# 1786 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_intr1_any_motion(
u8 v_int1r_any_motion_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x17)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x02))|((v_int1r_any_motion_u8<<(1))&(0x02)))
                                                               ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x17)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 1833 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr_data(u8 v_axis_u8,
u8 *v_intr_data_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_axis_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   *v_intr_data_u8 = ((v_data_u8 & (0x01)) >> (0))
                             ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   *v_intr_data_u8 = ((v_data_u8 & (0x80)) >> (7))
                             ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 1893 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_intr_data(u8 v_axis_u8,
u8 v_intr_data_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
   switch (v_axis_u8) {

   case (0):
    comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                  ;
    v_data_u8 = ((v_data_u8&~(0x01))|((v_intr_data_u8<<(0))&(0x01)))
                                              ;
    comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                  ;
    break;
   case (1):
    comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                  ;
    v_data_u8 = ((v_data_u8&~(0x80))|((v_intr_data_u8<<(7))&(0x80)))
                                              ;
    comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                  ;
    break;
   default:
    comres = ((s8)-2);
    break;
   }
  }
  return comres;
 }
# 1961 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr2_offset(u8 v_axis_u8,
u8 *v_intr2_offset_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_axis_u8) {

  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   *v_intr2_offset_u8 = ((v_data_u8 & (0x40)) >> (6))
                                    ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   *v_intr2_offset_u8 = ((v_data_u8 & (0x10)) >> (4))
                                    ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 2021 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_intr2_offset(u8 v_axis_u8,
u8 v_intr2_offset_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_axis_u8) {

  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x40))|((v_intr2_offset_u8<<(6))&(0x40)))
                                                       ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x10))|((v_intr2_offset_u8<<(4))&(0x10)))
                                                       ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 2089 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr_offset(u8 v_axis_u8,
u8 *v_intr1_offset_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_axis_u8) {

  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   *v_intr1_offset_u8 = ((v_data_u8 & (0x02)) >> (1))
                                    ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   *v_intr1_offset_u8 = ((v_data_u8 & (0x08)) >> (3))
                                    ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 2149 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_intr1_offset(u8 v_axis_u8,
u8 v_intr1_offset_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_axis_u8) {

  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x02))|((v_intr1_offset_u8<<(1))&(0x02)))
                                                       ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x08))|((v_intr1_offset_u8<<(3))&(0x08)))
                                                       ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 2212 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr2_fifo(u8 *v_intr_fifo_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))

                                    ;
  *v_intr_fifo_u8 = ((v_data_u8 & (0x20)) >> (5))
                            ;
 }
 return comres;
}
# 2249 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr1_fifo(u8 *v_intr_fifo_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))

                                    ;
  *v_intr_fifo_u8 = ((v_data_u8 & (0x04)) >> (2))
                            ;
 }
 return comres;
}
# 2293 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_intr_fifo(u8 v_axis_u8,
u8 v_intr_fifo_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_axis_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x04))|((v_intr_fifo_u8<<(2))&(0x04)))
                                             ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x20))|((v_intr_fifo_u8<<(5))&(0x20)))
                                             ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x18)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 2356 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr2_highrate(
u8 *v_intr2_highrate_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x19)),&v_data_u8, ((u8)1))

                                                ;
  *v_intr2_highrate_u8 = ((v_data_u8 & (0x08)) >> (3))
                                     ;
 }
 return comres;
}
# 2395 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_intr2_highrate(
u8 v_intr2_highrate_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x19)),&v_data_u8, ((u8)1))


                                                ;
  v_data_u8 = ((v_data_u8&~(0x08))|((v_intr2_highrate_u8<<(3))&(0x08)))
                                                          ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x19)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 2438 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_intr2_any_motion(
u8 *v_intr2_any_motion_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x19)),&v_data_u8, ((u8)1))

                                                ;
  *v_intr2_any_motion_u8 = ((v_data_u8 & (0x02)) >> (1))
                                       ;
 }
 return comres;
}
# 2477 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_intr2_any_motion(
u8 v_intr2_any_motion_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x19)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x02))|((v_intr2_any_motion_u8<<(1))&(0x02)))
                                                              ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x19)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 2525 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_offset_unfilt(u8 v_param_u8,
u8 *v_offset_unfilt_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_param_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1A)),&v_data_u8, ((u8)1))


                                                 ;
   *v_offset_unfilt_u8 = ((v_data_u8 & (0x20)) >> (5))
                                            ;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1B)),&v_data_u8, ((u8)1))


                                                 ;
   *v_offset_unfilt_u8 = ((v_data_u8 & (0x80)) >> (7))
                                           ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 2586 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_offset_unfilt(u8 v_param_u8,
u8 v_offset_unfilt_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_param_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1A)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x20))|((v_offset_unfilt_u8<<(5))&(0x20)))

                      ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x1A)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1B)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x80))|((v_offset_unfilt_u8<<(7))&(0x80)))

                      ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x1B)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 2656 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_unfilt_data(u8 v_param_u8,
u8 *v_unfilt_data_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_param_u8) {

  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1A)),&v_data_u8, ((u8)1))


                                                 ;
   *v_unfilt_data_u8 = ((v_data_u8 & (0x08)) >> (3))
                                              ;
   break;
  case (3):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1A)),&v_data_u8, ((u8)1))


                                                 ;
   *v_unfilt_data_u8 = ((v_data_u8 & (0x02)) >> (1))
                                                ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 2716 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_unfilt_data(u8 v_param_u8,
u8 v_unfilt_data_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_param_u8) {

  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1A)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x08))|((v_unfilt_data_u8<<(3))&(0x08)))

                    ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x1A)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (3):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1A)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x02))|((v_unfilt_data_u8<<(1))&(0x02)))

                    ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x1A)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 2778 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_any_motion_thres(
u8 *v_any_motion_thres_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1B)),&v_data_u8, ((u8)1))

                                                ;
  *v_any_motion_thres_u8 = ((v_data_u8 & (0x7F)) >> (0))
                                        ;
 }
 return comres;
}
# 2814 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_any_motion_thres(
u8 v_any_motion_thres_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1B)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x7F))|((v_any_motion_thres_u8<<(0))&(0x7F)))
                                                               ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x1B)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 2856 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_awake_durn(u8 *v_awake_durn_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1C)),&v_data_u8, ((u8)1))

                                                ;
  *v_awake_durn_u8 = ((v_data_u8 & (0xC0)) >> (6))
                                  ;
 }
 return comres;
}
# 2894 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_awake_durn(u8 v_awake_durn_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1C)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0xC0))|((v_awake_durn_u8<<(6))&(0xC0)))
                                                   ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x1C)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 2935 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_any_motion_durn_sample(
u8 *v_durn_sample_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1C)),&v_data_u8, ((u8)1))

                                                ;
  *v_durn_sample_u8 = ((v_data_u8 & (0x30)) >> (4))
                                              ;
 }
 return comres;
}
# 2974 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_any_motion_durn_sample(
u8 v_durn_sample_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1C)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x30))|((v_durn_sample_u8<<(4))&(0x30)))

                   ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x1C)),&v_data_u8, ((u8)1))


                                                ;
 }
 return comres;
}
# 3024 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_any_motion_enable_axis(u8 v_channel_u8,
u8 *v_any_motion_axis_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data1_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1C)),&v_data1_u8, ((u8)1))


                                                  ;
   *v_any_motion_axis_u8 = ((v_data1_u8 & (0x01)) >> (0))
                                            ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1C)),&v_data1_u8, ((u8)1))


                                                  ;
   *v_any_motion_axis_u8 = ((v_data1_u8 & (0x02)) >> (1))
                                             ;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1C)),&v_data1_u8, ((u8)1))


                                                  ;
   *v_any_motion_axis_u8 = ((v_data1_u8 & (0x04)) >> (2))
                                            ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 3093 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_any_motion_enable_axis(u8 v_channel_u8,
u8 v_any_motion_axis_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1C)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x01))|((v_any_motion_axis_u8<<(0))&(0x01)))

                        ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x1C)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1C)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x02))|((v_any_motion_axis_u8<<(1))&(0x02)))

                        ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x1C)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1C)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x04))|((v_any_motion_axis_u8<<(2))&(0x04)))

                        ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x1C)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 3169 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_fifo_wm_enable(
u8 *v_fifo_wm_enable_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1E)),&v_data_u8, ((u8)1))

                                                ;
  *v_fifo_wm_enable_u8 = ((v_data_u8 & (0x80)) >> (7))
                               ;
 }
 return comres;
}
# 3206 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_fifo_wm_enable(
u8 v_fifo_wm_enable_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  if (v_fifo_wm_enable_u8 < ((u8)2)) {
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x1E)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x80))|((v_fifo_wm_enable_u8<<(7))&(0x80)))
                                                     ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x1E)),&v_data_u8, ((u8)1))


                                                 ;
  } else {
   comres = ((s8)-2);
  }
 }
 return comres;
}
# 3251 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_rst_intr(u8 v_rst_int_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x21)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x80))|((v_rst_int_u8<<(7))&(0x80)))
                                               ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x21)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 3289 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_offset_rst(
u8 v_offset_rst_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x21)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x40))|((v_offset_rst_u8<<(6))&(0x40)))
                                                    ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x21)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 3331 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_latch_stat(
u8 *v_latch_stat_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x21)),&v_data_u8, ((u8)1))

                                                ;
  *v_latch_stat_u8 = ((v_data_u8 & (0x10)) >> (4))
                                   ;
 }
 return comres;
}
# 3370 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_latch_stat(
u8 v_latch_stat_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x21)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x10))|((v_latch_stat_u8<<(4))&(0x10)))
                                                    ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x21)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 3425 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_latch_intr(u8 *v_latch_intr_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x21)),&v_data_u8, ((u8)1))

                                                ;
  *v_latch_intr_u8 = ((v_data_u8 & (0x0F)) >> (0))
                                   ;
 }
 return comres;
}
# 3476 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_latch_intr(u8 v_latch_intr_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x21)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x0F))|((v_latch_intr_u8<<(0))&(0x0F)))
                                                    ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x21)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 3522 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_highrate_hyst(u8 v_channel_u8,
u8 *v_highrate_hyst_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x22)),&v_data_u8, ((u8)1))


                                                 ;
   *v_highrate_hyst_u8 = ((v_data_u8 & (0xC0)) >> (6))
                          ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x24)),&v_data_u8, ((u8)1))


                                                 ;
   *v_highrate_hyst_u8 = ((v_data_u8 & (0xC0)) >> (6))
                          ;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x26)),&v_data_u8, ((u8)1))


                                                 ;
   *v_highrate_hyst_u8 = ((v_data_u8 & (0xC0)) >> (6))
                          ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 3590 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_highrate_hyst(u8 v_channel_u8,
u8 v_highrate_hyst_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x22)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0xC0))|((v_highrate_hyst_u8<<(6))&(0xC0)))
                                              ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x22)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x24)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0xC0))|((v_highrate_hyst_u8<<(6))&(0xC0)))
                                              ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x24)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x26)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0xC0))|((v_highrate_hyst_u8<<(6))&(0xC0)))
                                              ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x26)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 3670 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_highrate_thres(u8 v_channel_u8,
u8 *v_highrate_thres_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x22)),&v_data_u8, ((u8)1))


                                                 ;
   *v_highrate_thres_u8 = ((v_data_u8 & (0x3E)) >> (1))
                           ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x24)),&v_data_u8, ((u8)1))


                                                 ;
   *v_highrate_thres_u8 = ((v_data_u8 & (0x3E)) >> (1))
                           ;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x26)),&v_data_u8, ((u8)1))


                                                 ;
   *v_highrate_thres_u8 = ((v_data_u8 & (0x3E)) >> (1))
                           ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 3738 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_highrate_thres(u8 v_channel_u8,
u8 v_highrate_thres_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x22)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x3E))|((v_highrate_thres_u8<<(1))&(0x3E)))
                                                ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x22)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x24)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x3E))|((v_highrate_thres_u8<<(1))&(0x3E)))
                                                ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x24)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x26)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x3E))|((v_highrate_thres_u8<<(1))&(0x3E)))
                                                ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x26)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 3819 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_highrate_enable_axis(u8 v_channel_u8,
u8 *v_enable_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x22)),&v_data_u8, ((u8)1))


                                                 ;
   *v_enable_u8 = ((v_data_u8 & (0x01)) >> (0))
                            ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x24)),&v_data_u8, ((u8)1))


                                                 ;
   *v_enable_u8 = ((v_data_u8 & (0x01)) >> (0))
                            ;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x26)),&v_data_u8, ((u8)1))


                                                 ;
   *v_enable_u8 = ((v_data_u8 & (0x01)) >> (0))
                            ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 3888 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_highrate_enable_axis(u8 v_channel_u8,
u8 v_enable_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x22)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x01))|((v_enable_u8<<(0))&(0x01)))
                                         ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x22)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x24)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x01))|((v_enable_u8<<(0))&(0x01)))
                                         ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x24)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x26)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x01))|((v_enable_u8<<(0))&(0x01)))
                                         ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x26)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 3971 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_highrate_durn_axis(u8 v_channel_u8,
u8 *v_highrate_durn_axis_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x23),&v_data_u8, ((u8)1))


                                                 ;
   *v_highrate_durn_axis_u8 = v_data_u8;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x24),&v_data_u8, ((u8)1))


                                                 ;
   *v_highrate_durn_axis_u8 = v_data_u8;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x26),&v_data_u8, ((u8)1))


                                                 ;
   *v_highrate_durn_axis_u8 = v_data_u8;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 4039 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_highrate_durn_axis(u8 v_channel_u8,
u8 v_highrate_durn_axis_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   v_data_u8 = v_highrate_durn_axis_u8;
   comres = p_bmg160->bus_write(p_bmg160->dev_addr, (0x22),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   v_data_u8 = v_highrate_durn_axis_u8;
   comres = p_bmg160->bus_write(p_bmg160->dev_addr, (0x24),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (2):
   v_data_u8 = v_highrate_durn_axis_u8;
   comres = p_bmg160->bus_write(p_bmg160->dev_addr, (0x26),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 4100 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_slow_offset_thres(
u8 *v_offset_thres_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))

                                                ;
  *v_offset_thres_u8 = ((v_data_u8 & (0xC0)) >> (6))
                           ;
 }
 return comres;
}
# 4140 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_slow_offset_thres(u8 v_offset_thres_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0xC0))|((v_offset_thres_u8<<(6))&(0xC0)))
                                              ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 4185 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_slow_offset_durn(
u8 *v_offset_durn_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))

                                                ;
  *v_offset_durn_u8 = ((v_data_u8 & (0x38)) >> (3))
                          ;
 }
 return comres;
}
# 4228 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_slow_offset_durn(
u8 v_offset_durn_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x38))|((v_offset_durn_u8<<(3))&(0x38)))
                                            ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 4277 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_slow_offset_enable_axis(
u8 v_channel_u8, u8 *v_slow_offset_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))


                                                 ;
   *v_slow_offset_u8 = ((v_data_u8 & (0x01)) >> (0))
                               ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))


                                                 ;
   *v_slow_offset_u8 = ((v_data_u8 & (0x02)) >> (1))
                               ;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))


                                                 ;
   *v_slow_offset_u8 = ((v_data_u8 & (0x04)) >> (2))
                               ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 4347 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_slow_offset_enable_axis(
u8 v_channel_u8, u8 v_slow_offset_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x01))|((v_slow_offset_u8<<(0))&(0x01)))
                                                 ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x02))|((v_slow_offset_u8<<(1))&(0x02)))
                                                 ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x04))|((v_slow_offset_u8<<(2))&(0x04)))

                    ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x31)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 4430 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_offset_word_length(u8 v_channel_u8,
u8 *v_offset_word_length_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {
  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))


                                                 ;
   *v_offset_word_length_u8 =
   ((v_data_u8 & (0xC0)) >> (6))
                                   ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))


                                                 ;
   *v_offset_word_length_u8 =
   ((v_data_u8 & (0x30)) >> (4))
                                   ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 4493 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_offset_word_length(
u8 v_channel_u8, u8 v_offset_word_length_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {
  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0xC0))|((v_offset_word_length_u8<<(6))&(0xC0)))

                           ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x30))|((v_offset_word_length_u8<<(4))&(0x30)))

                           ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 4549 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_enable_fast_offset(void)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))

                                    ;
  v_data_u8 = ((v_data_u8&~(0x08))|((((u8)1)<<(3))&(0x08)))

                                    ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))

                                    ;
 }
 return comres;
}
# 4593 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_fast_offset_enable_axis(
u8 *v_fast_offset_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))


                                                ;
  *v_fast_offset_u8 = ((v_data_u8 & (0x07)) >> (0))
                                ;
 }
 return comres;
}
# 4642 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_fast_offset_enable_axis(
u8 v_channel_u8, u8 v_fast_offset_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x01))|((v_fast_offset_u8<<(0))&(0x01)))
                                                 ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x02))|((v_fast_offset_u8<<(1))&(0x02)))
                                                 ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x04))|((v_fast_offset_u8<<(2))&(0x04)))
                                                 ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x32)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 4714 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_nvm_remain(u8 *v_nvm_remain_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x33)),&v_data_u8, ((u8)1))

                                                ;
  *v_nvm_remain_u8 = ((v_data_u8 & (0xF0)) >> (4))
                                       ;
 }
 return comres;
}
# 4749 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_nvm_load(u8 v_nvm_load_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x33)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x08))|((v_nvm_load_u8<<(3))&(0x08)))
                                                    ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x33)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 4787 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_nvm_rdy(u8 *v_nvm_rdy_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x33)),&v_data_u8, ((u8)1))

                                                ;
  *v_nvm_rdy_u8 = ((v_data_u8 & (0x04)) >> (2))
                                    ;
 }
 return comres;
}
# 4821 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_nvm_prog_trig(u8 nvm_prog_trig)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x33)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x02))|((nvm_prog_trig<<(1))&(0x02)))
                                                         ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x33)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 4859 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_nvm_prog_mode(u8 *nvm_prog_mode)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x33)),&v_data_u8, ((u8)1))

                                                ;
  *nvm_prog_mode = ((v_data_u8 & (0x01)) >> (0))
                                          ;
 }
 return comres;
}
# 4894 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_nvm_prog_mode(u8 nvm_prog_mode)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x33)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x01))|((nvm_prog_mode<<(0))&(0x01)))
                                                         ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x33)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 4939 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_i2c_wdt(u8 v_channel_u8,
u8 *v_i2c_wdt_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x34)),&v_data_u8, ((u8)1))


                                                 ;
   *v_i2c_wdt_u8 = ((v_data_u8 & (0x04)) >> (2))
                                           ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x34)),&v_data_u8, ((u8)1))


                                                 ;
   *v_i2c_wdt_u8 = ((v_data_u8 & (0x02)) >> (1))
                                           ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 4999 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_i2c_wdt(u8 v_channel_u8,
u8 v_i2c_wdt_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_channel_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x34)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x04))|((v_i2c_wdt_u8<<(2))&(0x04)))
                                                         ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x34)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x34)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x02))|((v_i2c_wdt_u8<<(1))&(0x02)))
                                                         ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x34)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 5062 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_spi3(u8 *v_spi3_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x34)),&v_data_u8, ((u8)1))


                                                ;
  *v_spi3_u8 = ((v_data_u8 & (0x01)) >> (0))
                                ;
 }
 return comres;
}
# 5100 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_spi3(u8 v_spi3_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x34)),&v_data_u8, ((u8)1))

                                                ;
  v_data_u8 = ((v_data_u8&~(0x01))|((v_spi3_u8<<(0))&(0x01)))
                                           ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x34)),&v_data_u8, ((u8)1))

                                                ;
 }
 return comres;
}
# 5138 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_fifo_tag(u8 *v_fifo_tag_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3D)),&v_data_u8, ((u8)1))

                                                ;
  *v_fifo_tag_u8 = ((v_data_u8 & (0x80)) >> (7))
                            ;
 }
 return comres;
}
# 5174 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_fifo_tag(u8 v_fifo_tag_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  if (v_fifo_tag_u8 < ((u8)2)) {

   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3D)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x80))|((v_fifo_tag_u8<<(7))&(0x80)))
                                            ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x3D)),&v_data_u8, ((u8)1))


                                                 ;
  } else {
   comres = ((s8)-2);
  }
 }
 return comres;
}
# 5217 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_fifo_wm_level(
u8 *v_fifo_wm_level_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3D)),&v_data_u8, ((u8)1))

                                                ;
  *v_fifo_wm_level_u8 = ((v_data_u8 & (0x7F)) >> (0))
                            ;
 }
 return comres;
}
# 5251 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_fifo_wm_level(
u8 v_fifo_wm_level_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  if (v_fifo_wm_level_u8 < ((u8)128)) {
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3D)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x7F))|((v_fifo_wm_level_u8<<(0))&(0x7F)))
                                                 ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x3D)),&v_data_u8, ((u8)1))


                                                 ;
  } else {
   comres = ((s8)-2);
  }
 }
 return comres;
}
# 5312 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_offset(u8 v_axis_u8,
s16 *v_offset_s16)
{

 s8 comres = ((s8)-1);
 u8 v_data1_u8r = ((u8)0);
 u8 v_data2_u8r = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_axis_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3A)),&v_data1_u8r, ((u8)1))


                                                   ;
   v_data1_u8r = ((v_data1_u8r & (0x0C)) >> (2))
                                 ;
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x36)),&v_data2_u8r, ((u8)1))


                                                   ;
   v_data2_u8r = ((v_data2_u8r & (0xC0)) >> (6))
                             ;
   v_data2_u8r = ((v_data2_u8r <<
   (4))
   | v_data1_u8r);
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x37),&v_data1_u8r, ((u8)1))

                                                   ;
   *v_offset_s16 = (s16)((((s16)
   ((s8)v_data1_u8r))
   << (4))
   | (v_data2_u8r));
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3A)),&v_data1_u8r, ((u8)1))


                                                   ;
   v_data1_u8r = ((v_data1_u8r & (0x02)) >> (1))
                                 ;
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x36)),&v_data2_u8r, ((u8)1))


                                                   ;
   v_data2_u8r = ((v_data2_u8r & (0x38)) >> (3))
                             ;
   v_data2_u8r = ((v_data2_u8r <<
   (1))
   | v_data1_u8r);
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x38),&v_data1_u8r, ((u8)1))


                                     ;
   *v_offset_s16 = (s16)((((s16)
   ((s8)v_data1_u8r))
   << (4))
   | (v_data2_u8r));
   break;
  case (2):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3A)),&v_data1_u8r, ((u8)1))


                                                   ;
   v_data1_u8r = ((v_data1_u8r & (0x01)) >> (0))
                                 ;
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x36)),&v_data2_u8r, ((u8)1))


                                                   ;
   v_data2_u8r = ((v_data2_u8r & (0x07)) >> (0))
                             ;
   v_data2_u8r = ((v_data2_u8r <<
   (1))
   | v_data1_u8r);
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x39),&v_data1_u8r, ((u8)1))


                                     ;
   *v_offset_s16 = (s16)((((s16)
   ((s8)v_data1_u8r))
   << (4))
   | (v_data2_u8r));
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 5440 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_offset(
u8 v_axis_u8, s16 v_offset_s16)
{

 s8 comres = ((s8)-1);
 u8 v_data1_u8r = ((u8)0);
 u8 v_data2_u8r = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_axis_u8) {

  case (0):
   v_data1_u8r = ((s8) (v_offset_s16
   & (0x0FF0)))
   >> (4);
   comres = p_bmg160->bus_write(p_bmg160->dev_addr, (0x37),&v_data1_u8r, ((u8)1))


                                     ;

   v_data1_u8r = (u8) (v_offset_s16
   & (0x000C));
   v_data2_u8r = ((v_data2_u8r&~(0xC0))|((v_data1_u8r<<(6))&(0xC0)))
                                          ;
   comres += p_bmg160->bus_read(p_bmg160->dev_addr, ((0x36)),&v_data2_u8r, ((u8)1))


                                                   ;

   v_data1_u8r = (u8) (v_offset_s16
   & (0x0003));
   v_data2_u8r = ((v_data2_u8r&~(0x0C))|((v_data1_u8r<<(2))&(0x0C)))
                                              ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x3A)),&v_data2_u8r, ((u8)1))


                                                   ;
   break;
  case (1):
   v_data1_u8r = ((s8) (v_offset_s16
   & (0x0FF0))) >>
   (4);
   comres = p_bmg160->bus_write(p_bmg160->dev_addr, (0x38),&v_data1_u8r, ((u8)1))


                                     ;

   v_data1_u8r = (u8) (v_offset_s16
   & (0x000E));
   v_data2_u8r = ((v_data2_u8r&~(0x38))|((v_data1_u8r<<(3))&(0x38)))
                                          ;
   comres += p_bmg160->bus_read(p_bmg160->dev_addr, ((0x36)),&v_data2_u8r, ((u8)1))


                                                   ;

   v_data1_u8r = (u8) (v_offset_s16
   & (0x0001));
   v_data2_u8r = ((v_data2_u8r&~(0x02))|((v_data1_u8r<<(1))&(0x02)))
                                              ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x3A)),&v_data2_u8r, ((u8)1))


                                                   ;
   break;
  case (2):
   v_data1_u8r = ((s8) (v_offset_s16
   & (0x0FF0))) >>
   (4);
   comres = p_bmg160->bus_write(p_bmg160->dev_addr, (0x39),&v_data1_u8r, ((u8)1))


                                     ;

   v_data1_u8r = (u8) (v_offset_s16
   & (0x000E));
   v_data2_u8r = ((v_data2_u8r&~(0x07))|((v_data1_u8r<<(0))&(0x07)))
                                          ;
   comres += p_bmg160->bus_read(p_bmg160->dev_addr, ((0x36)),&v_data2_u8r, ((u8)1))


                                                   ;

   v_data1_u8r = (u8) (v_offset_s16
   & (0x0001));
   v_data2_u8r = ((v_data2_u8r&~(0x01))|((v_data1_u8r<<(0))&(0x01)))
                                              ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x3A)),&v_data2_u8r, ((u8)1))


                                                   ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 5562 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_gp(u8 v_param_u8,
u8 *v_gp_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_param_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3A)),&v_data_u8, ((u8)1))


                                                 ;
   *v_gp_u8 = ((v_data_u8 & (0xF0)) >> (4))
                            ;
   break;
  case (1):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x3B),&v_data_u8, ((u8)1))


                                     ;
   *v_gp_u8 = v_data_u8;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 5617 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_gp(u8 v_param_u8,
u8 v_gp_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  switch (v_param_u8) {

  case (0):
   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3A)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0xF0))|((v_gp_u8<<(4))&(0xF0)))
                                     ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x3A)),&v_data_u8, ((u8)1))


                                                 ;
   break;
  case (1):
   v_data_u8 = v_gp_u8;
   comres = p_bmg160->bus_write(p_bmg160->dev_addr, (0x3B),&v_data_u8, ((u8)1))


                                                 ;
   break;
  default:
   comres = ((s8)-2);
   break;
  }
 }
 return comres;
}
# 5672 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_FIFO_data_reg(u8 *v_fifo_data_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x3F),&v_data_u8, ((u8)1))

                                    ;
  *v_fifo_data_u8 = v_data_u8;
 }
 return comres;
}
# 5705 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_fifo_stat_reg(
u8 *v_fifo_stat_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x0E),&v_data_u8, ((u8)1))

                                    ;
  *v_fifo_stat_u8 = v_data_u8;
 }
 return comres;
}
# 5737 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_fifo_frame_count(
u8 *v_fifo_frame_count_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x0E)),&v_data_u8, ((u8)1))

                                                ;
  *v_fifo_frame_count_u8 = ((v_data_u8 & (0x7F)) >> (0))
                                 ;
 }
 return comres;
}
# 5770 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_fifo_overrun(
u8 *v_fifo_overrun_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x0E)),&v_data_u8, ((u8)1))

                                                ;
  *v_fifo_overrun_u8 = ((v_data_u8 & (0x80)) >> (7))
                           ;
 }
 return comres;
}
# 5810 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_fifo_mode(u8 *v_fifo_mode_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3E)),&v_data_u8, ((u8)1))

                                    ;
  *v_fifo_mode_u8 = ((v_data_u8 & (0xC0)) >> (6))
                             ;
 }
 return comres;
}
# 5849 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_fifo_mode(u8 v_fifo_mode_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  if (v_fifo_mode_u8 < ((u8)4)) {

   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3E)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0xC0))|((v_fifo_mode_u8<<(6))&(0xC0)))
                                              ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x3E)),&v_data_u8, ((u8)1))


                                                 ;
  } else {
   comres = ((s8)-2);
  }
 }
 return comres;
}
# 5897 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_fifo_data_select(
u8 *v_fifo_data_select_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3E)),&v_data_u8, ((u8)1))

                                                ;
  *v_fifo_data_select_u8 = ((v_data_u8 & (0x03)) >> (0))
                                    ;
 }
 return comres;
}
# 5937 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_fifo_data_select(
u8 v_fifo_data_select_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  if (v_fifo_data_select_u8 <
  ((u8)4)) {

   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3E)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x03))|((v_fifo_data_select_u8<<(0))&(0x03)))

                         ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x3E)),&v_data_u8, ((u8)1))


                                                 ;
  } else {
   comres = ((s8)-2);
  }
 }
 return comres;
}
# 5989 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_power_mode(u8 *v_power_mode_u8)
{

 s8 comres = ((s8)-1);
 u8 data1 = ((u8)0);
 u8 data2 = ((u8)0);
 u8 data3 = ((u8)0);

 if (p_bmg160 == ((u8)0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x11),&data1, ((u8)1))

                                    ;
  comres += p_bmg160->bus_read(p_bmg160->dev_addr, (0x12),&data2, ((u8)1))

                                    ;
  data1 = (data1 & 0xA0) >> 5;
  data3 = (data2 & 0x40) >> 6;
  data2 = (data2 & 0x80) >> 7;
  if (data3 == 0x01) {
   *v_power_mode_u8 = (4);
  } else {
   if ((data1 == 0x00) && (data2 == 0x00)) {
    *v_power_mode_u8 = (0);
    } else {
    if ((data1 == 0x01) || (data1 == 0x05)) {
     *v_power_mode_u8 =
     (1);
     } else {
     if ((data1 == 0x04) &&
     (data2 == 0x00)) {
      *v_power_mode_u8 =
      (2);
     } else {
     if ((data1 == 0x04) &&
      (data2 == 0x01))
       *v_power_mode_u8 =
       (3);
      }
     }
    }
   }
  }
 return comres;
}
# 6058 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_power_mode(u8 v_power_mode_u8)
{

 s8 comres = ((s8)-1);
 u8 data1 = ((u8)0);
 u8 data2 = ((u8)0);
 u8 data3 = ((u8)0);
 u8 v_autosleepduration = ((u8)0);
 u8 v_bw_u8r = ((u8)0);

 if (p_bmg160 == ((u8)0)) {
  return ((s8)-127);
  } else {
  if (v_power_mode_u8 < ((u8)5)) {

   comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x11),&data1, ((u8)1))


                                     ;
   comres += p_bmg160->bus_read(p_bmg160->dev_addr, (0x12),&data2, ((u8)1))


                                     ;
   switch (v_power_mode_u8) {
   case (0):
    data1 = ((data1&~(0xA0))|((((u8)0)<<(5))&(0xA0)))
                                        ;
    data2 = ((data2&~(0x80))|((((u8)0)<<(7))&(0x80)))

                      ;
    data3 = ((data2&~(0x40))|((((u8)0)<<(6))&(0x40)))

                      ;
    comres += p_bmg160->bus_write(p_bmg160->dev_addr, (0x11),&data1, ((u8)1))


                                     ;
   p_bmg160->delay_msec(((u8)1));


   comres += p_bmg160->bus_write(p_bmg160->dev_addr, (0x12),&data3, ((u8)1))


                                     ;
    break;
   case (1):
    data1 = ((data1&~(0xA0))|((((u8)1)<<(5))&(0xA0)))

                                      ;
    data2 = ((data2&~(0x80))|((((u8)0)<<(7))&(0x80)))

                      ;
    data3 = ((data2&~(0x40))|((((u8)0)<<(6))&(0x40)))

                      ;
    comres += p_bmg160->bus_write(p_bmg160->dev_addr, (0x11),&data1, ((u8)1))


                                     ;
   p_bmg160->delay_msec(((u8)1));


   comres += p_bmg160->bus_write(p_bmg160->dev_addr, (0x12),&data3, ((u8)1))


                                     ;
    break;
   case (2):
    data1 = ((data1&~(0xA0))|((((u8)4)<<(5))&(0xA0)))
                                                ;
    data2 = ((data2&~(0x80))|((((u8)0)<<(7))&(0x80)))

                      ;
    data3 = ((data2&~(0x40))|((((u8)0)<<(6))&(0x40)))

                      ;
    comres += p_bmg160->bus_write(p_bmg160->dev_addr, (0x11),&data1, ((u8)1))


                                     ;
   p_bmg160->delay_msec(((u8)1));


   comres += p_bmg160->bus_write(p_bmg160->dev_addr, (0x12),&data3, ((u8)1))


                                     ;
    break;
   case (3):
    data1 = ((data1&~(0xA0))|((((u8)4)<<(5))&(0xA0)))
                                                ;
    data2 = ((data2&~(0x80))|((((u8)1)<<(7))&(0x80)))

                                      ;
    data3 = ((data2&~(0x40))|((((u8)0)<<(6))&(0x40)))

                      ;
    comres += p_bmg160->bus_write(p_bmg160->dev_addr, (0x11),&data1, ((u8)1))


                                     ;
   p_bmg160->delay_msec(((u8)1));


   comres += p_bmg160->bus_write(p_bmg160->dev_addr, (0x12),&data3, ((u8)1))


                                     ;
    break;
   case (4):


    bmg160_get_bw(&v_bw_u8r);
    bmg160_get_auto_sleep_durn(
     &v_autosleepduration);
    bmg160_set_auto_sleep_durn(v_autosleepduration,
    v_bw_u8r);
    comres += p_bmg160->bus_read(p_bmg160->dev_addr, (0x12),&data2, ((u8)1))


                                      ;

    data1 = ((data1&~(0xA0))|((((u8)0)<<(5))&(0xA0)))
                                        ;
    data2 = ((data2&~(0x80))|((((u8)0)<<(7))&(0x80)))

                      ;
    data3 = ((data2&~(0x40))|((((u8)1)<<(6))&(0x40)))

                                      ;
    comres += p_bmg160->bus_write(p_bmg160->dev_addr, (0x11),&data1, ((u8)1))


                                     ;
   p_bmg160->delay_msec(((u8)1));


   comres += p_bmg160->bus_write(p_bmg160->dev_addr, (0x12),&data3, ((u8)1))


                                     ;
    break;
    }
  } else {
  comres = ((s8)-2);
  }
 }
 return comres;
}
# 6225 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_selftest(u8 *v_result_u8)
 {

 s8 comres = ((s8)-1);
 u8 v_data1_u8 = ((u8)0);
 u8 v_data2_u8 = ((u8)0);

 comres = p_bmg160->bus_read(p_bmg160->dev_addr, (0x3C),&v_data1_u8, ((u8)1))

                                   ;
 v_data2_u8 = ((v_data1_u8 & (0x10)) >> (4))
                             ;
 v_data1_u8 = ((v_data1_u8&~(0x01))|((((u8)1)<<(0))&(0x01)))

                                   ;
 comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x3C)),&v_data1_u8, ((u8)1))

                                   ;


 p_bmg160->delay_msec(((u8)10));


 comres += p_bmg160->bus_read(p_bmg160->dev_addr, ((0x3C)),&v_data1_u8, ((u8)1))

                                   ;
 v_data1_u8 = ((v_data1_u8 & (0x04)) >> (2))
                               ;
 if ((v_data1_u8 == ((u8)0x00)) &&
 (v_data2_u8 == ((u8)0x01)))
  *v_result_u8 = (0);
 else
  *v_result_u8 = (1);
 return comres;
}
# 6284 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_auto_sleep_durn(u8 *v_durn_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x12)),&v_data_u8, ((u8)1))

                                                 ;
  *v_durn_u8 = ((v_data_u8 & (0x07)) >> (0))
                                        ;
 }
 return comres;
}
# 6340 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_auto_sleep_durn(u8 v_durn_u8,
u8 v_bw_u8)
{

 s8 comres = ((s8)-1);
u8 v_data_u8 = ((u8)0);
u8 v_auto_sleep_durn_u8r = ((u8)0);

if (p_bmg160 == (0)) {
 return ((s8)-127);
} else {

 comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x12)),&v_data_u8, ((u8)1))


                                                ;
  if (v_durn_u8 < ((u8)8)) {
   switch (v_bw_u8) {
   case (0):
    if (v_durn_u8 >
    (1))
     v_auto_sleep_durn_u8r =
     v_durn_u8;
    else
     v_auto_sleep_durn_u8r =
     (1);
    break;
   case (1):
    if (v_durn_u8 >
    (1))
     v_auto_sleep_durn_u8r =
     v_durn_u8;
    else
     v_auto_sleep_durn_u8r =
     (1);
    break;
   case (2):
    if (v_durn_u8 >
    (1))
     v_auto_sleep_durn_u8r =
     v_durn_u8;
    else
     v_auto_sleep_durn_u8r =
     (1);
    break;
   case (3):
    if (v_durn_u8 >
    (2))
     v_auto_sleep_durn_u8r =
     v_durn_u8;
    else
     v_auto_sleep_durn_u8r =
     (2);
    break;
   case (4):
    if (v_durn_u8 >
    (4))
     v_auto_sleep_durn_u8r =
     v_durn_u8;
    else
     v_auto_sleep_durn_u8r =
     (4);
    break;
   case (5):
    if (v_durn_u8 >
    (6))
     v_auto_sleep_durn_u8r =
     v_durn_u8;
    else
    v_auto_sleep_durn_u8r =
    (6);
    break;
   case (6):
    if (v_durn_u8 >
    (4))
     v_auto_sleep_durn_u8r =
     v_durn_u8;
    else
     v_auto_sleep_durn_u8r =
     (4);
    break;
   case (7):
    if (v_durn_u8 >
    (6))
     v_auto_sleep_durn_u8r =
     v_durn_u8;
    else
     v_auto_sleep_durn_u8r =
     (6);
    break;
   default:
   if (v_durn_u8 >
    (1))
    v_auto_sleep_durn_u8r =
     v_durn_u8;
    else
    v_auto_sleep_durn_u8r =
    (1);
    break;
   }
  v_data_u8 = ((v_data_u8&~(0x07))|((v_auto_sleep_durn_u8r<<(0))&(0x07)))

                        ;
  comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x12)),&v_data_u8, ((u8)1))


                                                ;
 } else {
  comres = ((s8)-2);
 }
}
return comres;
}
# 6478 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_get_sleep_durn(u8 *v_durn_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {

  comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x11)),&v_data_u8, ((u8)1))

                                                 ;
  *v_durn_u8 = ((v_data_u8 & (0x0E)) >> (1))
                                  ;
 }
 return comres;
}
# 6521 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
s8 bmg160_set_sleep_durn(u8 v_durn_u8)
{

 s8 comres = ((s8)-1);
 u8 v_data_u8 = ((u8)0);

 if (p_bmg160 == (0)) {
  return ((s8)-127);
  } else {
  if (v_durn_u8 < ((u8)8)) {

   comres = p_bmg160->bus_read(p_bmg160->dev_addr, ((0x11)),&v_data_u8, ((u8)1))


                                                 ;
   v_data_u8 = ((v_data_u8&~(0x0E))|((v_durn_u8<<(1))&(0x0E)))
                                              ;
   comres += p_bmg160->bus_write(p_bmg160->dev_addr, ((0x11)),&v_data_u8, ((u8)1))


                                                 ;
  } else {
   comres = ((s8)-2);
  }
 }
 return comres;
}
