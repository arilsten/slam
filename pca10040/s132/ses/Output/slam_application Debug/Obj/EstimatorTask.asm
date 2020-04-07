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
	.file	"EstimatorTask.c"
	.text
.Ltext0:
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.global	__aeabi_d2f
	.section	.rodata.vMainPoseEstimatorTask.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"IMU Has no new data\000"
	.global	__aeabi_f2d
	.global	__aeabi_dmul
	.global	__aeabi_dcmpgt
	.align	2
.LC1:
	.ascii	"X: -%i\000"
	.align	2
.LC2:
	.ascii	"X: %i\000"
	.align	2
.LC3:
	.ascii	"Y: -%i\000"
	.align	2
.LC4:
	.ascii	"Y: %i\000"
	.global	__aeabi_d2uiz
	.align	2
.LC5:
	.ascii	"Hdn: -%i\000"
	.align	2
.LC6:
	.ascii	"Hdn: %i\000"
	.align	2
.LC7:
	.ascii	"cal F:%i S:%i\000"
	.align	2
.LC8:
	.ascii	"aFX: %i aFY: %i gF: %i\000"
	.align	2
.LC9:
	.ascii	"aX: %i aY: %i g: %i\000"
	.section	.text.vMainPoseEstimatorTask,"ax",%progbits
	.align	1
	.global	vMainPoseEstimatorTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vMainPoseEstimatorTask, %function
vMainPoseEstimatorTask:
.LVL0:
.LFB212:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\software\\EstimatorTask.c"
	.loc 1 32 49 view -0
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 32 49 is_stmt 0 view .LVU1
	push	{r4, r5, r6, r7, r8, lr}
.LCFI0:
	vpush.64	{d8, d9, d10, d11, d12}
.LCFI1:
	sub	sp, sp, #64
.LCFI2:
	.loc 1 33 2 is_stmt 1 view .LVU2
.LVL1:
	.loc 1 34 2 view .LVU3
	.loc 1 35 2 view .LVU4
	.loc 1 36 2 view .LVU5
	.loc 1 37 2 view .LVU6
	.loc 1 38 2 view .LVU7
	.loc 1 40 2 view .LVU8
	.loc 1 41 2 view .LVU9
	.loc 1 42 2 view .LVU10
	.loc 1 50 2 view .LVU11
	.loc 1 53 2 view .LVU12
	.loc 1 53 29 is_stmt 0 view .LVU13
	bl	xTaskGetTickCount
.LVL2:
	.loc 1 53 13 view .LVU14
	str	r0, [sp, #60]
	.loc 1 54 2 is_stmt 1 view .LVU15
.LVL3:
	.loc 1 55 2 view .LVU16
	.loc 1 56 2 view .LVU17
	movs	r1, #8
	movs	r0, #7
.LVL4:
	.loc 1 56 2 is_stmt 0 view .LVU18
	bl	kf_init
.LVL5:
	.loc 1 37 8 view .LVU19
	vldr.32	s19, .L39+8
	.loc 1 36 8 view .LVU20
	vmov.f32	s23, s19
	.loc 1 35 8 view .LVU21
	vmov.f32	s22, s19
	.loc 1 33 6 view .LVU22
	mov	r8, #0
	b	.L2
.LVL6:
.L4:
.LBB2:
	.loc 1 139 5 is_stmt 1 discriminator 3 view .LVU23
	.loc 1 139 78 discriminator 3 view .LVU24
	.loc 1 139 133 discriminator 3 view .LVU25
	.loc 1 139 214 is_stmt 0 discriminator 3 view .LVU26
	ldr	r3, .L39+12
	ldrh	r0, [r3]
	.loc 1 139 225 discriminator 3 view .LVU27
	lsls	r0, r0, #16
	.loc 1 139 133 discriminator 3 view .LVU28
	ldr	r1, .L39+16
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL7:
	.loc 1 139 260 is_stmt 1 discriminator 3 view .LVU29
	.loc 1 140 5 discriminator 3 view .LVU30
	.loc 1 140 10 is_stmt 0 discriminator 3 view .LVU31
	movs	r5, #0
.LVL8:
	.loc 1 140 10 discriminator 3 view .LVU32
	b	.L5
.LVL9:
.L6:
	.loc 1 173 5 is_stmt 1 view .LVU33
	.loc 1 173 8 is_stmt 0 view .LVU34
	vsub.f32	s15, s15, s20
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL10:
	vmov	d0, r0, r1
	bl	fabs
.LVL11:
	vmov	r4, r5, d0
	.loc 1 173 29 view .LVU35
	ldr	r0, [sp, #52]	@ float
	bl	__aeabi_f2d
.LVL12:
	.loc 1 173 27 view .LVU36
	adr	r3, .L39
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL13:
	mov	r2, r0
	mov	r3, r1
	.loc 1 173 7 view .LVU37
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dcmpgt
.LVL14:
	cbz	r0, .L29
	.loc 1 173 35 is_stmt 1 discriminator 1 view .LVU38
	vmov.f32	s0, #1.0e+0
	bl	kf_setEncoderVar
.LVL15:
	b	.L7
.L29:
	.loc 1 174 11 view .LVU39
	vldr.32	s0, .L39+20
	bl	kf_setEncoderVar
.LVL16:
	b	.L7
.L34:
	.loc 1 182 6 discriminator 3 view .LVU40
	.loc 1 182 79 discriminator 3 view .LVU41
	.loc 1 182 134 discriminator 3 view .LVU42
	.loc 1 182 215 is_stmt 0 discriminator 3 view .LVU43
	ldr	r3, .L39+12
	ldrh	r0, [r3]
	.loc 1 182 226 discriminator 3 view .LVU44
	lsls	r0, r0, #16
	.loc 1 182 265 discriminator 3 view .LVU45
	vldr.32	s14, .L39+24
	vmul.f32	s15, s0, s14
	.loc 1 182 134 discriminator 3 view .LVU46
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L39+28
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL17:
	.loc 1 182 278 is_stmt 1 discriminator 3 view .LVU47
	b	.L13
.L35:
	.loc 1 189 6 discriminator 3 view .LVU48
	.loc 1 189 79 discriminator 3 view .LVU49
	.loc 1 189 134 discriminator 3 view .LVU50
	.loc 1 189 215 is_stmt 0 discriminator 3 view .LVU51
	ldr	r3, .L39+12
	ldrh	r0, [r3]
	.loc 1 189 226 discriminator 3 view .LVU52
	lsls	r0, r0, #16
	.loc 1 189 265 discriminator 3 view .LVU53
	vldr.32	s14, .L39+24
	vmul.f32	s15, s15, s14
	.loc 1 189 134 discriminator 3 view .LVU54
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L39+32
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL18:
	.loc 1 189 278 is_stmt 1 discriminator 3 view .LVU55
	b	.L16
.L40:
	.align	3
.L39:
	.word	-1717986918
	.word	1070176665
	.word	0
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC0
	.word	1022739087
	.word	-998637568
	.word	.LC1
	.word	.LC3
.L36:
	.loc 1 196 6 discriminator 3 view .LVU56
	.loc 1 196 79 discriminator 3 view .LVU57
	.loc 1 196 134 discriminator 3 view .LVU58
	.loc 1 196 215 is_stmt 0 discriminator 3 view .LVU59
	ldr	r3, .L41+24
	ldrh	r4, [r3]
	.loc 1 196 226 discriminator 3 view .LVU60
	lsls	r4, r4, #16
	.loc 1 196 182 discriminator 3 view .LVU61
	orr	r4, r4, #3
	.loc 1 196 265 discriminator 3 view .LVU62
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL19:
	.loc 1 196 273 discriminator 3 view .LVU63
	movs	r2, #0
	ldr	r3, .L41+28
	bl	__aeabi_dmul
.LVL20:
	.loc 1 196 281 discriminator 3 view .LVU64
	adr	r3, .L41
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL21:
	.loc 1 196 134 discriminator 3 view .LVU65
	bl	__aeabi_d2uiz
.LVL22:
	mov	r2, r0
	ldr	r1, .L41+32
	mov	r0, r4
	bl	nrf_log_frontend_std_1
.LVL23:
	.loc 1 196 12 is_stmt 1 discriminator 3 view .LVU66
	.loc 1 201 11 is_stmt 0 discriminator 3 view .LVU67
	mov	r8, #0
.LVL24:
.L10:
	.loc 1 237 4 is_stmt 1 view .LVU68
	ldr	r4, .L41+36
	add	r0, r4, #8
	bl	vFunc_Inf2pi
.LVL25:
	.loc 1 238 4 view .LVU69
	ldr	r5, .L41+40
.LVL26:
	.loc 1 238 4 is_stmt 0 view .LVU70
	movs	r1, #15
	ldr	r0, [r5]
	bl	xQueueSemaphoreTake
.LVL27:
	.loc 1 239 4 is_stmt 1 view .LVU71
	.loc 1 239 25 is_stmt 0 view .LVU72
	ldr	r2, [r4, #8]	@ float
	.loc 1 239 15 view .LVU73
	ldr	r3, .L41+44
	str	r2, [r3]	@ float
	.loc 1 248 4 is_stmt 1 view .LVU74
	.loc 1 248 27 is_stmt 0 view .LVU75
	vldr.32	s15, [r4]
	.loc 1 248 29 view .LVU76
	vldr.32	s14, .L41+48
	vmul.f32	s15, s15, s14
	.loc 1 248 13 view .LVU77
	vcvt.s32.f32	s15, s15
	.loc 1 248 11 view .LVU78
	ldr	r3, .L41+52
	vmov	r2, s15	@ int
	strh	r2, [r3]	@ movhi
	.loc 1 249 4 is_stmt 1 view .LVU79
	.loc 1 249 27 is_stmt 0 view .LVU80
	vldr.32	s15, [r4, #4]
	.loc 1 249 29 view .LVU81
	vmul.f32	s15, s15, s14
	.loc 1 249 13 view .LVU82
	vcvt.s32.f32	s15, s15
	.loc 1 249 11 view .LVU83
	ldr	r3, .L41+56
	vmov	r2, s15	@ int
	strh	r2, [r3]	@ movhi
	.loc 1 250 4 is_stmt 1 view .LVU84
	.loc 1 250 10 is_stmt 0 view .LVU85
	ldr	r3, .L41+60
	vstr.32	s17, [r3]
	.loc 1 251 4 is_stmt 1 view .LVU86
	.loc 1 251 11 is_stmt 0 view .LVU87
	ldr	r3, .L41+64
	vstr.32	s16, [r3]
	.loc 1 252 4 is_stmt 1 view .LVU88
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, [r5]
	bl	xQueueGenericSend
.LVL28:
	.loc 1 260 4 view .LVU89
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, .L41+68
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL29:
.L2:
	.loc 1 260 4 is_stmt 0 view .LVU90
.LBE2:
	.loc 1 58 2 is_stmt 1 view .LVU91
	.loc 1 59 3 view .LVU92
	.loc 1 59 8 is_stmt 0 view .LVU93
	add	r8, r8, #1
.LVL30:
	.loc 1 61 3 is_stmt 1 view .LVU94
	movs	r1, #40
	add	r0, sp, #60
	bl	vTaskDelayUntil
.LVL31:
	.loc 1 62 3 view .LVU95
	.loc 1 62 7 is_stmt 0 view .LVU96
	ldr	r3, .L41+72
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 62 6 view .LVU97
	cmp	r3, #0
	beq	.L3
.LBB3:
	.loc 1 63 3 is_stmt 1 view .LVU98
.LVL32:
	.loc 1 64 3 view .LVU99
	.loc 1 65 3 view .LVU100
	.loc 1 66 3 view .LVU101
	.loc 1 70 3 view .LVU102
	ldr	r4, .L41+76
	movs	r1, #15
	ldr	r0, [r4]
	bl	xQueueSemaphoreTake
.LVL33:
	.loc 1 71 3 view .LVU103
	.loc 1 71 18 is_stmt 0 view .LVU104
	ldr	r3, .L41+80
	ldrsh	r6, [r3]
.LVL34:
	.loc 1 72 3 is_stmt 1 view .LVU105
	.loc 1 72 19 is_stmt 0 view .LVU106
	ldr	r3, .L41+84
	ldrsh	r5, [r3]
.LVL35:
	.loc 1 73 3 is_stmt 1 view .LVU107
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, [r4]
	bl	xQueueGenericSend
.LVL36:
	.loc 1 75 3 view .LVU108
	.loc 1 75 40 is_stmt 0 view .LVU109
	movs	r4, #228
	.loc 1 75 47 view .LVU110
	mul	r0, r4, r6
	bl	__aeabi_i2d
.LVL37:
	movs	r2, #0
	ldr	r3, .L41+88
	bl	__aeabi_ddiv
.LVL38:
	.loc 1 75 9 view .LVU111
	bl	__aeabi_d2f
.LVL39:
	vmov	s17, r0
.LVL40:
	.loc 1 76 3 is_stmt 1 view .LVU112
	.loc 1 76 49 is_stmt 0 view .LVU113
	mul	r0, r4, r5
.LVL41:
	.loc 1 76 49 view .LVU114
	bl	__aeabi_i2d
.LVL42:
	movs	r2, #0
	ldr	r3, .L41+88
	bl	__aeabi_ddiv
.LVL43:
	.loc 1 76 9 view .LVU115
	bl	__aeabi_d2f
.LVL44:
	vmov	s16, r0
.LVL45:
	.loc 1 77 3 is_stmt 1 view .LVU116
	.loc 1 77 19 is_stmt 0 view .LVU117
	vadd.f32	s18, s17, s16
	.loc 1 77 10 view .LVU118
	vmov.f32	s15, #5.0e-1
	vmul.f32	s18, s18, s15
.LVL46:
	.loc 1 78 3 is_stmt 1 view .LVU119
	.loc 1 79 3 view .LVU120
	.loc 1 79 20 is_stmt 0 view .LVU121
	vsub.f32	s14, s16, s17
	.loc 1 79 10 view .LVU122
	vldr.32	s15, .L41+92
	vdiv.f32	s24, s14, s15
.LVL47:
	.loc 1 82 3 is_stmt 1 view .LVU123
	.loc 1 82 7 is_stmt 0 view .LVU124
	bl	IMU_newData
.LVL48:
	.loc 1 82 6 view .LVU125
	cmp	r0, #0
	beq	.L4
	.loc 1 83 4 is_stmt 1 view .LVU126
	bl	IMU_read
.LVL49:
	.loc 1 84 4 view .LVU127
	.loc 1 84 11 is_stmt 0 view .LVU128
	bl	IMU_getGyro
.LVL50:
	ldr	r4, .L41+96
	vstr.32	s0, [r4]
	vstr.32	s1, [r4, #4]
	vstr.32	s2, [r4, #8]
	.loc 1 85 4 is_stmt 1 view .LVU129
	.loc 1 85 12 is_stmt 0 view .LVU130
	bl	IMU_getAccel
.LVL51:
	ldr	r3, .L41+100
	vstr.32	s2, [r3, #8]
	.loc 1 86 4 is_stmt 1 view .LVU131
	.loc 1 86 12 is_stmt 0 view .LVU132
	vsub.f32	s0, s0, s22
	vstr.32	s0, [r3]
	.loc 1 87 4 is_stmt 1 view .LVU133
	.loc 1 87 12 is_stmt 0 view .LVU134
	vsub.f32	s1, s1, s23
	vstr.32	s1, [r3, #4]
	.loc 1 89 4 is_stmt 1 view .LVU135
	.loc 1 89 15 is_stmt 0 view .LVU136
	vldr.32	s15, [r4, #8]
	.loc 1 89 9 view .LVU137
	vsub.f32	s15, s15, s19
	vmov	r5, s15
.LVL52:
	.loc 1 136 4 is_stmt 1 view .LVU138
	movs	r0, #10
	bl	vTaskDelay
.LVL53:
.L5:
	.loc 1 146 4 view .LVU139
	.loc 1 146 21 is_stmt 0 view .LVU140
	ldr	r4, .L41+44
	ldr	r0, [r4]	@ float
	bl	__aeabi_f2d
.LVL54:
	vmov	d0, r0, r1
	bl	cos
.LVL55:
	vmov	r0, r1, d0
	.loc 1 146 10 view .LVU141
	bl	__aeabi_d2f
.LVL56:
	vmov	s21, r0
.LVL57:
	.loc 1 147 4 is_stmt 1 view .LVU142
	.loc 1 147 21 is_stmt 0 view .LVU143
	ldr	r0, [r4]	@ float
.LVL58:
	.loc 1 147 21 view .LVU144
	bl	__aeabi_f2d
.LVL59:
	vmov	d0, r0, r1
	bl	sin
.LVL60:
	vmov	r0, r1, d0
	.loc 1 147 10 view .LVU145
	bl	__aeabi_d2f
.LVL61:
	vmov	s20, r0
.LVL62:
	.loc 1 155 4 is_stmt 1 view .LVU146
	.loc 1 155 15 is_stmt 0 view .LVU147
	vmul.f32	s15, s18, s21
	vmov	r0, s15
.LVL63:
	.loc 1 155 15 view .LVU148
	bl	__aeabi_f2d
.LVL64:
	.loc 1 155 24 view .LVU149
	adr	r3, .L41+8
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL65:
	bl	__aeabi_d2f
.LVL66:
	.loc 1 155 8 view .LVU150
	str	r0, [sp, #32]	@ float
	.loc 1 156 4 is_stmt 1 view .LVU151
	.loc 1 156 14 is_stmt 0 view .LVU152
	ldr	r3, .L41+100
	vldr.32	s25, [r3]
	.loc 1 156 16 view .LVU153
	vmul.f32	s15, s25, s21
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL67:
	.loc 1 156 25 view .LVU154
	adr	r3, .L41+16
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL68:
	bl	__aeabi_d2f
.LVL69:
	.loc 1 156 8 view .LVU155
	str	r0, [sp, #36]	@ float
	.loc 1 158 4 is_stmt 1 view .LVU156
	.loc 1 158 15 is_stmt 0 view .LVU157
	vmul.f32	s15, s18, s20
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL70:
	.loc 1 158 24 view .LVU158
	adr	r3, .L41+8
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL71:
	bl	__aeabi_d2f
.LVL72:
	.loc 1 158 8 view .LVU159
	str	r0, [sp, #40]	@ float
	.loc 1 159 4 is_stmt 1 view .LVU160
	.loc 1 159 16 is_stmt 0 view .LVU161
	vmul.f32	s15, s25, s20
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL73:
	.loc 1 159 25 view .LVU162
	adr	r3, .L41+16
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL74:
	bl	__aeabi_d2f
.LVL75:
	.loc 1 159 8 view .LVU163
	str	r0, [sp, #44]	@ float
	.loc 1 161 4 is_stmt 1 view .LVU164
	.loc 1 161 8 is_stmt 0 view .LVU165
	vmov.f32	s20, #2.5e+1
.LVL76:
	.loc 1 161 8 view .LVU166
	vmul.f32	s20, s24, s20
	vstr.32	s20, [sp, #48]
	.loc 1 162 4 is_stmt 1 view .LVU167
	.loc 1 162 13 is_stmt 0 view .LVU168
	mov	r0, r5	@ float
	bl	__aeabi_f2d
.LVL77:
	adr	r3, .L41
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL78:
	.loc 1 162 13 view .LVU169
	movs	r2, #0
	ldr	r3, .L41+104
	bl	__aeabi_ddiv
.LVL79:
	bl	__aeabi_d2f
.LVL80:
	vmov	s15, r0
	.loc 1 162 8 view .LVU170
	str	r0, [sp, #52]	@ float
	.loc 1 163 4 is_stmt 1 view .LVU171
	.loc 1 163 8 is_stmt 0 view .LVU172
	movs	r3, #0
	str	r3, [sp, #56]	@ float
	.loc 1 165 4 is_stmt 1 view .LVU173
	.loc 1 165 6 is_stmt 0 view .LVU174
	vcmp.f32	s18, #0
	vmrs	APSR_nzcv, FPSCR
	bne	.L6
	.loc 1 167 5 is_stmt 1 view .LVU175
	.loc 1 167 9 is_stmt 0 view .LVU176
	str	r3, [sp, #36]	@ float
	.loc 1 168 5 is_stmt 1 view .LVU177
	.loc 1 168 9 is_stmt 0 view .LVU178
	str	r3, [sp, #44]	@ float
	.loc 1 169 5 is_stmt 1 view .LVU179
	.loc 1 169 29 is_stmt 0 view .LVU180
	vldr.32	s14, .L41+48
	vdiv.f32	s15, s25, s14
	.loc 1 169 18 view .LVU181
	vadd.f32	s22, s22, s15
.LVL81:
.L7:
	.loc 1 177 4 is_stmt 1 view .LVU182
	add	r0, sp, #32
	bl	kf_step
.LVL82:
	.loc 1 178 4 view .LVU183
	.loc 1 178 15 is_stmt 0 view .LVU184
	bl	kalmanGetState
.LVL83:
	ldr	r3, .L41+36
	vstr.32	s0, [r3]
	vstr.32	s1, [r3, #4]
	vstr.32	s2, [r3, #8]
	.loc 1 180 4 is_stmt 1 view .LVU185
	.loc 1 180 6 is_stmt 0 view .LVU186
	cmp	r8, #200
	ble	.L10
	.loc 1 181 5 is_stmt 1 view .LVU187
	.loc 1 181 7 is_stmt 0 view .LVU188
	vcmpe.f32	s0, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L34
	.loc 1 185 6 is_stmt 1 discriminator 3 view .LVU189
	.loc 1 185 79 discriminator 3 view .LVU190
	.loc 1 185 134 discriminator 3 view .LVU191
	.loc 1 185 215 is_stmt 0 discriminator 3 view .LVU192
	ldr	r3, .L41+24
	ldrh	r0, [r3]
	.loc 1 185 226 discriminator 3 view .LVU193
	lsls	r0, r0, #16
	.loc 1 185 264 discriminator 3 view .LVU194
	vldr.32	s14, .L41+48
	vmul.f32	s15, s0, s14
	.loc 1 185 134 discriminator 3 view .LVU195
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L41+108
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL84:
.L13:
	.loc 1 185 276 is_stmt 1 discriminator 5 view .LVU196
	.loc 1 188 5 discriminator 5 view .LVU197
	.loc 1 188 16 is_stmt 0 discriminator 5 view .LVU198
	ldr	r3, .L41+36
	vldr.32	s15, [r3, #4]
	.loc 1 188 7 discriminator 5 view .LVU199
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L35
	.loc 1 192 6 is_stmt 1 discriminator 3 view .LVU200
	.loc 1 192 79 discriminator 3 view .LVU201
	.loc 1 192 134 discriminator 3 view .LVU202
	.loc 1 192 215 is_stmt 0 discriminator 3 view .LVU203
	ldr	r3, .L41+24
	ldrh	r0, [r3]
	.loc 1 192 226 discriminator 3 view .LVU204
	lsls	r0, r0, #16
	.loc 1 192 264 discriminator 3 view .LVU205
	vldr.32	s14, .L41+48
	vmul.f32	s15, s15, s14
	.loc 1 192 134 discriminator 3 view .LVU206
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	ldr	r1, .L41+112
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL85:
.L16:
	.loc 1 192 276 is_stmt 1 discriminator 5 view .LVU207
	.loc 1 195 5 discriminator 5 view .LVU208
	.loc 1 195 16 is_stmt 0 discriminator 5 view .LVU209
	ldr	r3, .L41+36
	vldr.32	s15, [r3, #8]
	.loc 1 195 7 discriminator 5 view .LVU210
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bmi	.L36
	.loc 1 199 6 is_stmt 1 discriminator 3 view .LVU211
	.loc 1 199 79 discriminator 3 view .LVU212
	.loc 1 199 134 discriminator 3 view .LVU213
	.loc 1 199 215 is_stmt 0 discriminator 3 view .LVU214
	ldr	r3, .L41+24
	ldrh	r4, [r3]
	.loc 1 199 226 discriminator 3 view .LVU215
	lsls	r4, r4, #16
	.loc 1 199 182 discriminator 3 view .LVU216
	orr	r4, r4, #3
	.loc 1 199 264 discriminator 3 view .LVU217
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL86:
	.loc 1 199 272 discriminator 3 view .LVU218
	movs	r2, #0
	ldr	r3, .L41+104
	bl	__aeabi_dmul
.LVL87:
	.loc 1 199 279 discriminator 3 view .LVU219
	adr	r3, .L41
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL88:
	.loc 1 199 134 discriminator 3 view .LVU220
	bl	__aeabi_d2uiz
.LVL89:
	mov	r2, r0
	ldr	r1, .L41+116
	mov	r0, r4
	bl	nrf_log_frontend_std_1
.LVL90:
	.loc 1 201 11 discriminator 3 view .LVU221
	mov	r8, #0
.LVL91:
	.loc 1 201 11 discriminator 3 view .LVU222
	b	.L10
.L42:
	.align	3
.L41:
	.word	1413754136
	.word	1074340347
	.word	-1717986918
	.word	1067030937
	.word	1202590843
	.word	1072724705
	.word	m_nrf_log_app_logs_data_dynamic
	.word	-1067024384
	.word	.LC5
	.word	.LANCHOR2
	.word	xPoseMutex
	.word	gTheta_hat
	.word	1148846080
	.word	gX_hat
	.word	gY_hat
	.word	gLeft
	.word	gRight
	.word	xControllerBSem
	.word	gHandshook
	.word	xTickMutex
	.word	gLeftWheelTicks
	.word	gRightWheelTicks
	.word	1081147392
	.word	1126957056
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	1080459264
	.word	.LC2
	.word	.LC4
	.word	.LC6
.LVL92:
.L3:
	.loc 1 201 11 discriminator 3 view .LVU223
.LBE3:
	.loc 1 263 4 is_stmt 1 view .LVU224
	.loc 1 263 8 is_stmt 0 view .LVU225
	ldr	r3, .L43
	ldrsb	r3, [r3]
	.loc 1 263 7 view .LVU226
	cmp	r3, #0
	beq	.L2
.LBB4:
	.loc 1 265 5 is_stmt 1 view .LVU227
	.loc 1 266 5 view .LVU228
	.loc 1 267 5 view .LVU229
.LVL93:
	.loc 1 268 5 view .LVU230
	.loc 1 269 5 view .LVU231
	.loc 1 270 5 view .LVU232
	.loc 1 271 5 view .LVU233
	.loc 1 272 5 view .LVU234
	.loc 1 274 5 view .LVU235
	movs	r0, #150
	bl	vTaskDelay
.LVL94:
	.loc 1 276 5 view .LVU236
	.loc 1 272 9 is_stmt 0 view .LVU237
	movs	r5, #0
	.loc 1 271 9 view .LVU238
	mov	r4, r5
	.loc 1 270 11 view .LVU239
	vldr.32	s16, .L43+4
	.loc 1 269 11 view .LVU240
	vmov.f32	s17, s16
	.loc 1 268 11 view .LVU241
	vmov.f32	s18, s16
	.loc 1 276 12 view .LVU242
	mov	r6, r5
	.loc 1 276 5 view .LVU243
	b	.L20
.LVL95:
.L38:
	.loc 1 276 31 is_stmt 1 discriminator 2 view .LVU244
	.loc 1 276 32 is_stmt 0 discriminator 2 view .LVU245
	adds	r6, r6, #1
.LVL96:
	.loc 1 276 32 discriminator 2 view .LVU246
	uxth	r6, r6
.LVL97:
.L20:
	.loc 1 276 17 is_stmt 1 discriminator 1 view .LVU247
	.loc 1 276 5 is_stmt 0 discriminator 1 view .LVU248
	cmp	r6, #300
	bhi	.L37
	.loc 1 277 6 is_stmt 1 view .LVU249
	bl	IMU_read
.LVL98:
	.loc 1 278 6 view .LVU250
	.loc 1 278 13 is_stmt 0 view .LVU251
	bl	IMU_getGyro
.LVL99:
	ldr	r7, .L43+8
	vstr.32	s0, [r7]
	vstr.32	s1, [r7, #4]
	vstr.32	s2, [r7, #8]
	.loc 1 279 6 is_stmt 1 view .LVU252
	.loc 1 279 14 is_stmt 0 view .LVU253
	bl	IMU_getAccel
.LVL100:
	ldr	r3, .L43+12
	vstr.32	s0, [r3]
	vstr.32	s1, [r3, #4]
	vstr.32	s2, [r3, #8]
	.loc 1 280 6 is_stmt 1 view .LVU254
	.loc 1 280 19 is_stmt 0 view .LVU255
	vldr.32	s15, [r7, #8]
	.loc 1 280 12 view .LVU256
	vadd.f32	s18, s18, s15
.LVL101:
	.loc 1 281 6 is_stmt 1 view .LVU257
	.loc 1 281 14 is_stmt 0 view .LVU258
	vadd.f32	s17, s17, s0
.LVL102:
	.loc 1 282 6 is_stmt 1 view .LVU259
	.loc 1 282 14 is_stmt 0 view .LVU260
	vadd.f32	s16, s16, s1
.LVL103:
	.loc 1 284 6 is_stmt 1 view .LVU261
	movs	r0, #40
	bl	vTaskDelay
.LVL104:
	.loc 1 285 6 view .LVU262
	mov	r3, r5
	mov	r2, r4
	ldr	r1, .L43+16
	add	r0, sp, #12
	bl	sprintf
.LVL105:
	.loc 1 286 6 view .LVU263
	add	r1, sp, #12
	movs	r0, #4
	bl	display_text_on_line
.LVL106:
	.loc 1 287 6 view .LVU264
	.loc 1 287 13 is_stmt 0 view .LVU265
	adds	r5, r5, #1
.LVL107:
	.loc 1 289 6 is_stmt 1 view .LVU266
.L21:
	.loc 1 289 12 view .LVU267
	.loc 1 289 14 is_stmt 0 view .LVU268
	bl	IMU_newData
.LVL108:
	.loc 1 289 12 view .LVU269
	cmp	r0, #0
	bne	.L38
	.loc 1 290 7 is_stmt 1 view .LVU270
	movs	r0, #20
	bl	vTaskDelay
.LVL109:
	.loc 1 291 7 view .LVU271
	.loc 1 291 12 is_stmt 0 view .LVU272
	adds	r4, r4, #1
.LVL110:
	.loc 1 292 7 is_stmt 1 view .LVU273
	mov	r3, r5
	mov	r2, r4
	ldr	r1, .L43+16
	add	r0, sp, #12
	bl	sprintf
.LVL111:
	.loc 1 293 7 view .LVU274
	add	r1, sp, #12
	movs	r0, #4
	bl	display_text_on_line
.LVL112:
	b	.L21
.L37:
	.loc 1 296 5 discriminator 3 view .LVU275
	.loc 1 296 78 discriminator 3 view .LVU276
	.loc 1 296 133 discriminator 3 view .LVU277
	.loc 1 296 214 is_stmt 0 discriminator 3 view .LVU278
	ldr	r4, .L43+20
.LVL113:
	.loc 1 296 214 discriminator 3 view .LVU279
	ldrh	r0, [r4]
	.loc 1 296 225 discriminator 3 view .LVU280
	lsls	r0, r0, #16
	.loc 1 296 133 discriminator 3 view .LVU281
	vcvt.u32.f32	s19, s19
.LVL114:
	.loc 1 296 133 discriminator 3 view .LVU282
	vstr.32	s19, [sp]	@ int
	vcvt.u32.f32	s15, s17
	vmov	r3, s15	@ int
	vcvt.u32.f32	s15, s18
	vmov	r2, s15	@ int
	ldr	r1, .L43+24
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_3
.LVL115:
	.loc 1 296 327 is_stmt 1 discriminator 3 view .LVU283
	.loc 1 297 5 discriminator 3 view .LVU284
	.loc 1 297 26 is_stmt 0 discriminator 3 view .LVU285
	vmov	s15, r6	@ int
	vcvt.f32.u32	s15, s15
	.loc 1 297 16 discriminator 3 view .LVU286
	vdiv.f32	s19, s18, s15
.LVL116:
	.loc 1 298 5 is_stmt 1 discriminator 3 view .LVU287
	.loc 1 298 18 is_stmt 0 discriminator 3 view .LVU288
	vdiv.f32	s22, s17, s15
.LVL117:
	.loc 1 299 5 is_stmt 1 discriminator 3 view .LVU289
	.loc 1 299 18 is_stmt 0 discriminator 3 view .LVU290
	vdiv.f32	s23, s16, s15
.LVL118:
	.loc 1 300 5 is_stmt 1 discriminator 3 view .LVU291
	.loc 1 300 19 is_stmt 0 discriminator 3 view .LVU292
	ldr	r3, .L43
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 302 5 is_stmt 1 discriminator 3 view .LVU293
	.loc 1 302 78 discriminator 3 view .LVU294
	.loc 1 302 133 discriminator 3 view .LVU295
	.loc 1 302 214 is_stmt 0 discriminator 3 view .LVU296
	ldrh	r0, [r4]
	.loc 1 302 225 discriminator 3 view .LVU297
	lsls	r0, r0, #16
	.loc 1 302 133 discriminator 3 view .LVU298
	vcvt.u32.f32	s15, s19
	vstr.32	s15, [sp]	@ int
	vcvt.u32.f32	s15, s23
	vmov	r3, s15	@ int
	vcvt.u32.f32	s15, s22
	vmov	r2, s15	@ int
	ldr	r1, .L43+28
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_3
.LVL119:
	.loc 1 302 336 is_stmt 1 discriminator 3 view .LVU299
	.loc 1 304 5 discriminator 3 view .LVU300
	.loc 1 304 8 is_stmt 0 discriminator 3 view .LVU301
	ldr	r3, .L43+32
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 304 7 discriminator 3 view .LVU302
	cmp	r3, #0
	bne	.L2
	.loc 1 305 6 is_stmt 1 view .LVU303
	.loc 1 305 17 is_stmt 0 view .LVU304
	ldr	r3, .L43+36
	movs	r2, #1
	strb	r2, [r3]
	b	.L2
.L44:
	.align	2
.L43:
	.word	.LANCHOR3
	.word	0
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LC7
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC8
	.word	.LC9
	.word	USEBLUETOOTH
	.word	gHandshook
.LBE4:
.LFE212:
	.size	vMainPoseEstimatorTask, .-vMainPoseEstimatorTask
	.global	kf_state
	.global	accel
	.global	gyro
	.global	gyroBiasGuard
	.section	.bss.accel,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	accel, %object
	.size	accel, 12
accel:
	.space	12
	.section	.bss.gyro,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	gyro, %object
	.size	gyro, 12
gyro:
	.space	12
	.section	.bss.kf_state,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	kf_state, %object
	.size	kf_state, 12
kf_state:
	.space	12
	.section	.data.gyroBiasGuard,"aw"
	.set	.LANCHOR3,. + 0
	.type	gyroBiasGuard, %object
	.size	gyroBiasGuard, 1
gyroBiasGuard:
	.byte	1
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
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.byte	0x4
	.4byte	.LCFI0-.LFB212
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
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x40
	.byte	0x5
	.uleb128 0x50
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x51
	.uleb128 0xf
	.byte	0x5
	.uleb128 0x52
	.uleb128 0xe
	.byte	0x5
	.uleb128 0x53
	.uleb128 0xd
	.byte	0x5
	.uleb128 0x54
	.uleb128 0xc
	.byte	0x5
	.uleb128 0x55
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x56
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x57
	.uleb128 0x9
	.byte	0x5
	.uleb128 0x58
	.uleb128 0x8
	.byte	0x5
	.uleb128 0x59
	.uleb128 0x7
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x80
	.align	2
.LEFDE0:
	.text
.Letext0:
	.file 2 "../../../../../../external/thedotfactory_fonts/nrf_font.h"
	.file 3 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.section	.debug_types,"G",%progbits,wt.6d34a0415199c3c2,comdat
	.4byte	0xab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x6d
	.byte	0x34
	.byte	0xa0
	.byte	0x41
	.byte	0x51
	.byte	0x99
	.byte	0xc3
	.byte	0xc2
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x2
	.byte	0x30
	.byte	0x9
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x32
	.byte	0xd
	.4byte	0x75
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x33
	.byte	0xd
	.4byte	0x75
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x34
	.byte	0xd
	.4byte	0x75
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x35
	.byte	0xd
	.4byte	0x75
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x36
	.byte	0x1c
	.4byte	0x81
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x37
	.byte	0x15
	.4byte	0x87
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x8d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x94
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	0x9e
	.uleb128 0x7
	.4byte	0x75
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2b
	.byte	0x2
	.byte	0x45
	.byte	0xc6
	.byte	0x59
	.byte	0x45
	.byte	0x56
	.byte	0x1c
	.byte	0x14
	.byte	0x2e
	.byte	0
	.section	.debug_types,"G",%progbits,wt.45c65945561c142e,comdat
	.4byte	0x64
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x45
	.byte	0xc6
	.byte	0x59
	.byte	0x45
	.byte	0x56
	.byte	0x1c
	.byte	0x14
	.byte	0x2e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x2
	.byte	0x27
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x29
	.byte	0xd
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2a
	.byte	0xe
	.4byte	0x4d
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x59
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x60
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.file 4 "../../../../../../components/libraries/gfx/nrf_lcd.h"
	.file 5 "../../../../../../components/libraries/util/sdk_errors.h"
	.section	.debug_types,"G",%progbits,wt.bfa29850fc615d03,comdat
	.4byte	0x15f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xbf
	.byte	0xa2
	.byte	0x98
	.byte	0x50
	.byte	0xfc
	.byte	0x61
	.byte	0x5d
	.byte	0x3
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x20
	.byte	0x4
	.byte	0x51
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x56
	.byte	0x13
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x5b
	.byte	0xd
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x64
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6f
	.byte	0xd
	.4byte	0xa1
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x78
	.byte	0xd
	.4byte	0x95
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7f
	.byte	0xd
	.4byte	0xa7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x86
	.byte	0xd
	.4byte	0xad
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x8b
	.byte	0x10
	.4byte	0xb3
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd4
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf3
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfe
	.uleb128 0x5
	.byte	0x4
	.4byte	0x109
	.uleb128 0x9
	.4byte	0x119
	.uleb128 0xa
	.uleb128 0xb
	.4byte	0xd4
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x131
	.byte	0
	.uleb128 0xb
	.4byte	0xf3
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x131
	.byte	0
	.uleb128 0xb
	.4byte	0xfe
	.uleb128 0xc
	.4byte	0x13d
	.byte	0
	.uleb128 0xb
	.4byte	0x109
	.uleb128 0xc
	.4byte	0x14d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4a
	.byte	0x2
	.byte	0xa9
	.byte	0x11
	.byte	0x20
	.byte	0xd2
	.byte	0x41
	.byte	0xb4
	.byte	0x7d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x9e
	.byte	0x12
	.4byte	0x131
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x154
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x15b
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3f
	.byte	0x2
	.byte	0x95
	.byte	0xe6
	.byte	0x1d
	.byte	0x40
	.byte	0x34
	.byte	0x40
	.byte	0x28
	.byte	0x22
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.byte	0
	.file 6 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.section	.debug_types,"G",%progbits,wt.a91120d241b47d93,comdat
	.4byte	0x8b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xa9
	.byte	0x11
	.byte	0x20
	.byte	0xd2
	.byte	0x41
	.byte	0xb4
	.byte	0x7d
	.byte	0x93
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.byte	0x44
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x16
	.4byte	0x5b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.byte	0x47
	.byte	0xe
	.4byte	0x6b
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.4byte	0x6b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x18
	.4byte	0x77
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x6
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
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x87
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3f
	.byte	0x2
	.byte	0x95
	.byte	0xe6
	.byte	0x1d
	.byte	0x40
	.byte	0x34
	.byte	0x40
	.byte	0x28
	.byte	0x22
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.95e61d4034402822,comdat
	.4byte	0x48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x95
	.byte	0xe6
	.byte	0x1d
	.byte	0x40
	.byte	0x34
	.byte	0x40
	.byte	0x28
	.byte	0x22
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x4
	.byte	0x3a
	.byte	0xd
	.4byte	0x44
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
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
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x6
	.byte	0xad
	.byte	0x1
	.4byte	0x3e
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0
	.file 7 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\software\\kalmanFilter.h"
	.section	.debug_types,"G",%progbits,wt.427da6c4a449f5e8,comdat
	.4byte	0x4e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x42
	.byte	0x7d
	.byte	0xa6
	.byte	0xc4
	.byte	0xa4
	.byte	0x49
	.byte	0xf5
	.byte	0xe8
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x7
	.byte	0xd
	.byte	0x9
	.4byte	0x4a
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0x7
	.byte	0xe
	.byte	0x7
	.4byte	0x4a
	.byte	0
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0x7
	.byte	0xf
	.byte	0x7
	.4byte	0x4a
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0x10
	.byte	0x7
	.4byte	0x4a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF39
	.byte	0
	.file 8 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
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
	.4byte	.LASF40
	.byte	0x8
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x8
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
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
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x8
	.byte	0x31
	.byte	0x1
	.4byte	0x50
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF46
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0
	.file 9 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
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
	.byte	0x9
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x9
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x9
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0x10
	.4byte	0x4b
	.uleb128 0x10
	.4byte	0x5b
	.uleb128 0x11
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0x12
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.byte	0
	.file 10 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x8
	.byte	0xa
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0xa
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0xa
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0xa
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x61
	.uleb128 0x16
	.4byte	0x70
	.4byte	0x70
	.uleb128 0xc
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.4byte	0x82
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF53
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
	.uleb128 0x18
	.4byte	.LASF55
	.byte	0x14
	.byte	0xa
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0xa
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x12
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x55
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x7
	.4byte	0x5a
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0xa
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
	.byte	0xa
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xa
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0xa
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xa
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
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF53
	.uleb128 0x8
	.4byte	.LASF60
	.byte	0xa
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
	.4byte	.LASF61
	.byte	0xa
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
	.byte	0xa
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xa
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xa
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xa
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xa
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xa
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xa
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xa
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xa
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
	.uleb128 0x16
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0xc
	.4byte	0x130
	.uleb128 0xc
	.4byte	0x130
	.byte	0
	.uleb128 0x16
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0xc
	.4byte	0x130
	.byte	0
	.uleb128 0x16
	.4byte	0x130
	.4byte	0xea
	.uleb128 0xc
	.4byte	0x137
	.uleb128 0xc
	.4byte	0x130
	.byte	0
	.uleb128 0x16
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0xc
	.4byte	0x137
	.byte	0
	.uleb128 0x16
	.4byte	0x130
	.4byte	0x112
	.uleb128 0xc
	.4byte	0x13e
	.uleb128 0xc
	.4byte	0x144
	.uleb128 0xc
	.4byte	0x14b
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF70
	.uleb128 0x5
	.byte	0x4
	.4byte	0x161
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x19
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
	.4byte	.LASF53
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
	.byte	0xa
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xa
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xa
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xa
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xa
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xa
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xa
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xa
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xa
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0xa
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xa
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xa
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0xa
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xa
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xa
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0xa
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0xa
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0xa
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xa
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0xa
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xa
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0xa
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0xa
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xa
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0xa
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0xa
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xa
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0xa
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0xa
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0xa
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0xa
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0xa
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0xa
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
	.4byte	.LASF53
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
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x8
	.byte	0xa
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xa
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xa
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF70
	.byte	0
	.file 11 "../../../drivers/MPU6050.h"
	.section	.debug_types,"G",%progbits,wt.19672b919b6a58e3,comdat
	.4byte	0x4c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x19
	.byte	0x67
	.byte	0x2b
	.byte	0x91
	.byte	0x9b
	.byte	0x6a
	.byte	0x58
	.byte	0xe3
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0xb
	.byte	0xd
	.byte	0x9
	.4byte	0x48
	.uleb128 0xf
	.ascii	"x\000"
	.byte	0xb
	.byte	0xe
	.byte	0x8
	.4byte	0x48
	.byte	0
	.uleb128 0xf
	.ascii	"y\000"
	.byte	0xb
	.byte	0xf
	.byte	0x8
	.4byte	0x48
	.byte	0x4
	.uleb128 0xf
	.ascii	"z\000"
	.byte	0xb
	.byte	0x10
	.byte	0x8
	.4byte	0x48
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF39
	.byte	0
	.file 12 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 13 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 14 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 15 "../../../../../../components/libraries/util/app_util.h"
	.file 16 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
	.file 17 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 18 "../../../../../../external/freertos/source/include/queue.h"
	.file 19 "../../../../../../external/freertos/source/include/semphr.h"
	.file 20 "../../../../../../external/freertos/source/include/task.h"
	.file 21 "../../../../../../components/libraries/gfx/nrf_gfx.h"
	.file 22 "../../../drivers/display.h"
	.file 23 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\software\\globals.h"
	.file 24 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.file 25 "../../../drivers/functions.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xc9d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1a
	.4byte	.LASF242
	.byte	0xc
	.4byte	.LASF243
	.4byte	.LASF244
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF39
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x4
	.4byte	.LASF106
	.byte	0x3
	.byte	0x2f
	.byte	0x15
	.4byte	0x43
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF107
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x56
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF108
	.byte	0x3
	.byte	0x35
	.byte	0x16
	.4byte	0x6e
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF109
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x81
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF110
	.byte	0x3
	.byte	0x37
	.byte	0x14
	.4byte	0x99
	.uleb128 0x10
	.4byte	0x88
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x30
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF111
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF112
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0xb
	.byte	0x11
	.byte	0x3
	.byte	0x19
	.byte	0x67
	.byte	0x2b
	.byte	0x91
	.byte	0x9b
	.byte	0x6a
	.byte	0x58
	.byte	0xe3
	.uleb128 0x1b
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF70
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF53
	.uleb128 0x7
	.4byte	0xd3
	.uleb128 0x8
	.4byte	.LASF61
	.byte	0xa
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
	.4byte	0xdf
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0xa
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
	.4byte	0xf4
	.uleb128 0x1c
	.4byte	.LASF114
	.byte	0xa
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
	.uleb128 0x1d
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x10d
	.byte	0x1d
	.4byte	0x104
	.uleb128 0x1d
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x110
	.byte	0x25
	.4byte	0xef
	.uleb128 0x1d
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x111
	.byte	0x25
	.4byte	0xef
	.uleb128 0x11
	.4byte	0x5d
	.4byte	0x151
	.uleb128 0x12
	.4byte	0x30
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.4byte	0x141
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x113
	.byte	0x1c
	.4byte	0x151
	.uleb128 0x11
	.4byte	0xda
	.4byte	0x16e
	.uleb128 0x1e
	.byte	0
	.uleb128 0x7
	.4byte	0x163
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x115
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x116
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x117
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x118
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0xa
	.2byte	0x11a
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x11b
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0xa
	.2byte	0x11c
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0xa
	.2byte	0x11d
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0xa
	.2byte	0x11e
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0xa
	.2byte	0x11f
	.byte	0x13
	.4byte	0x16e
	.uleb128 0x16
	.4byte	0x99
	.4byte	0x204
	.uleb128 0xc
	.4byte	0x204
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x20f
	.uleb128 0x1f
	.4byte	.LASF138
	.uleb128 0x7
	.4byte	0x20a
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0xa
	.2byte	0x135
	.byte	0xe
	.4byte	0x221
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1f5
	.uleb128 0x16
	.4byte	0x99
	.4byte	0x236
	.uleb128 0xc
	.4byte	0x236
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x20a
	.uleb128 0x1d
	.4byte	.LASF130
	.byte	0xa
	.2byte	0x136
	.byte	0xe
	.4byte	0x249
	.uleb128 0x5
	.byte	0x4
	.4byte	0x227
	.uleb128 0x20
	.4byte	.LASF131
	.byte	0xa
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
	.uleb128 0x1d
	.4byte	.LASF132
	.byte	0xa
	.2byte	0x157
	.byte	0x1f
	.4byte	0x26d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x24f
	.uleb128 0x1d
	.4byte	.LASF133
	.byte	0xc
	.2byte	0x744
	.byte	0x19
	.4byte	0x94
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0xd
	.byte	0x21
	.byte	0x11
	.4byte	0xa0
	.uleb128 0x8
	.4byte	.LASF135
	.byte	0x9
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
	.uleb128 0x21
	.4byte	.LASF136
	.byte	0x9
	.byte	0x75
	.byte	0x19
	.4byte	0x28c
	.uleb128 0x15
	.4byte	.LASF137
	.byte	0xe
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2b5
	.uleb128 0x1f
	.4byte	.LASF139
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0xe
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2c7
	.uleb128 0x5
	.byte	0x4
	.4byte	0x2a8
	.uleb128 0x1d
	.4byte	.LASF141
	.byte	0xe
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2c7
	.uleb128 0x1d
	.4byte	.LASF142
	.byte	0xe
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2c7
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF143
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0xf
	.byte	0x53
	.byte	0x11
	.4byte	0xa0
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0xf
	.byte	0x54
	.byte	0x11
	.4byte	0xa0
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0xf
	.byte	0x72
	.byte	0x13
	.4byte	0x312
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa0
	.uleb128 0x21
	.4byte	.LASF147
	.byte	0xf
	.byte	0x73
	.byte	0x11
	.4byte	0xa0
	.uleb128 0x4
	.4byte	.LASF148
	.byte	0x10
	.byte	0x39
	.byte	0xe
	.4byte	0xcc
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0x10
	.byte	0x40
	.byte	0x16
	.4byte	0xa0
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.4byte	.LASF150
	.uleb128 0x8
	.4byte	.LASF151
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
	.uleb128 0x1d
	.4byte	.LASF152
	.byte	0x11
	.2byte	0x124
	.byte	0x2e
	.4byte	0x343
	.uleb128 0x4
	.4byte	.LASF153
	.byte	0x12
	.byte	0x2f
	.byte	0x10
	.4byte	0xca
	.uleb128 0x4
	.4byte	.LASF154
	.byte	0x13
	.byte	0x26
	.byte	0x17
	.4byte	0x360
	.uleb128 0x4
	.4byte	.LASF155
	.byte	0x14
	.byte	0x3e
	.byte	0x10
	.4byte	0xca
	.uleb128 0x8
	.4byte	.LASF27
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x42
	.byte	0x7d
	.byte	0xa6
	.byte	0xc4
	.byte	0xa4
	.byte	0x49
	.byte	0xf5
	.byte	0xe8
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4a
	.byte	0x2
	.byte	0xa9
	.byte	0x11
	.byte	0x20
	.byte	0xd2
	.byte	0x41
	.byte	0xb4
	.byte	0x7d
	.byte	0x93
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x8
	.4byte	.LASF156
	.byte	0x4
	.byte	0x8c
	.byte	0x2
	.byte	0xbf
	.byte	0xa2
	.byte	0x98
	.byte	0x50
	.byte	0xfc
	.byte	0x61
	.byte	0x5d
	.byte	0x3
	.uleb128 0x7
	.4byte	0x3ab
	.uleb128 0x8
	.4byte	.LASF157
	.byte	0x2
	.byte	0x38
	.byte	0x2
	.byte	0x6d
	.byte	0x34
	.byte	0xa0
	.byte	0x41
	.byte	0x51
	.byte	0x99
	.byte	0xc3
	.byte	0xc2
	.uleb128 0x4
	.4byte	.LASF158
	.byte	0x15
	.byte	0x92
	.byte	0x13
	.4byte	0x3c0
	.uleb128 0x7
	.4byte	0x3d0
	.uleb128 0x21
	.4byte	.LASF159
	.byte	0x16
	.byte	0x13
	.byte	0x22
	.4byte	0x3dc
	.uleb128 0x21
	.4byte	.LASF160
	.byte	0x16
	.byte	0x14
	.byte	0x16
	.4byte	0x360
	.uleb128 0x22
	.4byte	.LASF195
	.byte	0x16
	.byte	0x3a
	.byte	0x11
	.4byte	0x394
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3f
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF161
	.byte	0x16
	.byte	0x42
	.byte	0x18
	.4byte	0x3bb
	.uleb128 0x21
	.4byte	.LASF162
	.byte	0x17
	.byte	0x11
	.byte	0x15
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x17
	.byte	0x12
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF164
	.byte	0x17
	.byte	0x13
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF165
	.byte	0x17
	.byte	0x14
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF166
	.byte	0x17
	.byte	0x15
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF167
	.byte	0x17
	.byte	0x16
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF168
	.byte	0x17
	.byte	0x17
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF169
	.byte	0x17
	.byte	0x18
	.byte	0x5
	.4byte	0x378
	.uleb128 0x21
	.4byte	.LASF170
	.byte	0x17
	.byte	0x1b
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF171
	.byte	0x17
	.byte	0x1c
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF172
	.byte	0x17
	.byte	0x1d
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF173
	.byte	0x17
	.byte	0x1e
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF174
	.byte	0x17
	.byte	0x1f
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF175
	.byte	0x17
	.byte	0x20
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF176
	.byte	0x17
	.byte	0x21
	.byte	0x1a
	.4byte	0x36c
	.uleb128 0x21
	.4byte	.LASF177
	.byte	0x17
	.byte	0x25
	.byte	0x16
	.4byte	0x360
	.uleb128 0x21
	.4byte	.LASF178
	.byte	0x17
	.byte	0x26
	.byte	0x16
	.4byte	0x360
	.uleb128 0x21
	.4byte	.LASF179
	.byte	0x17
	.byte	0x27
	.byte	0x16
	.4byte	0x360
	.uleb128 0x21
	.4byte	.LASF180
	.byte	0x17
	.byte	0x2a
	.byte	0x10
	.4byte	0x4a
	.uleb128 0x21
	.4byte	.LASF181
	.byte	0x17
	.byte	0x2b
	.byte	0x10
	.4byte	0x4a
	.uleb128 0x21
	.4byte	.LASF182
	.byte	0x17
	.byte	0x2d
	.byte	0x10
	.4byte	0x4a
	.uleb128 0x21
	.4byte	.LASF183
	.byte	0x17
	.byte	0x30
	.byte	0xe
	.4byte	0x29
	.uleb128 0x21
	.4byte	.LASF184
	.byte	0x17
	.byte	0x31
	.byte	0x10
	.4byte	0x62
	.uleb128 0x21
	.4byte	.LASF185
	.byte	0x17
	.byte	0x32
	.byte	0x10
	.4byte	0x62
	.uleb128 0x21
	.4byte	.LASF186
	.byte	0x17
	.byte	0x33
	.byte	0xe
	.4byte	0x29
	.uleb128 0x21
	.4byte	.LASF187
	.byte	0x17
	.byte	0x34
	.byte	0xe
	.4byte	0x29
	.uleb128 0x21
	.4byte	.LASF188
	.byte	0x17
	.byte	0x37
	.byte	0x10
	.4byte	0x62
	.uleb128 0x21
	.4byte	.LASF189
	.byte	0x17
	.byte	0x38
	.byte	0x10
	.4byte	0x62
	.uleb128 0x23
	.4byte	.LASF190
	.byte	0x1
	.byte	0x19
	.byte	0x8
	.4byte	0x37
	.uleb128 0x5
	.byte	0x3
	.4byte	gyroBiasGuard
	.uleb128 0x23
	.4byte	.LASF191
	.byte	0x1
	.byte	0x1a
	.byte	0xf
	.4byte	0xba
	.uleb128 0x5
	.byte	0x3
	.4byte	gyro
	.uleb128 0x23
	.4byte	.LASF192
	.byte	0x1
	.byte	0x1b
	.byte	0xf
	.4byte	0xba
	.uleb128 0x5
	.byte	0x3
	.4byte	accel
	.uleb128 0x23
	.4byte	.LASF193
	.byte	0x1
	.byte	0x1c
	.byte	0x7
	.4byte	0x384
	.uleb128 0x5
	.byte	0x3
	.4byte	kf_state
	.uleb128 0x24
	.4byte	.LASF245
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb6d
	.uleb128 0x25
	.4byte	.LASF246
	.byte	0x1
	.byte	0x20
	.byte	0x23
	.4byte	0xca
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x26
	.4byte	.LASF194
	.byte	0x1
	.byte	0x21
	.byte	0x6
	.4byte	0x99
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x22
	.4byte	.LASF196
	.byte	0x1
	.byte	0x22
	.byte	0x8
	.4byte	0x29
	.byte	0x4
	.4byte	0x3d23d70a
	.uleb128 0x26
	.4byte	.LASF197
	.byte	0x1
	.byte	0x23
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x26
	.4byte	.LASF198
	.byte	0x1
	.byte	0x24
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x26
	.4byte	.LASF199
	.byte	0x1
	.byte	0x25
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x22
	.4byte	.LASF200
	.byte	0x1
	.byte	0x26
	.byte	0x8
	.4byte	0x29
	.byte	0x4
	.4byte	0
	.uleb128 0x27
	.4byte	.LASF201
	.byte	0x1
	.byte	0x28
	.byte	0x6
	.4byte	0x99
	.byte	0
	.uleb128 0x27
	.4byte	.LASF202
	.byte	0x1
	.byte	0x29
	.byte	0x6
	.4byte	0x99
	.byte	0
	.uleb128 0x27
	.4byte	.LASF203
	.byte	0x1
	.byte	0x2a
	.byte	0x6
	.4byte	0x99
	.byte	0
	.uleb128 0x26
	.4byte	.LASF204
	.byte	0x1
	.byte	0x32
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x28
	.4byte	.LASF205
	.byte	0x1
	.byte	0x35
	.byte	0xd
	.4byte	0x330
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x26
	.4byte	.LASF206
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.4byte	0x330
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x29
	.ascii	"Z\000"
	.byte	0x1
	.byte	0x37
	.byte	0x8
	.4byte	0xb6d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2a
	.4byte	.Ldebug_ranges0+0
	.4byte	0x943
	.uleb128 0x26
	.4byte	.LASF207
	.byte	0x1
	.byte	0x3f
	.byte	0xb
	.4byte	0x62
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x26
	.4byte	.LASF208
	.byte	0x1
	.byte	0x40
	.byte	0xb
	.4byte	0x62
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x26
	.4byte	.LASF209
	.byte	0x1
	.byte	0x41
	.byte	0x9
	.4byte	0x29
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x26
	.4byte	.LASF210
	.byte	0x1
	.byte	0x42
	.byte	0x9
	.4byte	0x29
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x26
	.4byte	.LASF211
	.byte	0x1
	.byte	0x4b
	.byte	0x9
	.4byte	0x29
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x26
	.4byte	.LASF212
	.byte	0x1
	.byte	0x4c
	.byte	0x9
	.4byte	0x29
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x26
	.4byte	.LASF213
	.byte	0x1
	.byte	0x92
	.byte	0xa
	.4byte	0x29
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x26
	.4byte	.LASF214
	.byte	0x1
	.byte	0x93
	.byte	0xa
	.4byte	0x29
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x2b
	.4byte	.LVL7
	.4byte	0xb8d
	.4byte	0x77b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL11
	.4byte	0xb9a
	.uleb128 0x2b
	.4byte	.LVL15
	.4byte	0xba7
	.4byte	0x79e
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3f800000
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL16
	.4byte	0xba7
	.4byte	0x7b8
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x7
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.4byte	0x3cf5c28f
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL17
	.4byte	0xbb3
	.4byte	0x7cf
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL18
	.4byte	0xbb3
	.4byte	0x7e6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL23
	.4byte	0xbb3
	.4byte	0x803
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL25
	.4byte	0xbc0
	.4byte	0x817
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL27
	.4byte	0xbcc
	.4byte	0x82a
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL28
	.4byte	0xbd9
	.4byte	0x847
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL29
	.4byte	0xbd9
	.4byte	0x864
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL33
	.4byte	0xbcc
	.4byte	0x877
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x3f
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL36
	.4byte	0xbd9
	.4byte	0x894
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL48
	.4byte	0xbe6
	.uleb128 0x2d
	.4byte	.LVL49
	.4byte	0xbf2
	.uleb128 0x2d
	.4byte	.LVL50
	.4byte	0xbfe
	.uleb128 0x2d
	.4byte	.LVL51
	.4byte	0xc0a
	.uleb128 0x2b
	.4byte	.LVL53
	.4byte	0xc16
	.4byte	0x8cb
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL55
	.4byte	0xc23
	.uleb128 0x2d
	.4byte	.LVL60
	.4byte	0xc30
	.uleb128 0x2b
	.4byte	.LVL82
	.4byte	0xc3d
	.4byte	0x8f2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL83
	.4byte	0xc49
	.uleb128 0x2b
	.4byte	.LVL84
	.4byte	0xbb3
	.4byte	0x912
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL85
	.4byte	0xbb3
	.4byte	0x929
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL90
	.4byte	0xbb3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0xb34
	.uleb128 0x30
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x109
	.byte	0xa
	.4byte	0xb7d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x31
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x10a
	.byte	0xe
	.4byte	0x75
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x32
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x10b
	.byte	0xe
	.4byte	0x75
	.2byte	0x12c
	.uleb128 0x33
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x10c
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x33
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x10d
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x33
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x10e
	.byte	0xb
	.4byte	0x29
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x33
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x10f
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x33
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x110
	.byte	0x9
	.4byte	0x99
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x2b
	.4byte	.LVL94
	.4byte	0xc16
	.4byte	0xa00
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x96
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL98
	.4byte	0xbf2
	.uleb128 0x2d
	.4byte	.LVL99
	.4byte	0xbfe
	.uleb128 0x2d
	.4byte	.LVL100
	.4byte	0xc0a
	.uleb128 0x2b
	.4byte	.LVL104
	.4byte	0xc16
	.4byte	0xa2f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL105
	.4byte	0xc55
	.4byte	0xa59
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL106
	.4byte	0xc61
	.4byte	0xa73
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL108
	.4byte	0xbe6
	.uleb128 0x2b
	.4byte	.LVL109
	.4byte	0xc16
	.4byte	0xa8f
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL111
	.4byte	0xc55
	.4byte	0xab9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL112
	.4byte	0xc61
	.4byte	0xad3
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL115
	.4byte	0xc6d
	.4byte	0xb04
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x52
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x51
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x3
	.byte	0x92
	.uleb128 0x53
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL119
	.4byte	0xc6d
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x56
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x57
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.uleb128 0x2c
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x5
	.byte	0xf5
	.uleb128 0x53
	.uleb128 0x29
	.byte	0xf7
	.uleb128 0x30
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL2
	.4byte	0xc7a
	.uleb128 0x2b
	.4byte	.LVL5
	.4byte	0xc87
	.4byte	0xb55
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x37
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2e
	.4byte	.LVL31
	.4byte	0xc93
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x28
	.byte	0
	.byte	0
	.uleb128 0x11
	.4byte	0x29
	.4byte	0xb7d
	.uleb128 0x12
	.4byte	0x30
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	0xd3
	.4byte	0xb8d
	.uleb128 0x12
	.4byte	0x30
	.byte	0x13
	.byte	0
	.uleb128 0x34
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x11
	.2byte	0x1ab
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x18
	.2byte	0x3c8
	.byte	0x8
	.uleb128 0x35
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0x7
	.byte	0x1b
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x11
	.2byte	0x1b4
	.byte	0x6
	.uleb128 0x35
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x19
	.byte	0xe
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x12
	.2byte	0x589
	.byte	0xc
	.uleb128 0x34
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x12
	.2byte	0x289
	.byte	0xc
	.uleb128 0x35
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xb
	.byte	0x1a
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0xb
	.byte	0x19
	.byte	0x6
	.uleb128 0x35
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0xb
	.byte	0x22
	.byte	0xf
	.uleb128 0x35
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0xb
	.byte	0x23
	.byte	0xf
	.uleb128 0x34
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x14
	.2byte	0x2ee
	.byte	0x6
	.uleb128 0x36
	.ascii	"cos\000"
	.ascii	"cos\000"
	.byte	0x18
	.2byte	0x125
	.byte	0x8
	.uleb128 0x36
	.ascii	"sin\000"
	.ascii	"sin\000"
	.byte	0x18
	.2byte	0x144
	.byte	0x8
	.uleb128 0x35
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0x7
	.byte	0x15
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0x7
	.byte	0x17
	.byte	0x7
	.uleb128 0x35
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0xe
	.byte	0x87
	.byte	0x5
	.uleb128 0x35
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0x16
	.byte	0x66
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0x11
	.2byte	0x1cb
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x14
	.2byte	0x53f
	.byte	0xc
	.uleb128 0x35
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x7
	.byte	0x13
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0x14
	.2byte	0x329
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x20
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0xb
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x5
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-1
	.4byte	.LFE212
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU3
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU222
	.uleb128 .LVU223
	.uleb128 0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL6
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL92
	.4byte	.LFE212
	.2byte	0x1
	.byte	0x58
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU5
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL6
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x56
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU6
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 0
.LLST3:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL6
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x57
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU7
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU282
	.uleb128 .LVU287
	.uleb128 0
.LLST4:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL6
	.4byte	.LVL114
	.2byte	0x2
	.byte	0x90
	.uleb128 0x53
	.4byte	.LVL116
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x53
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU12
	.uleb128 .LVU23
	.uleb128 .LVU31
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 .LVU70
	.uleb128 .LVU138
	.uleb128 .LVU223
.LLST5:
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL7
	.4byte	.LVL9
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL9
	.4byte	.LVL26
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL52
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU16
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU19
.LLST6:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x3
	.byte	0x91
	.sleb128 -68
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU23
	.uleb128 .LVU90
	.uleb128 .LVU99
	.uleb128 .LVU105
	.uleb128 .LVU105
	.uleb128 .LVU223
.LLST7:
	.4byte	.LVL6
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL32
	.4byte	.LVL34
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU23
	.uleb128 .LVU32
	.uleb128 .LVU100
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU138
.LLST8:
	.4byte	.LVL6
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LVL35
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL35
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU23
	.uleb128 .LVU90
	.uleb128 .LVU101
	.uleb128 .LVU119
	.uleb128 .LVU119
	.uleb128 .LVU223
.LLST9:
	.4byte	.LVL6
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	.LVL32
	.4byte	.LVL46
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL46
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU23
	.uleb128 .LVU90
	.uleb128 .LVU102
	.uleb128 .LVU123
	.uleb128 .LVU123
	.uleb128 .LVU223
.LLST10:
	.4byte	.LVL6
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.4byte	.LVL32
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL47
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x90
	.uleb128 0x58
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU23
	.uleb128 .LVU90
	.uleb128 .LVU112
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU223
.LLST11:
	.4byte	.LVL6
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL41
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU23
	.uleb128 .LVU90
	.uleb128 .LVU116
	.uleb128 .LVU125
	.uleb128 .LVU125
	.uleb128 .LVU223
.LLST12:
	.4byte	.LVL6
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL45
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL48-1
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU33
	.uleb128 .LVU90
	.uleb128 .LVU142
	.uleb128 .LVU144
	.uleb128 .LVU144
	.uleb128 .LVU223
.LLST13:
	.4byte	.LVL9
	.4byte	.LVL29
	.2byte	0x2
	.byte	0x90
	.uleb128 0x55
	.4byte	.LVL57
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL58
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x90
	.uleb128 0x55
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU146
	.uleb128 .LVU148
	.uleb128 .LVU148
	.uleb128 .LVU166
.LLST14:
	.4byte	.LVL62
	.4byte	.LVL63
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL63
	.4byte	.LVL76
	.2byte	0x2
	.byte	0x90
	.uleb128 0x54
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU237
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU246
	.uleb128 .LVU247
	.uleb128 0
.LLST15:
	.4byte	.LVL94
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL97
	.4byte	.LFE212
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU231
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 0
.LLST16:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL95
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x52
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU232
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 0
.LLST17:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL95
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x51
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU233
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 0
.LLST18:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x6
	.byte	0x9e
	.uleb128 0x4
	.4byte	0
	.4byte	.LVL95
	.4byte	.LFE212
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU234
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 .LVU279
.LLST19:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LVL113
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU235
	.uleb128 .LVU244
	.uleb128 .LVU244
	.uleb128 0
.LLST20:
	.4byte	.LVL93
	.4byte	.LVL95
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL95
	.4byte	.LFE212
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x12d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xca1
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
	.4byte	0x3f9
	.ascii	"m_lcd_cb\000"
	.4byte	0x56a
	.ascii	"gyroBiasGuard\000"
	.4byte	0x57c
	.ascii	"gyro\000"
	.4byte	0x58e
	.ascii	"accel\000"
	.4byte	0x5a0
	.ascii	"kf_state\000"
	.4byte	0x57c
	.ascii	"gyro\000"
	.4byte	0x58e
	.ascii	"accel\000"
	.4byte	0x5a0
	.ascii	"kf_state\000"
	.4byte	0x5b2
	.ascii	"vMainPoseEstimatorTask\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x2ac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xca1
	.4byte	0x43
	.ascii	"signed char\000"
	.4byte	0x37
	.ascii	"int8_t\000"
	.4byte	0x56
	.ascii	"unsigned char\000"
	.4byte	0x4a
	.ascii	"uint8_t\000"
	.4byte	0x6e
	.ascii	"short int\000"
	.4byte	0x62
	.ascii	"int16_t\000"
	.4byte	0x81
	.ascii	"short unsigned int\000"
	.4byte	0x75
	.ascii	"uint16_t\000"
	.4byte	0x99
	.ascii	"int\000"
	.4byte	0x88
	.ascii	"int32_t\000"
	.4byte	0x30
	.ascii	"unsigned int\000"
	.4byte	0xa0
	.ascii	"uint32_t\000"
	.4byte	0xac
	.ascii	"long long int\000"
	.4byte	0xb3
	.ascii	"long long unsigned int\000"
	.4byte	0x29
	.ascii	"float\000"
	.4byte	0xba
	.ascii	"IMU_reading_t\000"
	.4byte	0xcc
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xd3
	.ascii	"char\000"
	.4byte	0xdf
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xf4
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x24f
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x28c
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2a8
	.ascii	"FILE\000"
	.4byte	0x2e7
	.ascii	"long unsigned int\000"
	.4byte	0x324
	.ascii	"BaseType_t\000"
	.4byte	0x330
	.ascii	"TickType_t\000"
	.4byte	0x33c
	.ascii	"double\000"
	.4byte	0x343
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x360
	.ascii	"QueueHandle_t\000"
	.4byte	0x36c
	.ascii	"SemaphoreHandle_t\000"
	.4byte	0x378
	.ascii	"TaskHandle_t\000"
	.4byte	0x384
	.ascii	"state\000"
	.4byte	0x394
	.ascii	"lcd_cb_t\000"
	.4byte	0x3a4
	.ascii	"_Bool\000"
	.4byte	0x3ab
	.ascii	"nrf_lcd_t\000"
	.4byte	0x3c0
	.ascii	"FONT_INFO\000"
	.4byte	0x3d0
	.ascii	"nrf_gfx_font_desc_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB212
	.4byte	.LFE212-.LFB212
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
	.4byte	.LFB212
	.4byte	.LFE212
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
	.uleb128 0x8
	.uleb128 0xb
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.file 26 "../../../drivers/defines.h"
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x1a
	.byte	0x4
	.file 27 "../../../../../../external/freertos/source/include/freeRTOS.h"
	.byte	0x3
	.uleb128 0xa
	.uleb128 0x1b
	.file 28 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.file 29 "../../../config/FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x1d
	.file 30 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x1e
	.file 31 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x1f
	.file 32 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x20
	.byte	0x3
	.uleb128 0x92
	.uleb128 0xc
	.file 33 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x21
	.file 34 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x22
	.byte	0x4
	.byte	0x4
	.file 35 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x23
	.byte	0x4
	.file 36 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x24
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.file 37 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x25
	.byte	0x4
	.file 38 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x26
	.byte	0x4
	.file 39 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x27
	.byte	0x4
	.file 40 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x28
	.byte	0x4
	.byte	0x4
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
	.file 44 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x2c
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x28
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x9
	.byte	0x4
	.file 45 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2d
	.byte	0x4
	.file 46 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xe
	.byte	0x4
	.file 47 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x2f
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x5
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x2a
	.byte	0x4
	.byte	0x4
	.file 48 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x30
	.byte	0x4
	.file 49 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x31
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb1
	.uleb128 0x2d
	.byte	0x4
	.file 50 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd6
	.uleb128 0x32
	.file 51 "../../../systemView/SEGGER_SYSVIEW.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x33
	.file 52 "../../../systemView/SEGGER.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x34
	.file 53 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x35
	.byte	0x4
	.file 54 "../../../systemView/Global.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0x36
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 55 "../../../../../../external/freertos/source/include/projdefs.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x37
	.byte	0x4
	.file 56 "../../../../../../external/freertos/source/include/portable.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x38
	.file 57 "../../../../../../external/freertos/source/include/deprecated_definitions.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x39
	.byte	0x4
	.file 58 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x3a
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 59 "../../../../../../external/freertos/source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x3b
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x19
	.byte	0x4
	.file 60 "../../../drivers/mag3110.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x3c
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x18
	.byte	0x4
	.file 61 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x3d
	.file 62 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x3e
	.file 63 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x3f
	.byte	0x4
	.file 64 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x40
	.byte	0x4
	.file 65 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x41
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xf
	.byte	0x4
	.file 66 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x42
	.byte	0x4
	.byte	0x4
	.file 67 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x43
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x30
	.byte	0x4
	.byte	0x4
	.file 68 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x44
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x11
	.file 69 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x45
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x12
	.byte	0x4
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.file 70 "../../../../../../external/freertos/source/include/timers.h"
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x46
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x14
	.file 71 "../../../../../../external/freertos/source/include/list.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x47
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 72 "../../../drivers/microsd.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x48
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x16
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x4
	.file 73 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x49
	.file 74 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x4a
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x6
	.file 75 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x4b
	.file 76 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x4c
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 77 "../../../../../../integration/nrfx/nrfx_glue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x4d
	.file 78 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x4e
	.byte	0x4
	.file 79 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x4f
	.file 80 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x50
	.byte	0x4
	.byte	0x4
	.file 81 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x51
	.byte	0x4
	.file 82 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x52
	.file 83 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x53
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 84 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x54
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.file 85 "../../../drivers/oled.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x55
	.byte	0x4
	.file 86 "../../../../../../external/freertos/source/include/FreeRTOS.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x56
	.byte	0x4
	.byte	0x4
	.file 87 "../../../communication/server_communication.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x57
	.byte	0x4
	.file 88 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\software\\EstimatorTask.h"
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x58
	.byte	0x4
	.byte	0x3
	.uleb128 0x17
	.uleb128 0x17
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF217:
	.ascii	"gyroF\000"
.LASF194:
	.ascii	"count\000"
.LASF45:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF41:
	.ascii	"padding\000"
.LASF199:
	.ascii	"gyroOffset\000"
.LASF147:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF125:
	.ascii	"__RAL_data_utf8_space\000"
.LASF102:
	.ascii	"date_time_format\000"
.LASF120:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF51:
	.ascii	"next\000"
.LASF43:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF116:
	.ascii	"__RAL_codeset_ascii\000"
.LASF52:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF9:
	.ascii	"widthBits\000"
.LASF92:
	.ascii	"int_n_sep_by_space\000"
.LASF7:
	.ascii	"FONT_CHAR_INFO\000"
.LASF83:
	.ascii	"p_cs_precedes\000"
.LASF210:
	.ascii	"dTheta\000"
.LASF163:
	.ascii	"handle_user_task\000"
.LASF127:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF180:
	.ascii	"gHandshook\000"
.LASF235:
	.ascii	"kalmanGetState\000"
.LASF228:
	.ascii	"xQueueGenericSend\000"
.LASF209:
	.ascii	"dRobot\000"
.LASF112:
	.ascii	"long long unsigned int\000"
.LASF242:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF5:
	.ascii	"data\000"
.LASF55:
	.ascii	"__locale_s\000"
.LASF130:
	.ascii	"__user_get_time_of_day\000"
.LASF146:
	.ascii	"_vectors\000"
.LASF153:
	.ascii	"QueueHandle_t\000"
.LASF133:
	.ascii	"ITM_RxBuffer\000"
.LASF200:
	.ascii	"compassOffset\000"
.LASF191:
	.ascii	"gyro\000"
.LASF231:
	.ascii	"IMU_getGyro\000"
.LASF159:
	.ascii	"orkney_8ptFontInfo\000"
.LASF74:
	.ascii	"int_curr_symbol\000"
.LASF243:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_application-master\\software\\EstimatorTas"
	.ascii	"k.c\000"
.LASF195:
	.ascii	"m_lcd_cb\000"
.LASF98:
	.ascii	"abbrev_month_names\000"
.LASF108:
	.ascii	"int16_t\000"
.LASF111:
	.ascii	"long long int\000"
.LASF107:
	.ascii	"signed char\000"
.LASF114:
	.ascii	"__RAL_global_locale\000"
.LASF40:
	.ascii	"module_id\000"
.LASF59:
	.ascii	"codeset\000"
.LASF233:
	.ascii	"vTaskDelay\000"
.LASF157:
	.ascii	"FONT_INFO\000"
.LASF66:
	.ascii	"__towupper\000"
.LASF168:
	.ascii	"sensor_tower_task\000"
.LASF227:
	.ascii	"xQueueSemaphoreTake\000"
.LASF27:
	.ascii	"state\000"
.LASF70:
	.ascii	"long int\000"
.LASF186:
	.ascii	"gLeft\000"
.LASF60:
	.ascii	"__RAL_locale_data_t\000"
.LASF124:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF155:
	.ascii	"TaskHandle_t\000"
.LASF140:
	.ascii	"stdin\000"
.LASF64:
	.ascii	"__tolower\000"
.LASF44:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF221:
	.ascii	"sucsess\000"
.LASF150:
	.ascii	"double\000"
.LASF148:
	.ascii	"BaseType_t\000"
.LASF244:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_application-master\\\\pca10040\\\\"
	.ascii	"s132\\\\ses\000"
.LASF89:
	.ascii	"int_p_cs_precedes\000"
.LASF169:
	.ascii	"arq_task\000"
.LASF215:
	.ascii	"str4\000"
.LASF96:
	.ascii	"abbrev_day_names\000"
.LASF80:
	.ascii	"negative_sign\000"
.LASF105:
	.ascii	"__wchar\000"
.LASF2:
	.ascii	"endChar\000"
.LASF182:
	.ascii	"USEBLUETOOTH\000"
.LASF24:
	.ascii	"nrf_lcd_rotation_t\000"
.LASF72:
	.ascii	"thousands_sep\000"
.LASF99:
	.ascii	"am_pm_indicator\000"
.LASF78:
	.ascii	"mon_grouping\000"
.LASF65:
	.ascii	"__iswctype\000"
.LASF88:
	.ascii	"n_sign_posn\000"
.LASF207:
	.ascii	"leftWheelTicks\000"
.LASF42:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF21:
	.ascii	"lcd_cb_t\000"
.LASF100:
	.ascii	"date_format\000"
.LASF211:
	.ascii	"dLeft\000"
.LASF3:
	.ascii	"spacePixels\000"
.LASF26:
	.ascii	"unsigned int\000"
.LASF91:
	.ascii	"int_p_sep_by_space\000"
.LASF134:
	.ascii	"SystemCoreClock\000"
.LASF205:
	.ascii	"xLastWakeTime\000"
.LASF123:
	.ascii	"__RAL_data_utf8_period\000"
.LASF0:
	.ascii	"height\000"
.LASF73:
	.ascii	"grouping\000"
.LASF143:
	.ascii	"long unsigned int\000"
.LASF4:
	.ascii	"charInfo\000"
.LASF67:
	.ascii	"__towlower\000"
.LASF184:
	.ascii	"gX_hat\000"
.LASF128:
	.ascii	"__RAL_data_empty_string\000"
.LASF246:
	.ascii	"pvParameters\000"
.LASF166:
	.ascii	"pose_controller_task\000"
.LASF56:
	.ascii	"__category\000"
.LASF178:
	.ascii	"scanStatusQ\000"
.LASF151:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF145:
	.ascii	"__StackLimit\000"
.LASF28:
	.ascii	"width\000"
.LASF135:
	.ascii	"nrf_nvic_state_t\000"
.LASF164:
	.ascii	"handle_microsd_task\000"
.LASF179:
	.ascii	"queue_microsd\000"
.LASF12:
	.ascii	"short unsigned int\000"
.LASF220:
	.ascii	"fails\000"
.LASF208:
	.ascii	"rightWheelTicks\000"
.LASF19:
	.ascii	"lcd_display_invert\000"
.LASF198:
	.ascii	"accelYoffset\000"
.LASF58:
	.ascii	"name\000"
.LASF226:
	.ascii	"vFunc_Inf2pi\000"
.LASF240:
	.ascii	"kf_init\000"
.LASF229:
	.ascii	"IMU_newData\000"
.LASF95:
	.ascii	"day_names\000"
.LASF31:
	.ascii	"NRF_LCD_ROTATE_0\000"
.LASF224:
	.ascii	"kf_setEncoderVar\000"
.LASF204:
	.ascii	"gyrZ\000"
.LASF236:
	.ascii	"sprintf\000"
.LASF1:
	.ascii	"startChar\000"
.LASF138:
	.ascii	"timeval\000"
.LASF37:
	.ascii	"NRFX_DRV_STATE_POWERED_ON\000"
.LASF141:
	.ascii	"stdout\000"
.LASF206:
	.ascii	"xLastWakeTime2\000"
.LASF213:
	.ascii	"cosTheta\000"
.LASF167:
	.ascii	"communication_task\000"
.LASF57:
	.ascii	"__RAL_locale_t\000"
.LASF101:
	.ascii	"time_format\000"
.LASF172:
	.ascii	"xTickMutex\000"
.LASF63:
	.ascii	"__toupper\000"
.LASF216:
	.ascii	"samples\000"
.LASF201:
	.ascii	"KFcounter\000"
.LASF87:
	.ascii	"p_sign_posn\000"
.LASF22:
	.ascii	"ret_code_t\000"
.LASF15:
	.ascii	"lcd_pixel_draw\000"
.LASF118:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF75:
	.ascii	"currency_symbol\000"
.LASF173:
	.ascii	"xControllerBSem\000"
.LASF50:
	.ascii	"decode\000"
.LASF149:
	.ascii	"TickType_t\000"
.LASF20:
	.ascii	"p_lcd_cb\000"
.LASF202:
	.ascii	"KFheading\000"
.LASF34:
	.ascii	"NRF_LCD_ROTATE_270\000"
.LASF69:
	.ascii	"__mbtowc\000"
.LASF136:
	.ascii	"nrf_nvic_state\000"
.LASF192:
	.ascii	"accel\000"
.LASF232:
	.ascii	"IMU_getAccel\000"
.LASF115:
	.ascii	"__RAL_c_locale\000"
.LASF203:
	.ascii	"time\000"
.LASF132:
	.ascii	"__RAL_error_decoder_head\000"
.LASF245:
	.ascii	"vMainPoseEstimatorTask\000"
.LASF171:
	.ascii	"xPoseMutex\000"
.LASF129:
	.ascii	"__user_set_time_of_day\000"
.LASF90:
	.ascii	"int_n_cs_precedes\000"
.LASF187:
	.ascii	"gRight\000"
.LASF39:
	.ascii	"float\000"
.LASF214:
	.ascii	"sinTheta\000"
.LASF104:
	.ascii	"__state\000"
.LASF14:
	.ascii	"lcd_uninit\000"
.LASF161:
	.ascii	"m_nrf_lcd\000"
.LASF16:
	.ascii	"lcd_rect_draw\000"
.LASF196:
	.ascii	"period_in_S\000"
.LASF144:
	.ascii	"__StackTop\000"
.LASF170:
	.ascii	"xScanLock\000"
.LASF25:
	.ascii	"_Bool\000"
.LASF110:
	.ascii	"int32_t\000"
.LASF8:
	.ascii	"unsigned char\000"
.LASF119:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF156:
	.ascii	"nrf_lcd_t\000"
.LASF82:
	.ascii	"frac_digits\000"
.LASF47:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF109:
	.ascii	"short int\000"
.LASF48:
	.ascii	"__irq_masks\000"
.LASF49:
	.ascii	"__cr_flag\000"
.LASF54:
	.ascii	"__RAL_error_decoder_s\000"
.LASF113:
	.ascii	"IMU_reading_t\000"
.LASF222:
	.ascii	"nrf_log_frontend_std_0\000"
.LASF225:
	.ascii	"nrf_log_frontend_std_1\000"
.LASF183:
	.ascii	"gTheta_hat\000"
.LASF238:
	.ascii	"nrf_log_frontend_std_3\000"
.LASF103:
	.ascii	"__mbstate_s\000"
.LASF137:
	.ascii	"FILE\000"
.LASF18:
	.ascii	"lcd_rotation_set\000"
.LASF30:
	.ascii	"nrfx_drv_state_t\000"
.LASF234:
	.ascii	"kf_step\000"
.LASF77:
	.ascii	"mon_thousands_sep\000"
.LASF237:
	.ascii	"display_text_on_line\000"
.LASF188:
	.ascii	"gRightWheelTicks\000"
.LASF193:
	.ascii	"kf_state\000"
.LASF23:
	.ascii	"uint32_t\000"
.LASF181:
	.ascii	"gPaused\000"
.LASF93:
	.ascii	"int_p_sign_posn\000"
.LASF33:
	.ascii	"NRF_LCD_ROTATE_180\000"
.LASF154:
	.ascii	"SemaphoreHandle_t\000"
.LASF53:
	.ascii	"char\000"
.LASF62:
	.ascii	"__isctype\000"
.LASF177:
	.ascii	"poseControllerQ\000"
.LASF84:
	.ascii	"p_sep_by_space\000"
.LASF190:
	.ascii	"gyroBiasGuard\000"
.LASF239:
	.ascii	"xTaskGetTickCount\000"
.LASF152:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF38:
	.ascii	"heading\000"
.LASF176:
	.ascii	"xCollisionMutex\000"
.LASF10:
	.ascii	"offset\000"
.LASF32:
	.ascii	"NRF_LCD_ROTATE_90\000"
.LASF46:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF61:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF223:
	.ascii	"fabs\000"
.LASF241:
	.ascii	"vTaskDelayUntil\000"
.LASF106:
	.ascii	"int8_t\000"
.LASF189:
	.ascii	"gLeftWheelTicks\000"
.LASF94:
	.ascii	"int_n_sign_posn\000"
.LASF165:
	.ascii	"pose_estimator_task\000"
.LASF142:
	.ascii	"stderr\000"
.LASF121:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF162:
	.ascii	"handle_display_task\000"
.LASF197:
	.ascii	"accelXoffset\000"
.LASF131:
	.ascii	"__RAL_error_decoder_t\000"
.LASF85:
	.ascii	"n_cs_precedes\000"
.LASF6:
	.ascii	"uint8_t\000"
.LASF97:
	.ascii	"month_names\000"
.LASF17:
	.ascii	"lcd_display\000"
.LASF117:
	.ascii	"__RAL_codeset_utf8\000"
.LASF81:
	.ascii	"int_frac_digits\000"
.LASF212:
	.ascii	"dRight\000"
.LASF230:
	.ascii	"IMU_read\000"
.LASF174:
	.ascii	"xCommandReadyBSem\000"
.LASF175:
	.ascii	"mutex_spi\000"
.LASF36:
	.ascii	"NRFX_DRV_STATE_INITIALIZED\000"
.LASF35:
	.ascii	"NRFX_DRV_STATE_UNINITIALIZED\000"
.LASF160:
	.ascii	"queue_display\000"
.LASF29:
	.ascii	"rotation\000"
.LASF86:
	.ascii	"n_sep_by_space\000"
.LASF139:
	.ascii	"__RAL_FILE\000"
.LASF158:
	.ascii	"nrf_gfx_font_desc_t\000"
.LASF218:
	.ascii	"accelFX\000"
.LASF219:
	.ascii	"accelFY\000"
.LASF126:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF13:
	.ascii	"lcd_init\000"
.LASF122:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF76:
	.ascii	"mon_decimal_point\000"
.LASF79:
	.ascii	"positive_sign\000"
.LASF68:
	.ascii	"__wctomb\000"
.LASF71:
	.ascii	"decimal_point\000"
.LASF185:
	.ascii	"gY_hat\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
