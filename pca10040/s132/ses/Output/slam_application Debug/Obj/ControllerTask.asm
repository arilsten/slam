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
	.file	"ControllerTask.c"
	.text
.Ltext0:
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_dsub
	.global	__aeabi_d2iz
	.section	.text.motorRegulator,"ax",%progbits
	.align	1
	.global	motorRegulator
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	motorRegulator, %function
motorRegulator:
.LVL0:
.LFB293:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\software\\ControllerTask.c"
	.loc 1 341 73 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 341 73 is_stmt 0 view .LVU1
	push	{r4, r5, r6, r7, lr}
.LCFI0:
	vpush.64	{d8}
.LCFI1:
	sub	sp, sp, #12
.LCFI2:
	mov	r4, r1
	add	r1, sp, #8
.LVL1:
	.loc 1 341 73 view .LVU2
	stmdb	r1, {r2, r3}
	.loc 1 342 5 is_stmt 1 view .LVU3
	.loc 1 342 16 is_stmt 0 view .LVU4
	ldr	r3, .L25
	vldr.32	s15, [r3]
	.loc 1 342 8 view .LVU5
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L2
	.loc 1 342 20 discriminator 1 view .LVU6
	cmp	r4, #0
	blt	.L4
.L2:
	.loc 1 342 34 discriminator 3 view .LVU7
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L23
.L5:
	.loc 1 346 5 is_stmt 1 view .LVU8
	.loc 1 346 15 is_stmt 0 view .LVU9
	ldr	r3, .L25+4
	vldr.32	s15, [r3]
	.loc 1 346 8 view .LVU10
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L7
	.loc 1 346 19 discriminator 1 view .LVU11
	cmp	r0, #0
	blt	.L9
.L7:
	.loc 1 346 33 discriminator 3 view .LVU12
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L24
.L10:
	.loc 1 350 5 is_stmt 1 view .LVU13
	.loc 1 351 5 view .LVU14
	.loc 1 352 5 view .LVU15
.LVL2:
	.loc 1 353 5 view .LVU16
	.loc 1 354 5 view .LVU17
	.loc 1 355 5 view .LVU18
	.loc 1 355 27 is_stmt 0 view .LVU19
	bl	__aeabi_i2d
.LVL3:
	.loc 1 355 27 view .LVU20
	movs	r2, #0
	ldr	r3, .L25+8
	bl	__aeabi_dmul
.LVL4:
	mov	r6, r0
	mov	r7, r1
	.loc 1 355 32 view .LVU21
	ldr	r0, [sp]
	bl	__aeabi_i2d
.LVL5:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
.LVL6:
	.loc 1 355 9 view .LVU22
	bl	__aeabi_d2iz
.LVL7:
	vmov	s16, r0	@ int
.LVL8:
	.loc 1 356 5 is_stmt 1 view .LVU23
	.loc 1 356 28 is_stmt 0 view .LVU24
	mov	r0, r4
.LVL9:
	.loc 1 356 28 view .LVU25
	bl	__aeabi_i2d
.LVL10:
	movs	r2, #0
	ldr	r3, .L25+8
	bl	__aeabi_dmul
.LVL11:
	mov	r4, r0
	mov	r5, r1
	.loc 1 356 33 view .LVU26
	ldr	r0, [sp, #4]
	bl	__aeabi_i2d
.LVL12:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dsub
.LVL13:
	.loc 1 356 9 view .LVU27
	bl	__aeabi_d2iz
.LVL14:
	vmov	s14, r0	@ int
.LVL15:
	.loc 1 357 5 is_stmt 1 view .LVU28
	.loc 1 357 24 is_stmt 0 view .LVU29
	vcvt.f32.s32	s15, s16
	vldr.32	s13, .L25+12
	vmul.f32	s12, s15, s13
	.loc 1 357 11 view .LVU30
	ldr	r3, .L25+4
	vldr.32	s11, [r3]
	vadd.f32	s12, s12, s11
	vstr.32	s12, [r3]
	.loc 1 358 5 is_stmt 1 view .LVU31
	.loc 1 358 26 is_stmt 0 view .LVU32
	vcvt.f32.s32	s14, s14
	vmul.f32	s13, s14, s13
	.loc 1 358 12 view .LVU33
	ldr	r3, .L25
	vldr.32	s11, [r3]
	vadd.f32	s13, s13, s11
	vstr.32	s13, [r3]
	.loc 1 359 5 is_stmt 1 view .LVU34
	.loc 1 359 35 is_stmt 0 view .LVU35
	vadd.f32	s13, s13, s13
	.loc 1 359 30 view .LVU36
	vadd.f32	s14, s14, s13
	.loc 1 359 12 view .LVU37
	vcvt.s32.f32	s14, s14
	vmov	r3, s14	@ int
	sxth	r1, r3
.LVL16:
	.loc 1 360 5 is_stmt 1 view .LVU38
	.loc 1 360 34 is_stmt 0 view .LVU39
	vadd.f32	s12, s12, s12
	.loc 1 360 29 view .LVU40
	vadd.f32	s15, s15, s12
	.loc 1 360 12 view .LVU41
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	sxth	r0, r3
.LVL17:
	.loc 1 363 5 is_stmt 1 view .LVU42
	.loc 1 363 8 is_stmt 0 view .LVU43
	cmp	r0, #100
	bgt	.L14
	.loc 1 366 5 is_stmt 1 view .LVU44
	.loc 1 366 8 is_stmt 0 view .LVU45
	cmn	r0, #100
	bge	.L12
	.loc 1 367 16 view .LVU46
	mvn	r0, #99
.LVL18:
	.loc 1 367 16 view .LVU47
	b	.L12
.LVL19:
.L23:
	.loc 1 342 48 discriminator 4 view .LVU48
	cmp	r4, #0
	ble	.L5
.L4:
	.loc 1 343 9 is_stmt 1 view .LVU49
	.loc 1 343 16 is_stmt 0 view .LVU50
	movs	r3, #0
	ldr	r2, .L25
	str	r3, [r2]	@ float
	.loc 1 344 9 is_stmt 1 view .LVU51
	.loc 1 344 15 is_stmt 0 view .LVU52
	ldr	r2, .L25+4
	str	r3, [r2]	@ float
	b	.L5
.L24:
	.loc 1 346 46 discriminator 4 view .LVU53
	cmp	r0, #0
	ble	.L10
.L9:
	.loc 1 347 9 is_stmt 1 view .LVU54
	.loc 1 347 16 is_stmt 0 view .LVU55
	movs	r3, #0
	ldr	r2, .L25
	str	r3, [r2]	@ float
	.loc 1 348 9 is_stmt 1 view .LVU56
	.loc 1 348 15 is_stmt 0 view .LVU57
	ldr	r2, .L25+4
	str	r3, [r2]	@ float
	b	.L10
.LVL20:
.L14:
	.loc 1 364 16 view .LVU58
	movs	r0, #100
.LVL21:
.L12:
	.loc 1 369 5 is_stmt 1 view .LVU59
	.loc 1 369 8 is_stmt 0 view .LVU60
	cmp	r1, #100
	bgt	.L16
	.loc 1 372 5 is_stmt 1 view .LVU61
	.loc 1 372 8 is_stmt 0 view .LVU62
	cmn	r1, #100
	bge	.L13
	.loc 1 373 16 view .LVU63
	mvn	r1, #99
.LVL22:
	.loc 1 373 16 view .LVU64
	b	.L13
.LVL23:
.L16:
	.loc 1 370 16 view .LVU65
	movs	r1, #100
.LVL24:
.L13:
	.loc 1 376 5 is_stmt 1 view .LVU66
	bl	vMotorMovementSwitch
.LVL25:
	.loc 1 377 1 is_stmt 0 view .LVU67
	add	sp, sp, #12
.LCFI3:
	@ sp needed
	vldm	sp!, {d8}
.LCFI4:
.LVL26:
	.loc 1 377 1 view .LVU68
	pop	{r4, r5, r6, r7, pc}
.L26:
	.align	2
.L25:
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	1071644672
	.word	1025758986
.LFE293:
	.size	motorRegulator, .-motorRegulator
	.section	.rodata.vMainPoseControllerTask.str1.4,"aMS",%progbits,1
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
	.global	__aeabi_ddiv
	.global	__aeabi_dadd
	.align	2
.LC2:
	.ascii	"controller sending idle\000"
	.align	2
.LC3:
	.ascii	"Reached goal\000"
	.section	.text.vMainPoseControllerTask,"ax",%progbits
	.align	1
	.global	vMainPoseControllerTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vMainPoseControllerTask, %function
vMainPoseControllerTask:
.LVL27:
.LFB292:
	.loc 1 22 50 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 22 50 is_stmt 0 view .LVU70
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI5:
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
.LCFI6:
	sub	sp, sp, #92
.LCFI7:
	.loc 1 23 5 is_stmt 1 view .LVU71
.LVL28:
	.loc 1 26 5 view .LVU72
	.loc 1 26 23 is_stmt 0 view .LVU73
	movs	r3, #0
	str	r3, [sp, #80]	@ float
	str	r3, [sp, #84]	@ float
	.loc 1 27 5 is_stmt 1 view .LVU74
	.loc 1 28 5 view .LVU75
.LVL29:
	.loc 1 29 5 view .LVU76
	.loc 1 29 13 is_stmt 0 view .LVU77
	movs	r6, #0
	strb	r6, [sp, #79]
	.loc 1 31 5 is_stmt 1 view .LVU78
.LVL30:
	.loc 1 34 5 view .LVU79
	.loc 1 35 5 view .LVU80
	.loc 1 36 5 view .LVU81
	.loc 1 37 5 view .LVU82
	.loc 1 38 5 view .LVU83
	.loc 1 39 5 view .LVU84
	.loc 1 42 5 view .LVU85
	.loc 1 43 5 view .LVU86
	.loc 1 44 5 view .LVU87
	.loc 1 47 5 view .LVU88
	.loc 1 48 5 view .LVU89
	.loc 1 48 11 is_stmt 0 view .LVU90
	str	r3, [sp, #72]	@ float
	.loc 1 49 5 is_stmt 1 view .LVU91
	.loc 1 49 11 is_stmt 0 view .LVU92
	str	r3, [sp, #68]	@ float
	.loc 1 50 5 is_stmt 1 view .LVU93
.LVL31:
	.loc 1 51 5 view .LVU94
	.loc 1 52 5 view .LVU95
	.loc 1 54 5 view .LVU96
	.loc 1 55 5 view .LVU97
	.loc 1 56 5 view .LVU98
	.loc 1 58 5 view .LVU99
	.loc 1 59 5 view .LVU100
	.loc 1 61 5 view .LVU101
	.loc 1 62 5 view .LVU102
	.loc 1 62 22 is_stmt 0 view .LVU103
	strh	r6, [sp, #66]	@ movhi
	.loc 1 63 5 is_stmt 1 view .LVU104
	.loc 1 63 22 is_stmt 0 view .LVU105
	strh	r6, [sp, #64]	@ movhi
	.loc 1 65 5 is_stmt 1 view .LVU106
.LVL32:
	.loc 1 68 5 view .LVU107
	.loc 1 69 5 view .LVU108
	.loc 1 70 5 view .LVU109
	.loc 1 71 5 view .LVU110
	.loc 1 72 5 view .LVU111
	.loc 1 73 5 view .LVU112
	.loc 1 74 5 view .LVU113
	.loc 1 75 5 view .LVU114
	.loc 1 76 5 view .LVU115
	.loc 1 78 5 view .LVU116
	.loc 1 79 5 view .LVU117
	.loc 1 80 5 view .LVU118
	.loc 1 81 5 view .LVU119
	.loc 1 82 5 view .LVU120
	.loc 1 83 5 view .LVU121
	.loc 1 84 5 view .LVU122
	.loc 1 85 5 view .LVU123
	.loc 1 86 5 view .LVU124
	.loc 1 87 5 view .LVU125
	.loc 1 88 5 view .LVU126
	.loc 1 89 5 view .LVU127
	.loc 1 91 5 view .LVU128
	.loc 1 84 13 is_stmt 0 view .LVU129
	mov	fp, r6
	.loc 1 81 13 view .LVU130
	str	r6, [sp, #20]
	.loc 1 80 13 view .LVU131
	movs	r2, #5
	str	r2, [sp, #16]
	.loc 1 79 13 view .LVU132
	mov	r9, #10
	.loc 1 76 13 view .LVU133
	mov	r8, r6
	.loc 1 74 11 view .LVU134
	vmov	s31, r3
	.loc 1 73 11 view .LVU135
	vmov	s30, r3
	.loc 1 72 11 view .LVU136
	str	r3, [sp, #8]	@ float
	.loc 1 68 13 view .LVU137
	mov	r7, r6
	.loc 1 65 13 view .LVU138
	mov	r10, r6
	.loc 1 59 11 view .LVU139
	vmov	s29, r3
	.loc 1 58 11 view .LVU140
	vmov	s28, r3
	.loc 1 52 11 view .LVU141
	vmov	s24, r3
	.loc 1 51 11 view .LVU142
	vmov	s23, r3
	.loc 1 50 11 view .LVU143
	vmov	s27, r3
	.loc 1 47 11 view .LVU144
	str	r3, [sp, #4]	@ float
	.loc 1 39 11 view .LVU145
	vldr.32	s22, .L124
	.loc 1 38 11 view .LVU146
	vldr.32	s21, .L124+4
	.loc 1 31 13 view .LVU147
	movs	r3, #90
	str	r3, [sp, #12]
	b	.L28
.LVL33:
.L122:
.LBB2:
.LBB3:
.LBB4:
	.loc 1 116 21 is_stmt 1 view .LVU148
	.loc 1 116 28 is_stmt 0 view .LVU149
	vmov.f32	s15, #1.0e+1
	vldr.32	s23, [sp, #80]
.LVL34:
	.loc 1 116 28 view .LVU150
	vmul.f32	s23, s23, s15
.LVL35:
	.loc 1 117 21 is_stmt 1 view .LVU151
	.loc 1 117 45 is_stmt 0 view .LVU152
	vldr.32	s24, [sp, #84]
.LVL36:
	.loc 1 117 28 view .LVU153
	vmul.f32	s24, s24, s15
.LVL37:
	.loc 1 118 21 is_stmt 1 view .LVU154
	.loc 1 119 21 view .LVU155
	.loc 1 119 31 is_stmt 0 view .LVU156
	vcvt.f32.s32	s30, s18
.LVL38:
	.loc 1 120 21 is_stmt 1 view .LVU157
	.loc 1 120 31 is_stmt 0 view .LVU158
	vcvt.f32.s32	s31, s16
.LVL39:
	.loc 1 121 21 is_stmt 1 view .LVU159
	.loc 1 122 21 view .LVU160
	.loc 1 123 21 view .LVU161
	.loc 1 124 21 view .LVU162
	.loc 1 125 21 view .LVU163
	.loc 1 126 21 view .LVU164
	vcvt.s32.f32	s15, s24
	vmov	r3, s15	@ int
	vcvt.s32.f32	s15, s23
	vmov	r2, s15	@ int
	ldr	r1, .L124+8
	add	r0, sp, #44
	bl	sprintf
.LVL40:
	.loc 1 127 21 view .LVU165
	add	r1, sp, #44
	movs	r0, #4
	bl	display_text_on_line
.LVL41:
	.loc 1 118 35 is_stmt 0 view .LVU166
	vstr.32	s20, [sp, #8]
	.loc 1 122 30 view .LVU167
	mov	fp, #1
	.loc 1 125 36 view .LVU168
	mov	r8, #0
	.loc 1 123 36 view .LVU169
	mov	r7, r8
	.loc 1 124 33 view .LVU170
	mov	r6, r8
	b	.L31
.LVL42:
.L123:
	.loc 1 124 33 view .LVU171
.LBE4:
	.loc 1 154 29 is_stmt 1 view .LVU172
	.loc 1 155 29 view .LVU173
	.loc 1 155 102 view .LVU174
	.loc 1 155 157 view .LVU175
	.loc 1 155 238 is_stmt 0 view .LVU176
	ldr	r3, .L124+12
	ldrh	r0, [r3]
	.loc 1 155 249 view .LVU177
	lsls	r0, r0, #16
	.loc 1 155 157 view .LVU178
	ldr	r1, .L124+16
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL43:
	.loc 1 154 44 view .LVU179
	mov	r7, r6
	b	.L33
.LVL44:
.L110:
	.loc 1 166 21 is_stmt 1 view .LVU180
	.loc 1 166 57 is_stmt 0 view .LVU181
	vsub.f32	s15, s23, s30
	.loc 1 166 70 view .LVU182
	vmul.f32	s14, s15, s15
	.loc 1 166 103 view .LVU183
	vsub.f32	s15, s24, s31
	.loc 1 166 116 view .LVU184
	vmul.f32	s15, s15, s15
	.loc 1 166 44 view .LVU185
	vadd.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL45:
	vmov	d0, r0, r1
	bl	sqrt
.LVL46:
	vmov	r0, r1, d0
	.loc 1 166 35 view .LVU186
	bl	__aeabi_d2f
.LVL47:
	vmov	s15, r0
.LVL48:
	.loc 1 166 35 view .LVU187
	b	.L38
.LVL49:
.L84:
	.loc 1 161 35 view .LVU188
	vmov.f32	s15, s17
	.loc 1 163 40 view .LVU189
	movs	r7, #1
.LVL50:
	.loc 1 163 40 view .LVU190
	b	.L38
.LVL51:
.L111:
	.loc 1 170 23 view .LVU191
	vmov.f32	s13, #1.0e+0
	.loc 1 169 23 view .LVU192
	vmov.f32	s12, s13
	.loc 1 180 44 view .LVU193
	vldr.32	s22, .L124
.LVL52:
	.loc 1 179 44 view .LVU194
	vldr.32	s21, .L124+4
.LVL53:
.L39:
	.loc 1 183 17 is_stmt 1 view .LVU195
	.loc 1 183 20 is_stmt 0 view .LVU196
	vmov.f32	s14, #1.5e+1
	vcmpe.f32	s17, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L42
	.loc 1 183 46 discriminator 1 view .LVU197
	cmp	r7, #0
	bne	.L42
	.loc 1 185 21 is_stmt 1 view .LVU198
.LVL54:
	.loc 1 186 21 view .LVU199
	.loc 1 186 24 is_stmt 0 view .LVU200
	cmp	r6, #0
	beq	.L44
.LBB5:
	.loc 1 188 25 is_stmt 1 view .LVU201
	.loc 1 188 31 is_stmt 0 view .LVU202
	vsub.f32	s15, s15, s17
.LVL55:
	.loc 1 191 25 is_stmt 1 view .LVU203
	.loc 1 191 28 is_stmt 0 view .LVU204
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	blt	.L45
	.loc 1 191 51 discriminator 1 view .LVU205
	vcmpe.f32	s22, s15
	vmrs	APSR_nzcv, FPSCR
	blt	.L45
.LBB6:
	.loc 1 192 29 is_stmt 1 view .LVU206
	.loc 1 192 32 is_stmt 0 view .LVU207
	ldr	r3, [sp, #20]
	cbnz	r3, .L48
	.loc 1 193 33 is_stmt 1 view .LVU208
	.loc 1 193 36 is_stmt 0 view .LVU209
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L113
	.loc 1 194 37 is_stmt 1 view .LVU210
	.loc 1 194 56 is_stmt 0 view .LVU211
	add	r9, r9, #1
.LVL56:
	.loc 1 194 56 view .LVU212
	uxtb	r9, r9
.LVL57:
	.loc 1 194 56 view .LVU213
	b	.L51
.LVL58:
.L112:
	.loc 1 194 56 view .LVU214
.LBE6:
.LBE5:
	.loc 1 170 23 view .LVU215
	vmov.f32	s13, #1.0e+0
	.loc 1 169 23 view .LVU216
	vmov.f32	s12, s13
	.loc 1 180 44 view .LVU217
	vldr.32	s22, .L124
.LVL59:
	.loc 1 179 44 view .LVU218
	vldr.32	s21, .L124+4
.LVL60:
	.loc 1 179 44 view .LVU219
	b	.L39
.LVL61:
.L113:
.LBB9:
.LBB7:
	.loc 1 196 37 is_stmt 1 view .LVU220
	.loc 1 197 37 view .LVU221
	.loc 1 197 55 is_stmt 0 view .LVU222
	add	r3, r9, #10
	uxtb	r3, r3
	str	r3, [sp, #12]
.LVL62:
	.loc 1 196 57 view .LVU223
	str	r6, [sp, #20]
	b	.L51
.LVL63:
.L48:
	.loc 1 199 36 is_stmt 1 view .LVU224
	.loc 1 199 39 is_stmt 0 view .LVU225
	vcmp.f32	s25, #0
	vmrs	APSR_nzcv, FPSCR
	beq	.L52
	.loc 1 199 51 discriminator 1 view .LVU226
	vcmp.f32	s26, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L51
.L52:
	.loc 1 200 33 is_stmt 1 view .LVU227
	.loc 1 200 48 is_stmt 0 view .LVU228
	add	r8, r8, #2
.LVL64:
	.loc 1 200 48 view .LVU229
	uxtb	r8, r8
.LVL65:
.L51:
	.loc 1 202 29 is_stmt 1 view .LVU230
	.loc 1 202 68 is_stmt 0 view .LVU231
	add	r3, r9, r8
	vmov	s13, r3	@ int
.LVL66:
	.loc 1 202 35 view .LVU232
	vcvt.f32.s32	s13, s13
.LVL67:
	.loc 1 203 29 is_stmt 1 view .LVU233
	.loc 1 203 61 is_stmt 0 view .LVU234
	vldr.32	s11, .L124
	vsub.f32	s10, s11, s13
	.loc 1 203 75 view .LVU235
	vdiv.f32	s14, s10, s11
	.loc 1 203 103 view .LVU236
	vldr.32	s11, [sp, #12]	@ int
	vcvt.f32.s32	s11, s11
	vmul.f32	s12, s11, s12
.LVL68:
	.loc 1 203 82 view .LVU237
	vmul.f32	s14, s14, s12
	.loc 1 203 125 view .LVU238
	vmul.f32	s14, s14, s15
	.loc 1 203 144 view .LVU239
	vdiv.f32	s15, s14, s22
.LVL69:
	.loc 1 203 51 view .LVU240
	vadd.f32	s13, s15, s13
.LVL70:
	.loc 1 203 51 view .LVU241
.LBE7:
	.loc 1 191 98 view .LVU242
	b	.L53
.LVL71:
.L45:
	.loc 1 207 30 is_stmt 1 view .LVU243
	.loc 1 207 33 is_stmt 0 view .LVU244
	vcmpe.f32	s21, s17
	vmrs	APSR_nzcv, FPSCR
	ble	.L114
	.loc 1 208 29 is_stmt 1 view .LVU245
	.loc 1 208 32 is_stmt 0 view .LVU246
	vldr.32	s15, .L124+20
.LVL72:
	.loc 1 208 32 view .LVU247
	vcmpe.f32	s17, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L115
	.loc 1 209 33 is_stmt 1 view .LVU248
	.loc 1 209 36 is_stmt 0 view .LVU249
	vcmp.f32	s25, #0
	vmrs	APSR_nzcv, FPSCR
	beq	.L87
	.loc 1 209 48 discriminator 1 view .LVU250
	vcmp.f32	s26, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L58
	.loc 1 210 52 view .LVU251
	mov	r8, #2
.LVL73:
	.loc 1 210 52 view .LVU252
	b	.L58
.LVL74:
.L87:
	.loc 1 210 52 view .LVU253
	mov	r8, #2
.LVL75:
.L58:
	.loc 1 212 33 is_stmt 1 view .LVU254
	.loc 1 212 77 is_stmt 0 view .LVU255
	add	r3, r9, r8
	vmov	s13, r3	@ int
.LVL76:
	.loc 1 212 55 view .LVU256
	vcvt.f32.s32	s13, s13
.LVL77:
	.loc 1 212 55 view .LVU257
	b	.L53
.LVL78:
.L115:
.LBB8:
	.loc 1 214 33 is_stmt 1 view .LVU258
	.loc 1 214 36 is_stmt 0 view .LVU259
	vldr.32	s15, [sp, #4]
	vcmp.f32	s15, s17
	vmrs	APSR_nzcv, FPSCR
	bne	.L59
	.loc 1 215 37 is_stmt 1 view .LVU260
	.loc 1 215 52 is_stmt 0 view .LVU261
	ldr	r3, [sp, #16]
	sub	r8, r9, r3
.LVL79:
	.loc 1 215 52 view .LVU262
	uxtb	r8, r8
.LVL80:
	.loc 1 216 37 is_stmt 1 view .LVU263
	.loc 1 216 59 is_stmt 0 view .LVU264
	adds	r3, r3, #5
	uxtb	r3, r3
	str	r3, [sp, #16]
.LVL81:
.L59:
	.loc 1 218 33 is_stmt 1 view .LVU265
	.loc 1 218 78 is_stmt 0 view .LVU266
	ldr	r3, [sp, #16]
	add	r3, r3, r8
	vmov	s14, r3	@ int
	.loc 1 218 39 view .LVU267
	vcvt.f32.s32	s14, s14
.LVL82:
	.loc 1 219 33 is_stmt 1 view .LVU268
	.loc 1 219 65 is_stmt 0 view .LVU269
	vldr.32	s12, .L124
.LVL83:
	.loc 1 219 65 view .LVU270
	vsub.f32	s11, s12, s14
	.loc 1 219 81 view .LVU271
	vdiv.f32	s15, s11, s12
	.loc 1 219 109 view .LVU272
	vldr.32	s12, [sp, #12]	@ int
	vcvt.f32.s32	s12, s12
	vmul.f32	s13, s12, s13
.LVL84:
	.loc 1 219 88 view .LVU273
	vmul.f32	s15, s15, s13
	.loc 1 219 143 view .LVU274
	vdiv.f32	s13, s17, s21
	.loc 1 219 131 view .LVU275
	vmul.f32	s15, s15, s13
	.loc 1 219 55 view .LVU276
	vadd.f32	s13, s15, s14
.LVL85:
	.loc 1 219 55 view .LVU277
	b	.L53
.LVL86:
.L114:
	.loc 1 219 55 view .LVU278
.LBE8:
	.loc 1 222 29 is_stmt 1 view .LVU279
	.loc 1 222 51 is_stmt 0 view .LVU280
	vldr.32	s15, [sp, #12]	@ int
.LVL87:
	.loc 1 222 51 view .LVU281
	vcvt.f32.u32	s13, s15
.LVL88:
.L53:
	.loc 1 226 25 is_stmt 1 view .LVU282
	.loc 1 226 66 is_stmt 0 view .LVU283
	vldr.32	s12, [sp, #72]
	vldr.32	s15, .L124+24
	vmul.f32	s15, s12, s15
	.loc 1 226 56 view .LVU284
	vsub.f32	s14, s13, s15
	.loc 1 226 78 view .LVU285
	vsub.f32	s14, s14, s28
	.loc 1 226 32 view .LVU286
	vcvt.s32.f32	s14, s14
	vmov	r3, s14	@ int
	sxth	r3, r3
	strh	r3, [sp, #66]	@ movhi
	.loc 1 227 25 is_stmt 1 view .LVU287
	.loc 1 227 56 is_stmt 0 view .LVU288
	vadd.f32	s15, s15, s13
	.loc 1 227 78 view .LVU289
	vadd.f32	s15, s15, s29
	.loc 1 227 32 view .LVU290
	vcvt.s32.f32	s15, s15
	vmov	r3, s15	@ int
	sxth	r3, r3
	strh	r3, [sp, #64]	@ movhi
	.loc 1 229 25 is_stmt 1 view .LVU291
	.loc 1 229 38 is_stmt 0 view .LVU292
	vadd.f32	s28, s28, s12
.LVL89:
	.loc 1 230 25 is_stmt 1 view .LVU293
	.loc 1 230 39 is_stmt 0 view .LVU294
	vsub.f32	s29, s29, s12
.LVL90:
	.loc 1 234 25 is_stmt 1 view .LVU295
	.loc 1 234 38 is_stmt 0 view .LVU296
	movs	r3, #1
	strb	r3, [sp, #79]
.LVL91:
.L60:
	.loc 1 234 38 view .LVU297
.LBE9:
	.loc 1 296 21 is_stmt 1 view .LVU298
	ldrh	r0, [sp, #66]
	ldrh	r1, [sp, #64]
	ldr	r3, [sp, #40]
	ldr	r2, [sp, #36]
	sxth	r1, r1
	sxth	r0, r0
	bl	motorRegulator
.LVL92:
	.loc 1 185 31 is_stmt 0 view .LVU299
	mov	r10, r7
	.loc 1 296 21 view .LVU300
	b	.L80
.L125:
	.align	2
.L124:
	.word	1120403456
	.word	1133903872
	.word	.LC0
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC1
	.word	1112014848
	.word	1128792064
.LVL93:
.L44:
.LBB10:
	.loc 1 238 25 is_stmt 1 view .LVU301
	.loc 1 238 54 is_stmt 0 view .LVU302
	vldr.32	s14, [sp, #8]
	vsub.f32	s15, s20, s14
.LVL94:
	.loc 1 238 31 view .LVU303
	vstr.32	s15, [sp, #24]
	.loc 1 239 25 is_stmt 1 view .LVU304
	.loc 1 239 54 is_stmt 0 view .LVU305
	vsub.f32	s16, s16, s14
.LVL95:
	.loc 1 239 31 view .LVU306
	vstr.32	s16, [sp, #28]
	.loc 1 240 25 is_stmt 1 view .LVU307
	add	r0, sp, #28
	bl	vFunc_Inf2pi
.LVL96:
	.loc 1 241 25 view .LVU308
	add	r0, sp, #24
	bl	vFunc_Inf2pi
.LVL97:
	.loc 1 242 25 view .LVU309
	.loc 1 242 31 is_stmt 0 view .LVU310
	vldr.32	s15, [sp, #28]
	vmov.f32	s14, #7.5e-1
	vmul.f32	s15, s15, s14
.LVL98:
	.loc 1 243 25 is_stmt 1 view .LVU311
	.loc 1 243 54 is_stmt 0 view .LVU312
	vsub.f32	s20, s20, s15
.LVL99:
	.loc 1 243 31 view .LVU313
	vstr.32	s20, [sp, #32]
	.loc 1 244 25 is_stmt 1 view .LVU314
	add	r0, sp, #32
	bl	vFunc_Inf2pi
.LVL100:
	.loc 1 245 25 view .LVU315
	.loc 1 246 25 view .LVU316
	.loc 1 247 25 view .LVU317
	.loc 1 249 25 view .LVU318
	.loc 1 250 25 view .LVU319
	.loc 1 251 25 view .LVU320
	.loc 1 253 25 view .LVU321
	.loc 1 253 46 is_stmt 0 view .LVU322
	ldr	r0, [sp, #28]	@ float
	bl	__aeabi_f2d
.LVL101:
	vmov	d0, r0, r1
	bl	fabs
.LVL102:
	vmov	r0, r1, d0
	.loc 1 253 61 view .LVU323
	movs	r2, #0
	ldr	r3, .L126
	bl	__aeabi_dmul
.LVL103:
	.loc 1 253 31 view .LVU324
	bl	__aeabi_d2f
.LVL104:
	vmov	s20, r0
.LVL105:
	.loc 1 255 25 is_stmt 1 view .LVU325
	.loc 1 255 51 is_stmt 0 view .LVU326
	ldr	r0, [sp, #72]	@ float
.LVL106:
	.loc 1 255 51 view .LVU327
	bl	__aeabi_f2d
.LVL107:
	movs	r2, #0
	ldr	r3, .L126+4
	bl	__aeabi_dmul
.LVL108:
	.loc 1 255 58 view .LVU328
	movs	r2, #0
	ldr	r3, .L126+8
	bl	__aeabi_ddiv
.LVL109:
	mov	r4, r0
	mov	r5, r1
	.loc 1 255 38 view .LVU329
	vmov	r0, s27
	bl	__aeabi_f2d
.LVL110:
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dadd
.LVL111:
	bl	__aeabi_d2f
.LVL112:
	vmov	s27, r0
.LVL113:
	.loc 1 257 25 is_stmt 1 view .LVU330
	.loc 1 257 42 is_stmt 0 view .LVU331
	vldr.32	s14, [sp, #24]
	.loc 1 257 28 view .LVU332
	vldr.32	s15, .L126+12
	vmul.f32	s19, s14, s15
.LVL114:
	.loc 1 258 25 is_stmt 1 view .LVU333
	.loc 1 258 60 is_stmt 0 view .LVU334
	vcmpe.f32	s20, s19
	vmrs	APSR_nzcv, FPSCR
	bgt	.L61
	.loc 1 258 60 view .LVU335
	vmov.f32	s19, s20
.LVL115:
.L61:
	.loc 1 259 25 is_stmt 1 discriminator 4 view .LVU336
	.loc 1 259 39 is_stmt 0 discriminator 4 view .LVU337
	vneg.f32	s16, s20
	.loc 1 259 72 discriminator 4 view .LVU338
	vcmpe.f32	s16, s19
	vmrs	APSR_nzcv, FPSCR
	ble	.L63
	.loc 1 259 72 view .LVU339
	vmov.f32	s19, s16
.LVL116:
.L63:
	.loc 1 262 25 is_stmt 1 discriminator 4 view .LVU340
	.loc 1 262 28 is_stmt 0 discriminator 4 view .LVU341
	vldr.32	s15, .L126+16
	vmul.f32	s18, s27, s15
.LVL117:
	.loc 1 263 25 is_stmt 1 discriminator 4 view .LVU342
	.loc 1 263 50 is_stmt 0 discriminator 4 view .LVU343
	vmov.f32	s15, #1.0e+1
	vcmpe.f32	s18, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L64
	vmov.f32	s18, s15
.LVL118:
.L64:
	.loc 1 264 25 is_stmt 1 discriminator 4 view .LVU344
	.loc 1 264 52 is_stmt 0 discriminator 4 view .LVU345
	vmov.f32	s15, #-1.0e+1
	vcmpe.f32	s18, s15
	vmrs	APSR_nzcv, FPSCR
	bpl	.L66
	.loc 1 264 52 view .LVU346
	vmov.f32	s18, s15
.LVL119:
.L66:
	.loc 1 267 25 is_stmt 1 discriminator 4 view .LVU347
	.loc 1 267 28 is_stmt 0 discriminator 4 view .LVU348
	vmov	r0, s14
.LVL120:
	.loc 1 267 28 discriminator 4 view .LVU349
	bl	__aeabi_f2d
.LVL121:
	vmov	d0, r0, r1
	bl	fabs
.LVL122:
	vmov	r4, r5, d0
	.loc 1 267 46 discriminator 4 view .LVU350
	ldr	r0, [sp, #28]	@ float
	bl	__aeabi_f2d
.LVL123:
	movs	r2, #0
	ldr	r3, .L126+20
	bl	__aeabi_dmul
.LVL124:
	vmov	d0, r0, r1
	bl	fabs
.LVL125:
	vmov	r2, r3, d0
	.loc 1 267 27 discriminator 4 view .LVU351
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmpgt
.LVL126:
	cbnz	r0, .L119
	.loc 1 251 31 view .LVU352
	vldr.32	s16, .L126+24
.LVL127:
.L68:
	.loc 1 278 25 is_stmt 1 view .LVU353
	.loc 1 278 43 is_stmt 0 view .LVU354
	vadd.f32	s15, s16, s19
	.loc 1 278 31 view .LVU355
	vadd.f32	s15, s15, s18
.LVL128:
	.loc 1 284 25 is_stmt 1 view .LVU356
	.loc 1 284 65 is_stmt 0 view .LVU357
	vldr.32	s14, .L126+12
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bmi	.L74
	vmov.f32	s15, s14
.LVL129:
.L74:
	.loc 1 285 25 is_stmt 1 discriminator 4 view .LVU358
	.loc 1 285 66 is_stmt 0 discriminator 4 view .LVU359
	vldr.32	s14, .L126+28
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L76
	.loc 1 285 66 view .LVU360
	vmov.f32	s15, s14
.LVL130:
.L76:
	.loc 1 286 25 is_stmt 1 discriminator 4 view .LVU361
	.loc 1 286 29 is_stmt 0 discriminator 4 view .LVU362
	vcvt.s32.f32	s15, s15
.LVL131:
	.loc 1 286 29 discriminator 4 view .LVU363
	vmov	r3, s15	@ int
.LVL132:
	.loc 1 287 25 is_stmt 1 discriminator 4 view .LVU364
	.loc 1 287 32 is_stmt 0 discriminator 4 view .LVU365
	rsbs	r2, r3, #0
	sxth	r2, r2
	strh	r2, [sp, #66]	@ movhi
	.loc 1 288 25 is_stmt 1 discriminator 4 view .LVU366
	.loc 1 288 32 is_stmt 0 discriminator 4 view .LVU367
	sxth	r3, r3
.LVL133:
	.loc 1 288 32 discriminator 4 view .LVU368
	strh	r3, [sp, #64]	@ movhi
	.loc 1 290 25 is_stmt 1 discriminator 4 view .LVU369
	.loc 1 290 49 is_stmt 0 discriminator 4 view .LVU370
	vldr.32	s15, [sp, #72]
.LVL134:
	.loc 1 290 38 discriminator 4 view .LVU371
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L120
	.loc 1 290 38 view .LVU372
	movs	r3, #4
.L78:
	.loc 1 290 38 discriminator 4 view .LVU373
	strb	r3, [sp, #79]
	.loc 1 291 25 is_stmt 1 discriminator 4 view .LVU374
.LVL135:
	.loc 1 291 34 is_stmt 0 discriminator 4 view .LVU375
	mov	fp, r6
	b	.L60
.LVL136:
.L119:
	.loc 1 268 25 is_stmt 1 view .LVU376
	.loc 1 268 35 is_stmt 0 view .LVU377
	ldr	r0, [sp, #32]	@ float
	bl	__aeabi_f2d
.LVL137:
	vmov	d0, r0, r1
	bl	fabs
.LVL138:
	vmov	r0, r1, d0
	.loc 1 268 32 view .LVU378
	movs	r2, #0
	ldr	r3, .L126+32
	bl	__aeabi_dmul
.LVL139:
	.loc 1 268 27 view .LVU379
	bl	__aeabi_d2f
.LVL140:
	vmov	s15, r0
.LVL141:
	.loc 1 269 25 is_stmt 1 view .LVU380
	.loc 1 269 37 is_stmt 0 view .LVU381
	vldr.32	s14, [sp, #72]
	.loc 1 269 27 view .LVU382
	vcmpe.f32	s14, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L70
	.loc 1 270 25 is_stmt 1 view .LVU383
	.loc 1 270 28 is_stmt 0 view .LVU384
	vneg.f32	s15, s15
.LVL142:
.L70:
	.loc 1 273 25 is_stmt 1 view .LVU385
	.loc 1 273 60 is_stmt 0 view .LVU386
	vcmpe.f32	s15, s20
	vmrs	APSR_nzcv, FPSCR
	bpl	.L72
	.loc 1 273 60 view .LVU387
	vmov.f32	s20, s15
.LVL143:
.L72:
	.loc 1 274 25 is_stmt 1 discriminator 4 view .LVU388
	.loc 1 274 72 is_stmt 0 discriminator 4 view .LVU389
	vcmpe.f32	s16, s20
	vmrs	APSR_nzcv, FPSCR
	bgt	.L68
	.loc 1 274 72 view .LVU390
	vmov.f32	s16, s20
	b	.L68
.LVL144:
.L120:
	.loc 1 290 38 view .LVU391
	movs	r3, #3
	b	.L78
.LVL145:
.L42:
	.loc 1 290 38 view .LVU392
.LBE10:
.LBB11:
	.loc 1 299 21 is_stmt 1 view .LVU393
	.loc 1 299 24 is_stmt 0 view .LVU394
	cmp	r10, #0
	beq	.L121
.LVL146:
.L81:
	.loc 1 305 21 is_stmt 1 view .LVU395
	.loc 1 307 21 view .LVU396
	bl	motor_brake
.LVL147:
	.loc 1 309 21 view .LVU397
	.loc 1 309 34 is_stmt 0 view .LVU398
	movs	r3, #0
	strb	r3, [sp, #79]
	.loc 1 310 6 is_stmt 1 view .LVU399
	ldr	r1, .L126+36
	movs	r0, #4
	bl	display_text_on_line
.LVL148:
.L80:
	.loc 1 310 6 is_stmt 0 view .LVU400
.LBE11:
	.loc 1 312 17 is_stmt 1 view .LVU401
	movs	r3, #0
	mov	r2, r3
	add	r1, sp, #79
	ldr	r0, .L126+40
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL149:
	.loc 1 131 26 is_stmt 0 view .LVU402
	vstr.32	s17, [sp, #4]
.LVL150:
	.loc 1 131 26 view .LVU403
	b	.L28
.LVL151:
.L121:
.LBB13:
.LBB12:
	.loc 1 300 25 is_stmt 1 discriminator 3 view .LVU404
	.loc 1 300 98 discriminator 3 view .LVU405
	.loc 1 300 153 discriminator 3 view .LVU406
	.loc 1 300 234 is_stmt 0 discriminator 3 view .LVU407
	ldr	r3, .L126+44
	ldrh	r0, [r3]
	.loc 1 300 245 discriminator 3 view .LVU408
	lsls	r0, r0, #16
	.loc 1 300 153 discriminator 3 view .LVU409
	ldr	r1, .L126+48
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL152:
	.loc 1 300 284 is_stmt 1 discriminator 3 view .LVU410
	.loc 1 301 25 discriminator 3 view .LVU411
	bl	send_idle
.LVL153:
	.loc 1 302 25 discriminator 3 view .LVU412
	.loc 1 303 25 discriminator 3 view .LVU413
	.loc 1 303 35 is_stmt 0 discriminator 3 view .LVU414
	mov	r10, #1
	b	.L81
.L127:
	.align	2
.L126:
	.word	1076756480
	.word	1078198272
	.word	1083129856
	.word	1120403456
	.word	1117782016
	.word	1072168960
	.word	0
	.word	-1027080192
	.word	1080623104
	.word	.LC3
	.word	scanStatusQ
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC2
.LVL154:
.L29:
	.loc 1 303 35 discriminator 3 view .LVU415
.LBE12:
.LBE13:
.LBE3:
.LBE2:
	.loc 1 332 13 is_stmt 1 view .LVU416
	bl	motor_brake
.LVL155:
.L28:
	.loc 1 93 5 view .LVU417
	.loc 1 95 9 view .LVU418
	.loc 1 95 13 is_stmt 0 view .LVU419
	ldr	r3, .L128+24
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 95 12 view .LVU420
	cmp	r3, #0
	beq	.L29
.LBB16:
	.loc 1 96 13 is_stmt 1 view .LVU421
	ldr	r4, .L128+28
	movs	r1, #1
	ldr	r0, [r4]
	bl	xQueueSemaphoreTake
.LVL156:
	.loc 1 98 13 view .LVU422
	.loc 1 98 34 is_stmt 0 view .LVU423
	add	r0, sp, #36
	bl	encoder_get_ticks
.LVL157:
	.loc 1 99 13 is_stmt 1 view .LVU424
	.loc 1 99 29 is_stmt 0 view .LVU425
	ldr	r2, [sp, #36]
	ldr	r3, .L128+32
	strh	r2, [r3]	@ movhi
	.loc 1 100 13 is_stmt 1 view .LVU426
	.loc 1 100 30 is_stmt 0 view .LVU427
	ldr	r2, [sp, #40]
	ldr	r3, .L128+36
	strh	r2, [r3]	@ movhi
	.loc 1 101 13 is_stmt 1 view .LVU428
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, [r4]
	bl	xQueueGenericSend
.LVL158:
	.loc 1 102 13 view .LVU429
	.loc 1 102 17 is_stmt 0 view .LVU430
	mov	r1, #-1
	ldr	r3, .L128+40
	ldr	r0, [r3]
	bl	xQueueSemaphoreTake
.LVL159:
	.loc 1 102 16 view .LVU431
	cmp	r0, #1
	bne	.L28
.LBB15:
	.loc 1 105 17 is_stmt 1 view .LVU432
	ldr	r4, .L128+44
	mov	r1, #-1
	ldr	r0, [r4]
	bl	xQueueSemaphoreTake
.LVL160:
	.loc 1 106 17 view .LVU433
	.loc 1 106 26 is_stmt 0 view .LVU434
	ldr	r3, .L128+48
	vldr.32	s20, [r3]
.LVL161:
	.loc 1 107 17 is_stmt 1 view .LVU435
	.loc 1 107 22 is_stmt 0 view .LVU436
	ldr	r3, .L128+52
	ldrsh	r3, [r3]
	vmov	s18, r3	@ int
.LVL162:
	.loc 1 108 17 is_stmt 1 view .LVU437
	.loc 1 108 22 is_stmt 0 view .LVU438
	ldr	r3, .L128+56
	ldrsh	r3, [r3]
	vmov	s16, r3	@ int
.LVL163:
	.loc 1 109 17 is_stmt 1 view .LVU439
	.loc 1 109 23 is_stmt 0 view .LVU440
	ldr	r3, .L128+60
	vldr.32	s25, [r3]
.LVL164:
	.loc 1 110 17 is_stmt 1 view .LVU441
	.loc 1 110 24 is_stmt 0 view .LVU442
	ldr	r3, .L128+64
	vldr.32	s26, [r3]
.LVL165:
	.loc 1 111 17 is_stmt 1 view .LVU443
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, [r4]
	bl	xQueueGenericSend
.LVL166:
	.loc 1 114 17 view .LVU444
	.loc 1 114 21 is_stmt 0 view .LVU445
	movs	r2, #0
	add	r1, sp, #80
	ldr	r3, .L128+68
	ldr	r0, [r3]
	bl	xQueueReceive
.LVL167:
	.loc 1 114 20 view .LVU446
	cmp	r0, #1
	beq	.L122
.LVL168:
.L31:
	.loc 1 130 17 is_stmt 1 view .LVU447
	.loc 1 131 17 view .LVU448
	.loc 1 131 48 is_stmt 0 view .LVU449
	vcvt.f32.s32	s18, s18
.LVL169:
	.loc 1 131 48 view .LVU450
	vsub.f32	s18, s23, s18
	.loc 1 131 56 view .LVU451
	vmul.f32	s14, s18, s18
	.loc 1 131 84 view .LVU452
	vcvt.f32.s32	s16, s16
.LVL170:
	.loc 1 131 84 view .LVU453
	vsub.f32	s16, s24, s16
	.loc 1 131 92 view .LVU454
	vmul.f32	s15, s16, s16
	.loc 1 131 35 view .LVU455
	vadd.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL171:
	vmov	d0, r0, r1
	bl	sqrt
.LVL172:
	vmov	r0, r1, d0
	.loc 1 131 26 view .LVU456
	bl	__aeabi_d2f
.LVL173:
	vmov	s17, r0
.LVL174:
	.loc 1 133 17 is_stmt 1 view .LVU457
	.loc 1 134 17 view .LVU458
	.loc 1 135 17 view .LVU459
	.loc 1 135 30 is_stmt 0 view .LVU460
	vmov	r0, s18
.LVL175:
	.loc 1 135 30 view .LVU461
	bl	__aeabi_f2d
.LVL176:
	vmov	d9, r0, r1
.LVL177:
	.loc 1 135 30 view .LVU462
	vmov	r0, s16
	bl	__aeabi_f2d
.LVL178:
	vmov.f32	s2, s18
	vmov.f32	s3, s19
	vmov	d0, r0, r1
	bl	atan2
.LVL179:
	vmov	r0, r1, d0
	.loc 1 135 28 view .LVU463
	bl	__aeabi_d2f
.LVL180:
	vmov	s16, r0
.LVL181:
	.loc 1 137 17 is_stmt 1 view .LVU464
	.loc 1 137 31 is_stmt 0 view .LVU465
	vldr.32	s18, [sp, #72]
.LVL182:
	.loc 1 138 17 is_stmt 1 view .LVU466
	.loc 1 138 40 is_stmt 0 view .LVU467
	vsub.f32	s15, s16, s20
	.loc 1 138 27 view .LVU468
	vstr.32	s15, [sp, #72]
	.loc 1 139 17 is_stmt 1 view .LVU469
	add	r0, sp, #72
.LVL183:
	.loc 1 139 17 is_stmt 0 view .LVU470
	bl	vFunc_Inf2pi
.LVL184:
	.loc 1 140 17 is_stmt 1 view .LVU471
	.loc 1 140 39 is_stmt 0 view .LVU472
	vldr.32	s15, [sp, #72]
	vsub.f32	s15, s15, s18
	.loc 1 140 26 view .LVU473
	vstr.32	s15, [sp, #68]
	.loc 1 141 17 is_stmt 1 view .LVU474
	add	r0, sp, #68
	bl	vFunc_Inf2pi
.LVL185:
	.loc 1 142 17 view .LVU475
	.loc 1 142 26 is_stmt 0 view .LVU476
	vldr.32	s15, [sp, #68]
	vmov.f32	s14, #2.5e+1
	vmul.f32	s15, s15, s14
	vstr.32	s15, [sp, #68]
	.loc 1 145 17 is_stmt 1 view .LVU477
	.loc 1 145 21 is_stmt 0 view .LVU478
	ldr	r0, [sp, #72]	@ float
	bl	__aeabi_f2d
.LVL186:
	vmov	d0, r0, r1
	bl	fabs
.LVL187:
	.loc 1 147 17 is_stmt 1 view .LVU479
	.loc 1 148 17 view .LVU480
	.loc 1 148 21 is_stmt 0 view .LVU481
	ldr	r0, [sp, #72]	@ float
	bl	__aeabi_f2d
.LVL188:
	vmov	d0, r0, r1
	bl	fabs
.LVL189:
	vmov	r0, r1, d0
	.loc 1 148 20 view .LVU482
	adr	r3, .L128
	ldrd	r2, [r3]
	bl	__aeabi_dcmplt
.LVL190:
	cbz	r0, .L32
	.loc 1 149 33 view .LVU483
	movs	r6, #1
.LVL191:
	.loc 1 150 34 view .LVU484
	vldr.32	s27, .L128+72
.LVL192:
.L32:
	.loc 1 152 17 is_stmt 1 view .LVU485
	.loc 1 152 20 is_stmt 0 view .LVU486
	ldr	r0, [sp, #72]	@ float
	bl	__aeabi_f2d
.LVL193:
	vmov	d0, r0, r1
	bl	fabs
.LVL194:
	vmov	r0, r1, d0
	.loc 1 152 19 view .LVU487
	adr	r3, .L128+8
	ldrd	r2, [r3]
	bl	__aeabi_dcmpge
.LVL195:
	cbz	r0, .L33
	.loc 1 152 48 discriminator 1 view .LVU488
	cbz	r6, .L33
	.loc 1 153 23 is_stmt 1 view .LVU489
	.loc 1 153 25 is_stmt 0 view .LVU490
	cmp	r7, #0
	beq	.L123
.LVL196:
.L33:
	.loc 1 155 321 is_stmt 1 discriminator 5 view .LVU491
	.loc 1 159 17 discriminator 5 view .LVU492
	.loc 1 159 36 is_stmt 0 discriminator 5 view .LVU493
	vldr.32	s15, [sp, #72]
	vsub.f32	s15, s18, s15
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL197:
	mov	r4, r0
	mov	r5, r1
	.loc 1 159 20 discriminator 5 view .LVU494
	adr	r3, .L128+8
	ldrd	r2, [r3]
	bl	__aeabi_dcmpgt
.LVL198:
	cbnz	r0, .L35
	.loc 1 159 61 discriminator 1 view .LVU495
	adr	r3, .L128+16
	ldrd	r2, [r3]
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmplt
.LVL199:
	cmp	r0, #0
	beq	.L110
.L35:
	.loc 1 161 21 is_stmt 1 view .LVU496
.LVL200:
	.loc 1 162 21 view .LVU497
	.loc 1 162 24 is_stmt 0 view .LVU498
	cmp	fp, #0
	beq	.L84
	.loc 1 161 35 view .LVU499
	vmov.f32	s15, s17
.LVL201:
.L38:
	.loc 1 169 17 is_stmt 1 view .LVU500
	.loc 1 170 17 view .LVU501
	.loc 1 171 17 view .LVU502
	.loc 1 171 20 is_stmt 0 view .LVU503
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	ble	.L111
	.loc 1 171 82 discriminator 1 view .LVU504
	vadd.f32	s14, s21, s22
	.loc 1 171 39 discriminator 1 view .LVU505
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L112
.LBB14:
	.loc 1 172 21 is_stmt 1 view .LVU506
.LVL202:
	.loc 1 173 21 view .LVU507
	.loc 1 174 21 view .LVU508
	.loc 1 174 44 is_stmt 0 view .LVU509
	vmov.f32	s13, #2.5e-1
	vmul.f32	s11, s15, s13
.LVL203:
	.loc 1 175 21 is_stmt 1 view .LVU510
	.loc 1 175 60 is_stmt 0 view .LVU511
	vmov.f32	s14, #3.0e+0
	vmul.f32	s14, s15, s14
	.loc 1 175 44 view .LVU512
	vmul.f32	s14, s14, s13
.LVL204:
	.loc 1 176 21 is_stmt 1 view .LVU513
	.loc 1 176 39 is_stmt 0 view .LVU514
	vdiv.f32	s12, s11, s22
.LVL205:
	.loc 1 177 21 is_stmt 1 view .LVU515
	.loc 1 177 39 is_stmt 0 view .LVU516
	vdiv.f32	s13, s14, s21
.LVL206:
	.loc 1 174 44 view .LVU517
	vmov.f32	s22, s11
.LVL207:
	.loc 1 175 44 view .LVU518
	vmov.f32	s21, s14
.LVL208:
	.loc 1 175 44 view .LVU519
.LBE14:
	.loc 1 171 109 view .LVU520
	b	.L39
.L129:
	.align	3
.L128:
	.word	-1610612736
	.word	1067573062
	.word	1413754136
	.word	1073291771
	.word	1413754136
	.word	-1074191877
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
	.word	0
.LBE15:
.LBE16:
.LFE292:
	.size	vMainPoseControllerTask, .-vMainPoseControllerTask
	.global	rightI
	.global	leftI
	.section	.bss.leftI,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	leftI, %object
	.size	leftI, 4
leftI:
	.space	4
	.section	.bss.rightI,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	rightI, %object
	.size	rightI, 4
rightI:
	.space	4
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
	.4byte	.LFB293
	.4byte	.LFE293-.LFB293
	.byte	0x4
	.4byte	.LCFI0-.LFB293
	.byte	0xe
	.uleb128 0x14
	.byte	0x84
	.uleb128 0x5
	.byte	0x85
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x1c
	.byte	0x5
	.uleb128 0x50
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x51
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x1c
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0x6
	.uleb128 0x50
	.byte	0x6
	.uleb128 0x51
	.byte	0xe
	.uleb128 0x14
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB292
	.4byte	.LFE292-.LFB292
	.byte	0x4
	.4byte	.LCFI5-.LFB292
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
	.uleb128 0x64
	.byte	0x5
	.uleb128 0x50
	.uleb128 0x19
	.byte	0x5
	.uleb128 0x51
	.uleb128 0x18
	.byte	0x5
	.uleb128 0x52
	.uleb128 0x17
	.byte	0x5
	.uleb128 0x53
	.uleb128 0x16
	.byte	0x5
	.uleb128 0x54
	.uleb128 0x15
	.byte	0x5
	.uleb128 0x55
	.uleb128 0x14
	.byte	0x5
	.uleb128 0x56
	.uleb128 0x13
	.byte	0x5
	.uleb128 0x57
	.uleb128 0x12
	.byte	0x5
	.uleb128 0x58
	.uleb128 0x11
	.byte	0x5
	.uleb128 0x59
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x5a
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x5b
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x5c
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x5d
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x5e
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x5f
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0xc0
	.align	2
.LEFDE2:
	.text
.Letext0:
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\software\\globals.h"
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
	.byte	0x41
	.byte	0x8
	.4byte	0x41
	.uleb128 0x3
	.ascii	"x\000"
	.byte	0x2
	.byte	0x42
	.byte	0xb
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.ascii	"y\000"
	.byte	0x2
	.byte	0x43
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
	.file 5 "../../../drivers/encoder.h"
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
	.byte	0x5
	.byte	0x17
	.byte	0x9
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x5
	.byte	0x18
	.byte	0xa
	.4byte	0x41
	.byte	0
	.uleb128 0x6
	.4byte	.LASF14
	.byte	0x5
	.byte	0x19
	.byte	0xa
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
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
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x6
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x6
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0xa
	.4byte	0x4b
	.uleb128 0xa
	.4byte	0x5b
	.uleb128 0xb
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0xc
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.byte	0
	.file 7 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0xd
	.4byte	.LASF20
	.byte	0x8
	.byte	0x7
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x7
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x7
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.4byte	.LASF23
	.byte	0x7
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x10
	.byte	0x4
	.4byte	0x61
	.uleb128 0x11
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x12
	.4byte	0x76
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x14
	.4byte	0x82
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
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
	.4byte	.LASF25
	.byte	0x14
	.byte	0x7
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x7
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
	.uleb128 0x10
	.byte	0x4
	.4byte	0x55
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x14
	.4byte	0x5a
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x7
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
	.byte	0x7
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x7
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x7
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x7
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x60
	.uleb128 0x10
	.byte	0x4
	.4byte	0x65
	.uleb128 0x10
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x14
	.4byte	0x6f
	.uleb128 0x14
	.4byte	0x76
	.uleb128 0x14
	.4byte	0x86
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x7
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
	.4byte	.LASF32
	.byte	0x7
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
	.byte	0x7
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x7
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x7
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x7
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x7
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x7
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x7
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x10
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x10
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x10
	.byte	0x4
	.4byte	0xea
	.uleb128 0x10
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x10
	.byte	0x4
	.4byte	0x112
	.uleb128 0x11
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0x12
	.4byte	0x130
	.uleb128 0x12
	.4byte	0x130
	.byte	0
	.uleb128 0x11
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0x12
	.4byte	0x130
	.byte	0
	.uleb128 0x11
	.4byte	0x130
	.4byte	0xea
	.uleb128 0x12
	.4byte	0x137
	.uleb128 0x12
	.4byte	0x130
	.byte	0
	.uleb128 0x11
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0x12
	.4byte	0x137
	.byte	0
	.uleb128 0x11
	.4byte	0x130
	.4byte	0x112
	.uleb128 0x12
	.4byte	0x13e
	.uleb128 0x12
	.4byte	0x144
	.uleb128 0x12
	.4byte	0x14b
	.byte	0
	.uleb128 0x11
	.4byte	0x130
	.4byte	0x130
	.uleb128 0x12
	.4byte	0x155
	.uleb128 0x12
	.4byte	0x15b
	.uleb128 0x12
	.4byte	0x144
	.uleb128 0x12
	.4byte	0x14b
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x10
	.byte	0x4
	.4byte	0x161
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
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
	.uleb128 0x10
	.byte	0x4
	.4byte	0x144
	.uleb128 0x10
	.byte	0x4
	.4byte	0x168
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x14
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
	.byte	0x7
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x7
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x7
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x7
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x7
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x7
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x7
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x7
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x7
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x7
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x7
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x7
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x7
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x7
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x7
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x7
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x7
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x7
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x7
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x7
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x7
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x7
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x7
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x7
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x7
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x7
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x7
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x7
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0x7
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF70
	.byte	0x7
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0x7
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x7
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x14
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
	.4byte	.LASF73
	.byte	0x8
	.byte	0x7
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0x7
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0x7
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.byte	0
	.file 8 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 9 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 10 "../../../../../../components/libraries/util/app_util.h"
	.file 11 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 12 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
	.file 13 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 14 "../../../../../../external/freertos/source/include/queue.h"
	.file 15 "../../../../../../external/freertos/source/include/semphr.h"
	.file 16 "../../../../../../external/freertos/source/include/task.h"
	.file 17 "../../../drivers/motor.h"
	.file 18 "../../../drivers/functions.h"
	.file 19 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xf07
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF246
	.byte	0xc
	.4byte	.LASF247
	.4byte	.LASF248
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF76
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF77
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x51
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x14
	.4byte	0x51
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0x4
	.byte	0x35
	.byte	0x16
	.4byte	0x6e
	.uleb128 0xa
	.4byte	0x5d
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF80
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x29
	.uleb128 0xa
	.4byte	0x7c
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x99
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF82
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF83
	.uleb128 0x18
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF24
	.uleb128 0x14
	.4byte	0xb7
	.uleb128 0x15
	.4byte	.LASF32
	.byte	0x7
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
	.uleb128 0x14
	.4byte	0xc3
	.uleb128 0x15
	.4byte	.LASF27
	.byte	0x7
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
	.uleb128 0x14
	.4byte	0xd8
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x7
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
	.4byte	.LASF85
	.byte	0x7
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xe8
	.uleb128 0x1a
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x110
	.byte	0x25
	.4byte	0xd3
	.uleb128 0x1a
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x111
	.byte	0x25
	.4byte	0xd3
	.uleb128 0xb
	.4byte	0x58
	.4byte	0x135
	.uleb128 0xc
	.4byte	0x99
	.byte	0x7f
	.byte	0
	.uleb128 0x14
	.4byte	0x125
	.uleb128 0x1a
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x113
	.byte	0x1c
	.4byte	0x135
	.uleb128 0xb
	.4byte	0xbe
	.4byte	0x152
	.uleb128 0x1b
	.byte	0
	.uleb128 0x14
	.4byte	0x147
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x115
	.byte	0x13
	.4byte	0x152
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x116
	.byte	0x13
	.4byte	0x152
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x117
	.byte	0x13
	.4byte	0x152
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x118
	.byte	0x13
	.4byte	0x152
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x11a
	.byte	0x13
	.4byte	0x152
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x11b
	.byte	0x13
	.4byte	0x152
	.uleb128 0x1a
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x11c
	.byte	0x13
	.4byte	0x152
	.uleb128 0x1a
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x11d
	.byte	0x13
	.4byte	0x152
	.uleb128 0x1a
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x11e
	.byte	0x13
	.4byte	0x152
	.uleb128 0x1a
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x11f
	.byte	0x13
	.4byte	0x152
	.uleb128 0x11
	.4byte	0x29
	.4byte	0x1e8
	.uleb128 0x12
	.4byte	0x1e8
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1f3
	.uleb128 0x1c
	.4byte	.LASF112
	.uleb128 0x14
	.4byte	0x1ee
	.uleb128 0x1a
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x135
	.byte	0xe
	.4byte	0x205
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1d9
	.uleb128 0x11
	.4byte	0x29
	.4byte	0x21a
	.uleb128 0x12
	.4byte	0x21a
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1ee
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x136
	.byte	0xe
	.4byte	0x22d
	.uleb128 0x10
	.byte	0x4
	.4byte	0x20b
	.uleb128 0x1d
	.4byte	.LASF101
	.byte	0x7
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
	.4byte	.LASF102
	.byte	0x7
	.2byte	0x157
	.byte	0x1f
	.4byte	0x251
	.uleb128 0x10
	.byte	0x4
	.4byte	0x233
	.uleb128 0x1a
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x744
	.byte	0x19
	.4byte	0x88
	.uleb128 0x1e
	.4byte	.LASF104
	.byte	0x9
	.byte	0x21
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x1e
	.4byte	.LASF105
	.byte	0xa
	.byte	0x53
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x1e
	.4byte	.LASF106
	.byte	0xa
	.byte	0x54
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0xa
	.byte	0x72
	.byte	0x13
	.4byte	0x294
	.uleb128 0x10
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0xa
	.byte	0x73
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x15
	.4byte	.LASF109
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
	.uleb128 0x1e
	.4byte	.LASF110
	.byte	0x6
	.byte	0x75
	.byte	0x19
	.4byte	0x2a6
	.uleb128 0xf
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2cf
	.uleb128 0x1c
	.4byte	.LASF113
	.uleb128 0x1a
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2e1
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2c2
	.uleb128 0x1a
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2e1
	.uleb128 0x1a
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2e1
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF117
	.uleb128 0x15
	.4byte	.LASF118
	.byte	0x5
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF119
	.uleb128 0x7
	.4byte	.LASF120
	.byte	0xc
	.byte	0x39
	.byte	0xe
	.4byte	0xb0
	.uleb128 0x7
	.4byte	.LASF121
	.byte	0xc
	.byte	0x40
	.byte	0x16
	.4byte	0x8d
	.uleb128 0x15
	.4byte	.LASF122
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
	.uleb128 0x1a
	.4byte	.LASF123
	.byte	0xd
	.2byte	0x124
	.byte	0x2e
	.4byte	0x337
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0xe
	.byte	0x2f
	.byte	0x10
	.4byte	0xae
	.uleb128 0x7
	.4byte	.LASF125
	.byte	0xf
	.byte	0x26
	.byte	0x17
	.4byte	0x354
	.uleb128 0x7
	.4byte	.LASF126
	.byte	0x10
	.byte	0x3e
	.byte	0x10
	.4byte	0xae
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x2
	.byte	0x11
	.byte	0x15
	.4byte	0x36c
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0x2
	.byte	0x12
	.byte	0x5
	.4byte	0x36c
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x2
	.byte	0x13
	.byte	0x5
	.4byte	0x36c
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x2
	.byte	0x14
	.byte	0x5
	.4byte	0x36c
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0x2
	.byte	0x15
	.byte	0x5
	.4byte	0x36c
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0x2
	.byte	0x16
	.byte	0x5
	.4byte	0x36c
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0x2
	.byte	0x17
	.byte	0x5
	.4byte	0x36c
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x2
	.byte	0x18
	.byte	0x5
	.4byte	0x36c
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x2
	.byte	0x1b
	.byte	0x1a
	.4byte	0x360
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0x2
	.byte	0x1c
	.byte	0x1a
	.4byte	0x360
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0x2
	.byte	0x1d
	.byte	0x1a
	.4byte	0x360
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x2
	.byte	0x1e
	.byte	0x1a
	.4byte	0x360
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0x2
	.byte	0x1f
	.byte	0x1a
	.4byte	0x360
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x2
	.byte	0x20
	.byte	0x1a
	.4byte	0x360
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0x2
	.byte	0x21
	.byte	0x1a
	.4byte	0x360
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0x2
	.byte	0x25
	.byte	0x16
	.4byte	0x354
	.uleb128 0x1e
	.4byte	.LASF143
	.byte	0x2
	.byte	0x26
	.byte	0x16
	.4byte	0x354
	.uleb128 0x1e
	.4byte	.LASF144
	.byte	0x2
	.byte	0x27
	.byte	0x16
	.4byte	0x354
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x2
	.byte	0x2a
	.byte	0x10
	.4byte	0x45
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0x2
	.byte	0x2b
	.byte	0x10
	.4byte	0x45
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0x2
	.byte	0x2d
	.byte	0x10
	.4byte	0x45
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0x2
	.byte	0x30
	.byte	0xe
	.4byte	0x30
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0x2
	.byte	0x31
	.byte	0x10
	.4byte	0x5d
	.uleb128 0x1e
	.4byte	.LASF150
	.byte	0x2
	.byte	0x32
	.byte	0x10
	.4byte	0x5d
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0x2
	.byte	0x33
	.byte	0xe
	.4byte	0x30
	.uleb128 0x1e
	.4byte	.LASF152
	.byte	0x2
	.byte	0x34
	.byte	0xe
	.4byte	0x30
	.uleb128 0x1e
	.4byte	.LASF153
	.byte	0x2
	.byte	0x37
	.byte	0x10
	.4byte	0x5d
	.uleb128 0x1e
	.4byte	.LASF154
	.byte	0x2
	.byte	0x38
	.byte	0x10
	.4byte	0x5d
	.uleb128 0x1f
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x151
	.byte	0x7
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	leftI
	.uleb128 0x1f
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x152
	.byte	0x7
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	rightI
	.uleb128 0x20
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x155
	.byte	0x6
	.4byte	.LFB293
	.4byte	.LFE293-.LFB293
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d8
	.uleb128 0x21
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x155
	.byte	0x1d
	.4byte	0x5d
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x21
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x155
	.byte	0x2d
	.4byte	0x5d
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x22
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x155
	.byte	0x42
	.4byte	0x308
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x23
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x15e
	.byte	0xd
	.4byte	0x5d
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x23
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x15f
	.byte	0xd
	.4byte	0x5d
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x24
	.ascii	"ki\000"
	.byte	0x1
	.2byte	0x160
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x24
	.ascii	"kp\000"
	.byte	0x1
	.2byte	0x161
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x24
	.ascii	"t\000"
	.byte	0x1
	.2byte	0x162
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x23
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x163
	.byte	0x9
	.4byte	0x29
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x23
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x164
	.byte	0x9
	.4byte	0x29
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x25
	.4byte	.LVL25
	.4byte	0xe51
	.byte	0
	.uleb128 0x26
	.4byte	.LASF164
	.byte	0x1
	.byte	0x16
	.byte	0x6
	.4byte	.LFB292
	.4byte	.LFE292-.LFB292
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe41
	.uleb128 0x27
	.4byte	.LASF165
	.byte	0x1
	.byte	0x16
	.byte	0x24
	.4byte	0xae
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x28
	.4byte	.LASF166
	.byte	0x1
	.byte	0x17
	.byte	0x9
	.4byte	0x29
	.byte	0
	.uleb128 0x29
	.4byte	.LASF167
	.byte	0x1
	.byte	0x1a
	.byte	0x17
	.4byte	0xf01
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x2a
	.4byte	.LASF249
	.byte	0x1
	.byte	0x1b
	.byte	0x17
	.4byte	0xf01
	.uleb128 0x2b
	.4byte	.LASF168
	.byte	0x1
	.byte	0x1c
	.byte	0xb
	.4byte	0x30
	.byte	0x4
	.4byte	0x41700000
	.uleb128 0x29
	.4byte	.LASF169
	.byte	0x1
	.byte	0x1d
	.byte	0xd
	.4byte	0x45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x2c
	.4byte	.LASF170
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2b
	.4byte	.LASF171
	.byte	0x1
	.byte	0x22
	.byte	0xb
	.4byte	0x30
	.byte	0x4
	.4byte	0x3e32b8c2
	.uleb128 0x2b
	.4byte	.LASF172
	.byte	0x1
	.byte	0x23
	.byte	0xb
	.4byte	0x30
	.byte	0x4
	.4byte	0x3d0efa35
	.uleb128 0x2b
	.4byte	.LASF173
	.byte	0x1
	.byte	0x24
	.byte	0xb
	.4byte	0x30
	.byte	0x4
	.4byte	0x43480000
	.uleb128 0x2b
	.4byte	.LASF174
	.byte	0x1
	.byte	0x25
	.byte	0xb
	.4byte	0x30
	.byte	0x4
	.4byte	0x3f800000
	.uleb128 0x2c
	.4byte	.LASF175
	.byte	0x1
	.byte	0x26
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x2c
	.4byte	.LASF176
	.byte	0x1
	.byte	0x27
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x2c
	.4byte	.LASF177
	.byte	0x1
	.byte	0x2a
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.byte	0x2b
	.byte	0xd
	.4byte	0x5d
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x2c
	.4byte	.LASF179
	.byte	0x1
	.byte	0x2c
	.byte	0xd
	.4byte	0x5d
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x2c
	.4byte	.LASF180
	.byte	0x1
	.byte	0x2f
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0x30
	.byte	0xb
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x29
	.4byte	.LASF182
	.byte	0x1
	.byte	0x31
	.byte	0xb
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.uleb128 0x2c
	.4byte	.LASF183
	.byte	0x1
	.byte	0x32
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x2c
	.4byte	.LASF184
	.byte	0x1
	.byte	0x33
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x2c
	.4byte	.LASF185
	.byte	0x1
	.byte	0x34
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x2c
	.4byte	.LASF186
	.byte	0x1
	.byte	0x36
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x2c
	.4byte	.LASF187
	.byte	0x1
	.byte	0x37
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x2c
	.4byte	.LASF188
	.byte	0x1
	.byte	0x38
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x2c
	.4byte	.LASF189
	.byte	0x1
	.byte	0x3a
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x2c
	.4byte	.LASF190
	.byte	0x1
	.byte	0x3b
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x2c
	.4byte	.LASF191
	.byte	0x1
	.byte	0x3d
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x29
	.4byte	.LASF192
	.byte	0x1
	.byte	0x3e
	.byte	0x16
	.4byte	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -126
	.uleb128 0x29
	.4byte	.LASF193
	.byte	0x1
	.byte	0x3f
	.byte	0x16
	.4byte	0x69
	.uleb128 0x3
	.byte	0x91
	.sleb128 -128
	.uleb128 0x2c
	.4byte	.LASF194
	.byte	0x1
	.byte	0x41
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x2c
	.4byte	.LASF195
	.byte	0x1
	.byte	0x44
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x2c
	.4byte	.LASF196
	.byte	0x1
	.byte	0x45
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x2c
	.4byte	.LASF197
	.byte	0x1
	.byte	0x46
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x2c
	.4byte	.LASF198
	.byte	0x1
	.byte	0x47
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x2c
	.4byte	.LASF199
	.byte	0x1
	.byte	0x48
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x2c
	.4byte	.LASF200
	.byte	0x1
	.byte	0x49
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x2c
	.4byte	.LASF201
	.byte	0x1
	.byte	0x4a
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x2c
	.4byte	.LASF202
	.byte	0x1
	.byte	0x4b
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x2c
	.4byte	.LASF203
	.byte	0x1
	.byte	0x4c
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x2c
	.4byte	.LASF204
	.byte	0x1
	.byte	0x4e
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x2c
	.4byte	.LASF205
	.byte	0x1
	.byte	0x4f
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x2c
	.4byte	.LASF206
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x2c
	.4byte	.LASF207
	.byte	0x1
	.byte	0x51
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x28
	.4byte	.LASF208
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.4byte	0x45
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF209
	.byte	0x1
	.byte	0x53
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x2c
	.4byte	.LASF210
	.byte	0x1
	.byte	0x54
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x28
	.4byte	.LASF211
	.byte	0x1
	.byte	0x55
	.byte	0xd
	.4byte	0x45
	.byte	0x28
	.uleb128 0x28
	.4byte	.LASF212
	.byte	0x1
	.byte	0x56
	.byte	0xd
	.4byte	0x45
	.byte	0
	.uleb128 0x29
	.4byte	.LASF213
	.byte	0x1
	.byte	0x57
	.byte	0xa
	.4byte	0xe41
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x2c
	.4byte	.LASF214
	.byte	0x1
	.byte	0x58
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x2c
	.4byte	.LASF215
	.byte	0x1
	.byte	0x59
	.byte	0xb
	.4byte	0x30
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x28
	.4byte	.LASF216
	.byte	0x1
	.byte	0x5b
	.byte	0xd
	.4byte	0x45
	.byte	0
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0
	.4byte	0xe37
	.uleb128 0x29
	.4byte	.LASF217
	.byte	0x1
	.byte	0x62
	.byte	0x1a
	.4byte	0x308
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xde1
	.uleb128 0x2c
	.4byte	.LASF218
	.byte	0x1
	.byte	0xa9
	.byte	0x17
	.4byte	0x30
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x2c
	.4byte	.LASF219
	.byte	0x1
	.byte	0xaa
	.byte	0x17
	.4byte	0x30
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x2e
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xa70
	.uleb128 0x2f
	.4byte	.LASF232
	.byte	0x1
	.byte	0x7f
	.byte	0x15
	.4byte	0x29
	.4byte	0xa25
	.uleb128 0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL40
	.4byte	0xe5d
	.4byte	0xa59
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x57
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x58
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0
	.byte	0
	.uleb128 0x33
	.4byte	.LVL41
	.4byte	0xe69
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -148
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.4byte	0xaa6
	.uleb128 0x2c
	.4byte	.LASF220
	.byte	0x1
	.byte	0xac
	.byte	0x1b
	.4byte	0x30
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x2c
	.4byte	.LASF221
	.byte	0x1
	.byte	0xad
	.byte	0x1b
	.4byte	0x30
	.4byte	.LLST60
	.4byte	.LVUS60
	.byte	0
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0xb00
	.uleb128 0x2c
	.4byte	.LASF222
	.byte	0x1
	.byte	0xbc
	.byte	0x1f
	.4byte	0x30
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x48
	.4byte	0xae1
	.uleb128 0x2c
	.4byte	.LASF223
	.byte	0x1
	.byte	0xca
	.byte	0x23
	.4byte	0x30
	.4byte	.LLST47
	.4byte	.LVUS47
	.byte	0
	.uleb128 0x34
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.uleb128 0x2c
	.4byte	.LASF224
	.byte	0x1
	.byte	0xda
	.byte	0x27
	.4byte	0x30
	.4byte	.LLST48
	.4byte	.LVUS48
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0xc65
	.uleb128 0x29
	.4byte	.LASF225
	.byte	0x1
	.byte	0xee
	.byte	0x1f
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.uleb128 0x29
	.4byte	.LASF226
	.byte	0x1
	.byte	0xef
	.byte	0x1f
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.uleb128 0x2c
	.4byte	.LASF227
	.byte	0x1
	.byte	0xf2
	.byte	0x1f
	.4byte	0x30
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x29
	.4byte	.LASF228
	.byte	0x1
	.byte	0xf3
	.byte	0x1f
	.4byte	0x30
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.uleb128 0x35
	.ascii	"kp\000"
	.byte	0x1
	.byte	0xf5
	.byte	0x1f
	.4byte	0x30
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x35
	.ascii	"ki\000"
	.byte	0x1
	.byte	0xf6
	.byte	0x1f
	.4byte	0x30
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x35
	.ascii	"kd\000"
	.byte	0x1
	.byte	0xf7
	.byte	0x1f
	.4byte	0x30
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x35
	.ascii	"rp\000"
	.byte	0x1
	.byte	0xf9
	.byte	0x1f
	.4byte	0x30
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x35
	.ascii	"ri\000"
	.byte	0x1
	.byte	0xfa
	.byte	0x1f
	.4byte	0x30
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x35
	.ascii	"rd\000"
	.byte	0x1
	.byte	0xfb
	.byte	0x1f
	.4byte	0x30
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x2c
	.4byte	.LASF229
	.byte	0x1
	.byte	0xfd
	.byte	0x1f
	.4byte	0x30
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x23
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x116
	.byte	0x1f
	.4byte	0x30
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x23
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x11e
	.byte	0x1d
	.4byte	0x29
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x31
	.4byte	.LVL96
	.4byte	0xe75
	.4byte	0xc16
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -164
	.byte	0
	.uleb128 0x31
	.4byte	.LVL97
	.4byte	0xe75
	.4byte	0xc2b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -168
	.byte	0
	.uleb128 0x31
	.4byte	.LVL100
	.4byte	0xe75
	.4byte	0xc40
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -160
	.byte	0
	.uleb128 0x25
	.4byte	.LVL102
	.4byte	0xe81
	.uleb128 0x25
	.4byte	.LVL122
	.4byte	0xe81
	.uleb128 0x25
	.4byte	.LVL125
	.4byte	0xe81
	.uleb128 0x25
	.4byte	.LVL138
	.4byte	0xe81
	.byte	0
	.uleb128 0x2d
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0xce3
	.uleb128 0x2f
	.4byte	.LASF232
	.byte	0x1
	.byte	0x7f
	.byte	0x15
	.4byte	0x29
	.4byte	0xc80
	.uleb128 0x30
	.byte	0
	.uleb128 0x2e
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.4byte	0xcc1
	.uleb128 0x36
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x12d
	.byte	0x19
	.4byte	0x29
	.4byte	0xca0
	.uleb128 0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL152
	.4byte	0xe8e
	.4byte	0xcb7
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x25
	.4byte	.LVL153
	.4byte	0xe9b
	.byte	0
	.uleb128 0x25
	.4byte	.LVL147
	.4byte	0xea8
	.uleb128 0x33
	.4byte	.LVL148
	.4byte	0xe69
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.byte	0
	.uleb128 0x31
	.4byte	.LVL43
	.4byte	0xe8e
	.4byte	0xcfa
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x25
	.4byte	.LVL46
	.4byte	0xeb4
	.uleb128 0x25
	.4byte	.LVL92
	.4byte	0x4ee
	.uleb128 0x31
	.4byte	.LVL149
	.4byte	0xec1
	.4byte	0xd2b
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -113
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL160
	.4byte	0xece
	.4byte	0xd3f
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x31
	.4byte	.LVL166
	.4byte	0xec1
	.4byte	0xd5c
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.4byte	.LVL167
	.4byte	0xedb
	.4byte	0xd76
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL172
	.4byte	0xeb4
	.uleb128 0x31
	.4byte	.LVL179
	.4byte	0xee8
	.4byte	0xd9b
	.uleb128 0x32
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x37
	.byte	0
	.uleb128 0x31
	.4byte	.LVL184
	.4byte	0xe75
	.4byte	0xdb0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.byte	0
	.uleb128 0x31
	.4byte	.LVL185
	.4byte	0xe75
	.4byte	0xdc5
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -124
	.byte	0
	.uleb128 0x25
	.4byte	.LVL187
	.4byte	0xe81
	.uleb128 0x25
	.4byte	.LVL189
	.4byte	0xe81
	.uleb128 0x25
	.4byte	.LVL194
	.4byte	0xe81
	.byte	0
	.uleb128 0x31
	.4byte	.LVL156
	.4byte	0xece
	.4byte	0xdf4
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x31
	.4byte	.LVL157
	.4byte	0xef5
	.4byte	0xe09
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -156
	.byte	0
	.uleb128 0x31
	.4byte	.LVL158
	.4byte	0xec1
	.4byte	0xe26
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x33
	.4byte	.LVL159
	.4byte	0xece
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL155
	.4byte	0xea8
	.byte	0
	.uleb128 0xb
	.4byte	0xb7
	.4byte	0xe51
	.uleb128 0xc
	.4byte	0x99
	.byte	0x13
	.byte	0
	.uleb128 0x37
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x11
	.byte	0x2c
	.byte	0x6
	.uleb128 0x37
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0xb
	.byte	0x87
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x1
	.byte	0x7f
	.byte	0x15
	.uleb128 0x37
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x12
	.byte	0xe
	.byte	0x6
	.uleb128 0x38
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0x13
	.2byte	0x3c8
	.byte	0x8
	.uleb128 0x38
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0xd
	.2byte	0x1ab
	.byte	0x6
	.uleb128 0x38
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x12d
	.byte	0x19
	.uleb128 0x37
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x11
	.byte	0x2a
	.byte	0x6
	.uleb128 0x38
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x13
	.2byte	0x37f
	.byte	0x8
	.uleb128 0x38
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0xe
	.2byte	0x289
	.byte	0xc
	.uleb128 0x38
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0xe
	.2byte	0x589
	.byte	0xc
	.uleb128 0x38
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0xe
	.2byte	0x363
	.byte	0xc
	.uleb128 0x38
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0x13
	.2byte	0x1f9
	.byte	0x8
	.uleb128 0x37
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0x5
	.byte	0x36
	.byte	0xe
	.uleb128 0x39
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
	.uleb128 0x35
	.byte	0
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x21
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x4109
	.byte	0
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
	.uleb128 0x27
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x13
	.byte	0
	.uleb128 0x69
	.uleb128 0x20
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL3-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3-1
	.4byte	.LVL19
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20
	.4byte	.LFE293
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU2
	.uleb128 .LVU2
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL1
	.4byte	.LFE293
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU42
	.uleb128 .LVU47
	.uleb128 .LVU47
	.uleb128 .LVU48
	.uleb128 .LVU58
	.uleb128 .LVU67
.LLST2:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL20
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU38
	.uleb128 .LVU48
	.uleb128 .LVU58
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU67
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL20
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL23
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU16
	.uleb128 .LVU48
	.uleb128 .LVU58
	.uleb128 0
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x40000000
	.4byte	.LVL20
	.4byte	.LFE293
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x40000000
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU17
	.uleb128 .LVU48
	.uleb128 .LVU58
	.uleb128 0
.LLST5:
	.4byte	.LVL2
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL20
	.4byte	.LFE293
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU18
	.uleb128 .LVU48
	.uleb128 .LVU58
	.uleb128 0
.LLST6:
	.4byte	.LVL2
	.4byte	.LVL19
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3d23d70a
	.4byte	.LVL20
	.4byte	.LFE293
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3d23d70a
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU23
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU48
	.uleb128 .LVU58
	.uleb128 .LVU68
.LLST7:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL9
	.4byte	.LVL19
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL20
	.4byte	.LVL26
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU28
	.uleb128 .LVU42
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL33
	.4byte	.LFE292
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU79
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST10:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x3
	.byte	0x8
	.byte	0x5a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE292
	.2byte	0x3
	.byte	0x91
	.sleb128 -180
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU84
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU219
	.uleb128 .LVU220
	.uleb128 .LVU513
	.uleb128 .LVU513
	.uleb128 0
.LLST11:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x43960000
	.4byte	.LVL33
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x55
	.4byte	.LVL61
	.4byte	.LVL204
	.2byte	0x2
	.byte	0x90
	.uleb128 0x55
	.4byte	.LVL204
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU85
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU194
	.uleb128 .LVU195
	.uleb128 .LVU218
	.uleb128 .LVU220
	.uleb128 .LVU510
	.uleb128 .LVU510
	.uleb128 0
.LLST12:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x42c80000
	.4byte	.LVL33
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x90
	.uleb128 0x56
	.4byte	.LVL53
	.4byte	.LVL59
	.2byte	0x2
	.byte	0x90
	.uleb128 0x56
	.4byte	.LVL61
	.4byte	.LVL203
	.2byte	0x2
	.byte	0x90
	.uleb128 0x56
	.4byte	.LVL203
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4b
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU86
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU297
	.uleb128 .LVU301
	.uleb128 .LVU313
	.uleb128 .LVU392
	.uleb128 .LVU400
	.uleb128 .LVU404
	.uleb128 .LVU415
	.uleb128 .LVU435
	.uleb128 0
.LLST13:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL33
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	.LVL93
	.4byte	.LVL99
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	.LVL161
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU87
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU171
	.uleb128 .LVU437
	.uleb128 .LVU450
.LLST14:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	.LVL162
	.4byte	.LVL169
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU88
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU171
	.uleb128 .LVU439
	.uleb128 .LVU453
.LLST15:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL163
	.4byte	.LVL170
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU89
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU403
	.uleb128 .LVU403
	.uleb128 .LVU404
	.uleb128 .LVU404
	.uleb128 .LVU415
	.uleb128 .LVU415
	.uleb128 .LVU457
	.uleb128 .LVU457
	.uleb128 .LVU461
	.uleb128 .LVU461
	.uleb128 0
.LLST16:
	.4byte	.LVL30
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL33
	.4byte	.LVL42
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL42
	.4byte	.LVL150
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	.LVL154
	.4byte	.LVL174
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL174
	.4byte	.LVL175
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL175
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU94
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU330
	.uleb128 .LVU330
	.uleb128 .LVU349
	.uleb128 .LVU349
	.uleb128 0
.LLST17:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL33
	.4byte	.LVL113
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5b
	.4byte	.LVL113
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL120
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5b
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU95
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU150
	.uleb128 .LVU151
	.uleb128 0
.LLST18:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x90
	.uleb128 0x57
	.4byte	.LVL35
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x57
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU96
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU153
	.uleb128 .LVU154
	.uleb128 0
.LLST19:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL33
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.4byte	.LVL37
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU97
	.uleb128 .LVU148
	.uleb128 .LVU458
	.uleb128 .LVU462
.LLST20:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL174
	.4byte	.LVL177
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU98
	.uleb128 .LVU148
	.uleb128 .LVU459
	.uleb128 .LVU464
.LLST21:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL174
	.4byte	.LVL181
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU99
	.uleb128 .LVU148
	.uleb128 .LVU171
	.uleb128 .LVU297
	.uleb128 .LVU301
	.uleb128 .LVU306
	.uleb128 .LVU392
	.uleb128 .LVU400
	.uleb128 .LVU404
	.uleb128 .LVU415
	.uleb128 .LVU464
	.uleb128 .LVU470
	.uleb128 .LVU470
	.uleb128 0
.LLST22:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL42
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL181
	.4byte	.LVL183
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL183
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU100
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST23:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL33
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5c
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU101
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST24:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL33
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5d
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU102
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU163
	.uleb128 .LVU163
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU484
	.uleb128 .LVU485
	.uleb128 0
.LLST25:
	.4byte	.LVL31
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL191
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL192
	.4byte	.LFE292
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU107
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU199
	.uleb128 .LVU199
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 .LVU392
	.uleb128 .LVU392
	.uleb128 .LVU414
	.uleb128 .LVU414
	.uleb128 .LVU415
	.uleb128 .LVU415
	.uleb128 0
.LLST26:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL54
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL54
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL61
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL145
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x5a
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LFE292
	.2byte	0x1
	.byte	0x5a
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU108
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU162
	.uleb128 .LVU162
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU180
	.uleb128 .LVU180
	.uleb128 .LVU190
	.uleb128 .LVU191
	.uleb128 0
.LLST27:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL51
	.4byte	.LFE292
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU109
	.uleb128 .LVU148
	.uleb128 .LVU187
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 .LVU191
	.uleb128 .LVU191
	.uleb128 .LVU203
	.uleb128 .LVU214
	.uleb128 .LVU220
	.uleb128 .LVU301
	.uleb128 .LVU303
	.uleb128 .LVU392
	.uleb128 .LVU395
	.uleb128 .LVU404
	.uleb128 .LVU410
	.uleb128 .LVU497
	.uleb128 .LVU500
	.uleb128 .LVU500
	.uleb128 0
.LLST28:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	.LVL51
	.4byte	.LVL55
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL93
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL151
	.4byte	.LVL152-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL200
	.4byte	.LVL201
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	.LVL201
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU110
	.uleb128 .LVU148
	.uleb128 .LVU171
	.uleb128 .LVU403
	.uleb128 .LVU404
	.uleb128 .LVU415
	.uleb128 .LVU448
	.uleb128 0
.LLST29:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL42
	.4byte	.LVL150
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	.LVL168
	.4byte	.LFE292
	.2byte	0x3
	.byte	0x91
	.sleb128 -188
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU111
	.uleb128 .LVU148
	.uleb128 .LVU171
	.uleb128 .LVU297
	.uleb128 .LVU301
	.uleb128 .LVU342
	.uleb128 .LVU392
	.uleb128 .LVU400
	.uleb128 .LVU404
	.uleb128 .LVU415
	.uleb128 .LVU466
	.uleb128 0
.LLST30:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL42
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	.LVL93
	.4byte	.LVL117
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	.LVL145
	.4byte	.LVL148
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	.LVL151
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	.LVL182
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU112
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU155
	.uleb128 .LVU155
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 0
.LLST31:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL33
	.4byte	.LVL37
	.2byte	0x3
	.byte	0x91
	.sleb128 -184
	.4byte	.LVL37
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	.LVL42
	.4byte	.LFE292
	.2byte	0x3
	.byte	0x91
	.sleb128 -184
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU113
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST32:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL33
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5e
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU114
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST33:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL33
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5f
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU241
	.uleb128 .LVU243
	.uleb128 .LVU257
	.uleb128 .LVU258
	.uleb128 .LVU277
	.uleb128 .LVU278
	.uleb128 .LVU282
	.uleb128 .LVU297
.LLST34:
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL85
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL88
	.4byte	.LVL91
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU116
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU164
	.uleb128 .LVU164
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU229
	.uleb128 .LVU230
	.uleb128 .LVU252
	.uleb128 .LVU253
	.uleb128 .LVU262
	.uleb128 .LVU263
	.uleb128 0
.LLST35:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL65
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL74
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL80
	.4byte	.LFE292
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU117
	.uleb128 .LVU148
	.uleb128 .LVU413
	.uleb128 .LVU415
.LLST36:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 .LVU118
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU212
	.uleb128 .LVU213
	.uleb128 0
.LLST37:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x3a
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL56
	.2byte	0x1
	.byte	0x59
	.4byte	.LVL57
	.4byte	.LFE292
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU119
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 0
.LLST38:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x35
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LFE292
	.2byte	0x3
	.byte	0x91
	.sleb128 -176
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU120
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 0
.LLST39:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL61
	.2byte	0x3
	.byte	0x91
	.sleb128 -172
	.4byte	.LVL61
	.4byte	.LVL63
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL63
	.4byte	.LFE292
	.2byte	0x3
	.byte	0x91
	.sleb128 -172
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU122
	.uleb128 .LVU148
.LLST40:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU123
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU161
	.uleb128 .LVU161
	.uleb128 .LVU171
	.uleb128 .LVU171
	.uleb128 .LVU375
	.uleb128 .LVU375
	.uleb128 .LVU376
	.uleb128 .LVU376
	.uleb128 0
.LLST41:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL39
	.4byte	.LVL42
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL42
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x5b
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL136
	.4byte	.LFE292
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 .LVU127
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU415
	.uleb128 .LVU441
	.uleb128 0
.LLST42:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL33
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x90
	.uleb128 0x59
	.4byte	.LVL164
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x59
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU128
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU415
	.uleb128 .LVU443
	.uleb128 0
.LLST43:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL33
	.4byte	.LVL154
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5a
	.4byte	.LVL165
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x5a
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU191
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 .LVU237
	.uleb128 .LVU243
	.uleb128 .LVU270
	.uleb128 .LVU278
	.uleb128 .LVU282
	.uleb128 .LVU301
	.uleb128 .LVU308
	.uleb128 .LVU392
	.uleb128 .LVU395
	.uleb128 .LVU404
	.uleb128 .LVU410
	.uleb128 .LVU501
	.uleb128 .LVU515
	.uleb128 .LVU515
	.uleb128 0
.LLST44:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL61
	.4byte	.LVL68
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	.LVL71
	.4byte	.LVL83
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	.LVL93
	.4byte	.LVL96-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	.LVL151
	.4byte	.LVL152-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	.LVL201
	.4byte	.LVL205
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL205
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4c
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU191
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 .LVU220
	.uleb128 .LVU220
	.uleb128 .LVU232
	.uleb128 .LVU243
	.uleb128 .LVU256
	.uleb128 .LVU258
	.uleb128 .LVU273
	.uleb128 .LVU278
	.uleb128 .LVU282
	.uleb128 .LVU301
	.uleb128 .LVU308
	.uleb128 .LVU392
	.uleb128 .LVU395
	.uleb128 .LVU404
	.uleb128 .LVU410
	.uleb128 .LVU502
	.uleb128 .LVU517
	.uleb128 .LVU517
	.uleb128 0
.LLST45:
	.4byte	.LVL51
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL58
	.4byte	.LVL61
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL61
	.4byte	.LVL66
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL71
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL78
	.4byte	.LVL84
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL86
	.4byte	.LVL88
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL93
	.4byte	.LVL96-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL145
	.4byte	.LVL146
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL151
	.4byte	.LVL152-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL201
	.4byte	.LVL206
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x3f800000
	.4byte	.LVL206
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	0
	.4byte	0
.LVUS59:
	.uleb128 .LVU507
	.uleb128 .LVU518
.LLST59:
	.4byte	.LVL202
	.4byte	.LVL207
	.2byte	0x2
	.byte	0x90
	.uleb128 0x56
	.4byte	0
	.4byte	0
.LVUS60:
	.uleb128 .LVU508
	.uleb128 .LVU519
.LLST60:
	.4byte	.LVL202
	.4byte	.LVL208
	.2byte	0x2
	.byte	0x90
	.uleb128 0x55
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 .LVU203
	.uleb128 .LVU214
	.uleb128 .LVU220
	.uleb128 .LVU240
	.uleb128 .LVU243
	.uleb128 .LVU247
	.uleb128 .LVU278
	.uleb128 .LVU281
.LLST46:
	.4byte	.LVL55
	.4byte	.LVL58
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL61
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL71
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 .LVU233
	.uleb128 .LVU241
	.uleb128 .LVU241
	.uleb128 .LVU243
.LLST47:
	.4byte	.LVL67
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4d
	.4byte	.LVL70
	.4byte	.LVL71
	.2byte	0x7
	.byte	0x73
	.sleb128 0
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU268
	.uleb128 .LVU278
.LLST48:
	.4byte	.LVL82
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU311
	.uleb128 .LVU315
.LLST49:
	.4byte	.LVL98
	.4byte	.LVL100-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 .LVU316
	.uleb128 .LVU392
.LLST50:
	.4byte	.LVL100
	.4byte	.LVL145
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x42c80000
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 .LVU317
	.uleb128 .LVU392
.LLST51:
	.4byte	.LVL100
	.4byte	.LVL145
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x42a00000
	.4byte	0
	.4byte	0
.LVUS52:
	.uleb128 .LVU318
	.uleb128 .LVU392
.LLST52:
	.4byte	.LVL100
	.4byte	.LVL145
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0x43480000
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 .LVU319
	.uleb128 .LVU333
	.uleb128 .LVU333
	.uleb128 .LVU392
.LLST53:
	.4byte	.LVL100
	.4byte	.LVL114
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL114
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x90
	.uleb128 0x53
	.4byte	0
	.4byte	0
.LVUS54:
	.uleb128 .LVU320
	.uleb128 .LVU342
	.uleb128 .LVU342
	.uleb128 .LVU392
.LLST54:
	.4byte	.LVL100
	.4byte	.LVL117
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL117
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	0
	.4byte	0
.LVUS55:
	.uleb128 .LVU321
	.uleb128 .LVU353
	.uleb128 .LVU353
	.uleb128 .LVU376
	.uleb128 .LVU376
	.uleb128 .LVU380
	.uleb128 .LVU380
	.uleb128 .LVU385
	.uleb128 .LVU385
	.uleb128 .LVU388
	.uleb128 .LVU388
	.uleb128 .LVU391
	.uleb128 .LVU391
	.uleb128 .LVU392
.LLST55:
	.4byte	.LVL100
	.4byte	.LVL127
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL127
	.4byte	.LVL136
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL136
	.4byte	.LVL141
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	.LVL144
	.4byte	.LVL145
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 .LVU325
	.uleb128 .LVU327
	.uleb128 .LVU327
	.uleb128 .LVU353
	.uleb128 .LVU376
	.uleb128 .LVU388
.LLST56:
	.4byte	.LVL105
	.4byte	.LVL106
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL106
	.4byte	.LVL127
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	.LVL136
	.4byte	.LVL143
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	0
	.4byte	0
.LVUS57:
	.uleb128 .LVU356
	.uleb128 .LVU363
.LLST57:
	.4byte	.LVL128
	.4byte	.LVL131
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS58:
	.uleb128 .LVU364
	.uleb128 .LVU368
	.uleb128 .LVU368
	.uleb128 .LVU371
.LLST58:
	.4byte	.LVL132
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL133
	.4byte	.LVL134
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x14c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xf0b
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
	.4byte	0x4c8
	.ascii	"leftI\000"
	.4byte	0x4db
	.ascii	"rightI\000"
	.4byte	0x4c8
	.ascii	"leftI\000"
	.4byte	0x4db
	.ascii	"rightI\000"
	.4byte	0x4ee
	.ascii	"motorRegulator\000"
	.4byte	0x5d8
	.ascii	"vMainPoseControllerTask\000"
	.4byte	0xa13
	.ascii	"display_text_on_line\000"
	.4byte	0xc6e
	.ascii	"display_text_on_line\000"
	.4byte	0xc8d
	.ascii	"send_idle\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x257
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xf0b
	.4byte	0x3e
	.ascii	"signed char\000"
	.4byte	0x51
	.ascii	"unsigned char\000"
	.4byte	0x45
	.ascii	"uint8_t\000"
	.4byte	0x6e
	.ascii	"short int\000"
	.4byte	0x5d
	.ascii	"int16_t\000"
	.4byte	0x75
	.ascii	"short unsigned int\000"
	.4byte	0x29
	.ascii	"int\000"
	.4byte	0x7c
	.ascii	"int32_t\000"
	.4byte	0x99
	.ascii	"unsigned int\000"
	.4byte	0x8d
	.ascii	"uint32_t\000"
	.4byte	0xa0
	.ascii	"long long int\000"
	.4byte	0xa7
	.ascii	"long long unsigned int\000"
	.4byte	0xb0
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xb7
	.ascii	"char\000"
	.4byte	0xc3
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xd8
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x233
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x2a6
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2c2
	.ascii	"FILE\000"
	.4byte	0x301
	.ascii	"_Bool\000"
	.4byte	0x308
	.ascii	"encoderTicks\000"
	.4byte	0x318
	.ascii	"long unsigned int\000"
	.4byte	0x31f
	.ascii	"BaseType_t\000"
	.4byte	0x32b
	.ascii	"TickType_t\000"
	.4byte	0x30
	.ascii	"float\000"
	.4byte	0x37
	.ascii	"double\000"
	.4byte	0x337
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x354
	.ascii	"QueueHandle_t\000"
	.4byte	0x360
	.ascii	"SemaphoreHandle_t\000"
	.4byte	0x36c
	.ascii	"TaskHandle_t\000"
	.4byte	0xb
	.ascii	"sCartesian\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB293
	.4byte	.LFE293-.LFB293
	.4byte	.LFB292
	.4byte	.LFE292-.LFB292
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	0
	.4byte	0
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB11
	.4byte	.LBE11
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LFB293
	.4byte	.LFE293
	.4byte	.LFB292
	.4byte	.LFE292
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
	.file 20 "../../../drivers/defines.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x14
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x5
	.file 21 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x15
	.file 22 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x16
	.file 23 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x17
	.file 24 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0x4
	.byte	0x4
	.file 25 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x19
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x4
	.byte	0x4
	.file 26 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x1a
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.file 27 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x1b
	.byte	0x4
	.file 28 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x1c
	.file 29 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x1d
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x8
	.file 30 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x1e
	.file 31 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.file 32 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x20
	.byte	0x4
	.file 33 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x21
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.file 34 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x22
	.byte	0x4
	.file 35 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x23
	.byte	0x4
	.file 36 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x24
	.byte	0x4
	.file 37 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x25
	.byte	0x4
	.byte	0x4
	.file 38 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x26
	.file 39 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x27
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 40 "../../../../../../integration/nrfx/nrfx_glue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x28
	.file 41 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x29
	.byte	0x4
	.file 42 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2a
	.file 43 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x2b
	.byte	0x4
	.byte	0x4
	.file 44 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x2c
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x25
	.byte	0x4
	.file 45 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x2d
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb6
	.uleb128 0x2d
	.byte	0x4
	.file 46 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0xb7
	.uleb128 0x2e
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
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2c
	.byte	0x4
	.file 51 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x33
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x4
	.file 52 "../../../../../../components/libraries/util/sdk_errors.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x34
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x31
	.byte	0x4
	.byte	0x4
	.file 53 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x35
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 54 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x36
	.byte	0x4
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x34
	.byte	0x4
	.file 55 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x37
	.file 56 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x38
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 57 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x39
	.byte	0x4
	.byte	0x4
	.file 58 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x3a
	.byte	0x4
	.file 59 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x3b
	.byte	0x4
	.byte	0x4
	.file 60 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x3c
	.file 61 "../../../../../../modules/nrfx/hal/nrf_timer.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x3d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 62 "../../../../../../external/freertos/source/include/freeRTOS.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x3e
	.file 63 "../../../config/FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x3f
	.file 64 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd6
	.uleb128 0x40
	.file 65 "../../../systemView/SEGGER_SYSVIEW.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x41
	.file 66 "../../../systemView/SEGGER.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x42
	.file 67 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x43
	.byte	0x4
	.file 68 "../../../systemView/Global.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0x44
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 69 "../../../../../../external/freertos/source/include/projdefs.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x45
	.byte	0x4
	.file 70 "../../../../../../external/freertos/source/include/portable.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x46
	.file 71 "../../../../../../external/freertos/source/include/deprecated_definitions.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x47
	.byte	0x4
	.file 72 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x48
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.file 73 "../../../../../../external/freertos/source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x49
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x12
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x11
	.byte	0x4
	.file 74 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x4a
	.file 75 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x4b
	.file 76 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x4c
	.byte	0x4
	.file 77 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x4d
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xa
	.byte	0x4
	.file 78 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x4e
	.byte	0x4
	.byte	0x4
	.file 79 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x4f
	.byte	0x4
	.file 80 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x50
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0xd
	.file 81 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x51
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
	.uleb128 0xf
	.uleb128 0xe
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0xf
	.byte	0x3
	.uleb128 0x24
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.file 82 "../../../../../../external/freertos/source/include/timers.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x52
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x10
	.file 83 "../../../../../../external/freertos/source/include/list.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x53
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 84 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\software\\ControllerTask.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x54
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x2
	.file 85 "../../../../../../external/freertos/source/include/FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x55
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x10
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF231:
	.ascii	"drive\000"
.LASF166:
	.ascii	"count\000"
.LASF3:
	.ascii	"padding\000"
.LASF193:
	.ascii	"RSpeed\000"
.LASF108:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF95:
	.ascii	"__RAL_data_utf8_space\000"
.LASF72:
	.ascii	"date_time_format\000"
.LASF90:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF196:
	.ascii	"distanceStart\000"
.LASF86:
	.ascii	"__RAL_codeset_ascii\000"
.LASF44:
	.ascii	"int_curr_symbol\000"
.LASF23:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF158:
	.ascii	"rspeed\000"
.LASF53:
	.ascii	"p_cs_precedes\000"
.LASF128:
	.ascii	"handle_user_task\000"
.LASF226:
	.ascii	"thetaTurn\000"
.LASF234:
	.ascii	"vMotorMovementSwitch\000"
.LASF97:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF145:
	.ascii	"gHandshook\000"
.LASF240:
	.ascii	"sqrt\000"
.LASF241:
	.ascii	"xQueueGenericSend\000"
.LASF191:
	.ascii	"doneTurning\000"
.LASF83:
	.ascii	"long long unsigned int\000"
.LASF246:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF189:
	.ascii	"leftIntError\000"
.LASF29:
	.ascii	"data\000"
.LASF25:
	.ascii	"__locale_s\000"
.LASF100:
	.ascii	"__user_get_time_of_day\000"
.LASF107:
	.ascii	"_vectors\000"
.LASF124:
	.ascii	"QueueHandle_t\000"
.LASF103:
	.ascii	"ITM_RxBuffer\000"
.LASF70:
	.ascii	"date_format\000"
.LASF22:
	.ascii	"next\000"
.LASF160:
	.ascii	"Rspeed\000"
.LASF200:
	.ascii	"xhatStart\000"
.LASF156:
	.ascii	"rightI\000"
.LASF14:
	.ascii	"right\000"
.LASF79:
	.ascii	"int16_t\000"
.LASF82:
	.ascii	"long long int\000"
.LASF77:
	.ascii	"signed char\000"
.LASF84:
	.ascii	"__RAL_global_locale\000"
.LASF2:
	.ascii	"module_id\000"
.LASF30:
	.ascii	"codeset\000"
.LASF222:
	.ascii	"distanceTraveled\000"
.LASF39:
	.ascii	"__wctomb\000"
.LASF162:
	.ascii	"righterror\000"
.LASF37:
	.ascii	"__towupper\000"
.LASF133:
	.ascii	"sensor_tower_task\000"
.LASF51:
	.ascii	"int_frac_digits\000"
.LASF194:
	.ascii	"idleSendt\000"
.LASF242:
	.ascii	"xQueueSemaphoreTake\000"
.LASF118:
	.ascii	"encoderTicks\000"
.LASF15:
	.ascii	"long int\000"
.LASF247:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\software\\ControllerTask.c\000"
.LASF220:
	.ascii	"temp_inc\000"
.LASF9:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF151:
	.ascii	"gLeft\000"
.LASF31:
	.ascii	"__RAL_locale_data_t\000"
.LASF94:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF126:
	.ascii	"TaskHandle_t\000"
.LASF114:
	.ascii	"stdin\000"
.LASF71:
	.ascii	"time_format\000"
.LASF232:
	.ascii	"display_text_on_line\000"
.LASF8:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF205:
	.ascii	"baseUpRampActuation\000"
.LASF76:
	.ascii	"double\000"
.LASF209:
	.ascii	"starteds\000"
.LASF120:
	.ascii	"BaseType_t\000"
.LASF33:
	.ascii	"__isctype\000"
.LASF59:
	.ascii	"int_p_cs_precedes\000"
.LASF134:
	.ascii	"arq_task\000"
.LASF213:
	.ascii	"str4\000"
.LASF66:
	.ascii	"abbrev_day_names\000"
.LASF75:
	.ascii	"__wchar\000"
.LASF147:
	.ascii	"USEBLUETOOTH\000"
.LASF182:
	.ascii	"thetaDer\000"
.LASF175:
	.ascii	"speedDecreaseThreshold\000"
.LASF183:
	.ascii	"thetaDiffInt\000"
.LASF201:
	.ascii	"yhatStart\000"
.LASF69:
	.ascii	"am_pm_indicator\000"
.LASF63:
	.ascii	"int_p_sign_posn\000"
.LASF48:
	.ascii	"mon_grouping\000"
.LASF36:
	.ascii	"__iswctype\000"
.LASF58:
	.ascii	"n_sign_posn\000"
.LASF6:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF214:
	.ascii	"dLeft\000"
.LASF216:
	.ascii	"stuckValueFound\000"
.LASF19:
	.ascii	"unsigned int\000"
.LASF61:
	.ascii	"int_p_sep_by_space\000"
.LASF104:
	.ascii	"SystemCoreClock\000"
.LASF155:
	.ascii	"leftI\000"
.LASF93:
	.ascii	"__RAL_data_utf8_period\000"
.LASF43:
	.ascii	"grouping\000"
.LASF119:
	.ascii	"long unsigned int\000"
.LASF229:
	.ascii	"maxTurnBoost\000"
.LASF204:
	.ascii	"idlesendtInc\000"
.LASF149:
	.ascii	"gX_hat\000"
.LASF98:
	.ascii	"__RAL_data_empty_string\000"
.LASF165:
	.ascii	"pvParameters\000"
.LASF131:
	.ascii	"pose_controller_task\000"
.LASF26:
	.ascii	"__category\000"
.LASF143:
	.ascii	"scanStatusQ\000"
.LASF122:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF106:
	.ascii	"__StackLimit\000"
.LASF233:
	.ascii	"send_idle\000"
.LASF170:
	.ascii	"maxDriveActuation\000"
.LASF109:
	.ascii	"nrf_nvic_state_t\000"
.LASF129:
	.ascii	"handle_microsd_task\000"
.LASF144:
	.ascii	"queue_microsd\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF168:
	.ascii	"radiusEpsilon\000"
.LASF198:
	.ascii	"prevThetaDiff\000"
.LASF248:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF219:
	.ascii	"shortDistDecRatio\000"
.LASF28:
	.ascii	"name\000"
.LASF0:
	.ascii	"sCartesian\000"
.LASF65:
	.ascii	"day_names\000"
.LASF187:
	.ascii	"ydiff\000"
.LASF17:
	.ascii	"__cr_flag\000"
.LASF52:
	.ascii	"frac_digits\000"
.LASF235:
	.ascii	"sprintf\000"
.LASF112:
	.ascii	"timeval\000"
.LASF211:
	.ascii	"initIncrement\000"
.LASF115:
	.ascii	"stdout\000"
.LASF225:
	.ascii	"thetaTurned\000"
.LASF54:
	.ascii	"p_sep_by_space\000"
.LASF236:
	.ascii	"vFunc_Inf2pi\000"
.LASF132:
	.ascii	"communication_task\000"
.LASF27:
	.ascii	"__RAL_locale_t\000"
.LASF249:
	.ascii	"Error\000"
.LASF172:
	.ascii	"driveThreshold\000"
.LASF137:
	.ascii	"xTickMutex\000"
.LASF34:
	.ascii	"__toupper\000"
.LASF184:
	.ascii	"xTargt\000"
.LASF10:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF223:
	.ascii	"minUpDrive\000"
.LASF88:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF45:
	.ascii	"currency_symbol\000"
.LASF217:
	.ascii	"ticks\000"
.LASF138:
	.ascii	"xControllerBSem\000"
.LASF243:
	.ascii	"xQueueReceive\000"
.LASF21:
	.ascii	"decode\000"
.LASF121:
	.ascii	"TickType_t\000"
.LASF177:
	.ascii	"thetahat\000"
.LASF40:
	.ascii	"__mbtowc\000"
.LASF110:
	.ascii	"nrf_nvic_state\000"
.LASF57:
	.ascii	"p_sign_posn\000"
.LASF85:
	.ascii	"__RAL_c_locale\000"
.LASF230:
	.ascii	"drivef\000"
.LASF35:
	.ascii	"__tolower\000"
.LASF136:
	.ascii	"xPoseMutex\000"
.LASF99:
	.ascii	"__user_set_time_of_day\000"
.LASF60:
	.ascii	"int_n_cs_precedes\000"
.LASF152:
	.ascii	"gRight\000"
.LASF87:
	.ascii	"__RAL_codeset_utf8\000"
.LASF195:
	.ascii	"controllerStop\000"
.LASF38:
	.ascii	"__towlower\000"
.LASF46:
	.ascii	"mon_decimal_point\000"
.LASF74:
	.ascii	"__state\000"
.LASF185:
	.ascii	"yTargt\000"
.LASF68:
	.ascii	"abbrev_month_names\000"
.LASF105:
	.ascii	"__StackTop\000"
.LASF135:
	.ascii	"xScanLock\000"
.LASF117:
	.ascii	"_Bool\000"
.LASF81:
	.ascii	"int32_t\000"
.LASF12:
	.ascii	"unsigned char\000"
.LASF179:
	.ascii	"yhat\000"
.LASF89:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF239:
	.ascii	"motor_brake\000"
.LASF163:
	.ascii	"motorRegulator\000"
.LASF11:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF80:
	.ascii	"short int\000"
.LASF16:
	.ascii	"__irq_masks\000"
.LASF192:
	.ascii	"LSpeed\000"
.LASF102:
	.ascii	"__RAL_error_decoder_head\000"
.LASF238:
	.ascii	"nrf_log_frontend_std_0\000"
.LASF148:
	.ascii	"gTheta_hat\000"
.LASF227:
	.ascii	"thetaMid\000"
.LASF73:
	.ascii	"__mbstate_s\000"
.LASF174:
	.ascii	"driveKi\000"
.LASF111:
	.ascii	"FILE\000"
.LASF167:
	.ascii	"Setpoint\000"
.LASF202:
	.ascii	"currentDriveActuation\000"
.LASF164:
	.ascii	"vMainPoseControllerTask\000"
.LASF173:
	.ascii	"driveKp\000"
.LASF157:
	.ascii	"lspeed\000"
.LASF153:
	.ascii	"gRightWheelTicks\000"
.LASF49:
	.ascii	"positive_sign\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF146:
	.ascii	"gPaused\000"
.LASF212:
	.ascii	"bStuck\000"
.LASF210:
	.ascii	"newOrder\000"
.LASF178:
	.ascii	"xhat\000"
.LASF125:
	.ascii	"SemaphoreHandle_t\000"
.LASF24:
	.ascii	"char\000"
.LASF142:
	.ascii	"poseControllerQ\000"
.LASF47:
	.ascii	"mon_thousands_sep\000"
.LASF180:
	.ascii	"distance\000"
.LASF244:
	.ascii	"atan2\000"
.LASF123:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF159:
	.ascii	"Lspeed\000"
.LASF141:
	.ascii	"xCollisionMutex\000"
.LASF186:
	.ascii	"xdiff\000"
.LASF188:
	.ascii	"thetaTargt\000"
.LASF50:
	.ascii	"negative_sign\000"
.LASF32:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF218:
	.ascii	"shortDistIncRatio\000"
.LASF237:
	.ascii	"fabs\000"
.LASF154:
	.ascii	"gLeftWheelTicks\000"
.LASF42:
	.ascii	"thousands_sep\000"
.LASF64:
	.ascii	"int_n_sign_posn\000"
.LASF130:
	.ascii	"pose_estimator_task\000"
.LASF203:
	.ascii	"stuckIncrement\000"
.LASF116:
	.ascii	"stderr\000"
.LASF67:
	.ascii	"month_names\000"
.LASF91:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF127:
	.ascii	"handle_display_task\000"
.LASF206:
	.ascii	"baseDownRampActuation\000"
.LASF161:
	.ascii	"lefterror\000"
.LASF20:
	.ascii	"__RAL_error_decoder_s\000"
.LASF101:
	.ascii	"__RAL_error_decoder_t\000"
.LASF55:
	.ascii	"n_cs_precedes\000"
.LASF78:
	.ascii	"uint8_t\000"
.LASF199:
	.ascii	"thetahatStart\000"
.LASF228:
	.ascii	"thetaPastMid\000"
.LASF1:
	.ascii	"float\000"
.LASF221:
	.ascii	"temp_dec\000"
.LASF7:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF215:
	.ascii	"dRight\000"
.LASF181:
	.ascii	"thetaDiff\000"
.LASF169:
	.ascii	"lastMovement\000"
.LASF139:
	.ascii	"xCommandReadyBSem\000"
.LASF140:
	.ascii	"mutex_spi\000"
.LASF62:
	.ascii	"int_n_sep_by_space\000"
.LASF56:
	.ascii	"n_sep_by_space\000"
.LASF113:
	.ascii	"__RAL_FILE\000"
.LASF207:
	.ascii	"bBaseUpRampActFound\000"
.LASF197:
	.ascii	"prevDist\000"
.LASF96:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF92:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF224:
	.ascii	"minDownDrive\000"
.LASF171:
	.ascii	"rotateThreshold\000"
.LASF13:
	.ascii	"left\000"
.LASF245:
	.ascii	"encoder_get_ticks\000"
.LASF176:
	.ascii	"speedIncreaseThreshold\000"
.LASF190:
	.ascii	"rightIntError\000"
.LASF41:
	.ascii	"decimal_point\000"
.LASF150:
	.ascii	"gY_hat\000"
.LASF208:
	.ascii	"bBaseDownRampActFound\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
