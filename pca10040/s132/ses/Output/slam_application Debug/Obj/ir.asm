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
	.file	"ir.c"
	.text
.Ltext0:
	.section	.rodata.saadc_event_handler.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\drivers\\ir.c\000"
	.section	.text.saadc_event_handler,"ax",%progbits
	.align	1
	.global	saadc_event_handler
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	saadc_event_handler, %function
saadc_event_handler:
.LVL0:
.LFB235:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\ir.c"
	.loc 1 39 59 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 40 2 view .LVU1
	.loc 1 41 2 view .LVU2
	.loc 1 41 17 is_stmt 0 view .LVU3
	ldrb	r3, [r0]	@ zero_extendqisi2
	.loc 1 41 2 view .LVU4
	cbz	r3, .L2
	cmp	r3, #2
	beq	.L3
	bx	lr
.L2:
	.loc 1 39 59 view .LVU5
	push	{r4, lr}
.LCFI0:
	mov	r4, r0
.LBB2:
	.loc 1 43 4 is_stmt 1 view .LVU6
	.loc 1 43 10 is_stmt 0 view .LVU7
	movs	r1, #4
	ldr	r0, [r0, #4]
.LVL1:
	.loc 1 43 10 view .LVU8
	bl	nrfx_saadc_buffer_convert
.LVL2:
	.loc 1 45 4 is_stmt 1 view .LVU9
.LBB3:
	.loc 1 45 9 view .LVU10
	.loc 1 45 48 view .LVU11
	.loc 1 45 51 is_stmt 0 view .LVU12
	cbnz	r0, .L10
.LVL3:
.L5:
	.loc 1 45 228 is_stmt 1 discriminator 3 view .LVU13
.LBE3:
	.loc 1 45 243 discriminator 3 view .LVU14
	.loc 1 47 4 discriminator 3 view .LVU15
	.loc 1 48 4 discriminator 3 view .LVU16
	.loc 1 49 4 discriminator 3 view .LVU17
	.loc 1 49 41 is_stmt 0 discriminator 3 view .LVU18
	ldr	r3, [r4, #4]
	.loc 1 49 50 discriminator 3 view .LVU19
	ldrh	r0, [r3]
	.loc 1 50 72 discriminator 3 view .LVU20
	ldrh	r2, [r3, #2]
	.loc 1 49 54 discriminator 3 view .LVU21
	add	r0, r0, r2
	.loc 1 51 72 discriminator 3 view .LVU22
	ldrh	r2, [r3, #4]
	.loc 1 50 76 discriminator 3 view .LVU23
	uxtah	r0, r2, r0
	.loc 1 52 72 discriminator 3 view .LVU24
	ldrh	r3, [r3, #6]
	.loc 1 49 13 discriminator 3 view .LVU25
	uxtah	r0, r3, r0
.LVL4:
	.loc 1 53 4 is_stmt 1 discriminator 3 view .LVU26
	ldr	r3, .L11
	ldr	r3, [r3]
	uxth	r0, r0
	.loc 1 53 4 is_stmt 0 discriminator 3 view .LVU27
	blx	r3
.LVL5:
	.loc 1 55 4 is_stmt 1 discriminator 3 view .LVU28
.LBE2:
	.loc 1 71 1 is_stmt 0 discriminator 3 view .LVU29
	pop	{r4, pc}
.LVL6:
.L10:
.LBB5:
.LBB4:
	.loc 1 45 85 is_stmt 1 discriminator 1 view .LVU30
	.loc 1 45 90 discriminator 1 view .LVU31
	ldr	r2, .L11+4
	movs	r1, #45
	bl	app_error_handler
.LVL7:
	.loc 1 45 90 is_stmt 0 discriminator 1 view .LVU32
	b	.L5
.LVL8:
.L3:
.LCFI1:
	.loc 1 45 90 discriminator 1 view .LVU33
.LBE4:
	.loc 1 63 4 is_stmt 1 view .LVU34
	.loc 1 63 38 is_stmt 0 view .LVU35
	ldr	r3, .L11+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 63 7 view .LVU36
	cbnz	r3, .L6
	.loc 1 64 5 is_stmt 1 view .LVU37
	.loc 1 64 35 is_stmt 0 view .LVU38
	ldr	r3, .L11+8
	movs	r2, #1
	strb	r2, [r3]
	bx	lr
.L6:
	.loc 1 66 5 is_stmt 1 view .LVU39
	.loc 1 66 27 is_stmt 0 view .LVU40
	ldr	r3, .L11+12
	movs	r2, #1
	strb	r2, [r3]
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LANCHOR0
	.word	.LC0
	.word	.LANCHOR1
	.word	.LANCHOR2
.LBE5:
.LFE235:
	.size	saadc_event_handler, .-saadc_event_handler
	.section	.text.ir_init,"ax",%progbits
	.align	1
	.global	ir_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ir_init, %function
ir_init:
.LFB236:
	.loc 1 73 15 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI2:
	.loc 1 74 2 view .LVU42
	.loc 1 78 2 view .LVU43
	.loc 1 79 2 view .LVU44
	.loc 1 79 24 is_stmt 0 view .LVU45
	ldr	r1, .L20
	movs	r2, #2
	strb	r2, [r1, #2]
	.loc 1 80 2 is_stmt 1 view .LVU46
	.loc 1 80 29 is_stmt 0 view .LVU47
	movs	r3, #1
	strb	r3, [r1, #3]
	.loc 1 83 2 is_stmt 1 view .LVU48
	.loc 1 84 2 view .LVU49
	.loc 1 84 24 is_stmt 0 view .LVU50
	ldr	r1, .L20+4
	strb	r2, [r1, #2]
	.loc 1 85 2 is_stmt 1 view .LVU51
	.loc 1 85 29 is_stmt 0 view .LVU52
	strb	r3, [r1, #3]
	.loc 1 88 2 is_stmt 1 view .LVU53
	.loc 1 89 2 view .LVU54
	.loc 1 89 24 is_stmt 0 view .LVU55
	ldr	r1, .L20+8
	strb	r2, [r1, #2]
	.loc 1 90 2 is_stmt 1 view .LVU56
	.loc 1 90 29 is_stmt 0 view .LVU57
	strb	r3, [r1, #3]
	.loc 1 93 2 is_stmt 1 view .LVU58
	.loc 1 94 2 view .LVU59
	.loc 1 94 24 is_stmt 0 view .LVU60
	ldr	r1, .L20+12
	strb	r2, [r1, #2]
	.loc 1 95 2 is_stmt 1 view .LVU61
	.loc 1 95 29 is_stmt 0 view .LVU62
	strb	r3, [r1, #3]
	.loc 1 109 2 is_stmt 1 view .LVU63
	ldr	r1, .L20+16
	ldr	r0, .L20+20
	bl	nrfx_saadc_init
.LVL9:
	.loc 1 110 2 view .LVU64
.LBB6:
	.loc 1 110 7 view .LVU65
	.loc 1 110 46 view .LVU66
	.loc 1 110 227 view .LVU67
.LBE6:
	.loc 1 110 242 view .LVU68
	.loc 1 112 2 view .LVU69
	ldr	r1, .L20
	movs	r0, #0
	bl	nrfx_saadc_channel_init
.LVL10:
	.loc 1 113 2 view .LVU70
.LBB7:
	.loc 1 113 7 view .LVU71
	.loc 1 113 46 view .LVU72
	.loc 1 113 227 view .LVU73
.LBE7:
	.loc 1 113 242 view .LVU74
	.loc 1 115 2 view .LVU75
	ldr	r1, .L20+4
	movs	r0, #1
	bl	nrfx_saadc_channel_init
.LVL11:
	.loc 1 116 2 view .LVU76
.LBB8:
	.loc 1 116 7 view .LVU77
	.loc 1 116 46 view .LVU78
	.loc 1 116 227 view .LVU79
.LBE8:
	.loc 1 116 242 view .LVU80
	.loc 1 118 2 view .LVU81
	ldr	r1, .L20+8
	movs	r0, #2
	bl	nrfx_saadc_channel_init
.LVL12:
	.loc 1 119 2 view .LVU82
.LBB9:
	.loc 1 119 7 view .LVU83
	.loc 1 119 46 view .LVU84
	.loc 1 119 227 view .LVU85
.LBE9:
	.loc 1 119 242 view .LVU86
	.loc 1 122 2 view .LVU87
	ldr	r1, .L20+12
	movs	r0, #3
	bl	nrfx_saadc_channel_init
.LVL13:
	.loc 1 123 2 view .LVU88
.LBB10:
	.loc 1 123 7 view .LVU89
	.loc 1 123 46 view .LVU90
	.loc 1 123 46 is_stmt 0 view .LVU91
.LBE10:
	.loc 1 136 1 view .LVU92
	pop	{r3, pc}
.L21:
	.align	2
.L20:
	.word	.LANCHOR3
	.word	.LANCHOR4
	.word	.LANCHOR5
	.word	.LANCHOR6
	.word	saadc_event_handler
	.word	.LANCHOR7
.LFE236:
	.size	ir_init, .-ir_init
	.section	.text.ir_read,"ax",%progbits
	.align	1
	.global	ir_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ir_read, %function
ir_read:
.LVL14:
.LFB237:
	.loc 1 139 49 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 139 49 is_stmt 0 view .LVU94
	push	{r4, lr}
.LCFI3:
	.loc 1 140 2 is_stmt 1 view .LVU95
	.loc 1 142 2 view .LVU96
	.loc 1 142 5 is_stmt 0 view .LVU97
	ldr	r3, .L29
	str	r1, [r3]
	.loc 1 144 2 is_stmt 1 view .LVU98
.LBB11:
	.loc 1 144 7 view .LVU99
.LVL15:
	.loc 1 144 11 is_stmt 0 view .LVU100
	movs	r4, #0
	.loc 1 144 2 view .LVU101
	b	.L23
.LVL16:
.L28:
.LBB12:
	.loc 1 147 84 is_stmt 1 discriminator 1 view .LVU102
	.loc 1 147 89 discriminator 1 view .LVU103
	ldr	r2, .L29+4
	movs	r1, #147
	bl	app_error_handler
.LVL17:
.L24:
	.loc 1 147 228 discriminator 3 view .LVU104
.LBE12:
	.loc 1 147 243 discriminator 3 view .LVU105
	.loc 1 144 25 discriminator 3 view .LVU106
	.loc 1 144 26 is_stmt 0 discriminator 3 view .LVU107
	adds	r4, r4, #1
.LVL18:
.L23:
	.loc 1 144 18 is_stmt 1 discriminator 2 view .LVU108
	.loc 1 144 2 is_stmt 0 discriminator 2 view .LVU109
	cmp	r4, #3
	bgt	.L27
	.loc 1 145 3 is_stmt 1 view .LVU110
	.loc 1 145 9 is_stmt 0 view .LVU111
	bl	nrfx_saadc_sample
.LVL19:
	.loc 1 147 3 is_stmt 1 view .LVU112
.LBB13:
	.loc 1 147 8 view .LVU113
	.loc 1 147 47 view .LVU114
	.loc 1 147 50 is_stmt 0 view .LVU115
	cmp	r0, #0
	beq	.L24
	b	.L28
.LVL20:
.L27:
	.loc 1 147 50 view .LVU116
.LBE13:
.LBE11:
	.loc 1 149 1 view .LVU117
	pop	{r4, pc}
.LVL21:
.L30:
	.loc 1 149 1 view .LVU118
	.align	2
.L29:
	.word	.LANCHOR0
	.word	.LC0
.LFE237:
	.size	ir_read, .-ir_read
	.section	.text.ir_read_blocking,"ax",%progbits
	.align	1
	.global	ir_read_blocking
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ir_read_blocking, %function
ir_read_blocking:
.LVL22:
.LFB238:
	.loc 1 151 47 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 151 47 is_stmt 0 view .LVU120
	push	{r4, r5, r6, lr}
.LCFI4:
	mov	r6, r0
	.loc 1 152 2 is_stmt 1 view .LVU121
	.loc 1 153 2 view .LVU122
.LVL23:
	.loc 1 157 2 view .LVU123
	.loc 1 158 2 view .LVU124
	.loc 1 159 2 view .LVU125
.LBB14:
	.loc 1 159 7 view .LVU126
	.loc 1 159 11 is_stmt 0 view .LVU127
	movs	r4, #0
.LBE14:
	.loc 1 158 6 view .LVU128
	mov	r5, r4
.LBB17:
	.loc 1 159 2 view .LVU129
	b	.L32
.LVL24:
.L38:
.LBB15:
	.loc 1 161 98 is_stmt 1 discriminator 1 view .LVU130
	.loc 1 161 103 discriminator 1 view .LVU131
	ldr	r2, .L40
	movs	r1, #161
	bl	app_error_handler
.LVL25:
.L33:
	.loc 1 161 242 discriminator 3 view .LVU132
.LBE15:
	.loc 1 161 257 discriminator 3 view .LVU133
	.loc 1 162 3 discriminator 3 view .LVU134
	.loc 1 162 13 is_stmt 0 discriminator 3 view .LVU135
	ldr	r3, .L40+4
	ldrsh	r3, [r3, r4, lsl #1]
	.loc 1 162 7 discriminator 3 view .LVU136
	add	r5, r5, r3
.LVL26:
	.loc 1 159 25 is_stmt 1 discriminator 3 view .LVU137
	.loc 1 159 26 is_stmt 0 discriminator 3 view .LVU138
	adds	r4, r4, #1
.LVL27:
.L32:
	.loc 1 159 18 is_stmt 1 discriminator 2 view .LVU139
	.loc 1 159 2 is_stmt 0 discriminator 2 view .LVU140
	cmp	r4, #3
	bgt	.L37
	.loc 1 160 3 is_stmt 1 view .LVU141
	.loc 1 160 9 is_stmt 0 view .LVU142
	ldr	r1, .L40+4
	add	r1, r1, r4, lsl #1
	mov	r0, r6
	bl	nrfx_saadc_sample_convert
.LVL28:
	.loc 1 161 17 is_stmt 1 view .LVU143
.LBB16:
	.loc 1 161 22 view .LVU144
	.loc 1 161 61 view .LVU145
	.loc 1 161 64 is_stmt 0 view .LVU146
	cmp	r0, #0
	beq	.L33
	b	.L38
.LVL29:
.L37:
	.loc 1 161 64 view .LVU147
.LBE16:
.LBE17:
	.loc 1 165 2 is_stmt 1 view .LVU148
	.loc 1 165 24 is_stmt 0 view .LVU149
	mov	r0, r5
	cmp	r5, #0
	blt	.L39
.L35:
	.loc 1 166 1 view .LVU150
	ubfx	r0, r0, #2, #16
	pop	{r4, r5, r6, pc}
.LVL30:
.L39:
	.loc 1 165 24 view .LVU151
	adds	r0, r5, #3
.LVL31:
	.loc 1 165 24 view .LVU152
	b	.L35
.L41:
	.align	2
.L40:
	.word	.LC0
	.word	.LANCHOR8
.LFE238:
	.size	ir_read_blocking, .-ir_read_blocking
	.section	.rodata.ir_calibrate.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"nrfx_saadc_calibration_offset() failed.\000"
	.section	.text.ir_calibrate,"ax",%progbits
	.align	1
	.global	ir_calibrate
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ir_calibrate, %function
ir_calibrate:
.LFB239:
	.loc 1 168 21 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI5:
	.loc 1 169 2 view .LVU154
	.loc 1 169 6 is_stmt 0 view .LVU155
	bl	nrfx_saadc_calibrate_offset
.LVL32:
	.loc 1 169 5 view .LVU156
	cbnz	r0, .L46
.L43:
	.loc 1 174 32 is_stmt 1 discriminator 1 view .LVU157
	.loc 1 174 7 discriminator 1 view .LVU158
	.loc 1 174 8 is_stmt 0 discriminator 1 view .LVU159
	ldr	r3, .L47
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 174 7 discriminator 1 view .LVU160
	cmp	r3, #0
	beq	.L43
	.loc 1 174 33 is_stmt 1 discriminator 2 view .LVU161
	.loc 1 175 2 discriminator 2 view .LVU162
	.loc 1 175 24 is_stmt 0 discriminator 2 view .LVU163
	ldr	r3, .L47
	movs	r2, #0
	strb	r2, [r3]
.L42:
	.loc 1 176 1 view .LVU164
	pop	{r3, pc}
.L46:
	.loc 1 170 3 is_stmt 1 discriminator 3 view .LVU165
	.loc 1 170 76 discriminator 3 view .LVU166
	.loc 1 170 131 discriminator 3 view .LVU167
	.loc 1 170 212 is_stmt 0 discriminator 3 view .LVU168
	ldr	r3, .L47+4
	ldrh	r0, [r3]
	.loc 1 170 223 discriminator 3 view .LVU169
	lsls	r0, r0, #16
	.loc 1 170 131 discriminator 3 view .LVU170
	ldr	r1, .L47+8
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL33:
	.loc 1 170 278 is_stmt 1 discriminator 3 view .LVU171
	.loc 1 171 3 discriminator 3 view .LVU172
	b	.L42
.L48:
	.align	2
.L47:
	.word	.LANCHOR2
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC1
.LFE239:
	.size	ir_calibrate, .-ir_calibrate
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.global	__aeabi_dcmplt
	.global	__aeabi_d2uiz
	.section	.text.ui8DistSens_readCM,"ax",%progbits
	.align	1
	.global	ui8DistSens_readCM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ui8DistSens_readCM, %function
ui8DistSens_readCM:
.LVL34:
.LFB240:
	.loc 1 178 47 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 178 47 is_stmt 0 view .LVU174
	push	{r3, lr}
.LCFI6:
	vpush.64	{d8}
.LCFI7:
	.loc 1 179 7 is_stmt 1 view .LVU175
	.loc 1 179 30 is_stmt 0 view .LVU176
	bl	ir_read_blocking
.LVL35:
	.loc 1 180 7 is_stmt 1 view .LVU177
	.loc 1 180 26 is_stmt 0 view .LVU178
	bl	__aeabi_i2d
.LVL36:
	.loc 1 180 26 view .LVU179
	adr	r3, .L57+12
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL37:
	vmov	d8, r0, r1
	vldr.64	d1, .L57
	vmov	d0, r0, r1
	bl	pow
.LVL38:
	bl	ceil
.LVL39:
	vmov	r0, r1, d0
	.loc 1 180 14 view .LVU180
	movs	r2, #0
	ldr	r3, .L57+8
	bl	__aeabi_dcmplt
.LVL40:
	cbnz	r0, .L56
	movs	r0, #80
.L50:
	.loc 1 181 1 discriminator 4 view .LVU181
	vldm	sp!, {d8}
.LCFI8:
	pop	{r3, pc}
.L56:
.LCFI9:
	.loc 1 180 74 discriminator 1 view .LVU182
	vldr.64	d1, .L57
	vmov.f32	s0, s16
	vmov.f32	s1, s17
	bl	pow
.LVL41:
	bl	ceil
.LVL42:
	vmov	r0, r1, d0
	.loc 1 180 14 discriminator 1 view .LVU183
	bl	__aeabi_d2uiz
.LVL43:
	uxtb	r0, r0
	b	.L50
.L58:
	.align	3
.L57:
	.word	-1717986918
	.word	-1074685543
	.word	1079246848
	.word	0
	.word	1087356160
.LFE240:
	.size	ui8DistSens_readCM, .-ui8DistSens_readCM
	.global	__aeabi_dmul
	.global	__aeabi_d2iz
	.section	.text.i16DistSens_readMM,"ax",%progbits
	.align	1
	.global	i16DistSens_readMM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	i16DistSens_readMM, %function
i16DistSens_readMM:
.LVL44:
.LFB241:
	.loc 1 183 47 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 183 47 is_stmt 0 view .LVU185
	push	{r3, lr}
.LCFI10:
	vpush.64	{d8}
.LCFI11:
	.loc 1 184 7 is_stmt 1 view .LVU186
	.loc 1 184 30 is_stmt 0 view .LVU187
	bl	ir_read_blocking
.LVL45:
	.loc 1 185 7 is_stmt 1 view .LVU188
	.loc 1 185 26 is_stmt 0 view .LVU189
	bl	__aeabi_i2d
.LVL46:
	.loc 1 185 26 view .LVU190
	adr	r3, .L67+16
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL47:
	vmov	d8, r0, r1
	vldr.64	d1, .L67
	vmov	d0, r0, r1
	bl	pow
.LVL48:
	bl	ceil
.LVL49:
	vmov	r0, r1, d0
	.loc 1 185 62 view .LVU191
	movs	r2, #0
	ldr	r3, .L67+8
	bl	__aeabi_dmul
.LVL50:
	.loc 1 185 14 view .LVU192
	movs	r2, #0
	ldr	r3, .L67+12
	bl	__aeabi_dcmplt
.LVL51:
	cbnz	r0, .L66
	mov	r0, #800
.L60:
	.loc 1 186 1 discriminator 4 view .LVU193
	vldm	sp!, {d8}
.LCFI12:
	pop	{r3, pc}
.L66:
.LCFI13:
	.loc 1 185 78 discriminator 1 view .LVU194
	vldr.64	d1, .L67
	vmov.f32	s0, s16
	vmov.f32	s1, s17
	bl	pow
.LVL52:
	bl	ceil
.LVL53:
	vmov	r0, r1, d0
	.loc 1 185 114 discriminator 1 view .LVU195
	movs	r2, #0
	ldr	r3, .L67+8
	bl	__aeabi_dmul
.LVL54:
	.loc 1 185 14 discriminator 1 view .LVU196
	bl	__aeabi_d2iz
.LVL55:
	sxth	r0, r0
	b	.L60
.L68:
	.align	3
.L67:
	.word	-1717986918
	.word	-1074685543
	.word	1076101120
	.word	1082720256
	.word	0
	.word	1087356160
.LFE241:
	.size	i16DistSens_readMM, .-i16DistSens_readMM
	.section	.text.IrAnalogToCM,"ax",%progbits
	.align	1
	.global	IrAnalogToCM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	IrAnalogToCM, %function
IrAnalogToCM:
.LVL56:
.LFB242:
	.loc 1 188 39 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 188 39 is_stmt 0 view .LVU198
	push	{r3, lr}
.LCFI14:
	.loc 1 189 3 is_stmt 1 view .LVU199
	.loc 1 189 20 is_stmt 0 view .LVU200
	bl	__aeabi_i2d
.LVL57:
	.loc 1 189 20 view .LVU201
	adr	r3, .L71+8
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL58:
	vldr.64	d1, .L71
	vmov	d0, r0, r1
	bl	pow
.LVL59:
	bl	ceil
.LVL60:
	vmov	r0, r1, d0
	.loc 1 189 10 view .LVU202
	bl	__aeabi_d2uiz
.LVL61:
	.loc 1 190 1 view .LVU203
	uxtb	r0, r0
	pop	{r3, pc}
.L72:
	.align	3
.L71:
	.word	-1717986918
	.word	-1074685543
	.word	0
	.word	1087356160
.LFE242:
	.size	IrAnalogToCM, .-IrAnalogToCM
	.global	__aeabi_ui2d
	.section	.text.IrAnalogToMM,"ax",%progbits
	.align	1
	.global	IrAnalogToMM
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	IrAnalogToMM, %function
IrAnalogToMM:
.LVL62:
.LFB243:
	.loc 1 193 59 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 193 59 is_stmt 0 view .LVU205
	push	{r3, r4, r5, lr}
.LCFI15:
	mov	r5, r0
	.loc 1 195 5 is_stmt 1 view .LVU206
.LVL63:
	.loc 1 197 5 view .LVU207
	.loc 1 197 7 is_stmt 0 view .LVU208
	mov	r4, r1
	cbz	r1, .L80
	.loc 1 195 13 view .LVU209
	movs	r0, #0
.LVL64:
.L74:
	.loc 1 201 5 is_stmt 1 view .LVU210
	.loc 1 201 8 is_stmt 0 view .LVU211
	cmp	r4, #1
	beq	.L81
.L75:
	.loc 1 204 5 is_stmt 1 view .LVU212
	.loc 1 204 7 is_stmt 0 view .LVU213
	cmp	r4, #3
	beq	.L82
.L76:
	.loc 1 207 5 is_stmt 1 view .LVU214
	.loc 1 207 8 is_stmt 0 view .LVU215
	cmp	r4, #2
	beq	.L83
.L77:
	.loc 1 210 5 is_stmt 1 view .LVU216
	.loc 1 211 1 is_stmt 0 view .LVU217
	cmp	r0, #1000
	it	ge
	movge	r0, #1000
.LVL65:
	.loc 1 211 1 view .LVU218
	pop	{r3, r4, r5, pc}
.LVL66:
.L80:
	.loc 1 198 5 is_stmt 1 view .LVU219
	.loc 1 198 39 is_stmt 0 view .LVU220
	bl	__aeabi_ui2d
.LVL67:
	.loc 1 198 39 view .LVU221
	vldr.64	d1, .L84
	vmov	d0, r0, r1
	bl	pow
.LVL68:
	vmov	r0, r1, d0
	.loc 1 198 24 view .LVU222
	adr	r3, .L84+32
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL69:
	vmov	d0, r0, r1
	bl	ceil
.LVL70:
	vmov	r0, r1, d0
	.loc 1 198 12 view .LVU223
	bl	__aeabi_d2iz
.LVL71:
	sxth	r0, r0
.LVL72:
	.loc 1 198 12 view .LVU224
	b	.L74
.L81:
	.loc 1 202 5 is_stmt 1 view .LVU225
	.loc 1 202 40 is_stmt 0 view .LVU226
	mov	r0, r5
.LVL73:
	.loc 1 202 40 view .LVU227
	bl	__aeabi_ui2d
.LVL74:
	vldr.64	d1, .L84+8
	vmov	d0, r0, r1
	bl	pow
.LVL75:
	vmov	r0, r1, d0
	.loc 1 202 24 view .LVU228
	adr	r3, .L84+40
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL76:
	vmov	d0, r0, r1
	bl	ceil
.LVL77:
	vmov	r0, r1, d0
	.loc 1 202 12 view .LVU229
	bl	__aeabi_d2iz
.LVL78:
	sxth	r0, r0
.LVL79:
	.loc 1 202 12 view .LVU230
	b	.L75
.L82:
	.loc 1 205 5 is_stmt 1 view .LVU231
	.loc 1 205 37 is_stmt 0 view .LVU232
	mov	r0, r5
.LVL80:
	.loc 1 205 37 view .LVU233
	bl	__aeabi_ui2d
.LVL81:
	vldr.64	d1, .L84+16
	vmov	d0, r0, r1
	bl	pow
.LVL82:
	vmov	r0, r1, d0
	.loc 1 205 24 view .LVU234
	adr	r3, .L84+48
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL83:
	vmov	d0, r0, r1
	bl	ceil
.LVL84:
	vmov	r0, r1, d0
	.loc 1 205 12 view .LVU235
	bl	__aeabi_d2iz
.LVL85:
	sxth	r0, r0
.LVL86:
	.loc 1 205 12 view .LVU236
	b	.L76
.L83:
	.loc 1 208 5 is_stmt 1 view .LVU237
	.loc 1 208 39 is_stmt 0 view .LVU238
	mov	r0, r5
.LVL87:
	.loc 1 208 39 view .LVU239
	bl	__aeabi_ui2d
.LVL88:
	vldr.64	d1, .L84+24
	vmov	d0, r0, r1
	bl	pow
.LVL89:
	vmov	r0, r1, d0
	.loc 1 208 24 view .LVU240
	adr	r3, .L84+56
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL90:
	vmov	d0, r0, r1
	bl	ceil
.LVL91:
	vmov	r0, r1, d0
	.loc 1 208 12 view .LVU241
	bl	__aeabi_d2iz
.LVL92:
	sxth	r0, r0
.LVL93:
	.loc 1 208 12 view .LVU242
	b	.L77
.L85:
	.align	3
.L84:
	.word	1374389535
	.word	-1074979144
	.word	-377957122
	.word	-1074646746
	.word	0
	.word	-1074790400
	.word	1030792151
	.word	-1074800886
	.word	0
	.word	1090296576
	.word	0
	.word	1092664418
	.word	0
	.word	1091225240
	.word	0
	.word	1091120440
.LFE243:
	.size	IrAnalogToMM, .-IrAnalogToMM
	.global	conversion_buffer
	.global	cb
	.global	initial_calibration_completed
	.global	calibration_completed
	.section	.bss.calibration_completed,"aw",%nobits
	.set	.LANCHOR2,. + 0
	.type	calibration_completed, %object
	.size	calibration_completed, 1
calibration_completed:
	.space	1
	.section	.bss.cb,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	cb, %object
	.size	cb, 4
cb:
	.space	4
	.section	.bss.conversion_buffer,"aw",%nobits
	.align	2
	.type	conversion_buffer, %object
	.size	conversion_buffer, 8
conversion_buffer:
	.space	8
	.section	.bss.initial_calibration_completed,"aw",%nobits
	.set	.LANCHOR1,. + 0
	.type	initial_calibration_completed, %object
	.size	initial_calibration_completed, 1
initial_calibration_completed:
	.space	1
	.section	.bss.val.8898,"aw",%nobits
	.align	2
	.set	.LANCHOR8,. + 0
	.type	val.8898, %object
	.size	val.8898, 8
val.8898:
	.space	8
	.section	.data.channel_0_config.8874,"aw"
	.align	2
	.set	.LANCHOR3,. + 0
	.type	channel_0_config.8874, %object
	.size	channel_0_config.8874, 9
channel_0_config.8874:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	8
	.byte	0
	.section	.data.channel_1_config.8875,"aw"
	.align	2
	.set	.LANCHOR4,. + 0
	.type	channel_1_config.8875, %object
	.size	channel_1_config.8875, 9
channel_1_config.8875:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	6
	.byte	0
	.section	.data.channel_2_config.8876,"aw"
	.align	2
	.set	.LANCHOR5,. + 0
	.type	channel_2_config.8876, %object
	.size	channel_2_config.8876, 9
channel_2_config.8876:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.section	.data.channel_3_config.8877,"aw"
	.align	2
	.set	.LANCHOR6,. + 0
	.type	channel_3_config.8877, %object
	.size	channel_3_config.8877, 9
channel_3_config.8877:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	0
	.byte	0
	.byte	5
	.byte	0
	.section	.rodata.saadc_config,"a"
	.align	2
	.set	.LANCHOR7,. + 0
	.type	saadc_config, %object
	.size	saadc_config, 4
saadc_config:
	.byte	2
	.byte	0
	.byte	7
	.byte	0
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
	.4byte	.LFB235
	.4byte	.LFE235-.LFB235
	.byte	0x4
	.4byte	.LCFI0-.LFB235
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
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.byte	0x4
	.4byte	.LCFI2-.LFB236
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.byte	0x4
	.4byte	.LCFI3-.LFB237
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.byte	0x4
	.4byte	.LCFI4-.LFB238
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
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.byte	0x4
	.4byte	.LCFI5-.LFB239
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.byte	0x4
	.4byte	.LCFI6-.LFB240
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x50
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x51
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xa
	.byte	0x6
	.uleb128 0x50
	.byte	0x6
	.uleb128 0x51
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xb
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.byte	0x4
	.4byte	.LCFI10-.LFB241
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x10
	.byte	0x5
	.uleb128 0x50
	.uleb128 0x4
	.byte	0x5
	.uleb128 0x51
	.uleb128 0x3
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xa
	.byte	0x6
	.uleb128 0x50
	.byte	0x6
	.uleb128 0x51
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xb
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.byte	0x4
	.4byte	.LCFI14-.LFB242
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.byte	0x4
	.4byte	.LCFI15-.LFB243
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
.LEFDE16:
	.text
.Letext0:
	.file 2 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
	.file 3 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
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
	.byte	0x2
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
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
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x2
	.byte	0x31
	.byte	0x1
	.4byte	0x50
	.uleb128 0x7
	.4byte	.LASF4
	.byte	0
	.uleb128 0x7
	.4byte	.LASF5
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF6
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF7
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF8
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.file 4 "../../../../../../modules/nrfx/drivers/include/nrfx_saadc.h"
	.section	.debug_types,"G",%progbits,wt.a76ec9ac00db2ba1,comdat
	.4byte	0x52
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xa7
	.byte	0x6e
	.byte	0xc9
	.byte	0xac
	.byte	0
	.byte	0xdb
	.byte	0x2b
	.byte	0xa1
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.byte	0x9e
	.byte	0x9
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0xa0
	.byte	0x1b
	.4byte	0x45
	.byte	0
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x4
	.byte	0xa5
	.byte	0x7
	.byte	0x4b
	.byte	0xd9
	.byte	0xb
	.byte	0x9f
	.byte	0xb9
	.byte	0x24
	.byte	0xd7
	.byte	0xe7
	.byte	0x4
	.byte	0
	.uleb128 0x9
	.4byte	.LASF13
	.byte	0x4
	.byte	0x87
	.byte	0x3
	.byte	0x66
	.byte	0xe5
	.byte	0xc0
	.byte	0x9f
	.byte	0x9d
	.byte	0xdb
	.byte	0xf1
	.byte	0x7e
	.byte	0
	.section	.debug_types,"G",%progbits,wt.4bd90b9fb924d7e7,comdat
	.4byte	0x5c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x4b
	.byte	0xd9
	.byte	0xb
	.byte	0x9f
	.byte	0xb9
	.byte	0x24
	.byte	0xd7
	.byte	0xe7
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.byte	0x8
	.byte	0x4
	.byte	0xa1
	.byte	0x5
	.4byte	0x3f
	.uleb128 0xb
	.4byte	.LASF14
	.byte	0x4
	.byte	0xa3
	.byte	0x1f
	.4byte	0x3f
	.uleb128 0xb
	.4byte	.LASF15
	.byte	0x4
	.byte	0xa4
	.byte	0x20
	.4byte	0x4f
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0x90
	.byte	0x3
	.byte	0x59
	.byte	0x7c
	.byte	0x51
	.byte	0x5c
	.byte	0x90
	.byte	0x1d
	.byte	0x97
	.byte	0x80
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0x99
	.byte	0x3
	.byte	0xf7
	.byte	0xd3
	.byte	0x74
	.byte	0xb8
	.byte	0xa1
	.byte	0xb9
	.byte	0x23
	.byte	0x20
	.byte	0
	.file 5 "../../../../../../modules/nrfx/hal/nrf_saadc.h"
	.section	.debug_types,"G",%progbits,wt.f7d374b8a1b92320,comdat
	.4byte	0x62
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xf7
	.byte	0xd3
	.byte	0x74
	.byte	0xb8
	.byte	0xa1
	.byte	0xb9
	.byte	0x23
	.byte	0x20
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x2
	.byte	0x4
	.byte	0x95
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x97
	.byte	0xd
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x98
	.byte	0x17
	.4byte	0x4d
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x5e
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x5
	.2byte	0x102
	.byte	0x3
	.byte	0x32
	.byte	0x1b
	.byte	0xb6
	.byte	0xd2
	.byte	0x51
	.byte	0x13
	.byte	0x8c
	.byte	0x7a
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.597c515c901d9780,comdat
	.4byte	0x77
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x59
	.byte	0x7c
	.byte	0x51
	.byte	0x5c
	.byte	0x90
	.byte	0x1d
	.byte	0x97
	.byte	0x80
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.byte	0x8c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x4
	.byte	0x8e
	.byte	0x19
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x4
	.byte	0x8f
	.byte	0xe
	.4byte	0x47
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x53
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x60
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x105
	.byte	0x11
	.4byte	0x67
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x3
	.byte	0x35
	.byte	0x16
	.4byte	0x73
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF26
	.byte	0
	.section	.debug_types,"G",%progbits,wt.66e5c09f9ddbf17e,comdat
	.4byte	0x42
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x66
	.byte	0xe5
	.byte	0xc0
	.byte	0x9f
	.byte	0x9d
	.byte	0xdb
	.byte	0xf1
	.byte	0x7e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x4
	.byte	0x83
	.byte	0x1
	.4byte	0x3e
	.uleb128 0x7
	.4byte	.LASF27
	.byte	0
	.uleb128 0x7
	.4byte	.LASF28
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF29
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.7f1793cc02d7f4b4,comdat
	.4byte	0x92
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x7f
	.byte	0x17
	.byte	0x93
	.byte	0xcc
	.byte	0x2
	.byte	0xd7
	.byte	0xf4
	.byte	0xb4
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0x77
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x4
	.byte	0x79
	.byte	0x1c
	.4byte	0x5b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x4
	.byte	0x7a
	.byte	0x1c
	.4byte	0x6b
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x4
	.byte	0x7b
	.byte	0xd
	.4byte	0x7b
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x4
	.byte	0x7c
	.byte	0x1b
	.4byte	0x87
	.byte	0x3
	.byte	0
	.uleb128 0x9
	.4byte	.LASF34
	.byte	0x5
	.byte	0x44
	.byte	0x3
	.byte	0x44
	.byte	0x5
	.byte	0xa4
	.byte	0xc8
	.byte	0xc3
	.byte	0xee
	.byte	0x49
	.byte	0x76
	.uleb128 0x9
	.4byte	.LASF35
	.byte	0x5
	.byte	0x67
	.byte	0x3
	.byte	0xe1
	.byte	0xae
	.byte	0x23
	.byte	0x22
	.byte	0x89
	.byte	0x10
	.byte	0x1b
	.byte	0x32
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x8e
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF36
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.686e487e0a9e63f7,comdat
	.4byte	0x113
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x68
	.byte	0x6e
	.byte	0x48
	.byte	0x7e
	.byte	0xa
	.byte	0x9e
	.byte	0x63
	.byte	0xf7
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xf
	.byte	0x9
	.byte	0x5
	.2byte	0x117
	.byte	0x9
	.4byte	0xa6
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x5
	.2byte	0x119
	.byte	0x1a
	.4byte	0xa6
	.byte	0
	.uleb128 0x10
	.4byte	.LASF38
	.byte	0x5
	.2byte	0x11a
	.byte	0x1a
	.4byte	0xa6
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0x5
	.2byte	0x11b
	.byte	0x16
	.4byte	0xb6
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x5
	.2byte	0x11c
	.byte	0x1b
	.4byte	0xc6
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x5
	.2byte	0x11d
	.byte	0x19
	.4byte	0xd6
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x5
	.2byte	0x11e
	.byte	0x16
	.4byte	0xe6
	.byte	0x5
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x5
	.2byte	0x11f
	.byte	0x17
	.4byte	0xf6
	.byte	0x6
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x5
	.2byte	0x120
	.byte	0x17
	.4byte	0x106
	.byte	0x7
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x5
	.2byte	0x121
	.byte	0x17
	.4byte	0x106
	.byte	0x8
	.byte	0
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x5
	.byte	0x73
	.byte	0x3
	.byte	0x45
	.byte	0xf2
	.byte	0x8c
	.byte	0xc
	.byte	0x52
	.byte	0x8c
	.byte	0x96
	.byte	0xc9
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x5
	.byte	0x83
	.byte	0x3
	.byte	0x4
	.byte	0x1a
	.byte	0xc8
	.byte	0xa0
	.byte	0x8f
	.byte	0xc
	.byte	0xb1
	.byte	0xbd
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x5
	.byte	0x8d
	.byte	0x3
	.byte	0x44
	.byte	0x9c
	.byte	0xff
	.byte	0x7b
	.byte	0x1a
	.byte	0x2c
	.byte	0x91
	.byte	0x1f
	.uleb128 0x9
	.4byte	.LASF49
	.byte	0x5
	.byte	0x9b
	.byte	0x3
	.byte	0xaa
	.byte	0xe2
	.byte	0x48
	.byte	0xe6
	.byte	0xda
	.byte	0xfa
	.byte	0xc
	.byte	0x8e
	.uleb128 0x9
	.4byte	.LASF50
	.byte	0x5
	.byte	0xa5
	.byte	0x3
	.byte	0xc0
	.byte	0x5d
	.byte	0xb7
	.byte	0x29
	.byte	0xd0
	.byte	0x85
	.byte	0x42
	.byte	0x1e
	.uleb128 0x9
	.4byte	.LASF51
	.byte	0x5
	.byte	0xaf
	.byte	0x3
	.byte	0x66
	.byte	0x64
	.byte	0x68
	.byte	0x42
	.byte	0xd4
	.byte	0xd9
	.byte	0x9c
	.byte	0x46
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x5
	.byte	0x56
	.byte	0x3
	.byte	0xee
	.byte	0x42
	.byte	0x4b
	.byte	0x17
	.byte	0xc7
	.byte	0xc0
	.byte	0xab
	.byte	0x12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.321bb6d251138c7a,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x32
	.byte	0x1b
	.byte	0xb6
	.byte	0xd2
	.byte	0x51
	.byte	0x13
	.byte	0x8c
	.byte	0x7a
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.byte	0xff
	.byte	0x1
	.4byte	0x38
	.uleb128 0x7
	.4byte	.LASF53
	.byte	0
	.uleb128 0x7
	.4byte	.LASF54
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.66646842d4d99c46,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x66
	.byte	0x64
	.byte	0x68
	.byte	0x42
	.byte	0xd4
	.byte	0xd9
	.byte	0x9c
	.byte	0x46
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.byte	0xac
	.byte	0x1
	.4byte	0x38
	.uleb128 0x7
	.4byte	.LASF55
	.byte	0
	.uleb128 0x7
	.4byte	.LASF56
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.c05db729d085421e,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xc0
	.byte	0x5d
	.byte	0xb7
	.byte	0x29
	.byte	0xd0
	.byte	0x85
	.byte	0x42
	.byte	0x1e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.byte	0xa2
	.byte	0x1
	.4byte	0x38
	.uleb128 0x7
	.4byte	.LASF57
	.byte	0
	.uleb128 0x7
	.4byte	.LASF58
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.aae248e6dafa0c8e,comdat
	.4byte	0x54
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xaa
	.byte	0xe2
	.byte	0x48
	.byte	0xe6
	.byte	0xda
	.byte	0xfa
	.byte	0xc
	.byte	0x8e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x5
	.byte	0x94
	.byte	0x1
	.4byte	0x50
	.uleb128 0x7
	.4byte	.LASF59
	.byte	0
	.uleb128 0x7
	.4byte	.LASF60
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF61
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF62
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF63
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF64
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.449cff7b1a2c911f,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x44
	.byte	0x9c
	.byte	0xff
	.byte	0x7b
	.byte	0x1a
	.byte	0x2c
	.byte	0x91
	.byte	0x1f
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x5
	.byte	0x8a
	.byte	0x1
	.4byte	0x38
	.uleb128 0x7
	.4byte	.LASF65
	.byte	0
	.uleb128 0x7
	.4byte	.LASF66
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.041ac8a08f0cb1bd,comdat
	.4byte	0x60
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0xc8
	.byte	0xa0
	.byte	0x8f
	.byte	0xc
	.byte	0xb1
	.byte	0xbd
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x5c
	.byte	0x5
	.byte	0x7a
	.byte	0x1
	.4byte	0x5c
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0
	.uleb128 0x7
	.4byte	.LASF68
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF69
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF70
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF71
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF72
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF74
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.45f28c0c528c96c9,comdat
	.4byte	0x48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x45
	.byte	0xf2
	.byte	0x8c
	.byte	0xc
	.byte	0x52
	.byte	0x8c
	.byte	0x96
	.byte	0xc9
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x5
	.byte	0x6e
	.byte	0x1
	.4byte	0x44
	.uleb128 0x7
	.4byte	.LASF75
	.byte	0
	.uleb128 0x7
	.4byte	.LASF76
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF77
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF78
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.e1ae232289101b32,comdat
	.4byte	0x66
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xe1
	.byte	0xae
	.byte	0x23
	.byte	0x22
	.byte	0x89
	.byte	0x10
	.byte	0x1b
	.byte	0x32
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x62
	.byte	0x5
	.byte	0x5d
	.byte	0x1
	.4byte	0x62
	.uleb128 0x7
	.4byte	.LASF79
	.byte	0
	.uleb128 0x7
	.4byte	.LASF80
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF81
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF82
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF83
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF84
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF85
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF86
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF87
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.ee424b17c7c0ab12,comdat
	.4byte	0x6c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xee
	.byte	0x42
	.byte	0x4b
	.byte	0x17
	.byte	0xc7
	.byte	0xc0
	.byte	0xab
	.byte	0x12
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x68
	.byte	0x5
	.byte	0x4b
	.byte	0x1
	.4byte	0x68
	.uleb128 0x7
	.4byte	.LASF88
	.byte	0
	.uleb128 0x7
	.4byte	.LASF89
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF90
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF91
	.byte	0x3
	.uleb128 0x7
	.4byte	.LASF92
	.byte	0x4
	.uleb128 0x7
	.4byte	.LASF93
	.byte	0x5
	.uleb128 0x7
	.4byte	.LASF94
	.byte	0x6
	.uleb128 0x7
	.4byte	.LASF95
	.byte	0x7
	.uleb128 0x7
	.4byte	.LASF96
	.byte	0x8
	.uleb128 0x7
	.4byte	.LASF97
	.byte	0x9
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.section	.debug_types,"G",%progbits,wt.4405a4c8c3ee4976,comdat
	.4byte	0x48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x44
	.byte	0x5
	.byte	0xa4
	.byte	0xc8
	.byte	0xc3
	.byte	0xee
	.byte	0x49
	.byte	0x76
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x5
	.byte	0x3f
	.byte	0x1
	.4byte	0x44
	.uleb128 0x7
	.4byte	.LASF98
	.byte	0
	.uleb128 0x7
	.4byte	.LASF99
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF100
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF101
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
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
	.4byte	.LASF102
	.byte	0x6
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0x6
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0x11
	.4byte	0x4b
	.uleb128 0x11
	.4byte	0x5b
	.uleb128 0x12
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0x13
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF105
	.byte	0
	.file 7 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x8
	.byte	0x7
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x7
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x10
	.4byte	.LASF107
	.byte	0x7
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0xe
	.4byte	.LASF108
	.byte	0x7
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x61
	.uleb128 0x15
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x16
	.4byte	0x76
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x18
	.4byte	0x82
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF109
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
	.uleb128 0x19
	.4byte	.LASF111
	.byte	0x14
	.byte	0x7
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0x7
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x13
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x55
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF105
	.uleb128 0x18
	.4byte	0x5a
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x7
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
	.byte	0x7
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0x7
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x7
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0x7
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x60
	.uleb128 0xd
	.byte	0x4
	.4byte	0x65
	.uleb128 0xd
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x18
	.4byte	0x6f
	.uleb128 0x18
	.4byte	0x76
	.uleb128 0x18
	.4byte	0x86
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF109
	.uleb128 0x9
	.4byte	.LASF116
	.byte	0x7
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
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x7
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
	.byte	0x7
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0x7
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0x7
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0x7
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0x7
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0x7
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0x7
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0x7
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0x7
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0xb3
	.uleb128 0xd
	.byte	0x4
	.4byte	0xc7
	.uleb128 0xd
	.byte	0x4
	.4byte	0xd6
	.uleb128 0xd
	.byte	0x4
	.4byte	0xea
	.uleb128 0xd
	.byte	0x4
	.4byte	0xf9
	.uleb128 0xd
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF126
	.uleb128 0xd
	.byte	0x4
	.4byte	0x161
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF105
	.uleb128 0x1a
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0xd
	.byte	0x4
	.4byte	0x144
	.uleb128 0xd
	.byte	0x4
	.4byte	0x168
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF109
	.uleb128 0x18
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
	.byte	0x7
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0x7
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0x7
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0x7
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0x7
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0x7
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0x7
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0x7
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF134
	.byte	0x7
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0x7
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0x7
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF137
	.byte	0x7
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF138
	.byte	0x7
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF139
	.byte	0x7
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF140
	.byte	0x7
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF141
	.byte	0x7
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF142
	.byte	0x7
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF143
	.byte	0x7
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF144
	.byte	0x7
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF145
	.byte	0x7
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF146
	.byte	0x7
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF147
	.byte	0x7
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF148
	.byte	0x7
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF149
	.byte	0x7
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF150
	.byte	0x7
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF151
	.byte	0x7
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF152
	.byte	0x7
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF153
	.byte	0x7
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF154
	.byte	0x7
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF155
	.byte	0x7
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF156
	.byte	0x7
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF157
	.byte	0x7
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF158
	.byte	0x7
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF109
	.uleb128 0x18
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
	.uleb128 0x19
	.4byte	.LASF159
	.byte	0x8
	.byte	0x7
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF160
	.byte	0x7
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF161
	.byte	0x7
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF126
	.byte	0
	.file 8 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\ir.h"
	.section	.debug_types,"G",%progbits,wt.72987e626125a64e,comdat
	.4byte	0x48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x72
	.byte	0x98
	.byte	0x7e
	.byte	0x62
	.byte	0x61
	.byte	0x25
	.byte	0xa6
	.byte	0x4e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x6
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x8
	.byte	0xa
	.byte	0xe
	.4byte	0x44
	.uleb128 0x7
	.4byte	.LASF162
	.byte	0
	.uleb128 0x7
	.4byte	.LASF163
	.byte	0x1
	.uleb128 0x7
	.4byte	.LASF164
	.byte	0x2
	.uleb128 0x7
	.4byte	.LASF165
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.byte	0
	.file 9 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 10 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 11 "../../../../../../components/libraries/util/app_util.h"
	.file 12 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 13 "../../../../../../components/libraries/util/sdk_errors.h"
	.file 14 "../../../../../../integration/nrfx/nrfx_glue.h"
	.file 15 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 16 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.file 17 "../../../../../../components/libraries/util/app_error.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xba6
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF249
	.byte	0xc
	.4byte	.LASF250
	.4byte	.LASF251
	.4byte	.Ldebug_ranges0+0x78
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x5
	.byte	0x8
	.byte	0x4
	.4byte	.LASF166
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.4byte	.LASF167
	.uleb128 0x4
	.4byte	.LASF20
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x43
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x18
	.4byte	0x43
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x3
	.byte	0x35
	.byte	0x16
	.4byte	0x5b
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.4byte	.LASF26
	.uleb128 0x4
	.4byte	.LASF2
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x6e
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x4
	.4byte	.LASF168
	.byte	0x3
	.byte	0x37
	.byte	0x14
	.4byte	0x86
	.uleb128 0x11
	.4byte	0x75
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF104
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x9e
	.uleb128 0x18
	.4byte	0x8d
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.4byte	.LASF105
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.4byte	.LASF169
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.4byte	.LASF170
	.uleb128 0x9
	.4byte	.LASF171
	.byte	0x8
	.byte	0xf
	.byte	0x3
	.byte	0x72
	.byte	0x98
	.byte	0x7e
	.byte	0x62
	.byte	0x61
	.byte	0x25
	.byte	0xa6
	.byte	0x4e
	.uleb128 0x4
	.4byte	.LASF172
	.byte	0x8
	.byte	0x19
	.byte	0x10
	.4byte	0xcf
	.uleb128 0xd
	.byte	0x4
	.4byte	0xd5
	.uleb128 0x1c
	.4byte	0xe0
	.uleb128 0x16
	.4byte	0x62
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.4byte	.LASF126
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.4byte	.LASF109
	.uleb128 0x18
	.4byte	0xe7
	.uleb128 0x9
	.4byte	.LASF117
	.byte	0x7
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
	.uleb128 0x18
	.4byte	0xf3
	.uleb128 0x9
	.4byte	.LASF113
	.byte	0x7
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
	.uleb128 0x18
	.4byte	0x108
	.uleb128 0x1d
	.4byte	.LASF173
	.byte	0x7
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
	.uleb128 0x1e
	.4byte	.LASF174
	.byte	0x7
	.2byte	0x10d
	.byte	0x1d
	.4byte	0x118
	.uleb128 0x1e
	.4byte	.LASF175
	.byte	0x7
	.2byte	0x110
	.byte	0x25
	.4byte	0x103
	.uleb128 0x1e
	.4byte	.LASF176
	.byte	0x7
	.2byte	0x111
	.byte	0x25
	.4byte	0x103
	.uleb128 0x12
	.4byte	0x4a
	.4byte	0x165
	.uleb128 0x13
	.4byte	0x9e
	.byte	0x7f
	.byte	0
	.uleb128 0x18
	.4byte	0x155
	.uleb128 0x1e
	.4byte	.LASF177
	.byte	0x7
	.2byte	0x113
	.byte	0x1c
	.4byte	0x165
	.uleb128 0x12
	.4byte	0xee
	.4byte	0x182
	.uleb128 0x1f
	.byte	0
	.uleb128 0x18
	.4byte	0x177
	.uleb128 0x1e
	.4byte	.LASF178
	.byte	0x7
	.2byte	0x115
	.byte	0x13
	.4byte	0x182
	.uleb128 0x1e
	.4byte	.LASF179
	.byte	0x7
	.2byte	0x116
	.byte	0x13
	.4byte	0x182
	.uleb128 0x1e
	.4byte	.LASF180
	.byte	0x7
	.2byte	0x117
	.byte	0x13
	.4byte	0x182
	.uleb128 0x1e
	.4byte	.LASF181
	.byte	0x7
	.2byte	0x118
	.byte	0x13
	.4byte	0x182
	.uleb128 0x1e
	.4byte	.LASF182
	.byte	0x7
	.2byte	0x11a
	.byte	0x13
	.4byte	0x182
	.uleb128 0x1e
	.4byte	.LASF183
	.byte	0x7
	.2byte	0x11b
	.byte	0x13
	.4byte	0x182
	.uleb128 0x1e
	.4byte	.LASF184
	.byte	0x7
	.2byte	0x11c
	.byte	0x13
	.4byte	0x182
	.uleb128 0x1e
	.4byte	.LASF185
	.byte	0x7
	.2byte	0x11d
	.byte	0x13
	.4byte	0x182
	.uleb128 0x1e
	.4byte	.LASF186
	.byte	0x7
	.2byte	0x11e
	.byte	0x13
	.4byte	0x182
	.uleb128 0x1e
	.4byte	.LASF187
	.byte	0x7
	.2byte	0x11f
	.byte	0x13
	.4byte	0x182
	.uleb128 0x15
	.4byte	0x86
	.4byte	0x218
	.uleb128 0x16
	.4byte	0x218
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x223
	.uleb128 0x20
	.4byte	.LASF201
	.uleb128 0x18
	.4byte	0x21e
	.uleb128 0x1e
	.4byte	.LASF188
	.byte	0x7
	.2byte	0x135
	.byte	0xe
	.4byte	0x235
	.uleb128 0xd
	.byte	0x4
	.4byte	0x209
	.uleb128 0x15
	.4byte	0x86
	.4byte	0x24a
	.uleb128 0x16
	.4byte	0x24a
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.4byte	0x21e
	.uleb128 0x1e
	.4byte	.LASF189
	.byte	0x7
	.2byte	0x136
	.byte	0xe
	.4byte	0x25d
	.uleb128 0xd
	.byte	0x4
	.4byte	0x23b
	.uleb128 0xc
	.4byte	.LASF190
	.byte	0x7
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
	.uleb128 0x1e
	.4byte	.LASF191
	.byte	0x7
	.2byte	0x157
	.byte	0x1f
	.4byte	0x281
	.uleb128 0xd
	.byte	0x4
	.4byte	0x263
	.uleb128 0x1e
	.4byte	.LASF192
	.byte	0x9
	.2byte	0x744
	.byte	0x19
	.4byte	0x81
	.uleb128 0x21
	.4byte	.LASF193
	.byte	0xa
	.byte	0x21
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x21
	.4byte	.LASF194
	.byte	0xb
	.byte	0x53
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x21
	.4byte	.LASF195
	.byte	0xb
	.byte	0x54
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x21
	.4byte	.LASF196
	.byte	0xb
	.byte	0x72
	.byte	0x13
	.4byte	0x2c4
	.uleb128 0xd
	.byte	0x4
	.4byte	0x8d
	.uleb128 0x21
	.4byte	.LASF197
	.byte	0xb
	.byte	0x73
	.byte	0x11
	.4byte	0x8d
	.uleb128 0x9
	.4byte	.LASF198
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
	.uleb128 0x21
	.4byte	.LASF199
	.byte	0x6
	.byte	0x75
	.byte	0x19
	.4byte	0x2d6
	.uleb128 0xe
	.4byte	.LASF200
	.byte	0xc
	.2byte	0x317
	.byte	0x1b
	.4byte	0x2ff
	.uleb128 0x20
	.4byte	.LASF202
	.uleb128 0x1e
	.4byte	.LASF203
	.byte	0xc
	.2byte	0x31b
	.byte	0xe
	.4byte	0x311
	.uleb128 0xd
	.byte	0x4
	.4byte	0x2f2
	.uleb128 0x1e
	.4byte	.LASF204
	.byte	0xc
	.2byte	0x31c
	.byte	0xe
	.4byte	0x311
	.uleb128 0x1e
	.4byte	.LASF205
	.byte	0xc
	.2byte	0x31d
	.byte	0xe
	.4byte	0x311
	.uleb128 0x4
	.4byte	.LASF206
	.byte	0xd
	.byte	0x9e
	.byte	0x12
	.4byte	0x8d
	.uleb128 0x4
	.4byte	.LASF207
	.byte	0xe
	.byte	0xdb
	.byte	0x14
	.4byte	0x331
	.uleb128 0x9
	.4byte	.LASF52
	.byte	0x5
	.byte	0x56
	.byte	0x3
	.byte	0xee
	.byte	0x42
	.byte	0x4b
	.byte	0x17
	.byte	0xc7
	.byte	0xc0
	.byte	0xab
	.byte	0x12
	.uleb128 0xe
	.4byte	.LASF24
	.byte	0x5
	.2byte	0x105
	.byte	0x11
	.4byte	0x4f
	.uleb128 0xc
	.4byte	.LASF208
	.byte	0x5
	.2byte	0x122
	.byte	0x3
	.byte	0x68
	.byte	0x6e
	.byte	0x48
	.byte	0x7e
	.byte	0xa
	.byte	0x9e
	.byte	0x63
	.byte	0xf7
	.uleb128 0x5
	.byte	0x1
	.byte	0x2
	.4byte	.LASF36
	.uleb128 0x9
	.4byte	.LASF209
	.byte	0x4
	.byte	0x7d
	.byte	0x3
	.byte	0x7f
	.byte	0x17
	.byte	0x93
	.byte	0xcc
	.byte	0x2
	.byte	0xd7
	.byte	0xf4
	.byte	0xb4
	.uleb128 0x18
	.4byte	0x37e
	.uleb128 0x9
	.4byte	.LASF210
	.byte	0x4
	.byte	0xa6
	.byte	0x3
	.byte	0xa7
	.byte	0x6e
	.byte	0xc9
	.byte	0xac
	.byte	0
	.byte	0xdb
	.byte	0x2b
	.byte	0xa1
	.uleb128 0x18
	.4byte	0x393
	.uleb128 0xd
	.byte	0x4
	.4byte	0x3a3
	.uleb128 0x9
	.4byte	.LASF211
	.byte	0x2
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
	.uleb128 0x1e
	.4byte	.LASF212
	.byte	0xf
	.2byte	0x124
	.byte	0x2e
	.4byte	0x3ae
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.4byte	.LASF213
	.uleb128 0x22
	.4byte	.LASF216
	.byte	0x1
	.byte	0x12
	.byte	0x22
	.4byte	0x38e
	.uleb128 0x5
	.byte	0x3
	.4byte	saadc_config
	.uleb128 0x23
	.4byte	.LASF214
	.byte	0x1
	.byte	0x1d
	.byte	0x5
	.4byte	0x377
	.uleb128 0x5
	.byte	0x3
	.4byte	calibration_completed
	.uleb128 0x23
	.4byte	.LASF215
	.byte	0x1
	.byte	0x1e
	.byte	0x5
	.4byte	0x377
	.uleb128 0x5
	.byte	0x3
	.4byte	initial_calibration_completed
	.uleb128 0x24
	.ascii	"cb\000"
	.byte	0x1
	.byte	0x20
	.byte	0x9
	.4byte	0xc3
	.uleb128 0x5
	.byte	0x3
	.4byte	cb
	.uleb128 0x25
	.4byte	.LASF217
	.byte	0x1
	.byte	0x22
	.byte	0x23
	.4byte	0x366
	.byte	0x9
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0x2
	.byte	0
	.byte	0
	.byte	0x5
	.byte	0
	.uleb128 0x12
	.4byte	0x359
	.4byte	0x43f
	.uleb128 0x13
	.4byte	0x9e
	.byte	0x3
	.byte	0
	.uleb128 0x23
	.4byte	.LASF218
	.byte	0x1
	.byte	0x25
	.byte	0x13
	.4byte	0x42f
	.uleb128 0x5
	.byte	0x3
	.4byte	conversion_buffer
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0xc1
	.byte	0x9
	.4byte	0x4f
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x55c
	.uleb128 0x27
	.4byte	.LASF219
	.byte	0x1
	.byte	0xc1
	.byte	0x1f
	.4byte	0x62
	.4byte	.LLST21
	.4byte	.LVUS21
	.uleb128 0x27
	.4byte	.LASF220
	.byte	0x1
	.byte	0xc1
	.byte	0x34
	.4byte	0xb3
	.4byte	.LLST22
	.4byte	.LVUS22
	.uleb128 0x28
	.4byte	.LASF221
	.byte	0x1
	.byte	0xc3
	.byte	0xd
	.4byte	0x4f
	.4byte	.LLST23
	.4byte	.LVUS23
	.uleb128 0x29
	.4byte	.LVL68
	.4byte	0xb2c
	.4byte	0x4cb
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.4byte	0x51eb851f
	.4byte	0xbfed1eb8
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL70
	.4byte	0xb39
	.uleb128 0x29
	.4byte	.LVL75
	.4byte	0xb2c
	.4byte	0x4f8
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.4byte	0xe978d4fe
	.4byte	0xbff23126
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL77
	.4byte	0xb39
	.uleb128 0x29
	.4byte	.LVL82
	.4byte	0xb2c
	.4byte	0x525
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.4byte	0
	.4byte	0xbff00000
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL84
	.4byte	0xb39
	.uleb128 0x29
	.4byte	.LVL89
	.4byte	0xb2c
	.4byte	0x552
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.4byte	0x3d70a3d7
	.4byte	0xbfefd70a
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL91
	.4byte	0xb39
	.byte	0
	.uleb128 0x26
	.4byte	.LASF223
	.byte	0x1
	.byte	0xbc
	.byte	0x9
	.4byte	0x37
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b8
	.uleb128 0x27
	.4byte	.LASF219
	.byte	0x1
	.byte	0xbc
	.byte	0x1f
	.4byte	0x62
	.4byte	.LLST20
	.4byte	.LVUS20
	.uleb128 0x29
	.4byte	.LVL59
	.4byte	0xb2c
	.4byte	0x5ae
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.4byte	0x9999999a
	.4byte	0xbff19999
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL60
	.4byte	0xb39
	.byte	0
	.uleb128 0x26
	.4byte	.LASF224
	.byte	0x1
	.byte	0xb7
	.byte	0x9
	.4byte	0x4f
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67a
	.uleb128 0x27
	.4byte	.LASF220
	.byte	0x1
	.byte	0xb7
	.byte	0x28
	.4byte	0xb3
	.4byte	.LLST18
	.4byte	.LVUS18
	.uleb128 0x28
	.4byte	.LASF225
	.byte	0x1
	.byte	0xb8
	.byte	0x10
	.4byte	0x62
	.4byte	.LLST19
	.4byte	.LVUS19
	.uleb128 0x2b
	.4byte	.LVL45
	.4byte	0x76f
	.uleb128 0x29
	.4byte	.LVL48
	.4byte	0xb2c
	.4byte	0x635
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.4byte	0x9999999a
	.4byte	0xbff19999
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL49
	.4byte	0xb39
	.uleb128 0x29
	.4byte	.LVL52
	.4byte	0xb2c
	.4byte	0x670
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.4byte	0x9999999a
	.4byte	0xbff19999
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL53
	.4byte	0xb39
	.byte	0
	.uleb128 0x26
	.4byte	.LASF226
	.byte	0x1
	.byte	0xb2
	.byte	0x9
	.4byte	0x37
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x73c
	.uleb128 0x27
	.4byte	.LASF220
	.byte	0x1
	.byte	0xb2
	.byte	0x28
	.4byte	0xb3
	.4byte	.LLST16
	.4byte	.LVUS16
	.uleb128 0x28
	.4byte	.LASF225
	.byte	0x1
	.byte	0xb3
	.byte	0x10
	.4byte	0x62
	.4byte	.LLST17
	.4byte	.LVUS17
	.uleb128 0x2b
	.4byte	.LVL35
	.4byte	0x76f
	.uleb128 0x29
	.4byte	.LVL38
	.4byte	0xb2c
	.4byte	0x6f7
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.4byte	0x9999999a
	.4byte	0xbff19999
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL39
	.4byte	0xb39
	.uleb128 0x29
	.4byte	.LVL41
	.4byte	0xb2c
	.4byte	0x732
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x40
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x41
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.uleb128 0x2a
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0xb
	.byte	0xf4
	.uleb128 0x29
	.byte	0x8
	.4byte	0x9999999a
	.4byte	0xbff19999
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL42
	.4byte	0xb39
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF230
	.byte	0x1
	.byte	0xa8
	.byte	0x6
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76f
	.uleb128 0x2b
	.4byte	.LVL32
	.4byte	0xb46
	.uleb128 0x2d
	.4byte	.LVL33
	.4byte	0xb53
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF227
	.byte	0x1
	.byte	0x97
	.byte	0xa
	.4byte	0x62
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x859
	.uleb128 0x27
	.4byte	.LASF220
	.byte	0x1
	.byte	0x97
	.byte	0x27
	.4byte	0xb3
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2f
	.ascii	"err\000"
	.byte	0x1
	.byte	0x98
	.byte	0xd
	.4byte	0x33d
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x28
	.4byte	.LASF18
	.byte	0x1
	.byte	0x99
	.byte	0xa
	.4byte	0x37
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x30
	.ascii	"val\000"
	.byte	0x1
	.byte	0x9d
	.byte	0x1b
	.4byte	0x42f
	.uleb128 0x5
	.byte	0x3
	.4byte	val.8898
	.uleb128 0x2f
	.ascii	"acc\000"
	.byte	0x1
	.byte	0x9e
	.byte	0x6
	.4byte	0x86
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0x48
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x1
	.byte	0x9f
	.byte	0xb
	.4byte	0x86
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x60
	.4byte	0x839
	.uleb128 0x28
	.4byte	.LASF228
	.byte	0x1
	.byte	0xa1
	.byte	0x25
	.4byte	0x99
	.4byte	.LLST15
	.4byte	.LVUS15
	.uleb128 0x2d
	.4byte	.LVL25
	.4byte	0xb60
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xa1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL28
	.4byte	0xb6c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0xa
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.4byte	.LANCHOR8
	.byte	0x22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.4byte	.LASF236
	.byte	0x1
	.byte	0x8b
	.byte	0x6
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x908
	.uleb128 0x27
	.4byte	.LASF220
	.byte	0x1
	.byte	0x8b
	.byte	0x1a
	.4byte	0xb3
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x27
	.4byte	.LASF229
	.byte	0x1
	.byte	0x8b
	.byte	0x2a
	.4byte	0xc3
	.4byte	.LLST6
	.4byte	.LVUS6
	.uleb128 0x2f
	.ascii	"err\000"
	.byte	0x1
	.byte	0x8c
	.byte	0xd
	.4byte	0x33d
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x34
	.4byte	.LBB11
	.4byte	.LBE11-.LBB11
	.uleb128 0x2f
	.ascii	"i\000"
	.byte	0x1
	.byte	0x90
	.byte	0xb
	.4byte	0x86
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0x8fd
	.uleb128 0x28
	.4byte	.LASF228
	.byte	0x1
	.byte	0x93
	.byte	0x17
	.4byte	0x99
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x2d
	.4byte	.LVL17
	.4byte	0xb60
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x93
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL19
	.4byte	0xb78
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF231
	.byte	0x1
	.byte	0x49
	.byte	0x6
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa8d
	.uleb128 0x35
	.ascii	"err\000"
	.byte	0x1
	.byte	0x4a
	.byte	0xd
	.4byte	0x33d
	.uleb128 0x22
	.4byte	.LASF232
	.byte	0x1
	.byte	0x4e
	.byte	0x24
	.4byte	0x366
	.uleb128 0x5
	.byte	0x3
	.4byte	channel_0_config.8874
	.uleb128 0x22
	.4byte	.LASF233
	.byte	0x1
	.byte	0x53
	.byte	0x24
	.4byte	0x366
	.uleb128 0x5
	.byte	0x3
	.4byte	channel_1_config.8875
	.uleb128 0x22
	.4byte	.LASF234
	.byte	0x1
	.byte	0x58
	.byte	0x24
	.4byte	0x366
	.uleb128 0x5
	.byte	0x3
	.4byte	channel_2_config.8876
	.uleb128 0x22
	.4byte	.LASF235
	.byte	0x1
	.byte	0x5d
	.byte	0x24
	.4byte	0x366
	.uleb128 0x5
	.byte	0x3
	.4byte	channel_3_config.8877
	.uleb128 0x36
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x994
	.uleb128 0x28
	.4byte	.LASF228
	.byte	0x1
	.byte	0x6e
	.byte	0x16
	.4byte	0x99
	.4byte	.LLST4
	.4byte	.LVUS4
	.byte	0
	.uleb128 0x36
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x9af
	.uleb128 0x37
	.4byte	.LASF228
	.byte	0x1
	.byte	0x71
	.byte	0x16
	.4byte	0x99
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LBB8
	.4byte	.LBE8-.LBB8
	.4byte	0x9ca
	.uleb128 0x37
	.4byte	.LASF228
	.byte	0x1
	.byte	0x74
	.byte	0x16
	.4byte	0x99
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x9e5
	.uleb128 0x37
	.4byte	.LASF228
	.byte	0x1
	.byte	0x77
	.byte	0x16
	.4byte	0x99
	.byte	0
	.byte	0
	.uleb128 0x36
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.4byte	0xa00
	.uleb128 0x37
	.4byte	.LASF228
	.byte	0x1
	.byte	0x7b
	.byte	0x16
	.4byte	0x99
	.byte	0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL9
	.4byte	0xb84
	.4byte	0xa20
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	saadc_event_handler
	.byte	0
	.uleb128 0x29
	.4byte	.LVL10
	.4byte	0xb90
	.4byte	0xa3c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR3
	.byte	0
	.uleb128 0x29
	.4byte	.LVL11
	.4byte	0xb90
	.4byte	0xa58
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR4
	.byte	0
	.uleb128 0x29
	.4byte	.LVL12
	.4byte	0xb90
	.4byte	0xa74
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR5
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL13
	.4byte	0xb90
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR6
	.byte	0
	.byte	0
	.uleb128 0x38
	.4byte	.LASF237
	.byte	0x1
	.byte	0x27
	.byte	0x6
	.4byte	.LFB235
	.4byte	.LFE235-.LFB235
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb2c
	.uleb128 0x27
	.4byte	.LASF238
	.byte	0x1
	.byte	0x27
	.byte	0x32
	.4byte	0x3a8
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x2f
	.ascii	"err\000"
	.byte	0x1
	.byte	0x28
	.byte	0xd
	.4byte	0x33d
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x31
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x28
	.4byte	.LASF239
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.4byte	0x62
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x32
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xb1b
	.uleb128 0x28
	.4byte	.LASF228
	.byte	0x1
	.byte	0x2d
	.byte	0x18
	.4byte	0x99
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2d
	.4byte	.LVL7
	.4byte	0xb60
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x2d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL2
	.4byte	0xb9c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x34
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.ascii	"pow\000"
	.ascii	"pow\000"
	.byte	0x10
	.2byte	0x359
	.byte	0x8
	.uleb128 0x3a
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0x10
	.2byte	0x3b2
	.byte	0x8
	.uleb128 0x3a
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0x4
	.2byte	0x119
	.byte	0xc
	.uleb128 0x3a
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0xf
	.2byte	0x1ab
	.byte	0x6
	.uleb128 0x3b
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0x11
	.byte	0x6f
	.byte	0x6
	.uleb128 0x3b
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0x4
	.byte	0xf8
	.byte	0xc
	.uleb128 0x3b
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0x4
	.byte	0xe8
	.byte	0xc
	.uleb128 0x3b
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0x4
	.byte	0xbb
	.byte	0xc
	.uleb128 0x3b
	.4byte	.LASF247
	.4byte	.LASF247
	.byte	0x4
	.byte	0xd6
	.byte	0xc
	.uleb128 0x3a
	.4byte	.LASF248
	.4byte	.LASF248
	.byte	0x4
	.2byte	0x10c
	.byte	0xc
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x20
	.uleb128 0x38
	.uleb128 0xb
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
	.uleb128 0x17
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
	.uleb128 0xb
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
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
.LVUS21:
	.uleb128 0
	.uleb128 .LVU210
	.uleb128 .LVU210
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 0
.LLST21:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL67-1
	.4byte	.LFE243
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS22:
	.uleb128 0
	.uleb128 .LVU210
	.uleb128 .LVU210
	.uleb128 .LVU219
	.uleb128 .LVU219
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 0
.LLST22:
	.4byte	.LVL62
	.4byte	.LVL64
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL64
	.4byte	.LVL66
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	.LVL66
	.4byte	.LVL67-1
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL67-1
	.4byte	.LFE243
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS23:
	.uleb128 .LVU207
	.uleb128 .LVU210
	.uleb128 .LVU210
	.uleb128 .LVU218
	.uleb128 .LVU219
	.uleb128 .LVU224
	.uleb128 .LVU224
	.uleb128 .LVU227
	.uleb128 .LVU230
	.uleb128 .LVU233
	.uleb128 .LVU236
	.uleb128 .LVU239
	.uleb128 .LVU242
	.uleb128 0
.LLST23:
	.4byte	.LVL63
	.4byte	.LVL64
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL64
	.4byte	.LVL65
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL66
	.4byte	.LVL72
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL72
	.4byte	.LVL73
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL79
	.4byte	.LVL80
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL86
	.4byte	.LVL87
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL93
	.4byte	.LFE243
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS20:
	.uleb128 0
	.uleb128 .LVU201
	.uleb128 .LVU201
	.uleb128 0
.LLST20:
	.4byte	.LVL56
	.4byte	.LVL57-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL57-1
	.4byte	.LFE242
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS18:
	.uleb128 0
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 0
.LLST18:
	.4byte	.LVL44
	.4byte	.LVL45-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL45-1
	.4byte	.LFE241
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS19:
	.uleb128 .LVU188
	.uleb128 .LVU190
.LLST19:
	.4byte	.LVL45
	.4byte	.LVL46-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS16:
	.uleb128 0
	.uleb128 .LVU177
	.uleb128 .LVU177
	.uleb128 0
.LLST16:
	.4byte	.LVL34
	.4byte	.LVL35-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL35-1
	.4byte	.LFE240
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS17:
	.uleb128 .LVU177
	.uleb128 .LVU179
.LLST17:
	.4byte	.LVL35
	.4byte	.LVL36-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 0
.LLST10:
	.4byte	.LVL22
	.4byte	.LVL24
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL24
	.4byte	.LFE238
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU130
	.uleb128 .LVU132
	.uleb128 .LVU143
	.uleb128 .LVU147
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 .LVU123
	.uleb128 0
.LLST12:
	.4byte	.LVL23
	.4byte	.LFE238
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU125
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 .LVU151
	.uleb128 .LVU151
	.uleb128 .LVU152
	.uleb128 .LVU152
	.uleb128 0
.LLST13:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LVL30
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL31
	.4byte	.LFE238
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU127
	.uleb128 .LVU130
	.uleb128 .LVU130
	.uleb128 0
.LLST14:
	.4byte	.LVL23
	.4byte	.LVL24
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL24
	.4byte	.LFE238
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS15:
	.uleb128 .LVU130
	.uleb128 .LVU132
	.uleb128 .LVU145
	.uleb128 .LVU147
.LLST15:
	.4byte	.LVL24
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL28
	.4byte	.LVL29
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 0
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL16
	.4byte	.LFE237
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 0
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 0
.LLST6:
	.4byte	.LVL14
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL16
	.4byte	.LFE237
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 .LVU102
	.uleb128 .LVU104
	.uleb128 .LVU112
	.uleb128 .LVU116
.LLST7:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU100
	.uleb128 .LVU102
	.uleb128 .LVU102
	.uleb128 .LVU118
.LLST8:
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL16
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU102
	.uleb128 .LVU104
	.uleb128 .LVU114
	.uleb128 .LVU116
.LLST9:
	.4byte	.LVL16
	.4byte	.LVL17-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU67
	.uleb128 0
.LLST4:
	.4byte	.LVL9
	.4byte	.LFE236
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU33
	.uleb128 .LVU33
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1
	.4byte	.LVL8
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL8
	.4byte	.LFE235
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU9
	.uleb128 .LVU13
	.uleb128 .LVU30
	.uleb128 .LVU32
.LLST1:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU26
	.uleb128 .LVU28
.LLST2:
	.4byte	.LVL4
	.4byte	.LVL5-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU11
	.uleb128 .LVU13
	.uleb128 .LVU30
	.uleb128 .LVU32
.LLST3:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL6
	.4byte	.LVL7-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x76f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xbaa
	.4byte	0x2b
	.ascii	"NRF_SAADC_RESOLUTION_8BIT\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_RESOLUTION_10BIT\000"
	.4byte	0x37
	.ascii	"NRF_SAADC_RESOLUTION_12BIT\000"
	.4byte	0x3d
	.ascii	"NRF_SAADC_RESOLUTION_14BIT\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_INPUT_DISABLED\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_INPUT_AIN0\000"
	.4byte	0x37
	.ascii	"NRF_SAADC_INPUT_AIN1\000"
	.4byte	0x3d
	.ascii	"NRF_SAADC_INPUT_AIN2\000"
	.4byte	0x43
	.ascii	"NRF_SAADC_INPUT_AIN3\000"
	.4byte	0x49
	.ascii	"NRF_SAADC_INPUT_AIN4\000"
	.4byte	0x4f
	.ascii	"NRF_SAADC_INPUT_AIN5\000"
	.4byte	0x55
	.ascii	"NRF_SAADC_INPUT_AIN6\000"
	.4byte	0x5b
	.ascii	"NRF_SAADC_INPUT_AIN7\000"
	.4byte	0x61
	.ascii	"NRF_SAADC_INPUT_VDD\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_OVERSAMPLE_DISABLED\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_OVERSAMPLE_2X\000"
	.4byte	0x37
	.ascii	"NRF_SAADC_OVERSAMPLE_4X\000"
	.4byte	0x3d
	.ascii	"NRF_SAADC_OVERSAMPLE_8X\000"
	.4byte	0x43
	.ascii	"NRF_SAADC_OVERSAMPLE_16X\000"
	.4byte	0x49
	.ascii	"NRF_SAADC_OVERSAMPLE_32X\000"
	.4byte	0x4f
	.ascii	"NRF_SAADC_OVERSAMPLE_64X\000"
	.4byte	0x55
	.ascii	"NRF_SAADC_OVERSAMPLE_128X\000"
	.4byte	0x5b
	.ascii	"NRF_SAADC_OVERSAMPLE_256X\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_RESISTOR_DISABLED\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_RESISTOR_PULLDOWN\000"
	.4byte	0x37
	.ascii	"NRF_SAADC_RESISTOR_PULLUP\000"
	.4byte	0x3d
	.ascii	"NRF_SAADC_RESISTOR_VDD1_2\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_GAIN1_6\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_GAIN1_5\000"
	.4byte	0x37
	.ascii	"NRF_SAADC_GAIN1_4\000"
	.4byte	0x3d
	.ascii	"NRF_SAADC_GAIN1_3\000"
	.4byte	0x43
	.ascii	"NRF_SAADC_GAIN1_2\000"
	.4byte	0x49
	.ascii	"NRF_SAADC_GAIN1\000"
	.4byte	0x4f
	.ascii	"NRF_SAADC_GAIN2\000"
	.4byte	0x55
	.ascii	"NRF_SAADC_GAIN4\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_REFERENCE_INTERNAL\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_REFERENCE_VDD4\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_ACQTIME_3US\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_ACQTIME_5US\000"
	.4byte	0x37
	.ascii	"NRF_SAADC_ACQTIME_10US\000"
	.4byte	0x3d
	.ascii	"NRF_SAADC_ACQTIME_15US\000"
	.4byte	0x43
	.ascii	"NRF_SAADC_ACQTIME_20US\000"
	.4byte	0x49
	.ascii	"NRF_SAADC_ACQTIME_40US\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_MODE_SINGLE_ENDED\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_MODE_DIFFERENTIAL\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_BURST_DISABLED\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_BURST_ENABLED\000"
	.4byte	0x2b
	.ascii	"NRF_SAADC_LIMIT_LOW\000"
	.4byte	0x31
	.ascii	"NRF_SAADC_LIMIT_HIGH\000"
	.4byte	0x2b
	.ascii	"NRFX_SAADC_EVT_DONE\000"
	.4byte	0x31
	.ascii	"NRFX_SAADC_EVT_LIMIT\000"
	.4byte	0x37
	.ascii	"NRFX_SAADC_EVT_CALIBRATEDONE\000"
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
	.4byte	0x3d2
	.ascii	"saadc_config\000"
	.4byte	0x3e4
	.ascii	"calibration_completed\000"
	.4byte	0x3f6
	.ascii	"initial_calibration_completed\000"
	.4byte	0x408
	.ascii	"cb\000"
	.4byte	0x419
	.ascii	"IR_config\000"
	.4byte	0x43f
	.ascii	"conversion_buffer\000"
	.4byte	0x408
	.ascii	"cb\000"
	.4byte	0x43f
	.ascii	"conversion_buffer\000"
	.4byte	0x451
	.ascii	"IrAnalogToMM\000"
	.4byte	0x55c
	.ascii	"IrAnalogToCM\000"
	.4byte	0x5b8
	.ascii	"i16DistSens_readMM\000"
	.4byte	0x67a
	.ascii	"ui8DistSens_readCM\000"
	.4byte	0x73c
	.ascii	"ir_calibrate\000"
	.4byte	0x76f
	.ascii	"ir_read_blocking\000"
	.4byte	0x859
	.ascii	"ir_read\000"
	.4byte	0x908
	.ascii	"ir_init\000"
	.4byte	0xa8d
	.ascii	"saadc_event_handler\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x289
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xbaa
	.4byte	0x30
	.ascii	"signed char\000"
	.4byte	0x43
	.ascii	"unsigned char\000"
	.4byte	0x37
	.ascii	"uint8_t\000"
	.4byte	0x5b
	.ascii	"short int\000"
	.4byte	0x4f
	.ascii	"int16_t\000"
	.4byte	0x6e
	.ascii	"short unsigned int\000"
	.4byte	0x62
	.ascii	"uint16_t\000"
	.4byte	0x86
	.ascii	"int\000"
	.4byte	0x75
	.ascii	"int32_t\000"
	.4byte	0x9e
	.ascii	"unsigned int\000"
	.4byte	0x8d
	.ascii	"uint32_t\000"
	.4byte	0xa5
	.ascii	"long long int\000"
	.4byte	0xac
	.ascii	"long long unsigned int\000"
	.4byte	0xb3
	.ascii	"IR_Sensor_t\000"
	.4byte	0xc3
	.ascii	"ir_cb_t\000"
	.4byte	0xe0
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xe7
	.ascii	"char\000"
	.4byte	0xf3
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x108
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x263
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x2d6
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2f2
	.ascii	"FILE\000"
	.4byte	0x331
	.ascii	"ret_code_t\000"
	.4byte	0x33d
	.ascii	"nrfx_err_t\000"
	.4byte	0x349
	.ascii	"nrf_saadc_input_t\000"
	.4byte	0x359
	.ascii	"nrf_saadc_value_t\000"
	.4byte	0x366
	.ascii	"nrf_saadc_channel_config_t\000"
	.4byte	0x377
	.ascii	"_Bool\000"
	.4byte	0x37e
	.ascii	"nrfx_saadc_config_t\000"
	.4byte	0x393
	.ascii	"nrfx_saadc_evt_t\000"
	.4byte	0x3ae
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x3cb
	.ascii	"float\000"
	.4byte	0x29
	.ascii	"double\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x5c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB235
	.4byte	.LFE235-.LFB235
	.4byte	.LFB236
	.4byte	.LFE236-.LFB236
	.4byte	.LFB237
	.4byte	.LFE237-.LFB237
	.4byte	.LFB238
	.4byte	.LFE238-.LFB238
	.4byte	.LFB239
	.4byte	.LFE239-.LFB239
	.4byte	.LFB240
	.4byte	.LFE240-.LFB240
	.4byte	.LFB241
	.4byte	.LFE241-.LFB241
	.4byte	.LFB242
	.4byte	.LFE242-.LFB242
	.4byte	.LFB243
	.4byte	.LFE243-.LFB243
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	0
	.4byte	0
	.4byte	.LBB12
	.4byte	.LBE12
	.4byte	.LBB13
	.4byte	.LBE13
	.4byte	0
	.4byte	0
	.4byte	.LBB14
	.4byte	.LBE14
	.4byte	.LBB17
	.4byte	.LBE17
	.4byte	0
	.4byte	0
	.4byte	.LBB15
	.4byte	.LBE15
	.4byte	.LBB16
	.4byte	.LBE16
	.4byte	0
	.4byte	0
	.4byte	.LFB235
	.4byte	.LFE235
	.4byte	.LFB236
	.4byte	.LFE236
	.4byte	.LFB237
	.4byte	.LFE237
	.4byte	.LFB238
	.4byte	.LFE238
	.4byte	.LFB239
	.4byte	.LFE239
	.4byte	.LFB240
	.4byte	.LFE240
	.4byte	.LFB241
	.4byte	.LFE241
	.4byte	.LFB242
	.4byte	.LFE242
	.4byte	.LFB243
	.4byte	.LFE243
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
	.uleb128 0x1
	.uleb128 0x8
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x4
	.file 18 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x12
	.file 19 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x13
	.file 20 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.file 21 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x15
	.file 22 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x16
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.file 23 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x17
	.byte	0x4
	.file 24 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x18
	.file 25 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x19
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x9
	.file 26 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x1a
	.file 27 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x1b
	.byte	0x4
	.byte	0x4
	.file 28 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x1c
	.byte	0x4
	.file 29 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x1d
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.file 30 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x1e
	.byte	0x4
	.file 31 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x1f
	.byte	0x4
	.file 32 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x20
	.byte	0x4
	.file 33 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x21
	.byte	0x4
	.byte	0x4
	.file 34 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x22
	.file 35 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0xe
	.file 36 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x24
	.byte	0x4
	.file 37 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x25
	.file 38 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x26
	.byte	0x4
	.byte	0x4
	.file 39 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x27
	.byte	0x4
	.byte	0x3
	.uleb128 0x47
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x21
	.byte	0x4
	.file 40 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x28
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb6
	.uleb128 0x28
	.byte	0x4
	.file 41 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0xb7
	.uleb128 0x29
	.file 42 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x2a
	.file 43 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x2b
	.byte	0x4
	.file 44 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x2c
	.byte	0x4
	.file 45 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x2d
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x6
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x27
	.byte	0x4
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x11
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0xd
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x2c
	.byte	0x4
	.byte	0x4
	.file 46 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 47 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x2f
	.byte	0x4
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0xd
	.byte	0x4
	.file 48 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x30
	.file 49 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x31
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 50 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x32
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.file 51 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x3
	.uleb128 0x33
	.file 52 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x34
	.file 53 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x35
	.byte	0x4
	.file 54 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x36
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x4
	.file 55 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x37
	.byte	0x4
	.byte	0x4
	.file 56 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x38
	.byte	0x4
	.file 57 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x39
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0xf
	.file 58 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x3a
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 59 "../../../../../../components/libraries/delay/nrf_delay.h"
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x3b
	.byte	0x4
	.byte	0x3
	.uleb128 0x5
	.uleb128 0x10
	.byte	0x4
	.file 60 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\drivers\\defines.h"
	.byte	0x3
	.uleb128 0x6
	.uleb128 0x3c
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF85:
	.ascii	"NRF_SAADC_OVERSAMPLE_64X\000"
.LASF7:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF1:
	.ascii	"padding\000"
.LASF35:
	.ascii	"nrf_saadc_oversample_t\000"
.LASF215:
	.ascii	"initial_calibration_completed\000"
.LASF231:
	.ascii	"ir_init\000"
.LASF197:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF184:
	.ascii	"__RAL_data_utf8_space\000"
.LASF158:
	.ascii	"date_time_format\000"
.LASF179:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF5:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF175:
	.ascii	"__RAL_codeset_ascii\000"
.LASF108:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF51:
	.ascii	"nrf_saadc_burst_t\000"
.LASF165:
	.ascii	"IR_SENSOR_4\000"
.LASF60:
	.ascii	"NRF_SAADC_ACQTIME_5US\000"
.LASF139:
	.ascii	"p_cs_precedes\000"
.LASF186:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF14:
	.ascii	"done\000"
.LASF243:
	.ascii	"app_error_handler\000"
.LASF245:
	.ascii	"nrfx_saadc_sample\000"
.LASF223:
	.ascii	"IrAnalogToCM\000"
.LASF170:
	.ascii	"long long unsigned int\000"
.LASF249:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF50:
	.ascii	"nrf_saadc_mode_t\000"
.LASF111:
	.ascii	"__locale_s\000"
.LASF189:
	.ascii	"__user_get_time_of_day\000"
.LASF196:
	.ascii	"_vectors\000"
.LASF15:
	.ascii	"limit\000"
.LASF192:
	.ascii	"ITM_RxBuffer\000"
.LASF44:
	.ascii	"pin_p\000"
.LASF107:
	.ascii	"next\000"
.LASF130:
	.ascii	"int_curr_symbol\000"
.LASF154:
	.ascii	"abbrev_month_names\000"
.LASF25:
	.ascii	"int16_t\000"
.LASF169:
	.ascii	"long long int\000"
.LASF167:
	.ascii	"signed char\000"
.LASF173:
	.ascii	"__RAL_global_locale\000"
.LASF0:
	.ascii	"module_id\000"
.LASF239:
	.ascii	"average\000"
.LASF124:
	.ascii	"__wctomb\000"
.LASF238:
	.ascii	"p_event\000"
.LASF83:
	.ascii	"NRF_SAADC_OVERSAMPLE_16X\000"
.LASF98:
	.ascii	"NRF_SAADC_RESOLUTION_8BIT\000"
.LASF137:
	.ascii	"int_frac_digits\000"
.LASF216:
	.ascii	"saadc_config\000"
.LASF225:
	.ascii	"measurement\000"
.LASF126:
	.ascii	"long int\000"
.LASF66:
	.ascii	"NRF_SAADC_REFERENCE_VDD4\000"
.LASF217:
	.ascii	"IR_config\000"
.LASF210:
	.ascii	"nrfx_saadc_evt_t\000"
.LASF116:
	.ascii	"__RAL_locale_data_t\000"
.LASF183:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF203:
	.ascii	"stdin\000"
.LASF90:
	.ascii	"NRF_SAADC_INPUT_AIN1\000"
.LASF120:
	.ascii	"__tolower\000"
.LASF56:
	.ascii	"NRF_SAADC_BURST_ENABLED\000"
.LASF46:
	.ascii	"nrf_saadc_resistor_t\000"
.LASF6:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF2:
	.ascii	"uint16_t\000"
.LASF166:
	.ascii	"double\000"
.LASF118:
	.ascii	"__isctype\000"
.LASF219:
	.ascii	"reading\000"
.LASF49:
	.ascii	"nrf_saadc_acqtime_t\000"
.LASF102:
	.ascii	"__irq_masks\000"
.LASF152:
	.ascii	"abbrev_day_names\000"
.LASF161:
	.ascii	"__wchar\000"
.LASF241:
	.ascii	"nrfx_saadc_calibrate_offset\000"
.LASF52:
	.ascii	"nrf_saadc_input_t\000"
.LASF172:
	.ascii	"ir_cb_t\000"
.LASF101:
	.ascii	"NRF_SAADC_RESOLUTION_14BIT\000"
.LASF38:
	.ascii	"resistor_n\000"
.LASF37:
	.ascii	"resistor_p\000"
.LASF134:
	.ascii	"mon_grouping\000"
.LASF121:
	.ascii	"__iswctype\000"
.LASF144:
	.ascii	"n_sign_posn\000"
.LASF97:
	.ascii	"NRF_SAADC_INPUT_VDD\000"
.LASF59:
	.ascii	"NRF_SAADC_ACQTIME_3US\000"
.LASF228:
	.ascii	"LOCAL_ERR_CODE\000"
.LASF236:
	.ascii	"ir_read\000"
.LASF171:
	.ascii	"IR_Sensor_t\000"
.LASF145:
	.ascii	"int_p_cs_precedes\000"
.LASF105:
	.ascii	"unsigned int\000"
.LASF147:
	.ascii	"int_p_sep_by_space\000"
.LASF193:
	.ascii	"SystemCoreClock\000"
.LASF155:
	.ascii	"am_pm_indicator\000"
.LASF32:
	.ascii	"interrupt_priority\000"
.LASF182:
	.ascii	"__RAL_data_utf8_period\000"
.LASF240:
	.ascii	"ceil\000"
.LASF129:
	.ascii	"grouping\000"
.LASF247:
	.ascii	"nrfx_saadc_channel_init\000"
.LASF123:
	.ascii	"__towlower\000"
.LASF63:
	.ascii	"NRF_SAADC_ACQTIME_20US\000"
.LASF187:
	.ascii	"__RAL_data_empty_string\000"
.LASF24:
	.ascii	"nrf_saadc_value_t\000"
.LASF128:
	.ascii	"thousands_sep\000"
.LASF112:
	.ascii	"__category\000"
.LASF211:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF195:
	.ascii	"__StackLimit\000"
.LASF91:
	.ascii	"NRF_SAADC_INPUT_AIN2\000"
.LASF198:
	.ascii	"nrf_nvic_state_t\000"
.LASF12:
	.ascii	"data\000"
.LASF136:
	.ascii	"negative_sign\000"
.LASF23:
	.ascii	"size\000"
.LASF3:
	.ascii	"short unsigned int\000"
.LASF114:
	.ascii	"name\000"
.LASF222:
	.ascii	"IrAnalogToMM\000"
.LASF209:
	.ascii	"nrfx_saadc_config_t\000"
.LASF251:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF234:
	.ascii	"channel_2_config\000"
.LASF220:
	.ascii	"sensor\000"
.LASF11:
	.ascii	"type\000"
.LASF71:
	.ascii	"NRF_SAADC_GAIN1_2\000"
.LASF58:
	.ascii	"NRF_SAADC_MODE_DIFFERENTIAL\000"
.LASF151:
	.ascii	"day_names\000"
.LASF103:
	.ascii	"__cr_flag\000"
.LASF138:
	.ascii	"frac_digits\000"
.LASF201:
	.ascii	"timeval\000"
.LASF204:
	.ascii	"stdout\000"
.LASF28:
	.ascii	"NRFX_SAADC_EVT_LIMIT\000"
.LASF40:
	.ascii	"reference\000"
.LASF61:
	.ascii	"NRF_SAADC_ACQTIME_10US\000"
.LASF250:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\drivers\\ir.c\000"
.LASF113:
	.ascii	"__RAL_locale_t\000"
.LASF157:
	.ascii	"time_format\000"
.LASF127:
	.ascii	"decimal_point\000"
.LASF135:
	.ascii	"positive_sign\000"
.LASF119:
	.ascii	"__toupper\000"
.LASF45:
	.ascii	"pin_n\000"
.LASF34:
	.ascii	"nrf_saadc_resolution_t\000"
.LASF206:
	.ascii	"ret_code_t\000"
.LASF4:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF177:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF156:
	.ascii	"date_format\000"
.LASF115:
	.ascii	"codeset\000"
.LASF106:
	.ascii	"decode\000"
.LASF89:
	.ascii	"NRF_SAADC_INPUT_AIN0\000"
.LASF22:
	.ascii	"p_buffer\000"
.LASF39:
	.ascii	"gain\000"
.LASF92:
	.ascii	"NRF_SAADC_INPUT_AIN3\000"
.LASF93:
	.ascii	"NRF_SAADC_INPUT_AIN4\000"
.LASF94:
	.ascii	"NRF_SAADC_INPUT_AIN5\000"
.LASF95:
	.ascii	"NRF_SAADC_INPUT_AIN6\000"
.LASF96:
	.ascii	"NRF_SAADC_INPUT_AIN7\000"
.LASF125:
	.ascii	"__mbtowc\000"
.LASF199:
	.ascii	"nrf_nvic_state\000"
.LASF81:
	.ascii	"NRF_SAADC_OVERSAMPLE_4X\000"
.LASF143:
	.ascii	"p_sign_posn\000"
.LASF207:
	.ascii	"nrfx_err_t\000"
.LASF174:
	.ascii	"__RAL_c_locale\000"
.LASF62:
	.ascii	"NRF_SAADC_ACQTIME_15US\000"
.LASF233:
	.ascii	"channel_1_config\000"
.LASF54:
	.ascii	"NRF_SAADC_LIMIT_HIGH\000"
.LASF29:
	.ascii	"NRFX_SAADC_EVT_CALIBRATEDONE\000"
.LASF237:
	.ascii	"saadc_event_handler\000"
.LASF188:
	.ascii	"__user_set_time_of_day\000"
.LASF146:
	.ascii	"int_n_cs_precedes\000"
.LASF176:
	.ascii	"__RAL_codeset_utf8\000"
.LASF77:
	.ascii	"NRF_SAADC_RESISTOR_PULLUP\000"
.LASF21:
	.ascii	"nrf_saadc_limit_t\000"
.LASF82:
	.ascii	"NRF_SAADC_OVERSAMPLE_8X\000"
.LASF160:
	.ascii	"__state\000"
.LASF55:
	.ascii	"NRF_SAADC_BURST_DISABLED\000"
.LASF80:
	.ascii	"NRF_SAADC_OVERSAMPLE_2X\000"
.LASF194:
	.ascii	"__StackTop\000"
.LASF244:
	.ascii	"nrfx_saadc_sample_convert\000"
.LASF36:
	.ascii	"_Bool\000"
.LASF168:
	.ascii	"int32_t\000"
.LASF10:
	.ascii	"unsigned char\000"
.LASF78:
	.ascii	"NRF_SAADC_RESISTOR_VDD1_2\000"
.LASF178:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF72:
	.ascii	"NRF_SAADC_GAIN1\000"
.LASF73:
	.ascii	"NRF_SAADC_GAIN2\000"
.LASF74:
	.ascii	"NRF_SAADC_GAIN4\000"
.LASF26:
	.ascii	"short int\000"
.LASF224:
	.ascii	"i16DistSens_readMM\000"
.LASF110:
	.ascii	"__RAL_error_decoder_s\000"
.LASF191:
	.ascii	"__RAL_error_decoder_head\000"
.LASF242:
	.ascii	"nrf_log_frontend_std_0\000"
.LASF75:
	.ascii	"NRF_SAADC_RESISTOR_DISABLED\000"
.LASF159:
	.ascii	"__mbstate_s\000"
.LASF57:
	.ascii	"NRF_SAADC_MODE_SINGLE_ENDED\000"
.LASF200:
	.ascii	"FILE\000"
.LASF218:
	.ascii	"conversion_buffer\000"
.LASF31:
	.ascii	"oversample\000"
.LASF27:
	.ascii	"NRFX_SAADC_EVT_DONE\000"
.LASF18:
	.ascii	"channel\000"
.LASF99:
	.ascii	"NRF_SAADC_RESOLUTION_10BIT\000"
.LASF133:
	.ascii	"mon_thousands_sep\000"
.LASF30:
	.ascii	"resolution\000"
.LASF104:
	.ascii	"uint32_t\000"
.LASF86:
	.ascii	"NRF_SAADC_OVERSAMPLE_128X\000"
.LASF122:
	.ascii	"__towupper\000"
.LASF53:
	.ascii	"NRF_SAADC_LIMIT_LOW\000"
.LASF149:
	.ascii	"int_p_sign_posn\000"
.LASF131:
	.ascii	"currency_symbol\000"
.LASF109:
	.ascii	"char\000"
.LASF42:
	.ascii	"mode\000"
.LASF140:
	.ascii	"p_sep_by_space\000"
.LASF230:
	.ascii	"ir_calibrate\000"
.LASF47:
	.ascii	"nrf_saadc_gain_t\000"
.LASF248:
	.ascii	"nrfx_saadc_buffer_convert\000"
.LASF212:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF100:
	.ascii	"NRF_SAADC_RESOLUTION_12BIT\000"
.LASF43:
	.ascii	"burst\000"
.LASF9:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF8:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF117:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF65:
	.ascii	"NRF_SAADC_REFERENCE_INTERNAL\000"
.LASF70:
	.ascii	"NRF_SAADC_GAIN1_3\000"
.LASF69:
	.ascii	"NRF_SAADC_GAIN1_4\000"
.LASF68:
	.ascii	"NRF_SAADC_GAIN1_5\000"
.LASF67:
	.ascii	"NRF_SAADC_GAIN1_6\000"
.LASF87:
	.ascii	"NRF_SAADC_OVERSAMPLE_256X\000"
.LASF227:
	.ascii	"ir_read_blocking\000"
.LASF208:
	.ascii	"nrf_saadc_channel_config_t\000"
.LASF150:
	.ascii	"int_n_sign_posn\000"
.LASF33:
	.ascii	"low_power_mode\000"
.LASF205:
	.ascii	"stderr\000"
.LASF88:
	.ascii	"NRF_SAADC_INPUT_DISABLED\000"
.LASF180:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF232:
	.ascii	"channel_0_config\000"
.LASF48:
	.ascii	"nrf_saadc_reference_t\000"
.LASF79:
	.ascii	"NRF_SAADC_OVERSAMPLE_DISABLED\000"
.LASF214:
	.ascii	"calibration_completed\000"
.LASF13:
	.ascii	"nrfx_saadc_evt_type_t\000"
.LASF190:
	.ascii	"__RAL_error_decoder_t\000"
.LASF141:
	.ascii	"n_cs_precedes\000"
.LASF20:
	.ascii	"uint8_t\000"
.LASF84:
	.ascii	"NRF_SAADC_OVERSAMPLE_32X\000"
.LASF64:
	.ascii	"NRF_SAADC_ACQTIME_40US\000"
.LASF213:
	.ascii	"float\000"
.LASF153:
	.ascii	"month_names\000"
.LASF76:
	.ascii	"NRF_SAADC_RESISTOR_PULLDOWN\000"
.LASF229:
	.ascii	"ir_cb\000"
.LASF148:
	.ascii	"int_n_sep_by_space\000"
.LASF246:
	.ascii	"nrfx_saadc_init\000"
.LASF142:
	.ascii	"n_sep_by_space\000"
.LASF202:
	.ascii	"__RAL_FILE\000"
.LASF162:
	.ascii	"IR_SENSOR_1\000"
.LASF163:
	.ascii	"IR_SENSOR_2\000"
.LASF164:
	.ascii	"IR_SENSOR_3\000"
.LASF185:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF181:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF235:
	.ascii	"channel_3_config\000"
.LASF132:
	.ascii	"mon_decimal_point\000"
.LASF41:
	.ascii	"acq_time\000"
.LASF221:
	.ascii	"result\000"
.LASF226:
	.ascii	"ui8DistSens_readCM\000"
.LASF17:
	.ascii	"nrfx_saadc_limit_evt_t\000"
.LASF16:
	.ascii	"nrfx_saadc_done_evt_t\000"
.LASF19:
	.ascii	"limit_type\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
