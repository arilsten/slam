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
	.file	"MPU6050.c"
	.text
.Ltext0:
	.section	.text.MPU_read_8bit,"ax",%progbits
	.align	1
	.global	MPU_read_8bit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MPU_read_8bit, %function
MPU_read_8bit:
.LVL0:
.LFB266:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\MPU6050.c"
	.loc 1 18 35 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 18 35 is_stmt 0 view .LVU1
	push	{lr}
.LCFI0:
	sub	sp, sp, #12
.LCFI1:
	mov	r1, r0
	.loc 1 19 5 is_stmt 1 view .LVU2
	.loc 1 20 5 view .LVU3
	movs	r3, #1
	add	r2, sp, #7
	movs	r0, #104
.LVL1:
	.loc 1 20 5 is_stmt 0 view .LVU4
	bl	i2cRecive
.LVL2:
	.loc 1 21 5 is_stmt 1 view .LVU5
	.loc 1 22 1 is_stmt 0 view .LVU6
	ldrb	r0, [sp, #7]	@ zero_extendqisi2
	add	sp, sp, #12
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.LFE266:
	.size	MPU_read_8bit, .-MPU_read_8bit
	.section	.text.MPU_read_burst,"ax",%progbits
	.align	1
	.global	MPU_read_burst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MPU_read_burst, %function
MPU_read_burst:
.LVL3:
.LFB267:
	.loc 1 24 68 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 24 68 is_stmt 0 view .LVU8
	push	{r3, lr}
.LCFI3:
	mov	r3, r2
	.loc 1 25 5 is_stmt 1 view .LVU9
	mov	r2, r1
.LVL4:
	.loc 1 25 5 is_stmt 0 view .LVU10
	mov	r1, r0
.LVL5:
	.loc 1 25 5 view .LVU11
	movs	r0, #104
.LVL6:
	.loc 1 25 5 view .LVU12
	bl	i2cRecive
.LVL7:
	.loc 1 26 1 view .LVU13
	pop	{r3, pc}
.LFE267:
	.size	MPU_read_burst, .-MPU_read_burst
	.section	.text.MPU_write,"ax",%progbits
	.align	1
	.global	MPU_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MPU_write, %function
MPU_write:
.LVL8:
.LFB268:
	.loc 1 28 43 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 28 43 is_stmt 0 view .LVU15
	push	{lr}
.LCFI4:
	sub	sp, sp, #12
.LCFI5:
	strb	r1, [sp, #7]
	.loc 1 29 5 is_stmt 1 view .LVU16
	movs	r3, #1
	add	r2, sp, #7
	mov	r1, r0
.LVL9:
	.loc 1 29 5 is_stmt 0 view .LVU17
	movs	r0, #104
.LVL10:
	.loc 1 29 5 view .LVU18
	bl	i2cSend
.LVL11:
	.loc 1 30 1 view .LVU19
	add	sp, sp, #12
.LCFI6:
	@ sp needed
	ldr	pc, [sp], #4
.LFE268:
	.size	MPU_write, .-MPU_write
	.section	.text.MPU_write_bit,"ax",%progbits
	.align	1
	.global	MPU_write_bit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MPU_write_bit, %function
MPU_write_bit:
.LVL12:
.LFB269:
	.loc 1 32 59 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 32 59 is_stmt 0 view .LVU21
	push	{r4, r5, r6, lr}
.LCFI7:
	mov	r4, r0
	mov	r5, r1
	mov	r6, r2
	.loc 1 33 6 is_stmt 1 view .LVU22
	.loc 1 34 6 view .LVU23
	.loc 1 34 10 is_stmt 0 view .LVU24
	bl	MPU_read_8bit
.LVL13:
	.loc 1 35 6 is_stmt 1 view .LVU25
	.loc 1 35 8 is_stmt 0 view .LVU26
	cbz	r6, .L8
	.loc 1 35 32 discriminator 1 view .LVU27
	movs	r1, #1
	lsls	r1, r1, r5
	.loc 1 35 27 discriminator 1 view .LVU28
	orrs	r1, r1, r0
	.loc 1 35 8 discriminator 1 view .LVU29
	uxtb	r1, r1
.L9:
.LVL14:
	.loc 1 36 6 is_stmt 1 discriminator 4 view .LVU30
	mov	r0, r4
	bl	MPU_write
.LVL15:
	.loc 1 37 1 is_stmt 0 discriminator 4 view .LVU31
	pop	{r4, r5, r6, pc}
.LVL16:
.L8:
	.loc 1 35 52 discriminator 2 view .LVU32
	movs	r1, #1
	lsls	r1, r1, r5
	.loc 1 35 46 discriminator 2 view .LVU33
	bic	r1, r0, r1
	.loc 1 35 8 discriminator 2 view .LVU34
	uxtb	r1, r1
	b	.L9
.LFE269:
	.size	MPU_write_bit, .-MPU_write_bit
	.section	.text.MPU_write_bits,"ax",%progbits
	.align	1
	.global	MPU_write_bits
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	MPU_write_bits, %function
MPU_write_bits:
.LVL17:
.LFB270:
	.loc 1 39 81 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 39 81 is_stmt 0 view .LVU36
	push	{r4, r5, r6, r7, r8, lr}
.LCFI8:
	mov	r6, r0
	mov	r7, r1
	mov	r8, r2
	mov	r4, r3
	.loc 1 47 5 is_stmt 1 view .LVU37
	.loc 1 48 5 view .LVU38
	.loc 1 48 9 is_stmt 0 view .LVU39
	bl	MPU_read_8bit
.LVL18:
	.loc 1 49 5 is_stmt 1 view .LVU40
	.loc 1 49 24 is_stmt 0 view .LVU41
	movs	r5, #1
	lsl	r5, r5, r8
	.loc 1 49 35 view .LVU42
	subs	r5, r5, #1
	.loc 1 49 53 view .LVU43
	sub	r3, r7, r8
	.loc 1 49 62 view .LVU44
	adds	r3, r3, #1
	.loc 1 49 40 view .LVU45
	lsl	r2, r5, r3
.LVL19:
	.loc 1 50 5 is_stmt 1 view .LVU46
	.loc 1 50 10 is_stmt 0 view .LVU47
	lsls	r4, r4, r3
	uxtb	r4, r4
.LVL20:
	.loc 1 51 5 is_stmt 1 view .LVU48
	.loc 1 51 10 is_stmt 0 view .LVU49
	ands	r4, r4, r2
.LVL21:
	.loc 1 52 5 is_stmt 1 view .LVU50
	.loc 1 52 7 is_stmt 0 view .LVU51
	bic	r1, r0, r2
	uxtb	r1, r1
.LVL22:
	.loc 1 53 5 is_stmt 1 view .LVU52
	.loc 1 54 5 view .LVU53
	orrs	r1, r1, r4
.LVL23:
	.loc 1 54 5 is_stmt 0 view .LVU54
	mov	r0, r6
	bl	MPU_write
.LVL24:
	.loc 1 55 1 view .LVU55
	pop	{r4, r5, r6, r7, r8, pc}
	.loc 1 55 1 view .LVU56
.LFE270:
	.size	MPU_write_bits, .-MPU_write_bits
	.section	.text.IMU_init,"ax",%progbits
	.align	1
	.global	IMU_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	IMU_init, %function
IMU_init:
.LFB271:
	.loc 1 58 20 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI9:
	.loc 1 60 5 view .LVU58
	movs	r3, #1
	movs	r2, #3
	movs	r1, #2
	movs	r0, #107
	bl	MPU_write_bits
.LVL25:
	.loc 1 62 5 view .LVU59
	movs	r3, #0
	movs	r2, #2
	movs	r1, #4
	movs	r0, #28
	bl	MPU_write_bits
.LVL26:
	.loc 1 64 5 view .LVU60
	movs	r3, #0
	movs	r2, #2
	movs	r1, #4
	movs	r0, #27
	bl	MPU_write_bits
.LVL27:
	.loc 1 66 5 view .LVU61
	movs	r2, #1
	movs	r1, #0
	movs	r0, #56
	bl	MPU_write_bit
.LVL28:
	.loc 1 68 5 view .LVU62
	movs	r2, #0
	movs	r1, #6
	movs	r0, #107
	bl	MPU_write_bit
.LVL29:
	.loc 1 70 5 view .LVU63
	movs	r1, #24
	movs	r0, #25
	bl	MPU_write
.LVL30:
	.loc 1 72 5 view .LVU64
	movs	r3, #3
	mov	r2, r3
	movs	r1, #2
	movs	r0, #26
	bl	MPU_write_bits
.LVL31:
	.loc 1 75 1 is_stmt 0 view .LVU65
	pop	{r3, pc}
.LFE271:
	.size	IMU_init, .-IMU_init
	.section	.text.IMU_newData,"ax",%progbits
	.align	1
	.global	IMU_newData
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	IMU_newData, %function
IMU_newData:
.LFB272:
	.loc 1 77 22 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI10:
	.loc 1 78 6 view .LVU67
	.loc 1 78 21 is_stmt 0 view .LVU68
	movs	r0, #58
	bl	MPU_read_8bit
.LVL32:
	.loc 1 79 6 is_stmt 1 view .LVU69
	.loc 1 80 1 is_stmt 0 view .LVU70
	lsls	r0, r0, #7
.LVL33:
	.loc 1 80 1 view .LVU71
	pop	{r3, pc}
.LFE272:
	.size	IMU_newData, .-IMU_newData
	.section	.text.GyroValueToDegrees,"ax",%progbits
	.align	1
	.global	GyroValueToDegrees
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	GyroValueToDegrees, %function
GyroValueToDegrees:
.LVL34:
.LFB273:
	.loc 1 83 42 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 83 42 is_stmt 0 view .LVU73
	vmov	s15, r0	@ int
	.loc 1 84 7 is_stmt 1 view .LVU74
.LVL35:
	.loc 1 85 7 view .LVU75
	.loc 1 85 22 is_stmt 0 view .LVU76
	vcvt.f32.s32	s15, s15
	.loc 1 86 1 view .LVU77
	vldr.32	s0, .L18
	vmul.f32	s0, s15, s0
	bx	lr
.L19:
	.align	2
.L18:
	.word	1006240244
.LFE273:
	.size	GyroValueToDegrees, .-GyroValueToDegrees
	.section	.text.AccValueToG,"ax",%progbits
	.align	1
	.global	AccValueToG
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	AccValueToG, %function
AccValueToG:
.LVL36:
.LFB274:
	.loc 1 88 35 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 88 35 is_stmt 0 view .LVU79
	vmov	s15, r0	@ int
	.loc 1 89 7 is_stmt 1 view .LVU80
.LVL37:
	.loc 1 90 7 view .LVU81
	.loc 1 90 21 is_stmt 0 view .LVU82
	vcvt.f32.s32	s15, s15
	.loc 1 91 1 view .LVU83
	vldr.32	s0, .L21
	vmul.f32	s0, s15, s0
	bx	lr
.L22:
	.align	2
.L21:
	.word	975176000
.LFE274:
	.size	AccValueToG, .-AccValueToG
	.section	.text.IMU_read,"ax",%progbits
	.align	1
	.global	IMU_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	IMU_read, %function
IMU_read:
.LFB275:
	.loc 1 95 20 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI11:
	.loc 1 96 7 view .LVU85
	movs	r2, #14
	ldr	r1, .L25
	movs	r0, #59
	bl	MPU_read_burst
.LVL38:
	.loc 1 97 1 is_stmt 0 view .LVU86
	pop	{r3, pc}
.L26:
	.align	2
.L25:
	.word	.LANCHOR0
.LFE275:
	.size	IMU_read, .-IMU_read
	.global	__aeabi_f2d
	.global	__aeabi_dadd
	.global	__aeabi_d2iz
	.section	.text.IMU_getTemp,"ax",%progbits
	.align	1
	.global	IMU_getTemp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	IMU_getTemp, %function
IMU_getTemp:
.LFB276:
	.loc 1 99 22 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI12:
	.loc 1 100 7 view .LVU88
	.loc 1 101 7 view .LVU89
	.loc 1 101 34 is_stmt 0 view .LVU90
	ldr	r2, .L29+8
	ldrb	r3, [r2, #6]	@ zero_extendqisi2
	.loc 1 101 37 view .LVU91
	lsls	r3, r3, #8
	.loc 1 101 41 view .LVU92
	sxth	r3, r3
	.loc 1 101 50 view .LVU93
	ldrb	r2, [r2, #7]	@ zero_extendqisi2
	.loc 1 101 14 view .LVU94
	orrs	r3, r3, r2
.LVL39:
	.loc 1 102 7 is_stmt 1 view .LVU95
	.loc 1 102 21 is_stmt 0 view .LVU96
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	.loc 1 102 35 view .LVU97
	vldr.32	s14, .L29+12
	vdiv.f32	s15, s15, s14
	vmov	r0, s15
	bl	__aeabi_f2d
.LVL40:
	.loc 1 102 41 view .LVU98
	adr	r3, .L29
	ldrd	r2, [r3]
	bl	__aeabi_dadd
.LVL41:
	.loc 1 102 14 view .LVU99
	bl	__aeabi_d2iz
.LVL42:
	.loc 1 103 1 view .LVU100
	pop	{r3, pc}
.L30:
	.align	3
.L29:
	.word	171798692
	.word	1078084567
	.word	.LANCHOR0
	.word	1135214592
.LFE276:
	.size	IMU_getTemp, .-IMU_getTemp
	.section	.text.fIMU_readFloatAccelX,"ax",%progbits
	.align	1
	.global	fIMU_readFloatAccelX
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	fIMU_readFloatAccelX, %function
fIMU_readFloatAccelX:
.LFB277:
	.loc 1 105 33 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI13:
	.loc 1 106 5 view .LVU102
	.loc 1 107 5 view .LVU103
	.loc 1 107 30 is_stmt 0 view .LVU104
	ldr	r2, .L33
	ldrb	r3, [r2]	@ zero_extendqisi2
	.loc 1 107 33 view .LVU105
	lsls	r3, r3, #8
	.loc 1 107 38 view .LVU106
	sxth	r3, r3
	.loc 1 107 48 view .LVU107
	ldrb	r0, [r2, #1]	@ zero_extendqisi2
.LVL43:
	.loc 1 108 5 is_stmt 1 view .LVU108
	.loc 1 108 12 is_stmt 0 view .LVU109
	orrs	r0, r0, r3
.LVL44:
	.loc 1 108 12 view .LVU110
	bl	AccValueToG
.LVL45:
	.loc 1 109 1 view .LVU111
	pop	{r3, pc}
.L34:
	.align	2
.L33:
	.word	.LANCHOR0
.LFE277:
	.size	fIMU_readFloatAccelX, .-fIMU_readFloatAccelX
	.section	.text.fIMU_readFloatAccelY,"ax",%progbits
	.align	1
	.global	fIMU_readFloatAccelY
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	fIMU_readFloatAccelY, %function
fIMU_readFloatAccelY:
.LFB278:
	.loc 1 110 33 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI14:
	.loc 1 111 5 view .LVU113
	.loc 1 112 5 view .LVU114
	.loc 1 112 30 is_stmt 0 view .LVU115
	ldr	r2, .L37
	ldrb	r3, [r2, #2]	@ zero_extendqisi2
	.loc 1 112 33 view .LVU116
	lsls	r3, r3, #8
	.loc 1 112 38 view .LVU117
	sxth	r3, r3
	.loc 1 112 48 view .LVU118
	ldrb	r0, [r2, #3]	@ zero_extendqisi2
.LVL46:
	.loc 1 113 5 is_stmt 1 view .LVU119
	.loc 1 113 12 is_stmt 0 view .LVU120
	orrs	r0, r0, r3
.LVL47:
	.loc 1 113 12 view .LVU121
	bl	AccValueToG
.LVL48:
	.loc 1 114 1 view .LVU122
	pop	{r3, pc}
.L38:
	.align	2
.L37:
	.word	.LANCHOR0
.LFE278:
	.size	fIMU_readFloatAccelY, .-fIMU_readFloatAccelY
	.section	.text.fIMU_readFloatAccelZ,"ax",%progbits
	.align	1
	.global	fIMU_readFloatAccelZ
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	fIMU_readFloatAccelZ, %function
fIMU_readFloatAccelZ:
.LFB279:
	.loc 1 115 33 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI15:
	.loc 1 116 5 view .LVU124
	.loc 1 117 5 view .LVU125
	.loc 1 117 30 is_stmt 0 view .LVU126
	ldr	r2, .L41
	ldrb	r3, [r2, #4]	@ zero_extendqisi2
	.loc 1 117 33 view .LVU127
	lsls	r3, r3, #8
	.loc 1 117 38 view .LVU128
	sxth	r3, r3
	.loc 1 117 48 view .LVU129
	ldrb	r0, [r2, #5]	@ zero_extendqisi2
.LVL49:
	.loc 1 118 5 is_stmt 1 view .LVU130
	.loc 1 118 12 is_stmt 0 view .LVU131
	orrs	r0, r0, r3
.LVL50:
	.loc 1 118 12 view .LVU132
	bl	AccValueToG
.LVL51:
	.loc 1 119 1 view .LVU133
	pop	{r3, pc}
.L42:
	.align	2
.L41:
	.word	.LANCHOR0
.LFE279:
	.size	fIMU_readFloatAccelZ, .-fIMU_readFloatAccelZ
	.section	.text.fIMU_readFloatGyroX,"ax",%progbits
	.align	1
	.global	fIMU_readFloatGyroX
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	fIMU_readFloatGyroX, %function
fIMU_readFloatGyroX:
.LFB280:
	.loc 1 121 32 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI16:
	.loc 1 122 5 view .LVU135
	.loc 1 123 5 view .LVU136
	.loc 1 123 30 is_stmt 0 view .LVU137
	ldr	r2, .L45
	ldrb	r3, [r2, #8]	@ zero_extendqisi2
	.loc 1 123 33 view .LVU138
	lsls	r3, r3, #8
	.loc 1 123 38 view .LVU139
	sxth	r3, r3
	.loc 1 123 48 view .LVU140
	ldrb	r0, [r2, #9]	@ zero_extendqisi2
.LVL52:
	.loc 1 124 5 is_stmt 1 view .LVU141
	.loc 1 124 12 is_stmt 0 view .LVU142
	orrs	r0, r0, r3
.LVL53:
	.loc 1 124 12 view .LVU143
	bl	GyroValueToDegrees
.LVL54:
	.loc 1 125 1 view .LVU144
	pop	{r3, pc}
.L46:
	.align	2
.L45:
	.word	.LANCHOR0
.LFE280:
	.size	fIMU_readFloatGyroX, .-fIMU_readFloatGyroX
	.section	.text.fIMU_readFloatGyroY,"ax",%progbits
	.align	1
	.global	fIMU_readFloatGyroY
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	fIMU_readFloatGyroY, %function
fIMU_readFloatGyroY:
.LFB281:
	.loc 1 126 32 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI17:
	.loc 1 127 5 view .LVU146
	.loc 1 128 5 view .LVU147
	.loc 1 128 30 is_stmt 0 view .LVU148
	ldr	r2, .L49
	ldrb	r3, [r2, #10]	@ zero_extendqisi2
	.loc 1 128 34 view .LVU149
	lsls	r3, r3, #8
	.loc 1 128 39 view .LVU150
	sxth	r3, r3
	.loc 1 128 49 view .LVU151
	ldrb	r0, [r2, #11]	@ zero_extendqisi2
.LVL55:
	.loc 1 129 5 is_stmt 1 view .LVU152
	.loc 1 129 12 is_stmt 0 view .LVU153
	orrs	r0, r0, r3
.LVL56:
	.loc 1 129 12 view .LVU154
	bl	GyroValueToDegrees
.LVL57:
	.loc 1 130 1 view .LVU155
	pop	{r3, pc}
.L50:
	.align	2
.L49:
	.word	.LANCHOR0
.LFE281:
	.size	fIMU_readFloatGyroY, .-fIMU_readFloatGyroY
	.section	.text.fIMU_readFloatGyroZ,"ax",%progbits
	.align	1
	.global	fIMU_readFloatGyroZ
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	fIMU_readFloatGyroZ, %function
fIMU_readFloatGyroZ:
.LFB282:
	.loc 1 131 32 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI18:
	.loc 1 132 5 view .LVU157
	.loc 1 133 5 view .LVU158
	.loc 1 133 30 is_stmt 0 view .LVU159
	ldr	r2, .L53
	ldrb	r3, [r2, #12]	@ zero_extendqisi2
	.loc 1 133 34 view .LVU160
	lsls	r3, r3, #8
	.loc 1 133 39 view .LVU161
	sxth	r3, r3
	.loc 1 133 49 view .LVU162
	ldrb	r0, [r2, #13]	@ zero_extendqisi2
.LVL58:
	.loc 1 134 5 is_stmt 1 view .LVU163
	.loc 1 134 12 is_stmt 0 view .LVU164
	orrs	r0, r0, r3
.LVL59:
	.loc 1 134 12 view .LVU165
	bl	GyroValueToDegrees
.LVL60:
	.loc 1 135 1 view .LVU166
	pop	{r3, pc}
.L54:
	.align	2
.L53:
	.word	.LANCHOR0
.LFE282:
	.size	fIMU_readFloatGyroZ, .-fIMU_readFloatGyroZ
	.section	.text.IMU_getGyro,"ax",%progbits
	.align	1
	.global	IMU_getGyro
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	IMU_getGyro, %function
IMU_getGyro:
.LFB283:
	.loc 1 137 32 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI19:
	sub	sp, sp, #44
.LCFI20:
	.loc 1 138 3 view .LVU168
	.loc 1 139 3 view .LVU169
	.loc 1 139 12 is_stmt 0 view .LVU170
	bl	fIMU_readFloatGyroX
.LVL61:
	.loc 1 139 10 view .LVU171
	vstr.32	s0, [sp, #16]
	.loc 1 140 3 is_stmt 1 view .LVU172
	.loc 1 140 12 is_stmt 0 view .LVU173
	bl	fIMU_readFloatGyroY
.LVL62:
	.loc 1 140 10 view .LVU174
	vstr.32	s0, [sp, #20]
	.loc 1 141 3 is_stmt 1 view .LVU175
	.loc 1 141 12 is_stmt 0 view .LVU176
	bl	fIMU_readFloatGyroZ
.LVL63:
	.loc 1 141 10 view .LVU177
	vstr.32	s0, [sp, #24]
	.loc 1 142 3 is_stmt 1 view .LVU178
	.loc 1 142 10 is_stmt 0 view .LVU179
	add	r3, sp, #16
	ldm	r3, {r0, r1, r2}
	add	r3, sp, #40
	stmdb	r3, {r0, r1, r2}
	.loc 1 143 1 view .LVU180
	vldr.32	s0, [sp, #28]
	vldr.32	s1, [sp, #32]
	vldr.32	s2, [sp, #36]
	add	sp, sp, #44
.LCFI21:
	@ sp needed
	ldr	pc, [sp], #4
.LFE283:
	.size	IMU_getGyro, .-IMU_getGyro
	.section	.text.IMU_getAccel,"ax",%progbits
	.align	1
	.global	IMU_getAccel
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	IMU_getAccel, %function
IMU_getAccel:
.LFB284:
	.loc 1 145 33 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI22:
	sub	sp, sp, #44
.LCFI23:
	.loc 1 146 5 view .LVU182
	.loc 1 147 5 view .LVU183
	.loc 1 147 15 is_stmt 0 view .LVU184
	bl	fIMU_readFloatAccelX
.LVL64:
	.loc 1 147 13 view .LVU185
	vstr.32	s0, [sp, #16]
	.loc 1 148 5 is_stmt 1 view .LVU186
	.loc 1 148 15 is_stmt 0 view .LVU187
	bl	fIMU_readFloatAccelY
.LVL65:
	.loc 1 148 13 view .LVU188
	vstr.32	s0, [sp, #20]
	.loc 1 149 5 is_stmt 1 view .LVU189
	.loc 1 149 15 is_stmt 0 view .LVU190
	bl	fIMU_readFloatAccelZ
.LVL66:
	.loc 1 149 13 view .LVU191
	vstr.32	s0, [sp, #24]
	.loc 1 150 5 is_stmt 1 view .LVU192
	.loc 1 150 12 is_stmt 0 view .LVU193
	add	r3, sp, #16
	ldm	r3, {r0, r1, r2}
	add	r3, sp, #40
	stmdb	r3, {r0, r1, r2}
	.loc 1 151 1 view .LVU194
	vldr.32	s0, [sp, #28]
	vldr.32	s1, [sp, #32]
	vldr.32	s2, [sp, #36]
	add	sp, sp, #44
.LCFI24:
	@ sp needed
	ldr	pc, [sp], #4
.LFE284:
	.size	IMU_getAccel, .-IMU_getAccel
	.section	.bss.IMU_COPY,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	IMU_COPY, %object
	.size	IMU_COPY, 14
IMU_COPY:
	.space	14
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
	.4byte	.LFB266
	.4byte	.LFE266-.LFB266
	.byte	0x4
	.4byte	.LCFI0-.LFB266
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
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.byte	0x4
	.4byte	.LCFI3-.LFB267
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
	.4byte	.LFB268
	.4byte	.LFE268-.LFB268
	.byte	0x4
	.4byte	.LCFI4-.LFB268
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB269
	.4byte	.LFE269-.LFB269
	.byte	0x4
	.4byte	.LCFI7-.LFB269
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
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB270
	.4byte	.LFE270-.LFB270
	.byte	0x4
	.4byte	.LCFI8-.LFB270
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
	.4byte	.LFB271
	.4byte	.LFE271-.LFB271
	.byte	0x4
	.4byte	.LCFI9-.LFB271
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB272
	.4byte	.LFE272-.LFB272
	.byte	0x4
	.4byte	.LCFI10-.LFB272
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB273
	.4byte	.LFE273-.LFB273
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB274
	.4byte	.LFE274-.LFB274
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB275
	.4byte	.LFE275-.LFB275
	.byte	0x4
	.4byte	.LCFI11-.LFB275
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
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
	.4byte	.LCFI12-.LFB276
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.byte	0x4
	.4byte	.LCFI13-.LFB277
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.byte	0x4
	.4byte	.LCFI14-.LFB278
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.byte	0x4
	.4byte	.LCFI15-.LFB279
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.byte	0x4
	.4byte	.LCFI16-.LFB280
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB281
	.4byte	.LFE281-.LFB281
	.byte	0x4
	.4byte	.LCFI17-.LFB281
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB282
	.4byte	.LFE282-.LFB282
	.byte	0x4
	.4byte	.LCFI18-.LFB282
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB283
	.4byte	.LFE283-.LFB283
	.byte	0x4
	.4byte	.LCFI19-.LFB283
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB284
	.4byte	.LFE284-.LFB284
	.byte	0x4
	.4byte	.LCFI22-.LFB284
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE36:
	.text
.Letext0:
	.file 2 "../../../../../../modules/nrfx/hal/nrf_twi.h"
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
	.uleb128 0x2
	.byte	0x7
	.byte	0x4
	.4byte	0x47
	.byte	0x2
	.byte	0x84
	.byte	0x1
	.4byte	0x47
	.uleb128 0x3
	.4byte	.LASF0
	.4byte	0x1980000
	.uleb128 0x3
	.4byte	.LASF1
	.4byte	0x4000000
	.uleb128 0x3
	.4byte	.LASF2
	.4byte	0x6680000
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.byte	0
	.file 3 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
	.file 4 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
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
	.byte	0x3
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x3
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x3
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	0x4b
	.uleb128 0x7
	.4byte	0x5b
	.uleb128 0x8
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0x9
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0xa
	.4byte	.LASF6
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.byte	0
	.file 5 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0xb
	.4byte	.LASF11
	.byte	0x8
	.byte	0x5
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0xc
	.4byte	.LASF7
	.byte	0x5
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0xc
	.4byte	.LASF8
	.byte	0x5
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF9
	.byte	0x5
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x61
	.uleb128 0xf
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x10
	.4byte	0x76
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x12
	.4byte	0x82
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
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
	.uleb128 0x13
	.4byte	.LASF12
	.byte	0x14
	.byte	0x5
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF13
	.byte	0x5
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x9
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x55
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x12
	.4byte	0x5a
	.uleb128 0x14
	.4byte	.LASF14
	.byte	0x5
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
	.byte	0x5
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x60
	.uleb128 0xe
	.byte	0x4
	.4byte	0x65
	.uleb128 0xe
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x12
	.4byte	0x6f
	.uleb128 0x12
	.4byte	0x76
	.uleb128 0x12
	.4byte	0x86
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x14
	.4byte	.LASF18
	.byte	0x5
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
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x5
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
	.byte	0x5
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF23
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF24
	.byte	0x5
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF25
	.byte	0x5
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x5
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0xb3
	.uleb128 0xe
	.byte	0x4
	.4byte	0xc7
	.uleb128 0xe
	.byte	0x4
	.4byte	0xd6
	.uleb128 0xe
	.byte	0x4
	.4byte	0xea
	.uleb128 0xe
	.byte	0x4
	.4byte	0xf9
	.uleb128 0xe
	.byte	0x4
	.4byte	0x112
	.uleb128 0xf
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0x10
	.4byte	0x130
	.uleb128 0x10
	.4byte	0x130
	.byte	0
	.uleb128 0xf
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0x10
	.4byte	0x130
	.byte	0
	.uleb128 0xf
	.4byte	0x130
	.4byte	0xea
	.uleb128 0x10
	.4byte	0x137
	.uleb128 0x10
	.4byte	0x130
	.byte	0
	.uleb128 0xf
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0x10
	.4byte	0x137
	.byte	0
	.uleb128 0xf
	.4byte	0x130
	.4byte	0x112
	.uleb128 0x10
	.4byte	0x13e
	.uleb128 0x10
	.4byte	0x144
	.uleb128 0x10
	.4byte	0x14b
	.byte	0
	.uleb128 0xf
	.4byte	0x130
	.4byte	0x130
	.uleb128 0x10
	.4byte	0x155
	.uleb128 0x10
	.4byte	0x15b
	.uleb128 0x10
	.4byte	0x144
	.uleb128 0x10
	.4byte	0x14b
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF28
	.uleb128 0xe
	.byte	0x4
	.4byte	0x161
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x15
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0xe
	.byte	0x4
	.4byte	0x144
	.uleb128 0xe
	.byte	0x4
	.4byte	0x168
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x12
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
	.byte	0x5
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x5
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x5
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x5
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF32
	.byte	0x5
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF33
	.byte	0x5
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF34
	.byte	0x5
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF35
	.byte	0x5
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF36
	.byte	0x5
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x5
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x5
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF39
	.byte	0x5
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x5
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x5
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x5
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x6
	.4byte	.LASF43
	.byte	0x5
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x5
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x5
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x5
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x5
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x5
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x5
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x5
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x5
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF52
	.byte	0x5
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x5
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x5
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x5
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x5
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x5
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x5
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x5
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x5
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x12
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
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x8
	.byte	0x5
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x5
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x5
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF28
	.byte	0
	.file 6 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\MPU6050.h"
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
	.uleb128 0x5
	.byte	0xc
	.byte	0x6
	.byte	0xd
	.byte	0x9
	.4byte	0x48
	.uleb128 0x16
	.ascii	"x\000"
	.byte	0x6
	.byte	0xe
	.byte	0x8
	.4byte	0x48
	.byte	0
	.uleb128 0x16
	.ascii	"y\000"
	.byte	0x6
	.byte	0xf
	.byte	0x8
	.4byte	0x48
	.byte	0x4
	.uleb128 0x16
	.ascii	"z\000"
	.byte	0x6
	.byte	0x10
	.byte	0x8
	.4byte	0x48
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF64
	.byte	0
	.file 7 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 8 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 9 "../../../../../../components/libraries/util/app_util.h"
	.file 10 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 11 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\i2c.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x98e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF143
	.byte	0xc
	.4byte	.LASF144
	.4byte	.LASF145
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF65
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x41
	.uleb128 0x7
	.4byte	0x30
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF67
	.uleb128 0x12
	.4byte	0x41
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x4
	.byte	0x35
	.byte	0x16
	.4byte	0x59
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF69
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF70
	.uleb128 0xa
	.4byte	.LASF71
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x78
	.uleb128 0x7
	.4byte	0x67
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xa
	.4byte	.LASF6
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x8b
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF72
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF73
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF64
	.uleb128 0x12
	.4byte	0xa0
	.uleb128 0x14
	.4byte	.LASF74
	.byte	0x6
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF28
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x12
	.4byte	0xc3
	.uleb128 0x14
	.4byte	.LASF19
	.byte	0x5
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
	.uleb128 0x12
	.4byte	0xcf
	.uleb128 0x14
	.4byte	.LASF14
	.byte	0x5
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
	.uleb128 0x12
	.4byte	0xe4
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x5
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
	.uleb128 0x19
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xf4
	.uleb128 0x19
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x110
	.byte	0x25
	.4byte	0xdf
	.uleb128 0x19
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x111
	.byte	0x25
	.4byte	0xdf
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x141
	.uleb128 0x9
	.4byte	0x8b
	.byte	0x7f
	.byte	0
	.uleb128 0x12
	.4byte	0x131
	.uleb128 0x19
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x113
	.byte	0x1c
	.4byte	0x141
	.uleb128 0x8
	.4byte	0xca
	.4byte	0x15e
	.uleb128 0x1a
	.byte	0
	.uleb128 0x12
	.4byte	0x153
	.uleb128 0x19
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x115
	.byte	0x13
	.4byte	0x15e
	.uleb128 0x19
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x116
	.byte	0x13
	.4byte	0x15e
	.uleb128 0x19
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x117
	.byte	0x13
	.4byte	0x15e
	.uleb128 0x19
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x118
	.byte	0x13
	.4byte	0x15e
	.uleb128 0x19
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x11a
	.byte	0x13
	.4byte	0x15e
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x11b
	.byte	0x13
	.4byte	0x15e
	.uleb128 0x19
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x11c
	.byte	0x13
	.4byte	0x15e
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x11d
	.byte	0x13
	.4byte	0x15e
	.uleb128 0x19
	.4byte	.LASF88
	.byte	0x5
	.2byte	0x11e
	.byte	0x13
	.4byte	0x15e
	.uleb128 0x19
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x11f
	.byte	0x13
	.4byte	0x15e
	.uleb128 0xf
	.4byte	0x78
	.4byte	0x1f4
	.uleb128 0x10
	.4byte	0x1f4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1ff
	.uleb128 0x1b
	.4byte	.LASF103
	.uleb128 0x12
	.4byte	0x1fa
	.uleb128 0x19
	.4byte	.LASF90
	.byte	0x5
	.2byte	0x135
	.byte	0xe
	.4byte	0x211
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1e5
	.uleb128 0xf
	.4byte	0x78
	.4byte	0x226
	.uleb128 0x10
	.4byte	0x226
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1fa
	.uleb128 0x19
	.4byte	.LASF91
	.byte	0x5
	.2byte	0x136
	.byte	0xe
	.4byte	0x239
	.uleb128 0xe
	.byte	0x4
	.4byte	0x217
	.uleb128 0x1c
	.4byte	.LASF92
	.byte	0x5
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
	.uleb128 0x19
	.4byte	.LASF93
	.byte	0x5
	.2byte	0x157
	.byte	0x1f
	.4byte	0x25d
	.uleb128 0xe
	.byte	0x4
	.4byte	0x23f
	.uleb128 0x19
	.4byte	.LASF94
	.byte	0x7
	.2byte	0x744
	.byte	0x19
	.4byte	0x73
	.uleb128 0x1d
	.4byte	.LASF95
	.byte	0x8
	.byte	0x21
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x1d
	.4byte	.LASF96
	.byte	0x9
	.byte	0x53
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x1d
	.4byte	.LASF97
	.byte	0x9
	.byte	0x54
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x1d
	.4byte	.LASF98
	.byte	0x9
	.byte	0x72
	.byte	0x13
	.4byte	0x2a0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x1d
	.4byte	.LASF99
	.byte	0x9
	.byte	0x73
	.byte	0x11
	.4byte	0x7f
	.uleb128 0xe
	.byte	0x4
	.4byte	0x30
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x3
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
	.uleb128 0x1d
	.4byte	.LASF101
	.byte	0x3
	.byte	0x75
	.byte	0x19
	.4byte	0x2b8
	.uleb128 0xd
	.4byte	.LASF102
	.byte	0xa
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2e1
	.uleb128 0x1b
	.4byte	.LASF104
	.uleb128 0x19
	.4byte	.LASF105
	.byte	0xa
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2f3
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2d4
	.uleb128 0x19
	.4byte	.LASF106
	.byte	0xa
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2f3
	.uleb128 0x19
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2f3
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF108
	.uleb128 0x8
	.4byte	0x3c
	.4byte	0x32a
	.uleb128 0x9
	.4byte	0x8b
	.byte	0xd
	.byte	0
	.uleb128 0x7
	.4byte	0x31a
	.uleb128 0x1e
	.4byte	.LASF109
	.byte	0x1
	.byte	0x10
	.byte	0x19
	.4byte	0x32a
	.uleb128 0x5
	.byte	0x3
	.4byte	IMU_COPY
	.uleb128 0x1f
	.4byte	.LASF111
	.byte	0x1
	.byte	0x91
	.byte	0xf
	.4byte	0xac
	.4byte	.LFB284
	.4byte	.LFE284-.LFB284
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x386
	.uleb128 0x1e
	.4byte	.LASF110
	.byte	0x1
	.byte	0x92
	.byte	0x13
	.4byte	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.4byte	.LVL64
	.4byte	0x4e3
	.uleb128 0x20
	.4byte	.LVL65
	.4byte	0x4ab
	.uleb128 0x20
	.4byte	.LVL66
	.4byte	0x473
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF112
	.byte	0x1
	.byte	0x89
	.byte	0xf
	.4byte	0xac
	.4byte	.LFB283
	.4byte	.LFE283-.LFB283
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3cb
	.uleb128 0x1e
	.4byte	.LASF113
	.byte	0x1
	.byte	0x8a
	.byte	0x11
	.4byte	0xac
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x20
	.4byte	.LVL61
	.4byte	0x43b
	.uleb128 0x20
	.4byte	.LVL62
	.4byte	0x403
	.uleb128 0x20
	.4byte	.LVL63
	.4byte	0x3cb
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF114
	.byte	0x1
	.byte	0x83
	.byte	0x7
	.4byte	0xa0
	.4byte	.LFB282
	.4byte	.LFE282-.LFB282
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x403
	.uleb128 0x21
	.4byte	.LASF115
	.byte	0x1
	.byte	0x84
	.byte	0xd
	.4byte	0x4d
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x20
	.4byte	.LVL60
	.4byte	0x5b9
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF116
	.byte	0x1
	.byte	0x7e
	.byte	0x7
	.4byte	0xa0
	.4byte	.LFB281
	.4byte	.LFE281-.LFB281
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x43b
	.uleb128 0x21
	.4byte	.LASF115
	.byte	0x1
	.byte	0x7f
	.byte	0xd
	.4byte	0x4d
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x20
	.4byte	.LVL57
	.4byte	0x5b9
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF117
	.byte	0x1
	.byte	0x79
	.byte	0x7
	.4byte	0xa0
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x473
	.uleb128 0x21
	.4byte	.LASF115
	.byte	0x1
	.byte	0x7a
	.byte	0xd
	.4byte	0x4d
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x20
	.4byte	.LVL54
	.4byte	0x5b9
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF118
	.byte	0x1
	.byte	0x73
	.byte	0x7
	.4byte	0xa0
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ab
	.uleb128 0x21
	.4byte	.LASF115
	.byte	0x1
	.byte	0x74
	.byte	0xd
	.4byte	0x4d
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x20
	.4byte	.LVL51
	.4byte	0x57f
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF119
	.byte	0x1
	.byte	0x6e
	.byte	0x7
	.4byte	0xa0
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e3
	.uleb128 0x21
	.4byte	.LASF115
	.byte	0x1
	.byte	0x6f
	.byte	0xd
	.4byte	0x4d
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x20
	.4byte	.LVL48
	.4byte	0x57f
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF120
	.byte	0x1
	.byte	0x69
	.byte	0x7
	.4byte	0xa0
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51b
	.uleb128 0x21
	.4byte	.LASF115
	.byte	0x1
	.byte	0x6a
	.byte	0xd
	.4byte	0x4d
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x20
	.4byte	.LVL45
	.4byte	0x57f
	.byte	0
	.uleb128 0x22
	.4byte	.LASF121
	.byte	0x1
	.byte	0x63
	.byte	0x5
	.4byte	0x78
	.4byte	.LFB276
	.4byte	.LFE276-.LFB276
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54a
	.uleb128 0x21
	.4byte	.LASF122
	.byte	0x1
	.byte	0x64
	.byte	0xf
	.4byte	0x4d
	.4byte	.LLST17
	.4byte	.LVUS17
	.byte	0
	.uleb128 0x23
	.4byte	.LASF128
	.byte	0x1
	.byte	0x5f
	.byte	0x6
	.4byte	.LFB275
	.4byte	.LFE275-.LFB275
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x57f
	.uleb128 0x24
	.4byte	.LVL38
	.4byte	0x8b6
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x3e
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF123
	.byte	0x1
	.byte	0x58
	.byte	0x7
	.4byte	0xa0
	.4byte	.LFB274
	.4byte	.LFE274-.LFB274
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b9
	.uleb128 0x26
	.4byte	.LASF126
	.byte	0x1
	.byte	0x58
	.byte	0x1b
	.4byte	0x4d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x27
	.4byte	.LASF124
	.byte	0x1
	.byte	0x59
	.byte	0x13
	.4byte	0xa7
	.byte	0x4
	.4byte	0x3a200140
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF125
	.byte	0x1
	.byte	0x53
	.byte	0x7
	.4byte	0xa0
	.4byte	.LFB273
	.4byte	.LFE273-.LFB273
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5f3
	.uleb128 0x26
	.4byte	.LASF126
	.byte	0x1
	.byte	0x53
	.byte	0x22
	.4byte	0x4d
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x27
	.4byte	.LASF124
	.byte	0x1
	.byte	0x54
	.byte	0x13
	.4byte	0xa7
	.byte	0x4
	.4byte	0x3bfa01f4
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0x1
	.byte	0x4d
	.byte	0x5
	.4byte	0x78
	.4byte	.LFB272
	.4byte	.LFE272-.LFB272
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x632
	.uleb128 0x21
	.4byte	.LASF16
	.byte	0x1
	.byte	0x4e
	.byte	0xe
	.4byte	0x30
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x24
	.4byte	.LVL32
	.4byte	0x920
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF129
	.byte	0x1
	.byte	0x3a
	.byte	0x6
	.4byte	.LFB271
	.4byte	.LFE271-.LFB271
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x722
	.uleb128 0x28
	.4byte	.LVL25
	.4byte	0x722
	.4byte	0x66b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.4byte	.LVL26
	.4byte	0x722
	.4byte	0x68d
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL27
	.4byte	0x722
	.4byte	0x6af
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL28
	.4byte	0x7d3
	.4byte	0x6cd
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x38
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x28
	.4byte	.LVL29
	.4byte	0x7d3
	.4byte	0x6eb
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x36
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x28
	.4byte	.LVL30
	.4byte	0x85c
	.4byte	0x703
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x49
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x48
	.byte	0
	.uleb128 0x24
	.4byte	.LVL31
	.4byte	0x722
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4a
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF130
	.byte	0x1
	.byte	0x27
	.byte	0x6
	.4byte	.LFB270
	.4byte	.LFE270-.LFB270
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d3
	.uleb128 0x29
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x27
	.byte	0x1d
	.4byte	0x30
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2a
	.4byte	.LASF131
	.byte	0x1
	.byte	0x27
	.byte	0x2a
	.4byte	0x30
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x2a
	.4byte	.LASF132
	.byte	0x1
	.byte	0x27
	.byte	0x3c
	.4byte	0x30
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x2a
	.4byte	.LASF16
	.byte	0x1
	.byte	0x27
	.byte	0x4c
	.4byte	0x30
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x2b
	.ascii	"b\000"
	.byte	0x1
	.byte	0x2f
	.byte	0xd
	.4byte	0x30
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x21
	.4byte	.LASF133
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.4byte	0x30
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x28
	.4byte	.LVL18
	.4byte	0x920
	.4byte	0x7c2
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL24
	.4byte	0x85c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF134
	.byte	0x1
	.byte	0x20
	.byte	0x6
	.4byte	.LFB269
	.4byte	.LFE269-.LFB269
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x85c
	.uleb128 0x29
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x20
	.byte	0x1c
	.4byte	0x30
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x29
	.ascii	"bit\000"
	.byte	0x1
	.byte	0x20
	.byte	0x29
	.4byte	0x30
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2a
	.4byte	.LASF16
	.byte	0x1
	.byte	0x20
	.byte	0x36
	.4byte	0x30
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2b
	.ascii	"b\000"
	.byte	0x1
	.byte	0x21
	.byte	0xe
	.4byte	0x30
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x28
	.4byte	.LVL13
	.4byte	0x920
	.4byte	0x84b
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x24
	.4byte	.LVL15
	.4byte	0x85c
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF135
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB268
	.4byte	.LFE268-.LFB268
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8b6
	.uleb128 0x29
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x1c
	.byte	0x18
	.4byte	0x30
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2a
	.4byte	.LASF136
	.byte	0x1
	.byte	0x1c
	.byte	0x25
	.4byte	0x30
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x24
	.4byte	.LVL11
	.4byte	0x979
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x68
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x23
	.4byte	.LASF137
	.byte	0x1
	.byte	0x18
	.byte	0x6
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x920
	.uleb128 0x29
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x18
	.byte	0x1d
	.4byte	0x30
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2a
	.4byte	.LASF138
	.byte	0x1
	.byte	0x18
	.byte	0x2b
	.4byte	0x2b2
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2a
	.4byte	.LASF139
	.byte	0x1
	.byte	0x18
	.byte	0x3c
	.4byte	0x30
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x24
	.4byte	.LVL7
	.4byte	0x985
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x68
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF140
	.byte	0x1
	.byte	0x12
	.byte	0x9
	.4byte	0x30
	.4byte	.LFB266
	.4byte	.LFE266-.LFB266
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x979
	.uleb128 0x29
	.ascii	"reg\000"
	.byte	0x1
	.byte	0x12
	.byte	0x1f
	.4byte	0x30
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2c
	.ascii	"ret\000"
	.byte	0x1
	.byte	0x13
	.byte	0xd
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x24
	.4byte	.LVL2
	.4byte	0x985
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x68
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x25
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LASF141
	.4byte	.LASF141
	.byte	0xb
	.byte	0x6
	.byte	0x6
	.uleb128 0x2d
	.4byte	.LASF142
	.4byte	.LASF142
	.byte	0xb
	.byte	0x5
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0x6
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x23
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
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0xa
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
	.uleb128 0x2a
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
.LVUS23:
	.uleb128 .LVU163
	.uleb128 .LVU165
	.uleb128 .LVU165
	.uleb128 .LVU166
.LLST23:
	.4byte	.LVL58
	.4byte	.LVL59
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL59
	.4byte	.LVL60-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 .LVU152
	.uleb128 .LVU154
	.uleb128 .LVU154
	.uleb128 .LVU155
.LLST22:
	.4byte	.LVL55
	.4byte	.LVL56
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS21:
	.uleb128 .LVU141
	.uleb128 .LVU143
	.uleb128 .LVU143
	.uleb128 .LVU144
.LLST21:
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL53
	.4byte	.LVL54-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 .LVU130
	.uleb128 .LVU132
	.uleb128 .LVU132
	.uleb128 .LVU133
.LLST20:
	.4byte	.LVL49
	.4byte	.LVL50
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL50
	.4byte	.LVL51-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU119
	.uleb128 .LVU121
	.uleb128 .LVU121
	.uleb128 .LVU122
.LLST19:
	.4byte	.LVL46
	.4byte	.LVL47
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL47
	.4byte	.LVL48-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 .LVU108
	.uleb128 .LVU110
	.uleb128 .LVU110
	.uleb128 .LVU111
.LLST18:
	.4byte	.LVL43
	.4byte	.LVL44
	.2byte	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU95
	.uleb128 .LVU98
.LLST17:
	.4byte	.LVL39
	.4byte	.LVL40-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 .LVU69
	.uleb128 .LVU71
.LLST16:
	.4byte	.LVL32
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 0
.LLST10:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL18-1
	.4byte	.LFE270
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 0
.LLST11:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL18-1
	.4byte	.LFE270
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 0
.LLST12:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18-1
	.4byte	.LFE270
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST13:
	.4byte	.LVL17
	.4byte	.LVL18-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL18-1
	.4byte	.LVL20
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	.LVL20
	.4byte	.LFE270
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU40
	.uleb128 .LVU52
	.uleb128 .LVU52
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU54
	.uleb128 .LVU54
	.uleb128 .LVU55
.LLST14:
	.4byte	.LVL18
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL22
	.4byte	.LVL23
	.2byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL23
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x51
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU46
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 0
.LLST15:
	.4byte	.LVL19
	.4byte	.LVL24-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL24-1
	.4byte	.LFE270
	.2byte	0xb
	.byte	0x75
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x24
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST6:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13-1
	.4byte	.LFE269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST7:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13-1
	.4byte	.LFE269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU25
	.uleb128 .LVU25
	.uleb128 0
.LLST8:
	.4byte	.LVL12
	.4byte	.LVL13-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13-1
	.4byte	.LFE269
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU25
	.uleb128 .LVU30
	.uleb128 .LVU30
	.uleb128 .LVU31
	.uleb128 .LVU32
	.uleb128 0
.LLST9:
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL14
	.4byte	.LVL15-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL16
	.4byte	.LFE269
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 0
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 0
.LLST4:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10
	.4byte	.LFE268
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU17
	.uleb128 .LVU17
	.uleb128 .LVU19
.LLST5:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL9
	.4byte	.LVL11-1
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU12
	.uleb128 .LVU12
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LFE267
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU13
	.uleb128 .LVU13
	.uleb128 0
.LLST2:
	.4byte	.LVL3
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL7-1
	.4byte	.LFE267
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU10
	.uleb128 .LVU10
	.uleb128 0
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL4
	.4byte	.LFE267
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
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
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE266
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x1d7
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x992
	.4byte	0x2b
	.ascii	"NRF_TWI_FREQ_100K\000"
	.4byte	0x34
	.ascii	"NRF_TWI_FREQ_250K\000"
	.4byte	0x3d
	.ascii	"NRF_TWI_FREQ_400K\000"
	.4byte	0x32f
	.ascii	"IMU_COPY\000"
	.4byte	0x32f
	.ascii	"IMU_COPY\000"
	.4byte	0x341
	.ascii	"IMU_getAccel\000"
	.4byte	0x386
	.ascii	"IMU_getGyro\000"
	.4byte	0x3cb
	.ascii	"fIMU_readFloatGyroZ\000"
	.4byte	0x403
	.ascii	"fIMU_readFloatGyroY\000"
	.4byte	0x43b
	.ascii	"fIMU_readFloatGyroX\000"
	.4byte	0x473
	.ascii	"fIMU_readFloatAccelZ\000"
	.4byte	0x4ab
	.ascii	"fIMU_readFloatAccelY\000"
	.4byte	0x4e3
	.ascii	"fIMU_readFloatAccelX\000"
	.4byte	0x51b
	.ascii	"IMU_getTemp\000"
	.4byte	0x54a
	.ascii	"IMU_read\000"
	.4byte	0x57f
	.ascii	"AccValueToG\000"
	.4byte	0x5b9
	.ascii	"GyroValueToDegrees\000"
	.4byte	0x5f3
	.ascii	"IMU_newData\000"
	.4byte	0x632
	.ascii	"IMU_init\000"
	.4byte	0x722
	.ascii	"MPU_write_bits\000"
	.4byte	0x7d3
	.ascii	"MPU_write_bit\000"
	.4byte	0x85c
	.ascii	"MPU_write\000"
	.4byte	0x8b6
	.ascii	"MPU_read_burst\000"
	.4byte	0x920
	.ascii	"MPU_read_8bit\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x1a7
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x992
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
	.4byte	0x60
	.ascii	"short unsigned int\000"
	.4byte	0x78
	.ascii	"int\000"
	.4byte	0x67
	.ascii	"int32_t\000"
	.4byte	0x8b
	.ascii	"unsigned int\000"
	.4byte	0x7f
	.ascii	"uint32_t\000"
	.4byte	0x92
	.ascii	"long long int\000"
	.4byte	0x99
	.ascii	"long long unsigned int\000"
	.4byte	0xa0
	.ascii	"float\000"
	.4byte	0xac
	.ascii	"IMU_reading_t\000"
	.4byte	0xbc
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xc3
	.ascii	"char\000"
	.4byte	0xcf
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xe4
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x23f
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x2b8
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2d4
	.ascii	"FILE\000"
	.4byte	0x313
	.ascii	"_Bool\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0xac
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB266
	.4byte	.LFE266-.LFB266
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
	.4byte	.LFB281
	.4byte	.LFE281-.LFB281
	.4byte	.LFB282
	.4byte	.LFE282-.LFB282
	.4byte	.LFB283
	.4byte	.LFE283-.LFB283
	.4byte	.LFB284
	.4byte	.LFE284-.LFB284
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB266
	.4byte	.LFE266
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
	.4byte	.LFB281
	.4byte	.LFE281
	.4byte	.LFB282
	.4byte	.LFE282
	.4byte	.LFB283
	.4byte	.LFE283
	.4byte	.LFB284
	.4byte	.LFE284
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
	.uleb128 0x6
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x9
	.uleb128 0xb
	.file 12 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0xc
	.file 13 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0xd
	.file 14 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0xe
	.file 15 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0xf
	.file 16 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x10
	.byte	0x4
	.byte	0x4
	.file 17 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x11
	.file 18 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x12
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.file 19 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x13
	.byte	0x4
	.file 20 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x14
	.file 21 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x15
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x7
	.file 22 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x16
	.file 23 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.file 24 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x18
	.byte	0x4
	.file 25 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.file 26 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x1a
	.byte	0x4
	.file 27 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x1b
	.byte	0x4
	.file 28 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x1c
	.byte	0x4
	.file 29 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x1d
	.byte	0x4
	.byte	0x4
	.file 30 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x1e
	.file 31 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 32 "../../../../../../integration/nrfx/nrfx_glue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x20
	.file 33 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x21
	.byte	0x4
	.file 34 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x22
	.file 35 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.file 36 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x24
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x9
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x1d
	.byte	0x4
	.file 37 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x25
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb6
	.uleb128 0x25
	.byte	0x4
	.file 38 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0xb7
	.uleb128 0x26
	.file 39 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x27
	.file 40 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x28
	.byte	0x4
	.file 41 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x29
	.byte	0x4
	.file 42 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x2a
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x3
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x24
	.byte	0x4
	.file 43 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x2b
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xa
	.byte	0x4
	.file 44 "../../../../../../components/libraries/util/sdk_errors.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x2c
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x29
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
	.uleb128 0x2c
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
	.file 50 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x32
	.file 51 "../../../../../../modules/nrfx/hal/nrf_twim.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x33
	.byte	0x4
	.byte	0x4
	.file 52 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x34
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 53 "../../../../../../components/libraries/queue/nrf_queue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x35
	.file 54 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x36
	.byte	0x4
	.file 55 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x37
	.file 56 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x38
	.byte	0x4
	.file 57 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x39
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF33:
	.ascii	"currency_symbol\000"
.LASF136:
	.ascii	"value\000"
.LASF131:
	.ascii	"bitStart\000"
.LASF99:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF86:
	.ascii	"__RAL_data_utf8_space\000"
.LASF60:
	.ascii	"date_time_format\000"
.LASF81:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF77:
	.ascii	"__RAL_codeset_ascii\000"
.LASF113:
	.ascii	"gyro\000"
.LASF9:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF41:
	.ascii	"p_cs_precedes\000"
.LASF88:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF126:
	.ascii	"measure\000"
.LASF73:
	.ascii	"long long unsigned int\000"
.LASF143:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF141:
	.ascii	"i2cSend\000"
.LASF12:
	.ascii	"__locale_s\000"
.LASF91:
	.ascii	"__user_get_time_of_day\000"
.LASF98:
	.ascii	"_vectors\000"
.LASF94:
	.ascii	"ITM_RxBuffer\000"
.LASF110:
	.ascii	"accel\000"
.LASF8:
	.ascii	"next\000"
.LASF32:
	.ascii	"int_curr_symbol\000"
.LASF56:
	.ascii	"abbrev_month_names\000"
.LASF68:
	.ascii	"int16_t\000"
.LASF72:
	.ascii	"long long int\000"
.LASF65:
	.ascii	"signed char\000"
.LASF75:
	.ascii	"__RAL_global_locale\000"
.LASF17:
	.ascii	"codeset\000"
.LASF24:
	.ascii	"__towupper\000"
.LASF28:
	.ascii	"long int\000"
.LASF142:
	.ascii	"i2cRecive\000"
.LASF85:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF105:
	.ascii	"stdin\000"
.LASF43:
	.ascii	"n_cs_precedes\000"
.LASF20:
	.ascii	"__isctype\000"
.LASF4:
	.ascii	"__irq_masks\000"
.LASF54:
	.ascii	"abbrev_day_names\000"
.LASF117:
	.ascii	"fIMU_readFloatGyroX\000"
.LASF116:
	.ascii	"fIMU_readFloatGyroY\000"
.LASF114:
	.ascii	"fIMU_readFloatGyroZ\000"
.LASF63:
	.ascii	"__wchar\000"
.LASF47:
	.ascii	"int_p_cs_precedes\000"
.LASF133:
	.ascii	"mask\000"
.LASF57:
	.ascii	"am_pm_indicator\000"
.LASF36:
	.ascii	"mon_grouping\000"
.LASF23:
	.ascii	"__iswctype\000"
.LASF46:
	.ascii	"n_sign_posn\000"
.LASF115:
	.ascii	"temp\000"
.LASF58:
	.ascii	"date_format\000"
.LASF3:
	.ascii	"unsigned int\000"
.LASF119:
	.ascii	"fIMU_readFloatAccelY\000"
.LASF118:
	.ascii	"fIMU_readFloatAccelZ\000"
.LASF49:
	.ascii	"int_p_sep_by_space\000"
.LASF95:
	.ascii	"SystemCoreClock\000"
.LASF127:
	.ascii	"IMU_newData\000"
.LASF84:
	.ascii	"__RAL_data_utf8_period\000"
.LASF31:
	.ascii	"grouping\000"
.LASF123:
	.ascii	"AccValueToG\000"
.LASF89:
	.ascii	"__RAL_data_empty_string\000"
.LASF30:
	.ascii	"thousands_sep\000"
.LASF13:
	.ascii	"__category\000"
.LASF111:
	.ascii	"IMU_getAccel\000"
.LASF97:
	.ascii	"__StackLimit\000"
.LASF129:
	.ascii	"IMU_init\000"
.LASF100:
	.ascii	"nrf_nvic_state_t\000"
.LASF16:
	.ascii	"data\000"
.LASF38:
	.ascii	"negative_sign\000"
.LASF70:
	.ascii	"short unsigned int\000"
.LASF15:
	.ascii	"name\000"
.LASF145:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF125:
	.ascii	"GyroValueToDegrees\000"
.LASF134:
	.ascii	"MPU_write_bit\000"
.LASF53:
	.ascii	"day_names\000"
.LASF5:
	.ascii	"__cr_flag\000"
.LASF103:
	.ascii	"timeval\000"
.LASF106:
	.ascii	"stdout\000"
.LASF121:
	.ascii	"IMU_getTemp\000"
.LASF14:
	.ascii	"__RAL_locale_t\000"
.LASF138:
	.ascii	"storage\000"
.LASF59:
	.ascii	"time_format\000"
.LASF37:
	.ascii	"positive_sign\000"
.LASF21:
	.ascii	"__toupper\000"
.LASF45:
	.ascii	"p_sign_posn\000"
.LASF139:
	.ascii	"len8bit\000"
.LASF79:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF137:
	.ascii	"MPU_read_burst\000"
.LASF7:
	.ascii	"decode\000"
.LASF2:
	.ascii	"NRF_TWI_FREQ_400K\000"
.LASF27:
	.ascii	"__mbtowc\000"
.LASF101:
	.ascii	"nrf_nvic_state\000"
.LASF76:
	.ascii	"__RAL_c_locale\000"
.LASF22:
	.ascii	"__tolower\000"
.LASF93:
	.ascii	"__RAL_error_decoder_head\000"
.LASF90:
	.ascii	"__user_set_time_of_day\000"
.LASF48:
	.ascii	"int_n_cs_precedes\000"
.LASF64:
	.ascii	"float\000"
.LASF124:
	.ascii	"scaling\000"
.LASF25:
	.ascii	"__towlower\000"
.LASF62:
	.ascii	"__state\000"
.LASF96:
	.ascii	"__StackTop\000"
.LASF108:
	.ascii	"_Bool\000"
.LASF71:
	.ascii	"int32_t\000"
.LASF67:
	.ascii	"unsigned char\000"
.LASF80:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF40:
	.ascii	"frac_digits\000"
.LASF69:
	.ascii	"short int\000"
.LASF74:
	.ascii	"IMU_reading_t\000"
.LASF102:
	.ascii	"FILE\000"
.LASF35:
	.ascii	"mon_thousands_sep\000"
.LASF18:
	.ascii	"__RAL_locale_data_t\000"
.LASF6:
	.ascii	"uint32_t\000"
.LASF51:
	.ascii	"int_p_sign_posn\000"
.LASF132:
	.ascii	"length\000"
.LASF10:
	.ascii	"char\000"
.LASF42:
	.ascii	"p_sep_by_space\000"
.LASF109:
	.ascii	"IMU_COPY\000"
.LASF19:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF120:
	.ascii	"fIMU_readFloatAccelX\000"
.LASF1:
	.ascii	"NRF_TWI_FREQ_250K\000"
.LASF135:
	.ascii	"MPU_write\000"
.LASF144:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\drivers\\MPU6050.c\000"
.LASF107:
	.ascii	"stderr\000"
.LASF0:
	.ascii	"NRF_TWI_FREQ_100K\000"
.LASF82:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF140:
	.ascii	"MPU_read_8bit\000"
.LASF130:
	.ascii	"MPU_write_bits\000"
.LASF11:
	.ascii	"__RAL_error_decoder_s\000"
.LASF92:
	.ascii	"__RAL_error_decoder_t\000"
.LASF61:
	.ascii	"__mbstate_s\000"
.LASF66:
	.ascii	"uint8_t\000"
.LASF52:
	.ascii	"int_n_sign_posn\000"
.LASF78:
	.ascii	"__RAL_codeset_utf8\000"
.LASF39:
	.ascii	"int_frac_digits\000"
.LASF55:
	.ascii	"month_names\000"
.LASF128:
	.ascii	"IMU_read\000"
.LASF50:
	.ascii	"int_n_sep_by_space\000"
.LASF112:
	.ascii	"IMU_getGyro\000"
.LASF44:
	.ascii	"n_sep_by_space\000"
.LASF104:
	.ascii	"__RAL_FILE\000"
.LASF87:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF83:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF34:
	.ascii	"mon_decimal_point\000"
.LASF26:
	.ascii	"__wctomb\000"
.LASF122:
	.ascii	"result\000"
.LASF29:
	.ascii	"decimal_point\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
