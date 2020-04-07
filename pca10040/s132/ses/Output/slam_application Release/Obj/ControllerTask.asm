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
	.file	"ControllerTask.c"
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
.LFB153:
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
.LFE153:
	.size	sd_mutex_new, .-sd_mutex_new
	.section	.text.sd_mutex_acquire,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_mutex_acquire, %function
sd_mutex_acquire:
.LFB154:
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
.LFE154:
	.size	sd_mutex_acquire, .-sd_mutex_acquire
	.section	.text.sd_mutex_release,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_mutex_release, %function
sd_mutex_release:
.LFB155:
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
.LFE155:
	.size	sd_mutex_release, .-sd_mutex_release
	.section	.text.sd_rand_application_pool_capacity_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_rand_application_pool_capacity_get, %function
sd_rand_application_pool_capacity_get:
.LFB156:
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
.LFE156:
	.size	sd_rand_application_pool_capacity_get, .-sd_rand_application_pool_capacity_get
	.section	.text.sd_rand_application_bytes_available_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_rand_application_bytes_available_get, %function
sd_rand_application_bytes_available_get:
.LFB157:
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
.LFE157:
	.size	sd_rand_application_bytes_available_get, .-sd_rand_application_bytes_available_get
	.section	.text.sd_rand_application_vector_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_rand_application_vector_get, %function
sd_rand_application_vector_get:
.LFB158:
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
.LFE158:
	.size	sd_rand_application_vector_get, .-sd_rand_application_vector_get
	.section	.text.sd_power_reset_reason_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_reset_reason_get, %function
sd_power_reset_reason_get:
.LFB159:
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
.LFE159:
	.size	sd_power_reset_reason_get, .-sd_power_reset_reason_get
	.section	.text.sd_power_reset_reason_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_reset_reason_clr, %function
sd_power_reset_reason_clr:
.LFB160:
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
.LFE160:
	.size	sd_power_reset_reason_clr, .-sd_power_reset_reason_clr
	.section	.text.sd_power_mode_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_mode_set, %function
sd_power_mode_set:
.LFB161:
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
.LFE161:
	.size	sd_power_mode_set, .-sd_power_mode_set
	.section	.text.sd_power_system_off,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_system_off, %function
sd_power_system_off:
.LFB162:
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
.LFE162:
	.size	sd_power_system_off, .-sd_power_system_off
	.section	.text.sd_power_pof_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_pof_enable, %function
sd_power_pof_enable:
.LFB163:
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
.LFE163:
	.size	sd_power_pof_enable, .-sd_power_pof_enable
	.section	.text.sd_power_pof_threshold_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_pof_threshold_set, %function
sd_power_pof_threshold_set:
.LFB164:
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
.LFE164:
	.size	sd_power_pof_threshold_set, .-sd_power_pof_threshold_set
	.section	.text.sd_power_ram_power_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_ram_power_set, %function
sd_power_ram_power_set:
.LFB165:
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
.LFE165:
	.size	sd_power_ram_power_set, .-sd_power_ram_power_set
	.section	.text.sd_power_ram_power_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_ram_power_clr, %function
sd_power_ram_power_clr:
.LFB166:
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
.LFE166:
	.size	sd_power_ram_power_clr, .-sd_power_ram_power_clr
	.section	.text.sd_power_ram_power_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_ram_power_get, %function
sd_power_ram_power_get:
.LFB167:
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
.LFE167:
	.size	sd_power_ram_power_get, .-sd_power_ram_power_get
	.section	.text.sd_power_gpregret_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_gpregret_set, %function
sd_power_gpregret_set:
.LFB168:
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
.LFE168:
	.size	sd_power_gpregret_set, .-sd_power_gpregret_set
	.section	.text.sd_power_gpregret_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_gpregret_clr, %function
sd_power_gpregret_clr:
.LFB169:
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
.LFE169:
	.size	sd_power_gpregret_clr, .-sd_power_gpregret_clr
	.section	.text.sd_power_gpregret_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_gpregret_get, %function
sd_power_gpregret_get:
.LFB170:
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
.LFE170:
	.size	sd_power_gpregret_get, .-sd_power_gpregret_get
	.section	.text.sd_power_dcdc_mode_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_power_dcdc_mode_set, %function
sd_power_dcdc_mode_set:
.LFB171:
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
.LFE171:
	.size	sd_power_dcdc_mode_set, .-sd_power_dcdc_mode_set
	.section	.text.sd_clock_hfclk_request,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_clock_hfclk_request, %function
sd_clock_hfclk_request:
.LFB172:
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
.LFE172:
	.size	sd_clock_hfclk_request, .-sd_clock_hfclk_request
	.section	.text.sd_clock_hfclk_release,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_clock_hfclk_release, %function
sd_clock_hfclk_release:
.LFB173:
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
.LFE173:
	.size	sd_clock_hfclk_release, .-sd_clock_hfclk_release
	.section	.text.sd_clock_hfclk_is_running,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_clock_hfclk_is_running, %function
sd_clock_hfclk_is_running:
.LFB174:
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
.LFE174:
	.size	sd_clock_hfclk_is_running, .-sd_clock_hfclk_is_running
	.section	.text.sd_app_evt_wait,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_app_evt_wait, %function
sd_app_evt_wait:
.LFB175:
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
.LFE175:
	.size	sd_app_evt_wait, .-sd_app_evt_wait
	.section	.text.sd_ppi_channel_enable_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_channel_enable_get, %function
sd_ppi_channel_enable_get:
.LFB176:
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
.LFE176:
	.size	sd_ppi_channel_enable_get, .-sd_ppi_channel_enable_get
	.section	.text.sd_ppi_channel_enable_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_channel_enable_set, %function
sd_ppi_channel_enable_set:
.LFB177:
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
.LFE177:
	.size	sd_ppi_channel_enable_set, .-sd_ppi_channel_enable_set
	.section	.text.sd_ppi_channel_enable_clr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_channel_enable_clr, %function
sd_ppi_channel_enable_clr:
.LFB178:
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
.LFE178:
	.size	sd_ppi_channel_enable_clr, .-sd_ppi_channel_enable_clr
	.section	.text.sd_ppi_channel_assign,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_channel_assign, %function
sd_ppi_channel_assign:
.LFB179:
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
.LFE179:
	.size	sd_ppi_channel_assign, .-sd_ppi_channel_assign
	.section	.text.sd_ppi_group_task_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_group_task_enable, %function
sd_ppi_group_task_enable:
.LFB180:
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
.LFE180:
	.size	sd_ppi_group_task_enable, .-sd_ppi_group_task_enable
	.section	.text.sd_ppi_group_task_disable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_group_task_disable, %function
sd_ppi_group_task_disable:
.LFB181:
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
.LFE181:
	.size	sd_ppi_group_task_disable, .-sd_ppi_group_task_disable
	.section	.text.sd_ppi_group_assign,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_group_assign, %function
sd_ppi_group_assign:
.LFB182:
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
.LFE182:
	.size	sd_ppi_group_assign, .-sd_ppi_group_assign
	.section	.text.sd_ppi_group_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ppi_group_get, %function
sd_ppi_group_get:
.LFB183:
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
.LFE183:
	.size	sd_ppi_group_get, .-sd_ppi_group_get
	.section	.text.sd_radio_notification_cfg_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_radio_notification_cfg_set, %function
sd_radio_notification_cfg_set:
.LFB184:
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
.LFE184:
	.size	sd_radio_notification_cfg_set, .-sd_radio_notification_cfg_set
	.section	.text.sd_ecb_block_encrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ecb_block_encrypt, %function
sd_ecb_block_encrypt:
.LFB185:
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
.LFE185:
	.size	sd_ecb_block_encrypt, .-sd_ecb_block_encrypt
	.section	.text.sd_ecb_blocks_encrypt,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_ecb_blocks_encrypt, %function
sd_ecb_blocks_encrypt:
.LFB186:
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
.LFE186:
	.size	sd_ecb_blocks_encrypt, .-sd_ecb_blocks_encrypt
	.section	.text.sd_evt_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_evt_get, %function
sd_evt_get:
.LFB187:
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
.LFE187:
	.size	sd_evt_get, .-sd_evt_get
	.section	.text.sd_temp_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_temp_get, %function
sd_temp_get:
.LFB188:
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
.LFE188:
	.size	sd_temp_get, .-sd_temp_get
	.section	.text.sd_flash_write,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_flash_write, %function
sd_flash_write:
.LFB189:
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
.LFE189:
	.size	sd_flash_write, .-sd_flash_write
	.section	.text.sd_flash_page_erase,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_flash_page_erase, %function
sd_flash_page_erase:
.LFB190:
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
.LFE190:
	.size	sd_flash_page_erase, .-sd_flash_page_erase
	.section	.text.sd_flash_protect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_flash_protect, %function
sd_flash_protect:
.LFB191:
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
.LFE191:
	.size	sd_flash_protect, .-sd_flash_protect
	.section	.text.sd_radio_session_open,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_radio_session_open, %function
sd_radio_session_open:
.LFB192:
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
.LFE192:
	.size	sd_radio_session_open, .-sd_radio_session_open
	.section	.text.sd_radio_session_close,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_radio_session_close, %function
sd_radio_session_close:
.LFB193:
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
.LFE193:
	.size	sd_radio_session_close, .-sd_radio_session_close
	.section	.text.sd_radio_request,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_radio_request, %function
sd_radio_request:
.LFB194:
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
.LFE194:
	.size	sd_radio_request, .-sd_radio_request
	.section	.text.sd_protected_register_write,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_protected_register_write, %function
sd_protected_register_write:
.LFB195:
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
.LFE195:
	.size	sd_protected_register_write, .-sd_protected_register_write
	.section .rodata
	.align	2
.LC0:
	.ascii	"Tx:%i Ty:%i\000"
	.global	__aeabi_f2d
	.global	__aeabi_d2f
	.global	__aeabi_dcmplt
	.global	__aeabi_dcmpge
	.align	2
.LC1:
	.ascii	"HEADING is more the 90 degrees wrong stopping contr"
	.ascii	"oller\000"
	.global	__aeabi_dcmpgt
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_dadd
	.align	2
.LC2:
	.ascii	"controller sending idle\000"
	.section	.text.vMainPoseControllerTask,"ax",%progbits
	.align	1
	.global	vMainPoseControllerTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vMainPoseControllerTask, %function
vMainPoseControllerTask:
.LFB292:
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\software\\ControllerTask.c"
	.loc 2 42 50
	@ args = 0, pretend = 0, frame = 280
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI0:
	sub	sp, sp, #284
.LCFI1:
	add	r3, sp, #4
	str	r0, [r3]
	.loc 2 44 23
	mov	r3, #0
	str	r3, [sp, #72]	@ float
	mov	r3, #0
	str	r3, [sp, #76]	@ float
	.loc 2 45 23
	mov	r3, #0
	str	r3, [sp, #64]	@ float
	mov	r3, #0
	str	r3, [sp, #68]	@ float
	.loc 2 46 11
	ldr	r3, .L150
	str	r3, [sp, #196]	@ float
	.loc 2 47 13
	movs	r3, #0
	strb	r3, [sp, #63]
	.loc 2 49 13
	movs	r3, #90
	strb	r3, [sp, #279]
	.loc 2 52 11
	ldr	r3, .L150+4
	str	r3, [sp, #192]	@ float
	.loc 2 53 11
	ldr	r3, .L150+8
	str	r3, [sp, #188]	@ float
	.loc 2 54 11
	ldr	r3, .L150+12
	str	r3, [sp, #184]	@ float
	.loc 2 55 11
	mov	r3, #1065353216
	str	r3, [sp, #180]	@ float
	.loc 2 56 11
	ldr	r3, .L150+16
	str	r3, [sp, #272]	@ float
	.loc 2 57 11
	ldr	r3, .L150+20
	str	r3, [sp, #268]	@ float
	.loc 2 60 11
	mov	r3, #0
	str	r3, [sp, #176]	@ float
	.loc 2 61 13
	movs	r3, #0
	strh	r3, [sp, #174]	@ movhi
	.loc 2 62 13
	movs	r3, #0
	strh	r3, [sp, #172]	@ movhi
	.loc 2 65 11
	mov	r3, #0
	str	r3, [sp, #264]	@ float
	.loc 2 66 11
	mov	r3, #0
	str	r3, [sp, #56]	@ float
	.loc 2 67 11
	mov	r3, #0
	str	r3, [sp, #52]	@ float
	.loc 2 68 11
	mov	r3, #0
	str	r3, [sp, #260]	@ float
	.loc 2 69 11
	mov	r3, #0
	str	r3, [sp, #256]	@ float
	.loc 2 70 11
	mov	r3, #0
	str	r3, [sp, #252]	@ float
	.loc 2 72 11
	mov	r3, #0
	str	r3, [sp, #168]	@ float
	.loc 2 73 11
	mov	r3, #0
	str	r3, [sp, #164]	@ float
	.loc 2 74 11
	mov	r3, #0
	str	r3, [sp, #160]	@ float
	.loc 2 76 11
	mov	r3, #0
	str	r3, [sp, #248]	@ float
	.loc 2 77 11
	mov	r3, #0
	str	r3, [sp, #244]	@ float
	.loc 2 79 13
	movs	r3, #0
	strb	r3, [sp, #243]
	.loc 2 80 22
	movs	r3, #0
	strh	r3, [sp, #50]	@ movhi
	.loc 2 81 22
	movs	r3, #0
	strh	r3, [sp, #48]	@ movhi
	.loc 2 83 13
	movs	r3, #0
	strb	r3, [sp, #242]
	.loc 2 86 13
	movs	r3, #0
	strb	r3, [sp, #241]
	.loc 2 87 11
	mov	r3, #0
	str	r3, [sp, #236]	@ float
	.loc 2 88 11
	mov	r3, #0
	str	r3, [sp, #156]	@ float
	.loc 2 89 11
	mov	r3, #0
	str	r3, [sp, #152]	@ float
	.loc 2 90 11
	mov	r3, #0
	str	r3, [sp, #232]	@ float
	.loc 2 91 11
	mov	r3, #0
	str	r3, [sp, #228]	@ float
	.loc 2 92 11
	mov	r3, #0
	str	r3, [sp, #224]	@ float
	.loc 2 94 13
	movs	r3, #0
	strb	r3, [sp, #219]
	.loc 2 96 13
	movs	r3, #0
	strb	r3, [sp, #218]
	.loc 2 97 13
	movs	r3, #10
	strb	r3, [sp, #217]
	.loc 2 98 13
	movs	r3, #5
	strb	r3, [sp, #216]
	.loc 2 99 13
	movs	r3, #0
	strb	r3, [sp, #215]
	.loc 2 100 13
	movs	r3, #0
	strb	r3, [sp, #151]
	.loc 2 101 13
	movs	r3, #0
	strb	r3, [sp, #214]
	.loc 2 102 13
	movs	r3, #0
	strb	r3, [sp, #213]
	.loc 2 103 13
	movs	r3, #40
	strb	r3, [sp, #150]
	.loc 2 104 13
	movs	r3, #0
	strb	r3, [sp, #149]
	.loc 2 106 11
	mov	r3, #0
	str	r3, [sp, #144]	@ float
	.loc 2 107 11
	mov	r3, #0
	str	r3, [sp, #140]	@ float
	.loc 2 109 13
	movs	r3, #0
	strb	r3, [sp, #139]
.L115:
	.loc 2 113 13
	ldr	r3, .L150+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 113 12
	cmp	r3, #0
	beq	.L45
.LBB2:
	.loc 2 114 13
	ldr	r3, .L150+28
	ldr	r3, [r3]
	movs	r1, #1
	mov	r0, r3
	bl	xQueueSemaphoreTake
	.loc 2 116 34
	add	r3, sp, #20
	mov	r0, r3
	bl	encoder_get_ticks
	.loc 2 117 36
	add	r3, sp, #20
	ldr	r3, [r3]
	.loc 2 117 29
	sxth	r2, r3
	ldr	r3, .L150+32
	strh	r2, [r3]	@ movhi
	.loc 2 118 37
	add	r3, sp, #20
	ldr	r3, [r3, #4]
	.loc 2 118 30
	sxth	r2, r3
	ldr	r3, .L150+36
	strh	r2, [r3]	@ movhi
	.loc 2 119 13
	ldr	r3, .L150+28
	ldr	r0, [r3]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	bl	xQueueGenericSend
	.loc 2 120 17
	ldr	r3, .L150+40
	ldr	r3, [r3]
	mov	r1, #-1
	mov	r0, r3
	bl	xQueueSemaphoreTake
	mov	r3, r0
	.loc 2 120 16
	cmp	r3, #1
	bne	.L115
.LBB3:
	.loc 2 122 17
	ldr	r3, .L150+44
	ldr	r3, [r3]
	mov	r1, #-1
	mov	r0, r3
	bl	xQueueSemaphoreTake
	.loc 2 123 26
	ldr	r3, .L150+48
	ldr	r3, [r3]	@ float
	str	r3, [sp, #176]	@ float
	.loc 2 124 22
	ldr	r3, .L150+52
	ldrh	r3, [r3]	@ movhi
	strh	r3, [sp, #174]	@ movhi
	.loc 2 125 22
	ldr	r3, .L150+56
	ldrh	r3, [r3]	@ movhi
	strh	r3, [sp, #172]	@ movhi
	.loc 2 126 23
	ldr	r3, .L150+60
	ldr	r3, [r3]	@ float
	str	r3, [sp, #144]	@ float
	.loc 2 127 24
	ldr	r3, .L150+64
	ldr	r3, [r3]	@ float
	str	r3, [sp, #140]	@ float
	.loc 2 128 17
	ldr	r3, .L150+44
	ldr	r0, [r3]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #0
	bl	xQueueGenericSend
	.loc 2 130 21
	ldr	r3, .L150+68
	ldr	r3, [r3]
	add	r1, sp, #72
	movs	r2, #0
	mov	r0, r3
	bl	xQueueReceive
	mov	r3, r0
	.loc 2 130 20
	cmp	r3, #1
	bne	.L47
.LBB4:
	.loc 2 132 45
	vldr.32	s15, [sp, #72]
	.loc 2 132 28
	vmov.f32	s14, #1.0e+1
	vmul.f32	s15, s15, s14
	vstr.32	s15, [sp, #256]
	.loc 2 133 45
	vldr.32	s15, [sp, #76]
	.loc 2 133 28
	vmov.f32	s14, #1.0e+1
	vmul.f32	s15, s15, s14
	vstr.32	s15, [sp, #252]
	.loc 2 134 35
	ldr	r3, [sp, #176]	@ float
	str	r3, [sp, #232]	@ float
	.loc 2 135 31
	ldrsh	r3, [sp, #174]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #228]
	.loc 2 136 31
	ldrsh	r3, [sp, #172]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #224]
	.loc 2 137 29
	ldrb	r3, [sp, #214]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #214]
	.loc 2 138 30
	movs	r3, #1
	strb	r3, [sp, #213]
	.loc 2 139 36
	movs	r3, #0
	strb	r3, [sp, #241]
	.loc 2 140 33
	movs	r3, #0
	strb	r3, [sp, #243]
	.loc 2 141 36
	movs	r3, #0
	strb	r3, [sp, #219]
	.loc 2 142 21
	vldr.32	s15, [sp, #256]
	vcvt.s32.f32	s14, s15
	vldr.32	s15, [sp, #252]
	vcvt.s32.f32	s15, s15
	add	r0, sp, #28
	vmov	r3, s15	@ int
	vmov	r2, s14	@ int
	ldr	r1, .L150+72
	bl	sprintf
	.loc 2 143 21
	add	r3, sp, #28
	mov	r1, r3
	movs	r0, #4
	bl	display_text_on_line
	b	.L151
.L152:
	.align	2
.L150:
	.word	1097859072
	.word	1043511490
	.word	1024391733
	.word	1128792064
	.word	1133903872
	.word	1120403456
	.word	gHandshook
	.word	xTickMutex
	.word	gLeftWheelTicks
	.word	gRightWheelTicks
	.word	xControllerBSem
	.word	xPoseMutex
	.word	gTheta_hat
	.word	gX_hat
	.word	gY_hat
	.word	gLeft
	.word	gRight
	.word	poseControllerQ
	.word	.LC0
.L151:
.L47:
.LBE4:
	.loc 2 145 26
	ldr	r3, [sp, #264]	@ float
	str	r3, [sp, #156]	@ float
	.loc 2 146 48
	ldrsh	r3, [sp, #174]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s14, [sp, #256]
	vsub.f32	s14, s14, s15
	.loc 2 146 66
	ldrsh	r3, [sp, #174]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s13, [sp, #256]
	vsub.f32	s15, s13, s15
	.loc 2 146 56
	vmul.f32	s14, s14, s15
	.loc 2 146 84
	ldrsh	r3, [sp, #172]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s13, [sp, #252]
	vsub.f32	s13, s13, s15
	.loc 2 146 102
	ldrsh	r3, [sp, #172]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vldr.32	s12, [sp, #252]
	vsub.f32	s15, s12, s15
	.loc 2 146 92
	vmul.f32	s15, s13, s15
	.loc 2 146 74
	vadd.f32	s15, s14, s15
	.loc 2 146 35
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL0:
	mov	r2, r0
	mov	r3, r1
	vmov	d0, r2, r3
	bl	sqrt
	vmov	r2, r3, d0
	.loc 2 146 26
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
.LVL1:
	mov	r3, r0	@ float
	str	r3, [sp, #264]	@ float
	.loc 2 148 32
	ldrsh	r3, [sp, #174]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	.loc 2 148 23
	vldr.32	s14, [sp, #256]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [sp, #168]
	.loc 2 149 32
	ldrsh	r3, [sp, #172]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	.loc 2 149 23
	vldr.32	s14, [sp, #252]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [sp, #164]
	.loc 2 150 30
	ldr	r0, [sp, #164]	@ float
	bl	__aeabi_f2d
.LVL2:
	mov	r4, r0
	mov	r5, r1
	ldr	r0, [sp, #168]	@ float
	bl	__aeabi_f2d
.LVL3:
	mov	r2, r0
	mov	r3, r1
	vmov	d1, r2, r3
	vmov	d0, r4, r5
	bl	atan2
	vmov	r2, r3, d0
	.loc 2 150 28
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
.LVL4:
	mov	r3, r0	@ float
	str	r3, [sp, #160]	@ float
	.loc 2 152 31
	ldr	r3, [sp, #56]	@ float
	str	r3, [sp, #152]	@ float
	.loc 2 153 40
	vldr.32	s14, [sp, #160]
	vldr.32	s15, [sp, #176]
	vsub.f32	s15, s14, s15
	.loc 2 153 27
	vstr.32	s15, [sp, #56]
	.loc 2 154 17
	add	r3, sp, #56
	mov	r0, r3
	bl	vFunc_Inf2pi
	.loc 2 155 39
	vldr.32	s14, [sp, #56]
	vldr.32	s15, [sp, #152]
	vsub.f32	s15, s14, s15
	.loc 2 155 26
	vstr.32	s15, [sp, #52]
	.loc 2 156 17
	add	r3, sp, #52
	mov	r0, r3
	bl	vFunc_Inf2pi
	.loc 2 157 26
	vldr.32	s15, [sp, #52]
	vmov.f32	s14, #2.5e+1
	vmul.f32	s15, s15, s14
	vstr.32	s15, [sp, #52]
	.loc 2 160 21
	ldr	r3, [sp, #56]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
.LVL5:
	mov	r2, r0
	mov	r3, r1
	vmov	d0, r2, r3
	bl	fabs
	.loc 2 160 37
	ldr	r0, [sp, #192]	@ float
	bl	__aeabi_f2d
.LVL6:
	.loc 2 163 21
	ldr	r3, [sp, #56]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
.LVL7:
	mov	r2, r0
	mov	r3, r1
	vmov	d0, r2, r3
	bl	fabs
	vmov	r4, r5, d0
	.loc 2 163 37
	ldr	r0, [sp, #188]	@ float
	bl	__aeabi_f2d
.LVL8:
	mov	r2, r0
	mov	r3, r1
	.loc 2 163 20
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmplt
.LVL9:
	mov	r3, r0
	cmp	r3, #0
	beq	.L48
	.loc 2 164 33
	movs	r3, #1
	strb	r3, [sp, #243]
	.loc 2 165 34
	mov	r3, #0
	str	r3, [sp, #260]	@ float
.L48:
	.loc 2 167 20
	ldr	r3, [sp, #56]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
.LVL10:
	mov	r2, r0
	mov	r3, r1
	vmov	d0, r2, r3
	bl	fabs
	vmov	r0, r1, d0
	.loc 2 167 19
	adr	r3, .L153
	ldrd	r2, [r3]
	bl	__aeabi_dcmpge
.LVL11:
	mov	r3, r0
	cmp	r3, #0
	beq	.L50
	.loc 2 167 48 discriminator 1
	ldrb	r3, [sp, #243]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L50
	.loc 2 168 25
	ldrb	r3, [sp, #241]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L50
	.loc 2 169 44
	movs	r3, #1
	strb	r3, [sp, #241]
	.loc 2 170 238
	ldr	r3, .L153+16
	ldrh	r3, [r3]
	.loc 2 170 249
	lsls	r3, r3, #16
	.loc 2 170 205
	orr	r3, r3, #3
	.loc 2 170 157
	ldr	r1, .L153+20
	mov	r0, r3
	bl	nrf_log_frontend_std_0
.L50:
	.loc 2 174 36
	vldr.32	s15, [sp, #56]
	vldr.32	s14, [sp, #152]
	vsub.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL12:
	.loc 2 174 20
	adr	r3, .L153
	ldrd	r2, [r3]
	bl	__aeabi_dcmpgt
.LVL13:
	mov	r3, r0
	cmp	r3, #0
	bne	.L52
	.loc 2 174 80 discriminator 1
	vldr.32	s15, [sp, #56]
	vldr.32	s14, [sp, #152]
	vsub.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL14:
	.loc 2 174 61 discriminator 1
	adr	r3, .L153+8
	ldrd	r2, [r3]
	bl	__aeabi_dcmplt
.LVL15:
	mov	r3, r0
	cmp	r3, #0
	beq	.L137
.L52:
	.loc 2 176 35
	ldr	r3, [sp, #264]	@ float
	str	r3, [sp, #236]	@ float
	.loc 2 177 24
	ldrb	r3, [sp, #213]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L56
	.loc 2 178 40
	movs	r3, #1
	strb	r3, [sp, #241]
	.loc 2 177 24
	b	.L56
.L137:
	.loc 2 181 57
	vldr.32	s14, [sp, #256]
	vldr.32	s15, [sp, #228]
	vsub.f32	s14, s14, s15
	.loc 2 181 80
	vldr.32	s13, [sp, #256]
	vldr.32	s15, [sp, #228]
	vsub.f32	s15, s13, s15
	.loc 2 181 70
	vmul.f32	s14, s14, s15
	.loc 2 181 103
	vldr.32	s13, [sp, #252]
	vldr.32	s15, [sp, #224]
	vsub.f32	s13, s13, s15
	.loc 2 181 126
	vldr.32	s12, [sp, #252]
	vldr.32	s15, [sp, #224]
	vsub.f32	s15, s12, s15
	.loc 2 181 116
	vmul.f32	s15, s13, s15
	.loc 2 181 93
	vadd.f32	s15, s14, s15
	.loc 2 181 44
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL16:
	mov	r2, r0
	mov	r3, r1
	vmov	d0, r2, r3
	bl	sqrt
	vmov	r2, r3, d0
	.loc 2 181 35
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
.LVL17:
	mov	r3, r0	@ float
	str	r3, [sp, #236]	@ float
.L56:
	.loc 2 184 23
	mov	r3, #1065353216
	str	r3, [sp, #208]	@ float
	.loc 2 185 23
	mov	r3, #1065353216
	str	r3, [sp, #204]	@ float
	.loc 2 186 20
	vldr.32	s15, [sp, #236]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L57
	.loc 2 186 82 discriminator 1
	vldr.32	s14, [sp, #268]
	vldr.32	s15, [sp, #272]
	vadd.f32	s15, s14, s15
	.loc 2 186 39 discriminator 1
	vldr.32	s14, [sp, #236]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L57
.LBB5:
	.loc 2 187 27
	ldr	r3, [sp, #268]	@ float
	str	r3, [sp, #132]	@ float
	.loc 2 188 27
	ldr	r3, [sp, #272]	@ float
	str	r3, [sp, #128]	@ float
	.loc 2 189 44
	vldr.32	s14, [sp, #236]
	vmov.f32	s13, #4.0e+0
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [sp, #268]
	.loc 2 190 60
	vldr.32	s15, [sp, #236]
	vmov.f32	s14, #3.0e+0
	vmul.f32	s14, s15, s14
	.loc 2 190 44
	vmov.f32	s13, #4.0e+0
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [sp, #272]
	.loc 2 191 39
	vldr.32	s13, [sp, #268]
	vldr.32	s14, [sp, #132]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [sp, #208]
	.loc 2 192 39
	vldr.32	s13, [sp, #272]
	vldr.32	s14, [sp, #128]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [sp, #204]
.LBE5:
	.loc 2 186 109
	b	.L60
.L57:
	.loc 2 194 44
	ldr	r3, .L153+24
	str	r3, [sp, #272]	@ float
	.loc 2 195 44
	ldr	r3, .L153+28
	str	r3, [sp, #268]	@ float
.L60:
	.loc 2 198 20
	vldr.32	s14, [sp, #264]
	vldr.32	s15, [sp, #196]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L61
	.loc 2 198 46 discriminator 1
	ldrb	r3, [sp, #241]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L61
	.loc 2 200 31
	movs	r3, #0
	strb	r3, [sp, #242]
	.loc 2 201 24
	ldrb	r3, [sp, #243]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L63
.LBB6:
	.loc 2 203 31
	vldr.32	s14, [sp, #236]
	vldr.32	s15, [sp, #264]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [sp, #88]
	.loc 2 206 28
	vldr.32	s15, [sp, #88]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	blt	.L64
	.loc 2 206 51 discriminator 1
	vldr.32	s14, [sp, #88]
	vldr.32	s15, [sp, #268]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bhi	.L64
.LBB7:
	.loc 2 207 32
	ldrb	r3, [sp, #215]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L67
	.loc 2 208 36
	vldr.32	s15, [sp, #88]
	vmov.f32	s14, #1.5e+1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L138
	.loc 2 209 56
	ldrb	r3, [sp, #217]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #217]
	b	.L70
.L138:
	.loc 2 211 57
	movs	r3, #1
	strb	r3, [sp, #215]
	.loc 2 212 55
	ldrb	r3, [sp, #217]
	adds	r3, r3, #10
	strb	r3, [sp, #279]
	b	.L70
.L67:
	.loc 2 214 39
	vldr.32	s15, [sp, #144]
	vcmp.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	beq	.L71
	.loc 2 214 51 discriminator 1
	vldr.32	s15, [sp, #140]
	vcmp.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L70
.L71:
	.loc 2 215 48
	ldrb	r3, [sp, #219]
	adds	r3, r3, #2
	strb	r3, [sp, #219]
.L70:
	.loc 2 217 68
	ldrb	r2, [sp, #217]	@ zero_extendqisi2
	ldrb	r3, [sp, #219]	@ zero_extendqisi2
	add	r3, r3, r2
	.loc 2 217 35
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #84]
	.loc 2 218 61
	vldr.32	s14, .L153+32
	vldr.32	s15, [sp, #84]
	vsub.f32	s15, s14, s15
	.loc 2 218 75
	vldr.32	s13, .L153+32
	vdiv.f32	s14, s15, s13
	.loc 2 218 103
	ldrb	r3, [sp, #279]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s15, [sp, #208]
	vmul.f32	s15, s13, s15
	.loc 2 218 82
	vmul.f32	s14, s14, s15
	.loc 2 218 125
	vldr.32	s15, [sp, #88]
	vmul.f32	s13, s14, s15
	.loc 2 218 144
	vldr.32	s15, [sp, #268]
	vdiv.f32	s14, s13, s15
	.loc 2 218 193
	ldrb	r2, [sp, #217]	@ zero_extendqisi2
	ldrb	r3, [sp, #219]	@ zero_extendqisi2
	add	r3, r3, r2
	.loc 2 218 170
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	.loc 2 218 51
	vadd.f32	s15, s14, s15
	vstr.32	s15, [sp, #220]
.LBE7:
	.loc 2 206 98
	b	.L72
.L64:
	.loc 2 222 33
	vldr.32	s14, [sp, #264]
	vldr.32	s15, [sp, #272]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L139
	.loc 2 223 32
	vldr.32	s15, [sp, #264]
	vldr.32	s14, .L153+36
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L140
	.loc 2 224 36
	vldr.32	s15, [sp, #144]
	vcmp.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	beq	.L77
	.loc 2 224 48 discriminator 1
	vldr.32	s15, [sp, #140]
	vcmp.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L78
.L77:
	.loc 2 225 52
	movs	r3, #2
	strb	r3, [sp, #219]
.L78:
	.loc 2 227 77
	ldrb	r2, [sp, #217]	@ zero_extendqisi2
	ldrb	r3, [sp, #219]	@ zero_extendqisi2
	add	r3, r3, r2
	.loc 2 227 55
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #220]
	b	.L72
.L140:
.LBB8:
	.loc 2 229 36
	vldr.32	s14, [sp, #156]
	vldr.32	s15, [sp, #264]
	vcmp.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bne	.L79
	.loc 2 230 52
	ldrb	r2, [sp, #217]
	ldrb	r3, [sp, #216]
	subs	r3, r2, r3
	strb	r3, [sp, #219]
	.loc 2 231 59
	ldrb	r3, [sp, #216]
	adds	r3, r3, #5
	strb	r3, [sp, #216]
.L79:
	.loc 2 233 78
	ldrb	r2, [sp, #216]	@ zero_extendqisi2
	ldrb	r3, [sp, #219]	@ zero_extendqisi2
	add	r3, r3, r2
	.loc 2 233 39
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #80]
	.loc 2 234 65
	vldr.32	s14, .L153+32
	vldr.32	s15, [sp, #80]
	vsub.f32	s15, s14, s15
	.loc 2 234 81
	vldr.32	s13, .L153+32
	vdiv.f32	s14, s15, s13
	.loc 2 234 109
	ldrb	r3, [sp, #279]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s13, s15
	vldr.32	s15, [sp, #204]
	vmul.f32	s15, s13, s15
	.loc 2 234 88
	vmul.f32	s14, s14, s15
	.loc 2 234 143
	vldr.32	s12, [sp, #264]
	vldr.32	s13, [sp, #272]
	vdiv.f32	s15, s12, s13
	.loc 2 234 131
	vmul.f32	s14, s14, s15
	.loc 2 234 197
	ldrb	r2, [sp, #216]	@ zero_extendqisi2
	ldrb	r3, [sp, #219]	@ zero_extendqisi2
	add	r3, r3, r2
	.loc 2 234 170
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	.loc 2 234 55
	vadd.f32	s15, s14, s15
	vstr.32	s15, [sp, #220]
	b	.L72
.L154:
	.align	3
.L153:
	.word	1413754136
	.word	1073291771
	.word	1413754136
	.word	-1074191877
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC1
	.word	1133903872
	.word	1120403456
	.word	1120403456
	.word	1112014848
.L139:
.LBE8:
	.loc 2 237 51
	ldrb	r3, [sp, #279]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.u32	s15, s15
	vstr.32	s15, [sp, #220]
.L72:
	.loc 2 241 66
	vldr.32	s14, [sp, #56]
	vldr.32	s15, [sp, #184]
	vmul.f32	s15, s14, s15
	.loc 2 241 56
	vldr.32	s14, [sp, #220]
	vsub.f32	s14, s14, s15
	.loc 2 241 88
	vldr.32	s13, [sp, #180]
	vldr.32	s15, [sp, #248]
	vmul.f32	s15, s13, s15
	.loc 2 241 78
	vsub.f32	s15, s14, s15
	.loc 2 241 32
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	sxth	r3, r3
	strh	r3, [sp, #50]	@ movhi
	.loc 2 242 66
	vldr.32	s14, [sp, #56]
	vldr.32	s15, [sp, #184]
	vmul.f32	s14, s14, s15
	.loc 2 242 56
	vldr.32	s15, [sp, #220]
	vadd.f32	s14, s14, s15
	.loc 2 242 88
	vldr.32	s13, [sp, #180]
	vldr.32	s15, [sp, #244]
	vmul.f32	s15, s13, s15
	.loc 2 242 78
	vadd.f32	s15, s14, s15
	.loc 2 242 32
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	sxth	r3, r3
	strh	r3, [sp, #48]	@ movhi
	.loc 2 244 38
	vldr.32	s15, [sp, #56]
	vldr.32	s14, [sp, #248]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [sp, #248]
	.loc 2 245 39
	vldr.32	s15, [sp, #56]
	vldr.32	s14, [sp, #244]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [sp, #244]
	.loc 2 249 38
	movs	r3, #1
	strb	r3, [sp, #63]
.LBE6:
	b	.L80
.L63:
.LBB9:
	.loc 2 253 54
	vldr.32	s14, [sp, #176]
	vldr.32	s15, [sp, #232]
	vsub.f32	s15, s14, s15
	.loc 2 253 31
	add	r3, sp, #16
	vstr.32	s15, [r3]
	.loc 2 254 54
	vldr.32	s14, [sp, #160]
	vldr.32	s15, [sp, #232]
	vsub.f32	s15, s14, s15
	.loc 2 254 31
	add	r3, sp, #12
	vstr.32	s15, [r3]
	.loc 2 255 25
	add	r3, sp, #12
	mov	r0, r3
	bl	vFunc_Inf2pi
	.loc 2 256 25
	add	r3, sp, #16
	mov	r0, r3
	bl	vFunc_Inf2pi
	.loc 2 257 31
	add	r3, sp, #12
	vldr.32	s15, [r3]
	vmov.f32	s14, #7.5e-1
	vmul.f32	s15, s15, s14
	vstr.32	s15, [sp, #124]
	.loc 2 258 54
	vldr.32	s14, [sp, #176]
	vldr.32	s15, [sp, #124]
	vsub.f32	s15, s14, s15
	.loc 2 258 31
	add	r3, sp, #8
	vstr.32	s15, [r3]
	.loc 2 259 25
	add	r3, sp, #8
	mov	r0, r3
	bl	vFunc_Inf2pi
	.loc 2 260 31
	ldr	r3, .L155
	str	r3, [sp, #120]	@ float
	.loc 2 261 31
	ldr	r3, .L155+4
	str	r3, [sp, #116]	@ float
	.loc 2 262 31
	ldr	r3, .L155+8
	str	r3, [sp, #112]	@ float
	.loc 2 264 31
	mov	r3, #0
	str	r3, [sp, #108]	@ float
	.loc 2 265 31
	mov	r3, #0
	str	r3, [sp, #104]	@ float
	.loc 2 266 31
	mov	r3, #0
	str	r3, [sp, #200]	@ float
	.loc 2 268 46
	add	r3, sp, #12
	ldr	r3, [r3]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
.LVL18:
	mov	r2, r0
	mov	r3, r1
	vmov	d0, r2, r3
	bl	fabs
	vmov	r0, r1, d0
	.loc 2 268 61
	mov	r2, #0
	ldr	r3, .L155+12
	bl	__aeabi_dmul
.LVL19:
	mov	r2, r0
	mov	r3, r1
	.loc 2 268 31
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
.LVL20:
	mov	r3, r0	@ float
	str	r3, [sp, #100]	@ float
	.loc 2 270 38
	ldr	r0, [sp, #260]	@ float
	bl	__aeabi_f2d
.LVL21:
	mov	r4, r0
	mov	r5, r1
	.loc 2 270 51
	ldr	r3, [sp, #56]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
.LVL22:
	mov	r2, #0
	ldr	r3, .L155+16
	bl	__aeabi_dmul
.LVL23:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 2 270 58
	mov	r2, #0
	ldr	r3, .L155+20
	bl	__aeabi_ddiv
.LVL24:
	mov	r2, r0
	mov	r3, r1
	.loc 2 270 38
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
.LVL25:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
.LVL26:
	mov	r3, r0	@ float
	str	r3, [sp, #260]	@ float
	.loc 2 272 42
	add	r3, sp, #16
	vldr.32	s15, [r3]
	.loc 2 272 28
	vldr.32	s14, [sp, #120]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [sp, #108]
	.loc 2 273 60
	vldr.32	s14, [sp, #108]
	vldr.32	s15, [sp, #100]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L141
	.loc 2 273 60 is_stmt 0 discriminator 1
	ldr	r3, [sp, #108]	@ float
	b	.L83
.L141:
	.loc 2 273 60 discriminator 2
	ldr	r3, [sp, #100]	@ float
.L83:
	.loc 2 273 28 is_stmt 1 discriminator 4
	str	r3, [sp, #108]	@ float
	.loc 2 274 39 discriminator 4
	vldr.32	s15, [sp, #100]
	vneg.f32	s15, s15
	.loc 2 274 72 discriminator 4
	vldr.32	s14, [sp, #108]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L142
	.loc 2 274 72 is_stmt 0 discriminator 1
	vldr.32	s15, [sp, #100]
	vneg.f32	s15, s15
	b	.L86
.L142:
	.loc 2 274 72 discriminator 2
	vldr.32	s15, [sp, #108]
.L86:
	.loc 2 274 28 is_stmt 1 discriminator 4
	vstr.32	s15, [sp, #108]
	.loc 2 277 28 discriminator 4
	vldr.32	s14, [sp, #116]
	vldr.32	s15, [sp, #260]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [sp, #104]
	.loc 2 278 50 discriminator 4
	vldr.32	s15, [sp, #104]
	vmov.f32	s14, #1.0e+1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L143
	.loc 2 278 50 is_stmt 0 discriminator 1
	ldr	r3, [sp, #104]	@ float
	b	.L89
.L143:
	.loc 2 278 50 discriminator 2
	ldr	r3, .L155+24
.L89:
	.loc 2 278 28 is_stmt 1 discriminator 4
	str	r3, [sp, #104]	@ float
	.loc 2 279 52 discriminator 4
	vldr.32	s15, [sp, #104]
	vmov.f32	s14, #-1.0e+1
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L144
	.loc 2 279 52 is_stmt 0 discriminator 1
	ldr	r3, .L155+28
	b	.L92
.L144:
	.loc 2 279 52 discriminator 2
	ldr	r3, [sp, #104]	@ float
.L92:
	.loc 2 279 28 is_stmt 1 discriminator 4
	str	r3, [sp, #104]	@ float
	.loc 2 282 28 discriminator 4
	add	r3, sp, #16
	ldr	r3, [r3]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
.LVL27:
	mov	r2, r0
	mov	r3, r1
	vmov	d0, r2, r3
	bl	fabs
	vmov	r4, r5, d0
	.loc 2 282 46 discriminator 4
	add	r3, sp, #12
	ldr	r3, [r3]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
.LVL28:
	mov	r2, #0
	ldr	r3, .L155+32
	bl	__aeabi_dmul
.LVL29:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	fabs
	vmov	r2, r3, d0
	.loc 2 282 27 discriminator 4
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmpgt
.LVL30:
	mov	r3, r0
	cmp	r3, #0
	beq	.L93
	.loc 2 283 32
	ldr	r0, [sp, #112]	@ float
	bl	__aeabi_f2d
.LVL31:
	mov	r4, r0
	mov	r5, r1
	.loc 2 283 35
	add	r3, sp, #8
	ldr	r3, [r3]	@ float
	mov	r0, r3	@ float
	bl	__aeabi_f2d
.LVL32:
	mov	r2, r0
	mov	r3, r1
	vmov	d0, r2, r3
	bl	fabs
	vmov	r2, r3, d0
	.loc 2 283 32
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dmul
.LVL33:
	mov	r2, r0
	mov	r3, r1
	.loc 2 283 27
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
.LVL34:
	mov	r3, r0	@ float
	str	r3, [sp, #200]	@ float
	.loc 2 284 37
	vldr.32	s15, [sp, #56]
	.loc 2 284 27
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L95
	.loc 2 285 28
	vldr.32	s15, [sp, #200]
	vneg.f32	s15, s15
	vstr.32	s15, [sp, #200]
.L95:
	.loc 2 288 60
	vldr.32	s14, [sp, #200]
	vldr.32	s15, [sp, #100]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L145
	.loc 2 288 60 is_stmt 0 discriminator 1
	ldr	r3, [sp, #200]	@ float
	b	.L99
.L145:
	.loc 2 288 60 discriminator 2
	ldr	r3, [sp, #100]	@ float
.L99:
	.loc 2 288 28 is_stmt 1 discriminator 4
	str	r3, [sp, #200]	@ float
	.loc 2 289 39 discriminator 4
	vldr.32	s15, [sp, #100]
	vneg.f32	s15, s15
	.loc 2 289 72 discriminator 4
	vldr.32	s14, [sp, #200]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L146
	.loc 2 289 72 is_stmt 0 discriminator 1
	vldr.32	s15, [sp, #100]
	vneg.f32	s15, s15
	b	.L102
.L146:
	.loc 2 289 72 discriminator 2
	vldr.32	s15, [sp, #200]
.L102:
	.loc 2 289 28 is_stmt 1 discriminator 4
	vstr.32	s15, [sp, #200]
.L93:
	.loc 2 293 43
	vldr.32	s14, [sp, #108]
	vldr.32	s15, [sp, #200]
	vadd.f32	s15, s14, s15
	.loc 2 293 31
	vldr.32	s14, [sp, #104]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [sp, #96]
	.loc 2 299 65
	vldr.32	s15, [sp, #96]
	vldr.32	s14, .L155+36
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L147
	.loc 2 299 65 is_stmt 0 discriminator 1
	ldr	r3, [sp, #96]	@ float
	b	.L105
.L147:
	.loc 2 299 65 discriminator 2
	ldr	r3, .L155
.L105:
	.loc 2 299 32 is_stmt 1 discriminator 4
	str	r3, [sp, #96]	@ float
	.loc 2 300 66 discriminator 4
	vldr.32	s15, [sp, #96]
	vldr.32	s14, .L155+40
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L148
	.loc 2 300 66 is_stmt 0 discriminator 1
	ldr	r3, .L155+44
	b	.L108
.L148:
	.loc 2 300 66 discriminator 2
	ldr	r3, [sp, #96]	@ float
.L108:
	.loc 2 300 32 is_stmt 1 discriminator 4
	str	r3, [sp, #96]	@ float
	.loc 2 301 29 discriminator 4
	vldr.32	s15, [sp, #96]
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	str	r3, [sp, #92]
	.loc 2 302 32 discriminator 4
	ldr	r3, [sp, #92]
	uxth	r3, r3
	rsbs	r3, r3, #0
	uxth	r3, r3
	sxth	r3, r3
	strh	r3, [sp, #50]	@ movhi
	.loc 2 303 32 discriminator 4
	ldr	r3, [sp, #92]
	sxth	r3, r3
	strh	r3, [sp, #48]	@ movhi
	.loc 2 305 49 discriminator 4
	vldr.32	s15, [sp, #56]
	.loc 2 305 38 discriminator 4
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L149
	.loc 2 305 38 is_stmt 0 discriminator 1
	movs	r3, #3
	b	.L111
.L149:
	.loc 2 305 38 discriminator 2
	movs	r3, #4
.L111:
	.loc 2 305 38 discriminator 4
	strb	r3, [sp, #63]
	.loc 2 306 34 is_stmt 1 discriminator 4
	movs	r3, #0
	strb	r3, [sp, #213]
.L80:
.LBE9:
	.loc 2 311 21
	ldrh	r3, [sp, #50]	@ movhi
	sxth	r0, r3
	ldrh	r3, [sp, #48]	@ movhi
	sxth	r1, r3
	add	r3, sp, #20
	ldm	r3, {r2, r3}
	bl	motorRegulator
	b	.L112
.L61:
	.loc 2 314 24
	ldrb	r3, [sp, #242]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L113
.LBB10:
	.loc 2 315 234 discriminator 2
	ldr	r3, .L155+48
	ldrh	r3, [r3]
	.loc 2 315 245 discriminator 2
	lsls	r3, r3, #16
	.loc 2 315 201 discriminator 2
	orr	r3, r3, #3
	.loc 2 315 153 discriminator 2
	ldr	r1, .L155+52
	mov	r0, r3
	bl	nrf_log_frontend_std_0
	.loc 2 316 25 discriminator 2
	bl	send_idle
	.loc 2 317 38 discriminator 2
	movs	r3, #0
	strb	r3, [sp, #218]
	.loc 2 318 35 discriminator 2
	movs	r3, #1
	strb	r3, [sp, #242]
.L113:
.LBE10:
	.loc 2 320 33
	ldrb	r3, [sp, #218]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #218]
	.loc 2 322 21
	bl	motor_brake
	.loc 2 324 34
	movs	r3, #0
	strb	r3, [sp, #63]
.L112:
	.loc 2 326 17
	ldr	r3, .L155+56
	ldr	r0, [r3]
	add	r1, sp, #63
	movs	r3, #0
	movs	r2, #0
	bl	xQueueGenericSend
	b	.L115
.L45:
.LBE3:
.LBE2:
	.loc 2 331 13
	bl	motor_brake
	.loc 2 113 12
	b	.L115
.L156:
	.align	2
.L155:
	.word	1120403456
	.word	1117782016
	.word	1128792064
	.word	1076756480
	.word	1078198272
	.word	1083129856
	.word	1092616192
	.word	-1054867456
	.word	1072168960
	.word	1120403456
	.word	-1027080192
	.word	-1027080192
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC2
	.word	scanStatusQ
.LFE292:
	.size	vMainPoseControllerTask, .-vMainPoseControllerTask
	.global	leftI
	.section	.bss.leftI,"aw",%nobits
	.align	2
	.type	leftI, %object
	.size	leftI, 4
leftI:
	.space	4
	.global	rightI
	.section	.bss.rightI,"aw",%nobits
	.align	2
	.type	rightI, %object
	.size	rightI, 4
rightI:
	.space	4
	.global	__aeabi_i2d
	.global	__aeabi_dsub
	.global	__aeabi_d2iz
	.section .rodata
	.align	2
.LC3:
	.ascii	"speed PID L: %d R:%d\000"
	.section	.text.motorRegulator,"ax",%progbits
	.align	1
	.global	motorRegulator
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	motorRegulator, %function
motorRegulator:
.LFB293:
	.loc 2 339 73
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI2:
	sub	sp, sp, #44
.LCFI3:
	mov	r4, r0
	mov	r0, r1
	add	r1, sp, #4
	stm	r1, {r2, r3}
	mov	r3, r4	@ movhi
	strh	r3, [sp, #14]	@ movhi
	mov	r3, r0	@ movhi
	strh	r3, [sp, #12]	@ movhi
	.loc 2 340 16
	ldr	r3, .L176
	vldr.32	s15, [r3]
	.loc 2 340 8
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L158
	.loc 2 340 20 discriminator 1
	ldrsh	r3, [sp, #12]
	cmp	r3, #0
	blt	.L160
.L158:
	.loc 2 340 44 discriminator 3
	ldr	r3, .L176
	vldr.32	s15, [r3]
	.loc 2 340 34 discriminator 3
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L161
	.loc 2 340 48 discriminator 4
	ldrsh	r3, [sp, #12]
	cmp	r3, #0
	ble	.L161
.L160:
	.loc 2 341 16
	ldr	r3, .L176
	mov	r2, #0
	str	r2, [r3]	@ float
	.loc 2 342 15
	ldr	r3, .L176+4
	mov	r2, #0
	str	r2, [r3]	@ float
.L161:
	.loc 2 344 15
	ldr	r3, .L176+4
	vldr.32	s15, [r3]
	.loc 2 344 8
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L163
	.loc 2 344 19 discriminator 1
	ldrsh	r3, [sp, #14]
	cmp	r3, #0
	blt	.L165
.L163:
	.loc 2 344 42 discriminator 3
	ldr	r3, .L176+4
	vldr.32	s15, [r3]
	.loc 2 344 33 discriminator 3
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L166
	.loc 2 344 46 discriminator 4
	ldrsh	r3, [sp, #14]
	cmp	r3, #0
	ble	.L166
.L165:
	.loc 2 345 16
	ldr	r3, .L176
	mov	r2, #0
	str	r2, [r3]	@ float
	.loc 2 346 15
	ldr	r3, .L176+4
	mov	r2, #0
	str	r2, [r3]	@ float
.L166:
	.loc 2 350 11
	mov	r3, #1073741824
	str	r3, [sp, #32]	@ float
	.loc 2 351 11
	mov	r3, #1065353216
	str	r3, [sp, #28]	@ float
	.loc 2 352 11
	ldr	r3, .L176+8
	str	r3, [sp, #24]	@ float
	.loc 2 353 27
	ldrsh	r3, [sp, #14]
	mov	r0, r3
	bl	__aeabi_i2d
.LVL35:
	mov	r2, #0
	mov	r3, #1073741824
	bl	__aeabi_ddiv
.LVL36:
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	.loc 2 353 39
	ldr	r3, [sp, #4]
	.loc 2 353 32
	mov	r0, r3
	bl	__aeabi_i2d
.LVL37:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
.LVL38:
	mov	r2, r0
	mov	r3, r1
	.loc 2 353 9
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
.LVL39:
	mov	r3, r0
	str	r3, [sp, #20]
	.loc 2 354 28
	ldrsh	r3, [sp, #12]
	mov	r0, r3
	bl	__aeabi_i2d
.LVL40:
	mov	r2, #0
	mov	r3, #1073741824
	bl	__aeabi_ddiv
.LVL41:
	mov	r2, r0
	mov	r3, r1
	mov	r4, r2
	mov	r5, r3
	.loc 2 354 40
	ldr	r3, [sp, #8]
	.loc 2 354 33
	mov	r0, r3
	bl	__aeabi_i2d
.LVL42:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
.LVL43:
	mov	r2, r0
	mov	r3, r1
	.loc 2 354 9
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
.LVL44:
	mov	r3, r0
	str	r3, [sp, #16]
	.loc 2 355 24
	ldr	r3, [sp, #20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [sp, #24]
	vmul.f32	s14, s14, s15
	.loc 2 355 11
	ldr	r3, .L176+4
	vldr.32	s15, [r3]
	vadd.f32	s15, s14, s15
	ldr	r3, .L176+4
	vstr.32	s15, [r3]
	.loc 2 356 26
	ldr	r3, [sp, #16]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [sp, #24]
	vmul.f32	s14, s14, s15
	.loc 2 356 12
	ldr	r3, .L176
	vldr.32	s15, [r3]
	vadd.f32	s15, s14, s15
	ldr	r3, .L176
	vstr.32	s15, [r3]
	.loc 2 357 17
	ldr	r3, [sp, #16]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [sp, #28]
	vmul.f32	s14, s14, s15
	.loc 2 357 35
	ldr	r3, .L176
	vldr.32	s13, [r3]
	vldr.32	s15, [sp, #32]
	vmul.f32	s15, s13, s15
	.loc 2 357 30
	vadd.f32	s15, s14, s15
	.loc 2 357 12
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	strh	r3, [sp, #36]	@ movhi
	.loc 2 358 17
	ldr	r3, [sp, #20]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [sp, #28]
	vmul.f32	s14, s14, s15
	.loc 2 358 34
	ldr	r3, .L176+4
	vldr.32	s13, [r3]
	vldr.32	s15, [sp, #32]
	vmul.f32	s15, s13, s15
	.loc 2 358 29
	vadd.f32	s15, s14, s15
	.loc 2 358 12
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	strh	r3, [sp, #38]	@ movhi
	.loc 2 360 213
	ldr	r3, .L176+12
	ldrh	r3, [r3]
	.loc 2 360 224
	lsls	r3, r3, #16
	.loc 2 360 180
	orr	r3, r3, #3
	.loc 2 360 132
	mov	r0, r3
	ldrsh	r2, [sp, #38]
	ldrsh	r3, [sp, #36]
	ldr	r1, .L176+16
	bl	nrf_log_frontend_std_2
	.loc 2 361 8
	ldrsh	r3, [sp, #38]
	cmp	r3, #100
	ble	.L168
	.loc 2 362 16
	movs	r3, #100
	strh	r3, [sp, #38]	@ movhi
.L168:
	.loc 2 364 8
	ldrsh	r3, [sp, #38]
	cmn	r3, #100
	bge	.L169
	.loc 2 365 16
	movw	r3, #65436
	strh	r3, [sp, #38]	@ movhi
.L169:
	.loc 2 367 8
	ldrsh	r3, [sp, #36]
	cmp	r3, #100
	ble	.L170
	.loc 2 368 16
	movs	r3, #100
	strh	r3, [sp, #36]	@ movhi
.L170:
	.loc 2 370 8
	ldrsh	r3, [sp, #36]
	cmn	r3, #100
	bge	.L171
	.loc 2 371 16
	movw	r3, #65436
	strh	r3, [sp, #36]	@ movhi
.L171:
	.loc 2 374 5
	ldrsh	r3, [sp, #38]
	ldrsh	r2, [sp, #36]
	mov	r1, r2
	mov	r0, r3
	bl	vMotorMovementSwitch
	.loc 2 375 1
	nop
	add	sp, sp, #44
.LCFI4:
	@ sp needed
	pop	{r4, r5, pc}
.L177:
	.align	2
.L176:
	.word	rightI
	.word	leftI
	.word	1025758986
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC3
.LFE293:
	.size	motorRegulator, .-motorRegulator
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
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.align	2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.align	2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.align	2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.align	2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.align	2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.align	2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.align	2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.align	2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.align	2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.align	2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.align	2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.align	2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.align	2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.align	2
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.align	2
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.align	2
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB292
	.4byte	.LFE292-.LFB292
	.byte	0x4
	.4byte	.LCFI0-.LFB292
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x128
	.align	2
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB293
	.4byte	.LFE293-.LFB293
	.byte	0x4
	.4byte	.LCFI2-.LFB293
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE88:
	.text
.Letext0:
	.section	.debug_types,"G",%progbits,wt.983716c4a1013425,comdat
	.4byte	0x45
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x98
	.byte	0x37
	.byte	0x16
	.byte	0xc4
	.byte	0xa1
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x8
	.byte	0x2
	.byte	0x24
	.byte	0x8
	.4byte	0x41
	.uleb128 0x3
	.ascii	"x\000"
	.byte	0x2
	.byte	0x25
	.byte	0xb
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.ascii	"y\000"
	.byte	0x2
	.byte	0x26
	.byte	0xb
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.byte	0
	.file 3 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
	.file 4 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.section	.debug_types,"G",%progbits,wt.e9e82ee25d8076ca,comdat
	.4byte	0x51
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xe9
	.byte	0xe8
	.byte	0x2e
	.byte	0xe2
	.byte	0x5d
	.byte	0x80
	.byte	0x76
	.byte	0xca
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x3
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x3
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.byte	0
	.section	.debug_types,"G",%progbits,wt.bafe518d4778ea9e,comdat
	.4byte	0x54
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xba
	.byte	0xfe
	.byte	0x51
	.byte	0x8d
	.byte	0x47
	.byte	0x78
	.byte	0xea
	.byte	0x9e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x8
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x3
	.byte	0x31
	.byte	0x1
	.4byte	0x50
	.uleb128 0x9
	.4byte	.LASF6
	.byte	0
	.uleb128 0x9
	.4byte	.LASF7
	.byte	0x1
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x2
	.uleb128 0x9
	.4byte	.LASF9
	.byte	0x3
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF11
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.file 5 "../../../TraceRecorder/streamports/Jlink_RTT/include/SEGGER_RTT.h"
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
	.uleb128 0x5
	.byte	0xa8
	.byte	0x5
	.byte	0x6b
	.byte	0x9
	.4byte	0x68
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x5
	.byte	0x6c
	.byte	0x8
	.4byte	0x68
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x6d
	.byte	0x7
	.4byte	0x78
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.byte	0x6e
	.byte	0x7
	.4byte	0x78
	.byte	0x14
	.uleb128 0x3
	.ascii	"aUp\000"
	.byte	0x5
	.byte	0x6f
	.byte	0x18
	.4byte	0x7f
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x70
	.byte	0x1a
	.4byte	0x8f
	.byte	0x60
	.byte	0
	.uleb128 0xa
	.4byte	0x9f
	.4byte	0x78
	.uleb128 0xb
	.4byte	0xa6
	.byte	0xf
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xa
	.4byte	0xad
	.4byte	0x8f
	.uleb128 0xb
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0xa
	.4byte	0xbd
	.4byte	0x9f
	.uleb128 0xb
	.4byte	0xa6
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x5
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
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x5
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
	.uleb128 0x5
	.byte	0x18
	.byte	0x5
	.byte	0x5d
	.byte	0x9
	.4byte	0x75
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.byte	0x5e
	.byte	0xf
	.4byte	0x75
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.byte	0x5f
	.byte	0x13
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x5
	.byte	0x60
	.byte	0x16
	.4byte	0x81
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x5
	.byte	0x61
	.byte	0x15
	.4byte	0x88
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.byte	0x62
	.byte	0x16
	.4byte	0x81
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x5
	.byte	0x63
	.byte	0x16
	.4byte	0x81
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x92
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0xf
	.4byte	0x81
	.uleb128 0x10
	.4byte	0x92
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
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
	.uleb128 0x5
	.byte	0x18
	.byte	0x5
	.byte	0x50
	.byte	0x9
	.4byte	0x75
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.byte	0x51
	.byte	0xf
	.4byte	0x75
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.byte	0x52
	.byte	0x13
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x5
	.byte	0x53
	.byte	0x16
	.4byte	0x81
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x5
	.byte	0x54
	.byte	0x16
	.4byte	0x81
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.byte	0x55
	.byte	0x15
	.4byte	0x88
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x5
	.byte	0x56
	.byte	0x16
	.4byte	0x81
	.byte	0x14
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x8d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x92
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0xf
	.4byte	0x81
	.uleb128 0x10
	.4byte	0x92
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.byte	0
	.file 6 "../../../drivers/encoder.h"
	.section	.debug_types,"G",%progbits,wt.4fd2472da03bc8a9,comdat
	.4byte	0x45
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x4f
	.byte	0xd2
	.byte	0x47
	.byte	0x2d
	.byte	0xa0
	.byte	0x3b
	.byte	0xc8
	.byte	0xa9
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x8
	.byte	0x6
	.byte	0x17
	.byte	0x9
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x6
	.byte	0x18
	.byte	0xa
	.4byte	0x41
	.byte	0
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x6
	.byte	0x19
	.byte	0xa
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.byte	0
	.file 7 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
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
	.uleb128 0x5
	.byte	0xc
	.byte	0x7
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x7
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x7
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.4byte	0x4b
	.uleb128 0xf
	.4byte	0x5b
	.uleb128 0xa
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0xb
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
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
	.uleb128 0x11
	.byte	0xc
	.byte	0x1
	.2byte	0x177
	.byte	0x9
	.4byte	0x52
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x179
	.byte	0x19
	.4byte	0x52
	.byte	0
	.uleb128 0x12
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x17a
	.byte	0x1f
	.4byte	0x58
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x17b
	.byte	0x1a
	.4byte	0x5e
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x64
	.uleb128 0xe
	.byte	0x4
	.4byte	0x64
	.uleb128 0xe
	.byte	0x4
	.4byte	0x74
	.uleb128 0xa
	.4byte	0x81
	.4byte	0x74
	.uleb128 0xb
	.4byte	0x8d
	.byte	0xf
	.byte	0
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x16b
	.byte	0x11
	.4byte	0x64
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x94
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x4
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
	.uleb128 0x11
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
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x171
	.byte	0x17
	.4byte	0x5f
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x172
	.byte	0x18
	.4byte	0x6c
	.byte	0x20
	.byte	0
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x169
	.byte	0x11
	.4byte	0x79
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x16a
	.byte	0x11
	.4byte	0x79
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x16b
	.byte	0x11
	.4byte	0x79
	.uleb128 0xa
	.4byte	0x89
	.4byte	0x89
	.uleb128 0xb
	.4byte	0x95
	.byte	0xf
	.byte	0
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x9c
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x4
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
	.uleb128 0x11
	.byte	0x8
	.byte	0x1
	.2byte	0x14a
	.byte	0x9
	.4byte	0x48
	.uleb128 0x12
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x14c
	.byte	0xb
	.4byte	0x48
	.byte	0
	.uleb128 0x15
	.4byte	.LASF43
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
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x54
	.uleb128 0x4
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
	.4byte	.LASF44
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
	.4byte	.LASF45
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
	.uleb128 0x11
	.byte	0x4
	.byte	0x1
	.2byte	0x153
	.byte	0x5
	.4byte	0x36
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x155
	.byte	0x10
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x42
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
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
	.uleb128 0x11
	.byte	0x4
	.byte	0x1
	.2byte	0x14f
	.byte	0x5
	.4byte	0x36
	.uleb128 0x12
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x151
	.byte	0x1d
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3c
	.uleb128 0x18
	.4byte	.LASF48
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
	.uleb128 0x11
	.byte	0x10
	.byte	0x1
	.2byte	0x13f
	.byte	0x9
	.4byte	0x48
	.uleb128 0x12
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x141
	.byte	0xb
	.4byte	0x48
	.byte	0
	.uleb128 0x15
	.4byte	.LASF43
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
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x54
	.uleb128 0x4
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
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x144
	.byte	0x22
	.4byte	0x42
	.uleb128 0x1a
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x145
	.byte	0x20
	.4byte	0x53
	.byte	0
	.uleb128 0x18
	.4byte	.LASF52
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
	.4byte	.LASF53
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
	.uleb128 0x11
	.byte	0xc
	.byte	0x1
	.2byte	0x136
	.byte	0x9
	.4byte	0x60
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x138
	.byte	0xb
	.4byte	0x60
	.byte	0
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x139
	.byte	0xb
	.4byte	0x60
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x13a
	.byte	0xc
	.4byte	0x6c
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x13b
	.byte	0xc
	.4byte	0x6c
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x78
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x7f
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
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
	.uleb128 0x11
	.byte	0xc
	.byte	0x1
	.2byte	0x12d
	.byte	0x9
	.4byte	0x60
	.uleb128 0x12
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x12f
	.byte	0xb
	.4byte	0x60
	.byte	0
	.uleb128 0x12
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x130
	.byte	0xb
	.4byte	0x60
	.byte	0x1
	.uleb128 0x12
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x131
	.byte	0xc
	.4byte	0x6c
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x132
	.byte	0xc
	.4byte	0x6c
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x78
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x7f
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
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
	.4byte	.LASF102
	.byte	0x7
	.byte	0x1
	.4byte	0x138
	.byte	0x1
	.byte	0x68
	.byte	0x6
	.4byte	0x138
	.uleb128 0x9
	.4byte	.LASF58
	.byte	0x20
	.uleb128 0x9
	.4byte	.LASF59
	.byte	0x21
	.uleb128 0x9
	.4byte	.LASF60
	.byte	0x22
	.uleb128 0x9
	.4byte	.LASF61
	.byte	0x23
	.uleb128 0x9
	.4byte	.LASF62
	.byte	0x24
	.uleb128 0x9
	.4byte	.LASF63
	.byte	0x25
	.uleb128 0x9
	.4byte	.LASF64
	.byte	0x26
	.uleb128 0x9
	.4byte	.LASF65
	.byte	0x27
	.uleb128 0x9
	.4byte	.LASF66
	.byte	0x28
	.uleb128 0x9
	.4byte	.LASF67
	.byte	0x29
	.uleb128 0x9
	.4byte	.LASF68
	.byte	0x2a
	.uleb128 0x9
	.4byte	.LASF69
	.byte	0x2b
	.uleb128 0x9
	.4byte	.LASF70
	.byte	0x2c
	.uleb128 0x9
	.4byte	.LASF71
	.byte	0x2d
	.uleb128 0x9
	.4byte	.LASF72
	.byte	0x2e
	.uleb128 0x9
	.4byte	.LASF73
	.byte	0x2f
	.uleb128 0x9
	.4byte	.LASF74
	.byte	0x30
	.uleb128 0x9
	.4byte	.LASF75
	.byte	0x31
	.uleb128 0x9
	.4byte	.LASF76
	.byte	0x32
	.uleb128 0x9
	.4byte	.LASF77
	.byte	0x33
	.uleb128 0x9
	.4byte	.LASF78
	.byte	0x34
	.uleb128 0x9
	.4byte	.LASF79
	.byte	0x35
	.uleb128 0x9
	.4byte	.LASF80
	.byte	0x36
	.uleb128 0x9
	.4byte	.LASF81
	.byte	0x37
	.uleb128 0x9
	.4byte	.LASF82
	.byte	0x39
	.uleb128 0x9
	.4byte	.LASF83
	.byte	0x3a
	.uleb128 0x9
	.4byte	.LASF84
	.byte	0x3b
	.uleb128 0x9
	.4byte	.LASF85
	.byte	0x3c
	.uleb128 0x9
	.4byte	.LASF86
	.byte	0x3d
	.uleb128 0x9
	.4byte	.LASF87
	.byte	0x3e
	.uleb128 0x9
	.4byte	.LASF88
	.byte	0x3f
	.uleb128 0x9
	.4byte	.LASF89
	.byte	0x41
	.uleb128 0x9
	.4byte	.LASF90
	.byte	0x42
	.uleb128 0x9
	.4byte	.LASF91
	.byte	0x43
	.uleb128 0x9
	.4byte	.LASF92
	.byte	0x44
	.uleb128 0x9
	.4byte	.LASF93
	.byte	0x45
	.uleb128 0x9
	.4byte	.LASF94
	.byte	0x46
	.uleb128 0x9
	.4byte	.LASF95
	.byte	0x47
	.uleb128 0x9
	.4byte	.LASF96
	.byte	0x48
	.uleb128 0x9
	.4byte	.LASF97
	.byte	0x49
	.uleb128 0x9
	.4byte	.LASF98
	.byte	0x4a
	.uleb128 0x9
	.4byte	.LASF99
	.byte	0x4b
	.uleb128 0x9
	.4byte	.LASF100
	.byte	0x4c
	.uleb128 0x9
	.4byte	.LASF101
	.byte	0x51
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
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
	.uleb128 0x1c
	.4byte	.LASF103
	.byte	0x8
	.byte	0x8
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x12
	.4byte	.LASF104
	.byte	0x8
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x12
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x61
	.uleb128 0x1d
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x1e
	.4byte	0x76
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7d
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x10
	.4byte	0x82
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
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
	.uleb128 0x2
	.4byte	.LASF107
	.byte	0x14
	.byte	0x8
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF108
	.byte	0x8
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x48
	.4byte	0x48
	.uleb128 0xb
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x55
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x10
	.4byte	0x5a
	.uleb128 0xd
	.4byte	.LASF109
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
	.uleb128 0x5
	.byte	0xc
	.byte	0x8
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0x8
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF111
	.byte	0x8
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0x8
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x60
	.uleb128 0xe
	.byte	0x4
	.4byte	0x65
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x10
	.4byte	0x6f
	.uleb128 0x10
	.4byte	0x76
	.uleb128 0x10
	.4byte	0x86
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0xd
	.4byte	.LASF113
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
	.uleb128 0xd
	.4byte	.LASF114
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
	.uleb128 0x5
	.byte	0x20
	.byte	0x8
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF115
	.byte	0x8
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF116
	.byte	0x8
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF117
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF118
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0x8
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0x8
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0x8
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF122
	.byte	0x8
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb3
	.uleb128 0xe
	.byte	0x4
	.4byte	0xc7
	.uleb128 0xe
	.byte	0x4
	.4byte	0xd6
	.uleb128 0xe
	.byte	0x4
	.4byte	0xea
	.uleb128 0xe
	.byte	0x4
	.4byte	0xf9
	.uleb128 0xe
	.byte	0x4
	.4byte	0x112
	.uleb128 0x1d
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0x1e
	.4byte	0x130
	.uleb128 0x1e
	.4byte	0x130
	.byte	0
	.uleb128 0x1d
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0x1e
	.4byte	0x130
	.byte	0
	.uleb128 0x1d
	.4byte	0x130
	.4byte	0xea
	.uleb128 0x1e
	.4byte	0x137
	.uleb128 0x1e
	.4byte	0x130
	.byte	0
	.uleb128 0x1d
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0x1e
	.4byte	0x137
	.byte	0
	.uleb128 0x1d
	.4byte	0x130
	.4byte	0x112
	.uleb128 0x1e
	.4byte	0x13e
	.uleb128 0x1e
	.4byte	0x144
	.uleb128 0x1e
	.4byte	0x14b
	.byte	0
	.uleb128 0x1d
	.4byte	0x130
	.4byte	0x130
	.uleb128 0x1e
	.4byte	0x155
	.uleb128 0x1e
	.4byte	0x15b
	.uleb128 0x1e
	.4byte	0x144
	.uleb128 0x1e
	.4byte	0x14b
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.uleb128 0xe
	.byte	0x4
	.4byte	0x161
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x1f
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0xe
	.byte	0x4
	.4byte	0x144
	.uleb128 0xe
	.byte	0x4
	.4byte	0x168
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x10
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
	.uleb128 0x5
	.byte	0x58
	.byte	0x8
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x6
	.4byte	.LASF123
	.byte	0x8
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF124
	.byte	0x8
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF125
	.byte	0x8
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF126
	.byte	0x8
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF127
	.byte	0x8
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF128
	.byte	0x8
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF129
	.byte	0x8
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF130
	.byte	0x8
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0x8
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF132
	.byte	0x8
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF133
	.byte	0x8
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF134
	.byte	0x8
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x6
	.4byte	.LASF135
	.byte	0x8
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x6
	.4byte	.LASF136
	.byte	0x8
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x6
	.4byte	.LASF137
	.byte	0x8
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF138
	.byte	0x8
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x6
	.4byte	.LASF139
	.byte	0x8
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x6
	.4byte	.LASF140
	.byte	0x8
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x6
	.4byte	.LASF141
	.byte	0x8
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF142
	.byte	0x8
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x6
	.4byte	.LASF143
	.byte	0x8
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x6
	.4byte	.LASF144
	.byte	0x8
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x6
	.4byte	.LASF145
	.byte	0x8
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF146
	.byte	0x8
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x6
	.4byte	.LASF147
	.byte	0x8
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF148
	.byte	0x8
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF149
	.byte	0x8
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x6
	.4byte	.LASF150
	.byte	0x8
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF151
	.byte	0x8
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF152
	.byte	0x8
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF153
	.byte	0x8
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF154
	.byte	0x8
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x10
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
	.uleb128 0x2
	.4byte	.LASF155
	.byte	0x8
	.byte	0x8
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x6
	.4byte	.LASF156
	.byte	0x8
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x6
	.4byte	.LASF157
	.byte	0x8
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.byte	0
	.file 9 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 10 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 11 "../../../../../../components/libraries/util/app_util.h"
	.file 12 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 13 "../../../TraceRecorder/include/trcKernelPort.h"
	.file 14 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
	.file 15 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 16 "../../../../../../external/freertos/source/include/queue.h"
	.file 17 "../../../../../../external/freertos/source/include/semphr.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1326
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x20
	.4byte	.LASF397
	.byte	0xc
	.4byte	.LASF398
	.4byte	.LASF399
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF158
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x41
	.uleb128 0xf
	.4byte	0x30
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x10
	.4byte	0x41
	.uleb128 0x7
	.4byte	.LASF159
	.byte	0x4
	.byte	0x35
	.byte	0x16
	.4byte	0x5e
	.uleb128 0xf
	.4byte	0x4d
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF160
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x71
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x7
	.4byte	.LASF161
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x89
	.uleb128 0xf
	.4byte	0x78
	.uleb128 0xc
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0xa6
	.uleb128 0xf
	.4byte	0x90
	.uleb128 0x10
	.4byte	0x90
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF162
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF163
	.uleb128 0x21
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF17
	.uleb128 0x10
	.4byte	0xc4
	.uleb128 0xd
	.4byte	.LASF114
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
	.uleb128 0x10
	.4byte	0xd0
	.uleb128 0xd
	.4byte	.LASF109
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
	.uleb128 0x10
	.4byte	0xe5
	.uleb128 0x22
	.4byte	.LASF164
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
	.uleb128 0x23
	.4byte	.LASF165
	.byte	0x8
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xf5
	.uleb128 0x23
	.4byte	.LASF166
	.byte	0x8
	.2byte	0x110
	.byte	0x25
	.4byte	0xe0
	.uleb128 0x23
	.4byte	.LASF167
	.byte	0x8
	.2byte	0x111
	.byte	0x25
	.4byte	0xe0
	.uleb128 0xa
	.4byte	0x48
	.4byte	0x142
	.uleb128 0xb
	.4byte	0xa6
	.byte	0x7f
	.byte	0
	.uleb128 0x10
	.4byte	0x132
	.uleb128 0x23
	.4byte	.LASF168
	.byte	0x8
	.2byte	0x113
	.byte	0x1c
	.4byte	0x142
	.uleb128 0xa
	.4byte	0xcb
	.4byte	0x15f
	.uleb128 0x24
	.byte	0
	.uleb128 0x10
	.4byte	0x154
	.uleb128 0x23
	.4byte	.LASF169
	.byte	0x8
	.2byte	0x115
	.byte	0x13
	.4byte	0x15f
	.uleb128 0x23
	.4byte	.LASF170
	.byte	0x8
	.2byte	0x116
	.byte	0x13
	.4byte	0x15f
	.uleb128 0x23
	.4byte	.LASF171
	.byte	0x8
	.2byte	0x117
	.byte	0x13
	.4byte	0x15f
	.uleb128 0x23
	.4byte	.LASF172
	.byte	0x8
	.2byte	0x118
	.byte	0x13
	.4byte	0x15f
	.uleb128 0x23
	.4byte	.LASF173
	.byte	0x8
	.2byte	0x11a
	.byte	0x13
	.4byte	0x15f
	.uleb128 0x23
	.4byte	.LASF174
	.byte	0x8
	.2byte	0x11b
	.byte	0x13
	.4byte	0x15f
	.uleb128 0x23
	.4byte	.LASF175
	.byte	0x8
	.2byte	0x11c
	.byte	0x13
	.4byte	0x15f
	.uleb128 0x23
	.4byte	.LASF176
	.byte	0x8
	.2byte	0x11d
	.byte	0x13
	.4byte	0x15f
	.uleb128 0x23
	.4byte	.LASF177
	.byte	0x8
	.2byte	0x11e
	.byte	0x13
	.4byte	0x15f
	.uleb128 0x23
	.4byte	.LASF178
	.byte	0x8
	.2byte	0x11f
	.byte	0x13
	.4byte	0x15f
	.uleb128 0x1d
	.4byte	0x89
	.4byte	0x1f5
	.uleb128 0x1e
	.4byte	0x1f5
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x200
	.uleb128 0x25
	.4byte	.LASF197
	.uleb128 0x10
	.4byte	0x1fb
	.uleb128 0x23
	.4byte	.LASF179
	.byte	0x8
	.2byte	0x135
	.byte	0xe
	.4byte	0x212
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1e6
	.uleb128 0x1d
	.4byte	0x89
	.4byte	0x227
	.uleb128 0x1e
	.4byte	0x227
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1fb
	.uleb128 0x23
	.4byte	.LASF180
	.byte	0x8
	.2byte	0x136
	.byte	0xe
	.4byte	0x23a
	.uleb128 0xe
	.byte	0x4
	.4byte	0x218
	.uleb128 0x18
	.4byte	.LASF181
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
	.uleb128 0x23
	.4byte	.LASF182
	.byte	0x8
	.2byte	0x157
	.byte	0x1f
	.4byte	0x25e
	.uleb128 0xe
	.byte	0x4
	.4byte	0x240
	.uleb128 0x23
	.4byte	.LASF183
	.byte	0x9
	.2byte	0x744
	.byte	0x19
	.4byte	0x84
	.uleb128 0x26
	.4byte	.LASF184
	.byte	0xa
	.byte	0x21
	.byte	0x11
	.4byte	0x90
	.uleb128 0x26
	.4byte	.LASF185
	.byte	0xb
	.byte	0x53
	.byte	0x11
	.4byte	0x90
	.uleb128 0x26
	.4byte	.LASF186
	.byte	0xb
	.byte	0x54
	.byte	0x11
	.4byte	0x90
	.uleb128 0x26
	.4byte	.LASF187
	.byte	0xb
	.byte	0x72
	.byte	0x13
	.4byte	0x2a1
	.uleb128 0xe
	.byte	0x4
	.4byte	0x90
	.uleb128 0x26
	.4byte	.LASF188
	.byte	0xb
	.byte	0x73
	.byte	0x11
	.4byte	0x90
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.uleb128 0x13
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x12a
	.byte	0x1a
	.4byte	0x3c
	.uleb128 0x18
	.4byte	.LASF48
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
	.uleb128 0x10
	.4byte	0x2c6
	.uleb128 0x18
	.4byte	.LASF190
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
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x166
	.byte	0x36
	.4byte	0x2fa
	.uleb128 0xe
	.byte	0x4
	.4byte	0x300
	.uleb128 0x1d
	.4byte	0x30f
	.4byte	0x30f
	.uleb128 0x1e
	.4byte	0x30
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2dc
	.uleb128 0x18
	.4byte	.LASF192
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
	.4byte	.LASF193
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
	.uleb128 0xd
	.4byte	.LASF194
	.byte	0x7
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
	.uleb128 0x26
	.4byte	.LASF195
	.byte	0x7
	.byte	0x75
	.byte	0x19
	.4byte	0x337
	.uleb128 0x13
	.4byte	.LASF196
	.byte	0xc
	.2byte	0x317
	.byte	0x1b
	.4byte	0x360
	.uleb128 0x25
	.4byte	.LASF198
	.uleb128 0x23
	.4byte	.LASF199
	.byte	0xc
	.2byte	0x31b
	.byte	0xe
	.4byte	0x372
	.uleb128 0xe
	.byte	0x4
	.4byte	0x353
	.uleb128 0x23
	.4byte	.LASF200
	.byte	0xc
	.2byte	0x31c
	.byte	0xe
	.4byte	0x372
	.uleb128 0x23
	.4byte	.LASF201
	.byte	0xc
	.2byte	0x31d
	.byte	0xe
	.4byte	0x372
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF202
	.uleb128 0xd
	.4byte	.LASF203
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x4f
	.byte	0xd2
	.byte	0x47
	.byte	0x2d
	.byte	0xa0
	.byte	0x3b
	.byte	0xc8
	.byte	0xa9
	.uleb128 0x27
	.uleb128 0xf
	.4byte	0x3a9
	.uleb128 0xd
	.4byte	.LASF204
	.byte	0x5
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
	.uleb128 0x26
	.4byte	.LASF205
	.byte	0x5
	.byte	0x79
	.byte	0x16
	.4byte	0x3af
	.uleb128 0x23
	.4byte	.LASF206
	.byte	0xd
	.2byte	0x128
	.byte	0x11
	.4byte	0x65
	.uleb128 0x23
	.4byte	.LASF207
	.byte	0xd
	.2byte	0x12a
	.byte	0x11
	.4byte	0x65
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF208
	.uleb128 0x7
	.4byte	.LASF209
	.byte	0xe
	.byte	0x39
	.byte	0xe
	.4byte	0xbd
	.uleb128 0x7
	.4byte	.LASF210
	.byte	0xe
	.byte	0x40
	.byte	0x16
	.4byte	0x90
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF211
	.uleb128 0xd
	.4byte	.LASF212
	.byte	0x3
	.byte	0x50
	.byte	0x3
	.byte	0xe9
	.byte	0xe8
	.byte	0x2e
	.byte	0xe2
	.byte	0x5d
	.byte	0x80
	.byte	0x76
	.byte	0xca
	.uleb128 0x23
	.4byte	.LASF213
	.byte	0xf
	.2byte	0x124
	.byte	0x2e
	.4byte	0x412
	.uleb128 0x7
	.4byte	.LASF214
	.byte	0x10
	.byte	0x2f
	.byte	0x10
	.4byte	0xbb
	.uleb128 0x7
	.4byte	.LASF215
	.byte	0x11
	.byte	0x26
	.byte	0x17
	.4byte	0x42f
	.uleb128 0x26
	.4byte	.LASF216
	.byte	0x2
	.byte	0xd
	.byte	0x10
	.4byte	0x4d
	.uleb128 0x26
	.4byte	.LASF217
	.byte	0x2
	.byte	0xe
	.byte	0x10
	.4byte	0x4d
	.uleb128 0x26
	.4byte	.LASF218
	.byte	0x2
	.byte	0xf
	.byte	0xe
	.4byte	0x404
	.uleb128 0x26
	.4byte	.LASF219
	.byte	0x2
	.byte	0x10
	.byte	0x10
	.4byte	0x30
	.uleb128 0x26
	.4byte	.LASF220
	.byte	0x2
	.byte	0x11
	.byte	0x10
	.4byte	0x30
	.uleb128 0x26
	.4byte	.LASF221
	.byte	0x2
	.byte	0x12
	.byte	0xe
	.4byte	0x404
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x2
	.byte	0x13
	.byte	0xe
	.4byte	0x404
	.uleb128 0x26
	.4byte	.LASF223
	.byte	0x2
	.byte	0x15
	.byte	0x10
	.4byte	0x4d
	.uleb128 0x26
	.4byte	.LASF224
	.byte	0x2
	.byte	0x16
	.byte	0x10
	.4byte	0x4d
	.uleb128 0x26
	.4byte	.LASF225
	.byte	0x2
	.byte	0x18
	.byte	0x16
	.4byte	0x42f
	.uleb128 0x26
	.4byte	.LASF226
	.byte	0x2
	.byte	0x19
	.byte	0x16
	.4byte	0x42f
	.uleb128 0x26
	.4byte	.LASF227
	.byte	0x2
	.byte	0x1a
	.byte	0x1a
	.4byte	0x43b
	.uleb128 0x26
	.4byte	.LASF228
	.byte	0x2
	.byte	0x1b
	.byte	0x1a
	.4byte	0x43b
	.uleb128 0x26
	.4byte	.LASF229
	.byte	0x2
	.byte	0x1c
	.byte	0x1a
	.4byte	0x43b
	.uleb128 0x28
	.4byte	.LASF230
	.byte	0x2
	.2byte	0x14f
	.byte	0x7
	.4byte	0x404
	.uleb128 0x5
	.byte	0x3
	.4byte	leftI
	.uleb128 0x28
	.4byte	.LASF231
	.byte	0x2
	.2byte	0x150
	.byte	0x7
	.4byte	0x404
	.uleb128 0x5
	.byte	0x3
	.4byte	rightI
	.uleb128 0x29
	.4byte	.LASF239
	.byte	0x2
	.2byte	0x153
	.byte	0x6
	.4byte	.LFB293
	.4byte	.LFE293-.LFB293
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5c9
	.uleb128 0x2a
	.4byte	.LASF232
	.byte	0x2
	.2byte	0x153
	.byte	0x1d
	.4byte	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x2a
	.4byte	.LASF233
	.byte	0x2
	.2byte	0x153
	.byte	0x2d
	.4byte	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2a
	.4byte	.LASF234
	.byte	0x2
	.2byte	0x153
	.byte	0x42
	.4byte	0x399
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2b
	.4byte	.LASF235
	.byte	0x2
	.2byte	0x15c
	.byte	0xd
	.4byte	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2b
	.4byte	.LASF236
	.byte	0x2
	.2byte	0x15d
	.byte	0xd
	.4byte	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.ascii	"ki\000"
	.byte	0x2
	.2byte	0x15e
	.byte	0xb
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2c
	.ascii	"kp\000"
	.byte	0x2
	.2byte	0x15f
	.byte	0xb
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.ascii	"t\000"
	.byte	0x2
	.2byte	0x160
	.byte	0xb
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2b
	.4byte	.LASF237
	.byte	0x2
	.2byte	0x161
	.byte	0x9
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2b
	.4byte	.LASF238
	.byte	0x2
	.2byte	0x162
	.byte	0x9
	.4byte	0x89
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF240
	.byte	0x2
	.byte	0x2a
	.byte	0x6
	.4byte	.LFB292
	.4byte	.LFE292-.LFB292
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf2
	.uleb128 0x2e
	.4byte	.LASF241
	.byte	0x2
	.byte	0x2a
	.byte	0x24
	.4byte	0xbb
	.uleb128 0x3
	.byte	0x91
	.sleb128 -292
	.uleb128 0x2f
	.4byte	.LASF242
	.byte	0x2
	.byte	0x2c
	.byte	0x17
	.4byte	0x1320
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2f
	.4byte	.LASF243
	.byte	0x2
	.byte	0x2d
	.byte	0x17
	.4byte	0x1320
	.uleb128 0x3
	.byte	0x91
	.sleb128 -232
	.uleb128 0x2f
	.4byte	.LASF244
	.byte	0x2
	.byte	0x2e
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x2f
	.4byte	.LASF245
	.byte	0x2
	.byte	0x2f
	.byte	0xd
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -233
	.uleb128 0x2f
	.4byte	.LASF246
	.byte	0x2
	.byte	0x31
	.byte	0xd
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2f
	.4byte	.LASF247
	.byte	0x2
	.byte	0x34
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x2f
	.4byte	.LASF248
	.byte	0x2
	.byte	0x35
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x2f
	.4byte	.LASF249
	.byte	0x2
	.byte	0x36
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2f
	.4byte	.LASF250
	.byte	0x2
	.byte	0x37
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2f
	.4byte	.LASF251
	.byte	0x2
	.byte	0x38
	.byte	0xb
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x2f
	.4byte	.LASF252
	.byte	0x2
	.byte	0x39
	.byte	0xb
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.4byte	.LASF253
	.byte	0x2
	.byte	0x3c
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x2f
	.4byte	.LASF254
	.byte	0x2
	.byte	0x3d
	.byte	0xd
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -122
	.uleb128 0x2f
	.4byte	.LASF255
	.byte	0x2
	.byte	0x3e
	.byte	0xd
	.4byte	0x4d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2f
	.4byte	.LASF256
	.byte	0x2
	.byte	0x41
	.byte	0xb
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.4byte	.LASF257
	.byte	0x2
	.byte	0x42
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -240
	.uleb128 0x2f
	.4byte	.LASF258
	.byte	0x2
	.byte	0x43
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -244
	.uleb128 0x2f
	.4byte	.LASF259
	.byte	0x2
	.byte	0x44
	.byte	0xb
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2f
	.4byte	.LASF260
	.byte	0x2
	.byte	0x45
	.byte	0xb
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.4byte	.LASF261
	.byte	0x2
	.byte	0x46
	.byte	0xb
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x2f
	.4byte	.LASF262
	.byte	0x2
	.byte	0x48
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2f
	.4byte	.LASF263
	.byte	0x2
	.byte	0x49
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -132
	.uleb128 0x2f
	.4byte	.LASF264
	.byte	0x2
	.byte	0x4a
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x2f
	.4byte	.LASF265
	.byte	0x2
	.byte	0x4c
	.byte	0xb
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x2f
	.4byte	.LASF266
	.byte	0x2
	.byte	0x4d
	.byte	0xb
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x2f
	.4byte	.LASF267
	.byte	0x2
	.byte	0x4f
	.byte	0xd
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -53
	.uleb128 0x2f
	.4byte	.LASF268
	.byte	0x2
	.byte	0x50
	.byte	0x16
	.4byte	0x59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -246
	.uleb128 0x2f
	.4byte	.LASF269
	.byte	0x2
	.byte	0x51
	.byte	0x16
	.4byte	0x59
	.uleb128 0x3
	.byte	0x91
	.sleb128 -248
	.uleb128 0x2f
	.4byte	.LASF270
	.byte	0x2
	.byte	0x53
	.byte	0xd
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -54
	.uleb128 0x2f
	.4byte	.LASF271
	.byte	0x2
	.byte	0x56
	.byte	0xd
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -55
	.uleb128 0x2f
	.4byte	.LASF272
	.byte	0x2
	.byte	0x57
	.byte	0xb
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x2f
	.4byte	.LASF273
	.byte	0x2
	.byte	0x58
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x2f
	.4byte	.LASF274
	.byte	0x2
	.byte	0x59
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x2f
	.4byte	.LASF275
	.byte	0x2
	.byte	0x5a
	.byte	0xb
	.4byte	0x404
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x2f
	.4byte	.LASF276
	.byte	0x2
	.byte	0x5b
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2f
	.4byte	.LASF277
	.byte	0x2
	.byte	0x5c
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x2f
	.4byte	.LASF278
	.byte	0x2
	.byte	0x5d
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x2f
	.4byte	.LASF279
	.byte	0x2
	.byte	0x5e
	.byte	0xd
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -77
	.uleb128 0x2f
	.4byte	.LASF280
	.byte	0x2
	.byte	0x60
	.byte	0xd
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -78
	.uleb128 0x2f
	.4byte	.LASF281
	.byte	0x2
	.byte	0x61
	.byte	0xd
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -79
	.uleb128 0x2f
	.4byte	.LASF282
	.byte	0x2
	.byte	0x62
	.byte	0xd
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x2f
	.4byte	.LASF283
	.byte	0x2
	.byte	0x63
	.byte	0xd
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -81
	.uleb128 0x2f
	.4byte	.LASF284
	.byte	0x2
	.byte	0x64
	.byte	0xd
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -145
	.uleb128 0x2f
	.4byte	.LASF285
	.byte	0x2
	.byte	0x65
	.byte	0xd
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -82
	.uleb128 0x2f
	.4byte	.LASF286
	.byte	0x2
	.byte	0x66
	.byte	0xd
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -83
	.uleb128 0x2f
	.4byte	.LASF287
	.byte	0x2
	.byte	0x67
	.byte	0xd
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -146
	.uleb128 0x2f
	.4byte	.LASF288
	.byte	0x2
	.byte	0x68
	.byte	0xd
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -147
	.uleb128 0x2f
	.4byte	.LASF289
	.byte	0x2
	.byte	0x69
	.byte	0xa
	.4byte	0xaf2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -268
	.uleb128 0x2f
	.4byte	.LASF290
	.byte	0x2
	.byte	0x6a
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -152
	.uleb128 0x2f
	.4byte	.LASF291
	.byte	0x2
	.byte	0x6b
	.byte	0xb
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2f
	.4byte	.LASF292
	.byte	0x2
	.byte	0x6d
	.byte	0xd
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -157
	.uleb128 0x30
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x2f
	.4byte	.LASF234
	.byte	0x2
	.byte	0x74
	.byte	0x1a
	.4byte	0x399
	.uleb128 0x3
	.byte	0x91
	.sleb128 -276
	.uleb128 0x30
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x2f
	.4byte	.LASF293
	.byte	0x2
	.byte	0xb8
	.byte	0x17
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x2f
	.4byte	.LASF294
	.byte	0x2
	.byte	0xb9
	.byte	0x17
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x96f
	.uleb128 0x32
	.4byte	.LASF307
	.byte	0x2
	.byte	0x8f
	.byte	0x15
	.4byte	0x89
	.uleb128 0x33
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x99d
	.uleb128 0x2f
	.4byte	.LASF295
	.byte	0x2
	.byte	0xbb
	.byte	0x1b
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2f
	.4byte	.LASF296
	.byte	0x2
	.byte	0xbc
	.byte	0x1b
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x31
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x9f3
	.uleb128 0x2f
	.4byte	.LASF297
	.byte	0x2
	.byte	0xcb
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -208
	.uleb128 0x31
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x9d8
	.uleb128 0x2f
	.4byte	.LASF298
	.byte	0x2
	.byte	0xd9
	.byte	0x23
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -212
	.byte	0
	.uleb128 0x30
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x2f
	.4byte	.LASF299
	.byte	0x2
	.byte	0xe9
	.byte	0x27
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -216
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0xad6
	.uleb128 0x2f
	.4byte	.LASF300
	.byte	0x2
	.byte	0xfd
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -280
	.uleb128 0x2f
	.4byte	.LASF301
	.byte	0x2
	.byte	0xfe
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -284
	.uleb128 0x2b
	.4byte	.LASF302
	.byte	0x2
	.2byte	0x101
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -172
	.uleb128 0x2b
	.4byte	.LASF303
	.byte	0x2
	.2byte	0x102
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -288
	.uleb128 0x2c
	.ascii	"kp\000"
	.byte	0x2
	.2byte	0x104
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -176
	.uleb128 0x2c
	.ascii	"ki\000"
	.byte	0x2
	.2byte	0x105
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -180
	.uleb128 0x2c
	.ascii	"kd\000"
	.byte	0x2
	.2byte	0x106
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -184
	.uleb128 0x2c
	.ascii	"rp\000"
	.byte	0x2
	.2byte	0x108
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -188
	.uleb128 0x2c
	.ascii	"ri\000"
	.byte	0x2
	.2byte	0x109
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -192
	.uleb128 0x2c
	.ascii	"rd\000"
	.byte	0x2
	.2byte	0x10a
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.4byte	.LASF304
	.byte	0x2
	.2byte	0x10c
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -196
	.uleb128 0x2b
	.4byte	.LASF305
	.byte	0x2
	.2byte	0x125
	.byte	0x1f
	.4byte	0x404
	.uleb128 0x3
	.byte	0x91
	.sleb128 -200
	.uleb128 0x2b
	.4byte	.LASF306
	.byte	0x2
	.2byte	0x12d
	.byte	0x1d
	.4byte	0x89
	.uleb128 0x3
	.byte	0x91
	.sleb128 -204
	.byte	0
	.uleb128 0x30
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x34
	.4byte	.LASF308
	.byte	0x2
	.2byte	0x13c
	.byte	0x19
	.4byte	0x89
	.uleb128 0x33
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0xc4
	.4byte	0xb02
	.uleb128 0xb
	.4byte	0xa6
	.byte	0x13
	.byte	0
	.uleb128 0x35
	.4byte	.LASF311
	.byte	0x1
	.2byte	0x3bb
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3c
	.uleb128 0x2a
	.4byte	.LASF309
	.byte	0x1
	.2byte	0x3bb
	.byte	0x71
	.4byte	0xb3c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF310
	.byte	0x1
	.2byte	0x3bb
	.byte	0x86
	.4byte	0x90
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x9c
	.uleb128 0x35
	.4byte	.LASF312
	.byte	0x1
	.2byte	0x3a6
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6d
	.uleb128 0x2a
	.4byte	.LASF313
	.byte	0x1
	.2byte	0x3a6
	.byte	0x6e
	.4byte	0xb6d
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2d7
	.uleb128 0x36
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x386
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.4byte	.LASF314
	.byte	0x1
	.2byte	0x379
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb5
	.uleb128 0x2a
	.4byte	.LASF315
	.byte	0x1
	.2byte	0x379
	.byte	0x73
	.4byte	0x2ed
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF316
	.byte	0x1
	.2byte	0x363
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc0d
	.uleb128 0x2a
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x363
	.byte	0x5b
	.4byte	0x90
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x363
	.byte	0x70
	.4byte	0x90
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2a
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x363
	.byte	0x85
	.4byte	0x90
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2a
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x363
	.byte	0x9a
	.4byte	0x90
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x35
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x34c
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc38
	.uleb128 0x2a
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x34c
	.byte	0x5e
	.4byte	0x90
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x32c
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc81
	.uleb128 0x2a
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x32c
	.byte	0x5b
	.4byte	0x2a1
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x32c
	.byte	0x73
	.4byte	0xc81
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2a
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x32c
	.byte	0x83
	.4byte	0x90
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xa1
	.uleb128 0x35
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x307
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb2
	.uleb128 0x2a
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x307
	.byte	0x57
	.4byte	0xcb2
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x78
	.uleb128 0x35
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x2fc
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xce3
	.uleb128 0x2a
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x2fc
	.byte	0x57
	.4byte	0x2a1
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x2f1
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd1d
	.uleb128 0x2a
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x2f1
	.byte	0x5f
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x2f1
	.byte	0x87
	.4byte	0xd1d
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x326
	.uleb128 0x35
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x2e0
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd4e
	.uleb128 0x2a
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x2e0
	.byte	0x6b
	.4byte	0xd4e
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x315
	.uleb128 0x35
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x2d0
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd8e
	.uleb128 0x2a
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x2d0
	.byte	0x67
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x2d0
	.byte	0x75
	.4byte	0x30
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x35
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x2b1
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc8
	.uleb128 0x2a
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x2b1
	.byte	0x5a
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x2b1
	.byte	0x70
	.4byte	0x2a1
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x35
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x2a7
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe02
	.uleb128 0x2a
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x2a7
	.byte	0x5d
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x2a7
	.byte	0x71
	.4byte	0x90
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x35
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x29d
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe2d
	.uleb128 0x2a
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x29d
	.byte	0x63
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x294
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe58
	.uleb128 0x2a
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x294
	.byte	0x62
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x28b
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xea1
	.uleb128 0x2a
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x28b
	.byte	0x5f
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x28b
	.byte	0x82
	.4byte	0xea1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2a
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x28b
	.byte	0xa6
	.4byte	0xea1
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x3aa
	.uleb128 0x35
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x280
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed2
	.uleb128 0x2a
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x280
	.byte	0x64
	.4byte	0x90
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x278
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xefd
	.uleb128 0x2a
	.4byte	.LASF352
	.byte	0x1
	.2byte	0x278
	.byte	0x64
	.4byte	0x90
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF353
	.byte	0x1
	.2byte	0x270
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf28
	.uleb128 0x2a
	.4byte	.LASF354
	.byte	0x1
	.2byte	0x270
	.byte	0x66
	.4byte	0x2a1
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x36
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x268
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x24c
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf6a
	.uleb128 0x2a
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x24c
	.byte	0x66
	.4byte	0x2a1
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x36
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x241
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x36
	.4byte	.LASF360
	.byte	0x1
	.2byte	0x236
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.4byte	.LASF361
	.byte	0x1
	.2byte	0x229
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc3
	.uleb128 0x2a
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x229
	.byte	0x60
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF363
	.byte	0x1
	.2byte	0x220
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xffd
	.uleb128 0x2a
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x220
	.byte	0x60
	.4byte	0x90
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x220
	.byte	0x77
	.4byte	0x2a1
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x35
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x217
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1037
	.uleb128 0x2a
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x217
	.byte	0x60
	.4byte	0x90
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF367
	.byte	0x1
	.2byte	0x217
	.byte	0x76
	.4byte	0x90
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x35
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x20e
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1071
	.uleb128 0x2a
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x20e
	.byte	0x60
	.4byte	0x90
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF367
	.byte	0x1
	.2byte	0x20e
	.byte	0x76
	.4byte	0x90
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x35
	.4byte	.LASF369
	.byte	0x1
	.2byte	0x205
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10ab
	.uleb128 0x2a
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x205
	.byte	0x60
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x205
	.byte	0x72
	.4byte	0x2a1
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x35
	.4byte	.LASF372
	.byte	0x1
	.2byte	0x1fc
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10e5
	.uleb128 0x2a
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x1fc
	.byte	0x60
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x1fc
	.byte	0x70
	.4byte	0x90
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x35
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x1f3
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x111f
	.uleb128 0x2a
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x1f3
	.byte	0x60
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x1f3
	.byte	0x70
	.4byte	0x90
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x35
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x1e9
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x114a
	.uleb128 0x2a
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x1e9
	.byte	0x64
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x1de
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1175
	.uleb128 0x2a
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x1de
	.byte	0x5d
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x36
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x1d3
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x1cd
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11b7
	.uleb128 0x2a
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x1cd
	.byte	0x5b
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x1c4
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11e2
	.uleb128 0x2a
	.4byte	.LASF384
	.byte	0x1
	.2byte	0x1c4
	.byte	0x64
	.4byte	0x90
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x1bc
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x120d
	.uleb128 0x2a
	.4byte	.LASF386
	.byte	0x1
	.2byte	0x1bc
	.byte	0x66
	.4byte	0x2a1
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x1b4
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1247
	.uleb128 0x2a
	.4byte	.LASF388
	.byte	0x1
	.2byte	0x1b4
	.byte	0x6a
	.4byte	0x2b3
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2a
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x1b4
	.byte	0x7a
	.4byte	0x30
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x35
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x1aa
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1272
	.uleb128 0x2a
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x1aa
	.byte	0x73
	.4byte	0x2b3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x1a2
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x129d
	.uleb128 0x2a
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x1a2
	.byte	0x71
	.4byte	0x2b3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x19a
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12c8
	.uleb128 0x2a
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x19a
	.byte	0x60
	.4byte	0x12c8
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2b9
	.uleb128 0x35
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x192
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12f9
	.uleb128 0x2a
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x192
	.byte	0x60
	.4byte	0x12c8
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x37
	.4byte	.LASF400
	.byte	0x1
	.2byte	0x189
	.byte	0x41
	.4byte	0x90
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2a
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x189
	.byte	0x5c
	.4byte	0x12c8
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x38
	.byte	0x98
	.byte	0x37
	.byte	0x16
	.byte	0xc4
	.byte	0xa1
	.byte	0x1
	.byte	0x34
	.byte	0x25
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x2e
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x13
	.byte	0
	.uleb128 0x69
	.uleb128 0x20
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xa26
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x132a
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
	.4byte	0x2b
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
	.4byte	0x31
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
	.4byte	0x37
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
	.4byte	0x3d
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
	.4byte	0x43
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
	.4byte	0x49
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
	.4byte	0x4ef
	.ascii	"leftI\000"
	.4byte	0x502
	.ascii	"rightI\000"
	.4byte	0x4ef
	.ascii	"leftI\000"
	.4byte	0x502
	.ascii	"rightI\000"
	.4byte	0x515
	.ascii	"motorRegulator\000"
	.4byte	0x5c9
	.ascii	"vMainPoseControllerTask\000"
	.4byte	0x960
	.ascii	"display_text_on_line\000"
	.4byte	0xadf
	.ascii	"send_idle\000"
	.4byte	0xb02
	.ascii	"sd_protected_register_write\000"
	.4byte	0xb42
	.ascii	"sd_radio_request\000"
	.4byte	0xb73
	.ascii	"sd_radio_session_close\000"
	.4byte	0xb8a
	.ascii	"sd_radio_session_open\000"
	.4byte	0xbb5
	.ascii	"sd_flash_protect\000"
	.4byte	0xc0d
	.ascii	"sd_flash_page_erase\000"
	.4byte	0xc38
	.ascii	"sd_flash_write\000"
	.4byte	0xc87
	.ascii	"sd_temp_get\000"
	.4byte	0xcb8
	.ascii	"sd_evt_get\000"
	.4byte	0xce3
	.ascii	"sd_ecb_blocks_encrypt\000"
	.4byte	0xd23
	.ascii	"sd_ecb_block_encrypt\000"
	.4byte	0xd54
	.ascii	"sd_radio_notification_cfg_set\000"
	.4byte	0xd8e
	.ascii	"sd_ppi_group_get\000"
	.4byte	0xdc8
	.ascii	"sd_ppi_group_assign\000"
	.4byte	0xe02
	.ascii	"sd_ppi_group_task_disable\000"
	.4byte	0xe2d
	.ascii	"sd_ppi_group_task_enable\000"
	.4byte	0xe58
	.ascii	"sd_ppi_channel_assign\000"
	.4byte	0xea7
	.ascii	"sd_ppi_channel_enable_clr\000"
	.4byte	0xed2
	.ascii	"sd_ppi_channel_enable_set\000"
	.4byte	0xefd
	.ascii	"sd_ppi_channel_enable_get\000"
	.4byte	0xf28
	.ascii	"sd_app_evt_wait\000"
	.4byte	0xf3f
	.ascii	"sd_clock_hfclk_is_running\000"
	.4byte	0xf6a
	.ascii	"sd_clock_hfclk_release\000"
	.4byte	0xf81
	.ascii	"sd_clock_hfclk_request\000"
	.4byte	0xf98
	.ascii	"sd_power_dcdc_mode_set\000"
	.4byte	0xfc3
	.ascii	"sd_power_gpregret_get\000"
	.4byte	0xffd
	.ascii	"sd_power_gpregret_clr\000"
	.4byte	0x1037
	.ascii	"sd_power_gpregret_set\000"
	.4byte	0x1071
	.ascii	"sd_power_ram_power_get\000"
	.4byte	0x10ab
	.ascii	"sd_power_ram_power_clr\000"
	.4byte	0x10e5
	.ascii	"sd_power_ram_power_set\000"
	.4byte	0x111f
	.ascii	"sd_power_pof_threshold_set\000"
	.4byte	0x114a
	.ascii	"sd_power_pof_enable\000"
	.4byte	0x1175
	.ascii	"sd_power_system_off\000"
	.4byte	0x118c
	.ascii	"sd_power_mode_set\000"
	.4byte	0x11b7
	.ascii	"sd_power_reset_reason_clr\000"
	.4byte	0x11e2
	.ascii	"sd_power_reset_reason_get\000"
	.4byte	0x120d
	.ascii	"sd_rand_application_vector_get\000"
	.4byte	0x1247
	.ascii	"sd_rand_application_bytes_available_get\000"
	.4byte	0x1272
	.ascii	"sd_rand_application_pool_capacity_get\000"
	.4byte	0x129d
	.ascii	"sd_mutex_release\000"
	.4byte	0x12ce
	.ascii	"sd_mutex_acquire\000"
	.4byte	0x12f9
	.ascii	"sd_mutex_new\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x31f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x132a
	.4byte	0x29
	.ascii	"signed char\000"
	.4byte	0x41
	.ascii	"unsigned char\000"
	.4byte	0x30
	.ascii	"uint8_t\000"
	.4byte	0x5e
	.ascii	"short int\000"
	.4byte	0x4d
	.ascii	"int16_t\000"
	.4byte	0x71
	.ascii	"short unsigned int\000"
	.4byte	0x65
	.ascii	"uint16_t\000"
	.4byte	0x89
	.ascii	"int\000"
	.4byte	0x78
	.ascii	"int32_t\000"
	.4byte	0xa6
	.ascii	"unsigned int\000"
	.4byte	0x90
	.ascii	"uint32_t\000"
	.4byte	0xad
	.ascii	"long long int\000"
	.4byte	0xb4
	.ascii	"long long unsigned int\000"
	.4byte	0xbd
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xc4
	.ascii	"char\000"
	.4byte	0xd0
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xe5
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x240
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0xb
	.ascii	"NRF_SOC_SVCS\000"
	.4byte	0x2b9
	.ascii	"nrf_mutex_t\000"
	.4byte	0x2c6
	.ascii	"nrf_radio_request_t\000"
	.4byte	0x2dc
	.ascii	"nrf_radio_signal_callback_return_param_t\000"
	.4byte	0x2ed
	.ascii	"nrf_radio_signal_callback_t\000"
	.4byte	0x315
	.ascii	"nrf_ecb_hal_data_t\000"
	.4byte	0x326
	.ascii	"nrf_ecb_hal_data_block_t\000"
	.4byte	0x337
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x353
	.ascii	"FILE\000"
	.4byte	0x392
	.ascii	"_Bool\000"
	.4byte	0x399
	.ascii	"encoderTicks\000"
	.4byte	0x3af
	.ascii	"SEGGER_RTT_CB\000"
	.4byte	0x3e5
	.ascii	"long unsigned int\000"
	.4byte	0x3ec
	.ascii	"BaseType_t\000"
	.4byte	0x3f8
	.ascii	"TickType_t\000"
	.4byte	0x404
	.ascii	"float\000"
	.4byte	0x40b
	.ascii	"double\000"
	.4byte	0x412
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x42f
	.ascii	"QueueHandle_t\000"
	.4byte	0x43b
	.ascii	"SemaphoreHandle_t\000"
	.4byte	0xb
	.ascii	"sCartesian\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x17c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.4byte	.LFB292
	.4byte	.LFE292-.LFB292
	.4byte	.LFB293
	.4byte	.LFE293-.LFB293
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
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
	.4byte	.LFB167
	.4byte	.LFE167
	.4byte	.LFB168
	.4byte	.LFE168
	.4byte	.LFB169
	.4byte	.LFE169
	.4byte	.LFB170
	.4byte	.LFE170
	.4byte	.LFB171
	.4byte	.LFE171
	.4byte	.LFB172
	.4byte	.LFE172
	.4byte	.LFB173
	.4byte	.LFE173
	.4byte	.LFB174
	.4byte	.LFE174
	.4byte	.LFB175
	.4byte	.LFE175
	.4byte	.LFB176
	.4byte	.LFE176
	.4byte	.LFB177
	.4byte	.LFE177
	.4byte	.LFB178
	.4byte	.LFE178
	.4byte	.LFB179
	.4byte	.LFE179
	.4byte	.LFB180
	.4byte	.LFE180
	.4byte	.LFB181
	.4byte	.LFE181
	.4byte	.LFB182
	.4byte	.LFE182
	.4byte	.LFB183
	.4byte	.LFE183
	.4byte	.LFB184
	.4byte	.LFE184
	.4byte	.LFB185
	.4byte	.LFE185
	.4byte	.LFB186
	.4byte	.LFE186
	.4byte	.LFB187
	.4byte	.LFE187
	.4byte	.LFB188
	.4byte	.LFE188
	.4byte	.LFB189
	.4byte	.LFE189
	.4byte	.LFB190
	.4byte	.LFE190
	.4byte	.LFB191
	.4byte	.LFE191
	.4byte	.LFB192
	.4byte	.LFE192
	.4byte	.LFB193
	.4byte	.LFE193
	.4byte	.LFB194
	.4byte	.LFE194
	.4byte	.LFB195
	.4byte	.LFE195
	.4byte	.LFB292
	.4byte	.LFE292
	.4byte	.LFB293
	.4byte	.LFE293
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
	.file 18 "../../../drivers/defines.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x12
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x6
	.file 19 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x13
	.file 20 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x14
	.file 21 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x15
	.file 22 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x16
	.byte	0x4
	.byte	0x4
	.file 23 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x17
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x4
	.byte	0x4
	.file 24 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.file 25 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x19
	.byte	0x4
	.file 26 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x1a
	.file 27 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x1b
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x9
	.file 28 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x1c
	.file 29 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x1d
	.byte	0x4
	.byte	0x4
	.file 30 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x1e
	.byte	0x4
	.file 31 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.file 32 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x20
	.byte	0x4
	.file 33 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x21
	.byte	0x4
	.file 34 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x22
	.byte	0x4
	.file 35 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.file 36 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x24
	.file 37 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x25
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 38 "../../../../../../integration/nrfx/nrfx_glue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x26
	.file 39 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x27
	.byte	0x4
	.file 40 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x28
	.file 41 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x29
	.byte	0x4
	.byte	0x4
	.file 42 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x2a
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x23
	.byte	0x4
	.file 43 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x2b
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb6
	.uleb128 0x2b
	.byte	0x4
	.file 44 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0xb7
	.uleb128 0x2c
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x1
	.file 45 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x2d
	.byte	0x4
	.file 46 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x4
	.file 47 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x2f
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2a
	.byte	0x4
	.file 48 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x30
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xc
	.byte	0x4
	.file 49 "../../../../../../components/libraries/util/sdk_errors.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x31
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x2e
	.byte	0x4
	.byte	0x4
	.file 50 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x32
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 51 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x33
	.byte	0x4
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x31
	.byte	0x4
	.file 52 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x34
	.file 53 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x35
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 54 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x36
	.byte	0x4
	.byte	0x4
	.file 55 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x37
	.byte	0x4
	.file 56 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x38
	.byte	0x4
	.byte	0x4
	.file 57 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x39
	.file 58 "../../../../../../modules/nrfx/hal/nrf_timer.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x3a
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 59 "../../../../../../external/freertos/source/include/freeRTOS.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x3b
	.file 60 "../../../config/FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x3c
	.file 61 "../../../TraceRecorder/include/trcRecorder.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x3d
	.file 62 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x3e
	.byte	0x4
	.file 63 "../../../config/trcConfig.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x3f
	.file 64 "../../../TraceRecorder/include/trcPortDefines.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x40
	.byte	0x4
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x1b
	.byte	0x4
	.file 65 "../../../config/trcStreamingConfig.h"
	.byte	0x3
	.uleb128 0x127
	.uleb128 0x41
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x40
	.byte	0x4
	.file 66 "../../../TraceRecorder/include/trcHardwarePort.h"
	.byte	0x3
	.uleb128 0x4f
	.uleb128 0x42
	.byte	0x4
	.file 67 "../../../TraceRecorder/streamports/Jlink_RTT/include/trcStreamingPort.h"
	.byte	0x3
	.uleb128 0x50
	.uleb128 0x43
	.file 68 "../../../TraceRecorder/streamports/Jlink_RTT/include/SEGGER_RTT_Conf.h"
	.byte	0x3
	.uleb128 0x85
	.uleb128 0x44
	.byte	0x4
	.byte	0x3
	.uleb128 0x86
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0xd
	.file 69 "../../../../../../external/freertos/source/include/FreeRTOS.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x45
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 70 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd6
	.uleb128 0x46
	.file 71 "../../../systemView/SEGGER_SYSVIEW.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x47
	.file 72 "../../../systemView/SEGGER.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x48
	.file 73 "../../../systemView/Global.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0x49
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 74 "../../../../../../external/freertos/source/include/projdefs.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x4a
	.byte	0x4
	.file 75 "../../../../../../external/freertos/source/include/portable.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x4b
	.file 76 "../../../../../../external/freertos/source/include/deprecated_definitions.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x4c
	.byte	0x4
	.file 77 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x4d
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.file 78 "../../../../../../external/freertos/source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x4e
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 79 "../../../drivers/functions.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4f
	.byte	0x4
	.file 80 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x50
	.byte	0x4
	.file 81 "../../../drivers/motor.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x51
	.byte	0x4
	.file 82 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x7
	.uleb128 0x52
	.file 83 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x53
	.file 84 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x54
	.byte	0x4
	.file 85 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x55
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x4
	.file 86 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x56
	.byte	0x4
	.byte	0x4
	.file 87 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x57
	.byte	0x4
	.file 88 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x58
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0xf
	.file 89 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x59
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x10
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x11
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x10
	.byte	0x4
	.byte	0x4
	.file 90 "../../../../../../external/freertos/source/include/timers.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x5a
	.file 91 "../../../../../../external/freertos/source/include/task.h"
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x5b
	.file 92 "../../../../../../external/freertos/source/include/list.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x5c
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF317:
	.ascii	"block_cfg0\000"
.LASF318:
	.ascii	"block_cfg1\000"
.LASF319:
	.ascii	"block_cfg2\000"
.LASF320:
	.ascii	"block_cfg3\000"
.LASF54:
	.ascii	"hfclk\000"
.LASF357:
	.ascii	"sd_clock_hfclk_is_running\000"
.LASF237:
	.ascii	"lefterror\000"
.LASF188:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF43:
	.ascii	"params\000"
.LASF383:
	.ascii	"sd_power_reset_reason_clr\000"
.LASF184:
	.ascii	"SystemCoreClock\000"
.LASF110:
	.ascii	"name\000"
.LASF343:
	.ascii	"sd_ppi_group_task_disable\000"
.LASF31:
	.ascii	"__cr_flag\000"
.LASF368:
	.ascii	"sd_power_gpregret_set\000"
.LASF279:
	.ascii	"stuckIncrement\000"
.LASF375:
	.ascii	"ram_powerset\000"
.LASF286:
	.ascii	"newOrder\000"
.LASF201:
	.ascii	"stderr\000"
.LASF303:
	.ascii	"thetaPastMid\000"
.LASF345:
	.ascii	"sd_ppi_channel_assign\000"
.LASF248:
	.ascii	"driveThreshold\000"
.LASF324:
	.ascii	"p_dst\000"
.LASF2:
	.ascii	"module_id\000"
.LASF352:
	.ascii	"channel_enable_set_msk\000"
.LASF0:
	.ascii	"sCartesian\000"
.LASF266:
	.ascii	"rightIntError\000"
.LASF278:
	.ascii	"currentDriveActuation\000"
.LASF365:
	.ascii	"p_gpregret\000"
.LASF360:
	.ascii	"sd_clock_hfclk_request\000"
.LASF8:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF135:
	.ascii	"p_cs_precedes\000"
.LASF18:
	.ascii	"unsigned int\000"
.LASF105:
	.ascii	"next\000"
.LASF41:
	.ascii	"soc_ecb_cleartext_t\000"
.LASF87:
	.ascii	"SD_POWER_GPREGRET_GET\000"
.LASF45:
	.ascii	"extend\000"
.LASF21:
	.ascii	"sName\000"
.LASF169:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF154:
	.ascii	"date_time_format\000"
.LASF390:
	.ascii	"sd_rand_application_bytes_available_get\000"
.LASF283:
	.ascii	"bBaseUpRampActFound\000"
.LASF381:
	.ascii	"sd_power_mode_set\000"
.LASF153:
	.ascii	"time_format\000"
.LASF119:
	.ascii	"__towupper\000"
.LASF59:
	.ascii	"SD_PPI_CHANNEL_ENABLE_SET\000"
.LASF42:
	.ascii	"callback_action\000"
.LASF25:
	.ascii	"RdOff\000"
.LASF149:
	.ascii	"month_names\000"
.LASF38:
	.ascii	"cleartext\000"
.LASF39:
	.ascii	"ciphertext\000"
.LASF355:
	.ascii	"sd_radio_session_close\000"
.LASF92:
	.ascii	"SD_CLOCK_HFCLK_IS_RUNNING\000"
.LASF22:
	.ascii	"pBuffer\000"
.LASF117:
	.ascii	"__tolower\000"
.LASF321:
	.ascii	"sd_flash_page_erase\000"
.LASF73:
	.ascii	"SD_RAND_APPLICATION_POOL_CAPACITY_GET\000"
.LASF134:
	.ascii	"frac_digits\000"
.LASF100:
	.ascii	"SD_TEMP_GET\000"
.LASF128:
	.ascii	"mon_decimal_point\000"
.LASF346:
	.ascii	"channel_num\000"
.LASF67:
	.ascii	"SD_FLASH_WRITE\000"
.LASF60:
	.ascii	"SD_PPI_CHANNEL_ENABLE_CLR\000"
.LASF366:
	.ascii	"sd_power_gpregret_clr\000"
.LASF242:
	.ascii	"Setpoint\000"
.LASF172:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF385:
	.ascii	"sd_power_reset_reason_get\000"
.LASF238:
	.ascii	"righterror\000"
.LASF262:
	.ascii	"xdiff\000"
.LASF190:
	.ascii	"nrf_radio_signal_callback_return_param_t\000"
.LASF123:
	.ascii	"decimal_point\000"
.LASF36:
	.ascii	"soc_ecb_ciphertext_t\000"
.LASF57:
	.ascii	"timeout_us\000"
.LASF193:
	.ascii	"nrf_ecb_hal_data_block_t\000"
.LASF156:
	.ascii	"__state\000"
.LASF313:
	.ascii	"p_request\000"
.LASF146:
	.ascii	"int_n_sign_posn\000"
.LASF108:
	.ascii	"__category\000"
.LASF232:
	.ascii	"lspeed\000"
.LASF225:
	.ascii	"poseControllerQ\000"
.LASF140:
	.ascii	"n_sign_posn\000"
.LASF376:
	.ascii	"sd_power_pof_threshold_set\000"
.LASF392:
	.ascii	"sd_rand_application_pool_capacity_get\000"
.LASF32:
	.ascii	"uint32_t\000"
.LASF16:
	.ascii	"aDown\000"
.LASF118:
	.ascii	"__iswctype\000"
.LASF136:
	.ascii	"p_sep_by_space\000"
.LASF200:
	.ascii	"stdout\000"
.LASF80:
	.ascii	"SD_POWER_POF_ENABLE\000"
.LASF273:
	.ascii	"prevDist\000"
.LASF10:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF52:
	.ascii	"nrf_radio_request_earliest_t\000"
.LASF69:
	.ascii	"SD_PROTECTED_REGISTER_WRITE\000"
.LASF26:
	.ascii	"Flags\000"
.LASF95:
	.ascii	"SD_ECB_BLOCKS_ENCRYPT\000"
.LASF150:
	.ascii	"abbrev_month_names\000"
.LASF1:
	.ascii	"float\000"
.LASF315:
	.ascii	"p_radio_signal_callback\000"
.LASF191:
	.ascii	"nrf_radio_signal_callback_t\000"
.LASF370:
	.ascii	"index\000"
.LASF177:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF159:
	.ascii	"int16_t\000"
.LASF301:
	.ascii	"thetaTurn\000"
.LASF174:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF163:
	.ascii	"long long unsigned int\000"
.LASF231:
	.ascii	"rightI\000"
.LASF374:
	.ascii	"sd_power_ram_power_set\000"
.LASF245:
	.ascii	"lastMovement\000"
.LASF179:
	.ascii	"__user_set_time_of_day\000"
.LASF203:
	.ascii	"encoderTicks\000"
.LASF182:
	.ascii	"__RAL_error_decoder_head\000"
.LASF363:
	.ascii	"sd_power_gpregret_get\000"
.LASF235:
	.ascii	"Lspeed\000"
.LASF287:
	.ascii	"initIncrement\000"
.LASF98:
	.ascii	"SD_RADIO_REQUEST\000"
.LASF7:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF243:
	.ascii	"Error\000"
.LASF310:
	.ascii	"value\000"
.LASF280:
	.ascii	"idlesendtInc\000"
.LASF329:
	.ascii	"sd_evt_get\000"
.LASF197:
	.ascii	"timeval\000"
.LASF157:
	.ascii	"__wchar\000"
.LASF47:
	.ascii	"p_next\000"
.LASF316:
	.ascii	"sd_flash_protect\000"
.LASF66:
	.ascii	"SD_FLASH_PAGE_ERASE\000"
.LASF139:
	.ascii	"p_sign_posn\000"
.LASF121:
	.ascii	"__wctomb\000"
.LASF367:
	.ascii	"gpregret_msk\000"
.LASF144:
	.ascii	"int_n_sep_by_space\000"
.LASF141:
	.ascii	"int_p_cs_precedes\000"
.LASF281:
	.ascii	"baseUpRampActuation\000"
.LASF64:
	.ascii	"SD_PPI_GROUP_ASSIGN\000"
.LASF347:
	.ascii	"evt_endpoint\000"
.LASF229:
	.ascii	"xTickMutex\000"
.LASF198:
	.ascii	"__RAL_FILE\000"
.LASF331:
	.ascii	"sd_ecb_blocks_encrypt\000"
.LASF82:
	.ascii	"SD_POWER_RAM_POWER_SET\000"
.LASF58:
	.ascii	"SD_PPI_CHANNEL_ENABLE_GET\000"
.LASF49:
	.ascii	"request_type\000"
.LASF199:
	.ascii	"stdin\000"
.LASF289:
	.ascii	"str4\000"
.LASF74:
	.ascii	"SD_RAND_APPLICATION_BYTES_AVAILABLE_GET\000"
.LASF133:
	.ascii	"int_frac_digits\000"
.LASF306:
	.ascii	"drive\000"
.LASF272:
	.ascii	"distanceStart\000"
.LASF333:
	.ascii	"p_data_blocks\000"
.LASF372:
	.ascii	"sd_power_ram_power_clr\000"
.LASF142:
	.ascii	"int_n_cs_precedes\000"
.LASF76:
	.ascii	"SD_POWER_MODE_SET\000"
.LASF70:
	.ascii	"SD_MUTEX_NEW\000"
.LASF145:
	.ascii	"int_p_sign_posn\000"
.LASF259:
	.ascii	"thetaDiffInt\000"
.LASF56:
	.ascii	"distance_us\000"
.LASF267:
	.ascii	"doneTurning\000"
.LASF205:
	.ascii	"_SEGGER_RTT\000"
.LASF252:
	.ascii	"speedIncreaseThreshold\000"
.LASF234:
	.ascii	"ticks\000"
.LASF125:
	.ascii	"grouping\000"
.LASF19:
	.ascii	"SEGGER_RTT_BUFFER_UP\000"
.LASF217:
	.ascii	"gY_hat\000"
.LASF311:
	.ascii	"sd_protected_register_write\000"
.LASF44:
	.ascii	"request\000"
.LASF17:
	.ascii	"char\000"
.LASF101:
	.ascii	"SVC_SOC_LAST\000"
.LASF75:
	.ascii	"SD_RAND_APPLICATION_VECTOR_GET\000"
.LASF362:
	.ascii	"dcdc_mode\000"
.LASF341:
	.ascii	"sd_ppi_group_assign\000"
.LASF109:
	.ascii	"__RAL_locale_t\000"
.LASF254:
	.ascii	"xhat\000"
.LASF274:
	.ascii	"prevThetaDiff\000"
.LASF247:
	.ascii	"rotateThreshold\000"
.LASF178:
	.ascii	"__RAL_data_empty_string\000"
.LASF236:
	.ascii	"Rspeed\000"
.LASF71:
	.ascii	"SD_MUTEX_ACQUIRE\000"
.LASF292:
	.ascii	"stuckValueFound\000"
.LASF220:
	.ascii	"gPaused\000"
.LASF102:
	.ascii	"NRF_SOC_SVCS\000"
.LASF296:
	.ascii	"temp_dec\000"
.LASF264:
	.ascii	"thetaTargt\000"
.LASF120:
	.ascii	"__towlower\000"
.LASF111:
	.ascii	"data\000"
.LASF214:
	.ascii	"QueueHandle_t\000"
.LASF227:
	.ascii	"xControllerBSem\000"
.LASF305:
	.ascii	"drivef\000"
.LASF257:
	.ascii	"thetaDiff\000"
.LASF328:
	.ascii	"p_temp\000"
.LASF37:
	.ascii	"uint8_t\000"
.LASF378:
	.ascii	"sd_power_pof_enable\000"
.LASF99:
	.ascii	"SD_EVT_GET\000"
.LASF282:
	.ascii	"baseDownRampActuation\000"
.LASF293:
	.ascii	"shortDistIncRatio\000"
.LASF20:
	.ascii	"SEGGER_RTT_BUFFER_DOWN\000"
.LASF270:
	.ascii	"idleSendt\000"
.LASF361:
	.ascii	"sd_power_dcdc_mode_set\000"
.LASF88:
	.ascii	"SD_POWER_DCDC_MODE_SET\000"
.LASF28:
	.ascii	"right\000"
.LASF11:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF393:
	.ascii	"p_pool_capacity\000"
.LASF94:
	.ascii	"SD_ECB_BLOCK_ENCRYPT\000"
.LASF185:
	.ascii	"__StackTop\000"
.LASF275:
	.ascii	"thetahatStart\000"
.LASF162:
	.ascii	"long long int\000"
.LASF389:
	.ascii	"length\000"
.LASF151:
	.ascii	"am_pm_indicator\000"
.LASF3:
	.ascii	"padding\000"
.LASF65:
	.ascii	"SD_PPI_GROUP_GET\000"
.LASF72:
	.ascii	"SD_MUTEX_RELEASE\000"
.LASF130:
	.ascii	"mon_grouping\000"
.LASF14:
	.ascii	"MaxNumUpBuffers\000"
.LASF209:
	.ascii	"BaseType_t\000"
.LASF379:
	.ascii	"pof_enable\000"
.LASF261:
	.ascii	"yTargt\000"
.LASF6:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF285:
	.ascii	"starteds\000"
.LASF24:
	.ascii	"WrOff\000"
.LASF228:
	.ascii	"xPoseMutex\000"
.LASF97:
	.ascii	"SD_RADIO_SESSION_CLOSE\000"
.LASF90:
	.ascii	"SD_CLOCK_HFCLK_REQUEST\000"
.LASF194:
	.ascii	"nrf_nvic_state_t\000"
.LASF126:
	.ascii	"int_curr_symbol\000"
.LASF344:
	.ascii	"sd_ppi_group_task_enable\000"
.LASF212:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF314:
	.ascii	"sd_radio_session_open\000"
.LASF53:
	.ascii	"nrf_radio_request_normal_t\000"
.LASF326:
	.ascii	"size\000"
.LASF81:
	.ascii	"SD_POWER_POF_THRESHOLD_SET\000"
.LASF304:
	.ascii	"maxTurnBoost\000"
.LASF48:
	.ascii	"nrf_radio_request_t\000"
.LASF380:
	.ascii	"sd_power_system_off\000"
.LASF147:
	.ascii	"day_names\000"
.LASF89:
	.ascii	"SD_APP_EVT_WAIT\000"
.LASF269:
	.ascii	"RSpeed\000"
.LASF350:
	.ascii	"channel_enable_clr_msk\000"
.LASF369:
	.ascii	"sd_power_ram_power_get\000"
.LASF104:
	.ascii	"decode\000"
.LASF295:
	.ascii	"temp_inc\000"
.LASF309:
	.ascii	"p_register\000"
.LASF399:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF202:
	.ascii	"_Bool\000"
.LASF168:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF371:
	.ascii	"p_ram_power\000"
.LASF244:
	.ascii	"radiusEpsilon\000"
.LASF210:
	.ascii	"TickType_t\000"
.LASF91:
	.ascii	"SD_CLOCK_HFCLK_RELEASE\000"
.LASF327:
	.ascii	"sd_temp_get\000"
.LASF336:
	.ascii	"sd_radio_notification_cfg_set\000"
.LASF359:
	.ascii	"sd_clock_hfclk_release\000"
.LASF155:
	.ascii	"__mbstate_s\000"
.LASF294:
	.ascii	"shortDistDecRatio\000"
.LASF132:
	.ascii	"negative_sign\000"
.LASF400:
	.ascii	"sd_mutex_new\000"
.LASF334:
	.ascii	"sd_ecb_block_encrypt\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF186:
	.ascii	"__StackLimit\000"
.LASF382:
	.ascii	"power_mode\000"
.LASF122:
	.ascii	"__mbtowc\000"
.LASF330:
	.ascii	"p_evt_id\000"
.LASF276:
	.ascii	"xhatStart\000"
.LASF166:
	.ascii	"__RAL_codeset_ascii\000"
.LASF13:
	.ascii	"acID\000"
.LASF114:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF112:
	.ascii	"codeset\000"
.LASF61:
	.ascii	"SD_PPI_CHANNEL_ASSIGN\000"
.LASF30:
	.ascii	"__irq_masks\000"
.LASF116:
	.ascii	"__toupper\000"
.LASF299:
	.ascii	"minDownDrive\000"
.LASF332:
	.ascii	"block_count\000"
.LASF322:
	.ascii	"page_number\000"
.LASF160:
	.ascii	"short int\000"
.LASF340:
	.ascii	"p_channel_msk\000"
.LASF222:
	.ascii	"gRight\000"
.LASF387:
	.ascii	"sd_rand_application_vector_get\000"
.LASF241:
	.ascii	"pvParameters\000"
.LASF113:
	.ascii	"__RAL_locale_data_t\000"
.LASF29:
	.ascii	"long int\000"
.LASF395:
	.ascii	"p_mutex\000"
.LASF106:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF183:
	.ascii	"ITM_RxBuffer\000"
.LASF62:
	.ascii	"SD_PPI_GROUP_TASK_ENABLE\000"
.LASF213:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF215:
	.ascii	"SemaphoreHandle_t\000"
.LASF397:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -fomit-frame-poi"
	.ascii	"nter -fno-dwarf2-cfi-asm -fno-builtin -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF224:
	.ascii	"gLeftWheelTicks\000"
.LASF373:
	.ascii	"ram_powerclr\000"
.LASF256:
	.ascii	"distance\000"
.LASF55:
	.ascii	"priority\000"
.LASF384:
	.ascii	"reset_reason_clr_msk\000"
.LASF223:
	.ascii	"gRightWheelTicks\000"
.LASF312:
	.ascii	"sd_radio_request\000"
.LASF302:
	.ascii	"thetaMid\000"
.LASF206:
	.ascii	"CurrentFilterMask\000"
.LASF246:
	.ascii	"maxDriveActuation\000"
.LASF391:
	.ascii	"p_bytes_available\000"
.LASF230:
	.ascii	"leftI\000"
.LASF204:
	.ascii	"SEGGER_RTT_CB\000"
.LASF9:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF364:
	.ascii	"gpregret_id\000"
.LASF115:
	.ascii	"__isctype\000"
.LASF167:
	.ascii	"__RAL_codeset_utf8\000"
.LASF78:
	.ascii	"SD_POWER_RESET_REASON_GET\000"
.LASF77:
	.ascii	"SD_POWER_SYSTEM_OFF\000"
.LASF27:
	.ascii	"left\000"
.LASF50:
	.ascii	"earliest\000"
.LASF96:
	.ascii	"SD_RADIO_SESSION_OPEN\000"
.LASF131:
	.ascii	"positive_sign\000"
.LASF143:
	.ascii	"int_p_sep_by_space\000"
.LASF216:
	.ascii	"gX_hat\000"
.LASF192:
	.ascii	"nrf_ecb_hal_data_t\000"
.LASF173:
	.ascii	"__RAL_data_utf8_period\000"
.LASF79:
	.ascii	"SD_POWER_RESET_REASON_CLR\000"
.LASF83:
	.ascii	"SD_POWER_RAM_POWER_CLR\000"
.LASF221:
	.ascii	"gLeft\000"
.LASF323:
	.ascii	"sd_flash_write\000"
.LASF219:
	.ascii	"gHandshook\000"
.LASF208:
	.ascii	"long unsigned int\000"
.LASF164:
	.ascii	"__RAL_global_locale\000"
.LASF170:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF23:
	.ascii	"SizeOfBuffer\000"
.LASF356:
	.ascii	"sd_app_evt_wait\000"
.LASF161:
	.ascii	"int32_t\000"
.LASF288:
	.ascii	"bStuck\000"
.LASF233:
	.ascii	"rspeed\000"
.LASF263:
	.ascii	"ydiff\000"
.LASF138:
	.ascii	"n_sep_by_space\000"
.LASF226:
	.ascii	"scanStatusQ\000"
.LASF240:
	.ascii	"vMainPoseControllerTask\000"
.LASF290:
	.ascii	"dLeft\000"
.LASF129:
	.ascii	"mon_thousands_sep\000"
.LASF250:
	.ascii	"driveKi\000"
.LASF339:
	.ascii	"group_num\000"
.LASF354:
	.ascii	"p_channel_enable\000"
.LASF337:
	.ascii	"type\000"
.LASF175:
	.ascii	"__RAL_data_utf8_space\000"
.LASF249:
	.ascii	"driveKp\000"
.LASF12:
	.ascii	"unsigned char\000"
.LASF284:
	.ascii	"bBaseDownRampActFound\000"
.LASF165:
	.ascii	"__RAL_c_locale\000"
.LASF85:
	.ascii	"SD_POWER_GPREGRET_SET\000"
.LASF171:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF338:
	.ascii	"sd_ppi_group_get\000"
.LASF195:
	.ascii	"nrf_nvic_state\000"
.LASF46:
	.ascii	"length_us\000"
.LASF40:
	.ascii	"soc_ecb_key_t\000"
.LASF218:
	.ascii	"gTheta_hat\000"
.LASF342:
	.ascii	"channel_msk\000"
.LASF207:
	.ascii	"CurrentFilterGroup\000"
.LASF68:
	.ascii	"SD_FLASH_PROTECT\000"
.LASF291:
	.ascii	"dRight\000"
.LASF297:
	.ascii	"distanceTraveled\000"
.LASF307:
	.ascii	"display_text_on_line\000"
.LASF148:
	.ascii	"abbrev_day_names\000"
.LASF308:
	.ascii	"send_idle\000"
.LASF127:
	.ascii	"currency_symbol\000"
.LASF93:
	.ascii	"SD_RADIO_NOTIFICATION_CFG_SET\000"
.LASF260:
	.ascii	"xTargt\000"
.LASF239:
	.ascii	"motorRegulator\000"
.LASF34:
	.ascii	"p_cleartext\000"
.LASF377:
	.ascii	"threshold\000"
.LASF300:
	.ascii	"thetaTurned\000"
.LASF35:
	.ascii	"p_ciphertext\000"
.LASF396:
	.ascii	"sd_mutex_acquire\000"
.LASF258:
	.ascii	"thetaDer\000"
.LASF84:
	.ascii	"SD_POWER_RAM_POWER_GET\000"
.LASF349:
	.ascii	"sd_ppi_channel_enable_clr\000"
.LASF358:
	.ascii	"p_is_running\000"
.LASF158:
	.ascii	"signed char\000"
.LASF33:
	.ascii	"p_key\000"
.LASF176:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF253:
	.ascii	"thetahat\000"
.LASF325:
	.ascii	"p_src\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF386:
	.ascii	"p_reset_reason\000"
.LASF15:
	.ascii	"MaxNumDownBuffers\000"
.LASF187:
	.ascii	"_vectors\000"
.LASF137:
	.ascii	"n_cs_precedes\000"
.LASF251:
	.ascii	"speedDecreaseThreshold\000"
.LASF277:
	.ascii	"yhatStart\000"
.LASF353:
	.ascii	"sd_ppi_channel_enable_get\000"
.LASF351:
	.ascii	"sd_ppi_channel_enable_set\000"
.LASF180:
	.ascii	"__user_get_time_of_day\000"
.LASF211:
	.ascii	"double\000"
.LASF388:
	.ascii	"p_buff\000"
.LASF398:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_applicationLeithe\\software\\ControllerTas"
	.ascii	"k.c\000"
.LASF63:
	.ascii	"SD_PPI_GROUP_TASK_DISABLE\000"
.LASF86:
	.ascii	"SD_POWER_GPREGRET_CLR\000"
.LASF348:
	.ascii	"task_endpoint\000"
.LASF265:
	.ascii	"leftIntError\000"
.LASF394:
	.ascii	"sd_mutex_release\000"
.LASF271:
	.ascii	"controllerStop\000"
.LASF124:
	.ascii	"thousands_sep\000"
.LASF196:
	.ascii	"FILE\000"
.LASF298:
	.ascii	"minUpDrive\000"
.LASF268:
	.ascii	"LSpeed\000"
.LASF152:
	.ascii	"date_format\000"
.LASF107:
	.ascii	"__locale_s\000"
.LASF335:
	.ascii	"p_ecb_data\000"
.LASF51:
	.ascii	"normal\000"
.LASF189:
	.ascii	"nrf_mutex_t\000"
.LASF103:
	.ascii	"__RAL_error_decoder_s\000"
.LASF181:
	.ascii	"__RAL_error_decoder_t\000"
.LASF255:
	.ascii	"yhat\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
