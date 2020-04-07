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
	.file	"nrf_drv_ppi.c"
	.text
.Ltext0:
	.section	.text.nrf_drv_ppi_init,"ax",%progbits
	.align	1
	.global	nrf_drv_ppi_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_drv_ppi_init, %function
nrf_drv_ppi_init:
.LFB237:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\integration\\nrfx\\legacy\\nrf_drv_ppi.c"
	.loc 1 46 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 47 5 view .LVU1
	.loc 1 47 21 is_stmt 0 view .LVU2
	ldr	r3, .L4
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 47 8 view .LVU3
	cbnz	r3, .L3
	.loc 1 49 9 is_stmt 1 view .LVU4
	.loc 1 49 21 is_stmt 0 view .LVU5
	ldr	r3, .L4
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 55 5 is_stmt 1 view .LVU6
	.loc 1 55 12 is_stmt 0 view .LVU7
	movs	r0, #0
	bx	lr
.L3:
	.loc 1 53 16 view .LVU8
	movs	r0, #133
	.loc 1 56 1 view .LVU9
	bx	lr
.L5:
	.align	2
.L4:
	.word	.LANCHOR0
.LFE237:
	.size	nrf_drv_ppi_init, .-nrf_drv_ppi_init
	.section	.text.nrf_drv_ppi_uninit,"ax",%progbits
	.align	1
	.global	nrf_drv_ppi_uninit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_drv_ppi_uninit, %function
nrf_drv_ppi_uninit:
.LFB238:
	.loc 1 59 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 60 5 view .LVU11
	.loc 1 60 21 is_stmt 0 view .LVU12
	ldr	r3, .L13
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 60 8 view .LVU13
	cbz	r3, .L8
	.loc 1 59 1 view .LVU14
	push	{r4, lr}
.LCFI0:
	.loc 1 65 5 is_stmt 1 view .LVU15
	.loc 1 65 17 is_stmt 0 view .LVU16
	movs	r4, #0
	ldr	r3, .L13
	strb	r4, [r3]
	.loc 1 66 5 is_stmt 1 view .LVU17
	bl	nrfx_ppi_free_all
.LVL0:
	.loc 1 67 5 view .LVU18
	.loc 1 67 12 is_stmt 0 view .LVU19
	mov	r0, r4
	.loc 1 68 1 view .LVU20
	pop	{r4, pc}
.L8:
.LCFI1:
	.loc 1 62 16 view .LVU21
	movs	r0, #8
	.loc 1 68 1 view .LVU22
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0
.LFE238:
	.size	nrf_drv_ppi_uninit, .-nrf_drv_ppi_uninit
	.section	.bss.m_drv_state,"aw",%nobits
	.set	.LANCHOR0,. + 0
	.type	m_drv_state, %object
	.size	m_drv_state, 1
m_drv_state:
	.space	1
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
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.byte	0x4
	.4byte	.LCFI0-.LFB238
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0
	.byte	0xc4
	.byte	0xce
	.align	2
.LEFDE2:
	.text
.Letext0:
	.file 2 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
	.file 3 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
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
	.byte	0x2
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	0x4b
	.uleb128 0x4
	.4byte	0x5b
	.uleb128 0x5
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0x6
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.byte	0
	.file 4 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
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
	.uleb128 0x9
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x4
	.byte	0xad
	.byte	0x1
	.4byte	0x3e
	.uleb128 0xa
	.4byte	.LASF4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF5
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF6
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
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
	.4byte	.LASF12
	.byte	0x8
	.byte	0x5
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0xc
	.4byte	.LASF8
	.byte	0x5
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0xc
	.4byte	.LASF9
	.byte	0x5
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF10
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
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
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
	.4byte	.LASF13
	.byte	0x14
	.byte	0x5
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x5
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x6
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x55
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x12
	.4byte	0x5a
	.uleb128 0x14
	.4byte	.LASF15
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
	.uleb128 0x2
	.byte	0xc
	.byte	0x5
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF18
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
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x14
	.4byte	.LASF19
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
	.4byte	.LASF20
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
	.uleb128 0x2
	.byte	0x20
	.byte	0x5
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF28
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
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.uleb128 0xe
	.byte	0x4
	.4byte	0x161
	.uleb128 0x8
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
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
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
	.uleb128 0x2
	.byte	0x58
	.byte	0x5
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x5
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x5
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x5
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x5
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x5
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x5
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x5
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x5
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x5
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x5
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x5
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x5
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x5
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x5
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x5
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x5
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x5
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x5
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x5
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x5
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x5
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x5
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x5
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x5
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x5
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x5
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x5
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x5
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
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
	.4byte	.LASF62
	.byte	0x8
	.byte	0x5
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x5
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
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
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.byte	0
	.file 6 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 7 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 8 "../../../../../../components/libraries/util/app_util.h"
	.file 9 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 10 "../../../../../../components/libraries/util/sdk_errors.h"
	.file 11 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x345
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x16
	.4byte	.LASF106
	.byte	0xc
	.4byte	.LASF107
	.4byte	.LASF108
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF65
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x12
	.4byte	0x30
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF66
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF67
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x3
	.byte	0x37
	.byte	0x14
	.4byte	0x5b
	.uleb128 0x4
	.4byte	0x4a
	.uleb128 0x11
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x6e
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF69
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF70
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF11
	.uleb128 0x12
	.4byte	0x8a
	.uleb128 0x14
	.4byte	.LASF20
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
	.4byte	0x96
	.uleb128 0x14
	.4byte	.LASF15
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
	.4byte	0xab
	.uleb128 0x17
	.4byte	.LASF71
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
	.uleb128 0x18
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xbb
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x110
	.byte	0x25
	.4byte	0xa6
	.uleb128 0x18
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x111
	.byte	0x25
	.4byte	0xa6
	.uleb128 0x5
	.4byte	0x37
	.4byte	0x108
	.uleb128 0x6
	.4byte	0x6e
	.byte	0x7f
	.byte	0
	.uleb128 0x12
	.4byte	0xf8
	.uleb128 0x18
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x113
	.byte	0x1c
	.4byte	0x108
	.uleb128 0x5
	.4byte	0x91
	.4byte	0x125
	.uleb128 0x19
	.byte	0
	.uleb128 0x12
	.4byte	0x11a
	.uleb128 0x18
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x115
	.byte	0x13
	.4byte	0x125
	.uleb128 0x18
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x116
	.byte	0x13
	.4byte	0x125
	.uleb128 0x18
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x117
	.byte	0x13
	.4byte	0x125
	.uleb128 0x18
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x118
	.byte	0x13
	.4byte	0x125
	.uleb128 0x18
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x11a
	.byte	0x13
	.4byte	0x125
	.uleb128 0x18
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x11b
	.byte	0x13
	.4byte	0x125
	.uleb128 0x18
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x11c
	.byte	0x13
	.4byte	0x125
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0x5
	.2byte	0x11d
	.byte	0x13
	.4byte	0x125
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0x5
	.2byte	0x11e
	.byte	0x13
	.4byte	0x125
	.uleb128 0x18
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x11f
	.byte	0x13
	.4byte	0x125
	.uleb128 0xf
	.4byte	0x5b
	.4byte	0x1bb
	.uleb128 0x10
	.4byte	0x1bb
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1c6
	.uleb128 0x1a
	.4byte	.LASF100
	.uleb128 0x12
	.4byte	0x1c1
	.uleb128 0x18
	.4byte	.LASF86
	.byte	0x5
	.2byte	0x135
	.byte	0xe
	.4byte	0x1d8
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1ac
	.uleb128 0xf
	.4byte	0x5b
	.4byte	0x1ed
	.uleb128 0x10
	.4byte	0x1ed
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1c1
	.uleb128 0x18
	.4byte	.LASF87
	.byte	0x5
	.2byte	0x136
	.byte	0xe
	.4byte	0x200
	.uleb128 0xe
	.byte	0x4
	.4byte	0x1de
	.uleb128 0x1b
	.4byte	.LASF88
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
	.uleb128 0x18
	.4byte	.LASF89
	.byte	0x5
	.2byte	0x157
	.byte	0x1f
	.4byte	0x224
	.uleb128 0xe
	.byte	0x4
	.4byte	0x206
	.uleb128 0x18
	.4byte	.LASF90
	.byte	0x6
	.2byte	0x744
	.byte	0x19
	.4byte	0x56
	.uleb128 0x1c
	.4byte	.LASF91
	.byte	0x7
	.byte	0x21
	.byte	0x11
	.4byte	0x62
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x4
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
	.uleb128 0x1c
	.4byte	.LASF93
	.byte	0x8
	.byte	0x53
	.byte	0x11
	.4byte	0x62
	.uleb128 0x1c
	.4byte	.LASF94
	.byte	0x8
	.byte	0x54
	.byte	0x11
	.4byte	0x62
	.uleb128 0x1c
	.4byte	.LASF95
	.byte	0x8
	.byte	0x72
	.byte	0x13
	.4byte	0x277
	.uleb128 0xe
	.byte	0x4
	.4byte	0x62
	.uleb128 0x1c
	.4byte	.LASF96
	.byte	0x8
	.byte	0x73
	.byte	0x11
	.4byte	0x62
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x2
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
	.uleb128 0x1c
	.4byte	.LASF98
	.byte	0x2
	.byte	0x75
	.byte	0x19
	.4byte	0x289
	.uleb128 0xd
	.4byte	.LASF99
	.byte	0x9
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2b2
	.uleb128 0x1a
	.4byte	.LASF101
	.uleb128 0x18
	.4byte	.LASF102
	.byte	0x9
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2c4
	.uleb128 0xe
	.byte	0x4
	.4byte	0x2a5
	.uleb128 0x18
	.4byte	.LASF103
	.byte	0x9
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2c4
	.uleb128 0x18
	.4byte	.LASF104
	.byte	0x9
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2c4
	.uleb128 0x7
	.4byte	.LASF105
	.byte	0xa
	.byte	0x9e
	.byte	0x12
	.4byte	0x62
	.uleb128 0x1d
	.4byte	.LASF109
	.byte	0x1
	.byte	0x2b
	.byte	0x19
	.4byte	0x243
	.uleb128 0x5
	.byte	0x3
	.4byte	m_drv_state
	.uleb128 0x1e
	.4byte	.LASF110
	.byte	0x1
	.byte	0x3a
	.byte	0xc
	.4byte	0x2e4
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x326
	.uleb128 0x1f
	.4byte	.LVL0
	.4byte	0x33c
	.byte	0
	.uleb128 0x20
	.4byte	.LASF111
	.byte	0x1
	.byte	0x2d
	.byte	0xc
	.4byte	0x2e4
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x21
	.4byte	.LASF112
	.4byte	.LASF112
	.byte	0xb
	.byte	0x51
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x9
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
	.uleb128 0x17
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
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.section	.debug_pubnames,"",%progbits
	.4byte	0xb8
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x349
	.4byte	0x2b
	.ascii	"NRFX_DRV_STATE_UNINITIALIZED\000"
	.4byte	0x31
	.ascii	"NRFX_DRV_STATE_INITIALIZED\000"
	.4byte	0x37
	.ascii	"NRFX_DRV_STATE_POWERED_ON\000"
	.4byte	0x2f0
	.ascii	"m_drv_state\000"
	.4byte	0x2f0
	.ascii	"m_drv_state\000"
	.4byte	0x302
	.ascii	"nrf_drv_ppi_uninit\000"
	.4byte	0x326
	.ascii	"nrf_drv_ppi_init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x18d
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x349
	.4byte	0x29
	.ascii	"signed char\000"
	.4byte	0x30
	.ascii	"unsigned char\000"
	.4byte	0x3c
	.ascii	"short int\000"
	.4byte	0x43
	.ascii	"short unsigned int\000"
	.4byte	0x5b
	.ascii	"int\000"
	.4byte	0x4a
	.ascii	"int32_t\000"
	.4byte	0x6e
	.ascii	"unsigned int\000"
	.4byte	0x62
	.ascii	"uint32_t\000"
	.4byte	0x75
	.ascii	"long long int\000"
	.4byte	0x7c
	.ascii	"long long unsigned int\000"
	.4byte	0x83
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0x8a
	.ascii	"char\000"
	.4byte	0x96
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xab
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x206
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x243
	.ascii	"nrfx_drv_state_t\000"
	.4byte	0x289
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2a5
	.ascii	"FILE\000"
	.4byte	0x2e4
	.ascii	"ret_code_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB237
	.4byte	.LFE237
	.4byte	.LFB238
	.4byte	.LFE238
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
	.file 12 "C:\\nRF5_SDK_15.0.0_a53641a\\integration\\nrfx\\legacy\\nrf_drv_ppi.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0xb
	.file 13 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0xd
	.file 14 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0xe
	.file 15 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x3
	.byte	0x4
	.file 16 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.file 17 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x11
	.byte	0x4
	.file 18 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x12
	.file 19 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x13
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x6
	.file 20 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x14
	.file 21 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.file 22 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x16
	.byte	0x4
	.file 23 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.file 24 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x18
	.byte	0x4
	.file 25 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x19
	.byte	0x4
	.file 26 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x1a
	.byte	0x4
	.file 27 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x1b
	.byte	0x4
	.byte	0x4
	.file 28 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x1c
	.file 29 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x1d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 30 "../../../../../../integration/nrfx/nrfx_glue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x1e
	.file 31 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x1f
	.byte	0x4
	.file 32 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x20
	.file 33 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x21
	.byte	0x4
	.byte	0x4
	.file 34 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x22
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x1b
	.byte	0x4
	.file 35 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb6
	.uleb128 0x23
	.byte	0x4
	.file 36 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0xb7
	.uleb128 0x24
	.file 37 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x25
	.file 38 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x26
	.byte	0x4
	.file 39 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x27
	.byte	0x4
	.file 40 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x28
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x2
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x22
	.byte	0x4
	.file 41 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x29
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x9
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x27
	.byte	0x4
	.byte	0x4
	.file 42 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2a
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 43 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x2b
	.byte	0x4
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0xa
	.byte	0x4
	.file 44 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x2c
	.file 45 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x2d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 46 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0x4
	.byte	0x4
	.file 47 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x2f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF43:
	.ascii	"p_sep_by_space\000"
.LASF62:
	.ascii	"__mbstate_s\000"
.LASF24:
	.ascii	"__iswctype\000"
.LASF34:
	.ascii	"currency_symbol\000"
.LASF89:
	.ascii	"__RAL_error_decoder_head\000"
.LASF25:
	.ascii	"__towupper\000"
.LASF106:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF51:
	.ascii	"int_n_sep_by_space\000"
.LASF66:
	.ascii	"short int\000"
.LASF74:
	.ascii	"__RAL_codeset_utf8\000"
.LASF56:
	.ascii	"month_names\000"
.LASF64:
	.ascii	"__wchar\000"
.LASF4:
	.ascii	"NRFX_DRV_STATE_UNINITIALIZED\000"
.LASF111:
	.ascii	"nrf_drv_ppi_init\000"
.LASF97:
	.ascii	"nrf_nvic_state_t\000"
.LASF45:
	.ascii	"n_sep_by_space\000"
.LASF105:
	.ascii	"ret_code_t\000"
.LASF47:
	.ascii	"n_sign_posn\000"
.LASF60:
	.ascii	"time_format\000"
.LASF19:
	.ascii	"__RAL_locale_data_t\000"
.LASF59:
	.ascii	"date_format\000"
.LASF78:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF42:
	.ascii	"p_cs_precedes\000"
.LASF23:
	.ascii	"__tolower\000"
.LASF53:
	.ascii	"int_n_sign_posn\000"
.LASF80:
	.ascii	"__RAL_data_utf8_period\000"
.LASF6:
	.ascii	"NRFX_DRV_STATE_POWERED_ON\000"
.LASF12:
	.ascii	"__RAL_error_decoder_s\000"
.LASF88:
	.ascii	"__RAL_error_decoder_t\000"
.LASF35:
	.ascii	"mon_decimal_point\000"
.LASF30:
	.ascii	"decimal_point\000"
.LASF92:
	.ascii	"nrfx_drv_state_t\000"
.LASF0:
	.ascii	"__irq_masks\000"
.LASF40:
	.ascii	"int_frac_digits\000"
.LASF104:
	.ascii	"stderr\000"
.LASF18:
	.ascii	"codeset\000"
.LASF69:
	.ascii	"long long int\000"
.LASF14:
	.ascii	"__category\000"
.LASF32:
	.ascii	"grouping\000"
.LASF22:
	.ascii	"__toupper\000"
.LASF29:
	.ascii	"long int\000"
.LASF44:
	.ascii	"n_cs_precedes\000"
.LASF36:
	.ascii	"mon_thousands_sep\000"
.LASF77:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF93:
	.ascii	"__StackTop\000"
.LASF96:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF26:
	.ascii	"__towlower\000"
.LASF39:
	.ascii	"negative_sign\000"
.LASF16:
	.ascii	"name\000"
.LASF109:
	.ascii	"m_drv_state\000"
.LASF46:
	.ascii	"p_sign_posn\000"
.LASF10:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF86:
	.ascii	"__user_set_time_of_day\000"
.LASF103:
	.ascii	"stdout\000"
.LASF7:
	.ascii	"unsigned char\000"
.LASF72:
	.ascii	"__RAL_c_locale\000"
.LASF112:
	.ascii	"nrfx_ppi_free_all\000"
.LASF107:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\integration\\nrfx\\leg"
	.ascii	"acy\\nrf_drv_ppi.c\000"
.LASF38:
	.ascii	"positive_sign\000"
.LASF82:
	.ascii	"__RAL_data_utf8_space\000"
.LASF65:
	.ascii	"signed char\000"
.LASF70:
	.ascii	"long long unsigned int\000"
.LASF2:
	.ascii	"uint32_t\000"
.LASF37:
	.ascii	"mon_grouping\000"
.LASF3:
	.ascii	"unsigned int\000"
.LASF54:
	.ascii	"day_names\000"
.LASF58:
	.ascii	"am_pm_indicator\000"
.LASF73:
	.ascii	"__RAL_codeset_ascii\000"
.LASF33:
	.ascii	"int_curr_symbol\000"
.LASF83:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF67:
	.ascii	"short unsigned int\000"
.LASF31:
	.ascii	"thousands_sep\000"
.LASF11:
	.ascii	"char\000"
.LASF68:
	.ascii	"int32_t\000"
.LASF1:
	.ascii	"__cr_flag\000"
.LASF61:
	.ascii	"date_time_format\000"
.LASF91:
	.ascii	"SystemCoreClock\000"
.LASF17:
	.ascii	"data\000"
.LASF41:
	.ascii	"frac_digits\000"
.LASF75:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF85:
	.ascii	"__RAL_data_empty_string\000"
.LASF49:
	.ascii	"int_n_cs_precedes\000"
.LASF52:
	.ascii	"int_p_sign_posn\000"
.LASF57:
	.ascii	"abbrev_month_names\000"
.LASF48:
	.ascii	"int_p_cs_precedes\000"
.LASF110:
	.ascii	"nrf_drv_ppi_uninit\000"
.LASF100:
	.ascii	"timeval\000"
.LASF76:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF101:
	.ascii	"__RAL_FILE\000"
.LASF5:
	.ascii	"NRFX_DRV_STATE_INITIALIZED\000"
.LASF20:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF102:
	.ascii	"stdin\000"
.LASF71:
	.ascii	"__RAL_global_locale\000"
.LASF28:
	.ascii	"__mbtowc\000"
.LASF15:
	.ascii	"__RAL_locale_t\000"
.LASF79:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF98:
	.ascii	"nrf_nvic_state\000"
.LASF81:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF87:
	.ascii	"__user_get_time_of_day\000"
.LASF94:
	.ascii	"__StackLimit\000"
.LASF99:
	.ascii	"FILE\000"
.LASF90:
	.ascii	"ITM_RxBuffer\000"
.LASF21:
	.ascii	"__isctype\000"
.LASF63:
	.ascii	"__state\000"
.LASF84:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF8:
	.ascii	"decode\000"
.LASF55:
	.ascii	"abbrev_day_names\000"
.LASF27:
	.ascii	"__wctomb\000"
.LASF95:
	.ascii	"_vectors\000"
.LASF9:
	.ascii	"next\000"
.LASF13:
	.ascii	"__locale_s\000"
.LASF50:
	.ascii	"int_p_sep_by_space\000"
.LASF108:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_application-master\\\\pca10040\\\\"
	.ascii	"s132\\\\ses\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
