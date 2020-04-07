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
.LFB0:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\functions.c"
	.loc 1 5 43
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #20
.LCFI1:
	str	r0, [sp, #4]
	.loc 1 6 25
	ldr	r3, [sp, #4]
	ldr	r3, [r3]	@ float
	.loc 1 6 20
	mov	r0, r3	@ float
	bl	__aeabi_f2d
.LVL0:
	mov	r2, r0
	mov	r3, r1
	vldr.64	d1, .L8
	vmov	d0, r2, r3
	bl	fmod
	vmov	r2, r3, d0
	.loc 1 6 11
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
.LVL1:
	mov	r3, r0	@ float
	str	r3, [sp, #12]	@ float
	.loc 1 7 15
	ldr	r0, [sp, #12]	@ float
	bl	__aeabi_f2d
.LVL2:
	.loc 1 7 7
	adr	r3, .L8+8
	ldrd	r2, [r3]
	bl	__aeabi_dcmpgt
.LVL3:
	mov	r3, r0
	cmp	r3, #0
	beq	.L2
	.loc 1 8 14
	ldr	r0, [sp, #12]	@ float
	bl	__aeabi_f2d
.LVL4:
	adr	r3, .L8
	ldrd	r2, [r3]
	bl	__aeabi_dsub
.LVL5:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
.LVL6:
	mov	r3, r0	@ float
	str	r3, [sp, #12]	@ float
.L2:
	.loc 1 10 15
	ldr	r0, [sp, #12]	@ float
	bl	__aeabi_f2d
.LVL7:
	.loc 1 10 7
	adr	r3, .L8+16
	ldrd	r2, [r3]
	bl	__aeabi_dcmplt
.LVL8:
	mov	r3, r0
	cmp	r3, #0
	beq	.L4
	.loc 1 11 14
	ldr	r0, [sp, #12]	@ float
	bl	__aeabi_f2d
.LVL9:
	adr	r3, .L8
	ldrd	r2, [r3]
	bl	__aeabi_dadd
.LVL10:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_d2f
.LVL11:
	mov	r3, r0	@ float
	str	r3, [sp, #12]	@ float
.L4:
	.loc 1 13 23
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #12]	@ float
	str	r2, [r3]	@ float
	.loc 1 14 1
	nop
	add	sp, sp, #20
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.L9:
	.align	3
.L8:
	.word	1413754136
	.word	1075388923
	.word	1413754136
	.word	1074340347
	.word	1413754136
	.word	-1073143301
.LFE0:
	.size	vFunc_Inf2pi, .-vFunc_Inf2pi
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
	.text
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x6f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF2
	.byte	0xc
	.4byte	.LASF3
	.4byte	.LASF4
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x1
	.byte	0x5
	.byte	0x6
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6c
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x1
	.byte	0x5
	.byte	0x1a
	.4byte	0x6c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x1
	.byte	0x6
	.byte	0xb
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x29
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
	.uleb128 0x3
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
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x1f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x73
	.4byte	0x37
	.ascii	"vFunc_Inf2pi\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x23
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x73
	.4byte	0x29
	.ascii	"float\000"
	.4byte	0x30
	.ascii	"double\000"
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
	.file 2 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.byte	0x3
	.uleb128 0x1
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF0:
	.ascii	"float\000"
.LASF6:
	.ascii	"angle_in_radians\000"
.LASF2:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -fomit-frame-poi"
	.ascii	"nter -fno-dwarf2-cfi-asm -fno-builtin -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF7:
	.ascii	"result\000"
.LASF5:
	.ascii	"vFunc_Inf2pi\000"
.LASF4:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF1:
	.ascii	"double\000"
.LASF3:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_applicationLeithe\\drivers\\functions.c\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
