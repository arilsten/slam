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
	.file	"nrf_sdh_soc.c"
	.text
.Ltext0:
	.section	.text.sd_evt_get,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sd_evt_get, %function
sd_evt_get:
.LVL0:
.LFB177:
	.file 1 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.loc 1 764 97 view -0
	@ Naked Function: prologue and epilogue provided by programmer.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 764 99 view .LVU1
	.syntax unified
@ 764 "../../../../../../components/softdevice/s132/headers/nrf_soc.h" 1
	svc #75
bx r14
@ 0 "" 2
.LVL1:
	.loc 1 764 2 is_stmt 0 view .LVU2
	.thumb
	.syntax unified
.LFE177:
	.size	sd_evt_get, .-sd_evt_get
	.section	.rodata.nrf_sdh_soc_evts_poll.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\components\\softdevice"
	.ascii	"\\common\\nrf_sdh_soc.c\000"
	.section	.text.nrf_sdh_soc_evts_poll,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_sdh_soc_evts_poll, %function
nrf_sdh_soc_evts_poll:
.LFB186:
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\softdevice\\common\\nrf_sdh_soc.c"
	.loc 2 72 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
.LVL2:
	.loc 2 72 1 is_stmt 0 view .LVU4
	push	{lr}
.LCFI0:
	sub	sp, sp, #20
.LCFI1:
	b	.L6
.LVL3:
.L5:
.LBB8:
.LBB9:
	.loc 2 95 13 is_stmt 1 view .LVU5
	.loc 2 96 13 view .LVU6
	.loc 2 98 13 view .LVU7
	.loc 2 98 13 is_stmt 0 view .LVU8
.LBE9:
.LBE8:
	.file 3 "../../../../../../components/libraries/experimental_section_vars/nrf_section_iter.h"
	.loc 3 196 5 is_stmt 1 view .LVU9
	.loc 3 196 14 view .LVU10
	.loc 3 196 174 view .LVU11
	.loc 3 197 5 view .LVU12
.LBB13:
.LBB10:
	.loc 2 99 13 view .LVU13
	.loc 2 99 21 is_stmt 0 view .LVU14
	ldr	r2, [r3]
.LVL4:
	.loc 2 101 13 is_stmt 1 view .LVU15
	ldr	r1, [r3, #4]
	ldr	r0, [sp, #4]
	blx	r2
.LVL5:
	.loc 2 101 13 is_stmt 0 view .LVU16
.LBE10:
	.loc 2 93 14 is_stmt 1 view .LVU17
	add	r0, sp, #8
	bl	nrf_section_iter_next
.LVL6:
.L4:
	.loc 2 92 14 discriminator 1 view .LVU18
.LBB11:
.LBI11:
	.loc 3 194 22 discriminator 1 view .LVU19
.LBB12:
	.loc 3 196 5 discriminator 1 view .LVU20
	.loc 3 196 14 discriminator 1 view .LVU21
	.loc 3 196 174 discriminator 1 view .LVU22
	.loc 3 197 5 discriminator 1 view .LVU23
	.loc 3 197 18 is_stmt 0 discriminator 1 view .LVU24
	ldr	r3, [sp, #12]
.LVL7:
	.loc 3 197 18 discriminator 1 view .LVU25
.LBE12:
.LBE11:
	.loc 2 91 9 discriminator 1 view .LVU26
	cmp	r3, #0
	bne	.L5
.L6:
	.loc 2 91 9 discriminator 1 view .LVU27
.LBE13:
	.loc 2 73 5 is_stmt 1 view .LVU28
	.loc 2 75 5 view .LVU29
	.loc 2 77 5 view .LVU30
.LBB14:
	.loc 2 79 9 view .LVU31
	.loc 2 81 9 view .LVU32
	.loc 2 81 20 is_stmt 0 view .LVU33
	add	r0, sp, #4
	bl	sd_evt_get
.LVL8:
	.loc 2 82 9 is_stmt 1 view .LVU34
	.loc 2 82 12 is_stmt 0 view .LVU35
	cbnz	r0, .L3
	.loc 2 87 9 is_stmt 1 discriminator 5 view .LVU36
	.loc 2 87 293 discriminator 5 view .LVU37
	.loc 2 90 9 discriminator 5 view .LVU38
	.loc 2 91 9 discriminator 5 view .LVU39
	.loc 2 91 14 is_stmt 0 discriminator 5 view .LVU40
	ldr	r1, .L10
	add	r0, sp, #8
.LVL9:
	.loc 2 91 14 discriminator 5 view .LVU41
	bl	nrf_section_iter_init
.LVL10:
	.loc 2 91 9 discriminator 5 view .LVU42
	b	.L4
.LVL11:
.L3:
	.loc 2 91 9 discriminator 5 view .LVU43
.LBE14:
	.loc 2 105 5 is_stmt 1 view .LVU44
	.loc 2 105 8 is_stmt 0 view .LVU45
	cmp	r0, #5
	bne	.L9
.LVL12:
.L2:
	.loc 2 109 1 view .LVU46
	add	sp, sp, #20
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.LVL13:
.L9:
.LCFI3:
	.loc 2 107 9 is_stmt 1 view .LVU47
	.loc 2 107 14 view .LVU48
	ldr	r2, .L10+4
	movs	r1, #107
	bl	app_error_handler
.LVL14:
	.loc 2 107 147 view .LVU49
	.loc 2 109 1 is_stmt 0 view .LVU50
	b	.L2
.L11:
	.align	2
.L10:
	.word	.LANCHOR0
	.word	.LC0
.LFE186:
	.size	nrf_sdh_soc_evts_poll, .-nrf_sdh_soc_evts_poll
	.global	m_nrf_log_nrf_sdh_soc_logs_data_dynamic
	.global	m_nrf_log_nrf_sdh_soc_logs_data_const
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"nrf_sdh_soc\000"
	.section	.log_const_data_nrf_sdh_soc,"a"
	.align	2
	.type	m_nrf_log_nrf_sdh_soc_logs_data_const, %object
	.size	m_nrf_log_nrf_sdh_soc_logs_data_const, 8
m_nrf_log_nrf_sdh_soc_logs_data_const:
	.word	.LC1
	.byte	0
	.byte	0
	.byte	3
	.byte	3
	.section	.log_dynamic_data_nrf_sdh_soc,"aw"
	.align	2
	.type	m_nrf_log_nrf_sdh_soc_logs_data_dynamic, %object
	.size	m_nrf_log_nrf_sdh_soc_logs_data_dynamic, 4
m_nrf_log_nrf_sdh_soc_logs_data_dynamic:
	.space	4
	.section	.rodata.sdh_soc_observers,"a"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	sdh_soc_observers, %object
	.size	sdh_soc_observers, 12
sdh_soc_observers:
	.word	__start_sdh_soc_observers
	.word	__stop_sdh_soc_observers
	.word	8
	.section	.sdh_stack_observers0,"a"
	.align	2
	.type	m_nrf_sdh_soc_evts_poll, %object
	.size	m_nrf_sdh_soc_evts_poll, 8
m_nrf_sdh_soc_evts_poll:
	.word	nrf_sdh_soc_evts_poll
	.word	0
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
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.byte	0x4
	.4byte	.LCFI0-.LFB186
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
	.byte	0xa
	.byte	0xe
	.uleb128 0x4
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xb
	.align	2
.LEFDE2:
	.text
.Letext0:
	.file 4 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
	.file 5 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.section	.debug_types,"G",%progbits,wt.669d46b2e6065b04,comdat
	.4byte	0x9a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x66
	.byte	0x9d
	.byte	0x46
	.byte	0xb2
	.byte	0xe6
	.byte	0x6
	.byte	0x5b
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.byte	0x58
	.byte	0x9
	.4byte	0x68
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.byte	0x5a
	.byte	0x12
	.4byte	0x68
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x4
	.byte	0x5b
	.byte	0xd
	.4byte	0x6e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x5c
	.byte	0xd
	.4byte	0x6e
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0x5d
	.byte	0x18
	.4byte	0x7a
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0x5e
	.byte	0x18
	.4byte	0x7a
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x8a
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x4
	.byte	0x38
	.byte	0x3
	.byte	0xba
	.byte	0xfe
	.byte	0x51
	.byte	0x8d
	.byte	0x47
	.byte	0x78
	.byte	0xea
	.byte	0x9e
	.uleb128 0x7
	.4byte	0x96
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0
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
	.4byte	.LASF9
	.byte	0x4
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x5
	.byte	0x36
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
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
	.uleb128 0x9
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x4
	.byte	0x31
	.byte	0x1
	.4byte	0x50
	.uleb128 0xa
	.4byte	.LASF13
	.byte	0
	.uleb128 0xa
	.4byte	.LASF14
	.byte	0x1
	.uleb128 0xa
	.4byte	.LASF15
	.byte	0x2
	.uleb128 0xa
	.4byte	.LASF16
	.byte	0x3
	.uleb128 0xa
	.4byte	.LASF17
	.byte	0x4
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0
	.file 6 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\softdevice\\common\\nrf_sdh.h"
	.section	.debug_types,"G",%progbits,wt.8bca150e16dd81c6,comdat
	.4byte	0x59
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x8b
	.byte	0xca
	.byte	0x15
	.byte	0xe
	.byte	0x16
	.byte	0xdd
	.byte	0x81
	.byte	0xc6
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x6
	.byte	0xbf
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0xc1
	.byte	0x21
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
	.byte	0xc2
	.byte	0xc
	.4byte	0x4d
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x6
	.byte	0xbc
	.byte	0x10
	.4byte	0x4f
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.4byte	0x55
	.uleb128 0xc
	.uleb128 0xd
	.4byte	0x4d
	.byte	0
	.byte	0
	.file 7 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\softdevice\\common\\nrf_sdh_soc.h"
	.section	.debug_types,"G",%progbits,wt.81b369faaf8618c3,comdat
	.4byte	0x75
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x81
	.byte	0xb3
	.byte	0x69
	.byte	0xfa
	.byte	0xaf
	.byte	0x86
	.byte	0x18
	.byte	0xc3
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.byte	0x82
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x7
	.byte	0x84
	.byte	0x1f
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x7
	.byte	0x85
	.byte	0xc
	.4byte	0x4d
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x7
	.byte	0x7f
	.byte	0x10
	.4byte	0x4f
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.4byte	0x55
	.uleb128 0xe
	.4byte	0x65
	.uleb128 0xd
	.4byte	0x65
	.uleb128 0xd
	.4byte	0x4d
	.byte	0
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x71
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.byte	0
	.section	.debug_types,"G",%progbits,wt.e8c5ca557f160769,comdat
	.4byte	0x13c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xe8
	.byte	0xc5
	.byte	0xca
	.byte	0x55
	.byte	0x7f
	.byte	0x16
	.byte	0x7
	.byte	0x69
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x7
	.byte	0x1
	.4byte	0x138
	.byte	0x1
	.byte	0x68
	.byte	0x6
	.4byte	0x138
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x21
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x22
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x23
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x25
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x26
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x27
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x29
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x2a
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x2b
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x2d
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x2e
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x2f
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x31
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x32
	.uleb128 0xa
	.4byte	.LASF44
	.byte	0x33
	.uleb128 0xa
	.4byte	.LASF45
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF46
	.byte	0x35
	.uleb128 0xa
	.4byte	.LASF47
	.byte	0x36
	.uleb128 0xa
	.4byte	.LASF48
	.byte	0x37
	.uleb128 0xa
	.4byte	.LASF49
	.byte	0x39
	.uleb128 0xa
	.4byte	.LASF50
	.byte	0x3a
	.uleb128 0xa
	.4byte	.LASF51
	.byte	0x3b
	.uleb128 0xa
	.4byte	.LASF52
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF53
	.byte	0x3d
	.uleb128 0xa
	.4byte	.LASF54
	.byte	0x3e
	.uleb128 0xa
	.4byte	.LASF55
	.byte	0x3f
	.uleb128 0xa
	.4byte	.LASF56
	.byte	0x41
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0x42
	.uleb128 0xa
	.4byte	.LASF58
	.byte	0x43
	.uleb128 0xa
	.4byte	.LASF59
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0x45
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0x46
	.uleb128 0xa
	.4byte	.LASF62
	.byte	0x47
	.uleb128 0xa
	.4byte	.LASF63
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF64
	.byte	0x49
	.uleb128 0xa
	.4byte	.LASF65
	.byte	0x4a
	.uleb128 0xa
	.4byte	.LASF66
	.byte	0x4b
	.uleb128 0xa
	.4byte	.LASF67
	.byte	0x4c
	.uleb128 0xa
	.4byte	.LASF68
	.byte	0x51
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0
	.section	.debug_types,"G",%progbits,wt.6dc5e9b625fee867,comdat
	.4byte	0x5b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x6d
	.byte	0xc5
	.byte	0xe9
	.byte	0xb6
	.byte	0x25
	.byte	0xfe
	.byte	0xe8
	.byte	0x67
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x3
	.byte	0x57
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x3
	.byte	0x59
	.byte	0x1f
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x3
	.byte	0x62
	.byte	0xc
	.4byte	0x47
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x49
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x7
	.4byte	0x4e
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x3
	.byte	0x53
	.byte	0x3
	.byte	0xee
	.byte	0x7e
	.byte	0xef
	.byte	0xa2
	.byte	0x2e
	.byte	0x79
	.byte	0x7
	.byte	0x2e
	.byte	0
	.file 8 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.section	.debug_types,"G",%progbits,wt.ee7eefa22e79072e,comdat
	.4byte	0x61
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xee
	.byte	0x7e
	.byte	0xef
	.byte	0xa2
	.byte	0x2e
	.byte	0x79
	.byte	0x7
	.byte	0x2e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x3
	.byte	0x45
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x3
	.byte	0x48
	.byte	0x13
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x3
	.byte	0x52
	.byte	0xc
	.4byte	0x51
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0x3
	.byte	0x41
	.byte	0x3
	.byte	0x3d
	.byte	0x3
	.byte	0xcf
	.byte	0x66
	.byte	0x7a
	.byte	0xf2
	.byte	0xe
	.byte	0xfd
	.uleb128 0x5
	.4byte	.LASF76
	.byte	0x8
	.byte	0x37
	.byte	0x12
	.4byte	0x5d
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.byte	0
	.section	.debug_types,"G",%progbits,wt.3d03cf667af20efd,comdat
	.4byte	0x40
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x3d
	.byte	0x3
	.byte	0xcf
	.byte	0x66
	.byte	0x7a
	.byte	0xf2
	.byte	0xe
	.byte	0xfd
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x3
	.byte	0x3d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x3
	.byte	0x3f
	.byte	0xc
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x3
	.byte	0x40
	.byte	0xc
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0
	.file 9 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x8
	.byte	0x9
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x11
	.4byte	.LASF79
	.byte	0x9
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x9
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x12
	.4byte	.LASF81
	.byte	0x9
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x4
	.byte	0x4
	.4byte	0x61
	.uleb128 0x13
	.4byte	0x70
	.4byte	0x70
	.uleb128 0xd
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.4byte	0x82
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
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
	.uleb128 0x15
	.4byte	.LASF83
	.byte	0x14
	.byte	0x9
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x9
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x16
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x17
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x55
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0x7
	.4byte	0x5a
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0x9
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
	.byte	0x9
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x9
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x9
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x9
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x60
	.uleb128 0x4
	.byte	0x4
	.4byte	0x65
	.uleb128 0x4
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x7
	.4byte	0x6f
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0x9
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
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x9
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
	.byte	0x9
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x9
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x9
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x9
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x9
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0x9
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x9
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x9
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0x9
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x4
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x4
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x4
	.byte	0x4
	.4byte	0xea
	.uleb128 0x4
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x4
	.byte	0x4
	.4byte	0x112
	.uleb128 0x13
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0xd
	.4byte	0x130
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0x13
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0x13
	.4byte	0x130
	.4byte	0xea
	.uleb128 0xd
	.4byte	0x137
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0x13
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0xd
	.4byte	0x137
	.byte	0
	.uleb128 0x13
	.4byte	0x130
	.4byte	0x112
	.uleb128 0xd
	.4byte	0x13e
	.uleb128 0xd
	.4byte	0x144
	.uleb128 0xd
	.4byte	0x14b
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF99
	.uleb128 0x4
	.byte	0x4
	.4byte	0x161
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0x18
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0x4
	.byte	0x4
	.4byte	0x144
	.uleb128 0x4
	.byte	0x4
	.4byte	0x168
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
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
	.byte	0x9
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x9
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x9
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x9
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0x9
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0x9
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x9
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x9
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x9
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0x9
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x9
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x9
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0x9
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x9
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0x9
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x9
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x9
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0x9
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0x9
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x9
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0x9
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0x9
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0x9
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0x9
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0x9
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x9
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0x9
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0x9
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x9
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x9
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x9
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0x9
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x9
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
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
	.uleb128 0x15
	.4byte	.LASF132
	.byte	0x8
	.byte	0x9
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0x9
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0x9
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF99
	.byte	0
	.file 10 "../../../../../../components/libraries/util/sdk_errors.h"
	.file 11 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 12 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 13 "../../../../../../components/libraries/util/app_util.h"
	.file 14 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 15 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 16 "../../../../../../components/libraries/util/app_error.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x590
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF192
	.byte	0xc
	.4byte	.LASF193
	.4byte	.LASF194
	.4byte	.Ldebug_ranges0+0x38
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF135
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0x3c
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x7
	.4byte	0x3c
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF136
	.uleb128 0x5
	.4byte	.LASF11
	.byte	0x5
	.byte	0x36
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF137
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x73
	.uleb128 0x1a
	.4byte	0x62
	.uleb128 0x14
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.4byte	.LASF23
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x86
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF24
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF138
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF139
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF99
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	0xa4
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0x9
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
	.uleb128 0x7
	.4byte	0xb0
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0x9
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
	.uleb128 0x7
	.4byte	0xc5
	.uleb128 0x1b
	.4byte	.LASF140
	.byte	0x9
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
	.uleb128 0x1c
	.4byte	.LASF141
	.byte	0x9
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xd5
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x9
	.2byte	0x110
	.byte	0x25
	.4byte	0xc0
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x9
	.2byte	0x111
	.byte	0x25
	.4byte	0xc0
	.uleb128 0x16
	.4byte	0x43
	.4byte	0x122
	.uleb128 0x17
	.4byte	0x86
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.4byte	0x112
	.uleb128 0x1c
	.4byte	.LASF144
	.byte	0x9
	.2byte	0x113
	.byte	0x1c
	.4byte	0x122
	.uleb128 0x16
	.4byte	0xab
	.4byte	0x13f
	.uleb128 0x1d
	.byte	0
	.uleb128 0x7
	.4byte	0x134
	.uleb128 0x1c
	.4byte	.LASF145
	.byte	0x9
	.2byte	0x115
	.byte	0x13
	.4byte	0x13f
	.uleb128 0x1c
	.4byte	.LASF146
	.byte	0x9
	.2byte	0x116
	.byte	0x13
	.4byte	0x13f
	.uleb128 0x1c
	.4byte	.LASF147
	.byte	0x9
	.2byte	0x117
	.byte	0x13
	.4byte	0x13f
	.uleb128 0x1c
	.4byte	.LASF148
	.byte	0x9
	.2byte	0x118
	.byte	0x13
	.4byte	0x13f
	.uleb128 0x1c
	.4byte	.LASF149
	.byte	0x9
	.2byte	0x11a
	.byte	0x13
	.4byte	0x13f
	.uleb128 0x1c
	.4byte	.LASF150
	.byte	0x9
	.2byte	0x11b
	.byte	0x13
	.4byte	0x13f
	.uleb128 0x1c
	.4byte	.LASF151
	.byte	0x9
	.2byte	0x11c
	.byte	0x13
	.4byte	0x13f
	.uleb128 0x1c
	.4byte	.LASF152
	.byte	0x9
	.2byte	0x11d
	.byte	0x13
	.4byte	0x13f
	.uleb128 0x1c
	.4byte	.LASF153
	.byte	0x9
	.2byte	0x11e
	.byte	0x13
	.4byte	0x13f
	.uleb128 0x1c
	.4byte	.LASF154
	.byte	0x9
	.2byte	0x11f
	.byte	0x13
	.4byte	0x13f
	.uleb128 0x13
	.4byte	0x73
	.4byte	0x1d5
	.uleb128 0xd
	.4byte	0x1d5
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1e0
	.uleb128 0x1e
	.4byte	.LASF171
	.uleb128 0x7
	.4byte	0x1db
	.uleb128 0x1c
	.4byte	.LASF155
	.byte	0x9
	.2byte	0x135
	.byte	0xe
	.4byte	0x1f2
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1c6
	.uleb128 0x13
	.4byte	0x73
	.4byte	0x207
	.uleb128 0xd
	.4byte	0x207
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1db
	.uleb128 0x1c
	.4byte	.LASF156
	.byte	0x9
	.2byte	0x136
	.byte	0xe
	.4byte	0x21a
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1f8
	.uleb128 0x1f
	.4byte	.LASF157
	.byte	0x9
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
	.uleb128 0x1c
	.4byte	.LASF158
	.byte	0x9
	.2byte	0x157
	.byte	0x1f
	.4byte	0x23e
	.uleb128 0x4
	.byte	0x4
	.4byte	0x220
	.uleb128 0x5
	.4byte	.LASF159
	.byte	0xa
	.byte	0x9e
	.byte	0x12
	.4byte	0x7a
	.uleb128 0x1c
	.4byte	.LASF160
	.byte	0xb
	.2byte	0x744
	.byte	0x19
	.4byte	0x6e
	.uleb128 0x20
	.4byte	.LASF161
	.byte	0xc
	.byte	0x21
	.byte	0x11
	.4byte	0x7a
	.uleb128 0x20
	.4byte	.LASF162
	.byte	0xd
	.byte	0x53
	.byte	0x11
	.4byte	0x7a
	.uleb128 0x20
	.4byte	.LASF163
	.byte	0xd
	.byte	0x54
	.byte	0x11
	.4byte	0x7a
	.uleb128 0x20
	.4byte	.LASF164
	.byte	0xd
	.byte	0x72
	.byte	0x13
	.4byte	0x28d
	.uleb128 0x4
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x20
	.4byte	.LASF165
	.byte	0xd
	.byte	0x73
	.byte	0x11
	.4byte	0x7a
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0x3
	.byte	0x53
	.byte	0x3
	.byte	0xee
	.byte	0x7e
	.byte	0xef
	.byte	0xa2
	.byte	0x2e
	.byte	0x79
	.byte	0x7
	.byte	0x2e
	.uleb128 0x7
	.4byte	0x29f
	.uleb128 0x6
	.4byte	.LASF166
	.byte	0x3
	.byte	0x63
	.byte	0x3
	.byte	0x6d
	.byte	0xc5
	.byte	0xe9
	.byte	0xb6
	.byte	0x25
	.byte	0xfe
	.byte	0xe8
	.byte	0x67
	.uleb128 0x7
	.4byte	0x2b4
	.uleb128 0x5
	.4byte	.LASF22
	.byte	0x7
	.byte	0x7f
	.byte	0x10
	.4byte	0x2d5
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2db
	.uleb128 0xe
	.4byte	0x2eb
	.uleb128 0xd
	.4byte	0x7a
	.uleb128 0xd
	.4byte	0x9b
	.byte	0
	.uleb128 0x21
	.byte	0x81
	.byte	0xb3
	.byte	0x69
	.byte	0xfa
	.byte	0xaf
	.byte	0x86
	.byte	0x18
	.byte	0xc3
	.uleb128 0x5
	.4byte	.LASF167
	.byte	0x7
	.byte	0x86
	.byte	0x9
	.4byte	0x2eb
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.4byte	.LASF168
	.uleb128 0x21
	.byte	0x8b
	.byte	0xca
	.byte	0x15
	.byte	0xe
	.byte	0x16
	.byte	0xdd
	.byte	0x81
	.byte	0xc6
	.uleb128 0x5
	.4byte	.LASF169
	.byte	0x6
	.byte	0xc3
	.byte	0x9
	.4byte	0x307
	.uleb128 0x12
	.4byte	.LASF170
	.byte	0xe
	.2byte	0x317
	.byte	0x1b
	.4byte	0x329
	.uleb128 0x1e
	.4byte	.LASF172
	.uleb128 0x1c
	.4byte	.LASF173
	.byte	0xe
	.2byte	0x31b
	.byte	0xe
	.4byte	0x33b
	.uleb128 0x4
	.byte	0x4
	.4byte	0x31c
	.uleb128 0x1c
	.4byte	.LASF174
	.byte	0xe
	.2byte	0x31c
	.byte	0xe
	.4byte	0x33b
	.uleb128 0x1c
	.4byte	.LASF175
	.byte	0xe
	.2byte	0x31d
	.byte	0xe
	.4byte	0x33b
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x4
	.byte	0x38
	.byte	0x3
	.byte	0xba
	.byte	0xfe
	.byte	0x51
	.byte	0x8d
	.byte	0x47
	.byte	0x78
	.byte	0xea
	.byte	0x9e
	.uleb128 0x6
	.4byte	.LASF176
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
	.uleb128 0x6
	.4byte	.LASF177
	.byte	0x4
	.byte	0x5f
	.byte	0x3
	.byte	0x66
	.byte	0x9d
	.byte	0x46
	.byte	0xb2
	.byte	0xe6
	.byte	0x6
	.byte	0x5b
	.byte	0x4
	.uleb128 0x7
	.4byte	0x37b
	.uleb128 0x1c
	.4byte	.LASF178
	.byte	0xf
	.2byte	0x124
	.byte	0x2e
	.4byte	0x36b
	.uleb128 0x22
	.4byte	.LASF179
	.byte	0x2
	.byte	0x3c
	.byte	0x23
	.4byte	0x38b
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_log_nrf_sdh_soc_logs_data_const
	.uleb128 0x23
	.4byte	0x390
	.byte	0x2
	.byte	0x3c
	.2byte	0x166
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_log_nrf_sdh_soc_logs_data_dynamic
	.uleb128 0x20
	.4byte	.LASF180
	.byte	0x2
	.byte	0x40
	.byte	0x25
	.4byte	0x3ca
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2f4
	.uleb128 0x20
	.4byte	.LASF181
	.byte	0x2
	.byte	0x40
	.byte	0x4e
	.4byte	0x9b
	.uleb128 0x24
	.4byte	.LASF182
	.byte	0x2
	.byte	0x40
	.byte	0x87
	.4byte	0x2af
	.uleb128 0x5
	.byte	0x3
	.4byte	sdh_soc_observers
	.uleb128 0x24
	.4byte	.LASF183
	.byte	0x2
	.byte	0x70
	.byte	0x8c
	.4byte	0x310
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_sdh_soc_evts_poll
	.uleb128 0x25
	.4byte	.LASF195
	.byte	0x2
	.byte	0x47
	.byte	0xd
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x51a
	.uleb128 0x26
	.4byte	.LASF20
	.byte	0x2
	.byte	0x47
	.byte	0x2a
	.4byte	0x9b
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x27
	.4byte	.LASF184
	.byte	0x2
	.byte	0x49
	.byte	0x10
	.4byte	0x244
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0
	.4byte	0x500
	.uleb128 0x24
	.4byte	.LASF185
	.byte	0x2
	.byte	0x4f
	.byte	0x12
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x24
	.4byte	.LASF186
	.byte	0x2
	.byte	0x5a
	.byte	0x1c
	.4byte	0x2b4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x28
	.4byte	.Ldebug_ranges0+0x20
	.4byte	0x497
	.uleb128 0x27
	.4byte	.LASF187
	.byte	0x2
	.byte	0x5f
	.byte	0x2a
	.4byte	0x3ca
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x27
	.4byte	.LASF19
	.byte	0x2
	.byte	0x60
	.byte	0x27
	.4byte	0x2c9
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x29
	.4byte	0x54b
	.4byte	.LBI11
	.byte	.LVU19
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.byte	0x2
	.byte	0x5c
	.byte	0xe
	.4byte	0x4be
	.uleb128 0x2a
	.4byte	0x55c
	.4byte	.LLST5
	.4byte	.LVUS5
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL6
	.4byte	0x56f
	.4byte	0x4d2
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL8
	.4byte	0x51a
	.4byte	0x4e6
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL10
	.4byte	0x57b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL14
	.4byte	0x587
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x6b
	.uleb128 0x2c
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x2fc
	.byte	0x41
	.4byte	0x7a
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x54b
	.uleb128 0x2f
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x2fc
	.byte	0x57
	.4byte	0x28d
	.4byte	.LLST0
	.4byte	.LVUS0
	.byte	0
	.uleb128 0x30
	.4byte	.LASF197
	.byte	0x3
	.byte	0xc2
	.byte	0x16
	.4byte	0x9b
	.byte	0x3
	.4byte	0x569
	.uleb128 0x31
	.4byte	.LASF198
	.byte	0x3
	.byte	0xc2
	.byte	0x46
	.4byte	0x569
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2c4
	.uleb128 0x32
	.4byte	.LASF189
	.4byte	.LASF189
	.byte	0x3
	.byte	0xb9
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF190
	.4byte	.LASF190
	.byte	0x3
	.byte	0xb2
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF191
	.4byte	.LASF191
	.byte	0x10
	.byte	0x6f
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x20
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
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x5
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
.LVUS1:
	.uleb128 .LVU4
	.uleb128 .LVU5
	.uleb128 .LVU5
	.uleb128 0
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL3
	.4byte	.LFE186
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU34
	.uleb128 .LVU41
	.uleb128 .LVU43
	.uleb128 .LVU46
	.uleb128 .LVU47
	.uleb128 .LVU49
.LLST2:
	.4byte	.LVL8
	.4byte	.LVL9
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL13
	.4byte	.LVL14-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU13
	.uleb128 .LVU16
.LLST3:
	.4byte	.LVL3
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x53
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU15
	.uleb128 .LVU16
.LLST4:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU19
	.uleb128 .LVU25
.LLST5:
	.4byte	.LVL6
	.4byte	.LVL7
	.2byte	0x3
	.byte	0x91
	.sleb128 -16
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU2
	.uleb128 .LVU2
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LFE177
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x62b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x594
	.4byte	0x2f
	.ascii	"SD_PPI_CHANNEL_ENABLE_GET\000"
	.4byte	0x35
	.ascii	"SD_PPI_CHANNEL_ENABLE_SET\000"
	.4byte	0x3b
	.ascii	"SD_PPI_CHANNEL_ENABLE_CLR\000"
	.4byte	0x41
	.ascii	"SD_PPI_CHANNEL_ASSIGN\000"
	.4byte	0x47
	.ascii	"SD_PPI_GROUP_TASK_ENABLE\000"
	.4byte	0x4d
	.ascii	"SD_PPI_GROUP_TASK_DISABLE\000"
	.4byte	0x53
	.ascii	"SD_PPI_GROUP_ASSIGN\000"
	.4byte	0x59
	.ascii	"SD_PPI_GROUP_GET\000"
	.4byte	0x5f
	.ascii	"SD_FLASH_PAGE_ERASE\000"
	.4byte	0x65
	.ascii	"SD_FLASH_WRITE\000"
	.4byte	0x6b
	.ascii	"SD_FLASH_PROTECT\000"
	.4byte	0x71
	.ascii	"SD_PROTECTED_REGISTER_WRITE\000"
	.4byte	0x77
	.ascii	"SD_MUTEX_NEW\000"
	.4byte	0x7d
	.ascii	"SD_MUTEX_ACQUIRE\000"
	.4byte	0x83
	.ascii	"SD_MUTEX_RELEASE\000"
	.4byte	0x89
	.ascii	"SD_RAND_APPLICATION_POOL_CAPACITY_GET\000"
	.4byte	0x8f
	.ascii	"SD_RAND_APPLICATION_BYTES_AVAILABLE_GET\000"
	.4byte	0x95
	.ascii	"SD_RAND_APPLICATION_VECTOR_GET\000"
	.4byte	0x9b
	.ascii	"SD_POWER_MODE_SET\000"
	.4byte	0xa1
	.ascii	"SD_POWER_SYSTEM_OFF\000"
	.4byte	0xa7
	.ascii	"SD_POWER_RESET_REASON_GET\000"
	.4byte	0xad
	.ascii	"SD_POWER_RESET_REASON_CLR\000"
	.4byte	0xb3
	.ascii	"SD_POWER_POF_ENABLE\000"
	.4byte	0xb9
	.ascii	"SD_POWER_POF_THRESHOLD_SET\000"
	.4byte	0xbf
	.ascii	"SD_POWER_RAM_POWER_SET\000"
	.4byte	0xc5
	.ascii	"SD_POWER_RAM_POWER_CLR\000"
	.4byte	0xcb
	.ascii	"SD_POWER_RAM_POWER_GET\000"
	.4byte	0xd1
	.ascii	"SD_POWER_GPREGRET_SET\000"
	.4byte	0xd7
	.ascii	"SD_POWER_GPREGRET_CLR\000"
	.4byte	0xdd
	.ascii	"SD_POWER_GPREGRET_GET\000"
	.4byte	0xe3
	.ascii	"SD_POWER_DCDC_MODE_SET\000"
	.4byte	0xe9
	.ascii	"SD_APP_EVT_WAIT\000"
	.4byte	0xef
	.ascii	"SD_CLOCK_HFCLK_REQUEST\000"
	.4byte	0xf5
	.ascii	"SD_CLOCK_HFCLK_RELEASE\000"
	.4byte	0xfb
	.ascii	"SD_CLOCK_HFCLK_IS_RUNNING\000"
	.4byte	0x101
	.ascii	"SD_RADIO_NOTIFICATION_CFG_SET\000"
	.4byte	0x107
	.ascii	"SD_ECB_BLOCK_ENCRYPT\000"
	.4byte	0x10d
	.ascii	"SD_ECB_BLOCKS_ENCRYPT\000"
	.4byte	0x113
	.ascii	"SD_RADIO_SESSION_OPEN\000"
	.4byte	0x119
	.ascii	"SD_RADIO_SESSION_CLOSE\000"
	.4byte	0x11f
	.ascii	"SD_RADIO_REQUEST\000"
	.4byte	0x125
	.ascii	"SD_EVT_GET\000"
	.4byte	0x12b
	.ascii	"SD_TEMP_GET\000"
	.4byte	0x131
	.ascii	"SVC_SOC_LAST\000"
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
	.4byte	0x39d
	.ascii	"m_nrf_log_nrf_sdh_soc_logs_data_const\000"
	.4byte	0x3af
	.ascii	"m_nrf_log_nrf_sdh_soc_logs_data_dynamic\000"
	.4byte	0x3dc
	.ascii	"sdh_soc_observers\000"
	.4byte	0x3ee
	.ascii	"m_nrf_sdh_soc_evts_poll\000"
	.4byte	0x3af
	.ascii	"m_nrf_log_nrf_sdh_soc_logs_data_dynamic\000"
	.4byte	0x400
	.ascii	"nrf_sdh_soc_evts_poll\000"
	.4byte	0x51a
	.ascii	"sd_evt_get\000"
	.4byte	0x54b
	.ascii	"nrf_section_iter_get\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x27f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x594
	.4byte	0x29
	.ascii	"signed char\000"
	.4byte	0x3c
	.ascii	"unsigned char\000"
	.4byte	0x30
	.ascii	"uint8_t\000"
	.4byte	0x48
	.ascii	"short int\000"
	.4byte	0x5b
	.ascii	"short unsigned int\000"
	.4byte	0x4f
	.ascii	"uint16_t\000"
	.4byte	0x73
	.ascii	"int\000"
	.4byte	0x62
	.ascii	"int32_t\000"
	.4byte	0x86
	.ascii	"unsigned int\000"
	.4byte	0x7a
	.ascii	"uint32_t\000"
	.4byte	0x8d
	.ascii	"long long int\000"
	.4byte	0x94
	.ascii	"long long unsigned int\000"
	.4byte	0x9d
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xa4
	.ascii	"char\000"
	.4byte	0xb0
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xc5
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x220
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x244
	.ascii	"ret_code_t\000"
	.4byte	0x29f
	.ascii	"nrf_section_set_t\000"
	.4byte	0x2b4
	.ascii	"nrf_section_iter_t\000"
	.4byte	0xb
	.ascii	"NRF_SOC_SVCS\000"
	.4byte	0x2c9
	.ascii	"nrf_sdh_soc_evt_handler_t\000"
	.4byte	0x2f4
	.ascii	"nrf_sdh_soc_evt_observer_t\000"
	.4byte	0x300
	.ascii	"_Bool\000"
	.4byte	0x310
	.ascii	"nrf_sdh_stack_observer_t\000"
	.4byte	0x31c
	.ascii	"FILE\000"
	.4byte	0x35b
	.ascii	"nrf_log_severity_t\000"
	.4byte	0x36b
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x37b
	.ascii	"nrf_log_module_const_data_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB177
	.4byte	.LFE177-.LFB177
	.4byte	.LFB186
	.4byte	.LFE186-.LFB186
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	0
	.4byte	0
	.4byte	.LBB9
	.4byte	.LBE9
	.4byte	.LBB10
	.4byte	.LBE10
	.4byte	0
	.4byte	0
	.4byte	.LFB177
	.4byte	.LFE177
	.4byte	.LFB186
	.4byte	.LFE186
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x2
	.file 17 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x11
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x5
	.byte	0x4
	.file 18 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x12
	.byte	0x4
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.file 19 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x13
	.byte	0x4
	.file 20 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x14
	.byte	0x4
	.file 21 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x15
	.byte	0x4
	.file 22 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x16
	.byte	0x4
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0xa
	.file 23 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xd
	.file 24 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x18
	.byte	0x4
	.file 25 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x19
	.file 26 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x1a
	.byte	0x3
	.uleb128 0x92
	.uleb128 0xb
	.file 27 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x1b
	.file 28 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x1c
	.byte	0x4
	.byte	0x4
	.file 29 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x1d
	.byte	0x4
	.file 30 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x1e
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.file 31 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x1f
	.byte	0x4
	.file 32 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x20
	.byte	0x4
	.file 33 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x21
	.byte	0x4
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 34 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x22
	.file 35 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x7
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x3
	.file 36 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x24
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x23
	.byte	0x4
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x1
	.file 37 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x25
	.byte	0x4
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x17
	.byte	0x4
	.file 38 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x26
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xe
	.byte	0x4
	.file 39 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x27
	.byte	0x4
	.byte	0x4
	.file 40 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x28
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x24
	.byte	0x4
	.file 41 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x29
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0xf
	.file 42 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x2a
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF104:
	.ascii	"currency_symbol\000"
.LASF16:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF2:
	.ascii	"debug_color_id\000"
.LASF198:
	.ascii	"p_iter\000"
.LASF165:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF151:
	.ascii	"__RAL_data_utf8_space\000"
.LASF131:
	.ascii	"date_time_format\000"
.LASF146:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF14:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF142:
	.ascii	"__RAL_codeset_ascii\000"
.LASF81:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF53:
	.ascii	"SD_POWER_GPREGRET_CLR\000"
.LASF32:
	.ascii	"SD_PPI_GROUP_GET\000"
.LASF188:
	.ascii	"p_evt_id\000"
.LASF112:
	.ascii	"p_cs_precedes\000"
.LASF71:
	.ascii	"p_item\000"
.LASF58:
	.ascii	"SD_CLOCK_HFCLK_RELEASE\000"
.LASF153:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF191:
	.ascii	"app_error_handler\000"
.LASF139:
	.ascii	"long long unsigned int\000"
.LASF192:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF195:
	.ascii	"nrf_sdh_soc_evts_poll\000"
.LASF156:
	.ascii	"__user_get_time_of_day\000"
.LASF164:
	.ascii	"_vectors\000"
.LASF26:
	.ascii	"SD_PPI_CHANNEL_ENABLE_SET\000"
.LASF160:
	.ascii	"ITM_RxBuffer\000"
.LASF129:
	.ascii	"date_format\000"
.LASF80:
	.ascii	"next\000"
.LASF103:
	.ascii	"int_curr_symbol\000"
.LASF167:
	.ascii	"nrf_sdh_soc_evt_observer_t\000"
.LASF127:
	.ascii	"abbrev_month_names\000"
.LASF69:
	.ascii	"NRF_SOC_SVCS\000"
.LASF79:
	.ascii	"decode\000"
.LASF138:
	.ascii	"long long int\000"
.LASF135:
	.ascii	"signed char\000"
.LASF33:
	.ascii	"SD_FLASH_PAGE_ERASE\000"
.LASF140:
	.ascii	"__RAL_global_locale\000"
.LASF9:
	.ascii	"module_id\000"
.LASF88:
	.ascii	"codeset\000"
.LASF59:
	.ascii	"SD_CLOCK_HFCLK_IS_RUNNING\000"
.LASF95:
	.ascii	"__towupper\000"
.LASF21:
	.ascii	"nrf_sdh_stack_evt_handler_t\000"
.LASF189:
	.ascii	"nrf_section_iter_next\000"
.LASF99:
	.ascii	"long int\000"
.LASF4:
	.ascii	"initial_lvl\000"
.LASF45:
	.ascii	"SD_POWER_RESET_REASON_GET\000"
.LASF89:
	.ascii	"__RAL_locale_data_t\000"
.LASF150:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF173:
	.ascii	"stdin\000"
.LASF56:
	.ascii	"SD_APP_EVT_WAIT\000"
.LASF15:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF52:
	.ascii	"SD_POWER_GPREGRET_SET\000"
.LASF124:
	.ascii	"day_names\000"
.LASF179:
	.ascii	"m_nrf_log_nrf_sdh_soc_logs_data_const\000"
.LASF118:
	.ascii	"int_p_cs_precedes\000"
.LASF63:
	.ascii	"SD_RADIO_SESSION_OPEN\000"
.LASF134:
	.ascii	"__wchar\000"
.LASF25:
	.ascii	"SD_PPI_CHANNEL_ENABLE_GET\000"
.LASF29:
	.ascii	"SD_PPI_GROUP_TASK_ENABLE\000"
.LASF107:
	.ascii	"mon_grouping\000"
.LASF94:
	.ascii	"__iswctype\000"
.LASF76:
	.ascii	"size_t\000"
.LASF13:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF10:
	.ascii	"padding\000"
.LASF61:
	.ascii	"SD_ECB_BLOCK_ENCRYPT\000"
.LASF185:
	.ascii	"evt_id\000"
.LASF24:
	.ascii	"unsigned int\000"
.LASF43:
	.ascii	"SD_POWER_MODE_SET\000"
.LASF161:
	.ascii	"SystemCoreClock\000"
.LASF128:
	.ascii	"am_pm_indicator\000"
.LASF149:
	.ascii	"__RAL_data_utf8_period\000"
.LASF102:
	.ascii	"grouping\000"
.LASF130:
	.ascii	"time_format\000"
.LASF70:
	.ascii	"p_set\000"
.LASF96:
	.ascii	"__towlower\000"
.LASF154:
	.ascii	"__RAL_data_empty_string\000"
.LASF60:
	.ascii	"SD_RADIO_NOTIFICATION_CFG_SET\000"
.LASF101:
	.ascii	"thousands_sep\000"
.LASF169:
	.ascii	"nrf_sdh_stack_observer_t\000"
.LASF176:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF163:
	.ascii	"__StackLimit\000"
.LASF92:
	.ascii	"__toupper\000"
.LASF86:
	.ascii	"name\000"
.LASF87:
	.ascii	"data\000"
.LASF109:
	.ascii	"negative_sign\000"
.LASF12:
	.ascii	"short unsigned int\000"
.LASF41:
	.ascii	"SD_RAND_APPLICATION_BYTES_AVAILABLE_GET\000"
.LASF194:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF73:
	.ascii	"section\000"
.LASF54:
	.ascii	"SD_POWER_GPREGRET_GET\000"
.LASF42:
	.ascii	"SD_RAND_APPLICATION_VECTOR_GET\000"
.LASF77:
	.ascii	"p_start\000"
.LASF166:
	.ascii	"nrf_section_iter_t\000"
.LASF196:
	.ascii	"sd_evt_get\000"
.LASF171:
	.ascii	"timeval\000"
.LASF83:
	.ascii	"__locale_s\000"
.LASF174:
	.ascii	"stdout\000"
.LASF193:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\components\\softdevice"
	.ascii	"\\common\\nrf_sdh_soc.c\000"
.LASF113:
	.ascii	"p_sep_by_space\000"
.LASF182:
	.ascii	"sdh_soc_observers\000"
.LASF85:
	.ascii	"__RAL_locale_t\000"
.LASF28:
	.ascii	"SD_PPI_CHANNEL_ASSIGN\000"
.LASF132:
	.ascii	"__mbstate_s\000"
.LASF108:
	.ascii	"positive_sign\000"
.LASF116:
	.ascii	"p_sign_posn\000"
.LASF159:
	.ascii	"ret_code_t\000"
.LASF37:
	.ascii	"SD_MUTEX_NEW\000"
.LASF67:
	.ascii	"SD_TEMP_GET\000"
.LASF144:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF20:
	.ascii	"p_context\000"
.LASF50:
	.ascii	"SD_POWER_RAM_POWER_CLR\000"
.LASF30:
	.ascii	"SD_PPI_GROUP_TASK_DISABLE\000"
.LASF98:
	.ascii	"__mbtowc\000"
.LASF125:
	.ascii	"abbrev_day_names\000"
.LASF40:
	.ascii	"SD_RAND_APPLICATION_POOL_CAPACITY_GET\000"
.LASF186:
	.ascii	"iter\000"
.LASF141:
	.ascii	"__RAL_c_locale\000"
.LASF93:
	.ascii	"__tolower\000"
.LASF75:
	.ascii	"nrf_section_t\000"
.LASF47:
	.ascii	"SD_POWER_POF_ENABLE\000"
.LASF155:
	.ascii	"__user_set_time_of_day\000"
.LASF119:
	.ascii	"int_n_cs_precedes\000"
.LASF143:
	.ascii	"__RAL_codeset_utf8\000"
.LASF84:
	.ascii	"__category\000"
.LASF133:
	.ascii	"__state\000"
.LASF35:
	.ascii	"SD_FLASH_PROTECT\000"
.LASF62:
	.ascii	"SD_ECB_BLOCKS_ENCRYPT\000"
.LASF162:
	.ascii	"__StackTop\000"
.LASF168:
	.ascii	"_Bool\000"
.LASF137:
	.ascii	"int32_t\000"
.LASF7:
	.ascii	"unsigned char\000"
.LASF145:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF3:
	.ascii	"compiled_lvl\000"
.LASF111:
	.ascii	"frac_digits\000"
.LASF136:
	.ascii	"short int\000"
.LASF158:
	.ascii	"__RAL_error_decoder_head\000"
.LASF19:
	.ascii	"handler\000"
.LASF48:
	.ascii	"SD_POWER_POF_THRESHOLD_SET\000"
.LASF74:
	.ascii	"item_size\000"
.LASF170:
	.ascii	"FILE\000"
.LASF34:
	.ascii	"SD_FLASH_WRITE\000"
.LASF39:
	.ascii	"SD_MUTEX_RELEASE\000"
.LASF49:
	.ascii	"SD_POWER_RAM_POWER_SET\000"
.LASF68:
	.ascii	"SVC_SOC_LAST\000"
.LASF44:
	.ascii	"SD_POWER_SYSTEM_OFF\000"
.LASF117:
	.ascii	"n_sign_posn\000"
.LASF23:
	.ascii	"uint32_t\000"
.LASF184:
	.ascii	"ret_code\000"
.LASF181:
	.ascii	"__stop_sdh_soc_observers\000"
.LASF122:
	.ascii	"int_p_sign_posn\000"
.LASF57:
	.ascii	"SD_CLOCK_HFCLK_REQUEST\000"
.LASF8:
	.ascii	"char\000"
.LASF46:
	.ascii	"SD_POWER_RESET_REASON_CLR\000"
.LASF27:
	.ascii	"SD_PPI_CHANNEL_ENABLE_CLR\000"
.LASF31:
	.ascii	"SD_PPI_GROUP_ASSIGN\000"
.LASF178:
	.ascii	"m_nrf_log_nrf_sdh_soc_logs_data_dynamic\000"
.LASF36:
	.ascii	"SD_PROTECTED_REGISTER_WRITE\000"
.LASF78:
	.ascii	"p_end\000"
.LASF120:
	.ascii	"int_p_sep_by_space\000"
.LASF197:
	.ascii	"nrf_section_iter_get\000"
.LASF18:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF17:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF90:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF106:
	.ascii	"mon_thousands_sep\000"
.LASF65:
	.ascii	"SD_RADIO_REQUEST\000"
.LASF66:
	.ascii	"SD_EVT_GET\000"
.LASF123:
	.ascii	"int_n_sign_posn\000"
.LASF183:
	.ascii	"m_nrf_sdh_soc_evts_poll\000"
.LASF175:
	.ascii	"stderr\000"
.LASF64:
	.ascii	"SD_RADIO_SESSION_CLOSE\000"
.LASF147:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF91:
	.ascii	"__isctype\000"
.LASF190:
	.ascii	"nrf_section_iter_init\000"
.LASF51:
	.ascii	"SD_POWER_RAM_POWER_GET\000"
.LASF82:
	.ascii	"__RAL_error_decoder_s\000"
.LASF157:
	.ascii	"__RAL_error_decoder_t\000"
.LASF114:
	.ascii	"n_cs_precedes\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF126:
	.ascii	"month_names\000"
.LASF177:
	.ascii	"nrf_log_module_const_data_t\000"
.LASF38:
	.ascii	"SD_MUTEX_ACQUIRE\000"
.LASF110:
	.ascii	"int_frac_digits\000"
.LASF22:
	.ascii	"nrf_sdh_soc_evt_handler_t\000"
.LASF72:
	.ascii	"nrf_section_set_t\000"
.LASF55:
	.ascii	"SD_POWER_DCDC_MODE_SET\000"
.LASF0:
	.ascii	"p_module_name\000"
.LASF121:
	.ascii	"int_n_sep_by_space\000"
.LASF180:
	.ascii	"__start_sdh_soc_observers\000"
.LASF6:
	.ascii	"nrf_log_severity_t\000"
.LASF115:
	.ascii	"n_sep_by_space\000"
.LASF172:
	.ascii	"__RAL_FILE\000"
.LASF152:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF148:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF105:
	.ascii	"mon_decimal_point\000"
.LASF97:
	.ascii	"__wctomb\000"
.LASF1:
	.ascii	"info_color_id\000"
.LASF100:
	.ascii	"decimal_point\000"
.LASF187:
	.ascii	"p_observer\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
