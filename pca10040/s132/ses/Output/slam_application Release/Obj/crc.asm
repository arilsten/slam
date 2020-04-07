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
	.file	"crc.c"
	.text
.Ltext0:
	.section	.text.calculate_crc,"ax",%progbits
	.align	1
	.global	calculate_crc
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	calculate_crc, %function
calculate_crc:
.LFB0:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\crc.c"
	.loc 1 17 42
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #20
.LCFI1:
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	.loc 1 18 8
	movs	r3, #0
	strb	r3, [sp, #15]
	.loc 1 20 8
	movs	r3, #0
	str	r3, [sp, #8]
	.loc 1 20 3
	b	.L2
.L3:
	.loc 1 21 39 discriminator 3
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #4]
	add	r3, r3, r2
	.loc 1 21 11 discriminator 3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	crc_ibutton_update
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 20 18 discriminator 3
	ldr	r3, [sp, #8]
	adds	r3, r3, #1
	str	r3, [sp, #8]
.L2:
	.loc 1 20 12 discriminator 1
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
	.loc 1 20 3 discriminator 1
	ldr	r2, [sp, #8]
	cmp	r2, r3
	blt	.L3
	.loc 1 23 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 24 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.LFE0:
	.size	calculate_crc, .-calculate_crc
	.section	.text.crc_ibutton_update,"ax",%progbits
	.align	1
	.global	crc_ibutton_update
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	crc_ibutton_update, %function
crc_ibutton_update:
.LFB1:
	.loc 1 26 46
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI3:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 28 7
	ldrb	r2, [sp, #7]
	ldrb	r3, [sp, #6]
	eors	r3, r3, r2
	strb	r3, [sp, #7]
	.loc 1 29 10
	movs	r3, #0
	strb	r3, [sp, #15]
	.loc 1 29 3
	b	.L6
.L9:
	.loc 1 30 13
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r3, r3, #1
	.loc 1 30 8
	cmp	r3, #0
	beq	.L7
	.loc 1 30 25 discriminator 1
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsrs	r3, r3, #1
	uxtb	r3, r3
	eor	r3, r3, #115
	mvns	r3, r3
	strb	r3, [sp, #7]
	b	.L8
.L7:
	.loc 1 31 14
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsrs	r3, r3, #1
	strb	r3, [sp, #7]
.L8:
	.loc 1 29 23 discriminator 2
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [sp, #15]
.L6:
	.loc 1 29 3 discriminator 1
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L9
	.loc 1 33 10
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	.loc 1 34 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI4:
	@ sp needed
	bx	lr
.LFE1:
	.size	crc_ibutton_update, .-crc_ibutton_update
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
	.uleb128 0x18
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI3-.LFB1
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE2:
	.text
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xd5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF4
	.byte	0xc
	.4byte	.LASF5
	.4byte	.LASF6
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	0x6f
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f
	.uleb128 0x3
	.ascii	"crc\000"
	.byte	0x1
	.byte	0x1a
	.byte	0x1e
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x1
	.byte	0x1a
	.byte	0x28
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x5
	.ascii	"i\000"
	.byte	0x1
	.byte	0x1b
	.byte	0x8
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	0x6f
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcb
	.uleb128 0x4
	.4byte	.LASF0
	.byte	0x1
	.byte	0x11
	.byte	0x1a
	.4byte	0xcb
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x3
	.ascii	"len\000"
	.byte	0x1
	.byte	0x11
	.byte	0x25
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x5
	.ascii	"crc\000"
	.byte	0x1
	.byte	0x12
	.byte	0x8
	.4byte	0x6f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x5
	.ascii	"i\000"
	.byte	0x1
	.byte	0x13
	.byte	0x7
	.4byte	0xd1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6f
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x3
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x37
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xd9
	.4byte	0x29
	.ascii	"crc_ibutton_update\000"
	.4byte	0x76
	.ascii	"calculate_crc\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x1f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xd9
	.4byte	0x6f
	.ascii	"char\000"
	.4byte	0xd1
	.ascii	"int\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
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
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\crc.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF5:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_applicationLeithe\\communication\\crc.c\000"
.LASF4:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -fomit-frame-poi"
	.ascii	"nter -fno-dwarf2-cfi-asm -fno-builtin -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF3:
	.ascii	"char\000"
.LASF6:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF0:
	.ascii	"data\000"
.LASF1:
	.ascii	"crc_ibutton_update\000"
.LASF2:
	.ascii	"calculate_crc\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
