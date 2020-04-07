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
	.file	"bma2x2_support.c"
	.text
.Ltext0:
	.section	.text.BMA2x2_delay_msek,"ax",%progbits
	.align	1
	.global	BMA2x2_delay_msek
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	BMA2x2_delay_msek, %function
BMA2x2_delay_msek:
.LVL0:
.LFB277:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2_support.c"
	.loc 1 28 33 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 28 33 is_stmt 0 view .LVU1
	push	{r4, lr}
.LCFI0:
	.loc 1 29 7 is_stmt 1 view .LVU2
.LVL1:
.LBB8:
.LBI8:
	.file 2 "../../../../../../components/libraries/delay/nrf_delay.h"
	.loc 2 64 20 view .LVU3
.LBB9:
	.loc 2 66 5 view .LVU4
	.loc 2 66 8 is_stmt 0 view .LVU5
	mov	r4, r0
	cbz	r0, .L1
.LVL2:
.L3:
	.loc 2 71 5 is_stmt 1 view .LVU6
	.loc 2 72 9 view .LVU7
.LBB10:
.LBI10:
	.file 3 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.loc 3 128 20 view .LVU8
.LBB11:
	.loc 3 130 5 view .LVU9
	.loc 3 152 5 view .LVU10
	.loc 3 160 5 view .LVU11
	.loc 3 162 5 view .LVU12
	.loc 3 163 5 view .LVU13
	.loc 3 164 5 view .LVU14
	mov	r0, #64000
	ldr	r3, .L5
	orr	r3, r3, #1
.LVL3:
	.loc 3 164 5 is_stmt 0 view .LVU15
	blx	r3
.LVL4:
	.loc 3 164 5 view .LVU16
.LBE11:
.LBE10:
	.loc 2 73 13 is_stmt 1 view .LVU17
	.loc 2 73 5 is_stmt 0 view .LVU18
	subs	r4, r4, #1
.LVL5:
	.loc 2 73 5 view .LVU19
	bne	.L3
.L1:
	.loc 2 73 5 view .LVU20
.LBE9:
.LBE8:
	.loc 1 30 1 view .LVU21
	pop	{r4, pc}
.LVL6:
.L6:
	.loc 1 30 1 view .LVU22
	.align	2
.L5:
	.word	.LANCHOR0
.LFE277:
	.size	BMA2x2_delay_msek, .-BMA2x2_delay_msek
	.section	.text.BMA2x2_I2C_bus_write,"ax",%progbits
	.align	1
	.global	BMA2x2_I2C_bus_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	BMA2x2_I2C_bus_write, %function
BMA2x2_I2C_bus_write:
.LVL7:
.LFB278:
	.loc 1 34 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 34 1 is_stmt 0 view .LVU24
	push	{r3, lr}
.LCFI1:
	.loc 1 45 9 is_stmt 1 view .LVU25
	bl	i2cSend
.LVL8:
	.loc 1 46 9 view .LVU26
	.loc 1 76 1 is_stmt 0 view .LVU27
	movs	r0, #0
	pop	{r3, pc}
.LFE278:
	.size	BMA2x2_I2C_bus_write, .-BMA2x2_I2C_bus_write
	.section	.text.BMA2x2_I2C_bus_read,"ax",%progbits
	.align	1
	.global	BMA2x2_I2C_bus_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	BMA2x2_I2C_bus_read, %function
BMA2x2_I2C_bus_read:
.LVL9:
.LFB279:
	.loc 1 79 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 79 1 is_stmt 0 view .LVU29
	push	{r3, lr}
.LCFI2:
	.loc 1 79 3 is_stmt 1 view .LVU30
	bl	i2cRecive
.LVL10:
	.loc 1 80 9 view .LVU31
	.loc 1 112 1 is_stmt 0 view .LVU32
	movs	r0, #0
	pop	{r3, pc}
.LFE279:
	.size	BMA2x2_I2C_bus_read, .-BMA2x2_I2C_bus_read
	.section	.text.I2C_routine,"ax",%progbits
	.align	1
	.global	I2C_routine
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	I2C_routine, %function
I2C_routine:
.LFB280:
	.loc 1 116 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 124 2 view .LVU34
	.loc 1 124 19 is_stmt 0 view .LVU35
	ldr	r3, .L12
	ldr	r2, .L12+4
	str	r2, [r3, #8]
	.loc 1 125 2 is_stmt 1 view .LVU36
	.loc 1 125 18 is_stmt 0 view .LVU37
	ldr	r2, .L12+8
	str	r2, [r3, #12]
	.loc 1 126 2 is_stmt 1 view .LVU38
	.loc 1 126 20 is_stmt 0 view .LVU39
	ldr	r2, .L12+12
	str	r2, [r3, #20]
	.loc 1 127 2 is_stmt 1 view .LVU40
	.loc 1 127 18 is_stmt 0 view .LVU41
	movs	r2, #24
	strb	r2, [r3, #4]
	.loc 1 129 2 is_stmt 1 view .LVU42
	.loc 1 130 1 is_stmt 0 view .LVU43
	movs	r0, #0
	bx	lr
.L13:
	.align	2
.L12:
	.word	.LANCHOR1
	.word	BMA2x2_I2C_bus_write
	.word	BMA2x2_I2C_bus_read
	.word	BMA2x2_delay_msek
.LFE280:
	.size	I2C_routine, .-I2C_routine
	.section	.text.bma2x2_data_readout_template,"ax",%progbits
	.align	1
	.global	bma2x2_data_readout_template
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_data_readout_template, %function
bma2x2_data_readout_template:
.LFB281:
	.loc 1 146 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
.LCFI3:
	sub	sp, sp, #28
.LCFI4:
	.loc 1 148 2 view .LVU45
	.loc 1 148 32 is_stmt 0 view .LVU46
	movs	r5, #0
	strh	r5, [sp, #18]	@ movhi
	.loc 1 151 2 is_stmt 1 view .LVU47
	.loc 1 154 2 view .LVU48
	.loc 1 156 2 view .LVU49
.LVL11:
	.loc 1 158 2 view .LVU50
	.loc 1 158 5 is_stmt 0 view .LVU51
	strb	r5, [sp, #3]
	.loc 1 160 2 is_stmt 1 view .LVU52
.LVL12:
	.loc 1 167 2 view .LVU53
	bl	I2C_routine
.LVL13:
	.loc 1 169 2 view .LVU54
	.loc 1 169 13 is_stmt 0 view .LVU55
	ldr	r0, .L16
	bl	bma2x2_init
.LVL14:
	mov	r4, r0
.LVL15:
	.loc 1 182 2 is_stmt 1 view .LVU56
	.loc 1 182 14 is_stmt 0 view .LVU57
	mov	r0, r5
.LVL16:
	.loc 1 182 14 view .LVU58
	bl	bma2x2_set_power_mode
.LVL17:
	.loc 1 182 11 view .LVU59
	add	r4, r4, r0
.LVL18:
	.loc 1 196 2 is_stmt 1 view .LVU60
	.loc 1 197 2 view .LVU61
	.loc 1 197 14 is_stmt 0 view .LVU62
	movs	r0, #8
	bl	bma2x2_set_bw
.LVL19:
	.loc 1 197 11 view .LVU63
	add	r4, r4, r0
.LVL20:
	.loc 1 200 2 is_stmt 1 view .LVU64
	.loc 1 200 14 is_stmt 0 view .LVU65
	add	r0, sp, #3
	bl	bma2x2_get_bw
.LVL21:
	.loc 1 200 11 view .LVU66
	add	r4, r4, r0
.LVL22:
	.loc 1 208 2 is_stmt 1 view .LVU67
	.loc 1 208 14 is_stmt 0 view .LVU68
	add	r0, sp, #22
	bl	bma2x2_read_accel_x
.LVL23:
	.loc 1 208 11 view .LVU69
	add	r4, r4, r0
.LVL24:
	.loc 1 210 2 is_stmt 1 view .LVU70
	.loc 1 210 14 is_stmt 0 view .LVU71
	add	r0, sp, #20
	bl	bma2x2_read_accel_y
.LVL25:
	.loc 1 210 11 view .LVU72
	add	r4, r4, r0
.LVL26:
	.loc 1 212 2 is_stmt 1 view .LVU73
	.loc 1 212 14 is_stmt 0 view .LVU74
	add	r0, sp, #18
	bl	bma2x2_read_accel_z
.LVL27:
	.loc 1 212 11 view .LVU75
	add	r4, r4, r0
.LVL28:
	.loc 1 216 2 is_stmt 1 view .LVU76
	.loc 1 216 14 is_stmt 0 view .LVU77
	add	r0, sp, #12
	bl	bma2x2_read_accel_xyz
.LVL29:
	.loc 1 216 11 view .LVU78
	add	r4, r4, r0
.LVL30:
	.loc 1 220 2 is_stmt 1 view .LVU79
	.loc 1 220 14 is_stmt 0 view .LVU80
	add	r0, sp, #4
	bl	bma2x2_read_accel_xyzt
.LVL31:
	.loc 1 220 11 view .LVU81
	add	r4, r4, r0
.LVL32:
	.loc 1 237 2 is_stmt 1 view .LVU82
	.loc 1 237 14 is_stmt 0 view .LVU83
	movs	r0, #3
	bl	bma2x2_set_power_mode
.LVL33:
	.loc 1 241 1 is_stmt 1 view .LVU84
	.loc 1 242 1 is_stmt 0 view .LVU85
	add	r0, r0, r4
.LVL34:
	.loc 1 242 1 view .LVU86
	add	sp, sp, #28
.LCFI5:
	@ sp needed
	pop	{r4, r5, pc}
.L17:
	.align	2
.L16:
	.word	.LANCHOR1
.LFE281:
	.size	bma2x2_data_readout_template, .-bma2x2_data_readout_template
	.global	acc_twi_config
	.global	bma2x2
	.section	.bss.bma2x2,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	bma2x2, %object
	.size	bma2x2, 24
bma2x2:
	.space	24
	.section	.rodata.acc_twi_config,"a"
	.align	2
	.type	acc_twi_config, %object
	.size	acc_twi_config, 16
acc_twi_config:
	.word	6
	.word	7
	.word	26738688
	.byte	7
	.byte	0
	.space	2
	.section	.rodata.delay_bytecode.8394,"a"
	.align	4
	.set	.LANCHOR0,. + 0
	.type	delay_bytecode.8394, %object
	.size	delay_bytecode.8394, 6
delay_bytecode.8394:
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
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.byte	0x4
	.4byte	.LCFI0-.LFB277
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
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
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.byte	0x4
	.4byte	.LCFI2-.LFB279
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
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
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB281
	.4byte	.LFE281-.LFB281
	.byte	0x4
	.4byte	.LCFI3-.LFB281
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
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0xc
	.align	2
.LEFDE8:
	.text
.Letext0:
	.file 4 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
	.file 5 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
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
	.byte	0x4
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x4
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x5
	.byte	0x36
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.byte	0
	.file 6 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
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
	.byte	0x6
	.byte	0x95
	.byte	0x9
	.4byte	0x75
	.uleb128 0x6
	.ascii	"scl\000"
	.byte	0x6
	.byte	0x97
	.byte	0xe
	.4byte	0x75
	.byte	0
	.uleb128 0x6
	.ascii	"sda\000"
	.byte	0x6
	.byte	0x98
	.byte	0xe
	.4byte	0x75
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x6
	.byte	0x99
	.byte	0x1d
	.4byte	0x81
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x6
	.byte	0x9a
	.byte	0xd
	.4byte	0x91
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x6
	.byte	0x9b
	.byte	0x1c
	.4byte	0x9d
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x6
	.byte	0x9c
	.byte	0x1c
	.4byte	0x9d
	.byte	0xe
	.byte	0
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0xa4
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x6
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
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0xab
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
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
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x47
	.byte	0x6
	.byte	0x8c
	.byte	0x1
	.4byte	0x47
	.uleb128 0x9
	.4byte	.LASF14
	.4byte	0x1980000
	.uleb128 0x9
	.4byte	.LASF15
	.4byte	0x4000000
	.uleb128 0x9
	.4byte	.LASF16
	.4byte	0x6680000
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.file 7 "../../../../../../modules/nrfx/hal/nrf_twi.h"
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
	.uleb128 0x8
	.byte	0x7
	.byte	0x4
	.4byte	0x47
	.byte	0x7
	.byte	0x84
	.byte	0x1
	.4byte	0x47
	.uleb128 0x9
	.4byte	.LASF17
	.4byte	0x1980000
	.uleb128 0x9
	.4byte	.LASF18
	.4byte	0x4000000
	.uleb128 0x9
	.4byte	.LASF19
	.4byte	0x6680000
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.file 8 "../../../../../../components/libraries/util/app_util_platform.h"
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
	.uleb128 0x8
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x8
	.byte	0x5c
	.byte	0x1
	.4byte	0x50
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF22
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x6
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x7
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0xf
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
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
	.4byte	.LASF26
	.byte	0x9
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x9
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.4byte	0x4b
	.uleb128 0xb
	.4byte	0x5b
	.uleb128 0xc
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0xd
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
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
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x8
	.byte	0xa
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0xf
	.4byte	.LASF28
	.byte	0xa
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0xa
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0xa
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x11
	.byte	0x4
	.4byte	0x61
	.uleb128 0x12
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x13
	.4byte	0x76
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x15
	.4byte	0x82
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF31
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
	.uleb128 0x16
	.4byte	.LASF33
	.byte	0x14
	.byte	0xa
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0xa
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xc
	.4byte	0x48
	.4byte	0x48
	.uleb128 0xd
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x55
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x15
	.4byte	0x5a
	.uleb128 0x7
	.4byte	.LASF35
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
	.4byte	.LASF36
	.byte	0xa
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0xa
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0xa
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x60
	.uleb128 0x11
	.byte	0x4
	.4byte	0x65
	.uleb128 0x11
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
	.4byte	.LASF31
	.uleb128 0x7
	.4byte	.LASF39
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
	.uleb128 0x7
	.4byte	.LASF40
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
	.4byte	.LASF41
	.byte	0xa
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0xa
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0xa
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0xa
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0xa
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0xa
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0xa
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0xa
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x11
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x11
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x11
	.byte	0x4
	.4byte	0xea
	.uleb128 0x11
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x11
	.byte	0x4
	.4byte	0x112
	.uleb128 0x12
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0x13
	.4byte	0x130
	.uleb128 0x13
	.4byte	0x130
	.byte	0
	.uleb128 0x12
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0x13
	.4byte	0x130
	.byte	0
	.uleb128 0x12
	.4byte	0x130
	.4byte	0xea
	.uleb128 0x13
	.4byte	0x137
	.uleb128 0x13
	.4byte	0x130
	.byte	0
	.uleb128 0x12
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0x13
	.4byte	0x137
	.byte	0
	.uleb128 0x12
	.4byte	0x130
	.4byte	0x112
	.uleb128 0x13
	.4byte	0x13e
	.uleb128 0x13
	.4byte	0x144
	.uleb128 0x13
	.4byte	0x14b
	.byte	0
	.uleb128 0x12
	.4byte	0x130
	.4byte	0x130
	.uleb128 0x13
	.4byte	0x155
	.uleb128 0x13
	.4byte	0x15b
	.uleb128 0x13
	.4byte	0x144
	.uleb128 0x13
	.4byte	0x14b
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF49
	.uleb128 0x11
	.byte	0x4
	.4byte	0x161
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x17
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0x11
	.byte	0x4
	.4byte	0x144
	.uleb128 0x11
	.byte	0x4
	.4byte	0x168
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF31
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
	.byte	0xa
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xa
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0xa
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0xa
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0xa
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0xa
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0xa
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0xa
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0xa
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0xa
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0xa
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0xa
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xa
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xa
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xa
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xa
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xa
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xa
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xa
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xa
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xa
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xa
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xa
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xa
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xa
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xa
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xa
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xa
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xa
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xa
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0xa
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xa
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xa
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF31
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
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x8
	.byte	0xa
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0xa
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0xa
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF49
	.byte	0
	.file 11 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2.h"
	.section	.debug_types,"G",%progbits,wt.455b29ed6cb72083,comdat
	.4byte	0x14e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x45
	.byte	0x5b
	.byte	0x29
	.byte	0xed
	.byte	0x6c
	.byte	0xb7
	.byte	0x20
	.byte	0x83
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.4byte	.LASF85
	.byte	0x18
	.byte	0xb
	.2byte	0x29b
	.byte	0x8
	.4byte	0xb8
	.uleb128 0xf
	.4byte	.LASF86
	.byte	0xb
	.2byte	0x29d
	.byte	0x5
	.4byte	0xb8
	.byte	0
	.uleb128 0xf
	.4byte	.LASF87
	.byte	0xb
	.2byte	0x29f
	.byte	0x5
	.4byte	0xb8
	.byte	0x1
	.uleb128 0xf
	.4byte	.LASF88
	.byte	0xb
	.2byte	0x2a1
	.byte	0x5
	.4byte	0xb8
	.byte	0x2
	.uleb128 0xf
	.4byte	.LASF89
	.byte	0xb
	.2byte	0x2a3
	.byte	0x5
	.4byte	0xb8
	.byte	0x3
	.uleb128 0xf
	.4byte	.LASF90
	.byte	0xb
	.2byte	0x2a5
	.byte	0x5
	.4byte	0xb8
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF91
	.byte	0xb
	.2byte	0x2a7
	.byte	0x5
	.4byte	0xb8
	.byte	0x5
	.uleb128 0xf
	.4byte	.LASF92
	.byte	0xb
	.2byte	0x2a9
	.byte	0x6
	.4byte	0xc4
	.byte	0x8
	.uleb128 0xf
	.4byte	.LASF93
	.byte	0xb
	.2byte	0x2ab
	.byte	0x6
	.4byte	0xc4
	.byte	0xc
	.uleb128 0xf
	.4byte	.LASF94
	.byte	0xb
	.2byte	0x2ad
	.byte	0x6
	.4byte	0xca
	.byte	0x10
	.uleb128 0xf
	.4byte	.LASF95
	.byte	0xb
	.2byte	0x2af
	.byte	0x9
	.4byte	0xd0
	.byte	0x14
	.byte	0
	.uleb128 0x18
	.ascii	"u8\000"
	.byte	0xb
	.2byte	0x126
	.byte	0x17
	.4byte	0xd6
	.uleb128 0x11
	.byte	0x4
	.4byte	0xdd
	.uleb128 0x11
	.byte	0x4
	.4byte	0xfb
	.uleb128 0x11
	.byte	0x4
	.4byte	0x119
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x12
	.4byte	0x124
	.4byte	0xfb
	.uleb128 0x13
	.4byte	0xb8
	.uleb128 0x13
	.4byte	0xb8
	.uleb128 0x13
	.4byte	0x130
	.uleb128 0x13
	.4byte	0xb8
	.byte	0
	.uleb128 0x12
	.4byte	0x124
	.4byte	0x119
	.uleb128 0x13
	.4byte	0xb8
	.uleb128 0x13
	.4byte	0xb8
	.uleb128 0x13
	.4byte	0x130
	.uleb128 0x13
	.4byte	0x136
	.byte	0
	.uleb128 0x19
	.4byte	0x124
	.uleb128 0x13
	.4byte	0x136
	.byte	0
	.uleb128 0x18
	.ascii	"s8\000"
	.byte	0xb
	.2byte	0x120
	.byte	0x15
	.4byte	0x143
	.uleb128 0x11
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x18
	.ascii	"u32\000"
	.byte	0xb
	.2byte	0x128
	.byte	0x16
	.4byte	0x14a
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF96
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.c0a7a20786f23ca4,comdat
	.4byte	0x82
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xc0
	.byte	0xa7
	.byte	0xa2
	.byte	0x7
	.byte	0x86
	.byte	0xf2
	.byte	0x3c
	.byte	0xa4
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.4byte	.LASF97
	.byte	0x8
	.byte	0xb
	.2byte	0x25a
	.byte	0x8
	.4byte	0x5e
	.uleb128 0x1a
	.ascii	"x\000"
	.byte	0xb
	.2byte	0x25b
	.byte	0x5
	.4byte	0x5e
	.byte	0
	.uleb128 0x1a
	.ascii	"y\000"
	.byte	0xb
	.2byte	0x25c
	.byte	0x1
	.4byte	0x5e
	.byte	0x2
	.uleb128 0x1a
	.ascii	"z\000"
	.byte	0xb
	.2byte	0x25d
	.byte	0x1
	.4byte	0x5e
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF98
	.byte	0xb
	.2byte	0x25e
	.byte	0x4
	.4byte	0x6b
	.byte	0x6
	.byte	0
	.uleb128 0x18
	.ascii	"s16\000"
	.byte	0xb
	.2byte	0x121
	.byte	0x1a
	.4byte	0x77
	.uleb128 0x18
	.ascii	"s8\000"
	.byte	0xb
	.2byte	0x120
	.byte	0x15
	.4byte	0x7e
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF99
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF96
	.byte	0
	.section	.debug_types,"G",%progbits,wt.669f206ddb1eff36,comdat
	.4byte	0x61
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x66
	.byte	0x9f
	.byte	0x20
	.byte	0x6d
	.byte	0xdb
	.byte	0x1e
	.byte	0xff
	.byte	0x36
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.4byte	.LASF100
	.byte	0x6
	.byte	0xb
	.2byte	0x251
	.byte	0x8
	.4byte	0x50
	.uleb128 0x1a
	.ascii	"x\000"
	.byte	0xb
	.2byte	0x252
	.byte	0x5
	.4byte	0x50
	.byte	0
	.uleb128 0x1a
	.ascii	"y\000"
	.byte	0xb
	.2byte	0x253
	.byte	0x1
	.4byte	0x50
	.byte	0x2
	.uleb128 0x1a
	.ascii	"z\000"
	.byte	0xb
	.2byte	0x254
	.byte	0x1
	.4byte	0x50
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.ascii	"s16\000"
	.byte	0xb
	.2byte	0x121
	.byte	0x1a
	.4byte	0x5d
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF99
	.byte	0
	.file 12 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 13 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 14 "../../../../../../components/libraries/util/app_util.h"
	.file 15 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 16 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 17 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\i2c.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x7d8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF176
	.byte	0xc
	.4byte	.LASF177
	.4byte	.LASF178
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x18
	.ascii	"s8\000"
	.byte	0xb
	.2byte	0x120
	.byte	0x15
	.4byte	0x35
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF96
	.uleb128 0x18
	.ascii	"s16\000"
	.byte	0xb
	.2byte	0x121
	.byte	0x1a
	.4byte	0x49
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF99
	.uleb128 0x18
	.ascii	"s32\000"
	.byte	0xb
	.2byte	0x122
	.byte	0x14
	.4byte	0x5d
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF101
	.uleb128 0x18
	.ascii	"u8\000"
	.byte	0xb
	.2byte	0x126
	.byte	0x17
	.4byte	0x77
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF13
	.uleb128 0x15
	.4byte	0x77
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x18
	.ascii	"u32\000"
	.byte	0xb
	.2byte	0x128
	.byte	0x16
	.4byte	0x97
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF102
	.uleb128 0x11
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x5
	.byte	0x36
	.byte	0x18
	.4byte	0x83
	.uleb128 0x15
	.4byte	0xab
	.uleb128 0x4
	.4byte	.LASF103
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x5d
	.uleb128 0xb
	.4byte	0xbc
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x97
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF49
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF31
	.uleb128 0x15
	.4byte	0xe0
	.uleb128 0x7
	.4byte	.LASF40
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
	.uleb128 0x15
	.4byte	0xec
	.uleb128 0x7
	.4byte	.LASF35
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
	.uleb128 0x15
	.4byte	0x101
	.uleb128 0x1c
	.4byte	.LASF104
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
	.4byte	.LASF105
	.byte	0xa
	.2byte	0x10d
	.byte	0x1d
	.4byte	0x111
	.uleb128 0x1d
	.4byte	.LASF106
	.byte	0xa
	.2byte	0x110
	.byte	0x25
	.4byte	0xfc
	.uleb128 0x1d
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x111
	.byte	0x25
	.4byte	0xfc
	.uleb128 0xc
	.4byte	0x7e
	.4byte	0x15e
	.uleb128 0xd
	.4byte	0x97
	.byte	0x7f
	.byte	0
	.uleb128 0x15
	.4byte	0x14e
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0xa
	.2byte	0x113
	.byte	0x1c
	.4byte	0x15e
	.uleb128 0xc
	.4byte	0xe7
	.4byte	0x17b
	.uleb128 0x1e
	.byte	0
	.uleb128 0x15
	.4byte	0x170
	.uleb128 0x1d
	.4byte	.LASF109
	.byte	0xa
	.2byte	0x115
	.byte	0x13
	.4byte	0x17b
	.uleb128 0x1d
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x116
	.byte	0x13
	.4byte	0x17b
	.uleb128 0x1d
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x117
	.byte	0x13
	.4byte	0x17b
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x118
	.byte	0x13
	.4byte	0x17b
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x11a
	.byte	0x13
	.4byte	0x17b
	.uleb128 0x1d
	.4byte	.LASF114
	.byte	0xa
	.2byte	0x11b
	.byte	0x13
	.4byte	0x17b
	.uleb128 0x1d
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x11c
	.byte	0x13
	.4byte	0x17b
	.uleb128 0x1d
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x11d
	.byte	0x13
	.4byte	0x17b
	.uleb128 0x1d
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x11e
	.byte	0x13
	.4byte	0x17b
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x11f
	.byte	0x13
	.4byte	0x17b
	.uleb128 0x12
	.4byte	0x5d
	.4byte	0x211
	.uleb128 0x13
	.4byte	0x211
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x21c
	.uleb128 0x1f
	.4byte	.LASF132
	.uleb128 0x15
	.4byte	0x217
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x135
	.byte	0xe
	.4byte	0x22e
	.uleb128 0x11
	.byte	0x4
	.4byte	0x202
	.uleb128 0x12
	.4byte	0x5d
	.4byte	0x243
	.uleb128 0x13
	.4byte	0x243
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.4byte	0x217
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x136
	.byte	0xe
	.4byte	0x256
	.uleb128 0x11
	.byte	0x4
	.4byte	0x234
	.uleb128 0x20
	.4byte	.LASF121
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
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x157
	.byte	0x1f
	.4byte	0x27a
	.uleb128 0x11
	.byte	0x4
	.4byte	0x25c
	.uleb128 0x1d
	.4byte	.LASF123
	.byte	0xc
	.2byte	0x744
	.byte	0x19
	.4byte	0xc8
	.uleb128 0x21
	.4byte	.LASF124
	.byte	0xd
	.byte	0x21
	.byte	0x11
	.4byte	0xcd
	.uleb128 0x21
	.4byte	.LASF125
	.byte	0xe
	.byte	0x53
	.byte	0x11
	.4byte	0xcd
	.uleb128 0x21
	.4byte	.LASF126
	.byte	0xe
	.byte	0x54
	.byte	0x11
	.4byte	0xcd
	.uleb128 0x21
	.4byte	.LASF127
	.byte	0xe
	.byte	0x72
	.byte	0x13
	.4byte	0x2bd
	.uleb128 0x11
	.byte	0x4
	.4byte	0xcd
	.uleb128 0x21
	.4byte	.LASF128
	.byte	0xe
	.byte	0x73
	.byte	0x11
	.4byte	0xcd
	.uleb128 0x7
	.4byte	.LASF129
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
	.4byte	.LASF130
	.byte	0x9
	.byte	0x75
	.byte	0x19
	.4byte	0x2cf
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0xf
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2f8
	.uleb128 0x1f
	.4byte	.LASF133
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0xf
	.2byte	0x31b
	.byte	0xe
	.4byte	0x30a
	.uleb128 0x11
	.byte	0x4
	.4byte	0x2eb
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0xf
	.2byte	0x31c
	.byte	0xe
	.4byte	0x30a
	.uleb128 0x1d
	.4byte	.LASF136
	.byte	0xf
	.2byte	0x31d
	.byte	0xe
	.4byte	0x30a
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF11
	.uleb128 0x7
	.4byte	.LASF137
	.byte	0x6
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
	.uleb128 0x15
	.4byte	0x331
	.uleb128 0x7
	.4byte	.LASF138
	.byte	0x4
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
	.4byte	.LASF139
	.byte	0x10
	.2byte	0x124
	.byte	0x2e
	.4byte	0x346
	.uleb128 0x22
	.4byte	.LASF140
	.byte	0x1
	.byte	0x12
	.byte	0x11
	.byte	0x45
	.byte	0x5b
	.byte	0x29
	.byte	0xed
	.byte	0x6c
	.byte	0xb7
	.byte	0x20
	.byte	0x83
	.uleb128 0x5
	.byte	0x3
	.4byte	bma2x2
	.uleb128 0x23
	.4byte	.LASF141
	.byte	0x1
	.byte	0x14
	.byte	0x1c
	.4byte	0x341
	.uleb128 0x5
	.byte	0x3
	.4byte	acc_twi_config
	.uleb128 0x21
	.4byte	.LASF142
	.byte	0x1
	.byte	0x8c
	.byte	0xb
	.4byte	0x6b
	.uleb128 0x24
	.4byte	.LASF151
	.byte	0x1
	.byte	0x91
	.byte	0x5
	.4byte	0x50
	.4byte	.LFB281
	.4byte	.LFE281-.LFB281
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50a
	.uleb128 0x25
	.4byte	.LASF143
	.byte	0x1
	.byte	0x94
	.byte	0x6
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x25
	.4byte	.LASF144
	.byte	0x1
	.byte	0x94
	.byte	0x13
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x25
	.4byte	.LASF145
	.byte	0x1
	.byte	0x94
	.byte	0x20
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x26
	.4byte	.LASF146
	.byte	0x1
	.byte	0x97
	.byte	0x1b
	.byte	0x66
	.byte	0x9f
	.byte	0x20
	.byte	0x6d
	.byte	0xdb
	.byte	0x1e
	.byte	0xff
	.byte	0x36
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x26
	.4byte	.LASF147
	.byte	0x1
	.byte	0x9a
	.byte	0x20
	.byte	0xc0
	.byte	0xa7
	.byte	0xa2
	.byte	0x7
	.byte	0x86
	.byte	0xf2
	.byte	0x3c
	.byte	0xa4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.4byte	.LASF148
	.byte	0x1
	.byte	0x9c
	.byte	0x5
	.4byte	0x6b
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x25
	.4byte	.LASF149
	.byte	0x1
	.byte	0x9e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.uleb128 0x27
	.4byte	.LASF150
	.byte	0x1
	.byte	0xa0
	.byte	0x6
	.4byte	0x50
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x28
	.4byte	.LVL13
	.4byte	0x50a
	.uleb128 0x29
	.4byte	.LVL14
	.4byte	0x74e
	.4byte	0x45b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR1
	.byte	0
	.uleb128 0x29
	.4byte	.LVL17
	.4byte	0x75b
	.4byte	0x46f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL19
	.4byte	0x768
	.4byte	0x482
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x29
	.4byte	.LVL21
	.4byte	0x775
	.4byte	0x496
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -37
	.byte	0
	.uleb128 0x29
	.4byte	.LVL23
	.4byte	0x782
	.4byte	0x4aa
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x29
	.4byte	.LVL25
	.4byte	0x78f
	.4byte	0x4be
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x29
	.4byte	.LVL27
	.4byte	0x79c
	.4byte	0x4d2
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.byte	0
	.uleb128 0x29
	.4byte	.LVL29
	.4byte	0x7a9
	.4byte	0x4e6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x29
	.4byte	.LVL31
	.4byte	0x7b6
	.4byte	0x4fa
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL33
	.4byte	0x75b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF179
	.byte	0x1
	.byte	0x73
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB280
	.4byte	.LFE280-.LFB280
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.4byte	.LASF152
	.byte	0x1
	.byte	0x4e
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB279
	.4byte	.LFE279-.LFB279
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x59c
	.uleb128 0x2d
	.4byte	.LASF90
	.byte	0x1
	.byte	0x4e
	.byte	0x1b
	.4byte	0x6b
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x2d
	.4byte	.LASF153
	.byte	0x1
	.byte	0x4e
	.byte	0x28
	.4byte	0x6b
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2d
	.4byte	.LASF154
	.byte	0x1
	.byte	0x4e
	.byte	0x36
	.4byte	0xa5
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x2e
	.ascii	"cnt\000"
	.byte	0x1
	.byte	0x4e
	.byte	0x43
	.4byte	0x6b
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x2b
	.4byte	.LVL10
	.4byte	0x7c3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF155
	.byte	0x1
	.byte	0x21
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB278
	.4byte	.LFE278-.LFB278
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x618
	.uleb128 0x2d
	.4byte	.LASF90
	.byte	0x1
	.byte	0x21
	.byte	0x1c
	.4byte	0x6b
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x2d
	.4byte	.LASF153
	.byte	0x1
	.byte	0x21
	.byte	0x29
	.4byte	0x6b
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2d
	.4byte	.LASF154
	.byte	0x1
	.byte	0x21
	.byte	0x37
	.4byte	0xa5
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2e
	.ascii	"cnt\000"
	.byte	0x1
	.byte	0x21
	.byte	0x44
	.4byte	0x6b
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2b
	.4byte	.LVL8
	.4byte	0x7cf
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF180
	.byte	0x1
	.byte	0x1c
	.byte	0x6
	.4byte	.LFB277
	.4byte	.LFE277-.LFB277
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b8
	.uleb128 0x2d
	.4byte	.LASF156
	.byte	0x1
	.byte	0x1c
	.byte	0x1c
	.4byte	0x8a
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x30
	.4byte	0x6b8
	.4byte	.LBI8
	.byte	.LVU3
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.byte	0x1
	.byte	0x1d
	.byte	0x7
	.uleb128 0x31
	.4byte	0x6c5
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x30
	.4byte	0x6d2
	.4byte	.LBI10
	.byte	.LVU8
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.byte	0x2
	.byte	0x48
	.byte	0x9
	.uleb128 0x31
	.4byte	0x6df
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x32
	.4byte	0x70f
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x32
	.4byte	0x71b
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x33
	.4byte	.LVL4
	.uleb128 0x7
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x31
	.byte	0x21
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0xfa00
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.4byte	.LASF157
	.byte	0x2
	.byte	0x40
	.byte	0x14
	.byte	0x3
	.4byte	0x6d2
	.uleb128 0x35
	.4byte	.LASF159
	.byte	0x2
	.byte	0x40
	.byte	0x2a
	.4byte	0xcd
	.byte	0
	.uleb128 0x34
	.4byte	.LASF158
	.byte	0x3
	.byte	0x80
	.byte	0x14
	.byte	0x3
	.4byte	0x728
	.uleb128 0x35
	.4byte	.LASF160
	.byte	0x3
	.byte	0x80
	.byte	0x33
	.4byte	0xcd
	.uleb128 0x36
	.4byte	.LASF161
	.byte	0x3
	.byte	0x99
	.byte	0x1b
	.4byte	0x738
	.byte	0x10
	.uleb128 0x5
	.byte	0x3
	.4byte	delay_bytecode.8394
	.uleb128 0x4
	.4byte	.LASF162
	.byte	0x3
	.byte	0xa0
	.byte	0x15
	.4byte	0x73d
	.uleb128 0x15
	.4byte	0x6fe
	.uleb128 0x37
	.4byte	.LASF163
	.byte	0x3
	.byte	0xa2
	.byte	0x18
	.4byte	0x70a
	.uleb128 0x37
	.4byte	.LASF164
	.byte	0x3
	.byte	0xa3
	.byte	0xe
	.4byte	0xcd
	.byte	0
	.uleb128 0xc
	.4byte	0xb7
	.4byte	0x738
	.uleb128 0xd
	.4byte	0x97
	.byte	0x2
	.byte	0
	.uleb128 0x15
	.4byte	0x728
	.uleb128 0x11
	.byte	0x4
	.4byte	0x743
	.uleb128 0x19
	.4byte	0x74e
	.uleb128 0x13
	.4byte	0xcd
	.byte	0
	.uleb128 0x38
	.4byte	.LASF165
	.4byte	.LASF165
	.byte	0xb
	.2byte	0x89f
	.byte	0x4
	.uleb128 0x38
	.4byte	.LASF166
	.4byte	.LASF166
	.byte	0xb
	.2byte	0xa6c
	.byte	0x4
	.uleb128 0x38
	.4byte	.LASF167
	.4byte	.LASF167
	.byte	0xb
	.2byte	0xa34
	.byte	0x4
	.uleb128 0x38
	.4byte	.LASF168
	.4byte	.LASF168
	.byte	0xb
	.2byte	0xa1a
	.byte	0x4
	.uleb128 0x38
	.4byte	.LASF169
	.4byte	.LASF169
	.byte	0xb
	.2byte	0x8de
	.byte	0x4
	.uleb128 0x38
	.4byte	.LASF170
	.4byte	.LASF170
	.byte	0xb
	.2byte	0x904
	.byte	0x4
	.uleb128 0x38
	.4byte	.LASF171
	.4byte	.LASF171
	.byte	0xb
	.2byte	0x92b
	.byte	0x4
	.uleb128 0x38
	.4byte	.LASF172
	.4byte	.LASF172
	.byte	0xb
	.2byte	0x950
	.byte	0x4
	.uleb128 0x38
	.4byte	.LASF173
	.4byte	.LASF173
	.byte	0xb
	.2byte	0x16b2
	.byte	0x4
	.uleb128 0x39
	.4byte	.LASF174
	.4byte	.LASF174
	.byte	0x11
	.byte	0x5
	.byte	0x6
	.uleb128 0x39
	.4byte	.LASF175
	.4byte	.LASF175
	.byte	0x11
	.byte	0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x20
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x20
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
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
	.uleb128 0x2e
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
.LVUS13:
	.uleb128 .LVU50
	.uleb128 .LVU61
	.uleb128 .LVU61
	.uleb128 0
.LLST13:
	.4byte	.LVL11
	.4byte	.LVL18
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL18
	.4byte	.LFE281
	.2byte	0x2
	.byte	0x38
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU53
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 .LVU58
	.uleb128 .LVU58
	.uleb128 .LVU84
	.uleb128 .LVU84
	.uleb128 .LVU86
	.uleb128 .LVU86
	.uleb128 0
.LLST14:
	.4byte	.LVL12
	.4byte	.LVL15
	.2byte	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16
	.4byte	.LVL33
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.4byte	.LVL34
	.4byte	.LFE281
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST9:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10-1
	.4byte	.LFE279
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST10:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL10-1
	.4byte	.LFE279
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST11:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL10-1
	.4byte	.LFE279
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU31
	.uleb128 .LVU31
	.uleb128 0
.LLST12:
	.4byte	.LVL9
	.4byte	.LVL10-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10-1
	.4byte	.LFE279
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST5:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-1
	.4byte	.LFE278
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST6:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-1
	.4byte	.LFE278
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST7:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL8-1
	.4byte	.LFE278
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x52
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 0
	.uleb128 .LVU26
	.uleb128 .LVU26
	.uleb128 0
.LLST8:
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL8-1
	.4byte	.LFE278
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x53
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU6
	.uleb128 .LVU6
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
	.uleb128 .LVU3
	.uleb128 .LVU6
	.uleb128 .LVU6
	.uleb128 .LVU18
	.uleb128 .LVU18
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU22
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL4
	.4byte	.LVL5
	.2byte	0x3
	.byte	0x74
	.sleb128 -1
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU8
	.uleb128 .LVU16
.LLST2:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xa
	.2byte	0x3e8
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU13
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU16
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x8
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL4-1
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL4-1
	.4byte	.LVL4
	.2byte	0x8
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0x31
	.byte	0x21
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU14
	.uleb128 .LVU16
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xa
	.2byte	0xfa00
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x20b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x7dc
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
	.ascii	"NRF_DRV_TWI_FREQ_100K\000"
	.4byte	0x34
	.ascii	"NRF_DRV_TWI_FREQ_250K\000"
	.4byte	0x3d
	.ascii	"NRF_DRV_TWI_FREQ_400K\000"
	.4byte	0x363
	.ascii	"bma2x2\000"
	.4byte	0x379
	.ascii	"acc_twi_config\000"
	.4byte	0x363
	.ascii	"bma2x2\000"
	.4byte	0x397
	.ascii	"bma2x2_data_readout_template\000"
	.4byte	0x50a
	.ascii	"I2C_routine\000"
	.4byte	0x520
	.ascii	"BMA2x2_I2C_bus_read\000"
	.4byte	0x59c
	.ascii	"BMA2x2_I2C_bus_write\000"
	.4byte	0x618
	.ascii	"BMA2x2_delay_msek\000"
	.4byte	0x6b8
	.ascii	"nrf_delay_ms\000"
	.4byte	0x6d2
	.ascii	"nrfx_coredep_delay_us\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x227
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x7dc
	.4byte	0x35
	.ascii	"signed char\000"
	.4byte	0x29
	.ascii	"s8\000"
	.4byte	0x49
	.ascii	"short int\000"
	.4byte	0x3c
	.ascii	"s16\000"
	.4byte	0x5d
	.ascii	"int\000"
	.4byte	0x50
	.ascii	"s32\000"
	.4byte	0x64
	.ascii	"long long int\000"
	.4byte	0x77
	.ascii	"unsigned char\000"
	.4byte	0x6b
	.ascii	"u8\000"
	.4byte	0x83
	.ascii	"short unsigned int\000"
	.4byte	0x97
	.ascii	"unsigned int\000"
	.4byte	0x8a
	.ascii	"u32\000"
	.4byte	0x9e
	.ascii	"long long unsigned int\000"
	.4byte	0xb
	.ascii	"bma2x2_accel_data\000"
	.4byte	0xb
	.ascii	"bma2x2_accel_data_temp\000"
	.4byte	0xb
	.ascii	"bma2x2_t\000"
	.4byte	0xab
	.ascii	"uint16_t\000"
	.4byte	0xbc
	.ascii	"int32_t\000"
	.4byte	0xcd
	.ascii	"uint32_t\000"
	.4byte	0xd9
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xe0
	.ascii	"char\000"
	.4byte	0xec
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x101
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x25c
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x2cf
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2eb
	.ascii	"FILE\000"
	.4byte	0x32a
	.ascii	"_Bool\000"
	.4byte	0x331
	.ascii	"nrf_drv_twi_config_t\000"
	.4byte	0x346
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
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
	.uleb128 0x2
	.uleb128 0xb
	.byte	0x4
	.file 18 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_application-master\\drivers\\bma2x2_support.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x12
	.byte	0x4
	.file 19 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x13
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x6
	.file 20 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x14
	.file 21 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x15
	.file 22 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x16
	.byte	0x4
	.byte	0x4
	.file 23 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x17
	.file 24 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.file 25 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x19
	.byte	0x4
	.file 26 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x1a
	.file 27 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x1b
	.byte	0x3
	.uleb128 0x92
	.uleb128 0xc
	.file 28 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x1c
	.file 29 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x1d
	.byte	0x4
	.byte	0x4
	.file 30 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x1e
	.byte	0x4
	.file 31 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.file 32 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x20
	.byte	0x4
	.file 33 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x21
	.byte	0x4
	.file 34 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x22
	.byte	0x4
	.file 35 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.file 36 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x24
	.file 37 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x25
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 38 "../../../../../../integration/nrfx/nrfx_glue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x26
	.file 39 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x27
	.byte	0x4
	.file 40 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x28
	.file 41 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x29
	.byte	0x4
	.byte	0x4
	.file 42 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x2a
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x23
	.byte	0x4
	.file 43 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x2b
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb6
	.uleb128 0x2b
	.byte	0x4
	.byte	0x3
	.uleb128 0xb7
	.uleb128 0x8
	.file 44 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x2c
	.file 45 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x2d
	.byte	0x4
	.file 46 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x4
	.file 47 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x2f
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x9
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2a
	.byte	0x4
	.file 48 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x30
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xf
	.byte	0x4
	.file 49 "../../../../../../components/libraries/util/sdk_errors.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x31
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x2e
	.byte	0x4
	.byte	0x4
	.file 50 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x32
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x3
	.byte	0x4
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x31
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
	.file 54 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x36
	.file 55 "../../../../../../modules/nrfx/hal/nrf_twim.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x37
	.byte	0x4
	.byte	0x4
	.file 56 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x38
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 57 "../../../../../../components/libraries/queue/nrf_queue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x39
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
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 61 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x3d
	.file 62 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x3e
	.file 63 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x3f
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xe
	.byte	0x4
	.file 64 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x40
	.byte	0x4
	.byte	0x4
	.file 65 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x41
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 66 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x42
	.file 67 "../../../../../../components/libraries/experimental_log/src/nrf_log_ctrl_internal.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x43
	.byte	0x4
	.file 68 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x44
	.file 69 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x45
	.file 70 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x46
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.uleb128 0x8
	.uleb128 0x11
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF140:
	.ascii	"bma2x2\000"
.LASF54:
	.ascii	"currency_symbol\000"
.LASF1:
	.ascii	"padding\000"
.LASF166:
	.ascii	"bma2x2_set_power_mode\000"
.LASF128:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF115:
	.ascii	"__RAL_data_utf8_space\000"
.LASF81:
	.ascii	"date_time_format\000"
.LASF110:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF170:
	.ascii	"bma2x2_read_accel_y\000"
.LASF171:
	.ascii	"bma2x2_read_accel_z\000"
.LASF106:
	.ascii	"__RAL_codeset_ascii\000"
.LASF146:
	.ascii	"sample_xyz\000"
.LASF92:
	.ascii	"bus_write\000"
.LASF62:
	.ascii	"p_cs_precedes\000"
.LASF9:
	.ascii	"nrf_drv_twi_frequency_t\000"
.LASF117:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF102:
	.ascii	"long long unsigned int\000"
.LASF176:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF175:
	.ascii	"i2cSend\000"
.LASF33:
	.ascii	"__locale_s\000"
.LASF120:
	.ascii	"__user_get_time_of_day\000"
.LASF127:
	.ascii	"_vectors\000"
.LASF123:
	.ascii	"ITM_RxBuffer\000"
.LASF79:
	.ascii	"date_format\000"
.LASF29:
	.ascii	"next\000"
.LASF4:
	.ascii	"frequency\000"
.LASF53:
	.ascii	"int_curr_symbol\000"
.LASF77:
	.ascii	"abbrev_month_names\000"
.LASF101:
	.ascii	"long long int\000"
.LASF96:
	.ascii	"signed char\000"
.LASF90:
	.ascii	"dev_addr\000"
.LASF104:
	.ascii	"__RAL_global_locale\000"
.LASF0:
	.ascii	"module_id\000"
.LASF163:
	.ascii	"delay_cycles\000"
.LASF45:
	.ascii	"__towupper\000"
.LASF153:
	.ascii	"reg_addr\000"
.LASF156:
	.ascii	"msek\000"
.LASF49:
	.ascii	"long int\000"
.LASF144:
	.ascii	"accel_y_s16\000"
.LASF174:
	.ascii	"i2cRecive\000"
.LASF114:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF150:
	.ascii	"com_rslt\000"
.LASF134:
	.ascii	"stdin\000"
.LASF23:
	.ascii	"APP_IRQ_PRIORITY_LOW\000"
.LASF64:
	.ascii	"n_cs_precedes\000"
.LASF2:
	.ascii	"uint16_t\000"
.LASF178:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_application-master\\\\pca10040\\\\"
	.ascii	"s132\\\\ses\000"
.LASF68:
	.ascii	"int_p_cs_precedes\000"
.LASF180:
	.ascii	"BMA2x2_delay_msek\000"
.LASF160:
	.ascii	"time_us\000"
.LASF147:
	.ascii	"sample_xyzt\000"
.LASF14:
	.ascii	"NRF_DRV_TWI_FREQ_100K\000"
.LASF84:
	.ascii	"__wchar\000"
.LASF169:
	.ascii	"bma2x2_read_accel_x\000"
.LASF25:
	.ascii	"APP_IRQ_PRIORITY_THREAD\000"
.LASF57:
	.ascii	"mon_grouping\000"
.LASF44:
	.ascii	"__iswctype\000"
.LASF67:
	.ascii	"n_sign_posn\000"
.LASF91:
	.ascii	"fifo_config\000"
.LASF7:
	.ascii	"hold_bus_uninit\000"
.LASF98:
	.ascii	"temp\000"
.LASF97:
	.ascii	"bma2x2_accel_data_temp\000"
.LASF12:
	.ascii	"unsigned int\000"
.LASF70:
	.ascii	"int_p_sep_by_space\000"
.LASF124:
	.ascii	"SystemCoreClock\000"
.LASF78:
	.ascii	"am_pm_indicator\000"
.LASF5:
	.ascii	"interrupt_priority\000"
.LASF113:
	.ascii	"__RAL_data_utf8_period\000"
.LASF52:
	.ascii	"grouping\000"
.LASF46:
	.ascii	"__towlower\000"
.LASF118:
	.ascii	"__RAL_data_empty_string\000"
.LASF51:
	.ascii	"thousands_sep\000"
.LASF34:
	.ascii	"__category\000"
.LASF138:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF126:
	.ascii	"__StackLimit\000"
.LASF42:
	.ascii	"__toupper\000"
.LASF129:
	.ascii	"nrf_nvic_state_t\000"
.LASF37:
	.ascii	"data\000"
.LASF59:
	.ascii	"negative_sign\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF36:
	.ascii	"name\000"
.LASF143:
	.ascii	"accel_x_s16\000"
.LASF151:
	.ascii	"bma2x2_data_readout_template\000"
.LASF74:
	.ascii	"day_names\000"
.LASF159:
	.ascii	"ms_time\000"
.LASF27:
	.ascii	"__cr_flag\000"
.LASF132:
	.ascii	"timeval\000"
.LASF20:
	.ascii	"APP_IRQ_PRIORITY_HIGHEST\000"
.LASF135:
	.ascii	"stdout\000"
.LASF154:
	.ascii	"reg_data\000"
.LASF30:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF86:
	.ascii	"power_mode_u8\000"
.LASF35:
	.ascii	"__RAL_locale_t\000"
.LASF80:
	.ascii	"time_format\000"
.LASF82:
	.ascii	"__mbstate_s\000"
.LASF58:
	.ascii	"positive_sign\000"
.LASF66:
	.ascii	"p_sign_posn\000"
.LASF108:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF148:
	.ascii	"bw_value_u8\000"
.LASF173:
	.ascii	"bma2x2_read_accel_xyzt\000"
.LASF141:
	.ascii	"acc_twi_config\000"
.LASF28:
	.ascii	"decode\000"
.LASF26:
	.ascii	"__irq_masks\000"
.LASF16:
	.ascii	"NRF_DRV_TWI_FREQ_400K\000"
.LASF19:
	.ascii	"NRF_TWI_FREQ_400K\000"
.LASF22:
	.ascii	"APP_IRQ_PRIORITY_MID\000"
.LASF48:
	.ascii	"__mbtowc\000"
.LASF130:
	.ascii	"nrf_nvic_state\000"
.LASF137:
	.ascii	"nrf_drv_twi_config_t\000"
.LASF172:
	.ascii	"bma2x2_read_accel_xyz\000"
.LASF105:
	.ascii	"__RAL_c_locale\000"
.LASF43:
	.ascii	"__tolower\000"
.LASF119:
	.ascii	"__user_set_time_of_day\000"
.LASF155:
	.ascii	"BMA2x2_I2C_bus_write\000"
.LASF94:
	.ascii	"burst_read\000"
.LASF107:
	.ascii	"__RAL_codeset_utf8\000"
.LASF88:
	.ascii	"ctrl_mode_reg\000"
.LASF168:
	.ascii	"bma2x2_get_bw\000"
.LASF83:
	.ascii	"__state\000"
.LASF125:
	.ascii	"__StackTop\000"
.LASF11:
	.ascii	"_Bool\000"
.LASF103:
	.ascii	"int32_t\000"
.LASF177:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_application-master\\drivers\\bma2x2_suppor"
	.ascii	"t.c\000"
.LASF165:
	.ascii	"bma2x2_init\000"
.LASF157:
	.ascii	"nrf_delay_ms\000"
.LASF109:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF145:
	.ascii	"accel_z_s16\000"
.LASF61:
	.ascii	"frac_digits\000"
.LASF6:
	.ascii	"clear_bus_init\000"
.LASF99:
	.ascii	"short int\000"
.LASF164:
	.ascii	"cycles\000"
.LASF122:
	.ascii	"__RAL_error_decoder_head\000"
.LASF142:
	.ascii	"V_BMA2x2RESOLUTION_u8R\000"
.LASF131:
	.ascii	"FILE\000"
.LASF100:
	.ascii	"bma2x2_accel_data\000"
.LASF56:
	.ascii	"mon_thousands_sep\000"
.LASF152:
	.ascii	"BMA2x2_I2C_bus_read\000"
.LASF39:
	.ascii	"__RAL_locale_data_t\000"
.LASF69:
	.ascii	"int_n_cs_precedes\000"
.LASF8:
	.ascii	"uint32_t\000"
.LASF89:
	.ascii	"low_mode_reg\000"
.LASF87:
	.ascii	"chip_id\000"
.LASF72:
	.ascii	"int_p_sign_posn\000"
.LASF85:
	.ascii	"bma2x2_t\000"
.LASF31:
	.ascii	"char\000"
.LASF149:
	.ascii	"banwid\000"
.LASF63:
	.ascii	"p_sep_by_space\000"
.LASF139:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF40:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF13:
	.ascii	"unsigned char\000"
.LASF38:
	.ascii	"codeset\000"
.LASF93:
	.ascii	"bus_read\000"
.LASF15:
	.ascii	"NRF_DRV_TWI_FREQ_250K\000"
.LASF18:
	.ascii	"NRF_TWI_FREQ_250K\000"
.LASF73:
	.ascii	"int_n_sign_posn\000"
.LASF136:
	.ascii	"stderr\000"
.LASF17:
	.ascii	"NRF_TWI_FREQ_100K\000"
.LASF95:
	.ascii	"delay_msec\000"
.LASF179:
	.ascii	"I2C_routine\000"
.LASF111:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF41:
	.ascii	"__isctype\000"
.LASF32:
	.ascii	"__RAL_error_decoder_s\000"
.LASF121:
	.ascii	"__RAL_error_decoder_t\000"
.LASF161:
	.ascii	"delay_bytecode\000"
.LASF10:
	.ascii	"uint8_t\000"
.LASF158:
	.ascii	"nrfx_coredep_delay_us\000"
.LASF60:
	.ascii	"int_frac_digits\000"
.LASF76:
	.ascii	"month_names\000"
.LASF162:
	.ascii	"delay_func_t\000"
.LASF71:
	.ascii	"int_n_sep_by_space\000"
.LASF24:
	.ascii	"APP_IRQ_PRIORITY_LOWEST\000"
.LASF65:
	.ascii	"n_sep_by_space\000"
.LASF133:
	.ascii	"__RAL_FILE\000"
.LASF75:
	.ascii	"abbrev_day_names\000"
.LASF116:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF112:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF55:
	.ascii	"mon_decimal_point\000"
.LASF21:
	.ascii	"APP_IRQ_PRIORITY_HIGH\000"
.LASF167:
	.ascii	"bma2x2_set_bw\000"
.LASF47:
	.ascii	"__wctomb\000"
.LASF50:
	.ascii	"decimal_point\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
