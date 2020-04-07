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
	.file	"nrfx_spi.c"
	.text
.Ltext0:
	.section	.text.NVIC_EnableIRQ,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	NVIC_EnableIRQ, %function
NVIC_EnableIRQ:
.LFB108:
	.file 1 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.loc 1 1627 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI0:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1628 137
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r2, r3, #31
	.loc 1 1628 47
	ldr	r1, .L2
	.loc 1 1628 56
	ldrsb	r3, [sp, #7]
	.loc 1 1628 81
	lsrs	r3, r3, #5
	.loc 1 1628 107
	movs	r0, #1
	lsl	r2, r0, r2
	.loc 1 1628 90
	str	r2, [r1, r3, lsl #2]
	.loc 1 1629 1
	nop
	add	sp, sp, #8
.LCFI1:
	@ sp needed
	bx	lr
.L3:
	.align	2
.L2:
	.word	-536813312
.LFE108:
	.size	NVIC_EnableIRQ, .-NVIC_EnableIRQ
	.section	.text.NVIC_DisableIRQ,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	NVIC_DisableIRQ, %function
NVIC_DisableIRQ:
.LFB109:
	.loc 1 1638 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI2:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1639 137
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r2, r3, #31
	.loc 1 1639 47
	ldr	r1, .L5
	.loc 1 1639 56
	ldrsb	r3, [sp, #7]
	.loc 1 1639 81
	lsrs	r3, r3, #5
	.loc 1 1639 107
	movs	r0, #1
	lsl	r2, r0, r2
	.loc 1 1639 90
	adds	r3, r3, #32
	str	r2, [r1, r3, lsl #2]
	.loc 1 1640 1
	nop
	add	sp, sp, #8
.LCFI3:
	@ sp needed
	bx	lr
.L6:
	.align	2
.L5:
	.word	-536813312
.LFE109:
	.size	NVIC_DisableIRQ, .-NVIC_DisableIRQ
	.section	.text.NVIC_ClearPendingIRQ,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	NVIC_ClearPendingIRQ, %function
NVIC_ClearPendingIRQ:
.LFB112:
	.loc 1 1673 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI4:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1674 137
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r2, r3, #31
	.loc 1 1674 47
	ldr	r1, .L8
	.loc 1 1674 56
	ldrsb	r3, [sp, #7]
	.loc 1 1674 81
	lsrs	r3, r3, #5
	.loc 1 1674 107
	movs	r0, #1
	lsl	r2, r0, r2
	.loc 1 1674 90
	adds	r3, r3, #96
	str	r2, [r1, r3, lsl #2]
	.loc 1 1675 1
	nop
	add	sp, sp, #8
.LCFI5:
	@ sp needed
	bx	lr
.L9:
	.align	2
.L8:
	.word	-536813312
.LFE112:
	.size	NVIC_ClearPendingIRQ, .-NVIC_ClearPendingIRQ
	.section	.text.NVIC_SetPriority,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	NVIC_SetPriority, %function
NVIC_SetPriority:
.LFB114:
	.loc 1 1699 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI6:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 1700 6
	ldrsb	r3, [sp, #7]
	cmp	r3, #0
	bge	.L11
	.loc 1 1702 97
	ldr	r3, [sp]
	uxtb	r2, r3
	.loc 1 1702 48
	ldr	r1, .L14
	.loc 1 1702 81
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r3, r3, #15
	.loc 1 1702 89
	subs	r3, r3, #4
	.loc 1 1702 97
	lsls	r2, r2, #5
	uxtb	r2, r2
	.loc 1 1702 95
	add	r3, r3, r1
	strb	r2, [r3, #24]
	.loc 1 1708 1
	b	.L13
.L11:
	.loc 1 1706 83
	ldr	r3, [sp]
	uxtb	r2, r3
	.loc 1 1706 49
	ldr	r1, .L14+4
	.loc 1 1706 55
	ldrsb	r3, [sp, #7]
	.loc 1 1706 83
	lsls	r2, r2, #5
	uxtb	r2, r2
	.loc 1 1706 81
	add	r3, r3, r1
	strb	r2, [r3, #768]
.L13:
	.loc 1 1708 1
	nop
	add	sp, sp, #8
.LCFI7:
	@ sp needed
	bx	lr
.L15:
	.align	2
.L14:
	.word	-536810240
	.word	-536813312
.LFE114:
	.size	NVIC_SetPriority, .-NVIC_SetPriority
	.section	.text.nrfx_get_irq_number,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrfx_get_irq_number, %function
nrfx_get_irq_number:
.LFB125:
	.file 2 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.loc 2 244 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI8:
	str	r0, [sp, #4]
	.loc 2 245 37
	ldr	r3, [sp, #4]
	.loc 2 245 54
	lsrs	r3, r3, #12
	.loc 2 245 13
	strb	r3, [sp, #15]
	.loc 2 246 12
	ldrsb	r3, [sp, #15]
	.loc 2 247 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI9:
	@ sp needed
	bx	lr
.LFE125:
	.size	nrfx_get_irq_number, .-nrfx_get_irq_number
	.section	.text._NRFX_IRQ_PRIORITY_SET,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_NRFX_IRQ_PRIORITY_SET, %function
_NRFX_IRQ_PRIORITY_SET:
.LFB146:
	.file 3 "../../../../../../integration/nrfx/nrfx_glue.h"
	.loc 3 106 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI10:
	sub	sp, sp, #12
.LCFI11:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 3 108 5
	ldrb	r2, [sp, #6]	@ zero_extendqisi2
	ldrsb	r3, [sp, #7]
	mov	r1, r2
	mov	r0, r3
	bl	NVIC_SetPriority
	.loc 3 109 1
	nop
	add	sp, sp, #12
.LCFI12:
	@ sp needed
	ldr	pc, [sp], #4
.LFE146:
	.size	_NRFX_IRQ_PRIORITY_SET, .-_NRFX_IRQ_PRIORITY_SET
	.section	.text._NRFX_IRQ_ENABLE,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_NRFX_IRQ_ENABLE, %function
_NRFX_IRQ_ENABLE:
.LFB147:
	.loc 3 118 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI13:
	sub	sp, sp, #12
.LCFI14:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 3 119 5
	ldrsb	r3, [sp, #7]
	mov	r0, r3
	bl	NVIC_ClearPendingIRQ
	.loc 3 120 5
	ldrsb	r3, [sp, #7]
	mov	r0, r3
	bl	NVIC_EnableIRQ
	.loc 3 121 1
	nop
	add	sp, sp, #12
.LCFI15:
	@ sp needed
	ldr	pc, [sp], #4
.LFE147:
	.size	_NRFX_IRQ_ENABLE, .-_NRFX_IRQ_ENABLE
	.section	.text._NRFX_IRQ_DISABLE,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	_NRFX_IRQ_DISABLE, %function
_NRFX_IRQ_DISABLE:
.LFB149:
	.loc 3 144 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI16:
	sub	sp, sp, #12
.LCFI17:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 3 145 5
	ldrsb	r3, [sp, #7]
	mov	r0, r3
	bl	NVIC_DisableIRQ
	.loc 3 146 1
	nop
	add	sp, sp, #12
.LCFI18:
	@ sp needed
	ldr	pc, [sp], #4
.LFE149:
	.size	_NRFX_IRQ_DISABLE, .-_NRFX_IRQ_DISABLE
	.section	.text.sd_mutex_new,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_mutex_new, %function
sd_mutex_new:
.LFB153:
	.file 4 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.loc 4 393 101
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 393 103
	.syntax unified
@ 393 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #44
bx r14
@ 0 "" 2
	.loc 4 393 2
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
	.loc 4 402 105
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 402 107
	.syntax unified
@ 402 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #45
bx r14
@ 0 "" 2
	.loc 4 402 2
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
	.loc 4 410 105
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 410 107
	.syntax unified
@ 410 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #46
bx r14
@ 0 "" 2
	.loc 4 410 2
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
	.loc 4 418 130
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 418 132
	.syntax unified
@ 418 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #47
bx r14
@ 0 "" 2
	.loc 4 418 2
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
	.loc 4 426 134
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 426 136
	.syntax unified
@ 426 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #48
bx r14
@ 0 "" 2
	.loc 4 426 2
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
	.loc 4 436 130
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 436 132
	.syntax unified
@ 436 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #49
bx r14
@ 0 "" 2
	.loc 4 436 2
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
	.loc 4 444 118
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 444 120
	.syntax unified
@ 444 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #52
bx r14
@ 0 "" 2
	.loc 4 444 2
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
	.loc 4 452 122
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 452 124
	.syntax unified
@ 452 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #53
bx r14
@ 0 "" 2
	.loc 4 452 2
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
	.loc 4 461 103
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 461 105
	.syntax unified
@ 461 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #50
bx r14
@ 0 "" 2
	.loc 4 461 2
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
	.loc 4 467 91
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 467 93
	.syntax unified
@ 467 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #51
bx r14
@ 0 "" 2
	.loc 4 467 2
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
	.loc 4 478 105
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 478 107
	.syntax unified
@ 478 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #54
bx r14
@ 0 "" 2
	.loc 4 478 2
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
	.loc 4 489 111
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 489 113
	.syntax unified
@ 489 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #55
bx r14
@ 0 "" 2
	.loc 4 489 2
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
	.loc 4 499 126
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 499 128
	.syntax unified
@ 499 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #57
bx r14
@ 0 "" 2
	.loc 4 499 2
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
	.loc 4 508 126
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 508 128
	.syntax unified
@ 508 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #58
bx r14
@ 0 "" 2
	.loc 4 508 2
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
	.loc 4 517 127
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 517 129
	.syntax unified
@ 517 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #59
bx r14
@ 0 "" 2
	.loc 4 517 2
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
	.loc 4 526 132
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 526 134
	.syntax unified
@ 526 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #60
bx r14
@ 0 "" 2
	.loc 4 526 2
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
	.loc 4 535 132
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 535 134
	.syntax unified
@ 535 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #61
bx r14
@ 0 "" 2
	.loc 4 535 2
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
	.loc 4 544 131
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 544 133
	.syntax unified
@ 544 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #62
bx r14
@ 0 "" 2
	.loc 4 544 2
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
	.loc 4 553 107
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 553 109
	.syntax unified
@ 553 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #63
bx r14
@ 0 "" 2
	.loc 4 553 2
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
	.loc 4 566 94
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 566 96
	.syntax unified
@ 566 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #66
bx r14
@ 0 "" 2
	.loc 4 566 2
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
	.loc 4 577 94
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 577 96
	.syntax unified
@ 577 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #67
bx r14
@ 0 "" 2
	.loc 4 577 2
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
	.loc 4 588 116
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 588 118
	.syntax unified
@ 588 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #68
bx r14
@ 0 "" 2
	.loc 4 588 2
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
	.loc 4 616 87
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 616 89
	.syntax unified
@ 616 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #65
bx r14
@ 0 "" 2
	.loc 4 616 2
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
	.loc 4 624 120
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 624 122
	.syntax unified
@ 624 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #32
bx r14
@ 0 "" 2
	.loc 4 624 2
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
	.loc 4 632 124
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 632 126
	.syntax unified
@ 632 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #33
bx r14
@ 0 "" 2
	.loc 4 632 2
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
	.loc 4 640 124
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 640 126
	.syntax unified
@ 640 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #34
bx r14
@ 0 "" 2
	.loc 4 640 2
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
	.loc 4 651 181
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 651 183
	.syntax unified
@ 651 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #35
bx r14
@ 0 "" 2
	.loc 4 651 2
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
	.loc 4 660 109
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 660 111
	.syntax unified
@ 660 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #36
bx r14
@ 0 "" 2
	.loc 4 660 2
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
	.loc 4 669 110
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 669 112
	.syntax unified
@ 669 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #37
bx r14
@ 0 "" 2
	.loc 4 669 2
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
	.loc 4 679 126
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 679 128
	.syntax unified
@ 679 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #38
bx r14
@ 0 "" 2
	.loc 4 679 2
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
	.loc 4 689 127
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 689 129
	.syntax unified
@ 689 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #39
bx r14
@ 0 "" 2
	.loc 4 689 2
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
	.loc 4 720 127
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 720 129
	.syntax unified
@ 720 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #69
bx r14
@ 0 "" 2
	.loc 4 720 2
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
	.loc 4 736 119
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 736 121
	.syntax unified
@ 736 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #70
bx r14
@ 0 "" 2
	.loc 4 736 2
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
	.loc 4 753 150
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 753 152
	.syntax unified
@ 753 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #71
bx r14
@ 0 "" 2
	.loc 4 753 2
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
	.loc 4 764 97
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 764 99
	.syntax unified
@ 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #75
bx r14
@ 0 "" 2
	.loc 4 764 2
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
	.loc 4 775 95
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 775 97
	.syntax unified
@ 775 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #76
bx r14
@ 0 "" 2
	.loc 4 775 2
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
	.loc 4 812 137
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 812 139
	.syntax unified
@ 812 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #41
bx r14
@ 0 "" 2
	.loc 4 812 2
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
	.loc 4 844 107
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 844 109
	.syntax unified
@ 844 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #40
bx r14
@ 0 "" 2
	.loc 4 844 2
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
	.loc 4 867 166
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 867 168
	.syntax unified
@ 867 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #42
bx r14
@ 0 "" 2
	.loc 4 867 2
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
	.loc 4 889 140
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 889 142
	.syntax unified
@ 889 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #72
bx r14
@ 0 "" 2
	.loc 4 889 2
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
	.loc 4 902 94
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 902 96
	.syntax unified
@ 902 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #73
bx r14
@ 0 "" 2
	.loc 4 902 2
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
	.loc 4 934 121
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 934 123
	.syntax unified
@ 934 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #74
bx r14
@ 0 "" 2
	.loc 4 934 2
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
	.loc 4 955 141
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 4 955 143
	.syntax unified
@ 955 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #43
bx r14
@ 0 "" 2
	.loc 4 955 2
	.thumb
	.syntax unified
	nop
	mov	r0, r3
.LFE195:
	.size	sd_protected_register_write, .-sd_protected_register_write
	.section	.text.nrf_spi_event_clear,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_spi_event_clear, %function
nrf_spi_event_clear:
.LFB211:
	.file 5 "../../../../../../modules/nrfx/hal/nrf_spi.h"
	.loc 5 255 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI19:
	str	r0, [sp, #4]
	mov	r3, r1
	strh	r3, [sp, #2]	@ movhi
	.loc 5 256 48
	ldrh	r3, [sp, #2]
	.loc 5 256 7
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 5 256 70
	movs	r2, #0
	str	r2, [r3]
	.loc 5 258 74
	ldrh	r3, [sp, #2]
	.loc 5 258 33
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 5 258 31
	ldr	r3, [r3]
	.loc 5 258 23
	str	r3, [sp, #12]
	.loc 5 259 5
	ldr	r3, [sp, #12]
	.loc 5 261 1
	nop
	add	sp, sp, #16
.LCFI20:
	@ sp needed
	bx	lr
.LFE211:
	.size	nrf_spi_event_clear, .-nrf_spi_event_clear
	.section	.text.nrf_spi_event_check,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_spi_event_check, %function
nrf_spi_event_check:
.LFB212:
	.loc 5 265 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI21:
	str	r0, [sp, #4]
	mov	r3, r1
	strh	r3, [sp, #2]	@ movhi
	.loc 5 266 59
	ldrh	r3, [sp, #2]
	.loc 5 266 18
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 5 266 17
	ldr	r3, [r3]
	.loc 5 266 12
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	.loc 5 267 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI22:
	@ sp needed
	bx	lr
.LFE212:
	.size	nrf_spi_event_check, .-nrf_spi_event_check
	.section	.text.nrf_spi_int_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_spi_int_enable, %function
nrf_spi_int_enable:
.LFB214:
	.loc 5 277 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI23:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 5 278 21
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #772]
	.loc 5 279 1
	nop
	add	sp, sp, #8
.LCFI24:
	@ sp needed
	bx	lr
.LFE214:
	.size	nrf_spi_int_enable, .-nrf_spi_int_enable
	.section	.text.nrf_spi_int_disable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_spi_int_disable, %function
nrf_spi_int_disable:
.LFB215:
	.loc 5 283 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI25:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 5 284 21
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #776]
	.loc 5 285 1
	nop
	add	sp, sp, #8
.LCFI26:
	@ sp needed
	bx	lr
.LFE215:
	.size	nrf_spi_int_disable, .-nrf_spi_int_disable
	.section	.text.nrf_spi_enable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_spi_enable, %function
nrf_spi_enable:
.LFB217:
	.loc 5 294 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI27:
	str	r0, [sp, #4]
	.loc 5 295 19
	ldr	r3, [sp, #4]
	movs	r2, #1
	str	r2, [r3, #1280]
	.loc 5 296 1
	nop
	add	sp, sp, #8
.LCFI28:
	@ sp needed
	bx	lr
.LFE217:
	.size	nrf_spi_enable, .-nrf_spi_enable
	.section	.text.nrf_spi_disable,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_spi_disable, %function
nrf_spi_disable:
.LFB218:
	.loc 5 299 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI29:
	str	r0, [sp, #4]
	.loc 5 300 19
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #1280]
	.loc 5 301 1
	nop
	add	sp, sp, #8
.LCFI30:
	@ sp needed
	bx	lr
.LFE218:
	.size	nrf_spi_disable, .-nrf_spi_disable
	.section	.text.nrf_spi_pins_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_spi_pins_set, %function
nrf_spi_pins_set:
.LFB219:
	.loc 5 307 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI31:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 5 308 21
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3, #1288]
	.loc 5 309 22
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #4]
	str	r2, [r3, #1292]
	.loc 5 310 22
	ldr	r3, [sp, #12]
	ldr	r2, [sp]
	str	r2, [r3, #1296]
	.loc 5 311 1
	nop
	add	sp, sp, #16
.LCFI32:
	@ sp needed
	bx	lr
.LFE219:
	.size	nrf_spi_pins_set, .-nrf_spi_pins_set
	.section	.text.nrf_spi_txd_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_spi_txd_set, %function
nrf_spi_txd_set:
.LFB220:
	.loc 5 314 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI33:
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	.loc 5 315 16
	ldrb	r2, [sp, #3]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	str	r2, [r3, #1308]
	.loc 5 316 1
	nop
	add	sp, sp, #8
.LCFI34:
	@ sp needed
	bx	lr
.LFE220:
	.size	nrf_spi_txd_set, .-nrf_spi_txd_set
	.section	.text.nrf_spi_rxd_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_spi_rxd_get, %function
nrf_spi_rxd_get:
.LFB221:
	.loc 5 319 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI35:
	str	r0, [sp, #4]
	.loc 5 320 17
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #1304]
	uxtb	r3, r3
	.loc 5 321 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI36:
	@ sp needed
	bx	lr
.LFE221:
	.size	nrf_spi_rxd_get, .-nrf_spi_rxd_get
	.section	.text.nrf_spi_frequency_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_spi_frequency_set, %function
nrf_spi_frequency_set:
.LFB222:
	.loc 5 325 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI37:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 5 326 22
	ldr	r2, [sp]
	ldr	r3, [sp, #4]
	str	r2, [r3, #1316]
	.loc 5 327 1
	nop
	add	sp, sp, #8
.LCFI38:
	@ sp needed
	bx	lr
.LFE222:
	.size	nrf_spi_frequency_set, .-nrf_spi_frequency_set
	.section	.text.nrf_spi_configure,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_spi_configure, %function
nrf_spi_configure:
.LFB223:
	.loc 5 332 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI39:
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	mov	r3, r2
	strb	r3, [sp, #2]
	.loc 5 334 15
	ldrb	r3, [sp, #2]	@ zero_extendqisi2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	.loc 5 333 14
	str	r3, [sp, #12]
	.loc 5 335 5
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L77
	cmp	r3, #3
	bgt	.L82
	cmp	r3, #1
	beq	.L79
	cmp	r3, #2
	beq	.L80
	.loc 5 341 9
	b	.L82
.L79:
	.loc 5 344 16
	ldr	r3, [sp, #12]
	orr	r3, r3, #2
	str	r3, [sp, #12]
	.loc 5 346 9
	b	.L81
.L80:
	.loc 5 349 16
	ldr	r3, [sp, #12]
	orr	r3, r3, #4
	str	r3, [sp, #12]
	.loc 5 351 9
	b	.L81
.L77:
	.loc 5 354 16
	ldr	r3, [sp, #12]
	orr	r3, r3, #6
	str	r3, [sp, #12]
	.loc 5 356 9
	b	.L81
.L82:
	.loc 5 341 9
	nop
.L81:
	.loc 5 358 19
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #12]
	str	r2, [r3, #1364]
	.loc 5 359 1
	nop
	add	sp, sp, #16
.LCFI40:
	@ sp needed
	bx	lr
.LFE223:
	.size	nrf_spi_configure, .-nrf_spi_configure
	.section	.text.nrf_gpio_pin_port_decode,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_gpio_pin_port_decode, %function
nrf_gpio_pin_port_decode:
.LFB224:
	.file 6 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
	.loc 6 454 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI41:
	str	r0, [sp, #4]
	.loc 6 458 12
	mov	r3, #1342177280
	.loc 6 470 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI42:
	@ sp needed
	bx	lr
.LFE224:
	.size	nrf_gpio_pin_port_decode, .-nrf_gpio_pin_port_decode
	.section	.text.nrf_gpio_cfg,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_gpio_cfg, %function
nrf_gpio_cfg:
.LFB227:
	.loc 6 502 1
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI43:
	sub	sp, sp, #20
.LCFI44:
	str	r0, [sp, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0
	strb	r3, [sp, #3]
	mov	r3, r1
	strb	r3, [sp, #2]
	mov	r3, r2
	strb	r3, [sp, #1]
	.loc 6 503 27
	add	r3, sp, #4
	mov	r0, r3
	bl	nrf_gpio_pin_port_decode
	str	r0, [sp, #12]
	.loc 6 505 47
	ldrb	r2, [sp, #3]	@ zero_extendqisi2
	.loc 6 506 35
	ldrb	r3, [sp, #2]	@ zero_extendqisi2
	.loc 6 506 51
	lsls	r3, r3, #1
	.loc 6 506 32
	orrs	r2, r2, r3
	.loc 6 507 35
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	.loc 6 507 50
	lsls	r3, r3, #2
	.loc 6 507 32
	orrs	r2, r2, r3
	.loc 6 508 35
	ldrb	r3, [sp, #24]	@ zero_extendqisi2
	.loc 6 508 51
	lsls	r3, r3, #8
	.loc 6 508 32
	orr	r1, r2, r3
	.loc 6 509 35
	ldrb	r3, [sp, #28]	@ zero_extendqisi2
	.loc 6 509 51
	lsls	r3, r3, #16
	.loc 6 505 17
	ldr	r2, [sp, #4]
	.loc 6 509 32
	orrs	r1, r1, r3
	.loc 6 505 30
	ldr	r3, [sp, #12]
	add	r2, r2, #448
	str	r1, [r3, r2, lsl #2]
	.loc 6 510 1
	nop
	add	sp, sp, #20
.LCFI45:
	@ sp needed
	ldr	pc, [sp], #4
.LFE227:
	.size	nrf_gpio_cfg, .-nrf_gpio_cfg
	.section	.text.nrf_gpio_cfg_output,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_gpio_cfg_output, %function
nrf_gpio_cfg_output:
.LFB228:
	.loc 6 514 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI46:
	sub	sp, sp, #20
.LCFI47:
	str	r0, [sp, #12]
	.loc 6 515 5
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #1
	movs	r1, #1
	ldr	r0, [sp, #12]
	bl	nrf_gpio_cfg
	.loc 6 522 1
	nop
	add	sp, sp, #20
.LCFI48:
	@ sp needed
	ldr	pc, [sp], #4
.LFE228:
	.size	nrf_gpio_cfg_output, .-nrf_gpio_cfg_output
	.section	.text.nrf_gpio_cfg_input,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_gpio_cfg_input, %function
nrf_gpio_cfg_input:
.LFB229:
	.loc 6 526 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI49:
	sub	sp, sp, #20
.LCFI50:
	str	r0, [sp, #12]
	mov	r3, r1
	strb	r3, [sp, #11]
	.loc 6 527 5
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	movs	r2, #0
	str	r2, [sp, #4]
	movs	r2, #0
	str	r2, [sp]
	movs	r2, #0
	movs	r1, #0
	ldr	r0, [sp, #12]
	bl	nrf_gpio_cfg
	.loc 6 534 1
	nop
	add	sp, sp, #20
.LCFI51:
	@ sp needed
	ldr	pc, [sp], #4
.LFE229:
	.size	nrf_gpio_cfg_input, .-nrf_gpio_cfg_input
	.section	.text.nrf_gpio_cfg_default,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_gpio_cfg_default, %function
nrf_gpio_cfg_default:
.LFB230:
	.loc 6 538 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI52:
	sub	sp, sp, #20
.LCFI53:
	str	r0, [sp, #12]
	.loc 6 539 5
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #1
	movs	r1, #0
	ldr	r0, [sp, #12]
	bl	nrf_gpio_cfg
	.loc 6 546 1
	nop
	add	sp, sp, #20
.LCFI54:
	@ sp needed
	ldr	pc, [sp], #4
.LFE230:
	.size	nrf_gpio_cfg_default, .-nrf_gpio_cfg_default
	.section	.text.nrf_gpio_pin_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_gpio_pin_set, %function
nrf_gpio_pin_set:
.LFB236:
	.loc 6 614 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI55:
	sub	sp, sp, #20
.LCFI56:
	str	r0, [sp, #4]
	.loc 6 615 27
	add	r3, sp, #4
	mov	r0, r3
	bl	nrf_gpio_pin_port_decode
	str	r0, [sp, #12]
	.loc 6 617 5
	ldr	r3, [sp, #4]
	.loc 6 617 36
	movs	r2, #1
	lsl	r3, r2, r3
	.loc 6 617 5
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	nrf_gpio_port_out_set
	.loc 6 618 1
	nop
	add	sp, sp, #20
.LCFI57:
	@ sp needed
	ldr	pc, [sp], #4
.LFE236:
	.size	nrf_gpio_pin_set, .-nrf_gpio_pin_set
	.section	.text.nrf_gpio_pin_clear,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_gpio_pin_clear, %function
nrf_gpio_pin_clear:
.LFB237:
	.loc 6 622 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI58:
	sub	sp, sp, #20
.LCFI59:
	str	r0, [sp, #4]
	.loc 6 623 27
	add	r3, sp, #4
	mov	r0, r3
	bl	nrf_gpio_pin_port_decode
	str	r0, [sp, #12]
	.loc 6 625 5
	ldr	r3, [sp, #4]
	.loc 6 625 38
	movs	r2, #1
	lsl	r3, r2, r3
	.loc 6 625 5
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	nrf_gpio_port_out_clear
	.loc 6 626 1
	nop
	add	sp, sp, #20
.LCFI60:
	@ sp needed
	ldr	pc, [sp], #4
.LFE237:
	.size	nrf_gpio_pin_clear, .-nrf_gpio_pin_clear
	.section	.text.nrf_gpio_port_out_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_gpio_port_out_set, %function
nrf_gpio_port_out_set:
.LFB250:
	.loc 6 720 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI61:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 6 721 19
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #1288]
	.loc 6 722 1
	nop
	add	sp, sp, #8
.LCFI62:
	@ sp needed
	bx	lr
.LFE250:
	.size	nrf_gpio_port_out_set, .-nrf_gpio_port_out_set
	.section	.text.nrf_gpio_port_out_clear,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_gpio_port_out_clear, %function
nrf_gpio_port_out_clear:
.LFB251:
	.loc 6 726 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI63:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 6 727 19
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #1292]
	.loc 6 728 1
	nop
	add	sp, sp, #8
.LCFI64:
	@ sp needed
	bx	lr
.LFE251:
	.size	nrf_gpio_port_out_clear, .-nrf_gpio_port_out_clear
	.global	m_nrf_log_SPI_logs_data_const
	.section .rodata
	.align	2
.LC0:
	.ascii	"SPI\000"
	.section	.log_const_data_SPI,"a"
	.align	2
	.type	m_nrf_log_SPI_logs_data_const, %object
	.size	m_nrf_log_SPI_logs_data_const, 8
m_nrf_log_SPI_logs_data_const:
	.word	.LC0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.global	m_nrf_log_SPI_logs_data_dynamic
	.section	.log_dynamic_data_SPI,"aw"
	.align	2
	.type	m_nrf_log_SPI_logs_data_dynamic, %object
	.size	m_nrf_log_SPI_logs_data_dynamic, 4
m_nrf_log_SPI_logs_data_dynamic:
	.space	4
	.section	.bss.m_cb,"aw",%nobits
	.align	2
	.type	m_cb, %object
	.size	m_cb, 88
m_cb:
	.space	88
	.section	.text.nrfx_spi_init,"ax",%progbits
	.align	1
	.global	nrfx_spi_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrfx_spi_init, %function
nrfx_spi_init:
.LFB256:
	.file 7 "C:\\nRF5_SDK_15.0.0_a53641a\\modules\\nrfx\\drivers\\src\\nrfx_spi.c"
	.loc 7 82 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI65:
	sub	sp, sp, #52
.LCFI66:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 7 84 50
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r2, r3
	.loc 7 84 27
	movs	r3, #44
	mul	r3, r3, r2
	ldr	r2, .L106
	add	r3, r3, r2
	str	r3, [sp, #40]
	.loc 7 87 13
	ldr	r3, [sp, #40]
	ldrb	r3, [r3, #28]	@ zero_extendqisi2
	.loc 7 87 8
	cmp	r3, #0
	beq	.L94
	.loc 7 89 18
	movs	r3, #8
	str	r3, [sp, #28]
	.loc 7 93 16
	ldr	r3, [sp, #28]
	b	.L95
.L94:
	.loc 7 108 36
	ldr	r3, [sp, #20]
	ldr	r2, [r3]
	.loc 7 109 36
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r1, r3
	.loc 7 108 9
	ldr	r3, .L106+4
	ldr	r3, [r3, r1, lsl #2]
	mov	r1, r3
	mov	r0, r2
	bl	nrfx_prs_acquire
	mov	r3, r0
	.loc 7 108 8
	cmp	r3, #0
	beq	.L96
	.loc 7 111 18
	movs	r3, #17
	str	r3, [sp, #28]
	.loc 7 115 16
	ldr	r3, [sp, #28]
	b	.L95
.L96:
	.loc 7 119 19
	ldr	r3, [sp, #40]
	ldr	r2, [sp, #12]
	str	r2, [r3]
	.loc 7 120 21
	ldr	r3, [sp, #40]
	ldr	r2, [sp, #8]
	str	r2, [r3, #4]
	.loc 7 129 17
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 7 129 8
	cmp	r3, #1
	bhi	.L97
	.loc 7 131 36
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 7 131 9
	mov	r0, r3
	bl	nrf_gpio_pin_clear
	b	.L98
.L97:
	.loc 7 135 34
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 7 135 9
	mov	r0, r3
	bl	nrf_gpio_pin_set
.L98:
	.loc 7 137 26
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 7 137 5
	mov	r0, r3
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #0
	movs	r1, #1
	bl	nrf_gpio_cfg
	.loc 7 144 17
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 7 144 8
	cmp	r3, #255
	beq	.L99
	.loc 7 146 28
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 7 146 18
	str	r3, [sp, #44]
	.loc 7 147 9
	ldr	r0, [sp, #44]
	bl	nrf_gpio_pin_clear
	.loc 7 148 9
	ldr	r0, [sp, #44]
	bl	nrf_gpio_cfg_output
	b	.L100
.L99:
	.loc 7 152 18
	mov	r3, #-1
	str	r3, [sp, #44]
.L100:
	.loc 7 155 17
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	.loc 7 155 8
	cmp	r3, #255
	beq	.L101
	.loc 7 157 28
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	.loc 7 157 18
	str	r3, [sp, #36]
	.loc 7 158 9
	movs	r1, #0
	ldr	r0, [sp, #36]
	bl	nrf_gpio_cfg_input
	b	.L102
.L101:
	.loc 7 162 18
	mov	r3, #-1
	str	r3, [sp, #36]
.L102:
	.loc 7 164 20
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r0, r3
	.loc 7 164 55
	ldr	r3, [sp, #16]
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	.loc 7 164 45
	ldr	r2, .L106
	movs	r3, #44
	mul	r3, r3, r0
	add	r3, r3, r2
	adds	r3, r3, #31
	mov	r2, r1
	strb	r2, [r3]
	.loc 7 166 17
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	.loc 7 166 8
	cmp	r3, #255
	beq	.L103
	.loc 7 168 34
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	.loc 7 168 9
	mov	r0, r3
	bl	nrf_gpio_pin_set
	.loc 7 169 37
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	.loc 7 169 9
	mov	r0, r3
	bl	nrf_gpio_cfg_output
.L103:
	.loc 7 171 20
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r0, r3
	.loc 7 171 53
	ldr	r3, [sp, #16]
	ldrb	r1, [r3, #3]	@ zero_extendqisi2
	.loc 7 171 43
	ldr	r2, .L106
	movs	r3, #44
	mul	r3, r3, r0
	add	r3, r3, r2
	adds	r3, r3, #30
	mov	r2, r1
	strb	r2, [r3]
	.loc 7 173 20
	ldr	r3, [sp, #20]
	ldr	r3, [r3]
	str	r3, [sp, #32]
	.loc 7 174 37
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 7 174 5
	mov	r1, r3
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #44]
	ldr	r0, [sp, #32]
	bl	nrf_spi_pins_set
	.loc 7 175 5
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #8]
	mov	r1, r3
	ldr	r0, [sp, #32]
	bl	nrf_spi_frequency_set
	.loc 7 176 5
	ldr	r3, [sp, #16]
	ldrb	r1, [r3, #12]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #13]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r0, [sp, #32]
	bl	nrf_spi_configure
	.loc 7 178 20
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r0, r3
	.loc 7 178 50
	ldr	r3, [sp, #16]
	ldrb	r1, [r3, #5]	@ zero_extendqisi2
	.loc 7 178 40
	ldr	r2, .L106
	movs	r3, #44
	mul	r3, r3, r0
	add	r3, r3, r2
	adds	r3, r3, #32
	mov	r2, r1
	strb	r2, [r3]
	.loc 7 180 13
	ldr	r3, [sp, #40]
	ldr	r3, [r3]
	.loc 7 180 8
	cmp	r3, #0
	beq	.L104
	.loc 7 182 9
	movs	r1, #4
	ldr	r0, [sp, #32]
	bl	nrf_spi_int_enable
.L104:
	.loc 7 185 5
	ldr	r0, [sp, #32]
	bl	nrf_spi_enable
	.loc 7 187 13
	ldr	r3, [sp, #40]
	ldr	r3, [r3]
	.loc 7 187 8
	cmp	r3, #0
	beq	.L105
	.loc 7 189 62
	ldr	r3, [sp, #20]
	ldr	r3, [r3]
	.loc 7 189 9
	mov	r0, r3
	bl	nrfx_get_irq_number
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r1, r3
	mov	r0, r2
	bl	_NRFX_IRQ_PRIORITY_SET
	.loc 7 191 56
	ldr	r3, [sp, #20]
	ldr	r3, [r3]
	.loc 7 191 9
	mov	r0, r3
	bl	nrfx_get_irq_number
	mov	r3, r0
	mov	r0, r3
	bl	_NRFX_IRQ_ENABLE
.L105:
	.loc 7 194 32
	ldr	r3, [sp, #40]
	movs	r2, #0
	strb	r2, [r3, #29]
	.loc 7 195 17
	ldr	r3, [sp, #40]
	movs	r2, #1
	strb	r2, [r3, #28]
	.loc 7 197 14
	movs	r3, #0
	str	r3, [sp, #28]
	.loc 7 199 12
	ldr	r3, [sp, #28]
.L95:
	.loc 7 200 1
	mov	r0, r3
	add	sp, sp, #52
.LCFI67:
	@ sp needed
	ldr	pc, [sp], #4
.L107:
	.align	2
.L106:
	.word	m_cb
	.word	irq_handlers.8738
.LFE256:
	.size	nrfx_spi_init, .-nrfx_spi_init
	.section	.text.nrfx_spi_uninit,"ax",%progbits
	.align	1
	.global	nrfx_spi_uninit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrfx_spi_uninit, %function
nrfx_spi_uninit:
.LFB257:
	.loc 7 203 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI68:
	sub	sp, sp, #20
.LCFI69:
	str	r0, [sp, #4]
	.loc 7 204 50
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r2, r3
	.loc 7 204 27
	movs	r3, #44
	mul	r3, r3, r2
	ldr	r2, .L112
	add	r3, r3, r2
	str	r3, [sp, #12]
	.loc 7 207 13
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 7 207 8
	cmp	r3, #0
	beq	.L109
	.loc 7 209 57
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 7 209 9
	mov	r0, r3
	bl	nrfx_get_irq_number
	mov	r3, r0
	mov	r0, r3
	bl	_NRFX_IRQ_DISABLE
.L109:
	.loc 7 212 20
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #8]
	.loc 7 213 13
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 7 213 8
	cmp	r3, #0
	beq	.L110
	.loc 7 215 9
	movs	r1, #4
	ldr	r0, [sp, #8]
	bl	nrf_spi_int_disable
.L110:
	.loc 7 218 13
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #31]	@ zero_extendqisi2
	.loc 7 218 8
	cmp	r3, #255
	beq	.L111
	.loc 7 220 34
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #31]	@ zero_extendqisi2
	.loc 7 220 9
	mov	r0, r3
	bl	nrf_gpio_cfg_default
.L111:
	.loc 7 222 5
	ldr	r0, [sp, #8]
	bl	nrf_spi_disable
	.loc 7 225 32
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 7 225 5
	mov	r0, r3
	bl	nrfx_prs_release
	.loc 7 228 17
	ldr	r3, [sp, #12]
	movs	r2, #0
	strb	r2, [r3, #28]
	.loc 7 229 1
	nop
	add	sp, sp, #20
.LCFI70:
	@ sp needed
	ldr	pc, [sp], #4
.L113:
	.align	2
.L112:
	.word	m_cb
.LFE257:
	.size	nrfx_spi_uninit, .-nrfx_spi_uninit
	.section	.text.finish_transfer,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	finish_transfer, %function
finish_transfer:
.LFB258:
	.loc 7 232 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI71:
	sub	sp, sp, #12
.LCFI72:
	str	r0, [sp, #4]
	.loc 7 234 13
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #30]	@ zero_extendqisi2
	.loc 7 234 8
	cmp	r3, #255
	beq	.L115
	.loc 7 236 30
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #30]	@ zero_extendqisi2
	.loc 7 236 9
	mov	r0, r3
	bl	nrf_gpio_pin_set
.L115:
	.loc 7 241 32
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #29]
	.loc 7 243 20
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #8]
	.loc 7 244 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 7 244 19
	ldr	r2, [sp, #4]
	add	r0, r2, #8
	.loc 7 244 5
	ldr	r2, [sp, #4]
	ldr	r2, [r2, #4]
	mov	r1, r2
	blx	r3
.LVL0:
	.loc 7 245 1
	nop
	add	sp, sp, #12
.LCFI73:
	@ sp needed
	ldr	pc, [sp], #4
.LFE258:
	.size	finish_transfer, .-finish_transfer
	.section	.text.transfer_byte,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	transfer_byte, %function
transfer_byte:
.LFB259:
	.loc 7 252 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI74:
	sub	sp, sp, #20
.LCFI75:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 7 256 32
	ldr	r0, [sp, #4]
	bl	nrf_spi_rxd_get
	mov	r3, r0
	.loc 7 256 22
	strb	r3, [sp, #11]
	.loc 7 257 13
	ldr	r3, [sp]
	ldr	r2, [r3, #36]
	.loc 7 257 54
	ldr	r3, [sp]
	ldr	r3, [r3, #24]
	.loc 7 257 8
	cmp	r2, r3
	bcs	.L117
	.loc 7 259 28
	ldr	r3, [sp]
	ldr	r2, [r3, #20]
	.loc 7 259 45
	ldr	r3, [sp]
	ldr	r3, [r3, #36]
	.loc 7 259 40
	add	r3, r3, r2
	.loc 7 259 66
	ldrb	r2, [sp, #11]
	uxtb	r2, r2
	strb	r2, [r3]
.L117:
	.loc 7 262 11
	ldr	r3, [sp]
	ldr	r3, [r3, #36]
	.loc 7 262 5
	adds	r2, r3, #1
	ldr	r3, [sp]
	str	r2, [r3, #36]
	.loc 7 271 29
	ldr	r3, [sp]
	ldr	r3, [r3, #36]
	.loc 7 271 12
	adds	r3, r3, #1
	str	r3, [sp, #12]
	.loc 7 273 13
	ldr	r3, [sp]
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	.loc 7 273 8
	cmp	r3, #0
	beq	.L118
	.loc 7 275 45
	ldr	r3, [sp]
	ldr	r3, [r3, #16]
	.loc 7 275 12
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bcs	.L119
	.loc 7 277 43
	ldr	r3, [sp]
	ldr	r2, [sp, #12]
	str	r2, [r3, #16]
.L119:
	.loc 7 279 45
	ldr	r3, [sp]
	ldr	r3, [r3, #24]
	.loc 7 279 12
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bcs	.L118
	.loc 7 281 43
	ldr	r3, [sp]
	ldr	r2, [sp, #12]
	str	r2, [r3, #24]
.L118:
	.loc 7 285 41
	ldr	r3, [sp]
	ldr	r3, [r3, #16]
	.loc 7 285 8
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bcs	.L120
	.loc 7 287 51
	ldr	r3, [sp]
	ldr	r2, [r3, #12]
	.loc 7 287 63
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 7 287 9
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #4]
	bl	nrf_spi_txd_set
	.loc 7 288 15
	movs	r3, #1
	b	.L121
.L120:
	.loc 7 290 46
	ldr	r3, [sp]
	ldr	r3, [r3, #24]
	.loc 7 290 13
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bcs	.L122
	.loc 7 292 9
	ldr	r3, [sp]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #4]
	bl	nrf_spi_txd_set
	.loc 7 293 15
	movs	r3, #1
	b	.L121
.L122:
	.loc 7 296 17
	ldr	r3, [sp]
	ldr	r2, [r3, #36]
	.loc 7 296 58
	ldr	r3, [sp]
	ldr	r3, [r3, #16]
	.loc 7 296 69
	cmp	r2, r3
	bcc	.L123
	.loc 7 297 17 discriminator 2
	ldr	r3, [sp]
	ldr	r2, [r3, #36]
	.loc 7 297 58 discriminator 2
	ldr	r3, [sp]
	ldr	r3, [r3, #24]
	.loc 7 296 69 discriminator 2
	cmp	r2, r3
	bcs	.L124
.L123:
	.loc 7 296 69 is_stmt 0 discriminator 3
	movs	r3, #1
	b	.L125
.L124:
	.loc 7 296 69 discriminator 4
	movs	r3, #0
.L125:
	.loc 7 296 69 discriminator 6
	and	r3, r3, #1
	uxtb	r3, r3
.L121:
	.loc 7 298 1 is_stmt 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI76:
	@ sp needed
	ldr	pc, [sp], #4
.LFE259:
	.size	transfer_byte, .-transfer_byte
	.section	.text.spi_xfer,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	spi_xfer, %function
spi_xfer:
.LFB260:
	.loc 7 303 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI77:
	sub	sp, sp, #20
.LCFI78:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 7 304 29
	ldr	r3, [sp, #8]
	movs	r2, #0
	str	r2, [r3, #36]
	.loc 7 305 5
	movs	r1, #4
	ldr	r0, [sp, #12]
	bl	nrf_spi_int_disable
	.loc 7 307 5
	mov	r1, #264
	ldr	r0, [sp, #12]
	bl	nrf_spi_event_clear
	.loc 7 313 21
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	.loc 7 312 5
	cmp	r3, #0
	beq	.L127
	.loc 7 313 50 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 7 312 5 discriminator 1
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L128
.L127:
	.loc 7 312 5 is_stmt 0 discriminator 2
	ldr	r3, [sp, #8]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
.L128:
	.loc 7 312 5 discriminator 4
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	nrf_spi_txd_set
	.loc 7 319 20 is_stmt 1 discriminator 4
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	.loc 7 319 8 discriminator 4
	cmp	r3, #1
	bls	.L129
	.loc 7 321 43
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 7 321 56
	adds	r3, r3, #1
	.loc 7 321 9
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	nrf_spi_txd_set
	b	.L130
.L129:
	.loc 7 323 25
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #12]
	.loc 7 323 13
	cmp	r3, #1
	bls	.L130
	.loc 7 325 9
	ldr	r3, [sp, #8]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	nrf_spi_txd_set
.L130:
	.loc 7 333 13
	ldr	r3, [sp, #8]
	ldr	r3, [r3]
	.loc 7 333 8
	cmp	r3, #0
	beq	.L135
	.loc 7 335 9
	movs	r1, #4
	ldr	r0, [sp, #12]
	bl	nrf_spi_int_enable
	.loc 7 349 1
	b	.L134
.L135:
	.loc 7 340 19
	nop
.L133:
	.loc 7 340 21 discriminator 1
	mov	r1, #264
	ldr	r0, [sp, #12]
	bl	nrf_spi_event_check
	mov	r3, r0
	.loc 7 340 20 discriminator 1
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 7 340 19 discriminator 1
	cmp	r3, #0
	bne	.L133
	.loc 7 341 13
	mov	r1, #264
	ldr	r0, [sp, #12]
	bl	nrf_spi_event_clear
	.loc 7 343 18
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	transfer_byte
	mov	r3, r0
	.loc 7 343 9
	cmp	r3, #0
	bne	.L135
	.loc 7 344 17
	ldr	r3, [sp, #8]
	ldrb	r3, [r3, #30]	@ zero_extendqisi2
	.loc 7 344 12
	cmp	r3, #255
	beq	.L134
	.loc 7 346 34
	ldr	r3, [sp, #8]
	ldrb	r3, [r3, #30]	@ zero_extendqisi2
	.loc 7 346 13
	mov	r0, r3
	bl	nrf_gpio_pin_set
.L134:
	.loc 7 349 1
	nop
	add	sp, sp, #20
.LCFI79:
	@ sp needed
	ldr	pc, [sp], #4
.LFE260:
	.size	spi_xfer, .-spi_xfer
	.section	.text.nrfx_spi_xfer,"ax",%progbits
	.align	1
	.global	nrfx_spi_xfer
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrfx_spi_xfer, %function
nrfx_spi_xfer:
.LFB261:
	.loc 7 354 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI80:
	sub	sp, sp, #24
.LCFI81:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 7 355 50
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r2, r3
	.loc 7 355 27
	movs	r3, #44
	mul	r3, r3, r2
	ldr	r2, .L143
	add	r3, r3, r2
	str	r3, [sp, #16]
	.loc 7 360 16
	movs	r3, #0
	str	r3, [sp, #20]
	.loc 7 362 13
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #29]
	uxtb	r3, r3
	.loc 7 362 8
	cmp	r3, #0
	beq	.L137
	.loc 7 364 18
	movs	r3, #17
	str	r3, [sp, #20]
	.loc 7 368 16
	ldr	r3, [sp, #20]
	b	.L138
.L137:
	.loc 7 372 17
	ldr	r3, [sp, #16]
	ldr	r3, [r3]
	.loc 7 372 12
	cmp	r3, #0
	beq	.L139
	.loc 7 374 40
	ldr	r3, [sp, #16]
	movs	r2, #1
	strb	r2, [r3, #29]
.L139:
	.loc 7 378 25
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #8]
	add	r4, r3, #12
	mov	r3, r2
	ldm	r3, {r0, r1, r2, r3}
	stm	r4, {r0, r1, r2, r3}
	.loc 7 379 17
	ldr	r3, [sp, #16]
	movs	r2, #0
	strb	r2, [r3, #40]
	.loc 7 381 13
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #30]	@ zero_extendqisi2
	.loc 7 381 8
	cmp	r3, #255
	beq	.L140
	.loc 7 383 32
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #30]	@ zero_extendqisi2
	.loc 7 383 9
	mov	r0, r3
	bl	nrf_gpio_pin_clear
.L140:
	.loc 7 385 8
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L141
	.loc 7 387 36
	ldr	r3, [sp, #16]
	movs	r2, #0
	strb	r2, [r3, #29]
	.loc 7 388 18
	movs	r3, #6
	str	r3, [sp, #20]
	b	.L142
.L141:
	.loc 7 392 9
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #16]
	mov	r0, r3
	bl	spi_xfer
.L142:
	.loc 7 397 12
	ldr	r3, [sp, #20]
.L138:
	.loc 7 398 1
	mov	r0, r3
	add	sp, sp, #24
.LCFI82:
	@ sp needed
	pop	{r4, pc}
.L144:
	.align	2
.L143:
	.word	m_cb
.LFE261:
	.size	nrfx_spi_xfer, .-nrfx_spi_xfer
	.section	.text.nrfx_spi_abort,"ax",%progbits
	.align	1
	.global	nrfx_spi_abort
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrfx_spi_abort, %function
nrfx_spi_abort:
.LFB262:
	.loc 7 401 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI83:
	str	r0, [sp, #4]
	.loc 7 402 50
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	mov	r2, r3
	.loc 7 402 27
	movs	r3, #44
	mul	r3, r3, r2
	ldr	r2, .L146
	add	r3, r3, r2
	str	r3, [sp, #12]
	.loc 7 404 17
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #40]
	.loc 7 405 1
	nop
	add	sp, sp, #16
.LCFI84:
	@ sp needed
	bx	lr
.L147:
	.align	2
.L146:
	.word	m_cb
.LFE262:
	.size	nrfx_spi_abort, .-nrfx_spi_abort
	.section	.text.irq_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	irq_handler, %function
irq_handler:
.LFB263:
	.loc 7 408 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI85:
	sub	sp, sp, #12
.LCFI86:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 7 411 5
	mov	r1, #264
	ldr	r0, [sp, #4]
	bl	nrf_spi_event_clear
	.loc 7 414 10
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	transfer_byte
	mov	r3, r0
	.loc 7 414 9
	eor	r3, r3, #1
	uxtb	r3, r3
	.loc 7 414 8
	cmp	r3, #0
	beq	.L150
	.loc 7 416 9
	ldr	r0, [sp]
	bl	finish_transfer
.L150:
	.loc 7 418 1
	nop
	add	sp, sp, #12
.LCFI87:
	@ sp needed
	ldr	pc, [sp], #4
.LFE263:
	.size	irq_handler, .-irq_handler
	.section	.text.SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler,"ax",%progbits
	.align	1
	.global	SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler, %function
SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler:
.LFB264:
	.loc 7 422 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI88:
	.loc 7 423 5
	ldr	r1, .L152
	ldr	r0, .L152+4
	bl	irq_handler
	.loc 7 424 1
	nop
	pop	{r3, pc}
.L153:
	.align	2
.L152:
	.word	m_cb
	.word	1073754112
.LFE264:
	.size	SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler, .-SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler
	.section	.text.SPIM2_SPIS2_SPI2_IRQHandler,"ax",%progbits
	.align	1
	.global	SPIM2_SPIS2_SPI2_IRQHandler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SPIM2_SPIS2_SPI2_IRQHandler, %function
SPIM2_SPIS2_SPI2_IRQHandler:
.LFB265:
	.loc 7 436 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI89:
	.loc 7 437 5
	ldr	r1, .L155
	ldr	r0, .L155+4
	bl	irq_handler
	.loc 7 438 1
	nop
	pop	{r3, pc}
.L156:
	.align	2
.L155:
	.word	m_cb+44
	.word	1073885184
.LFE265:
	.size	SPIM2_SPIS2_SPI2_IRQHandler, .-SPIM2_SPIS2_SPI2_IRQHandler
	.section	.rodata.irq_handlers.8738,"a"
	.align	2
	.type	irq_handlers.8738, %object
	.size	irq_handlers.8738, 8
irq_handlers.8738:
	.word	SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler
	.word	SPIM2_SPIS2_SPI2_IRQHandler
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
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI0-.LFB108
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI2-.LFB109
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI4-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI6-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.byte	0x4
	.4byte	.LCFI8-.LFB125
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.byte	0x4
	.4byte	.LCFI10-.LFB146
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
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.byte	0x4
	.4byte	.LCFI13-.LFB147
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.byte	0x4
	.4byte	.LCFI16-.LFB149
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.align	2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.align	2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.align	2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.align	2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.align	2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.align	2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.align	2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.align	2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.align	2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.align	2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.align	2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.align	2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.align	2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.align	2
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.align	2
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.align	2
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.align	2
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.align	2
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.align	2
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.align	2
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.align	2
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.align	2
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.align	2
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.align	2
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.byte	0x4
	.4byte	.LCFI19-.LFB211
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.byte	0x4
	.4byte	.LCFI21-.LFB212
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE104:
.LSFDE106:
	.4byte	.LEFDE106-.LASFDE106
.LASFDE106:
	.4byte	.Lframe0
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.byte	0x4
	.4byte	.LCFI23-.LFB214
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE106:
.LSFDE108:
	.4byte	.LEFDE108-.LASFDE108
.LASFDE108:
	.4byte	.Lframe0
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.byte	0x4
	.4byte	.LCFI25-.LFB215
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE108:
.LSFDE110:
	.4byte	.LEFDE110-.LASFDE110
.LASFDE110:
	.4byte	.Lframe0
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.byte	0x4
	.4byte	.LCFI27-.LFB217
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE110:
.LSFDE112:
	.4byte	.LEFDE112-.LASFDE112
.LASFDE112:
	.4byte	.Lframe0
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.byte	0x4
	.4byte	.LCFI29-.LFB218
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE112:
.LSFDE114:
	.4byte	.LEFDE114-.LASFDE114
.LASFDE114:
	.4byte	.Lframe0
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.byte	0x4
	.4byte	.LCFI31-.LFB219
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE114:
.LSFDE116:
	.4byte	.LEFDE116-.LASFDE116
.LASFDE116:
	.4byte	.Lframe0
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.byte	0x4
	.4byte	.LCFI33-.LFB220
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE116:
.LSFDE118:
	.4byte	.LEFDE118-.LASFDE118
.LASFDE118:
	.4byte	.Lframe0
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.byte	0x4
	.4byte	.LCFI35-.LFB221
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE118:
.LSFDE120:
	.4byte	.LEFDE120-.LASFDE120
.LASFDE120:
	.4byte	.Lframe0
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.byte	0x4
	.4byte	.LCFI37-.LFB222
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE120:
.LSFDE122:
	.4byte	.LEFDE122-.LASFDE122
.LASFDE122:
	.4byte	.Lframe0
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.byte	0x4
	.4byte	.LCFI39-.LFB223
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE122:
.LSFDE124:
	.4byte	.LEFDE124-.LASFDE124
.LASFDE124:
	.4byte	.Lframe0
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.byte	0x4
	.4byte	.LCFI41-.LFB224
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI42-.LCFI41
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE124:
.LSFDE126:
	.4byte	.LEFDE126-.LASFDE126
.LASFDE126:
	.4byte	.Lframe0
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.byte	0x4
	.4byte	.LCFI43-.LFB227
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI45-.LCFI44
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE126:
.LSFDE128:
	.4byte	.LEFDE128-.LASFDE128
.LASFDE128:
	.4byte	.Lframe0
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.byte	0x4
	.4byte	.LCFI46-.LFB228
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI48-.LCFI47
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE128:
.LSFDE130:
	.4byte	.LEFDE130-.LASFDE130
.LASFDE130:
	.4byte	.Lframe0
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.byte	0x4
	.4byte	.LCFI49-.LFB229
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI51-.LCFI50
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE130:
.LSFDE132:
	.4byte	.LEFDE132-.LASFDE132
.LASFDE132:
	.4byte	.Lframe0
	.4byte	.LFB230
	.4byte	.LFE230-.LFB230
	.byte	0x4
	.4byte	.LCFI52-.LFB230
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI54-.LCFI53
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE132:
.LSFDE134:
	.4byte	.LEFDE134-.LASFDE134
.LASFDE134:
	.4byte	.Lframe0
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.byte	0x4
	.4byte	.LCFI55-.LFB236
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI57-.LCFI56
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE134:
.LSFDE136:
	.4byte	.LEFDE136-.LASFDE136
.LASFDE136:
	.4byte	.Lframe0
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.byte	0x4
	.4byte	.LCFI58-.LFB237
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI60-.LCFI59
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE136:
.LSFDE138:
	.4byte	.LEFDE138-.LASFDE138
.LASFDE138:
	.4byte	.Lframe0
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.byte	0x4
	.4byte	.LCFI61-.LFB250
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE138:
.LSFDE140:
	.4byte	.LEFDE140-.LASFDE140
.LASFDE140:
	.4byte	.Lframe0
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.byte	0x4
	.4byte	.LCFI63-.LFB251
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE140:
.LSFDE142:
	.4byte	.LEFDE142-.LASFDE142
.LASFDE142:
	.4byte	.Lframe0
	.4byte	.LFB256
	.4byte	.LFE256-.LFB256
	.byte	0x4
	.4byte	.LCFI65-.LFB256
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI66-.LCFI65
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE142:
.LSFDE144:
	.4byte	.LEFDE144-.LASFDE144
.LASFDE144:
	.4byte	.Lframe0
	.4byte	.LFB257
	.4byte	.LFE257-.LFB257
	.byte	0x4
	.4byte	.LCFI68-.LFB257
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI69-.LCFI68
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE144:
.LSFDE146:
	.4byte	.LEFDE146-.LASFDE146
.LASFDE146:
	.4byte	.Lframe0
	.4byte	.LFB258
	.4byte	.LFE258-.LFB258
	.byte	0x4
	.4byte	.LCFI71-.LFB258
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI72-.LCFI71
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE146:
.LSFDE148:
	.4byte	.LEFDE148-.LASFDE148
.LASFDE148:
	.4byte	.Lframe0
	.4byte	.LFB259
	.4byte	.LFE259-.LFB259
	.byte	0x4
	.4byte	.LCFI74-.LFB259
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE148:
.LSFDE150:
	.4byte	.LEFDE150-.LASFDE150
.LASFDE150:
	.4byte	.Lframe0
	.4byte	.LFB260
	.4byte	.LFE260-.LFB260
	.byte	0x4
	.4byte	.LCFI77-.LFB260
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE150:
.LSFDE152:
	.4byte	.LEFDE152-.LASFDE152
.LASFDE152:
	.4byte	.Lframe0
	.4byte	.LFB261
	.4byte	.LFE261-.LFB261
	.byte	0x4
	.4byte	.LCFI80-.LFB261
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE152:
.LSFDE154:
	.4byte	.LEFDE154-.LASFDE154
.LASFDE154:
	.4byte	.Lframe0
	.4byte	.LFB262
	.4byte	.LFE262-.LFB262
	.byte	0x4
	.4byte	.LCFI83-.LFB262
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI84-.LCFI83
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE154:
.LSFDE156:
	.4byte	.LEFDE156-.LASFDE156
.LASFDE156:
	.4byte	.Lframe0
	.4byte	.LFB263
	.4byte	.LFE263-.LFB263
	.byte	0x4
	.4byte	.LCFI85-.LFB263
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI86-.LCFI85
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI87-.LCFI86
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE156:
.LSFDE158:
	.4byte	.LEFDE158-.LASFDE158
.LASFDE158:
	.4byte	.Lframe0
	.4byte	.LFB264
	.4byte	.LFE264-.LFB264
	.byte	0x4
	.4byte	.LCFI88-.LFB264
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE158:
.LSFDE160:
	.4byte	.LEFDE160-.LASFDE160
.LASFDE160:
	.4byte	.Lframe0
	.4byte	.LFB265
	.4byte	.LFE265-.LFB265
	.byte	0x4
	.4byte	.LCFI89-.LFB265
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE160:
	.text
.Letext0:
	.file 8 "../../../../../../modules/nrfx/drivers/include/nrfx_spi.h"
	.file 9 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.file 10 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.section	.debug_types,"G",%progbits,wt.ada6264f76ea44b3,comdat
	.4byte	0x127
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xad
	.byte	0xa6
	.byte	0x26
	.byte	0x4f
	.byte	0x76
	.byte	0xea
	.byte	0x44
	.byte	0xb3
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2c
	.byte	0x7
	.byte	0x3a
	.byte	0x9
	.4byte	0xa9
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x7
	.byte	0x3c
	.byte	0x1c
	.4byte	0xa9
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x7
	.byte	0x3d
	.byte	0xc
	.4byte	0xb5
	.byte	0x4
	.uleb128 0x4
	.ascii	"evt\000"
	.byte	0x7
	.byte	0x3e
	.byte	0x14
	.4byte	0xb7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x7
	.byte	0x3f
	.byte	0x16
	.4byte	0xc7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x7
	.byte	0x40
	.byte	0x1c
	.4byte	0xd7
	.byte	0x1d
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x7
	.byte	0x44
	.byte	0xd
	.4byte	0xdc
	.byte	0x1e
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x7
	.byte	0x45
	.byte	0xd
	.4byte	0xdc
	.byte	0x1f
	.uleb128 0x4
	.ascii	"orc\000"
	.byte	0x7
	.byte	0x46
	.byte	0xd
	.4byte	0xdc
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x7
	.byte	0x47
	.byte	0xc
	.4byte	0xe8
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x7
	.byte	0x49
	.byte	0x10
	.4byte	0xf4
	.byte	0x28
	.byte	0
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x8
	.byte	0xc7
	.byte	0x11
	.4byte	0xfb
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x8
	.byte	0xc2
	.byte	0x3
	.byte	0x80
	.byte	0xec
	.byte	0x79
	.byte	0x58
	.byte	0x41
	.byte	0xcb
	.byte	0xeb
	.byte	0x43
	.uleb128 0x7
	.4byte	.LASF10
	.byte	0x2
	.byte	0xb1
	.byte	0x3
	.byte	0xb8
	.byte	0xed
	.byte	0x3
	.byte	0xbe
	.byte	0x52
	.byte	0x53
	.byte	0xe3
	.byte	0xdc
	.uleb128 0x8
	.4byte	0xf4
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0x101
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0xa
	.byte	0x37
	.byte	0x12
	.4byte	0x108
	.uleb128 0x9
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0xa
	.byte	0x4
	.4byte	0x10f
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0xb
	.4byte	0x11f
	.uleb128 0xc
	.4byte	0x11f
	.uleb128 0xc
	.4byte	0xb5
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x125
	.uleb128 0xd
	.4byte	0xb7
	.byte	0
	.file 11 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
	.section	.debug_types,"G",%progbits,wt.669d46b2e6065b04,comdat
	.4byte	0x9a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x66
	.byte	0x9d
	.byte	0x46
	.byte	0xb2
	.byte	0xe6
	.byte	0x6
	.byte	0x5b
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0xb
	.byte	0x58
	.byte	0x9
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0xb
	.byte	0x5a
	.byte	0x12
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0xb
	.byte	0x5b
	.byte	0xd
	.4byte	0x6e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0xb
	.byte	0x5c
	.byte	0xd
	.4byte	0x6e
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0xb
	.byte	0x5d
	.byte	0x18
	.4byte	0x7a
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0xb
	.byte	0x5e
	.byte	0x18
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x8a
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0x8f
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0xb
	.byte	0x38
	.byte	0x3
	.byte	0xba
	.byte	0xfe
	.byte	0x51
	.byte	0x8d
	.byte	0x47
	.byte	0x78
	.byte	0xea
	.byte	0x9e
	.uleb128 0xd
	.4byte	0x96
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.byte	0
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
	.byte	0xb
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0xb
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0xb
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x9
	.byte	0x36
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF26
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
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0xb
	.byte	0x31
	.byte	0x1
	.4byte	0x50
	.uleb128 0xf
	.4byte	.LASF27
	.byte	0
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF31
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.0b37e4cccbd8f046,comdat
	.4byte	0x42
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xb
	.byte	0x37
	.byte	0xe4
	.byte	0xcc
	.byte	0xcb
	.byte	0xd8
	.byte	0xf0
	.byte	0x46
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x6
	.byte	0x78
	.byte	0x1
	.4byte	0x3e
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0
	.uleb128 0xf
	.4byte	.LASF34
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.f7c5f3e8d1e5f621,comdat
	.4byte	0x60
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xf7
	.byte	0xc5
	.byte	0xf3
	.byte	0xe8
	.byte	0xd1
	.byte	0xe5
	.byte	0xf6
	.byte	0x21
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x5c
	.byte	0x6
	.byte	0x69
	.byte	0x1
	.4byte	0x5c
	.uleb128 0xf
	.4byte	.LASF36
	.byte	0
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF39
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF41
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF42
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF43
	.byte	0x7
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.b657294a1776ff30,comdat
	.4byte	0x42
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xb6
	.byte	0x57
	.byte	0x29
	.byte	0x4a
	.byte	0x17
	.byte	0x76
	.byte	0xff
	.byte	0x30
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x6
	.byte	0x5f
	.byte	0x1
	.4byte	0x3e
	.uleb128 0xf
	.4byte	.LASF44
	.byte	0
	.uleb128 0xf
	.4byte	.LASF45
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF46
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.6df8d7faa5c3453e,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x6d
	.byte	0xf8
	.byte	0xd7
	.byte	0xfa
	.byte	0xa5
	.byte	0xc3
	.byte	0x45
	.byte	0x3e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x6
	.byte	0x56
	.byte	0x1
	.4byte	0x38
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0
	.uleb128 0xf
	.4byte	.LASF48
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.ec512311cab4a747,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xec
	.byte	0x51
	.byte	0x23
	.byte	0x11
	.byte	0xca
	.byte	0xb4
	.byte	0xa7
	.byte	0x47
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x6
	.byte	0x4d
	.byte	0x1
	.4byte	0x38
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.80ec795841cbeb43,comdat
	.4byte	0x5e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x80
	.byte	0xec
	.byte	0x79
	.byte	0x58
	.byte	0x41
	.byte	0xcb
	.byte	0xeb
	.byte	0x43
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x14
	.byte	0x8
	.byte	0xbe
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x8
	.byte	0xc0
	.byte	0x19
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x8
	.byte	0xc1
	.byte	0x1a
	.4byte	0x51
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0x8
	.byte	0xbc
	.byte	0x3
	.byte	0x7f
	.byte	0x37
	.byte	0xc3
	.byte	0xd8
	.byte	0x9e
	.byte	0x62
	.byte	0xc1
	.byte	0xe0
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x8
	.byte	0x94
	.byte	0x3
	.byte	0x23
	.byte	0xb2
	.byte	0x70
	.byte	0xed
	.byte	0xfc
	.byte	0x45
	.byte	0x79
	.byte	0x19
	.byte	0
	.section	.debug_types,"G",%progbits,wt.7f37c3d89e62c1e0,comdat
	.4byte	0x36
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x7f
	.byte	0x37
	.byte	0xc3
	.byte	0xd8
	.byte	0x9e
	.byte	0x62
	.byte	0xc1
	.byte	0xe0
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x32
	.byte	0x8
	.byte	0xba
	.byte	0x1
	.4byte	0x32
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.23b270edfc457919,comdat
	.4byte	0x8f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x23
	.byte	0xb2
	.byte	0x70
	.byte	0xed
	.byte	0xfc
	.byte	0x45
	.byte	0x79
	.byte	0x19
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x10
	.byte	0x8
	.byte	0x8e
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x8
	.byte	0x90
	.byte	0x15
	.4byte	0x5b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0x91
	.byte	0xc
	.4byte	0x61
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0x92
	.byte	0xf
	.4byte	0x6d
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x8
	.byte	0x93
	.byte	0xc
	.4byte	0x61
	.byte	0xc
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x73
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0xa
	.byte	0x37
	.byte	0x12
	.4byte	0x78
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7f
	.uleb128 0xd
	.4byte	0x7f
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0x8b
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.c2e456f6128f7854,comdat
	.4byte	0xdc
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xc2
	.byte	0xe4
	.byte	0x56
	.byte	0xf6
	.byte	0x12
	.byte	0x8f
	.byte	0x78
	.byte	0x54
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x10
	.byte	0x8
	.byte	0x63
	.byte	0x9
	.4byte	0x9c
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x8
	.byte	0x65
	.byte	0xd
	.4byte	0x9c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x8
	.byte	0x66
	.byte	0xd
	.4byte	0x9c
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x8
	.byte	0x69
	.byte	0xd
	.4byte	0x9c
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x8
	.byte	0x6c
	.byte	0xd
	.4byte	0x9c
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x8
	.byte	0x72
	.byte	0xd
	.4byte	0x9c
	.byte	0x4
	.uleb128 0x4
	.ascii	"orc\000"
	.byte	0x8
	.byte	0x73
	.byte	0xd
	.4byte	0x9c
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x8
	.byte	0x76
	.byte	0x19
	.4byte	0xa8
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x8
	.byte	0x77
	.byte	0x14
	.4byte	0xb8
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x8
	.byte	0x78
	.byte	0x19
	.4byte	0xc8
	.byte	0xd
	.byte	0
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0xd8
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x5
	.byte	0x62
	.byte	0x3
	.byte	0x81
	.byte	0xad
	.byte	0x58
	.byte	0x14
	.byte	0xca
	.byte	0x4f
	.byte	0xb7
	.byte	0xcc
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x5
	.byte	0x6d
	.byte	0x3
	.byte	0x6a
	.byte	0xf5
	.byte	0x11
	.byte	0x81
	.byte	0x76
	.byte	0x3e
	.byte	0x2a
	.byte	0xea
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x5
	.byte	0x76
	.byte	0x3
	.byte	0x8d
	.byte	0x21
	.byte	0x85
	.byte	0x87
	.byte	0xb8
	.byte	0xa8
	.byte	0x81
	.byte	0x57
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.4a28b78746acf84b,comdat
	.4byte	0x42
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x4a
	.byte	0x28
	.byte	0xb7
	.byte	0x87
	.byte	0x46
	.byte	0xac
	.byte	0xf8
	.byte	0x4b
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x8
	.byte	0x43
	.byte	0x6
	.4byte	0x3e
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0
	.uleb128 0xf
	.4byte	.LASF70
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF71
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.file 12 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.section	.debug_types,"G",%progbits,wt.3ae4b95d630c847b,comdat
	.4byte	0x68
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x3a
	.byte	0xe4
	.byte	0xb9
	.byte	0x5d
	.byte	0x63
	.byte	0xc
	.byte	0x84
	.byte	0x7b
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x8
	.byte	0x3d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x8
	.byte	0x3f
	.byte	0x14
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x8
	.byte	0x40
	.byte	0xd
	.4byte	0x47
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x53
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0x64
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0xc
	.2byte	0x415
	.byte	0x3
	.byte	0xda
	.byte	0x93
	.byte	0x53
	.byte	0xa1
	.byte	0x31
	.byte	0x6c
	.byte	0x24
	.byte	0xc5
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.8d218587b8a88157,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x8d
	.byte	0x21
	.byte	0x85
	.byte	0x87
	.byte	0xb8
	.byte	0xa8
	.byte	0x81
	.byte	0x57
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.byte	0x73
	.byte	0x1
	.4byte	0x38
	.uleb128 0xf
	.4byte	.LASF75
	.byte	0
	.uleb128 0xf
	.4byte	.LASF76
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.6af51181763e2aea,comdat
	.4byte	0x48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x6a
	.byte	0xf5
	.byte	0x11
	.byte	0x81
	.byte	0x76
	.byte	0x3e
	.byte	0x2a
	.byte	0xea
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x5
	.byte	0x68
	.byte	0x1
	.4byte	0x44
	.uleb128 0xf
	.4byte	.LASF77
	.byte	0
	.uleb128 0xf
	.4byte	.LASF78
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF79
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF80
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.81ad5814ca4fb7cc,comdat
	.4byte	0x70
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x81
	.byte	0xad
	.byte	0x58
	.byte	0x14
	.byte	0xca
	.byte	0x4f
	.byte	0xb7
	.byte	0xcc
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x5
	.byte	0x4
	.4byte	0x6c
	.byte	0x5
	.byte	0x58
	.byte	0x1
	.4byte	0x6c
	.uleb128 0x11
	.4byte	.LASF81
	.4byte	0x2000000
	.uleb128 0x11
	.4byte	.LASF82
	.4byte	0x4000000
	.uleb128 0x11
	.4byte	.LASF83
	.4byte	0x8000000
	.uleb128 0x11
	.4byte	.LASF84
	.4byte	0x10000000
	.uleb128 0x11
	.4byte	.LASF85
	.4byte	0x20000000
	.uleb128 0x11
	.4byte	.LASF86
	.4byte	0x40000000
	.uleb128 0x12
	.4byte	.LASF87
	.sleb128 -2147483648
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.byte	0
	.section	.debug_types,"G",%progbits,wt.272b6d5fb4ad8005,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x27
	.byte	0x2b
	.byte	0x6d
	.byte	0x5f
	.byte	0xb4
	.byte	0xad
	.byte	0x80
	.byte	0x5
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.4byte	0x38
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.aa08be517e97bd50,comdat
	.4byte	0x37
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xaa
	.byte	0x8
	.byte	0xbe
	.byte	0x51
	.byte	0x7e
	.byte	0x97
	.byte	0xbd
	.byte	0x50
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x2
	.4byte	0x33
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.4byte	0x33
	.uleb128 0x14
	.4byte	.LASF90
	.2byte	0x108
	.byte	0
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF26
	.byte	0
	.file 13 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
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
	.byte	0xd
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xd
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xd
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x4b
	.uleb128 0x8
	.4byte	0x5b
	.uleb128 0x15
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0x16
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x9
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
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
	.uleb128 0x17
	.byte	0xc
	.byte	0x4
	.2byte	0x177
	.byte	0x9
	.4byte	0x52
	.uleb128 0x18
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x179
	.byte	0x19
	.4byte	0x52
	.byte	0
	.uleb128 0x18
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x17a
	.byte	0x1f
	.4byte	0x58
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x17b
	.byte	0x1a
	.4byte	0x5e
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x64
	.uleb128 0xa
	.byte	0x4
	.4byte	0x64
	.uleb128 0xa
	.byte	0x4
	.4byte	0x74
	.uleb128 0x15
	.4byte	0x81
	.4byte	0x74
	.uleb128 0x16
	.4byte	0x8d
	.byte	0xf
	.byte	0
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x16b
	.byte	0x11
	.4byte	0x64
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0x94
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
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
	.uleb128 0x17
	.byte	0x30
	.byte	0x4
	.2byte	0x16e
	.byte	0x9
	.4byte	0x52
	.uleb128 0x1a
	.ascii	"key\000"
	.byte	0x4
	.2byte	0x170
	.byte	0x11
	.4byte	0x52
	.byte	0
	.uleb128 0x18
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x171
	.byte	0x17
	.4byte	0x5f
	.byte	0x10
	.uleb128 0x18
	.4byte	.LASF99
	.byte	0x4
	.2byte	0x172
	.byte	0x18
	.4byte	0x6c
	.byte	0x20
	.byte	0
	.uleb128 0x19
	.4byte	.LASF100
	.byte	0x4
	.2byte	0x169
	.byte	0x11
	.4byte	0x79
	.uleb128 0x19
	.4byte	.LASF101
	.byte	0x4
	.2byte	0x16a
	.byte	0x11
	.4byte	0x79
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0x4
	.2byte	0x16b
	.byte	0x11
	.4byte	0x79
	.uleb128 0x15
	.4byte	0x89
	.4byte	0x89
	.uleb128 0x16
	.4byte	0x95
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0x9c
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
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
	.uleb128 0x17
	.byte	0x8
	.byte	0x4
	.2byte	0x14a
	.byte	0x9
	.4byte	0x48
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x4
	.2byte	0x14c
	.byte	0xb
	.4byte	0x48
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF103
	.byte	0x4
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
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0x54
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
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
	.uleb128 0x1c
	.byte	0x4
	.byte	0x4
	.2byte	0x14d
	.byte	0x3
	.uleb128 0x1d
	.4byte	.LASF104
	.byte	0x4
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
	.uleb128 0x1d
	.4byte	.LASF105
	.byte	0x4
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
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.2byte	0x153
	.byte	0x5
	.4byte	0x36
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x155
	.byte	0x10
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x9
	.byte	0x38
	.byte	0x16
	.4byte	0x42
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
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
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.2byte	0x14f
	.byte	0x5
	.4byte	0x36
	.uleb128 0x18
	.4byte	.LASF107
	.byte	0x4
	.2byte	0x151
	.byte	0x1d
	.4byte	0x36
	.byte	0
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x3c
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x4
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
	.uleb128 0x17
	.byte	0x10
	.byte	0x4
	.2byte	0x13f
	.byte	0x9
	.4byte	0x48
	.uleb128 0x18
	.4byte	.LASF109
	.byte	0x4
	.2byte	0x141
	.byte	0xb
	.4byte	0x48
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF103
	.byte	0x4
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
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0x54
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
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
	.uleb128 0x1e
	.byte	0xc
	.byte	0x4
	.2byte	0x142
	.byte	0x3
	.4byte	0x42
	.uleb128 0x1f
	.4byte	.LASF110
	.byte	0x4
	.2byte	0x144
	.byte	0x22
	.4byte	0x42
	.uleb128 0x1f
	.4byte	.LASF111
	.byte	0x4
	.2byte	0x145
	.byte	0x20
	.4byte	0x53
	.byte	0
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x4
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
	.uleb128 0x10
	.4byte	.LASF113
	.byte	0x4
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
	.uleb128 0x17
	.byte	0xc
	.byte	0x4
	.2byte	0x136
	.byte	0x9
	.4byte	0x60
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x138
	.byte	0xb
	.4byte	0x60
	.byte	0
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x139
	.byte	0xb
	.4byte	0x60
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF116
	.byte	0x4
	.2byte	0x13a
	.byte	0xc
	.4byte	0x6c
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x13b
	.byte	0xc
	.4byte	0x6c
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0x78
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x9
	.byte	0x38
	.byte	0x16
	.4byte	0x7f
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
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
	.uleb128 0x17
	.byte	0xc
	.byte	0x4
	.2byte	0x12d
	.byte	0x9
	.4byte	0x60
	.uleb128 0x18
	.4byte	.LASF114
	.byte	0x4
	.2byte	0x12f
	.byte	0xb
	.4byte	0x60
	.byte	0
	.uleb128 0x18
	.4byte	.LASF115
	.byte	0x4
	.2byte	0x130
	.byte	0xb
	.4byte	0x60
	.byte	0x1
	.uleb128 0x18
	.4byte	.LASF106
	.byte	0x4
	.2byte	0x131
	.byte	0xc
	.4byte	0x6c
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF117
	.byte	0x4
	.2byte	0x132
	.byte	0xc
	.4byte	0x6c
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0x78
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x9
	.byte	0x38
	.byte	0x16
	.4byte	0x7f
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
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
	.uleb128 0x20
	.4byte	.LASF162
	.byte	0x7
	.byte	0x1
	.4byte	0x138
	.byte	0x4
	.byte	0x68
	.byte	0x6
	.4byte	0x138
	.uleb128 0xf
	.4byte	.LASF118
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF119
	.byte	0x21
	.uleb128 0xf
	.4byte	.LASF120
	.byte	0x22
	.uleb128 0xf
	.4byte	.LASF121
	.byte	0x23
	.uleb128 0xf
	.4byte	.LASF122
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF123
	.byte	0x25
	.uleb128 0xf
	.4byte	.LASF124
	.byte	0x26
	.uleb128 0xf
	.4byte	.LASF125
	.byte	0x27
	.uleb128 0xf
	.4byte	.LASF126
	.byte	0x28
	.uleb128 0xf
	.4byte	.LASF127
	.byte	0x29
	.uleb128 0xf
	.4byte	.LASF128
	.byte	0x2a
	.uleb128 0xf
	.4byte	.LASF129
	.byte	0x2b
	.uleb128 0xf
	.4byte	.LASF130
	.byte	0x2c
	.uleb128 0xf
	.4byte	.LASF131
	.byte	0x2d
	.uleb128 0xf
	.4byte	.LASF132
	.byte	0x2e
	.uleb128 0xf
	.4byte	.LASF133
	.byte	0x2f
	.uleb128 0xf
	.4byte	.LASF134
	.byte	0x30
	.uleb128 0xf
	.4byte	.LASF135
	.byte	0x31
	.uleb128 0xf
	.4byte	.LASF136
	.byte	0x32
	.uleb128 0xf
	.4byte	.LASF137
	.byte	0x33
	.uleb128 0xf
	.4byte	.LASF138
	.byte	0x34
	.uleb128 0xf
	.4byte	.LASF139
	.byte	0x35
	.uleb128 0xf
	.4byte	.LASF140
	.byte	0x36
	.uleb128 0xf
	.4byte	.LASF141
	.byte	0x37
	.uleb128 0xf
	.4byte	.LASF142
	.byte	0x39
	.uleb128 0xf
	.4byte	.LASF143
	.byte	0x3a
	.uleb128 0xf
	.4byte	.LASF144
	.byte	0x3b
	.uleb128 0xf
	.4byte	.LASF145
	.byte	0x3c
	.uleb128 0xf
	.4byte	.LASF146
	.byte	0x3d
	.uleb128 0xf
	.4byte	.LASF147
	.byte	0x3e
	.uleb128 0xf
	.4byte	.LASF148
	.byte	0x3f
	.uleb128 0xf
	.4byte	.LASF149
	.byte	0x41
	.uleb128 0xf
	.4byte	.LASF150
	.byte	0x42
	.uleb128 0xf
	.4byte	.LASF151
	.byte	0x43
	.uleb128 0xf
	.4byte	.LASF152
	.byte	0x44
	.uleb128 0xf
	.4byte	.LASF153
	.byte	0x45
	.uleb128 0xf
	.4byte	.LASF154
	.byte	0x46
	.uleb128 0xf
	.4byte	.LASF155
	.byte	0x47
	.uleb128 0xf
	.4byte	.LASF156
	.byte	0x48
	.uleb128 0xf
	.4byte	.LASF157
	.byte	0x49
	.uleb128 0xf
	.4byte	.LASF158
	.byte	0x4a
	.uleb128 0xf
	.4byte	.LASF159
	.byte	0x4b
	.uleb128 0xf
	.4byte	.LASF160
	.byte	0x4c
	.uleb128 0xf
	.4byte	.LASF161
	.byte	0x51
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.b8ed03be5253e3dc,comdat
	.4byte	0x42
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xb8
	.byte	0xed
	.byte	0x3
	.byte	0xbe
	.byte	0x52
	.byte	0x53
	.byte	0xe3
	.byte	0xdc
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x2
	.byte	0xad
	.byte	0x1
	.4byte	0x3e
	.uleb128 0xf
	.4byte	.LASF163
	.byte	0
	.uleb128 0xf
	.4byte	.LASF164
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF165
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.6b6b608e2c47c9ae,comdat
	.4byte	0x140
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x6b
	.byte	0x6b
	.byte	0x60
	.byte	0x8e
	.byte	0x2c
	.byte	0x47
	.byte	0xc9
	.byte	0xae
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x21
	.2byte	0x780
	.byte	0xc
	.2byte	0x779
	.byte	0x9
	.4byte	0xdb
	.uleb128 0x18
	.4byte	.LASF166
	.byte	0xc
	.2byte	0x77a
	.byte	0x1b
	.4byte	0xdb
	.byte	0
	.uleb128 0x22
	.ascii	"OUT\000"
	.byte	0xc
	.2byte	0x77b
	.byte	0x15
	.4byte	0xe0
	.2byte	0x504
	.uleb128 0x23
	.4byte	.LASF167
	.byte	0xc
	.2byte	0x77c
	.byte	0x15
	.4byte	0xe0
	.2byte	0x508
	.uleb128 0x23
	.4byte	.LASF168
	.byte	0xc
	.2byte	0x77d
	.byte	0x15
	.4byte	0xe0
	.2byte	0x50c
	.uleb128 0x22
	.ascii	"IN\000"
	.byte	0xc
	.2byte	0x77e
	.byte	0x1b
	.4byte	0xe5
	.2byte	0x510
	.uleb128 0x22
	.ascii	"DIR\000"
	.byte	0xc
	.2byte	0x77f
	.byte	0x15
	.4byte	0xe0
	.2byte	0x514
	.uleb128 0x23
	.4byte	.LASF169
	.byte	0xc
	.2byte	0x780
	.byte	0x15
	.4byte	0xe0
	.2byte	0x518
	.uleb128 0x23
	.4byte	.LASF170
	.byte	0xc
	.2byte	0x781
	.byte	0x15
	.4byte	0xe0
	.2byte	0x51c
	.uleb128 0x23
	.4byte	.LASF171
	.byte	0xc
	.2byte	0x782
	.byte	0x15
	.4byte	0xe0
	.2byte	0x520
	.uleb128 0x23
	.4byte	.LASF172
	.byte	0xc
	.2byte	0x784
	.byte	0x15
	.4byte	0xe0
	.2byte	0x524
	.uleb128 0x23
	.4byte	.LASF173
	.byte	0xc
	.2byte	0x785
	.byte	0x1b
	.4byte	0xea
	.2byte	0x528
	.uleb128 0x23
	.4byte	.LASF174
	.byte	0xc
	.2byte	0x786
	.byte	0x15
	.4byte	0xef
	.2byte	0x700
	.byte	0
	.uleb128 0x8
	.4byte	0xf4
	.uleb128 0x8
	.4byte	0xf9
	.uleb128 0x8
	.4byte	0x105
	.uleb128 0x8
	.4byte	0x10a
	.uleb128 0x8
	.4byte	0x10f
	.uleb128 0xd
	.4byte	0x11f
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x9
	.byte	0x38
	.byte	0x16
	.4byte	0x130
	.uleb128 0xd
	.4byte	0xf9
	.uleb128 0xd
	.4byte	0x137
	.uleb128 0x15
	.4byte	0xe0
	.4byte	0x11f
	.uleb128 0x16
	.4byte	0x130
	.byte	0x1f
	.byte	0
	.uleb128 0x15
	.4byte	0xe5
	.4byte	0x130
	.uleb128 0x24
	.4byte	0x130
	.2byte	0x140
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x25
	.4byte	0xe5
	.uleb128 0x16
	.4byte	0x130
	.byte	0x75
	.byte	0
	.byte	0
	.section	.debug_types,"G",%progbits,wt.da9353a1316c24c5,comdat
	.4byte	0x1ac
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xda
	.byte	0x93
	.byte	0x53
	.byte	0xa1
	.byte	0x31
	.byte	0x6c
	.byte	0x24
	.byte	0xc5
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x21
	.2byte	0x558
	.byte	0xc
	.2byte	0x404
	.byte	0x9
	.4byte	0x118
	.uleb128 0x18
	.4byte	.LASF166
	.byte	0xc
	.2byte	0x405
	.byte	0x1b
	.4byte	0x118
	.byte	0
	.uleb128 0x23
	.4byte	.LASF175
	.byte	0xc
	.2byte	0x406
	.byte	0x15
	.4byte	0x11d
	.2byte	0x108
	.uleb128 0x23
	.4byte	.LASF173
	.byte	0xc
	.2byte	0x407
	.byte	0x1b
	.4byte	0x122
	.2byte	0x10c
	.uleb128 0x23
	.4byte	.LASF176
	.byte	0xc
	.2byte	0x408
	.byte	0x15
	.4byte	0x11d
	.2byte	0x304
	.uleb128 0x23
	.4byte	.LASF177
	.byte	0xc
	.2byte	0x409
	.byte	0x15
	.4byte	0x11d
	.2byte	0x308
	.uleb128 0x23
	.4byte	.LASF178
	.byte	0xc
	.2byte	0x40a
	.byte	0x1b
	.4byte	0x127
	.2byte	0x30c
	.uleb128 0x23
	.4byte	.LASF179
	.byte	0xc
	.2byte	0x40b
	.byte	0x15
	.4byte	0x11d
	.2byte	0x500
	.uleb128 0x23
	.4byte	.LASF180
	.byte	0xc
	.2byte	0x40c
	.byte	0x1b
	.4byte	0x12c
	.2byte	0x504
	.uleb128 0x23
	.4byte	.LASF181
	.byte	0xc
	.2byte	0x40d
	.byte	0x11
	.4byte	0x131
	.2byte	0x508
	.uleb128 0x23
	.4byte	.LASF182
	.byte	0xc
	.2byte	0x40e
	.byte	0x1b
	.4byte	0x12c
	.2byte	0x514
	.uleb128 0x22
	.ascii	"RXD\000"
	.byte	0xc
	.2byte	0x40f
	.byte	0x1b
	.4byte	0x12c
	.2byte	0x518
	.uleb128 0x22
	.ascii	"TXD\000"
	.byte	0xc
	.2byte	0x410
	.byte	0x15
	.4byte	0x11d
	.2byte	0x51c
	.uleb128 0x23
	.4byte	.LASF183
	.byte	0xc
	.2byte	0x411
	.byte	0x1b
	.4byte	0x12c
	.2byte	0x520
	.uleb128 0x23
	.4byte	.LASF184
	.byte	0xc
	.2byte	0x412
	.byte	0x15
	.4byte	0x11d
	.2byte	0x524
	.uleb128 0x23
	.4byte	.LASF185
	.byte	0xc
	.2byte	0x413
	.byte	0x1b
	.4byte	0x142
	.2byte	0x528
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0xc
	.2byte	0x414
	.byte	0x15
	.4byte	0x11d
	.2byte	0x554
	.byte	0
	.uleb128 0x8
	.4byte	0x147
	.uleb128 0x8
	.4byte	0x14c
	.uleb128 0x8
	.4byte	0x158
	.uleb128 0x8
	.4byte	0x15d
	.uleb128 0x8
	.4byte	0x162
	.uleb128 0x10
	.4byte	.LASF187
	.byte	0xc
	.2byte	0x142
	.byte	0x3
	.byte	0x3b
	.byte	0x12
	.byte	0x88
	.byte	0x17
	.byte	0x2d
	.byte	0xff
	.byte	0xc3
	.byte	0x58
	.uleb128 0x8
	.4byte	0x167
	.uleb128 0xd
	.4byte	0x16c
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x9
	.byte	0x38
	.byte	0x16
	.4byte	0x17c
	.uleb128 0xd
	.4byte	0x183
	.uleb128 0xd
	.4byte	0x193
	.uleb128 0xd
	.4byte	0x14c
	.uleb128 0xd
	.4byte	0x1a3
	.uleb128 0x15
	.4byte	0x12c
	.4byte	0x17c
	.uleb128 0x16
	.4byte	0x17c
	.byte	0x41
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x15
	.4byte	0x12c
	.4byte	0x193
	.uleb128 0x16
	.4byte	0x17c
	.byte	0x7d
	.byte	0
	.uleb128 0x15
	.4byte	0x12c
	.4byte	0x1a3
	.uleb128 0x16
	.4byte	0x17c
	.byte	0x7c
	.byte	0
	.uleb128 0x25
	.4byte	0x12c
	.uleb128 0x16
	.4byte	0x17c
	.byte	0xa
	.byte	0
	.byte	0
	.section	.debug_types,"G",%progbits,wt.3b1288172dffc358,comdat
	.4byte	0x67
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x3b
	.byte	0x12
	.byte	0x88
	.byte	0x17
	.byte	0x2d
	.byte	0xff
	.byte	0xc3
	.byte	0x58
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x17
	.byte	0xc
	.byte	0xc
	.2byte	0x13e
	.byte	0x9
	.4byte	0x52
	.uleb128 0x1a
	.ascii	"SCK\000"
	.byte	0xc
	.2byte	0x13f
	.byte	0x15
	.4byte	0x52
	.byte	0
	.uleb128 0x18
	.4byte	.LASF188
	.byte	0xc
	.2byte	0x140
	.byte	0x15
	.4byte	0x52
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF189
	.byte	0xc
	.2byte	0x141
	.byte	0x15
	.4byte	0x52
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x57
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x9
	.byte	0x38
	.byte	0x16
	.4byte	0x63
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.byte	0
	.section	.debug_types,"G",%progbits,wt.1a6b2b7b737fbd2c,comdat
	.4byte	0x1f8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1a
	.byte	0x6b
	.byte	0x2b
	.byte	0x7b
	.byte	0x73
	.byte	0x7f
	.byte	0xbd
	.byte	0x2c
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x17
	.byte	0x8c
	.byte	0x1
	.2byte	0x1e5
	.byte	0x9
	.4byte	0x14e
	.uleb128 0x18
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x1e7
	.byte	0x1b
	.4byte	0x14e
	.byte	0
	.uleb128 0x18
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x1e8
	.byte	0x15
	.4byte	0x153
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x1e9
	.byte	0x15
	.4byte	0x153
	.byte	0x8
	.uleb128 0x18
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x1ea
	.byte	0x15
	.4byte	0x153
	.byte	0xc
	.uleb128 0x1a
	.ascii	"SCR\000"
	.byte	0x1
	.2byte	0x1eb
	.byte	0x15
	.4byte	0x153
	.byte	0x10
	.uleb128 0x1a
	.ascii	"CCR\000"
	.byte	0x1
	.2byte	0x1ec
	.byte	0x15
	.4byte	0x153
	.byte	0x14
	.uleb128 0x1a
	.ascii	"SHP\000"
	.byte	0x1
	.2byte	0x1ed
	.byte	0x14
	.4byte	0x158
	.byte	0x18
	.uleb128 0x18
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x1ee
	.byte	0x15
	.4byte	0x153
	.byte	0x24
	.uleb128 0x18
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x1ef
	.byte	0x15
	.4byte	0x153
	.byte	0x28
	.uleb128 0x18
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x1f0
	.byte	0x15
	.4byte	0x153
	.byte	0x2c
	.uleb128 0x18
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x1f1
	.byte	0x15
	.4byte	0x153
	.byte	0x30
	.uleb128 0x18
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x1f2
	.byte	0x15
	.4byte	0x153
	.byte	0x34
	.uleb128 0x18
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x1f3
	.byte	0x15
	.4byte	0x153
	.byte	0x38
	.uleb128 0x18
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x1f4
	.byte	0x15
	.4byte	0x153
	.byte	0x3c
	.uleb128 0x1a
	.ascii	"PFR\000"
	.byte	0x1
	.2byte	0x1f5
	.byte	0x1b
	.4byte	0x15d
	.byte	0x40
	.uleb128 0x1a
	.ascii	"DFR\000"
	.byte	0x1
	.2byte	0x1f6
	.byte	0x1b
	.4byte	0x14e
	.byte	0x48
	.uleb128 0x1a
	.ascii	"ADR\000"
	.byte	0x1
	.2byte	0x1f7
	.byte	0x1b
	.4byte	0x14e
	.byte	0x4c
	.uleb128 0x18
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x1f8
	.byte	0x1b
	.4byte	0x162
	.byte	0x50
	.uleb128 0x18
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x1f9
	.byte	0x1b
	.4byte	0x167
	.byte	0x60
	.uleb128 0x18
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1fa
	.byte	0x12
	.4byte	0x16c
	.byte	0x74
	.uleb128 0x18
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x1fb
	.byte	0x15
	.4byte	0x153
	.byte	0x88
	.byte	0
	.uleb128 0x8
	.4byte	0x17c
	.uleb128 0x8
	.4byte	0x181
	.uleb128 0x8
	.4byte	0x18d
	.uleb128 0x8
	.4byte	0x19d
	.uleb128 0x8
	.4byte	0x1a2
	.uleb128 0x8
	.4byte	0x1a7
	.uleb128 0x15
	.4byte	0x181
	.4byte	0x17c
	.uleb128 0x16
	.4byte	0x1ac
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	0x181
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x9
	.byte	0x38
	.byte	0x16
	.4byte	0x1ac
	.uleb128 0x15
	.4byte	0x1b3
	.4byte	0x19d
	.uleb128 0x16
	.4byte	0x1ac
	.byte	0xb
	.byte	0
	.uleb128 0xd
	.4byte	0x1b8
	.uleb128 0xd
	.4byte	0x1c8
	.uleb128 0xd
	.4byte	0x1d8
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x8
	.4byte	0x1e8
	.uleb128 0x15
	.4byte	0x14e
	.4byte	0x1c8
	.uleb128 0x16
	.4byte	0x1ac
	.byte	0x1
	.byte	0
	.uleb128 0x15
	.4byte	0x14e
	.4byte	0x1d8
	.uleb128 0x16
	.4byte	0x1ac
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.4byte	0x14e
	.4byte	0x1e8
	.uleb128 0x16
	.4byte	0x1ac
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0x1f4
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.cbb250d87081e352,comdat
	.4byte	0x16f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xcb
	.byte	0xb2
	.byte	0x50
	.byte	0xd8
	.byte	0x70
	.byte	0x81
	.byte	0xe3
	.byte	0x52
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x21
	.2byte	0xe04
	.byte	0x1
	.2byte	0x1c3
	.byte	0x9
	.4byte	0xe7
	.uleb128 0x18
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x1c5
	.byte	0x15
	.4byte	0xe7
	.byte	0
	.uleb128 0x18
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x1c6
	.byte	0x12
	.4byte	0xec
	.byte	0x20
	.uleb128 0x18
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x1c7
	.byte	0x15
	.4byte	0xe7
	.byte	0x80
	.uleb128 0x18
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x1c8
	.byte	0x12
	.4byte	0xec
	.byte	0xa0
	.uleb128 0x23
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x1c9
	.byte	0x15
	.4byte	0xe7
	.2byte	0x100
	.uleb128 0x23
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x1ca
	.byte	0x12
	.4byte	0xec
	.2byte	0x120
	.uleb128 0x23
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x1cb
	.byte	0x15
	.4byte	0xe7
	.2byte	0x180
	.uleb128 0x23
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x1cc
	.byte	0x12
	.4byte	0xec
	.2byte	0x1a0
	.uleb128 0x23
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x1cd
	.byte	0x15
	.4byte	0xe7
	.2byte	0x200
	.uleb128 0x23
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x1ce
	.byte	0x12
	.4byte	0xfc
	.2byte	0x220
	.uleb128 0x22
	.ascii	"IP\000"
	.byte	0x1
	.2byte	0x1cf
	.byte	0x14
	.4byte	0x10c
	.2byte	0x300
	.uleb128 0x23
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x1d0
	.byte	0x12
	.4byte	0x111
	.2byte	0x3f0
	.uleb128 0x23
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x1d1
	.byte	0x15
	.4byte	0x122
	.2byte	0xe00
	.byte	0
	.uleb128 0x8
	.4byte	0x127
	.uleb128 0x15
	.4byte	0x137
	.4byte	0xfc
	.uleb128 0x16
	.4byte	0x143
	.byte	0x17
	.byte	0
	.uleb128 0x15
	.4byte	0x137
	.4byte	0x10c
	.uleb128 0x16
	.4byte	0x143
	.byte	0x37
	.byte	0
	.uleb128 0x8
	.4byte	0x14a
	.uleb128 0x15
	.4byte	0x137
	.4byte	0x122
	.uleb128 0x24
	.4byte	0x143
	.2byte	0x283
	.byte	0
	.uleb128 0x8
	.4byte	0x137
	.uleb128 0x15
	.4byte	0x122
	.4byte	0x137
	.uleb128 0x16
	.4byte	0x143
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x9
	.byte	0x38
	.byte	0x16
	.4byte	0x143
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x15
	.4byte	0x15a
	.4byte	0x15a
	.uleb128 0x16
	.4byte	0x143
	.byte	0xef
	.byte	0
	.uleb128 0x8
	.4byte	0x15f
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0x16b
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.byte	0
	.section	.debug_types,"G",%progbits,wt.f110864140bf57f9,comdat
	.4byte	0x14a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xf1
	.byte	0x10
	.byte	0x86
	.byte	0x41
	.byte	0x40
	.byte	0xbf
	.byte	0x57
	.byte	0xf9
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x5
	.byte	0x1
	.4byte	0x146
	.byte	0xc
	.byte	0x4a
	.byte	0xe
	.4byte	0x146
	.uleb128 0x12
	.4byte	.LASF211
	.sleb128 -15
	.uleb128 0x12
	.4byte	.LASF212
	.sleb128 -14
	.uleb128 0x12
	.4byte	.LASF213
	.sleb128 -13
	.uleb128 0x12
	.4byte	.LASF214
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF215
	.sleb128 -11
	.uleb128 0x12
	.4byte	.LASF216
	.sleb128 -10
	.uleb128 0x12
	.4byte	.LASF217
	.sleb128 -5
	.uleb128 0x12
	.4byte	.LASF218
	.sleb128 -4
	.uleb128 0x12
	.4byte	.LASF219
	.sleb128 -2
	.uleb128 0x12
	.4byte	.LASF220
	.sleb128 -1
	.uleb128 0xf
	.4byte	.LASF221
	.byte	0
	.uleb128 0xf
	.4byte	.LASF222
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF223
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF224
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF225
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF226
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF227
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF228
	.byte	0x7
	.uleb128 0xf
	.4byte	.LASF229
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF230
	.byte	0x9
	.uleb128 0xf
	.4byte	.LASF231
	.byte	0xa
	.uleb128 0xf
	.4byte	.LASF232
	.byte	0xb
	.uleb128 0xf
	.4byte	.LASF233
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF234
	.byte	0xd
	.uleb128 0xf
	.4byte	.LASF235
	.byte	0xe
	.uleb128 0xf
	.4byte	.LASF236
	.byte	0xf
	.uleb128 0xf
	.4byte	.LASF237
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF238
	.byte	0x11
	.uleb128 0xf
	.4byte	.LASF239
	.byte	0x12
	.uleb128 0xf
	.4byte	.LASF240
	.byte	0x13
	.uleb128 0xf
	.4byte	.LASF241
	.byte	0x14
	.uleb128 0xf
	.4byte	.LASF242
	.byte	0x15
	.uleb128 0xf
	.4byte	.LASF243
	.byte	0x16
	.uleb128 0xf
	.4byte	.LASF244
	.byte	0x17
	.uleb128 0xf
	.4byte	.LASF245
	.byte	0x18
	.uleb128 0xf
	.4byte	.LASF246
	.byte	0x19
	.uleb128 0xf
	.4byte	.LASF247
	.byte	0x1a
	.uleb128 0xf
	.4byte	.LASF248
	.byte	0x1b
	.uleb128 0xf
	.4byte	.LASF249
	.byte	0x1c
	.uleb128 0xf
	.4byte	.LASF250
	.byte	0x1d
	.uleb128 0xf
	.4byte	.LASF251
	.byte	0x20
	.uleb128 0xf
	.4byte	.LASF252
	.byte	0x21
	.uleb128 0xf
	.4byte	.LASF253
	.byte	0x22
	.uleb128 0xf
	.4byte	.LASF254
	.byte	0x23
	.uleb128 0xf
	.4byte	.LASF255
	.byte	0x24
	.uleb128 0xf
	.4byte	.LASF256
	.byte	0x25
	.uleb128 0xf
	.4byte	.LASF257
	.byte	0x26
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF258
	.byte	0
	.file 14 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0x26
	.4byte	.LASF262
	.byte	0x8
	.byte	0xe
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x18
	.4byte	.LASF259
	.byte	0xe
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x18
	.4byte	.LASF260
	.byte	0xe
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF261
	.byte	0xe
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x61
	.uleb128 0x27
	.4byte	0x70
	.4byte	0x70
	.uleb128 0xc
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xd
	.4byte	0x82
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
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
	.uleb128 0x28
	.4byte	.LASF263
	.byte	0x14
	.byte	0xe
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF264
	.byte	0xe
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x15
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x16
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x55
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0xd
	.4byte	0x5a
	.uleb128 0x7
	.4byte	.LASF265
	.byte	0xe
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
	.byte	0xe
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF266
	.byte	0xe
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF267
	.byte	0xe
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF268
	.byte	0xe
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x60
	.uleb128 0xa
	.byte	0x4
	.4byte	0x65
	.uleb128 0xa
	.byte	0x4
	.4byte	0x6a
	.uleb128 0xd
	.4byte	0x6f
	.uleb128 0xd
	.4byte	0x76
	.uleb128 0xd
	.4byte	0x86
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0x7
	.4byte	.LASF269
	.byte	0xe
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
	.uleb128 0x7
	.4byte	.LASF270
	.byte	0xe
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
	.byte	0xe
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF271
	.byte	0xe
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF272
	.byte	0xe
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF273
	.byte	0xe
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF274
	.byte	0xe
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF275
	.byte	0xe
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF276
	.byte	0xe
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF277
	.byte	0xe
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF278
	.byte	0xe
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0xb3
	.uleb128 0xa
	.byte	0x4
	.4byte	0xc7
	.uleb128 0xa
	.byte	0x4
	.4byte	0xd6
	.uleb128 0xa
	.byte	0x4
	.4byte	0xea
	.uleb128 0xa
	.byte	0x4
	.4byte	0xf9
	.uleb128 0xa
	.byte	0x4
	.4byte	0x112
	.uleb128 0x27
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0xc
	.4byte	0x130
	.uleb128 0xc
	.4byte	0x130
	.byte	0
	.uleb128 0x27
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0xc
	.4byte	0x130
	.byte	0
	.uleb128 0x27
	.4byte	0x130
	.4byte	0xea
	.uleb128 0xc
	.4byte	0x137
	.uleb128 0xc
	.4byte	0x130
	.byte	0
	.uleb128 0x27
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0xc
	.4byte	0x137
	.byte	0
	.uleb128 0x27
	.4byte	0x130
	.4byte	0x112
	.uleb128 0xc
	.4byte	0x13e
	.uleb128 0xc
	.4byte	0x144
	.uleb128 0xc
	.4byte	0x14b
	.byte	0
	.uleb128 0x27
	.4byte	0x130
	.4byte	0x130
	.uleb128 0xc
	.4byte	0x155
	.uleb128 0xc
	.4byte	0x15b
	.uleb128 0xc
	.4byte	0x144
	.uleb128 0xc
	.4byte	0x14b
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF279
	.uleb128 0xa
	.byte	0x4
	.4byte	0x161
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x29
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x144
	.uleb128 0xa
	.byte	0x4
	.4byte	0x168
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0xd
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
	.byte	0xe
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF280
	.byte	0xe
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF281
	.byte	0xe
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF282
	.byte	0xe
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF283
	.byte	0xe
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF284
	.byte	0xe
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF285
	.byte	0xe
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF286
	.byte	0xe
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF287
	.byte	0xe
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF288
	.byte	0xe
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF289
	.byte	0xe
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF290
	.byte	0xe
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF291
	.byte	0xe
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF292
	.byte	0xe
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF293
	.byte	0xe
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF294
	.byte	0xe
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF295
	.byte	0xe
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF296
	.byte	0xe
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF297
	.byte	0xe
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF298
	.byte	0xe
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF299
	.byte	0xe
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF300
	.byte	0xe
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF301
	.byte	0xe
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF302
	.byte	0xe
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF303
	.byte	0xe
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF304
	.byte	0xe
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF305
	.byte	0xe
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF306
	.byte	0xe
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF307
	.byte	0xe
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF308
	.byte	0xe
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF309
	.byte	0xe
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF310
	.byte	0xe
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF311
	.byte	0xe
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0xd
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
	.uleb128 0x28
	.4byte	.LASF312
	.byte	0x8
	.byte	0xe
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF313
	.byte	0xe
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF314
	.byte	0xe
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF279
	.byte	0
	.file 15 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 16 "../../../../../../components/libraries/util/app_util.h"
	.file 17 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 18 "../../../../../../components/libraries/util/sdk_errors.h"
	.file 19 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 20 "../../../../../../integration/nrfx/nrfx_log.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1719
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x2a
	.4byte	.LASF532
	.byte	0xc
	.4byte	.LASF533
	.4byte	.LASF534
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.4byte	.LASF258
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x9
	.byte	0x30
	.byte	0x17
	.4byte	0x41
	.uleb128 0x8
	.4byte	0x30
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0xd
	.4byte	0x41
	.uleb128 0x9
	.byte	0x2
	.byte	0x5
	.4byte	.LASF315
	.uleb128 0x5
	.4byte	.LASF25
	.byte	0x9
	.byte	0x36
	.byte	0x18
	.4byte	0x60
	.uleb128 0x9
	.byte	0x2
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x5
	.4byte	.LASF316
	.byte	0x9
	.byte	0x37
	.byte	0x14
	.4byte	0x78
	.uleb128 0x8
	.4byte	0x67
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.4byte	.LASF93
	.byte	0x9
	.byte	0x38
	.byte	0x16
	.4byte	0x95
	.uleb128 0x8
	.4byte	0x7f
	.uleb128 0xd
	.4byte	0x7f
	.uleb128 0x9
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x9
	.byte	0x8
	.byte	0x5
	.4byte	.LASF317
	.uleb128 0x9
	.byte	0x8
	.byte	0x7
	.4byte	.LASF318
	.uleb128 0x6
	.byte	0x4
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.4byte	.LASF279
	.uleb128 0x9
	.byte	0x1
	.byte	0x8
	.4byte	.LASF22
	.uleb128 0xd
	.4byte	0xb3
	.uleb128 0x7
	.4byte	.LASF270
	.byte	0xe
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
	.uleb128 0xd
	.4byte	0xbf
	.uleb128 0x7
	.4byte	.LASF265
	.byte	0xe
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
	.uleb128 0xd
	.4byte	0xd4
	.uleb128 0x2b
	.4byte	.LASF319
	.byte	0xe
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
	.uleb128 0x2c
	.4byte	.LASF320
	.byte	0xe
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xe4
	.uleb128 0x2c
	.4byte	.LASF321
	.byte	0xe
	.2byte	0x110
	.byte	0x25
	.4byte	0xcf
	.uleb128 0x2c
	.4byte	.LASF322
	.byte	0xe
	.2byte	0x111
	.byte	0x25
	.4byte	0xcf
	.uleb128 0x15
	.4byte	0x48
	.4byte	0x131
	.uleb128 0x16
	.4byte	0x95
	.byte	0x7f
	.byte	0
	.uleb128 0xd
	.4byte	0x121
	.uleb128 0x2c
	.4byte	.LASF323
	.byte	0xe
	.2byte	0x113
	.byte	0x1c
	.4byte	0x131
	.uleb128 0x15
	.4byte	0xba
	.4byte	0x14e
	.uleb128 0x2d
	.byte	0
	.uleb128 0xd
	.4byte	0x143
	.uleb128 0x2c
	.4byte	.LASF324
	.byte	0xe
	.2byte	0x115
	.byte	0x13
	.4byte	0x14e
	.uleb128 0x2c
	.4byte	.LASF325
	.byte	0xe
	.2byte	0x116
	.byte	0x13
	.4byte	0x14e
	.uleb128 0x2c
	.4byte	.LASF326
	.byte	0xe
	.2byte	0x117
	.byte	0x13
	.4byte	0x14e
	.uleb128 0x2c
	.4byte	.LASF327
	.byte	0xe
	.2byte	0x118
	.byte	0x13
	.4byte	0x14e
	.uleb128 0x2c
	.4byte	.LASF328
	.byte	0xe
	.2byte	0x11a
	.byte	0x13
	.4byte	0x14e
	.uleb128 0x2c
	.4byte	.LASF329
	.byte	0xe
	.2byte	0x11b
	.byte	0x13
	.4byte	0x14e
	.uleb128 0x2c
	.4byte	.LASF330
	.byte	0xe
	.2byte	0x11c
	.byte	0x13
	.4byte	0x14e
	.uleb128 0x2c
	.4byte	.LASF331
	.byte	0xe
	.2byte	0x11d
	.byte	0x13
	.4byte	0x14e
	.uleb128 0x2c
	.4byte	.LASF332
	.byte	0xe
	.2byte	0x11e
	.byte	0x13
	.4byte	0x14e
	.uleb128 0x2c
	.4byte	.LASF333
	.byte	0xe
	.2byte	0x11f
	.byte	0x13
	.4byte	0x14e
	.uleb128 0x27
	.4byte	0x78
	.4byte	0x1e4
	.uleb128 0xc
	.4byte	0x1e4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1ef
	.uleb128 0x2e
	.4byte	.LASF357
	.uleb128 0xd
	.4byte	0x1ea
	.uleb128 0x2c
	.4byte	.LASF334
	.byte	0xe
	.2byte	0x135
	.byte	0xe
	.4byte	0x201
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1d5
	.uleb128 0x27
	.4byte	0x78
	.4byte	0x216
	.uleb128 0xc
	.4byte	0x216
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1ea
	.uleb128 0x2c
	.4byte	.LASF335
	.byte	0xe
	.2byte	0x136
	.byte	0xe
	.4byte	0x229
	.uleb128 0xa
	.byte	0x4
	.4byte	0x207
	.uleb128 0x10
	.4byte	.LASF336
	.byte	0xe
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
	.uleb128 0x2c
	.4byte	.LASF337
	.byte	0xe
	.2byte	0x157
	.byte	0x1f
	.4byte	0x24d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x22f
	.uleb128 0x5
	.4byte	.LASF12
	.byte	0xa
	.byte	0x37
	.byte	0x12
	.4byte	0x95
	.uleb128 0x7
	.4byte	.LASF338
	.byte	0xc
	.byte	0x7e
	.byte	0x3
	.byte	0xf1
	.byte	0x10
	.byte	0x86
	.byte	0x41
	.byte	0x40
	.byte	0xbf
	.byte	0x57
	.byte	0xf9
	.uleb128 0x10
	.4byte	.LASF339
	.byte	0x1
	.2byte	0x1d2
	.byte	0x3
	.byte	0xcb
	.byte	0xb2
	.byte	0x50
	.byte	0xd8
	.byte	0x70
	.byte	0x81
	.byte	0xe3
	.byte	0x52
	.uleb128 0x10
	.4byte	.LASF340
	.byte	0x1
	.2byte	0x1fc
	.byte	0x3
	.byte	0x1a
	.byte	0x6b
	.byte	0x2b
	.byte	0x7b
	.byte	0x73
	.byte	0x7f
	.byte	0xbd
	.byte	0x2c
	.uleb128 0x2c
	.4byte	.LASF341
	.byte	0x1
	.2byte	0x744
	.byte	0x19
	.4byte	0x73
	.uleb128 0x2f
	.4byte	.LASF342
	.byte	0xf
	.byte	0x21
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0xc
	.2byte	0x415
	.byte	0x3
	.byte	0xda
	.byte	0x93
	.byte	0x53
	.byte	0xa1
	.byte	0x31
	.byte	0x6c
	.byte	0x24
	.byte	0xc5
	.uleb128 0x10
	.4byte	.LASF343
	.byte	0xc
	.2byte	0x787
	.byte	0x3
	.byte	0x6b
	.byte	0x6b
	.byte	0x60
	.byte	0x8e
	.byte	0x2c
	.byte	0x47
	.byte	0xc9
	.byte	0xae
	.uleb128 0x5
	.4byte	.LASF344
	.byte	0x2
	.byte	0xa7
	.byte	0x11
	.4byte	0x2dd
	.uleb128 0xd
	.4byte	0x2cc
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2e3
	.uleb128 0x30
	.uleb128 0x2f
	.4byte	.LASF345
	.byte	0x10
	.byte	0x53
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x2f
	.4byte	.LASF346
	.byte	0x10
	.byte	0x54
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x2f
	.4byte	.LASF347
	.byte	0x10
	.byte	0x72
	.byte	0x13
	.4byte	0x308
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x2f
	.4byte	.LASF348
	.byte	0x10
	.byte	0x73
	.byte	0x11
	.4byte	0x7f
	.uleb128 0xa
	.byte	0x4
	.4byte	0x30
	.uleb128 0x19
	.4byte	.LASF349
	.byte	0x4
	.2byte	0x12a
	.byte	0x1a
	.4byte	0x3c
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x4
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
	.uleb128 0xd
	.4byte	0x32d
	.uleb128 0x10
	.4byte	.LASF350
	.byte	0x4
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
	.uleb128 0x19
	.4byte	.LASF351
	.byte	0x4
	.2byte	0x166
	.byte	0x36
	.4byte	0x361
	.uleb128 0xa
	.byte	0x4
	.4byte	0x367
	.uleb128 0x27
	.4byte	0x376
	.4byte	0x376
	.uleb128 0xc
	.4byte	0x30
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x343
	.uleb128 0x10
	.4byte	.LASF352
	.byte	0x4
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
	.uleb128 0x10
	.4byte	.LASF353
	.byte	0x4
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
	.uleb128 0x7
	.4byte	.LASF354
	.byte	0xd
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
	.uleb128 0x2f
	.4byte	.LASF355
	.byte	0xd
	.byte	0x75
	.byte	0x19
	.4byte	0x39e
	.uleb128 0x19
	.4byte	.LASF356
	.byte	0x11
	.2byte	0x317
	.byte	0x1b
	.4byte	0x3c7
	.uleb128 0x2e
	.4byte	.LASF358
	.uleb128 0x2c
	.4byte	.LASF359
	.byte	0x11
	.2byte	0x31b
	.byte	0xe
	.4byte	0x3d9
	.uleb128 0xa
	.byte	0x4
	.4byte	0x3ba
	.uleb128 0x2c
	.4byte	.LASF360
	.byte	0x11
	.2byte	0x31c
	.byte	0xe
	.4byte	0x3d9
	.uleb128 0x2c
	.4byte	.LASF361
	.byte	0x11
	.2byte	0x31d
	.byte	0xe
	.4byte	0x3d9
	.uleb128 0x5
	.4byte	.LASF362
	.byte	0x12
	.byte	0x9e
	.byte	0x12
	.4byte	0x7f
	.uleb128 0x5
	.4byte	.LASF363
	.byte	0x3
	.byte	0xdb
	.byte	0x14
	.4byte	0x3f9
	.uleb128 0x7
	.4byte	.LASF364
	.byte	0x5
	.byte	0x49
	.byte	0x3
	.byte	0xaa
	.byte	0x8
	.byte	0xbe
	.byte	0x51
	.byte	0x7e
	.byte	0x97
	.byte	0xbd
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x5
	.byte	0x62
	.byte	0x3
	.byte	0x81
	.byte	0xad
	.byte	0x58
	.byte	0x14
	.byte	0xca
	.byte	0x4f
	.byte	0xb7
	.byte	0xcc
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x5
	.byte	0x6d
	.byte	0x3
	.byte	0x6a
	.byte	0xf5
	.byte	0x11
	.byte	0x81
	.byte	0x76
	.byte	0x3e
	.byte	0x2a
	.byte	0xea
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x5
	.byte	0x76
	.byte	0x3
	.byte	0x8d
	.byte	0x21
	.byte	0x85
	.byte	0x87
	.byte	0xb8
	.byte	0xa8
	.byte	0x81
	.byte	0x57
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2aa
	.uleb128 0x7
	.4byte	.LASF365
	.byte	0x8
	.byte	0x41
	.byte	0x3
	.byte	0x3a
	.byte	0xe4
	.byte	0xb9
	.byte	0x5d
	.byte	0x63
	.byte	0xc
	.byte	0x84
	.byte	0x7b
	.uleb128 0xd
	.4byte	0x457
	.uleb128 0x7
	.4byte	.LASF366
	.byte	0x8
	.byte	0x79
	.byte	0x3
	.byte	0xc2
	.byte	0xe4
	.byte	0x56
	.byte	0xf6
	.byte	0x12
	.byte	0x8f
	.byte	0x78
	.byte	0x54
	.uleb128 0xd
	.4byte	0x46c
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x8
	.byte	0x94
	.byte	0x3
	.byte	0x23
	.byte	0xb2
	.byte	0x70
	.byte	0xed
	.byte	0xfc
	.byte	0x45
	.byte	0x79
	.byte	0x19
	.uleb128 0xd
	.4byte	0x481
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x8
	.byte	0xc2
	.byte	0x3
	.byte	0x80
	.byte	0xec
	.byte	0x79
	.byte	0x58
	.byte	0x41
	.byte	0xcb
	.byte	0xeb
	.byte	0x43
	.uleb128 0xd
	.4byte	0x496
	.uleb128 0x5
	.4byte	.LASF8
	.byte	0x8
	.byte	0xc7
	.byte	0x11
	.4byte	0x4b7
	.uleb128 0xa
	.byte	0x4
	.4byte	0x4bd
	.uleb128 0xb
	.4byte	0x4cd
	.uleb128 0xc
	.4byte	0x4cd
	.uleb128 0xc
	.4byte	0xaa
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x4a6
	.uleb128 0x7
	.4byte	.LASF367
	.byte	0x6
	.byte	0x50
	.byte	0x3
	.byte	0xec
	.byte	0x51
	.byte	0x23
	.byte	0x11
	.byte	0xca
	.byte	0xb4
	.byte	0xa7
	.byte	0x47
	.uleb128 0x7
	.4byte	.LASF368
	.byte	0x6
	.byte	0x59
	.byte	0x3
	.byte	0x6d
	.byte	0xf8
	.byte	0xd7
	.byte	0xfa
	.byte	0xa5
	.byte	0xc3
	.byte	0x45
	.byte	0x3e
	.uleb128 0x7
	.4byte	.LASF369
	.byte	0x6
	.byte	0x63
	.byte	0x3
	.byte	0xb6
	.byte	0x57
	.byte	0x29
	.byte	0x4a
	.byte	0x17
	.byte	0x76
	.byte	0xff
	.byte	0x30
	.uleb128 0x7
	.4byte	.LASF370
	.byte	0x6
	.byte	0x72
	.byte	0x3
	.byte	0xf7
	.byte	0xc5
	.byte	0xf3
	.byte	0xe8
	.byte	0xd1
	.byte	0xe5
	.byte	0xf6
	.byte	0x21
	.uleb128 0x7
	.4byte	.LASF371
	.byte	0x6
	.byte	0x7c
	.byte	0x3
	.byte	0xb
	.byte	0x37
	.byte	0xe4
	.byte	0xcc
	.byte	0xcb
	.byte	0xd8
	.byte	0xf0
	.byte	0x46
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0xb
	.byte	0x38
	.byte	0x3
	.byte	0xba
	.byte	0xfe
	.byte	0x51
	.byte	0x8d
	.byte	0x47
	.byte	0x78
	.byte	0xea
	.byte	0x9e
	.uleb128 0x7
	.4byte	.LASF372
	.byte	0xb
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
	.uleb128 0x7
	.4byte	.LASF373
	.byte	0xb
	.byte	0x5f
	.byte	0x3
	.byte	0x66
	.byte	0x9d
	.byte	0x46
	.byte	0xb2
	.byte	0xe6
	.byte	0x6
	.byte	0x5b
	.byte	0x4
	.uleb128 0xd
	.4byte	0x543
	.uleb128 0x2c
	.4byte	.LASF374
	.byte	0x13
	.2byte	0x124
	.byte	0x2e
	.4byte	0x533
	.uleb128 0x31
	.4byte	.LASF375
	.byte	0x14
	.byte	0x41
	.byte	0x23
	.4byte	0x553
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_log_SPI_logs_data_const
	.uleb128 0x32
	.4byte	0x558
	.byte	0x14
	.byte	0x41
	.2byte	0x14e
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_log_SPI_logs_data_dynamic
	.uleb128 0x9
	.byte	0x1
	.byte	0x2
	.4byte	.LASF13
	.uleb128 0x7
	.4byte	.LASF376
	.byte	0x7
	.byte	0x4a
	.byte	0x3
	.byte	0xad
	.byte	0xa6
	.byte	0x26
	.byte	0x4f
	.byte	0x76
	.byte	0xea
	.byte	0x44
	.byte	0xb3
	.uleb128 0x15
	.4byte	0x58d
	.4byte	0x5ad
	.uleb128 0x16
	.4byte	0x95
	.byte	0x1
	.byte	0
	.uleb128 0x33
	.4byte	.LASF382
	.byte	0x7
	.byte	0x4b
	.byte	0x1c
	.4byte	0x59d
	.uleb128 0x5
	.byte	0x3
	.4byte	m_cb
	.uleb128 0x34
	.4byte	.LASF377
	.byte	0x7
	.2byte	0x1b3
	.byte	0x6
	.4byte	.LFB265
	.4byte	.LFE265-.LFB265
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x34
	.4byte	.LASF378
	.byte	0x7
	.2byte	0x1a5
	.byte	0x6
	.4byte	.LFB264
	.4byte	.LFE264-.LFB264
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x35
	.4byte	.LASF386
	.byte	0x7
	.2byte	0x197
	.byte	0xd
	.4byte	.LFB263
	.4byte	.LFE263-.LFB263
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x61d
	.uleb128 0x36
	.4byte	.LASF379
	.byte	0x7
	.2byte	0x197
	.byte	0x28
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x36
	.4byte	.LASF380
	.byte	0x7
	.2byte	0x197
	.byte	0x45
	.4byte	0x61d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x58d
	.uleb128 0x37
	.4byte	.LASF391
	.byte	0x7
	.2byte	0x190
	.byte	0x6
	.4byte	.LFB262
	.4byte	.LFE262-.LFB262
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65b
	.uleb128 0x36
	.4byte	.LASF381
	.byte	0x7
	.2byte	0x190
	.byte	0x28
	.4byte	0x65b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x38
	.4byte	.LASF380
	.byte	0x7
	.2byte	0x192
	.byte	0x1b
	.4byte	0x61d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x467
	.uleb128 0xd
	.4byte	0x65b
	.uleb128 0x39
	.4byte	.LASF393
	.byte	0x7
	.2byte	0x15f
	.byte	0xc
	.4byte	0x405
	.4byte	.LFB261
	.4byte	.LFE261-.LFB261
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6db
	.uleb128 0x36
	.4byte	.LASF381
	.byte	0x7
	.2byte	0x15f
	.byte	0x33
	.4byte	0x661
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x36
	.4byte	.LASF383
	.byte	0x7
	.2byte	0x160
	.byte	0x37
	.4byte	0x6db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.4byte	.LASF384
	.byte	0x7
	.2byte	0x161
	.byte	0x23
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x38
	.4byte	.LASF380
	.byte	0x7
	.2byte	0x163
	.byte	0x1b
	.4byte	0x61d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x38
	.4byte	.LASF385
	.byte	0x7
	.2byte	0x168
	.byte	0x10
	.4byte	0x405
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3a
	.4byte	.LASF396
	.4byte	0x6f1
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x491
	.uleb128 0x15
	.4byte	0xba
	.4byte	0x6f1
	.uleb128 0x16
	.4byte	0x95
	.byte	0xd
	.byte	0
	.uleb128 0xd
	.4byte	0x6e1
	.uleb128 0x35
	.4byte	.LASF387
	.byte	0x7
	.2byte	0x12c
	.byte	0xd
	.4byte	.LFB260
	.4byte	.LFE260-.LFB260
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73e
	.uleb128 0x36
	.4byte	.LASF379
	.byte	0x7
	.2byte	0x12c
	.byte	0x25
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x36
	.4byte	.LASF380
	.byte	0x7
	.2byte	0x12d
	.byte	0x2c
	.4byte	0x61d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x36
	.4byte	.LASF383
	.byte	0x7
	.2byte	0x12e
	.byte	0x33
	.4byte	0x6db
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x3b
	.4byte	.LASF414
	.byte	0x7
	.byte	0xfb
	.byte	0xc
	.4byte	0x586
	.4byte	.LFB259
	.4byte	.LFE259-.LFB259
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x797
	.uleb128 0x3c
	.4byte	.LASF379
	.byte	0x7
	.byte	0xfb
	.byte	0x29
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3c
	.4byte	.LASF380
	.byte	0x7
	.byte	0xfb
	.byte	0x46
	.4byte	0x61d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x38
	.4byte	.LASF388
	.byte	0x7
	.2byte	0x100
	.byte	0x16
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x38
	.4byte	.LASF389
	.byte	0x7
	.2byte	0x10f
	.byte	0xc
	.4byte	0x253
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF390
	.byte	0x7
	.byte	0xe7
	.byte	0xd
	.4byte	.LFB258
	.4byte	.LFE258-.LFB258
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7bd
	.uleb128 0x3c
	.4byte	.LASF380
	.byte	0x7
	.byte	0xe7
	.byte	0x33
	.4byte	0x61d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF392
	.byte	0x7
	.byte	0xca
	.byte	0x6
	.4byte	.LFB257
	.4byte	.LFE257-.LFB257
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x801
	.uleb128 0x3c
	.4byte	.LASF381
	.byte	0x7
	.byte	0xca
	.byte	0x2f
	.4byte	0x661
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.4byte	.LASF380
	.byte	0x7
	.byte	0xcc
	.byte	0x1b
	.4byte	0x61d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x33
	.4byte	.LASF379
	.byte	0x7
	.byte	0xd4
	.byte	0x14
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x3f
	.4byte	.LASF394
	.byte	0x7
	.byte	0x4e
	.byte	0xc
	.4byte	0x405
	.4byte	.LFB256
	.4byte	.LFE256-.LFB256
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8be
	.uleb128 0x3c
	.4byte	.LASF381
	.byte	0x7
	.byte	0x4e
	.byte	0x33
	.4byte	0x661
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x3c
	.4byte	.LASF395
	.byte	0x7
	.byte	0x4f
	.byte	0x34
	.4byte	0x8be
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x3c
	.4byte	.LASF0
	.byte	0x7
	.byte	0x50
	.byte	0x31
	.4byte	0x4ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x3c
	.4byte	.LASF1
	.byte	0x7
	.byte	0x51
	.byte	0x21
	.4byte	0xaa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x33
	.4byte	.LASF380
	.byte	0x7
	.byte	0x54
	.byte	0x1b
	.4byte	0x61d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.4byte	.LASF385
	.byte	0x7
	.byte	0x55
	.byte	0x10
	.4byte	0x405
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x3a
	.4byte	.LASF396
	.4byte	0x6f1
	.uleb128 0x33
	.4byte	.LASF397
	.byte	0x7
	.byte	0x61
	.byte	0x25
	.4byte	0x8d4
	.uleb128 0x5
	.byte	0x3
	.4byte	irq_handlers.8738
	.uleb128 0x33
	.4byte	.LASF61
	.byte	0x7
	.byte	0x7a
	.byte	0xe
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x33
	.4byte	.LASF5
	.byte	0x7
	.byte	0x7b
	.byte	0xe
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x33
	.4byte	.LASF379
	.byte	0x7
	.byte	0xad
	.byte	0x14
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x47c
	.uleb128 0x15
	.4byte	0x2d8
	.4byte	0x8d4
	.uleb128 0x16
	.4byte	0x95
	.byte	0x1
	.byte	0
	.uleb128 0xd
	.4byte	0x8c4
	.uleb128 0x40
	.4byte	.LASF398
	.byte	0x6
	.2byte	0x2d5
	.byte	0x14
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x911
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x2d5
	.byte	0x3c
	.4byte	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x36
	.4byte	.LASF399
	.byte	0x6
	.2byte	0x2d5
	.byte	0x4c
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2bb
	.uleb128 0x40
	.4byte	.LASF400
	.byte	0x6
	.2byte	0x2cf
	.byte	0x14
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x94f
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x6
	.2byte	0x2cf
	.byte	0x3a
	.4byte	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x36
	.4byte	.LASF401
	.byte	0x6
	.2byte	0x2cf
	.byte	0x4a
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x35
	.4byte	.LASF402
	.byte	0x6
	.2byte	0x26d
	.byte	0x14
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x987
	.uleb128 0x36
	.4byte	.LASF403
	.byte	0x6
	.2byte	0x26d
	.byte	0x30
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x41
	.ascii	"reg\000"
	.byte	0x6
	.2byte	0x26f
	.byte	0x15
	.4byte	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x35
	.4byte	.LASF404
	.byte	0x6
	.2byte	0x265
	.byte	0x14
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9bf
	.uleb128 0x36
	.4byte	.LASF403
	.byte	0x6
	.2byte	0x265
	.byte	0x2e
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x41
	.ascii	"reg\000"
	.byte	0x6
	.2byte	0x267
	.byte	0x15
	.4byte	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x35
	.4byte	.LASF405
	.byte	0x6
	.2byte	0x219
	.byte	0x14
	.4byte	.LFB230
	.4byte	.LFE230-.LFB230
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e7
	.uleb128 0x36
	.4byte	.LASF403
	.byte	0x6
	.2byte	0x219
	.byte	0x32
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x35
	.4byte	.LASF406
	.byte	0x6
	.2byte	0x20d
	.byte	0x14
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1f
	.uleb128 0x36
	.4byte	.LASF403
	.byte	0x6
	.2byte	0x20d
	.byte	0x30
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x36
	.4byte	.LASF407
	.byte	0x6
	.2byte	0x20d
	.byte	0x50
	.4byte	0x4f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x35
	.4byte	.LASF408
	.byte	0x6
	.2byte	0x201
	.byte	0x14
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa47
	.uleb128 0x36
	.4byte	.LASF403
	.byte	0x6
	.2byte	0x201
	.byte	0x31
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x35
	.4byte	.LASF409
	.byte	0x6
	.2byte	0x1ef
	.byte	0x14
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xacf
	.uleb128 0x36
	.4byte	.LASF403
	.byte	0x6
	.2byte	0x1f0
	.byte	0xe
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x42
	.ascii	"dir\000"
	.byte	0x6
	.2byte	0x1f1
	.byte	0x18
	.4byte	0x4d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x36
	.4byte	.LASF410
	.byte	0x6
	.2byte	0x1f2
	.byte	0x1a
	.4byte	0x4e3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x36
	.4byte	.LASF411
	.byte	0x6
	.2byte	0x1f3
	.byte	0x19
	.4byte	0x4f3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -23
	.uleb128 0x36
	.4byte	.LASF412
	.byte	0x6
	.2byte	0x1f4
	.byte	0x1a
	.4byte	0x503
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x36
	.4byte	.LASF413
	.byte	0x6
	.2byte	0x1f5
	.byte	0x1a
	.4byte	0x513
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x41
	.ascii	"reg\000"
	.byte	0x6
	.2byte	0x1f7
	.byte	0x15
	.4byte	0x911
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x43
	.4byte	.LASF415
	.byte	0x6
	.2byte	0x1c5
	.byte	0x1f
	.4byte	0x911
	.4byte	.LFB224
	.4byte	.LFE224-.LFB224
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xafb
	.uleb128 0x36
	.4byte	.LASF416
	.byte	0x6
	.2byte	0x1c5
	.byte	0x43
	.4byte	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x40
	.4byte	.LASF417
	.byte	0x5
	.2byte	0x149
	.byte	0x14
	.4byte	.LFB223
	.4byte	.LFE223-.LFB223
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb53
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x149
	.byte	0x35
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x36
	.4byte	.LASF418
	.byte	0x5
	.2byte	0x14a
	.byte	0x37
	.4byte	0x431
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x36
	.4byte	.LASF419
	.byte	0x5
	.2byte	0x14b
	.byte	0x3c
	.4byte	0x441
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x38
	.4byte	.LASF420
	.byte	0x5
	.2byte	0x14d
	.byte	0xe
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x40
	.4byte	.LASF421
	.byte	0x5
	.2byte	0x143
	.byte	0x14
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8b
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x143
	.byte	0x39
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x36
	.4byte	.LASF63
	.byte	0x5
	.2byte	0x144
	.byte	0x40
	.4byte	0x421
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x43
	.4byte	.LASF422
	.byte	0x5
	.2byte	0x13e
	.byte	0x17
	.4byte	0x30
	.4byte	.LFB221
	.4byte	.LFE221-.LFB221
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb7
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x13e
	.byte	0x36
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x40
	.4byte	.LASF423
	.byte	0x5
	.2byte	0x139
	.byte	0x14
	.4byte	.LFB220
	.4byte	.LFE220-.LFB220
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbef
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x139
	.byte	0x33
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x36
	.4byte	.LASF267
	.byte	0x5
	.2byte	0x139
	.byte	0x42
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -5
	.byte	0
	.uleb128 0x40
	.4byte	.LASF424
	.byte	0x5
	.2byte	0x12f
	.byte	0x14
	.4byte	.LFB219
	.4byte	.LFE219-.LFB219
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc47
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x12f
	.byte	0x34
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x36
	.4byte	.LASF60
	.byte	0x5
	.2byte	0x130
	.byte	0x30
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x36
	.4byte	.LASF61
	.byte	0x5
	.2byte	0x131
	.byte	0x30
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x36
	.4byte	.LASF5
	.byte	0x5
	.2byte	0x132
	.byte	0x30
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x40
	.4byte	.LASF425
	.byte	0x5
	.2byte	0x12a
	.byte	0x14
	.4byte	.LFB218
	.4byte	.LFE218-.LFB218
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6f
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x12a
	.byte	0x33
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x40
	.4byte	.LASF426
	.byte	0x5
	.2byte	0x125
	.byte	0x14
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc97
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x125
	.byte	0x32
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x40
	.4byte	.LASF427
	.byte	0x5
	.2byte	0x119
	.byte	0x14
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xccf
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x119
	.byte	0x37
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x36
	.4byte	.LASF428
	.byte	0x5
	.2byte	0x11a
	.byte	0x33
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x40
	.4byte	.LASF429
	.byte	0x5
	.2byte	0x113
	.byte	0x14
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd07
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x113
	.byte	0x36
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x36
	.4byte	.LASF428
	.byte	0x5
	.2byte	0x114
	.byte	0x32
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x43
	.4byte	.LASF430
	.byte	0x5
	.2byte	0x107
	.byte	0x15
	.4byte	0x586
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd43
	.uleb128 0x36
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x107
	.byte	0x38
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x36
	.4byte	.LASF431
	.byte	0x5
	.2byte	0x108
	.byte	0x3a
	.4byte	0x411
	.uleb128 0x2
	.byte	0x91
	.sleb128 -6
	.byte	0
	.uleb128 0x44
	.4byte	.LASF432
	.byte	0x5
	.byte	0xfd
	.byte	0x14
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd88
	.uleb128 0x3c
	.4byte	.LASF72
	.byte	0x5
	.byte	0xfd
	.byte	0x37
	.4byte	0x451
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x3c
	.4byte	.LASF431
	.byte	0x5
	.byte	0xfe
	.byte	0x3a
	.4byte	0x411
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.uleb128 0x38
	.4byte	.LASF433
	.byte	0x5
	.2byte	0x102
	.byte	0x17
	.4byte	0x8b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x43
	.4byte	.LASF434
	.byte	0x4
	.2byte	0x3bb
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB195
	.4byte	.LFE195-.LFB195
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc2
	.uleb128 0x36
	.4byte	.LASF435
	.byte	0x4
	.2byte	0x3bb
	.byte	0x71
	.4byte	0xdc2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF436
	.byte	0x4
	.2byte	0x3bb
	.byte	0x86
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x8b
	.uleb128 0x43
	.4byte	.LASF437
	.byte	0x4
	.2byte	0x3a6
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB194
	.4byte	.LFE194-.LFB194
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdf3
	.uleb128 0x36
	.4byte	.LASF438
	.byte	0x4
	.2byte	0x3a6
	.byte	0x6e
	.4byte	0xdf3
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x33e
	.uleb128 0x45
	.4byte	.LASF480
	.byte	0x4
	.2byte	0x386
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB193
	.4byte	.LFE193-.LFB193
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x43
	.4byte	.LASF439
	.byte	0x4
	.2byte	0x379
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB192
	.4byte	.LFE192-.LFB192
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3b
	.uleb128 0x36
	.4byte	.LASF440
	.byte	0x4
	.2byte	0x379
	.byte	0x73
	.4byte	0x354
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF441
	.byte	0x4
	.2byte	0x363
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB191
	.4byte	.LFE191-.LFB191
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe93
	.uleb128 0x36
	.4byte	.LASF442
	.byte	0x4
	.2byte	0x363
	.byte	0x5b
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF443
	.byte	0x4
	.2byte	0x363
	.byte	0x70
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x36
	.4byte	.LASF444
	.byte	0x4
	.2byte	0x363
	.byte	0x85
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x36
	.4byte	.LASF445
	.byte	0x4
	.2byte	0x363
	.byte	0x9a
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x53
	.byte	0
	.uleb128 0x43
	.4byte	.LASF446
	.byte	0x4
	.2byte	0x34c
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB190
	.4byte	.LFE190-.LFB190
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xebe
	.uleb128 0x36
	.4byte	.LASF447
	.byte	0x4
	.2byte	0x34c
	.byte	0x5e
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF448
	.byte	0x4
	.2byte	0x32c
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB189
	.4byte	.LFE189-.LFB189
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf07
	.uleb128 0x36
	.4byte	.LASF449
	.byte	0x4
	.2byte	0x32c
	.byte	0x5b
	.4byte	0x308
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF450
	.byte	0x4
	.2byte	0x32c
	.byte	0x73
	.4byte	0xf07
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x36
	.4byte	.LASF451
	.byte	0x4
	.2byte	0x32c
	.byte	0x83
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x90
	.uleb128 0x43
	.4byte	.LASF452
	.byte	0x4
	.2byte	0x307
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB188
	.4byte	.LFE188-.LFB188
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf38
	.uleb128 0x36
	.4byte	.LASF453
	.byte	0x4
	.2byte	0x307
	.byte	0x57
	.4byte	0xf38
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x67
	.uleb128 0x43
	.4byte	.LASF454
	.byte	0x4
	.2byte	0x2fc
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB187
	.4byte	.LFE187-.LFB187
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf69
	.uleb128 0x36
	.4byte	.LASF455
	.byte	0x4
	.2byte	0x2fc
	.byte	0x57
	.4byte	0x308
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF456
	.byte	0x4
	.2byte	0x2f1
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfa3
	.uleb128 0x36
	.4byte	.LASF457
	.byte	0x4
	.2byte	0x2f1
	.byte	0x5f
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF458
	.byte	0x4
	.2byte	0x2f1
	.byte	0x87
	.4byte	0xfa3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x38d
	.uleb128 0x43
	.4byte	.LASF459
	.byte	0x4
	.2byte	0x2e0
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB185
	.4byte	.LFE185-.LFB185
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd4
	.uleb128 0x36
	.4byte	.LASF460
	.byte	0x4
	.2byte	0x2e0
	.byte	0x6b
	.4byte	0xfd4
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x37c
	.uleb128 0x43
	.4byte	.LASF461
	.byte	0x4
	.2byte	0x2d0
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB184
	.4byte	.LFE184-.LFB184
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1014
	.uleb128 0x36
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x2d0
	.byte	0x67
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF462
	.byte	0x4
	.2byte	0x2d0
	.byte	0x75
	.4byte	0x30
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x43
	.4byte	.LASF463
	.byte	0x4
	.2byte	0x2b1
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB183
	.4byte	.LFE183-.LFB183
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x104e
	.uleb128 0x36
	.4byte	.LASF464
	.byte	0x4
	.2byte	0x2b1
	.byte	0x5a
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF465
	.byte	0x4
	.2byte	0x2b1
	.byte	0x70
	.4byte	0x308
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x43
	.4byte	.LASF466
	.byte	0x4
	.2byte	0x2a7
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB182
	.4byte	.LFE182-.LFB182
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1088
	.uleb128 0x36
	.4byte	.LASF464
	.byte	0x4
	.2byte	0x2a7
	.byte	0x5d
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF467
	.byte	0x4
	.2byte	0x2a7
	.byte	0x71
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x43
	.4byte	.LASF468
	.byte	0x4
	.2byte	0x29d
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB181
	.4byte	.LFE181-.LFB181
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10b3
	.uleb128 0x36
	.4byte	.LASF464
	.byte	0x4
	.2byte	0x29d
	.byte	0x63
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF469
	.byte	0x4
	.2byte	0x294
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB180
	.4byte	.LFE180-.LFB180
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10de
	.uleb128 0x36
	.4byte	.LASF464
	.byte	0x4
	.2byte	0x294
	.byte	0x62
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF470
	.byte	0x4
	.2byte	0x28b
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB179
	.4byte	.LFE179-.LFB179
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1127
	.uleb128 0x36
	.4byte	.LASF471
	.byte	0x4
	.2byte	0x28b
	.byte	0x5f
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF472
	.byte	0x4
	.2byte	0x28b
	.byte	0x82
	.4byte	0x1127
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x36
	.4byte	.LASF473
	.byte	0x4
	.2byte	0x28b
	.byte	0xa6
	.4byte	0x1127
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x112e
	.uleb128 0x46
	.uleb128 0x8
	.4byte	0x112d
	.uleb128 0x43
	.4byte	.LASF474
	.byte	0x4
	.2byte	0x280
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB178
	.4byte	.LFE178-.LFB178
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x115e
	.uleb128 0x36
	.4byte	.LASF475
	.byte	0x4
	.2byte	0x280
	.byte	0x64
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF476
	.byte	0x4
	.2byte	0x278
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1189
	.uleb128 0x36
	.4byte	.LASF477
	.byte	0x4
	.2byte	0x278
	.byte	0x64
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF478
	.byte	0x4
	.2byte	0x270
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB176
	.4byte	.LFE176-.LFB176
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11b4
	.uleb128 0x36
	.4byte	.LASF479
	.byte	0x4
	.2byte	0x270
	.byte	0x66
	.4byte	0x308
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x45
	.4byte	.LASF481
	.byte	0x4
	.2byte	0x268
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB175
	.4byte	.LFE175-.LFB175
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x43
	.4byte	.LASF482
	.byte	0x4
	.2byte	0x24c
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB174
	.4byte	.LFE174-.LFB174
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f6
	.uleb128 0x36
	.4byte	.LASF483
	.byte	0x4
	.2byte	0x24c
	.byte	0x66
	.4byte	0x308
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x45
	.4byte	.LASF484
	.byte	0x4
	.2byte	0x241
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB173
	.4byte	.LFE173-.LFB173
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x45
	.4byte	.LASF485
	.byte	0x4
	.2byte	0x236
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB172
	.4byte	.LFE172-.LFB172
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x43
	.4byte	.LASF486
	.byte	0x4
	.2byte	0x229
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB171
	.4byte	.LFE171-.LFB171
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x124f
	.uleb128 0x36
	.4byte	.LASF487
	.byte	0x4
	.2byte	0x229
	.byte	0x60
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF488
	.byte	0x4
	.2byte	0x220
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB170
	.4byte	.LFE170-.LFB170
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1289
	.uleb128 0x36
	.4byte	.LASF489
	.byte	0x4
	.2byte	0x220
	.byte	0x60
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF490
	.byte	0x4
	.2byte	0x220
	.byte	0x77
	.4byte	0x308
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x43
	.4byte	.LASF491
	.byte	0x4
	.2byte	0x217
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB169
	.4byte	.LFE169-.LFB169
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12c3
	.uleb128 0x36
	.4byte	.LASF489
	.byte	0x4
	.2byte	0x217
	.byte	0x60
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF492
	.byte	0x4
	.2byte	0x217
	.byte	0x76
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x43
	.4byte	.LASF493
	.byte	0x4
	.2byte	0x20e
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB168
	.4byte	.LFE168-.LFB168
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12fd
	.uleb128 0x36
	.4byte	.LASF489
	.byte	0x4
	.2byte	0x20e
	.byte	0x60
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF492
	.byte	0x4
	.2byte	0x20e
	.byte	0x76
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x43
	.4byte	.LASF494
	.byte	0x4
	.2byte	0x205
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB167
	.4byte	.LFE167-.LFB167
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1337
	.uleb128 0x36
	.4byte	.LASF495
	.byte	0x4
	.2byte	0x205
	.byte	0x60
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF496
	.byte	0x4
	.2byte	0x205
	.byte	0x72
	.4byte	0x308
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x43
	.4byte	.LASF497
	.byte	0x4
	.2byte	0x1fc
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB166
	.4byte	.LFE166-.LFB166
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1371
	.uleb128 0x36
	.4byte	.LASF495
	.byte	0x4
	.2byte	0x1fc
	.byte	0x60
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF498
	.byte	0x4
	.2byte	0x1fc
	.byte	0x70
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x43
	.4byte	.LASF499
	.byte	0x4
	.2byte	0x1f3
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB165
	.4byte	.LFE165-.LFB165
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13ab
	.uleb128 0x36
	.4byte	.LASF495
	.byte	0x4
	.2byte	0x1f3
	.byte	0x60
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF500
	.byte	0x4
	.2byte	0x1f3
	.byte	0x70
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x43
	.4byte	.LASF501
	.byte	0x4
	.2byte	0x1e9
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB164
	.4byte	.LFE164-.LFB164
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13d6
	.uleb128 0x36
	.4byte	.LASF502
	.byte	0x4
	.2byte	0x1e9
	.byte	0x64
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF503
	.byte	0x4
	.2byte	0x1de
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB163
	.4byte	.LFE163-.LFB163
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1401
	.uleb128 0x36
	.4byte	.LASF504
	.byte	0x4
	.2byte	0x1de
	.byte	0x5d
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x45
	.4byte	.LASF505
	.byte	0x4
	.2byte	0x1d3
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB162
	.4byte	.LFE162-.LFB162
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x43
	.4byte	.LASF506
	.byte	0x4
	.2byte	0x1cd
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB161
	.4byte	.LFE161-.LFB161
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1443
	.uleb128 0x36
	.4byte	.LASF507
	.byte	0x4
	.2byte	0x1cd
	.byte	0x5b
	.4byte	0x30
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF508
	.byte	0x4
	.2byte	0x1c4
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB160
	.4byte	.LFE160-.LFB160
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x146e
	.uleb128 0x36
	.4byte	.LASF509
	.byte	0x4
	.2byte	0x1c4
	.byte	0x64
	.4byte	0x7f
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF510
	.byte	0x4
	.2byte	0x1bc
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB159
	.4byte	.LFE159-.LFB159
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1499
	.uleb128 0x36
	.4byte	.LASF511
	.byte	0x4
	.2byte	0x1bc
	.byte	0x66
	.4byte	0x308
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF512
	.byte	0x4
	.2byte	0x1b4
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB158
	.4byte	.LFE158-.LFB158
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14d3
	.uleb128 0x36
	.4byte	.LASF513
	.byte	0x4
	.2byte	0x1b4
	.byte	0x6a
	.4byte	0x31a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x36
	.4byte	.LASF514
	.byte	0x4
	.2byte	0x1b4
	.byte	0x7a
	.4byte	0x30
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x43
	.4byte	.LASF515
	.byte	0x4
	.2byte	0x1aa
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB157
	.4byte	.LFE157-.LFB157
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14fe
	.uleb128 0x36
	.4byte	.LASF516
	.byte	0x4
	.2byte	0x1aa
	.byte	0x73
	.4byte	0x31a
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF517
	.byte	0x4
	.2byte	0x1a2
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1529
	.uleb128 0x36
	.4byte	.LASF518
	.byte	0x4
	.2byte	0x1a2
	.byte	0x71
	.4byte	0x31a
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF519
	.byte	0x4
	.2byte	0x19a
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1554
	.uleb128 0x36
	.4byte	.LASF520
	.byte	0x4
	.2byte	0x19a
	.byte	0x60
	.4byte	0x1554
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x320
	.uleb128 0x43
	.4byte	.LASF521
	.byte	0x4
	.2byte	0x192
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1585
	.uleb128 0x36
	.4byte	.LASF520
	.byte	0x4
	.2byte	0x192
	.byte	0x60
	.4byte	0x1554
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x43
	.4byte	.LASF522
	.byte	0x4
	.2byte	0x189
	.byte	0x41
	.4byte	0x7f
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15b0
	.uleb128 0x36
	.4byte	.LASF520
	.byte	0x4
	.2byte	0x189
	.byte	0x5c
	.4byte	0x1554
	.uleb128 0x1
	.byte	0x50
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF523
	.byte	0x3
	.byte	0x8f
	.byte	0x14
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15d6
	.uleb128 0x3c
	.4byte	.LASF524
	.byte	0x3
	.byte	0x8f
	.byte	0x30
	.4byte	0x25f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF525
	.byte	0x3
	.byte	0x75
	.byte	0x14
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15fc
	.uleb128 0x3c
	.4byte	.LASF524
	.byte	0x3
	.byte	0x75
	.byte	0x2f
	.4byte	0x25f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF526
	.byte	0x3
	.byte	0x68
	.byte	0x14
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1631
	.uleb128 0x3c
	.4byte	.LASF524
	.byte	0x3
	.byte	0x68
	.byte	0x35
	.4byte	0x25f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x3c
	.4byte	.LASF115
	.byte	0x3
	.byte	0x69
	.byte	0x33
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x47
	.4byte	.LASF527
	.byte	0x2
	.byte	0xf3
	.byte	0x19
	.4byte	0x25f
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x166a
	.uleb128 0x3c
	.4byte	.LASF72
	.byte	0x2
	.byte	0xf3
	.byte	0x3a
	.4byte	0x166a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x33
	.4byte	.LASF524
	.byte	0x2
	.byte	0xf5
	.byte	0xd
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x112d
	.uleb128 0x40
	.4byte	.LASF528
	.byte	0x1
	.2byte	0x6a2
	.byte	0x14
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16a8
	.uleb128 0x36
	.4byte	.LASF529
	.byte	0x1
	.2byte	0x6a2
	.byte	0x2f
	.4byte	0x25f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x36
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x6a2
	.byte	0x3e
	.4byte	0x7f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x40
	.4byte	.LASF530
	.byte	0x1
	.2byte	0x688
	.byte	0x14
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16d0
	.uleb128 0x36
	.4byte	.LASF529
	.byte	0x1
	.2byte	0x688
	.byte	0x33
	.4byte	0x25f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x40
	.4byte	.LASF531
	.byte	0x1
	.2byte	0x665
	.byte	0x14
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16f8
	.uleb128 0x36
	.4byte	.LASF529
	.byte	0x1
	.2byte	0x665
	.byte	0x2e
	.4byte	0x25f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x48
	.4byte	.LASF535
	.byte	0x1
	.2byte	0x65a
	.byte	0x14
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x36
	.4byte	.LASF529
	.byte	0x1
	.2byte	0x65a
	.byte	0x2d
	.4byte	0x25f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
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
	.uleb128 0x5
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x22
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x20
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x2d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x5
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x34
	.uleb128 0x19
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3e
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
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
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
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uleb128 0x48
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x10d9
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x171d
	.4byte	0x2b
	.ascii	"NRFX_DRV_STATE_UNINITIALIZED\000"
	.4byte	0x31
	.ascii	"NRFX_DRV_STATE_INITIALIZED\000"
	.4byte	0x37
	.ascii	"NRFX_DRV_STATE_POWERED_ON\000"
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
	.ascii	"NRF_SPI_EVENT_READY\000"
	.4byte	0x2b
	.ascii	"NRF_SPI_INT_READY_MASK\000"
	.4byte	0x31
	.ascii	"NRF_SPI_ALL_INTS_MASK\000"
	.4byte	0x2b
	.ascii	"NRF_SPI_MODE_0\000"
	.4byte	0x31
	.ascii	"NRF_SPI_MODE_1\000"
	.4byte	0x37
	.ascii	"NRF_SPI_MODE_2\000"
	.4byte	0x3d
	.ascii	"NRF_SPI_MODE_3\000"
	.4byte	0x2b
	.ascii	"NRF_SPI_BIT_ORDER_MSB_FIRST\000"
	.4byte	0x31
	.ascii	"NRF_SPI_BIT_ORDER_LSB_FIRST\000"
	.4byte	0x2b
	.ascii	"NRFX_SPI0_INST_IDX\000"
	.4byte	0x31
	.ascii	"NRFX_SPI2_INST_IDX\000"
	.4byte	0x37
	.ascii	"NRFX_SPI_ENABLED_COUNT\000"
	.4byte	0x2b
	.ascii	"NRFX_SPI_EVENT_DONE\000"
	.4byte	0x2b
	.ascii	"NRF_GPIO_PIN_DIR_INPUT\000"
	.4byte	0x31
	.ascii	"NRF_GPIO_PIN_DIR_OUTPUT\000"
	.4byte	0x2b
	.ascii	"NRF_GPIO_PIN_INPUT_CONNECT\000"
	.4byte	0x31
	.ascii	"NRF_GPIO_PIN_INPUT_DISCONNECT\000"
	.4byte	0x2b
	.ascii	"NRF_GPIO_PIN_NOPULL\000"
	.4byte	0x31
	.ascii	"NRF_GPIO_PIN_PULLDOWN\000"
	.4byte	0x37
	.ascii	"NRF_GPIO_PIN_PULLUP\000"
	.4byte	0x2b
	.ascii	"NRF_GPIO_PIN_S0S1\000"
	.4byte	0x31
	.ascii	"NRF_GPIO_PIN_H0S1\000"
	.4byte	0x37
	.ascii	"NRF_GPIO_PIN_S0H1\000"
	.4byte	0x3d
	.ascii	"NRF_GPIO_PIN_H0H1\000"
	.4byte	0x43
	.ascii	"NRF_GPIO_PIN_D0S1\000"
	.4byte	0x49
	.ascii	"NRF_GPIO_PIN_D0H1\000"
	.4byte	0x4f
	.ascii	"NRF_GPIO_PIN_S0D1\000"
	.4byte	0x55
	.ascii	"NRF_GPIO_PIN_H0D1\000"
	.4byte	0x2b
	.ascii	"NRF_GPIO_PIN_NOSENSE\000"
	.4byte	0x31
	.ascii	"NRF_GPIO_PIN_SENSE_LOW\000"
	.4byte	0x37
	.ascii	"NRF_GPIO_PIN_SENSE_HIGH\000"
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
	.4byte	0x565
	.ascii	"m_nrf_log_SPI_logs_data_const\000"
	.4byte	0x577
	.ascii	"m_nrf_log_SPI_logs_data_dynamic\000"
	.4byte	0x5ad
	.ascii	"m_cb\000"
	.4byte	0x5ad
	.ascii	"m_cb\000"
	.4byte	0x577
	.ascii	"m_nrf_log_SPI_logs_data_dynamic\000"
	.4byte	0x5bf
	.ascii	"SPIM2_SPIS2_SPI2_IRQHandler\000"
	.4byte	0x5d2
	.ascii	"SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler\000"
	.4byte	0x5e5
	.ascii	"irq_handler\000"
	.4byte	0x623
	.ascii	"nrfx_spi_abort\000"
	.4byte	0x666
	.ascii	"nrfx_spi_xfer\000"
	.4byte	0x6f6
	.ascii	"spi_xfer\000"
	.4byte	0x73e
	.ascii	"transfer_byte\000"
	.4byte	0x797
	.ascii	"finish_transfer\000"
	.4byte	0x7bd
	.ascii	"nrfx_spi_uninit\000"
	.4byte	0x801
	.ascii	"nrfx_spi_init\000"
	.4byte	0x8d9
	.ascii	"nrf_gpio_port_out_clear\000"
	.4byte	0x917
	.ascii	"nrf_gpio_port_out_set\000"
	.4byte	0x94f
	.ascii	"nrf_gpio_pin_clear\000"
	.4byte	0x987
	.ascii	"nrf_gpio_pin_set\000"
	.4byte	0x9bf
	.ascii	"nrf_gpio_cfg_default\000"
	.4byte	0x9e7
	.ascii	"nrf_gpio_cfg_input\000"
	.4byte	0xa1f
	.ascii	"nrf_gpio_cfg_output\000"
	.4byte	0xa47
	.ascii	"nrf_gpio_cfg\000"
	.4byte	0xacf
	.ascii	"nrf_gpio_pin_port_decode\000"
	.4byte	0xafb
	.ascii	"nrf_spi_configure\000"
	.4byte	0xb53
	.ascii	"nrf_spi_frequency_set\000"
	.4byte	0xb8b
	.ascii	"nrf_spi_rxd_get\000"
	.4byte	0xbb7
	.ascii	"nrf_spi_txd_set\000"
	.4byte	0xbef
	.ascii	"nrf_spi_pins_set\000"
	.4byte	0xc47
	.ascii	"nrf_spi_disable\000"
	.4byte	0xc6f
	.ascii	"nrf_spi_enable\000"
	.4byte	0xc97
	.ascii	"nrf_spi_int_disable\000"
	.4byte	0xccf
	.ascii	"nrf_spi_int_enable\000"
	.4byte	0xd07
	.ascii	"nrf_spi_event_check\000"
	.4byte	0xd43
	.ascii	"nrf_spi_event_clear\000"
	.4byte	0xd88
	.ascii	"sd_protected_register_write\000"
	.4byte	0xdc8
	.ascii	"sd_radio_request\000"
	.4byte	0xdf9
	.ascii	"sd_radio_session_close\000"
	.4byte	0xe10
	.ascii	"sd_radio_session_open\000"
	.4byte	0xe3b
	.ascii	"sd_flash_protect\000"
	.4byte	0xe93
	.ascii	"sd_flash_page_erase\000"
	.4byte	0xebe
	.ascii	"sd_flash_write\000"
	.4byte	0xf0d
	.ascii	"sd_temp_get\000"
	.4byte	0xf3e
	.ascii	"sd_evt_get\000"
	.4byte	0xf69
	.ascii	"sd_ecb_blocks_encrypt\000"
	.4byte	0xfa9
	.ascii	"sd_ecb_block_encrypt\000"
	.4byte	0xfda
	.ascii	"sd_radio_notification_cfg_set\000"
	.4byte	0x1014
	.ascii	"sd_ppi_group_get\000"
	.4byte	0x104e
	.ascii	"sd_ppi_group_assign\000"
	.4byte	0x1088
	.ascii	"sd_ppi_group_task_disable\000"
	.4byte	0x10b3
	.ascii	"sd_ppi_group_task_enable\000"
	.4byte	0x10de
	.ascii	"sd_ppi_channel_assign\000"
	.4byte	0x1133
	.ascii	"sd_ppi_channel_enable_clr\000"
	.4byte	0x115e
	.ascii	"sd_ppi_channel_enable_set\000"
	.4byte	0x1189
	.ascii	"sd_ppi_channel_enable_get\000"
	.4byte	0x11b4
	.ascii	"sd_app_evt_wait\000"
	.4byte	0x11cb
	.ascii	"sd_clock_hfclk_is_running\000"
	.4byte	0x11f6
	.ascii	"sd_clock_hfclk_release\000"
	.4byte	0x120d
	.ascii	"sd_clock_hfclk_request\000"
	.4byte	0x1224
	.ascii	"sd_power_dcdc_mode_set\000"
	.4byte	0x124f
	.ascii	"sd_power_gpregret_get\000"
	.4byte	0x1289
	.ascii	"sd_power_gpregret_clr\000"
	.4byte	0x12c3
	.ascii	"sd_power_gpregret_set\000"
	.4byte	0x12fd
	.ascii	"sd_power_ram_power_get\000"
	.4byte	0x1337
	.ascii	"sd_power_ram_power_clr\000"
	.4byte	0x1371
	.ascii	"sd_power_ram_power_set\000"
	.4byte	0x13ab
	.ascii	"sd_power_pof_threshold_set\000"
	.4byte	0x13d6
	.ascii	"sd_power_pof_enable\000"
	.4byte	0x1401
	.ascii	"sd_power_system_off\000"
	.4byte	0x1418
	.ascii	"sd_power_mode_set\000"
	.4byte	0x1443
	.ascii	"sd_power_reset_reason_clr\000"
	.4byte	0x146e
	.ascii	"sd_power_reset_reason_get\000"
	.4byte	0x1499
	.ascii	"sd_rand_application_vector_get\000"
	.4byte	0x14d3
	.ascii	"sd_rand_application_bytes_available_get\000"
	.4byte	0x14fe
	.ascii	"sd_rand_application_pool_capacity_get\000"
	.4byte	0x1529
	.ascii	"sd_mutex_release\000"
	.4byte	0x155a
	.ascii	"sd_mutex_acquire\000"
	.4byte	0x1585
	.ascii	"sd_mutex_new\000"
	.4byte	0x15b0
	.ascii	"_NRFX_IRQ_DISABLE\000"
	.4byte	0x15d6
	.ascii	"_NRFX_IRQ_ENABLE\000"
	.4byte	0x15fc
	.ascii	"_NRFX_IRQ_PRIORITY_SET\000"
	.4byte	0x1631
	.ascii	"nrfx_get_irq_number\000"
	.4byte	0x1670
	.ascii	"NVIC_SetPriority\000"
	.4byte	0x16a8
	.ascii	"NVIC_ClearPendingIRQ\000"
	.4byte	0x16d0
	.ascii	"NVIC_DisableIRQ\000"
	.4byte	0x16f8
	.ascii	"NVIC_EnableIRQ\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x488
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x171d
	.4byte	0x29
	.ascii	"signed char\000"
	.4byte	0x41
	.ascii	"unsigned char\000"
	.4byte	0x30
	.ascii	"uint8_t\000"
	.4byte	0x4d
	.ascii	"short int\000"
	.4byte	0x60
	.ascii	"short unsigned int\000"
	.4byte	0x54
	.ascii	"uint16_t\000"
	.4byte	0x78
	.ascii	"int\000"
	.4byte	0x67
	.ascii	"int32_t\000"
	.4byte	0x95
	.ascii	"unsigned int\000"
	.4byte	0x7f
	.ascii	"uint32_t\000"
	.4byte	0x9c
	.ascii	"long long int\000"
	.4byte	0xa3
	.ascii	"long long unsigned int\000"
	.4byte	0xac
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xb3
	.ascii	"char\000"
	.4byte	0xbf
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xd4
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x22f
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x253
	.ascii	"size_t\000"
	.4byte	0x25f
	.ascii	"IRQn_Type\000"
	.4byte	0x26f
	.ascii	"NVIC_Type\000"
	.4byte	0x280
	.ascii	"SCB_Type\000"
	.4byte	0x2aa
	.ascii	"NRF_SPI_Type\000"
	.4byte	0x2bb
	.ascii	"NRF_GPIO_Type\000"
	.4byte	0x2cc
	.ascii	"nrfx_irq_handler_t\000"
	.4byte	0xb
	.ascii	"NRF_SOC_SVCS\000"
	.4byte	0x320
	.ascii	"nrf_mutex_t\000"
	.4byte	0x32d
	.ascii	"nrf_radio_request_t\000"
	.4byte	0x343
	.ascii	"nrf_radio_signal_callback_return_param_t\000"
	.4byte	0x354
	.ascii	"nrf_radio_signal_callback_t\000"
	.4byte	0x37c
	.ascii	"nrf_ecb_hal_data_t\000"
	.4byte	0x38d
	.ascii	"nrf_ecb_hal_data_block_t\000"
	.4byte	0x39e
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x3ba
	.ascii	"FILE\000"
	.4byte	0x3f9
	.ascii	"ret_code_t\000"
	.4byte	0x405
	.ascii	"nrfx_err_t\000"
	.4byte	0x411
	.ascii	"nrf_spi_event_t\000"
	.4byte	0x421
	.ascii	"nrf_spi_frequency_t\000"
	.4byte	0x431
	.ascii	"nrf_spi_mode_t\000"
	.4byte	0x441
	.ascii	"nrf_spi_bit_order_t\000"
	.4byte	0x457
	.ascii	"nrfx_spi_t\000"
	.4byte	0x46c
	.ascii	"nrfx_spi_config_t\000"
	.4byte	0x481
	.ascii	"nrfx_spi_xfer_desc_t\000"
	.4byte	0x496
	.ascii	"nrfx_spi_evt_t\000"
	.4byte	0x4ab
	.ascii	"nrfx_spi_evt_handler_t\000"
	.4byte	0x4d3
	.ascii	"nrf_gpio_pin_dir_t\000"
	.4byte	0x4e3
	.ascii	"nrf_gpio_pin_input_t\000"
	.4byte	0x4f3
	.ascii	"nrf_gpio_pin_pull_t\000"
	.4byte	0x503
	.ascii	"nrf_gpio_pin_drive_t\000"
	.4byte	0x513
	.ascii	"nrf_gpio_pin_sense_t\000"
	.4byte	0x523
	.ascii	"nrf_log_severity_t\000"
	.4byte	0x533
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x543
	.ascii	"nrf_log_module_const_data_t\000"
	.4byte	0x586
	.ascii	"_Bool\000"
	.4byte	0x58d
	.ascii	"spi_control_block_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x29c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
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
	.4byte	.LFB211
	.4byte	.LFE211-.LFB211
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.4byte	.LFB214
	.4byte	.LFE214-.LFB214
	.4byte	.LFB215
	.4byte	.LFE215-.LFB215
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
	.4byte	.LFB227
	.4byte	.LFE227-.LFB227
	.4byte	.LFB228
	.4byte	.LFE228-.LFB228
	.4byte	.LFB229
	.4byte	.LFE229-.LFB229
	.4byte	.LFB230
	.4byte	.LFE230-.LFB230
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.4byte	.LFB250
	.4byte	.LFE250-.LFB250
	.4byte	.LFB251
	.4byte	.LFE251-.LFB251
	.4byte	.LFB256
	.4byte	.LFE256-.LFB256
	.4byte	.LFB257
	.4byte	.LFE257-.LFB257
	.4byte	.LFB258
	.4byte	.LFE258-.LFB258
	.4byte	.LFB259
	.4byte	.LFE259-.LFB259
	.4byte	.LFB260
	.4byte	.LFE260-.LFB260
	.4byte	.LFB261
	.4byte	.LFE261-.LFB261
	.4byte	.LFB262
	.4byte	.LFE262-.LFB262
	.4byte	.LFB263
	.4byte	.LFE263-.LFB263
	.4byte	.LFB264
	.4byte	.LFE264-.LFB264
	.4byte	.LFB265
	.4byte	.LFE265-.LFB265
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LFB125
	.4byte	.LFE125
	.4byte	.LFB146
	.4byte	.LFE146
	.4byte	.LFB147
	.4byte	.LFE147
	.4byte	.LFB149
	.4byte	.LFE149
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
	.4byte	.LFB211
	.4byte	.LFE211
	.4byte	.LFB212
	.4byte	.LFE212
	.4byte	.LFB214
	.4byte	.LFE214
	.4byte	.LFB215
	.4byte	.LFE215
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
	.4byte	.LFB227
	.4byte	.LFE227
	.4byte	.LFB228
	.4byte	.LFE228
	.4byte	.LFB229
	.4byte	.LFE229
	.4byte	.LFB230
	.4byte	.LFE230
	.4byte	.LFB236
	.4byte	.LFE236
	.4byte	.LFB237
	.4byte	.LFE237
	.4byte	.LFB250
	.4byte	.LFE250
	.4byte	.LFB251
	.4byte	.LFE251
	.4byte	.LFB256
	.4byte	.LFE256
	.4byte	.LFB257
	.4byte	.LFE257
	.4byte	.LFB258
	.4byte	.LFE258
	.4byte	.LFB259
	.4byte	.LFE259
	.4byte	.LFB260
	.4byte	.LFE260
	.4byte	.LFB261
	.4byte	.LFE261
	.4byte	.LFB262
	.4byte	.LFE262
	.4byte	.LFB263
	.4byte	.LFE263
	.4byte	.LFB264
	.4byte	.LFE264
	.4byte	.LFB265
	.4byte	.LFE265
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x7
	.file 21 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x15
	.file 22 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x16
	.file 23 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x9
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.file 24 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x18
	.byte	0x4
	.file 25 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x19
	.byte	0x3
	.uleb128 0x54
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x1
	.file 26 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x1a
	.file 27 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x1b
	.byte	0x4
	.byte	0x4
	.file 28 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x1c
	.byte	0x4
	.file 29 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x1d
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0xf
	.byte	0x4
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
	.file 34 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x22
	.file 35 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x3
	.file 36 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x24
	.byte	0x4
	.file 37 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x25
	.file 38 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x26
	.byte	0x4
	.byte	0x4
	.file 39 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x27
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x21
	.byte	0x4
	.file 40 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x28
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb6
	.uleb128 0x28
	.byte	0x4
	.file 41 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0xb7
	.uleb128 0x29
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x4
	.file 42 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x2a
	.byte	0x4
	.file 43 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x2b
	.byte	0x4
	.file 44 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x2c
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x27
	.byte	0x4
	.file 45 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x2d
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x11
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x12
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x2b
	.byte	0x4
	.byte	0x4
	.file 46 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 47 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x2f
	.byte	0x4
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x12
	.byte	0x4
	.file 48 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x30
	.file 49 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x31
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 50 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x32
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.file 51 "C:\\nRF5_SDK_15.0.0_a53641a\\modules\\nrfx\\drivers\\src\\prs/nrfx_prs.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x33
	.byte	0x4
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x14
	.file 52 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x34
	.file 53 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x35
	.file 54 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x36
	.byte	0x4
	.file 55 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x37
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x10
	.byte	0x4
	.file 56 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x38
	.byte	0x4
	.byte	0x4
	.file 57 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x39
	.byte	0x4
	.file 58 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x3a
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x13
	.file 59 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x3b
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF300:
	.ascii	"int_p_sep_by_space\000"
.LASF206:
	.ascii	"RSERVED1\000"
.LASF419:
	.ascii	"spi_bit_order\000"
.LASF535:
	.ascii	"NVIC_EnableIRQ\000"
.LASF12:
	.ascii	"size_t\000"
.LASF62:
	.ascii	"irq_priority\000"
.LASF263:
	.ascii	"__locale_s\000"
.LASF439:
	.ascii	"sd_radio_session_open\000"
.LASF37:
	.ascii	"NRF_GPIO_PIN_H0S1\000"
.LASF270:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF483:
	.ascii	"p_is_running\000"
.LASF503:
	.ascii	"sd_power_pof_enable\000"
.LASF280:
	.ascii	"decimal_point\000"
.LASF427:
	.ascii	"nrf_spi_int_disable\000"
.LASF236:
	.ascii	"CCM_AAR_IRQn\000"
.LASF316:
	.ascii	"int32_t\000"
.LASF104:
	.ascii	"request\000"
.LASF18:
	.ascii	"debug_color_id\000"
.LASF387:
	.ascii	"spi_xfer\000"
.LASF374:
	.ascii	"m_nrf_log_SPI_logs_data_dynamic\000"
.LASF354:
	.ascii	"nrf_nvic_state_t\000"
.LASF465:
	.ascii	"p_channel_msk\000"
.LASF70:
	.ascii	"NRFX_SPI2_INST_IDX\000"
.LASF396:
	.ascii	"__func__\000"
.LASF310:
	.ascii	"time_format\000"
.LASF328:
	.ascii	"__RAL_data_utf8_period\000"
.LASF192:
	.ascii	"VTOR\000"
.LASF499:
	.ascii	"sd_power_ram_power_set\000"
.LASF161:
	.ascii	"SVC_SOC_LAST\000"
.LASF256:
	.ascii	"I2S_IRQn\000"
.LASF497:
	.ascii	"sd_power_ram_power_clr\000"
.LASF225:
	.ascii	"SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQn\000"
.LASF420:
	.ascii	"config\000"
.LASF2:
	.ascii	"state\000"
.LASF415:
	.ascii	"nrf_gpio_pin_port_decode\000"
.LASF115:
	.ascii	"priority\000"
.LASF380:
	.ascii	"p_cb\000"
.LASF176:
	.ascii	"INTENSET\000"
.LASF177:
	.ascii	"INTENCLR\000"
.LASF42:
	.ascii	"NRF_GPIO_PIN_S0D1\000"
.LASF413:
	.ascii	"sense\000"
.LASF529:
	.ascii	"IRQn\000"
.LASF51:
	.ascii	"type\000"
.LASF294:
	.ascii	"n_cs_precedes\000"
.LASF135:
	.ascii	"SD_RAND_APPLICATION_VECTOR_GET\000"
.LASF197:
	.ascii	"DFSR\000"
.LASF370:
	.ascii	"nrf_gpio_pin_drive_t\000"
.LASF388:
	.ascii	"rx_data\000"
.LASF346:
	.ascii	"__StackLimit\000"
.LASF137:
	.ascii	"SD_POWER_SYSTEM_OFF\000"
.LASF159:
	.ascii	"SD_EVT_GET\000"
.LASF434:
	.ascii	"sd_protected_register_write\000"
.LASF83:
	.ascii	"NRF_SPI_FREQ_500K\000"
.LASF208:
	.ascii	"ICPR\000"
.LASF152:
	.ascii	"SD_CLOCK_HFCLK_IS_RUNNING\000"
.LASF379:
	.ascii	"p_spi\000"
.LASF231:
	.ascii	"TIMER2_IRQn\000"
.LASF81:
	.ascii	"NRF_SPI_FREQ_125K\000"
.LASF123:
	.ascii	"SD_PPI_GROUP_TASK_DISABLE\000"
.LASF288:
	.ascii	"positive_sign\000"
.LASF375:
	.ascii	"m_nrf_log_SPI_logs_data_const\000"
.LASF401:
	.ascii	"set_mask\000"
.LASF232:
	.ascii	"RTC0_IRQn\000"
.LASF109:
	.ascii	"request_type\000"
.LASF193:
	.ascii	"AIRCR\000"
.LASF309:
	.ascii	"date_format\000"
.LASF94:
	.ascii	"p_key\000"
.LASF224:
	.ascii	"SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQn\000"
.LASF285:
	.ascii	"mon_decimal_point\000"
.LASF279:
	.ascii	"long int\000"
.LASF107:
	.ascii	"p_next\000"
.LASF255:
	.ascii	"RTC2_IRQn\000"
.LASF389:
	.ascii	"bytes_used\000"
.LASF262:
	.ascii	"__RAL_error_decoder_s\000"
.LASF336:
	.ascii	"__RAL_error_decoder_t\000"
.LASF448:
	.ascii	"sd_flash_write\000"
.LASF190:
	.ascii	"CPUID\000"
.LASF154:
	.ascii	"SD_ECB_BLOCK_ENCRYPT\000"
.LASF319:
	.ascii	"__RAL_global_locale\000"
.LASF99:
	.ascii	"ciphertext\000"
.LASF463:
	.ascii	"sd_ppi_group_get\000"
.LASF298:
	.ascii	"int_p_cs_precedes\000"
.LASF386:
	.ascii	"irq_handler\000"
.LASF56:
	.ascii	"p_tx_buffer\000"
.LASF228:
	.ascii	"SAADC_IRQn\000"
.LASF299:
	.ascii	"int_n_cs_precedes\000"
.LASF450:
	.ascii	"p_src\000"
.LASF353:
	.ascii	"nrf_ecb_hal_data_block_t\000"
.LASF432:
	.ascii	"nrf_spi_event_clear\000"
.LASF155:
	.ascii	"SD_ECB_BLOCKS_ENCRYPT\000"
.LASF534:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF526:
	.ascii	"_NRFX_IRQ_PRIORITY_SET\000"
.LASF9:
	.ascii	"nrfx_spi_evt_t\000"
.LASF454:
	.ascii	"sd_evt_get\000"
.LASF98:
	.ascii	"cleartext\000"
.LASF156:
	.ascii	"SD_RADIO_SESSION_OPEN\000"
.LASF488:
	.ascii	"sd_power_gpregret_get\000"
.LASF306:
	.ascii	"month_names\000"
.LASF449:
	.ascii	"p_dst\000"
.LASF472:
	.ascii	"evt_endpoint\000"
.LASF75:
	.ascii	"NRF_SPI_BIT_ORDER_MSB_FIRST\000"
.LASF476:
	.ascii	"sd_ppi_channel_enable_set\000"
.LASF444:
	.ascii	"block_cfg2\000"
.LASF278:
	.ascii	"__mbtowc\000"
.LASF474:
	.ascii	"sd_ppi_channel_enable_clr\000"
.LASF191:
	.ascii	"ICSR\000"
.LASF163:
	.ascii	"NRFX_DRV_STATE_UNINITIALIZED\000"
.LASF258:
	.ascii	"signed char\000"
.LASF441:
	.ascii	"sd_flash_protect\000"
.LASF11:
	.ascii	"uint8_t\000"
.LASF226:
	.ascii	"NFCT_IRQn\000"
.LASF92:
	.ascii	"__cr_flag\000"
.LASF249:
	.ascii	"PWM0_IRQn\000"
.LASF138:
	.ascii	"SD_POWER_RESET_REASON_GET\000"
.LASF7:
	.ascii	"abort\000"
.LASF468:
	.ascii	"sd_ppi_group_task_disable\000"
.LASF395:
	.ascii	"p_config\000"
.LASF524:
	.ascii	"irq_number\000"
.LASF66:
	.ascii	"nrf_spi_frequency_t\000"
.LASF430:
	.ascii	"nrf_spi_event_check\000"
.LASF204:
	.ascii	"ISER\000"
.LASF512:
	.ascii	"sd_rand_application_vector_get\000"
.LASF297:
	.ascii	"n_sign_posn\000"
.LASF254:
	.ascii	"SPIM2_SPIS2_SPI2_IRQn\000"
.LASF105:
	.ascii	"extend\000"
.LASF166:
	.ascii	"RESERVED0\000"
.LASF173:
	.ascii	"RESERVED1\000"
.LASF14:
	.ascii	"unsigned char\000"
.LASF180:
	.ascii	"RESERVED3\000"
.LASF182:
	.ascii	"RESERVED4\000"
.LASF183:
	.ascii	"RESERVED5\000"
.LASF185:
	.ascii	"RESERVED6\000"
.LASF510:
	.ascii	"sd_power_reset_reason_get\000"
.LASF295:
	.ascii	"n_sep_by_space\000"
.LASF505:
	.ascii	"sd_power_system_off\000"
.LASF60:
	.ascii	"sck_pin\000"
.LASF428:
	.ascii	"spi_int_mask\000"
.LASF209:
	.ascii	"IABR\000"
.LASF446:
	.ascii	"sd_flash_page_erase\000"
.LASF52:
	.ascii	"xfer_desc\000"
.LASF435:
	.ascii	"p_register\000"
.LASF330:
	.ascii	"__RAL_data_utf8_space\000"
.LASF381:
	.ascii	"p_instance\000"
.LASF119:
	.ascii	"SD_PPI_CHANNEL_ENABLE_SET\000"
.LASF440:
	.ascii	"p_radio_signal_callback\000"
.LASF164:
	.ascii	"NRFX_DRV_STATE_INITIALIZED\000"
.LASF120:
	.ascii	"SD_PPI_CHANNEL_ENABLE_CLR\000"
.LASF13:
	.ascii	"_Bool\000"
.LASF160:
	.ascii	"SD_TEMP_GET\000"
.LASF418:
	.ascii	"spi_mode\000"
.LASF369:
	.ascii	"nrf_gpio_pin_pull_t\000"
.LASF245:
	.ascii	"SWI4_EGU4_IRQn\000"
.LASF406:
	.ascii	"nrf_gpio_cfg_input\000"
.LASF385:
	.ascii	"err_code\000"
.LASF22:
	.ascii	"char\000"
.LASF405:
	.ascii	"nrf_gpio_cfg_default\000"
.LASF467:
	.ascii	"channel_msk\000"
.LASF40:
	.ascii	"NRF_GPIO_PIN_D0S1\000"
.LASF486:
	.ascii	"sd_power_dcdc_mode_set\000"
.LASF340:
	.ascii	"SCB_Type\000"
.LASF78:
	.ascii	"NRF_SPI_MODE_1\000"
.LASF79:
	.ascii	"NRF_SPI_MODE_2\000"
.LASF398:
	.ascii	"nrf_gpio_port_out_clear\000"
.LASF144:
	.ascii	"SD_POWER_RAM_POWER_GET\000"
.LASF352:
	.ascii	"nrf_ecb_hal_data_t\000"
.LASF89:
	.ascii	"NRF_SPI_ALL_INTS_MASK\000"
.LASF447:
	.ascii	"page_number\000"
.LASF509:
	.ascii	"reset_reason_clr_msk\000"
.LASF77:
	.ascii	"NRF_SPI_MODE_0\000"
.LASF357:
	.ascii	"timeval\000"
.LASF178:
	.ascii	"RESERVED2\000"
.LASF422:
	.ascii	"nrf_spi_rxd_get\000"
.LASF462:
	.ascii	"distance\000"
.LASF196:
	.ascii	"HFSR\000"
.LASF455:
	.ascii	"p_evt_id\000"
.LASF482:
	.ascii	"sd_clock_hfclk_is_running\000"
.LASF327:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF384:
	.ascii	"flags\000"
.LASF80:
	.ascii	"NRF_SPI_MODE_3\000"
.LASF111:
	.ascii	"normal\000"
.LASF391:
	.ascii	"nrfx_spi_abort\000"
.LASF27:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF469:
	.ascii	"sd_ppi_group_task_enable\000"
.LASF276:
	.ascii	"__towlower\000"
.LASF359:
	.ascii	"stdin\000"
.LASF425:
	.ascii	"nrf_spi_disable\000"
.LASF289:
	.ascii	"negative_sign\000"
.LASF207:
	.ascii	"ISPR\000"
.LASF165:
	.ascii	"NRFX_DRV_STATE_POWERED_ON\000"
.LASF355:
	.ascii	"nrf_nvic_state\000"
.LASF259:
	.ascii	"decode\000"
.LASF477:
	.ascii	"channel_enable_set_msk\000"
.LASF30:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF274:
	.ascii	"__iswctype\000"
.LASF410:
	.ascii	"input\000"
.LASF522:
	.ascii	"sd_mutex_new\000"
.LASF194:
	.ascii	"SHCSR\000"
.LASF246:
	.ascii	"SWI5_EGU5_IRQn\000"
.LASF301:
	.ascii	"int_n_sep_by_space\000"
.LASF210:
	.ascii	"STIR\000"
.LASF362:
	.ascii	"ret_code_t\000"
.LASF133:
	.ascii	"SD_RAND_APPLICATION_POOL_CAPACITY_GET\000"
.LASF84:
	.ascii	"NRF_SPI_FREQ_1M\000"
.LASF531:
	.ascii	"NVIC_DisableIRQ\000"
.LASF321:
	.ascii	"__RAL_codeset_ascii\000"
.LASF4:
	.ascii	"ss_pin\000"
.LASF88:
	.ascii	"NRF_SPI_INT_READY_MASK\000"
.LASF132:
	.ascii	"SD_MUTEX_RELEASE\000"
.LASF162:
	.ascii	"NRF_SOC_SVCS\000"
.LASF265:
	.ascii	"__RAL_locale_t\000"
.LASF383:
	.ascii	"p_xfer_desc\000"
.LASF90:
	.ascii	"NRF_SPI_EVENT_READY\000"
.LASF500:
	.ascii	"ram_powerset\000"
.LASF504:
	.ascii	"pof_enable\000"
.LASF307:
	.ascii	"abbrev_month_names\000"
.LASF525:
	.ascii	"_NRFX_IRQ_ENABLE\000"
.LASF485:
	.ascii	"sd_clock_hfclk_request\000"
.LASF366:
	.ascii	"nrfx_spi_config_t\000"
.LASF34:
	.ascii	"NRF_GPIO_PIN_SENSE_LOW\000"
.LASF268:
	.ascii	"codeset\000"
.LASF456:
	.ascii	"sd_ecb_blocks_encrypt\000"
.LASF85:
	.ascii	"NRF_SPI_FREQ_2M\000"
.LASF495:
	.ascii	"index\000"
.LASF241:
	.ascii	"SWI0_EGU0_IRQn\000"
.LASF453:
	.ascii	"p_temp\000"
.LASF116:
	.ascii	"distance_us\000"
.LASF76:
	.ascii	"NRF_SPI_BIT_ORDER_LSB_FIRST\000"
.LASF69:
	.ascii	"NRFX_SPI0_INST_IDX\000"
.LASF186:
	.ascii	"CONFIG\000"
.LASF48:
	.ascii	"NRF_GPIO_PIN_INPUT_DISCONNECT\000"
.LASF314:
	.ascii	"__wchar\000"
.LASF337:
	.ascii	"__RAL_error_decoder_head\000"
.LASF399:
	.ascii	"clr_mask\000"
.LASF269:
	.ascii	"__RAL_locale_data_t\000"
.LASF214:
	.ascii	"MemoryManagement_IRQn\000"
.LASF261:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF351:
	.ascii	"nrf_radio_signal_callback_t\000"
.LASF326:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF442:
	.ascii	"block_cfg0\000"
.LASF443:
	.ascii	"block_cfg1\000"
.LASF342:
	.ascii	"SystemCoreClock\000"
.LASF445:
	.ascii	"block_cfg3\000"
.LASF189:
	.ascii	"MISO\000"
.LASF287:
	.ascii	"mon_grouping\000"
.LASF338:
	.ascii	"IRQn_Type\000"
.LASF345:
	.ascii	"__StackTop\000"
.LASF253:
	.ascii	"PWM2_IRQn\000"
.LASF408:
	.ascii	"nrf_gpio_cfg_output\000"
.LASF402:
	.ascii	"nrf_gpio_pin_clear\000"
.LASF151:
	.ascii	"SD_CLOCK_HFCLK_RELEASE\000"
.LASF308:
	.ascii	"am_pm_indicator\000"
.LASF460:
	.ascii	"p_ecb_data\000"
.LASF293:
	.ascii	"p_sep_by_space\000"
.LASF131:
	.ascii	"SD_MUTEX_ACQUIRE\000"
.LASF86:
	.ascii	"NRF_SPI_FREQ_4M\000"
.LASF457:
	.ascii	"block_count\000"
.LASF101:
	.ascii	"soc_ecb_cleartext_t\000"
.LASF237:
	.ascii	"WDT_IRQn\000"
.LASF458:
	.ascii	"p_data_blocks\000"
.LASF518:
	.ascii	"p_pool_capacity\000"
.LASF147:
	.ascii	"SD_POWER_GPREGRET_GET\000"
.LASF169:
	.ascii	"DIRSET\000"
.LASF23:
	.ascii	"module_id\000"
.LASF65:
	.ascii	"bit_order\000"
.LASF59:
	.ascii	"rx_length\000"
.LASF215:
	.ascii	"BusFault_IRQn\000"
.LASF67:
	.ascii	"nrf_spi_mode_t\000"
.LASF96:
	.ascii	"p_ciphertext\000"
.LASF334:
	.ascii	"__user_set_time_of_day\000"
.LASF234:
	.ascii	"RNG_IRQn\000"
.LASF286:
	.ascii	"mon_thousands_sep\000"
.LASF461:
	.ascii	"sd_radio_notification_cfg_set\000"
.LASF230:
	.ascii	"TIMER1_IRQn\000"
.LASF317:
	.ascii	"long long int\000"
.LASF416:
	.ascii	"p_pin\000"
.LASF312:
	.ascii	"__mbstate_s\000"
.LASF181:
	.ascii	"PSEL\000"
.LASF507:
	.ascii	"power_mode\000"
.LASF480:
	.ascii	"sd_radio_session_close\000"
.LASF222:
	.ascii	"RADIO_IRQn\000"
.LASF217:
	.ascii	"SVCall_IRQn\000"
.LASF35:
	.ascii	"NRF_GPIO_PIN_SENSE_HIGH\000"
.LASF73:
	.ascii	"drv_inst_idx\000"
.LASF43:
	.ascii	"NRF_GPIO_PIN_H0D1\000"
.LASF114:
	.ascii	"hfclk\000"
.LASF29:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF238:
	.ascii	"RTC1_IRQn\000"
.LASF341:
	.ascii	"ITM_RxBuffer\000"
.LASF282:
	.ascii	"grouping\000"
.LASF407:
	.ascii	"pull_config\000"
.LASF233:
	.ascii	"TEMP_IRQn\000"
.LASF63:
	.ascii	"frequency\000"
.LASF311:
	.ascii	"date_time_format\000"
.LASF498:
	.ascii	"ram_powerclr\000"
.LASF72:
	.ascii	"p_reg\000"
.LASF16:
	.ascii	"p_module_name\000"
.LASF108:
	.ascii	"nrf_radio_request_t\000"
.LASF511:
	.ascii	"p_reset_reason\000"
.LASF502:
	.ascii	"threshold\000"
.LASF229:
	.ascii	"TIMER0_IRQn\000"
.LASF8:
	.ascii	"nrfx_spi_evt_handler_t\000"
.LASF126:
	.ascii	"SD_FLASH_PAGE_ERASE\000"
.LASF15:
	.ascii	"unsigned int\000"
.LASF382:
	.ascii	"m_cb\000"
.LASF150:
	.ascii	"SD_CLOCK_HFCLK_REQUEST\000"
.LASF492:
	.ascii	"gpregret_msk\000"
.LASF296:
	.ascii	"p_sign_posn\000"
.LASF484:
	.ascii	"sd_clock_hfclk_release\000"
.LASF113:
	.ascii	"nrf_radio_request_normal_t\000"
.LASF36:
	.ascii	"NRF_GPIO_PIN_S0S1\000"
.LASF371:
	.ascii	"nrf_gpio_pin_sense_t\000"
.LASF393:
	.ascii	"nrfx_spi_xfer\000"
.LASF349:
	.ascii	"nrf_mutex_t\000"
.LASF31:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF124:
	.ascii	"SD_PPI_GROUP_ASSIGN\000"
.LASF87:
	.ascii	"NRF_SPI_FREQ_8M\000"
.LASF530:
	.ascii	"NVIC_ClearPendingIRQ\000"
.LASF335:
	.ascii	"__user_get_time_of_day\000"
.LASF82:
	.ascii	"NRF_SPI_FREQ_250K\000"
.LASF212:
	.ascii	"NonMaskableInt_IRQn\000"
.LASF110:
	.ascii	"earliest\000"
.LASF290:
	.ascii	"int_frac_digits\000"
.LASF53:
	.ascii	"nrfx_spi_evt_type_t\000"
.LASF481:
	.ascii	"sd_app_evt_wait\000"
.LASF429:
	.ascii	"nrf_spi_int_enable\000"
.LASF493:
	.ascii	"sd_power_gpregret_set\000"
.LASF322:
	.ascii	"__RAL_codeset_utf8\000"
.LASF320:
	.ascii	"__RAL_c_locale\000"
.LASF491:
	.ascii	"sd_power_gpregret_clr\000"
.LASF235:
	.ascii	"ECB_IRQn\000"
.LASF158:
	.ascii	"SD_RADIO_REQUEST\000"
.LASF239:
	.ascii	"QDEC_IRQn\000"
.LASF257:
	.ascii	"FPU_IRQn\000"
.LASF364:
	.ascii	"nrf_spi_event_t\000"
.LASF271:
	.ascii	"__isctype\000"
.LASF513:
	.ascii	"p_buff\000"
.LASF397:
	.ascii	"irq_handlers\000"
.LASF358:
	.ascii	"__RAL_FILE\000"
.LASF188:
	.ascii	"MOSI\000"
.LASF41:
	.ascii	"NRF_GPIO_PIN_D0H1\000"
.LASF411:
	.ascii	"pull\000"
.LASF227:
	.ascii	"GPIOTE_IRQn\000"
.LASF523:
	.ascii	"_NRFX_IRQ_DISABLE\000"
.LASF149:
	.ascii	"SD_APP_EVT_WAIT\000"
.LASF494:
	.ascii	"sd_power_ram_power_get\000"
.LASF140:
	.ascii	"SD_POWER_POF_ENABLE\000"
.LASF45:
	.ascii	"NRF_GPIO_PIN_PULLDOWN\000"
.LASF367:
	.ascii	"nrf_gpio_pin_dir_t\000"
.LASF508:
	.ascii	"sd_power_reset_reason_clr\000"
.LASF356:
	.ascii	"FILE\000"
.LASF39:
	.ascii	"NRF_GPIO_PIN_H0H1\000"
.LASF348:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF248:
	.ascii	"TIMER4_IRQn\000"
.LASF390:
	.ascii	"finish_transfer\000"
.LASF112:
	.ascii	"nrf_radio_request_earliest_t\000"
.LASF44:
	.ascii	"NRF_GPIO_PIN_NOPULL\000"
.LASF350:
	.ascii	"nrf_radio_signal_callback_return_param_t\000"
.LASF97:
	.ascii	"soc_ecb_ciphertext_t\000"
.LASF32:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF331:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF303:
	.ascii	"int_n_sign_posn\000"
.LASF125:
	.ascii	"SD_PPI_GROUP_GET\000"
.LASF121:
	.ascii	"SD_PPI_CHANNEL_ASSIGN\000"
.LASF199:
	.ascii	"BFAR\000"
.LASF344:
	.ascii	"nrfx_irq_handler_t\000"
.LASF339:
	.ascii	"NVIC_Type\000"
.LASF487:
	.ascii	"dcdc_mode\000"
.LASF519:
	.ascii	"sd_mutex_release\000"
.LASF517:
	.ascii	"sd_rand_application_pool_capacity_get\000"
.LASF451:
	.ascii	"size\000"
.LASF501:
	.ascii	"sd_power_pof_threshold_set\000"
.LASF216:
	.ascii	"UsageFault_IRQn\000"
.LASF167:
	.ascii	"OUTSET\000"
.LASF318:
	.ascii	"long long unsigned int\000"
.LASF103:
	.ascii	"params\000"
.LASF168:
	.ascii	"OUTCLR\000"
.LASF490:
	.ascii	"p_gpregret\000"
.LASF142:
	.ascii	"SD_POWER_RAM_POWER_SET\000"
.LASF514:
	.ascii	"length\000"
.LASF25:
	.ascii	"uint16_t\000"
.LASF464:
	.ascii	"group_num\000"
.LASF143:
	.ascii	"SD_POWER_RAM_POWER_CLR\000"
.LASF466:
	.ascii	"sd_ppi_group_assign\000"
.LASF533:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\modules\\nrfx\\drivers"
	.ascii	"\\src\\nrfx_spi.c\000"
.LASF211:
	.ascii	"Reset_IRQn\000"
.LASF436:
	.ascii	"value\000"
.LASF527:
	.ascii	"nrfx_get_irq_number\000"
.LASF438:
	.ascii	"p_request\000"
.LASF424:
	.ascii	"nrf_spi_pins_set\000"
.LASF5:
	.ascii	"miso_pin\000"
.LASF378:
	.ascii	"SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler\000"
.LASF496:
	.ascii	"p_ram_power\000"
.LASF148:
	.ascii	"SD_POWER_DCDC_MODE_SET\000"
.LASF473:
	.ascii	"task_endpoint\000"
.LASF247:
	.ascii	"TIMER3_IRQn\000"
.LASF58:
	.ascii	"p_rx_buffer\000"
.LASF250:
	.ascii	"PDM_IRQn\000"
.LASF409:
	.ascii	"nrf_gpio_cfg\000"
.LASF403:
	.ascii	"pin_number\000"
.LASF54:
	.ascii	"nrfx_spi_xfer_desc_t\000"
.LASF130:
	.ascii	"SD_MUTEX_NEW\000"
.LASF136:
	.ascii	"SD_POWER_MODE_SET\000"
.LASF205:
	.ascii	"ICER\000"
.LASF363:
	.ascii	"nrfx_err_t\000"
.LASF412:
	.ascii	"drive\000"
.LASF117:
	.ascii	"timeout_us\000"
.LASF365:
	.ascii	"nrfx_spi_t\000"
.LASF221:
	.ascii	"POWER_CLOCK_IRQn\000"
.LASF394:
	.ascii	"nrfx_spi_init\000"
.LASF102:
	.ascii	"callback_action\000"
.LASF46:
	.ascii	"NRF_GPIO_PIN_PULLUP\000"
.LASF373:
	.ascii	"nrf_log_module_const_data_t\000"
.LASF55:
	.ascii	"NRFX_SPI_EVENT_DONE\000"
.LASF174:
	.ascii	"PIN_CNF\000"
.LASF100:
	.ascii	"soc_ecb_key_t\000"
.LASF200:
	.ascii	"AFSR\000"
.LASF0:
	.ascii	"handler\000"
.LASF372:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF95:
	.ascii	"p_cleartext\000"
.LASF305:
	.ascii	"abbrev_day_names\000"
.LASF195:
	.ascii	"CFSR\000"
.LASF478:
	.ascii	"sd_ppi_channel_enable_get\000"
.LASF141:
	.ascii	"SD_POWER_POF_THRESHOLD_SET\000"
.LASF323:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF433:
	.ascii	"dummy\000"
.LASF281:
	.ascii	"thousands_sep\000"
.LASF347:
	.ascii	"_vectors\000"
.LASF506:
	.ascii	"sd_power_mode_set\000"
.LASF223:
	.ascii	"UARTE0_UART0_IRQn\000"
.LASF19:
	.ascii	"compiled_lvl\000"
.LASF218:
	.ascii	"DebugMonitor_IRQn\000"
.LASF171:
	.ascii	"LATCH\000"
.LASF272:
	.ascii	"__toupper\000"
.LASF33:
	.ascii	"NRF_GPIO_PIN_NOSENSE\000"
.LASF475:
	.ascii	"channel_enable_clr_msk\000"
.LASF266:
	.ascii	"name\000"
.LASF240:
	.ascii	"COMP_LPCOMP_IRQn\000"
.LASF74:
	.ascii	"NRF_SPI_Type\000"
.LASF201:
	.ascii	"MMFR\000"
.LASF291:
	.ascii	"frac_digits\000"
.LASF198:
	.ascii	"MMFAR\000"
.LASF400:
	.ascii	"nrf_gpio_port_out_set\000"
.LASF6:
	.ascii	"bytes_transferred\000"
.LASF423:
	.ascii	"nrf_spi_txd_set\000"
.LASF361:
	.ascii	"stderr\000"
.LASF315:
	.ascii	"short int\000"
.LASF64:
	.ascii	"mode\000"
.LASF452:
	.ascii	"sd_temp_get\000"
.LASF252:
	.ascii	"PWM1_IRQn\000"
.LASF106:
	.ascii	"length_us\000"
.LASF313:
	.ascii	"__state\000"
.LASF377:
	.ascii	"SPIM2_SPIS2_SPI2_IRQHandler\000"
.LASF244:
	.ascii	"SWI3_EGU3_IRQn\000"
.LASF118:
	.ascii	"SD_PPI_CHANNEL_ENABLE_GET\000"
.LASF202:
	.ascii	"ISAR\000"
.LASF71:
	.ascii	"NRFX_SPI_ENABLED_COUNT\000"
.LASF277:
	.ascii	"__wctomb\000"
.LASF20:
	.ascii	"initial_lvl\000"
.LASF417:
	.ascii	"nrf_spi_configure\000"
.LASF50:
	.ascii	"NRF_GPIO_PIN_DIR_OUTPUT\000"
.LASF179:
	.ascii	"ENABLE\000"
.LASF520:
	.ascii	"p_mutex\000"
.LASF175:
	.ascii	"EVENTS_READY\000"
.LASF521:
	.ascii	"sd_mutex_acquire\000"
.LASF275:
	.ascii	"__towupper\000"
.LASF459:
	.ascii	"sd_ecb_block_encrypt\000"
.LASF304:
	.ascii	"day_names\000"
.LASF332:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF376:
	.ascii	"spi_control_block_t\000"
.LASF172:
	.ascii	"DETECTMODE\000"
.LASF302:
	.ascii	"int_p_sign_posn\000"
.LASF47:
	.ascii	"NRF_GPIO_PIN_INPUT_CONNECT\000"
.LASF437:
	.ascii	"sd_radio_request\000"
.LASF38:
	.ascii	"NRF_GPIO_PIN_S0H1\000"
.LASF122:
	.ascii	"SD_PPI_GROUP_TASK_ENABLE\000"
.LASF17:
	.ascii	"info_color_id\000"
.LASF324:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF145:
	.ascii	"SD_POWER_GPREGRET_SET\000"
.LASF24:
	.ascii	"padding\000"
.LASF146:
	.ascii	"SD_POWER_GPREGRET_CLR\000"
.LASF1:
	.ascii	"p_context\000"
.LASF49:
	.ascii	"NRF_GPIO_PIN_DIR_INPUT\000"
.LASF170:
	.ascii	"DIRCLR\000"
.LASF471:
	.ascii	"channel_num\000"
.LASF10:
	.ascii	"nrfx_drv_state_t\000"
.LASF184:
	.ascii	"FREQUENCY\000"
.LASF93:
	.ascii	"uint32_t\000"
.LASF91:
	.ascii	"__irq_masks\000"
.LASF21:
	.ascii	"nrf_log_severity_t\000"
.LASF421:
	.ascii	"nrf_spi_frequency_set\000"
.LASF528:
	.ascii	"NVIC_SetPriority\000"
.LASF284:
	.ascii	"currency_symbol\000"
.LASF129:
	.ascii	"SD_PROTECTED_REGISTER_WRITE\000"
.LASF489:
	.ascii	"gpregret_id\000"
.LASF153:
	.ascii	"SD_RADIO_NOTIFICATION_CFG_SET\000"
.LASF243:
	.ascii	"SWI2_EGU2_IRQn\000"
.LASF333:
	.ascii	"__RAL_data_empty_string\000"
.LASF127:
	.ascii	"SD_FLASH_WRITE\000"
.LASF57:
	.ascii	"tx_length\000"
.LASF392:
	.ascii	"nrfx_spi_uninit\000"
.LASF283:
	.ascii	"int_curr_symbol\000"
.LASF292:
	.ascii	"p_cs_precedes\000"
.LASF431:
	.ascii	"spi_event\000"
.LASF26:
	.ascii	"short unsigned int\000"
.LASF360:
	.ascii	"stdout\000"
.LASF187:
	.ascii	"SPI_PSEL_Type\000"
.LASF203:
	.ascii	"CPACR\000"
.LASF219:
	.ascii	"PendSV_IRQn\000"
.LASF128:
	.ascii	"SD_FLASH_PROTECT\000"
.LASF343:
	.ascii	"NRF_GPIO_Type\000"
.LASF516:
	.ascii	"p_bytes_available\000"
.LASF61:
	.ascii	"mosi_pin\000"
.LASF134:
	.ascii	"SD_RAND_APPLICATION_BYTES_AVAILABLE_GET\000"
.LASF28:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF68:
	.ascii	"nrf_spi_bit_order_t\000"
.LASF479:
	.ascii	"p_channel_enable\000"
.LASF139:
	.ascii	"SD_POWER_RESET_REASON_CLR\000"
.LASF264:
	.ascii	"__category\000"
.LASF329:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF213:
	.ascii	"HardFault_IRQn\000"
.LASF273:
	.ascii	"__tolower\000"
.LASF157:
	.ascii	"SD_RADIO_SESSION_CLOSE\000"
.LASF404:
	.ascii	"nrf_gpio_pin_set\000"
.LASF260:
	.ascii	"next\000"
.LASF267:
	.ascii	"data\000"
.LASF470:
	.ascii	"sd_ppi_channel_assign\000"
.LASF251:
	.ascii	"MWU_IRQn\000"
.LASF3:
	.ascii	"transfer_in_progress\000"
.LASF220:
	.ascii	"SysTick_IRQn\000"
.LASF414:
	.ascii	"transfer_byte\000"
.LASF368:
	.ascii	"nrf_gpio_pin_input_t\000"
.LASF242:
	.ascii	"SWI1_EGU1_IRQn\000"
.LASF532:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -fomit-frame-poi"
	.ascii	"nter -fno-dwarf2-cfi-asm -fno-builtin -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF426:
	.ascii	"nrf_spi_enable\000"
.LASF325:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF515:
	.ascii	"sd_rand_application_bytes_available_get\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
