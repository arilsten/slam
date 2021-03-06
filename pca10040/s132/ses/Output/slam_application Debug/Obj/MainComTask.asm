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
	.file	"MainComTask.c"
	.text
.Ltext0:
	.section	.rodata.vMainCommunicationTask.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"success: %d\000"
	.align	2
.LC1:
	.ascii	"Handshake Completed\000"
	.align	2
.LC2:
	.ascii	"NEW Command in\000"
	.align	2
.LC3:
	.ascii	"MESSAGE WAS: TYPE_CONFIRM\000"
	.align	2
.LC4:
	.ascii	"MESSAGE WAS: TYPE_PING\000"
	.align	2
.LC5:
	.ascii	"MESSAGE WAS: TYPE_ORDER x: %d,Y:%d\000"
	.align	2
.LC6:
	.ascii	"MESSAGE WAS: TYPE_PAUSE\000"
	.align	2
.LC7:
	.ascii	"MESSAGE WAS: TYPE_UNPAUSE\000"
	.align	2
.LC8:
	.ascii	"MESSAGE WAS: TYPE_FINISH\000"
	.align	2
.LC9:
	.ascii	"message:case default No type %d\000"
	.global	__aeabi_i2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2f
	.align	2
.LC10:
	.ascii	"xPoseMutex not available!\000"
	.global	__aeabi_f2d
	.global	__aeabi_dsub
	.global	__aeabi_d2iz
	.section	.text.vMainCommunicationTask,"ax",%progbits
	.align	1
	.global	vMainCommunicationTask
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vMainCommunicationTask, %function
vMainCommunicationTask:
.LVL0:
.LFB267:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\software\\MainComTask.c"
	.loc 1 35 48 view -0
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 35 48 is_stmt 0 view .LVU1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LCFI0:
	vpush.64	{d8}
.LCFI1:
	sub	sp, sp, #52
.LCFI2:
	.loc 1 36 5 is_stmt 1 view .LVU2
	.loc 1 36 23 is_stmt 0 view .LVU3
	movs	r3, #0
	str	r3, [sp, #40]	@ float
	str	r3, [sp, #44]	@ float
	.loc 1 38 5 is_stmt 1 view .LVU4
	.loc 1 38 8 is_stmt 0 view .LVU5
	ldr	r3, .L35+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 38 7 view .LVU6
	cbnz	r3, .L28
.LBB2:
	.loc 1 119 3 is_stmt 1 view .LVU7
	.loc 1 119 11 is_stmt 0 view .LVU8
	movs	r3, #0
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	.loc 1 120 3 is_stmt 1 view .LVU9
	.loc 1 121 3 view .LVU10
	.loc 1 121 11 is_stmt 0 view .LVU11
	str	r3, [sp]
	b	.L25
.L28:
.LBE2:
.LBB7:
	.loc 1 39 3 is_stmt 1 view .LVU12
	.loc 1 40 3 view .LVU13
	bl	server_communication_init
.LVL1:
	.loc 1 41 3 view .LVU14
	ldr	r3, .L35+12
	ldr	r0, [r3]
	bl	vTaskResume
.LVL2:
	.loc 1 43 3 view .LVU15
	.loc 1 45 3 view .LVU16
	.loc 1 43 11 is_stmt 0 view .LVU17
	movs	r4, #0
	.loc 1 45 9 view .LVU18
	b	.L3
.LVL3:
.L4:
	.loc 1 46 4 is_stmt 1 view .LVU19
	.loc 1 46 14 is_stmt 0 view .LVU20
	bl	server_connect
.LVL4:
	mov	r4, r0
.LVL5:
	.loc 1 47 4 is_stmt 1 view .LVU21
	mov	r0, #1000
	bl	vTaskDelay
.LVL6:
.L3:
	.loc 1 45 9 view .LVU22
	cmp	r4, #0
	beq	.L4
	.loc 1 50 3 discriminator 3 view .LVU23
	.loc 1 50 76 discriminator 3 view .LVU24
	.loc 1 50 131 discriminator 3 view .LVU25
	.loc 1 50 212 is_stmt 0 discriminator 3 view .LVU26
	ldr	r5, .L35+16
	ldrh	r0, [r5]
	.loc 1 50 223 discriminator 3 view .LVU27
	lsls	r0, r0, #16
	.loc 1 50 131 discriminator 3 view .LVU28
	mov	r2, r4
	ldr	r1, .L35+20
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL7:
	.loc 1 50 271 is_stmt 1 discriminator 3 view .LVU29
	.loc 1 51 3 discriminator 3 view .LVU30
	movs	r0, #200
	bl	vTaskDelay
.LVL8:
	.loc 1 52 3 discriminator 3 view .LVU31
	bl	send_handshake
.LVL9:
	.loc 1 53 3 discriminator 3 view .LVU32
	.loc 1 53 76 discriminator 3 view .LVU33
	.loc 1 53 131 discriminator 3 view .LVU34
	.loc 1 53 212 is_stmt 0 discriminator 3 view .LVU35
	ldrh	r0, [r5]
	.loc 1 53 223 discriminator 3 view .LVU36
	lsls	r0, r0, #16
	.loc 1 53 131 discriminator 3 view .LVU37
	ldr	r1, .L35+24
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL10:
	b	.L6
.LVL11:
.L11:
	.loc 1 66 6 is_stmt 1 discriminator 3 view .LVU38
	.loc 1 66 79 discriminator 3 view .LVU39
	.loc 1 66 134 discriminator 3 view .LVU40
	.loc 1 66 215 is_stmt 0 discriminator 3 view .LVU41
	ldr	r3, .L35+16
	ldrh	r0, [r3]
	.loc 1 66 226 discriminator 3 view .LVU42
	lsls	r0, r0, #16
	.loc 1 66 134 discriminator 3 view .LVU43
	ldr	r1, .L35+28
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL12:
	.loc 1 66 267 is_stmt 1 discriminator 3 view .LVU44
	.loc 1 68 6 discriminator 3 view .LVU45
	.loc 1 68 17 is_stmt 0 discriminator 3 view .LVU46
	ldr	r3, .L35+32
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 71 6 is_stmt 1 discriminator 3 view .LVU47
.L6:
	.loc 1 53 258 discriminator 5 view .LVU48
	.loc 1 54 3 discriminator 5 view .LVU49
	.loc 1 56 4 discriminator 5 view .LVU50
	.loc 1 56 8 is_stmt 0 discriminator 5 view .LVU51
	mov	r1, #-1
	ldr	r3, .L35+36
	ldr	r0, [r3]
	bl	xQueueSemaphoreTake
.LVL13:
	.loc 1 56 7 discriminator 5 view .LVU52
	cmp	r0, #1
	bne	.L6
	.loc 1 57 5 is_stmt 1 discriminator 3 view .LVU53
	.loc 1 57 78 discriminator 3 view .LVU54
	.loc 1 57 133 discriminator 3 view .LVU55
	.loc 1 57 214 is_stmt 0 discriminator 3 view .LVU56
	ldr	r3, .L35+16
	ldrh	r0, [r3]
	.loc 1 57 225 discriminator 3 view .LVU57
	lsls	r0, r0, #16
	.loc 1 57 133 discriminator 3 view .LVU58
	ldr	r1, .L35+40
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL14:
	.loc 1 57 255 is_stmt 1 discriminator 3 view .LVU59
	.loc 1 61 5 discriminator 3 view .LVU60
	.loc 1 61 16 is_stmt 0 discriminator 3 view .LVU61
	add	r4, sp, #12
	ldr	r5, .L35+44
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldm	r5, {r0, r1, r2}
	stmia	r4!, {r0, r1}
	strh	r2, [r4]	@ movhi
	.loc 1 64 5 is_stmt 1 discriminator 3 view .LVU62
	.loc 1 64 23 is_stmt 0 discriminator 3 view .LVU63
	ldrb	r2, [sp, #12]	@ zero_extendqisi2
	subs	r3, r2, #2
	cmp	r3, #6
	bhi	.L7
	adr	r1, .L9
	ldr	pc, [r1, r3, lsl #2]
	.p2align 2
.L9:
	.word	.L14+1
	.word	.L7+1
	.word	.L13+1
	.word	.L12+1
	.word	.L11+1
	.word	.L10+1
	.word	.L8+1
	.p2align 1
.L8:
	.loc 1 74 6 is_stmt 1 discriminator 3 view .LVU64
	.loc 1 74 79 discriminator 3 view .LVU65
	.loc 1 74 134 discriminator 3 view .LVU66
	.loc 1 74 215 is_stmt 0 discriminator 3 view .LVU67
	ldr	r3, .L35+16
	ldrh	r0, [r3]
	.loc 1 74 226 discriminator 3 view .LVU68
	lsls	r0, r0, #16
	.loc 1 74 134 discriminator 3 view .LVU69
	ldr	r1, .L35+48
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL15:
	.loc 1 74 264 is_stmt 1 discriminator 3 view .LVU70
	.loc 1 75 6 discriminator 3 view .LVU71
	bl	send_ping_response
.LVL16:
	.loc 1 76 6 discriminator 3 view .LVU72
	b	.L6
.L14:
	.loc 1 79 6 discriminator 3 view .LVU73
	.loc 1 79 79 discriminator 3 view .LVU74
	.loc 1 79 134 discriminator 3 view .LVU75
	.loc 1 79 215 is_stmt 0 discriminator 3 view .LVU76
	ldr	r3, .L35+16
	ldrh	r0, [r3]
	.loc 1 79 226 discriminator 3 view .LVU77
	lsls	r0, r0, #16
	.loc 1 79 307 discriminator 3 view .LVU78
	ldrsh	r5, [sp, #13]	@ unaligned
	.loc 1 79 347 discriminator 3 view .LVU79
	ldrsh	r4, [sp, #15]	@ unaligned
	.loc 1 79 134 discriminator 3 view .LVU80
	mov	r3, r4
	mov	r2, r5
	ldr	r1, .L35+52
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_2
.LVL17:
	.loc 1 79 356 is_stmt 1 discriminator 3 view .LVU81
	.loc 1 80 6 discriminator 3 view .LVU82
	.loc 1 80 17 is_stmt 0 discriminator 3 view .LVU83
	vmov	s15, r5	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #40]
	.loc 1 81 6 is_stmt 1 discriminator 3 view .LVU84
	.loc 1 81 17 is_stmt 0 discriminator 3 view .LVU85
	vmov	s15, r4	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #44]
	.loc 1 83 6 is_stmt 1 discriminator 3 view .LVU86
	movs	r3, #0
	movs	r2, #100
	add	r1, sp, #40
	ldr	r0, .L35+56
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL18:
	.loc 1 84 6 discriminator 3 view .LVU87
	b	.L6
.L13:
	.loc 1 87 6 discriminator 3 view .LVU88
	.loc 1 87 79 discriminator 3 view .LVU89
	.loc 1 87 134 discriminator 3 view .LVU90
	.loc 1 87 215 is_stmt 0 discriminator 3 view .LVU91
	ldr	r3, .L35+16
	ldrh	r0, [r3]
	.loc 1 87 226 discriminator 3 view .LVU92
	lsls	r0, r0, #16
	.loc 1 87 134 discriminator 3 view .LVU93
	ldr	r1, .L35+60
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL19:
	.loc 1 87 265 is_stmt 1 discriminator 3 view .LVU94
	.loc 1 90 6 discriminator 3 view .LVU95
	.loc 1 90 14 is_stmt 0 discriminator 3 view .LVU96
	ldr	r3, .L35+64
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 93 6 is_stmt 1 discriminator 3 view .LVU97
	.loc 1 93 17 is_stmt 0 discriminator 3 view .LVU98
	movs	r3, #0
	str	r3, [sp, #40]	@ float
	.loc 1 94 6 is_stmt 1 discriminator 3 view .LVU99
	.loc 1 94 17 is_stmt 0 discriminator 3 view .LVU100
	str	r3, [sp, #44]	@ float
	.loc 1 95 6 is_stmt 1 discriminator 3 view .LVU101
	movs	r3, #0
	movs	r2, #100
	add	r1, sp, #40
	ldr	r0, .L35+56
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL20:
	.loc 1 96 6 discriminator 3 view .LVU102
	b	.L6
.L12:
	.loc 1 99 6 discriminator 3 view .LVU103
	.loc 1 99 79 discriminator 3 view .LVU104
	.loc 1 99 134 discriminator 3 view .LVU105
	.loc 1 99 215 is_stmt 0 discriminator 3 view .LVU106
	ldr	r3, .L35+16
	ldrh	r0, [r3]
	.loc 1 99 226 discriminator 3 view .LVU107
	lsls	r0, r0, #16
	.loc 1 99 134 discriminator 3 view .LVU108
	ldr	r1, .L35+68
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL21:
	.loc 1 99 267 is_stmt 1 discriminator 3 view .LVU109
	.loc 1 101 6 discriminator 3 view .LVU110
	.loc 1 101 14 is_stmt 0 discriminator 3 view .LVU111
	ldr	r3, .L35+64
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 103 6 is_stmt 1 discriminator 3 view .LVU112
	b	.L6
.L10:
	.loc 1 106 6 discriminator 3 view .LVU113
	.loc 1 106 79 discriminator 3 view .LVU114
	.loc 1 106 134 discriminator 3 view .LVU115
	.loc 1 106 215 is_stmt 0 discriminator 3 view .LVU116
	ldr	r3, .L35+16
	ldrh	r0, [r3]
	.loc 1 106 226 discriminator 3 view .LVU117
	lsls	r0, r0, #16
	.loc 1 106 134 discriminator 3 view .LVU118
	ldr	r1, .L35+72
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL22:
	.loc 1 106 266 is_stmt 1 discriminator 3 view .LVU119
	.loc 1 108 6 discriminator 3 view .LVU120
	.loc 1 108 17 is_stmt 0 discriminator 3 view .LVU121
	ldr	r3, .L35+32
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 110 6 is_stmt 1 discriminator 3 view .LVU122
	b	.L6
.L7:
	.loc 1 113 6 discriminator 3 view .LVU123
	.loc 1 113 79 discriminator 3 view .LVU124
	.loc 1 113 134 discriminator 3 view .LVU125
	.loc 1 113 215 is_stmt 0 discriminator 3 view .LVU126
	ldr	r3, .L35+16
	ldrh	r0, [r3]
	.loc 1 113 226 discriminator 3 view .LVU127
	lsls	r0, r0, #16
	.loc 1 113 134 discriminator 3 view .LVU128
	ldr	r1, .L35+76
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_1
.LVL23:
	b	.L6
.L17:
	.loc 1 113 134 discriminator 3 view .LVU129
.LBE7:
.LBB8:
	.loc 1 132 7 is_stmt 1 view .LVU130
	.loc 1 132 10 is_stmt 0 view .LVU131
	movs	r1, #20
	ldr	r3, .L35+80
	ldr	r0, [r3]
	bl	xQueueSemaphoreTake
.LVL24:
	.loc 1 132 9 view .LVU132
	cmp	r0, #1
	beq	.L29
	.loc 1 139 8 is_stmt 1 discriminator 3 view .LVU133
	.loc 1 139 81 discriminator 3 view .LVU134
	.loc 1 139 136 discriminator 3 view .LVU135
	.loc 1 139 217 is_stmt 0 discriminator 3 view .LVU136
	ldr	r3, .L35+16
	ldrh	r0, [r3]
	.loc 1 139 228 discriminator 3 view .LVU137
	lsls	r0, r0, #16
	.loc 1 139 136 discriminator 3 view .LVU138
	ldr	r1, .L35+84
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL25:
	b	.L19
.L29:
	.loc 1 133 8 is_stmt 1 view .LVU139
	.loc 1 133 17 is_stmt 0 view .LVU140
	ldrsh	r2, [sp, #6]
	.loc 1 133 15 view .LVU141
	ldr	r3, .L35+88
	strh	r2, [r3]	@ movhi
	.loc 1 134 8 is_stmt 1 view .LVU142
	.loc 1 134 17 is_stmt 0 view .LVU143
	ldrsh	r2, [sp, #8]
	.loc 1 134 15 view .LVU144
	ldr	r3, .L35+92
	strh	r2, [r3]	@ movhi
	.loc 1 135 8 is_stmt 1 view .LVU145
	.loc 1 135 45 is_stmt 0 view .LVU146
	ldrsh	r0, [sp, #10]
	bl	__aeabi_i2d
.LVL26:
	adr	r3, .L35
	ldrd	r2, [r3]
	bl	__aeabi_dmul
.LVL27:
	.loc 1 135 45 view .LVU147
	movs	r2, #0
	ldr	r3, .L35+96
	bl	__aeabi_ddiv
.LVL28:
	bl	__aeabi_d2f
.LVL29:
	.loc 1 135 19 view .LVU148
	ldr	r3, .L35+100
	str	r0, [r3]	@ float
	.loc 1 137 8 is_stmt 1 view .LVU149
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, .L35+80
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL30:
	b	.L19
.L33:
.LBB3:
	.loc 1 158 8 view .LVU150
	.loc 1 158 44 is_stmt 0 view .LVU151
	ldr	r3, .L35+104
	ldrsh	r4, [r3]
	subs	r4, r6, r4
	.loc 1 158 62 view .LVU152
	ldr	r3, .L35+108
	ldrsh	r0, [r3]
	.loc 1 158 27 view .LVU153
	subs	r0, r5, r0
	bl	__aeabi_i2d
.LVL31:
	vmov	d8, r0, r1
	mov	r0, r4
	bl	__aeabi_i2d
.LVL32:
	vmov.f32	s2, s16
	vmov.f32	s3, s17
	vmov	d0, r0, r1
	bl	atan2
.LVL33:
	vmov	r10, fp, d0
	.loc 1 158 69 view .LVU154
	ldr	r3, .L35+112
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
.LVL34:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r10
	mov	r1, fp
	bl	__aeabi_dsub
.LVL35:
	.loc 1 158 80 view .LVU155
	movs	r2, #0
	ldr	r3, .L35+96
	bl	__aeabi_dmul
.LVL36:
	.loc 1 158 87 view .LVU156
	adr	r3, .L35
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL37:
	.loc 1 158 16 view .LVU157
	bl	__aeabi_d2iz
.LVL38:
	.loc 1 159 8 is_stmt 1 view .LVU158
	.loc 1 159 26 is_stmt 0 view .LVU159
	sxth	r0, r0
	.loc 1 159 26 view .LVU160
	bl	validWaypoint
.LVL39:
	.loc 1 159 26 view .LVU161
	mov	r4, r0
.LVL40:
	.loc 1 159 26 view .LVU162
.LBE3:
	b	.L21
.L34:
	.loc 1 164 43 discriminator 2 view .LVU163
	cmp	r9, r6
	bne	.L22
	b	.L19
.L36:
	.align	3
.L35:
	.word	1413754136
	.word	1074340347
	.word	USEBLUETOOTH
	.word	arq_task
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC0
	.word	.LC1
	.word	.LC3
	.word	gHandshook
	.word	xCommandReadyBSem
	.word	.LC2
	.word	.LANCHOR0
	.word	.LC4
	.word	.LC5
	.word	poseControllerQ
	.word	.LC6
	.word	gPaused
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	xPoseMutex
	.word	.LC10
	.word	gX_hat
	.word	gY_hat
	.word	1080459264
	.word	gTheta_hat
	.word	.LANCHOR3
	.word	.LANCHOR2
	.word	.LANCHOR1
.LVL41:
.L16:
	.loc 1 178 5 is_stmt 1 view .LVU164
	.loc 1 178 30 is_stmt 0 view .LVU165
	ldrsh	r7, [sp]
	.loc 1 179 5 is_stmt 1 view .LVU166
	.loc 1 179 30 is_stmt 0 view .LVU167
	ldrsh	r10, [sp, #2]
	.loc 1 180 5 is_stmt 1 view .LVU168
	.loc 1 180 19 is_stmt 0 view .LVU169
	ldrsh	r4, [sp, #5]	@ unaligned
	.loc 1 180 17 view .LVU170
	strh	r4, [sp]	@ movhi
	.loc 1 181 5 is_stmt 1 view .LVU171
	.loc 1 181 19 is_stmt 0 view .LVU172
	ldrsh	r5, [sp, #7]	@ unaligned
	.loc 1 181 17 view .LVU173
	strh	r5, [sp, #2]	@ movhi
	.loc 1 183 5 is_stmt 1 view .LVU174
	ldr	r6, .L37+8
	movs	r1, #20
	ldr	r0, [r6]
	bl	xQueueSemaphoreTake
.LVL42:
	.loc 1 184 5 view .LVU175
	.loc 1 184 14 is_stmt 0 view .LVU176
	ldr	r3, .L37+12
	ldr	r2, [r3]	@ float
	ldr	r3, .L37+16
	str	r2, [r3]	@ float
	.loc 1 185 5 is_stmt 1 view .LVU177
	.loc 1 185 10 is_stmt 0 view .LVU178
	ldr	r3, .L37+20
	ldrh	r2, [r3]
	ldr	r3, .L37+24
	strh	r2, [r3]	@ movhi
	.loc 1 186 5 is_stmt 1 view .LVU179
	.loc 1 186 10 is_stmt 0 view .LVU180
	ldr	r3, .L37+28
	ldrh	r2, [r3]
	ldr	r3, .L37+32
	strh	r2, [r3]	@ movhi
	.loc 1 187 5 is_stmt 1 view .LVU181
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, [r6]
	bl	xQueueGenericSend
.LVL43:
	.loc 1 189 5 view .LVU182
	.loc 1 189 8 is_stmt 0 view .LVU183
	ldr	r3, .L37+36
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 189 7 view .LVU184
	cmp	r3, #0
	bne	.L30
	.loc 1 193 22 view .LVU185
	movs	r0, #1
.L23:
.LVL44:
	.loc 1 198 5 is_stmt 1 view .LVU186
	.loc 1 198 7 is_stmt 0 view .LVU187
	cmp	r7, r4
	beq	.L31
.L24:
	.loc 1 198 77 discriminator 3 view .LVU188
	cmp	r0, #0
	bne	.L32
.LVL45:
.L19:
	.loc 1 205 4 is_stmt 1 view .LVU189
	mov	r0, #500
	bl	vTaskDelay
.LVL46:
	.loc 1 124 8 view .LVU190
.L25:
	.loc 1 122 2 view .LVU191
	.loc 1 124 3 view .LVU192
	.loc 1 125 4 view .LVU193
	movs	r2, #8
	add	r1, sp, #4
	movs	r0, #114
	bl	i2cReciveNOADDR
.LVL47:
	.loc 1 127 4 view .LVU194
	.loc 1 127 7 is_stmt 0 view .LVU195
	ldr	r3, .L37+40
	ldrb	r4, [r3]	@ zero_extendqisi2
	.loc 1 127 6 view .LVU196
	cmp	r4, #0
	beq	.L16
	.loc 1 128 5 is_stmt 1 view .LVU197
	.loc 1 128 19 is_stmt 0 view .LVU198
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
	.loc 1 128 5 view .LVU199
	cmp	r3, #1
	beq	.L17
	cmp	r3, #2
	bne	.L19
	.loc 1 146 7 is_stmt 1 view .LVU200
	.loc 1 146 32 is_stmt 0 view .LVU201
	ldrsh	r8, [sp]
	.loc 1 147 7 is_stmt 1 view .LVU202
	.loc 1 147 32 is_stmt 0 view .LVU203
	ldrsh	r9, [sp, #2]
	.loc 1 148 7 is_stmt 1 view .LVU204
	.loc 1 148 21 is_stmt 0 view .LVU205
	ldrsh	r5, [sp, #6]
	.loc 1 148 19 view .LVU206
	strh	r5, [sp]	@ movhi
	.loc 1 149 7 is_stmt 1 view .LVU207
	.loc 1 149 21 is_stmt 0 view .LVU208
	ldrsh	r6, [sp, #8]
	.loc 1 149 19 view .LVU209
	strh	r6, [sp, #2]	@ movhi
	.loc 1 151 7 is_stmt 1 view .LVU210
	ldr	r7, .L37+8
	movs	r1, #20
	ldr	r0, [r7]
	bl	xQueueSemaphoreTake
.LVL48:
	.loc 1 152 7 view .LVU211
	.loc 1 152 16 is_stmt 0 view .LVU212
	ldr	r3, .L37+12
	ldr	r2, [r3]	@ float
	ldr	r3, .L37+16
	str	r2, [r3]	@ float
	.loc 1 153 7 is_stmt 1 view .LVU213
	.loc 1 153 12 is_stmt 0 view .LVU214
	ldr	r3, .L37+20
	ldrh	r2, [r3]
	ldr	r3, .L37+24
	strh	r2, [r3]	@ movhi
	.loc 1 154 7 is_stmt 1 view .LVU215
	.loc 1 154 12 is_stmt 0 view .LVU216
	ldr	r3, .L37+28
	ldrh	r2, [r3]
	ldr	r3, .L37+32
	strh	r2, [r3]	@ movhi
	.loc 1 155 7 is_stmt 1 view .LVU217
	movs	r3, #0
	mov	r2, r3
	mov	r1, r3
	ldr	r0, [r7]
	bl	xQueueGenericSend
.LVL49:
	.loc 1 157 7 view .LVU218
	.loc 1 157 10 is_stmt 0 view .LVU219
	ldr	r3, .L37+36
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 157 9 view .LVU220
	cmp	r3, #0
	bne	.L33
.L21:
.LVL50:
	.loc 1 164 7 is_stmt 1 view .LVU221
	.loc 1 164 9 is_stmt 0 view .LVU222
	cmp	r8, r5
	beq	.L34
.L22:
	.loc 1 164 79 discriminator 3 view .LVU223
	cmp	r4, #0
	beq	.L19
.LBB4:
	.loc 1 165 8 is_stmt 1 view .LVU224
	bl	sendScanBorder
.LVL51:
	.loc 1 166 8 view .LVU225
	.loc 1 166 26 is_stmt 0 view .LVU226
	ldr	r2, .L37+44
	smull	r3, r1, r2, r5
	asrs	r3, r5, #31
	rsb	r3, r3, r1, asr #2
	sxth	r3, r3
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #12]
	smull	r3, r2, r2, r6
	asrs	r3, r6, #31
	rsb	r3, r3, r2, asr #2
	sxth	r3, r3
	vmov	s15, r3	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #16]
	.loc 1 167 8 is_stmt 1 view .LVU227
	movs	r3, #0
	movs	r2, #100
	add	r1, sp, #12
	ldr	r0, .L37+48
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL52:
	b	.L19
.LVL53:
.L30:
	.loc 1 167 8 is_stmt 0 view .LVU228
.LBE4:
.LBB5:
	.loc 1 190 6 is_stmt 1 view .LVU229
	.loc 1 190 42 is_stmt 0 view .LVU230
	ldr	r3, .L37+32
	ldrsh	r6, [r3]
	subs	r6, r5, r6
	.loc 1 190 60 view .LVU231
	ldr	r3, .L37+24
	ldrsh	r0, [r3]
	.loc 1 190 25 view .LVU232
	subs	r0, r4, r0
	bl	__aeabi_i2d
.LVL54:
	vmov	d8, r0, r1
	mov	r0, r6
	bl	__aeabi_i2d
.LVL55:
	vmov.f32	s2, s16
	vmov.f32	s3, s17
	vmov	d0, r0, r1
	bl	atan2
.LVL56:
	vmov	r8, r9, d0
	.loc 1 190 67 view .LVU233
	ldr	r3, .L37+16
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
.LVL57:
	mov	r2, r0
	mov	r3, r1
	mov	r0, r8
	mov	r1, r9
	bl	__aeabi_dsub
.LVL58:
	.loc 1 190 78 view .LVU234
	movs	r2, #0
	ldr	r3, .L37+52
	bl	__aeabi_dmul
.LVL59:
	.loc 1 190 85 view .LVU235
	adr	r3, .L37
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL60:
	.loc 1 190 14 view .LVU236
	bl	__aeabi_d2iz
.LVL61:
	.loc 1 191 6 is_stmt 1 view .LVU237
	.loc 1 191 24 is_stmt 0 view .LVU238
	sxth	r0, r0
	.loc 1 191 24 view .LVU239
	bl	validWaypoint
.LVL62:
	.loc 1 191 24 view .LVU240
.LBE5:
	b	.L23
.L31:
	.loc 1 198 41 discriminator 2 view .LVU241
	cmp	r10, r5
	bne	.L24
	b	.L19
.L32:
.LBB6:
	.loc 1 199 6 is_stmt 1 view .LVU242
	bl	sendScanBorder
.LVL63:
	.loc 1 200 6 view .LVU243
	.loc 1 200 24 is_stmt 0 view .LVU244
	ldr	r3, .L37+44
	smull	r1, r2, r3, r4
	asrs	r4, r4, #31
	rsb	r4, r4, r2, asr #2
	sxth	r4, r4
	vmov	s15, r4	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #12]
	smull	r2, r3, r3, r5
	asrs	r5, r5, #31
	rsb	r5, r5, r3, asr #2
	sxth	r5, r5
	vmov	s15, r5	@ int
	vcvt.f32.s32	s15, s15
	vstr.32	s15, [sp, #16]
	.loc 1 201 6 is_stmt 1 view .LVU245
	movs	r3, #0
	movs	r2, #100
	add	r1, sp, #12
	ldr	r0, .L37+48
	ldr	r0, [r0]
	bl	xQueueGenericSend
.LVL64:
	b	.L19
.L38:
	.align	3
.L37:
	.word	1413754136
	.word	1074340347
	.word	xPoseMutex
	.word	gTheta_hat
	.word	.LANCHOR1
	.word	gX_hat
	.word	.LANCHOR2
	.word	gY_hat
	.word	.LANCHOR3
	.word	validateWP
	.word	newServer
	.word	1717986919
	.word	poseControllerQ
	.word	1080459264
.LBE6:
.LBE8:
.LFE267:
	.size	vMainCommunicationTask, .-vMainCommunicationTask
	.global	yhat
	.global	xhat
	.global	thetahat
	.global	counter
	.global	message_in
	.section	.bss.counter,"aw",%nobits
	.type	counter, %object
	.size	counter, 1
counter:
	.space	1
	.section	.bss.message_in,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	message_in, %object
	.size	message_in, 26
message_in:
	.space	26
	.section	.bss.thetahat,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	thetahat, %object
	.size	thetahat, 4
thetahat:
	.space	4
	.section	.bss.xhat,"aw",%nobits
	.align	1
	.set	.LANCHOR2,. + 0
	.type	xhat, %object
	.size	xhat, 2
xhat:
	.space	2
	.section	.bss.yhat,"aw",%nobits
	.align	1
	.set	.LANCHOR3,. + 0
	.type	yhat, %object
	.size	yhat, 2
yhat:
	.space	2
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
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.byte	0x4
	.4byte	.LCFI0-.LFB267
	.byte	0xe
	.uleb128 0x24
	.byte	0x84
	.uleb128 0x9
	.byte	0x85
	.uleb128 0x8
	.byte	0x86
	.uleb128 0x7
	.byte	0x87
	.uleb128 0x6
	.byte	0x88
	.uleb128 0x5
	.byte	0x89
	.uleb128 0x4
	.byte	0x8a
	.uleb128 0x3
	.byte	0x8b
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x2c
	.byte	0x5
	.uleb128 0x50
	.uleb128 0xb
	.byte	0x5
	.uleb128 0x51
	.uleb128 0xa
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x60
	.align	2
.LEFDE0:
	.text
.Letext0:
	.file 2 "../../../../../../external/thedotfactory_fonts/nrf_font.h"
	.file 3 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.section	.debug_types,"G",%progbits,wt.6d34a0415199c3c2,comdat
	.4byte	0xab
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x6d
	.byte	0x34
	.byte	0xa0
	.byte	0x41
	.byte	0x51
	.byte	0x99
	.byte	0xc3
	.byte	0xc2
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x2
	.byte	0x30
	.byte	0x9
	.4byte	0x75
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x32
	.byte	0xd
	.4byte	0x75
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x33
	.byte	0xd
	.4byte	0x75
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x34
	.byte	0xd
	.4byte	0x75
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x35
	.byte	0xd
	.4byte	0x75
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x36
	.byte	0x1c
	.4byte	0x81
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x37
	.byte	0x15
	.4byte	0x87
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x8d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x94
	.uleb128 0x5
	.byte	0x4
	.4byte	0x99
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	0x9e
	.uleb128 0x7
	.4byte	0x75
	.uleb128 0x8
	.4byte	.LASF7
	.byte	0x2
	.byte	0x2b
	.byte	0x2
	.byte	0x45
	.byte	0xc6
	.byte	0x59
	.byte	0x45
	.byte	0x56
	.byte	0x1c
	.byte	0x14
	.byte	0x2e
	.byte	0
	.section	.debug_types,"G",%progbits,wt.45c65945561c142e,comdat
	.4byte	0x64
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x45
	.byte	0xc6
	.byte	0x59
	.byte	0x45
	.byte	0x56
	.byte	0x1c
	.byte	0x14
	.byte	0x2e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x2
	.byte	0x27
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.byte	0x29
	.byte	0xd
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.byte	0x2a
	.byte	0xe
	.4byte	0x4d
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x59
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x60
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.file 4 "../../../../../../components/libraries/gfx/nrf_lcd.h"
	.file 5 "../../../../../../components/libraries/util/sdk_errors.h"
	.section	.debug_types,"G",%progbits,wt.bfa29850fc615d03,comdat
	.4byte	0x15f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xbf
	.byte	0xa2
	.byte	0x98
	.byte	0x50
	.byte	0xfc
	.byte	0x61
	.byte	0x5d
	.byte	0x3
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x20
	.byte	0x4
	.byte	0x51
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x4
	.byte	0x56
	.byte	0x13
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x4
	.byte	0x5b
	.byte	0xd
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x4
	.byte	0x64
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x4
	.byte	0x6f
	.byte	0xd
	.4byte	0xa1
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0x78
	.byte	0xd
	.4byte	0x95
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x4
	.byte	0x7f
	.byte	0xd
	.4byte	0xa7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0x86
	.byte	0xd
	.4byte	0xad
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0x8b
	.byte	0x10
	.4byte	0xb3
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x5
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd4
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf3
	.uleb128 0x5
	.byte	0x4
	.4byte	0xfe
	.uleb128 0x5
	.byte	0x4
	.4byte	0x109
	.uleb128 0x9
	.4byte	0x119
	.uleb128 0xa
	.uleb128 0xb
	.4byte	0xd4
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x131
	.byte	0
	.uleb128 0xb
	.4byte	0xf3
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x125
	.uleb128 0xc
	.4byte	0x131
	.byte	0
	.uleb128 0xb
	.4byte	0xfe
	.uleb128 0xc
	.4byte	0x13d
	.byte	0
	.uleb128 0xb
	.4byte	0x109
	.uleb128 0xc
	.4byte	0x14d
	.byte	0
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4a
	.byte	0x2
	.byte	0xa9
	.byte	0x11
	.byte	0x20
	.byte	0xd2
	.byte	0x41
	.byte	0xb4
	.byte	0x7d
	.byte	0x93
	.uleb128 0x4
	.4byte	.LASF22
	.byte	0x5
	.byte	0x9e
	.byte	0x12
	.4byte	0x131
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x154
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x15b
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3f
	.byte	0x2
	.byte	0x95
	.byte	0xe6
	.byte	0x1d
	.byte	0x40
	.byte	0x34
	.byte	0x40
	.byte	0x28
	.byte	0x22
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.byte	0
	.file 6 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
	.section	.debug_types,"G",%progbits,wt.a91120d241b47d93,comdat
	.4byte	0x8b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xa9
	.byte	0x11
	.byte	0x20
	.byte	0xd2
	.byte	0x41
	.byte	0xb4
	.byte	0x7d
	.byte	0x93
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.byte	0x44
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x4
	.byte	0x46
	.byte	0x16
	.4byte	0x5b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.byte	0x47
	.byte	0xe
	.4byte	0x6b
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0x48
	.byte	0xe
	.4byte	0x6b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0x49
	.byte	0x18
	.4byte	0x77
	.byte	0x6
	.byte	0
	.uleb128 0x8
	.4byte	.LASF30
	.byte	0x6
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
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x87
	.uleb128 0x8
	.4byte	.LASF24
	.byte	0x4
	.byte	0x3f
	.byte	0x2
	.byte	0x95
	.byte	0xe6
	.byte	0x1d
	.byte	0x40
	.byte	0x34
	.byte	0x40
	.byte	0x28
	.byte	0x22
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.section	.debug_types,"G",%progbits,wt.95e61d4034402822,comdat
	.4byte	0x48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x95
	.byte	0xe6
	.byte	0x1d
	.byte	0x40
	.byte	0x34
	.byte	0x40
	.byte	0x28
	.byte	0x22
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x4
	.byte	0x3a
	.byte	0xd
	.4byte	0x44
	.uleb128 0xe
	.4byte	.LASF31
	.byte	0
	.uleb128 0xe
	.4byte	.LASF32
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF33
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF34
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0
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
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x6
	.byte	0xad
	.byte	0x1
	.4byte	0x3e
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0
	.uleb128 0xe
	.4byte	.LASF36
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF37
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0
	.file 7 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
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
	.byte	0x7
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x7
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x7
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x6
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
	.uleb128 0xd
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x7
	.byte	0x31
	.byte	0x1
	.4byte	0x50
	.uleb128 0xe
	.4byte	.LASF40
	.byte	0
	.uleb128 0xe
	.4byte	.LASF41
	.byte	0x1
	.uleb128 0xe
	.4byte	.LASF42
	.byte	0x2
	.uleb128 0xe
	.4byte	.LASF43
	.byte	0x3
	.uleb128 0xe
	.4byte	.LASF44
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF45
	.byte	0x5
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0
	.file 8 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\software\\globals.h"
	.section	.debug_types,"G",%progbits,wt.983716c4a1013425,comdat
	.4byte	0x45
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x98
	.byte	0x37
	.byte	0x16
	.byte	0xc4
	.byte	0xa1
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xf
	.4byte	.LASF47
	.byte	0x8
	.byte	0x8
	.byte	0x47
	.byte	0x8
	.4byte	0x41
	.uleb128 0x10
	.ascii	"x\000"
	.byte	0x8
	.byte	0x48
	.byte	0xb
	.4byte	0x41
	.byte	0
	.uleb128 0x10
	.ascii	"y\000"
	.byte	0x8
	.byte	0x49
	.byte	0xb
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF46
	.byte	0
	.file 9 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
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
	.byte	0x9
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x9
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x9
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
	.4byte	.LASF23
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.byte	0
	.file 10 "../../../communication/server_communication.h"
	.section	.debug_types,"G",%progbits,wt.5752a6060baf580c,comdat
	.4byte	0x55
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x57
	.byte	0x52
	.byte	0xa6
	.byte	0x6
	.byte	0xb
	.byte	0xaf
	.byte	0x58
	.byte	0xc
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1a
	.byte	0xa
	.byte	0x42
	.byte	0x9
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0xa
	.byte	0x43
	.byte	0xb
	.4byte	0x45
	.byte	0
	.uleb128 0x14
	.4byte	.LASF51
	.byte	0xa
	.byte	0x44
	.byte	0x11
	.byte	0xad
	.byte	0xc6
	.byte	0xcd
	.byte	0xd5
	.byte	0x62
	.byte	0xf1
	.byte	0xf8
	.byte	0x22
	.byte	0x1
	.byte	0
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x51
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0
	.section	.debug_types,"G",%progbits,wt.adc6cdd562f1f822,comdat
	.4byte	0x7c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xad
	.byte	0xc6
	.byte	0xcd
	.byte	0xd5
	.byte	0x62
	.byte	0xf1
	.byte	0xf8
	.byte	0x22
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x19
	.byte	0xa
	.byte	0x3c
	.byte	0x7
	.4byte	0x4f
	.uleb128 0x16
	.4byte	.LASF52
	.byte	0xa
	.byte	0x3d
	.byte	0x14
	.4byte	0x4f
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0xa
	.byte	0x3e
	.byte	0x17
	.4byte	0x5f
	.uleb128 0x16
	.4byte	.LASF54
	.byte	0xa
	.byte	0x3f
	.byte	0x13
	.4byte	0x6f
	.byte	0
	.uleb128 0x8
	.4byte	.LASF55
	.byte	0xa
	.byte	0x35
	.byte	0x1b
	.byte	0x80
	.byte	0x59
	.byte	0x5b
	.byte	0x36
	.byte	0x77
	.byte	0xbd
	.byte	0x2e
	.byte	0xe3
	.uleb128 0x8
	.4byte	.LASF56
	.byte	0xa
	.byte	0x2a
	.byte	0x1b
	.byte	0x83
	.byte	0x9f
	.byte	0xbb
	.byte	0x7b
	.byte	0x1b
	.byte	0xf7
	.byte	0xa0
	.byte	0x6b
	.uleb128 0x8
	.4byte	.LASF57
	.byte	0xa
	.byte	0x3a
	.byte	0x1b
	.byte	0x4d
	.byte	0xfb
	.byte	0xa4
	.byte	0xe0
	.byte	0x51
	.byte	0xbf
	.byte	0xd8
	.byte	0xe6
	.byte	0
	.section	.debug_types,"G",%progbits,wt.4dfba4e051bfd8e6,comdat
	.4byte	0x4d
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x4d
	.byte	0xfb
	.byte	0xa4
	.byte	0xe0
	.byte	0x51
	.byte	0xbf
	.byte	0xd8
	.byte	0xe6
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0xa
	.byte	0x37
	.byte	0x9
	.4byte	0x3d
	.uleb128 0x10
	.ascii	"x\000"
	.byte	0xa
	.byte	0x38
	.byte	0xb
	.4byte	0x3d
	.byte	0
	.uleb128 0x10
	.ascii	"y\000"
	.byte	0xa
	.byte	0x39
	.byte	0xb
	.4byte	0x3d
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x3
	.byte	0x35
	.byte	0x16
	.4byte	0x49
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF60
	.byte	0
	.section	.debug_types,"G",%progbits,wt.80595b3677bd2ee3,comdat
	.4byte	0xae
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x80
	.byte	0x59
	.byte	0x5b
	.byte	0x36
	.byte	0x77
	.byte	0xbd
	.byte	0x2e
	.byte	0xe3
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0xa
	.byte	0x2c
	.byte	0x9
	.4byte	0x8b
	.uleb128 0x10
	.ascii	"x\000"
	.byte	0xa
	.byte	0x2d
	.byte	0xb
	.4byte	0x8b
	.byte	0
	.uleb128 0x10
	.ascii	"y\000"
	.byte	0xa
	.byte	0x2e
	.byte	0xb
	.4byte	0x8b
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0xa
	.byte	0x2f
	.byte	0xb
	.4byte	0x8b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0xa
	.byte	0x30
	.byte	0xb
	.4byte	0x8b
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0xa
	.byte	0x31
	.byte	0xb
	.4byte	0x97
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0xa
	.byte	0x32
	.byte	0xb
	.4byte	0x97
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0xa
	.byte	0x33
	.byte	0xb
	.4byte	0x97
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0xa
	.byte	0x34
	.byte	0xb
	.4byte	0x97
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x3
	.byte	0x35
	.byte	0x16
	.4byte	0xa3
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0xaa
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF60
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0
	.section	.debug_types,"G",%progbits,wt.839fbb7b1bf7a06b,comdat
	.4byte	0x131
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x83
	.byte	0x9f
	.byte	0xbb
	.byte	0x7b
	.byte	0x1b
	.byte	0xf7
	.byte	0xa0
	.byte	0x6b
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x19
	.byte	0xa
	.byte	0x19
	.byte	0x9
	.4byte	0xf7
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0xa
	.byte	0x1a
	.byte	0xb
	.4byte	0xf7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xa
	.byte	0x1b
	.byte	0xb
	.4byte	0x103
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0xa
	.byte	0x1c
	.byte	0xc
	.4byte	0x113
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF69
	.byte	0xa
	.byte	0x1d
	.byte	0xc
	.4byte	0x113
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0xa
	.byte	0x1e
	.byte	0xb
	.4byte	0xf7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0xa
	.byte	0x1f
	.byte	0xb
	.4byte	0xf7
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0xa
	.byte	0x20
	.byte	0xb
	.4byte	0xf7
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0xa
	.byte	0x21
	.byte	0xb
	.4byte	0xf7
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0xa
	.byte	0x22
	.byte	0xb
	.4byte	0xf7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0xa
	.byte	0x23
	.byte	0xb
	.4byte	0xf7
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0xa
	.byte	0x24
	.byte	0xb
	.4byte	0xf7
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0xa
	.byte	0x25
	.byte	0xc
	.4byte	0x113
	.byte	0xf
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0xa
	.byte	0x26
	.byte	0xc
	.4byte	0x113
	.byte	0x11
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0xa
	.byte	0x27
	.byte	0xc
	.4byte	0x113
	.byte	0x13
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0xa
	.byte	0x28
	.byte	0xc
	.4byte	0x113
	.byte	0x15
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0xa
	.byte	0x29
	.byte	0xc
	.4byte	0x113
	.byte	0x17
	.byte	0
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x11f
	.uleb128 0x12
	.4byte	0xf7
	.4byte	0x113
	.uleb128 0x13
	.4byte	0x126
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.4byte	.LASF11
	.byte	0x3
	.byte	0x36
	.byte	0x18
	.4byte	0x12d
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.byte	0
	.file 11 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0x8
	.byte	0xb
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x18
	.4byte	.LASF83
	.byte	0xb
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x18
	.4byte	.LASF84
	.byte	0xb
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x19
	.4byte	.LASF85
	.byte	0xb
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x61
	.uleb128 0x1a
	.4byte	0x70
	.4byte	0x70
	.uleb128 0xc
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.4byte	0x82
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF86
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
	.4byte	.LASF87
	.byte	0x14
	.byte	0xb
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0xb
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
	.uleb128 0x5
	.byte	0x4
	.4byte	0x55
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x7
	.4byte	0x5a
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0xb
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
	.byte	0xb
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0xb
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0xb
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0xb
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x60
	.uleb128 0x5
	.byte	0x4
	.4byte	0x65
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x7
	.4byte	0x6f
	.uleb128 0x7
	.4byte	0x76
	.uleb128 0x7
	.4byte	0x86
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF86
	.uleb128 0x8
	.4byte	.LASF91
	.byte	0xb
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
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0xb
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
	.byte	0xb
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0xb
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0xb
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0xb
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0xb
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0xb
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0xb
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0xb
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0xb
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x5
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x5
	.byte	0x4
	.4byte	0xea
	.uleb128 0x5
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x112
	.uleb128 0x1a
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0xc
	.4byte	0x130
	.uleb128 0xc
	.4byte	0x130
	.byte	0
	.uleb128 0x1a
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0xc
	.4byte	0x130
	.byte	0
	.uleb128 0x1a
	.4byte	0x130
	.4byte	0xea
	.uleb128 0xc
	.4byte	0x137
	.uleb128 0xc
	.4byte	0x130
	.byte	0
	.uleb128 0x1a
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0xc
	.4byte	0x137
	.byte	0
	.uleb128 0x1a
	.4byte	0x130
	.4byte	0x112
	.uleb128 0xc
	.4byte	0x13e
	.uleb128 0xc
	.4byte	0x144
	.uleb128 0xc
	.4byte	0x14b
	.byte	0
	.uleb128 0x1a
	.4byte	0x130
	.4byte	0x130
	.uleb128 0xc
	.4byte	0x155
	.uleb128 0xc
	.4byte	0x15b
	.uleb128 0xc
	.4byte	0x144
	.uleb128 0xc
	.4byte	0x14b
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF101
	.uleb128 0x5
	.byte	0x4
	.4byte	0x161
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x1c
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x144
	.uleb128 0x5
	.byte	0x4
	.4byte	0x168
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF86
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
	.byte	0xb
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF102
	.byte	0xb
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0xb
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0xb
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF105
	.byte	0xb
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF106
	.byte	0xb
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF107
	.byte	0xb
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF108
	.byte	0xb
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF109
	.byte	0xb
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF110
	.byte	0xb
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF111
	.byte	0xb
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF112
	.byte	0xb
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF113
	.byte	0xb
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF114
	.byte	0xb
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF115
	.byte	0xb
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF116
	.byte	0xb
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF117
	.byte	0xb
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF118
	.byte	0xb
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF119
	.byte	0xb
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF120
	.byte	0xb
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF121
	.byte	0xb
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF122
	.byte	0xb
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF123
	.byte	0xb
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF124
	.byte	0xb
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF125
	.byte	0xb
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF126
	.byte	0xb
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF127
	.byte	0xb
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF128
	.byte	0xb
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF129
	.byte	0xb
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF130
	.byte	0xb
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF131
	.byte	0xb
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF132
	.byte	0xb
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF133
	.byte	0xb
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF86
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
	.uleb128 0xf
	.4byte	.LASF134
	.byte	0x8
	.byte	0xb
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF135
	.byte	0xb
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF136
	.byte	0xb
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF101
	.byte	0
	.file 12 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 13 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 14 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 15 "../../../../../../components/libraries/util/app_util.h"
	.file 16 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
	.file 17 "../../../../../../external/freertos/source/include/task.h"
	.file 18 "../../../../../../external/freertos/source/include/queue.h"
	.file 19 "../../../../../../external/freertos/source/include/semphr.h"
	.file 20 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 21 "../../../../../../components/libraries/gfx/nrf_gfx.h"
	.file 22 "../../../drivers/display.h"
	.file 23 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.file 24 "../../../drivers/functions.h"
	.file 25 "../../../drivers/i2c.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xac4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1d
	.4byte	.LASF247
	.byte	0xc
	.4byte	.LASF248
	.4byte	.LASF249
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.4byte	.LASF137
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF138
	.uleb128 0x4
	.4byte	.LASF6
	.byte	0x3
	.byte	0x30
	.byte	0x17
	.4byte	0x43
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x7
	.4byte	0x43
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x3
	.byte	0x35
	.byte	0x16
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF60
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF12
	.uleb128 0x4
	.4byte	.LASF139
	.byte	0x3
	.byte	0x37
	.byte	0x14
	.4byte	0x7a
	.uleb128 0x11
	.4byte	0x69
	.uleb128 0x1b
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	.LASF23
	.byte	0x3
	.byte	0x38
	.byte	0x16
	.4byte	0x8d
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF26
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF140
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF141
	.uleb128 0x1e
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF101
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF86
	.uleb128 0x7
	.4byte	0xab
	.uleb128 0x8
	.4byte	.LASF92
	.byte	0xb
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
	.4byte	0xb7
	.uleb128 0x8
	.4byte	.LASF89
	.byte	0xb
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
	.4byte	0xcc
	.uleb128 0x1f
	.4byte	.LASF142
	.byte	0xb
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
	.uleb128 0x20
	.4byte	.LASF143
	.byte	0xb
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xdc
	.uleb128 0x20
	.4byte	.LASF144
	.byte	0xb
	.2byte	0x110
	.byte	0x25
	.4byte	0xc7
	.uleb128 0x20
	.4byte	.LASF145
	.byte	0xb
	.2byte	0x111
	.byte	0x25
	.4byte	0xc7
	.uleb128 0x12
	.4byte	0x4a
	.4byte	0x129
	.uleb128 0x13
	.4byte	0x8d
	.byte	0x7f
	.byte	0
	.uleb128 0x7
	.4byte	0x119
	.uleb128 0x20
	.4byte	.LASF146
	.byte	0xb
	.2byte	0x113
	.byte	0x1c
	.4byte	0x129
	.uleb128 0x12
	.4byte	0xb2
	.4byte	0x146
	.uleb128 0x21
	.byte	0
	.uleb128 0x7
	.4byte	0x13b
	.uleb128 0x20
	.4byte	.LASF147
	.byte	0xb
	.2byte	0x115
	.byte	0x13
	.4byte	0x146
	.uleb128 0x20
	.4byte	.LASF148
	.byte	0xb
	.2byte	0x116
	.byte	0x13
	.4byte	0x146
	.uleb128 0x20
	.4byte	.LASF149
	.byte	0xb
	.2byte	0x117
	.byte	0x13
	.4byte	0x146
	.uleb128 0x20
	.4byte	.LASF150
	.byte	0xb
	.2byte	0x118
	.byte	0x13
	.4byte	0x146
	.uleb128 0x20
	.4byte	.LASF151
	.byte	0xb
	.2byte	0x11a
	.byte	0x13
	.4byte	0x146
	.uleb128 0x20
	.4byte	.LASF152
	.byte	0xb
	.2byte	0x11b
	.byte	0x13
	.4byte	0x146
	.uleb128 0x20
	.4byte	.LASF153
	.byte	0xb
	.2byte	0x11c
	.byte	0x13
	.4byte	0x146
	.uleb128 0x20
	.4byte	.LASF154
	.byte	0xb
	.2byte	0x11d
	.byte	0x13
	.4byte	0x146
	.uleb128 0x20
	.4byte	.LASF155
	.byte	0xb
	.2byte	0x11e
	.byte	0x13
	.4byte	0x146
	.uleb128 0x20
	.4byte	.LASF156
	.byte	0xb
	.2byte	0x11f
	.byte	0x13
	.4byte	0x146
	.uleb128 0x1a
	.4byte	0x7a
	.4byte	0x1dc
	.uleb128 0xc
	.4byte	0x1dc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e7
	.uleb128 0x22
	.4byte	.LASF162
	.uleb128 0x7
	.4byte	0x1e2
	.uleb128 0x20
	.4byte	.LASF157
	.byte	0xb
	.2byte	0x135
	.byte	0xe
	.4byte	0x1f9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1cd
	.uleb128 0x1a
	.4byte	0x7a
	.4byte	0x20e
	.uleb128 0xc
	.4byte	0x20e
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1e2
	.uleb128 0x20
	.4byte	.LASF158
	.byte	0xb
	.2byte	0x136
	.byte	0xe
	.4byte	0x221
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ff
	.uleb128 0x23
	.4byte	.LASF159
	.byte	0xb
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
	.uleb128 0x20
	.4byte	.LASF160
	.byte	0xb
	.2byte	0x157
	.byte	0x1f
	.4byte	0x245
	.uleb128 0x5
	.byte	0x4
	.4byte	0x227
	.uleb128 0x19
	.4byte	.LASF161
	.byte	0xc
	.2byte	0x317
	.byte	0x1b
	.4byte	0x258
	.uleb128 0x22
	.4byte	.LASF163
	.uleb128 0x20
	.4byte	.LASF164
	.byte	0xc
	.2byte	0x31b
	.byte	0xe
	.4byte	0x26a
	.uleb128 0x5
	.byte	0x4
	.4byte	0x24b
	.uleb128 0x20
	.4byte	.LASF165
	.byte	0xc
	.2byte	0x31c
	.byte	0xe
	.4byte	0x26a
	.uleb128 0x20
	.4byte	.LASF166
	.byte	0xc
	.2byte	0x31d
	.byte	0xe
	.4byte	0x26a
	.uleb128 0x8
	.4byte	.LASF167
	.byte	0xa
	.byte	0x45
	.byte	0x1b
	.byte	0x57
	.byte	0x52
	.byte	0xa6
	.byte	0x6
	.byte	0xb
	.byte	0xaf
	.byte	0x58
	.byte	0xc
	.uleb128 0x20
	.4byte	.LASF168
	.byte	0xd
	.2byte	0x744
	.byte	0x19
	.4byte	0x75
	.uleb128 0x24
	.4byte	.LASF169
	.byte	0xe
	.byte	0x21
	.byte	0x11
	.4byte	0x81
	.uleb128 0x8
	.4byte	.LASF170
	.byte	0x9
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
	.uleb128 0x24
	.4byte	.LASF171
	.byte	0x9
	.byte	0x75
	.byte	0x19
	.4byte	0x2b3
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF172
	.uleb128 0x24
	.4byte	.LASF173
	.byte	0xf
	.byte	0x53
	.byte	0x11
	.4byte	0x81
	.uleb128 0x24
	.4byte	.LASF174
	.byte	0xf
	.byte	0x54
	.byte	0x11
	.4byte	0x81
	.uleb128 0x24
	.4byte	.LASF175
	.byte	0xf
	.byte	0x72
	.byte	0x13
	.4byte	0x2fa
	.uleb128 0x5
	.byte	0x4
	.4byte	0x81
	.uleb128 0x24
	.4byte	.LASF176
	.byte	0xf
	.byte	0x73
	.byte	0x11
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF177
	.byte	0x10
	.byte	0x39
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x4
	.4byte	.LASF178
	.byte	0x10
	.byte	0x40
	.byte	0x16
	.4byte	0x81
	.uleb128 0x4
	.4byte	.LASF179
	.byte	0x11
	.byte	0x3e
	.byte	0x10
	.4byte	0xa2
	.uleb128 0x4
	.4byte	.LASF180
	.byte	0x12
	.byte	0x2f
	.byte	0x10
	.4byte	0xa2
	.uleb128 0x4
	.4byte	.LASF181
	.byte	0x13
	.byte	0x26
	.byte	0x17
	.4byte	0x330
	.uleb128 0x24
	.4byte	.LASF182
	.byte	0x8
	.byte	0x11
	.byte	0x15
	.4byte	0x324
	.uleb128 0x24
	.4byte	.LASF183
	.byte	0x8
	.byte	0x12
	.byte	0x5
	.4byte	0x324
	.uleb128 0x24
	.4byte	.LASF184
	.byte	0x8
	.byte	0x13
	.byte	0x5
	.4byte	0x324
	.uleb128 0x24
	.4byte	.LASF185
	.byte	0x8
	.byte	0x14
	.byte	0x5
	.4byte	0x324
	.uleb128 0x24
	.4byte	.LASF186
	.byte	0x8
	.byte	0x15
	.byte	0x5
	.4byte	0x324
	.uleb128 0x24
	.4byte	.LASF187
	.byte	0x8
	.byte	0x16
	.byte	0x5
	.4byte	0x324
	.uleb128 0x24
	.4byte	.LASF188
	.byte	0x8
	.byte	0x17
	.byte	0x5
	.4byte	0x324
	.uleb128 0x24
	.4byte	.LASF189
	.byte	0x8
	.byte	0x18
	.byte	0x5
	.4byte	0x324
	.uleb128 0x24
	.4byte	.LASF190
	.byte	0x8
	.byte	0x1b
	.byte	0x1a
	.4byte	0x33c
	.uleb128 0x24
	.4byte	.LASF191
	.byte	0x8
	.byte	0x1c
	.byte	0x1a
	.4byte	0x33c
	.uleb128 0x24
	.4byte	.LASF192
	.byte	0x8
	.byte	0x1d
	.byte	0x1a
	.4byte	0x33c
	.uleb128 0x24
	.4byte	.LASF193
	.byte	0x8
	.byte	0x1e
	.byte	0x1a
	.4byte	0x33c
	.uleb128 0x24
	.4byte	.LASF194
	.byte	0x8
	.byte	0x1f
	.byte	0x1a
	.4byte	0x33c
	.uleb128 0x24
	.4byte	.LASF195
	.byte	0x8
	.byte	0x20
	.byte	0x1a
	.4byte	0x33c
	.uleb128 0x24
	.4byte	.LASF196
	.byte	0x8
	.byte	0x25
	.byte	0x16
	.4byte	0x330
	.uleb128 0x24
	.4byte	.LASF197
	.byte	0x8
	.byte	0x26
	.byte	0x16
	.4byte	0x330
	.uleb128 0x24
	.4byte	.LASF198
	.byte	0x8
	.byte	0x27
	.byte	0x16
	.4byte	0x330
	.uleb128 0x24
	.4byte	.LASF199
	.byte	0x8
	.byte	0x2a
	.byte	0x10
	.4byte	0x37
	.uleb128 0x24
	.4byte	.LASF200
	.byte	0x8
	.byte	0x2b
	.byte	0x10
	.4byte	0x37
	.uleb128 0x24
	.4byte	.LASF201
	.byte	0x8
	.byte	0x2f
	.byte	0xc
	.4byte	0x438
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF25
	.uleb128 0x24
	.4byte	.LASF202
	.byte	0x8
	.byte	0x30
	.byte	0xc
	.4byte	0x438
	.uleb128 0x24
	.4byte	.LASF203
	.byte	0x8
	.byte	0x31
	.byte	0xc
	.4byte	0x438
	.uleb128 0x24
	.4byte	.LASF204
	.byte	0x8
	.byte	0x36
	.byte	0xe
	.4byte	0x463
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.4byte	.LASF46
	.uleb128 0x24
	.4byte	.LASF205
	.byte	0x8
	.byte	0x37
	.byte	0x10
	.4byte	0x4f
	.uleb128 0x24
	.4byte	.LASF206
	.byte	0x8
	.byte	0x38
	.byte	0x10
	.4byte	0x4f
	.uleb128 0x24
	.4byte	.LASF207
	.byte	0x8
	.byte	0x39
	.byte	0xe
	.4byte	0x463
	.uleb128 0x24
	.4byte	.LASF208
	.byte	0x8
	.byte	0x3a
	.byte	0xe
	.4byte	0x463
	.uleb128 0x24
	.4byte	.LASF209
	.byte	0x8
	.byte	0x3d
	.byte	0x10
	.4byte	0x4f
	.uleb128 0x24
	.4byte	.LASF210
	.byte	0x8
	.byte	0x3e
	.byte	0x10
	.4byte	0x4f
	.uleb128 0x8
	.4byte	.LASF211
	.byte	0x7
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
	.uleb128 0x20
	.4byte	.LASF212
	.byte	0x14
	.2byte	0x124
	.byte	0x2e
	.4byte	0x4b2
	.uleb128 0x8
	.4byte	.LASF21
	.byte	0x4
	.byte	0x4a
	.byte	0x2
	.byte	0xa9
	.byte	0x11
	.byte	0x20
	.byte	0xd2
	.byte	0x41
	.byte	0xb4
	.byte	0x7d
	.byte	0x93
	.uleb128 0x8
	.4byte	.LASF213
	.byte	0x4
	.byte	0x8c
	.byte	0x2
	.byte	0xbf
	.byte	0xa2
	.byte	0x98
	.byte	0x50
	.byte	0xfc
	.byte	0x61
	.byte	0x5d
	.byte	0x3
	.uleb128 0x7
	.4byte	0x4df
	.uleb128 0x8
	.4byte	.LASF214
	.byte	0x2
	.byte	0x38
	.byte	0x2
	.byte	0x6d
	.byte	0x34
	.byte	0xa0
	.byte	0x41
	.byte	0x51
	.byte	0x99
	.byte	0xc3
	.byte	0xc2
	.uleb128 0x4
	.4byte	.LASF215
	.byte	0x15
	.byte	0x92
	.byte	0x13
	.4byte	0x4f4
	.uleb128 0x7
	.4byte	0x504
	.uleb128 0x24
	.4byte	.LASF216
	.byte	0x16
	.byte	0x13
	.byte	0x22
	.4byte	0x510
	.uleb128 0x24
	.4byte	.LASF217
	.byte	0x16
	.byte	0x14
	.byte	0x16
	.4byte	0x330
	.uleb128 0x25
	.4byte	.LASF224
	.byte	0x16
	.byte	0x3a
	.byte	0x11
	.4byte	0x4cf
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3f
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.4byte	.LASF218
	.byte	0x16
	.byte	0x42
	.byte	0x18
	.4byte	0x4ef
	.uleb128 0x26
	.4byte	.LASF219
	.byte	0x1
	.byte	0x19
	.byte	0xb
	.4byte	0x28a
	.uleb128 0x5
	.byte	0x3
	.4byte	message_in
	.uleb128 0x26
	.4byte	.LASF220
	.byte	0x1
	.byte	0x1b
	.byte	0x9
	.4byte	0x37
	.uleb128 0x5
	.byte	0x3
	.4byte	counter
	.uleb128 0x26
	.4byte	.LASF221
	.byte	0x1
	.byte	0x1e
	.byte	0x7
	.4byte	0x463
	.uleb128 0x5
	.byte	0x3
	.4byte	thetahat
	.uleb128 0x26
	.4byte	.LASF222
	.byte	0x1
	.byte	0x1f
	.byte	0x9
	.4byte	0x4f
	.uleb128 0x5
	.byte	0x3
	.4byte	xhat
	.uleb128 0x26
	.4byte	.LASF223
	.byte	0x1
	.byte	0x20
	.byte	0x9
	.4byte	0x4f
	.uleb128 0x5
	.byte	0x3
	.4byte	yhat
	.uleb128 0x27
	.4byte	.LASF250
	.byte	0x1
	.byte	0x23
	.byte	0x6
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e2
	.uleb128 0x28
	.4byte	.LASF251
	.byte	0x1
	.byte	0x23
	.byte	0x23
	.4byte	0xa2
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x29
	.4byte	.LASF225
	.byte	0x1
	.byte	0x24
	.byte	0x17
	.4byte	0xabe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2a
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.4byte	0x7af
	.uleb128 0x29
	.4byte	.LASF226
	.byte	0x1
	.byte	0x27
	.byte	0xd
	.4byte	0x28a
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2b
	.4byte	.LASF227
	.byte	0x1
	.byte	0x2b
	.byte	0xb
	.4byte	0x37
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2c
	.4byte	.LVL1
	.4byte	0xa02
	.uleb128 0x2c
	.4byte	.LVL2
	.4byte	0xa0e
	.uleb128 0x2c
	.4byte	.LVL4
	.4byte	0xa1b
	.uleb128 0x2d
	.4byte	.LVL6
	.4byte	0xa27
	.4byte	0x642
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL7
	.4byte	0xa34
	.4byte	0x65f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL8
	.4byte	0xa27
	.4byte	0x673
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xc8
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL9
	.4byte	0xa41
	.uleb128 0x2d
	.4byte	.LVL10
	.4byte	0xa4d
	.4byte	0x693
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL12
	.4byte	0xa4d
	.4byte	0x6aa
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL13
	.4byte	0xa5a
	.4byte	0x6be
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x9
	.byte	0xff
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL14
	.4byte	0xa4d
	.4byte	0x6d5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL15
	.4byte	0xa4d
	.4byte	0x6ec
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL16
	.4byte	0xa67
	.uleb128 0x2d
	.4byte	.LVL17
	.4byte	0xa73
	.4byte	0x718
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL18
	.4byte	0xa80
	.4byte	0x737
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL19
	.4byte	0xa4d
	.4byte	0x74e
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL20
	.4byte	0xa80
	.4byte	0x76d
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL21
	.4byte	0xa4d
	.4byte	0x784
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL22
	.4byte	0xa4d
	.4byte	0x79b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL23
	.4byte	0xa34
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.byte	0
	.byte	0
	.uleb128 0x30
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x29
	.4byte	.LASF51
	.byte	0x1
	.byte	0x77
	.byte	0xb
	.4byte	0x9e2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x31
	.4byte	.LASF252
	.byte	0x1
	.byte	0x78
	.byte	0xb
	.4byte	0x9f2
	.uleb128 0x29
	.4byte	.LASF228
	.byte	0x1
	.byte	0x79
	.byte	0xb
	.4byte	0x9f2
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x2b
	.4byte	.LASF229
	.byte	0x1
	.byte	0x7a
	.byte	0x7
	.4byte	0x438
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2a
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x83b
	.uleb128 0x2b
	.4byte	.LASF230
	.byte	0x1
	.byte	0x9e
	.byte	0x10
	.4byte	0x4f
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2d
	.4byte	.LVL33
	.4byte	0xa8d
	.4byte	0x831
	.uleb128 0x2e
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL39
	.4byte	0xa9a
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x87e
	.uleb128 0x29
	.4byte	.LASF231
	.byte	0x1
	.byte	0xa6
	.byte	0x1a
	.4byte	0xabe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.4byte	.LVL51
	.4byte	0xaa6
	.uleb128 0x2f
	.4byte	.LVL52
	.4byte	0xa80
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x8c5
	.uleb128 0x2b
	.4byte	.LASF230
	.byte	0x1
	.byte	0xbe
	.byte	0xe
	.4byte	0x4f
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2d
	.4byte	.LVL56
	.4byte	0xa8d
	.4byte	0x8bb
	.uleb128 0x2e
	.uleb128 0x8
	.byte	0x90
	.uleb128 0x42
	.byte	0x93
	.uleb128 0x4
	.byte	0x90
	.uleb128 0x43
	.byte	0x93
	.uleb128 0x4
	.uleb128 0x3
	.byte	0xf5
	.uleb128 0x50
	.uleb128 0x29
	.byte	0
	.uleb128 0x2c
	.4byte	.LVL62
	.4byte	0xa9a
	.byte	0
	.uleb128 0x2a
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x908
	.uleb128 0x29
	.4byte	.LASF231
	.byte	0x1
	.byte	0xc8
	.byte	0x18
	.4byte	0xabe
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2c
	.4byte	.LVL63
	.4byte	0xaa6
	.uleb128 0x2f
	.4byte	.LVL64
	.4byte	0xa80
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x64
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL24
	.4byte	0xa5a
	.4byte	0x91b
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL25
	.4byte	0xa4d
	.4byte	0x932
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL30
	.4byte	0xa80
	.4byte	0x94f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL42
	.4byte	0xa5a
	.4byte	0x962
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL43
	.4byte	0xa80
	.4byte	0x97f
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL46
	.4byte	0xa27
	.4byte	0x994
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1f4
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL47
	.4byte	0xab2
	.4byte	0x9b4
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0x72
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x38
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL48
	.4byte	0xa5a
	.4byte	0x9c7
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x44
	.byte	0
	.uleb128 0x2f
	.4byte	.LVL49
	.4byte	0xa80
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2e
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x37
	.4byte	0x9f2
	.uleb128 0x13
	.4byte	0x8d
	.byte	0x7
	.byte	0
	.uleb128 0x12
	.4byte	0x4f
	.4byte	0xa02
	.uleb128 0x13
	.4byte	0x8d
	.byte	0x1
	.byte	0
	.uleb128 0x32
	.4byte	.LASF232
	.4byte	.LASF232
	.byte	0xa
	.byte	0x47
	.byte	0x6
	.uleb128 0x33
	.4byte	.LASF233
	.4byte	.LASF233
	.byte	0x11
	.2byte	0x451
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF234
	.4byte	.LASF234
	.byte	0xa
	.byte	0x48
	.byte	0x9
	.uleb128 0x33
	.4byte	.LASF235
	.4byte	.LASF235
	.byte	0x11
	.2byte	0x2ee
	.byte	0x6
	.uleb128 0x33
	.4byte	.LASF236
	.4byte	.LASF236
	.byte	0x14
	.2byte	0x1b4
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF237
	.4byte	.LASF237
	.byte	0xa
	.byte	0x49
	.byte	0x9
	.uleb128 0x33
	.4byte	.LASF238
	.4byte	.LASF238
	.byte	0x14
	.2byte	0x1ab
	.byte	0x6
	.uleb128 0x33
	.4byte	.LASF239
	.4byte	.LASF239
	.byte	0x12
	.2byte	0x589
	.byte	0xc
	.uleb128 0x32
	.4byte	.LASF240
	.4byte	.LASF240
	.byte	0xa
	.byte	0x4c
	.byte	0x6
	.uleb128 0x33
	.4byte	.LASF241
	.4byte	.LASF241
	.byte	0x14
	.2byte	0x1bf
	.byte	0x6
	.uleb128 0x33
	.4byte	.LASF242
	.4byte	.LASF242
	.byte	0x12
	.2byte	0x289
	.byte	0xc
	.uleb128 0x33
	.4byte	.LASF243
	.4byte	.LASF243
	.byte	0x17
	.2byte	0x1f9
	.byte	0x8
	.uleb128 0x32
	.4byte	.LASF244
	.4byte	.LASF244
	.byte	0x18
	.byte	0x35
	.byte	0x5
	.uleb128 0x32
	.4byte	.LASF245
	.4byte	.LASF245
	.byte	0x18
	.byte	0x26
	.byte	0x6
	.uleb128 0x32
	.4byte	.LASF246
	.4byte	.LASF246
	.byte	0x19
	.byte	0x11
	.byte	0x6
	.uleb128 0x34
	.byte	0x98
	.byte	0x37
	.byte	0x16
	.byte	0xc4
	.byte	0xa1
	.byte	0x1
	.byte	0x34
	.byte	0x25
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x15
	.uleb128 0x17
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0x13
	.byte	0
	.uleb128 0x69
	.uleb128 0x20
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",%progbits
.Ldebug_loc0:
.LVUS0:
	.uleb128 0
	.uleb128 .LVU14
	.uleb128 .LVU14
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-1
	.4byte	.LFE267
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU16
	.uleb128 .LVU19
	.uleb128 .LVU19
	.uleb128 .LVU38
.LLST4:
	.4byte	.LVL2
	.4byte	.LVL3
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL3
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU162
	.uleb128 .LVU164
	.uleb128 .LVU186
	.uleb128 .LVU189
	.uleb128 .LVU221
	.uleb128 .LVU228
	.uleb128 .LVU240
	.uleb128 .LVU243
.LLST1:
	.4byte	.LVL40
	.4byte	.LVL41
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL44
	.4byte	.LVL45
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL62
	.4byte	.LVL63-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU158
	.uleb128 .LVU161
.LLST2:
	.4byte	.LVL38
	.4byte	.LVL39-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU237
	.uleb128 .LVU240
.LLST3:
	.4byte	.LVL61
	.4byte	.LVL62-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x124
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xac8
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
	.4byte	0x52d
	.ascii	"m_lcd_cb\000"
	.4byte	0x54e
	.ascii	"message_in\000"
	.4byte	0x560
	.ascii	"counter\000"
	.4byte	0x572
	.ascii	"thetahat\000"
	.4byte	0x584
	.ascii	"xhat\000"
	.4byte	0x596
	.ascii	"yhat\000"
	.4byte	0x54e
	.ascii	"message_in\000"
	.4byte	0x5a8
	.ascii	"vMainCommunicationTask\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x2a1
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xac8
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
	.4byte	0x62
	.ascii	"short unsigned int\000"
	.4byte	0x7a
	.ascii	"int\000"
	.4byte	0x69
	.ascii	"int32_t\000"
	.4byte	0x8d
	.ascii	"unsigned int\000"
	.4byte	0x81
	.ascii	"uint32_t\000"
	.4byte	0x94
	.ascii	"long long int\000"
	.4byte	0x9b
	.ascii	"long long unsigned int\000"
	.4byte	0xa4
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xab
	.ascii	"char\000"
	.4byte	0xb7
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xcc
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x227
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x24b
	.ascii	"FILE\000"
	.4byte	0xb
	.ascii	"Message\000"
	.4byte	0x28a
	.ascii	"message_t\000"
	.4byte	0x2b3
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x2cf
	.ascii	"long unsigned int\000"
	.4byte	0x30c
	.ascii	"BaseType_t\000"
	.4byte	0x318
	.ascii	"TickType_t\000"
	.4byte	0x324
	.ascii	"TaskHandle_t\000"
	.4byte	0x330
	.ascii	"QueueHandle_t\000"
	.4byte	0x33c
	.ascii	"SemaphoreHandle_t\000"
	.4byte	0x438
	.ascii	"_Bool\000"
	.4byte	0x463
	.ascii	"float\000"
	.4byte	0xb
	.ascii	"sCartesian\000"
	.4byte	0x4b2
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x4cf
	.ascii	"lcd_cb_t\000"
	.4byte	0x4df
	.ascii	"nrf_lcd_t\000"
	.4byte	0x4f4
	.ascii	"FONT_INFO\000"
	.4byte	0x504
	.ascii	"nrf_gfx_font_desc_t\000"
	.4byte	0x29
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
	.4byte	.LFB267
	.4byte	.LFE267-.LFB267
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
	.4byte	.LFB267
	.4byte	.LFE267
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
	.uleb128 0x9
	.uleb128 0x3
	.byte	0x4
	.byte	0x3
	.uleb128 0xa
	.uleb128 0xc
	.byte	0x3
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.file 26 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\software\\MainComTask.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1a
	.file 27 "../../../drivers/defines.h"
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x1b
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xd
	.uleb128 0xa
	.byte	0x4
	.file 28 "../../../../../../external/freertos/source/include/FreeRTOS.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x1c
	.file 29 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x4
	.file 30 "../../../config/FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x1e
	.file 31 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x1f
	.file 32 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x20
	.file 33 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x21
	.byte	0x3
	.uleb128 0x92
	.uleb128 0xd
	.file 34 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x22
	.file 35 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x23
	.byte	0x4
	.byte	0x4
	.file 36 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x24
	.byte	0x4
	.file 37 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x25
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.file 38 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x26
	.byte	0x4
	.file 39 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x27
	.byte	0x4
	.file 40 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x28
	.byte	0x4
	.file 41 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x29
	.byte	0x4
	.byte	0x4
	.file 42 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x2a
	.byte	0x4
	.file 43 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x2b
	.byte	0x4
	.file 44 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x2c
	.byte	0x4
	.byte	0x4
	.file 45 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x2d
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x29
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x9
	.byte	0x4
	.file 46 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x4
	.file 47 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x2f
	.file 48 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x30
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x5
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x2b
	.byte	0x4
	.byte	0x4
	.file 49 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x31
	.byte	0x4
	.file 50 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x32
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb1
	.uleb128 0x2e
	.byte	0x4
	.file 51 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd6
	.uleb128 0x33
	.file 52 "../../../systemView/SEGGER_SYSVIEW.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x34
	.file 53 "../../../systemView/SEGGER.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x35
	.file 54 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x36
	.byte	0x4
	.file 55 "../../../systemView/Global.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0x37
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 56 "../../../../../../external/freertos/source/include/projdefs.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x38
	.byte	0x4
	.file 57 "../../../../../../external/freertos/source/include/portable.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x39
	.file 58 "../../../../../../external/freertos/source/include/deprecated_definitions.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x3a
	.byte	0x4
	.file 59 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x3b
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x10
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 60 "../../../../../../external/freertos/source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x3c
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x11
	.file 61 "../../../../../../external/freertos/source/include/list.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x3d
	.byte	0x4
	.byte	0x4
	.file 62 "../../../communication/arq.h"
	.byte	0x3
	.uleb128 0x10
	.uleb128 0x3e
	.byte	0x4
	.byte	0x3
	.uleb128 0x11
	.uleb128 0x8
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 63 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x3f
	.file 64 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x40
	.file 65 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x41
	.byte	0x4
	.file 66 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x42
	.byte	0x4
	.file 67 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x43
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xf
	.byte	0x4
	.file 68 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x44
	.byte	0x4
	.byte	0x4
	.file 69 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x45
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x31
	.byte	0x4
	.byte	0x4
	.file 70 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x46
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x14
	.file 71 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x47
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x19
	.file 72 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x48
	.file 73 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x49
	.file 74 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x4a
	.file 75 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x4b
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x6
	.file 76 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x4c
	.file 77 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x4d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 78 "../../../../../../integration/nrfx/nrfx_glue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x4e
	.file 79 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x4f
	.byte	0x4
	.file 80 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x50
	.file 81 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x51
	.byte	0x4
	.byte	0x4
	.file 82 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x52
	.byte	0x4
	.file 83 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x53
	.file 84 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x54
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 85 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x55
	.byte	0x4
	.byte	0x4
	.file 86 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x56
	.file 87 "../../../../../../modules/nrfx/hal/nrf_twim.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x57
	.byte	0x4
	.byte	0x4
	.file 88 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x58
	.file 89 "../../../../../../modules/nrfx/hal/nrf_twi.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x59
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 90 "../../../../../../components/libraries/queue/nrf_queue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x5a
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x18
	.byte	0x4
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x16
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.file 91 "../../../drivers/oled.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x5b
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF106:
	.ascii	"currency_symbol\000"
.LASF43:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF39:
	.ascii	"padding\000"
.LASF72:
	.ascii	"axel_offset\000"
.LASF73:
	.ascii	"sensor_offset1\000"
.LASF74:
	.ascii	"sensor_offset2\000"
.LASF176:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF153:
	.ascii	"__RAL_data_utf8_space\000"
.LASF96:
	.ascii	"__iswctype\000"
.LASF133:
	.ascii	"date_time_format\000"
.LASF148:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF84:
	.ascii	"next\000"
.LASF41:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF244:
	.ascii	"validWaypoint\000"
.LASF144:
	.ascii	"__RAL_codeset_ascii\000"
.LASF85:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF9:
	.ascii	"widthBits\000"
.LASF123:
	.ascii	"int_n_sep_by_space\000"
.LASF114:
	.ascii	"p_cs_precedes\000"
.LASF183:
	.ascii	"handle_user_task\000"
.LASF155:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF199:
	.ascii	"gHandshook\000"
.LASF226:
	.ascii	"command_in\000"
.LASF242:
	.ascii	"xQueueGenericSend\000"
.LASF141:
	.ascii	"long long unsigned int\000"
.LASF247:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF5:
	.ascii	"data\000"
.LASF54:
	.ascii	"order\000"
.LASF87:
	.ascii	"__locale_s\000"
.LASF158:
	.ascii	"__user_get_time_of_day\000"
.LASF175:
	.ascii	"_vectors\000"
.LASF180:
	.ascii	"QueueHandle_t\000"
.LASF168:
	.ascii	"ITM_RxBuffer\000"
.LASF131:
	.ascii	"date_format\000"
.LASF216:
	.ascii	"orkney_8ptFontInfo\000"
.LASF248:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\software\\MainComTask.c\000"
.LASF105:
	.ascii	"int_curr_symbol\000"
.LASF33:
	.ascii	"NRF_LCD_ROTATE_180\000"
.LASF70:
	.ascii	"tower_offset_x\000"
.LASF224:
	.ascii	"m_lcd_cb\000"
.LASF129:
	.ascii	"abbrev_month_names\000"
.LASF59:
	.ascii	"int16_t\000"
.LASF83:
	.ascii	"decode\000"
.LASF140:
	.ascii	"long long int\000"
.LASF138:
	.ascii	"signed char\000"
.LASF142:
	.ascii	"__RAL_global_locale\000"
.LASF38:
	.ascii	"module_id\000"
.LASF90:
	.ascii	"codeset\000"
.LASF235:
	.ascii	"vTaskDelay\000"
.LASF214:
	.ascii	"FONT_INFO\000"
.LASF97:
	.ascii	"__towupper\000"
.LASF228:
	.ascii	"waypoint\000"
.LASF188:
	.ascii	"sensor_tower_task\000"
.LASF112:
	.ascii	"int_frac_digits\000"
.LASF241:
	.ascii	"nrf_log_frontend_std_2\000"
.LASF27:
	.ascii	"state\000"
.LASF101:
	.ascii	"long int\000"
.LASF207:
	.ascii	"gLeft\000"
.LASF91:
	.ascii	"__RAL_locale_data_t\000"
.LASF152:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF179:
	.ascii	"TaskHandle_t\000"
.LASF164:
	.ascii	"stdin\000"
.LASF230:
	.ascii	"wpAngle\000"
.LASF42:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF11:
	.ascii	"uint16_t\000"
.LASF196:
	.ascii	"poseControllerQ\000"
.LASF177:
	.ascii	"BaseType_t\000"
.LASF93:
	.ascii	"__isctype\000"
.LASF120:
	.ascii	"int_p_cs_precedes\000"
.LASF189:
	.ascii	"arq_task\000"
.LASF48:
	.ascii	"__irq_masks\000"
.LASF127:
	.ascii	"abbrev_day_names\000"
.LASF111:
	.ascii	"negative_sign\000"
.LASF136:
	.ascii	"__wchar\000"
.LASF2:
	.ascii	"endChar\000"
.LASF201:
	.ascii	"USEBLUETOOTH\000"
.LASF71:
	.ascii	"tower_offset_y\000"
.LASF24:
	.ascii	"nrf_lcd_rotation_t\000"
.LASF103:
	.ascii	"thousands_sep\000"
.LASF109:
	.ascii	"mon_grouping\000"
.LASF229:
	.ascii	"isValidWaypoint\000"
.LASF119:
	.ascii	"n_sign_posn\000"
.LASF40:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF21:
	.ascii	"lcd_cb_t\000"
.LASF252:
	.ascii	"oldwaypoint\000"
.LASF3:
	.ascii	"spacePixels\000"
.LASF26:
	.ascii	"unsigned int\000"
.LASF122:
	.ascii	"int_p_sep_by_space\000"
.LASF169:
	.ascii	"SystemCoreClock\000"
.LASF130:
	.ascii	"am_pm_indicator\000"
.LASF151:
	.ascii	"__RAL_data_utf8_period\000"
.LASF104:
	.ascii	"grouping\000"
.LASF172:
	.ascii	"long unsigned int\000"
.LASF4:
	.ascii	"charInfo\000"
.LASF98:
	.ascii	"__towlower\000"
.LASF205:
	.ascii	"gX_hat\000"
.LASF156:
	.ascii	"__RAL_data_empty_string\000"
.LASF251:
	.ascii	"pvParameters\000"
.LASF186:
	.ascii	"pose_controller_task\000"
.LASF68:
	.ascii	"name\000"
.LASF197:
	.ascii	"scanStatusQ\000"
.LASF211:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF174:
	.ascii	"__StackLimit\000"
.LASF28:
	.ascii	"width\000"
.LASF170:
	.ascii	"nrf_nvic_state_t\000"
.LASF184:
	.ascii	"handle_microsd_task\000"
.LASF198:
	.ascii	"queue_microsd\000"
.LASF234:
	.ascii	"server_connect\000"
.LASF12:
	.ascii	"short unsigned int\000"
.LASF249:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF7:
	.ascii	"FONT_CHAR_INFO\000"
.LASF50:
	.ascii	"type\000"
.LASF233:
	.ascii	"vTaskResume\000"
.LASF126:
	.ascii	"day_names\000"
.LASF75:
	.ascii	"sensor_offset3\000"
.LASF231:
	.ascii	"target\000"
.LASF31:
	.ascii	"NRF_LCD_ROTATE_0\000"
.LASF49:
	.ascii	"__cr_flag\000"
.LASF1:
	.ascii	"startChar\000"
.LASF162:
	.ascii	"timeval\000"
.LASF37:
	.ascii	"NRFX_DRV_STATE_POWERED_ON\000"
.LASF165:
	.ascii	"stdout\000"
.LASF246:
	.ascii	"i2cReciveNOADDR\000"
.LASF62:
	.ascii	"tower_angle\000"
.LASF187:
	.ascii	"communication_task\000"
.LASF89:
	.ascii	"__RAL_locale_t\000"
.LASF132:
	.ascii	"time_format\000"
.LASF192:
	.ascii	"xTickMutex\000"
.LASF94:
	.ascii	"__toupper\000"
.LASF118:
	.ascii	"p_sign_posn\000"
.LASF22:
	.ascii	"ret_code_t\000"
.LASF15:
	.ascii	"lcd_pixel_draw\000"
.LASF146:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF67:
	.ascii	"name_length\000"
.LASF193:
	.ascii	"xControllerBSem\000"
.LASF250:
	.ascii	"vMainCommunicationTask\000"
.LASF178:
	.ascii	"TickType_t\000"
.LASF20:
	.ascii	"p_lcd_cb\000"
.LASF219:
	.ascii	"message_in\000"
.LASF221:
	.ascii	"thetahat\000"
.LASF100:
	.ascii	"__mbtowc\000"
.LASF171:
	.ascii	"nrf_nvic_state\000"
.LASF51:
	.ascii	"message\000"
.LASF143:
	.ascii	"__RAL_c_locale\000"
.LASF95:
	.ascii	"__tolower\000"
.LASF53:
	.ascii	"handshake\000"
.LASF191:
	.ascii	"xPoseMutex\000"
.LASF157:
	.ascii	"__user_set_time_of_day\000"
.LASF121:
	.ascii	"int_n_cs_precedes\000"
.LASF208:
	.ascii	"gRight\000"
.LASF145:
	.ascii	"__RAL_codeset_utf8\000"
.LASF88:
	.ascii	"__category\000"
.LASF52:
	.ascii	"update\000"
.LASF245:
	.ascii	"sendScanBorder\000"
.LASF135:
	.ascii	"__state\000"
.LASF14:
	.ascii	"lcd_uninit\000"
.LASF218:
	.ascii	"m_nrf_lcd\000"
.LASF64:
	.ascii	"sensor2\000"
.LASF16:
	.ascii	"lcd_rect_draw\000"
.LASF66:
	.ascii	"sensor4\000"
.LASF173:
	.ascii	"__StackTop\000"
.LASF190:
	.ascii	"xScanLock\000"
.LASF25:
	.ascii	"_Bool\000"
.LASF139:
	.ascii	"int32_t\000"
.LASF8:
	.ascii	"unsigned char\000"
.LASF223:
	.ascii	"yhat\000"
.LASF0:
	.ascii	"height\000"
.LASF147:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF213:
	.ascii	"nrf_lcd_t\000"
.LASF113:
	.ascii	"frac_digits\000"
.LASF45:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF60:
	.ascii	"short int\000"
.LASF220:
	.ascii	"counter\000"
.LASF202:
	.ascii	"newServer\000"
.LASF57:
	.ascii	"order_message_t\000"
.LASF160:
	.ascii	"__RAL_error_decoder_head\000"
.LASF238:
	.ascii	"nrf_log_frontend_std_0\000"
.LASF236:
	.ascii	"nrf_log_frontend_std_1\000"
.LASF204:
	.ascii	"gTheta_hat\000"
.LASF134:
	.ascii	"__mbstate_s\000"
.LASF161:
	.ascii	"FILE\000"
.LASF225:
	.ascii	"Setpoint\000"
.LASF18:
	.ascii	"lcd_rotation_set\000"
.LASF30:
	.ascii	"nrfx_drv_state_t\000"
.LASF108:
	.ascii	"mon_thousands_sep\000"
.LASF209:
	.ascii	"gRightWheelTicks\000"
.LASF110:
	.ascii	"positive_sign\000"
.LASF23:
	.ascii	"uint32_t\000"
.LASF200:
	.ascii	"gPaused\000"
.LASF34:
	.ascii	"NRF_LCD_ROTATE_270\000"
.LASF240:
	.ascii	"send_ping_response\000"
.LASF55:
	.ascii	"update_message_t\000"
.LASF124:
	.ascii	"int_p_sign_posn\000"
.LASF222:
	.ascii	"xhat\000"
.LASF181:
	.ascii	"SemaphoreHandle_t\000"
.LASF86:
	.ascii	"char\000"
.LASF115:
	.ascii	"p_sep_by_space\000"
.LASF58:
	.ascii	"Message\000"
.LASF237:
	.ascii	"send_handshake\000"
.LASF243:
	.ascii	"atan2\000"
.LASF212:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF61:
	.ascii	"heading\000"
.LASF63:
	.ascii	"sensor1\000"
.LASF65:
	.ascii	"sensor3\000"
.LASF10:
	.ascii	"offset\000"
.LASF32:
	.ascii	"NRF_LCD_ROTATE_90\000"
.LASF44:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF92:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF47:
	.ascii	"sCartesian\000"
.LASF77:
	.ascii	"sensor_heading1\000"
.LASF78:
	.ascii	"sensor_heading2\000"
.LASF79:
	.ascii	"sensor_heading3\000"
.LASF80:
	.ascii	"sensor_heading4\000"
.LASF69:
	.ascii	"length\000"
.LASF76:
	.ascii	"sensor_offset4\000"
.LASF210:
	.ascii	"gLeftWheelTicks\000"
.LASF167:
	.ascii	"message_t\000"
.LASF125:
	.ascii	"int_n_sign_posn\000"
.LASF185:
	.ascii	"pose_estimator_task\000"
.LASF166:
	.ascii	"stderr\000"
.LASF149:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF182:
	.ascii	"handle_display_task\000"
.LASF19:
	.ascii	"lcd_display_invert\000"
.LASF82:
	.ascii	"__RAL_error_decoder_s\000"
.LASF159:
	.ascii	"__RAL_error_decoder_t\000"
.LASF116:
	.ascii	"n_cs_precedes\000"
.LASF6:
	.ascii	"uint8_t\000"
.LASF17:
	.ascii	"lcd_display\000"
.LASF239:
	.ascii	"xQueueSemaphoreTake\000"
.LASF46:
	.ascii	"float\000"
.LASF203:
	.ascii	"validateWP\000"
.LASF128:
	.ascii	"month_names\000"
.LASF194:
	.ascii	"xCommandReadyBSem\000"
.LASF195:
	.ascii	"mutex_spi\000"
.LASF36:
	.ascii	"NRFX_DRV_STATE_INITIALIZED\000"
.LASF35:
	.ascii	"NRFX_DRV_STATE_UNINITIALIZED\000"
.LASF217:
	.ascii	"queue_display\000"
.LASF29:
	.ascii	"rotation\000"
.LASF117:
	.ascii	"n_sep_by_space\000"
.LASF163:
	.ascii	"__RAL_FILE\000"
.LASF215:
	.ascii	"nrf_gfx_font_desc_t\000"
.LASF154:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF81:
	.ascii	"deadline\000"
.LASF13:
	.ascii	"lcd_init\000"
.LASF150:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF107:
	.ascii	"mon_decimal_point\000"
.LASF99:
	.ascii	"__wctomb\000"
.LASF137:
	.ascii	"double\000"
.LASF102:
	.ascii	"decimal_point\000"
.LASF232:
	.ascii	"server_communication_init\000"
.LASF206:
	.ascii	"gY_hat\000"
.LASF227:
	.ascii	"success\000"
.LASF56:
	.ascii	"handshake_message_t\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
