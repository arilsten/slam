	.cpu cortex-m4
	.eabi_attribute 27, 1
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"bmg160_support.c"
	.text
.Ltext0:
	.global	bmg160
	.section	.bss.bmg160,"aw",%nobits
	.align	2
	.type	bmg160, %object
	.size	bmg160, 20
bmg160:
	.space	20
	.section	.text.bmg160_data_readout_template,"ax",%progbits
	.align	1
	.global	bmg160_data_readout_template
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_data_readout_template, %function
bmg160_data_readout_template:
.LFB0:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160_support.c"
	.loc 1 128 1
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #52
.LCFI1:
	.loc 1 131 42
	movs	r3, #0
	strh	r3, [sp, #34]	@ movhi
	.loc 1 137 5
	movs	r3, #0
	strb	r3, [sp, #7]
	.loc 1 139 5
	movs	r3, #0
	strb	r3, [sp, #47]
	.loc 1 141 6
	mov	r3, #-1
	str	r3, [sp, #40]
	.loc 1 160 13
	ldr	r0, .L3
	bl	bmg160_init
	mov	r3, r0
	.loc 1 160 11
	str	r3, [sp, #40]
	.loc 1 177 14
	movs	r0, #0
	bl	bmg160_set_power_mode
	mov	r3, r0
	mov	r2, r3
	.loc 1 177 11
	ldr	r3, [sp, #40]
	add	r3, r3, r2
	str	r3, [sp, #40]
	.loc 1 187 10
	movs	r3, #1
	strb	r3, [sp, #47]
	.loc 1 188 14
	ldrb	r3, [sp, #47]	@ zero_extendqisi2
	mov	r0, r3
	bl	bmg160_set_bw
	mov	r3, r0
	mov	r2, r3
	.loc 1 188 11
	ldr	r3, [sp, #40]
	add	r3, r3, r2
	str	r3, [sp, #40]
	.loc 1 191 14
	add	r3, sp, #7
	mov	r0, r3
	bl	bmg160_get_bw
	mov	r3, r0
	mov	r2, r3
	.loc 1 191 11
	ldr	r3, [sp, #40]
	add	r3, r3, r2
	str	r3, [sp, #40]
	.loc 1 199 14
	add	r3, sp, #38
	mov	r0, r3
	bl	bmg160_get_data_X
	mov	r3, r0
	mov	r2, r3
	.loc 1 199 11
	ldr	r3, [sp, #40]
	add	r3, r3, r2
	str	r3, [sp, #40]
	.loc 1 201 14
	add	r3, sp, #36
	mov	r0, r3
	bl	bmg160_get_data_Y
	mov	r3, r0
	mov	r2, r3
	.loc 1 201 11
	ldr	r3, [sp, #40]
	add	r3, r3, r2
	str	r3, [sp, #40]
	.loc 1 203 14
	add	r3, sp, #34
	mov	r0, r3
	bl	bmg160_get_data_Z
	mov	r3, r0
	mov	r2, r3
	.loc 1 203 11
	ldr	r3, [sp, #40]
	add	r3, r3, r2
	str	r3, [sp, #40]
	.loc 1 206 14
	add	r3, sp, #20
	mov	r0, r3
	bl	bmg160_get_data_XYZ
	mov	r3, r0
	mov	r2, r3
	.loc 1 206 11
	ldr	r3, [sp, #40]
	add	r3, r3, r2
	str	r3, [sp, #40]
	.loc 1 210 14
	add	r3, sp, #8
	mov	r0, r3
	bl	bmg160_get_data_XYZI
	mov	r3, r0
	mov	r2, r3
	.loc 1 210 11
	ldr	r3, [sp, #40]
	add	r3, r3, r2
	str	r3, [sp, #40]
	.loc 1 227 14
	movs	r0, #1
	bl	bmg160_set_power_mode
	mov	r3, r0
	mov	r2, r3
	.loc 1 227 11
	ldr	r3, [sp, #40]
	add	r3, r3, r2
	str	r3, [sp, #40]
	.loc 1 232 8
	ldr	r3, [sp, #40]
	.loc 1 233 1
	mov	r0, r3
	add	sp, sp, #52
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.L4:
	.align	2
.L3:
	.word	bmg160
.LFE0:
	.size	bmg160_data_readout_template, .-bmg160_data_readout_template
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
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE0:
	.text
.Letext0:
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
	.section	.debug_types,"G",%progbits,wt.95b6118cc39f84dd,comdat
	.4byte	0x12a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x95
	.byte	0xb6
	.byte	0x11
	.byte	0x8c
	.byte	0xc3
	.byte	0x9f
	.byte	0x84
	.byte	0xdd
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x14
	.byte	0x2
	.2byte	0x6a7
	.byte	0x8
	.4byte	0x80
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x6a8
	.byte	0x5
	.4byte	0x80
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.2byte	0x6a9
	.byte	0x5
	.4byte	0x80
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.2byte	0x6ab
	.byte	0x7
	.4byte	0x8c
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.2byte	0x6ac
	.byte	0x7
	.4byte	0x92
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.2byte	0x6ad
	.byte	0x7
	.4byte	0x92
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.2byte	0x6ae
	.byte	0x9
	.4byte	0x98
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.ascii	"u8\000"
	.byte	0x2
	.2byte	0x109
	.byte	0x17
	.4byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe1
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x7
	.4byte	0xec
	.4byte	0xc3
	.uleb128 0x8
	.4byte	0x80
	.uleb128 0x8
	.4byte	0x80
	.uleb128 0x8
	.4byte	0xf8
	.uleb128 0x8
	.4byte	0xfe
	.byte	0
	.uleb128 0x7
	.4byte	0xec
	.4byte	0xe1
	.uleb128 0x8
	.4byte	0x80
	.uleb128 0x8
	.4byte	0x80
	.uleb128 0x8
	.4byte	0xf8
	.uleb128 0x8
	.4byte	0x80
	.byte	0
	.uleb128 0x9
	.4byte	0xec
	.uleb128 0x8
	.4byte	0x10b
	.byte	0
	.uleb128 0x4
	.ascii	"s8\000"
	.byte	0x2
	.2byte	0x103
	.byte	0x15
	.4byte	0x118
	.uleb128 0x5
	.byte	0x4
	.4byte	0x80
	.uleb128 0x4
	.ascii	"s32\000"
	.byte	0x2
	.2byte	0x105
	.byte	0x14
	.4byte	0x11f
	.uleb128 0x4
	.ascii	"u32\000"
	.byte	0x2
	.2byte	0x10b
	.byte	0x16
	.4byte	0x126
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0
	.section	.debug_types,"G",%progbits,wt.ed6915408fd89689,comdat
	.4byte	0x93
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xed
	.byte	0x69
	.byte	0x15
	.byte	0x40
	.byte	0x8f
	.byte	0xd8
	.byte	0x96
	.byte	0x89
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0xc
	.byte	0x2
	.2byte	0x694
	.byte	0x8
	.4byte	0x64
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.2byte	0x695
	.byte	0x6
	.4byte	0x64
	.byte	0
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x696
	.byte	0x6
	.4byte	0x64
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x697
	.byte	0x6
	.4byte	0x64
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x698
	.byte	0x7
	.4byte	0x71
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.ascii	"s16\000"
	.byte	0x2
	.2byte	0x104
	.byte	0x1a
	.4byte	0x81
	.uleb128 0xb
	.4byte	0x88
	.4byte	0x81
	.uleb128 0xc
	.4byte	0x8f
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x145
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF28
	.byte	0xc
	.4byte	.LASF29
	.4byte	.LASF30
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x4
	.ascii	"s8\000"
	.byte	0x2
	.2byte	0x103
	.byte	0x15
	.4byte	0x35
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x4
	.ascii	"s16\000"
	.byte	0x2
	.2byte	0x104
	.byte	0x1a
	.4byte	0x49
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x4
	.ascii	"s32\000"
	.byte	0x2
	.2byte	0x105
	.byte	0x14
	.4byte	0x5d
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x4
	.ascii	"u8\000"
	.byte	0x2
	.2byte	0x109
	.byte	0x17
	.4byte	0x77
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0x1
	.byte	0x79
	.byte	0x11
	.byte	0x95
	.byte	0xb6
	.byte	0x11
	.byte	0x8c
	.byte	0xc3
	.byte	0x9f
	.byte	0x84
	.byte	0xdd
	.uleb128 0x5
	.byte	0x3
	.4byte	bmg160
	.uleb128 0xf
	.4byte	.LASF32
	.byte	0x1
	.byte	0x7f
	.byte	0x5
	.4byte	0x50
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x10
	.4byte	.LASF20
	.byte	0x1
	.byte	0x83
	.byte	0x6
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x10
	.4byte	.LASF21
	.byte	0x1
	.byte	0x83
	.byte	0x18
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF22
	.byte	0x1
	.byte	0x83
	.byte	0x2a
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -22
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.byte	0x85
	.byte	0x17
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.byte	0x87
	.byte	0x17
	.4byte	0x13f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x10
	.4byte	.LASF25
	.byte	0x1
	.byte	0x89
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -49
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.byte	0x8b
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x10
	.4byte	.LASF27
	.byte	0x1
	.byte	0x8d
	.byte	0x6
	.4byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.byte	0xed
	.byte	0x69
	.byte	0x15
	.byte	0x40
	.byte	0x8f
	.byte	0xd8
	.byte	0x96
	.byte	0x89
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
	.uleb128 0x5
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
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
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
	.uleb128 0x8
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x13
	.byte	0
	.uleb128 0x69
	.uleb128 0x20
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x45
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x149
	.4byte	0x9a
	.ascii	"bmg160\000"
	.4byte	0x9a
	.ascii	"bmg160\000"
	.4byte	0xb0
	.ascii	"bmg160_data_readout_template\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0xe1
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x149
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
	.4byte	0x7e
	.ascii	"short unsigned int\000"
	.4byte	0x85
	.ascii	"unsigned int\000"
	.4byte	0x8c
	.ascii	"long long unsigned int\000"
	.4byte	0x93
	.ascii	"char\000"
	.4byte	0xb
	.ascii	"bmg160_data_t\000"
	.4byte	0xb
	.ascii	"bmg160_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
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
	.uleb128 0x37
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF17:
	.ascii	"long long int\000"
.LASF20:
	.ascii	"v_gyro_datax_s16\000"
.LASF6:
	.ascii	"unsigned char\000"
.LASF0:
	.ascii	"chip_id\000"
.LASF12:
	.ascii	"datay\000"
.LASF3:
	.ascii	"bus_write\000"
.LASF14:
	.ascii	"intstatus\000"
.LASF1:
	.ascii	"dev_addr\000"
.LASF27:
	.ascii	"com_rslt\000"
.LASF19:
	.ascii	"long long unsigned int\000"
.LASF21:
	.ascii	"v_gyro_datay_s16\000"
.LASF10:
	.ascii	"bmg160_data_t\000"
.LASF28:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -fomit-frame-poi"
	.ascii	"nter -fno-dwarf2-cfi-asm -fno-builtin -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF29:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_applicationLeithe\\drivers\\bmg160_support"
	.ascii	".c\000"
.LASF4:
	.ascii	"bus_read\000"
.LASF13:
	.ascii	"dataz\000"
.LASF16:
	.ascii	"char\000"
.LASF31:
	.ascii	"bmg160\000"
.LASF23:
	.ascii	"data_gyro\000"
.LASF22:
	.ascii	"v_gyro_dataz_s16\000"
.LASF26:
	.ascii	"v_bw_u8\000"
.LASF9:
	.ascii	"bmg160_t\000"
.LASF5:
	.ascii	"delay_msec\000"
.LASF32:
	.ascii	"bmg160_data_readout_template\000"
.LASF18:
	.ascii	"short unsigned int\000"
.LASF7:
	.ascii	"signed char\000"
.LASF11:
	.ascii	"datax\000"
.LASF15:
	.ascii	"short int\000"
.LASF2:
	.ascii	"burst_read\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF30:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF24:
	.ascii	"gyro_xyzi_data\000"
.LASF25:
	.ascii	"v_gyro_value_u8\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
