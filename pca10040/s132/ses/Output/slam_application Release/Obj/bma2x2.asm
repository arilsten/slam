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
	.file	"bma2x2.c"
	.text
.Ltext0:
	.section	.bss.p_bma2x2,"aw",%nobits
	.align	2
	.type	p_bma2x2, %object
	.size	p_bma2x2, 4
p_bma2x2:
	.space	4
	.global	V_BMA2x2RESOLUTION_U8
	.section	.data.V_BMA2x2RESOLUTION_U8,"aw"
	.type	V_BMA2x2RESOLUTION_U8, %object
	.size	V_BMA2x2RESOLUTION_U8, 1
V_BMA2x2RESOLUTION_U8:
	.byte	2
	.section	.text.bma2x2_burst_read,"ax",%progbits
	.align	1
	.global	bma2x2_burst_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_burst_read, %function
bma2x2_burst_read:
.LFB0:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bma2x2.c"
	.loc 1 162 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI0:
	sub	sp, sp, #24
.LCFI1:
	mov	r3, r0
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strb	r3, [sp, #15]
	.loc 1 165 5
	movs	r3, #255
	strb	r3, [sp, #23]
	.loc 1 167 15
	ldr	r3, .L4
	ldr	r3, [r3]
	.loc 1 167 5
	cmp	r3, #0
	bne	.L2
	.loc 1 169 10
	mvn	r3, #126
	b	.L3
.L2:
	.loc 1 172 23
	ldr	r3, .L4
	ldr	r3, [r3]
	ldr	r4, [r3, #16]
	.loc 1 172 44
	ldr	r3, .L4
	ldr	r3, [r3]
	.loc 1 172 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	ldrb	r1, [sp, #15]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	blx	r4
.LVL0:
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 175 9
	ldrsb	r3, [sp, #23]
.L3:
	.loc 1 176 1
	mov	r0, r3
	add	sp, sp, #24
.LCFI2:
	@ sp needed
	pop	{r4, pc}
.L5:
	.align	2
.L4:
	.word	p_bma2x2
.LFE0:
	.size	bma2x2_burst_read, .-bma2x2_burst_read
	.section	.text.bma2x2_init,"ax",%progbits
	.align	1
	.global	bma2x2_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_init, %function
bma2x2_init:
.LFB1:
	.loc 1 201 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI3:
	sub	sp, sp, #16
.LCFI4:
	str	r0, [sp, #4]
	.loc 1 204 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 205 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 206 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 208 11
	ldr	r2, .L10
	ldr	r3, [sp, #4]
	str	r3, [r2]
	.loc 1 209 15
	ldr	r3, .L10
	ldr	r3, [r3]
	.loc 1 209 5
	cmp	r3, #0
	bne	.L7
	.loc 1 211 12
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L8
.L7:
	.loc 1 214 22
	ldr	r3, .L10
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 214 41
	ldr	r3, .L10
	ldr	r3, [r3]
	.loc 1 214 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #0
	blx	r4
.LVL1:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 217 11
	ldr	r3, .L10
	ldr	r3, [r3]
	.loc 1 217 21
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	strb	r2, [r3, #1]
	.loc 1 220 15
	add	r3, sp, #13
	movs	r2, #1
	mov	r1, r3
	movs	r0, #62
	bl	bma2x2_read_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 220 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 222 11
	ldr	r3, .L10
	ldr	r3, [r3]
	.loc 1 222 25
	ldrb	r2, [sp, #13]	@ zero_extendqisi2
	strb	r2, [r3, #5]
.L8:
	.loc 1 224 9
	ldrsb	r3, [sp, #15]
	.loc 1 225 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI5:
	@ sp needed
	pop	{r4, pc}
.L11:
	.align	2
.L10:
	.word	p_bma2x2
.LFE1:
	.size	bma2x2_init, .-bma2x2_init
	.section	.text.bma2x2_write_reg,"ax",%progbits
	.align	1
	.global	bma2x2_write_reg
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_write_reg, %function
bma2x2_write_reg:
.LFB2:
	.loc 1 246 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI6:
	sub	sp, sp, #16
.LCFI7:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 249 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 251 15
	ldr	r3, .L16
	ldr	r3, [r3]
	.loc 1 251 5
	cmp	r3, #0
	bne	.L13
	.loc 1 253 10
	mvn	r3, #126
	b	.L14
.L13:
	.loc 1 256 22
	ldr	r3, .L16
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 256 42
	ldr	r3, .L16
	ldr	r3, [r3]
	.loc 1 256 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	ldrb	r1, [sp, #7]	@ zero_extendqisi2
	ldr	r2, [sp]
	blx	r4
.LVL2:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 259 15
	ldr	r3, .L16
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 259 6
	cmp	r3, #0
	beq	.L15
	.loc 1 262 12
	ldr	r3, .L16
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	.loc 1 262 4
	movs	r0, #1
	blx	r3
.LVL3:
.L15:
	.loc 1 265 9
	ldrsb	r3, [sp, #15]
.L14:
	.loc 1 266 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI8:
	@ sp needed
	pop	{r4, pc}
.L17:
	.align	2
.L16:
	.word	p_bma2x2
.LFE2:
	.size	bma2x2_write_reg, .-bma2x2_write_reg
	.section	.text.bma2x2_read_reg,"ax",%progbits
	.align	1
	.global	bma2x2_read_reg
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_read_reg, %function
bma2x2_read_reg:
.LFB3:
	.loc 1 286 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI9:
	sub	sp, sp, #16
.LCFI10:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 289 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 291 15
	ldr	r3, .L21
	ldr	r3, [r3]
	.loc 1 291 5
	cmp	r3, #0
	bne	.L19
	.loc 1 293 10
	mvn	r3, #126
	b	.L20
.L19:
	.loc 1 296 23
	ldr	r3, .L21
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 296 42
	ldr	r3, .L21
	ldr	r3, [r3]
	.loc 1 296 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	ldrb	r1, [sp, #7]	@ zero_extendqisi2
	ldr	r2, [sp]
	blx	r4
.LVL4:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 299 9
	ldrsb	r3, [sp, #15]
.L20:
	.loc 1 300 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI11:
	@ sp needed
	pop	{r4, pc}
.L22:
	.align	2
.L21:
	.word	p_bma2x2
.LFE3:
	.size	bma2x2_read_reg, .-bma2x2_read_reg
	.section	.text.bma2x2_read_accel_x,"ax",%progbits
	.align	1
	.global	bma2x2_read_accel_x
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_read_accel_x, %function
bma2x2_read_accel_x:
.LFB4:
	.loc 1 322 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI12:
	sub	sp, sp, #16
.LCFI13:
	str	r0, [sp, #4]
	.loc 1 325 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 330 5
	movs	r3, #0
	strh	r3, [sp, #12]	@ movhi
	.loc 1 332 15
	ldr	r3, .L33
	ldr	r3, [r3]
	.loc 1 332 5
	cmp	r3, #0
	bne	.L24
	.loc 1 334 10
	mvn	r3, #126
	b	.L31
.L24:
	.loc 1 336 3
	ldr	r3, .L33+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L26
	cmp	r3, #2
	bgt	.L32
	cmp	r3, #0
	beq	.L28
	cmp	r3, #1
	beq	.L29
	.loc 1 380 3
	b	.L32
.L28:
	.loc 1 339 23
	ldr	r3, .L33
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 339 42
	ldr	r3, .L33
	ldr	r3, [r3]
	.loc 1 339 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #2
	movs	r1, #2
	blx	r4
.LVL5:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 344 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 343 33
	sxtb	r3, r3
	.loc 1 345 4
	lsls	r3, r3, #8
	.loc 1 343 19
	sxth	r2, r3
	.loc 1 346 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 346 18
	and	r3, r3, #240
	sxth	r3, r3
	.loc 1 343 19
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 343 17
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 348 19
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 348 17
	asrs	r3, r3, #4
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 350 3
	b	.L30
.L29:
	.loc 1 353 23
	ldr	r3, .L33
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 353 42
	ldr	r3, .L33
	ldr	r3, [r3]
	.loc 1 353 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #2
	movs	r1, #2
	blx	r4
.LVL6:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 358 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 357 33
	sxtb	r3, r3
	.loc 1 359 4
	lsls	r3, r3, #8
	.loc 1 357 19
	sxth	r2, r3
	.loc 1 360 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 360 18
	and	r3, r3, #192
	sxth	r3, r3
	.loc 1 357 19
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 357 17
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 362 19
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 362 17
	asrs	r3, r3, #6
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 364 3
	b	.L30
.L26:
	.loc 1 367 23
	ldr	r3, .L33
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 367 42
	ldr	r3, .L33
	ldr	r3, [r3]
	.loc 1 367 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #2
	movs	r1, #2
	blx	r4
.LVL7:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 372 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 371 33
	sxtb	r3, r3
	.loc 1 373 4
	lsls	r3, r3, #8
	.loc 1 371 19
	sxth	r2, r3
	.loc 1 374 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 374 18
	and	r3, r3, #252
	sxth	r3, r3
	.loc 1 371 19
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 371 17
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 376 19
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 376 17
	asrs	r3, r3, #2
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 378 3
	b	.L30
.L32:
	.loc 1 380 3
	nop
.L30:
	.loc 1 383 9
	ldrsb	r3, [sp, #15]
.L31:
	.loc 1 384 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI14:
	@ sp needed
	pop	{r4, pc}
.L34:
	.align	2
.L33:
	.word	p_bma2x2
	.word	V_BMA2x2RESOLUTION_U8
.LFE4:
	.size	bma2x2_read_accel_x, .-bma2x2_read_accel_x
	.section	.text.bma2x2_read_accel_eight_resolution_x,"ax",%progbits
	.align	1
	.global	bma2x2_read_accel_eight_resolution_x
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_read_accel_eight_resolution_x, %function
bma2x2_read_accel_eight_resolution_x:
.LFB5:
	.loc 1 403 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI15:
	sub	sp, sp, #16
.LCFI16:
	str	r0, [sp, #4]
	.loc 1 406 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 407 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 409 15
	ldr	r3, .L39
	ldr	r3, [r3]
	.loc 1 409 5
	cmp	r3, #0
	bne	.L36
	.loc 1 411 10
	mvn	r3, #126
	b	.L38
.L36:
	.loc 1 414 23
	ldr	r3, .L39
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 414 42
	ldr	r3, .L39
	ldr	r3, [r3]
	.loc 1 414 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #3
	blx	r4
.LVL8:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 418 16
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 421 9
	ldrsb	r3, [sp, #15]
.L38:
	.loc 1 422 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI17:
	@ sp needed
	pop	{r4, pc}
.L40:
	.align	2
.L39:
	.word	p_bma2x2
.LFE5:
	.size	bma2x2_read_accel_eight_resolution_x, .-bma2x2_read_accel_eight_resolution_x
	.section	.text.bma2x2_read_accel_y,"ax",%progbits
	.align	1
	.global	bma2x2_read_accel_y
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_read_accel_y, %function
bma2x2_read_accel_y:
.LFB6:
	.loc 1 443 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI18:
	sub	sp, sp, #16
.LCFI19:
	str	r0, [sp, #4]
	.loc 1 446 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 451 5
	movs	r3, #0
	strh	r3, [sp, #12]	@ movhi
	.loc 1 454 15
	ldr	r3, .L51
	ldr	r3, [r3]
	.loc 1 454 5
	cmp	r3, #0
	bne	.L42
	.loc 1 456 10
	mvn	r3, #126
	b	.L49
.L42:
	.loc 1 458 3
	ldr	r3, .L51+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L44
	cmp	r3, #2
	bgt	.L50
	cmp	r3, #0
	beq	.L46
	cmp	r3, #1
	beq	.L47
	.loc 1 502 3
	b	.L50
.L46:
	.loc 1 461 23
	ldr	r3, .L51
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 461 42
	ldr	r3, .L51
	ldr	r3, [r3]
	.loc 1 461 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #2
	movs	r1, #4
	blx	r4
.LVL9:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 466 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 465 33
	sxtb	r3, r3
	.loc 1 467 4
	lsls	r3, r3, #8
	.loc 1 465 19
	sxth	r2, r3
	.loc 1 468 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 468 18
	and	r3, r3, #240
	sxth	r3, r3
	.loc 1 465 19
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 465 17
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 470 19
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 470 17
	asrs	r3, r3, #4
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 472 3
	b	.L48
.L47:
	.loc 1 475 23
	ldr	r3, .L51
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 475 42
	ldr	r3, .L51
	ldr	r3, [r3]
	.loc 1 475 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #2
	movs	r1, #4
	blx	r4
.LVL10:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 480 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 479 33
	sxtb	r3, r3
	.loc 1 481 4
	lsls	r3, r3, #8
	.loc 1 479 19
	sxth	r2, r3
	.loc 1 482 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 482 18
	and	r3, r3, #192
	sxth	r3, r3
	.loc 1 479 19
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 479 17
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 484 19
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 484 17
	asrs	r3, r3, #6
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 486 3
	b	.L48
.L44:
	.loc 1 489 23
	ldr	r3, .L51
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 489 42
	ldr	r3, .L51
	ldr	r3, [r3]
	.loc 1 489 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #2
	movs	r1, #4
	blx	r4
.LVL11:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 494 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 493 33
	sxtb	r3, r3
	.loc 1 495 4
	lsls	r3, r3, #8
	.loc 1 493 19
	sxth	r2, r3
	.loc 1 496 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 496 18
	and	r3, r3, #252
	sxth	r3, r3
	.loc 1 493 19
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 493 17
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 498 19
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 498 17
	asrs	r3, r3, #2
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 500 3
	b	.L48
.L50:
	.loc 1 502 3
	nop
.L48:
	.loc 1 505 9
	ldrsb	r3, [sp, #15]
.L49:
	.loc 1 506 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI20:
	@ sp needed
	pop	{r4, pc}
.L52:
	.align	2
.L51:
	.word	p_bma2x2
	.word	V_BMA2x2RESOLUTION_U8
.LFE6:
	.size	bma2x2_read_accel_y, .-bma2x2_read_accel_y
	.section	.text.bma2x2_read_accel_eight_resolution_y,"ax",%progbits
	.align	1
	.global	bma2x2_read_accel_eight_resolution_y
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_read_accel_eight_resolution_y, %function
bma2x2_read_accel_eight_resolution_y:
.LFB7:
	.loc 1 526 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI21:
	sub	sp, sp, #16
.LCFI22:
	str	r0, [sp, #4]
	.loc 1 529 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 530 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 532 15
	ldr	r3, .L57
	ldr	r3, [r3]
	.loc 1 532 5
	cmp	r3, #0
	bne	.L54
	.loc 1 534 10
	mvn	r3, #126
	b	.L56
.L54:
	.loc 1 536 23
	ldr	r3, .L57
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 536 42
	ldr	r3, .L57
	ldr	r3, [r3]
	.loc 1 536 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #5
	blx	r4
.LVL12:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 540 16
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 543 9
	ldrsb	r3, [sp, #15]
.L56:
	.loc 1 544 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI23:
	@ sp needed
	pop	{r4, pc}
.L58:
	.align	2
.L57:
	.word	p_bma2x2
.LFE7:
	.size	bma2x2_read_accel_eight_resolution_y, .-bma2x2_read_accel_eight_resolution_y
	.section	.text.bma2x2_read_accel_z,"ax",%progbits
	.align	1
	.global	bma2x2_read_accel_z
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_read_accel_z, %function
bma2x2_read_accel_z:
.LFB8:
	.loc 1 565 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI24:
	sub	sp, sp, #16
.LCFI25:
	str	r0, [sp, #4]
	.loc 1 568 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 573 5
	movs	r3, #0
	strh	r3, [sp, #12]	@ movhi
	.loc 1 576 15
	ldr	r3, .L69
	ldr	r3, [r3]
	.loc 1 576 5
	cmp	r3, #0
	bne	.L60
	.loc 1 578 10
	mvn	r3, #126
	b	.L67
.L60:
	.loc 1 580 3
	ldr	r3, .L69+4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L62
	cmp	r3, #2
	bgt	.L68
	cmp	r3, #0
	beq	.L64
	cmp	r3, #1
	beq	.L65
	.loc 1 624 3
	b	.L68
.L64:
	.loc 1 583 23
	ldr	r3, .L69
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 583 42
	ldr	r3, .L69
	ldr	r3, [r3]
	.loc 1 583 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #2
	movs	r1, #6
	blx	r4
.LVL13:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 588 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 587 33
	sxtb	r3, r3
	.loc 1 589 4
	lsls	r3, r3, #8
	.loc 1 587 19
	sxth	r2, r3
	.loc 1 590 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 591 4
	and	r3, r3, #240
	sxth	r3, r3
	.loc 1 587 19
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 587 17
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 592 19
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 592 17
	asrs	r3, r3, #4
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 594 3
	b	.L66
.L65:
	.loc 1 597 23
	ldr	r3, .L69
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 597 42
	ldr	r3, .L69
	ldr	r3, [r3]
	.loc 1 597 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #2
	movs	r1, #6
	blx	r4
.LVL14:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 602 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 601 33
	sxtb	r3, r3
	.loc 1 603 4
	lsls	r3, r3, #8
	.loc 1 601 19
	sxth	r2, r3
	.loc 1 604 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 605 4
	and	r3, r3, #192
	sxth	r3, r3
	.loc 1 601 19
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 601 17
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 606 19
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 606 17
	asrs	r3, r3, #6
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 608 3
	b	.L66
.L62:
	.loc 1 611 23
	ldr	r3, .L69
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 611 42
	ldr	r3, .L69
	ldr	r3, [r3]
	.loc 1 611 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #2
	movs	r1, #6
	blx	r4
.LVL15:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 616 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 615 33
	sxtb	r3, r3
	.loc 1 617 4
	lsls	r3, r3, #8
	.loc 1 615 19
	sxth	r2, r3
	.loc 1 618 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 619 4
	and	r3, r3, #252
	sxth	r3, r3
	.loc 1 615 19
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 615 17
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 620 19
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 620 17
	asrs	r3, r3, #2
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 622 3
	b	.L66
.L68:
	.loc 1 624 3
	nop
.L66:
	.loc 1 627 9
	ldrsb	r3, [sp, #15]
.L67:
	.loc 1 628 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI26:
	@ sp needed
	pop	{r4, pc}
.L70:
	.align	2
.L69:
	.word	p_bma2x2
	.word	V_BMA2x2RESOLUTION_U8
.LFE8:
	.size	bma2x2_read_accel_z, .-bma2x2_read_accel_z
	.section	.text.bma2x2_read_accel_eight_resolution_z,"ax",%progbits
	.align	1
	.global	bma2x2_read_accel_eight_resolution_z
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_read_accel_eight_resolution_z, %function
bma2x2_read_accel_eight_resolution_z:
.LFB9:
	.loc 1 648 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI27:
	sub	sp, sp, #16
.LCFI28:
	str	r0, [sp, #4]
	.loc 1 651 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 652 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 654 15
	ldr	r3, .L75
	ldr	r3, [r3]
	.loc 1 654 5
	cmp	r3, #0
	bne	.L72
	.loc 1 656 10
	mvn	r3, #126
	b	.L74
.L72:
	.loc 1 658 23
	ldr	r3, .L75
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 658 42
	ldr	r3, .L75
	ldr	r3, [r3]
	.loc 1 658 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #7
	blx	r4
.LVL16:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 662 16
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 665 9
	ldrsb	r3, [sp, #15]
.L74:
	.loc 1 666 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI29:
	@ sp needed
	pop	{r4, pc}
.L76:
	.align	2
.L75:
	.word	p_bma2x2
.LFE9:
	.size	bma2x2_read_accel_eight_resolution_z, .-bma2x2_read_accel_eight_resolution_z
	.section .rodata
	.align	2
.LC0:
	.ascii	"\000\000\000\000\000\000"
	.section	.text.bma2x2_read_accel_xyz,"ax",%progbits
	.align	1
	.global	bma2x2_read_accel_xyz
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_read_accel_xyz, %function
bma2x2_read_accel_xyz:
.LFB10:
	.loc 1 686 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI30:
	sub	sp, sp, #16
.LCFI31:
	str	r0, [sp, #4]
	.loc 1 689 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 698 5
	ldr	r2, .L87
	add	r3, sp, #8
	ldm	r2, {r0, r1}
	str	r0, [r3]
	adds	r3, r3, #4
	strh	r1, [r3]	@ movhi
	.loc 1 703 15
	ldr	r3, .L87+4
	ldr	r3, [r3]
	.loc 1 703 5
	cmp	r3, #0
	bne	.L78
	.loc 1 705 10
	mvn	r3, #126
	b	.L85
.L78:
	.loc 1 707 3
	ldr	r3, .L87+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L80
	cmp	r3, #2
	bgt	.L86
	cmp	r3, #0
	beq	.L82
	cmp	r3, #1
	beq	.L83
	.loc 1 798 3
	b	.L86
.L82:
	.loc 1 710 23
	ldr	r3, .L87+4
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 710 42
	ldr	r3, .L87+4
	ldr	r3, [r3]
	.loc 1 710 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #8
	movs	r3, #6
	movs	r1, #2
	blx	r4
.LVL17:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 715 11
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	.loc 1 714 29
	sxtb	r3, r3
	.loc 1 716 4
	lsls	r3, r3, #8
	.loc 1 714 15
	sxth	r2, r3
	.loc 1 717 12
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 717 18
	and	r3, r3, #240
	sxth	r3, r3
	.loc 1 714 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 714 13
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 719 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 719 13
	asrs	r3, r3, #4
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 723 11
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	.loc 1 722 29
	sxtb	r3, r3
	.loc 1 724 4
	lsls	r3, r3, #8
	.loc 1 722 15
	sxth	r2, r3
	.loc 1 725 12
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 725 18
	and	r3, r3, #240
	sxth	r3, r3
	.loc 1 722 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 722 13
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 727 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3, #2]
	.loc 1 727 13
	asrs	r3, r3, #4
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 731 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 730 29
	sxtb	r3, r3
	.loc 1 732 4
	lsls	r3, r3, #8
	.loc 1 730 15
	sxth	r2, r3
	.loc 1 733 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 733 18
	and	r3, r3, #240
	sxth	r3, r3
	.loc 1 730 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 730 13
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 735 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3, #4]
	.loc 1 735 13
	asrs	r3, r3, #4
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 737 3
	b	.L84
.L83:
	.loc 1 740 23
	ldr	r3, .L87+4
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 740 42
	ldr	r3, .L87+4
	ldr	r3, [r3]
	.loc 1 740 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #8
	movs	r3, #6
	movs	r1, #2
	blx	r4
.LVL18:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 745 11
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	.loc 1 744 29
	sxtb	r3, r3
	.loc 1 746 4
	lsls	r3, r3, #8
	.loc 1 744 15
	sxth	r2, r3
	.loc 1 747 12
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 747 18
	and	r3, r3, #192
	sxth	r3, r3
	.loc 1 744 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 744 13
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 749 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 749 13
	asrs	r3, r3, #6
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 753 11
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	.loc 1 752 29
	sxtb	r3, r3
	.loc 1 754 4
	lsls	r3, r3, #8
	.loc 1 752 15
	sxth	r2, r3
	.loc 1 755 12
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 755 18
	and	r3, r3, #192
	sxth	r3, r3
	.loc 1 752 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 752 13
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 757 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3, #2]
	.loc 1 757 13
	asrs	r3, r3, #6
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 761 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 760 29
	sxtb	r3, r3
	.loc 1 762 4
	lsls	r3, r3, #8
	.loc 1 760 15
	sxth	r2, r3
	.loc 1 763 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 764 4
	and	r3, r3, #192
	sxth	r3, r3
	.loc 1 760 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 760 13
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 765 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3, #4]
	.loc 1 765 13
	asrs	r3, r3, #6
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 766 3
	b	.L84
.L80:
	.loc 1 769 23
	ldr	r3, .L87+4
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 769 42
	ldr	r3, .L87+4
	ldr	r3, [r3]
	.loc 1 769 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #8
	movs	r3, #6
	movs	r1, #2
	blx	r4
.LVL19:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 775 11
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	.loc 1 774 29
	sxtb	r3, r3
	.loc 1 775 18
	lsls	r3, r3, #8
	.loc 1 774 15
	sxth	r2, r3
	.loc 1 777 12
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 778 4
	and	r3, r3, #252
	sxth	r3, r3
	.loc 1 774 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 774 13
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 779 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 779 13
	asrs	r3, r3, #2
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 783 11
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	.loc 1 782 29
	sxtb	r3, r3
	.loc 1 783 18
	lsls	r3, r3, #8
	.loc 1 782 15
	sxth	r2, r3
	.loc 1 785 12
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 786 4
	and	r3, r3, #252
	sxth	r3, r3
	.loc 1 782 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 782 13
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 787 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3, #2]
	.loc 1 787 13
	asrs	r3, r3, #2
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 791 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 790 29
	sxtb	r3, r3
	.loc 1 791 18
	lsls	r3, r3, #8
	.loc 1 790 15
	sxth	r2, r3
	.loc 1 793 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 794 4
	and	r3, r3, #252
	sxth	r3, r3
	.loc 1 790 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 790 13
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 795 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3, #4]
	.loc 1 795 13
	asrs	r3, r3, #2
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 796 3
	b	.L84
.L86:
	.loc 1 798 3
	nop
.L84:
	.loc 1 801 9
	ldrsb	r3, [sp, #15]
.L85:
	.loc 1 802 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI32:
	@ sp needed
	pop	{r4, pc}
.L88:
	.align	2
.L87:
	.word	.LC0
	.word	p_bma2x2
	.word	V_BMA2x2RESOLUTION_U8
.LFE10:
	.size	bma2x2_read_accel_xyz, .-bma2x2_read_accel_xyz
	.section	.text.bma2x2_read_accel_eight_resolution_xyz,"ax",%progbits
	.align	1
	.global	bma2x2_read_accel_eight_resolution_xyz
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_read_accel_eight_resolution_xyz, %function
bma2x2_read_accel_eight_resolution_xyz:
.LFB11:
	.loc 1 823 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI33:
	sub	sp, sp, #16
.LCFI34:
	str	r0, [sp, #4]
	.loc 1 826 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 827 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 829 15
	ldr	r3, .L93
	ldr	r3, [r3]
	.loc 1 829 5
	cmp	r3, #0
	bne	.L90
	.loc 1 831 10
	mvn	r3, #126
	b	.L92
.L90:
	.loc 1 833 22
	ldr	r3, .L93
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 833 41
	ldr	r3, .L93
	ldr	r3, [r3]
	.loc 1 833 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #3
	blx	r4
.LVL20:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 837 12
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 840 22
	ldr	r3, .L93
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 840 41
	ldr	r3, .L93
	ldr	r3, [r3]
	.loc 1 840 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #5
	blx	r4
.LVL21:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 844 12
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3, #1]
	.loc 1 847 22
	ldr	r3, .L93
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 847 41
	ldr	r3, .L93
	ldr	r3, [r3]
	.loc 1 847 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #7
	blx	r4
.LVL22:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 851 12
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3, #2]
	.loc 1 854 9
	ldrsb	r3, [sp, #15]
.L92:
	.loc 1 855 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI35:
	@ sp needed
	pop	{r4, pc}
.L94:
	.align	2
.L93:
	.word	p_bma2x2
.LFE11:
	.size	bma2x2_read_accel_eight_resolution_xyz, .-bma2x2_read_accel_eight_resolution_xyz
	.section	.text.bma2x2_get_intr_tap_stat,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_tap_stat
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_tap_stat, %function
bma2x2_get_intr_tap_stat:
.LFB12:
	.loc 1 873 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI36:
	sub	sp, sp, #16
.LCFI37:
	str	r0, [sp, #4]
	.loc 1 876 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 878 15
	ldr	r3, .L98
	ldr	r3, [r3]
	.loc 1 878 5
	cmp	r3, #0
	bne	.L96
	.loc 1 880 10
	mvn	r3, #126
	b	.L97
.L96:
	.loc 1 883 23
	ldr	r3, .L98
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 883 42
	ldr	r3, .L98
	ldr	r3, [r3]
	.loc 1 883 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	movs	r3, #1
	ldr	r2, [sp, #4]
	movs	r1, #11
	blx	r4
.LVL23:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 887 9
	ldrsb	r3, [sp, #15]
.L97:
	.loc 1 888 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI38:
	@ sp needed
	pop	{r4, pc}
.L99:
	.align	2
.L98:
	.word	p_bma2x2
.LFE12:
	.size	bma2x2_get_intr_tap_stat, .-bma2x2_get_intr_tap_stat
	.section	.text.bma2x2_get_intr_orient_stat,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_orient_stat
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_orient_stat, %function
bma2x2_get_intr_orient_stat:
.LFB13:
	.loc 1 906 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI39:
	sub	sp, sp, #16
.LCFI40:
	str	r0, [sp, #4]
	.loc 1 909 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 911 15
	ldr	r3, .L103
	ldr	r3, [r3]
	.loc 1 911 5
	cmp	r3, #0
	bne	.L101
	.loc 1 913 10
	mvn	r3, #126
	b	.L102
.L101:
	.loc 1 916 23
	ldr	r3, .L103
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 916 42
	ldr	r3, .L103
	ldr	r3, [r3]
	.loc 1 916 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	movs	r3, #1
	ldr	r2, [sp, #4]
	movs	r1, #12
	blx	r4
.LVL24:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 920 9
	ldrsb	r3, [sp, #15]
.L102:
	.loc 1 921 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI41:
	@ sp needed
	pop	{r4, pc}
.L104:
	.align	2
.L103:
	.word	p_bma2x2
.LFE13:
	.size	bma2x2_get_intr_orient_stat, .-bma2x2_get_intr_orient_stat
	.section	.text.bma2x2_get_fifo_stat,"ax",%progbits
	.align	1
	.global	bma2x2_get_fifo_stat
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_fifo_stat, %function
bma2x2_get_fifo_stat:
.LFB14:
	.loc 1 938 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI42:
	sub	sp, sp, #16
.LCFI43:
	str	r0, [sp, #4]
	.loc 1 941 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 943 15
	ldr	r3, .L108
	ldr	r3, [r3]
	.loc 1 943 5
	cmp	r3, #0
	bne	.L106
	.loc 1 945 10
	mvn	r3, #126
	b	.L107
.L106:
	.loc 1 948 23
	ldr	r3, .L108
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 948 42
	ldr	r3, .L108
	ldr	r3, [r3]
	.loc 1 948 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	movs	r3, #1
	ldr	r2, [sp, #4]
	movs	r1, #14
	blx	r4
.LVL25:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 953 9
	ldrsb	r3, [sp, #15]
.L107:
	.loc 1 954 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI44:
	@ sp needed
	pop	{r4, pc}
.L109:
	.align	2
.L108:
	.word	p_bma2x2
.LFE14:
	.size	bma2x2_get_fifo_stat, .-bma2x2_get_fifo_stat
	.section	.text.bma2x2_get_fifo_frame_count,"ax",%progbits
	.align	1
	.global	bma2x2_get_fifo_frame_count
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_fifo_frame_count, %function
bma2x2_get_fifo_frame_count:
.LFB15:
	.loc 1 972 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI45:
	sub	sp, sp, #16
.LCFI46:
	str	r0, [sp, #4]
	.loc 1 975 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 976 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 978 15
	ldr	r3, .L114
	ldr	r3, [r3]
	.loc 1 978 5
	cmp	r3, #0
	bne	.L111
	.loc 1 980 10
	mvn	r3, #126
	b	.L113
.L111:
	.loc 1 983 23
	ldr	r3, .L114
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 983 42
	ldr	r3, .L114
	ldr	r3, [r3]
	.loc 1 983 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #14
	blx	r4
.LVL26:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 987 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	.loc 1 987 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 990 9
	ldrsb	r3, [sp, #15]
.L113:
	.loc 1 991 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI47:
	@ sp needed
	pop	{r4, pc}
.L115:
	.align	2
.L114:
	.word	p_bma2x2
.LFE15:
	.size	bma2x2_get_fifo_frame_count, .-bma2x2_get_fifo_frame_count
	.section	.text.bma2x2_get_fifo_overrun,"ax",%progbits
	.align	1
	.global	bma2x2_get_fifo_overrun
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_fifo_overrun, %function
bma2x2_get_fifo_overrun:
.LFB16:
	.loc 1 1009 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI48:
	sub	sp, sp, #16
.LCFI49:
	str	r0, [sp, #4]
	.loc 1 1012 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1013 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1015 15
	ldr	r3, .L120
	ldr	r3, [r3]
	.loc 1 1015 5
	cmp	r3, #0
	bne	.L117
	.loc 1 1017 10
	mvn	r3, #126
	b	.L119
.L117:
	.loc 1 1020 23
	ldr	r3, .L120
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1020 42
	ldr	r3, .L120
	ldr	r3, [r3]
	.loc 1 1020 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #14
	blx	r4
.LVL27:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1024 43
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 1024 21
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 1027 9
	ldrsb	r3, [sp, #15]
.L119:
	.loc 1 1028 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI50:
	@ sp needed
	pop	{r4, pc}
.L121:
	.align	2
.L120:
	.word	p_bma2x2
.LFE16:
	.size	bma2x2_get_fifo_overrun, .-bma2x2_get_fifo_overrun
	.section	.text.bma2x2_get_intr_stat,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_stat
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_stat, %function
bma2x2_get_intr_stat:
.LFB17:
	.loc 1 1047 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI51:
	sub	sp, sp, #16
.LCFI52:
	str	r0, [sp, #4]
	.loc 1 1050 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1052 15
	ldr	r3, .L125
	ldr	r3, [r3]
	.loc 1 1052 5
	cmp	r3, #0
	bne	.L123
	.loc 1 1054 10
	mvn	r3, #126
	b	.L124
.L123:
	.loc 1 1057 23
	ldr	r3, .L125
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1057 42
	ldr	r3, .L125
	ldr	r3, [r3]
	.loc 1 1057 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	movs	r3, #4
	ldr	r2, [sp, #4]
	movs	r1, #9
	blx	r4
.LVL28:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1062 9
	ldrsb	r3, [sp, #15]
.L124:
	.loc 1 1063 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI53:
	@ sp needed
	pop	{r4, pc}
.L126:
	.align	2
.L125:
	.word	p_bma2x2
.LFE17:
	.size	bma2x2_get_intr_stat, .-bma2x2_get_intr_stat
	.section	.text.bma2x2_get_range,"ax",%progbits
	.align	1
	.global	bma2x2_get_range
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_range, %function
bma2x2_get_range:
.LFB18:
	.loc 1 1086 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI54:
	sub	sp, sp, #16
.LCFI55:
	str	r0, [sp, #4]
	.loc 1 1089 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1090 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1092 15
	ldr	r3, .L131
	ldr	r3, [r3]
	.loc 1 1092 5
	cmp	r3, #0
	bne	.L128
	.loc 1 1094 10
	mvn	r3, #126
	b	.L130
.L128:
	.loc 1 1097 22
	ldr	r3, .L131
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1097 41
	ldr	r3, .L131
	ldr	r3, [r3]
	.loc 1 1097 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #15
	blx	r4
.LVL29:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1100 33
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #15
	uxtb	r3, r3
	.loc 1 1100 11
	strb	r3, [sp, #14]
	.loc 1 1101 13
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 1103 9
	ldrsb	r3, [sp, #15]
.L130:
	.loc 1 1104 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI56:
	@ sp needed
	pop	{r4, pc}
.L132:
	.align	2
.L131:
	.word	p_bma2x2
.LFE18:
	.size	bma2x2_get_range, .-bma2x2_get_range
	.section	.text.bma2x2_set_range,"ax",%progbits
	.align	1
	.global	bma2x2_set_range
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_range, %function
bma2x2_set_range:
.LFB19:
	.loc 1 1127 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI57:
	sub	sp, sp, #16
.LCFI58:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1130 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1131 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1133 15
	ldr	r3, .L148
	ldr	r3, [r3]
	.loc 1 1133 5
	cmp	r3, #0
	bne	.L134
	.loc 1 1135 10
	mvn	r3, #126
	b	.L146
.L134:
	.loc 1 1137 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L136
	.loc 1 1137 25 discriminator 1
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	beq	.L136
	.loc 1 1138 21
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L136
	.loc 1 1139 21
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #12
	bne	.L137
.L136:
	.loc 1 1141 23
	ldr	r3, .L148
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1141 42
	ldr	r3, .L148
	ldr	r3, [r3]
	.loc 1 1141 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #15
	blx	r4
.LVL30:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1145 4
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	subs	r3, r3, #3
	cmp	r3, #9
	bhi	.L147
	adr	r2, .L140
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L140:
	.word	.L143+1
	.word	.L147+1
	.word	.L142+1
	.word	.L147+1
	.word	.L147+1
	.word	.L141+1
	.word	.L147+1
	.word	.L147+1
	.word	.L147+1
	.word	.L139+1
	.p2align 1
.L143:
	.loc 1 1147 25
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #15
	sxtb	r3, r3
	.loc 1 1147 36
	orr	r3, r3, #3
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1147 13
	strb	r3, [sp, #14]
	.loc 1 1150 4
	b	.L144
.L142:
	.loc 1 1152 25
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #15
	sxtb	r3, r3
	.loc 1 1152 36
	orr	r3, r3, #5
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1152 13
	strb	r3, [sp, #14]
	.loc 1 1155 4
	b	.L144
.L141:
	.loc 1 1157 25
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #15
	sxtb	r3, r3
	.loc 1 1157 36
	orr	r3, r3, #8
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1157 13
	strb	r3, [sp, #14]
	.loc 1 1160 4
	b	.L144
.L139:
	.loc 1 1162 25
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #15
	sxtb	r3, r3
	.loc 1 1162 36
	orr	r3, r3, #12
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1162 13
	strb	r3, [sp, #14]
	.loc 1 1165 4
	b	.L144
.L147:
	.loc 1 1167 4
	nop
.L144:
	.loc 1 1170 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #15
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1170 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1171 5
	b	.L145
.L137:
	.loc 1 1173 12
	movs	r3, #254
	strb	r3, [sp, #15]
.L145:
	.loc 1 1176 9
	ldrsb	r3, [sp, #15]
.L146:
	.loc 1 1177 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI59:
	@ sp needed
	pop	{r4, pc}
.L149:
	.align	2
.L148:
	.word	p_bma2x2
.LFE19:
	.size	bma2x2_set_range, .-bma2x2_set_range
	.section	.text.bma2x2_get_bw,"ax",%progbits
	.align	1
	.global	bma2x2_get_bw
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_bw, %function
bma2x2_get_bw:
.LFB20:
	.loc 1 1204 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI60:
	sub	sp, sp, #16
.LCFI61:
	str	r0, [sp, #4]
	.loc 1 1207 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1208 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1210 15
	ldr	r3, .L154
	ldr	r3, [r3]
	.loc 1 1210 5
	cmp	r3, #0
	bne	.L151
	.loc 1 1212 10
	mvn	r3, #126
	b	.L153
.L151:
	.loc 1 1215 23
	ldr	r3, .L154
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1215 42
	ldr	r3, .L154
	ldr	r3, [r3]
	.loc 1 1215 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #16
	blx	r4
.LVL31:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1219 34
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #31
	uxtb	r3, r3
	.loc 1 1219 12
	strb	r3, [sp, #14]
	.loc 1 1220 11
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 1222 9
	ldrsb	r3, [sp, #15]
.L153:
	.loc 1 1223 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI62:
	@ sp needed
	pop	{r4, pc}
.L155:
	.align	2
.L154:
	.word	p_bma2x2
.LFE20:
	.size	bma2x2_get_bw, .-bma2x2_get_bw
	.section	.text.bma2x2_set_bw,"ax",%progbits
	.align	1
	.global	bma2x2_set_bw
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_bw, %function
bma2x2_set_bw:
.LFB21:
	.loc 1 1251 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI63:
	sub	sp, sp, #16
.LCFI64:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1254 4
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1255 4
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 1256 4
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1257 14
	ldr	r3, .L187
	ldr	r3, [r3]
	.loc 1 1257 4
	cmp	r3, #0
	bne	.L157
	.loc 1 1259 12
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L158
.L157:
	.loc 1 1262 14
	ldr	r3, .L187
	ldr	r3, [r3]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	.loc 1 1262 5
	cmp	r3, #251
	bne	.L159
	.loc 1 1263 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L160
	.loc 1 1263 23 discriminator 1
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #14
	bhi	.L160
	.loc 1 1265 4
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	subs	r3, r3, #8
	cmp	r3, #6
	bhi	.L185
	adr	r2, .L163
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L163:
	.word	.L169+1
	.word	.L168+1
	.word	.L167+1
	.word	.L166+1
	.word	.L165+1
	.word	.L164+1
	.word	.L162+1
	.p2align 1
.L169:
	.loc 1 1267 16
	movs	r3, #8
	strb	r3, [sp, #14]
	.loc 1 1270 4
	b	.L170
.L168:
	.loc 1 1272 16
	movs	r3, #9
	strb	r3, [sp, #14]
	.loc 1 1275 4
	b	.L170
.L167:
	.loc 1 1277 16
	movs	r3, #10
	strb	r3, [sp, #14]
	.loc 1 1280 4
	b	.L170
.L166:
	.loc 1 1282 16
	movs	r3, #11
	strb	r3, [sp, #14]
	.loc 1 1285 4
	b	.L170
.L165:
	.loc 1 1287 16
	movs	r3, #12
	strb	r3, [sp, #14]
	.loc 1 1290 4
	b	.L170
.L164:
	.loc 1 1292 16
	movs	r3, #13
	strb	r3, [sp, #14]
	.loc 1 1295 4
	b	.L170
.L162:
	.loc 1 1297 16
	movs	r3, #14
	strb	r3, [sp, #14]
	.loc 1 1300 4
	b	.L170
.L185:
	.loc 1 1302 4
	nop
.L170:
	.loc 1 1305 23
	ldr	r3, .L187
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1305 42
	ldr	r3, .L187
	ldr	r3, [r3]
	.loc 1 1305 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #16
	blx	r4
.LVL32:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1309 24
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #31
	sxtb	r2, r3
	.loc 1 1309 55
	ldrsb	r3, [sp, #14]
	and	r3, r3, #31
	sxtb	r3, r3
	.loc 1 1309 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1309 12
	strb	r3, [sp, #13]
	.loc 1 1311 16
	add	r3, sp, #13
	movs	r2, #1
	mov	r1, r3
	movs	r0, #16
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1311 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1313 4
	b	.L158
.L160:
	.loc 1 1315 13
	movs	r3, #254
	strb	r3, [sp, #15]
	b	.L158
.L159:
	.loc 1 1318 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L172
	.loc 1 1318 23 discriminator 1
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L172
	.loc 1 1320 4
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	subs	r3, r3, #8
	cmp	r3, #7
	bhi	.L186
	adr	r2, .L175
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L175:
	.word	.L182+1
	.word	.L181+1
	.word	.L180+1
	.word	.L179+1
	.word	.L178+1
	.word	.L177+1
	.word	.L176+1
	.word	.L174+1
	.p2align 1
.L182:
	.loc 1 1322 16
	movs	r3, #8
	strb	r3, [sp, #14]
	.loc 1 1325 4
	b	.L183
.L181:
	.loc 1 1327 16
	movs	r3, #9
	strb	r3, [sp, #14]
	.loc 1 1330 4
	b	.L183
.L180:
	.loc 1 1332 16
	movs	r3, #10
	strb	r3, [sp, #14]
	.loc 1 1335 4
	b	.L183
.L179:
	.loc 1 1337 16
	movs	r3, #11
	strb	r3, [sp, #14]
	.loc 1 1340 4
	b	.L183
.L178:
	.loc 1 1342 16
	movs	r3, #12
	strb	r3, [sp, #14]
	.loc 1 1345 4
	b	.L183
.L177:
	.loc 1 1347 16
	movs	r3, #13
	strb	r3, [sp, #14]
	.loc 1 1350 4
	b	.L183
.L176:
	.loc 1 1352 16
	movs	r3, #14
	strb	r3, [sp, #14]
	.loc 1 1355 4
	b	.L183
.L174:
	.loc 1 1357 16
	movs	r3, #15
	strb	r3, [sp, #14]
	.loc 1 1360 4
	b	.L183
.L186:
	.loc 1 1362 4
	nop
.L183:
	.loc 1 1365 23
	ldr	r3, .L187
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1365 42
	ldr	r3, .L187
	ldr	r3, [r3]
	.loc 1 1365 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #16
	blx	r4
.LVL33:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1369 24
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #31
	sxtb	r2, r3
	.loc 1 1369 55
	ldrsb	r3, [sp, #14]
	and	r3, r3, #31
	sxtb	r3, r3
	.loc 1 1369 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1369 12
	strb	r3, [sp, #13]
	.loc 1 1371 16
	add	r3, sp, #13
	movs	r2, #1
	mov	r1, r3
	movs	r0, #16
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1371 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1373 4
	b	.L158
.L172:
	.loc 1 1375 13
	movs	r3, #254
	strb	r3, [sp, #15]
.L158:
	.loc 1 1379 9
	ldrsb	r3, [sp, #15]
	.loc 1 1380 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI65:
	@ sp needed
	pop	{r4, pc}
.L188:
	.align	2
.L187:
	.word	p_bma2x2
.LFE21:
	.size	bma2x2_set_bw, .-bma2x2_set_bw
	.section	.text.bma2x2_get_power_mode,"ax",%progbits
	.align	1
	.global	bma2x2_get_power_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_power_mode, %function
bma2x2_get_power_mode:
.LFB22:
	.loc 1 1408 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI66:
	sub	sp, sp, #16
.LCFI67:
	str	r0, [sp, #4]
	.loc 1 1411 4
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1412 4
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1413 4
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 1414 14
	ldr	r3, .L200
	ldr	r3, [r3]
	.loc 1 1414 4
	cmp	r3, #0
	bne	.L190
	.loc 1 1416 12
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L191
.L190:
	.loc 1 1418 22
	ldr	r3, .L200
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1418 41
	ldr	r3, .L200
	ldr	r3, [r3]
	.loc 1 1418 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL34:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1421 23
	ldr	r3, .L200
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1421 42
	ldr	r3, .L200
	ldr	r3, [r3]
	.loc 1 1421 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL35:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1421 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1426 11
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #5
	uxtb	r3, r3
	.loc 1 1425 11
	strb	r3, [sp, #14]
	.loc 1 1429 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	asrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r3, r3
	.loc 1 1428 12
	strb	r3, [sp, #13]
	.loc 1 1432 15
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	.loc 1 1432 5
	cmp	r3, #0
	bne	.L192
	.loc 1 1434 12
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 1433 10
	cmp	r3, #0
	bne	.L192
	.loc 1 1436 18
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3]
	b	.L191
.L192:
	.loc 1 1438 16
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	.loc 1 1438 6
	cmp	r3, #2
	bne	.L193
	.loc 1 1440 13
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 1439 11
	cmp	r3, #0
	bne	.L193
	.loc 1 1442 19
	ldr	r3, [sp, #4]
	movs	r2, #1
	strb	r2, [r3]
	b	.L191
.L193:
	.loc 1 1445 17
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	.loc 1 1445 7
	cmp	r3, #4
	beq	.L194
	.loc 1 1447 15
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	.loc 1 1447 4
	cmp	r3, #6
	bne	.L195
.L194:
	.loc 1 1449 14
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 1448 12
	cmp	r3, #0
	bne	.L195
	.loc 1 1451 20
	ldr	r3, [sp, #4]
	movs	r2, #2
	strb	r2, [r3]
	b	.L191
.L195:
	.loc 1 1454 19
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	.loc 1 1454 8
	cmp	r3, #0
	beq	.L196
	.loc 1 1457 21
	ldr	r3, [sp, #4]
	movs	r2, #3
	strb	r2, [r3]
	b	.L191
.L196:
	.loc 1 1460 19
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	.loc 1 1460 9
	cmp	r3, #2
	bne	.L197
	.loc 1 1462 19
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 1462 6
	cmp	r3, #1
	bne	.L197
	.loc 1 1464 22
	ldr	r3, [sp, #4]
	movs	r2, #4
	strb	r2, [r3]
	b	.L191
.L197:
	.loc 1 1467 19
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	.loc 1 1467 9
	cmp	r3, #4
	bne	.L198
	.loc 1 1469 16
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 1468 14
	cmp	r3, #1
	bne	.L198
	.loc 1 1471 22
	ldr	r3, [sp, #4]
	movs	r2, #5
	strb	r2, [r3]
	b	.L191
.L198:
	.loc 1 1474 22
	ldr	r3, [sp, #4]
	movs	r2, #3
	strb	r2, [r3]
.L191:
	.loc 1 1482 10
	ldr	r3, .L200
	ldr	r3, [r3]
	.loc 1 1482 28
	ldr	r2, [sp, #4]
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 1482 26
	strb	r2, [r3]
	.loc 1 1483 8
	ldrsb	r3, [sp, #15]
	.loc 1 1484 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI68:
	@ sp needed
	pop	{r4, pc}
.L201:
	.align	2
.L200:
	.word	p_bma2x2
.LFE22:
	.size	bma2x2_get_power_mode, .-bma2x2_get_power_mode
	.section	.text.bma2x2_set_power_mode,"ax",%progbits
	.align	1
	.global	bma2x2_set_power_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_power_mode, %function
bma2x2_set_power_mode:
.LFB23:
	.loc 1 1511 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI69:
	sub	sp, sp, #16
.LCFI70:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1514 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1515 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1516 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 1517 5
	movs	r3, #0
	strb	r3, [sp, #12]
	.loc 1 1518 5
	movs	r3, #0
	strb	r3, [sp, #11]
	.loc 1 1519 5
	movs	r3, #0
	strb	r3, [sp, #10]
	.loc 1 1521 15
	ldr	r3, .L208
	ldr	r3, [r3]
	.loc 1 1521 5
	cmp	r3, #0
	bne	.L203
	.loc 1 1523 12
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L204
.L203:
	.loc 1 1525 22
	ldr	r3, .L208
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1525 41
	ldr	r3, .L208
	ldr	r3, [r3]
	.loc 1 1525 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL36:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1527 23
	ldr	r3, .L208
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1527 42
	ldr	r3, .L208
	ldr	r3, [r3]
	.loc 1 1527 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #11
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL37:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1527 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1531 34
	ldr	r3, .L208
	ldr	r3, [r3]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 1 1531 24
	strb	r3, [sp, #10]
	.loc 1 1532 24
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	orr	r3, r3, #12
	uxtb	r3, r3
	strb	r3, [sp, #10]
	.loc 1 1534 15
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	mov	r0, r3
	bl	bma2x2_set_mode_value
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1534 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1535 33
	ldr	r3, .L208
	ldr	r3, [r3]
	.loc 1 1535 23
	ldrb	r3, [r3, #2]
	strb	r3, [sp, #14]
	.loc 1 1536 31
	ldr	r3, .L208
	ldr	r3, [r3]
	.loc 1 1536 21
	ldrb	r3, [r3, #3]
	strb	r3, [sp, #13]
	.loc 1 1539 25
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #64
	sxtb	r2, r3
	.loc 1 1539 57
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 1539 63
	sxtb	r3, r3
	and	r3, r3, #64
	sxtb	r3, r3
	.loc 1 1539 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1539 12
	strb	r3, [sp, #11]
	.loc 1 1541 15
	add	r3, sp, #11
	movs	r2, #1
	mov	r1, r3
	movs	r0, #18
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1541 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1546 11
	ldr	r3, .L208
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	.loc 1 1546 3
	movs	r0, #1
	blx	r3
.LVL38:
	.loc 1 1548 17
	ldr	r3, .L208
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1548 6
	cmp	r3, #1
	beq	.L205
	.loc 1 1549 13 discriminator 1
	ldr	r3, .L208
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1548 41 discriminator 1
	cmp	r3, #4
	bne	.L206
.L205:
	.loc 1 1549 38
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L206
	.loc 1 1552 25
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #31
	sxtb	r3, r3
	.loc 1 1552 36
	orn	r3, r3, #127
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1552 13
	strb	r3, [sp, #12]
	.loc 1 1555 17
	add	r3, sp, #12
	movs	r2, #1
	mov	r1, r3
	movs	r0, #17
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1555 14
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1559 17
	add	r3, sp, #10
	movs	r2, #1
	mov	r1, r3
	movs	r0, #62
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1559 14
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
.L206:
	.loc 1 1564 23
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #31
	sxtb	r2, r3
	.loc 1 1564 57
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsls	r3, r3, #5
	.loc 1 1564 34
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1564 11
	strb	r3, [sp, #12]
	.loc 1 1566 15
	add	r3, sp, #12
	movs	r2, #1
	mov	r1, r3
	movs	r0, #17
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1566 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1569 11
	ldr	r3, .L208
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	.loc 1 1569 3
	movs	r0, #1
	blx	r3
.LVL39:
	.loc 1 1571 15
	add	r3, sp, #10
	movs	r2, #1
	mov	r1, r3
	movs	r0, #62
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1571 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1575 11
	ldr	r3, .L208
	ldr	r3, [r3]
	.loc 1 1575 27
	ldrb	r2, [sp, #7]
	strb	r2, [r3]
.L204:
	.loc 1 1577 9
	ldrsb	r3, [sp, #15]
	.loc 1 1578 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI71:
	@ sp needed
	pop	{r4, pc}
.L209:
	.align	2
.L208:
	.word	p_bma2x2
.LFE23:
	.size	bma2x2_set_power_mode, .-bma2x2_set_power_mode
	.section	.text.bma2x2_set_mode_value,"ax",%progbits
	.align	1
	.global	bma2x2_set_mode_value
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_mode_value, %function
bma2x2_set_mode_value:
.LFB24:
	.loc 1 1605 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI72:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1606 5
	movs	r3, #0
	strb	r3, [sp, #15]
	.loc 1 1608 15
	ldr	r3, .L223
	ldr	r3, [r3]
	.loc 1 1608 5
	cmp	r3, #0
	bne	.L211
	.loc 1 1610 12
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L212
.L211:
	.loc 1 1612 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bhi	.L213
	.loc 1 1613 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bhi	.L212
	adr	r2, .L216
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L216:
	.word	.L221+1
	.word	.L220+1
	.word	.L219+1
	.word	.L218+1
	.word	.L217+1
	.word	.L215+1
	.p2align 1
.L221:
	.loc 1 1615 12
	ldr	r3, .L223
	ldr	r3, [r3]
	.loc 1 1615 28
	movs	r2, #0
	strb	r2, [r3, #2]
	.loc 1 1617 12
	ldr	r3, .L223
	ldr	r3, [r3]
	.loc 1 1617 27
	movs	r2, #0
	strb	r2, [r3, #3]
	.loc 1 1619 3
	b	.L212
.L220:
	.loc 1 1621 12
	ldr	r3, .L223
	ldr	r3, [r3]
	.loc 1 1621 28
	movs	r2, #2
	strb	r2, [r3, #2]
	.loc 1 1623 12
	ldr	r3, .L223
	ldr	r3, [r3]
	.loc 1 1623 27
	movs	r2, #0
	strb	r2, [r3, #3]
	.loc 1 1625 3
	b	.L212
.L217:
	.loc 1 1627 12
	ldr	r3, .L223
	ldr	r3, [r3]
	.loc 1 1627 28
	movs	r2, #2
	strb	r2, [r3, #2]
	.loc 1 1629 12
	ldr	r3, .L223
	ldr	r3, [r3]
	.loc 1 1629 27
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 1 1631 3
	b	.L212
.L219:
	.loc 1 1633 12
	ldr	r3, .L223
	ldr	r3, [r3]
	.loc 1 1633 28
	movs	r2, #4
	strb	r2, [r3, #2]
	.loc 1 1635 12
	ldr	r3, .L223
	ldr	r3, [r3]
	.loc 1 1635 27
	movs	r2, #0
	strb	r2, [r3, #3]
	.loc 1 1637 3
	b	.L212
.L215:
	.loc 1 1639 12
	ldr	r3, .L223
	ldr	r3, [r3]
	.loc 1 1639 28
	movs	r2, #4
	strb	r2, [r3, #2]
	.loc 1 1641 12
	ldr	r3, .L223
	ldr	r3, [r3]
	.loc 1 1641 27
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 1 1643 3
	b	.L212
.L218:
	.loc 1 1645 12
	ldr	r3, .L223
	ldr	r3, [r3]
	.loc 1 1645 28
	movs	r2, #1
	strb	r2, [r3, #2]
	.loc 1 1647 3
	b	.L212
.L213:
	.loc 1 1650 13
	movs	r3, #254
	strb	r3, [sp, #15]
.L212:
	.loc 1 1653 9
	ldrsb	r3, [sp, #15]
	.loc 1 1654 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI73:
	@ sp needed
	bx	lr
.L224:
	.align	2
.L223:
	.word	p_bma2x2
.LFE24:
	.size	bma2x2_set_mode_value, .-bma2x2_set_mode_value
	.section	.text.bma2x2_get_sleep_durn,"ax",%progbits
	.align	1
	.global	bma2x2_get_sleep_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_sleep_durn, %function
bma2x2_get_sleep_durn:
.LFB25:
	.loc 1 1685 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI74:
	sub	sp, sp, #16
.LCFI75:
	str	r0, [sp, #4]
	.loc 1 1686 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1689 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1691 15
	ldr	r3, .L229
	ldr	r3, [r3]
	.loc 1 1691 5
	cmp	r3, #0
	bne	.L226
	.loc 1 1693 10
	mvn	r3, #126
	b	.L228
.L226:
	.loc 1 1696 23
	ldr	r3, .L229
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1696 42
	ldr	r3, .L229
	ldr	r3, [r3]
	.loc 1 1696 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL40:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1699 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #15
	uxtb	r2, r3
	.loc 1 1699 19
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 1702 9
	ldrsb	r3, [sp, #15]
.L228:
	.loc 1 1703 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI76:
	@ sp needed
	pop	{r4, pc}
.L230:
	.align	2
.L229:
	.word	p_bma2x2
.LFE25:
	.size	bma2x2_get_sleep_durn, .-bma2x2_get_sleep_durn
	.section	.text.bma2x2_set_sleep_durn,"ax",%progbits
	.align	1
	.global	bma2x2_set_sleep_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_sleep_durn, %function
bma2x2_set_sleep_durn:
.LFB26:
	.loc 1 1736 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI77:
	sub	sp, sp, #16
.LCFI78:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1737 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 1740 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1741 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1743 15
	ldr	r3, .L252
	ldr	r3, [r3]
	.loc 1 1743 5
	cmp	r3, #0
	bne	.L232
	.loc 1 1745 10
	mvn	r3, #126
	b	.L250
.L232:
	.loc 1 1747 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #4
	bls	.L234
	.loc 1 1747 31 discriminator 1
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L234
	.loc 1 1749 4
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	subs	r3, r3, #5
	cmp	r3, #10
	bhi	.L251
	adr	r2, .L237
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L237:
	.word	.L247+1
	.word	.L246+1
	.word	.L245+1
	.word	.L244+1
	.word	.L243+1
	.word	.L242+1
	.word	.L241+1
	.word	.L240+1
	.word	.L239+1
	.word	.L238+1
	.word	.L236+1
	.p2align 1
.L247:
	.loc 1 1751 24
	movs	r3, #5
	strb	r3, [sp, #14]
	.loc 1 1754 4
	b	.L248
.L246:
	.loc 1 1756 24
	movs	r3, #6
	strb	r3, [sp, #14]
	.loc 1 1759 4
	b	.L248
.L245:
	.loc 1 1761 24
	movs	r3, #7
	strb	r3, [sp, #14]
	.loc 1 1764 4
	b	.L248
.L244:
	.loc 1 1766 24
	movs	r3, #8
	strb	r3, [sp, #14]
	.loc 1 1769 4
	b	.L248
.L243:
	.loc 1 1771 24
	movs	r3, #9
	strb	r3, [sp, #14]
	.loc 1 1774 4
	b	.L248
.L242:
	.loc 1 1776 24
	movs	r3, #10
	strb	r3, [sp, #14]
	.loc 1 1779 4
	b	.L248
.L241:
	.loc 1 1781 24
	movs	r3, #11
	strb	r3, [sp, #14]
	.loc 1 1784 4
	b	.L248
.L240:
	.loc 1 1786 24
	movs	r3, #12
	strb	r3, [sp, #14]
	.loc 1 1789 4
	b	.L248
.L239:
	.loc 1 1791 24
	movs	r3, #13
	strb	r3, [sp, #14]
	.loc 1 1794 4
	b	.L248
.L238:
	.loc 1 1796 24
	movs	r3, #14
	strb	r3, [sp, #14]
	.loc 1 1799 4
	b	.L248
.L236:
	.loc 1 1801 24
	movs	r3, #15
	strb	r3, [sp, #14]
	.loc 1 1804 4
	b	.L248
.L251:
	.loc 1 1806 4
	nop
.L248:
	.loc 1 1809 23
	ldr	r3, .L252
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1809 42
	ldr	r3, .L252
	ldr	r3, [r3]
	.loc 1 1809 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL41:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1812 24
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #30
	sxtb	r2, r3
	.loc 1 1812 57
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 1812 63
	sxtb	r3, r3
	and	r3, r3, #30
	sxtb	r3, r3
	.loc 1 1812 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1812 12
	strb	r3, [sp, #13]
	.loc 1 1814 16
	add	r3, sp, #13
	movs	r2, #1
	mov	r1, r3
	movs	r0, #17
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1814 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1815 4
	b	.L249
.L234:
	.loc 1 1817 12
	movs	r3, #254
	strb	r3, [sp, #15]
.L249:
	.loc 1 1820 9
	ldrsb	r3, [sp, #15]
.L250:
	.loc 1 1821 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI79:
	@ sp needed
	pop	{r4, pc}
.L253:
	.align	2
.L252:
	.word	p_bma2x2
.LFE26:
	.size	bma2x2_set_sleep_durn, .-bma2x2_set_sleep_durn
	.section	.text.bma2x2_get_sleep_timer_mode,"ax",%progbits
	.align	1
	.global	bma2x2_get_sleep_timer_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_sleep_timer_mode, %function
bma2x2_get_sleep_timer_mode:
.LFB27:
	.loc 1 1844 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI80:
	sub	sp, sp, #16
.LCFI81:
	str	r0, [sp, #4]
	.loc 1 1845 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1848 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1850 15
	ldr	r3, .L258
	ldr	r3, [r3]
	.loc 1 1850 5
	cmp	r3, #0
	bne	.L255
	.loc 1 1852 10
	mvn	r3, #126
	b	.L257
.L255:
	.loc 1 1855 23
	ldr	r3, .L258
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1855 42
	ldr	r3, .L258
	ldr	r3, [r3]
	.loc 1 1855 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL42:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1858 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1858 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 1861 9
	ldrsb	r3, [sp, #15]
.L257:
	.loc 1 1862 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI82:
	@ sp needed
	pop	{r4, pc}
.L259:
	.align	2
.L258:
	.word	p_bma2x2
.LFE27:
	.size	bma2x2_get_sleep_timer_mode, .-bma2x2_get_sleep_timer_mode
	.section	.text.bma2x2_set_sleep_timer_mode,"ax",%progbits
	.align	1
	.global	bma2x2_set_sleep_timer_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_sleep_timer_mode, %function
bma2x2_set_sleep_timer_mode:
.LFB28:
	.loc 1 1884 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI83:
	sub	sp, sp, #16
.LCFI84:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1885 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1888 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1890 15
	ldr	r3, .L266
	ldr	r3, [r3]
	.loc 1 1890 5
	cmp	r3, #0
	bne	.L261
	.loc 1 1892 10
	mvn	r3, #126
	b	.L265
.L261:
	.loc 1 1894 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L263
	.loc 1 1896 23
	ldr	r3, .L266
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1896 42
	ldr	r3, .L266
	ldr	r3, [r3]
	.loc 1 1896 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL43:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1899 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #32
	sxtb	r2, r3
	.loc 1 1899 53
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #5
	.loc 1 1899 59
	sxtb	r3, r3
	and	r3, r3, #32
	sxtb	r3, r3
	.loc 1 1899 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1899 12
	strb	r3, [sp, #14]
	.loc 1 1901 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #18
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1901 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L264
.L263:
	.loc 1 1904 12
	movs	r3, #254
	strb	r3, [sp, #15]
.L264:
	.loc 1 1907 9
	ldrsb	r3, [sp, #15]
.L265:
	.loc 1 1908 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI85:
	@ sp needed
	pop	{r4, pc}
.L267:
	.align	2
.L266:
	.word	p_bma2x2
.LFE28:
	.size	bma2x2_set_sleep_timer_mode, .-bma2x2_set_sleep_timer_mode
	.section	.text.bma2x2_get_high_bw,"ax",%progbits
	.align	1
	.global	bma2x2_get_high_bw
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_high_bw, %function
bma2x2_get_high_bw:
.LFB29:
	.loc 1 1927 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI86:
	sub	sp, sp, #16
.LCFI87:
	str	r0, [sp, #4]
	.loc 1 1930 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1931 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1933 15
	ldr	r3, .L272
	ldr	r3, [r3]
	.loc 1 1933 5
	cmp	r3, #0
	bne	.L269
	.loc 1 1934 10
	mvn	r3, #126
	b	.L271
.L269:
	.loc 1 1937 23
	ldr	r3, .L272
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1937 42
	ldr	r3, .L272
	ldr	r3, [r3]
	.loc 1 1937 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #19
	blx	r4
.LVL44:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1940 38
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 1940 16
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 1943 9
	ldrsb	r3, [sp, #15]
.L271:
	.loc 1 1944 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI88:
	@ sp needed
	pop	{r4, pc}
.L273:
	.align	2
.L272:
	.word	p_bma2x2
.LFE29:
	.size	bma2x2_get_high_bw, .-bma2x2_get_high_bw
	.section	.text.bma2x2_set_high_bw,"ax",%progbits
	.align	1
	.global	bma2x2_set_high_bw
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_high_bw, %function
bma2x2_set_high_bw:
.LFB30:
	.loc 1 1963 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI89:
	sub	sp, sp, #16
.LCFI90:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1966 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1967 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1969 15
	ldr	r3, .L278
	ldr	r3, [r3]
	.loc 1 1969 5
	cmp	r3, #0
	bne	.L275
	.loc 1 1970 10
	mvn	r3, #126
	b	.L277
.L275:
	.loc 1 1973 23
	ldr	r3, .L278
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1973 42
	ldr	r3, .L278
	ldr	r3, [r3]
	.loc 1 1973 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #19
	blx	r4
.LVL45:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1976 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 1976 49
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 1976 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1976 12
	strb	r3, [sp, #14]
	.loc 1 1978 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #19
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1978 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1982 9
	ldrsb	r3, [sp, #15]
.L277:
	.loc 1 1983 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI91:
	@ sp needed
	pop	{r4, pc}
.L279:
	.align	2
.L278:
	.word	p_bma2x2
.LFE30:
	.size	bma2x2_set_high_bw, .-bma2x2_set_high_bw
	.section	.text.bma2x2_get_shadow_dis,"ax",%progbits
	.align	1
	.global	bma2x2_get_shadow_dis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_shadow_dis, %function
bma2x2_get_shadow_dis:
.LFB31:
	.loc 1 2003 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI92:
	sub	sp, sp, #16
.LCFI93:
	str	r0, [sp, #4]
	.loc 1 2006 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2007 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2009 15
	ldr	r3, .L284
	ldr	r3, [r3]
	.loc 1 2009 5
	cmp	r3, #0
	bne	.L281
	.loc 1 2010 10
	mvn	r3, #126
	b	.L283
.L281:
	.loc 1 2013 23
	ldr	r3, .L284
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2013 42
	ldr	r3, .L284
	ldr	r3, [r3]
	.loc 1 2013 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #19
	blx	r4
.LVL46:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2017 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2017 19
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 2020 9
	ldrsb	r3, [sp, #15]
.L283:
	.loc 1 2021 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI94:
	@ sp needed
	pop	{r4, pc}
.L285:
	.align	2
.L284:
	.word	p_bma2x2
.LFE31:
	.size	bma2x2_get_shadow_dis, .-bma2x2_get_shadow_dis
	.section	.text.bma2x2_set_shadow_dis,"ax",%progbits
	.align	1
	.global	bma2x2_set_shadow_dis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_shadow_dis, %function
bma2x2_set_shadow_dis:
.LFB32:
	.loc 1 2041 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI95:
	sub	sp, sp, #16
.LCFI96:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 2044 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2045 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2047 15
	ldr	r3, .L290
	ldr	r3, [r3]
	.loc 1 2047 5
	cmp	r3, #0
	bne	.L287
	.loc 1 2048 10
	mvn	r3, #126
	b	.L289
.L287:
	.loc 1 2051 23
	ldr	r3, .L290
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2051 42
	ldr	r3, .L290
	ldr	r3, [r3]
	.loc 1 2051 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #19
	blx	r4
.LVL47:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2054 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #64
	sxtb	r2, r3
	.loc 1 2054 52
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 2054 58
	sxtb	r3, r3
	and	r3, r3, #64
	sxtb	r3, r3
	.loc 1 2054 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2054 12
	strb	r3, [sp, #14]
	.loc 1 2056 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #19
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2056 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2059 9
	ldrsb	r3, [sp, #15]
.L289:
	.loc 1 2060 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI97:
	@ sp needed
	pop	{r4, pc}
.L291:
	.align	2
.L290:
	.word	p_bma2x2
.LFE32:
	.size	bma2x2_set_shadow_dis, .-bma2x2_set_shadow_dis
	.section	.text.bma2x2_soft_rst,"ax",%progbits
	.align	1
	.global	bma2x2_soft_rst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_soft_rst, %function
bma2x2_soft_rst:
.LFB33:
	.loc 1 2077 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI98:
	sub	sp, sp, #12
.LCFI99:
	.loc 1 2080 5
	movs	r3, #255
	strb	r3, [sp, #7]
	.loc 1 2081 5
	movs	r3, #182
	strb	r3, [sp, #6]
	.loc 1 2083 15
	ldr	r3, .L296
	ldr	r3, [r3]
	.loc 1 2083 5
	cmp	r3, #0
	bne	.L293
	.loc 1 2085 10
	mvn	r3, #126
	b	.L295
.L293:
	.loc 1 2089 15
	add	r3, sp, #6
	movs	r2, #1
	mov	r1, r3
	movs	r0, #20
	bl	bma2x2_write_reg
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 2092 9
	ldrsb	r3, [sp, #7]
.L295:
	.loc 1 2093 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI100:
	@ sp needed
	ldr	pc, [sp], #4
.L297:
	.align	2
.L296:
	.word	p_bma2x2
.LFE33:
	.size	bma2x2_soft_rst, .-bma2x2_soft_rst
	.section	.text.bma2x2_update_image,"ax",%progbits
	.align	1
	.global	bma2x2_update_image
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_update_image, %function
bma2x2_update_image:
.LFB34:
	.loc 1 2111 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI101:
	sub	sp, sp, #8
.LCFI102:
	.loc 1 2114 5
	movs	r3, #255
	strb	r3, [sp, #7]
	.loc 1 2115 5
	movs	r3, #0
	strb	r3, [sp, #6]
	.loc 1 2117 15
	ldr	r3, .L302
	ldr	r3, [r3]
	.loc 1 2117 5
	cmp	r3, #0
	bne	.L299
	.loc 1 2118 10
	mvn	r3, #126
	b	.L301
.L299:
	.loc 1 2121 23
	ldr	r3, .L302
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2121 42
	ldr	r3, .L302
	ldr	r3, [r3]
	.loc 1 2121 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #6
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL48:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 2124 35
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	orr	r3, r3, #8
	uxtb	r3, r3
	.loc 1 2124 12
	strb	r3, [sp, #6]
	.loc 1 2127 16
	add	r3, sp, #6
	movs	r2, #1
	mov	r1, r3
	movs	r0, #51
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2127 13
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #7]
	.loc 1 2130 9
	ldrsb	r3, [sp, #7]
.L301:
	.loc 1 2131 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI103:
	@ sp needed
	pop	{r4, pc}
.L303:
	.align	2
.L302:
	.word	p_bma2x2
.LFE34:
	.size	bma2x2_update_image, .-bma2x2_update_image
	.section	.text.bma2x2_get_intr_enable,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_enable, %function
bma2x2_get_intr_enable:
.LFB35:
	.loc 1 2178 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI104:
	sub	sp, sp, #16
.LCFI105:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 2179 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2182 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2184 15
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2184 5
	cmp	r3, #0
	bne	.L305
	.loc 1 2186 10
	mvn	r3, #126
	b	.L322
.L305:
	.loc 1 2188 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #11
	bhi	.L307
	adr	r2, .L309
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L309:
	.word	.L320+1
	.word	.L319+1
	.word	.L318+1
	.word	.L317+1
	.word	.L316+1
	.word	.L315+1
	.word	.L314+1
	.word	.L313+1
	.word	.L312+1
	.word	.L311+1
	.word	.L310+1
	.word	.L308+1
	.p2align 1
.L320:
	.loc 1 2190 23
	ldr	r3, .L323
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2190 42
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2190 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL49:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2194 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2194 14
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2196 3
	b	.L321
.L319:
	.loc 1 2198 23
	ldr	r3, .L323
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2198 42
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2198 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL50:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2202 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2202 14
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2204 3
	b	.L321
.L318:
	.loc 1 2206 23
	ldr	r3, .L323
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2206 42
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2206 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL51:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2210 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2210 14
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2212 3
	b	.L321
.L317:
	.loc 1 2214 23
	ldr	r3, .L323
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2214 42
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2214 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL52:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2218 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2218 14
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2220 3
	b	.L321
.L316:
	.loc 1 2222 23
	ldr	r3, .L323
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2222 42
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2222 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL53:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2226 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2226 14
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2228 3
	b	.L321
.L315:
	.loc 1 2230 23
	ldr	r3, .L323
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2230 42
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2230 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL54:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2234 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2234 14
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2236 3
	b	.L321
.L314:
	.loc 1 2238 23
	ldr	r3, .L323
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2238 42
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2238 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL55:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2242 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2242 14
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2244 3
	b	.L321
.L313:
	.loc 1 2246 23
	ldr	r3, .L323
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2246 42
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2246 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL56:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2250 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2250 14
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2252 3
	b	.L321
.L312:
	.loc 1 2254 23
	ldr	r3, .L323
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2254 42
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2254 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL57:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2258 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2258 14
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2260 3
	b	.L321
.L311:
	.loc 1 2262 23
	ldr	r3, .L323
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2262 42
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2262 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL58:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2266 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2266 14
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2268 3
	b	.L321
.L310:
	.loc 1 2270 23
	ldr	r3, .L323
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2270 42
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2270 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL59:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2274 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2274 14
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2276 3
	b	.L321
.L308:
	.loc 1 2278 23
	ldr	r3, .L323
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2278 42
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2278 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL60:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2282 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 2282 14
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2284 3
	b	.L321
.L307:
	.loc 1 2286 12
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2287 3
	nop
.L321:
	.loc 1 2290 9
	ldrsb	r3, [sp, #15]
.L322:
	.loc 1 2291 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI106:
	@ sp needed
	pop	{r4, pc}
.L324:
	.align	2
.L323:
	.word	p_bma2x2
.LFE35:
	.size	bma2x2_get_intr_enable, .-bma2x2_get_intr_enable
	.section	.text.bma2x2_set_intr_enable,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr_enable, %function
bma2x2_set_intr_enable:
.LFB36:
	.loc 1 2338 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI107:
	sub	sp, sp, #16
.LCFI108:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 2341 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2342 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2343 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 2345 15
	ldr	r3, .L344
	ldr	r3, [r3]
	.loc 1 2345 5
	cmp	r3, #0
	bne	.L326
	.loc 1 2347 10
	mvn	r3, #126
	b	.L343
.L326:
	.loc 1 2349 22
	ldr	r3, .L344
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2349 41
	ldr	r3, .L344
	ldr	r3, [r3]
	.loc 1 2349 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL61:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2352 23
	ldr	r3, .L344
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2352 42
	ldr	r3, .L344
	ldr	r3, [r3]
	.loc 1 2352 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL62:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2352 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2355 12
	ldrb	r3, [sp, #6]
	and	r3, r3, #1
	strb	r3, [sp, #6]
	.loc 1 2356 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #11
	bhi	.L328
	adr	r2, .L330
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L330:
	.word	.L341+1
	.word	.L340+1
	.word	.L339+1
	.word	.L338+1
	.word	.L337+1
	.word	.L336+1
	.word	.L335+1
	.word	.L334+1
	.word	.L333+1
	.word	.L332+1
	.word	.L331+1
	.word	.L329+1
	.p2align 1
.L341:
	.loc 1 2359 26
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #8
	sxtb	r2, r3
	.loc 1 2359 49
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 2359 55
	sxtb	r3, r3
	and	r3, r3, #8
	sxtb	r3, r3
	.loc 1 2359 37
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2359 13
	strb	r3, [sp, #13]
	.loc 1 2361 3
	b	.L342
.L340:
	.loc 1 2364 26
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 2364 55
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 2364 37
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2364 13
	strb	r3, [sp, #13]
	.loc 1 2366 3
	b	.L342
.L339:
	.loc 1 2369 26
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 2369 49
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 2369 55
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 2369 37
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2369 13
	strb	r3, [sp, #13]
	.loc 1 2371 3
	b	.L342
.L338:
	.loc 1 2374 26
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 2374 49
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 2374 55
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 2374 37
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2374 13
	strb	r3, [sp, #13]
	.loc 1 2376 3
	b	.L342
.L337:
	.loc 1 2379 26
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #16
	sxtb	r2, r3
	.loc 1 2379 49
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 2379 55
	sxtb	r3, r3
	and	r3, r3, #16
	sxtb	r3, r3
	.loc 1 2379 37
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2379 13
	strb	r3, [sp, #13]
	.loc 1 2381 3
	b	.L342
.L336:
	.loc 1 2384 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 2384 53
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 2384 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2384 12
	strb	r3, [sp, #14]
	.loc 1 2386 3
	b	.L342
.L335:
	.loc 1 2389 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 2389 47
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 2389 53
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 2389 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2389 12
	strb	r3, [sp, #14]
	.loc 1 2391 3
	b	.L342
.L334:
	.loc 1 2394 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 2394 47
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 2394 53
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 2394 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2394 12
	strb	r3, [sp, #14]
	.loc 1 2396 3
	b	.L342
.L333:
	.loc 1 2399 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #32
	sxtb	r2, r3
	.loc 1 2399 47
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #5
	.loc 1 2399 53
	sxtb	r3, r3
	and	r3, r3, #32
	sxtb	r3, r3
	.loc 1 2399 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2399 12
	strb	r3, [sp, #14]
	.loc 1 2401 3
	b	.L342
.L332:
	.loc 1 2404 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #16
	sxtb	r2, r3
	.loc 1 2404 47
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 2404 53
	sxtb	r3, r3
	and	r3, r3, #16
	sxtb	r3, r3
	.loc 1 2404 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2404 12
	strb	r3, [sp, #14]
	.loc 1 2406 3
	b	.L342
.L331:
	.loc 1 2409 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #64
	sxtb	r2, r3
	.loc 1 2409 47
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 2409 53
	sxtb	r3, r3
	and	r3, r3, #64
	sxtb	r3, r3
	.loc 1 2409 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2409 12
	strb	r3, [sp, #14]
	.loc 1 2411 3
	b	.L342
.L329:
	.loc 1 2414 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 2414 47
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 2414 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2414 12
	strb	r3, [sp, #14]
	.loc 1 2416 3
	b	.L342
.L328:
	.loc 1 2418 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2419 3
	nop
.L342:
	.loc 1 2422 15
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #22
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2422 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2425 15
	add	r3, sp, #13
	movs	r2, #1
	mov	r1, r3
	movs	r0, #23
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2425 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2429 9
	ldrsb	r3, [sp, #15]
.L343:
	.loc 1 2430 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI109:
	@ sp needed
	pop	{r4, pc}
.L345:
	.align	2
.L344:
	.word	p_bma2x2
.LFE36:
	.size	bma2x2_set_intr_enable, .-bma2x2_set_intr_enable
	.section	.text.bma2x2_get_intr_fifo_full,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_fifo_full
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_fifo_full, %function
bma2x2_get_intr_fifo_full:
.LFB37:
	.loc 1 2452 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI110:
	sub	sp, sp, #16
.LCFI111:
	str	r0, [sp, #4]
	.loc 1 2455 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2456 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2458 15
	ldr	r3, .L350
	ldr	r3, [r3]
	.loc 1 2458 5
	cmp	r3, #0
	bne	.L347
	.loc 1 2460 10
	mvn	r3, #126
	b	.L349
.L347:
	.loc 1 2463 23
	ldr	r3, .L350
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2463 42
	ldr	r3, .L350
	ldr	r3, [r3]
	.loc 1 2463 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL63:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2467 40
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2467 18
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 2470 9
	ldrsb	r3, [sp, #15]
.L349:
	.loc 1 2471 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI112:
	@ sp needed
	pop	{r4, pc}
.L351:
	.align	2
.L350:
	.word	p_bma2x2
.LFE37:
	.size	bma2x2_get_intr_fifo_full, .-bma2x2_get_intr_fifo_full
	.section	.text.bma2x2_set_intr_fifo_full,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr_fifo_full
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr_fifo_full, %function
bma2x2_set_intr_fifo_full:
.LFB38:
	.loc 1 2493 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI113:
	sub	sp, sp, #16
.LCFI114:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 2494 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2497 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2499 15
	ldr	r3, .L358
	ldr	r3, [r3]
	.loc 1 2499 5
	cmp	r3, #0
	bne	.L353
	.loc 1 2501 10
	mvn	r3, #126
	b	.L357
.L353:
	.loc 1 2503 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L355
	.loc 1 2505 23
	ldr	r3, .L358
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2505 42
	ldr	r3, .L358
	ldr	r3, [r3]
	.loc 1 2505 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL64:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2509 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #32
	sxtb	r2, r3
	.loc 1 2509 51
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #5
	.loc 1 2509 57
	sxtb	r3, r3
	and	r3, r3, #32
	sxtb	r3, r3
	.loc 1 2509 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2509 12
	strb	r3, [sp, #14]
	.loc 1 2512 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #23
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2512 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L356
.L355:
	.loc 1 2516 12
	movs	r3, #254
	strb	r3, [sp, #15]
.L356:
	.loc 1 2519 9
	ldrsb	r3, [sp, #15]
.L357:
	.loc 1 2520 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI115:
	@ sp needed
	pop	{r4, pc}
.L359:
	.align	2
.L358:
	.word	p_bma2x2
.LFE38:
	.size	bma2x2_set_intr_fifo_full, .-bma2x2_set_intr_fifo_full
	.section	.text.bma2x2_get_intr_fifo_wm,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_fifo_wm
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_fifo_wm, %function
bma2x2_get_intr_fifo_wm:
.LFB39:
	.loc 1 2544 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI116:
	sub	sp, sp, #16
.LCFI117:
	str	r0, [sp, #4]
	.loc 1 2545 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2548 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2550 15
	ldr	r3, .L364
	ldr	r3, [r3]
	.loc 1 2550 5
	cmp	r3, #0
	bne	.L361
	.loc 1 2552 10
	mvn	r3, #126
	b	.L363
.L361:
	.loc 1 2555 23
	ldr	r3, .L364
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2555 42
	ldr	r3, .L364
	ldr	r3, [r3]
	.loc 1 2555 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL65:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2559 38
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2559 16
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 2562 9
	ldrsb	r3, [sp, #15]
.L363:
	.loc 1 2563 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI118:
	@ sp needed
	pop	{r4, pc}
.L365:
	.align	2
.L364:
	.word	p_bma2x2
.LFE39:
	.size	bma2x2_get_intr_fifo_wm, .-bma2x2_get_intr_fifo_wm
	.section	.text.bma2x2_set_intr_fifo_wm,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr_fifo_wm
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr_fifo_wm, %function
bma2x2_set_intr_fifo_wm:
.LFB40:
	.loc 1 2587 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI119:
	sub	sp, sp, #16
.LCFI120:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 2588 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2591 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2593 15
	ldr	r3, .L372
	ldr	r3, [r3]
	.loc 1 2593 5
	cmp	r3, #0
	bne	.L367
	.loc 1 2595 10
	mvn	r3, #126
	b	.L371
.L367:
	.loc 1 2597 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L369
	.loc 1 2599 23
	ldr	r3, .L372
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2599 42
	ldr	r3, .L372
	ldr	r3, [r3]
	.loc 1 2599 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL66:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2603 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #64
	sxtb	r2, r3
	.loc 1 2603 49
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 2603 55
	sxtb	r3, r3
	and	r3, r3, #64
	sxtb	r3, r3
	.loc 1 2603 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2603 12
	strb	r3, [sp, #14]
	.loc 1 2606 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #23
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2606 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L370
.L369:
	.loc 1 2610 12
	movs	r3, #254
	strb	r3, [sp, #15]
.L370:
	.loc 1 2613 9
	ldrsb	r3, [sp, #15]
.L371:
	.loc 1 2614 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI121:
	@ sp needed
	pop	{r4, pc}
.L373:
	.align	2
.L372:
	.word	p_bma2x2
.LFE40:
	.size	bma2x2_set_intr_fifo_wm, .-bma2x2_set_intr_fifo_wm
	.section	.text.bma2x2_get_slow_no_motion,"ax",%progbits
	.align	1
	.global	bma2x2_get_slow_no_motion
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_slow_no_motion, %function
bma2x2_get_slow_no_motion:
.LFB41:
	.loc 1 2644 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI122:
	sub	sp, sp, #16
.LCFI123:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 2645 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2648 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2650 15
	ldr	r3, .L385
	ldr	r3, [r3]
	.loc 1 2650 5
	cmp	r3, #0
	bne	.L375
	.loc 1 2652 10
	mvn	r3, #126
	b	.L384
.L375:
	.loc 1 2655 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L377
	adr	r2, .L379
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L379:
	.word	.L382+1
	.word	.L381+1
	.word	.L380+1
	.word	.L378+1
	.p2align 1
.L382:
	.loc 1 2657 23
	ldr	r3, .L385
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2657 42
	ldr	r3, .L385
	ldr	r3, [r3]
	.loc 1 2657 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL67:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2661 45
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2661 23
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2663 3
	b	.L383
.L381:
	.loc 1 2665 23
	ldr	r3, .L385
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2665 42
	ldr	r3, .L385
	ldr	r3, [r3]
	.loc 1 2665 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL68:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2669 45
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2669 23
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2671 3
	b	.L383
.L380:
	.loc 1 2673 23
	ldr	r3, .L385
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2673 42
	ldr	r3, .L385
	ldr	r3, [r3]
	.loc 1 2673 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL69:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2677 45
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2677 23
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2679 3
	b	.L383
.L378:
	.loc 1 2681 23
	ldr	r3, .L385
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2681 42
	ldr	r3, .L385
	ldr	r3, [r3]
	.loc 1 2681 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL70:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2685 45
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2685 23
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2688 3
	b	.L383
.L377:
	.loc 1 2690 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2691 3
	nop
.L383:
	.loc 1 2694 9
	ldrsb	r3, [sp, #15]
.L384:
	.loc 1 2695 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI124:
	@ sp needed
	pop	{r4, pc}
.L386:
	.align	2
.L385:
	.word	p_bma2x2
.LFE41:
	.size	bma2x2_get_slow_no_motion, .-bma2x2_get_slow_no_motion
	.section	.text.bma2x2_set_slow_no_motion,"ax",%progbits
	.align	1
	.global	bma2x2_set_slow_no_motion
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_slow_no_motion, %function
bma2x2_set_slow_no_motion:
.LFB42:
	.loc 1 2726 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI125:
	sub	sp, sp, #16
.LCFI126:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 2727 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2730 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2732 15
	ldr	r3, .L398
	ldr	r3, [r3]
	.loc 1 2732 5
	cmp	r3, #0
	bne	.L388
	.loc 1 2734 10
	mvn	r3, #126
	b	.L397
.L388:
	.loc 1 2737 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L390
	adr	r2, .L392
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L392:
	.word	.L395+1
	.word	.L394+1
	.word	.L393+1
	.word	.L391+1
	.p2align 1
.L395:
	.loc 1 2739 23
	ldr	r3, .L398
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2739 42
	ldr	r3, .L398
	ldr	r3, [r3]
	.loc 1 2739 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL71:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2743 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 2743 62
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 2743 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2743 12
	strb	r3, [sp, #14]
	.loc 1 2747 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #24
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2747 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2750 3
	b	.L396
.L394:
	.loc 1 2752 23
	ldr	r3, .L398
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2752 42
	ldr	r3, .L398
	ldr	r3, [r3]
	.loc 1 2752 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL72:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2756 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 2756 56
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 2756 62
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 2756 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2756 12
	strb	r3, [sp, #14]
	.loc 1 2760 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #24
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2760 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2763 3
	b	.L396
.L393:
	.loc 1 2765 23
	ldr	r3, .L398
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2765 42
	ldr	r3, .L398
	ldr	r3, [r3]
	.loc 1 2765 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL73:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2769 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 2769 56
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 2769 62
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 2769 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2769 12
	strb	r3, [sp, #14]
	.loc 1 2773 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #24
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2773 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2776 3
	b	.L396
.L391:
	.loc 1 2778 23
	ldr	r3, .L398
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2778 42
	ldr	r3, .L398
	ldr	r3, [r3]
	.loc 1 2778 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL74:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2782 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #8
	sxtb	r2, r3
	.loc 1 2782 56
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 2782 62
	sxtb	r3, r3
	and	r3, r3, #8
	sxtb	r3, r3
	.loc 1 2782 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2782 12
	strb	r3, [sp, #14]
	.loc 1 2786 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #24
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2786 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2789 3
	b	.L396
.L390:
	.loc 1 2791 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2792 3
	nop
.L396:
	.loc 1 2795 9
	ldrsb	r3, [sp, #15]
.L397:
	.loc 1 2796 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI127:
	@ sp needed
	pop	{r4, pc}
.L399:
	.align	2
.L398:
	.word	p_bma2x2
.LFE42:
	.size	bma2x2_set_slow_no_motion, .-bma2x2_set_slow_no_motion
	.section	.text.bma2x2_get_intr_low_g,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_low_g
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_low_g, %function
bma2x2_get_intr_low_g:
.LFB43:
	.loc 1 2828 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI128:
	sub	sp, sp, #16
.LCFI129:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 2829 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2832 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2834 15
	ldr	r3, .L409
	ldr	r3, [r3]
	.loc 1 2834 5
	cmp	r3, #0
	bne	.L401
	.loc 1 2836 10
	mvn	r3, #126
	b	.L407
.L401:
	.loc 1 2838 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L403
	cmp	r3, #1
	beq	.L404
	b	.L408
.L403:
	.loc 1 2841 23
	ldr	r3, .L409
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2841 42
	ldr	r3, .L409
	ldr	r3, [r3]
	.loc 1 2841 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL75:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2845 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2845 19
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2847 3
	b	.L406
.L404:
	.loc 1 2849 23
	ldr	r3, .L409
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2849 42
	ldr	r3, .L409
	ldr	r3, [r3]
	.loc 1 2849 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL76:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2853 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2853 19
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2855 3
	b	.L406
.L408:
	.loc 1 2857 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2858 3
	nop
.L406:
	.loc 1 2861 9
	ldrsb	r3, [sp, #15]
.L407:
	.loc 1 2862 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI130:
	@ sp needed
	pop	{r4, pc}
.L410:
	.align	2
.L409:
	.word	p_bma2x2
.LFE43:
	.size	bma2x2_get_intr_low_g, .-bma2x2_get_intr_low_g
	.section	.text.bma2x2_set_intr_low_g,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr_low_g
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr_low_g, %function
bma2x2_set_intr_low_g:
.LFB44:
	.loc 1 2894 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI131:
	sub	sp, sp, #16
.LCFI132:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 2895 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2898 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2900 15
	ldr	r3, .L420
	ldr	r3, [r3]
	.loc 1 2900 5
	cmp	r3, #0
	bne	.L412
	.loc 1 2902 10
	mvn	r3, #126
	b	.L418
.L412:
	.loc 1 2904 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L414
	cmp	r3, #1
	beq	.L415
	b	.L419
.L414:
	.loc 1 2906 23
	ldr	r3, .L420
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2906 42
	ldr	r3, .L420
	ldr	r3, [r3]
	.loc 1 2906 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL77:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2910 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 2910 56
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 2910 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2910 12
	strb	r3, [sp, #14]
	.loc 1 2912 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #25
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2912 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2915 3
	b	.L417
.L415:
	.loc 1 2917 23
	ldr	r3, .L420
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2917 42
	ldr	r3, .L420
	ldr	r3, [r3]
	.loc 1 2917 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL78:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2921 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 2921 56
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 2921 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2921 12
	strb	r3, [sp, #14]
	.loc 1 2924 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #27
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2924 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2927 3
	b	.L417
.L419:
	.loc 1 2929 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2930 3
	nop
.L417:
	.loc 1 2933 9
	ldrsb	r3, [sp, #15]
.L418:
	.loc 1 2934 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI133:
	@ sp needed
	pop	{r4, pc}
.L421:
	.align	2
.L420:
	.word	p_bma2x2
.LFE44:
	.size	bma2x2_set_intr_low_g, .-bma2x2_set_intr_low_g
	.section	.text.bma2x2_get_intr_high_g,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_high_g
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_high_g, %function
bma2x2_get_intr_high_g:
.LFB45:
	.loc 1 2963 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI134:
	sub	sp, sp, #16
.LCFI135:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 2964 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2967 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2969 15
	ldr	r3, .L431
	ldr	r3, [r3]
	.loc 1 2969 5
	cmp	r3, #0
	bne	.L423
	.loc 1 2971 10
	mvn	r3, #126
	b	.L429
.L423:
	.loc 1 2973 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L425
	cmp	r3, #1
	beq	.L426
	b	.L430
.L425:
	.loc 1 2976 23
	ldr	r3, .L431
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2976 42
	ldr	r3, .L431
	ldr	r3, [r3]
	.loc 1 2976 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL79:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2980 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2980 20
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2982 3
	b	.L428
.L426:
	.loc 1 2984 23
	ldr	r3, .L431
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2984 42
	ldr	r3, .L431
	ldr	r3, [r3]
	.loc 1 2984 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL80:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2988 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2988 20
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2990 3
	b	.L428
.L430:
	.loc 1 2992 12
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2993 3
	nop
.L428:
	.loc 1 2996 9
	ldrsb	r3, [sp, #15]
.L429:
	.loc 1 2997 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI136:
	@ sp needed
	pop	{r4, pc}
.L432:
	.align	2
.L431:
	.word	p_bma2x2
.LFE45:
	.size	bma2x2_get_intr_high_g, .-bma2x2_get_intr_high_g
	.section	.text.bma2x2_set_intr_high_g,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr_high_g
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr_high_g, %function
bma2x2_set_intr_high_g:
.LFB46:
	.loc 1 3026 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI137:
	sub	sp, sp, #16
.LCFI138:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 3027 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3030 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3032 15
	ldr	r3, .L442
	ldr	r3, [r3]
	.loc 1 3032 5
	cmp	r3, #0
	bne	.L434
	.loc 1 3034 10
	mvn	r3, #126
	b	.L440
.L434:
	.loc 1 3037 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L436
	cmp	r3, #1
	beq	.L437
	b	.L441
.L436:
	.loc 1 3039 23
	ldr	r3, .L442
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3039 42
	ldr	r3, .L442
	ldr	r3, [r3]
	.loc 1 3039 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL81:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3043 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 3043 53
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 3043 59
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 3043 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3043 12
	strb	r3, [sp, #14]
	.loc 1 3046 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #25
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3046 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3049 3
	b	.L439
.L437:
	.loc 1 3051 23
	ldr	r3, .L442
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3051 42
	ldr	r3, .L442
	ldr	r3, [r3]
	.loc 1 3051 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL82:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3055 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 3055 53
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 3055 59
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 3055 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3055 12
	strb	r3, [sp, #14]
	.loc 1 3058 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #27
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3058 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3061 3
	b	.L439
.L441:
	.loc 1 3063 12
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3064 3
	nop
.L439:
	.loc 1 3067 9
	ldrsb	r3, [sp, #15]
.L440:
	.loc 1 3068 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI139:
	@ sp needed
	pop	{r4, pc}
.L443:
	.align	2
.L442:
	.word	p_bma2x2
.LFE46:
	.size	bma2x2_set_intr_high_g, .-bma2x2_set_intr_high_g
	.section	.text.bma2x2_get_intr_slope,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_slope
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_slope, %function
bma2x2_get_intr_slope:
.LFB47:
	.loc 1 3099 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI140:
	sub	sp, sp, #16
.LCFI141:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 3100 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3103 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3105 15
	ldr	r3, .L453
	ldr	r3, [r3]
	.loc 1 3105 5
	cmp	r3, #0
	bne	.L445
	.loc 1 3107 10
	mvn	r3, #126
	b	.L451
.L445:
	.loc 1 3110 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L447
	cmp	r3, #1
	beq	.L448
	b	.L452
.L447:
	.loc 1 3112 23
	ldr	r3, .L453
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3112 42
	ldr	r3, .L453
	ldr	r3, [r3]
	.loc 1 3112 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL83:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3116 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3116 19
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3118 3
	b	.L450
.L448:
	.loc 1 3120 23
	ldr	r3, .L453
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3120 42
	ldr	r3, .L453
	ldr	r3, [r3]
	.loc 1 3120 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL84:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3124 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3124 19
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3126 3
	b	.L450
.L452:
	.loc 1 3128 12
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3129 3
	nop
.L450:
	.loc 1 3132 9
	ldrsb	r3, [sp, #15]
.L451:
	.loc 1 3133 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI142:
	@ sp needed
	pop	{r4, pc}
.L454:
	.align	2
.L453:
	.word	p_bma2x2
.LFE47:
	.size	bma2x2_get_intr_slope, .-bma2x2_get_intr_slope
	.section	.text.bma2x2_set_intr_slope,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr_slope
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr_slope, %function
bma2x2_set_intr_slope:
.LFB48:
	.loc 1 3164 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI143:
	sub	sp, sp, #16
.LCFI144:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 3165 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3168 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3170 15
	ldr	r3, .L464
	ldr	r3, [r3]
	.loc 1 3170 5
	cmp	r3, #0
	bne	.L456
	.loc 1 3172 10
	mvn	r3, #126
	b	.L462
.L456:
	.loc 1 3174 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L458
	cmp	r3, #1
	beq	.L459
	b	.L463
.L458:
	.loc 1 3177 23
	ldr	r3, .L464
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3177 42
	ldr	r3, .L464
	ldr	r3, [r3]
	.loc 1 3177 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL85:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3181 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 3181 52
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 3181 58
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 3181 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3181 12
	strb	r3, [sp, #14]
	.loc 1 3184 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #25
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3184 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3187 3
	b	.L461
.L459:
	.loc 1 3189 23
	ldr	r3, .L464
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3189 42
	ldr	r3, .L464
	ldr	r3, [r3]
	.loc 1 3189 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL86:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3193 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 3193 52
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 3193 58
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 3193 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3193 12
	strb	r3, [sp, #14]
	.loc 1 3196 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #27
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3196 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3199 3
	b	.L461
.L463:
	.loc 1 3201 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3202 3
	nop
.L461:
	.loc 1 3205 9
	ldrsb	r3, [sp, #15]
.L462:
	.loc 1 3206 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI145:
	@ sp needed
	pop	{r4, pc}
.L465:
	.align	2
.L464:
	.word	p_bma2x2
.LFE48:
	.size	bma2x2_set_intr_slope, .-bma2x2_set_intr_slope
	.section	.text.bma2x2_get_intr_slow_no_motion,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_slow_no_motion
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_slow_no_motion, %function
bma2x2_get_intr_slow_no_motion:
.LFB49:
	.loc 1 3238 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI146:
	sub	sp, sp, #16
.LCFI147:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 3239 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3242 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3244 15
	ldr	r3, .L475
	ldr	r3, [r3]
	.loc 1 3244 5
	cmp	r3, #0
	bne	.L467
	.loc 1 3246 10
	mvn	r3, #126
	b	.L473
.L467:
	.loc 1 3249 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L469
	cmp	r3, #1
	beq	.L470
	b	.L474
.L469:
	.loc 1 3251 23
	ldr	r3, .L475
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3251 42
	ldr	r3, .L475
	ldr	r3, [r3]
	.loc 1 3251 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL87:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3255 50
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3255 28
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3257 3
	b	.L472
.L470:
	.loc 1 3259 23
	ldr	r3, .L475
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3259 42
	ldr	r3, .L475
	ldr	r3, [r3]
	.loc 1 3259 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL88:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3263 50
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3263 28
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3265 3
	b	.L472
.L474:
	.loc 1 3267 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3268 3
	nop
.L472:
	.loc 1 3271 9
	ldrsb	r3, [sp, #15]
.L473:
	.loc 1 3272 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI148:
	@ sp needed
	pop	{r4, pc}
.L476:
	.align	2
.L475:
	.word	p_bma2x2
.LFE49:
	.size	bma2x2_get_intr_slow_no_motion, .-bma2x2_get_intr_slow_no_motion
	.section	.text.bma2x2_set_intr_slow_no_motion,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr_slow_no_motion
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr_slow_no_motion, %function
bma2x2_set_intr_slow_no_motion:
.LFB50:
	.loc 1 3304 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI149:
	sub	sp, sp, #16
.LCFI150:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 3305 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3308 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3310 15
	ldr	r3, .L486
	ldr	r3, [r3]
	.loc 1 3310 5
	cmp	r3, #0
	bne	.L478
	.loc 1 3312 10
	mvn	r3, #126
	b	.L484
.L478:
	.loc 1 3314 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L480
	cmp	r3, #1
	beq	.L481
	b	.L485
.L480:
	.loc 1 3317 23
	ldr	r3, .L486
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3317 42
	ldr	r3, .L486
	ldr	r3, [r3]
	.loc 1 3317 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL89:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3321 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #8
	sxtb	r2, r3
	.loc 1 3321 61
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 3321 67
	sxtb	r3, r3
	and	r3, r3, #8
	sxtb	r3, r3
	.loc 1 3321 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3321 12
	strb	r3, [sp, #14]
	.loc 1 3325 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #25
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3325 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3328 3
	b	.L483
.L481:
	.loc 1 3330 23
	ldr	r3, .L486
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3330 42
	ldr	r3, .L486
	ldr	r3, [r3]
	.loc 1 3330 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL90:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3334 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #8
	sxtb	r2, r3
	.loc 1 3334 61
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 3334 67
	sxtb	r3, r3
	and	r3, r3, #8
	sxtb	r3, r3
	.loc 1 3334 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3334 12
	strb	r3, [sp, #14]
	.loc 1 3338 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #27
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3338 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3341 3
	b	.L483
.L485:
	.loc 1 3343 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3344 3
	nop
.L483:
	.loc 1 3347 9
	ldrsb	r3, [sp, #15]
.L484:
	.loc 1 3348 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI151:
	@ sp needed
	pop	{r4, pc}
.L487:
	.align	2
.L486:
	.word	p_bma2x2
.LFE50:
	.size	bma2x2_set_intr_slow_no_motion, .-bma2x2_set_intr_slow_no_motion
	.section	.text.bma2x2_get_intr_double_tap,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_double_tap
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_double_tap, %function
bma2x2_get_intr_double_tap:
.LFB51:
	.loc 1 3379 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI152:
	sub	sp, sp, #16
.LCFI153:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 3380 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3383 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3385 15
	ldr	r3, .L497
	ldr	r3, [r3]
	.loc 1 3385 5
	cmp	r3, #0
	bne	.L489
	.loc 1 3387 10
	mvn	r3, #126
	b	.L495
.L489:
	.loc 1 3390 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L491
	cmp	r3, #1
	beq	.L492
	b	.L496
.L491:
	.loc 1 3392 23
	ldr	r3, .L497
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3392 42
	ldr	r3, .L497
	ldr	r3, [r3]
	.loc 1 3392 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL91:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3396 46
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3396 24
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3398 3
	b	.L494
.L492:
	.loc 1 3400 23
	ldr	r3, .L497
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3400 42
	ldr	r3, .L497
	ldr	r3, [r3]
	.loc 1 3400 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL92:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3404 46
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3404 24
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3406 3
	b	.L494
.L496:
	.loc 1 3408 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3409 3
	nop
.L494:
	.loc 1 3412 9
	ldrsb	r3, [sp, #15]
.L495:
	.loc 1 3413 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI154:
	@ sp needed
	pop	{r4, pc}
.L498:
	.align	2
.L497:
	.word	p_bma2x2
.LFE51:
	.size	bma2x2_get_intr_double_tap, .-bma2x2_get_intr_double_tap
	.section	.text.bma2x2_set_intr_double_tap,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr_double_tap
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr_double_tap, %function
bma2x2_set_intr_double_tap:
.LFB52:
	.loc 1 3444 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI155:
	sub	sp, sp, #16
.LCFI156:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 3445 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3448 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3450 15
	ldr	r3, .L508
	ldr	r3, [r3]
	.loc 1 3450 5
	cmp	r3, #0
	bne	.L500
	.loc 1 3452 10
	mvn	r3, #126
	b	.L506
.L500:
	.loc 1 3454 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L502
	cmp	r3, #1
	beq	.L503
	b	.L507
.L502:
	.loc 1 3457 23
	ldr	r3, .L508
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3457 42
	ldr	r3, .L508
	ldr	r3, [r3]
	.loc 1 3457 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL93:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3461 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #16
	sxtb	r2, r3
	.loc 1 3461 57
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 3461 63
	sxtb	r3, r3
	and	r3, r3, #16
	sxtb	r3, r3
	.loc 1 3461 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3461 12
	strb	r3, [sp, #14]
	.loc 1 3465 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #25
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3465 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3468 3
	b	.L505
.L503:
	.loc 1 3470 23
	ldr	r3, .L508
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3470 42
	ldr	r3, .L508
	ldr	r3, [r3]
	.loc 1 3470 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL94:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3474 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #16
	sxtb	r2, r3
	.loc 1 3474 57
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 3474 63
	sxtb	r3, r3
	and	r3, r3, #16
	sxtb	r3, r3
	.loc 1 3474 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3474 12
	strb	r3, [sp, #14]
	.loc 1 3478 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #27
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3478 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3481 3
	b	.L505
.L507:
	.loc 1 3483 12
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3484 3
	nop
.L505:
	.loc 1 3487 9
	ldrsb	r3, [sp, #15]
.L506:
	.loc 1 3488 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI157:
	@ sp needed
	pop	{r4, pc}
.L509:
	.align	2
.L508:
	.word	p_bma2x2
.LFE52:
	.size	bma2x2_set_intr_double_tap, .-bma2x2_set_intr_double_tap
	.section	.text.bma2x2_get_intr_single_tap,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_single_tap
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_single_tap, %function
bma2x2_get_intr_single_tap:
.LFB53:
	.loc 1 3518 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI158:
	sub	sp, sp, #16
.LCFI159:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 3519 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3522 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3524 15
	ldr	r3, .L519
	ldr	r3, [r3]
	.loc 1 3524 5
	cmp	r3, #0
	bne	.L511
	.loc 1 3526 10
	mvn	r3, #126
	b	.L517
.L511:
	.loc 1 3528 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L513
	cmp	r3, #1
	beq	.L514
	b	.L518
.L513:
	.loc 1 3531 23
	ldr	r3, .L519
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3531 42
	ldr	r3, .L519
	ldr	r3, [r3]
	.loc 1 3531 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL95:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3535 46
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3535 24
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3537 3
	b	.L516
.L514:
	.loc 1 3539 23
	ldr	r3, .L519
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3539 42
	ldr	r3, .L519
	ldr	r3, [r3]
	.loc 1 3539 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL96:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3543 46
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3543 24
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3545 3
	b	.L516
.L518:
	.loc 1 3547 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3548 3
	nop
.L516:
	.loc 1 3551 9
	ldrsb	r3, [sp, #15]
.L517:
	.loc 1 3552 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI160:
	@ sp needed
	pop	{r4, pc}
.L520:
	.align	2
.L519:
	.word	p_bma2x2
.LFE53:
	.size	bma2x2_get_intr_single_tap, .-bma2x2_get_intr_single_tap
	.section	.text.bma2x2_set_intr_single_tap,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr_single_tap
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr_single_tap, %function
bma2x2_set_intr_single_tap:
.LFB54:
	.loc 1 3582 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI161:
	sub	sp, sp, #16
.LCFI162:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 3583 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3586 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3588 15
	ldr	r3, .L530
	ldr	r3, [r3]
	.loc 1 3588 5
	cmp	r3, #0
	bne	.L522
	.loc 1 3590 10
	mvn	r3, #126
	b	.L528
.L522:
	.loc 1 3592 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L524
	cmp	r3, #1
	beq	.L525
	b	.L529
.L524:
	.loc 1 3595 23
	ldr	r3, .L530
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3595 42
	ldr	r3, .L530
	ldr	r3, [r3]
	.loc 1 3595 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL97:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3599 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #32
	sxtb	r2, r3
	.loc 1 3599 57
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #5
	.loc 1 3599 63
	sxtb	r3, r3
	and	r3, r3, #32
	sxtb	r3, r3
	.loc 1 3599 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3599 12
	strb	r3, [sp, #14]
	.loc 1 3602 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #25
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3602 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3605 3
	b	.L527
.L525:
	.loc 1 3607 23
	ldr	r3, .L530
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3607 42
	ldr	r3, .L530
	ldr	r3, [r3]
	.loc 1 3607 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL98:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3611 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #32
	sxtb	r2, r3
	.loc 1 3611 57
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #5
	.loc 1 3611 63
	sxtb	r3, r3
	and	r3, r3, #32
	sxtb	r3, r3
	.loc 1 3611 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3611 12
	strb	r3, [sp, #14]
	.loc 1 3615 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #27
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3615 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3618 3
	b	.L527
.L529:
	.loc 1 3620 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3621 3
	nop
.L527:
	.loc 1 3624 9
	ldrsb	r3, [sp, #15]
.L528:
	.loc 1 3625 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI163:
	@ sp needed
	pop	{r4, pc}
.L531:
	.align	2
.L530:
	.word	p_bma2x2
.LFE54:
	.size	bma2x2_set_intr_single_tap, .-bma2x2_set_intr_single_tap
	.section	.text.bma2x2_get_intr_orient,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_orient
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_orient, %function
bma2x2_get_intr_orient:
.LFB55:
	.loc 1 3654 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI164:
	sub	sp, sp, #16
.LCFI165:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 3655 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3658 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3660 15
	ldr	r3, .L541
	ldr	r3, [r3]
	.loc 1 3660 5
	cmp	r3, #0
	bne	.L533
	.loc 1 3662 10
	mvn	r3, #126
	b	.L539
.L533:
	.loc 1 3664 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L535
	cmp	r3, #1
	beq	.L536
	b	.L540
.L535:
	.loc 1 3667 23
	ldr	r3, .L541
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3667 42
	ldr	r3, .L541
	ldr	r3, [r3]
	.loc 1 3667 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL99:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3671 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3671 20
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3673 3
	b	.L538
.L536:
	.loc 1 3675 23
	ldr	r3, .L541
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3675 42
	ldr	r3, .L541
	ldr	r3, [r3]
	.loc 1 3675 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL100:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3679 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3679 20
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3681 3
	b	.L538
.L540:
	.loc 1 3683 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3684 3
	nop
.L538:
	.loc 1 3687 9
	ldrsb	r3, [sp, #15]
.L539:
	.loc 1 3688 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI166:
	@ sp needed
	pop	{r4, pc}
.L542:
	.align	2
.L541:
	.word	p_bma2x2
.LFE55:
	.size	bma2x2_get_intr_orient, .-bma2x2_get_intr_orient
	.section	.text.bma2x2_set_intr_orient,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr_orient
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr_orient, %function
bma2x2_set_intr_orient:
.LFB56:
	.loc 1 3717 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI167:
	sub	sp, sp, #16
.LCFI168:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 3718 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3721 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3723 15
	ldr	r3, .L552
	ldr	r3, [r3]
	.loc 1 3723 5
	cmp	r3, #0
	bne	.L544
	.loc 1 3725 10
	mvn	r3, #126
	b	.L550
.L544:
	.loc 1 3727 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L546
	cmp	r3, #1
	beq	.L547
	b	.L551
.L546:
	.loc 1 3730 23
	ldr	r3, .L552
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3730 42
	ldr	r3, .L552
	ldr	r3, [r3]
	.loc 1 3730 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL101:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3734 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #64
	sxtb	r2, r3
	.loc 1 3734 53
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 3734 59
	sxtb	r3, r3
	and	r3, r3, #64
	sxtb	r3, r3
	.loc 1 3734 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3734 12
	strb	r3, [sp, #14]
	.loc 1 3737 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #25
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3737 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3740 3
	b	.L549
.L547:
	.loc 1 3742 23
	ldr	r3, .L552
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3742 42
	ldr	r3, .L552
	ldr	r3, [r3]
	.loc 1 3742 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL102:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3746 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #64
	sxtb	r2, r3
	.loc 1 3746 53
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 3746 59
	sxtb	r3, r3
	and	r3, r3, #64
	sxtb	r3, r3
	.loc 1 3746 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3746 12
	strb	r3, [sp, #14]
	.loc 1 3749 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #27
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3749 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3752 3
	b	.L549
.L551:
	.loc 1 3754 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3755 3
	nop
.L549:
	.loc 1 3758 9
	ldrsb	r3, [sp, #15]
.L550:
	.loc 1 3759 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI169:
	@ sp needed
	pop	{r4, pc}
.L553:
	.align	2
.L552:
	.word	p_bma2x2
.LFE56:
	.size	bma2x2_set_intr_orient, .-bma2x2_set_intr_orient
	.section	.text.bma2x2_get_intr_flat,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_flat
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_flat, %function
bma2x2_get_intr_flat:
.LFB57:
	.loc 1 3790 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI170:
	sub	sp, sp, #16
.LCFI171:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 3791 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3794 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3796 15
	ldr	r3, .L563
	ldr	r3, [r3]
	.loc 1 3796 5
	cmp	r3, #0
	bne	.L555
	.loc 1 3798 10
	mvn	r3, #126
	b	.L561
.L555:
	.loc 1 3800 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L557
	cmp	r3, #1
	beq	.L558
	b	.L562
.L557:
	.loc 1 3803 23
	ldr	r3, .L563
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3803 42
	ldr	r3, .L563
	ldr	r3, [r3]
	.loc 1 3803 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL103:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3807 40
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 3807 18
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3809 3
	b	.L560
.L558:
	.loc 1 3811 23
	ldr	r3, .L563
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3811 42
	ldr	r3, .L563
	ldr	r3, [r3]
	.loc 1 3811 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL104:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3815 40
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 3815 18
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3817 3
	b	.L560
.L562:
	.loc 1 3819 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3820 3
	nop
.L560:
	.loc 1 3823 9
	ldrsb	r3, [sp, #15]
.L561:
	.loc 1 3824 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI172:
	@ sp needed
	pop	{r4, pc}
.L564:
	.align	2
.L563:
	.word	p_bma2x2
.LFE57:
	.size	bma2x2_get_intr_flat, .-bma2x2_get_intr_flat
	.section	.text.bma2x2_set_intr_flat,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr_flat
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr_flat, %function
bma2x2_set_intr_flat:
.LFB58:
	.loc 1 3855 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI173:
	sub	sp, sp, #16
.LCFI174:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 3856 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3859 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3861 15
	ldr	r3, .L574
	ldr	r3, [r3]
	.loc 1 3861 5
	cmp	r3, #0
	bne	.L566
	.loc 1 3863 10
	mvn	r3, #126
	b	.L572
.L566:
	.loc 1 3865 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L568
	cmp	r3, #1
	beq	.L569
	b	.L573
.L568:
	.loc 1 3868 23
	ldr	r3, .L574
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3868 42
	ldr	r3, .L574
	ldr	r3, [r3]
	.loc 1 3868 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL105:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3872 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 3872 51
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 3872 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3872 12
	strb	r3, [sp, #14]
	.loc 1 3875 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #25
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3875 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3878 3
	b	.L571
.L569:
	.loc 1 3880 23
	ldr	r3, .L574
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3880 42
	ldr	r3, .L574
	ldr	r3, [r3]
	.loc 1 3880 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL106:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3884 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 3884 51
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 3884 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3884 12
	strb	r3, [sp, #14]
	.loc 1 3887 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #27
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3887 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3890 3
	b	.L571
.L573:
	.loc 1 3892 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3893 3
	nop
.L571:
	.loc 1 3896 9
	ldrsb	r3, [sp, #15]
.L572:
	.loc 1 3897 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI175:
	@ sp needed
	pop	{r4, pc}
.L575:
	.align	2
.L574:
	.word	p_bma2x2
.LFE58:
	.size	bma2x2_set_intr_flat, .-bma2x2_set_intr_flat
	.section	.text.bma2x2_get_new_data,"ax",%progbits
	.align	1
	.global	bma2x2_get_new_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_new_data, %function
bma2x2_get_new_data:
.LFB59:
	.loc 1 3927 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI176:
	sub	sp, sp, #16
.LCFI177:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 3928 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3931 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3933 15
	ldr	r3, .L585
	ldr	r3, [r3]
	.loc 1 3933 5
	cmp	r3, #0
	bne	.L577
	.loc 1 3935 10
	mvn	r3, #126
	b	.L583
.L577:
	.loc 1 3937 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L579
	cmp	r3, #1
	beq	.L580
	b	.L584
.L579:
	.loc 1 3940 23
	ldr	r3, .L585
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3940 42
	ldr	r3, .L585
	ldr	r3, [r3]
	.loc 1 3940 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL107:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3944 43
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3944 21
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3946 3
	b	.L582
.L580:
	.loc 1 3948 23
	ldr	r3, .L585
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3948 42
	ldr	r3, .L585
	ldr	r3, [r3]
	.loc 1 3948 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL108:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3952 43
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 3952 21
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3954 3
	b	.L582
.L584:
	.loc 1 3956 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3957 3
	nop
.L582:
	.loc 1 3960 9
	ldrsb	r3, [sp, #15]
.L583:
	.loc 1 3961 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI178:
	@ sp needed
	pop	{r4, pc}
.L586:
	.align	2
.L585:
	.word	p_bma2x2
.LFE59:
	.size	bma2x2_get_new_data, .-bma2x2_get_new_data
	.section	.text.bma2x2_set_new_data,"ax",%progbits
	.align	1
	.global	bma2x2_set_new_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_new_data, %function
bma2x2_set_new_data:
.LFB60:
	.loc 1 3991 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI179:
	sub	sp, sp, #16
.LCFI180:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 3992 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3995 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3997 15
	ldr	r3, .L596
	ldr	r3, [r3]
	.loc 1 3997 5
	cmp	r3, #0
	bne	.L588
	.loc 1 3999 10
	mvn	r3, #126
	b	.L594
.L588:
	.loc 1 4001 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L590
	cmp	r3, #1
	beq	.L591
	b	.L595
.L590:
	.loc 1 4004 23
	ldr	r3, .L596
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4004 42
	ldr	r3, .L596
	ldr	r3, [r3]
	.loc 1 4004 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL109:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4008 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 4008 60
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 4008 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4008 12
	strb	r3, [sp, #14]
	.loc 1 4011 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #26
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4011 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4014 3
	b	.L593
.L591:
	.loc 1 4016 23
	ldr	r3, .L596
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4016 42
	ldr	r3, .L596
	ldr	r3, [r3]
	.loc 1 4016 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL110:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4020 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 4020 54
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 4020 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4020 12
	strb	r3, [sp, #14]
	.loc 1 4023 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #26
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4023 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4026 3
	b	.L593
.L595:
	.loc 1 4028 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4029 3
	nop
.L593:
	.loc 1 4032 9
	ldrsb	r3, [sp, #15]
.L594:
	.loc 1 4033 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI181:
	@ sp needed
	pop	{r4, pc}
.L597:
	.align	2
.L596:
	.word	p_bma2x2
.LFE60:
	.size	bma2x2_set_new_data, .-bma2x2_set_new_data
	.section	.text.bma2x2_get_intr1_fifo_wm,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr1_fifo_wm
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr1_fifo_wm, %function
bma2x2_get_intr1_fifo_wm:
.LFB61:
	.loc 1 4053 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI182:
	sub	sp, sp, #16
.LCFI183:
	str	r0, [sp, #4]
	.loc 1 4054 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4057 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4059 15
	ldr	r3, .L602
	ldr	r3, [r3]
	.loc 1 4059 5
	cmp	r3, #0
	bne	.L599
	.loc 1 4061 10
	mvn	r3, #126
	b	.L601
.L599:
	.loc 1 4064 23
	ldr	r3, .L602
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4064 42
	ldr	r3, .L602
	ldr	r3, [r3]
	.loc 1 4064 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL111:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4068 44
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4068 22
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 4071 9
	ldrsb	r3, [sp, #15]
.L601:
	.loc 1 4072 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI184:
	@ sp needed
	pop	{r4, pc}
.L603:
	.align	2
.L602:
	.word	p_bma2x2
.LFE61:
	.size	bma2x2_get_intr1_fifo_wm, .-bma2x2_get_intr1_fifo_wm
	.section	.text.bma2x2_set_intr1_fifo_wm,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr1_fifo_wm
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr1_fifo_wm, %function
bma2x2_set_intr1_fifo_wm:
.LFB62:
	.loc 1 4092 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI185:
	sub	sp, sp, #16
.LCFI186:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 4093 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4096 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4098 15
	ldr	r3, .L610
	ldr	r3, [r3]
	.loc 1 4098 5
	cmp	r3, #0
	bne	.L605
	.loc 1 4100 10
	mvn	r3, #126
	b	.L609
.L605:
	.loc 1 4102 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L607
	.loc 1 4105 23
	ldr	r3, .L610
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4105 42
	ldr	r3, .L610
	ldr	r3, [r3]
	.loc 1 4105 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL112:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4109 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 4109 55
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 4109 61
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 4109 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4109 12
	strb	r3, [sp, #14]
	.loc 1 4112 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #26
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4112 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L608
.L607:
	.loc 1 4116 12
	movs	r3, #254
	strb	r3, [sp, #15]
.L608:
	.loc 1 4119 9
	ldrsb	r3, [sp, #15]
.L609:
	.loc 1 4120 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI187:
	@ sp needed
	pop	{r4, pc}
.L611:
	.align	2
.L610:
	.word	p_bma2x2
.LFE62:
	.size	bma2x2_set_intr1_fifo_wm, .-bma2x2_set_intr1_fifo_wm
	.section	.text.bma2x2_get_intr2_fifo_wm,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr2_fifo_wm
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr2_fifo_wm, %function
bma2x2_get_intr2_fifo_wm:
.LFB63:
	.loc 1 4140 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI188:
	sub	sp, sp, #16
.LCFI189:
	str	r0, [sp, #4]
	.loc 1 4141 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4144 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4146 15
	ldr	r3, .L616
	ldr	r3, [r3]
	.loc 1 4146 5
	cmp	r3, #0
	bne	.L613
	.loc 1 4148 10
	mvn	r3, #126
	b	.L615
.L613:
	.loc 1 4151 23
	ldr	r3, .L616
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4151 42
	ldr	r3, .L616
	ldr	r3, [r3]
	.loc 1 4151 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL113:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4155 44
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4155 22
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 4158 9
	ldrsb	r3, [sp, #15]
.L615:
	.loc 1 4159 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI190:
	@ sp needed
	pop	{r4, pc}
.L617:
	.align	2
.L616:
	.word	p_bma2x2
.LFE63:
	.size	bma2x2_get_intr2_fifo_wm, .-bma2x2_get_intr2_fifo_wm
	.section	.text.bma2x2_set_intr2_fifo_wm,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr2_fifo_wm
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr2_fifo_wm, %function
bma2x2_set_intr2_fifo_wm:
.LFB64:
	.loc 1 4179 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI191:
	sub	sp, sp, #16
.LCFI192:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 4180 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4183 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4185 15
	ldr	r3, .L624
	ldr	r3, [r3]
	.loc 1 4185 5
	cmp	r3, #0
	bne	.L619
	.loc 1 4187 10
	mvn	r3, #126
	b	.L623
.L619:
	.loc 1 4189 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L621
	.loc 1 4192 23
	ldr	r3, .L624
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4192 42
	ldr	r3, .L624
	ldr	r3, [r3]
	.loc 1 4192 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL114:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4196 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #64
	sxtb	r2, r3
	.loc 1 4196 55
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 4196 61
	sxtb	r3, r3
	and	r3, r3, #64
	sxtb	r3, r3
	.loc 1 4196 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4196 12
	strb	r3, [sp, #14]
	.loc 1 4199 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #26
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4199 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L622
.L621:
	.loc 1 4203 12
	movs	r3, #254
	strb	r3, [sp, #15]
.L622:
	.loc 1 4206 9
	ldrsb	r3, [sp, #15]
.L623:
	.loc 1 4207 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI193:
	@ sp needed
	pop	{r4, pc}
.L625:
	.align	2
.L624:
	.word	p_bma2x2
.LFE64:
	.size	bma2x2_set_intr2_fifo_wm, .-bma2x2_set_intr2_fifo_wm
	.section	.text.bma2x2_get_intr1_fifo_full,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr1_fifo_full
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr1_fifo_full, %function
bma2x2_get_intr1_fifo_full:
.LFB65:
	.loc 1 4229 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI194:
	sub	sp, sp, #16
.LCFI195:
	str	r0, [sp, #4]
	.loc 1 4230 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4233 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4235 15
	ldr	r3, .L630
	ldr	r3, [r3]
	.loc 1 4235 5
	cmp	r3, #0
	bne	.L627
	.loc 1 4237 10
	mvn	r3, #126
	b	.L629
.L627:
	.loc 1 4240 23
	ldr	r3, .L630
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4240 42
	ldr	r3, .L630
	ldr	r3, [r3]
	.loc 1 4240 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL115:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4244 46
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4244 24
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 4247 9
	ldrsb	r3, [sp, #15]
.L629:
	.loc 1 4248 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI196:
	@ sp needed
	pop	{r4, pc}
.L631:
	.align	2
.L630:
	.word	p_bma2x2
.LFE65:
	.size	bma2x2_get_intr1_fifo_full, .-bma2x2_get_intr1_fifo_full
	.section	.text.bma2x2_set_intr1_fifo_full,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr1_fifo_full
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr1_fifo_full, %function
bma2x2_set_intr1_fifo_full:
.LFB66:
	.loc 1 4270 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI197:
	sub	sp, sp, #16
.LCFI198:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 4271 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4274 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4276 15
	ldr	r3, .L638
	ldr	r3, [r3]
	.loc 1 4276 5
	cmp	r3, #0
	bne	.L633
	.loc 1 4278 10
	mvn	r3, #126
	b	.L637
.L633:
	.loc 1 4280 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L635
	.loc 1 4283 23
	ldr	r3, .L638
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4283 42
	ldr	r3, .L638
	ldr	r3, [r3]
	.loc 1 4283 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL116:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4287 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 4287 57
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 4287 63
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 4287 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4287 12
	strb	r3, [sp, #14]
	.loc 1 4290 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #26
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4290 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L636
.L635:
	.loc 1 4294 13
	movs	r3, #254
	strb	r3, [sp, #15]
.L636:
	.loc 1 4297 9
	ldrsb	r3, [sp, #15]
.L637:
	.loc 1 4298 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI199:
	@ sp needed
	pop	{r4, pc}
.L639:
	.align	2
.L638:
	.word	p_bma2x2
.LFE66:
	.size	bma2x2_set_intr1_fifo_full, .-bma2x2_set_intr1_fifo_full
	.section	.text.bma2x2_get_intr2_fifo_full,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr2_fifo_full
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr2_fifo_full, %function
bma2x2_get_intr2_fifo_full:
.LFB67:
	.loc 1 4321 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI200:
	sub	sp, sp, #16
.LCFI201:
	str	r0, [sp, #4]
	.loc 1 4322 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4325 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4327 15
	ldr	r3, .L644
	ldr	r3, [r3]
	.loc 1 4327 5
	cmp	r3, #0
	bne	.L641
	.loc 1 4329 10
	mvn	r3, #126
	b	.L643
.L641:
	.loc 1 4332 23
	ldr	r3, .L644
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4332 42
	ldr	r3, .L644
	ldr	r3, [r3]
	.loc 1 4332 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL117:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4336 46
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4336 24
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 4339 9
	ldrsb	r3, [sp, #15]
.L643:
	.loc 1 4340 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI202:
	@ sp needed
	pop	{r4, pc}
.L645:
	.align	2
.L644:
	.word	p_bma2x2
.LFE67:
	.size	bma2x2_get_intr2_fifo_full, .-bma2x2_get_intr2_fifo_full
	.section	.text.bma2x2_set_intr2_fifo_full,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr2_fifo_full
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr2_fifo_full, %function
bma2x2_set_intr2_fifo_full:
.LFB68:
	.loc 1 4363 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI203:
	sub	sp, sp, #16
.LCFI204:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 4364 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4367 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4369 15
	ldr	r3, .L652
	ldr	r3, [r3]
	.loc 1 4369 5
	cmp	r3, #0
	bne	.L647
	.loc 1 4371 10
	mvn	r3, #126
	b	.L651
.L647:
	.loc 1 4373 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L649
	.loc 1 4376 23
	ldr	r3, .L652
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4376 42
	ldr	r3, .L652
	ldr	r3, [r3]
	.loc 1 4376 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL118:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4380 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #32
	sxtb	r2, r3
	.loc 1 4380 57
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #5
	.loc 1 4380 63
	sxtb	r3, r3
	and	r3, r3, #32
	sxtb	r3, r3
	.loc 1 4380 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4380 12
	strb	r3, [sp, #14]
	.loc 1 4384 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #26
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4384 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L650
.L649:
	.loc 1 4388 13
	movs	r3, #254
	strb	r3, [sp, #15]
.L650:
	.loc 1 4391 9
	ldrsb	r3, [sp, #15]
.L651:
	.loc 1 4392 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI205:
	@ sp needed
	pop	{r4, pc}
.L653:
	.align	2
.L652:
	.word	p_bma2x2
.LFE68:
	.size	bma2x2_set_intr2_fifo_full, .-bma2x2_set_intr2_fifo_full
	.section	.text.bma2x2_get_source,"ax",%progbits
	.align	1
	.global	bma2x2_get_source
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_source, %function
bma2x2_get_source:
.LFB69:
	.loc 1 4424 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI206:
	sub	sp, sp, #16
.LCFI207:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 4425 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4428 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4430 15
	ldr	r3, .L667
	ldr	r3, [r3]
	.loc 1 4430 5
	cmp	r3, #0
	bne	.L655
	.loc 1 4431 10
	mvn	r3, #126
	b	.L666
.L655:
	.loc 1 4434 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bhi	.L657
	adr	r2, .L659
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L659:
	.word	.L664+1
	.word	.L663+1
	.word	.L662+1
	.word	.L661+1
	.word	.L660+1
	.word	.L658+1
	.p2align 1
.L664:
	.loc 1 4436 23
	ldr	r3, .L667
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4436 42
	ldr	r3, .L667
	ldr	r3, [r3]
	.loc 1 4436 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL119:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4440 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4440 20
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4442 3
	b	.L665
.L663:
	.loc 1 4444 23
	ldr	r3, .L667
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4444 42
	ldr	r3, .L667
	ldr	r3, [r3]
	.loc 1 4444 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL120:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4448 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4448 20
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4450 3
	b	.L665
.L662:
	.loc 1 4452 23
	ldr	r3, .L667
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4452 42
	ldr	r3, .L667
	ldr	r3, [r3]
	.loc 1 4452 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL121:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4456 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4456 20
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4458 3
	b	.L665
.L661:
	.loc 1 4460 23
	ldr	r3, .L667
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4460 42
	ldr	r3, .L667
	ldr	r3, [r3]
	.loc 1 4460 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL122:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4464 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4464 20
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4466 3
	b	.L665
.L660:
	.loc 1 4468 23
	ldr	r3, .L667
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4468 42
	ldr	r3, .L667
	ldr	r3, [r3]
	.loc 1 4468 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL123:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4472 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4472 20
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4474 3
	b	.L665
.L658:
	.loc 1 4476 23
	ldr	r3, .L667
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4476 42
	ldr	r3, .L667
	ldr	r3, [r3]
	.loc 1 4476 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL124:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4480 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4480 20
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4482 3
	b	.L665
.L657:
	.loc 1 4484 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4485 3
	nop
.L665:
	.loc 1 4488 9
	ldrsb	r3, [sp, #15]
.L666:
	.loc 1 4489 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI208:
	@ sp needed
	pop	{r4, pc}
.L668:
	.align	2
.L667:
	.word	p_bma2x2
.LFE69:
	.size	bma2x2_get_source, .-bma2x2_get_source
	.section	.text.bma2x2_set_source,"ax",%progbits
	.align	1
	.global	bma2x2_set_source
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_source, %function
bma2x2_set_source:
.LFB70:
	.loc 1 4521 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI209:
	sub	sp, sp, #16
.LCFI210:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 4522 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4525 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4526 16
	ldr	r3, .L681
	ldr	r3, [r3]
	.loc 1 4526 6
	cmp	r3, #0
	bne	.L670
	.loc 1 4527 13
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L671
.L670:
	.loc 1 4529 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #5
	bhi	.L672
	adr	r2, .L674
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L674:
	.word	.L679+1
	.word	.L678+1
	.word	.L677+1
	.word	.L676+1
	.word	.L675+1
	.word	.L673+1
	.p2align 1
.L679:
	.loc 1 4532 23
	ldr	r3, .L681
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4532 42
	ldr	r3, .L681
	ldr	r3, [r3]
	.loc 1 4532 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL125:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4536 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 4536 59
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 4536 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4536 12
	strb	r3, [sp, #14]
	.loc 1 4539 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #30
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4539 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4542 3
	b	.L671
.L678:
	.loc 1 4544 23
	ldr	r3, .L681
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4544 42
	ldr	r3, .L681
	ldr	r3, [r3]
	.loc 1 4544 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL126:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4548 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 4548 53
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 4548 59
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 4548 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4548 12
	strb	r3, [sp, #14]
	.loc 1 4551 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #30
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4551 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4554 3
	b	.L671
.L677:
	.loc 1 4556 23
	ldr	r3, .L681
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4556 42
	ldr	r3, .L681
	ldr	r3, [r3]
	.loc 1 4556 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL127:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4560 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 4560 53
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 4560 59
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 4560 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4560 12
	strb	r3, [sp, #14]
	.loc 1 4563 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #30
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4563 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4566 3
	b	.L671
.L676:
	.loc 1 4568 23
	ldr	r3, .L681
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4568 42
	ldr	r3, .L681
	ldr	r3, [r3]
	.loc 1 4568 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL128:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4572 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #8
	sxtb	r2, r3
	.loc 1 4572 53
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 4572 59
	sxtb	r3, r3
	and	r3, r3, #8
	sxtb	r3, r3
	.loc 1 4572 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4572 12
	strb	r3, [sp, #14]
	.loc 1 4576 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #30
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4576 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4579 3
	b	.L671
.L675:
	.loc 1 4581 23
	ldr	r3, .L681
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4581 42
	ldr	r3, .L681
	ldr	r3, [r3]
	.loc 1 4581 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL129:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4585 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #16
	sxtb	r2, r3
	.loc 1 4585 53
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 4585 59
	sxtb	r3, r3
	and	r3, r3, #16
	sxtb	r3, r3
	.loc 1 4585 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4585 12
	strb	r3, [sp, #14]
	.loc 1 4588 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #30
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4588 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4591 3
	b	.L671
.L673:
	.loc 1 4593 23
	ldr	r3, .L681
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4593 42
	ldr	r3, .L681
	ldr	r3, [r3]
	.loc 1 4593 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL130:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4597 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #32
	sxtb	r2, r3
	.loc 1 4597 53
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #5
	.loc 1 4597 59
	sxtb	r3, r3
	and	r3, r3, #32
	sxtb	r3, r3
	.loc 1 4597 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4597 12
	strb	r3, [sp, #14]
	.loc 1 4600 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #30
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4600 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4603 3
	b	.L671
.L672:
	.loc 1 4605 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4606 3
	nop
.L671:
	.loc 1 4609 9
	ldrsb	r3, [sp, #15]
	.loc 1 4610 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI211:
	@ sp needed
	pop	{r4, pc}
.L682:
	.align	2
.L681:
	.word	p_bma2x2
.LFE70:
	.size	bma2x2_set_source, .-bma2x2_set_source
	.section	.text.bma2x2_get_intr_output_type,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_output_type
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_output_type, %function
bma2x2_get_intr_output_type:
.LFB71:
	.loc 1 4639 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI212:
	sub	sp, sp, #16
.LCFI213:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 4640 6
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4643 6
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4645 16
	ldr	r3, .L691
	ldr	r3, [r3]
	.loc 1 4645 6
	cmp	r3, #0
	bne	.L684
	.loc 1 4646 13
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L685
.L684:
	.loc 1 4648 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L686
	cmp	r3, #1
	beq	.L687
	b	.L690
.L686:
	.loc 1 4651 23
	ldr	r3, .L691
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4651 42
	ldr	r3, .L691
	ldr	r3, [r3]
	.loc 1 4651 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #32
	blx	r4
.LVL131:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4655 47
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4655 25
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4657 3
	b	.L685
.L687:
	.loc 1 4659 23
	ldr	r3, .L691
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4659 42
	ldr	r3, .L691
	ldr	r3, [r3]
	.loc 1 4659 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #32
	blx	r4
.LVL132:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4663 47
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4663 25
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4665 3
	b	.L685
.L690:
	.loc 1 4667 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4668 3
	nop
.L685:
	.loc 1 4671 9
	ldrsb	r3, [sp, #15]
	.loc 1 4672 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI214:
	@ sp needed
	pop	{r4, pc}
.L692:
	.align	2
.L691:
	.word	p_bma2x2
.LFE71:
	.size	bma2x2_get_intr_output_type, .-bma2x2_get_intr_output_type
	.section	.text.bma2x2_set_intr_output_type,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr_output_type
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr_output_type, %function
bma2x2_set_intr_output_type:
.LFB72:
	.loc 1 4701 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI215:
	sub	sp, sp, #16
.LCFI216:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 4702 6
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4705 6
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4707 16
	ldr	r3, .L701
	ldr	r3, [r3]
	.loc 1 4707 6
	cmp	r3, #0
	bne	.L694
	.loc 1 4708 13
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L695
.L694:
	.loc 1 4710 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L696
	cmp	r3, #1
	beq	.L697
	b	.L700
.L696:
	.loc 1 4713 23
	ldr	r3, .L701
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4713 42
	ldr	r3, .L701
	ldr	r3, [r3]
	.loc 1 4713 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #32
	blx	r4
.LVL133:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4717 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 4717 58
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 4717 64
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 4717 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4717 12
	strb	r3, [sp, #14]
	.loc 1 4720 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #32
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4720 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4723 3
	b	.L695
.L697:
	.loc 1 4725 23
	ldr	r3, .L701
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4725 42
	ldr	r3, .L701
	ldr	r3, [r3]
	.loc 1 4725 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #32
	blx	r4
.LVL134:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4729 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #8
	sxtb	r2, r3
	.loc 1 4729 58
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 4729 64
	sxtb	r3, r3
	and	r3, r3, #8
	sxtb	r3, r3
	.loc 1 4729 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4729 12
	strb	r3, [sp, #14]
	.loc 1 4732 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #32
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4732 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4735 3
	b	.L695
.L700:
	.loc 1 4737 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4738 3
	nop
.L695:
	.loc 1 4741 9
	ldrsb	r3, [sp, #15]
	.loc 1 4742 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI217:
	@ sp needed
	pop	{r4, pc}
.L702:
	.align	2
.L701:
	.word	p_bma2x2
.LFE72:
	.size	bma2x2_set_intr_output_type, .-bma2x2_set_intr_output_type
	.section	.text.bma2x2_get_intr_level,"ax",%progbits
	.align	1
	.global	bma2x2_get_intr_level
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_intr_level, %function
bma2x2_get_intr_level:
.LFB73:
	.loc 1 4770 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI218:
	sub	sp, sp, #16
.LCFI219:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 4771 6
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4774 6
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4776 16
	ldr	r3, .L711
	ldr	r3, [r3]
	.loc 1 4776 6
	cmp	r3, #0
	bne	.L704
	.loc 1 4777 13
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L705
.L704:
	.loc 1 4779 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L706
	cmp	r3, #1
	beq	.L707
	b	.L710
.L706:
	.loc 1 4782 23
	ldr	r3, .L711
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4782 42
	ldr	r3, .L711
	ldr	r3, [r3]
	.loc 1 4782 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #32
	blx	r4
.LVL135:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4786 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4786 19
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4788 3
	b	.L705
.L707:
	.loc 1 4790 23
	ldr	r3, .L711
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4790 42
	ldr	r3, .L711
	ldr	r3, [r3]
	.loc 1 4790 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #32
	blx	r4
.LVL136:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4794 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4794 19
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4796 3
	b	.L705
.L710:
	.loc 1 4798 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4799 3
	nop
.L705:
	.loc 1 4802 9
	ldrsb	r3, [sp, #15]
	.loc 1 4803 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI220:
	@ sp needed
	pop	{r4, pc}
.L712:
	.align	2
.L711:
	.word	p_bma2x2
.LFE73:
	.size	bma2x2_get_intr_level, .-bma2x2_get_intr_level
	.section	.text.bma2x2_set_intr_level,"ax",%progbits
	.align	1
	.global	bma2x2_set_intr_level
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_intr_level, %function
bma2x2_set_intr_level:
.LFB74:
	.loc 1 4831 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI221:
	sub	sp, sp, #16
.LCFI222:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 4832 6
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4835 6
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4837 16
	ldr	r3, .L721
	ldr	r3, [r3]
	.loc 1 4837 6
	cmp	r3, #0
	bne	.L714
	.loc 1 4838 13
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L715
.L714:
	.loc 1 4840 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L716
	cmp	r3, #1
	beq	.L717
	b	.L720
.L716:
	.loc 1 4843 23
	ldr	r3, .L721
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4843 42
	ldr	r3, .L721
	ldr	r3, [r3]
	.loc 1 4843 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #32
	blx	r4
.LVL137:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4847 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 4847 58
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 4847 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4847 12
	strb	r3, [sp, #14]
	.loc 1 4850 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #32
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4850 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4853 3
	b	.L715
.L717:
	.loc 1 4855 23
	ldr	r3, .L721
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4855 42
	ldr	r3, .L721
	ldr	r3, [r3]
	.loc 1 4855 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #32
	blx	r4
.LVL138:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4859 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 4859 52
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 4859 58
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 4859 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4859 12
	strb	r3, [sp, #14]
	.loc 1 4862 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #32
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4862 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4865 3
	b	.L715
.L720:
	.loc 1 4867 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4868 3
	nop
.L715:
	.loc 1 4871 9
	ldrsb	r3, [sp, #15]
	.loc 1 4872 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI223:
	@ sp needed
	pop	{r4, pc}
.L722:
	.align	2
.L721:
	.word	p_bma2x2
.LFE74:
	.size	bma2x2_set_intr_level, .-bma2x2_set_intr_level
	.section	.text.bma2x2_rst_intr,"ax",%progbits
	.align	1
	.global	bma2x2_rst_intr
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_rst_intr, %function
bma2x2_rst_intr:
.LFB75:
	.loc 1 4893 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI224:
	sub	sp, sp, #16
.LCFI225:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 4894 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4897 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4899 15
	ldr	r3, .L727
	ldr	r3, [r3]
	.loc 1 4899 5
	cmp	r3, #0
	bne	.L724
	.loc 1 4901 10
	mvn	r3, #126
	b	.L726
.L724:
	.loc 1 4903 23
	ldr	r3, .L727
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4903 42
	ldr	r3, .L727
	ldr	r3, [r3]
	.loc 1 4903 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #33
	blx	r4
.LVL139:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4906 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 4906 50
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 4906 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4906 12
	strb	r3, [sp, #14]
	.loc 1 4908 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #33
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4908 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4911 9
	ldrsb	r3, [sp, #15]
.L726:
	.loc 1 4912 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI226:
	@ sp needed
	pop	{r4, pc}
.L728:
	.align	2
.L727:
	.word	p_bma2x2
.LFE75:
	.size	bma2x2_rst_intr, .-bma2x2_rst_intr
	.section	.text.bma2x2_get_latch_intr,"ax",%progbits
	.align	1
	.global	bma2x2_get_latch_intr
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_latch_intr, %function
bma2x2_get_latch_intr:
.LFB76:
	.loc 1 4946 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI227:
	sub	sp, sp, #16
.LCFI228:
	str	r0, [sp, #4]
	.loc 1 4947 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4950 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4952 15
	ldr	r3, .L733
	ldr	r3, [r3]
	.loc 1 4952 5
	cmp	r3, #0
	bne	.L730
	.loc 1 4954 10
	mvn	r3, #126
	b	.L732
.L730:
	.loc 1 4957 23
	ldr	r3, .L733
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4957 42
	ldr	r3, .L733
	ldr	r3, [r3]
	.loc 1 4957 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #33
	blx	r4
.LVL140:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4960 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #15
	uxtb	r2, r3
	.loc 1 4960 19
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 4963 9
	ldrsb	r3, [sp, #15]
.L732:
	.loc 1 4964 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI229:
	@ sp needed
	pop	{r4, pc}
.L734:
	.align	2
.L733:
	.word	p_bma2x2
.LFE76:
	.size	bma2x2_get_latch_intr, .-bma2x2_get_latch_intr
	.section	.text.bma2x2_set_latch_intr,"ax",%progbits
	.align	1
	.global	bma2x2_set_latch_intr
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_latch_intr, %function
bma2x2_set_latch_intr:
.LFB77:
	.loc 1 4998 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI230:
	sub	sp, sp, #16
.LCFI231:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 4999 4
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 5002 4
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5003 4
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5004 14
	ldr	r3, .L761
	ldr	r3, [r3]
	.loc 1 5004 4
	cmp	r3, #0
	bne	.L736
	.loc 1 5006 10
	mvn	r3, #126
	b	.L759
.L736:
	.loc 1 5008 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L738
	.loc 1 5009 4
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #15
	bhi	.L760
	adr	r2, .L741
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L741:
	.word	.L756+1
	.word	.L755+1
	.word	.L754+1
	.word	.L753+1
	.word	.L752+1
	.word	.L751+1
	.word	.L750+1
	.word	.L749+1
	.word	.L748+1
	.word	.L747+1
	.word	.L746+1
	.word	.L745+1
	.word	.L744+1
	.word	.L743+1
	.word	.L742+1
	.word	.L740+1
	.p2align 1
.L756:
	.loc 1 5011 19
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5014 4
	b	.L757
.L755:
	.loc 1 5016 19
	movs	r3, #1
	strb	r3, [sp, #14]
	.loc 1 5019 4
	b	.L757
.L754:
	.loc 1 5021 19
	movs	r3, #2
	strb	r3, [sp, #14]
	.loc 1 5024 4
	b	.L757
.L753:
	.loc 1 5026 19
	movs	r3, #3
	strb	r3, [sp, #14]
	.loc 1 5029 4
	b	.L757
.L752:
	.loc 1 5031 19
	movs	r3, #4
	strb	r3, [sp, #14]
	.loc 1 5034 4
	b	.L757
.L751:
	.loc 1 5036 19
	movs	r3, #5
	strb	r3, [sp, #14]
	.loc 1 5039 4
	b	.L757
.L750:
	.loc 1 5041 19
	movs	r3, #6
	strb	r3, [sp, #14]
	.loc 1 5044 4
	b	.L757
.L749:
	.loc 1 5046 19
	movs	r3, #7
	strb	r3, [sp, #14]
	.loc 1 5049 4
	b	.L757
.L748:
	.loc 1 5051 19
	movs	r3, #8
	strb	r3, [sp, #14]
	.loc 1 5054 4
	b	.L757
.L747:
	.loc 1 5056 19
	movs	r3, #9
	strb	r3, [sp, #14]
	.loc 1 5059 4
	b	.L757
.L746:
	.loc 1 5061 19
	movs	r3, #10
	strb	r3, [sp, #14]
	.loc 1 5064 4
	b	.L757
.L745:
	.loc 1 5066 19
	movs	r3, #11
	strb	r3, [sp, #14]
	.loc 1 5069 4
	b	.L757
.L744:
	.loc 1 5071 19
	movs	r3, #12
	strb	r3, [sp, #14]
	.loc 1 5074 4
	b	.L757
.L743:
	.loc 1 5076 19
	movs	r3, #13
	strb	r3, [sp, #14]
	.loc 1 5079 4
	b	.L757
.L742:
	.loc 1 5081 19
	movs	r3, #14
	strb	r3, [sp, #14]
	.loc 1 5084 4
	b	.L757
.L740:
	.loc 1 5086 19
	movs	r3, #15
	strb	r3, [sp, #14]
	.loc 1 5089 4
	b	.L757
.L760:
	.loc 1 5091 4
	nop
.L757:
	.loc 1 5094 23
	ldr	r3, .L761
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5094 42
	ldr	r3, .L761
	ldr	r3, [r3]
	.loc 1 5094 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #33
	blx	r4
.LVL141:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5097 24
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #15
	sxtb	r2, r3
	.loc 1 5097 58
	ldrsb	r3, [sp, #14]
	and	r3, r3, #15
	sxtb	r3, r3
	.loc 1 5097 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5097 12
	strb	r3, [sp, #13]
	.loc 1 5099 16
	add	r3, sp, #13
	movs	r2, #1
	mov	r1, r3
	movs	r0, #33
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5099 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L758
.L738:
	.loc 1 5102 12
	movs	r3, #254
	strb	r3, [sp, #15]
.L758:
	.loc 1 5105 9
	ldrsb	r3, [sp, #15]
.L759:
	.loc 1 5106 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI232:
	@ sp needed
	pop	{r4, pc}
.L762:
	.align	2
.L761:
	.word	p_bma2x2
.LFE77:
	.size	bma2x2_set_latch_intr, .-bma2x2_set_latch_intr
	.section	.text.bma2x2_get_durn,"ax",%progbits
	.align	1
	.global	bma2x2_get_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_durn, %function
bma2x2_get_durn:
.LFB78:
	.loc 1 5148 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI233:
	sub	sp, sp, #16
.LCFI234:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 5149 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5152 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5154 15
	ldr	r3, .L774
	ldr	r3, [r3]
	.loc 1 5154 5
	cmp	r3, #0
	bne	.L764
	.loc 1 5156 10
	mvn	r3, #126
	b	.L773
.L764:
	.loc 1 5159 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L766
	adr	r2, .L768
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L768:
	.word	.L771+1
	.word	.L770+1
	.word	.L769+1
	.word	.L767+1
	.p2align 1
.L771:
	.loc 1 5162 23
	ldr	r3, .L774
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5162 42
	ldr	r3, .L774
	ldr	r3, [r3]
	.loc 1 5162 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #34
	blx	r4
.LVL142:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5165 13
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 5166 3
	b	.L772
.L770:
	.loc 1 5169 23
	ldr	r3, .L774
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5169 42
	ldr	r3, .L774
	ldr	r3, [r3]
	.loc 1 5169 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #37
	blx	r4
.LVL143:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5172 13
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 5173 3
	b	.L772
.L769:
	.loc 1 5176 23
	ldr	r3, .L774
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5176 42
	ldr	r3, .L774
	ldr	r3, [r3]
	.loc 1 5176 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #39
	blx	r4
.LVL144:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5179 35
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 5179 13
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 5181 3
	b	.L772
.L767:
	.loc 1 5184 23
	ldr	r3, .L774
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5184 42
	ldr	r3, .L774
	ldr	r3, [r3]
	.loc 1 5184 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #39
	blx	r4
.LVL145:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5188 35
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #2
	uxtb	r2, r3
	.loc 1 5188 13
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 5190 3
	b	.L772
.L766:
	.loc 1 5192 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 5193 3
	nop
.L772:
	.loc 1 5196 9
	ldrsb	r3, [sp, #15]
.L773:
	.loc 1 5197 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI235:
	@ sp needed
	pop	{r4, pc}
.L775:
	.align	2
.L774:
	.word	p_bma2x2
.LFE78:
	.size	bma2x2_get_durn, .-bma2x2_get_durn
	.section	.text.bma2x2_set_durn,"ax",%progbits
	.align	1
	.global	bma2x2_set_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_durn, %function
bma2x2_set_durn:
.LFB79:
	.loc 1 5239 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI236:
	sub	sp, sp, #16
.LCFI237:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 5240 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5243 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5245 15
	ldr	r3, .L787
	ldr	r3, [r3]
	.loc 1 5245 5
	cmp	r3, #0
	bne	.L777
	.loc 1 5247 10
	mvn	r3, #126
	b	.L786
.L777:
	.loc 1 5250 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L779
	adr	r2, .L781
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L781:
	.word	.L784+1
	.word	.L783+1
	.word	.L782+1
	.word	.L780+1
	.p2align 1
.L784:
	.loc 1 5253 12
	ldrb	r3, [sp, #6]
	strb	r3, [sp, #14]
	.loc 1 5254 15
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #34
	bl	bma2x2_write_reg
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5256 3
	b	.L785
.L783:
	.loc 1 5259 12
	ldrb	r3, [sp, #6]
	strb	r3, [sp, #14]
	.loc 1 5260 15
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #37
	bl	bma2x2_write_reg
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5263 3
	b	.L785
.L782:
	.loc 1 5266 23
	ldr	r3, .L787
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5266 42
	ldr	r3, .L787
	ldr	r3, [r3]
	.loc 1 5266 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #39
	blx	r4
.LVL146:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5270 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #3
	sxtb	r2, r3
	.loc 1 5270 52
	ldrsb	r3, [sp, #6]
	and	r3, r3, #3
	sxtb	r3, r3
	.loc 1 5270 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5270 12
	strb	r3, [sp, #14]
	.loc 1 5272 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #39
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5272 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5275 3
	b	.L785
.L780:
	.loc 1 5278 23
	ldr	r3, .L787
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5278 42
	ldr	r3, .L787
	ldr	r3, [r3]
	.loc 1 5278 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #39
	blx	r4
.LVL147:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5282 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #3
	sxtb	r2, r3
	.loc 1 5282 46
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 5282 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5282 12
	strb	r3, [sp, #14]
	.loc 1 5284 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #39
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5284 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5287 3
	b	.L785
.L779:
	.loc 1 5289 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 5290 3
	nop
.L785:
	.loc 1 5293 9
	ldrsb	r3, [sp, #15]
.L786:
	.loc 1 5294 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI238:
	@ sp needed
	pop	{r4, pc}
.L788:
	.align	2
.L787:
	.word	p_bma2x2
.LFE79:
	.size	bma2x2_set_durn, .-bma2x2_set_durn
	.section	.text.bma2x2_get_thres,"ax",%progbits
	.align	1
	.global	bma2x2_get_thres
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_thres, %function
bma2x2_get_thres:
.LFB80:
	.loc 1 5357 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI239:
	sub	sp, sp, #16
.LCFI240:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 5358 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5361 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5363 15
	ldr	r3, .L800
	ldr	r3, [r3]
	.loc 1 5363 5
	cmp	r3, #0
	bne	.L790
	.loc 1 5365 10
	mvn	r3, #126
	b	.L799
.L790:
	.loc 1 5367 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L792
	adr	r2, .L794
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L794:
	.word	.L797+1
	.word	.L796+1
	.word	.L795+1
	.word	.L793+1
	.p2align 1
.L797:
	.loc 1 5371 23
	ldr	r3, .L800
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5371 42
	ldr	r3, .L800
	ldr	r3, [r3]
	.loc 1 5371 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #35
	blx	r4
.LVL148:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5374 14
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 5375 3
	b	.L798
.L796:
	.loc 1 5378 23
	ldr	r3, .L800
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5378 42
	ldr	r3, .L800
	ldr	r3, [r3]
	.loc 1 5378 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #38
	blx	r4
.LVL149:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5382 14
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 5383 3
	b	.L798
.L795:
	.loc 1 5386 23
	ldr	r3, .L800
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5386 42
	ldr	r3, .L800
	ldr	r3, [r3]
	.loc 1 5386 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #40
	blx	r4
.LVL150:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5390 14
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 5391 3
	b	.L798
.L793:
	.loc 1 5394 23
	ldr	r3, .L800
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5394 42
	ldr	r3, .L800
	ldr	r3, [r3]
	.loc 1 5394 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #41
	blx	r4
.LVL151:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5398 14
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 5399 3
	b	.L798
.L792:
	.loc 1 5401 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 5402 3
	nop
.L798:
	.loc 1 5405 9
	ldrsb	r3, [sp, #15]
.L799:
	.loc 1 5406 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI241:
	@ sp needed
	pop	{r4, pc}
.L801:
	.align	2
.L800:
	.word	p_bma2x2
.LFE80:
	.size	bma2x2_get_thres, .-bma2x2_get_thres
	.section	.text.bma2x2_set_thres,"ax",%progbits
	.align	1
	.global	bma2x2_set_thres
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_thres, %function
bma2x2_set_thres:
.LFB81:
	.loc 1 5469 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI242:
	sub	sp, sp, #20
.LCFI243:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 5470 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5473 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5475 15
	ldr	r3, .L813
	ldr	r3, [r3]
	.loc 1 5475 5
	cmp	r3, #0
	bne	.L803
	.loc 1 5477 10
	mvn	r3, #126
	b	.L812
.L803:
	.loc 1 5479 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L805
	adr	r2, .L807
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L807:
	.word	.L810+1
	.word	.L809+1
	.word	.L808+1
	.word	.L806+1
	.p2align 1
.L810:
	.loc 1 5483 12
	ldrb	r3, [sp, #6]
	strb	r3, [sp, #14]
	.loc 1 5484 15
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #35
	bl	bma2x2_write_reg
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5487 3
	b	.L811
.L809:
	.loc 1 5490 12
	ldrb	r3, [sp, #6]
	strb	r3, [sp, #14]
	.loc 1 5491 15
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #38
	bl	bma2x2_write_reg
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5494 3
	b	.L811
.L808:
	.loc 1 5497 12
	ldrb	r3, [sp, #6]
	strb	r3, [sp, #14]
	.loc 1 5498 15
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #40
	bl	bma2x2_write_reg
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5501 3
	b	.L811
.L806:
	.loc 1 5504 12
	ldrb	r3, [sp, #6]
	strb	r3, [sp, #14]
	.loc 1 5505 15
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #41
	bl	bma2x2_write_reg
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5508 3
	b	.L811
.L805:
	.loc 1 5510 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 5511 3
	nop
.L811:
	.loc 1 5514 9
	ldrsb	r3, [sp, #15]
.L812:
	.loc 1 5515 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI244:
	@ sp needed
	ldr	pc, [sp], #4
.L814:
	.align	2
.L813:
	.word	p_bma2x2
.LFE81:
	.size	bma2x2_set_thres, .-bma2x2_set_thres
	.section	.text.bma2x2_get_low_high_g_hyst,"ax",%progbits
	.align	1
	.global	bma2x2_get_low_high_g_hyst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_low_high_g_hyst, %function
bma2x2_get_low_high_g_hyst:
.LFB82:
	.loc 1 5550 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI245:
	sub	sp, sp, #16
.LCFI246:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 5551 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5554 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5556 15
	ldr	r3, .L824
	ldr	r3, [r3]
	.loc 1 5556 5
	cmp	r3, #0
	bne	.L816
	.loc 1 5558 10
	mvn	r3, #126
	b	.L822
.L816:
	.loc 1 5560 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L818
	cmp	r3, #1
	beq	.L819
	b	.L823
.L818:
	.loc 1 5563 23
	ldr	r3, .L824
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5563 42
	ldr	r3, .L824
	ldr	r3, [r3]
	.loc 1 5563 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL152:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5567 35
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 5567 13
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 5569 3
	b	.L821
.L819:
	.loc 1 5571 23
	ldr	r3, .L824
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5571 42
	ldr	r3, .L824
	ldr	r3, [r3]
	.loc 1 5571 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL153:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5575 35
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #6
	uxtb	r2, r3
	.loc 1 5575 13
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 5577 3
	b	.L821
.L823:
	.loc 1 5579 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 5580 3
	nop
.L821:
	.loc 1 5583 9
	ldrsb	r3, [sp, #15]
.L822:
	.loc 1 5584 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI247:
	@ sp needed
	pop	{r4, pc}
.L825:
	.align	2
.L824:
	.word	p_bma2x2
.LFE82:
	.size	bma2x2_get_low_high_g_hyst, .-bma2x2_get_low_high_g_hyst
	.section	.text.bma2x2_set_low_high_g_hyst,"ax",%progbits
	.align	1
	.global	bma2x2_set_low_high_g_hyst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_low_high_g_hyst, %function
bma2x2_set_low_high_g_hyst:
.LFB83:
	.loc 1 5619 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI248:
	sub	sp, sp, #16
.LCFI249:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 5620 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5623 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5625 15
	ldr	r3, .L835
	ldr	r3, [r3]
	.loc 1 5625 5
	cmp	r3, #0
	bne	.L827
	.loc 1 5627 10
	mvn	r3, #126
	b	.L833
.L827:
	.loc 1 5629 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L829
	cmp	r3, #1
	beq	.L830
	b	.L834
.L829:
	.loc 1 5632 23
	ldr	r3, .L835
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5632 42
	ldr	r3, .L835
	ldr	r3, [r3]
	.loc 1 5632 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL154:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5635 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #3
	sxtb	r2, r3
	.loc 1 5635 52
	ldrsb	r3, [sp, #6]
	and	r3, r3, #3
	sxtb	r3, r3
	.loc 1 5635 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5635 12
	strb	r3, [sp, #14]
	.loc 1 5637 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #36
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5637 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5640 3
	b	.L832
.L830:
	.loc 1 5642 23
	ldr	r3, .L835
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5642 42
	ldr	r3, .L835
	ldr	r3, [r3]
	.loc 1 5642 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL155:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5646 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #63
	sxtb	r2, r3
	.loc 1 5646 46
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 5646 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5646 12
	strb	r3, [sp, #14]
	.loc 1 5648 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #36
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5648 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5651 3
	b	.L832
.L834:
	.loc 1 5653 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 5654 3
	nop
.L832:
	.loc 1 5657 9
	ldrsb	r3, [sp, #15]
.L833:
	.loc 1 5658 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI250:
	@ sp needed
	pop	{r4, pc}
.L836:
	.align	2
.L835:
	.word	p_bma2x2
.LFE83:
	.size	bma2x2_set_low_high_g_hyst, .-bma2x2_set_low_high_g_hyst
	.section	.text.bma2x2_get_low_g_mode,"ax",%progbits
	.align	1
	.global	bma2x2_get_low_g_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_low_g_mode, %function
bma2x2_get_low_g_mode:
.LFB84:
	.loc 1 5678 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI251:
	sub	sp, sp, #16
.LCFI252:
	str	r0, [sp, #4]
	.loc 1 5679 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5682 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5684 15
	ldr	r3, .L841
	ldr	r3, [r3]
	.loc 1 5684 5
	cmp	r3, #0
	bne	.L838
	.loc 1 5686 10
	mvn	r3, #126
	b	.L840
.L838:
	.loc 1 5689 23
	ldr	r3, .L841
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5689 42
	ldr	r3, .L841
	ldr	r3, [r3]
	.loc 1 5689 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL156:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5692 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 5692 19
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 5695 9
	ldrsb	r3, [sp, #15]
.L840:
	.loc 1 5696 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI253:
	@ sp needed
	pop	{r4, pc}
.L842:
	.align	2
.L841:
	.word	p_bma2x2
.LFE84:
	.size	bma2x2_get_low_g_mode, .-bma2x2_get_low_g_mode
	.section	.text.bma2x2_set_low_g_mode,"ax",%progbits
	.align	1
	.global	bma2x2_set_low_g_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_low_g_mode, %function
bma2x2_set_low_g_mode:
.LFB85:
	.loc 1 5716 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI254:
	sub	sp, sp, #16
.LCFI255:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 5717 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5720 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5722 15
	ldr	r3, .L847
	ldr	r3, [r3]
	.loc 1 5722 5
	cmp	r3, #0
	bne	.L844
	.loc 1 5724 10
	mvn	r3, #126
	b	.L846
.L844:
	.loc 1 5727 23
	ldr	r3, .L847
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5727 42
	ldr	r3, .L847
	ldr	r3, [r3]
	.loc 1 5727 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL157:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5731 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 5731 52
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 5731 58
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 5731 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5731 12
	strb	r3, [sp, #14]
	.loc 1 5733 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #36
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5733 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5737 9
	ldrsb	r3, [sp, #15]
.L846:
	.loc 1 5738 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI256:
	@ sp needed
	pop	{r4, pc}
.L848:
	.align	2
.L847:
	.word	p_bma2x2
.LFE85:
	.size	bma2x2_set_low_g_mode, .-bma2x2_set_low_g_mode
	.section	.text.bma2x2_get_tap_durn,"ax",%progbits
	.align	1
	.global	bma2x2_get_tap_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_tap_durn, %function
bma2x2_get_tap_durn:
.LFB86:
	.loc 1 5765 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI257:
	sub	sp, sp, #16
.LCFI258:
	str	r0, [sp, #4]
	.loc 1 5766 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5769 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5771 15
	ldr	r3, .L853
	ldr	r3, [r3]
	.loc 1 5771 5
	cmp	r3, #0
	bne	.L850
	.loc 1 5773 10
	mvn	r3, #126
	b	.L852
.L850:
	.loc 1 5776 23
	ldr	r3, .L853
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5776 42
	ldr	r3, .L853
	ldr	r3, [r3]
	.loc 1 5776 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #42
	blx	r4
.LVL158:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5780 39
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #7
	uxtb	r2, r3
	.loc 1 5780 17
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 5783 9
	ldrsb	r3, [sp, #15]
.L852:
	.loc 1 5784 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI259:
	@ sp needed
	pop	{r4, pc}
.L854:
	.align	2
.L853:
	.word	p_bma2x2
.LFE86:
	.size	bma2x2_get_tap_durn, .-bma2x2_get_tap_durn
	.section	.text.bma2x2_set_tap_durn,"ax",%progbits
	.align	1
	.global	bma2x2_set_tap_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_tap_durn, %function
bma2x2_set_tap_durn:
.LFB87:
	.loc 1 5811 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI260:
	sub	sp, sp, #16
.LCFI261:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 5812 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5815 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5817 15
	ldr	r3, .L859
	ldr	r3, [r3]
	.loc 1 5817 5
	cmp	r3, #0
	bne	.L856
	.loc 1 5819 10
	mvn	r3, #126
	b	.L858
.L856:
	.loc 1 5822 23
	ldr	r3, .L859
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5822 42
	ldr	r3, .L859
	ldr	r3, [r3]
	.loc 1 5822 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #42
	blx	r4
.LVL159:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5826 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #7
	sxtb	r2, r3
	.loc 1 5826 56
	ldrsb	r3, [sp, #7]
	and	r3, r3, #7
	sxtb	r3, r3
	.loc 1 5826 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5826 12
	strb	r3, [sp, #14]
	.loc 1 5828 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #42
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5828 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5832 9
	ldrsb	r3, [sp, #15]
.L858:
	.loc 1 5833 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI262:
	@ sp needed
	pop	{r4, pc}
.L860:
	.align	2
.L859:
	.word	p_bma2x2
.LFE87:
	.size	bma2x2_set_tap_durn, .-bma2x2_set_tap_durn
	.section	.text.bma2x2_get_tap_shock,"ax",%progbits
	.align	1
	.global	bma2x2_get_tap_shock
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_tap_shock, %function
bma2x2_get_tap_shock:
.LFB88:
	.loc 1 5854 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI263:
	sub	sp, sp, #16
.LCFI264:
	str	r0, [sp, #4]
	.loc 1 5855 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5858 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5860 15
	ldr	r3, .L865
	ldr	r3, [r3]
	.loc 1 5860 5
	cmp	r3, #0
	bne	.L862
	.loc 1 5862 10
	mvn	r3, #126
	b	.L864
.L862:
	.loc 1 5865 23
	ldr	r3, .L865
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5865 42
	ldr	r3, .L865
	ldr	r3, [r3]
	.loc 1 5865 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #42
	blx	r4
.LVL160:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5869 40
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 5869 18
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 5872 9
	ldrsb	r3, [sp, #15]
.L864:
	.loc 1 5873 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI265:
	@ sp needed
	pop	{r4, pc}
.L866:
	.align	2
.L865:
	.word	p_bma2x2
.LFE88:
	.size	bma2x2_get_tap_shock, .-bma2x2_get_tap_shock
	.section	.text.bma2x2_set_tap_shock,"ax",%progbits
	.align	1
	.global	bma2x2_set_tap_shock
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_tap_shock, %function
bma2x2_set_tap_shock:
.LFB89:
	.loc 1 5894 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI266:
	sub	sp, sp, #16
.LCFI267:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 5895 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5898 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5900 15
	ldr	r3, .L871
	ldr	r3, [r3]
	.loc 1 5900 5
	cmp	r3, #0
	bne	.L868
	.loc 1 5902 10
	mvn	r3, #126
	b	.L870
.L868:
	.loc 1 5905 23
	ldr	r3, .L871
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5905 42
	ldr	r3, .L871
	ldr	r3, [r3]
	.loc 1 5905 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #42
	blx	r4
.LVL161:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5909 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #64
	sxtb	r2, r3
	.loc 1 5909 51
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 5909 57
	sxtb	r3, r3
	and	r3, r3, #64
	sxtb	r3, r3
	.loc 1 5909 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5909 12
	strb	r3, [sp, #14]
	.loc 1 5911 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #42
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5911 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5915 9
	ldrsb	r3, [sp, #15]
.L870:
	.loc 1 5916 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI268:
	@ sp needed
	pop	{r4, pc}
.L872:
	.align	2
.L871:
	.word	p_bma2x2
.LFE89:
	.size	bma2x2_set_tap_shock, .-bma2x2_set_tap_shock
	.section	.text.bma2x2_get_tap_quiet,"ax",%progbits
	.align	1
	.global	bma2x2_get_tap_quiet
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_tap_quiet, %function
bma2x2_get_tap_quiet:
.LFB90:
	.loc 1 5936 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI269:
	sub	sp, sp, #16
.LCFI270:
	str	r0, [sp, #4]
	.loc 1 5937 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5940 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5942 15
	ldr	r3, .L877
	ldr	r3, [r3]
	.loc 1 5942 5
	cmp	r3, #0
	bne	.L874
	.loc 1 5944 10
	mvn	r3, #126
	b	.L876
.L874:
	.loc 1 5947 23
	ldr	r3, .L877
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5947 42
	ldr	r3, .L877
	ldr	r3, [r3]
	.loc 1 5947 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #42
	blx	r4
.LVL162:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5951 40
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 5951 18
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 5954 9
	ldrsb	r3, [sp, #15]
.L876:
	.loc 1 5955 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI271:
	@ sp needed
	pop	{r4, pc}
.L878:
	.align	2
.L877:
	.word	p_bma2x2
.LFE90:
	.size	bma2x2_get_tap_quiet, .-bma2x2_get_tap_quiet
	.section	.text.bma2x2_set_tap_quiet,"ax",%progbits
	.align	1
	.global	bma2x2_set_tap_quiet
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_tap_quiet, %function
bma2x2_set_tap_quiet:
.LFB91:
	.loc 1 5975 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI272:
	sub	sp, sp, #16
.LCFI273:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 5976 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5979 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5981 15
	ldr	r3, .L883
	ldr	r3, [r3]
	.loc 1 5981 5
	cmp	r3, #0
	bne	.L880
	.loc 1 5983 10
	mvn	r3, #126
	b	.L882
.L880:
	.loc 1 5986 23
	ldr	r3, .L883
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5986 42
	ldr	r3, .L883
	ldr	r3, [r3]
	.loc 1 5986 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #42
	blx	r4
.LVL163:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5990 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 5990 51
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 5990 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5990 12
	strb	r3, [sp, #14]
	.loc 1 5992 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #42
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5992 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5996 9
	ldrsb	r3, [sp, #15]
.L882:
	.loc 1 5997 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI274:
	@ sp needed
	pop	{r4, pc}
.L884:
	.align	2
.L883:
	.word	p_bma2x2
.LFE91:
	.size	bma2x2_set_tap_quiet, .-bma2x2_set_tap_quiet
	.section	.text.bma2x2_get_tap_thres,"ax",%progbits
	.align	1
	.global	bma2x2_get_tap_thres
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_tap_thres, %function
bma2x2_get_tap_thres:
.LFB92:
	.loc 1 6022 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI275:
	sub	sp, sp, #16
.LCFI276:
	str	r0, [sp, #4]
	.loc 1 6023 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6026 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6028 15
	ldr	r3, .L889
	ldr	r3, [r3]
	.loc 1 6028 5
	cmp	r3, #0
	bne	.L886
	.loc 1 6030 10
	mvn	r3, #126
	b	.L888
.L886:
	.loc 1 6033 23
	ldr	r3, .L889
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6033 42
	ldr	r3, .L889
	ldr	r3, [r3]
	.loc 1 6033 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #43
	blx	r4
.LVL164:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6037 40
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #31
	uxtb	r2, r3
	.loc 1 6037 18
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 6040 9
	ldrsb	r3, [sp, #15]
.L888:
	.loc 1 6041 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI277:
	@ sp needed
	pop	{r4, pc}
.L890:
	.align	2
.L889:
	.word	p_bma2x2
.LFE92:
	.size	bma2x2_get_tap_thres, .-bma2x2_get_tap_thres
	.section	.text.bma2x2_set_tap_thres,"ax",%progbits
	.align	1
	.global	bma2x2_set_tap_thres
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_tap_thres, %function
bma2x2_set_tap_thres:
.LFB93:
	.loc 1 6065 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI278:
	sub	sp, sp, #16
.LCFI279:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 6066 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6069 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6071 15
	ldr	r3, .L895
	ldr	r3, [r3]
	.loc 1 6071 5
	cmp	r3, #0
	bne	.L892
	.loc 1 6073 10
	mvn	r3, #126
	b	.L894
.L892:
	.loc 1 6075 23
	ldr	r3, .L895
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6075 42
	ldr	r3, .L895
	ldr	r3, [r3]
	.loc 1 6075 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #43
	blx	r4
.LVL165:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6079 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #31
	sxtb	r2, r3
	.loc 1 6079 57
	ldrsb	r3, [sp, #7]
	and	r3, r3, #31
	sxtb	r3, r3
	.loc 1 6079 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6079 12
	strb	r3, [sp, #14]
	.loc 1 6081 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #43
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6081 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6085 9
	ldrsb	r3, [sp, #15]
.L894:
	.loc 1 6086 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI280:
	@ sp needed
	pop	{r4, pc}
.L896:
	.align	2
.L895:
	.word	p_bma2x2
.LFE93:
	.size	bma2x2_set_tap_thres, .-bma2x2_set_tap_thres
	.section	.text.bma2x2_get_tap_sample,"ax",%progbits
	.align	1
	.global	bma2x2_get_tap_sample
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_tap_sample, %function
bma2x2_get_tap_sample:
.LFB94:
	.loc 1 6109 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI281:
	sub	sp, sp, #16
.LCFI282:
	str	r0, [sp, #4]
	.loc 1 6110 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6113 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6115 15
	ldr	r3, .L901
	ldr	r3, [r3]
	.loc 1 6115 5
	cmp	r3, #0
	bne	.L898
	.loc 1 6117 10
	mvn	r3, #126
	b	.L900
.L898:
	.loc 1 6120 23
	ldr	r3, .L901
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6120 42
	ldr	r3, .L901
	ldr	r3, [r3]
	.loc 1 6120 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #43
	blx	r4
.LVL166:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6124 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #6
	uxtb	r2, r3
	.loc 1 6124 19
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 6127 9
	ldrsb	r3, [sp, #15]
.L900:
	.loc 1 6128 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI283:
	@ sp needed
	pop	{r4, pc}
.L902:
	.align	2
.L901:
	.word	p_bma2x2
.LFE94:
	.size	bma2x2_get_tap_sample, .-bma2x2_get_tap_sample
	.section	.text.bma2x2_set_tap_sample,"ax",%progbits
	.align	1
	.global	bma2x2_set_tap_sample
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_tap_sample, %function
bma2x2_set_tap_sample:
.LFB95:
	.loc 1 6151 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI284:
	sub	sp, sp, #16
.LCFI285:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 6152 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6155 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6157 15
	ldr	r3, .L907
	ldr	r3, [r3]
	.loc 1 6157 5
	cmp	r3, #0
	bne	.L904
	.loc 1 6159 10
	mvn	r3, #126
	b	.L906
.L904:
	.loc 1 6162 23
	ldr	r3, .L907
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6162 42
	ldr	r3, .L907
	ldr	r3, [r3]
	.loc 1 6162 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #43
	blx	r4
.LVL167:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6165 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #63
	sxtb	r2, r3
	.loc 1 6165 52
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 6165 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6165 12
	strb	r3, [sp, #14]
	.loc 1 6167 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #43
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6167 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6171 9
	ldrsb	r3, [sp, #15]
.L906:
	.loc 1 6172 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI286:
	@ sp needed
	pop	{r4, pc}
.L908:
	.align	2
.L907:
	.word	p_bma2x2
.LFE95:
	.size	bma2x2_set_tap_sample, .-bma2x2_set_tap_sample
	.section	.text.bma2x2_get_orient_mode,"ax",%progbits
	.align	1
	.global	bma2x2_get_orient_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_orient_mode, %function
bma2x2_get_orient_mode:
.LFB96:
	.loc 1 6196 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI287:
	sub	sp, sp, #16
.LCFI288:
	str	r0, [sp, #4]
	.loc 1 6197 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6200 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6202 15
	ldr	r3, .L913
	ldr	r3, [r3]
	.loc 1 6202 5
	cmp	r3, #0
	bne	.L910
	.loc 1 6204 10
	mvn	r3, #126
	b	.L912
.L910:
	.loc 1 6206 23
	ldr	r3, .L913
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6206 42
	ldr	r3, .L913
	ldr	r3, [r3]
	.loc 1 6206 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #44
	blx	r4
.LVL168:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6210 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 6210 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 6213 9
	ldrsb	r3, [sp, #15]
.L912:
	.loc 1 6214 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI289:
	@ sp needed
	pop	{r4, pc}
.L914:
	.align	2
.L913:
	.word	p_bma2x2
.LFE96:
	.size	bma2x2_get_orient_mode, .-bma2x2_get_orient_mode
	.section	.text.bma2x2_set_orient_mode,"ax",%progbits
	.align	1
	.global	bma2x2_set_orient_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_orient_mode, %function
bma2x2_set_orient_mode:
.LFB97:
	.loc 1 6238 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI290:
	sub	sp, sp, #16
.LCFI291:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 6239 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6242 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6244 15
	ldr	r3, .L919
	ldr	r3, [r3]
	.loc 1 6244 5
	cmp	r3, #0
	bne	.L916
	.loc 1 6246 10
	mvn	r3, #126
	b	.L918
.L916:
	.loc 1 6248 23
	ldr	r3, .L919
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6248 42
	ldr	r3, .L919
	ldr	r3, [r3]
	.loc 1 6248 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #44
	blx	r4
.LVL169:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6252 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #3
	sxtb	r2, r3
	.loc 1 6252 59
	ldrsb	r3, [sp, #7]
	and	r3, r3, #3
	sxtb	r3, r3
	.loc 1 6252 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6252 12
	strb	r3, [sp, #14]
	.loc 1 6254 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #44
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6254 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6258 9
	ldrsb	r3, [sp, #15]
.L918:
	.loc 1 6259 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI292:
	@ sp needed
	pop	{r4, pc}
.L920:
	.align	2
.L919:
	.word	p_bma2x2
.LFE97:
	.size	bma2x2_set_orient_mode, .-bma2x2_set_orient_mode
	.section	.text.bma2x2_get_orient_block,"ax",%progbits
	.align	1
	.global	bma2x2_get_orient_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_orient_block, %function
bma2x2_get_orient_block:
.LFB98:
	.loc 1 6289 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI293:
	sub	sp, sp, #16
.LCFI294:
	str	r0, [sp, #4]
	.loc 1 6290 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6293 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6295 15
	ldr	r3, .L925
	ldr	r3, [r3]
	.loc 1 6295 5
	cmp	r3, #0
	bne	.L922
	.loc 1 6297 10
	mvn	r3, #126
	b	.L924
.L922:
	.loc 1 6300 23
	ldr	r3, .L925
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6300 42
	ldr	r3, .L925
	ldr	r3, [r3]
	.loc 1 6300 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #44
	blx	r4
.LVL170:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6304 43
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 6304 21
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 6307 9
	ldrsb	r3, [sp, #15]
.L924:
	.loc 1 6308 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI295:
	@ sp needed
	pop	{r4, pc}
.L926:
	.align	2
.L925:
	.word	p_bma2x2
.LFE98:
	.size	bma2x2_get_orient_block, .-bma2x2_get_orient_block
	.section	.text.bma2x2_set_orient_block,"ax",%progbits
	.align	1
	.global	bma2x2_set_orient_block
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_orient_block, %function
bma2x2_set_orient_block:
.LFB99:
	.loc 1 6337 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI296:
	sub	sp, sp, #16
.LCFI297:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 6338 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6341 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6343 15
	ldr	r3, .L931
	ldr	r3, [r3]
	.loc 1 6343 5
	cmp	r3, #0
	bne	.L928
	.loc 1 6345 10
	mvn	r3, #126
	b	.L930
.L928:
	.loc 1 6348 23
	ldr	r3, .L931
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6348 42
	ldr	r3, .L931
	ldr	r3, [r3]
	.loc 1 6348 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #44
	blx	r4
.LVL171:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6352 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #12
	sxtb	r2, r3
	.loc 1 6352 54
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 6352 60
	sxtb	r3, r3
	and	r3, r3, #12
	sxtb	r3, r3
	.loc 1 6352 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6352 12
	strb	r3, [sp, #14]
	.loc 1 6354 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #44
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6354 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6358 9
	ldrsb	r3, [sp, #15]
.L930:
	.loc 1 6359 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI298:
	@ sp needed
	pop	{r4, pc}
.L932:
	.align	2
.L931:
	.word	p_bma2x2
.LFE99:
	.size	bma2x2_set_orient_block, .-bma2x2_set_orient_block
	.section	.text.bma2x2_get_orient_hyst,"ax",%progbits
	.align	1
	.global	bma2x2_get_orient_hyst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_orient_hyst, %function
bma2x2_get_orient_hyst:
.LFB100:
	.loc 1 6377 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI299:
	sub	sp, sp, #16
.LCFI300:
	str	r0, [sp, #4]
	.loc 1 6378 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6381 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6383 15
	ldr	r3, .L937
	ldr	r3, [r3]
	.loc 1 6383 5
	cmp	r3, #0
	bne	.L934
	.loc 1 6385 10
	mvn	r3, #126
	b	.L936
.L934:
	.loc 1 6388 23
	ldr	r3, .L937
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6388 42
	ldr	r3, .L937
	ldr	r3, [r3]
	.loc 1 6388 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #44
	blx	r4
.LVL172:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6392 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #7
	uxtb	r2, r3
	.loc 1 6392 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 6395 9
	ldrsb	r3, [sp, #15]
.L936:
	.loc 1 6396 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI301:
	@ sp needed
	pop	{r4, pc}
.L938:
	.align	2
.L937:
	.word	p_bma2x2
.LFE100:
	.size	bma2x2_get_orient_hyst, .-bma2x2_get_orient_hyst
	.section	.text.bma2x2_set_orient_hyst,"ax",%progbits
	.align	1
	.global	bma2x2_set_orient_hyst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_orient_hyst, %function
bma2x2_set_orient_hyst:
.LFB101:
	.loc 1 6414 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI302:
	sub	sp, sp, #16
.LCFI303:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 6415 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6418 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6420 15
	ldr	r3, .L943
	ldr	r3, [r3]
	.loc 1 6420 5
	cmp	r3, #0
	bne	.L940
	.loc 1 6422 10
	mvn	r3, #126
	b	.L942
.L940:
	.loc 1 6425 23
	ldr	r3, .L943
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6425 42
	ldr	r3, .L943
	ldr	r3, [r3]
	.loc 1 6425 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #44
	blx	r4
.LVL173:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6429 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #112
	sxtb	r2, r3
	.loc 1 6429 53
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 6429 59
	sxtb	r3, r3
	and	r3, r3, #112
	sxtb	r3, r3
	.loc 1 6429 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6429 12
	strb	r3, [sp, #14]
	.loc 1 6431 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #44
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6431 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6435 9
	ldrsb	r3, [sp, #15]
.L942:
	.loc 1 6436 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI304:
	@ sp needed
	pop	{r4, pc}
.L944:
	.align	2
.L943:
	.word	p_bma2x2
.LFE101:
	.size	bma2x2_set_orient_hyst, .-bma2x2_set_orient_hyst
	.section	.text.bma2x2_get_theta,"ax",%progbits
	.align	1
	.global	bma2x2_get_theta
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_theta, %function
bma2x2_get_theta:
.LFB102:
	.loc 1 6463 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI305:
	sub	sp, sp, #16
.LCFI306:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 6464 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6467 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6469 15
	ldr	r3, .L954
	ldr	r3, [r3]
	.loc 1 6469 5
	cmp	r3, #0
	bne	.L946
	.loc 1 6471 10
	mvn	r3, #126
	b	.L952
.L946:
	.loc 1 6473 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L948
	cmp	r3, #1
	beq	.L949
	b	.L953
.L948:
	.loc 1 6477 23
	ldr	r3, .L954
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6477 42
	ldr	r3, .L954
	ldr	r3, [r3]
	.loc 1 6477 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #45
	blx	r4
.LVL174:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6481 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #63
	uxtb	r2, r3
	.loc 1 6481 14
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 6483 3
	b	.L951
.L949:
	.loc 1 6486 23
	ldr	r3, .L954
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6486 42
	ldr	r3, .L954
	ldr	r3, [r3]
	.loc 1 6486 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #46
	blx	r4
.LVL175:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6490 14
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 6491 3
	b	.L951
.L953:
	.loc 1 6493 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 6494 3
	nop
.L951:
	.loc 1 6497 9
	ldrsb	r3, [sp, #15]
.L952:
	.loc 1 6498 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI307:
	@ sp needed
	pop	{r4, pc}
.L955:
	.align	2
.L954:
	.word	p_bma2x2
.LFE102:
	.size	bma2x2_get_theta, .-bma2x2_get_theta
	.section	.text.bma2x2_set_theta,"ax",%progbits
	.align	1
	.global	bma2x2_set_theta
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_theta, %function
bma2x2_set_theta:
.LFB103:
	.loc 1 6525 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI308:
	sub	sp, sp, #16
.LCFI309:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 6526 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6529 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6531 15
	ldr	r3, .L965
	ldr	r3, [r3]
	.loc 1 6531 5
	cmp	r3, #0
	bne	.L957
	.loc 1 6533 10
	mvn	r3, #126
	b	.L963
.L957:
	.loc 1 6535 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L959
	cmp	r3, #1
	beq	.L960
	b	.L964
.L959:
	.loc 1 6539 23
	ldr	r3, .L965
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6539 42
	ldr	r3, .L965
	ldr	r3, [r3]
	.loc 1 6539 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #45
	blx	r4
.LVL176:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6543 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #63
	sxtb	r2, r3
	.loc 1 6543 53
	ldrsb	r3, [sp, #6]
	and	r3, r3, #63
	sxtb	r3, r3
	.loc 1 6543 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6543 12
	strb	r3, [sp, #14]
	.loc 1 6545 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #45
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6545 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6548 3
	b	.L962
.L960:
	.loc 1 6551 12
	ldrb	r3, [sp, #6]
	strb	r3, [sp, #14]
	.loc 1 6552 15
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #46
	bl	bma2x2_write_reg
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6555 3
	b	.L962
.L964:
	.loc 1 6557 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 6558 3
	nop
.L962:
	.loc 1 6561 9
	ldrsb	r3, [sp, #15]
.L963:
	.loc 1 6562 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI310:
	@ sp needed
	pop	{r4, pc}
.L966:
	.align	2
.L965:
	.word	p_bma2x2
.LFE103:
	.size	bma2x2_set_theta, .-bma2x2_set_theta
	.section	.text.bma2x2_get_orient_enable,"ax",%progbits
	.align	1
	.global	bma2x2_get_orient_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_orient_enable, %function
bma2x2_get_orient_enable:
.LFB104:
	.loc 1 6583 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI311:
	sub	sp, sp, #16
.LCFI312:
	str	r0, [sp, #4]
	.loc 1 6584 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6587 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6589 15
	ldr	r3, .L971
	ldr	r3, [r3]
	.loc 1 6589 5
	cmp	r3, #0
	bne	.L968
	.loc 1 6591 10
	mvn	r3, #126
	b	.L970
.L968:
	.loc 1 6593 23
	ldr	r3, .L971
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6593 42
	ldr	r3, .L971
	ldr	r3, [r3]
	.loc 1 6593 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #45
	blx	r4
.LVL177:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6597 44
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 6597 22
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 6600 9
	ldrsb	r3, [sp, #15]
.L970:
	.loc 1 6601 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI313:
	@ sp needed
	pop	{r4, pc}
.L972:
	.align	2
.L971:
	.word	p_bma2x2
.LFE104:
	.size	bma2x2_get_orient_enable, .-bma2x2_get_orient_enable
	.section	.text.bma2x2_set_orient_enable,"ax",%progbits
	.align	1
	.global	bma2x2_set_orient_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_orient_enable, %function
bma2x2_set_orient_enable:
.LFB105:
	.loc 1 6622 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI314:
	sub	sp, sp, #16
.LCFI315:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 6623 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6626 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6628 15
	ldr	r3, .L977
	ldr	r3, [r3]
	.loc 1 6628 5
	cmp	r3, #0
	bne	.L974
	.loc 1 6630 10
	mvn	r3, #126
	b	.L976
.L974:
	.loc 1 6632 23
	ldr	r3, .L977
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6632 42
	ldr	r3, .L977
	ldr	r3, [r3]
	.loc 1 6632 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #45
	blx	r4
.LVL178:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6636 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #64
	sxtb	r2, r3
	.loc 1 6636 55
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 6636 61
	sxtb	r3, r3
	and	r3, r3, #64
	sxtb	r3, r3
	.loc 1 6636 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6636 12
	strb	r3, [sp, #14]
	.loc 1 6638 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #45
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6638 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6642 9
	ldrsb	r3, [sp, #15]
.L976:
	.loc 1 6643 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI316:
	@ sp needed
	pop	{r4, pc}
.L978:
	.align	2
.L977:
	.word	p_bma2x2
.LFE105:
	.size	bma2x2_set_orient_enable, .-bma2x2_set_orient_enable
	.section	.text.bma2x2_get_flat_hyst,"ax",%progbits
	.align	1
	.global	bma2x2_get_flat_hyst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_flat_hyst, %function
bma2x2_get_flat_hyst:
.LFB106:
	.loc 1 6663 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI317:
	sub	sp, sp, #16
.LCFI318:
	str	r0, [sp, #4]
	.loc 1 6664 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6667 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6669 15
	ldr	r3, .L983
	ldr	r3, [r3]
	.loc 1 6669 5
	cmp	r3, #0
	bne	.L980
	.loc 1 6671 10
	mvn	r3, #126
	b	.L982
.L980:
	.loc 1 6673 23
	ldr	r3, .L983
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6673 42
	ldr	r3, .L983
	ldr	r3, [r3]
	.loc 1 6673 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #47
	blx	r4
.LVL179:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6677 40
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #7
	uxtb	r2, r3
	.loc 1 6677 18
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 6680 9
	ldrsb	r3, [sp, #15]
.L982:
	.loc 1 6681 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI319:
	@ sp needed
	pop	{r4, pc}
.L984:
	.align	2
.L983:
	.word	p_bma2x2
.LFE106:
	.size	bma2x2_get_flat_hyst, .-bma2x2_get_flat_hyst
	.section	.text.bma2x2_set_flat_hyst,"ax",%progbits
	.align	1
	.global	bma2x2_set_flat_hyst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_flat_hyst, %function
bma2x2_set_flat_hyst:
.LFB107:
	.loc 1 6701 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI320:
	sub	sp, sp, #16
.LCFI321:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 6702 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6705 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6707 15
	ldr	r3, .L989
	ldr	r3, [r3]
	.loc 1 6707 5
	cmp	r3, #0
	bne	.L986
	.loc 1 6709 10
	mvn	r3, #126
	b	.L988
.L986:
	.loc 1 6711 23
	ldr	r3, .L989
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6711 42
	ldr	r3, .L989
	ldr	r3, [r3]
	.loc 1 6711 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #47
	blx	r4
.LVL180:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6715 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #7
	sxtb	r2, r3
	.loc 1 6715 57
	ldrsb	r3, [sp, #7]
	and	r3, r3, #7
	sxtb	r3, r3
	.loc 1 6715 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6715 12
	strb	r3, [sp, #14]
	.loc 1 6717 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #47
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6717 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6721 9
	ldrsb	r3, [sp, #15]
.L988:
	.loc 1 6722 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI322:
	@ sp needed
	pop	{r4, pc}
.L990:
	.align	2
.L989:
	.word	p_bma2x2
.LFE107:
	.size	bma2x2_set_flat_hyst, .-bma2x2_set_flat_hyst
	.section	.text.bma2x2_get_flat_hold_time,"ax",%progbits
	.align	1
	.global	bma2x2_get_flat_hold_time
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_flat_hold_time, %function
bma2x2_get_flat_hold_time:
.LFB108:
	.loc 1 6747 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI323:
	sub	sp, sp, #16
.LCFI324:
	str	r0, [sp, #4]
	.loc 1 6748 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6751 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6753 15
	ldr	r3, .L995
	ldr	r3, [r3]
	.loc 1 6753 5
	cmp	r3, #0
	bne	.L992
	.loc 1 6755 10
	mvn	r3, #126
	b	.L994
.L992:
	.loc 1 6758 23
	ldr	r3, .L995
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6758 42
	ldr	r3, .L995
	ldr	r3, [r3]
	.loc 1 6758 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #47
	blx	r4
.LVL181:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6762 45
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 6762 23
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 6765 9
	ldrsb	r3, [sp, #15]
.L994:
	.loc 1 6766 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI325:
	@ sp needed
	pop	{r4, pc}
.L996:
	.align	2
.L995:
	.word	p_bma2x2
.LFE108:
	.size	bma2x2_get_flat_hold_time, .-bma2x2_get_flat_hold_time
	.section	.text.bma2x2_set_flat_hold_time,"ax",%progbits
	.align	1
	.global	bma2x2_set_flat_hold_time
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_flat_hold_time, %function
bma2x2_set_flat_hold_time:
.LFB109:
	.loc 1 6791 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI326:
	sub	sp, sp, #16
.LCFI327:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 6792 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6795 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6797 15
	ldr	r3, .L1001
	ldr	r3, [r3]
	.loc 1 6797 5
	cmp	r3, #0
	bne	.L998
	.loc 1 6799 10
	mvn	r3, #126
	b	.L1000
.L998:
	.loc 1 6802 23
	ldr	r3, .L1001
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6802 42
	ldr	r3, .L1001
	ldr	r3, [r3]
	.loc 1 6802 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #47
	blx	r4
.LVL182:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6806 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #48
	sxtb	r2, r3
	.loc 1 6806 56
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 6806 62
	sxtb	r3, r3
	and	r3, r3, #48
	sxtb	r3, r3
	.loc 1 6806 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6806 12
	strb	r3, [sp, #14]
	.loc 1 6808 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #47
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6808 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6812 9
	ldrsb	r3, [sp, #15]
.L1000:
	.loc 1 6813 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI328:
	@ sp needed
	pop	{r4, pc}
.L1002:
	.align	2
.L1001:
	.word	p_bma2x2
.LFE109:
	.size	bma2x2_set_flat_hold_time, .-bma2x2_set_flat_hold_time
	.section	.text.bma2x2_get_fifo_wml_trig,"ax",%progbits
	.align	1
	.global	bma2x2_get_fifo_wml_trig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_fifo_wml_trig, %function
bma2x2_get_fifo_wml_trig:
.LFB110:
	.loc 1 6833 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI329:
	sub	sp, sp, #16
.LCFI330:
	str	r0, [sp, #4]
	.loc 1 6834 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6837 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6839 15
	ldr	r3, .L1007
	ldr	r3, [r3]
	.loc 1 6839 5
	cmp	r3, #0
	bne	.L1004
	.loc 1 6841 10
	mvn	r3, #126
	b	.L1006
.L1004:
	.loc 1 6844 23
	ldr	r3, .L1007
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6844 42
	ldr	r3, .L1007
	ldr	r3, [r3]
	.loc 1 6844 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #48
	blx	r4
.LVL183:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6848 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #63
	uxtb	r2, r3
	.loc 1 6848 19
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 6851 9
	ldrsb	r3, [sp, #15]
.L1006:
	.loc 1 6852 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI331:
	@ sp needed
	pop	{r4, pc}
.L1008:
	.align	2
.L1007:
	.word	p_bma2x2
.LFE110:
	.size	bma2x2_get_fifo_wml_trig, .-bma2x2_get_fifo_wml_trig
	.section	.text.bma2x2_set_fifo_wml_trig,"ax",%progbits
	.align	1
	.global	bma2x2_set_fifo_wml_trig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_fifo_wml_trig, %function
bma2x2_set_fifo_wml_trig:
.LFB111:
	.loc 1 6872 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI332:
	sub	sp, sp, #16
.LCFI333:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 6873 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6874 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 6877 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6879 15
	ldr	r3, .L1015
	ldr	r3, [r3]
	.loc 1 6879 5
	cmp	r3, #0
	bne	.L1010
	.loc 1 6881 10
	mvn	r3, #126
	b	.L1014
.L1010:
	.loc 1 6883 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #31
	bhi	.L1012
	.loc 1 6885 23
	ldr	r3, .L1015
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6885 42
	ldr	r3, .L1015
	ldr	r3, [r3]
	.loc 1 6885 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #48
	blx	r4
.LVL184:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6889 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #63
	sxtb	r2, r3
	.loc 1 6889 58
	ldrsb	r3, [sp, #7]
	and	r3, r3, #63
	sxtb	r3, r3
	.loc 1 6889 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6889 12
	strb	r3, [sp, #14]
	.loc 1 6892 16
	add	r3, sp, #13
	mov	r0, r3
	bl	bma2x2_get_power_mode
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6892 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6893 16
	movs	r0, #5
	bl	bma2x2_set_power_mode
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6893 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6894 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #48
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6894 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6897 16
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	mov	r0, r3
	bl	bma2x2_set_power_mode
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6897 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L1013
.L1012:
	.loc 1 6899 12
	movs	r3, #254
	strb	r3, [sp, #15]
.L1013:
	.loc 1 6902 9
	ldrsb	r3, [sp, #15]
.L1014:
	.loc 1 6903 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI334:
	@ sp needed
	pop	{r4, pc}
.L1016:
	.align	2
.L1015:
	.word	p_bma2x2
.LFE111:
	.size	bma2x2_set_fifo_wml_trig, .-bma2x2_set_fifo_wml_trig
	.section	.text.bma2x2_get_selftest_axis,"ax",%progbits
	.align	1
	.global	bma2x2_get_selftest_axis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_selftest_axis, %function
bma2x2_get_selftest_axis:
.LFB112:
	.loc 1 6927 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI335:
	sub	sp, sp, #16
.LCFI336:
	str	r0, [sp, #4]
	.loc 1 6928 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6931 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6933 15
	ldr	r3, .L1021
	ldr	r3, [r3]
	.loc 1 6933 5
	cmp	r3, #0
	bne	.L1018
	.loc 1 6935 10
	mvn	r3, #126
	b	.L1020
.L1018:
	.loc 1 6938 23
	ldr	r3, .L1021
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6938 42
	ldr	r3, .L1021
	ldr	r3, [r3]
	.loc 1 6938 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL185:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6942 44
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 6942 22
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 6945 9
	ldrsb	r3, [sp, #15]
.L1020:
	.loc 1 6946 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI337:
	@ sp needed
	pop	{r4, pc}
.L1022:
	.align	2
.L1021:
	.word	p_bma2x2
.LFE112:
	.size	bma2x2_get_selftest_axis, .-bma2x2_get_selftest_axis
	.section	.text.bma2x2_set_selftest_axis,"ax",%progbits
	.align	1
	.global	bma2x2_set_selftest_axis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_selftest_axis, %function
bma2x2_set_selftest_axis:
.LFB113:
	.loc 1 6970 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI338:
	sub	sp, sp, #16
.LCFI339:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 6971 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6974 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6976 15
	ldr	r3, .L1029
	ldr	r3, [r3]
	.loc 1 6976 5
	cmp	r3, #0
	bne	.L1024
	.loc 1 6978 10
	mvn	r3, #126
	b	.L1028
.L1024:
	.loc 1 6980 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L1026
	.loc 1 6982 23
	ldr	r3, .L1029
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6982 42
	ldr	r3, .L1029
	ldr	r3, [r3]
	.loc 1 6982 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL186:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6986 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #3
	sxtb	r2, r3
	.loc 1 6986 61
	ldrsb	r3, [sp, #7]
	and	r3, r3, #3
	sxtb	r3, r3
	.loc 1 6986 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6986 12
	strb	r3, [sp, #14]
	.loc 1 6988 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #50
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6988 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L1027
.L1026:
	.loc 1 6992 12
	movs	r3, #254
	strb	r3, [sp, #15]
.L1027:
	.loc 1 6995 9
	ldrsb	r3, [sp, #15]
.L1028:
	.loc 1 6996 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI340:
	@ sp needed
	pop	{r4, pc}
.L1030:
	.align	2
.L1029:
	.word	p_bma2x2
.LFE113:
	.size	bma2x2_set_selftest_axis, .-bma2x2_set_selftest_axis
	.section	.text.bma2x2_get_selftest_sign,"ax",%progbits
	.align	1
	.global	bma2x2_get_selftest_sign
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_selftest_sign, %function
bma2x2_get_selftest_sign:
.LFB114:
	.loc 1 7018 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI341:
	sub	sp, sp, #16
.LCFI342:
	str	r0, [sp, #4]
	.loc 1 7019 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7022 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7024 15
	ldr	r3, .L1035
	ldr	r3, [r3]
	.loc 1 7024 5
	cmp	r3, #0
	bne	.L1032
	.loc 1 7026 10
	mvn	r3, #126
	b	.L1034
.L1032:
	.loc 1 7029 23
	ldr	r3, .L1035
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7029 42
	ldr	r3, .L1035
	ldr	r3, [r3]
	.loc 1 7029 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL187:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7033 44
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 7033 22
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 7036 9
	ldrsb	r3, [sp, #15]
.L1034:
	.loc 1 7037 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI343:
	@ sp needed
	pop	{r4, pc}
.L1036:
	.align	2
.L1035:
	.word	p_bma2x2
.LFE114:
	.size	bma2x2_get_selftest_sign, .-bma2x2_get_selftest_sign
	.section	.text.bma2x2_set_selftest_sign,"ax",%progbits
	.align	1
	.global	bma2x2_set_selftest_sign
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_selftest_sign, %function
bma2x2_set_selftest_sign:
.LFB115:
	.loc 1 7059 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI344:
	sub	sp, sp, #16
.LCFI345:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 7060 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7063 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7065 15
	ldr	r3, .L1043
	ldr	r3, [r3]
	.loc 1 7065 5
	cmp	r3, #0
	bne	.L1038
	.loc 1 7067 10
	mvn	r3, #126
	b	.L1042
.L1038:
	.loc 1 7069 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L1040
	.loc 1 7072 23
	ldr	r3, .L1043
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7072 42
	ldr	r3, .L1043
	ldr	r3, [r3]
	.loc 1 7072 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL188:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7076 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 7076 55
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 7076 61
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 7076 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7076 12
	strb	r3, [sp, #14]
	.loc 1 7078 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #50
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7078 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L1041
.L1040:
	.loc 1 7082 12
	movs	r3, #254
	strb	r3, [sp, #15]
.L1041:
	.loc 1 7085 9
	ldrsb	r3, [sp, #15]
.L1042:
	.loc 1 7086 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI346:
	@ sp needed
	pop	{r4, pc}
.L1044:
	.align	2
.L1043:
	.word	p_bma2x2
.LFE115:
	.size	bma2x2_set_selftest_sign, .-bma2x2_set_selftest_sign
	.section	.text.bma2x2_get_nvmprog_mode,"ax",%progbits
	.align	1
	.global	bma2x2_get_nvmprog_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_nvmprog_mode, %function
bma2x2_get_nvmprog_mode:
.LFB116:
	.loc 1 7106 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI347:
	sub	sp, sp, #16
.LCFI348:
	str	r0, [sp, #4]
	.loc 1 7107 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7110 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7112 15
	ldr	r3, .L1049
	ldr	r3, [r3]
	.loc 1 7112 5
	cmp	r3, #0
	bne	.L1046
	.loc 1 7113 12
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L1047
.L1046:
	.loc 1 7116 22
	ldr	r3, .L1049
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7116 41
	ldr	r3, .L1049
	ldr	r3, [r3]
	.loc 1 7116 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL189:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7120 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 7120 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
.L1047:
	.loc 1 7123 9
	ldrsb	r3, [sp, #15]
	.loc 1 7124 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI349:
	@ sp needed
	pop	{r4, pc}
.L1050:
	.align	2
.L1049:
	.word	p_bma2x2
.LFE116:
	.size	bma2x2_get_nvmprog_mode, .-bma2x2_get_nvmprog_mode
	.section	.text.bma2x2_set_nvmprog_mode,"ax",%progbits
	.align	1
	.global	bma2x2_set_nvmprog_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_nvmprog_mode, %function
bma2x2_set_nvmprog_mode:
.LFB117:
	.loc 1 7143 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI350:
	sub	sp, sp, #16
.LCFI351:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 7144 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7147 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7149 15
	ldr	r3, .L1055
	ldr	r3, [r3]
	.loc 1 7149 5
	cmp	r3, #0
	bne	.L1052
	.loc 1 7151 12
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L1053
.L1052:
	.loc 1 7154 22
	ldr	r3, .L1055
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7154 41
	ldr	r3, .L1055
	ldr	r3, [r3]
	.loc 1 7154 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL190:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7158 23
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 7158 59
	ldrsb	r3, [sp, #7]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 7158 34
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7158 11
	strb	r3, [sp, #14]
	.loc 1 7160 15
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #51
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7160 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
.L1053:
	.loc 1 7164 9
	ldrsb	r3, [sp, #15]
	.loc 1 7165 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI352:
	@ sp needed
	pop	{r4, pc}
.L1056:
	.align	2
.L1055:
	.word	p_bma2x2
.LFE117:
	.size	bma2x2_set_nvmprog_mode, .-bma2x2_set_nvmprog_mode
	.section	.text.bma2x2_set_nvprog_trig,"ax",%progbits
	.align	1
	.global	bma2x2_set_nvprog_trig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_nvprog_trig, %function
bma2x2_set_nvprog_trig:
.LFB118:
	.loc 1 7187 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI353:
	sub	sp, sp, #16
.LCFI354:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 7188 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7191 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7193 15
	ldr	r3, .L1061
	ldr	r3, [r3]
	.loc 1 7193 5
	cmp	r3, #0
	bne	.L1058
	.loc 1 7195 12
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L1059
.L1058:
	.loc 1 7198 22
	ldr	r3, .L1061
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7198 41
	ldr	r3, .L1061
	ldr	r3, [r3]
	.loc 1 7198 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL191:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7202 23
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 7202 52
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 7202 58
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 7202 34
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7202 11
	strb	r3, [sp, #14]
	.loc 1 7204 15
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #51
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7204 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
.L1059:
	.loc 1 7208 9
	ldrsb	r3, [sp, #15]
	.loc 1 7209 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI355:
	@ sp needed
	pop	{r4, pc}
.L1062:
	.align	2
.L1061:
	.word	p_bma2x2
.LFE118:
	.size	bma2x2_set_nvprog_trig, .-bma2x2_set_nvprog_trig
	.section	.text.bma2x2_get_nvmprog_ready,"ax",%progbits
	.align	1
	.global	bma2x2_get_nvmprog_ready
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_nvmprog_ready, %function
bma2x2_get_nvmprog_ready:
.LFB119:
	.loc 1 7230 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI356:
	sub	sp, sp, #16
.LCFI357:
	str	r0, [sp, #4]
	.loc 1 7233 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7234 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7236 15
	ldr	r3, .L1067
	ldr	r3, [r3]
	.loc 1 7236 5
	cmp	r3, #0
	bne	.L1064
	.loc 1 7238 12
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L1065
.L1064:
	.loc 1 7241 22
	ldr	r3, .L1067
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7241 41
	ldr	r3, .L1067
	ldr	r3, [r3]
	.loc 1 7241 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL192:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7245 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 7245 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
.L1065:
	.loc 1 7248 9
	ldrsb	r3, [sp, #15]
	.loc 1 7249 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI358:
	@ sp needed
	pop	{r4, pc}
.L1068:
	.align	2
.L1067:
	.word	p_bma2x2
.LFE119:
	.size	bma2x2_get_nvmprog_ready, .-bma2x2_get_nvmprog_ready
	.section	.text.bma2x2_get_nvmprog_remain,"ax",%progbits
	.align	1
	.global	bma2x2_get_nvmprog_remain
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_nvmprog_remain, %function
bma2x2_get_nvmprog_remain:
.LFB120:
	.loc 1 7270 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI359:
	sub	sp, sp, #16
.LCFI360:
	str	r0, [sp, #4]
	.loc 1 7273 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7274 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7276 18
	ldr	r3, .L1073
	ldr	r3, [r3]
	.loc 1 7276 5
	cmp	r3, #0
	bne	.L1070
	.loc 1 7277 12
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L1071
.L1070:
	.loc 1 7280 22
	ldr	r3, .L1073
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7280 41
	ldr	r3, .L1073
	ldr	r3, [r3]
	.loc 1 7280 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL193:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7284 43
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r2, r3
	.loc 1 7284 21
	ldr	r3, [sp, #4]
	strb	r2, [r3]
.L1071:
	.loc 1 7287 9
	ldrsb	r3, [sp, #15]
	.loc 1 7288 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI361:
	@ sp needed
	pop	{r4, pc}
.L1074:
	.align	2
.L1073:
	.word	p_bma2x2
.LFE120:
	.size	bma2x2_get_nvmprog_remain, .-bma2x2_get_nvmprog_remain
	.section	.text.bma2x2_get_spi3,"ax",%progbits
	.align	1
	.global	bma2x2_get_spi3
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_spi3, %function
bma2x2_get_spi3:
.LFB121:
	.loc 1 7310 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI362:
	sub	sp, sp, #16
.LCFI363:
	str	r0, [sp, #4]
	.loc 1 7311 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7314 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7316 15
	ldr	r3, .L1079
	ldr	r3, [r3]
	.loc 1 7316 5
	cmp	r3, #0
	bne	.L1076
	.loc 1 7318 10
	mvn	r3, #126
	b	.L1078
.L1076:
	.loc 1 7321 23
	ldr	r3, .L1079
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7321 42
	ldr	r3, .L1079
	ldr	r3, [r3]
	.loc 1 7321 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL194:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7325 35
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 7325 13
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 7328 9
	ldrsb	r3, [sp, #15]
.L1078:
	.loc 1 7329 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI364:
	@ sp needed
	pop	{r4, pc}
.L1080:
	.align	2
.L1079:
	.word	p_bma2x2
.LFE121:
	.size	bma2x2_get_spi3, .-bma2x2_get_spi3
	.section	.text.bma2x2_set_spi3,"ax",%progbits
	.align	1
	.global	bma2x2_set_spi3
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_spi3, %function
bma2x2_set_spi3:
.LFB122:
	.loc 1 7351 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI365:
	sub	sp, sp, #16
.LCFI366:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 7352 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7355 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7357 15
	ldr	r3, .L1085
	ldr	r3, [r3]
	.loc 1 7357 5
	cmp	r3, #0
	bne	.L1082
	.loc 1 7359 10
	mvn	r3, #126
	b	.L1084
.L1082:
	.loc 1 7362 23
	ldr	r3, .L1085
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7362 42
	ldr	r3, .L1085
	ldr	r3, [r3]
	.loc 1 7362 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL195:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7366 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 7366 52
	ldrsb	r3, [sp, #7]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 7366 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7366 12
	strb	r3, [sp, #14]
	.loc 1 7368 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #52
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7368 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 7372 9
	ldrsb	r3, [sp, #15]
.L1084:
	.loc 1 7373 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI367:
	@ sp needed
	pop	{r4, pc}
.L1086:
	.align	2
.L1085:
	.word	p_bma2x2
.LFE122:
	.size	bma2x2_set_spi3, .-bma2x2_set_spi3
	.section	.text.bma2x2_get_i2c_wdt,"ax",%progbits
	.align	1
	.global	bma2x2_get_i2c_wdt
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_i2c_wdt, %function
bma2x2_get_i2c_wdt:
.LFB123:
	.loc 1 7407 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI368:
	sub	sp, sp, #16
.LCFI369:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 7408 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7411 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7413 15
	ldr	r3, .L1096
	ldr	r3, [r3]
	.loc 1 7413 5
	cmp	r3, #0
	bne	.L1088
	.loc 1 7415 10
	mvn	r3, #126
	b	.L1094
.L1088:
	.loc 1 7417 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1090
	cmp	r3, #1
	beq	.L1091
	b	.L1095
.L1090:
	.loc 1 7419 23
	ldr	r3, .L1096
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7419 42
	ldr	r3, .L1096
	ldr	r3, [r3]
	.loc 1 7419 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL196:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7423 38
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 7423 16
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 7425 3
	b	.L1093
.L1091:
	.loc 1 7427 23
	ldr	r3, .L1096
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7427 42
	ldr	r3, .L1096
	ldr	r3, [r3]
	.loc 1 7427 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL197:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7431 38
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 7431 16
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 7433 3
	b	.L1093
.L1095:
	.loc 1 7435 12
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 7436 3
	nop
.L1093:
	.loc 1 7439 9
	ldrsb	r3, [sp, #15]
.L1094:
	.loc 1 7440 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI370:
	@ sp needed
	pop	{r4, pc}
.L1097:
	.align	2
.L1096:
	.word	p_bma2x2
.LFE123:
	.size	bma2x2_get_i2c_wdt, .-bma2x2_get_i2c_wdt
	.section	.text.bma2x2_set_i2c_wdt,"ax",%progbits
	.align	1
	.global	bma2x2_set_i2c_wdt
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_i2c_wdt, %function
bma2x2_set_i2c_wdt:
.LFB124:
	.loc 1 7474 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI371:
	sub	sp, sp, #16
.LCFI372:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 7475 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7478 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7480 15
	ldr	r3, .L1107
	ldr	r3, [r3]
	.loc 1 7480 5
	cmp	r3, #0
	bne	.L1099
	.loc 1 7482 10
	mvn	r3, #126
	b	.L1105
.L1099:
	.loc 1 7484 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1101
	cmp	r3, #1
	beq	.L1102
	b	.L1106
.L1101:
	.loc 1 7486 23
	ldr	r3, .L1107
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7486 42
	ldr	r3, .L1107
	ldr	r3, [r3]
	.loc 1 7486 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL198:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7490 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 7490 49
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 7490 55
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 7490 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7490 12
	strb	r3, [sp, #14]
	.loc 1 7493 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #52
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7493 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 7496 3
	b	.L1104
.L1102:
	.loc 1 7498 23
	ldr	r3, .L1107
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7498 42
	ldr	r3, .L1107
	ldr	r3, [r3]
	.loc 1 7498 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL199:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7502 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 7502 49
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 7502 55
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 7502 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7502 12
	strb	r3, [sp, #14]
	.loc 1 7505 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #52
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7505 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 7508 3
	b	.L1104
.L1106:
	.loc 1 7510 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 7511 3
	nop
.L1104:
	.loc 1 7514 9
	ldrsb	r3, [sp, #15]
.L1105:
	.loc 1 7515 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI373:
	@ sp needed
	pop	{r4, pc}
.L1108:
	.align	2
.L1107:
	.word	p_bma2x2
.LFE124:
	.size	bma2x2_set_i2c_wdt, .-bma2x2_set_i2c_wdt
	.section	.text.bma2x2_get_slow_comp,"ax",%progbits
	.align	1
	.global	bma2x2_get_slow_comp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_slow_comp, %function
bma2x2_get_slow_comp:
.LFB125:
	.loc 1 7547 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI374:
	sub	sp, sp, #16
.LCFI375:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 7548 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7551 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7553 15
	ldr	r3, .L1118
	ldr	r3, [r3]
	.loc 1 7553 5
	cmp	r3, #0
	bne	.L1110
	.loc 1 7555 10
	mvn	r3, #126
	b	.L1117
.L1110:
	.loc 1 7557 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L1112
	cmp	r3, #2
	bgt	.L1113
	cmp	r3, #0
	beq	.L1114
	cmp	r3, #1
	beq	.L1115
	b	.L1113
.L1114:
	.loc 1 7560 23
	ldr	r3, .L1118
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7560 42
	ldr	r3, .L1118
	ldr	r3, [r3]
	.loc 1 7560 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL200:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7564 40
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 7564 18
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 7566 3
	b	.L1116
.L1115:
	.loc 1 7569 23
	ldr	r3, .L1118
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7569 42
	ldr	r3, .L1118
	ldr	r3, [r3]
	.loc 1 7569 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL201:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7573 40
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 7573 18
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 7575 3
	b	.L1116
.L1112:
	.loc 1 7578 23
	ldr	r3, .L1118
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7578 42
	ldr	r3, .L1118
	ldr	r3, [r3]
	.loc 1 7578 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL202:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7582 40
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 7582 18
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 7584 3
	b	.L1116
.L1113:
	.loc 1 7586 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 7587 3
	nop
.L1116:
	.loc 1 7590 9
	ldrsb	r3, [sp, #15]
.L1117:
	.loc 1 7591 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI376:
	@ sp needed
	pop	{r4, pc}
.L1119:
	.align	2
.L1118:
	.word	p_bma2x2
.LFE125:
	.size	bma2x2_get_slow_comp, .-bma2x2_get_slow_comp
	.section	.text.bma2x2_set_slow_comp,"ax",%progbits
	.align	1
	.global	bma2x2_set_slow_comp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_slow_comp, %function
bma2x2_set_slow_comp:
.LFB126:
	.loc 1 7623 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI377:
	sub	sp, sp, #16
.LCFI378:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 7624 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7627 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7629 15
	ldr	r3, .L1129
	ldr	r3, [r3]
	.loc 1 7629 5
	cmp	r3, #0
	bne	.L1121
	.loc 1 7631 10
	mvn	r3, #126
	b	.L1128
.L1121:
	.loc 1 7633 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L1123
	cmp	r3, #2
	bgt	.L1124
	cmp	r3, #0
	beq	.L1125
	cmp	r3, #1
	beq	.L1126
	b	.L1124
.L1125:
	.loc 1 7636 23
	ldr	r3, .L1129
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7636 42
	ldr	r3, .L1129
	ldr	r3, [r3]
	.loc 1 7636 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL203:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7640 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 7640 57
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 7640 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7640 12
	strb	r3, [sp, #14]
	.loc 1 7643 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #54
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7643 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 7646 3
	b	.L1127
.L1126:
	.loc 1 7649 23
	ldr	r3, .L1129
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7649 42
	ldr	r3, .L1129
	ldr	r3, [r3]
	.loc 1 7649 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL204:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7653 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 7653 51
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 7653 57
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 7653 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7653 12
	strb	r3, [sp, #14]
	.loc 1 7656 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #54
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7656 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 7659 3
	b	.L1127
.L1123:
	.loc 1 7662 23
	ldr	r3, .L1129
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7662 42
	ldr	r3, .L1129
	ldr	r3, [r3]
	.loc 1 7662 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL205:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7666 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 7666 51
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 7666 57
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 7666 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7666 12
	strb	r3, [sp, #14]
	.loc 1 7669 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #54
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7669 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 7672 3
	b	.L1127
.L1124:
	.loc 1 7674 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 7675 3
	nop
.L1127:
	.loc 1 7678 9
	ldrsb	r3, [sp, #15]
.L1128:
	.loc 1 7679 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI379:
	@ sp needed
	pop	{r4, pc}
.L1130:
	.align	2
.L1129:
	.word	p_bma2x2
.LFE126:
	.size	bma2x2_set_slow_comp, .-bma2x2_set_slow_comp
	.section	.text.bma2x2_get_cal_rdy,"ax",%progbits
	.align	1
	.global	bma2x2_get_cal_rdy
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_cal_rdy, %function
bma2x2_get_cal_rdy:
.LFB127:
	.loc 1 7699 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI380:
	sub	sp, sp, #16
.LCFI381:
	str	r0, [sp, #4]
	.loc 1 7700 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7703 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7705 15
	ldr	r3, .L1135
	ldr	r3, [r3]
	.loc 1 7705 5
	cmp	r3, #0
	bne	.L1132
	.loc 1 7707 10
	mvn	r3, #126
	b	.L1134
.L1132:
	.loc 1 7709 22
	ldr	r3, .L1135
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7709 41
	ldr	r3, .L1135
	ldr	r3, [r3]
	.loc 1 7709 14
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL206:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7713 37
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 7713 15
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 7716 9
	ldrsb	r3, [sp, #15]
.L1134:
	.loc 1 7717 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI382:
	@ sp needed
	pop	{r4, pc}
.L1136:
	.align	2
.L1135:
	.word	p_bma2x2
.LFE127:
	.size	bma2x2_get_cal_rdy, .-bma2x2_get_cal_rdy
	.section	.text.bma2x2_set_cal_trigger,"ax",%progbits
	.align	1
	.global	bma2x2_set_cal_trigger
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_cal_trigger, %function
bma2x2_set_cal_trigger:
.LFB128:
	.loc 1 7737 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI383:
	sub	sp, sp, #16
.LCFI384:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 7738 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7741 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7743 15
	ldr	r3, .L1141
	ldr	r3, [r3]
	.loc 1 7743 5
	cmp	r3, #0
	bne	.L1138
	.loc 1 7745 10
	mvn	r3, #126
	b	.L1140
.L1138:
	.loc 1 7747 23
	ldr	r3, .L1141
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7747 42
	ldr	r3, .L1141
	ldr	r3, [r3]
	.loc 1 7747 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL207:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7751 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #96
	sxtb	r2, r3
	.loc 1 7751 53
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #5
	.loc 1 7751 59
	sxtb	r3, r3
	and	r3, r3, #96
	sxtb	r3, r3
	.loc 1 7751 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7751 12
	strb	r3, [sp, #14]
	.loc 1 7753 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #54
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7753 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 7757 9
	ldrsb	r3, [sp, #15]
.L1140:
	.loc 1 7758 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI385:
	@ sp needed
	pop	{r4, pc}
.L1142:
	.align	2
.L1141:
	.word	p_bma2x2
.LFE128:
	.size	bma2x2_set_cal_trigger, .-bma2x2_set_cal_trigger
	.section	.text.bma2x2_set_offset_rst,"ax",%progbits
	.align	1
	.global	bma2x2_set_offset_rst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_offset_rst, %function
bma2x2_set_offset_rst:
.LFB129:
	.loc 1 7777 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI386:
	sub	sp, sp, #16
.LCFI387:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 7778 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7781 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7783 15
	ldr	r3, .L1147
	ldr	r3, [r3]
	.loc 1 7783 5
	cmp	r3, #0
	bne	.L1144
	.loc 1 7785 10
	mvn	r3, #126
	b	.L1146
.L1144:
	.loc 1 7787 23
	ldr	r3, .L1147
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7787 42
	ldr	r3, .L1147
	ldr	r3, [r3]
	.loc 1 7787 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL208:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7791 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 7791 52
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 7791 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7791 12
	strb	r3, [sp, #14]
	.loc 1 7794 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #54
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7794 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 7798 9
	ldrsb	r3, [sp, #15]
.L1146:
	.loc 1 7799 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI388:
	@ sp needed
	pop	{r4, pc}
.L1148:
	.align	2
.L1147:
	.word	p_bma2x2
.LFE129:
	.size	bma2x2_set_offset_rst, .-bma2x2_set_offset_rst
	.section	.text.bma2x2_get_offset_target,"ax",%progbits
	.align	1
	.global	bma2x2_get_offset_target
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_offset_target, %function
bma2x2_get_offset_target:
.LFB130:
	.loc 1 7840 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI389:
	sub	sp, sp, #16
.LCFI390:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 7841 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7844 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7846 15
	ldr	r3, .L1160
	ldr	r3, [r3]
	.loc 1 7846 5
	cmp	r3, #0
	bne	.L1150
	.loc 1 7848 10
	mvn	r3, #126
	b	.L1159
.L1150:
	.loc 1 7850 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L1152
	adr	r2, .L1154
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1154:
	.word	.L1157+1
	.word	.L1156+1
	.word	.L1155+1
	.word	.L1153+1
	.p2align 1
.L1157:
	.loc 1 7853 23
	ldr	r3, .L1160
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7853 42
	ldr	r3, .L1160
	ldr	r3, [r3]
	.loc 1 7853 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #55
	blx	r4
.LVL209:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7857 37
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 7857 15
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 7859 3
	b	.L1158
.L1156:
	.loc 1 7862 23
	ldr	r3, .L1160
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7862 42
	ldr	r3, .L1160
	ldr	r3, [r3]
	.loc 1 7862 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #55
	blx	r4
.LVL210:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7866 37
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 7866 15
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 7868 3
	b	.L1158
.L1155:
	.loc 1 7871 23
	ldr	r3, .L1160
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7871 42
	ldr	r3, .L1160
	ldr	r3, [r3]
	.loc 1 7871 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #55
	blx	r4
.LVL211:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7875 37
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 7875 15
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 7877 3
	b	.L1158
.L1153:
	.loc 1 7880 23
	ldr	r3, .L1160
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7880 42
	ldr	r3, .L1160
	ldr	r3, [r3]
	.loc 1 7880 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #55
	blx	r4
.LVL212:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7884 37
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 7884 15
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 7886 3
	b	.L1158
.L1152:
	.loc 1 7888 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 7889 3
	nop
.L1158:
	.loc 1 7892 9
	ldrsb	r3, [sp, #15]
.L1159:
	.loc 1 7893 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI391:
	@ sp needed
	pop	{r4, pc}
.L1161:
	.align	2
.L1160:
	.word	p_bma2x2
.LFE130:
	.size	bma2x2_get_offset_target, .-bma2x2_get_offset_target
	.section	.text.bma2x2_set_offset_target,"ax",%progbits
	.align	1
	.global	bma2x2_set_offset_target
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_offset_target, %function
bma2x2_set_offset_target:
.LFB131:
	.loc 1 7934 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI392:
	sub	sp, sp, #16
.LCFI393:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 7935 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 7938 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 7940 15
	ldr	r3, .L1173
	ldr	r3, [r3]
	.loc 1 7940 5
	cmp	r3, #0
	bne	.L1163
	.loc 1 7942 10
	mvn	r3, #126
	b	.L1172
.L1163:
	.loc 1 7944 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L1165
	adr	r2, .L1167
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1167:
	.word	.L1170+1
	.word	.L1169+1
	.word	.L1168+1
	.word	.L1166+1
	.p2align 1
.L1170:
	.loc 1 7947 23
	ldr	r3, .L1173
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7947 42
	ldr	r3, .L1173
	ldr	r3, [r3]
	.loc 1 7947 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #55
	blx	r4
.LVL213:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7951 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 7951 54
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 7951 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7951 12
	strb	r3, [sp, #14]
	.loc 1 7953 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #55
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7953 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 7956 3
	b	.L1171
.L1169:
	.loc 1 7959 23
	ldr	r3, .L1173
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7959 42
	ldr	r3, .L1173
	ldr	r3, [r3]
	.loc 1 7959 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #55
	blx	r4
.LVL214:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7963 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #6
	sxtb	r2, r3
	.loc 1 7963 48
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 7963 54
	sxtb	r3, r3
	and	r3, r3, #6
	sxtb	r3, r3
	.loc 1 7963 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7963 12
	strb	r3, [sp, #14]
	.loc 1 7965 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #55
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7965 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 7968 3
	b	.L1171
.L1168:
	.loc 1 7971 23
	ldr	r3, .L1173
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7971 42
	ldr	r3, .L1173
	ldr	r3, [r3]
	.loc 1 7971 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #55
	blx	r4
.LVL215:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7975 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #24
	sxtb	r2, r3
	.loc 1 7975 48
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 7975 54
	sxtb	r3, r3
	and	r3, r3, #24
	sxtb	r3, r3
	.loc 1 7975 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7975 12
	strb	r3, [sp, #14]
	.loc 1 7977 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #55
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7977 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 7980 3
	b	.L1171
.L1166:
	.loc 1 7983 23
	ldr	r3, .L1173
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 7983 42
	ldr	r3, .L1173
	ldr	r3, [r3]
	.loc 1 7983 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #55
	blx	r4
.LVL216:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 7987 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #96
	sxtb	r2, r3
	.loc 1 7987 48
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #5
	.loc 1 7987 54
	sxtb	r3, r3
	and	r3, r3, #96
	sxtb	r3, r3
	.loc 1 7987 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 7987 12
	strb	r3, [sp, #14]
	.loc 1 7989 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #55
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 7989 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 7992 3
	b	.L1171
.L1165:
	.loc 1 7994 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 7995 3
	nop
.L1171:
	.loc 1 7998 9
	ldrsb	r3, [sp, #15]
.L1172:
	.loc 1 7999 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI394:
	@ sp needed
	pop	{r4, pc}
.L1174:
	.align	2
.L1173:
	.word	p_bma2x2
.LFE131:
	.size	bma2x2_set_offset_target, .-bma2x2_set_offset_target
	.section	.text.bma2x2_get_offset,"ax",%progbits
	.align	1
	.global	bma2x2_get_offset
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_offset, %function
bma2x2_get_offset:
.LFB132:
	.loc 1 8027 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI395:
	sub	sp, sp, #16
.LCFI396:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 8028 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 8031 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 8033 15
	ldr	r3, .L1184
	ldr	r3, [r3]
	.loc 1 8033 5
	cmp	r3, #0
	bne	.L1176
	.loc 1 8035 10
	mvn	r3, #126
	b	.L1183
.L1176:
	.loc 1 8037 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L1178
	cmp	r3, #2
	bgt	.L1179
	cmp	r3, #0
	beq	.L1180
	cmp	r3, #1
	beq	.L1181
	b	.L1179
.L1180:
	.loc 1 8039 23
	ldr	r3, .L1184
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8039 42
	ldr	r3, .L1184
	ldr	r3, [r3]
	.loc 1 8039 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #56
	blx	r4
.LVL217:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8043 17
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	.loc 1 8043 15
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 8044 3
	b	.L1182
.L1181:
	.loc 1 8046 23
	ldr	r3, .L1184
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8046 42
	ldr	r3, .L1184
	ldr	r3, [r3]
	.loc 1 8046 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #57
	blx	r4
.LVL218:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8050 17
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	.loc 1 8050 15
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 8051 3
	b	.L1182
.L1178:
	.loc 1 8053 23
	ldr	r3, .L1184
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8053 42
	ldr	r3, .L1184
	ldr	r3, [r3]
	.loc 1 8053 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #58
	blx	r4
.LVL219:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8057 17
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	.loc 1 8057 15
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 8058 3
	b	.L1182
.L1179:
	.loc 1 8060 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 8061 3
	nop
.L1182:
	.loc 1 8064 9
	ldrsb	r3, [sp, #15]
.L1183:
	.loc 1 8065 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI397:
	@ sp needed
	pop	{r4, pc}
.L1185:
	.align	2
.L1184:
	.word	p_bma2x2
.LFE132:
	.size	bma2x2_get_offset, .-bma2x2_get_offset
	.section	.text.bma2x2_set_offset,"ax",%progbits
	.align	1
	.global	bma2x2_set_offset
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_offset, %function
bma2x2_set_offset:
.LFB133:
	.loc 1 8093 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI398:
	sub	sp, sp, #20
.LCFI399:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 8094 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 8097 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 8099 15
	ldr	r3, .L1195
	ldr	r3, [r3]
	.loc 1 8099 5
	cmp	r3, #0
	bne	.L1187
	.loc 1 8101 10
	mvn	r3, #126
	b	.L1194
.L1187:
	.loc 1 8103 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L1189
	cmp	r3, #2
	bgt	.L1190
	cmp	r3, #0
	beq	.L1191
	cmp	r3, #1
	beq	.L1192
	b	.L1190
.L1191:
	.loc 1 8105 12
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	strb	r3, [sp, #14]
	.loc 1 8106 15
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #56
	bl	bma2x2_write_reg
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8109 3
	b	.L1193
.L1192:
	.loc 1 8111 12
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	strb	r3, [sp, #14]
	.loc 1 8112 15
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #57
	bl	bma2x2_write_reg
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8115 3
	b	.L1193
.L1189:
	.loc 1 8117 12
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	strb	r3, [sp, #14]
	.loc 1 8118 15
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #58
	bl	bma2x2_write_reg
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8121 3
	b	.L1193
.L1190:
	.loc 1 8123 13
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 8124 3
	nop
.L1193:
	.loc 1 8127 9
	ldrsb	r3, [sp, #15]
.L1194:
	.loc 1 8128 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI400:
	@ sp needed
	ldr	pc, [sp], #4
.L1196:
	.align	2
.L1195:
	.word	p_bma2x2
.LFE133:
	.size	bma2x2_set_offset, .-bma2x2_set_offset
	.section	.text.bma2x2_get_fifo_mode,"ax",%progbits
	.align	1
	.global	bma2x2_get_fifo_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_fifo_mode, %function
bma2x2_get_fifo_mode:
.LFB134:
	.loc 1 8151 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI401:
	sub	sp, sp, #16
.LCFI402:
	str	r0, [sp, #4]
	.loc 1 8154 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 8155 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 8157 15
	ldr	r3, .L1201
	ldr	r3, [r3]
	.loc 1 8157 5
	cmp	r3, #0
	bne	.L1198
	.loc 1 8159 10
	mvn	r3, #126
	b	.L1200
.L1198:
	.loc 1 8161 23
	ldr	r3, .L1201
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8161 42
	ldr	r3, .L1201
	ldr	r3, [r3]
	.loc 1 8161 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #62
	blx	r4
.LVL220:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8165 40
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #6
	uxtb	r2, r3
	.loc 1 8165 18
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 8168 9
	ldrsb	r3, [sp, #15]
.L1200:
	.loc 1 8169 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI403:
	@ sp needed
	pop	{r4, pc}
.L1202:
	.align	2
.L1201:
	.word	p_bma2x2
.LFE134:
	.size	bma2x2_get_fifo_mode, .-bma2x2_get_fifo_mode
	.section	.text.bma2x2_set_fifo_mode,"ax",%progbits
	.align	1
	.global	bma2x2_set_fifo_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_fifo_mode, %function
bma2x2_set_fifo_mode:
.LFB135:
	.loc 1 8192 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI404:
	sub	sp, sp, #16
.LCFI405:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 8193 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 8194 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 8197 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 8199 15
	ldr	r3, .L1209
	ldr	r3, [r3]
	.loc 1 8199 5
	cmp	r3, #0
	bne	.L1204
	.loc 1 8201 12
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L1205
.L1204:
	.loc 1 8203 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L1206
	.loc 1 8204 23
	ldr	r3, .L1209
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8204 42
	ldr	r3, .L1209
	ldr	r3, [r3]
	.loc 1 8204 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #62
	blx	r4
.LVL221:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8208 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #63
	sxtb	r2, r3
	.loc 1 8208 51
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 8208 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 8208 12
	strb	r3, [sp, #14]
	.loc 1 8210 12
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	orr	r3, r3, #12
	uxtb	r3, r3
	strb	r3, [sp, #14]
	.loc 1 8212 16
	add	r3, sp, #13
	mov	r0, r3
	bl	bma2x2_get_power_mode
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 8212 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 8213 16
	movs	r0, #5
	bl	bma2x2_set_power_mode
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 8213 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 8215 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #62
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 8215 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 8218 7
	ldrsb	r3, [sp, #15]
	cmp	r3, #0
	bne	.L1207
	.loc 1 8220 13
	ldr	r3, .L1209
	ldr	r3, [r3]
	.loc 1 8220 27
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	strb	r2, [r3, #5]
.L1207:
	.loc 1 8223 16
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	mov	r0, r3
	bl	bma2x2_set_power_mode
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 8223 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L1205
.L1206:
	.loc 1 8226 13
	movs	r3, #254
	strb	r3, [sp, #15]
.L1205:
	.loc 1 8229 9
	ldrsb	r3, [sp, #15]
	.loc 1 8230 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI406:
	@ sp needed
	pop	{r4, pc}
.L1210:
	.align	2
.L1209:
	.word	p_bma2x2
.LFE135:
	.size	bma2x2_set_fifo_mode, .-bma2x2_set_fifo_mode
	.section	.text.bma2x2_get_fifo_data_select,"ax",%progbits
	.align	1
	.global	bma2x2_get_fifo_data_select
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_fifo_data_select, %function
bma2x2_get_fifo_data_select:
.LFB136:
	.loc 1 8254 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI407:
	sub	sp, sp, #16
.LCFI408:
	str	r0, [sp, #4]
	.loc 1 8257 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 8258 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 8260 15
	ldr	r3, .L1215
	ldr	r3, [r3]
	.loc 1 8260 5
	cmp	r3, #0
	bne	.L1212
	.loc 1 8262 10
	mvn	r3, #126
	b	.L1214
.L1212:
	.loc 1 8264 23
	ldr	r3, .L1215
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8264 42
	ldr	r3, .L1215
	ldr	r3, [r3]
	.loc 1 8264 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #62
	blx	r4
.LVL222:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8268 47
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 8268 25
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 8271 9
	ldrsb	r3, [sp, #15]
.L1214:
	.loc 1 8272 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI409:
	@ sp needed
	pop	{r4, pc}
.L1216:
	.align	2
.L1215:
	.word	p_bma2x2
.LFE136:
	.size	bma2x2_get_fifo_data_select, .-bma2x2_get_fifo_data_select
	.section	.text.bma2x2_set_fifo_data_select,"ax",%progbits
	.align	1
	.global	bma2x2_set_fifo_data_select
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_set_fifo_data_select, %function
bma2x2_set_fifo_data_select:
.LFB137:
	.loc 1 8296 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI410:
	sub	sp, sp, #16
.LCFI411:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 8297 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 8298 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 8301 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 8303 15
	ldr	r3, .L1223
	ldr	r3, [r3]
	.loc 1 8303 5
	cmp	r3, #0
	bne	.L1218
	.loc 1 8305 12
	movs	r3, #129
	strb	r3, [sp, #15]
	b	.L1219
.L1218:
	.loc 1 8307 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L1220
	.loc 1 8308 23
	ldr	r3, .L1223
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8308 42
	ldr	r3, .L1223
	ldr	r3, [r3]
	.loc 1 8308 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #62
	blx	r4
.LVL223:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8312 24
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #3
	sxtb	r2, r3
	.loc 1 8312 64
	ldrsb	r3, [sp, #7]
	and	r3, r3, #3
	sxtb	r3, r3
	.loc 1 8312 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 8312 12
	strb	r3, [sp, #14]
	.loc 1 8315 12
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	orr	r3, r3, #12
	uxtb	r3, r3
	strb	r3, [sp, #14]
	.loc 1 8317 16
	add	r3, sp, #13
	mov	r0, r3
	bl	bma2x2_get_power_mode
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 8317 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 8318 16
	movs	r0, #5
	bl	bma2x2_set_power_mode
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 8318 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 8321 16
	add	r3, sp, #14
	movs	r2, #1
	mov	r1, r3
	movs	r0, #62
	bl	bma2x2_write_reg
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 8321 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 8323 7
	ldrsb	r3, [sp, #15]
	cmp	r3, #0
	bne	.L1221
	.loc 1 8325 13
	ldr	r3, .L1223
	ldr	r3, [r3]
	.loc 1 8325 27
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	strb	r2, [r3, #5]
.L1221:
	.loc 1 8328 16
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	mov	r0, r3
	bl	bma2x2_set_power_mode
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 8328 13
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L1219
.L1220:
	.loc 1 8330 13
	movs	r3, #254
	strb	r3, [sp, #15]
.L1219:
	.loc 1 8333 9
	ldrsb	r3, [sp, #15]
	.loc 1 8334 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI412:
	@ sp needed
	pop	{r4, pc}
.L1224:
	.align	2
.L1223:
	.word	p_bma2x2
.LFE137:
	.size	bma2x2_set_fifo_data_select, .-bma2x2_set_fifo_data_select
	.section	.text.bma2x2_read_fifo_data,"ax",%progbits
	.align	1
	.global	bma2x2_read_fifo_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_read_fifo_data, %function
bma2x2_read_fifo_data:
.LFB138:
	.loc 1 8362 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI413:
	sub	sp, sp, #16
.LCFI414:
	str	r0, [sp, #4]
	.loc 1 8363 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 8364 5
	movs	r3, #0
	strb	r3, [sp, #15]
	.loc 1 8365 5
	movs	r3, #0
	strb	r3, [sp, #12]
	.loc 1 8368 5
	movs	r3, #255
	strb	r3, [sp, #14]
	.loc 1 8370 15
	ldr	r3, .L1233
	ldr	r3, [r3]
	.loc 1 8370 5
	cmp	r3, #0
	beq	.L1226
	.loc 1 8370 42 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 8370 30 discriminator 1
	cmp	r3, #0
	bne	.L1227
.L1226:
	.loc 1 8372 12
	movs	r3, #129
	strb	r3, [sp, #14]
	b	.L1228
.L1227:
	.loc 1 8375 37
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
	.loc 1 8377 14
	add	r3, sp, #13
	mov	r0, r3
	bl	bma2x2_get_fifo_frame_count
	mov	r3, r0
	strb	r3, [sp, #14]
	.loc 1 8379 15
	add	r3, sp, #12
	mov	r0, r3
	bl	bma2x2_get_fifo_data_select
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 8379 12
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #14]
	.loc 1 8381 24
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	.loc 1 8381 6
	cmp	r3, #0
	bne	.L1229
	.loc 1 8383 20
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	mov	r2, r3
	lsls	r2, r2, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	strb	r3, [sp, #15]
	b	.L1230
.L1229:
	.loc 1 8387 20
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	lsls	r3, r3, #1
	strb	r3, [sp, #15]
.L1230:
	.loc 1 8392 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 1 8392 6
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	cmp	r2, r3
	bcs	.L1231
	.loc 1 8395 27
	ldr	r3, [sp, #4]
	ldrb	r2, [sp, #15]
	strb	r2, [r3, #5]
.L1231:
	.loc 1 8398 23
	ldr	r3, .L1233
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8398 42
	ldr	r3, .L1233
	ldr	r3, [r3]
	.loc 1 8398 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	movs	r1, #63
	blx	r4
.LVL224:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 8398 12
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #14]
.L1228:
	.loc 1 8402 9
	ldrsb	r3, [sp, #14]
	.loc 1 8403 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI415:
	@ sp needed
	pop	{r4, pc}
.L1234:
	.align	2
.L1233:
	.word	p_bma2x2
.LFE138:
	.size	bma2x2_read_fifo_data, .-bma2x2_read_fifo_data
	.section	.text.bma2x2_extract_accel,"ax",%progbits
	.align	1
	.global	bma2x2_extract_accel
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_extract_accel, %function
bma2x2_extract_accel:
.LFB139:
	.loc 1 8433 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI416:
	sub	sp, sp, #32
.LCFI417:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	.loc 1 8434 5
	movs	r3, #0
	strb	r3, [sp, #29]
	.loc 1 8435 5
	movs	r3, #0
	strb	r3, [sp, #28]
	.loc 1 8436 5
	movs	r3, #0
	strb	r3, [sp, #27]
	.loc 1 8437 5
	movs	r3, #0
	strb	r3, [sp, #30]
	.loc 1 8439 5
	movs	r3, #0
	strb	r3, [sp, #31]
	.loc 1 8441 15
	ldr	r3, .L1242
	ldr	r3, [r3]
	.loc 1 8441 5
	cmp	r3, #0
	beq	.L1236
	.loc 1 8441 42 discriminator 1
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 8441 30 discriminator 1
	cmp	r3, #0
	bne	.L1237
.L1236:
	.loc 1 8444 12
	movs	r3, #129
	strb	r3, [sp, #31]
	b	.L1238
.L1237:
	.loc 1 8447 30
	ldr	r3, .L1242
	ldr	r3, [r3]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 1 8447 20
	and	r3, r3, #3
	strb	r3, [sp, #30]
	.loc 1 8451 3
	ldr	r3, [sp, #16]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r4, [sp, #30]	@ zero_extendqisi2
	add	r1, sp, #27
	add	r0, sp, #29
	ldr	r3, [sp, #12]
	str	r3, [sp]
	mov	r3, r4
	bl	get_accel_len_to_parse
	.loc 1 8455 3
	b	.L1239
.L1240:
	.loc 1 8456 4
	ldrb	r0, [sp, #30]	@ zero_extendqisi2
	add	r2, sp, #28
	add	r1, sp, #29
	ldr	r3, [sp, #12]
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [sp, #20]
	bl	unpack_accel_frame
.L1239:
	.loc 1 8455 21
	ldrb	r2, [sp, #29]	@ zero_extendqisi2
	ldrb	r3, [sp, #27]	@ zero_extendqisi2
	.loc 1 8455 3
	cmp	r2, r3
	bcc	.L1240
	.loc 1 8460 22
	ldrb	r2, [sp, #28]	@ zero_extendqisi2
	ldr	r3, [sp, #16]
	strb	r2, [r3]
	.loc 1 8462 37
	ldrb	r2, [sp, #29]	@ zero_extendqisi2
	ldr	r3, [sp, #12]
	strb	r2, [r3, #4]
.L1238:
	.loc 1 8464 9
	ldrsb	r3, [sp, #31]
	.loc 1 8465 1
	mov	r0, r3
	add	sp, sp, #32
.LCFI418:
	@ sp needed
	pop	{r4, pc}
.L1243:
	.align	2
.L1242:
	.word	p_bma2x2
.LFE139:
	.size	bma2x2_extract_accel, .-bma2x2_extract_accel
	.section	.text.get_accel_len_to_parse,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	get_accel_len_to_parse, %function
get_accel_len_to_parse:
.LFB140:
	.loc 1 8474 1
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI419:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r1, r2
	mov	r2, r3
	mov	r3, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 8476 25
	ldr	r3, [sp, #16]
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	.loc 1 8476 14
	ldr	r3, [sp, #12]
	strb	r2, [r3]
	.loc 1 8478 5
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1245
	.loc 1 8480 21
	ldrb	r3, [sp, #7]
	mov	r2, r3
	lsls	r2, r2, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [sp, #8]
	strb	r2, [r3]
	b	.L1246
.L1245:
	.loc 1 8484 21
	ldrb	r3, [sp, #7]
	lsls	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [sp, #8]
	strb	r2, [r3]
.L1246:
	.loc 1 8487 7
	ldr	r3, [sp, #8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	.loc 1 8487 37
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	.loc 1 8487 5
	cmp	r2, r3
	bls	.L1248
	.loc 1 8490 32
	ldr	r3, [sp, #16]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	.loc 1 8490 21
	ldr	r3, [sp, #8]
	strb	r2, [r3]
.L1248:
	.loc 1 8492 1
	nop
	add	sp, sp, #16
.LCFI420:
	@ sp needed
	bx	lr
.LFE140:
	.size	get_accel_len_to_parse, .-get_accel_len_to_parse
	.section	.text.unpack_accel_frame,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	unpack_accel_frame, %function
unpack_accel_frame:
.LFB141:
	.loc 1 8509 1
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI421:
	sub	sp, sp, #28
.LCFI422:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strb	r3, [sp, #3]
	.loc 1 8510 6
	movs	r3, #0
	strh	r3, [sp, #22]	@ movhi
	.loc 1 8511 6
	movs	r3, #0
	strh	r3, [sp, #20]	@ movhi
	.loc 1 8513 2
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L1266
	adr	r2, .L1252
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L1252:
	.word	.L1255+1
	.word	.L1254+1
	.word	.L1253+1
	.word	.L1251+1
	.p2align 1
.L1255:
	.loc 1 8516 33
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 8516 32
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	.loc 1 8516 3
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	ldr	r2, [sp, #32]
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	unpack_accel_xyz
	.loc 1 8519 4
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8519 17
	adds	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 8520 2
	b	.L1256
.L1254:
	.loc 1 8524 23
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	.loc 1 8524 36
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8524 48
	adds	r1, r3, #1
	uxtb	r0, r1
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	.loc 1 8524 34
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8524 12
	strh	r3, [sp, #22]	@ movhi
	.loc 1 8525 23
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	.loc 1 8525 36
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8525 48
	adds	r1, r3, #1
	uxtb	r0, r1
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	.loc 1 8525 34
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8525 12
	strh	r3, [sp, #20]	@ movhi
	.loc 1 8526 49
	ldrh	r3, [sp, #20]
	lsls	r3, r3, #8
	.loc 1 8526 33
	sxth	r1, r3
	ldrsh	r2, [sp, #22]
	.loc 1 8526 15
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	.loc 1 8526 14
	mov	r3, r0
	lsls	r3, r3, #1
	add	r3, r3, r0
	lsls	r3, r3, #1
	mov	r0, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r0
	.loc 1 8526 55
	orrs	r2, r2, r1
	sxth	r2, r2
	.loc 1 8526 31
	strh	r2, [r3]	@ movhi
	.loc 1 8529 29
	ldr	r3, .L1267
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8529 6
	cmp	r3, #0
	bne	.L1257
	.loc 1 8531 19
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 8531 18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 1 8531 32
	ldrsh	r2, [r3]
	.loc 1 8530 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 8530 15
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #1
	mov	r1, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r1
	.loc 1 8530 32
	asrs	r2, r2, #4
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
	b	.L1258
.L1257:
	.loc 1 8532 36
	ldr	r3, .L1267
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8532 13
	cmp	r3, #2
	bne	.L1259
	.loc 1 8534 19
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 8534 18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 1 8534 32
	ldrsh	r2, [r3]
	.loc 1 8533 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 8533 15
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #1
	mov	r1, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r1
	.loc 1 8533 32
	asrs	r2, r2, #2
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
	b	.L1258
.L1259:
	.loc 1 8535 36
	ldr	r3, .L1267
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8535 13
	cmp	r3, #1
	bne	.L1258
	.loc 1 8537 19
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 8537 18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 1 8537 32
	ldrsh	r2, [r3]
	.loc 1 8536 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 8536 15
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #1
	mov	r1, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r1
	.loc 1 8536 32
	asrs	r2, r2, #6
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
.L1258:
	.loc 1 8540 4
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8540 17
	adds	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 8541 2
	b	.L1256
.L1253:
	.loc 1 8545 23
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	.loc 1 8545 36
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8545 48
	adds	r1, r3, #1
	uxtb	r0, r1
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	.loc 1 8545 34
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8545 12
	strh	r3, [sp, #22]	@ movhi
	.loc 1 8546 23
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	.loc 1 8546 36
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8546 48
	adds	r1, r3, #1
	uxtb	r0, r1
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	.loc 1 8546 34
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8546 12
	strh	r3, [sp, #20]	@ movhi
	.loc 1 8547 49
	ldrh	r3, [sp, #20]
	lsls	r3, r3, #8
	.loc 1 8547 33
	sxth	r1, r3
	ldrsh	r2, [sp, #22]
	.loc 1 8547 15
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	.loc 1 8547 14
	mov	r3, r0
	lsls	r3, r3, #1
	add	r3, r3, r0
	lsls	r3, r3, #1
	mov	r0, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r0
	.loc 1 8547 55
	orrs	r2, r2, r1
	sxth	r2, r2
	.loc 1 8547 31
	strh	r2, [r3]	@ movhi
	.loc 1 8550 29
	ldr	r3, .L1267
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8550 6
	cmp	r3, #0
	bne	.L1260
	.loc 1 8552 19
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 8552 18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 1 8552 32
	ldrsh	r2, [r3]
	.loc 1 8551 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 8551 15
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #1
	mov	r1, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r1
	.loc 1 8551 32
	asrs	r2, r2, #4
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
	b	.L1261
.L1260:
	.loc 1 8553 36
	ldr	r3, .L1267
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8553 13
	cmp	r3, #2
	bne	.L1262
	.loc 1 8555 19
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 8555 18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 1 8555 32
	ldrsh	r2, [r3]
	.loc 1 8554 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 8554 15
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #1
	mov	r1, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r1
	.loc 1 8554 32
	asrs	r2, r2, #2
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
	b	.L1261
.L1262:
	.loc 1 8556 36
	ldr	r3, .L1267
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8556 13
	cmp	r3, #1
	bne	.L1261
	.loc 1 8558 19
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 8558 18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 1 8558 32
	ldrsh	r2, [r3]
	.loc 1 8557 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 8557 15
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #1
	mov	r1, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r1
	.loc 1 8557 32
	asrs	r2, r2, #6
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
.L1261:
	.loc 1 8561 4
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8561 17
	adds	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 8562 2
	b	.L1256
.L1251:
	.loc 1 8566 23
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	.loc 1 8566 36
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8566 48
	adds	r1, r3, #1
	uxtb	r0, r1
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	.loc 1 8566 34
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8566 12
	strh	r3, [sp, #22]	@ movhi
	.loc 1 8567 23
	ldr	r3, [sp, #32]
	ldr	r2, [r3]
	.loc 1 8567 36
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8567 48
	adds	r1, r3, #1
	uxtb	r0, r1
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	.loc 1 8567 34
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8567 12
	strh	r3, [sp, #20]	@ movhi
	.loc 1 8568 49
	ldrh	r3, [sp, #20]
	lsls	r3, r3, #8
	.loc 1 8568 33
	sxth	r1, r3
	ldrsh	r2, [sp, #22]
	.loc 1 8568 15
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	.loc 1 8568 14
	mov	r3, r0
	lsls	r3, r3, #1
	add	r3, r3, r0
	lsls	r3, r3, #1
	mov	r0, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r0
	.loc 1 8568 55
	orrs	r2, r2, r1
	sxth	r2, r2
	.loc 1 8568 31
	strh	r2, [r3]	@ movhi
	.loc 1 8571 29
	ldr	r3, .L1267
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8571 6
	cmp	r3, #0
	bne	.L1263
	.loc 1 8573 19
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 8573 18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 1 8573 32
	ldrsh	r2, [r3]
	.loc 1 8572 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 8572 15
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #1
	mov	r1, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r1
	.loc 1 8572 32
	asrs	r2, r2, #4
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
	b	.L1264
.L1263:
	.loc 1 8574 36
	ldr	r3, .L1267
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8574 13
	cmp	r3, #2
	bne	.L1265
	.loc 1 8576 19
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 8576 18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 1 8576 32
	ldrsh	r2, [r3]
	.loc 1 8575 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 8575 15
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #1
	mov	r1, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r1
	.loc 1 8575 32
	asrs	r2, r2, #2
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
	b	.L1264
.L1268:
	.align	2
.L1267:
	.word	V_BMA2x2RESOLUTION_U8
.L1265:
	.loc 1 8577 36
	ldr	r3, .L1269
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8577 13
	cmp	r3, #1
	bne	.L1264
	.loc 1 8579 19
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 8579 18
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r2
	.loc 1 8579 32
	ldrsh	r2, [r3]
	.loc 1 8578 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 8578 15
	mov	r3, r1
	lsls	r3, r3, #1
	add	r3, r3, r1
	lsls	r3, r3, #1
	mov	r1, r3
	ldr	r3, [sp, #12]
	add	r3, r3, r1
	.loc 1 8578 32
	asrs	r2, r2, #6
	sxth	r2, r2
	strh	r2, [r3]	@ movhi
.L1264:
	.loc 1 8582 4
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8582 17
	adds	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 8583 2
	b	.L1256
.L1266:
	.loc 1 8586 2
	nop
.L1256:
	.loc 1 8588 1
	nop
	add	sp, sp, #28
.LCFI423:
	@ sp needed
	ldr	pc, [sp], #4
.L1270:
	.align	2
.L1269:
	.word	V_BMA2x2RESOLUTION_U8
.LFE141:
	.size	unpack_accel_frame, .-unpack_accel_frame
	.section	.text.unpack_accel_xyz,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	unpack_accel_xyz, %function
unpack_accel_xyz:
.LFB142:
	.loc 1 8599 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI424:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 8600 6
	movs	r3, #0
	strh	r3, [sp, #22]	@ movhi
	.loc 1 8601 6
	movs	r3, #0
	strh	r3, [sp, #20]	@ movhi
	.loc 1 8604 22
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 8604 35
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8604 47
	adds	r1, r3, #1
	uxtb	r0, r1
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	.loc 1 8604 33
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8604 11
	strh	r3, [sp, #22]	@ movhi
	.loc 1 8605 22
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 8605 35
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8605 47
	adds	r1, r3, #1
	uxtb	r0, r1
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	.loc 1 8605 33
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8605 11
	strh	r3, [sp, #20]	@ movhi
	.loc 1 8606 46
	ldrh	r3, [sp, #20]
	lsls	r3, r3, #8
	.loc 1 8606 30
	sxth	r2, r3
	ldrsh	r3, [sp, #22]
	.loc 1 8606 52
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 8606 28
	ldr	r3, [sp, #12]
	strh	r2, [r3]	@ movhi
	.loc 1 8609 22
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 8609 35
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8609 47
	adds	r1, r3, #1
	uxtb	r0, r1
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	.loc 1 8609 33
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8609 11
	strh	r3, [sp, #22]	@ movhi
	.loc 1 8610 22
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 8610 35
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8610 47
	adds	r1, r3, #1
	uxtb	r0, r1
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	.loc 1 8610 33
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8610 11
	strh	r3, [sp, #20]	@ movhi
	.loc 1 8611 46
	ldrh	r3, [sp, #20]
	lsls	r3, r3, #8
	.loc 1 8611 30
	sxth	r2, r3
	ldrsh	r3, [sp, #22]
	.loc 1 8611 52
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 8611 28
	ldr	r3, [sp, #12]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 8614 22
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 8614 35
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8614 47
	adds	r1, r3, #1
	uxtb	r0, r1
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	.loc 1 8614 33
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8614 11
	strh	r3, [sp, #22]	@ movhi
	.loc 1 8615 22
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 8615 35
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8615 47
	adds	r1, r3, #1
	uxtb	r0, r1
	ldr	r1, [sp, #8]
	strb	r0, [r1]
	.loc 1 8615 33
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8615 11
	strh	r3, [sp, #20]	@ movhi
	.loc 1 8616 46
	ldrh	r3, [sp, #20]
	lsls	r3, r3, #8
	.loc 1 8616 30
	sxth	r2, r3
	ldrsh	r3, [sp, #22]
	.loc 1 8616 52
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 8616 28
	ldr	r3, [sp, #12]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 8619 28
	ldr	r3, .L1276
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8619 5
	cmp	r3, #0
	bne	.L1272
	.loc 1 8620 55
	ldr	r3, [sp, #12]
	ldrsh	r3, [r3]
	.loc 1 8620 29
	asrs	r3, r3, #4
	sxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3]	@ movhi
	.loc 1 8621 55
	ldr	r3, [sp, #12]
	ldrsh	r3, [r3, #2]
	.loc 1 8621 29
	asrs	r3, r3, #4
	sxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 8622 55
	ldr	r3, [sp, #12]
	ldrsh	r3, [r3, #4]
	.loc 1 8622 29
	asrs	r3, r3, #4
	sxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 8632 1
	b	.L1275
.L1272:
	.loc 1 8623 35
	ldr	r3, .L1276
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8623 12
	cmp	r3, #2
	bne	.L1274
	.loc 1 8624 55
	ldr	r3, [sp, #12]
	ldrsh	r3, [r3]
	.loc 1 8624 29
	asrs	r3, r3, #2
	sxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3]	@ movhi
	.loc 1 8625 55
	ldr	r3, [sp, #12]
	ldrsh	r3, [r3, #2]
	.loc 1 8625 29
	asrs	r3, r3, #2
	sxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 8626 55
	ldr	r3, [sp, #12]
	ldrsh	r3, [r3, #4]
	.loc 1 8626 29
	asrs	r3, r3, #2
	sxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 8632 1
	b	.L1275
.L1274:
	.loc 1 8627 35
	ldr	r3, .L1276
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 8627 12
	cmp	r3, #1
	bne	.L1275
	.loc 1 8628 55
	ldr	r3, [sp, #12]
	ldrsh	r3, [r3]
	.loc 1 8628 29
	asrs	r3, r3, #6
	sxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3]	@ movhi
	.loc 1 8629 55
	ldr	r3, [sp, #12]
	ldrsh	r3, [r3, #2]
	.loc 1 8629 29
	asrs	r3, r3, #6
	sxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 8630 55
	ldr	r3, [sp, #12]
	ldrsh	r3, [r3, #4]
	.loc 1 8630 29
	asrs	r3, r3, #6
	sxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3, #4]	@ movhi
.L1275:
	.loc 1 8632 1
	nop
	add	sp, sp, #24
.LCFI425:
	@ sp needed
	bx	lr
.L1277:
	.align	2
.L1276:
	.word	V_BMA2x2RESOLUTION_U8
.LFE142:
	.size	unpack_accel_xyz, .-unpack_accel_xyz
	.section	.text.bma2x2_read_temp,"ax",%progbits
	.align	1
	.global	bma2x2_read_temp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_read_temp, %function
bma2x2_read_temp:
.LFB143:
	.loc 1 8651 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI426:
	sub	sp, sp, #16
.LCFI427:
	str	r0, [sp, #4]
	.loc 1 8652 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 8655 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 8657 15
	ldr	r3, .L1282
	ldr	r3, [r3]
	.loc 1 8657 5
	cmp	r3, #0
	bne	.L1279
	.loc 1 8659 10
	mvn	r3, #126
	b	.L1281
.L1279:
	.loc 1 8661 23
	ldr	r3, .L1282
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8661 42
	ldr	r3, .L1282
	ldr	r3, [r3]
	.loc 1 8661 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #8
	blx	r4
.LVL225:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8665 15
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	.loc 1 8665 13
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 8667 9
	ldrsb	r3, [sp, #15]
.L1281:
	.loc 1 8668 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI428:
	@ sp needed
	pop	{r4, pc}
.L1283:
	.align	2
.L1282:
	.word	p_bma2x2
.LFE143:
	.size	bma2x2_read_temp, .-bma2x2_read_temp
	.section .rodata
	.align	2
.LC1:
	.ascii	"\000\000\000\000\000\000\000"
	.section	.text.bma2x2_read_accel_xyzt,"ax",%progbits
	.align	1
	.global	bma2x2_read_accel_xyzt
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_read_accel_xyzt, %function
bma2x2_read_accel_xyzt:
.LFB144:
	.loc 1 8686 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI429:
	sub	sp, sp, #16
.LCFI430:
	str	r0, [sp, #4]
	.loc 1 8689 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 8690 5
	ldr	r2, .L1294
	add	r3, sp, #8
	ldm	r2, {r0, r1}
	str	r0, [r3]
	adds	r3, r3, #4
	strh	r1, [r3]	@ movhi
	adds	r3, r3, #2
	lsrs	r2, r1, #16
	strb	r2, [r3]
	.loc 1 8695 15
	ldr	r3, .L1294+4
	ldr	r3, [r3]
	.loc 1 8695 5
	cmp	r3, #0
	bne	.L1285
	.loc 1 8697 10
	mvn	r3, #126
	b	.L1292
.L1285:
	.loc 1 8699 3
	ldr	r3, .L1294+8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L1287
	cmp	r3, #2
	bgt	.L1293
	cmp	r3, #0
	beq	.L1289
	cmp	r3, #1
	beq	.L1290
	.loc 1 8797 3
	b	.L1293
.L1289:
	.loc 1 8701 23
	ldr	r3, .L1294+4
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8701 42
	ldr	r3, .L1294+4
	ldr	r3, [r3]
	.loc 1 8701 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #8
	movs	r3, #7
	movs	r1, #2
	blx	r4
.LVL226:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8707 11
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	.loc 1 8706 29
	sxtb	r3, r3
	.loc 1 8708 4
	lsls	r3, r3, #8
	.loc 1 8706 15
	sxth	r2, r3
	.loc 1 8709 12
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 8710 4
	and	r3, r3, #240
	sxth	r3, r3
	.loc 1 8706 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 8706 13
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 8711 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 8711 13
	asrs	r3, r3, #4
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 8715 11
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	.loc 1 8714 29
	sxtb	r3, r3
	.loc 1 8716 4
	lsls	r3, r3, #8
	.loc 1 8714 15
	sxth	r2, r3
	.loc 1 8717 12
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 8718 4
	and	r3, r3, #240
	sxth	r3, r3
	.loc 1 8714 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 8714 13
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 8719 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3, #2]
	.loc 1 8719 13
	asrs	r3, r3, #4
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 8723 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 8722 29
	sxtb	r3, r3
	.loc 1 8724 4
	lsls	r3, r3, #8
	.loc 1 8722 15
	sxth	r2, r3
	.loc 1 8725 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 8726 4
	and	r3, r3, #240
	sxth	r3, r3
	.loc 1 8722 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 8722 13
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 8727 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3, #4]
	.loc 1 8727 13
	asrs	r3, r3, #4
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 8729 29
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	.loc 1 8729 18
	sxtb	r2, r3
	.loc 1 8729 16
	ldr	r3, [sp, #4]
	strb	r2, [r3, #6]
	.loc 1 8730 3
	b	.L1291
.L1290:
	.loc 1 8732 23
	ldr	r3, .L1294+4
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8732 42
	ldr	r3, .L1294+4
	ldr	r3, [r3]
	.loc 1 8732 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #8
	movs	r3, #7
	movs	r1, #2
	blx	r4
.LVL227:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8738 11
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	.loc 1 8737 29
	sxtb	r3, r3
	.loc 1 8738 18
	lsls	r3, r3, #8
	.loc 1 8737 15
	sxth	r2, r3
	.loc 1 8740 12
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 8741 4
	and	r3, r3, #192
	sxth	r3, r3
	.loc 1 8737 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 8737 13
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 8742 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 8742 13
	asrs	r3, r3, #6
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 8746 11
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	.loc 1 8745 29
	sxtb	r3, r3
	.loc 1 8746 18
	lsls	r3, r3, #8
	.loc 1 8745 15
	sxth	r2, r3
	.loc 1 8748 12
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 8749 4
	and	r3, r3, #192
	sxth	r3, r3
	.loc 1 8745 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 8745 13
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 8750 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3, #2]
	.loc 1 8750 13
	asrs	r3, r3, #6
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 8754 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 8753 29
	sxtb	r3, r3
	.loc 1 8754 18
	lsls	r3, r3, #8
	.loc 1 8753 15
	sxth	r2, r3
	.loc 1 8756 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 8757 4
	and	r3, r3, #192
	sxth	r3, r3
	.loc 1 8753 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 8753 13
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 8758 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3, #4]
	.loc 1 8758 13
	asrs	r3, r3, #6
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 8762 29
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	.loc 1 8762 18
	sxtb	r2, r3
	.loc 1 8762 16
	ldr	r3, [sp, #4]
	strb	r2, [r3, #6]
	.loc 1 8763 3
	b	.L1291
.L1287:
	.loc 1 8765 23
	ldr	r3, .L1294+4
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8765 42
	ldr	r3, .L1294+4
	ldr	r3, [r3]
	.loc 1 8765 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #8
	movs	r3, #7
	movs	r1, #2
	blx	r4
.LVL228:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8771 11
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	.loc 1 8770 29
	sxtb	r3, r3
	.loc 1 8771 18
	lsls	r3, r3, #8
	.loc 1 8770 15
	sxth	r2, r3
	.loc 1 8773 12
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 8774 4
	and	r3, r3, #252
	sxth	r3, r3
	.loc 1 8770 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 8770 13
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 8775 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3]
	.loc 1 8775 13
	asrs	r3, r3, #2
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 8779 11
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	.loc 1 8778 29
	sxtb	r3, r3
	.loc 1 8779 18
	lsls	r3, r3, #8
	.loc 1 8778 15
	sxth	r2, r3
	.loc 1 8781 12
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 8782 4
	and	r3, r3, #252
	sxth	r3, r3
	.loc 1 8778 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 8778 13
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 8783 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3, #2]
	.loc 1 8783 13
	asrs	r3, r3, #2
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 8787 11
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 8786 29
	sxtb	r3, r3
	.loc 1 8787 18
	lsls	r3, r3, #8
	.loc 1 8786 15
	sxth	r2, r3
	.loc 1 8789 12
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 8790 4
	and	r3, r3, #252
	sxth	r3, r3
	.loc 1 8786 15
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 8786 13
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 8791 20
	ldr	r3, [sp, #4]
	ldrsh	r3, [r3, #4]
	.loc 1 8791 13
	asrs	r3, r3, #2
	sxth	r2, r3
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 8794 29
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	.loc 1 8794 18
	sxtb	r2, r3
	.loc 1 8794 16
	ldr	r3, [sp, #4]
	strb	r2, [r3, #6]
	.loc 1 8795 3
	b	.L1291
.L1293:
	.loc 1 8797 3
	nop
.L1291:
	.loc 1 8800 9
	ldrsb	r3, [sp, #15]
.L1292:
	.loc 1 8801 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI431:
	@ sp needed
	pop	{r4, pc}
.L1295:
	.align	2
.L1294:
	.word	.LC1
	.word	p_bma2x2
	.word	V_BMA2x2RESOLUTION_U8
.LFE144:
	.size	bma2x2_read_accel_xyzt, .-bma2x2_read_accel_xyzt
	.section	.text.bma2x2_read_accel_eight_resolution_xyzt,"ax",%progbits
	.align	1
	.global	bma2x2_read_accel_eight_resolution_xyzt
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_read_accel_eight_resolution_xyzt, %function
bma2x2_read_accel_eight_resolution_xyzt:
.LFB145:
	.loc 1 8819 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI432:
	sub	sp, sp, #16
.LCFI433:
	str	r0, [sp, #4]
	.loc 1 8822 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 8823 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 8825 15
	ldr	r3, .L1300
	ldr	r3, [r3]
	.loc 1 8825 5
	cmp	r3, #0
	bne	.L1297
	.loc 1 8827 10
	mvn	r3, #126
	b	.L1299
.L1297:
	.loc 1 8829 23
	ldr	r3, .L1300
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8829 42
	ldr	r3, .L1300
	ldr	r3, [r3]
	.loc 1 8829 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #3
	blx	r4
.LVL229:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8833 13
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 8836 23
	ldr	r3, .L1300
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8836 42
	ldr	r3, .L1300
	ldr	r3, [r3]
	.loc 1 8836 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #5
	blx	r4
.LVL230:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8840 13
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3, #1]
	.loc 1 8843 23
	ldr	r3, .L1300
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8843 42
	ldr	r3, .L1300
	ldr	r3, [r3]
	.loc 1 8843 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #7
	blx	r4
.LVL231:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8847 13
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3, #2]
	.loc 1 8850 23
	ldr	r3, .L1300
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8850 42
	ldr	r3, .L1300
	ldr	r3, [r3]
	.loc 1 8850 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #8
	blx	r4
.LVL232:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8853 18
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	.loc 1 8853 16
	ldr	r3, [sp, #4]
	strb	r2, [r3, #3]
	.loc 1 8855 9
	ldrsb	r3, [sp, #15]
.L1299:
	.loc 1 8856 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI434:
	@ sp needed
	pop	{r4, pc}
.L1301:
	.align	2
.L1300:
	.word	p_bma2x2
.LFE145:
	.size	bma2x2_read_accel_eight_resolution_xyzt, .-bma2x2_read_accel_eight_resolution_xyzt
	.section	.text.bma2x2_get_fifo_data_output_reg,"ax",%progbits
	.align	1
	.global	bma2x2_get_fifo_data_output_reg
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bma2x2_get_fifo_data_output_reg, %function
bma2x2_get_fifo_data_output_reg:
.LFB146:
	.loc 1 8875 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI435:
	sub	sp, sp, #16
.LCFI436:
	str	r0, [sp, #4]
	.loc 1 8879 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 8882 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 8884 15
	ldr	r3, .L1306
	ldr	r3, [r3]
	.loc 1 8884 5
	cmp	r3, #0
	bne	.L1303
	.loc 1 8886 10
	mvn	r3, #126
	b	.L1305
.L1303:
	.loc 1 8889 23
	ldr	r3, .L1306
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 8889 42
	ldr	r3, .L1306
	ldr	r3, [r3]
	.loc 1 8889 15
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #63
	blx	r4
.LVL233:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 8893 19
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 8895 9
	ldrsb	r3, [sp, #15]
.L1305:
	.loc 1 8896 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI437:
	@ sp needed
	pop	{r4, pc}
.L1307:
	.align	2
.L1306:
	.word	p_bma2x2
.LFE146:
	.size	bma2x2_get_fifo_data_output_reg, .-bma2x2_get_fifo_data_output_reg
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
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x8
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
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI6-.LFB2
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI9-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI12-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI15-.LFB5
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI18-.LFB6
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI21-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI24-.LFB8
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI27-.LFB9
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI30-.LFB10
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI33-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI36-.LFB12
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI39-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.byte	0x4
	.4byte	.LCFI42-.LFB14
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI45-.LFB15
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI48-.LFB16
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI51-.LFB17
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI54-.LFB18
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI57-.LFB19
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI60-.LFB20
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI63-.LFB21
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI66-.LFB22
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI69-.LFB23
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI72-.LFB24
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI74-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI75-.LCFI74
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI77-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI80-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI83-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI84-.LCFI83
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI85-.LCFI84
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI86-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI87-.LCFI86
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI88-.LCFI87
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI89-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI90-.LCFI89
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI91-.LCFI90
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI92-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI93-.LCFI92
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI94-.LCFI93
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI95-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI96-.LCFI95
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI97-.LCFI96
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI98-.LFB33
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI99-.LCFI98
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI100-.LCFI99
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI101-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI102-.LCFI101
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI103-.LCFI102
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI104-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI105-.LCFI104
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI106-.LCFI105
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI107-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI108-.LCFI107
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI109-.LCFI108
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI110-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI111-.LCFI110
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI112-.LCFI111
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI113-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI114-.LCFI113
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI115-.LCFI114
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI116-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI117-.LCFI116
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI118-.LCFI117
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI119-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI120-.LCFI119
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI121-.LCFI120
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI122-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI123-.LCFI122
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI124-.LCFI123
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI125-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI126-.LCFI125
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI127-.LCFI126
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI128-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI129-.LCFI128
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI130-.LCFI129
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI131-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI132-.LCFI131
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI133-.LCFI132
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI134-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI135-.LCFI134
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI136-.LCFI135
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI137-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI138-.LCFI137
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI139-.LCFI138
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI140-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI141-.LCFI140
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI142-.LCFI141
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE94:
.LSFDE96:
	.4byte	.LEFDE96-.LASFDE96
.LASFDE96:
	.4byte	.Lframe0
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.byte	0x4
	.4byte	.LCFI143-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI144-.LCFI143
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI145-.LCFI144
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE96:
.LSFDE98:
	.4byte	.LEFDE98-.LASFDE98
.LASFDE98:
	.4byte	.Lframe0
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.byte	0x4
	.4byte	.LCFI146-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI147-.LCFI146
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI148-.LCFI147
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE98:
.LSFDE100:
	.4byte	.LEFDE100-.LASFDE100
.LASFDE100:
	.4byte	.Lframe0
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.byte	0x4
	.4byte	.LCFI149-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI150-.LCFI149
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI151-.LCFI150
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE100:
.LSFDE102:
	.4byte	.LEFDE102-.LASFDE102
.LASFDE102:
	.4byte	.Lframe0
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.byte	0x4
	.4byte	.LCFI152-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI153-.LCFI152
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI154-.LCFI153
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE102:
.LSFDE104:
	.4byte	.LEFDE104-.LASFDE104
.LASFDE104:
	.4byte	.Lframe0
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.byte	0x4
	.4byte	.LCFI155-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI156-.LCFI155
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI157-.LCFI156
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE104:
.LSFDE106:
	.4byte	.LEFDE106-.LASFDE106
.LASFDE106:
	.4byte	.Lframe0
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.byte	0x4
	.4byte	.LCFI158-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI159-.LCFI158
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI160-.LCFI159
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE106:
.LSFDE108:
	.4byte	.LEFDE108-.LASFDE108
.LASFDE108:
	.4byte	.Lframe0
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.byte	0x4
	.4byte	.LCFI161-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI162-.LCFI161
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI163-.LCFI162
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE108:
.LSFDE110:
	.4byte	.LEFDE110-.LASFDE110
.LASFDE110:
	.4byte	.Lframe0
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.byte	0x4
	.4byte	.LCFI164-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI165-.LCFI164
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI166-.LCFI165
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE110:
.LSFDE112:
	.4byte	.LEFDE112-.LASFDE112
.LASFDE112:
	.4byte	.Lframe0
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.byte	0x4
	.4byte	.LCFI167-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI168-.LCFI167
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI169-.LCFI168
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE112:
.LSFDE114:
	.4byte	.LEFDE114-.LASFDE114
.LASFDE114:
	.4byte	.Lframe0
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.byte	0x4
	.4byte	.LCFI170-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI171-.LCFI170
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI172-.LCFI171
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE114:
.LSFDE116:
	.4byte	.LEFDE116-.LASFDE116
.LASFDE116:
	.4byte	.Lframe0
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.byte	0x4
	.4byte	.LCFI173-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI174-.LCFI173
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI175-.LCFI174
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE116:
.LSFDE118:
	.4byte	.LEFDE118-.LASFDE118
.LASFDE118:
	.4byte	.Lframe0
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.byte	0x4
	.4byte	.LCFI176-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI177-.LCFI176
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI178-.LCFI177
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE118:
.LSFDE120:
	.4byte	.LEFDE120-.LASFDE120
.LASFDE120:
	.4byte	.Lframe0
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.byte	0x4
	.4byte	.LCFI179-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI180-.LCFI179
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI181-.LCFI180
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE120:
.LSFDE122:
	.4byte	.LEFDE122-.LASFDE122
.LASFDE122:
	.4byte	.Lframe0
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.byte	0x4
	.4byte	.LCFI182-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI183-.LCFI182
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI184-.LCFI183
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE122:
.LSFDE124:
	.4byte	.LEFDE124-.LASFDE124
.LASFDE124:
	.4byte	.Lframe0
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.byte	0x4
	.4byte	.LCFI185-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI186-.LCFI185
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI187-.LCFI186
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE124:
.LSFDE126:
	.4byte	.LEFDE126-.LASFDE126
.LASFDE126:
	.4byte	.Lframe0
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.byte	0x4
	.4byte	.LCFI188-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI189-.LCFI188
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI190-.LCFI189
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE126:
.LSFDE128:
	.4byte	.LEFDE128-.LASFDE128
.LASFDE128:
	.4byte	.Lframe0
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.byte	0x4
	.4byte	.LCFI191-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI192-.LCFI191
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI193-.LCFI192
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE128:
.LSFDE130:
	.4byte	.LEFDE130-.LASFDE130
.LASFDE130:
	.4byte	.Lframe0
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.byte	0x4
	.4byte	.LCFI194-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI195-.LCFI194
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI196-.LCFI195
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE130:
.LSFDE132:
	.4byte	.LEFDE132-.LASFDE132
.LASFDE132:
	.4byte	.Lframe0
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.byte	0x4
	.4byte	.LCFI197-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI198-.LCFI197
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI199-.LCFI198
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE132:
.LSFDE134:
	.4byte	.LEFDE134-.LASFDE134
.LASFDE134:
	.4byte	.Lframe0
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.byte	0x4
	.4byte	.LCFI200-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI201-.LCFI200
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI202-.LCFI201
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE134:
.LSFDE136:
	.4byte	.LEFDE136-.LASFDE136
.LASFDE136:
	.4byte	.Lframe0
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.byte	0x4
	.4byte	.LCFI203-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI204-.LCFI203
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI205-.LCFI204
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE136:
.LSFDE138:
	.4byte	.LEFDE138-.LASFDE138
.LASFDE138:
	.4byte	.Lframe0
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.byte	0x4
	.4byte	.LCFI206-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI207-.LCFI206
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI208-.LCFI207
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE138:
.LSFDE140:
	.4byte	.LEFDE140-.LASFDE140
.LASFDE140:
	.4byte	.Lframe0
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.byte	0x4
	.4byte	.LCFI209-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI210-.LCFI209
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI211-.LCFI210
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE140:
.LSFDE142:
	.4byte	.LEFDE142-.LASFDE142
.LASFDE142:
	.4byte	.Lframe0
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.byte	0x4
	.4byte	.LCFI212-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI213-.LCFI212
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI214-.LCFI213
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE142:
.LSFDE144:
	.4byte	.LEFDE144-.LASFDE144
.LASFDE144:
	.4byte	.Lframe0
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.byte	0x4
	.4byte	.LCFI215-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI216-.LCFI215
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI217-.LCFI216
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE144:
.LSFDE146:
	.4byte	.LEFDE146-.LASFDE146
.LASFDE146:
	.4byte	.Lframe0
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.byte	0x4
	.4byte	.LCFI218-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI219-.LCFI218
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI220-.LCFI219
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE146:
.LSFDE148:
	.4byte	.LEFDE148-.LASFDE148
.LASFDE148:
	.4byte	.Lframe0
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.byte	0x4
	.4byte	.LCFI221-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI222-.LCFI221
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI223-.LCFI222
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE148:
.LSFDE150:
	.4byte	.LEFDE150-.LASFDE150
.LASFDE150:
	.4byte	.Lframe0
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.byte	0x4
	.4byte	.LCFI224-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI225-.LCFI224
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI226-.LCFI225
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE150:
.LSFDE152:
	.4byte	.LEFDE152-.LASFDE152
.LASFDE152:
	.4byte	.Lframe0
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.byte	0x4
	.4byte	.LCFI227-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI228-.LCFI227
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI229-.LCFI228
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE152:
.LSFDE154:
	.4byte	.LEFDE154-.LASFDE154
.LASFDE154:
	.4byte	.Lframe0
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.byte	0x4
	.4byte	.LCFI230-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI231-.LCFI230
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI232-.LCFI231
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE154:
.LSFDE156:
	.4byte	.LEFDE156-.LASFDE156
.LASFDE156:
	.4byte	.Lframe0
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.byte	0x4
	.4byte	.LCFI233-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI234-.LCFI233
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI235-.LCFI234
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE156:
.LSFDE158:
	.4byte	.LEFDE158-.LASFDE158
.LASFDE158:
	.4byte	.Lframe0
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.byte	0x4
	.4byte	.LCFI236-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI237-.LCFI236
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI238-.LCFI237
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE158:
.LSFDE160:
	.4byte	.LEFDE160-.LASFDE160
.LASFDE160:
	.4byte	.Lframe0
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.byte	0x4
	.4byte	.LCFI239-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI240-.LCFI239
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI241-.LCFI240
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE160:
.LSFDE162:
	.4byte	.LEFDE162-.LASFDE162
.LASFDE162:
	.4byte	.Lframe0
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.byte	0x4
	.4byte	.LCFI242-.LFB81
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI243-.LCFI242
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI244-.LCFI243
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE162:
.LSFDE164:
	.4byte	.LEFDE164-.LASFDE164
.LASFDE164:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI245-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI246-.LCFI245
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI247-.LCFI246
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE164:
.LSFDE166:
	.4byte	.LEFDE166-.LASFDE166
.LASFDE166:
	.4byte	.Lframe0
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.byte	0x4
	.4byte	.LCFI248-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI249-.LCFI248
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI250-.LCFI249
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE166:
.LSFDE168:
	.4byte	.LEFDE168-.LASFDE168
.LASFDE168:
	.4byte	.Lframe0
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.byte	0x4
	.4byte	.LCFI251-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI252-.LCFI251
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI253-.LCFI252
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE168:
.LSFDE170:
	.4byte	.LEFDE170-.LASFDE170
.LASFDE170:
	.4byte	.Lframe0
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.byte	0x4
	.4byte	.LCFI254-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI255-.LCFI254
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI256-.LCFI255
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE170:
.LSFDE172:
	.4byte	.LEFDE172-.LASFDE172
.LASFDE172:
	.4byte	.Lframe0
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.byte	0x4
	.4byte	.LCFI257-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI258-.LCFI257
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI259-.LCFI258
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE172:
.LSFDE174:
	.4byte	.LEFDE174-.LASFDE174
.LASFDE174:
	.4byte	.Lframe0
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.byte	0x4
	.4byte	.LCFI260-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI261-.LCFI260
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI262-.LCFI261
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE174:
.LSFDE176:
	.4byte	.LEFDE176-.LASFDE176
.LASFDE176:
	.4byte	.Lframe0
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.byte	0x4
	.4byte	.LCFI263-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI264-.LCFI263
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI265-.LCFI264
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE176:
.LSFDE178:
	.4byte	.LEFDE178-.LASFDE178
.LASFDE178:
	.4byte	.Lframe0
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.byte	0x4
	.4byte	.LCFI266-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI267-.LCFI266
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI268-.LCFI267
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE178:
.LSFDE180:
	.4byte	.LEFDE180-.LASFDE180
.LASFDE180:
	.4byte	.Lframe0
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.byte	0x4
	.4byte	.LCFI269-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI270-.LCFI269
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI271-.LCFI270
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE180:
.LSFDE182:
	.4byte	.LEFDE182-.LASFDE182
.LASFDE182:
	.4byte	.Lframe0
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.byte	0x4
	.4byte	.LCFI272-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI273-.LCFI272
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI274-.LCFI273
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE182:
.LSFDE184:
	.4byte	.LEFDE184-.LASFDE184
.LASFDE184:
	.4byte	.Lframe0
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.byte	0x4
	.4byte	.LCFI275-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI276-.LCFI275
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI277-.LCFI276
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE184:
.LSFDE186:
	.4byte	.LEFDE186-.LASFDE186
.LASFDE186:
	.4byte	.Lframe0
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.byte	0x4
	.4byte	.LCFI278-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI279-.LCFI278
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI280-.LCFI279
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE186:
.LSFDE188:
	.4byte	.LEFDE188-.LASFDE188
.LASFDE188:
	.4byte	.Lframe0
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.byte	0x4
	.4byte	.LCFI281-.LFB94
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI282-.LCFI281
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI283-.LCFI282
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE188:
.LSFDE190:
	.4byte	.LEFDE190-.LASFDE190
.LASFDE190:
	.4byte	.Lframe0
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.byte	0x4
	.4byte	.LCFI284-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI285-.LCFI284
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI286-.LCFI285
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE190:
.LSFDE192:
	.4byte	.LEFDE192-.LASFDE192
.LASFDE192:
	.4byte	.Lframe0
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.byte	0x4
	.4byte	.LCFI287-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI288-.LCFI287
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI289-.LCFI288
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE192:
.LSFDE194:
	.4byte	.LEFDE194-.LASFDE194
.LASFDE194:
	.4byte	.Lframe0
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.byte	0x4
	.4byte	.LCFI290-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI291-.LCFI290
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI292-.LCFI291
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE194:
.LSFDE196:
	.4byte	.LEFDE196-.LASFDE196
.LASFDE196:
	.4byte	.Lframe0
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.byte	0x4
	.4byte	.LCFI293-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI294-.LCFI293
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI295-.LCFI294
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE196:
.LSFDE198:
	.4byte	.LEFDE198-.LASFDE198
.LASFDE198:
	.4byte	.Lframe0
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.byte	0x4
	.4byte	.LCFI296-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI297-.LCFI296
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI298-.LCFI297
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE198:
.LSFDE200:
	.4byte	.LEFDE200-.LASFDE200
.LASFDE200:
	.4byte	.Lframe0
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.byte	0x4
	.4byte	.LCFI299-.LFB100
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI300-.LCFI299
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI301-.LCFI300
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE200:
.LSFDE202:
	.4byte	.LEFDE202-.LASFDE202
.LASFDE202:
	.4byte	.Lframe0
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.byte	0x4
	.4byte	.LCFI302-.LFB101
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI303-.LCFI302
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI304-.LCFI303
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE202:
.LSFDE204:
	.4byte	.LEFDE204-.LASFDE204
.LASFDE204:
	.4byte	.Lframe0
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.byte	0x4
	.4byte	.LCFI305-.LFB102
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI306-.LCFI305
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI307-.LCFI306
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE204:
.LSFDE206:
	.4byte	.LEFDE206-.LASFDE206
.LASFDE206:
	.4byte	.Lframe0
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.byte	0x4
	.4byte	.LCFI308-.LFB103
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI309-.LCFI308
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI310-.LCFI309
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE206:
.LSFDE208:
	.4byte	.LEFDE208-.LASFDE208
.LASFDE208:
	.4byte	.Lframe0
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.byte	0x4
	.4byte	.LCFI311-.LFB104
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI312-.LCFI311
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI313-.LCFI312
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE208:
.LSFDE210:
	.4byte	.LEFDE210-.LASFDE210
.LASFDE210:
	.4byte	.Lframe0
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.byte	0x4
	.4byte	.LCFI314-.LFB105
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI315-.LCFI314
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI316-.LCFI315
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE210:
.LSFDE212:
	.4byte	.LEFDE212-.LASFDE212
.LASFDE212:
	.4byte	.Lframe0
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.byte	0x4
	.4byte	.LCFI317-.LFB106
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI318-.LCFI317
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI319-.LCFI318
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE212:
.LSFDE214:
	.4byte	.LEFDE214-.LASFDE214
.LASFDE214:
	.4byte	.Lframe0
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.byte	0x4
	.4byte	.LCFI320-.LFB107
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI321-.LCFI320
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI322-.LCFI321
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE214:
.LSFDE216:
	.4byte	.LEFDE216-.LASFDE216
.LASFDE216:
	.4byte	.Lframe0
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.byte	0x4
	.4byte	.LCFI323-.LFB108
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI324-.LCFI323
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI325-.LCFI324
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE216:
.LSFDE218:
	.4byte	.LEFDE218-.LASFDE218
.LASFDE218:
	.4byte	.Lframe0
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.byte	0x4
	.4byte	.LCFI326-.LFB109
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI327-.LCFI326
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI328-.LCFI327
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE218:
.LSFDE220:
	.4byte	.LEFDE220-.LASFDE220
.LASFDE220:
	.4byte	.Lframe0
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.byte	0x4
	.4byte	.LCFI329-.LFB110
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI330-.LCFI329
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI331-.LCFI330
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE220:
.LSFDE222:
	.4byte	.LEFDE222-.LASFDE222
.LASFDE222:
	.4byte	.Lframe0
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.byte	0x4
	.4byte	.LCFI332-.LFB111
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI333-.LCFI332
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI334-.LCFI333
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE222:
.LSFDE224:
	.4byte	.LEFDE224-.LASFDE224
.LASFDE224:
	.4byte	.Lframe0
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.byte	0x4
	.4byte	.LCFI335-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI336-.LCFI335
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI337-.LCFI336
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE224:
.LSFDE226:
	.4byte	.LEFDE226-.LASFDE226
.LASFDE226:
	.4byte	.Lframe0
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.byte	0x4
	.4byte	.LCFI338-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI339-.LCFI338
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI340-.LCFI339
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE226:
.LSFDE228:
	.4byte	.LEFDE228-.LASFDE228
.LASFDE228:
	.4byte	.Lframe0
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.byte	0x4
	.4byte	.LCFI341-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI342-.LCFI341
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI343-.LCFI342
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE228:
.LSFDE230:
	.4byte	.LEFDE230-.LASFDE230
.LASFDE230:
	.4byte	.Lframe0
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.byte	0x4
	.4byte	.LCFI344-.LFB115
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI345-.LCFI344
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI346-.LCFI345
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE230:
.LSFDE232:
	.4byte	.LEFDE232-.LASFDE232
.LASFDE232:
	.4byte	.Lframe0
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.byte	0x4
	.4byte	.LCFI347-.LFB116
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI348-.LCFI347
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI349-.LCFI348
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE232:
.LSFDE234:
	.4byte	.LEFDE234-.LASFDE234
.LASFDE234:
	.4byte	.Lframe0
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.byte	0x4
	.4byte	.LCFI350-.LFB117
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI351-.LCFI350
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI352-.LCFI351
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE234:
.LSFDE236:
	.4byte	.LEFDE236-.LASFDE236
.LASFDE236:
	.4byte	.Lframe0
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.byte	0x4
	.4byte	.LCFI353-.LFB118
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI354-.LCFI353
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI355-.LCFI354
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE236:
.LSFDE238:
	.4byte	.LEFDE238-.LASFDE238
.LASFDE238:
	.4byte	.Lframe0
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.byte	0x4
	.4byte	.LCFI356-.LFB119
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI357-.LCFI356
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI358-.LCFI357
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE238:
.LSFDE240:
	.4byte	.LEFDE240-.LASFDE240
.LASFDE240:
	.4byte	.Lframe0
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.byte	0x4
	.4byte	.LCFI359-.LFB120
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI360-.LCFI359
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI361-.LCFI360
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE240:
.LSFDE242:
	.4byte	.LEFDE242-.LASFDE242
.LASFDE242:
	.4byte	.Lframe0
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.byte	0x4
	.4byte	.LCFI362-.LFB121
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI363-.LCFI362
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI364-.LCFI363
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE242:
.LSFDE244:
	.4byte	.LEFDE244-.LASFDE244
.LASFDE244:
	.4byte	.Lframe0
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.byte	0x4
	.4byte	.LCFI365-.LFB122
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI366-.LCFI365
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI367-.LCFI366
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE244:
.LSFDE246:
	.4byte	.LEFDE246-.LASFDE246
.LASFDE246:
	.4byte	.Lframe0
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.byte	0x4
	.4byte	.LCFI368-.LFB123
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI369-.LCFI368
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI370-.LCFI369
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE246:
.LSFDE248:
	.4byte	.LEFDE248-.LASFDE248
.LASFDE248:
	.4byte	.Lframe0
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.byte	0x4
	.4byte	.LCFI371-.LFB124
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI372-.LCFI371
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI373-.LCFI372
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE248:
.LSFDE250:
	.4byte	.LEFDE250-.LASFDE250
.LASFDE250:
	.4byte	.Lframe0
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.byte	0x4
	.4byte	.LCFI374-.LFB125
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI375-.LCFI374
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI376-.LCFI375
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE250:
.LSFDE252:
	.4byte	.LEFDE252-.LASFDE252
.LASFDE252:
	.4byte	.Lframe0
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.byte	0x4
	.4byte	.LCFI377-.LFB126
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI378-.LCFI377
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI379-.LCFI378
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE252:
.LSFDE254:
	.4byte	.LEFDE254-.LASFDE254
.LASFDE254:
	.4byte	.Lframe0
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.byte	0x4
	.4byte	.LCFI380-.LFB127
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI381-.LCFI380
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI382-.LCFI381
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE254:
.LSFDE256:
	.4byte	.LEFDE256-.LASFDE256
.LASFDE256:
	.4byte	.Lframe0
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.byte	0x4
	.4byte	.LCFI383-.LFB128
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI384-.LCFI383
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI385-.LCFI384
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE256:
.LSFDE258:
	.4byte	.LEFDE258-.LASFDE258
.LASFDE258:
	.4byte	.Lframe0
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.byte	0x4
	.4byte	.LCFI386-.LFB129
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI387-.LCFI386
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI388-.LCFI387
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE258:
.LSFDE260:
	.4byte	.LEFDE260-.LASFDE260
.LASFDE260:
	.4byte	.Lframe0
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.byte	0x4
	.4byte	.LCFI389-.LFB130
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI390-.LCFI389
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI391-.LCFI390
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE260:
.LSFDE262:
	.4byte	.LEFDE262-.LASFDE262
.LASFDE262:
	.4byte	.Lframe0
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.byte	0x4
	.4byte	.LCFI392-.LFB131
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI393-.LCFI392
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI394-.LCFI393
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE262:
.LSFDE264:
	.4byte	.LEFDE264-.LASFDE264
.LASFDE264:
	.4byte	.Lframe0
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.byte	0x4
	.4byte	.LCFI395-.LFB132
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI396-.LCFI395
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI397-.LCFI396
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE264:
.LSFDE266:
	.4byte	.LEFDE266-.LASFDE266
.LASFDE266:
	.4byte	.Lframe0
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.byte	0x4
	.4byte	.LCFI398-.LFB133
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI399-.LCFI398
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI400-.LCFI399
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE266:
.LSFDE268:
	.4byte	.LEFDE268-.LASFDE268
.LASFDE268:
	.4byte	.Lframe0
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.byte	0x4
	.4byte	.LCFI401-.LFB134
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI402-.LCFI401
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI403-.LCFI402
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE268:
.LSFDE270:
	.4byte	.LEFDE270-.LASFDE270
.LASFDE270:
	.4byte	.Lframe0
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.byte	0x4
	.4byte	.LCFI404-.LFB135
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI405-.LCFI404
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI406-.LCFI405
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE270:
.LSFDE272:
	.4byte	.LEFDE272-.LASFDE272
.LASFDE272:
	.4byte	.Lframe0
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.byte	0x4
	.4byte	.LCFI407-.LFB136
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI408-.LCFI407
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI409-.LCFI408
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE272:
.LSFDE274:
	.4byte	.LEFDE274-.LASFDE274
.LASFDE274:
	.4byte	.Lframe0
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.byte	0x4
	.4byte	.LCFI410-.LFB137
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI411-.LCFI410
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI412-.LCFI411
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE274:
.LSFDE276:
	.4byte	.LEFDE276-.LASFDE276
.LASFDE276:
	.4byte	.Lframe0
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.byte	0x4
	.4byte	.LCFI413-.LFB138
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI414-.LCFI413
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI415-.LCFI414
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE276:
.LSFDE278:
	.4byte	.LEFDE278-.LASFDE278
.LASFDE278:
	.4byte	.Lframe0
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.byte	0x4
	.4byte	.LCFI416-.LFB139
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI417-.LCFI416
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI418-.LCFI417
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE278:
.LSFDE280:
	.4byte	.LEFDE280-.LASFDE280
.LASFDE280:
	.4byte	.Lframe0
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.byte	0x4
	.4byte	.LCFI419-.LFB140
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI420-.LCFI419
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE280:
.LSFDE282:
	.4byte	.LEFDE282-.LASFDE282
.LASFDE282:
	.4byte	.Lframe0
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.byte	0x4
	.4byte	.LCFI421-.LFB141
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI422-.LCFI421
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI423-.LCFI422
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE282:
.LSFDE284:
	.4byte	.LEFDE284-.LASFDE284
.LASFDE284:
	.4byte	.Lframe0
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.byte	0x4
	.4byte	.LCFI424-.LFB142
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI425-.LCFI424
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE284:
.LSFDE286:
	.4byte	.LEFDE286-.LASFDE286
.LASFDE286:
	.4byte	.Lframe0
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.byte	0x4
	.4byte	.LCFI426-.LFB143
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI427-.LCFI426
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI428-.LCFI427
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE286:
.LSFDE288:
	.4byte	.LEFDE288-.LASFDE288
.LASFDE288:
	.4byte	.Lframe0
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.byte	0x4
	.4byte	.LCFI429-.LFB144
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI430-.LCFI429
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI431-.LCFI430
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE288:
.LSFDE290:
	.4byte	.LEFDE290-.LASFDE290
.LASFDE290:
	.4byte	.Lframe0
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.byte	0x4
	.4byte	.LCFI432-.LFB145
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI433-.LCFI432
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI434-.LCFI433
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE290:
.LSFDE292:
	.4byte	.LEFDE292-.LASFDE292
.LASFDE292:
	.4byte	.Lframe0
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.byte	0x4
	.4byte	.LCFI435-.LFB146
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI436-.LCFI435
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI437-.LCFI436
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE292:
	.text
.Letext0:
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bma2x2.h"
	.section	.debug_types,"G",%progbits,wt.4a9ae2bbc3b4e935,comdat
	.4byte	0x6c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x4a
	.byte	0x9a
	.byte	0xe2
	.byte	0xbb
	.byte	0xc3
	.byte	0xb4
	.byte	0xe9
	.byte	0x35
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x8
	.byte	0x2
	.2byte	0x2bb
	.byte	0x8
	.4byte	0x56
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x2bd
	.byte	0x6
	.4byte	0x56
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.2byte	0x2bf
	.byte	0x5
	.4byte	0x5c
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.2byte	0x2c1
	.byte	0x5
	.4byte	0x5c
	.byte	0x5
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x5c
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x2
	.2byte	0x126
	.byte	0x17
	.4byte	0x68
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.byte	0
	.section	.debug_types,"G",%progbits,wt.455b29ed6cb72083,comdat
	.4byte	0x14e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x45
	.byte	0x5b
	.byte	0x29
	.byte	0xed
	.byte	0x6c
	.byte	0xb7
	.byte	0x20
	.byte	0x83
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF5
	.byte	0x18
	.byte	0x2
	.2byte	0x29b
	.byte	0x8
	.4byte	0xb8
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0x2
	.2byte	0x29d
	.byte	0x5
	.4byte	0xb8
	.byte	0
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x2
	.2byte	0x29f
	.byte	0x5
	.4byte	0xb8
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.2byte	0x2a1
	.byte	0x5
	.4byte	0xb8
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x2
	.2byte	0x2a3
	.byte	0x5
	.4byte	0xb8
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x2
	.2byte	0x2a5
	.byte	0x5
	.4byte	0xb8
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.2byte	0x2a7
	.byte	0x5
	.4byte	0xb8
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x2a9
	.byte	0x6
	.4byte	0xc4
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x2ab
	.byte	0x6
	.4byte	0xc4
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x2ad
	.byte	0x6
	.4byte	0xca
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x2
	.2byte	0x2af
	.byte	0x9
	.4byte	0xd0
	.byte	0x14
	.byte	0
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x2
	.2byte	0x126
	.byte	0x17
	.4byte	0xd6
	.uleb128 0x4
	.byte	0x4
	.4byte	0xdd
	.uleb128 0x4
	.byte	0x4
	.4byte	0xfb
	.uleb128 0x4
	.byte	0x4
	.4byte	0x119
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x7
	.4byte	0x124
	.4byte	0xfb
	.uleb128 0x8
	.4byte	0xb8
	.uleb128 0x8
	.4byte	0xb8
	.uleb128 0x8
	.4byte	0x130
	.uleb128 0x8
	.4byte	0xb8
	.byte	0
	.uleb128 0x7
	.4byte	0x124
	.4byte	0x119
	.uleb128 0x8
	.4byte	0xb8
	.uleb128 0x8
	.4byte	0xb8
	.uleb128 0x8
	.4byte	0x130
	.uleb128 0x8
	.4byte	0x136
	.byte	0
	.uleb128 0x9
	.4byte	0x124
	.uleb128 0x8
	.4byte	0x136
	.byte	0
	.uleb128 0x5
	.ascii	"s8\000"
	.byte	0x2
	.2byte	0x120
	.byte	0x15
	.4byte	0x143
	.uleb128 0x4
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x2
	.2byte	0x128
	.byte	0x16
	.4byte	0x14a
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.byte	0
	.section	.debug_types,"G",%progbits,wt.46bcec2999b4ef28,comdat
	.4byte	0x6f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x46
	.byte	0xbc
	.byte	0xec
	.byte	0x29
	.byte	0x99
	.byte	0xb4
	.byte	0xef
	.byte	0x28
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xa
	.4byte	.LASF20
	.byte	0x6
	.byte	0x2
	.2byte	0x281
	.byte	0x7
	.4byte	0x5e
	.uleb128 0xb
	.4byte	.LASF18
	.byte	0x2
	.2byte	0x284
	.byte	0x1b
	.byte	0x66
	.byte	0x9f
	.byte	0x20
	.byte	0x6d
	.byte	0xdb
	.byte	0x1e
	.byte	0xff
	.byte	0x36
	.uleb128 0xc
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x287
	.byte	0x6
	.4byte	0x5e
	.uleb128 0xc
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x28a
	.byte	0x6
	.4byte	0x5e
	.uleb128 0xc
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x28d
	.byte	0x6
	.4byte	0x5e
	.byte	0
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x2
	.2byte	0x121
	.byte	0x1a
	.4byte	0x6b
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF19
	.byte	0
	.section	.debug_types,"G",%progbits,wt.5b753d184d17dea1,comdat
	.4byte	0x6e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x5b
	.byte	0x75
	.byte	0x3d
	.byte	0x18
	.byte	0x4d
	.byte	0x17
	.byte	0xde
	.byte	0xa1
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF21
	.byte	0x4
	.byte	0x2
	.2byte	0x26c
	.byte	0x8
	.4byte	0x5e
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x26d
	.byte	0x4
	.4byte	0x5e
	.byte	0
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x26e
	.byte	0x1
	.4byte	0x5e
	.byte	0x1
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x26f
	.byte	0x1
	.4byte	0x5e
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x2
	.2byte	0x270
	.byte	0x4
	.4byte	0x5e
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.ascii	"s8\000"
	.byte	0x2
	.2byte	0x120
	.byte	0x15
	.4byte	0x6a
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF16
	.byte	0
	.section	.debug_types,"G",%progbits,wt.2a313dd1f2222659,comdat
	.4byte	0x60
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x2a
	.byte	0x31
	.byte	0x3d
	.byte	0xd1
	.byte	0xf2
	.byte	0x22
	.byte	0x26
	.byte	0x59
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF23
	.byte	0x3
	.byte	0x2
	.2byte	0x264
	.byte	0x8
	.4byte	0x50
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x265
	.byte	0x4
	.4byte	0x50
	.byte	0
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x266
	.byte	0x1
	.4byte	0x50
	.byte	0x1
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x267
	.byte	0x1
	.4byte	0x50
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.ascii	"s8\000"
	.byte	0x2
	.2byte	0x120
	.byte	0x15
	.4byte	0x5c
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF16
	.byte	0
	.section	.debug_types,"G",%progbits,wt.c0a7a20786f23ca4,comdat
	.4byte	0x82
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xc0
	.byte	0xa7
	.byte	0xa2
	.byte	0x7
	.byte	0x86
	.byte	0xf2
	.byte	0x3c
	.byte	0xa4
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF24
	.byte	0x8
	.byte	0x2
	.2byte	0x25a
	.byte	0x8
	.4byte	0x5e
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x25b
	.byte	0x5
	.4byte	0x5e
	.byte	0
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x25c
	.byte	0x1
	.4byte	0x5e
	.byte	0x2
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x25d
	.byte	0x1
	.4byte	0x5e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x2
	.2byte	0x25e
	.byte	0x4
	.4byte	0x6b
	.byte	0x6
	.byte	0
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x2
	.2byte	0x121
	.byte	0x1a
	.4byte	0x77
	.uleb128 0x5
	.ascii	"s8\000"
	.byte	0x2
	.2byte	0x120
	.byte	0x15
	.4byte	0x7e
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF16
	.byte	0
	.section	.debug_types,"G",%progbits,wt.669f206ddb1eff36,comdat
	.4byte	0x61
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x66
	.byte	0x9f
	.byte	0x20
	.byte	0x6d
	.byte	0xdb
	.byte	0x1e
	.byte	0xff
	.byte	0x36
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF25
	.byte	0x6
	.byte	0x2
	.2byte	0x251
	.byte	0x8
	.4byte	0x50
	.uleb128 0xd
	.ascii	"x\000"
	.byte	0x2
	.2byte	0x252
	.byte	0x5
	.4byte	0x50
	.byte	0
	.uleb128 0xd
	.ascii	"y\000"
	.byte	0x2
	.2byte	0x253
	.byte	0x1
	.4byte	0x50
	.byte	0x2
	.uleb128 0xd
	.ascii	"z\000"
	.byte	0x2
	.2byte	0x254
	.byte	0x1
	.4byte	0x50
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x2
	.2byte	0x121
	.byte	0x1a
	.4byte	0x5d
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF19
	.byte	0
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x311b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0xe
	.4byte	.LASF282
	.byte	0xc
	.4byte	.LASF283
	.4byte	.LASF284
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x5
	.ascii	"s8\000"
	.byte	0x2
	.2byte	0x120
	.byte	0x15
	.4byte	0x35
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF16
	.uleb128 0x5
	.ascii	"s16\000"
	.byte	0x2
	.2byte	0x121
	.byte	0x1a
	.4byte	0x49
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF19
	.uleb128 0x5
	.ascii	"s32\000"
	.byte	0x2
	.2byte	0x122
	.byte	0x14
	.4byte	0x5d
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF26
	.uleb128 0x5
	.ascii	"u8\000"
	.byte	0x2
	.2byte	0x126
	.byte	0x17
	.4byte	0x77
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF4
	.uleb128 0x5
	.ascii	"u16\000"
	.byte	0x2
	.2byte	0x127
	.byte	0x1c
	.4byte	0x8b
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF27
	.uleb128 0x5
	.ascii	"u32\000"
	.byte	0x2
	.2byte	0x128
	.byte	0x16
	.4byte	0x9f
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF17
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF28
	.uleb128 0x4
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.byte	0x55
	.byte	0x19
	.4byte	0xc5
	.uleb128 0x5
	.byte	0x3
	.4byte	p_bma2x2
	.uleb128 0x11
	.byte	0x4
	.byte	0x45
	.byte	0x5b
	.byte	0x29
	.byte	0xed
	.byte	0x6c
	.byte	0xb7
	.byte	0x20
	.byte	0x83
	.uleb128 0x12
	.4byte	.LASF285
	.byte	0x1
	.byte	0x57
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x5
	.byte	0x3
	.4byte	V_BMA2x2RESOLUTION_U8
	.uleb128 0x13
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x22a9
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12d
	.uleb128 0x14
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x22aa
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x22af
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x22b2
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x2271
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x179
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x2272
	.byte	0x2c
	.4byte	0x179
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x2276
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x2277
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x5b
	.byte	0x75
	.byte	0x3d
	.byte	0x18
	.byte	0x4d
	.byte	0x17
	.byte	0xde
	.byte	0xa1
	.uleb128 0x13
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x21ec
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cf
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x21ed
	.byte	0x20
	.4byte	0x1cf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x21f1
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x21f2
	.byte	0x5
	.4byte	0x1d9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0xc0
	.byte	0xa7
	.byte	0xa2
	.byte	0x7
	.byte	0x86
	.byte	0xf2
	.byte	0x3c
	.byte	0xa4
	.uleb128 0x16
	.4byte	0x6b
	.4byte	0x1e9
	.uleb128 0x17
	.4byte	0x9f
	.byte	0x6
	.byte	0
	.uleb128 0x13
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x21ca
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x235
	.uleb128 0x14
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x21ca
	.byte	0x19
	.4byte	0x235
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x21cc
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x21cf
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x29
	.uleb128 0x18
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x2195
	.byte	0xd
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a3
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x2195
	.byte	0x30
	.4byte	0x2a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x2195
	.byte	0x41
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x2196
	.byte	0x1d
	.4byte	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x2198
	.byte	0x6
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x2199
	.byte	0x6
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x46
	.byte	0xbc
	.byte	0xec
	.byte	0x29
	.byte	0x99
	.byte	0xb4
	.byte	0xef
	.byte	0x28
	.uleb128 0x11
	.byte	0x4
	.byte	0x4a
	.byte	0x9a
	.byte	0xe2
	.byte	0xbb
	.byte	0xc3
	.byte	0xb4
	.byte	0xe9
	.byte	0x35
	.uleb128 0x19
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x213a
	.byte	0xd
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x33f
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x213a
	.byte	0x32
	.4byte	0x2a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x213a
	.byte	0x43
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x213b
	.byte	0x6
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x213b
	.byte	0x16
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -29
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x213c
	.byte	0x1d
	.4byte	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x213e
	.byte	0x6
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x213f
	.byte	0x6
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x18
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x2117
	.byte	0xd
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3a7
	.uleb128 0x14
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x2117
	.byte	0x28
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x14
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x2117
	.byte	0x38
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x2118
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x14
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x2118
	.byte	0x1b
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x2119
	.byte	0x1d
	.4byte	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x20ef
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x443
	.uleb128 0x14
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x20ef
	.byte	0x2b
	.4byte	0x2a3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x14
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x20f0
	.byte	0x6
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x20f0
	.byte	0x34
	.4byte	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x20f2
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x15
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x20f3
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x20f4
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x20f5
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x20f7
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x20a8
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4af
	.uleb128 0x14
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x20a9
	.byte	0x20
	.4byte	0x2ad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x20ab
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x15
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x20ac
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x20ad
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x20b0
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x2066
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x50b
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x2067
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x2069
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x206a
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x206d
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x203c
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB136
	.4byte	.LFE136-.LFB136
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x557
	.uleb128 0x14
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x203d
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x2041
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x2042
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x1fff
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB135
	.4byte	.LFE135-.LFB135
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5b3
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1fff
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x2001
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x2002
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x2005
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1fd6
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB134
	.4byte	.LFE134-.LFB134
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5ff
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1fd6
	.byte	0x1d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1fda
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1fdb
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1f9b
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB133
	.4byte	.LFE133-.LFB133
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x65b
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1f9b
	.byte	0x19
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1f9c
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1f9e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1fa1
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x1f59
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB132
	.4byte	.LFE132-.LFB132
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6b7
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1f59
	.byte	0x19
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1f5a
	.byte	0x5
	.4byte	0x235
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1f5c
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1f5f
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1efc
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB131
	.4byte	.LFE131-.LFB131
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x713
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1efc
	.byte	0x20
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1efd
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1eff
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1f02
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1e9e
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB130
	.4byte	.LFE130-.LFB130
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x76f
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1e9e
	.byte	0x20
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1e9f
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1ea1
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1ea4
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1e60
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB129
	.4byte	.LFE129-.LFB129
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7bb
	.uleb128 0x14
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1e60
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1e62
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1e65
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1e38
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB128
	.4byte	.LFE128-.LFB128
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x807
	.uleb128 0x14
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1e38
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1e3a
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1e3d
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x1e12
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB127
	.4byte	.LFE127-.LFB127
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x853
	.uleb128 0x14
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x1e12
	.byte	0x1b
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1e14
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1e17
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x1dc5
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB126
	.4byte	.LFE126-.LFB126
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8af
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1dc5
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1dc6
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1dc8
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1dcb
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1d79
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x90b
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1d79
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1d7a
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1d7c
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1d7f
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1d30
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x967
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1d30
	.byte	0x1a
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1d31
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1d33
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1d36
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1ced
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9c3
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1ced
	.byte	0x1a
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1cee
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1cf0
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1cf3
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1cb6
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa0f
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1cb6
	.byte	0x17
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1cb8
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1cbb
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1c8d
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa5b
	.uleb128 0x14
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1c8d
	.byte	0x18
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1c8f
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1c92
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1c65
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaa7
	.uleb128 0x14
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1c65
	.byte	0x22
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1c69
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1c6a
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1c3d
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xaf3
	.uleb128 0x14
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x1c3d
	.byte	0x21
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1c41
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1c42
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x1c12
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb3f
	.uleb128 0x14
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x1c12
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1c14
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1c17
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x1be6
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb8b
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1be6
	.byte	0x1f
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1be8
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1beb
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1bc0
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbd7
	.uleb128 0x14
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1bc1
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1bc3
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1bc6
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x1b91
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc23
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1b92
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1b94
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1b97
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x1b68
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc6f
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x1b69
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1b6b
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1b6e
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x1b38
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xcbb
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x1b39
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1b3b
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1b3e
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x1b0d
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd07
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x1b0e
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1b10
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1b13
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1ad6
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd63
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x1ad7
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1ad9
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x1ada
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1add
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1aaf
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdaf
	.uleb128 0x14
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x1ab0
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1ab2
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1ab5
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1a85
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdfb
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1a86
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1a88
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1a8b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x1a59
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe47
	.uleb128 0x14
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1a5a
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1a5c
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1a5f
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1a2c
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe93
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1a2c
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1a2e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1a31
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x1a06
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xedf
	.uleb128 0x14
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1a06
	.byte	0x1d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1a08
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1a0b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x19dd
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2b
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x19dd
	.byte	0x20
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x19df
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x19e2
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x19b6
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf77
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x19b6
	.byte	0x21
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x19b8
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x19bb
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x197b
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfd3
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x197b
	.byte	0x18
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x197c
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x197e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1981
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x193d
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x102f
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x193d
	.byte	0x18
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x193e
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1940
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1943
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF113
	.byte	0x1
	.2byte	0x190d
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x107b
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x190d
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x190f
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1912
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF115
	.byte	0x1
	.2byte	0x18e8
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10c7
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x1
	.2byte	0x18e8
	.byte	0x1f
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x18ea
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x18ed
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x1
	.2byte	0x18c0
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1113
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x18c0
	.byte	0x1f
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x18c2
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x18c5
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0x1
	.2byte	0x188f
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x115f
	.uleb128 0x14
	.4byte	.LASF117
	.byte	0x1
	.2byte	0x1890
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1892
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1895
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF119
	.byte	0x1
	.2byte	0x185d
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11ab
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x185d
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x185f
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1862
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0x1
	.2byte	0x1833
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11f7
	.uleb128 0x14
	.4byte	.LASF120
	.byte	0x1
	.2byte	0x1833
	.byte	0x1f
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1835
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1838
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF122
	.byte	0x1
	.2byte	0x1806
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1243
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x1806
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1808
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x180b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF124
	.byte	0x1
	.2byte	0x17dc
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x128f
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x1
	.2byte	0x17dc
	.byte	0x1e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x17de
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x17e1
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF125
	.byte	0x1
	.2byte	0x17b0
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12db
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x17b0
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x17b2
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x17b5
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF127
	.byte	0x1
	.2byte	0x1785
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1327
	.uleb128 0x14
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x1785
	.byte	0x1d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1787
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x178a
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0x1
	.2byte	0x1756
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1373
	.uleb128 0x14
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x1756
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1758
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x175b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF130
	.byte	0x1
	.2byte	0x172f
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13bf
	.uleb128 0x14
	.4byte	.LASF129
	.byte	0x1
	.2byte	0x172f
	.byte	0x1d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1731
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1734
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF131
	.byte	0x1
	.2byte	0x1705
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x140b
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x1705
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1707
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x170a
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF133
	.byte	0x1
	.2byte	0x16dd
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1457
	.uleb128 0x14
	.4byte	.LASF132
	.byte	0x1
	.2byte	0x16dd
	.byte	0x1d
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x16df
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x16e2
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF134
	.byte	0x1
	.2byte	0x16b2
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14a3
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x16b2
	.byte	0x1b
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x16b4
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x16b7
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF136
	.byte	0x1
	.2byte	0x1684
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14ef
	.uleb128 0x14
	.4byte	.LASF135
	.byte	0x1
	.2byte	0x1684
	.byte	0x1c
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1686
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1689
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF137
	.byte	0x1
	.2byte	0x1653
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x153b
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x1653
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1655
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1658
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x162d
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1587
	.uleb128 0x14
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x162d
	.byte	0x1e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x162f
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1632
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x15f1
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15e3
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x15f1
	.byte	0x22
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x15f2
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x15f4
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x15f7
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x15ac
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x163f
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x15ac
	.byte	0x22
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x15ad
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x15af
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x15b2
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x155b
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x169b
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x155b
	.byte	0x18
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x155c
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x155e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1561
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x14eb
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16f7
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x14eb
	.byte	0x18
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x14ec
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x14ee
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x14f1
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x1475
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1753
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1475
	.byte	0x17
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x1476
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1478
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x147b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x141a
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17af
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x141a
	.byte	0x17
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x141b
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x141d
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1420
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x1385
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x180b
	.uleb128 0x14
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1385
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1387
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x138a
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x138b
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x1351
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1857
	.uleb128 0x14
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x1351
	.byte	0x1e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1353
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1356
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x131c
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18a3
	.uleb128 0x14
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x131c
	.byte	0x17
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x131e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1321
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x12dd
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18ff
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x12dd
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x12de
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x12e0
	.byte	0x6
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x12e3
	.byte	0x6
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x12a0
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x195b
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x12a0
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x12a1
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x12a3
	.byte	0x6
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x12a6
	.byte	0x6
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x125b
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19b7
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x125b
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x125c
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x125e
	.byte	0x6
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1261
	.byte	0x6
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x121d
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a13
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x121d
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x121e
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1220
	.byte	0x6
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1223
	.byte	0x6
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x11a7
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a6f
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x11a7
	.byte	0x19
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x11a8
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x11aa
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x11ad
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x1146
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1acb
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1146
	.byte	0x19
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x1147
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1149
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x114c
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x110a
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b17
	.uleb128 0x14
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x110a
	.byte	0x22
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x110c
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x110f
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x10e0
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b63
	.uleb128 0x14
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x10e0
	.byte	0x23
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x10e2
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x10e5
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x10ad
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1baf
	.uleb128 0x14
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x10ad
	.byte	0x22
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x10af
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x10b2
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x1084
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bfb
	.uleb128 0x14
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x1084
	.byte	0x23
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1086
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1089
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x1052
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c47
	.uleb128 0x14
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x1052
	.byte	0x20
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1054
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1057
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x102b
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c93
	.uleb128 0x14
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x102b
	.byte	0x21
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x102d
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1030
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF173
	.byte	0x1
	.2byte	0xffb
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cdf
	.uleb128 0x14
	.4byte	.LASF174
	.byte	0x1
	.2byte	0xffb
	.byte	0x20
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xffd
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1000
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF175
	.byte	0x1
	.2byte	0xfd4
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d2b
	.uleb128 0x14
	.4byte	.LASF174
	.byte	0x1
	.2byte	0xfd4
	.byte	0x21
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xfd6
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xfd9
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF176
	.byte	0x1
	.2byte	0xf95
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d87
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xf95
	.byte	0x1b
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF177
	.byte	0x1
	.2byte	0xf96
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xf98
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xf9b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF178
	.byte	0x1
	.2byte	0xf55
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1de3
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xf55
	.byte	0x1b
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF177
	.byte	0x1
	.2byte	0xf56
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xf58
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xf5b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF179
	.byte	0x1
	.2byte	0xf0d
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e3f
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xf0d
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF180
	.byte	0x1
	.2byte	0xf0e
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xf10
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xf13
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF181
	.byte	0x1
	.2byte	0xecc
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e9b
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xecc
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF180
	.byte	0x1
	.2byte	0xecd
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xecf
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xed2
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF182
	.byte	0x1
	.2byte	0xe83
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ef7
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xe83
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF183
	.byte	0x1
	.2byte	0xe84
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xe86
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xe89
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF184
	.byte	0x1
	.2byte	0xe44
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f53
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xe44
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF183
	.byte	0x1
	.2byte	0xe45
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xe47
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xe4a
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF185
	.byte	0x1
	.2byte	0xdfc
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1faf
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xdfc
	.byte	0x22
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF186
	.byte	0x1
	.2byte	0xdfd
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xdff
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xe02
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF187
	.byte	0x1
	.2byte	0xdbc
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x200b
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xdbc
	.byte	0x22
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF186
	.byte	0x1
	.2byte	0xdbd
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xdbf
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xdc2
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF188
	.byte	0x1
	.2byte	0xd72
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2067
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xd72
	.byte	0x22
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF189
	.byte	0x1
	.2byte	0xd73
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xd75
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xd78
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF190
	.byte	0x1
	.2byte	0xd31
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20c3
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xd31
	.byte	0x22
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF189
	.byte	0x1
	.2byte	0xd32
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xd34
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xd37
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF191
	.byte	0x1
	.2byte	0xce6
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x211f
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xce6
	.byte	0x26
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF192
	.byte	0x1
	.2byte	0xce7
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xce9
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xcec
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF193
	.byte	0x1
	.2byte	0xca4
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x217b
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xca4
	.byte	0x26
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF192
	.byte	0x1
	.2byte	0xca5
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xca7
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xcaa
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF194
	.byte	0x1
	.2byte	0xc5a
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21d7
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xc5a
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF195
	.byte	0x1
	.2byte	0xc5b
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xc5d
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xc60
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF196
	.byte	0x1
	.2byte	0xc19
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2233
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xc19
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF195
	.byte	0x1
	.2byte	0xc1a
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xc1c
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xc1f
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF197
	.byte	0x1
	.2byte	0xbd0
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x228f
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xbd0
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF198
	.byte	0x1
	.2byte	0xbd1
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xbd3
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xbd6
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF199
	.byte	0x1
	.2byte	0xb91
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22eb
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xb91
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF198
	.byte	0x1
	.2byte	0xb92
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xb94
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xb97
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF200
	.byte	0x1
	.2byte	0xb4c
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2347
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xb4c
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF201
	.byte	0x1
	.2byte	0xb4d
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xb4f
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xb52
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF202
	.byte	0x1
	.2byte	0xb0a
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23a3
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xb0a
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF203
	.byte	0x1
	.2byte	0xb0b
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xb0d
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xb10
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF204
	.byte	0x1
	.2byte	0xaa4
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23ff
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xaa4
	.byte	0x21
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF205
	.byte	0x1
	.2byte	0xaa5
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xaa7
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xaaa
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF206
	.byte	0x1
	.2byte	0xa52
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x245b
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.2byte	0xa52
	.byte	0x21
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF205
	.byte	0x1
	.2byte	0xa53
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xa55
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xa58
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF207
	.byte	0x1
	.2byte	0xa1a
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24a7
	.uleb128 0x14
	.4byte	.LASF208
	.byte	0x1
	.2byte	0xa1a
	.byte	0x1f
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0xa1c
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0xa1f
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x9ef
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24f3
	.uleb128 0x14
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x9ef
	.byte	0x20
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x9f1
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x9f4
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x9bc
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x253f
	.uleb128 0x14
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x9bc
	.byte	0x21
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x9be
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x9c1
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x993
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x258b
	.uleb128 0x14
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x993
	.byte	0x22
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x997
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x998
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x920
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25f7
	.uleb128 0x14
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x920
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x921
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x925
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x926
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x927
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.uleb128 0x13
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x880
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2653
	.uleb128 0x14
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x880
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x881
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x883
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x886
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x83e
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x268f
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x842
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x843
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x81c
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26cb
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x820
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x821
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x7f8
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2717
	.uleb128 0x14
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x7f8
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x7fc
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x7fd
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x7d2
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2763
	.uleb128 0x14
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x7d2
	.byte	0x1e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x7d6
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x7d7
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x7aa
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27af
	.uleb128 0x14
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x7aa
	.byte	0x1a
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x7ae
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x7af
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF225
	.byte	0x1
	.2byte	0x786
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27fb
	.uleb128 0x14
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x786
	.byte	0x1b
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x78a
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x78b
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF226
	.byte	0x1
	.2byte	0x75b
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2847
	.uleb128 0x14
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x75b
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x75d
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x760
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF228
	.byte	0x1
	.2byte	0x732
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2893
	.uleb128 0x14
	.4byte	.LASF227
	.byte	0x1
	.2byte	0x733
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x735
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x738
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF229
	.byte	0x1
	.2byte	0x6c7
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28ef
	.uleb128 0x14
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x6c7
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x6c9
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x6cc
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF231
	.byte	0x1
	.2byte	0x6cd
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF232
	.byte	0x1
	.2byte	0x694
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x293b
	.uleb128 0x14
	.4byte	.LASF230
	.byte	0x1
	.2byte	0x694
	.byte	0x1e
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x696
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x699
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF233
	.byte	0x1
	.2byte	0x644
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2977
	.uleb128 0x14
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x644
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x646
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF234
	.byte	0x1
	.2byte	0x5e6
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a03
	.uleb128 0x14
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x5e6
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x5ea
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF235
	.byte	0x1
	.2byte	0x5eb
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF236
	.byte	0x1
	.2byte	0x5ec
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x5ed
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x5ee
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x15
	.4byte	.LASF237
	.byte	0x1
	.2byte	0x5ef
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x13
	.4byte	.LASF238
	.byte	0x1
	.2byte	0x57e
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a5f
	.uleb128 0x14
	.4byte	.LASF6
	.byte	0x1
	.2byte	0x57f
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x583
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x584
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x15
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x585
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.uleb128 0x13
	.4byte	.LASF239
	.byte	0x1
	.2byte	0x4e2
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2abb
	.uleb128 0x14
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x4e2
	.byte	0x15
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x4e6
	.byte	0x4
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x4e7
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x15
	.4byte	.LASF241
	.byte	0x1
	.2byte	0x4e8
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF242
	.byte	0x1
	.2byte	0x4b3
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b07
	.uleb128 0x14
	.4byte	.LASF240
	.byte	0x1
	.2byte	0x4b3
	.byte	0x16
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x4b7
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x4b8
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF243
	.byte	0x1
	.2byte	0x466
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b53
	.uleb128 0x14
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x466
	.byte	0x18
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x46a
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x46b
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF245
	.byte	0x1
	.2byte	0x43d
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2b9f
	.uleb128 0x14
	.4byte	.LASF244
	.byte	0x1
	.2byte	0x43d
	.byte	0x19
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x441
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x442
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF246
	.byte	0x1
	.2byte	0x415
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2bdb
	.uleb128 0x14
	.4byte	.LASF247
	.byte	0x1
	.2byte	0x416
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x41a
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF248
	.byte	0x1
	.2byte	0x3ef
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c27
	.uleb128 0x14
	.4byte	.LASF249
	.byte	0x1
	.2byte	0x3f0
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x3f4
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x3f5
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF250
	.byte	0x1
	.2byte	0x3ca
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2c73
	.uleb128 0x14
	.4byte	.LASF251
	.byte	0x1
	.2byte	0x3cb
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x3cf
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x3d0
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF252
	.byte	0x1
	.2byte	0x3a8
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2caf
	.uleb128 0x14
	.4byte	.LASF253
	.byte	0x1
	.2byte	0x3a9
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x3ad
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF254
	.byte	0x1
	.2byte	0x388
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2ceb
	.uleb128 0x14
	.4byte	.LASF255
	.byte	0x1
	.2byte	0x389
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x38d
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF256
	.byte	0x1
	.2byte	0x367
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d27
	.uleb128 0x14
	.4byte	.LASF257
	.byte	0x1
	.2byte	0x368
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x36c
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x13
	.4byte	.LASF258
	.byte	0x1
	.2byte	0x335
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2d73
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x336
	.byte	0x27
	.4byte	0x2d73
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x33a
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x33b
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x2a
	.byte	0x31
	.byte	0x3d
	.byte	0xd1
	.byte	0xf2
	.byte	0x22
	.byte	0x26
	.byte	0x59
	.uleb128 0x13
	.4byte	.LASF259
	.byte	0x1
	.2byte	0x2ac
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dc9
	.uleb128 0x14
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x2ad
	.byte	0x1b
	.4byte	0x2dc9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x2b1
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x2ba
	.byte	0x5
	.4byte	0x2dd3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.byte	0x4
	.byte	0x66
	.byte	0x9f
	.byte	0x20
	.byte	0x6d
	.byte	0xdb
	.byte	0x1e
	.byte	0xff
	.byte	0x36
	.uleb128 0x16
	.4byte	0x6b
	.4byte	0x2de3
	.uleb128 0x17
	.4byte	0x9f
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF260
	.byte	0x1
	.2byte	0x286
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e2f
	.uleb128 0x14
	.4byte	.LASF261
	.byte	0x1
	.2byte	0x287
	.byte	0x5
	.4byte	0x235
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x28b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x28c
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF263
	.byte	0x1
	.2byte	0x234
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e7b
	.uleb128 0x14
	.4byte	.LASF264
	.byte	0x1
	.2byte	0x234
	.byte	0x1d
	.4byte	0x2e7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x238
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x23d
	.byte	0x5
	.4byte	0x2e81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.4byte	0x3c
	.uleb128 0x16
	.4byte	0x6b
	.4byte	0x2e91
	.uleb128 0x17
	.4byte	0x9f
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF265
	.byte	0x1
	.2byte	0x20c
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2edd
	.uleb128 0x14
	.4byte	.LASF266
	.byte	0x1
	.2byte	0x20d
	.byte	0x5
	.4byte	0x235
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x211
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x212
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF267
	.byte	0x1
	.2byte	0x1ba
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f29
	.uleb128 0x14
	.4byte	.LASF268
	.byte	0x1
	.2byte	0x1ba
	.byte	0x1d
	.4byte	0x2e7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1be
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1c3
	.byte	0x5
	.4byte	0x2e81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x13
	.4byte	.LASF269
	.byte	0x1
	.2byte	0x191
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2f75
	.uleb128 0x14
	.4byte	.LASF270
	.byte	0x1
	.2byte	0x192
	.byte	0x5
	.4byte	0x235
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x196
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF262
	.byte	0x1
	.2byte	0x197
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x13
	.4byte	.LASF271
	.byte	0x1
	.2byte	0x141
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2fc1
	.uleb128 0x14
	.4byte	.LASF272
	.byte	0x1
	.2byte	0x141
	.byte	0x1d
	.4byte	0x2e7b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x145
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x15
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x14a
	.byte	0x5
	.4byte	0x2e81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x13
	.4byte	.LASF273
	.byte	0x1
	.2byte	0x11c
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x301d
	.uleb128 0x14
	.4byte	.LASF274
	.byte	0x1
	.2byte	0x11c
	.byte	0x17
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x14
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x11d
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x14
	.4byte	.LASF275
	.byte	0x1
	.2byte	0x11d
	.byte	0x11
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x15
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x121
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF276
	.byte	0x1
	.byte	0xf4
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3074
	.uleb128 0x1c
	.4byte	.LASF274
	.byte	0x1
	.byte	0xf4
	.byte	0x18
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1c
	.4byte	.LASF30
	.byte	0x1
	.byte	0xf5
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LASF275
	.byte	0x1
	.byte	0xf5
	.byte	0x11
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0xf9
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF277
	.byte	0x1
	.byte	0xc8
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x30cb
	.uleb128 0x1c
	.4byte	.LASF278
	.byte	0x1
	.byte	0xc8
	.byte	0x21
	.4byte	0xc5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0xcc
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.byte	0xcd
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x10
	.4byte	.LASF279
	.byte	0x1
	.byte	0xce
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF286
	.byte	0x1
	.byte	0xa0
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1c
	.4byte	.LASF280
	.byte	0x1
	.byte	0xa0
	.byte	0x19
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1c
	.4byte	.LASF30
	.byte	0x1
	.byte	0xa1
	.byte	0x5
	.4byte	0xad
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x1c
	.4byte	.LASF281
	.byte	0x1
	.byte	0xa1
	.byte	0x12
	.4byte	0x92
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0xa5
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
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
	.uleb128 0x8
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x17
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
	.uleb128 0xb
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
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0xfae
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x311f
	.4byte	0xb3
	.ascii	"p_bma2x2\000"
	.4byte	0xcf
	.ascii	"V_BMA2x2RESOLUTION_U8\000"
	.4byte	0xb3
	.ascii	"p_bma2x2\000"
	.4byte	0xe1
	.ascii	"bma2x2_get_fifo_data_output_reg\000"
	.4byte	0x12d
	.ascii	"bma2x2_read_accel_eight_resolution_xyzt\000"
	.4byte	0x183
	.ascii	"bma2x2_read_accel_xyzt\000"
	.4byte	0x1e9
	.ascii	"bma2x2_read_temp\000"
	.4byte	0x23b
	.ascii	"unpack_accel_xyz\000"
	.4byte	0x2b7
	.ascii	"unpack_accel_frame\000"
	.4byte	0x33f
	.ascii	"get_accel_len_to_parse\000"
	.4byte	0x3a7
	.ascii	"bma2x2_extract_accel\000"
	.4byte	0x443
	.ascii	"bma2x2_read_fifo_data\000"
	.4byte	0x4af
	.ascii	"bma2x2_set_fifo_data_select\000"
	.4byte	0x50b
	.ascii	"bma2x2_get_fifo_data_select\000"
	.4byte	0x557
	.ascii	"bma2x2_set_fifo_mode\000"
	.4byte	0x5b3
	.ascii	"bma2x2_get_fifo_mode\000"
	.4byte	0x5ff
	.ascii	"bma2x2_set_offset\000"
	.4byte	0x65b
	.ascii	"bma2x2_get_offset\000"
	.4byte	0x6b7
	.ascii	"bma2x2_set_offset_target\000"
	.4byte	0x713
	.ascii	"bma2x2_get_offset_target\000"
	.4byte	0x76f
	.ascii	"bma2x2_set_offset_rst\000"
	.4byte	0x7bb
	.ascii	"bma2x2_set_cal_trigger\000"
	.4byte	0x807
	.ascii	"bma2x2_get_cal_rdy\000"
	.4byte	0x853
	.ascii	"bma2x2_set_slow_comp\000"
	.4byte	0x8af
	.ascii	"bma2x2_get_slow_comp\000"
	.4byte	0x90b
	.ascii	"bma2x2_set_i2c_wdt\000"
	.4byte	0x967
	.ascii	"bma2x2_get_i2c_wdt\000"
	.4byte	0x9c3
	.ascii	"bma2x2_set_spi3\000"
	.4byte	0xa0f
	.ascii	"bma2x2_get_spi3\000"
	.4byte	0xa5b
	.ascii	"bma2x2_get_nvmprog_remain\000"
	.4byte	0xaa7
	.ascii	"bma2x2_get_nvmprog_ready\000"
	.4byte	0xaf3
	.ascii	"bma2x2_set_nvprog_trig\000"
	.4byte	0xb3f
	.ascii	"bma2x2_set_nvmprog_mode\000"
	.4byte	0xb8b
	.ascii	"bma2x2_get_nvmprog_mode\000"
	.4byte	0xbd7
	.ascii	"bma2x2_set_selftest_sign\000"
	.4byte	0xc23
	.ascii	"bma2x2_get_selftest_sign\000"
	.4byte	0xc6f
	.ascii	"bma2x2_set_selftest_axis\000"
	.4byte	0xcbb
	.ascii	"bma2x2_get_selftest_axis\000"
	.4byte	0xd07
	.ascii	"bma2x2_set_fifo_wml_trig\000"
	.4byte	0xd63
	.ascii	"bma2x2_get_fifo_wml_trig\000"
	.4byte	0xdaf
	.ascii	"bma2x2_set_flat_hold_time\000"
	.4byte	0xdfb
	.ascii	"bma2x2_get_flat_hold_time\000"
	.4byte	0xe47
	.ascii	"bma2x2_set_flat_hyst\000"
	.4byte	0xe93
	.ascii	"bma2x2_get_flat_hyst\000"
	.4byte	0xedf
	.ascii	"bma2x2_set_orient_enable\000"
	.4byte	0xf2b
	.ascii	"bma2x2_get_orient_enable\000"
	.4byte	0xf77
	.ascii	"bma2x2_set_theta\000"
	.4byte	0xfd3
	.ascii	"bma2x2_get_theta\000"
	.4byte	0x102f
	.ascii	"bma2x2_set_orient_hyst\000"
	.4byte	0x107b
	.ascii	"bma2x2_get_orient_hyst\000"
	.4byte	0x10c7
	.ascii	"bma2x2_set_orient_block\000"
	.4byte	0x1113
	.ascii	"bma2x2_get_orient_block\000"
	.4byte	0x115f
	.ascii	"bma2x2_set_orient_mode\000"
	.4byte	0x11ab
	.ascii	"bma2x2_get_orient_mode\000"
	.4byte	0x11f7
	.ascii	"bma2x2_set_tap_sample\000"
	.4byte	0x1243
	.ascii	"bma2x2_get_tap_sample\000"
	.4byte	0x128f
	.ascii	"bma2x2_set_tap_thres\000"
	.4byte	0x12db
	.ascii	"bma2x2_get_tap_thres\000"
	.4byte	0x1327
	.ascii	"bma2x2_set_tap_quiet\000"
	.4byte	0x1373
	.ascii	"bma2x2_get_tap_quiet\000"
	.4byte	0x13bf
	.ascii	"bma2x2_set_tap_shock\000"
	.4byte	0x140b
	.ascii	"bma2x2_get_tap_shock\000"
	.4byte	0x1457
	.ascii	"bma2x2_set_tap_durn\000"
	.4byte	0x14a3
	.ascii	"bma2x2_get_tap_durn\000"
	.4byte	0x14ef
	.ascii	"bma2x2_set_low_g_mode\000"
	.4byte	0x153b
	.ascii	"bma2x2_get_low_g_mode\000"
	.4byte	0x1587
	.ascii	"bma2x2_set_low_high_g_hyst\000"
	.4byte	0x15e3
	.ascii	"bma2x2_get_low_high_g_hyst\000"
	.4byte	0x163f
	.ascii	"bma2x2_set_thres\000"
	.4byte	0x169b
	.ascii	"bma2x2_get_thres\000"
	.4byte	0x16f7
	.ascii	"bma2x2_set_durn\000"
	.4byte	0x1753
	.ascii	"bma2x2_get_durn\000"
	.4byte	0x17af
	.ascii	"bma2x2_set_latch_intr\000"
	.4byte	0x180b
	.ascii	"bma2x2_get_latch_intr\000"
	.4byte	0x1857
	.ascii	"bma2x2_rst_intr\000"
	.4byte	0x18a3
	.ascii	"bma2x2_set_intr_level\000"
	.4byte	0x18ff
	.ascii	"bma2x2_get_intr_level\000"
	.4byte	0x195b
	.ascii	"bma2x2_set_intr_output_type\000"
	.4byte	0x19b7
	.ascii	"bma2x2_get_intr_output_type\000"
	.4byte	0x1a13
	.ascii	"bma2x2_set_source\000"
	.4byte	0x1a6f
	.ascii	"bma2x2_get_source\000"
	.4byte	0x1acb
	.ascii	"bma2x2_set_intr2_fifo_full\000"
	.4byte	0x1b17
	.ascii	"bma2x2_get_intr2_fifo_full\000"
	.4byte	0x1b63
	.ascii	"bma2x2_set_intr1_fifo_full\000"
	.4byte	0x1baf
	.ascii	"bma2x2_get_intr1_fifo_full\000"
	.4byte	0x1bfb
	.ascii	"bma2x2_set_intr2_fifo_wm\000"
	.4byte	0x1c47
	.ascii	"bma2x2_get_intr2_fifo_wm\000"
	.4byte	0x1c93
	.ascii	"bma2x2_set_intr1_fifo_wm\000"
	.4byte	0x1cdf
	.ascii	"bma2x2_get_intr1_fifo_wm\000"
	.4byte	0x1d2b
	.ascii	"bma2x2_set_new_data\000"
	.4byte	0x1d87
	.ascii	"bma2x2_get_new_data\000"
	.4byte	0x1de3
	.ascii	"bma2x2_set_intr_flat\000"
	.4byte	0x1e3f
	.ascii	"bma2x2_get_intr_flat\000"
	.4byte	0x1e9b
	.ascii	"bma2x2_set_intr_orient\000"
	.4byte	0x1ef7
	.ascii	"bma2x2_get_intr_orient\000"
	.4byte	0x1f53
	.ascii	"bma2x2_set_intr_single_tap\000"
	.4byte	0x1faf
	.ascii	"bma2x2_get_intr_single_tap\000"
	.4byte	0x200b
	.ascii	"bma2x2_set_intr_double_tap\000"
	.4byte	0x2067
	.ascii	"bma2x2_get_intr_double_tap\000"
	.4byte	0x20c3
	.ascii	"bma2x2_set_intr_slow_no_motion\000"
	.4byte	0x211f
	.ascii	"bma2x2_get_intr_slow_no_motion\000"
	.4byte	0x217b
	.ascii	"bma2x2_set_intr_slope\000"
	.4byte	0x21d7
	.ascii	"bma2x2_get_intr_slope\000"
	.4byte	0x2233
	.ascii	"bma2x2_set_intr_high_g\000"
	.4byte	0x228f
	.ascii	"bma2x2_get_intr_high_g\000"
	.4byte	0x22eb
	.ascii	"bma2x2_set_intr_low_g\000"
	.4byte	0x2347
	.ascii	"bma2x2_get_intr_low_g\000"
	.4byte	0x23a3
	.ascii	"bma2x2_set_slow_no_motion\000"
	.4byte	0x23ff
	.ascii	"bma2x2_get_slow_no_motion\000"
	.4byte	0x245b
	.ascii	"bma2x2_set_intr_fifo_wm\000"
	.4byte	0x24a7
	.ascii	"bma2x2_get_intr_fifo_wm\000"
	.4byte	0x24f3
	.ascii	"bma2x2_set_intr_fifo_full\000"
	.4byte	0x253f
	.ascii	"bma2x2_get_intr_fifo_full\000"
	.4byte	0x258b
	.ascii	"bma2x2_set_intr_enable\000"
	.4byte	0x25f7
	.ascii	"bma2x2_get_intr_enable\000"
	.4byte	0x2653
	.ascii	"bma2x2_update_image\000"
	.4byte	0x268f
	.ascii	"bma2x2_soft_rst\000"
	.4byte	0x26cb
	.ascii	"bma2x2_set_shadow_dis\000"
	.4byte	0x2717
	.ascii	"bma2x2_get_shadow_dis\000"
	.4byte	0x2763
	.ascii	"bma2x2_set_high_bw\000"
	.4byte	0x27af
	.ascii	"bma2x2_get_high_bw\000"
	.4byte	0x27fb
	.ascii	"bma2x2_set_sleep_timer_mode\000"
	.4byte	0x2847
	.ascii	"bma2x2_get_sleep_timer_mode\000"
	.4byte	0x2893
	.ascii	"bma2x2_set_sleep_durn\000"
	.4byte	0x28ef
	.ascii	"bma2x2_get_sleep_durn\000"
	.4byte	0x293b
	.ascii	"bma2x2_set_mode_value\000"
	.4byte	0x2977
	.ascii	"bma2x2_set_power_mode\000"
	.4byte	0x2a03
	.ascii	"bma2x2_get_power_mode\000"
	.4byte	0x2a5f
	.ascii	"bma2x2_set_bw\000"
	.4byte	0x2abb
	.ascii	"bma2x2_get_bw\000"
	.4byte	0x2b07
	.ascii	"bma2x2_set_range\000"
	.4byte	0x2b53
	.ascii	"bma2x2_get_range\000"
	.4byte	0x2b9f
	.ascii	"bma2x2_get_intr_stat\000"
	.4byte	0x2bdb
	.ascii	"bma2x2_get_fifo_overrun\000"
	.4byte	0x2c27
	.ascii	"bma2x2_get_fifo_frame_count\000"
	.4byte	0x2c73
	.ascii	"bma2x2_get_fifo_stat\000"
	.4byte	0x2caf
	.ascii	"bma2x2_get_intr_orient_stat\000"
	.4byte	0x2ceb
	.ascii	"bma2x2_get_intr_tap_stat\000"
	.4byte	0x2d27
	.ascii	"bma2x2_read_accel_eight_resolution_xyz\000"
	.4byte	0x2d7d
	.ascii	"bma2x2_read_accel_xyz\000"
	.4byte	0x2de3
	.ascii	"bma2x2_read_accel_eight_resolution_z\000"
	.4byte	0x2e2f
	.ascii	"bma2x2_read_accel_z\000"
	.4byte	0x2e91
	.ascii	"bma2x2_read_accel_eight_resolution_y\000"
	.4byte	0x2edd
	.ascii	"bma2x2_read_accel_y\000"
	.4byte	0x2f29
	.ascii	"bma2x2_read_accel_eight_resolution_x\000"
	.4byte	0x2f75
	.ascii	"bma2x2_read_accel_x\000"
	.4byte	0x2fc1
	.ascii	"bma2x2_read_reg\000"
	.4byte	0x301d
	.ascii	"bma2x2_write_reg\000"
	.4byte	0x3074
	.ascii	"bma2x2_init\000"
	.4byte	0x30cb
	.ascii	"bma2x2_burst_read\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x176
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x311f
	.4byte	0x35
	.ascii	"signed char\000"
	.4byte	0x29
	.ascii	"s8\000"
	.4byte	0x49
	.ascii	"short int\000"
	.4byte	0x3c
	.ascii	"s16\000"
	.4byte	0x5d
	.ascii	"int\000"
	.4byte	0x50
	.ascii	"s32\000"
	.4byte	0x64
	.ascii	"long long int\000"
	.4byte	0x77
	.ascii	"unsigned char\000"
	.4byte	0x6b
	.ascii	"u8\000"
	.4byte	0x8b
	.ascii	"short unsigned int\000"
	.4byte	0x7e
	.ascii	"u16\000"
	.4byte	0x9f
	.ascii	"unsigned int\000"
	.4byte	0x92
	.ascii	"u32\000"
	.4byte	0xa6
	.ascii	"long long unsigned int\000"
	.4byte	0xb
	.ascii	"bma2x2_accel_data\000"
	.4byte	0xb
	.ascii	"bma2x2_accel_data_temp\000"
	.4byte	0xb
	.ascii	"bma2x2_accel_eight_resolution\000"
	.4byte	0xb
	.ascii	"bma2x2_accel_eight_resolution_temp\000"
	.4byte	0xb
	.ascii	"fifo_frame\000"
	.4byte	0xb
	.ascii	"bma2x2_t\000"
	.4byte	0xb
	.ascii	"fifo_configuration\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x4ac
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
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.4byte	.LFB124
	.4byte	.LFE124-.LFB124
	.4byte	.LFB125
	.4byte	.LFE125-.LFB125
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
	.4byte	.LFB137
	.4byte	.LFE137-.LFB137
	.4byte	.LFB138
	.4byte	.LFE138-.LFB138
	.4byte	.LFB139
	.4byte	.LFE139-.LFB139
	.4byte	.LFB140
	.4byte	.LFE140-.LFB140
	.4byte	.LFB141
	.4byte	.LFE141-.LFB141
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	.LFB12
	.4byte	.LFE12
	.4byte	.LFB13
	.4byte	.LFE13
	.4byte	.LFB14
	.4byte	.LFE14
	.4byte	.LFB15
	.4byte	.LFE15
	.4byte	.LFB16
	.4byte	.LFE16
	.4byte	.LFB17
	.4byte	.LFE17
	.4byte	.LFB18
	.4byte	.LFE18
	.4byte	.LFB19
	.4byte	.LFE19
	.4byte	.LFB20
	.4byte	.LFE20
	.4byte	.LFB21
	.4byte	.LFE21
	.4byte	.LFB22
	.4byte	.LFE22
	.4byte	.LFB23
	.4byte	.LFE23
	.4byte	.LFB24
	.4byte	.LFE24
	.4byte	.LFB25
	.4byte	.LFE25
	.4byte	.LFB26
	.4byte	.LFE26
	.4byte	.LFB27
	.4byte	.LFE27
	.4byte	.LFB28
	.4byte	.LFE28
	.4byte	.LFB29
	.4byte	.LFE29
	.4byte	.LFB30
	.4byte	.LFE30
	.4byte	.LFB31
	.4byte	.LFE31
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	.LFB46
	.4byte	.LFE46
	.4byte	.LFB47
	.4byte	.LFE47
	.4byte	.LFB48
	.4byte	.LFE48
	.4byte	.LFB49
	.4byte	.LFE49
	.4byte	.LFB50
	.4byte	.LFE50
	.4byte	.LFB51
	.4byte	.LFE51
	.4byte	.LFB52
	.4byte	.LFE52
	.4byte	.LFB53
	.4byte	.LFE53
	.4byte	.LFB54
	.4byte	.LFE54
	.4byte	.LFB55
	.4byte	.LFE55
	.4byte	.LFB56
	.4byte	.LFE56
	.4byte	.LFB57
	.4byte	.LFE57
	.4byte	.LFB58
	.4byte	.LFE58
	.4byte	.LFB59
	.4byte	.LFE59
	.4byte	.LFB60
	.4byte	.LFE60
	.4byte	.LFB61
	.4byte	.LFE61
	.4byte	.LFB62
	.4byte	.LFE62
	.4byte	.LFB63
	.4byte	.LFE63
	.4byte	.LFB64
	.4byte	.LFE64
	.4byte	.LFB65
	.4byte	.LFE65
	.4byte	.LFB66
	.4byte	.LFE66
	.4byte	.LFB67
	.4byte	.LFE67
	.4byte	.LFB68
	.4byte	.LFE68
	.4byte	.LFB69
	.4byte	.LFE69
	.4byte	.LFB70
	.4byte	.LFE70
	.4byte	.LFB71
	.4byte	.LFE71
	.4byte	.LFB72
	.4byte	.LFE72
	.4byte	.LFB73
	.4byte	.LFE73
	.4byte	.LFB74
	.4byte	.LFE74
	.4byte	.LFB75
	.4byte	.LFE75
	.4byte	.LFB76
	.4byte	.LFE76
	.4byte	.LFB77
	.4byte	.LFE77
	.4byte	.LFB78
	.4byte	.LFE78
	.4byte	.LFB79
	.4byte	.LFE79
	.4byte	.LFB80
	.4byte	.LFE80
	.4byte	.LFB81
	.4byte	.LFE81
	.4byte	.LFB82
	.4byte	.LFE82
	.4byte	.LFB83
	.4byte	.LFE83
	.4byte	.LFB84
	.4byte	.LFE84
	.4byte	.LFB85
	.4byte	.LFE85
	.4byte	.LFB86
	.4byte	.LFE86
	.4byte	.LFB87
	.4byte	.LFE87
	.4byte	.LFB88
	.4byte	.LFE88
	.4byte	.LFB89
	.4byte	.LFE89
	.4byte	.LFB90
	.4byte	.LFE90
	.4byte	.LFB91
	.4byte	.LFE91
	.4byte	.LFB92
	.4byte	.LFE92
	.4byte	.LFB93
	.4byte	.LFE93
	.4byte	.LFB94
	.4byte	.LFE94
	.4byte	.LFB95
	.4byte	.LFE95
	.4byte	.LFB96
	.4byte	.LFE96
	.4byte	.LFB97
	.4byte	.LFE97
	.4byte	.LFB98
	.4byte	.LFE98
	.4byte	.LFB99
	.4byte	.LFE99
	.4byte	.LFB100
	.4byte	.LFE100
	.4byte	.LFB101
	.4byte	.LFE101
	.4byte	.LFB102
	.4byte	.LFE102
	.4byte	.LFB103
	.4byte	.LFE103
	.4byte	.LFB104
	.4byte	.LFE104
	.4byte	.LFB105
	.4byte	.LFE105
	.4byte	.LFB106
	.4byte	.LFE106
	.4byte	.LFB107
	.4byte	.LFE107
	.4byte	.LFB108
	.4byte	.LFE108
	.4byte	.LFB109
	.4byte	.LFE109
	.4byte	.LFB110
	.4byte	.LFE110
	.4byte	.LFB111
	.4byte	.LFE111
	.4byte	.LFB112
	.4byte	.LFE112
	.4byte	.LFB113
	.4byte	.LFE113
	.4byte	.LFB114
	.4byte	.LFE114
	.4byte	.LFB115
	.4byte	.LFE115
	.4byte	.LFB116
	.4byte	.LFE116
	.4byte	.LFB117
	.4byte	.LFE117
	.4byte	.LFB118
	.4byte	.LFE118
	.4byte	.LFB119
	.4byte	.LFE119
	.4byte	.LFB120
	.4byte	.LFE120
	.4byte	.LFB121
	.4byte	.LFE121
	.4byte	.LFB122
	.4byte	.LFE122
	.4byte	.LFB123
	.4byte	.LFE123
	.4byte	.LFB124
	.4byte	.LFE124
	.4byte	.LFB125
	.4byte	.LFE125
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
	.4byte	.LFB137
	.4byte	.LFE137
	.4byte	.LFB138
	.4byte	.LFE138
	.4byte	.LFB139
	.4byte	.LFE139
	.4byte	.LFB140
	.4byte	.LFE140
	.4byte	.LFB141
	.4byte	.LFE141
	.4byte	.LFB142
	.4byte	.LFE142
	.4byte	.LFB143
	.4byte	.LFE143
	.4byte	.LFB144
	.4byte	.LFE144
	.4byte	.LFB145
	.4byte	.LFE145
	.4byte	.LFB146
	.4byte	.LFE146
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
	.uleb128 0x53
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF94:
	.ascii	"bma2x2_get_selftest_sign\000"
.LASF232:
	.ascii	"bma2x2_get_sleep_durn\000"
.LASF46:
	.ascii	"accel_index\000"
.LASF11:
	.ascii	"fifo_config\000"
.LASF228:
	.ascii	"bma2x2_get_sleep_timer_mode\000"
.LASF103:
	.ascii	"bma2x2_get_flat_hold_time\000"
.LASF73:
	.ascii	"cal_rdy_u8\000"
.LASF273:
	.ascii	"bma2x2_read_reg\000"
.LASF130:
	.ascii	"bma2x2_get_tap_quiet\000"
.LASF149:
	.ascii	"bma2x2_set_latch_intr\000"
.LASF151:
	.ascii	"latch_durn_u8\000"
.LASF263:
	.ascii	"bma2x2_read_accel_z\000"
.LASF21:
	.ascii	"bma2x2_accel_eight_resolution_temp\000"
.LASF100:
	.ascii	"bma2x2_get_fifo_wml_trig\000"
.LASF256:
	.ascii	"bma2x2_get_intr_tap_stat\000"
.LASF53:
	.ascii	"fifo_frame_count\000"
.LASF12:
	.ascii	"bus_write\000"
.LASF230:
	.ascii	"sleep_durn_u8\000"
.LASF201:
	.ascii	"intr_low_u8\000"
.LASF81:
	.ascii	"spi3_u8\000"
.LASF20:
	.ascii	"fifo_frame\000"
.LASF31:
	.ascii	"com_rslt\000"
.LASF231:
	.ascii	"data_sleep_durn_u8\000"
.LASF286:
	.ascii	"bma2x2_burst_read\000"
.LASF144:
	.ascii	"thres_u8\000"
.LASF14:
	.ascii	"burst_read\000"
.LASF123:
	.ascii	"tap_sample_u8\000"
.LASF28:
	.ascii	"long long unsigned int\000"
.LASF197:
	.ascii	"bma2x2_set_intr_high_g\000"
.LASF154:
	.ascii	"rst_intr_u8\000"
.LASF111:
	.ascii	"theta_u8\000"
.LASF60:
	.ascii	"fifo_mode_u8\000"
.LASF225:
	.ascii	"bma2x2_get_high_bw\000"
.LASF173:
	.ascii	"bma2x2_set_intr1_fifo_wm\000"
.LASF35:
	.ascii	"accel\000"
.LASF78:
	.ascii	"i2c_wdt_u8\000"
.LASF257:
	.ascii	"stat_tap_u8\000"
.LASF41:
	.ascii	"fifo_conf\000"
.LASF136:
	.ascii	"bma2x2_get_tap_durn\000"
.LASF120:
	.ascii	"orient_mode_u8\000"
.LASF158:
	.ascii	"bma2x2_set_intr_output_type\000"
.LASF26:
	.ascii	"long long int\000"
.LASF16:
	.ascii	"signed char\000"
.LASF10:
	.ascii	"dev_addr\000"
.LASF110:
	.ascii	"bma2x2_set_theta\000"
.LASF155:
	.ascii	"bma2x2_set_intr_level\000"
.LASF132:
	.ascii	"tap_shock_u8\000"
.LASF58:
	.ascii	"bma2x2_get_fifo_data_select\000"
.LASF219:
	.ascii	"bma2x2_soft_rst\000"
.LASF98:
	.ascii	"bma2x2_set_fifo_wml_trig\000"
.LASF90:
	.ascii	"nvmprog_mode_u8\000"
.LASF121:
	.ascii	"bma2x2_get_orient_mode\000"
.LASF233:
	.ascii	"bma2x2_set_mode_value\000"
.LASF25:
	.ascii	"bma2x2_accel_data\000"
.LASF52:
	.ascii	"bma2x2_read_fifo_data\000"
.LASF104:
	.ascii	"bma2x2_set_flat_hyst\000"
.LASF205:
	.ascii	"slow_no_motion_u8\000"
.LASF161:
	.ascii	"bma2x2_set_source\000"
.LASF55:
	.ascii	"bma2x2_set_fifo_data_select\000"
.LASF268:
	.ascii	"accel_y_s16\000"
.LASF89:
	.ascii	"bma2x2_set_nvmprog_mode\000"
.LASF49:
	.ascii	"data_read_length\000"
.LASF187:
	.ascii	"bma2x2_get_intr_single_tap\000"
.LASF214:
	.ascii	"intr_type_u8\000"
.LASF99:
	.ascii	"fifo_wml_trig\000"
.LASF192:
	.ascii	"intr_slow_no_motion_u8\000"
.LASF39:
	.ascii	"accel_frame\000"
.LASF141:
	.ascii	"hyst_u8\000"
.LASF204:
	.ascii	"bma2x2_set_slow_no_motion\000"
.LASF277:
	.ascii	"bma2x2_init\000"
.LASF259:
	.ascii	"bma2x2_read_accel_xyz\000"
.LASF206:
	.ascii	"bma2x2_get_slow_no_motion\000"
.LASF229:
	.ascii	"bma2x2_set_sleep_durn\000"
.LASF272:
	.ascii	"accel_x_s16\000"
.LASF159:
	.ascii	"intr_output_type_u8\000"
.LASF182:
	.ascii	"bma2x2_set_intr_orient\000"
.LASF150:
	.ascii	"latch_intr_u8\000"
.LASF271:
	.ascii	"bma2x2_read_accel_x\000"
.LASF267:
	.ascii	"bma2x2_read_accel_y\000"
.LASF217:
	.ascii	"bma2x2_get_intr_enable\000"
.LASF125:
	.ascii	"bma2x2_set_tap_thres\000"
.LASF124:
	.ascii	"bma2x2_get_tap_sample\000"
.LASF2:
	.ascii	"fifo_length\000"
.LASF160:
	.ascii	"bma2x2_get_intr_output_type\000"
.LASF128:
	.ascii	"bma2x2_set_tap_quiet\000"
.LASF209:
	.ascii	"bma2x2_get_intr_fifo_wm\000"
.LASF183:
	.ascii	"intr_orient_u8\000"
.LASF188:
	.ascii	"bma2x2_set_intr_double_tap\000"
.LASF22:
	.ascii	"temp\000"
.LASF24:
	.ascii	"bma2x2_accel_data_temp\000"
.LASF258:
	.ascii	"bma2x2_read_accel_eight_resolution_xyz\000"
.LASF178:
	.ascii	"bma2x2_get_new_data\000"
.LASF17:
	.ascii	"unsigned int\000"
.LASF85:
	.ascii	"bma2x2_get_nvmprog_ready\000"
.LASF145:
	.ascii	"bma2x2_get_thres\000"
.LASF43:
	.ascii	"data_msb\000"
.LASF276:
	.ascii	"bma2x2_write_reg\000"
.LASF252:
	.ascii	"bma2x2_get_fifo_stat\000"
.LASF199:
	.ascii	"bma2x2_get_intr_high_g\000"
.LASF239:
	.ascii	"bma2x2_set_bw\000"
.LASF56:
	.ascii	"fifo_data_select_u8\000"
.LASF274:
	.ascii	"adr_u8\000"
.LASF181:
	.ascii	"bma2x2_get_intr_flat\000"
.LASF283:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_applicationLeithe\\drivers\\bma2x2.c\000"
.LASF66:
	.ascii	"bma2x2_set_offset_target\000"
.LASF238:
	.ascii	"bma2x2_get_power_mode\000"
.LASF6:
	.ascii	"power_mode_u8\000"
.LASF262:
	.ascii	"data\000"
.LASF76:
	.ascii	"bma2x2_get_slow_comp\000"
.LASF27:
	.ascii	"short unsigned int\000"
.LASF223:
	.ascii	"bma2x2_set_high_bw\000"
.LASF227:
	.ascii	"sleep_timer_u8\000"
.LASF113:
	.ascii	"bma2x2_set_orient_hyst\000"
.LASF135:
	.ascii	"tap_durn_u8\000"
.LASF69:
	.ascii	"offset_rst_u8\000"
.LASF196:
	.ascii	"bma2x2_get_intr_slope\000"
.LASF147:
	.ascii	"durn_u8\000"
.LASF71:
	.ascii	"cal_trigger_u8\000"
.LASF118:
	.ascii	"bma2x2_get_orient_block\000"
.LASF224:
	.ascii	"high_bw_u8\000"
.LASF88:
	.ascii	"nvprog_trig_u8\000"
.LASF92:
	.ascii	"bma2x2_set_selftest_sign\000"
.LASF284:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF47:
	.ascii	"fifo_data_select\000"
.LASF109:
	.ascii	"bma2x2_get_orient_enable\000"
.LASF163:
	.ascii	"bma2x2_get_source\000"
.LASF77:
	.ascii	"bma2x2_set_i2c_wdt\000"
.LASF48:
	.ascii	"get_accel_len_to_parse\000"
.LASF285:
	.ascii	"V_BMA2x2RESOLUTION_U8\000"
.LASF34:
	.ascii	"output_reg_u8\000"
.LASF152:
	.ascii	"bma2x2_get_latch_intr\000"
.LASF237:
	.ascii	"pre_fifo_config_data\000"
.LASF82:
	.ascii	"bma2x2_get_spi3\000"
.LASF202:
	.ascii	"bma2x2_get_intr_low_g\000"
.LASF33:
	.ascii	"bma2x2_read_accel_eight_resolution_xyzt\000"
.LASF261:
	.ascii	"accel_z_s8\000"
.LASF194:
	.ascii	"bma2x2_set_intr_slope\000"
.LASF40:
	.ascii	"data_index\000"
.LASF185:
	.ascii	"bma2x2_set_intr_single_tap\000"
.LASF1:
	.ascii	"accel_byte_start_index\000"
.LASF138:
	.ascii	"low_g_mode_u8\000"
.LASF62:
	.ascii	"bma2x2_set_offset\000"
.LASF212:
	.ascii	"bma2x2_get_intr_fifo_full\000"
.LASF265:
	.ascii	"bma2x2_read_accel_eight_resolution_y\000"
.LASF42:
	.ascii	"data_lsb\000"
.LASF36:
	.ascii	"bma2x2_read_accel_xyzt\000"
.LASF240:
	.ascii	"bw_u8\000"
.LASF235:
	.ascii	"mode_ctr_eleven_reg\000"
.LASF148:
	.ascii	"bma2x2_get_durn\000"
.LASF61:
	.ascii	"bma2x2_get_fifo_mode\000"
.LASF122:
	.ascii	"bma2x2_set_tap_sample\000"
.LASF165:
	.ascii	"intr2_fifo_full_u8\000"
.LASF195:
	.ascii	"intr_slope_u8\000"
.LASF215:
	.ascii	"value_u8\000"
.LASF97:
	.ascii	"bma2x2_get_selftest_axis\000"
.LASF9:
	.ascii	"low_mode_reg\000"
.LASF175:
	.ascii	"bma2x2_get_intr1_fifo_wm\000"
.LASF0:
	.ascii	"fifo_data\000"
.LASF74:
	.ascii	"bma2x2_set_slow_comp\000"
.LASF93:
	.ascii	"selftest_sign_u8\000"
.LASF191:
	.ascii	"bma2x2_set_intr_slow_no_motion\000"
.LASF57:
	.ascii	"power_mode\000"
.LASF254:
	.ascii	"bma2x2_get_intr_orient_stat\000"
.LASF83:
	.ascii	"bma2x2_get_nvmprog_remain\000"
.LASF270:
	.ascii	"accel_x_s8\000"
.LASF54:
	.ascii	"fifo_data_bytes\000"
.LASF23:
	.ascii	"bma2x2_accel_eight_resolution\000"
.LASF247:
	.ascii	"intr_stat_u8\000"
.LASF156:
	.ascii	"intr_level_u8\000"
.LASF116:
	.ascii	"bma2x2_set_orient_block\000"
.LASF63:
	.ascii	"channel_u8\000"
.LASF80:
	.ascii	"bma2x2_set_spi3\000"
.LASF105:
	.ascii	"flat_hyst_u8\000"
.LASF242:
	.ascii	"bma2x2_get_bw\000"
.LASF174:
	.ascii	"intr1_fifo_wm_u8\000"
.LASF210:
	.ascii	"bma2x2_set_intr_fifo_full\000"
.LASF72:
	.ascii	"bma2x2_get_cal_rdy\000"
.LASF112:
	.ascii	"bma2x2_get_theta\000"
.LASF248:
	.ascii	"bma2x2_get_fifo_overrun\000"
.LASF281:
	.ascii	"len_u32\000"
.LASF221:
	.ascii	"shadow_dis_u8\000"
.LASF208:
	.ascii	"fifo_wm_u8\000"
.LASF251:
	.ascii	"frame_count_u8\000"
.LASF4:
	.ascii	"unsigned char\000"
.LASF278:
	.ascii	"bma2x2\000"
.LASF177:
	.ascii	"intr_newdata_u8\000"
.LASF119:
	.ascii	"bma2x2_set_orient_mode\000"
.LASF264:
	.ascii	"accel_z_s16\000"
.LASF142:
	.ascii	"bma2x2_get_low_high_g_hyst\000"
.LASF190:
	.ascii	"bma2x2_get_intr_double_tap\000"
.LASF19:
	.ascii	"short int\000"
.LASF189:
	.ascii	"intr_double_tap_u8\000"
.LASF275:
	.ascii	"len_u8\000"
.LASF171:
	.ascii	"intr2_fifo_wm_u8\000"
.LASF140:
	.ascii	"bma2x2_set_low_high_g_hyst\000"
.LASF37:
	.ascii	"bma2x2_read_temp\000"
.LASF269:
	.ascii	"bma2x2_read_accel_eight_resolution_x\000"
.LASF168:
	.ascii	"intr1_fifo_full_u8\000"
.LASF260:
	.ascii	"bma2x2_read_accel_eight_resolution_z\000"
.LASF236:
	.ascii	"mode_ctr_twel_reg\000"
.LASF129:
	.ascii	"tap_quiet_u8\000"
.LASF8:
	.ascii	"ctrl_mode_reg\000"
.LASF86:
	.ascii	"nvprog_ready_u8\000"
.LASF266:
	.ascii	"accel_y_s8\000"
.LASF172:
	.ascii	"bma2x2_get_intr2_fifo_wm\000"
.LASF87:
	.ascii	"bma2x2_set_nvprog_trig\000"
.LASF106:
	.ascii	"bma2x2_get_flat_hyst\000"
.LASF222:
	.ascii	"bma2x2_get_shadow_dis\000"
.LASF59:
	.ascii	"bma2x2_set_fifo_mode\000"
.LASF246:
	.ascii	"bma2x2_get_intr_stat\000"
.LASF139:
	.ascii	"bma2x2_get_low_g_mode\000"
.LASF51:
	.ascii	"bma2x2_extract_accel\000"
.LASF253:
	.ascii	"stat_fifo_u8\000"
.LASF133:
	.ascii	"bma2x2_get_tap_shock\000"
.LASF91:
	.ascii	"bma2x2_get_nvmprog_mode\000"
.LASF101:
	.ascii	"bma2x2_set_flat_hold_time\000"
.LASF68:
	.ascii	"bma2x2_set_offset_rst\000"
.LASF7:
	.ascii	"chip_id\000"
.LASF96:
	.ascii	"selftest_axis_u8\000"
.LASF280:
	.ascii	"addr_u8\000"
.LASF213:
	.ascii	"bma2x2_set_intr_enable\000"
.LASF5:
	.ascii	"bma2x2_t\000"
.LASF18:
	.ascii	"accel_data\000"
.LASF234:
	.ascii	"bma2x2_set_power_mode\000"
.LASF65:
	.ascii	"bma2x2_get_offset\000"
.LASF220:
	.ascii	"bma2x2_set_shadow_dis\000"
.LASF179:
	.ascii	"bma2x2_set_intr_flat\000"
.LASF226:
	.ascii	"bma2x2_set_sleep_timer_mode\000"
.LASF211:
	.ascii	"fifo_full_u8\000"
.LASF184:
	.ascii	"bma2x2_get_intr_orient\000"
.LASF250:
	.ascii	"bma2x2_get_fifo_frame_count\000"
.LASF176:
	.ascii	"bma2x2_set_new_data\000"
.LASF64:
	.ascii	"offset_u8\000"
.LASF279:
	.ascii	"config_data_u8\000"
.LASF198:
	.ascii	"intr_high_g_u8\000"
.LASF245:
	.ascii	"bma2x2_get_range\000"
.LASF143:
	.ascii	"bma2x2_set_thres\000"
.LASF44:
	.ascii	"unpack_accel_xyz\000"
.LASF84:
	.ascii	"nvprog_remain_u8\000"
.LASF193:
	.ascii	"bma2x2_get_intr_slow_no_motion\000"
.LASF75:
	.ascii	"slow_comp_u8\000"
.LASF29:
	.ascii	"p_bma2x2\000"
.LASF249:
	.ascii	"fifo_overrun_u8\000"
.LASF200:
	.ascii	"bma2x2_set_intr_low_g\000"
.LASF162:
	.ascii	"intr_source_u8\000"
.LASF180:
	.ascii	"intr_flat_u8\000"
.LASF50:
	.ascii	"accel_frame_count\000"
.LASF170:
	.ascii	"bma2x2_set_intr2_fifo_wm\000"
.LASF169:
	.ascii	"bma2x2_get_intr1_fifo_full\000"
.LASF282:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -fomit-frame-poi"
	.ascii	"nter -fno-dwarf2-cfi-asm -fno-builtin -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF13:
	.ascii	"bus_read\000"
.LASF30:
	.ascii	"data_u8\000"
.LASF115:
	.ascii	"bma2x2_get_orient_hyst\000"
.LASF108:
	.ascii	"orient_enable_u8\000"
.LASF15:
	.ascii	"delay_msec\000"
.LASF243:
	.ascii	"bma2x2_set_range\000"
.LASF38:
	.ascii	"temp_s8\000"
.LASF79:
	.ascii	"bma2x2_get_i2c_wdt\000"
.LASF207:
	.ascii	"bma2x2_set_intr_fifo_wm\000"
.LASF107:
	.ascii	"bma2x2_set_orient_enable\000"
.LASF255:
	.ascii	"stat_orient_u8\000"
.LASF117:
	.ascii	"orient_block_u8\000"
.LASF102:
	.ascii	"flat_hold_time_u8\000"
.LASF157:
	.ascii	"bma2x2_get_intr_level\000"
.LASF126:
	.ascii	"tap_thres_u8\000"
.LASF146:
	.ascii	"bma2x2_set_durn\000"
.LASF131:
	.ascii	"bma2x2_set_tap_shock\000"
.LASF134:
	.ascii	"bma2x2_set_tap_durn\000"
.LASF137:
	.ascii	"bma2x2_set_low_g_mode\000"
.LASF186:
	.ascii	"intr_single_tap_u8\000"
.LASF45:
	.ascii	"unpack_accel_frame\000"
.LASF127:
	.ascii	"bma2x2_get_tap_thres\000"
.LASF114:
	.ascii	"orient_hyst_u8\000"
.LASF67:
	.ascii	"bma2x2_get_offset_target\000"
.LASF218:
	.ascii	"bma2x2_update_image\000"
.LASF167:
	.ascii	"bma2x2_set_intr1_fifo_full\000"
.LASF203:
	.ascii	"intr_low_g_u8\000"
.LASF3:
	.ascii	"fifo_configuration\000"
.LASF244:
	.ascii	"range_u8\000"
.LASF70:
	.ascii	"bma2x2_set_cal_trigger\000"
.LASF95:
	.ascii	"bma2x2_set_selftest_axis\000"
.LASF166:
	.ascii	"bma2x2_get_intr2_fifo_full\000"
.LASF32:
	.ascii	"bma2x2_get_fifo_data_output_reg\000"
.LASF241:
	.ascii	"data_bw_u8\000"
.LASF164:
	.ascii	"bma2x2_set_intr2_fifo_full\000"
.LASF153:
	.ascii	"bma2x2_rst_intr\000"
.LASF216:
	.ascii	"data2_u8\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
