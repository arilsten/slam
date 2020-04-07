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
	.file	"ble_link_ctx_manager.c"
	.text
.Ltext0:
	.section	.text.blcm_link_ctx_get,"ax",%progbits
	.align	1
	.global	blcm_link_ctx_get
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	blcm_link_ctx_get, %function
blcm_link_ctx_get:
.LVL0:
.LFB222:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\ble\\ble_link_ctx_manager\\ble_link_ctx_manager.c"
	.loc 1 47 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 48 5 view .LVU1
	.loc 1 50 5 view .LVU2
	.loc 1 50 8 is_stmt 0 view .LVU3
	cbz	r2, .L3
	.loc 1 47 1 view .LVU4
	push	{r3, r4, r5, lr}
.LCFI0:
	mov	r4, r0
	mov	r5, r2
	.loc 1 56 9 is_stmt 1 view .LVU5
	.loc 1 56 22 is_stmt 0 view .LVU6
	movs	r3, #0
	str	r3, [r2]
	.loc 1 59 5 is_stmt 1 view .LVU7
	.loc 1 59 10 view .LVU8
	.loc 1 59 13 is_stmt 0 view .LVU9
	cbz	r0, .L4
	.loc 1 59 41 is_stmt 1 discriminator 2 view .LVU10
	.loc 1 60 5 discriminator 2 view .LVU11
	.loc 1 60 10 discriminator 2 view .LVU12
	.loc 1 60 35 is_stmt 0 discriminator 2 view .LVU13
	ldr	r3, [r0]
	.loc 1 60 13 discriminator 2 view .LVU14
	cbz	r3, .L5
	.loc 1 60 41 is_stmt 1 discriminator 2 view .LVU15
	.loc 1 61 5 discriminator 2 view .LVU16
	.loc 1 61 10 discriminator 2 view .LVU17
	.loc 1 61 35 is_stmt 0 discriminator 2 view .LVU18
	ldrh	r3, [r0, #6]
	.loc 1 61 13 discriminator 2 view .LVU19
	tst	r3, #3
	bne	.L6
	.loc 1 61 97 is_stmt 1 discriminator 2 view .LVU20
	.loc 1 63 5 discriminator 2 view .LVU21
	.loc 1 63 15 is_stmt 0 discriminator 2 view .LVU22
	mov	r0, r1
.LVL1:
	.loc 1 63 15 discriminator 2 view .LVU23
	bl	ble_conn_state_conn_idx
.LVL2:
	.loc 1 63 13 discriminator 2 view .LVU24
	uxtb	r0, r0
.LVL3:
	.loc 1 65 5 is_stmt 1 discriminator 2 view .LVU25
	.loc 1 65 8 is_stmt 0 discriminator 2 view .LVU26
	cmp	r0, #20
	beq	.L7
	.loc 1 70 5 is_stmt 1 view .LVU27
	.loc 1 70 38 is_stmt 0 view .LVU28
	ldrb	r3, [r4, #4]	@ zero_extendqisi2
	.loc 1 70 8 view .LVU29
	cmp	r3, r0
	bls	.L8
	.loc 1 75 5 is_stmt 1 view .LVU30
	.loc 1 75 60 is_stmt 0 view .LVU31
	ldr	r3, [r4]
	.loc 1 76 58 view .LVU32
	ldrh	r2, [r4, #6]
	.loc 1 75 20 view .LVU33
	mla	r0, r2, r0, r3
.LVL4:
	.loc 1 75 18 view .LVU34
	str	r0, [r5]
	.loc 1 77 5 is_stmt 1 view .LVU35
	.loc 1 77 12 is_stmt 0 view .LVU36
	movs	r0, #0
.L1:
	.loc 1 78 1 view .LVU37
	pop	{r3, r4, r5, pc}
.LVL5:
.L3:
.LCFI1:
	.loc 1 52 16 view .LVU38
	movs	r0, #14
.LVL6:
	.loc 1 78 1 view .LVU39
	bx	lr
.LVL7:
.L4:
.LCFI2:
	.loc 1 59 17 view .LVU40
	movs	r0, #14
.LVL8:
	.loc 1 59 17 view .LVU41
	b	.L1
.LVL9:
.L5:
	.loc 1 60 17 view .LVU42
	movs	r0, #14
.LVL10:
	.loc 1 60 17 view .LVU43
	b	.L1
.LVL11:
.L6:
	.loc 1 61 74 view .LVU44
	movs	r0, #7
.LVL12:
	.loc 1 61 74 view .LVU45
	b	.L1
.LVL13:
.L7:
	.loc 1 67 16 view .LVU46
	movs	r0, #5
.LVL14:
	.loc 1 67 16 view .LVU47
	b	.L1
.LVL15:
.L8:
	.loc 1 72 16 view .LVU48
	movs	r0, #4
.LVL16:
	.loc 1 72 16 view .LVU49
	b	.L1
.LFE222:
	.size	blcm_link_ctx_get, .-blcm_link_ctx_get
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
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.byte	0x4
	.4byte	.LCFI0-.LFB222
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
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0
	.byte	0xc3
	.byte	0xc4
	.byte	0xc5
	.byte	0xce
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
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
	.align	2
.LEFDE0:
	.text
.Letext0:
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\ble\\ble_link_ctx_manager\\ble_link_ctx_manager.h"
	.file 3 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.section	.debug_types,"G",%progbits,wt.b4d469ddd53ea9f7,comdat
	.4byte	0x82
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xb4
	.byte	0xd4
	.byte	0x69
	.byte	0xdd
	.byte	0xd5
	.byte	0x3e
	.byte	0xa9
	.byte	0xf7
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x2
	.byte	0x54
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x56
	.byte	0x12
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x57
	.byte	0x13
	.4byte	0x53
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x58
	.byte	0x14
	.4byte	0x58
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.4byte	0x5d
	.uleb128 0x4
	.4byte	0x5f
	.uleb128 0x4
	.4byte	0x6b
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x77
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x7e
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.byte	0
	.file 4 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0x8
	.4byte	.LASF11
	.byte	0x8
	.byte	0x4
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x9
	.4byte	.LASF7
	.byte	0x4
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x9
	.4byte	.LASF8
	.byte	0x4
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0xa
	.4byte	.LASF9
	.byte	0x4
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1d
	.uleb128 0xb
	.byte	0x4
	.4byte	0x61
	.uleb128 0xc
	.4byte	0x70
	.4byte	0x70
	.uleb128 0xd
	.4byte	0x76
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7d
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	0x82
	.uleb128 0x7
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
	.uleb128 0xf
	.4byte	.LASF12
	.byte	0x14
	.byte	0x4
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x11
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x55
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.4byte	0x5a
	.uleb128 0x12
	.4byte	.LASF15
	.byte	0x4
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
	.byte	0x4
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x60
	.uleb128 0xb
	.byte	0x4
	.4byte	0x65
	.uleb128 0xb
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x4
	.4byte	0x6f
	.uleb128 0x4
	.4byte	0x76
	.uleb128 0x4
	.4byte	0x86
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x4
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
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x4
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
	.byte	0x4
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x4
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb3
	.uleb128 0xb
	.byte	0x4
	.4byte	0xc7
	.uleb128 0xb
	.byte	0x4
	.4byte	0xd6
	.uleb128 0xb
	.byte	0x4
	.4byte	0xea
	.uleb128 0xb
	.byte	0x4
	.4byte	0xf9
	.uleb128 0xb
	.byte	0x4
	.4byte	0x112
	.uleb128 0xc
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0xd
	.4byte	0x130
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0xc
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0xc
	.4byte	0x130
	.4byte	0xea
	.uleb128 0xd
	.4byte	0x137
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0xc
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0xd
	.4byte	0x137
	.byte	0
	.uleb128 0xc
	.4byte	0x130
	.4byte	0x112
	.uleb128 0xd
	.4byte	0x13e
	.uleb128 0xd
	.4byte	0x144
	.uleb128 0xd
	.4byte	0x14b
	.byte	0
	.uleb128 0xc
	.4byte	0x130
	.4byte	0x130
	.uleb128 0xd
	.4byte	0x155
	.uleb128 0xd
	.4byte	0x15b
	.uleb128 0xd
	.4byte	0x144
	.uleb128 0xd
	.4byte	0x14b
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.uleb128 0xb
	.byte	0x4
	.4byte	0x161
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x13
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0xb
	.byte	0x4
	.4byte	0x144
	.uleb128 0xb
	.byte	0x4
	.4byte	0x168
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
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
	.byte	0x4
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x4
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x4
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x4
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x4
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x4
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x4
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x4
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x4
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x4
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x4
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x4
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x4
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x4
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x4
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x4
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x4
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x4
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x4
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x4
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x4
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x4
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x4
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x4
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x4
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x4
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x4
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x4
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x4
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x4
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x4
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x4
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x4
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
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
	.uleb128 0xf
	.4byte	.LASF62
	.byte	0x8
	.byte	0x4
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x4
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x4
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.byte	0
	.file 5 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 6 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 7 "../../../../../../components/libraries/util/sdk_errors.h"
	.file 8 "../../../../../../components/libraries/util/app_util.h"
	.file 9 "../../../../../../components/ble/common/ble_conn_state.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x34d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0xc
	.4byte	.LASF103
	.4byte	.LASF104
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF65
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x3c
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.4byte	0x3c
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF66
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x60
	.uleb128 0x4
	.4byte	0x4f
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF6
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0x3
	.byte	0x37
	.byte	0x14
	.4byte	0x78
	.uleb128 0x15
	.4byte	0x67
	.uleb128 0xe
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x8b
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF69
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF70
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x744
	.byte	0x19
	.4byte	0x73
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x6
	.byte	0x21
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	0xc2
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x4
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
	.uleb128 0x4
	.4byte	0xce
	.uleb128 0x12
	.4byte	.LASF15
	.byte	0x4
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
	.uleb128 0x4
	.4byte	0xe3
	.uleb128 0x18
	.4byte	.LASF73
	.byte	0x4
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
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xf3
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x110
	.byte	0x25
	.4byte	0xde
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x111
	.byte	0x25
	.4byte	0xde
	.uleb128 0x10
	.4byte	0x43
	.4byte	0x140
	.uleb128 0x11
	.4byte	0x8b
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	0x130
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x113
	.byte	0x1c
	.4byte	0x140
	.uleb128 0x10
	.4byte	0xc9
	.4byte	0x15d
	.uleb128 0x19
	.byte	0
	.uleb128 0x4
	.4byte	0x152
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x115
	.byte	0x13
	.4byte	0x15d
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x116
	.byte	0x13
	.4byte	0x15d
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x117
	.byte	0x13
	.4byte	0x15d
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x118
	.byte	0x13
	.4byte	0x15d
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x11a
	.byte	0x13
	.4byte	0x15d
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x11b
	.byte	0x13
	.4byte	0x15d
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x11c
	.byte	0x13
	.4byte	0x15d
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x11d
	.byte	0x13
	.4byte	0x15d
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x11e
	.byte	0x13
	.4byte	0x15d
	.uleb128 0x16
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x11f
	.byte	0x13
	.4byte	0x15d
	.uleb128 0xc
	.4byte	0x78
	.4byte	0x1f3
	.uleb128 0xd
	.4byte	0x1f3
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1fe
	.uleb128 0x1a
	.4byte	.LASF105
	.uleb128 0x4
	.4byte	0x1f9
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x135
	.byte	0xe
	.4byte	0x210
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1e4
	.uleb128 0xc
	.4byte	0x78
	.4byte	0x225
	.uleb128 0xd
	.4byte	0x225
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x1f9
	.uleb128 0x16
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x136
	.byte	0xe
	.4byte	0x238
	.uleb128 0xb
	.byte	0x4
	.4byte	0x216
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x4
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
	.uleb128 0x16
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x157
	.byte	0x1f
	.4byte	0x25c
	.uleb128 0xb
	.byte	0x4
	.4byte	0x23e
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0x7
	.byte	0x9e
	.byte	0x12
	.4byte	0x7f
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x8
	.byte	0x53
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x17
	.4byte	.LASF94
	.byte	0x8
	.byte	0x54
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x17
	.4byte	.LASF95
	.byte	0x8
	.byte	0x72
	.byte	0x13
	.4byte	0x292
	.uleb128 0xb
	.byte	0x4
	.4byte	0x7f
	.uleb128 0x17
	.4byte	.LASF96
	.byte	0x8
	.byte	0x73
	.byte	0x11
	.4byte	0x7f
	.uleb128 0x12
	.4byte	.LASF97
	.byte	0x2
	.byte	0x59
	.byte	0x3
	.byte	0xb4
	.byte	0xd4
	.byte	0x69
	.byte	0xdd
	.byte	0xd5
	.byte	0x3e
	.byte	0xa9
	.byte	0xf7
	.uleb128 0x4
	.4byte	0x2a4
	.uleb128 0x1c
	.4byte	.LASF106
	.byte	0x1
	.byte	0x2c
	.byte	0xc
	.4byte	0x262
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x32d
	.uleb128 0x1d
	.4byte	.LASF98
	.byte	0x1
	.byte	0x2c
	.byte	0x44
	.4byte	0x333
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x1d
	.4byte	.LASF99
	.byte	0x1
	.byte	0x2d
	.byte	0x2d
	.4byte	0x5b
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x1d
	.4byte	.LASF100
	.byte	0x1
	.byte	0x2e
	.byte	0x2c
	.4byte	0x33e
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x1e
	.4byte	.LASF101
	.byte	0x1
	.byte	0x30
	.byte	0xd
	.4byte	0x30
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x1f
	.4byte	.LVL2
	.4byte	0x343
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0x2b4
	.uleb128 0x4
	.4byte	0x32d
	.uleb128 0xb
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x4
	.4byte	0x338
	.uleb128 0x20
	.4byte	.LASF107
	.4byte	.LASF107
	.byte	0x9
	.2byte	0x115
	.byte	0xa
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x1d
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU39
	.uleb128 .LVU39
	.uleb128 .LVU40
	.uleb128 .LVU40
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU42
	.uleb128 .LVU42
	.uleb128 .LVU43
	.uleb128 .LVU43
	.uleb128 .LVU44
	.uleb128 .LVU44
	.uleb128 .LVU45
	.uleb128 .LVU45
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL12
	.4byte	.LFE222
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 0
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 0
.LLST1:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2-1
	.4byte	.LVL5
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL5
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL13
	.4byte	.LFE222
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU24
	.uleb128 .LVU24
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 0
.LLST2:
	.4byte	.LVL0
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL2-1
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL5
	.4byte	.LVL13
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL13
	.4byte	.LFE222
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU25
	.uleb128 .LVU34
	.uleb128 .LVU46
	.uleb128 .LVU47
	.uleb128 .LVU48
	.uleb128 .LVU49
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LVL14
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x351
	.4byte	0x2b9
	.ascii	"blcm_link_ctx_get\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x18f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x351
	.4byte	0x29
	.ascii	"signed char\000"
	.4byte	0x3c
	.ascii	"unsigned char\000"
	.4byte	0x30
	.ascii	"uint8_t\000"
	.4byte	0x48
	.ascii	"short int\000"
	.4byte	0x60
	.ascii	"short unsigned int\000"
	.4byte	0x4f
	.ascii	"uint16_t\000"
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
	.4byte	0xbb
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xc2
	.ascii	"char\000"
	.4byte	0xce
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xe3
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x23e
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x262
	.ascii	"ret_code_t\000"
	.4byte	0x2a4
	.ascii	"blcm_link_ctx_storage_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB222
	.4byte	.LFE222-.LFB222
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB222
	.4byte	.LFE222
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
	.uleb128 0x28
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x3
	.byte	0x4
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x9
	.file 10 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0xa
	.byte	0x4
	.file 11 "../../../../../../components/softdevice/s132/headers/ble.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0xb
	.file 12 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0xc
	.byte	0x4
	.file 13 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xd
	.byte	0x4
	.file 14 "../../../../../../components/softdevice/s132/headers/ble_err.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0xe
	.byte	0x4
	.file 15 "../../../../../../components/softdevice/s132/headers/ble_gap.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0xf
	.file 16 "../../../../../../components/softdevice/s132/headers/ble_hci.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x10
	.byte	0x4
	.file 17 "../../../../../../components/softdevice/s132/headers/ble_ranges.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x11
	.byte	0x4
	.file 18 "../../../../../../components/softdevice/s132/headers/ble_types.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.file 19 "../../../../../../components/softdevice/s132/headers/ble_l2cap.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x13
	.byte	0x4
	.file 20 "../../../../../../components/softdevice/s132/headers/ble_gatt.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x14
	.byte	0x4
	.file 21 "../../../../../../components/softdevice/s132/headers/ble_gattc.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x15
	.file 22 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x16
	.file 23 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x17
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x5
	.file 24 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x18
	.file 25 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.file 26 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x1a
	.byte	0x4
	.file 27 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x1b
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.file 28 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x1c
	.byte	0x4
	.file 29 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x1d
	.byte	0x4
	.file 30 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x1e
	.byte	0x4
	.file 31 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 32 "../../../../../../components/softdevice/s132/headers/ble_gatts.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x20
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x45
	.uleb128 0xf
	.byte	0x4
	.file 33 "../../../../../../components/libraries/atomic/nrf_atomic.h"
	.byte	0x3
	.uleb128 0x46
	.uleb128 0x21
	.file 34 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x22
	.file 35 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x23
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.file 36 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x24
	.byte	0x4
	.file 37 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x25
	.byte	0x4
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x1f
	.byte	0x4
	.file 38 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x26
	.byte	0x4
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x7
	.byte	0x3
	.uleb128 0x49
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x8
	.file 39 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x27
	.byte	0x4
	.byte	0x4
	.file 40 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x28
	.file 41 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x29
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF25:
	.ascii	"__towupper\000"
.LASF43:
	.ascii	"p_sep_by_space\000"
.LASF62:
	.ascii	"__mbstate_s\000"
.LASF24:
	.ascii	"__iswctype\000"
.LASF34:
	.ascii	"currency_symbol\000"
.LASF91:
	.ascii	"__RAL_error_decoder_head\000"
.LASF101:
	.ascii	"conn_id\000"
.LASF102:
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
.LASF103:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\components\\ble\\ble_l"
	.ascii	"ink_ctx_manager\\ble_link_ctx_manager.c\000"
.LASF66:
	.ascii	"short int\000"
.LASF76:
	.ascii	"__RAL_codeset_utf8\000"
.LASF56:
	.ascii	"month_names\000"
.LASF64:
	.ascii	"__wchar\000"
.LASF45:
	.ascii	"n_sep_by_space\000"
.LASF92:
	.ascii	"ret_code_t\000"
.LASF47:
	.ascii	"n_sign_posn\000"
.LASF60:
	.ascii	"time_format\000"
.LASF19:
	.ascii	"__RAL_locale_data_t\000"
.LASF59:
	.ascii	"date_format\000"
.LASF80:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF42:
	.ascii	"p_cs_precedes\000"
.LASF100:
	.ascii	"pp_ctx_data\000"
.LASF106:
	.ascii	"blcm_link_ctx_get\000"
.LASF3:
	.ascii	"uint8_t\000"
.LASF53:
	.ascii	"int_n_sign_posn\000"
.LASF82:
	.ascii	"__RAL_data_utf8_period\000"
.LASF50:
	.ascii	"int_p_sep_by_space\000"
.LASF11:
	.ascii	"__RAL_error_decoder_s\000"
.LASF90:
	.ascii	"__RAL_error_decoder_t\000"
.LASF35:
	.ascii	"mon_decimal_point\000"
.LASF30:
	.ascii	"decimal_point\000"
.LASF40:
	.ascii	"int_frac_digits\000"
.LASF23:
	.ascii	"__tolower\000"
.LASF18:
	.ascii	"codeset\000"
.LASF69:
	.ascii	"long long int\000"
.LASF13:
	.ascii	"__category\000"
.LASF32:
	.ascii	"grouping\000"
.LASF28:
	.ascii	"__mbtowc\000"
.LASF22:
	.ascii	"__toupper\000"
.LASF29:
	.ascii	"long int\000"
.LASF2:
	.ascii	"link_ctx_size\000"
.LASF36:
	.ascii	"mon_thousands_sep\000"
.LASF79:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF93:
	.ascii	"__StackTop\000"
.LASF96:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF26:
	.ascii	"__towlower\000"
.LASF54:
	.ascii	"day_names\000"
.LASF99:
	.ascii	"conn_handle\000"
.LASF16:
	.ascii	"name\000"
.LASF46:
	.ascii	"p_sign_posn\000"
.LASF9:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF88:
	.ascii	"__user_set_time_of_day\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF74:
	.ascii	"__RAL_c_locale\000"
.LASF38:
	.ascii	"positive_sign\000"
.LASF84:
	.ascii	"__RAL_data_utf8_space\000"
.LASF65:
	.ascii	"signed char\000"
.LASF70:
	.ascii	"long long unsigned int\000"
.LASF68:
	.ascii	"uint32_t\000"
.LASF37:
	.ascii	"mon_grouping\000"
.LASF14:
	.ascii	"unsigned int\000"
.LASF4:
	.ascii	"uint16_t\000"
.LASF58:
	.ascii	"am_pm_indicator\000"
.LASF75:
	.ascii	"__RAL_codeset_ascii\000"
.LASF33:
	.ascii	"int_curr_symbol\000"
.LASF85:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF6:
	.ascii	"short unsigned int\000"
.LASF31:
	.ascii	"thousands_sep\000"
.LASF10:
	.ascii	"char\000"
.LASF39:
	.ascii	"negative_sign\000"
.LASF67:
	.ascii	"int32_t\000"
.LASF44:
	.ascii	"n_cs_precedes\000"
.LASF61:
	.ascii	"date_time_format\000"
.LASF72:
	.ascii	"SystemCoreClock\000"
.LASF0:
	.ascii	"p_ctx_data_pool\000"
.LASF17:
	.ascii	"data\000"
.LASF41:
	.ascii	"frac_digits\000"
.LASF77:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF87:
	.ascii	"__RAL_data_empty_string\000"
.LASF52:
	.ascii	"int_p_sign_posn\000"
.LASF48:
	.ascii	"int_p_cs_precedes\000"
.LASF105:
	.ascii	"timeval\000"
.LASF78:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF57:
	.ascii	"abbrev_month_names\000"
.LASF20:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF1:
	.ascii	"max_links_cnt\000"
.LASF73:
	.ascii	"__RAL_global_locale\000"
.LASF97:
	.ascii	"blcm_link_ctx_storage_t\000"
.LASF98:
	.ascii	"p_link_ctx_storage\000"
.LASF15:
	.ascii	"__RAL_locale_t\000"
.LASF81:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF107:
	.ascii	"ble_conn_state_conn_idx\000"
.LASF83:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF89:
	.ascii	"__user_get_time_of_day\000"
.LASF94:
	.ascii	"__StackLimit\000"
.LASF49:
	.ascii	"int_n_cs_precedes\000"
.LASF71:
	.ascii	"ITM_RxBuffer\000"
.LASF21:
	.ascii	"__isctype\000"
.LASF63:
	.ascii	"__state\000"
.LASF86:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF7:
	.ascii	"decode\000"
.LASF55:
	.ascii	"abbrev_day_names\000"
.LASF27:
	.ascii	"__wctomb\000"
.LASF95:
	.ascii	"_vectors\000"
.LASF8:
	.ascii	"next\000"
.LASF12:
	.ascii	"__locale_s\000"
.LASF104:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_application-master\\\\pca10040\\\\"
	.ascii	"s132\\\\ses\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
