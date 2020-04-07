	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 1
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"i2c.c"
	.text
.Ltext0:
	.section	.rodata.i2cInit.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"I2c INIT FAILED!\012\000"
	.section	.text.i2cInit,"ax",%progbits
	.align	1
	.global	i2cInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	i2cInit, %function
i2cInit:
.LFB277:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\i2c.c"
	.loc 1 25 15 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI0:
	.loc 1 26 7 view .LVU1
	.loc 1 26 22 is_stmt 0 view .LVU2
	movs	r0, #1
	bl	xQueueCreateMutex
.LVL0:
	.loc 1 26 20 view .LVU3
	ldr	r3, .L5
	str	r0, [r3]
	.loc 1 27 9 is_stmt 1 view .LVU4
	.loc 1 27 12 is_stmt 0 view .LVU5
	ldr	r1, .L5+4
	ldr	r0, .L5+8
	bl	nrf_twi_mngr_init
.LVL1:
	.loc 1 27 11 view .LVU6
	cbnz	r0, .L4
.L1:
	.loc 1 30 1 view .LVU7
	pop	{r3, pc}
.L4:
	.loc 1 28 13 is_stmt 1 discriminator 3 view .LVU8
	.loc 1 28 92 discriminator 3 view .LVU9
	.loc 1 28 150 discriminator 3 view .LVU10
	.loc 1 28 234 is_stmt 0 discriminator 3 view .LVU11
	ldr	r3, .L5+12
	ldrh	r0, [r3]
	.loc 1 28 245 discriminator 3 view .LVU12
	lsls	r0, r0, #16
	.loc 1 28 150 discriminator 3 view .LVU13
	ldr	r1, .L5+16
	orr	r0, r0, #2
	bl	nrf_log_frontend_std_0
.LVL2:
	.loc 1 28 279 is_stmt 1 discriminator 3 view .LVU14
	.loc 1 30 1 is_stmt 0 discriminator 3 view .LVU15
	b	.L1
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC0
.LFE277:
	.size	i2cInit, .-i2cInit
	.section	.rodata.i2cSend.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"I2C send failed!\012\000"
	.section	.text.i2cSend,"ax",%progbits
	.align	1
	.global	i2cSend
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	i2cSend, %function
i2cSend:
.LVL3:
.LFB278:
	.loc 1 32 68 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 32 68 is_stmt 0 view .LVU17
	push	{r4, r5, lr}
.LCFI1:
	sub	sp, sp, #20
.LCFI2:
	.loc 1 33 6 is_stmt 1 view .LVU18
	.loc 1 34 7 view .LVU19
	.loc 1 34 16 is_stmt 0 view .LVU20
	ldr	r4, .L14
	strb	r1, [r4]
	.loc 1 35 7 is_stmt 1 view .LVU21
.LBB2:
	.loc 1 35 11 view .LVU22
.LVL4:
	.loc 1 35 15 is_stmt 0 view .LVU23
	movs	r1, #0
.LVL5:
.L8:
	.loc 1 35 20 is_stmt 1 discriminator 1 view .LVU24
	.loc 1 35 7 is_stmt 0 discriminator 1 view .LVU25
	cmp	r3, r1
	ble	.L12
	.loc 1 36 11 is_stmt 1 discriminator 3 view .LVU26
	.loc 1 36 27 is_stmt 0 discriminator 3 view .LVU27
	adds	r4, r2, r1
	.loc 1 36 19 discriminator 3 view .LVU28
	adds	r1, r1, #1
.LVL6:
	.loc 1 36 27 discriminator 3 view .LVU29
	ldrb	r5, [r4]	@ zero_extendqisi2
	.loc 1 36 22 discriminator 3 view .LVU30
	ldr	r4, .L14
	strb	r5, [r4, r1]
	.loc 1 35 26 is_stmt 1 discriminator 3 view .LVU31
.LVL7:
	.loc 1 35 26 is_stmt 0 discriminator 3 view .LVU32
	b	.L8
.L12:
	.loc 1 35 26 discriminator 3 view .LVU33
.LBE2:
	.loc 1 38 7 is_stmt 1 view .LVU34
	.loc 1 38 37 is_stmt 0 view .LVU35
	ldr	r2, .L14
.LVL8:
	.loc 1 38 37 view .LVU36
	str	r2, [sp, #8]
	.loc 1 39 54 view .LVU37
	adds	r3, r3, #1
.LVL9:
	.loc 1 38 37 view .LVU38
	strb	r3, [sp, #12]
	.loc 1 39 88 view .LVU39
	lsls	r0, r0, #1
.LVL10:
	.loc 1 38 37 view .LVU40
	strb	r0, [sp, #13]
	movs	r4, #1
	strb	r4, [sp, #14]
	.loc 1 41 7 is_stmt 1 view .LVU41
	movs	r1, #200
.LVL11:
	.loc 1 41 7 is_stmt 0 view .LVU42
	ldr	r3, .L14+4
	ldr	r0, [r3]
	bl	xQueueSemaphoreTake
.LVL12:
	.loc 1 42 7 is_stmt 1 view .LVU43
	.loc 1 42 10 is_stmt 0 view .LVU44
	movs	r3, #0
	str	r3, [sp]
	mov	r3, r4
	add	r2, sp, #8
	ldr	r1, .L14+8
	ldr	r0, .L14+12
	bl	nrf_twi_mngr_perform
.LVL13:
	.loc 1 42 9 view .LVU45
	cbnz	r0, .L13
.L10:
	.loc 1 43 277 is_stmt 1 discriminator 5 view .LVU46
	.loc 1 45 7 discriminator 5 view .LVU47
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, .L14+4
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL14:
	.loc 1 46 1 is_stmt 0 discriminator 5 view .LVU48
	add	sp, sp, #20
.LCFI3:
	@ sp needed
	pop	{r4, r5, pc}
.L13:
.LCFI4:
	.loc 1 43 11 is_stmt 1 discriminator 3 view .LVU49
	.loc 1 43 90 discriminator 3 view .LVU50
	.loc 1 43 148 discriminator 3 view .LVU51
	.loc 1 43 232 is_stmt 0 discriminator 3 view .LVU52
	ldr	r3, .L14+16
	ldrh	r0, [r3]
	.loc 1 43 243 discriminator 3 view .LVU53
	lsls	r0, r0, #16
	.loc 1 43 148 discriminator 3 view .LVU54
	ldr	r1, .L14+20
	orr	r0, r0, #2
	bl	nrf_log_frontend_std_0
.LVL15:
	b	.L10
.L15:
	.align	2
.L14:
	.word	.LANCHOR3
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC1
.LFE278:
	.size	i2cSend, .-i2cSend
	.section	.rodata.i2cRecive.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"I2C recive failed!\012\000"
	.section	.text.i2cRecive,"ax",%progbits
	.align	1
	.global	i2cRecive
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	i2cRecive, %function
i2cRecive:
.LVL16:
.LFB279:
	.loc 1 48 73 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 48 73 is_stmt 0 view .LVU56
	push	{r4, lr}
.LCFI5:
	sub	sp, sp, #32
.LCFI6:
	strb	r1, [sp, #15]
	.loc 1 49 7 is_stmt 1 view .LVU57
	.loc 1 49 37 is_stmt 0 view .LVU58
	add	r1, sp, #15
.LVL17:
	.loc 1 49 37 view .LVU59
	str	r1, [sp, #16]
	movs	r1, #1
.LVL18:
	.loc 1 49 37 view .LVU60
	strb	r1, [sp, #20]
	.loc 1 50 82 view .LVU61
	lsls	r0, r0, r1
.LVL19:
	.loc 1 49 37 view .LVU62
	strb	r0, [sp, #21]
	strb	r1, [sp, #22]
	str	r2, [sp, #24]
	strb	r3, [sp, #28]
	.loc 1 51 83 view .LVU63
	orrs	r0, r0, r1
	.loc 1 49 37 view .LVU64
	strb	r0, [sp, #29]
	movs	r4, #0
	strb	r4, [sp, #30]
	.loc 1 53 7 is_stmt 1 view .LVU65
	movs	r1, #200
	ldr	r3, .L20
.LVL20:
	.loc 1 53 7 is_stmt 0 view .LVU66
	ldr	r0, [r3]
	bl	xQueueSemaphoreTake
.LVL21:
	.loc 1 54 7 is_stmt 1 view .LVU67
	.loc 1 54 10 is_stmt 0 view .LVU68
	str	r4, [sp]
	movs	r3, #2
	add	r2, sp, #16
	ldr	r1, .L20+4
	ldr	r0, .L20+8
	bl	nrf_twi_mngr_perform
.LVL22:
	.loc 1 54 9 view .LVU69
	cbnz	r0, .L19
.L17:
	.loc 1 55 279 is_stmt 1 discriminator 5 view .LVU70
	.loc 1 57 7 discriminator 5 view .LVU71
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, .L20
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL23:
	.loc 1 58 1 is_stmt 0 discriminator 5 view .LVU72
	add	sp, sp, #32
.LCFI7:
	@ sp needed
	pop	{r4, pc}
.L19:
.LCFI8:
	.loc 1 55 11 is_stmt 1 discriminator 3 view .LVU73
	.loc 1 55 90 discriminator 3 view .LVU74
	.loc 1 55 148 discriminator 3 view .LVU75
	.loc 1 55 232 is_stmt 0 discriminator 3 view .LVU76
	ldr	r3, .L20+12
	ldrh	r0, [r3]
	.loc 1 55 243 discriminator 3 view .LVU77
	lsls	r0, r0, #16
	.loc 1 55 148 discriminator 3 view .LVU78
	ldr	r1, .L20+16
	orr	r0, r0, #2
	bl	nrf_log_frontend_std_0
.LVL24:
	b	.L17
.L21:
	.align	2
.L20:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC2
.LFE279:
	.size	i2cRecive, .-i2cRecive
	.section	.rodata.i2cSendNOADDR.str1.4,"aMS",%progbits,1
	.align	2
.LC3:
	.ascii	"I2CsendNOADDR failed!\012\000"
	.section	.text.i2cSendNOADDR,"ax",%progbits
	.align	1
	.global	i2cSendNOADDR
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	i2cSendNOADDR, %function
i2cSendNOADDR:
.LVL25:
.LFB280:
	.loc 1 60 63 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 60 63 is_stmt 0 view .LVU80
	push	{r4, lr}
.LCFI9:
	sub	sp, sp, #16
.LCFI10:
	.loc 1 61 7 is_stmt 1 view .LVU81
	.loc 1 61 37 is_stmt 0 view .LVU82
	str	r1, [sp, #8]
	strb	r2, [sp, #12]
	.loc 1 62 83 view .LVU83
	lsls	r0, r0, #1
.LVL26:
	.loc 1 61 37 view .LVU84
	strb	r0, [sp, #13]
	movs	r4, #1
	strb	r4, [sp, #14]
	.loc 1 64 7 is_stmt 1 view .LVU85
	movs	r1, #200
.LVL27:
	.loc 1 64 7 is_stmt 0 view .LVU86
	ldr	r3, .L26
	ldr	r0, [r3]
	bl	xQueueSemaphoreTake
.LVL28:
	.loc 1 65 7 is_stmt 1 view .LVU87
	.loc 1 65 10 is_stmt 0 view .LVU88
	movs	r3, #0
	str	r3, [sp]
	mov	r3, r4
	add	r2, sp, #8
	ldr	r1, .L26+4
	ldr	r0, .L26+8
	bl	nrf_twi_mngr_perform
.LVL29:
	.loc 1 65 9 view .LVU89
	cbnz	r0, .L25
.L23:
	.loc 1 66 282 is_stmt 1 discriminator 5 view .LVU90
	.loc 1 68 7 discriminator 5 view .LVU91
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, .L26
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL30:
	.loc 1 69 1 is_stmt 0 discriminator 5 view .LVU92
	add	sp, sp, #16
.LCFI11:
	@ sp needed
	pop	{r4, pc}
.L25:
.LCFI12:
	.loc 1 66 11 is_stmt 1 discriminator 3 view .LVU93
	.loc 1 66 90 discriminator 3 view .LVU94
	.loc 1 66 148 discriminator 3 view .LVU95
	.loc 1 66 232 is_stmt 0 discriminator 3 view .LVU96
	ldr	r3, .L26+12
	ldrh	r0, [r3]
	.loc 1 66 243 discriminator 3 view .LVU97
	lsls	r0, r0, #16
	.loc 1 66 148 discriminator 3 view .LVU98
	ldr	r1, .L26+16
	orr	r0, r0, #2
	bl	nrf_log_frontend_std_0
.LVL31:
	b	.L23
.L27:
	.align	2
.L26:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC3
.LFE280:
	.size	i2cSendNOADDR, .-i2cSendNOADDR
	.section	.rodata.i2cReciveNOADDR.str1.4,"aMS",%progbits,1
	.align	2
.LC4:
	.ascii	"I2CreciveNOADDR failed!\012\000"
	.section	.text.i2cReciveNOADDR,"ax",%progbits
	.align	1
	.global	i2cReciveNOADDR
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	i2cReciveNOADDR, %function
i2cReciveNOADDR:
.LVL32:
.LFB281:
	.loc 1 71 65 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 71 65 is_stmt 0 view .LVU100
	push	{r4, lr}
.LCFI13:
	sub	sp, sp, #16
.LCFI14:
	.loc 1 72 7 is_stmt 1 view .LVU101
	.loc 1 72 37 is_stmt 0 view .LVU102
	str	r1, [sp, #8]
	strb	r2, [sp, #12]
	.loc 1 73 77 view .LVU103
	lsls	r0, r0, #1
.LVL33:
	.loc 1 73 83 view .LVU104
	orr	r0, r0, #1
	.loc 1 72 37 view .LVU105
	strb	r0, [sp, #13]
	movs	r4, #0
	strb	r4, [sp, #14]
	.loc 1 75 7 is_stmt 1 view .LVU106
	movs	r1, #200
.LVL34:
	.loc 1 75 7 is_stmt 0 view .LVU107
	ldr	r3, .L32
	ldr	r0, [r3]
	bl	xQueueSemaphoreTake
.LVL35:
	.loc 1 76 7 is_stmt 1 view .LVU108
	.loc 1 76 10 is_stmt 0 view .LVU109
	str	r4, [sp]
	movs	r3, #1
	add	r2, sp, #8
	ldr	r1, .L32+4
	ldr	r0, .L32+8
	bl	nrf_twi_mngr_perform
.LVL36:
	.loc 1 76 9 view .LVU110
	cbnz	r0, .L31
.L29:
	.loc 1 77 284 is_stmt 1 discriminator 5 view .LVU111
	.loc 1 79 7 discriminator 5 view .LVU112
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, .L32
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL37:
	.loc 1 80 1 is_stmt 0 discriminator 5 view .LVU113
	add	sp, sp, #16
.LCFI15:
	@ sp needed
	pop	{r4, pc}
.L31:
.LCFI16:
	.loc 1 77 11 is_stmt 1 discriminator 3 view .LVU114
	.loc 1 77 90 discriminator 3 view .LVU115
	.loc 1 77 148 discriminator 3 view .LVU116
	.loc 1 77 232 is_stmt 0 discriminator 3 view .LVU117
	ldr	r3, .L32+12
	ldrh	r0, [r3]
	.loc 1 77 243 discriminator 3 view .LVU118
	lsls	r0, r0, #16
	.loc 1 77 148 discriminator 3 view .LVU119
	ldr	r1, .L32+16
	orr	r0, r0, #2
	bl	nrf_log_frontend_std_0
.LVL38:
	b	.L29
.L33:
	.align	2
.L32:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC4
.LFE281:
	.size	i2cReciveNOADDR, .-i2cReciveNOADDR
	.section	.text.getTWIManagerAddress,"ax",%progbits
	.align	1
	.global	getTWIManagerAddress
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getTWIManagerAddress, %function
getTWIManagerAddress:
.LFB282:
	.loc 1 83 45 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 84 9 view .LVU121
	.loc 1 85 1 is_stmt 0 view .LVU122
	ldr	r0, .L35
	bx	lr
.L36:
	.align	2
.L35:
	.word	.LANCHOR2
.LFE282:
	.size	getTWIManagerAddress, .-getTWIManagerAddress
	.section	.text.getBusConfig,"ax",%progbits
	.align	1
	.global	getBusConfig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getBusConfig, %function
getBusConfig:
.LFB283:
	.loc 1 87 43 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 88 9 view .LVU124
	.loc 1 89 1 is_stmt 0 view .LVU125
	ldr	r0, .L38
	bx	lr
.L39:
	.align	2
.L38:
	.word	.LANCHOR1
.LFE283:
	.size	getBusConfig, .-getBusConfig
	.global	m_nrf_twi_mngr_queue
	.global	m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_dynamic
	.global	m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_const
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC5:
	.ascii	"queue.m_nrf_twi_mngr_queue\000"
	.global	i2cSemaphore
	.section	.bss.buffer.9946,"aw",%nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	buffer.9946, %object
	.size	buffer.9946, 6
buffer.9946:
	.space	6
	.section	.bss.i2cSemaphore,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	i2cSemaphore, %object
	.size	i2cSemaphore, 4
i2cSemaphore:
	.space	4
	.section	.bss.m_nrf_twi_mngr_cb,"aw",%nobits
	.align	2
	.type	m_nrf_twi_mngr_cb, %object
	.size	m_nrf_twi_mngr_cb, 28
m_nrf_twi_mngr_cb:
	.space	28
	.section	.bss.m_nrf_twi_mngr_queue_nrf_queue_buffer,"aw",%nobits
	.align	2
	.type	m_nrf_twi_mngr_queue_nrf_queue_buffer, %object
	.size	m_nrf_twi_mngr_queue_nrf_queue_buffer, 24
m_nrf_twi_mngr_queue_nrf_queue_buffer:
	.space	24
	.section	.bss.m_nrf_twi_mngr_queue_nrf_queue_cb,"aw",%nobits
	.align	2
	.type	m_nrf_twi_mngr_queue_nrf_queue_cb, %object
	.size	m_nrf_twi_mngr_queue_nrf_queue_cb, 12
m_nrf_twi_mngr_queue_nrf_queue_cb:
	.space	12
	.section	.log_const_data_queue_m_nrf_twi_mngr_queue,"a"
	.align	2
	.type	m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_const, %object
	.size	m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_const, 8
m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_const:
	.word	.LC5
	.byte	0
	.byte	0
	.byte	0
	.byte	3
	.section	.log_dynamic_data_queue_m_nrf_twi_mngr_queue,"aw"
	.align	2
	.type	m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_dynamic, %object
	.size	m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_dynamic, 4
m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_dynamic:
	.space	4
	.section	.nrf_queue,"a"
	.align	2
	.type	m_nrf_twi_mngr_queue, %object
	.size	m_nrf_twi_mngr_queue, 24
m_nrf_twi_mngr_queue:
	.word	m_nrf_twi_mngr_queue_nrf_queue_cb
	.word	m_nrf_twi_mngr_queue_nrf_queue_buffer
	.word	5
	.word	4
	.byte	1
	.space	3
	.word	m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_dynamic
	.section	.rodata.bus_config,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	bus_config, %object
	.size	bus_config, 16
bus_config:
	.word	6
	.word	7
	.word	107479040
	.byte	7
	.byte	0
	.space	2
	.section	.rodata.m_nrf_twi_mngr,"a"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	m_nrf_twi_mngr, %object
	.size	m_nrf_twi_mngr, 24
m_nrf_twi_mngr:
	.word	m_nrf_twi_mngr_cb
	.word	m_nrf_twi_mngr_queue
	.byte	1
	.space	3
	.word	1073758208
	.byte	0
	.space	3
	.byte	0
	.space	3
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
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.byte	0x4
	.4byte	.LCFI0-.LFB277
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.byte	0x4
	.4byte	.LCFI1-.LFB278
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xa
	.byte	0xe
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xb
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.byte	0x4
	.4byte	.LCFI5-.LFB279
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xa
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xb
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.byte	0x4
	.4byte	.LCFI9-.LFB280
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xa
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xb
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB281
	.4byte	.LFE281-.LFB281
	.byte	0x4
	.4byte	.LCFI13-.LFB281
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xa
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xb
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB282
	.4byte	.LFE282-.LFB282
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB283
	.4byte	.LFE283-.LFB283
	.align	2
.LEFDE12:
	.text
.Letext0:
	.file 2 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
	.file 3 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
	.file 4 "../../../../../../components/libraries/queue/nrf_queue.h"
	.section	.debug_types,"G",%progbits,wt.7a083810276fe8fd,comdat
	.4byte	0x8c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x7a
	.byte	0x8
	.byte	0x38
	.byte	0x10
	.byte	0x27
	.byte	0x6f
	.byte	0xe8
	.byte	0xfd
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x18
	.byte	0x2
	.byte	0xcc
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0xcd
	.byte	0x19
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0xd0
	.byte	0x19
	.4byte	0x54
	.byte	0x4
	.uleb128 0x4
	.ascii	"twi\000"
	.byte	0x2
	.byte	0xd3
	.byte	0x13
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x3
	.byte	0x72
	.byte	0x3
	.byte	0x18
	.byte	0x6d
	.byte	0xee
	.byte	0xe2
	.byte	0x58
	.byte	0x58
	.byte	0xf7
	.byte	0x62
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x2
	.byte	0xc7
	.byte	0x3
	.byte	0xcb
	.byte	0x6e
	.byte	0xe5
	.byte	0x6f
	.byte	0x23
	.byte	0x74
	.byte	0xf6
	.byte	0x76
	.uleb128 0x7
	.4byte	0x7f
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x4
	.byte	0x5f
	.byte	0x3
	.byte	0x43
	.byte	0x7f
	.byte	0xee
	.byte	0xf1
	.byte	0x97
	.byte	0x49
	.byte	0x3
	.byte	0x42
	.byte	0
	.file 5 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.section	.debug_types,"G",%progbits,wt.cb6ee56f2374f676,comdat
	.4byte	0xab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xcb
	.byte	0x6e
	.byte	0xe5
	.byte	0x6f
	.byte	0x23
	.byte	0x74
	.byte	0xf6
	.byte	0x76
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1c
	.byte	0x2
	.byte	0xbb
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0xbc
	.byte	0x31
	.4byte	0x5b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0xbf
	.byte	0x1a
	.4byte	0x60
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.byte	0xc2
	.byte	0x22
	.4byte	0x70
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.byte	0xc5
	.byte	0x16
	.4byte	0x76
	.byte	0x18
	.byte	0
	.uleb128 0x8
	.4byte	0x7b
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x3
	.byte	0x9d
	.byte	0x3
	.byte	0x50
	.byte	0xe0
	.byte	0xf9
	.byte	0xfa
	.byte	0xf8
	.byte	0x1
	.byte	0x2
	.byte	0xf7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x81
	.uleb128 0x8
	.4byte	0x86
	.uleb128 0x5
	.byte	0x4
	.4byte	0x92
	.uleb128 0x7
	.4byte	0x60
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0x97
	.uleb128 0x7
	.4byte	0x9e
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0xb6
	.byte	0x3
	.byte	0xbb
	.byte	0x6e
	.byte	0xbe
	.byte	0xa5
	.byte	0x26
	.byte	0x27
	.byte	0x3d
	.byte	0xa8
	.byte	0
	.file 6 "../../../../../../components/libraries/util/sdk_errors.h"
	.section	.debug_types,"G",%progbits,wt.bb6ebea526273da8,comdat
	.4byte	0xf1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xbb
	.byte	0x6e
	.byte	0xbe
	.byte	0xa5
	.byte	0x26
	.byte	0x27
	.byte	0x3d
	.byte	0xa8
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x14
	.byte	0x2
	.byte	0xa7
	.byte	0x9
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.byte	0xa8
	.byte	0x1d
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.byte	0xab
	.byte	0xc
	.4byte	0x74
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x2
	.byte	0xae
	.byte	0x25
	.4byte	0x76
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x2
	.byte	0xb1
	.byte	0xd
	.4byte	0x7c
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x2
	.byte	0xb4
	.byte	0x22
	.4byte	0x88
	.byte	0x10
	.byte	0
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x2
	.byte	0x98
	.byte	0x11
	.4byte	0x8e
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.4byte	0x94
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0x99
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x7
	.4byte	0xb5
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	0xc5
	.uleb128 0xc
	.4byte	0xb5
	.uleb128 0xd
	.4byte	0xd5
	.uleb128 0xd
	.4byte	0x74
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.byte	0xa2
	.byte	0x3
	.byte	0xab
	.byte	0x85
	.byte	0x1a
	.byte	0x84
	.byte	0xea
	.byte	0x9b
	.byte	0x6e
	.byte	0x8d
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x3
	.byte	0x9d
	.byte	0x3
	.byte	0x50
	.byte	0xe0
	.byte	0xf9
	.byte	0xfa
	.byte	0xf8
	.byte	0x1
	.byte	0x2
	.byte	0xf7
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x6
	.byte	0x9e
	.byte	0x12
	.4byte	0xe1
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0xed
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0
	.section	.debug_types,"G",%progbits,wt.ab851a84ea9b6e8d,comdat
	.4byte	0x71
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xab
	.byte	0x85
	.byte	0x1a
	.byte	0x84
	.byte	0xea
	.byte	0x9b
	.byte	0x6e
	.byte	0x8d
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x2
	.byte	0x9d
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x2
	.byte	0x9e
	.byte	0xf
	.4byte	0x5b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x2
	.byte	0x9f
	.byte	0xd
	.4byte	0x61
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x2
	.byte	0xa0
	.byte	0xd
	.4byte	0x61
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x2
	.byte	0xa1
	.byte	0xd
	.4byte	0x61
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x61
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0x6d
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.file 7 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.file 8 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
	.section	.debug_types,"G",%progbits,wt.437feef197490342,comdat
	.4byte	0xc3
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x43
	.byte	0x7f
	.byte	0xee
	.byte	0xf1
	.byte	0x97
	.byte	0x49
	.byte	0x3
	.byte	0x42
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x18
	.byte	0x4
	.byte	0x54
	.byte	0x9
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x4
	.byte	0x56
	.byte	0x16
	.4byte	0x75
	.byte	0
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0x57
	.byte	0xc
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x58
	.byte	0xc
	.4byte	0x7d
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x4
	.byte	0x59
	.byte	0xc
	.4byte	0x7d
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x4
	.byte	0x5a
	.byte	0x16
	.4byte	0x89
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x4
	.byte	0x5e
	.byte	0x2d
	.4byte	0x99
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x9f
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x7
	.byte	0x37
	.byte	0x12
	.4byte	0xaf
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x4
	.byte	0x51
	.byte	0x3
	.byte	0xa2
	.byte	0xf9
	.byte	0x49
	.byte	0x99
	.byte	0x73
	.byte	0xbb
	.byte	0x8d
	.byte	0xcf
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb6
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x4
	.byte	0x4a
	.byte	0x3
	.byte	0xdb
	.byte	0x13
	.byte	0x32
	.byte	0x41
	.byte	0x81
	.byte	0xdf
	.byte	0x8e
	.byte	0xf2
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x8
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
	.byte	0
	.section	.debug_types,"G",%progbits,wt.a2f9499973bb8dcf,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xa2
	.byte	0xf9
	.byte	0x49
	.byte	0x99
	.byte	0x73
	.byte	0xbb
	.byte	0x8d
	.byte	0xcf
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x4
	.byte	0x4e
	.byte	0x1
	.4byte	0x38
	.uleb128 0xf
	.4byte	.LASF37
	.byte	0
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.db13324181df8ef2,comdat
	.4byte	0x63
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xdb
	.byte	0x13
	.byte	0x32
	.byte	0x41
	.byte	0x81
	.byte	0xdf
	.byte	0x8e
	.byte	0xf2
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.byte	0x45
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x4
	.byte	0x47
	.byte	0x15
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x4
	.byte	0x48
	.byte	0x15
	.4byte	0x4e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x4
	.byte	0x49
	.byte	0xc
	.4byte	0x53
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x53
	.uleb128 0x9
	.4byte	.LASF33
	.byte	0x7
	.byte	0x37
	.byte	0x12
	.4byte	0x5f
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0
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
	.byte	0x8
	.byte	0x58
	.byte	0x9
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x8
	.byte	0x5a
	.byte	0x12
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x8
	.byte	0x5b
	.byte	0xd
	.4byte	0x6e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x8
	.byte	0x5c
	.byte	0xd
	.4byte	0x6e
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x8
	.byte	0x5d
	.byte	0x18
	.4byte	0x7a
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x8
	.byte	0x5e
	.byte	0x18
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x8a
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x8
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
	.4byte	0x96
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF48
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
	.byte	0x8
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x8
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x8
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x5
	.byte	0x36
	.byte	0x18
	.4byte	0x4d
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF52
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
	.byte	0x8
	.byte	0x31
	.byte	0x1
	.4byte	0x50
	.uleb128 0xf
	.4byte	.LASF53
	.byte	0
	.uleb128 0xf
	.4byte	.LASF54
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF55
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF56
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF57
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.50e0f9faf80102f7,comdat
	.4byte	0xaf
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x50
	.byte	0xe0
	.byte	0xf9
	.byte	0xfa
	.byte	0xf8
	.byte	0x1
	.byte	0x2
	.byte	0xf7
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x10
	.byte	0x3
	.byte	0x95
	.byte	0x9
	.4byte	0x75
	.uleb128 0x4
	.ascii	"scl\000"
	.byte	0x3
	.byte	0x97
	.byte	0xe
	.4byte	0x75
	.byte	0
	.uleb128 0x4
	.ascii	"sda\000"
	.byte	0x3
	.byte	0x98
	.byte	0xe
	.4byte	0x75
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x3
	.byte	0x99
	.byte	0x1d
	.4byte	0x81
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x3
	.byte	0x9a
	.byte	0xd
	.4byte	0x91
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x3
	.byte	0x9b
	.byte	0x1c
	.4byte	0x9d
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x3
	.byte	0x9c
	.byte	0x1c
	.4byte	0x9d
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0xa4
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x3
	.byte	0x90
	.byte	0x3
	.byte	0x8b
	.byte	0x5f
	.byte	0x4a
	.byte	0x78
	.byte	0x6e
	.byte	0x1a
	.byte	0x70
	.byte	0xd8
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0xab
	.uleb128 0xa
	.byte	0x1
	.byte	0x2
	.4byte	.LASF64
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.8b5f4a786e1a70d8,comdat
	.4byte	0x4b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x8b
	.byte	0x5f
	.byte	0x4a
	.byte	0x78
	.byte	0x6e
	.byte	0x1a
	.byte	0x70
	.byte	0xd8
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x47
	.byte	0x3
	.byte	0x8c
	.byte	0x1
	.4byte	0x47
	.uleb128 0x10
	.4byte	.LASF65
	.4byte	0x1980000
	.uleb128 0x10
	.4byte	.LASF66
	.4byte	0x4000000
	.uleb128 0x10
	.4byte	.LASF67
	.4byte	0x6680000
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0
	.section	.debug_types,"G",%progbits,wt.186deee25858f762,comdat
	.4byte	0x67
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x18
	.byte	0x6d
	.byte	0xee
	.byte	0xe2
	.byte	0x58
	.byte	0x58
	.byte	0xf7
	.byte	0x62
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x10
	.byte	0x3
	.byte	0x65
	.byte	0x9
	.4byte	0x50
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x3
	.byte	0x67
	.byte	0xd
	.4byte	0x50
	.byte	0
	.uleb128 0x11
	.ascii	"u\000"
	.byte	0x3
	.byte	0x70
	.byte	0x7
	.byte	0x41
	.byte	0x4d
	.byte	0xc5
	.byte	0x89
	.byte	0xb0
	.byte	0x2d
	.byte	0x3b
	.byte	0x5f
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x3
	.byte	0x71
	.byte	0xc
	.4byte	0x5c
	.byte	0xc
	.byte	0
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0x63
	.uleb128 0xa
	.byte	0x1
	.byte	0x2
	.4byte	.LASF64
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.file 9 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
	.file 10 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
	.section	.debug_types,"G",%progbits,wt.414dc589b02d3b5f,comdat
	.4byte	0x5c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x41
	.byte	0x4d
	.byte	0xc5
	.byte	0x89
	.byte	0xb0
	.byte	0x2d
	.byte	0x3b
	.byte	0x5f
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x12
	.byte	0x8
	.byte	0x3
	.byte	0x68
	.byte	0x5
	.4byte	0x3f
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x3
	.byte	0x6b
	.byte	0x15
	.4byte	0x3f
	.uleb128 0x14
	.ascii	"twi\000"
	.byte	0x3
	.byte	0x6e
	.byte	0x14
	.4byte	0x4f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x9
	.byte	0x41
	.byte	0x3
	.byte	0x2
	.byte	0x85
	.byte	0xbf
	.byte	0x37
	.byte	0x1c
	.byte	0x2c
	.byte	0x11
	.byte	0xb5
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0xa
	.byte	0x41
	.byte	0x3
	.byte	0x83
	.byte	0x79
	.byte	0xcf
	.byte	0x7f
	.byte	0x67
	.byte	0x36
	.byte	0x20
	.byte	0xf7
	.byte	0
	.section	.debug_types,"G",%progbits,wt.a71f077c216f2974,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xa7
	.byte	0x1f
	.byte	0x7
	.byte	0x7c
	.byte	0x21
	.byte	0x6f
	.byte	0x29
	.byte	0x74
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0xa
	.byte	0x4c
	.byte	0x6
	.4byte	0x38
	.uleb128 0xf
	.4byte	.LASF73
	.byte	0
	.uleb128 0xf
	.4byte	.LASF74
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.file 11 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.section	.debug_types,"G",%progbits,wt.8379cf7f673620f7,comdat
	.4byte	0x68
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x83
	.byte	0x79
	.byte	0xcf
	.byte	0x7f
	.byte	0x67
	.byte	0x36
	.byte	0x20
	.byte	0xf7
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0xa
	.byte	0x3d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xa
	.byte	0x3f
	.byte	0x14
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xa
	.byte	0x40
	.byte	0xd
	.4byte	0x47
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0x64
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0xb
	.2byte	0x449
	.byte	0x3
	.byte	0x21
	.byte	0xc1
	.byte	0xaa
	.byte	0x84
	.byte	0x64
	.byte	0x69
	.byte	0x9d
	.byte	0x44
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.file 12 "../../../../../../modules/nrfx/hal/nrf_twi.h"
	.section	.debug_types,"G",%progbits,wt.7d73537074c8c646,comdat
	.4byte	0x4b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x7d
	.byte	0x73
	.byte	0x53
	.byte	0x70
	.byte	0x74
	.byte	0xc8
	.byte	0xc6
	.byte	0x46
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x4
	.4byte	0x47
	.byte	0xc
	.byte	0x84
	.byte	0x1
	.4byte	0x47
	.uleb128 0x10
	.4byte	.LASF78
	.4byte	0x1980000
	.uleb128 0x10
	.4byte	.LASF79
	.4byte	0x4000000
	.uleb128 0x10
	.4byte	.LASF80
	.4byte	0x6680000
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0
	.section	.debug_types,"G",%progbits,wt.0285bf371c2c11b5,comdat
	.4byte	0x68
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x2
	.byte	0x85
	.byte	0xbf
	.byte	0x37
	.byte	0x1c
	.byte	0x2c
	.byte	0x11
	.byte	0xb5
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x9
	.byte	0x3d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x9
	.byte	0x3f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x9
	.byte	0x40
	.byte	0xd
	.4byte	0x47
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x53
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0x64
	.uleb128 0x15
	.4byte	.LASF82
	.byte	0xb
	.2byte	0x3c1
	.byte	0x3
	.byte	0xd1
	.byte	0xd7
	.byte	0xf4
	.byte	0xed
	.byte	0xfe
	.byte	0x4c
	.byte	0x1c
	.byte	0xc2
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.file 13 "../../../../../../components/libraries/util/app_util_platform.h"
	.section	.debug_types,"G",%progbits,wt.604a4f5829a78ab2,comdat
	.4byte	0x54
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x60
	.byte	0x4a
	.byte	0x4f
	.byte	0x58
	.byte	0x29
	.byte	0xa7
	.byte	0x8a
	.byte	0xb2
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0xd
	.byte	0x5c
	.byte	0x1
	.4byte	0x50
	.uleb128 0xf
	.4byte	.LASF83
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF84
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF85
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF86
	.byte	0x6
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0x7
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0xf
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.byte	0
	.file 14 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
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
	.byte	0xe
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xe
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xe
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x4b
	.uleb128 0x8
	.4byte	0x5b
	.uleb128 0x16
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0x17
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0
	.section	.debug_types,"G",%progbits,wt.21c1aa8464699d44,comdat
	.4byte	0x369
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x21
	.byte	0xc1
	.byte	0xaa
	.byte	0x84
	.byte	0x64
	.byte	0x69
	.byte	0x9d
	.byte	0x44
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x18
	.2byte	0x58c
	.byte	0xb
	.2byte	0x421
	.byte	0x9
	.4byte	0x25a
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0xb
	.2byte	0x422
	.byte	0x15
	.4byte	0x25a
	.byte	0
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0xb
	.2byte	0x423
	.byte	0x1b
	.4byte	0x25f
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0xb
	.2byte	0x424
	.byte	0x15
	.4byte	0x25a
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0xb
	.2byte	0x425
	.byte	0x1b
	.4byte	0x264
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0xb
	.2byte	0x426
	.byte	0x15
	.4byte	0x25a
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0xb
	.2byte	0x427
	.byte	0x1b
	.4byte	0x25f
	.byte	0x18
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0xb
	.2byte	0x428
	.byte	0x15
	.4byte	0x25a
	.byte	0x1c
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0xb
	.2byte	0x429
	.byte	0x15
	.4byte	0x25a
	.byte	0x20
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0xb
	.2byte	0x42a
	.byte	0x1b
	.4byte	0x269
	.byte	0x24
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0xb
	.2byte	0x42b
	.byte	0x15
	.4byte	0x25a
	.2byte	0x104
	.uleb128 0x1a
	.4byte	.LASF101
	.byte	0xb
	.2byte	0x42c
	.byte	0x15
	.4byte	0x25a
	.2byte	0x108
	.uleb128 0x1a
	.4byte	.LASF102
	.byte	0xb
	.2byte	0x42d
	.byte	0x1b
	.4byte	0x26e
	.2byte	0x10c
	.uleb128 0x1a
	.4byte	.LASF103
	.byte	0xb
	.2byte	0x42e
	.byte	0x15
	.4byte	0x25a
	.2byte	0x11c
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0xb
	.2byte	0x42f
	.byte	0x1b
	.4byte	0x25f
	.2byte	0x120
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0xb
	.2byte	0x430
	.byte	0x15
	.4byte	0x25a
	.2byte	0x124
	.uleb128 0x1a
	.4byte	.LASF106
	.byte	0xb
	.2byte	0x431
	.byte	0x1b
	.4byte	0x273
	.2byte	0x128
	.uleb128 0x1a
	.4byte	.LASF107
	.byte	0xb
	.2byte	0x432
	.byte	0x15
	.4byte	0x25a
	.2byte	0x138
	.uleb128 0x1a
	.4byte	.LASF108
	.byte	0xb
	.2byte	0x434
	.byte	0x1b
	.4byte	0x278
	.2byte	0x13c
	.uleb128 0x1a
	.4byte	.LASF109
	.byte	0xb
	.2byte	0x435
	.byte	0x15
	.4byte	0x25a
	.2byte	0x148
	.uleb128 0x1a
	.4byte	.LASF110
	.byte	0xb
	.2byte	0x436
	.byte	0x1b
	.4byte	0x27d
	.2byte	0x14c
	.uleb128 0x1a
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x437
	.byte	0x15
	.4byte	0x25a
	.2byte	0x200
	.uleb128 0x1a
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x438
	.byte	0x1b
	.4byte	0x282
	.2byte	0x204
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x439
	.byte	0x15
	.4byte	0x25a
	.2byte	0x304
	.uleb128 0x1a
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x43a
	.byte	0x15
	.4byte	0x25a
	.2byte	0x308
	.uleb128 0x1a
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x43b
	.byte	0x1b
	.4byte	0x287
	.2byte	0x30c
	.uleb128 0x1a
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x43c
	.byte	0x15
	.4byte	0x25a
	.2byte	0x4c4
	.uleb128 0x1a
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x43d
	.byte	0x1b
	.4byte	0x28c
	.2byte	0x4c8
	.uleb128 0x1a
	.4byte	.LASF118
	.byte	0xb
	.2byte	0x43e
	.byte	0x15
	.4byte	0x25a
	.2byte	0x500
	.uleb128 0x1a
	.4byte	.LASF119
	.byte	0xb
	.2byte	0x43f
	.byte	0x1b
	.4byte	0x25f
	.2byte	0x504
	.uleb128 0x1a
	.4byte	.LASF120
	.byte	0xb
	.2byte	0x440
	.byte	0x15
	.4byte	0x25a
	.2byte	0x508
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0xb
	.2byte	0x441
	.byte	0x15
	.4byte	0x25a
	.2byte	0x50c
	.uleb128 0x1a
	.4byte	.LASF122
	.byte	0xb
	.2byte	0x442
	.byte	0x1b
	.4byte	0x291
	.2byte	0x510
	.uleb128 0x1b
	.ascii	"RXD\000"
	.byte	0xb
	.2byte	0x443
	.byte	0x1b
	.4byte	0x25f
	.2byte	0x518
	.uleb128 0x1b
	.ascii	"TXD\000"
	.byte	0xb
	.2byte	0x444
	.byte	0x15
	.4byte	0x25a
	.2byte	0x51c
	.uleb128 0x1a
	.4byte	.LASF123
	.byte	0xb
	.2byte	0x445
	.byte	0x1b
	.4byte	0x25f
	.2byte	0x520
	.uleb128 0x1a
	.4byte	.LASF124
	.byte	0xb
	.2byte	0x446
	.byte	0x15
	.4byte	0x25a
	.2byte	0x524
	.uleb128 0x1a
	.4byte	.LASF125
	.byte	0xb
	.2byte	0x447
	.byte	0x1b
	.4byte	0x296
	.2byte	0x528
	.uleb128 0x1a
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x448
	.byte	0x15
	.4byte	0x25a
	.2byte	0x588
	.byte	0
	.uleb128 0x8
	.4byte	0x29b
	.uleb128 0x8
	.4byte	0x2a7
	.uleb128 0x8
	.4byte	0x2ac
	.uleb128 0x8
	.4byte	0x2b1
	.uleb128 0x8
	.4byte	0x2b6
	.uleb128 0x8
	.4byte	0x2b6
	.uleb128 0x8
	.4byte	0x2bb
	.uleb128 0x8
	.4byte	0x2c0
	.uleb128 0x8
	.4byte	0x2c5
	.uleb128 0x8
	.4byte	0x2ca
	.uleb128 0x8
	.4byte	0x2cf
	.uleb128 0x8
	.4byte	0x2ac
	.uleb128 0x8
	.4byte	0x2d4
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x2d9
	.uleb128 0x7
	.4byte	0x29b
	.uleb128 0x7
	.4byte	0x2e0
	.uleb128 0x7
	.4byte	0x2f0
	.uleb128 0x7
	.4byte	0x300
	.uleb128 0x7
	.4byte	0x310
	.uleb128 0x7
	.4byte	0x320
	.uleb128 0x7
	.4byte	0x330
	.uleb128 0x7
	.4byte	0x340
	.uleb128 0x7
	.4byte	0x350
	.uleb128 0x7
	.4byte	0x360
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x2f0
	.uleb128 0x17
	.4byte	0x2d9
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x300
	.uleb128 0x17
	.4byte	0x2d9
	.byte	0x37
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x310
	.uleb128 0x17
	.4byte	0x2d9
	.byte	0x3
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x320
	.uleb128 0x17
	.4byte	0x2d9
	.byte	0x2
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x330
	.uleb128 0x17
	.4byte	0x2d9
	.byte	0x2c
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x340
	.uleb128 0x17
	.4byte	0x2d9
	.byte	0x3f
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x350
	.uleb128 0x17
	.4byte	0x2d9
	.byte	0x6d
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x360
	.uleb128 0x17
	.4byte	0x2d9
	.byte	0xd
	.byte	0
	.uleb128 0x1c
	.4byte	0x25f
	.uleb128 0x17
	.4byte	0x2d9
	.byte	0x17
	.byte	0
	.byte	0
	.section	.debug_types,"G",%progbits,wt.d1d7f4edfe4c1cc2,comdat
	.4byte	0x3cb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xd1
	.byte	0xd7
	.byte	0xf4
	.byte	0xed
	.byte	0xfe
	.byte	0x4c
	.byte	0x1c
	.byte	0xc2
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x18
	.2byte	0x58c
	.byte	0xb
	.2byte	0x398
	.byte	0x9
	.4byte	0x25a
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0xb
	.2byte	0x399
	.byte	0x15
	.4byte	0x25a
	.byte	0
	.uleb128 0x19
	.4byte	.LASF92
	.byte	0xb
	.2byte	0x39a
	.byte	0x1b
	.4byte	0x25f
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0xb
	.2byte	0x39b
	.byte	0x15
	.4byte	0x25a
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0xb
	.2byte	0x39c
	.byte	0x1b
	.4byte	0x264
	.byte	0xc
	.uleb128 0x19
	.4byte	.LASF95
	.byte	0xb
	.2byte	0x39d
	.byte	0x15
	.4byte	0x25a
	.byte	0x14
	.uleb128 0x19
	.4byte	.LASF96
	.byte	0xb
	.2byte	0x39f
	.byte	0x1b
	.4byte	0x25f
	.byte	0x18
	.uleb128 0x19
	.4byte	.LASF97
	.byte	0xb
	.2byte	0x3a0
	.byte	0x15
	.4byte	0x25a
	.byte	0x1c
	.uleb128 0x19
	.4byte	.LASF98
	.byte	0xb
	.2byte	0x3a1
	.byte	0x15
	.4byte	0x25a
	.byte	0x20
	.uleb128 0x19
	.4byte	.LASF99
	.byte	0xb
	.2byte	0x3a2
	.byte	0x1b
	.4byte	0x269
	.byte	0x24
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0xb
	.2byte	0x3a3
	.byte	0x15
	.4byte	0x25a
	.2byte	0x104
	.uleb128 0x1a
	.4byte	.LASF102
	.byte	0xb
	.2byte	0x3a4
	.byte	0x1b
	.4byte	0x26e
	.2byte	0x108
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0xb
	.2byte	0x3a5
	.byte	0x15
	.4byte	0x25a
	.2byte	0x124
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0xb
	.2byte	0x3a6
	.byte	0x1b
	.4byte	0x273
	.2byte	0x128
	.uleb128 0x1a
	.4byte	.LASF109
	.byte	0xb
	.2byte	0x3a7
	.byte	0x15
	.4byte	0x25a
	.2byte	0x148
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0xb
	.2byte	0x3a9
	.byte	0x15
	.4byte	0x25a
	.2byte	0x14c
	.uleb128 0x1a
	.4byte	.LASF128
	.byte	0xb
	.2byte	0x3aa
	.byte	0x15
	.4byte	0x25a
	.2byte	0x150
	.uleb128 0x1a
	.4byte	.LASF106
	.byte	0xb
	.2byte	0x3ab
	.byte	0x1b
	.4byte	0x278
	.2byte	0x154
	.uleb128 0x1a
	.4byte	.LASF129
	.byte	0xb
	.2byte	0x3ac
	.byte	0x15
	.4byte	0x25a
	.2byte	0x15c
	.uleb128 0x1a
	.4byte	.LASF130
	.byte	0xb
	.2byte	0x3ad
	.byte	0x15
	.4byte	0x25a
	.2byte	0x160
	.uleb128 0x1a
	.4byte	.LASF108
	.byte	0xb
	.2byte	0x3ae
	.byte	0x1b
	.4byte	0x27d
	.2byte	0x164
	.uleb128 0x1a
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x3af
	.byte	0x15
	.4byte	0x25a
	.2byte	0x200
	.uleb128 0x1a
	.4byte	.LASF110
	.byte	0xb
	.2byte	0x3b0
	.byte	0x1b
	.4byte	0x282
	.2byte	0x204
	.uleb128 0x1a
	.4byte	.LASF131
	.byte	0xb
	.2byte	0x3b1
	.byte	0x15
	.4byte	0x25a
	.2byte	0x300
	.uleb128 0x1a
	.4byte	.LASF113
	.byte	0xb
	.2byte	0x3b2
	.byte	0x15
	.4byte	0x25a
	.2byte	0x304
	.uleb128 0x1a
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x3b3
	.byte	0x15
	.4byte	0x25a
	.2byte	0x308
	.uleb128 0x1a
	.4byte	.LASF112
	.byte	0xb
	.2byte	0x3b4
	.byte	0x1b
	.4byte	0x287
	.2byte	0x30c
	.uleb128 0x1a
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x3b5
	.byte	0x15
	.4byte	0x25a
	.2byte	0x4c4
	.uleb128 0x1a
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x3b6
	.byte	0x1b
	.4byte	0x28c
	.2byte	0x4c8
	.uleb128 0x1a
	.4byte	.LASF118
	.byte	0xb
	.2byte	0x3b7
	.byte	0x15
	.4byte	0x25a
	.2byte	0x500
	.uleb128 0x1a
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x3b8
	.byte	0x1b
	.4byte	0x25f
	.2byte	0x504
	.uleb128 0x1a
	.4byte	.LASF132
	.byte	0xb
	.2byte	0x3b9
	.byte	0x12
	.4byte	0x291
	.2byte	0x508
	.uleb128 0x1a
	.4byte	.LASF119
	.byte	0xb
	.2byte	0x3ba
	.byte	0x1b
	.4byte	0x2a2
	.2byte	0x510
	.uleb128 0x1a
	.4byte	.LASF124
	.byte	0xb
	.2byte	0x3bb
	.byte	0x15
	.4byte	0x25a
	.2byte	0x524
	.uleb128 0x1a
	.4byte	.LASF122
	.byte	0xb
	.2byte	0x3bc
	.byte	0x1b
	.4byte	0x2a7
	.2byte	0x528
	.uleb128 0x1b
	.ascii	"RXD\000"
	.byte	0xb
	.2byte	0x3bd
	.byte	0x11
	.4byte	0x2ac
	.2byte	0x534
	.uleb128 0x1b
	.ascii	"TXD\000"
	.byte	0xb
	.2byte	0x3be
	.byte	0x11
	.4byte	0x2bd
	.2byte	0x544
	.uleb128 0x1a
	.4byte	.LASF123
	.byte	0xb
	.2byte	0x3bf
	.byte	0x1b
	.4byte	0x2ce
	.2byte	0x554
	.uleb128 0x1a
	.4byte	.LASF126
	.byte	0xb
	.2byte	0x3c0
	.byte	0x15
	.4byte	0x25a
	.2byte	0x588
	.byte	0
	.uleb128 0x8
	.4byte	0x2d3
	.uleb128 0x8
	.4byte	0x2df
	.uleb128 0x8
	.4byte	0x2e4
	.uleb128 0x8
	.4byte	0x2e9
	.uleb128 0x8
	.4byte	0x2ee
	.uleb128 0x8
	.4byte	0x2f3
	.uleb128 0x8
	.4byte	0x2e4
	.uleb128 0x8
	.4byte	0x2f8
	.uleb128 0x8
	.4byte	0x2fd
	.uleb128 0x8
	.4byte	0x302
	.uleb128 0x8
	.4byte	0x307
	.uleb128 0x15
	.4byte	.LASF133
	.byte	0xb
	.2byte	0x11d
	.byte	0x3
	.byte	0xb0
	.byte	0xf3
	.byte	0x7e
	.byte	0xd0
	.byte	0xbd
	.byte	0x35
	.byte	0x20
	.byte	0x83
	.uleb128 0x8
	.4byte	0x30c
	.uleb128 0x8
	.4byte	0x311
	.uleb128 0x15
	.4byte	.LASF134
	.byte	0xb
	.2byte	0x124
	.byte	0x3
	.byte	0
	.byte	0xa4
	.byte	0xa
	.byte	0x40
	.byte	0x16
	.byte	0x86
	.byte	0xa8
	.byte	0x8
	.uleb128 0x15
	.4byte	.LASF135
	.byte	0xb
	.2byte	0x12b
	.byte	0x3
	.byte	0
	.byte	0xa4
	.byte	0xa
	.byte	0x40
	.byte	0x16
	.byte	0x86
	.byte	0xa8
	.byte	0x8
	.uleb128 0x8
	.4byte	0x316
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x31b
	.uleb128 0x7
	.4byte	0x2d3
	.uleb128 0x7
	.4byte	0x322
	.uleb128 0x7
	.4byte	0x332
	.uleb128 0x7
	.4byte	0x342
	.uleb128 0x7
	.4byte	0x352
	.uleb128 0x7
	.4byte	0x362
	.uleb128 0x7
	.4byte	0x372
	.uleb128 0x7
	.4byte	0x382
	.uleb128 0x7
	.4byte	0x392
	.uleb128 0x7
	.4byte	0x3a2
	.uleb128 0x7
	.4byte	0x3b2
	.uleb128 0x7
	.4byte	0x3c2
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x332
	.uleb128 0x17
	.4byte	0x31b
	.byte	0x1
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x342
	.uleb128 0x17
	.4byte	0x31b
	.byte	0x37
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x352
	.uleb128 0x17
	.4byte	0x31b
	.byte	0x6
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x362
	.uleb128 0x17
	.4byte	0x31b
	.byte	0x7
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x372
	.uleb128 0x17
	.4byte	0x31b
	.byte	0x26
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x382
	.uleb128 0x17
	.4byte	0x31b
	.byte	0x3e
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x392
	.uleb128 0x17
	.4byte	0x31b
	.byte	0x6d
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x3a2
	.uleb128 0x17
	.4byte	0x31b
	.byte	0xd
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x3b2
	.uleb128 0x17
	.4byte	0x31b
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	0x25f
	.4byte	0x3c2
	.uleb128 0x17
	.4byte	0x31b
	.byte	0x2
	.byte	0
	.uleb128 0x1c
	.4byte	0x25f
	.uleb128 0x17
	.4byte	0x31b
	.byte	0xc
	.byte	0
	.byte	0
	.section	.debug_types,"G",%progbits,wt.00a40a401686a808,comdat
	.4byte	0x7f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0
	.byte	0xa4
	.byte	0xa
	.byte	0x40
	.byte	0x16
	.byte	0x86
	.byte	0xa8
	.byte	0x8
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x1d
	.byte	0x10
	.byte	0xb
	.2byte	0x126
	.byte	0x9
	.4byte	0x60
	.uleb128 0x1e
	.ascii	"PTR\000"
	.byte	0xb
	.2byte	0x127
	.byte	0x15
	.4byte	0x60
	.byte	0
	.uleb128 0x19
	.4byte	.LASF136
	.byte	0xb
	.2byte	0x128
	.byte	0x15
	.4byte	0x60
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF137
	.byte	0xb
	.2byte	0x129
	.byte	0x1b
	.4byte	0x65
	.byte	0x8
	.uleb128 0x19
	.4byte	.LASF138
	.byte	0xb
	.2byte	0x12a
	.byte	0x15
	.4byte	0x60
	.byte	0xc
	.byte	0
	.uleb128 0x8
	.4byte	0x6a
	.uleb128 0x8
	.4byte	0x76
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x7b
	.uleb128 0x7
	.4byte	0x6a
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0
	.section	.debug_types,"G",%progbits,wt.b0f37ed0bd352083,comdat
	.4byte	0x59
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xb0
	.byte	0xf3
	.byte	0x7e
	.byte	0xd0
	.byte	0xbd
	.byte	0x35
	.byte	0x20
	.byte	0x83
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x1d
	.byte	0x8
	.byte	0xb
	.2byte	0x11a
	.byte	0x9
	.4byte	0x44
	.uleb128 0x1e
	.ascii	"SCL\000"
	.byte	0xb
	.2byte	0x11b
	.byte	0x15
	.4byte	0x44
	.byte	0
	.uleb128 0x1e
	.ascii	"SDA\000"
	.byte	0xb
	.2byte	0x11c
	.byte	0x15
	.4byte	0x44
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	0x49
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x55
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0
	.file 15 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.4byte	.LASF142
	.byte	0x8
	.byte	0xf
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x19
	.4byte	.LASF139
	.byte	0xf
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x19
	.4byte	.LASF140
	.byte	0xf
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x20
	.4byte	.LASF141
	.byte	0xf
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x61
	.uleb128 0x21
	.4byte	0x70
	.4byte	0x70
	.uleb128 0xd
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.4byte	0x82
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF48
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
	.uleb128 0x23
	.4byte	.LASF143
	.byte	0x14
	.byte	0xf
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0xf
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x17
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x55
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x7
	.4byte	0x5a
	.uleb128 0x6
	.4byte	.LASF145
	.byte	0xf
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
	.byte	0xf
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0xf
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0xf
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xf
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
	.uleb128 0x7
	.4byte	0x6f
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF48
	.uleb128 0x6
	.4byte	.LASF149
	.byte	0xf
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
	.uleb128 0x6
	.4byte	.LASF150
	.byte	0xf
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
	.byte	0xf
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0xf
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0xf
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0xf
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0xf
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0xf
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xf
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0xf
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF158
	.byte	0xf
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
	.uleb128 0x21
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0xd
	.4byte	0x130
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0x21
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0x21
	.4byte	0x130
	.4byte	0xea
	.uleb128 0xd
	.4byte	0x137
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0x21
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0xd
	.4byte	0x137
	.byte	0
	.uleb128 0x21
	.4byte	0x130
	.4byte	0x112
	.uleb128 0xd
	.4byte	0x13e
	.uleb128 0xd
	.4byte	0x144
	.uleb128 0xd
	.4byte	0x14b
	.byte	0
	.uleb128 0x21
	.4byte	0x130
	.4byte	0x130
	.uleb128 0xd
	.4byte	0x155
	.uleb128 0xd
	.4byte	0x15b
	.uleb128 0xd
	.4byte	0x144
	.uleb128 0xd
	.4byte	0x14b
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF159
	.uleb128 0x5
	.byte	0x4
	.4byte	0x161
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x24
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
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF48
	.uleb128 0x7
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
	.byte	0xf
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF160
	.byte	0xf
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF161
	.byte	0xf
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF162
	.byte	0xf
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF163
	.byte	0xf
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF164
	.byte	0xf
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF165
	.byte	0xf
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF166
	.byte	0xf
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF167
	.byte	0xf
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF168
	.byte	0xf
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF169
	.byte	0xf
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF170
	.byte	0xf
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF171
	.byte	0xf
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF172
	.byte	0xf
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF173
	.byte	0xf
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF174
	.byte	0xf
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF175
	.byte	0xf
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF176
	.byte	0xf
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF177
	.byte	0xf
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF178
	.byte	0xf
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF179
	.byte	0xf
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF180
	.byte	0xf
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF181
	.byte	0xf
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF182
	.byte	0xf
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF183
	.byte	0xf
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF184
	.byte	0xf
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF185
	.byte	0xf
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF186
	.byte	0xf
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF187
	.byte	0xf
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF188
	.byte	0xf
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF189
	.byte	0xf
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF190
	.byte	0xf
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF191
	.byte	0xf
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF48
	.uleb128 0x7
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
	.uleb128 0x23
	.4byte	.LASF192
	.byte	0x8
	.byte	0xf
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF193
	.byte	0xf
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF194
	.byte	0xf
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF159
	.byte	0
	.file 16 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 17 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 18 "../../../../../../components/libraries/util/app_util.h"
	.file 19 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 20 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
	.file 21 "../../../../../../external/freertos/source/include/queue.h"
	.file 22 "../../../../../../external/freertos/source/include/semphr.h"
	.file 23 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x997
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x25
	.4byte	.LASF267
	.byte	0xc
	.4byte	.LASF268
	.4byte	.LASF269
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF195
	.uleb128 0x9
	.4byte	.LASF10
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0x3c
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x7
	.4byte	0x3c
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF196
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF52
	.uleb128 0x9
	.4byte	.LASF197
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x67
	.uleb128 0x8
	.4byte	0x56
	.uleb128 0x22
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x7a
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF198
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF199
	.uleb128 0xb
	.byte	0x4
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF159
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF48
	.uleb128 0x7
	.4byte	0x98
	.uleb128 0x6
	.4byte	.LASF150
	.byte	0xf
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
	.uleb128 0x7
	.4byte	0xa4
	.uleb128 0x6
	.4byte	.LASF145
	.byte	0xf
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
	.uleb128 0x7
	.4byte	0xb9
	.uleb128 0x26
	.4byte	.LASF200
	.byte	0xf
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
	.uleb128 0x27
	.4byte	.LASF201
	.byte	0xf
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xc9
	.uleb128 0x27
	.4byte	.LASF202
	.byte	0xf
	.2byte	0x110
	.byte	0x25
	.4byte	0xb4
	.uleb128 0x27
	.4byte	.LASF203
	.byte	0xf
	.2byte	0x111
	.byte	0x25
	.4byte	0xb4
	.uleb128 0x16
	.4byte	0x43
	.4byte	0x116
	.uleb128 0x17
	.4byte	0x7a
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.4byte	0x106
	.uleb128 0x27
	.4byte	.LASF204
	.byte	0xf
	.2byte	0x113
	.byte	0x1c
	.4byte	0x116
	.uleb128 0x16
	.4byte	0x9f
	.4byte	0x133
	.uleb128 0x28
	.byte	0
	.uleb128 0x7
	.4byte	0x128
	.uleb128 0x27
	.4byte	.LASF205
	.byte	0xf
	.2byte	0x115
	.byte	0x13
	.4byte	0x133
	.uleb128 0x27
	.4byte	.LASF206
	.byte	0xf
	.2byte	0x116
	.byte	0x13
	.4byte	0x133
	.uleb128 0x27
	.4byte	.LASF207
	.byte	0xf
	.2byte	0x117
	.byte	0x13
	.4byte	0x133
	.uleb128 0x27
	.4byte	.LASF208
	.byte	0xf
	.2byte	0x118
	.byte	0x13
	.4byte	0x133
	.uleb128 0x27
	.4byte	.LASF209
	.byte	0xf
	.2byte	0x11a
	.byte	0x13
	.4byte	0x133
	.uleb128 0x27
	.4byte	.LASF210
	.byte	0xf
	.2byte	0x11b
	.byte	0x13
	.4byte	0x133
	.uleb128 0x27
	.4byte	.LASF211
	.byte	0xf
	.2byte	0x11c
	.byte	0x13
	.4byte	0x133
	.uleb128 0x27
	.4byte	.LASF212
	.byte	0xf
	.2byte	0x11d
	.byte	0x13
	.4byte	0x133
	.uleb128 0x27
	.4byte	.LASF213
	.byte	0xf
	.2byte	0x11e
	.byte	0x13
	.4byte	0x133
	.uleb128 0x27
	.4byte	.LASF214
	.byte	0xf
	.2byte	0x11f
	.byte	0x13
	.4byte	0x133
	.uleb128 0x21
	.4byte	0x67
	.4byte	0x1c9
	.uleb128 0xd
	.4byte	0x1c9
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x29
	.4byte	.LASF228
	.uleb128 0x7
	.4byte	0x1cf
	.uleb128 0x27
	.4byte	.LASF215
	.byte	0xf
	.2byte	0x135
	.byte	0xe
	.4byte	0x1e6
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ba
	.uleb128 0x21
	.4byte	0x67
	.4byte	0x1fb
	.uleb128 0xd
	.4byte	0x1fb
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1cf
	.uleb128 0x27
	.4byte	.LASF216
	.byte	0xf
	.2byte	0x136
	.byte	0xe
	.4byte	0x20e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ec
	.uleb128 0x15
	.4byte	.LASF217
	.byte	0xf
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
	.uleb128 0x27
	.4byte	.LASF218
	.byte	0xf
	.2byte	0x157
	.byte	0x1f
	.4byte	0x232
	.uleb128 0x5
	.byte	0x4
	.4byte	0x214
	.uleb128 0x27
	.4byte	.LASF219
	.byte	0x10
	.2byte	0x744
	.byte	0x19
	.4byte	0x62
	.uleb128 0x2a
	.4byte	.LASF220
	.byte	0x11
	.byte	0x21
	.byte	0x11
	.4byte	0x6e
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0xb
	.2byte	0x449
	.byte	0x3
	.byte	0x21
	.byte	0xc1
	.byte	0xaa
	.byte	0x84
	.byte	0x64
	.byte	0x69
	.byte	0x9d
	.byte	0x44
	.uleb128 0x2a
	.4byte	.LASF221
	.byte	0x12
	.byte	0x53
	.byte	0x11
	.4byte	0x6e
	.uleb128 0x2a
	.4byte	.LASF222
	.byte	0x12
	.byte	0x54
	.byte	0x11
	.4byte	0x6e
	.uleb128 0x2a
	.4byte	.LASF223
	.byte	0x12
	.byte	0x72
	.byte	0x13
	.4byte	0x286
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6e
	.uleb128 0x2a
	.4byte	.LASF224
	.byte	0x12
	.byte	0x73
	.byte	0x11
	.4byte	0x6e
	.uleb128 0x5
	.byte	0x4
	.4byte	0x30
	.uleb128 0x6
	.4byte	.LASF225
	.byte	0xe
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
	.uleb128 0x2a
	.4byte	.LASF226
	.byte	0xe
	.byte	0x75
	.byte	0x19
	.4byte	0x29e
	.uleb128 0x20
	.4byte	.LASF227
	.byte	0x13
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2c7
	.uleb128 0x29
	.4byte	.LASF229
	.uleb128 0x27
	.4byte	.LASF230
	.byte	0x13
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2d9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2ba
	.uleb128 0x27
	.4byte	.LASF231
	.byte	0x13
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2d9
	.uleb128 0x27
	.4byte	.LASF232
	.byte	0x13
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2d9
	.uleb128 0xa
	.byte	0x1
	.byte	0x2
	.4byte	.LASF64
	.uleb128 0x6
	.4byte	.LASF9
	.byte	0x3
	.byte	0x9d
	.byte	0x3
	.byte	0x50
	.byte	0xe0
	.byte	0xf9
	.byte	0xfa
	.byte	0xf8
	.byte	0x1
	.byte	0x2
	.byte	0xf7
	.uleb128 0x7
	.4byte	0x300
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x8
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
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x8
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
	.uleb128 0x6
	.4byte	.LASF233
	.byte	0x8
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
	.uleb128 0x7
	.4byte	0x335
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x4
	.byte	0x4a
	.byte	0x3
	.byte	0xdb
	.byte	0x13
	.byte	0x32
	.byte	0x41
	.byte	0x81
	.byte	0xdf
	.byte	0x8e
	.byte	0xf2
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x4
	.byte	0x5f
	.byte	0x3
	.byte	0x43
	.byte	0x7f
	.byte	0xee
	.byte	0xf1
	.byte	0x97
	.byte	0x49
	.byte	0x3
	.byte	0x42
	.uleb128 0x7
	.4byte	0x35a
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x2
	.byte	0xa2
	.byte	0x3
	.byte	0xab
	.byte	0x85
	.byte	0x1a
	.byte	0x84
	.byte	0xea
	.byte	0x9b
	.byte	0x6e
	.byte	0x8d
	.uleb128 0x7
	.4byte	0x36f
	.uleb128 0x5
	.byte	0x4
	.4byte	0x310
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x2
	.byte	0xb6
	.byte	0x3
	.byte	0xbb
	.byte	0x6e
	.byte	0xbe
	.byte	0xa5
	.byte	0x26
	.byte	0x27
	.byte	0x3d
	.byte	0xa8
	.uleb128 0x7
	.4byte	0x38a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x39a
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x2
	.byte	0xc7
	.byte	0x3
	.byte	0xcb
	.byte	0x6e
	.byte	0xe5
	.byte	0x6f
	.byte	0x23
	.byte	0x74
	.byte	0xf6
	.byte	0x76
	.uleb128 0x6
	.4byte	.LASF234
	.byte	0x2
	.byte	0xd5
	.byte	0x3
	.byte	0x7a
	.byte	0x8
	.byte	0x38
	.byte	0x10
	.byte	0x27
	.byte	0x6f
	.byte	0xe8
	.byte	0xfd
	.uleb128 0x7
	.4byte	0x3b5
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF235
	.uleb128 0x9
	.4byte	.LASF236
	.byte	0x14
	.byte	0x39
	.byte	0xe
	.4byte	0x91
	.uleb128 0x9
	.4byte	.LASF237
	.byte	0x14
	.byte	0x40
	.byte	0x16
	.4byte	0x6e
	.uleb128 0x16
	.4byte	0x30
	.4byte	0x3f9
	.uleb128 0x17
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	.LASF238
	.byte	0x15
	.byte	0x2f
	.byte	0x10
	.4byte	0x8f
	.uleb128 0x9
	.4byte	.LASF239
	.byte	0x16
	.byte	0x26
	.byte	0x17
	.4byte	0x3f9
	.uleb128 0x27
	.4byte	.LASF240
	.byte	0x17
	.2byte	0x124
	.byte	0x2e
	.4byte	0x325
	.uleb128 0x2b
	.4byte	.LASF241
	.byte	0x1
	.byte	0xb
	.byte	0x13
	.4byte	0x405
	.uleb128 0x5
	.byte	0x3
	.4byte	i2cSemaphore
	.uleb128 0x2c
	.4byte	.LASF242
	.byte	0x1
	.byte	0xc
	.byte	0x1d
	.4byte	0x3c5
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_twi_mngr
	.uleb128 0x16
	.4byte	0x39f
	.4byte	0x452
	.uleb128 0x17
	.4byte	0x7a
	.byte	0x5
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF243
	.byte	0x1
	.byte	0xe
	.byte	0x2b
	.4byte	0x442
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_twi_mngr_queue_nrf_queue_buffer
	.uleb128 0x2c
	.4byte	.LASF244
	.byte	0x1
	.byte	0xe
	.byte	0x73
	.4byte	0x34a
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_twi_mngr_queue_nrf_queue_cb
	.uleb128 0x2b
	.4byte	.LASF245
	.byte	0x1
	.byte	0xe
	.byte	0xb8
	.4byte	0x345
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_const
	.uleb128 0x2d
	.4byte	.LASF246
	.byte	0x1
	.byte	0xe
	.2byte	0x244
	.4byte	0x325
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_dynamic
	.uleb128 0x2d
	.4byte	.LASF247
	.byte	0x1
	.byte	0xe
	.2byte	0x2f1
	.4byte	0x36a
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_twi_mngr_queue
	.uleb128 0x2e
	.4byte	.LASF248
	.byte	0x1
	.byte	0xe
	.2byte	0x477
	.4byte	0x3a5
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_twi_mngr_cb
	.uleb128 0x2c
	.4byte	.LASF249
	.byte	0x1
	.byte	0x10
	.byte	0x23
	.4byte	0x310
	.uleb128 0x5
	.byte	0x3
	.4byte	bus_config
	.uleb128 0x2f
	.4byte	.LASF250
	.byte	0x1
	.byte	0x57
	.byte	0x1d
	.4byte	0x384
	.4byte	.LFB283
	.4byte	.LFE283-.LFB283
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2f
	.4byte	.LASF251
	.byte	0x1
	.byte	0x53
	.byte	0x17
	.4byte	0x4ff
	.4byte	.LFB282
	.4byte	.LFE282-.LFB282
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3c5
	.uleb128 0x30
	.4byte	.LASF254
	.byte	0x1
	.byte	0x47
	.byte	0x6
	.4byte	.LFB281
	.4byte	.LFE281-.LFB281
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5e0
	.uleb128 0x31
	.4byte	.LASF252
	.byte	0x1
	.byte	0x47
	.byte	0x1e
	.4byte	0x30
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x31
	.4byte	.LASF147
	.byte	0x1
	.byte	0x47
	.byte	0x2f
	.4byte	0x298
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x32
	.ascii	"len\000"
	.byte	0x1
	.byte	0x47
	.byte	0x3d
	.4byte	0x30
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x2c
	.4byte	.LASF253
	.byte	0x1
	.byte	0x48
	.byte	0x25
	.4byte	0x5f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.4byte	.LVL35
	.4byte	0x94c
	.4byte	0x57a
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x33
	.4byte	.LVL36
	.4byte	0x959
	.4byte	0x5ac
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL37
	.4byte	0x966
	.4byte	0x5cc
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL38
	.4byte	0x973
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x37f
	.4byte	0x5f0
	.uleb128 0x17
	.4byte	0x7a
	.byte	0
	.byte	0
	.uleb128 0x7
	.4byte	0x5e0
	.uleb128 0x30
	.4byte	.LASF255
	.byte	0x1
	.byte	0x3c
	.byte	0x6
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6cd
	.uleb128 0x31
	.4byte	.LASF252
	.byte	0x1
	.byte	0x3c
	.byte	0x1c
	.4byte	0x30
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x31
	.4byte	.LASF147
	.byte	0x1
	.byte	0x3c
	.byte	0x2d
	.4byte	0x298
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x32
	.ascii	"len\000"
	.byte	0x1
	.byte	0x3c
	.byte	0x3b
	.4byte	0x30
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x2c
	.4byte	.LASF256
	.byte	0x1
	.byte	0x3d
	.byte	0x25
	.4byte	0x5f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x33
	.4byte	.LVL28
	.4byte	0x94c
	.4byte	0x66a
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x33
	.4byte	.LVL29
	.4byte	0x959
	.4byte	0x69c
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.4byte	.LVL30
	.4byte	0x966
	.4byte	0x6b9
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL31
	.4byte	0x973
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF257
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7bc
	.uleb128 0x31
	.4byte	.LASF252
	.byte	0x1
	.byte	0x30
	.byte	0x18
	.4byte	0x30
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x31
	.4byte	.LASF258
	.byte	0x1
	.byte	0x30
	.byte	0x28
	.4byte	0x30
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x31
	.4byte	.LASF147
	.byte	0x1
	.byte	0x30
	.byte	0x37
	.4byte	0x298
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x32
	.ascii	"len\000"
	.byte	0x1
	.byte	0x30
	.byte	0x45
	.4byte	0x30
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2c
	.4byte	.LASF253
	.byte	0x1
	.byte	0x31
	.byte	0x25
	.4byte	0x7cc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x33
	.4byte	.LVL21
	.4byte	0x94c
	.4byte	0x756
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x33
	.4byte	.LVL22
	.4byte	0x959
	.4byte	0x788
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL23
	.4byte	0x966
	.4byte	0x7a8
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x35
	.4byte	.LVL24
	.4byte	0x973
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x37f
	.4byte	0x7cc
	.uleb128 0x17
	.4byte	0x7a
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	0x7bc
	.uleb128 0x30
	.4byte	.LASF259
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8ef
	.uleb128 0x31
	.4byte	.LASF252
	.byte	0x1
	.byte	0x20
	.byte	0x16
	.4byte	0x30
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x31
	.4byte	.LASF258
	.byte	0x1
	.byte	0x20
	.byte	0x25
	.4byte	0x30
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x31
	.4byte	.LASF147
	.byte	0x1
	.byte	0x20
	.byte	0x33
	.4byte	0x298
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x32
	.ascii	"len\000"
	.byte	0x1
	.byte	0x20
	.byte	0x40
	.4byte	0x30
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2c
	.4byte	.LASF260
	.byte	0x1
	.byte	0x21
	.byte	0x15
	.4byte	0x3e9
	.uleb128 0x5
	.byte	0x3
	.4byte	buffer.9946
	.uleb128 0x2c
	.4byte	.LASF256
	.byte	0x1
	.byte	0x26
	.byte	0x25
	.4byte	0x5f0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x36
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x878
	.uleb128 0x37
	.ascii	"i\000"
	.byte	0x1
	.byte	0x23
	.byte	0xf
	.4byte	0x67
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x33
	.4byte	.LVL12
	.4byte	0x94c
	.4byte	0x88c
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x33
	.4byte	.LVL13
	.4byte	0x959
	.4byte	0x8be
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x34
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.4byte	.LVL14
	.4byte	0x966
	.4byte	0x8db
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x35
	.4byte	.LVL15
	.4byte	0x973
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF270
	.byte	0x1
	.byte	0x19
	.byte	0x6
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x94c
	.uleb128 0x33
	.4byte	.LVL0
	.4byte	0x980
	.4byte	0x918
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x33
	.4byte	.LVL1
	.4byte	0x98d
	.4byte	0x938
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR2
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.uleb128 0x35
	.4byte	.LVL2
	.4byte	0x973
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x39
	.4byte	.LASF261
	.4byte	.LASF261
	.byte	0x15
	.2byte	0x589
	.byte	0xc
	.uleb128 0x39
	.4byte	.LASF262
	.4byte	.LASF262
	.byte	0x2
	.2byte	0x136
	.byte	0xc
	.uleb128 0x39
	.4byte	.LASF263
	.4byte	.LASF263
	.byte	0x15
	.2byte	0x289
	.byte	0xc
	.uleb128 0x39
	.4byte	.LASF264
	.4byte	.LASF264
	.byte	0x17
	.2byte	0x1ab
	.byte	0x6
	.uleb128 0x39
	.4byte	.LASF265
	.4byte	.LASF265
	.byte	0x15
	.2byte	0x585
	.byte	0xf
	.uleb128 0x39
	.4byte	.LASF266
	.4byte	.LASF266
	.byte	0x2
	.2byte	0x100
	.byte	0xc
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x20
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x2d
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS12:
	.uleb128 0
	.uleb128 .LVU104
	.uleb128 .LVU104
	.uleb128 0
.LLST12:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33
	.4byte	.LFE281
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST13:
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	.LVL35-1
	.4byte	.LFE281
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST14:
	.4byte	.LVL32
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35-1
	.4byte	.LFE281
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 0
.LLST9:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26
	.4byte	.LFE280
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 0
.LLST10:
	.4byte	.LVL25
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL27
	.4byte	.LVL28-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -16
	.4byte	.LVL28-1
	.4byte	.LFE280
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 0
.LLST11:
	.4byte	.LVL25
	.4byte	.LVL28-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL28-1
	.4byte	.LFE280
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LFE279
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU59
	.uleb128 .LVU59
	.uleb128 .LVU60
	.uleb128 .LVU60
	.uleb128 .LVU67
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LVL18
	.4byte	.LVL21-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -24
	.byte	0x6
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 0
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL21-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL21-1
	.4byte	.LFE279
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU66
	.uleb128 .LVU66
	.uleb128 .LVU67
	.uleb128 .LVU67
	.uleb128 0
.LLST8:
	.4byte	.LVL16
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL21-1
	.2byte	0x2
	.byte	0x91
	.sleb128 -12
	.4byte	.LVL21-1
	.4byte	.LFE279
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 0
.LLST0:
	.4byte	.LVL3
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10
	.4byte	.LFE278
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5
	.4byte	.LFE278
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8
	.4byte	.LFE278
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL9
	.4byte	.LFE278
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU23
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU29
	.uleb128 .LVU29
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 .LVU42
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x71
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x4b2
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x99b
	.4byte	0x2b
	.ascii	"APP_IRQ_PRIORITY_HIGHEST\000"
	.4byte	0x31
	.ascii	"APP_IRQ_PRIORITY_HIGH\000"
	.4byte	0x37
	.ascii	"APP_IRQ_PRIORITY_MID\000"
	.4byte	0x3d
	.ascii	"APP_IRQ_PRIORITY_LOW\000"
	.4byte	0x43
	.ascii	"APP_IRQ_PRIORITY_LOWEST\000"
	.4byte	0x49
	.ascii	"APP_IRQ_PRIORITY_THREAD\000"
	.4byte	0x2b
	.ascii	"NRF_TWI_FREQ_100K\000"
	.4byte	0x34
	.ascii	"NRF_TWI_FREQ_250K\000"
	.4byte	0x3d
	.ascii	"NRF_TWI_FREQ_400K\000"
	.4byte	0x2b
	.ascii	"NRFX_TWI1_INST_IDX\000"
	.4byte	0x31
	.ascii	"NRFX_TWI_ENABLED_COUNT\000"
	.4byte	0x2b
	.ascii	"NRF_DRV_TWI_FREQ_100K\000"
	.4byte	0x34
	.ascii	"NRF_DRV_TWI_FREQ_250K\000"
	.4byte	0x3d
	.ascii	"NRF_DRV_TWI_FREQ_400K\000"
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
	.4byte	0x2b
	.ascii	"NRF_QUEUE_MODE_OVERFLOW\000"
	.4byte	0x31
	.ascii	"NRF_QUEUE_MODE_NO_OVERFLOW\000"
	.4byte	0x41e
	.ascii	"i2cSemaphore\000"
	.4byte	0x430
	.ascii	"m_nrf_twi_mngr\000"
	.4byte	0x452
	.ascii	"m_nrf_twi_mngr_queue_nrf_queue_buffer\000"
	.4byte	0x464
	.ascii	"m_nrf_twi_mngr_queue_nrf_queue_cb\000"
	.4byte	0x476
	.ascii	"m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_cons"
	.ascii	"t\000"
	.4byte	0x488
	.ascii	"m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_dyna"
	.ascii	"mic\000"
	.4byte	0x49b
	.ascii	"m_nrf_twi_mngr_queue\000"
	.4byte	0x4ae
	.ascii	"m_nrf_twi_mngr_cb\000"
	.4byte	0x430
	.ascii	"m_nrf_twi_mngr\000"
	.4byte	0x4c1
	.ascii	"bus_config\000"
	.4byte	0x452
	.ascii	"m_nrf_twi_mngr_queue_nrf_queue_buffer\000"
	.4byte	0x464
	.ascii	"m_nrf_twi_mngr_queue_nrf_queue_cb\000"
	.4byte	0x4ae
	.ascii	"m_nrf_twi_mngr_cb\000"
	.4byte	0x41e
	.ascii	"i2cSemaphore\000"
	.4byte	0x488
	.ascii	"m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_dyna"
	.ascii	"mic\000"
	.4byte	0x4d3
	.ascii	"getBusConfig\000"
	.4byte	0x4e9
	.ascii	"getTWIManagerAddress\000"
	.4byte	0x505
	.ascii	"i2cReciveNOADDR\000"
	.4byte	0x5f5
	.ascii	"i2cSendNOADDR\000"
	.4byte	0x6cd
	.ascii	"i2cRecive\000"
	.4byte	0x7d1
	.ascii	"i2cSend\000"
	.4byte	0x8ef
	.ascii	"i2cInit\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x2ed
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x99b
	.4byte	0x29
	.ascii	"signed char\000"
	.4byte	0x3c
	.ascii	"unsigned char\000"
	.4byte	0x30
	.ascii	"uint8_t\000"
	.4byte	0x48
	.ascii	"short int\000"
	.4byte	0x4f
	.ascii	"short unsigned int\000"
	.4byte	0x67
	.ascii	"int\000"
	.4byte	0x56
	.ascii	"int32_t\000"
	.4byte	0x7a
	.ascii	"unsigned int\000"
	.4byte	0x6e
	.ascii	"uint32_t\000"
	.4byte	0x81
	.ascii	"long long int\000"
	.4byte	0x88
	.ascii	"long long unsigned int\000"
	.4byte	0x91
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0x98
	.ascii	"char\000"
	.4byte	0xa4
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xb9
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x214
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x251
	.ascii	"NRF_TWI_Type\000"
	.4byte	0x29e
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2ba
	.ascii	"FILE\000"
	.4byte	0x2f9
	.ascii	"_Bool\000"
	.4byte	0x300
	.ascii	"nrf_drv_twi_config_t\000"
	.4byte	0x315
	.ascii	"nrf_log_severity_t\000"
	.4byte	0x325
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x335
	.ascii	"nrf_log_module_const_data_t\000"
	.4byte	0x34a
	.ascii	"nrf_queue_cb_t\000"
	.4byte	0x35a
	.ascii	"nrf_queue_t\000"
	.4byte	0x36f
	.ascii	"nrf_twi_mngr_transfer_t\000"
	.4byte	0x38a
	.ascii	"nrf_twi_mngr_transaction_t\000"
	.4byte	0x3a5
	.ascii	"nrf_twi_mngr_cb_t\000"
	.4byte	0x3b5
	.ascii	"nrf_twi_mngr_t\000"
	.4byte	0x3ca
	.ascii	"long unsigned int\000"
	.4byte	0x3d1
	.ascii	"BaseType_t\000"
	.4byte	0x3dd
	.ascii	"TickType_t\000"
	.4byte	0x3f9
	.ascii	"QueueHandle_t\000"
	.4byte	0x405
	.ascii	"SemaphoreHandle_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.4byte	.LFB281
	.4byte	.LFE281-.LFB281
	.4byte	.LFB282
	.4byte	.LFE282-.LFB282
	.4byte	.LFB283
	.4byte	.LFE283-.LFB283
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB277
	.4byte	.LFE277
	.4byte	.LFB278
	.4byte	.LFE278
	.4byte	.LFB279
	.4byte	.LFE279
	.4byte	.LFB280
	.4byte	.LFE280
	.4byte	.LFB281
	.4byte	.LFE281
	.4byte	.LFB282
	.4byte	.LFE282
	.4byte	.LFB283
	.4byte	.LFE283
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.file 24 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\i2c.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x3
	.file 25 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x19
	.file 26 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x1a
	.file 27 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x1b
	.byte	0x4
	.byte	0x4
	.file 28 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x7
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.file 29 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0x4
	.file 30 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x1e
	.byte	0x3
	.uleb128 0x54
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x10
	.file 31 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x1f
	.file 32 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x20
	.byte	0x4
	.byte	0x4
	.file 33 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x21
	.byte	0x4
	.file 34 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x22
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.file 35 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x23
	.byte	0x4
	.file 36 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x24
	.byte	0x4
	.file 37 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x25
	.byte	0x4
	.file 38 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x26
	.byte	0x4
	.byte	0x4
	.file 39 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x27
	.file 40 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x28
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 41 "../../../../../../integration/nrfx/nrfx_glue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x29
	.file 42 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x2a
	.byte	0x4
	.file 43 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2b
	.file 44 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x2c
	.byte	0x4
	.byte	0x4
	.file 45 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x2d
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x12
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x26
	.byte	0x4
	.file 46 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb6
	.uleb128 0x2e
	.byte	0x4
	.byte	0x3
	.uleb128 0xb7
	.uleb128 0xd
	.file 47 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x2f
	.file 48 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x30
	.byte	0x4
	.file 49 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x31
	.byte	0x4
	.file 50 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x32
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0xe
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2d
	.byte	0x4
	.file 51 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x33
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x13
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x31
	.byte	0x4
	.byte	0x4
	.file 52 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 53 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x35
	.byte	0x4
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x6
	.byte	0x4
	.file 54 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x36
	.file 55 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x37
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 56 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x38
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x9
	.file 57 "../../../../../../modules/nrfx/hal/nrf_twim.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x39
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x4
	.file 58 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x3a
	.byte	0x4
	.file 59 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x3b
	.file 60 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x3c
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 61 "../../../../../../external/freertos/source/include/freeRTOS.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x3d
	.file 62 "../../../config/FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x3e
	.file 63 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd6
	.uleb128 0x3f
	.file 64 "../../../systemView/SEGGER_SYSVIEW.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x40
	.file 65 "../../../systemView/SEGGER.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x41
	.file 66 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x42
	.byte	0x4
	.file 67 "../../../systemView/Global.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0x43
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 68 "../../../../../../external/freertos/source/include/projdefs.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x44
	.byte	0x4
	.file 69 "../../../../../../external/freertos/source/include/portable.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x45
	.file 70 "../../../../../../external/freertos/source/include/deprecated_definitions.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x46
	.byte	0x4
	.file 71 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x47
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.file 72 "../../../../../../external/freertos/source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x48
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x16
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.file 73 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x49
	.file 74 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x4a
	.file 75 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x4b
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x12
	.byte	0x4
	.file 76 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x4c
	.byte	0x4
	.byte	0x4
	.file 77 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x4d
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x17
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 78 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x4e
	.file 79 "../../../../../../components/libraries/experimental_log/src/nrf_log_ctrl_internal.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x4f
	.byte	0x4
	.file 80 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x50
	.file 81 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x51
	.file 82 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x52
	.byte	0x4
	.file 83 "../../../../../../components/libraries/balloc/nrf_balloc.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x53
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF245:
	.ascii	"m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_cons"
	.ascii	"t\000"
.LASF262:
	.ascii	"nrf_twi_mngr_perform\000"
.LASF33:
	.ascii	"size_t\000"
.LASF143:
	.ascii	"__locale_s\000"
.LASF98:
	.ascii	"TASKS_RESUME\000"
.LASF155:
	.ascii	"__towupper\000"
.LASF150:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF2:
	.ascii	"nrf_drv_twi_t\000"
.LASF54:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF197:
	.ascii	"int32_t\000"
.LASF249:
	.ascii	"bus_config\000"
.LASF44:
	.ascii	"debug_color_id\000"
.LASF225:
	.ascii	"nrf_nvic_state_t\000"
.LASF236:
	.ascii	"BaseType_t\000"
.LASF190:
	.ascii	"time_format\000"
.LASF30:
	.ascii	"element_size\000"
.LASF209:
	.ascii	"__RAL_data_utf8_period\000"
.LASF116:
	.ascii	"ERRORSRC\000"
.LASF186:
	.ascii	"month_names\000"
.LASF68:
	.ascii	"inst_idx\000"
.LASF129:
	.ascii	"EVENTS_LASTRX\000"
.LASF27:
	.ascii	"p_cb\000"
.LASF113:
	.ascii	"INTENSET\000"
.LASF189:
	.ascii	"date_format\000"
.LASF35:
	.ascii	"nrf_queue_cb_t\000"
.LASF114:
	.ascii	"INTENCLR\000"
.LASF182:
	.ascii	"int_p_sign_posn\000"
.LASF174:
	.ascii	"n_cs_precedes\000"
.LASF153:
	.ascii	"__tolower\000"
.LASF222:
	.ascii	"__StackLimit\000"
.LASF170:
	.ascii	"int_frac_digits\000"
.LASF13:
	.ascii	"callback\000"
.LASF270:
	.ascii	"i2cInit\000"
.LASF77:
	.ascii	"NRF_TWI_Type\000"
.LASF65:
	.ascii	"NRF_DRV_TWI_FREQ_100K\000"
.LASF168:
	.ascii	"positive_sign\000"
.LASF254:
	.ascii	"i2cReciveNOADDR\000"
.LASF72:
	.ascii	"nrfx_twi_t\000"
.LASF62:
	.ascii	"hold_bus_uninit\000"
.LASF234:
	.ascii	"nrf_twi_mngr_t\000"
.LASF130:
	.ascii	"EVENTS_LASTTX\000"
.LASF165:
	.ascii	"mon_decimal_point\000"
.LASF247:
	.ascii	"m_nrf_twi_mngr_queue\000"
.LASF159:
	.ascii	"long int\000"
.LASF23:
	.ascii	"p_data\000"
.LASF88:
	.ascii	"APP_IRQ_PRIORITY_THREAD\000"
.LASF142:
	.ascii	"__RAL_error_decoder_s\000"
.LASF217:
	.ascii	"__RAL_error_decoder_t\000"
.LASF246:
	.ascii	"m_nrf_log_queue_m_nrf_twi_mngr_queue_logs_data_dyna"
	.ascii	"mic\000"
.LASF200:
	.ascii	"__RAL_global_locale\000"
.LASF71:
	.ascii	"nrfx_twim_t\000"
.LASF41:
	.ascii	"max_utilization\000"
.LASF141:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF3:
	.ascii	"nrf_twi_mngr_cb_t\000"
.LASF178:
	.ascii	"int_p_cs_precedes\000"
.LASF179:
	.ascii	"int_n_cs_precedes\000"
.LASF19:
	.ascii	"nrf_twi_mngr_transfer_t\000"
.LASF264:
	.ascii	"nrf_log_frontend_std_0\000"
.LASF100:
	.ascii	"EVENTS_STOPPED\000"
.LASF158:
	.ascii	"__mbtowc\000"
.LASF78:
	.ascii	"NRF_TWI_FREQ_100K\000"
.LASF238:
	.ascii	"QueueHandle_t\000"
.LASF195:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"uint8_t\000"
.LASF90:
	.ascii	"__cr_flag\000"
.LASF17:
	.ascii	"p_required_twi_cfg\000"
.LASF255:
	.ascii	"i2cSendNOADDR\000"
.LASF105:
	.ascii	"EVENTS_ERROR\000"
.LASF7:
	.ascii	"p_current_configuration\000"
.LASF92:
	.ascii	"RESERVED0\000"
.LASF94:
	.ascii	"RESERVED1\000"
.LASF12:
	.ascii	"unsigned char\000"
.LASF99:
	.ascii	"RESERVED3\000"
.LASF102:
	.ascii	"RESERVED4\000"
.LASF104:
	.ascii	"RESERVED5\000"
.LASF106:
	.ascii	"RESERVED6\000"
.LASF108:
	.ascii	"RESERVED7\000"
.LASF110:
	.ascii	"RESERVED8\000"
.LASF112:
	.ascii	"RESERVED9\000"
.LASF251:
	.ascii	"getTWIManagerAddress\000"
.LASF97:
	.ascii	"TASKS_SUSPEND\000"
.LASF240:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF211:
	.ascii	"__RAL_data_utf8_space\000"
.LASF109:
	.ascii	"EVENTS_SUSPENDED\000"
.LASF242:
	.ascii	"m_nrf_twi_mngr\000"
.LASF64:
	.ascii	"_Bool\000"
.LASF111:
	.ascii	"SHORTS\000"
.LASF16:
	.ascii	"number_of_transfers\000"
.LASF96:
	.ascii	"RESERVED2\000"
.LASF265:
	.ascii	"xQueueCreateMutex\000"
.LASF48:
	.ascii	"char\000"
.LASF135:
	.ascii	"TWIM_TXD_Type\000"
.LASF239:
	.ascii	"SemaphoreHandle_t\000"
.LASF183:
	.ascii	"int_n_sign_posn\000"
.LASF177:
	.ascii	"n_sign_posn\000"
.LASF84:
	.ascii	"APP_IRQ_PRIORITY_HIGH\000"
.LASF18:
	.ascii	"nrf_twi_mngr_callback_t\000"
.LASF228:
	.ascii	"timeval\000"
.LASF0:
	.ascii	"p_nrf_twi_mngr_cb\000"
.LASF6:
	.ascii	"default_configuration\000"
.LASF208:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF26:
	.ascii	"flags\000"
.LASF166:
	.ascii	"mon_thousands_sep\000"
.LASF81:
	.ascii	"p_twim\000"
.LASF53:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF156:
	.ascii	"__towlower\000"
.LASF230:
	.ascii	"stdin\000"
.LASF169:
	.ascii	"negative_sign\000"
.LASF136:
	.ascii	"MAXCNT\000"
.LASF226:
	.ascii	"nrf_nvic_state\000"
.LASF139:
	.ascii	"decode\000"
.LASF103:
	.ascii	"EVENTS_TXDSENT\000"
.LASF56:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF15:
	.ascii	"p_transfers\000"
.LASF73:
	.ascii	"NRFX_TWI1_INST_IDX\000"
.LASF133:
	.ascii	"TWIM_PSEL_Type\000"
.LASF34:
	.ascii	"nrf_queue_mode_t\000"
.LASF20:
	.ascii	"ret_code_t\000"
.LASF128:
	.ascii	"EVENTS_TXSTARTED\000"
.LASF260:
	.ascii	"buffer\000"
.LASF202:
	.ascii	"__RAL_codeset_ascii\000"
.LASF69:
	.ascii	"use_easy_dma\000"
.LASF82:
	.ascii	"NRF_TWIM_Type\000"
.LASF145:
	.ascii	"__RAL_locale_t\000"
.LASF187:
	.ascii	"abbrev_month_names\000"
.LASF267:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF148:
	.ascii	"codeset\000"
.LASF39:
	.ascii	"front\000"
.LASF38:
	.ascii	"NRF_QUEUE_MODE_NO_OVERFLOW\000"
.LASF263:
	.ascii	"xQueueGenericSend\000"
.LASF266:
	.ascii	"nrf_twi_mngr_init\000"
.LASF194:
	.ascii	"__wchar\000"
.LASF40:
	.ascii	"back\000"
.LASF235:
	.ascii	"long unsigned int\000"
.LASF218:
	.ascii	"__RAL_error_decoder_head\000"
.LASF149:
	.ascii	"__RAL_locale_data_t\000"
.LASF207:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF220:
	.ascii	"SystemCoreClock\000"
.LASF167:
	.ascii	"mon_grouping\000"
.LASF221:
	.ascii	"__StackTop\000"
.LASF250:
	.ascii	"getBusConfig\000"
.LASF188:
	.ascii	"am_pm_indicator\000"
.LASF173:
	.ascii	"p_sep_by_space\000"
.LASF70:
	.ascii	"twim\000"
.LASF49:
	.ascii	"module_id\000"
.LASF181:
	.ascii	"int_n_sep_by_space\000"
.LASF215:
	.ascii	"__user_set_time_of_day\000"
.LASF5:
	.ascii	"p_current_transaction\000"
.LASF8:
	.ascii	"current_transfer_idx\000"
.LASF241:
	.ascii	"i2cSemaphore\000"
.LASF198:
	.ascii	"long long int\000"
.LASF192:
	.ascii	"__mbstate_s\000"
.LASF132:
	.ascii	"PSEL\000"
.LASF28:
	.ascii	"p_buffer\000"
.LASF259:
	.ascii	"i2cSend\000"
.LASF126:
	.ascii	"ADDRESS\000"
.LASF63:
	.ascii	"nrf_drv_twi_frequency_t\000"
.LASF76:
	.ascii	"drv_inst_idx\000"
.LASF55:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF14:
	.ascii	"p_user_data\000"
.LASF101:
	.ascii	"EVENTS_RXDREADY\000"
.LASF219:
	.ascii	"ITM_RxBuffer\000"
.LASF162:
	.ascii	"grouping\000"
.LASF75:
	.ascii	"p_twi\000"
.LASF59:
	.ascii	"frequency\000"
.LASF191:
	.ascii	"date_time_format\000"
.LASF9:
	.ascii	"nrf_drv_twi_config_t\000"
.LASF257:
	.ascii	"i2cRecive\000"
.LASF258:
	.ascii	"addr\000"
.LASF120:
	.ascii	"PSELSCL\000"
.LASF37:
	.ascii	"NRF_QUEUE_MODE_OVERFLOW\000"
.LASF22:
	.ascii	"unsigned int\000"
.LASF176:
	.ascii	"p_sign_posn\000"
.LASF74:
	.ascii	"NRFX_TWI_ENABLED_COUNT\000"
.LASF121:
	.ascii	"PSELSDA\000"
.LASF11:
	.ascii	"nrf_twi_mngr_transaction_t\000"
.LASF57:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF216:
	.ascii	"__user_get_time_of_day\000"
.LASF91:
	.ascii	"TASKS_STARTRX\000"
.LASF203:
	.ascii	"__RAL_codeset_utf8\000"
.LASF95:
	.ascii	"TASKS_STOP\000"
.LASF201:
	.ascii	"__RAL_c_locale\000"
.LASF160:
	.ascii	"decimal_point\000"
.LASF256:
	.ascii	"SendTransfer\000"
.LASF87:
	.ascii	"APP_IRQ_PRIORITY_LOWEST\000"
.LASF229:
	.ascii	"__RAL_FILE\000"
.LASF66:
	.ascii	"NRF_DRV_TWI_FREQ_250K\000"
.LASF67:
	.ascii	"NRF_DRV_TWI_FREQ_400K\000"
.LASF1:
	.ascii	"p_queue\000"
.LASF93:
	.ascii	"TASKS_STARTTX\000"
.LASF227:
	.ascii	"FILE\000"
.LASF224:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF32:
	.ascii	"p_log\000"
.LASF107:
	.ascii	"EVENTS_BB\000"
.LASF58:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF212:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF4:
	.ascii	"nrf_queue_t\000"
.LASF252:
	.ascii	"device\000"
.LASF29:
	.ascii	"size\000"
.LASF151:
	.ascii	"__isctype\000"
.LASF199:
	.ascii	"long long unsigned int\000"
.LASF180:
	.ascii	"int_p_sep_by_space\000"
.LASF24:
	.ascii	"length\000"
.LASF51:
	.ascii	"uint16_t\000"
.LASF115:
	.ascii	"RESERVED10\000"
.LASF117:
	.ascii	"RESERVED11\000"
.LASF119:
	.ascii	"RESERVED12\000"
.LASF122:
	.ascii	"RESERVED13\000"
.LASF123:
	.ascii	"RESERVED14\000"
.LASF125:
	.ascii	"RESERVED15\000"
.LASF79:
	.ascii	"NRF_TWI_FREQ_250K\000"
.LASF80:
	.ascii	"NRF_TWI_FREQ_400K\000"
.LASF244:
	.ascii	"m_nrf_twi_mngr_queue_nrf_queue_cb\000"
.LASF237:
	.ascii	"TickType_t\000"
.LASF268:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\drivers\\i2c.c\000"
.LASF261:
	.ascii	"xQueueSemaphoreTake\000"
.LASF233:
	.ascii	"nrf_log_module_const_data_t\000"
.LASF36:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF248:
	.ascii	"m_nrf_twi_mngr_cb\000"
.LASF185:
	.ascii	"abbrev_day_names\000"
.LASF243:
	.ascii	"m_nrf_twi_mngr_queue_nrf_queue_buffer\000"
.LASF204:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF161:
	.ascii	"thousands_sep\000"
.LASF223:
	.ascii	"_vectors\000"
.LASF152:
	.ascii	"__toupper\000"
.LASF146:
	.ascii	"name\000"
.LASF83:
	.ascii	"APP_IRQ_PRIORITY_HIGHEST\000"
.LASF171:
	.ascii	"frac_digits\000"
.LASF164:
	.ascii	"currency_symbol\000"
.LASF232:
	.ascii	"stderr\000"
.LASF196:
	.ascii	"short int\000"
.LASF85:
	.ascii	"APP_IRQ_PRIORITY_MID\000"
.LASF31:
	.ascii	"mode\000"
.LASF86:
	.ascii	"APP_IRQ_PRIORITY_LOW\000"
.LASF193:
	.ascii	"__state\000"
.LASF157:
	.ascii	"__wctomb\000"
.LASF46:
	.ascii	"initial_lvl\000"
.LASF269:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF118:
	.ascii	"ENABLE\000"
.LASF184:
	.ascii	"day_names\000"
.LASF213:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF137:
	.ascii	"AMOUNT\000"
.LASF45:
	.ascii	"compiled_lvl\000"
.LASF154:
	.ascii	"__iswctype\000"
.LASF61:
	.ascii	"clear_bus_init\000"
.LASF43:
	.ascii	"info_color_id\000"
.LASF205:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF131:
	.ascii	"INTEN\000"
.LASF50:
	.ascii	"padding\000"
.LASF124:
	.ascii	"FREQUENCY\000"
.LASF21:
	.ascii	"uint32_t\000"
.LASF89:
	.ascii	"__irq_masks\000"
.LASF47:
	.ascii	"nrf_log_severity_t\000"
.LASF127:
	.ascii	"EVENTS_RXSTARTED\000"
.LASF175:
	.ascii	"n_sep_by_space\000"
.LASF214:
	.ascii	"__RAL_data_empty_string\000"
.LASF163:
	.ascii	"int_curr_symbol\000"
.LASF138:
	.ascii	"LIST\000"
.LASF172:
	.ascii	"p_cs_precedes\000"
.LASF52:
	.ascii	"short unsigned int\000"
.LASF231:
	.ascii	"stdout\000"
.LASF25:
	.ascii	"operation\000"
.LASF60:
	.ascii	"interrupt_priority\000"
.LASF253:
	.ascii	"ReciveTransfer\000"
.LASF144:
	.ascii	"__category\000"
.LASF210:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF42:
	.ascii	"p_module_name\000"
.LASF140:
	.ascii	"next\000"
.LASF147:
	.ascii	"data\000"
.LASF206:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF134:
	.ascii	"TWIM_RXD_Type\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
