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
	.file	"sensorsim.c"
	.text
.Ltext0:
	.section	.text.sensorsim_init,"ax",%progbits
	.align	1
	.global	sensorsim_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sensorsim_init, %function
sensorsim_init:
.LVL0:
.LFB0:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.c"
	.loc 1 45 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 46 5 view .LVU1
	.loc 1 46 14 is_stmt 0 view .LVU2
	ldrb	r3, [r1, #12]	@ zero_extendqisi2
	.loc 1 46 8 view .LVU3
	cbz	r3, .L2
	.loc 1 48 9 is_stmt 1 view .LVU4
	.loc 1 48 37 is_stmt 0 view .LVU5
	ldr	r3, [r1, #4]
	.loc 1 48 30 view .LVU6
	str	r3, [r0]
	.loc 1 49 9 is_stmt 1 view .LVU7
	.loc 1 49 32 is_stmt 0 view .LVU8
	movs	r3, #0
	strb	r3, [r0, #4]
	bx	lr
.L2:
	.loc 1 53 9 is_stmt 1 view .LVU9
	.loc 1 53 37 is_stmt 0 view .LVU10
	ldr	r3, [r1]
	.loc 1 53 30 view .LVU11
	str	r3, [r0]
	.loc 1 54 9 is_stmt 1 view .LVU12
	.loc 1 54 32 is_stmt 0 view .LVU13
	movs	r3, #1
	strb	r3, [r0, #4]
	.loc 1 56 1 view .LVU14
	bx	lr
.LFE0:
	.size	sensorsim_init, .-sensorsim_init
	.section	.text.sensorsim_increment,"ax",%progbits
	.align	1
	.global	sensorsim_increment
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sensorsim_increment, %function
sensorsim_increment:
.LVL1:
.LFB2:
	.loc 1 75 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 75 1 is_stmt 0 view .LVU16
	push	{r4}
.LCFI0:
	.loc 1 76 5 is_stmt 1 view .LVU17
	.loc 1 76 14 is_stmt 0 view .LVU18
	ldr	r2, [r1, #4]
	.loc 1 76 29 view .LVU19
	ldr	r3, [r0]
	.loc 1 76 20 view .LVU20
	subs	r4, r2, r3
	.loc 1 76 50 view .LVU21
	ldr	r1, [r1, #8]
.LVL2:
	.loc 1 76 8 view .LVU22
	cmp	r4, r1
	bls	.L5
	.loc 1 78 9 is_stmt 1 view .LVU23
	.loc 1 78 30 is_stmt 0 view .LVU24
	add	r3, r3, r1
	str	r3, [r0]
.L4:
	.loc 1 85 1 view .LVU25
	ldr	r4, [sp], #4
.LCFI1:
	bx	lr
.L5:
.LCFI2:
	.loc 1 82 9 is_stmt 1 view .LVU26
	.loc 1 82 30 is_stmt 0 view .LVU27
	str	r2, [r0]
	.loc 1 83 9 is_stmt 1 view .LVU28
	.loc 1 83 32 is_stmt 0 view .LVU29
	movs	r3, #0
	strb	r3, [r0, #4]
	.loc 1 85 1 view .LVU30
	b	.L4
.LFE2:
	.size	sensorsim_increment, .-sensorsim_increment
	.section	.text.sensorsim_decrement,"ax",%progbits
	.align	1
	.global	sensorsim_decrement
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sensorsim_decrement, %function
sensorsim_decrement:
.LVL3:
.LFB3:
	.loc 1 90 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 90 1 is_stmt 0 view .LVU32
	push	{r4}
.LCFI3:
	.loc 1 91 5 is_stmt 1 view .LVU33
	.loc 1 91 16 is_stmt 0 view .LVU34
	ldr	r3, [r0]
	.loc 1 91 37 view .LVU35
	ldr	r2, [r1]
	.loc 1 91 30 view .LVU36
	subs	r4, r3, r2
	.loc 1 91 50 view .LVU37
	ldr	r1, [r1, #8]
.LVL4:
	.loc 1 91 8 view .LVU38
	cmp	r4, r1
	bls	.L9
	.loc 1 93 9 is_stmt 1 view .LVU39
	.loc 1 93 30 is_stmt 0 view .LVU40
	subs	r3, r3, r1
	str	r3, [r0]
.L8:
	.loc 1 100 1 view .LVU41
	ldr	r4, [sp], #4
.LCFI4:
	bx	lr
.L9:
.LCFI5:
	.loc 1 97 9 is_stmt 1 view .LVU42
	.loc 1 97 30 is_stmt 0 view .LVU43
	str	r2, [r0]
	.loc 1 98 9 is_stmt 1 view .LVU44
	.loc 1 98 32 is_stmt 0 view .LVU45
	movs	r3, #1
	strb	r3, [r0, #4]
	.loc 1 100 1 view .LVU46
	b	.L8
.LFE3:
	.size	sensorsim_decrement, .-sensorsim_decrement
	.section	.text.sensorsim_measure,"ax",%progbits
	.align	1
	.global	sensorsim_measure
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sensorsim_measure, %function
sensorsim_measure:
.LVL5:
.LFB1:
	.loc 1 61 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 61 1 is_stmt 0 view .LVU48
	push	{r4, lr}
.LCFI6:
	mov	r4, r0
	.loc 1 62 5 is_stmt 1 view .LVU49
	.loc 1 62 16 is_stmt 0 view .LVU50
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
	.loc 1 62 8 view .LVU51
	cbz	r3, .L13
	.loc 1 64 9 is_stmt 1 view .LVU52
	bl	sensorsim_increment
.LVL6:
.L14:
	.loc 1 70 5 view .LVU53
	.loc 1 71 1 is_stmt 0 view .LVU54
	ldr	r0, [r4]
	pop	{r4, pc}
.LVL7:
.L13:
	.loc 1 68 9 is_stmt 1 view .LVU55
	bl	sensorsim_decrement
.LVL8:
	.loc 1 68 9 is_stmt 0 view .LVU56
	b	.L14
.LFE1:
	.size	sensorsim_measure, .-sensorsim_measure
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
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x4
	.byte	0x84
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xa
	.byte	0xc4
	.byte	0xe
	.uleb128 0
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xb
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI3-.LFB3
	.byte	0xe
	.uleb128 0x4
	.byte	0x84
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xa
	.byte	0xc4
	.byte	0xe
	.uleb128 0
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xb
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI6-.LFB1
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE6:
	.text
.Letext0:
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\sensorsim\\sensorsim.h"
	.file 3 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.section	.debug_types,"G",%progbits,wt.23e9b2b0ad6cda7f,comdat
	.4byte	0x58
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x23
	.byte	0xe9
	.byte	0xb2
	.byte	0xb0
	.byte	0xad
	.byte	0x6c
	.byte	0xda
	.byte	0x7f
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x2
	.byte	0x46
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x48
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x49
	.byte	0xd
	.4byte	0x4d
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x54
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.byte	0
	.section	.debug_types,"G",%progbits,wt.e790911ac27eb539,comdat
	.4byte	0x72
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xe7
	.byte	0x90
	.byte	0x91
	.byte	0x1a
	.byte	0xc2
	.byte	0x7e
	.byte	0xb5
	.byte	0x39
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x10
	.byte	0x2
	.byte	0x3d
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x6
	.ascii	"min\000"
	.byte	0x2
	.byte	0x3f
	.byte	0xe
	.4byte	0x5b
	.byte	0
	.uleb128 0x6
	.ascii	"max\000"
	.byte	0x2
	.byte	0x40
	.byte	0xe
	.4byte	0x5b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x41
	.byte	0xe
	.4byte	0x5b
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.byte	0x42
	.byte	0xd
	.4byte	0x67
	.byte	0xc
	.byte	0
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x6e
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF2
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.byte	0
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x1aa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF19
	.byte	0xc
	.4byte	.LASF20
	.4byte	.LASF21
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF10
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x58
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF2
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x2
	.byte	0x43
	.byte	0x3
	.byte	0xe7
	.byte	0x90
	.byte	0x91
	.byte	0x1a
	.byte	0xc2
	.byte	0x7e
	.byte	0xb5
	.byte	0x39
	.uleb128 0xa
	.4byte	0x74
	.uleb128 0x9
	.4byte	.LASF14
	.byte	0x2
	.byte	0x4a
	.byte	0x3
	.byte	0x23
	.byte	0xe9
	.byte	0xb2
	.byte	0xb0
	.byte	0xad
	.byte	0x6c
	.byte	0xda
	.byte	0x7f
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x1
	.byte	0x58
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd2
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x58
	.byte	0x2e
	.4byte	0xd2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x59
	.byte	0x32
	.4byte	0xd8
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0xe
	.byte	0x4
	.4byte	0x89
	.uleb128 0xe
	.byte	0x4
	.4byte	0x84
	.uleb128 0xb
	.4byte	.LASF16
	.byte	0x1
	.byte	0x49
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x117
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x49
	.byte	0x2e
	.4byte	0xd2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x4a
	.byte	0x32
	.4byte	0xd8
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0xf
	.4byte	.LASF22
	.byte	0x1
	.byte	0x3b
	.byte	0xa
	.4byte	0x4c
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17e
	.uleb128 0xd
	.4byte	.LASF17
	.byte	0x1
	.byte	0x3b
	.byte	0x30
	.4byte	0xd2
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0xd
	.4byte	.LASF18
	.byte	0x1
	.byte	0x3c
	.byte	0x34
	.4byte	0xd8
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x10
	.4byte	.LVL6
	.4byte	0xde
	.4byte	0x174
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0
	.uleb128 0x12
	.4byte	.LVL8
	.4byte	0x99
	.byte	0
	.uleb128 0x13
	.4byte	.LASF23
	.byte	0x1
	.byte	0x2b
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2b
	.byte	0x29
	.4byte	0xd2
	.uleb128 0x1
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x1
	.byte	0x2c
	.byte	0x2d
	.4byte	0xd8
	.uleb128 0x1
	.byte	0x51
	.byte	0
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS1:
	.uleb128 0
	.uleb128 .LVU38
	.uleb128 .LVU38
	.uleb128 0
.LLST1:
	.4byte	.LVL3
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL4
	.4byte	.LFE3
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL2
	.4byte	.LFE2
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST2:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6-1
	.4byte	.LVL7
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL8-1
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU53
	.uleb128 .LVU53
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU56
	.uleb128 .LVU56
	.uleb128 0
.LLST3:
	.4byte	.LVL5
	.4byte	.LVL6-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL6-1
	.4byte	.LVL7
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL7
	.4byte	.LVL8-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL8-1
	.4byte	.LFE1
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x67
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1ae
	.4byte	0x99
	.ascii	"sensorsim_decrement\000"
	.4byte	0xde
	.ascii	"sensorsim_increment\000"
	.4byte	0x117
	.ascii	"sensorsim_measure\000"
	.4byte	0x17e
	.ascii	"sensorsim_init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0xdc
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1ae
	.4byte	0x29
	.ascii	"signed char\000"
	.4byte	0x30
	.ascii	"unsigned char\000"
	.4byte	0x37
	.ascii	"short int\000"
	.4byte	0x3e
	.ascii	"short unsigned int\000"
	.4byte	0x45
	.ascii	"int\000"
	.4byte	0x58
	.ascii	"unsigned int\000"
	.4byte	0x4c
	.ascii	"uint32_t\000"
	.4byte	0x5f
	.ascii	"long long int\000"
	.4byte	0x66
	.ascii	"long long unsigned int\000"
	.4byte	0x6d
	.ascii	"_Bool\000"
	.4byte	0x74
	.ascii	"sensorsim_cfg_t\000"
	.4byte	0x89
	.ascii	"sensorsim_state_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x34
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB1
	.4byte	.LFE1
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
	.uleb128 0x35
	.uleb128 0x3
	.byte	0x4
	.file 4 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF23:
	.ascii	"sensorsim_init\000"
.LASF1:
	.ascii	"is_increasing\000"
.LASF21:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_application-master\\\\pca10040\\\\"
	.ascii	"s132\\\\ses\000"
.LASF0:
	.ascii	"current_val\000"
.LASF22:
	.ascii	"sensorsim_measure\000"
.LASF20:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\"
	.ascii	"sensorsim\\sensorsim.c\000"
.LASF15:
	.ascii	"sensorsim_decrement\000"
.LASF8:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"incr\000"
.LASF18:
	.ascii	"p_cfg\000"
.LASF14:
	.ascii	"sensorsim_state_t\000"
.LASF17:
	.ascii	"p_state\000"
.LASF10:
	.ascii	"short unsigned int\000"
.LASF13:
	.ascii	"sensorsim_cfg_t\000"
.LASF16:
	.ascii	"sensorsim_increment\000"
.LASF3:
	.ascii	"unsigned int\000"
.LASF12:
	.ascii	"long long unsigned int\000"
.LASF19:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF11:
	.ascii	"long long int\000"
.LASF9:
	.ascii	"short int\000"
.LASF4:
	.ascii	"uint32_t\000"
.LASF6:
	.ascii	"start_at_max\000"
.LASF7:
	.ascii	"signed char\000"
.LASF2:
	.ascii	"_Bool\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
