	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"trcStreamingRecorder.c"
	.text
.Ltext0:
	.section	.text.sd_mutex_new,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_mutex_new, %function
sd_mutex_new:
.LFB124:
	.file 1 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.loc 1 393 101
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 393 103
	.syntax unified
@ 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #44
bx r14
@ 0 "" 2
	.loc 1 393 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE124:
	.size	sd_mutex_new, .-sd_mutex_new
	.section	.text.sd_mutex_acquire,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_mutex_acquire, %function
sd_mutex_acquire:
.LFB125:
	.loc 1 402 105
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 402 107
	.syntax unified
@ 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #45
bx r14
@ 0 "" 2
	.loc 1 402 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE125:
	.size	sd_mutex_acquire, .-sd_mutex_acquire
	.section	.text.sd_mutex_release,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_mutex_release, %function
sd_mutex_release:
.LFB126:
	.loc 1 410 105
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 410 107
	.syntax unified
@ 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #46
bx r14
@ 0 "" 2
	.loc 1 410 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE126:
	.size	sd_mutex_release, .-sd_mutex_release
	.section	.text.sd_rand_application_pool_capacity_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_rand_application_pool_capacity_get, %function
sd_rand_application_pool_capacity_get:
.LFB127:
	.loc 1 418 130
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 418 132
	.syntax unified
@ 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #47
bx r14
@ 0 "" 2
	.loc 1 418 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE127:
	.size	sd_rand_application_pool_capacity_get, .-sd_rand_application_pool_capacity_get
	.section	.text.sd_rand_application_bytes_available_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_rand_application_bytes_available_get, %function
sd_rand_application_bytes_available_get:
.LFB128:
	.loc 1 426 134
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 426 136
	.syntax unified
@ 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #48
bx r14
@ 0 "" 2
	.loc 1 426 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE128:
	.size	sd_rand_application_bytes_available_get, .-sd_rand_application_bytes_available_get
	.section	.text.sd_rand_application_vector_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_rand_application_vector_get, %function
sd_rand_application_vector_get:
.LFB129:
	.loc 1 436 130
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 436 132
	.syntax unified
@ 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #49
bx r14
@ 0 "" 2
	.loc 1 436 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE129:
	.size	sd_rand_application_vector_get, .-sd_rand_application_vector_get
	.section	.text.sd_power_reset_reason_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_reset_reason_get, %function
sd_power_reset_reason_get:
.LFB130:
	.loc 1 444 118
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 444 120
	.syntax unified
@ 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #52
bx r14
@ 0 "" 2
	.loc 1 444 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE130:
	.size	sd_power_reset_reason_get, .-sd_power_reset_reason_get
	.section	.text.sd_power_reset_reason_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_reset_reason_clr, %function
sd_power_reset_reason_clr:
.LFB131:
	.loc 1 452 122
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 452 124
	.syntax unified
@ 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #53
bx r14
@ 0 "" 2
	.loc 1 452 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE131:
	.size	sd_power_reset_reason_clr, .-sd_power_reset_reason_clr
	.section	.text.sd_power_mode_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_mode_set, %function
sd_power_mode_set:
.LFB132:
	.loc 1 461 103
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 461 105
	.syntax unified
@ 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #50
bx r14
@ 0 "" 2
	.loc 1 461 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE132:
	.size	sd_power_mode_set, .-sd_power_mode_set
	.section	.text.sd_power_system_off,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_system_off, %function
sd_power_system_off:
.LFB133:
	.loc 1 467 91
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 467 93
	.syntax unified
@ 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #51
bx r14
@ 0 "" 2
	.loc 1 467 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE133:
	.size	sd_power_system_off, .-sd_power_system_off
	.section	.text.sd_power_pof_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_pof_enable, %function
sd_power_pof_enable:
.LFB134:
	.loc 1 478 105
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 478 107
	.syntax unified
@ 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #54
bx r14
@ 0 "" 2
	.loc 1 478 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE134:
	.size	sd_power_pof_enable, .-sd_power_pof_enable
	.section	.text.sd_power_pof_threshold_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_pof_threshold_set, %function
sd_power_pof_threshold_set:
.LFB135:
	.loc 1 489 111
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 489 113
	.syntax unified
@ 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #55
bx r14
@ 0 "" 2
	.loc 1 489 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE135:
	.size	sd_power_pof_threshold_set, .-sd_power_pof_threshold_set
	.section	.text.sd_power_ram_power_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_ram_power_set, %function
sd_power_ram_power_set:
.LFB136:
	.loc 1 499 126
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 499 128
	.syntax unified
@ 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #57
bx r14
@ 0 "" 2
	.loc 1 499 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE136:
	.size	sd_power_ram_power_set, .-sd_power_ram_power_set
	.section	.text.sd_power_ram_power_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_ram_power_clr, %function
sd_power_ram_power_clr:
.LFB137:
	.loc 1 508 126
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 508 128
	.syntax unified
@ 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #58
bx r14
@ 0 "" 2
	.loc 1 508 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE137:
	.size	sd_power_ram_power_clr, .-sd_power_ram_power_clr
	.section	.text.sd_power_ram_power_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_ram_power_get, %function
sd_power_ram_power_get:
.LFB138:
	.loc 1 517 127
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 517 129
	.syntax unified
@ 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #59
bx r14
@ 0 "" 2
	.loc 1 517 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE138:
	.size	sd_power_ram_power_get, .-sd_power_ram_power_get
	.section	.text.sd_power_gpregret_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_gpregret_set, %function
sd_power_gpregret_set:
.LFB139:
	.loc 1 526 132
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 526 134
	.syntax unified
@ 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #60
bx r14
@ 0 "" 2
	.loc 1 526 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE139:
	.size	sd_power_gpregret_set, .-sd_power_gpregret_set
	.section	.text.sd_power_gpregret_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_gpregret_clr, %function
sd_power_gpregret_clr:
.LFB140:
	.loc 1 535 132
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 535 134
	.syntax unified
@ 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #61
bx r14
@ 0 "" 2
	.loc 1 535 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE140:
	.size	sd_power_gpregret_clr, .-sd_power_gpregret_clr
	.section	.text.sd_power_gpregret_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_gpregret_get, %function
sd_power_gpregret_get:
.LFB141:
	.loc 1 544 131
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 544 133
	.syntax unified
@ 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #62
bx r14
@ 0 "" 2
	.loc 1 544 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE141:
	.size	sd_power_gpregret_get, .-sd_power_gpregret_get
	.section	.text.sd_power_dcdc_mode_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_dcdc_mode_set, %function
sd_power_dcdc_mode_set:
.LFB142:
	.loc 1 553 107
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 553 109
	.syntax unified
@ 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #63
bx r14
@ 0 "" 2
	.loc 1 553 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE142:
	.size	sd_power_dcdc_mode_set, .-sd_power_dcdc_mode_set
	.section	.text.sd_clock_hfclk_request,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_clock_hfclk_request, %function
sd_clock_hfclk_request:
.LFB143:
	.loc 1 566 94
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 566 96
	.syntax unified
@ 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #66
bx r14
@ 0 "" 2
	.loc 1 566 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE143:
	.size	sd_clock_hfclk_request, .-sd_clock_hfclk_request
	.section	.text.sd_clock_hfclk_release,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_clock_hfclk_release, %function
sd_clock_hfclk_release:
.LFB144:
	.loc 1 577 94
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 577 96
	.syntax unified
@ 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #67
bx r14
@ 0 "" 2
	.loc 1 577 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE144:
	.size	sd_clock_hfclk_release, .-sd_clock_hfclk_release
	.section	.text.sd_clock_hfclk_is_running,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_clock_hfclk_is_running, %function
sd_clock_hfclk_is_running:
.LFB145:
	.loc 1 588 116
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 588 118
	.syntax unified
@ 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #68
bx r14
@ 0 "" 2
	.loc 1 588 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE145:
	.size	sd_clock_hfclk_is_running, .-sd_clock_hfclk_is_running
	.section	.text.sd_app_evt_wait,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_app_evt_wait, %function
sd_app_evt_wait:
.LFB146:
	.loc 1 616 87
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 616 89
	.syntax unified
@ 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #65
bx r14
@ 0 "" 2
	.loc 1 616 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE146:
	.size	sd_app_evt_wait, .-sd_app_evt_wait
	.section	.text.sd_ppi_channel_enable_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_channel_enable_get, %function
sd_ppi_channel_enable_get:
.LFB147:
	.loc 1 624 120
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 624 122
	.syntax unified
@ 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #32
bx r14
@ 0 "" 2
	.loc 1 624 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE147:
	.size	sd_ppi_channel_enable_get, .-sd_ppi_channel_enable_get
	.section	.text.sd_ppi_channel_enable_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_channel_enable_set, %function
sd_ppi_channel_enable_set:
.LFB148:
	.loc 1 632 124
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 632 126
	.syntax unified
@ 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #33
bx r14
@ 0 "" 2
	.loc 1 632 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE148:
	.size	sd_ppi_channel_enable_set, .-sd_ppi_channel_enable_set
	.section	.text.sd_ppi_channel_enable_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_channel_enable_clr, %function
sd_ppi_channel_enable_clr:
.LFB149:
	.loc 1 640 124
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 640 126
	.syntax unified
@ 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #34
bx r14
@ 0 "" 2
	.loc 1 640 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE149:
	.size	sd_ppi_channel_enable_clr, .-sd_ppi_channel_enable_clr
	.section	.text.sd_ppi_channel_assign,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_channel_assign, %function
sd_ppi_channel_assign:
.LFB150:
	.loc 1 651 181
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 651 183
	.syntax unified
@ 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #35
bx r14
@ 0 "" 2
	.loc 1 651 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE150:
	.size	sd_ppi_channel_assign, .-sd_ppi_channel_assign
	.section	.text.sd_ppi_group_task_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_group_task_enable, %function
sd_ppi_group_task_enable:
.LFB151:
	.loc 1 660 109
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 660 111
	.syntax unified
@ 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #36
bx r14
@ 0 "" 2
	.loc 1 660 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE151:
	.size	sd_ppi_group_task_enable, .-sd_ppi_group_task_enable
	.section	.text.sd_ppi_group_task_disable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_group_task_disable, %function
sd_ppi_group_task_disable:
.LFB152:
	.loc 1 669 110
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 669 112
	.syntax unified
@ 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #37
bx r14
@ 0 "" 2
	.loc 1 669 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE152:
	.size	sd_ppi_group_task_disable, .-sd_ppi_group_task_disable
	.section	.text.sd_ppi_group_assign,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_group_assign, %function
sd_ppi_group_assign:
.LFB153:
	.loc 1 679 126
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 679 128
	.syntax unified
@ 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #38
bx r14
@ 0 "" 2
	.loc 1 679 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE153:
	.size	sd_ppi_group_assign, .-sd_ppi_group_assign
	.section	.text.sd_ppi_group_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_group_get, %function
sd_ppi_group_get:
.LFB154:
	.loc 1 689 127
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 689 129
	.syntax unified
@ 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #39
bx r14
@ 0 "" 2
	.loc 1 689 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE154:
	.size	sd_ppi_group_get, .-sd_ppi_group_get
	.section	.text.sd_radio_notification_cfg_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_radio_notification_cfg_set, %function
sd_radio_notification_cfg_set:
.LFB155:
	.loc 1 720 127
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 720 129
	.syntax unified
@ 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #69
bx r14
@ 0 "" 2
	.loc 1 720 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE155:
	.size	sd_radio_notification_cfg_set, .-sd_radio_notification_cfg_set
	.section	.text.sd_ecb_block_encrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ecb_block_encrypt, %function
sd_ecb_block_encrypt:
.LFB156:
	.loc 1 736 119
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 736 121
	.syntax unified
@ 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #70
bx r14
@ 0 "" 2
	.loc 1 736 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE156:
	.size	sd_ecb_block_encrypt, .-sd_ecb_block_encrypt
	.section	.text.sd_ecb_blocks_encrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ecb_blocks_encrypt, %function
sd_ecb_blocks_encrypt:
.LFB157:
	.loc 1 753 150
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 753 152
	.syntax unified
@ 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #71
bx r14
@ 0 "" 2
	.loc 1 753 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE157:
	.size	sd_ecb_blocks_encrypt, .-sd_ecb_blocks_encrypt
	.section	.text.sd_evt_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_evt_get, %function
sd_evt_get:
.LFB158:
	.loc 1 764 97
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 764 99
	.syntax unified
@ 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #75
bx r14
@ 0 "" 2
	.loc 1 764 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE158:
	.size	sd_evt_get, .-sd_evt_get
	.section	.text.sd_temp_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_temp_get, %function
sd_temp_get:
.LFB159:
	.loc 1 775 95
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 775 97
	.syntax unified
@ 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #76
bx r14
@ 0 "" 2
	.loc 1 775 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE159:
	.size	sd_temp_get, .-sd_temp_get
	.section	.text.sd_flash_write,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_flash_write, %function
sd_flash_write:
.LFB160:
	.loc 1 812 137
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 812 139
	.syntax unified
@ 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #41
bx r14
@ 0 "" 2
	.loc 1 812 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE160:
	.size	sd_flash_write, .-sd_flash_write
	.section	.text.sd_flash_page_erase,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_flash_page_erase, %function
sd_flash_page_erase:
.LFB161:
	.loc 1 844 107
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 844 109
	.syntax unified
@ 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #40
bx r14
@ 0 "" 2
	.loc 1 844 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE161:
	.size	sd_flash_page_erase, .-sd_flash_page_erase
	.section	.text.sd_flash_protect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_flash_protect, %function
sd_flash_protect:
.LFB162:
	.loc 1 867 166
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 867 168
	.syntax unified
@ 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #42
bx r14
@ 0 "" 2
	.loc 1 867 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE162:
	.size	sd_flash_protect, .-sd_flash_protect
	.section	.text.sd_radio_session_open,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_radio_session_open, %function
sd_radio_session_open:
.LFB163:
	.loc 1 889 140
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 889 142
	.syntax unified
@ 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #72
bx r14
@ 0 "" 2
	.loc 1 889 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE163:
	.size	sd_radio_session_open, .-sd_radio_session_open
	.section	.text.sd_radio_session_close,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_radio_session_close, %function
sd_radio_session_close:
.LFB164:
	.loc 1 902 94
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 902 96
	.syntax unified
@ 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #73
bx r14
@ 0 "" 2
	.loc 1 902 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE164:
	.size	sd_radio_session_close, .-sd_radio_session_close
	.section	.text.sd_radio_request,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_radio_request, %function
sd_radio_request:
.LFB165:
	.loc 1 934 121
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 934 123
	.syntax unified
@ 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #74
bx r14
@ 0 "" 2
	.loc 1 934 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE165:
	.size	sd_radio_request, .-sd_radio_request
	.section	.text.sd_protected_register_write,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_protected_register_write, %function
sd_protected_register_write:
.LFB166:
	.loc 1 955 141
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 955 143
	.syntax unified
@ 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #43
bx r14
@ 0 "" 2
	.loc 1 955 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE166:
	.size	sd_protected_register_write, .-sd_protected_register_write
	.section	.bss.symbolTable,"aw",%nobits
	.align	2
	.type	symbolTable, %object
	.size	symbolTable, 1280
symbolTable:
	.space	1280
	.section	.bss.firstFreeSymbolTableIndex,"aw",%nobits
	.align	2
	.type	firstFreeSymbolTableIndex, %object
	.size	firstFreeSymbolTableIndex, 4
firstFreeSymbolTableIndex:
	.space	4
	.section	.bss.objectDataTable,"aw",%nobits
	.align	2
	.type	objectDataTable, %object
	.size	objectDataTable, 320
objectDataTable:
	.space	320
	.section	.bss.firstFreeObjectDataTableIndex,"aw",%nobits
	.align	2
	.type	firstFreeObjectDataTableIndex, %object
	.size	firstFreeObjectDataTableIndex, 4
firstFreeObjectDataTableIndex:
	.space	4
	.section	.bss.ISR_stack,"aw",%nobits
	.align	2
	.type	ISR_stack, %object
	.size	ISR_stack, 32
ISR_stack:
	.space	32
	.section	.data.ISR_stack_index,"aw"
	.type	ISR_stack_index, %object
	.size	ISR_stack_index, 1
ISR_stack_index:
	.byte	-1
	.section	.bss.errorCode,"aw",%nobits
	.align	2
	.type	errorCode, %object
	.size	errorCode, 4
errorCode:
	.space	4
	.section	.bss.SessionCounter,"aw",%nobits
	.align	2
	.type	SessionCounter, %object
	.size	SessionCounter, 4
SessionCounter:
	.space	4
	.global	RecorderEnabled
	.section	.bss.RecorderEnabled,"aw",%nobits
	.align	2
	.type	RecorderEnabled, %object
	.size	RecorderEnabled, 4
RecorderEnabled:
	.space	4
	.section	.data.PSFEndianessIdentifier,"aw"
	.align	2
	.type	PSFEndianessIdentifier, %object
	.size	PSFEndianessIdentifier, 4
PSFEndianessIdentifier:
	.word	1347634688
	.section	.data.FormatVersion,"aw"
	.align	1
	.type	FormatVersion, %object
	.size	FormatVersion, 2
FormatVersion:
	.short	4
	.section	.bss.eventCounter,"aw",%nobits
	.align	2
	.type	eventCounter, %object
	.size	eventCounter, 4
eventCounter:
	.space	4
	.global	isPendingContextSwitch
	.section	.bss.isPendingContextSwitch,"aw",%nobits
	.align	2
	.type	isPendingContextSwitch, %object
	.size	isPendingContextSwitch, 4
isPendingContextSwitch:
	.space	4
	.global	uiTraceTickCount
	.section	.bss.uiTraceTickCount,"aw",%nobits
	.align	2
	.type	uiTraceTickCount, %object
	.size	uiTraceTickCount, 4
uiTraceTickCount:
	.space	4
	.global	timestampFrequency
	.section	.bss.timestampFrequency,"aw",%nobits
	.align	2
	.type	timestampFrequency, %object
	.size	timestampFrequency, 4
timestampFrequency:
	.space	4
	.global	DroppedEventCounter
	.section	.bss.DroppedEventCounter,"aw",%nobits
	.align	2
	.type	DroppedEventCounter, %object
	.size	DroppedEventCounter, 4
DroppedEventCounter:
	.space	4
	.global	TotalBytesRemaining_LowWaterMark
	.section	.data.TotalBytesRemaining_LowWaterMark,"aw"
	.align	2
	.type	TotalBytesRemaining_LowWaterMark, %object
	.size	TotalBytesRemaining_LowWaterMark, 4
TotalBytesRemaining_LowWaterMark:
	.word	5000
	.global	TotalBytesRemaining
	.section	.data.TotalBytesRemaining,"aw"
	.align	2
	.type	TotalBytesRemaining, %object
	.size	TotalBytesRemaining, 4
TotalBytesRemaining:
	.word	5000
	.global	PageInfo
	.section	.bss.PageInfo,"aw",%nobits
	.align	2
	.type	PageInfo, %object
	.size	PageInfo, 16
PageInfo:
	.space	16
	.global	EventBuffer
	.section	.bss.EventBuffer,"aw",%nobits
	.align	2
	.type	EventBuffer, %object
	.size	EventBuffer, 4
EventBuffer:
	.space	4
	.global	NoRoomForSymbol
	.section	.bss.NoRoomForSymbol,"aw",%nobits
	.align	2
	.type	NoRoomForSymbol, %object
	.size	NoRoomForSymbol, 4
NoRoomForSymbol:
	.space	4
	.global	NoRoomForObjectData
	.section	.bss.NoRoomForObjectData,"aw",%nobits
	.align	2
	.type	NoRoomForObjectData, %object
	.size	NoRoomForObjectData, 4
NoRoomForObjectData:
	.space	4
	.global	LongestSymbolName
	.section	.bss.LongestSymbolName,"aw",%nobits
	.align	2
	.type	LongestSymbolName, %object
	.size	LongestSymbolName, 4
LongestSymbolName:
	.space	4
	.global	MaxBytesTruncated
	.section	.bss.MaxBytesTruncated,"aw",%nobits
	.align	2
	.type	MaxBytesTruncated, %object
	.size	MaxBytesTruncated, 4
MaxBytesTruncated:
	.space	4
	.global	CurrentFilterMask
	.section	.data.CurrentFilterMask,"aw"
	.align	1
	.type	CurrentFilterMask, %object
	.size	CurrentFilterMask, 2
CurrentFilterMask:
	.short	-1
	.global	CurrentFilterGroup
	.section	.data.CurrentFilterGroup,"aw"
	.align	1
	.type	CurrentFilterGroup, %object
	.size	CurrentFilterGroup, 2
CurrentFilterGroup:
	.short	1
	.section	.text.vTraceInstanceFinishedNow,"ax",%progbits
	.align	1
	.global	vTraceInstanceFinishedNow
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vTraceInstanceFinishedNow, %function
vTraceInstanceFinishedNow:
.LFB200:
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\TraceRecorder\\trcStreamingRecorder.c"
	.loc 2 302 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI0:
	.loc 2 303 2
	movs	r0, #61
	bl	prvTraceStoreEvent0
	.loc 2 304 1
	nop
	pop	{r3, pc}
.LFE200:
	.size	vTraceInstanceFinishedNow, .-vTraceInstanceFinishedNow
	.section	.text.vTraceInstanceFinishedNext,"ax",%progbits
	.align	1
	.global	vTraceInstanceFinishedNext
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vTraceInstanceFinishedNext, %function
vTraceInstanceFinishedNext:
.LFB201:
	.loc 2 318 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI1:
	.loc 2 319 2
	movs	r0, #60
	bl	prvTraceStoreEvent0
	.loc 2 320 1
	nop
	pop	{r3, pc}
.LFE201:
	.size	vTraceInstanceFinishedNext, .-vTraceInstanceFinishedNext
	.section	.text.vTraceStoreKernelObjectName,"ax",%progbits
	.align	1
	.global	vTraceStoreKernelObjectName
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vTraceStoreKernelObjectName, %function
vTraceStoreKernelObjectName:
.LFB202:
	.loc 2 331 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI2:
	sub	sp, sp, #12
.LCFI3:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 2 333 2
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	prvTraceSaveSymbol
	.loc 2 335 2
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	movs	r1, #3
	movs	r0, #1
	bl	prvTraceStoreStringEvent
	.loc 2 336 1
	nop
	add	sp, sp, #12
.LCFI4:
	@ sp needed
	ldr	pc, [sp], #4
.LFE202:
	.size	vTraceStoreKernelObjectName, .-vTraceStoreKernelObjectName
	.section	.text.vTraceSetFrequency,"ax",%progbits
	.align	1
	.global	vTraceSetFrequency
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vTraceSetFrequency, %function
vTraceSetFrequency:
.LFB203:
	.loc 2 350 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI5:
	str	r0, [sp, #4]
	.loc 2 351 21
	ldr	r2, .L48
	ldr	r3, [sp, #4]
	str	r3, [r2]
	.loc 2 352 1
	nop
	add	sp, sp, #8
.LCFI6:
	@ sp needed
	bx	lr
.L49:
	.align	2
.L48:
	.word	timestampFrequency
.LFE203:
	.size	vTraceSetFrequency, .-vTraceSetFrequency
	.section	.text.xTraceRegisterString,"ax",%progbits
	.align	1
	.global	xTraceRegisterString
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	xTraceRegisterString, %function
xTraceRegisterString:
.LFB204:
	.loc 2 362 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI7:
	sub	sp, sp, #12
.LCFI8:
	str	r0, [sp, #4]
	.loc 2 363 2
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #4]
	bl	prvTraceSaveSymbol
	.loc 2 366 2
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #4]
	movs	r1, #3
	movs	r0, #1
	bl	prvTraceStoreStringEvent
	.loc 2 368 9
	ldr	r3, [sp, #4]
	.loc 2 369 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI9:
	@ sp needed
	ldr	pc, [sp], #4
.LFE204:
	.size	xTraceRegisterString, .-xTraceRegisterString
	.section	.text.vTracePrint,"ax",%progbits
	.align	1
	.global	vTracePrint
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vTracePrint, %function
vTracePrint:
.LFB205:
	.loc 2 397 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI10:
	sub	sp, sp, #12
.LCFI11:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 2 398 2
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	prvTraceStoreSimpleStringEventHelper
	.loc 2 399 1
	nop
	add	sp, sp, #12
.LCFI12:
	@ sp needed
	ldr	pc, [sp], #4
.LFE205:
	.size	vTracePrint, .-vTracePrint
	.section	.text.vTracePrintF,"ax",%progbits
	.align	1
	.global	vTracePrintF
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vTracePrintF, %function
vTracePrintF:
.LFB206:
	.loc 2 448 1
	@ args = 4, pretend = 12, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r1, r2, r3}
.LCFI13:
	push	{lr}
.LCFI14:
	sub	sp, sp, #32
.LCFI15:
	str	r0, [sp, #12]
	.loc 2 450 6
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 2 452 6
	movs	r3, #0
	str	r3, [sp, #24]
	.loc 2 455 9
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 2 455 2
	b	.L54
.L58:
	.loc 2 457 10
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 457 6
	cmp	r3, #37
	bne	.L55
	.loc 2 459 11
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	ldr	r2, [sp, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 459 7
	cmp	r3, #37
	beq	.L56
	.loc 2 461 10
	ldr	r3, [sp, #24]
	adds	r3, r3, #1
	str	r3, [sp, #24]
.L56:
	.loc 2 464 5
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	str	r3, [sp, #28]
.L55:
	.loc 2 455 42 discriminator 2
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	str	r3, [sp, #28]
.L54:
	.loc 2 455 18 discriminator 1
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 455 2 discriminator 1
	cmp	r3, #0
	beq	.L57
	.loc 2 455 28 discriminator 3
	ldr	r3, [sp, #28]
	cmp	r3, #51
	ble	.L58
.L57:
	.loc 2 468 1
	add	r3, sp, #40
	str	r3, [sp, #20]
	.loc 2 470 5
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L59
	.loc 2 472 3
	ldr	r3, [sp, #24]
	uxth	r3, r3
	adds	r3, r3, #145
	uxth	r1, r3
	add	r3, sp, #20
	str	r3, [sp]
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #12]
	ldr	r0, [sp, #24]
	bl	prvTraceStoreStringEventHelper
	.loc 2 479 1
	b	.L61
.L59:
	.loc 2 476 3
	ldr	r3, [sp, #24]
	uxth	r3, r3
	adds	r3, r3, #144
	uxth	r1, r3
	add	r3, sp, #20
	str	r3, [sp]
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #12]
	ldr	r0, [sp, #24]
	bl	prvTraceStoreStringEventHelper
.L61:
	.loc 2 479 1
	nop
	add	sp, sp, #32
.LCFI16:
	@ sp needed
	ldr	lr, [sp], #4
.LCFI17:
	add	sp, sp, #12
.LCFI18:
	bx	lr
.LFE206:
	.size	vTracePrintF, .-vTracePrintF
	.section	.text.xTraceSetISRProperties,"ax",%progbits
	.align	1
	.global	xTraceSetISRProperties
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	xTraceSetISRProperties, %function
xTraceSetISRProperties:
.LFB207:
	.loc 2 502 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI19:
	sub	sp, sp, #20
.LCFI20:
	str	r0, [sp, #12]
	mov	r3, r1
	strb	r3, [sp, #11]
	.loc 2 504 2
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	prvTraceSaveObjectData
	.loc 2 507 2
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	str	r3, [sp]
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #12]
	movs	r1, #7
	movs	r0, #2
	bl	prvTraceStoreStringEvent
	.loc 2 510 2
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #12]
	bl	prvTraceSaveSymbol
	.loc 2 512 9
	ldr	r3, [sp, #12]
	.loc 2 513 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI21:
	@ sp needed
	ldr	pc, [sp], #4
.LFE207:
	.size	xTraceSetISRProperties, .-xTraceSetISRProperties
	.section	.text.vTraceStoreISRBegin,"ax",%progbits
	.align	1
	.global	vTraceStoreISRBegin
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vTraceStoreISRBegin, %function
vTraceStoreISRBegin:
.LFB208:
	.loc 2 535 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI22:
	sub	sp, sp, #36
.LCFI23:
	str	r0, [sp, #4]
.LBB136:
.LBB137:
	.file 3 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #20]
	.loc 3 204 9
	ldr	r3, [sp, #20]
.LBE137:
.LBE136:
	.loc 2 538 18
	str	r3, [sp, #28]
	movs	r3, #1
	str	r3, [sp, #24]
.LBB138:
.LBB139:
	.loc 3 215 3
	ldr	r3, [sp, #24]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE139:
.LBE138:
	.loc 2 542 22
	ldr	r3, .L69
	ldrsb	r3, [r3]
	.loc 2 542 5
	cmp	r3, #-1
	bne	.L66
	.loc 2 543 26
	ldr	r3, .L69+4
	movs	r2, #0
	str	r2, [r3]
.L66:
	.loc 2 545 22
	ldr	r3, .L69
	ldrsb	r3, [r3]
	.loc 2 545 5
	cmp	r3, #6
	bgt	.L67
	.loc 2 547 18
	ldr	r3, .L69
	ldrsb	r3, [r3]
	uxtb	r3, r3
	adds	r3, r3, #1
	uxtb	r3, r3
	sxtb	r2, r3
	ldr	r3, .L69
	strb	r2, [r3]
	.loc 2 548 12
	ldr	r3, .L69
	ldrsb	r3, [r3]
	mov	r1, r3
	.loc 2 548 32
	ldr	r3, [sp, #4]
	.loc 2 548 30
	ldr	r2, .L69+8
	str	r3, [r2, r1, lsl #2]
	.loc 2 550 3
	ldr	r3, [sp, #4]
	mov	r1, r3
	movs	r0, #51
	bl	prvTraceStoreEvent1
	ldr	r3, [sp, #28]
	str	r3, [sp, #16]
.LBB140:
.LBB141:
	.loc 3 215 3
	ldr	r3, [sp, #16]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	b	.L68
.L67:
	ldr	r3, [sp, #28]
	str	r3, [sp, #12]
.LBE141:
.LBE140:
.LBB142:
.LBB143:
	.loc 3 215 3
	ldr	r3, [sp, #12]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE143:
.LBE142:
	.loc 2 557 3
	movs	r0, #2
	bl	prvTraceError
	.loc 2 559 1
	nop
.L68:
	nop
	add	sp, sp, #36
.LCFI24:
	@ sp needed
	ldr	pc, [sp], #4
.L70:
	.align	2
.L69:
	.word	ISR_stack_index
	.word	isPendingContextSwitch
	.word	ISR_stack
.LFE208:
	.size	vTraceStoreISRBegin, .-vTraceStoreISRBegin
	.section	.text.vTraceStoreISREnd,"ax",%progbits
	.align	1
	.global	vTraceStoreISREnd
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vTraceStoreISREnd, %function
vTraceStoreISREnd:
.LFB209:
	.loc 2 585 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI25:
	sub	sp, sp, #28
.LCFI26:
	str	r0, [sp, #4]
.LBB144:
.LBB145:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #12]
	.loc 3 204 9
	ldr	r3, [sp, #12]
.LBE145:
.LBE144:
	.loc 2 588 18
	str	r3, [sp, #20]
	movs	r3, #1
	str	r3, [sp, #16]
.LBB146:
.LBB147:
	.loc 3 215 3
	ldr	r3, [sp, #16]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE147:
.LBE146:
	.loc 2 593 25
	ldr	r3, .L76
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	orrs	r3, r3, r2
	ldr	r2, .L76
	str	r3, [r2]
	.loc 2 595 22
	ldr	r3, .L76+4
	ldrsb	r3, [r3]
	.loc 2 595 5
	cmp	r3, #0
	ble	.L73
	.loc 2 597 18
	ldr	r3, .L76+4
	ldrsb	r3, [r3]
	uxtb	r3, r3
	subs	r3, r3, #1
	uxtb	r3, r3
	sxtb	r2, r3
	ldr	r3, .L76+4
	strb	r2, [r3]
	.loc 2 601 3
	ldr	r3, .L76+4
	ldrsb	r3, [r3]
	mov	r2, r3
	.loc 2 601 48
	ldr	r3, .L76+8
	ldr	r3, [r3, r2, lsl #2]
	.loc 2 601 3
	mov	r1, r3
	movs	r0, #52
	bl	prvTraceStoreEvent1
	b	.L74
.L73:
	.loc 2 606 18
	ldr	r3, .L76+4
	ldrsb	r3, [r3]
	uxtb	r3, r3
	subs	r3, r3, #1
	uxtb	r3, r3
	sxtb	r2, r3
	ldr	r3, .L76+4
	strb	r2, [r3]
	.loc 2 609 31
	ldr	r3, .L76
	ldr	r3, [r3]
	.loc 2 609 6
	cmp	r3, #0
	beq	.L75
	.loc 2 609 41 discriminator 1
	bl	prvTraceIsSchedulerSuspended
	mov	r3, r0
	.loc 2 609 37 discriminator 1
	cmp	r3, #0
	beq	.L74
.L75:
	.loc 2 612 40
	bl	prvTraceGetCurrentTaskHandle
	mov	r3, r0
	.loc 2 612 4
	mov	r1, r3
	movs	r0, #54
	bl	prvTraceStoreEvent1
.L74:
	ldr	r3, [sp, #20]
	str	r3, [sp, #8]
.LBB148:
.LBB149:
	.loc 3 215 3
	ldr	r3, [sp, #8]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE149:
.LBE148:
	.loc 2 618 1
	nop
	add	sp, sp, #28
.LCFI27:
	@ sp needed
	ldr	pc, [sp], #4
.L77:
	.align	2
.L76:
	.word	isPendingContextSwitch
	.word	ISR_stack_index
	.word	ISR_stack
.LFE209:
	.size	vTraceStoreISREnd, .-vTraceStoreISREnd
	.section .rodata
	.align	2
.LC0:
	.ascii	"Exceeded SYMBOL_TABLE_SLOTS (see xTraceGetLastError"
	.ascii	")\000"
	.align	2
.LC1:
	.ascii	"Exceeded SYMBOL_MAX_LENGTH (see xTraceGetLastError)"
	.ascii	"\000"
	.align	2
.LC2:
	.ascii	"Exceeded OBJECT_DATA_SLOTS (see xTraceGetLastError)"
	.ascii	"\000"
	.align	2
.LC3:
	.ascii	"String too long (see xTraceGetLastError)\000"
	.align	2
.LC4:
	.ascii	"TRC_STREAM_PORT_READ_DATA returned error (!= 0).\000"
	.align	2
.LC5:
	.ascii	"TRC_STREAM_PORT_WRITE_DATA returned error (!= 0).\000"
	.align	2
.LC6:
	.ascii	"Invalid event code (see xTraceGetLastError)\000"
	.align	2
.LC7:
	.ascii	"Exceeded ISR nesting (see xTraceGetLastError)\000"
	.align	2
.LC8:
	.ascii	"DWT not supported (see xTraceGetLastError)\000"
	.align	2
.LC9:
	.ascii	"DWT_CYCCNT not supported (see xTraceGetLastError)\000"
	.align	2
.LC10:
	.ascii	"Could not create TzCtrl (see xTraceGetLastError)\000"
	.section	.text.xTraceGetLastError,"ax",%progbits
	.align	1
	.global	xTraceGetLastError
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	xTraceGetLastError, %function
xTraceGetLastError:
.LFB210:
	.loc 2 627 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 631 2
	ldr	r3, .L97
	ldr	r3, [r3]
	cmp	r3, #5
	bgt	.L79
	cmp	r3, #0
	bgt	.L80
	b	.L81
.L95:
	subs	r3, r3, #101
	cmp	r3, #5
	bhi	.L81
	adr	r2, .L83
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L83:
	.word	.L88+1
	.word	.L87+1
	.word	.L86+1
	.word	.L85+1
	.word	.L84+1
	.word	.L82+1
	.p2align 1
.L80:
	subs	r3, r3, #1
	cmp	r3, #4
	bhi	.L81
	adr	r2, .L90
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L90:
	.word	.L94+1
	.word	.L93+1
	.word	.L92+1
	.word	.L91+1
	.word	.L89+1
	.p2align 1
.L79:
	cmp	r3, #106
	bgt	.L81
	cmp	r3, #101
	bge	.L95
	b	.L81
.L88:
	.loc 2 639 10
	ldr	r3, .L97+4
	b	.L96
.L87:
	.loc 2 647 10
	ldr	r3, .L97+8
	b	.L96
.L86:
	.loc 2 655 10
	ldr	r3, .L97+12
	b	.L96
.L85:
	.loc 2 673 10
	ldr	r3, .L97+16
	b	.L96
.L84:
	.loc 2 679 10
	ldr	r3, .L97+20
	b	.L96
.L82:
	.loc 2 685 10
	ldr	r3, .L97+24
	b	.L96
.L94:
	.loc 2 691 10
	ldr	r3, .L97+28
	b	.L96
.L93:
	.loc 2 698 10
	ldr	r3, .L97+32
	b	.L96
.L92:
	.loc 2 706 10
	ldr	r3, .L97+36
	b	.L96
.L91:
	.loc 2 714 10
	ldr	r3, .L97+40
	b	.L96
.L89:
	.loc 2 719 10
	ldr	r3, .L97+44
	b	.L96
.L81:
	.loc 2 723 8
	movs	r3, #0
.L96:
	.loc 2 724 1
	mov	r0, r3
	bx	lr
.L98:
	.align	2
.L97:
	.word	errorCode
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
.LFE210:
	.size	xTraceGetLastError, .-xTraceGetLastError
	.section	.text.vTraceClearError,"ax",%progbits
	.align	1
	.global	vTraceClearError
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vTraceClearError, %function
vTraceClearError:
.LFB211:
	.loc 2 732 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 733 18
	ldr	r3, .L100
	movs	r2, #0
	str	r2, [r3]
	.loc 2 734 20
	ldr	r3, .L100+4
	movs	r2, #0
	str	r2, [r3]
	.loc 2 735 22
	ldr	r3, .L100+8
	movs	r2, #0
	str	r2, [r3]
	.loc 2 736 20
	ldr	r3, .L100+12
	movs	r2, #0
	str	r2, [r3]
	.loc 2 737 12
	ldr	r3, .L100+16
	movs	r2, #0
	str	r2, [r3]
	.loc 2 738 1
	nop
	bx	lr
.L101:
	.align	2
.L100:
	.word	NoRoomForSymbol
	.word	LongestSymbolName
	.word	NoRoomForObjectData
	.word	MaxBytesTruncated
	.word	errorCode
.LFE211:
	.size	vTraceClearError, .-vTraceClearError
	.section	.text.vTraceStop,"ax",%progbits
	.align	1
	.global	vTraceStop
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vTraceStop, %function
vTraceStop:
.LFB212:
	.loc 2 746 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI28:
	.loc 2 747 2
	movs	r0, #0
	bl	prvSetRecorderEnabled
	.loc 2 748 1
	nop
	pop	{r3, pc}
.LFE212:
	.size	vTraceStop, .-vTraceStop
	.section	.text.xTraceIsRecordingEnabled,"ax",%progbits
	.align	1
	.global	xTraceIsRecordingEnabled
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	xTraceIsRecordingEnabled, %function
xTraceIsRecordingEnabled:
.LFB213:
	.loc 2 772 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 773 9
	ldr	r3, .L105
	ldr	r3, [r3]
	.loc 2 774 1
	mov	r0, r3
	bx	lr
.L106:
	.align	2
.L105:
	.word	RecorderEnabled
.LFE213:
	.size	xTraceIsRecordingEnabled, .-xTraceIsRecordingEnabled
	.section	.text.vTraceSetFilterMask,"ax",%progbits
	.align	1
	.global	vTraceSetFilterMask
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vTraceSetFilterMask, %function
vTraceSetFilterMask:
.LFB214:
	.loc 2 777 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI29:
	mov	r3, r0
	strh	r3, [sp, #6]	@ movhi
	.loc 2 778 20
	ldr	r2, .L108
	ldrh	r3, [sp, #6]	@ movhi
	strh	r3, [r2]	@ movhi
	.loc 2 779 1
	nop
	add	sp, sp, #8
.LCFI30:
	@ sp needed
	bx	lr
.L109:
	.align	2
.L108:
	.word	CurrentFilterMask
.LFE214:
	.size	vTraceSetFilterMask, .-vTraceSetFilterMask
	.section	.text.vTraceSetFilterGroup,"ax",%progbits
	.align	1
	.global	vTraceSetFilterGroup
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vTraceSetFilterGroup, %function
vTraceSetFilterGroup:
.LFB215:
	.loc 2 782 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI31:
	mov	r3, r0
	strh	r3, [sp, #6]	@ movhi
	.loc 2 783 21
	ldr	r2, .L111
	ldrh	r3, [sp, #6]	@ movhi
	strh	r3, [r2]	@ movhi
	.loc 2 784 1
	nop
	add	sp, sp, #8
.LCFI32:
	@ sp needed
	bx	lr
.L112:
	.align	2
.L111:
	.word	CurrentFilterGroup
.LFE215:
	.size	vTraceSetFilterGroup, .-vTraceSetFilterGroup
	.section	.text.prvSetRecorderEnabled,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvSetRecorderEnabled, %function
prvSetRecorderEnabled:
.LFB216:
	.loc 2 793 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI33:
	sub	sp, sp, #32
.LCFI34:
	str	r0, [sp, #4]
	.loc 2 798 22
	ldr	r3, .L120
	ldr	r3, [r3]
	.loc 2 798 5
	ldr	r2, [sp, #4]
	cmp	r2, r3
	beq	.L119
	.loc 2 803 16
	bl	prvTraceGetCurrentTaskHandle
	str	r0, [sp, #28]
.LBB150:
.LBB151:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #16]
	.loc 3 204 9
	ldr	r3, [sp, #16]
.LBE151:
.LBE150:
	.loc 2 805 18
	str	r3, [sp, #24]
	movs	r3, #1
	str	r3, [sp, #20]
.LBB152:
.LBB153:
	.loc 3 215 3
	ldr	r3, [sp, #20]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE153:
.LBE152:
	.loc 2 807 21
	ldr	r2, .L120
	ldr	r3, [sp, #4]
	str	r3, [r2]
	.loc 2 809 8
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bne	.L117
	.loc 2 811 15
	movs	r3, #2
	str	r3, [sp, #28]
.L117:
	.loc 2 814 6
	ldr	r3, .L120
	ldr	r3, [r3]
	.loc 2 814 5
	cmp	r3, #0
	beq	.L118
	.loc 2 822 20
	ldr	r3, .L120+4
	movs	r2, #0
	str	r2, [r3]
	.loc 2 823 25
	ldr	r3, .L120+8
	movs	r2, #255
	strb	r2, [r3]
	.loc 2 824 9
	bl	prvTraceStoreHeader
	.loc 2 825 3
	bl	prvTraceStoreSymbolTable
	.loc 2 826 6
	bl	prvTraceStoreObjectDataTable
	.loc 2 827 9
	ldr	r3, .L120+12
	ldr	r1, [r3]
	ldr	r0, [sp, #28]
	ldr	r3, .L120+16
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r4, .L120+16
	str	r2, [r4]
	mov	r2, r0
	movs	r0, #1
	bl	prvTraceStoreEvent3
	.loc 2 831 9
	bl	prvTraceStoreTSConfig
	.loc 2 832 3
	bl	prvTraceStoreWarnings
.L118:
	ldr	r3, [sp, #24]
	str	r3, [sp, #12]
.LBB154:
.LBB155:
	.loc 3 215 3
	ldr	r3, [sp, #12]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	b	.L113
.L119:
.LBE155:
.LBE154:
	.loc 2 800 3
	nop
.L113:
	.loc 2 840 1
	add	sp, sp, #32
.LCFI35:
	@ sp needed
	pop	{r4, pc}
.L121:
	.align	2
.L120:
	.word	RecorderEnabled
	.word	eventCounter
	.word	ISR_stack_index
	.word	uiTraceTickCount
	.word	SessionCounter
.LFE216:
	.size	prvSetRecorderEnabled, .-prvSetRecorderEnabled
	.section	.text.prvTraceStoreSymbolTable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceStoreSymbolTable, %function
prvTraceStoreSymbolTable:
.LFB217:
	.loc 2 844 1
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI36:
	sub	sp, sp, #68
.LCFI37:
	.loc 2 845 11
	movs	r3, #0
	str	r3, [sp, #60]
	.loc 2 846 11
	movs	r3, #0
	str	r3, [sp, #56]
.LBB156:
.LBB157:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #40]
	.loc 3 204 9
	ldr	r3, [sp, #40]
.LBE157:
.LBE156:
	.loc 2 849 18
	str	r3, [sp, #52]
	movs	r3, #1
	str	r3, [sp, #44]
.LBB158:
.LBB159:
	.loc 3 215 3
	ldr	r3, [sp, #44]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE159:
.LBE158:
	.loc 2 851 6
	ldr	r3, .L130
	ldr	r3, [r3]
	.loc 2 851 5
	cmp	r3, #0
	beq	.L124
	.loc 2 853 10
	movs	r3, #0
	str	r3, [sp, #60]
	.loc 2 853 3
	b	.L125
.L129:
.LBB160:
	.loc 2 855 148
	add	r3, sp, #4
	str	r3, [sp, #48]
	.loc 2 856 16
	ldr	r3, [sp, #48]
	cmp	r3, #0
	beq	.L126
	.loc 2 858 24
	movs	r3, #0
	str	r3, [sp, #56]
	.loc 2 858 17
	b	.L127
.L128:
	.loc 2 860 91 discriminator 3
	ldr	r2, [sp, #60]
	ldr	r3, [sp, #56]
	add	r2, r2, r3
	.loc 2 860 29 discriminator 3
	ldr	r3, [sp, #56]
	lsls	r3, r3, #2
	ldr	r1, [sp, #48]
	add	r3, r3, r1
	.loc 2 860 89 discriminator 3
	ldr	r1, .L130+4
	ldr	r2, [r1, r2, lsl #2]
	.loc 2 860 33 discriminator 3
	str	r2, [r3]
	.loc 2 858 141 discriminator 3
	ldr	r3, [sp, #56]
	adds	r3, r3, #1
	str	r3, [sp, #56]
.L127:
	.loc 2 858 17 discriminator 1
	ldr	r3, [sp, #56]
	cmp	r3, #7
	bls	.L128
	.loc 2 862 14
	movs	r2, #0
	movs	r1, #32
	ldr	r0, [sp, #48]
	bl	writeToRTT
	mov	r3, r0
	.loc 2 862 13
	cmp	r3, #0
	beq	.L126
	.loc 2 862 126 discriminator 1
	movs	r0, #106
	bl	prvTraceWarning
.L126:
.LBE160:
	.loc 2 853 63 discriminator 2
	ldr	r3, [sp, #60]
	adds	r3, r3, #8
	str	r3, [sp, #60]
.L125:
	.loc 2 853 3 discriminator 1
	ldr	r3, [sp, #60]
	cmp	r3, #320
	bcc	.L129
.L124:
	ldr	r3, [sp, #52]
	str	r3, [sp, #36]
.LBB161:
.LBB162:
	.loc 3 215 3
	ldr	r3, [sp, #36]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE162:
.LBE161:
	.loc 2 867 1
	nop
	add	sp, sp, #68
.LCFI38:
	@ sp needed
	ldr	pc, [sp], #4
.L131:
	.align	2
.L130:
	.word	RecorderEnabled
	.word	symbolTable
.LFE217:
	.size	prvTraceStoreSymbolTable, .-prvTraceStoreSymbolTable
	.section	.text.prvTraceStoreObjectDataTable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceStoreObjectDataTable, %function
prvTraceStoreObjectDataTable:
.LFB218:
	.loc 2 871 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI39:
	sub	sp, sp, #44
.LCFI40:
	.loc 2 872 11
	movs	r3, #0
	str	r3, [sp, #36]
	.loc 2 873 11
	movs	r3, #0
	str	r3, [sp, #32]
.LBB163:
.LBB164:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #16]
	.loc 3 204 9
	ldr	r3, [sp, #16]
.LBE164:
.LBE163:
	.loc 2 876 18
	str	r3, [sp, #28]
	movs	r3, #1
	str	r3, [sp, #20]
.LBB165:
.LBB166:
	.loc 3 215 3
	ldr	r3, [sp, #20]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE166:
.LBE165:
	.loc 2 878 6
	ldr	r3, .L140
	ldr	r3, [r3]
	.loc 2 878 5
	cmp	r3, #0
	beq	.L134
	.loc 2 880 10
	movs	r3, #0
	str	r3, [sp, #36]
	.loc 2 880 3
	b	.L135
.L139:
.LBB167:
	.loc 2 882 101
	add	r3, sp, #4
	str	r3, [sp, #24]
	.loc 2 883 16
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L136
	.loc 2 885 24
	movs	r3, #0
	str	r3, [sp, #32]
	.loc 2 885 17
	b	.L137
.L138:
	.loc 2 887 103 discriminator 3
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #32]
	add	r2, r2, r3
	.loc 2 887 29 discriminator 3
	ldr	r3, [sp, #32]
	lsls	r3, r3, #2
	ldr	r1, [sp, #24]
	add	r3, r3, r1
	.loc 2 887 101 discriminator 3
	ldr	r1, .L140+4
	ldr	r2, [r1, r2, lsl #2]
	.loc 2 887 33 discriminator 3
	str	r2, [r3]
	.loc 2 885 94 discriminator 3
	ldr	r3, [sp, #32]
	adds	r3, r3, #1
	str	r3, [sp, #32]
.L137:
	.loc 2 885 17 discriminator 1
	ldr	r3, [sp, #32]
	cmp	r3, #1
	bls	.L138
	.loc 2 889 23
	movs	r2, #0
	movs	r1, #8
	ldr	r0, [sp, #24]
	bl	writeToRTT
	mov	r3, r0
	.loc 2 889 22
	cmp	r3, #0
	beq	.L136
	.loc 2 889 88 discriminator 1
	movs	r0, #106
	bl	prvTraceWarning
.L136:
.LBE167:
	.loc 2 880 67 discriminator 2
	ldr	r3, [sp, #36]
	adds	r3, r3, #2
	str	r3, [sp, #36]
.L135:
	.loc 2 880 3 discriminator 1
	ldr	r3, [sp, #36]
	cmp	r3, #79
	bls	.L139
.L134:
	ldr	r3, [sp, #28]
	str	r3, [sp, #12]
.LBB168:
.LBB169:
	.loc 3 215 3
	ldr	r3, [sp, #12]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE169:
.LBE168:
	.loc 2 894 1
	nop
	add	sp, sp, #44
.LCFI41:
	@ sp needed
	ldr	pc, [sp], #4
.L141:
	.align	2
.L140:
	.word	RecorderEnabled
	.word	objectDataTable
.LFE218:
	.size	prvTraceStoreObjectDataTable, .-prvTraceStoreObjectDataTable
	.section	.text.prvTraceStoreHeader,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceStoreHeader, %function
prvTraceStoreHeader:
.LFB219:
	.loc 2 898 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI42:
	sub	sp, sp, #44
.LCFI43:
.LBB170:
.LBB171:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #24]
	.loc 3 204 9
	ldr	r3, [sp, #24]
.LBE171:
.LBE170:
	.loc 2 901 18
	str	r3, [sp, #36]
	movs	r3, #1
	str	r3, [sp, #28]
.LBB172:
.LBB173:
	.loc 3 215 3
	ldr	r3, [sp, #28]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE173:
.LBE172:
	.loc 2 903 6
	ldr	r3, .L146
	ldr	r3, [r3]
	.loc 2 903 5
	cmp	r3, #0
	beq	.L144
.LBB174:
	.loc 2 905 92
	mov	r3, sp
	str	r3, [sp, #32]
	.loc 2 906 6
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L144
	.loc 2 908 16
	ldr	r3, .L146+4
	ldr	r2, [r3]
	ldr	r3, [sp, #32]
	str	r2, [r3]
	.loc 2 909 20
	ldr	r3, .L146+8
	ldrh	r2, [r3]
	ldr	r3, [sp, #32]
	strh	r2, [r3, #4]	@ movhi
	.loc 2 910 21
	ldr	r3, [sp, #32]
	movw	r2, #6817
	strh	r2, [r3, #6]	@ movhi
	.loc 2 911 29
	ldr	r3, [sp, #32]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 2 913 47
	ldr	r3, [sp, #32]
	ldr	r2, [r3, #8]
	.loc 2 913 29
	ldr	r3, [sp, #32]
	str	r2, [r3, #8]
	.loc 2 914 23
	ldr	r3, [sp, #32]
	movs	r2, #32
	strh	r2, [r3, #12]	@ movhi
	.loc 2 915 24
	ldr	r3, [sp, #32]
	movs	r2, #40
	strh	r2, [r3, #14]	@ movhi
	.loc 2 916 27
	ldr	r3, [sp, #32]
	movs	r2, #8
	strh	r2, [r3, #16]	@ movhi
	.loc 2 917 28
	ldr	r3, [sp, #32]
	movs	r2, #40
	strh	r2, [r3, #18]	@ movhi
	.loc 2 918 10
	movs	r2, #0
	movs	r1, #20
	ldr	r0, [sp, #32]
	bl	writeToRTT
	mov	r3, r0
	.loc 2 918 9
	cmp	r3, #0
	beq	.L144
	.loc 2 918 61 discriminator 1
	movs	r0, #106
	bl	prvTraceWarning
.L144:
	ldr	r3, [sp, #36]
	str	r3, [sp, #20]
.LBE174:
.LBB175:
.LBB176:
	.loc 3 215 3
	ldr	r3, [sp, #20]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE176:
.LBE175:
	.loc 2 922 1
	nop
	add	sp, sp, #44
.LCFI44:
	@ sp needed
	ldr	pc, [sp], #4
.L147:
	.align	2
.L146:
	.word	RecorderEnabled
	.word	PSFEndianessIdentifier
	.word	FormatVersion
.LFE219:
	.size	prvTraceStoreHeader, .-prvTraceStoreHeader
	.section	.text.prvTraceStoreWarnings,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceStoreWarnings, %function
prvTraceStoreWarnings:
.LFB220:
	.loc 2 926 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI45:
	sub	sp, sp, #12
.LCFI46:
	.loc 2 927 6
	ldr	r3, .L151
	ldr	r3, [r3]
	.loc 2 927 5
	cmp	r3, #0
	beq	.L150
.LBB177:
	.loc 2 929 24
	bl	xTraceGetLastError
	str	r0, [sp, #4]
	.loc 2 931 6
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L150
	.loc 2 933 4
	ldr	r3, .L151+4
	ldr	r3, [r3]
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	vTracePrint
.L150:
.LBE177:
	.loc 2 936 1
	nop
	add	sp, sp, #12
.LCFI47:
	@ sp needed
	ldr	pc, [sp], #4
.L152:
	.align	2
.L151:
	.word	RecorderEnabled
	.word	trcWarningChannel
.LFE220:
	.size	prvTraceStoreWarnings, .-prvTraceStoreWarnings
	.section	.text.prvTraceStoreEvent0,"ax",%progbits
	.align	1
	.global	prvTraceStoreEvent0
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceStoreEvent0, %function
prvTraceStoreEvent0:
.LFB221:
	.loc 2 940 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI48:
	sub	sp, sp, #44
.LCFI49:
	mov	r3, r0
	strh	r3, [sp, #6]	@ movhi
	.loc 2 943 5
	ldrh	r3, [sp, #6]
	cmp	r3, #4096
	bcc	.L154
	.loc 2 943 27 discriminator 1
	movs	r0, #1
	bl	prvTraceError
	.loc 2 943 45 discriminator 1
	b	.L153
.L154:
.LBB178:
.LBB179:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #24]
	.loc 3 204 9
	ldr	r3, [sp, #24]
.LBE179:
.LBE178:
	.loc 2 945 18
	str	r3, [sp, #36]
	movs	r3, #1
	str	r3, [sp, #28]
.LBB180:
.LBB181:
	.loc 3 215 3
	ldr	r3, [sp, #28]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE181:
.LBE180:
	.loc 2 947 6
	ldr	r3, .L159
	ldr	r3, [r3]
	.loc 2 947 5
	cmp	r3, #0
	beq	.L157
	.loc 2 949 15
	ldr	r3, .L159+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L159+4
	str	r3, [r2]
.LBB182:
	.loc 2 952 75
	add	r3, sp, #12
	str	r3, [sp, #32]
	.loc 2 953 7
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L157
	.loc 2 955 20
	ldr	r3, [sp, #32]
	ldrh	r2, [sp, #6]	@ movhi
	strh	r2, [r3]	@ movhi
	.loc 2 956 25
	ldr	r3, .L159+4
	ldr	r3, [r3]
	uxth	r2, r3
	.loc 2 956 23
	ldr	r3, [sp, #32]
	strh	r2, [r3, #2]	@ movhi
	.loc 2 957 17
	bl	prvGetTimestamp32
	mov	r2, r0
	.loc 2 957 15
	ldr	r3, [sp, #32]
	str	r2, [r3, #4]
	.loc 2 958 11
	movs	r2, #0
	movs	r1, #8
	ldr	r0, [sp, #32]
	bl	writeToRTT
	mov	r3, r0
	.loc 2 958 10
	cmp	r3, #0
	beq	.L157
	.loc 2 958 57 discriminator 1
	movs	r0, #106
	bl	prvTraceWarning
.L157:
	ldr	r3, [sp, #36]
	str	r3, [sp, #20]
.LBE182:
.LBB183:
.LBB184:
	.loc 3 215 3
	ldr	r3, [sp, #20]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.L153:
.LBE184:
.LBE183:
	.loc 2 963 1
	add	sp, sp, #44
.LCFI50:
	@ sp needed
	ldr	pc, [sp], #4
.L160:
	.align	2
.L159:
	.word	RecorderEnabled
	.word	eventCounter
.LFE221:
	.size	prvTraceStoreEvent0, .-prvTraceStoreEvent0
	.section	.text.prvTraceStoreEvent1,"ax",%progbits
	.align	1
	.global	prvTraceStoreEvent1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceStoreEvent1, %function
prvTraceStoreEvent1:
.LFB222:
	.loc 2 967 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI51:
	sub	sp, sp, #44
.LCFI52:
	mov	r3, r0
	str	r1, [sp]
	strh	r3, [sp, #6]	@ movhi
	.loc 2 970 5
	ldrh	r3, [sp, #6]
	cmp	r3, #4096
	bcc	.L162
	.loc 2 970 27 discriminator 1
	movs	r0, #1
	bl	prvTraceError
	.loc 2 970 45 discriminator 1
	b	.L161
.L162:
.LBB185:
.LBB186:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #24]
	.loc 3 204 9
	ldr	r3, [sp, #24]
.LBE186:
.LBE185:
	.loc 2 972 18
	str	r3, [sp, #36]
	movs	r3, #1
	str	r3, [sp, #28]
.LBB187:
.LBB188:
	.loc 3 215 3
	ldr	r3, [sp, #28]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE188:
.LBE187:
	.loc 2 974 6
	ldr	r3, .L167
	ldr	r3, [r3]
	.loc 2 974 5
	cmp	r3, #0
	beq	.L165
	.loc 2 976 15
	ldr	r3, .L167+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L167+4
	str	r3, [r2]
.LBB189:
	.loc 2 979 103
	add	r3, sp, #8
	str	r3, [sp, #32]
	.loc 2 980 7
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L165
	.loc 2 982 25
	ldrh	r3, [sp, #6]	@ movhi
	orr	r3, r3, #4096
	uxth	r2, r3
	ldr	r3, [sp, #32]
	strh	r2, [r3]	@ movhi
	.loc 2 983 30
	ldr	r3, .L167+4
	ldr	r3, [r3]
	uxth	r2, r3
	.loc 2 983 28
	ldr	r3, [sp, #32]
	strh	r2, [r3, #2]	@ movhi
	.loc 2 984 22
	bl	prvGetTimestamp32
	mov	r2, r0
	.loc 2 984 20
	ldr	r3, [sp, #32]
	str	r2, [r3, #4]
	.loc 2 985 19
	ldr	r3, [sp, #32]
	ldr	r2, [sp]
	str	r2, [r3, #8]
	.loc 2 986 11
	movs	r2, #0
	movs	r1, #12
	ldr	r0, [sp, #32]
	bl	writeToRTT
	mov	r3, r0
	.loc 2 986 10
	cmp	r3, #0
	beq	.L165
	.loc 2 986 64 discriminator 1
	movs	r0, #106
	bl	prvTraceWarning
.L165:
	ldr	r3, [sp, #36]
	str	r3, [sp, #20]
.LBE189:
.LBB190:
.LBB191:
	.loc 3 215 3
	ldr	r3, [sp, #20]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.L161:
.LBE191:
.LBE190:
	.loc 2 991 1
	add	sp, sp, #44
.LCFI53:
	@ sp needed
	ldr	pc, [sp], #4
.L168:
	.align	2
.L167:
	.word	RecorderEnabled
	.word	eventCounter
.LFE222:
	.size	prvTraceStoreEvent1, .-prvTraceStoreEvent1
	.section	.text.prvTraceStoreEvent2,"ax",%progbits
	.align	1
	.global	prvTraceStoreEvent2
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceStoreEvent2, %function
prvTraceStoreEvent2:
.LFB223:
	.loc 2 995 1
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI54:
	sub	sp, sp, #60
.LCFI55:
	mov	r3, r0
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strh	r3, [sp, #14]	@ movhi
	.loc 2 998 5
	ldrh	r3, [sp, #14]
	cmp	r3, #4096
	bcc	.L170
	.loc 2 998 27 discriminator 1
	movs	r0, #1
	bl	prvTraceError
	.loc 2 998 45 discriminator 1
	b	.L169
.L170:
.LBB192:
.LBB193:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #40]
	.loc 3 204 9
	ldr	r3, [sp, #40]
.LBE193:
.LBE192:
	.loc 2 1000 18
	str	r3, [sp, #52]
	movs	r3, #1
	str	r3, [sp, #44]
.LBB194:
.LBB195:
	.loc 3 215 3
	ldr	r3, [sp, #44]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE195:
.LBE194:
	.loc 2 1002 6
	ldr	r3, .L175
	ldr	r3, [r3]
	.loc 2 1002 5
	cmp	r3, #0
	beq	.L173
	.loc 2 1004 15
	ldr	r3, .L175+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L175+4
	str	r3, [r2]
.LBB196:
	.loc 2 1007 103
	add	r3, sp, #20
	str	r3, [sp, #48]
	.loc 2 1008 7
	ldr	r3, [sp, #48]
	cmp	r3, #0
	beq	.L173
	.loc 2 1010 25
	ldrh	r3, [sp, #14]	@ movhi
	orr	r3, r3, #8192
	uxth	r2, r3
	ldr	r3, [sp, #48]
	strh	r2, [r3]	@ movhi
	.loc 2 1011 30
	ldr	r3, .L175+4
	ldr	r3, [r3]
	uxth	r2, r3
	.loc 2 1011 28
	ldr	r3, [sp, #48]
	strh	r2, [r3, #2]	@ movhi
	.loc 2 1012 22
	bl	prvGetTimestamp32
	mov	r2, r0
	.loc 2 1012 20
	ldr	r3, [sp, #48]
	str	r2, [r3, #4]
	.loc 2 1013 19
	ldr	r3, [sp, #48]
	ldr	r2, [sp, #8]
	str	r2, [r3, #8]
	.loc 2 1014 19
	ldr	r3, [sp, #48]
	ldr	r2, [sp, #4]
	str	r2, [r3, #12]
	.loc 2 1015 11
	movs	r2, #0
	movs	r1, #16
	ldr	r0, [sp, #48]
	bl	writeToRTT
	mov	r3, r0
	.loc 2 1015 10
	cmp	r3, #0
	beq	.L173
	.loc 2 1015 64 discriminator 1
	movs	r0, #106
	bl	prvTraceWarning
.L173:
	ldr	r3, [sp, #52]
	str	r3, [sp, #36]
.LBE196:
.LBB197:
.LBB198:
	.loc 3 215 3
	ldr	r3, [sp, #36]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.L169:
.LBE198:
.LBE197:
	.loc 2 1020 1
	add	sp, sp, #60
.LCFI56:
	@ sp needed
	ldr	pc, [sp], #4
.L176:
	.align	2
.L175:
	.word	RecorderEnabled
	.word	eventCounter
.LFE223:
	.size	prvTraceStoreEvent2, .-prvTraceStoreEvent2
	.section	.text.prvTraceStoreEvent3,"ax",%progbits
	.align	1
	.global	prvTraceStoreEvent3
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceStoreEvent3, %function
prvTraceStoreEvent3:
.LFB224:
	.loc 2 1027 1
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI57:
	sub	sp, sp, #60
.LCFI58:
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r0	@ movhi
	strh	r3, [sp, #14]	@ movhi
	.loc 2 1030 5
	ldrh	r3, [sp, #14]
	cmp	r3, #4096
	bcc	.L178
	.loc 2 1030 27 discriminator 1
	movs	r0, #1
	bl	prvTraceError
	.loc 2 1030 45 discriminator 1
	b	.L177
.L178:
.LBB199:
.LBB200:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #40]
	.loc 3 204 9
	ldr	r3, [sp, #40]
.LBE200:
.LBE199:
	.loc 2 1032 18
	str	r3, [sp, #52]
	movs	r3, #1
	str	r3, [sp, #44]
.LBB201:
.LBB202:
	.loc 3 215 3
	ldr	r3, [sp, #44]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE202:
.LBE201:
	.loc 2 1034 6
	ldr	r3, .L183
	ldr	r3, [r3]
	.loc 2 1034 5
	cmp	r3, #0
	beq	.L181
	.loc 2 1036 17
	ldr	r3, .L183+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L183+4
	str	r3, [r2]
.LBB203:
	.loc 2 1039 103
	add	r3, sp, #16
	str	r3, [sp, #48]
	.loc 2 1040 7
	ldr	r3, [sp, #48]
	cmp	r3, #0
	beq	.L181
	.loc 2 1042 25
	ldrh	r3, [sp, #14]	@ movhi
	orr	r3, r3, #12288
	uxth	r2, r3
	ldr	r3, [sp, #48]
	strh	r2, [r3]	@ movhi
	.loc 2 1043 30
	ldr	r3, .L183+4
	ldr	r3, [r3]
	uxth	r2, r3
	.loc 2 1043 28
	ldr	r3, [sp, #48]
	strh	r2, [r3, #2]	@ movhi
	.loc 2 1044 22
	bl	prvGetTimestamp32
	mov	r2, r0
	.loc 2 1044 20
	ldr	r3, [sp, #48]
	str	r2, [r3, #4]
	.loc 2 1045 19
	ldr	r3, [sp, #48]
	ldr	r2, [sp, #8]
	str	r2, [r3, #8]
	.loc 2 1046 19
	ldr	r3, [sp, #48]
	ldr	r2, [sp, #4]
	str	r2, [r3, #12]
	.loc 2 1047 19
	ldr	r3, [sp, #48]
	ldr	r2, [sp]
	str	r2, [r3, #16]
	.loc 2 1048 11
	movs	r2, #0
	movs	r1, #20
	ldr	r0, [sp, #48]
	bl	writeToRTT
	mov	r3, r0
	.loc 2 1048 10
	cmp	r3, #0
	beq	.L181
	.loc 2 1048 64 discriminator 1
	movs	r0, #106
	bl	prvTraceWarning
.L181:
	ldr	r3, [sp, #52]
	str	r3, [sp, #36]
.LBE203:
.LBB204:
.LBB205:
	.loc 3 215 3
	ldr	r3, [sp, #36]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.L177:
.LBE205:
.LBE204:
	.loc 2 1053 1
	add	sp, sp, #60
.LCFI59:
	@ sp needed
	ldr	pc, [sp], #4
.L184:
	.align	2
.L183:
	.word	RecorderEnabled
	.word	eventCounter
.LFE224:
	.size	prvTraceStoreEvent3, .-prvTraceStoreEvent3
	.section	.text.prvTraceStoreEvent,"ax",%progbits
	.align	1
	.global	prvTraceStoreEvent
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceStoreEvent, %function
prvTraceStoreEvent:
.LFB225:
	.loc 2 1057 1
	@ args = 4, pretend = 12, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r1, r2, r3}
.LCFI60:
	push	{lr}
.LCFI61:
	sub	sp, sp, #112
.LCFI62:
	str	r0, [sp, #4]
	.loc 2 1062 5
	ldrh	r3, [sp, #116]
	cmp	r3, #4096
	bcc	.L186
	.loc 2 1062 27 discriminator 1
	movs	r0, #1
	bl	prvTraceError
	b	.L185
.L186:
.LBB206:
.LBB207:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #84]
	.loc 3 204 9
	ldr	r3, [sp, #84]
.LBE207:
.LBE206:
	.loc 2 1064 18
	str	r3, [sp, #104]
	movs	r3, #1
	str	r3, [sp, #88]
.LBB208:
.LBB209:
	.loc 3 215 3
	ldr	r3, [sp, #88]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE209:
.LBE208:
	.loc 2 1066 6
	ldr	r3, .L193
	ldr	r3, [r3]
	.loc 2 1066 5
	cmp	r3, #0
	beq	.L189
.LBB210:
	.loc 2 1068 44
	ldr	r3, [sp, #4]
	adds	r3, r3, #2
	.loc 2 1068 9
	lsls	r3, r3, #2
	str	r3, [sp, #100]
	.loc 2 1070 15
	ldr	r3, .L193+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L193+4
	str	r3, [r2]
.LBB211:
	.loc 2 1073 103
	add	r3, sp, #8
	str	r3, [sp, #96]
	.loc 2 1074 7
	ldr	r3, [sp, #96]
	cmp	r3, #0
	beq	.L189
	.loc 2 1076 56
	ldr	r3, [sp, #4]
	uxth	r3, r3
	.loc 2 1076 37
	lsls	r3, r3, #12
	uxth	r2, r3
	.loc 2 1076 25
	ldrh	r3, [sp, #116]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [sp, #96]
	strh	r2, [r3]	@ movhi
	.loc 2 1077 30
	ldr	r3, .L193+4
	ldr	r3, [r3]
	uxth	r2, r3
	.loc 2 1077 28
	ldr	r3, [sp, #96]
	strh	r2, [r3, #2]	@ movhi
	.loc 2 1078 22
	bl	prvGetTimestamp32
	mov	r2, r0
	.loc 2 1078 20
	ldr	r3, [sp, #96]
	str	r2, [r3, #4]
	.loc 2 1080 4
	add	r3, sp, #120
	str	r3, [sp, #76]
	.loc 2 1081 12
	movs	r3, #0
	str	r3, [sp, #108]
	.loc 2 1081 5
	b	.L191
.L192:
.LBB212:
	.loc 2 1083 16 discriminator 3
	ldr	r3, [sp, #108]
	adds	r3, r3, #2
	lsls	r3, r3, #2
	ldr	r2, [sp, #96]
	add	r3, r3, r2
	str	r3, [sp, #92]
	.loc 2 1084 23 discriminator 3
	ldr	r3, [sp, #76]
	adds	r2, r3, #4
	str	r2, [sp, #76]
	ldr	r2, [r3]
	.loc 2 1084 11 discriminator 3
	ldr	r3, [sp, #92]
	str	r2, [r3]
.LBE212:
	.loc 2 1081 30 discriminator 3
	ldr	r3, [sp, #108]
	adds	r3, r3, #1
	str	r3, [sp, #108]
.L191:
	.loc 2 1081 5 discriminator 1
	ldr	r2, [sp, #108]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	blt	.L192
	.loc 2 1088 11
	ldr	r3, [sp, #100]
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [sp, #96]
	bl	writeToRTT
	mov	r3, r0
	.loc 2 1088 10
	cmp	r3, #0
	beq	.L189
	.loc 2 1088 59 discriminator 1
	movs	r0, #106
	bl	prvTraceWarning
.L189:
	ldr	r3, [sp, #104]
	str	r3, [sp, #80]
.LBE211:
.LBE210:
.LBB213:
.LBB214:
	.loc 3 215 3 discriminator 1
	ldr	r3, [sp, #80]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1 discriminator 1
	.thumb
	.syntax unified
	nop
.L185:
.LBE214:
.LBE213:
	.loc 2 1093 1
	add	sp, sp, #112
.LCFI63:
	@ sp needed
	ldr	lr, [sp], #4
.LCFI64:
	add	sp, sp, #12
.LCFI65:
	bx	lr
.L194:
	.align	2
.L193:
	.word	RecorderEnabled
	.word	eventCounter
.LFE225:
	.size	prvTraceStoreEvent, .-prvTraceStoreEvent
	.section	.text.prvTraceStoreStringEvent,"ax",%progbits
	.align	1
	.global	prvTraceStoreStringEvent
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceStoreStringEvent, %function
prvTraceStoreStringEvent:
.LFB226:
	.loc 2 1097 1
	@ args = 4, pretend = 8, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r2, r3}
.LCFI66:
	push	{lr}
.LCFI67:
	sub	sp, sp, #28
.LCFI68:
	str	r0, [sp, #12]
	mov	r3, r1
	strh	r3, [sp, #10]	@ movhi
	.loc 2 1100 1
	add	r3, sp, #36
	str	r3, [sp, #20]
	.loc 2 1101 2
	ldrh	r1, [sp, #10]
	add	r3, sp, #20
	str	r3, [sp]
	ldr	r3, [sp, #32]
	movs	r2, #0
	ldr	r0, [sp, #12]
	bl	prvTraceStoreStringEventHelper
	.loc 2 1103 1
	nop
	add	sp, sp, #28
.LCFI69:
	@ sp needed
	ldr	lr, [sp], #4
.LCFI70:
	add	sp, sp, #8
.LCFI71:
	bx	lr
.LFE226:
	.size	prvTraceStoreStringEvent, .-prvTraceStoreStringEvent
	.section	.text.prvTraceStoreStringEventHelper,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceStoreStringEventHelper, %function
prvTraceStoreStringEventHelper:
.LFB227:
	.loc 2 1110 1
	@ args = 4, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI72:
	sub	sp, sp, #148
.LCFI73:
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r1	@ movhi
	strh	r3, [sp, #10]	@ movhi
	.loc 2 1115 6
	movs	r3, #0
	str	r3, [sp, #128]
	.loc 2 1118 5
	ldrh	r3, [sp, #10]
	cmp	r3, #4096
	bcc	.L197
	.loc 2 1118 27 discriminator 1
	movs	r0, #1
	bl	prvTraceError
	.loc 2 1118 45 discriminator 1
	b	.L196
.L197:
	.loc 2 1120 11
	movs	r3, #0
	str	r3, [sp, #140]
	.loc 2 1120 2
	b	.L199
.L201:
	.loc 2 1120 50 discriminator 4
	ldr	r3, [sp, #140]
	adds	r3, r3, #1
	str	r3, [sp, #140]
.L199:
	.loc 2 1120 20 discriminator 1
	ldr	r3, [sp, #140]
	ldr	r2, [sp]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 1120 2 discriminator 1
	cmp	r3, #0
	beq	.L200
	.loc 2 1120 32 discriminator 3
	ldr	r3, [sp, #140]
	cmp	r3, #51
	ble	.L201
.L200:
	.loc 2 1123 20
	ldr	r3, [sp, #140]
	adds	r3, r3, #4
	.loc 2 1123 12
	cmp	r3, #0
	bge	.L202
	adds	r3, r3, #3
.L202:
	asrs	r3, r3, #2
	str	r3, [sp, #124]
	.loc 2 1126 5
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L203
	.loc 2 1127 8
	ldr	r3, [sp, #12]
	adds	r3, r3, #1
	str	r3, [sp, #12]
.L203:
	.loc 2 1129 9
	ldr	r3, [sp, #12]
	lsls	r3, r3, #2
	str	r3, [sp, #128]
	.loc 2 1132 9
	ldr	r2, [sp, #124]
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	str	r3, [sp, #136]
	.loc 2 1134 5
	ldr	r3, [sp, #136]
	cmp	r3, #15
	ble	.L204
.LBB215:
	.loc 2 1141 47
	ldr	r3, [sp, #136]
	subs	r3, r3, #15
	.loc 2 1141 12
	lsls	r3, r3, #2
	str	r3, [sp, #120]
	.loc 2 1143 22
	ldr	r3, .L216
	ldr	r3, [r3]
	.loc 2 1143 6
	ldr	r2, [sp, #120]
	cmp	r2, r3
	bls	.L205
	.loc 2 1145 22
	ldr	r2, .L216
	ldr	r3, [sp, #120]
	str	r3, [r2]
.L205:
	.loc 2 1148 10
	movs	r3, #15
	str	r3, [sp, #136]
	.loc 2 1149 7
	ldr	r3, [sp, #128]
	rsb	r3, r3, #60
	str	r3, [sp, #140]
.L204:
.LBE215:
.LBB216:
.LBB217:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #92]
	.loc 3 204 9
	ldr	r3, [sp, #92]
.LBE217:
.LBE216:
	.loc 2 1152 18
	str	r3, [sp, #116]
	movs	r3, #1
	str	r3, [sp, #96]
.LBB218:
.LBB219:
	.loc 3 215 3
	ldr	r3, [sp, #96]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE219:
.LBE218:
	.loc 2 1154 6
	ldr	r3, .L216+4
	ldr	r3, [r3]
	.loc 2 1154 5
	cmp	r3, #0
	beq	.L207
.LBB220:
	.loc 2 1156 42
	ldr	r3, [sp, #136]
	adds	r3, r3, #2
	.loc 2 1156 7
	lsls	r3, r3, #2
	str	r3, [sp, #112]
	.loc 2 1158 15
	ldr	r3, .L216+8
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L216+8
	str	r3, [r2]
.LBB221:
	.loc 2 1161 103
	add	r3, sp, #20
	str	r3, [sp, #108]
	.loc 2 1162 7
	ldr	r3, [sp, #108]
	cmp	r3, #0
	beq	.L207
.LBB222:
	.loc 2 1166 58
	ldr	r3, [sp, #136]
	uxth	r3, r3
	.loc 2 1166 39
	lsls	r3, r3, #12
	uxth	r2, r3
	.loc 2 1166 25
	ldrh	r3, [sp, #10]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [sp, #108]
	strh	r2, [r3]	@ movhi
	.loc 2 1167 30
	ldr	r3, .L216+8
	ldr	r3, [r3]
	uxth	r2, r3
	.loc 2 1167 28
	ldr	r3, [sp, #108]
	strh	r2, [r3, #2]	@ movhi
	.loc 2 1168 22
	bl	prvGetTimestamp32
	mov	r2, r0
	.loc 2 1168 20
	ldr	r3, [sp, #108]
	str	r2, [r3, #4]
	.loc 2 1171 12
	ldr	r3, [sp, #108]
	adds	r3, r3, #8
	str	r3, [sp, #104]
	.loc 2 1173 12
	movs	r3, #0
	str	r3, [sp, #132]
	.loc 2 1173 5
	b	.L209
.L212:
	.loc 2 1175 9
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L210
	.loc 2 1175 34 discriminator 1
	ldr	r3, [sp, #132]
	cmp	r3, #0
	bne	.L210
	.loc 2 1178 13
	ldr	r3, [sp, #132]
	lsls	r3, r3, #2
	ldr	r2, [sp, #104]
	add	r3, r3, r2
	.loc 2 1178 19
	ldr	r2, [sp, #4]
	.loc 2 1178 17
	str	r2, [r3]
	b	.L211
.L210:
	.loc 2 1183 13
	ldr	r3, [sp, #132]
	lsls	r3, r3, #2
	ldr	r2, [sp, #104]
	add	r2, r2, r3
	.loc 2 1183 30
	ldr	r3, [sp, #152]
	ldr	r3, [r3]
	adds	r0, r3, #4
	ldr	r1, [sp, #152]
	str	r0, [r1]
	ldr	r3, [r3]
	.loc 2 1183 17
	str	r3, [r2]
.L211:
	.loc 2 1173 29 discriminator 2
	ldr	r3, [sp, #132]
	adds	r3, r3, #1
	str	r3, [sp, #132]
.L209:
	.loc 2 1173 5 discriminator 1
	ldr	r2, [sp, #132]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	blt	.L212
	.loc 2 1186 11
	ldr	r3, [sp, #108]
	adds	r3, r3, #8
	str	r3, [sp, #100]
	.loc 2 1187 12
	movs	r3, #0
	str	r3, [sp, #132]
	.loc 2 1187 5
	b	.L213
.L214:
	.loc 2 1189 29 discriminator 3
	ldr	r3, [sp, #132]
	ldr	r2, [sp]
	add	r2, r2, r3
	.loc 2 1189 19 discriminator 3
	ldr	r1, [sp, #128]
	ldr	r3, [sp, #132]
	add	r3, r3, r1
	mov	r1, r3
	.loc 2 1189 11 discriminator 3
	ldr	r3, [sp, #100]
	add	r3, r3, r1
	.loc 2 1189 29 discriminator 3
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 2 1189 24 discriminator 3
	strb	r2, [r3]
	.loc 2 1187 27 discriminator 3
	ldr	r3, [sp, #132]
	adds	r3, r3, #1
	str	r3, [sp, #132]
.L213:
	.loc 2 1187 5 discriminator 1
	ldr	r2, [sp, #132]
	ldr	r3, [sp, #140]
	cmp	r2, r3
	blt	.L214
	.loc 2 1192 23
	ldr	r3, [sp, #128]
	rsb	r3, r3, #60
	.loc 2 1192 8
	ldr	r2, [sp, #140]
	cmp	r2, r3
	bge	.L215
	.loc 2 1193 19
	ldr	r2, [sp, #128]
	ldr	r3, [sp, #140]
	add	r3, r3, r2
	mov	r2, r3
	.loc 2 1193 11
	ldr	r3, [sp, #100]
	add	r3, r3, r2
	.loc 2 1193 26
	movs	r2, #0
	strb	r2, [r3]
.L215:
	.loc 2 1194 11
	ldr	r3, [sp, #112]
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [sp, #108]
	bl	writeToRTT
	mov	r3, r0
	.loc 2 1194 10
	cmp	r3, #0
	beq	.L207
	.loc 2 1194 59 discriminator 1
	movs	r0, #106
	bl	prvTraceWarning
.L207:
	ldr	r3, [sp, #116]
	str	r3, [sp, #88]
.LBE222:
.LBE221:
.LBE220:
.LBB223:
.LBB224:
	.loc 3 215 3
	ldr	r3, [sp, #88]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.L196:
.LBE224:
.LBE223:
	.loc 2 1200 1
	add	sp, sp, #148
.LCFI74:
	@ sp needed
	ldr	pc, [sp], #4
.L217:
	.align	2
.L216:
	.word	MaxBytesTruncated
	.word	RecorderEnabled
	.word	eventCounter
.LFE227:
	.size	prvTraceStoreStringEventHelper, .-prvTraceStoreStringEventHelper
	.section	.text.prvTraceStoreSimpleStringEventHelper,"ax",%progbits
	.align	1
	.global	prvTraceStoreSimpleStringEventHelper
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceStoreSimpleStringEventHelper, %function
prvTraceStoreSimpleStringEventHelper:
.LFB228:
	.loc 2 1205 1
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI75:
	sub	sp, sp, #148
.LCFI76:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 2 1210 6
	movs	r3, #0
	str	r3, [sp, #128]
	.loc 2 1211 6
	movs	r3, #0
	str	r3, [sp, #120]
	.loc 2 1212 11
	movs	r3, #144
	strh	r3, [sp, #126]	@ movhi
	.loc 2 1215 5
	ldrh	r3, [sp, #126]
	cmp	r3, #4096
	bcc	.L219
	.loc 2 1215 27 discriminator 1
	movs	r0, #1
	bl	prvTraceError
	.loc 2 1215 45 discriminator 1
	b	.L218
.L219:
	.loc 2 1217 11
	movs	r3, #0
	str	r3, [sp, #140]
	.loc 2 1217 2
	b	.L221
.L223:
	.loc 2 1217 50 discriminator 4
	ldr	r3, [sp, #140]
	adds	r3, r3, #1
	str	r3, [sp, #140]
.L221:
	.loc 2 1217 20 discriminator 1
	ldr	r3, [sp, #140]
	ldr	r2, [sp]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 1217 2 discriminator 1
	cmp	r3, #0
	beq	.L222
	.loc 2 1217 32 discriminator 3
	ldr	r3, [sp, #140]
	cmp	r3, #51
	ble	.L223
.L222:
	.loc 2 1220 20
	ldr	r3, [sp, #140]
	adds	r3, r3, #4
	.loc 2 1220 12
	cmp	r3, #0
	bge	.L224
	adds	r3, r3, #3
.L224:
	asrs	r3, r3, #2
	str	r3, [sp, #116]
	.loc 2 1223 5
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L225
	.loc 2 1225 8
	ldr	r3, [sp, #128]
	adds	r3, r3, #1
	str	r3, [sp, #128]
	.loc 2 1226 10
	ldrh	r3, [sp, #126]
	adds	r3, r3, #1
	strh	r3, [sp, #126]	@ movhi
.L225:
	.loc 2 1229 9
	ldr	r3, [sp, #128]
	lsls	r3, r3, #2
	str	r3, [sp, #120]
	.loc 2 1232 9
	ldr	r2, [sp, #116]
	ldr	r3, [sp, #128]
	add	r3, r3, r2
	str	r3, [sp, #136]
	.loc 2 1234 5
	ldr	r3, [sp, #136]
	cmp	r3, #15
	ble	.L226
.LBB225:
	.loc 2 1241 47
	ldr	r3, [sp, #136]
	subs	r3, r3, #15
	.loc 2 1241 12
	lsls	r3, r3, #2
	str	r3, [sp, #112]
	.loc 2 1243 22
	ldr	r3, .L235
	ldr	r3, [r3]
	.loc 2 1243 6
	ldr	r2, [sp, #112]
	cmp	r2, r3
	bls	.L227
	.loc 2 1245 22
	ldr	r2, .L235
	ldr	r3, [sp, #112]
	str	r3, [r2]
.L227:
	.loc 2 1248 10
	movs	r3, #15
	str	r3, [sp, #136]
	.loc 2 1249 7
	ldr	r3, [sp, #120]
	rsb	r3, r3, #60
	str	r3, [sp, #140]
.L226:
.LBE225:
.LBB226:
.LBB227:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #84]
	.loc 3 204 9
	ldr	r3, [sp, #84]
.LBE227:
.LBE226:
	.loc 2 1252 18
	str	r3, [sp, #108]
	movs	r3, #1
	str	r3, [sp, #88]
.LBB228:
.LBB229:
	.loc 3 215 3
	ldr	r3, [sp, #88]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE229:
.LBE228:
	.loc 2 1254 6
	ldr	r3, .L235+4
	ldr	r3, [r3]
	.loc 2 1254 5
	cmp	r3, #0
	beq	.L229
.LBB230:
	.loc 2 1256 42
	ldr	r3, [sp, #136]
	adds	r3, r3, #2
	.loc 2 1256 7
	lsls	r3, r3, #2
	str	r3, [sp, #104]
	.loc 2 1258 15
	ldr	r3, .L235+8
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L235+8
	str	r3, [r2]
.LBB231:
	.loc 2 1261 103
	add	r3, sp, #12
	str	r3, [sp, #100]
	.loc 2 1262 7
	ldr	r3, [sp, #100]
	cmp	r3, #0
	beq	.L229
.LBB232:
	.loc 2 1266 58
	ldr	r3, [sp, #136]
	uxth	r3, r3
	.loc 2 1266 39
	lsls	r3, r3, #12
	uxth	r2, r3
	.loc 2 1266 25
	ldrh	r3, [sp, #126]	@ movhi
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [sp, #100]
	strh	r2, [r3]	@ movhi
	.loc 2 1267 30
	ldr	r3, .L235+8
	ldr	r3, [r3]
	uxth	r2, r3
	.loc 2 1267 28
	ldr	r3, [sp, #100]
	strh	r2, [r3, #2]	@ movhi
	.loc 2 1268 22
	bl	prvGetTimestamp32
	mov	r2, r0
	.loc 2 1268 20
	ldr	r3, [sp, #100]
	str	r2, [r3, #4]
	.loc 2 1271 12
	ldr	r3, [sp, #100]
	adds	r3, r3, #8
	str	r3, [sp, #96]
	.loc 2 1273 8
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L231
	.loc 2 1276 18
	ldr	r2, [sp, #4]
	.loc 2 1276 16
	ldr	r3, [sp, #96]
	str	r2, [r3]
.L231:
	.loc 2 1279 11
	ldr	r3, [sp, #100]
	adds	r3, r3, #8
	str	r3, [sp, #92]
	.loc 2 1280 12
	movs	r3, #0
	str	r3, [sp, #132]
	.loc 2 1280 5
	b	.L232
.L233:
	.loc 2 1282 29 discriminator 3
	ldr	r3, [sp, #132]
	ldr	r2, [sp]
	add	r2, r2, r3
	.loc 2 1282 19 discriminator 3
	ldr	r1, [sp, #120]
	ldr	r3, [sp, #132]
	add	r3, r3, r1
	mov	r1, r3
	.loc 2 1282 11 discriminator 3
	ldr	r3, [sp, #92]
	add	r3, r3, r1
	.loc 2 1282 29 discriminator 3
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 2 1282 24 discriminator 3
	strb	r2, [r3]
	.loc 2 1280 27 discriminator 3
	ldr	r3, [sp, #132]
	adds	r3, r3, #1
	str	r3, [sp, #132]
.L232:
	.loc 2 1280 5 discriminator 1
	ldr	r2, [sp, #132]
	ldr	r3, [sp, #140]
	cmp	r2, r3
	blt	.L233
	.loc 2 1285 23
	ldr	r3, [sp, #120]
	rsb	r3, r3, #60
	.loc 2 1285 8
	ldr	r2, [sp, #140]
	cmp	r2, r3
	bge	.L234
	.loc 2 1286 19
	ldr	r2, [sp, #120]
	ldr	r3, [sp, #140]
	add	r3, r3, r2
	mov	r2, r3
	.loc 2 1286 11
	ldr	r3, [sp, #92]
	add	r3, r3, r2
	.loc 2 1286 26
	movs	r2, #0
	strb	r2, [r3]
.L234:
	.loc 2 1287 11
	ldr	r3, [sp, #104]
	movs	r2, #0
	mov	r1, r3
	ldr	r0, [sp, #100]
	bl	writeToRTT
	mov	r3, r0
	.loc 2 1287 10
	cmp	r3, #0
	beq	.L229
	.loc 2 1287 59 discriminator 1
	movs	r0, #106
	bl	prvTraceWarning
.L229:
	ldr	r3, [sp, #108]
	str	r3, [sp, #80]
.LBE232:
.LBE231:
.LBE230:
.LBB233:
.LBB234:
	.loc 3 215 3
	ldr	r3, [sp, #80]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.L218:
.LBE234:
.LBE233:
	.loc 2 1293 1
	add	sp, sp, #148
.LCFI77:
	@ sp needed
	ldr	pc, [sp], #4
.L236:
	.align	2
.L235:
	.word	MaxBytesTruncated
	.word	RecorderEnabled
	.word	eventCounter
.LFE228:
	.size	prvTraceStoreSimpleStringEventHelper, .-prvTraceStoreSimpleStringEventHelper
	.section	.text.prvTraceSaveSymbol,"ax",%progbits
	.align	1
	.global	prvTraceSaveSymbol
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceSaveSymbol, %function
prvTraceSaveSymbol:
.LFB229:
	.loc 2 1297 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #40
.LCFI78:
	str	r0, [sp, #4]
	str	r1, [sp]
.LBB235:
.LBB236:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #12]
	.loc 3 204 9
	ldr	r3, [sp, #12]
.LBE236:
.LBE235:
	.loc 2 1304 18
	str	r3, [sp, #28]
	movs	r3, #1
	str	r3, [sp, #16]
.LBB237:
.LBB238:
	.loc 3 215 3
	ldr	r3, [sp, #16]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE238:
.LBE237:
	.loc 2 1306 12
	ldr	r3, .L254
	ldr	r3, [r3]
	str	r3, [sp, #32]
	.loc 2 1309 9
	movs	r3, #0
	str	r3, [sp, #36]
	.loc 2 1309 2
	b	.L239
.L242:
	.loc 2 1312 74
	ldr	r3, [sp, #36]
	lsrs	r3, r3, #2
	.loc 2 1312 14
	lsls	r3, r3, #2
	ldr	r2, .L254+4
	add	r3, r3, r2
	str	r3, [sp, #24]
	.loc 2 1313 7
	ldr	r3, [sp, #24]
	ldr	r2, [r3]
	.loc 2 1313 22
	ldr	r3, [sp, #4]
	.loc 2 1313 6
	cmp	r2, r3
	bne	.L240
	.loc 2 1315 14
	ldr	r3, [sp, #36]
	str	r3, [sp, #32]
	.loc 2 1316 4
	b	.L241
.L240:
	.loc 2 1309 47 discriminator 2
	ldr	r3, [sp, #36]
	adds	r3, r3, #32
	str	r3, [sp, #36]
.L239:
	.loc 2 1309 16 discriminator 1
	ldr	r3, .L254
	ldr	r3, [r3]
	.loc 2 1309 2 discriminator 1
	ldr	r2, [sp, #36]
	cmp	r2, r3
	bcc	.L242
.L241:
	.loc 2 1320 5
	ldr	r3, [sp, #32]
	cmp	r3, #1280
	bcs	.L243
	.loc 2 1323 68
	ldr	r3, [sp, #32]
	lsrs	r3, r3, #2
	.loc 2 1323 90
	ldr	r2, [sp, #4]
	.loc 2 1323 88
	ldr	r1, .L254+4
	str	r2, [r1, r3, lsl #2]
	.loc 2 1326 80
	ldr	r3, [sp, #32]
	adds	r3, r3, #4
	.loc 2 1326 13
	ldr	r2, .L254+4
	add	r3, r3, r2
	str	r3, [sp, #20]
	.loc 2 1327 10
	movs	r3, #0
	str	r3, [sp, #36]
	.loc 2 1327 3
	b	.L244
.L247:
	.loc 2 1329 32
	ldr	r2, [sp]
	ldr	r3, [sp, #36]
	add	r2, r2, r3
	.loc 2 1329 13
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #36]
	add	r3, r3, r1
	.loc 2 1329 19
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 2 1329 17
	strb	r2, [r3]
	.loc 2 1331 12
	ldr	r2, [sp]
	ldr	r3, [sp, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 1331 7
	cmp	r3, #0
	beq	.L253
	.loc 2 1327 26 discriminator 2
	ldr	r3, [sp, #36]
	adds	r3, r3, #1
	str	r3, [sp, #36]
.L244:
	.loc 2 1327 3 discriminator 1
	ldr	r3, [sp, #36]
	cmp	r3, #24
	bls	.L247
	b	.L248
.L253:
	.loc 2 1332 5
	nop
	.loc 2 1336 9
	b	.L248
.L250:
	.loc 2 1338 5
	ldr	r3, [sp, #36]
	adds	r3, r3, #1
	str	r3, [sp, #36]
.L248:
	.loc 2 1336 15
	ldr	r2, [sp]
	ldr	r3, [sp, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 1336 9
	cmp	r3, #0
	beq	.L249
	.loc 2 1336 25 discriminator 1
	ldr	r3, [sp, #36]
	cmp	r3, #127
	bls	.L250
.L249:
	.loc 2 1342 9
	ldr	r3, .L254+8
	ldr	r3, [r3]
	.loc 2 1342 6
	ldr	r2, [sp, #36]
	cmp	r2, r3
	bls	.L251
	.loc 2 1344 22
	ldr	r2, .L254+8
	ldr	r3, [sp, #36]
	str	r3, [r2]
.L251:
	.loc 2 1348 17
	ldr	r3, .L254
	ldr	r3, [r3]
	.loc 2 1348 6
	ldr	r2, [sp, #32]
	cmp	r2, r3
	bne	.L252
	.loc 2 1350 30
	ldr	r3, .L254
	ldr	r3, [r3]
	adds	r3, r3, #32
	ldr	r2, .L254
	str	r3, [r2]
	b	.L252
.L243:
	.loc 2 1355 18
	ldr	r3, .L254+12
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L254+12
	str	r3, [r2]
.L252:
	ldr	r3, [sp, #28]
	str	r3, [sp, #8]
.LBB239:
.LBB240:
	.loc 3 215 3
	ldr	r3, [sp, #8]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE240:
.LBE239:
	.loc 2 1359 1
	nop
	add	sp, sp, #40
.LCFI79:
	@ sp needed
	bx	lr
.L255:
	.align	2
.L254:
	.word	firstFreeSymbolTableIndex
	.word	symbolTable
	.word	LongestSymbolName
	.word	NoRoomForSymbol
.LFE229:
	.size	prvTraceSaveSymbol, .-prvTraceSaveSymbol
	.section	.text.prvTraceDeleteSymbol,"ax",%progbits
	.align	1
	.global	prvTraceDeleteSymbol
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceDeleteSymbol, %function
prvTraceDeleteSymbol:
.LFB230:
	.loc 2 1363 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #40
.LCFI80:
	str	r0, [sp, #4]
.LBB241:
.LBB242:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #12]
	.loc 3 204 9
	ldr	r3, [sp, #12]
.LBE242:
.LBE241:
	.loc 2 1368 18
	str	r3, [sp, #28]
	movs	r3, #1
	str	r3, [sp, #16]
.LBB243:
.LBB244:
	.loc 3 215 3
	ldr	r3, [sp, #16]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE244:
.LBE243:
	.loc 2 1370 9
	movs	r3, #0
	str	r3, [sp, #36]
	.loc 2 1370 2
	b	.L258
.L265:
	.loc 2 1373 67
	ldr	r3, [sp, #36]
	lsrs	r3, r3, #2
	.loc 2 1373 7
	lsls	r3, r3, #2
	ldr	r2, .L266
	add	r3, r3, r2
	str	r3, [sp, #24]
	.loc 2 1374 7
	ldr	r3, [sp, #24]
	ldr	r2, [r3]
	.loc 2 1374 15
	ldr	r3, [sp, #4]
	.loc 2 1374 6
	cmp	r2, r3
	bne	.L259
	.loc 2 1377 34
	ldr	r3, .L266+4
	ldr	r3, [r3]
	.loc 2 1377 7
	cmp	r3, #32
	bls	.L260
	.loc 2 1377 156 discriminator 1
	ldr	r3, .L266+4
	ldr	r3, [r3]
	subs	r3, r3, #32
	.loc 2 1377 121 discriminator 1
	ldr	r2, [sp, #36]
	cmp	r2, r3
	beq	.L260
	.loc 2 1381 103
	ldr	r3, .L266+4
	ldr	r3, [r3]
	subs	r3, r3, #32
	.loc 2 1381 191
	lsrs	r3, r3, #2
	.loc 2 1381 18
	lsls	r3, r3, #2
	ldr	r2, .L266
	add	r3, r3, r2
	str	r3, [sp, #20]
	.loc 2 1384 12
	movs	r3, #0
	str	r3, [sp, #32]
	.loc 2 1384 5
	b	.L261
.L262:
	.loc 2 1386 27 discriminator 3
	ldr	r3, [sp, #32]
	lsls	r3, r3, #2
	ldr	r2, [sp, #20]
	add	r2, r2, r3
	.loc 2 1386 9 discriminator 3
	ldr	r3, [sp, #32]
	lsls	r3, r3, #2
	ldr	r1, [sp, #24]
	add	r3, r3, r1
	.loc 2 1386 27 discriminator 3
	ldr	r2, [r2]
	.loc 2 1386 13 discriminator 3
	str	r2, [r3]
	.loc 2 1384 129 discriminator 3
	ldr	r3, [sp, #32]
	adds	r3, r3, #1
	str	r3, [sp, #32]
.L261:
	.loc 2 1384 5 discriminator 1
	ldr	r3, [sp, #32]
	cmp	r3, #7
	bls	.L262
	.loc 2 1390 19
	ldr	r3, [sp, #20]
	movs	r2, #0
	str	r2, [r3]
	b	.L263
.L260:
	.loc 2 1393 10
	ldr	r3, [sp, #24]
	movs	r2, #0
	str	r2, [r3]
.L263:
	.loc 2 1396 30
	ldr	r3, .L266+4
	ldr	r3, [r3]
	subs	r3, r3, #32
	ldr	r2, .L266+4
	str	r3, [r2]
	.loc 2 1398 4
	b	.L264
.L259:
	.loc 2 1370 47 discriminator 2
	ldr	r3, [sp, #36]
	adds	r3, r3, #32
	str	r3, [sp, #36]
.L258:
	.loc 2 1370 16 discriminator 1
	ldr	r3, .L266+4
	ldr	r3, [r3]
	.loc 2 1370 2 discriminator 1
	ldr	r2, [sp, #36]
	cmp	r2, r3
	bcc	.L265
.L264:
	ldr	r3, [sp, #28]
	str	r3, [sp, #8]
.LBB245:
.LBB246:
	.loc 3 215 3
	ldr	r3, [sp, #8]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE246:
.LBE245:
	.loc 2 1403 1
	nop
	add	sp, sp, #40
.LCFI81:
	@ sp needed
	bx	lr
.L267:
	.align	2
.L266:
	.word	symbolTable
	.word	firstFreeSymbolTableIndex
.LFE230:
	.size	prvTraceDeleteSymbol, .-prvTraceDeleteSymbol
	.section	.text.prvTraceSaveObjectData,"ax",%progbits
	.align	1
	.global	prvTraceSaveObjectData
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceSaveObjectData, %function
prvTraceSaveObjectData:
.LFB231:
	.loc 2 1407 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #40
.LCFI82:
	str	r0, [sp, #4]
	str	r1, [sp]
.LBB247:
.LBB248:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #16]
	.loc 3 204 9
	ldr	r3, [sp, #16]
.LBE248:
.LBE247:
	.loc 2 1413 18
	str	r3, [sp, #28]
	movs	r3, #1
	str	r3, [sp, #20]
.LBB249:
.LBB250:
	.loc 3 215 3
	ldr	r3, [sp, #20]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE250:
.LBE249:
	.loc 2 1415 12
	ldr	r3, .L276
	ldr	r3, [r3]
	str	r3, [sp, #32]
	.loc 2 1418 9
	movs	r3, #0
	str	r3, [sp, #36]
	.loc 2 1418 2
	b	.L270
.L273:
	.loc 2 1421 79
	ldr	r3, [sp, #36]
	lsrs	r3, r3, #2
	.loc 2 1421 7
	lsls	r3, r3, #2
	ldr	r2, .L276+4
	add	r3, r3, r2
	str	r3, [sp, #24]
	.loc 2 1422 7
	ldr	r3, [sp, #24]
	ldr	r2, [r3]
	.loc 2 1422 15
	ldr	r3, [sp, #4]
	.loc 2 1422 6
	cmp	r2, r3
	bne	.L271
	.loc 2 1424 14
	ldr	r3, [sp, #36]
	str	r3, [sp, #32]
	.loc 2 1425 4
	b	.L272
.L271:
	.loc 2 1418 51 discriminator 2
	ldr	r3, [sp, #36]
	adds	r3, r3, #8
	str	r3, [sp, #36]
.L270:
	.loc 2 1418 16 discriminator 1
	ldr	r3, .L276
	ldr	r3, [r3]
	.loc 2 1418 2 discriminator 1
	ldr	r2, [sp, #36]
	cmp	r2, r3
	bcc	.L273
.L272:
	.loc 2 1429 5
	ldr	r3, [sp, #32]
	cmp	r3, #320
	bcs	.L274
	.loc 2 1432 80
	ldr	r3, [sp, #32]
	lsrs	r3, r3, #2
	.loc 2 1432 102
	ldr	r2, [sp, #4]
	.loc 2 1432 100
	ldr	r1, .L276+4
	str	r2, [r1, r3, lsl #2]
	.loc 2 1433 80
	ldr	r3, [sp, #32]
	lsrs	r3, r3, #2
	.loc 2 1433 99
	adds	r3, r3, #1
	.loc 2 1433 104
	ldr	r1, .L276+4
	ldr	r2, [sp]
	str	r2, [r1, r3, lsl #2]
	.loc 2 1436 17
	ldr	r3, .L276
	ldr	r3, [r3]
	.loc 2 1436 6
	ldr	r2, [sp, #32]
	cmp	r2, r3
	bne	.L275
	.loc 2 1438 34
	ldr	r3, .L276
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r2, .L276
	str	r3, [r2]
	b	.L275
.L274:
	.loc 2 1443 22
	ldr	r3, .L276+8
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L276+8
	str	r3, [r2]
.L275:
	ldr	r3, [sp, #28]
	str	r3, [sp, #12]
.LBB251:
.LBB252:
	.loc 3 215 3
	ldr	r3, [sp, #12]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE252:
.LBE251:
	.loc 2 1447 1
	nop
	add	sp, sp, #40
.LCFI83:
	@ sp needed
	bx	lr
.L277:
	.align	2
.L276:
	.word	firstFreeObjectDataTableIndex
	.word	objectDataTable
	.word	NoRoomForObjectData
.LFE231:
	.size	prvTraceSaveObjectData, .-prvTraceSaveObjectData
	.section	.text.prvTraceDeleteObjectData,"ax",%progbits
	.align	1
	.global	prvTraceDeleteObjectData
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceDeleteObjectData, %function
prvTraceDeleteObjectData:
.LFB232:
	.loc 2 1451 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #40
.LCFI84:
	str	r0, [sp, #4]
.LBB253:
.LBB254:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #12]
	.loc 3 204 9
	ldr	r3, [sp, #12]
.LBE254:
.LBE253:
	.loc 2 1456 18
	str	r3, [sp, #28]
	movs	r3, #1
	str	r3, [sp, #16]
.LBB255:
.LBB256:
	.loc 3 215 3
	ldr	r3, [sp, #16]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE256:
.LBE255:
	.loc 2 1458 9
	movs	r3, #0
	str	r3, [sp, #36]
	.loc 2 1458 2
	b	.L280
.L287:
	.loc 2 1461 79
	ldr	r3, [sp, #36]
	lsrs	r3, r3, #2
	.loc 2 1461 7
	lsls	r3, r3, #2
	ldr	r2, .L288
	add	r3, r3, r2
	str	r3, [sp, #24]
	.loc 2 1462 7
	ldr	r3, [sp, #24]
	ldr	r2, [r3]
	.loc 2 1462 15
	ldr	r3, [sp, #4]
	.loc 2 1462 6
	cmp	r2, r3
	bne	.L281
	.loc 2 1465 38
	ldr	r3, .L288+4
	ldr	r3, [r3]
	.loc 2 1465 7
	cmp	r3, #8
	bls	.L282
	.loc 2 1465 117 discriminator 1
	ldr	r3, .L288+4
	ldr	r3, [r3]
	subs	r3, r3, #8
	.loc 2 1465 78 discriminator 1
	ldr	r2, [sp, #36]
	cmp	r2, r3
	beq	.L282
	.loc 2 1469 119
	ldr	r3, .L288+4
	ldr	r3, [r3]
	subs	r3, r3, #8
	.loc 2 1469 160
	lsrs	r3, r3, #2
	.loc 2 1469 18
	lsls	r3, r3, #2
	ldr	r2, .L288
	add	r3, r3, r2
	str	r3, [sp, #20]
	.loc 2 1472 12
	movs	r3, #0
	str	r3, [sp, #32]
	.loc 2 1472 5
	b	.L283
.L284:
	.loc 2 1474 27 discriminator 3
	ldr	r3, [sp, #32]
	lsls	r3, r3, #2
	ldr	r2, [sp, #20]
	add	r2, r2, r3
	.loc 2 1474 9 discriminator 3
	ldr	r3, [sp, #32]
	lsls	r3, r3, #2
	ldr	r1, [sp, #24]
	add	r3, r3, r1
	.loc 2 1474 27 discriminator 3
	ldr	r2, [r2]
	.loc 2 1474 13 discriminator 3
	str	r2, [r3]
	.loc 2 1472 82 discriminator 3
	ldr	r3, [sp, #32]
	adds	r3, r3, #1
	str	r3, [sp, #32]
.L283:
	.loc 2 1472 5 discriminator 1
	ldr	r3, [sp, #32]
	cmp	r3, #1
	bls	.L284
	.loc 2 1478 19
	ldr	r3, [sp, #20]
	movs	r2, #0
	str	r2, [r3]
	b	.L285
.L282:
	.loc 2 1481 10
	ldr	r3, [sp, #24]
	movs	r2, #0
	str	r2, [r3]
.L285:
	.loc 2 1484 34
	ldr	r3, .L288+4
	ldr	r3, [r3]
	subs	r3, r3, #8
	ldr	r2, .L288+4
	str	r3, [r2]
	.loc 2 1486 4
	b	.L286
.L281:
	.loc 2 1458 51 discriminator 2
	ldr	r3, [sp, #36]
	adds	r3, r3, #8
	str	r3, [sp, #36]
.L280:
	.loc 2 1458 16 discriminator 1
	ldr	r3, .L288+4
	ldr	r3, [r3]
	.loc 2 1458 2 discriminator 1
	ldr	r2, [sp, #36]
	cmp	r2, r3
	bcc	.L287
.L286:
	ldr	r3, [sp, #28]
	str	r3, [sp, #8]
.LBB257:
.LBB258:
	.loc 3 215 3
	ldr	r3, [sp, #8]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE258:
.LBE257:
	.loc 2 1491 1
	nop
	add	sp, sp, #40
.LCFI85:
	@ sp needed
	bx	lr
.L289:
	.align	2
.L288:
	.word	objectDataTable
	.word	firstFreeObjectDataTableIndex
.LFE232:
	.size	prvTraceDeleteObjectData, .-prvTraceDeleteObjectData
	.section	.text.prvIsValidCommand,"ax",%progbits
	.align	1
	.global	prvIsValidCommand
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvIsValidCommand, %function
prvIsValidCommand:
.LFB233:
	.loc 2 1495 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI86:
	str	r0, [sp, #4]
	.loc 2 1496 49
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r2, r3
	.loc 2 1497 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 2 1496 59
	add	r3, r3, r2
	uxth	r2, r3
	.loc 2 1498 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 2 1497 25
	add	r3, r3, r2
	uxth	r2, r3
	.loc 2 1499 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 2 1498 25
	add	r3, r3, r2
	uxth	r2, r3
	.loc 2 1500 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 2 1499 25
	add	r3, r3, r2
	uxth	r2, r3
	.loc 2 1501 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	uxth	r3, r3
	.loc 2 1500 25
	add	r3, r3, r2
	uxth	r3, r3
	.loc 2 1496 13
	mvns	r3, r3
	strh	r3, [sp, #14]	@ movhi
	.loc 2 1503 9
	ldr	r3, [sp, #4]
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	.loc 2 1503 26
	ldrh	r3, [sp, #14]
	lsrs	r3, r3, #8
	uxth	r3, r3
	uxtb	r3, r3
	.loc 2 1503 5
	cmp	r2, r3
	beq	.L291
	.loc 2 1504 10
	movs	r3, #0
	b	.L292
.L291:
	.loc 2 1506 9
	ldr	r3, [sp, #4]
	ldrb	r2, [r3, #6]	@ zero_extendqisi2
	.loc 2 1506 26
	ldrh	r3, [sp, #14]	@ movhi
	uxtb	r3, r3
	.loc 2 1506 5
	cmp	r2, r3
	beq	.L293
	.loc 2 1507 10
	movs	r3, #0
	b	.L292
.L293:
	.loc 2 1509 9
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 1509 5
	cmp	r3, #1
	bls	.L294
	.loc 2 1510 10
	movs	r3, #0
	b	.L292
.L294:
	.loc 2 1512 9
	movs	r3, #1
.L292:
	.loc 2 1513 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI87:
	@ sp needed
	bx	lr
.LFE233:
	.size	prvIsValidCommand, .-prvIsValidCommand
	.section	.text.prvProcessCommand,"ax",%progbits
	.align	1
	.global	prvProcessCommand
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvProcessCommand, %function
prvProcessCommand:
.LFB234:
	.loc 2 1517 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI88:
	sub	sp, sp, #12
.LCFI89:
	str	r0, [sp, #4]
	.loc 2 1518 14
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 1518 4
	cmp	r3, #1
	bne	.L298
	.loc 2 1521 31
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 2 1521 6
	mov	r0, r3
	bl	prvSetRecorderEnabled
	.loc 2 1522 6
	b	.L297
.L298:
	.loc 2 1524 6
	nop
.L297:
	.loc 2 1526 1
	nop
	add	sp, sp, #12
.LCFI90:
	@ sp needed
	ldr	pc, [sp], #4
.LFE234:
	.size	prvProcessCommand, .-prvProcessCommand
	.section	.text.prvTraceWarning,"ax",%progbits
	.align	1
	.global	prvTraceWarning
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceWarning, %function
prvTraceWarning:
.LFB235:
	.loc 2 1530 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI91:
	sub	sp, sp, #12
.LCFI92:
	str	r0, [sp, #4]
	.loc 2 1531 6
	ldr	r3, .L302
	ldr	r3, [r3]
	.loc 2 1531 5
	cmp	r3, #0
	bne	.L301
	.loc 2 1533 13
	ldr	r2, .L302
	ldr	r3, [sp, #4]
	str	r3, [r2]
	.loc 2 1534 3
	bl	prvTraceStoreWarnings
.L301:
	.loc 2 1536 1
	nop
	add	sp, sp, #12
.LCFI93:
	@ sp needed
	ldr	pc, [sp], #4
.L303:
	.align	2
.L302:
	.word	errorCode
.LFE235:
	.size	prvTraceWarning, .-prvTraceWarning
	.section .rodata
	.align	2
.LC11:
	.ascii	"Recorder stopped in prvTraceError()\000"
	.section	.text.prvTraceError,"ax",%progbits
	.align	1
	.global	prvTraceError
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceError, %function
prvTraceError:
.LFB236:
	.loc 2 1540 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI94:
	sub	sp, sp, #12
.LCFI95:
	str	r0, [sp, #4]
	.loc 2 1541 6
	ldr	r3, .L307
	ldr	r3, [r3]
	.loc 2 1541 5
	cmp	r3, #0
	bne	.L306
	.loc 2 1543 13
	ldr	r2, .L307
	ldr	r3, [sp, #4]
	str	r3, [r2]
	.loc 2 1544 3
	bl	prvTraceStoreWarnings
	.loc 2 1545 3
	ldr	r3, .L307+4
	ldr	r3, [r3]
	ldr	r1, .L307+8
	mov	r0, r3
	bl	vTracePrintF
	.loc 2 1547 3
	movs	r0, #0
	bl	prvSetRecorderEnabled
.L306:
	.loc 2 1549 1
	nop
	add	sp, sp, #12
.LCFI96:
	@ sp needed
	ldr	pc, [sp], #4
.L308:
	.align	2
.L307:
	.word	errorCode
	.word	trcWarningChannel
	.word	.LC11
.LFE236:
	.size	prvTraceError, .-prvTraceError
	.section	.text.prvTraceInitCortexM,"ax",%progbits
	.align	1
	.global	prvTraceInitCortexM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceInitCortexM, %function
prvTraceInitCortexM:
.LFB237:
	.loc 2 1556 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI97:
	.loc 2 1558 3
	ldr	r3, .L313
	.loc 2 1558 36
	ldr	r2, .L313+4
	str	r2, [r3]
	.loc 2 1561 36
	ldr	r3, .L313+8
	ldr	r3, [r3]
	ldr	r2, .L313+8
	orr	r3, r3, #16777216
	str	r3, [r2]
	.loc 2 1566 8
	ldr	r3, .L313+8
	ldr	r3, [r3]
	.loc 2 1566 6
	cmp	r3, #0
	bne	.L310
	.loc 2 1578 4
	movs	r0, #3
	bl	prvTraceError
	.loc 2 1579 4
	b	.L311
.L310:
	.loc 2 1583 8
	ldr	r3, .L313+12
	ldr	r3, [r3]
	.loc 2 1583 41
	and	r3, r3, #33554432
	.loc 2 1583 6
	cmp	r3, #0
	beq	.L312
	.loc 2 1595 4
	movs	r0, #4
	bl	prvTraceError
	.loc 2 1596 4
	b	.L311
.L312:
	.loc 2 1600 4
	ldr	r3, .L313+16
	.loc 2 1600 37
	movs	r2, #0
	str	r2, [r3]
	.loc 2 1603 37
	ldr	r3, .L313+12
	ldr	r3, [r3]
	ldr	r2, .L313+12
	orr	r3, r3, #1
	str	r3, [r2]
	.loc 2 1606 1
	nop
.L311:
	nop
	pop	{r3, pc}
.L314:
	.align	2
.L313:
	.word	-536862800
	.word	-978530731
	.word	-536809988
	.word	-536866816
	.word	-536866812
.LFE237:
	.size	prvTraceInitCortexM, .-prvTraceInitCortexM
	.section	.text.prvGetTimestamp32,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvGetTimestamp32, %function
prvGetTimestamp32:
.LFB238:
	.loc 2 1612 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 2 1614 10
	ldr	r3, .L317
	ldr	r3, [r3]
	.loc 2 1625 1
	mov	r0, r3
	bx	lr
.L318:
	.align	2
.L317:
	.word	-536866812
.LFE238:
	.size	prvGetTimestamp32, .-prvGetTimestamp32
	.section	.text.prvTraceStoreTSConfig,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvTraceStoreTSConfig, %function
prvTraceStoreTSConfig:
.LFB239:
	.loc 2 1629 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI98:
	sub	sp, sp, #12
.LCFI99:
	.loc 2 1631 25
	ldr	r3, .L321
	ldr	r3, [r3]
	.loc 2 1631 5
	cmp	r3, #0
	bne	.L320
	.loc 2 1633 22
	ldr	r3, .L321+4
	ldr	r3, [r3]
	ldr	r2, .L321
	str	r3, [r2]
.L320:
	.loc 2 1648 2
	ldr	r3, .L321
	ldr	r2, [r3]
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp]
	mov	r3, #1000
	movs	r1, #2
	movs	r0, #4
	bl	prvTraceStoreEvent
	.loc 2 1655 1
	nop
	add	sp, sp, #12
.LCFI100:
	@ sp needed
	ldr	pc, [sp], #4
.L322:
	.align	2
.L321:
	.word	timestampFrequency
	.word	SystemCoreClock
.LFE239:
	.size	prvTraceStoreTSConfig, .-prvTraceStoreTSConfig
	.section	.text.prvAllocateBufferPage,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvAllocateBufferPage, %function
prvAllocateBufferPage:
.LFB240:
	.loc 2 1659 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI101:
	str	r0, [sp, #4]
	.loc 2 1661 6
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 2 1663 20
	ldr	r3, [sp, #4]
	adds	r3, r3, #1
	.loc 2 1663 8
	cmp	r3, #0
	and	r3, r3, #1
	it	lt
	rsblt	r3, r3, #0
	str	r3, [sp, #12]
	.loc 2 1665 7
	b	.L324
.L326:
	.loc 2 1667 18
	ldr	r3, [sp, #12]
	adds	r3, r3, #1
	.loc 2 1667 9
	cmp	r3, #0
	and	r3, r3, #1
	it	lt
	rsblt	r3, r3, #0
	str	r3, [sp, #12]
.L324:
	.loc 2 1665 24
	ldr	r2, .L329
	ldr	r3, [sp, #12]
	ldrh	r3, [r2, r3, lsl #3]
	.loc 2 1665 7
	cmp	r3, #0
	beq	.L325
	.loc 2 1665 48 discriminator 1
	ldr	r3, [sp, #8]
	adds	r2, r3, #1
	str	r2, [sp, #8]
	.loc 2 1665 38 discriminator 1
	cmp	r3, #1
	ble	.L326
.L325:
	.loc 2 1670 21
	ldr	r2, .L329
	ldr	r3, [sp, #12]
	ldrh	r3, [r2, r3, lsl #3]
	.loc 2 1670 5
	cmp	r3, #0
	bne	.L327
	.loc 2 1672 10
	ldr	r3, [sp, #12]
	b	.L328
.L327:
	.loc 2 1675 9
	mov	r3, #-1
.L328:
	.loc 2 1676 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI102:
	@ sp needed
	bx	lr
.L330:
	.align	2
.L329:
	.word	PageInfo
.LFE240:
	.size	prvAllocateBufferPage, .-prvAllocateBufferPage
	.section	.text.prvPageReadComplete,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvPageReadComplete, %function
prvPageReadComplete:
.LFB241:
	.loc 2 1680 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI103:
	str	r0, [sp, #4]
.LBB259:
.LBB260:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #8]
	.loc 3 204 9
	ldr	r3, [sp, #8]
.LBE260:
.LBE259:
	.loc 2 1683 18
	str	r3, [sp, #20]
	movs	r3, #1
	str	r3, [sp, #12]
.LBB261:
.LBB262:
	.loc 3 215 3
	ldr	r3, [sp, #12]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE262:
.LBE261:
	.loc 2 1684 37
	ldr	r2, .L333
	ldr	r3, [sp, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movw	r2, #2500
	strh	r2, [r3, #2]	@ movhi
	.loc 2 1685 37
	ldr	r3, .L333+4
	ldr	r3, [r3]
	.loc 2 1685 60
	ldr	r2, [sp, #4]
	movw	r1, #2500
	mul	r2, r1, r2
	.loc 2 1685 37
	add	r2, r2, r3
	.loc 2 1685 35
	ldr	r1, .L333
	ldr	r3, [sp, #4]
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r2, [r3, #4]
	.loc 2 1686 29
	ldr	r2, .L333
	ldr	r3, [sp, #4]
	movs	r1, #0
	strh	r1, [r2, r3, lsl #3]	@ movhi
	.loc 2 1688 22
	ldr	r3, .L333+8
	ldr	r3, [r3]
	addw	r3, r3, #2500
	ldr	r2, .L333+8
	str	r3, [r2]
	ldr	r3, [sp, #20]
	str	r3, [sp, #16]
.LBB263:
.LBB264:
	.loc 3 215 3
	ldr	r3, [sp, #16]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE264:
.LBE263:
	.loc 2 1691 1
	nop
	add	sp, sp, #24
.LCFI104:
	@ sp needed
	bx	lr
.L334:
	.align	2
.L333:
	.word	PageInfo
	.word	EventBuffer
	.word	TotalBytesRemaining
.LFE241:
	.size	prvPageReadComplete, .-prvPageReadComplete
	.section	.text.prvGetBufferPage,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvGetBufferPage, %function
prvGetBufferPage:
.LFB242:
	.loc 2 1695 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI105:
	str	r0, [sp, #4]
	.loc 2 1697 6
	movs	r3, #0
	str	r3, [sp, #12]
	.loc 2 1698 39
	ldr	r3, .L341
	ldrsb	r3, [r3]
	adds	r3, r3, #1
	.loc 2 1698 44
	cmp	r3, #0
	and	r3, r3, #1
	it	lt
	rsblt	r3, r3, #0
	.loc 2 1698 11
	strb	r3, [sp, #11]
	.loc 2 1700 7
	b	.L336
.L338:
	.loc 2 1702 27
	ldrsb	r3, [sp, #11]
	adds	r3, r3, #1
	.loc 2 1702 32
	cmp	r3, #0
	and	r3, r3, #1
	it	lt
	rsblt	r3, r3, #0
	.loc 2 1702 9
	strb	r3, [sp, #11]
.L336:
	.loc 2 1700 24
	ldrsb	r3, [sp, #11]
	ldr	r2, .L341+4
	ldrh	r3, [r2, r3, lsl #3]
	.loc 2 1700 7
	cmp	r3, #2
	beq	.L337
	.loc 2 1700 47 discriminator 1
	ldr	r3, [sp, #12]
	adds	r2, r3, #1
	str	r2, [sp, #12]
	.loc 2 1700 38 discriminator 1
	cmp	r3, #1
	ble	.L338
.L337:
	.loc 2 1705 21
	ldrsb	r3, [sp, #11]
	ldr	r2, .L341+4
	ldrh	r3, [r2, r3, lsl #3]
	.loc 2 1705 5
	cmp	r3, #2
	bne	.L339
	.loc 2 1707 38
	ldrsb	r3, [sp, #11]
	ldr	r2, .L341+4
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrh	r3, [r3, #2]
	.loc 2 1707 21
	rsb	r3, r3, #2496
	adds	r3, r3, #4
	.loc 2 1707 14
	ldr	r2, [sp, #4]
	str	r3, [r2]
	.loc 2 1708 12
	ldr	r2, .L341
	ldrb	r3, [sp, #11]
	strb	r3, [r2]
	.loc 2 1709 10
	ldrsb	r3, [sp, #11]
	b	.L340
.L339:
	.loc 2 1712 13
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3]
	.loc 2 1714 9
	mov	r3, #-1
.L340:
	.loc 2 1715 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI106:
	@ sp needed
	bx	lr
.L342:
	.align	2
.L341:
	.word	lastPage.9073
	.word	PageInfo
.LFE242:
	.size	prvGetBufferPage, .-prvGetBufferPage
	.section	.text.prvPagedEventBufferTransfer,"ax",%progbits
	.align	1
	.global	prvPagedEventBufferTransfer
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvPagedEventBufferTransfer, %function
prvPagedEventBufferTransfer:
.LFB243:
	.loc 2 1735 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI107:
	sub	sp, sp, #20
.LCFI108:
	.loc 2 1736 9
	movs	r3, #255
	strb	r3, [sp, #11]
	.loc 2 1737 13
	movs	r3, #0
	str	r3, [sp, #12]
	.loc 2 1738 10
	movs	r3, #0
	str	r3, [sp, #4]
	.loc 2 1741 30
	mov	r3, sp
	mov	r0, r3
	bl	prvGetBufferPage
	mov	r3, r0
	.loc 2 1741 20
	strb	r3, [sp, #11]
	.loc 2 1746 8
	ldrsb	r3, [sp, #11]
	cmp	r3, #0
	blt	.L344
.L348:
	.loc 2 1750 8
	ldr	r3, .L350
	ldr	r3, [r3]
	.loc 2 1750 47
	ldrsb	r2, [sp, #11]
	movw	r1, #2500
	mul	r1, r1, r2
	.loc 2 1750 54
	ldr	r2, [sp, #12]
	add	r2, r2, r1
	.loc 2 1750 19
	adds	r0, r3, r2
	.loc 2 1750 107
	ldr	r2, [sp]
	ldr	r3, [sp, #12]
	subs	r3, r2, r3
	.loc 2 1750 8
	mov	r1, r3
	add	r3, sp, #4
	mov	r2, r3
	bl	writeToRTT
	mov	r3, r0
	.loc 2 1750 7
	cmp	r3, #0
	bne	.L345
	.loc 2 1756 27
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #12]
	add	r3, r3, r2
	str	r3, [sp, #12]
	.loc 2 1758 31
	ldr	r3, [sp]
	.loc 2 1758 8
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bne	.L348
	.loc 2 1761 6
	ldrsb	r3, [sp, #11]
	mov	r0, r3
	bl	prvPageReadComplete
	.loc 2 1762 13
	ldr	r3, [sp, #12]
	b	.L349
.L345:
	.loc 2 1768 5
	movs	r0, #106
	bl	prvTraceWarning
	.loc 2 1769 12
	movs	r3, #0
	b	.L349
.L344:
	.loc 2 1773 9
	movs	r3, #0
.L349:
	.loc 2 1774 1 discriminator 2
	mov	r0, r3
	add	sp, sp, #20
.LCFI109:
	@ sp needed
	ldr	pc, [sp], #4
.L351:
	.align	2
.L350:
	.word	EventBuffer
.LFE243:
	.size	prvPagedEventBufferTransfer, .-prvPagedEventBufferTransfer
	.section	.text.prvPagedEventBufferGetWritePointer,"ax",%progbits
	.align	1
	.global	prvPagedEventBufferGetWritePointer
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvPagedEventBufferGetWritePointer, %function
prvPagedEventBufferGetWritePointer:
.LFB244:
	.loc 2 1789 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI110:
	sub	sp, sp, #20
.LCFI111:
	str	r0, [sp, #4]
	.loc 2 1793 23
	ldr	r3, .L358
	ldr	r3, [r3]
	.loc 2 1793 5
	cmp	r3, #-1
	bne	.L353
	.loc 2 1795 25
	ldr	r3, .L358
	ldr	r3, [r3]
	mov	r0, r3
	bl	prvAllocateBufferPage
	mov	r3, r0
	.loc 2 1795 23
	ldr	r2, .L358
	str	r3, [r2]
	.loc 2 1796 24
	ldr	r3, .L358
	ldr	r3, [r3]
	.loc 2 1796 6
	cmp	r3, #-1
	bne	.L353
	.loc 2 1798 25
	ldr	r3, .L358+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L358+4
	str	r3, [r2]
	.loc 2 1799 10
	movs	r3, #0
	b	.L354
.L353:
	.loc 2 1803 35
	ldr	r3, .L358
	ldr	r3, [r3]
	ldr	r2, .L358+8
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrh	r3, [r3, #2]
	mov	r2, r3
	.loc 2 1803 51
	ldr	r3, [sp, #4]
	subs	r3, r2, r3
	.loc 2 1803 8
	cmp	r3, #0
	bge	.L355
	.loc 2 1805 29
	ldr	r3, .L358
	ldr	r3, [r3]
	.loc 2 1805 37
	ldr	r2, .L358+8
	movs	r1, #2
	strh	r1, [r2, r3, lsl #3]	@ movhi
	.loc 2 1807 23
	ldr	r3, .L358+12
	ldr	r2, [r3]
	.loc 2 1807 52
	ldr	r3, .L358
	ldr	r3, [r3]
	ldr	r1, .L358+8
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldrh	r3, [r3, #2]
	.loc 2 1807 23
	subs	r3, r2, r3
	ldr	r2, .L358+12
	str	r3, [r2]
	.loc 2 1809 27
	ldr	r3, .L358+12
	ldr	r2, [r3]
	ldr	r3, .L358+16
	ldr	r3, [r3]
	.loc 2 1809 6
	cmp	r2, r3
	bcs	.L356
	.loc 2 1810 38
	ldr	r3, .L358+12
	ldr	r3, [r3]
	ldr	r2, .L358+16
	str	r3, [r2]
.L356:
	.loc 2 1812 22
	ldr	r3, .L358
	ldr	r3, [r3]
	mov	r0, r3
	bl	prvAllocateBufferPage
	mov	r3, r0
	.loc 2 1812 20
	ldr	r2, .L358
	str	r3, [r2]
	.loc 2 1813 24
	ldr	r3, .L358
	ldr	r3, [r3]
	.loc 2 1813 6
	cmp	r3, #-1
	bne	.L355
	.loc 2 1815 24
	ldr	r3, .L358+4
	ldr	r3, [r3]
	adds	r3, r3, #1
	ldr	r2, .L358+4
	str	r3, [r2]
	.loc 2 1816 11
	movs	r3, #0
	b	.L354
.L355:
	.loc 2 1819 34
	ldr	r3, .L358
	ldr	r3, [r3]
	.loc 2 1819 6
	ldr	r2, .L358+8
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [sp, #12]
	.loc 2 1820 42
	ldr	r3, .L358
	ldr	r3, [r3]
	ldr	r2, .L358+8
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r1, [r3, #4]
	ldr	r2, [sp, #4]
	ldr	r3, .L358
	ldr	r3, [r3]
	add	r2, r2, r1
	ldr	r1, .L358+8
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r2, [r3, #4]
	.loc 2 1821 83
	ldr	r3, .L358
	ldr	r3, [r3]
	ldr	r2, .L358+8
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldrh	r1, [r3, #2]
	.loc 2 1821 46
	ldr	r3, [sp, #4]
	uxth	r2, r3
	.loc 2 1821 28
	ldr	r3, .L358
	ldr	r3, [r3]
	.loc 2 1821 46
	subs	r2, r1, r2
	uxth	r1, r2
	.loc 2 1821 44
	ldr	r2, .L358+8
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r2, r1	@ movhi
	strh	r2, [r3, #2]	@ movhi
	.loc 2 1823 44
	ldr	r3, .L358+12
	ldr	r3, [r3]
	.loc 2 1823 45
	ldr	r2, [sp, #4]
	uxth	r2, r2
	.loc 2 1823 44
	subs	r3, r3, r2
	.loc 2 1823 22
	ldr	r2, .L358+12
	str	r3, [r2]
	.loc 2 1825 26
	ldr	r3, .L358+12
	ldr	r2, [r3]
	ldr	r3, .L358+16
	ldr	r3, [r3]
	.loc 2 1825 5
	cmp	r2, r3
	bcs	.L357
	.loc 2 1826 36
	ldr	r3, .L358+12
	ldr	r3, [r3]
	ldr	r2, .L358+16
	str	r3, [r2]
.L357:
	.loc 2 1828 9
	ldr	r3, [sp, #12]
.L354:
	.loc 2 1829 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI112:
	@ sp needed
	ldr	pc, [sp], #4
.L359:
	.align	2
.L358:
	.word	currentWritePage.9091
	.word	DroppedEventCounter
	.word	PageInfo
	.word	TotalBytesRemaining
	.word	TotalBytesRemaining_LowWaterMark
.LFE244:
	.size	prvPagedEventBufferGetWritePointer, .-prvPagedEventBufferGetWritePointer
	.section	.text.prvPagedEventBufferInit,"ax",%progbits
	.align	1
	.global	prvPagedEventBufferInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvPagedEventBufferInit, %function
prvPagedEventBufferInit:
.LFB245:
	.loc 2 1843 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #32
.LCFI113:
	str	r0, [sp, #4]
	.loc 2 1847 17
	ldr	r2, .L364
	ldr	r3, [sp, #4]
	str	r3, [r2]
.LBB265:
.LBB266:
	.loc 3 203 3
	.syntax unified
@ 203 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MRS r3, primask
@ 0 "" 2
	.thumb
	.syntax unified
	str	r3, [sp, #16]
	.loc 3 204 9
	ldr	r3, [sp, #16]
.LBE266:
.LBE265:
	.loc 2 1849 18
	str	r3, [sp, #24]
	movs	r3, #1
	str	r3, [sp, #20]
.LBB267:
.LBB268:
	.loc 3 215 3
	ldr	r3, [sp, #20]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE268:
.LBE267:
	.loc 2 1850 9
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 2 1850 2
	b	.L362
.L363:
	.loc 2 1852 30 discriminator 3
	ldr	r2, .L364+4
	ldr	r3, [sp, #28]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movw	r2, #2500
	strh	r2, [r3, #2]	@ movhi
	.loc 2 1853 30 discriminator 3
	ldr	r3, .L364
	ldr	r3, [r3]
	.loc 2 1853 45 discriminator 3
	ldr	r2, [sp, #28]
	movw	r1, #2500
	mul	r2, r1, r2
	.loc 2 1853 30 discriminator 3
	add	r2, r2, r3
	.loc 2 1853 28 discriminator 3
	ldr	r1, .L364+4
	ldr	r3, [sp, #28]
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r2, [r3, #4]
	.loc 2 1854 22 discriminator 3
	ldr	r2, .L364+4
	ldr	r3, [sp, #28]
	movs	r1, #0
	strh	r1, [r2, r3, lsl #3]	@ movhi
	.loc 2 1850 22 discriminator 3
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	str	r3, [sp, #28]
.L362:
	.loc 2 1850 2 discriminator 1
	ldr	r3, [sp, #28]
	cmp	r3, #1
	ble	.L363
	ldr	r3, [sp, #24]
	str	r3, [sp, #12]
.LBB269:
.LBB270:
	.loc 3 215 3
	ldr	r3, [sp, #12]
	.syntax unified
@ 215 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	MSR primask, r3
@ 0 "" 2
	.loc 3 216 1
	.thumb
	.syntax unified
	nop
.LBE270:
.LBE269:
	.loc 2 1858 1
	nop
	add	sp, sp, #32
.LCFI114:
	@ sp needed
	bx	lr
.L365:
	.align	2
.L364:
	.word	EventBuffer
	.word	PageInfo
.LFE245:
	.size	prvPagedEventBufferInit, .-prvPagedEventBufferInit
	.section	.data.lastPage.9073,"aw"
	.type	lastPage.9073, %object
	.size	lastPage.9073, 1
lastPage.9073:
	.byte	-1
	.section	.data.currentWritePage.9091,"aw"
	.align	2
	.type	currentWritePage.9091, %object
	.size	currentWritePage.9091, 4
currentWritePage.9091:
	.word	-1
	.section	.debug_frame,"",%progbits
.Lframe0:
	.4byte	.LECIE0-.LSCIE0
.LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii	"\000"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xe
	.byte	0xc
	.uleb128 0xd
	.uleb128 0
	.align	2
.LECIE0:
.LSFDE0:
	.4byte	.LEFDE0-.LASFDE0
.LASFDE0:
	.4byte	.Lframe0
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.align	2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.align	2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.align	2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.align	2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.align	2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.align	2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.align	2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.align	2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.align	2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.align	2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.align	2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.align	2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.align	2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.align	2
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.align	2
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.align	2
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.byte	0x4
	.4byte	.LCFI0-.LFB200
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.byte	0x4
	.4byte	.LCFI1-.LFB201
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.byte	0x4
	.4byte	.LCFI2-.LFB202
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.byte	0x4
	.4byte	.LCFI5-.LFB203
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.byte	0x4
	.4byte	.LCFI7-.LFB204
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB205
	.4byte	.LFE205-.LFB205
	.byte	0x4
	.4byte	.LCFI10-.LFB205
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.byte	0x4
	.4byte	.LCFI13-.LFB206
	.byte	0xe
	.uleb128 0xc
	.byte	0x81
	.uleb128 0x3
	.byte	0x82
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xce
	.byte	0xe
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xc3
	.byte	0xc2
	.byte	0xc1
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB207
	.4byte	.LFE207-.LFB207
	.byte	0x4
	.4byte	.LCFI19-.LFB207
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.byte	0x4
	.4byte	.LCFI22-.LFB208
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.byte	0x4
	.4byte	.LCFI25-.LFB209
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE104:
.LSFDE106:
	.4byte	.LEFDE106-.LASFDE106
.LASFDE106:
	.4byte	.Lframe0
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.align	2
.LEFDE106:
.LSFDE108:
	.4byte	.LEFDE108-.LASFDE108
.LASFDE108:
	.4byte	.Lframe0
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.align	2
.LEFDE108:
.LSFDE110:
	.4byte	.LEFDE110-.LASFDE110
.LASFDE110:
	.4byte	.Lframe0
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.byte	0x4
	.4byte	.LCFI28-.LFB212
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE110:
.LSFDE112:
	.4byte	.LEFDE112-.LASFDE112
.LASFDE112:
	.4byte	.Lframe0
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.align	2
.LEFDE112:
.LSFDE114:
	.4byte	.LEFDE114-.LASFDE114
.LASFDE114:
	.4byte	.Lframe0
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.byte	0x4
	.4byte	.LCFI29-.LFB214
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE114:
.LSFDE116:
	.4byte	.LEFDE116-.LASFDE116
.LASFDE116:
	.4byte	.Lframe0
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.byte	0x4
	.4byte	.LCFI31-.LFB215
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE116:
.LSFDE118:
	.4byte	.LEFDE118-.LASFDE118
.LASFDE118:
	.4byte	.Lframe0
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.byte	0x4
	.4byte	.LCFI33-.LFB216
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE118:
.LSFDE120:
	.4byte	.LEFDE120-.LASFDE120
.LASFDE120:
	.4byte	.Lframe0
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.byte	0x4
	.4byte	.LCFI36-.LFB217
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x48
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE120:
.LSFDE122:
	.4byte	.LEFDE122-.LASFDE122
.LASFDE122:
	.4byte	.Lframe0
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.byte	0x4
	.4byte	.LCFI39-.LFB218
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE122:
.LSFDE124:
	.4byte	.LEFDE124-.LASFDE124
.LASFDE124:
	.4byte	.Lframe0
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.byte	0x4
	.4byte	.LCFI42-.LFB219
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE124:
.LSFDE126:
	.4byte	.LEFDE126-.LASFDE126
.LASFDE126:
	.4byte	.Lframe0
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.byte	0x4
	.4byte	.LCFI45-.LFB220
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE126:
.LSFDE128:
	.4byte	.LEFDE128-.LASFDE128
.LASFDE128:
	.4byte	.Lframe0
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.byte	0x4
	.4byte	.LCFI48-.LFB221
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE128:
.LSFDE130:
	.4byte	.LEFDE130-.LASFDE130
.LASFDE130:
	.4byte	.Lframe0
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.byte	0x4
	.4byte	.LCFI51-.LFB222
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE130:
.LSFDE132:
	.4byte	.LEFDE132-.LASFDE132
.LASFDE132:
	.4byte	.Lframe0
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.byte	0x4
	.4byte	.LCFI54-.LFB223
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE132:
.LSFDE134:
	.4byte	.LEFDE134-.LASFDE134
.LASFDE134:
	.4byte	.Lframe0
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.byte	0x4
	.4byte	.LCFI57-.LFB224
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE134:
.LSFDE136:
	.4byte	.LEFDE136-.LASFDE136
.LASFDE136:
	.4byte	.Lframe0
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.byte	0x4
	.4byte	.LCFI60-.LFB225
	.byte	0xe
	.uleb128 0xc
	.byte	0x81
	.uleb128 0x3
	.byte	0x82
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0x10
	.byte	0x8e
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0xe
	.uleb128 0x80
	.byte	0x4
	.4byte	.LCFI63-.LCFI62
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0xce
	.byte	0xe
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0xc3
	.byte	0xc2
	.byte	0xc1
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE136:
.LSFDE138:
	.4byte	.LEFDE138-.LASFDE138
.LASFDE138:
	.4byte	.Lframe0
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.byte	0x4
	.4byte	.LCFI66-.LFB226
	.byte	0xe
	.uleb128 0x8
	.byte	0x82
	.uleb128 0x2
	.byte	0x83
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0xe
	.uleb128 0xc
	.byte	0x8e
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xce
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0xc3
	.byte	0xc2
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE138:
.LSFDE140:
	.4byte	.LEFDE140-.LASFDE140
.LASFDE140:
	.4byte	.Lframe0
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.byte	0x4
	.4byte	.LCFI72-.LFB227
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0x98
	.byte	0x4
	.4byte	.LCFI74-.LCFI73
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE140:
.LSFDE142:
	.4byte	.LEFDE142-.LASFDE142
.LASFDE142:
	.4byte	.Lframe0
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.byte	0x4
	.4byte	.LCFI75-.LFB228
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0x98
	.byte	0x4
	.4byte	.LCFI77-.LCFI76
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE142:
.LSFDE144:
	.4byte	.LEFDE144-.LASFDE144
.LASFDE144:
	.4byte	.Lframe0
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.byte	0x4
	.4byte	.LCFI78-.LFB229
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE144:
.LSFDE146:
	.4byte	.LEFDE146-.LASFDE146
.LASFDE146:
	.4byte	.Lframe0
	.4byte	.LFB230
	.4byte	.LFE230-.LFB230
	.byte	0x4
	.4byte	.LCFI80-.LFB230
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE146:
.LSFDE148:
	.4byte	.LEFDE148-.LASFDE148
.LASFDE148:
	.4byte	.Lframe0
	.4byte	.LFB231
	.4byte	.LFE231-.LFB231
	.byte	0x4
	.4byte	.LCFI82-.LFB231
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI83-.LCFI82
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE148:
.LSFDE150:
	.4byte	.LEFDE150-.LASFDE150
.LASFDE150:
	.4byte	.Lframe0
	.4byte	.LFB232
	.4byte	.LFE232-.LFB232
	.byte	0x4
	.4byte	.LCFI84-.LFB232
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI85-.LCFI84
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE150:
.LSFDE152:
	.4byte	.LEFDE152-.LASFDE152
.LASFDE152:
	.4byte	.Lframe0
	.4byte	.LFB233
	.4byte	.LFE233-.LFB233
	.byte	0x4
	.4byte	.LCFI86-.LFB233
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI87-.LCFI86
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE152:
.LSFDE154:
	.4byte	.LEFDE154-.LASFDE154
.LASFDE154:
	.4byte	.Lframe0
	.4byte	.LFB234
	.4byte	.LFE234-.LFB234
	.byte	0x4
	.4byte	.LCFI88-.LFB234
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI89-.LCFI88
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI90-.LCFI89
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE154:
.LSFDE156:
	.4byte	.LEFDE156-.LASFDE156
.LASFDE156:
	.4byte	.Lframe0
	.4byte	.LFB235
	.4byte	.LFE235-.LFB235
	.byte	0x4
	.4byte	.LCFI91-.LFB235
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI92-.LCFI91
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI93-.LCFI92
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE156:
.LSFDE158:
	.4byte	.LEFDE158-.LASFDE158
.LASFDE158:
	.4byte	.Lframe0
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.byte	0x4
	.4byte	.LCFI94-.LFB236
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI95-.LCFI94
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI96-.LCFI95
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE158:
.LSFDE160:
	.4byte	.LEFDE160-.LASFDE160
.LASFDE160:
	.4byte	.Lframe0
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.byte	0x4
	.4byte	.LCFI97-.LFB237
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE160:
.LSFDE162:
	.4byte	.LEFDE162-.LASFDE162
.LASFDE162:
	.4byte	.Lframe0
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.align	2
.LEFDE162:
.LSFDE164:
	.4byte	.LEFDE164-.LASFDE164
.LASFDE164:
	.4byte	.Lframe0
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.byte	0x4
	.4byte	.LCFI98-.LFB239
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI99-.LCFI98
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI100-.LCFI99
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE164:
.LSFDE166:
	.4byte	.LEFDE166-.LASFDE166
.LASFDE166:
	.4byte	.Lframe0
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.byte	0x4
	.4byte	.LCFI101-.LFB240
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI102-.LCFI101
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE166:
.LSFDE168:
	.4byte	.LEFDE168-.LASFDE168
.LASFDE168:
	.4byte	.Lframe0
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.byte	0x4
	.4byte	.LCFI103-.LFB241
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI104-.LCFI103
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE168:
.LSFDE170:
	.4byte	.LEFDE170-.LASFDE170
.LASFDE170:
	.4byte	.Lframe0
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x4
	.4byte	.LCFI105-.LFB242
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI106-.LCFI105
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE170:
.LSFDE172:
	.4byte	.LEFDE172-.LASFDE172
.LASFDE172:
	.4byte	.Lframe0
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.byte	0x4
	.4byte	.LCFI107-.LFB243
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI108-.LCFI107
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI109-.LCFI108
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE172:
.LSFDE174:
	.4byte	.LEFDE174-.LASFDE174
.LASFDE174:
	.4byte	.Lframe0
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.byte	0x4
	.4byte	.LCFI110-.LFB244
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI111-.LCFI110
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI112-.LCFI111
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE174:
.LSFDE176:
	.4byte	.LEFDE176-.LASFDE176
.LASFDE176:
	.4byte	.Lframe0
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.byte	0x4
	.4byte	.LCFI113-.LFB245
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI114-.LCFI113
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE176:
	.text
.Letext0:
	.file 4 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.section	.debug_types,"G",%progbits,wt.5a388e722f0d9156,comdat
	.4byte	0x6b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x5a
	.byte	0x38
	.byte	0x8e
	.byte	0x72
	.byte	0x2f
	.byte	0xd
	.byte	0x91
	.byte	0x56
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x2
	.byte	0x7b
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x7c
	.byte	0xb
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x7d
	.byte	0xb
	.4byte	0x4e
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x7e
	.byte	0x8
	.4byte	0x5a
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x60
	.uleb128 0x5
	.byte	0x4
	.4byte	0x67
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0
	.section	.debug_types,"G",%progbits,wt.d70d37e2621dcb3d,comdat
	.4byte	0x32
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xd7
	.byte	0xd
	.byte	0x37
	.byte	0xe2
	.byte	0x62
	.byte	0x1d
	.byte	0xcb
	.byte	0x3d
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x7
	.2byte	0x140
	.byte	0x2
	.byte	0x73
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF6
	.byte	0x2
	.byte	0x78
	.byte	0x5
	.byte	0xf9
	.byte	0x5d
	.byte	0xf3
	.byte	0x23
	.byte	0xb
	.byte	0x43
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_types,"G",%progbits,wt.f95df3230b430410,comdat
	.4byte	0x84
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xf9
	.byte	0x5d
	.byte	0xf3
	.byte	0x23
	.byte	0xb
	.byte	0x43
	.byte	0x4
	.byte	0x10
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x9
	.2byte	0x140
	.byte	0x2
	.byte	0x74
	.byte	0x3
	.4byte	0x40
	.uleb128 0xa
	.4byte	.LASF7
	.byte	0x2
	.byte	0x76
	.byte	0xe
	.4byte	0x40
	.uleb128 0xa
	.4byte	.LASF8
	.byte	0x2
	.byte	0x77
	.byte	0xd
	.4byte	0x50
	.byte	0
	.uleb128 0xb
	.4byte	0x61
	.4byte	0x50
	.uleb128 0xc
	.4byte	0x6d
	.byte	0x4f
	.byte	0
	.uleb128 0xb
	.4byte	0x74
	.4byte	0x61
	.uleb128 0xd
	.4byte	0x6d
	.2byte	0x13f
	.byte	0
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x6d
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x80
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.e86cb17e83e92aab,comdat
	.4byte	0x32
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xe8
	.byte	0x6c
	.byte	0xb1
	.byte	0x7e
	.byte	0x83
	.byte	0xe9
	.byte	0x2a
	.byte	0xab
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x7
	.2byte	0x500
	.byte	0x2
	.byte	0x6a
	.byte	0x9
	.uleb128 0x8
	.4byte	.LASF13
	.byte	0x2
	.byte	0x6f
	.byte	0x5
	.byte	0x22
	.byte	0xf
	.byte	0xf7
	.byte	0x9a
	.byte	0xb4
	.byte	0x38
	.byte	0x55
	.byte	0x9f
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_types,"G",%progbits,wt.220ff79ab438559f,comdat
	.4byte	0x85
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x22
	.byte	0xf
	.byte	0xf7
	.byte	0x9a
	.byte	0xb4
	.byte	0x38
	.byte	0x55
	.byte	0x9f
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x9
	.2byte	0x500
	.byte	0x2
	.byte	0x6b
	.byte	0x3
	.4byte	0x40
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x2
	.byte	0x6d
	.byte	0xe
	.4byte	0x40
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x2
	.byte	0x6e
	.byte	0xd
	.4byte	0x51
	.byte	0
	.uleb128 0xb
	.4byte	0x62
	.4byte	0x51
	.uleb128 0xd
	.4byte	0x6e
	.2byte	0x13f
	.byte	0
	.uleb128 0xb
	.4byte	0x75
	.4byte	0x62
	.uleb128 0xd
	.4byte	0x6e
	.2byte	0x4ff
	.byte	0
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x6e
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x81
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.442164bca4b83c5d,comdat
	.4byte	0xb2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x44
	.byte	0x21
	.byte	0x64
	.byte	0xbc
	.byte	0xa4
	.byte	0xb8
	.byte	0x3c
	.byte	0x5d
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x14
	.byte	0x2
	.byte	0x52
	.byte	0x9
	.4byte	0x8f
	.uleb128 0xe
	.ascii	"psf\000"
	.byte	0x2
	.byte	0x53
	.byte	0xc
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0x54
	.byte	0xc
	.4byte	0x9b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0x55
	.byte	0xc
	.4byte	0x9b
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x2
	.byte	0x56
	.byte	0xc
	.4byte	0x8f
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x2
	.byte	0x57
	.byte	0xc
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x2
	.byte	0x58
	.byte	0xc
	.4byte	0x9b
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x2
	.byte	0x59
	.byte	0xc
	.4byte	0x9b
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x2
	.byte	0x5a
	.byte	0xc
	.4byte	0x9b
	.byte	0x12
	.byte	0
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0xa7
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0xae
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0
	.section	.debug_types,"G",%progbits,wt.51ca39c63800148b,comdat
	.4byte	0x71
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x51
	.byte	0xca
	.byte	0x39
	.byte	0xc6
	.byte	0x38
	.byte	0
	.byte	0x14
	.byte	0x8b
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x44
	.byte	0x2
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x2
	.byte	0x4e
	.byte	0xd
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x2
	.byte	0x4f
	.byte	0xc
	.4byte	0x51
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x2
	.byte	0x37
	.byte	0x3
	.byte	0x5a
	.byte	0x9e
	.byte	0xeb
	.byte	0x9b
	.byte	0x1f
	.byte	0xb6
	.byte	0x35
	.byte	0x5a
	.uleb128 0xb
	.4byte	0x61
	.4byte	0x61
	.uleb128 0xc
	.4byte	0x6d
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x6d
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.3a70af6bf213b7bf,comdat
	.4byte	0x7b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x3a
	.byte	0x70
	.byte	0xaf
	.byte	0x6b
	.byte	0xf2
	.byte	0x13
	.byte	0xb7
	.byte	0xbf
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x14
	.byte	0x2
	.byte	0x44
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x2
	.byte	0x45
	.byte	0xd
	.4byte	0x5b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x2
	.byte	0x46
	.byte	0xc
	.4byte	0x6b
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x2
	.byte	0x47
	.byte	0xc
	.4byte	0x6b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x2
	.byte	0x48
	.byte	0xc
	.4byte	0x6b
	.byte	0x10
	.byte	0
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x2
	.byte	0x37
	.byte	0x3
	.byte	0x5a
	.byte	0x9e
	.byte	0xeb
	.byte	0x9b
	.byte	0x1f
	.byte	0xb6
	.byte	0x35
	.byte	0x5a
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x77
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.0bda08608835a00f,comdat
	.4byte	0x6e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xb
	.byte	0xda
	.byte	0x8
	.byte	0x60
	.byte	0x88
	.byte	0x35
	.byte	0xa0
	.byte	0xf
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x10
	.byte	0x2
	.byte	0x3e
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x2
	.byte	0x3f
	.byte	0xd
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x2
	.byte	0x40
	.byte	0xc
	.4byte	0x5e
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x2
	.byte	0x41
	.byte	0xc
	.4byte	0x5e
	.byte	0xc
	.byte	0
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x2
	.byte	0x37
	.byte	0x3
	.byte	0x5a
	.byte	0x9e
	.byte	0xeb
	.byte	0x9b
	.byte	0x1f
	.byte	0xb6
	.byte	0x35
	.byte	0x5a
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x6a
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.e6a622a6749b3a63,comdat
	.4byte	0x61
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xe6
	.byte	0xa6
	.byte	0x22
	.byte	0xa6
	.byte	0x74
	.byte	0x9b
	.byte	0x3a
	.byte	0x63
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x2
	.byte	0x39
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x2
	.byte	0x3a
	.byte	0xd
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x2
	.byte	0x3b
	.byte	0xc
	.4byte	0x51
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x2
	.byte	0x37
	.byte	0x3
	.byte	0x5a
	.byte	0x9e
	.byte	0xeb
	.byte	0x9b
	.byte	0x1f
	.byte	0xb6
	.byte	0x35
	.byte	0x5a
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x5d
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.5a9eeb9b1fb6355a,comdat
	.4byte	0x70
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x5a
	.byte	0x9e
	.byte	0xeb
	.byte	0x9b
	.byte	0x1f
	.byte	0xb6
	.byte	0x35
	.byte	0x5a
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x2
	.byte	0x33
	.byte	0x9
	.4byte	0x4d
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x2
	.byte	0x34
	.byte	0xb
	.4byte	0x4d
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x2
	.byte	0x35
	.byte	0xb
	.4byte	0x4d
	.byte	0x2
	.uleb128 0xe
	.ascii	"TS\000"
	.byte	0x2
	.byte	0x36
	.byte	0xb
	.4byte	0x59
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x65
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x6c
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0
	.file 5 "../../../TraceRecorder/include/trcRecorder.h"
	.section	.debug_types,"G",%progbits,wt.9b098ca78796c000,comdat
	.4byte	0x9c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x9b
	.byte	0x9
	.byte	0x8c
	.byte	0xa7
	.byte	0x87
	.byte	0x96
	.byte	0xc0
	.byte	0
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0x8
	.byte	0x5
	.2byte	0x691
	.byte	0x9
	.4byte	0x98
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x5
	.2byte	0x693
	.byte	0x10
	.4byte	0x98
	.byte	0
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x5
	.2byte	0x694
	.byte	0x10
	.4byte	0x98
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x5
	.2byte	0x695
	.byte	0x10
	.4byte	0x98
	.byte	0x2
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x5
	.2byte	0x696
	.byte	0x10
	.4byte	0x98
	.byte	0x3
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x5
	.2byte	0x697
	.byte	0x10
	.4byte	0x98
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x5
	.2byte	0x698
	.byte	0x10
	.4byte	0x98
	.byte	0x5
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x5
	.2byte	0x699
	.byte	0x10
	.4byte	0x98
	.byte	0x6
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x5
	.2byte	0x69a
	.byte	0x10
	.4byte	0x98
	.byte	0x7
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.file 6 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
	.section	.debug_types,"G",%progbits,wt.23144061f65d3274,comdat
	.4byte	0x6b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x23
	.byte	0x14
	.byte	0x40
	.byte	0x61
	.byte	0xf6
	.byte	0x5d
	.byte	0x32
	.byte	0x74
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x6
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x6
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x6
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0x12
	.4byte	0x4b
	.uleb128 0x12
	.4byte	0x5b
	.uleb128 0xb
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0xc
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.f6e482b1aa760eff,comdat
	.4byte	0x98
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xf6
	.byte	0xe4
	.byte	0x82
	.byte	0xb1
	.byte	0xaa
	.byte	0x76
	.byte	0xe
	.byte	0xff
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0xc
	.byte	0x1
	.2byte	0x177
	.byte	0x9
	.4byte	0x52
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x179
	.byte	0x19
	.4byte	0x52
	.byte	0
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x17a
	.byte	0x1f
	.4byte	0x58
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x17b
	.byte	0x1a
	.4byte	0x5e
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x64
	.uleb128 0x5
	.byte	0x4
	.4byte	0x64
	.uleb128 0x5
	.byte	0x4
	.4byte	0x74
	.uleb128 0xb
	.4byte	0x81
	.4byte	0x74
	.uleb128 0xc
	.4byte	0x8d
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x16b
	.byte	0x11
	.4byte	0x64
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x94
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.565c3a53652d0498,comdat
	.4byte	0xa0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x56
	.byte	0x5c
	.byte	0x3a
	.byte	0x53
	.byte	0x65
	.byte	0x2d
	.byte	0x4
	.byte	0x98
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0x30
	.byte	0x1
	.2byte	0x16e
	.byte	0x9
	.4byte	0x52
	.uleb128 0x14
	.ascii	"key\000"
	.byte	0x1
	.2byte	0x170
	.byte	0x11
	.4byte	0x52
	.byte	0
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x171
	.byte	0x17
	.4byte	0x5f
	.byte	0x10
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x172
	.byte	0x18
	.4byte	0x6c
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x169
	.byte	0x11
	.4byte	0x79
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x16a
	.byte	0x11
	.4byte	0x79
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x16b
	.byte	0x11
	.4byte	0x79
	.uleb128 0xb
	.4byte	0x89
	.4byte	0x89
	.uleb128 0xc
	.4byte	0x95
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x9c
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.a3bf2cfe42e90410,comdat
	.4byte	0x58
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xa3
	.byte	0xbf
	.byte	0x2c
	.byte	0xfe
	.byte	0x42
	.byte	0xe9
	.byte	0x4
	.byte	0x10
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0x8
	.byte	0x1
	.2byte	0x14a
	.byte	0x9
	.4byte	0x48
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x14c
	.byte	0xb
	.4byte	0x48
	.byte	0
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x157
	.byte	0x5
	.byte	0x28
	.byte	0x3
	.byte	0xa4
	.byte	0xd2
	.byte	0xf1
	.byte	0x71
	.byte	0xd9
	.byte	0xbb
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x54
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.2803a4d2f171d9bb,comdat
	.4byte	0x43
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x28
	.byte	0x3
	.byte	0xa4
	.byte	0xd2
	.byte	0xf1
	.byte	0x71
	.byte	0xd9
	.byte	0xbb
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x16
	.byte	0x4
	.byte	0x1
	.2byte	0x14d
	.byte	0x3
	.uleb128 0x17
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x152
	.byte	0x7
	.byte	0xba
	.byte	0xeb
	.byte	0x20
	.byte	0x92
	.byte	0xcb
	.byte	0x36
	.byte	0x6d
	.byte	0x87
	.uleb128 0x17
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x156
	.byte	0x7
	.byte	0xe6
	.byte	0xf0
	.byte	0x84
	.byte	0xdb
	.byte	0xf7
	.byte	0x72
	.byte	0x74
	.byte	0x87
	.byte	0
	.byte	0
	.section	.debug_types,"G",%progbits,wt.e6f084dbf7727487,comdat
	.4byte	0x46
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xe6
	.byte	0xf0
	.byte	0x84
	.byte	0xdb
	.byte	0xf7
	.byte	0x72
	.byte	0x74
	.byte	0x87
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0x4
	.byte	0x1
	.2byte	0x153
	.byte	0x5
	.4byte	0x36
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x155
	.byte	0x10
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x42
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.baeb2092cb366d87,comdat
	.4byte	0x4a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xba
	.byte	0xeb
	.byte	0x20
	.byte	0x92
	.byte	0xcb
	.byte	0x36
	.byte	0x6d
	.byte	0x87
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0x4
	.byte	0x1
	.2byte	0x14f
	.byte	0x5
	.4byte	0x36
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x151
	.byte	0x1d
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3c
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x147
	.byte	0x3
	.byte	0x2a
	.byte	0xcc
	.byte	0xec
	.byte	0xf4
	.byte	0x34
	.byte	0xaf
	.byte	0xb2
	.byte	0x7d
	.byte	0
	.section	.debug_types,"G",%progbits,wt.2accecf434afb27d,comdat
	.4byte	0x58
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x2a
	.byte	0xcc
	.byte	0xec
	.byte	0xf4
	.byte	0x34
	.byte	0xaf
	.byte	0xb2
	.byte	0x7d
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0x10
	.byte	0x1
	.2byte	0x13f
	.byte	0x9
	.4byte	0x48
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x141
	.byte	0xb
	.4byte	0x48
	.byte	0
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x146
	.byte	0x5
	.byte	0x1e
	.byte	0x6e
	.byte	0xab
	.byte	0xd7
	.byte	0x68
	.byte	0xe2
	.byte	0xc2
	.byte	0x95
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x54
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.1e6eabd768e2c295,comdat
	.4byte	0x61
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1e
	.byte	0x6e
	.byte	0xab
	.byte	0xd7
	.byte	0x68
	.byte	0xe2
	.byte	0xc2
	.byte	0x95
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x19
	.byte	0xc
	.byte	0x1
	.2byte	0x142
	.byte	0x3
	.4byte	0x42
	.uleb128 0x1a
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x144
	.byte	0x22
	.4byte	0x42
	.uleb128 0x1a
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x145
	.byte	0x20
	.4byte	0x53
	.byte	0
	.uleb128 0x18
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x133
	.byte	0x3
	.byte	0x73
	.byte	0x46
	.byte	0xe9
	.byte	0xbf
	.byte	0xca
	.byte	0x4d
	.byte	0x56
	.byte	0x98
	.uleb128 0x18
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x13c
	.byte	0x3
	.byte	0xd0
	.byte	0xdc
	.byte	0x46
	.byte	0x98
	.byte	0xec
	.byte	0x3
	.byte	0xdd
	.byte	0x78
	.byte	0
	.section	.debug_types,"G",%progbits,wt.d0dc4698ec03dd78,comdat
	.4byte	0x83
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xd0
	.byte	0xdc
	.byte	0x46
	.byte	0x98
	.byte	0xec
	.byte	0x3
	.byte	0xdd
	.byte	0x78
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0xc
	.byte	0x1
	.2byte	0x136
	.byte	0x9
	.4byte	0x60
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x138
	.byte	0xb
	.4byte	0x60
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x139
	.byte	0xb
	.4byte	0x60
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x13a
	.byte	0xc
	.4byte	0x6c
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x13b
	.byte	0xc
	.4byte	0x6c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x78
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x7f
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.7346e9bfca4d5698,comdat
	.4byte	0x83
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x73
	.byte	0x46
	.byte	0xe9
	.byte	0xbf
	.byte	0xca
	.byte	0x4d
	.byte	0x56
	.byte	0x98
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0xc
	.byte	0x1
	.2byte	0x12d
	.byte	0x9
	.4byte	0x60
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x12f
	.byte	0xb
	.4byte	0x60
	.byte	0
	.uleb128 0x11
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x130
	.byte	0xb
	.4byte	0x60
	.byte	0x1
	.uleb128 0x11
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x131
	.byte	0xc
	.4byte	0x6c
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x132
	.byte	0xc
	.4byte	0x6c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x78
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x7f
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.e8c5ca557f160769,comdat
	.4byte	0x13c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xe8
	.byte	0xc5
	.byte	0xca
	.byte	0x55
	.byte	0x7f
	.byte	0x16
	.byte	0x7
	.byte	0x69
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x7
	.byte	0x1
	.4byte	0x138
	.byte	0x1
	.byte	0x68
	.byte	0x6
	.4byte	0x138
	.uleb128 0x1c
	.4byte	.LASF62
	.byte	0x20
	.uleb128 0x1c
	.4byte	.LASF63
	.byte	0x21
	.uleb128 0x1c
	.4byte	.LASF64
	.byte	0x22
	.uleb128 0x1c
	.4byte	.LASF65
	.byte	0x23
	.uleb128 0x1c
	.4byte	.LASF66
	.byte	0x24
	.uleb128 0x1c
	.4byte	.LASF67
	.byte	0x25
	.uleb128 0x1c
	.4byte	.LASF68
	.byte	0x26
	.uleb128 0x1c
	.4byte	.LASF69
	.byte	0x27
	.uleb128 0x1c
	.4byte	.LASF70
	.byte	0x28
	.uleb128 0x1c
	.4byte	.LASF71
	.byte	0x29
	.uleb128 0x1c
	.4byte	.LASF72
	.byte	0x2a
	.uleb128 0x1c
	.4byte	.LASF73
	.byte	0x2b
	.uleb128 0x1c
	.4byte	.LASF74
	.byte	0x2c
	.uleb128 0x1c
	.4byte	.LASF75
	.byte	0x2d
	.uleb128 0x1c
	.4byte	.LASF76
	.byte	0x2e
	.uleb128 0x1c
	.4byte	.LASF77
	.byte	0x2f
	.uleb128 0x1c
	.4byte	.LASF78
	.byte	0x30
	.uleb128 0x1c
	.4byte	.LASF79
	.byte	0x31
	.uleb128 0x1c
	.4byte	.LASF80
	.byte	0x32
	.uleb128 0x1c
	.4byte	.LASF81
	.byte	0x33
	.uleb128 0x1c
	.4byte	.LASF82
	.byte	0x34
	.uleb128 0x1c
	.4byte	.LASF83
	.byte	0x35
	.uleb128 0x1c
	.4byte	.LASF84
	.byte	0x36
	.uleb128 0x1c
	.4byte	.LASF85
	.byte	0x37
	.uleb128 0x1c
	.4byte	.LASF86
	.byte	0x39
	.uleb128 0x1c
	.4byte	.LASF87
	.byte	0x3a
	.uleb128 0x1c
	.4byte	.LASF88
	.byte	0x3b
	.uleb128 0x1c
	.4byte	.LASF89
	.byte	0x3c
	.uleb128 0x1c
	.4byte	.LASF90
	.byte	0x3d
	.uleb128 0x1c
	.4byte	.LASF91
	.byte	0x3e
	.uleb128 0x1c
	.4byte	.LASF92
	.byte	0x3f
	.uleb128 0x1c
	.4byte	.LASF93
	.byte	0x41
	.uleb128 0x1c
	.4byte	.LASF94
	.byte	0x42
	.uleb128 0x1c
	.4byte	.LASF95
	.byte	0x43
	.uleb128 0x1c
	.4byte	.LASF96
	.byte	0x44
	.uleb128 0x1c
	.4byte	.LASF97
	.byte	0x45
	.uleb128 0x1c
	.4byte	.LASF98
	.byte	0x46
	.uleb128 0x1c
	.4byte	.LASF99
	.byte	0x47
	.uleb128 0x1c
	.4byte	.LASF100
	.byte	0x48
	.uleb128 0x1c
	.4byte	.LASF101
	.byte	0x49
	.uleb128 0x1c
	.4byte	.LASF102
	.byte	0x4a
	.uleb128 0x1c
	.4byte	.LASF103
	.byte	0x4b
	.uleb128 0x1c
	.4byte	.LASF104
	.byte	0x4c
	.uleb128 0x1c
	.4byte	.LASF105
	.byte	0x51
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.file 7 "../../../TraceRecorder/streamports/Jlink_RTT/include/SEGGER_RTT.h"
	.section	.debug_types,"G",%progbits,wt.4cacc74532dbcfb7,comdat
	.4byte	0xca
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x4c
	.byte	0xac
	.byte	0xc7
	.byte	0x45
	.byte	0x32
	.byte	0xdb
	.byte	0xcf
	.byte	0xb7
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xa8
	.byte	0x7
	.byte	0x6b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x7
	.byte	0x6c
	.byte	0x8
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0x7
	.byte	0x6d
	.byte	0x7
	.4byte	0x78
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x7
	.byte	0x6e
	.byte	0x7
	.4byte	0x78
	.byte	0x14
	.uleb128 0xe
	.ascii	"aUp\000"
	.byte	0x7
	.byte	0x6f
	.byte	0x18
	.4byte	0x7f
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x7
	.byte	0x70
	.byte	0x1a
	.4byte	0x8f
	.byte	0x60
	.byte	0
	.uleb128 0xb
	.4byte	0x9f
	.4byte	0x78
	.uleb128 0xc
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xb
	.4byte	0xad
	.4byte	0x8f
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0xb
	.4byte	0xbd
	.4byte	0x9f
	.uleb128 0xc
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0xf
	.4byte	.LASF111
	.byte	0x7
	.byte	0x57
	.byte	0x3
	.byte	0x96
	.byte	0x23
	.byte	0x67
	.byte	0xd0
	.byte	0xb2
	.byte	0x64
	.byte	0x2c
	.byte	0x1d
	.uleb128 0xf
	.4byte	.LASF112
	.byte	0x7
	.byte	0x64
	.byte	0x3
	.byte	0xcf
	.byte	0xe
	.byte	0xc2
	.byte	0x77
	.byte	0xe
	.byte	0x6
	.byte	0x19
	.byte	0x3a
	.byte	0
	.section	.debug_types,"G",%progbits,wt.cf0ec2770e06193a,comdat
	.4byte	0x96
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xcf
	.byte	0xe
	.byte	0xc2
	.byte	0x77
	.byte	0xe
	.byte	0x6
	.byte	0x19
	.byte	0x3a
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x18
	.byte	0x7
	.byte	0x5d
	.byte	0x9
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0x7
	.byte	0x5e
	.byte	0xf
	.4byte	0x75
	.byte	0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x7
	.byte	0x5f
	.byte	0x13
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x7
	.byte	0x60
	.byte	0x16
	.4byte	0x81
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0x7
	.byte	0x61
	.byte	0x15
	.4byte	0x88
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0x7
	.byte	0x62
	.byte	0x16
	.4byte	0x81
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x7
	.byte	0x63
	.byte	0x16
	.4byte	0x81
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x92
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x12
	.4byte	0x81
	.uleb128 0x1e
	.4byte	0x92
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0
	.section	.debug_types,"G",%progbits,wt.962367d0b2642c1d,comdat
	.4byte	0x96
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x96
	.byte	0x23
	.byte	0x67
	.byte	0xd0
	.byte	0xb2
	.byte	0x64
	.byte	0x2c
	.byte	0x1d
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x18
	.byte	0x7
	.byte	0x50
	.byte	0x9
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0x7
	.byte	0x51
	.byte	0xf
	.4byte	0x75
	.byte	0
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x7
	.byte	0x52
	.byte	0x13
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x7
	.byte	0x53
	.byte	0x16
	.4byte	0x81
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0x7
	.byte	0x54
	.byte	0x16
	.4byte	0x81
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0x7
	.byte	0x55
	.byte	0x15
	.4byte	0x88
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x7
	.byte	0x56
	.byte	0x16
	.4byte	0x81
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x92
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x12
	.4byte	0x81
	.uleb128 0x1e
	.4byte	0x92
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0
	.file 8 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
	.section	.debug_types,"G",%progbits,wt.1839347164335ef6,comdat
	.4byte	0x86
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x18
	.byte	0x39
	.byte	0x34
	.byte	0x71
	.byte	0x64
	.byte	0x33
	.byte	0x5e
	.byte	0xf6
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x1f
	.4byte	.LASF122
	.byte	0x8
	.byte	0x8
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x11
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0x8
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x61
	.uleb128 0x20
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x21
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x1e
	.4byte	0x82
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0
	.section	.debug_types,"G",%progbits,wt.67b2e44cb9c485aa,comdat
	.4byte	0x67
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x67
	.byte	0xb2
	.byte	0xe4
	.byte	0x4c
	.byte	0xb9
	.byte	0xc4
	.byte	0x85
	.byte	0xaa
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x22
	.4byte	.LASF123
	.byte	0x14
	.byte	0x8
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x8
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x48
	.4byte	0x48
	.uleb128 0xc
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x55
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x1e
	.4byte	0x5a
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0x8
	.byte	0xd8
	.byte	0x3
	.byte	0x81
	.byte	0x86
	.byte	0xc6
	.byte	0xc4
	.byte	0x3e
	.byte	0x1e
	.byte	0x78
	.byte	0xec
	.byte	0
	.section	.debug_types,"G",%progbits,wt.8186c6c43e1e78ec,comdat
	.4byte	0x93
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x81
	.byte	0x86
	.byte	0xc6
	.byte	0xc4
	.byte	0x3e
	.byte	0x1e
	.byte	0x78
	.byte	0xec
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x8
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x8
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x8
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x8
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x60
	.uleb128 0x5
	.byte	0x4
	.4byte	0x65
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x1e
	.4byte	0x6f
	.uleb128 0x1e
	.4byte	0x76
	.uleb128 0x1e
	.4byte	0x86
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0x8
	.byte	0xae
	.byte	0x3
	.byte	0xc0
	.byte	0x1a
	.byte	0x87
	.byte	0x40
	.byte	0x88
	.byte	0xa8
	.byte	0x2d
	.byte	0x75
	.uleb128 0xf
	.4byte	.LASF129
	.byte	0x8
	.byte	0xd2
	.byte	0x3
	.byte	0x45
	.byte	0x5f
	.byte	0xe6
	.byte	0xc4
	.byte	0x49
	.byte	0x92
	.byte	0xc0
	.byte	0x69
	.byte	0
	.section	.debug_types,"G",%progbits,wt.455fe6c44992c069,comdat
	.4byte	0x16a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x45
	.byte	0x5f
	.byte	0xe6
	.byte	0xc4
	.byte	0x49
	.byte	0x92
	.byte	0xc0
	.byte	0x69
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x20
	.byte	0x8
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0x8
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x8
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0x8
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0x8
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0x8
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0x8
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x5
	.byte	0x4
	.4byte	0xea
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x112
	.uleb128 0x20
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0x21
	.4byte	0x130
	.uleb128 0x21
	.4byte	0x130
	.byte	0
	.uleb128 0x20
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0x21
	.4byte	0x130
	.byte	0
	.uleb128 0x20
	.4byte	0x130
	.4byte	0xea
	.uleb128 0x21
	.4byte	0x137
	.uleb128 0x21
	.4byte	0x130
	.byte	0
	.uleb128 0x20
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0x21
	.4byte	0x137
	.byte	0
	.uleb128 0x20
	.4byte	0x130
	.4byte	0x112
	.uleb128 0x21
	.4byte	0x13e
	.uleb128 0x21
	.4byte	0x144
	.uleb128 0x21
	.4byte	0x14b
	.byte	0
	.uleb128 0x20
	.4byte	0x130
	.4byte	0x130
	.uleb128 0x21
	.4byte	0x155
	.uleb128 0x21
	.4byte	0x15b
	.uleb128 0x21
	.4byte	0x144
	.uleb128 0x21
	.4byte	0x14b
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF138
	.uleb128 0x5
	.byte	0x4
	.4byte	0x161
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x23
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x144
	.uleb128 0x5
	.byte	0x4
	.4byte	0x168
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x1e
	.4byte	0x161
	.byte	0
	.section	.debug_types,"G",%progbits,wt.c01a874088a82d75,comdat
	.4byte	0x1d6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xc0
	.byte	0x1a
	.byte	0x87
	.byte	0x40
	.byte	0x88
	.byte	0xa8
	.byte	0x2d
	.byte	0x75
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x58
	.byte	0x8
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0x8
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0x8
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0x8
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x8
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0x8
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0x8
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0x8
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0x8
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0x8
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0x8
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0x8
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0x8
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0x8
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0x8
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0x8
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0x8
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0x8
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0x8
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0x8
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF158
	.byte	0x8
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0x8
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF160
	.byte	0x8
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF161
	.byte	0x8
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF162
	.byte	0x8
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF163
	.byte	0x8
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0x8
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF165
	.byte	0x8
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF166
	.byte	0x8
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF167
	.byte	0x8
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF168
	.byte	0x8
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF169
	.byte	0x8
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0x8
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x1e
	.4byte	0x1cd
	.byte	0
	.section	.debug_types,"G",%progbits,wt.43a13c2b4d789e4a,comdat
	.4byte	0x50
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x22
	.4byte	.LASF171
	.byte	0x8
	.byte	0x8
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0x8
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF173
	.byte	0x8
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF138
	.byte	0
	.file 9 "<built-in>"
	.section	.debug_types,"G",%progbits,wt.e0945ce8758c9534,comdat
	.4byte	0x33
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xe0
	.byte	0x94
	.byte	0x5c
	.byte	0xe8
	.byte	0x75
	.byte	0x8c
	.byte	0x95
	.byte	0x34
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x24
	.4byte	.LASF174
	.byte	0x4
	.byte	0x9
	.byte	0
	.4byte	0x34
	.uleb128 0x25
	.4byte	.LASF175
	.4byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x26
	.byte	0x4
	.byte	0
	.file 10 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.file 11 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 12 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 13 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 14 "../../../../../../components/libraries/util/app_util.h"
	.file 15 "../../../TraceRecorder/include/trcKernelPort.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x24df
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x27
	.4byte	.LASF442
	.byte	0xc
	.4byte	.LASF443
	.4byte	.LASF444
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0xf
	.4byte	.LASF174
	.byte	0x8
	.byte	0x4c
	.byte	0x1b
	.byte	0xe0
	.byte	0x94
	.byte	0x5c
	.byte	0xe8
	.byte	0x75
	.byte	0x8c
	.byte	0x95
	.byte	0x34
	.uleb128 0x26
	.byte	0x4
	.uleb128 0x1d
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF138
	.uleb128 0x5
	.byte	0x4
	.4byte	0x4f
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x1e
	.4byte	0x4f
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.4byte	0x56
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x1e
	.4byte	0x68
	.uleb128 0xf
	.4byte	.LASF129
	.byte	0x8
	.byte	0xd2
	.byte	0x3
	.byte	0x45
	.byte	0x5f
	.byte	0xe6
	.byte	0xc4
	.byte	0x49
	.byte	0x92
	.byte	0xc0
	.byte	0x69
	.uleb128 0x1e
	.4byte	0x74
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0x8
	.byte	0xd8
	.byte	0x3
	.byte	0x81
	.byte	0x86
	.byte	0xc6
	.byte	0xc4
	.byte	0x3e
	.byte	0x1e
	.byte	0x78
	.byte	0xec
	.uleb128 0x1e
	.4byte	0x89
	.uleb128 0x28
	.4byte	.LASF176
	.byte	0x8
	.2byte	0x106
	.byte	0x1a
	.byte	0x67
	.byte	0xb2
	.byte	0xe4
	.byte	0x4c
	.byte	0xb9
	.byte	0xc4
	.byte	0x85
	.byte	0xaa
	.uleb128 0x29
	.4byte	.LASF177
	.byte	0x8
	.2byte	0x10d
	.byte	0x1d
	.4byte	0x99
	.uleb128 0x29
	.4byte	.LASF178
	.byte	0x8
	.2byte	0x110
	.byte	0x25
	.4byte	0x84
	.uleb128 0x29
	.4byte	.LASF179
	.byte	0x8
	.2byte	0x111
	.byte	0x25
	.4byte	0x84
	.uleb128 0xb
	.4byte	0x6f
	.4byte	0xe6
	.uleb128 0xc
	.4byte	0x5b
	.byte	0x7f
	.byte	0
	.uleb128 0x1e
	.4byte	0xd6
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x8
	.2byte	0x113
	.byte	0x1c
	.4byte	0xe6
	.uleb128 0xb
	.4byte	0x56
	.4byte	0x103
	.uleb128 0x2a
	.byte	0
	.uleb128 0x1e
	.4byte	0xf8
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x8
	.2byte	0x115
	.byte	0x13
	.4byte	0x103
	.uleb128 0x29
	.4byte	.LASF182
	.byte	0x8
	.2byte	0x116
	.byte	0x13
	.4byte	0x103
	.uleb128 0x29
	.4byte	.LASF183
	.byte	0x8
	.2byte	0x117
	.byte	0x13
	.4byte	0x103
	.uleb128 0x29
	.4byte	.LASF184
	.byte	0x8
	.2byte	0x118
	.byte	0x13
	.4byte	0x103
	.uleb128 0x29
	.4byte	.LASF185
	.byte	0x8
	.2byte	0x11a
	.byte	0x13
	.4byte	0x103
	.uleb128 0x29
	.4byte	.LASF186
	.byte	0x8
	.2byte	0x11b
	.byte	0x13
	.4byte	0x103
	.uleb128 0x29
	.4byte	.LASF187
	.byte	0x8
	.2byte	0x11c
	.byte	0x13
	.4byte	0x103
	.uleb128 0x29
	.4byte	.LASF188
	.byte	0x8
	.2byte	0x11d
	.byte	0x13
	.4byte	0x103
	.uleb128 0x29
	.4byte	.LASF189
	.byte	0x8
	.2byte	0x11e
	.byte	0x13
	.4byte	0x103
	.uleb128 0x29
	.4byte	.LASF190
	.byte	0x8
	.2byte	0x11f
	.byte	0x13
	.4byte	0x103
	.uleb128 0x20
	.4byte	0x3b
	.4byte	0x199
	.uleb128 0x21
	.4byte	0x199
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1a4
	.uleb128 0x2b
	.4byte	.LASF216
	.uleb128 0x1e
	.4byte	0x19f
	.uleb128 0x29
	.4byte	.LASF191
	.byte	0x8
	.2byte	0x135
	.byte	0xe
	.4byte	0x1b6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x18a
	.uleb128 0x20
	.4byte	0x3b
	.4byte	0x1cb
	.uleb128 0x21
	.4byte	0x1cb
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x19f
	.uleb128 0x29
	.4byte	.LASF192
	.byte	0x8
	.2byte	0x136
	.byte	0xe
	.4byte	0x1de
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1bc
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x18
	.4byte	.LASF193
	.byte	0x8
	.2byte	0x153
	.byte	0x3
	.byte	0x18
	.byte	0x39
	.byte	0x34
	.byte	0x71
	.byte	0x64
	.byte	0x33
	.byte	0x5e
	.byte	0xf6
	.uleb128 0x29
	.4byte	.LASF194
	.byte	0x8
	.2byte	0x157
	.byte	0x1f
	.4byte	0x209
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1eb
	.uleb128 0x4
	.4byte	.LASF195
	.byte	0xa
	.byte	0x45
	.byte	0x13
	.4byte	0x29
	.uleb128 0x4
	.4byte	.LASF196
	.byte	0x4
	.byte	0x2f
	.byte	0x15
	.4byte	0x227
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF197
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x68
	.uleb128 0x12
	.4byte	0x22e
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF198
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x1e4
	.uleb128 0x4
	.4byte	.LASF199
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x3b
	.uleb128 0x12
	.4byte	0x252
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x5b
	.uleb128 0x12
	.4byte	0x263
	.uleb128 0x1e
	.4byte	0x263
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF200
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF201
	.uleb128 0xb
	.4byte	0x263
	.4byte	0x297
	.uleb128 0xc
	.4byte	0x5b
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.4byte	0x263
	.4byte	0x2a7
	.uleb128 0xc
	.4byte	0x5b
	.byte	0x7
	.byte	0
	.uleb128 0x29
	.4byte	.LASF202
	.byte	0xb
	.2byte	0x744
	.byte	0x19
	.4byte	0x25e
	.uleb128 0x2c
	.4byte	.LASF203
	.byte	0xc
	.byte	0x21
	.byte	0x11
	.4byte	0x263
	.uleb128 0x4
	.4byte	.LASF204
	.byte	0x5
	.byte	0x4c
	.byte	0x15
	.4byte	0x62
	.uleb128 0x4
	.4byte	.LASF205
	.byte	0x5
	.byte	0x4d
	.byte	0x15
	.4byte	0x2d8
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2de
	.uleb128 0x2d
	.uleb128 0x12
	.4byte	0x2de
	.uleb128 0xf
	.4byte	.LASF206
	.byte	0x7
	.byte	0x71
	.byte	0x3
	.byte	0x4c
	.byte	0xac
	.byte	0xc7
	.byte	0x45
	.byte	0x32
	.byte	0xdb
	.byte	0xcf
	.byte	0xb7
	.uleb128 0x2c
	.4byte	.LASF207
	.byte	0x7
	.byte	0x79
	.byte	0x16
	.4byte	0x2e4
	.uleb128 0x13
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x12a
	.byte	0x1a
	.4byte	0x23a
	.uleb128 0x18
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x147
	.byte	0x3
	.byte	0x2a
	.byte	0xcc
	.byte	0xec
	.byte	0xf4
	.byte	0x34
	.byte	0xaf
	.byte	0xb2
	.byte	0x7d
	.uleb128 0x1e
	.4byte	0x30d
	.uleb128 0x18
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x158
	.byte	0x3
	.byte	0xa3
	.byte	0xbf
	.byte	0x2c
	.byte	0xfe
	.byte	0x42
	.byte	0xe9
	.byte	0x4
	.byte	0x10
	.uleb128 0x13
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x166
	.byte	0x36
	.4byte	0x341
	.uleb128 0x5
	.byte	0x4
	.4byte	0x347
	.uleb128 0x20
	.4byte	0x356
	.4byte	0x356
	.uleb128 0x21
	.4byte	0x22e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x323
	.uleb128 0x18
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x173
	.byte	0x3
	.byte	0x56
	.byte	0x5c
	.byte	0x3a
	.byte	0x53
	.byte	0x65
	.byte	0x2d
	.byte	0x4
	.byte	0x98
	.uleb128 0x18
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x17c
	.byte	0x3
	.byte	0xf6
	.byte	0xe4
	.byte	0x82
	.byte	0xb1
	.byte	0xaa
	.byte	0x76
	.byte	0xe
	.byte	0xff
	.uleb128 0xf
	.4byte	.LASF213
	.byte	0x6
	.byte	0x71
	.byte	0x3
	.byte	0x23
	.byte	0x14
	.byte	0x40
	.byte	0x61
	.byte	0xf6
	.byte	0x5d
	.byte	0x32
	.byte	0x74
	.uleb128 0x2c
	.4byte	.LASF214
	.byte	0x6
	.byte	0x75
	.byte	0x19
	.4byte	0x37e
	.uleb128 0x13
	.4byte	.LASF215
	.byte	0xd
	.2byte	0x317
	.byte	0x1b
	.4byte	0x3a7
	.uleb128 0x2b
	.4byte	.LASF217
	.uleb128 0x29
	.4byte	.LASF218
	.byte	0xd
	.2byte	0x31b
	.byte	0xe
	.4byte	0x3b9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x39a
	.uleb128 0x29
	.4byte	.LASF219
	.byte	0xd
	.2byte	0x31c
	.byte	0xe
	.4byte	0x3b9
	.uleb128 0x29
	.4byte	.LASF220
	.byte	0xd
	.2byte	0x31d
	.byte	0xe
	.4byte	0x3b9
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF221
	.uleb128 0x5
	.byte	0x4
	.4byte	0x20f
	.uleb128 0x2c
	.4byte	.LASF222
	.byte	0xe
	.byte	0x53
	.byte	0x11
	.4byte	0x263
	.uleb128 0x2c
	.4byte	.LASF223
	.byte	0xe
	.byte	0x54
	.byte	0x11
	.4byte	0x263
	.uleb128 0x2c
	.4byte	.LASF224
	.byte	0xe
	.byte	0x72
	.byte	0x13
	.4byte	0x40a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x263
	.uleb128 0x2c
	.4byte	.LASF225
	.byte	0xe
	.byte	0x73
	.byte	0x11
	.4byte	0x263
	.uleb128 0x5
	.byte	0x4
	.4byte	0x22e
	.uleb128 0x29
	.4byte	.LASF226
	.byte	0xf
	.2byte	0x128
	.byte	0x11
	.4byte	0x246
	.uleb128 0x29
	.4byte	.LASF227
	.byte	0xf
	.2byte	0x12a
	.byte	0x11
	.4byte	0x246
	.uleb128 0x18
	.4byte	.LASF228
	.byte	0x5
	.2byte	0x69b
	.byte	0x3
	.byte	0x9b
	.byte	0x9
	.byte	0x8c
	.byte	0xa7
	.byte	0x87
	.byte	0x96
	.byte	0xc0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF25
	.byte	0x2
	.byte	0x37
	.byte	0x3
	.byte	0x5a
	.byte	0x9e
	.byte	0xeb
	.byte	0x9b
	.byte	0x1f
	.byte	0xb6
	.byte	0x35
	.byte	0x5a
	.uleb128 0xf
	.4byte	.LASF229
	.byte	0x2
	.byte	0x3c
	.byte	0x3
	.byte	0xe6
	.byte	0xa6
	.byte	0x22
	.byte	0xa6
	.byte	0x74
	.byte	0x9b
	.byte	0x3a
	.byte	0x63
	.uleb128 0xf
	.4byte	.LASF230
	.byte	0x2
	.byte	0x42
	.byte	0x3
	.byte	0xb
	.byte	0xda
	.byte	0x8
	.byte	0x60
	.byte	0x88
	.byte	0x35
	.byte	0xa0
	.byte	0xf
	.uleb128 0xf
	.4byte	.LASF231
	.byte	0x2
	.byte	0x49
	.byte	0x3
	.byte	0x3a
	.byte	0x70
	.byte	0xaf
	.byte	0x6b
	.byte	0xf2
	.byte	0x13
	.byte	0xb7
	.byte	0xbf
	.uleb128 0xf
	.4byte	.LASF232
	.byte	0x2
	.byte	0x50
	.byte	0x3
	.byte	0x51
	.byte	0xca
	.byte	0x39
	.byte	0xc6
	.byte	0x38
	.byte	0
	.byte	0x14
	.byte	0x8b
	.uleb128 0xf
	.4byte	.LASF233
	.byte	0x2
	.byte	0x5b
	.byte	0x3
	.byte	0x44
	.byte	0x21
	.byte	0x64
	.byte	0xbc
	.byte	0xa4
	.byte	0xb8
	.byte	0x3c
	.byte	0x5d
	.uleb128 0xf
	.4byte	.LASF234
	.byte	0x2
	.byte	0x70
	.byte	0x3
	.byte	0xe8
	.byte	0x6c
	.byte	0xb1
	.byte	0x7e
	.byte	0x83
	.byte	0xe9
	.byte	0x2a
	.byte	0xab
	.uleb128 0xf
	.4byte	.LASF235
	.byte	0x2
	.byte	0x79
	.byte	0x3
	.byte	0xd7
	.byte	0xd
	.byte	0x37
	.byte	0xe2
	.byte	0x62
	.byte	0x1d
	.byte	0xcb
	.byte	0x3d
	.uleb128 0xf
	.4byte	.LASF236
	.byte	0x2
	.byte	0x7f
	.byte	0x3
	.byte	0x5a
	.byte	0x38
	.byte	0x8e
	.byte	0x72
	.byte	0x2f
	.byte	0xd
	.byte	0x91
	.byte	0x56
	.uleb128 0x2e
	.4byte	.LASF237
	.byte	0x2
	.byte	0x8e
	.byte	0x14
	.4byte	0x4ad
	.uleb128 0x5
	.byte	0x3
	.4byte	symbolTable
	.uleb128 0x2e
	.4byte	.LASF238
	.byte	0x2
	.byte	0x91
	.byte	0x11
	.4byte	0x263
	.uleb128 0x5
	.byte	0x3
	.4byte	firstFreeSymbolTableIndex
	.uleb128 0x2e
	.4byte	.LASF239
	.byte	0x2
	.byte	0x94
	.byte	0x18
	.4byte	0x4bd
	.uleb128 0x5
	.byte	0x3
	.4byte	objectDataTable
	.uleb128 0x2e
	.4byte	.LASF240
	.byte	0x2
	.byte	0x97
	.byte	0x11
	.4byte	0x263
	.uleb128 0x5
	.byte	0x3
	.4byte	firstFreeObjectDataTableIndex
	.uleb128 0x2e
	.4byte	.LASF241
	.byte	0x2
	.byte	0x9a
	.byte	0x11
	.4byte	0x297
	.uleb128 0x5
	.byte	0x3
	.4byte	ISR_stack
	.uleb128 0x2e
	.4byte	.LASF242
	.byte	0x2
	.byte	0x9d
	.byte	0xf
	.4byte	0x21b
	.uleb128 0x5
	.byte	0x3
	.4byte	ISR_stack_index
	.uleb128 0x2e
	.4byte	.LASF243
	.byte	0x2
	.byte	0xa0
	.byte	0xc
	.4byte	0x3b
	.uleb128 0x5
	.byte	0x3
	.4byte	errorCode
	.uleb128 0x2e
	.4byte	.LASF244
	.byte	0x2
	.byte	0xa3
	.byte	0x11
	.4byte	0x263
	.uleb128 0x5
	.byte	0x3
	.4byte	SessionCounter
	.uleb128 0x2f
	.4byte	.LASF245
	.byte	0x2
	.byte	0xa6
	.byte	0xa
	.4byte	0x263
	.uleb128 0x5
	.byte	0x3
	.4byte	RecorderEnabled
	.uleb128 0x2e
	.4byte	.LASF246
	.byte	0x2
	.byte	0xa9
	.byte	0x11
	.4byte	0x263
	.uleb128 0x5
	.byte	0x3
	.4byte	PSFEndianessIdentifier
	.uleb128 0x2e
	.4byte	.LASF247
	.byte	0x2
	.byte	0xac
	.byte	0x11
	.4byte	0x246
	.uleb128 0x5
	.byte	0x3
	.4byte	FormatVersion
	.uleb128 0x2e
	.4byte	.LASF248
	.byte	0x2
	.byte	0xaf
	.byte	0x11
	.4byte	0x263
	.uleb128 0x5
	.byte	0x3
	.4byte	eventCounter
	.uleb128 0x2c
	.4byte	.LASF249
	.byte	0x2
	.byte	0xb2
	.byte	0xe
	.4byte	0x49
	.uleb128 0x2f
	.4byte	.LASF250
	.byte	0x2
	.byte	0xb6
	.byte	0x9
	.4byte	0x252
	.uleb128 0x5
	.byte	0x3
	.4byte	isPendingContextSwitch
	.uleb128 0x2f
	.4byte	.LASF251
	.byte	0x2
	.byte	0xb8
	.byte	0xa
	.4byte	0x263
	.uleb128 0x5
	.byte	0x3
	.4byte	uiTraceTickCount
	.uleb128 0x2f
	.4byte	.LASF252
	.byte	0x2
	.byte	0xb9
	.byte	0xa
	.4byte	0x263
	.uleb128 0x5
	.byte	0x3
	.4byte	timestampFrequency
	.uleb128 0x2f
	.4byte	.LASF253
	.byte	0x2
	.byte	0xba
	.byte	0xa
	.4byte	0x263
	.uleb128 0x5
	.byte	0x3
	.4byte	DroppedEventCounter
	.uleb128 0x2f
	.4byte	.LASF254
	.byte	0x2
	.byte	0xbb
	.byte	0xa
	.4byte	0x263
	.uleb128 0x5
	.byte	0x3
	.4byte	TotalBytesRemaining_LowWaterMark
	.uleb128 0x2f
	.4byte	.LASF255
	.byte	0x2
	.byte	0xbc
	.byte	0xa
	.4byte	0x263
	.uleb128 0x5
	.byte	0x3
	.4byte	TotalBytesRemaining
	.uleb128 0xb
	.4byte	0x4cd
	.4byte	0x63d
	.uleb128 0xc
	.4byte	0x5b
	.byte	0x1
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF256
	.byte	0x2
	.byte	0xbe
	.byte	0xa
	.4byte	0x62d
	.uleb128 0x5
	.byte	0x3
	.4byte	PageInfo
	.uleb128 0x2f
	.4byte	.LASF257
	.byte	0x2
	.byte	0xc0
	.byte	0x7
	.4byte	0x49
	.uleb128 0x5
	.byte	0x3
	.4byte	EventBuffer
	.uleb128 0x2f
	.4byte	.LASF258
	.byte	0x2
	.byte	0xcf
	.byte	0x13
	.4byte	0x26f
	.uleb128 0x5
	.byte	0x3
	.4byte	NoRoomForSymbol
	.uleb128 0x2f
	.4byte	.LASF259
	.byte	0x2
	.byte	0xdb
	.byte	0x13
	.4byte	0x26f
	.uleb128 0x5
	.byte	0x3
	.4byte	NoRoomForObjectData
	.uleb128 0x2f
	.4byte	.LASF260
	.byte	0x2
	.byte	0xe4
	.byte	0x13
	.4byte	0x26f
	.uleb128 0x5
	.byte	0x3
	.4byte	LongestSymbolName
	.uleb128 0x2f
	.4byte	.LASF261
	.byte	0x2
	.byte	0xef
	.byte	0x13
	.4byte	0x26f
	.uleb128 0x5
	.byte	0x3
	.4byte	MaxBytesTruncated
	.uleb128 0x30
	.4byte	0x422
	.byte	0x2
	.byte	0xf1
	.byte	0xa
	.uleb128 0x5
	.byte	0x3
	.4byte	CurrentFilterMask
	.uleb128 0x30
	.4byte	0x42f
	.byte	0x2
	.byte	0xf3
	.byte	0xa
	.uleb128 0x5
	.byte	0x3
	.4byte	CurrentFilterGroup
	.uleb128 0x31
	.4byte	.LASF280
	.byte	0x2
	.2byte	0x732
	.byte	0x6
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x761
	.uleb128 0x32
	.4byte	.LASF263
	.byte	0x2
	.2byte	0x732
	.byte	0x24
	.4byte	0x49
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x2
	.2byte	0x734
	.byte	0x8
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x735
	.byte	0xd
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB265
	.4byte	.LBE265-.LBB265
	.byte	0x2
	.2byte	0x739
	.byte	0x12
	.4byte	0x728
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB267
	.4byte	.LBE267-.LBB267
	.byte	0x2
	.2byte	0x739
	.byte	0x23
	.4byte	0x746
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB269
	.4byte	.LBE269-.LBB269
	.byte	0x2
	.2byte	0x740
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF266
	.byte	0x2
	.2byte	0x6fc
	.byte	0x7
	.4byte	0x39
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7b0
	.uleb128 0x32
	.4byte	.LASF264
	.byte	0x2
	.2byte	0x6fc
	.byte	0x2e
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.ascii	"ret\000"
	.byte	0x2
	.2byte	0x6fe
	.byte	0x8
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x34
	.4byte	.LASF265
	.byte	0x2
	.2byte	0x6ff
	.byte	0xd
	.4byte	0x3b
	.uleb128 0x5
	.byte	0x3
	.4byte	currentWritePage.9091
	.byte	0
	.uleb128 0x39
	.4byte	.LASF267
	.byte	0x2
	.2byte	0x6c6
	.byte	0xa
	.4byte	0x263
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x80c
	.uleb128 0x34
	.4byte	.LASF268
	.byte	0x2
	.2byte	0x6c8
	.byte	0x9
	.4byte	0x21b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x34
	.4byte	.LASF269
	.byte	0x2
	.2byte	0x6c9
	.byte	0xd
	.4byte	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x34
	.4byte	.LASF270
	.byte	0x2
	.2byte	0x6ca
	.byte	0xa
	.4byte	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.4byte	.LASF271
	.byte	0x2
	.2byte	0x6cb
	.byte	0xa
	.4byte	0x252
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF277
	.byte	0x2
	.2byte	0x69e
	.byte	0xc
	.4byte	0x3b
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x86b
	.uleb128 0x32
	.4byte	.LASF272
	.byte	0x2
	.2byte	0x69e
	.byte	0x26
	.4byte	0x86b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x34
	.4byte	.LASF273
	.byte	0x2
	.2byte	0x6a0
	.byte	0x10
	.4byte	0x21b
	.uleb128 0x5
	.byte	0x3
	.4byte	lastPage.9073
	.uleb128 0x34
	.4byte	.LASF274
	.byte	0x2
	.2byte	0x6a1
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x34
	.4byte	.LASF275
	.byte	0x2
	.2byte	0x6a2
	.byte	0xb
	.4byte	0x21b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -5
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x252
	.uleb128 0x3b
	.4byte	.LASF309
	.byte	0x2
	.2byte	0x68f
	.byte	0xd
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ff
	.uleb128 0x32
	.4byte	.LASF276
	.byte	0x2
	.2byte	0x68f
	.byte	0x25
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x691
	.byte	0xd
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB259
	.4byte	.LBE259-.LBB259
	.byte	0x2
	.2byte	0x693
	.byte	0x12
	.4byte	0x8c6
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB261
	.4byte	.LBE261-.LBB261
	.byte	0x2
	.2byte	0x693
	.byte	0x23
	.4byte	0x8e4
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB263
	.4byte	.LBE263-.LBB263
	.byte	0x2
	.2byte	0x69a
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF278
	.byte	0x2
	.2byte	0x67a
	.byte	0xc
	.4byte	0x3b
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x94b
	.uleb128 0x32
	.4byte	.LASF279
	.byte	0x2
	.2byte	0x67a
	.byte	0x26
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x34
	.4byte	.LASF275
	.byte	0x2
	.2byte	0x67c
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x34
	.4byte	.LASF274
	.byte	0x2
	.2byte	0x67d
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x3c
	.4byte	.LASF445
	.byte	0x2
	.2byte	0x65c
	.byte	0xd
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.4byte	.LASF355
	.byte	0x2
	.2byte	0x64b
	.byte	0x11
	.4byte	0x263
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.4byte	.LASF331
	.byte	0x2
	.2byte	0x613
	.byte	0x6
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3f
	.4byte	.LASF281
	.byte	0x2
	.2byte	0x603
	.byte	0x6
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9b0
	.uleb128 0x32
	.4byte	.LASF282
	.byte	0x2
	.2byte	0x603
	.byte	0x18
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF283
	.byte	0x2
	.2byte	0x5f9
	.byte	0x6
	.4byte	.LFB235
	.4byte	.LFE235-.LFB235
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9d8
	.uleb128 0x32
	.4byte	.LASF282
	.byte	0x2
	.2byte	0x5f9
	.byte	0x1a
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF284
	.byte	0x2
	.2byte	0x5ec
	.byte	0x6
	.4byte	.LFB234
	.4byte	.LFE234-.LFB234
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa00
	.uleb128 0x40
	.ascii	"cmd\000"
	.byte	0x2
	.2byte	0x5ec
	.byte	0x30
	.4byte	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x43c
	.uleb128 0x41
	.4byte	.LASF285
	.byte	0x2
	.2byte	0x5d6
	.byte	0x5
	.4byte	0x3b
	.4byte	.LFB233
	.4byte	.LFE233-.LFB233
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa42
	.uleb128 0x40
	.ascii	"cmd\000"
	.byte	0x2
	.2byte	0x5d6
	.byte	0x2f
	.4byte	0xa00
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x34
	.4byte	.LASF286
	.byte	0x2
	.2byte	0x5d8
	.byte	0xd
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
	.byte	0
	.uleb128 0x31
	.4byte	.LASF287
	.byte	0x2
	.2byte	0x5aa
	.byte	0x6
	.4byte	.LFB232
	.4byte	.LFE232-.LFB232
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb0c
	.uleb128 0x32
	.4byte	.LASF288
	.byte	0x2
	.2byte	0x5aa
	.byte	0x25
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x2
	.2byte	0x5ac
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x33
	.ascii	"j\000"
	.byte	0x2
	.2byte	0x5ac
	.byte	0xe
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x33
	.ascii	"ptr\000"
	.byte	0x2
	.2byte	0x5ad
	.byte	0xc
	.4byte	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.4byte	.LASF289
	.byte	0x2
	.2byte	0x5ad
	.byte	0x12
	.4byte	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x5ae
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB253
	.4byte	.LBE253-.LBB253
	.byte	0x2
	.2byte	0x5b0
	.byte	0x12
	.4byte	0xad3
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB255
	.4byte	.LBE255-.LBB255
	.byte	0x2
	.2byte	0x5b0
	.byte	0x23
	.4byte	0xaf1
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB257
	.4byte	.LBE257-.LBB257
	.byte	0x2
	.2byte	0x5d2
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF290
	.byte	0x2
	.2byte	0x57e
	.byte	0x6
	.4byte	.LFB231
	.4byte	.LFE231-.LFB231
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd8
	.uleb128 0x32
	.4byte	.LASF288
	.byte	0x2
	.2byte	0x57e
	.byte	0x29
	.4byte	0x2d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.4byte	.LASF24
	.byte	0x2
	.2byte	0x57e
	.byte	0x3b
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x2
	.2byte	0x580
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x34
	.4byte	.LASF291
	.byte	0x2
	.2byte	0x581
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x33
	.ascii	"ptr\000"
	.byte	0x2
	.2byte	0x582
	.byte	0xc
	.4byte	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x583
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB247
	.4byte	.LBE247-.LBB247
	.byte	0x2
	.2byte	0x585
	.byte	0x12
	.4byte	0xb9f
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB249
	.4byte	.LBE249-.LBB249
	.byte	0x2
	.2byte	0x585
	.byte	0x23
	.4byte	0xbbd
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB251
	.4byte	.LBE251-.LBB251
	.byte	0x2
	.2byte	0x5a6
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF292
	.byte	0x2
	.2byte	0x552
	.byte	0x6
	.4byte	.LFB230
	.4byte	.LFE230-.LFB230
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xca2
	.uleb128 0x32
	.4byte	.LASF288
	.byte	0x2
	.2byte	0x552
	.byte	0x21
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x2
	.2byte	0x554
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x33
	.ascii	"j\000"
	.byte	0x2
	.2byte	0x554
	.byte	0xe
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x33
	.ascii	"ptr\000"
	.byte	0x2
	.2byte	0x555
	.byte	0xc
	.4byte	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.4byte	.LASF289
	.byte	0x2
	.2byte	0x555
	.byte	0x12
	.4byte	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x556
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB241
	.4byte	.LBE241-.LBB241
	.byte	0x2
	.2byte	0x558
	.byte	0x12
	.4byte	0xc69
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB243
	.4byte	.LBE243-.LBB243
	.byte	0x2
	.2byte	0x558
	.byte	0x23
	.4byte	0xc87
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB245
	.4byte	.LBE245-.LBB245
	.byte	0x2
	.2byte	0x57a
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF293
	.byte	0x2
	.2byte	0x510
	.byte	0x6
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd7e
	.uleb128 0x32
	.4byte	.LASF288
	.byte	0x2
	.2byte	0x510
	.byte	0x25
	.4byte	0x2d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x32
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x510
	.byte	0x3a
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x2
	.2byte	0x512
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x34
	.4byte	.LASF291
	.byte	0x2
	.2byte	0x513
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x34
	.4byte	.LASF294
	.byte	0x2
	.2byte	0x514
	.byte	0xc
	.4byte	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.4byte	.LASF295
	.byte	0x2
	.2byte	0x515
	.byte	0xb
	.4byte	0x41c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x516
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB235
	.4byte	.LBE235-.LBB235
	.byte	0x2
	.2byte	0x518
	.byte	0x12
	.4byte	0xd45
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB237
	.4byte	.LBE237-.LBB237
	.byte	0x2
	.2byte	0x518
	.byte	0x23
	.4byte	0xd63
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB239
	.4byte	.LBE239-.LBB239
	.byte	0x2
	.2byte	0x54e
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF296
	.byte	0x2
	.2byte	0x4b3
	.byte	0x6
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf1f
	.uleb128 0x32
	.4byte	.LASF297
	.byte	0x2
	.2byte	0x4b3
	.byte	0x37
	.4byte	0x2c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x40
	.ascii	"str\000"
	.byte	0x2
	.2byte	0x4b4
	.byte	0x1a
	.4byte	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x33
	.ascii	"len\000"
	.byte	0x2
	.2byte	0x4b6
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x34
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x4b7
	.byte	0x8
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x4b8
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x2
	.2byte	0x4b9
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.4byte	.LASF300
	.byte	0x2
	.2byte	0x4ba
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.4byte	.LASF301
	.byte	0x2
	.2byte	0x4bb
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x34
	.4byte	.LASF302
	.byte	0x2
	.2byte	0x4bc
	.byte	0xb
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x4bd
	.byte	0xd
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x42
	.4byte	.LBB225
	.4byte	.LBE225-.LBB225
	.4byte	0xe53
	.uleb128 0x34
	.4byte	.LASF303
	.byte	0x2
	.2byte	0x4d9
	.byte	0xc
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x42
	.4byte	.LBB230
	.4byte	.LBE230-.LBB230
	.4byte	0xec6
	.uleb128 0x34
	.4byte	.LASF304
	.byte	0x2
	.2byte	0x4e8
	.byte	0x7
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x43
	.4byte	.LBB231
	.4byte	.LBE231-.LBB231
	.uleb128 0x34
	.4byte	.LASF305
	.byte	0x2
	.2byte	0x4ed
	.byte	0x15
	.4byte	0xf1f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x34
	.4byte	.LASF306
	.byte	0x2
	.2byte	0x4ed
	.byte	0x67
	.4byte	0xf2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x43
	.4byte	.LBB232
	.4byte	.LBE232-.LBB232
	.uleb128 0x34
	.4byte	.LASF307
	.byte	0x2
	.2byte	0x4f0
	.byte	0xf
	.4byte	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x34
	.4byte	.LASF308
	.byte	0x2
	.2byte	0x4f1
	.byte	0xe
	.4byte	0x41c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB226
	.4byte	.LBE226-.LBB226
	.byte	0x2
	.2byte	0x4e4
	.byte	0x12
	.4byte	0xee5
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB228
	.4byte	.LBE228-.LBB228
	.byte	0x2
	.2byte	0x4e4
	.byte	0x23
	.4byte	0xf03
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB233
	.4byte	.LBE233-.LBB233
	.byte	0x2
	.2byte	0x50c
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x48d
	.4byte	0xf2f
	.uleb128 0xc
	.4byte	0x5b
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x48d
	.uleb128 0x44
	.4byte	.LASF310
	.byte	0x2
	.2byte	0x452
	.byte	0xd
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e5
	.uleb128 0x32
	.4byte	.LASF300
	.byte	0x2
	.2byte	0x452
	.byte	0x31
	.4byte	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x32
	.4byte	.LASF302
	.byte	0x2
	.2byte	0x453
	.byte	0x14
	.4byte	0x246
	.uleb128 0x3
	.byte	0x91
	.sleb128 -142
	.uleb128 0x32
	.4byte	.LASF297
	.byte	0x2
	.2byte	0x454
	.byte	0x17
	.4byte	0x2c0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x40
	.ascii	"str\000"
	.byte	0x2
	.2byte	0x455
	.byte	0x17
	.4byte	0x62
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x40
	.ascii	"vl\000"
	.byte	0x2
	.2byte	0x455
	.byte	0x25
	.4byte	0x3e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x33
	.ascii	"len\000"
	.byte	0x2
	.2byte	0x457
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x34
	.4byte	.LASF298
	.byte	0x2
	.2byte	0x458
	.byte	0x8
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x459
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x2
	.2byte	0x45a
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.4byte	.LASF301
	.byte	0x2
	.2byte	0x45b
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x45c
	.byte	0xd
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x42
	.4byte	.LBB215
	.4byte	.LBE215-.LBB215
	.4byte	0x101b
	.uleb128 0x34
	.4byte	.LASF303
	.byte	0x2
	.2byte	0x475
	.byte	0xc
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x42
	.4byte	.LBB220
	.4byte	.LBE220-.LBB220
	.4byte	0x108e
	.uleb128 0x34
	.4byte	.LASF304
	.byte	0x2
	.2byte	0x484
	.byte	0x7
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x43
	.4byte	.LBB221
	.4byte	.LBE221-.LBB221
	.uleb128 0x34
	.4byte	.LASF305
	.byte	0x2
	.2byte	0x489
	.byte	0x15
	.4byte	0xf1f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x34
	.4byte	.LASF306
	.byte	0x2
	.2byte	0x489
	.byte	0x67
	.4byte	0xf2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x43
	.4byte	.LBB222
	.4byte	.LBE222-.LBB222
	.uleb128 0x34
	.4byte	.LASF307
	.byte	0x2
	.2byte	0x48c
	.byte	0xf
	.4byte	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.4byte	.LASF308
	.byte	0x2
	.2byte	0x48d
	.byte	0xe
	.4byte	0x41c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB216
	.4byte	.LBE216-.LBB216
	.byte	0x2
	.2byte	0x480
	.byte	0x12
	.4byte	0x10ac
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB218
	.4byte	.LBE218-.LBB218
	.byte	0x2
	.2byte	0x480
	.byte	0x23
	.4byte	0x10ca
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB223
	.4byte	.LBE223-.LBB223
	.byte	0x2
	.2byte	0x4af
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF311
	.byte	0x2
	.2byte	0x448
	.byte	0x6
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x113d
	.uleb128 0x32
	.4byte	.LASF300
	.byte	0x2
	.2byte	0x448
	.byte	0x23
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x32
	.4byte	.LASF302
	.byte	0x2
	.2byte	0x448
	.byte	0x33
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -30
	.uleb128 0x40
	.ascii	"str\000"
	.byte	0x2
	.2byte	0x448
	.byte	0x48
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x45
	.uleb128 0x33
	.ascii	"vl\000"
	.byte	0x2
	.2byte	0x44a
	.byte	0xc
	.4byte	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF312
	.byte	0x2
	.2byte	0x420
	.byte	0x6
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x125d
	.uleb128 0x32
	.4byte	.LASF313
	.byte	0x2
	.2byte	0x420
	.byte	0x1d
	.4byte	0x3b
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x32
	.4byte	.LASF302
	.byte	0x2
	.2byte	0x420
	.byte	0x2e
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x45
	.uleb128 0x33
	.ascii	"vl\000"
	.byte	0x2
	.2byte	0x422
	.byte	0xa
	.4byte	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x2
	.2byte	0x423
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x424
	.byte	0xe
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x42
	.4byte	.LBB210
	.4byte	.LBE210-.LBB210
	.4byte	0x1206
	.uleb128 0x34
	.4byte	.LASF304
	.byte	0x2
	.2byte	0x42c
	.byte	0x9
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x43
	.4byte	.LBB211
	.4byte	.LBE211-.LBB211
	.uleb128 0x34
	.4byte	.LASF305
	.byte	0x2
	.2byte	0x431
	.byte	0x15
	.4byte	0xf1f
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x34
	.4byte	.LASF306
	.byte	0x2
	.2byte	0x431
	.byte	0x67
	.4byte	0xf2f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x43
	.4byte	.LBB212
	.4byte	.LBE212-.LBB212
	.uleb128 0x33
	.ascii	"tmp\000"
	.byte	0x2
	.2byte	0x43b
	.byte	0x10
	.4byte	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB206
	.4byte	.LBE206-.LBB206
	.byte	0x2
	.2byte	0x428
	.byte	0x12
	.4byte	0x1224
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB208
	.4byte	.LBE208-.LBB208
	.byte	0x2
	.2byte	0x428
	.byte	0x23
	.4byte	0x1242
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB213
	.4byte	.LBE213-.LBB213
	.byte	0x2
	.2byte	0x444
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF314
	.byte	0x2
	.2byte	0x3ff
	.byte	0x6
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1349
	.uleb128 0x32
	.4byte	.LASF302
	.byte	0x2
	.2byte	0x3ff
	.byte	0x24
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x32
	.4byte	.LASF26
	.byte	0x2
	.2byte	0x400
	.byte	0x10
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.4byte	.LASF27
	.byte	0x2
	.2byte	0x401
	.byte	0x10
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x32
	.4byte	.LASF28
	.byte	0x2
	.2byte	0x402
	.byte	0x10
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x404
	.byte	0xd
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x42
	.4byte	.LBB203
	.4byte	.LBE203-.LBB203
	.4byte	0x12f2
	.uleb128 0x34
	.4byte	.LASF305
	.byte	0x2
	.2byte	0x40f
	.byte	0x15
	.4byte	0x1349
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.4byte	.LASF306
	.byte	0x2
	.2byte	0x40f
	.byte	0x67
	.4byte	0x1359
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB199
	.4byte	.LBE199-.LBB199
	.byte	0x2
	.2byte	0x408
	.byte	0x12
	.4byte	0x1310
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB201
	.4byte	.LBE201-.LBB201
	.byte	0x2
	.2byte	0x408
	.byte	0x23
	.4byte	0x132e
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB204
	.4byte	.LBE204-.LBB204
	.byte	0x2
	.2byte	0x41c
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x47d
	.4byte	0x1359
	.uleb128 0xc
	.4byte	0x5b
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x47d
	.uleb128 0x3f
	.4byte	.LASF315
	.byte	0x2
	.2byte	0x3e2
	.byte	0x6
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x143b
	.uleb128 0x32
	.4byte	.LASF302
	.byte	0x2
	.2byte	0x3e2
	.byte	0x23
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x32
	.4byte	.LASF26
	.byte	0x2
	.2byte	0x3e2
	.byte	0x35
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x32
	.4byte	.LASF27
	.byte	0x2
	.2byte	0x3e2
	.byte	0x46
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x3e4
	.byte	0xd
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x42
	.4byte	.LBB196
	.4byte	.LBE196-.LBB196
	.4byte	0x13e4
	.uleb128 0x34
	.4byte	.LASF305
	.byte	0x2
	.2byte	0x3ef
	.byte	0x15
	.4byte	0x143b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.4byte	.LASF306
	.byte	0x2
	.2byte	0x3ef
	.byte	0x67
	.4byte	0x144b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB192
	.4byte	.LBE192-.LBB192
	.byte	0x2
	.2byte	0x3e8
	.byte	0x12
	.4byte	0x1402
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB194
	.4byte	.LBE194-.LBB194
	.byte	0x2
	.2byte	0x3e8
	.byte	0x23
	.4byte	0x1420
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB197
	.4byte	.LBE197-.LBB197
	.byte	0x2
	.2byte	0x3fb
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x46d
	.4byte	0x144b
	.uleb128 0xc
	.4byte	0x5b
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x46d
	.uleb128 0x3f
	.4byte	.LASF316
	.byte	0x2
	.2byte	0x3c6
	.byte	0x6
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x151d
	.uleb128 0x32
	.4byte	.LASF302
	.byte	0x2
	.2byte	0x3c6
	.byte	0x23
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x32
	.4byte	.LASF26
	.byte	0x2
	.2byte	0x3c6
	.byte	0x35
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x3c8
	.byte	0xd
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x42
	.4byte	.LBB189
	.4byte	.LBE189-.LBB189
	.4byte	0x14c6
	.uleb128 0x34
	.4byte	.LASF305
	.byte	0x2
	.2byte	0x3d3
	.byte	0x15
	.4byte	0x151d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x34
	.4byte	.LASF306
	.byte	0x2
	.2byte	0x3d3
	.byte	0x67
	.4byte	0x152d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB185
	.4byte	.LBE185-.LBB185
	.byte	0x2
	.2byte	0x3cc
	.byte	0x12
	.4byte	0x14e4
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB187
	.4byte	.LBE187-.LBB187
	.byte	0x2
	.2byte	0x3cc
	.byte	0x23
	.4byte	0x1502
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB190
	.4byte	.LBE190-.LBB190
	.byte	0x2
	.2byte	0x3de
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x45d
	.4byte	0x152d
	.uleb128 0xc
	.4byte	0x5b
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x45d
	.uleb128 0x3f
	.4byte	.LASF317
	.byte	0x2
	.2byte	0x3ab
	.byte	0x6
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15ef
	.uleb128 0x32
	.4byte	.LASF302
	.byte	0x2
	.2byte	0x3ab
	.byte	0x23
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x3ad
	.byte	0xd
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x42
	.4byte	.LBB182
	.4byte	.LBE182-.LBB182
	.4byte	0x1598
	.uleb128 0x34
	.4byte	.LASF305
	.byte	0x2
	.2byte	0x3b8
	.byte	0xe
	.4byte	0x15ef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.4byte	.LASF306
	.byte	0x2
	.2byte	0x3b8
	.byte	0x4b
	.4byte	0x15ff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB178
	.4byte	.LBE178-.LBB178
	.byte	0x2
	.2byte	0x3b1
	.byte	0x12
	.4byte	0x15b6
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB180
	.4byte	.LBE180-.LBB180
	.byte	0x2
	.2byte	0x3b1
	.byte	0x23
	.4byte	0x15d4
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB183
	.4byte	.LBE183-.LBB183
	.byte	0x2
	.2byte	0x3c2
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x44d
	.4byte	0x15ff
	.uleb128 0xc
	.4byte	0x5b
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x44d
	.uleb128 0x44
	.4byte	.LASF318
	.byte	0x2
	.2byte	0x39d
	.byte	0xd
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1637
	.uleb128 0x43
	.4byte	.LBB177
	.4byte	.LBE177-.LBB177
	.uleb128 0x34
	.4byte	.LASF319
	.byte	0x2
	.2byte	0x3a1
	.byte	0xf
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF320
	.byte	0x2
	.2byte	0x381
	.byte	0xd
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16e3
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x383
	.byte	0xd
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x42
	.4byte	.LBB174
	.4byte	.LBE174-.LBB174
	.4byte	0x168c
	.uleb128 0x34
	.4byte	.LASF305
	.byte	0x2
	.2byte	0x389
	.byte	0x13
	.4byte	0x16e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x34
	.4byte	.LASF321
	.byte	0x2
	.2byte	0x389
	.byte	0x5c
	.4byte	0x16f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB170
	.4byte	.LBE170-.LBB170
	.byte	0x2
	.2byte	0x385
	.byte	0x12
	.4byte	0x16aa
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB172
	.4byte	.LBE172-.LBB172
	.byte	0x2
	.2byte	0x385
	.byte	0x23
	.4byte	0x16c8
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB175
	.4byte	.LBE175-.LBB175
	.byte	0x2
	.2byte	0x399
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0xb
	.4byte	0x49d
	.4byte	0x16f3
	.uleb128 0xc
	.4byte	0x5b
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x49d
	.uleb128 0x44
	.4byte	.LASF322
	.byte	0x2
	.2byte	0x366
	.byte	0xd
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17c1
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x2
	.2byte	0x368
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x33
	.ascii	"j\000"
	.byte	0x2
	.2byte	0x369
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x36a
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x42
	.4byte	.LBB167
	.4byte	.LBE167-.LBB167
	.4byte	0x176a
	.uleb128 0x34
	.4byte	.LASF305
	.byte	0x2
	.2byte	0x372
	.byte	0x16
	.4byte	0x287
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x34
	.4byte	.LASF24
	.byte	0x2
	.2byte	0x372
	.byte	0x65
	.4byte	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB163
	.4byte	.LBE163-.LBB163
	.byte	0x2
	.2byte	0x36c
	.byte	0x12
	.4byte	0x1788
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB165
	.4byte	.LBE165-.LBB165
	.byte	0x2
	.2byte	0x36c
	.byte	0x23
	.4byte	0x17a6
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB168
	.4byte	.LBE168-.LBB168
	.byte	0x2
	.2byte	0x37d
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF323
	.byte	0x2
	.2byte	0x34b
	.byte	0xd
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x188a
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x2
	.2byte	0x34d
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x33
	.ascii	"j\000"
	.byte	0x2
	.2byte	0x34e
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x34f
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x42
	.4byte	.LBB160
	.4byte	.LBE160-.LBB160
	.4byte	0x1833
	.uleb128 0x34
	.4byte	.LASF305
	.byte	0x2
	.2byte	0x357
	.byte	0x16
	.4byte	0x297
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x34
	.4byte	.LASF24
	.byte	0x2
	.2byte	0x357
	.byte	0x94
	.4byte	0x40a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB156
	.4byte	.LBE156-.LBB156
	.byte	0x2
	.2byte	0x351
	.byte	0x12
	.4byte	0x1851
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB158
	.4byte	.LBE158-.LBB158
	.byte	0x2
	.2byte	0x351
	.byte	0x23
	.4byte	0x186f
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB161
	.4byte	.LBE161-.LBB161
	.byte	0x2
	.2byte	0x362
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.byte	0
	.uleb128 0x44
	.4byte	.LASF324
	.byte	0x2
	.2byte	0x318
	.byte	0xd
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1928
	.uleb128 0x32
	.4byte	.LASF325
	.byte	0x2
	.2byte	0x318
	.byte	0x2c
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.4byte	.LASF326
	.byte	0x2
	.2byte	0x31a
	.byte	0xa
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x31c
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB150
	.4byte	.LBE150-.LBB150
	.byte	0x2
	.2byte	0x325
	.byte	0x12
	.4byte	0x18ef
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB152
	.4byte	.LBE152-.LBB152
	.byte	0x2
	.2byte	0x325
	.byte	0x23
	.4byte	0x190d
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB154
	.4byte	.LBE154-.LBB154
	.byte	0x2
	.2byte	0x347
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF327
	.byte	0x2
	.2byte	0x30d
	.byte	0x6
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1950
	.uleb128 0x32
	.4byte	.LASF328
	.byte	0x2
	.2byte	0x30d
	.byte	0x24
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
	.byte	0
	.uleb128 0x31
	.4byte	.LASF329
	.byte	0x2
	.2byte	0x308
	.byte	0x6
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1978
	.uleb128 0x32
	.4byte	.LASF330
	.byte	0x2
	.2byte	0x308
	.byte	0x23
	.4byte	0x246
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
	.byte	0
	.uleb128 0x46
	.4byte	.LASF334
	.byte	0x2
	.2byte	0x303
	.byte	0x5
	.4byte	0x3b
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.4byte	.LASF332
	.byte	0x2
	.2byte	0x2e9
	.byte	0x6
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x47
	.4byte	.LASF333
	.byte	0x2
	.2byte	0x2db
	.byte	0x6
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x46
	.4byte	.LASF335
	.byte	0x2
	.2byte	0x272
	.byte	0xd
	.4byte	0x62
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3f
	.4byte	.LASF336
	.byte	0x2
	.2byte	0x248
	.byte	0x6
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a5a
	.uleb128 0x32
	.4byte	.LASF337
	.byte	0x2
	.2byte	0x248
	.byte	0x1c
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x24a
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB144
	.4byte	.LBE144-.LBB144
	.byte	0x2
	.2byte	0x24c
	.byte	0x12
	.4byte	0x1a21
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB146
	.4byte	.LBE146-.LBB146
	.byte	0x2
	.2byte	0x24c
	.byte	0x23
	.4byte	0x1a3f
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB148
	.4byte	.LBE148-.LBB148
	.byte	0x2
	.2byte	0x269
	.byte	0x3
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF338
	.byte	0x2
	.2byte	0x216
	.byte	0x6
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b06
	.uleb128 0x32
	.4byte	.LASF339
	.byte	0x2
	.2byte	0x216
	.byte	0x26
	.4byte	0x2cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x34
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x218
	.byte	0xb
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x35
	.4byte	0x24c8
	.4byte	.LBB136
	.4byte	.LBE136-.LBB136
	.byte	0x2
	.2byte	0x21a
	.byte	0x12
	.4byte	0x1aaf
	.uleb128 0x36
	.4byte	0x24d5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB138
	.4byte	.LBE138-.LBB138
	.byte	0x2
	.2byte	0x21a
	.byte	0x23
	.4byte	0x1acd
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x35
	.4byte	0x24ae
	.4byte	.LBB140
	.4byte	.LBE140-.LBB140
	.byte	0x2
	.2byte	0x228
	.byte	0x4
	.4byte	0x1aeb
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x38
	.4byte	0x24ae
	.4byte	.LBB142
	.4byte	.LBE142-.LBB142
	.byte	0x2
	.2byte	0x22c
	.byte	0x4
	.uleb128 0x37
	.4byte	0x24bb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF340
	.byte	0x2
	.2byte	0x1f5
	.byte	0xd
	.4byte	0x2cc
	.4byte	.LFB207
	.4byte	.LFE207-.LFB207
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b42
	.uleb128 0x32
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x1f5
	.byte	0x30
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x32
	.4byte	.LASF59
	.byte	0x2
	.2byte	0x1f5
	.byte	0x3e
	.4byte	0x22e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF341
	.byte	0x2
	.2byte	0x1bf
	.byte	0x6
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ba8
	.uleb128 0x40
	.ascii	"chn\000"
	.byte	0x2
	.2byte	0x1bf
	.byte	0x1f
	.4byte	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x40
	.ascii	"fmt\000"
	.byte	0x2
	.2byte	0x1bf
	.byte	0x30
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x45
	.uleb128 0x33
	.ascii	"vl\000"
	.byte	0x2
	.2byte	0x1c1
	.byte	0xa
	.4byte	0x20f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x33
	.ascii	"i\000"
	.byte	0x2
	.2byte	0x1c2
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x34
	.4byte	.LASF300
	.byte	0x2
	.2byte	0x1c4
	.byte	0x6
	.4byte	0x3b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF342
	.byte	0x2
	.2byte	0x18c
	.byte	0x6
	.4byte	.LFB205
	.4byte	.LFE205-.LFB205
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1be0
	.uleb128 0x40
	.ascii	"chn\000"
	.byte	0x2
	.2byte	0x18c
	.byte	0x1e
	.4byte	0x2c0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x40
	.ascii	"str\000"
	.byte	0x2
	.2byte	0x18c
	.byte	0x2f
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x39
	.4byte	.LASF343
	.byte	0x2
	.2byte	0x169
	.byte	0xd
	.4byte	0x2c0
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c0c
	.uleb128 0x32
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x169
	.byte	0x2e
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x31
	.4byte	.LASF344
	.byte	0x2
	.2byte	0x15d
	.byte	0x6
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c34
	.uleb128 0x32
	.4byte	.LASF345
	.byte	0x2
	.2byte	0x15d
	.byte	0x22
	.4byte	0x263
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF346
	.byte	0x2
	.2byte	0x14a
	.byte	0x6
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c6c
	.uleb128 0x32
	.4byte	.LASF347
	.byte	0x2
	.2byte	0x14a
	.byte	0x28
	.4byte	0x39
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x32
	.4byte	.LASF126
	.byte	0x2
	.2byte	0x14a
	.byte	0x3c
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF348
	.byte	0x2
	.2byte	0x13d
	.byte	0x6
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.4byte	.LASF349
	.byte	0x2
	.2byte	0x12d
	.byte	0x6
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x3bb
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ccc
	.uleb128 0x32
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x3bb
	.byte	0x71
	.4byte	0x1ccc
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF352
	.byte	0x1
	.2byte	0x3bb
	.byte	0x86
	.4byte	0x263
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x26f
	.uleb128 0x3a
	.4byte	.LASF353
	.byte	0x1
	.2byte	0x3a6
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cfd
	.uleb128 0x32
	.4byte	.LASF354
	.byte	0x1
	.2byte	0x3a6
	.byte	0x6e
	.4byte	0x1cfd
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x31e
	.uleb128 0x3d
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x386
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x379
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d45
	.uleb128 0x32
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x379
	.byte	0x73
	.4byte	0x334
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x363
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d9d
	.uleb128 0x32
	.4byte	.LASF360
	.byte	0x1
	.2byte	0x363
	.byte	0x5b
	.4byte	0x263
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF361
	.byte	0x1
	.2byte	0x363
	.byte	0x70
	.4byte	0x263
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x32
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x363
	.byte	0x85
	.4byte	0x263
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x32
	.4byte	.LASF363
	.byte	0x1
	.2byte	0x363
	.byte	0x9a
	.4byte	0x263
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x34c
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1dc8
	.uleb128 0x32
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x34c
	.byte	0x5e
	.4byte	0x263
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x32c
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e11
	.uleb128 0x32
	.4byte	.LASF367
	.byte	0x1
	.2byte	0x32c
	.byte	0x5b
	.4byte	0x40a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x32c
	.byte	0x73
	.4byte	0x1e11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x32
	.4byte	.LASF369
	.byte	0x1
	.2byte	0x32c
	.byte	0x83
	.4byte	0x263
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x274
	.uleb128 0x3a
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x307
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e42
	.uleb128 0x32
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x307
	.byte	0x57
	.4byte	0x86b
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF372
	.byte	0x1
	.2byte	0x2fc
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e6d
	.uleb128 0x32
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x2fc
	.byte	0x57
	.4byte	0x40a
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x2f1
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ea7
	.uleb128 0x32
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x2f1
	.byte	0x5f
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x2f1
	.byte	0x87
	.4byte	0x1ea7
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x36d
	.uleb128 0x3a
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x2e0
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ed8
	.uleb128 0x32
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x2e0
	.byte	0x6b
	.4byte	0x1ed8
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x35c
	.uleb128 0x3a
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x2d0
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f18
	.uleb128 0x32
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x2d0
	.byte	0x67
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x2d0
	.byte	0x75
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x2b1
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f52
	.uleb128 0x32
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x2b1
	.byte	0x5a
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF384
	.byte	0x1
	.2byte	0x2b1
	.byte	0x70
	.4byte	0x40a
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x2a7
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f8c
	.uleb128 0x32
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x2a7
	.byte	0x5d
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF386
	.byte	0x1
	.2byte	0x2a7
	.byte	0x71
	.4byte	0x263
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x29d
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fb7
	.uleb128 0x32
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x29d
	.byte	0x63
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF388
	.byte	0x1
	.2byte	0x294
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fe2
	.uleb128 0x32
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x294
	.byte	0x62
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x28b
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x202b
	.uleb128 0x32
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x28b
	.byte	0x5f
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x28b
	.byte	0x82
	.4byte	0x202b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x32
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x28b
	.byte	0xa6
	.4byte	0x202b
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2df
	.uleb128 0x3a
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x280
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x205c
	.uleb128 0x32
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x280
	.byte	0x64
	.4byte	0x263
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x278
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2087
	.uleb128 0x32
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x278
	.byte	0x64
	.4byte	0x263
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x270
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20b2
	.uleb128 0x32
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x270
	.byte	0x66
	.4byte	0x40a
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x268
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.4byte	.LASF400
	.byte	0x1
	.2byte	0x24c
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20f4
	.uleb128 0x32
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x24c
	.byte	0x66
	.4byte	0x40a
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x241
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x236
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.4byte	.LASF404
	.byte	0x1
	.2byte	0x229
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x214d
	.uleb128 0x32
	.4byte	.LASF405
	.byte	0x1
	.2byte	0x229
	.byte	0x60
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF406
	.byte	0x1
	.2byte	0x220
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2187
	.uleb128 0x32
	.4byte	.LASF407
	.byte	0x1
	.2byte	0x220
	.byte	0x60
	.4byte	0x263
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF408
	.byte	0x1
	.2byte	0x220
	.byte	0x77
	.4byte	0x40a
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF409
	.byte	0x1
	.2byte	0x217
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21c1
	.uleb128 0x32
	.4byte	.LASF407
	.byte	0x1
	.2byte	0x217
	.byte	0x60
	.4byte	0x263
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF410
	.byte	0x1
	.2byte	0x217
	.byte	0x76
	.4byte	0x263
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF411
	.byte	0x1
	.2byte	0x20e
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21fb
	.uleb128 0x32
	.4byte	.LASF407
	.byte	0x1
	.2byte	0x20e
	.byte	0x60
	.4byte	0x263
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF410
	.byte	0x1
	.2byte	0x20e
	.byte	0x76
	.4byte	0x263
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF412
	.byte	0x1
	.2byte	0x205
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2235
	.uleb128 0x32
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x205
	.byte	0x60
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF413
	.byte	0x1
	.2byte	0x205
	.byte	0x72
	.4byte	0x40a
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF414
	.byte	0x1
	.2byte	0x1fc
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x226f
	.uleb128 0x32
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x1fc
	.byte	0x60
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF415
	.byte	0x1
	.2byte	0x1fc
	.byte	0x70
	.4byte	0x263
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF416
	.byte	0x1
	.2byte	0x1f3
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22a9
	.uleb128 0x32
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x1f3
	.byte	0x60
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF417
	.byte	0x1
	.2byte	0x1f3
	.byte	0x70
	.4byte	0x263
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF418
	.byte	0x1
	.2byte	0x1e9
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22d4
	.uleb128 0x32
	.4byte	.LASF419
	.byte	0x1
	.2byte	0x1e9
	.byte	0x64
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF420
	.byte	0x1
	.2byte	0x1de
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22ff
	.uleb128 0x32
	.4byte	.LASF421
	.byte	0x1
	.2byte	0x1de
	.byte	0x5d
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF422
	.byte	0x1
	.2byte	0x1d3
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3a
	.4byte	.LASF423
	.byte	0x1
	.2byte	0x1cd
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2341
	.uleb128 0x32
	.4byte	.LASF424
	.byte	0x1
	.2byte	0x1cd
	.byte	0x5b
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF425
	.byte	0x1
	.2byte	0x1c4
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x236c
	.uleb128 0x32
	.4byte	.LASF426
	.byte	0x1
	.2byte	0x1c4
	.byte	0x64
	.4byte	0x263
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF427
	.byte	0x1
	.2byte	0x1bc
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2397
	.uleb128 0x32
	.4byte	.LASF428
	.byte	0x1
	.2byte	0x1bc
	.byte	0x66
	.4byte	0x40a
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF429
	.byte	0x1
	.2byte	0x1b4
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23d1
	.uleb128 0x32
	.4byte	.LASF430
	.byte	0x1
	.2byte	0x1b4
	.byte	0x6a
	.4byte	0x41c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x32
	.4byte	.LASF431
	.byte	0x1
	.2byte	0x1b4
	.byte	0x7a
	.4byte	0x22e
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF432
	.byte	0x1
	.2byte	0x1aa
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23fc
	.uleb128 0x32
	.4byte	.LASF433
	.byte	0x1
	.2byte	0x1aa
	.byte	0x73
	.4byte	0x41c
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF434
	.byte	0x1
	.2byte	0x1a2
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2427
	.uleb128 0x32
	.4byte	.LASF435
	.byte	0x1
	.2byte	0x1a2
	.byte	0x71
	.4byte	0x41c
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF436
	.byte	0x1
	.2byte	0x19a
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2452
	.uleb128 0x32
	.4byte	.LASF437
	.byte	0x1
	.2byte	0x19a
	.byte	0x60
	.4byte	0x2452
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x300
	.uleb128 0x3a
	.4byte	.LASF438
	.byte	0x1
	.2byte	0x192
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2483
	.uleb128 0x32
	.4byte	.LASF437
	.byte	0x1
	.2byte	0x192
	.byte	0x60
	.4byte	0x2452
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3a
	.4byte	.LASF439
	.byte	0x1
	.2byte	0x189
	.byte	0x41
	.4byte	0x263
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24ae
	.uleb128 0x32
	.4byte	.LASF437
	.byte	0x1
	.2byte	0x189
	.byte	0x5c
	.4byte	0x2452
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x48
	.4byte	.LASF440
	.byte	0x3
	.byte	0xd5
	.byte	0x37
	.byte	0x3
	.4byte	0x24c8
	.uleb128 0x49
	.4byte	.LASF446
	.byte	0x3
	.byte	0xd5
	.byte	0x4e
	.4byte	0x263
	.byte	0
	.uleb128 0x4a
	.4byte	.LASF441
	.byte	0x3
	.byte	0xc7
	.byte	0x3b
	.4byte	0x263
	.byte	0x3
	.uleb128 0x4b
	.4byte	.LASF447
	.byte	0x3
	.byte	0xc9
	.byte	0xc
	.4byte	0x263
	.byte	0
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x41
	.byte	0x1
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x17
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x2134
	.uleb128 0x19
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x4b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x100d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x24e3
	.4byte	0x2f
	.ascii	"SD_PPI_CHANNEL_ENABLE_GET\000"
	.4byte	0x35
	.ascii	"SD_PPI_CHANNEL_ENABLE_SET\000"
	.4byte	0x3b
	.ascii	"SD_PPI_CHANNEL_ENABLE_CLR\000"
	.4byte	0x41
	.ascii	"SD_PPI_CHANNEL_ASSIGN\000"
	.4byte	0x47
	.ascii	"SD_PPI_GROUP_TASK_ENABLE\000"
	.4byte	0x4d
	.ascii	"SD_PPI_GROUP_TASK_DISABLE\000"
	.4byte	0x53
	.ascii	"SD_PPI_GROUP_ASSIGN\000"
	.4byte	0x59
	.ascii	"SD_PPI_GROUP_GET\000"
	.4byte	0x5f
	.ascii	"SD_FLASH_PAGE_ERASE\000"
	.4byte	0x65
	.ascii	"SD_FLASH_WRITE\000"
	.4byte	0x6b
	.ascii	"SD_FLASH_PROTECT\000"
	.4byte	0x71
	.ascii	"SD_PROTECTED_REGISTER_WRITE\000"
	.4byte	0x77
	.ascii	"SD_MUTEX_NEW\000"
	.4byte	0x7d
	.ascii	"SD_MUTEX_ACQUIRE\000"
	.4byte	0x83
	.ascii	"SD_MUTEX_RELEASE\000"
	.4byte	0x89
	.ascii	"SD_RAND_APPLICATION_POOL_CAPACITY_GET\000"
	.4byte	0x8f
	.ascii	"SD_RAND_APPLICATION_BYTES_AVAILABLE_GET\000"
	.4byte	0x95
	.ascii	"SD_RAND_APPLICATION_VECTOR_GET\000"
	.4byte	0x9b
	.ascii	"SD_POWER_MODE_SET\000"
	.4byte	0xa1
	.ascii	"SD_POWER_SYSTEM_OFF\000"
	.4byte	0xa7
	.ascii	"SD_POWER_RESET_REASON_GET\000"
	.4byte	0xad
	.ascii	"SD_POWER_RESET_REASON_CLR\000"
	.4byte	0xb3
	.ascii	"SD_POWER_POF_ENABLE\000"
	.4byte	0xb9
	.ascii	"SD_POWER_POF_THRESHOLD_SET\000"
	.4byte	0xbf
	.ascii	"SD_POWER_RAM_POWER_SET\000"
	.4byte	0xc5
	.ascii	"SD_POWER_RAM_POWER_CLR\000"
	.4byte	0xcb
	.ascii	"SD_POWER_RAM_POWER_GET\000"
	.4byte	0xd1
	.ascii	"SD_POWER_GPREGRET_SET\000"
	.4byte	0xd7
	.ascii	"SD_POWER_GPREGRET_CLR\000"
	.4byte	0xdd
	.ascii	"SD_POWER_GPREGRET_GET\000"
	.4byte	0xe3
	.ascii	"SD_POWER_DCDC_MODE_SET\000"
	.4byte	0xe9
	.ascii	"SD_APP_EVT_WAIT\000"
	.4byte	0xef
	.ascii	"SD_CLOCK_HFCLK_REQUEST\000"
	.4byte	0xf5
	.ascii	"SD_CLOCK_HFCLK_RELEASE\000"
	.4byte	0xfb
	.ascii	"SD_CLOCK_HFCLK_IS_RUNNING\000"
	.4byte	0x101
	.ascii	"SD_RADIO_NOTIFICATION_CFG_SET\000"
	.4byte	0x107
	.ascii	"SD_ECB_BLOCK_ENCRYPT\000"
	.4byte	0x10d
	.ascii	"SD_ECB_BLOCKS_ENCRYPT\000"
	.4byte	0x113
	.ascii	"SD_RADIO_SESSION_OPEN\000"
	.4byte	0x119
	.ascii	"SD_RADIO_SESSION_CLOSE\000"
	.4byte	0x11f
	.ascii	"SD_RADIO_REQUEST\000"
	.4byte	0x125
	.ascii	"SD_EVT_GET\000"
	.4byte	0x12b
	.ascii	"SD_TEMP_GET\000"
	.4byte	0x131
	.ascii	"SVC_SOC_LAST\000"
	.4byte	0x4dd
	.ascii	"symbolTable\000"
	.4byte	0x4ef
	.ascii	"firstFreeSymbolTableIndex\000"
	.4byte	0x501
	.ascii	"objectDataTable\000"
	.4byte	0x513
	.ascii	"firstFreeObjectDataTableIndex\000"
	.4byte	0x525
	.ascii	"ISR_stack\000"
	.4byte	0x537
	.ascii	"ISR_stack_index\000"
	.4byte	0x549
	.ascii	"errorCode\000"
	.4byte	0x55b
	.ascii	"SessionCounter\000"
	.4byte	0x56d
	.ascii	"RecorderEnabled\000"
	.4byte	0x57f
	.ascii	"PSFEndianessIdentifier\000"
	.4byte	0x591
	.ascii	"FormatVersion\000"
	.4byte	0x5a3
	.ascii	"eventCounter\000"
	.4byte	0x5c1
	.ascii	"isPendingContextSwitch\000"
	.4byte	0x5d3
	.ascii	"uiTraceTickCount\000"
	.4byte	0x5e5
	.ascii	"timestampFrequency\000"
	.4byte	0x5f7
	.ascii	"DroppedEventCounter\000"
	.4byte	0x609
	.ascii	"TotalBytesRemaining_LowWaterMark\000"
	.4byte	0x61b
	.ascii	"TotalBytesRemaining\000"
	.4byte	0x63d
	.ascii	"PageInfo\000"
	.4byte	0x64f
	.ascii	"EventBuffer\000"
	.4byte	0x661
	.ascii	"NoRoomForSymbol\000"
	.4byte	0x673
	.ascii	"NoRoomForObjectData\000"
	.4byte	0x685
	.ascii	"LongestSymbolName\000"
	.4byte	0x697
	.ascii	"MaxBytesTruncated\000"
	.4byte	0x6a9
	.ascii	"CurrentFilterMask\000"
	.4byte	0x6b7
	.ascii	"CurrentFilterGroup\000"
	.4byte	0x525
	.ascii	"ISR_stack\000"
	.4byte	0x63d
	.ascii	"PageInfo\000"
	.4byte	0x6c5
	.ascii	"prvPagedEventBufferInit\000"
	.4byte	0x761
	.ascii	"prvPagedEventBufferGetWritePointer\000"
	.4byte	0x7b0
	.ascii	"prvPagedEventBufferTransfer\000"
	.4byte	0x80c
	.ascii	"prvGetBufferPage\000"
	.4byte	0x871
	.ascii	"prvPageReadComplete\000"
	.4byte	0x8ff
	.ascii	"prvAllocateBufferPage\000"
	.4byte	0x94b
	.ascii	"prvTraceStoreTSConfig\000"
	.4byte	0x95e
	.ascii	"prvGetTimestamp32\000"
	.4byte	0x975
	.ascii	"prvTraceInitCortexM\000"
	.4byte	0x988
	.ascii	"prvTraceError\000"
	.4byte	0x9b0
	.ascii	"prvTraceWarning\000"
	.4byte	0x9d8
	.ascii	"prvProcessCommand\000"
	.4byte	0xa06
	.ascii	"prvIsValidCommand\000"
	.4byte	0xa42
	.ascii	"prvTraceDeleteObjectData\000"
	.4byte	0xb0c
	.ascii	"prvTraceSaveObjectData\000"
	.4byte	0xbd8
	.ascii	"prvTraceDeleteSymbol\000"
	.4byte	0xca2
	.ascii	"prvTraceSaveSymbol\000"
	.4byte	0xd7e
	.ascii	"prvTraceStoreSimpleStringEventHelper\000"
	.4byte	0xf35
	.ascii	"prvTraceStoreStringEventHelper\000"
	.4byte	0x10e5
	.ascii	"prvTraceStoreStringEvent\000"
	.4byte	0x113d
	.ascii	"prvTraceStoreEvent\000"
	.4byte	0x125d
	.ascii	"prvTraceStoreEvent3\000"
	.4byte	0x135f
	.ascii	"prvTraceStoreEvent2\000"
	.4byte	0x1451
	.ascii	"prvTraceStoreEvent1\000"
	.4byte	0x1533
	.ascii	"prvTraceStoreEvent0\000"
	.4byte	0x1605
	.ascii	"prvTraceStoreWarnings\000"
	.4byte	0x1637
	.ascii	"prvTraceStoreHeader\000"
	.4byte	0x16f9
	.ascii	"prvTraceStoreObjectDataTable\000"
	.4byte	0x17c1
	.ascii	"prvTraceStoreSymbolTable\000"
	.4byte	0x188a
	.ascii	"prvSetRecorderEnabled\000"
	.4byte	0x1928
	.ascii	"vTraceSetFilterGroup\000"
	.4byte	0x1950
	.ascii	"vTraceSetFilterMask\000"
	.4byte	0x1978
	.ascii	"xTraceIsRecordingEnabled\000"
	.4byte	0x198f
	.ascii	"vTraceStop\000"
	.4byte	0x19a2
	.ascii	"vTraceClearError\000"
	.4byte	0x19b5
	.ascii	"xTraceGetLastError\000"
	.4byte	0x19cc
	.ascii	"vTraceStoreISREnd\000"
	.4byte	0x1a5a
	.ascii	"vTraceStoreISRBegin\000"
	.4byte	0x1b06
	.ascii	"xTraceSetISRProperties\000"
	.4byte	0x1b42
	.ascii	"vTracePrintF\000"
	.4byte	0x1ba8
	.ascii	"vTracePrint\000"
	.4byte	0x1be0
	.ascii	"xTraceRegisterString\000"
	.4byte	0x1c0c
	.ascii	"vTraceSetFrequency\000"
	.4byte	0x1c34
	.ascii	"vTraceStoreKernelObjectName\000"
	.4byte	0x1c6c
	.ascii	"vTraceInstanceFinishedNext\000"
	.4byte	0x1c7f
	.ascii	"vTraceInstanceFinishedNow\000"
	.4byte	0x1c92
	.ascii	"sd_protected_register_write\000"
	.4byte	0x1cd2
	.ascii	"sd_radio_request\000"
	.4byte	0x1d03
	.ascii	"sd_radio_session_close\000"
	.4byte	0x1d1a
	.ascii	"sd_radio_session_open\000"
	.4byte	0x1d45
	.ascii	"sd_flash_protect\000"
	.4byte	0x1d9d
	.ascii	"sd_flash_page_erase\000"
	.4byte	0x1dc8
	.ascii	"sd_flash_write\000"
	.4byte	0x1e17
	.ascii	"sd_temp_get\000"
	.4byte	0x1e42
	.ascii	"sd_evt_get\000"
	.4byte	0x1e6d
	.ascii	"sd_ecb_blocks_encrypt\000"
	.4byte	0x1ead
	.ascii	"sd_ecb_block_encrypt\000"
	.4byte	0x1ede
	.ascii	"sd_radio_notification_cfg_set\000"
	.4byte	0x1f18
	.ascii	"sd_ppi_group_get\000"
	.4byte	0x1f52
	.ascii	"sd_ppi_group_assign\000"
	.4byte	0x1f8c
	.ascii	"sd_ppi_group_task_disable\000"
	.4byte	0x1fb7
	.ascii	"sd_ppi_group_task_enable\000"
	.4byte	0x1fe2
	.ascii	"sd_ppi_channel_assign\000"
	.4byte	0x2031
	.ascii	"sd_ppi_channel_enable_clr\000"
	.4byte	0x205c
	.ascii	"sd_ppi_channel_enable_set\000"
	.4byte	0x2087
	.ascii	"sd_ppi_channel_enable_get\000"
	.4byte	0x20b2
	.ascii	"sd_app_evt_wait\000"
	.4byte	0x20c9
	.ascii	"sd_clock_hfclk_is_running\000"
	.4byte	0x20f4
	.ascii	"sd_clock_hfclk_release\000"
	.4byte	0x210b
	.ascii	"sd_clock_hfclk_request\000"
	.4byte	0x2122
	.ascii	"sd_power_dcdc_mode_set\000"
	.4byte	0x214d
	.ascii	"sd_power_gpregret_get\000"
	.4byte	0x2187
	.ascii	"sd_power_gpregret_clr\000"
	.4byte	0x21c1
	.ascii	"sd_power_gpregret_set\000"
	.4byte	0x21fb
	.ascii	"sd_power_ram_power_get\000"
	.4byte	0x2235
	.ascii	"sd_power_ram_power_clr\000"
	.4byte	0x226f
	.ascii	"sd_power_ram_power_set\000"
	.4byte	0x22a9
	.ascii	"sd_power_pof_threshold_set\000"
	.4byte	0x22d4
	.ascii	"sd_power_pof_enable\000"
	.4byte	0x22ff
	.ascii	"sd_power_system_off\000"
	.4byte	0x2316
	.ascii	"sd_power_mode_set\000"
	.4byte	0x2341
	.ascii	"sd_power_reset_reason_clr\000"
	.4byte	0x236c
	.ascii	"sd_power_reset_reason_get\000"
	.4byte	0x2397
	.ascii	"sd_rand_application_vector_get\000"
	.4byte	0x23d1
	.ascii	"sd_rand_application_bytes_available_get\000"
	.4byte	0x23fc
	.ascii	"sd_rand_application_pool_capacity_get\000"
	.4byte	0x2427
	.ascii	"sd_mutex_release\000"
	.4byte	0x2458
	.ascii	"sd_mutex_acquire\000"
	.4byte	0x2483
	.ascii	"sd_mutex_new\000"
	.4byte	0x24ae
	.ascii	"__set_PRIMASK\000"
	.4byte	0x24c8
	.ascii	"__get_PRIMASK\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x377
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x24e3
	.4byte	0xb
	.ascii	"__va_list\000"
	.4byte	0x29
	.ascii	"__va_list\000"
	.4byte	0x3b
	.ascii	"int\000"
	.4byte	0x42
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0x4f
	.ascii	"char\000"
	.4byte	0x5b
	.ascii	"unsigned int\000"
	.4byte	0x68
	.ascii	"unsigned char\000"
	.4byte	0x74
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x89
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0x1e4
	.ascii	"short unsigned int\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x1eb
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x20f
	.ascii	"va_list\000"
	.4byte	0x227
	.ascii	"signed char\000"
	.4byte	0x21b
	.ascii	"int8_t\000"
	.4byte	0x22e
	.ascii	"uint8_t\000"
	.4byte	0x23f
	.ascii	"short int\000"
	.4byte	0x246
	.ascii	"uint16_t\000"
	.4byte	0x252
	.ascii	"int32_t\000"
	.4byte	0x263
	.ascii	"uint32_t\000"
	.4byte	0x279
	.ascii	"long long int\000"
	.4byte	0x280
	.ascii	"long long unsigned int\000"
	.4byte	0x2c0
	.ascii	"traceString\000"
	.4byte	0x2cc
	.ascii	"traceHandle\000"
	.4byte	0x2e4
	.ascii	"SEGGER_RTT_CB\000"
	.4byte	0xb
	.ascii	"NRF_SOC_SVCS\000"
	.4byte	0x300
	.ascii	"nrf_mutex_t\000"
	.4byte	0x30d
	.ascii	"nrf_radio_request_t\000"
	.4byte	0x323
	.ascii	"nrf_radio_signal_callback_return_param_t\000"
	.4byte	0x334
	.ascii	"nrf_radio_signal_callback_t\000"
	.4byte	0x35c
	.ascii	"nrf_ecb_hal_data_t\000"
	.4byte	0x36d
	.ascii	"nrf_ecb_hal_data_block_t\000"
	.4byte	0x37e
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x39a
	.ascii	"FILE\000"
	.4byte	0x3d9
	.ascii	"long unsigned int\000"
	.4byte	0x43c
	.ascii	"TracealyzerCommandType\000"
	.4byte	0x44d
	.ascii	"BaseEvent\000"
	.4byte	0x45d
	.ascii	"EventWithParam_1\000"
	.4byte	0x46d
	.ascii	"EventWithParam_2\000"
	.4byte	0x47d
	.ascii	"EventWithParam_3\000"
	.4byte	0x48d
	.ascii	"largestEventType\000"
	.4byte	0x49d
	.ascii	"PSFHeaderInfo\000"
	.4byte	0x4ad
	.ascii	"SymbolTable\000"
	.4byte	0x4bd
	.ascii	"ObjectDataTable\000"
	.4byte	0x4cd
	.ascii	"PageType\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x2dc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.4byte	.LFB205
	.4byte	.LFE205-.LFB205
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.4byte	.LFB207
	.4byte	.LFE207-.LFB207
	.4byte	.LFB208
	.4byte	.LFE208-.LFB208
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.4byte	.LFB213
	.4byte	.LFE213-.LFB213
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.4byte	.LFB216
	.4byte	.LFE216-.LFB216
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.4byte	.LFB225
	.4byte	.LFE225-.LFB225
	.4byte	.LFB226
	.4byte	.LFE226-.LFB226
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.4byte	.LFB230
	.4byte	.LFE230-.LFB230
	.4byte	.LFB231
	.4byte	.LFE231-.LFB231
	.4byte	.LFB232
	.4byte	.LFE232-.LFB232
	.4byte	.LFB233
	.4byte	.LFE233-.LFB233
	.4byte	.LFB234
	.4byte	.LFE234-.LFB234
	.4byte	.LFB235
	.4byte	.LFE235-.LFB235
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.4byte	.LFB244
	.4byte	.LFE244-.LFB244
	.4byte	.LFB245
	.4byte	.LFE245-.LFB245
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB124
	.4byte	.LFE124
	.4byte	.LFB125
	.4byte	.LFE125
	.4byte	.LFB126
	.4byte	.LFE126
	.4byte	.LFB127
	.4byte	.LFE127
	.4byte	.LFB128
	.4byte	.LFE128
	.4byte	.LFB129
	.4byte	.LFE129
	.4byte	.LFB130
	.4byte	.LFE130
	.4byte	.LFB131
	.4byte	.LFE131
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LFB134
	.4byte	.LFE134
	.4byte	.LFB135
	.4byte	.LFE135
	.4byte	.LFB136
	.4byte	.LFE136
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	.LFB138
	.4byte	.LFE138
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LFB140
	.4byte	.LFE140
	.4byte	.LFB141
	.4byte	.LFE141
	.4byte	.LFB142
	.4byte	.LFE142
	.4byte	.LFB143
	.4byte	.LFE143
	.4byte	.LFB144
	.4byte	.LFE144
	.4byte	.LFB145
	.4byte	.LFE145
	.4byte	.LFB146
	.4byte	.LFE146
	.4byte	.LFB147
	.4byte	.LFE147
	.4byte	.LFB148
	.4byte	.LFE148
	.4byte	.LFB149
	.4byte	.LFE149
	.4byte	.LFB150
	.4byte	.LFE150
	.4byte	.LFB151
	.4byte	.LFE151
	.4byte	.LFB152
	.4byte	.LFE152
	.4byte	.LFB153
	.4byte	.LFE153
	.4byte	.LFB154
	.4byte	.LFE154
	.4byte	.LFB155
	.4byte	.LFE155
	.4byte	.LFB156
	.4byte	.LFE156
	.4byte	.LFB157
	.4byte	.LFE157
	.4byte	.LFB158
	.4byte	.LFE158
	.4byte	.LFB159
	.4byte	.LFE159
	.4byte	.LFB160
	.4byte	.LFE160
	.4byte	.LFB161
	.4byte	.LFE161
	.4byte	.LFB162
	.4byte	.LFE162
	.4byte	.LFB163
	.4byte	.LFE163
	.4byte	.LFB164
	.4byte	.LFE164
	.4byte	.LFB165
	.4byte	.LFE165
	.4byte	.LFB166
	.4byte	.LFE166
	.4byte	.LFB200
	.4byte	.LFE200
	.4byte	.LFB201
	.4byte	.LFE201
	.4byte	.LFB202
	.4byte	.LFE202
	.4byte	.LFB203
	.4byte	.LFE203
	.4byte	.LFB204
	.4byte	.LFE204
	.4byte	.LFB205
	.4byte	.LFE205
	.4byte	.LFB206
	.4byte	.LFE206
	.4byte	.LFB207
	.4byte	.LFE207
	.4byte	.LFB208
	.4byte	.LFE208
	.4byte	.LFB209
	.4byte	.LFE209
	.4byte	.LFB210
	.4byte	.LFE210
	.4byte	.LFB211
	.4byte	.LFE211
	.4byte	.LFB212
	.4byte	.LFE212
	.4byte	.LFB213
	.4byte	.LFE213
	.4byte	.LFB214
	.4byte	.LFE214
	.4byte	.LFB215
	.4byte	.LFE215
	.4byte	.LFB216
	.4byte	.LFE216
	.4byte	.LFB217
	.4byte	.LFE217
	.4byte	.LFB218
	.4byte	.LFE218
	.4byte	.LFB219
	.4byte	.LFE219
	.4byte	.LFB220
	.4byte	.LFE220
	.4byte	.LFB221
	.4byte	.LFE221
	.4byte	.LFB222
	.4byte	.LFE222
	.4byte	.LFB223
	.4byte	.LFE223
	.4byte	.LFB224
	.4byte	.LFE224
	.4byte	.LFB225
	.4byte	.LFE225
	.4byte	.LFB226
	.4byte	.LFE226
	.4byte	.LFB227
	.4byte	.LFE227
	.4byte	.LFB228
	.4byte	.LFE228
	.4byte	.LFB229
	.4byte	.LFE229
	.4byte	.LFB230
	.4byte	.LFE230
	.4byte	.LFB231
	.4byte	.LFE231
	.4byte	.LFB232
	.4byte	.LFE232
	.4byte	.LFB233
	.4byte	.LFE233
	.4byte	.LFB234
	.4byte	.LFE234
	.4byte	.LFB235
	.4byte	.LFE235
	.4byte	.LFB236
	.4byte	.LFE236
	.4byte	.LFB237
	.4byte	.LFE237
	.4byte	.LFB238
	.4byte	.LFE238
	.4byte	.LFB239
	.4byte	.LFE239
	.4byte	.LFB240
	.4byte	.LFE240
	.4byte	.LFB241
	.4byte	.LFE241
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	.LFB243
	.4byte	.LFE243
	.4byte	.LFB244
	.4byte	.LFE244
	.4byte	.LFB245
	.4byte	.LFE245
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0x3
	.uleb128 0x34
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x4
	.byte	0x4
	.file 16 "../../../config/trcConfig.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x10
	.file 17 "../../../TraceRecorder/include/trcPortDefines.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x11
	.byte	0x4
	.file 18 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x12
	.byte	0x3
	.uleb128 0x92
	.uleb128 0xb
	.file 19 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x13
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.file 20 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x14
	.byte	0x4
	.file 21 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.file 22 "../../../config/trcStreamingConfig.h"
	.byte	0x3
	.uleb128 0x127
	.uleb128 0x16
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x11
	.byte	0x4
	.file 23 "../../../TraceRecorder/include/trcHardwarePort.h"
	.byte	0x3
	.uleb128 0x4f
	.uleb128 0x17
	.byte	0x4
	.file 24 "../../../TraceRecorder/streamports/Jlink_RTT/include/trcStreamingPort.h"
	.byte	0x3
	.uleb128 0x50
	.uleb128 0x18
	.file 25 "../../../TraceRecorder/streamports/Jlink_RTT/include/SEGGER_RTT_Conf.h"
	.byte	0x3
	.uleb128 0x85
	.uleb128 0x19
	.byte	0x4
	.byte	0x3
	.uleb128 0x86
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0xf
	.file 26 "../../../../../../external/freertos/source/include/FreeRTOS.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x1a
	.file 27 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x1b
	.byte	0x4
	.file 28 "../../../config/FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x1
	.file 29 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x1d
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x12
	.byte	0x4
	.file 30 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x1e
	.byte	0x4
	.file 31 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x1f
	.byte	0x4
	.file 32 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x20
	.byte	0x4
	.file 33 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x21
	.byte	0x4
	.byte	0x4
	.file 34 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x22
	.byte	0x4
	.file 35 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x23
	.byte	0x4
	.file 36 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x24
	.byte	0x4
	.byte	0x4
	.file 37 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x25
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x21
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x6
	.byte	0x4
	.file 38 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x26
	.byte	0x4
	.file 39 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x27
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xd
	.byte	0x4
	.file 40 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x28
	.byte	0x4
	.file 41 "../../../../../../components/libraries/util/sdk_errors.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x29
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.file 42 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x2a
	.byte	0x4
	.file 43 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb1
	.uleb128 0x26
	.byte	0x4
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x5
	.byte	0x4
	.file 44 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd6
	.uleb128 0x2c
	.file 45 "../../../systemView/SEGGER_SYSVIEW.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x2d
	.file 46 "../../../systemView/SEGGER.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x2e
	.file 47 "../../../systemView/Global.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0x2f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 48 "../../../../../../external/freertos/source/include/projdefs.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x30
	.byte	0x4
	.file 49 "../../../../../../external/freertos/source/include/portable.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x31
	.file 50 "../../../../../../external/freertos/source/include/deprecated_definitions.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x32
	.byte	0x4
	.file 51 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x33
	.file 52 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x34
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 53 "../../../../../../external/freertos/source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x35
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF295:
	.ascii	"ptrSymbol\000"
.LASF196:
	.ascii	"int8_t\000"
.LASF428:
	.ascii	"p_reset_reason\000"
.LASF277:
	.ascii	"prvGetBufferPage\000"
.LASF323:
	.ascii	"prvTraceStoreSymbolTable\000"
.LASF255:
	.ascii	"TotalBytesRemaining\000"
.LASF357:
	.ascii	"sd_radio_session_open\000"
.LASF134:
	.ascii	"__towupper\000"
.LASF342:
	.ascii	"vTracePrint\000"
.LASF129:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF25:
	.ascii	"BaseEvent\000"
.LASF420:
	.ascii	"sd_power_pof_enable\000"
.LASF21:
	.ascii	"objectDataSize\000"
.LASF139:
	.ascii	"decimal_point\000"
.LASF1:
	.ascii	"BytesRemaining\000"
.LASF199:
	.ascii	"int32_t\000"
.LASF48:
	.ascii	"request\000"
.LASF341:
	.ascii	"vTracePrintF\000"
.LASF317:
	.ascii	"prvTraceStoreEvent0\000"
.LASF213:
	.ascii	"nrf_nvic_state_t\000"
.LASF384:
	.ascii	"p_channel_msk\000"
.LASF249:
	.ascii	"trcWarningChannel\000"
.LASF396:
	.ascii	"channel_enable_set_msk\000"
.LASF169:
	.ascii	"time_format\000"
.LASF359:
	.ascii	"sd_flash_protect\000"
.LASF310:
	.ascii	"prvTraceStoreStringEventHelper\000"
.LASF185:
	.ascii	"__RAL_data_utf8_period\000"
.LASF416:
	.ascii	"sd_power_ram_power_set\000"
.LASF105:
	.ascii	"SVC_SOC_LAST\000"
.LASF414:
	.ascii	"sd_power_ram_power_clr\000"
.LASF241:
	.ascii	"ISR_stack\000"
.LASF292:
	.ascii	"prvTraceDeleteSymbol\000"
.LASF336:
	.ascii	"vTraceStoreISREnd\000"
.LASF165:
	.ascii	"month_names\000"
.LASF59:
	.ascii	"priority\000"
.LASF142:
	.ascii	"int_curr_symbol\000"
.LASF307:
	.ascii	"data32\000"
.LASF245:
	.ascii	"RecorderEnabled\000"
.LASF380:
	.ascii	"type\000"
.LASF153:
	.ascii	"n_cs_precedes\000"
.LASF6:
	.ascii	"ObjectDataTableBuffer\000"
.LASF79:
	.ascii	"SD_RAND_APPLICATION_VECTOR_GET\000"
.LASF132:
	.ascii	"__tolower\000"
.LASF302:
	.ascii	"eventID\000"
.LASF223:
	.ascii	"__StackLimit\000"
.LASF81:
	.ascii	"SD_POWER_SYSTEM_OFF\000"
.LASF103:
	.ascii	"SD_EVT_GET\000"
.LASF350:
	.ascii	"sd_protected_register_write\000"
.LASF149:
	.ascii	"int_frac_digits\000"
.LASF96:
	.ascii	"SD_CLOCK_HFCLK_IS_RUNNING\000"
.LASF291:
	.ascii	"foundSlot\000"
.LASF272:
	.ascii	"bytesUsed\000"
.LASF387:
	.ascii	"sd_ppi_group_task_disable\000"
.LASF67:
	.ascii	"SD_PPI_GROUP_TASK_DISABLE\000"
.LASF293:
	.ascii	"prvTraceSaveSymbol\000"
.LASF297:
	.ascii	"userEvtChannel\000"
.LASF147:
	.ascii	"positive_sign\000"
.LASF276:
	.ascii	"pageIndex\000"
.LASF262:
	.ascii	"__irq_status\000"
.LASF447:
	.ascii	"result\000"
.LASF53:
	.ascii	"request_type\000"
.LASF168:
	.ascii	"date_format\000"
.LASF38:
	.ascii	"p_key\000"
.LASF144:
	.ascii	"mon_decimal_point\000"
.LASF138:
	.ascii	"long int\000"
.LASF51:
	.ascii	"p_next\000"
.LASF122:
	.ascii	"__RAL_error_decoder_s\000"
.LASF193:
	.ascii	"__RAL_error_decoder_t\000"
.LASF366:
	.ascii	"sd_flash_write\000"
.LASF98:
	.ascii	"SD_ECB_BLOCK_ENCRYPT\000"
.LASF176:
	.ascii	"__RAL_global_locale\000"
.LASF43:
	.ascii	"ciphertext\000"
.LASF344:
	.ascii	"vTraceSetFrequency\000"
.LASF227:
	.ascii	"CurrentFilterGroup\000"
.LASF382:
	.ascii	"sd_ppi_group_get\000"
.LASF157:
	.ascii	"int_p_cs_precedes\000"
.LASF158:
	.ascii	"int_n_cs_precedes\000"
.LASF368:
	.ascii	"p_src\000"
.LASF401:
	.ascii	"p_is_running\000"
.LASF264:
	.ascii	"sizeOfEvent\000"
.LASF444:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF372:
	.ascii	"sd_evt_get\000"
.LASF42:
	.ascii	"cleartext\000"
.LASF100:
	.ascii	"SD_RADIO_SESSION_OPEN\000"
.LASF406:
	.ascii	"sd_power_gpregret_get\000"
.LASF367:
	.ascii	"p_dst\000"
.LASF391:
	.ascii	"evt_endpoint\000"
.LASF233:
	.ascii	"PSFHeaderInfo\000"
.LASF395:
	.ascii	"sd_ppi_channel_enable_set\000"
.LASF362:
	.ascii	"block_cfg2\000"
.LASF137:
	.ascii	"__mbtowc\000"
.LASF39:
	.ascii	"p_cleartext\000"
.LASF393:
	.ascii	"sd_ppi_channel_enable_clr\000"
.LASF114:
	.ascii	"pBuffer\000"
.LASF27:
	.ascii	"param2\000"
.LASF247:
	.ascii	"FormatVersion\000"
.LASF197:
	.ascii	"signed char\000"
.LASF332:
	.ascii	"vTraceStop\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF37:
	.ascii	"__cr_flag\000"
.LASF82:
	.ascii	"SD_POWER_RESET_REASON_GET\000"
.LASF19:
	.ascii	"symbolSize\000"
.LASF313:
	.ascii	"nParam\000"
.LASF270:
	.ascii	"bytesTransferredNow\000"
.LASF429:
	.ascii	"sd_rand_application_vector_get\000"
.LASF110:
	.ascii	"aDown\000"
.LASF49:
	.ascii	"extend\000"
.LASF259:
	.ascii	"NoRoomForObjectData\000"
.LASF12:
	.ascii	"unsigned char\000"
.LASF427:
	.ascii	"sd_power_reset_reason_get\000"
.LASF154:
	.ascii	"n_sep_by_space\000"
.LASF422:
	.ascii	"sd_power_system_off\000"
.LASF273:
	.ascii	"lastPage\000"
.LASF229:
	.ascii	"EventWithParam_1\000"
.LASF230:
	.ascii	"EventWithParam_2\000"
.LASF231:
	.ascii	"EventWithParam_3\000"
.LASF364:
	.ascii	"sd_flash_page_erase\000"
.LASF267:
	.ascii	"prvPagedEventBufferTransfer\000"
.LASF351:
	.ascii	"p_register\000"
.LASF187:
	.ascii	"__RAL_data_utf8_space\000"
.LASF234:
	.ascii	"SymbolTable\000"
.LASF243:
	.ascii	"errorCode\000"
.LASF63:
	.ascii	"SD_PPI_CHANNEL_ENABLE_SET\000"
.LASF321:
	.ascii	"header\000"
.LASF64:
	.ascii	"SD_PPI_CHANNEL_ENABLE_CLR\000"
.LASF328:
	.ascii	"filterGroup\000"
.LASF104:
	.ascii	"SD_TEMP_GET\000"
.LASF352:
	.ascii	"value\000"
.LASF281:
	.ascii	"prvTraceError\000"
.LASF402:
	.ascii	"sd_clock_hfclk_release\000"
.LASF118:
	.ascii	"Flags\000"
.LASF4:
	.ascii	"char\000"
.LASF386:
	.ascii	"channel_msk\000"
.LASF404:
	.ascii	"sd_power_dcdc_mode_set\000"
.LASF88:
	.ascii	"SD_POWER_RAM_POWER_GET\000"
.LASF211:
	.ascii	"nrf_ecb_hal_data_t\000"
.LASF365:
	.ascii	"page_number\000"
.LASF426:
	.ascii	"reset_reason_clr_msk\000"
.LASF156:
	.ascii	"n_sign_posn\000"
.LASF216:
	.ascii	"timeval\000"
.LASF381:
	.ascii	"distance\000"
.LASF373:
	.ascii	"p_evt_id\000"
.LASF298:
	.ascii	"nWords\000"
.LASF184:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF159:
	.ascii	"int_p_sep_by_space\000"
.LASF55:
	.ascii	"normal\000"
.LASF145:
	.ascii	"mon_thousands_sep\000"
.LASF358:
	.ascii	"p_radio_signal_callback\000"
.LASF388:
	.ascii	"sd_ppi_group_task_enable\000"
.LASF135:
	.ascii	"__towlower\000"
.LASF218:
	.ascii	"stdin\000"
.LASF148:
	.ascii	"negative_sign\000"
.LASF269:
	.ascii	"bytesTransferredTotal\000"
.LASF214:
	.ascii	"nrf_nvic_state\000"
.LASF268:
	.ascii	"pageToTransfer\000"
.LASF119:
	.ascii	"decode\000"
.LASF439:
	.ascii	"sd_mutex_new\000"
.LASF309:
	.ascii	"prvPageReadComplete\000"
.LASF251:
	.ascii	"uiTraceTickCount\000"
.LASF99:
	.ascii	"SD_ECB_BLOCKS_ENCRYPT\000"
.LASF287:
	.ascii	"prvTraceDeleteObjectData\000"
.LASF77:
	.ascii	"SD_RAND_APPLICATION_POOL_CAPACITY_GET\000"
.LASF334:
	.ascii	"xTraceIsRecordingEnabled\000"
.LASF347:
	.ascii	"object\000"
.LASF263:
	.ascii	"buffer\000"
.LASF108:
	.ascii	"MaxNumUpBuffers\000"
.LASF178:
	.ascii	"__RAL_codeset_ascii\000"
.LASF106:
	.ascii	"NRF_SOC_SVCS\000"
.LASF125:
	.ascii	"__RAL_locale_t\000"
.LASF438:
	.ascii	"sd_mutex_acquire\000"
.LASF330:
	.ascii	"filterMask\000"
.LASF265:
	.ascii	"currentWritePage\000"
.LASF421:
	.ascii	"pof_enable\000"
.LASF166:
	.ascii	"abbrev_month_names\000"
.LASF331:
	.ascii	"prvTraceInitCortexM\000"
.LASF403:
	.ascii	"sd_clock_hfclk_request\000"
.LASF95:
	.ascii	"SD_CLOCK_HFCLK_RELEASE\000"
.LASF127:
	.ascii	"codeset\000"
.LASF374:
	.ascii	"sd_ecb_blocks_encrypt\000"
.LASF275:
	.ascii	"index\000"
.LASF296:
	.ascii	"prvTraceStoreSimpleStringEventHelper\000"
.LASF371:
	.ascii	"p_temp\000"
.LASF60:
	.ascii	"distance_us\000"
.LASF349:
	.ascii	"vTraceInstanceFinishedNow\000"
.LASF173:
	.ascii	"__wchar\000"
.LASF221:
	.ascii	"long unsigned int\000"
.LASF174:
	.ascii	"__va_list\000"
.LASF194:
	.ascii	"__RAL_error_decoder_head\000"
.LASF335:
	.ascii	"xTraceGetLastError\000"
.LASF128:
	.ascii	"__RAL_locale_data_t\000"
.LASF121:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF210:
	.ascii	"nrf_radio_signal_callback_t\000"
.LASF183:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF288:
	.ascii	"address\000"
.LASF360:
	.ascii	"block_cfg0\000"
.LASF361:
	.ascii	"block_cfg1\000"
.LASF203:
	.ascii	"SystemCoreClock\000"
.LASF363:
	.ascii	"block_cfg3\000"
.LASF146:
	.ascii	"mon_grouping\000"
.LASF175:
	.ascii	"__ap\000"
.LASF22:
	.ascii	"objectDataCount\000"
.LASF212:
	.ascii	"nrf_ecb_hal_data_block_t\000"
.LASF222:
	.ascii	"__StackTop\000"
.LASF326:
	.ascii	"currentTask\000"
.LASF107:
	.ascii	"acID\000"
.LASF20:
	.ascii	"symbolCount\000"
.LASF7:
	.ascii	"pObjectDataTableBufferUINT32\000"
.LASF167:
	.ascii	"am_pm_indicator\000"
.LASF378:
	.ascii	"p_ecb_data\000"
.LASF226:
	.ascii	"CurrentFilterMask\000"
.LASF440:
	.ascii	"__set_PRIMASK\000"
.LASF446:
	.ascii	"priMask\000"
.LASF375:
	.ascii	"block_count\000"
.LASF45:
	.ascii	"soc_ecb_cleartext_t\000"
.LASF376:
	.ascii	"p_data_blocks\000"
.LASF282:
	.ascii	"errCode\000"
.LASF435:
	.ascii	"p_pool_capacity\000"
.LASF257:
	.ascii	"EventBuffer\000"
.LASF91:
	.ascii	"SD_POWER_GPREGRET_GET\000"
.LASF160:
	.ascii	"int_n_sep_by_space\000"
.LASF398:
	.ascii	"p_channel_enable\000"
.LASF40:
	.ascii	"p_ciphertext\000"
.LASF191:
	.ascii	"__user_set_time_of_day\000"
.LASF0:
	.ascii	"Status\000"
.LASF238:
	.ascii	"firstFreeSymbolTableIndex\000"
.LASF284:
	.ascii	"prvProcessCommand\000"
.LASF379:
	.ascii	"sd_radio_notification_cfg_set\000"
.LASF304:
	.ascii	"eventSize\000"
.LASF200:
	.ascii	"long long int\000"
.LASF327:
	.ascii	"vTraceSetFilterGroup\000"
.LASF171:
	.ascii	"__mbstate_s\000"
.LASF195:
	.ascii	"va_list\000"
.LASF348:
	.ascii	"vTraceInstanceFinishedNext\000"
.LASF424:
	.ascii	"power_mode\000"
.LASF123:
	.ascii	"__locale_s\000"
.LASF443:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_applicationLeithe\\TraceRecorder\\trcStrea"
	.ascii	"mingRecorder.c\000"
.LASF109:
	.ascii	"MaxNumDownBuffers\000"
.LASF115:
	.ascii	"SizeOfBuffer\000"
.LASF299:
	.ascii	"nStrWords\000"
.LASF252:
	.ascii	"timestampFrequency\000"
.LASF271:
	.ascii	"bytesToTransfer\000"
.LASF124:
	.ascii	"__category\000"
.LASF58:
	.ascii	"hfclk\000"
.LASF202:
	.ascii	"ITM_RxBuffer\000"
.LASF207:
	.ascii	"_SEGGER_RTT\000"
.LASF417:
	.ascii	"ram_powerset\000"
.LASF345:
	.ascii	"frequency\000"
.LASF170:
	.ascii	"date_time_format\000"
.LASF415:
	.ascii	"ram_powerclr\000"
.LASF52:
	.ascii	"nrf_radio_request_t\000"
.LASF316:
	.ascii	"prvTraceStoreEvent1\000"
.LASF315:
	.ascii	"prvTraceStoreEvent2\000"
.LASF314:
	.ascii	"prvTraceStoreEvent3\000"
.LASF274:
	.ascii	"count\000"
.LASF306:
	.ascii	"event\000"
.LASF419:
	.ascii	"threshold\000"
.LASF34:
	.ascii	"checksumLSB\000"
.LASF112:
	.ascii	"SEGGER_RTT_BUFFER_DOWN\000"
.LASF235:
	.ascii	"ObjectDataTable\000"
.LASF70:
	.ascii	"SD_FLASH_PAGE_ERASE\000"
.LASF10:
	.ascii	"unsigned int\000"
.LASF266:
	.ascii	"prvPagedEventBufferGetWritePointer\000"
.LASF94:
	.ascii	"SD_CLOCK_HFCLK_REQUEST\000"
.LASF338:
	.ascii	"vTraceStoreISRBegin\000"
.LASF240:
	.ascii	"firstFreeObjectDataTableIndex\000"
.LASF410:
	.ascii	"gpregret_msk\000"
.LASF155:
	.ascii	"p_sign_posn\000"
.LASF285:
	.ascii	"prvIsValidCommand\000"
.LASF57:
	.ascii	"nrf_radio_request_normal_t\000"
.LASF30:
	.ascii	"EventCount\000"
.LASF208:
	.ascii	"nrf_mutex_t\000"
.LASF75:
	.ascii	"SD_MUTEX_ACQUIRE\000"
.LASF192:
	.ascii	"__user_get_time_of_day\000"
.LASF289:
	.ascii	"lastEntryPtr\000"
.LASF232:
	.ascii	"largestEventType\000"
.LASF54:
	.ascii	"earliest\000"
.LASF399:
	.ascii	"sd_app_evt_wait\000"
.LASF411:
	.ascii	"sd_power_gpregret_set\000"
.LASF305:
	.ascii	"_tmpArray\000"
.LASF179:
	.ascii	"__RAL_codeset_utf8\000"
.LASF301:
	.ascii	"offset\000"
.LASF177:
	.ascii	"__RAL_c_locale\000"
.LASF409:
	.ascii	"sd_power_gpregret_clr\000"
.LASF102:
	.ascii	"SD_RADIO_REQUEST\000"
.LASF290:
	.ascii	"prvTraceSaveObjectData\000"
.LASF405:
	.ascii	"dcdc_mode\000"
.LASF130:
	.ascii	"__isctype\000"
.LASF355:
	.ascii	"prvGetTimestamp32\000"
.LASF430:
	.ascii	"p_buff\000"
.LASF217:
	.ascii	"__RAL_FILE\000"
.LASF244:
	.ascii	"SessionCounter\000"
.LASF261:
	.ascii	"MaxBytesTruncated\000"
.LASF93:
	.ascii	"SD_APP_EVT_WAIT\000"
.LASF412:
	.ascii	"sd_power_ram_power_get\000"
.LASF113:
	.ascii	"sName\000"
.LASF84:
	.ascii	"SD_POWER_POF_ENABLE\000"
.LASF385:
	.ascii	"sd_ppi_group_assign\000"
.LASF318:
	.ascii	"prvTraceStoreWarnings\000"
.LASF425:
	.ascii	"sd_power_reset_reason_clr\000"
.LASF215:
	.ascii	"FILE\000"
.LASF26:
	.ascii	"param1\000"
.LASF225:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF28:
	.ascii	"param3\000"
.LASF32:
	.ascii	"param4\000"
.LASF33:
	.ascii	"param5\000"
.LASF339:
	.ascii	"handle\000"
.LASF308:
	.ascii	"data8\000"
.LASF286:
	.ascii	"checksum\000"
.LASF56:
	.ascii	"nrf_radio_request_earliest_t\000"
.LASF209:
	.ascii	"nrf_radio_signal_callback_return_param_t\000"
.LASF41:
	.ascii	"soc_ecb_ciphertext_t\000"
.LASF188:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF162:
	.ascii	"int_n_sign_posn\000"
.LASF69:
	.ascii	"SD_PPI_GROUP_GET\000"
.LASF65:
	.ascii	"SD_PPI_CHANNEL_ASSIGN\000"
.LASF254:
	.ascii	"TotalBytesRemaining_LowWaterMark\000"
.LASF436:
	.ascii	"sd_mutex_release\000"
.LASF434:
	.ascii	"sd_rand_application_pool_capacity_get\000"
.LASF369:
	.ascii	"size\000"
.LASF418:
	.ascii	"sd_power_pof_threshold_set\000"
.LASF201:
	.ascii	"long long unsigned int\000"
.LASF47:
	.ascii	"params\000"
.LASF408:
	.ascii	"p_gpregret\000"
.LASF86:
	.ascii	"SD_POWER_RAM_POWER_SET\000"
.LASF431:
	.ascii	"length\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF383:
	.ascii	"group_num\000"
.LASF87:
	.ascii	"SD_POWER_RAM_POWER_CLR\000"
.LASF206:
	.ascii	"SEGGER_RTT_CB\000"
.LASF90:
	.ascii	"SD_POWER_GPREGRET_CLR\000"
.LASF354:
	.ascii	"p_request\000"
.LASF280:
	.ascii	"prvPagedEventBufferInit\000"
.LASF312:
	.ascii	"prvTraceStoreEvent\000"
.LASF319:
	.ascii	"errStr\000"
.LASF278:
	.ascii	"prvAllocateBufferPage\000"
.LASF392:
	.ascii	"task_endpoint\000"
.LASF279:
	.ascii	"prevPage\000"
.LASF92:
	.ascii	"SD_POWER_DCDC_MODE_SET\000"
.LASF441:
	.ascii	"__get_PRIMASK\000"
.LASF15:
	.ascii	"pSymbolTableBufferUINT8\000"
.LASF74:
	.ascii	"SD_MUTEX_NEW\000"
.LASF80:
	.ascii	"SD_POWER_MODE_SET\000"
.LASF283:
	.ascii	"prvTraceWarning\000"
.LASF16:
	.ascii	"version\000"
.LASF61:
	.ascii	"timeout_us\000"
.LASF46:
	.ascii	"callback_action\000"
.LASF141:
	.ascii	"grouping\000"
.LASF35:
	.ascii	"checksumMSB\000"
.LASF246:
	.ascii	"PSFEndianessIdentifier\000"
.LASF44:
	.ascii	"soc_ecb_key_t\000"
.LASF250:
	.ascii	"isPendingContextSwitch\000"
.LASF329:
	.ascii	"vTraceSetFilterMask\000"
.LASF356:
	.ascii	"sd_radio_session_close\000"
.LASF300:
	.ascii	"nArgs\000"
.LASF164:
	.ascii	"abbrev_day_names\000"
.LASF204:
	.ascii	"traceString\000"
.LASF397:
	.ascii	"sd_ppi_channel_enable_get\000"
.LASF260:
	.ascii	"LongestSymbolName\000"
.LASF85:
	.ascii	"SD_POWER_POF_THRESHOLD_SET\000"
.LASF180:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF437:
	.ascii	"p_mutex\000"
.LASF140:
	.ascii	"thousands_sep\000"
.LASF224:
	.ascii	"_vectors\000"
.LASF423:
	.ascii	"sd_power_mode_set\000"
.LASF205:
	.ascii	"traceHandle\000"
.LASF253:
	.ascii	"DroppedEventCounter\000"
.LASF131:
	.ascii	"__toupper\000"
.LASF394:
	.ascii	"channel_enable_clr_msk\000"
.LASF126:
	.ascii	"name\000"
.LASF343:
	.ascii	"xTraceRegisterString\000"
.LASF150:
	.ascii	"frac_digits\000"
.LASF31:
	.ascii	"cmdCode\000"
.LASF303:
	.ascii	"bytesTruncated\000"
.LASF143:
	.ascii	"currency_symbol\000"
.LASF8:
	.ascii	"pObjectDataTableBufferUINT8\000"
.LASF220:
	.ascii	"stderr\000"
.LASF198:
	.ascii	"short int\000"
.LASF256:
	.ascii	"PageInfo\000"
.LASF239:
	.ascii	"objectDataTable\000"
.LASF50:
	.ascii	"length_us\000"
.LASF172:
	.ascii	"__state\000"
.LASF62:
	.ascii	"SD_PPI_CHANNEL_ENABLE_GET\000"
.LASF237:
	.ascii	"symbolTable\000"
.LASF136:
	.ascii	"__wctomb\000"
.LASF324:
	.ascii	"prvSetRecorderEnabled\000"
.LASF29:
	.ascii	"EventID\000"
.LASF370:
	.ascii	"sd_temp_get\000"
.LASF320:
	.ascii	"prvTraceStoreHeader\000"
.LASF377:
	.ascii	"sd_ecb_block_encrypt\000"
.LASF163:
	.ascii	"day_names\000"
.LASF189:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF117:
	.ascii	"RdOff\000"
.LASF161:
	.ascii	"int_p_sign_posn\000"
.LASF322:
	.ascii	"prvTraceStoreObjectDataTable\000"
.LASF353:
	.ascii	"sd_radio_request\000"
.LASF333:
	.ascii	"vTraceClearError\000"
.LASF133:
	.ascii	"__iswctype\000"
.LASF66:
	.ascii	"SD_PPI_GROUP_TASK_ENABLE\000"
.LASF14:
	.ascii	"pSymbolTableBufferUINT32\000"
.LASF111:
	.ascii	"SEGGER_RTT_BUFFER_UP\000"
.LASF181:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF258:
	.ascii	"NoRoomForSymbol\000"
.LASF337:
	.ascii	"isTaskSwitchRequired\000"
.LASF89:
	.ascii	"SD_POWER_GPREGRET_SET\000"
.LASF413:
	.ascii	"p_ram_power\000"
.LASF340:
	.ascii	"xTraceSetISRProperties\000"
.LASF76:
	.ascii	"SD_MUTEX_RELEASE\000"
.LASF97:
	.ascii	"SD_RADIO_NOTIFICATION_CFG_SET\000"
.LASF390:
	.ascii	"channel_num\000"
.LASF9:
	.ascii	"uint32_t\000"
.LASF36:
	.ascii	"__irq_masks\000"
.LASF13:
	.ascii	"SymbolTableBuffer\000"
.LASF73:
	.ascii	"SD_PROTECTED_REGISTER_WRITE\000"
.LASF242:
	.ascii	"ISR_stack_index\000"
.LASF346:
	.ascii	"vTraceStoreKernelObjectName\000"
.LASF190:
	.ascii	"__RAL_data_empty_string\000"
.LASF71:
	.ascii	"SD_FLASH_WRITE\000"
.LASF236:
	.ascii	"PageType\000"
.LASF2:
	.ascii	"WritePointer\000"
.LASF151:
	.ascii	"p_cs_precedes\000"
.LASF17:
	.ascii	"platform\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF219:
	.ascii	"stdout\000"
.LASF23:
	.ascii	"base\000"
.LASF72:
	.ascii	"SD_FLASH_PROTECT\000"
.LASF68:
	.ascii	"SD_PPI_GROUP_ASSIGN\000"
.LASF433:
	.ascii	"p_bytes_available\000"
.LASF407:
	.ascii	"gpregret_id\000"
.LASF78:
	.ascii	"SD_RAND_APPLICATION_BYTES_AVAILABLE_GET\000"
.LASF445:
	.ascii	"prvTraceStoreTSConfig\000"
.LASF18:
	.ascii	"options\000"
.LASF311:
	.ascii	"prvTraceStoreStringEvent\000"
.LASF83:
	.ascii	"SD_POWER_RESET_REASON_CLR\000"
.LASF186:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF228:
	.ascii	"TracealyzerCommandType\000"
.LASF101:
	.ascii	"SD_RADIO_SESSION_CLOSE\000"
.LASF120:
	.ascii	"next\000"
.LASF24:
	.ascii	"data\000"
.LASF152:
	.ascii	"p_sep_by_space\000"
.LASF389:
	.ascii	"sd_ppi_channel_assign\000"
.LASF400:
	.ascii	"sd_clock_hfclk_is_running\000"
.LASF294:
	.ascii	"ptrAddress\000"
.LASF116:
	.ascii	"WrOff\000"
.LASF325:
	.ascii	"isEnabled\000"
.LASF442:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -fomit-frame-poi"
	.ascii	"nter -fno-dwarf2-cfi-asm -fno-builtin -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF248:
	.ascii	"eventCounter\000"
.LASF182:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF432:
	.ascii	"sd_rand_application_bytes_available_get\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
