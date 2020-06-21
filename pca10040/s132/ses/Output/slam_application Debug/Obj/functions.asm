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
	.file	"functions.c"
	.text
.Ltext0:
	.global	__aeabi_f2d
	.global	__aeabi_d2f
	.global	__aeabi_dcmpgt
	.global	__aeabi_dsub
	.global	__aeabi_dcmplt
	.global	__aeabi_dadd
	.section	.text.vFunc_Inf2pi,"ax",%progbits
	.align	1
	.global	vFunc_Inf2pi
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vFunc_Inf2pi, %function
vFunc_Inf2pi:
.LVL0:
.LFB267:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\functions.c"
	.loc 1 20 43 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 20 43 is_stmt 0 view .LVU1
	push	{r3, r4, r5, r6, r7, lr}
.LCFI0:
	mov	r5, r0
	.loc 1 21 2 is_stmt 1 view .LVU2
	.loc 1 21 17 is_stmt 0 view .LVU3
	ldr	r0, [r0]	@ float
.LVL1:
	.loc 1 21 17 view .LVU4
	bl	__aeabi_f2d
.LVL2:
	vldr.64	d1, .L10
	vmov	d0, r0, r1
	bl	fmod
.LVL3:
	vmov	r0, r1, d0
	.loc 1 21 8 view .LVU5
	bl	__aeabi_d2f
.LVL4:
	mov	r4, r0	@ float
.LVL5:
	.loc 1 22 2 is_stmt 1 view .LVU6
	.loc 1 22 12 is_stmt 0 view .LVU7
	bl	__aeabi_f2d
.LVL6:
	.loc 1 22 12 view .LVU8
	mov	r6, r0
	mov	r7, r1
	.loc 1 22 4 view .LVU9
	adr	r3, .L10+8
	ldrd	r2, [r3]
	bl	__aeabi_dcmpgt
.LVL7:
	cbz	r0, .L8
	.loc 1 23 3 is_stmt 1 view .LVU10
	.loc 1 23 10 is_stmt 0 view .LVU11
	adr	r3, .L10
	ldrd	r2, [r3]
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
.LVL8:
	bl	__aeabi_d2f
.LVL9:
	mov	r4, r0	@ float
.LVL10:
.L4:
	.loc 1 28 2 is_stmt 1 view .LVU12
	.loc 1 28 20 is_stmt 0 view .LVU13
	str	r4, [r5]	@ float
	.loc 1 29 1 view .LVU14
	pop	{r3, r4, r5, r6, r7, pc}
.LVL11:
.L8:
	.loc 1 25 7 is_stmt 1 view .LVU15
	.loc 1 25 9 is_stmt 0 view .LVU16
	adr	r3, .L10+16
	ldrd	r2, [r3]
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dcmplt
.LVL12:
	cmp	r0, #0
	beq	.L4
	.loc 1 26 3 is_stmt 1 view .LVU17
	.loc 1 26 10 is_stmt 0 view .LVU18
	adr	r3, .L10
	ldrd	r2, [r3]
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
.LVL13:
	bl	__aeabi_d2f
.LVL14:
	mov	r4, r0	@ float
.LVL15:
	.loc 1 26 10 view .LVU19
	b	.L4
.L11:
	.align	3
.L10:
	.word	1413754136
	.word	1075388923
	.word	1413754136
	.word	1074340347
	.word	1413754136
	.word	-1073143301
.LFE267:
	.size	vFunc_Inf2pi, .-vFunc_Inf2pi
	.global	__aeabi_dmul
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.section	.text.distObjectX,"ax",%progbits
	.align	1
	.global	distObjectX
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	distObjectX, %function
distObjectX:
.LVL16:
.LFB268:
	.loc 1 34 106 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 34 106 is_stmt 0 view .LVU21
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI1:
	mov	r9, r0
	vmov	r0, s0
.LVL17:
	.loc 1 34 106 view .LVU22
	mov	r8, r1
	mov	r5, r2
	mov	r4, r3
	.loc 1 35 5 is_stmt 1 view .LVU23
	.loc 1 35 25 is_stmt 0 view .LVU24
	bl	__aeabi_f2d
.LVL18:
	.loc 1 35 25 view .LVU25
	mov	r10, r0
	mov	fp, r1
	vmov	d0, r10, fp
	bl	cos
.LVL19:
	vmov	r0, r1, d0
	.loc 1 35 35 view .LVU26
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dmul
.LVL20:
	mov	r6, r0
	mov	r7, r1
	.loc 1 35 23 view .LVU27
	mov	r0, r9
	bl	__aeabi_i2d
.LVL21:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dsub
.LVL22:
	mov	r6, r0
	mov	r7, r1
	.loc 1 35 78 view .LVU28
	movs	r0, #90
	mla	r0, r0, r4, r8
	bl	__aeabi_i2d
.LVL23:
	adr	r3, .L14+4
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL24:
	.loc 1 35 101 view .LVU29
	movs	r2, #0
	ldr	r3, .L14
	bl	__aeabi_ddiv
.LVL25:
	mov	r2, r0
	mov	r3, r1
	.loc 1 35 40 view .LVU30
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dadd
.LVL26:
	vmov	d0, r0, r1
	bl	cos
.LVL27:
	vmov	r8, r9, d0
	.loc 1 35 109 view .LVU31
	ldrsh	r0, [r5, r4, lsl #1]
	bl	__aeabi_i2d
.LVL28:
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dmul
.LVL29:
	mov	r2, r0
	mov	r3, r1
	.loc 1 35 38 view .LVU32
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
.LVL30:
	.loc 1 35 13 view .LVU33
	bl	__aeabi_d2iz
.LVL31:
	.loc 1 37 5 is_stmt 1 view .LVU34
	.loc 1 38 1 is_stmt 0 view .LVU35
	sxth	r0, r0
	.loc 1 38 1 view .LVU36
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL32:
.L15:
	.loc 1 38 1 view .LVU37
	.align	3
.L14:
	.word	1080459264
	.word	1413754136
	.word	1074340347
.LFE268:
	.size	distObjectX, .-distObjectX
	.section	.text.distObjectXlocal,"ax",%progbits
	.align	1
	.global	distObjectXlocal
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	distObjectXlocal, %function
distObjectXlocal:
.LVL33:
.LFB269:
	.loc 1 41 100 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 41 100 is_stmt 0 view .LVU39
	push	{r3, r4, r5, r6, r7, lr}
.LCFI2:
	mov	r5, r1
	mov	r4, r2
	.loc 1 42 5 is_stmt 1 view .LVU40
	.loc 1 42 53 is_stmt 0 view .LVU41
	movs	r3, #90
	mla	r0, r3, r2, r0
.LVL34:
	.loc 1 42 53 view .LVU42
	bl	__aeabi_i2d
.LVL35:
	.loc 1 42 53 view .LVU43
	adr	r3, .L18+4
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL36:
	.loc 1 42 21 view .LVU44
	movs	r2, #0
	ldr	r3, .L18
	bl	__aeabi_ddiv
.LVL37:
	vmov	d0, r0, r1
	bl	cos
.LVL38:
	vmov	r6, r7, d0
	.loc 1 42 61 view .LVU45
	ldrsh	r0, [r5, r4, lsl #1]
	bl	__aeabi_i2d
.LVL39:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
.LVL40:
	.loc 1 42 13 view .LVU46
	bl	__aeabi_d2iz
.LVL41:
	.loc 1 44 5 is_stmt 1 view .LVU47
	.loc 1 45 1 is_stmt 0 view .LVU48
	sxth	r0, r0
	.loc 1 45 1 view .LVU49
	pop	{r3, r4, r5, r6, r7, pc}
.LVL42:
.L19:
	.loc 1 45 1 view .LVU50
	.align	3
.L18:
	.word	1080459264
	.word	1413754136
	.word	1074340347
.LFE269:
	.size	distObjectXlocal, .-distObjectXlocal
	.section	.text.distObjectY,"ax",%progbits
	.align	1
	.global	distObjectY
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	distObjectY, %function
distObjectY:
.LVL43:
.LFB270:
	.loc 1 49 106 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 49 106 is_stmt 0 view .LVU52
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI3:
	mov	r9, r0
	vmov	r0, s0
.LVL44:
	.loc 1 49 106 view .LVU53
	mov	r8, r1
	mov	r5, r2
	mov	r4, r3
	.loc 1 50 5 is_stmt 1 view .LVU54
	.loc 1 50 25 is_stmt 0 view .LVU55
	bl	__aeabi_f2d
.LVL45:
	.loc 1 50 25 view .LVU56
	mov	r10, r0
	mov	fp, r1
	vmov	d0, r10, fp
	bl	cos
.LVL46:
	vmov	r0, r1, d0
	.loc 1 50 35 view .LVU57
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dmul
.LVL47:
	mov	r6, r0
	mov	r7, r1
	.loc 1 50 23 view .LVU58
	mov	r0, r9
	bl	__aeabi_i2d
.LVL48:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dsub
.LVL49:
	mov	r6, r0
	mov	r7, r1
	.loc 1 50 78 view .LVU59
	movs	r0, #90
	mla	r0, r0, r4, r8
	bl	__aeabi_i2d
.LVL50:
	adr	r3, .L22+4
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL51:
	.loc 1 50 101 view .LVU60
	movs	r2, #0
	ldr	r3, .L22
	bl	__aeabi_ddiv
.LVL52:
	mov	r2, r0
	mov	r3, r1
	.loc 1 50 40 view .LVU61
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dadd
.LVL53:
	vmov	d0, r0, r1
	bl	sin
.LVL54:
	vmov	r8, r9, d0
	.loc 1 50 109 view .LVU62
	ldrsh	r0, [r5, r4, lsl #1]
	bl	__aeabi_i2d
.LVL55:
	mov	r2, r8
	mov	r3, r9
	bl	__aeabi_dmul
.LVL56:
	mov	r2, r0
	mov	r3, r1
	.loc 1 50 38 view .LVU63
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
.LVL57:
	.loc 1 50 13 view .LVU64
	bl	__aeabi_d2iz
.LVL58:
	.loc 1 52 5 is_stmt 1 view .LVU65
	.loc 1 53 1 is_stmt 0 view .LVU66
	sxth	r0, r0
	.loc 1 53 1 view .LVU67
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL59:
.L23:
	.loc 1 53 1 view .LVU68
	.align	3
.L22:
	.word	1080459264
	.word	1413754136
	.word	1074340347
.LFE270:
	.size	distObjectY, .-distObjectY
	.section	.text.distObjectYlocal,"ax",%progbits
	.align	1
	.global	distObjectYlocal
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	distObjectYlocal, %function
distObjectYlocal:
.LVL60:
.LFB271:
	.loc 1 56 100 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 56 100 is_stmt 0 view .LVU70
	push	{r3, r4, r5, r6, r7, lr}
.LCFI4:
	mov	r5, r1
	mov	r4, r2
	.loc 1 57 5 is_stmt 1 view .LVU71
	.loc 1 57 53 is_stmt 0 view .LVU72
	movs	r3, #90
	mla	r0, r3, r2, r0
.LVL61:
	.loc 1 57 53 view .LVU73
	bl	__aeabi_i2d
.LVL62:
	.loc 1 57 53 view .LVU74
	adr	r3, .L26+4
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL63:
	.loc 1 57 21 view .LVU75
	movs	r2, #0
	ldr	r3, .L26
	bl	__aeabi_ddiv
.LVL64:
	vmov	d0, r0, r1
	bl	sin
.LVL65:
	vmov	r6, r7, d0
	.loc 1 57 61 view .LVU76
	ldrsh	r0, [r5, r4, lsl #1]
	bl	__aeabi_i2d
.LVL66:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
.LVL67:
	.loc 1 57 13 view .LVU77
	bl	__aeabi_d2iz
.LVL68:
	.loc 1 59 5 is_stmt 1 view .LVU78
	.loc 1 60 1 is_stmt 0 view .LVU79
	sxth	r0, r0
	.loc 1 60 1 view .LVU80
	pop	{r3, r4, r5, r6, r7, pc}
.LVL69:
.L27:
	.loc 1 60 1 view .LVU81
	.align	3
.L26:
	.word	1080459264
	.word	1413754136
	.word	1074340347
.LFE271:
	.size	distObjectYlocal, .-distObjectYlocal
	.section	.text.sendNewPoseMessage,"ax",%progbits
	.align	1
	.global	sendNewPoseMessage
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sendNewPoseMessage, %function
sendNewPoseMessage:
.LVL70:
.LFB272:
	.loc 1 67 99 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 67 99 is_stmt 0 view .LVU83
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI5:
	vpush.64	{d8}
.LCFI6:
	sub	sp, sp, #44
.LCFI7:
	mov	r7, r0
	mov	r6, r1
	vmov.f32	s16, s0
	mov	r5, r2
	mov	r4, r3
	.loc 1 68 2 is_stmt 1 view .LVU84
.LVL71:
	.loc 1 69 2 view .LVU85
	.loc 1 70 5 view .LVU86
	.loc 1 71 5 view .LVU87
	.loc 1 72 5 view .LVU88
	.loc 1 73 2 view .LVU89
	.loc 1 73 20 is_stmt 0 view .LVU90
	ldr	r10, .L35+12
	ldrh	r3, [r10]
.LVL72:
	.loc 1 73 20 view .LVU91
	subs	r3, r0, r3
	uxth	fp, r3
	.loc 1 73 10 view .LVU92
	sxth	r3, r3
	str	r3, [sp, #8]
.LVL73:
	.loc 1 74 2 is_stmt 1 view .LVU93
	.loc 1 74 20 is_stmt 0 view .LVU94
	ldr	r9, .L35+16
	ldrh	r3, [r9]
	subs	r3, r1, r3
	uxth	r2, r3
.LVL74:
	.loc 1 74 20 view .LVU95
	str	r2, [sp, #4]
	.loc 1 74 10 view .LVU96
	sxth	r1, r3
.LVL75:
	.loc 1 74 10 view .LVU97
	str	r1, [sp, #12]
.LVL76:
	.loc 1 75 2 is_stmt 1 view .LVU98
	.loc 1 75 29 is_stmt 0 view .LVU99
	ldr	r8, .L35+20
	vldr.32	s15, [r8]
	vsub.f32	s15, s0, s15
	vmov	r0, s15
.LVL77:
	.loc 1 75 29 view .LVU100
	bl	__aeabi_f2d
.LVL78:
	.loc 1 75 41 view .LVU101
	movs	r2, #0
	ldr	r3, .L35+8
	bl	__aeabi_dmul
.LVL79:
	.loc 1 75 48 view .LVU102
	adr	r3, .L35
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL80:
	.loc 1 75 10 view .LVU103
	bl	__aeabi_d2iz
.LVL81:
	sxth	r0, r0
.LVL82:
	.loc 1 76 2 is_stmt 1 view .LVU104
	.loc 1 76 8 is_stmt 0 view .LVU105
	strh	r7, [r10]	@ movhi
	.loc 1 77 2 is_stmt 1 view .LVU106
	.loc 1 77 8 is_stmt 0 view .LVU107
	strh	r6, [r9]	@ movhi
	.loc 1 78 2 is_stmt 1 view .LVU108
	.loc 1 78 12 is_stmt 0 view .LVU109
	vstr.32	s16, [r8]
	.loc 1 80 5 is_stmt 1 view .LVU110
	.loc 1 80 14 is_stmt 0 view .LVU111
	movs	r6, #0
	strb	r6, [sp, #39]
	.loc 1 82 2 is_stmt 1 view .LVU112
	.loc 1 82 10 is_stmt 0 view .LVU113
	movs	r3, #2
	strb	r3, [sp, #16]
	.loc 1 83 5 is_stmt 1 view .LVU114
	.loc 1 83 13 is_stmt 0 view .LVU115
	strb	fp, [sp, #17]
	.loc 1 84 5 is_stmt 1 view .LVU116
	.loc 1 84 13 is_stmt 0 view .LVU117
	ldr	r3, [sp, #8]
	asrs	r3, r3, #8
	strb	r3, [sp, #18]
	.loc 1 85 5 is_stmt 1 view .LVU118
	.loc 1 85 13 is_stmt 0 view .LVU119
	ldr	r2, [sp, #4]
	strb	r2, [sp, #19]
	.loc 1 86 5 is_stmt 1 view .LVU120
	.loc 1 86 13 is_stmt 0 view .LVU121
	ldr	r1, [sp, #12]
	asrs	r3, r1, #8
	strb	r3, [sp, #20]
	.loc 1 87 5 is_stmt 1 view .LVU122
	.loc 1 87 13 is_stmt 0 view .LVU123
	strb	r0, [sp, #21]
	.loc 1 88 5 is_stmt 1 view .LVU124
	.loc 1 88 13 is_stmt 0 view .LVU125
	asrs	r0, r0, #8
.LVL83:
	.loc 1 88 13 view .LVU126
	strb	r0, [sp, #22]
	.loc 1 90 5 is_stmt 1 view .LVU127
.LBB2:
	.loc 1 90 9 view .LVU128
.LVL84:
	.loc 1 90 5 is_stmt 0 view .LVU129
	b	.L29
.LVL85:
.L30:
	.loc 1 102 13 is_stmt 1 view .LVU130
	.loc 1 102 39 is_stmt 0 view .LVU131
	rsb	r2, r6, #3
	.loc 1 102 29 view .LVU132
	movs	r3, #1
	lsl	r2, r3, r2
	.loc 1 102 22 view .LVU133
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	bic	r3, r3, r2
	strb	r3, [sp, #39]
.L31:
	.loc 1 90 27 is_stmt 1 discriminator 2 view .LVU134
	.loc 1 90 28 is_stmt 0 discriminator 2 view .LVU135
	adds	r6, r6, #1
.LVL86:
.L29:
	.loc 1 90 20 is_stmt 1 discriminator 1 view .LVU136
	.loc 1 90 5 is_stmt 0 discriminator 1 view .LVU137
	cmp	r6, #3
	bgt	.L34
	.loc 1 91 9 is_stmt 1 view .LVU138
	.loc 1 91 19 is_stmt 0 view .LVU139
	uxtb	r8, r6
	mov	r2, r8
	mov	r1, r4
	mov	r0, r5
	vmov.f32	s0, s16
	bl	distObjectXlocal
.LVL87:
	mov	r7, r0
.LVL88:
	.loc 1 92 9 is_stmt 1 view .LVU140
	.loc 1 92 19 is_stmt 0 view .LVU141
	mov	r2, r8
	mov	r1, r4
	mov	r0, r5
	vmov.f32	s0, s16
	bl	distObjectYlocal
.LVL89:
	.loc 1 93 9 is_stmt 1 view .LVU142
	.loc 1 93 15 is_stmt 0 view .LVU143
	lsls	r3, r6, #2
	.loc 1 93 17 view .LVU144
	adds	r2, r3, #7
	.loc 1 93 21 view .LVU145
	add	r1, sp, #40
	add	r2, r2, r1
	strb	r7, [r2, #-24]
	.loc 1 94 9 is_stmt 1 view .LVU146
	.loc 1 94 17 is_stmt 0 view .LVU147
	adds	r2, r6, #2
	.loc 1 94 21 view .LVU148
	add	r2, r1, r2, lsl #2
	asrs	r7, r7, #8
.LVL90:
	.loc 1 94 21 view .LVU149
	strb	r7, [r2, #-24]
	.loc 1 95 9 is_stmt 1 view .LVU150
	.loc 1 95 17 is_stmt 0 view .LVU151
	add	r2, r3, #9
	.loc 1 95 21 view .LVU152
	add	r2, r2, r1
	strb	r0, [r2, #-24]
	.loc 1 96 9 is_stmt 1 view .LVU153
	.loc 1 96 17 is_stmt 0 view .LVU154
	adds	r3, r3, #10
	.loc 1 96 22 view .LVU155
	add	r3, r3, r1
	asrs	r0, r0, #8
.LVL91:
	.loc 1 96 22 view .LVU156
	strb	r0, [r3, #-24]
	.loc 1 98 9 is_stmt 1 view .LVU157
	.loc 1 98 22 is_stmt 0 view .LVU158
	ldrsh	r3, [r4, r6, lsl #1]
	.loc 1 98 11 view .LVU159
	cmp	r3, #800
	bge	.L30
	.loc 1 99 13 is_stmt 1 view .LVU160
	.loc 1 99 38 is_stmt 0 view .LVU161
	rsb	r2, r6, #3
	.loc 1 99 28 view .LVU162
	movs	r3, #1
	lsl	r2, r3, r2
	.loc 1 99 22 view .LVU163
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	orrs	r3, r3, r2
	strb	r3, [sp, #39]
	b	.L31
.L34:
	.loc 1 99 22 view .LVU164
.LBE2:
	.loc 1 105 2 is_stmt 1 view .LVU165
	movs	r2, #24
	add	r1, sp, #16
.LVL92:
	.loc 1 105 2 is_stmt 0 view .LVU166
	movs	r0, #114
	bl	i2cSendNOADDR
.LVL93:
	.loc 1 106 1 view .LVU167
	add	sp, sp, #44
.LCFI8:
	@ sp needed
	vldm	sp!, {d8}
.LCFI9:
.LVL94:
	.loc 1 106 1 view .LVU168
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL95:
.L36:
	.loc 1 106 1 view .LVU169
	.align	3
.L35:
	.word	1413754136
	.word	1074340347
	.word	1080459264
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
.LFE272:
	.size	sendNewPoseMessage, .-sendNewPoseMessage
	.section	.text.sendOldPoseMessage,"ax",%progbits
	.align	1
	.global	sendOldPoseMessage
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sendOldPoseMessage, %function
sendOldPoseMessage:
.LVL96:
.LFB273:
	.loc 1 116 99 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 116 99 is_stmt 0 view .LVU171
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
.LCFI10:
	vpush.64	{d8}
.LCFI11:
	sub	sp, sp, #8
.LCFI12:
	mov	r7, r0
	mov	r6, r1
	vmov.f32	s16, s0
	mov	r8, r2
	mov	r5, r3
	.loc 1 117 2 is_stmt 1 view .LVU172
.LVL97:
	.loc 1 118 5 view .LVU173
	.loc 1 119 5 view .LVU174
	.loc 1 120 5 view .LVU175
	.loc 1 122 5 view .LVU176
	.loc 1 122 13 is_stmt 0 view .LVU177
	strb	r0, [sp]
	.loc 1 123 5 is_stmt 1 view .LVU178
	.loc 1 123 13 is_stmt 0 view .LVU179
	asrs	r3, r0, #8
.LVL98:
	.loc 1 123 13 view .LVU180
	strb	r3, [sp, #1]
	.loc 1 124 5 is_stmt 1 view .LVU181
	.loc 1 124 13 is_stmt 0 view .LVU182
	strb	r1, [sp, #2]
	.loc 1 125 5 is_stmt 1 view .LVU183
	.loc 1 125 13 is_stmt 0 view .LVU184
	asrs	r3, r1, #8
	strb	r3, [sp, #3]
	.loc 1 127 5 is_stmt 1 view .LVU185
.LBB3:
	.loc 1 127 9 view .LVU186
.LVL99:
	.loc 1 127 13 is_stmt 0 view .LVU187
	movs	r4, #0
	.loc 1 127 5 view .LVU188
	b	.L38
.LVL100:
.L43:
	.loc 1 129 13 is_stmt 1 view .LVU189
	.loc 1 129 23 is_stmt 0 view .LVU190
	uxtb	r10, r4
	mov	r3, r10
	mov	r2, r5
	mov	r1, r8
	vmov.f32	s0, s16
	mov	r0, r7
	bl	distObjectX
.LVL101:
	mov	r9, r0
.LVL102:
	.loc 1 130 13 is_stmt 1 view .LVU191
	.loc 1 130 23 is_stmt 0 view .LVU192
	mov	r3, r10
	mov	r2, r5
	mov	r1, r8
	vmov.f32	s0, s16
	mov	r0, r6
	bl	distObjectY
.LVL103:
	.loc 1 131 13 is_stmt 1 view .LVU193
	.loc 1 131 21 is_stmt 0 view .LVU194
	strb	r9, [sp, #4]
	.loc 1 132 13 is_stmt 1 view .LVU195
	.loc 1 132 21 is_stmt 0 view .LVU196
	asr	r9, r9, #8
.LVL104:
	.loc 1 132 21 view .LVU197
	strb	r9, [sp, #5]
	.loc 1 133 13 is_stmt 1 view .LVU198
	.loc 1 133 21 is_stmt 0 view .LVU199
	strb	r0, [sp, #6]
	.loc 1 134 13 is_stmt 1 view .LVU200
	.loc 1 134 21 is_stmt 0 view .LVU201
	asrs	r3, r0, #8
	strb	r3, [sp, #7]
	.loc 1 135 13 is_stmt 1 view .LVU202
	movs	r2, #8
	mov	r1, sp
	movs	r0, #114
.LVL105:
	.loc 1 135 13 is_stmt 0 view .LVU203
	bl	i2cSendNOADDR
.LVL106:
.L39:
	.loc 1 127 27 is_stmt 1 discriminator 2 view .LVU204
	.loc 1 127 28 is_stmt 0 discriminator 2 view .LVU205
	adds	r4, r4, #1
.LVL107:
.L38:
	.loc 1 127 20 is_stmt 1 discriminator 1 view .LVU206
	.loc 1 127 5 is_stmt 0 discriminator 1 view .LVU207
	cmp	r4, #3
	bgt	.L42
	.loc 1 128 9 is_stmt 1 view .LVU208
	.loc 1 128 22 is_stmt 0 view .LVU209
	ldrsh	r3, [r5, r4, lsl #1]
	.loc 1 128 11 view .LVU210
	cmp	r3, #800
	bge	.L39
	b	.L43
.L42:
	.loc 1 128 11 view .LVU211
.LBE3:
	.loc 1 138 1 view .LVU212
	add	sp, sp, #8
.LCFI13:
.LVL108:
	.loc 1 138 1 view .LVU213
	@ sp needed
	vldm	sp!, {d8}
.LCFI14:
.LVL109:
	.loc 1 138 1 view .LVU214
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.loc 1 138 1 view .LVU215
.LFE273:
	.size	sendOldPoseMessage, .-sendOldPoseMessage
	.section	.text.sendScanBorder,"ax",%progbits
	.align	1
	.global	sendScanBorder
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sendScanBorder, %function
sendScanBorder:
.LFB274:
	.loc 1 140 22 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI15:
	sub	sp, sp, #12
.LCFI16:
	.loc 1 141 2 view .LVU217
.LVL110:
	.loc 1 142 2 view .LVU218
	.loc 1 142 10 is_stmt 0 view .LVU219
	movs	r2, #1
	strb	r2, [sp, #7]
	.loc 1 143 2 is_stmt 1 view .LVU220
	add	r1, sp, #7
	movs	r0, #114
	bl	i2cSendNOADDR
.LVL111:
	.loc 1 144 1 is_stmt 0 view .LVU221
	add	sp, sp, #12
.LCFI17:
	@ sp needed
	ldr	pc, [sp], #4
.LFE274:
	.size	sendScanBorder, .-sendScanBorder
	.section	.text.increaseCollisionSector,"ax",%progbits
	.align	1
	.global	increaseCollisionSector
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	increaseCollisionSector, %function
increaseCollisionSector:
.LVL112:
.LFB275:
	.loc 1 151 60 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 151 60 is_stmt 0 view .LVU223
	push	{r4}
.LCFI18:
	.loc 1 153 2 is_stmt 1 view .LVU224
	.loc 1 153 46 is_stmt 0 view .LVU225
	lsls	r4, r1, #1
	.loc 1 153 10 view .LVU226
	ldr	r3, .L52
	ldrsh	r2, [r3, r1, lsl #2]
.LVL113:
	.loc 1 154 2 is_stmt 1 view .LVU227
	.loc 1 154 48 is_stmt 0 view .LVU228
	adds	r1, r4, #1
.LVL114:
	.loc 1 154 10 view .LVU229
	ldrsh	r3, [r3, r1, lsl #1]
.LVL115:
	.loc 1 156 2 is_stmt 1 view .LVU230
	.loc 1 156 4 is_stmt 0 view .LVU231
	cmp	r2, #360
	beq	.L51
.L47:
	.loc 1 161 3 is_stmt 1 view .LVU232
	.loc 1 161 5 is_stmt 0 view .LVU233
	cmp	r2, r0
	ble	.L49
	.loc 1 162 4 is_stmt 1 view .LVU234
	.loc 1 162 31 is_stmt 0 view .LVU235
	ldr	r3, .L52
.LVL116:
	.loc 1 162 31 view .LVU236
	strh	r0, [r3, r4, lsl #1]	@ movhi
.LVL117:
.L46:
	.loc 1 169 1 view .LVU237
	ldr	r4, [sp], #4
.LCFI19:
	bx	lr
.LVL118:
.L51:
.LCFI20:
	.loc 1 156 23 discriminator 1 view .LVU238
	cmp	r3, #360
	bne	.L47
	.loc 1 157 3 is_stmt 1 view .LVU239
	.loc 1 157 37 is_stmt 0 view .LVU240
	uxth	r0, r0
	.loc 1 157 37 view .LVU241
	subs	r2, r0, #1
.LVL119:
	.loc 1 157 30 view .LVU242
	ldr	r3, .L52
.LVL120:
	.loc 1 157 30 view .LVU243
	strh	r2, [r3, r4, lsl #1]	@ movhi
.LVL121:
	.loc 1 158 3 is_stmt 1 view .LVU244
	.loc 1 158 39 is_stmt 0 view .LVU245
	adds	r0, r0, #1
.LVL122:
	.loc 1 158 32 view .LVU246
	strh	r0, [r3, r1, lsl #1]	@ movhi
	b	.L46
.LVL123:
.L49:
	.loc 1 164 8 is_stmt 1 view .LVU247
	.loc 1 164 10 is_stmt 0 view .LVU248
	cmp	r3, r0
	bge	.L46
	.loc 1 165 4 is_stmt 1 view .LVU249
	.loc 1 165 33 is_stmt 0 view .LVU250
	ldr	r3, .L52
.LVL124:
	.loc 1 165 33 view .LVU251
	strh	r0, [r3, r1, lsl #1]	@ movhi
.LVL125:
	.loc 1 169 1 view .LVU252
	b	.L46
.L53:
	.align	2
.L52:
	.word	.LANCHOR3
.LFE275:
	.size	increaseCollisionSector, .-increaseCollisionSector
	.section	.text.getDetectionAngle,"ax",%progbits
	.align	1
	.global	getDetectionAngle
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getDetectionAngle, %function
getDetectionAngle:
.LVL126:
.LFB276:
	.loc 1 172 62 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 173 2 view .LVU254
	.loc 1 173 34 is_stmt 0 view .LVU255
	add	r1, r1, r1, lsl #1
.LVL127:
	.loc 1 173 34 view .LVU256
	rsb	r1, r1, r1, lsl #4
	add	r0, r0, r1, lsl #1
.LVL128:
	.loc 1 173 34 view .LVU257
	uxth	r3, r0
	.loc 1 173 10 view .LVU258
	sxth	r0, r0
.LVL129:
	.loc 1 174 2 is_stmt 1 view .LVU259
	.loc 1 174 4 is_stmt 0 view .LVU260
	cmp	r0, #180
	ble	.L55
	.loc 1 175 3 is_stmt 1 view .LVU261
	.loc 1 175 22 is_stmt 0 view .LVU262
	sub	r0, r3, #360
.LVL130:
	.loc 1 175 22 view .LVU263
	sxth	r0, r0
.L55:
	.loc 1 180 1 view .LVU264
	bx	lr
.LFE276:
	.size	getDetectionAngle, .-getDetectionAngle
	.section	.text.decreaseCollisionSector,"ax",%progbits
	.align	1
	.global	decreaseCollisionSector
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decreaseCollisionSector, %function
decreaseCollisionSector:
.LVL131:
.LFB277:
	.loc 1 182 60 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 182 60 is_stmt 0 view .LVU266
	push	{r4}
.LCFI21:
	.loc 1 184 2 is_stmt 1 view .LVU267
	.loc 1 184 46 is_stmt 0 view .LVU268
	lsls	r4, r1, #1
	.loc 1 184 10 view .LVU269
	ldr	r3, .L61
	ldrsh	r2, [r3, r1, lsl #2]
.LVL132:
	.loc 1 185 2 is_stmt 1 view .LVU270
	.loc 1 185 48 is_stmt 0 view .LVU271
	adds	r1, r4, #1
.LVL133:
	.loc 1 185 10 view .LVU272
	ldrsh	r3, [r3, r1, lsl #1]
.LVL134:
	.loc 1 187 2 is_stmt 1 view .LVU273
	.loc 1 187 4 is_stmt 0 view .LVU274
	cmp	r2, r0
	bgt	.L56
	.loc 1 187 27 discriminator 1 view .LVU275
	cmp	r3, r0
	blt	.L56
	.loc 1 188 3 is_stmt 1 view .LVU276
	.loc 1 188 12 is_stmt 0 view .LVU277
	subs	r2, r0, r2
.LVL135:
	.loc 1 188 38 view .LVU278
	subs	r3, r3, r0
.LVL136:
	.loc 1 188 5 view .LVU279
	cmp	r2, r3
	bge	.L58
	.loc 1 189 4 is_stmt 1 view .LVU280
	.loc 1 189 31 is_stmt 0 view .LVU281
	ldr	r3, .L61
.LVL137:
	.loc 1 189 31 view .LVU282
	strh	r0, [r3, r4, lsl #1]	@ movhi
.LVL138:
.L56:
	.loc 1 200 1 view .LVU283
	ldr	r4, [sp], #4
.LCFI22:
	bx	lr
.LVL139:
.L58:
.LCFI23:
	.loc 1 191 8 is_stmt 1 view .LVU284
	.loc 1 191 10 is_stmt 0 view .LVU285
	cmp	r2, r3
	ble	.L59
	.loc 1 192 4 is_stmt 1 view .LVU286
	.loc 1 192 33 is_stmt 0 view .LVU287
	ldr	r3, .L61
.LVL140:
	.loc 1 192 33 view .LVU288
	strh	r0, [r3, r1, lsl #1]	@ movhi
.LVL141:
	.loc 1 192 33 view .LVU289
	b	.L56
.LVL142:
.L59:
	.loc 1 195 4 is_stmt 1 view .LVU290
	.loc 1 195 31 is_stmt 0 view .LVU291
	ldr	r3, .L61
.LVL143:
	.loc 1 195 31 view .LVU292
	mov	r2, #360
	strh	r2, [r3, r4, lsl #1]	@ movhi
.LVL144:
	.loc 1 196 4 is_stmt 1 view .LVU293
	.loc 1 196 33 is_stmt 0 view .LVU294
	strh	r2, [r3, r1, lsl #1]	@ movhi
	.loc 1 200 1 view .LVU295
	b	.L56
.L62:
	.align	2
.L61:
	.word	.LANCHOR3
.LFE277:
	.size	decreaseCollisionSector, .-decreaseCollisionSector
	.section	.rodata.printCollisionSectors.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"CollSector: %i. From: %i\000"
	.align	2
.LC1:
	.ascii	"CollSector: %i.   To: %i\000"
	.section	.text.printCollisionSectors,"ax",%progbits
	.align	1
	.global	printCollisionSectors
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	printCollisionSectors, %function
printCollisionSectors:
.LFB278:
	.loc 1 203 33 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI24:
	.loc 1 204 2 view .LVU297
	.loc 1 204 18 is_stmt 0 view .LVU298
	ldr	r2, .L69
	ldrb	r3, [r2]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r2]
	.loc 1 205 2 is_stmt 1 view .LVU299
	.loc 1 205 4 is_stmt 0 view .LVU300
	cmp	r3, #60
	bls	.L63
.LBB4:
	.loc 1 206 11 view .LVU301
	movs	r4, #0
	b	.L64
.LVL145:
.L66:
	.loc 1 207 4 is_stmt 1 discriminator 3 view .LVU302
	.loc 1 207 77 discriminator 3 view .LVU303
	.loc 1 207 132 discriminator 3 view .LVU304
	.loc 1 207 213 is_stmt 0 discriminator 3 view .LVU305
	ldr	r7, .L69+4
	ldrh	r0, [r7]
	.loc 1 207 224 discriminator 3 view .LVU306
	lsls	r0, r0, #16
	.loc 1 207 314 discriminator 3 view .LVU307
	lsls	r5, r4, #1
	.loc 1 207 312 discriminator 3 view .LVU308
	ldr	r6, .L69+8
	.loc 1 207 132 discriminator 3 view .LVU309
	ldrsh	r3, [r6, r4, lsl #2]
	mov	r2, r4
	ldr	r1, .L69+12
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_2
.LVL146:
	.loc 1 207 324 is_stmt 1 discriminator 3 view .LVU310
	.loc 1 208 4 discriminator 3 view .LVU311
	.loc 1 208 77 discriminator 3 view .LVU312
	.loc 1 208 132 discriminator 3 view .LVU313
	.loc 1 208 213 is_stmt 0 discriminator 3 view .LVU314
	ldrh	r0, [r7]
	.loc 1 208 224 discriminator 3 view .LVU315
	lsls	r0, r0, #16
	.loc 1 208 316 discriminator 3 view .LVU316
	adds	r5, r5, #1
	.loc 1 208 132 discriminator 3 view .LVU317
	ldrsh	r3, [r6, r5, lsl #1]
	mov	r2, r4
	ldr	r1, .L69+16
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_2
.LVL147:
	.loc 1 208 326 is_stmt 1 discriminator 3 view .LVU318
	.loc 1 206 25 discriminator 3 view .LVU319
	.loc 1 206 26 is_stmt 0 discriminator 3 view .LVU320
	adds	r4, r4, #1
.LVL148:
.L64:
	.loc 1 206 18 is_stmt 1 discriminator 2 view .LVU321
	.loc 1 206 3 is_stmt 0 discriminator 2 view .LVU322
	cmp	r4, #3
	ble	.L66
.LBE4:
	.loc 1 210 3 is_stmt 1 view .LVU323
	.loc 1 210 20 is_stmt 0 view .LVU324
	ldr	r3, .L69
	movs	r2, #0
	strb	r2, [r3]
.LVL149:
.L63:
	.loc 1 212 1 view .LVU325
	pop	{r3, r4, r5, r6, r7, pc}
.L70:
	.align	2
.L69:
	.word	.LANCHOR4
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LANCHOR3
	.word	.LC0
	.word	.LC1
.LFE278:
	.size	printCollisionSectors, .-printCollisionSectors
	.section	.text.validWaypoint,"ax",%progbits
	.align	1
	.global	validWaypoint
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	validWaypoint, %function
validWaypoint:
.LVL150:
.LFB279:
	.loc 1 216 41 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 216 41 is_stmt 0 view .LVU327
	push	{r4, r5, r6}
.LCFI25:
	.loc 1 217 2 is_stmt 1 view .LVU328
.LVL151:
	.loc 1 219 2 view .LVU329
.LBB5:
	.loc 1 219 6 view .LVU330
	.loc 1 219 10 is_stmt 0 view .LVU331
	movs	r2, #0
.LBE5:
	.loc 1 217 10 view .LVU332
	mov	r5, r2
.LBB7:
	.loc 1 219 2 view .LVU333
	b	.L72
.LVL152:
.L86:
	.loc 1 220 61 discriminator 1 view .LVU334
	adds	r4, r1, #1
	.loc 1 220 57 discriminator 1 view .LVU335
	ldr	r6, .L87
	ldrsh	r4, [r6, r4, lsl #1]
	.loc 1 220 37 discriminator 1 view .LVU336
	cmp	r4, #360
	bne	.L73
	.loc 1 241 4 is_stmt 1 view .LVU337
	.loc 1 241 15 is_stmt 0 view .LVU338
	adds	r5, r5, #1
.LVL153:
	.loc 1 241 15 view .LVU339
	uxtb	r5, r5
.LVL154:
.L76:
	.loc 1 219 24 is_stmt 1 discriminator 2 view .LVU340
	.loc 1 219 25 is_stmt 0 discriminator 2 view .LVU341
	adds	r2, r2, #1
.LVL155:
.L72:
	.loc 1 219 17 is_stmt 1 discriminator 1 view .LVU342
	.loc 1 219 2 is_stmt 0 discriminator 1 view .LVU343
	cmp	r2, #3
	bgt	.L85
	.loc 1 220 3 is_stmt 1 view .LVU344
	.loc 1 220 25 is_stmt 0 view .LVU345
	lsls	r1, r2, #1
	.loc 1 220 23 view .LVU346
	ldr	r3, .L87
	ldrsh	r3, [r3, r2, lsl #2]
	.loc 1 220 5 view .LVU347
	cmp	r3, #360
	beq	.L86
.L73:
.LBB6:
	.loc 1 222 4 is_stmt 1 view .LVU348
	.loc 1 222 45 is_stmt 0 view .LVU349
	adds	r1, r1, #1
	.loc 1 222 41 view .LVU350
	ldr	r4, .L87
	ldrh	r1, [r4, r1, lsl #1]
	.loc 1 222 48 view .LVU351
	adds	r1, r1, #60
	.loc 1 222 12 view .LVU352
	sxth	r1, r1
.LVL156:
	.loc 1 223 4 is_stmt 1 view .LVU353
	.loc 1 223 41 is_stmt 0 view .LVU354
	uxth	r3, r3
	.loc 1 223 46 view .LVU355
	subs	r3, r3, #60
	.loc 1 223 12 view .LVU356
	sxth	r3, r3
.LVL157:
	.loc 1 225 4 is_stmt 1 view .LVU357
	.loc 1 225 6 is_stmt 0 view .LVU358
	cmp	r1, #179
	ble	.L75
	.loc 1 226 5 is_stmt 1 view .LVU359
	.loc 1 226 7 is_stmt 0 view .LVU360
	cmp	r3, r0
	bge	.L76
	.loc 1 226 54 discriminator 1 view .LVU361
	add	r3, r0, #360
.LVL158:
	.loc 1 226 37 discriminator 1 view .LVU362
	cmp	r3, r1
	bge	.L76
	.loc 1 227 12 view .LVU363
	movs	r0, #0
.LVL159:
	.loc 1 227 12 view .LVU364
	b	.L77
.LVL160:
.L75:
	.loc 1 231 9 is_stmt 1 view .LVU365
	.loc 1 231 11 is_stmt 0 view .LVU366
	cmn	r3, #179
	bge	.L78
	.loc 1 232 5 is_stmt 1 view .LVU367
	.loc 1 232 22 is_stmt 0 view .LVU368
	sub	r4, r0, #360
	.loc 1 232 7 view .LVU369
	cmp	r4, r3
	ble	.L76
	.loc 1 232 41 discriminator 1 view .LVU370
	cmp	r1, r0
	ble	.L76
	.loc 1 233 12 view .LVU371
	movs	r0, #0
.LVL161:
	.loc 1 233 12 view .LVU372
	b	.L77
.LVL162:
.L78:
	.loc 1 236 9 is_stmt 1 view .LVU373
	.loc 1 236 11 is_stmt 0 view .LVU374
	cmp	r3, r0
	bge	.L76
	.loc 1 236 41 discriminator 1 view .LVU375
	cmp	r1, r0
	ble	.L76
	.loc 1 237 11 view .LVU376
	movs	r0, #0
.LVL163:
	.loc 1 237 11 view .LVU377
	b	.L77
.LVL164:
.L85:
	.loc 1 237 11 view .LVU378
.LBE6:
.LBE7:
	.loc 1 246 2 is_stmt 1 view .LVU379
	.loc 1 246 4 is_stmt 0 view .LVU380
	cmp	r5, #4
	beq	.L83
	.loc 1 249 8 view .LVU381
	movs	r0, #0
.LVL165:
.L77:
	.loc 1 250 1 view .LVU382
	pop	{r4, r5, r6}
.LCFI26:
.LVL166:
	.loc 1 250 1 view .LVU383
	bx	lr
.LVL167:
.L83:
.LCFI27:
	.loc 1 247 9 view .LVU384
	movs	r0, #1
.LVL168:
	.loc 1 247 9 view .LVU385
	b	.L77
.L88:
	.align	2
.L87:
	.word	.LANCHOR3
.LFE279:
	.size	validWaypoint, .-validWaypoint
	.section	.text.checkForCollision,"ax",%progbits
	.align	1
	.global	checkForCollision
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	checkForCollision, %function
checkForCollision:
.LFB280:
	.loc 1 253 24 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI28:
	.loc 1 254 2 view .LVU387
.LBB8:
	.loc 1 254 5 is_stmt 0 view .LVU388
	movs	r0, #0
	bl	ir_read_blocking
.LVL169:
	movs	r1, #0
	bl	IrAnalogToMM
.LVL170:
	.loc 1 254 4 view .LVU389
	cmp	r0, #249
	ble	.L91
.LBE8:
	.loc 1 257 8 view .LVU390
	movs	r0, #0
.L90:
	.loc 1 258 1 view .LVU391
	pop	{r3, pc}
.L91:
.LBB9:
	.loc 1 255 9 view .LVU392
	movs	r0, #1
	b	.L90
.LBE9:
.LFE280:
	.size	checkForCollision, .-checkForCollision
	.global	collisionPrinter
	.global	collisionSectors
	.global	lastTheta
	.global	lastY
	.global	lastX
	.global	collisionCounter
	.section	.bss.collisionCounter,"aw",%nobits
	.type	collisionCounter, %object
	.size	collisionCounter, 1
collisionCounter:
	.space	1
	.section	.bss.collisionPrinter,"aw",%nobits
	.set	.LANCHOR4,. + 0
	.type	collisionPrinter, %object
	.size	collisionPrinter, 1
collisionPrinter:
	.space	1
	.section	.bss.lastTheta,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	lastTheta, %object
	.size	lastTheta, 4
lastTheta:
	.space	4
	.section	.bss.lastX,"aw",%nobits
	.align	1
	.set	.LANCHOR0,. + 0
	.type	lastX, %object
	.size	lastX, 2
lastX:
	.space	2
	.section	.bss.lastY,"aw",%nobits
	.align	1
	.set	.LANCHOR1,. + 0
	.type	lastY, %object
	.size	lastY, 2
lastY:
	.space	2
	.section	.data.collisionSectors,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	collisionSectors, %object
	.size	collisionSectors, 16
collisionSectors:
	.short	360
	.short	360
	.short	360
	.short	360
	.short	360
	.short	360
	.short	360
	.short	360
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
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.byte	0x4
	.4byte	.LCFI0-.LFB267
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x6
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB268
	.4byte	.LFE268-.LFB268
	.byte	0x4
	.4byte	.LCFI1-.LFB268
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0xa
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
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB269
	.4byte	.LFE269-.LFB269
	.byte	0x4
	.4byte	.LCFI2-.LFB269
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x6
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
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB270
	.4byte	.LFE270-.LFB270
	.byte	0x4
	.4byte	.LCFI3-.LFB270
	.byte	0xe
	.uleb128 0x28
	.byte	0x83
	.uleb128 0xa
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
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB271
	.4byte	.LFE271-.LFB271
	.byte	0x4
	.4byte	.LCFI4-.LFB271
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x6
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
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB272
	.4byte	.LFE272-.LFB272
	.byte	0x4
	.4byte	.LCFI5-.LFB272
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
	.uleb128 0x2c
	.byte	0x5
	.uleb128 0x50
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x51
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x58
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x2c
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0x6
	.uleb128 0x50
	.byte	0x6
	.uleb128 0x51
	.byte	0xe
	.uleb128 0x24
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB273
	.4byte	.LFE273-.LFB273
	.byte	0x4
	.4byte	.LCFI10-.LFB273
	.byte	0xe
	.uleb128 0x20
	.byte	0x84
	.uleb128 0x8
	.byte	0x85
	.uleb128 0x7
	.byte	0x86
	.uleb128 0x6
	.byte	0x87
	.uleb128 0x5
	.byte	0x88
	.uleb128 0x4
	.byte	0x89
	.uleb128 0x3
	.byte	0x8a
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x28
	.byte	0x5
	.uleb128 0x50
	.uleb128 0xa
	.byte	0x5
	.uleb128 0x51
	.uleb128 0x9
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0x6
	.uleb128 0x50
	.byte	0x6
	.uleb128 0x51
	.byte	0xe
	.uleb128 0x20
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB274
	.4byte	.LFE274-.LFB274
	.byte	0x4
	.4byte	.LCFI15-.LFB274
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB275
	.4byte	.LFE275-.LFB275
	.byte	0x4
	.4byte	.LCFI18-.LFB275
	.byte	0xe
	.uleb128 0x4
	.byte	0x84
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xa
	.byte	0xc4
	.byte	0xe
	.uleb128 0
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xb
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB276
	.4byte	.LFE276-.LFB276
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.byte	0x4
	.4byte	.LCFI21-.LFB277
	.byte	0xe
	.uleb128 0x4
	.byte	0x84
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xa
	.byte	0xc4
	.byte	0xe
	.uleb128 0
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xb
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.byte	0x4
	.4byte	.LCFI24-.LFB278
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x6
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
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.byte	0x4
	.4byte	.LCFI25-.LFB279
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xa
	.byte	0xc6
	.byte	0xc5
	.byte	0xc4
	.byte	0xe
	.uleb128 0
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xb
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.byte	0x4
	.4byte	.LCFI28-.LFB280
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE26:
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
	.file 7 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 8 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 9 "../../../../../../components/libraries/util/app_util.h"
	.file 10 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 11 "../../../../../../external/freertos/source/include/task.h"
	.file 12 "../../../../../../external/freertos/source/include/queue.h"
	.file 13 "../../../../../../external/freertos/source/include/semphr.h"
	.file 14 "../../../software/globals.h"
	.file 15 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 16 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\i2c.h"
	.file 17 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xe3b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF201
	.byte	0xc
	.4byte	.LASF202
	.4byte	.LASF203
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF75
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF76
	.uleb128 0x4
	.4byte	.LASF77
	.byte	0x3
	.byte	0x2f
	.byte	0x15
	.4byte	0x43
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF78
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x56
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x13
	.4byte	0x56
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x3
	.byte	0x35
	.byte	0x16
	.4byte	0x6e
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF81
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF82
	.byte	0x3
	.byte	0x37
	.byte	0x14
	.4byte	0x8d
	.uleb128 0x9
	.4byte	0x7c
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0xa0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF83
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF84
	.uleb128 0x18
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF39
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF21
	.uleb128 0x13
	.4byte	0xbe
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
	.4byte	0xca
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
	.4byte	0xdf
	.uleb128 0x19
	.4byte	.LASF85
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
	.4byte	.LASF86
	.byte	0x6
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xef
	.uleb128 0x1a
	.4byte	.LASF87
	.byte	0x6
	.2byte	0x110
	.byte	0x25
	.4byte	0xda
	.uleb128 0x1a
	.4byte	.LASF88
	.byte	0x6
	.2byte	0x111
	.byte	0x25
	.4byte	0xda
	.uleb128 0xa
	.4byte	0x5d
	.4byte	0x13c
	.uleb128 0xb
	.4byte	0xa0
	.byte	0x7f
	.byte	0
	.uleb128 0x13
	.4byte	0x12c
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x6
	.2byte	0x113
	.byte	0x1c
	.4byte	0x13c
	.uleb128 0xa
	.4byte	0xc5
	.4byte	0x159
	.uleb128 0x1b
	.byte	0
	.uleb128 0x13
	.4byte	0x14e
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x115
	.byte	0x13
	.4byte	0x159
	.uleb128 0x1a
	.4byte	.LASF91
	.byte	0x6
	.2byte	0x116
	.byte	0x13
	.4byte	0x159
	.uleb128 0x1a
	.4byte	.LASF92
	.byte	0x6
	.2byte	0x117
	.byte	0x13
	.4byte	0x159
	.uleb128 0x1a
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x118
	.byte	0x13
	.4byte	0x159
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x6
	.2byte	0x11a
	.byte	0x13
	.4byte	0x159
	.uleb128 0x1a
	.4byte	.LASF95
	.byte	0x6
	.2byte	0x11b
	.byte	0x13
	.4byte	0x159
	.uleb128 0x1a
	.4byte	.LASF96
	.byte	0x6
	.2byte	0x11c
	.byte	0x13
	.4byte	0x159
	.uleb128 0x1a
	.4byte	.LASF97
	.byte	0x6
	.2byte	0x11d
	.byte	0x13
	.4byte	0x159
	.uleb128 0x1a
	.4byte	.LASF98
	.byte	0x6
	.2byte	0x11e
	.byte	0x13
	.4byte	0x159
	.uleb128 0x1a
	.4byte	.LASF99
	.byte	0x6
	.2byte	0x11f
	.byte	0x13
	.4byte	0x159
	.uleb128 0x10
	.4byte	0x8d
	.4byte	0x1ef
	.uleb128 0x11
	.4byte	0x1ef
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1fa
	.uleb128 0x1c
	.4byte	.LASF113
	.uleb128 0x13
	.4byte	0x1f5
	.uleb128 0x1a
	.4byte	.LASF100
	.byte	0x6
	.2byte	0x135
	.byte	0xe
	.4byte	0x20c
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1e0
	.uleb128 0x10
	.4byte	0x8d
	.4byte	0x221
	.uleb128 0x11
	.4byte	0x221
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x1f5
	.uleb128 0x1a
	.4byte	.LASF101
	.byte	0x6
	.2byte	0x136
	.byte	0xe
	.4byte	0x234
	.uleb128 0xf
	.byte	0x4
	.4byte	0x212
	.uleb128 0x1d
	.4byte	.LASF102
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
	.4byte	.LASF103
	.byte	0x6
	.2byte	0x157
	.byte	0x1f
	.4byte	0x258
	.uleb128 0xf
	.byte	0x4
	.4byte	0x23a
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x7
	.2byte	0x744
	.byte	0x19
	.4byte	0x88
	.uleb128 0x1e
	.4byte	.LASF105
	.byte	0x8
	.byte	0x21
	.byte	0x11
	.4byte	0x94
	.uleb128 0x1e
	.4byte	.LASF106
	.byte	0x9
	.byte	0x53
	.byte	0x11
	.4byte	0x94
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x9
	.byte	0x54
	.byte	0x11
	.4byte	0x94
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x9
	.byte	0x72
	.byte	0x13
	.4byte	0x29b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x94
	.uleb128 0x1e
	.4byte	.LASF109
	.byte	0x9
	.byte	0x73
	.byte	0x11
	.4byte	0x94
	.uleb128 0x15
	.4byte	.LASF110
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
	.4byte	.LASF111
	.byte	0x5
	.byte	0x75
	.byte	0x19
	.4byte	0x2ad
	.uleb128 0xe
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2d6
	.uleb128 0x1c
	.4byte	.LASF114
	.uleb128 0x1a
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2e8
	.uleb128 0xf
	.byte	0x4
	.4byte	0x2c9
	.uleb128 0x1a
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2e8
	.uleb128 0x1a
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2e8
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF118
	.uleb128 0x15
	.4byte	.LASF119
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF120
	.uleb128 0x4
	.4byte	.LASF121
	.byte	0xb
	.byte	0x3e
	.byte	0x10
	.4byte	0xb5
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0xc
	.byte	0x2f
	.byte	0x10
	.4byte	0xb5
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0xd
	.byte	0x26
	.byte	0x17
	.4byte	0x332
	.uleb128 0x1e
	.4byte	.LASF124
	.byte	0xe
	.byte	0x11
	.byte	0x15
	.4byte	0x326
	.uleb128 0x1e
	.4byte	.LASF125
	.byte	0xe
	.byte	0x12
	.byte	0x5
	.4byte	0x326
	.uleb128 0x1e
	.4byte	.LASF126
	.byte	0xe
	.byte	0x13
	.byte	0x5
	.4byte	0x326
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0xe
	.byte	0x14
	.byte	0x5
	.4byte	0x326
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0xe
	.byte	0x15
	.byte	0x5
	.4byte	0x326
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0xe
	.byte	0x16
	.byte	0x5
	.4byte	0x326
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0xe
	.byte	0x17
	.byte	0x5
	.4byte	0x326
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0xe
	.byte	0x18
	.byte	0x5
	.4byte	0x326
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0xe
	.byte	0x1b
	.byte	0x1a
	.4byte	0x33e
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0xe
	.byte	0x1c
	.byte	0x1a
	.4byte	0x33e
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0xe
	.byte	0x1d
	.byte	0x1a
	.4byte	0x33e
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0xe
	.byte	0x1e
	.byte	0x1a
	.4byte	0x33e
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0xe
	.byte	0x1f
	.byte	0x1a
	.4byte	0x33e
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0xe
	.byte	0x20
	.byte	0x1a
	.4byte	0x33e
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0xe
	.byte	0x25
	.byte	0x16
	.4byte	0x332
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0xe
	.byte	0x26
	.byte	0x16
	.4byte	0x332
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0xe
	.byte	0x27
	.byte	0x16
	.4byte	0x332
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0xe
	.byte	0x2a
	.byte	0x10
	.4byte	0x4a
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0xe
	.byte	0x2b
	.byte	0x10
	.4byte	0x4a
	.uleb128 0x1e
	.4byte	.LASF143
	.byte	0xe
	.byte	0x2f
	.byte	0xc
	.4byte	0x308
	.uleb128 0x1e
	.4byte	.LASF144
	.byte	0xe
	.byte	0x30
	.byte	0xc
	.4byte	0x308
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0xe
	.byte	0x31
	.byte	0xc
	.4byte	0x308
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0xe
	.byte	0x36
	.byte	0xe
	.4byte	0x29
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0xe
	.byte	0x37
	.byte	0x10
	.4byte	0x62
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0xe
	.byte	0x38
	.byte	0x10
	.4byte	0x62
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0xe
	.byte	0x39
	.byte	0xe
	.4byte	0x29
	.uleb128 0x1e
	.4byte	.LASF150
	.byte	0xe
	.byte	0x3a
	.byte	0xe
	.4byte	0x29
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0xe
	.byte	0x3d
	.byte	0x10
	.4byte	0x62
	.uleb128 0x1e
	.4byte	.LASF152
	.byte	0xe
	.byte	0x3e
	.byte	0x10
	.4byte	0x62
	.uleb128 0x1a
	.4byte	.LASF153
	.byte	0xf
	.2byte	0x124
	.byte	0x2e
	.4byte	0x30f
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.4byte	0x4a
	.uleb128 0x5
	.byte	0x3
	.4byte	collisionCounter
	.uleb128 0x1f
	.4byte	.LASF155
	.byte	0x1
	.byte	0x3e
	.byte	0x9
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	lastX
	.uleb128 0x1f
	.4byte	.LASF156
	.byte	0x1
	.byte	0x3f
	.byte	0x9
	.4byte	0x62
	.uleb128 0x5
	.byte	0x3
	.4byte	lastY
	.uleb128 0x1f
	.4byte	.LASF157
	.byte	0x1
	.byte	0x40
	.byte	0x7
	.4byte	0x29
	.uleb128 0x5
	.byte	0x3
	.4byte	lastTheta
	.uleb128 0xa
	.4byte	0x62
	.4byte	0x50b
	.uleb128 0xb
	.4byte	0xa0
	.byte	0x7
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF158
	.byte	0x1
	.byte	0x94
	.byte	0x9
	.4byte	0x4fb
	.uleb128 0x5
	.byte	0x3
	.4byte	collisionSectors
	.uleb128 0x1f
	.4byte	.LASF159
	.byte	0x1
	.byte	0x95
	.byte	0x9
	.4byte	0x4a
	.uleb128 0x5
	.byte	0x3
	.4byte	collisionPrinter
	.uleb128 0x20
	.4byte	.LASF165
	.byte	0x1
	.byte	0xfd
	.byte	0x5
	.4byte	0x308
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x596
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0x18
	.uleb128 0x22
	.4byte	.LASF160
	.byte	0x1
	.byte	0xfe
	.byte	0x5
	.4byte	0x8d
	.4byte	0x560
	.uleb128 0x23
	.byte	0
	.uleb128 0x22
	.4byte	.LASF161
	.byte	0x1
	.byte	0xfe
	.byte	0x12
	.4byte	0x8d
	.4byte	0x572
	.uleb128 0x23
	.byte	0
	.uleb128 0x24
	.4byte	.LVL169
	.4byte	0xde6
	.4byte	0x585
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.4byte	.LVL170
	.4byte	0xdf2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF170
	.byte	0x1
	.byte	0xd8
	.byte	0x5
	.4byte	0x308
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x623
	.uleb128 0x28
	.4byte	.LASF168
	.byte	0x1
	.byte	0xd8
	.byte	0x1b
	.4byte	0x62
	.4byte	.LLST58
	.4byte	.LVUS58
	.uleb128 0x29
	.4byte	.LASF162
	.byte	0x1
	.byte	0xd9
	.byte	0xa
	.4byte	0x4a
	.4byte	.LLST59
	.4byte	.LVUS59
	.uleb128 0x21
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.byte	0xdb
	.byte	0xa
	.4byte	0x8d
	.4byte	.LLST60
	.4byte	.LVUS60
	.uleb128 0x2b
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x29
	.4byte	.LASF163
	.byte	0x1
	.byte	0xde
	.byte	0xc
	.4byte	0x62
	.4byte	.LLST61
	.4byte	.LVUS61
	.uleb128 0x29
	.4byte	.LASF164
	.byte	0x1
	.byte	0xdf
	.byte	0xc
	.4byte	0x62
	.4byte	.LLST62
	.4byte	.LVUS62
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF166
	.byte	0x1
	.byte	0xcb
	.byte	0x6
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x68c
	.uleb128 0x2b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.byte	0xce
	.byte	0xb
	.4byte	0x8d
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x24
	.4byte	.LVL146
	.4byte	0xdfe
	.4byte	0x671
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL147
	.4byte	0xdfe
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF167
	.byte	0x1
	.byte	0xb6
	.byte	0x6
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6ed
	.uleb128 0x2d
	.4byte	.LASF175
	.byte	0x1
	.byte	0xb6
	.byte	0x26
	.4byte	0x62
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x28
	.4byte	.LASF169
	.byte	0x1
	.byte	0xb6
	.byte	0x35
	.4byte	0x4a
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x29
	.4byte	.LASF164
	.byte	0x1
	.byte	0xb8
	.byte	0xa
	.4byte	0x62
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x29
	.4byte	.LASF163
	.byte	0x1
	.byte	0xb9
	.byte	0xa
	.4byte	0x62
	.4byte	.LLST56
	.4byte	.LVUS56
	.byte	0
	.uleb128 0x27
	.4byte	.LASF171
	.byte	0x1
	.byte	0xac
	.byte	0x9
	.4byte	0x62
	.4byte	.LFB276
	.4byte	.LFE276-.LFB276
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x744
	.uleb128 0x28
	.4byte	.LASF172
	.byte	0x1
	.byte	0xac
	.byte	0x23
	.4byte	0x4a
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x28
	.4byte	.LASF169
	.byte	0x1
	.byte	0xac
	.byte	0x37
	.4byte	0x4a
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x29
	.4byte	.LASF173
	.byte	0x1
	.byte	0xad
	.byte	0xa
	.4byte	0x62
	.4byte	.LLST53
	.4byte	.LVUS53
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF174
	.byte	0x1
	.byte	0x97
	.byte	0x6
	.4byte	.LFB275
	.4byte	.LFE275-.LFB275
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7ab
	.uleb128 0x28
	.4byte	.LASF175
	.byte	0x1
	.byte	0x97
	.byte	0x26
	.4byte	0x62
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x28
	.4byte	.LASF169
	.byte	0x1
	.byte	0x97
	.byte	0x35
	.4byte	0x4a
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x29
	.4byte	.LASF164
	.byte	0x1
	.byte	0x99
	.byte	0xa
	.4byte	0x62
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x29
	.4byte	.LASF163
	.byte	0x1
	.byte	0x9a
	.byte	0xa
	.4byte	0x62
	.4byte	.LLST50
	.4byte	.LVUS50
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF204
	.byte	0x1
	.byte	0x8c
	.byte	0x6
	.4byte	.LFB274
	.4byte	.LFE274-.LFB274
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7f9
	.uleb128 0x2f
	.4byte	.LASF176
	.byte	0x1
	.byte	0x8d
	.byte	0xa
	.4byte	0x4a
	.byte	0x1
	.uleb128 0x30
	.4byte	.LASF177
	.byte	0x1
	.byte	0x8e
	.byte	0xa
	.4byte	0x4a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x26
	.4byte	.LVL111
	.4byte	0xe0b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF178
	.byte	0x1
	.byte	0x74
	.byte	0x6
	.4byte	.LFB273
	.4byte	.LFE273-.LFB273
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x94c
	.uleb128 0x31
	.ascii	"x\000"
	.byte	0x1
	.byte	0x74
	.byte	0x21
	.4byte	0x62
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x31
	.ascii	"y\000"
	.byte	0x1
	.byte	0x74
	.byte	0x2c
	.4byte	0x62
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x28
	.4byte	.LASF179
	.byte	0x1
	.byte	0x74
	.byte	0x35
	.4byte	0x29
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x28
	.4byte	.LASF172
	.byte	0x1
	.byte	0x74
	.byte	0x43
	.4byte	0x37
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x28
	.4byte	.LASF180
	.byte	0x1
	.byte	0x74
	.byte	0x58
	.4byte	0x94c
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x2f
	.4byte	.LASF176
	.byte	0x1
	.byte	0x75
	.byte	0xa
	.4byte	0x4a
	.byte	0x8
	.uleb128 0x29
	.4byte	.LASF27
	.byte	0x1
	.byte	0x76
	.byte	0xc
	.4byte	0x952
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0x77
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST44
	.4byte	.LVUS44
	.uleb128 0x29
	.4byte	.LASF182
	.byte	0x1
	.byte	0x78
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x2b
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x7f
	.byte	0xd
	.4byte	0x8d
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x24
	.4byte	.LVL101
	.4byte	0xccb
	.4byte	0x901
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL103
	.4byte	0xb8d
	.4byte	0x92f
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL106
	.4byte	0xe0b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x62
	.uleb128 0xa
	.4byte	0x37
	.4byte	0x963
	.uleb128 0x32
	.4byte	0xa0
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x33
	.4byte	.LASF183
	.byte	0x1
	.byte	0x43
	.byte	0x6
	.4byte	.LFB272
	.4byte	.LFE272-.LFB272
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf4
	.uleb128 0x31
	.ascii	"x\000"
	.byte	0x1
	.byte	0x43
	.byte	0x21
	.4byte	0x62
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x31
	.ascii	"y\000"
	.byte	0x1
	.byte	0x43
	.byte	0x2c
	.4byte	0x62
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x28
	.4byte	.LASF179
	.byte	0x1
	.byte	0x43
	.byte	0x35
	.4byte	0x29
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x28
	.4byte	.LASF172
	.byte	0x1
	.byte	0x43
	.byte	0x43
	.4byte	0x37
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x28
	.4byte	.LASF180
	.byte	0x1
	.byte	0x43
	.byte	0x58
	.4byte	0x94c
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x2f
	.4byte	.LASF184
	.byte	0x1
	.byte	0x44
	.byte	0xa
	.4byte	0x4a
	.byte	0x2
	.uleb128 0x2f
	.4byte	.LASF176
	.byte	0x1
	.byte	0x45
	.byte	0xa
	.4byte	0x4a
	.byte	0x18
	.uleb128 0x29
	.4byte	.LASF27
	.byte	0x1
	.byte	0x46
	.byte	0xc
	.4byte	0xaf4
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x29
	.4byte	.LASF181
	.byte	0x1
	.byte	0x47
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x29
	.4byte	.LASF182
	.byte	0x1
	.byte	0x48
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x29
	.4byte	.LASF185
	.byte	0x1
	.byte	0x49
	.byte	0xa
	.4byte	0x62
	.4byte	.LLST33
	.4byte	.LVUS33
	.uleb128 0x29
	.4byte	.LASF186
	.byte	0x1
	.byte	0x4a
	.byte	0xa
	.4byte	0x62
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x29
	.4byte	.LASF187
	.byte	0x1
	.byte	0x4b
	.byte	0xa
	.4byte	0x62
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x34
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0xad7
	.uleb128 0x2a
	.ascii	"i\000"
	.byte	0x1
	.byte	0x5a
	.byte	0xd
	.4byte	0x8d
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x24
	.4byte	.LVL87
	.4byte	0xc43
	.4byte	0xab2
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL89
	.4byte	0xb05
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x90
	.uleb128 0x40
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x26
	.4byte	.LVL93
	.4byte	0xe0b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x37
	.4byte	0xb05
	.uleb128 0x32
	.4byte	0xa0
	.uleb128 0x1
	.byte	0x47
	.byte	0
	.uleb128 0x35
	.4byte	.LASF188
	.byte	0x1
	.byte	0x38
	.byte	0x9
	.4byte	0x62
	.4byte	.LFB271
	.4byte	.LFE271-.LFB271
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8d
	.uleb128 0x28
	.4byte	.LASF179
	.byte	0x1
	.byte	0x38
	.byte	0x20
	.4byte	0x29
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x28
	.4byte	.LASF172
	.byte	0x1
	.byte	0x38
	.byte	0x2e
	.4byte	0x37
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x28
	.4byte	.LASF180
	.byte	0x1
	.byte	0x38
	.byte	0x43
	.4byte	0x94c
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x28
	.4byte	.LASF189
	.byte	0x1
	.byte	0x38
	.byte	0x57
	.4byte	0x4a
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x29
	.4byte	.LASF190
	.byte	0x1
	.byte	0x39
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x36
	.4byte	.LVL65
	.4byte	0xe17
	.byte	0
	.uleb128 0x35
	.4byte	.LASF191
	.byte	0x1
	.byte	0x31
	.byte	0x9
	.4byte	0x62
	.4byte	.LFB270
	.4byte	.LFE270-.LFB270
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc43
	.uleb128 0x31
	.ascii	"y\000"
	.byte	0x1
	.byte	0x31
	.byte	0x1d
	.4byte	0x62
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x28
	.4byte	.LASF179
	.byte	0x1
	.byte	0x31
	.byte	0x26
	.4byte	0x29
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x28
	.4byte	.LASF172
	.byte	0x1
	.byte	0x31
	.byte	0x34
	.4byte	0x37
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x28
	.4byte	.LASF180
	.byte	0x1
	.byte	0x31
	.byte	0x49
	.4byte	0x94c
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x28
	.4byte	.LASF189
	.byte	0x1
	.byte	0x31
	.byte	0x5d
	.4byte	0x4a
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x29
	.4byte	.LASF190
	.byte	0x1
	.byte	0x32
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x24
	.4byte	.LVL46
	.4byte	0xe24
	.4byte	0xc39
	.uleb128 0x25
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
	.uleb128 0xa
	.uleb128 0x30
	.byte	0
	.uleb128 0x36
	.4byte	.LVL54
	.4byte	0xe17
	.byte	0
	.uleb128 0x35
	.4byte	.LASF192
	.byte	0x1
	.byte	0x29
	.byte	0x9
	.4byte	0x62
	.4byte	.LFB269
	.4byte	.LFE269-.LFB269
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xccb
	.uleb128 0x28
	.4byte	.LASF179
	.byte	0x1
	.byte	0x29
	.byte	0x20
	.4byte	0x29
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x28
	.4byte	.LASF172
	.byte	0x1
	.byte	0x29
	.byte	0x2e
	.4byte	0x37
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x28
	.4byte	.LASF180
	.byte	0x1
	.byte	0x29
	.byte	0x43
	.4byte	0x94c
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x28
	.4byte	.LASF189
	.byte	0x1
	.byte	0x29
	.byte	0x57
	.4byte	0x4a
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x29
	.4byte	.LASF193
	.byte	0x1
	.byte	0x2a
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x36
	.4byte	.LVL38
	.4byte	0xe24
	.byte	0
	.uleb128 0x35
	.4byte	.LASF194
	.byte	0x1
	.byte	0x22
	.byte	0x9
	.4byte	0x62
	.4byte	.LFB268
	.4byte	.LFE268-.LFB268
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd81
	.uleb128 0x31
	.ascii	"x\000"
	.byte	0x1
	.byte	0x22
	.byte	0x1d
	.4byte	0x62
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x28
	.4byte	.LASF179
	.byte	0x1
	.byte	0x22
	.byte	0x26
	.4byte	0x29
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x28
	.4byte	.LASF172
	.byte	0x1
	.byte	0x22
	.byte	0x34
	.4byte	0x37
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x28
	.4byte	.LASF180
	.byte	0x1
	.byte	0x22
	.byte	0x49
	.4byte	0x94c
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x28
	.4byte	.LASF189
	.byte	0x1
	.byte	0x22
	.byte	0x5d
	.4byte	0x4a
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x29
	.4byte	.LASF193
	.byte	0x1
	.byte	0x23
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x24
	.4byte	.LVL19
	.4byte	0xe24
	.4byte	0xd77
	.uleb128 0x25
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
	.uleb128 0xa
	.uleb128 0x30
	.byte	0
	.uleb128 0x36
	.4byte	.LVL27
	.4byte	0xe24
	.byte	0
	.uleb128 0x33
	.4byte	.LASF195
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xde0
	.uleb128 0x28
	.4byte	.LASF196
	.byte	0x1
	.byte	0x14
	.byte	0x1a
	.4byte	0xde0
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x29
	.4byte	.LASF197
	.byte	0x1
	.byte	0x15
	.byte	0x8
	.4byte	0x29
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x26
	.4byte	.LVL3
	.4byte	0xe31
	.uleb128 0x25
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x30
	.byte	0x8
	.4byte	0x54442d18
	.4byte	0x401921fb
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x29
	.uleb128 0x37
	.4byte	.LASF161
	.4byte	.LASF161
	.byte	0x1
	.byte	0xfe
	.byte	0x12
	.uleb128 0x37
	.4byte	.LASF160
	.4byte	.LASF160
	.byte	0x1
	.byte	0xfe
	.byte	0x5
	.uleb128 0x38
	.4byte	.LASF198
	.4byte	.LASF198
	.byte	0xf
	.2byte	0x1bf
	.byte	0x6
	.uleb128 0x37
	.4byte	.LASF199
	.4byte	.LASF199
	.byte	0x10
	.byte	0x10
	.byte	0x6
	.uleb128 0x39
	.ascii	"sin\000"
	.ascii	"sin\000"
	.byte	0x11
	.2byte	0x144
	.byte	0x8
	.uleb128 0x39
	.ascii	"cos\000"
	.ascii	"cos\000"
	.byte	0x11
	.2byte	0x125
	.byte	0x8
	.uleb128 0x38
	.4byte	.LASF200
	.4byte	.LASF200
	.byte	0x11
	.2byte	0x2f3
	.byte	0x8
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x28
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
.LVUS58:
	.uleb128 0
	.uleb128 .LVU364
	.uleb128 .LVU364
	.uleb128 .LVU365
	.uleb128 .LVU365
	.uleb128 .LVU372
	.uleb128 .LVU372
	.uleb128 .LVU373
	.uleb128 .LVU373
	.uleb128 .LVU377
	.uleb128 .LVU377
	.uleb128 .LVU378
	.uleb128 .LVU378
	.uleb128 .LVU382
	.uleb128 .LVU382
	.uleb128 .LVU384
	.uleb128 .LVU384
	.uleb128 .LVU385
	.uleb128 .LVU385
	.uleb128 0
.LLST58:
	.4byte	.LVL150
	.4byte	.LVL159
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL159
	.4byte	.LVL160
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL160
	.4byte	.LVL161
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL161
	.4byte	.LVL162
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL162
	.4byte	.LVL163
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL163
	.4byte	.LVL164
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL164
	.4byte	.LVL165
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL165
	.4byte	.LVL167
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL167
	.4byte	.LVL168
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL168
	.4byte	.LFE279
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS59:
	.uleb128 .LVU329
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 .LVU339
	.uleb128 .LVU340
	.uleb128 .LVU383
	.uleb128 .LVU384
	.uleb128 0
.LLST59:
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL154
	.4byte	.LVL166
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL167
	.4byte	.LFE279
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS60:
	.uleb128 .LVU331
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 0
.LLST60:
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LFE279
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS61:
	.uleb128 .LVU353
	.uleb128 .LVU378
.LLST61:
	.4byte	.LVL156
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS62:
	.uleb128 .LVU357
	.uleb128 .LVU362
	.uleb128 .LVU365
	.uleb128 .LVU378
.LLST62:
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL160
	.4byte	.LVL164
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS57:
	.uleb128 .LVU302
	.uleb128 .LVU325
.LLST57:
	.4byte	.LVL145
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS54:
	.uleb128 0
	.uleb128 .LVU272
	.uleb128 .LVU272
	.uleb128 0
.LLST54:
	.4byte	.LVL131
	.4byte	.LVL133
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL133
	.4byte	.LFE277
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS55:
	.uleb128 .LVU270
	.uleb128 .LVU278
.LLST55:
	.4byte	.LVL132
	.4byte	.LVL135
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 .LVU273
	.uleb128 .LVU279
	.uleb128 .LVU279
	.uleb128 .LVU282
	.uleb128 .LVU282
	.uleb128 .LVU283
	.uleb128 .LVU284
	.uleb128 .LVU288
	.uleb128 .LVU288
	.uleb128 .LVU289
	.uleb128 .LVU290
	.uleb128 .LVU292
	.uleb128 .LVU292
	.uleb128 .LVU293
.LLST56:
	.4byte	.LVL134
	.4byte	.LVL136
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL136
	.4byte	.LVL137
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x22
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL139
	.4byte	.LVL140
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x22
	.4byte	.LVL140
	.4byte	.LVL141
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0x22
	.4byte	.LVL143
	.4byte	.LVL144
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 0
	.uleb128 .LVU257
	.uleb128 .LVU257
	.uleb128 0
.LLST51:
	.4byte	.LVL126
	.4byte	.LVL128
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL128
	.4byte	.LFE276
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS52:
	.uleb128 0
	.uleb128 .LVU256
	.uleb128 .LVU256
	.uleb128 0
.LLST52:
	.4byte	.LVL126
	.4byte	.LVL127
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL127
	.4byte	.LFE276
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 .LVU259
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 0
.LLST53:
	.4byte	.LVL129
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL130
	.4byte	.LFE276
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 0
	.uleb128 .LVU237
	.uleb128 .LVU237
	.uleb128 .LVU238
	.uleb128 .LVU238
	.uleb128 .LVU246
	.uleb128 .LVU246
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 0
.LLST47:
	.4byte	.LVL112
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL118
	.4byte	.LVL122
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL123
	.4byte	.LFE275
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 0
	.uleb128 .LVU229
	.uleb128 .LVU229
	.uleb128 0
.LLST48:
	.4byte	.LVL112
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL114
	.4byte	.LFE275
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU227
	.uleb128 .LVU237
	.uleb128 .LVU238
	.uleb128 .LVU242
	.uleb128 .LVU247
	.uleb128 0
.LLST49:
	.4byte	.LVL113
	.4byte	.LVL117
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL118
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL123
	.4byte	.LFE275
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 .LVU230
	.uleb128 .LVU236
	.uleb128 .LVU236
	.uleb128 .LVU237
	.uleb128 .LVU238
	.uleb128 .LVU243
	.uleb128 .LVU243
	.uleb128 .LVU244
	.uleb128 .LVU247
	.uleb128 .LVU251
	.uleb128 .LVU251
	.uleb128 .LVU252
.LLST50:
	.4byte	.LVL115
	.4byte	.LVL116
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL116
	.4byte	.LVL117
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL118
	.4byte	.LVL120
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL120
	.4byte	.LVL121
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL123
	.4byte	.LVL124
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL124
	.4byte	.LVL125
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 0
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 0
.LLST38:
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL100
	.4byte	.LFE273
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 0
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 0
.LLST39:
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL100
	.4byte	.LFE273
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 0
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 .LVU214
	.uleb128 .LVU214
	.uleb128 0
.LLST40:
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL100
	.4byte	.LVL109
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL109
	.4byte	.LFE273
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 0
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 0
.LLST41:
	.4byte	.LVL96
	.4byte	.LVL100
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL100
	.4byte	.LFE273
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS42:
	.uleb128 0
	.uleb128 .LVU180
	.uleb128 .LVU180
	.uleb128 0
.LLST42:
	.4byte	.LVL96
	.4byte	.LVL98
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL98
	.4byte	.LFE273
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 .LVU174
	.uleb128 .LVU213
	.uleb128 .LVU213
	.uleb128 0
.LLST43:
	.4byte	.LVL97
	.4byte	.LVL108
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	.LVL108
	.4byte	.LFE273
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU191
	.uleb128 .LVU197
.LLST44:
	.4byte	.LVL102
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x59
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU193
	.uleb128 .LVU203
.LLST45:
	.4byte	.LVL103
	.4byte	.LVL105
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 .LVU187
	.uleb128 .LVU189
	.uleb128 .LVU189
	.uleb128 0
.LLST46:
	.4byte	.LVL99
	.4byte	.LVL100
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL100
	.4byte	.LFE273
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU100
	.uleb128 .LVU100
	.uleb128 0
.LLST25:
	.4byte	.LVL70
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL77
	.4byte	.LFE272
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS26:
	.uleb128 0
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 0
.LLST26:
	.4byte	.LVL70
	.4byte	.LVL75
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL75
	.4byte	.LFE272
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS27:
	.uleb128 0
	.uleb128 .LVU101
	.uleb128 .LVU101
	.uleb128 .LVU168
	.uleb128 .LVU168
	.uleb128 0
.LLST27:
	.4byte	.LVL70
	.4byte	.LVL78-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL78-1
	.4byte	.LVL94
	.2byte	0x2
	.byte	0x90
	.uleb128 0x50
	.4byte	.LVL94
	.4byte	.LFE272
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU95
	.uleb128 .LVU95
	.uleb128 0
.LLST28:
	.4byte	.LVL70
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL74
	.4byte	.LFE272
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 0
	.uleb128 .LVU91
	.uleb128 .LVU91
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 0
.LLST29:
	.4byte	.LVL70
	.4byte	.LVL72
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL72
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL95
	.4byte	.LFE272
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU87
	.uleb128 .LVU166
	.uleb128 .LVU166
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 0
.LLST30:
	.4byte	.LVL71
	.4byte	.LVL92
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL92
	.4byte	.LVL93-1
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LVL93-1
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x91
	.sleb128 -72
	.4byte	.LVL95
	.4byte	.LFE272
	.2byte	0x3
	.byte	0x7d
	.sleb128 -72
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU140
	.uleb128 .LVU149
.LLST31:
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU142
	.uleb128 .LVU156
.LLST32:
	.4byte	.LVL89
	.4byte	.LVL91
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS33:
	.uleb128 .LVU93
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 0
.LLST33:
	.4byte	.LVL73
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x91
	.sleb128 -80
	.4byte	.LVL95
	.4byte	.LFE272
	.2byte	0x3
	.byte	0x7d
	.sleb128 -80
	.4byte	0
	.4byte	0
.LVUS34:
	.uleb128 .LVU98
	.uleb128 .LVU169
	.uleb128 .LVU169
	.uleb128 0
.LLST34:
	.4byte	.LVL76
	.4byte	.LVL95
	.2byte	0x3
	.byte	0x91
	.sleb128 -76
	.4byte	.LVL95
	.4byte	.LFE272
	.2byte	0x3
	.byte	0x7d
	.sleb128 -76
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 .LVU104
	.uleb128 .LVU126
.LLST35:
	.4byte	.LVL82
	.4byte	.LVL83
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 .LVU129
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU169
.LLST36:
	.4byte	.LVL84
	.4byte	.LVL85
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL85
	.4byte	.LVL95
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 0
.LLST19:
	.4byte	.LVL60
	.4byte	.LVL62-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL62-1
	.4byte	.LFE271
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU73
	.uleb128 .LVU73
	.uleb128 0
.LLST20:
	.4byte	.LVL60
	.4byte	.LVL61
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL61
	.4byte	.LFE271
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 0
.LLST21:
	.4byte	.LVL60
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL62-1
	.4byte	.LVL69
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL69
	.4byte	.LFE271
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU74
	.uleb128 .LVU74
	.uleb128 0
.LLST22:
	.4byte	.LVL60
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL62-1
	.4byte	.LFE271
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU78
	.uleb128 0
.LLST23:
	.4byte	.LVL68
	.4byte	.LFE271
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 0
.LLST13:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL44
	.4byte	.LFE270
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST14:
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL45-1
	.4byte	.LFE270
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST15:
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL45-1
	.4byte	.LFE270
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU68
	.uleb128 .LVU68
	.uleb128 0
.LLST16:
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45-1
	.4byte	.LVL59
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL59
	.4byte	.LFE270
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST17:
	.4byte	.LVL43
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL45-1
	.4byte	.LFE270
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU65
	.uleb128 0
.LLST18:
	.4byte	.LVL58
	.4byte	.LFE270
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 0
.LLST8:
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL35-1
	.4byte	.LFE269
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 0
.LLST9:
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL34
	.4byte	.LFE269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU50
	.uleb128 .LVU50
	.uleb128 0
.LLST10:
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL35-1
	.4byte	.LVL42
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL42
	.4byte	.LFE269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 0
.LLST11:
	.4byte	.LVL33
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35-1
	.4byte	.LFE269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU47
	.uleb128 0
.LLST12:
	.4byte	.LVL41
	.4byte	.LFE269
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST2:
	.4byte	.LVL16
	.4byte	.LVL17
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL17
	.4byte	.LFE268
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST3:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x2
	.byte	0x90
	.uleb128 0x40
	.4byte	.LVL18-1
	.4byte	.LFE268
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x40
	.uleb128 0x29
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST4:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL18-1
	.4byte	.LFE268
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 .LVU37
	.uleb128 .LVU37
	.uleb128 0
.LLST5:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18-1
	.4byte	.LVL32
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL32
	.4byte	.LFE268
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST6:
	.4byte	.LVL16
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-1
	.4byte	.LFE268
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU34
	.uleb128 0
.LLST7:
	.4byte	.LVL31
	.4byte	.LFE268
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE267
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU6
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-1
	.4byte	.LVL15
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL15
	.4byte	.LFE267
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x2bd
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xe3f
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
	.4byte	0x4b3
	.ascii	"collisionCounter\000"
	.4byte	0x4c5
	.ascii	"lastX\000"
	.4byte	0x4d7
	.ascii	"lastY\000"
	.4byte	0x4e9
	.ascii	"lastTheta\000"
	.4byte	0x50b
	.ascii	"collisionSectors\000"
	.4byte	0x51d
	.ascii	"collisionPrinter\000"
	.4byte	0x4b3
	.ascii	"collisionCounter\000"
	.4byte	0x52f
	.ascii	"checkForCollision\000"
	.4byte	0x54e
	.ascii	"IrAnalogToMM\000"
	.4byte	0x560
	.ascii	"ir_read_blocking\000"
	.4byte	0x596
	.ascii	"validWaypoint\000"
	.4byte	0x623
	.ascii	"printCollisionSectors\000"
	.4byte	0x68c
	.ascii	"decreaseCollisionSector\000"
	.4byte	0x6ed
	.ascii	"getDetectionAngle\000"
	.4byte	0x744
	.ascii	"increaseCollisionSector\000"
	.4byte	0x7ab
	.ascii	"sendScanBorder\000"
	.4byte	0x7f9
	.ascii	"sendOldPoseMessage\000"
	.4byte	0x963
	.ascii	"sendNewPoseMessage\000"
	.4byte	0xb05
	.ascii	"distObjectYlocal\000"
	.4byte	0xb8d
	.ascii	"distObjectY\000"
	.4byte	0xc43
	.ascii	"distObjectXlocal\000"
	.4byte	0xccb
	.ascii	"distObjectX\000"
	.4byte	0xd81
	.ascii	"vFunc_Inf2pi\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x224
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xe3f
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
	.4byte	0x75
	.ascii	"short unsigned int\000"
	.4byte	0x8d
	.ascii	"int\000"
	.4byte	0x7c
	.ascii	"int32_t\000"
	.4byte	0xa0
	.ascii	"unsigned int\000"
	.4byte	0x94
	.ascii	"uint32_t\000"
	.4byte	0xa7
	.ascii	"long long int\000"
	.4byte	0xae
	.ascii	"long long unsigned int\000"
	.4byte	0x29
	.ascii	"float\000"
	.4byte	0x30
	.ascii	"double\000"
	.4byte	0xb7
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xbe
	.ascii	"char\000"
	.4byte	0xca
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xdf
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x23a
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x2ad
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2c9
	.ascii	"FILE\000"
	.4byte	0x308
	.ascii	"_Bool\000"
	.4byte	0x30f
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x31f
	.ascii	"long unsigned int\000"
	.4byte	0x326
	.ascii	"TaskHandle_t\000"
	.4byte	0x332
	.ascii	"QueueHandle_t\000"
	.4byte	0x33e
	.ascii	"SemaphoreHandle_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.4byte	.LFB268
	.4byte	.LFE268-.LFB268
	.4byte	.LFB269
	.4byte	.LFE269-.LFB269
	.4byte	.LFB270
	.4byte	.LFE270-.LFB270
	.4byte	.LFB271
	.4byte	.LFE271-.LFB271
	.4byte	.LFB272
	.4byte	.LFE272-.LFB272
	.4byte	.LFB273
	.4byte	.LFE273-.LFB273
	.4byte	.LFB274
	.4byte	.LFE274-.LFB274
	.4byte	.LFB275
	.4byte	.LFE275-.LFB275
	.4byte	.LFB276
	.4byte	.LFE276-.LFB276
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	0
	.4byte	0
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	0
	.4byte	0
	.4byte	.LFB267
	.4byte	.LFE267
	.4byte	.LFB268
	.4byte	.LFE268
	.4byte	.LFB269
	.4byte	.LFE269
	.4byte	.LFB270
	.4byte	.LFE270
	.4byte	.LFB271
	.4byte	.LFE271
	.4byte	.LFB272
	.4byte	.LFE272
	.4byte	.LFB273
	.4byte	.LFE273
	.4byte	.LFB274
	.4byte	.LFE274
	.4byte	.LFB275
	.4byte	.LFE275
	.4byte	.LFB276
	.4byte	.LFE276
	.4byte	.LFB277
	.4byte	.LFE277
	.4byte	.LFB278
	.4byte	.LFE278
	.4byte	.LFB279
	.4byte	.LFE279
	.4byte	.LFB280
	.4byte	.LFE280
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
	.file 18 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\functions.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x12
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3
	.byte	0x4
	.file 19 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x11
	.byte	0x4
	.file 20 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\defines.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x14
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x10
	.file 21 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x15
	.file 22 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x16
	.file 23 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x17
	.file 24 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x18
	.file 25 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.file 26 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x1a
	.file 27 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x1b
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0x4
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x5
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
	.uleb128 0xa
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
	.file 58 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x3a
	.file 59 "../../../../../../modules/nrfx/hal/nrf_twim.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x3b
	.byte	0x4
	.byte	0x4
	.file 60 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x3c
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 61 "../../../../../../components/libraries/queue/nrf_queue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x3d
	.file 62 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x3e
	.byte	0x4
	.file 63 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x3f
	.file 64 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x40
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 65 "../../../software/MainComTask.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x41
	.file 66 "../../../drivers/defines.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x42
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xe
	.file 67 "../../../../../../external/freertos/source/include/FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x43
	.file 68 "../../../config/FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x44
	.file 69 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd6
	.uleb128 0x45
	.file 70 "../../../systemView/SEGGER_SYSVIEW.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x46
	.file 71 "../../../systemView/SEGGER.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x47
	.file 72 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x48
	.byte	0x4
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
	.file 78 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x4e
	.byte	0x4
	.byte	0x4
	.file 79 "../../../../../../external/freertos/source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x4f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xb
	.file 80 "../../../../../../external/freertos/source/include/list.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x50
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xd
	.byte	0x3
	.uleb128 0x24
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 81 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x51
	.file 82 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x52
	.file 83 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x53
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x9
	.byte	0x4
	.file 84 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x54
	.byte	0x4
	.byte	0x4
	.file 85 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x55
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0xf
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
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
.LASF109:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF96:
	.ascii	"__RAL_data_utf8_space\000"
.LASF71:
	.ascii	"date_time_format\000"
.LASF91:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF5:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF170:
	.ascii	"validWaypoint\000"
.LASF87:
	.ascii	"__RAL_codeset_ascii\000"
.LASF20:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF52:
	.ascii	"p_cs_precedes\000"
.LASF125:
	.ascii	"handle_user_task\000"
.LASF193:
	.ascii	"xDist\000"
.LASF98:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF141:
	.ascii	"gHandshook\000"
.LASF84:
	.ascii	"long long unsigned int\000"
.LASF201:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF27:
	.ascii	"data\000"
.LASF23:
	.ascii	"__locale_s\000"
.LASF101:
	.ascii	"__user_get_time_of_day\000"
.LASF108:
	.ascii	"_vectors\000"
.LASF122:
	.ascii	"QueueHandle_t\000"
.LASF104:
	.ascii	"ITM_RxBuffer\000"
.LASF69:
	.ascii	"date_format\000"
.LASF19:
	.ascii	"next\000"
.LASF43:
	.ascii	"int_curr_symbol\000"
.LASF67:
	.ascii	"abbrev_month_names\000"
.LASF80:
	.ascii	"int16_t\000"
.LASF83:
	.ascii	"long long int\000"
.LASF78:
	.ascii	"signed char\000"
.LASF174:
	.ascii	"increaseCollisionSector\000"
.LASF177:
	.ascii	"scanBorderID\000"
.LASF85:
	.ascii	"__RAL_global_locale\000"
.LASF0:
	.ascii	"module_id\000"
.LASF28:
	.ascii	"codeset\000"
.LASF37:
	.ascii	"__wctomb\000"
.LASF171:
	.ascii	"getDetectionAngle\000"
.LASF35:
	.ascii	"__towupper\000"
.LASF188:
	.ascii	"distObjectYlocal\000"
.LASF130:
	.ascii	"sensor_tower_task\000"
.LASF176:
	.ascii	"msgLength\000"
.LASF198:
	.ascii	"nrf_log_frontend_std_2\000"
.LASF39:
	.ascii	"long int\000"
.LASF149:
	.ascii	"gLeft\000"
.LASF29:
	.ascii	"__RAL_locale_data_t\000"
.LASF95:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF121:
	.ascii	"TaskHandle_t\000"
.LASF115:
	.ascii	"stdin\000"
.LASF172:
	.ascii	"servoAngle\000"
.LASF162:
	.ascii	"noCollision\000"
.LASF6:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF2:
	.ascii	"uint16_t\000"
.LASF76:
	.ascii	"double\000"
.LASF64:
	.ascii	"day_names\000"
.LASF31:
	.ascii	"__isctype\000"
.LASF58:
	.ascii	"int_p_cs_precedes\000"
.LASF131:
	.ascii	"arq_task\000"
.LASF15:
	.ascii	"__irq_masks\000"
.LASF65:
	.ascii	"abbrev_day_names\000"
.LASF74:
	.ascii	"__wchar\000"
.LASF143:
	.ascii	"USEBLUETOOTH\000"
.LASF41:
	.ascii	"thousands_sep\000"
.LASF175:
	.ascii	"angle\000"
.LASF47:
	.ascii	"mon_grouping\000"
.LASF34:
	.ascii	"__iswctype\000"
.LASF57:
	.ascii	"n_sign_posn\000"
.LASF155:
	.ascii	"lastX\000"
.LASF156:
	.ascii	"lastY\000"
.LASF4:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF199:
	.ascii	"i2cSendNOADDR\000"
.LASF158:
	.ascii	"collisionSectors\000"
.LASF182:
	.ascii	"yObject\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF185:
	.ascii	"xDiff\000"
.LASF60:
	.ascii	"int_p_sep_by_space\000"
.LASF105:
	.ascii	"SystemCoreClock\000"
.LASF68:
	.ascii	"am_pm_indicator\000"
.LASF161:
	.ascii	"ir_read_blocking\000"
.LASF94:
	.ascii	"__RAL_data_utf8_period\000"
.LASF165:
	.ascii	"checkForCollision\000"
.LASF42:
	.ascii	"grouping\000"
.LASF120:
	.ascii	"long unsigned int\000"
.LASF36:
	.ascii	"__towlower\000"
.LASF147:
	.ascii	"gX_hat\000"
.LASF99:
	.ascii	"__RAL_data_empty_string\000"
.LASF128:
	.ascii	"pose_controller_task\000"
.LASF24:
	.ascii	"__category\000"
.LASF139:
	.ascii	"scanStatusQ\000"
.LASF119:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF107:
	.ascii	"__StackLimit\000"
.LASF159:
	.ascii	"collisionPrinter\000"
.LASF110:
	.ascii	"nrf_nvic_state_t\000"
.LASF126:
	.ascii	"handle_microsd_task\000"
.LASF140:
	.ascii	"queue_microsd\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF26:
	.ascii	"name\000"
.LASF160:
	.ascii	"IrAnalogToMM\000"
.LASF203:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF169:
	.ascii	"sensor\000"
.LASF179:
	.ascii	"theta\000"
.LASF202:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\drivers\\functions.c\000"
.LASF178:
	.ascii	"sendOldPoseMessage\000"
.LASF16:
	.ascii	"__cr_flag\000"
.LASF113:
	.ascii	"timeval\000"
.LASF116:
	.ascii	"stdout\000"
.LASF173:
	.ascii	"sensorAngle\000"
.LASF195:
	.ascii	"vFunc_Inf2pi\000"
.LASF129:
	.ascii	"communication_task\000"
.LASF157:
	.ascii	"lastTheta\000"
.LASF25:
	.ascii	"__RAL_locale_t\000"
.LASF70:
	.ascii	"time_format\000"
.LASF134:
	.ascii	"xTickMutex\000"
.LASF32:
	.ascii	"__toupper\000"
.LASF56:
	.ascii	"p_sign_posn\000"
.LASF8:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF89:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF135:
	.ascii	"xControllerBSem\000"
.LASF18:
	.ascii	"decode\000"
.LASF13:
	.ascii	"NRF_TWI_FREQ_400K\000"
.LASF38:
	.ascii	"__mbtowc\000"
.LASF111:
	.ascii	"nrf_nvic_state\000"
.LASF168:
	.ascii	"waypointAngle\000"
.LASF86:
	.ascii	"__RAL_c_locale\000"
.LASF154:
	.ascii	"collisionCounter\000"
.LASF33:
	.ascii	"__tolower\000"
.LASF133:
	.ascii	"xPoseMutex\000"
.LASF100:
	.ascii	"__user_set_time_of_day\000"
.LASF59:
	.ascii	"int_n_cs_precedes\000"
.LASF150:
	.ascii	"gRight\000"
.LASF75:
	.ascii	"float\000"
.LASF204:
	.ascii	"sendScanBorder\000"
.LASF73:
	.ascii	"__state\000"
.LASF106:
	.ascii	"__StackTop\000"
.LASF132:
	.ascii	"xScanLock\000"
.LASF118:
	.ascii	"_Bool\000"
.LASF82:
	.ascii	"int32_t\000"
.LASF10:
	.ascii	"unsigned char\000"
.LASF90:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF51:
	.ascii	"frac_digits\000"
.LASF81:
	.ascii	"short int\000"
.LASF144:
	.ascii	"newServer\000"
.LASF103:
	.ascii	"__RAL_error_decoder_head\000"
.LASF164:
	.ascii	"lowerLimit\000"
.LASF146:
	.ascii	"gTheta_hat\000"
.LASF72:
	.ascii	"__mbstate_s\000"
.LASF190:
	.ascii	"yDist\000"
.LASF112:
	.ascii	"FILE\000"
.LASF46:
	.ascii	"mon_thousands_sep\000"
.LASF167:
	.ascii	"decreaseCollisionSector\000"
.LASF151:
	.ascii	"gRightWheelTicks\000"
.LASF166:
	.ascii	"printCollisionSectors\000"
.LASF48:
	.ascii	"positive_sign\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF142:
	.ascii	"gPaused\000"
.LASF189:
	.ascii	"sensorNumber\000"
.LASF62:
	.ascii	"int_p_sign_posn\000"
.LASF192:
	.ascii	"distObjectXlocal\000"
.LASF123:
	.ascii	"SemaphoreHandle_t\000"
.LASF21:
	.ascii	"char\000"
.LASF138:
	.ascii	"poseControllerQ\000"
.LASF53:
	.ascii	"p_sep_by_space\000"
.LASF196:
	.ascii	"angle_in_radians\000"
.LASF153:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF163:
	.ascii	"upperLimit\000"
.LASF181:
	.ascii	"xObject\000"
.LASF9:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF49:
	.ascii	"negative_sign\000"
.LASF30:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF77:
	.ascii	"int8_t\000"
.LASF152:
	.ascii	"gLeftWheelTicks\000"
.LASF200:
	.ascii	"fmod\000"
.LASF12:
	.ascii	"NRF_TWI_FREQ_250K\000"
.LASF63:
	.ascii	"int_n_sign_posn\000"
.LASF127:
	.ascii	"pose_estimator_task\000"
.LASF117:
	.ascii	"stderr\000"
.LASF11:
	.ascii	"NRF_TWI_FREQ_100K\000"
.LASF180:
	.ascii	"sensorData\000"
.LASF92:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF124:
	.ascii	"handle_display_task\000"
.LASF22:
	.ascii	"__RAL_error_decoder_s\000"
.LASF102:
	.ascii	"__RAL_error_decoder_t\000"
.LASF54:
	.ascii	"n_cs_precedes\000"
.LASF79:
	.ascii	"uint8_t\000"
.LASF88:
	.ascii	"__RAL_codeset_utf8\000"
.LASF50:
	.ascii	"int_frac_digits\000"
.LASF145:
	.ascii	"validateWP\000"
.LASF66:
	.ascii	"month_names\000"
.LASF187:
	.ascii	"thetaDiff\000"
.LASF136:
	.ascii	"xCommandReadyBSem\000"
.LASF137:
	.ascii	"mutex_spi\000"
.LASF61:
	.ascii	"int_n_sep_by_space\000"
.LASF55:
	.ascii	"n_sep_by_space\000"
.LASF114:
	.ascii	"__RAL_FILE\000"
.LASF186:
	.ascii	"yDiff\000"
.LASF97:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF93:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF45:
	.ascii	"mon_decimal_point\000"
.LASF183:
	.ascii	"sendNewPoseMessage\000"
.LASF194:
	.ascii	"distObjectX\000"
.LASF184:
	.ascii	"scanMessageID\000"
.LASF197:
	.ascii	"result\000"
.LASF40:
	.ascii	"decimal_point\000"
.LASF148:
	.ascii	"gY_hat\000"
.LASF191:
	.ascii	"distObjectY\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
