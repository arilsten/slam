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
	.loc 1 21 5 is_stmt 1 view .LVU2
	.loc 1 21 20 is_stmt 0 view .LVU3
	ldr	r0, [r0]	@ float
.LVL1:
	.loc 1 21 20 view .LVU4
	bl	__aeabi_f2d
.LVL2:
	vldr.64	d1, .L9
	vmov	d0, r0, r1
	bl	fmod
.LVL3:
	vmov	r0, r1, d0
	.loc 1 21 11 view .LVU5
	bl	__aeabi_d2f
.LVL4:
	mov	r4, r0	@ float
.LVL5:
	.loc 1 22 5 is_stmt 1 view .LVU6
	.loc 1 22 15 is_stmt 0 view .LVU7
	bl	__aeabi_f2d
.LVL6:
	.loc 1 22 15 view .LVU8
	mov	r6, r0
	mov	r7, r1
	.loc 1 22 7 view .LVU9
	adr	r3, .L9+8
	ldrd	r2, [r3]
	bl	__aeabi_dcmpgt
.LVL7:
	cbz	r0, .L2
	.loc 1 23 7 is_stmt 1 view .LVU10
	.loc 1 23 14 is_stmt 0 view .LVU11
	adr	r3, .L9
	ldrd	r2, [r3]
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dsub
.LVL8:
	bl	__aeabi_d2f
.LVL9:
	mov	r4, r0	@ float
.LVL10:
.L2:
	.loc 1 25 5 is_stmt 1 view .LVU12
	.loc 1 25 15 is_stmt 0 view .LVU13
	mov	r0, r4	@ float
	bl	__aeabi_f2d
.LVL11:
	mov	r6, r0
	mov	r7, r1
	.loc 1 25 7 view .LVU14
	adr	r3, .L9+16
	ldrd	r2, [r3]
	bl	__aeabi_dcmplt
.LVL12:
	cbz	r0, .L4
	.loc 1 26 7 is_stmt 1 view .LVU15
	.loc 1 26 14 is_stmt 0 view .LVU16
	adr	r3, .L9
	ldrd	r2, [r3]
	mov	r0, r6
	mov	r1, r7
	bl	__aeabi_dadd
.LVL13:
	bl	__aeabi_d2f
.LVL14:
	mov	r4, r0	@ float
.LVL15:
.L4:
	.loc 1 28 5 is_stmt 1 view .LVU17
	.loc 1 28 23 is_stmt 0 view .LVU18
	str	r4, [r5]	@ float
	.loc 1 29 1 view .LVU19
	pop	{r3, r4, r5, r6, r7, pc}
.LVL16:
.L10:
	.loc 1 29 1 view .LVU20
	.align	3
.L9:
	.word	1413754136
	.word	1075388923
	.word	1413754136
	.word	1074340347
	.word	1413754136
	.word	-1073143301
.LFE267:
	.size	vFunc_Inf2pi, .-vFunc_Inf2pi
	.global	__aeabi_i2d
	.global	__aeabi_dmul
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
.LVL17:
.LFB268:
	.loc 1 33 108 is_stmt 1 view -0
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 33 108 is_stmt 0 view .LVU22
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI1:
	mov	r7, r0
	mov	r6, r2
	mov	r8, r3
	ldrb	r9, [sp, #40]	@ zero_extendqisi2
	.loc 1 34 5 is_stmt 1 view .LVU23
	.loc 1 34 25 is_stmt 0 view .LVU24
	mov	r0, r1
.LVL18:
	.loc 1 34 25 view .LVU25
	bl	__aeabi_i2d
.LVL19:
	.loc 1 34 25 view .LVU26
	mov	r10, r0
	mov	fp, r1
	vmov	d0, r10, fp
	bl	cos
.LVL20:
	vmov	r0, r1, d0
	.loc 1 34 35 view .LVU27
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dmul
.LVL21:
	mov	r4, r0
	mov	r5, r1
	.loc 1 34 23 view .LVU28
	mov	r0, r7
	bl	__aeabi_i2d
.LVL22:
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
.LVL23:
	mov	r4, r0
	mov	r5, r1
	.loc 1 34 78 view .LVU29
	movs	r0, #90
	mla	r0, r0, r9, r6
	bl	__aeabi_i2d
.LVL24:
	adr	r3, .L13+4
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL25:
	.loc 1 34 101 view .LVU30
	movs	r2, #0
	ldr	r3, .L13
	bl	__aeabi_ddiv
.LVL26:
	mov	r2, r0
	mov	r3, r1
	.loc 1 34 40 view .LVU31
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dadd
.LVL27:
	vmov	d0, r0, r1
	bl	cos
.LVL28:
	vmov	r6, r7, d0
	.loc 1 34 109 view .LVU32
	ldrsh	r0, [r8, r9, lsl #1]
	bl	__aeabi_i2d
.LVL29:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
.LVL30:
	mov	r2, r0
	mov	r3, r1
	.loc 1 34 38 view .LVU33
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
.LVL31:
	.loc 1 34 13 view .LVU34
	bl	__aeabi_d2iz
.LVL32:
	.loc 1 36 5 is_stmt 1 view .LVU35
	.loc 1 37 1 is_stmt 0 view .LVU36
	sxth	r0, r0
	.loc 1 37 1 view .LVU37
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL33:
.L14:
	.loc 1 37 1 view .LVU38
	.align	3
.L13:
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
.LVL34:
.LFB269:
	.loc 1 40 102 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 40 102 is_stmt 0 view .LVU40
	push	{r4, r5, r6, r7, r8, lr}
.LCFI2:
	mov	r8, r0
	mov	r5, r2
	mov	r4, r3
	.loc 1 41 5 is_stmt 1 view .LVU41
	.loc 1 41 59 is_stmt 0 view .LVU42
	movs	r0, #90
.LVL35:
	.loc 1 41 59 view .LVU43
	mla	r0, r0, r3, r1
	bl	__aeabi_i2d
.LVL36:
	.loc 1 41 59 view .LVU44
	adr	r3, .L17+4
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL37:
	.loc 1 41 59 view .LVU45
	movs	r2, #0
	ldr	r3, .L17
	bl	__aeabi_ddiv
.LVL38:
	mov	r6, r0
	mov	r7, r1
	.loc 1 41 21 view .LVU46
	mov	r0, r8
	bl	__aeabi_i2d
.LVL39:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dadd
.LVL40:
	vmov	d0, r0, r1
	bl	cos
.LVL41:
	vmov	r6, r7, d0
	.loc 1 41 67 view .LVU47
	ldrsh	r0, [r5, r4, lsl #1]
	bl	__aeabi_i2d
.LVL42:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
.LVL43:
	.loc 1 41 13 view .LVU48
	bl	__aeabi_d2iz
.LVL44:
	.loc 1 43 5 is_stmt 1 view .LVU49
	.loc 1 44 1 is_stmt 0 view .LVU50
	sxth	r0, r0
	.loc 1 44 1 view .LVU51
	pop	{r4, r5, r6, r7, r8, pc}
.LVL45:
.L18:
	.loc 1 44 1 view .LVU52
	.align	3
.L17:
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
.LVL46:
.LFB270:
	.loc 1 48 108 is_stmt 1 view -0
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 48 108 is_stmt 0 view .LVU54
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI3:
	mov	r7, r0
	mov	r6, r2
	mov	r8, r3
	ldrb	r9, [sp, #40]	@ zero_extendqisi2
	.loc 1 49 5 is_stmt 1 view .LVU55
	.loc 1 49 25 is_stmt 0 view .LVU56
	mov	r0, r1
.LVL47:
	.loc 1 49 25 view .LVU57
	bl	__aeabi_i2d
.LVL48:
	.loc 1 49 25 view .LVU58
	mov	r10, r0
	mov	fp, r1
	vmov	d0, r10, fp
	bl	cos
.LVL49:
	vmov	r0, r1, d0
	.loc 1 49 35 view .LVU59
	movs	r2, #0
	movs	r3, #0
	bl	__aeabi_dmul
.LVL50:
	mov	r4, r0
	mov	r5, r1
	.loc 1 49 23 view .LVU60
	mov	r0, r7
	bl	__aeabi_i2d
.LVL51:
	mov	r2, r4
	mov	r3, r5
	bl	__aeabi_dsub
.LVL52:
	mov	r4, r0
	mov	r5, r1
	.loc 1 49 78 view .LVU61
	movs	r0, #90
	mla	r0, r0, r9, r6
	bl	__aeabi_i2d
.LVL53:
	adr	r3, .L21+4
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL54:
	.loc 1 49 101 view .LVU62
	movs	r2, #0
	ldr	r3, .L21
	bl	__aeabi_ddiv
.LVL55:
	mov	r2, r0
	mov	r3, r1
	.loc 1 49 40 view .LVU63
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dadd
.LVL56:
	vmov	d0, r0, r1
	bl	sin
.LVL57:
	vmov	r6, r7, d0
	.loc 1 49 109 view .LVU64
	ldrsh	r0, [r8, r9, lsl #1]
	bl	__aeabi_i2d
.LVL58:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
.LVL59:
	mov	r2, r0
	mov	r3, r1
	.loc 1 49 38 view .LVU65
	mov	r0, r4
	mov	r1, r5
	bl	__aeabi_dadd
.LVL60:
	.loc 1 49 13 view .LVU66
	bl	__aeabi_d2iz
.LVL61:
	.loc 1 51 5 is_stmt 1 view .LVU67
	.loc 1 52 1 is_stmt 0 view .LVU68
	sxth	r0, r0
	.loc 1 52 1 view .LVU69
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.LVL62:
.L22:
	.loc 1 52 1 view .LVU70
	.align	3
.L21:
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
.LVL63:
.LFB271:
	.loc 1 55 102 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 55 102 is_stmt 0 view .LVU72
	push	{r4, r5, r6, r7, r8, lr}
.LCFI4:
	mov	r8, r0
	mov	r5, r2
	mov	r4, r3
	.loc 1 56 5 is_stmt 1 view .LVU73
	.loc 1 56 59 is_stmt 0 view .LVU74
	movs	r0, #90
.LVL64:
	.loc 1 56 59 view .LVU75
	mla	r0, r0, r3, r1
	bl	__aeabi_i2d
.LVL65:
	.loc 1 56 59 view .LVU76
	adr	r3, .L25+4
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL66:
	.loc 1 56 59 view .LVU77
	movs	r2, #0
	ldr	r3, .L25
	bl	__aeabi_ddiv
.LVL67:
	mov	r6, r0
	mov	r7, r1
	.loc 1 56 21 view .LVU78
	mov	r0, r8
	bl	__aeabi_i2d
.LVL68:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dadd
.LVL69:
	vmov	d0, r0, r1
	bl	sin
.LVL70:
	vmov	r6, r7, d0
	.loc 1 56 67 view .LVU79
	ldrsh	r0, [r5, r4, lsl #1]
	bl	__aeabi_i2d
.LVL71:
	mov	r2, r6
	mov	r3, r7
	bl	__aeabi_dmul
.LVL72:
	.loc 1 56 13 view .LVU80
	bl	__aeabi_d2iz
.LVL73:
	.loc 1 58 5 is_stmt 1 view .LVU81
	.loc 1 59 1 is_stmt 0 view .LVU82
	sxth	r0, r0
	.loc 1 59 1 view .LVU83
	pop	{r4, r5, r6, r7, r8, pc}
.LVL74:
.L26:
	.loc 1 59 1 view .LVU84
	.align	3
.L25:
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
.LVL75:
.LFB272:
	.loc 1 63 101 is_stmt 1 view -0
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 63 101 is_stmt 0 view .LVU86
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI5:
	sub	sp, sp, #36
.LCFI6:
	mov	r10, r0
	mov	r9, r1
	mov	r6, r2
	mov	r8, r3
	ldr	r7, [sp, #72]
	.loc 1 64 2 is_stmt 1 view .LVU87
.LVL76:
	.loc 1 65 5 view .LVU88
	.loc 1 66 5 view .LVU89
	.loc 1 67 5 view .LVU90
	.loc 1 68 5 view .LVU91
	.loc 1 68 14 is_stmt 0 view .LVU92
	movs	r4, #0
	strb	r4, [sp, #30]
	.loc 1 70 5 is_stmt 1 view .LVU93
	.loc 1 70 13 is_stmt 0 view .LVU94
	strb	r0, [sp, #8]
	.loc 1 71 5 is_stmt 1 view .LVU95
	.loc 1 71 13 is_stmt 0 view .LVU96
	asrs	r3, r0, #8
.LVL77:
	.loc 1 71 13 view .LVU97
	strb	r3, [sp, #9]
	.loc 1 72 5 is_stmt 1 view .LVU98
	.loc 1 72 13 is_stmt 0 view .LVU99
	strb	r1, [sp, #10]
	.loc 1 73 5 is_stmt 1 view .LVU100
	.loc 1 73 13 is_stmt 0 view .LVU101
	asrs	r3, r1, #8
	strb	r3, [sp, #11]
	.loc 1 74 5 is_stmt 1 view .LVU102
	.loc 1 74 13 is_stmt 0 view .LVU103
	strb	r2, [sp, #12]
	.loc 1 75 5 is_stmt 1 view .LVU104
	.loc 1 75 13 is_stmt 0 view .LVU105
	asrs	r3, r2, #8
	strb	r3, [sp, #13]
	.loc 1 77 5 is_stmt 1 view .LVU106
.LBB2:
	.loc 1 77 9 view .LVU107
.LVL78:
	.loc 1 77 5 is_stmt 0 view .LVU108
	b	.L28
.LVL79:
.L29:
	.loc 1 89 13 is_stmt 1 view .LVU109
	.loc 1 89 39 is_stmt 0 view .LVU110
	rsb	r2, r4, #3
	.loc 1 89 29 view .LVU111
	movs	r3, #1
	lsl	r2, r3, r2
	.loc 1 89 22 view .LVU112
	ldrb	r3, [sp, #30]	@ zero_extendqisi2
	bic	r3, r3, r2
	strb	r3, [sp, #30]
.L30:
	.loc 1 77 27 is_stmt 1 discriminator 2 view .LVU113
	.loc 1 77 28 is_stmt 0 discriminator 2 view .LVU114
	adds	r4, r4, #1
.LVL80:
.L28:
	.loc 1 77 20 is_stmt 1 discriminator 1 view .LVU115
	.loc 1 77 5 is_stmt 0 discriminator 1 view .LVU116
	cmp	r4, #3
	bgt	.L33
	.loc 1 78 9 is_stmt 1 view .LVU117
	.loc 1 78 19 is_stmt 0 view .LVU118
	uxtb	r5, r4
	str	r5, [sp]
	mov	r3, r7
	mov	r2, r8
	mov	r1, r6
	mov	r0, r10
	bl	distObjectX
.LVL81:
	mov	fp, r0
.LVL82:
	.loc 1 79 9 is_stmt 1 view .LVU119
	.loc 1 79 19 is_stmt 0 view .LVU120
	str	r5, [sp]
	mov	r3, r7
	mov	r2, r8
	mov	r1, r6
	mov	r0, r9
	bl	distObjectY
.LVL83:
	.loc 1 80 9 is_stmt 1 view .LVU121
	.loc 1 80 15 is_stmt 0 view .LVU122
	lsls	r5, r4, #2
	.loc 1 80 17 view .LVU123
	adds	r3, r5, #6
	.loc 1 80 21 view .LVU124
	add	r2, sp, #32
	add	r3, r3, r2
	strb	fp, [r3, #-24]
	.loc 1 81 9 is_stmt 1 view .LVU125
	.loc 1 81 17 is_stmt 0 view .LVU126
	adds	r3, r5, #7
	.loc 1 81 21 view .LVU127
	add	r3, r3, r2
	asr	fp, fp, #8
.LVL84:
	.loc 1 81 21 view .LVU128
	strb	fp, [r3, #-24]
	.loc 1 82 9 is_stmt 1 view .LVU129
	.loc 1 82 17 is_stmt 0 view .LVU130
	adds	r3, r4, #2
	.loc 1 82 21 view .LVU131
	add	r3, r2, r3, lsl #2
	strb	r0, [r3, #-24]
	.loc 1 83 9 is_stmt 1 view .LVU132
	.loc 1 83 17 is_stmt 0 view .LVU133
	adds	r5, r5, #9
	.loc 1 83 21 view .LVU134
	add	r5, r5, r2
	asrs	r0, r0, #8
.LVL85:
	.loc 1 83 21 view .LVU135
	strb	r0, [r5, #-24]
	.loc 1 85 9 is_stmt 1 view .LVU136
	.loc 1 85 22 is_stmt 0 view .LVU137
	ldrsh	r3, [r7, r4, lsl #1]
	.loc 1 85 11 view .LVU138
	cmp	r3, #800
	bge	.L29
	.loc 1 86 13 is_stmt 1 view .LVU139
	.loc 1 86 38 is_stmt 0 view .LVU140
	rsb	r2, r4, #3
	.loc 1 86 28 view .LVU141
	movs	r3, #1
	lsl	r2, r3, r2
	.loc 1 86 22 view .LVU142
	ldrb	r3, [sp, #30]	@ zero_extendqisi2
	orrs	r3, r3, r2
	strb	r3, [sp, #30]
	b	.L30
.L33:
	.loc 1 86 22 view .LVU143
.LBE2:
	.loc 1 92 2 is_stmt 1 view .LVU144
	movs	r2, #23
	add	r1, sp, #8
.LVL86:
	.loc 1 92 2 is_stmt 0 view .LVU145
	movs	r0, #114
	bl	i2cSendNOADDR
.LVL87:
	.loc 1 93 1 view .LVU146
	add	sp, sp, #36
.LCFI7:
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 1 93 1 view .LVU147
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
.LVL88:
.LFB273:
	.loc 1 99 101 is_stmt 1 view -0
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 99 101 is_stmt 0 view .LVU149
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI8:
	sub	sp, sp, #20
.LCFI9:
	mov	r8, r0
	mov	r7, r1
	mov	r10, r2
	mov	r9, r3
	ldr	r6, [sp, #56]
	.loc 1 100 2 is_stmt 1 view .LVU150
.LVL89:
	.loc 1 101 5 view .LVU151
	.loc 1 102 5 view .LVU152
	.loc 1 103 5 view .LVU153
	.loc 1 105 5 view .LVU154
	.loc 1 105 13 is_stmt 0 view .LVU155
	strb	r0, [sp, #8]
	.loc 1 106 5 is_stmt 1 view .LVU156
	.loc 1 106 13 is_stmt 0 view .LVU157
	asrs	r3, r0, #8
.LVL90:
	.loc 1 106 13 view .LVU158
	strb	r3, [sp, #9]
	.loc 1 107 5 is_stmt 1 view .LVU159
	.loc 1 107 13 is_stmt 0 view .LVU160
	strb	r1, [sp, #10]
	.loc 1 108 5 is_stmt 1 view .LVU161
	.loc 1 108 13 is_stmt 0 view .LVU162
	asrs	r3, r1, #8
	strb	r3, [sp, #11]
	.loc 1 110 5 is_stmt 1 view .LVU163
.LBB3:
	.loc 1 110 9 view .LVU164
.LVL91:
	.loc 1 110 13 is_stmt 0 view .LVU165
	movs	r4, #0
	.loc 1 110 5 view .LVU166
	b	.L35
.LVL92:
.L40:
	.loc 1 112 13 is_stmt 1 view .LVU167
	.loc 1 112 23 is_stmt 0 view .LVU168
	uxtb	fp, r4
	str	fp, [sp]
	mov	r3, r6
	mov	r2, r9
	mov	r1, r10
	mov	r0, r8
	bl	distObjectX
.LVL93:
	mov	r5, r0
.LVL94:
	.loc 1 113 13 is_stmt 1 view .LVU169
	.loc 1 113 23 is_stmt 0 view .LVU170
	str	fp, [sp]
	mov	r3, r6
	mov	r2, r9
	mov	r1, r10
	mov	r0, r7
	bl	distObjectY
.LVL95:
	.loc 1 114 13 is_stmt 1 view .LVU171
	.loc 1 114 21 is_stmt 0 view .LVU172
	strb	r5, [sp, #12]
	.loc 1 115 13 is_stmt 1 view .LVU173
	.loc 1 115 21 is_stmt 0 view .LVU174
	asrs	r5, r5, #8
.LVL96:
	.loc 1 115 21 view .LVU175
	strb	r5, [sp, #13]
	.loc 1 116 13 is_stmt 1 view .LVU176
	.loc 1 116 21 is_stmt 0 view .LVU177
	strb	r0, [sp, #14]
	.loc 1 117 13 is_stmt 1 view .LVU178
	.loc 1 117 21 is_stmt 0 view .LVU179
	asrs	r5, r0, #8
	strb	r5, [sp, #15]
	.loc 1 118 13 is_stmt 1 view .LVU180
	movs	r2, #8
	add	r1, sp, r2
	movs	r0, #114
.LVL97:
	.loc 1 118 13 is_stmt 0 view .LVU181
	bl	i2cSendNOADDR
.LVL98:
.L36:
	.loc 1 110 27 is_stmt 1 discriminator 2 view .LVU182
	.loc 1 110 28 is_stmt 0 discriminator 2 view .LVU183
	adds	r4, r4, #1
.LVL99:
.L35:
	.loc 1 110 20 is_stmt 1 discriminator 1 view .LVU184
	.loc 1 110 5 is_stmt 0 discriminator 1 view .LVU185
	cmp	r4, #3
	bgt	.L39
	.loc 1 111 9 is_stmt 1 view .LVU186
	.loc 1 111 22 is_stmt 0 view .LVU187
	ldrsh	r3, [r6, r4, lsl #1]
	.loc 1 111 11 view .LVU188
	cmp	r3, #800
	bge	.L36
	b	.L40
.L39:
.LBE3:
	.loc 1 121 1 view .LVU189
	add	sp, sp, #20
.LCFI10:
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.loc 1 121 1 view .LVU190
.LFE273:
	.size	sendOldPoseMessage, .-sendOldPoseMessage
	.section	.text.getDetectionAngle,"ax",%progbits
	.align	1
	.global	getDetectionAngle
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	getDetectionAngle, %function
getDetectionAngle:
.LVL100:
.LFB275:
	.loc 1 147 62 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 148 2 view .LVU192
	.loc 1 148 34 is_stmt 0 view .LVU193
	add	r1, r1, r1, lsl #1
.LVL101:
	.loc 1 148 34 view .LVU194
	rsb	r1, r1, r1, lsl #4
	add	r0, r0, r1, lsl #1
.LVL102:
	.loc 1 148 34 view .LVU195
	uxth	r3, r0
	.loc 1 148 10 view .LVU196
	sxth	r0, r0
.LVL103:
	.loc 1 149 2 is_stmt 1 view .LVU197
	.loc 1 149 4 is_stmt 0 view .LVU198
	cmp	r0, #180
	ble	.L42
	.loc 1 150 3 is_stmt 1 view .LVU199
	.loc 1 150 22 is_stmt 0 view .LVU200
	sub	r0, r3, #360
.LVL104:
	.loc 1 150 22 view .LVU201
	sxth	r0, r0
.L42:
	.loc 1 155 1 view .LVU202
	bx	lr
.LFE275:
	.size	getDetectionAngle, .-getDetectionAngle
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
.LFB277:
	.loc 1 178 33 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
.LCFI11:
	.loc 1 179 2 view .LVU204
	.loc 1 179 18 is_stmt 0 view .LVU205
	ldr	r2, .L49
	ldrb	r3, [r2]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r2]
	.loc 1 180 2 is_stmt 1 view .LVU206
	.loc 1 180 4 is_stmt 0 view .LVU207
	cmp	r3, #60
	bls	.L43
.LBB4:
	.loc 1 181 11 view .LVU208
	movs	r4, #0
	b	.L44
.LVL105:
.L46:
	.loc 1 182 4 is_stmt 1 discriminator 3 view .LVU209
	.loc 1 182 77 discriminator 3 view .LVU210
	.loc 1 182 132 discriminator 3 view .LVU211
	.loc 1 182 213 is_stmt 0 discriminator 3 view .LVU212
	ldr	r7, .L49+4
	ldrh	r0, [r7]
	.loc 1 182 224 discriminator 3 view .LVU213
	lsls	r0, r0, #16
	.loc 1 182 314 discriminator 3 view .LVU214
	lsls	r5, r4, #1
	.loc 1 182 312 discriminator 3 view .LVU215
	ldr	r6, .L49+8
	.loc 1 182 132 discriminator 3 view .LVU216
	ldrsh	r3, [r6, r4, lsl #2]
	mov	r2, r4
	ldr	r1, .L49+12
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_2
.LVL106:
	.loc 1 182 324 is_stmt 1 discriminator 3 view .LVU217
	.loc 1 183 4 discriminator 3 view .LVU218
	.loc 1 183 77 discriminator 3 view .LVU219
	.loc 1 183 132 discriminator 3 view .LVU220
	.loc 1 183 213 is_stmt 0 discriminator 3 view .LVU221
	ldrh	r0, [r7]
	.loc 1 183 224 discriminator 3 view .LVU222
	lsls	r0, r0, #16
	.loc 1 183 316 discriminator 3 view .LVU223
	adds	r5, r5, #1
	.loc 1 183 132 discriminator 3 view .LVU224
	ldrsh	r3, [r6, r5, lsl #1]
	mov	r2, r4
	ldr	r1, .L49+16
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_2
.LVL107:
	.loc 1 183 326 is_stmt 1 discriminator 3 view .LVU225
	.loc 1 181 25 discriminator 3 view .LVU226
	.loc 1 181 26 is_stmt 0 discriminator 3 view .LVU227
	adds	r4, r4, #1
.LVL108:
.L44:
	.loc 1 181 18 is_stmt 1 discriminator 2 view .LVU228
	.loc 1 181 3 is_stmt 0 discriminator 2 view .LVU229
	cmp	r4, #3
	ble	.L46
.LBE4:
	.loc 1 185 3 is_stmt 1 view .LVU230
	.loc 1 185 20 is_stmt 0 view .LVU231
	ldr	r3, .L49
	movs	r2, #0
	strb	r2, [r3]
.LVL109:
.L43:
	.loc 1 187 1 view .LVU232
	pop	{r3, r4, r5, r6, r7, pc}
.L50:
	.align	2
.L49:
	.word	.LANCHOR0
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LANCHOR1
	.word	.LC0
	.word	.LC1
.LFE277:
	.size	printCollisionSectors, .-printCollisionSectors
	.section	.text.increaseCollisionSector,"ax",%progbits
	.align	1
	.global	increaseCollisionSector
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	increaseCollisionSector, %function
increaseCollisionSector:
.LVL110:
.LFB274:
	.loc 1 126 60 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 126 60 is_stmt 0 view .LVU234
	push	{r4, lr}
.LCFI12:
	.loc 1 128 2 is_stmt 1 view .LVU235
	.loc 1 128 46 is_stmt 0 view .LVU236
	lsls	r4, r1, #1
	.loc 1 128 10 view .LVU237
	ldr	r3, .L57
	ldrsh	r2, [r3, r1, lsl #2]
.LVL111:
	.loc 1 129 2 is_stmt 1 view .LVU238
	.loc 1 129 48 is_stmt 0 view .LVU239
	adds	r1, r4, #1
.LVL112:
	.loc 1 129 10 view .LVU240
	ldrsh	r3, [r3, r1, lsl #1]
.LVL113:
	.loc 1 131 2 is_stmt 1 view .LVU241
	.loc 1 131 4 is_stmt 0 view .LVU242
	cmp	r2, #360
	beq	.L56
.L52:
	.loc 1 136 3 is_stmt 1 view .LVU243
	.loc 1 136 5 is_stmt 0 view .LVU244
	cmp	r2, r0
	ble	.L54
	.loc 1 137 4 is_stmt 1 view .LVU245
	.loc 1 137 31 is_stmt 0 view .LVU246
	ldr	r3, .L57
.LVL114:
	.loc 1 137 31 view .LVU247
	strh	r0, [r3, r4, lsl #1]	@ movhi
.LVL115:
.L53:
	.loc 1 143 2 is_stmt 1 view .LVU248
	bl	printCollisionSectors
.LVL116:
	.loc 1 144 1 is_stmt 0 view .LVU249
	pop	{r4, pc}
.LVL117:
.L56:
	.loc 1 131 23 discriminator 1 view .LVU250
	cmp	r3, #360
	bne	.L52
	.loc 1 132 3 is_stmt 1 view .LVU251
	.loc 1 132 37 is_stmt 0 view .LVU252
	uxth	r0, r0
	.loc 1 132 37 view .LVU253
	subs	r2, r0, #1
.LVL118:
	.loc 1 132 30 view .LVU254
	ldr	r3, .L57
.LVL119:
	.loc 1 132 30 view .LVU255
	strh	r2, [r3, r4, lsl #1]	@ movhi
.LVL120:
	.loc 1 133 3 is_stmt 1 view .LVU256
	.loc 1 133 39 is_stmt 0 view .LVU257
	adds	r0, r0, #1
.LVL121:
	.loc 1 133 32 view .LVU258
	strh	r0, [r3, r1, lsl #1]	@ movhi
	b	.L53
.LVL122:
.L54:
	.loc 1 139 8 is_stmt 1 view .LVU259
	.loc 1 139 10 is_stmt 0 view .LVU260
	cmp	r3, r0
	bge	.L53
	.loc 1 140 4 is_stmt 1 view .LVU261
	.loc 1 140 33 is_stmt 0 view .LVU262
	ldr	r3, .L57
.LVL123:
	.loc 1 140 33 view .LVU263
	strh	r0, [r3, r1, lsl #1]	@ movhi
.LVL124:
	.loc 1 140 33 view .LVU264
	b	.L53
.L58:
	.align	2
.L57:
	.word	.LANCHOR1
.LFE274:
	.size	increaseCollisionSector, .-increaseCollisionSector
	.section	.text.decreaseCollisionSector,"ax",%progbits
	.align	1
	.global	decreaseCollisionSector
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	decreaseCollisionSector, %function
decreaseCollisionSector:
.LVL125:
.LFB276:
	.loc 1 157 60 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 157 60 is_stmt 0 view .LVU266
	push	{r4, lr}
.LCFI13:
	.loc 1 159 2 is_stmt 1 view .LVU267
	.loc 1 159 46 is_stmt 0 view .LVU268
	lsls	r4, r1, #1
	.loc 1 159 10 view .LVU269
	ldr	r3, .L64
	ldrsh	r2, [r3, r1, lsl #2]
.LVL126:
	.loc 1 160 2 is_stmt 1 view .LVU270
	.loc 1 160 48 is_stmt 0 view .LVU271
	adds	r1, r4, #1
.LVL127:
	.loc 1 160 10 view .LVU272
	ldrsh	r3, [r3, r1, lsl #1]
.LVL128:
	.loc 1 162 2 is_stmt 1 view .LVU273
	.loc 1 162 4 is_stmt 0 view .LVU274
	cmp	r2, r0
	bgt	.L60
	.loc 1 162 27 discriminator 1 view .LVU275
	cmp	r3, r0
	blt	.L60
	.loc 1 163 3 is_stmt 1 view .LVU276
	.loc 1 163 12 is_stmt 0 view .LVU277
	subs	r2, r0, r2
.LVL129:
	.loc 1 163 38 view .LVU278
	subs	r3, r3, r0
.LVL130:
	.loc 1 163 5 view .LVU279
	cmp	r2, r3
	bge	.L61
	.loc 1 164 4 is_stmt 1 view .LVU280
	.loc 1 164 31 is_stmt 0 view .LVU281
	ldr	r3, .L64
.LVL131:
	.loc 1 164 31 view .LVU282
	strh	r0, [r3, r4, lsl #1]	@ movhi
.LVL132:
.L60:
	.loc 1 174 2 is_stmt 1 view .LVU283
	bl	printCollisionSectors
.LVL133:
	.loc 1 175 1 is_stmt 0 view .LVU284
	pop	{r4, pc}
.LVL134:
.L61:
	.loc 1 166 8 is_stmt 1 view .LVU285
	.loc 1 166 10 is_stmt 0 view .LVU286
	cmp	r2, r3
	ble	.L62
	.loc 1 167 4 is_stmt 1 view .LVU287
	.loc 1 167 33 is_stmt 0 view .LVU288
	ldr	r3, .L64
.LVL135:
	.loc 1 167 33 view .LVU289
	strh	r0, [r3, r1, lsl #1]	@ movhi
.LVL136:
	.loc 1 167 33 view .LVU290
	b	.L60
.LVL137:
.L62:
	.loc 1 170 4 is_stmt 1 view .LVU291
	.loc 1 170 31 is_stmt 0 view .LVU292
	ldr	r3, .L64
.LVL138:
	.loc 1 170 31 view .LVU293
	mov	r2, #360
	strh	r2, [r3, r4, lsl #1]	@ movhi
.LVL139:
	.loc 1 171 4 is_stmt 1 view .LVU294
	.loc 1 171 33 is_stmt 0 view .LVU295
	strh	r2, [r3, r1, lsl #1]	@ movhi
	b	.L60
.L65:
	.align	2
.L64:
	.word	.LANCHOR1
.LFE276:
	.size	decreaseCollisionSector, .-decreaseCollisionSector
	.section	.text.validWaypoint,"ax",%progbits
	.align	1
	.global	validWaypoint
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	validWaypoint, %function
validWaypoint:
.LVL140:
.LFB278:
	.loc 1 191 41 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 191 41 is_stmt 0 view .LVU297
	push	{r4, r5, r6}
.LCFI14:
	.loc 1 192 2 is_stmt 1 view .LVU298
.LVL141:
	.loc 1 194 2 view .LVU299
.LBB5:
	.loc 1 194 6 view .LVU300
	.loc 1 194 10 is_stmt 0 view .LVU301
	movs	r2, #0
.LBE5:
	.loc 1 192 10 view .LVU302
	mov	r5, r2
.LBB7:
	.loc 1 194 2 view .LVU303
	b	.L67
.LVL142:
.L81:
	.loc 1 195 61 discriminator 1 view .LVU304
	adds	r4, r1, #1
	.loc 1 195 57 discriminator 1 view .LVU305
	ldr	r6, .L82
	ldrsh	r4, [r6, r4, lsl #1]
	.loc 1 195 37 discriminator 1 view .LVU306
	cmp	r4, #360
	bne	.L68
	.loc 1 216 4 is_stmt 1 view .LVU307
	.loc 1 216 15 is_stmt 0 view .LVU308
	adds	r5, r5, #1
.LVL143:
	.loc 1 216 15 view .LVU309
	uxtb	r5, r5
.LVL144:
.L71:
	.loc 1 194 24 is_stmt 1 discriminator 2 view .LVU310
	.loc 1 194 25 is_stmt 0 discriminator 2 view .LVU311
	adds	r2, r2, #1
.LVL145:
.L67:
	.loc 1 194 17 is_stmt 1 discriminator 1 view .LVU312
	.loc 1 194 2 is_stmt 0 discriminator 1 view .LVU313
	cmp	r2, #3
	bgt	.L80
	.loc 1 195 3 is_stmt 1 view .LVU314
	.loc 1 195 25 is_stmt 0 view .LVU315
	lsls	r1, r2, #1
	.loc 1 195 23 view .LVU316
	ldr	r3, .L82
	ldrsh	r3, [r3, r2, lsl #2]
	.loc 1 195 5 view .LVU317
	cmp	r3, #360
	beq	.L81
.L68:
.LBB6:
	.loc 1 197 4 is_stmt 1 view .LVU318
	.loc 1 197 45 is_stmt 0 view .LVU319
	adds	r1, r1, #1
	.loc 1 197 41 view .LVU320
	ldr	r4, .L82
	ldrh	r1, [r4, r1, lsl #1]
	.loc 1 197 48 view .LVU321
	adds	r1, r1, #60
	.loc 1 197 12 view .LVU322
	sxth	r1, r1
.LVL146:
	.loc 1 198 4 is_stmt 1 view .LVU323
	.loc 1 198 41 is_stmt 0 view .LVU324
	uxth	r3, r3
	.loc 1 198 46 view .LVU325
	subs	r3, r3, #60
	.loc 1 198 12 view .LVU326
	sxth	r3, r3
.LVL147:
	.loc 1 200 4 is_stmt 1 view .LVU327
	.loc 1 200 6 is_stmt 0 view .LVU328
	cmp	r1, #179
	ble	.L70
	.loc 1 201 5 is_stmt 1 view .LVU329
	.loc 1 201 7 is_stmt 0 view .LVU330
	cmp	r3, r0
	bge	.L71
	.loc 1 201 54 discriminator 1 view .LVU331
	add	r3, r0, #360
.LVL148:
	.loc 1 201 37 discriminator 1 view .LVU332
	cmp	r3, r1
	bge	.L71
	.loc 1 202 12 view .LVU333
	movs	r0, #0
.LVL149:
	.loc 1 202 12 view .LVU334
	b	.L72
.LVL150:
.L70:
	.loc 1 206 9 is_stmt 1 view .LVU335
	.loc 1 206 11 is_stmt 0 view .LVU336
	cmn	r3, #179
	bge	.L73
	.loc 1 207 5 is_stmt 1 view .LVU337
	.loc 1 207 22 is_stmt 0 view .LVU338
	sub	r4, r0, #360
	.loc 1 207 7 view .LVU339
	cmp	r4, r3
	ble	.L71
	.loc 1 207 41 discriminator 1 view .LVU340
	cmp	r1, r0
	ble	.L71
	.loc 1 208 12 view .LVU341
	movs	r0, #0
.LVL151:
	.loc 1 208 12 view .LVU342
	b	.L72
.LVL152:
.L73:
	.loc 1 211 9 is_stmt 1 view .LVU343
	.loc 1 211 11 is_stmt 0 view .LVU344
	cmp	r3, r0
	bge	.L71
	.loc 1 211 41 discriminator 1 view .LVU345
	cmp	r1, r0
	ble	.L71
	.loc 1 212 11 view .LVU346
	movs	r0, #0
.LVL153:
	.loc 1 212 11 view .LVU347
	b	.L72
.LVL154:
.L80:
	.loc 1 212 11 view .LVU348
.LBE6:
.LBE7:
	.loc 1 221 2 is_stmt 1 view .LVU349
	.loc 1 221 4 is_stmt 0 view .LVU350
	cmp	r5, #4
	beq	.L78
	.loc 1 224 8 view .LVU351
	movs	r0, #0
.LVL155:
.L72:
	.loc 1 225 1 view .LVU352
	pop	{r4, r5, r6}
.LCFI15:
.LVL156:
	.loc 1 225 1 view .LVU353
	bx	lr
.LVL157:
.L78:
.LCFI16:
	.loc 1 222 9 view .LVU354
	movs	r0, #1
.LVL158:
	.loc 1 222 9 view .LVU355
	b	.L72
.L83:
	.align	2
.L82:
	.word	.LANCHOR1
.LFE278:
	.size	validWaypoint, .-validWaypoint
	.global	collisionPrinter
	.global	collisionCounter
	.section	.bss.collisionCounter,"aw",%nobits
	.type	collisionCounter, %object
	.size	collisionCounter, 1
collisionCounter:
	.space	1
	.section	.bss.collisionPrinter,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	collisionPrinter, %object
	.size	collisionPrinter, 1
collisionPrinter:
	.space	1
	.section	.data.collisionSectors,"aw"
	.align	2
	.set	.LANCHOR1,. + 0
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
	.uleb128 0x48
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
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
	.4byte	.LCFI8-.LFB273
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
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x24
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB275
	.4byte	.LFE275-.LFB275
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.byte	0x4
	.4byte	.LCFI11-.LFB277
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
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB274
	.4byte	.LFE274-.LFB274
	.byte	0x4
	.4byte	.LCFI12-.LFB274
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB276
	.4byte	.LFE276-.LFB276
	.byte	0x4
	.4byte	.LCFI13-.LFB276
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.byte	0x4
	.4byte	.LCFI14-.LFB278
	.byte	0xe
	.uleb128 0xc
	.byte	0x84
	.uleb128 0x3
	.byte	0x85
	.uleb128 0x2
	.byte	0x86
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xa
	.byte	0xc6
	.byte	0xc5
	.byte	0xc4
	.byte	0xe
	.uleb128 0
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xb
	.align	2
.LEFDE22:
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
	.file 11 "../../../software/MainComTask.h"
	.file 12 "../../../../../../external/freertos/source/include/task.h"
	.file 13 "../../../../../../external/freertos/source/include/queue.h"
	.file 14 "../../../../../../external/freertos/source/include/semphr.h"
	.file 15 "../../../software/globals.h"
	.file 16 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 17 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\i2c.h"
	.file 18 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd14
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF190
	.byte	0xc
	.4byte	.LASF191
	.4byte	.LASF192
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF75
	.uleb128 0x4
	.4byte	.LASF76
	.byte	0x3
	.byte	0x2f
	.byte	0x15
	.4byte	0x3c
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF77
	.uleb128 0x4
	.4byte	.LASF78
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x4f
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x13
	.4byte	0x4f
	.uleb128 0x4
	.4byte	.LASF79
	.byte	0x3
	.byte	0x35
	.byte	0x16
	.4byte	0x67
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF80
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF81
	.byte	0x3
	.byte	0x37
	.byte	0x14
	.4byte	0x86
	.uleb128 0x9
	.4byte	0x75
	.uleb128 0x12
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF17
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x99
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF82
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF83
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
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
	.4byte	0x56
	.4byte	0x13c
	.uleb128 0xb
	.4byte	0x99
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
	.4byte	0x86
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
	.4byte	0x86
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
	.4byte	0x81
	.uleb128 0x1e
	.4byte	.LASF105
	.byte	0x8
	.byte	0x21
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x1e
	.4byte	.LASF106
	.byte	0x9
	.byte	0x53
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x1e
	.4byte	.LASF107
	.byte	0x9
	.byte	0x54
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x1e
	.4byte	.LASF108
	.byte	0x9
	.byte	0x72
	.byte	0x13
	.4byte	0x29b
	.uleb128 0xf
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x1e
	.4byte	.LASF109
	.byte	0x9
	.byte	0x73
	.byte	0x11
	.4byte	0x8d
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
	.uleb128 0xa
	.4byte	0x5b
	.4byte	0x32f
	.uleb128 0xb
	.4byte	0x99
	.byte	0x3
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF120
	.byte	0xb
	.byte	0xe
	.byte	0x10
	.4byte	0x31f
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF121
	.uleb128 0x4
	.4byte	.LASF122
	.byte	0xc
	.byte	0x3e
	.byte	0x10
	.4byte	0xb5
	.uleb128 0x4
	.4byte	.LASF123
	.byte	0xd
	.byte	0x2f
	.byte	0x10
	.4byte	0xb5
	.uleb128 0x4
	.4byte	.LASF124
	.byte	0xe
	.byte	0x26
	.byte	0x17
	.4byte	0x34e
	.uleb128 0x1e
	.4byte	.LASF125
	.byte	0xf
	.byte	0x11
	.byte	0x15
	.4byte	0x342
	.uleb128 0x1e
	.4byte	.LASF126
	.byte	0xf
	.byte	0x12
	.byte	0x5
	.4byte	0x342
	.uleb128 0x1e
	.4byte	.LASF127
	.byte	0xf
	.byte	0x13
	.byte	0x5
	.4byte	0x342
	.uleb128 0x1e
	.4byte	.LASF128
	.byte	0xf
	.byte	0x14
	.byte	0x5
	.4byte	0x342
	.uleb128 0x1e
	.4byte	.LASF129
	.byte	0xf
	.byte	0x15
	.byte	0x5
	.4byte	0x342
	.uleb128 0x1e
	.4byte	.LASF130
	.byte	0xf
	.byte	0x16
	.byte	0x5
	.4byte	0x342
	.uleb128 0x1e
	.4byte	.LASF131
	.byte	0xf
	.byte	0x17
	.byte	0x5
	.4byte	0x342
	.uleb128 0x1e
	.4byte	.LASF132
	.byte	0xf
	.byte	0x18
	.byte	0x5
	.4byte	0x342
	.uleb128 0x1e
	.4byte	.LASF133
	.byte	0xf
	.byte	0x1b
	.byte	0x1a
	.4byte	0x35a
	.uleb128 0x1e
	.4byte	.LASF134
	.byte	0xf
	.byte	0x1c
	.byte	0x1a
	.4byte	0x35a
	.uleb128 0x1e
	.4byte	.LASF135
	.byte	0xf
	.byte	0x1d
	.byte	0x1a
	.4byte	0x35a
	.uleb128 0x1e
	.4byte	.LASF136
	.byte	0xf
	.byte	0x1e
	.byte	0x1a
	.4byte	0x35a
	.uleb128 0x1e
	.4byte	.LASF137
	.byte	0xf
	.byte	0x1f
	.byte	0x1a
	.4byte	0x35a
	.uleb128 0x1e
	.4byte	.LASF138
	.byte	0xf
	.byte	0x20
	.byte	0x1a
	.4byte	0x35a
	.uleb128 0x1e
	.4byte	.LASF139
	.byte	0xf
	.byte	0x21
	.byte	0x1a
	.4byte	0x35a
	.uleb128 0x1e
	.4byte	.LASF140
	.byte	0xf
	.byte	0x25
	.byte	0x16
	.4byte	0x34e
	.uleb128 0x1e
	.4byte	.LASF141
	.byte	0xf
	.byte	0x26
	.byte	0x16
	.4byte	0x34e
	.uleb128 0x1e
	.4byte	.LASF142
	.byte	0xf
	.byte	0x27
	.byte	0x16
	.4byte	0x34e
	.uleb128 0x1e
	.4byte	.LASF143
	.byte	0xf
	.byte	0x2a
	.byte	0x10
	.4byte	0x43
	.uleb128 0x1e
	.4byte	.LASF144
	.byte	0xf
	.byte	0x2b
	.byte	0x10
	.4byte	0x43
	.uleb128 0x1e
	.4byte	.LASF145
	.byte	0xf
	.byte	0x2d
	.byte	0x10
	.4byte	0x43
	.uleb128 0x1e
	.4byte	.LASF146
	.byte	0xf
	.byte	0x30
	.byte	0xe
	.4byte	0xae
	.uleb128 0x1e
	.4byte	.LASF147
	.byte	0xf
	.byte	0x31
	.byte	0x10
	.4byte	0x5b
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0xf
	.byte	0x32
	.byte	0x10
	.4byte	0x5b
	.uleb128 0x1e
	.4byte	.LASF149
	.byte	0xf
	.byte	0x33
	.byte	0xe
	.4byte	0xae
	.uleb128 0x1e
	.4byte	.LASF150
	.byte	0xf
	.byte	0x34
	.byte	0xe
	.4byte	0xae
	.uleb128 0x1e
	.4byte	.LASF151
	.byte	0xf
	.byte	0x37
	.byte	0x10
	.4byte	0x5b
	.uleb128 0x1e
	.4byte	.LASF152
	.byte	0xf
	.byte	0x38
	.byte	0x10
	.4byte	0x5b
	.uleb128 0x1a
	.4byte	.LASF153
	.byte	0x10
	.2byte	0x124
	.byte	0x2e
	.4byte	0x30f
	.uleb128 0x1f
	.4byte	.LASF154
	.byte	0x1
	.byte	0x11
	.byte	0x9
	.4byte	0x43
	.uleb128 0x5
	.byte	0x3
	.4byte	collisionCounter
	.uleb128 0xa
	.4byte	0x5b
	.4byte	0x4e5
	.uleb128 0xb
	.4byte	0x99
	.byte	0x7
	.byte	0
	.uleb128 0x20
	.4byte	.LASF171
	.byte	0x1
	.byte	0x7b
	.byte	0x10
	.4byte	0x4d5
	.uleb128 0x5
	.byte	0x3
	.4byte	collisionSectors
	.uleb128 0x1f
	.4byte	.LASF155
	.byte	0x1
	.byte	0x7c
	.byte	0x9
	.4byte	0x43
	.uleb128 0x5
	.byte	0x3
	.4byte	collisionPrinter
	.uleb128 0x21
	.4byte	.LASF164
	.byte	0x1
	.byte	0xbf
	.byte	0x5
	.4byte	0x308
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x596
	.uleb128 0x22
	.4byte	.LASF161
	.byte	0x1
	.byte	0xbf
	.byte	0x1b
	.4byte	0x5b
	.4byte	.LLST54
	.4byte	.LVUS54
	.uleb128 0x23
	.4byte	.LASF156
	.byte	0x1
	.byte	0xc0
	.byte	0xa
	.4byte	0x43
	.4byte	.LLST55
	.4byte	.LVUS55
	.uleb128 0x24
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0xc2
	.byte	0xa
	.4byte	0x86
	.4byte	.LLST56
	.4byte	.LVUS56
	.uleb128 0x26
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.uleb128 0x23
	.4byte	.LASF157
	.byte	0x1
	.byte	0xc5
	.byte	0xc
	.4byte	0x5b
	.4byte	.LLST57
	.4byte	.LVUS57
	.uleb128 0x23
	.4byte	.LASF158
	.byte	0x1
	.byte	0xc6
	.byte	0xc
	.4byte	0x5b
	.4byte	.LLST58
	.4byte	.LVUS58
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF159
	.byte	0x1
	.byte	0xb2
	.byte	0x6
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ff
	.uleb128 0x26
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0xb5
	.byte	0xb
	.4byte	0x86
	.4byte	.LLST45
	.4byte	.LVUS45
	.uleb128 0x28
	.4byte	.LVL106
	.4byte	0xcd7
	.4byte	0x5e4
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL107
	.4byte	0xcd7
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LASF160
	.byte	0x1
	.byte	0x9d
	.byte	0x6
	.4byte	.LFB276
	.4byte	.LFE276-.LFB276
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x66f
	.uleb128 0x22
	.4byte	.LASF162
	.byte	0x1
	.byte	0x9d
	.byte	0x26
	.4byte	0x5b
	.4byte	.LLST50
	.4byte	.LVUS50
	.uleb128 0x22
	.4byte	.LASF163
	.byte	0x1
	.byte	0x9d
	.byte	0x35
	.4byte	0x43
	.4byte	.LLST51
	.4byte	.LVUS51
	.uleb128 0x23
	.4byte	.LASF158
	.byte	0x1
	.byte	0x9f
	.byte	0xa
	.4byte	0x5b
	.4byte	.LLST52
	.4byte	.LVUS52
	.uleb128 0x23
	.4byte	.LASF157
	.byte	0x1
	.byte	0xa0
	.byte	0xa
	.4byte	0x5b
	.4byte	.LLST53
	.4byte	.LVUS53
	.uleb128 0x2b
	.4byte	.LVL133
	.4byte	0x596
	.byte	0
	.uleb128 0x21
	.4byte	.LASF165
	.byte	0x1
	.byte	0x93
	.byte	0x9
	.4byte	0x5b
	.4byte	.LFB275
	.4byte	.LFE275-.LFB275
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c6
	.uleb128 0x22
	.4byte	.LASF166
	.byte	0x1
	.byte	0x93
	.byte	0x23
	.4byte	0x43
	.4byte	.LLST42
	.4byte	.LVUS42
	.uleb128 0x22
	.4byte	.LASF163
	.byte	0x1
	.byte	0x93
	.byte	0x37
	.4byte	0x43
	.4byte	.LLST43
	.4byte	.LVUS43
	.uleb128 0x23
	.4byte	.LASF167
	.byte	0x1
	.byte	0x94
	.byte	0xa
	.4byte	0x5b
	.4byte	.LLST44
	.4byte	.LVUS44
	.byte	0
	.uleb128 0x27
	.4byte	.LASF168
	.byte	0x1
	.byte	0x7e
	.byte	0x6
	.4byte	.LFB274
	.4byte	.LFE274-.LFB274
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x736
	.uleb128 0x22
	.4byte	.LASF162
	.byte	0x1
	.byte	0x7e
	.byte	0x26
	.4byte	0x5b
	.4byte	.LLST46
	.4byte	.LVUS46
	.uleb128 0x22
	.4byte	.LASF163
	.byte	0x1
	.byte	0x7e
	.byte	0x35
	.4byte	0x43
	.4byte	.LLST47
	.4byte	.LVUS47
	.uleb128 0x23
	.4byte	.LASF158
	.byte	0x1
	.byte	0x80
	.byte	0xa
	.4byte	0x5b
	.4byte	.LLST48
	.4byte	.LVUS48
	.uleb128 0x23
	.4byte	.LASF157
	.byte	0x1
	.byte	0x81
	.byte	0xa
	.4byte	0x5b
	.4byte	.LLST49
	.4byte	.LVUS49
	.uleb128 0x2b
	.4byte	.LVL116
	.4byte	0x596
	.byte	0
	.uleb128 0x27
	.4byte	.LASF169
	.byte	0x1
	.byte	0x63
	.byte	0x6
	.4byte	.LFB273
	.4byte	.LFE273-.LFB273
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x882
	.uleb128 0x2c
	.ascii	"x\000"
	.byte	0x1
	.byte	0x63
	.byte	0x21
	.4byte	0x5b
	.4byte	.LLST34
	.4byte	.LVUS34
	.uleb128 0x2c
	.ascii	"y\000"
	.byte	0x1
	.byte	0x63
	.byte	0x2c
	.4byte	0x5b
	.4byte	.LLST35
	.4byte	.LVUS35
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0x1
	.byte	0x63
	.byte	0x37
	.4byte	0x5b
	.4byte	.LLST36
	.4byte	.LVUS36
	.uleb128 0x22
	.4byte	.LASF166
	.byte	0x1
	.byte	0x63
	.byte	0x45
	.4byte	0x30
	.4byte	.LLST37
	.4byte	.LVUS37
	.uleb128 0x2d
	.4byte	.LASF176
	.byte	0x1
	.byte	0x63
	.byte	0x5a
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.4byte	.LASF172
	.byte	0x1
	.byte	0x64
	.byte	0xa
	.4byte	0x43
	.byte	0x8
	.uleb128 0x23
	.4byte	.LASF27
	.byte	0x1
	.byte	0x65
	.byte	0xc
	.4byte	0x888
	.4byte	.LLST38
	.4byte	.LVUS38
	.uleb128 0x23
	.4byte	.LASF173
	.byte	0x1
	.byte	0x66
	.byte	0xd
	.4byte	0x5b
	.4byte	.LLST39
	.4byte	.LVUS39
	.uleb128 0x23
	.4byte	.LASF174
	.byte	0x1
	.byte	0x67
	.byte	0xd
	.4byte	0x5b
	.4byte	.LLST40
	.4byte	.LVUS40
	.uleb128 0x26
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0x6e
	.byte	0xd
	.4byte	0x86
	.4byte	.LLST41
	.4byte	.LVUS41
	.uleb128 0x28
	.4byte	.LVL93
	.4byte	0xbbc
	.4byte	0x838
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL95
	.4byte	0xa7e
	.4byte	0x865
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL98
	.4byte	0xce4
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0x5b
	.uleb128 0xa
	.4byte	0x30
	.4byte	0x899
	.uleb128 0x2f
	.4byte	0x99
	.uleb128 0x1
	.byte	0x37
	.byte	0
	.uleb128 0x27
	.4byte	.LASF175
	.byte	0x1
	.byte	0x3f
	.byte	0x6
	.4byte	.LFB272
	.4byte	.LFE272-.LFB272
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e5
	.uleb128 0x2c
	.ascii	"x\000"
	.byte	0x1
	.byte	0x3f
	.byte	0x21
	.4byte	0x5b
	.4byte	.LLST25
	.4byte	.LVUS25
	.uleb128 0x2c
	.ascii	"y\000"
	.byte	0x1
	.byte	0x3f
	.byte	0x2c
	.4byte	0x5b
	.4byte	.LLST26
	.4byte	.LVUS26
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0x1
	.byte	0x3f
	.byte	0x37
	.4byte	0x5b
	.4byte	.LLST27
	.4byte	.LVUS27
	.uleb128 0x22
	.4byte	.LASF166
	.byte	0x1
	.byte	0x3f
	.byte	0x45
	.4byte	0x30
	.4byte	.LLST28
	.4byte	.LVUS28
	.uleb128 0x2d
	.4byte	.LASF176
	.byte	0x1
	.byte	0x3f
	.byte	0x5a
	.4byte	0x882
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x2e
	.4byte	.LASF172
	.byte	0x1
	.byte	0x40
	.byte	0xa
	.4byte	0x43
	.byte	0x17
	.uleb128 0x23
	.4byte	.LASF27
	.byte	0x1
	.byte	0x41
	.byte	0xc
	.4byte	0x9e5
	.4byte	.LLST29
	.4byte	.LVUS29
	.uleb128 0x23
	.4byte	.LASF173
	.byte	0x1
	.byte	0x42
	.byte	0xd
	.4byte	0x5b
	.4byte	.LLST30
	.4byte	.LVUS30
	.uleb128 0x23
	.4byte	.LASF174
	.byte	0x1
	.byte	0x43
	.byte	0xd
	.4byte	0x5b
	.4byte	.LLST31
	.4byte	.LVUS31
	.uleb128 0x30
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x9c9
	.uleb128 0x25
	.ascii	"i\000"
	.byte	0x1
	.byte	0x4d
	.byte	0xd
	.4byte	0x86
	.4byte	.LLST32
	.4byte	.LVUS32
	.uleb128 0x28
	.4byte	.LVL81
	.4byte	0xbbc
	.4byte	0x99f
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7a
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL83
	.4byte	0xa7e
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x79
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x78
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.uleb128 0x29
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL87
	.4byte	0xce4
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x47
	.byte	0
	.byte	0
	.uleb128 0xa
	.4byte	0x30
	.4byte	0x9f6
	.uleb128 0x2f
	.4byte	0x99
	.uleb128 0x1
	.byte	0x46
	.byte	0
	.uleb128 0x31
	.4byte	.LASF177
	.byte	0x1
	.byte	0x37
	.byte	0x9
	.4byte	0x5b
	.4byte	.LFB271
	.4byte	.LFE271-.LFB271
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7e
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0x1
	.byte	0x37
	.byte	0x22
	.4byte	0x5b
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x22
	.4byte	.LASF166
	.byte	0x1
	.byte	0x37
	.byte	0x30
	.4byte	0x30
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x22
	.4byte	.LASF176
	.byte	0x1
	.byte	0x37
	.byte	0x45
	.4byte	0x882
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x22
	.4byte	.LASF178
	.byte	0x1
	.byte	0x37
	.byte	0x59
	.4byte	0x43
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x23
	.4byte	.LASF179
	.byte	0x1
	.byte	0x38
	.byte	0xd
	.4byte	0x5b
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x2b
	.4byte	.LVL70
	.4byte	0xcf0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF180
	.byte	0x1
	.byte	0x30
	.byte	0x9
	.4byte	0x5b
	.4byte	.LFB270
	.4byte	.LFE270-.LFB270
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb34
	.uleb128 0x2c
	.ascii	"y\000"
	.byte	0x1
	.byte	0x30
	.byte	0x1d
	.4byte	0x5b
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0x1
	.byte	0x30
	.byte	0x28
	.4byte	0x5b
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x22
	.4byte	.LASF166
	.byte	0x1
	.byte	0x30
	.byte	0x36
	.4byte	0x30
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x22
	.4byte	.LASF176
	.byte	0x1
	.byte	0x30
	.byte	0x4b
	.4byte	0x882
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x22
	.4byte	.LASF178
	.byte	0x1
	.byte	0x30
	.byte	0x5f
	.4byte	0x43
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x23
	.4byte	.LASF179
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.4byte	0x5b
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x28
	.4byte	.LVL49
	.4byte	0xcfd
	.4byte	0xb2a
	.uleb128 0x29
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
	.uleb128 0x29
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL57
	.4byte	0xcf0
	.byte	0
	.uleb128 0x31
	.4byte	.LASF181
	.byte	0x1
	.byte	0x28
	.byte	0x9
	.4byte	0x5b
	.4byte	.LFB269
	.4byte	.LFE269-.LFB269
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbbc
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0x1
	.byte	0x28
	.byte	0x22
	.4byte	0x5b
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x22
	.4byte	.LASF166
	.byte	0x1
	.byte	0x28
	.byte	0x30
	.4byte	0x30
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x22
	.4byte	.LASF176
	.byte	0x1
	.byte	0x28
	.byte	0x45
	.4byte	0x882
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x22
	.4byte	.LASF178
	.byte	0x1
	.byte	0x28
	.byte	0x59
	.4byte	0x43
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x23
	.4byte	.LASF182
	.byte	0x1
	.byte	0x29
	.byte	0xd
	.4byte	0x5b
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x2b
	.4byte	.LVL41
	.4byte	0xcfd
	.byte	0
	.uleb128 0x31
	.4byte	.LASF183
	.byte	0x1
	.byte	0x21
	.byte	0x9
	.4byte	0x5b
	.4byte	.LFB268
	.4byte	.LFE268-.LFB268
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc72
	.uleb128 0x2c
	.ascii	"x\000"
	.byte	0x1
	.byte	0x21
	.byte	0x1d
	.4byte	0x5b
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x22
	.4byte	.LASF170
	.byte	0x1
	.byte	0x21
	.byte	0x28
	.4byte	0x5b
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x22
	.4byte	.LASF166
	.byte	0x1
	.byte	0x21
	.byte	0x36
	.4byte	0x30
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x22
	.4byte	.LASF176
	.byte	0x1
	.byte	0x21
	.byte	0x4b
	.4byte	0x882
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x22
	.4byte	.LASF178
	.byte	0x1
	.byte	0x21
	.byte	0x5f
	.4byte	0x43
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x23
	.4byte	.LASF182
	.byte	0x1
	.byte	0x22
	.byte	0xd
	.4byte	0x5b
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x28
	.4byte	.LVL20
	.4byte	0xcfd
	.4byte	0xc68
	.uleb128 0x29
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
	.uleb128 0x29
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL28
	.4byte	0xcfd
	.byte	0
	.uleb128 0x32
	.4byte	.LASF184
	.byte	0x1
	.byte	0x14
	.byte	0x6
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcd1
	.uleb128 0x22
	.4byte	.LASF185
	.byte	0x1
	.byte	0x14
	.byte	0x1a
	.4byte	0xcd1
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x23
	.4byte	.LASF186
	.byte	0x1
	.byte	0x15
	.byte	0xb
	.4byte	0xae
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2a
	.4byte	.LVL3
	.4byte	0xd0a
	.uleb128 0x29
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
	.uleb128 0x29
	.byte	0x8
	.4byte	0x54442d18
	.4byte	0x401921fb
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.4byte	0xae
	.uleb128 0x33
	.4byte	.LASF187
	.4byte	.LASF187
	.byte	0x10
	.2byte	0x1bf
	.byte	0x6
	.uleb128 0x34
	.4byte	.LASF188
	.4byte	.LASF188
	.byte	0x11
	.byte	0x10
	.byte	0x6
	.uleb128 0x35
	.ascii	"sin\000"
	.ascii	"sin\000"
	.byte	0x12
	.2byte	0x144
	.byte	0x8
	.uleb128 0x35
	.ascii	"cos\000"
	.ascii	"cos\000"
	.byte	0x12
	.2byte	0x125
	.byte	0x8
	.uleb128 0x33
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x12
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x33
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
	.uleb128 0xb
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
.LVUS54:
	.uleb128 0
	.uleb128 .LVU334
	.uleb128 .LVU334
	.uleb128 .LVU335
	.uleb128 .LVU335
	.uleb128 .LVU342
	.uleb128 .LVU342
	.uleb128 .LVU343
	.uleb128 .LVU343
	.uleb128 .LVU347
	.uleb128 .LVU347
	.uleb128 .LVU348
	.uleb128 .LVU348
	.uleb128 .LVU352
	.uleb128 .LVU352
	.uleb128 .LVU354
	.uleb128 .LVU354
	.uleb128 .LVU355
	.uleb128 .LVU355
	.uleb128 0
.LLST54:
	.4byte	.LVL140
	.4byte	.LVL149
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL149
	.4byte	.LVL150
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL150
	.4byte	.LVL151
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL151
	.4byte	.LVL152
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL152
	.4byte	.LVL153
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL153
	.4byte	.LVL154
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL154
	.4byte	.LVL155
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL155
	.4byte	.LVL157
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL157
	.4byte	.LVL158
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL158
	.4byte	.LFE278
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS55:
	.uleb128 .LVU299
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 .LVU309
	.uleb128 .LVU310
	.uleb128 .LVU353
	.uleb128 .LVU354
	.uleb128 0
.LLST55:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LVL143
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL144
	.4byte	.LVL156
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL157
	.4byte	.LFE278
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS56:
	.uleb128 .LVU301
	.uleb128 .LVU304
	.uleb128 .LVU304
	.uleb128 0
.LLST56:
	.4byte	.LVL141
	.4byte	.LVL142
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL142
	.4byte	.LFE278
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS57:
	.uleb128 .LVU323
	.uleb128 .LVU348
.LLST57:
	.4byte	.LVL146
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS58:
	.uleb128 .LVU327
	.uleb128 .LVU332
	.uleb128 .LVU335
	.uleb128 .LVU348
.LLST58:
	.4byte	.LVL147
	.4byte	.LVL148
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL150
	.4byte	.LVL154
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS45:
	.uleb128 .LVU209
	.uleb128 .LVU232
.LLST45:
	.4byte	.LVL105
	.4byte	.LVL109
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS50:
	.uleb128 0
	.uleb128 .LVU284
	.uleb128 .LVU284
	.uleb128 .LVU285
	.uleb128 .LVU285
	.uleb128 0
.LLST50:
	.4byte	.LVL125
	.4byte	.LVL133-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL133-1
	.4byte	.LVL134
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL134
	.4byte	.LFE276
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS51:
	.uleb128 0
	.uleb128 .LVU272
	.uleb128 .LVU272
	.uleb128 0
.LLST51:
	.4byte	.LVL125
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
.LVUS52:
	.uleb128 .LVU270
	.uleb128 .LVU278
.LLST52:
	.4byte	.LVL126
	.4byte	.LVL129
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS53:
	.uleb128 .LVU273
	.uleb128 .LVU279
	.uleb128 .LVU279
	.uleb128 .LVU282
	.uleb128 .LVU282
	.uleb128 .LVU283
	.uleb128 .LVU285
	.uleb128 .LVU289
	.uleb128 .LVU289
	.uleb128 .LVU290
	.uleb128 .LVU291
	.uleb128 .LVU293
	.uleb128 .LVU293
	.uleb128 .LVU294
.LLST53:
	.4byte	.LVL128
	.4byte	.LVL130
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL130
	.4byte	.LVL131
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x22
	.4byte	.LVL131
	.4byte	.LVL132
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL134
	.4byte	.LVL135
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x22
	.4byte	.LVL135
	.4byte	.LVL136
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL137
	.4byte	.LVL138
	.2byte	0xa
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0x22
	.4byte	.LVL138
	.4byte	.LVL139
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
.LVUS42:
	.uleb128 0
	.uleb128 .LVU195
	.uleb128 .LVU195
	.uleb128 0
.LLST42:
	.4byte	.LVL100
	.4byte	.LVL102
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL102
	.4byte	.LFE275
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS43:
	.uleb128 0
	.uleb128 .LVU194
	.uleb128 .LVU194
	.uleb128 0
.LLST43:
	.4byte	.LVL100
	.4byte	.LVL101
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL101
	.4byte	.LFE275
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS44:
	.uleb128 .LVU197
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 0
.LLST44:
	.4byte	.LVL103
	.4byte	.LVL104
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL104
	.4byte	.LFE275
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS46:
	.uleb128 0
	.uleb128 .LVU248
	.uleb128 .LVU248
	.uleb128 .LVU250
	.uleb128 .LVU250
	.uleb128 .LVU258
	.uleb128 .LVU258
	.uleb128 .LVU259
	.uleb128 .LVU259
	.uleb128 0
.LLST46:
	.4byte	.LVL110
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL115
	.4byte	.LVL117
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL117
	.4byte	.LVL121
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL121
	.4byte	.LVL122
	.2byte	0x3
	.byte	0x70
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL122
	.4byte	.LFE274
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS47:
	.uleb128 0
	.uleb128 .LVU240
	.uleb128 .LVU240
	.uleb128 0
.LLST47:
	.4byte	.LVL110
	.4byte	.LVL112
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL112
	.4byte	.LFE274
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS48:
	.uleb128 .LVU238
	.uleb128 .LVU248
	.uleb128 .LVU250
	.uleb128 .LVU254
	.uleb128 .LVU259
	.uleb128 0
.LLST48:
	.4byte	.LVL111
	.4byte	.LVL115
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL117
	.4byte	.LVL118
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL122
	.4byte	.LFE274
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS49:
	.uleb128 .LVU241
	.uleb128 .LVU247
	.uleb128 .LVU247
	.uleb128 .LVU248
	.uleb128 .LVU250
	.uleb128 .LVU255
	.uleb128 .LVU255
	.uleb128 .LVU256
	.uleb128 .LVU259
	.uleb128 .LVU263
	.uleb128 .LVU263
	.uleb128 .LVU264
.LLST49:
	.4byte	.LVL113
	.4byte	.LVL114
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL114
	.4byte	.LVL115
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL117
	.4byte	.LVL119
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL119
	.4byte	.LVL120
	.2byte	0x7
	.byte	0x71
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.4byte	.LVL122
	.4byte	.LVL123
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL123
	.4byte	.LVL124
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
.LVUS34:
	.uleb128 0
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 0
.LLST34:
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL92
	.4byte	.LFE273
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS35:
	.uleb128 0
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 0
.LLST35:
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL92
	.4byte	.LFE273
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS36:
	.uleb128 0
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 0
.LLST36:
	.4byte	.LVL88
	.4byte	.LVL92
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL92
	.4byte	.LFE273
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS37:
	.uleb128 0
	.uleb128 .LVU158
	.uleb128 .LVU158
	.uleb128 0
.LLST37:
	.4byte	.LVL88
	.4byte	.LVL90
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL90
	.4byte	.LFE273
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS38:
	.uleb128 .LVU152
	.uleb128 0
.LLST38:
	.4byte	.LVL89
	.4byte	.LFE273
	.2byte	0x2
	.byte	0x91
	.sleb128 -48
	.4byte	0
	.4byte	0
.LVUS39:
	.uleb128 .LVU169
	.uleb128 .LVU175
.LLST39:
	.4byte	.LVL94
	.4byte	.LVL96
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS40:
	.uleb128 .LVU171
	.uleb128 .LVU181
.LLST40:
	.4byte	.LVL95
	.4byte	.LVL97
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS41:
	.uleb128 .LVU165
	.uleb128 .LVU167
	.uleb128 .LVU167
	.uleb128 0
.LLST41:
	.4byte	.LVL91
	.4byte	.LVL92
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL92
	.4byte	.LFE273
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS25:
	.uleb128 0
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 0
.LLST25:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL79
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
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 0
.LLST26:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL79
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
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 0
.LLST27:
	.4byte	.LVL75
	.4byte	.LVL79
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL79
	.4byte	.LFE272
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS28:
	.uleb128 0
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 0
.LLST28:
	.4byte	.LVL75
	.4byte	.LVL77
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL77
	.4byte	.LFE272
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS29:
	.uleb128 .LVU89
	.uleb128 .LVU145
	.uleb128 .LVU145
	.uleb128 .LVU146
	.uleb128 .LVU146
	.uleb128 0
.LLST29:
	.4byte	.LVL76
	.4byte	.LVL86
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	.LVL86
	.4byte	.LVL87-1
	.2byte	0x2
	.byte	0x71
	.sleb128 0
	.4byte	.LVL87-1
	.4byte	.LFE272
	.2byte	0x2
	.byte	0x91
	.sleb128 -64
	.4byte	0
	.4byte	0
.LVUS30:
	.uleb128 .LVU119
	.uleb128 .LVU128
.LLST30:
	.4byte	.LVL82
	.4byte	.LVL84
	.2byte	0x1
	.byte	0x5b
	.4byte	0
	.4byte	0
.LVUS31:
	.uleb128 .LVU121
	.uleb128 .LVU135
.LLST31:
	.4byte	.LVL83
	.4byte	.LVL85
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS32:
	.uleb128 .LVU108
	.uleb128 .LVU109
	.uleb128 .LVU109
	.uleb128 0
.LLST32:
	.4byte	.LVL78
	.4byte	.LVL79
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL79
	.4byte	.LFE272
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 0
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 0
.LLST19:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL64
	.4byte	.LFE271
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 0
.LLST20:
	.4byte	.LVL63
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL65-1
	.4byte	.LFE271
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 0
.LLST21:
	.4byte	.LVL63
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL65-1
	.4byte	.LVL74
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL74
	.4byte	.LFE271
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU76
	.uleb128 .LVU76
	.uleb128 0
.LLST22:
	.4byte	.LVL63
	.4byte	.LVL65-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL65-1
	.4byte	.LFE271
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU81
	.uleb128 0
.LLST23:
	.4byte	.LVL73
	.4byte	.LFE271
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST13:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL47
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
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST14:
	.4byte	.LVL46
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL48-1
	.4byte	.LFE270
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 0
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 0
.LLST15:
	.4byte	.LVL46
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL48-1
	.4byte	.LFE270
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 0
.LLST16:
	.4byte	.LVL46
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL48-1
	.4byte	.LVL62
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL62
	.4byte	.LFE270
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 0
	.uleb128 .LVU70
	.uleb128 .LVU70
	.uleb128 0
.LLST17:
	.4byte	.LVL46
	.4byte	.LVL62
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL62
	.4byte	.LFE270
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU67
	.uleb128 0
.LLST18:
	.4byte	.LVL61
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
	.4byte	.LVL34
	.4byte	.LVL35
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35
	.4byte	.LFE269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 0
.LLST9:
	.4byte	.LVL34
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL36-1
	.4byte	.LFE269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 0
.LLST10:
	.4byte	.LVL34
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL36-1
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL45
	.4byte	.LFE269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 0
.LLST11:
	.4byte	.LVL34
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL36-1
	.4byte	.LFE269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU49
	.uleb128 0
.LLST12:
	.4byte	.LVL44
	.4byte	.LFE269
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST2:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18
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
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST3:
	.4byte	.LVL17
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL19-1
	.4byte	.LFE268
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST4:
	.4byte	.LVL17
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL19-1
	.4byte	.LFE268
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST5:
	.4byte	.LVL17
	.4byte	.LVL19-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL19-1
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x58
	.4byte	.LVL33
	.4byte	.LFE268
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL33
	.2byte	0x2
	.byte	0x91
	.sleb128 0
	.4byte	.LVL33
	.4byte	.LFE268
	.2byte	0x2
	.byte	0x7d
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU35
	.uleb128 0
.LLST7:
	.4byte	.LVL32
	.4byte	.LFE268
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL16
	.4byte	.LFE267
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU6
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU20
	.uleb128 .LVU20
	.uleb128 0
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-1
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL16
	.4byte	.LFE267
	.2byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x24c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xd18
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
	.4byte	0x4c3
	.ascii	"collisionCounter\000"
	.4byte	0x4e5
	.ascii	"collisionSectors\000"
	.4byte	0x4f7
	.ascii	"collisionPrinter\000"
	.4byte	0x4c3
	.ascii	"collisionCounter\000"
	.4byte	0x509
	.ascii	"validWaypoint\000"
	.4byte	0x596
	.ascii	"printCollisionSectors\000"
	.4byte	0x5ff
	.ascii	"decreaseCollisionSector\000"
	.4byte	0x66f
	.ascii	"getDetectionAngle\000"
	.4byte	0x6c6
	.ascii	"increaseCollisionSector\000"
	.4byte	0x736
	.ascii	"sendOldPoseMessage\000"
	.4byte	0x899
	.ascii	"sendNewPoseMessage\000"
	.4byte	0x9f6
	.ascii	"distObjectYlocal\000"
	.4byte	0xa7e
	.ascii	"distObjectY\000"
	.4byte	0xb34
	.ascii	"distObjectXlocal\000"
	.4byte	0xbbc
	.ascii	"distObjectX\000"
	.4byte	0xc72
	.ascii	"vFunc_Inf2pi\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x224
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xd18
	.4byte	0x3c
	.ascii	"signed char\000"
	.4byte	0x30
	.ascii	"int8_t\000"
	.4byte	0x4f
	.ascii	"unsigned char\000"
	.4byte	0x43
	.ascii	"uint8_t\000"
	.4byte	0x67
	.ascii	"short int\000"
	.4byte	0x5b
	.ascii	"int16_t\000"
	.4byte	0x6e
	.ascii	"short unsigned int\000"
	.4byte	0x86
	.ascii	"int\000"
	.4byte	0x75
	.ascii	"int32_t\000"
	.4byte	0x99
	.ascii	"unsigned int\000"
	.4byte	0x8d
	.ascii	"uint32_t\000"
	.4byte	0xa0
	.ascii	"long long int\000"
	.4byte	0xa7
	.ascii	"long long unsigned int\000"
	.4byte	0xae
	.ascii	"float\000"
	.4byte	0x29
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
	.4byte	0x33b
	.ascii	"long unsigned int\000"
	.4byte	0x342
	.ascii	"TaskHandle_t\000"
	.4byte	0x34e
	.ascii	"QueueHandle_t\000"
	.4byte	0x35a
	.ascii	"SemaphoreHandle_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x74
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
	.4byte	.LFB275
	.4byte	.LFE275-.LFB275
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.4byte	.LFB274
	.4byte	.LFE274-.LFB274
	.4byte	.LFB276
	.4byte	.LFE276-.LFB276
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
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
	.4byte	.LFB275
	.4byte	.LFE275
	.4byte	.LFB277
	.4byte	.LFE277
	.4byte	.LFB274
	.4byte	.LFE274
	.4byte	.LFB276
	.4byte	.LFE276
	.4byte	.LFB278
	.4byte	.LFE278
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
	.file 19 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\functions.h"
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x3
	.byte	0x4
	.file 20 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0x12
	.byte	0x4
	.file 21 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\defines.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x11
	.file 22 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x16
	.file 23 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x17
	.file 24 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x18
	.file 25 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x19
	.file 26 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x1a
	.byte	0x4
	.byte	0x4
	.file 27 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x1b
	.file 28 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x1c
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.file 29 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x1d
	.file 30 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x1e
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2d
	.byte	0x4
	.file 52 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x34
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xa
	.byte	0x4
	.file 53 "../../../../../../components/libraries/util/sdk_errors.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x35
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x32
	.byte	0x4
	.byte	0x4
	.file 54 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x36
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 55 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x37
	.byte	0x4
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x35
	.byte	0x4
	.file 56 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x38
	.file 57 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x39
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 58 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x3a
	.byte	0x4
	.byte	0x4
	.file 59 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x3b
	.file 60 "../../../../../../modules/nrfx/hal/nrf_twim.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x3c
	.byte	0x4
	.byte	0x4
	.file 61 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x3d
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 62 "../../../../../../components/libraries/queue/nrf_queue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x3e
	.file 63 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x3f
	.byte	0x4
	.file 64 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x40
	.file 65 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x41
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xb
	.file 66 "../../../drivers/defines.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x42
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xe
	.uleb128 0xf
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
	.uleb128 0xc
	.file 80 "../../../../../../external/freertos/source/include/list.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x50
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x24
	.uleb128 0xd
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
	.uleb128 0x10
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
.LASF164:
	.ascii	"validWaypoint\000"
.LASF87:
	.ascii	"__RAL_codeset_ascii\000"
.LASF20:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF52:
	.ascii	"p_cs_precedes\000"
.LASF126:
	.ascii	"handle_user_task\000"
.LASF182:
	.ascii	"xDist\000"
.LASF98:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF143:
	.ascii	"gHandshook\000"
.LASF83:
	.ascii	"long long unsigned int\000"
.LASF190:
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
.LASF123:
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
.LASF79:
	.ascii	"int16_t\000"
.LASF82:
	.ascii	"long long int\000"
.LASF77:
	.ascii	"signed char\000"
.LASF168:
	.ascii	"increaseCollisionSector\000"
.LASF85:
	.ascii	"__RAL_global_locale\000"
.LASF0:
	.ascii	"module_id\000"
.LASF28:
	.ascii	"codeset\000"
.LASF37:
	.ascii	"__wctomb\000"
.LASF165:
	.ascii	"getDetectionAngle\000"
.LASF35:
	.ascii	"__towupper\000"
.LASF177:
	.ascii	"distObjectYlocal\000"
.LASF131:
	.ascii	"sensor_tower_task\000"
.LASF172:
	.ascii	"msgLength\000"
.LASF187:
	.ascii	"nrf_log_frontend_std_2\000"
.LASF39:
	.ascii	"long int\000"
.LASF149:
	.ascii	"gLeft\000"
.LASF29:
	.ascii	"__RAL_locale_data_t\000"
.LASF95:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF122:
	.ascii	"TaskHandle_t\000"
.LASF115:
	.ascii	"stdin\000"
.LASF166:
	.ascii	"servoAngle\000"
.LASF156:
	.ascii	"noCollision\000"
.LASF6:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF2:
	.ascii	"uint16_t\000"
.LASF75:
	.ascii	"double\000"
.LASF64:
	.ascii	"day_names\000"
.LASF31:
	.ascii	"__isctype\000"
.LASF58:
	.ascii	"int_p_cs_precedes\000"
.LASF132:
	.ascii	"arq_task\000"
.LASF15:
	.ascii	"__irq_masks\000"
.LASF65:
	.ascii	"abbrev_day_names\000"
.LASF74:
	.ascii	"__wchar\000"
.LASF145:
	.ascii	"USEBLUETOOTH\000"
.LASF41:
	.ascii	"thousands_sep\000"
.LASF162:
	.ascii	"angle\000"
.LASF47:
	.ascii	"mon_grouping\000"
.LASF34:
	.ascii	"__iswctype\000"
.LASF57:
	.ascii	"n_sign_posn\000"
.LASF4:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF188:
	.ascii	"i2cSendNOADDR\000"
.LASF171:
	.ascii	"collisionSectors\000"
.LASF174:
	.ascii	"yObject\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF60:
	.ascii	"int_p_sep_by_space\000"
.LASF105:
	.ascii	"SystemCoreClock\000"
.LASF68:
	.ascii	"am_pm_indicator\000"
.LASF94:
	.ascii	"__RAL_data_utf8_period\000"
.LASF42:
	.ascii	"grouping\000"
.LASF121:
	.ascii	"long unsigned int\000"
.LASF36:
	.ascii	"__towlower\000"
.LASF147:
	.ascii	"gX_hat\000"
.LASF99:
	.ascii	"__RAL_data_empty_string\000"
.LASF129:
	.ascii	"pose_controller_task\000"
.LASF24:
	.ascii	"__category\000"
.LASF141:
	.ascii	"scanStatusQ\000"
.LASF119:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF107:
	.ascii	"__StackLimit\000"
.LASF155:
	.ascii	"collisionPrinter\000"
.LASF110:
	.ascii	"nrf_nvic_state_t\000"
.LASF127:
	.ascii	"handle_microsd_task\000"
.LASF142:
	.ascii	"queue_microsd\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF26:
	.ascii	"name\000"
.LASF192:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF163:
	.ascii	"sensor\000"
.LASF170:
	.ascii	"theta\000"
.LASF191:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\drivers\\functions.c\000"
.LASF169:
	.ascii	"sendOldPoseMessage\000"
.LASF16:
	.ascii	"__cr_flag\000"
.LASF113:
	.ascii	"timeval\000"
.LASF116:
	.ascii	"stdout\000"
.LASF167:
	.ascii	"sensorAngle\000"
.LASF184:
	.ascii	"vFunc_Inf2pi\000"
.LASF130:
	.ascii	"communication_task\000"
.LASF25:
	.ascii	"__RAL_locale_t\000"
.LASF70:
	.ascii	"time_format\000"
.LASF135:
	.ascii	"xTickMutex\000"
.LASF32:
	.ascii	"__toupper\000"
.LASF56:
	.ascii	"p_sign_posn\000"
.LASF8:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF89:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF136:
	.ascii	"xControllerBSem\000"
.LASF18:
	.ascii	"decode\000"
.LASF13:
	.ascii	"NRF_TWI_FREQ_400K\000"
.LASF38:
	.ascii	"__mbtowc\000"
.LASF111:
	.ascii	"nrf_nvic_state\000"
.LASF161:
	.ascii	"waypointAngle\000"
.LASF86:
	.ascii	"__RAL_c_locale\000"
.LASF154:
	.ascii	"collisionCounter\000"
.LASF33:
	.ascii	"__tolower\000"
.LASF134:
	.ascii	"xPoseMutex\000"
.LASF100:
	.ascii	"__user_set_time_of_day\000"
.LASF59:
	.ascii	"int_n_cs_precedes\000"
.LASF150:
	.ascii	"gRight\000"
.LASF84:
	.ascii	"float\000"
.LASF73:
	.ascii	"__state\000"
.LASF106:
	.ascii	"__StackTop\000"
.LASF133:
	.ascii	"xScanLock\000"
.LASF118:
	.ascii	"_Bool\000"
.LASF81:
	.ascii	"int32_t\000"
.LASF10:
	.ascii	"unsigned char\000"
.LASF90:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF51:
	.ascii	"frac_digits\000"
.LASF80:
	.ascii	"short int\000"
.LASF103:
	.ascii	"__RAL_error_decoder_head\000"
.LASF158:
	.ascii	"lowerLimit\000"
.LASF146:
	.ascii	"gTheta_hat\000"
.LASF72:
	.ascii	"__mbstate_s\000"
.LASF179:
	.ascii	"yDist\000"
.LASF112:
	.ascii	"FILE\000"
.LASF120:
	.ascii	"collisionAngles\000"
.LASF46:
	.ascii	"mon_thousands_sep\000"
.LASF160:
	.ascii	"decreaseCollisionSector\000"
.LASF151:
	.ascii	"gRightWheelTicks\000"
.LASF159:
	.ascii	"printCollisionSectors\000"
.LASF48:
	.ascii	"positive_sign\000"
.LASF17:
	.ascii	"uint32_t\000"
.LASF144:
	.ascii	"gPaused\000"
.LASF178:
	.ascii	"sensorNumber\000"
.LASF62:
	.ascii	"int_p_sign_posn\000"
.LASF181:
	.ascii	"distObjectXlocal\000"
.LASF124:
	.ascii	"SemaphoreHandle_t\000"
.LASF21:
	.ascii	"char\000"
.LASF140:
	.ascii	"poseControllerQ\000"
.LASF53:
	.ascii	"p_sep_by_space\000"
.LASF185:
	.ascii	"angle_in_radians\000"
.LASF153:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF139:
	.ascii	"xCollisionMutex\000"
.LASF157:
	.ascii	"upperLimit\000"
.LASF173:
	.ascii	"xObject\000"
.LASF9:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF49:
	.ascii	"negative_sign\000"
.LASF30:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF76:
	.ascii	"int8_t\000"
.LASF152:
	.ascii	"gLeftWheelTicks\000"
.LASF189:
	.ascii	"fmod\000"
.LASF12:
	.ascii	"NRF_TWI_FREQ_250K\000"
.LASF63:
	.ascii	"int_n_sign_posn\000"
.LASF128:
	.ascii	"pose_estimator_task\000"
.LASF117:
	.ascii	"stderr\000"
.LASF11:
	.ascii	"NRF_TWI_FREQ_100K\000"
.LASF176:
	.ascii	"sensorData\000"
.LASF92:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF125:
	.ascii	"handle_display_task\000"
.LASF22:
	.ascii	"__RAL_error_decoder_s\000"
.LASF102:
	.ascii	"__RAL_error_decoder_t\000"
.LASF54:
	.ascii	"n_cs_precedes\000"
.LASF78:
	.ascii	"uint8_t\000"
.LASF88:
	.ascii	"__RAL_codeset_utf8\000"
.LASF50:
	.ascii	"int_frac_digits\000"
.LASF66:
	.ascii	"month_names\000"
.LASF137:
	.ascii	"xCommandReadyBSem\000"
.LASF138:
	.ascii	"mutex_spi\000"
.LASF61:
	.ascii	"int_n_sep_by_space\000"
.LASF55:
	.ascii	"n_sep_by_space\000"
.LASF114:
	.ascii	"__RAL_FILE\000"
.LASF97:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF93:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF45:
	.ascii	"mon_decimal_point\000"
.LASF175:
	.ascii	"sendNewPoseMessage\000"
.LASF183:
	.ascii	"distObjectX\000"
.LASF180:
	.ascii	"distObjectY\000"
.LASF186:
	.ascii	"result\000"
.LASF40:
	.ascii	"decimal_point\000"
.LASF148:
	.ascii	"gY_hat\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
