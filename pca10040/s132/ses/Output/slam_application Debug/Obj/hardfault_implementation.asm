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
	.file	"hardfault_implementation.c"
	.text
.Ltext0:
	.section	.text.HardFault_process,"ax",%progbits
	.align	1
	.weak	HardFault_process
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HardFault_process, %function
HardFault_process:
.LVL0:
.LFB209:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\hardfault\\hardfault_implementation.c"
	.loc 1 66 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 68 5 view .LVU1
.LBB16:
.LBI16:
	.file 2 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.loc 2 1790 20 view .LVU2
.LBB17:
	.loc 2 1792 3 view .LVU3
.LBB18:
.LBI18:
	.file 3 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.loc 3 427 51 view .LVU4
.LBB19:
	.loc 3 429 3 view .LVU5
	.syntax unified
@ 429 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
.LBE19:
.LBE18:
	.loc 2 1794 3 view .LVU6
	.loc 2 1795 72 is_stmt 0 view .LVU7
	ldr	r1, .L3
	ldr	r2, [r1, #12]
	.loc 2 1795 80 view .LVU8
	and	r2, r2, #1792
	.loc 2 1795 95 view .LVU9
	ldr	r3, .L3+4
	orrs	r3, r3, r2
	.loc 2 1794 54 view .LVU10
	str	r3, [r1, #12]
	.loc 2 1797 3 is_stmt 1 view .LVU11
.LBB20:
.LBI20:
	.loc 3 427 51 view .LVU12
.LBB21:
	.loc 3 429 3 view .LVU13
	.syntax unified
@ 429 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
.L2:
.LBE21:
.LBE20:
	.loc 2 1799 3 view .LVU14
	.loc 2 1801 5 view .LVU15
.LBB22:
.LBI22:
	.loc 3 373 51 view .LVU16
.LBB23:
	.loc 3 375 3 view .LVU17
	.syntax unified
@ 375 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	nop
@ 0 "" 2
	.thumb
	.syntax unified
	b	.L2
.L4:
	.align	2
.L3:
	.word	-536810240
	.word	100270084
.LBE23:
.LBE22:
.LBE17:
.LBE16:
.LFE209:
	.size	HardFault_process, .-HardFault_process
	.section	.rodata.HardFault_c_handler.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"HARD FAULT at 0x%08X\000"
	.align	2
.LC1:
	.ascii	"  R0:  0x%08X  R1:  0x%08X  R2:  0x%08X  R3:  0x%08"
	.ascii	"X\000"
	.align	2
.LC2:
	.ascii	"  R12: 0x%08X  LR:  0x%08X  PSR: 0x%08X\000"
	.align	2
.LC3:
	.ascii	"Cause: BusFault on a vector table read during excep"
	.ascii	"tion processing.\000"
	.align	2
.LC4:
	.ascii	"Cause: %s.\000"
	.align	2
.LC5:
	.ascii	"MemManage Fault Address: 0x%08X\000"
	.align	2
.LC6:
	.ascii	"Bus Fault Address: 0x%08X\000"
	.section	.text.HardFault_c_handler,"ax",%progbits
	.align	1
	.global	HardFault_c_handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	HardFault_c_handler, %function
HardFault_c_handler:
.LVL1:
.LFB210:
	.loc 1 73 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 73 1 is_stmt 0 view .LVU19
	push	{r4, r5, r6, r7, lr}
.LCFI0:
	sub	sp, sp, #12
.LCFI1:
	mov	r6, r0
	.loc 1 74 5 is_stmt 1 view .LVU20
	.loc 1 74 10 view .LVU21
	bl	nrf_log_panic
.LVL2:
	.loc 1 74 27 view .LVU22
	.loc 1 74 32 view .LVU23
.L6:
	.loc 1 74 66 discriminator 2 view .LVU24
	.loc 1 74 38 discriminator 2 view .LVU25
	.loc 1 74 39 is_stmt 0 discriminator 2 view .LVU26
	bl	nrf_log_frontend_dequeue
.LVL3:
	.loc 1 74 38 discriminator 2 view .LVU27
	cmp	r0, #0
	bne	.L6
	.loc 1 74 76 is_stmt 1 discriminator 3 view .LVU28
	.loc 1 74 89 discriminator 3 view .LVU29
	.loc 1 88 5 discriminator 3 view .LVU30
.LVL4:
	.loc 1 89 5 discriminator 3 view .LVU31
	.loc 1 118 5 discriminator 3 view .LVU32
	.loc 1 118 14 is_stmt 0 discriminator 3 view .LVU33
	ldr	r7, .L20
	ldr	r5, [r7, #40]
.LVL5:
	.loc 1 121 5 is_stmt 1 discriminator 3 view .LVU34
	.loc 1 121 80 discriminator 3 view .LVU35
	.loc 1 121 136 discriminator 3 view .LVU36
	.loc 1 121 224 is_stmt 0 discriminator 3 view .LVU37
	ldr	r4, .L20+4
	ldrh	r0, [r4]
	.loc 1 121 235 discriminator 3 view .LVU38
	lsls	r0, r0, #16
	.loc 1 121 136 discriminator 3 view .LVU39
	ldr	r2, [r6, #24]
	ldr	r1, .L20+8
	orr	r0, r0, #1
	bl	nrf_log_frontend_std_1
.LVL6:
	.loc 1 121 296 is_stmt 1 discriminator 3 view .LVU40
	.loc 1 122 5 discriminator 3 view .LVU41
	.loc 1 122 80 discriminator 3 view .LVU42
	.loc 1 122 136 discriminator 3 view .LVU43
	.loc 1 122 224 is_stmt 0 discriminator 3 view .LVU44
	ldrh	r0, [r4]
	.loc 1 122 235 discriminator 3 view .LVU45
	lsls	r0, r0, #16
	.loc 1 122 367 discriminator 3 view .LVU46
	ldr	r3, [r6, #8]
	.loc 1 122 392 discriminator 3 view .LVU47
	ldr	r2, [r6, #12]
	.loc 1 122 136 discriminator 3 view .LVU48
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [r6, #4]
	ldr	r2, [r6]
	ldr	r1, .L20+12
	orr	r0, r0, #1
	bl	nrf_log_frontend_std_4
.LVL7:
	.loc 1 123 77 is_stmt 1 discriminator 3 view .LVU49
	.loc 1 124 5 discriminator 3 view .LVU50
	.loc 1 124 80 discriminator 3 view .LVU51
	.loc 1 124 136 discriminator 3 view .LVU52
	.loc 1 124 224 is_stmt 0 discriminator 3 view .LVU53
	ldrh	r0, [r4]
	.loc 1 124 235 discriminator 3 view .LVU54
	lsls	r0, r0, #16
	.loc 1 124 355 discriminator 3 view .LVU55
	ldr	r3, [r6, #28]
	.loc 1 124 136 discriminator 3 view .LVU56
	str	r3, [sp]
	ldr	r3, [r6, #20]
	ldr	r2, [r6, #16]
	ldr	r1, .L20+16
	orr	r0, r0, #1
	bl	nrf_log_frontend_std_3
.LVL8:
	.loc 1 125 66 is_stmt 1 discriminator 3 view .LVU57
	.loc 1 127 5 discriminator 3 view .LVU58
	.loc 1 127 52 is_stmt 0 discriminator 3 view .LVU59
	ldr	r3, [r7, #44]
	.loc 1 127 8 discriminator 3 view .LVU60
	tst	r3, #2
	bne	.L15
.L7:
	.loc 1 73 1 discriminator 2 view .LVU61
	movs	r4, #0
	b	.L8
.L15:
	.loc 1 129 9 is_stmt 1 discriminator 3 view .LVU62
	.loc 1 129 84 discriminator 3 view .LVU63
	.loc 1 129 140 discriminator 3 view .LVU64
	.loc 1 129 228 is_stmt 0 discriminator 3 view .LVU65
	ldrh	r0, [r4]
	.loc 1 129 239 discriminator 3 view .LVU66
	lsls	r0, r0, #16
	.loc 1 129 140 discriminator 3 view .LVU67
	ldr	r1, .L20+20
	orr	r0, r0, #1
	bl	nrf_log_frontend_std_0
.LVL9:
	b	.L7
.LVL10:
.L17:
.LBB24:
	.loc 1 136 13 is_stmt 1 discriminator 3 view .LVU68
	.loc 1 136 88 discriminator 3 view .LVU69
	.loc 1 136 144 discriminator 3 view .LVU70
	.loc 1 136 232 is_stmt 0 discriminator 3 view .LVU71
	ldr	r3, .L20+4
	ldrh	r0, [r3]
	.loc 1 136 243 discriminator 3 view .LVU72
	lsls	r0, r0, #16
	.loc 1 136 144 discriminator 3 view .LVU73
	ldr	r1, .L20+24
	orr	r0, r0, #1
	bl	nrf_log_frontend_std_1
.LVL11:
.L9:
	.loc 1 136 305 is_stmt 1 discriminator 5 view .LVU74
	.loc 1 132 72 discriminator 5 view .LVU75
	.loc 1 132 73 is_stmt 0 discriminator 5 view .LVU76
	adds	r4, r4, #1
.LVL12:
.L8:
	.loc 1 132 26 is_stmt 1 discriminator 2 view .LVU77
	.loc 1 132 5 is_stmt 0 discriminator 2 view .LVU78
	cmp	r4, #25
	bhi	.L16
	.loc 1 134 9 is_stmt 1 view .LVU79
	.loc 1 134 25 is_stmt 0 view .LVU80
	movs	r3, #1
	lsls	r3, r3, r4
	.loc 1 134 12 view .LVU81
	tst	r3, r5
	beq	.L9
	.loc 1 134 51 discriminator 1 view .LVU82
	ldr	r3, .L20+28
	ldr	r2, [r3, r4, lsl #2]
	.loc 1 134 38 discriminator 1 view .LVU83
	cmp	r2, #0
	bne	.L17
	b	.L9
.L16:
	.loc 1 134 38 discriminator 1 view .LVU84
.LBE24:
	.loc 1 140 5 is_stmt 1 view .LVU85
	.loc 1 140 8 is_stmt 0 view .LVU86
	tst	r5, #128
	bne	.L18
.L11:
	.loc 1 142 350 is_stmt 1 discriminator 5 view .LVU87
	.loc 1 145 5 discriminator 5 view .LVU88
	.loc 1 145 8 is_stmt 0 discriminator 5 view .LVU89
	tst	r5, #32768
	bne	.L19
.L12:
	.loc 1 147 343 is_stmt 1 discriminator 5 view .LVU90
	.loc 1 150 5 discriminator 5 view .LVU91
	.loc 1 150 10 discriminator 5 view .LVU92
	.loc 1 150 49 is_stmt 0 discriminator 5 view .LVU93
	ldr	r3, .L20+32
	ldr	r3, [r3]
	.loc 1 150 13 discriminator 5 view .LVU94
	tst	r3, #1
	beq	.L13
	.loc 1 150 69 is_stmt 1 discriminator 1 view .LVU95
	.syntax unified
@ 150 "C:\nRF5_SDK_15.0.0_a53641a\components\libraries\hardfault\hardfault_implementation.c" 1
	BKPT 0
@ 0 "" 2
	.thumb
	.syntax unified
.L13:
	.loc 1 150 87 discriminator 3 view .LVU96
	.loc 1 150 98 discriminator 3 view .LVU97
	.loc 1 156 5 discriminator 3 view .LVU98
	mov	r0, r6
	bl	HardFault_process
.LVL13:
	.loc 1 157 1 is_stmt 0 discriminator 3 view .LVU99
	add	sp, sp, #12
.LCFI2:
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.LVL14:
.L18:
.LCFI3:
	.loc 1 142 9 is_stmt 1 discriminator 3 view .LVU100
	.loc 1 142 84 discriminator 3 view .LVU101
	.loc 1 142 140 discriminator 3 view .LVU102
	.loc 1 142 228 is_stmt 0 discriminator 3 view .LVU103
	ldr	r3, .L20+4
	ldrh	r0, [r3]
	.loc 1 142 239 discriminator 3 view .LVU104
	lsls	r0, r0, #16
	.loc 1 142 336 discriminator 3 view .LVU105
	ldr	r3, .L20
	ldr	r2, [r3, #52]
	.loc 1 142 140 discriminator 3 view .LVU106
	ldr	r1, .L20+36
	orr	r0, r0, #1
	bl	nrf_log_frontend_std_1
.LVL15:
	b	.L11
.L19:
	.loc 1 147 9 is_stmt 1 discriminator 3 view .LVU107
	.loc 1 147 84 discriminator 3 view .LVU108
	.loc 1 147 140 discriminator 3 view .LVU109
	.loc 1 147 228 is_stmt 0 discriminator 3 view .LVU110
	ldr	r3, .L20+4
	ldrh	r0, [r3]
	.loc 1 147 239 discriminator 3 view .LVU111
	lsls	r0, r0, #16
	.loc 1 147 330 discriminator 3 view .LVU112
	ldr	r3, .L20
	ldr	r2, [r3, #56]
	.loc 1 147 140 discriminator 3 view .LVU113
	ldr	r1, .L20+40
	orr	r0, r0, #1
	bl	nrf_log_frontend_std_1
.LVL16:
	b	.L12
.L21:
	.align	2
.L20:
	.word	-536810240
	.word	.LANCHOR0
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LANCHOR1
	.word	-536810000
	.word	.LC5
	.word	.LC6
.LFE210:
	.size	HardFault_c_handler, .-HardFault_c_handler
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC7:
	.ascii	"The processor has attempted to execute an undefined"
	.ascii	" instruction\000"
	.align	2
.LC8:
	.ascii	"The processor attempted a load or store at a locati"
	.ascii	"on that does not permit the operation\000"
	.align	2
.LC9:
	.ascii	"Unstack for an exception return has caused one or m"
	.ascii	"ore access violations\000"
	.align	2
.LC10:
	.ascii	"Stacking for an exception entry has caused one or m"
	.ascii	"ore access violations\000"
	.align	2
.LC11:
	.ascii	"A MemManage fault occurred during floating-point la"
	.ascii	"zy state preservation\000"
	.align	2
.LC12:
	.ascii	"Instruction bus error\000"
	.align	2
.LC13:
	.ascii	"Data bus error (PC value stacked for the exception "
	.ascii	"return points to the instruction that caused the fa"
	.ascii	"ult)\000"
	.align	2
.LC14:
	.ascii	"Data bus error (return address in the stack frame i"
	.ascii	"s not related to the instruction that caused the er"
	.ascii	"ror)\000"
	.align	2
.LC15:
	.ascii	"Unstack for an exception return has caused one or m"
	.ascii	"ore BusFaults\000"
	.align	2
.LC16:
	.ascii	"Stacking for an exception entry has caused one or m"
	.ascii	"ore BusFaults\000"
	.align	2
.LC17:
	.ascii	"A bus fault occurred during floating-point lazy sta"
	.ascii	"te preservation\000"
	.align	2
.LC18:
	.ascii	"The processor has attempted to execute an instructi"
	.ascii	"on that makes illegal use of the EPSR\000"
	.align	2
.LC19:
	.ascii	"The processor has attempted an illegal load of EXC_"
	.ascii	"RETURN to the PC, as a result of an invalid context"
	.ascii	", or an invalid EXC_RETURN value\000"
	.align	2
.LC20:
	.ascii	"The processor has attempted to access a coprocessor"
	.ascii	"\000"
	.align	2
.LC21:
	.ascii	"The processor has made an unaligned memory access\000"
	.align	2
.LC22:
	.ascii	"The processor has executed an SDIV or UDIV instruct"
	.ascii	"ion with a divisor of 0\000"
	.global	HardFault_p_stack
	.global	m_nrf_log_hardfault_logs_data_dynamic
	.global	m_nrf_log_hardfault_logs_data_const
	.align	2
.LC23:
	.ascii	"hardfault\000"
	.section	.bss.HardFault_p_stack,"aw",%nobits
	.align	2
	.type	HardFault_p_stack, %object
	.size	HardFault_p_stack, 4
HardFault_p_stack:
	.space	4
	.section	.log_const_data_hardfault,"a"
	.align	2
	.type	m_nrf_log_hardfault_logs_data_const, %object
	.size	m_nrf_log_hardfault_logs_data_const, 8
m_nrf_log_hardfault_logs_data_const:
	.word	.LC23
	.byte	0
	.byte	0
	.byte	3
	.byte	3
	.section	.log_dynamic_data_hardfault,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	m_nrf_log_hardfault_logs_data_dynamic, %object
	.size	m_nrf_log_hardfault_logs_data_dynamic, 4
m_nrf_log_hardfault_logs_data_dynamic:
	.space	4
	.section	.rodata.cfsr_msgs.8521,"a"
	.align	2
	.set	.LANCHOR1,. + 0
	.type	cfsr_msgs.8521, %object
	.size	cfsr_msgs.8521, 104
cfsr_msgs.8521:
	.word	.LC7
	.word	.LC8
	.word	0
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	0
	.word	0
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	0
	.word	0
	.word	.LC7
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	0
	.word	0
	.word	0
	.word	0
	.word	.LC21
	.word	.LC22
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
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.byte	0x4
	.4byte	.LCFI0-.LFB210
	.byte	0xe
	.uleb128 0x14
	.byte	0x84
	.uleb128 0x5
	.byte	0x85
	.uleb128 0x4
	.byte	0x86
	.uleb128 0x3
	.byte	0x87
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xa
	.byte	0xe
	.uleb128 0x14
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
	.file 6 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
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
	.byte	0x6
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x6
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x6
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
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0
	.file 7 "C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\hardfault\\hardfault.h"
	.section	.debug_types,"G",%progbits,wt.0c0d143d9ea2fc37,comdat
	.4byte	0x9d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xc
	.byte	0xd
	.byte	0x14
	.byte	0x3d
	.byte	0x9e
	.byte	0xa2
	.byte	0xfc
	.byte	0x37
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xe
	.4byte	.LASF23
	.byte	0x20
	.byte	0x7
	.byte	0x3c
	.byte	0x10
	.4byte	0x8d
	.uleb128 0xf
	.ascii	"r0\000"
	.byte	0x7
	.byte	0x3e
	.byte	0xe
	.4byte	0x8d
	.byte	0
	.uleb128 0xf
	.ascii	"r1\000"
	.byte	0x7
	.byte	0x3f
	.byte	0xe
	.4byte	0x8d
	.byte	0x4
	.uleb128 0xf
	.ascii	"r2\000"
	.byte	0x7
	.byte	0x40
	.byte	0xe
	.4byte	0x8d
	.byte	0x8
	.uleb128 0xf
	.ascii	"r3\000"
	.byte	0x7
	.byte	0x41
	.byte	0xe
	.4byte	0x8d
	.byte	0xc
	.uleb128 0xf
	.ascii	"r12\000"
	.byte	0x7
	.byte	0x42
	.byte	0xe
	.4byte	0x8d
	.byte	0x10
	.uleb128 0xf
	.ascii	"lr\000"
	.byte	0x7
	.byte	0x43
	.byte	0xe
	.4byte	0x8d
	.byte	0x14
	.uleb128 0xf
	.ascii	"pc\000"
	.byte	0x7
	.byte	0x44
	.byte	0xe
	.4byte	0x8d
	.byte	0x18
	.uleb128 0xf
	.ascii	"psr\000"
	.byte	0x7
	.byte	0x45
	.byte	0xe
	.4byte	0x8d
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x99
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0
	.section	.debug_types,"G",%progbits,wt.b905dabfc5f5f33f,comdat
	.4byte	0x75
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xb9
	.byte	0x5
	.byte	0xda
	.byte	0xbf
	.byte	0xc5
	.byte	0xf5
	.byte	0xf3
	.byte	0x3f
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0x10
	.byte	0x2
	.2byte	0x57c
	.byte	0x9
	.4byte	0x60
	.uleb128 0x11
	.4byte	.LASF24
	.byte	0x2
	.2byte	0x57e
	.byte	0x15
	.4byte	0x60
	.byte	0
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x2
	.2byte	0x57f
	.byte	0x15
	.4byte	0x60
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x2
	.2byte	0x580
	.byte	0x15
	.4byte	0x60
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x2
	.2byte	0x581
	.byte	0x15
	.4byte	0x60
	.byte	0xc
	.byte	0
	.uleb128 0xb
	.4byte	0x65
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x71
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.byte	0
	.section	.debug_types,"G",%progbits,wt.1a6b2b7b737fbd2c,comdat
	.4byte	0x1f8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1a
	.byte	0x6b
	.byte	0x2b
	.byte	0x7b
	.byte	0x73
	.byte	0x7f
	.byte	0xbd
	.byte	0x2c
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0x8c
	.byte	0x2
	.2byte	0x1e5
	.byte	0x9
	.4byte	0x14e
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x2
	.2byte	0x1e7
	.byte	0x1b
	.4byte	0x14e
	.byte	0
	.uleb128 0x11
	.4byte	.LASF29
	.byte	0x2
	.2byte	0x1e8
	.byte	0x15
	.4byte	0x153
	.byte	0x4
	.uleb128 0x11
	.4byte	.LASF30
	.byte	0x2
	.2byte	0x1e9
	.byte	0x15
	.4byte	0x153
	.byte	0x8
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x1ea
	.byte	0x15
	.4byte	0x153
	.byte	0xc
	.uleb128 0x12
	.ascii	"SCR\000"
	.byte	0x2
	.2byte	0x1eb
	.byte	0x15
	.4byte	0x153
	.byte	0x10
	.uleb128 0x12
	.ascii	"CCR\000"
	.byte	0x2
	.2byte	0x1ec
	.byte	0x15
	.4byte	0x153
	.byte	0x14
	.uleb128 0x12
	.ascii	"SHP\000"
	.byte	0x2
	.2byte	0x1ed
	.byte	0x14
	.4byte	0x158
	.byte	0x18
	.uleb128 0x11
	.4byte	.LASF32
	.byte	0x2
	.2byte	0x1ee
	.byte	0x15
	.4byte	0x153
	.byte	0x24
	.uleb128 0x11
	.4byte	.LASF33
	.byte	0x2
	.2byte	0x1ef
	.byte	0x15
	.4byte	0x153
	.byte	0x28
	.uleb128 0x11
	.4byte	.LASF34
	.byte	0x2
	.2byte	0x1f0
	.byte	0x15
	.4byte	0x153
	.byte	0x2c
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x2
	.2byte	0x1f1
	.byte	0x15
	.4byte	0x153
	.byte	0x30
	.uleb128 0x11
	.4byte	.LASF36
	.byte	0x2
	.2byte	0x1f2
	.byte	0x15
	.4byte	0x153
	.byte	0x34
	.uleb128 0x11
	.4byte	.LASF37
	.byte	0x2
	.2byte	0x1f3
	.byte	0x15
	.4byte	0x153
	.byte	0x38
	.uleb128 0x11
	.4byte	.LASF38
	.byte	0x2
	.2byte	0x1f4
	.byte	0x15
	.4byte	0x153
	.byte	0x3c
	.uleb128 0x12
	.ascii	"PFR\000"
	.byte	0x2
	.2byte	0x1f5
	.byte	0x1b
	.4byte	0x15d
	.byte	0x40
	.uleb128 0x12
	.ascii	"DFR\000"
	.byte	0x2
	.2byte	0x1f6
	.byte	0x1b
	.4byte	0x14e
	.byte	0x48
	.uleb128 0x12
	.ascii	"ADR\000"
	.byte	0x2
	.2byte	0x1f7
	.byte	0x1b
	.4byte	0x14e
	.byte	0x4c
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x2
	.2byte	0x1f8
	.byte	0x1b
	.4byte	0x162
	.byte	0x50
	.uleb128 0x11
	.4byte	.LASF40
	.byte	0x2
	.2byte	0x1f9
	.byte	0x1b
	.4byte	0x167
	.byte	0x60
	.uleb128 0x11
	.4byte	.LASF41
	.byte	0x2
	.2byte	0x1fa
	.byte	0x12
	.4byte	0x16c
	.byte	0x74
	.uleb128 0x11
	.4byte	.LASF42
	.byte	0x2
	.2byte	0x1fb
	.byte	0x15
	.4byte	0x153
	.byte	0x88
	.byte	0
	.uleb128 0xb
	.4byte	0x17c
	.uleb128 0xb
	.4byte	0x181
	.uleb128 0xb
	.4byte	0x18d
	.uleb128 0xb
	.4byte	0x19d
	.uleb128 0xb
	.4byte	0x1a2
	.uleb128 0xb
	.4byte	0x1a7
	.uleb128 0xc
	.4byte	0x181
	.4byte	0x17c
	.uleb128 0xd
	.4byte	0x1ac
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x181
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x1ac
	.uleb128 0xc
	.4byte	0x1b3
	.4byte	0x19d
	.uleb128 0xd
	.4byte	0x1ac
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x1b8
	.uleb128 0x7
	.4byte	0x1c8
	.uleb128 0x7
	.4byte	0x1d8
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0xb
	.4byte	0x1e8
	.uleb128 0xc
	.4byte	0x14e
	.4byte	0x1c8
	.uleb128 0xd
	.4byte	0x1ac
	.byte	0x1
	.byte	0
	.uleb128 0xc
	.4byte	0x14e
	.4byte	0x1d8
	.uleb128 0xd
	.4byte	0x1ac
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.4byte	0x14e
	.4byte	0x1e8
	.uleb128 0xd
	.4byte	0x1ac
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.4byte	.LASF5
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0x1f4
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.byte	0
	.file 8 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x8
	.byte	0x8
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x11
	.4byte	.LASF44
	.byte	0x8
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x11
	.4byte	.LASF45
	.byte	0x8
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x8
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x4
	.byte	0x4
	.4byte	0x61
	.uleb128 0x15
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x16
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x17
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
	.uleb128 0xe
	.4byte	.LASF47
	.byte	0x14
	.byte	0x8
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x8
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
	.uleb128 0x4
	.byte	0x4
	.4byte	0x55
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x7
	.4byte	0x5a
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x8
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
	.byte	0x8
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x8
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x8
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x8
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
	.4byte	.LASF53
	.byte	0x8
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
	.4byte	.LASF54
	.byte	0x8
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
	.byte	0x8
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x8
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x8
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x8
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x8
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x8
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x8
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x8
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x8
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
	.uleb128 0x15
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0x16
	.4byte	0x130
	.uleb128 0x16
	.4byte	0x130
	.byte	0
	.uleb128 0x15
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0x16
	.4byte	0x130
	.byte	0
	.uleb128 0x15
	.4byte	0x130
	.4byte	0xea
	.uleb128 0x16
	.4byte	0x137
	.uleb128 0x16
	.4byte	0x130
	.byte	0
	.uleb128 0x15
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0x16
	.4byte	0x137
	.byte	0
	.uleb128 0x15
	.4byte	0x130
	.4byte	0x112
	.uleb128 0x16
	.4byte	0x13e
	.uleb128 0x16
	.4byte	0x144
	.uleb128 0x16
	.4byte	0x14b
	.byte	0
	.uleb128 0x15
	.4byte	0x130
	.4byte	0x130
	.uleb128 0x16
	.4byte	0x155
	.uleb128 0x16
	.4byte	0x15b
	.uleb128 0x16
	.4byte	0x144
	.uleb128 0x16
	.4byte	0x14b
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF63
	.uleb128 0x4
	.byte	0x4
	.4byte	0x161
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
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
	.byte	0x8
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x8
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x8
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x8
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x8
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x8
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x8
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x8
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x8
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x8
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x8
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x8
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x8
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x8
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x8
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x8
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x8
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x8
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x8
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x8
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x8
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x8
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x8
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x8
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x8
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x8
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x8
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x8
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x8
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x8
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x8
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x8
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0x8
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
	.uleb128 0xe
	.4byte	.LASF96
	.byte	0x8
	.byte	0x8
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x8
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0x8
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF63
	.byte	0
	.file 9 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 10 "../../../../../../components/libraries/util/app_util.h"
	.file 11 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 12 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 13 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x5d1
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x19
	.4byte	.LASF159
	.byte	0xc
	.4byte	.LASF160
	.4byte	.LASF161
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x8
	.byte	0x1
	.byte	0x6
	.4byte	.LASF99
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF7
	.uleb128 0x7
	.4byte	0x30
	.uleb128 0x8
	.byte	0x2
	.byte	0x5
	.4byte	.LASF100
	.uleb128 0x8
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x5
	.4byte	.LASF101
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x5b
	.uleb128 0xb
	.4byte	0x4a
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.4byte	.LASF21
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x6e
	.uleb128 0x8
	.byte	0x4
	.byte	0x7
	.4byte	.LASF22
	.uleb128 0x8
	.byte	0x8
	.byte	0x5
	.4byte	.LASF102
	.uleb128 0x8
	.byte	0x8
	.byte	0x7
	.4byte	.LASF103
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.4byte	.LASF63
	.uleb128 0x8
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	0x8a
	.uleb128 0x4
	.byte	0x4
	.4byte	0x91
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x8
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
	.4byte	0x9c
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x8
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
	.4byte	0xb1
	.uleb128 0x1a
	.4byte	.LASF104
	.byte	0x8
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
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x8
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xc1
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x8
	.2byte	0x110
	.byte	0x25
	.4byte	0xac
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x8
	.2byte	0x111
	.byte	0x25
	.4byte	0xac
	.uleb128 0xc
	.4byte	0x37
	.4byte	0x10e
	.uleb128 0xd
	.4byte	0x6e
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.4byte	0xfe
	.uleb128 0x1b
	.4byte	.LASF108
	.byte	0x8
	.2byte	0x113
	.byte	0x1c
	.4byte	0x10e
	.uleb128 0xc
	.4byte	0x91
	.4byte	0x12b
	.uleb128 0x1c
	.byte	0
	.uleb128 0x7
	.4byte	0x120
	.uleb128 0x1b
	.4byte	.LASF109
	.byte	0x8
	.2byte	0x115
	.byte	0x13
	.4byte	0x12b
	.uleb128 0x1b
	.4byte	.LASF110
	.byte	0x8
	.2byte	0x116
	.byte	0x13
	.4byte	0x12b
	.uleb128 0x1b
	.4byte	.LASF111
	.byte	0x8
	.2byte	0x117
	.byte	0x13
	.4byte	0x12b
	.uleb128 0x1b
	.4byte	.LASF112
	.byte	0x8
	.2byte	0x118
	.byte	0x13
	.4byte	0x12b
	.uleb128 0x1b
	.4byte	.LASF113
	.byte	0x8
	.2byte	0x11a
	.byte	0x13
	.4byte	0x12b
	.uleb128 0x1b
	.4byte	.LASF114
	.byte	0x8
	.2byte	0x11b
	.byte	0x13
	.4byte	0x12b
	.uleb128 0x1b
	.4byte	.LASF115
	.byte	0x8
	.2byte	0x11c
	.byte	0x13
	.4byte	0x12b
	.uleb128 0x1b
	.4byte	.LASF116
	.byte	0x8
	.2byte	0x11d
	.byte	0x13
	.4byte	0x12b
	.uleb128 0x1b
	.4byte	.LASF117
	.byte	0x8
	.2byte	0x11e
	.byte	0x13
	.4byte	0x12b
	.uleb128 0x1b
	.4byte	.LASF118
	.byte	0x8
	.2byte	0x11f
	.byte	0x13
	.4byte	0x12b
	.uleb128 0x15
	.4byte	0x5b
	.4byte	0x1c1
	.uleb128 0x16
	.4byte	0x1c1
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1cc
	.uleb128 0x1d
	.4byte	.LASF135
	.uleb128 0x7
	.4byte	0x1c7
	.uleb128 0x1b
	.4byte	.LASF119
	.byte	0x8
	.2byte	0x135
	.byte	0xe
	.4byte	0x1de
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1b2
	.uleb128 0x15
	.4byte	0x5b
	.4byte	0x1f3
	.uleb128 0x16
	.4byte	0x1f3
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1c7
	.uleb128 0x1b
	.4byte	.LASF120
	.byte	0x8
	.2byte	0x136
	.byte	0xe
	.4byte	0x206
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1e4
	.uleb128 0x1e
	.4byte	.LASF121
	.byte	0x8
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
	.uleb128 0x1b
	.4byte	.LASF122
	.byte	0x8
	.2byte	0x157
	.byte	0x1f
	.4byte	0x22a
	.uleb128 0x4
	.byte	0x4
	.4byte	0x20c
	.uleb128 0x1e
	.4byte	.LASF123
	.byte	0x2
	.2byte	0x1fc
	.byte	0x3
	.byte	0x1a
	.byte	0x6b
	.byte	0x2b
	.byte	0x7b
	.byte	0x73
	.byte	0x7f
	.byte	0xbd
	.byte	0x2c
	.uleb128 0x1e
	.4byte	.LASF124
	.byte	0x2
	.2byte	0x582
	.byte	0x3
	.byte	0xb9
	.byte	0x5
	.byte	0xda
	.byte	0xbf
	.byte	0xc5
	.byte	0xf5
	.byte	0xf3
	.byte	0x3f
	.uleb128 0x1b
	.4byte	.LASF125
	.byte	0x2
	.2byte	0x744
	.byte	0x19
	.4byte	0x56
	.uleb128 0x1f
	.4byte	.LASF126
	.byte	0x9
	.byte	0x21
	.byte	0x11
	.4byte	0x62
	.uleb128 0x1f
	.4byte	.LASF127
	.byte	0xa
	.byte	0x53
	.byte	0x11
	.4byte	0x62
	.uleb128 0x1f
	.4byte	.LASF128
	.byte	0xa
	.byte	0x54
	.byte	0x11
	.4byte	0x62
	.uleb128 0x1f
	.4byte	.LASF129
	.byte	0xa
	.byte	0x72
	.byte	0x13
	.4byte	0x28f
	.uleb128 0x4
	.byte	0x4
	.4byte	0x62
	.uleb128 0x1f
	.4byte	.LASF130
	.byte	0xa
	.byte	0x73
	.byte	0x11
	.4byte	0x62
	.uleb128 0x6
	.4byte	.LASF131
	.byte	0x7
	.byte	0x46
	.byte	0x3
	.byte	0xc
	.byte	0xd
	.byte	0x14
	.byte	0x3d
	.byte	0x9e
	.byte	0xa2
	.byte	0xfc
	.byte	0x37
	.uleb128 0xb
	.4byte	0x2a1
	.uleb128 0x6
	.4byte	.LASF132
	.byte	0x6
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
	.uleb128 0x1f
	.4byte	.LASF133
	.byte	0x6
	.byte	0x75
	.byte	0x19
	.4byte	0x2b6
	.uleb128 0x14
	.4byte	.LASF134
	.byte	0xb
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2df
	.uleb128 0x1d
	.4byte	.LASF136
	.uleb128 0x1b
	.4byte	.LASF137
	.byte	0xb
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2f1
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2d2
	.uleb128 0x1b
	.4byte	.LASF138
	.byte	0xb
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2f1
	.uleb128 0x1b
	.4byte	.LASF139
	.byte	0xb
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2f1
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
	.4byte	.LASF140
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
	.4byte	.LASF141
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
	.4byte	0x331
	.uleb128 0x1b
	.4byte	.LASF142
	.byte	0xc
	.2byte	0x124
	.byte	0x2e
	.4byte	0x321
	.uleb128 0x8
	.byte	0x1
	.byte	0x2
	.4byte	.LASF143
	.uleb128 0x20
	.4byte	.LASF144
	.byte	0x1
	.byte	0x34
	.byte	0x23
	.4byte	0x341
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_log_hardfault_logs_data_const
	.uleb128 0x21
	.4byte	0x346
	.byte	0x1
	.byte	0x34
	.2byte	0x160
	.uleb128 0x5
	.byte	0x3
	.4byte	m_nrf_log_hardfault_logs_data_dynamic
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0x1
	.byte	0x3d
	.byte	0x1e
	.4byte	0x38d
	.uleb128 0x5
	.byte	0x3
	.4byte	HardFault_p_stack
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2b1
	.uleb128 0x22
	.4byte	.LASF148
	.byte	0x1
	.byte	0x48
	.byte	0x6
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4d7
	.uleb128 0x23
	.4byte	.LASF162
	.byte	0x1
	.byte	0x48
	.byte	0x25
	.4byte	0x28f
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x24
	.4byte	.LASF146
	.byte	0x1
	.byte	0x58
	.byte	0x19
	.4byte	0x4d7
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x25
	.4byte	.LASF163
	.byte	0x1
	.byte	0x59
	.byte	0x18
	.4byte	0x4dd
	.uleb128 0x5
	.byte	0x3
	.4byte	cfsr_msgs.8521
	.uleb128 0x24
	.4byte	.LASF147
	.byte	0x1
	.byte	0x76
	.byte	0xe
	.4byte	0x62
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x26
	.4byte	.LBB24
	.4byte	.LBE24-.LBB24
	.4byte	0x42a
	.uleb128 0x27
	.ascii	"i\000"
	.byte	0x1
	.byte	0x84
	.byte	0x13
	.4byte	0x62
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x28
	.4byte	.LVL11
	.4byte	0x588
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LVL2
	.4byte	0x595
	.uleb128 0x2a
	.4byte	.LVL3
	.4byte	0x5a1
	.uleb128 0x2b
	.4byte	.LVL6
	.4byte	0x588
	.4byte	0x453
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL7
	.4byte	0x5ad
	.4byte	0x46a
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL8
	.4byte	0x5ba
	.4byte	0x481
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL9
	.4byte	0x5c7
	.4byte	0x498
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL13
	.4byte	0x4ed
	.4byte	0x4ac
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL15
	.4byte	0x588
	.4byte	0x4c3
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.byte	0
	.uleb128 0x28
	.4byte	.LVL16
	.4byte	0x588
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x2a1
	.uleb128 0xc
	.4byte	0x96
	.4byte	0x4ed
	.uleb128 0xd
	.4byte	0x6e
	.byte	0x19
	.byte	0
	.uleb128 0x22
	.4byte	.LASF149
	.byte	0x1
	.byte	0x41
	.byte	0x1c
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x56a
	.uleb128 0x2c
	.4byte	.LASF146
	.byte	0x1
	.byte	0x41
	.byte	0x42
	.4byte	0x4d7
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2d
	.4byte	0x56a
	.4byte	.LBI16
	.byte	.LVU2
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.byte	0x44
	.byte	0x5
	.uleb128 0x2e
	.4byte	0x574
	.4byte	.LBI18
	.byte	.LVU4
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x2
	.2byte	0x700
	.byte	0x3
	.uleb128 0x2e
	.4byte	0x574
	.4byte	.LBI20
	.byte	.LVU12
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x2
	.2byte	0x705
	.byte	0x3
	.uleb128 0x2e
	.4byte	0x57e
	.4byte	.LBI22
	.byte	.LVU16
	.4byte	.LBB22
	.4byte	.LBE22-.LBB22
	.byte	0x2
	.2byte	0x709
	.byte	0x5
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF150
	.byte	0x2
	.2byte	0x6fe
	.byte	0x14
	.byte	0x3
	.uleb128 0x2f
	.4byte	.LASF151
	.byte	0x3
	.2byte	0x1ab
	.byte	0x33
	.byte	0x3
	.uleb128 0x2f
	.4byte	.LASF152
	.byte	0x3
	.2byte	0x175
	.byte	0x33
	.byte	0x3
	.uleb128 0x30
	.4byte	.LASF153
	.4byte	.LASF153
	.byte	0xc
	.2byte	0x1b4
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF154
	.4byte	.LASF154
	.byte	0xd
	.byte	0x95
	.byte	0x6
	.uleb128 0x31
	.4byte	.LASF155
	.4byte	.LASF155
	.byte	0xd
	.byte	0xa0
	.byte	0x5
	.uleb128 0x30
	.4byte	.LASF156
	.4byte	.LASF156
	.byte	0xc
	.2byte	0x1d8
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF157
	.4byte	.LASF157
	.byte	0xc
	.2byte	0x1cb
	.byte	0x6
	.uleb128 0x30
	.4byte	.LASF158
	.4byte	.LASF158
	.byte	0xc
	.2byte	0x1ab
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
	.uleb128 0xb
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
	.uleb128 0x10
	.uleb128 0x13
	.byte	0x1
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
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
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
.LVUS0:
	.uleb128 0
	.uleb128 .LVU22
	.uleb128 .LVU22
	.uleb128 0
.LLST0:
	.4byte	.LVL1
	.4byte	.LVL2-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL2-1
	.4byte	.LFE210
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU31
	.uleb128 0
.LLST1:
	.4byte	.LVL4
	.4byte	.LFE210
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU34
	.uleb128 0
.LLST2:
	.4byte	.LVL5
	.4byte	.LFE210
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU68
	.uleb128 0
.LLST3:
	.4byte	.LVL10
	.4byte	.LFE210
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x1b2
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x5d5
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
	.4byte	0x35a
	.ascii	"m_nrf_log_hardfault_logs_data_const\000"
	.4byte	0x36c
	.ascii	"m_nrf_log_hardfault_logs_data_dynamic\000"
	.4byte	0x37b
	.ascii	"HardFault_p_stack\000"
	.4byte	0x36c
	.ascii	"m_nrf_log_hardfault_logs_data_dynamic\000"
	.4byte	0x37b
	.ascii	"HardFault_p_stack\000"
	.4byte	0x393
	.ascii	"HardFault_c_handler\000"
	.4byte	0x4ed
	.ascii	"HardFault_process\000"
	.4byte	0x56a
	.ascii	"NVIC_SystemReset\000"
	.4byte	0x574
	.ascii	"__DSB\000"
	.4byte	0x57e
	.ascii	"__NOP\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x21e
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x5d5
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
	.4byte	0x9c
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xb1
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x20c
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x230
	.ascii	"SCB_Type\000"
	.4byte	0x241
	.ascii	"CoreDebug_Type\000"
	.4byte	0xb
	.ascii	"HardFault_stack\000"
	.4byte	0x2a1
	.ascii	"HardFault_stack_t\000"
	.4byte	0x2b6
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2d2
	.ascii	"FILE\000"
	.4byte	0x311
	.ascii	"nrf_log_severity_t\000"
	.4byte	0x321
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x331
	.ascii	"nrf_log_module_const_data_t\000"
	.4byte	0x353
	.ascii	"_Bool\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x24
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB209
	.4byte	.LFE209-.LFB209
	.4byte	.LFB210
	.4byte	.LFE210-.LFB210
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB209
	.4byte	.LFE209
	.4byte	.LFB210
	.4byte	.LFE210
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
	.file 14 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x28
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x5
	.byte	0x4
	.file 15 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xf
	.byte	0x4
	.file 16 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.file 17 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x11
	.byte	0x4
	.file 18 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x12
	.byte	0x4
	.file 19 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x13
	.byte	0x4
	.file 20 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x14
	.byte	0x4
	.file 21 "../../../../../../components/libraries/util/sdk_errors.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x15
	.file 22 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x16
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xa
	.file 23 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x17
	.byte	0x4
	.file 24 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x18
	.file 25 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x19
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x2
	.file 26 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x1a
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.file 27 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x1b
	.byte	0x4
	.file 28 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x1c
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.file 29 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x1d
	.byte	0x4
	.file 30 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x1e
	.byte	0x4
	.file 31 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x1f
	.byte	0x4
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 32 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x20
	.file 33 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x21
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2a
	.uleb128 0x7
	.byte	0x4
	.file 34 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x22
	.file 35 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x23
	.file 36 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x24
	.byte	0x4
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x16
	.byte	0x4
	.file 37 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x25
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x6
	.byte	0x4
	.file 38 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x26
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x4
	.file 39 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x27
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 40 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x28
	.file 41 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x29
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.file 42 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x2a
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xa
	.byte	0x4
	.file 43 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x2b
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
	.byte	0x3
	.uleb128 0x33
	.uleb128 0xd
	.file 44 "../../../../../../components/libraries/experimental_log/src/nrf_log_ctrl_internal.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x2c
	.byte	0x4
	.file 45 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2d
	.file 46 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x2e
	.file 47 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x2f
	.byte	0x4
	.file 48 "../../../../../../components/libraries/balloc/nrf_balloc.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x30
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF16:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF2:
	.ascii	"debug_color_id\000"
.LASF130:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF115:
	.ascii	"__RAL_data_utf8_space\000"
.LASF95:
	.ascii	"date_time_format\000"
.LASF110:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF14:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF106:
	.ascii	"__RAL_codeset_ascii\000"
.LASF46:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF85:
	.ascii	"int_n_sep_by_space\000"
.LASF76:
	.ascii	"p_cs_precedes\000"
.LASF156:
	.ascii	"nrf_log_frontend_std_4\000"
.LASF25:
	.ascii	"DCRSR\000"
.LASF117:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF26:
	.ascii	"DCRDR\000"
.LASF103:
	.ascii	"long long unsigned int\000"
.LASF159:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF47:
	.ascii	"__locale_s\000"
.LASF120:
	.ascii	"__user_get_time_of_day\000"
.LASF129:
	.ascii	"_vectors\000"
.LASF125:
	.ascii	"ITM_RxBuffer\000"
.LASF93:
	.ascii	"date_format\000"
.LASF45:
	.ascii	"next\000"
.LASF67:
	.ascii	"int_curr_symbol\000"
.LASF124:
	.ascii	"CoreDebug_Type\000"
.LASF91:
	.ascii	"abbrev_month_names\000"
.LASF40:
	.ascii	"ISAR\000"
.LASF102:
	.ascii	"long long int\000"
.LASF99:
	.ascii	"signed char\000"
.LASF152:
	.ascii	"__NOP\000"
.LASF104:
	.ascii	"__RAL_global_locale\000"
.LASF9:
	.ascii	"module_id\000"
.LASF52:
	.ascii	"codeset\000"
.LASF59:
	.ascii	"__towupper\000"
.LASF63:
	.ascii	"long int\000"
.LASF4:
	.ascii	"initial_lvl\000"
.LASF114:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF137:
	.ascii	"stdin\000"
.LASF24:
	.ascii	"DHCSR\000"
.LASF15:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF78:
	.ascii	"n_cs_precedes\000"
.LASF55:
	.ascii	"__isctype\000"
.LASF82:
	.ascii	"int_p_cs_precedes\000"
.LASF19:
	.ascii	"__irq_masks\000"
.LASF89:
	.ascii	"abbrev_day_names\000"
.LASF98:
	.ascii	"__wchar\000"
.LASF37:
	.ascii	"BFAR\000"
.LASF38:
	.ascii	"AFSR\000"
.LASF155:
	.ascii	"nrf_log_frontend_dequeue\000"
.LASF123:
	.ascii	"SCB_Type\000"
.LASF58:
	.ascii	"__iswctype\000"
.LASF81:
	.ascii	"n_sign_posn\000"
.LASF71:
	.ascii	"mon_grouping\000"
.LASF13:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF10:
	.ascii	"padding\000"
.LASF22:
	.ascii	"unsigned int\000"
.LASF84:
	.ascii	"int_p_sep_by_space\000"
.LASF126:
	.ascii	"SystemCoreClock\000"
.LASF92:
	.ascii	"am_pm_indicator\000"
.LASF113:
	.ascii	"__RAL_data_utf8_period\000"
.LASF66:
	.ascii	"grouping\000"
.LASF149:
	.ascii	"HardFault_process\000"
.LASF60:
	.ascii	"__towlower\000"
.LASF118:
	.ascii	"__RAL_data_empty_string\000"
.LASF65:
	.ascii	"thousands_sep\000"
.LASF148:
	.ascii	"HardFault_c_handler\000"
.LASF140:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF128:
	.ascii	"__StackLimit\000"
.LASF56:
	.ascii	"__toupper\000"
.LASF132:
	.ascii	"nrf_nvic_state_t\000"
.LASF51:
	.ascii	"data\000"
.LASF73:
	.ascii	"negative_sign\000"
.LASF12:
	.ascii	"short unsigned int\000"
.LASF50:
	.ascii	"name\000"
.LASF161:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF29:
	.ascii	"ICSR\000"
.LASF31:
	.ascii	"AIRCR\000"
.LASF35:
	.ascii	"DFSR\000"
.LASF36:
	.ascii	"MMFAR\000"
.LASF144:
	.ascii	"m_nrf_log_hardfault_logs_data_const\000"
.LASF88:
	.ascii	"day_names\000"
.LASF20:
	.ascii	"__cr_flag\000"
.LASF146:
	.ascii	"p_stack\000"
.LASF39:
	.ascii	"MMFR\000"
.LASF135:
	.ascii	"timeval\000"
.LASF138:
	.ascii	"stdout\000"
.LASF151:
	.ascii	"__DSB\000"
.LASF145:
	.ascii	"HardFault_p_stack\000"
.LASF49:
	.ascii	"__RAL_locale_t\000"
.LASF94:
	.ascii	"time_format\000"
.LASF72:
	.ascii	"positive_sign\000"
.LASF147:
	.ascii	"cfsr\000"
.LASF80:
	.ascii	"p_sign_posn\000"
.LASF17:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF108:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF33:
	.ascii	"CFSR\000"
.LASF44:
	.ascii	"decode\000"
.LASF163:
	.ascii	"cfsr_msgs\000"
.LASF62:
	.ascii	"__mbtowc\000"
.LASF133:
	.ascii	"nrf_nvic_state\000"
.LASF105:
	.ascii	"__RAL_c_locale\000"
.LASF57:
	.ascii	"__tolower\000"
.LASF119:
	.ascii	"__user_set_time_of_day\000"
.LASF83:
	.ascii	"int_n_cs_precedes\000"
.LASF28:
	.ascii	"CPUID\000"
.LASF107:
	.ascii	"__RAL_codeset_utf8\000"
.LASF42:
	.ascii	"CPACR\000"
.LASF48:
	.ascii	"__category\000"
.LASF41:
	.ascii	"RESERVED0\000"
.LASF97:
	.ascii	"__state\000"
.LASF131:
	.ascii	"HardFault_stack_t\000"
.LASF127:
	.ascii	"__StackTop\000"
.LASF27:
	.ascii	"DEMCR\000"
.LASF143:
	.ascii	"_Bool\000"
.LASF101:
	.ascii	"int32_t\000"
.LASF7:
	.ascii	"unsigned char\000"
.LASF32:
	.ascii	"SHCSR\000"
.LASF109:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF3:
	.ascii	"compiled_lvl\000"
.LASF75:
	.ascii	"frac_digits\000"
.LASF100:
	.ascii	"short int\000"
.LASF122:
	.ascii	"__RAL_error_decoder_head\000"
.LASF158:
	.ascii	"nrf_log_frontend_std_0\000"
.LASF153:
	.ascii	"nrf_log_frontend_std_1\000"
.LASF157:
	.ascii	"nrf_log_frontend_std_3\000"
.LASF96:
	.ascii	"__mbstate_s\000"
.LASF142:
	.ascii	"m_nrf_log_hardfault_logs_data_dynamic\000"
.LASF134:
	.ascii	"FILE\000"
.LASF154:
	.ascii	"nrf_log_panic\000"
.LASF70:
	.ascii	"mon_thousands_sep\000"
.LASF53:
	.ascii	"__RAL_locale_data_t\000"
.LASF160:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\components\\libraries\\"
	.ascii	"hardfault\\hardfault_implementation.c\000"
.LASF21:
	.ascii	"uint32_t\000"
.LASF150:
	.ascii	"NVIC_SystemReset\000"
.LASF86:
	.ascii	"int_p_sign_posn\000"
.LASF68:
	.ascii	"currency_symbol\000"
.LASF8:
	.ascii	"char\000"
.LASF77:
	.ascii	"p_sep_by_space\000"
.LASF162:
	.ascii	"p_stack_address\000"
.LASF18:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF54:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF87:
	.ascii	"int_n_sign_posn\000"
.LASF139:
	.ascii	"stderr\000"
.LASF111:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF43:
	.ascii	"__RAL_error_decoder_s\000"
.LASF121:
	.ascii	"__RAL_error_decoder_t\000"
.LASF23:
	.ascii	"HardFault_stack\000"
.LASF5:
	.ascii	"uint8_t\000"
.LASF141:
	.ascii	"nrf_log_module_const_data_t\000"
.LASF74:
	.ascii	"int_frac_digits\000"
.LASF90:
	.ascii	"month_names\000"
.LASF0:
	.ascii	"p_module_name\000"
.LASF6:
	.ascii	"nrf_log_severity_t\000"
.LASF79:
	.ascii	"n_sep_by_space\000"
.LASF136:
	.ascii	"__RAL_FILE\000"
.LASF116:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF112:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF34:
	.ascii	"HFSR\000"
.LASF69:
	.ascii	"mon_decimal_point\000"
.LASF30:
	.ascii	"VTOR\000"
.LASF61:
	.ascii	"__wctomb\000"
.LASF1:
	.ascii	"info_color_id\000"
.LASF64:
	.ascii	"decimal_point\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
