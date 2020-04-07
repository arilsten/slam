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
	.file	"heap_4.c"
	.text
.Ltext0:
	.section	.text.prvHeapInit,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvHeapInit, %function
prvHeapInit:
.LFB205:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\freertos\\source\\portable\\MemMang\\heap_4.c"
	.loc 1 331 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 332 1 view .LVU1
	.loc 1 333 1 view .LVU2
	.loc 1 334 1 view .LVU3
	.loc 1 335 1 view .LVU4
.LVL0:
	.loc 1 338 2 view .LVU5
	.loc 1 338 12 is_stmt 0 view .LVU6
	ldr	r2, .L4
.LVL1:
	.loc 1 340 2 is_stmt 1 view .LVU7
	.loc 1 340 4 is_stmt 0 view .LVU8
	tst	r2, #7
	beq	.L3
	.loc 1 342 3 is_stmt 1 view .LVU9
	.loc 1 342 13 is_stmt 0 view .LVU10
	adds	r1, r2, #7
.LVL2:
	.loc 1 343 3 is_stmt 1 view .LVU11
	.loc 1 343 13 is_stmt 0 view .LVU12
	bic	r1, r1, #7
.LVL3:
	.loc 1 344 3 is_stmt 1 view .LVU13
	.loc 1 344 18 is_stmt 0 view .LVU14
	rsb	r3, r1, #13952
	adds	r3, r3, #48
	add	r3, r3, r2
.LVL4:
	.loc 1 343 13 view .LVU15
	mov	r2, r1
.LVL5:
.L2:
	.loc 1 347 2 is_stmt 1 view .LVU16
	.loc 1 351 2 view .LVU17
	.loc 1 351 25 is_stmt 0 view .LVU18
	ldr	r0, .L4+4
	str	r2, [r0]
	.loc 1 352 2 is_stmt 1 view .LVU19
	.loc 1 352 20 is_stmt 0 view .LVU20
	movs	r1, #0
	str	r1, [r0, #4]
	.loc 1 356 2 is_stmt 1 view .LVU21
	.loc 1 356 12 is_stmt 0 view .LVU22
	add	r3, r3, r2
.LVL6:
	.loc 1 357 2 is_stmt 1 view .LVU23
	.loc 1 357 12 is_stmt 0 view .LVU24
	subs	r3, r3, #8
.LVL7:
	.loc 1 358 2 is_stmt 1 view .LVU25
	.loc 1 358 12 is_stmt 0 view .LVU26
	bic	r3, r3, #7
.LVL8:
	.loc 1 359 2 is_stmt 1 view .LVU27
	.loc 1 359 8 is_stmt 0 view .LVU28
	ldr	r0, .L4+8
	str	r3, [r0]
	.loc 1 360 2 is_stmt 1 view .LVU29
	.loc 1 360 20 is_stmt 0 view .LVU30
	str	r1, [r3, #4]
	.loc 1 361 2 is_stmt 1 view .LVU31
	.loc 1 361 25 is_stmt 0 view .LVU32
	str	r1, [r3]
	.loc 1 365 2 is_stmt 1 view .LVU33
.LVL9:
	.loc 1 366 2 view .LVU34
	.loc 1 366 43 is_stmt 0 view .LVU35
	subs	r1, r3, r2
	.loc 1 366 31 view .LVU36
	str	r1, [r2, #4]
	.loc 1 367 2 is_stmt 1 view .LVU37
	.loc 1 367 36 is_stmt 0 view .LVU38
	str	r3, [r2]
	.loc 1 370 2 is_stmt 1 view .LVU39
	.loc 1 370 33 is_stmt 0 view .LVU40
	ldr	r3, .L4+12
.LVL10:
	.loc 1 370 33 view .LVU41
	str	r1, [r3]
	.loc 1 371 2 is_stmt 1 view .LVU42
	.loc 1 371 22 is_stmt 0 view .LVU43
	ldr	r3, .L4+16
	str	r1, [r3]
	.loc 1 374 2 is_stmt 1 view .LVU44
	.loc 1 374 21 is_stmt 0 view .LVU45
	ldr	r3, .L4+20
	mov	r2, #-2147483648
.LVL11:
	.loc 1 374 21 view .LVU46
	str	r2, [r3]
	.loc 1 375 1 view .LVU47
	bx	lr
.LVL12:
.L3:
	.loc 1 335 8 view .LVU48
	movw	r3, #14000
	b	.L2
.L5:
	.align	2
.L4:
	.word	ucHeap
	.word	.LANCHOR0
	.word	.LANCHOR1
	.word	.LANCHOR2
	.word	.LANCHOR3
	.word	.LANCHOR4
.LFE205:
	.size	prvHeapInit, .-prvHeapInit
	.section	.text.prvInsertBlockIntoFreeList,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	prvInsertBlockIntoFreeList, %function
prvInsertBlockIntoFreeList:
.LVL13:
.LFB206:
	.loc 1 379 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 379 1 is_stmt 0 view .LVU50
	push	{r4}
.LCFI0:
	.loc 1 380 1 is_stmt 1 view .LVU51
	.loc 1 381 1 view .LVU52
	.loc 1 385 2 view .LVU53
.LVL14:
	.loc 1 385 18 is_stmt 0 view .LVU54
	ldr	r3, .L16
.LVL15:
.L7:
	.loc 1 385 29 is_stmt 1 discriminator 1 view .LVU55
	mov	r2, r3
	.loc 1 385 39 is_stmt 0 discriminator 1 view .LVU56
	ldr	r3, [r3]
.LVL16:
	.loc 1 385 2 discriminator 1 view .LVU57
	cmp	r3, r0
	bcc	.L7
	.loc 1 392 2 is_stmt 1 view .LVU58
.LVL17:
	.loc 1 393 2 view .LVU59
	.loc 1 393 24 is_stmt 0 view .LVU60
	ldr	r1, [r2, #4]
	.loc 1 393 12 view .LVU61
	adds	r4, r2, r1
	.loc 1 393 4 view .LVU62
	cmp	r4, r0
	beq	.L14
.L8:
	.loc 1 400 3 is_stmt 1 view .LVU63
	.loc 1 405 2 view .LVU64
.LVL18:
	.loc 1 406 2 view .LVU65
	.loc 1 406 29 is_stmt 0 view .LVU66
	ldr	r1, [r0, #4]
	.loc 1 406 12 view .LVU67
	adds	r4, r0, r1
	.loc 1 406 4 view .LVU68
	cmp	r3, r4
	beq	.L15
	.loc 1 421 3 is_stmt 1 view .LVU69
	.loc 1 421 36 is_stmt 0 view .LVU70
	str	r3, [r0]
.L11:
	.loc 1 428 2 is_stmt 1 view .LVU71
	.loc 1 428 4 is_stmt 0 view .LVU72
	cmp	r0, r2
	beq	.L6
	.loc 1 430 3 is_stmt 1 view .LVU73
	.loc 1 430 31 is_stmt 0 view .LVU74
	str	r0, [r2]
	.loc 1 434 3 is_stmt 1 view .LVU75
.L6:
	.loc 1 436 1 is_stmt 0 view .LVU76
	ldr	r4, [sp], #4
.LCFI1:
	bx	lr
.LVL19:
.L14:
.LCFI2:
	.loc 1 395 3 is_stmt 1 view .LVU77
	.loc 1 395 44 is_stmt 0 view .LVU78
	ldr	r0, [r0, #4]
.LVL20:
	.loc 1 395 26 view .LVU79
	add	r1, r1, r0
	str	r1, [r2, #4]
	.loc 1 396 3 is_stmt 1 view .LVU80
.LVL21:
	.loc 1 396 19 is_stmt 0 view .LVU81
	mov	r0, r2
	b	.L8
.LVL22:
.L15:
	.loc 1 408 3 is_stmt 1 view .LVU82
	.loc 1 408 35 is_stmt 0 view .LVU83
	ldr	r4, .L16+4
	ldr	r4, [r4]
	.loc 1 408 5 view .LVU84
	cmp	r3, r4
	beq	.L10
	.loc 1 411 4 is_stmt 1 view .LVU85
	.loc 1 411 62 is_stmt 0 view .LVU86
	ldr	r3, [r3, #4]
	.loc 1 411 32 view .LVU87
	add	r1, r1, r3
	str	r1, [r0, #4]
	.loc 1 412 4 is_stmt 1 view .LVU88
	.loc 1 412 49 is_stmt 0 view .LVU89
	ldr	r3, [r2]
	.loc 1 412 66 view .LVU90
	ldr	r3, [r3]
	.loc 1 412 37 view .LVU91
	str	r3, [r0]
	b	.L11
.L10:
	.loc 1 416 4 is_stmt 1 view .LVU92
	.loc 1 416 37 is_stmt 0 view .LVU93
	str	r4, [r0]
	b	.L11
.L17:
	.align	2
.L16:
	.word	.LANCHOR0
	.word	.LANCHOR1
.LFE206:
	.size	prvInsertBlockIntoFreeList, .-prvInsertBlockIntoFreeList
	.section	.rodata.pvPortMalloc.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\external\\freertos\\so"
	.ascii	"urce\\portable\\MemMang\\heap_4.c\000"
	.section	.text.pvPortMalloc,"ax",%progbits
	.align	1
	.global	pvPortMalloc
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	pvPortMalloc, %function
pvPortMalloc:
.LVL23:
.LFB200:
	.loc 1 115 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 115 1 is_stmt 0 view .LVU95
	push	{r3, r4, r5, r6, r7, lr}
.LCFI3:
	mov	r5, r0
	.loc 1 116 1 is_stmt 1 view .LVU96
	.loc 1 117 1 view .LVU97
.LVL24:
	.loc 1 119 2 view .LVU98
	bl	vTaskSuspendAll
.LVL25:
	.loc 1 123 3 view .LVU99
	.loc 1 123 13 is_stmt 0 view .LVU100
	ldr	r3, .L37
	ldr	r3, [r3]
	.loc 1 123 5 view .LVU101
	cbz	r3, .L34
.L19:
	.loc 1 129 4 is_stmt 1 view .LVU102
	.loc 1 136 3 view .LVU103
	.loc 1 136 21 is_stmt 0 view .LVU104
	ldr	r3, .L37+4
	ldr	r3, [r3]
	.loc 1 136 5 view .LVU105
	tst	r5, r3
	bne	.L28
	.loc 1 140 4 is_stmt 1 view .LVU106
	.loc 1 140 6 is_stmt 0 view .LVU107
	cbz	r5, .L21
	.loc 1 142 5 is_stmt 1 view .LVU108
	.loc 1 142 17 is_stmt 0 view .LVU109
	adds	r5, r5, #8
.LVL26:
	.loc 1 146 5 is_stmt 1 view .LVU110
	.loc 1 146 7 is_stmt 0 view .LVU111
	tst	r5, #7
	beq	.L21
	.loc 1 149 6 is_stmt 1 view .LVU112
	.loc 1 149 18 is_stmt 0 view .LVU113
	bic	r5, r5, #7
.LVL27:
	.loc 1 149 18 view .LVU114
	adds	r5, r5, #8
.LVL28:
	.loc 1 150 6 is_stmt 1 view .LVU115
	.loc 1 150 15 view .LVU116
.L21:
	.loc 1 159 5 view .LVU117
	.loc 1 162 4 view .LVU118
	.loc 1 162 6 is_stmt 0 view .LVU119
	cmp	r5, #0
	beq	.L29
	.loc 1 162 45 discriminator 1 view .LVU120
	ldr	r3, .L37+8
	ldr	r3, [r3]
	.loc 1 162 28 discriminator 1 view .LVU121
	cmp	r3, r5
	bcc	.L30
	.loc 1 166 5 is_stmt 1 view .LVU122
.LVL29:
	.loc 1 167 5 view .LVU123
	.loc 1 167 13 is_stmt 0 view .LVU124
	ldr	r2, .L37+12
	ldr	r4, [r2]
.LVL30:
	.loc 1 168 5 is_stmt 1 view .LVU125
	.loc 1 168 10 is_stmt 0 view .LVU126
	b	.L23
.LVL31:
.L34:
	.loc 1 125 4 is_stmt 1 view .LVU127
	bl	prvHeapInit
.LVL32:
	b	.L19
.LVL33:
.L31:
	.loc 1 170 22 is_stmt 0 view .LVU128
	mov	r2, r4
.LVL34:
	.loc 1 171 14 view .LVU129
	mov	r4, r3
.LVL35:
.L23:
	.loc 1 168 10 is_stmt 1 view .LVU130
	.loc 1 168 21 is_stmt 0 view .LVU131
	ldr	r3, [r4, #4]
	.loc 1 168 10 view .LVU132
	cmp	r3, r5
	bcs	.L22
	.loc 1 168 62 discriminator 1 view .LVU133
	ldr	r3, [r4]
	.loc 1 168 50 discriminator 1 view .LVU134
	cmp	r3, #0
	bne	.L31
.L22:
	.loc 1 176 5 is_stmt 1 view .LVU135
	.loc 1 176 17 is_stmt 0 view .LVU136
	ldr	r3, .L37
	ldr	r3, [r3]
	.loc 1 176 7 view .LVU137
	cmp	r3, r4
	beq	.L32
	.loc 1 180 6 is_stmt 1 view .LVU138
	.loc 1 180 61 is_stmt 0 view .LVU139
	ldr	r6, [r2]
	.loc 1 180 15 view .LVU140
	adds	r6, r6, #8
.LVL36:
	.loc 1 184 6 is_stmt 1 view .LVU141
	.loc 1 184 48 is_stmt 0 view .LVU142
	ldr	r3, [r4]
	.loc 1 184 39 view .LVU143
	str	r3, [r2]
	.loc 1 188 6 is_stmt 1 view .LVU144
	.loc 1 188 19 is_stmt 0 view .LVU145
	ldr	r3, [r4, #4]
	.loc 1 188 32 view .LVU146
	subs	r3, r3, r5
	.loc 1 188 8 view .LVU147
	cmp	r3, #16
	bls	.L24
	.loc 1 194 7 is_stmt 1 view .LVU148
	.loc 1 194 22 is_stmt 0 view .LVU149
	adds	r7, r4, r5
.LVL37:
	.loc 1 195 7 is_stmt 1 view .LVU150
	.loc 1 195 16 view .LVU151
	.loc 1 195 19 is_stmt 0 view .LVU152
	tst	r7, #7
	bne	.L35
.LVL38:
.L25:
	.loc 1 195 222 is_stmt 1 discriminator 5 view .LVU153
	.loc 1 199 7 discriminator 5 view .LVU154
	.loc 1 199 43 is_stmt 0 discriminator 5 view .LVU155
	ldr	r3, [r4, #4]
	.loc 1 199 56 discriminator 5 view .LVU156
	subs	r3, r3, r5
	.loc 1 199 34 discriminator 5 view .LVU157
	str	r3, [r7, #4]
	.loc 1 200 7 is_stmt 1 discriminator 5 view .LVU158
	.loc 1 200 27 is_stmt 0 discriminator 5 view .LVU159
	str	r5, [r4, #4]
	.loc 1 203 7 is_stmt 1 discriminator 5 view .LVU160
	mov	r0, r7
	bl	prvInsertBlockIntoFreeList
.LVL39:
.L24:
	.loc 1 207 7 view .LVU161
	.loc 1 210 6 view .LVU162
	.loc 1 210 36 is_stmt 0 view .LVU163
	ldr	r2, [r4, #4]
	.loc 1 210 26 view .LVU164
	ldr	r1, .L37+8
	ldr	r3, [r1]
	subs	r3, r3, r2
	str	r3, [r1]
	.loc 1 212 6 is_stmt 1 view .LVU165
	.loc 1 212 30 is_stmt 0 view .LVU166
	ldr	r1, .L37+16
	ldr	r1, [r1]
	.loc 1 212 8 view .LVU167
	cmp	r3, r1
	bcs	.L26
	.loc 1 214 7 is_stmt 1 view .LVU168
	.loc 1 214 38 is_stmt 0 view .LVU169
	ldr	r1, .L37+16
	str	r3, [r1]
.L26:
	.loc 1 218 7 is_stmt 1 view .LVU170
	.loc 1 223 6 view .LVU171
	.loc 1 223 26 is_stmt 0 view .LVU172
	ldr	r3, .L37+4
	ldr	r3, [r3]
	orrs	r3, r3, r2
	str	r3, [r4, #4]
	.loc 1 224 6 is_stmt 1 view .LVU173
	.loc 1 224 31 is_stmt 0 view .LVU174
	movs	r3, #0
	str	r3, [r4]
.LVL40:
.L20:
	.loc 1 238 4 is_stmt 1 view .LVU175
	.loc 1 241 3 view .LVU176
	.loc 1 243 2 view .LVU177
	.loc 1 243 11 is_stmt 0 view .LVU178
	bl	xTaskResumeAll
.LVL41:
	.loc 1 259 2 is_stmt 1 view .LVU179
	.loc 1 259 11 view .LVU180
	.loc 1 259 14 is_stmt 0 view .LVU181
	tst	r6, #7
	bne	.L36
.L18:
	.loc 1 261 1 view .LVU182
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, pc}
.LVL42:
.L35:
	.loc 1 195 84 is_stmt 1 discriminator 4 view .LVU183
	ldr	r1, .L37+20
	movs	r0, #195
	bl	assert_nrf_callback
.LVL43:
	.loc 1 195 84 is_stmt 0 discriminator 4 view .LVU184
	b	.L25
.LVL44:
.L28:
	.loc 1 117 7 view .LVU185
	movs	r6, #0
	b	.L20
.L29:
	.loc 1 117 7 view .LVU186
	movs	r6, #0
	b	.L20
.L30:
	movs	r6, #0
	b	.L20
.LVL45:
.L32:
	.loc 1 117 7 view .LVU187
	movs	r6, #0
	b	.L20
.LVL46:
.L36:
	.loc 1 259 84 is_stmt 1 discriminator 4 view .LVU188
	ldr	r1, .L37+20
	movw	r0, #259
	bl	assert_nrf_callback
.LVL47:
	.loc 1 259 222 discriminator 4 view .LVU189
	.loc 1 260 2 discriminator 4 view .LVU190
	.loc 1 260 9 is_stmt 0 discriminator 4 view .LVU191
	b	.L18
.L38:
	.align	2
.L37:
	.word	.LANCHOR1
	.word	.LANCHOR4
	.word	.LANCHOR3
	.word	.LANCHOR0
	.word	.LANCHOR2
	.word	.LC0
.LFE200:
	.size	pvPortMalloc, .-pvPortMalloc
	.section	.text.vPortFree,"ax",%progbits
	.align	1
	.global	vPortFree
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vPortFree, %function
vPortFree:
.LVL48:
.LFB201:
	.loc 1 265 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	.loc 1 266 1 view .LVU193
	.loc 1 267 1 view .LVU194
	.loc 1 269 2 view .LVU195
	.loc 1 269 4 is_stmt 0 view .LVU196
	cbz	r0, .L44
	.loc 1 265 1 view .LVU197
	push	{r3, r4, r5, lr}
.LCFI4:
	mov	r4, r0
	.loc 1 273 3 is_stmt 1 view .LVU198
	.loc 1 273 7 is_stmt 0 view .LVU199
	sub	r5, r0, #8
.LVL49:
	.loc 1 276 3 is_stmt 1 view .LVU200
	.loc 1 279 3 view .LVU201
	.loc 1 279 12 view .LVU202
	.loc 1 279 24 is_stmt 0 view .LVU203
	ldr	r2, [r0, #-4]
	.loc 1 279 37 view .LVU204
	ldr	r3, .L49
	ldr	r3, [r3]
	.loc 1 279 15 view .LVU205
	tst	r2, r3
	beq	.L47
.LVL50:
.L41:
	.loc 1 279 215 is_stmt 1 discriminator 1 view .LVU206
	.loc 1 280 3 discriminator 1 view .LVU207
	.loc 1 280 12 discriminator 1 view .LVU208
	.loc 1 280 22 is_stmt 0 discriminator 1 view .LVU209
	ldr	r3, [r4, #-8]
	.loc 1 280 15 discriminator 1 view .LVU210
	cbz	r3, .L42
	.loc 1 280 15 is_stmt 1 discriminator 4 view .LVU211
	ldr	r1, .L49+4
	mov	r0, #280
	bl	assert_nrf_callback
.LVL51:
.L42:
	.loc 1 280 153 discriminator 5 view .LVU212
	.loc 1 282 3 discriminator 5 view .LVU213
	.loc 1 282 15 is_stmt 0 discriminator 5 view .LVU214
	ldr	r3, [r4, #-4]
	.loc 1 282 28 discriminator 5 view .LVU215
	ldr	r2, .L49
	ldr	r2, [r2]
	.loc 1 282 5 discriminator 5 view .LVU216
	tst	r3, r2
	beq	.L39
	.loc 1 284 4 is_stmt 1 view .LVU217
	.loc 1 284 14 is_stmt 0 view .LVU218
	ldr	r1, [r4, #-8]
	.loc 1 284 6 view .LVU219
	cbz	r1, .L48
.L39:
	.loc 1 309 1 view .LVU220
	pop	{r3, r4, r5, pc}
.LVL52:
.L47:
	.loc 1 279 77 is_stmt 1 discriminator 4 view .LVU221
	ldr	r1, .L49+4
	movw	r0, #279
.LVL53:
	.loc 1 279 77 is_stmt 0 discriminator 4 view .LVU222
	bl	assert_nrf_callback
.LVL54:
	b	.L41
.L48:
	.loc 1 288 5 is_stmt 1 view .LVU223
	.loc 1 288 24 is_stmt 0 view .LVU224
	bic	r3, r3, r2
	str	r3, [r4, #-4]
	.loc 1 290 5 is_stmt 1 view .LVU225
	bl	vTaskSuspendAll
.LVL55:
	.loc 1 293 6 view .LVU226
	.loc 1 293 35 is_stmt 0 view .LVU227
	ldr	r1, [r4, #-4]
	.loc 1 293 26 view .LVU228
	ldr	r2, .L49+8
	ldr	r3, [r2]
	add	r3, r3, r1
	str	r3, [r2]
	.loc 1 294 6 is_stmt 1 view .LVU229
	.loc 1 295 6 view .LVU230
	mov	r0, r5
	bl	prvInsertBlockIntoFreeList
.LVL56:
	.loc 1 297 5 view .LVU231
	.loc 1 297 14 is_stmt 0 view .LVU232
	bl	xTaskResumeAll
.LVL57:
	.loc 1 306 4 is_stmt 1 view .LVU233
	.loc 1 309 1 is_stmt 0 view .LVU234
	b	.L39
.LVL58:
.L44:
.LCFI5:
	.loc 1 309 1 view .LVU235
	bx	lr
.L50:
	.align	2
.L49:
	.word	.LANCHOR4
	.word	.LC0
	.word	.LANCHOR3
.LFE201:
	.size	vPortFree, .-vPortFree
	.section	.text.xPortGetFreeHeapSize,"ax",%progbits
	.align	1
	.global	xPortGetFreeHeapSize
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	xPortGetFreeHeapSize, %function
xPortGetFreeHeapSize:
.LFB202:
	.loc 1 313 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 314 2 view .LVU237
	.loc 1 315 1 is_stmt 0 view .LVU238
	ldr	r3, .L52
	ldr	r0, [r3]
	bx	lr
.L53:
	.align	2
.L52:
	.word	.LANCHOR3
.LFE202:
	.size	xPortGetFreeHeapSize, .-xPortGetFreeHeapSize
	.section	.text.xPortGetMinimumEverFreeHeapSize,"ax",%progbits
	.align	1
	.global	xPortGetMinimumEverFreeHeapSize
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	xPortGetMinimumEverFreeHeapSize, %function
xPortGetMinimumEverFreeHeapSize:
.LFB203:
	.loc 1 319 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 320 2 view .LVU240
	.loc 1 321 1 is_stmt 0 view .LVU241
	ldr	r3, .L55
	ldr	r0, [r3]
	bx	lr
.L56:
	.align	2
.L55:
	.word	.LANCHOR2
.LFE203:
	.size	xPortGetMinimumEverFreeHeapSize, .-xPortGetMinimumEverFreeHeapSize
	.section	.text.vPortInitialiseBlocks,"ax",%progbits
	.align	1
	.global	vPortInitialiseBlocks
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	vPortInitialiseBlocks, %function
vPortInitialiseBlocks:
.LFB204:
	.loc 1 325 1 is_stmt 1 view -0
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 327 1 view .LVU243
	bx	lr
.LFE204:
	.size	vPortInitialiseBlocks, .-vPortInitialiseBlocks
	.section	.bss.pxEnd,"aw",%nobits
	.align	2
	.set	.LANCHOR1,. + 0
	.type	pxEnd, %object
	.size	pxEnd, 4
pxEnd:
	.space	4
	.section	.bss.ucHeap,"aw",%nobits
	.align	2
	.type	ucHeap, %object
	.size	ucHeap, 14000
ucHeap:
	.space	14000
	.section	.bss.xBlockAllocatedBit,"aw",%nobits
	.align	2
	.set	.LANCHOR4,. + 0
	.type	xBlockAllocatedBit, %object
	.size	xBlockAllocatedBit, 4
xBlockAllocatedBit:
	.space	4
	.section	.bss.xFreeBytesRemaining,"aw",%nobits
	.align	2
	.set	.LANCHOR3,. + 0
	.type	xFreeBytesRemaining, %object
	.size	xFreeBytesRemaining, 4
xFreeBytesRemaining:
	.space	4
	.section	.bss.xMinimumEverFreeBytesRemaining,"aw",%nobits
	.align	2
	.set	.LANCHOR2,. + 0
	.type	xMinimumEverFreeBytesRemaining, %object
	.size	xMinimumEverFreeBytesRemaining, 4
xMinimumEverFreeBytesRemaining:
	.space	4
	.section	.bss.xStart,"aw",%nobits
	.align	2
	.set	.LANCHOR0,. + 0
	.type	xStart, %object
	.size	xStart, 8
xStart:
	.space	8
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
	.4byte	.LFB205
	.4byte	.LFE205-.LFB205
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.byte	0x4
	.4byte	.LCFI0-.LFB206
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
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.byte	0x4
	.4byte	.LCFI3-.LFB200
	.byte	0xe
	.uleb128 0x18
	.byte	0x83
	.uleb128 0x6
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
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.byte	0x4
	.4byte	.LCFI4-.LFB201
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
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0
	.byte	0xc3
	.byte	0xc4
	.byte	0xc5
	.byte	0xce
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.align	2
.LEFDE12:
	.text
.Letext0:
	.file 2 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdlib.h"
	.section	.debug_types,"G",%progbits,wt.70fffb109d9d23ab,comdat
	.4byte	0x5b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x70
	.byte	0xff
	.byte	0xfb
	.byte	0x10
	.byte	0x9d
	.byte	0x9d
	.byte	0x23
	.byte	0xab
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF2
	.byte	0x8
	.byte	0x1
	.byte	0x46
	.byte	0x10
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x1
	.byte	0x48
	.byte	0x17
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x1
	.byte	0x49
	.byte	0x9
	.4byte	0x4b
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x37
	.byte	0x12
	.4byte	0x57
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.byte	0
	.file 3 "../../../../../../components/softdevice/s132/headers/nrf_nvic.h"
	.file 4 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
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
	.uleb128 0x7
	.byte	0xc
	.byte	0x3
	.byte	0x6d
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x3
	.byte	0x6f
	.byte	0x15
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x3
	.byte	0x70
	.byte	0x15
	.4byte	0x46
	.byte	0x8
	.byte	0
	.uleb128 0x8
	.4byte	0x4b
	.uleb128 0x8
	.4byte	0x5b
	.uleb128 0x9
	.4byte	0x46
	.4byte	0x5b
	.uleb128 0xa
	.4byte	0x67
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x67
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.byte	0
	.file 5 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0xb
	.4byte	.LASF8
	.byte	0x8
	.byte	0x5
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0xc
	.4byte	.LASF9
	.byte	0x5
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0xc
	.4byte	.LASF10
	.byte	0x5
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF11
	.byte	0x5
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x4
	.byte	0x4
	.4byte	0x61
	.uleb128 0xe
	.4byte	0x70
	.4byte	0x70
	.uleb128 0xf
	.4byte	0x76
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x11
	.4byte	0x82
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
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
	.4byte	.LASF13
	.byte	0x14
	.byte	0x5
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x5
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x9
	.4byte	0x48
	.4byte	0x48
	.uleb128 0xa
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x55
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x11
	.4byte	0x5a
	.uleb128 0x12
	.4byte	.LASF15
	.byte	0x5
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
	.uleb128 0x7
	.byte	0xc
	.byte	0x5
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x5
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x5
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x5
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
	.uleb128 0x11
	.4byte	0x6f
	.uleb128 0x11
	.4byte	0x76
	.uleb128 0x11
	.4byte	0x86
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x12
	.4byte	.LASF19
	.byte	0x5
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
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x5
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
	.uleb128 0x7
	.byte	0x20
	.byte	0x5
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x5
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x5
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x5
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x5
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x5
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x5
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x5
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x5
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
	.uleb128 0xe
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0xf
	.4byte	0x130
	.uleb128 0xf
	.4byte	0x130
	.byte	0
	.uleb128 0xe
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0xf
	.4byte	0x130
	.byte	0
	.uleb128 0xe
	.4byte	0x130
	.4byte	0xea
	.uleb128 0xf
	.4byte	0x137
	.uleb128 0xf
	.4byte	0x130
	.byte	0
	.uleb128 0xe
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0xf
	.4byte	0x137
	.byte	0
	.uleb128 0xe
	.4byte	0x130
	.4byte	0x112
	.uleb128 0xf
	.4byte	0x13e
	.uleb128 0xf
	.4byte	0x144
	.uleb128 0xf
	.4byte	0x14b
	.byte	0
	.uleb128 0xe
	.4byte	0x130
	.4byte	0x130
	.uleb128 0xf
	.4byte	0x155
	.uleb128 0xf
	.4byte	0x15b
	.uleb128 0xf
	.4byte	0x144
	.uleb128 0xf
	.4byte	0x14b
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.uleb128 0x4
	.byte	0x4
	.4byte	0x161
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x13
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
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x11
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
	.uleb128 0x7
	.byte	0x58
	.byte	0x5
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x5
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x5
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF32
	.byte	0x5
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x5
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x5
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x5
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x5
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x5
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x5
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x5
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x5
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x5
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x5
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x5
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x5
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x5
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x5
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x5
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x5
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x5
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x5
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x5
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x5
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x5
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x5
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x5
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x5
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x5
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x5
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x5
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x5
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x5
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x11
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
	.4byte	.LASF62
	.byte	0x8
	.byte	0x5
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x5
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x5
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.byte	0
	.file 6 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 7 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 8 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdio.h"
	.file 9 "../../../../../../components/libraries/util/app_util.h"
	.file 10 "../../../../../../components/libraries/util/nrf_assert.h"
	.file 11 "../../../../../../external/freertos/source/include/task.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x670
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0xc
	.4byte	.LASF136
	.4byte	.LASF137
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x15
	.byte	0x4
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF29
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF12
	.uleb128 0x11
	.4byte	0x39
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF65
	.uleb128 0x11
	.4byte	0x4c
	.uleb128 0x12
	.4byte	.LASF20
	.byte	0x5
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
	.uleb128 0x11
	.4byte	0x58
	.uleb128 0x12
	.4byte	.LASF15
	.byte	0x5
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
	.uleb128 0x11
	.4byte	0x6d
	.uleb128 0x16
	.4byte	.LASF66
	.byte	0x5
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
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x5
	.2byte	0x10d
	.byte	0x1d
	.4byte	0x7d
	.uleb128 0x17
	.4byte	.LASF68
	.byte	0x5
	.2byte	0x110
	.byte	0x25
	.4byte	0x68
	.uleb128 0x17
	.4byte	.LASF69
	.byte	0x5
	.2byte	0x111
	.byte	0x25
	.4byte	0x68
	.uleb128 0x9
	.4byte	0x53
	.4byte	0xca
	.uleb128 0xa
	.4byte	0x45
	.byte	0x7f
	.byte	0
	.uleb128 0x11
	.4byte	0xba
	.uleb128 0x17
	.4byte	.LASF70
	.byte	0x5
	.2byte	0x113
	.byte	0x1c
	.4byte	0xca
	.uleb128 0x9
	.4byte	0x40
	.4byte	0xe7
	.uleb128 0x18
	.byte	0
	.uleb128 0x11
	.4byte	0xdc
	.uleb128 0x17
	.4byte	.LASF71
	.byte	0x5
	.2byte	0x115
	.byte	0x13
	.4byte	0xe7
	.uleb128 0x17
	.4byte	.LASF72
	.byte	0x5
	.2byte	0x116
	.byte	0x13
	.4byte	0xe7
	.uleb128 0x17
	.4byte	.LASF73
	.byte	0x5
	.2byte	0x117
	.byte	0x13
	.4byte	0xe7
	.uleb128 0x17
	.4byte	.LASF74
	.byte	0x5
	.2byte	0x118
	.byte	0x13
	.4byte	0xe7
	.uleb128 0x17
	.4byte	.LASF75
	.byte	0x5
	.2byte	0x11a
	.byte	0x13
	.4byte	0xe7
	.uleb128 0x17
	.4byte	.LASF76
	.byte	0x5
	.2byte	0x11b
	.byte	0x13
	.4byte	0xe7
	.uleb128 0x17
	.4byte	.LASF77
	.byte	0x5
	.2byte	0x11c
	.byte	0x13
	.4byte	0xe7
	.uleb128 0x17
	.4byte	.LASF78
	.byte	0x5
	.2byte	0x11d
	.byte	0x13
	.4byte	0xe7
	.uleb128 0x17
	.4byte	.LASF79
	.byte	0x5
	.2byte	0x11e
	.byte	0x13
	.4byte	0xe7
	.uleb128 0x17
	.4byte	.LASF80
	.byte	0x5
	.2byte	0x11f
	.byte	0x13
	.4byte	0xe7
	.uleb128 0xe
	.4byte	0x2b
	.4byte	0x17d
	.uleb128 0xf
	.4byte	0x17d
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x188
	.uleb128 0x19
	.4byte	.LASF98
	.uleb128 0x11
	.4byte	0x183
	.uleb128 0x17
	.4byte	.LASF81
	.byte	0x5
	.2byte	0x135
	.byte	0xe
	.4byte	0x19a
	.uleb128 0x4
	.byte	0x4
	.4byte	0x16e
	.uleb128 0xe
	.4byte	0x2b
	.4byte	0x1af
	.uleb128 0xf
	.4byte	0x1af
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x183
	.uleb128 0x17
	.4byte	.LASF82
	.byte	0x5
	.2byte	0x136
	.byte	0xe
	.4byte	0x1c2
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1a0
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF83
	.uleb128 0x1a
	.4byte	.LASF84
	.byte	0x5
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
	.uleb128 0x17
	.4byte	.LASF85
	.byte	0x5
	.2byte	0x157
	.byte	0x1f
	.4byte	0x1ed
	.uleb128 0x4
	.byte	0x4
	.4byte	0x1cf
	.uleb128 0x5
	.4byte	.LASF3
	.byte	0x2
	.byte	0x37
	.byte	0x12
	.4byte	0x45
	.uleb128 0x11
	.4byte	0x1f3
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF86
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF87
	.uleb128 0x5
	.4byte	.LASF88
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x4c
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF89
	.uleb128 0x5
	.4byte	.LASF90
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x1c8
	.uleb128 0x5
	.4byte	.LASF91
	.byte	0x4
	.byte	0x37
	.byte	0x14
	.4byte	0x2b
	.uleb128 0x8
	.4byte	0x231
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x4
	.byte	0x38
	.byte	0x16
	.4byte	0x45
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF92
	.uleb128 0x17
	.4byte	.LASF93
	.byte	0x6
	.2byte	0x744
	.byte	0x19
	.4byte	0x23d
	.uleb128 0x1b
	.4byte	.LASF94
	.byte	0x7
	.byte	0x21
	.byte	0x11
	.4byte	0x242
	.uleb128 0x12
	.4byte	.LASF95
	.byte	0x3
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
	.uleb128 0x1b
	.4byte	.LASF96
	.byte	0x3
	.byte	0x75
	.byte	0x19
	.4byte	0x26e
	.uleb128 0xd
	.4byte	.LASF97
	.byte	0x8
	.2byte	0x317
	.byte	0x1b
	.4byte	0x297
	.uleb128 0x19
	.4byte	.LASF99
	.uleb128 0x17
	.4byte	.LASF100
	.byte	0x8
	.2byte	0x31b
	.byte	0xe
	.4byte	0x2a9
	.uleb128 0x4
	.byte	0x4
	.4byte	0x28a
	.uleb128 0x17
	.4byte	.LASF101
	.byte	0x8
	.2byte	0x31c
	.byte	0xe
	.4byte	0x2a9
	.uleb128 0x17
	.4byte	.LASF102
	.byte	0x8
	.2byte	0x31d
	.byte	0xe
	.4byte	0x2a9
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF103
	.uleb128 0x1b
	.4byte	.LASF104
	.byte	0x9
	.byte	0x53
	.byte	0x11
	.4byte	0x242
	.uleb128 0x1b
	.4byte	.LASF105
	.byte	0x9
	.byte	0x54
	.byte	0x11
	.4byte	0x242
	.uleb128 0x1b
	.4byte	.LASF106
	.byte	0x9
	.byte	0x72
	.byte	0x13
	.4byte	0x2f4
	.uleb128 0x4
	.byte	0x4
	.4byte	0x242
	.uleb128 0x1b
	.4byte	.LASF107
	.byte	0x9
	.byte	0x73
	.byte	0x11
	.4byte	0x242
	.uleb128 0x4
	.byte	0x4
	.4byte	0x212
	.uleb128 0x9
	.4byte	0x212
	.4byte	0x31d
	.uleb128 0x1c
	.4byte	0x45
	.2byte	0x36af
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF109
	.byte	0x1
	.byte	0x41
	.byte	0x11
	.4byte	0x30c
	.uleb128 0x5
	.byte	0x3
	.4byte	ucHeap
	.uleb128 0x12
	.4byte	.LASF108
	.byte	0x1
	.byte	0x4a
	.byte	0x3
	.byte	0x70
	.byte	0xff
	.byte	0xfb
	.byte	0x10
	.byte	0x9d
	.byte	0x9d
	.byte	0x23
	.byte	0xab
	.uleb128 0x1e
	.4byte	.LASF110
	.byte	0x1
	.byte	0x60
	.byte	0x15
	.4byte	0x1ff
	.byte	0x8
	.uleb128 0x1d
	.4byte	.LASF111
	.byte	0x1
	.byte	0x63
	.byte	0x14
	.4byte	0x32f
	.uleb128 0x5
	.byte	0x3
	.4byte	xStart
	.uleb128 0x1d
	.4byte	.LASF112
	.byte	0x1
	.byte	0x63
	.byte	0x1d
	.4byte	0x370
	.uleb128 0x5
	.byte	0x3
	.4byte	pxEnd
	.uleb128 0x4
	.byte	0x4
	.4byte	0x32f
	.uleb128 0x1d
	.4byte	.LASF113
	.byte	0x1
	.byte	0x67
	.byte	0xf
	.4byte	0x1f3
	.uleb128 0x5
	.byte	0x3
	.4byte	xFreeBytesRemaining
	.uleb128 0x1d
	.4byte	.LASF114
	.byte	0x1
	.byte	0x68
	.byte	0xf
	.4byte	0x1f3
	.uleb128 0x5
	.byte	0x3
	.4byte	xMinimumEverFreeBytesRemaining
	.uleb128 0x1d
	.4byte	.LASF115
	.byte	0x1
	.byte	0x6e
	.byte	0xf
	.4byte	0x1f3
	.uleb128 0x5
	.byte	0x3
	.4byte	xBlockAllocatedBit
	.uleb128 0x1f
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x17a
	.byte	0xd
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x403
	.uleb128 0x20
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x17a
	.byte	0x36
	.4byte	0x370
	.4byte	.LLST4
	.4byte	.LVUS4
	.uleb128 0x21
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x17c
	.byte	0xe
	.4byte	0x370
	.4byte	.LLST5
	.4byte	.LVUS5
	.uleb128 0x22
	.ascii	"puc\000"
	.byte	0x1
	.2byte	0x17d
	.byte	0xa
	.4byte	0x306
	.4byte	.LLST6
	.4byte	.LVUS6
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x14a
	.byte	0xd
	.4byte	.LFB205
	.4byte	.LFE205-.LFB205
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x46f
	.uleb128 0x21
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x14c
	.byte	0xe
	.4byte	0x370
	.4byte	.LLST0
	.4byte	.LVUS0
	.uleb128 0x21
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x14d
	.byte	0xa
	.4byte	0x306
	.4byte	.LLST1
	.4byte	.LVUS1
	.uleb128 0x21
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x14e
	.byte	0x8
	.4byte	0x1f3
	.4byte	.LLST2
	.4byte	.LVUS2
	.uleb128 0x21
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x14f
	.byte	0x8
	.4byte	0x1f3
	.4byte	.LLST3
	.4byte	.LVUS3
	.byte	0
	.uleb128 0x23
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x144
	.byte	0x6
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x13e
	.byte	0x8
	.4byte	0x1f3
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x24
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x138
	.byte	0x8
	.4byte	0x1f3
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x25
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x108
	.byte	0x6
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x568
	.uleb128 0x26
	.ascii	"pv\000"
	.byte	0x1
	.2byte	0x108
	.byte	0x17
	.4byte	0x29
	.4byte	.LLST12
	.4byte	.LVUS12
	.uleb128 0x22
	.ascii	"puc\000"
	.byte	0x1
	.2byte	0x10a
	.byte	0xa
	.4byte	0x306
	.4byte	.LLST13
	.4byte	.LVUS13
	.uleb128 0x21
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x10b
	.byte	0xe
	.4byte	0x370
	.4byte	.LLST14
	.4byte	.LVUS14
	.uleb128 0x27
	.4byte	.LVL51
	.4byte	0x64d
	.4byte	0x523
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x118
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x27
	.4byte	.LVL54
	.4byte	0x64d
	.4byte	0x541
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x117
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL55
	.4byte	0x659
	.uleb128 0x27
	.4byte	.LVL56
	.4byte	0x3ac
	.4byte	0x55e
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x75
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL57
	.4byte	0x666
	.byte	0
	.uleb128 0x2a
	.4byte	.LASF140
	.byte	0x1
	.byte	0x72
	.byte	0x7
	.4byte	0x29
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x64d
	.uleb128 0x2b
	.4byte	.LASF127
	.byte	0x1
	.byte	0x72
	.byte	0x1c
	.4byte	0x1f3
	.4byte	.LLST7
	.4byte	.LVUS7
	.uleb128 0x2c
	.4byte	.LASF128
	.byte	0x1
	.byte	0x74
	.byte	0xe
	.4byte	0x370
	.4byte	.LLST8
	.4byte	.LVUS8
	.uleb128 0x2c
	.4byte	.LASF129
	.byte	0x1
	.byte	0x74
	.byte	0x18
	.4byte	0x370
	.4byte	.LLST9
	.4byte	.LVUS9
	.uleb128 0x2c
	.4byte	.LASF130
	.byte	0x1
	.byte	0x74
	.byte	0x2a
	.4byte	0x370
	.4byte	.LLST10
	.4byte	.LVUS10
	.uleb128 0x2c
	.4byte	.LASF131
	.byte	0x1
	.byte	0x75
	.byte	0x7
	.4byte	0x29
	.4byte	.LLST11
	.4byte	.LVUS11
	.uleb128 0x29
	.4byte	.LVL25
	.4byte	0x659
	.uleb128 0x29
	.4byte	.LVL32
	.4byte	0x403
	.uleb128 0x27
	.4byte	.LVL39
	.4byte	0x3ac
	.4byte	0x60c
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.4byte	.LVL41
	.4byte	0x666
	.uleb128 0x27
	.4byte	.LVL43
	.4byte	0x64d
	.4byte	0x632
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x2
	.byte	0x8
	.byte	0xc3
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.uleb128 0x2d
	.4byte	.LVL47
	.4byte	0x64d
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x50
	.uleb128 0x3
	.byte	0xa
	.2byte	0x103
	.uleb128 0x28
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x5
	.byte	0x3
	.4byte	.LC0
	.byte	0
	.byte	0
	.uleb128 0x2e
	.4byte	.LASF132
	.4byte	.LASF132
	.byte	0xa
	.byte	0x4b
	.byte	0x6
	.uleb128 0x2f
	.4byte	.LASF133
	.4byte	.LASF133
	.byte	0xb
	.2byte	0x4fa
	.byte	0x6
	.uleb128 0x2f
	.4byte	.LASF134
	.4byte	.LASF134
	.byte	0xb
	.2byte	0x530
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
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
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
	.uleb128 0x26
	.uleb128 0x5
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
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2f
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
.LVUS4:
	.uleb128 0
	.uleb128 .LVU79
	.uleb128 .LVU79
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 0
.LLST4:
	.4byte	.LVL13
	.4byte	.LVL20
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL20
	.4byte	.LVL21
	.2byte	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x9f
	.4byte	.LVL21
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE206
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS5:
	.uleb128 .LVU54
	.uleb128 .LVU55
	.uleb128 .LVU55
	.uleb128 .LVU57
	.uleb128 .LVU57
	.uleb128 0
.LLST5:
	.4byte	.LVL14
	.4byte	.LVL15
	.2byte	0x6
	.byte	0x3
	.4byte	xStart
	.byte	0x9f
	.4byte	.LVL15
	.4byte	.LVL16
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL16
	.4byte	.LFE206
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS6:
	.uleb128 .LVU59
	.uleb128 .LVU65
	.uleb128 .LVU65
	.uleb128 .LVU77
	.uleb128 .LVU77
	.uleb128 .LVU82
	.uleb128 .LVU82
	.uleb128 0
.LLST6:
	.4byte	.LVL17
	.4byte	.LVL18
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL18
	.4byte	.LVL19
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL19
	.4byte	.LVL22
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL22
	.4byte	.LFE206
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS0:
	.uleb128 .LVU34
	.uleb128 .LVU46
.LLST0:
	.4byte	.LVL9
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS1:
	.uleb128 .LVU17
	.uleb128 .LVU46
.LLST1:
	.4byte	.LVL5
	.4byte	.LVL11
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS2:
	.uleb128 .LVU7
	.uleb128 .LVU11
	.uleb128 .LVU11
	.uleb128 .LVU16
	.uleb128 .LVU16
	.uleb128 .LVU23
	.uleb128 .LVU23
	.uleb128 .LVU41
	.uleb128 .LVU41
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST2:
	.4byte	.LVL1
	.4byte	.LVL2
	.2byte	0x6
	.byte	0x3
	.4byte	ucHeap
	.byte	0x9f
	.4byte	.LVL2
	.4byte	.LVL5
	.2byte	0x1
	.byte	0x51
	.4byte	.LVL5
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL6
	.4byte	.LVL10
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL10
	.4byte	.LVL11
	.2byte	0x2
	.byte	0x72
	.sleb128 0
	.4byte	.LVL11
	.4byte	.LVL12
	.2byte	0x5
	.byte	0x3
	.4byte	pxEnd
	.4byte	.LVL12
	.4byte	.LFE205
	.2byte	0x6
	.byte	0x3
	.4byte	ucHeap
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS3:
	.uleb128 .LVU5
	.uleb128 .LVU15
	.uleb128 .LVU15
	.uleb128 .LVU23
	.uleb128 .LVU48
	.uleb128 0
.LLST3:
	.4byte	.LVL0
	.4byte	.LVL4
	.2byte	0x4
	.byte	0xa
	.2byte	0x36b0
	.byte	0x9f
	.4byte	.LVL4
	.4byte	.LVL6
	.2byte	0x1
	.byte	0x53
	.4byte	.LVL12
	.4byte	.LFE205
	.2byte	0x4
	.byte	0xa
	.2byte	0x36b0
	.byte	0x9f
	.4byte	0
	.4byte	0
.LVUS12:
	.uleb128 0
	.uleb128 .LVU206
	.uleb128 .LVU206
	.uleb128 .LVU221
	.uleb128 .LVU221
	.uleb128 .LVU222
	.uleb128 .LVU222
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 0
.LLST12:
	.4byte	.LVL48
	.4byte	.LVL50
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL50
	.4byte	.LVL52
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL52
	.4byte	.LVL53
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL53
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL58
	.4byte	.LFE201
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS13:
	.uleb128 .LVU194
	.uleb128 .LVU200
	.uleb128 .LVU200
	.uleb128 .LVU235
	.uleb128 .LVU235
	.uleb128 0
.LLST13:
	.4byte	.LVL48
	.4byte	.LVL49
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL49
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL58
	.4byte	.LFE201
	.2byte	0x1
	.byte	0x50
	.4byte	0
	.4byte	0
.LVUS14:
	.uleb128 .LVU201
	.uleb128 .LVU235
.LLST14:
	.4byte	.LVL49
	.4byte	.LVL58
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS7:
	.uleb128 0
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU114
	.uleb128 .LVU114
	.uleb128 .LVU115
	.uleb128 .LVU115
	.uleb128 0
.LLST7:
	.4byte	.LVL23
	.4byte	.LVL25-1
	.2byte	0x1
	.byte	0x50
	.4byte	.LVL25-1
	.4byte	.LVL27
	.2byte	0x1
	.byte	0x55
	.4byte	.LVL27
	.4byte	.LVL28
	.2byte	0x6
	.byte	0xf3
	.uleb128 0x1
	.byte	0x50
	.byte	0x23
	.uleb128 0x8
	.byte	0x9f
	.4byte	.LVL28
	.4byte	.LFE200
	.2byte	0x1
	.byte	0x55
	.4byte	0
	.4byte	0
.LVUS8:
	.uleb128 .LVU125
	.uleb128 .LVU127
	.uleb128 .LVU128
	.uleb128 .LVU175
	.uleb128 .LVU183
	.uleb128 .LVU185
	.uleb128 .LVU187
	.uleb128 .LVU188
.LLST8:
	.4byte	.LVL30
	.4byte	.LVL31
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL33
	.4byte	.LVL40
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x54
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x54
	.4byte	0
	.4byte	0
.LVUS9:
	.uleb128 .LVU123
	.uleb128 .LVU127
	.uleb128 .LVU128
	.uleb128 .LVU129
	.uleb128 .LVU130
	.uleb128 .LVU153
	.uleb128 .LVU183
	.uleb128 .LVU184
	.uleb128 .LVU187
	.uleb128 .LVU188
.LLST9:
	.4byte	.LVL29
	.4byte	.LVL31
	.2byte	0x6
	.byte	0x3
	.4byte	xStart
	.byte	0x9f
	.4byte	.LVL33
	.4byte	.LVL34
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL35
	.4byte	.LVL38
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL42
	.4byte	.LVL43-1
	.2byte	0x1
	.byte	0x52
	.4byte	.LVL45
	.4byte	.LVL46
	.2byte	0x1
	.byte	0x52
	.4byte	0
	.4byte	0
.LVUS10:
	.uleb128 .LVU150
	.uleb128 .LVU161
	.uleb128 .LVU183
	.uleb128 .LVU185
.LLST10:
	.4byte	.LVL37
	.4byte	.LVL39
	.2byte	0x1
	.byte	0x57
	.4byte	.LVL42
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x57
	.4byte	0
	.4byte	0
.LVUS11:
	.uleb128 .LVU98
	.uleb128 .LVU141
	.uleb128 .LVU141
	.uleb128 .LVU185
	.uleb128 .LVU185
	.uleb128 .LVU188
	.uleb128 .LVU188
	.uleb128 0
.LLST11:
	.4byte	.LVL24
	.4byte	.LVL36
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL36
	.4byte	.LVL44
	.2byte	0x1
	.byte	0x56
	.4byte	.LVL44
	.4byte	.LVL46
	.2byte	0x2
	.byte	0x30
	.byte	0x9f
	.4byte	.LVL46
	.4byte	.LFE200
	.2byte	0x1
	.byte	0x56
	.4byte	0
	.4byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x14f
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x674
	.4byte	0x31d
	.ascii	"ucHeap\000"
	.4byte	0x33f
	.ascii	"xHeapStructSize\000"
	.4byte	0x34c
	.ascii	"xStart\000"
	.4byte	0x35e
	.ascii	"pxEnd\000"
	.4byte	0x376
	.ascii	"xFreeBytesRemaining\000"
	.4byte	0x388
	.ascii	"xMinimumEverFreeBytesRemaining\000"
	.4byte	0x39a
	.ascii	"xBlockAllocatedBit\000"
	.4byte	0x31d
	.ascii	"ucHeap\000"
	.4byte	0x34c
	.ascii	"xStart\000"
	.4byte	0x3ac
	.ascii	"prvInsertBlockIntoFreeList\000"
	.4byte	0x403
	.ascii	"prvHeapInit\000"
	.4byte	0x46f
	.ascii	"vPortInitialiseBlocks\000"
	.4byte	0x482
	.ascii	"xPortGetMinimumEverFreeHeapSize\000"
	.4byte	0x499
	.ascii	"xPortGetFreeHeapSize\000"
	.4byte	0x4b0
	.ascii	"vPortFree\000"
	.4byte	0x568
	.ascii	"pvPortMalloc\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x1c4
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x674
	.4byte	0x2b
	.ascii	"int\000"
	.4byte	0x32
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0x39
	.ascii	"char\000"
	.4byte	0x45
	.ascii	"unsigned int\000"
	.4byte	0x4c
	.ascii	"unsigned char\000"
	.4byte	0x58
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x6d
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0x1c8
	.ascii	"short unsigned int\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x1cf
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x1f3
	.ascii	"size_t\000"
	.4byte	0x204
	.ascii	"long long int\000"
	.4byte	0x20b
	.ascii	"signed char\000"
	.4byte	0x212
	.ascii	"uint8_t\000"
	.4byte	0x21e
	.ascii	"short int\000"
	.4byte	0x225
	.ascii	"uint16_t\000"
	.4byte	0x231
	.ascii	"int32_t\000"
	.4byte	0x242
	.ascii	"uint32_t\000"
	.4byte	0x24e
	.ascii	"long long unsigned int\000"
	.4byte	0x26e
	.ascii	"nrf_nvic_state_t\000"
	.4byte	0x28a
	.ascii	"FILE\000"
	.4byte	0x2c9
	.ascii	"long unsigned int\000"
	.4byte	0xb
	.ascii	"A_BLOCK_LINK\000"
	.4byte	0x32f
	.ascii	"BlockLink_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x4c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB205
	.4byte	.LFE205-.LFB205
	.4byte	.LFB206
	.4byte	.LFE206-.LFB206
	.4byte	.LFB200
	.4byte	.LFE200-.LFB200
	.4byte	.LFB201
	.4byte	.LFE201-.LFB201
	.4byte	.LFB202
	.4byte	.LFE202-.LFB202
	.4byte	.LFB203
	.4byte	.LFE203-.LFB203
	.4byte	.LFB204
	.4byte	.LFE204-.LFB204
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB205
	.4byte	.LFE205
	.4byte	.LFB206
	.4byte	.LFE206
	.4byte	.LFB200
	.4byte	.LFE200
	.4byte	.LFB201
	.4byte	.LFE201
	.4byte	.LFB202
	.4byte	.LFE202
	.4byte	.LFB203
	.4byte	.LFE203
	.4byte	.LFB204
	.4byte	.LFE204
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
	.uleb128 0x25
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.file 12 "../../../../../../external/freertos/source/include/FreeRTOS.h"
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0xc
	.file 13 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x23
	.uleb128 0xd
	.byte	0x4
	.byte	0x3
	.uleb128 0x32
	.uleb128 0x4
	.byte	0x4
	.file 14 "../../../config/FreeRTOSConfig.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0xe
	.file 15 "../../../../../../components/softdevice/s132/headers/nrf_soc.h"
	.byte	0x3
	.uleb128 0x22
	.uleb128 0xf
	.file 16 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x33
	.uleb128 0x10
	.file 17 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x11
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x6
	.file 18 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x12
	.file 19 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x13
	.byte	0x4
	.byte	0x4
	.file 20 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x14
	.byte	0x4
	.file 21 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x15
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.file 22 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x16
	.byte	0x4
	.file 23 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x17
	.byte	0x4
	.file 24 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x18
	.byte	0x4
	.file 25 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.file 26 "../../../../../../components/softdevice/s132/headers/nrf_svc.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x1a
	.byte	0x4
	.file 27 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x1b
	.byte	0x4
	.file 28 "../../../../../../components/softdevice/s132/headers/nrf_error_soc.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x1c
	.byte	0x4
	.byte	0x4
	.file 29 "../../../../../../components/libraries/util/app_util_platform.h"
	.byte	0x3
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x19
	.byte	0x4
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x3
	.byte	0x4
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0xa
	.byte	0x4
	.file 30 "../../../../../../components/libraries/util/app_error.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x1e
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x8
	.byte	0x4
	.file 31 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x1f
	.byte	0x4
	.file 32 "../../../../../../components/libraries/util/sdk_errors.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x20
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x1b
	.byte	0x4
	.byte	0x4
	.file 33 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x21
	.byte	0x4
	.file 34 "../../../../../../components/libraries/util/app_error_weak.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x22
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0xb1
	.uleb128 0xa
	.byte	0x4
	.file 35 "../../../systemView/SEGGER_SYSVIEW_FreeRTOS.h"
	.byte	0x3
	.uleb128 0xd6
	.uleb128 0x23
	.file 36 "../../../systemView/SEGGER_SYSVIEW.h"
	.byte	0x3
	.uleb128 0x47
	.uleb128 0x24
	.file 37 "../../../systemView/SEGGER.h"
	.byte	0x3
	.uleb128 0x4a
	.uleb128 0x25
	.file 38 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.byte	0x3
	.uleb128 0x43
	.uleb128 0x26
	.byte	0x4
	.file 39 "../../../systemView/Global.h"
	.byte	0x3
	.uleb128 0x44
	.uleb128 0x27
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 40 "../../../../../../external/freertos/source/include/projdefs.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x28
	.byte	0x4
	.file 41 "../../../../../../external/freertos/source/include/portable.h"
	.byte	0x3
	.uleb128 0x3f
	.uleb128 0x29
	.file 42 "../../../../../../external/freertos/source/include/deprecated_definitions.h"
	.byte	0x3
	.uleb128 0x2e
	.uleb128 0x2a
	.byte	0x4
	.file 43 "../../../../../../external/freertos/portable/GCC/nrf52/portmacro.h"
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x2b
	.file 44 "../../../../../../external/freertos/portable/CMSIS/nrf52/portmacro_cmsis.h"
	.byte	0x3
	.uleb128 0x21
	.uleb128 0x2c
	.byte	0x3
	.uleb128 0x1f
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 45 "../../../../../../external/freertos/source/include/mpu_wrappers.h"
	.byte	0x3
	.uleb128 0x5c
	.uleb128 0x2d
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0xb
	.file 46 "../../../../../../external/freertos/source/include/list.h"
	.byte	0x3
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF34:
	.ascii	"currency_symbol\000"
.LASF136:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\external\\freertos\\so"
	.ascii	"urce\\portable\\MemMang\\heap_4.c\000"
.LASF107:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF77:
	.ascii	"__RAL_data_utf8_space\000"
.LASF61:
	.ascii	"date_time_format\000"
.LASF72:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF68:
	.ascii	"__RAL_codeset_ascii\000"
.LASF11:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF129:
	.ascii	"pxPreviousBlock\000"
.LASF42:
	.ascii	"p_cs_precedes\000"
.LASF122:
	.ascii	"xTotalHeapSize\000"
.LASF79:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF126:
	.ascii	"pxLink\000"
.LASF116:
	.ascii	"pxIterator\000"
.LASF92:
	.ascii	"long long unsigned int\000"
.LASF110:
	.ascii	"xHeapStructSize\000"
.LASF135:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -Og -fomit-frame"
	.ascii	"-pointer -fno-dwarf2-cfi-asm -fno-builtin -ffunctio"
	.ascii	"n-sections -fdata-sections -fshort-enums -fno-commo"
	.ascii	"n\000"
.LASF13:
	.ascii	"__locale_s\000"
.LASF82:
	.ascii	"__user_get_time_of_day\000"
.LASF106:
	.ascii	"_vectors\000"
.LASF93:
	.ascii	"ITM_RxBuffer\000"
.LASF59:
	.ascii	"date_format\000"
.LASF10:
	.ascii	"next\000"
.LASF33:
	.ascii	"int_curr_symbol\000"
.LASF0:
	.ascii	"pxNextFreeBlock\000"
.LASF86:
	.ascii	"long long int\000"
.LASF87:
	.ascii	"signed char\000"
.LASF128:
	.ascii	"pxBlock\000"
.LASF66:
	.ascii	"__RAL_global_locale\000"
.LASF18:
	.ascii	"codeset\000"
.LASF2:
	.ascii	"A_BLOCK_LINK\000"
.LASF25:
	.ascii	"__towupper\000"
.LASF29:
	.ascii	"long int\000"
.LASF111:
	.ascii	"xStart\000"
.LASF76:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF100:
	.ascii	"stdin\000"
.LASF121:
	.ascii	"uxAddress\000"
.LASF44:
	.ascii	"n_cs_precedes\000"
.LASF90:
	.ascii	"uint16_t\000"
.LASF21:
	.ascii	"__isctype\000"
.LASF48:
	.ascii	"int_p_cs_precedes\000"
.LASF5:
	.ascii	"__irq_masks\000"
.LASF55:
	.ascii	"abbrev_day_names\000"
.LASF64:
	.ascii	"__wchar\000"
.LASF115:
	.ascii	"xBlockAllocatedBit\000"
.LASF140:
	.ascii	"pvPortMalloc\000"
.LASF118:
	.ascii	"prvHeapInit\000"
.LASF24:
	.ascii	"__iswctype\000"
.LASF3:
	.ascii	"size_t\000"
.LASF37:
	.ascii	"mon_grouping\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF50:
	.ascii	"int_p_sep_by_space\000"
.LASF94:
	.ascii	"SystemCoreClock\000"
.LASF58:
	.ascii	"am_pm_indicator\000"
.LASF75:
	.ascii	"__RAL_data_utf8_period\000"
.LASF32:
	.ascii	"grouping\000"
.LASF103:
	.ascii	"long unsigned int\000"
.LASF26:
	.ascii	"__towlower\000"
.LASF80:
	.ascii	"__RAL_data_empty_string\000"
.LASF31:
	.ascii	"thousands_sep\000"
.LASF127:
	.ascii	"xWantedSize\000"
.LASF105:
	.ascii	"__StackLimit\000"
.LASF22:
	.ascii	"__toupper\000"
.LASF95:
	.ascii	"nrf_nvic_state_t\000"
.LASF17:
	.ascii	"data\000"
.LASF39:
	.ascii	"negative_sign\000"
.LASF83:
	.ascii	"short unsigned int\000"
.LASF16:
	.ascii	"name\000"
.LASF137:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam\\\\pca10040\\\\s132\\\\ses\000"
.LASF54:
	.ascii	"day_names\000"
.LASF6:
	.ascii	"__cr_flag\000"
.LASF139:
	.ascii	"vPortFree\000"
.LASF98:
	.ascii	"timeval\000"
.LASF101:
	.ascii	"stdout\000"
.LASF15:
	.ascii	"__RAL_locale_t\000"
.LASF60:
	.ascii	"time_format\000"
.LASF38:
	.ascii	"positive_sign\000"
.LASF46:
	.ascii	"p_sign_posn\000"
.LASF70:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF113:
	.ascii	"xFreeBytesRemaining\000"
.LASF9:
	.ascii	"decode\000"
.LASF28:
	.ascii	"__mbtowc\000"
.LASF96:
	.ascii	"nrf_nvic_state\000"
.LASF120:
	.ascii	"pucAlignedHeap\000"
.LASF109:
	.ascii	"ucHeap\000"
.LASF67:
	.ascii	"__RAL_c_locale\000"
.LASF23:
	.ascii	"__tolower\000"
.LASF81:
	.ascii	"__user_set_time_of_day\000"
.LASF49:
	.ascii	"int_n_cs_precedes\000"
.LASF69:
	.ascii	"__RAL_codeset_utf8\000"
.LASF131:
	.ascii	"pvReturn\000"
.LASF14:
	.ascii	"__category\000"
.LASF123:
	.ascii	"xPortGetMinimumEverFreeHeapSize\000"
.LASF63:
	.ascii	"__state\000"
.LASF104:
	.ascii	"__StackTop\000"
.LASF91:
	.ascii	"int32_t\000"
.LASF65:
	.ascii	"unsigned char\000"
.LASF124:
	.ascii	"xPortGetFreeHeapSize\000"
.LASF71:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF41:
	.ascii	"frac_digits\000"
.LASF89:
	.ascii	"short int\000"
.LASF117:
	.ascii	"prvInsertBlockIntoFreeList\000"
.LASF85:
	.ascii	"__RAL_error_decoder_head\000"
.LASF134:
	.ascii	"xTaskResumeAll\000"
.LASF138:
	.ascii	"vPortInitialiseBlocks\000"
.LASF97:
	.ascii	"FILE\000"
.LASF114:
	.ascii	"xMinimumEverFreeBytesRemaining\000"
.LASF36:
	.ascii	"mon_thousands_sep\000"
.LASF19:
	.ascii	"__RAL_locale_data_t\000"
.LASF47:
	.ascii	"n_sign_posn\000"
.LASF7:
	.ascii	"uint32_t\000"
.LASF1:
	.ascii	"xBlockSize\000"
.LASF52:
	.ascii	"int_p_sign_posn\000"
.LASF12:
	.ascii	"char\000"
.LASF43:
	.ascii	"p_sep_by_space\000"
.LASF132:
	.ascii	"assert_nrf_callback\000"
.LASF108:
	.ascii	"BlockLink_t\000"
.LASF20:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF112:
	.ascii	"pxEnd\000"
.LASF130:
	.ascii	"pxNewBlockLink\000"
.LASF53:
	.ascii	"int_n_sign_posn\000"
.LASF133:
	.ascii	"vTaskSuspendAll\000"
.LASF102:
	.ascii	"stderr\000"
.LASF73:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF57:
	.ascii	"abbrev_month_names\000"
.LASF8:
	.ascii	"__RAL_error_decoder_s\000"
.LASF84:
	.ascii	"__RAL_error_decoder_t\000"
.LASF62:
	.ascii	"__mbstate_s\000"
.LASF88:
	.ascii	"uint8_t\000"
.LASF125:
	.ascii	"pxBlockToInsert\000"
.LASF40:
	.ascii	"int_frac_digits\000"
.LASF56:
	.ascii	"month_names\000"
.LASF51:
	.ascii	"int_n_sep_by_space\000"
.LASF119:
	.ascii	"pxFirstFreeBlock\000"
.LASF45:
	.ascii	"n_sep_by_space\000"
.LASF99:
	.ascii	"__RAL_FILE\000"
.LASF78:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF74:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF35:
	.ascii	"mon_decimal_point\000"
.LASF27:
	.ascii	"__wctomb\000"
.LASF30:
	.ascii	"decimal_point\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
