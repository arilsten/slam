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
	.file	"main.c"
	.text
.Ltext0:
	.section	.rodata.user_task.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"X: %i Y: %i\000"
	.global	__aeabi_f2d
	.global	__aeabi_dmul
	.global	__aeabi_ddiv
	.global	__aeabi_d2iz
	.align	2
.LC1:
	.ascii	"HEADING: %i\000"
	.section	.text.user_task,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	user_task, %function
user_task:
.LVL0:
.LFB411:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam\\main.c"
	.loc 1 144 34 view -0
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 144 34 is_stmt 0 view .LVU1
	push	{lr}
.LCFI0:
	sub	sp, sp, #44
.LCFI1:
	.loc 1 159 5 is_stmt 1 view .LVU2
	bl	vPortEnterCritical
.LVL1:
	.loc 1 160 5 view .LVU3
	bl	motor_init
.LVL2:
	.loc 1 161 5 view .LVU4
	bl	servo_init
.LVL3:
	.loc 1 162 5 view .LVU5
	bl	encoder_init_int
.LVL4:
	.loc 1 163 5 view .LVU6
	bl	vPortExitCritical
.LVL5:
	.loc 1 164 5 view .LVU7
	bl	i2cInit
.LVL6:
	.loc 1 165 5 view .LVU8
	movs	r0, #30
	bl	vTaskDelay
.LVL7:
	.loc 1 166 5 view .LVU9
	bl	IMU_init
.LVL8:
	.loc 1 170 5 view .LVU10
	movs	r1, #1
	ldr	r3, .L4+8
	ldr	r0, [r3]
	bl	vTaskPrioritySet
.LVL9:
	.loc 1 171 5 view .LVU11
	movw	r0, #5000
	bl	vTaskDelay
.LVL10:
	.loc 1 174 5 view .LVU12
	.loc 1 175 5 view .LVU13
	.loc 1 180 2 view .LVU14
	.loc 1 181 2 view .LVU15
	.loc 1 182 1 view .LVU16
	.loc 1 183 1 view .LVU17
.L2:
	.loc 1 185 5 view .LVU18
	.loc 1 186 9 view .LVU19
	mov	r0, #1000
	bl	vTaskDelay
.LVL11:
	.loc 1 187 9 view .LVU20
	ldr	r3, .L4+12
	ldrsh	r3, [r3]
	ldr	r2, .L4+16
	ldrsh	r2, [r2]
	ldr	r1, .L4+20
	add	r0, sp, #20
	bl	sprintf
.LVL12:
	.loc 1 188 9 view .LVU21
	add	r1, sp, #20
	movs	r0, #1
	bl	display_text_on_line
.LVL13:
	.loc 1 189 9 view .LVU22
	.loc 1 189 55 is_stmt 0 view .LVU23
	ldr	r3, .L4+24
	ldr	r0, [r3]	@ float
	bl	__aeabi_f2d
.LVL14:
	movs	r2, #0
	ldr	r3, .L4+28
	bl	__aeabi_dmul
.LVL15:
	.loc 1 189 62 view .LVU24
	adr	r3, .L4
	ldrd	r2, [r3]
	bl	__aeabi_ddiv
.LVL16:
	.loc 1 189 9 view .LVU25
	bl	__aeabi_d2iz
.LVL17:
	mov	r2, r0
	ldr	r1, .L4+32
	mov	r0, sp
	bl	sprintf
.LVL18:
	.loc 1 190 9 is_stmt 1 view .LVU26
	mov	r1, sp
	movs	r0, #2
	bl	display_text_on_line
.LVL19:
	.loc 1 198 3 view .LVU27
	b	.L2
.L5:
	.align	3
.L4:
	.word	1413754136
	.word	1074340347
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LC0
	.word	.LANCHOR3
	.word	1080459264
	.word	.LC1
.LFE411:
	.size	user_task, .-user_task
	.section	.rodata.log_init.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\main.c\000"
	.section	.text.log_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	log_init, %function
log_init:
.LFB412:
	.loc 1 238 28 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI2:
	.loc 1 239 5 view .LVU29
	.loc 1 239 27 is_stmt 0 view .LVU30
	mov	r1, #32768
	movs	r0, #0
	bl	nrf_log_init
.LVL20:
	.loc 1 240 5 is_stmt 1 view .LVU31
.LBB2:
	.loc 1 240 10 view .LVU32
	.loc 1 240 54 view .LVU33
	.loc 1 240 57 is_stmt 0 view .LVU34
	cbnz	r0, .L9
.LVL21:
.L6:
	.loc 1 240 57 view .LVU35
.LBE2:
	.loc 1 243 1 view .LVU36
	pop	{r3, pc}
.LVL22:
.L9:
.LBB3:
	.loc 1 240 91 is_stmt 1 discriminator 1 view .LVU37
	.loc 1 240 96 discriminator 1 view .LVU38
	ldr	r2, .L10
	movs	r1, #240
	bl	app_error_handler
.LVL23:
	.loc 1 240 228 discriminator 1 view .LVU39
.LBE3:
	.loc 1 240 243 discriminator 1 view .LVU40
	.loc 1 243 1 is_stmt 0 discriminator 1 view .LVU41
	b	.L6
.L11:
	.align	2
.L10:
	.word	.LC2
.LFE412:
	.size	log_init, .-log_init
	.section	.text.clock_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	clock_init, %function
clock_init:
.LFB410:
	.loc 1 127 30 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
.LCFI3:
	.loc 1 128 5 view .LVU43
	.loc 1 128 27 is_stmt 0 view .LVU44
	bl	nrf_drv_clock_init
.LVL24:
	.loc 1 129 5 is_stmt 1 view .LVU45
.LBB4:
	.loc 1 129 10 view .LVU46
	.loc 1 129 54 view .LVU47
	.loc 1 129 57 is_stmt 0 view .LVU48
	cbnz	r0, .L15
.LVL25:
.L12:
	.loc 1 129 57 view .LVU49
.LBE4:
	.loc 1 130 1 view .LVU50
	pop	{r3, pc}
.LVL26:
.L15:
.LBB5:
	.loc 1 129 91 is_stmt 1 discriminator 1 view .LVU51
	.loc 1 129 96 discriminator 1 view .LVU52
	ldr	r2, .L16
	movs	r1, #129
	bl	app_error_handler
.LVL27:
	.loc 1 129 228 discriminator 1 view .LVU53
.LBE5:
	.loc 1 129 243 discriminator 1 view .LVU54
	.loc 1 130 1 is_stmt 0 discriminator 1 view .LVU55
	b	.L12
.L17:
	.align	2
.L16:
	.word	.LC2
.LFE410:
	.size	clock_init, .-clock_init
	.section	.text.vApplicationIdleHook,"ax",%progbits
	.align	1
	.global	vApplicationIdleHook
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vApplicationIdleHook, %function
vApplicationIdleHook:
.LFB409:
	.loc 1 119 33 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 123 1 view .LVU57
	bx	lr
.LFE409:
	.size	vApplicationIdleHook, .-vApplicationIdleHook
	.section	.rodata.main.str1.4,"aMS",%progbits,1
	.align	2
.LC3:
	.ascii	"DISP\000"
	.align	2
.LC4:
	.ascii	"USER\000"
	.align	2
.LC5:
	.ascii	"SD\000"
	.align	2
.LC6:
	.ascii	"POSE\000"
	.align	2
.LC7:
	.ascii	"POSC\000"
	.align	2
.LC8:
	.ascii	"SnsT\000"
	.align	2
.LC9:
	.ascii	"COM\000"
	.align	2
.LC10:
	.ascii	"ARQ\000"
	.align	2
.LC11:
	.ascii	"vARQTask Creation Failed\000"
	.align	2
.LC12:
	.ascii	"\012Initialization done. SLAM application now start"
	.ascii	"ing.\012.\000"
	.section	.text.main,"ax",%progbits
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	main, %function
main:
.LFB413:
	.loc 1 245 16 view -0
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI4:
	sub	sp, sp, #20
.LCFI5:
	.loc 1 247 4 view .LVU59
	.loc 1 248 5 view .LVU60
	bl	log_init
.LVL28:
	.loc 1 249 5 view .LVU61
	bl	clock_init
.LVL29:
	.loc 1 251 5 view .LVU62
	bl	ir_init
.LVL30:
	.loc 1 296 5 view .LVU63
	bl	BLE_init
.LVL31:
	.loc 1 297 5 view .LVU64
	bl	arq_init
.LVL32:
	.loc 1 300 2 view .LVU65
	.loc 1 300 18 is_stmt 0 view .LVU66
	movs	r2, #0
	movs	r1, #20
	movs	r0, #5
	bl	xQueueGenericCreate
.LVL33:
	.loc 1 300 16 view .LVU67
	ldr	r3, .L40
	str	r0, [r3]
	.loc 1 301 2 is_stmt 1 view .LVU68
	.loc 1 301 18 is_stmt 0 view .LVU69
	movs	r2, #0
	movs	r1, #8
	movs	r0, #5
	bl	xQueueGenericCreate
.LVL34:
	.loc 1 301 16 view .LVU70
	ldr	r3, .L40+4
	str	r0, [r3]
	.loc 1 302 2 is_stmt 1 view .LVU71
	.loc 1 302 20 is_stmt 0 view .LVU72
	movs	r2, #0
	movs	r1, #8
	movs	r0, #1
	bl	xQueueGenericCreate
.LVL35:
	.loc 1 302 18 view .LVU73
	ldr	r3, .L40+8
	str	r0, [r3]
	.loc 1 303 2 is_stmt 1 view .LVU74
	.loc 1 303 16 is_stmt 0 view .LVU75
	movs	r2, #0
	movs	r1, #1
	mov	r0, r1
	bl	xQueueGenericCreate
.LVL36:
	.loc 1 303 14 view .LVU76
	ldr	r3, .L40+12
	str	r0, [r3]
	.loc 1 306 2 is_stmt 1 view .LVU77
	.loc 1 306 14 is_stmt 0 view .LVU78
	movs	r0, #1
	bl	xQueueCreateMutex
.LVL37:
	.loc 1 306 12 view .LVU79
	ldr	r3, .L40+16
	str	r0, [r3]
	.loc 1 307 2 is_stmt 1 view .LVU80
	.loc 1 307 15 is_stmt 0 view .LVU81
	movs	r0, #1
	bl	xQueueCreateMutex
.LVL38:
	.loc 1 307 13 view .LVU82
	ldr	r3, .L40+20
	str	r0, [r3]
	.loc 1 308 2 is_stmt 1 view .LVU83
	.loc 1 308 15 is_stmt 0 view .LVU84
	movs	r0, #1
	bl	xQueueCreateMutex
.LVL39:
	.loc 1 308 13 view .LVU85
	ldr	r3, .L40+24
	str	r0, [r3]
	.loc 1 309 2 is_stmt 1 view .LVU86
	.loc 1 309 20 is_stmt 0 view .LVU87
	movs	r2, #3
	movs	r1, #0
	movs	r0, #1
	bl	xQueueGenericCreate
.LVL40:
	.loc 1 309 18 view .LVU88
	ldr	r3, .L40+28
	str	r0, [r3]
	.loc 1 310 2 is_stmt 1 view .LVU89
	.loc 1 310 22 is_stmt 0 view .LVU90
	movs	r2, #3
	movs	r1, #0
	movs	r0, #1
	bl	xQueueGenericCreate
.LVL41:
	.loc 1 310 20 view .LVU91
	ldr	r3, .L40+32
	str	r0, [r3]
	.loc 1 311 2 is_stmt 1 view .LVU92
	.loc 1 311 20 is_stmt 0 view .LVU93
	movs	r0, #1
	bl	xQueueCreateMutex
.LVL42:
	.loc 1 311 18 view .LVU94
	ldr	r3, .L40+36
	str	r0, [r3]
	.loc 1 318 5 is_stmt 1 view .LVU95
	.loc 1 318 37 is_stmt 0 view .LVU96
	ldr	r3, .L40+40
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #128
	ldr	r1, .L40+44
	ldr	r0, .L40+48
	bl	xTaskCreate
.LVL43:
	.loc 1 318 8 view .LVU97
	cmp	r0, #1
	bne	.L31
.L20:
	.loc 1 319 143 is_stmt 1 discriminator 1 view .LVU98
	.loc 1 321 5 discriminator 1 view .LVU99
	.loc 1 321 37 is_stmt 0 discriminator 1 view .LVU100
	ldr	r3, .L40+52
	str	r3, [sp, #4]
	movs	r3, #4
	str	r3, [sp]
	movs	r3, #0
	movs	r2, #128
	ldr	r1, .L40+56
	ldr	r0, .L40+60
	bl	xTaskCreate
.LVL44:
	.loc 1 321 8 discriminator 1 view .LVU101
	cmp	r0, #1
	bne	.L32
.L21:
	.loc 1 322 143 is_stmt 1 discriminator 1 view .LVU102
	.loc 1 325 5 discriminator 1 view .LVU103
	.loc 1 325 37 is_stmt 0 discriminator 1 view .LVU104
	ldr	r3, .L40+64
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #0
	mov	r2, #256
	ldr	r1, .L40+68
	ldr	r0, .L40+72
	bl	xTaskCreate
.LVL45:
	.loc 1 325 8 discriminator 1 view .LVU105
	cmp	r0, #1
	bne	.L33
.L22:
	.loc 1 326 143 is_stmt 1 discriminator 1 view .LVU106
	.loc 1 328 5 discriminator 1 view .LVU107
	.loc 1 328 37 is_stmt 0 discriminator 1 view .LVU108
	ldr	r3, .L40+76
	str	r3, [sp, #4]
	movs	r3, #3
	str	r3, [sp]
	movs	r3, #0
	mov	r2, #256
	ldr	r1, .L40+80
	ldr	r0, .L40+84
	bl	xTaskCreate
.LVL46:
	.loc 1 328 8 discriminator 1 view .LVU109
	cmp	r0, #1
	bne	.L34
.L23:
	.loc 1 329 143 is_stmt 1 discriminator 1 view .LVU110
	.loc 1 331 5 discriminator 1 view .LVU111
	.loc 1 331 37 is_stmt 0 discriminator 1 view .LVU112
	ldr	r3, .L40+88
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #0
	mov	r2, #512
	ldr	r1, .L40+92
	ldr	r0, .L40+96
	bl	xTaskCreate
.LVL47:
	.loc 1 331 8 discriminator 1 view .LVU113
	cmp	r0, #1
	bne	.L35
.L24:
	.loc 1 332 143 is_stmt 1 discriminator 1 view .LVU114
	.loc 1 334 5 discriminator 1 view .LVU115
	.loc 1 334 37 is_stmt 0 discriminator 1 view .LVU116
	ldr	r3, .L40+100
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #0
	mov	r2, #256
	ldr	r1, .L40+104
	ldr	r0, .L40+108
	bl	xTaskCreate
.LVL48:
	.loc 1 334 8 discriminator 1 view .LVU117
	cmp	r0, #1
	bne	.L36
.L25:
	.loc 1 335 137 is_stmt 1 discriminator 1 view .LVU118
	.loc 1 337 2 discriminator 1 view .LVU119
	.loc 1 337 34 is_stmt 0 discriminator 1 view .LVU120
	ldr	r3, .L40+112
	str	r3, [sp, #4]
	movs	r3, #1
	str	r3, [sp]
	movs	r3, #0
	mov	r2, #256
	ldr	r1, .L40+116
	ldr	r0, .L40+120
	bl	xTaskCreate
.LVL49:
	.loc 1 337 5 discriminator 1 view .LVU121
	cmp	r0, #1
	bne	.L37
.L26:
	.loc 1 338 147 is_stmt 1 discriminator 1 view .LVU122
	.loc 1 341 5 discriminator 1 view .LVU123
	.loc 1 341 9 is_stmt 0 discriminator 1 view .LVU124
	ldr	r3, .L40+124
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 341 8 discriminator 1 view .LVU125
	cmp	r3, #0
	bne	.L38
.L27:
	.loc 1 351 5 is_stmt 1 discriminator 3 view .LVU126
	.loc 1 351 78 discriminator 3 view .LVU127
	.loc 1 351 133 discriminator 3 view .LVU128
	.loc 1 351 214 is_stmt 0 discriminator 3 view .LVU129
	ldr	r3, .L40+128
	ldrh	r0, [r3]
	.loc 1 351 225 discriminator 3 view .LVU130
	lsls	r0, r0, #16
	.loc 1 351 133 discriminator 3 view .LVU131
	ldr	r1, .L40+132
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL50:
	.loc 1 351 297 is_stmt 1 discriminator 3 view .LVU132
	.loc 1 353 5 discriminator 3 view .LVU133
	bl	vTaskStartScheduler
.LVL51:
.L29:
	.loc 1 355 5 discriminator 1 view .LVU134
	.loc 1 361 9 discriminator 1 view .LVU135
	.loc 1 361 14 discriminator 1 view .LVU136
	ldr	r2, .L40+136
	movw	r1, #361
	movs	r0, #15
	bl	app_error_handler
.LVL52:
	.loc 1 361 144 discriminator 1 view .LVU137
	.loc 1 355 11 discriminator 1 view .LVU138
	b	.L29
.L31:
	.loc 1 319 9 view .LVU139
	.loc 1 319 14 view .LVU140
	ldr	r2, .L40+136
	movw	r1, #319
	movs	r0, #4
	bl	app_error_handler
.LVL53:
	b	.L20
.L32:
	.loc 1 322 9 view .LVU141
	.loc 1 322 14 view .LVU142
	ldr	r2, .L40+136
	mov	r1, #322
	movs	r0, #4
	bl	app_error_handler
.LVL54:
	b	.L21
.L33:
	.loc 1 326 9 view .LVU143
	.loc 1 326 14 view .LVU144
	ldr	r2, .L40+136
	mov	r1, #326
	movs	r0, #4
	bl	app_error_handler
.LVL55:
	b	.L22
.L34:
	.loc 1 329 9 view .LVU145
	.loc 1 329 14 view .LVU146
	ldr	r2, .L40+136
	movw	r1, #329
	movs	r0, #4
	bl	app_error_handler
.LVL56:
	b	.L23
.L35:
	.loc 1 332 9 view .LVU147
	.loc 1 332 14 view .LVU148
	ldr	r2, .L40+136
	mov	r1, #332
	movs	r0, #4
	bl	app_error_handler
.LVL57:
	b	.L24
.L36:
	.loc 1 335 3 view .LVU149
	.loc 1 335 8 view .LVU150
	ldr	r2, .L40+136
	movw	r1, #335
	movs	r0, #4
	bl	app_error_handler
.LVL58:
	b	.L25
.L37:
	.loc 1 338 13 view .LVU151
	.loc 1 338 18 view .LVU152
	ldr	r2, .L40+136
	mov	r1, #338
	movs	r0, #4
	bl	app_error_handler
.LVL59:
	b	.L26
.L38:
	.loc 1 342 9 view .LVU153
	.loc 1 342 40 is_stmt 0 view .LVU154
	ldr	r3, .L40+140
	str	r3, [sp, #4]
	movs	r3, #2
	str	r3, [sp]
	movs	r3, #0
	mov	r2, #256
	ldr	r1, .L40+144
	ldr	r0, .L40+148
	bl	xTaskCreate
.LVL60:
	.loc 1 342 11 view .LVU155
	cmp	r0, #1
	bne	.L39
.L28:
	.loc 1 344 147 is_stmt 1 discriminator 1 view .LVU156
	.loc 1 346 9 discriminator 1 view .LVU157
	ldr	r3, .L40+140
	ldr	r0, [r3]
	bl	vTaskSuspend
.LVL61:
	.loc 1 349 9 discriminator 1 view .LVU158
	add	r1, sp, #15
	ldr	r0, .L40+152
	bl	nrf_sdh_freertos_init
.LVL62:
	b	.L27
.L39:
	.loc 1 343 13 discriminator 2 view .LVU159
	.loc 1 343 86 discriminator 2 view .LVU160
	.loc 1 343 141 discriminator 2 view .LVU161
	.loc 1 343 222 is_stmt 0 discriminator 2 view .LVU162
	ldr	r3, .L40+128
	ldrh	r0, [r3]
	.loc 1 343 233 discriminator 2 view .LVU163
	lsls	r0, r0, #16
	.loc 1 343 141 discriminator 2 view .LVU164
	ldr	r1, .L40+156
	orr	r0, r0, #3
	bl	nrf_log_frontend_std_0
.LVL63:
	.loc 1 344 13 is_stmt 1 discriminator 2 view .LVU165
	.loc 1 344 18 discriminator 2 view .LVU166
	ldr	r2, .L40+136
	mov	r1, #344
	movs	r0, #4
	bl	app_error_handler
.LVL64:
	b	.L28
.L41:
	.align	2
.L40:
	.word	queue_display
	.word	.LANCHOR4
	.word	.LANCHOR5
	.word	.LANCHOR6
	.word	.LANCHOR7
	.word	.LANCHOR8
	.word	.LANCHOR9
	.word	.LANCHOR10
	.word	.LANCHOR11
	.word	.LANCHOR12
	.word	.LANCHOR13
	.word	.LC3
	.word	display_task
	.word	.LANCHOR0
	.word	.LC4
	.word	user_task
	.word	.LANCHOR14
	.word	.LC5
	.word	microsd_task
	.word	.LANCHOR15
	.word	.LC6
	.word	vMainPoseEstimatorTask
	.word	.LANCHOR16
	.word	.LC7
	.word	vMainPoseControllerTask
	.word	.LANCHOR17
	.word	.LC8
	.word	vMainSensorTowerTask
	.word	.LANCHOR18
	.word	.LC9
	.word	vMainCommunicationTask
	.word	.LANCHOR19
	.word	m_nrf_log_app_logs_data_dynamic
	.word	.LC12
	.word	.LC2
	.word	.LANCHOR20
	.word	.LC10
	.word	vARQTask
	.word	advertising_start
	.word	.LC11
.LFE413:
	.size	main, .-main
	.global	LeftMotorDirection
	.global	RightMotorDirection
	.global	shared_SPI_init
	.global	gLeftWheelTicks
	.global	gRightWheelTicks
	.global	gRight
	.global	gLeft
	.global	gY_hat
	.global	gX_hat
	.global	gTheta_hat
	.global	USEBLUETOOTH
	.global	gPaused
	.global	gHandshook
	.global	queue_microsd
	.global	scanStatusQ
	.global	poseControllerQ
	.global	xCollisionMutex
	.global	mutex_spi
	.global	xCommandReadyBSem
	.global	xControllerBSem
	.global	xTickMutex
	.global	xPoseMutex
	.global	xScanLock
	.global	arq_task
	.global	sensor_tower_task
	.global	communication_task
	.global	pose_controller_task
	.global	pose_estimator_task
	.global	handle_microsd_task
	.global	handle_user_task
	.global	handle_display_task
	.section	.bss.USEBLUETOOTH,"aw",%nobits
	.set	.LANCHOR19,. + 0
	.type	USEBLUETOOTH, %object
	.size	USEBLUETOOTH, 1
USEBLUETOOTH:
	.space	1
	.section	.bss.arq_task,"aw",%nobits
	.align	2
	.set	.LANCHOR20,. + 0
	.type	arq_task, %object
	.size	arq_task, 4
arq_task:
	.space	4
	.section	.bss.communication_task,"aw",%nobits
	.align	2
	.set	.LANCHOR18,. + 0
	.type	communication_task, %object
	.size	communication_task, 4
communication_task:
	.space	4
	.section	.bss.gHandshook,"aw",%nobits
	.type	gHandshook, %object
	.size	gHandshook, 1
gHandshook:
	.space	1
	.section	.bss.gLeft,"aw",%nobits
	.align	2
	.type	gLeft, %object
	.size	gLeft, 4
gLeft:
	.space	4
	.section	.bss.gLeftWheelTicks,"aw",%nobits
	.align	1
	.type	gLeftWheelTicks, %object
	.size	gLeftWheelTicks, 2
gLeftWheelTicks:
	.space	2
	.section	.bss.gPaused,"aw",%nobits
	.type	gPaused, %object
	.size	gPaused, 1
gPaused:
	.space	1
	.section	.bss.gRight,"aw",%nobits
	.align	2
	.type	gRight, %object
	.size	gRight, 4
gRight:
	.space	4
	.section	.bss.gRightWheelTicks,"aw",%nobits
	.align	1
	.type	gRightWheelTicks, %object
	.size	gRightWheelTicks, 2
gRightWheelTicks:
	.space	2
	.section	.bss.gTheta_hat,"aw",%nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	gTheta_hat, %object
	.size	gTheta_hat, 4
gTheta_hat:
	.space	4
	.section	.bss.gX_hat,"aw",%nobits
	.align	1
	.set	.LANCHOR2,. + 0
	.type	gX_hat, %object
	.size	gX_hat, 2
gX_hat:
	.space	2
	.section	.bss.gY_hat,"aw",%nobits
	.align	1
	.set	.LANCHOR1,. + 0
	.type	gY_hat, %object
	.size	gY_hat, 2
gY_hat:
	.space	2
	.section	.bss.handle_display_task,"aw",%nobits
	.align	2
	.set	.LANCHOR13,. + 0
	.type	handle_display_task, %object
	.size	handle_display_task, 4
handle_display_task:
	.space	4
	.section	.bss.handle_microsd_task,"aw",%nobits
	.align	2
	.set	.LANCHOR14,. + 0
	.type	handle_microsd_task, %object
	.size	handle_microsd_task, 4
handle_microsd_task:
	.space	4
	.section	.bss.handle_user_task,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	handle_user_task, %object
	.size	handle_user_task, 4
handle_user_task:
	.space	4
	.section	.bss.mutex_spi,"aw",%nobits
	.align	2
	.set	.LANCHOR7,. + 0
	.type	mutex_spi, %object
	.size	mutex_spi, 4
mutex_spi:
	.space	4
	.section	.bss.poseControllerQ,"aw",%nobits
	.align	2
	.set	.LANCHOR5,. + 0
	.type	poseControllerQ, %object
	.size	poseControllerQ, 4
poseControllerQ:
	.space	4
	.section	.bss.pose_controller_task,"aw",%nobits
	.align	2
	.set	.LANCHOR16,. + 0
	.type	pose_controller_task, %object
	.size	pose_controller_task, 4
pose_controller_task:
	.space	4
	.section	.bss.pose_estimator_task,"aw",%nobits
	.align	2
	.set	.LANCHOR15,. + 0
	.type	pose_estimator_task, %object
	.size	pose_estimator_task, 4
pose_estimator_task:
	.space	4
	.section	.bss.queue_microsd,"aw",%nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	queue_microsd, %object
	.size	queue_microsd, 4
queue_microsd:
	.space	4
	.section	.bss.scanStatusQ,"aw",%nobits
	.align	2
	.set	.LANCHOR6,. + 0
	.type	scanStatusQ, %object
	.size	scanStatusQ, 4
scanStatusQ:
	.space	4
	.section	.bss.sensor_tower_task,"aw",%nobits
	.align	2
	.set	.LANCHOR17,. + 0
	.type	sensor_tower_task, %object
	.size	sensor_tower_task, 4
sensor_tower_task:
	.space	4
	.section	.bss.shared_SPI_init,"aw",%nobits
	.type	shared_SPI_init, %object
	.size	shared_SPI_init, 1
shared_SPI_init:
	.space	1
	.section	.bss.xCollisionMutex,"aw",%nobits
	.align	2
	.set	.LANCHOR12,. + 0
	.type	xCollisionMutex, %object
	.size	xCollisionMutex, 4
xCollisionMutex:
	.space	4
	.section	.bss.xCommandReadyBSem,"aw",%nobits
	.align	2
	.set	.LANCHOR11,. + 0
	.type	xCommandReadyBSem, %object
	.size	xCommandReadyBSem, 4
xCommandReadyBSem:
	.space	4
	.section	.bss.xControllerBSem,"aw",%nobits
	.align	2
	.set	.LANCHOR10,. + 0
	.type	xControllerBSem, %object
	.size	xControllerBSem, 4
xControllerBSem:
	.space	4
	.section	.bss.xPoseMutex,"aw",%nobits
	.align	2
	.set	.LANCHOR8,. + 0
	.type	xPoseMutex, %object
	.size	xPoseMutex, 4
xPoseMutex:
	.space	4
	.section	.bss.xScanLock,"aw",%nobits
	.align	2
	.type	xScanLock, %object
	.size	xScanLock, 4
xScanLock:
	.space	4
	.section	.bss.xTickMutex,"aw",%nobits
	.align	2
	.set	.LANCHOR9,. + 0
	.type	xTickMutex, %object
	.size	xTickMutex, 4
xTickMutex:
	.space	4
	.section	.data.LeftMotorDirection,"aw"
	.align	2
	.type	LeftMotorDirection, %object
	.size	LeftMotorDirection, 4
LeftMotorDirection:
	.word	1
	.section	.data.RightMotorDirection,"aw"
	.align	2
	.type	RightMotorDirection, %object
	.size	RightMotorDirection, 4
RightMotorDirection:
	.word	1
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
	.4byte	.LFB411
	.4byte	.LFE411-.LFB411
	.byte	0x4
	.4byte	.LCFI0-.LFB411
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x30
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB412
	.4byte	.LFE412-.LFB412
	.byte	0x4
	.4byte	.LCFI2-.LFB412
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
	.4byte	.LFB410
	.4byte	.LFE410-.LFB410
	.byte	0x4
	.4byte	.LCFI3-.LFB410
	.byte	0xe
	.uleb128 0x8
	.byte	0x83
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB409
	.4byte	.LFE409-.LFB409
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB413
	.4byte	.LFE413-.LFB413
	.byte	0x4
	.4byte	.LCFI4-.LFB413
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x18
	.align	2
.LEFDE8:
	.text
.Letext0:
	.file 2 "../../../software/globals.h"
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
	.uleb128 0x2
	.4byte	.LASF0
	.byte	0x8
	.byte	0x2
	.byte	0x41
	.byte	0x8
	.4byte	0x41
	.uleb128 0x3
	.ascii	"x\000"
	.byte	0x2
	.byte	0x42
	.byte	0xb
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.ascii	"y\000"
	.byte	0x2
	.byte	0x43
	.byte	0xb
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.byte	0
	.file 3 "../../../../../../external/thedotfactory_fonts/nrf_font.h"
	.file 4 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
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
	.uleb128 0x5
	.byte	0xc
	.byte	0x3
	.byte	0x30
	.byte	0x9
	.4byte	0x75
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x3
	.byte	0x32
	.byte	0xd
	.4byte	0x75
	.byte	0
	.uleb128 0x6
	.4byte	.LASF3
	.byte	0x3
	.byte	0x33
	.byte	0xd
	.4byte	0x75
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF4
	.byte	0x3
	.byte	0x34
	.byte	0xd
	.4byte	0x75
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF5
	.byte	0x3
	.byte	0x35
	.byte	0xd
	.4byte	0x75
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x3
	.byte	0x36
	.byte	0x1c
	.4byte	0x81
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x3
	.byte	0x37
	.byte	0x15
	.4byte	0x87
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x8d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x94
	.uleb128 0x8
	.byte	0x4
	.4byte	0x99
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x9
	.4byte	0x9e
	.uleb128 0x9
	.4byte	0x75
	.uleb128 0xa
	.4byte	.LASF10
	.byte	0x3
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.byte	0x27
	.byte	0x9
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF11
	.byte	0x3
	.byte	0x29
	.byte	0xd
	.4byte	0x41
	.byte	0
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x3
	.byte	0x2a
	.byte	0xe
	.4byte	0x4d
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x59
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x60
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF14
	.byte	0
	.file 5 "../../../../../../components/libraries/gfx/nrf_lcd.h"
	.file 6 "../../../../../../components/libraries/util/sdk_errors.h"
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
	.uleb128 0x5
	.byte	0x20
	.byte	0x5
	.byte	0x51
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF15
	.byte	0x5
	.byte	0x56
	.byte	0x13
	.4byte	0x8f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF16
	.byte	0x5
	.byte	0x5b
	.byte	0xd
	.4byte	0x95
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF17
	.byte	0x5
	.byte	0x64
	.byte	0xd
	.4byte	0x9b
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF18
	.byte	0x5
	.byte	0x6f
	.byte	0xd
	.4byte	0xa1
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x5
	.byte	0x78
	.byte	0xd
	.4byte	0x95
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x5
	.byte	0x7f
	.byte	0xd
	.4byte	0xa7
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF21
	.byte	0x5
	.byte	0x86
	.byte	0xd
	.4byte	0xad
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x5
	.byte	0x8b
	.byte	0x10
	.4byte	0xb3
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbe
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfe
	.uleb128 0x8
	.byte	0x4
	.4byte	0x109
	.uleb128 0xb
	.4byte	0x119
	.uleb128 0xc
	.uleb128 0xd
	.4byte	0xd4
	.uleb128 0xe
	.4byte	0x125
	.uleb128 0xe
	.4byte	0x125
	.uleb128 0xe
	.4byte	0x131
	.byte	0
	.uleb128 0xd
	.4byte	0xf3
	.uleb128 0xe
	.4byte	0x125
	.uleb128 0xe
	.4byte	0x125
	.uleb128 0xe
	.4byte	0x125
	.uleb128 0xe
	.4byte	0x125
	.uleb128 0xe
	.4byte	0x131
	.byte	0
	.uleb128 0xd
	.4byte	0xfe
	.uleb128 0xe
	.4byte	0x13d
	.byte	0
	.uleb128 0xd
	.4byte	0x109
	.uleb128 0xe
	.4byte	0x14d
	.byte	0
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x5
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
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x6
	.byte	0x9e
	.byte	0x12
	.4byte	0x131
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x154
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x15b
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
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
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.byte	0
	.file 7 "../../../../../../modules/nrfx/drivers/nrfx_common.h"
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
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.byte	0x44
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x5
	.byte	0x46
	.byte	0x16
	.4byte	0x5b
	.byte	0
	.uleb128 0x6
	.4byte	.LASF2
	.byte	0x5
	.byte	0x47
	.byte	0xe
	.4byte	0x6b
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x5
	.byte	0x48
	.byte	0xe
	.4byte	0x6b
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x5
	.byte	0x49
	.byte	0x18
	.4byte	0x77
	.byte	0x6
	.byte	0
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x7
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
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x87
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x5
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
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF14
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
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x5
	.byte	0x3a
	.byte	0xd
	.4byte	0x44
	.uleb128 0x10
	.4byte	.LASF33
	.byte	0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF35
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.byte	0
	.file 8 "../../../../../../components/libraries/experimental_log/nrf_log_types.h"
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
	.uleb128 0x5
	.byte	0x4
	.byte	0x8
	.byte	0x4c
	.byte	0x9
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF37
	.byte	0x8
	.byte	0x4e
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x6
	.4byte	.LASF38
	.byte	0x8
	.byte	0x4f
	.byte	0xe
	.4byte	0x41
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x4d
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF14
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
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x50
	.byte	0x8
	.byte	0x31
	.byte	0x1
	.4byte	0x50
	.uleb128 0x10
	.4byte	.LASF39
	.byte	0
	.uleb128 0x10
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x2
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x3
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x4
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x5
	.byte	0
	.uleb128 0x4
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
	.uleb128 0xf
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x7
	.byte	0xad
	.byte	0x1
	.4byte	0x3e
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0
	.uleb128 0x10
	.4byte	.LASF46
	.byte	0x1
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x2
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
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
	.uleb128 0x5
	.byte	0xc
	.byte	0x9
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x9
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.byte	0
	.file 10 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.4byte	.LASF50
	.byte	0x8
	.byte	0xa
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x15
	.4byte	.LASF51
	.byte	0xa
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x15
	.4byte	.LASF52
	.byte	0xa
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF53
	.byte	0xa
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x61
	.uleb128 0x17
	.4byte	0x70
	.4byte	0x70
	.uleb128 0xe
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x9
	.4byte	0x82
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF54
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
	.uleb128 0x2
	.4byte	.LASF55
	.byte	0x14
	.byte	0xa
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0xa
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
	.uleb128 0x8
	.byte	0x4
	.4byte	0x55
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.uleb128 0x9
	.4byte	0x5a
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0xa
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
	.uleb128 0x5
	.byte	0xc
	.byte	0xa
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0xa
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0xa
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0xa
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x60
	.uleb128 0x8
	.byte	0x4
	.4byte	0x65
	.uleb128 0x8
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x9
	.4byte	0x6f
	.uleb128 0x9
	.4byte	0x76
	.uleb128 0x9
	.4byte	0x86
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF54
	.uleb128 0xa
	.4byte	.LASF60
	.byte	0xa
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
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xa
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
	.uleb128 0x5
	.byte	0x20
	.byte	0xa
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0xa
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0xa
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0xa
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0xa
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0xa
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF67
	.byte	0xa
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF68
	.byte	0xa
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF69
	.byte	0xa
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x8
	.byte	0x4
	.4byte	0xea
	.uleb128 0x8
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x112
	.uleb128 0x17
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0xe
	.4byte	0x130
	.uleb128 0xe
	.4byte	0x130
	.byte	0
	.uleb128 0x17
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0xe
	.4byte	0x130
	.byte	0
	.uleb128 0x17
	.4byte	0x130
	.4byte	0xea
	.uleb128 0xe
	.4byte	0x137
	.uleb128 0xe
	.4byte	0x130
	.byte	0
	.uleb128 0x17
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0xe
	.4byte	0x137
	.byte	0
	.uleb128 0x17
	.4byte	0x130
	.4byte	0x112
	.uleb128 0xe
	.4byte	0x13e
	.uleb128 0xe
	.4byte	0x144
	.uleb128 0xe
	.4byte	0x14b
	.byte	0
	.uleb128 0x17
	.4byte	0x130
	.4byte	0x130
	.uleb128 0xe
	.4byte	0x155
	.uleb128 0xe
	.4byte	0x15b
	.uleb128 0xe
	.4byte	0x144
	.uleb128 0xe
	.4byte	0x14b
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF70
	.uleb128 0x8
	.byte	0x4
	.4byte	0x161
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.uleb128 0x19
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x144
	.uleb128 0x8
	.byte	0x4
	.4byte	0x168
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF54
	.uleb128 0x9
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
	.uleb128 0x5
	.byte	0x58
	.byte	0xa
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x6
	.4byte	.LASF71
	.byte	0xa
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x6
	.4byte	.LASF72
	.byte	0xa
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF73
	.byte	0xa
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF74
	.byte	0xa
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF75
	.byte	0xa
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF76
	.byte	0xa
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF77
	.byte	0xa
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF78
	.byte	0xa
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF79
	.byte	0xa
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF80
	.byte	0xa
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF81
	.byte	0xa
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF82
	.byte	0xa
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x6
	.4byte	.LASF83
	.byte	0xa
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x6
	.4byte	.LASF84
	.byte	0xa
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x6
	.4byte	.LASF85
	.byte	0xa
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x6
	.4byte	.LASF86
	.byte	0xa
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x6
	.4byte	.LASF87
	.byte	0xa
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x6
	.4byte	.LASF88
	.byte	0xa
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x6
	.4byte	.LASF89
	.byte	0xa
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x6
	.4byte	.LASF90
	.byte	0xa
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x6
	.4byte	.LASF91
	.byte	0xa
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x6
	.4byte	.LASF92
	.byte	0xa
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x6
	.4byte	.LASF93
	.byte	0xa
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x6
	.4byte	.LASF94
	.byte	0xa
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x6
	.4byte	.LASF95
	.byte	0xa
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x6
	.4byte	.LASF96
	.byte	0xa
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x6
	.4byte	.LASF97
	.byte	0xa
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x6
	.4byte	.LASF98
	.byte	0xa
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x6
	.4byte	.LASF99
	.byte	0xa
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x6
	.4byte	.LASF100
	.byte	0xa
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x6
	.4byte	.LASF101
	.byte	0xa
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x6
	.4byte	.LASF102
	.byte	0xa
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF54
	.uleb128 0x9
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
	.uleb128 0x2
	.4byte	.LASF103
	.byte	0x8
	.byte	0xa
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x6
	.4byte	.LASF104
	.byte	0xa
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x6
	.4byte	.LASF105
	.byte	0xa
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF70
	.byte	0
	.file 11 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 12 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 13 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 14 "../../../../../../components/libraries/util/app_util.h"
	.file 15 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
	.file 16 "../../../../../../components/libraries/experimental_log/src/nrf_log_internal.h"
	.file 17 "../../../../../../components/softdevice/common/nrf_sdh_freertos.h"
	.file 18 "../../../../../../external/freertos/source/include/queue.h"
	.file 19 "../../../../../../external/freertos/source/include/semphr.h"
	.file 20 "../../../../../../external/freertos/source/include/task.h"
	.file 21 "../../../../../../components/libraries/gfx/nrf_gfx.h"
	.file 22 "../../../drivers/display.h"
	.file 23 "../../../software/MainComTask.h"
	.file 24 "../../../drivers/ir.h"
	.file 25 "../../../communication/bluetooth.h"
	.file 26 "../../../communication/arq.h"
	.file 27 "../../../../../../components/libraries/util/app_error.h"
	.file 28 "../../../../../../components/libraries/experimental_log/nrf_log_ctrl.h"
	.file 29 "../../../drivers/motor.h"
	.file 30 "../../../drivers/servo.h"
	.file 31 "../../../drivers/encoder.h"
	.file 32 "../../../drivers/i2c.h"
	.file 33 "../../../drivers/MPU6050.h"
	.file 34 "../../../../../../integration/nrfx/legacy/nrf_drv_clock.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0xf75
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1a
	.4byte	.LASF232
	.byte	0xc
	.4byte	.LASF233
	.4byte	.LASF234
	.4byte	.Ldebug_ranges0+0x30
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x1b
	.byte	0x4
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x11
	.4byte	0x2b
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF70
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF54
	.uleb128 0x9
	.4byte	0x3e
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF28
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x9
	.4byte	0x51
	.uleb128 0xa
	.4byte	.LASF61
	.byte	0xa
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
	.uleb128 0x9
	.4byte	0x5d
	.uleb128 0xa
	.4byte	.LASF57
	.byte	0xa
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
	.uleb128 0x9
	.4byte	0x72
	.uleb128 0x1c
	.4byte	.LASF106
	.byte	0xa
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
	.uleb128 0x1d
	.4byte	.LASF107
	.byte	0xa
	.2byte	0x10d
	.byte	0x1d
	.4byte	0x82
	.uleb128 0x1d
	.4byte	.LASF108
	.byte	0xa
	.2byte	0x110
	.byte	0x25
	.4byte	0x6d
	.uleb128 0x1d
	.4byte	.LASF109
	.byte	0xa
	.2byte	0x111
	.byte	0x25
	.4byte	0x6d
	.uleb128 0x12
	.4byte	0x58
	.4byte	0xcf
	.uleb128 0x13
	.4byte	0x4a
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.4byte	0xbf
	.uleb128 0x1d
	.4byte	.LASF110
	.byte	0xa
	.2byte	0x113
	.byte	0x1c
	.4byte	0xcf
	.uleb128 0x12
	.4byte	0x45
	.4byte	0xec
	.uleb128 0x1e
	.byte	0
	.uleb128 0x9
	.4byte	0xe1
	.uleb128 0x1d
	.4byte	.LASF111
	.byte	0xa
	.2byte	0x115
	.byte	0x13
	.4byte	0xec
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0xa
	.2byte	0x116
	.byte	0x13
	.4byte	0xec
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0xa
	.2byte	0x117
	.byte	0x13
	.4byte	0xec
	.uleb128 0x1d
	.4byte	.LASF114
	.byte	0xa
	.2byte	0x118
	.byte	0x13
	.4byte	0xec
	.uleb128 0x1d
	.4byte	.LASF115
	.byte	0xa
	.2byte	0x11a
	.byte	0x13
	.4byte	0xec
	.uleb128 0x1d
	.4byte	.LASF116
	.byte	0xa
	.2byte	0x11b
	.byte	0x13
	.4byte	0xec
	.uleb128 0x1d
	.4byte	.LASF117
	.byte	0xa
	.2byte	0x11c
	.byte	0x13
	.4byte	0xec
	.uleb128 0x1d
	.4byte	.LASF118
	.byte	0xa
	.2byte	0x11d
	.byte	0x13
	.4byte	0xec
	.uleb128 0x1d
	.4byte	.LASF119
	.byte	0xa
	.2byte	0x11e
	.byte	0x13
	.4byte	0xec
	.uleb128 0x1d
	.4byte	.LASF120
	.byte	0xa
	.2byte	0x11f
	.byte	0x13
	.4byte	0xec
	.uleb128 0x17
	.4byte	0x2b
	.4byte	0x182
	.uleb128 0xe
	.4byte	0x182
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x18d
	.uleb128 0x1f
	.4byte	.LASF136
	.uleb128 0x9
	.4byte	0x188
	.uleb128 0x1d
	.4byte	.LASF121
	.byte	0xa
	.2byte	0x135
	.byte	0xe
	.4byte	0x19f
	.uleb128 0x8
	.byte	0x4
	.4byte	0x173
	.uleb128 0x17
	.4byte	0x2b
	.4byte	0x1b4
	.uleb128 0xe
	.4byte	0x1b4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x188
	.uleb128 0x1d
	.4byte	.LASF122
	.byte	0xa
	.2byte	0x136
	.byte	0xe
	.4byte	0x1c7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1a5
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF14
	.uleb128 0x20
	.4byte	.LASF123
	.byte	0xa
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
	.uleb128 0x1d
	.4byte	.LASF124
	.byte	0xa
	.2byte	0x157
	.byte	0x1f
	.4byte	0x1f2
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x4
	.byte	0x1
	.byte	0x6
	.4byte	.LASF125
	.uleb128 0x7
	.4byte	.LASF9
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x51
	.uleb128 0x7
	.4byte	.LASF126
	.byte	0x4
	.byte	0x35
	.byte	0x16
	.4byte	0x217
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF127
	.uleb128 0x7
	.4byte	.LASF128
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x2b
	.uleb128 0x11
	.4byte	0x21e
	.uleb128 0x7
	.4byte	.LASF25
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x4a
	.uleb128 0x9
	.4byte	0x22f
	.uleb128 0x4
	.byte	0x8
	.byte	0x5
	.4byte	.LASF129
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF130
	.uleb128 0x1d
	.4byte	.LASF131
	.byte	0xb
	.2byte	0x744
	.byte	0x19
	.4byte	0x22a
	.uleb128 0x21
	.4byte	.LASF132
	.byte	0xc
	.byte	0x21
	.byte	0x11
	.4byte	0x22f
	.uleb128 0xa
	.4byte	.LASF133
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
	.uleb128 0x21
	.4byte	.LASF134
	.byte	0x9
	.byte	0x75
	.byte	0x19
	.4byte	0x267
	.uleb128 0x16
	.4byte	.LASF135
	.byte	0xd
	.2byte	0x317
	.byte	0x1b
	.4byte	0x290
	.uleb128 0x1f
	.4byte	.LASF137
	.uleb128 0x1d
	.4byte	.LASF138
	.byte	0xd
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2a2
	.uleb128 0x8
	.byte	0x4
	.4byte	0x283
	.uleb128 0x1d
	.4byte	.LASF139
	.byte	0xd
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2a2
	.uleb128 0x1d
	.4byte	.LASF140
	.byte	0xd
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2a2
	.uleb128 0x7
	.4byte	.LASF24
	.byte	0x6
	.byte	0x9e
	.byte	0x12
	.4byte	0x22f
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF141
	.uleb128 0x8
	.byte	0x4
	.4byte	0x2db
	.uleb128 0xd
	.4byte	0x2e6
	.uleb128 0xe
	.4byte	0x29
	.byte	0
	.uleb128 0x21
	.4byte	.LASF142
	.byte	0xe
	.byte	0x53
	.byte	0x11
	.4byte	0x22f
	.uleb128 0x21
	.4byte	.LASF143
	.byte	0xe
	.byte	0x54
	.byte	0x11
	.4byte	0x22f
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0xe
	.byte	0x72
	.byte	0x13
	.4byte	0x30a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x22f
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0xe
	.byte	0x73
	.byte	0x11
	.4byte	0x22f
	.uleb128 0x7
	.4byte	.LASF146
	.byte	0xf
	.byte	0x39
	.byte	0xe
	.4byte	0x37
	.uleb128 0x7
	.4byte	.LASF147
	.byte	0xf
	.byte	0x3a
	.byte	0x17
	.4byte	0x2ce
	.uleb128 0x4
	.byte	0x1
	.byte	0x2
	.4byte	.LASF27
	.uleb128 0xa
	.4byte	.LASF148
	.byte	0x8
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
	.uleb128 0x1d
	.4byte	.LASF149
	.byte	0x10
	.2byte	0x124
	.byte	0x2e
	.4byte	0x33b
	.uleb128 0x7
	.4byte	.LASF150
	.byte	0x11
	.byte	0x36
	.byte	0x10
	.4byte	0x2d5
	.uleb128 0x7
	.4byte	.LASF151
	.byte	0x12
	.byte	0x2f
	.byte	0x10
	.4byte	0x29
	.uleb128 0x7
	.4byte	.LASF152
	.byte	0x13
	.byte	0x26
	.byte	0x17
	.4byte	0x364
	.uleb128 0x7
	.4byte	.LASF153
	.byte	0x14
	.byte	0x3e
	.byte	0x10
	.4byte	0x29
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.4byte	.LASF1
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.4byte	.LASF154
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x5
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
	.uleb128 0xa
	.4byte	.LASF155
	.byte	0x5
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
	.uleb128 0x9
	.4byte	0x3a6
	.uleb128 0xa
	.4byte	.LASF156
	.byte	0x3
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
	.uleb128 0x7
	.4byte	.LASF157
	.byte	0x15
	.byte	0x92
	.byte	0x13
	.4byte	0x3bb
	.uleb128 0x9
	.4byte	0x3cb
	.uleb128 0x21
	.4byte	.LASF158
	.byte	0x16
	.byte	0x13
	.byte	0x22
	.4byte	0x3d7
	.uleb128 0x21
	.4byte	.LASF159
	.byte	0x16
	.byte	0x14
	.byte	0x16
	.4byte	0x364
	.uleb128 0x22
	.4byte	.LASF193
	.byte	0x16
	.byte	0x3a
	.byte	0x11
	.4byte	0x396
	.byte	0x8
	.byte	0
	.byte	0
	.byte	0x3f
	.byte	0
	.byte	0x7f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.4byte	.LASF160
	.byte	0x16
	.byte	0x42
	.byte	0x18
	.4byte	0x3b6
	.uleb128 0x12
	.4byte	0x20b
	.4byte	0x425
	.uleb128 0x13
	.4byte	0x4a
	.byte	0x3
	.byte	0
	.uleb128 0x21
	.4byte	.LASF161
	.byte	0x17
	.byte	0xe
	.byte	0x10
	.4byte	0x415
	.uleb128 0x21
	.4byte	.LASF162
	.byte	0x2
	.byte	0x11
	.byte	0x15
	.4byte	0x37c
	.uleb128 0x21
	.4byte	.LASF163
	.byte	0x2
	.byte	0x12
	.byte	0x5
	.4byte	0x37c
	.uleb128 0x21
	.4byte	.LASF164
	.byte	0x2
	.byte	0x13
	.byte	0x5
	.4byte	0x37c
	.uleb128 0x21
	.4byte	.LASF165
	.byte	0x2
	.byte	0x14
	.byte	0x5
	.4byte	0x37c
	.uleb128 0x21
	.4byte	.LASF166
	.byte	0x2
	.byte	0x15
	.byte	0x5
	.4byte	0x37c
	.uleb128 0x21
	.4byte	.LASF167
	.byte	0x2
	.byte	0x16
	.byte	0x5
	.4byte	0x37c
	.uleb128 0x21
	.4byte	.LASF168
	.byte	0x2
	.byte	0x17
	.byte	0x5
	.4byte	0x37c
	.uleb128 0x21
	.4byte	.LASF169
	.byte	0x2
	.byte	0x18
	.byte	0x5
	.4byte	0x37c
	.uleb128 0x21
	.4byte	.LASF170
	.byte	0x2
	.byte	0x1b
	.byte	0x1a
	.4byte	0x370
	.uleb128 0x21
	.4byte	.LASF171
	.byte	0x2
	.byte	0x1c
	.byte	0x1a
	.4byte	0x370
	.uleb128 0x21
	.4byte	.LASF172
	.byte	0x2
	.byte	0x1d
	.byte	0x1a
	.4byte	0x370
	.uleb128 0x21
	.4byte	.LASF173
	.byte	0x2
	.byte	0x1e
	.byte	0x1a
	.4byte	0x370
	.uleb128 0x21
	.4byte	.LASF174
	.byte	0x2
	.byte	0x1f
	.byte	0x1a
	.4byte	0x370
	.uleb128 0x21
	.4byte	.LASF175
	.byte	0x2
	.byte	0x20
	.byte	0x1a
	.4byte	0x370
	.uleb128 0x21
	.4byte	.LASF176
	.byte	0x2
	.byte	0x21
	.byte	0x1a
	.4byte	0x370
	.uleb128 0x21
	.4byte	.LASF177
	.byte	0x2
	.byte	0x25
	.byte	0x16
	.4byte	0x364
	.uleb128 0x21
	.4byte	.LASF178
	.byte	0x2
	.byte	0x26
	.byte	0x16
	.4byte	0x364
	.uleb128 0x21
	.4byte	.LASF179
	.byte	0x2
	.byte	0x27
	.byte	0x16
	.4byte	0x364
	.uleb128 0x21
	.4byte	.LASF180
	.byte	0x2
	.byte	0x2a
	.byte	0x10
	.4byte	0x1ff
	.uleb128 0x21
	.4byte	.LASF181
	.byte	0x2
	.byte	0x2b
	.byte	0x10
	.4byte	0x1ff
	.uleb128 0x21
	.4byte	.LASF182
	.byte	0x2
	.byte	0x2d
	.byte	0x10
	.4byte	0x1ff
	.uleb128 0x21
	.4byte	.LASF183
	.byte	0x2
	.byte	0x30
	.byte	0xe
	.4byte	0x388
	.uleb128 0x21
	.4byte	.LASF184
	.byte	0x2
	.byte	0x31
	.byte	0x10
	.4byte	0x20b
	.uleb128 0x21
	.4byte	.LASF185
	.byte	0x2
	.byte	0x32
	.byte	0x10
	.4byte	0x20b
	.uleb128 0x21
	.4byte	.LASF186
	.byte	0x2
	.byte	0x33
	.byte	0xe
	.4byte	0x388
	.uleb128 0x21
	.4byte	.LASF187
	.byte	0x2
	.byte	0x34
	.byte	0xe
	.4byte	0x388
	.uleb128 0x21
	.4byte	.LASF188
	.byte	0x2
	.byte	0x37
	.byte	0x10
	.4byte	0x20b
	.uleb128 0x21
	.4byte	.LASF189
	.byte	0x2
	.byte	0x38
	.byte	0x10
	.4byte	0x20b
	.uleb128 0x23
	.4byte	0x431
	.byte	0x1
	.byte	0x46
	.byte	0xe
	.uleb128 0x5
	.byte	0x3
	.4byte	handle_display_task
	.uleb128 0x24
	.4byte	0x43d
	.byte	0x1
	.byte	0x47
	.uleb128 0x5
	.byte	0x3
	.4byte	handle_user_task
	.uleb128 0x24
	.4byte	0x449
	.byte	0x1
	.byte	0x48
	.uleb128 0x5
	.byte	0x3
	.4byte	handle_microsd_task
	.uleb128 0x24
	.4byte	0x455
	.byte	0x1
	.byte	0x49
	.uleb128 0x5
	.byte	0x3
	.4byte	pose_estimator_task
	.uleb128 0x24
	.4byte	0x461
	.byte	0x1
	.byte	0x4a
	.uleb128 0x5
	.byte	0x3
	.4byte	pose_controller_task
	.uleb128 0x24
	.4byte	0x46d
	.byte	0x1
	.byte	0x4b
	.uleb128 0x5
	.byte	0x3
	.4byte	communication_task
	.uleb128 0x24
	.4byte	0x479
	.byte	0x1
	.byte	0x4c
	.uleb128 0x5
	.byte	0x3
	.4byte	sensor_tower_task
	.uleb128 0x24
	.4byte	0x485
	.byte	0x1
	.byte	0x4d
	.uleb128 0x5
	.byte	0x3
	.4byte	arq_task
	.uleb128 0x23
	.4byte	0x491
	.byte	0x1
	.byte	0x50
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	xScanLock
	.uleb128 0x23
	.4byte	0x49d
	.byte	0x1
	.byte	0x51
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	xPoseMutex
	.uleb128 0x23
	.4byte	0x4a9
	.byte	0x1
	.byte	0x52
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	xTickMutex
	.uleb128 0x23
	.4byte	0x4b5
	.byte	0x1
	.byte	0x53
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	xControllerBSem
	.uleb128 0x23
	.4byte	0x4c1
	.byte	0x1
	.byte	0x54
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	xCommandReadyBSem
	.uleb128 0x23
	.4byte	0x4cd
	.byte	0x1
	.byte	0x55
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	mutex_spi
	.uleb128 0x23
	.4byte	0x4d9
	.byte	0x1
	.byte	0x56
	.byte	0x13
	.uleb128 0x5
	.byte	0x3
	.4byte	xCollisionMutex
	.uleb128 0x23
	.4byte	0x4e5
	.byte	0x1
	.byte	0x5a
	.byte	0xf
	.uleb128 0x5
	.byte	0x3
	.4byte	poseControllerQ
	.uleb128 0x23
	.4byte	0x4f1
	.byte	0x1
	.byte	0x5b
	.byte	0xf
	.uleb128 0x5
	.byte	0x3
	.4byte	scanStatusQ
	.uleb128 0x23
	.4byte	0x4fd
	.byte	0x1
	.byte	0x5c
	.byte	0xf
	.uleb128 0x5
	.byte	0x3
	.4byte	queue_microsd
	.uleb128 0x23
	.4byte	0x509
	.byte	0x1
	.byte	0x60
	.byte	0x9
	.uleb128 0x5
	.byte	0x3
	.4byte	gHandshook
	.uleb128 0x23
	.4byte	0x515
	.byte	0x1
	.byte	0x61
	.byte	0x9
	.uleb128 0x5
	.byte	0x3
	.4byte	gPaused
	.uleb128 0x23
	.4byte	0x521
	.byte	0x1
	.byte	0x64
	.byte	0x9
	.uleb128 0x5
	.byte	0x3
	.4byte	USEBLUETOOTH
	.uleb128 0x23
	.4byte	0x52d
	.byte	0x1
	.byte	0x67
	.byte	0x7
	.uleb128 0x5
	.byte	0x3
	.4byte	gTheta_hat
	.uleb128 0x23
	.4byte	0x539
	.byte	0x1
	.byte	0x68
	.byte	0x9
	.uleb128 0x5
	.byte	0x3
	.4byte	gX_hat
	.uleb128 0x23
	.4byte	0x545
	.byte	0x1
	.byte	0x69
	.byte	0x9
	.uleb128 0x5
	.byte	0x3
	.4byte	gY_hat
	.uleb128 0x23
	.4byte	0x551
	.byte	0x1
	.byte	0x6a
	.byte	0x7
	.uleb128 0x5
	.byte	0x3
	.4byte	gLeft
	.uleb128 0x23
	.4byte	0x55d
	.byte	0x1
	.byte	0x6b
	.byte	0x7
	.uleb128 0x5
	.byte	0x3
	.4byte	gRight
	.uleb128 0x23
	.4byte	0x569
	.byte	0x1
	.byte	0x6e
	.byte	0x9
	.uleb128 0x5
	.byte	0x3
	.4byte	gRightWheelTicks
	.uleb128 0x23
	.4byte	0x575
	.byte	0x1
	.byte	0x6f
	.byte	0x9
	.uleb128 0x5
	.byte	0x3
	.4byte	gLeftWheelTicks
	.uleb128 0x25
	.4byte	.LASF190
	.byte	0x1
	.byte	0x72
	.byte	0x5
	.4byte	0x334
	.uleb128 0x5
	.byte	0x3
	.4byte	shared_SPI_init
	.uleb128 0x25
	.4byte	.LASF191
	.byte	0x1
	.byte	0x85
	.byte	0xe
	.4byte	0x32
	.uleb128 0x5
	.byte	0x3
	.4byte	RightMotorDirection
	.uleb128 0x25
	.4byte	.LASF192
	.byte	0x1
	.byte	0x86
	.byte	0xe
	.4byte	0x32
	.uleb128 0x5
	.byte	0x3
	.4byte	LeftMotorDirection
	.uleb128 0x26
	.4byte	.LASF235
	.byte	0x1
	.byte	0xf5
	.byte	0x5
	.4byte	0x2b
	.4byte	.LFB413
	.4byte	.LFE413-.LFB413
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb3
	.uleb128 0x27
	.4byte	.LASF194
	.byte	0x1
	.byte	0xf7
	.byte	0x9
	.4byte	0x334
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x28
	.4byte	.LVL28
	.4byte	0xbb3
	.uleb128 0x28
	.4byte	.LVL29
	.4byte	0xdd3
	.uleb128 0x28
	.4byte	.LVL30
	.4byte	0xe50
	.uleb128 0x28
	.4byte	.LVL31
	.4byte	0xe5c
	.uleb128 0x28
	.4byte	.LVL32
	.4byte	0xe68
	.uleb128 0x29
	.4byte	.LVL33
	.4byte	0xe74
	.4byte	0x7ab
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x44
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL34
	.4byte	0xe74
	.4byte	0x7c8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x35
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL35
	.4byte	0xe74
	.4byte	0x7e5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x38
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL36
	.4byte	0xe74
	.4byte	0x802
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.4byte	.LVL37
	.4byte	0xe81
	.4byte	0x815
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL38
	.4byte	0xe81
	.4byte	0x828
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL39
	.4byte	0xe81
	.4byte	0x83b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL40
	.4byte	0xe74
	.4byte	0x858
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x29
	.4byte	.LVL41
	.4byte	0xe74
	.4byte	0x875
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x1
	.byte	0x33
	.byte	0
	.uleb128 0x29
	.4byte	.LVL42
	.4byte	0xe81
	.4byte	0x888
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL43
	.4byte	0xe8e
	.4byte	0x8ba
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR13
	.byte	0
	.uleb128 0x29
	.4byte	.LVL44
	.4byte	0xe8e
	.4byte	0x8f5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x5
	.byte	0x3
	.4byte	user_task
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x2
	.byte	0x8
	.byte	0x80
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL45
	.4byte	0xe8e
	.4byte	0x928
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR14
	.byte	0
	.uleb128 0x29
	.4byte	.LVL46
	.4byte	0xe8e
	.4byte	0x95b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x33
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR15
	.byte	0
	.uleb128 0x29
	.4byte	.LVL47
	.4byte	0xe8e
	.4byte	0x98e
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC7
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x200
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR16
	.byte	0
	.uleb128 0x29
	.4byte	.LVL48
	.4byte	0xe8e
	.4byte	0x9c1
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC8
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR17
	.byte	0
	.uleb128 0x29
	.4byte	.LVL49
	.4byte	0xe8e
	.4byte	0x9f4
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC9
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR18
	.byte	0
	.uleb128 0x29
	.4byte	.LVL50
	.4byte	0xe9b
	.4byte	0xa0b
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC12
	.byte	0
	.uleb128 0x28
	.4byte	.LVL51
	.4byte	0xea8
	.uleb128 0x29
	.4byte	.LVL52
	.4byte	0xeb5
	.4byte	0xa37
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x3f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x169
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x29
	.4byte	.LVL53
	.4byte	0xeb5
	.4byte	0xa5a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x13f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x29
	.4byte	.LVL54
	.4byte	0xeb5
	.4byte	0xa7d
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x142
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x29
	.4byte	.LVL55
	.4byte	0xeb5
	.4byte	0xaa0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x146
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x29
	.4byte	.LVL56
	.4byte	0xeb5
	.4byte	0xac3
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x149
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x29
	.4byte	.LVL57
	.4byte	0xeb5
	.4byte	0xae6
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x14c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x29
	.4byte	.LVL58
	.4byte	0xeb5
	.4byte	0xb09
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x14f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x29
	.4byte	.LVL59
	.4byte	0xeb5
	.4byte	0xb2c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x152
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.uleb128 0x29
	.4byte	.LVL60
	.4byte	0xe8e
	.4byte	0xb5f
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC10
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x3
	.byte	0xa
	.2byte	0x100
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x53
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x7d
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.4byte	.LANCHOR20
	.byte	0
	.uleb128 0x28
	.4byte	.LVL61
	.4byte	0xec1
	.uleb128 0x29
	.4byte	.LVL62
	.4byte	0xece
	.4byte	0xb7c
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x29
	.4byte	.LVL63
	.4byte	0xe9b
	.4byte	0xb93
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC11
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL64
	.4byte	0xeb5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x34
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x158
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF197
	.byte	0x1
	.byte	0xee
	.byte	0xd
	.4byte	.LFB412
	.4byte	.LFE412-.LFB412
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc2b
	.uleb128 0x2d
	.4byte	.LASF195
	.byte	0x1
	.byte	0xef
	.byte	0x10
	.4byte	0x2c2
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0
	.4byte	0xc14
	.uleb128 0x2d
	.4byte	.LASF196
	.byte	0x1
	.byte	0xf0
	.byte	0x19
	.4byte	0x23b
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x2b
	.4byte	.LVL23
	.4byte	0xeb5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0xf0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL20
	.4byte	0xeda
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa
	.2byte	0x8000
	.byte	0
	.byte	0
	.uleb128 0x2f
	.4byte	.LASF198
	.byte	0x1
	.byte	0x90
	.byte	0xd
	.4byte	.LFB411
	.4byte	.LFE411-.LFB411
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdc3
	.uleb128 0x30
	.ascii	"arg\000"
	.byte	0x1
	.byte	0x90
	.byte	0x1d
	.4byte	0x29
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x27
	.4byte	.LASF199
	.byte	0x1
	.byte	0xae
	.byte	0xa
	.4byte	0xdc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.4byte	.LASF200
	.byte	0x1
	.byte	0xaf
	.byte	0xa
	.4byte	0xdc3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x31
	.4byte	.LASF201
	.byte	0x1
	.byte	0xb4
	.byte	0x6
	.4byte	0x2b
	.byte	0x64
	.uleb128 0x31
	.4byte	.LASF202
	.byte	0x1
	.byte	0xb5
	.byte	0x6
	.4byte	0x2b
	.byte	0
	.uleb128 0x31
	.4byte	.LASF203
	.byte	0x1
	.byte	0xb6
	.byte	0x6
	.4byte	0x334
	.byte	0
	.uleb128 0x31
	.4byte	.LASF204
	.byte	0x1
	.byte	0xb7
	.byte	0x6
	.4byte	0x334
	.byte	0
	.uleb128 0x32
	.4byte	0xccb
	.uleb128 0x33
	.4byte	.LASF205
	.byte	0x1
	.byte	0xc7
	.byte	0x8
	.4byte	0x2b
	.uleb128 0x34
	.uleb128 0x35
	.4byte	.LASF206
	.byte	0x1
	.byte	0xcb
	.byte	0x17
	.byte	0x98
	.byte	0x37
	.byte	0x16
	.byte	0xc4
	.byte	0xa1
	.byte	0x1
	.byte	0x34
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL1
	.4byte	0xee6
	.uleb128 0x28
	.4byte	.LVL2
	.4byte	0xef2
	.uleb128 0x28
	.4byte	.LVL3
	.4byte	0xefe
	.uleb128 0x28
	.4byte	.LVL4
	.4byte	0xf0a
	.uleb128 0x28
	.4byte	.LVL5
	.4byte	0xf16
	.uleb128 0x28
	.4byte	.LVL6
	.4byte	0xf22
	.uleb128 0x29
	.4byte	.LVL7
	.4byte	0xf2e
	.4byte	0xd14
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x4e
	.byte	0
	.uleb128 0x28
	.4byte	.LVL8
	.4byte	0xf3b
	.uleb128 0x29
	.4byte	.LVL9
	.4byte	0xf47
	.4byte	0xd30
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x29
	.4byte	.LVL10
	.4byte	0xf2e
	.4byte	0xd45
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x1388
	.byte	0
	.uleb128 0x29
	.4byte	.LVL11
	.4byte	0xf2e
	.4byte	0xd5a
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x3e8
	.byte	0
	.uleb128 0x29
	.4byte	.LVL12
	.4byte	0xf54
	.4byte	0xd77
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL13
	.4byte	0xf60
	.4byte	0xd90
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x31
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x29
	.4byte	.LVL18
	.4byte	0xf54
	.4byte	0xdad
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC1
	.byte	0
	.uleb128 0x2b
	.4byte	.LVL19
	.4byte	0xf60
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x1
	.byte	0x32
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x12
	.4byte	0x3e
	.4byte	0xdd3
	.uleb128 0x13
	.4byte	0x4a
	.byte	0x13
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF207
	.byte	0x1
	.byte	0x7f
	.byte	0xd
	.4byte	.LFB410
	.4byte	.LFE410-.LFB410
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe3e
	.uleb128 0x2d
	.4byte	.LASF195
	.byte	0x1
	.byte	0x80
	.byte	0x10
	.4byte	0x2c2
	.4byte	.LLST3
	.4byte	.LVUS3
	.uleb128 0x2e
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0xe34
	.uleb128 0x2d
	.4byte	.LASF196
	.byte	0x1
	.byte	0x81
	.byte	0x19
	.4byte	0x23b
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x2b
	.4byte	.LVL27
	.4byte	0xeb5
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x2
	.byte	0x8
	.byte	0x81
	.uleb128 0x2a
	.uleb128 0x1
	.byte	0x52
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC2
	.byte	0
	.byte	0
	.uleb128 0x28
	.4byte	.LVL24
	.4byte	0xf6c
	.byte	0
	.uleb128 0x36
	.4byte	.LASF236
	.byte	0x1
	.byte	0x77
	.byte	0x6
	.4byte	.LFB409
	.4byte	.LFE409-.LFB409
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x37
	.4byte	.LASF208
	.4byte	.LASF208
	.byte	0x18
	.byte	0x22
	.byte	0x6
	.uleb128 0x37
	.4byte	.LASF209
	.4byte	.LASF209
	.byte	0x19
	.byte	0x1
	.byte	0x6
	.uleb128 0x37
	.4byte	.LASF210
	.4byte	.LASF210
	.byte	0x1a
	.byte	0x8
	.byte	0x6
	.uleb128 0x38
	.4byte	.LASF211
	.4byte	.LASF211
	.byte	0x12
	.2byte	0x5d7
	.byte	0x10
	.uleb128 0x38
	.4byte	.LASF212
	.4byte	.LASF212
	.byte	0x12
	.2byte	0x585
	.byte	0xf
	.uleb128 0x38
	.4byte	.LASF213
	.4byte	.LASF213
	.byte	0x14
	.2byte	0x142
	.byte	0xd
	.uleb128 0x38
	.4byte	.LASF214
	.4byte	.LASF214
	.byte	0x10
	.2byte	0x1ab
	.byte	0x6
	.uleb128 0x38
	.4byte	.LASF215
	.4byte	.LASF215
	.byte	0x14
	.2byte	0x48f
	.byte	0x6
	.uleb128 0x37
	.4byte	.LASF216
	.4byte	.LASF216
	.byte	0x1b
	.byte	0x6f
	.byte	0x6
	.uleb128 0x38
	.4byte	.LASF217
	.4byte	.LASF217
	.byte	0x14
	.2byte	0x420
	.byte	0x6
	.uleb128 0x37
	.4byte	.LASF218
	.4byte	.LASF218
	.byte	0x11
	.byte	0x3d
	.byte	0x6
	.uleb128 0x37
	.4byte	.LASF219
	.4byte	.LASF219
	.byte	0x1c
	.byte	0x7b
	.byte	0xc
	.uleb128 0x37
	.4byte	.LASF220
	.4byte	.LASF220
	.byte	0xf
	.byte	0x69
	.byte	0xd
	.uleb128 0x37
	.4byte	.LASF221
	.4byte	.LASF221
	.byte	0x1d
	.byte	0x7
	.byte	0x6
	.uleb128 0x37
	.4byte	.LASF222
	.4byte	.LASF222
	.byte	0x1e
	.byte	0x7
	.byte	0x6
	.uleb128 0x37
	.4byte	.LASF223
	.4byte	.LASF223
	.byte	0x1f
	.byte	0x34
	.byte	0x6
	.uleb128 0x37
	.4byte	.LASF224
	.4byte	.LASF224
	.byte	0xf
	.byte	0x6a
	.byte	0xd
	.uleb128 0x37
	.4byte	.LASF225
	.4byte	.LASF225
	.byte	0x20
	.byte	0xd
	.byte	0x6
	.uleb128 0x38
	.4byte	.LASF226
	.4byte	.LASF226
	.byte	0x14
	.2byte	0x2ee
	.byte	0x6
	.uleb128 0x37
	.4byte	.LASF227
	.4byte	.LASF227
	.byte	0x21
	.byte	0x18
	.byte	0x6
	.uleb128 0x38
	.4byte	.LASF228
	.4byte	.LASF228
	.byte	0x14
	.2byte	0x3ed
	.byte	0x6
	.uleb128 0x37
	.4byte	.LASF229
	.4byte	.LASF229
	.byte	0xd
	.byte	0x87
	.byte	0x5
	.uleb128 0x37
	.4byte	.LASF230
	.4byte	.LASF230
	.byte	0x16
	.byte	0x66
	.byte	0x6
	.uleb128 0x37
	.4byte	.LASF231
	.4byte	.LASF231
	.byte	0x22
	.byte	0x64
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x1c
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
	.byte	0
	.uleb128 0x47
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x35
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
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
.LVUS1:
	.uleb128 .LVU31
	.uleb128 .LVU35
	.uleb128 .LVU37
	.uleb128 .LVU39
.LLST1:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU33
	.uleb128 .LVU35
	.uleb128 .LVU37
	.uleb128 .LVU39
.LLST2:
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL22
	.4byte	.LVL23-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU3
	.uleb128 .LVU3
	.uleb128 0
.LLST0:
	.4byte	.LVL0
	.4byte	.LVL1-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL1-1
	.4byte	.LFE411
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU45
	.uleb128 .LVU49
	.uleb128 .LVU51
	.uleb128 .LVU53
.LLST3:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS4:
	.uleb128 .LVU47
	.uleb128 .LVU49
	.uleb128 .LVU51
	.uleb128 .LVU53
.LLST4:
	.4byte	.LVL24
	.4byte	.LVL25
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL26
	.4byte	.LVL27-1
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x464
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xf79
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
	.4byte	0x3f4
	.ascii	"m_lcd_cb\000"
	.4byte	0x581
	.ascii	"handle_display_task\000"
	.4byte	0x58f
	.ascii	"handle_user_task\000"
	.4byte	0x59c
	.ascii	"handle_microsd_task\000"
	.4byte	0x5a9
	.ascii	"pose_estimator_task\000"
	.4byte	0x5b6
	.ascii	"pose_controller_task\000"
	.4byte	0x5c3
	.ascii	"communication_task\000"
	.4byte	0x5d0
	.ascii	"sensor_tower_task\000"
	.4byte	0x5dd
	.ascii	"arq_task\000"
	.4byte	0x5ea
	.ascii	"xScanLock\000"
	.4byte	0x5f8
	.ascii	"xPoseMutex\000"
	.4byte	0x606
	.ascii	"xTickMutex\000"
	.4byte	0x614
	.ascii	"xControllerBSem\000"
	.4byte	0x622
	.ascii	"xCommandReadyBSem\000"
	.4byte	0x630
	.ascii	"mutex_spi\000"
	.4byte	0x63e
	.ascii	"xCollisionMutex\000"
	.4byte	0x64c
	.ascii	"poseControllerQ\000"
	.4byte	0x65a
	.ascii	"scanStatusQ\000"
	.4byte	0x668
	.ascii	"queue_microsd\000"
	.4byte	0x676
	.ascii	"gHandshook\000"
	.4byte	0x684
	.ascii	"gPaused\000"
	.4byte	0x692
	.ascii	"USEBLUETOOTH\000"
	.4byte	0x6a0
	.ascii	"gTheta_hat\000"
	.4byte	0x6ae
	.ascii	"gX_hat\000"
	.4byte	0x6bc
	.ascii	"gY_hat\000"
	.4byte	0x6ca
	.ascii	"gLeft\000"
	.4byte	0x6d8
	.ascii	"gRight\000"
	.4byte	0x6e6
	.ascii	"gRightWheelTicks\000"
	.4byte	0x6f4
	.ascii	"gLeftWheelTicks\000"
	.4byte	0x702
	.ascii	"shared_SPI_init\000"
	.4byte	0x714
	.ascii	"RightMotorDirection\000"
	.4byte	0x726
	.ascii	"LeftMotorDirection\000"
	.4byte	0x581
	.ascii	"handle_display_task\000"
	.4byte	0x58f
	.ascii	"handle_user_task\000"
	.4byte	0x59c
	.ascii	"handle_microsd_task\000"
	.4byte	0x5a9
	.ascii	"pose_estimator_task\000"
	.4byte	0x5b6
	.ascii	"pose_controller_task\000"
	.4byte	0x5c3
	.ascii	"communication_task\000"
	.4byte	0x5d0
	.ascii	"sensor_tower_task\000"
	.4byte	0x5dd
	.ascii	"arq_task\000"
	.4byte	0x5ea
	.ascii	"xScanLock\000"
	.4byte	0x5f8
	.ascii	"xPoseMutex\000"
	.4byte	0x606
	.ascii	"xTickMutex\000"
	.4byte	0x614
	.ascii	"xControllerBSem\000"
	.4byte	0x622
	.ascii	"xCommandReadyBSem\000"
	.4byte	0x630
	.ascii	"mutex_spi\000"
	.4byte	0x63e
	.ascii	"xCollisionMutex\000"
	.4byte	0x738
	.ascii	"main\000"
	.4byte	0xbb3
	.ascii	"log_init\000"
	.4byte	0xc2b
	.ascii	"user_task\000"
	.4byte	0xdd3
	.ascii	"clock_init\000"
	.4byte	0xe3e
	.ascii	"vApplicationIdleHook\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x2b8
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0xf79
	.4byte	0x2b
	.ascii	"int\000"
	.4byte	0x37
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0x3e
	.ascii	"char\000"
	.4byte	0x4a
	.ascii	"unsigned int\000"
	.4byte	0x51
	.ascii	"unsigned char\000"
	.4byte	0x5d
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x72
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0x1cd
	.ascii	"short unsigned int\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x1d4
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x1f8
	.ascii	"signed char\000"
	.4byte	0x1ff
	.ascii	"uint8_t\000"
	.4byte	0x217
	.ascii	"short int\000"
	.4byte	0x20b
	.ascii	"int16_t\000"
	.4byte	0x21e
	.ascii	"int32_t\000"
	.4byte	0x22f
	.ascii	"uint32_t\000"
	.4byte	0x240
	.ascii	"long long int\000"
	.4byte	0x247
	.ascii	"long long unsigned int\000"
	.4byte	0x267
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x283
	.ascii	"FILE\000"
	.4byte	0x2c2
	.ascii	"ret_code_t\000"
	.4byte	0x2ce
	.ascii	"long unsigned int\000"
	.4byte	0x31c
	.ascii	"BaseType_t\000"
	.4byte	0x328
	.ascii	"UBaseType_t\000"
	.4byte	0x334
	.ascii	"_Bool\000"
	.4byte	0x33b
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
	.4byte	0x358
	.ascii	"nrf_sdh_freertos_task_hook_t\000"
	.4byte	0x364
	.ascii	"QueueHandle_t\000"
	.4byte	0x370
	.ascii	"SemaphoreHandle_t\000"
	.4byte	0x37c
	.ascii	"TaskHandle_t\000"
	.4byte	0x388
	.ascii	"float\000"
	.4byte	0x38f
	.ascii	"double\000"
	.4byte	0x396
	.ascii	"lcd_cb_t\000"
	.4byte	0x3a6
	.ascii	"nrf_lcd_t\000"
	.4byte	0x3bb
	.ascii	"FONT_INFO\000"
	.4byte	0x3cb
	.ascii	"nrf_gfx_font_desc_t\000"
	.4byte	0xb
	.ascii	"sCartesian\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB411
	.4byte	.LFE411-.LFB411
	.4byte	.LFB412
	.4byte	.LFE412-.LFB412
	.4byte	.LFB410
	.4byte	.LFE410-.LFB410
	.4byte	.LFB409
	.4byte	.LFE409-.LFB409
	.4byte	.LFB413
	.4byte	.LFE413-.LFB413
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB2
	.4byte	.LBE2
	.4byte	.LBB3
	.4byte	.LBE3
	.4byte	0
	.4byte	0
	.4byte	.LBB4
	.4byte	.LBE4
	.4byte	.LBB5
	.4byte	.LBE5
	.4byte	0
	.4byte	0
	.4byte	.LFB411
	.4byte	.LFE411
	.4byte	.LFB412
	.4byte	.LFE412
	.4byte	.LFB410
	.4byte	.LFE410
	.4byte	.LFB409
	.4byte	.LFE409
	.4byte	.LFB413
	.4byte	.LFE413
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
	.file 35 "../../../../../../external/freertos/source/include/FreeRTOS.h"
	.byte	0x3
	.uleb128 0x12
	.uleb128 0x23
	.file 36 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0x24
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xa
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x4
	.byte	0x4
	.file 37 "../../../config/FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x25
	.file 38 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0x26
	.file 39 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x27
	.file 40 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x28
	.byte	0x3
	.uleb128 0x92
	.uleb128 0xb
	.file 41 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x29
	.file 42 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x2a
	.byte	0x4
	.byte	0x4
	.file 43 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x2b
	.byte	0x4
	.file 44 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x2c
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.file 45 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x2d
	.byte	0x4
	.file 46 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x2e
	.byte	0x4
	.file 47 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x2f
	.byte	0x4
	.file 48 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x30
	.byte	0x4
	.byte	0x4
	.file 49 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x31
	.byte	0x4
	.file 50 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x32
	.byte	0x4
	.file 51 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x33
	.byte	0x4
	.byte	0x4
	.file 52 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x34
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x30
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x9
	.byte	0x4
	.file 53 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x35
	.byte	0x4
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x1b
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xd
	.byte	0x4
	.file 54 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x36
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x6
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x32
	.byte	0x4
	.byte	0x4
	.file 55 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x37
	.byte	0x4
	.file 56 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x38
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb1
	.uleb128 0x35
	.byte	0x4
	.file 57 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd6
	.uleb128 0x39
	.file 58 "../../../systemView/SEGGER_SYSVIEW.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x3a
	.file 59 "../../../systemView/SEGGER.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x3b
	.file 60 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x3c
	.byte	0x4
	.file 61 "../../../systemView/Global.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0x3d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 62 "../../../../../../external/freertos/source/include/projdefs.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x3e
	.byte	0x4
	.file 63 "../../../../../../external/freertos/source/include/portable.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x3f
	.file 64 "../../../../../../external/freertos/source/include/deprecated_definitions.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x40
	.byte	0x4
	.file 65 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x41
	.byte	0x3
	.uleb128 0x21
	.uleb128 0xf
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0xe
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 66 "../../../../../../external/freertos/source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x42
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x13
	.uleb128 0x1b
	.byte	0x4
	.file 67 "../../../../../../components/libraries/timer/app_timer.h"
	.byte	0x3
	.uleb128 0x14
	.uleb128 0x43
	.file 68 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x45
	.uleb128 0x44
	.byte	0x4
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x37
	.byte	0x4
	.byte	0x4
	.file 69 "../../../../../../components/libraries/fds/fds.h"
	.byte	0x3
	.uleb128 0x15
	.uleb128 0x45
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.file 70 "../../../../../../components/libraries/delay/nrf_delay.h"
	.byte	0x3
	.uleb128 0x18
	.uleb128 0x46
	.file 71 "../../../../../../modules/nrfx/nrfx.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x47
	.file 72 "../../../../../../integration/nrfx/nrfx_config.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x48
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x7
	.file 73 "../../../../../../modules/nrfx/mdk/nrf_peripherals.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x49
	.file 74 "../../../../../../modules/nrfx/mdk/nrf52832_peripherals.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x4a
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 75 "../../../../../../integration/nrfx/nrfx_glue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x4b
	.file 76 "../../../../../../integration/nrfx/legacy/apply_old_config.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x4c
	.byte	0x4
	.file 77 "../../../../../../modules/nrfx/soc/nrfx_irqs.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x4d
	.file 78 "../../../../../../modules/nrfx/soc/nrfx_irqs_nrf52832.h"
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x4e
	.byte	0x4
	.byte	0x4
	.file 79 "../../../../../../modules/nrfx/soc/nrfx_coredep.h"
	.byte	0x3
	.uleb128 0xcc
	.uleb128 0x4f
	.byte	0x4
	.file 80 "../../../../../../components/libraries/util/sdk_resources.h"
	.byte	0x3
	.uleb128 0xf1
	.uleb128 0x50
	.file 81 "../../../../../../components/softdevice/s132/headers/nrf_sd_def.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x51
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 82 "../../../../../../modules/nrfx/drivers/nrfx_errors.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x52
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x19
	.uleb128 0x22
	.file 83 "../../../../../../modules/nrfx/drivers/include/nrfx_clock.h"
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x53
	.file 84 "../../../../../../modules/nrfx/hal/nrf_clock.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x54
	.byte	0x4
	.file 85 "../../../../../../modules/nrfx/drivers/include/nrfx_power_clock.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x55
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 86 "../../../../../../integration/nrfx/legacy/nrf_drv_ppi.h"
	.byte	0x3
	.uleb128 0x1a
	.uleb128 0x56
	.file 87 "../../../../../../modules/nrfx/drivers/include/nrfx_ppi.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x57
	.file 88 "../../../../../../modules/nrfx/hal/nrf_ppi.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x58
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 89 "../../../../../../components/libraries/experimental_log/nrf_log.h"
	.byte	0x3
	.uleb128 0x1b
	.uleb128 0x59
	.file 90 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x5a
	.file 91 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x5b
	.byte	0x4
	.file 92 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x5c
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xe
	.byte	0x4
	.file 93 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x5d
	.byte	0x4
	.byte	0x4
	.file 94 "../../../../../../components/libraries/experimental_section_vars/nrf_section.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x5e
	.byte	0x4
	.file 95 "../../../../../../components/libraries/strerror/nrf_strerror.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x5f
	.byte	0x4
	.byte	0x3
	.uleb128 0x51
	.uleb128 0x10
	.file 96 "../../../../../../components/libraries/experimental_log/nrf_log_instance.h"
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x60
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x1c
	.file 97 "../../../../../../components/libraries/experimental_log/src/nrf_log_ctrl_internal.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x61
	.byte	0x4
	.file 98 "../../../../../../components/libraries/experimental_log/nrf_log_backend_interface.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x62
	.file 99 "../../../../../../components/libraries/experimental_memobj/nrf_memobj.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x63
	.file 100 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x64
	.byte	0x4
	.file 101 "../../../../../../components/libraries/balloc/nrf_balloc.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x65
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 102 "../../../../../../components/libraries/experimental_log/nrf_log_default_backends.h"
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x66
	.byte	0x4
	.byte	0x3
	.uleb128 0x1e
	.uleb128 0x11
	.byte	0x4
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x13
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x20
	.uleb128 0x14
	.file 103 "../../../../../../external/freertos/source/include/list.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x67
	.byte	0x4
	.byte	0x4
	.file 104 "../../../../../../external/freertos/source/include/timers.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x68
	.byte	0x3
	.uleb128 0x27
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.file 105 "../../../../../../components/libraries/twi_mngr/nrf_twi_mngr.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x69
	.file 106 "../../../../../../integration/nrfx/legacy/nrf_drv_twi.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x6a
	.file 107 "../../../../../../modules/nrfx/drivers/include/nrfx_twim.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x6b
	.file 108 "../../../../../../modules/nrfx/hal/nrf_twim.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x6c
	.byte	0x4
	.byte	0x4
	.file 109 "../../../../../../modules/nrfx/drivers/include/nrfx_twi.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x6d
	.file 110 "../../../../../../modules/nrfx/hal/nrf_twi.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x6e
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 111 "../../../../../../components/libraries/queue/nrf_queue.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x6f
	.byte	0x4
	.byte	0x4
	.file 112 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/math.h"
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x70
	.byte	0x4
	.byte	0x3
	.uleb128 0x2b
	.uleb128 0x21
	.byte	0x4
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x1a
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x19
	.byte	0x4
	.file 113 "../../../drivers/defines.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x71
	.byte	0x4
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x16
	.byte	0x3
	.uleb128 0xb
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x4
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.file 114 "../../../drivers/oled.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x72
	.byte	0x4
	.byte	0x3
	.uleb128 0xf
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x31
	.uleb128 0x1f
	.file 115 "../../../../../../modules/nrfx/drivers/include/nrfx_gpiote.h"
	.byte	0x3
	.uleb128 0xd
	.uleb128 0x73
	.file 116 "../../../../../../modules/nrfx/hal/nrf_gpiote.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x74
	.byte	0x4
	.file 117 "../../../../../../modules/nrfx/hal/nrf_gpio.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x75
	.byte	0x4
	.byte	0x4
	.file 118 "../../../../../../modules/nrfx/drivers/include/nrfx_timer.h"
	.byte	0x3
	.uleb128 0xe
	.uleb128 0x76
	.file 119 "../../../../../../modules/nrfx/hal/nrf_timer.h"
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x77
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x20
	.byte	0x4
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x18
	.byte	0x4
	.file 120 "../../../drivers/mag3110.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x78
	.byte	0x4
	.file 121 "../../../drivers/microsd.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x79
	.byte	0x4
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x1d
	.byte	0x4
	.file 122 "../../../communication/network.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x7a
	.byte	0x4
	.file 123 "../../../communication/server_communication.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x7b
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x1e
	.byte	0x4
	.file 124 "../../../communication/simple_protocol.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x7c
	.byte	0x4
	.file 125 "../../../software/SensorTowerTask.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x7d
	.byte	0x4
	.file 126 "../../../software/ControllerTask.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x7e
	.byte	0x4
	.file 127 "../../../software/EstimatorTask.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x7f
	.byte	0x4
	.file 128 "../../../software/DebugFunctions.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x80
	.byte	0x4
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x17
	.byte	0x4
	.byte	0x3
	.uleb128 0x40
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF222:
	.ascii	"servo_init\000"
.LASF75:
	.ascii	"currency_symbol\000"
.LASF42:
	.ascii	"NRF_LOG_SEVERITY_INFO\000"
.LASF38:
	.ascii	"padding\000"
.LASF208:
	.ascii	"ir_init\000"
.LASF145:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF117:
	.ascii	"__RAL_data_utf8_space\000"
.LASF102:
	.ascii	"date_time_format\000"
.LASF112:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF52:
	.ascii	"next\000"
.LASF40:
	.ascii	"NRF_LOG_SEVERITY_ERROR\000"
.LASF219:
	.ascii	"nrf_log_init\000"
.LASF108:
	.ascii	"__RAL_codeset_ascii\000"
.LASF53:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF11:
	.ascii	"widthBits\000"
.LASF92:
	.ascii	"int_n_sep_by_space\000"
.LASF83:
	.ascii	"p_cs_precedes\000"
.LASF163:
	.ascii	"handle_user_task\000"
.LASF119:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF180:
	.ascii	"gHandshook\000"
.LASF216:
	.ascii	"app_error_handler\000"
.LASF130:
	.ascii	"long long unsigned int\000"
.LASF232:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF7:
	.ascii	"data\000"
.LASF55:
	.ascii	"__locale_s\000"
.LASF122:
	.ascii	"__user_get_time_of_day\000"
.LASF144:
	.ascii	"_vectors\000"
.LASF151:
	.ascii	"QueueHandle_t\000"
.LASF131:
	.ascii	"ITM_RxBuffer\000"
.LASF194:
	.ascii	"erase_bonds\000"
.LASF158:
	.ascii	"orkney_8ptFontInfo\000"
.LASF74:
	.ascii	"int_curr_symbol\000"
.LASF198:
	.ascii	"user_task\000"
.LASF193:
	.ascii	"m_lcd_cb\000"
.LASF98:
	.ascii	"abbrev_month_names\000"
.LASF126:
	.ascii	"int16_t\000"
.LASF129:
	.ascii	"long long int\000"
.LASF125:
	.ascii	"signed char\000"
.LASF106:
	.ascii	"__RAL_global_locale\000"
.LASF37:
	.ascii	"module_id\000"
.LASF59:
	.ascii	"codeset\000"
.LASF226:
	.ascii	"vTaskDelay\000"
.LASF156:
	.ascii	"FONT_INFO\000"
.LASF66:
	.ascii	"__towupper\000"
.LASF168:
	.ascii	"sensor_tower_task\000"
.LASF81:
	.ascii	"int_frac_digits\000"
.LASF29:
	.ascii	"state\000"
.LASF70:
	.ascii	"long int\000"
.LASF191:
	.ascii	"RightMotorDirection\000"
.LASF201:
	.ascii	"targetX\000"
.LASF186:
	.ascii	"gLeft\000"
.LASF60:
	.ascii	"__RAL_locale_data_t\000"
.LASF116:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF153:
	.ascii	"TaskHandle_t\000"
.LASF138:
	.ascii	"stdin\000"
.LASF64:
	.ascii	"__tolower\000"
.LASF41:
	.ascii	"NRF_LOG_SEVERITY_WARNING\000"
.LASF13:
	.ascii	"uint16_t\000"
.LASF233:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam\\main.c\000"
.LASF154:
	.ascii	"double\000"
.LASF231:
	.ascii	"nrf_drv_clock_init\000"
.LASF146:
	.ascii	"BaseType_t\000"
.LASF199:
	.ascii	"str1\000"
.LASF200:
	.ascii	"str2\000"
.LASF169:
	.ascii	"arq_task\000"
.LASF48:
	.ascii	"__irq_masks\000"
.LASF96:
	.ascii	"abbrev_day_names\000"
.LASF80:
	.ascii	"negative_sign\000"
.LASF105:
	.ascii	"__wchar\000"
.LASF4:
	.ascii	"endChar\000"
.LASF182:
	.ascii	"USEBLUETOOTH\000"
.LASF89:
	.ascii	"int_p_cs_precedes\000"
.LASF26:
	.ascii	"nrf_lcd_rotation_t\000"
.LASF228:
	.ascii	"vTaskPrioritySet\000"
.LASF72:
	.ascii	"thousands_sep\000"
.LASF215:
	.ascii	"vTaskStartScheduler\000"
.LASF12:
	.ascii	"offset\000"
.LASF78:
	.ascii	"mon_grouping\000"
.LASF65:
	.ascii	"__iswctype\000"
.LASF88:
	.ascii	"n_sign_posn\000"
.LASF230:
	.ascii	"display_text_on_line\000"
.LASF196:
	.ascii	"LOCAL_ERR_CODE\000"
.LASF23:
	.ascii	"lcd_cb_t\000"
.LASF100:
	.ascii	"date_format\000"
.LASF207:
	.ascii	"clock_init\000"
.LASF5:
	.ascii	"spacePixels\000"
.LASF28:
	.ascii	"unsigned int\000"
.LASF202:
	.ascii	"targetY\000"
.LASF91:
	.ascii	"int_p_sep_by_space\000"
.LASF132:
	.ascii	"SystemCoreClock\000"
.LASF204:
	.ascii	"testWaypoint\000"
.LASF99:
	.ascii	"am_pm_indicator\000"
.LASF115:
	.ascii	"__RAL_data_utf8_period\000"
.LASF73:
	.ascii	"grouping\000"
.LASF192:
	.ascii	"LeftMotorDirection\000"
.LASF141:
	.ascii	"long unsigned int\000"
.LASF6:
	.ascii	"charInfo\000"
.LASF67:
	.ascii	"__towlower\000"
.LASF184:
	.ascii	"gX_hat\000"
.LASF120:
	.ascii	"__RAL_data_empty_string\000"
.LASF166:
	.ascii	"pose_controller_task\000"
.LASF56:
	.ascii	"__category\000"
.LASF178:
	.ascii	"scanStatusQ\000"
.LASF148:
	.ascii	"nrf_log_module_reduced_dynamic_data_t\000"
.LASF143:
	.ascii	"__StackLimit\000"
.LASF190:
	.ascii	"shared_SPI_init\000"
.LASF30:
	.ascii	"width\000"
.LASF133:
	.ascii	"nrf_nvic_state_t\000"
.LASF164:
	.ascii	"handle_microsd_task\000"
.LASF179:
	.ascii	"queue_microsd\000"
.LASF14:
	.ascii	"short unsigned int\000"
.LASF58:
	.ascii	"name\000"
.LASF234:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF10:
	.ascii	"FONT_CHAR_INFO\000"
.LASF39:
	.ascii	"NRF_LOG_SEVERITY_NONE\000"
.LASF212:
	.ascii	"xQueueCreateMutex\000"
.LASF95:
	.ascii	"day_names\000"
.LASF206:
	.ascii	"target\000"
.LASF33:
	.ascii	"NRF_LCD_ROTATE_0\000"
.LASF49:
	.ascii	"__cr_flag\000"
.LASF229:
	.ascii	"sprintf\000"
.LASF3:
	.ascii	"startChar\000"
.LASF136:
	.ascii	"timeval\000"
.LASF47:
	.ascii	"NRFX_DRV_STATE_POWERED_ON\000"
.LASF139:
	.ascii	"stdout\000"
.LASF167:
	.ascii	"communication_task\000"
.LASF57:
	.ascii	"__RAL_locale_t\000"
.LASF101:
	.ascii	"time_format\000"
.LASF172:
	.ascii	"xTickMutex\000"
.LASF63:
	.ascii	"__toupper\000"
.LASF223:
	.ascii	"encoder_init_int\000"
.LASF87:
	.ascii	"p_sign_posn\000"
.LASF24:
	.ascii	"ret_code_t\000"
.LASF17:
	.ascii	"lcd_pixel_draw\000"
.LASF110:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF195:
	.ascii	"err_code\000"
.LASF173:
	.ascii	"xControllerBSem\000"
.LASF213:
	.ascii	"xTaskCreate\000"
.LASF51:
	.ascii	"decode\000"
.LASF22:
	.ascii	"p_lcd_cb\000"
.LASF197:
	.ascii	"log_init\000"
.LASF36:
	.ascii	"NRF_LCD_ROTATE_270\000"
.LASF69:
	.ascii	"__mbtowc\000"
.LASF134:
	.ascii	"nrf_nvic_state\000"
.LASF203:
	.ascii	"sent\000"
.LASF107:
	.ascii	"__RAL_c_locale\000"
.LASF205:
	.ascii	"time\000"
.LASF171:
	.ascii	"xPoseMutex\000"
.LASF121:
	.ascii	"__user_set_time_of_day\000"
.LASF90:
	.ascii	"int_n_cs_precedes\000"
.LASF187:
	.ascii	"gRight\000"
.LASF109:
	.ascii	"__RAL_codeset_utf8\000"
.LASF104:
	.ascii	"__state\000"
.LASF16:
	.ascii	"lcd_uninit\000"
.LASF160:
	.ascii	"m_nrf_lcd\000"
.LASF18:
	.ascii	"lcd_rect_draw\000"
.LASF142:
	.ascii	"__StackTop\000"
.LASF170:
	.ascii	"xScanLock\000"
.LASF27:
	.ascii	"_Bool\000"
.LASF128:
	.ascii	"int32_t\000"
.LASF8:
	.ascii	"unsigned char\000"
.LASF2:
	.ascii	"height\000"
.LASF111:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF155:
	.ascii	"nrf_lcd_t\000"
.LASF82:
	.ascii	"frac_digits\000"
.LASF44:
	.ascii	"NRF_LOG_SEVERITY_INFO_RAW\000"
.LASF127:
	.ascii	"short int\000"
.LASF124:
	.ascii	"__RAL_error_decoder_head\000"
.LASF214:
	.ascii	"nrf_log_frontend_std_0\000"
.LASF183:
	.ascii	"gTheta_hat\000"
.LASF103:
	.ascii	"__mbstate_s\000"
.LASF211:
	.ascii	"xQueueGenericCreate\000"
.LASF209:
	.ascii	"BLE_init\000"
.LASF135:
	.ascii	"FILE\000"
.LASF236:
	.ascii	"vApplicationIdleHook\000"
.LASF161:
	.ascii	"collisionAngles\000"
.LASF20:
	.ascii	"lcd_rotation_set\000"
.LASF32:
	.ascii	"nrfx_drv_state_t\000"
.LASF77:
	.ascii	"mon_thousands_sep\000"
.LASF188:
	.ascii	"gRightWheelTicks\000"
.LASF79:
	.ascii	"positive_sign\000"
.LASF25:
	.ascii	"uint32_t\000"
.LASF181:
	.ascii	"gPaused\000"
.LASF93:
	.ascii	"int_p_sign_posn\000"
.LASF225:
	.ascii	"i2cInit\000"
.LASF35:
	.ascii	"NRF_LCD_ROTATE_180\000"
.LASF152:
	.ascii	"SemaphoreHandle_t\000"
.LASF54:
	.ascii	"char\000"
.LASF224:
	.ascii	"vPortExitCritical\000"
.LASF62:
	.ascii	"__isctype\000"
.LASF177:
	.ascii	"poseControllerQ\000"
.LASF84:
	.ascii	"p_sep_by_space\000"
.LASF149:
	.ascii	"m_nrf_log_app_logs_data_dynamic\000"
.LASF227:
	.ascii	"IMU_init\000"
.LASF176:
	.ascii	"xCollisionMutex\000"
.LASF210:
	.ascii	"arq_init\000"
.LASF150:
	.ascii	"nrf_sdh_freertos_task_hook_t\000"
.LASF34:
	.ascii	"NRF_LCD_ROTATE_90\000"
.LASF43:
	.ascii	"NRF_LOG_SEVERITY_DEBUG\000"
.LASF61:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF0:
	.ascii	"sCartesian\000"
.LASF220:
	.ascii	"vPortEnterCritical\000"
.LASF189:
	.ascii	"gLeftWheelTicks\000"
.LASF94:
	.ascii	"int_n_sign_posn\000"
.LASF165:
	.ascii	"pose_estimator_task\000"
.LASF140:
	.ascii	"stderr\000"
.LASF217:
	.ascii	"vTaskSuspend\000"
.LASF113:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF162:
	.ascii	"handle_display_task\000"
.LASF21:
	.ascii	"lcd_display_invert\000"
.LASF50:
	.ascii	"__RAL_error_decoder_s\000"
.LASF123:
	.ascii	"__RAL_error_decoder_t\000"
.LASF85:
	.ascii	"n_cs_precedes\000"
.LASF9:
	.ascii	"uint8_t\000"
.LASF19:
	.ascii	"lcd_display\000"
.LASF1:
	.ascii	"float\000"
.LASF97:
	.ascii	"month_names\000"
.LASF221:
	.ascii	"motor_init\000"
.LASF218:
	.ascii	"nrf_sdh_freertos_init\000"
.LASF174:
	.ascii	"xCommandReadyBSem\000"
.LASF175:
	.ascii	"mutex_spi\000"
.LASF46:
	.ascii	"NRFX_DRV_STATE_INITIALIZED\000"
.LASF45:
	.ascii	"NRFX_DRV_STATE_UNINITIALIZED\000"
.LASF159:
	.ascii	"queue_display\000"
.LASF31:
	.ascii	"rotation\000"
.LASF86:
	.ascii	"n_sep_by_space\000"
.LASF137:
	.ascii	"__RAL_FILE\000"
.LASF157:
	.ascii	"nrf_gfx_font_desc_t\000"
.LASF118:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF15:
	.ascii	"lcd_init\000"
.LASF114:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF235:
	.ascii	"main\000"
.LASF76:
	.ascii	"mon_decimal_point\000"
.LASF147:
	.ascii	"UBaseType_t\000"
.LASF68:
	.ascii	"__wctomb\000"
.LASF71:
	.ascii	"decimal_point\000"
.LASF185:
	.ascii	"gY_hat\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
