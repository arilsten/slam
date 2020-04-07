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
	.file	"system_nrf52.c"
	.text
.Ltext0:
	.section	.text.NVIC_SystemReset,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	NVIC_SystemReset, %function
NVIC_SystemReset:
.LFB118:
	.file 1 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.loc 1 1791 1 view -0
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 1792 3 view .LVU1
.LBB12:
.LBI12:
	.file 2 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.loc 2 427 51 view .LVU2
.LBB13:
	.loc 2 429 3 view .LVU3
	.syntax unified
@ 429 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
.LBE13:
.LBE12:
	.loc 1 1794 3 view .LVU4
	.loc 1 1795 72 is_stmt 0 view .LVU5
	ldr	r1, .L3
	ldr	r2, [r1, #12]
	.loc 1 1795 80 view .LVU6
	and	r2, r2, #1792
	.loc 1 1795 95 view .LVU7
	ldr	r3, .L3+4
	orrs	r3, r3, r2
	.loc 1 1794 54 view .LVU8
	str	r3, [r1, #12]
	.loc 1 1797 3 is_stmt 1 view .LVU9
.LBB14:
.LBI14:
	.loc 2 427 51 view .LVU10
.LBB15:
	.loc 2 429 3 view .LVU11
	.syntax unified
@ 429 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
.L2:
.LBE15:
.LBE14:
	.loc 1 1799 3 discriminator 1 view .LVU12
	.loc 1 1801 5 discriminator 1 view .LVU13
.LBB16:
.LBI16:
	.loc 2 373 51 discriminator 1 view .LVU14
.LBB17:
	.loc 2 375 3 discriminator 1 view .LVU15
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
.LBE17:
.LBE16:
.LFE118:
	.size	NVIC_SystemReset, .-NVIC_SystemReset
	.section	.text.errata_12,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_12, %function
errata_12:
.LFB126:
	.file 3 "C:\\nRF5_SDK_15.0.0_a53641a\\modules\\nrfx\\mdk\\system_nrf52.c"
	.loc 3 219 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 220 5 view .LVU17
	.loc 3 220 37 is_stmt 0 view .LVU18
	ldr	r3, .L13
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 220 8 view .LVU19
	cmp	r3, #6
	beq	.L12
	.loc 3 232 11 view .LVU20
	movs	r0, #0
	bx	lr
.L12:
	.loc 3 220 65 discriminator 1 view .LVU21
	ldr	r3, .L13+4
	ldr	r3, [r3]
	.loc 3 220 59 discriminator 1 view .LVU22
	tst	r3, #15
	bne	.L8
	.loc 3 221 9 is_stmt 1 view .LVU23
	.loc 3 221 15 is_stmt 0 view .LVU24
	ldr	r3, .L13+8
	ldr	r3, [r3]
	.loc 3 221 40 view .LVU25
	and	r3, r3, #240
	.loc 3 221 12 view .LVU26
	cmp	r3, #48
	beq	.L9
	.loc 3 224 9 is_stmt 1 view .LVU27
	.loc 3 224 12 is_stmt 0 view .LVU28
	cmp	r3, #64
	beq	.L10
	.loc 3 227 9 is_stmt 1 view .LVU29
	.loc 3 227 12 is_stmt 0 view .LVU30
	cmp	r3, #80
	beq	.L11
	.loc 3 232 11 view .LVU31
	movs	r0, #0
	bx	lr
.L8:
	movs	r0, #0
	bx	lr
.L9:
	.loc 3 222 19 view .LVU32
	movs	r0, #1
	bx	lr
.L10:
	.loc 3 225 19 view .LVU33
	movs	r0, #1
	bx	lr
.L11:
	.loc 3 228 19 view .LVU34
	movs	r0, #1
	.loc 3 233 1 view .LVU35
	bx	lr
.L14:
	.align	2
.L13:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE126:
	.size	errata_12, .-errata_12
	.section	.text.errata_16,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_16, %function
errata_16:
.LFB127:
	.loc 3 236 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 237 5 view .LVU37
	.loc 3 237 37 is_stmt 0 view .LVU38
	ldr	r3, .L21
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 237 8 view .LVU39
	cmp	r3, #6
	beq	.L20
	.loc 3 243 11 view .LVU40
	movs	r0, #0
	bx	lr
.L20:
	.loc 3 237 65 discriminator 1 view .LVU41
	ldr	r3, .L21+4
	ldr	r3, [r3]
	.loc 3 237 59 discriminator 1 view .LVU42
	tst	r3, #15
	bne	.L18
	.loc 3 238 9 is_stmt 1 view .LVU43
	.loc 3 238 15 is_stmt 0 view .LVU44
	ldr	r3, .L21+8
	ldr	r3, [r3]
	.loc 3 238 40 view .LVU45
	and	r3, r3, #240
	.loc 3 238 12 view .LVU46
	cmp	r3, #48
	beq	.L19
	.loc 3 243 11 view .LVU47
	movs	r0, #0
	bx	lr
.L18:
	movs	r0, #0
	bx	lr
.L19:
	.loc 3 239 19 view .LVU48
	movs	r0, #1
	.loc 3 244 1 view .LVU49
	bx	lr
.L22:
	.align	2
.L21:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE127:
	.size	errata_16, .-errata_16
	.section	.text.errata_31,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_31, %function
errata_31:
.LFB128:
	.loc 3 247 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 248 5 view .LVU51
	.loc 3 248 37 is_stmt 0 view .LVU52
	ldr	r3, .L31
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 248 8 view .LVU53
	cmp	r3, #6
	beq	.L30
	.loc 3 260 11 view .LVU54
	movs	r0, #0
	bx	lr
.L30:
	.loc 3 248 65 discriminator 1 view .LVU55
	ldr	r3, .L31+4
	ldr	r3, [r3]
	.loc 3 248 59 discriminator 1 view .LVU56
	tst	r3, #15
	bne	.L26
	.loc 3 249 9 is_stmt 1 view .LVU57
	.loc 3 249 15 is_stmt 0 view .LVU58
	ldr	r3, .L31+8
	ldr	r3, [r3]
	.loc 3 249 40 view .LVU59
	and	r3, r3, #240
	.loc 3 249 12 view .LVU60
	cmp	r3, #48
	beq	.L27
	.loc 3 252 9 is_stmt 1 view .LVU61
	.loc 3 252 12 is_stmt 0 view .LVU62
	cmp	r3, #64
	beq	.L28
	.loc 3 255 9 is_stmt 1 view .LVU63
	.loc 3 255 12 is_stmt 0 view .LVU64
	cmp	r3, #80
	beq	.L29
	.loc 3 260 11 view .LVU65
	movs	r0, #0
	bx	lr
.L26:
	movs	r0, #0
	bx	lr
.L27:
	.loc 3 250 19 view .LVU66
	movs	r0, #1
	bx	lr
.L28:
	.loc 3 253 19 view .LVU67
	movs	r0, #1
	bx	lr
.L29:
	.loc 3 256 19 view .LVU68
	movs	r0, #1
	.loc 3 261 1 view .LVU69
	bx	lr
.L32:
	.align	2
.L31:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE128:
	.size	errata_31, .-errata_31
	.section	.text.errata_32,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_32, %function
errata_32:
.LFB129:
	.loc 3 264 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 265 5 view .LVU71
	.loc 3 265 37 is_stmt 0 view .LVU72
	ldr	r3, .L39
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 265 8 view .LVU73
	cmp	r3, #6
	beq	.L38
	.loc 3 271 11 view .LVU74
	movs	r0, #0
	bx	lr
.L38:
	.loc 3 265 65 discriminator 1 view .LVU75
	ldr	r3, .L39+4
	ldr	r3, [r3]
	.loc 3 265 59 discriminator 1 view .LVU76
	tst	r3, #15
	bne	.L36
	.loc 3 266 9 is_stmt 1 view .LVU77
	.loc 3 266 15 is_stmt 0 view .LVU78
	ldr	r3, .L39+8
	ldr	r3, [r3]
	.loc 3 266 40 view .LVU79
	and	r3, r3, #240
	.loc 3 266 12 view .LVU80
	cmp	r3, #48
	beq	.L37
	.loc 3 271 11 view .LVU81
	movs	r0, #0
	bx	lr
.L36:
	movs	r0, #0
	bx	lr
.L37:
	.loc 3 267 19 view .LVU82
	movs	r0, #1
	.loc 3 272 1 view .LVU83
	bx	lr
.L40:
	.align	2
.L39:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE129:
	.size	errata_32, .-errata_32
	.section	.text.errata_36,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_36, %function
errata_36:
.LFB130:
	.loc 3 275 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 276 5 view .LVU85
	.loc 3 276 37 is_stmt 0 view .LVU86
	ldr	r3, .L49
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 276 8 view .LVU87
	cmp	r3, #6
	beq	.L48
	.loc 3 288 11 view .LVU88
	movs	r0, #0
	bx	lr
.L48:
	.loc 3 276 65 discriminator 1 view .LVU89
	ldr	r3, .L49+4
	ldr	r3, [r3]
	.loc 3 276 59 discriminator 1 view .LVU90
	tst	r3, #15
	bne	.L44
	.loc 3 277 9 is_stmt 1 view .LVU91
	.loc 3 277 15 is_stmt 0 view .LVU92
	ldr	r3, .L49+8
	ldr	r3, [r3]
	.loc 3 277 40 view .LVU93
	and	r3, r3, #240
	.loc 3 277 12 view .LVU94
	cmp	r3, #48
	beq	.L45
	.loc 3 280 9 is_stmt 1 view .LVU95
	.loc 3 280 12 is_stmt 0 view .LVU96
	cmp	r3, #64
	beq	.L46
	.loc 3 283 9 is_stmt 1 view .LVU97
	.loc 3 283 12 is_stmt 0 view .LVU98
	cmp	r3, #80
	beq	.L47
	.loc 3 288 11 view .LVU99
	movs	r0, #0
	bx	lr
.L44:
	movs	r0, #0
	bx	lr
.L45:
	.loc 3 278 19 view .LVU100
	movs	r0, #1
	bx	lr
.L46:
	.loc 3 281 19 view .LVU101
	movs	r0, #1
	bx	lr
.L47:
	.loc 3 284 19 view .LVU102
	movs	r0, #1
	.loc 3 289 1 view .LVU103
	bx	lr
.L50:
	.align	2
.L49:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE130:
	.size	errata_36, .-errata_36
	.section	.text.errata_37,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_37, %function
errata_37:
.LFB131:
	.loc 3 292 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 293 5 view .LVU105
	.loc 3 293 37 is_stmt 0 view .LVU106
	ldr	r3, .L57
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 293 8 view .LVU107
	cmp	r3, #6
	beq	.L56
	.loc 3 299 11 view .LVU108
	movs	r0, #0
	bx	lr
.L56:
	.loc 3 293 65 discriminator 1 view .LVU109
	ldr	r3, .L57+4
	ldr	r3, [r3]
	.loc 3 293 59 discriminator 1 view .LVU110
	tst	r3, #15
	bne	.L54
	.loc 3 294 9 is_stmt 1 view .LVU111
	.loc 3 294 15 is_stmt 0 view .LVU112
	ldr	r3, .L57+8
	ldr	r3, [r3]
	.loc 3 294 40 view .LVU113
	and	r3, r3, #240
	.loc 3 294 12 view .LVU114
	cmp	r3, #48
	beq	.L55
	.loc 3 299 11 view .LVU115
	movs	r0, #0
	bx	lr
.L54:
	movs	r0, #0
	bx	lr
.L55:
	.loc 3 295 19 view .LVU116
	movs	r0, #1
	.loc 3 300 1 view .LVU117
	bx	lr
.L58:
	.align	2
.L57:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE131:
	.size	errata_37, .-errata_37
	.section	.text.errata_57,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_57, %function
errata_57:
.LFB132:
	.loc 3 303 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 304 5 view .LVU119
	.loc 3 304 37 is_stmt 0 view .LVU120
	ldr	r3, .L65
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 304 8 view .LVU121
	cmp	r3, #6
	beq	.L64
	.loc 3 310 11 view .LVU122
	movs	r0, #0
	bx	lr
.L64:
	.loc 3 304 65 discriminator 1 view .LVU123
	ldr	r3, .L65+4
	ldr	r3, [r3]
	.loc 3 304 59 discriminator 1 view .LVU124
	tst	r3, #15
	bne	.L62
	.loc 3 305 9 is_stmt 1 view .LVU125
	.loc 3 305 15 is_stmt 0 view .LVU126
	ldr	r3, .L65+8
	ldr	r3, [r3]
	.loc 3 305 40 view .LVU127
	and	r3, r3, #240
	.loc 3 305 12 view .LVU128
	cmp	r3, #48
	beq	.L63
	.loc 3 310 11 view .LVU129
	movs	r0, #0
	bx	lr
.L62:
	movs	r0, #0
	bx	lr
.L63:
	.loc 3 306 19 view .LVU130
	movs	r0, #1
	.loc 3 311 1 view .LVU131
	bx	lr
.L66:
	.align	2
.L65:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE132:
	.size	errata_57, .-errata_57
	.section	.text.errata_66,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_66, %function
errata_66:
.LFB133:
	.loc 3 314 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 315 5 view .LVU133
	.loc 3 315 37 is_stmt 0 view .LVU134
	ldr	r3, .L73
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 315 8 view .LVU135
	cmp	r3, #6
	beq	.L72
	.loc 3 321 11 view .LVU136
	movs	r0, #0
	bx	lr
.L72:
	.loc 3 315 65 discriminator 1 view .LVU137
	ldr	r3, .L73+4
	ldr	r3, [r3]
	.loc 3 315 59 discriminator 1 view .LVU138
	tst	r3, #15
	bne	.L70
	.loc 3 316 9 is_stmt 1 view .LVU139
	.loc 3 316 15 is_stmt 0 view .LVU140
	ldr	r3, .L73+8
	ldr	r3, [r3]
	.loc 3 316 40 view .LVU141
	and	r3, r3, #240
	.loc 3 316 12 view .LVU142
	cmp	r3, #80
	beq	.L71
	.loc 3 321 11 view .LVU143
	movs	r0, #0
	bx	lr
.L70:
	movs	r0, #0
	bx	lr
.L71:
	.loc 3 317 19 view .LVU144
	movs	r0, #1
	.loc 3 322 1 view .LVU145
	bx	lr
.L74:
	.align	2
.L73:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE133:
	.size	errata_66, .-errata_66
	.section	.text.errata_108,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_108, %function
errata_108:
.LFB134:
	.loc 3 326 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 327 5 view .LVU147
	.loc 3 327 37 is_stmt 0 view .LVU148
	ldr	r3, .L83
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 327 8 view .LVU149
	cmp	r3, #6
	beq	.L82
	.loc 3 339 11 view .LVU150
	movs	r0, #0
	bx	lr
.L82:
	.loc 3 327 65 discriminator 1 view .LVU151
	ldr	r3, .L83+4
	ldr	r3, [r3]
	.loc 3 327 59 discriminator 1 view .LVU152
	tst	r3, #15
	bne	.L78
	.loc 3 328 9 is_stmt 1 view .LVU153
	.loc 3 328 15 is_stmt 0 view .LVU154
	ldr	r3, .L83+8
	ldr	r3, [r3]
	.loc 3 328 40 view .LVU155
	and	r3, r3, #240
	.loc 3 328 12 view .LVU156
	cmp	r3, #48
	beq	.L79
	.loc 3 331 9 is_stmt 1 view .LVU157
	.loc 3 331 12 is_stmt 0 view .LVU158
	cmp	r3, #64
	beq	.L80
	.loc 3 334 9 is_stmt 1 view .LVU159
	.loc 3 334 12 is_stmt 0 view .LVU160
	cmp	r3, #80
	beq	.L81
	.loc 3 339 11 view .LVU161
	movs	r0, #0
	bx	lr
.L78:
	movs	r0, #0
	bx	lr
.L79:
	.loc 3 329 19 view .LVU162
	movs	r0, #1
	bx	lr
.L80:
	.loc 3 332 19 view .LVU163
	movs	r0, #1
	bx	lr
.L81:
	.loc 3 335 19 view .LVU164
	movs	r0, #1
	.loc 3 340 1 view .LVU165
	bx	lr
.L84:
	.align	2
.L83:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE134:
	.size	errata_108, .-errata_108
	.section	.text.errata_136,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_136, %function
errata_136:
.LFB135:
	.loc 3 344 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 345 5 view .LVU167
	.loc 3 345 37 is_stmt 0 view .LVU168
	ldr	r3, .L93
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 3 345 8 view .LVU169
	cmp	r3, #6
	beq	.L92
	.loc 3 357 11 view .LVU170
	movs	r0, #0
	bx	lr
.L92:
	.loc 3 345 65 discriminator 1 view .LVU171
	ldr	r3, .L93+4
	ldr	r3, [r3]
	.loc 3 345 59 discriminator 1 view .LVU172
	tst	r3, #15
	bne	.L88
	.loc 3 346 9 is_stmt 1 view .LVU173
	.loc 3 346 15 is_stmt 0 view .LVU174
	ldr	r3, .L93+8
	ldr	r3, [r3]
	.loc 3 346 40 view .LVU175
	and	r3, r3, #240
	.loc 3 346 12 view .LVU176
	cmp	r3, #48
	beq	.L89
	.loc 3 349 9 is_stmt 1 view .LVU177
	.loc 3 349 12 is_stmt 0 view .LVU178
	cmp	r3, #64
	beq	.L90
	.loc 3 352 9 is_stmt 1 view .LVU179
	.loc 3 352 12 is_stmt 0 view .LVU180
	cmp	r3, #80
	beq	.L91
	.loc 3 357 11 view .LVU181
	movs	r0, #0
	bx	lr
.L88:
	movs	r0, #0
	bx	lr
.L89:
	.loc 3 347 19 view .LVU182
	movs	r0, #1
	bx	lr
.L90:
	.loc 3 350 19 view .LVU183
	movs	r0, #1
	bx	lr
.L91:
	.loc 3 353 19 view .LVU184
	movs	r0, #1
	.loc 3 358 1 view .LVU185
	bx	lr
.L94:
	.align	2
.L93:
	.word	-268431392
	.word	-268431388
	.word	-268431384
.LFE135:
	.size	errata_136, .-errata_136
	.section	.text.errata_182,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	errata_182, %function
errata_182:
.LFB136:
	.loc 3 362 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 363 5 view .LVU187
	.loc 3 363 9 is_stmt 0 view .LVU188
	ldr	r3, .L100
	ldr	r3, [r3]
	.loc 3 363 8 view .LVU189
	cmp	r3, #6
	beq	.L99
	.loc 3 369 11 view .LVU190
	movs	r0, #0
	bx	lr
.L99:
	.loc 3 364 9 is_stmt 1 view .LVU191
	.loc 3 364 13 is_stmt 0 view .LVU192
	ldr	r3, .L100+4
	ldr	r3, [r3]
	.loc 3 364 12 view .LVU193
	cmp	r3, #6
	beq	.L98
	.loc 3 369 11 view .LVU194
	movs	r0, #0
	bx	lr
.L98:
	.loc 3 365 19 view .LVU195
	movs	r0, #1
	.loc 3 370 1 view .LVU196
	bx	lr
.L101:
	.align	2
.L100:
	.word	268435760
	.word	268435764
.LFE136:
	.size	errata_182, .-errata_182
	.section	.text.SystemCoreClockUpdate,"ax",%progbits
	.align	1
	.global	SystemCoreClockUpdate
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SystemCoreClockUpdate, %function
SystemCoreClockUpdate:
.LFB124:
	.loc 3 57 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 3 58 5 view .LVU198
	.loc 3 58 21 is_stmt 0 view .LVU199
	ldr	r3, .L103
	ldr	r2, .L103+4
	str	r2, [r3]
	.loc 3 59 1 view .LVU200
	bx	lr
.L104:
	.align	2
.L103:
	.word	.LANCHOR0
	.word	64000000
.LFE124:
	.size	SystemCoreClockUpdate, .-SystemCoreClockUpdate
	.section	.text.SystemInit,"ax",%progbits
	.align	1
	.global	SystemInit
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	SystemInit, %function
SystemInit:
.LFB125:
	.loc 3 62 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI0:
	.loc 3 85 5 view .LVU202
	.loc 3 85 9 is_stmt 0 view .LVU203
	bl	errata_12
.LVL0:
	.loc 3 85 8 view .LVU204
	cbz	r0, .L106
	.loc 3 86 9 is_stmt 1 view .LVU205
	.loc 3 86 45 is_stmt 0 view .LVU206
	ldr	r3, .L129
	ldr	r3, [r3]
	.loc 3 86 83 view .LVU207
	ubfx	r3, r3, #8, #5
	.loc 3 86 42 view .LVU208
	ldr	r2, .L129+4
	str	r3, [r2]
.L106:
	.loc 3 91 5 is_stmt 1 view .LVU209
	.loc 3 91 9 is_stmt 0 view .LVU210
	bl	errata_16
.LVL1:
	.loc 3 91 8 view .LVU211
	cbz	r0, .L107
	.loc 3 92 9 is_stmt 1 view .LVU212
	.loc 3 92 42 is_stmt 0 view .LVU213
	ldr	r3, .L129+8
	ldr	r2, .L129+12
	str	r2, [r3]
.L107:
	.loc 3 97 5 is_stmt 1 view .LVU214
	.loc 3 97 9 is_stmt 0 view .LVU215
	bl	errata_31
.LVL2:
	.loc 3 97 8 view .LVU216
	cbz	r0, .L108
	.loc 3 98 9 is_stmt 1 view .LVU217
	.loc 3 98 46 is_stmt 0 view .LVU218
	ldr	r3, .L129+16
	ldr	r3, [r3]
	.loc 3 98 94 view .LVU219
	ubfx	r3, r3, #13, #3
	.loc 3 98 42 view .LVU220
	ldr	r2, .L129+20
	str	r3, [r2]
.L108:
	.loc 3 103 5 is_stmt 1 view .LVU221
	.loc 3 103 9 is_stmt 0 view .LVU222
	bl	errata_32
.LVL3:
	.loc 3 103 8 view .LVU223
	cbz	r0, .L109
	.loc 3 104 9 is_stmt 1 view .LVU224
	.loc 3 104 52 is_stmt 0 view .LVU225
	ldr	r2, .L129+24
	ldr	r3, [r2, #12]
	bic	r3, r3, #16777216
	str	r3, [r2, #12]
.L109:
	.loc 3 109 5 is_stmt 1 view .LVU226
	.loc 3 109 9 is_stmt 0 view .LVU227
	bl	errata_36
.LVL4:
	.loc 3 109 8 view .LVU228
	cbz	r0, .L110
	.loc 3 110 9 is_stmt 1 view .LVU229
	.loc 3 110 56 is_stmt 0 view .LVU230
	mov	r3, #1073741824
	movs	r2, #0
	str	r2, [r3, #268]
	.loc 3 111 9 is_stmt 1 view .LVU231
	.loc 3 111 56 is_stmt 0 view .LVU232
	str	r2, [r3, #272]
	.loc 3 112 9 is_stmt 1 view .LVU233
	.loc 3 112 49 is_stmt 0 view .LVU234
	str	r2, [r3, #1336]
.L110:
	.loc 3 117 5 is_stmt 1 view .LVU235
	.loc 3 117 9 is_stmt 0 view .LVU236
	bl	errata_37
.LVL5:
	.loc 3 117 8 view .LVU237
	cbz	r0, .L111
	.loc 3 118 9 is_stmt 1 view .LVU238
	.loc 3 118 42 is_stmt 0 view .LVU239
	ldr	r3, .L129+28
	movs	r2, #3
	str	r2, [r3]
.L111:
	.loc 3 123 5 is_stmt 1 view .LVU240
	.loc 3 123 9 is_stmt 0 view .LVU241
	bl	errata_57
.LVL6:
	.loc 3 123 8 view .LVU242
	cbz	r0, .L112
	.loc 3 124 9 is_stmt 1 view .LVU243
	.loc 3 124 42 is_stmt 0 view .LVU244
	ldr	r3, .L129+32
	movs	r2, #5
	str	r2, [r3]
	.loc 3 125 9 is_stmt 1 view .LVU245
	.loc 3 125 42 is_stmt 0 view .LVU246
	adds	r3, r3, #120
	movs	r2, #1
	str	r2, [r3]
	.loc 3 126 9 is_stmt 1 view .LVU247
	.loc 3 126 42 is_stmt 0 view .LVU248
	subs	r3, r3, #112
	movs	r2, #0
	str	r2, [r3]
	.loc 3 127 9 is_stmt 1 view .LVU249
	.loc 3 127 42 is_stmt 0 view .LVU250
	subs	r3, r3, #4
	movs	r2, #63
	str	r2, [r3]
.L112:
	.loc 3 132 5 is_stmt 1 view .LVU251
	.loc 3 132 9 is_stmt 0 view .LVU252
	bl	errata_66
.LVL7:
	.loc 3 132 8 view .LVU253
	cmp	r0, #0
	beq	.L113
	.loc 3 133 9 is_stmt 1 view .LVU254
	.loc 3 133 86 is_stmt 0 view .LVU255
	mov	r2, #268435456
	ldr	r1, [r2, #1028]
	.loc 3 133 46 view .LVU256
	ldr	r3, .L129+36
	str	r1, [r3, #1312]
	.loc 3 134 9 is_stmt 1 view .LVU257
	.loc 3 134 86 is_stmt 0 view .LVU258
	ldr	r1, [r2, #1032]
	.loc 3 134 46 view .LVU259
	str	r1, [r3, #1316]
	.loc 3 135 9 is_stmt 1 view .LVU260
	.loc 3 135 86 is_stmt 0 view .LVU261
	ldr	r1, [r2, #1036]
	.loc 3 135 46 view .LVU262
	str	r1, [r3, #1320]
	.loc 3 136 9 is_stmt 1 view .LVU263
	.loc 3 136 86 is_stmt 0 view .LVU264
	ldr	r1, [r2, #1040]
	.loc 3 136 46 view .LVU265
	str	r1, [r3, #1324]
	.loc 3 137 9 is_stmt 1 view .LVU266
	.loc 3 137 86 is_stmt 0 view .LVU267
	ldr	r1, [r2, #1044]
	.loc 3 137 46 view .LVU268
	str	r1, [r3, #1328]
	.loc 3 138 9 is_stmt 1 view .LVU269
	.loc 3 138 86 is_stmt 0 view .LVU270
	ldr	r1, [r2, #1048]
	.loc 3 138 46 view .LVU271
	str	r1, [r3, #1332]
	.loc 3 139 9 is_stmt 1 view .LVU272
	.loc 3 139 86 is_stmt 0 view .LVU273
	ldr	r1, [r2, #1052]
	.loc 3 139 46 view .LVU274
	str	r1, [r3, #1344]
	.loc 3 140 9 is_stmt 1 view .LVU275
	.loc 3 140 86 is_stmt 0 view .LVU276
	ldr	r1, [r2, #1056]
	.loc 3 140 46 view .LVU277
	str	r1, [r3, #1348]
	.loc 3 141 9 is_stmt 1 view .LVU278
	.loc 3 141 86 is_stmt 0 view .LVU279
	ldr	r1, [r2, #1060]
	.loc 3 141 46 view .LVU280
	str	r1, [r3, #1352]
	.loc 3 142 9 is_stmt 1 view .LVU281
	.loc 3 142 86 is_stmt 0 view .LVU282
	ldr	r1, [r2, #1064]
	.loc 3 142 46 view .LVU283
	str	r1, [r3, #1356]
	.loc 3 143 9 is_stmt 1 view .LVU284
	.loc 3 143 86 is_stmt 0 view .LVU285
	ldr	r1, [r2, #1068]
	.loc 3 143 46 view .LVU286
	str	r1, [r3, #1360]
	.loc 3 144 9 is_stmt 1 view .LVU287
	.loc 3 144 86 is_stmt 0 view .LVU288
	ldr	r1, [r2, #1072]
	.loc 3 144 46 view .LVU289
	str	r1, [r3, #1364]
	.loc 3 145 9 is_stmt 1 view .LVU290
	.loc 3 145 86 is_stmt 0 view .LVU291
	ldr	r1, [r2, #1076]
	.loc 3 145 46 view .LVU292
	str	r1, [r3, #1376]
	.loc 3 146 9 is_stmt 1 view .LVU293
	.loc 3 146 86 is_stmt 0 view .LVU294
	ldr	r1, [r2, #1080]
	.loc 3 146 46 view .LVU295
	str	r1, [r3, #1380]
	.loc 3 147 9 is_stmt 1 view .LVU296
	.loc 3 147 86 is_stmt 0 view .LVU297
	ldr	r1, [r2, #1084]
	.loc 3 147 46 view .LVU298
	str	r1, [r3, #1384]
	.loc 3 148 9 is_stmt 1 view .LVU299
	.loc 3 148 86 is_stmt 0 view .LVU300
	ldr	r1, [r2, #1088]
	.loc 3 148 46 view .LVU301
	str	r1, [r3, #1388]
	.loc 3 149 9 is_stmt 1 view .LVU302
	.loc 3 149 86 is_stmt 0 view .LVU303
	ldr	r2, [r2, #1092]
	.loc 3 149 46 view .LVU304
	str	r2, [r3, #1392]
.L113:
	.loc 3 154 5 is_stmt 1 view .LVU305
	.loc 3 154 9 is_stmt 0 view .LVU306
	bl	errata_108
.LVL8:
	.loc 3 154 8 view .LVU307
	cbz	r0, .L114
	.loc 3 155 9 is_stmt 1 view .LVU308
	.loc 3 155 44 is_stmt 0 view .LVU309
	ldr	r3, .L129+40
	ldr	r3, [r3]
	.loc 3 155 77 view .LVU310
	and	r3, r3, #79
	.loc 3 155 42 view .LVU311
	ldr	r2, .L129+44
	str	r3, [r2]
.L114:
	.loc 3 160 5 is_stmt 1 view .LVU312
	.loc 3 160 9 is_stmt 0 view .LVU313
	bl	errata_136
.LVL9:
	.loc 3 160 8 view .LVU314
	cbz	r0, .L115
	.loc 3 161 9 is_stmt 1 view .LVU315
	.loc 3 161 46 is_stmt 0 view .LVU316
	mov	r3, #1073741824
	ldr	r3, [r3, #1024]
	.loc 3 161 12 view .LVU317
	tst	r3, #1
	beq	.L115
	.loc 3 162 13 is_stmt 1 view .LVU318
	.loc 3 162 58 is_stmt 0 view .LVU319
	mov	r3, #1073741824
	mvn	r2, #1
	str	r2, [r3, #1024]
.L115:
	.loc 3 168 5 is_stmt 1 view .LVU320
	.loc 3 168 9 is_stmt 0 view .LVU321
	bl	errata_182
.LVL10:
	.loc 3 168 8 view .LVU322
	cbz	r0, .L116
	.loc 3 169 9 is_stmt 1 view .LVU323
	.loc 3 169 43 is_stmt 0 view .LVU324
	ldr	r2, .L129+48
	ldr	r3, [r2]
	orr	r3, r3, #1024
	str	r3, [r2]
.L116:
	.loc 3 176 9 is_stmt 1 view .LVU325
	.loc 3 176 60 is_stmt 0 view .LVU326
	ldr	r2, .L129+52
	ldr	r3, [r2, #136]
	orr	r3, r3, #15728640
	str	r3, [r2, #136]
	.loc 3 177 9 is_stmt 1 view .LVU327
.LBB18:
.LBI18:
	.loc 2 427 51 view .LVU328
.LBB19:
	.loc 2 429 3 view .LVU329
	.syntax unified
@ 429 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	dsb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
.LBE19:
.LBE18:
	.loc 3 178 9 view .LVU330
.LBB20:
.LBI20:
	.loc 2 416 51 view .LVU331
.LBB21:
	.loc 2 418 3 view .LVU332
	.syntax unified
@ 418 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	isb 0xF
@ 0 "" 2
	.thumb
	.syntax unified
.LBE21:
.LBE20:
	.loc 3 185 9 view .LVU333
	.loc 3 185 46 is_stmt 0 view .LVU334
	mov	r3, #268439552
	ldr	r3, [r3, #524]
	.loc 3 185 12 view .LVU335
	tst	r3, #1
	bne	.L128
	.loc 3 200 9 is_stmt 1 view .LVU336
	.loc 3 200 58 is_stmt 0 view .LVU337
	mov	r3, #268439552
	ldr	r3, [r3, #512]
	.loc 3 200 12 view .LVU338
	cmp	r3, #0
	blt	.L121
	.loc 3 201 58 discriminator 1 view .LVU339
	mov	r3, #268439552
	ldr	r3, [r3, #516]
	.loc 3 200 105 discriminator 1 view .LVU340
	cmp	r3, #0
	blt	.L121
	.loc 3 214 5 is_stmt 1 view .LVU341
	bl	SystemCoreClockUpdate
.LVL11:
	.loc 3 215 1 is_stmt 0 view .LVU342
	pop	{r3, pc}
.L128:
	.loc 3 186 13 is_stmt 1 view .LVU343
	.loc 3 186 54 is_stmt 0 view .LVU344
	ldr	r3, .L129+56
	movs	r2, #1
	str	r2, [r3, #1284]
	.loc 3 187 13 is_stmt 1 view .LVU345
.L118:
	.loc 3 187 70 discriminator 1 view .LVU346
	.loc 3 187 19 discriminator 1 view .LVU347
	.loc 3 187 52 is_stmt 0 discriminator 1 view .LVU348
	ldr	r3, .L129+56
	ldr	r3, [r3, #1024]
	.loc 3 187 19 discriminator 1 view .LVU349
	cmp	r3, #0
	beq	.L118
	.loc 3 188 13 is_stmt 1 view .LVU350
	.loc 3 188 55 is_stmt 0 view .LVU351
	mov	r2, #268439552
	ldr	r3, [r2, #524]
	bic	r3, r3, #1
	str	r3, [r2, #524]
	.loc 3 189 13 is_stmt 1 view .LVU352
.L119:
	.loc 3 189 70 discriminator 1 view .LVU353
	.loc 3 189 19 discriminator 1 view .LVU354
	.loc 3 189 52 is_stmt 0 discriminator 1 view .LVU355
	ldr	r3, .L129+56
	ldr	r3, [r3, #1024]
	.loc 3 189 19 discriminator 1 view .LVU356
	cmp	r3, #0
	beq	.L119
	.loc 3 190 13 is_stmt 1 view .LVU357
	.loc 3 190 54 is_stmt 0 view .LVU358
	ldr	r3, .L129+56
	movs	r2, #0
	str	r2, [r3, #1284]
	.loc 3 191 13 is_stmt 1 view .LVU359
.L120:
	.loc 3 191 70 discriminator 1 view .LVU360
	.loc 3 191 19 discriminator 1 view .LVU361
	.loc 3 191 52 is_stmt 0 discriminator 1 view .LVU362
	ldr	r3, .L129+56
	ldr	r3, [r3, #1024]
	.loc 3 191 19 discriminator 1 view .LVU363
	cmp	r3, #0
	beq	.L120
	.loc 3 192 13 is_stmt 1 view .LVU364
	bl	NVIC_SystemReset
.LVL12:
.L121:
	.loc 3 202 13 view .LVU365
	.loc 3 202 54 is_stmt 0 view .LVU366
	ldr	r3, .L129+56
	movs	r2, #1
	str	r2, [r3, #1284]
	.loc 3 203 13 is_stmt 1 view .LVU367
.L123:
	.loc 3 203 70 discriminator 1 view .LVU368
	.loc 3 203 19 discriminator 1 view .LVU369
	.loc 3 203 52 is_stmt 0 discriminator 1 view .LVU370
	ldr	r3, .L129+56
	ldr	r3, [r3, #1024]
	.loc 3 203 19 discriminator 1 view .LVU371
	cmp	r3, #0
	beq	.L123
	.loc 3 204 13 is_stmt 1 view .LVU372
	.loc 3 204 60 is_stmt 0 view .LVU373
	mov	r3, #268439552
	movs	r2, #21
	str	r2, [r3, #512]
	.loc 3 205 13 is_stmt 1 view .LVU374
.L124:
	.loc 3 205 70 discriminator 1 view .LVU375
	.loc 3 205 19 discriminator 1 view .LVU376
	.loc 3 205 52 is_stmt 0 discriminator 1 view .LVU377
	ldr	r3, .L129+56
	ldr	r3, [r3, #1024]
	.loc 3 205 19 discriminator 1 view .LVU378
	cmp	r3, #0
	beq	.L124
	.loc 3 206 13 is_stmt 1 view .LVU379
	.loc 3 206 60 is_stmt 0 view .LVU380
	mov	r3, #268439552
	movs	r2, #21
	str	r2, [r3, #516]
	.loc 3 207 13 is_stmt 1 view .LVU381
.L125:
	.loc 3 207 70 discriminator 1 view .LVU382
	.loc 3 207 19 discriminator 1 view .LVU383
	.loc 3 207 52 is_stmt 0 discriminator 1 view .LVU384
	ldr	r3, .L129+56
	ldr	r3, [r3, #1024]
	.loc 3 207 19 discriminator 1 view .LVU385
	cmp	r3, #0
	beq	.L125
	.loc 3 208 13 is_stmt 1 view .LVU386
	.loc 3 208 54 is_stmt 0 view .LVU387
	ldr	r3, .L129+56
	movs	r2, #0
	str	r2, [r3, #1284]
	.loc 3 209 13 is_stmt 1 view .LVU388
.L126:
	.loc 3 209 70 discriminator 1 view .LVU389
	.loc 3 209 19 discriminator 1 view .LVU390
	.loc 3 209 52 is_stmt 0 discriminator 1 view .LVU391
	ldr	r3, .L129+56
	ldr	r3, [r3, #1024]
	.loc 3 209 19 discriminator 1 view .LVU392
	cmp	r3, #0
	beq	.L126
	.loc 3 210 13 is_stmt 1 view .LVU393
	bl	NVIC_SystemReset
.LVL13:
.L130:
	.align	2
.L129:
	.word	268436260
	.word	1073820992
	.word	1074249844
	.word	-1163005939
	.word	268436036
	.word	1073743164
	.word	-536810000
	.word	1073743264
	.word	1073763856
	.word	1073790976
	.word	268436056
	.word	1073745636
	.word	1073747772
	.word	-536810240
	.word	1073864704
.LFE125:
	.size	SystemInit, .-SystemInit
	.global	SystemCoreClock
	.section	.data.SystemCoreClock,"aw"
	.align	2
	.set	.LANCHOR0,. + 0
	.type	SystemCoreClock, %object
	.size	SystemCoreClock, 4
SystemCoreClock:
	.word	64000000
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
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.byte	0x4
	.4byte	.LCFI0-.LFB125
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE26:
	.text
.Letext0:
	.file 4 "C:\\nRF5_SDK_15.0.0_a53641a\\modules\\nrfx\\mdk\\nrf52.h"
	.file 5 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.section	.debug_types,"G",%progbits,wt.37715fe5f320560a,comdat
	.4byte	0x150
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x37
	.byte	0x71
	.byte	0x5f
	.byte	0xe5
	.byte	0xf3
	.byte	0x20
	.byte	0x56
	.byte	0xa
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.2byte	0x550
	.byte	0x4
	.2byte	0x6e5
	.byte	0x9
	.4byte	0xe7
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.2byte	0x6e6
	.byte	0x1b
	.4byte	0xe7
	.byte	0
	.uleb128 0x4
	.4byte	.LASF1
	.byte	0x4
	.2byte	0x6e7
	.byte	0x1b
	.4byte	0xec
	.2byte	0x400
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x4
	.2byte	0x6e8
	.byte	0x1b
	.4byte	0xf1
	.2byte	0x404
	.uleb128 0x4
	.4byte	.LASF3
	.byte	0x4
	.2byte	0x6e9
	.byte	0x15
	.4byte	0xf6
	.2byte	0x504
	.uleb128 0x5
	.byte	0x65
	.byte	0x92
	.byte	0x1a
	.byte	0x1a
	.byte	0xd5
	.byte	0x98
	.byte	0x83
	.byte	0x7b
	.2byte	0x508
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x4
	.2byte	0x6f0
	.byte	0x15
	.4byte	0xf6
	.2byte	0x50c
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x4
	.2byte	0x6f1
	.byte	0x15
	.4byte	0xf6
	.2byte	0x510
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x4
	.2byte	0x6f3
	.byte	0x15
	.4byte	0xf6
	.2byte	0x514
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x4
	.2byte	0x6f4
	.byte	0x1b
	.4byte	0xfb
	.2byte	0x518
	.uleb128 0x4
	.4byte	.LASF8
	.byte	0x4
	.2byte	0x6f5
	.byte	0x15
	.4byte	0xf6
	.2byte	0x540
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.2byte	0x6f6
	.byte	0x1b
	.4byte	0xec
	.2byte	0x544
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x4
	.2byte	0x6f7
	.byte	0x15
	.4byte	0xf6
	.2byte	0x548
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x4
	.2byte	0x6f8
	.byte	0x15
	.4byte	0xf6
	.2byte	0x54c
	.byte	0
	.uleb128 0x6
	.4byte	0x100
	.uleb128 0x6
	.4byte	0x105
	.uleb128 0x6
	.4byte	0x10a
	.uleb128 0x6
	.4byte	0x10f
	.uleb128 0x6
	.4byte	0x11b
	.uleb128 0x7
	.4byte	0x120
	.uleb128 0x7
	.4byte	0x10f
	.uleb128 0x7
	.4byte	0x130
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x140
	.uleb128 0x7
	.4byte	0x147
	.uleb128 0x9
	.4byte	0xec
	.4byte	0x130
	.uleb128 0xa
	.4byte	0x140
	.byte	0xff
	.byte	0
	.uleb128 0x9
	.4byte	0xec
	.4byte	0x140
	.uleb128 0xa
	.4byte	0x140
	.byte	0x3f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xc
	.4byte	0xec
	.uleb128 0xa
	.4byte	0x140
	.byte	0x9
	.byte	0
	.byte	0
	.section	.debug_types,"G",%progbits,wt.65921a1ad598837b,comdat
	.4byte	0x57
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x65
	.byte	0x92
	.byte	0x1a
	.byte	0x1a
	.byte	0xd5
	.byte	0x98
	.byte	0x83
	.byte	0x7b
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xd
	.byte	0x4
	.byte	0x4
	.2byte	0x6eb
	.byte	0x3
	.4byte	0x42
	.uleb128 0xe
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x6ec
	.byte	0x17
	.4byte	0x42
	.uleb128 0xe
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x6ee
	.byte	0x17
	.4byte	0x42
	.byte	0
	.uleb128 0x6
	.4byte	0x47
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x53
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0
	.section	.debug_types,"G",%progbits,wt.5f1fab36a1187eaf,comdat
	.4byte	0x28b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x5f
	.byte	0x1f
	.byte	0xab
	.byte	0x36
	.byte	0xa1
	.byte	0x18
	.byte	0x7e
	.byte	0xaf
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.2byte	0x574
	.byte	0x4
	.2byte	0x534
	.byte	0x9
	.4byte	0x1c8
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.2byte	0x535
	.byte	0x15
	.4byte	0x1c8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.2byte	0x536
	.byte	0x15
	.4byte	0x1c8
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.2byte	0x537
	.byte	0x1b
	.4byte	0x1cd
	.byte	0x8
	.uleb128 0x4
	.4byte	.LASF18
	.byte	0x4
	.2byte	0x538
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x100
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x4
	.2byte	0x539
	.byte	0x1b
	.4byte	0x1d2
	.2byte	0x104
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x53a
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x304
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x53b
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x308
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x4
	.2byte	0x53c
	.byte	0x1b
	.4byte	0x1d7
	.2byte	0x30c
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x53d
	.byte	0x1a
	.4byte	0x1dc
	.2byte	0x508
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.2byte	0x53e
	.byte	0x1b
	.4byte	0x1e1
	.2byte	0x50c
	.uleb128 0xf
	.ascii	"A0\000"
	.byte	0x4
	.2byte	0x53f
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x520
	.uleb128 0xf
	.ascii	"A1\000"
	.byte	0x4
	.2byte	0x540
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x524
	.uleb128 0xf
	.ascii	"A2\000"
	.byte	0x4
	.2byte	0x541
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x528
	.uleb128 0xf
	.ascii	"A3\000"
	.byte	0x4
	.2byte	0x542
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x52c
	.uleb128 0xf
	.ascii	"A4\000"
	.byte	0x4
	.2byte	0x543
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x530
	.uleb128 0xf
	.ascii	"A5\000"
	.byte	0x4
	.2byte	0x544
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x534
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x545
	.byte	0x1b
	.4byte	0x1e6
	.2byte	0x538
	.uleb128 0xf
	.ascii	"B0\000"
	.byte	0x4
	.2byte	0x546
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x540
	.uleb128 0xf
	.ascii	"B1\000"
	.byte	0x4
	.2byte	0x547
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x544
	.uleb128 0xf
	.ascii	"B2\000"
	.byte	0x4
	.2byte	0x548
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x548
	.uleb128 0xf
	.ascii	"B3\000"
	.byte	0x4
	.2byte	0x549
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x54c
	.uleb128 0xf
	.ascii	"B4\000"
	.byte	0x4
	.2byte	0x54a
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x550
	.uleb128 0xf
	.ascii	"B5\000"
	.byte	0x4
	.2byte	0x54b
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x554
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x54c
	.byte	0x1b
	.4byte	0x1eb
	.2byte	0x558
	.uleb128 0xf
	.ascii	"T0\000"
	.byte	0x4
	.2byte	0x54d
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x560
	.uleb128 0xf
	.ascii	"T1\000"
	.byte	0x4
	.2byte	0x54e
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x564
	.uleb128 0xf
	.ascii	"T2\000"
	.byte	0x4
	.2byte	0x54f
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x568
	.uleb128 0xf
	.ascii	"T3\000"
	.byte	0x4
	.2byte	0x550
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x56c
	.uleb128 0xf
	.ascii	"T4\000"
	.byte	0x4
	.2byte	0x551
	.byte	0x15
	.4byte	0x1c8
	.2byte	0x570
	.byte	0
	.uleb128 0x6
	.4byte	0x1f0
	.uleb128 0x6
	.4byte	0x1fc
	.uleb128 0x6
	.4byte	0x201
	.uleb128 0x6
	.4byte	0x206
	.uleb128 0x6
	.4byte	0x20b
	.uleb128 0x6
	.4byte	0x210
	.uleb128 0x6
	.4byte	0x215
	.uleb128 0x6
	.4byte	0x215
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x21a
	.uleb128 0x7
	.4byte	0x221
	.uleb128 0x7
	.4byte	0x231
	.uleb128 0x7
	.4byte	0x241
	.uleb128 0x7
	.4byte	0x251
	.uleb128 0x7
	.4byte	0x25d
	.uleb128 0x7
	.4byte	0x26d
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x9
	.4byte	0x27d
	.4byte	0x231
	.uleb128 0xa
	.4byte	0x21a
	.byte	0x3d
	.byte	0
	.uleb128 0x9
	.4byte	0x27d
	.4byte	0x241
	.uleb128 0xa
	.4byte	0x21a
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.4byte	0x27d
	.4byte	0x251
	.uleb128 0xa
	.4byte	0x21a
	.byte	0x7e
	.byte	0
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x282
	.uleb128 0x9
	.4byte	0x27d
	.4byte	0x26d
	.uleb128 0xa
	.4byte	0x21a
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	0x27d
	.4byte	0x27d
	.uleb128 0xa
	.4byte	0x21a
	.byte	0x1
	.byte	0
	.uleb128 0x6
	.4byte	0x289
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.4byte	0x1f0
	.byte	0
	.section	.debug_types,"G",%progbits,wt.be2ca4f57478285a,comdat
	.4byte	0x28b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xbe
	.byte	0x2c
	.byte	0xa4
	.byte	0xf5
	.byte	0x74
	.byte	0x78
	.byte	0x28
	.byte	0x5a
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.2byte	0x560
	.byte	0x4
	.2byte	0x257
	.byte	0x9
	.4byte	0x1d4
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x258
	.byte	0x15
	.4byte	0x1d4
	.byte	0
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x259
	.byte	0x15
	.4byte	0x1d4
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x25a
	.byte	0x15
	.4byte	0x1d4
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x25b
	.byte	0x15
	.4byte	0x1d4
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x25c
	.byte	0x15
	.4byte	0x1d4
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x25d
	.byte	0x15
	.4byte	0x1d4
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x25e
	.byte	0x15
	.4byte	0x1d4
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.2byte	0x25f
	.byte	0x1b
	.4byte	0x1d9
	.byte	0x1c
	.uleb128 0x4
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x260
	.byte	0x15
	.4byte	0x1d4
	.2byte	0x100
	.uleb128 0x4
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x261
	.byte	0x15
	.4byte	0x1d4
	.2byte	0x104
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x4
	.2byte	0x262
	.byte	0x1b
	.4byte	0x1de
	.2byte	0x108
	.uleb128 0x4
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x263
	.byte	0x15
	.4byte	0x1d4
	.2byte	0x10c
	.uleb128 0x4
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x264
	.byte	0x15
	.4byte	0x1d4
	.2byte	0x110
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x4
	.2byte	0x265
	.byte	0x1b
	.4byte	0x1e3
	.2byte	0x114
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x266
	.byte	0x15
	.4byte	0x1d4
	.2byte	0x304
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x267
	.byte	0x15
	.4byte	0x1d4
	.2byte	0x308
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.2byte	0x268
	.byte	0x1b
	.4byte	0x1e8
	.2byte	0x30c
	.uleb128 0x4
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x269
	.byte	0x1b
	.4byte	0x1de
	.2byte	0x408
	.uleb128 0x4
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x26a
	.byte	0x1b
	.4byte	0x1de
	.2byte	0x40c
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x26b
	.byte	0x1b
	.4byte	0x1de
	.2byte	0x410
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x26c
	.byte	0x1b
	.4byte	0x1de
	.2byte	0x414
	.uleb128 0x4
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x26d
	.byte	0x1b
	.4byte	0x1de
	.2byte	0x418
	.uleb128 0x4
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x26e
	.byte	0x1b
	.4byte	0x1de
	.2byte	0x41c
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x26f
	.byte	0x1b
	.4byte	0x1ed
	.2byte	0x420
	.uleb128 0x4
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x270
	.byte	0x15
	.4byte	0x1d4
	.2byte	0x518
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x271
	.byte	0x1b
	.4byte	0x1f2
	.2byte	0x51c
	.uleb128 0x4
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x272
	.byte	0x15
	.4byte	0x1d4
	.2byte	0x538
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x273
	.byte	0x1b
	.4byte	0x1f7
	.2byte	0x53c
	.uleb128 0x4
	.4byte	.LASF45
	.byte	0x4
	.2byte	0x274
	.byte	0x15
	.4byte	0x1d4
	.2byte	0x55c
	.byte	0
	.uleb128 0x6
	.4byte	0x1fc
	.uleb128 0x6
	.4byte	0x208
	.uleb128 0x6
	.4byte	0x20d
	.uleb128 0x6
	.4byte	0x212
	.uleb128 0x6
	.4byte	0x217
	.uleb128 0x6
	.4byte	0x21c
	.uleb128 0x6
	.4byte	0x221
	.uleb128 0x6
	.4byte	0x226
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x22b
	.uleb128 0x7
	.4byte	0x232
	.uleb128 0x7
	.4byte	0x1fc
	.uleb128 0x7
	.4byte	0x242
	.uleb128 0x7
	.4byte	0x252
	.uleb128 0x7
	.4byte	0x262
	.uleb128 0x7
	.4byte	0x272
	.uleb128 0x7
	.4byte	0x282
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x242
	.uleb128 0xa
	.4byte	0x22b
	.byte	0x38
	.byte	0
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x252
	.uleb128 0xa
	.4byte	0x22b
	.byte	0x7b
	.byte	0
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x262
	.uleb128 0xa
	.4byte	0x22b
	.byte	0x3e
	.byte	0
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x272
	.uleb128 0xa
	.4byte	0x22b
	.byte	0x3d
	.byte	0
	.uleb128 0x9
	.4byte	0x1de
	.4byte	0x282
	.uleb128 0xa
	.4byte	0x22b
	.byte	0x6
	.byte	0
	.uleb128 0xc
	.4byte	0x1de
	.uleb128 0xa
	.4byte	0x22b
	.byte	0x7
	.byte	0
	.byte	0
	.section	.debug_types,"G",%progbits,wt.2dea736bef59c9a9,comdat
	.4byte	0x336
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x2d
	.byte	0xea
	.byte	0x73
	.byte	0x6b
	.byte	0xef
	.byte	0x59
	.byte	0xc9
	.byte	0xa9
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.2byte	0x980
	.byte	0x4
	.2byte	0x22b
	.byte	0x9
	.4byte	0x1d8
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.2byte	0x22c
	.byte	0x1b
	.4byte	0x1d8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x4
	.2byte	0x22d
	.byte	0x15
	.4byte	0x1dd
	.byte	0x78
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x4
	.2byte	0x22e
	.byte	0x15
	.4byte	0x1dd
	.byte	0x7c
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.2byte	0x22f
	.byte	0x1b
	.4byte	0x1e2
	.byte	0x80
	.uleb128 0x4
	.4byte	.LASF48
	.byte	0x4
	.2byte	0x230
	.byte	0x15
	.4byte	0x1dd
	.2byte	0x108
	.uleb128 0x4
	.4byte	.LASF7
	.byte	0x4
	.2byte	0x231
	.byte	0x1b
	.4byte	0x1e7
	.2byte	0x10c
	.uleb128 0x4
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x232
	.byte	0x15
	.4byte	0x1dd
	.2byte	0x114
	.uleb128 0x4
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x233
	.byte	0x15
	.4byte	0x1dd
	.2byte	0x118
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x4
	.2byte	0x234
	.byte	0x1b
	.4byte	0x1ec
	.2byte	0x11c
	.uleb128 0x4
	.4byte	.LASF19
	.byte	0x4
	.2byte	0x235
	.byte	0x15
	.4byte	0x1dd
	.2byte	0x304
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x4
	.2byte	0x236
	.byte	0x15
	.4byte	0x1dd
	.2byte	0x308
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x237
	.byte	0x1b
	.4byte	0x1f1
	.2byte	0x30c
	.uleb128 0x4
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x238
	.byte	0x15
	.4byte	0x1dd
	.2byte	0x400
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x239
	.byte	0x1b
	.4byte	0x1f6
	.2byte	0x404
	.uleb128 0x4
	.4byte	.LASF52
	.byte	0x4
	.2byte	0x23a
	.byte	0x1b
	.4byte	0x1fb
	.2byte	0x428
	.uleb128 0x4
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x23b
	.byte	0x1b
	.4byte	0x200
	.2byte	0x42c
	.uleb128 0x4
	.4byte	.LASF53
	.byte	0x4
	.2byte	0x23c
	.byte	0x15
	.4byte	0x1dd
	.2byte	0x500
	.uleb128 0x4
	.4byte	.LASF44
	.byte	0x4
	.2byte	0x23d
	.byte	0x1b
	.4byte	0x205
	.2byte	0x504
	.uleb128 0x4
	.4byte	.LASF54
	.byte	0x4
	.2byte	0x23e
	.byte	0x15
	.4byte	0x1dd
	.2byte	0x510
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x4
	.2byte	0x23f
	.byte	0x1b
	.4byte	0x20a
	.2byte	0x514
	.uleb128 0x4
	.4byte	.LASF56
	.byte	0x4
	.2byte	0x240
	.byte	0x15
	.4byte	0x1dd
	.2byte	0x51c
	.uleb128 0x4
	.4byte	.LASF57
	.byte	0x4
	.2byte	0x241
	.byte	0x15
	.4byte	0x1dd
	.2byte	0x520
	.uleb128 0x4
	.4byte	.LASF58
	.byte	0x4
	.2byte	0x242
	.byte	0x15
	.4byte	0x1dd
	.2byte	0x524
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x4
	.2byte	0x244
	.byte	0x1b
	.4byte	0x20f
	.2byte	0x528
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x4
	.2byte	0x245
	.byte	0x15
	.4byte	0x1dd
	.2byte	0x554
	.uleb128 0x4
	.4byte	.LASF61
	.byte	0x4
	.2byte	0x247
	.byte	0x1b
	.4byte	0x214
	.2byte	0x558
	.uleb128 0x4
	.4byte	.LASF62
	.byte	0x4
	.2byte	0x248
	.byte	0x15
	.4byte	0x1dd
	.2byte	0x578
	.uleb128 0x4
	.4byte	.LASF63
	.byte	0x4
	.2byte	0x249
	.byte	0x1b
	.4byte	0x219
	.2byte	0x57c
	.uleb128 0xf
	.ascii	"RAM\000"
	.byte	0x4
	.2byte	0x24a
	.byte	0x12
	.4byte	0x21e
	.2byte	0x900
	.byte	0
	.uleb128 0x6
	.4byte	0x22e
	.uleb128 0x6
	.4byte	0x233
	.uleb128 0x6
	.4byte	0x23f
	.uleb128 0x6
	.4byte	0x244
	.uleb128 0x6
	.4byte	0x249
	.uleb128 0x6
	.4byte	0x24e
	.uleb128 0x6
	.4byte	0x253
	.uleb128 0x6
	.4byte	0x258
	.uleb128 0x6
	.4byte	0x25d
	.uleb128 0x6
	.4byte	0x262
	.uleb128 0x6
	.4byte	0x244
	.uleb128 0x6
	.4byte	0x267
	.uleb128 0x6
	.4byte	0x26c
	.uleb128 0x6
	.4byte	0x271
	.uleb128 0x9
	.4byte	0x276
	.4byte	0x22e
	.uleb128 0xa
	.4byte	0x286
	.byte	0x7
	.byte	0
	.uleb128 0x7
	.4byte	0x28d
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x286
	.uleb128 0x7
	.4byte	0x29d
	.uleb128 0x7
	.4byte	0x2ad
	.uleb128 0x7
	.4byte	0x2bd
	.uleb128 0x7
	.4byte	0x2cd
	.uleb128 0x7
	.4byte	0x2dd
	.uleb128 0x7
	.4byte	0x233
	.uleb128 0x7
	.4byte	0x2ed
	.uleb128 0x7
	.4byte	0x2fd
	.uleb128 0x7
	.4byte	0x30d
	.uleb128 0x7
	.4byte	0x31d
	.uleb128 0x7
	.4byte	0x32d
	.uleb128 0x11
	.4byte	.LASF64
	.byte	0x4
	.byte	0xde
	.byte	0x3
	.byte	0x2f
	.byte	0x74
	.byte	0x10
	.byte	0xb1
	.byte	0x9e
	.byte	0x9
	.byte	0x6e
	.byte	0xb0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x9
	.4byte	0x1fb
	.4byte	0x29d
	.uleb128 0xa
	.4byte	0x286
	.byte	0x1d
	.byte	0
	.uleb128 0x9
	.4byte	0x1fb
	.4byte	0x2ad
	.uleb128 0xa
	.4byte	0x286
	.byte	0x21
	.byte	0
	.uleb128 0x9
	.4byte	0x1fb
	.4byte	0x2bd
	.uleb128 0xa
	.4byte	0x286
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x1fb
	.4byte	0x2cd
	.uleb128 0xa
	.4byte	0x286
	.byte	0x79
	.byte	0
	.uleb128 0x9
	.4byte	0x1fb
	.4byte	0x2dd
	.uleb128 0xa
	.4byte	0x286
	.byte	0x3c
	.byte	0
	.uleb128 0x9
	.4byte	0x1fb
	.4byte	0x2ed
	.uleb128 0xa
	.4byte	0x286
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	0x1fb
	.4byte	0x2fd
	.uleb128 0xa
	.4byte	0x286
	.byte	0x34
	.byte	0
	.uleb128 0x9
	.4byte	0x1fb
	.4byte	0x30d
	.uleb128 0xa
	.4byte	0x286
	.byte	0x2
	.byte	0
	.uleb128 0x9
	.4byte	0x1fb
	.4byte	0x31d
	.uleb128 0xa
	.4byte	0x286
	.byte	0xa
	.byte	0
	.uleb128 0x9
	.4byte	0x1fb
	.4byte	0x32d
	.uleb128 0xa
	.4byte	0x286
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.4byte	0x1fb
	.uleb128 0xa
	.4byte	0x286
	.byte	0xe0
	.byte	0
	.byte	0
	.section	.debug_types,"G",%progbits,wt.baa737ade2dd390e,comdat
	.4byte	0x15e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xba
	.byte	0xa7
	.byte	0x37
	.byte	0xad
	.byte	0xe2
	.byte	0xdd
	.byte	0x39
	.byte	0xe
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.2byte	0x210
	.byte	0x4
	.2byte	0x1fc
	.byte	0x9
	.4byte	0xd5
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x4
	.2byte	0x1fd
	.byte	0x15
	.4byte	0xd5
	.byte	0
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x4
	.2byte	0x1fe
	.byte	0x15
	.4byte	0xd5
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x4
	.2byte	0x1ff
	.byte	0x15
	.4byte	0xd5
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.2byte	0x200
	.byte	0x1b
	.4byte	0xda
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x4
	.2byte	0x201
	.byte	0x15
	.4byte	0xd5
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0x4
	.2byte	0x202
	.byte	0x15
	.4byte	0xdf
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x4
	.2byte	0x203
	.byte	0x15
	.4byte	0xe4
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x4
	.2byte	0x204
	.byte	0x15
	.4byte	0xe9
	.byte	0x80
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x4
	.2byte	0x205
	.byte	0x1b
	.4byte	0xee
	.2byte	0x100
	.uleb128 0x4
	.4byte	.LASF72
	.byte	0x4
	.2byte	0x206
	.byte	0x15
	.4byte	0xf3
	.2byte	0x200
	.uleb128 0x4
	.4byte	.LASF73
	.byte	0x4
	.2byte	0x208
	.byte	0x15
	.4byte	0xd5
	.2byte	0x208
	.uleb128 0x4
	.4byte	.LASF74
	.byte	0x4
	.2byte	0x209
	.byte	0x15
	.4byte	0xd5
	.2byte	0x20c
	.byte	0
	.uleb128 0x6
	.4byte	0xf8
	.uleb128 0x6
	.4byte	0x104
	.uleb128 0x6
	.4byte	0x109
	.uleb128 0x6
	.4byte	0x119
	.uleb128 0x6
	.4byte	0x129
	.uleb128 0x6
	.4byte	0x139
	.uleb128 0x6
	.4byte	0x13e
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x14e
	.uleb128 0x7
	.4byte	0xf8
	.uleb128 0x9
	.4byte	0xd5
	.4byte	0x119
	.uleb128 0xa
	.4byte	0x14e
	.byte	0xe
	.byte	0
	.uleb128 0x9
	.4byte	0xd5
	.4byte	0x129
	.uleb128 0xa
	.4byte	0x14e
	.byte	0xb
	.byte	0
	.uleb128 0x9
	.4byte	0xd5
	.4byte	0x139
	.uleb128 0xa
	.4byte	0x14e
	.byte	0x1f
	.byte	0
	.uleb128 0x7
	.4byte	0x155
	.uleb128 0x9
	.4byte	0xd5
	.4byte	0x14e
	.uleb128 0xa
	.4byte	0x14e
	.byte	0x1
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xc
	.4byte	0xda
	.uleb128 0xa
	.4byte	0x14e
	.byte	0x3f
	.byte	0
	.byte	0
	.section	.debug_types,"G",%progbits,wt.a7f8acd97bb1fd9c,comdat
	.4byte	0x206
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xa7
	.byte	0xf8
	.byte	0xac
	.byte	0xd9
	.byte	0x7b
	.byte	0xb1
	.byte	0xfd
	.byte	0x9c
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.2byte	0x460
	.byte	0x4
	.2byte	0x1df
	.byte	0x9
	.4byte	0x10c
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.2byte	0x1e0
	.byte	0x1b
	.4byte	0x10c
	.byte	0
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x4
	.2byte	0x1e1
	.byte	0x1b
	.4byte	0x111
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x4
	.2byte	0x1e2
	.byte	0x1b
	.4byte	0x111
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.2byte	0x1e3
	.byte	0x1b
	.4byte	0x116
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x4
	.2byte	0x1e4
	.byte	0x1b
	.4byte	0x11b
	.byte	0x60
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x4
	.2byte	0x1e5
	.byte	0x1b
	.4byte	0x120
	.byte	0x68
	.uleb128 0x12
	.ascii	"ER\000"
	.byte	0x4
	.2byte	0x1e6
	.byte	0x1b
	.4byte	0x125
	.byte	0x80
	.uleb128 0x12
	.ascii	"IR\000"
	.byte	0x4
	.2byte	0x1e7
	.byte	0x1b
	.4byte	0x12a
	.byte	0x90
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x4
	.2byte	0x1e8
	.byte	0x1b
	.4byte	0x111
	.byte	0xa0
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x4
	.2byte	0x1e9
	.byte	0x1b
	.4byte	0x12f
	.byte	0xa4
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x4
	.2byte	0x1ea
	.byte	0x1b
	.4byte	0x134
	.byte	0xac
	.uleb128 0x4
	.4byte	.LASF80
	.byte	0x4
	.2byte	0x1eb
	.byte	0x12
	.4byte	0x139
	.2byte	0x100
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x4
	.2byte	0x1ec
	.byte	0x1b
	.4byte	0x149
	.2byte	0x120
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x4
	.2byte	0x1ed
	.byte	0x12
	.4byte	0x14e
	.2byte	0x404
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x4
	.2byte	0x1ee
	.byte	0x1b
	.4byte	0x15e
	.2byte	0x448
	.uleb128 0xf
	.ascii	"NFC\000"
	.byte	0x4
	.2byte	0x1ef
	.byte	0x11
	.4byte	0x163
	.2byte	0x450
	.byte	0
	.uleb128 0x6
	.4byte	0x173
	.uleb128 0x6
	.4byte	0x178
	.uleb128 0x6
	.4byte	0x17d
	.uleb128 0x6
	.4byte	0x182
	.uleb128 0x6
	.4byte	0x187
	.uleb128 0x6
	.4byte	0x173
	.uleb128 0x6
	.4byte	0x173
	.uleb128 0x6
	.4byte	0x182
	.uleb128 0x6
	.4byte	0x18c
	.uleb128 0x11
	.4byte	.LASF81
	.byte	0x4
	.byte	0xb8
	.byte	0x3
	.byte	0xed
	.byte	0x8c
	.byte	0x66
	.byte	0x17
	.byte	0x34
	.byte	0x11
	.byte	0xfb
	.byte	0x87
	.uleb128 0x6
	.4byte	0x191
	.uleb128 0x11
	.4byte	.LASF82
	.byte	0x4
	.byte	0xcc
	.byte	0x3
	.byte	0x52
	.byte	0x42
	.byte	0xa9
	.byte	0x8c
	.byte	0xb4
	.byte	0xfc
	.byte	0xf9
	.byte	0xa9
	.uleb128 0x6
	.4byte	0x182
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x4
	.byte	0xd7
	.byte	0x3
	.byte	0xaa
	.byte	0x7c
	.byte	0x2e
	.byte	0xd6
	.byte	0x6a
	.byte	0x96
	.byte	0x8a
	.byte	0xb6
	.uleb128 0x7
	.4byte	0x196
	.uleb128 0x7
	.4byte	0x1a6
	.uleb128 0x7
	.4byte	0x1b2
	.uleb128 0x7
	.4byte	0x1c2
	.uleb128 0x7
	.4byte	0x1d2
	.uleb128 0x7
	.4byte	0x1e2
	.uleb128 0x7
	.4byte	0x1f2
	.uleb128 0x9
	.4byte	0x111
	.4byte	0x1a6
	.uleb128 0xa
	.4byte	0x202
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x202
	.uleb128 0x9
	.4byte	0x111
	.4byte	0x1c2
	.uleb128 0xa
	.4byte	0x202
	.byte	0x11
	.byte	0
	.uleb128 0x9
	.4byte	0x111
	.4byte	0x1d2
	.uleb128 0xa
	.4byte	0x202
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x111
	.4byte	0x1e2
	.uleb128 0xa
	.4byte	0x202
	.byte	0x5
	.byte	0
	.uleb128 0x9
	.4byte	0x111
	.4byte	0x1f2
	.uleb128 0xa
	.4byte	0x202
	.byte	0x14
	.byte	0
	.uleb128 0x9
	.4byte	0x111
	.4byte	0x202
	.uleb128 0xa
	.4byte	0x202
	.byte	0xb8
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0
	.section	.debug_types,"G",%progbits,wt.2f7410b19e096eb0,comdat
	.4byte	0x7a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x2f
	.byte	0x74
	.byte	0x10
	.byte	0xb1
	.byte	0x9e
	.byte	0x9
	.byte	0x6e
	.byte	0xb0
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.byte	0x10
	.byte	0x4
	.byte	0xd9
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x4
	.byte	0xda
	.byte	0x15
	.4byte	0x5b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF85
	.byte	0x4
	.byte	0xdb
	.byte	0x15
	.4byte	0x5b
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x4
	.byte	0xdc
	.byte	0x15
	.4byte	0x5b
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF0
	.byte	0x4
	.byte	0xdd
	.byte	0x1b
	.4byte	0x60
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	0x65
	.uleb128 0x6
	.4byte	0x71
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x76
	.uleb128 0x7
	.4byte	0x65
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0
	.section	.debug_types,"G",%progbits,wt.aa7c2ed66a968ab6,comdat
	.4byte	0x75
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xaa
	.byte	0x7c
	.byte	0x2e
	.byte	0xd6
	.byte	0x6a
	.byte	0x96
	.byte	0x8a
	.byte	0xb6
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.byte	0x10
	.byte	0x4
	.byte	0xce
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x14
	.4byte	.LASF87
	.byte	0x4
	.byte	0xcf
	.byte	0x1b
	.4byte	0x5b
	.byte	0
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x4
	.byte	0xd1
	.byte	0x1b
	.4byte	0x5b
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF89
	.byte	0x4
	.byte	0xd3
	.byte	0x1b
	.4byte	0x5b
	.byte	0x8
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x4
	.byte	0xd5
	.byte	0x1b
	.4byte	0x5b
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	0x60
	.uleb128 0x7
	.4byte	0x65
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x71
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0
	.section	.debug_types,"G",%progbits,wt.5242a98cb4fcf9a9,comdat
	.4byte	0x10d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x52
	.byte	0x42
	.byte	0xa9
	.byte	0x8c
	.byte	0xb4
	.byte	0xfc
	.byte	0xf9
	.byte	0xa9
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.byte	0x44
	.byte	0x4
	.byte	0xba
	.byte	0x9
	.4byte	0xf3
	.uleb128 0x15
	.ascii	"A0\000"
	.byte	0x4
	.byte	0xbb
	.byte	0x1b
	.4byte	0xf3
	.byte	0
	.uleb128 0x15
	.ascii	"A1\000"
	.byte	0x4
	.byte	0xbc
	.byte	0x1b
	.4byte	0xf3
	.byte	0x4
	.uleb128 0x15
	.ascii	"A2\000"
	.byte	0x4
	.byte	0xbd
	.byte	0x1b
	.4byte	0xf3
	.byte	0x8
	.uleb128 0x15
	.ascii	"A3\000"
	.byte	0x4
	.byte	0xbe
	.byte	0x1b
	.4byte	0xf3
	.byte	0xc
	.uleb128 0x15
	.ascii	"A4\000"
	.byte	0x4
	.byte	0xbf
	.byte	0x1b
	.4byte	0xf3
	.byte	0x10
	.uleb128 0x15
	.ascii	"A5\000"
	.byte	0x4
	.byte	0xc0
	.byte	0x1b
	.4byte	0xf3
	.byte	0x14
	.uleb128 0x15
	.ascii	"B0\000"
	.byte	0x4
	.byte	0xc1
	.byte	0x1b
	.4byte	0xf3
	.byte	0x18
	.uleb128 0x15
	.ascii	"B1\000"
	.byte	0x4
	.byte	0xc2
	.byte	0x1b
	.4byte	0xf3
	.byte	0x1c
	.uleb128 0x15
	.ascii	"B2\000"
	.byte	0x4
	.byte	0xc3
	.byte	0x1b
	.4byte	0xf3
	.byte	0x20
	.uleb128 0x15
	.ascii	"B3\000"
	.byte	0x4
	.byte	0xc4
	.byte	0x1b
	.4byte	0xf3
	.byte	0x24
	.uleb128 0x15
	.ascii	"B4\000"
	.byte	0x4
	.byte	0xc5
	.byte	0x1b
	.4byte	0xf3
	.byte	0x28
	.uleb128 0x15
	.ascii	"B5\000"
	.byte	0x4
	.byte	0xc6
	.byte	0x1b
	.4byte	0xf3
	.byte	0x2c
	.uleb128 0x15
	.ascii	"T0\000"
	.byte	0x4
	.byte	0xc7
	.byte	0x1b
	.4byte	0xf3
	.byte	0x30
	.uleb128 0x15
	.ascii	"T1\000"
	.byte	0x4
	.byte	0xc8
	.byte	0x1b
	.4byte	0xf3
	.byte	0x34
	.uleb128 0x15
	.ascii	"T2\000"
	.byte	0x4
	.byte	0xc9
	.byte	0x1b
	.4byte	0xf3
	.byte	0x38
	.uleb128 0x15
	.ascii	"T3\000"
	.byte	0x4
	.byte	0xca
	.byte	0x1b
	.4byte	0xf3
	.byte	0x3c
	.uleb128 0x15
	.ascii	"T4\000"
	.byte	0x4
	.byte	0xcb
	.byte	0x1b
	.4byte	0xf3
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.4byte	0xf8
	.uleb128 0x7
	.4byte	0xfd
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x109
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.byte	0
	.section	.debug_types,"G",%progbits,wt.ed8c66173411fb87,comdat
	.4byte	0xa9
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xed
	.byte	0x8c
	.byte	0x66
	.byte	0x17
	.byte	0x34
	.byte	0x11
	.byte	0xfb
	.byte	0x87
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x13
	.byte	0x20
	.byte	0x4
	.byte	0xb1
	.byte	0x9
	.4byte	0x75
	.uleb128 0x14
	.4byte	.LASF91
	.byte	0x4
	.byte	0xb2
	.byte	0x1b
	.4byte	0x75
	.byte	0
	.uleb128 0x14
	.4byte	.LASF92
	.byte	0x4
	.byte	0xb3
	.byte	0x1b
	.4byte	0x75
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x4
	.byte	0xb4
	.byte	0x1b
	.4byte	0x75
	.byte	0x8
	.uleb128 0x15
	.ascii	"RAM\000"
	.byte	0x4
	.byte	0xb5
	.byte	0x1b
	.4byte	0x75
	.byte	0xc
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x4
	.byte	0xb6
	.byte	0x1b
	.4byte	0x75
	.byte	0x10
	.uleb128 0x14
	.4byte	.LASF65
	.byte	0x4
	.byte	0xb7
	.byte	0x15
	.4byte	0x7a
	.byte	0x14
	.byte	0
	.uleb128 0x6
	.4byte	0x7f
	.uleb128 0x6
	.4byte	0x84
	.uleb128 0x7
	.4byte	0x94
	.uleb128 0x9
	.4byte	0xa0
	.4byte	0x94
	.uleb128 0xa
	.4byte	0xa5
	.byte	0x2
	.byte	0
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0xa5
	.uleb128 0x6
	.4byte	0x94
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
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
	.uleb128 0x16
	.byte	0x10
	.byte	0x1
	.2byte	0x57c
	.byte	0x9
	.4byte	0x60
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x57e
	.byte	0x15
	.4byte	0x60
	.byte	0
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x57f
	.byte	0x15
	.4byte	0x60
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x580
	.byte	0x15
	.4byte	0x60
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x581
	.byte	0x15
	.4byte	0x60
	.byte	0xc
	.byte	0
	.uleb128 0x6
	.4byte	0x65
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x71
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
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
	.uleb128 0x16
	.byte	0x8c
	.byte	0x1
	.2byte	0x1e5
	.byte	0x9
	.4byte	0x14e
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x1e7
	.byte	0x1b
	.4byte	0x14e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1e8
	.byte	0x15
	.4byte	0x153
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1e9
	.byte	0x15
	.4byte	0x153
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1ea
	.byte	0x15
	.4byte	0x153
	.byte	0xc
	.uleb128 0x12
	.ascii	"SCR\000"
	.byte	0x1
	.2byte	0x1eb
	.byte	0x15
	.4byte	0x153
	.byte	0x10
	.uleb128 0x12
	.ascii	"CCR\000"
	.byte	0x1
	.2byte	0x1ec
	.byte	0x15
	.4byte	0x153
	.byte	0x14
	.uleb128 0x12
	.ascii	"SHP\000"
	.byte	0x1
	.2byte	0x1ed
	.byte	0x14
	.4byte	0x158
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1ee
	.byte	0x15
	.4byte	0x153
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1ef
	.byte	0x15
	.4byte	0x153
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1f0
	.byte	0x15
	.4byte	0x153
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1f1
	.byte	0x15
	.4byte	0x153
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x1f2
	.byte	0x15
	.4byte	0x153
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x1f3
	.byte	0x15
	.4byte	0x153
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x1f4
	.byte	0x15
	.4byte	0x153
	.byte	0x3c
	.uleb128 0x12
	.ascii	"PFR\000"
	.byte	0x1
	.2byte	0x1f5
	.byte	0x1b
	.4byte	0x15d
	.byte	0x40
	.uleb128 0x12
	.ascii	"DFR\000"
	.byte	0x1
	.2byte	0x1f6
	.byte	0x1b
	.4byte	0x14e
	.byte	0x48
	.uleb128 0x12
	.ascii	"ADR\000"
	.byte	0x1
	.2byte	0x1f7
	.byte	0x1b
	.4byte	0x14e
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x1f8
	.byte	0x1b
	.4byte	0x162
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x1f9
	.byte	0x1b
	.4byte	0x167
	.byte	0x60
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x1
	.2byte	0x1fa
	.byte	0x12
	.4byte	0x16c
	.byte	0x74
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x1fb
	.byte	0x15
	.4byte	0x153
	.byte	0x88
	.byte	0
	.uleb128 0x6
	.4byte	0x17c
	.uleb128 0x6
	.4byte	0x181
	.uleb128 0x6
	.4byte	0x18d
	.uleb128 0x6
	.4byte	0x19d
	.uleb128 0x6
	.4byte	0x1a2
	.uleb128 0x6
	.4byte	0x1a7
	.uleb128 0x9
	.4byte	0x181
	.4byte	0x17c
	.uleb128 0xa
	.4byte	0x1ac
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.4byte	0x181
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x1ac
	.uleb128 0x9
	.4byte	0x1b3
	.4byte	0x19d
	.uleb128 0xa
	.4byte	0x1ac
	.byte	0xb
	.byte	0
	.uleb128 0x7
	.4byte	0x1b8
	.uleb128 0x7
	.4byte	0x1c8
	.uleb128 0x7
	.4byte	0x1d8
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x6
	.4byte	0x1e8
	.uleb128 0x9
	.4byte	0x14e
	.4byte	0x1c8
	.uleb128 0xa
	.4byte	0x1ac
	.byte	0x1
	.byte	0
	.uleb128 0x9
	.4byte	0x14e
	.4byte	0x1d8
	.uleb128 0xa
	.4byte	0x1ac
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	0x14e
	.4byte	0x1e8
	.uleb128 0xa
	.4byte	0x1ac
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.4byte	.LASF113
	.byte	0x5
	.byte	0x30
	.byte	0x17
	.4byte	0x1f4
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF114
	.byte	0
	.file 6 "C:\\nRF5_SDK_15.0.0_a53641a\\modules\\nrfx\\mdk\\system_nrf52.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x374
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x17
	.4byte	.LASF145
	.byte	0xc
	.4byte	.LASF146
	.4byte	.LASF147
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.4byte	.LASF115
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.4byte	.LASF114
	.uleb128 0xb
	.byte	0x2
	.byte	0x5
	.4byte	.LASF116
	.uleb128 0xb
	.byte	0x2
	.byte	0x7
	.4byte	.LASF117
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x5
	.byte	0x37
	.byte	0x14
	.4byte	0x56
	.uleb128 0x6
	.4byte	0x45
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x5
	.byte	0x38
	.byte	0x16
	.4byte	0x69
	.uleb128 0xb
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.4byte	.LASF118
	.uleb128 0xb
	.byte	0x8
	.byte	0x7
	.4byte	.LASF119
	.uleb128 0x18
	.4byte	.LASF120
	.byte	0x1
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
	.uleb128 0x18
	.4byte	.LASF121
	.byte	0x1
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
	.uleb128 0x19
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x744
	.byte	0x19
	.4byte	0x51
	.uleb128 0x1a
	.4byte	.LASF123
	.byte	0x6
	.byte	0x21
	.byte	0x11
	.4byte	0x5d
	.uleb128 0x18
	.4byte	.LASF124
	.byte	0x4
	.2byte	0x1f0
	.byte	0x3
	.byte	0xa7
	.byte	0xf8
	.byte	0xac
	.byte	0xd9
	.byte	0x7b
	.byte	0xb1
	.byte	0xfd
	.byte	0x9c
	.uleb128 0x18
	.4byte	.LASF125
	.byte	0x4
	.2byte	0x20b
	.byte	0x3
	.byte	0xba
	.byte	0xa7
	.byte	0x37
	.byte	0xad
	.byte	0xe2
	.byte	0xdd
	.byte	0x39
	.byte	0xe
	.uleb128 0x18
	.4byte	.LASF126
	.byte	0x4
	.2byte	0x24b
	.byte	0x3
	.byte	0x2d
	.byte	0xea
	.byte	0x73
	.byte	0x6b
	.byte	0xef
	.byte	0x59
	.byte	0xc9
	.byte	0xa9
	.uleb128 0x18
	.4byte	.LASF127
	.byte	0x4
	.2byte	0x275
	.byte	0x3
	.byte	0xbe
	.byte	0x2c
	.byte	0xa4
	.byte	0xf5
	.byte	0x74
	.byte	0x78
	.byte	0x28
	.byte	0x5a
	.uleb128 0x18
	.4byte	.LASF128
	.byte	0x4
	.2byte	0x552
	.byte	0x3
	.byte	0x5f
	.byte	0x1f
	.byte	0xab
	.byte	0x36
	.byte	0xa1
	.byte	0x18
	.byte	0x7e
	.byte	0xaf
	.uleb128 0x18
	.4byte	.LASF129
	.byte	0x4
	.2byte	0x6f9
	.byte	0x3
	.byte	0x37
	.byte	0x71
	.byte	0x5f
	.byte	0xe5
	.byte	0xf3
	.byte	0x20
	.byte	0x56
	.byte	0xa
	.uleb128 0x1b
	.4byte	0xad
	.byte	0x3
	.byte	0x35
	.byte	0xe
	.uleb128 0x5
	.byte	0x3
	.4byte	SystemCoreClock
	.uleb128 0x1c
	.4byte	.LASF131
	.byte	0x3
	.2byte	0x169
	.byte	0xc
	.4byte	0x144
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xb
	.byte	0x1
	.byte	0x2
	.4byte	.LASF130
	.uleb128 0x1c
	.4byte	.LASF132
	.byte	0x3
	.2byte	0x157
	.byte	0xc
	.4byte	0x144
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF133
	.byte	0x3
	.2byte	0x145
	.byte	0xc
	.4byte	0x144
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF134
	.byte	0x3
	.2byte	0x139
	.byte	0xc
	.4byte	0x144
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF135
	.byte	0x3
	.2byte	0x12e
	.byte	0xc
	.4byte	0x144
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF136
	.byte	0x3
	.2byte	0x123
	.byte	0xc
	.4byte	0x144
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF137
	.byte	0x3
	.2byte	0x112
	.byte	0xc
	.4byte	0x144
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF138
	.byte	0x3
	.2byte	0x107
	.byte	0xc
	.4byte	0x144
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF139
	.byte	0x3
	.byte	0xf6
	.byte	0xc
	.4byte	0x144
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0x3
	.byte	0xeb
	.byte	0xc
	.4byte	0x144
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1d
	.4byte	.LASF141
	.byte	0x3
	.byte	0xda
	.byte	0xc
	.4byte	0x144
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1e
	.4byte	.LASF148
	.byte	0x3
	.byte	0x3d
	.byte	0x6
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ed
	.uleb128 0x1f
	.4byte	0x359
	.4byte	.LBI18
	.byte	.LVU328
	.4byte	.LBB18
	.4byte	.LBE18-.LBB18
	.byte	0x3
	.byte	0xb1
	.byte	0x9
	.uleb128 0x1f
	.4byte	0x363
	.4byte	.LBI20
	.byte	.LVU331
	.4byte	.LBB20
	.4byte	.LBE20-.LBB20
	.byte	0x3
	.byte	0xb2
	.byte	0x9
	.uleb128 0x20
	.4byte	.LVL0
	.4byte	0x218
	.uleb128 0x20
	.4byte	.LVL1
	.4byte	0x202
	.uleb128 0x20
	.4byte	.LVL2
	.4byte	0x1ec
	.uleb128 0x20
	.4byte	.LVL3
	.4byte	0x1d5
	.uleb128 0x20
	.4byte	.LVL4
	.4byte	0x1be
	.uleb128 0x20
	.4byte	.LVL5
	.4byte	0x1a7
	.uleb128 0x20
	.4byte	.LVL6
	.4byte	0x190
	.uleb128 0x20
	.4byte	.LVL7
	.4byte	0x179
	.uleb128 0x20
	.4byte	.LVL8
	.4byte	0x162
	.uleb128 0x20
	.4byte	.LVL9
	.4byte	0x14b
	.uleb128 0x20
	.4byte	.LVL10
	.4byte	0x12d
	.uleb128 0x20
	.4byte	.LVL11
	.4byte	0x2ed
	.uleb128 0x20
	.4byte	.LVL12
	.4byte	0x2ff
	.uleb128 0x20
	.4byte	.LVL13
	.4byte	0x2ff
	.byte	0
	.uleb128 0x21
	.4byte	.LASF149
	.byte	0x3
	.byte	0x38
	.byte	0x6
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x22
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x6fe
	.byte	0x14
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x359
	.uleb128 0x23
	.4byte	0x359
	.4byte	.LBI12
	.byte	.LVU2
	.4byte	.LBB12
	.4byte	.LBE12-.LBB12
	.byte	0x1
	.2byte	0x700
	.byte	0x3
	.uleb128 0x23
	.4byte	0x359
	.4byte	.LBI14
	.byte	.LVU10
	.4byte	.LBB14
	.4byte	.LBE14-.LBB14
	.byte	0x1
	.2byte	0x705
	.byte	0x3
	.uleb128 0x23
	.4byte	0x36d
	.4byte	.LBI16
	.byte	.LVU14
	.4byte	.LBB16
	.4byte	.LBE16-.LBB16
	.byte	0x1
	.2byte	0x709
	.byte	0x5
	.byte	0
	.uleb128 0x24
	.4byte	.LASF142
	.byte	0x2
	.2byte	0x1ab
	.byte	0x33
	.byte	0x3
	.uleb128 0x24
	.4byte	.LASF143
	.byte	0x2
	.2byte	0x1a0
	.byte	0x33
	.byte	0x3
	.uleb128 0x24
	.4byte	.LASF144
	.byte	0x2
	.2byte	0x175
	.byte	0x33
	.byte	0x3
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xd
	.byte	0
	.uleb128 0x49
	.uleb128 0x20
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x17
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
	.uleb128 0xe
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x24
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
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x11b
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x378
	.4byte	0x11f
	.ascii	"SystemCoreClock\000"
	.4byte	0x12d
	.ascii	"errata_182\000"
	.4byte	0x14b
	.ascii	"errata_136\000"
	.4byte	0x162
	.ascii	"errata_108\000"
	.4byte	0x179
	.ascii	"errata_66\000"
	.4byte	0x190
	.ascii	"errata_57\000"
	.4byte	0x1a7
	.ascii	"errata_37\000"
	.4byte	0x1be
	.ascii	"errata_36\000"
	.4byte	0x1d5
	.ascii	"errata_32\000"
	.4byte	0x1ec
	.ascii	"errata_31\000"
	.4byte	0x202
	.ascii	"errata_16\000"
	.4byte	0x218
	.ascii	"errata_12\000"
	.4byte	0x22e
	.ascii	"SystemInit\000"
	.4byte	0x2ed
	.ascii	"SystemCoreClockUpdate\000"
	.4byte	0x2ff
	.ascii	"NVIC_SystemReset\000"
	.4byte	0x359
	.ascii	"__DSB\000"
	.4byte	0x363
	.ascii	"__ISB\000"
	.4byte	0x36d
	.ascii	"__NOP\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x14c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x378
	.4byte	0x29
	.ascii	"signed char\000"
	.4byte	0x30
	.ascii	"unsigned char\000"
	.4byte	0x37
	.ascii	"short int\000"
	.4byte	0x3e
	.ascii	"short unsigned int\000"
	.4byte	0x56
	.ascii	"int\000"
	.4byte	0x45
	.ascii	"int32_t\000"
	.4byte	0x69
	.ascii	"unsigned int\000"
	.4byte	0x5d
	.ascii	"uint32_t\000"
	.4byte	0x70
	.ascii	"long long int\000"
	.4byte	0x77
	.ascii	"long long unsigned int\000"
	.4byte	0x7e
	.ascii	"SCB_Type\000"
	.4byte	0x8f
	.ascii	"CoreDebug_Type\000"
	.4byte	0xb9
	.ascii	"NRF_FICR_Type\000"
	.4byte	0xca
	.ascii	"NRF_UICR_Type\000"
	.4byte	0xdb
	.ascii	"NRF_POWER_Type\000"
	.4byte	0xec
	.ascii	"NRF_CLOCK_Type\000"
	.4byte	0xfd
	.ascii	"NRF_TEMP_Type\000"
	.4byte	0x10e
	.ascii	"NRF_NVMC_Type\000"
	.4byte	0x144
	.ascii	"_Bool\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LFB126
	.4byte	.LFE126
	.4byte	.LFB127
	.4byte	.LFE127
	.4byte	.LFB128
	.4byte	.LFE128
	.4byte	.LFB129
	.4byte	.LFE129
	.4byte	.LFB130
	.4byte	.LFE130
	.4byte	.LFB131
	.4byte	.LFE131
	.4byte	.LFB132
	.4byte	.LFE132
	.4byte	.LFB133
	.4byte	.LFE133
	.4byte	.LFB134
	.4byte	.LFE134
	.4byte	.LFB135
	.4byte	.LFE135
	.4byte	.LFB136
	.4byte	.LFE136
	.4byte	.LFB124
	.4byte	.LFE124
	.4byte	.LFB125
	.4byte	.LFE125
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0x4
	.file 7 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x7
	.byte	0x4
	.file 8 "C:\\nRF5_SDK_15.0.0_a53641a\\modules\\nrfx\\mdk\\nrf.h"
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x1
	.file 9 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x9
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.file 10 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0xa
	.byte	0x4
	.file 11 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.file 12 "C:\\nRF5_SDK_15.0.0_a53641a\\modules\\nrfx\\mdk\\nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0xc
	.byte	0x4
	.file 13 "C:\\nRF5_SDK_15.0.0_a53641a\\modules\\nrfx\\mdk\\nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0xd
	.byte	0x4
	.file 14 "C:\\nRF5_SDK_15.0.0_a53641a\\modules\\nrfx\\mdk\\nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0xe
	.byte	0x4
	.file 15 "C:\\nRF5_SDK_15.0.0_a53641a\\modules\\nrfx\\mdk\\compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF112:
	.ascii	"CPACR\000"
.LASF129:
	.ascii	"NRF_NVMC_Type\000"
.LASF75:
	.ascii	"CODEPAGESIZE\000"
.LASF147:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF39:
	.ascii	"LFCLKSTAT\000"
.LASF85:
	.ascii	"POWERSET\000"
.LASF13:
	.ascii	"unsigned int\000"
.LASF98:
	.ascii	"DEMCR\000"
.LASF48:
	.ascii	"EVENTS_POFWARN\000"
.LASF26:
	.ascii	"TASKS_HFCLKSTOP\000"
.LASF106:
	.ascii	"DFSR\000"
.LASF10:
	.ascii	"IHIT\000"
.LASF143:
	.ascii	"__ISB\000"
.LASF110:
	.ascii	"MMFR\000"
.LASF141:
	.ascii	"errata_12\000"
.LASF140:
	.ascii	"errata_16\000"
.LASF3:
	.ascii	"CONFIG\000"
.LASF18:
	.ascii	"EVENTS_DATARDY\000"
.LASF86:
	.ascii	"POWERCLR\000"
.LASF145:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF12:
	.ascii	"uint32_t\000"
.LASF133:
	.ascii	"errata_108\000"
.LASF65:
	.ascii	"UNUSED0\000"
.LASF66:
	.ascii	"UNUSED1\000"
.LASF67:
	.ascii	"UNUSED2\000"
.LASF68:
	.ascii	"UNUSED3\000"
.LASF77:
	.ascii	"DEVICEID\000"
.LASF36:
	.ascii	"HFCLKRUN\000"
.LASF28:
	.ascii	"TASKS_LFCLKSTOP\000"
.LASF29:
	.ascii	"TASKS_CAL\000"
.LASF119:
	.ascii	"long long unsigned int\000"
.LASF44:
	.ascii	"RESERVED7\000"
.LASF139:
	.ascii	"errata_31\000"
.LASF138:
	.ascii	"errata_32\000"
.LASF107:
	.ascii	"MMFAR\000"
.LASF137:
	.ascii	"errata_36\000"
.LASF136:
	.ascii	"errata_37\000"
.LASF14:
	.ascii	"ERASEPCR1\000"
.LASF5:
	.ascii	"ERASEPCR0\000"
.LASF80:
	.ascii	"INFO\000"
.LASF74:
	.ascii	"NFCPINS\000"
.LASF150:
	.ascii	"NVIC_SystemReset\000"
.LASF99:
	.ascii	"CPUID\000"
.LASF27:
	.ascii	"TASKS_LFCLKSTART\000"
.LASF130:
	.ascii	"_Bool\000"
.LASF4:
	.ascii	"ERASEALL\000"
.LASF17:
	.ascii	"TASKS_STOP\000"
.LASF104:
	.ascii	"CFSR\000"
.LASF135:
	.ascii	"errata_57\000"
.LASF105:
	.ascii	"HFSR\000"
.LASF132:
	.ascii	"errata_136\000"
.LASF43:
	.ascii	"CTIV\000"
.LASF11:
	.ascii	"IMISS\000"
.LASF102:
	.ascii	"AIRCR\000"
.LASF49:
	.ascii	"EVENTS_SLEEPENTER\000"
.LASF25:
	.ascii	"TASKS_HFCLKSTART\000"
.LASF16:
	.ascii	"TASKS_START\000"
.LASF57:
	.ascii	"GPREGRET2\000"
.LASF32:
	.ascii	"EVENTS_HFCLKSTARTED\000"
.LASF72:
	.ascii	"PSELRESET\000"
.LASF30:
	.ascii	"TASKS_CTSTART\000"
.LASF113:
	.ascii	"uint8_t\000"
.LASF64:
	.ascii	"POWER_RAM_Type\000"
.LASF134:
	.ascii	"errata_66\000"
.LASF128:
	.ascii	"NRF_TEMP_Type\000"
.LASF118:
	.ascii	"long long int\000"
.LASF103:
	.ascii	"SHCSR\000"
.LASF51:
	.ascii	"RESETREAS\000"
.LASF31:
	.ascii	"TASKS_CTSTOP\000"
.LASF50:
	.ascii	"EVENTS_SLEEPEXIT\000"
.LASF1:
	.ascii	"READY\000"
.LASF69:
	.ascii	"NRFFW\000"
.LASF21:
	.ascii	"TEMP\000"
.LASF56:
	.ascii	"GPREGRET\000"
.LASF83:
	.ascii	"FICR_NFC_Type\000"
.LASF92:
	.ascii	"VARIANT\000"
.LASF127:
	.ascii	"NRF_CLOCK_Type\000"
.LASF146:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\modules\\nrfx\\mdk\\sy"
	.ascii	"stem_nrf52.c\000"
.LASF121:
	.ascii	"CoreDebug_Type\000"
.LASF6:
	.ascii	"ERASEUICR\000"
.LASF142:
	.ascii	"__DSB\000"
.LASF124:
	.ascii	"NRF_FICR_Type\000"
.LASF109:
	.ascii	"AFSR\000"
.LASF38:
	.ascii	"LFCLKRUN\000"
.LASF54:
	.ascii	"POFCON\000"
.LASF123:
	.ascii	"SystemCoreClock\000"
.LASF53:
	.ascii	"SYSTEMOFF\000"
.LASF70:
	.ascii	"NRFHW\000"
.LASF0:
	.ascii	"RESERVED0\000"
.LASF2:
	.ascii	"RESERVED1\000"
.LASF7:
	.ascii	"RESERVED2\000"
.LASF9:
	.ascii	"RESERVED3\000"
.LASF22:
	.ascii	"RESERVED4\000"
.LASF23:
	.ascii	"RESERVED5\000"
.LASF42:
	.ascii	"RESERVED6\000"
.LASF116:
	.ascii	"short int\000"
.LASF55:
	.ascii	"RESERVED8\000"
.LASF59:
	.ascii	"RESERVED9\000"
.LASF8:
	.ascii	"ICACHECNF\000"
.LASF40:
	.ascii	"LFCLKSRCCOPY\000"
.LASF122:
	.ascii	"ITM_RxBuffer\000"
.LASF79:
	.ascii	"DEVICEADDR\000"
.LASF94:
	.ascii	"FLASH\000"
.LASF131:
	.ascii	"errata_182\000"
.LASF78:
	.ascii	"DEVICEADDRTYPE\000"
.LASF73:
	.ascii	"APPROTECT\000"
.LASF120:
	.ascii	"SCB_Type\000"
.LASF108:
	.ascii	"BFAR\000"
.LASF33:
	.ascii	"EVENTS_LFCLKSTARTED\000"
.LASF126:
	.ascii	"NRF_POWER_Type\000"
.LASF62:
	.ascii	"DCDCEN\000"
.LASF101:
	.ascii	"VTOR\000"
.LASF84:
	.ascii	"POWER\000"
.LASF76:
	.ascii	"CODESIZE\000"
.LASF15:
	.ascii	"ERASEPAGE\000"
.LASF100:
	.ascii	"ICSR\000"
.LASF60:
	.ascii	"RAMONB\000"
.LASF52:
	.ascii	"RAMSTATUS\000"
.LASF24:
	.ascii	"int32_t\000"
.LASF82:
	.ascii	"FICR_TEMP_Type\000"
.LASF41:
	.ascii	"LFCLKSRC\000"
.LASF58:
	.ascii	"RAMON\000"
.LASF114:
	.ascii	"unsigned char\000"
.LASF46:
	.ascii	"TASKS_CONSTLAT\000"
.LASF144:
	.ascii	"__NOP\000"
.LASF61:
	.ascii	"RESERVED10\000"
.LASF63:
	.ascii	"RESERVED11\000"
.LASF19:
	.ascii	"INTENSET\000"
.LASF71:
	.ascii	"CUSTOMER\000"
.LASF125:
	.ascii	"NRF_UICR_Type\000"
.LASF95:
	.ascii	"DHCSR\000"
.LASF37:
	.ascii	"HFCLKSTAT\000"
.LASF115:
	.ascii	"signed char\000"
.LASF93:
	.ascii	"PACKAGE\000"
.LASF117:
	.ascii	"short unsigned int\000"
.LASF47:
	.ascii	"TASKS_LOWPWR\000"
.LASF45:
	.ascii	"TRACECONFIG\000"
.LASF81:
	.ascii	"FICR_INFO_Type\000"
.LASF111:
	.ascii	"ISAR\000"
.LASF35:
	.ascii	"EVENTS_CTTO\000"
.LASF96:
	.ascii	"DCRSR\000"
.LASF91:
	.ascii	"PART\000"
.LASF148:
	.ascii	"SystemInit\000"
.LASF20:
	.ascii	"INTENCLR\000"
.LASF149:
	.ascii	"SystemCoreClockUpdate\000"
.LASF97:
	.ascii	"DCRDR\000"
.LASF34:
	.ascii	"EVENTS_DONE\000"
.LASF87:
	.ascii	"TAGHEADER0\000"
.LASF88:
	.ascii	"TAGHEADER1\000"
.LASF89:
	.ascii	"TAGHEADER2\000"
.LASF90:
	.ascii	"TAGHEADER3\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
