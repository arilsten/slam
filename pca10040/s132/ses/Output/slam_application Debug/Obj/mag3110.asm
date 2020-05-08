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
	.file	"mag3110.c"
	.text
.Ltext0:
	.section	.text.mag3110_write,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mag3110_write, %function
mag3110_write:
.LVL0:
.LFB277:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\mag3110.c"
	.loc 1 38 53 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 38 53 is_stmt 0 view .LVU1
	push	{lr}
.LCFI0:
	sub	sp, sp, #12
.LCFI1:
	strb	r1, [sp, #7]
	.loc 1 39 9 is_stmt 1 view .LVU2
	movs	r3, #1
	add	r2, sp, #7
	mov	r1, r0
.LVL1:
	.loc 1 39 9 is_stmt 0 view .LVU3
	movs	r0, #14
.LVL2:
	.loc 1 39 9 view .LVU4
	bl	i2cSend
.LVL3:
	.loc 1 40 1 view .LVU5
	add	sp, sp, #12
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.LFE277:
	.size	mag3110_write, .-mag3110_write
	.section	.text.mag3110_read,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mag3110_read, %function
mag3110_read:
.LVL4:
.LFB278:
	.loc 1 42 42 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 42 42 is_stmt 0 view .LVU7
	push	{r4, lr}
.LCFI3:
	mov	r1, r0
	.loc 1 43 9 is_stmt 1 view .LVU8
	.loc 1 44 9 view .LVU9
	ldr	r4, .L5
	movs	r3, #1
	mov	r2, r4
	movs	r0, #14
.LVL5:
	.loc 1 44 9 is_stmt 0 view .LVU10
	bl	i2cRecive
.LVL6:
	.loc 1 45 2 is_stmt 1 view .LVU11
	.loc 1 46 1 is_stmt 0 view .LVU12
	ldrb	r0, [r4]	@ zero_extendqisi2
	pop	{r4, pc}
.L6:
	.align	2
.L5:
	.word	.LANCHOR0
.LFE278:
	.size	mag3110_read, .-mag3110_read
	.section	.text.mag_init,"ax",%progbits
	.align	1
	.global	mag_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mag_init, %function
mag_init:
.LVL7:
.LFB279:
	.loc 1 48 38 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 48 38 is_stmt 0 view .LVU14
	push	{r4, lr}
.LCFI4:
	mov	r4, r0
	.loc 1 50 2 is_stmt 1 view .LVU15
	movs	r1, #160
	movs	r0, #17
.LVL8:
	.loc 1 50 2 is_stmt 0 view .LVU16
	bl	mag3110_write
.LVL9:
	.loc 1 51 2 is_stmt 1 view .LVU17
	.loc 1 51 32 is_stmt 0 view .LVU18
	lsls	r1, r4, #3
	.loc 1 51 27 view .LVU19
	orr	r1, r1, #1
	.loc 1 51 2 view .LVU20
	and	r1, r1, #249
	movs	r0, #16
	bl	mag3110_write
.LVL10:
	.loc 1 52 1 view .LVU21
	pop	{r4, pc}
.LFE279:
	.size	mag_init, .-mag_init
	.section	.rodata.mag_calibrate.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Reading initial values\000"
	.align	2
.LC1:
	.ascii	"Starting calibration\000"
	.align	2
.LC2:
	.ascii	"Value available\012\000"
	.align	2
.LC3:
	.ascii	"Value read: %d\012\000"
	.align	2
.LC4:
	.ascii	"Calibration complete: %d, %d, %d, %d\000"
	.section	.text.mag_calibrate,"ax",%progbits
	.align	1
	.global	mag_calibrate
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mag_calibrate, %function
mag_calibrate:
.LFB280:
	.loc 1 54 22 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI5:
	sub	sp, sp, #20
.LCFI6:
	.loc 1 55 2 view .LVU23
.LVL11:
	.loc 1 56 2 view .LVU24
	.loc 1 58 2 view .LVU25
	.loc 1 58 75 view .LVU26
	.loc 1 58 130 view .LVU27
	.loc 1 58 211 is_stmt 0 view .LVU28
	ldr	r3, .L28
	ldrh	r0, [r3]
	.loc 1 58 222 view .LVU29
	lsls	r0, r0, #16
	.loc 1 58 130 view .LVU30
	ldr	r1, .L28+4
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL12:
.L10:
	.loc 1 59 41 is_stmt 1 discriminator 1 view .LVU31
	.loc 1 59 13 discriminator 1 view .LVU32
	.loc 1 59 14 is_stmt 0 discriminator 1 view .LVU33
	bl	nrf_log_frontend_dequeue
.LVL13:
	.loc 1 59 13 discriminator 1 view .LVU34
	cmp	r0, #0
	bne	.L10
.L11:
	.loc 1 61 3 is_stmt 1 discriminator 1 view .LVU35
	.loc 1 60 8 discriminator 1 view .LVU36
	.loc 1 60 24 is_stmt 0 discriminator 1 view .LVU37
	movs	r0, #0
	bl	mag3110_read
.LVL14:
	.loc 1 60 8 discriminator 1 view .LVU38
	tst	r0, #8
	beq	.L11
	.loc 1 63 2 is_stmt 1 view .LVU39
	.loc 1 63 18 is_stmt 0 view .LVU40
	movs	r0, #1
.LVL15:
	.loc 1 63 18 view .LVU41
	bl	mag3110_read
.LVL16:
	mov	r9, r0
.LVL17:
	.loc 1 64 2 is_stmt 1 view .LVU42
	.loc 1 64 18 is_stmt 0 view .LVU43
	movs	r0, #2
	bl	mag3110_read
.LVL18:
	mov	r7, r0
.LVL19:
	.loc 1 65 2 is_stmt 1 view .LVU44
	.loc 1 65 18 is_stmt 0 view .LVU45
	movs	r0, #3
	bl	mag3110_read
.LVL20:
	mov	r8, r0
.LVL21:
	.loc 1 66 2 is_stmt 1 view .LVU46
	.loc 1 66 18 is_stmt 0 view .LVU47
	movs	r0, #4
	bl	mag3110_read
.LVL22:
	mov	r6, r0
.LVL23:
	.loc 1 67 2 is_stmt 1 view .LVU48
	movs	r0, #5
	bl	mag3110_read
.LVL24:
	.loc 1 68 2 view .LVU49
	movs	r0, #6
	bl	mag3110_read
.LVL25:
	.loc 1 69 2 view .LVU50
	.loc 1 69 24 is_stmt 0 view .LVU51
	lsl	r9, r9, #8
.LVL26:
	.loc 1 69 29 view .LVU52
	sxth	r9, r9
	sxth	r7, r7
.LVL27:
	.loc 1 69 10 view .LVU53
	orr	r9, r9, r7
.LVL28:
	.loc 1 70 2 is_stmt 1 view .LVU54
	.loc 1 70 24 is_stmt 0 view .LVU55
	lsl	r8, r8, #8
.LVL29:
	.loc 1 70 29 view .LVU56
	sxth	r8, r8
	sxth	r6, r6
.LVL30:
	.loc 1 70 10 view .LVU57
	orr	r8, r8, r6
.LVL31:
	.loc 1 71 2 is_stmt 1 view .LVU58
	.loc 1 72 2 view .LVU59
	.loc 1 74 2 view .LVU60
	.loc 1 74 75 view .LVU61
	.loc 1 74 130 view .LVU62
	.loc 1 74 211 is_stmt 0 view .LVU63
	ldr	r3, .L28
	ldrh	r0, [r3]
	.loc 1 74 222 view .LVU64
	lsls	r0, r0, #16
	.loc 1 74 130 view .LVU65
	ldr	r1, .L28+8
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL32:
.L12:
	.loc 1 75 41 is_stmt 1 discriminator 1 view .LVU66
	.loc 1 75 13 discriminator 1 view .LVU67
	.loc 1 75 14 is_stmt 0 discriminator 1 view .LVU68
	bl	nrf_log_frontend_dequeue
.LVL33:
	.loc 1 75 13 discriminator 1 view .LVU69
	cmp	r0, #0
	bne	.L12
	.loc 1 72 10 view .LVU70
	mov	r10, r8
	.loc 1 71 10 view .LVU71
	mov	fp, r9
	.loc 1 55 6 view .LVU72
	movs	r7, #0
	b	.L13
.LVL34:
.L20:
.LBB2:
	.loc 1 105 3 is_stmt 1 view .LVU73
	.loc 1 105 11 is_stmt 0 view .LVU74
	adds	r7, r7, #1
.LVL35:
.L13:
	.loc 1 105 11 view .LVU75
.LBE2:
	.loc 1 76 8 is_stmt 1 view .LVU76
	cmp	r7, #300
	bge	.L27
.L14:
.LBB3:
	.loc 1 78 4 discriminator 1 view .LVU77
	.loc 1 77 9 discriminator 1 view .LVU78
	.loc 1 77 25 is_stmt 0 discriminator 1 view .LVU79
	movs	r0, #0
	bl	mag3110_read
.LVL36:
	.loc 1 77 9 discriminator 1 view .LVU80
	tst	r0, #8
	beq	.L14
	.loc 1 80 3 is_stmt 1 discriminator 3 view .LVU81
	.loc 1 80 76 discriminator 3 view .LVU82
	.loc 1 80 131 discriminator 3 view .LVU83
	.loc 1 80 212 is_stmt 0 discriminator 3 view .LVU84
	ldr	r3, .L28
	ldrh	r0, [r3]
.LVL37:
	.loc 1 80 223 discriminator 3 view .LVU85
	lsls	r0, r0, #16
	.loc 1 80 131 discriminator 3 view .LVU86
	ldr	r1, .L28+12
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL38:
	.loc 1 80 256 is_stmt 1 discriminator 3 view .LVU87
	.loc 1 81 3 discriminator 3 view .LVU88
	.loc 1 81 8 discriminator 3 view .LVU89
.L15:
	.loc 1 81 42 discriminator 1 view .LVU90
	.loc 1 81 14 discriminator 1 view .LVU91
	.loc 1 81 15 is_stmt 0 discriminator 1 view .LVU92
	bl	nrf_log_frontend_dequeue
.LVL39:
	.loc 1 81 14 discriminator 1 view .LVU93
	cmp	r0, #0
	bne	.L15
	.loc 1 81 52 is_stmt 1 discriminator 2 view .LVU94
	.loc 1 83 3 discriminator 2 view .LVU95
	.loc 1 83 11 is_stmt 0 discriminator 2 view .LVU96
	movs	r0, #1
	bl	mag3110_read
.LVL40:
	mov	r4, r0
.LVL41:
	.loc 1 84 3 is_stmt 1 discriminator 2 view .LVU97
	.loc 1 84 11 is_stmt 0 discriminator 2 view .LVU98
	movs	r0, #2
	bl	mag3110_read
.LVL42:
	mov	r6, r0
.LVL43:
	.loc 1 85 3 is_stmt 1 discriminator 2 view .LVU99
	.loc 1 85 11 is_stmt 0 discriminator 2 view .LVU100
	movs	r0, #3
	bl	mag3110_read
.LVL44:
	mov	r5, r0
.LVL45:
	.loc 1 86 3 is_stmt 1 discriminator 2 view .LVU101
	.loc 1 86 11 is_stmt 0 discriminator 2 view .LVU102
	movs	r0, #4
	bl	mag3110_read
.LVL46:
	str	r0, [sp, #12]
.LVL47:
	.loc 1 87 3 is_stmt 1 discriminator 2 view .LVU103
	movs	r0, #5
	bl	mag3110_read
.LVL48:
	.loc 1 88 3 discriminator 2 view .LVU104
	movs	r0, #6
	bl	mag3110_read
.LVL49:
	.loc 1 90 3 discriminator 2 view .LVU105
	.loc 1 90 21 is_stmt 0 discriminator 2 view .LVU106
	lsls	r4, r4, #8
.LVL50:
	.loc 1 90 26 discriminator 2 view .LVU107
	sxth	r4, r4
	sxth	r6, r6
.LVL51:
	.loc 1 90 11 discriminator 2 view .LVU108
	orrs	r6, r6, r4
.LVL52:
	.loc 1 91 3 is_stmt 1 discriminator 2 view .LVU109
	.loc 1 91 21 is_stmt 0 discriminator 2 view .LVU110
	lsls	r5, r5, #8
.LVL53:
	.loc 1 91 26 discriminator 2 view .LVU111
	sxth	r5, r5
	ldrsh	r0, [sp, #12]
	.loc 1 91 11 discriminator 2 view .LVU112
	orrs	r5, r5, r0
.LVL54:
	.loc 1 93 3 is_stmt 1 discriminator 2 view .LVU113
	.loc 1 93 76 discriminator 2 view .LVU114
	.loc 1 93 131 discriminator 2 view .LVU115
	.loc 1 93 212 is_stmt 0 discriminator 2 view .LVU116
	ldr	r3, .L28
	ldrh	r0, [r3]
	.loc 1 93 223 discriminator 2 view .LVU117
	lsls	r0, r0, #16
	.loc 1 93 131 discriminator 2 view .LVU118
	mov	r2, r6
	ldr	r1, .L28+16
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL55:
.L16:
	.loc 1 94 42 is_stmt 1 discriminator 1 view .LVU119
	.loc 1 94 14 discriminator 1 view .LVU120
	.loc 1 94 15 is_stmt 0 discriminator 1 view .LVU121
	bl	nrf_log_frontend_dequeue
.LVL56:
	.loc 1 94 14 discriminator 1 view .LVU122
	cmp	r0, #0
	bne	.L16
	.loc 1 94 52 is_stmt 1 discriminator 2 view .LVU123
	.loc 1 96 3 discriminator 2 view .LVU124
	.loc 1 96 6 is_stmt 0 discriminator 2 view .LVU125
	cmp	fp, r6
	bge	.L17
	.loc 1 97 10 view .LVU126
	mov	fp, r6
.LVL57:
.L17:
	.loc 1 98 3 is_stmt 1 view .LVU127
	.loc 1 98 6 is_stmt 0 view .LVU128
	cmp	r9, r6
	ble	.L18
	.loc 1 99 10 view .LVU129
	mov	r9, r6
.LVL58:
.L18:
	.loc 1 100 3 is_stmt 1 view .LVU130
	.loc 1 100 6 is_stmt 0 view .LVU131
	cmp	r10, r5
	bge	.L19
	.loc 1 101 10 view .LVU132
	mov	r10, r5
.LVL59:
.L19:
	.loc 1 102 3 is_stmt 1 view .LVU133
	.loc 1 102 6 is_stmt 0 view .LVU134
	cmp	r8, r5
	ble	.L20
	.loc 1 103 10 view .LVU135
	mov	r8, r5
.LVL60:
	.loc 1 103 10 view .LVU136
	b	.L20
.LVL61:
.L27:
	.loc 1 103 10 view .LVU137
.LBE3:
	.loc 1 108 2 is_stmt 1 discriminator 3 view .LVU138
	.loc 1 108 75 discriminator 3 view .LVU139
	.loc 1 108 130 discriminator 3 view .LVU140
	.loc 1 108 211 is_stmt 0 discriminator 3 view .LVU141
	ldr	r3, .L28
	ldrh	r0, [r3]
	.loc 1 108 222 discriminator 3 view .LVU142
	lsls	r0, r0, #16
	.loc 1 108 130 discriminator 3 view .LVU143
	str	r8, [sp, #4]
	str	r10, [sp]
	mov	r3, r9
	mov	r2, fp
	ldr	r1, .L28+20
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_4
.LVL62:
	.loc 1 108 350 is_stmt 1 discriminator 3 view .LVU144
	.loc 1 109 2 discriminator 3 view .LVU145
	.loc 1 109 7 discriminator 3 view .LVU146
.L21:
	.loc 1 109 41 discriminator 1 view .LVU147
	.loc 1 109 13 discriminator 1 view .LVU148
	.loc 1 109 14 is_stmt 0 discriminator 1 view .LVU149
	bl	nrf_log_frontend_dequeue
.LVL63:
	.loc 1 109 13 discriminator 1 view .LVU150
	cmp	r0, #0
	bne	.L21
	.loc 1 109 51 is_stmt 1 discriminator 2 view .LVU151
	.loc 1 111 2 discriminator 2 view .LVU152
	.loc 1 111 20 is_stmt 0 discriminator 2 view .LVU153
	add	r0, r9, fp
	.loc 1 111 28 discriminator 2 view .LVU154
	add	r0, r0, r0, lsr #31
	asrs	r0, r0, #1
	.loc 1 111 11 discriminator 2 view .LVU155
	ldr	r6, .L28+24
	str	r0, [r6]
	.loc 1 112 2 is_stmt 1 discriminator 2 view .LVU156
	.loc 1 112 20 is_stmt 0 discriminator 2 view .LVU157
	add	r3, r8, r10
	.loc 1 112 28 discriminator 2 view .LVU158
	add	r3, r3, r3, lsr #31
	asrs	r3, r3, #1
	.loc 1 112 11 discriminator 2 view .LVU159
	ldr	r5, .L28+28
	str	r3, [r5]
	.loc 1 113 2 is_stmt 1 discriminator 2 view .LVU160
	.loc 1 113 12 is_stmt 0 discriminator 2 view .LVU161
	bl	abs
.LVL64:
	mov	r4, r0
	.loc 1 113 26 discriminator 2 view .LVU162
	ldr	r0, [r5]
	bl	abs
.LVL65:
	mov	r7, r0
.LVL66:
	.loc 1 113 45 discriminator 2 view .LVU163
	sub	r0, fp, r9
	bl	abs
.LVL67:
	.loc 1 113 43 discriminator 2 view .LVU164
	lsls	r3, r0, #1
	.loc 1 113 39 discriminator 2 view .LVU165
	sdiv	r7, r7, r3
	.loc 1 113 25 discriminator 2 view .LVU166
	add	r4, r4, r7
	.loc 1 113 10 discriminator 2 view .LVU167
	vmov	s15, r4	@ int
	vcvt.f32.s32	s15, s15
	ldr	r3, .L28+32
	vstr.32	s15, [r3]
	.loc 1 114 2 is_stmt 1 discriminator 2 view .LVU168
	.loc 1 114 12 is_stmt 0 discriminator 2 view .LVU169
	ldr	r0, [r6]
	bl	abs
.LVL68:
	mov	r4, r0
	.loc 1 114 26 discriminator 2 view .LVU170
	ldr	r0, [r5]
	bl	abs
.LVL69:
	mov	r5, r0
	.loc 1 114 45 discriminator 2 view .LVU171
	sub	r0, r10, r8
	bl	abs
.LVL70:
	.loc 1 114 43 discriminator 2 view .LVU172
	lsls	r3, r0, #1
	.loc 1 114 39 discriminator 2 view .LVU173
	sdiv	r5, r5, r3
	.loc 1 114 25 discriminator 2 view .LVU174
	add	r4, r4, r5
	.loc 1 114 10 discriminator 2 view .LVU175
	vmov	s15, r4	@ int
	vcvt.f32.s32	s15, s15
	ldr	r3, .L28+36
	vstr.32	s15, [r3]
	.loc 1 115 1 discriminator 2 view .LVU176
	add	sp, sp, #20
.LCFI7:
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL71:
.L29:
	.loc 1 115 1 discriminator 2 view .LVU177
	.align	2
.L28:
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LANCHOR3
	.word	.LANCHOR4
.LFE280:
	.size	mag_calibrate, .-mag_calibrate
	.global	__aeabi_f2d
	.global	__aeabi_dmul
	.global	__aeabi_d2f
	.section	.text.mag_heading,"ax",%progbits
	.align	1
	.global	mag_heading
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mag_heading, %function
mag_heading:
.LFB281:
	.loc 1 118 21 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
.LCFI8:
.L31:
	.loc 1 121 3 discriminator 1 view .LVU179
	.loc 1 120 8 discriminator 1 view .LVU180
	.loc 1 120 24 is_stmt 0 discriminator 1 view .LVU181
	movs	r0, #0
	bl	mag3110_read
.LVL72:
	.loc 1 120 8 discriminator 1 view .LVU182
	tst	r0, #8
	beq	.L31
	.loc 1 123 2 is_stmt 1 view .LVU183
	.loc 1 123 18 is_stmt 0 view .LVU184
	movs	r0, #1
.LVL73:
	.loc 1 123 18 view .LVU185
	bl	mag3110_read
.LVL74:
	mov	r5, r0
.LVL75:
	.loc 1 124 2 is_stmt 1 view .LVU186
	.loc 1 124 18 is_stmt 0 view .LVU187
	movs	r0, #2
	bl	mag3110_read
.LVL76:
	mov	r6, r0
.LVL77:
	.loc 1 125 2 is_stmt 1 view .LVU188
	.loc 1 125 18 is_stmt 0 view .LVU189
	movs	r0, #3
	bl	mag3110_read
.LVL78:
	mov	r4, r0
.LVL79:
	.loc 1 126 2 is_stmt 1 view .LVU190
	.loc 1 126 18 is_stmt 0 view .LVU191
	movs	r0, #4
	bl	mag3110_read
.LVL80:
	.loc 1 128 2 is_stmt 1 view .LVU192
	.loc 1 128 20 is_stmt 0 view .LVU193
	lsls	r5, r5, #8
.LVL81:
	.loc 1 128 25 view .LVU194
	sxth	r5, r5
	sxth	r6, r6
.LVL82:
	.loc 1 128 10 view .LVU195
	orrs	r5, r5, r6
.LVL83:
	.loc 1 129 2 is_stmt 1 view .LVU196
	.loc 1 129 20 is_stmt 0 view .LVU197
	lsls	r4, r4, #8
.LVL84:
	.loc 1 129 25 view .LVU198
	sxth	r4, r4
	sxth	r0, r0
.LVL85:
	.loc 1 129 10 view .LVU199
	orrs	r4, r4, r0
.LVL86:
	.loc 1 131 2 is_stmt 1 view .LVU200
	.loc 1 131 8 is_stmt 0 view .LVU201
	ldr	r3, .L33+8
	ldr	r3, [r3]
	subs	r5, r5, r3
.LVL87:
	.loc 1 131 4 view .LVU202
	sxth	r5, r5
.LVL88:
	.loc 1 132 2 is_stmt 1 view .LVU203
	.loc 1 132 8 is_stmt 0 view .LVU204
	ldr	r3, .L33+12
	ldr	r3, [r3]
	subs	r4, r4, r3
.LVL89:
	.loc 1 132 4 view .LVU205
	sxth	r4, r4
.LVL90:
	.loc 1 134 2 is_stmt 1 view .LVU206
	.loc 1 134 8 is_stmt 0 view .LVU207
	vmov	s15, r5	@ int
	vcvt.f32.s32	s14, s15
.LVL91:
	.loc 1 135 2 is_stmt 1 view .LVU208
	.loc 1 135 8 is_stmt 0 view .LVU209
	vmov	s15, r4	@ int
	vcvt.f32.s32	s15, s15
.LVL92:
	.loc 1 137 2 is_stmt 1 view .LVU210
	.loc 1 137 10 is_stmt 0 view .LVU211
	ldr	r3, .L33+16
	vldr.32	s1, [r3]
	ldr	r3, .L33+20
	vldr.32	s0, [r3]
	vmul.f32	s1, s14, s1
	vmul.f32	s0, s15, s0
	bl	atan2f
.LVL93:
	.loc 1 137 10 view .LVU212
	vmov	r0, s0
	bl	__aeabi_f2d
.LVL94:
	.loc 1 137 41 view .LVU213
	adr	r3, .L33
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL95:
	bl	__aeabi_d2f
.LVL96:
	.loc 1 138 1 view .LVU214
	vmov	s0, r0
	pop	{r4, r5, r6, pc}
.LVL97:
.L34:
	.loc 1 138 1 view .LVU215
	.align	3
.L33:
	.word	442745336
	.word	1078765020
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LANCHOR3
	.word	.LANCHOR4
.LFE281:
	.size	mag_heading, .-mag_heading
	.section	.text.mag_read,"ax",%progbits
	.align	1
	.global	mag_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mag_read, %function
mag_read:
.LVL98:
.LFB282:
	.loc 1 140 25 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 140 25 is_stmt 0 view .LVU217
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
.LCFI9:
	mov	r4, r0
	.loc 1 141 2 is_stmt 1 view .LVU218
	.loc 1 141 18 is_stmt 0 view .LVU219
	movs	r0, #1
.LVL99:
	.loc 1 141 18 view .LVU220
	bl	mag3110_read
.LVL100:
	mov	r9, r0
.LVL101:
	.loc 1 142 2 is_stmt 1 view .LVU221
	.loc 1 142 18 is_stmt 0 view .LVU222
	movs	r0, #2
	bl	mag3110_read
.LVL102:
	mov	r6, r0
.LVL103:
	.loc 1 143 2 is_stmt 1 view .LVU223
	.loc 1 143 18 is_stmt 0 view .LVU224
	movs	r0, #3
	bl	mag3110_read
.LVL104:
	mov	r8, r0
.LVL105:
	.loc 1 144 2 is_stmt 1 view .LVU225
	.loc 1 144 18 is_stmt 0 view .LVU226
	movs	r0, #4
	bl	mag3110_read
.LVL106:
	mov	r5, r0
.LVL107:
	.loc 1 145 9 is_stmt 1 view .LVU227
	.loc 1 145 25 is_stmt 0 view .LVU228
	movs	r0, #5
	bl	mag3110_read
.LVL108:
	mov	r7, r0
.LVL109:
	.loc 1 146 2 is_stmt 1 view .LVU229
	.loc 1 146 18 is_stmt 0 view .LVU230
	movs	r0, #6
	bl	mag3110_read
.LVL110:
	.loc 1 148 9 is_stmt 1 view .LVU231
	.loc 1 149 2 view .LVU232
	.loc 1 149 21 is_stmt 0 view .LVU233
	orr	r6, r6, r9, lsl #8
.LVL111:
	.loc 1 149 8 view .LVU234
	strh	r6, [r4]	@ movhi
	.loc 1 150 2 is_stmt 1 view .LVU235
	.loc 1 150 21 is_stmt 0 view .LVU236
	orr	r5, r5, r8, lsl #8
.LVL112:
	.loc 1 150 8 view .LVU237
	strh	r5, [r4, #2]	@ movhi
	.loc 1 151 9 is_stmt 1 view .LVU238
	.loc 1 151 28 is_stmt 0 view .LVU239
	orr	r0, r0, r7, lsl #8
.LVL113:
	.loc 1 151 15 view .LVU240
	strh	r0, [r4, #4]	@ movhi
	.loc 1 152 9 is_stmt 1 view .LVU241
	.loc 1 153 1 is_stmt 0 view .LVU242
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.loc 1 153 1 view .LVU243
.LFE282:
	.size	mag_read, .-mag_read
	.section	.bss.ret.9656,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	ret.9656, %object
	.size	ret.9656, 1
ret.9656:
	.space	1
	.section	.data.x_offset,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	x_offset, %object
	.size	x_offset, 4
x_offset:
	.word	-2953
	.section	.data.x_scale,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	x_scale, %object
	.size	x_scale, 4
x_scale:
	.word	1065780742
	.section	.data.y_offset,"aw"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	y_offset, %object
	.size	y_offset, 4
y_offset:
	.word	3254
	.section	.data.y_scale,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	y_scale, %object
	.size	y_scale, 4
y_scale:
	.word	1064578935
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
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.byte	0x4
	.4byte	.LCFI3-.LFB278
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.byte	0x4
	.4byte	.LCFI4-.LFB279
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.byte	0x4
	.4byte	.LCFI5-.LFB280
	.byte	0xe
	.uleb128 0x24
	.byte	0x84
	.uleb128 0x9
	.byte	0x85
	.uleb128 0x8
	.byte	0x86
	.uleb128 0x7
	.byte	0x87
	.uleb128 0x6
	.byte	0x88
	.uleb128 0x5
	.byte	0x89
	.uleb128 0x4
	.byte	0x8a
	.uleb128 0x3
	.byte	0x8b
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x24
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB281
	.4byte	.LFE281-.LFB281
	.byte	0x4
	.4byte	.LCFI8-.LFB281
	.byte	0xe
	.uleb128 0x10
	.byte	0x84
	.uleb128 0x4
	.byte	0x85
	.uleb128 0x3
	.byte	0x86
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB282
	.4byte	.LFE282-.LFB282
	.byte	0x4
	.4byte	.LCFI9-.LFB282
	.byte	0xe
	.uleb128 0x20
	.byte	0x83
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x7
	.byte	0x85
	.uleb128 0x6
	.byte	0x86
	.uleb128 0x5
	.byte	0x87
	.uleb128 0x4
	.byte	0x88
	.uleb128 0x3
	.byte	0x89
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE10:
	.text
.Letext0:
	.file 2 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
	.file 3 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
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
	.byte	0x2
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x3
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
	.byte	0x2
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
	.file 4 "../../../../../../modules/nrfx/hal/nrf_twi.h"
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
	.uleb128 0x6
	.byte	0x7
	.byte	0x4
	.4byte	0x47
	.byte	0x4
	.byte	0x84
	.byte	0x1
	.4byte	0x47
	.uleb128 0x8
	.4byte	.LASF11
	.4byte	0x1980000
	.uleb128 0x8
	.4byte	.LASF12
	.4byte	0x4000000
	.uleb128 0x8
	.4byte	.LASF13
	.4byte	0x6680000
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0
	.file 5 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
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
	.byte	0x5
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x5
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x4b
	.uleb128 0x9
	.4byte	0x5b
	.uleb128 0xa
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0xb
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.byte	0
	.file 6 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0xc
	.4byte	.LASF22
	.byte	0x8
	.byte	0x6
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x6
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0xd
	.4byte	.LASF19
	.byte	0x6
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x6
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d
	.uleb128 0xf
	.byte	0x4
	.4byte	0x61
	.uleb128 0x10
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x11
	.4byte	0x76
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x13
	.4byte	0x82
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
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
	.uleb128 0x14
	.4byte	.LASF23
	.byte	0x14
	.byte	0x6
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x6
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
	.uleb128 0xf
	.byte	0x4
	.4byte	0x55
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x13
	.4byte	0x5a
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x6
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
	.byte	0x6
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x6
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x6
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x6
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x60
	.uleb128 0xf
	.byte	0x4
	.4byte	0x65
	.uleb128 0xf
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x13
	.4byte	0x6f
	.uleb128 0x13
	.4byte	0x76
	.uleb128 0x13
	.4byte	0x86
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x15
	.4byte	.LASF29
	.byte	0x6
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
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x6
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
	.byte	0x6
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x6
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x6
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x6
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x6
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x6
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x6
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x6
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x6
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xb3
	.uleb128 0xf
	.byte	0x4
	.4byte	0xc7
	.uleb128 0xf
	.byte	0x4
	.4byte	0xd6
	.uleb128 0xf
	.byte	0x4
	.4byte	0xea
	.uleb128 0xf
	.byte	0x4
	.4byte	0xf9
	.uleb128 0xf
	.byte	0x4
	.4byte	0x112
	.uleb128 0x10
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0x11
	.4byte	0x130
	.uleb128 0x11
	.4byte	0x130
	.byte	0
	.uleb128 0x10
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0x11
	.4byte	0x130
	.byte	0
	.uleb128 0x10
	.4byte	0x130
	.4byte	0xea
	.uleb128 0x11
	.4byte	0x137
	.uleb128 0x11
	.4byte	0x130
	.byte	0
	.uleb128 0x10
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0x11
	.4byte	0x137
	.byte	0
	.uleb128 0x10
	.4byte	0x130
	.4byte	0x112
	.uleb128 0x11
	.4byte	0x13e
	.uleb128 0x11
	.4byte	0x144
	.uleb128 0x11
	.4byte	0x14b
	.byte	0
	.uleb128 0x10
	.4byte	0x130
	.4byte	0x130
	.uleb128 0x11
	.4byte	0x155
	.uleb128 0x11
	.4byte	0x15b
	.uleb128 0x11
	.4byte	0x144
	.uleb128 0x11
	.4byte	0x14b
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF39
	.uleb128 0xf
	.byte	0x4
	.4byte	0x161
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x16
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x144
	.uleb128 0xf
	.byte	0x4
	.4byte	0x168
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x13
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
	.byte	0x6
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x6
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x6
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x6
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x6
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x6
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x6
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x6
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x6
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x6
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x6
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x6
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x6
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x6
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x6
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x6
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x6
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x6
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x6
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x6
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x6
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x6
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x6
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x6
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x6
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x6
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x6
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x6
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x6
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x6
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x6
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x6
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x6
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x13
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
	.uleb128 0x14
	.4byte	.LASF72
	.byte	0x8
	.byte	0x6
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x6
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x6
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF39
	.byte	0
	.file 7 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\mag3110.h"
	.section	.debug_types,"G",%progbits,wt.d573fbda0068ce4d,comdat
	.4byte	0x58
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xd5
	.byte	0x73
	.byte	0xfb
	.byte	0xda
	.byte	0
	.byte	0x68
	.byte	0xce
	.byte	0x4d
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x6
	.byte	0x7
	.byte	0xa
	.byte	0x9
	.4byte	0x48
	.uleb128 0x17
	.ascii	"x\000"
	.byte	0x7
	.byte	0xb
	.byte	0x9
	.4byte	0x48
	.byte	0
	.uleb128 0x17
	.ascii	"y\000"
	.byte	0x7
	.byte	0xc
	.byte	0x9
	.4byte	0x48
	.byte	0x2
	.uleb128 0x17
	.ascii	"z\000"
	.byte	0x7
	.byte	0xd
	.byte	0x9
	.4byte	0x48
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x3
	.byte	0x35
	.byte	0x16
	.4byte	0x54
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF76
	.byte	0
	.section	.debug_types,"G",%progbits,wt.ad81f2b98c8ad27d,comdat
	.4byte	0x48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xad
	.byte	0x81
	.byte	0xf2
	.byte	0xb9
	.byte	0x8c
	.byte	0x8a
	.byte	0xd2
	.byte	0x7d
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x7
	.byte	0x4
	.byte	0xe
	.4byte	0x44
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x1
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
	.file 8 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 9 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 10 "../../../../../../components/libraries/util/app_util.h"
	.file 11 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 12 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 13 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.file 14 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
	.file 15 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\i2c.h"
	.file 16 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xa7d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF152
	.byte	0xc
	.4byte	.LASF153
	.4byte	.LASF154
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF81
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF82
	.uleb128 0x4
	.4byte	.LASF83
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x4a
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x13
	.4byte	0x4a
	.uleb128 0x4
	.4byte	.LASF75
	.byte	0x3
	.byte	0x35
	.byte	0x16
	.4byte	0x62
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF76
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF84
	.byte	0x3
	.byte	0x37
	.byte	0x14
	.4byte	0x29
	.uleb128 0x9
	.4byte	0x70
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x8d
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF85
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF86
	.uleb128 0x15
	.4byte	.LASF87
	.byte	0x7
	.byte	0x9
	.byte	0x3
	.byte	0xad
	.byte	0x81
	.byte	0xf2
	.byte	0xb9
	.byte	0x8c
	.byte	0x8a
	.byte	0xd2
	.byte	0x7d
	.uleb128 0x15
	.4byte	.LASF88
	.byte	0x7
	.byte	0xe
	.byte	0x2
	.byte	0xd5
	.byte	0x73
	.byte	0xfb
	.byte	0xda
	.byte	0
	.byte	0x68
	.byte	0xce
	.byte	0x4d
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF89
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF39
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x13
	.4byte	0xd0
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x6
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
	.uleb128 0x13
	.4byte	0xdc
	.uleb128 0x15
	.4byte	.LASF25
	.byte	0x6
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
	.uleb128 0x13
	.4byte	0xf1
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x6
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
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x10d
	.byte	0x1d
	.4byte	0x101
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x110
	.byte	0x25
	.4byte	0xec
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x111
	.byte	0x25
	.4byte	0xec
	.uleb128 0xa
	.4byte	0x51
	.4byte	0x14e
	.uleb128 0xb
	.4byte	0x8d
	.byte	0x7f
	.byte	0
	.uleb128 0x13
	.4byte	0x13e
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x113
	.byte	0x1c
	.4byte	0x14e
	.uleb128 0xa
	.4byte	0xd7
	.4byte	0x16b
	.uleb128 0x1b
	.byte	0
	.uleb128 0x13
	.4byte	0x160
	.uleb128 0x1a
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x115
	.byte	0x13
	.4byte	0x16b
	.uleb128 0x1a
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x116
	.byte	0x13
	.4byte	0x16b
	.uleb128 0x1a
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x117
	.byte	0x13
	.4byte	0x16b
	.uleb128 0x1a
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x118
	.byte	0x13
	.4byte	0x16b
	.uleb128 0x1a
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x11a
	.byte	0x13
	.4byte	0x16b
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x11b
	.byte	0x13
	.4byte	0x16b
	.uleb128 0x1a
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x11c
	.byte	0x13
	.4byte	0x16b
	.uleb128 0x1a
	.4byte	.LASF102
	.byte	0x6
	.2byte	0x11d
	.byte	0x13
	.4byte	0x16b
	.uleb128 0x1a
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x11e
	.byte	0x13
	.4byte	0x16b
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x6
	.2byte	0x11f
	.byte	0x13
	.4byte	0x16b
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x201
	.uleb128 0x11
	.4byte	0x201
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x20c
	.uleb128 0x1c
	.4byte	.LASF118
	.uleb128 0x13
	.4byte	0x207
	.uleb128 0x1a
	.4byte	.LASF105
	.byte	0x6
	.2byte	0x135
	.byte	0xe
	.4byte	0x21e
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1f2
	.uleb128 0x10
	.4byte	0x29
	.4byte	0x233
	.uleb128 0x11
	.4byte	0x233
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x207
	.uleb128 0x1a
	.4byte	.LASF106
	.byte	0x6
	.2byte	0x136
	.byte	0xe
	.4byte	0x246
	.uleb128 0xf
	.byte	0x4
	.4byte	0x224
	.uleb128 0x1d
	.4byte	.LASF107
	.byte	0x6
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
	.uleb128 0x1a
	.4byte	.LASF108
	.byte	0x6
	.2byte	0x157
	.byte	0x1f
	.4byte	0x26a
	.uleb128 0xf
	.byte	0x4
	.4byte	0x24c
	.uleb128 0x1a
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x744
	.byte	0x19
	.4byte	0x7c
	.uleb128 0x1e
	.4byte	.LASF110
	.byte	0x9
	.byte	0x21
	.byte	0x11
	.4byte	0x81
	.uleb128 0x1e
	.4byte	.LASF111
	.byte	0xa
	.byte	0x53
	.byte	0x11
	.4byte	0x81
	.uleb128 0x1e
	.4byte	.LASF112
	.byte	0xa
	.byte	0x54
	.byte	0x11
	.4byte	0x81
	.uleb128 0x1e
	.4byte	.LASF113
	.byte	0xa
	.byte	0x72
	.byte	0x13
	.4byte	0x2ad
	.uleb128 0xf
	.byte	0x4
	.4byte	0x81
	.uleb128 0x1e
	.4byte	.LASF114
	.byte	0xa
	.byte	0x73
	.byte	0x11
	.4byte	0x81
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x5
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
	.uleb128 0x1e
	.4byte	.LASF116
	.byte	0x5
	.byte	0x75
	.byte	0x19
	.4byte	0x2bf
	.uleb128 0xe
	.4byte	.LASF117
	.byte	0xb
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2e8
	.uleb128 0x1c
	.4byte	.LASF119
	.uleb128 0x1a
	.4byte	.LASF120
	.byte	0xb
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2fa
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2db
	.uleb128 0x1a
	.4byte	.LASF121
	.byte	0xb
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2fa
	.uleb128 0x1a
	.4byte	.LASF122
	.byte	0xb
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2fa
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF123
	.uleb128 0x15
	.4byte	.LASF124
	.byte	0x2
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
	.uleb128 0x1a
	.4byte	.LASF125
	.byte	0xc
	.2byte	0x124
	.byte	0x2e
	.4byte	0x321
	.uleb128 0x1f
	.4byte	.LASF126
	.byte	0x1
	.byte	0x20
	.byte	0xc
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	x_offset
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.byte	0x21
	.byte	0xc
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	y_offset
	.uleb128 0x1f
	.4byte	.LASF128
	.byte	0x1
	.byte	0x22
	.byte	0xe
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	x_scale
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0x1
	.byte	0x23
	.byte	0xe
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	y_scale
	.uleb128 0x20
	.4byte	.LASF136
	.byte	0x1
	.byte	0x8c
	.byte	0xf
	.4byte	0xb2
	.4byte	.LFB282
	.4byte	.LFE282-.LFB282
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49b
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0x1
	.byte	0x8d
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0x1
	.byte	0x8e
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0x8f
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x21
	.4byte	.LASF133
	.byte	0x1
	.byte	0x90
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x1
	.byte	0x91
	.byte	0x11
	.4byte	0x3e
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x21
	.4byte	.LASF135
	.byte	0x1
	.byte	0x92
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x22
	.ascii	"mag\000"
	.byte	0x1
	.byte	0x94
	.byte	0x17
	.4byte	0xb2
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x23
	.4byte	.LVL100
	.4byte	0x968
	.4byte	0x43f
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL102
	.4byte	0x968
	.4byte	0x452
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x23
	.4byte	.LVL104
	.4byte	0x968
	.4byte	0x465
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x23
	.4byte	.LVL106
	.4byte	0x968
	.4byte	0x478
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x23
	.4byte	.LVL108
	.4byte	0x968
	.4byte	0x48b
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x25
	.4byte	.LVL110
	.4byte	0x968
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LASF137
	.byte	0x1
	.byte	0x76
	.byte	0x7
	.4byte	0x30
	.4byte	.LFB281
	.4byte	.LFE281-.LFB281
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cc
	.uleb128 0x21
	.4byte	.LASF138
	.byte	0x1
	.byte	0x77
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0x1
	.byte	0x7b
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0x1
	.byte	0x7c
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0x7d
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x21
	.4byte	.LASF133
	.byte	0x1
	.byte	0x7e
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x22
	.ascii	"x\000"
	.byte	0x1
	.byte	0x80
	.byte	0xa
	.4byte	0x56
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x22
	.ascii	"y\000"
	.byte	0x1
	.byte	0x81
	.byte	0xa
	.4byte	0x56
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x22
	.ascii	"xf\000"
	.byte	0x1
	.byte	0x86
	.byte	0x8
	.4byte	0x30
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x22
	.ascii	"yf\000"
	.byte	0x1
	.byte	0x87
	.byte	0x8
	.4byte	0x30
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x23
	.4byte	.LVL72
	.4byte	0x968
	.4byte	0x576
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL74
	.4byte	0x968
	.4byte	0x589
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL76
	.4byte	0x968
	.4byte	0x59c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x23
	.4byte	.LVL78
	.4byte	0x968
	.4byte	0x5af
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x23
	.4byte	.LVL80
	.4byte	0x968
	.4byte	0x5c2
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x27
	.4byte	.LVL93
	.4byte	0xa1c
	.byte	0
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x1
	.byte	0x36
	.byte	0x6
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x909
	.uleb128 0x21
	.4byte	.LASF139
	.byte	0x1
	.byte	0x37
	.byte	0x6
	.4byte	0x29
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x21
	.4byte	.LASF138
	.byte	0x1
	.byte	0x38
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x21
	.4byte	.LASF130
	.byte	0x1
	.byte	0x3f
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x21
	.4byte	.LASF131
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0x1
	.byte	0x41
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x21
	.4byte	.LASF133
	.byte	0x1
	.byte	0x42
	.byte	0xa
	.4byte	0x3e
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x21
	.4byte	.LASF140
	.byte	0x1
	.byte	0x45
	.byte	0xa
	.4byte	0x56
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x21
	.4byte	.LASF141
	.byte	0x1
	.byte	0x46
	.byte	0xa
	.4byte	0x56
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x21
	.4byte	.LASF142
	.byte	0x1
	.byte	0x47
	.byte	0xa
	.4byte	0x56
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x21
	.4byte	.LASF143
	.byte	0x1
	.byte	0x48
	.byte	0xa
	.4byte	0x56
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0
	.4byte	0x7a3
	.uleb128 0x22
	.ascii	"x\000"
	.byte	0x1
	.byte	0x5a
	.byte	0xb
	.4byte	0x56
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x22
	.ascii	"y\000"
	.byte	0x1
	.byte	0x5b
	.byte	0xb
	.4byte	0x56
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x23
	.4byte	.LVL36
	.4byte	0x968
	.4byte	0x6ea
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL38
	.4byte	0xa29
	.4byte	0x701
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x27
	.4byte	.LVL39
	.4byte	0xa36
	.uleb128 0x23
	.4byte	.LVL40
	.4byte	0x968
	.4byte	0x71d
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL42
	.4byte	0x968
	.4byte	0x730
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x23
	.4byte	.LVL44
	.4byte	0x968
	.4byte	0x743
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x23
	.4byte	.LVL46
	.4byte	0x968
	.4byte	0x756
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x23
	.4byte	.LVL48
	.4byte	0x968
	.4byte	0x769
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.4byte	.LVL49
	.4byte	0x968
	.4byte	0x77c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x23
	.4byte	.LVL55
	.4byte	0xa42
	.4byte	0x799
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL56
	.4byte	0xa36
	.byte	0
	.uleb128 0x23
	.4byte	.LVL12
	.4byte	0xa29
	.4byte	0x7ba
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL13
	.4byte	0xa36
	.uleb128 0x23
	.4byte	.LVL14
	.4byte	0x968
	.4byte	0x7d6
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x23
	.4byte	.LVL16
	.4byte	0x968
	.4byte	0x7e9
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x23
	.4byte	.LVL18
	.4byte	0x968
	.4byte	0x7fc
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.byte	0
	.uleb128 0x23
	.4byte	.LVL20
	.4byte	0x968
	.4byte	0x80f
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x23
	.4byte	.LVL22
	.4byte	0x968
	.4byte	0x822
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.uleb128 0x23
	.4byte	.LVL24
	.4byte	0x968
	.4byte	0x835
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x23
	.4byte	.LVL25
	.4byte	0x968
	.4byte	0x848
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x36
	.byte	0
	.uleb128 0x23
	.4byte	.LVL32
	.4byte	0xa29
	.4byte	0x85f
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x27
	.4byte	.LVL33
	.4byte	0xa36
	.uleb128 0x23
	.4byte	.LVL62
	.4byte	0xa4f
	.4byte	0x899
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL63
	.4byte	0xa36
	.uleb128 0x23
	.4byte	.LVL64
	.4byte	0xa5c
	.4byte	0x8c3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xf
	.byte	0x79
	.sleb128 0
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x4f
	.byte	0x25
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x7b
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x26
	.byte	0
	.uleb128 0x27
	.4byte	.LVL65
	.4byte	0xa5c
	.uleb128 0x23
	.4byte	.LVL67
	.4byte	0xa5c
	.4byte	0x8e3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x7b
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0
	.uleb128 0x27
	.4byte	.LVL68
	.4byte	0xa5c
	.uleb128 0x27
	.4byte	.LVL69
	.4byte	0xa5c
	.uleb128 0x25
	.4byte	.LVL70
	.4byte	0xa5c
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x7a
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF144
	.byte	0x1
	.byte	0x30
	.byte	0x6
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x968
	.uleb128 0x2b
	.ascii	"os\000"
	.byte	0x1
	.byte	0x30
	.byte	0x22
	.4byte	0xa2
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x23
	.4byte	.LVL9
	.4byte	0x9c3
	.4byte	0x94b
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x41
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xa0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL10
	.4byte	0x9c3
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x40
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x9
	.byte	0x74
	.sleb128 0
	.byte	0x33
	.byte	0x24
	.byte	0x8
	.byte	0xf9
	.byte	0x1a
	.byte	0x31
	.byte	0x21
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF156
	.byte	0x1
	.byte	0x2a
	.byte	0x10
	.4byte	0x3e
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c3
	.uleb128 0x2b
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x2a
	.byte	0x25
	.4byte	0x3e
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2d
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x2b
	.byte	0x18
	.4byte	0x3e
	.uleb128 0x5
	.byte	0x3
	.4byte	ret.9656
	.uleb128 0x25
	.4byte	.LVL6
	.4byte	0xa68
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF157
	.byte	0x1
	.byte	0x26
	.byte	0xd
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa1c
	.uleb128 0x2b
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x26
	.byte	0x23
	.4byte	0x3e
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2b
	.ascii	"val\000"
	.byte	0x1
	.byte	0x26
	.byte	0x30
	.4byte	0x3e
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x25
	.4byte	.LVL3
	.4byte	0xa74
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3e
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x24
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF145
	.4byte	.LASF145
	.byte	0xd
	.2byte	0x1db
	.byte	0x7
	.uleb128 0x2f
	.4byte	.LASF146
	.4byte	.LASF146
	.byte	0xc
	.2byte	0x1ab
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF147
	.4byte	.LASF147
	.byte	0xe
	.byte	0xa0
	.byte	0x5
	.uleb128 0x2f
	.4byte	.LASF148
	.4byte	.LASF148
	.byte	0xc
	.2byte	0x1b4
	.byte	0x6
	.uleb128 0x2f
	.4byte	.LASF149
	.4byte	.LASF149
	.byte	0xc
	.2byte	0x1d8
	.byte	0x6
	.uleb128 0x31
	.ascii	"abs\000"
	.ascii	"abs\000"
	.byte	0x10
	.byte	0x8a
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF150
	.4byte	.LASF150
	.byte	0xf
	.byte	0xe
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF151
	.4byte	.LASF151
	.byte	0xf
	.byte	0xf
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xd
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS25:
	.uleb128 .LVU221
	.uleb128 0
.LLST25:
	.4byte	.LVL101
	.4byte	.LFE282
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU223
	.uleb128 .LVU234
.LLST26:
	.4byte	.LVL103
	.4byte	.LVL111
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU225
	.uleb128 0
.LLST27:
	.4byte	.LVL105
	.4byte	.LFE282
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU227
	.uleb128 .LVU237
.LLST28:
	.4byte	.LVL107
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU229
	.uleb128 0
.LLST29:
	.4byte	.LVL109
	.4byte	.LFE282
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU231
	.uleb128 .LVU240
.LLST30:
	.4byte	.LVL110
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 0
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 0
.LLST31:
	.4byte	.LVL98
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x70
	.sleb128 0
	.4byte	.LVL99
	.4byte	.LFE282
	.2byte	0x2
	.byte	0x74
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU182
	.uleb128 .LVU185
.LLST16:
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU186
	.uleb128 .LVU194
.LLST17:
	.4byte	.LVL75
	.4byte	.LVL81
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU188
	.uleb128 .LVU195
.LLST18:
	.4byte	.LVL77
	.4byte	.LVL82
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU190
	.uleb128 .LVU198
.LLST19:
	.4byte	.LVL79
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU192
	.uleb128 .LVU199
.LLST20:
	.4byte	.LVL80
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU196
	.uleb128 .LVU202
	.uleb128 .LVU203
	.uleb128 .LVU215
.LLST21:
	.4byte	.LVL83
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL88
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU200
	.uleb128 .LVU205
	.uleb128 .LVU206
	.uleb128 .LVU215
.LLST22:
	.4byte	.LVL86
	.4byte	.LVL89
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL90
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU208
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU215
.LLST23:
	.4byte	.LVL91
	.4byte	.LVL93-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL93-1
	.4byte	.LVL97
	.2byte	0x7
	.byte	0x75
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU210
	.uleb128 .LVU212
	.uleb128 .LVU212
	.uleb128 .LVU215
.LLST24:
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL93-1
	.4byte	.LVL97
	.2byte	0x7
	.byte	0x74
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU24
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU163
.LLST4:
	.4byte	.LVL11
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL66
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU38
	.uleb128 .LVU41
	.uleb128 .LVU80
	.uleb128 .LVU85
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL36
	.4byte	.LVL37
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU42
	.uleb128 .LVU52
	.uleb128 .LVU97
	.uleb128 .LVU107
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL41
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU44
	.uleb128 .LVU53
	.uleb128 .LVU99
	.uleb128 .LVU108
.LLST7:
	.4byte	.LVL19
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL43
	.4byte	.LVL51
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU46
	.uleb128 .LVU56
	.uleb128 .LVU101
	.uleb128 .LVU111
.LLST8:
	.4byte	.LVL21
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL45
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU48
	.uleb128 .LVU57
	.uleb128 .LVU73
	.uleb128 .LVU75
	.uleb128 .LVU103
	.uleb128 .LVU137
.LLST9:
	.4byte	.LVL23
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	.LVL47
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x91
	.sleb128 -44
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU54
	.uleb128 .LVU177
.LLST10:
	.4byte	.LVL28
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU58
	.uleb128 .LVU136
	.uleb128 .LVU137
	.uleb128 .LVU177
.LLST11:
	.4byte	.LVL31
	.4byte	.LVL60
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL61
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU59
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU177
.LLST12:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL34
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU60
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 .LVU177
.LLST13:
	.4byte	.LVL31
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL34
	.4byte	.LVL71
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU73
	.uleb128 .LVU75
	.uleb128 .LVU109
	.uleb128 .LVU137
.LLST14:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL52
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU73
	.uleb128 .LVU75
	.uleb128 .LVU113
	.uleb128 .LVU137
.LLST15:
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL54
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 0
.LLST3:
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LFE279
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL5
	.4byte	.LFE278
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LFE277
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 .LVU5
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1
	.4byte	.LVL3-1
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x186
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xa81
	.4byte	0x2b
	.ascii	"NRF_TWI_FREQ_100K\000"
	.4byte	0x34
	.ascii	"NRF_TWI_FREQ_250K\000"
	.4byte	0x3d
	.ascii	"NRF_TWI_FREQ_400K\000"
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
	.4byte	0x33e
	.ascii	"x_offset\000"
	.4byte	0x350
	.ascii	"y_offset\000"
	.4byte	0x362
	.ascii	"x_scale\000"
	.4byte	0x374
	.ascii	"y_scale\000"
	.4byte	0x386
	.ascii	"mag_read\000"
	.4byte	0x49b
	.ascii	"mag_heading\000"
	.4byte	0x5cc
	.ascii	"mag_calibrate\000"
	.4byte	0x909
	.ascii	"mag_init\000"
	.4byte	0x968
	.ascii	"mag3110_read\000"
	.4byte	0x9c3
	.ascii	"mag3110_write\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x1f3
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xa81
	.4byte	0x37
	.ascii	"signed char\000"
	.4byte	0x4a
	.ascii	"unsigned char\000"
	.4byte	0x3e
	.ascii	"uint8_t\000"
	.4byte	0x62
	.ascii	"short int\000"
	.4byte	0x56
	.ascii	"int16_t\000"
	.4byte	0x69
	.ascii	"short unsigned int\000"
	.4byte	0x29
	.ascii	"int\000"
	.4byte	0x70
	.ascii	"int32_t\000"
	.4byte	0x8d
	.ascii	"unsigned int\000"
	.4byte	0x81
	.ascii	"uint32_t\000"
	.4byte	0x94
	.ascii	"long long int\000"
	.4byte	0x9b
	.ascii	"long long unsigned int\000"
	.4byte	0xa2
	.ascii	"mag_oversampling_t\000"
	.4byte	0xb2
	.ascii	"MAG_reading_t\000"
	.4byte	0x30
	.ascii	"float\000"
	.4byte	0xc2
	.ascii	"double\000"
	.4byte	0xc9
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xd0
	.ascii	"char\000"
	.4byte	0xdc
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xf1
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x24c
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x2bf
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2db
	.ascii	"FILE\000"
	.4byte	0x31a
	.ascii	"_Bool\000"
	.4byte	0x321
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x44
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
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
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
	.uleb128 0x7
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0xd
	.byte	0x4
	.file 17 "../../../../../../components/libraries/delay/nrf_delay.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x11
	.file 18 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x12
	.file 19 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x13
	.file 20 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.file 21 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x15
	.file 22 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x16
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.file 23 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x17
	.byte	0x4
	.file 24 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x18
	.file 25 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x19
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x8
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
	.uleb128 0x9
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
	.file 36 "../../../../../../integration/nrfx/nrfx_glue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x24
	.file 37 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x25
	.byte	0x4
	.file 38 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x26
	.file 39 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x27
	.byte	0x4
	.byte	0x4
	.file 40 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x28
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x21
	.byte	0x4
	.file 41 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x29
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb6
	.uleb128 0x29
	.byte	0x4
	.file 42 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0xb7
	.uleb128 0x2a
	.file 43 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x2b
	.file 44 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x2c
	.byte	0x4
	.file 45 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x2d
	.byte	0x4
	.file 46 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x2e
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x28
	.byte	0x4
	.file 47 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x2f
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x4
	.file 48 "../../../../../../components/libraries/util/sdk_errors.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x30
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x2d
	.byte	0x4
	.byte	0x4
	.file 49 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x31
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 50 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x32
	.byte	0x4
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x30
	.byte	0x4
	.file 51 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x33
	.file 52 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x34
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 53 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x35
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 54 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x36
	.file 55 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x37
	.file 56 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x38
	.file 57 "../../../../../../modules/nrfx/hal/nrf_twim.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x39
	.byte	0x4
	.byte	0x4
	.file 58 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x3a
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 59 "../../../../../../components/libraries/queue/nrf_queue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x3b
	.file 60 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x3c
	.byte	0x4
	.file 61 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x3d
	.file 62 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x3e
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 63 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x3f
	.file 64 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x40
	.file 65 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x41
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xa
	.byte	0x4
	.file 66 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x42
	.byte	0x4
	.byte	0x4
	.file 67 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x43
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x6
	.uleb128 0xe
	.file 68 "../../../../../../components/libraries/experimental_log/src/nrf_log_ctrl_internal.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x44
	.byte	0x4
	.file 69 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x45
	.file 70 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x46
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x10
	.byte	0x4
	.file 71 "../../../../../../components/libraries/balloc/nrf_balloc.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x47
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x7
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF44:
	.ascii	"currency_symbol\000"
.LASF7:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF1:
	.ascii	"padding\000"
.LASF142:
	.ascii	"x_max\000"
.LASF114:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF101:
	.ascii	"__RAL_data_utf8_space\000"
.LASF155:
	.ascii	"mag_calibrate\000"
.LASF71:
	.ascii	"date_time_format\000"
.LASF96:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF149:
	.ascii	"nrf_log_frontend_std_4\000"
.LASF5:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF92:
	.ascii	"__RAL_codeset_ascii\000"
.LASF20:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF140:
	.ascii	"x_min\000"
.LASF52:
	.ascii	"p_cs_precedes\000"
.LASF153:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\drivers\\mag3110.c\000"
.LASF103:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF37:
	.ascii	"__wctomb\000"
.LASF86:
	.ascii	"long long unsigned int\000"
.LASF152:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF151:
	.ascii	"i2cSend\000"
.LASF23:
	.ascii	"__locale_s\000"
.LASF106:
	.ascii	"__user_get_time_of_day\000"
.LASF113:
	.ascii	"_vectors\000"
.LASF145:
	.ascii	"atan2f\000"
.LASF109:
	.ascii	"ITM_RxBuffer\000"
.LASF129:
	.ascii	"y_scale\000"
.LASF69:
	.ascii	"date_format\000"
.LASF19:
	.ascii	"next\000"
.LASF127:
	.ascii	"y_offset\000"
.LASF43:
	.ascii	"int_curr_symbol\000"
.LASF67:
	.ascii	"abbrev_month_names\000"
.LASF75:
	.ascii	"int16_t\000"
.LASF85:
	.ascii	"long long int\000"
.LASF82:
	.ascii	"signed char\000"
.LASF133:
	.ascii	"y_lsb\000"
.LASF90:
	.ascii	"__RAL_global_locale\000"
.LASF0:
	.ascii	"module_id\000"
.LASF28:
	.ascii	"codeset\000"
.LASF35:
	.ascii	"__towupper\000"
.LASF39:
	.ascii	"long int\000"
.LASF150:
	.ascii	"i2cRecive\000"
.LASF100:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF120:
	.ascii	"stdin\000"
.LASF6:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF2:
	.ascii	"uint16_t\000"
.LASF89:
	.ascii	"double\000"
.LASF31:
	.ascii	"__isctype\000"
.LASF15:
	.ascii	"__irq_masks\000"
.LASF65:
	.ascii	"abbrev_day_names\000"
.LASF74:
	.ascii	"__wchar\000"
.LASF58:
	.ascii	"int_p_cs_precedes\000"
.LASF68:
	.ascii	"am_pm_indicator\000"
.LASF137:
	.ascii	"mag_heading\000"
.LASF47:
	.ascii	"mon_grouping\000"
.LASF156:
	.ascii	"mag3110_read\000"
.LASF144:
	.ascii	"mag_init\000"
.LASF4:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF60:
	.ascii	"int_p_sep_by_space\000"
.LASF110:
	.ascii	"SystemCoreClock\000"
.LASF130:
	.ascii	"x_msb\000"
.LASF99:
	.ascii	"__RAL_data_utf8_period\000"
.LASF42:
	.ascii	"grouping\000"
.LASF36:
	.ascii	"__towlower\000"
.LASF104:
	.ascii	"__RAL_data_empty_string\000"
.LASF41:
	.ascii	"thousands_sep\000"
.LASF24:
	.ascii	"__category\000"
.LASF124:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF112:
	.ascii	"__StackLimit\000"
.LASF32:
	.ascii	"__toupper\000"
.LASF115:
	.ascii	"nrf_nvic_state_t\000"
.LASF27:
	.ascii	"data\000"
.LASF49:
	.ascii	"negative_sign\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF26:
	.ascii	"name\000"
.LASF154:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF87:
	.ascii	"mag_oversampling_t\000"
.LASF64:
	.ascii	"day_names\000"
.LASF126:
	.ascii	"x_offset\000"
.LASF77:
	.ascii	"MAG_OS_16\000"
.LASF118:
	.ascii	"timeval\000"
.LASF121:
	.ascii	"stdout\000"
.LASF25:
	.ascii	"__RAL_locale_t\000"
.LASF70:
	.ascii	"time_format\000"
.LASF48:
	.ascii	"positive_sign\000"
.LASF56:
	.ascii	"p_sign_posn\000"
.LASF8:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF94:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF131:
	.ascii	"x_lsb\000"
.LASF80:
	.ascii	"MAG_OS_128\000"
.LASF18:
	.ascii	"decode\000"
.LASF13:
	.ascii	"NRF_TWI_FREQ_400K\000"
.LASF38:
	.ascii	"__mbtowc\000"
.LASF116:
	.ascii	"nrf_nvic_state\000"
.LASF143:
	.ascii	"y_max\000"
.LASF91:
	.ascii	"__RAL_c_locale\000"
.LASF33:
	.ascii	"__tolower\000"
.LASF105:
	.ascii	"__user_set_time_of_day\000"
.LASF59:
	.ascii	"int_n_cs_precedes\000"
.LASF81:
	.ascii	"float\000"
.LASF134:
	.ascii	"z_msb\000"
.LASF128:
	.ascii	"x_scale\000"
.LASF73:
	.ascii	"__state\000"
.LASF138:
	.ascii	"mag_status\000"
.LASF111:
	.ascii	"__StackTop\000"
.LASF123:
	.ascii	"_Bool\000"
.LASF84:
	.ascii	"int32_t\000"
.LASF10:
	.ascii	"unsigned char\000"
.LASF95:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF34:
	.ascii	"__iswctype\000"
.LASF51:
	.ascii	"frac_digits\000"
.LASF76:
	.ascii	"short int\000"
.LASF141:
	.ascii	"y_min\000"
.LASF108:
	.ascii	"__RAL_error_decoder_head\000"
.LASF146:
	.ascii	"nrf_log_frontend_std_0\000"
.LASF148:
	.ascii	"nrf_log_frontend_std_1\000"
.LASF72:
	.ascii	"__mbstate_s\000"
.LASF139:
	.ascii	"readings\000"
.LASF117:
	.ascii	"FILE\000"
.LASF88:
	.ascii	"MAG_reading_t\000"
.LASF46:
	.ascii	"mon_thousands_sep\000"
.LASF29:
	.ascii	"__RAL_locale_data_t\000"
.LASF57:
	.ascii	"n_sign_posn\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF78:
	.ascii	"MAG_OS_32\000"
.LASF62:
	.ascii	"int_p_sign_posn\000"
.LASF21:
	.ascii	"char\000"
.LASF53:
	.ascii	"p_sep_by_space\000"
.LASF135:
	.ascii	"z_lsb\000"
.LASF125:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF9:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF30:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF157:
	.ascii	"mag3110_write\000"
.LASF12:
	.ascii	"NRF_TWI_FREQ_250K\000"
.LASF63:
	.ascii	"int_n_sign_posn\000"
.LASF136:
	.ascii	"mag_read\000"
.LASF122:
	.ascii	"stderr\000"
.LASF11:
	.ascii	"NRF_TWI_FREQ_100K\000"
.LASF97:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF22:
	.ascii	"__RAL_error_decoder_s\000"
.LASF107:
	.ascii	"__RAL_error_decoder_t\000"
.LASF54:
	.ascii	"n_cs_precedes\000"
.LASF83:
	.ascii	"uint8_t\000"
.LASF16:
	.ascii	"__cr_flag\000"
.LASF93:
	.ascii	"__RAL_codeset_utf8\000"
.LASF50:
	.ascii	"int_frac_digits\000"
.LASF66:
	.ascii	"month_names\000"
.LASF61:
	.ascii	"int_n_sep_by_space\000"
.LASF55:
	.ascii	"n_sep_by_space\000"
.LASF119:
	.ascii	"__RAL_FILE\000"
.LASF102:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF132:
	.ascii	"y_msb\000"
.LASF98:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF45:
	.ascii	"mon_decimal_point\000"
.LASF147:
	.ascii	"nrf_log_frontend_dequeue\000"
.LASF40:
	.ascii	"decimal_point\000"
.LASF79:
	.ascii	"MAG_OS_64\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
