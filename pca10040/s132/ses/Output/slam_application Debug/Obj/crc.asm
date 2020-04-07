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
	.file	"crc.c"
	.text
.Ltext0:
	.section	.text.crc_ibutton_update,"ax",%progbits
	.align	1
	.global	crc_ibutton_update
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	crc_ibutton_update, %function
crc_ibutton_update:
.LVL0:
.LFB1:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\communication\\crc.c"
	.loc 1 26 46 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 27 3 view .LVU1
	.loc 1 28 3 view .LVU2
	.loc 1 28 7 is_stmt 0 view .LVU3
	eors	r0, r0, r1
.LVL1:
	.loc 1 29 3 is_stmt 1 view .LVU4
	.loc 1 29 10 is_stmt 0 view .LVU5
	movs	r3, #0
	.loc 1 29 3 view .LVU6
	b	.L2
.LVL2:
.L3:
	.loc 1 31 10 is_stmt 1 view .LVU7
	.loc 1 31 14 is_stmt 0 view .LVU8
	lsrs	r0, r0, #1
.LVL3:
.L4:
	.loc 1 29 22 is_stmt 1 discriminator 2 view .LVU9
	.loc 1 29 23 is_stmt 0 discriminator 2 view .LVU10
	adds	r3, r3, #1
.LVL4:
	.loc 1 29 23 discriminator 2 view .LVU11
	uxtb	r3, r3
.LVL5:
.L2:
	.loc 1 29 15 is_stmt 1 discriminator 1 view .LVU12
	.loc 1 29 3 is_stmt 0 discriminator 1 view .LVU13
	cmp	r3, #7
	bhi	.L6
	.loc 1 30 5 is_stmt 1 view .LVU14
	.loc 1 30 8 is_stmt 0 view .LVU15
	tst	r0, #1
	beq	.L3
	.loc 1 30 21 is_stmt 1 discriminator 1 view .LVU16
	.loc 1 30 25 is_stmt 0 discriminator 1 view .LVU17
	lsrs	r0, r0, #1
.LVL6:
	.loc 1 30 25 discriminator 1 view .LVU18
	eor	r0, r0, #140
.LVL7:
	.loc 1 30 25 discriminator 1 view .LVU19
	b	.L4
.L6:
	.loc 1 34 1 view .LVU20
	bx	lr
.LFE1:
	.size	crc_ibutton_update, .-crc_ibutton_update
	.section	.text.calculate_crc,"ax",%progbits
	.align	1
	.global	calculate_crc
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	calculate_crc, %function
calculate_crc:
.LVL8:
.LFB0:
	.loc 1 17 42 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 17 42 is_stmt 0 view .LVU22
	push	{r4, r5, r6, lr}
.LCFI0:
	mov	r6, r0
	mov	r5, r1
	.loc 1 18 3 is_stmt 1 view .LVU23
.LVL9:
	.loc 1 19 3 view .LVU24
	.loc 1 20 3 view .LVU25
	.loc 1 20 8 is_stmt 0 view .LVU26
	movs	r4, #0
	.loc 1 18 8 view .LVU27
	mov	r0, r4
.LVL10:
.L8:
	.loc 1 20 11 is_stmt 1 discriminator 1 view .LVU28
	.loc 1 20 3 is_stmt 0 discriminator 1 view .LVU29
	cmp	r5, r4
	ble	.L11
	.loc 1 21 5 is_stmt 1 discriminator 3 view .LVU30
	.loc 1 21 11 is_stmt 0 discriminator 3 view .LVU31
	ldrb	r1, [r6, r4]	@ zero_extendqisi2
	bl	crc_ibutton_update
.LVL11:
	.loc 1 20 17 is_stmt 1 discriminator 3 view .LVU32
	.loc 1 20 18 is_stmt 0 discriminator 3 view .LVU33
	adds	r4, r4, #1
.LVL12:
	.loc 1 20 18 discriminator 3 view .LVU34
	b	.L8
.L11:
	.loc 1 24 1 view .LVU35
	pop	{r4, r5, r6, pc}
	.loc 1 24 1 view .LVU36
.LFE0:
	.size	calculate_crc, .-calculate_crc
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.byte	0x4
	.4byte	.LCFI0-.LFB0
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
.LEFDE2:
	.text
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xfb
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
	.4byte	.LASF0
	.byte	0x1
	.byte	0x1a
	.byte	0x6
	.4byte	0x78
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x78
	.uleb128 0x3
	.ascii	"crc\000"
	.byte	0x1
	.byte	0x1a
	.byte	0x1e
	.4byte	0x78
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x1
	.byte	0x1a
	.byte	0x28
	.4byte	0x78
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.ascii	"i\000"
	.byte	0x1
	.byte	0x1b
	.byte	0x8
	.4byte	0x78
	.4byte	.LLST1
	.4byte	.LVUS1
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF3
	.uleb128 0x2
	.4byte	.LASF1
	.byte	0x1
	.byte	0x11
	.byte	0x6
	.4byte	0x78
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf1
	.uleb128 0x7
	.4byte	.LASF2
	.byte	0x1
	.byte	0x11
	.byte	0x1a
	.4byte	0xf1
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x3
	.ascii	"len\000"
	.byte	0x1
	.byte	0x11
	.byte	0x25
	.4byte	0x78
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x5
	.ascii	"crc\000"
	.byte	0x1
	.byte	0x12
	.byte	0x8
	.4byte	0x78
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x5
	.ascii	"i\000"
	.byte	0x1
	.byte	0x13
	.byte	0x7
	.4byte	0xf7
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x8
	.4byte	.LVL11
	.4byte	0x29
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.4byte	0x78
	.uleb128 0xa
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
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
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU4
	.uleb128 .LVU4
	.uleb128 .LVU18
	.uleb128 .LVU19
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL7
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU5
	.uleb128 .LVU7
	.uleb128 .LVU7
	.uleb128 .LVU11
	.uleb128 .LVU12
	.uleb128 0
.LLST1:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL4
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL5
	.4byte	.LFE1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 0
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL10
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 0
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST3:
	.4byte	.LVL8
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL10
	.4byte	.LFE0
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU24
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 .LVU32
	.uleb128 .LVU32
	.uleb128 0
.LLST4:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LVL11-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU26
	.uleb128 .LVU28
	.uleb128 .LVU28
	.uleb128 0
.LLST5:
	.4byte	.LVL9
	.4byte	.LVL10
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL10
	.4byte	.LFE0
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x37
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xff
	.4byte	0x29
	.ascii	"crc_ibutton_update\000"
	.4byte	0x7f
	.ascii	"calculate_crc\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x1f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xff
	.4byte	0x78
	.ascii	"char\000"
	.4byte	0xf7
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
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB1
	.4byte	.LFE1
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
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\communication\\crc.h"
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
	.ascii	"al\\slam\\communication\\crc.c\000"
.LASF4:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF2:
	.ascii	"data\000"
.LASF3:
	.ascii	"char\000"
.LASF6:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF0:
	.ascii	"crc_ibutton_update\000"
.LASF1:
	.ascii	"calculate_crc\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
