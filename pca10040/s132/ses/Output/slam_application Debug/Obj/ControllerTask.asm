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
	.section	.text.getThetaTarget,"ax",%progbits
	.align	1
	.global	getThetaTarget
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getThetaTarget, %function
getThetaTarget:
.LFB293:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\software\\ControllerTask.c"
	.loc 1 247 23 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 248 2 view .LVU1
	.loc 1 249 1 is_stmt 0 view .LVU2
	ldr	r3, .L2
	vldr.32	s0, [r3]
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0
.LFE293:
	.size	getThetaTarget, .-getThetaTarget
	.section	.text.runDistanceController,"ax",%progbits
	.align	1
	.global	runDistanceController
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	runDistanceController, %function
runDistanceController:
.LVL0:
.LFB294:
	.loc 1 255 78 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 255 78 is_stmt 0 view .LVU4
	push	{r3, lr}
.LCFI0:
	.loc 1 257 2 is_stmt 1 view .LVU5
.LVL1:
	.loc 1 258 2 view .LVU6
	.loc 1 259 2 view .LVU7
	.loc 1 261 2 view .LVU8
	.loc 1 261 8 is_stmt 0 view .LVU9
	vldr.32	s15, .L11
	vmul.f32	s0, s0, s15
.LVL2:
	.loc 1 264 2 is_stmt 1 view .LVU10
	.loc 1 264 16 is_stmt 0 view .LVU11
	ldr	r3, .L11+4
	vldr.32	s14, [r3]
	vadd.f32	s14, s1, s14
	vstr.32	s14, [r3]
	.loc 1 266 2 is_stmt 1 view .LVU12
.LVL3:
	.loc 1 267 2 view .LVU13
	.loc 1 271 2 view .LVU14
	.loc 1 271 14 is_stmt 0 view .LVU15
	ldr	r3, .L11+8
	vldr.32	s15, [r3]
	.loc 1 271 4 view .LVU16
	vcmpe.f32	s15, s0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L5
	.loc 1 274 8 is_stmt 1 view .LVU17
	.loc 1 274 20 is_stmt 0 view .LVU18
	ldr	r3, .L11+12
	vldr.32	s15, [r3]
	.loc 1 274 10 view .LVU19
	vcmpe.f32	s15, s0
	vmrs	APSR_nzcv, FPSCR
	ble	.L9
	.loc 1 274 39 discriminator 1 view .LVU20
	ldr	r3, .L11+16
	vldr.32	s13, [r3]
	.loc 1 274 27 discriminator 1 view .LVU21
	vcmpe.f32	s13, s0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L5
	.loc 1 261 8 view .LVU22
	vmov.f32	s15, s0
	b	.L5
.L9:
	.loc 1 261 8 view .LVU23
	vmov.f32	s15, s0
.L5:
.LVL4:
	.loc 1 281 2 is_stmt 1 view .LVU24
	.loc 1 286 2 view .LVU25
	.loc 1 286 19 is_stmt 0 view .LVU26
	vldr.32	s13, .L11+20
	vmul.f32	s1, s1, s13
.LVL5:
	.loc 1 286 38 view .LVU27
	vmov.f32	s13, #5.0e+0
	vmul.f32	s14, s14, s13
	.loc 1 286 8 view .LVU28
	vadd.f32	s1, s1, s14
.LVL6:
	.loc 1 288 2 is_stmt 1 view .LVU29
	.loc 1 288 31 is_stmt 0 view .LVU30
	vsub.f32	s14, s15, s1
.LVL7:
	.loc 1 289 2 is_stmt 1 view .LVU31
	.loc 1 289 32 is_stmt 0 view .LVU32
	vadd.f32	s1, s15, s1
.LVL8:
	.loc 1 294 2 is_stmt 1 view .LVU33
	vcvt.s32.f32	s15, s1
.LVL9:
	.loc 1 294 2 is_stmt 0 view .LVU34
	vmov	r1, s15	@ int
	vcvt.s32.f32	s15, s14
.LVL10:
	.loc 1 294 2 view .LVU35
	vmov	r0, s15	@ int
	bl	vMotorMovementSwitch
.LVL11:
	.loc 1 296 1 view .LVU36
	pop	{r3, pc}
.L12:
	.align	2
.L11:
	.word	1022739087
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LANCHOR3
	.word	.LANCHOR4
	.word	1114636288
.LFE294:
	.size	runDistanceController, .-runDistanceController
	.global	__aeabi_f2d
	.global	__aeabi_dcmpgt
	.global	__aeabi_ddiv
	.global	__aeabi_dmul
	.global	__aeabi_d2f
	.global	__aeabi_dcmplt
	.section	.text.runThetaController,"ax",%progbits
	.align	1
	.global	runThetaController
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	runThetaController, %function
runThetaController:
.LVL12:
.LFB295:
	.loc 1 302 41 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 302 41 is_stmt 0 view .LVU38
	push	{r3, r4, r5, lr}
.LCFI1:
	vpush.64	{d8, d9}
.LCFI2:
	.loc 1 303 2 is_stmt 1 view .LVU39
	.loc 1 303 5 is_stmt 0 view .LVU40
	ldr	r3, .L25
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 303 4 view .LVU41
	cbz	r3, .L14
	.loc 1 304 3 is_stmt 1 view .LVU42
	.loc 1 304 17 is_stmt 0 view .LVU43
	ldr	r3, .L25+4
	vldr.32	s15, [r3]
	vadd.f32	s15, s15, s0
	vstr.32	s15, [r3]
.L14:
	.loc 1 306 2 is_stmt 1 view .LVU44
.LVL13:
	.loc 1 307 2 view .LVU45
	.loc 1 308 2 view .LVU46
	.loc 1 309 2 view .LVU47
	.loc 1 309 15 is_stmt 0 view .LVU48
	vmov.f32	s16, #3.0e+1
	vmul.f32	s0, s0, s16
.LVL14:
	.loc 1 309 30 view .LVU49
	ldr	r3, .L25+4
	vldr.32	s16, [r3]
	vldr.32	s15, .L25+8
	vmul.f32	s16, s16, s15
	.loc 1 309 26 view .LVU50
	vadd.f32	s0, s0, s16
	.loc 1 309 49 view .LVU51
	ldr	r3, .L25+12
	vldr.32	s16, [r3]
	vadd.f32	s16, s16, s16
	.loc 1 309 8 view .LVU52
	vadd.f32	s16, s0, s16
.LVL15:
	.loc 1 311 2 is_stmt 1 view .LVU53
	.loc 1 311 5 is_stmt 0 view .LVU54
	vmov	r0, s16
	bl	__aeabi_f2d
.LVL16:
	vmov	d9, r0, r1
	vmov	d0, r0, r1
	bl	fabs
.LVL17:
	vmov	r4, r5, d0
	.loc 1 311 13 view .LVU55
	ldr	r3, .L25+16
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
.LVL18:
	mov	r2, r0
	mov	r3, r1
	.loc 1 311 4 view .LVU56
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmpgt
.LVL19:
	cbz	r0, .L23
	.loc 1 312 3 is_stmt 1 view .LVU57
	.loc 1 312 18 is_stmt 0 view .LVU58
	vmov.f32	s0, s18
	vmov.f32	s1, s19
	bl	fabs
.LVL20:
	vmov	r2, r3, d0
	.loc 1 312 17 view .LVU59
	vmov	r0, r1, d9
	bl	__aeabi_ddiv
.LVL21:
	mov	r4, r0
	mov	r5, r1
	.loc 1 312 26 view .LVU60
	ldr	r3, .L25+16
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
.LVL22:
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
.LVL23:
	.loc 1 312 5 view .LVU61
	bl	__aeabi_d2f
.LVL24:
	vmov	s16, r0
.LVL25:
	.loc 1 313 3 is_stmt 1 view .LVU62
	.loc 1 313 18 is_stmt 0 view .LVU63
	ldr	r3, .L25
	movs	r2, #0
	strb	r2, [r3]
.LVL26:
.L17:
	.loc 1 321 2 is_stmt 1 view .LVU64
	.loc 1 323 2 view .LVU65
	.loc 1 323 23 is_stmt 0 view .LVU66
	vneg.f32	s15, s16
.LVL27:
	.loc 1 324 2 is_stmt 1 view .LVU67
	.loc 1 326 2 view .LVU68
	vcvt.s32.f32	s14, s16
.LVL28:
	.loc 1 326 2 is_stmt 0 view .LVU69
	vmov	r1, s14	@ int
	vcvt.s32.f32	s15, s15
.LVL29:
	.loc 1 326 2 view .LVU70
	vmov	r0, s15	@ int
	bl	vMotorMovementSwitch
.LVL30:
	.loc 1 328 1 view .LVU71
	vldm	sp!, {d8-d9}
.LCFI3:
.LVL31:
	.loc 1 328 1 view .LVU72
	pop	{r3, r4, r5, pc}
.LVL32:
.L23:
.LCFI4:
	.loc 1 315 8 is_stmt 1 view .LVU73
	.loc 1 315 11 is_stmt 0 view .LVU74
	vmov.f32	s0, s18
	vmov.f32	s1, s19
	bl	fabs
.LVL33:
	vmov	r4, r5, d0
	.loc 1 315 19 view .LVU75
	ldr	r3, .L25+20
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
.LVL34:
	mov	r2, r0
	mov	r3, r1
	.loc 1 315 10 view .LVU76
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmplt
.LVL35:
	cmp	r0, #0
	beq	.L17
	.loc 1 315 29 discriminator 1 view .LVU77
	vmov.f32	s0, s18
	vmov.f32	s1, s19
	bl	fabs
.LVL36:
	vmov	r4, r5, d0
	.loc 1 315 37 discriminator 1 view .LVU78
	ldr	r3, .L25+24
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
.LVL37:
	mov	r2, r0
	mov	r3, r1
	.loc 1 315 26 discriminator 1 view .LVU79
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmpgt
.LVL38:
	cmp	r0, #0
	beq	.L17
	.loc 1 316 3 is_stmt 1 view .LVU80
	.loc 1 316 18 is_stmt 0 view .LVU81
	vmov.f32	s0, s18
	vmov.f32	s1, s19
	bl	fabs
.LVL39:
	vmov	r2, r3, d0
	.loc 1 316 17 view .LVU82
	vmov	r0, r1, d9
	bl	__aeabi_ddiv
.LVL40:
	mov	r4, r0
	mov	r5, r1
	.loc 1 316 26 view .LVU83
	ldr	r3, .L25+20
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
.LVL41:
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dmul
.LVL42:
	.loc 1 316 5 view .LVU84
	bl	__aeabi_d2f
.LVL43:
	vmov	s16, r0
.LVL44:
	.loc 1 317 3 is_stmt 1 view .LVU85
	.loc 1 317 18 is_stmt 0 view .LVU86
	ldr	r3, .L25
	movs	r2, #1
	strb	r2, [r3]
	b	.L17
.L26:
	.align	2
.L25:
	.word	.LANCHOR5
	.word	.LANCHOR6
	.word	0
	.word	.LANCHOR7
	.word	.LANCHOR2
	.word	.LANCHOR3
	.word	.LANCHOR4
.LFE295:
	.size	runThetaController, .-runThetaController
	.section	.rodata.vMainPoseControllerTask.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Tx:%i Ty:%i\000"
	.align	2
.LC1:
	.ascii	"controller sending idle\000"
	.align	2
.LC2:
	.ascii	"Reached target\000"
	.section	.text.vMainPoseControllerTask,"ax",%progbits
	.align	1
	.global	vMainPoseControllerTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vMainPoseControllerTask, %function
vMainPoseControllerTask:
.LVL45:
.LFB292:
	.loc 1 50 50 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 50 50 is_stmt 0 view .LVU88
	push	{r4, r5, r6, r7, lr}
.LCFI5:
	vpush.64	{d8, d9, d10, d11, d12}
.LCFI6:
	sub	sp, sp, #52
.LCFI7:
	.loc 1 51 5 is_stmt 1 view .LVU89
.LVL46:
	.loc 1 54 5 view .LVU90
	.loc 1 54 23 is_stmt 0 view .LVU91
	vldr.32	s19, .L57+8
	vstr.32	s19, [sp, #40]
	vstr.32	s19, [sp, #44]
	.loc 1 55 5 is_stmt 1 view .LVU92
.LVL47:
	.loc 1 56 5 view .LVU93
	.loc 1 56 13 is_stmt 0 view .LVU94
	movs	r6, #0
	strb	r6, [sp, #39]
	.loc 1 58 5 is_stmt 1 view .LVU95
.LVL48:
	.loc 1 61 5 view .LVU96
	.loc 1 62 5 view .LVU97
	.loc 1 65 5 view .LVU98
	.loc 1 66 5 view .LVU99
	.loc 1 67 5 view .LVU100
	.loc 1 70 5 view .LVU101
	.loc 1 71 5 view .LVU102
	.loc 1 71 11 is_stmt 0 view .LVU103
	vstr.32	s19, [sp, #32]
	.loc 1 72 2 is_stmt 1 view .LVU104
.LVL49:
	.loc 1 73 5 view .LVU105
	.loc 1 76 5 view .LVU106
	.loc 1 77 5 view .LVU107
	.loc 1 80 5 view .LVU108
	.loc 1 81 2 view .LVU109
	.loc 1 82 5 view .LVU110
	.loc 1 85 5 view .LVU111
	.loc 1 86 5 view .LVU112
	.loc 1 87 5 view .LVU113
	.loc 1 88 5 view .LVU114
	.loc 1 89 5 view .LVU115
	.loc 1 90 5 view .LVU116
	.loc 1 91 5 view .LVU117
	.loc 1 93 5 view .LVU118
	.loc 1 94 1 view .LVU119
	.loc 1 96 5 view .LVU120
	.loc 1 97 5 view .LVU121
	.loc 1 98 5 view .LVU122
	.loc 1 100 2 view .LVU123
	.loc 1 100 29 is_stmt 0 view .LVU124
	bl	xTaskGetTickCount
.LVL50:
	.loc 1 91 11 view .LVU125
	vmov.f32	s23, s19
	.loc 1 90 11 view .LVU126
	vmov.f32	s22, s19
	.loc 1 85 13 view .LVU127
	mov	r5, r6
	.loc 1 82 13 view .LVU128
	mov	r7, r6
	.loc 1 77 11 view .LVU129
	vmov.f32	s21, s19
	.loc 1 76 11 view .LVU130
	vmov.f32	s20, s19
	b	.L28
.LVL51:
.L55:
.LBB2:
.LBB3:
	.loc 1 139 21 is_stmt 1 view .LVU131
	.loc 1 139 28 is_stmt 0 view .LVU132
	vmov.f32	s15, #1.0e+1
	vldr.32	s20, [sp, #40]
.LVL52:
	.loc 1 139 28 view .LVU133
	vmul.f32	s20, s20, s15
.LVL53:
	.loc 1 140 21 is_stmt 1 view .LVU134
	.loc 1 140 45 is_stmt 0 view .LVU135
	vldr.32	s21, [sp, #44]
.LVL54:
	.loc 1 140 28 view .LVU136
	vmul.f32	s21, s21, s15
.LVL55:
	.loc 1 141 21 is_stmt 1 view .LVU137
	.loc 1 142 21 view .LVU138
	.loc 1 142 31 is_stmt 0 view .LVU139
	vcvt.f32.s32	s22, s17
.LVL56:
	.loc 1 143 21 is_stmt 1 view .LVU140
	.loc 1 143 31 is_stmt 0 view .LVU141
	vcvt.f32.s32	s23, s16
.LVL57:
	.loc 1 144 21 is_stmt 1 view .LVU142
	.loc 1 145 21 view .LVU143
	.loc 1 146 21 view .LVU144
	.loc 1 147 21 view .LVU145
	.loc 1 149 21 view .LVU146
	vcvt.s32.f32	s15, s21
	vmov	r3, s15	@ int
	vcvt.s32.f32	s15, s20
	vmov	r2, s15	@ int
	ldr	r1, .L57+12
	add	r0, sp, #12
	bl	sprintf
.LVL58:
	.loc 1 150 21 view .LVU147
	add	r1, sp, #12
	movs	r0, #4
	bl	display_text_on_line
.LVL59:
	.loc 1 145 36 is_stmt 0 view .LVU148
	movs	r5, #0
	.loc 1 146 33 view .LVU149
	mov	r6, r5
	b	.L31
.LVL60:
.L56:
	.loc 1 146 33 view .LVU150
.LBE3:
	.loc 1 175 6 is_stmt 1 view .LVU151
	.loc 1 175 26 is_stmt 0 view .LVU152
	bl	checkForCollision
.LVL61:
	.loc 1 175 26 view .LVU153
	b	.L32
.LVL62:
.L37:
	.loc 1 208 7 is_stmt 1 view .LVU154
	vldr.32	s0, [sp, #32]
	bl	runThetaController
.LVL63:
	.loc 1 210 7 view .LVU155
	.loc 1 210 33 is_stmt 0 view .LVU156
	vldr.32	s15, [sp, #32]
	.loc 1 210 20 view .LVU157
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L53
	movs	r3, #4
.L38:
	.loc 1 210 20 discriminator 4 view .LVU158
	strb	r3, [sp, #39]
	.loc 1 211 7 is_stmt 1 discriminator 4 view .LVU159
	movs	r3, #0
	mov	r2, r3
	add	r1, sp, #39
	ldr	r0, .L57+16
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL64:
	.loc 1 213 7 discriminator 4 view .LVU160
	.loc 1 213 10 is_stmt 0 discriminator 4 view .LVU161
	ldr	r0, [sp, #32]	@ float
	bl	__aeabi_f2d
.LVL65:
	vmov	d0, r0, r1
	bl	fabs
.LVL66:
	vmov	r0, r1, d0
	.loc 1 213 9 discriminator 4 view .LVU162
	adr	r3, .L57
	ldrd	r2, [r3]
	bl	__aeabi_dcmplt
.LVL67:
	cbz	r0, .L51
	.loc 1 214 8 is_stmt 1 view .LVU163
	.loc 1 214 24 is_stmt 0 view .LVU164
	ldr	r2, .L57+20
	ldrb	r3, [r2]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r2]
	.loc 1 215 8 is_stmt 1 view .LVU165
	.loc 1 215 10 is_stmt 0 view .LVU166
	cmp	r3, #20
	bls	.L46
	.loc 1 216 9 is_stmt 1 view .LVU167
	.loc 1 216 23 is_stmt 0 view .LVU168
	ldr	r3, .L57+24
	movs	r2, #0
	str	r2, [r3]	@ float
	.loc 1 217 9 is_stmt 1 view .LVU169
.LVL68:
	.loc 1 194 31 is_stmt 0 view .LVU170
	mov	r7, r6
	.loc 1 217 21 view .LVU171
	movs	r6, #1
	b	.L28
.LVL69:
.L53:
	.loc 1 210 20 view .LVU172
	movs	r3, #3
	b	.L38
.LVL70:
.L35:
.LBB4:
	.loc 1 224 21 is_stmt 1 view .LVU173
	.loc 1 224 24 is_stmt 0 view .LVU174
	cbz	r7, .L54
.LVL71:
.L41:
	.loc 1 230 21 is_stmt 1 view .LVU175
	bl	motor_brake
.LVL72:
	.loc 1 231 21 view .LVU176
	.loc 1 231 34 is_stmt 0 view .LVU177
	movs	r2, #0
	strb	r2, [sp, #39]
	.loc 1 232 6 is_stmt 1 view .LVU178
	mov	r3, r2
	add	r1, sp, #39
	ldr	r0, .L57+16
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL73:
	.loc 1 233 6 view .LVU179
	ldr	r1, .L57+28
	movs	r0, #4
	bl	display_text_on_line
.LVL74:
	b	.L28
.L54:
.LBB5:
	.loc 1 225 25 discriminator 3 view .LVU180
	.loc 1 225 98 discriminator 3 view .LVU181
	.loc 1 225 153 discriminator 3 view .LVU182
	.loc 1 225 234 is_stmt 0 discriminator 3 view .LVU183
	ldr	r3, .L57+32
	ldrh	r0, [r3]
	.loc 1 225 245 discriminator 3 view .LVU184
	lsls	r0, r0, #16
	.loc 1 225 153 discriminator 3 view .LVU185
	ldr	r1, .L57+36
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL75:
	.loc 1 225 284 is_stmt 1 discriminator 3 view .LVU186
	.loc 1 226 25 discriminator 3 view .LVU187
	bl	send_idle
.LVL76:
	.loc 1 227 25 discriminator 3 view .LVU188
	.loc 1 227 35 is_stmt 0 discriminator 3 view .LVU189
	movs	r7, #1
	b	.L41
.LVL77:
.L51:
	.loc 1 227 35 discriminator 3 view .LVU190
.LBE5:
.LBE4:
	.loc 1 194 31 view .LVU191
	mov	r7, r6
	b	.L28
.L46:
	mov	r7, r6
.LVL78:
	.loc 1 194 31 view .LVU192
	b	.L28
.L58:
	.align	3
.L57:
	.word	-1610612736
	.word	1067573062
	.word	0
	.word	.LC0
	.word	scanStatusQ
	.word	.LANCHOR12
	.word	.LANCHOR6
	.word	.LC2
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC1
.LVL79:
.L29:
	.loc 1 194 31 view .LVU193
.LBE2:
	.loc 1 242 13 is_stmt 1 view .LVU194
	bl	motor_brake
.LVL80:
.L28:
	.loc 1 102 5 view .LVU195
	.loc 1 114 9 view .LVU196
	.loc 1 114 13 is_stmt 0 view .LVU197
	ldr	r3, .L59
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 114 12 view .LVU198
	cmp	r3, #0
	beq	.L29
.LBB6:
	.loc 1 115 4 is_stmt 1 view .LVU199
	.loc 1 115 19 is_stmt 0 view .LVU200
	ldr	r2, .L59+4
	ldr	r3, [r2]
	adds	r3, r3, #1
	str	r3, [r2]
	.loc 1 117 4 is_stmt 1 view .LVU201
	ldr	r4, .L59+8
	movs	r1, #1
	ldr	r0, [r4]
	bl	xQueueSemaphoreTake
.LVL81:
	.loc 1 119 4 view .LVU202
	.loc 1 119 25 is_stmt 0 view .LVU203
	add	r0, sp, #4
	bl	encoder_get_ticks
.LVL82:
	.loc 1 120 4 is_stmt 1 view .LVU204
	.loc 1 120 20 is_stmt 0 view .LVU205
	ldr	r2, [sp, #4]
	ldr	r3, .L59+12
	strh	r2, [r3]	@ movhi
	.loc 1 121 4 is_stmt 1 view .LVU206
	.loc 1 121 21 is_stmt 0 view .LVU207
	ldr	r2, [sp, #8]
	ldr	r3, .L59+16
	strh	r2, [r3]	@ movhi
	.loc 1 122 4 is_stmt 1 view .LVU208
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, [r4]
	bl	xQueueGenericSend
.LVL83:
	.loc 1 124 13 view .LVU209
	.loc 1 124 17 is_stmt 0 view .LVU210
	mov	r1, #-1
	ldr	r3, .L59+20
	ldr	r0, [r3]
	bl	xQueueSemaphoreTake
.LVL84:
	.loc 1 124 16 view .LVU211
	cmp	r0, #1
	bne	.L28
	.loc 1 126 5 is_stmt 1 view .LVU212
	.loc 1 126 22 is_stmt 0 view .LVU213
	ldr	r3, .L59+24
	vstr.32	s19, [r3]
	.loc 1 128 17 is_stmt 1 view .LVU214
	ldr	r4, .L59+28
	mov	r1, #-1
	ldr	r0, [r4]
	bl	xQueueSemaphoreTake
.LVL85:
	.loc 1 129 17 view .LVU215
	.loc 1 129 26 is_stmt 0 view .LVU216
	ldr	r3, .L59+32
	vldr.32	s19, [r3]
.LVL86:
	.loc 1 130 17 is_stmt 1 view .LVU217
	.loc 1 130 22 is_stmt 0 view .LVU218
	ldr	r3, .L59+36
	ldrsh	r3, [r3]
	vmov	s17, r3	@ int
.LVL87:
	.loc 1 131 17 is_stmt 1 view .LVU219
	.loc 1 131 22 is_stmt 0 view .LVU220
	ldr	r3, .L59+40
	ldrsh	r3, [r3]
	vmov	s16, r3	@ int
.LVL88:
	.loc 1 132 17 is_stmt 1 view .LVU221
	.loc 1 133 17 view .LVU222
	.loc 1 134 17 view .LVU223
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, [r4]
	bl	xQueueGenericSend
.LVL89:
	.loc 1 137 17 view .LVU224
	.loc 1 137 21 is_stmt 0 view .LVU225
	movs	r2, #0
	add	r1, sp, #40
	ldr	r3, .L59+44
	ldr	r0, [r3]
	bl	xQueueReceive
.LVL90:
	.loc 1 137 20 view .LVU226
	cmp	r0, #1
	beq	.L55
.LVL91:
.L31:
	.loc 1 153 17 is_stmt 1 view .LVU227
	.loc 1 154 5 view .LVU228
	.loc 1 154 44 is_stmt 0 view .LVU229
	vsub.f32	s15, s20, s22
	.loc 1 154 57 view .LVU230
	vmul.f32	s14, s15, s15
	.loc 1 154 90 view .LVU231
	vsub.f32	s15, s21, s23
	.loc 1 154 103 view .LVU232
	vmul.f32	s15, s15, s15
	.loc 1 154 31 view .LVU233
	vadd.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL92:
	vmov	d0, r0, r1
	bl	sqrt
.LVL93:
	vmov	r0, r1, d0
	.loc 1 154 24 view .LVU234
	bl	__aeabi_d2f
.LVL94:
	.loc 1 154 22 view .LVU235
	ldr	r3, .L59+48
	str	r0, [r3]	@ float
	.loc 1 155 17 is_stmt 1 view .LVU236
	.loc 1 155 53 is_stmt 0 view .LVU237
	vcvt.f32.s32	s17, s17
.LVL95:
	.loc 1 155 53 view .LVU238
	vsub.f32	s25, s20, s17
	.loc 1 155 61 view .LVU239
	vmul.f32	s14, s25, s25
	.loc 1 155 89 view .LVU240
	vcvt.f32.s32	s16, s16
.LVL96:
	.loc 1 155 89 view .LVU241
	vsub.f32	s24, s21, s16
	.loc 1 155 97 view .LVU242
	vmul.f32	s15, s24, s24
	.loc 1 155 40 view .LVU243
	vadd.f32	s15, s14, s15
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL97:
	vmov	d0, r0, r1
	bl	sqrt
.LVL98:
	vmov	r0, r1, d0
	.loc 1 155 31 view .LVU244
	bl	__aeabi_d2f
.LVL99:
	vmov	s18, r0
.LVL100:
	.loc 1 156 5 is_stmt 1 view .LVU245
	.loc 1 156 40 is_stmt 0 view .LVU246
	vsub.f32	s17, s17, s22
	.loc 1 156 53 view .LVU247
	vmul.f32	s17, s17, s17
	.loc 1 156 82 view .LVU248
	vsub.f32	s16, s16, s23
	.loc 1 156 95 view .LVU249
	vmul.f32	s16, s16, s16
	.loc 1 156 29 view .LVU250
	vadd.f32	s15, s17, s16
	vmov	r0, s15
.LVL101:
	.loc 1 156 29 view .LVU251
	bl	__aeabi_f2d
.LVL102:
	vmov	d0, r0, r1
	bl	sqrt
.LVL103:
	vmov	r0, r1, d0
	.loc 1 156 22 view .LVU252
	bl	__aeabi_d2f
.LVL104:
	.loc 1 156 20 view .LVU253
	ldr	r3, .L59+52
	str	r0, [r3]	@ float
	.loc 1 158 17 is_stmt 1 view .LVU254
.LVL105:
	.loc 1 159 17 view .LVU255
	.loc 1 160 17 view .LVU256
	.loc 1 160 30 is_stmt 0 view .LVU257
	vmov	r0, s25
	bl	__aeabi_f2d
.LVL106:
	vmov	d8, r0, r1
	vmov	r0, s24
	bl	__aeabi_f2d
.LVL107:
	vmov.f32	s2, s16
	vmov.f32	s3, s17
	vmov	d0, r0, r1
	bl	atan2
.LVL108:
	vmov	r0, r1, d0
	bl	__aeabi_d2f
.LVL109:
	.loc 1 160 28 view .LVU258
	ldr	r4, .L59+56
	str	r0, [r4]	@ float
	.loc 1 161 5 is_stmt 1 view .LVU259
	mov	r0, r4
	bl	vFunc_Inf2pi
.LVL110:
	.loc 1 163 17 view .LVU260
	.loc 1 164 17 view .LVU261
	.loc 1 164 41 is_stmt 0 view .LVU262
	vldr.32	s15, [r4]
	vsub.f32	s15, s15, s19
	.loc 1 164 28 view .LVU263
	vstr.32	s15, [sp, #32]
.LVL111:
	.loc 1 165 17 is_stmt 1 view .LVU264
	add	r0, sp, #32
	bl	vFunc_Inf2pi
.LVL112:
	.loc 1 167 5 view .LVU265
	.loc 1 167 39 is_stmt 0 view .LVU266
	ldr	r3, .L59+24
	vldr.32	s15, [r3]
	vsub.f32	s15, s15, s19
	.loc 1 167 21 view .LVU267
	ldr	r4, .L59+60
	vstr.32	s15, [r4]
	.loc 1 168 5 is_stmt 1 view .LVU268
	mov	r0, r4
	bl	vFunc_Inf2pi
.LVL113:
	.loc 1 169 5 view .LVU269
	.loc 1 169 21 is_stmt 0 view .LVU270
	vldr.32	s15, [r4]
	vmov.f32	s14, #2.5e+1
	vmul.f32	s15, s15, s14
	vstr.32	s15, [r4]
	.loc 1 174 5 is_stmt 1 view .LVU271
	.loc 1 174 7 is_stmt 0 view .LVU272
	cmp	r6, #0
	bne	.L56
	.loc 1 177 24 view .LVU273
	movs	r0, #0
.L32:
.LVL114:
	.loc 1 182 5 is_stmt 1 view .LVU274
	.loc 1 182 7 is_stmt 0 view .LVU275
	vmov.f32	s15, #1.5e+1
	vcmpe.f32	s18, s15
	vmrs	APSR_nzcv, FPSCR
	bmi	.L33
	.loc 1 182 59 discriminator 1 view .LVU276
	ldr	r3, .L59+52
	vldr.32	s14, [r3]
	ldr	r3, .L59+48
	vldr.32	s15, [r3]
	.loc 1 182 40 discriminator 1 view .LVU277
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	bgt	.L33
	.loc 1 182 79 discriminator 2 view .LVU278
	cbz	r0, .L34
.L33:
	.loc 1 183 6 is_stmt 1 view .LVU279
.LVL115:
	.loc 1 184 6 view .LVU280
	bl	motor_brake
.LVL116:
	.loc 1 185 6 view .LVU281
	movs	r1, #0
	mov	r0, r1
	bl	vMotorMovementSwitch
.LVL117:
	.loc 1 186 6 view .LVU282
	.loc 1 186 20 is_stmt 0 view .LVU283
	movs	r3, #0
	ldr	r2, .L59+64
	str	r3, [r2]	@ float
	.loc 1 187 6 is_stmt 1 view .LVU284
	.loc 1 187 20 is_stmt 0 view .LVU285
	ldr	r2, .L59+68
	str	r3, [r2]	@ float
	.loc 1 188 6 is_stmt 1 view .LVU286
	.loc 1 188 19 is_stmt 0 view .LVU287
	movs	r2, #0
	strb	r2, [sp, #39]
	.loc 1 189 6 is_stmt 1 view .LVU288
	mov	r3, r2
	add	r1, sp, #39
	ldr	r0, .L59+72
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL118:
	.loc 1 183 21 is_stmt 0 view .LVU289
	movs	r5, #1
.LVL119:
.L34:
	.loc 1 193 17 is_stmt 1 view .LVU290
	.loc 1 193 20 is_stmt 0 view .LVU291
	vmov.f32	s15, #1.5e+1
	vcmpe.f32	s18, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L35
	.loc 1 193 51 discriminator 1 view .LVU292
	cmp	r5, #0
	bne	.L35
	.loc 1 194 21 is_stmt 1 view .LVU293
.LVL120:
	.loc 1 196 6 view .LVU294
	.loc 1 198 21 view .LVU295
	.loc 1 198 23 is_stmt 0 view .LVU296
	cmp	r6, #0
	beq	.L37
	.loc 1 202 25 is_stmt 1 view .LVU297
	ldr	r3, .L59+60
	vldr.32	s2, [r3]
	vldr.32	s1, [sp, #32]
	vmov.f32	s0, s18
	bl	runDistanceController
.LVL121:
	.loc 1 204 7 view .LVU298
	.loc 1 204 20 is_stmt 0 view .LVU299
	movs	r3, #1
	strb	r3, [sp, #39]
	.loc 1 205 7 is_stmt 1 view .LVU300
	movs	r3, #0
	mov	r2, r3
	add	r1, sp, #39
	ldr	r0, .L59+72
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL122:
	.loc 1 194 31 is_stmt 0 view .LVU301
	mov	r7, r5
	b	.L28
.L60:
	.align	2
.L59:
	.word	gHandshook
	.word	.LANCHOR8
	.word	xTickMutex
	.word	gLeftWheelTicks
	.word	gRightWheelTicks
	.word	xControllerBSem
	.word	.LANCHOR9
	.word	xPoseMutex
	.word	gTheta_hat
	.word	gX_hat
	.word	gY_hat
	.word	poseControllerQ
	.word	.LANCHOR10
	.word	.LANCHOR11
	.word	.LANCHOR0
	.word	.LANCHOR7
	.word	.LANCHOR1
	.word	.LANCHOR6
	.word	scanStatusQ
.LBE6:
.LFE292:
	.size	vMainPoseControllerTask, .-vMainPoseControllerTask
	.global	executingOrder
	.global	thetaTargt
	.global	controllerdata
	.global	controllerTime
	.global	controllerLogCounter
	.global	controllerLogDone
	.global	distanceToTarget
	.global	distanceDriven
	.global	rightIntError
	.global	leftIntError
	.global	thetaErrorInt
	.global	stopU
	.global	minU
	.global	maxU
	.global	thetaDoneCounter
	.global	integrateTheta
	.global	controllerPrint
	.global	thetaDerivative
	.global	previousThetahat
	.section	.bss.controllerLogCounter,"aw",%nobits
	.align	2
	.type	controllerLogCounter, %object
	.size	controllerLogCounter, 4
controllerLogCounter:
	.space	4
	.section	.bss.controllerLogDone,"aw",%nobits
	.type	controllerLogDone, %object
	.size	controllerLogDone, 1
controllerLogDone:
	.space	1
	.section	.bss.controllerPrint,"aw",%nobits
	.align	2
	.set	.LANCHOR8,. + 0
	.type	controllerPrint, %object
	.size	controllerPrint, 4
controllerPrint:
	.space	4
	.section	.bss.controllerTime,"aw",%nobits
	.align	2
	.type	controllerTime, %object
	.size	controllerTime, 4
controllerTime:
	.space	4
	.section	.bss.controllerdata,"aw",%nobits
	.align	2
	.type	controllerdata, %object
	.size	controllerdata, 20
controllerdata:
	.space	20
	.section	.bss.distanceDriven,"aw",%nobits
	.align	2
	.set	.LANCHOR11,. + 0
	.type	distanceDriven, %object
	.size	distanceDriven, 4
distanceDriven:
	.space	4
	.section	.bss.distanceToTarget,"aw",%nobits
	.align	2
	.set	.LANCHOR10,. + 0
	.type	distanceToTarget, %object
	.size	distanceToTarget, 4
distanceToTarget:
	.space	4
	.section	.bss.executingOrder,"aw",%nobits
	.type	executingOrder, %object
	.size	executingOrder, 1
executingOrder:
	.space	1
	.section	.bss.leftIntError,"aw",%nobits
	.align	2
	.type	leftIntError, %object
	.size	leftIntError, 4
leftIntError:
	.space	4
	.section	.bss.previousThetahat,"aw",%nobits
	.align	2
	.set	.LANCHOR9,. + 0
	.type	previousThetahat, %object
	.size	previousThetahat, 4
previousThetahat:
	.space	4
	.section	.bss.rightIntError,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	rightIntError, %object
	.size	rightIntError, 4
rightIntError:
	.space	4
	.section	.bss.thetaDerivative,"aw",%nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	thetaDerivative, %object
	.size	thetaDerivative, 4
thetaDerivative:
	.space	4
	.section	.bss.thetaDoneCounter,"aw",%nobits
	.set	.LANCHOR12,. + 0
	.type	thetaDoneCounter, %object
	.size	thetaDoneCounter, 1
thetaDoneCounter:
	.space	1
	.section	.bss.thetaErrorInt,"aw",%nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	thetaErrorInt, %object
	.size	thetaErrorInt, 4
thetaErrorInt:
	.space	4
	.section	.bss.thetaTargt,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	thetaTargt, %object
	.size	thetaTargt, 4
thetaTargt:
	.space	4
	.section	.data.integrateTheta,"aw"
	.set	.LANCHOR5,. + 0
	.type	integrateTheta, %object
	.size	integrateTheta, 1
integrateTheta:
	.byte	1
	.section	.data.maxU,"aw"
	.align	2
	.set	.LANCHOR2,. + 0
	.type	maxU, %object
	.size	maxU, 4
maxU:
	.word	1103626240
	.section	.data.minU,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	minU, %object
	.size	minU, 4
minU:
	.word	1101004800
	.section	.data.stopU,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	stopU, %object
	.size	stopU, 4
stopU:
	.word	1065353216
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB294
	.4byte	.LFE294-.LFB294
	.byte	0x4
	.4byte	.LCFI0-.LFB294
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB295
	.4byte	.LFE295-.LFB295
	.byte	0x4
	.4byte	.LCFI1-.LFB295
	.byte	0xe
	.uleb128 0x10
	.byte	0x83
	.uleb128 0x4
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
	.byte	0x5
	.uleb128 0x50
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x51
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x52
	.uleb128 0x6
	.byte	0x5
	.uleb128 0x53
	.uleb128 0x5
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xa
	.byte	0x6
	.uleb128 0x52
	.byte	0x6
	.uleb128 0x53
	.byte	0x6
	.uleb128 0x50
	.byte	0x6
	.uleb128 0x51
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xb
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB292
	.4byte	.LFE292-.LFB292
	.byte	0x4
	.4byte	.LCFI5-.LFB292
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
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x3c
	.byte	0x5
	.uleb128 0x50
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x51
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x52
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x53
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x54
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x55
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x56
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x57
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x58
	.uleb128 0x7
	.byte	0x5
	.uleb128 0x59
	.uleb128 0x6
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x70
	.align	2
.LEFDE6:
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
	.byte	0x47
	.byte	0x8
	.4byte	0x41
	.uleb128 0x3
	.ascii	"x\000"
	.byte	0x2
	.byte	0x48
	.byte	0xb
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.ascii	"y\000"
	.byte	0x2
	.byte	0x49
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
	.file 17 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.file 18 "../../../drivers/motor.h"
	.file 19 "../../../drivers/functions.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xed0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF238
	.byte	0xc
	.4byte	.LASF239
	.4byte	.LASF240
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x13
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
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
	.4byte	0x69
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
	.4byte	0x30
	.uleb128 0xa
	.4byte	0x77
	.uleb128 0x7
	.4byte	.LASF18
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x94
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
	.4byte	0xb2
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
	.4byte	0xbe
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
	.4byte	0xd3
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
	.4byte	0xe3
	.uleb128 0x1a
	.4byte	.LASF86
	.byte	0x7
	.2byte	0x110
	.byte	0x25
	.4byte	0xce
	.uleb128 0x1a
	.4byte	.LASF87
	.byte	0x7
	.2byte	0x111
	.byte	0x25
	.4byte	0xce
	.uleb128 0xb
	.4byte	0x58
	.4byte	0x130
	.uleb128 0xc
	.4byte	0x94
	.byte	0x7f
	.byte	0
	.uleb128 0x14
	.4byte	0x120
	.uleb128 0x1a
	.4byte	.LASF88
	.byte	0x7
	.2byte	0x113
	.byte	0x1c
	.4byte	0x130
	.uleb128 0xb
	.4byte	0xb9
	.4byte	0x14d
	.uleb128 0x1b
	.byte	0
	.uleb128 0x14
	.4byte	0x142
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x7
	.2byte	0x115
	.byte	0x13
	.4byte	0x14d
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0x7
	.2byte	0x116
	.byte	0x13
	.4byte	0x14d
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0x7
	.2byte	0x117
	.byte	0x13
	.4byte	0x14d
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x7
	.2byte	0x118
	.byte	0x13
	.4byte	0x14d
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x7
	.2byte	0x11a
	.byte	0x13
	.4byte	0x14d
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x11b
	.byte	0x13
	.4byte	0x14d
	.uleb128 0x1a
	.4byte	.LASF95
	.byte	0x7
	.2byte	0x11c
	.byte	0x13
	.4byte	0x14d
	.uleb128 0x1a
	.4byte	.LASF96
	.byte	0x7
	.2byte	0x11d
	.byte	0x13
	.4byte	0x14d
	.uleb128 0x1a
	.4byte	.LASF97
	.byte	0x7
	.2byte	0x11e
	.byte	0x13
	.4byte	0x14d
	.uleb128 0x1a
	.4byte	.LASF98
	.byte	0x7
	.2byte	0x11f
	.byte	0x13
	.4byte	0x14d
	.uleb128 0x11
	.4byte	0x30
	.4byte	0x1e3
	.uleb128 0x12
	.4byte	0x1e3
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1ee
	.uleb128 0x1c
	.4byte	.LASF112
	.uleb128 0x14
	.4byte	0x1e9
	.uleb128 0x1a
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x135
	.byte	0xe
	.4byte	0x200
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x11
	.4byte	0x30
	.4byte	0x215
	.uleb128 0x12
	.4byte	0x215
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.4byte	0x1e9
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x7
	.2byte	0x136
	.byte	0xe
	.4byte	0x228
	.uleb128 0x10
	.byte	0x4
	.4byte	0x206
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
	.4byte	0x24c
	.uleb128 0x10
	.byte	0x4
	.4byte	0x22e
	.uleb128 0x1a
	.4byte	.LASF103
	.byte	0x8
	.2byte	0x744
	.byte	0x19
	.4byte	0x83
	.uleb128 0x1e
	.4byte	.LASF104
	.byte	0x9
	.byte	0x21
	.byte	0x11
	.4byte	0x88
	.uleb128 0x1e
	.4byte	.LASF105
	.byte	0xa
	.byte	0x53
	.byte	0x11
	.4byte	0x88
	.uleb128 0x1e
	.4byte	.LASF106
	.byte	0xa
	.byte	0x54
	.byte	0x11
	.4byte	0x88
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0xa
	.byte	0x72
	.byte	0x13
	.4byte	0x28f
	.uleb128 0x10
	.byte	0x4
	.4byte	0x88
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0xa
	.byte	0x73
	.byte	0x11
	.4byte	0x88
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
	.4byte	0x2a1
	.uleb128 0xf
	.4byte	.LASF111
	.byte	0xb
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2ca
	.uleb128 0x1c
	.4byte	.LASF113
	.uleb128 0x1a
	.4byte	.LASF114
	.byte	0xb
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2dc
	.uleb128 0x10
	.byte	0x4
	.4byte	0x2bd
	.uleb128 0x1a
	.4byte	.LASF115
	.byte	0xb
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2dc
	.uleb128 0x1a
	.4byte	.LASF116
	.byte	0xb
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2dc
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
	.4byte	0xab
	.uleb128 0x7
	.4byte	.LASF121
	.byte	0xc
	.byte	0x40
	.byte	0x16
	.4byte	0x88
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
	.4byte	0x332
	.uleb128 0x7
	.4byte	.LASF124
	.byte	0xe
	.byte	0x2f
	.byte	0x10
	.4byte	0xa9
	.uleb128 0x7
	.4byte	.LASF125
	.byte	0xf
	.byte	0x26
	.byte	0x17
	.4byte	0x34f
	.uleb128 0x7
	.4byte	.LASF126
	.byte	0x10
	.byte	0x3e
	.byte	0x10
	.4byte	0xa9
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0x2
	.byte	0x11
	.byte	0x15
	.4byte	0x367
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0x2
	.byte	0x12
	.byte	0x5
	.4byte	0x367
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0x2
	.byte	0x13
	.byte	0x5
	.4byte	0x367
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0x2
	.byte	0x14
	.byte	0x5
	.4byte	0x367
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0x2
	.byte	0x15
	.byte	0x5
	.4byte	0x367
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0x2
	.byte	0x16
	.byte	0x5
	.4byte	0x367
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0x2
	.byte	0x17
	.byte	0x5
	.4byte	0x367
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0x2
	.byte	0x18
	.byte	0x5
	.4byte	0x367
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0x2
	.byte	0x1b
	.byte	0x1a
	.4byte	0x35b
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0x2
	.byte	0x1c
	.byte	0x1a
	.4byte	0x35b
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0x2
	.byte	0x1d
	.byte	0x1a
	.4byte	0x35b
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0x2
	.byte	0x1e
	.byte	0x1a
	.4byte	0x35b
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0x2
	.byte	0x1f
	.byte	0x1a
	.4byte	0x35b
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0x2
	.byte	0x20
	.byte	0x1a
	.4byte	0x35b
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0x2
	.byte	0x25
	.byte	0x16
	.4byte	0x34f
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0x2
	.byte	0x26
	.byte	0x16
	.4byte	0x34f
	.uleb128 0x1e
	.4byte	.LASF143
	.byte	0x2
	.byte	0x27
	.byte	0x16
	.4byte	0x34f
	.uleb128 0x1e
	.4byte	.LASF144
	.byte	0x2
	.byte	0x2a
	.byte	0x10
	.4byte	0x45
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0x2
	.byte	0x2b
	.byte	0x10
	.4byte	0x45
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0x2
	.byte	0x2f
	.byte	0xc
	.4byte	0x2fc
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0x2
	.byte	0x30
	.byte	0xc
	.4byte	0x2fc
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0x2
	.byte	0x31
	.byte	0xc
	.4byte	0x2fc
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0x2
	.byte	0x36
	.byte	0xe
	.4byte	0x29
	.uleb128 0x1e
	.4byte	.LASF150
	.byte	0x2
	.byte	0x37
	.byte	0x10
	.4byte	0x5d
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0x2
	.byte	0x38
	.byte	0x10
	.4byte	0x5d
	.uleb128 0x1e
	.4byte	.LASF152
	.byte	0x2
	.byte	0x39
	.byte	0xe
	.4byte	0x29
	.uleb128 0x1e
	.4byte	.LASF153
	.byte	0x2
	.byte	0x3a
	.byte	0xe
	.4byte	0x29
	.uleb128 0x1e
	.4byte	.LASF154
	.byte	0x2
	.byte	0x3d
	.byte	0x10
	.4byte	0x5d
	.uleb128 0x1e
	.4byte	.LASF155
	.byte	0x2
	.byte	0x3e
	.byte	0x10
	.4byte	0x5d
	.uleb128 0x1f
	.4byte	.LASF156
	.byte	0x1
	.byte	0x17
	.byte	0x7
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	previousThetahat
	.uleb128 0x1f
	.4byte	.LASF157
	.byte	0x1
	.byte	0x18
	.byte	0x7
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	thetaDerivative
	.uleb128 0x1f
	.4byte	.LASF158
	.byte	0x1
	.byte	0x19
	.byte	0x5
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	controllerPrint
	.uleb128 0x1f
	.4byte	.LASF159
	.byte	0x1
	.byte	0x1a
	.byte	0x5
	.4byte	0x2fc
	.uleb128 0x5
	.byte	0x3
	.4byte	integrateTheta
	.uleb128 0x1f
	.4byte	.LASF160
	.byte	0x1
	.byte	0x1b
	.byte	0x9
	.4byte	0x45
	.uleb128 0x5
	.byte	0x3
	.4byte	thetaDoneCounter
	.uleb128 0x1f
	.4byte	.LASF161
	.byte	0x1
	.byte	0x1c
	.byte	0x7
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	maxU
	.uleb128 0x1f
	.4byte	.LASF162
	.byte	0x1
	.byte	0x1d
	.byte	0x7
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	minU
	.uleb128 0x1f
	.4byte	.LASF163
	.byte	0x1
	.byte	0x1e
	.byte	0x7
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	stopU
	.uleb128 0x1f
	.4byte	.LASF164
	.byte	0x1
	.byte	0x20
	.byte	0x7
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	thetaErrorInt
	.uleb128 0x1f
	.4byte	.LASF165
	.byte	0x1
	.byte	0x21
	.byte	0x7
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	leftIntError
	.uleb128 0x1f
	.4byte	.LASF166
	.byte	0x1
	.byte	0x22
	.byte	0x7
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	rightIntError
	.uleb128 0x1f
	.4byte	.LASF167
	.byte	0x1
	.byte	0x24
	.byte	0x7
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	distanceDriven
	.uleb128 0x1f
	.4byte	.LASF168
	.byte	0x1
	.byte	0x25
	.byte	0x7
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	distanceToTarget
	.uleb128 0x1f
	.4byte	.LASF169
	.byte	0x1
	.byte	0x28
	.byte	0x5
	.4byte	0x2fc
	.uleb128 0x5
	.byte	0x3
	.4byte	controllerLogDone
	.uleb128 0x1f
	.4byte	.LASF170
	.byte	0x1
	.byte	0x29
	.byte	0x5
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	controllerLogCounter
	.uleb128 0x1f
	.4byte	.LASF171
	.byte	0x1
	.byte	0x2a
	.byte	0x5
	.4byte	0x30
	.uleb128 0x5
	.byte	0x3
	.4byte	controllerTime
	.uleb128 0xb
	.4byte	0xb2
	.4byte	0x5ff
	.uleb128 0xc
	.4byte	0x94
	.byte	0x13
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF172
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	0x5ef
	.uleb128 0x5
	.byte	0x3
	.4byte	controllerdata
	.uleb128 0x1f
	.4byte	.LASF173
	.byte	0x1
	.byte	0x2d
	.byte	0x7
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	thetaTargt
	.uleb128 0x1f
	.4byte	.LASF174
	.byte	0x1
	.byte	0x2f
	.byte	0x5
	.4byte	0x2fc
	.uleb128 0x5
	.byte	0x3
	.4byte	executingOrder
	.uleb128 0x20
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x12e
	.byte	0x6
	.4byte	.LFB295
	.4byte	.LFE295-.LFB295
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x781
	.uleb128 0x21
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x12e
	.byte	0x1f
	.4byte	0x29
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x22
	.ascii	"ki\000"
	.byte	0x1
	.2byte	0x132
	.byte	0x8
	.4byte	0x29
	.byte	0x4
	.4byte	0
	.uleb128 0x22
	.ascii	"kp\000"
	.byte	0x1
	.2byte	0x133
	.byte	0x8
	.4byte	0x29
	.byte	0x4
	.4byte	0x41f00000
	.uleb128 0x22
	.ascii	"kd\000"
	.byte	0x1
	.2byte	0x134
	.byte	0x8
	.4byte	0x29
	.byte	0x4
	.4byte	0x40000000
	.uleb128 0x23
	.ascii	"U\000"
	.byte	0x1
	.2byte	0x135
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x24
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x143
	.byte	0x6
	.4byte	0x30
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x24
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x144
	.byte	0x6
	.4byte	0x30
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x25
	.4byte	.LVL17
	.4byte	0xe0b
	.4byte	0x6ed
	.uleb128 0x26
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x37
	.byte	0
	.uleb128 0x25
	.4byte	.LVL20
	.4byte	0xe0b
	.4byte	0x709
	.uleb128 0x26
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x37
	.byte	0
	.uleb128 0x25
	.4byte	.LVL30
	.4byte	0xe18
	.4byte	0x730
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xa
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0x1f
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL33
	.4byte	0xe0b
	.4byte	0x74c
	.uleb128 0x26
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x37
	.byte	0
	.uleb128 0x25
	.4byte	.LVL36
	.4byte	0xe0b
	.4byte	0x768
	.uleb128 0x26
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x37
	.byte	0
	.uleb128 0x27
	.4byte	.LVL39
	.4byte	0xe0b
	.uleb128 0x26
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x37
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LASF178
	.byte	0x1
	.byte	0xff
	.byte	0x6
	.4byte	.LFB294
	.4byte	.LFE294-.LFB294
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x886
	.uleb128 0x29
	.4byte	.LASF180
	.byte	0x1
	.byte	0xff
	.byte	0x22
	.4byte	0x29
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0xff
	.byte	0x35
	.4byte	0x29
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x29
	.4byte	.LASF182
	.byte	0x1
	.byte	0xff
	.byte	0x45
	.4byte	0x29
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x22
	.ascii	"kp\000"
	.byte	0x1
	.2byte	0x101
	.byte	0x8
	.4byte	0x29
	.byte	0x4
	.4byte	0x3cf5c28f
	.uleb128 0x22
	.ascii	"ki\000"
	.byte	0x1
	.2byte	0x102
	.byte	0x8
	.4byte	0x29
	.byte	0x4
	.4byte	0
	.uleb128 0x22
	.ascii	"kd\000"
	.byte	0x1
	.2byte	0x103
	.byte	0x8
	.4byte	0x29
	.byte	0x4
	.4byte	0
	.uleb128 0x24
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x105
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2a
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x10a
	.byte	0x8
	.4byte	0x29
	.byte	0x4
	.4byte	0x42700000
	.uleb128 0x2a
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x10b
	.byte	0x8
	.4byte	0x29
	.byte	0x4
	.4byte	0x40a00000
	.uleb128 0x23
	.ascii	"u\000"
	.byte	0x1
	.2byte	0x11e
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x24
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x120
	.byte	0x6
	.4byte	0x30
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x24
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x121
	.byte	0x6
	.4byte	0x30
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2b
	.4byte	.LVL11
	.4byte	0xe18
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF241
	.byte	0x1
	.byte	0xf7
	.byte	0x7
	.4byte	0x29
	.4byte	.LFB293
	.4byte	.LFE293-.LFB293
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2d
	.4byte	.LASF188
	.byte	0x1
	.byte	0x32
	.byte	0x6
	.4byte	.LFB292
	.4byte	.LFE292-.LFB292
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe0b
	.uleb128 0x29
	.4byte	.LASF189
	.byte	0x1
	.byte	0x32
	.byte	0x24
	.4byte	0xa9
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x2e
	.4byte	.LASF190
	.byte	0x1
	.byte	0x33
	.byte	0x9
	.4byte	0x30
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF191
	.byte	0x1
	.byte	0x36
	.byte	0x17
	.byte	0x98
	.byte	0x37
	.byte	0x16
	.byte	0xc4
	.byte	0xa1
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x30
	.4byte	.LASF192
	.byte	0x1
	.byte	0x37
	.byte	0xb
	.4byte	0x29
	.byte	0x4
	.4byte	0x41700000
	.uleb128 0x31
	.4byte	.LASF193
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.4byte	0x45
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x2e
	.4byte	.LASF194
	.byte	0x1
	.byte	0x3a
	.byte	0xd
	.4byte	0x45
	.byte	0x5a
	.uleb128 0x30
	.4byte	.LASF195
	.byte	0x1
	.byte	0x3d
	.byte	0xb
	.4byte	0x29
	.byte	0x4
	.4byte	0x3e32b8c2
	.uleb128 0x30
	.4byte	.LASF196
	.byte	0x1
	.byte	0x3e
	.byte	0xb
	.4byte	0x29
	.byte	0x4
	.4byte	0x3d0efa35
	.uleb128 0x32
	.4byte	.LASF197
	.byte	0x1
	.byte	0x41
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x32
	.4byte	.LASF198
	.byte	0x1
	.byte	0x42
	.byte	0xd
	.4byte	0x5d
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x32
	.4byte	.LASF199
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.4byte	0x5d
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x32
	.4byte	.LASF200
	.byte	0x1
	.byte	0x46
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x31
	.4byte	.LASF201
	.byte	0x1
	.byte	0x47
	.byte	0xb
	.4byte	0x29
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x32
	.4byte	.LASF202
	.byte	0x1
	.byte	0x48
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x32
	.4byte	.LASF203
	.byte	0x1
	.byte	0x49
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x32
	.4byte	.LASF204
	.byte	0x1
	.byte	0x4c
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x32
	.4byte	.LASF205
	.byte	0x1
	.byte	0x4d
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x32
	.4byte	.LASF206
	.byte	0x1
	.byte	0x50
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x2e
	.4byte	.LASF207
	.byte	0x1
	.byte	0x51
	.byte	0xa
	.4byte	0x45
	.byte	0
	.uleb128 0x32
	.4byte	.LASF208
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x32
	.4byte	.LASF209
	.byte	0x1
	.byte	0x55
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x30
	.4byte	.LASF210
	.byte	0x1
	.byte	0x56
	.byte	0xb
	.4byte	0x29
	.byte	0x4
	.4byte	0
	.uleb128 0x32
	.4byte	.LASF211
	.byte	0x1
	.byte	0x57
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x32
	.4byte	.LASF212
	.byte	0x1
	.byte	0x58
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST24
	.4byte	.LVUS24
	.uleb128 0x32
	.4byte	.LASF213
	.byte	0x1
	.byte	0x59
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x32
	.4byte	.LASF214
	.byte	0x1
	.byte	0x5a
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x32
	.4byte	.LASF215
	.byte	0x1
	.byte	0x5b
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x32
	.4byte	.LASF216
	.byte	0x1
	.byte	0x5d
	.byte	0xd
	.4byte	0x45
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x32
	.4byte	.LASF217
	.byte	0x1
	.byte	0x5e
	.byte	0x6
	.4byte	0x2fc
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x31
	.4byte	.LASF218
	.byte	0x1
	.byte	0x60
	.byte	0xa
	.4byte	0x5ef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x32
	.4byte	.LASF219
	.byte	0x1
	.byte	0x61
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x32
	.4byte	.LASF220
	.byte	0x1
	.byte	0x62
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x33
	.4byte	.LASF242
	.byte	0x1
	.byte	0x64
	.byte	0xd
	.4byte	0x326
	.uleb128 0x34
	.4byte	.Ldebug_ranges0+0
	.4byte	0xdf8
	.uleb128 0x31
	.4byte	.LASF221
	.byte	0x1
	.byte	0x77
	.byte	0x11
	.4byte	0x303
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x35
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0xb94
	.uleb128 0x36
	.4byte	.LASF222
	.byte	0x1
	.byte	0x96
	.byte	0x15
	.4byte	0x30
	.4byte	0xb49
	.uleb128 0x37
	.byte	0
	.uleb128 0x25
	.4byte	.LVL58
	.4byte	0xe24
	.4byte	0xb7d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x54
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x7
	.byte	0xf5
	.uleb128 0x55
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL59
	.4byte	0xe30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.byte	0
	.byte	0
	.uleb128 0x35
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xc34
	.uleb128 0x36
	.4byte	.LASF222
	.byte	0x1
	.byte	0x96
	.byte	0x15
	.4byte	0x30
	.4byte	0xbb3
	.uleb128 0x37
	.byte	0
	.uleb128 0x35
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0xbf3
	.uleb128 0x36
	.4byte	.LASF223
	.byte	0x1
	.byte	0xe2
	.byte	0x19
	.4byte	0x30
	.4byte	0xbd2
	.uleb128 0x37
	.byte	0
	.uleb128 0x25
	.4byte	.LVL75
	.4byte	0xe3c
	.4byte	0xbe9
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL76
	.4byte	0xe49
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL72
	.4byte	0xe55
	.uleb128 0x25
	.4byte	.LVL73
	.4byte	0xe61
	.4byte	0xc1b
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x27
	.4byte	.LVL74
	.4byte	0xe30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL61
	.4byte	0xe6e
	.uleb128 0x2b
	.4byte	.LVL63
	.4byte	0x635
	.uleb128 0x25
	.4byte	.LVL64
	.4byte	0xe61
	.4byte	0xc65
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL66
	.4byte	0xe0b
	.uleb128 0x25
	.4byte	.LVL81
	.4byte	0xe7a
	.4byte	0xc81
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x25
	.4byte	.LVL82
	.4byte	0xe87
	.4byte	0xc96
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x25
	.4byte	.LVL83
	.4byte	0xe61
	.4byte	0xcb3
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL84
	.4byte	0xe7a
	.4byte	0xcc7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x25
	.4byte	.LVL85
	.4byte	0xe7a
	.4byte	0xcdb
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x25
	.4byte	.LVL89
	.4byte	0xe61
	.4byte	0xcf8
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL90
	.4byte	0xe93
	.4byte	0xd12
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL93
	.4byte	0xea0
	.uleb128 0x2b
	.4byte	.LVL98
	.4byte	0xea0
	.uleb128 0x2b
	.4byte	.LVL103
	.4byte	0xea0
	.uleb128 0x25
	.4byte	.LVL108
	.4byte	0xead
	.4byte	0xd49
	.uleb128 0x26
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
	.uleb128 0x50
	.uleb128 0x37
	.byte	0
	.uleb128 0x25
	.4byte	.LVL110
	.4byte	0xeba
	.4byte	0xd5d
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x25
	.4byte	.LVL112
	.4byte	0xeba
	.4byte	0xd72
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.byte	0
	.uleb128 0x25
	.4byte	.LVL113
	.4byte	0xeba
	.4byte	0xd86
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL116
	.4byte	0xe55
	.uleb128 0x25
	.4byte	.LVL117
	.4byte	0xe18
	.4byte	0xda7
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL118
	.4byte	0xe61
	.4byte	0xdc6
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x25
	.4byte	.LVL121
	.4byte	0x781
	.4byte	0xddc
	.uleb128 0x26
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x29
	.byte	0
	.uleb128 0x27
	.4byte	.LVL122
	.4byte	0xe61
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -73
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x26
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL50
	.4byte	0xec6
	.uleb128 0x2b
	.4byte	.LVL80
	.4byte	0xe55
	.byte	0
	.uleb128 0x38
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x11
	.2byte	0x3c8
	.byte	0x8
	.uleb128 0x39
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x12
	.byte	0x2c
	.byte	0x6
	.uleb128 0x39
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0xb
	.byte	0x87
	.byte	0x5
	.uleb128 0x39
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x1
	.byte	0x96
	.byte	0x15
	.uleb128 0x38
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0xd
	.2byte	0x1ab
	.byte	0x6
	.uleb128 0x39
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x1
	.byte	0xe2
	.byte	0x19
	.uleb128 0x39
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x12
	.byte	0x2a
	.byte	0x6
	.uleb128 0x38
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xe
	.2byte	0x289
	.byte	0xc
	.uleb128 0x39
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0x13
	.byte	0x38
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0xe
	.2byte	0x589
	.byte	0xc
	.uleb128 0x39
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0x5
	.byte	0x36
	.byte	0xe
	.uleb128 0x38
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0xe
	.2byte	0x363
	.byte	0xc
	.uleb128 0x38
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x11
	.2byte	0x37f
	.byte	0x8
	.uleb128 0x38
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0x11
	.2byte	0x1f9
	.byte	0x8
	.uleb128 0x39
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x13
	.byte	0xf
	.byte	0x6
	.uleb128 0x38
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0x10
	.2byte	0x53f
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x20
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x37
	.uleb128 0x18
	.byte	0
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS7:
	.uleb128 0
	.uleb128 .LVU49
	.uleb128 .LVU49
	.uleb128 0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL14
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL14
	.4byte	.LFE295
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU53
	.uleb128 .LVU62
	.uleb128 .LVU62
	.uleb128 .LVU64
	.uleb128 .LVU64
	.uleb128 .LVU72
	.uleb128 .LVU73
	.uleb128 .LVU85
	.uleb128 .LVU85
	.uleb128 0
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL25
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL25
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26
	.4byte	.LVL31
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL32
	.4byte	.LVL44
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL44
	.4byte	.LFE295
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU67
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU72
.LLST9:
	.4byte	.LVL27
	.4byte	.LVL29
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x4f
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL29
	.4byte	.LVL30-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL30-1
	.4byte	.LVL31
	.2byte	0xb
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0x1f
	.byte	0xf7
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU68
	.uleb128 .LVU69
	.uleb128 .LVU69
	.uleb128 .LVU71
	.uleb128 .LVU71
	.uleb128 .LVU72
.LLST10:
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LVL30-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4e
	.4byte	.LVL30-1
	.4byte	.LVL31
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL2
	.4byte	.LFE294
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU27
	.uleb128 .LVU27
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL5
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.4byte	.LVL5
	.4byte	.LFE294
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU36
	.uleb128 .LVU36
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL11-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x42
	.4byte	.LVL11-1
	.4byte	.LFE294
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x42
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU10
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU34
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL4
	.4byte	.LVL9
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU29
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU36
.LLST4:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x2
	.byte	0x90
	.uleb128 0x41
	.4byte	.LVL8
	.4byte	.LVL11-1
	.2byte	0x1b
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x42700000
	.byte	0x1e
	.byte	0x3
	.4byte	rightIntError
	.byte	0xf6
	.byte	0x4
	.uleb128 0x29
	.byte	0xf5
	.uleb128 0x4d
	.uleb128 0x29
	.byte	0x1e
	.byte	0x22
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU31
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU36
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL10
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x4e
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU33
	.uleb128 .LVU34
	.uleb128 .LVU34
	.uleb128 .LVU35
	.uleb128 .LVU35
	.uleb128 .LVU36
.LLST6:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x8
	.byte	0xf5
	.uleb128 0x41
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x90
	.uleb128 0x4f
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 0
.LLST11:
	.4byte	.LVL45
	.4byte	.LVL50-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50-1
	.4byte	.LFE292
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU99
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 0
.LLST12:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL51
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x53
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU100
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU150
	.uleb128 .LVU219
	.uleb128 .LVU238
.LLST13:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	.LVL87
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU101
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU150
	.uleb128 .LVU221
	.uleb128 .LVU241
.LLST14:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL88
	.4byte	.LVL96
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU102
	.uleb128 .LVU131
	.uleb128 .LVU150
	.uleb128 .LVU192
	.uleb128 .LVU245
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 0
.LLST15:
	.4byte	.LVL48
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL60
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL101
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU105
	.uleb128 .LVU131
	.uleb128 .LVU150
	.uleb128 .LVU193
	.uleb128 .LVU255
	.uleb128 0
.LLST16:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL60
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x90
	.uleb128 0x59
	.4byte	.LVL105
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x59
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU106
	.uleb128 .LVU131
	.uleb128 .LVU150
	.uleb128 .LVU193
	.uleb128 .LVU256
	.uleb128 0
.LLST17:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL60
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.4byte	.LVL105
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU107
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU133
	.uleb128 .LVU134
	.uleb128 0
.LLST18:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL51
	.4byte	.LVL52
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	.LVL53
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU108
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU136
	.uleb128 .LVU137
	.uleb128 0
.LLST19:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL51
	.4byte	.LVL54
	.2byte	0x2
	.byte	0x90
	.uleb128 0x55
	.4byte	.LVL55
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x55
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU109
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU170
	.uleb128 .LVU170
	.uleb128 .LVU172
	.uleb128 .LVU172
	.uleb128 0
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL68
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL68
	.4byte	.LVL69
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL69
	.4byte	.LFE292
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU111
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU173
	.uleb128 .LVU173
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU190
	.uleb128 .LVU190
	.uleb128 .LVU192
	.uleb128 .LVU192
	.uleb128 .LVU193
	.uleb128 .LVU193
	.uleb128 .LVU294
	.uleb128 .LVU294
	.uleb128 0
.LLST21:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL62
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL70
	.4byte	.LVL76
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL76
	.4byte	.LVL77
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL78
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL79
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL120
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU112
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU150
	.uleb128 .LVU150
	.uleb128 .LVU280
	.uleb128 .LVU280
	.uleb128 .LVU290
	.uleb128 .LVU290
	.uleb128 0
.LLST22:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL51
	.4byte	.LVL57
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL60
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL115
	.4byte	.LVL119
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL119
	.4byte	.LFE292
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU114
	.uleb128 .LVU131
.LLST23:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS24:
	.uleb128 .LVU115
	.uleb128 .LVU131
	.uleb128 .LVU261
	.uleb128 .LVU264
.LLST24:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL110
	.4byte	.LVL111
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 .LVU116
	.uleb128 .LVU131
	.uleb128 .LVU138
	.uleb128 .LVU150
.LLST25:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL55
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x90
	.uleb128 0x53
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 .LVU117
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 0
.LLST26:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL51
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x56
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 .LVU118
	.uleb128 .LVU131
	.uleb128 .LVU131
	.uleb128 0
.LLST27:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL51
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x90
	.uleb128 0x57
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 .LVU119
	.uleb128 .LVU131
	.uleb128 .LVU143
	.uleb128 .LVU150
	.uleb128 .LVU154
	.uleb128 .LVU173
	.uleb128 .LVU190
	.uleb128 .LVU193
	.uleb128 .LVU295
	.uleb128 0
.LLST28:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x31
	.byte	0x9f
	.4byte	.LVL62
	.4byte	.LVL70
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL77
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL120
	.4byte	.LFE292
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU120
	.uleb128 .LVU131
	.uleb128 .LVU146
	.uleb128 .LVU150
	.uleb128 .LVU153
	.uleb128 .LVU154
	.uleb128 .LVU274
	.uleb128 .LVU281
.LLST29:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL57
	.4byte	.LVL60
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL61
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL114
	.4byte	.LVL116-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU122
	.uleb128 .LVU131
.LLST30:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU123
	.uleb128 .LVU131
.LLST31:
	.4byte	.LVL49
	.4byte	.LVL51
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x2de
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xed4
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
	.4byte	0x4cf
	.ascii	"previousThetahat\000"
	.4byte	0x4e1
	.ascii	"thetaDerivative\000"
	.4byte	0x4f3
	.ascii	"controllerPrint\000"
	.4byte	0x505
	.ascii	"integrateTheta\000"
	.4byte	0x517
	.ascii	"thetaDoneCounter\000"
	.4byte	0x529
	.ascii	"maxU\000"
	.4byte	0x53b
	.ascii	"minU\000"
	.4byte	0x54d
	.ascii	"stopU\000"
	.4byte	0x55f
	.ascii	"thetaErrorInt\000"
	.4byte	0x571
	.ascii	"leftIntError\000"
	.4byte	0x583
	.ascii	"rightIntError\000"
	.4byte	0x595
	.ascii	"distanceDriven\000"
	.4byte	0x5a7
	.ascii	"distanceToTarget\000"
	.4byte	0x5b9
	.ascii	"controllerLogDone\000"
	.4byte	0x5cb
	.ascii	"controllerLogCounter\000"
	.4byte	0x5dd
	.ascii	"controllerTime\000"
	.4byte	0x5ff
	.ascii	"controllerdata\000"
	.4byte	0x611
	.ascii	"thetaTargt\000"
	.4byte	0x623
	.ascii	"executingOrder\000"
	.4byte	0x571
	.ascii	"leftIntError\000"
	.4byte	0x583
	.ascii	"rightIntError\000"
	.4byte	0x5ff
	.ascii	"controllerdata\000"
	.4byte	0x635
	.ascii	"runThetaController\000"
	.4byte	0x781
	.ascii	"runDistanceController\000"
	.4byte	0x886
	.ascii	"getThetaTarget\000"
	.4byte	0x89c
	.ascii	"vMainPoseControllerTask\000"
	.4byte	0xb37
	.ascii	"display_text_on_line\000"
	.4byte	0xba1
	.ascii	"display_text_on_line\000"
	.4byte	0xbc0
	.ascii	"send_idle\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x257
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xed4
	.4byte	0x3e
	.ascii	"signed char\000"
	.4byte	0x51
	.ascii	"unsigned char\000"
	.4byte	0x45
	.ascii	"uint8_t\000"
	.4byte	0x69
	.ascii	"short int\000"
	.4byte	0x5d
	.ascii	"int16_t\000"
	.4byte	0x70
	.ascii	"short unsigned int\000"
	.4byte	0x30
	.ascii	"int\000"
	.4byte	0x77
	.ascii	"int32_t\000"
	.4byte	0x94
	.ascii	"unsigned int\000"
	.4byte	0x88
	.ascii	"uint32_t\000"
	.4byte	0x9b
	.ascii	"long long int\000"
	.4byte	0xa2
	.ascii	"long long unsigned int\000"
	.4byte	0xab
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xb2
	.ascii	"char\000"
	.4byte	0xbe
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xd3
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x22e
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x2a1
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2bd
	.ascii	"FILE\000"
	.4byte	0x2fc
	.ascii	"_Bool\000"
	.4byte	0x303
	.ascii	"encoderTicks\000"
	.4byte	0x313
	.ascii	"long unsigned int\000"
	.4byte	0x31a
	.ascii	"BaseType_t\000"
	.4byte	0x326
	.ascii	"TickType_t\000"
	.4byte	0x29
	.ascii	"float\000"
	.4byte	0x37
	.ascii	"double\000"
	.4byte	0x332
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x34f
	.ascii	"QueueHandle_t\000"
	.4byte	0x35b
	.ascii	"SemaphoreHandle_t\000"
	.4byte	0x367
	.ascii	"TaskHandle_t\000"
	.4byte	0xb
	.ascii	"sCartesian\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB293
	.4byte	.LFE293-.LFB293
	.4byte	.LFB294
	.4byte	.LFE294-.LFB294
	.4byte	.LFB295
	.4byte	.LFE295-.LFB295
	.4byte	.LFB292
	.4byte	.LFE292-.LFB292
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB6
	.4byte	.LBE6
	.4byte	0
	.4byte	0
	.4byte	.LFB293
	.4byte	.LFE293
	.4byte	.LFB294
	.4byte	.LFE294
	.4byte	.LFB295
	.4byte	.LFE295
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
	.uleb128 0x13
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x11
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x12
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
.LASF190:
	.ascii	"count\000"
.LASF9:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF3:
	.ascii	"padding\000"
.LASF175:
	.ascii	"LeftSpeed\000"
.LASF108:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF95:
	.ascii	"__RAL_data_utf8_space\000"
.LASF180:
	.ascii	"distanceErr\000"
.LASF90:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF22:
	.ascii	"next\000"
.LASF210:
	.ascii	"distanceStart\000"
.LASF86:
	.ascii	"__RAL_codeset_ascii\000"
.LASF23:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF62:
	.ascii	"int_n_sep_by_space\000"
.LASF53:
	.ascii	"p_cs_precedes\000"
.LASF128:
	.ascii	"handle_user_task\000"
.LASF225:
	.ascii	"vMotorMovementSwitch\000"
.LASF97:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF144:
	.ascii	"gHandshook\000"
.LASF229:
	.ascii	"xQueueGenericSend\000"
.LASF206:
	.ascii	"doneTurning\000"
.LASF83:
	.ascii	"long long unsigned int\000"
.LASF238:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF165:
	.ascii	"leftIntError\000"
.LASF29:
	.ascii	"data\000"
.LASF163:
	.ascii	"stopU\000"
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
.LASF168:
	.ascii	"distanceToTarget\000"
.LASF44:
	.ascii	"int_curr_symbol\000"
.LASF211:
	.ascii	"prevDistError\000"
.LASF162:
	.ascii	"minU\000"
.LASF157:
	.ascii	"thetaDerivative\000"
.LASF14:
	.ascii	"right\000"
.LASF79:
	.ascii	"int16_t\000"
.LASF21:
	.ascii	"decode\000"
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
.LASF187:
	.ascii	"RightFwd\000"
.LASF133:
	.ascii	"sensor_tower_task\000"
.LASF51:
	.ascii	"int_frac_digits\000"
.LASF208:
	.ascii	"idleSendt\000"
.LASF118:
	.ascii	"encoderTicks\000"
.LASF171:
	.ascii	"controllerTime\000"
.LASF15:
	.ascii	"long int\000"
.LASF239:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\software\\ControllerTask.c\000"
.LASF152:
	.ascii	"gLeft\000"
.LASF31:
	.ascii	"__RAL_locale_data_t\000"
.LASF94:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF126:
	.ascii	"TaskHandle_t\000"
.LASF114:
	.ascii	"stdin\000"
.LASF222:
	.ascii	"display_text_on_line\000"
.LASF8:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF5:
	.ascii	"uint16_t\000"
.LASF76:
	.ascii	"double\000"
.LASF120:
	.ascii	"BaseType_t\000"
.LASF33:
	.ascii	"__isctype\000"
.LASF59:
	.ascii	"int_p_cs_precedes\000"
.LASF134:
	.ascii	"arq_task\000"
.LASF218:
	.ascii	"str4\000"
.LASF66:
	.ascii	"abbrev_day_names\000"
.LASF75:
	.ascii	"__wchar\000"
.LASF183:
	.ascii	"driveFwd\000"
.LASF146:
	.ascii	"USEBLUETOOTH\000"
.LASF182:
	.ascii	"thetaDer\000"
.LASF215:
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
.LASF164:
	.ascii	"thetaErrorInt\000"
.LASF219:
	.ascii	"dLeft\000"
.LASF19:
	.ascii	"unsigned int\000"
.LASF61:
	.ascii	"int_p_sep_by_space\000"
.LASF104:
	.ascii	"SystemCoreClock\000"
.LASF242:
	.ascii	"xLastWakeTime\000"
.LASF93:
	.ascii	"__RAL_data_utf8_period\000"
.LASF235:
	.ascii	"atan2\000"
.LASF230:
	.ascii	"checkForCollision\000"
.LASF43:
	.ascii	"grouping\000"
.LASF119:
	.ascii	"long unsigned int\000"
.LASF38:
	.ascii	"__towlower\000"
.LASF150:
	.ascii	"gX_hat\000"
.LASF98:
	.ascii	"__RAL_data_empty_string\000"
.LASF189:
	.ascii	"pvParameters\000"
.LASF131:
	.ascii	"pose_controller_task\000"
.LASF26:
	.ascii	"__category\000"
.LASF142:
	.ascii	"scanStatusQ\000"
.LASF122:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF106:
	.ascii	"__StackLimit\000"
.LASF223:
	.ascii	"send_idle\000"
.LASF194:
	.ascii	"maxDriveActuation\000"
.LASF109:
	.ascii	"nrf_nvic_state_t\000"
.LASF129:
	.ascii	"handle_microsd_task\000"
.LASF143:
	.ascii	"queue_microsd\000"
.LASF4:
	.ascii	"short unsigned int\000"
.LASF28:
	.ascii	"name\000"
.LASF240:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF197:
	.ascii	"thetahat\000"
.LASF6:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF203:
	.ascii	"yError\000"
.LASF236:
	.ascii	"vFunc_Inf2pi\000"
.LASF207:
	.ascii	"doneDriving\000"
.LASF65:
	.ascii	"day_names\000"
.LASF17:
	.ascii	"__cr_flag\000"
.LASF226:
	.ascii	"sprintf\000"
.LASF112:
	.ascii	"timeval\000"
.LASF233:
	.ascii	"xQueueReceive\000"
.LASF115:
	.ascii	"stdout\000"
.LASF54:
	.ascii	"p_sep_by_space\000"
.LASF170:
	.ascii	"controllerLogCounter\000"
.LASF132:
	.ascii	"communication_task\000"
.LASF27:
	.ascii	"__RAL_locale_t\000"
.LASF71:
	.ascii	"time_format\000"
.LASF196:
	.ascii	"driveThreshold\000"
.LASF137:
	.ascii	"xTickMutex\000"
.LASF34:
	.ascii	"__toupper\000"
.LASF204:
	.ascii	"xTargt\000"
.LASF10:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF88:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF45:
	.ascii	"currency_symbol\000"
.LASF221:
	.ascii	"ticks\000"
.LASF178:
	.ascii	"runDistanceController\000"
.LASF177:
	.ascii	"runThetaController\000"
.LASF138:
	.ascii	"xControllerBSem\000"
.LASF181:
	.ascii	"thetaErr\000"
.LASF158:
	.ascii	"controllerPrint\000"
.LASF121:
	.ascii	"TickType_t\000"
.LASF185:
	.ascii	"thetaKi\000"
.LASF156:
	.ascii	"previousThetahat\000"
.LASF40:
	.ascii	"__mbtowc\000"
.LASF110:
	.ascii	"nrf_nvic_state\000"
.LASF57:
	.ascii	"p_sign_posn\000"
.LASF184:
	.ascii	"thetaKp\000"
.LASF176:
	.ascii	"RightSpeed\000"
.LASF85:
	.ascii	"__RAL_c_locale\000"
.LASF35:
	.ascii	"__tolower\000"
.LASF201:
	.ascii	"thetaError\000"
.LASF136:
	.ascii	"xPoseMutex\000"
.LASF99:
	.ascii	"__user_set_time_of_day\000"
.LASF60:
	.ascii	"int_n_cs_precedes\000"
.LASF153:
	.ascii	"gRight\000"
.LASF87:
	.ascii	"__RAL_codeset_utf8\000"
.LASF209:
	.ascii	"controllerStop\000"
.LASF46:
	.ascii	"mon_decimal_point\000"
.LASF74:
	.ascii	"__state\000"
.LASF205:
	.ascii	"yTargt\000"
.LASF68:
	.ascii	"abbrev_month_names\000"
.LASF105:
	.ascii	"__StackTop\000"
.LASF135:
	.ascii	"xScanLock\000"
.LASF167:
	.ascii	"distanceDriven\000"
.LASF117:
	.ascii	"_Bool\000"
.LASF81:
	.ascii	"int32_t\000"
.LASF12:
	.ascii	"unsigned char\000"
.LASF199:
	.ascii	"yhat\000"
.LASF89:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF52:
	.ascii	"frac_digits\000"
.LASF11:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF80:
	.ascii	"short int\000"
.LASF16:
	.ascii	"__irq_masks\000"
.LASF147:
	.ascii	"newServer\000"
.LASF102:
	.ascii	"__RAL_error_decoder_head\000"
.LASF227:
	.ascii	"nrf_log_frontend_std_0\000"
.LASF149:
	.ascii	"gTheta_hat\000"
.LASF73:
	.ascii	"__mbstate_s\000"
.LASF217:
	.ascii	"collisionDetected\000"
.LASF186:
	.ascii	"LeftFwd\000"
.LASF169:
	.ascii	"controllerLogDone\000"
.LASF111:
	.ascii	"FILE\000"
.LASF191:
	.ascii	"Setpoint\000"
.LASF188:
	.ascii	"vMainPoseControllerTask\000"
.LASF166:
	.ascii	"rightIntError\000"
.LASF174:
	.ascii	"executingOrder\000"
.LASF154:
	.ascii	"gRightWheelTicks\000"
.LASF49:
	.ascii	"positive_sign\000"
.LASF18:
	.ascii	"uint32_t\000"
.LASF145:
	.ascii	"gPaused\000"
.LASF37:
	.ascii	"__towupper\000"
.LASF216:
	.ascii	"newOrder\000"
.LASF198:
	.ascii	"xhat\000"
.LASF125:
	.ascii	"SemaphoreHandle_t\000"
.LASF24:
	.ascii	"char\000"
.LASF72:
	.ascii	"date_time_format\000"
.LASF141:
	.ascii	"poseControllerQ\000"
.LASF47:
	.ascii	"mon_thousands_sep\000"
.LASF172:
	.ascii	"controllerdata\000"
.LASF123:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF159:
	.ascii	"integrateTheta\000"
.LASF212:
	.ascii	"prevThetaError\000"
.LASF173:
	.ascii	"thetaTargt\000"
.LASF50:
	.ascii	"negative_sign\000"
.LASF32:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF0:
	.ascii	"sCartesian\000"
.LASF224:
	.ascii	"fabs\000"
.LASF237:
	.ascii	"xTaskGetTickCount\000"
.LASF155:
	.ascii	"gLeftWheelTicks\000"
.LASF42:
	.ascii	"thousands_sep\000"
.LASF64:
	.ascii	"int_n_sign_posn\000"
.LASF130:
	.ascii	"pose_estimator_task\000"
.LASF116:
	.ascii	"stderr\000"
.LASF67:
	.ascii	"month_names\000"
.LASF91:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF127:
	.ascii	"handle_display_task\000"
.LASF241:
	.ascii	"getThetaTarget\000"
.LASF214:
	.ascii	"xhatStart\000"
.LASF192:
	.ascii	"radiusEpsilon\000"
.LASF20:
	.ascii	"__RAL_error_decoder_s\000"
.LASF101:
	.ascii	"__RAL_error_decoder_t\000"
.LASF161:
	.ascii	"maxU\000"
.LASF55:
	.ascii	"n_cs_precedes\000"
.LASF78:
	.ascii	"uint8_t\000"
.LASF213:
	.ascii	"thetahatStart\000"
.LASF231:
	.ascii	"xQueueSemaphoreTake\000"
.LASF1:
	.ascii	"float\000"
.LASF234:
	.ascii	"sqrt\000"
.LASF148:
	.ascii	"validateWP\000"
.LASF7:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF220:
	.ascii	"dRight\000"
.LASF179:
	.ascii	"thetaDiff\000"
.LASF193:
	.ascii	"lastMovement\000"
.LASF139:
	.ascii	"xCommandReadyBSem\000"
.LASF140:
	.ascii	"mutex_spi\000"
.LASF202:
	.ascii	"xError\000"
.LASF56:
	.ascii	"n_sep_by_space\000"
.LASF113:
	.ascii	"__RAL_FILE\000"
.LASF160:
	.ascii	"thetaDoneCounter\000"
.LASF96:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF92:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF195:
	.ascii	"rotateThreshold\000"
.LASF13:
	.ascii	"left\000"
.LASF232:
	.ascii	"encoder_get_ticks\000"
.LASF39:
	.ascii	"__wctomb\000"
.LASF200:
	.ascii	"distanceError\000"
.LASF41:
	.ascii	"decimal_point\000"
.LASF151:
	.ascii	"gY_hat\000"
.LASF228:
	.ascii	"motor_brake\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
