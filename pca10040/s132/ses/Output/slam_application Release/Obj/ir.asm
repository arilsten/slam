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
	.file	"ir.c"
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
	.section	.rodata.saadc_config,"a"
	.align	2
	.type	saadc_config, %object
	.size	saadc_config, 4
saadc_config:
	.byte	2
	.byte	0
	.byte	7
	.byte	0
	.global	calibration_completed
	.section	.bss.calibration_completed,"aw",%nobits
	.type	calibration_completed, %object
	.size	calibration_completed, 1
calibration_completed:
	.space	1
	.global	initial_calibration_completed
	.section	.bss.initial_calibration_completed,"aw",%nobits
	.type	initial_calibration_completed, %object
	.size	initial_calibration_completed, 1
initial_calibration_completed:
	.space	1
	.global	cb
	.section	.bss.cb,"aw",%nobits
	.align	2
	.type	cb, %object
	.size	cb, 4
cb:
	.space	4
	.section	.data.IR_config,"aw"
	.align	2
	.type	IR_config, %object
	.size	IR_config, 9
IR_config:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.global	conversion_buffer
	.section	.bss.conversion_buffer,"aw",%nobits
	.align	2
	.type	conversion_buffer, %object
	.size	conversion_buffer, 8
conversion_buffer:
	.space	8
	.section	.text.saadc_event_handler,"ax",%progbits
	.align	1
	.global	saadc_event_handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	saadc_event_handler, %function
saadc_event_handler:
.LFB235:
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\ir.c"
	.loc 2 38 59
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #28
.LCFI1:
	str	r0, [sp, #4]
	.loc 2 40 17
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 40 2
	cmp	r3, #2
	beq	.L45
	cmp	r3, #2
	bgt	.L53
	cmp	r3, #0
	beq	.L47
	cmp	r3, #1
	beq	.L54
.LBB2:
	.loc 2 68 4
	b	.L53
.L47:
	.loc 2 42 10
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	movs	r1, #4
	mov	r0, r3
	bl	nrfx_saadc_buffer_convert
	str	r0, [sp, #20]
.LBB3:
	.loc 2 44 24
	ldr	r3, [sp, #20]
	str	r3, [sp, #16]
	.loc 2 44 51
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L49
	.loc 2 44 90 discriminator 1
	ldr	r0, [sp, #16]
	bl	app_error_handler_bare
.L49:
.LBE3:
	.loc 2 48 41
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	.loc 2 48 50
	ldrsh	r3, [r3]
	uxth	r2, r3
	.loc 2 49 27
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	.loc 2 49 36
	adds	r3, r3, #2
	ldrsh	r3, [r3]
	uxth	r3, r3
	.loc 2 48 54
	add	r3, r3, r2
	uxth	r2, r3
	.loc 2 50 27
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	.loc 2 50 36
	adds	r3, r3, #4
	ldrsh	r3, [r3]
	uxth	r3, r3
	.loc 2 49 40
	add	r3, r3, r2
	uxth	r2, r3
	.loc 2 51 27
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	.loc 2 51 36
	adds	r3, r3, #6
	ldrsh	r3, [r3]
	uxth	r3, r3
	.loc 2 48 13
	add	r3, r3, r2
	strh	r3, [sp, #14]	@ movhi
	.loc 2 52 4
	ldr	r3, .L56
	ldr	r3, [r3]
	ldrh	r2, [sp, #14]
	mov	r0, r2
	blx	r3
.LVL0:
	.loc 2 54 4
	b	.L50
.L45:
	.loc 2 62 38
	ldr	r3, .L56+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 2 62 7
	cmp	r3, #0
	beq	.L51
	.loc 2 63 35
	ldr	r3, .L56+4
	movs	r2, #1
	strb	r2, [r3]
	.loc 2 66 4
	b	.L50
.L51:
	.loc 2 65 27
	ldr	r3, .L56+8
	movs	r2, #1
	strb	r2, [r3]
	.loc 2 66 4
	b	.L50
.L53:
	.loc 2 68 4
	nop
	b	.L55
.L54:
	.loc 2 60 4
	nop
.L50:
.L55:
.LBE2:
	.loc 2 70 1
	nop
	add	sp, sp, #28
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.L57:
	.align	2
.L56:
	.word	cb
	.word	initial_calibration_completed
	.word	calibration_completed
.LFE235:
	.size	saadc_event_handler, .-saadc_event_handler
	.section	.text.ir_init,"ax",%progbits
	.align	1
	.global	ir_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ir_init, %function
ir_init:
.LFB236:
	.loc 2 72 42
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI3:
	sub	sp, sp, #36
.LCFI4:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 2 81 30
	ldr	r3, .L65
	movs	r2, #2
	strb	r2, [r3, #2]
	.loc 2 82 35
	ldr	r3, .L65
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 2 86 30
	ldr	r3, .L65+4
	movs	r2, #2
	strb	r2, [r3, #2]
	.loc 2 87 35
	ldr	r3, .L65+4
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 2 91 30
	ldr	r3, .L65+8
	movs	r2, #2
	strb	r2, [r3, #2]
	.loc 2 92 35
	ldr	r3, .L65+8
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 2 96 30
	ldr	r3, .L65+12
	movs	r2, #2
	strb	r2, [r3, #2]
	.loc 2 97 35
	ldr	r3, .L65+12
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 2 111 2
	ldr	r1, .L65+16
	ldr	r0, .L65+20
	bl	nrfx_saadc_init
.LBB4:
	.loc 2 112 22
	ldr	r3, [sp, #28]
	str	r3, [sp, #24]
	.loc 2 112 49
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L59
	.loc 2 112 88 discriminator 1
	ldr	r0, [sp, #24]
	bl	app_error_handler_bare
.L59:
.LBE4:
	.loc 2 114 2
	ldr	r1, .L65
	movs	r0, #0
	bl	nrfx_saadc_channel_init
.LBB5:
	.loc 2 115 22
	ldr	r3, [sp, #28]
	str	r3, [sp, #20]
	.loc 2 115 49
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L60
	.loc 2 115 88 discriminator 1
	ldr	r0, [sp, #20]
	bl	app_error_handler_bare
.L60:
.LBE5:
	.loc 2 117 9
	ldr	r1, .L65+4
	movs	r0, #1
	bl	nrfx_saadc_channel_init
.LBB6:
	.loc 2 118 22
	ldr	r3, [sp, #28]
	str	r3, [sp, #16]
	.loc 2 118 49
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L61
	.loc 2 118 88 discriminator 1
	ldr	r0, [sp, #16]
	bl	app_error_handler_bare
.L61:
.LBE6:
	.loc 2 120 9
	ldr	r1, .L65+8
	movs	r0, #2
	bl	nrfx_saadc_channel_init
.LBB7:
	.loc 2 121 22
	ldr	r3, [sp, #28]
	str	r3, [sp, #12]
	.loc 2 121 49
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L62
	.loc 2 121 88 discriminator 1
	ldr	r0, [sp, #12]
	bl	app_error_handler_bare
.L62:
.LBE7:
	.loc 2 124 9
	ldr	r1, .L65+12
	movs	r0, #3
	bl	nrfx_saadc_channel_init
.LBB8:
	.loc 2 125 22
	ldr	r3, [sp, #28]
	str	r3, [sp, #8]
	.loc 2 125 49
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L64
	.loc 2 125 88 discriminator 1
	ldr	r0, [sp, #8]
	bl	app_error_handler_bare
.L64:
.LBE8:
	.loc 2 137 1
	nop
	add	sp, sp, #36
.LCFI5:
	@ sp needed
	ldr	pc, [sp], #4
.L66:
	.align	2
.L65:
	.word	channel_0_config.8876
	.word	channel_1_config.8877
	.word	channel_2_config.8878
	.word	channel_3_config.8879
	.word	saadc_event_handler
	.word	saadc_config
.LFE236:
	.size	ir_init, .-ir_init
	.section	.text.ir_read,"ax",%progbits
	.align	1
	.global	ir_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ir_read, %function
ir_read:
.LFB237:
	.loc 2 139 49
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI6:
	sub	sp, sp, #28
.LCFI7:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 2 142 5
	ldr	r2, .L71
	ldr	r3, [sp]
	str	r3, [r2]
.LBB9:
	.loc 2 144 11
	movs	r3, #0
	str	r3, [sp, #20]
	.loc 2 144 2
	b	.L68
.L70:
	.loc 2 145 9
	bl	nrfx_saadc_sample
	str	r0, [sp, #16]
.LBB10:
	.loc 2 147 23
	ldr	r3, [sp, #16]
	str	r3, [sp, #12]
	.loc 2 147 50
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L69
	.loc 2 147 89 discriminator 1
	ldr	r0, [sp, #12]
	bl	app_error_handler_bare
.L69:
.LBE10:
	.loc 2 144 26 discriminator 2
	ldr	r3, [sp, #20]
	adds	r3, r3, #1
	str	r3, [sp, #20]
.L68:
	.loc 2 144 2 discriminator 1
	ldr	r3, [sp, #20]
	cmp	r3, #3
	ble	.L70
.LBE9:
	.loc 2 149 1
	nop
	nop
	add	sp, sp, #28
.LCFI8:
	@ sp needed
	ldr	pc, [sp], #4
.L72:
	.align	2
.L71:
	.word	cb
.LFE237:
	.size	ir_read, .-ir_read
	.section	.text.ir_read_blocking,"ax",%progbits
	.align	1
	.global	ir_read_blocking
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ir_read_blocking, %function
ir_read_blocking:
.LFB238:
	.loc 2 151 47
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI9:
	sub	sp, sp, #36
.LCFI10:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 2 153 10
	ldrb	r3, [sp, #7]
	strb	r3, [sp, #23]
	.loc 2 158 6
	movs	r3, #0
	str	r3, [sp, #28]
.LBB11:
	.loc 2 159 11
	movs	r3, #0
	str	r3, [sp, #24]
	.loc 2 159 2
	b	.L74
.L76:
	.loc 2 160 47
	ldr	r3, [sp, #24]
	lsls	r3, r3, #1
	.loc 2 160 9
	ldr	r2, .L79
	add	r2, r2, r3
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	nrfx_saadc_sample_convert
	str	r0, [sp, #16]
.LBB12:
	.loc 2 161 37
	ldr	r3, [sp, #16]
	str	r3, [sp, #12]
	.loc 2 161 64
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L75
	.loc 2 161 103 discriminator 1
	ldr	r0, [sp, #12]
	bl	app_error_handler_bare
.L75:
.LBE12:
	.loc 2 162 13 discriminator 2
	ldr	r2, .L79
	ldr	r3, [sp, #24]
	ldrsh	r3, [r2, r3, lsl #1]
	mov	r2, r3
	.loc 2 162 7 discriminator 2
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	str	r3, [sp, #28]
	.loc 2 159 26 discriminator 2
	ldr	r3, [sp, #24]
	adds	r3, r3, #1
	str	r3, [sp, #24]
.L74:
	.loc 2 159 2 discriminator 1
	ldr	r3, [sp, #24]
	cmp	r3, #3
	ble	.L76
.LBE11:
	.loc 2 165 24
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bge	.L77
	adds	r3, r3, #3
.L77:
	asrs	r3, r3, #2
	.loc 2 165 9
	uxth	r3, r3
	.loc 2 166 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI11:
	@ sp needed
	ldr	pc, [sp], #4
.L80:
	.align	2
.L79:
	.word	val.8900
.LFE238:
	.size	ir_read_blocking, .-ir_read_blocking
	.section .rodata
	.align	2
.LC0:
	.ascii	"nrfx_saadc_calibration_offset() failed.\000"
	.section	.text.ir_calibrate,"ax",%progbits
	.align	1
	.global	ir_calibrate
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ir_calibrate, %function
ir_calibrate:
.LFB239:
	.loc 2 168 21
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI12:
	.loc 2 169 6
	bl	nrfx_saadc_calibrate_offset
	mov	r3, r0
	.loc 2 169 5
	cmp	r3, #0
	beq	.L85
	.loc 2 170 212 discriminator 2
	ldr	r3, .L86
	ldrh	r3, [r3]
	.loc 2 170 223 discriminator 2
	lsls	r3, r3, #16
	.loc 2 170 179 discriminator 2
	orr	r3, r3, #3
	.loc 2 170 131 discriminator 2
	ldr	r1, .L86+4
	mov	r0, r3
	bl	nrf_log_frontend_std_0
	.loc 2 171 3 discriminator 2
	b	.L81
.L85:
	.loc 2 174 7
	nop
.L84:
	.loc 2 174 8 discriminator 1
	ldr	r3, .L86+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 2 174 7 discriminator 1
	cmp	r3, #0
	bne	.L84
	.loc 2 175 24
	ldr	r3, .L86+8
	movs	r2, #0
	strb	r2, [r3]
.L81:
	.loc 2 176 1
	pop	{r3, pc}
.L87:
	.align	2
.L86:
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC0
	.word	calibration_completed
.LFE239:
	.size	ir_calibrate, .-ir_calibrate
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.global	__aeabi_dcmplt
	.global	__aeabi_d2uiz
	.section	.text.ui8DistSens_readCM,"ax",%progbits
	.align	1
	.global	ui8DistSens_readCM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ui8DistSens_readCM, %function
ui8DistSens_readCM:
.LFB240:
	.loc 2 178 47
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI13:
	sub	sp, sp, #20
.LCFI14:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 2 179 30
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	ir_read_blocking
	mov	r3, r0
	strh	r3, [sp, #14]	@ movhi
	.loc 2 180 26
	ldrh	r3, [sp, #14]
	mov	r0, r3
	bl	__aeabi_i2d
.LVL1:
	adr	r3, .L95+8
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL2:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vldr.64	d1, .L95
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	pow
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	ceil
	vmov	r0, r1, d0
	.loc 2 180 14
	mov	r2, #0
	ldr	r3, .L95+16
	bl	__aeabi_dcmplt
.LVL3:
	mov	r3, r0
	cmp	r3, #0
	beq	.L94
	.loc 2 180 74 discriminator 1
	ldrh	r3, [sp, #14]
	mov	r0, r3
	bl	__aeabi_i2d
.LVL4:
	adr	r3, .L95+8
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL5:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vldr.64	d1, .L95
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	pow
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	ceil
	vmov	r2, r3, d0
	.loc 2 180 14 discriminator 1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2uiz
.LVL6:
	mov	r3, r0
	uxtb	r3, r3
	b	.L91
.L94:
	.loc 2 180 14 is_stmt 0 discriminator 2
	movs	r3, #80
.L91:
	.loc 2 181 1 is_stmt 1 discriminator 4
	mov	r0, r3
	add	sp, sp, #20
.LCFI15:
	@ sp needed
	ldr	pc, [sp], #4
.L96:
	.align	3
.L95:
	.word	-1717986918
	.word	-1074685543
	.word	0
	.word	1087356160
	.word	1079246848
.LFE240:
	.size	ui8DistSens_readCM, .-ui8DistSens_readCM
	.global	__aeabi_dmul
	.global	__aeabi_d2iz
	.section	.text.i16DistSens_readMM,"ax",%progbits
	.align	1
	.global	i16DistSens_readMM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	i16DistSens_readMM, %function
i16DistSens_readMM:
.LFB241:
	.loc 2 183 47
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI16:
	sub	sp, sp, #20
.LCFI17:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 2 184 30
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	ir_read_blocking
	mov	r3, r0
	strh	r3, [sp, #14]	@ movhi
	.loc 2 185 26
	ldrh	r3, [sp, #14]
	mov	r0, r3
	bl	__aeabi_i2d
.LVL7:
	adr	r3, .L104+8
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL8:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vldr.64	d1, .L104
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	pow
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	ceil
	vmov	r0, r1, d0
	.loc 2 185 62
	mov	r2, #0
	ldr	r3, .L104+16
	bl	__aeabi_dmul
.LVL9:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	.loc 2 185 14
	mov	r2, #0
	ldr	r3, .L104+20
	bl	__aeabi_dcmplt
.LVL10:
	mov	r3, r0
	cmp	r3, #0
	beq	.L103
	.loc 2 185 78 discriminator 1
	ldrh	r3, [sp, #14]
	mov	r0, r3
	bl	__aeabi_i2d
.LVL11:
	adr	r3, .L104+8
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL12:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vldr.64	d1, .L104
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	pow
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	ceil
	vmov	r0, r1, d0
	.loc 2 185 114 discriminator 1
	mov	r2, #0
	ldr	r3, .L104+16
	bl	__aeabi_dmul
.LVL13:
	mov	r2, r0
	mov	r3, r1
	.loc 2 185 14 discriminator 1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
.LVL14:
	mov	r3, r0
	sxth	r3, r3
	b	.L100
.L103:
	.loc 2 185 14 is_stmt 0 discriminator 2
	mov	r3, #800
.L100:
	.loc 2 186 1 is_stmt 1 discriminator 4
	mov	r0, r3
	add	sp, sp, #20
.LCFI18:
	@ sp needed
	ldr	pc, [sp], #4
.L105:
	.align	3
.L104:
	.word	-1717986918
	.word	-1074685543
	.word	0
	.word	1087356160
	.word	1076101120
	.word	1082720256
.LFE241:
	.size	i16DistSens_readMM, .-i16DistSens_readMM
	.section	.text.IrAnalogToCM,"ax",%progbits
	.align	1
	.global	IrAnalogToCM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	IrAnalogToCM, %function
IrAnalogToCM:
.LFB242:
	.loc 2 188 39
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI19:
	sub	sp, sp, #12
.LCFI20:
	mov	r3, r0
	strh	r3, [sp, #6]	@ movhi
	.loc 2 189 20
	ldrh	r3, [sp, #6]
	mov	r0, r3
	bl	__aeabi_i2d
.LVL15:
	adr	r3, .L108+8
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL16:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vldr.64	d1, .L108
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	pow
	vmov.f32	s14, s0
	vmov.f32	s15, s1
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	ceil
	vmov	r2, r3, d0
	.loc 2 189 10
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2uiz
.LVL17:
	mov	r3, r0
	uxtb	r3, r3
	.loc 2 190 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI21:
	@ sp needed
	ldr	pc, [sp], #4
.L109:
	.align	3
.L108:
	.word	-1717986918
	.word	-1074685543
	.word	0
	.word	1087356160
.LFE242:
	.size	IrAnalogToCM, .-IrAnalogToCM
	.global	__aeabi_ui2d
	.section	.text.IrAnalogToMM,"ax",%progbits
	.align	1
	.global	IrAnalogToMM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	IrAnalogToMM, %function
IrAnalogToMM:
.LFB243:
	.loc 2 193 59
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI22:
	sub	sp, sp, #20
.LCFI23:
	mov	r3, r0
	mov	r2, r1
	strh	r3, [sp, #6]	@ movhi
	mov	r3, r2
	strb	r3, [sp, #5]
	.loc 2 195 13
	movs	r3, #0
	strh	r3, [sp, #14]	@ movhi
	.loc 2 197 7
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L111
	.loc 2 198 39
	ldrh	r3, [sp, #6]
	mov	r0, r3
	bl	__aeabi_ui2d
.LVL18:
	mov	r2, r0
	mov	r3, r1
	vldr.64	d1, .L116
	vmov	d0, r2, r3
	bl	pow
	vmov	r0, r1, d0
	.loc 2 198 24
	adr	r3, .L116+32
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL19:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	ceil
	vmov	r2, r3, d0
	.loc 2 198 12
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
.LVL20:
	mov	r3, r0
	strh	r3, [sp, #14]	@ movhi
.L111:
	.loc 2 201 8
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L112
	.loc 2 202 40
	ldrh	r3, [sp, #6]
	mov	r0, r3
	bl	__aeabi_ui2d
.LVL21:
	mov	r2, r0
	mov	r3, r1
	vldr.64	d1, .L116+8
	vmov	d0, r2, r3
	bl	pow
	vmov	r0, r1, d0
	.loc 2 202 24
	adr	r3, .L116+40
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL22:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	ceil
	vmov	r2, r3, d0
	.loc 2 202 12
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
.LVL23:
	mov	r3, r0
	strh	r3, [sp, #14]	@ movhi
.L112:
	.loc 2 204 7
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L113
	.loc 2 205 37
	ldrh	r3, [sp, #6]
	mov	r0, r3
	bl	__aeabi_ui2d
.LVL24:
	mov	r2, r0
	mov	r3, r1
	vldr.64	d1, .L116+16
	vmov	d0, r2, r3
	bl	pow
	vmov	r0, r1, d0
	.loc 2 205 24
	adr	r3, .L116+48
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL25:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	ceil
	vmov	r2, r3, d0
	.loc 2 205 12
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
.LVL26:
	mov	r3, r0
	strh	r3, [sp, #14]	@ movhi
.L113:
	.loc 2 207 8
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L114
	.loc 2 208 39
	ldrh	r3, [sp, #6]
	mov	r0, r3
	bl	__aeabi_ui2d
.LVL27:
	mov	r2, r0
	mov	r3, r1
	vldr.64	d1, .L116+24
	vmov	d0, r2, r3
	bl	pow
	vmov	r0, r1, d0
	.loc 2 208 24
	adr	r3, .L116+56
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL28:
	mov	r2, r0
	mov	r3, r1
	vmov	d7, r2, r3
	vmov.f32	s0, s14
	vmov.f32	s1, s15
	bl	ceil
	vmov	r2, r3, d0
	.loc 2 208 12
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2iz
.LVL29:
	mov	r3, r0
	strh	r3, [sp, #14]	@ movhi
.L114:
	.loc 2 210 42
	ldrsh	r3, [sp, #14]
	cmp	r3, #1000
	it	ge
	movge	r3, #1000
	sxth	r3, r3
	.loc 2 211 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI24:
	@ sp needed
	ldr	pc, [sp], #4
.L117:
	.align	3
.L116:
	.word	1374389535
	.word	-1074979144
	.word	-377957122
	.word	-1074646746
	.word	0
	.word	-1074790400
	.word	1030792151
	.word	-1074800886
	.word	0
	.word	1090296576
	.word	0
	.word	1092664418
	.word	0
	.word	1091225240
	.word	0
	.word	1091120440
.LFE243:
	.size	IrAnalogToMM, .-IrAnalogToMM
	.section	.data.channel_0_config.8876,"aw"
	.align	2
	.type	channel_0_config.8876, %object
	.size	channel_0_config.8876, 9
channel_0_config.8876:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.section	.data.channel_1_config.8877,"aw"
	.align	2
	.type	channel_1_config.8877, %object
	.size	channel_1_config.8877, 9
channel_1_config.8877:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	6
	.byte	0
	.section	.data.channel_2_config.8878,"aw"
	.align	2
	.type	channel_2_config.8878, %object
	.size	channel_2_config.8878, 9
channel_2_config.8878:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.section	.data.channel_3_config.8879,"aw"
	.align	2
	.type	channel_3_config.8879, %object
	.size	channel_3_config.8879, 9
channel_3_config.8879:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.section	.bss.val.8900,"aw",%nobits
	.align	2
	.type	val.8900, %object
	.size	val.8900, 8
val.8900:
	.space	8
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
	.4byte	.LFB235
	.4byte	.LFE235-.LFB235
	.byte	0x4
	.4byte	.LCFI0-.LFB235
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.byte	0x4
	.4byte	.LCFI3-.LFB236
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.byte	0x4
	.4byte	.LCFI6-.LFB237
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.byte	0x4
	.4byte	.LCFI9-.LFB238
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.byte	0x4
	.4byte	.LCFI12-.LFB239
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.byte	0x4
	.4byte	.LCFI13-.LFB240
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.byte	0x4
	.4byte	.LCFI16-.LFB241
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x4
	.4byte	.LCFI19-.LFB242
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x10
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
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.byte	0x4
	.4byte	.LCFI22-.LFB243
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE102:
	.text
.Letext0:
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x3
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x3
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
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
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x3
	.byte	0x31
	.byte	0x1
	.4byte	0x50
	.uleb128 0x7
	.4byte	.LASF4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.file 5 "../../../../../../modules/nrfx/drivers/include/nrfx_saadc.h"
	.section	.debug_types,"G",%progbits,wt.a76ec9ac00db2ba1,comdat
	.4byte	0x52
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xa7
	.byte	0x6e
	.byte	0xc9
	.byte	0xac
	.byte	0
	.byte	0xdb
	.byte	0x2b
	.byte	0xa1
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x5
	.byte	0x9e
	.byte	0x9
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.byte	0xa0
	.byte	0x1b
	.4byte	0x45
	.byte	0
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0xa5
	.byte	0x7
	.byte	0x4b
	.byte	0xd9
	.byte	0xb
	.byte	0x9f
	.byte	0xb9
	.byte	0x24
	.byte	0xd7
	.byte	0xe7
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x5
	.byte	0x87
	.byte	0x3
	.byte	0x66
	.byte	0xe5
	.byte	0xc0
	.byte	0x9f
	.byte	0x9d
	.byte	0xdb
	.byte	0xf1
	.byte	0x7e
	.byte	0
	.section	.debug_types,"G",%progbits,wt.4bd90b9fb924d7e7,comdat
	.4byte	0x5c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x4b
	.byte	0xd9
	.byte	0xb
	.byte	0x9f
	.byte	0xb9
	.byte	0x24
	.byte	0xd7
	.byte	0xe7
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.byte	0xa1
	.byte	0x5
	.4byte	0x3f
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x5
	.byte	0xa3
	.byte	0x1f
	.4byte	0x3f
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x5
	.byte	0xa4
	.byte	0x20
	.4byte	0x4f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x5
	.byte	0x90
	.byte	0x3
	.byte	0x59
	.byte	0x7c
	.byte	0x51
	.byte	0x5c
	.byte	0x90
	.byte	0x1d
	.byte	0x97
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x5
	.byte	0x99
	.byte	0x3
	.byte	0xf7
	.byte	0xd3
	.byte	0x74
	.byte	0xb8
	.byte	0xa1
	.byte	0xb9
	.byte	0x23
	.byte	0x20
	.byte	0
	.file 6 "../../../../../../modules/nrfx/hal/nrf_saadc.h"
	.section	.debug_types,"G",%progbits,wt.f7d374b8a1b92320,comdat
	.4byte	0x62
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xf7
	.byte	0xd3
	.byte	0x74
	.byte	0xb8
	.byte	0xa1
	.byte	0xb9
	.byte	0x23
	.byte	0x20
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.byte	0x95
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
	.byte	0x97
	.byte	0xd
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x5
	.byte	0x98
	.byte	0x17
	.4byte	0x4d
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x5e
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x6
	.2byte	0x102
	.byte	0x3
	.byte	0x32
	.byte	0x1b
	.byte	0xb6
	.byte	0xd2
	.byte	0x51
	.byte	0x13
	.byte	0x8c
	.byte	0x7a
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.597c515c901d9780,comdat
	.4byte	0x77
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x59
	.byte	0x7c
	.byte	0x51
	.byte	0x5c
	.byte	0x90
	.byte	0x1d
	.byte	0x97
	.byte	0x80
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.byte	0x8c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0x8e
	.byte	0x19
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0x8f
	.byte	0xe
	.4byte	0x47
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x60
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x105
	.byte	0x11
	.4byte	0x67
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0x35
	.byte	0x16
	.4byte	0x73
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF26
	.byte	0
	.section	.debug_types,"G",%progbits,wt.66e5c09f9ddbf17e,comdat
	.4byte	0x42
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x66
	.byte	0xe5
	.byte	0xc0
	.byte	0x9f
	.byte	0x9d
	.byte	0xdb
	.byte	0xf1
	.byte	0x7e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x5
	.byte	0x83
	.byte	0x1
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.7f1793cc02d7f4b4,comdat
	.4byte	0x92
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x7f
	.byte	0x17
	.byte	0x93
	.byte	0xcc
	.byte	0x2
	.byte	0xd7
	.byte	0xf4
	.byte	0xb4
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.byte	0x77
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x79
	.byte	0x1c
	.4byte	0x5b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.byte	0x7a
	.byte	0x1c
	.4byte	0x6b
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x7b
	.byte	0xd
	.4byte	0x7b
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x5
	.byte	0x7c
	.byte	0x1b
	.4byte	0x87
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x6
	.byte	0x44
	.byte	0x3
	.byte	0x44
	.byte	0x5
	.byte	0xa4
	.byte	0xc8
	.byte	0xc3
	.byte	0xee
	.byte	0x49
	.byte	0x76
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x6
	.byte	0x67
	.byte	0x3
	.byte	0xe1
	.byte	0xae
	.byte	0x23
	.byte	0x22
	.byte	0x89
	.byte	0x10
	.byte	0x1b
	.byte	0x32
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x8e
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF36
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.686e487e0a9e63f7,comdat
	.4byte	0x113
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x68
	.byte	0x6e
	.byte	0x48
	.byte	0x7e
	.byte	0xa
	.byte	0x9e
	.byte	0x63
	.byte	0xf7
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xf
	.byte	0x9
	.byte	0x6
	.2byte	0x117
	.byte	0x9
	.4byte	0xa6
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x6
	.2byte	0x119
	.byte	0x1a
	.4byte	0xa6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x6
	.2byte	0x11a
	.byte	0x1a
	.4byte	0xa6
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x6
	.2byte	0x11b
	.byte	0x16
	.4byte	0xb6
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x6
	.2byte	0x11c
	.byte	0x1b
	.4byte	0xc6
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x6
	.2byte	0x11d
	.byte	0x19
	.4byte	0xd6
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x6
	.2byte	0x11e
	.byte	0x16
	.4byte	0xe6
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x6
	.2byte	0x11f
	.byte	0x17
	.4byte	0xf6
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x6
	.2byte	0x120
	.byte	0x17
	.4byte	0x106
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x6
	.2byte	0x121
	.byte	0x17
	.4byte	0x106
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x6
	.byte	0x73
	.byte	0x3
	.byte	0x45
	.byte	0xf2
	.byte	0x8c
	.byte	0xc
	.byte	0x52
	.byte	0x8c
	.byte	0x96
	.byte	0xc9
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x6
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.byte	0x1a
	.byte	0xc8
	.byte	0xa0
	.byte	0x8f
	.byte	0xc
	.byte	0xb1
	.byte	0xbd
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x6
	.byte	0x8d
	.byte	0x3
	.byte	0x44
	.byte	0x9c
	.byte	0xff
	.byte	0x7b
	.byte	0x1a
	.byte	0x2c
	.byte	0x91
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x6
	.byte	0x9b
	.byte	0x3
	.byte	0xaa
	.byte	0xe2
	.byte	0x48
	.byte	0xe6
	.byte	0xda
	.byte	0xfa
	.byte	0xc
	.byte	0x8e
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x6
	.byte	0xa5
	.byte	0x3
	.byte	0xc0
	.byte	0x5d
	.byte	0xb7
	.byte	0x29
	.byte	0xd0
	.byte	0x85
	.byte	0x42
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x6
	.byte	0xaf
	.byte	0x3
	.byte	0x66
	.byte	0x64
	.byte	0x68
	.byte	0x42
	.byte	0xd4
	.byte	0xd9
	.byte	0x9c
	.byte	0x46
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x6
	.byte	0x56
	.byte	0x3
	.byte	0xee
	.byte	0x42
	.byte	0x4b
	.byte	0x17
	.byte	0xc7
	.byte	0xc0
	.byte	0xab
	.byte	0x12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.321bb6d251138c7a,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x32
	.byte	0x1b
	.byte	0xb6
	.byte	0xd2
	.byte	0x51
	.byte	0x13
	.byte	0x8c
	.byte	0x7a
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x6
	.byte	0xff
	.byte	0x1
	.4byte	0x38
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.66646842d4d99c46,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x66
	.byte	0x64
	.byte	0x68
	.byte	0x42
	.byte	0xd4
	.byte	0xd9
	.byte	0x9c
	.byte	0x46
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x6
	.byte	0xac
	.byte	0x1
	.4byte	0x38
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.c05db729d085421e,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xc0
	.byte	0x5d
	.byte	0xb7
	.byte	0x29
	.byte	0xd0
	.byte	0x85
	.byte	0x42
	.byte	0x1e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x6
	.byte	0xa2
	.byte	0x1
	.4byte	0x38
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.aae248e6dafa0c8e,comdat
	.4byte	0x54
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xaa
	.byte	0xe2
	.byte	0x48
	.byte	0xe6
	.byte	0xda
	.byte	0xfa
	.byte	0xc
	.byte	0x8e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x6
	.byte	0x94
	.byte	0x1
	.4byte	0x50
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.449cff7b1a2c911f,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x44
	.byte	0x9c
	.byte	0xff
	.byte	0x7b
	.byte	0x1a
	.byte	0x2c
	.byte	0x91
	.byte	0x1f
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x6
	.byte	0x8a
	.byte	0x1
	.4byte	0x38
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.041ac8a08f0cb1bd,comdat
	.4byte	0x60
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0xc8
	.byte	0xa0
	.byte	0x8f
	.byte	0xc
	.byte	0xb1
	.byte	0xbd
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x5c
	.byte	0x6
	.byte	0x7a
	.byte	0x1
	.4byte	0x5c
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.45f28c0c528c96c9,comdat
	.4byte	0x48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x45
	.byte	0xf2
	.byte	0x8c
	.byte	0xc
	.byte	0x52
	.byte	0x8c
	.byte	0x96
	.byte	0xc9
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x6
	.byte	0x6e
	.byte	0x1
	.4byte	0x44
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.e1ae232289101b32,comdat
	.4byte	0x66
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xe1
	.byte	0xae
	.byte	0x23
	.byte	0x22
	.byte	0x89
	.byte	0x10
	.byte	0x1b
	.byte	0x32
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x62
	.byte	0x6
	.byte	0x5d
	.byte	0x1
	.4byte	0x62
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.ee424b17c7c0ab12,comdat
	.4byte	0x6c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xee
	.byte	0x42
	.byte	0x4b
	.byte	0x17
	.byte	0xc7
	.byte	0xc0
	.byte	0xab
	.byte	0x12
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x68
	.byte	0x6
	.byte	0x4b
	.byte	0x1
	.4byte	0x68
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.4405a4c8c3ee4976,comdat
	.4byte	0x48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x44
	.byte	0x5
	.byte	0xa4
	.byte	0xc8
	.byte	0xc3
	.byte	0xee
	.byte	0x49
	.byte	0x76
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x6
	.byte	0x3f
	.byte	0x1
	.4byte	0x44
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
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
	.uleb128 0x2
	.byte	0xc
	.byte	0x7
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x7
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0x7
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	0x4b
	.uleb128 0x11
	.4byte	0x5b
	.uleb128 0x12
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0x13
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF105
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
	.uleb128 0xf
	.byte	0xc
	.byte	0x1
	.2byte	0x177
	.byte	0x9
	.4byte	0x52
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x179
	.byte	0x19
	.4byte	0x52
	.byte	0
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x17a
	.byte	0x1f
	.4byte	0x58
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x17b
	.byte	0x1a
	.4byte	0x5e
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x64
	.uleb128 0xd
	.byte	0x4
	.4byte	0x64
	.uleb128 0xd
	.byte	0x4
	.4byte	0x74
	.uleb128 0x12
	.4byte	0x81
	.4byte	0x74
	.uleb128 0x13
	.4byte	0x8d
	.byte	0xf
	.byte	0
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x16b
	.byte	0x11
	.4byte	0x64
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x94
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF105
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
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
	.uleb128 0xf
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
	.uleb128 0x10
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x171
	.byte	0x17
	.4byte	0x5f
	.byte	0x10
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x172
	.byte	0x18
	.4byte	0x6c
	.byte	0x20
	.byte	0
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x169
	.byte	0x11
	.4byte	0x79
	.uleb128 0xe
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x16a
	.byte	0x11
	.4byte	0x79
	.uleb128 0xe
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x16b
	.byte	0x11
	.4byte	0x79
	.uleb128 0x12
	.4byte	0x89
	.4byte	0x89
	.uleb128 0x13
	.4byte	0x95
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x9c
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF105
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
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
	.uleb128 0xf
	.byte	0x8
	.byte	0x1
	.2byte	0x14a
	.byte	0x9
	.4byte	0x48
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x14c
	.byte	0xb
	.4byte	0x48
	.byte	0
	.uleb128 0x15
	.4byte	.LASF115
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
	.4byte	.LASF20
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x54
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
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
	.4byte	.LASF116
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
	.4byte	.LASF117
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
	.uleb128 0xf
	.byte	0x4
	.byte	0x1
	.2byte	0x153
	.byte	0x5
	.4byte	0x36
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x155
	.byte	0x10
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x42
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF105
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
	.uleb128 0xf
	.byte	0x4
	.byte	0x1
	.2byte	0x14f
	.byte	0x5
	.4byte	0x36
	.uleb128 0x10
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x151
	.byte	0x1d
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3c
	.uleb128 0xc
	.4byte	.LASF120
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
	.uleb128 0xf
	.byte	0x10
	.byte	0x1
	.2byte	0x13f
	.byte	0x9
	.4byte	0x48
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x141
	.byte	0xb
	.4byte	0x48
	.byte	0
	.uleb128 0x15
	.4byte	.LASF115
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
	.4byte	.LASF20
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x54
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
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
	.uleb128 0x18
	.byte	0xc
	.byte	0x1
	.2byte	0x142
	.byte	0x3
	.4byte	0x42
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x144
	.byte	0x22
	.4byte	0x42
	.uleb128 0x19
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x145
	.byte	0x20
	.4byte	0x53
	.byte	0
	.uleb128 0xc
	.4byte	.LASF124
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
	.uleb128 0xc
	.4byte	.LASF125
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
	.uleb128 0xf
	.byte	0xc
	.byte	0x1
	.2byte	0x136
	.byte	0x9
	.4byte	0x60
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x138
	.byte	0xb
	.4byte	0x60
	.byte	0
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x139
	.byte	0xb
	.4byte	0x60
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x13a
	.byte	0xc
	.4byte	0x6c
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x13b
	.byte	0xc
	.4byte	0x6c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x78
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x7f
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF105
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
	.uleb128 0xf
	.byte	0xc
	.byte	0x1
	.2byte	0x12d
	.byte	0x9
	.4byte	0x60
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x12f
	.byte	0xb
	.4byte	0x60
	.byte	0
	.uleb128 0x10
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x130
	.byte	0xb
	.4byte	0x60
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x131
	.byte	0xc
	.4byte	0x6c
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x132
	.byte	0xc
	.4byte	0x6c
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x78
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x7f
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF105
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
	.uleb128 0x1a
	.4byte	.LASF174
	.byte	0x7
	.byte	0x1
	.4byte	0x138
	.byte	0x1
	.byte	0x68
	.byte	0x6
	.4byte	0x138
	.uleb128 0x7
	.4byte	.LASF130
	.byte	0x20
	.uleb128 0x7
	.4byte	.LASF131
	.byte	0x21
	.uleb128 0x7
	.4byte	.LASF132
	.byte	0x22
	.uleb128 0x7
	.4byte	.LASF133
	.byte	0x23
	.uleb128 0x7
	.4byte	.LASF134
	.byte	0x24
	.uleb128 0x7
	.4byte	.LASF135
	.byte	0x25
	.uleb128 0x7
	.4byte	.LASF136
	.byte	0x26
	.uleb128 0x7
	.4byte	.LASF137
	.byte	0x27
	.uleb128 0x7
	.4byte	.LASF138
	.byte	0x28
	.uleb128 0x7
	.4byte	.LASF139
	.byte	0x29
	.uleb128 0x7
	.4byte	.LASF140
	.byte	0x2a
	.uleb128 0x7
	.4byte	.LASF141
	.byte	0x2b
	.uleb128 0x7
	.4byte	.LASF142
	.byte	0x2c
	.uleb128 0x7
	.4byte	.LASF143
	.byte	0x2d
	.uleb128 0x7
	.4byte	.LASF144
	.byte	0x2e
	.uleb128 0x7
	.4byte	.LASF145
	.byte	0x2f
	.uleb128 0x7
	.4byte	.LASF146
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF147
	.byte	0x31
	.uleb128 0x7
	.4byte	.LASF148
	.byte	0x32
	.uleb128 0x7
	.4byte	.LASF149
	.byte	0x33
	.uleb128 0x7
	.4byte	.LASF150
	.byte	0x34
	.uleb128 0x7
	.4byte	.LASF151
	.byte	0x35
	.uleb128 0x7
	.4byte	.LASF152
	.byte	0x36
	.uleb128 0x7
	.4byte	.LASF153
	.byte	0x37
	.uleb128 0x7
	.4byte	.LASF154
	.byte	0x39
	.uleb128 0x7
	.4byte	.LASF155
	.byte	0x3a
	.uleb128 0x7
	.4byte	.LASF156
	.byte	0x3b
	.uleb128 0x7
	.4byte	.LASF157
	.byte	0x3c
	.uleb128 0x7
	.4byte	.LASF158
	.byte	0x3d
	.uleb128 0x7
	.4byte	.LASF159
	.byte	0x3e
	.uleb128 0x7
	.4byte	.LASF160
	.byte	0x3f
	.uleb128 0x7
	.4byte	.LASF161
	.byte	0x41
	.uleb128 0x7
	.4byte	.LASF162
	.byte	0x42
	.uleb128 0x7
	.4byte	.LASF163
	.byte	0x43
	.uleb128 0x7
	.4byte	.LASF164
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF165
	.byte	0x45
	.uleb128 0x7
	.4byte	.LASF166
	.byte	0x46
	.uleb128 0x7
	.4byte	.LASF167
	.byte	0x47
	.uleb128 0x7
	.4byte	.LASF168
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF169
	.byte	0x49
	.uleb128 0x7
	.4byte	.LASF170
	.byte	0x4a
	.uleb128 0x7
	.4byte	.LASF171
	.byte	0x4b
	.uleb128 0x7
	.4byte	.LASF172
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF173
	.byte	0x51
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
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
	.uleb128 0x1b
	.4byte	.LASF179
	.byte	0x8
	.byte	0x8
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x10
	.4byte	.LASF175
	.byte	0x8
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x10
	.4byte	.LASF176
	.byte	0x8
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF177
	.byte	0x8
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x61
	.uleb128 0x1c
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x1d
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x1f
	.4byte	0x82
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF178
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
	.uleb128 0x20
	.4byte	.LASF180
	.byte	0x14
	.byte	0x8
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0x8
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x13
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x55
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF105
	.uleb128 0x1f
	.4byte	0x5a
	.uleb128 0x9
	.4byte	.LASF182
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
	.4byte	.LASF183
	.byte	0x8
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x8
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF184
	.byte	0x8
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x60
	.uleb128 0xd
	.byte	0x4
	.4byte	0x65
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x1f
	.4byte	0x6f
	.uleb128 0x1f
	.4byte	0x76
	.uleb128 0x1f
	.4byte	0x86
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF178
	.uleb128 0x9
	.4byte	.LASF185
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
	.uleb128 0x9
	.4byte	.LASF186
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
	.4byte	.LASF187
	.byte	0x8
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF188
	.byte	0x8
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF189
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF190
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF191
	.byte	0x8
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF192
	.byte	0x8
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0x8
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0x8
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xb3
	.uleb128 0xd
	.byte	0x4
	.4byte	0xc7
	.uleb128 0xd
	.byte	0x4
	.4byte	0xd6
	.uleb128 0xd
	.byte	0x4
	.4byte	0xea
	.uleb128 0xd
	.byte	0x4
	.4byte	0xf9
	.uleb128 0xd
	.byte	0x4
	.4byte	0x112
	.uleb128 0x1c
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0x1d
	.4byte	0x130
	.uleb128 0x1d
	.4byte	0x130
	.byte	0
	.uleb128 0x1c
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0x1d
	.4byte	0x130
	.byte	0
	.uleb128 0x1c
	.4byte	0x130
	.4byte	0xea
	.uleb128 0x1d
	.4byte	0x137
	.uleb128 0x1d
	.4byte	0x130
	.byte	0
	.uleb128 0x1c
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0x1d
	.4byte	0x137
	.byte	0
	.uleb128 0x1c
	.4byte	0x130
	.4byte	0x112
	.uleb128 0x1d
	.4byte	0x13e
	.uleb128 0x1d
	.4byte	0x144
	.uleb128 0x1d
	.4byte	0x14b
	.byte	0
	.uleb128 0x1c
	.4byte	0x130
	.4byte	0x130
	.uleb128 0x1d
	.4byte	0x155
	.uleb128 0x1d
	.4byte	0x15b
	.uleb128 0x1d
	.4byte	0x144
	.uleb128 0x1d
	.4byte	0x14b
	.byte	0
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF195
	.uleb128 0xd
	.byte	0x4
	.4byte	0x161
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF105
	.uleb128 0x21
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0xd
	.byte	0x4
	.4byte	0x144
	.uleb128 0xd
	.byte	0x4
	.4byte	0x168
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF178
	.uleb128 0x1f
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
	.4byte	.LASF196
	.byte	0x8
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF197
	.byte	0x8
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF198
	.byte	0x8
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF199
	.byte	0x8
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF200
	.byte	0x8
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF201
	.byte	0x8
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF202
	.byte	0x8
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF203
	.byte	0x8
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF204
	.byte	0x8
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF205
	.byte	0x8
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF206
	.byte	0x8
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF207
	.byte	0x8
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF208
	.byte	0x8
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF209
	.byte	0x8
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF210
	.byte	0x8
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF211
	.byte	0x8
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF212
	.byte	0x8
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF213
	.byte	0x8
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF214
	.byte	0x8
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF215
	.byte	0x8
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF216
	.byte	0x8
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF217
	.byte	0x8
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF218
	.byte	0x8
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF219
	.byte	0x8
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF220
	.byte	0x8
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF221
	.byte	0x8
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF222
	.byte	0x8
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF223
	.byte	0x8
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF224
	.byte	0x8
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF225
	.byte	0x8
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF226
	.byte	0x8
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF227
	.byte	0x8
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF178
	.uleb128 0x1f
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
	.uleb128 0x20
	.4byte	.LASF228
	.byte	0x8
	.byte	0x8
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF229
	.byte	0x8
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF230
	.byte	0x8
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF195
	.byte	0
	.file 9 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\ir.h"
	.section	.debug_types,"G",%progbits,wt.f51b6badc2e69f8f,comdat
	.4byte	0x42
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xf5
	.byte	0x1b
	.byte	0x6b
	.byte	0xad
	.byte	0xc2
	.byte	0xe6
	.byte	0x9f
	.byte	0x8f
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x9
	.byte	0x12
	.byte	0xe
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF231
	.byte	0
	.uleb128 0x7
	.4byte	.LASF232
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF233
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.72987e626125a64e,comdat
	.4byte	0x48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x72
	.byte	0x98
	.byte	0x7e
	.byte	0x62
	.byte	0x61
	.byte	0x25
	.byte	0xa6
	.byte	0x4e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x9
	.byte	0xa
	.byte	0xe
	.4byte	0x44
	.uleb128 0x7
	.4byte	.LASF234
	.byte	0
	.uleb128 0x7
	.4byte	.LASF235
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF236
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF237
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.file 10 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 11 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 12 "../../../../../../components/libraries/util/app_util.h"
	.file 13 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 14 "../../../../../../components/libraries/util/sdk_errors.h"
	.file 15 "../../../../../../integration/nrfx/nrfx_glue.h"
	.file 16 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1080
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x22
	.4byte	.LASF404
	.byte	0xc
	.4byte	.LASF405
	.4byte	.LASF406
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF238
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x41
	.uleb128 0x11
	.4byte	0x30
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x1f
	.4byte	0x41
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x4
	.byte	0x35
	.byte	0x16
	.4byte	0x59
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF26
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x6c
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF239
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x84
	.uleb128 0x11
	.4byte	0x73
	.uleb128 0x1e
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0xa1
	.uleb128 0x11
	.4byte	0x8b
	.uleb128 0x1f
	.4byte	0x8b
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF105
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF240
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF241
	.uleb128 0x9
	.4byte	.LASF242
	.byte	0x9
	.byte	0xf
	.byte	0x3
	.byte	0x72
	.byte	0x98
	.byte	0x7e
	.byte	0x62
	.byte	0x61
	.byte	0x25
	.byte	0xa6
	.byte	0x4e
	.uleb128 0x9
	.4byte	.LASF243
	.byte	0x9
	.byte	0x16
	.byte	0x3
	.byte	0xf5
	.byte	0x1b
	.byte	0x6b
	.byte	0xad
	.byte	0xc2
	.byte	0xe6
	.byte	0x9f
	.byte	0x8f
	.uleb128 0x4
	.4byte	.LASF244
	.byte	0x9
	.byte	0x19
	.byte	0x10
	.4byte	0xe2
	.uleb128 0xd
	.byte	0x4
	.4byte	0xe8
	.uleb128 0x23
	.4byte	0xf3
	.uleb128 0x1d
	.4byte	0x60
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF195
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF178
	.uleb128 0x1f
	.4byte	0xfa
	.uleb128 0x9
	.4byte	.LASF186
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
	.uleb128 0x1f
	.4byte	0x106
	.uleb128 0x9
	.4byte	.LASF182
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
	.uleb128 0x1f
	.4byte	0x11b
	.uleb128 0x24
	.4byte	.LASF245
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
	.uleb128 0x25
	.4byte	.LASF246
	.byte	0x8
	.2byte	0x10d
	.byte	0x1d
	.4byte	0x12b
	.uleb128 0x25
	.4byte	.LASF247
	.byte	0x8
	.2byte	0x110
	.byte	0x25
	.4byte	0x116
	.uleb128 0x25
	.4byte	.LASF248
	.byte	0x8
	.2byte	0x111
	.byte	0x25
	.4byte	0x116
	.uleb128 0x12
	.4byte	0x48
	.4byte	0x178
	.uleb128 0x13
	.4byte	0xa1
	.byte	0x7f
	.byte	0
	.uleb128 0x1f
	.4byte	0x168
	.uleb128 0x25
	.4byte	.LASF249
	.byte	0x8
	.2byte	0x113
	.byte	0x1c
	.4byte	0x178
	.uleb128 0x12
	.4byte	0x101
	.4byte	0x195
	.uleb128 0x26
	.byte	0
	.uleb128 0x1f
	.4byte	0x18a
	.uleb128 0x25
	.4byte	.LASF250
	.byte	0x8
	.2byte	0x115
	.byte	0x13
	.4byte	0x195
	.uleb128 0x25
	.4byte	.LASF251
	.byte	0x8
	.2byte	0x116
	.byte	0x13
	.4byte	0x195
	.uleb128 0x25
	.4byte	.LASF252
	.byte	0x8
	.2byte	0x117
	.byte	0x13
	.4byte	0x195
	.uleb128 0x25
	.4byte	.LASF253
	.byte	0x8
	.2byte	0x118
	.byte	0x13
	.4byte	0x195
	.uleb128 0x25
	.4byte	.LASF254
	.byte	0x8
	.2byte	0x11a
	.byte	0x13
	.4byte	0x195
	.uleb128 0x25
	.4byte	.LASF255
	.byte	0x8
	.2byte	0x11b
	.byte	0x13
	.4byte	0x195
	.uleb128 0x25
	.4byte	.LASF256
	.byte	0x8
	.2byte	0x11c
	.byte	0x13
	.4byte	0x195
	.uleb128 0x25
	.4byte	.LASF257
	.byte	0x8
	.2byte	0x11d
	.byte	0x13
	.4byte	0x195
	.uleb128 0x25
	.4byte	.LASF258
	.byte	0x8
	.2byte	0x11e
	.byte	0x13
	.4byte	0x195
	.uleb128 0x25
	.4byte	.LASF259
	.byte	0x8
	.2byte	0x11f
	.byte	0x13
	.4byte	0x195
	.uleb128 0x1c
	.4byte	0x84
	.4byte	0x22b
	.uleb128 0x1d
	.4byte	0x22b
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x236
	.uleb128 0x27
	.4byte	.LASF278
	.uleb128 0x1f
	.4byte	0x231
	.uleb128 0x25
	.4byte	.LASF260
	.byte	0x8
	.2byte	0x135
	.byte	0xe
	.4byte	0x248
	.uleb128 0xd
	.byte	0x4
	.4byte	0x21c
	.uleb128 0x1c
	.4byte	0x84
	.4byte	0x25d
	.uleb128 0x1d
	.4byte	0x25d
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x231
	.uleb128 0x25
	.4byte	.LASF261
	.byte	0x8
	.2byte	0x136
	.byte	0xe
	.4byte	0x270
	.uleb128 0xd
	.byte	0x4
	.4byte	0x24e
	.uleb128 0xc
	.4byte	.LASF262
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
	.uleb128 0x25
	.4byte	.LASF263
	.byte	0x8
	.2byte	0x157
	.byte	0x1f
	.4byte	0x294
	.uleb128 0xd
	.byte	0x4
	.4byte	0x276
	.uleb128 0x25
	.4byte	.LASF264
	.byte	0xa
	.2byte	0x744
	.byte	0x19
	.4byte	0x7f
	.uleb128 0x28
	.4byte	.LASF265
	.byte	0xb
	.byte	0x21
	.byte	0x11
	.4byte	0x8b
	.uleb128 0x28
	.4byte	.LASF266
	.byte	0xc
	.byte	0x53
	.byte	0x11
	.4byte	0x8b
	.uleb128 0x28
	.4byte	.LASF267
	.byte	0xc
	.byte	0x54
	.byte	0x11
	.4byte	0x8b
	.uleb128 0x28
	.4byte	.LASF268
	.byte	0xc
	.byte	0x72
	.byte	0x13
	.4byte	0x2d7
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x28
	.4byte	.LASF269
	.byte	0xc
	.byte	0x73
	.byte	0x11
	.4byte	0x8b
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30
	.uleb128 0xe
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x12a
	.byte	0x1a
	.4byte	0x3c
	.uleb128 0xc
	.4byte	.LASF120
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
	.uleb128 0x1f
	.4byte	0x2fc
	.uleb128 0xc
	.4byte	.LASF271
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
	.uleb128 0xe
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x166
	.byte	0x36
	.4byte	0x330
	.uleb128 0xd
	.byte	0x4
	.4byte	0x336
	.uleb128 0x1c
	.4byte	0x345
	.4byte	0x345
	.uleb128 0x1d
	.4byte	0x30
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x312
	.uleb128 0xc
	.4byte	.LASF273
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
	.uleb128 0xc
	.4byte	.LASF274
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
	.uleb128 0x9
	.4byte	.LASF275
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
	.uleb128 0x28
	.4byte	.LASF276
	.byte	0x7
	.byte	0x75
	.byte	0x19
	.4byte	0x36d
	.uleb128 0xe
	.4byte	.LASF277
	.byte	0xd
	.2byte	0x317
	.byte	0x1b
	.4byte	0x396
	.uleb128 0x27
	.4byte	.LASF279
	.uleb128 0x25
	.4byte	.LASF280
	.byte	0xd
	.2byte	0x31b
	.byte	0xe
	.4byte	0x3a8
	.uleb128 0xd
	.byte	0x4
	.4byte	0x389
	.uleb128 0x25
	.4byte	.LASF281
	.byte	0xd
	.2byte	0x31c
	.byte	0xe
	.4byte	0x3a8
	.uleb128 0x25
	.4byte	.LASF282
	.byte	0xd
	.2byte	0x31d
	.byte	0xe
	.4byte	0x3a8
	.uleb128 0x4
	.4byte	.LASF283
	.byte	0xe
	.byte	0x9e
	.byte	0x12
	.4byte	0x8b
	.uleb128 0x4
	.4byte	.LASF284
	.byte	0xf
	.byte	0xdb
	.byte	0x14
	.4byte	0x3c8
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x6
	.byte	0x56
	.byte	0x3
	.byte	0xee
	.byte	0x42
	.byte	0x4b
	.byte	0x17
	.byte	0xc7
	.byte	0xc0
	.byte	0xab
	.byte	0x12
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x6
	.2byte	0x105
	.byte	0x11
	.4byte	0x4d
	.uleb128 0xc
	.4byte	.LASF285
	.byte	0x6
	.2byte	0x122
	.byte	0x3
	.byte	0x68
	.byte	0x6e
	.byte	0x48
	.byte	0x7e
	.byte	0xa
	.byte	0x9e
	.byte	0x63
	.byte	0xf7
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF36
	.uleb128 0x9
	.4byte	.LASF286
	.byte	0x5
	.byte	0x7d
	.byte	0x3
	.byte	0x7f
	.byte	0x17
	.byte	0x93
	.byte	0xcc
	.byte	0x2
	.byte	0xd7
	.byte	0xf4
	.byte	0xb4
	.uleb128 0x1f
	.4byte	0x415
	.uleb128 0x9
	.4byte	.LASF287
	.byte	0x5
	.byte	0xa6
	.byte	0x3
	.byte	0xa7
	.byte	0x6e
	.byte	0xc9
	.byte	0xac
	.byte	0
	.byte	0xdb
	.byte	0x2b
	.byte	0xa1
	.uleb128 0x1f
	.4byte	0x42a
	.uleb128 0xd
	.byte	0x4
	.4byte	0x43a
	.uleb128 0x9
	.4byte	.LASF288
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
	.uleb128 0x25
	.4byte	.LASF289
	.byte	0x10
	.2byte	0x124
	.byte	0x2e
	.4byte	0x445
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF290
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF291
	.uleb128 0x29
	.4byte	.LASF294
	.byte	0x2
	.byte	0x11
	.byte	0x22
	.4byte	0x425
	.uleb128 0x5
	.byte	0x3
	.4byte	saadc_config
	.uleb128 0x2a
	.4byte	.LASF292
	.byte	0x2
	.byte	0x1c
	.byte	0x5
	.4byte	0x40e
	.uleb128 0x5
	.byte	0x3
	.4byte	calibration_completed
	.uleb128 0x2a
	.4byte	.LASF293
	.byte	0x2
	.byte	0x1d
	.byte	0x5
	.4byte	0x40e
	.uleb128 0x5
	.byte	0x3
	.4byte	initial_calibration_completed
	.uleb128 0x2b
	.ascii	"cb\000"
	.byte	0x2
	.byte	0x1f
	.byte	0x9
	.4byte	0xd6
	.uleb128 0x5
	.byte	0x3
	.4byte	cb
	.uleb128 0x29
	.4byte	.LASF295
	.byte	0x2
	.byte	0x21
	.byte	0x23
	.4byte	0x3fd
	.uleb128 0x5
	.byte	0x3
	.4byte	IR_config
	.uleb128 0x12
	.4byte	0x3f0
	.4byte	0x4d9
	.uleb128 0x13
	.4byte	0xa1
	.byte	0x3
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF296
	.byte	0x2
	.byte	0x24
	.byte	0x13
	.4byte	0x4c9
	.uleb128 0x5
	.byte	0x3
	.4byte	conversion_buffer
	.uleb128 0x2c
	.4byte	.LASF300
	.byte	0x2
	.byte	0xc1
	.byte	0x9
	.4byte	0x4d
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x533
	.uleb128 0x2d
	.4byte	.LASF297
	.byte	0x2
	.byte	0xc1
	.byte	0x1f
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x2d
	.4byte	.LASF298
	.byte	0x2
	.byte	0xc1
	.byte	0x34
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -19
	.uleb128 0x29
	.4byte	.LASF299
	.byte	0x2
	.byte	0xc3
	.byte	0xd
	.4byte	0x4d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF301
	.byte	0x2
	.byte	0xbc
	.byte	0x9
	.4byte	0x30
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55d
	.uleb128 0x2d
	.4byte	.LASF297
	.byte	0x2
	.byte	0xbc
	.byte	0x1f
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF302
	.byte	0x2
	.byte	0xb7
	.byte	0x9
	.4byte	0x4d
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x596
	.uleb128 0x2d
	.4byte	.LASF298
	.byte	0x2
	.byte	0xb7
	.byte	0x28
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x29
	.4byte	.LASF303
	.byte	0x2
	.byte	0xb8
	.byte	0x10
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF304
	.byte	0x2
	.byte	0xb2
	.byte	0x9
	.4byte	0x30
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cf
	.uleb128 0x2d
	.4byte	.LASF298
	.byte	0x2
	.byte	0xb2
	.byte	0x28
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x29
	.4byte	.LASF303
	.byte	0x2
	.byte	0xb3
	.byte	0x10
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF407
	.byte	0x2
	.byte	0xa8
	.byte	0x6
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2c
	.4byte	.LASF305
	.byte	0x2
	.byte	0x97
	.byte	0xa
	.4byte	0x60
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67a
	.uleb128 0x2d
	.4byte	.LASF298
	.byte	0x2
	.byte	0x97
	.byte	0x27
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2f
	.ascii	"err\000"
	.byte	0x2
	.byte	0x98
	.byte	0xd
	.4byte	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.4byte	.LASF18
	.byte	0x2
	.byte	0x99
	.byte	0xa
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2f
	.ascii	"val\000"
	.byte	0x2
	.byte	0x9d
	.byte	0x1b
	.4byte	0x4c9
	.uleb128 0x5
	.byte	0x3
	.4byte	val.8900
	.uleb128 0x2f
	.ascii	"acc\000"
	.byte	0x2
	.byte	0x9e
	.byte	0x6
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x30
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x2
	.byte	0x9f
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.uleb128 0x29
	.4byte	.LASF306
	.byte	0x2
	.byte	0xa1
	.byte	0x25
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF308
	.byte	0x2
	.byte	0x8b
	.byte	0x6
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ee
	.uleb128 0x2d
	.4byte	.LASF298
	.byte	0x2
	.byte	0x8b
	.byte	0x1a
	.4byte	0xb6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2d
	.4byte	.LASF307
	.byte	0x2
	.byte	0x8b
	.byte	0x2a
	.4byte	0xd6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2f
	.ascii	"err\000"
	.byte	0x2
	.byte	0x8c
	.byte	0xd
	.4byte	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x30
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x2
	.byte	0x90
	.byte	0xb
	.4byte	0x84
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x30
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x29
	.4byte	.LASF306
	.byte	0x2
	.byte	0x93
	.byte	0x17
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF309
	.byte	0x2
	.byte	0x48
	.byte	0x6
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f8
	.uleb128 0x2d
	.4byte	.LASF30
	.byte	0x2
	.byte	0x48
	.byte	0x1e
	.4byte	0xc6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x2f
	.ascii	"err\000"
	.byte	0x2
	.byte	0x49
	.byte	0xd
	.4byte	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x29
	.4byte	.LASF310
	.byte	0x2
	.byte	0x50
	.byte	0x23
	.4byte	0x3fd
	.uleb128 0x5
	.byte	0x3
	.4byte	channel_0_config.8876
	.uleb128 0x29
	.4byte	.LASF311
	.byte	0x2
	.byte	0x55
	.byte	0x23
	.4byte	0x3fd
	.uleb128 0x5
	.byte	0x3
	.4byte	channel_1_config.8877
	.uleb128 0x29
	.4byte	.LASF312
	.byte	0x2
	.byte	0x5a
	.byte	0x23
	.4byte	0x3fd
	.uleb128 0x5
	.byte	0x3
	.4byte	channel_2_config.8878
	.uleb128 0x29
	.4byte	.LASF313
	.byte	0x2
	.byte	0x5f
	.byte	0x23
	.4byte	0x3fd
	.uleb128 0x5
	.byte	0x3
	.4byte	channel_3_config.8879
	.uleb128 0x32
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x787
	.uleb128 0x29
	.4byte	.LASF306
	.byte	0x2
	.byte	0x70
	.byte	0x16
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x32
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x7a4
	.uleb128 0x29
	.4byte	.LASF306
	.byte	0x2
	.byte	0x73
	.byte	0x16
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x32
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x7c1
	.uleb128 0x29
	.4byte	.LASF306
	.byte	0x2
	.byte	0x76
	.byte	0x16
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x32
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x7de
	.uleb128 0x29
	.4byte	.LASF306
	.byte	0x2
	.byte	0x79
	.byte	0x16
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x30
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x29
	.4byte	.LASF306
	.byte	0x2
	.byte	0x7d
	.byte	0x16
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF314
	.byte	0x2
	.byte	0x26
	.byte	0x6
	.4byte	.LFB235
	.4byte	.LFE235-.LFB235
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85f
	.uleb128 0x2d
	.4byte	.LASF315
	.byte	0x2
	.byte	0x26
	.byte	0x32
	.4byte	0x43f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2f
	.ascii	"err\000"
	.byte	0x2
	.byte	0x27
	.byte	0xd
	.4byte	0x3d4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x30
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x29
	.4byte	.LASF316
	.byte	0x2
	.byte	0x30
	.byte	0xd
	.4byte	0x60
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x30
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x29
	.4byte	.LASF306
	.byte	0x2
	.byte	0x2c
	.byte	0x18
	.4byte	0x9c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF319
	.byte	0x1
	.2byte	0x3bb
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x899
	.uleb128 0x34
	.4byte	.LASF317
	.byte	0x1
	.2byte	0x3bb
	.byte	0x71
	.4byte	0x899
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF318
	.byte	0x1
	.2byte	0x3bb
	.byte	0x86
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x97
	.uleb128 0x33
	.4byte	.LASF320
	.byte	0x1
	.2byte	0x3a6
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ca
	.uleb128 0x34
	.4byte	.LASF321
	.byte	0x1
	.2byte	0x3a6
	.byte	0x6e
	.4byte	0x8ca
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x30d
	.uleb128 0x35
	.4byte	.LASF362
	.byte	0x1
	.2byte	0x386
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.4byte	.LASF322
	.byte	0x1
	.2byte	0x379
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x912
	.uleb128 0x34
	.4byte	.LASF323
	.byte	0x1
	.2byte	0x379
	.byte	0x73
	.4byte	0x323
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF324
	.byte	0x1
	.2byte	0x363
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x96a
	.uleb128 0x34
	.4byte	.LASF325
	.byte	0x1
	.2byte	0x363
	.byte	0x5b
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF326
	.byte	0x1
	.2byte	0x363
	.byte	0x70
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x34
	.4byte	.LASF327
	.byte	0x1
	.2byte	0x363
	.byte	0x85
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x34
	.4byte	.LASF328
	.byte	0x1
	.2byte	0x363
	.byte	0x9a
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x33
	.4byte	.LASF329
	.byte	0x1
	.2byte	0x34c
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x995
	.uleb128 0x34
	.4byte	.LASF330
	.byte	0x1
	.2byte	0x34c
	.byte	0x5e
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF331
	.byte	0x1
	.2byte	0x32c
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9de
	.uleb128 0x34
	.4byte	.LASF332
	.byte	0x1
	.2byte	0x32c
	.byte	0x5b
	.4byte	0x2d7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF333
	.byte	0x1
	.2byte	0x32c
	.byte	0x73
	.4byte	0x9de
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x34
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x32c
	.byte	0x83
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x9c
	.uleb128 0x33
	.4byte	.LASF334
	.byte	0x1
	.2byte	0x307
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0f
	.uleb128 0x34
	.4byte	.LASF335
	.byte	0x1
	.2byte	0x307
	.byte	0x57
	.4byte	0xa0f
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x73
	.uleb128 0x33
	.4byte	.LASF336
	.byte	0x1
	.2byte	0x2fc
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa40
	.uleb128 0x34
	.4byte	.LASF337
	.byte	0x1
	.2byte	0x2fc
	.byte	0x57
	.4byte	0x2d7
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF338
	.byte	0x1
	.2byte	0x2f1
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7a
	.uleb128 0x34
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x2f1
	.byte	0x5f
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x2f1
	.byte	0x87
	.4byte	0xa7a
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x35c
	.uleb128 0x33
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x2e0
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaab
	.uleb128 0x34
	.4byte	.LASF342
	.byte	0x1
	.2byte	0x2e0
	.byte	0x6b
	.4byte	0xaab
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x34b
	.uleb128 0x33
	.4byte	.LASF343
	.byte	0x1
	.2byte	0x2d0
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaeb
	.uleb128 0x34
	.4byte	.LASF11
	.byte	0x1
	.2byte	0x2d0
	.byte	0x67
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF344
	.byte	0x1
	.2byte	0x2d0
	.byte	0x75
	.4byte	0x30
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x33
	.4byte	.LASF345
	.byte	0x1
	.2byte	0x2b1
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb25
	.uleb128 0x34
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x2b1
	.byte	0x5a
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF347
	.byte	0x1
	.2byte	0x2b1
	.byte	0x70
	.4byte	0x2d7
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x33
	.4byte	.LASF348
	.byte	0x1
	.2byte	0x2a7
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5f
	.uleb128 0x34
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x2a7
	.byte	0x5d
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF349
	.byte	0x1
	.2byte	0x2a7
	.byte	0x71
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x33
	.4byte	.LASF350
	.byte	0x1
	.2byte	0x29d
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8a
	.uleb128 0x34
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x29d
	.byte	0x63
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF351
	.byte	0x1
	.2byte	0x294
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb5
	.uleb128 0x34
	.4byte	.LASF346
	.byte	0x1
	.2byte	0x294
	.byte	0x62
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF352
	.byte	0x1
	.2byte	0x28b
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbfe
	.uleb128 0x34
	.4byte	.LASF353
	.byte	0x1
	.2byte	0x28b
	.byte	0x5f
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF354
	.byte	0x1
	.2byte	0x28b
	.byte	0x82
	.4byte	0xbfe
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x34
	.4byte	.LASF355
	.byte	0x1
	.2byte	0x28b
	.byte	0xa6
	.4byte	0xbfe
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xc05
	.uleb128 0x36
	.uleb128 0x11
	.4byte	0xc04
	.uleb128 0x33
	.4byte	.LASF356
	.byte	0x1
	.2byte	0x280
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc35
	.uleb128 0x34
	.4byte	.LASF357
	.byte	0x1
	.2byte	0x280
	.byte	0x64
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF358
	.byte	0x1
	.2byte	0x278
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc60
	.uleb128 0x34
	.4byte	.LASF359
	.byte	0x1
	.2byte	0x278
	.byte	0x64
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF360
	.byte	0x1
	.2byte	0x270
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8b
	.uleb128 0x34
	.4byte	.LASF361
	.byte	0x1
	.2byte	0x270
	.byte	0x66
	.4byte	0x2d7
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF363
	.byte	0x1
	.2byte	0x268
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.4byte	.LASF364
	.byte	0x1
	.2byte	0x24c
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xccd
	.uleb128 0x34
	.4byte	.LASF365
	.byte	0x1
	.2byte	0x24c
	.byte	0x66
	.4byte	0x2d7
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF366
	.byte	0x1
	.2byte	0x241
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.4byte	.LASF367
	.byte	0x1
	.2byte	0x236
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.4byte	.LASF368
	.byte	0x1
	.2byte	0x229
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd26
	.uleb128 0x34
	.4byte	.LASF369
	.byte	0x1
	.2byte	0x229
	.byte	0x60
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF370
	.byte	0x1
	.2byte	0x220
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd60
	.uleb128 0x34
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x220
	.byte	0x60
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF372
	.byte	0x1
	.2byte	0x220
	.byte	0x77
	.4byte	0x2d7
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x33
	.4byte	.LASF373
	.byte	0x1
	.2byte	0x217
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd9a
	.uleb128 0x34
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x217
	.byte	0x60
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x217
	.byte	0x76
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x33
	.4byte	.LASF375
	.byte	0x1
	.2byte	0x20e
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdd4
	.uleb128 0x34
	.4byte	.LASF371
	.byte	0x1
	.2byte	0x20e
	.byte	0x60
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF374
	.byte	0x1
	.2byte	0x20e
	.byte	0x76
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x33
	.4byte	.LASF376
	.byte	0x1
	.2byte	0x205
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe0e
	.uleb128 0x34
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x205
	.byte	0x60
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF378
	.byte	0x1
	.2byte	0x205
	.byte	0x72
	.4byte	0x2d7
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x33
	.4byte	.LASF379
	.byte	0x1
	.2byte	0x1fc
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe48
	.uleb128 0x34
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x1fc
	.byte	0x60
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF380
	.byte	0x1
	.2byte	0x1fc
	.byte	0x70
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x33
	.4byte	.LASF381
	.byte	0x1
	.2byte	0x1f3
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe82
	.uleb128 0x34
	.4byte	.LASF377
	.byte	0x1
	.2byte	0x1f3
	.byte	0x60
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF382
	.byte	0x1
	.2byte	0x1f3
	.byte	0x70
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x33
	.4byte	.LASF383
	.byte	0x1
	.2byte	0x1e9
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xead
	.uleb128 0x34
	.4byte	.LASF384
	.byte	0x1
	.2byte	0x1e9
	.byte	0x64
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF385
	.byte	0x1
	.2byte	0x1de
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xed8
	.uleb128 0x34
	.4byte	.LASF386
	.byte	0x1
	.2byte	0x1de
	.byte	0x5d
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x35
	.4byte	.LASF387
	.byte	0x1
	.2byte	0x1d3
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x33
	.4byte	.LASF388
	.byte	0x1
	.2byte	0x1cd
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf1a
	.uleb128 0x34
	.4byte	.LASF389
	.byte	0x1
	.2byte	0x1cd
	.byte	0x5b
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF390
	.byte	0x1
	.2byte	0x1c4
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf45
	.uleb128 0x34
	.4byte	.LASF391
	.byte	0x1
	.2byte	0x1c4
	.byte	0x64
	.4byte	0x8b
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF392
	.byte	0x1
	.2byte	0x1bc
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf70
	.uleb128 0x34
	.4byte	.LASF393
	.byte	0x1
	.2byte	0x1bc
	.byte	0x66
	.4byte	0x2d7
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF394
	.byte	0x1
	.2byte	0x1b4
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfaa
	.uleb128 0x34
	.4byte	.LASF395
	.byte	0x1
	.2byte	0x1b4
	.byte	0x6a
	.4byte	0x2e9
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x34
	.4byte	.LASF396
	.byte	0x1
	.2byte	0x1b4
	.byte	0x7a
	.4byte	0x30
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x33
	.4byte	.LASF397
	.byte	0x1
	.2byte	0x1aa
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd5
	.uleb128 0x34
	.4byte	.LASF398
	.byte	0x1
	.2byte	0x1aa
	.byte	0x73
	.4byte	0x2e9
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF399
	.byte	0x1
	.2byte	0x1a2
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1000
	.uleb128 0x34
	.4byte	.LASF400
	.byte	0x1
	.2byte	0x1a2
	.byte	0x71
	.4byte	0x2e9
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x33
	.4byte	.LASF401
	.byte	0x1
	.2byte	0x19a
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x102b
	.uleb128 0x34
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x19a
	.byte	0x60
	.4byte	0x102b
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2ef
	.uleb128 0x33
	.4byte	.LASF403
	.byte	0x1
	.2byte	0x192
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x105c
	.uleb128 0x34
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x192
	.byte	0x60
	.4byte	0x102b
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x37
	.4byte	.LASF408
	.byte	0x1
	.2byte	0x189
	.byte	0x41
	.4byte	0x8b
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.4byte	.LASF402
	.byte	0x1
	.2byte	0x189
	.byte	0x5c
	.4byte	0x102b
	.uleb128 0x1
	.byte	0x50
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0xa
	.uleb128 0x17
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0x34
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x2f
	.uleb128 0x34
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x26
	.byte	0
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
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x1062
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1084
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
	.ascii	"NRF_SAADC_RESOLUTION_8BIT\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_RESOLUTION_10BIT\000"
	.4byte	0x37
	.ascii	"NRF_SAADC_RESOLUTION_12BIT\000"
	.4byte	0x3d
	.ascii	"NRF_SAADC_RESOLUTION_14BIT\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_INPUT_DISABLED\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_INPUT_AIN0\000"
	.4byte	0x37
	.ascii	"NRF_SAADC_INPUT_AIN1\000"
	.4byte	0x3d
	.ascii	"NRF_SAADC_INPUT_AIN2\000"
	.4byte	0x43
	.ascii	"NRF_SAADC_INPUT_AIN3\000"
	.4byte	0x49
	.ascii	"NRF_SAADC_INPUT_AIN4\000"
	.4byte	0x4f
	.ascii	"NRF_SAADC_INPUT_AIN5\000"
	.4byte	0x55
	.ascii	"NRF_SAADC_INPUT_AIN6\000"
	.4byte	0x5b
	.ascii	"NRF_SAADC_INPUT_AIN7\000"
	.4byte	0x61
	.ascii	"NRF_SAADC_INPUT_VDD\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_OVERSAMPLE_DISABLED\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_OVERSAMPLE_2X\000"
	.4byte	0x37
	.ascii	"NRF_SAADC_OVERSAMPLE_4X\000"
	.4byte	0x3d
	.ascii	"NRF_SAADC_OVERSAMPLE_8X\000"
	.4byte	0x43
	.ascii	"NRF_SAADC_OVERSAMPLE_16X\000"
	.4byte	0x49
	.ascii	"NRF_SAADC_OVERSAMPLE_32X\000"
	.4byte	0x4f
	.ascii	"NRF_SAADC_OVERSAMPLE_64X\000"
	.4byte	0x55
	.ascii	"NRF_SAADC_OVERSAMPLE_128X\000"
	.4byte	0x5b
	.ascii	"NRF_SAADC_OVERSAMPLE_256X\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_RESISTOR_DISABLED\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_RESISTOR_PULLDOWN\000"
	.4byte	0x37
	.ascii	"NRF_SAADC_RESISTOR_PULLUP\000"
	.4byte	0x3d
	.ascii	"NRF_SAADC_RESISTOR_VDD1_2\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_GAIN1_6\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_GAIN1_5\000"
	.4byte	0x37
	.ascii	"NRF_SAADC_GAIN1_4\000"
	.4byte	0x3d
	.ascii	"NRF_SAADC_GAIN1_3\000"
	.4byte	0x43
	.ascii	"NRF_SAADC_GAIN1_2\000"
	.4byte	0x49
	.ascii	"NRF_SAADC_GAIN1\000"
	.4byte	0x4f
	.ascii	"NRF_SAADC_GAIN2\000"
	.4byte	0x55
	.ascii	"NRF_SAADC_GAIN4\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_REFERENCE_INTERNAL\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_REFERENCE_VDD4\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_ACQTIME_3US\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_ACQTIME_5US\000"
	.4byte	0x37
	.ascii	"NRF_SAADC_ACQTIME_10US\000"
	.4byte	0x3d
	.ascii	"NRF_SAADC_ACQTIME_15US\000"
	.4byte	0x43
	.ascii	"NRF_SAADC_ACQTIME_20US\000"
	.4byte	0x49
	.ascii	"NRF_SAADC_ACQTIME_40US\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_MODE_SINGLE_ENDED\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_MODE_DIFFERENTIAL\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_BURST_DISABLED\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_BURST_ENABLED\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_LIMIT_LOW\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_LIMIT_HIGH\000"
	.4byte	0x2b
	.ascii	"NRFX_SAADC_EVT_DONE\000"
	.4byte	0x31
	.ascii	"NRFX_SAADC_EVT_LIMIT\000"
	.4byte	0x37
	.ascii	"NRFX_SAADC_EVT_CALIBRATEDONE\000"
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
	.4byte	0x470
	.ascii	"saadc_config\000"
	.4byte	0x482
	.ascii	"calibration_completed\000"
	.4byte	0x494
	.ascii	"initial_calibration_completed\000"
	.4byte	0x4a6
	.ascii	"cb\000"
	.4byte	0x4b7
	.ascii	"IR_config\000"
	.4byte	0x4d9
	.ascii	"conversion_buffer\000"
	.4byte	0x4a6
	.ascii	"cb\000"
	.4byte	0x4d9
	.ascii	"conversion_buffer\000"
	.4byte	0x4eb
	.ascii	"IrAnalogToMM\000"
	.4byte	0x533
	.ascii	"IrAnalogToCM\000"
	.4byte	0x55d
	.ascii	"i16DistSens_readMM\000"
	.4byte	0x596
	.ascii	"ui8DistSens_readCM\000"
	.4byte	0x5cf
	.ascii	"ir_calibrate\000"
	.4byte	0x5e1
	.ascii	"ir_read_blocking\000"
	.4byte	0x67a
	.ascii	"ir_read\000"
	.4byte	0x6ee
	.ascii	"ir_init\000"
	.4byte	0x7f8
	.ascii	"saadc_event_handler\000"
	.4byte	0x85f
	.ascii	"sd_protected_register_write\000"
	.4byte	0x89f
	.ascii	"sd_radio_request\000"
	.4byte	0x8d0
	.ascii	"sd_radio_session_close\000"
	.4byte	0x8e7
	.ascii	"sd_radio_session_open\000"
	.4byte	0x912
	.ascii	"sd_flash_protect\000"
	.4byte	0x96a
	.ascii	"sd_flash_page_erase\000"
	.4byte	0x995
	.ascii	"sd_flash_write\000"
	.4byte	0x9e4
	.ascii	"sd_temp_get\000"
	.4byte	0xa15
	.ascii	"sd_evt_get\000"
	.4byte	0xa40
	.ascii	"sd_ecb_blocks_encrypt\000"
	.4byte	0xa80
	.ascii	"sd_ecb_block_encrypt\000"
	.4byte	0xab1
	.ascii	"sd_radio_notification_cfg_set\000"
	.4byte	0xaeb
	.ascii	"sd_ppi_group_get\000"
	.4byte	0xb25
	.ascii	"sd_ppi_group_assign\000"
	.4byte	0xb5f
	.ascii	"sd_ppi_group_task_disable\000"
	.4byte	0xb8a
	.ascii	"sd_ppi_group_task_enable\000"
	.4byte	0xbb5
	.ascii	"sd_ppi_channel_assign\000"
	.4byte	0xc0a
	.ascii	"sd_ppi_channel_enable_clr\000"
	.4byte	0xc35
	.ascii	"sd_ppi_channel_enable_set\000"
	.4byte	0xc60
	.ascii	"sd_ppi_channel_enable_get\000"
	.4byte	0xc8b
	.ascii	"sd_app_evt_wait\000"
	.4byte	0xca2
	.ascii	"sd_clock_hfclk_is_running\000"
	.4byte	0xccd
	.ascii	"sd_clock_hfclk_release\000"
	.4byte	0xce4
	.ascii	"sd_clock_hfclk_request\000"
	.4byte	0xcfb
	.ascii	"sd_power_dcdc_mode_set\000"
	.4byte	0xd26
	.ascii	"sd_power_gpregret_get\000"
	.4byte	0xd60
	.ascii	"sd_power_gpregret_clr\000"
	.4byte	0xd9a
	.ascii	"sd_power_gpregret_set\000"
	.4byte	0xdd4
	.ascii	"sd_power_ram_power_get\000"
	.4byte	0xe0e
	.ascii	"sd_power_ram_power_clr\000"
	.4byte	0xe48
	.ascii	"sd_power_ram_power_set\000"
	.4byte	0xe82
	.ascii	"sd_power_pof_threshold_set\000"
	.4byte	0xead
	.ascii	"sd_power_pof_enable\000"
	.4byte	0xed8
	.ascii	"sd_power_system_off\000"
	.4byte	0xeef
	.ascii	"sd_power_mode_set\000"
	.4byte	0xf1a
	.ascii	"sd_power_reset_reason_clr\000"
	.4byte	0xf45
	.ascii	"sd_power_reset_reason_get\000"
	.4byte	0xf70
	.ascii	"sd_rand_application_vector_get\000"
	.4byte	0xfaa
	.ascii	"sd_rand_application_bytes_available_get\000"
	.4byte	0xfd5
	.ascii	"sd_rand_application_pool_capacity_get\000"
	.4byte	0x1000
	.ascii	"sd_mutex_release\000"
	.4byte	0x1031
	.ascii	"sd_mutex_acquire\000"
	.4byte	0x105c
	.ascii	"sd_mutex_new\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x357
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1084
	.4byte	0x29
	.ascii	"signed char\000"
	.4byte	0x41
	.ascii	"unsigned char\000"
	.4byte	0x30
	.ascii	"uint8_t\000"
	.4byte	0x59
	.ascii	"short int\000"
	.4byte	0x4d
	.ascii	"int16_t\000"
	.4byte	0x6c
	.ascii	"short unsigned int\000"
	.4byte	0x60
	.ascii	"uint16_t\000"
	.4byte	0x84
	.ascii	"int\000"
	.4byte	0x73
	.ascii	"int32_t\000"
	.4byte	0xa1
	.ascii	"unsigned int\000"
	.4byte	0x8b
	.ascii	"uint32_t\000"
	.4byte	0xa8
	.ascii	"long long int\000"
	.4byte	0xaf
	.ascii	"long long unsigned int\000"
	.4byte	0xb6
	.ascii	"IR_Sensor_t\000"
	.4byte	0xc6
	.ascii	"IR_Resolution_t\000"
	.4byte	0xd6
	.ascii	"ir_cb_t\000"
	.4byte	0xf3
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xfa
	.ascii	"char\000"
	.4byte	0x106
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x11b
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x276
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0xb
	.ascii	"NRF_SOC_SVCS\000"
	.4byte	0x2ef
	.ascii	"nrf_mutex_t\000"
	.4byte	0x2fc
	.ascii	"nrf_radio_request_t\000"
	.4byte	0x312
	.ascii	"nrf_radio_signal_callback_return_param_t\000"
	.4byte	0x323
	.ascii	"nrf_radio_signal_callback_t\000"
	.4byte	0x34b
	.ascii	"nrf_ecb_hal_data_t\000"
	.4byte	0x35c
	.ascii	"nrf_ecb_hal_data_block_t\000"
	.4byte	0x36d
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x389
	.ascii	"FILE\000"
	.4byte	0x3c8
	.ascii	"ret_code_t\000"
	.4byte	0x3d4
	.ascii	"nrfx_err_t\000"
	.4byte	0x3e0
	.ascii	"nrf_saadc_input_t\000"
	.4byte	0x3f0
	.ascii	"nrf_saadc_value_t\000"
	.4byte	0x3fd
	.ascii	"nrf_saadc_channel_config_t\000"
	.4byte	0x40e
	.ascii	"_Bool\000"
	.4byte	0x415
	.ascii	"nrfx_saadc_config_t\000"
	.4byte	0x42a
	.ascii	"nrfx_saadc_evt_t\000"
	.4byte	0x445
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x462
	.ascii	"float\000"
	.4byte	0x469
	.ascii	"double\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1b4
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
	.uleb128 0x1
	.uleb128 0x9
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x5
	.file 17 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x11
	.file 18 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x12
	.file 19 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.file 20 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x14
	.file 21 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x15
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.file 22 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x16
	.byte	0x4
	.file 23 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x17
	.file 24 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x92
	.uleb128 0xa
	.file 25 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x19
	.file 26 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x1a
	.byte	0x4
	.byte	0x4
	.file 27 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x1b
	.byte	0x4
	.file 28 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x1c
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.file 29 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x1d
	.byte	0x4
	.file 30 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x1e
	.byte	0x4
	.file 31 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x1f
	.byte	0x4
	.file 32 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x20
	.byte	0x4
	.byte	0x4
	.file 33 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x21
	.file 34 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x22
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0xf
	.file 35 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x23
	.byte	0x4
	.file 36 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x24
	.file 37 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x25
	.byte	0x4
	.byte	0x4
	.file 38 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x26
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x20
	.byte	0x4
	.file 39 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x27
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb6
	.uleb128 0x27
	.byte	0x4
	.file 40 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0xb7
	.uleb128 0x28
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x1
	.file 41 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x29
	.byte	0x4
	.file 42 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x2a
	.byte	0x4
	.file 43 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x2b
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x26
	.byte	0x4
	.file 44 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x2c
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x2a
	.byte	0x4
	.byte	0x4
	.file 45 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 46 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x2e
	.byte	0x4
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0xe
	.byte	0x4
	.file 47 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x2f
	.file 48 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x30
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 49 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x31
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.file 50 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x32
	.file 51 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x33
	.file 52 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x34
	.byte	0x4
	.file 53 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x35
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xc
	.byte	0x4
	.file 54 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x36
	.byte	0x4
	.byte	0x4
	.file 55 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x37
	.byte	0x4
	.file 56 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x38
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x10
	.file 57 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x39
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
	.file 58 "../../../../../../components/libraries/delay/nrf_delay.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x3a
	.byte	0x4
	.file 59 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x3b
	.byte	0x4
	.file 60 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\defines.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x3c
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF34:
	.ascii	"nrf_saadc_resolution_t\000"
.LASF216:
	.ascii	"int_p_sep_by_space\000"
.LASF242:
	.ascii	"IR_Sensor_t\000"
.LASF180:
	.ascii	"__locale_s\000"
.LASF322:
	.ascii	"sd_radio_session_open\000"
.LASF191:
	.ascii	"__towupper\000"
.LASF186:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF385:
	.ascii	"sd_power_pof_enable\000"
.LASF196:
	.ascii	"decimal_point\000"
.LASF66:
	.ascii	"NRF_SAADC_REFERENCE_VDD4\000"
.LASF5:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF239:
	.ascii	"int32_t\000"
.LASF116:
	.ascii	"request\000"
.LASF75:
	.ascii	"NRF_SAADC_RESISTOR_DISABLED\000"
.LASF275:
	.ascii	"nrf_nvic_state_t\000"
.LASF50:
	.ascii	"nrf_saadc_mode_t\000"
.LASF347:
	.ascii	"p_channel_msk\000"
.LASF226:
	.ascii	"time_format\000"
.LASF254:
	.ascii	"__RAL_data_utf8_period\000"
.LASF381:
	.ascii	"sd_power_ram_power_set\000"
.LASF173:
	.ascii	"SVC_SOC_LAST\000"
.LASF379:
	.ascii	"sd_power_ram_power_clr\000"
.LASF222:
	.ascii	"month_names\000"
.LASF304:
	.ascii	"ui8DistSens_readCM\000"
.LASF199:
	.ascii	"int_curr_symbol\000"
.LASF316:
	.ascii	"average\000"
.LASF11:
	.ascii	"type\000"
.LASF210:
	.ascii	"n_cs_precedes\000"
.LASF147:
	.ascii	"SD_RAND_APPLICATION_VECTOR_GET\000"
.LASF189:
	.ascii	"__tolower\000"
.LASF17:
	.ascii	"nrfx_saadc_limit_evt_t\000"
.LASF267:
	.ascii	"__StackLimit\000"
.LASF149:
	.ascii	"SD_POWER_SYSTEM_OFF\000"
.LASF171:
	.ascii	"SD_EVT_GET\000"
.LASF319:
	.ascii	"sd_protected_register_write\000"
.LASF97:
	.ascii	"NRF_SAADC_INPUT_VDD\000"
.LASF206:
	.ascii	"int_frac_digits\000"
.LASF164:
	.ascii	"SD_CLOCK_HFCLK_IS_RUNNING\000"
.LASF135:
	.ascii	"SD_PPI_GROUP_TASK_DISABLE\000"
.LASF303:
	.ascii	"measurement\000"
.LASF61:
	.ascii	"NRF_SAADC_ACQTIME_10US\000"
.LASF13:
	.ascii	"nrfx_saadc_evt_type_t\000"
.LASF62:
	.ascii	"NRF_SAADC_ACQTIME_15US\000"
.LASF299:
	.ascii	"result\000"
.LASF234:
	.ascii	"IR_SENSOR_1\000"
.LASF235:
	.ascii	"IR_SENSOR_2\000"
.LASF236:
	.ascii	"IR_SENSOR_3\000"
.LASF237:
	.ascii	"IR_SENSOR_4\000"
.LASF121:
	.ascii	"request_type\000"
.LASF39:
	.ascii	"gain\000"
.LASF225:
	.ascii	"date_format\000"
.LASF106:
	.ascii	"p_key\000"
.LASF201:
	.ascii	"mon_decimal_point\000"
.LASF195:
	.ascii	"long int\000"
.LASF119:
	.ascii	"p_next\000"
.LASF179:
	.ascii	"__RAL_error_decoder_s\000"
.LASF262:
	.ascii	"__RAL_error_decoder_t\000"
.LASF331:
	.ascii	"sd_flash_write\000"
.LASF166:
	.ascii	"SD_ECB_BLOCK_ENCRYPT\000"
.LASF245:
	.ascii	"__RAL_global_locale\000"
.LASF111:
	.ascii	"ciphertext\000"
.LASF345:
	.ascii	"sd_ppi_group_get\000"
.LASF214:
	.ascii	"int_p_cs_precedes\000"
.LASF215:
	.ascii	"int_n_cs_precedes\000"
.LASF333:
	.ascii	"p_src\000"
.LASF365:
	.ascii	"p_is_running\000"
.LASF167:
	.ascii	"SD_ECB_BLOCKS_ENCRYPT\000"
.LASF406:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF336:
	.ascii	"sd_evt_get\000"
.LASF110:
	.ascii	"cleartext\000"
.LASF168:
	.ascii	"SD_RADIO_SESSION_OPEN\000"
.LASF370:
	.ascii	"sd_power_gpregret_get\000"
.LASF332:
	.ascii	"p_dst\000"
.LASF354:
	.ascii	"evt_endpoint\000"
.LASF16:
	.ascii	"nrfx_saadc_done_evt_t\000"
.LASF358:
	.ascii	"sd_ppi_channel_enable_set\000"
.LASF327:
	.ascii	"block_cfg2\000"
.LASF194:
	.ascii	"__mbtowc\000"
.LASF356:
	.ascii	"sd_ppi_channel_enable_clr\000"
.LASF294:
	.ascii	"saadc_config\000"
.LASF238:
	.ascii	"signed char\000"
.LASF324:
	.ascii	"sd_flash_protect\000"
.LASF20:
	.ascii	"uint8_t\000"
.LASF103:
	.ascii	"__cr_flag\000"
.LASF150:
	.ascii	"SD_POWER_RESET_REASON_GET\000"
.LASF47:
	.ascii	"nrf_saadc_gain_t\000"
.LASF48:
	.ascii	"nrf_saadc_reference_t\000"
.LASF350:
	.ascii	"sd_ppi_group_task_disable\000"
.LASF394:
	.ascii	"sd_rand_application_vector_get\000"
.LASF117:
	.ascii	"extend\000"
.LASF10:
	.ascii	"unsigned char\000"
.LASF392:
	.ascii	"sd_power_reset_reason_get\000"
.LASF313:
	.ascii	"channel_3_config\000"
.LASF211:
	.ascii	"n_sep_by_space\000"
.LASF387:
	.ascii	"sd_power_system_off\000"
.LASF300:
	.ascii	"IrAnalogToMM\000"
.LASF314:
	.ascii	"saadc_event_handler\000"
.LASF308:
	.ascii	"ir_read\000"
.LASF329:
	.ascii	"sd_flash_page_erase\000"
.LASF289:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF317:
	.ascii	"p_register\000"
.LASF256:
	.ascii	"__RAL_data_utf8_space\000"
.LASF131:
	.ascii	"SD_PPI_CHANNEL_ENABLE_SET\000"
.LASF323:
	.ascii	"p_radio_signal_callback\000"
.LASF132:
	.ascii	"SD_PPI_CHANNEL_ENABLE_CLR\000"
.LASF36:
	.ascii	"_Bool\000"
.LASF99:
	.ascii	"NRF_SAADC_RESOLUTION_10BIT\000"
.LASF172:
	.ascii	"SD_TEMP_GET\000"
.LASF318:
	.ascii	"value\000"
.LASF366:
	.ascii	"sd_clock_hfclk_release\000"
.LASF178:
	.ascii	"char\000"
.LASF100:
	.ascii	"NRF_SAADC_RESOLUTION_12BIT\000"
.LASF349:
	.ascii	"channel_msk\000"
.LASF368:
	.ascii	"sd_power_dcdc_mode_set\000"
.LASF71:
	.ascii	"NRF_SAADC_GAIN1_2\000"
.LASF70:
	.ascii	"NRF_SAADC_GAIN1_3\000"
.LASF69:
	.ascii	"NRF_SAADC_GAIN1_4\000"
.LASF68:
	.ascii	"NRF_SAADC_GAIN1_5\000"
.LASF67:
	.ascii	"NRF_SAADC_GAIN1_6\000"
.LASF273:
	.ascii	"nrf_ecb_hal_data_t\000"
.LASF330:
	.ascii	"page_number\000"
.LASF391:
	.ascii	"reset_reason_clr_msk\000"
.LASF213:
	.ascii	"n_sign_posn\000"
.LASF278:
	.ascii	"timeval\000"
.LASF43:
	.ascii	"burst\000"
.LASF344:
	.ascii	"distance\000"
.LASF337:
	.ascii	"p_evt_id\000"
.LASF364:
	.ascii	"sd_clock_hfclk_is_running\000"
.LASF253:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF123:
	.ascii	"normal\000"
.LASF202:
	.ascii	"mon_thousands_sep\000"
.LASF4:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF351:
	.ascii	"sd_ppi_group_task_enable\000"
.LASF192:
	.ascii	"__towlower\000"
.LASF280:
	.ascii	"stdin\000"
.LASF310:
	.ascii	"channel_0_config\000"
.LASF205:
	.ascii	"negative_sign\000"
.LASF175:
	.ascii	"decode\000"
.LASF307:
	.ascii	"ir_cb\000"
.LASF276:
	.ascii	"nrf_nvic_state\000"
.LASF127:
	.ascii	"priority\000"
.LASF359:
	.ascii	"channel_enable_set_msk\000"
.LASF7:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF204:
	.ascii	"positive_sign\000"
.LASF15:
	.ascii	"limit\000"
.LASF283:
	.ascii	"ret_code_t\000"
.LASF145:
	.ascii	"SD_RAND_APPLICATION_POOL_CAPACITY_GET\000"
.LASF247:
	.ascii	"__RAL_codeset_ascii\000"
.LASF233:
	.ascii	"IR_RESOLUTION_12\000"
.LASF407:
	.ascii	"ir_calibrate\000"
.LASF182:
	.ascii	"__RAL_locale_t\000"
.LASF285:
	.ascii	"nrf_saadc_channel_config_t\000"
.LASF386:
	.ascii	"pof_enable\000"
.LASF56:
	.ascii	"NRF_SAADC_BURST_ENABLED\000"
.LASF367:
	.ascii	"sd_clock_hfclk_request\000"
.LASF184:
	.ascii	"codeset\000"
.LASF338:
	.ascii	"sd_ecb_blocks_encrypt\000"
.LASF80:
	.ascii	"NRF_SAADC_OVERSAMPLE_2X\000"
.LASF243:
	.ascii	"IR_Resolution_t\000"
.LASF377:
	.ascii	"index\000"
.LASF59:
	.ascii	"NRF_SAADC_ACQTIME_3US\000"
.LASF38:
	.ascii	"resistor_n\000"
.LASF37:
	.ascii	"resistor_p\000"
.LASF335:
	.ascii	"p_temp\000"
.LASF128:
	.ascii	"distance_us\000"
.LASF230:
	.ascii	"__wchar\000"
.LASF232:
	.ascii	"IR_RESOLUTION_10\000"
.LASF263:
	.ascii	"__RAL_error_decoder_head\000"
.LASF40:
	.ascii	"reference\000"
.LASF185:
	.ascii	"__RAL_locale_data_t\000"
.LASF177:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF272:
	.ascii	"nrf_radio_signal_callback_t\000"
.LASF252:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF325:
	.ascii	"block_cfg0\000"
.LASF326:
	.ascii	"block_cfg1\000"
.LASF265:
	.ascii	"SystemCoreClock\000"
.LASF328:
	.ascii	"block_cfg3\000"
.LASF203:
	.ascii	"mon_grouping\000"
.LASF18:
	.ascii	"channel\000"
.LASF29:
	.ascii	"NRFX_SAADC_EVT_CALIBRATEDONE\000"
.LASF296:
	.ascii	"conversion_buffer\000"
.LASF274:
	.ascii	"nrf_ecb_hal_data_block_t\000"
.LASF266:
	.ascii	"__StackTop\000"
.LASF21:
	.ascii	"nrf_saadc_limit_t\000"
.LASF163:
	.ascii	"SD_CLOCK_HFCLK_RELEASE\000"
.LASF27:
	.ascii	"NRFX_SAADC_EVT_DONE\000"
.LASF224:
	.ascii	"am_pm_indicator\000"
.LASF342:
	.ascii	"p_ecb_data\000"
.LASF209:
	.ascii	"p_sep_by_space\000"
.LASF143:
	.ascii	"SD_MUTEX_ACQUIRE\000"
.LASF81:
	.ascii	"NRF_SAADC_OVERSAMPLE_4X\000"
.LASF339:
	.ascii	"block_count\000"
.LASF113:
	.ascii	"soc_ecb_cleartext_t\000"
.LASF340:
	.ascii	"p_data_blocks\000"
.LASF400:
	.ascii	"p_pool_capacity\000"
.LASF159:
	.ascii	"SD_POWER_GPREGRET_GET\000"
.LASF0:
	.ascii	"module_id\000"
.LASF217:
	.ascii	"int_n_sep_by_space\000"
.LASF361:
	.ascii	"p_channel_enable\000"
.LASF108:
	.ascii	"p_ciphertext\000"
.LASF208:
	.ascii	"p_cs_precedes\000"
.LASF260:
	.ascii	"__user_set_time_of_day\000"
.LASF292:
	.ascii	"calibration_completed\000"
.LASF343:
	.ascii	"sd_radio_notification_cfg_set\000"
.LASF240:
	.ascii	"long long int\000"
.LASF228:
	.ascii	"__mbstate_s\000"
.LASF22:
	.ascii	"p_buffer\000"
.LASF33:
	.ascii	"low_power_mode\000"
.LASF389:
	.ascii	"power_mode\000"
.LASF362:
	.ascii	"sd_radio_session_close\000"
.LASF291:
	.ascii	"double\000"
.LASF286:
	.ascii	"nrfx_saadc_config_t\000"
.LASF181:
	.ascii	"__category\000"
.LASF126:
	.ascii	"hfclk\000"
.LASF6:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF264:
	.ascii	"ITM_RxBuffer\000"
.LASF382:
	.ascii	"ram_powerset\000"
.LASF353:
	.ascii	"channel_num\000"
.LASF227:
	.ascii	"date_time_format\000"
.LASF380:
	.ascii	"ram_powerclr\000"
.LASF290:
	.ascii	"float\000"
.LASF120:
	.ascii	"nrf_radio_request_t\000"
.LASF88:
	.ascii	"NRF_SAADC_INPUT_DISABLED\000"
.LASF393:
	.ascii	"p_reset_reason\000"
.LASF212:
	.ascii	"p_sign_posn\000"
.LASF384:
	.ascii	"threshold\000"
.LASF24:
	.ascii	"nrf_saadc_value_t\000"
.LASF287:
	.ascii	"nrfx_saadc_evt_t\000"
.LASF138:
	.ascii	"SD_FLASH_PAGE_ERASE\000"
.LASF105:
	.ascii	"unsigned int\000"
.LASF77:
	.ascii	"NRF_SAADC_RESISTOR_PULLUP\000"
.LASF297:
	.ascii	"reading\000"
.LASF162:
	.ascii	"SD_CLOCK_HFCLK_REQUEST\000"
.LASF374:
	.ascii	"gpregret_msk\000"
.LASF60:
	.ascii	"NRF_SAADC_ACQTIME_5US\000"
.LASF125:
	.ascii	"nrf_radio_request_normal_t\000"
.LASF101:
	.ascii	"NRF_SAADC_RESOLUTION_14BIT\000"
.LASF270:
	.ascii	"nrf_mutex_t\000"
.LASF8:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF82:
	.ascii	"NRF_SAADC_OVERSAMPLE_8X\000"
.LASF261:
	.ascii	"__user_get_time_of_day\000"
.LASF312:
	.ascii	"channel_2_config\000"
.LASF45:
	.ascii	"pin_n\000"
.LASF122:
	.ascii	"earliest\000"
.LASF44:
	.ascii	"pin_p\000"
.LASF363:
	.ascii	"sd_app_evt_wait\000"
.LASF375:
	.ascii	"sd_power_gpregret_set\000"
.LASF248:
	.ascii	"__RAL_codeset_utf8\000"
.LASF14:
	.ascii	"done\000"
.LASF246:
	.ascii	"__RAL_c_locale\000"
.LASF373:
	.ascii	"sd_power_gpregret_clr\000"
.LASF52:
	.ascii	"nrf_saadc_input_t\000"
.LASF369:
	.ascii	"dcdc_mode\000"
.LASF187:
	.ascii	"__isctype\000"
.LASF63:
	.ascii	"NRF_SAADC_ACQTIME_20US\000"
.LASF395:
	.ascii	"p_buff\000"
.LASF279:
	.ascii	"__RAL_FILE\000"
.LASF64:
	.ascii	"NRF_SAADC_ACQTIME_40US\000"
.LASF86:
	.ascii	"NRF_SAADC_OVERSAMPLE_128X\000"
.LASF161:
	.ascii	"SD_APP_EVT_WAIT\000"
.LASF376:
	.ascii	"sd_power_ram_power_get\000"
.LASF152:
	.ascii	"SD_POWER_POF_ENABLE\000"
.LASF348:
	.ascii	"sd_ppi_group_assign\000"
.LASF390:
	.ascii	"sd_power_reset_reason_clr\000"
.LASF277:
	.ascii	"FILE\000"
.LASF269:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF124:
	.ascii	"nrf_radio_request_earliest_t\000"
.LASF271:
	.ascii	"nrf_radio_signal_callback_return_param_t\000"
.LASF156:
	.ascii	"SD_POWER_RAM_POWER_GET\000"
.LASF109:
	.ascii	"soc_ecb_ciphertext_t\000"
.LASF9:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF257:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF219:
	.ascii	"int_n_sign_posn\000"
.LASF137:
	.ascii	"SD_PPI_GROUP_GET\000"
.LASF133:
	.ascii	"SD_PPI_CHANNEL_ASSIGN\000"
.LASF408:
	.ascii	"sd_mutex_new\000"
.LASF401:
	.ascii	"sd_mutex_release\000"
.LASF399:
	.ascii	"sd_rand_application_pool_capacity_get\000"
.LASF87:
	.ascii	"NRF_SAADC_OVERSAMPLE_256X\000"
.LASF23:
	.ascii	"size\000"
.LASF383:
	.ascii	"sd_power_pof_threshold_set\000"
.LASF241:
	.ascii	"long long unsigned int\000"
.LASF115:
	.ascii	"params\000"
.LASF372:
	.ascii	"p_gpregret\000"
.LASF154:
	.ascii	"SD_POWER_RAM_POWER_SET\000"
.LASF396:
	.ascii	"length\000"
.LASF2:
	.ascii	"uint16_t\000"
.LASF346:
	.ascii	"group_num\000"
.LASF155:
	.ascii	"SD_POWER_RAM_POWER_CLR\000"
.LASF174:
	.ascii	"NRF_SOC_SVCS\000"
.LASF41:
	.ascii	"acq_time\000"
.LASF46:
	.ascii	"nrf_saadc_resistor_t\000"
.LASF321:
	.ascii	"p_request\000"
.LASF118:
	.ascii	"length_us\000"
.LASF378:
	.ascii	"p_ram_power\000"
.LASF160:
	.ascii	"SD_POWER_DCDC_MODE_SET\000"
.LASF293:
	.ascii	"initial_calibration_completed\000"
.LASF355:
	.ascii	"task_endpoint\000"
.LASF72:
	.ascii	"NRF_SAADC_GAIN1\000"
.LASF73:
	.ascii	"NRF_SAADC_GAIN2\000"
.LASF74:
	.ascii	"NRF_SAADC_GAIN4\000"
.LASF57:
	.ascii	"NRF_SAADC_MODE_SINGLE_ENDED\000"
.LASF142:
	.ascii	"SD_MUTEX_NEW\000"
.LASF148:
	.ascii	"SD_POWER_MODE_SET\000"
.LASF170:
	.ascii	"SD_RADIO_REQUEST\000"
.LASF284:
	.ascii	"nrfx_err_t\000"
.LASF129:
	.ascii	"timeout_us\000"
.LASF114:
	.ascii	"callback_action\000"
.LASF198:
	.ascii	"grouping\000"
.LASF112:
	.ascii	"soc_ecb_key_t\000"
.LASF54:
	.ascii	"NRF_SAADC_LIMIT_HIGH\000"
.LASF288:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF107:
	.ascii	"p_cleartext\000"
.LASF221:
	.ascii	"abbrev_day_names\000"
.LASF360:
	.ascii	"sd_ppi_channel_enable_get\000"
.LASF153:
	.ascii	"SD_POWER_POF_THRESHOLD_SET\000"
.LASF309:
	.ascii	"ir_init\000"
.LASF249:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF402:
	.ascii	"p_mutex\000"
.LASF197:
	.ascii	"thousands_sep\000"
.LASF268:
	.ascii	"_vectors\000"
.LASF53:
	.ascii	"NRF_SAADC_LIMIT_LOW\000"
.LASF388:
	.ascii	"sd_power_mode_set\000"
.LASF188:
	.ascii	"__toupper\000"
.LASF79:
	.ascii	"NRF_SAADC_OVERSAMPLE_DISABLED\000"
.LASF315:
	.ascii	"p_event\000"
.LASF231:
	.ascii	"IR_RESOLUTION_8\000"
.LASF357:
	.ascii	"channel_enable_clr_msk\000"
.LASF183:
	.ascii	"name\000"
.LASF207:
	.ascii	"frac_digits\000"
.LASF200:
	.ascii	"currency_symbol\000"
.LASF282:
	.ascii	"stderr\000"
.LASF26:
	.ascii	"short int\000"
.LASF306:
	.ascii	"LOCAL_ERR_CODE\000"
.LASF42:
	.ascii	"mode\000"
.LASF334:
	.ascii	"sd_temp_get\000"
.LASF76:
	.ascii	"NRF_SAADC_RESISTOR_PULLDOWN\000"
.LASF229:
	.ascii	"__state\000"
.LASF30:
	.ascii	"resolution\000"
.LASF25:
	.ascii	"int16_t\000"
.LASF130:
	.ascii	"SD_PPI_CHANNEL_ENABLE_GET\000"
.LASF85:
	.ascii	"NRF_SAADC_OVERSAMPLE_64X\000"
.LASF65:
	.ascii	"NRF_SAADC_REFERENCE_INTERNAL\000"
.LASF193:
	.ascii	"__wctomb\000"
.LASF403:
	.ascii	"sd_mutex_acquire\000"
.LASF84:
	.ascii	"NRF_SAADC_OVERSAMPLE_32X\000"
.LASF341:
	.ascii	"sd_ecb_block_encrypt\000"
.LASF220:
	.ascii	"day_names\000"
.LASF258:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF218:
	.ascii	"int_p_sign_posn\000"
.LASF320:
	.ascii	"sd_radio_request\000"
.LASF98:
	.ascii	"NRF_SAADC_RESOLUTION_8BIT\000"
.LASF190:
	.ascii	"__iswctype\000"
.LASF58:
	.ascii	"NRF_SAADC_MODE_DIFFERENTIAL\000"
.LASF31:
	.ascii	"oversample\000"
.LASF405:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_applicationLeithe\\drivers\\ir.c\000"
.LASF134:
	.ascii	"SD_PPI_GROUP_TASK_ENABLE\000"
.LASF250:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF157:
	.ascii	"SD_POWER_GPREGRET_SET\000"
.LASF1:
	.ascii	"padding\000"
.LASF83:
	.ascii	"NRF_SAADC_OVERSAMPLE_16X\000"
.LASF158:
	.ascii	"SD_POWER_GPREGRET_CLR\000"
.LASF35:
	.ascii	"nrf_saadc_oversample_t\000"
.LASF144:
	.ascii	"SD_MUTEX_RELEASE\000"
.LASF51:
	.ascii	"nrf_saadc_burst_t\000"
.LASF104:
	.ascii	"uint32_t\000"
.LASF102:
	.ascii	"__irq_masks\000"
.LASF301:
	.ascii	"IrAnalogToCM\000"
.LASF141:
	.ascii	"SD_PROTECTED_REGISTER_WRITE\000"
.LASF371:
	.ascii	"gpregret_id\000"
.LASF165:
	.ascii	"SD_RADIO_NOTIFICATION_CFG_SET\000"
.LASF259:
	.ascii	"__RAL_data_empty_string\000"
.LASF19:
	.ascii	"limit_type\000"
.LASF298:
	.ascii	"sensor\000"
.LASF139:
	.ascii	"SD_FLASH_WRITE\000"
.LASF302:
	.ascii	"i16DistSens_readMM\000"
.LASF89:
	.ascii	"NRF_SAADC_INPUT_AIN0\000"
.LASF90:
	.ascii	"NRF_SAADC_INPUT_AIN1\000"
.LASF91:
	.ascii	"NRF_SAADC_INPUT_AIN2\000"
.LASF92:
	.ascii	"NRF_SAADC_INPUT_AIN3\000"
.LASF93:
	.ascii	"NRF_SAADC_INPUT_AIN4\000"
.LASF94:
	.ascii	"NRF_SAADC_INPUT_AIN5\000"
.LASF95:
	.ascii	"NRF_SAADC_INPUT_AIN6\000"
.LASF96:
	.ascii	"NRF_SAADC_INPUT_AIN7\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF281:
	.ascii	"stdout\000"
.LASF32:
	.ascii	"interrupt_priority\000"
.LASF55:
	.ascii	"NRF_SAADC_BURST_DISABLED\000"
.LASF140:
	.ascii	"SD_FLASH_PROTECT\000"
.LASF136:
	.ascii	"SD_PPI_GROUP_ASSIGN\000"
.LASF398:
	.ascii	"p_bytes_available\000"
.LASF305:
	.ascii	"ir_read_blocking\000"
.LASF49:
	.ascii	"nrf_saadc_acqtime_t\000"
.LASF78:
	.ascii	"NRF_SAADC_RESISTOR_VDD1_2\000"
.LASF146:
	.ascii	"SD_RAND_APPLICATION_BYTES_AVAILABLE_GET\000"
.LASF311:
	.ascii	"channel_1_config\000"
.LASF151:
	.ascii	"SD_POWER_RESET_REASON_CLR\000"
.LASF255:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF28:
	.ascii	"NRFX_SAADC_EVT_LIMIT\000"
.LASF169:
	.ascii	"SD_RADIO_SESSION_CLOSE\000"
.LASF176:
	.ascii	"next\000"
.LASF12:
	.ascii	"data\000"
.LASF352:
	.ascii	"sd_ppi_channel_assign\000"
.LASF295:
	.ascii	"IR_config\000"
.LASF223:
	.ascii	"abbrev_month_names\000"
.LASF404:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -fomit-frame-poi"
	.ascii	"nter -fno-dwarf2-cfi-asm -fno-builtin -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF251:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF244:
	.ascii	"ir_cb_t\000"
.LASF397:
	.ascii	"sd_rand_application_bytes_available_get\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
