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
	.file	"encoder.c"
	.text
.Ltext0:
	.section	.text.timer_event_handler_dummy,"ax",%progbits
	.align	1
	.global	timer_event_handler_dummy
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	timer_event_handler_dummy, %function
timer_event_handler_dummy:
.LVL0:
.LFB321:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\encoder.c"
	.loc 1 41 79 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 43 1 view .LVU1
	bx	lr
.LFE321:
	.size	timer_event_handler_dummy, .-timer_event_handler_dummy
	.section	.text.gpiote_event_handler_dummy,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	gpiote_event_handler_dummy, %function
gpiote_event_handler_dummy:
.LVL1:
.LFB322:
	.loc 1 46 42 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 48 1 view .LVU3
	bx	lr
.LFE322:
	.size	gpiote_event_handler_dummy, .-gpiote_event_handler_dummy
	.section	.text.encoder_cb_left,"ax",%progbits
	.align	1
	.global	encoder_cb_left
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_cb_left, %function
encoder_cb_left:
.LFB318:
	.loc 1 25 24 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 26 5 view .LVU5
	.loc 1 26 18 is_stmt 0 view .LVU6
	ldr	r2, .L4
	ldr	r3, [r2]
	ldr	r1, .L4+4
	ldr	r1, [r1]
	add	r3, r3, r1
	str	r3, [r2]
	.loc 1 27 1 view .LVU7
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
	.word	LeftMotorDirection
.LFE318:
	.size	encoder_cb_left, .-encoder_cb_left
	.section	.text.encoder_cb_right,"ax",%progbits
	.align	1
	.global	encoder_cb_right
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_cb_right, %function
encoder_cb_right:
.LFB319:
	.loc 1 29 25 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 30 5 view .LVU9
	.loc 1 30 19 is_stmt 0 view .LVU10
	ldr	r2, .L7
	ldr	r3, [r2, #4]
	ldr	r1, .L7+4
	ldr	r1, [r1]
	add	r3, r3, r1
	str	r3, [r2, #4]
	.loc 1 31 1 view .LVU11
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0
	.word	RightMotorDirection
.LFE319:
	.size	encoder_cb_right, .-encoder_cb_right
	.section	.text.cb_trampoline,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	cb_trampoline, %function
cb_trampoline:
.LVL2:
.LFB320:
	.loc 1 34 42 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 34 42 is_stmt 0 view .LVU13
	push	{r3, lr}
.LCFI0:
	.loc 1 35 2 is_stmt 1 view .LVU14
	.loc 1 35 5 is_stmt 0 view .LVU15
	cmp	r0, #11
	beq	.L13
	.loc 1 37 7 is_stmt 1 view .LVU16
	.loc 1 37 10 is_stmt 0 view .LVU17
	cmp	r0, #12
	beq	.L14
.LVL3:
.L9:
	.loc 1 39 1 view .LVU18
	pop	{r3, pc}
.LVL4:
.L13:
	.loc 1 36 3 is_stmt 1 view .LVU19
	bl	encoder_cb_left
.LVL5:
	.loc 1 36 3 is_stmt 0 view .LVU20
	b	.L9
.LVL6:
.L14:
	.loc 1 38 3 is_stmt 1 view .LVU21
	bl	encoder_cb_right
.LVL7:
	.loc 1 39 1 is_stmt 0 view .LVU22
	b	.L9
.LFE320:
	.size	cb_trampoline, .-cb_trampoline
	.section	.rodata.encoder_init_ppi.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\drivers\\encoder.c\000"
	.align	2
.LC1:
	.ascii	"counter: %d\000"
	.section	.text.encoder_init_ppi,"ax",%progbits
	.align	1
	.global	encoder_init_ppi
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_init_ppi, %function
encoder_init_ppi:
.LVL8:
.LFB323:
	.loc 1 50 72 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 50 72 is_stmt 0 view .LVU24
	push	{r4, r5, r6, r7, r8, lr}
.LCFI1:
	sub	sp, sp, #16
.LCFI2:
	mov	r6, r0
	mov	r5, r1
	.loc 1 51 2 is_stmt 1 view .LVU25
	.loc 1 52 2 view .LVU26
	.loc 1 52 6 is_stmt 0 view .LVU27
	bl	nrfx_gpiote_is_init
.LVL9:
	.loc 1 52 4 view .LVU28
	cmp	r0, #0
	beq	.L27
.L16:
.LVL10:
	.loc 1 54 2 is_stmt 1 view .LVU29
.LBB25:
	.loc 1 54 7 view .LVU30
	.loc 1 54 46 view .LVU31
	.loc 1 54 49 is_stmt 0 view .LVU32
	cmp	r4, #0
	bne	.L28
.L17:
	.loc 1 54 231 is_stmt 1 discriminator 3 view .LVU33
.LBE25:
	.loc 1 54 246 discriminator 3 view .LVU34
	.loc 1 56 2 discriminator 3 view .LVU35
.LVL11:
	.loc 1 57 2 discriminator 3 view .LVU36
	.loc 1 59 2 discriminator 3 view .LVU37
	.loc 1 59 26 is_stmt 0 discriminator 3 view .LVU38
	movs	r3, #0
	strh	r3, [sp, #13]	@ unaligned
	movs	r3, #1
	strb	r3, [sp, #12]
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	orr	r3, r3, #2
	strb	r3, [sp, #14]
	.loc 1 61 2 is_stmt 1 discriminator 3 view .LVU39
	.loc 1 62 2 discriminator 3 view .LVU40
	.loc 1 64 2 discriminator 3 view .LVU41
	.loc 1 64 5 is_stmt 0 discriminator 3 view .LVU42
	cmp	r6, #0
	bne	.L25
	.loc 1 66 15 view .LVU43
	ldr	r4, .L33
.LVL12:
	.loc 1 65 7 view .LVU44
	movs	r6, #11
.L18:
.LVL13:
	.loc 1 73 2 is_stmt 1 view .LVU45
	.loc 1 73 8 is_stmt 0 view .LVU46
	mov	r8, r6
	ldr	r2, .L33+4
	add	r1, sp, #12
	mov	r0, r6
	bl	nrfx_gpiote_in_init
.LVL14:
	.loc 1 74 2 is_stmt 1 view .LVU47
	.loc 1 74 24 is_stmt 0 view .LVU48
	mov	r0, r6
	bl	nrfx_gpiote_in_event_addr_get
.LVL15:
	mov	r6, r0
.LVL16:
	.loc 1 77 2 is_stmt 1 view .LVU49
	.loc 1 77 22 is_stmt 0 view .LVU50
	movs	r3, #0
	strb	r3, [sp, #4]
	strb	r3, [sp, #6]
	movs	r2, #7
	strb	r2, [sp, #7]
	str	r3, [sp, #8]
	.loc 1 78 2 is_stmt 1 view .LVU51
	.loc 1 78 20 is_stmt 0 view .LVU52
	movs	r3, #1
	strb	r3, [sp, #5]
	.loc 1 79 2 is_stmt 1 view .LVU53
	.loc 1 79 8 is_stmt 0 view .LVU54
	ldr	r2, .L33+8
	add	r1, sp, #4
	mov	r0, r5
.LVL17:
	.loc 1 79 8 view .LVU55
	bl	nrfx_timer_init
.LVL18:
	.loc 1 80 2 is_stmt 1 view .LVU56
.LBB26:
	.loc 1 80 7 view .LVU57
	.loc 1 80 46 view .LVU58
	.loc 1 80 49 is_stmt 0 view .LVU59
	cmp	r0, #0
	bne	.L29
.LVL19:
.L19:
	.loc 1 80 231 is_stmt 1 discriminator 3 view .LVU60
.LBE26:
	.loc 1 80 246 discriminator 3 view .LVU61
	.loc 1 81 2 discriminator 3 view .LVU62
	mov	r0, r5
	bl	nrfx_timer_enable
.LVL20:
	.loc 1 82 2 discriminator 3 view .LVU63
.LBB27:
.LBI27:
	.file 2 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
	.loc 2 350 24 discriminator 3 view .LVU64
.LBB28:
	.loc 2 353 5 discriminator 3 view .LVU65
	.loc 2 353 22 is_stmt 0 discriminator 3 view .LVU66
	ldr	r7, [r5]
.LVL21:
.LBB29:
.LBI29:
	.file 3 "../../../../../../modules/nrfx/hal/nrf_timer.h"
	.loc 3 479 26 is_stmt 1 discriminator 3 view .LVU67
.LBB30:
	.loc 3 482 5 discriminator 3 view .LVU68
	.loc 3 482 12 is_stmt 0 discriminator 3 view .LVU69
	adds	r7, r7, #8
.LVL22:
	.loc 3 482 12 discriminator 3 view .LVU70
.LBE30:
.LBE29:
.LBE28:
.LBE27:
	.loc 1 85 2 is_stmt 1 discriminator 3 view .LVU71
	.loc 1 85 8 is_stmt 0 discriminator 3 view .LVU72
	mov	r0, r4
	bl	nrfx_ppi_channel_alloc
.LVL23:
	.loc 1 86 2 is_stmt 1 discriminator 3 view .LVU73
.LBB31:
	.loc 1 86 7 discriminator 3 view .LVU74
	.loc 1 86 46 discriminator 3 view .LVU75
	.loc 1 86 49 is_stmt 0 discriminator 3 view .LVU76
	cmp	r0, #0
	bne	.L30
.LVL24:
.L20:
	.loc 1 86 231 is_stmt 1 discriminator 3 view .LVU77
.LBE31:
	.loc 1 86 246 discriminator 3 view .LVU78
	.loc 1 87 2 discriminator 3 view .LVU79
	.loc 1 87 8 is_stmt 0 discriminator 3 view .LVU80
	mov	r2, r7
	mov	r1, r6
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	nrfx_ppi_channel_assign
.LVL25:
	.loc 1 90 2 is_stmt 1 discriminator 3 view .LVU81
.LBB32:
	.loc 1 90 7 discriminator 3 view .LVU82
	.loc 1 90 46 discriminator 3 view .LVU83
	.loc 1 90 49 is_stmt 0 discriminator 3 view .LVU84
	cmp	r0, #0
	bne	.L31
.LVL26:
.L21:
	.loc 1 90 231 is_stmt 1 discriminator 3 view .LVU85
.LBE32:
	.loc 1 90 246 discriminator 3 view .LVU86
	.loc 1 91 2 discriminator 3 view .LVU87
	.loc 1 91 8 is_stmt 0 discriminator 3 view .LVU88
	ldrb	r0, [r4]	@ zero_extendqisi2
	bl	nrfx_ppi_channel_enable
.LVL27:
	.loc 1 92 2 is_stmt 1 discriminator 3 view .LVU89
.LBB33:
	.loc 1 92 7 discriminator 3 view .LVU90
	.loc 1 92 46 discriminator 3 view .LVU91
	.loc 1 92 49 is_stmt 0 discriminator 3 view .LVU92
	cmp	r0, #0
	bne	.L32
.LVL28:
.L22:
	.loc 1 92 231 is_stmt 1 discriminator 3 view .LVU93
.LBE33:
	.loc 1 92 246 discriminator 3 view .LVU94
	.loc 1 95 2 discriminator 3 view .LVU95
	movs	r1, #0
	mov	r0, r8
	bl	nrfx_gpiote_in_event_enable
.LVL29:
.L24:
	.loc 1 97 2 view .LVU96
	.loc 1 100 3 view .LVU97
	movs	r1, #0
	mov	r0, r5
	bl	nrfx_timer_capture
.LVL30:
	.loc 1 101 3 view .LVU98
	.loc 1 101 76 view .LVU99
	.loc 1 101 131 view .LVU100
	.loc 1 101 212 is_stmt 0 view .LVU101
	ldr	r3, .L33+12
	ldrh	r0, [r3]
	.loc 1 101 223 view .LVU102
	lsls	r0, r0, #16
.LVL31:
.LBB34:
.LBI34:
	.loc 2 378 24 is_stmt 1 view .LVU103
.LBB35:
	.loc 2 381 5 view .LVU104
	.loc 2 381 12 is_stmt 0 view .LVU105
	ldr	r3, [r5]
.LVL32:
.LBB36:
.LBI36:
	.loc 3 582 24 is_stmt 1 view .LVU106
.LBB37:
	.loc 3 585 5 view .LVU107
	.loc 3 585 12 is_stmt 0 view .LVU108
	ldr	r2, [r3, #1344]
.LVL33:
	.loc 3 585 12 view .LVU109
.LBE37:
.LBE36:
.LBE35:
.LBE34:
	.loc 1 101 131 view .LVU110
	ldr	r1, .L33+16
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL34:
	.loc 1 101 318 is_stmt 1 view .LVU111
	.loc 1 102 3 view .LVU112
.LBB38:
.LBI38:
	.file 4 "../../../../../../components/libraries/delay/nrf_delay.h"
	.loc 4 64 20 view .LVU113
.LBE38:
	.loc 1 101 131 is_stmt 0 view .LVU114
	movs	r4, #100
.LVL35:
.L23:
.LBB42:
.LBB39:
	.loc 4 71 5 is_stmt 1 view .LVU115
	.loc 4 72 9 view .LVU116
.LBB40:
.LBI40:
	.file 5 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.loc 5 128 20 view .LVU117
.LBB41:
	.loc 5 130 5 view .LVU118
	.loc 5 152 5 view .LVU119
	.loc 5 160 5 view .LVU120
	.loc 5 162 5 view .LVU121
	.loc 5 163 5 view .LVU122
	.loc 5 164 5 view .LVU123
	mov	r0, #64000
	ldr	r3, .L33+20
	orr	r3, r3, #1
.LVL36:
	.loc 5 164 5 is_stmt 0 view .LVU124
	blx	r3
.LVL37:
	.loc 5 164 5 view .LVU125
.LBE41:
.LBE40:
	.loc 4 73 13 is_stmt 1 view .LVU126
	.loc 4 73 5 is_stmt 0 view .LVU127
	subs	r4, r4, #1
.LVL38:
	.loc 4 73 5 view .LVU128
	bne	.L23
	b	.L24
.LVL39:
.L27:
	.loc 4 73 5 view .LVU129
.LBE39:
.LBE42:
	.loc 1 53 3 is_stmt 1 view .LVU130
	.loc 1 53 9 is_stmt 0 view .LVU131
	bl	nrfx_gpiote_init
.LVL40:
	mov	r4, r0
.LVL41:
	.loc 1 53 9 view .LVU132
	b	.L16
.LVL42:
.L28:
.LBB43:
	.loc 1 54 83 is_stmt 1 discriminator 1 view .LVU133
	.loc 1 54 88 discriminator 1 view .LVU134
	ldr	r2, .L33+24
	movs	r1, #54
	mov	r0, r4
	bl	app_error_handler
.LVL43:
	b	.L17
.LVL44:
.L25:
	.loc 1 54 88 is_stmt 0 discriminator 1 view .LVU135
.LBE43:
	.loc 1 69 15 view .LVU136
	ldr	r4, .L33+28
.LVL45:
	.loc 1 68 7 view .LVU137
	movs	r6, #12
	b	.L18
.LVL46:
.L29:
.LBB44:
	.loc 1 80 83 is_stmt 1 discriminator 1 view .LVU138
	.loc 1 80 88 discriminator 1 view .LVU139
	ldr	r2, .L33+24
	movs	r1, #80
	bl	app_error_handler
.LVL47:
	.loc 1 80 88 is_stmt 0 discriminator 1 view .LVU140
	b	.L19
.LVL48:
.L30:
	.loc 1 80 88 discriminator 1 view .LVU141
.LBE44:
.LBB45:
	.loc 1 86 83 is_stmt 1 discriminator 1 view .LVU142
	.loc 1 86 88 discriminator 1 view .LVU143
	ldr	r2, .L33+24
	movs	r1, #86
	bl	app_error_handler
.LVL49:
	.loc 1 86 88 is_stmt 0 discriminator 1 view .LVU144
	b	.L20
.LVL50:
.L31:
	.loc 1 86 88 discriminator 1 view .LVU145
.LBE45:
.LBB46:
	.loc 1 90 83 is_stmt 1 discriminator 1 view .LVU146
	.loc 1 90 88 discriminator 1 view .LVU147
	ldr	r2, .L33+24
	movs	r1, #90
	bl	app_error_handler
.LVL51:
	.loc 1 90 88 is_stmt 0 discriminator 1 view .LVU148
	b	.L21
.LVL52:
.L32:
	.loc 1 90 88 discriminator 1 view .LVU149
.LBE46:
.LBB47:
	.loc 1 92 83 is_stmt 1 discriminator 1 view .LVU150
	.loc 1 92 88 discriminator 1 view .LVU151
	ldr	r2, .L33+24
	movs	r1, #92
	bl	app_error_handler
.LVL53:
	.loc 1 92 88 is_stmt 0 discriminator 1 view .LVU152
	b	.L22
.L34:
	.align	2
.L33:
	.word	.LANCHOR2
	.word	gpiote_event_handler_dummy
	.word	timer_event_handler_dummy
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC1
	.word	.LANCHOR3
	.word	.LC0
	.word	.LANCHOR1
.LBE47:
.LFE323:
	.size	encoder_init_ppi, .-encoder_init_ppi
	.section	.text.encoder_init_int,"ax",%progbits
	.align	1
	.global	encoder_init_int
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_init_int, %function
encoder_init_int:
.LFB324:
	.loc 1 106 24 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI3:
	sub	sp, sp, #12
.LCFI4:
	.loc 1 107 2 view .LVU154
	.loc 1 108 2 view .LVU155
	.loc 1 108 6 is_stmt 0 view .LVU156
	bl	nrfx_gpiote_is_init
.LVL54:
	.loc 1 108 4 view .LVU157
	cbz	r0, .L39
.L36:
	.loc 1 111 2 is_stmt 1 view .LVU158
	.loc 1 111 26 is_stmt 0 view .LVU159
	movs	r3, #0
	strh	r3, [sp, #5]	@ unaligned
	movs	r5, #1
	strb	r5, [sp, #4]
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	orr	r3, r3, #2
	strb	r3, [sp, #6]
	.loc 1 112 9 is_stmt 1 view .LVU160
	.loc 1 112 15 is_stmt 0 view .LVU161
	ldr	r4, .L41
	mov	r2, r4
	add	r1, sp, #4
	movs	r0, #11
	bl	nrfx_gpiote_in_init
.LVL55:
	.loc 1 113 9 is_stmt 1 view .LVU162
	mov	r1, r5
	movs	r0, #11
	bl	nrfx_gpiote_in_event_enable
.LVL56:
	.loc 1 114 9 view .LVU163
	.loc 1 114 15 is_stmt 0 view .LVU164
	mov	r2, r4
	add	r1, sp, #4
	movs	r0, #12
	bl	nrfx_gpiote_in_init
.LVL57:
	mov	r4, r0
.LVL58:
	.loc 1 115 9 is_stmt 1 view .LVU165
	mov	r1, r5
	movs	r0, #12
.LVL59:
	.loc 1 115 9 is_stmt 0 view .LVU166
	bl	nrfx_gpiote_in_event_enable
.LVL60:
	.loc 1 118 2 is_stmt 1 view .LVU167
.LBB48:
	.loc 1 118 7 view .LVU168
	.loc 1 118 46 view .LVU169
	.loc 1 118 49 is_stmt 0 view .LVU170
	cbnz	r4, .L40
.L35:
.LBE48:
	.loc 1 119 1 view .LVU171
	add	sp, sp, #12
.LCFI5:
	@ sp needed
	pop	{r4, r5, pc}
.LVL61:
.L39:
.LCFI6:
	.loc 1 109 3 is_stmt 1 view .LVU172
	.loc 1 109 9 is_stmt 0 view .LVU173
	bl	nrfx_gpiote_init
.LVL62:
	b	.L36
.LVL63:
.L40:
.LBB49:
	.loc 1 118 83 is_stmt 1 discriminator 1 view .LVU174
	.loc 1 118 88 discriminator 1 view .LVU175
	ldr	r2, .L41+4
	movs	r1, #118
	mov	r0, r4
	bl	app_error_handler
.LVL64:
	.loc 1 118 232 discriminator 1 view .LVU176
.LBE49:
	.loc 1 118 247 discriminator 1 view .LVU177
	.loc 1 119 1 is_stmt 0 discriminator 1 view .LVU178
	b	.L35
.L42:
	.align	2
.L41:
	.word	cb_trampoline
	.word	.LC0
.LFE324:
	.size	encoder_init_int, .-encoder_init_int
	.section	.text.encoder_get_ticks,"ax",%progbits
	.align	1
	.global	encoder_get_ticks
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_get_ticks, %function
encoder_get_ticks:
.LVL65:
.LFB325:
	.loc 1 121 33 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 121 33 is_stmt 0 view .LVU180
	push	{r4, r5, r6, r7}
.LCFI7:
	.loc 1 122 7 is_stmt 1 view .LVU181
	.loc 1 125 7 view .LVU182
	.loc 1 125 31 is_stmt 0 view .LVU183
	ldr	r4, .L45
	ldr	r7, [r4]
	.loc 1 126 7 is_stmt 1 view .LVU184
	.loc 1 126 32 is_stmt 0 view .LVU185
	ldr	r6, [r4, #4]
	.loc 1 128 7 is_stmt 1 view .LVU186
	.loc 1 128 33 is_stmt 0 view .LVU187
	ldr	r5, .L45+4
	ldr	r1, [r5]
	.loc 1 128 24 view .LVU188
	str	r1, [r4]
	.loc 1 129 7 is_stmt 1 view .LVU189
	.loc 1 129 34 is_stmt 0 view .LVU190
	ldr	r2, [r5, #4]
	.loc 1 129 25 view .LVU191
	str	r2, [r4, #4]
	.loc 1 131 7 is_stmt 1 view .LVU192
	.loc 1 131 37 is_stmt 0 view .LVU193
	subs	r1, r1, r7
	.loc 1 131 18 view .LVU194
	str	r1, [r0]
	.loc 1 132 7 is_stmt 1 view .LVU195
	.loc 1 132 39 is_stmt 0 view .LVU196
	subs	r2, r2, r6
	.loc 1 132 19 view .LVU197
	str	r2, [r0, #4]
	.loc 1 133 7 is_stmt 1 view .LVU198
	.loc 1 134 1 is_stmt 0 view .LVU199
	pop	{r4, r5, r6, r7}
.LCFI8:
	bx	lr
.L46:
	.align	2
.L45:
	.word	.LANCHOR4
	.word	.LANCHOR0
.LFE325:
	.size	encoder_get_ticks, .-encoder_get_ticks
	.section	.text.encoder_get_all_ticks,"ax",%progbits
	.align	1
	.global	encoder_get_all_ticks
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	encoder_get_all_ticks, %function
encoder_get_all_ticks:
.LVL66:
.LFB326:
	.loc 1 136 37 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 137 7 view .LVU201
	.loc 1 138 7 view .LVU202
	.loc 1 138 27 is_stmt 0 view .LVU203
	ldr	r2, .L48
	ldr	r1, [r2]
	.loc 1 138 18 view .LVU204
	str	r1, [r0]
	.loc 1 139 7 is_stmt 1 view .LVU205
	.loc 1 139 28 is_stmt 0 view .LVU206
	ldr	r2, [r2, #4]
	.loc 1 139 19 view .LVU207
	str	r2, [r0, #4]
	.loc 1 140 7 is_stmt 1 view .LVU208
	.loc 1 141 7 is_stmt 0 view .LVU209
	bx	lr
.L49:
	.align	2
.L48:
	.word	.LANCHOR0
.LFE326:
	.size	encoder_get_all_ticks, .-encoder_get_all_ticks
	.global	encoder_old
	.global	encoder
	.section	.bss.encoder,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	encoder, %object
	.size	encoder, 8
encoder:
	.space	8
	.section	.bss.encoder_old,"aw",%nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	encoder_old, %object
	.size	encoder_old, 8
encoder_old:
	.space	8
	.section	.bss.m_ppi_channel_left,"aw",%nobits
	.set	.LANCHOR2,. + 0
	.type	m_ppi_channel_left, %object
	.size	m_ppi_channel_left, 1
m_ppi_channel_left:
	.space	1
	.section	.bss.m_ppi_channel_right,"aw",%nobits
	.set	.LANCHOR1,. + 0
	.type	m_ppi_channel_right, %object
	.size	m_ppi_channel_right, 1
m_ppi_channel_right:
	.space	1
	.section	.rodata.delay_bytecode.7993,"a"
	.align	4
	.set	.LANCHOR3,. + 0
	.type	delay_bytecode.7993, %object
	.size	delay_bytecode.7993, 6
delay_bytecode.7993:
	.short	14339
	.short	-9987
	.short	18288
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
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB322
	.4byte	.LFE322-.LFB322
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB318
	.4byte	.LFE318-.LFB318
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB319
	.4byte	.LFE319-.LFB319
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB320
	.4byte	.LFE320-.LFB320
	.byte	0x4
	.4byte	.LCFI0-.LFB320
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.byte	0x4
	.4byte	.LCFI1-.LFB323
	.byte	0xe
	.uleb128 0x18
	.byte	0x84
	.uleb128 0x6
	.byte	0x85
	.uleb128 0x5
	.byte	0x86
	.uleb128 0x4
	.byte	0x87
	.uleb128 0x3
	.byte	0x88
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x28
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.byte	0x4
	.4byte	.LCFI3-.LFB324
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xa
	.byte	0xe
	.uleb128 0xc
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xb
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
	.byte	0x4
	.4byte	.LCFI7-.LFB325
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x4
	.byte	0x85
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x87
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xc7
	.byte	0xc6
	.byte	0xc5
	.byte	0xc4
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB326
	.4byte	.LFE326-.LFB326
	.align	2
.LEFDE16:
	.text
.Letext0:
	.file 6 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
	.file 7 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
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
	.byte	0x6
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x6
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x6
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x7
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
	.byte	0x6
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
	.file 8 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
	.section	.debug_types,"G",%progbits,wt.9a3c039433d633a1,comdat
	.4byte	0xf0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x9a
	.byte	0x3c
	.byte	0x3
	.byte	0x94
	.byte	0x33
	.byte	0xd6
	.byte	0x33
	.byte	0xa1
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0xec
	.byte	0x8
	.byte	0x41
	.byte	0x1
	.4byte	0xec
	.uleb128 0x7
	.4byte	.LASF11
	.byte	0
	.uleb128 0x7
	.4byte	.LASF12
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF15
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF16
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF20
	.byte	0x9
	.uleb128 0x7
	.4byte	.LASF21
	.byte	0xa
	.uleb128 0x7
	.4byte	.LASF22
	.byte	0xb
	.uleb128 0x7
	.4byte	.LASF23
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0xd
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0xe
	.uleb128 0x7
	.4byte	.LASF26
	.byte	0xf
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x11
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x12
	.uleb128 0x7
	.4byte	.LASF30
	.byte	0x13
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x14
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x15
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x16
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x17
	.uleb128 0x7
	.4byte	.LASF35
	.byte	0x18
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x19
	.uleb128 0x7
	.4byte	.LASF37
	.byte	0x1a
	.uleb128 0x7
	.4byte	.LASF38
	.byte	0x1b
	.uleb128 0x7
	.4byte	.LASF39
	.byte	0x1c
	.uleb128 0x7
	.4byte	.LASF40
	.byte	0x1d
	.uleb128 0x7
	.4byte	.LASF41
	.byte	0x1e
	.uleb128 0x7
	.4byte	.LASF42
	.byte	0x1f
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.file 9 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\encoder.h"
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
	.uleb128 0x2
	.byte	0x8
	.byte	0x9
	.byte	0x17
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x9
	.byte	0x18
	.byte	0xa
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x9
	.byte	0x19
	.byte	0xa
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF45
	.byte	0
	.section	.debug_types,"G",%progbits,wt.1a7d7fd74d472319,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1a
	.byte	0x7d
	.byte	0x7f
	.byte	0xd7
	.byte	0x4d
	.byte	0x47
	.byte	0x23
	.byte	0x19
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x9
	.byte	0x11
	.byte	0xe
	.4byte	0x38
	.uleb128 0x7
	.4byte	.LASF46
	.byte	0
	.uleb128 0x7
	.4byte	.LASF47
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.a9c61f40a467010e,comdat
	.4byte	0xaa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xa9
	.byte	0xc6
	.byte	0x1f
	.byte	0x40
	.byte	0xa4
	.byte	0x67
	.byte	0x1
	.byte	0xe
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x2
	.byte	0x64
	.byte	0x9
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x2
	.byte	0x66
	.byte	0x1b
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x2
	.byte	0x67
	.byte	0x16
	.4byte	0x78
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x2
	.byte	0x68
	.byte	0x1b
	.4byte	0x88
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x2
	.byte	0x69
	.byte	0xd
	.4byte	0x98
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x2
	.byte	0x6a
	.byte	0xc
	.4byte	0xa4
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x3
	.byte	0xce
	.byte	0x3
	.byte	0x2a
	.byte	0x9c
	.byte	0x82
	.byte	0x53
	.byte	0xa7
	.byte	0x51
	.byte	0x21
	.byte	0xd2
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x3
	.byte	0xb2
	.byte	0x3
	.byte	0x2f
	.byte	0xd
	.byte	0x6d
	.byte	0xc1
	.byte	0xd6
	.byte	0x1d
	.byte	0x95
	.byte	0x3e
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x3
	.byte	0xbd
	.byte	0x3
	.byte	0x7e
	.byte	0xa7
	.byte	0x9
	.byte	0xe0
	.byte	0x34
	.byte	0xb6
	.byte	0xcc
	.byte	0x7b
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x7
	.byte	0x30
	.byte	0x17
	.4byte	0xa6
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.file 10 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.section	.debug_types,"G",%progbits,wt.5bf56173fc4d6b98,comdat
	.4byte	0x75
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x5b
	.byte	0xf5
	.byte	0x61
	.byte	0x73
	.byte	0xfc
	.byte	0x4d
	.byte	0x6b
	.byte	0x98
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x2
	.byte	0x3d
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x2
	.byte	0x3f
	.byte	0x16
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x2
	.byte	0x40
	.byte	0xd
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x2
	.byte	0x41
	.byte	0xd
	.4byte	0x54
	.byte	0x5
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x60
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x7
	.byte	0x30
	.byte	0x17
	.4byte	0x71
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0xa
	.2byte	0x505
	.byte	0x3
	.byte	0x72
	.byte	0x46
	.byte	0x3b
	.byte	0
	.byte	0x93
	.byte	0xbd
	.byte	0x94
	.byte	0x14
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.0c7312691a07d72a,comdat
	.4byte	0x54
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xc
	.byte	0x73
	.byte	0x12
	.byte	0x69
	.byte	0x1a
	.byte	0x7
	.byte	0xd7
	.byte	0x2a
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x3
	.byte	0xd4
	.byte	0x1
	.4byte	0x50
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.2a9c8253a75121d2,comdat
	.4byte	0x6c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x2a
	.byte	0x9c
	.byte	0x82
	.byte	0x53
	.byte	0xa7
	.byte	0x51
	.byte	0x21
	.byte	0xd2
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x68
	.byte	0x3
	.byte	0xc3
	.byte	0x1
	.4byte	0x68
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
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.7ea709e034b6cc7b,comdat
	.4byte	0x48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x7e
	.byte	0xa7
	.byte	0x9
	.byte	0xe0
	.byte	0x34
	.byte	0xb6
	.byte	0xcc
	.byte	0x7b
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x3
	.byte	0xb8
	.byte	0x1
	.4byte	0x44
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.2f0d6dc1d61d953e,comdat
	.4byte	0x42
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x2f
	.byte	0xd
	.byte	0x6d
	.byte	0xc1
	.byte	0xd6
	.byte	0x1d
	.byte	0x95
	.byte	0x3e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x3
	.byte	0xac
	.byte	0x1
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.968b59aef5833648,comdat
	.4byte	0x5a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x96
	.byte	0x8b
	.byte	0x59
	.byte	0xae
	.byte	0xf5
	.byte	0x83
	.byte	0x36
	.byte	0x48
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x2
	.4byte	0x56
	.byte	0x3
	.byte	0x7e
	.byte	0x1
	.4byte	0x56
	.uleb128 0xc
	.4byte	.LASF84
	.2byte	0x140
	.uleb128 0xc
	.4byte	.LASF85
	.2byte	0x144
	.uleb128 0xc
	.4byte	.LASF86
	.2byte	0x148
	.uleb128 0xc
	.4byte	.LASF87
	.2byte	0x14c
	.uleb128 0xc
	.4byte	.LASF88
	.2byte	0x150
	.uleb128 0xc
	.4byte	.LASF89
	.2byte	0x154
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0
	.section	.debug_types,"G",%progbits,wt.66a10e0129bf81c5,comdat
	.4byte	0x72
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x66
	.byte	0xa1
	.byte	0xe
	.byte	0x1
	.byte	0x29
	.byte	0xbf
	.byte	0x81
	.byte	0xc5
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x6e
	.byte	0x3
	.byte	0x66
	.byte	0x1
	.4byte	0x6e
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0xc
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x10
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x40
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x44
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x48
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0x4c
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x50
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.file 11 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
	.file 12 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
	.file 13 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
	.section	.debug_types,"G",%progbits,wt.11699a29b0e64bb2,comdat
	.4byte	0x95
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x11
	.byte	0x69
	.byte	0x9a
	.byte	0x29
	.byte	0xb0
	.byte	0xe6
	.byte	0x4b
	.byte	0xb2
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x3
	.byte	0xb
	.byte	0x3c
	.byte	0x9
	.4byte	0x71
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0xb
	.byte	0x3e
	.byte	0x1b
	.4byte	0x71
	.byte	0
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0xb
	.byte	0x3f
	.byte	0x19
	.4byte	0x81
	.byte	0x1
	.uleb128 0xd
	.4byte	.LASF103
	.byte	0xb
	.byte	0x40
	.byte	0x1a
	.4byte	0x91
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF104
	.byte	0xb
	.byte	0x41
	.byte	0x1a
	.4byte	0x91
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.uleb128 0xd
	.4byte	.LASF105
	.byte	0xb
	.byte	0x42
	.byte	0x1a
	.4byte	0x91
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF106
	.byte	0xc
	.byte	0x48
	.byte	0x3
	.byte	0x5
	.byte	0
	.byte	0xee
	.byte	0xde
	.byte	0x18
	.byte	0x42
	.byte	0x6a
	.byte	0x37
	.uleb128 0x8
	.4byte	.LASF107
	.byte	0xd
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
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF108
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
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0xd
	.byte	0x5f
	.byte	0x1
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF109
	.byte	0
	.uleb128 0x7
	.4byte	.LASF110
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF111
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.0500eede18426a37,comdat
	.4byte	0x42
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0xee
	.byte	0xde
	.byte	0x18
	.byte	0x42
	.byte	0x6a
	.byte	0x37
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0xc
	.byte	0x44
	.byte	0x1
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF112
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF113
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF114
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
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
	.4byte	.LASF115
	.byte	0xe
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xe
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.4byte	0x4b
	.uleb128 0xe
	.4byte	0x5b
	.uleb128 0xf
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0x10
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x7
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF118
	.byte	0
	.section	.debug_types,"G",%progbits,wt.72463b0093bd9414,comdat
	.4byte	0x212
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x72
	.byte	0x46
	.byte	0x3b
	.byte	0
	.byte	0x93
	.byte	0xbd
	.byte	0x94
	.byte	0x14
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x11
	.2byte	0x558
	.byte	0xa
	.2byte	0x4ef
	.byte	0x9
	.4byte	0x15b
	.uleb128 0x12
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x4f0
	.byte	0x15
	.4byte	0x15b
	.byte	0
	.uleb128 0x12
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x4f1
	.byte	0x15
	.4byte	0x15b
	.byte	0x4
	.uleb128 0x12
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x4f2
	.byte	0x15
	.4byte	0x15b
	.byte	0x8
	.uleb128 0x12
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x4f3
	.byte	0x15
	.4byte	0x15b
	.byte	0xc
	.uleb128 0x12
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x4f4
	.byte	0x15
	.4byte	0x15b
	.byte	0x10
	.uleb128 0x12
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x4f5
	.byte	0x1b
	.4byte	0x160
	.byte	0x14
	.uleb128 0x12
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x4f6
	.byte	0x15
	.4byte	0x165
	.byte	0x40
	.uleb128 0x12
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x4f7
	.byte	0x1b
	.4byte	0x16a
	.byte	0x58
	.uleb128 0x13
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x4f8
	.byte	0x15
	.4byte	0x165
	.2byte	0x140
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x4f9
	.byte	0x1b
	.4byte	0x16f
	.2byte	0x158
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x4fa
	.byte	0x15
	.4byte	0x15b
	.2byte	0x200
	.uleb128 0x13
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x4fb
	.byte	0x1b
	.4byte	0x174
	.2byte	0x204
	.uleb128 0x13
	.4byte	.LASF131
	.byte	0xa
	.2byte	0x4fc
	.byte	0x15
	.4byte	0x15b
	.2byte	0x304
	.uleb128 0x13
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x4fd
	.byte	0x15
	.4byte	0x15b
	.2byte	0x308
	.uleb128 0x13
	.4byte	.LASF133
	.byte	0xa
	.2byte	0x4fe
	.byte	0x1b
	.4byte	0x179
	.2byte	0x30c
	.uleb128 0x13
	.4byte	.LASF134
	.byte	0xa
	.2byte	0x4ff
	.byte	0x15
	.4byte	0x15b
	.2byte	0x504
	.uleb128 0x13
	.4byte	.LASF135
	.byte	0xa
	.2byte	0x500
	.byte	0x15
	.4byte	0x15b
	.2byte	0x508
	.uleb128 0x13
	.4byte	.LASF136
	.byte	0xa
	.2byte	0x501
	.byte	0x1b
	.4byte	0x17e
	.2byte	0x50c
	.uleb128 0x13
	.4byte	.LASF137
	.byte	0xa
	.2byte	0x502
	.byte	0x15
	.4byte	0x15b
	.2byte	0x510
	.uleb128 0x13
	.4byte	.LASF138
	.byte	0xa
	.2byte	0x503
	.byte	0x1b
	.4byte	0x183
	.2byte	0x514
	.uleb128 0x14
	.ascii	"CC\000"
	.byte	0xa
	.2byte	0x504
	.byte	0x15
	.4byte	0x165
	.2byte	0x540
	.byte	0
	.uleb128 0xe
	.4byte	0x188
	.uleb128 0xe
	.4byte	0x194
	.uleb128 0xe
	.4byte	0x199
	.uleb128 0xe
	.4byte	0x1a9
	.uleb128 0xe
	.4byte	0x1ae
	.uleb128 0xe
	.4byte	0x1b3
	.uleb128 0xe
	.4byte	0x1b8
	.uleb128 0xe
	.4byte	0x1bd
	.uleb128 0xe
	.4byte	0x194
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x7
	.byte	0x38
	.byte	0x16
	.4byte	0x1c2
	.uleb128 0x15
	.4byte	0x1c9
	.uleb128 0xf
	.4byte	0x15b
	.4byte	0x1a9
	.uleb128 0x10
	.4byte	0x1c2
	.byte	0x5
	.byte	0
	.uleb128 0x15
	.4byte	0x1d9
	.uleb128 0x15
	.4byte	0x1e9
	.uleb128 0x15
	.4byte	0x1f9
	.uleb128 0x15
	.4byte	0x209
	.uleb128 0x15
	.4byte	0x188
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF118
	.uleb128 0xf
	.4byte	0x17e
	.4byte	0x1d9
	.uleb128 0x10
	.4byte	0x1c2
	.byte	0xa
	.byte	0
	.uleb128 0xf
	.4byte	0x17e
	.4byte	0x1e9
	.uleb128 0x10
	.4byte	0x1c2
	.byte	0x39
	.byte	0
	.uleb128 0xf
	.4byte	0x17e
	.4byte	0x1f9
	.uleb128 0x10
	.4byte	0x1c2
	.byte	0x29
	.byte	0
	.uleb128 0xf
	.4byte	0x17e
	.4byte	0x209
	.uleb128 0x10
	.4byte	0x1c2
	.byte	0x3f
	.byte	0
	.uleb128 0x16
	.4byte	0x17e
	.uleb128 0x10
	.4byte	0x1c2
	.byte	0x7d
	.byte	0
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
	.uleb128 0x17
	.4byte	.LASF143
	.byte	0x8
	.byte	0xf
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x12
	.4byte	.LASF139
	.byte	0xf
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x12
	.4byte	.LASF140
	.byte	0xf
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.4byte	.LASF141
	.byte	0xf
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1d
	.uleb128 0xa
	.byte	0x4
	.4byte	0x61
	.uleb128 0x19
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x1a
	.4byte	0x76
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x15
	.4byte	0x82
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF142
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
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x14
	.byte	0xf
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0xf
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xf
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x10
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x55
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF118
	.uleb128 0x15
	.4byte	0x5a
	.uleb128 0x8
	.4byte	.LASF146
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
	.4byte	.LASF147
	.byte	0xf
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0xf
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0xf
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
	.uleb128 0x15
	.4byte	0x6f
	.uleb128 0x15
	.4byte	0x76
	.uleb128 0x15
	.4byte	0x86
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF142
	.uleb128 0x8
	.4byte	.LASF150
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
	.uleb128 0x8
	.4byte	.LASF151
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
	.4byte	.LASF152
	.byte	0xf
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0xf
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0xf
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0xf
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0xf
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0xf
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF158
	.byte	0xf
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF159
	.byte	0xf
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
	.uleb128 0x19
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0x1a
	.4byte	0x130
	.uleb128 0x1a
	.4byte	0x130
	.byte	0
	.uleb128 0x19
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0x1a
	.4byte	0x130
	.byte	0
	.uleb128 0x19
	.4byte	0x130
	.4byte	0xea
	.uleb128 0x1a
	.4byte	0x137
	.uleb128 0x1a
	.4byte	0x130
	.byte	0
	.uleb128 0x19
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0x1a
	.4byte	0x137
	.byte	0
	.uleb128 0x19
	.4byte	0x130
	.4byte	0x112
	.uleb128 0x1a
	.4byte	0x13e
	.uleb128 0x1a
	.4byte	0x144
	.uleb128 0x1a
	.4byte	0x14b
	.byte	0
	.uleb128 0x19
	.4byte	0x130
	.4byte	0x130
	.uleb128 0x1a
	.4byte	0x155
	.uleb128 0x1a
	.4byte	0x15b
	.uleb128 0x1a
	.4byte	0x144
	.uleb128 0x1a
	.4byte	0x14b
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF45
	.uleb128 0xa
	.byte	0x4
	.4byte	0x161
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF118
	.uleb128 0x1d
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
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF142
	.uleb128 0x15
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
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF142
	.uleb128 0x15
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
	.uleb128 0x1c
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
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF45
	.byte	0
	.file 16 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 17 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 18 "../../../../../../components/libraries/util/app_util.h"
	.file 19 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 20 "../../../../../../components/libraries/util/sdk_errors.h"
	.file 21 "../../../../../../integration/nrfx/nrfx_glue.h"
	.file 22 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 23 "../../../../../../components/libraries/util/app_error.h"
	.file 24 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xcc7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1e
	.4byte	.LASF301
	.byte	0xc
	.4byte	.LASF302
	.4byte	.LASF303
	.4byte	.Ldebug_ranges0+0xa8
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF195
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x7
	.byte	0x30
	.byte	0x17
	.4byte	0x3c
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x15
	.4byte	0x3c
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF196
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x7
	.byte	0x36
	.byte	0x18
	.4byte	0x60
	.uleb128 0x15
	.4byte	0x4f
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF197
	.byte	0x7
	.byte	0x37
	.byte	0x14
	.4byte	0x78
	.uleb128 0xe
	.4byte	0x67
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x7
	.byte	0x38
	.byte	0x16
	.4byte	0x90
	.uleb128 0x15
	.4byte	0x7f
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF118
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF198
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF199
	.uleb128 0x9
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF45
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF142
	.uleb128 0x15
	.4byte	0xae
	.uleb128 0x8
	.4byte	.LASF151
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
	.uleb128 0x15
	.4byte	0xba
	.uleb128 0x8
	.4byte	.LASF146
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
	.uleb128 0x15
	.4byte	0xcf
	.uleb128 0x1f
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
	.uleb128 0x20
	.4byte	.LASF201
	.byte	0xf
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xdf
	.uleb128 0x20
	.4byte	.LASF202
	.byte	0xf
	.2byte	0x110
	.byte	0x25
	.4byte	0xca
	.uleb128 0x20
	.4byte	.LASF203
	.byte	0xf
	.2byte	0x111
	.byte	0x25
	.4byte	0xca
	.uleb128 0xf
	.4byte	0x43
	.4byte	0x12c
	.uleb128 0x10
	.4byte	0x90
	.byte	0x7f
	.byte	0
	.uleb128 0x15
	.4byte	0x11c
	.uleb128 0x20
	.4byte	.LASF204
	.byte	0xf
	.2byte	0x113
	.byte	0x1c
	.4byte	0x12c
	.uleb128 0xf
	.4byte	0xb5
	.4byte	0x149
	.uleb128 0x21
	.byte	0
	.uleb128 0x15
	.4byte	0x13e
	.uleb128 0x20
	.4byte	.LASF205
	.byte	0xf
	.2byte	0x115
	.byte	0x13
	.4byte	0x149
	.uleb128 0x20
	.4byte	.LASF206
	.byte	0xf
	.2byte	0x116
	.byte	0x13
	.4byte	0x149
	.uleb128 0x20
	.4byte	.LASF207
	.byte	0xf
	.2byte	0x117
	.byte	0x13
	.4byte	0x149
	.uleb128 0x20
	.4byte	.LASF208
	.byte	0xf
	.2byte	0x118
	.byte	0x13
	.4byte	0x149
	.uleb128 0x20
	.4byte	.LASF209
	.byte	0xf
	.2byte	0x11a
	.byte	0x13
	.4byte	0x149
	.uleb128 0x20
	.4byte	.LASF210
	.byte	0xf
	.2byte	0x11b
	.byte	0x13
	.4byte	0x149
	.uleb128 0x20
	.4byte	.LASF211
	.byte	0xf
	.2byte	0x11c
	.byte	0x13
	.4byte	0x149
	.uleb128 0x20
	.4byte	.LASF212
	.byte	0xf
	.2byte	0x11d
	.byte	0x13
	.4byte	0x149
	.uleb128 0x20
	.4byte	.LASF213
	.byte	0xf
	.2byte	0x11e
	.byte	0x13
	.4byte	0x149
	.uleb128 0x20
	.4byte	.LASF214
	.byte	0xf
	.2byte	0x11f
	.byte	0x13
	.4byte	0x149
	.uleb128 0x19
	.4byte	0x78
	.4byte	0x1df
	.uleb128 0x1a
	.4byte	0x1df
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1ea
	.uleb128 0x22
	.4byte	.LASF228
	.uleb128 0x15
	.4byte	0x1e5
	.uleb128 0x20
	.4byte	.LASF215
	.byte	0xf
	.2byte	0x135
	.byte	0xe
	.4byte	0x1fc
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1d0
	.uleb128 0x19
	.4byte	0x78
	.4byte	0x211
	.uleb128 0x1a
	.4byte	0x211
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x1e5
	.uleb128 0x20
	.4byte	.LASF216
	.byte	0xf
	.2byte	0x136
	.byte	0xe
	.4byte	0x224
	.uleb128 0xa
	.byte	0x4
	.4byte	0x202
	.uleb128 0xb
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
	.uleb128 0x20
	.4byte	.LASF218
	.byte	0xf
	.2byte	0x157
	.byte	0x1f
	.4byte	0x248
	.uleb128 0xa
	.byte	0x4
	.4byte	0x22a
	.uleb128 0x20
	.4byte	.LASF219
	.byte	0x10
	.2byte	0x744
	.byte	0x19
	.4byte	0x73
	.uleb128 0x23
	.4byte	.LASF220
	.byte	0x11
	.byte	0x21
	.byte	0x11
	.4byte	0x7f
	.uleb128 0xb
	.4byte	.LASF60
	.byte	0xa
	.2byte	0x505
	.byte	0x3
	.byte	0x72
	.byte	0x46
	.byte	0x3b
	.byte	0
	.byte	0x93
	.byte	0xbd
	.byte	0x94
	.byte	0x14
	.uleb128 0x23
	.4byte	.LASF221
	.byte	0x12
	.byte	0x53
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x23
	.4byte	.LASF222
	.byte	0x12
	.byte	0x54
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x23
	.4byte	.LASF223
	.byte	0x12
	.byte	0x72
	.byte	0x13
	.4byte	0x29c
	.uleb128 0xa
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x23
	.4byte	.LASF224
	.byte	0x12
	.byte	0x73
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x8
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
	.uleb128 0x23
	.4byte	.LASF226
	.byte	0xe
	.byte	0x75
	.byte	0x19
	.4byte	0x2ae
	.uleb128 0x18
	.4byte	.LASF227
	.byte	0x13
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2d7
	.uleb128 0x22
	.4byte	.LASF229
	.uleb128 0x20
	.4byte	.LASF230
	.byte	0x13
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2e9
	.uleb128 0xa
	.byte	0x4
	.4byte	0x2ca
	.uleb128 0x20
	.4byte	.LASF231
	.byte	0x13
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2e9
	.uleb128 0x20
	.4byte	.LASF232
	.byte	0x13
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2e9
	.uleb128 0x4
	.4byte	.LASF233
	.byte	0x14
	.byte	0x9e
	.byte	0x12
	.4byte	0x7f
	.uleb128 0x4
	.4byte	.LASF234
	.byte	0x15
	.byte	0xdb
	.byte	0x14
	.4byte	0x309
	.uleb128 0x8
	.4byte	.LASF106
	.byte	0xc
	.byte	0x48
	.byte	0x3
	.byte	0x5
	.byte	0
	.byte	0xee
	.byte	0xde
	.byte	0x18
	.byte	0x42
	.byte	0x6a
	.byte	0x37
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF108
	.uleb128 0x8
	.4byte	.LASF235
	.byte	0xb
	.byte	0x43
	.byte	0x3
	.byte	0x11
	.byte	0x69
	.byte	0x9a
	.byte	0x29
	.byte	0xb0
	.byte	0xe6
	.byte	0x4b
	.byte	0xb2
	.uleb128 0x4
	.4byte	.LASF236
	.byte	0xb
	.byte	0xb3
	.byte	0x12
	.4byte	0x7f
	.uleb128 0x8
	.4byte	.LASF237
	.byte	0x3
	.byte	0x78
	.byte	0x3
	.byte	0x66
	.byte	0xa1
	.byte	0xe
	.byte	0x1
	.byte	0x29
	.byte	0xbf
	.byte	0x81
	.byte	0xc5
	.uleb128 0x8
	.4byte	.LASF238
	.byte	0x3
	.byte	0x8b
	.byte	0x3
	.byte	0x96
	.byte	0x8b
	.byte	0x59
	.byte	0xae
	.byte	0xf5
	.byte	0x83
	.byte	0x36
	.byte	0x48
	.uleb128 0x8
	.4byte	.LASF54
	.byte	0x3
	.byte	0xb2
	.byte	0x3
	.byte	0x2f
	.byte	0xd
	.byte	0x6d
	.byte	0xc1
	.byte	0xd6
	.byte	0x1d
	.byte	0x95
	.byte	0x3e
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0x3
	.byte	0xbd
	.byte	0x3
	.byte	0x7e
	.byte	0xa7
	.byte	0x9
	.byte	0xe0
	.byte	0x34
	.byte	0xb6
	.byte	0xcc
	.byte	0x7b
	.uleb128 0x8
	.4byte	.LASF53
	.byte	0x3
	.byte	0xce
	.byte	0x3
	.byte	0x2a
	.byte	0x9c
	.byte	0x82
	.byte	0x53
	.byte	0xa7
	.byte	0x51
	.byte	0x21
	.byte	0xd2
	.uleb128 0x8
	.4byte	.LASF239
	.byte	0x3
	.byte	0xdf
	.byte	0x3
	.byte	0xc
	.byte	0x73
	.byte	0x12
	.byte	0x69
	.byte	0x1a
	.byte	0x7
	.byte	0xd7
	.byte	0x2a
	.uleb128 0xa
	.byte	0x4
	.4byte	0x267
	.uleb128 0x8
	.4byte	.LASF240
	.byte	0x2
	.byte	0x42
	.byte	0x3
	.byte	0x5b
	.byte	0xf5
	.byte	0x61
	.byte	0x73
	.byte	0xfc
	.byte	0x4d
	.byte	0x6b
	.byte	0x98
	.uleb128 0x15
	.4byte	0x3ba
	.uleb128 0x8
	.4byte	.LASF241
	.byte	0x2
	.byte	0x6b
	.byte	0x3
	.byte	0xa9
	.byte	0xc6
	.byte	0x1f
	.byte	0x40
	.byte	0xa4
	.byte	0x67
	.byte	0x1
	.byte	0xe
	.uleb128 0x8
	.4byte	.LASF242
	.byte	0x9
	.byte	0x14
	.byte	0x2
	.byte	0x1a
	.byte	0x7d
	.byte	0x7f
	.byte	0xd7
	.byte	0x4d
	.byte	0x47
	.byte	0x23
	.byte	0x19
	.uleb128 0x8
	.4byte	.LASF243
	.byte	0x9
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
	.uleb128 0x8
	.4byte	.LASF244
	.byte	0x8
	.byte	0x64
	.byte	0x3
	.byte	0x9a
	.byte	0x3c
	.byte	0x3
	.byte	0x94
	.byte	0x33
	.byte	0xd6
	.byte	0x33
	.byte	0xa1
	.uleb128 0x8
	.4byte	.LASF245
	.byte	0x6
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
	.uleb128 0x20
	.4byte	.LASF246
	.byte	0x16
	.2byte	0x124
	.byte	0x2e
	.4byte	0x40f
	.uleb128 0x23
	.4byte	.LASF247
	.byte	0x1
	.byte	0x9
	.byte	0xc
	.4byte	0x78
	.uleb128 0x23
	.4byte	.LASF248
	.byte	0x1
	.byte	0xa
	.byte	0xc
	.4byte	0x78
	.uleb128 0x24
	.4byte	.LASF249
	.byte	0x1
	.byte	0xc
	.byte	0x1a
	.4byte	0x3ff
	.uleb128 0x5
	.byte	0x3
	.4byte	m_ppi_channel_left
	.uleb128 0x24
	.4byte	.LASF250
	.byte	0x1
	.byte	0xd
	.byte	0x1a
	.4byte	0x3ff
	.uleb128 0x5
	.byte	0x3
	.4byte	m_ppi_channel_right
	.uleb128 0x25
	.4byte	.LASF251
	.byte	0x1
	.byte	0x10
	.byte	0xe
	.4byte	0x3ef
	.uleb128 0x5
	.byte	0x3
	.4byte	encoder
	.uleb128 0x25
	.4byte	.LASF252
	.byte	0x1
	.byte	0x14
	.byte	0xe
	.4byte	0x3ef
	.uleb128 0x5
	.byte	0x3
	.4byte	encoder_old
	.uleb128 0x26
	.4byte	.LASF254
	.byte	0x1
	.byte	0x88
	.byte	0xe
	.4byte	0x3ef
	.4byte	.LFB326
	.4byte	.LFE326-.LFB326
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4b6
	.uleb128 0x24
	.4byte	.LASF253
	.byte	0x1
	.byte	0x89
	.byte	0x14
	.4byte	0x3ef
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF255
	.byte	0x1
	.byte	0x79
	.byte	0xe
	.4byte	0x3ef
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e0
	.uleb128 0x24
	.4byte	.LASF253
	.byte	0x1
	.byte	0x7a
	.byte	0x14
	.4byte	0x3ef
	.uleb128 0x2
	.byte	0x70
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF304
	.byte	0x1
	.byte	0x6a
	.byte	0x6
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d9
	.uleb128 0x28
	.ascii	"err\000"
	.byte	0x1
	.byte	0x6b
	.byte	0xd
	.4byte	0x315
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x24
	.4byte	.LASF256
	.byte	0x1
	.byte	0x6f
	.byte	0x1a
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x90
	.4byte	0x556
	.uleb128 0x2a
	.4byte	.LASF257
	.byte	0x1
	.byte	0x76
	.byte	0x16
	.4byte	0x8b
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x2b
	.4byte	.LVL64
	.4byte	0xc29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x76
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL54
	.4byte	0xc35
	.uleb128 0x2e
	.4byte	.LVL55
	.4byte	0xc41
	.4byte	0x57e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL56
	.4byte	0xc4e
	.4byte	0x597
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL57
	.4byte	0xc41
	.4byte	0x5b6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL60
	.4byte	0xc4e
	.4byte	0x5cf
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL62
	.4byte	0xc5b
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF258
	.byte	0x1
	.byte	0x32
	.byte	0x6
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9f3
	.uleb128 0x30
	.4byte	.LASF259
	.byte	0x1
	.byte	0x32
	.byte	0x25
	.4byte	0x3df
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x30
	.4byte	.LASF260
	.byte	0x1
	.byte	0x32
	.byte	0x3f
	.4byte	0x9f3
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x28
	.ascii	"err\000"
	.byte	0x1
	.byte	0x33
	.byte	0xd
	.4byte	0x315
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2a
	.4byte	.LASF261
	.byte	0x1
	.byte	0x38
	.byte	0xb
	.4byte	0x7f
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2a
	.4byte	.LASF262
	.byte	0x1
	.byte	0x39
	.byte	0xb
	.4byte	0x7f
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x24
	.4byte	.LASF256
	.byte	0x1
	.byte	0x3b
	.byte	0x1a
	.4byte	0x338
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.ascii	"pin\000"
	.byte	0x1
	.byte	0x3d
	.byte	0x6
	.4byte	0x78
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2a
	.4byte	.LASF263
	.byte	0x1
	.byte	0x3e
	.byte	0x15
	.4byte	0x9fe
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x24
	.4byte	.LASF264
	.byte	0x1
	.byte	0x4d
	.byte	0x16
	.4byte	0x3cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0
	.4byte	0x6d6
	.uleb128 0x2a
	.4byte	.LASF257
	.byte	0x1
	.byte	0x36
	.byte	0x16
	.4byte	0x8b
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x2b
	.4byte	.LVL43
	.4byte	0xc29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x36
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0x70d
	.uleb128 0x2a
	.4byte	.LASF257
	.byte	0x1
	.byte	0x50
	.byte	0x16
	.4byte	0x8b
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2b
	.4byte	.LVL47
	.4byte	0xc29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x50
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x744
	.uleb128 0x2a
	.4byte	.LASF257
	.byte	0x1
	.byte	0x56
	.byte	0x16
	.4byte	0x8b
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x2b
	.4byte	.LVL49
	.4byte	0xc29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x56
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0x77b
	.uleb128 0x2a
	.4byte	.LASF257
	.byte	0x1
	.byte	0x5a
	.byte	0x16
	.4byte	0x8b
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x2b
	.4byte	.LVL51
	.4byte	0xc29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x5a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0x7b2
	.uleb128 0x2a
	.4byte	.LASF257
	.byte	0x1
	.byte	0x5c
	.byte	0x16
	.4byte	0x8b
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x2b
	.4byte	.LVL53
	.4byte	0xc29
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x5c
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	0xb26
	.4byte	.LBI27
	.byte	.LVU64
	.4byte	.LBB27
	.4byte	.LBE27-.LBB27
	.byte	0x1
	.byte	0x52
	.byte	0x18
	.4byte	0x817
	.uleb128 0x32
	.4byte	0xb45
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x32
	.4byte	0xb38
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x33
	.4byte	0xb80
	.4byte	.LBI29
	.byte	.LVU67
	.4byte	.LBB29
	.4byte	.LBE29-.LBB29
	.byte	0x2
	.2byte	0x161
	.byte	0x16
	.uleb128 0x32
	.4byte	0xb9f
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x32
	.4byte	0xb92
	.4byte	.LLST14
	.4byte	.LVUS14
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	0xaf9
	.4byte	.LBI34
	.byte	.LVU103
	.4byte	.LBB34
	.4byte	.LBE34-.LBB34
	.byte	0x1
	.byte	0x65
	.2byte	0x101
	.4byte	0x87d
	.uleb128 0x32
	.4byte	0xb18
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x32
	.4byte	0xb0b
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x33
	.4byte	0xb53
	.4byte	.LBI36
	.byte	.LVU106
	.4byte	.LBB36
	.4byte	.LBE36-.LBB36
	.byte	0x2
	.2byte	0x17d
	.byte	0xc
	.uleb128 0x32
	.4byte	0xb72
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x32
	.4byte	0xb65
	.4byte	.LLST21
	.4byte	.LVUS21
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	0xadf
	.4byte	.LBI38
	.byte	.LVU113
	.4byte	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0x66
	.byte	0x3
	.4byte	0x8f2
	.uleb128 0x32
	.4byte	0xaec
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x36
	.4byte	0xbad
	.4byte	.LBI40
	.byte	.LVU117
	.4byte	.LBB40
	.4byte	.LBE40-.LBB40
	.byte	0x4
	.byte	0x48
	.byte	0x9
	.uleb128 0x32
	.4byte	0xbba
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x37
	.4byte	0xbea
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x37
	.4byte	0xbf6
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x38
	.4byte	.LVL37
	.uleb128 0x7
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x31
	.byte	0x21
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfa00
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL9
	.4byte	0xc35
	.uleb128 0x2e
	.4byte	.LVL14
	.4byte	0xc41
	.4byte	0x91e
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	gpiote_event_handler_dummy
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL15
	.4byte	0xc67
	.4byte	0x932
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL18
	.4byte	0xc74
	.4byte	0x955
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	timer_event_handler_dummy
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL20
	.4byte	0xc80
	.4byte	0x969
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL23
	.4byte	0xc8c
	.4byte	0x97d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL25
	.4byte	0xc98
	.4byte	0x997
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL27
	.4byte	0xca4
	.uleb128 0x2e
	.4byte	.LVL29
	.4byte	0xc4e
	.4byte	0x9b9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL30
	.4byte	0xcb0
	.4byte	0x9d2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL34
	.4byte	0xcbd
	.4byte	0x9e9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL40
	.4byte	0xc5b
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.4byte	0x3ca
	.uleb128 0x15
	.4byte	0x9f3
	.uleb128 0xa
	.byte	0x4
	.4byte	0x3ff
	.uleb128 0x39
	.4byte	.LASF268
	.byte	0x1
	.byte	0x2d
	.byte	0xd
	.4byte	.LFB322
	.4byte	.LFE322-.LFB322
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa37
	.uleb128 0x3a
	.ascii	"pin\000"
	.byte	0x1
	.byte	0x2d
	.byte	0x3a
	.4byte	0x348
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3b
	.4byte	.LASF265
	.byte	0x1
	.byte	0x2e
	.byte	0x22
	.4byte	0x321
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF266
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa6a
	.uleb128 0x3b
	.4byte	.LASF267
	.byte	0x1
	.byte	0x29
	.byte	0x32
	.4byte	0x364
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3b
	.4byte	.LASF52
	.byte	0x1
	.byte	0x29
	.byte	0x44
	.4byte	0xa5
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x39
	.4byte	.LASF269
	.byte	0x1
	.byte	0x21
	.byte	0xd
	.4byte	.LFB320
	.4byte	.LFE320-.LFB320
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xabb
	.uleb128 0x3c
	.ascii	"pin\000"
	.byte	0x1
	.byte	0x21
	.byte	0x2d
	.4byte	0x348
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x30
	.4byte	.LASF265
	.byte	0x1
	.byte	0x22
	.byte	0x22
	.4byte	0x321
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2d
	.4byte	.LVL5
	.4byte	0xacd
	.uleb128 0x2d
	.4byte	.LVL7
	.4byte	0xabb
	.byte	0
	.uleb128 0x3d
	.4byte	.LASF270
	.byte	0x1
	.byte	0x1d
	.byte	0x6
	.4byte	.LFB319
	.4byte	.LFE319-.LFB319
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3d
	.4byte	.LASF271
	.byte	0x1
	.byte	0x19
	.byte	0x6
	.4byte	.LFB318
	.4byte	.LFE318-.LFB318
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3e
	.4byte	.LASF281
	.byte	0x4
	.byte	0x40
	.byte	0x14
	.byte	0x3
	.4byte	0xaf9
	.uleb128 0x3f
	.4byte	.LASF272
	.byte	0x4
	.byte	0x40
	.byte	0x2a
	.4byte	0x7f
	.byte	0
	.uleb128 0x40
	.4byte	.LASF275
	.byte	0x2
	.2byte	0x17a
	.byte	0x18
	.4byte	0x7f
	.byte	0x3
	.4byte	0xb26
	.uleb128 0x41
	.4byte	.LASF273
	.byte	0x2
	.2byte	0x17a
	.byte	0x4a
	.4byte	0x9f9
	.uleb128 0x41
	.4byte	.LASF274
	.byte	0x2
	.2byte	0x17b
	.byte	0x48
	.4byte	0x3a4
	.byte	0
	.uleb128 0x40
	.4byte	.LASF276
	.byte	0x2
	.2byte	0x15e
	.byte	0x18
	.4byte	0x7f
	.byte	0x3
	.4byte	0xb53
	.uleb128 0x41
	.4byte	.LASF273
	.byte	0x2
	.2byte	0x15e
	.byte	0x4f
	.4byte	0x9f9
	.uleb128 0x41
	.4byte	.LASF277
	.byte	0x2
	.2byte	0x15f
	.byte	0x47
	.4byte	0x354
	.byte	0
	.uleb128 0x40
	.4byte	.LASF278
	.byte	0x3
	.2byte	0x246
	.byte	0x18
	.4byte	0x7f
	.byte	0x3
	.4byte	0xb80
	.uleb128 0x41
	.4byte	.LASF57
	.byte	0x3
	.2byte	0x246
	.byte	0x3b
	.4byte	0x3b4
	.uleb128 0x41
	.4byte	.LASF274
	.byte	0x3
	.2byte	0x247
	.byte	0x43
	.4byte	0x3a4
	.byte	0
	.uleb128 0x40
	.4byte	.LASF279
	.byte	0x3
	.2byte	0x1df
	.byte	0x1a
	.4byte	0x29c
	.byte	0x3
	.4byte	0xbad
	.uleb128 0x41
	.4byte	.LASF57
	.byte	0x3
	.2byte	0x1df
	.byte	0x46
	.4byte	0x3b4
	.uleb128 0x41
	.4byte	.LASF280
	.byte	0x3
	.2byte	0x1e0
	.byte	0x48
	.4byte	0x354
	.byte	0
	.uleb128 0x3e
	.4byte	.LASF282
	.byte	0x5
	.byte	0x80
	.byte	0x14
	.byte	0x3
	.4byte	0xc03
	.uleb128 0x3f
	.4byte	.LASF283
	.byte	0x5
	.byte	0x80
	.byte	0x33
	.4byte	0x7f
	.uleb128 0x42
	.4byte	.LASF284
	.byte	0x5
	.byte	0x99
	.byte	0x1b
	.4byte	0xc13
	.byte	0x10
	.uleb128 0x5
	.byte	0x3
	.4byte	delay_bytecode.7993
	.uleb128 0x4
	.4byte	.LASF285
	.byte	0x5
	.byte	0xa0
	.byte	0x15
	.4byte	0xc18
	.uleb128 0x15
	.4byte	0xbd9
	.uleb128 0x43
	.4byte	.LASF286
	.byte	0x5
	.byte	0xa2
	.byte	0x18
	.4byte	0xbe5
	.uleb128 0x43
	.4byte	.LASF287
	.byte	0x5
	.byte	0xa3
	.byte	0xe
	.4byte	0x7f
	.byte	0
	.uleb128 0xf
	.4byte	0x5b
	.4byte	0xc13
	.uleb128 0x10
	.4byte	0x90
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.4byte	0xc03
	.uleb128 0xa
	.byte	0x4
	.4byte	0xc1e
	.uleb128 0x44
	.4byte	0xc29
	.uleb128 0x1a
	.4byte	0x7f
	.byte	0
	.uleb128 0x45
	.4byte	.LASF288
	.4byte	.LASF288
	.byte	0x17
	.byte	0x6f
	.byte	0x6
	.uleb128 0x45
	.4byte	.LASF289
	.4byte	.LASF289
	.byte	0xb
	.byte	0xd1
	.byte	0x5
	.uleb128 0x46
	.4byte	.LASF290
	.4byte	.LASF290
	.byte	0xb
	.2byte	0x14a
	.byte	0xc
	.uleb128 0x46
	.4byte	.LASF291
	.4byte	.LASF291
	.byte	0xb
	.2byte	0x161
	.byte	0x6
	.uleb128 0x45
	.4byte	.LASF292
	.4byte	.LASF292
	.byte	0xb
	.byte	0xc6
	.byte	0xc
	.uleb128 0x46
	.4byte	.LASF293
	.4byte	.LASF293
	.byte	0xb
	.2byte	0x17a
	.byte	0xa
	.uleb128 0x45
	.4byte	.LASF294
	.4byte	.LASF294
	.byte	0x2
	.byte	0x90
	.byte	0xc
	.uleb128 0x45
	.4byte	.LASF295
	.4byte	.LASF295
	.byte	0x2
	.byte	0xa0
	.byte	0x6
	.uleb128 0x45
	.4byte	.LASF296
	.4byte	.LASF296
	.byte	0x18
	.byte	0x5c
	.byte	0xc
	.uleb128 0x45
	.4byte	.LASF297
	.4byte	.LASF297
	.byte	0x18
	.byte	0x74
	.byte	0xc
	.uleb128 0x45
	.4byte	.LASF298
	.4byte	.LASF298
	.byte	0x18
	.byte	0x8c
	.byte	0xc
	.uleb128 0x46
	.4byte	.LASF299
	.4byte	.LASF299
	.byte	0x2
	.2byte	0x105
	.byte	0xa
	.uleb128 0x46
	.4byte	.LASF300
	.4byte	.LASF300
	.byte	0x16
	.2byte	0x1b4
	.byte	0x6
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
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
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3e
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
	.uleb128 0x3f
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
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
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x88
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x46
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
.LVUS26:
	.uleb128 .LVU165
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 .LVU172
	.uleb128 .LVU174
	.uleb128 0
.LLST26:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL59
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LFE324
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU169
	.uleb128 .LVU172
	.uleb128 .LVU174
	.uleb128 0
.LLST27:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL63
	.4byte	.LFE324
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9-1
	.4byte	.LFE323
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL9-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL9-1
	.4byte	.LFE323
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU29
	.uleb128 .LVU44
	.uleb128 .LVU56
	.uleb128 .LVU60
	.uleb128 .LVU73
	.uleb128 .LVU77
	.uleb128 .LVU81
	.uleb128 .LVU85
	.uleb128 .LVU89
	.uleb128 .LVU93
	.uleb128 .LVU132
	.uleb128 .LVU133
	.uleb128 .LVU133
	.uleb128 .LVU137
	.uleb128 .LVU138
	.uleb128 .LVU140
	.uleb128 .LVU141
	.uleb128 .LVU144
	.uleb128 .LVU145
	.uleb128 .LVU148
	.uleb128 .LVU149
	.uleb128 .LVU152
.LLST4:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU36
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU129
	.uleb128 .LVU135
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 0
.LLST5:
	.4byte	.LVL11
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL22
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL44
	.4byte	.LVL48
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL48
	.4byte	.LFE323
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU37
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU129
	.uleb128 .LVU135
	.uleb128 .LVU138
	.uleb128 .LVU138
	.uleb128 0
.LLST6:
	.4byte	.LVL11
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE323
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU45
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 .LVU129
	.uleb128 .LVU138
	.uleb128 0
.LLST7:
	.4byte	.LVL13
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL16
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL46
	.4byte	.LFE323
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU45
	.uleb128 .LVU96
	.uleb128 .LVU138
	.uleb128 0
.LLST8:
	.4byte	.LVL13
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL46
	.4byte	.LFE323
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU31
	.uleb128 .LVU44
	.uleb128 .LVU133
	.uleb128 .LVU137
.LLST9:
	.4byte	.LVL10
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU58
	.uleb128 .LVU60
	.uleb128 .LVU138
	.uleb128 .LVU140
.LLST10:
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL46
	.4byte	.LVL47-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU75
	.uleb128 .LVU77
	.uleb128 .LVU141
	.uleb128 .LVU144
.LLST15:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48
	.4byte	.LVL49-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU83
	.uleb128 .LVU85
	.uleb128 .LVU145
	.uleb128 .LVU148
.LLST16:
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU91
	.uleb128 .LVU93
	.uleb128 .LVU149
	.uleb128 .LVU152
.LLST17:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL52
	.4byte	.LVL53-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU64
	.uleb128 .LVU70
.LLST11:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU64
	.uleb128 .LVU70
.LLST12:
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU67
	.uleb128 .LVU70
.LLST13:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU67
	.uleb128 .LVU70
.LLST14:
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU103
	.uleb128 .LVU109
.LLST18:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU103
	.uleb128 .LVU109
.LLST19:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU106
	.uleb128 .LVU109
.LLST20:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU106
	.uleb128 .LVU109
.LLST21:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU113
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 .LVU127
	.uleb128 .LVU127
	.uleb128 .LVU128
	.uleb128 .LVU128
	.uleb128 .LVU129
.LLST22:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x3
	.byte	0x8
	.byte	0x64
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL37
	.4byte	.LVL38
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL38
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU117
	.uleb128 .LVU125
.LLST23:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xa
	.2byte	0x3e8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU122
	.uleb128 .LVU124
	.uleb128 .LVU124
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU125
.LLST24:
	.4byte	.LVL35
	.4byte	.LVL36
	.2byte	0x8
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL37-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL37-1
	.4byte	.LVL37
	.2byte	0x8
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU123
	.uleb128 .LVU125
.LLST25:
	.4byte	.LVL35
	.4byte	.LVL37
	.2byte	0x4
	.byte	0xa
	.2byte	0xfa00
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST0:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5-1
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7-1
	.4byte	.LFE320
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU21
	.uleb128 .LVU21
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5-1
	.4byte	.LVL6
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL7-1
	.4byte	.LFE320
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x580
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xccb
	.4byte	0x2b
	.ascii	"NRF_GPIOTE_POLARITY_LOTOHI\000"
	.4byte	0x31
	.ascii	"NRF_GPIOTE_POLARITY_HITOLO\000"
	.4byte	0x37
	.ascii	"NRF_GPIOTE_POLARITY_TOGGLE\000"
	.4byte	0x2b
	.ascii	"NRF_GPIO_PIN_NOPULL\000"
	.4byte	0x31
	.ascii	"NRF_GPIO_PIN_PULLDOWN\000"
	.4byte	0x37
	.ascii	"NRF_GPIO_PIN_PULLUP\000"
	.4byte	0x2b
	.ascii	"NRF_TIMER_TASK_START\000"
	.4byte	0x31
	.ascii	"NRF_TIMER_TASK_STOP\000"
	.4byte	0x37
	.ascii	"NRF_TIMER_TASK_COUNT\000"
	.4byte	0x3d
	.ascii	"NRF_TIMER_TASK_CLEAR\000"
	.4byte	0x43
	.ascii	"NRF_TIMER_TASK_SHUTDOWN\000"
	.4byte	0x49
	.ascii	"NRF_TIMER_TASK_CAPTURE0\000"
	.4byte	0x4f
	.ascii	"NRF_TIMER_TASK_CAPTURE1\000"
	.4byte	0x55
	.ascii	"NRF_TIMER_TASK_CAPTURE2\000"
	.4byte	0x5b
	.ascii	"NRF_TIMER_TASK_CAPTURE3\000"
	.4byte	0x61
	.ascii	"NRF_TIMER_TASK_CAPTURE4\000"
	.4byte	0x67
	.ascii	"NRF_TIMER_TASK_CAPTURE5\000"
	.4byte	0x2b
	.ascii	"NRF_TIMER_MODE_TIMER\000"
	.4byte	0x31
	.ascii	"NRF_TIMER_MODE_COUNTER\000"
	.4byte	0x37
	.ascii	"NRF_TIMER_MODE_LOW_POWER_COUNTER\000"
	.4byte	0x2b
	.ascii	"NRF_TIMER_CC_CHANNEL0\000"
	.4byte	0x31
	.ascii	"NRF_TIMER_CC_CHANNEL1\000"
	.4byte	0x37
	.ascii	"NRF_TIMER_CC_CHANNEL2\000"
	.4byte	0x3d
	.ascii	"NRF_TIMER_CC_CHANNEL3\000"
	.4byte	0x43
	.ascii	"NRF_TIMER_CC_CHANNEL4\000"
	.4byte	0x49
	.ascii	"NRF_TIMER_CC_CHANNEL5\000"
	.4byte	0x2b
	.ascii	"ENCODER_LEFT\000"
	.4byte	0x31
	.ascii	"ENCODER_RIGHT\000"
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
	.4byte	0x444
	.ascii	"m_ppi_channel_left\000"
	.4byte	0x456
	.ascii	"m_ppi_channel_right\000"
	.4byte	0x468
	.ascii	"encoder\000"
	.4byte	0x47a
	.ascii	"encoder_old\000"
	.4byte	0x444
	.ascii	"m_ppi_channel_left\000"
	.4byte	0x456
	.ascii	"m_ppi_channel_right\000"
	.4byte	0x48c
	.ascii	"encoder_get_all_ticks\000"
	.4byte	0x4b6
	.ascii	"encoder_get_ticks\000"
	.4byte	0x4e0
	.ascii	"encoder_init_int\000"
	.4byte	0x5d9
	.ascii	"encoder_init_ppi\000"
	.4byte	0xa04
	.ascii	"gpiote_event_handler_dummy\000"
	.4byte	0xa37
	.ascii	"timer_event_handler_dummy\000"
	.4byte	0xa6a
	.ascii	"cb_trampoline\000"
	.4byte	0xabb
	.ascii	"encoder_cb_right\000"
	.4byte	0xacd
	.ascii	"encoder_cb_left\000"
	.4byte	0xadf
	.ascii	"nrf_delay_ms\000"
	.4byte	0xaf9
	.ascii	"nrfx_timer_capture_get\000"
	.4byte	0xb26
	.ascii	"nrfx_timer_task_address_get\000"
	.4byte	0xb53
	.ascii	"nrf_timer_cc_read\000"
	.4byte	0xb80
	.ascii	"nrf_timer_task_address_get\000"
	.4byte	0xbad
	.ascii	"nrfx_coredep_delay_us\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x324
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xccb
	.4byte	0x29
	.ascii	"signed char\000"
	.4byte	0x3c
	.ascii	"unsigned char\000"
	.4byte	0x30
	.ascii	"uint8_t\000"
	.4byte	0x48
	.ascii	"short int\000"
	.4byte	0x60
	.ascii	"short unsigned int\000"
	.4byte	0x4f
	.ascii	"uint16_t\000"
	.4byte	0x78
	.ascii	"int\000"
	.4byte	0x67
	.ascii	"int32_t\000"
	.4byte	0x90
	.ascii	"unsigned int\000"
	.4byte	0x7f
	.ascii	"uint32_t\000"
	.4byte	0x97
	.ascii	"long long int\000"
	.4byte	0x9e
	.ascii	"long long unsigned int\000"
	.4byte	0xa7
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xae
	.ascii	"char\000"
	.4byte	0xba
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xcf
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x22a
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x267
	.ascii	"NRF_TIMER_Type\000"
	.4byte	0x2ae
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2ca
	.ascii	"FILE\000"
	.4byte	0x309
	.ascii	"ret_code_t\000"
	.4byte	0x315
	.ascii	"nrfx_err_t\000"
	.4byte	0x321
	.ascii	"nrf_gpiote_polarity_t\000"
	.4byte	0x331
	.ascii	"_Bool\000"
	.4byte	0x338
	.ascii	"nrfx_gpiote_in_config_t\000"
	.4byte	0x348
	.ascii	"nrfx_gpiote_pin_t\000"
	.4byte	0x354
	.ascii	"nrf_timer_task_t\000"
	.4byte	0x364
	.ascii	"nrf_timer_event_t\000"
	.4byte	0x374
	.ascii	"nrf_timer_mode_t\000"
	.4byte	0x384
	.ascii	"nrf_timer_bit_width_t\000"
	.4byte	0x394
	.ascii	"nrf_timer_frequency_t\000"
	.4byte	0x3a4
	.ascii	"nrf_timer_cc_channel_t\000"
	.4byte	0x3ba
	.ascii	"nrfx_timer_t\000"
	.4byte	0x3cf
	.ascii	"nrfx_timer_config_t\000"
	.4byte	0x3df
	.ascii	"EncoderSide_t\000"
	.4byte	0x3ef
	.ascii	"encoderTicks\000"
	.4byte	0x3ff
	.ascii	"nrf_ppi_channel_t\000"
	.4byte	0x40f
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB321
	.4byte	.LFE321-.LFB321
	.4byte	.LFB322
	.4byte	.LFE322-.LFB322
	.4byte	.LFB318
	.4byte	.LFE318-.LFB318
	.4byte	.LFB319
	.4byte	.LFE319-.LFB319
	.4byte	.LFB320
	.4byte	.LFE320-.LFB320
	.4byte	.LFB323
	.4byte	.LFE323-.LFB323
	.4byte	.LFB324
	.4byte	.LFE324-.LFB324
	.4byte	.LFB325
	.4byte	.LFE325-.LFB325
	.4byte	.LFB326
	.4byte	.LFE326-.LFB326
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB25
	.4byte	.LBE25
	.4byte	.LBB43
	.4byte	.LBE43
	.4byte	0
	.4byte	0
	.4byte	.LBB26
	.4byte	.LBE26
	.4byte	.LBB44
	.4byte	.LBE44
	.4byte	0
	.4byte	0
	.4byte	.LBB31
	.4byte	.LBE31
	.4byte	.LBB45
	.4byte	.LBE45
	.4byte	0
	.4byte	0
	.4byte	.LBB32
	.4byte	.LBE32
	.4byte	.LBB46
	.4byte	.LBE46
	.4byte	0
	.4byte	0
	.4byte	.LBB33
	.4byte	.LBE33
	.4byte	.LBB47
	.4byte	.LBE47
	.4byte	0
	.4byte	0
	.4byte	.LBB38
	.4byte	.LBE38
	.4byte	.LBB42
	.4byte	.LBE42
	.4byte	0
	.4byte	0
	.4byte	.LBB48
	.4byte	.LBE48
	.4byte	.LBB49
	.4byte	.LBE49
	.4byte	0
	.4byte	0
	.4byte	.LFB321
	.4byte	.LFE321
	.4byte	.LFB322
	.4byte	.LFE322
	.4byte	.LFB318
	.4byte	.LFE318
	.4byte	.LFB319
	.4byte	.LFE319
	.4byte	.LFB320
	.4byte	.LFE320
	.4byte	.LFB323
	.4byte	.LFE323
	.4byte	.LFB324
	.4byte	.LFE324
	.4byte	.LFB325
	.4byte	.LFE325
	.4byte	.LFB326
	.4byte	.LFE326
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
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x9
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xb
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
	.uleb128 0x2c
	.uleb128 0x7
	.byte	0x4
	.file 29 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x1d
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.file 30 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x1e
	.byte	0x4
	.file 31 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x1f
	.byte	0x3
	.uleb128 0x54
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x10
	.file 32 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x20
	.file 33 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x21
	.byte	0x4
	.byte	0x4
	.file 34 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x22
	.byte	0x4
	.file 35 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.file 36 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x24
	.byte	0x4
	.file 37 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x25
	.byte	0x4
	.file 38 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x26
	.byte	0x4
	.file 39 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x27
	.byte	0x4
	.byte	0x4
	.file 40 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x28
	.file 41 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x29
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x15
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
	.uleb128 0x27
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
	.file 47 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0xb7
	.uleb128 0x2f
	.file 48 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x30
	.file 49 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x31
	.byte	0x4
	.file 50 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x32
	.byte	0x4
	.file 51 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x33
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
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x17
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x13
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x14
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x32
	.byte	0x4
	.byte	0x4
	.file 52 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x14
	.byte	0x4
	.file 53 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x35
	.file 54 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x36
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 55 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x37
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x4
	.byte	0x4
	.file 56 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x38
	.file 57 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x39
	.file 58 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x3a
	.byte	0x4
	.file 59 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x3b
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x12
	.byte	0x4
	.file 60 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x3c
	.byte	0x4
	.byte	0x4
	.file 61 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x3d
	.byte	0x4
	.file 62 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x3e
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x16
	.file 63 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x3f
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF122:
	.ascii	"TASKS_CLEAR\000"
.LASF298:
	.ascii	"nrfx_ppi_channel_enable\000"
.LASF144:
	.ascii	"__locale_s\000"
.LASF156:
	.ascii	"__towupper\000"
.LASF151:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF266:
	.ascii	"timer_event_handler_dummy\000"
.LASF73:
	.ascii	"NRF_TIMER_FREQ_250kHz\000"
.LASF293:
	.ascii	"nrfx_gpiote_in_event_addr_get\000"
.LASF5:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF84:
	.ascii	"NRF_TIMER_EVENT_COMPARE0\000"
.LASF85:
	.ascii	"NRF_TIMER_EVENT_COMPARE1\000"
.LASF86:
	.ascii	"NRF_TIMER_EVENT_COMPARE2\000"
.LASF87:
	.ascii	"NRF_TIMER_EVENT_COMPARE3\000"
.LASF88:
	.ascii	"NRF_TIMER_EVENT_COMPARE4\000"
.LASF89:
	.ascii	"NRF_TIMER_EVENT_COMPARE5\000"
.LASF197:
	.ascii	"int32_t\000"
.LASF264:
	.ascii	"timer_config\000"
.LASF225:
	.ascii	"nrf_nvic_state_t\000"
.LASF250:
	.ascii	"m_ppi_channel_right\000"
.LASF287:
	.ascii	"cycles\000"
.LASF254:
	.ascii	"encoder_get_all_ticks\000"
.LASF251:
	.ascii	"encoder\000"
.LASF190:
	.ascii	"time_format\000"
.LASF209:
	.ascii	"__RAL_data_utf8_period\000"
.LASF47:
	.ascii	"ENCODER_RIGHT\000"
.LASF256:
	.ascii	"config\000"
.LASF186:
	.ascii	"month_names\000"
.LASF239:
	.ascii	"nrf_timer_cc_channel_t\000"
.LASF277:
	.ascii	"timer_task\000"
.LASF131:
	.ascii	"INTENSET\000"
.LASF74:
	.ascii	"NRF_TIMER_FREQ_125kHz\000"
.LASF274:
	.ascii	"cc_channel\000"
.LASF123:
	.ascii	"TASKS_SHUTDOWN\000"
.LASF302:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\drivers\\encoder.c\000"
.LASF132:
	.ascii	"INTENCLR\000"
.LASF101:
	.ascii	"sense\000"
.LASF61:
	.ascii	"NRF_TIMER_CC_CHANNEL0\000"
.LASF62:
	.ascii	"NRF_TIMER_CC_CHANNEL1\000"
.LASF63:
	.ascii	"NRF_TIMER_CC_CHANNEL2\000"
.LASF64:
	.ascii	"NRF_TIMER_CC_CHANNEL3\000"
.LASF106:
	.ascii	"nrf_gpiote_polarity_t\000"
.LASF66:
	.ascii	"NRF_TIMER_CC_CHANNEL5\000"
.LASF174:
	.ascii	"n_cs_precedes\000"
.LASF154:
	.ascii	"__tolower\000"
.LASF222:
	.ascii	"__StackLimit\000"
.LASF170:
	.ascii	"int_frac_digits\000"
.LASF104:
	.ascii	"hi_accuracy\000"
.LASF168:
	.ascii	"positive_sign\000"
.LASF149:
	.ascii	"codeset\000"
.LASF237:
	.ascii	"nrf_timer_task_t\000"
.LASF81:
	.ascii	"NRF_TIMER_MODE_TIMER\000"
.LASF134:
	.ascii	"MODE\000"
.LASF243:
	.ascii	"encoderTicks\000"
.LASF189:
	.ascii	"date_format\000"
.LASF45:
	.ascii	"long int\000"
.LASF76:
	.ascii	"NRF_TIMER_FREQ_31250Hz\000"
.LASF143:
	.ascii	"__RAL_error_decoder_s\000"
.LASF217:
	.ascii	"__RAL_error_decoder_t\000"
.LASF200:
	.ascii	"__RAL_global_locale\000"
.LASF141:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF178:
	.ascii	"int_p_cs_precedes\000"
.LASF269:
	.ascii	"cb_trampoline\000"
.LASF179:
	.ascii	"int_n_cs_precedes\000"
.LASF121:
	.ascii	"TASKS_COUNT\000"
.LASF279:
	.ascii	"nrf_timer_task_address_get\000"
.LASF300:
	.ascii	"nrf_log_frontend_std_1\000"
.LASF21:
	.ascii	"NRF_PPI_CHANNEL10\000"
.LASF22:
	.ascii	"NRF_PPI_CHANNEL11\000"
.LASF23:
	.ascii	"NRF_PPI_CHANNEL12\000"
.LASF24:
	.ascii	"NRF_PPI_CHANNEL13\000"
.LASF25:
	.ascii	"NRF_PPI_CHANNEL14\000"
.LASF26:
	.ascii	"NRF_PPI_CHANNEL15\000"
.LASF27:
	.ascii	"NRF_PPI_CHANNEL16\000"
.LASF240:
	.ascii	"nrfx_timer_t\000"
.LASF29:
	.ascii	"NRF_PPI_CHANNEL18\000"
.LASF30:
	.ascii	"NRF_PPI_CHANNEL19\000"
.LASF282:
	.ascii	"nrfx_coredep_delay_us\000"
.LASF95:
	.ascii	"NRF_TIMER_TASK_CAPTURE0\000"
.LASF244:
	.ascii	"nrf_ppi_channel_t\000"
.LASF97:
	.ascii	"NRF_TIMER_TASK_CAPTURE2\000"
.LASF98:
	.ascii	"NRF_TIMER_TASK_CAPTURE3\000"
.LASF99:
	.ascii	"NRF_TIMER_TASK_CAPTURE4\000"
.LASF100:
	.ascii	"NRF_TIMER_TASK_CAPTURE5\000"
.LASF255:
	.ascii	"encoder_get_ticks\000"
.LASF195:
	.ascii	"signed char\000"
.LASF56:
	.ascii	"uint8_t\000"
.LASF116:
	.ascii	"__cr_flag\000"
.LASF267:
	.ascii	"event_type\000"
.LASF265:
	.ascii	"action\000"
.LASF32:
	.ascii	"NRF_PPI_CHANNEL21\000"
.LASF33:
	.ascii	"NRF_PPI_CHANNEL22\000"
.LASF34:
	.ascii	"NRF_PPI_CHANNEL23\000"
.LASF35:
	.ascii	"NRF_PPI_CHANNEL24\000"
.LASF36:
	.ascii	"NRF_PPI_CHANNEL25\000"
.LASF37:
	.ascii	"NRF_PPI_CHANNEL26\000"
.LASF38:
	.ascii	"NRF_PPI_CHANNEL27\000"
.LASF39:
	.ascii	"NRF_PPI_CHANNEL28\000"
.LASF40:
	.ascii	"NRF_PPI_CHANNEL29\000"
.LASF124:
	.ascii	"RESERVED0\000"
.LASF126:
	.ascii	"RESERVED1\000"
.LASF10:
	.ascii	"unsigned char\000"
.LASF130:
	.ascii	"RESERVED3\000"
.LASF133:
	.ascii	"RESERVED4\000"
.LASF136:
	.ascii	"RESERVED5\000"
.LASF138:
	.ascii	"RESERVED6\000"
.LASF175:
	.ascii	"n_sep_by_space\000"
.LASF262:
	.ascii	"ppi_gpio_event_addr\000"
.LASF246:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF285:
	.ascii	"delay_func_t\000"
.LASF41:
	.ascii	"NRF_PPI_CHANNEL30\000"
.LASF211:
	.ascii	"__RAL_data_utf8_space\000"
.LASF273:
	.ascii	"p_instance\000"
.LASF108:
	.ascii	"_Bool\000"
.LASF129:
	.ascii	"SHORTS\000"
.LASF128:
	.ascii	"RESERVED2\000"
.LASF107:
	.ascii	"nrf_gpio_pin_pull_t\000"
.LASF142:
	.ascii	"char\000"
.LASF114:
	.ascii	"NRF_GPIOTE_POLARITY_TOGGLE\000"
.LASF290:
	.ascii	"nrfx_gpiote_in_init\000"
.LASF247:
	.ascii	"RightMotorDirection\000"
.LASF295:
	.ascii	"nrfx_timer_enable\000"
.LASF183:
	.ascii	"int_n_sign_posn\000"
.LASF177:
	.ascii	"n_sign_posn\000"
.LASF228:
	.ascii	"timeval\000"
.LASF208:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF72:
	.ascii	"NRF_TIMER_FREQ_500kHz\000"
.LASF166:
	.ascii	"mon_thousands_sep\000"
.LASF283:
	.ascii	"time_us\000"
.LASF4:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF119:
	.ascii	"TASKS_START\000"
.LASF157:
	.ascii	"__towlower\000"
.LASF230:
	.ascii	"stdin\000"
.LASF169:
	.ascii	"negative_sign\000"
.LASF58:
	.ascii	"instance_id\000"
.LASF70:
	.ascii	"NRF_TIMER_FREQ_2MHz\000"
.LASF226:
	.ascii	"nrf_nvic_state\000"
.LASF139:
	.ascii	"decode\000"
.LASF7:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF69:
	.ascii	"NRF_TIMER_FREQ_4MHz\000"
.LASF233:
	.ascii	"ret_code_t\000"
.LASF93:
	.ascii	"NRF_TIMER_TASK_CLEAR\000"
.LASF280:
	.ascii	"task\000"
.LASF68:
	.ascii	"NRF_TIMER_FREQ_8MHz\000"
.LASF236:
	.ascii	"nrfx_gpiote_pin_t\000"
.LASF202:
	.ascii	"__RAL_codeset_ascii\000"
.LASF146:
	.ascii	"__RAL_locale_t\000"
.LASF43:
	.ascii	"left\000"
.LASF127:
	.ascii	"EVENTS_COMPARE\000"
.LASF187:
	.ascii	"abbrev_month_names\000"
.LASF301:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF276:
	.ascii	"nrfx_timer_task_address_get\000"
.LASF65:
	.ascii	"NRF_TIMER_CC_CHANNEL4\000"
.LASF194:
	.ascii	"__wchar\000"
.LASF248:
	.ascii	"LeftMotorDirection\000"
.LASF218:
	.ascii	"__RAL_error_decoder_head\000"
.LASF270:
	.ascii	"encoder_cb_right\000"
.LASF150:
	.ascii	"__RAL_locale_data_t\000"
.LASF207:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF220:
	.ascii	"SystemCoreClock\000"
.LASF167:
	.ascii	"mon_grouping\000"
.LASF159:
	.ascii	"__mbtowc\000"
.LASF55:
	.ascii	"nrf_timer_bit_width_t\000"
.LASF221:
	.ascii	"__StackTop\000"
.LASF263:
	.ascii	"ppi_channel\000"
.LASF249:
	.ascii	"m_ppi_channel_left\000"
.LASF59:
	.ascii	"cc_channel_count\000"
.LASF188:
	.ascii	"am_pm_indicator\000"
.LASF173:
	.ascii	"p_sep_by_space\000"
.LASF0:
	.ascii	"module_id\000"
.LASF181:
	.ascii	"int_n_sep_by_space\000"
.LASF253:
	.ascii	"ticks\000"
.LASF215:
	.ascii	"__user_set_time_of_day\000"
.LASF46:
	.ascii	"ENCODER_LEFT\000"
.LASF44:
	.ascii	"right\000"
.LASF198:
	.ascii	"long long int\000"
.LASF192:
	.ascii	"__mbstate_s\000"
.LASF260:
	.ascii	"counter\000"
.LASF94:
	.ascii	"NRF_TIMER_TASK_SHUTDOWN\000"
.LASF294:
	.ascii	"nrfx_timer_init\000"
.LASF235:
	.ascii	"nrfx_gpiote_in_config_t\000"
.LASF92:
	.ascii	"NRF_TIMER_TASK_COUNT\000"
.LASF145:
	.ascii	"__category\000"
.LASF304:
	.ascii	"encoder_init_int\000"
.LASF6:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF281:
	.ascii	"nrf_delay_ms\000"
.LASF219:
	.ascii	"ITM_RxBuffer\000"
.LASF48:
	.ascii	"frequency\000"
.LASF191:
	.ascii	"date_time_format\000"
.LASF60:
	.ascii	"NRF_TIMER_Type\000"
.LASF57:
	.ascii	"p_reg\000"
.LASF118:
	.ascii	"unsigned int\000"
.LASF284:
	.ascii	"delay_bytecode\000"
.LASF67:
	.ascii	"NRF_TIMER_FREQ_16MHz\000"
.LASF238:
	.ascii	"nrf_timer_event_t\000"
.LASF292:
	.ascii	"nrfx_gpiote_init\000"
.LASF176:
	.ascii	"p_sign_posn\000"
.LASF288:
	.ascii	"app_error_handler\000"
.LASF8:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF272:
	.ascii	"ms_time\000"
.LASF216:
	.ascii	"__user_get_time_of_day\000"
.LASF261:
	.ascii	"ppi_timer_task_addr\000"
.LASF165:
	.ascii	"mon_decimal_point\000"
.LASF78:
	.ascii	"NRF_TIMER_BIT_WIDTH_16\000"
.LASF203:
	.ascii	"__RAL_codeset_utf8\000"
.LASF120:
	.ascii	"TASKS_STOP\000"
.LASF201:
	.ascii	"__RAL_c_locale\000"
.LASF160:
	.ascii	"decimal_point\000"
.LASF229:
	.ascii	"__RAL_FILE\000"
.LASF91:
	.ascii	"NRF_TIMER_TASK_STOP\000"
.LASF252:
	.ascii	"encoder_old\000"
.LASF110:
	.ascii	"NRF_GPIO_PIN_PULLDOWN\000"
.LASF227:
	.ascii	"FILE\000"
.LASF242:
	.ascii	"EncoderSide_t\000"
.LASF224:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF109:
	.ascii	"NRF_GPIO_PIN_NOPULL\000"
.LASF90:
	.ascii	"NRF_TIMER_TASK_START\000"
.LASF9:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF212:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF152:
	.ascii	"__isctype\000"
.LASF199:
	.ascii	"long long unsigned int\000"
.LASF180:
	.ascii	"int_p_sep_by_space\000"
.LASF2:
	.ascii	"uint16_t\000"
.LASF113:
	.ascii	"NRF_GPIOTE_POLARITY_HITOLO\000"
.LASF125:
	.ascii	"TASKS_CAPTURE\000"
.LASF268:
	.ascii	"gpiote_event_handler_dummy\000"
.LASF291:
	.ascii	"nrfx_gpiote_in_event_enable\000"
.LASF79:
	.ascii	"NRF_TIMER_BIT_WIDTH_24\000"
.LASF234:
	.ascii	"nrfx_err_t\000"
.LASF112:
	.ascii	"NRF_GPIOTE_POLARITY_LOTOHI\000"
.LASF28:
	.ascii	"NRF_PPI_CHANNEL17\000"
.LASF111:
	.ascii	"NRF_GPIO_PIN_PULLUP\000"
.LASF162:
	.ascii	"grouping\000"
.LASF80:
	.ascii	"NRF_TIMER_BIT_WIDTH_32\000"
.LASF299:
	.ascii	"nrfx_timer_capture\000"
.LASF245:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF185:
	.ascii	"abbrev_day_names\000"
.LASF137:
	.ascii	"PRESCALER\000"
.LASF241:
	.ascii	"nrfx_timer_config_t\000"
.LASF204:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF161:
	.ascii	"thousands_sep\000"
.LASF223:
	.ascii	"_vectors\000"
.LASF297:
	.ascii	"nrfx_ppi_channel_assign\000"
.LASF153:
	.ascii	"__toupper\000"
.LASF147:
	.ascii	"name\000"
.LASF296:
	.ascii	"nrfx_ppi_channel_alloc\000"
.LASF105:
	.ascii	"skip_gpio_setup\000"
.LASF135:
	.ascii	"BITMODE\000"
.LASF31:
	.ascii	"NRF_PPI_CHANNEL20\000"
.LASF171:
	.ascii	"frac_digits\000"
.LASF278:
	.ascii	"nrf_timer_cc_read\000"
.LASF102:
	.ascii	"pull\000"
.LASF232:
	.ascii	"stderr\000"
.LASF196:
	.ascii	"short int\000"
.LASF257:
	.ascii	"LOCAL_ERR_CODE\000"
.LASF96:
	.ascii	"NRF_TIMER_TASK_CAPTURE1\000"
.LASF49:
	.ascii	"mode\000"
.LASF71:
	.ascii	"NRF_TIMER_FREQ_1MHz\000"
.LASF193:
	.ascii	"__state\000"
.LASF77:
	.ascii	"NRF_TIMER_BIT_WIDTH_8\000"
.LASF158:
	.ascii	"__wctomb\000"
.LASF303:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF184:
	.ascii	"day_names\000"
.LASF213:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF182:
	.ascii	"int_p_sign_posn\000"
.LASF103:
	.ascii	"is_watcher\000"
.LASF42:
	.ascii	"NRF_PPI_CHANNEL31\000"
.LASF155:
	.ascii	"__iswctype\000"
.LASF11:
	.ascii	"NRF_PPI_CHANNEL0\000"
.LASF12:
	.ascii	"NRF_PPI_CHANNEL1\000"
.LASF13:
	.ascii	"NRF_PPI_CHANNEL2\000"
.LASF14:
	.ascii	"NRF_PPI_CHANNEL3\000"
.LASF15:
	.ascii	"NRF_PPI_CHANNEL4\000"
.LASF16:
	.ascii	"NRF_PPI_CHANNEL5\000"
.LASF17:
	.ascii	"NRF_PPI_CHANNEL6\000"
.LASF18:
	.ascii	"NRF_PPI_CHANNEL7\000"
.LASF19:
	.ascii	"NRF_PPI_CHANNEL8\000"
.LASF20:
	.ascii	"NRF_PPI_CHANNEL9\000"
.LASF205:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF275:
	.ascii	"nrfx_timer_capture_get\000"
.LASF54:
	.ascii	"nrf_timer_mode_t\000"
.LASF1:
	.ascii	"padding\000"
.LASF52:
	.ascii	"p_context\000"
.LASF50:
	.ascii	"bit_width\000"
.LASF117:
	.ascii	"uint32_t\000"
.LASF115:
	.ascii	"__irq_masks\000"
.LASF286:
	.ascii	"delay_cycles\000"
.LASF164:
	.ascii	"currency_symbol\000"
.LASF214:
	.ascii	"__RAL_data_empty_string\000"
.LASF53:
	.ascii	"nrf_timer_frequency_t\000"
.LASF163:
	.ascii	"int_curr_symbol\000"
.LASF172:
	.ascii	"p_cs_precedes\000"
.LASF75:
	.ascii	"NRF_TIMER_FREQ_62500Hz\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF231:
	.ascii	"stdout\000"
.LASF51:
	.ascii	"interrupt_priority\000"
.LASF259:
	.ascii	"side\000"
.LASF82:
	.ascii	"NRF_TIMER_MODE_COUNTER\000"
.LASF210:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF271:
	.ascii	"encoder_cb_left\000"
.LASF140:
	.ascii	"next\000"
.LASF148:
	.ascii	"data\000"
.LASF83:
	.ascii	"NRF_TIMER_MODE_LOW_POWER_COUNTER\000"
.LASF289:
	.ascii	"nrfx_gpiote_is_init\000"
.LASF258:
	.ascii	"encoder_init_ppi\000"
.LASF206:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
