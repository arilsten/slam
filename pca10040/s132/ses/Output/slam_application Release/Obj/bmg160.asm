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
	.file	"bmg160.c"
	.text
.Ltext0:
	.section	.bss.p_bmg160,"aw",%nobits
	.align	2
	.type	p_bmg160, %object
	.size	p_bmg160, 4
p_bmg160:
	.space	4
	.section	.text.bmg160_init,"ax",%progbits
	.align	1
	.global	bmg160_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_init, %function
bmg160_init:
.LFB0:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.c"
	.loc 1 82 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI0:
	sub	sp, sp, #16
.LCFI1:
	str	r0, [sp, #4]
	.loc 1 84 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 85 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 87 11
	ldr	r2, .L3
	ldr	r3, [sp, #4]
	str	r3, [r2]
	.loc 1 89 19
	ldr	r3, .L3
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 89 38
	ldr	r3, .L3
	ldr	r3, [r3]
	.loc 1 89 11
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #0
	blx	r4
.LVL0:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 91 10
	ldr	r3, .L3
	ldr	r3, [r3]
	.loc 1 91 20
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	strb	r2, [r3]
	.loc 1 92 9
	ldrsb	r3, [sp, #15]
	.loc 1 93 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI2:
	@ sp needed
	pop	{r4, pc}
.L4:
	.align	2
.L3:
	.word	p_bmg160
.LFE0:
	.size	bmg160_init, .-bmg160_init
	.section	.text.bmg160_get_data_X,"ax",%progbits
	.align	1
	.global	bmg160_get_data_X
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_data_X, %function
bmg160_get_data_X:
.LFB1:
	.loc 1 109 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI3:
	sub	sp, sp, #16
.LCFI4:
	str	r0, [sp, #4]
	.loc 1 111 5
	movs	r3, #0
	strb	r3, [sp, #15]
	.loc 1 116 5
	movs	r3, #0
	strh	r3, [sp, #12]	@ movhi
	.loc 1 119 15
	ldr	r3, .L9
	ldr	r3, [r3]
	.loc 1 119 5
	cmp	r3, #0
	bne	.L6
	.loc 1 120 10
	mvn	r3, #126
	b	.L8
.L6:
	.loc 1 123 20
	ldr	r3, .L9
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 123 39
	ldr	r3, .L9
	ldr	r3, [r3]
	.loc 1 123 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #2
	movs	r1, #2
	blx	r4
.LVL1:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 126 31
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	.loc 1 126 18
	strb	r3, [sp, #12]
	.loc 1 130 25
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 130 12
	sxtb	r3, r3
	.loc 1 130 33
	lsls	r3, r3, #8
	.loc 1 129 19
	sxth	r2, r3
	.loc 1 132 15
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 129 19
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 129 17
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 134 9
	ldrsb	r3, [sp, #15]
.L8:
	.loc 1 135 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI5:
	@ sp needed
	pop	{r4, pc}
.L10:
	.align	2
.L9:
	.word	p_bmg160
.LFE1:
	.size	bmg160_get_data_X, .-bmg160_get_data_X
	.section	.text.bmg160_get_data_Y,"ax",%progbits
	.align	1
	.global	bmg160_get_data_Y
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_data_Y, %function
bmg160_get_data_Y:
.LFB2:
	.loc 1 151 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI6:
	sub	sp, sp, #16
.LCFI7:
	str	r0, [sp, #4]
	.loc 1 153 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 158 5
	movs	r3, #0
	strh	r3, [sp, #12]	@ movhi
	.loc 1 161 15
	ldr	r3, .L15
	ldr	r3, [r3]
	.loc 1 161 5
	cmp	r3, #0
	bne	.L12
	.loc 1 162 10
	mvn	r3, #126
	b	.L14
.L12:
	.loc 1 165 20
	ldr	r3, .L15
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 165 39
	ldr	r3, .L15
	ldr	r3, [r3]
	.loc 1 165 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #2
	movs	r1, #4
	blx	r4
.LVL2:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 170 14
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	.loc 1 169 18
	strb	r3, [sp, #12]
	.loc 1 173 25
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 173 12
	sxtb	r3, r3
	.loc 1 174 3
	lsls	r3, r3, #8
	.loc 1 172 19
	sxth	r2, r3
	.loc 1 175 13
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 172 19
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 172 17
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 177 9
	ldrsb	r3, [sp, #15]
.L14:
	.loc 1 178 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI8:
	@ sp needed
	pop	{r4, pc}
.L16:
	.align	2
.L15:
	.word	p_bmg160
.LFE2:
	.size	bmg160_get_data_Y, .-bmg160_get_data_Y
	.section	.text.bmg160_get_data_Z,"ax",%progbits
	.align	1
	.global	bmg160_get_data_Z
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_data_Z, %function
bmg160_get_data_Z:
.LFB3:
	.loc 1 192 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI9:
	sub	sp, sp, #16
.LCFI10:
	str	r0, [sp, #4]
	.loc 1 194 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 199 5
	movs	r3, #0
	strh	r3, [sp, #12]	@ movhi
	.loc 1 202 15
	ldr	r3, .L21
	ldr	r3, [r3]
	.loc 1 202 5
	cmp	r3, #0
	bne	.L18
	.loc 1 203 10
	mvn	r3, #126
	b	.L20
.L18:
	.loc 1 205 20
	ldr	r3, .L21
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 205 39
	ldr	r3, .L21
	ldr	r3, [r3]
	.loc 1 205 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #2
	movs	r1, #6
	blx	r4
.LVL3:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 209 14
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	.loc 1 208 18
	strb	r3, [sp, #12]
	.loc 1 212 25
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 212 12
	sxtb	r3, r3
	.loc 1 213 3
	lsls	r3, r3, #8
	.loc 1 211 19
	sxth	r2, r3
	.loc 1 214 15
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 211 19
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 211 17
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 216 9
	ldrsb	r3, [sp, #15]
.L20:
	.loc 1 217 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI11:
	@ sp needed
	pop	{r4, pc}
.L22:
	.align	2
.L21:
	.word	p_bmg160
.LFE3:
	.size	bmg160_get_data_Z, .-bmg160_get_data_Z
	.section .rodata
	.align	2
.LC0:
	.ascii	"\000\000\000\000\000\000"
	.section	.text.bmg160_get_data_XYZ,"ax",%progbits
	.align	1
	.global	bmg160_get_data_XYZ
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_data_XYZ, %function
bmg160_get_data_XYZ:
.LFB4:
	.loc 1 233 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI12:
	sub	sp, sp, #16
.LCFI13:
	str	r0, [sp, #4]
	.loc 1 235 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 244 5
	ldr	r2, .L27
	add	r3, sp, #8
	ldm	r2, {r0, r1}
	str	r0, [r3]
	adds	r3, r3, #4
	strh	r1, [r3]	@ movhi
	.loc 1 249 15
	ldr	r3, .L27+4
	ldr	r3, [r3]
	.loc 1 249 5
	cmp	r3, #0
	bne	.L24
	.loc 1 250 10
	mvn	r3, #126
	b	.L26
.L24:
	.loc 1 252 20
	ldr	r3, .L27+4
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 252 39
	ldr	r3, .L27+4
	ldr	r3, [r3]
	.loc 1 252 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #8
	movs	r3, #6
	movs	r1, #2
	blx	r4
.LVL4:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 257 14
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	.loc 1 256 18
	strb	r3, [sp, #8]
	.loc 1 260 25
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	.loc 1 260 12
	sxtb	r3, r3
	.loc 1 261 3
	lsls	r3, r3, #8
	.loc 1 259 17
	sxth	r2, r3
	.loc 1 262 13
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 259 17
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 259 15
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 265 14
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	.loc 1 264 18
	strb	r3, [sp, #10]
	.loc 1 268 25
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	.loc 1 268 12
	sxtb	r3, r3
	.loc 1 269 3
	lsls	r3, r3, #8
	.loc 1 267 17
	sxth	r2, r3
	.loc 1 270 13
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 267 17
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 267 15
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 273 14
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	.loc 1 272 18
	strb	r3, [sp, #12]
	.loc 1 276 25
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 276 12
	sxtb	r3, r3
	.loc 1 277 3
	lsls	r3, r3, #8
	.loc 1 275 17
	sxth	r2, r3
	.loc 1 278 13
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 275 17
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 275 15
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 280 9
	ldrsb	r3, [sp, #15]
.L26:
	.loc 1 281 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI14:
	@ sp needed
	pop	{r4, pc}
.L28:
	.align	2
.L27:
	.word	.LC0
	.word	p_bmg160
.LFE4:
	.size	bmg160_get_data_XYZ, .-bmg160_get_data_XYZ
	.section .rodata
	.align	2
.LC1:
	.ascii	"\000\000\000\000\000\000\000\000\000\000\000\000"
	.section	.text.bmg160_get_data_XYZI,"ax",%progbits
	.align	1
	.global	bmg160_get_data_XYZI
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_data_XYZI, %function
bmg160_get_data_XYZI:
.LFB5:
	.loc 1 296 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI15:
	sub	sp, sp, #24
.LCFI16:
	str	r0, [sp, #4]
	.loc 1 298 5
	movs	r3, #255
	strb	r3, [sp, #23]
	.loc 1 313 5
	ldr	r2, .L33
	add	r3, sp, #8
	ldm	r2, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
	.loc 1 321 15
	ldr	r3, .L33+4
	ldr	r3, [r3]
	.loc 1 321 5
	cmp	r3, #0
	bne	.L30
	.loc 1 322 10
	mvn	r3, #126
	b	.L32
.L30:
	.loc 1 324 20
	ldr	r3, .L33+4
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 324 39
	ldr	r3, .L33+4
	ldr	r3, [r3]
	.loc 1 324 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #8
	movs	r3, #12
	movs	r1, #2
	blx	r4
.LVL5:
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 329 14
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	.loc 1 328 18
	strb	r3, [sp, #8]
	.loc 1 332 25
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	.loc 1 332 12
	sxtb	r3, r3
	.loc 1 333 3
	lsls	r3, r3, #8
	.loc 1 331 17
	sxth	r2, r3
	.loc 1 334 13
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 331 17
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 331 15
	ldr	r3, [sp, #4]
	strh	r2, [r3]	@ movhi
	.loc 1 337 14
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	.loc 1 336 18
	strb	r3, [sp, #10]
	.loc 1 340 25
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	.loc 1 340 12
	sxtb	r3, r3
	.loc 1 341 3
	lsls	r3, r3, #8
	.loc 1 339 17
	sxth	r2, r3
	.loc 1 342 13
	ldrb	r3, [sp, #10]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 339 17
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 339 15
	ldr	r3, [sp, #4]
	strh	r2, [r3, #2]	@ movhi
	.loc 1 345 14
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	.loc 1 344 18
	strb	r3, [sp, #12]
	.loc 1 348 25
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 348 12
	sxtb	r3, r3
	.loc 1 349 3
	lsls	r3, r3, #8
	.loc 1 347 17
	sxth	r2, r3
	.loc 1 350 13
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 347 17
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 347 15
	ldr	r3, [sp, #4]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 353 12
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	.loc 1 352 24
	ldr	r3, [sp, #4]
	strb	r2, [r3, #6]
	.loc 1 355 12
	ldrb	r2, [sp, #16]	@ zero_extendqisi2
	.loc 1 354 24
	ldr	r3, [sp, #4]
	strb	r2, [r3, #7]
	.loc 1 357 12
	ldrb	r2, [sp, #17]	@ zero_extendqisi2
	.loc 1 356 24
	ldr	r3, [sp, #4]
	strb	r2, [r3, #8]
	.loc 1 359 12
	ldrb	r2, [sp, #18]	@ zero_extendqisi2
	.loc 1 358 24
	ldr	r3, [sp, #4]
	strb	r2, [r3, #9]
	.loc 1 361 12
	ldrb	r2, [sp, #19]	@ zero_extendqisi2
	.loc 1 360 24
	ldr	r3, [sp, #4]
	strb	r2, [r3, #10]
	.loc 1 363 9
	ldrsb	r3, [sp, #23]
.L32:
	.loc 1 364 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #24
.LCFI17:
	@ sp needed
	pop	{r4, pc}
.L34:
	.align	2
.L33:
	.word	.LC1
	.word	p_bmg160
.LFE5:
	.size	bmg160_get_data_XYZI, .-bmg160_get_data_XYZI
	.section	.text.bmg160_get_temp,"ax",%progbits
	.align	1
	.global	bmg160_get_temp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_temp, %function
bmg160_get_temp:
.LFB6:
	.loc 1 379 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI18:
	sub	sp, sp, #16
.LCFI19:
	str	r0, [sp, #4]
	.loc 1 381 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 382 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 384 15
	ldr	r3, .L39
	ldr	r3, [r3]
	.loc 1 384 5
	cmp	r3, #0
	bne	.L36
	.loc 1 385 10
	mvn	r3, #126
	b	.L38
.L36:
	.loc 1 388 20
	ldr	r3, .L39
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 388 39
	ldr	r3, .L39
	ldr	r3, [r3]
	.loc 1 388 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #8
	blx	r4
.LVL6:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 391 14
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 393 9
	ldrsb	r3, [sp, #15]
.L38:
	.loc 1 394 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI20:
	@ sp needed
	pop	{r4, pc}
.L40:
	.align	2
.L39:
	.word	p_bmg160
.LFE6:
	.size	bmg160_get_temp, .-bmg160_get_temp
	.section	.text.bmg160_read_register,"ax",%progbits
	.align	1
	.global	bmg160_read_register
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_read_register, %function
bmg160_read_register:
.LFB7:
	.loc 1 414 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI21:
	sub	sp, sp, #16
.LCFI22:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 416 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 418 15
	ldr	r3, .L44
	ldr	r3, [r3]
	.loc 1 418 5
	cmp	r3, #0
	bne	.L42
	.loc 1 419 10
	mvn	r3, #126
	b	.L43
.L42:
	.loc 1 421 20
	ldr	r3, .L44
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 421 39
	ldr	r3, .L44
	ldr	r3, [r3]
	.loc 1 421 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	ldrb	r1, [sp, #7]	@ zero_extendqisi2
	ldr	r2, [sp]
	blx	r4
.LVL7:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 424 9
	ldrsb	r3, [sp, #15]
.L43:
	.loc 1 425 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI23:
	@ sp needed
	pop	{r4, pc}
.L45:
	.align	2
.L44:
	.word	p_bmg160
.LFE7:
	.size	bmg160_read_register, .-bmg160_read_register
	.section	.text.bmg160_burst_read,"ax",%progbits
	.align	1
	.global	bmg160_burst_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_burst_read, %function
bmg160_burst_read:
.LFB8:
	.loc 1 445 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI24:
	sub	sp, sp, #24
.LCFI25:
	mov	r3, r0
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	strb	r3, [sp, #15]
	.loc 1 447 5
	movs	r3, #255
	strb	r3, [sp, #23]
	.loc 1 449 15
	ldr	r3, .L49
	ldr	r3, [r3]
	.loc 1 449 5
	cmp	r3, #0
	bne	.L47
	.loc 1 450 10
	mvn	r3, #126
	b	.L48
.L47:
	.loc 1 452 20
	ldr	r3, .L49
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	.loc 1 452 41
	ldr	r3, .L49
	ldr	r3, [r3]
	.loc 1 452 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	ldrb	r1, [sp, #15]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	blx	r4
.LVL8:
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 455 9
	ldrsb	r3, [sp, #23]
.L48:
	.loc 1 456 1
	mov	r0, r3
	add	sp, sp, #24
.LCFI26:
	@ sp needed
	pop	{r4, pc}
.L50:
	.align	2
.L49:
	.word	p_bmg160
.LFE8:
	.size	bmg160_burst_read, .-bmg160_burst_read
	.section	.text.bmg160_write_register,"ax",%progbits
	.align	1
	.global	bmg160_write_register
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_write_register, %function
bmg160_write_register:
.LFB9:
	.loc 1 476 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI27:
	sub	sp, sp, #16
.LCFI28:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 478 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 480 15
	ldr	r3, .L54
	ldr	r3, [r3]
	.loc 1 480 5
	cmp	r3, #0
	bne	.L52
	.loc 1 481 10
	mvn	r3, #126
	b	.L53
.L52:
	.loc 1 483 20
	ldr	r3, .L54
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 483 40
	ldr	r3, .L54
	ldr	r3, [r3]
	.loc 1 483 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	ldrb	r1, [sp, #7]	@ zero_extendqisi2
	ldr	r2, [sp]
	blx	r4
.LVL9:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 486 9
	ldrsb	r3, [sp, #15]
.L53:
	.loc 1 487 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI29:
	@ sp needed
	pop	{r4, pc}
.L55:
	.align	2
.L54:
	.word	p_bmg160
.LFE9:
	.size	bmg160_write_register, .-bmg160_write_register
	.section	.text.bmg160_get_intr_stat_reg_zero,"ax",%progbits
	.align	1
	.global	bmg160_get_intr_stat_reg_zero
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr_stat_reg_zero, %function
bmg160_get_intr_stat_reg_zero:
.LFB10:
	.loc 1 507 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI30:
	sub	sp, sp, #16
.LCFI31:
	str	r0, [sp, #4]
	.loc 1 509 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 510 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 512 15
	ldr	r3, .L60
	ldr	r3, [r3]
	.loc 1 512 5
	cmp	r3, #0
	bne	.L57
	.loc 1 513 10
	mvn	r3, #126
	b	.L59
.L57:
	.loc 1 516 20
	ldr	r3, .L60
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 516 39
	ldr	r3, .L60
	ldr	r3, [r3]
	.loc 1 516 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #9
	blx	r4
.LVL10:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 521 25
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 520 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 523 9
	ldrsb	r3, [sp, #15]
.L59:
	.loc 1 524 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI32:
	@ sp needed
	pop	{r4, pc}
.L61:
	.align	2
.L60:
	.word	p_bmg160
.LFE10:
	.size	bmg160_get_intr_stat_reg_zero, .-bmg160_get_intr_stat_reg_zero
	.section	.text.bmg160_get_intr_stat_reg_one,"ax",%progbits
	.align	1
	.global	bmg160_get_intr_stat_reg_one
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr_stat_reg_one, %function
bmg160_get_intr_stat_reg_one:
.LFB11:
	.loc 1 547 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI33:
	sub	sp, sp, #16
.LCFI34:
	str	r0, [sp, #4]
	.loc 1 549 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 550 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 552 15
	ldr	r3, .L66
	ldr	r3, [r3]
	.loc 1 552 5
	cmp	r3, #0
	bne	.L63
	.loc 1 553 10
	mvn	r3, #126
	b	.L65
.L63:
	.loc 1 556 20
	ldr	r3, .L66
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 556 39
	ldr	r3, .L66
	ldr	r3, [r3]
	.loc 1 556 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #10
	blx	r4
.LVL11:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 560 25
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r2, r3
	.loc 1 559 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 562 9
	ldrsb	r3, [sp, #15]
.L65:
	.loc 1 563 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI35:
	@ sp needed
	pop	{r4, pc}
.L67:
	.align	2
.L66:
	.word	p_bmg160
.LFE11:
	.size	bmg160_get_intr_stat_reg_one, .-bmg160_get_intr_stat_reg_one
	.section	.text.bmg160_get_intr_stat_reg_two,"ax",%progbits
	.align	1
	.global	bmg160_get_intr_stat_reg_two
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr_stat_reg_two, %function
bmg160_get_intr_stat_reg_two:
.LFB12:
	.loc 1 588 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI36:
	sub	sp, sp, #16
.LCFI37:
	str	r0, [sp, #4]
	.loc 1 590 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 591 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 593 15
	ldr	r3, .L72
	ldr	r3, [r3]
	.loc 1 593 5
	cmp	r3, #0
	bne	.L69
	.loc 1 594 10
	mvn	r3, #126
	b	.L71
.L69:
	.loc 1 597 20
	ldr	r3, .L72
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 597 39
	ldr	r3, .L72
	ldr	r3, [r3]
	.loc 1 597 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #11
	blx	r4
.LVL12:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 602 25
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #15
	uxtb	r2, r3
	.loc 1 601 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 604 9
	ldrsb	r3, [sp, #15]
.L71:
	.loc 1 605 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI38:
	@ sp needed
	pop	{r4, pc}
.L73:
	.align	2
.L72:
	.word	p_bmg160
.LFE12:
	.size	bmg160_get_intr_stat_reg_two, .-bmg160_get_intr_stat_reg_two
	.section	.text.bmg160_get_intr_stat_reg_three,"ax",%progbits
	.align	1
	.global	bmg160_get_intr_stat_reg_three
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr_stat_reg_three, %function
bmg160_get_intr_stat_reg_three:
.LFB13:
	.loc 1 631 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI39:
	sub	sp, sp, #16
.LCFI40:
	str	r0, [sp, #4]
	.loc 1 633 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 634 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 636 15
	ldr	r3, .L78
	ldr	r3, [r3]
	.loc 1 636 5
	cmp	r3, #0
	bne	.L75
	.loc 1 637 10
	mvn	r3, #126
	b	.L77
.L75:
	.loc 1 640 20
	ldr	r3, .L78
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 640 39
	ldr	r3, .L78
	ldr	r3, [r3]
	.loc 1 640 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #12
	blx	r4
.LVL13:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 645 25
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #15
	uxtb	r2, r3
	.loc 1 644 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 647 9
	ldrsb	r3, [sp, #15]
.L77:
	.loc 1 648 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI41:
	@ sp needed
	pop	{r4, pc}
.L79:
	.align	2
.L78:
	.word	p_bmg160
.LFE13:
	.size	bmg160_get_intr_stat_reg_three, .-bmg160_get_intr_stat_reg_three
	.section	.text.bmg160_get_range_reg,"ax",%progbits
	.align	1
	.global	bmg160_get_range_reg
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_range_reg, %function
bmg160_get_range_reg:
.LFB14:
	.loc 1 673 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI42:
	sub	sp, sp, #16
.LCFI43:
	str	r0, [sp, #4]
	.loc 1 675 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 676 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 678 15
	ldr	r3, .L84
	ldr	r3, [r3]
	.loc 1 678 5
	cmp	r3, #0
	bne	.L81
	.loc 1 679 10
	mvn	r3, #126
	b	.L83
.L81:
	.loc 1 682 20
	ldr	r3, .L84
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 682 39
	ldr	r3, .L84
	ldr	r3, [r3]
	.loc 1 682 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #15
	blx	r4
.LVL14:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 687 25
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #7
	uxtb	r2, r3
	.loc 1 686 15
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 689 9
	ldrsb	r3, [sp, #15]
.L83:
	.loc 1 690 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI44:
	@ sp needed
	pop	{r4, pc}
.L85:
	.align	2
.L84:
	.word	p_bmg160
.LFE14:
	.size	bmg160_get_range_reg, .-bmg160_get_range_reg
	.section	.text.bmg160_set_range_reg,"ax",%progbits
	.align	1
	.global	bmg160_set_range_reg
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_range_reg, %function
bmg160_set_range_reg:
.LFB15:
	.loc 1 715 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI45:
	sub	sp, sp, #16
.LCFI46:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 717 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 718 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 720 15
	ldr	r3, .L92
	ldr	r3, [r3]
	.loc 1 720 5
	cmp	r3, #0
	bne	.L87
	.loc 1 721 10
	mvn	r3, #126
	b	.L91
.L87:
	.loc 1 723 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #4
	bhi	.L89
	.loc 1 725 21
	ldr	r3, .L92
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 725 40
	ldr	r3, .L92
	ldr	r3, [r3]
	.loc 1 725 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #15
	blx	r4
.LVL15:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 729 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #7
	sxtb	r2, r3
	.loc 1 729 55
	ldrsb	r3, [sp, #7]
	and	r3, r3, #7
	sxtb	r3, r3
	.loc 1 729 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 729 14
	strb	r3, [sp, #14]
	.loc 1 732 22
	ldr	r3, .L92
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 732 42
	ldr	r3, .L92
	ldr	r3, [r3]
	.loc 1 732 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #15
	blx	r4
.LVL16:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 732 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L90
.L89:
	.loc 1 737 11
	movs	r3, #254
	strb	r3, [sp, #15]
.L90:
	.loc 1 740 9
	ldrsb	r3, [sp, #15]
.L91:
	.loc 1 741 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI47:
	@ sp needed
	pop	{r4, pc}
.L93:
	.align	2
.L92:
	.word	p_bmg160
.LFE15:
	.size	bmg160_set_range_reg, .-bmg160_set_range_reg
	.section	.text.bmg160_get_bw,"ax",%progbits
	.align	1
	.global	bmg160_get_bw
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_bw, %function
bmg160_get_bw:
.LFB16:
	.loc 1 770 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI48:
	sub	sp, sp, #16
.LCFI49:
	str	r0, [sp, #4]
	.loc 1 772 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 773 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 775 15
	ldr	r3, .L98
	ldr	r3, [r3]
	.loc 1 775 5
	cmp	r3, #0
	bne	.L95
	.loc 1 776 10
	mvn	r3, #126
	b	.L97
.L95:
	.loc 1 779 20
	ldr	r3, .L98
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 779 39
	ldr	r3, .L98
	ldr	r3, [r3]
	.loc 1 779 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #16
	blx	r4
.LVL17:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 782 36
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #7
	uxtb	r2, r3
	.loc 1 782 12
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 785 9
	ldrsb	r3, [sp, #15]
.L97:
	.loc 1 786 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI50:
	@ sp needed
	pop	{r4, pc}
.L99:
	.align	2
.L98:
	.word	p_bmg160
.LFE16:
	.size	bmg160_get_bw, .-bmg160_get_bw
	.section	.text.bmg160_set_bw,"ax",%progbits
	.align	1
	.global	bmg160_set_bw
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_bw, %function
bmg160_set_bw:
.LFB17:
	.loc 1 815 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI51:
	sub	sp, sp, #16
.LCFI52:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 817 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 818 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 819 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 820 5
	movs	r3, #0
	strb	r3, [sp, #12]
	.loc 1 822 15
	ldr	r3, .L107
	ldr	r3, [r3]
	.loc 1 822 5
	cmp	r3, #0
	bne	.L101
	.loc 1 823 10
	mvn	r3, #126
	b	.L106
.L101:
	.loc 1 825 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L103
	.loc 1 826 13
	add	r3, sp, #13
	mov	r0, r3
	bl	bmg160_get_power_mode
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 827 19
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 827 7
	cmp	r3, #4
	bne	.L104
	.loc 1 829 14
	add	r3, sp, #12
	mov	r0, r3
	bl	bmg160_get_auto_sleep_durn
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 831 14
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	bmg160_set_auto_sleep_durn
	mov	r3, r0
	strb	r3, [sp, #15]
.L104:
	.loc 1 836 22
	ldr	r3, .L107
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 836 41
	ldr	r3, .L107
	ldr	r3, [r3]
	.loc 1 836 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #16
	blx	r4
.LVL18:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 840 28
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #7
	sxtb	r2, r3
	.loc 1 840 53
	ldrsb	r3, [sp, #7]
	and	r3, r3, #7
	sxtb	r3, r3
	.loc 1 840 37
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 840 15
	strb	r3, [sp, #14]
	.loc 1 842 23
	ldr	r3, .L107
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 842 43
	ldr	r3, .L107
	ldr	r3, [r3]
	.loc 1 842 15
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #16
	blx	r4
.LVL19:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 842 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L105
.L103:
	.loc 1 847 11
	movs	r3, #254
	strb	r3, [sp, #15]
.L105:
	.loc 1 850 9
	ldrsb	r3, [sp, #15]
.L106:
	.loc 1 851 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI53:
	@ sp needed
	pop	{r4, pc}
.L108:
	.align	2
.L107:
	.word	p_bmg160
.LFE17:
	.size	bmg160_set_bw, .-bmg160_set_bw
	.section	.text.bmg160_get_pmu_ext_tri_select,"ax",%progbits
	.align	1
	.global	bmg160_get_pmu_ext_tri_select
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_pmu_ext_tri_select, %function
bmg160_get_pmu_ext_tri_select:
.LFB18:
	.loc 1 876 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI54:
	sub	sp, sp, #16
.LCFI55:
	str	r0, [sp, #4]
	.loc 1 878 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 879 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 881 15
	ldr	r3, .L113
	ldr	r3, [r3]
	.loc 1 881 5
	cmp	r3, #0
	bne	.L110
	.loc 1 882 10
	mvn	r3, #126
	b	.L112
.L110:
	.loc 1 885 20
	ldr	r3, .L113
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 885 39
	ldr	r3, .L113
	ldr	r3, [r3]
	.loc 1 885 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL20:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 888 52
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 888 28
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 891 9
	ldrsb	r3, [sp, #15]
.L112:
	.loc 1 892 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI56:
	@ sp needed
	pop	{r4, pc}
.L114:
	.align	2
.L113:
	.word	p_bmg160
.LFE18:
	.size	bmg160_get_pmu_ext_tri_select, .-bmg160_get_pmu_ext_tri_select
	.section	.text.bmg160_set_pmu_ext_tri_select,"ax",%progbits
	.align	1
	.global	bmg160_set_pmu_ext_tri_select
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_pmu_ext_tri_select, %function
bmg160_set_pmu_ext_tri_select:
.LFB19:
	.loc 1 917 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI57:
	sub	sp, sp, #16
.LCFI58:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 919 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 920 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 922 15
	ldr	r3, .L119
	ldr	r3, [r3]
	.loc 1 922 5
	cmp	r3, #0
	bne	.L116
	.loc 1 923 10
	mvn	r3, #126
	b	.L118
.L116:
	.loc 1 926 20
	ldr	r3, .L119
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 926 39
	ldr	r3, .L119
	ldr	r3, [r3]
	.loc 1 926 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL21:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 929 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #48
	sxtb	r2, r3
	.loc 1 929 61
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 929 67
	sxtb	r3, r3
	and	r3, r3, #48
	sxtb	r3, r3
	.loc 1 929 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 929 13
	strb	r3, [sp, #14]
	.loc 1 931 21
	ldr	r3, .L119
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 931 41
	ldr	r3, .L119
	ldr	r3, [r3]
	.loc 1 931 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL22:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 931 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 935 9
	ldrsb	r3, [sp, #15]
.L118:
	.loc 1 936 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI59:
	@ sp needed
	pop	{r4, pc}
.L120:
	.align	2
.L119:
	.word	p_bmg160
.LFE19:
	.size	bmg160_set_pmu_ext_tri_select, .-bmg160_set_pmu_ext_tri_select
	.section	.text.bmg160_get_high_bw,"ax",%progbits
	.align	1
	.global	bmg160_get_high_bw
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_high_bw, %function
bmg160_get_high_bw:
.LFB20:
	.loc 1 958 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI60:
	sub	sp, sp, #16
.LCFI61:
	str	r0, [sp, #4]
	.loc 1 960 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 961 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 963 15
	ldr	r3, .L125
	ldr	r3, [r3]
	.loc 1 963 5
	cmp	r3, #0
	bne	.L122
	.loc 1 964 10
	mvn	r3, #126
	b	.L124
.L122:
	.loc 1 967 20
	ldr	r3, .L125
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 967 39
	ldr	r3, .L125
	ldr	r3, [r3]
	.loc 1 967 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #19
	blx	r4
.LVL23:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 970 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 970 17
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 973 9
	ldrsb	r3, [sp, #15]
.L124:
	.loc 1 974 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI62:
	@ sp needed
	pop	{r4, pc}
.L126:
	.align	2
.L125:
	.word	p_bmg160
.LFE20:
	.size	bmg160_get_high_bw, .-bmg160_get_high_bw
	.section	.text.bmg160_set_high_bw,"ax",%progbits
	.align	1
	.global	bmg160_set_high_bw
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_high_bw, %function
bmg160_set_high_bw:
.LFB21:
	.loc 1 996 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI63:
	sub	sp, sp, #16
.LCFI64:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 998 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 999 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1001 15
	ldr	r3, .L133
	ldr	r3, [r3]
	.loc 1 1001 5
	cmp	r3, #0
	bne	.L128
	.loc 1 1002 10
	mvn	r3, #126
	b	.L132
.L128:
	.loc 1 1004 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L130
	.loc 1 1006 21
	ldr	r3, .L133
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1006 40
	ldr	r3, .L133
	ldr	r3, [r3]
	.loc 1 1006 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #19
	blx	r4
.LVL24:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1010 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 1010 51
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 1010 36
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1010 14
	strb	r3, [sp, #14]
	.loc 1 1012 22
	ldr	r3, .L133
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1012 42
	ldr	r3, .L133
	ldr	r3, [r3]
	.loc 1 1012 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #19
	blx	r4
.LVL25:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1012 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L131
.L130:
	.loc 1 1017 11
	movs	r3, #254
	strb	r3, [sp, #15]
.L131:
	.loc 1 1020 9
	ldrsb	r3, [sp, #15]
.L132:
	.loc 1 1021 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI65:
	@ sp needed
	pop	{r4, pc}
.L134:
	.align	2
.L133:
	.word	p_bmg160
.LFE21:
	.size	bmg160_set_high_bw, .-bmg160_set_high_bw
	.section	.text.bmg160_get_shadow_dis,"ax",%progbits
	.align	1
	.global	bmg160_get_shadow_dis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_shadow_dis, %function
bmg160_get_shadow_dis:
.LFB22:
	.loc 1 1043 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI66:
	sub	sp, sp, #16
.LCFI67:
	str	r0, [sp, #4]
	.loc 1 1045 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1046 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1048 15
	ldr	r3, .L139
	ldr	r3, [r3]
	.loc 1 1048 5
	cmp	r3, #0
	bne	.L136
	.loc 1 1049 10
	mvn	r3, #126
	b	.L138
.L136:
	.loc 1 1052 20
	ldr	r3, .L139
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1052 39
	ldr	r3, .L139
	ldr	r3, [r3]
	.loc 1 1052 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #19
	blx	r4
.LVL26:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1055 44
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1055 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 1058 9
	ldrsb	r3, [sp, #15]
.L138:
	.loc 1 1059 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI68:
	@ sp needed
	pop	{r4, pc}
.L140:
	.align	2
.L139:
	.word	p_bmg160
.LFE22:
	.size	bmg160_get_shadow_dis, .-bmg160_get_shadow_dis
	.section	.text.bmg160_set_shadow_dis,"ax",%progbits
	.align	1
	.global	bmg160_set_shadow_dis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_shadow_dis, %function
bmg160_set_shadow_dis:
.LFB23:
	.loc 1 1081 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI69:
	sub	sp, sp, #16
.LCFI70:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1083 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1084 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1086 15
	ldr	r3, .L147
	ldr	r3, [r3]
	.loc 1 1086 5
	cmp	r3, #0
	bne	.L142
	.loc 1 1087 10
	mvn	r3, #126
	b	.L146
.L142:
	.loc 1 1089 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L144
	.loc 1 1091 21
	ldr	r3, .L147
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1091 40
	ldr	r3, .L147
	ldr	r3, [r3]
	.loc 1 1091 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #19
	blx	r4
.LVL27:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1095 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #64
	sxtb	r2, r3
	.loc 1 1095 54
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 1095 60
	sxtb	r3, r3
	and	r3, r3, #64
	sxtb	r3, r3
	.loc 1 1095 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1095 14
	strb	r3, [sp, #14]
	.loc 1 1097 22
	ldr	r3, .L147
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1097 42
	ldr	r3, .L147
	ldr	r3, [r3]
	.loc 1 1097 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #19
	blx	r4
.LVL28:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1097 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L145
.L144:
	.loc 1 1102 11
	movs	r3, #254
	strb	r3, [sp, #15]
.L145:
	.loc 1 1105 9
	ldrsb	r3, [sp, #15]
.L146:
	.loc 1 1106 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI71:
	@ sp needed
	pop	{r4, pc}
.L148:
	.align	2
.L147:
	.word	p_bmg160
.LFE23:
	.size	bmg160_set_shadow_dis, .-bmg160_set_shadow_dis
	.section	.text.bmg160_set_soft_rst,"ax",%progbits
	.align	1
	.global	bmg160_set_soft_rst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_soft_rst, %function
bmg160_set_soft_rst:
.LFB24:
	.loc 1 1122 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI72:
	sub	sp, sp, #8
.LCFI73:
	.loc 1 1124 5
	movs	r3, #255
	strb	r3, [sp, #7]
	.loc 1 1125 5
	movs	r3, #0
	strb	r3, [sp, #6]
	.loc 1 1127 16
	movs	r3, #182
	strb	r3, [sp, #6]
	.loc 1 1129 15
	ldr	r3, .L153
	ldr	r3, [r3]
	.loc 1 1129 5
	cmp	r3, #0
	bne	.L150
	.loc 1 1130 10
	mvn	r3, #126
	b	.L152
.L150:
	.loc 1 1133 20
	ldr	r3, .L153
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1133 40
	ldr	r3, .L153
	ldr	r3, [r3]
	.loc 1 1133 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #6
	movs	r3, #1
	movs	r1, #20
	blx	r4
.LVL29:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1137 9
	ldrsb	r3, [sp, #7]
.L152:
	.loc 1 1138 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI74:
	@ sp needed
	pop	{r4, pc}
.L154:
	.align	2
.L153:
	.word	p_bmg160
.LFE24:
	.size	bmg160_set_soft_rst, .-bmg160_set_soft_rst
	.section	.text.bmg160_get_data_enable,"ax",%progbits
	.align	1
	.global	bmg160_get_data_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_data_enable, %function
bmg160_get_data_enable:
.LFB25:
	.loc 1 1160 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI75:
	sub	sp, sp, #16
.LCFI76:
	str	r0, [sp, #4]
	.loc 1 1162 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1163 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1165 15
	ldr	r3, .L159
	ldr	r3, [r3]
	.loc 1 1165 5
	cmp	r3, #0
	bne	.L156
	.loc 1 1166 10
	mvn	r3, #126
	b	.L158
.L156:
	.loc 1 1169 20
	ldr	r3, .L159
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1169 39
	ldr	r3, .L159
	ldr	r3, [r3]
	.loc 1 1169 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #21
	blx	r4
.LVL30:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1172 45
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 1172 21
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 1175 9
	ldrsb	r3, [sp, #15]
.L158:
	.loc 1 1176 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI77:
	@ sp needed
	pop	{r4, pc}
.L160:
	.align	2
.L159:
	.word	p_bmg160
.LFE25:
	.size	bmg160_get_data_enable, .-bmg160_get_data_enable
	.section	.text.bmg160_set_data_enable,"ax",%progbits
	.align	1
	.global	bmg160_set_data_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_data_enable, %function
bmg160_set_data_enable:
.LFB26:
	.loc 1 1198 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI78:
	sub	sp, sp, #16
.LCFI79:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1200 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1201 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1203 15
	ldr	r3, .L165
	ldr	r3, [r3]
	.loc 1 1203 5
	cmp	r3, #0
	bne	.L162
	.loc 1 1204 10
	mvn	r3, #126
	b	.L164
.L162:
	.loc 1 1207 20
	ldr	r3, .L165
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1207 39
	ldr	r3, .L165
	ldr	r3, [r3]
	.loc 1 1207 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #21
	blx	r4
.LVL31:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1211 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 1211 54
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 1211 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1211 13
	strb	r3, [sp, #14]
	.loc 1 1213 21
	ldr	r3, .L165
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1213 41
	ldr	r3, .L165
	ldr	r3, [r3]
	.loc 1 1213 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #21
	blx	r4
.LVL32:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1213 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1218 9
	ldrsb	r3, [sp, #15]
.L164:
	.loc 1 1219 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI80:
	@ sp needed
	pop	{r4, pc}
.L166:
	.align	2
.L165:
	.word	p_bmg160
.LFE26:
	.size	bmg160_set_data_enable, .-bmg160_set_data_enable
	.section	.text.bmg160_get_fifo_enable,"ax",%progbits
	.align	1
	.global	bmg160_get_fifo_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_fifo_enable, %function
bmg160_get_fifo_enable:
.LFB27:
	.loc 1 1241 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI81:
	sub	sp, sp, #16
.LCFI82:
	str	r0, [sp, #4]
	.loc 1 1243 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1244 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1246 15
	ldr	r3, .L171
	ldr	r3, [r3]
	.loc 1 1246 5
	cmp	r3, #0
	bne	.L168
	.loc 1 1247 10
	mvn	r3, #126
	b	.L170
.L168:
	.loc 1 1250 20
	ldr	r3, .L171
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1250 39
	ldr	r3, .L171
	ldr	r3, [r3]
	.loc 1 1250 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #21
	blx	r4
.LVL33:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1253 45
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1253 21
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 1256 9
	ldrsb	r3, [sp, #15]
.L170:
	.loc 1 1257 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI83:
	@ sp needed
	pop	{r4, pc}
.L172:
	.align	2
.L171:
	.word	p_bmg160
.LFE27:
	.size	bmg160_get_fifo_enable, .-bmg160_get_fifo_enable
	.section	.text.bmg160_set_fifo_enable,"ax",%progbits
	.align	1
	.global	bmg160_set_fifo_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_fifo_enable, %function
bmg160_set_fifo_enable:
.LFB28:
	.loc 1 1279 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI84:
	sub	sp, sp, #16
.LCFI85:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1281 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1282 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1284 15
	ldr	r3, .L179
	ldr	r3, [r3]
	.loc 1 1284 5
	cmp	r3, #0
	bne	.L174
	.loc 1 1285 10
	mvn	r3, #126
	b	.L178
.L174:
	.loc 1 1287 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L176
	.loc 1 1289 21
	ldr	r3, .L179
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1289 40
	ldr	r3, .L179
	ldr	r3, [r3]
	.loc 1 1289 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #21
	blx	r4
.LVL34:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1293 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #64
	sxtb	r2, r3
	.loc 1 1293 55
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 1293 61
	sxtb	r3, r3
	and	r3, r3, #64
	sxtb	r3, r3
	.loc 1 1293 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1293 14
	strb	r3, [sp, #14]
	.loc 1 1295 22
	ldr	r3, .L179
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1295 42
	ldr	r3, .L179
	ldr	r3, [r3]
	.loc 1 1295 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #21
	blx	r4
.LVL35:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1295 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L177
.L176:
	.loc 1 1300 11
	movs	r3, #254
	strb	r3, [sp, #15]
.L177:
	.loc 1 1303 9
	ldrsb	r3, [sp, #15]
.L178:
	.loc 1 1304 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI86:
	@ sp needed
	pop	{r4, pc}
.L180:
	.align	2
.L179:
	.word	p_bmg160
.LFE28:
	.size	bmg160_set_fifo_enable, .-bmg160_set_fifo_enable
	.section	.text.bmg160_get_auto_offset_enable,"ax",%progbits
	.align	1
	.global	bmg160_get_auto_offset_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_auto_offset_enable, %function
bmg160_get_auto_offset_enable:
.LFB29:
	.loc 1 1327 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI87:
	sub	sp, sp, #16
.LCFI88:
	str	r0, [sp, #4]
	.loc 1 1329 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1330 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1332 15
	ldr	r3, .L185
	ldr	r3, [r3]
	.loc 1 1332 5
	cmp	r3, #0
	bne	.L182
	.loc 1 1333 10
	mvn	r3, #126
	b	.L184
.L182:
	.loc 1 1336 20
	ldr	r3, .L185
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1336 39
	ldr	r3, .L185
	ldr	r3, [r3]
	.loc 1 1336 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #21
	blx	r4
.LVL36:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1339 47
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1339 23
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 1342 9
	ldrsb	r3, [sp, #15]
.L184:
	.loc 1 1343 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI89:
	@ sp needed
	pop	{r4, pc}
.L186:
	.align	2
.L185:
	.word	p_bmg160
.LFE29:
	.size	bmg160_get_auto_offset_enable, .-bmg160_get_auto_offset_enable
	.section	.text.bmg160_set_auto_offset_enable,"ax",%progbits
	.align	1
	.global	bmg160_set_auto_offset_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_auto_offset_enable, %function
bmg160_set_auto_offset_enable:
.LFB30:
	.loc 1 1365 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI90:
	sub	sp, sp, #16
.LCFI91:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1367 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1368 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1370 15
	ldr	r3, .L191
	ldr	r3, [r3]
	.loc 1 1370 5
	cmp	r3, #0
	bne	.L188
	.loc 1 1371 10
	mvn	r3, #126
	b	.L190
.L188:
	.loc 1 1374 20
	ldr	r3, .L191
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1374 39
	ldr	r3, .L191
	ldr	r3, [r3]
	.loc 1 1374 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #21
	blx	r4
.LVL37:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1377 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 1377 56
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 1377 62
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 1377 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1377 13
	strb	r3, [sp, #14]
	.loc 1 1379 21
	ldr	r3, .L191
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1379 41
	ldr	r3, .L191
	ldr	r3, [r3]
	.loc 1 1379 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #21
	blx	r4
.LVL38:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1379 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1383 9
	ldrsb	r3, [sp, #15]
.L190:
	.loc 1 1384 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI92:
	@ sp needed
	pop	{r4, pc}
.L192:
	.align	2
.L191:
	.word	p_bmg160
.LFE30:
	.size	bmg160_set_auto_offset_enable, .-bmg160_set_auto_offset_enable
	.section	.text.bmg160_get_intr_output_type,"ax",%progbits
	.align	1
	.global	bmg160_get_intr_output_type
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr_output_type, %function
bmg160_get_intr_output_type:
.LFB31:
	.loc 1 1413 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI93:
	sub	sp, sp, #16
.LCFI94:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 1415 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1416 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1418 15
	ldr	r3, .L202
	ldr	r3, [r3]
	.loc 1 1418 5
	cmp	r3, #0
	bne	.L194
	.loc 1 1419 10
	mvn	r3, #126
	b	.L200
.L194:
	.loc 1 1421 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L196
	cmp	r3, #1
	beq	.L197
	b	.L201
.L196:
	.loc 1 1424 21
	ldr	r3, .L202
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1424 40
	ldr	r3, .L202
	ldr	r3, [r3]
	.loc 1 1424 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL39:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1428 51
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1428 27
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 1430 4
	b	.L199
.L197:
	.loc 1 1432 21
	ldr	r3, .L202
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1432 40
	ldr	r3, .L202
	ldr	r3, [r3]
	.loc 1 1432 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL40:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1436 51
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1436 27
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 1438 4
	b	.L199
.L201:
	.loc 1 1440 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 1441 4
	nop
.L199:
	.loc 1 1444 9
	ldrsb	r3, [sp, #15]
.L200:
	.loc 1 1445 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI95:
	@ sp needed
	pop	{r4, pc}
.L203:
	.align	2
.L202:
	.word	p_bmg160
.LFE31:
	.size	bmg160_get_intr_output_type, .-bmg160_get_intr_output_type
	.section	.text.bmg160_set_intr_output_type,"ax",%progbits
	.align	1
	.global	bmg160_set_intr_output_type
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_intr_output_type, %function
bmg160_set_intr_output_type:
.LFB32:
	.loc 1 1474 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI96:
	sub	sp, sp, #16
.LCFI97:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 1476 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1477 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1479 15
	ldr	r3, .L213
	ldr	r3, [r3]
	.loc 1 1479 5
	cmp	r3, #0
	bne	.L205
	.loc 1 1480 10
	mvn	r3, #126
	b	.L211
.L205:
	.loc 1 1482 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L207
	cmp	r3, #1
	beq	.L208
	b	.L212
.L207:
	.loc 1 1485 21
	ldr	r3, .L213
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1485 40
	ldr	r3, .L213
	ldr	r3, [r3]
	.loc 1 1485 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL41:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1489 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 1489 60
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 1489 66
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 1489 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1489 14
	strb	r3, [sp, #14]
	.loc 1 1492 22
	ldr	r3, .L213
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1492 42
	ldr	r3, .L213
	ldr	r3, [r3]
	.loc 1 1492 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL42:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1492 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1496 4
	b	.L210
.L208:
	.loc 1 1498 21
	ldr	r3, .L213
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1498 40
	ldr	r3, .L213
	ldr	r3, [r3]
	.loc 1 1498 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL43:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1502 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #8
	sxtb	r2, r3
	.loc 1 1502 60
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 1502 66
	sxtb	r3, r3
	and	r3, r3, #8
	sxtb	r3, r3
	.loc 1 1502 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1502 14
	strb	r3, [sp, #14]
	.loc 1 1505 22
	ldr	r3, .L213
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1505 42
	ldr	r3, .L213
	ldr	r3, [r3]
	.loc 1 1505 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL44:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1505 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1509 4
	b	.L210
.L212:
	.loc 1 1511 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 1512 4
	nop
.L210:
	.loc 1 1515 9
	ldrsb	r3, [sp, #15]
.L211:
	.loc 1 1516 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI98:
	@ sp needed
	pop	{r4, pc}
.L214:
	.align	2
.L213:
	.word	p_bmg160
.LFE32:
	.size	bmg160_set_intr_output_type, .-bmg160_set_intr_output_type
	.section	.text.bmg160_get_intr_level,"ax",%progbits
	.align	1
	.global	bmg160_get_intr_level
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr_level, %function
bmg160_get_intr_level:
.LFB33:
	.loc 1 1545 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI99:
	sub	sp, sp, #16
.LCFI100:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 1547 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1548 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1550 15
	ldr	r3, .L224
	ldr	r3, [r3]
	.loc 1 1550 5
	cmp	r3, #0
	bne	.L216
	.loc 1 1551 10
	mvn	r3, #126
	b	.L222
.L216:
	.loc 1 1553 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L218
	cmp	r3, #1
	beq	.L219
	b	.L223
.L218:
	.loc 1 1556 21
	ldr	r3, .L224
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1556 40
	ldr	r3, .L224
	ldr	r3, [r3]
	.loc 1 1556 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL45:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1560 45
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1560 21
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 1562 4
	b	.L221
.L219:
	.loc 1 1564 21
	ldr	r3, .L224
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1564 40
	ldr	r3, .L224
	ldr	r3, [r3]
	.loc 1 1564 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL46:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1568 45
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1568 21
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 1570 4
	b	.L221
.L223:
	.loc 1 1572 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 1573 4
	nop
.L221:
	.loc 1 1576 9
	ldrsb	r3, [sp, #15]
.L222:
	.loc 1 1577 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI101:
	@ sp needed
	pop	{r4, pc}
.L225:
	.align	2
.L224:
	.word	p_bmg160
.LFE33:
	.size	bmg160_get_intr_level, .-bmg160_get_intr_level
	.section	.text.bmg160_set_intr_level,"ax",%progbits
	.align	1
	.global	bmg160_set_intr_level
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_intr_level, %function
bmg160_set_intr_level:
.LFB34:
	.loc 1 1606 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI102:
	sub	sp, sp, #16
.LCFI103:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 1608 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1609 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1611 15
	ldr	r3, .L235
	ldr	r3, [r3]
	.loc 1 1611 5
	cmp	r3, #0
	bne	.L227
	.loc 1 1612 10
	mvn	r3, #126
	b	.L233
.L227:
	.loc 1 1614 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L229
	cmp	r3, #1
	beq	.L230
	b	.L234
.L229:
	.loc 1 1617 21
	ldr	r3, .L235
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1617 40
	ldr	r3, .L235
	ldr	r3, [r3]
	.loc 1 1617 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL47:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1621 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 1621 60
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 1621 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1621 14
	strb	r3, [sp, #14]
	.loc 1 1623 22
	ldr	r3, .L235
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1623 42
	ldr	r3, .L235
	ldr	r3, [r3]
	.loc 1 1623 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL48:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1623 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1627 4
	b	.L232
.L230:
	.loc 1 1629 21
	ldr	r3, .L235
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1629 40
	ldr	r3, .L235
	ldr	r3, [r3]
	.loc 1 1629 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL49:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1633 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 1633 54
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 1633 60
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 1633 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1633 14
	strb	r3, [sp, #14]
	.loc 1 1635 22
	ldr	r3, .L235
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1635 42
	ldr	r3, .L235
	ldr	r3, [r3]
	.loc 1 1635 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #22
	blx	r4
.LVL50:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1635 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1639 4
	b	.L232
.L234:
	.loc 1 1641 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 1642 4
	nop
.L232:
	.loc 1 1645 9
	ldrsb	r3, [sp, #15]
.L233:
	.loc 1 1646 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI104:
	@ sp needed
	pop	{r4, pc}
.L236:
	.align	2
.L235:
	.word	p_bmg160
.LFE34:
	.size	bmg160_set_intr_level, .-bmg160_set_intr_level
	.section	.text.bmg160_get_intr1_highrate,"ax",%progbits
	.align	1
	.global	bmg160_get_intr1_highrate
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr1_highrate, %function
bmg160_get_intr1_highrate:
.LFB35:
	.loc 1 1668 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI105:
	sub	sp, sp, #16
.LCFI106:
	str	r0, [sp, #4]
	.loc 1 1670 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1671 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1673 15
	ldr	r3, .L241
	ldr	r3, [r3]
	.loc 1 1673 5
	cmp	r3, #0
	bne	.L238
	.loc 1 1674 10
	mvn	r3, #126
	b	.L240
.L238:
	.loc 1 1677 20
	ldr	r3, .L241
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1677 39
	ldr	r3, .L241
	ldr	r3, [r3]
	.loc 1 1677 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL51:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1680 39
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1680 15
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 1683 9
	ldrsb	r3, [sp, #15]
.L240:
	.loc 1 1684 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI107:
	@ sp needed
	pop	{r4, pc}
.L242:
	.align	2
.L241:
	.word	p_bmg160
.LFE35:
	.size	bmg160_get_intr1_highrate, .-bmg160_get_intr1_highrate
	.section	.text.bmg160_set_intr1_highrate,"ax",%progbits
	.align	1
	.global	bmg160_set_intr1_highrate
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_intr1_highrate, %function
bmg160_set_intr1_highrate:
.LFB36:
	.loc 1 1707 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI108:
	sub	sp, sp, #16
.LCFI109:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1709 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1710 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1712 15
	ldr	r3, .L247
	ldr	r3, [r3]
	.loc 1 1712 5
	cmp	r3, #0
	bne	.L244
	.loc 1 1713 10
	mvn	r3, #126
	b	.L246
.L244:
	.loc 1 1716 20
	ldr	r3, .L247
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1716 39
	ldr	r3, .L247
	ldr	r3, [r3]
	.loc 1 1716 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL52:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1719 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #8
	sxtb	r2, r3
	.loc 1 1719 48
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 1719 54
	sxtb	r3, r3
	and	r3, r3, #8
	sxtb	r3, r3
	.loc 1 1719 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1719 13
	strb	r3, [sp, #14]
	.loc 1 1721 21
	ldr	r3, .L247
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1721 41
	ldr	r3, .L247
	ldr	r3, [r3]
	.loc 1 1721 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL53:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1721 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1725 9
	ldrsb	r3, [sp, #15]
.L246:
	.loc 1 1726 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI110:
	@ sp needed
	pop	{r4, pc}
.L248:
	.align	2
.L247:
	.word	p_bmg160
.LFE36:
	.size	bmg160_set_intr1_highrate, .-bmg160_set_intr1_highrate
	.section	.text.bmg160_get_intr1_any_motion,"ax",%progbits
	.align	1
	.global	bmg160_get_intr1_any_motion
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr1_any_motion, %function
bmg160_get_intr1_any_motion:
.LFB37:
	.loc 1 1749 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI111:
	sub	sp, sp, #16
.LCFI112:
	str	r0, [sp, #4]
	.loc 1 1751 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1752 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1754 15
	ldr	r3, .L253
	ldr	r3, [r3]
	.loc 1 1754 5
	cmp	r3, #0
	bne	.L250
	.loc 1 1755 10
	mvn	r3, #126
	b	.L252
.L250:
	.loc 1 1758 20
	ldr	r3, .L253
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1758 39
	ldr	r3, .L253
	ldr	r3, [r3]
	.loc 1 1758 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL54:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1761 50
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1761 26
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 1764 9
	ldrsb	r3, [sp, #15]
.L252:
	.loc 1 1765 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI113:
	@ sp needed
	pop	{r4, pc}
.L254:
	.align	2
.L253:
	.word	p_bmg160
.LFE37:
	.size	bmg160_get_intr1_any_motion, .-bmg160_get_intr1_any_motion
	.section	.text.bmg160_set_intr1_any_motion,"ax",%progbits
	.align	1
	.global	bmg160_set_intr1_any_motion
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_intr1_any_motion, %function
bmg160_set_intr1_any_motion:
.LFB38:
	.loc 1 1788 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI114:
	sub	sp, sp, #16
.LCFI115:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 1790 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1791 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1793 15
	ldr	r3, .L259
	ldr	r3, [r3]
	.loc 1 1793 5
	cmp	r3, #0
	bne	.L256
	.loc 1 1794 10
	mvn	r3, #126
	b	.L258
.L256:
	.loc 1 1797 20
	ldr	r3, .L259
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1797 39
	ldr	r3, .L259
	ldr	r3, [r3]
	.loc 1 1797 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL55:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1800 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 1800 59
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 1800 65
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 1800 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1800 13
	strb	r3, [sp, #14]
	.loc 1 1802 21
	ldr	r3, .L259
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1802 41
	ldr	r3, .L259
	ldr	r3, [r3]
	.loc 1 1802 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #23
	blx	r4
.LVL56:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1802 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1806 9
	ldrsb	r3, [sp, #15]
.L258:
	.loc 1 1807 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI116:
	@ sp needed
	pop	{r4, pc}
.L260:
	.align	2
.L259:
	.word	p_bmg160
.LFE38:
	.size	bmg160_set_intr1_any_motion, .-bmg160_set_intr1_any_motion
	.section	.text.bmg160_get_intr_data,"ax",%progbits
	.align	1
	.global	bmg160_get_intr_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr_data, %function
bmg160_get_intr_data:
.LFB39:
	.loc 1 1835 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI117:
	sub	sp, sp, #16
.LCFI118:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 1837 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1838 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1840 15
	ldr	r3, .L270
	ldr	r3, [r3]
	.loc 1 1840 5
	cmp	r3, #0
	bne	.L262
	.loc 1 1841 10
	mvn	r3, #126
	b	.L268
.L262:
	.loc 1 1843 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L264
	cmp	r3, #1
	beq	.L265
	b	.L269
.L264:
	.loc 1 1846 21
	ldr	r3, .L270
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1846 40
	ldr	r3, .L270
	ldr	r3, [r3]
	.loc 1 1846 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL57:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1850 44
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1850 20
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 1852 4
	b	.L267
.L265:
	.loc 1 1854 21
	ldr	r3, .L270
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1854 40
	ldr	r3, .L270
	ldr	r3, [r3]
	.loc 1 1854 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL58:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1858 44
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 1858 20
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 1860 4
	b	.L267
.L269:
	.loc 1 1862 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 1863 4
	nop
.L267:
	.loc 1 1866 9
	ldrsb	r3, [sp, #15]
.L268:
	.loc 1 1867 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI119:
	@ sp needed
	pop	{r4, pc}
.L271:
	.align	2
.L270:
	.word	p_bmg160
.LFE39:
	.size	bmg160_get_intr_data, .-bmg160_get_intr_data
	.section	.text.bmg160_set_intr_data,"ax",%progbits
	.align	1
	.global	bmg160_set_intr_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_intr_data, %function
bmg160_set_intr_data:
.LFB40:
	.loc 1 1895 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI120:
	sub	sp, sp, #16
.LCFI121:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 1897 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1898 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1900 15
	ldr	r3, .L281
	ldr	r3, [r3]
	.loc 1 1900 5
	cmp	r3, #0
	bne	.L273
	.loc 1 1901 10
	mvn	r3, #126
	b	.L279
.L273:
	.loc 1 1903 4
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L275
	cmp	r3, #1
	beq	.L276
	b	.L280
.L275:
	.loc 1 1906 22
	ldr	r3, .L281
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1906 41
	ldr	r3, .L281
	ldr	r3, [r3]
	.loc 1 1906 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL59:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1910 28
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 1910 60
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 1910 37
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1910 15
	strb	r3, [sp, #14]
	.loc 1 1912 23
	ldr	r3, .L281
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1912 43
	ldr	r3, .L281
	ldr	r3, [r3]
	.loc 1 1912 15
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL60:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1912 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1916 5
	b	.L278
.L276:
	.loc 1 1918 22
	ldr	r3, .L281
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1918 41
	ldr	r3, .L281
	ldr	r3, [r3]
	.loc 1 1918 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL61:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1922 28
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 1922 54
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 1922 37
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 1922 15
	strb	r3, [sp, #14]
	.loc 1 1924 23
	ldr	r3, .L281
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 1924 43
	ldr	r3, .L281
	ldr	r3, [r3]
	.loc 1 1924 15
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL62:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 1924 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 1928 5
	b	.L278
.L280:
	.loc 1 1930 12
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 1931 5
	nop
.L278:
	.loc 1 1934 10
	ldrsb	r3, [sp, #15]
.L279:
	.loc 1 1935 2 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI122:
	@ sp needed
	pop	{r4, pc}
.L282:
	.align	2
.L281:
	.word	p_bmg160
.LFE40:
	.size	bmg160_set_intr_data, .-bmg160_set_intr_data
	.section	.text.bmg160_get_intr2_offset,"ax",%progbits
	.align	1
	.global	bmg160_get_intr2_offset
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr2_offset, %function
bmg160_get_intr2_offset:
.LFB41:
	.loc 1 1963 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI123:
	sub	sp, sp, #16
.LCFI124:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 1965 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 1966 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 1968 15
	ldr	r3, .L290
	ldr	r3, [r3]
	.loc 1 1968 5
	cmp	r3, #0
	bne	.L284
	.loc 1 1969 10
	mvn	r3, #126
	b	.L289
.L284:
	.loc 1 1971 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L286
	cmp	r3, #2
	bne	.L287
	.loc 1 1974 21
	ldr	r3, .L290
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1974 40
	ldr	r3, .L290
	ldr	r3, [r3]
	.loc 1 1974 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL63:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1978 47
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1978 23
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 1980 4
	b	.L288
.L286:
	.loc 1 1982 21
	ldr	r3, .L290
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 1982 40
	ldr	r3, .L290
	ldr	r3, [r3]
	.loc 1 1982 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL64:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 1986 47
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 1986 23
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 1988 4
	b	.L288
.L287:
	.loc 1 1990 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 1991 4
	nop
.L288:
	.loc 1 1994 9
	ldrsb	r3, [sp, #15]
.L289:
	.loc 1 1995 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI125:
	@ sp needed
	pop	{r4, pc}
.L291:
	.align	2
.L290:
	.word	p_bmg160
.LFE41:
	.size	bmg160_get_intr2_offset, .-bmg160_get_intr2_offset
	.section	.text.bmg160_set_intr2_offset,"ax",%progbits
	.align	1
	.global	bmg160_set_intr2_offset
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_intr2_offset, %function
bmg160_set_intr2_offset:
.LFB42:
	.loc 1 2023 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI126:
	sub	sp, sp, #16
.LCFI127:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 2025 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2026 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2028 15
	ldr	r3, .L299
	ldr	r3, [r3]
	.loc 1 2028 5
	cmp	r3, #0
	bne	.L293
	.loc 1 2029 10
	mvn	r3, #126
	b	.L298
.L293:
	.loc 1 2031 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L295
	cmp	r3, #2
	bne	.L296
	.loc 1 2034 21
	ldr	r3, .L299
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2034 40
	ldr	r3, .L299
	ldr	r3, [r3]
	.loc 1 2034 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL65:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2038 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #64
	sxtb	r2, r3
	.loc 1 2038 56
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 2038 62
	sxtb	r3, r3
	and	r3, r3, #64
	sxtb	r3, r3
	.loc 1 2038 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2038 14
	strb	r3, [sp, #14]
	.loc 1 2040 22
	ldr	r3, .L299
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2040 42
	ldr	r3, .L299
	ldr	r3, [r3]
	.loc 1 2040 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL66:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2040 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2044 4
	b	.L297
.L295:
	.loc 1 2046 21
	ldr	r3, .L299
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2046 40
	ldr	r3, .L299
	ldr	r3, [r3]
	.loc 1 2046 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL67:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2050 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #16
	sxtb	r2, r3
	.loc 1 2050 56
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 2050 62
	sxtb	r3, r3
	and	r3, r3, #16
	sxtb	r3, r3
	.loc 1 2050 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2050 14
	strb	r3, [sp, #14]
	.loc 1 2052 22
	ldr	r3, .L299
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2052 42
	ldr	r3, .L299
	ldr	r3, [r3]
	.loc 1 2052 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL68:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2052 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2056 4
	b	.L297
.L296:
	.loc 1 2058 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2059 4
	nop
.L297:
	.loc 1 2062 9
	ldrsb	r3, [sp, #15]
.L298:
	.loc 1 2063 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI128:
	@ sp needed
	pop	{r4, pc}
.L300:
	.align	2
.L299:
	.word	p_bmg160
.LFE42:
	.size	bmg160_set_intr2_offset, .-bmg160_set_intr2_offset
	.section	.text.bmg160_get_intr_offset,"ax",%progbits
	.align	1
	.global	bmg160_get_intr_offset
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr_offset, %function
bmg160_get_intr_offset:
.LFB43:
	.loc 1 2091 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI129:
	sub	sp, sp, #16
.LCFI130:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 2093 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2094 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2096 15
	ldr	r3, .L308
	ldr	r3, [r3]
	.loc 1 2096 5
	cmp	r3, #0
	bne	.L302
	.loc 1 2097 10
	mvn	r3, #126
	b	.L307
.L302:
	.loc 1 2099 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L304
	cmp	r3, #2
	bne	.L305
	.loc 1 2102 21
	ldr	r3, .L308
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2102 40
	ldr	r3, .L308
	ldr	r3, [r3]
	.loc 1 2102 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL69:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2106 47
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2106 23
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2108 4
	b	.L306
.L304:
	.loc 1 2110 21
	ldr	r3, .L308
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2110 40
	ldr	r3, .L308
	ldr	r3, [r3]
	.loc 1 2110 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL70:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2114 47
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2114 23
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2116 4
	b	.L306
.L305:
	.loc 1 2118 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2119 4
	nop
.L306:
	.loc 1 2122 9
	ldrsb	r3, [sp, #15]
.L307:
	.loc 1 2123 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI131:
	@ sp needed
	pop	{r4, pc}
.L309:
	.align	2
.L308:
	.word	p_bmg160
.LFE43:
	.size	bmg160_get_intr_offset, .-bmg160_get_intr_offset
	.section	.text.bmg160_set_intr1_offset,"ax",%progbits
	.align	1
	.global	bmg160_set_intr1_offset
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_intr1_offset, %function
bmg160_set_intr1_offset:
.LFB44:
	.loc 1 2151 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI132:
	sub	sp, sp, #16
.LCFI133:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 2153 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2154 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2156 15
	ldr	r3, .L317
	ldr	r3, [r3]
	.loc 1 2156 5
	cmp	r3, #0
	bne	.L311
	.loc 1 2157 10
	mvn	r3, #126
	b	.L316
.L311:
	.loc 1 2159 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L313
	cmp	r3, #2
	bne	.L314
	.loc 1 2162 21
	ldr	r3, .L317
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2162 40
	ldr	r3, .L317
	ldr	r3, [r3]
	.loc 1 2162 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL71:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2166 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 2166 56
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 2166 62
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 2166 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2166 14
	strb	r3, [sp, #14]
	.loc 1 2168 22
	ldr	r3, .L317
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2168 42
	ldr	r3, .L317
	ldr	r3, [r3]
	.loc 1 2168 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL72:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2168 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2172 4
	b	.L315
.L313:
	.loc 1 2174 21
	ldr	r3, .L317
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2174 40
	ldr	r3, .L317
	ldr	r3, [r3]
	.loc 1 2174 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL73:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2178 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #8
	sxtb	r2, r3
	.loc 1 2178 56
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 2178 62
	sxtb	r3, r3
	and	r3, r3, #8
	sxtb	r3, r3
	.loc 1 2178 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2178 14
	strb	r3, [sp, #14]
	.loc 1 2180 22
	ldr	r3, .L317
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2180 42
	ldr	r3, .L317
	ldr	r3, [r3]
	.loc 1 2180 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL74:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2180 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2184 4
	b	.L315
.L314:
	.loc 1 2186 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2187 4
	nop
.L315:
	.loc 1 2190 9
	ldrsb	r3, [sp, #15]
.L316:
	.loc 1 2191 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI134:
	@ sp needed
	pop	{r4, pc}
.L318:
	.align	2
.L317:
	.word	p_bmg160
.LFE44:
	.size	bmg160_set_intr1_offset, .-bmg160_set_intr1_offset
	.section	.text.bmg160_get_intr2_fifo,"ax",%progbits
	.align	1
	.global	bmg160_get_intr2_fifo
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr2_fifo, %function
bmg160_get_intr2_fifo:
.LFB45:
	.loc 1 2213 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI135:
	sub	sp, sp, #16
.LCFI136:
	str	r0, [sp, #4]
	.loc 1 2215 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2216 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2218 15
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2218 5
	cmp	r3, #0
	bne	.L320
	.loc 1 2219 10
	mvn	r3, #126
	b	.L322
.L320:
	.loc 1 2221 20
	ldr	r3, .L323
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2221 39
	ldr	r3, .L323
	ldr	r3, [r3]
	.loc 1 2221 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL75:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2224 43
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2224 19
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 2227 9
	ldrsb	r3, [sp, #15]
.L322:
	.loc 1 2228 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI137:
	@ sp needed
	pop	{r4, pc}
.L324:
	.align	2
.L323:
	.word	p_bmg160
.LFE45:
	.size	bmg160_get_intr2_fifo, .-bmg160_get_intr2_fifo
	.section	.text.bmg160_get_intr1_fifo,"ax",%progbits
	.align	1
	.global	bmg160_get_intr1_fifo
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr1_fifo, %function
bmg160_get_intr1_fifo:
.LFB46:
	.loc 1 2250 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI138:
	sub	sp, sp, #16
.LCFI139:
	str	r0, [sp, #4]
	.loc 1 2252 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2253 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2255 15
	ldr	r3, .L329
	ldr	r3, [r3]
	.loc 1 2255 5
	cmp	r3, #0
	bne	.L326
	.loc 1 2256 10
	mvn	r3, #126
	b	.L328
.L326:
	.loc 1 2259 20
	ldr	r3, .L329
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2259 39
	ldr	r3, .L329
	ldr	r3, [r3]
	.loc 1 2259 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL76:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2262 43
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2262 19
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 2265 9
	ldrsb	r3, [sp, #15]
.L328:
	.loc 1 2266 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI140:
	@ sp needed
	pop	{r4, pc}
.L330:
	.align	2
.L329:
	.word	p_bmg160
.LFE46:
	.size	bmg160_get_intr1_fifo, .-bmg160_get_intr1_fifo
	.section	.text.bmg160_set_intr_fifo,"ax",%progbits
	.align	1
	.global	bmg160_set_intr_fifo
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_intr_fifo, %function
bmg160_set_intr_fifo:
.LFB47:
	.loc 1 2295 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI141:
	sub	sp, sp, #16
.LCFI142:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 2297 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2298 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2300 15
	ldr	r3, .L340
	ldr	r3, [r3]
	.loc 1 2300 5
	cmp	r3, #0
	bne	.L332
	.loc 1 2301 10
	mvn	r3, #126
	b	.L338
.L332:
	.loc 1 2303 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L334
	cmp	r3, #1
	beq	.L335
	b	.L339
.L334:
	.loc 1 2306 21
	ldr	r3, .L340
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2306 40
	ldr	r3, .L340
	ldr	r3, [r3]
	.loc 1 2306 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL77:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2310 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 2310 53
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 2310 59
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 2310 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2310 14
	strb	r3, [sp, #14]
	.loc 1 2312 22
	ldr	r3, .L340
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2312 42
	ldr	r3, .L340
	ldr	r3, [r3]
	.loc 1 2312 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL78:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2312 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2316 4
	b	.L337
.L335:
	.loc 1 2318 21
	ldr	r3, .L340
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2318 40
	ldr	r3, .L340
	ldr	r3, [r3]
	.loc 1 2318 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL79:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2322 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #32
	sxtb	r2, r3
	.loc 1 2322 53
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #5
	.loc 1 2322 59
	sxtb	r3, r3
	and	r3, r3, #32
	sxtb	r3, r3
	.loc 1 2322 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2322 14
	strb	r3, [sp, #14]
	.loc 1 2324 22
	ldr	r3, .L340
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2324 42
	ldr	r3, .L340
	ldr	r3, [r3]
	.loc 1 2324 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #24
	blx	r4
.LVL80:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2324 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2328 4
	b	.L337
.L339:
	.loc 1 2330 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2331 4
	nop
.L337:
	.loc 1 2334 9
	ldrsb	r3, [sp, #15]
.L338:
	.loc 1 2335 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI143:
	@ sp needed
	pop	{r4, pc}
.L341:
	.align	2
.L340:
	.word	p_bmg160
.LFE47:
	.size	bmg160_set_intr_fifo, .-bmg160_set_intr_fifo
	.section	.text.bmg160_get_intr2_highrate,"ax",%progbits
	.align	1
	.global	bmg160_get_intr2_highrate
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr2_highrate, %function
bmg160_get_intr2_highrate:
.LFB48:
	.loc 1 2358 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI144:
	sub	sp, sp, #16
.LCFI145:
	str	r0, [sp, #4]
	.loc 1 2360 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2361 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2363 15
	ldr	r3, .L346
	ldr	r3, [r3]
	.loc 1 2363 5
	cmp	r3, #0
	bne	.L343
	.loc 1 2364 10
	mvn	r3, #126
	b	.L345
.L343:
	.loc 1 2367 20
	ldr	r3, .L346
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2367 39
	ldr	r3, .L346
	ldr	r3, [r3]
	.loc 1 2367 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL81:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2370 48
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2370 24
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 2373 9
	ldrsb	r3, [sp, #15]
.L345:
	.loc 1 2374 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI146:
	@ sp needed
	pop	{r4, pc}
.L347:
	.align	2
.L346:
	.word	p_bmg160
.LFE48:
	.size	bmg160_get_intr2_highrate, .-bmg160_get_intr2_highrate
	.section	.text.bmg160_set_intr2_highrate,"ax",%progbits
	.align	1
	.global	bmg160_set_intr2_highrate
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_intr2_highrate, %function
bmg160_set_intr2_highrate:
.LFB49:
	.loc 1 2397 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI147:
	sub	sp, sp, #16
.LCFI148:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 2399 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2400 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2402 15
	ldr	r3, .L352
	ldr	r3, [r3]
	.loc 1 2402 5
	cmp	r3, #0
	bne	.L349
	.loc 1 2403 10
	mvn	r3, #126
	b	.L351
.L349:
	.loc 1 2406 20
	ldr	r3, .L352
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2406 39
	ldr	r3, .L352
	ldr	r3, [r3]
	.loc 1 2406 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL82:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2410 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #8
	sxtb	r2, r3
	.loc 1 2410 57
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 2410 63
	sxtb	r3, r3
	and	r3, r3, #8
	sxtb	r3, r3
	.loc 1 2410 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2410 13
	strb	r3, [sp, #14]
	.loc 1 2412 21
	ldr	r3, .L352
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2412 41
	ldr	r3, .L352
	ldr	r3, [r3]
	.loc 1 2412 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL83:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2412 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2416 9
	ldrsb	r3, [sp, #15]
.L351:
	.loc 1 2417 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI149:
	@ sp needed
	pop	{r4, pc}
.L353:
	.align	2
.L352:
	.word	p_bmg160
.LFE49:
	.size	bmg160_set_intr2_highrate, .-bmg160_set_intr2_highrate
	.section	.text.bmg160_get_intr2_any_motion,"ax",%progbits
	.align	1
	.global	bmg160_get_intr2_any_motion
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_intr2_any_motion, %function
bmg160_get_intr2_any_motion:
.LFB50:
	.loc 1 2440 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI150:
	sub	sp, sp, #16
.LCFI151:
	str	r0, [sp, #4]
	.loc 1 2442 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2443 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2445 15
	ldr	r3, .L358
	ldr	r3, [r3]
	.loc 1 2445 5
	cmp	r3, #0
	bne	.L355
	.loc 1 2446 10
	mvn	r3, #126
	b	.L357
.L355:
	.loc 1 2449 20
	ldr	r3, .L358
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2449 39
	ldr	r3, .L358
	ldr	r3, [r3]
	.loc 1 2449 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL84:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2452 50
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2452 26
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 2455 9
	ldrsb	r3, [sp, #15]
.L357:
	.loc 1 2456 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI152:
	@ sp needed
	pop	{r4, pc}
.L359:
	.align	2
.L358:
	.word	p_bmg160
.LFE50:
	.size	bmg160_get_intr2_any_motion, .-bmg160_get_intr2_any_motion
	.section	.text.bmg160_set_intr2_any_motion,"ax",%progbits
	.align	1
	.global	bmg160_set_intr2_any_motion
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_intr2_any_motion, %function
bmg160_set_intr2_any_motion:
.LFB51:
	.loc 1 2479 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI153:
	sub	sp, sp, #16
.LCFI154:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 2481 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2482 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2484 15
	ldr	r3, .L364
	ldr	r3, [r3]
	.loc 1 2484 5
	cmp	r3, #0
	bne	.L361
	.loc 1 2485 10
	mvn	r3, #126
	b	.L363
.L361:
	.loc 1 2488 20
	ldr	r3, .L364
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2488 39
	ldr	r3, .L364
	ldr	r3, [r3]
	.loc 1 2488 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL85:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2491 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 2491 59
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 2491 65
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 2491 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2491 13
	strb	r3, [sp, #14]
	.loc 1 2493 21
	ldr	r3, .L364
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2493 41
	ldr	r3, .L364
	ldr	r3, [r3]
	.loc 1 2493 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #25
	blx	r4
.LVL86:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2493 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2497 9
	ldrsb	r3, [sp, #15]
.L363:
	.loc 1 2498 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI155:
	@ sp needed
	pop	{r4, pc}
.L365:
	.align	2
.L364:
	.word	p_bmg160
.LFE51:
	.size	bmg160_set_intr2_any_motion, .-bmg160_set_intr2_any_motion
	.section	.text.bmg160_get_offset_unfilt,"ax",%progbits
	.align	1
	.global	bmg160_get_offset_unfilt
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_offset_unfilt, %function
bmg160_get_offset_unfilt:
.LFB52:
	.loc 1 2527 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI156:
	sub	sp, sp, #16
.LCFI157:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 2529 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2530 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2532 15
	ldr	r3, .L375
	ldr	r3, [r3]
	.loc 1 2532 5
	cmp	r3, #0
	bne	.L367
	.loc 1 2533 10
	mvn	r3, #126
	b	.L373
.L367:
	.loc 1 2535 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L369
	cmp	r3, #2
	beq	.L370
	b	.L374
.L369:
	.loc 1 2538 21
	ldr	r3, .L375
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2538 40
	ldr	r3, .L375
	ldr	r3, [r3]
	.loc 1 2538 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL87:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2542 48
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2542 24
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2544 4
	b	.L372
.L370:
	.loc 1 2546 21
	ldr	r3, .L375
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2546 40
	ldr	r3, .L375
	ldr	r3, [r3]
	.loc 1 2546 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL88:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2550 48
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 2550 24
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2552 4
	b	.L372
.L374:
	.loc 1 2554 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2555 4
	nop
.L372:
	.loc 1 2558 9
	ldrsb	r3, [sp, #15]
.L373:
	.loc 1 2559 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI158:
	@ sp needed
	pop	{r4, pc}
.L376:
	.align	2
.L375:
	.word	p_bmg160
.LFE52:
	.size	bmg160_get_offset_unfilt, .-bmg160_get_offset_unfilt
	.section	.text.bmg160_set_offset_unfilt,"ax",%progbits
	.align	1
	.global	bmg160_set_offset_unfilt
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_offset_unfilt, %function
bmg160_set_offset_unfilt:
.LFB53:
	.loc 1 2588 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI159:
	sub	sp, sp, #16
.LCFI160:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 2590 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2591 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2593 15
	ldr	r3, .L386
	ldr	r3, [r3]
	.loc 1 2593 5
	cmp	r3, #0
	bne	.L378
	.loc 1 2594 10
	mvn	r3, #126
	b	.L384
.L378:
	.loc 1 2596 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L380
	cmp	r3, #2
	beq	.L381
	b	.L385
.L380:
	.loc 1 2599 21
	ldr	r3, .L386
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2599 40
	ldr	r3, .L386
	ldr	r3, [r3]
	.loc 1 2599 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL89:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2603 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #32
	sxtb	r2, r3
	.loc 1 2603 57
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #5
	.loc 1 2603 63
	sxtb	r3, r3
	and	r3, r3, #32
	sxtb	r3, r3
	.loc 1 2603 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2603 14
	strb	r3, [sp, #14]
	.loc 1 2606 22
	ldr	r3, .L386
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2606 42
	ldr	r3, .L386
	ldr	r3, [r3]
	.loc 1 2606 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL90:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2606 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2610 4
	b	.L383
.L381:
	.loc 1 2612 21
	ldr	r3, .L386
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2612 40
	ldr	r3, .L386
	ldr	r3, [r3]
	.loc 1 2612 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL91:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2616 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 2616 57
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 2616 36
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2616 14
	strb	r3, [sp, #14]
	.loc 1 2619 22
	ldr	r3, .L386
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2619 42
	ldr	r3, .L386
	ldr	r3, [r3]
	.loc 1 2619 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL92:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2619 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2623 4
	b	.L383
.L385:
	.loc 1 2625 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2626 4
	nop
.L383:
	.loc 1 2629 9
	ldrsb	r3, [sp, #15]
.L384:
	.loc 1 2630 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI161:
	@ sp needed
	pop	{r4, pc}
.L387:
	.align	2
.L386:
	.word	p_bmg160
.LFE53:
	.size	bmg160_set_offset_unfilt, .-bmg160_set_offset_unfilt
	.section	.text.bmg160_get_unfilt_data,"ax",%progbits
	.align	1
	.global	bmg160_get_unfilt_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_unfilt_data, %function
bmg160_get_unfilt_data:
.LFB54:
	.loc 1 2658 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI162:
	sub	sp, sp, #16
.LCFI163:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 2660 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2661 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2663 15
	ldr	r3, .L397
	ldr	r3, [r3]
	.loc 1 2663 5
	cmp	r3, #0
	bne	.L389
	.loc 1 2664 10
	mvn	r3, #126
	b	.L395
.L389:
	.loc 1 2666 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L391
	cmp	r3, #3
	beq	.L392
	b	.L396
.L391:
	.loc 1 2669 21
	ldr	r3, .L397
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2669 40
	ldr	r3, .L397
	ldr	r3, [r3]
	.loc 1 2669 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL93:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2673 46
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2673 22
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2675 4
	b	.L394
.L392:
	.loc 1 2677 21
	ldr	r3, .L397
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2677 40
	ldr	r3, .L397
	ldr	r3, [r3]
	.loc 1 2677 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL94:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2681 46
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 2681 22
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 2683 4
	b	.L394
.L396:
	.loc 1 2685 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2686 4
	nop
.L394:
	.loc 1 2689 9
	ldrsb	r3, [sp, #15]
.L395:
	.loc 1 2690 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI164:
	@ sp needed
	pop	{r4, pc}
.L398:
	.align	2
.L397:
	.word	p_bmg160
.LFE54:
	.size	bmg160_get_unfilt_data, .-bmg160_get_unfilt_data
	.section	.text.bmg160_set_unfilt_data,"ax",%progbits
	.align	1
	.global	bmg160_set_unfilt_data
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_unfilt_data, %function
bmg160_set_unfilt_data:
.LFB55:
	.loc 1 2718 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI165:
	sub	sp, sp, #16
.LCFI166:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 2720 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2721 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2723 15
	ldr	r3, .L408
	ldr	r3, [r3]
	.loc 1 2723 5
	cmp	r3, #0
	bne	.L400
	.loc 1 2724 10
	mvn	r3, #126
	b	.L406
.L400:
	.loc 1 2726 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L402
	cmp	r3, #3
	beq	.L403
	b	.L407
.L402:
	.loc 1 2729 21
	ldr	r3, .L408
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2729 40
	ldr	r3, .L408
	ldr	r3, [r3]
	.loc 1 2729 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL95:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2733 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #8
	sxtb	r2, r3
	.loc 1 2733 55
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 2733 61
	sxtb	r3, r3
	and	r3, r3, #8
	sxtb	r3, r3
	.loc 1 2733 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2733 14
	strb	r3, [sp, #14]
	.loc 1 2736 22
	ldr	r3, .L408
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2736 42
	ldr	r3, .L408
	ldr	r3, [r3]
	.loc 1 2736 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL96:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2736 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2740 4
	b	.L405
.L403:
	.loc 1 2742 21
	ldr	r3, .L408
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2742 40
	ldr	r3, .L408
	ldr	r3, [r3]
	.loc 1 2742 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL97:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2746 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 2746 55
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 2746 61
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 2746 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2746 14
	strb	r3, [sp, #14]
	.loc 1 2749 22
	ldr	r3, .L408
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2749 42
	ldr	r3, .L408
	ldr	r3, [r3]
	.loc 1 2749 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #26
	blx	r4
.LVL98:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2749 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2753 4
	b	.L405
.L407:
	.loc 1 2755 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 2756 4
	nop
.L405:
	.loc 1 2759 9
	ldrsb	r3, [sp, #15]
.L406:
	.loc 1 2760 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI167:
	@ sp needed
	pop	{r4, pc}
.L409:
	.align	2
.L408:
	.word	p_bmg160
.LFE55:
	.size	bmg160_set_unfilt_data, .-bmg160_set_unfilt_data
	.section	.text.bmg160_get_any_motion_thres,"ax",%progbits
	.align	1
	.global	bmg160_get_any_motion_thres
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_any_motion_thres, %function
bmg160_get_any_motion_thres:
.LFB56:
	.loc 1 2780 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI168:
	sub	sp, sp, #16
.LCFI169:
	str	r0, [sp, #4]
	.loc 1 2782 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2783 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2785 15
	ldr	r3, .L414
	ldr	r3, [r3]
	.loc 1 2785 5
	cmp	r3, #0
	bne	.L411
	.loc 1 2786 10
	mvn	r3, #126
	b	.L413
.L411:
	.loc 1 2789 20
	ldr	r3, .L414
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2789 39
	ldr	r3, .L414
	ldr	r3, [r3]
	.loc 1 2789 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL99:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2792 50
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	.loc 1 2792 26
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 2795 9
	ldrsb	r3, [sp, #15]
.L413:
	.loc 1 2796 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI170:
	@ sp needed
	pop	{r4, pc}
.L415:
	.align	2
.L414:
	.word	p_bmg160
.LFE56:
	.size	bmg160_get_any_motion_thres, .-bmg160_get_any_motion_thres
	.section	.text.bmg160_set_any_motion_thres,"ax",%progbits
	.align	1
	.global	bmg160_set_any_motion_thres
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_any_motion_thres, %function
bmg160_set_any_motion_thres:
.LFB57:
	.loc 1 2816 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI171:
	sub	sp, sp, #16
.LCFI172:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 2818 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2819 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2821 15
	ldr	r3, .L420
	ldr	r3, [r3]
	.loc 1 2821 5
	cmp	r3, #0
	bne	.L417
	.loc 1 2822 10
	mvn	r3, #126
	b	.L419
.L417:
	.loc 1 2825 20
	ldr	r3, .L420
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2825 39
	ldr	r3, .L420
	ldr	r3, [r3]
	.loc 1 2825 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL100:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2828 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #127
	sxtb	r2, r3
	.loc 1 2828 65
	ldrsb	r3, [sp, #7]
	and	r3, r3, #127
	sxtb	r3, r3
	.loc 1 2828 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2828 13
	strb	r3, [sp, #14]
	.loc 1 2830 21
	ldr	r3, .L420
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2830 41
	ldr	r3, .L420
	ldr	r3, [r3]
	.loc 1 2830 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #27
	blx	r4
.LVL101:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2830 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2834 9
	ldrsb	r3, [sp, #15]
.L419:
	.loc 1 2835 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI173:
	@ sp needed
	pop	{r4, pc}
.L421:
	.align	2
.L420:
	.word	p_bmg160
.LFE57:
	.size	bmg160_set_any_motion_thres, .-bmg160_set_any_motion_thres
	.section	.text.bmg160_get_awake_durn,"ax",%progbits
	.align	1
	.global	bmg160_get_awake_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_awake_durn, %function
bmg160_get_awake_durn:
.LFB58:
	.loc 1 2857 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI174:
	sub	sp, sp, #16
.LCFI175:
	str	r0, [sp, #4]
	.loc 1 2859 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2860 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2862 15
	ldr	r3, .L426
	ldr	r3, [r3]
	.loc 1 2862 5
	cmp	r3, #0
	bne	.L423
	.loc 1 2863 10
	mvn	r3, #126
	b	.L425
.L423:
	.loc 1 2866 20
	ldr	r3, .L426
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2866 39
	ldr	r3, .L426
	ldr	r3, [r3]
	.loc 1 2866 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL102:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2869 44
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #6
	uxtb	r2, r3
	.loc 1 2869 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 2872 9
	ldrsb	r3, [sp, #15]
.L425:
	.loc 1 2873 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI176:
	@ sp needed
	pop	{r4, pc}
.L427:
	.align	2
.L426:
	.word	p_bmg160
.LFE58:
	.size	bmg160_get_awake_durn, .-bmg160_get_awake_durn
	.section	.text.bmg160_set_awake_durn,"ax",%progbits
	.align	1
	.global	bmg160_set_awake_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_awake_durn, %function
bmg160_set_awake_durn:
.LFB59:
	.loc 1 2895 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI177:
	sub	sp, sp, #16
.LCFI178:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 2897 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2898 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2900 15
	ldr	r3, .L432
	ldr	r3, [r3]
	.loc 1 2900 5
	cmp	r3, #0
	bne	.L429
	.loc 1 2901 10
	mvn	r3, #126
	b	.L431
.L429:
	.loc 1 2904 20
	ldr	r3, .L432
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2904 39
	ldr	r3, .L432
	ldr	r3, [r3]
	.loc 1 2904 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL103:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2907 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #63
	sxtb	r2, r3
	.loc 1 2907 53
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 2907 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2907 13
	strb	r3, [sp, #14]
	.loc 1 2909 21
	ldr	r3, .L432
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2909 41
	ldr	r3, .L432
	ldr	r3, [r3]
	.loc 1 2909 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL104:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2909 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2913 9
	ldrsb	r3, [sp, #15]
.L431:
	.loc 1 2914 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI179:
	@ sp needed
	pop	{r4, pc}
.L433:
	.align	2
.L432:
	.word	p_bmg160
.LFE59:
	.size	bmg160_set_awake_durn, .-bmg160_set_awake_durn
	.section	.text.bmg160_get_any_motion_durn_sample,"ax",%progbits
	.align	1
	.global	bmg160_get_any_motion_durn_sample
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_any_motion_durn_sample, %function
bmg160_get_any_motion_durn_sample:
.LFB60:
	.loc 1 2937 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI180:
	sub	sp, sp, #16
.LCFI181:
	str	r0, [sp, #4]
	.loc 1 2939 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2940 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2942 15
	ldr	r3, .L438
	ldr	r3, [r3]
	.loc 1 2942 5
	cmp	r3, #0
	bne	.L435
	.loc 1 2943 10
	mvn	r3, #126
	b	.L437
.L435:
	.loc 1 2946 20
	ldr	r3, .L438
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2946 39
	ldr	r3, .L438
	ldr	r3, [r3]
	.loc 1 2946 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL105:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2949 45
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 2949 21
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 2952 9
	ldrsb	r3, [sp, #15]
.L437:
	.loc 1 2953 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI182:
	@ sp needed
	pop	{r4, pc}
.L439:
	.align	2
.L438:
	.word	p_bmg160
.LFE60:
	.size	bmg160_get_any_motion_durn_sample, .-bmg160_get_any_motion_durn_sample
	.section	.text.bmg160_set_any_motion_durn_sample,"ax",%progbits
	.align	1
	.global	bmg160_set_any_motion_durn_sample
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_any_motion_durn_sample, %function
bmg160_set_any_motion_durn_sample:
.LFB61:
	.loc 1 2976 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI183:
	sub	sp, sp, #16
.LCFI184:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 2978 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 2979 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 2981 15
	ldr	r3, .L444
	ldr	r3, [r3]
	.loc 1 2981 5
	cmp	r3, #0
	bne	.L441
	.loc 1 2982 10
	mvn	r3, #126
	b	.L443
.L441:
	.loc 1 2985 20
	ldr	r3, .L444
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 2985 39
	ldr	r3, .L444
	ldr	r3, [r3]
	.loc 1 2985 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL106:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2988 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #48
	sxtb	r2, r3
	.loc 1 2988 54
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 2988 60
	sxtb	r3, r3
	and	r3, r3, #48
	sxtb	r3, r3
	.loc 1 2988 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 2988 13
	strb	r3, [sp, #14]
	.loc 1 2991 21
	ldr	r3, .L444
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 2991 41
	ldr	r3, .L444
	ldr	r3, [r3]
	.loc 1 2991 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL107:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 2991 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 2996 9
	ldrsb	r3, [sp, #15]
.L443:
	.loc 1 2997 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI185:
	@ sp needed
	pop	{r4, pc}
.L445:
	.align	2
.L444:
	.word	p_bmg160
.LFE61:
	.size	bmg160_set_any_motion_durn_sample, .-bmg160_set_any_motion_durn_sample
	.section	.text.bmg160_get_any_motion_enable_axis,"ax",%progbits
	.align	1
	.global	bmg160_get_any_motion_enable_axis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_any_motion_enable_axis, %function
bmg160_get_any_motion_enable_axis:
.LFB62:
	.loc 1 3026 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI186:
	sub	sp, sp, #16
.LCFI187:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 3028 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3029 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3031 15
	ldr	r3, .L455
	ldr	r3, [r3]
	.loc 1 3031 5
	cmp	r3, #0
	bne	.L447
	.loc 1 3032 10
	mvn	r3, #126
	b	.L454
.L447:
	.loc 1 3034 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L449
	cmp	r3, #2
	bgt	.L450
	cmp	r3, #0
	beq	.L451
	cmp	r3, #1
	beq	.L452
	b	.L450
.L451:
	.loc 1 3037 21
	ldr	r3, .L455
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3037 40
	ldr	r3, .L455
	ldr	r3, [r3]
	.loc 1 3037 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL108:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3041 51
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3041 26
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3043 4
	b	.L453
.L452:
	.loc 1 3045 21
	ldr	r3, .L455
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3045 40
	ldr	r3, .L455
	ldr	r3, [r3]
	.loc 1 3045 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL109:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3049 51
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3049 26
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3051 4
	b	.L453
.L449:
	.loc 1 3053 21
	ldr	r3, .L455
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3053 40
	ldr	r3, .L455
	ldr	r3, [r3]
	.loc 1 3053 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL110:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3057 51
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3057 26
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3059 4
	b	.L453
.L450:
	.loc 1 3061 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3062 4
	nop
.L453:
	.loc 1 3065 9
	ldrsb	r3, [sp, #15]
.L454:
	.loc 1 3066 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI188:
	@ sp needed
	pop	{r4, pc}
.L456:
	.align	2
.L455:
	.word	p_bmg160
.LFE62:
	.size	bmg160_get_any_motion_enable_axis, .-bmg160_get_any_motion_enable_axis
	.section	.text.bmg160_set_any_motion_enable_axis,"ax",%progbits
	.align	1
	.global	bmg160_set_any_motion_enable_axis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_any_motion_enable_axis, %function
bmg160_set_any_motion_enable_axis:
.LFB63:
	.loc 1 3095 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI189:
	sub	sp, sp, #16
.LCFI190:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 3097 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3098 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3100 15
	ldr	r3, .L466
	ldr	r3, [r3]
	.loc 1 3100 5
	cmp	r3, #0
	bne	.L458
	.loc 1 3101 10
	mvn	r3, #126
	b	.L465
.L458:
	.loc 1 3103 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L460
	cmp	r3, #2
	bgt	.L461
	cmp	r3, #0
	beq	.L462
	cmp	r3, #1
	beq	.L463
	b	.L461
.L462:
	.loc 1 3106 21
	ldr	r3, .L466
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3106 40
	ldr	r3, .L466
	ldr	r3, [r3]
	.loc 1 3106 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL111:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3110 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 3110 65
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 3110 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3110 14
	strb	r3, [sp, #14]
	.loc 1 3113 22
	ldr	r3, .L466
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3113 42
	ldr	r3, .L466
	ldr	r3, [r3]
	.loc 1 3113 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL112:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3113 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3117 4
	b	.L464
.L463:
	.loc 1 3119 21
	ldr	r3, .L466
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3119 40
	ldr	r3, .L466
	ldr	r3, [r3]
	.loc 1 3119 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL113:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3123 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 3123 59
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 3123 65
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 3123 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3123 14
	strb	r3, [sp, #14]
	.loc 1 3126 22
	ldr	r3, .L466
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3126 42
	ldr	r3, .L466
	ldr	r3, [r3]
	.loc 1 3126 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL114:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3126 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3130 4
	b	.L464
.L460:
	.loc 1 3132 21
	ldr	r3, .L466
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3132 40
	ldr	r3, .L466
	ldr	r3, [r3]
	.loc 1 3132 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL115:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3136 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 3136 59
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 3136 65
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 3136 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3136 14
	strb	r3, [sp, #14]
	.loc 1 3139 22
	ldr	r3, .L466
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3139 42
	ldr	r3, .L466
	ldr	r3, [r3]
	.loc 1 3139 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #28
	blx	r4
.LVL116:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3139 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3143 4
	b	.L464
.L461:
	.loc 1 3145 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3146 4
	nop
.L464:
	.loc 1 3149 9
	ldrsb	r3, [sp, #15]
.L465:
	.loc 1 3150 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI191:
	@ sp needed
	pop	{r4, pc}
.L467:
	.align	2
.L466:
	.word	p_bmg160
.LFE63:
	.size	bmg160_set_any_motion_enable_axis, .-bmg160_set_any_motion_enable_axis
	.section	.text.bmg160_get_fifo_wm_enable,"ax",%progbits
	.align	1
	.global	bmg160_get_fifo_wm_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_fifo_wm_enable, %function
bmg160_get_fifo_wm_enable:
.LFB64:
	.loc 1 3171 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI192:
	sub	sp, sp, #16
.LCFI193:
	str	r0, [sp, #4]
	.loc 1 3173 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3174 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3176 15
	ldr	r3, .L472
	ldr	r3, [r3]
	.loc 1 3176 5
	cmp	r3, #0
	bne	.L469
	.loc 1 3177 10
	mvn	r3, #126
	b	.L471
.L469:
	.loc 1 3180 20
	ldr	r3, .L472
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3180 39
	ldr	r3, .L472
	ldr	r3, [r3]
	.loc 1 3180 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL117:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3183 48
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 3183 24
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 3186 9
	ldrsb	r3, [sp, #15]
.L471:
	.loc 1 3187 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI194:
	@ sp needed
	pop	{r4, pc}
.L473:
	.align	2
.L472:
	.word	p_bmg160
.LFE64:
	.size	bmg160_get_fifo_wm_enable, .-bmg160_get_fifo_wm_enable
	.section	.text.bmg160_set_fifo_wm_enable,"ax",%progbits
	.align	1
	.global	bmg160_set_fifo_wm_enable
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_fifo_wm_enable, %function
bmg160_set_fifo_wm_enable:
.LFB65:
	.loc 1 3208 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI195:
	sub	sp, sp, #16
.LCFI196:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 3210 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3211 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3213 15
	ldr	r3, .L480
	ldr	r3, [r3]
	.loc 1 3213 5
	cmp	r3, #0
	bne	.L475
	.loc 1 3214 10
	mvn	r3, #126
	b	.L479
.L475:
	.loc 1 3217 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L477
	.loc 1 3218 21
	ldr	r3, .L480
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3218 40
	ldr	r3, .L480
	ldr	r3, [r3]
	.loc 1 3218 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL118:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3222 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 3222 58
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 3222 36
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3222 14
	strb	r3, [sp, #14]
	.loc 1 3224 22
	ldr	r3, .L480
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3224 42
	ldr	r3, .L480
	ldr	r3, [r3]
	.loc 1 3224 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #30
	blx	r4
.LVL119:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3224 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L478
.L477:
	.loc 1 3229 11
	movs	r3, #254
	strb	r3, [sp, #15]
.L478:
	.loc 1 3232 9
	ldrsb	r3, [sp, #15]
.L479:
	.loc 1 3233 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI197:
	@ sp needed
	pop	{r4, pc}
.L481:
	.align	2
.L480:
	.word	p_bmg160
.LFE65:
	.size	bmg160_set_fifo_wm_enable, .-bmg160_set_fifo_wm_enable
	.section	.text.bmg160_set_rst_intr,"ax",%progbits
	.align	1
	.global	bmg160_set_rst_intr
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_rst_intr, %function
bmg160_set_rst_intr:
.LFB66:
	.loc 1 3252 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI198:
	sub	sp, sp, #16
.LCFI199:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 3254 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3255 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3257 15
	ldr	r3, .L486
	ldr	r3, [r3]
	.loc 1 3257 5
	cmp	r3, #0
	bne	.L483
	.loc 1 3258 10
	mvn	r3, #126
	b	.L485
.L483:
	.loc 1 3261 20
	ldr	r3, .L486
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3261 39
	ldr	r3, .L486
	ldr	r3, [r3]
	.loc 1 3261 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #33
	blx	r4
.LVL120:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3264 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 3264 50
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 3264 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3264 13
	strb	r3, [sp, #14]
	.loc 1 3266 21
	ldr	r3, .L486
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3266 41
	ldr	r3, .L486
	ldr	r3, [r3]
	.loc 1 3266 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #33
	blx	r4
.LVL121:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3266 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3270 9
	ldrsb	r3, [sp, #15]
.L485:
	.loc 1 3271 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI200:
	@ sp needed
	pop	{r4, pc}
.L487:
	.align	2
.L486:
	.word	p_bmg160
.LFE66:
	.size	bmg160_set_rst_intr, .-bmg160_set_rst_intr
	.section	.text.bmg160_set_offset_rst,"ax",%progbits
	.align	1
	.global	bmg160_set_offset_rst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_offset_rst, %function
bmg160_set_offset_rst:
.LFB67:
	.loc 1 3291 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI201:
	sub	sp, sp, #16
.LCFI202:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 3293 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3294 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3296 15
	ldr	r3, .L492
	ldr	r3, [r3]
	.loc 1 3296 5
	cmp	r3, #0
	bne	.L489
	.loc 1 3297 10
	mvn	r3, #126
	b	.L491
.L489:
	.loc 1 3300 20
	ldr	r3, .L492
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3300 39
	ldr	r3, .L492
	ldr	r3, [r3]
	.loc 1 3300 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #33
	blx	r4
.LVL122:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3303 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #64
	sxtb	r2, r3
	.loc 1 3303 53
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 3303 59
	sxtb	r3, r3
	and	r3, r3, #64
	sxtb	r3, r3
	.loc 1 3303 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3303 13
	strb	r3, [sp, #14]
	.loc 1 3305 21
	ldr	r3, .L492
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3305 41
	ldr	r3, .L492
	ldr	r3, [r3]
	.loc 1 3305 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #33
	blx	r4
.LVL123:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3305 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3309 9
	ldrsb	r3, [sp, #15]
.L491:
	.loc 1 3310 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI203:
	@ sp needed
	pop	{r4, pc}
.L493:
	.align	2
.L492:
	.word	p_bmg160
.LFE67:
	.size	bmg160_set_offset_rst, .-bmg160_set_offset_rst
	.section	.text.bmg160_get_latch_stat,"ax",%progbits
	.align	1
	.global	bmg160_get_latch_stat
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_latch_stat, %function
bmg160_get_latch_stat:
.LFB68:
	.loc 1 3333 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI204:
	sub	sp, sp, #16
.LCFI205:
	str	r0, [sp, #4]
	.loc 1 3335 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3336 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3338 15
	ldr	r3, .L498
	ldr	r3, [r3]
	.loc 1 3338 5
	cmp	r3, #0
	bne	.L495
	.loc 1 3339 10
	mvn	r3, #126
	b	.L497
.L495:
	.loc 1 3342 20
	ldr	r3, .L498
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3342 39
	ldr	r3, .L498
	ldr	r3, [r3]
	.loc 1 3342 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #33
	blx	r4
.LVL124:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3345 44
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3345 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 3348 9
	ldrsb	r3, [sp, #15]
.L497:
	.loc 1 3349 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI206:
	@ sp needed
	pop	{r4, pc}
.L499:
	.align	2
.L498:
	.word	p_bmg160
.LFE68:
	.size	bmg160_get_latch_stat, .-bmg160_get_latch_stat
	.section	.text.bmg160_set_latch_stat,"ax",%progbits
	.align	1
	.global	bmg160_set_latch_stat
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_latch_stat, %function
bmg160_set_latch_stat:
.LFB69:
	.loc 1 3372 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI207:
	sub	sp, sp, #16
.LCFI208:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 3374 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3375 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3377 15
	ldr	r3, .L504
	ldr	r3, [r3]
	.loc 1 3377 5
	cmp	r3, #0
	bne	.L501
	.loc 1 3378 10
	mvn	r3, #126
	b	.L503
.L501:
	.loc 1 3381 20
	ldr	r3, .L504
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3381 39
	ldr	r3, .L504
	ldr	r3, [r3]
	.loc 1 3381 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #33
	blx	r4
.LVL125:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3384 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #16
	sxtb	r2, r3
	.loc 1 3384 53
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 3384 59
	sxtb	r3, r3
	and	r3, r3, #16
	sxtb	r3, r3
	.loc 1 3384 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3384 13
	strb	r3, [sp, #14]
	.loc 1 3386 21
	ldr	r3, .L504
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3386 41
	ldr	r3, .L504
	ldr	r3, [r3]
	.loc 1 3386 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #33
	blx	r4
.LVL126:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3386 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3390 9
	ldrsb	r3, [sp, #15]
.L503:
	.loc 1 3391 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI209:
	@ sp needed
	pop	{r4, pc}
.L505:
	.align	2
.L504:
	.word	p_bmg160
.LFE69:
	.size	bmg160_set_latch_stat, .-bmg160_set_latch_stat
	.section	.text.bmg160_get_latch_intr,"ax",%progbits
	.align	1
	.global	bmg160_get_latch_intr
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_latch_intr, %function
bmg160_get_latch_intr:
.LFB70:
	.loc 1 3426 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI210:
	sub	sp, sp, #16
.LCFI211:
	str	r0, [sp, #4]
	.loc 1 3428 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3429 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3431 15
	ldr	r3, .L510
	ldr	r3, [r3]
	.loc 1 3431 5
	cmp	r3, #0
	bne	.L507
	.loc 1 3432 10
	mvn	r3, #126
	b	.L509
.L507:
	.loc 1 3435 20
	ldr	r3, .L510
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3435 39
	ldr	r3, .L510
	ldr	r3, [r3]
	.loc 1 3435 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #33
	blx	r4
.LVL127:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3438 44
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #15
	uxtb	r2, r3
	.loc 1 3438 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 3441 9
	ldrsb	r3, [sp, #15]
.L509:
	.loc 1 3442 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI212:
	@ sp needed
	pop	{r4, pc}
.L511:
	.align	2
.L510:
	.word	p_bmg160
.LFE70:
	.size	bmg160_get_latch_intr, .-bmg160_get_latch_intr
	.section	.text.bmg160_set_latch_intr,"ax",%progbits
	.align	1
	.global	bmg160_set_latch_intr
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_latch_intr, %function
bmg160_set_latch_intr:
.LFB71:
	.loc 1 3477 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI213:
	sub	sp, sp, #16
.LCFI214:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 3479 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3480 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3482 15
	ldr	r3, .L516
	ldr	r3, [r3]
	.loc 1 3482 5
	cmp	r3, #0
	bne	.L513
	.loc 1 3483 10
	mvn	r3, #126
	b	.L515
.L513:
	.loc 1 3486 20
	ldr	r3, .L516
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3486 39
	ldr	r3, .L516
	ldr	r3, [r3]
	.loc 1 3486 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #33
	blx	r4
.LVL128:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3489 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #15
	sxtb	r2, r3
	.loc 1 3489 59
	ldrsb	r3, [sp, #7]
	and	r3, r3, #15
	sxtb	r3, r3
	.loc 1 3489 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3489 13
	strb	r3, [sp, #14]
	.loc 1 3491 21
	ldr	r3, .L516
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3491 41
	ldr	r3, .L516
	ldr	r3, [r3]
	.loc 1 3491 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #33
	blx	r4
.LVL129:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3491 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3495 9
	ldrsb	r3, [sp, #15]
.L515:
	.loc 1 3496 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI215:
	@ sp needed
	pop	{r4, pc}
.L517:
	.align	2
.L516:
	.word	p_bmg160
.LFE71:
	.size	bmg160_set_latch_intr, .-bmg160_set_latch_intr
	.section	.text.bmg160_get_highrate_hyst,"ax",%progbits
	.align	1
	.global	bmg160_get_highrate_hyst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_highrate_hyst, %function
bmg160_get_highrate_hyst:
.LFB72:
	.loc 1 3524 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI216:
	sub	sp, sp, #16
.LCFI217:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 3526 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3527 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3529 15
	ldr	r3, .L527
	ldr	r3, [r3]
	.loc 1 3529 5
	cmp	r3, #0
	bne	.L519
	.loc 1 3530 10
	mvn	r3, #126
	b	.L526
.L519:
	.loc 1 3532 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L521
	cmp	r3, #2
	bgt	.L522
	cmp	r3, #0
	beq	.L523
	cmp	r3, #1
	beq	.L524
	b	.L522
.L523:
	.loc 1 3535 21
	ldr	r3, .L527
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3535 40
	ldr	r3, .L527
	ldr	r3, [r3]
	.loc 1 3535 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #34
	blx	r4
.LVL130:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3539 48
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #6
	uxtb	r2, r3
	.loc 1 3539 24
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3541 4
	b	.L525
.L524:
	.loc 1 3543 21
	ldr	r3, .L527
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3543 40
	ldr	r3, .L527
	ldr	r3, [r3]
	.loc 1 3543 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL131:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3547 48
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #6
	uxtb	r2, r3
	.loc 1 3547 24
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3549 4
	b	.L525
.L521:
	.loc 1 3551 21
	ldr	r3, .L527
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3551 40
	ldr	r3, .L527
	ldr	r3, [r3]
	.loc 1 3551 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #38
	blx	r4
.LVL132:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3555 48
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #6
	uxtb	r2, r3
	.loc 1 3555 24
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3557 4
	b	.L525
.L522:
	.loc 1 3559 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3560 4
	nop
.L525:
	.loc 1 3563 9
	ldrsb	r3, [sp, #15]
.L526:
	.loc 1 3564 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI218:
	@ sp needed
	pop	{r4, pc}
.L528:
	.align	2
.L527:
	.word	p_bmg160
.LFE72:
	.size	bmg160_get_highrate_hyst, .-bmg160_get_highrate_hyst
	.section	.text.bmg160_set_highrate_hyst,"ax",%progbits
	.align	1
	.global	bmg160_set_highrate_hyst
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_highrate_hyst, %function
bmg160_set_highrate_hyst:
.LFB73:
	.loc 1 3592 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI219:
	sub	sp, sp, #16
.LCFI220:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 3594 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3595 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3597 15
	ldr	r3, .L538
	ldr	r3, [r3]
	.loc 1 3597 5
	cmp	r3, #0
	bne	.L530
	.loc 1 3598 10
	mvn	r3, #126
	b	.L537
.L530:
	.loc 1 3600 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L532
	cmp	r3, #2
	bgt	.L533
	cmp	r3, #0
	beq	.L534
	cmp	r3, #1
	beq	.L535
	b	.L533
.L534:
	.loc 1 3603 21
	ldr	r3, .L538
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3603 40
	ldr	r3, .L538
	ldr	r3, [r3]
	.loc 1 3603 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #34
	blx	r4
.LVL133:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3607 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #63
	sxtb	r2, r3
	.loc 1 3607 57
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 3607 36
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3607 14
	strb	r3, [sp, #14]
	.loc 1 3609 22
	ldr	r3, .L538
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3609 42
	ldr	r3, .L538
	ldr	r3, [r3]
	.loc 1 3609 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #34
	blx	r4
.LVL134:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3609 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3613 4
	b	.L536
.L535:
	.loc 1 3615 21
	ldr	r3, .L538
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3615 40
	ldr	r3, .L538
	ldr	r3, [r3]
	.loc 1 3615 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL135:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3619 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #63
	sxtb	r2, r3
	.loc 1 3619 57
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 3619 36
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3619 14
	strb	r3, [sp, #14]
	.loc 1 3621 22
	ldr	r3, .L538
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3621 42
	ldr	r3, .L538
	ldr	r3, [r3]
	.loc 1 3621 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL136:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3621 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3625 4
	b	.L536
.L532:
	.loc 1 3627 21
	ldr	r3, .L538
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3627 40
	ldr	r3, .L538
	ldr	r3, [r3]
	.loc 1 3627 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #38
	blx	r4
.LVL137:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3631 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #63
	sxtb	r2, r3
	.loc 1 3631 57
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 3631 36
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3631 14
	strb	r3, [sp, #14]
	.loc 1 3633 22
	ldr	r3, .L538
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3633 42
	ldr	r3, .L538
	ldr	r3, [r3]
	.loc 1 3633 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #38
	blx	r4
.LVL138:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3633 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3637 4
	b	.L536
.L533:
	.loc 1 3639 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3640 4
	nop
.L536:
	.loc 1 3643 9
	ldrsb	r3, [sp, #15]
.L537:
	.loc 1 3644 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI221:
	@ sp needed
	pop	{r4, pc}
.L539:
	.align	2
.L538:
	.word	p_bmg160
.LFE73:
	.size	bmg160_set_highrate_hyst, .-bmg160_set_highrate_hyst
	.section	.text.bmg160_get_highrate_thres,"ax",%progbits
	.align	1
	.global	bmg160_get_highrate_thres
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_highrate_thres, %function
bmg160_get_highrate_thres:
.LFB74:
	.loc 1 3672 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI222:
	sub	sp, sp, #16
.LCFI223:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 3674 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3675 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3677 15
	ldr	r3, .L549
	ldr	r3, [r3]
	.loc 1 3677 5
	cmp	r3, #0
	bne	.L541
	.loc 1 3678 10
	mvn	r3, #126
	b	.L548
.L541:
	.loc 1 3680 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L543
	cmp	r3, #2
	bgt	.L544
	cmp	r3, #0
	beq	.L545
	cmp	r3, #1
	beq	.L546
	b	.L544
.L545:
	.loc 1 3683 21
	ldr	r3, .L549
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3683 40
	ldr	r3, .L549
	ldr	r3, [r3]
	.loc 1 3683 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #34
	blx	r4
.LVL139:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3687 49
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #31
	uxtb	r2, r3
	.loc 1 3687 25
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3689 4
	b	.L547
.L546:
	.loc 1 3691 21
	ldr	r3, .L549
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3691 40
	ldr	r3, .L549
	ldr	r3, [r3]
	.loc 1 3691 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL140:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3695 49
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #31
	uxtb	r2, r3
	.loc 1 3695 25
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3697 4
	b	.L547
.L543:
	.loc 1 3699 21
	ldr	r3, .L549
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3699 40
	ldr	r3, .L549
	ldr	r3, [r3]
	.loc 1 3699 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #38
	blx	r4
.LVL141:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3703 49
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #31
	uxtb	r2, r3
	.loc 1 3703 25
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3705 4
	b	.L547
.L544:
	.loc 1 3707 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3708 4
	nop
.L547:
	.loc 1 3711 9
	ldrsb	r3, [sp, #15]
.L548:
	.loc 1 3712 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI224:
	@ sp needed
	pop	{r4, pc}
.L550:
	.align	2
.L549:
	.word	p_bmg160
.LFE74:
	.size	bmg160_get_highrate_thres, .-bmg160_get_highrate_thres
	.section	.text.bmg160_set_highrate_thres,"ax",%progbits
	.align	1
	.global	bmg160_set_highrate_thres
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_highrate_thres, %function
bmg160_set_highrate_thres:
.LFB75:
	.loc 1 3740 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI225:
	sub	sp, sp, #16
.LCFI226:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 3742 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3743 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3745 15
	ldr	r3, .L560
	ldr	r3, [r3]
	.loc 1 3745 5
	cmp	r3, #0
	bne	.L552
	.loc 1 3746 10
	mvn	r3, #126
	b	.L559
.L552:
	.loc 1 3748 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L554
	cmp	r3, #2
	bgt	.L555
	cmp	r3, #0
	beq	.L556
	cmp	r3, #1
	beq	.L557
	b	.L555
.L556:
	.loc 1 3751 21
	ldr	r3, .L560
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3751 40
	ldr	r3, .L560
	ldr	r3, [r3]
	.loc 1 3751 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #34
	blx	r4
.LVL142:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3755 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #62
	sxtb	r2, r3
	.loc 1 3755 58
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 3755 64
	sxtb	r3, r3
	and	r3, r3, #62
	sxtb	r3, r3
	.loc 1 3755 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3755 14
	strb	r3, [sp, #14]
	.loc 1 3757 22
	ldr	r3, .L560
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3757 42
	ldr	r3, .L560
	ldr	r3, [r3]
	.loc 1 3757 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #34
	blx	r4
.LVL143:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3757 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3761 4
	b	.L558
.L557:
	.loc 1 3763 21
	ldr	r3, .L560
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3763 40
	ldr	r3, .L560
	ldr	r3, [r3]
	.loc 1 3763 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL144:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3767 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #62
	sxtb	r2, r3
	.loc 1 3767 58
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 3767 64
	sxtb	r3, r3
	and	r3, r3, #62
	sxtb	r3, r3
	.loc 1 3767 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3767 14
	strb	r3, [sp, #14]
	.loc 1 3769 22
	ldr	r3, .L560
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3769 42
	ldr	r3, .L560
	ldr	r3, [r3]
	.loc 1 3769 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL145:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3769 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3773 4
	b	.L558
.L554:
	.loc 1 3775 21
	ldr	r3, .L560
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3775 40
	ldr	r3, .L560
	ldr	r3, [r3]
	.loc 1 3775 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #38
	blx	r4
.LVL146:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3779 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #62
	sxtb	r2, r3
	.loc 1 3779 58
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 3779 64
	sxtb	r3, r3
	and	r3, r3, #62
	sxtb	r3, r3
	.loc 1 3779 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3779 14
	strb	r3, [sp, #14]
	.loc 1 3781 22
	ldr	r3, .L560
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3781 42
	ldr	r3, .L560
	ldr	r3, [r3]
	.loc 1 3781 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #38
	blx	r4
.LVL147:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3781 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3785 4
	b	.L558
.L555:
	.loc 1 3787 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3788 4
	nop
.L558:
	.loc 1 3791 9
	ldrsb	r3, [sp, #15]
.L559:
	.loc 1 3792 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI227:
	@ sp needed
	pop	{r4, pc}
.L561:
	.align	2
.L560:
	.word	p_bmg160
.LFE75:
	.size	bmg160_set_highrate_thres, .-bmg160_set_highrate_thres
	.section	.text.bmg160_get_highrate_enable_axis,"ax",%progbits
	.align	1
	.global	bmg160_get_highrate_enable_axis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_highrate_enable_axis, %function
bmg160_get_highrate_enable_axis:
.LFB76:
	.loc 1 3821 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI228:
	sub	sp, sp, #16
.LCFI229:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 3823 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3824 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3826 15
	ldr	r3, .L571
	ldr	r3, [r3]
	.loc 1 3826 5
	cmp	r3, #0
	bne	.L563
	.loc 1 3827 10
	mvn	r3, #126
	b	.L570
.L563:
	.loc 1 3829 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L565
	cmp	r3, #2
	bgt	.L566
	cmp	r3, #0
	beq	.L567
	cmp	r3, #1
	beq	.L568
	b	.L566
.L567:
	.loc 1 3832 21
	ldr	r3, .L571
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3832 40
	ldr	r3, .L571
	ldr	r3, [r3]
	.loc 1 3832 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #34
	blx	r4
.LVL148:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3836 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3836 17
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3838 4
	b	.L569
.L568:
	.loc 1 3840 21
	ldr	r3, .L571
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3840 40
	ldr	r3, .L571
	ldr	r3, [r3]
	.loc 1 3840 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL149:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3844 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3844 17
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3846 4
	b	.L569
.L565:
	.loc 1 3848 21
	ldr	r3, .L571
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3848 40
	ldr	r3, .L571
	ldr	r3, [r3]
	.loc 1 3848 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #38
	blx	r4
.LVL150:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3852 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 3852 17
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3854 4
	b	.L569
.L566:
	.loc 1 3856 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3857 4
	nop
.L569:
	.loc 1 3860 9
	ldrsb	r3, [sp, #15]
.L570:
	.loc 1 3861 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI230:
	@ sp needed
	pop	{r4, pc}
.L572:
	.align	2
.L571:
	.word	p_bmg160
.LFE76:
	.size	bmg160_get_highrate_enable_axis, .-bmg160_get_highrate_enable_axis
	.section	.text.bmg160_set_highrate_enable_axis,"ax",%progbits
	.align	1
	.global	bmg160_set_highrate_enable_axis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_highrate_enable_axis, %function
bmg160_set_highrate_enable_axis:
.LFB77:
	.loc 1 3890 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI231:
	sub	sp, sp, #16
.LCFI232:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 3892 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3893 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3895 15
	ldr	r3, .L582
	ldr	r3, [r3]
	.loc 1 3895 5
	cmp	r3, #0
	bne	.L574
	.loc 1 3896 10
	mvn	r3, #126
	b	.L581
.L574:
	.loc 1 3898 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L576
	cmp	r3, #2
	bgt	.L577
	cmp	r3, #0
	beq	.L578
	cmp	r3, #1
	beq	.L579
	b	.L577
.L578:
	.loc 1 3901 21
	ldr	r3, .L582
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3901 40
	ldr	r3, .L582
	ldr	r3, [r3]
	.loc 1 3901 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #34
	blx	r4
.LVL151:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3905 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 3905 56
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 3905 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3905 14
	strb	r3, [sp, #14]
	.loc 1 3907 22
	ldr	r3, .L582
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3907 42
	ldr	r3, .L582
	ldr	r3, [r3]
	.loc 1 3907 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #34
	blx	r4
.LVL152:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3907 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3911 4
	b	.L580
.L579:
	.loc 1 3913 21
	ldr	r3, .L582
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3913 40
	ldr	r3, .L582
	ldr	r3, [r3]
	.loc 1 3913 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL153:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3917 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 3917 56
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 3917 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3917 14
	strb	r3, [sp, #14]
	.loc 1 3919 22
	ldr	r3, .L582
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3919 42
	ldr	r3, .L582
	ldr	r3, [r3]
	.loc 1 3919 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL154:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3919 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3923 4
	b	.L580
.L576:
	.loc 1 3925 21
	ldr	r3, .L582
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3925 40
	ldr	r3, .L582
	ldr	r3, [r3]
	.loc 1 3925 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #38
	blx	r4
.LVL155:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3929 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 3929 56
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 3929 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 3929 14
	strb	r3, [sp, #14]
	.loc 1 3931 22
	ldr	r3, .L582
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 3931 42
	ldr	r3, .L582
	ldr	r3, [r3]
	.loc 1 3931 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #38
	blx	r4
.LVL156:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 3931 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 3935 4
	b	.L580
.L577:
	.loc 1 3937 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 3938 4
	nop
.L580:
	.loc 1 3941 9
	ldrsb	r3, [sp, #15]
.L581:
	.loc 1 3942 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI233:
	@ sp needed
	pop	{r4, pc}
.L583:
	.align	2
.L582:
	.word	p_bmg160
.LFE77:
	.size	bmg160_set_highrate_enable_axis, .-bmg160_set_highrate_enable_axis
	.section	.text.bmg160_get_highrate_durn_axis,"ax",%progbits
	.align	1
	.global	bmg160_get_highrate_durn_axis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_highrate_durn_axis, %function
bmg160_get_highrate_durn_axis:
.LFB78:
	.loc 1 3973 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI234:
	sub	sp, sp, #16
.LCFI235:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 3975 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 3976 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 3978 15
	ldr	r3, .L593
	ldr	r3, [r3]
	.loc 1 3978 5
	cmp	r3, #0
	bne	.L585
	.loc 1 3979 10
	mvn	r3, #126
	b	.L592
.L585:
	.loc 1 3981 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L587
	cmp	r3, #2
	bgt	.L588
	cmp	r3, #0
	beq	.L589
	cmp	r3, #1
	beq	.L590
	b	.L588
.L589:
	.loc 1 3984 21
	ldr	r3, .L593
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3984 40
	ldr	r3, .L593
	ldr	r3, [r3]
	.loc 1 3984 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #35
	blx	r4
.LVL157:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3988 29
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3989 4
	b	.L591
.L590:
	.loc 1 3991 21
	ldr	r3, .L593
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3991 40
	ldr	r3, .L593
	ldr	r3, [r3]
	.loc 1 3991 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL158:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3995 29
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 3996 4
	b	.L591
.L587:
	.loc 1 3998 21
	ldr	r3, .L593
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 3998 40
	ldr	r3, .L593
	ldr	r3, [r3]
	.loc 1 3998 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #38
	blx	r4
.LVL159:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4002 29
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4003 4
	b	.L591
.L588:
	.loc 1 4005 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4006 4
	nop
.L591:
	.loc 1 4009 9
	ldrsb	r3, [sp, #15]
.L592:
	.loc 1 4010 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI236:
	@ sp needed
	pop	{r4, pc}
.L594:
	.align	2
.L593:
	.word	p_bmg160
.LFE78:
	.size	bmg160_get_highrate_durn_axis, .-bmg160_get_highrate_durn_axis
	.section	.text.bmg160_set_highrate_durn_axis,"ax",%progbits
	.align	1
	.global	bmg160_set_highrate_durn_axis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_highrate_durn_axis, %function
bmg160_set_highrate_durn_axis:
.LFB79:
	.loc 1 4041 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI237:
	sub	sp, sp, #16
.LCFI238:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 4043 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4044 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4046 15
	ldr	r3, .L604
	ldr	r3, [r3]
	.loc 1 4046 5
	cmp	r3, #0
	bne	.L596
	.loc 1 4047 10
	mvn	r3, #126
	b	.L603
.L596:
	.loc 1 4049 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L598
	cmp	r3, #2
	bgt	.L599
	cmp	r3, #0
	beq	.L600
	cmp	r3, #1
	beq	.L601
	b	.L599
.L600:
	.loc 1 4052 14
	ldrb	r3, [sp, #6]
	strb	r3, [sp, #14]
	.loc 1 4053 21
	ldr	r3, .L604
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4053 41
	ldr	r3, .L604
	ldr	r3, [r3]
	.loc 1 4053 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #34
	blx	r4
.LVL160:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4057 4
	b	.L602
.L601:
	.loc 1 4059 14
	ldrb	r3, [sp, #6]
	strb	r3, [sp, #14]
	.loc 1 4060 21
	ldr	r3, .L604
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4060 41
	ldr	r3, .L604
	ldr	r3, [r3]
	.loc 1 4060 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #36
	blx	r4
.LVL161:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4064 4
	b	.L602
.L598:
	.loc 1 4066 14
	ldrb	r3, [sp, #6]
	strb	r3, [sp, #14]
	.loc 1 4067 21
	ldr	r3, .L604
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4067 41
	ldr	r3, .L604
	ldr	r3, [r3]
	.loc 1 4067 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #38
	blx	r4
.LVL162:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4071 4
	b	.L602
.L599:
	.loc 1 4073 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4074 4
	nop
.L602:
	.loc 1 4077 9
	ldrsb	r3, [sp, #15]
.L603:
	.loc 1 4078 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI239:
	@ sp needed
	pop	{r4, pc}
.L605:
	.align	2
.L604:
	.word	p_bmg160
.LFE79:
	.size	bmg160_set_highrate_durn_axis, .-bmg160_set_highrate_durn_axis
	.section	.text.bmg160_get_slow_offset_thres,"ax",%progbits
	.align	1
	.global	bmg160_get_slow_offset_thres
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_slow_offset_thres, %function
bmg160_get_slow_offset_thres:
.LFB80:
	.loc 1 4102 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI240:
	sub	sp, sp, #16
.LCFI241:
	str	r0, [sp, #4]
	.loc 1 4104 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4105 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4107 15
	ldr	r3, .L610
	ldr	r3, [r3]
	.loc 1 4107 5
	cmp	r3, #0
	bne	.L607
	.loc 1 4108 10
	mvn	r3, #126
	b	.L609
.L607:
	.loc 1 4111 20
	ldr	r3, .L610
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4111 39
	ldr	r3, .L610
	ldr	r3, [r3]
	.loc 1 4111 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL163:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4114 46
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #6
	uxtb	r2, r3
	.loc 1 4114 22
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 4117 9
	ldrsb	r3, [sp, #15]
.L609:
	.loc 1 4118 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI242:
	@ sp needed
	pop	{r4, pc}
.L611:
	.align	2
.L610:
	.word	p_bmg160
.LFE80:
	.size	bmg160_get_slow_offset_thres, .-bmg160_get_slow_offset_thres
	.section	.text.bmg160_set_slow_offset_thres,"ax",%progbits
	.align	1
	.global	bmg160_set_slow_offset_thres
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_slow_offset_thres, %function
bmg160_set_slow_offset_thres:
.LFB81:
	.loc 1 4141 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI243:
	sub	sp, sp, #16
.LCFI244:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 4143 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4144 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4146 15
	ldr	r3, .L616
	ldr	r3, [r3]
	.loc 1 4146 5
	cmp	r3, #0
	bne	.L613
	.loc 1 4147 10
	mvn	r3, #126
	b	.L615
.L613:
	.loc 1 4150 20
	ldr	r3, .L616
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4150 39
	ldr	r3, .L616
	ldr	r3, [r3]
	.loc 1 4150 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL164:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4153 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #63
	sxtb	r2, r3
	.loc 1 4153 55
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 4153 35
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4153 13
	strb	r3, [sp, #14]
	.loc 1 4155 21
	ldr	r3, .L616
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4155 41
	ldr	r3, .L616
	ldr	r3, [r3]
	.loc 1 4155 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL165:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4155 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4159 9
	ldrsb	r3, [sp, #15]
.L615:
	.loc 1 4160 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI245:
	@ sp needed
	pop	{r4, pc}
.L617:
	.align	2
.L616:
	.word	p_bmg160
.LFE81:
	.size	bmg160_set_slow_offset_thres, .-bmg160_set_slow_offset_thres
	.section	.text.bmg160_get_slow_offset_durn,"ax",%progbits
	.align	1
	.global	bmg160_get_slow_offset_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_slow_offset_durn, %function
bmg160_get_slow_offset_durn:
.LFB82:
	.loc 1 4187 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI246:
	sub	sp, sp, #16
.LCFI247:
	str	r0, [sp, #4]
	.loc 1 4189 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4190 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4192 15
	ldr	r3, .L622
	ldr	r3, [r3]
	.loc 1 4192 5
	cmp	r3, #0
	bne	.L619
	.loc 1 4193 10
	mvn	r3, #126
	b	.L621
.L619:
	.loc 1 4196 20
	ldr	r3, .L622
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4196 39
	ldr	r3, .L622
	ldr	r3, [r3]
	.loc 1 4196 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL166:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4199 45
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #7
	uxtb	r2, r3
	.loc 1 4199 21
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 4202 9
	ldrsb	r3, [sp, #15]
.L621:
	.loc 1 4203 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI248:
	@ sp needed
	pop	{r4, pc}
.L623:
	.align	2
.L622:
	.word	p_bmg160
.LFE82:
	.size	bmg160_get_slow_offset_durn, .-bmg160_get_slow_offset_durn
	.section	.text.bmg160_set_slow_offset_durn,"ax",%progbits
	.align	1
	.global	bmg160_set_slow_offset_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_slow_offset_durn, %function
bmg160_set_slow_offset_durn:
.LFB83:
	.loc 1 4230 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI249:
	sub	sp, sp, #16
.LCFI250:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 4232 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4233 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4235 15
	ldr	r3, .L628
	ldr	r3, [r3]
	.loc 1 4235 5
	cmp	r3, #0
	bne	.L625
	.loc 1 4236 10
	mvn	r3, #126
	b	.L627
.L625:
	.loc 1 4239 20
	ldr	r3, .L628
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4239 39
	ldr	r3, .L628
	ldr	r3, [r3]
	.loc 1 4239 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL167:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4242 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #56
	sxtb	r2, r3
	.loc 1 4242 54
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 4242 60
	sxtb	r3, r3
	and	r3, r3, #56
	sxtb	r3, r3
	.loc 1 4242 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4242 13
	strb	r3, [sp, #14]
	.loc 1 4244 21
	ldr	r3, .L628
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4244 41
	ldr	r3, .L628
	ldr	r3, [r3]
	.loc 1 4244 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL168:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4244 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4248 9
	ldrsb	r3, [sp, #15]
.L627:
	.loc 1 4249 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI251:
	@ sp needed
	pop	{r4, pc}
.L629:
	.align	2
.L628:
	.word	p_bmg160
.LFE83:
	.size	bmg160_set_slow_offset_durn, .-bmg160_set_slow_offset_durn
	.section	.text.bmg160_get_slow_offset_enable_axis,"ax",%progbits
	.align	1
	.global	bmg160_get_slow_offset_enable_axis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_slow_offset_enable_axis, %function
bmg160_get_slow_offset_enable_axis:
.LFB84:
	.loc 1 4279 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI252:
	sub	sp, sp, #16
.LCFI253:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 4281 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4282 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4284 15
	ldr	r3, .L639
	ldr	r3, [r3]
	.loc 1 4284 5
	cmp	r3, #0
	bne	.L631
	.loc 1 4285 10
	mvn	r3, #126
	b	.L638
.L631:
	.loc 1 4287 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L633
	cmp	r3, #2
	bgt	.L634
	cmp	r3, #0
	beq	.L635
	cmp	r3, #1
	beq	.L636
	b	.L634
.L635:
	.loc 1 4290 21
	ldr	r3, .L639
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4290 40
	ldr	r3, .L639
	ldr	r3, [r3]
	.loc 1 4290 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL169:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4294 46
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4294 22
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4296 4
	b	.L637
.L636:
	.loc 1 4298 21
	ldr	r3, .L639
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4298 40
	ldr	r3, .L639
	ldr	r3, [r3]
	.loc 1 4298 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL170:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4302 46
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4302 22
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4304 4
	b	.L637
.L633:
	.loc 1 4306 21
	ldr	r3, .L639
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4306 40
	ldr	r3, .L639
	ldr	r3, [r3]
	.loc 1 4306 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL171:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4310 46
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4310 22
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4312 4
	b	.L637
.L634:
	.loc 1 4314 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4315 4
	nop
.L637:
	.loc 1 4318 9
	ldrsb	r3, [sp, #15]
.L638:
	.loc 1 4319 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI254:
	@ sp needed
	pop	{r4, pc}
.L640:
	.align	2
.L639:
	.word	p_bmg160
.LFE84:
	.size	bmg160_get_slow_offset_enable_axis, .-bmg160_get_slow_offset_enable_axis
	.section	.text.bmg160_set_slow_offset_enable_axis,"ax",%progbits
	.align	1
	.global	bmg160_set_slow_offset_enable_axis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_slow_offset_enable_axis, %function
bmg160_set_slow_offset_enable_axis:
.LFB85:
	.loc 1 4349 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI255:
	sub	sp, sp, #16
.LCFI256:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 4351 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4352 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4354 15
	ldr	r3, .L650
	ldr	r3, [r3]
	.loc 1 4354 5
	cmp	r3, #0
	bne	.L642
	.loc 1 4355 10
	mvn	r3, #126
	b	.L649
.L642:
	.loc 1 4357 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L644
	cmp	r3, #2
	bgt	.L645
	cmp	r3, #0
	beq	.L646
	cmp	r3, #1
	beq	.L647
	b	.L645
.L646:
	.loc 1 4360 21
	ldr	r3, .L650
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4360 40
	ldr	r3, .L650
	ldr	r3, [r3]
	.loc 1 4360 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL172:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4364 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 4364 61
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 4364 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4364 14
	strb	r3, [sp, #14]
	.loc 1 4366 22
	ldr	r3, .L650
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4366 42
	ldr	r3, .L650
	ldr	r3, [r3]
	.loc 1 4366 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL173:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4366 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4370 4
	b	.L648
.L647:
	.loc 1 4372 21
	ldr	r3, .L650
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4372 40
	ldr	r3, .L650
	ldr	r3, [r3]
	.loc 1 4372 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL174:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4376 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 4376 55
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 4376 61
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 4376 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4376 14
	strb	r3, [sp, #14]
	.loc 1 4378 22
	ldr	r3, .L650
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4378 42
	ldr	r3, .L650
	ldr	r3, [r3]
	.loc 1 4378 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL175:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4378 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4382 4
	b	.L648
.L644:
	.loc 1 4384 21
	ldr	r3, .L650
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4384 40
	ldr	r3, .L650
	ldr	r3, [r3]
	.loc 1 4384 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL176:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4388 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 4388 55
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 4388 61
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 4388 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4388 14
	strb	r3, [sp, #14]
	.loc 1 4391 22
	ldr	r3, .L650
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4391 42
	ldr	r3, .L650
	ldr	r3, [r3]
	.loc 1 4391 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #49
	blx	r4
.LVL177:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4391 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4395 4
	b	.L648
.L645:
	.loc 1 4397 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4398 4
	nop
.L648:
	.loc 1 4401 9
	ldrsb	r3, [sp, #15]
.L649:
	.loc 1 4402 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI257:
	@ sp needed
	pop	{r4, pc}
.L651:
	.align	2
.L650:
	.word	p_bmg160
.LFE85:
	.size	bmg160_set_slow_offset_enable_axis, .-bmg160_set_slow_offset_enable_axis
	.section	.text.bmg160_get_offset_word_length,"ax",%progbits
	.align	1
	.global	bmg160_get_offset_word_length
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_offset_word_length, %function
bmg160_get_offset_word_length:
.LFB86:
	.loc 1 4432 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI258:
	sub	sp, sp, #16
.LCFI259:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 4434 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4435 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4437 15
	ldr	r3, .L661
	ldr	r3, [r3]
	.loc 1 4437 5
	cmp	r3, #0
	bne	.L653
	.loc 1 4438 10
	mvn	r3, #126
	b	.L659
.L653:
	.loc 1 4440 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L655
	cmp	r3, #1
	beq	.L656
	b	.L660
.L655:
	.loc 1 4442 21
	ldr	r3, .L661
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4442 40
	ldr	r3, .L661
	ldr	r3, [r3]
	.loc 1 4442 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL178:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4447 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #6
	uxtb	r2, r3
	.loc 1 4446 29
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4449 4
	b	.L658
.L656:
	.loc 1 4451 21
	ldr	r3, .L661
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4451 40
	ldr	r3, .L661
	ldr	r3, [r3]
	.loc 1 4451 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL179:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4456 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 4455 29
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4458 4
	b	.L658
.L660:
	.loc 1 4460 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4461 4
	nop
.L658:
	.loc 1 4464 9
	ldrsb	r3, [sp, #15]
.L659:
	.loc 1 4465 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI260:
	@ sp needed
	pop	{r4, pc}
.L662:
	.align	2
.L661:
	.word	p_bmg160
.LFE86:
	.size	bmg160_get_offset_word_length, .-bmg160_get_offset_word_length
	.section	.text.bmg160_set_offset_word_length,"ax",%progbits
	.align	1
	.global	bmg160_set_offset_word_length
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_offset_word_length, %function
bmg160_set_offset_word_length:
.LFB87:
	.loc 1 4495 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI261:
	sub	sp, sp, #16
.LCFI262:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 4497 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4498 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4500 15
	ldr	r3, .L672
	ldr	r3, [r3]
	.loc 1 4500 5
	cmp	r3, #0
	bne	.L664
	.loc 1 4501 10
	mvn	r3, #126
	b	.L670
.L664:
	.loc 1 4503 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L666
	cmp	r3, #1
	beq	.L667
	b	.L671
.L666:
	.loc 1 4505 21
	ldr	r3, .L672
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4505 40
	ldr	r3, .L672
	ldr	r3, [r3]
	.loc 1 4505 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL180:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4509 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #63
	sxtb	r2, r3
	.loc 1 4509 62
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 4509 36
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4509 14
	strb	r3, [sp, #14]
	.loc 1 4512 22
	ldr	r3, .L672
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4512 42
	ldr	r3, .L672
	ldr	r3, [r3]
	.loc 1 4512 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL181:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4512 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4516 4
	b	.L669
.L667:
	.loc 1 4518 21
	ldr	r3, .L672
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4518 40
	ldr	r3, .L672
	ldr	r3, [r3]
	.loc 1 4518 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL182:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4522 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #48
	sxtb	r2, r3
	.loc 1 4522 62
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 4522 68
	sxtb	r3, r3
	and	r3, r3, #48
	sxtb	r3, r3
	.loc 1 4522 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4522 14
	strb	r3, [sp, #14]
	.loc 1 4525 22
	ldr	r3, .L672
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4525 42
	ldr	r3, .L672
	ldr	r3, [r3]
	.loc 1 4525 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL183:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4525 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4529 4
	b	.L669
.L671:
	.loc 1 4531 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4532 4
	nop
.L669:
	.loc 1 4535 9
	ldrsb	r3, [sp, #15]
.L670:
	.loc 1 4536 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI263:
	@ sp needed
	pop	{r4, pc}
.L673:
	.align	2
.L672:
	.word	p_bmg160
.LFE87:
	.size	bmg160_set_offset_word_length, .-bmg160_set_offset_word_length
	.section	.text.bmg160_enable_fast_offset,"ax",%progbits
	.align	1
	.global	bmg160_enable_fast_offset
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_enable_fast_offset, %function
bmg160_enable_fast_offset:
.LFB88:
	.loc 1 4550 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI264:
	sub	sp, sp, #8
.LCFI265:
	.loc 1 4552 5
	movs	r3, #255
	strb	r3, [sp, #7]
	.loc 1 4553 5
	movs	r3, #0
	strb	r3, [sp, #6]
	.loc 1 4555 15
	ldr	r3, .L678
	ldr	r3, [r3]
	.loc 1 4555 5
	cmp	r3, #0
	bne	.L675
	.loc 1 4556 10
	mvn	r3, #126
	b	.L677
.L675:
	.loc 1 4558 20
	ldr	r3, .L678
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4558 39
	ldr	r3, .L678
	ldr	r3, [r3]
	.loc 1 4558 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #6
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL184:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 4561 35
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	orr	r3, r3, #8
	uxtb	r3, r3
	.loc 1 4561 13
	strb	r3, [sp, #6]
	.loc 1 4564 21
	ldr	r3, .L678
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4564 41
	ldr	r3, .L678
	ldr	r3, [r3]
	.loc 1 4564 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #6
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL185:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4564 10
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #7]
	.loc 1 4568 9
	ldrsb	r3, [sp, #7]
.L677:
	.loc 1 4569 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI266:
	@ sp needed
	pop	{r4, pc}
.L679:
	.align	2
.L678:
	.word	p_bmg160
.LFE88:
	.size	bmg160_enable_fast_offset, .-bmg160_enable_fast_offset
	.section	.text.bmg160_get_fast_offset_enable_axis,"ax",%progbits
	.align	1
	.global	bmg160_get_fast_offset_enable_axis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_fast_offset_enable_axis, %function
bmg160_get_fast_offset_enable_axis:
.LFB89:
	.loc 1 4595 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI267:
	sub	sp, sp, #16
.LCFI268:
	str	r0, [sp, #4]
	.loc 1 4597 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4598 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4600 15
	ldr	r3, .L684
	ldr	r3, [r3]
	.loc 1 4600 5
	cmp	r3, #0
	bne	.L681
	.loc 1 4601 10
	mvn	r3, #126
	b	.L683
.L681:
	.loc 1 4604 20
	ldr	r3, .L684
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4604 39
	ldr	r3, .L684
	ldr	r3, [r3]
	.loc 1 4604 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL186:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4608 45
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #7
	uxtb	r2, r3
	.loc 1 4608 21
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 4611 9
	ldrsb	r3, [sp, #15]
.L683:
	.loc 1 4612 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI269:
	@ sp needed
	pop	{r4, pc}
.L685:
	.align	2
.L684:
	.word	p_bmg160
.LFE89:
	.size	bmg160_get_fast_offset_enable_axis, .-bmg160_get_fast_offset_enable_axis
	.section	.text.bmg160_set_fast_offset_enable_axis,"ax",%progbits
	.align	1
	.global	bmg160_set_fast_offset_enable_axis
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_fast_offset_enable_axis, %function
bmg160_set_fast_offset_enable_axis:
.LFB90:
	.loc 1 4644 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI270:
	sub	sp, sp, #16
.LCFI271:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 4646 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4647 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4649 15
	ldr	r3, .L695
	ldr	r3, [r3]
	.loc 1 4649 5
	cmp	r3, #0
	bne	.L687
	.loc 1 4650 10
	mvn	r3, #126
	b	.L694
.L687:
	.loc 1 4652 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L689
	cmp	r3, #2
	bgt	.L690
	cmp	r3, #0
	beq	.L691
	cmp	r3, #1
	beq	.L692
	b	.L690
.L691:
	.loc 1 4655 21
	ldr	r3, .L695
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4655 40
	ldr	r3, .L695
	ldr	r3, [r3]
	.loc 1 4655 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL187:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4659 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 4659 61
	ldrsb	r3, [sp, #6]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 4659 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4659 14
	strb	r3, [sp, #14]
	.loc 1 4661 22
	ldr	r3, .L695
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4661 42
	ldr	r3, .L695
	ldr	r3, [r3]
	.loc 1 4661 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL188:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4661 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4665 4
	b	.L693
.L692:
	.loc 1 4667 21
	ldr	r3, .L695
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4667 40
	ldr	r3, .L695
	ldr	r3, [r3]
	.loc 1 4667 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL189:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4671 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 4671 55
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 4671 61
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 4671 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4671 14
	strb	r3, [sp, #14]
	.loc 1 4673 22
	ldr	r3, .L695
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4673 42
	ldr	r3, .L695
	ldr	r3, [r3]
	.loc 1 4673 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL190:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4673 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4677 4
	b	.L693
.L689:
	.loc 1 4679 21
	ldr	r3, .L695
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4679 40
	ldr	r3, .L695
	ldr	r3, [r3]
	.loc 1 4679 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL191:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4683 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 4683 55
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 4683 61
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 4683 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4683 14
	strb	r3, [sp, #14]
	.loc 1 4685 22
	ldr	r3, .L695
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4685 42
	ldr	r3, .L695
	ldr	r3, [r3]
	.loc 1 4685 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #50
	blx	r4
.LVL192:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4685 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4689 4
	b	.L693
.L690:
	.loc 1 4691 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4692 4
	nop
.L693:
	.loc 1 4695 9
	ldrsb	r3, [sp, #15]
.L694:
	.loc 1 4696 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI272:
	@ sp needed
	pop	{r4, pc}
.L696:
	.align	2
.L695:
	.word	p_bmg160
.LFE90:
	.size	bmg160_set_fast_offset_enable_axis, .-bmg160_set_fast_offset_enable_axis
	.section	.text.bmg160_get_nvm_remain,"ax",%progbits
	.align	1
	.global	bmg160_get_nvm_remain
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_nvm_remain, %function
bmg160_get_nvm_remain:
.LFB91:
	.loc 1 4715 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI273:
	sub	sp, sp, #16
.LCFI274:
	str	r0, [sp, #4]
	.loc 1 4717 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4718 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4720 15
	ldr	r3, .L701
	ldr	r3, [r3]
	.loc 1 4720 5
	cmp	r3, #0
	bne	.L698
	.loc 1 4721 10
	mvn	r3, #126
	b	.L700
.L698:
	.loc 1 4724 20
	ldr	r3, .L701
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4724 39
	ldr	r3, .L701
	ldr	r3, [r3]
	.loc 1 4724 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL193:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4727 44
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r2, r3
	.loc 1 4727 20
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 4730 9
	ldrsb	r3, [sp, #15]
.L700:
	.loc 1 4731 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI275:
	@ sp needed
	pop	{r4, pc}
.L702:
	.align	2
.L701:
	.word	p_bmg160
.LFE91:
	.size	bmg160_get_nvm_remain, .-bmg160_get_nvm_remain
	.section	.text.bmg160_set_nvm_load,"ax",%progbits
	.align	1
	.global	bmg160_set_nvm_load
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_nvm_load, %function
bmg160_set_nvm_load:
.LFB92:
	.loc 1 4750 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI276:
	sub	sp, sp, #16
.LCFI277:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 4752 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4753 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4755 15
	ldr	r3, .L707
	ldr	r3, [r3]
	.loc 1 4755 5
	cmp	r3, #0
	bne	.L704
	.loc 1 4756 10
	mvn	r3, #126
	b	.L706
.L704:
	.loc 1 4759 20
	ldr	r3, .L707
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4759 39
	ldr	r3, .L707
	ldr	r3, [r3]
	.loc 1 4759 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL194:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4762 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #8
	sxtb	r2, r3
	.loc 1 4762 51
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 4762 57
	sxtb	r3, r3
	and	r3, r3, #8
	sxtb	r3, r3
	.loc 1 4762 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4762 13
	strb	r3, [sp, #14]
	.loc 1 4764 21
	ldr	r3, .L707
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4764 41
	ldr	r3, .L707
	ldr	r3, [r3]
	.loc 1 4764 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL195:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4764 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4768 9
	ldrsb	r3, [sp, #15]
.L706:
	.loc 1 4769 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI278:
	@ sp needed
	pop	{r4, pc}
.L708:
	.align	2
.L707:
	.word	p_bmg160
.LFE92:
	.size	bmg160_set_nvm_load, .-bmg160_set_nvm_load
	.section	.text.bmg160_get_nvm_rdy,"ax",%progbits
	.align	1
	.global	bmg160_get_nvm_rdy
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_nvm_rdy, %function
bmg160_get_nvm_rdy:
.LFB93:
	.loc 1 4788 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI279:
	sub	sp, sp, #16
.LCFI280:
	str	r0, [sp, #4]
	.loc 1 4790 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4791 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4793 15
	ldr	r3, .L713
	ldr	r3, [r3]
	.loc 1 4793 5
	cmp	r3, #0
	bne	.L710
	.loc 1 4794 10
	mvn	r3, #126
	b	.L712
.L710:
	.loc 1 4796 20
	ldr	r3, .L713
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4796 39
	ldr	r3, .L713
	ldr	r3, [r3]
	.loc 1 4796 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL196:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4799 41
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4799 17
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 4802 9
	ldrsb	r3, [sp, #15]
.L712:
	.loc 1 4803 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI281:
	@ sp needed
	pop	{r4, pc}
.L714:
	.align	2
.L713:
	.word	p_bmg160
.LFE93:
	.size	bmg160_get_nvm_rdy, .-bmg160_get_nvm_rdy
	.section	.text.bmg160_set_nvm_prog_trig,"ax",%progbits
	.align	1
	.global	bmg160_set_nvm_prog_trig
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_nvm_prog_trig, %function
bmg160_set_nvm_prog_trig:
.LFB94:
	.loc 1 4822 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI282:
	sub	sp, sp, #16
.LCFI283:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 4824 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4825 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4827 15
	ldr	r3, .L719
	ldr	r3, [r3]
	.loc 1 4827 5
	cmp	r3, #0
	bne	.L716
	.loc 1 4828 10
	mvn	r3, #126
	b	.L718
.L716:
	.loc 1 4830 20
	ldr	r3, .L719
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4830 39
	ldr	r3, .L719
	ldr	r3, [r3]
	.loc 1 4830 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL197:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4833 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 4833 51
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 4833 57
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 4833 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4833 13
	strb	r3, [sp, #14]
	.loc 1 4835 21
	ldr	r3, .L719
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4835 41
	ldr	r3, .L719
	ldr	r3, [r3]
	.loc 1 4835 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL198:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4835 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4839 9
	ldrsb	r3, [sp, #15]
.L718:
	.loc 1 4840 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI284:
	@ sp needed
	pop	{r4, pc}
.L720:
	.align	2
.L719:
	.word	p_bmg160
.LFE94:
	.size	bmg160_set_nvm_prog_trig, .-bmg160_set_nvm_prog_trig
	.section	.text.bmg160_get_nvm_prog_mode,"ax",%progbits
	.align	1
	.global	bmg160_get_nvm_prog_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_nvm_prog_mode, %function
bmg160_get_nvm_prog_mode:
.LFB95:
	.loc 1 4860 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI285:
	sub	sp, sp, #16
.LCFI286:
	str	r0, [sp, #4]
	.loc 1 4862 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4863 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4865 15
	ldr	r3, .L725
	ldr	r3, [r3]
	.loc 1 4865 5
	cmp	r3, #0
	bne	.L722
	.loc 1 4866 10
	mvn	r3, #126
	b	.L724
.L722:
	.loc 1 4868 20
	ldr	r3, .L725
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4868 39
	ldr	r3, .L725
	ldr	r3, [r3]
	.loc 1 4868 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL199:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4871 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4871 18
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 4874 9
	ldrsb	r3, [sp, #15]
.L724:
	.loc 1 4875 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI287:
	@ sp needed
	pop	{r4, pc}
.L726:
	.align	2
.L725:
	.word	p_bmg160
.LFE95:
	.size	bmg160_get_nvm_prog_mode, .-bmg160_get_nvm_prog_mode
	.section	.text.bmg160_set_nvm_prog_mode,"ax",%progbits
	.align	1
	.global	bmg160_set_nvm_prog_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_nvm_prog_mode, %function
bmg160_set_nvm_prog_mode:
.LFB96:
	.loc 1 4895 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI288:
	sub	sp, sp, #16
.LCFI289:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 4897 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4898 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4900 15
	ldr	r3, .L731
	ldr	r3, [r3]
	.loc 1 4900 5
	cmp	r3, #0
	bne	.L728
	.loc 1 4901 10
	mvn	r3, #126
	b	.L730
.L728:
	.loc 1 4903 20
	ldr	r3, .L731
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4903 39
	ldr	r3, .L731
	ldr	r3, [r3]
	.loc 1 4903 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL200:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4906 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 4906 57
	ldrsb	r3, [sp, #7]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 4906 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 4906 13
	strb	r3, [sp, #14]
	.loc 1 4908 21
	ldr	r3, .L731
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 4908 41
	ldr	r3, .L731
	ldr	r3, [r3]
	.loc 1 4908 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #51
	blx	r4
.LVL201:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 4908 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 4912 9
	ldrsb	r3, [sp, #15]
.L730:
	.loc 1 4913 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI290:
	@ sp needed
	pop	{r4, pc}
.L732:
	.align	2
.L731:
	.word	p_bmg160
.LFE96:
	.size	bmg160_set_nvm_prog_mode, .-bmg160_set_nvm_prog_mode
	.section	.text.bmg160_get_i2c_wdt,"ax",%progbits
	.align	1
	.global	bmg160_get_i2c_wdt
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_i2c_wdt, %function
bmg160_get_i2c_wdt:
.LFB97:
	.loc 1 4941 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI291:
	sub	sp, sp, #16
.LCFI292:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 4943 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 4944 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 4946 15
	ldr	r3, .L742
	ldr	r3, [r3]
	.loc 1 4946 5
	cmp	r3, #0
	bne	.L734
	.loc 1 4947 10
	mvn	r3, #126
	b	.L740
.L734:
	.loc 1 4949 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L736
	cmp	r3, #1
	beq	.L737
	b	.L741
.L736:
	.loc 1 4952 21
	ldr	r3, .L742
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4952 40
	ldr	r3, .L742
	ldr	r3, [r3]
	.loc 1 4952 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL202:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4956 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4956 18
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4958 4
	b	.L739
.L737:
	.loc 1 4960 21
	ldr	r3, .L742
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 4960 40
	ldr	r3, .L742
	ldr	r3, [r3]
	.loc 1 4960 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL203:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4964 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 4964 18
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 4966 4
	b	.L739
.L741:
	.loc 1 4968 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 4969 4
	nop
.L739:
	.loc 1 4972 9
	ldrsb	r3, [sp, #15]
.L740:
	.loc 1 4973 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI293:
	@ sp needed
	pop	{r4, pc}
.L743:
	.align	2
.L742:
	.word	p_bmg160
.LFE97:
	.size	bmg160_get_i2c_wdt, .-bmg160_get_i2c_wdt
	.section	.text.bmg160_set_i2c_wdt,"ax",%progbits
	.align	1
	.global	bmg160_set_i2c_wdt
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_i2c_wdt, %function
bmg160_set_i2c_wdt:
.LFB98:
	.loc 1 5001 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI294:
	sub	sp, sp, #16
.LCFI295:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 5003 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5004 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5006 15
	ldr	r3, .L753
	ldr	r3, [r3]
	.loc 1 5006 5
	cmp	r3, #0
	bne	.L745
	.loc 1 5007 10
	mvn	r3, #126
	b	.L751
.L745:
	.loc 1 5009 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L747
	cmp	r3, #1
	beq	.L748
	b	.L752
.L747:
	.loc 1 5012 21
	ldr	r3, .L753
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5012 40
	ldr	r3, .L753
	ldr	r3, [r3]
	.loc 1 5012 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL204:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5016 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #4
	sxtb	r2, r3
	.loc 1 5016 51
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 5016 57
	sxtb	r3, r3
	and	r3, r3, #4
	sxtb	r3, r3
	.loc 1 5016 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5016 14
	strb	r3, [sp, #14]
	.loc 1 5018 22
	ldr	r3, .L753
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5018 42
	ldr	r3, .L753
	ldr	r3, [r3]
	.loc 1 5018 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL205:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5018 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5022 4
	b	.L750
.L748:
	.loc 1 5024 21
	ldr	r3, .L753
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5024 40
	ldr	r3, .L753
	ldr	r3, [r3]
	.loc 1 5024 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL206:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5028 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 5028 51
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 5028 57
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 5028 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5028 14
	strb	r3, [sp, #14]
	.loc 1 5030 22
	ldr	r3, .L753
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5030 42
	ldr	r3, .L753
	ldr	r3, [r3]
	.loc 1 5030 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL207:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5030 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5034 4
	b	.L750
.L752:
	.loc 1 5036 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 5037 4
	nop
.L750:
	.loc 1 5040 9
	ldrsb	r3, [sp, #15]
.L751:
	.loc 1 5041 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI296:
	@ sp needed
	pop	{r4, pc}
.L754:
	.align	2
.L753:
	.word	p_bmg160
.LFE98:
	.size	bmg160_set_i2c_wdt, .-bmg160_set_i2c_wdt
	.section	.text.bmg160_get_spi3,"ax",%progbits
	.align	1
	.global	bmg160_get_spi3
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_spi3, %function
bmg160_get_spi3:
.LFB99:
	.loc 1 5063 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI297:
	sub	sp, sp, #16
.LCFI298:
	str	r0, [sp, #4]
	.loc 1 5065 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5066 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5068 15
	ldr	r3, .L759
	ldr	r3, [r3]
	.loc 1 5068 5
	cmp	r3, #0
	bne	.L756
	.loc 1 5069 10
	mvn	r3, #126
	b	.L758
.L756:
	.loc 1 5071 20
	ldr	r3, .L759
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5071 39
	ldr	r3, .L759
	ldr	r3, [r3]
	.loc 1 5071 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL208:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5075 38
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	.loc 1 5075 14
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 5078 9
	ldrsb	r3, [sp, #15]
.L758:
	.loc 1 5079 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI299:
	@ sp needed
	pop	{r4, pc}
.L760:
	.align	2
.L759:
	.word	p_bmg160
.LFE99:
	.size	bmg160_get_spi3, .-bmg160_get_spi3
	.section	.text.bmg160_set_spi3,"ax",%progbits
	.align	1
	.global	bmg160_set_spi3
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_spi3, %function
bmg160_set_spi3:
.LFB100:
	.loc 1 5101 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI300:
	sub	sp, sp, #16
.LCFI301:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 5103 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5104 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5106 15
	ldr	r3, .L765
	ldr	r3, [r3]
	.loc 1 5106 5
	cmp	r3, #0
	bne	.L762
	.loc 1 5107 10
	mvn	r3, #126
	b	.L764
.L762:
	.loc 1 5109 20
	ldr	r3, .L765
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5109 39
	ldr	r3, .L765
	ldr	r3, [r3]
	.loc 1 5109 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL209:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5112 26
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 5112 53
	ldrsb	r3, [sp, #7]
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 5112 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5112 13
	strb	r3, [sp, #14]
	.loc 1 5114 21
	ldr	r3, .L765
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5114 41
	ldr	r3, .L765
	ldr	r3, [r3]
	.loc 1 5114 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #52
	blx	r4
.LVL210:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5114 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5118 9
	ldrsb	r3, [sp, #15]
.L764:
	.loc 1 5119 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI302:
	@ sp needed
	pop	{r4, pc}
.L766:
	.align	2
.L765:
	.word	p_bmg160
.LFE100:
	.size	bmg160_set_spi3, .-bmg160_set_spi3
	.section	.text.bmg160_get_fifo_tag,"ax",%progbits
	.align	1
	.global	bmg160_get_fifo_tag
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_fifo_tag, %function
bmg160_get_fifo_tag:
.LFB101:
	.loc 1 5139 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI303:
	sub	sp, sp, #16
.LCFI304:
	str	r0, [sp, #4]
	.loc 1 5141 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5142 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5144 15
	ldr	r3, .L771
	ldr	r3, [r3]
	.loc 1 5144 5
	cmp	r3, #0
	bne	.L768
	.loc 1 5145 10
	mvn	r3, #126
	b	.L770
.L768:
	.loc 1 5148 20
	ldr	r3, .L771
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5148 39
	ldr	r3, .L771
	ldr	r3, [r3]
	.loc 1 5148 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #61
	blx	r4
.LVL211:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5151 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 5151 18
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 5154 9
	ldrsb	r3, [sp, #15]
.L770:
	.loc 1 5155 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI305:
	@ sp needed
	pop	{r4, pc}
.L772:
	.align	2
.L771:
	.word	p_bmg160
.LFE101:
	.size	bmg160_get_fifo_tag, .-bmg160_get_fifo_tag
	.section	.text.bmg160_set_fifo_tag,"ax",%progbits
	.align	1
	.global	bmg160_set_fifo_tag
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_fifo_tag, %function
bmg160_set_fifo_tag:
.LFB102:
	.loc 1 5175 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI306:
	sub	sp, sp, #16
.LCFI307:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 5177 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5178 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5180 15
	ldr	r3, .L779
	ldr	r3, [r3]
	.loc 1 5180 5
	cmp	r3, #0
	bne	.L774
	.loc 1 5181 10
	mvn	r3, #126
	b	.L778
.L774:
	.loc 1 5183 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bhi	.L776
	.loc 1 5185 21
	ldr	r3, .L779
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5185 40
	ldr	r3, .L779
	ldr	r3, [r3]
	.loc 1 5185 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #61
	blx	r4
.LVL212:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5189 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #127
	sxtb	r2, r3
	.loc 1 5189 52
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #7
	.loc 1 5189 36
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5189 14
	strb	r3, [sp, #14]
	.loc 1 5191 22
	ldr	r3, .L779
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5191 42
	ldr	r3, .L779
	ldr	r3, [r3]
	.loc 1 5191 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #61
	blx	r4
.LVL213:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5191 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L777
.L776:
	.loc 1 5196 11
	movs	r3, #254
	strb	r3, [sp, #15]
.L777:
	.loc 1 5199 9
	ldrsb	r3, [sp, #15]
.L778:
	.loc 1 5200 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI308:
	@ sp needed
	pop	{r4, pc}
.L780:
	.align	2
.L779:
	.word	p_bmg160
.LFE102:
	.size	bmg160_set_fifo_tag, .-bmg160_set_fifo_tag
	.section	.text.bmg160_get_fifo_wm_level,"ax",%progbits
	.align	1
	.global	bmg160_get_fifo_wm_level
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_fifo_wm_level, %function
bmg160_get_fifo_wm_level:
.LFB103:
	.loc 1 5219 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI309:
	sub	sp, sp, #16
.LCFI310:
	str	r0, [sp, #4]
	.loc 1 5221 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5222 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5224 15
	ldr	r3, .L785
	ldr	r3, [r3]
	.loc 1 5224 5
	cmp	r3, #0
	bne	.L782
	.loc 1 5225 10
	mvn	r3, #126
	b	.L784
.L782:
	.loc 1 5227 20
	ldr	r3, .L785
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5227 39
	ldr	r3, .L785
	ldr	r3, [r3]
	.loc 1 5227 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #61
	blx	r4
.LVL214:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5230 47
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	.loc 1 5230 23
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 5233 9
	ldrsb	r3, [sp, #15]
.L784:
	.loc 1 5234 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI311:
	@ sp needed
	pop	{r4, pc}
.L786:
	.align	2
.L785:
	.word	p_bmg160
.LFE103:
	.size	bmg160_get_fifo_wm_level, .-bmg160_get_fifo_wm_level
	.section	.text.bmg160_set_fifo_wm_level,"ax",%progbits
	.align	1
	.global	bmg160_set_fifo_wm_level
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_fifo_wm_level, %function
bmg160_set_fifo_wm_level:
.LFB104:
	.loc 1 5253 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI312:
	sub	sp, sp, #16
.LCFI313:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 5255 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5256 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5258 15
	ldr	r3, .L793
	ldr	r3, [r3]
	.loc 1 5258 5
	cmp	r3, #0
	bne	.L788
	.loc 1 5259 10
	mvn	r3, #126
	b	.L792
.L788:
	.loc 1 5261 26
	ldrsb	r3, [sp, #7]
	.loc 1 5261 6
	cmp	r3, #0
	blt	.L790
	.loc 1 5262 21
	ldr	r3, .L793
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5262 40
	ldr	r3, .L793
	ldr	r3, [r3]
	.loc 1 5262 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #61
	blx	r4
.LVL215:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5266 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #127
	sxtb	r2, r3
	.loc 1 5266 63
	ldrsb	r3, [sp, #7]
	and	r3, r3, #127
	sxtb	r3, r3
	.loc 1 5266 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5266 14
	strb	r3, [sp, #14]
	.loc 1 5268 22
	ldr	r3, .L793
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5268 42
	ldr	r3, .L793
	ldr	r3, [r3]
	.loc 1 5268 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #61
	blx	r4
.LVL216:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5268 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L791
.L790:
	.loc 1 5273 11
	movs	r3, #254
	strb	r3, [sp, #15]
.L791:
	.loc 1 5276 9
	ldrsb	r3, [sp, #15]
.L792:
	.loc 1 5277 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI314:
	@ sp needed
	pop	{r4, pc}
.L794:
	.align	2
.L793:
	.word	p_bmg160
.LFE104:
	.size	bmg160_set_fifo_wm_level, .-bmg160_set_fifo_wm_level
	.section	.text.bmg160_get_offset,"ax",%progbits
	.align	1
	.global	bmg160_get_offset
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_offset, %function
bmg160_get_offset:
.LFB105:
	.loc 1 5314 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI315:
	sub	sp, sp, #16
.LCFI316:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 5316 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5317 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5318 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 5320 15
	ldr	r3, .L804
	ldr	r3, [r3]
	.loc 1 5320 5
	cmp	r3, #0
	bne	.L796
	.loc 1 5321 10
	mvn	r3, #126
	b	.L803
.L796:
	.loc 1 5323 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L798
	cmp	r3, #2
	bgt	.L799
	cmp	r3, #0
	beq	.L800
	cmp	r3, #1
	beq	.L801
	b	.L799
.L800:
	.loc 1 5326 21
	ldr	r3, .L804
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5326 40
	ldr	r3, .L804
	ldr	r3, [r3]
	.loc 1 5326 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #58
	blx	r4
.LVL217:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5330 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r3, r3
	.loc 1 5330 16
	strb	r3, [sp, #14]
	.loc 1 5332 21
	ldr	r3, .L804
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5332 40
	ldr	r3, .L804
	ldr	r3, [r3]
	.loc 1 5332 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL218:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5336 42
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	lsrs	r3, r3, #6
	uxtb	r3, r3
	.loc 1 5336 16
	strb	r3, [sp, #13]
	.loc 1 5338 32
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 5340 4
	sxtb	r2, r3
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5338 16
	strb	r3, [sp, #13]
	.loc 1 5341 21
	ldr	r3, .L804
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5341 40
	ldr	r3, .L804
	ldr	r3, [r3]
	.loc 1 5341 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #55
	blx	r4
.LVL219:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5345 5
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	.loc 1 5346 4
	lsls	r3, r3, #4
	.loc 1 5344 20
	sxth	r2, r3
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxth	r3, r3
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 5344 18
	ldr	r3, [sp]
	strh	r2, [r3]	@ movhi
	.loc 1 5348 4
	b	.L802
.L801:
	.loc 1 5350 21
	ldr	r3, .L804
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5350 40
	ldr	r3, .L804
	ldr	r3, [r3]
	.loc 1 5350 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #58
	blx	r4
.LVL220:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5354 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r3, r3
	.loc 1 5354 16
	strb	r3, [sp, #14]
	.loc 1 5356 21
	ldr	r3, .L804
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5356 40
	ldr	r3, .L804
	ldr	r3, [r3]
	.loc 1 5356 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL221:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5360 42
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	asrs	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #7
	uxtb	r3, r3
	.loc 1 5360 16
	strb	r3, [sp, #13]
	.loc 1 5362 32
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 5364 4
	sxtb	r2, r3
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5362 16
	strb	r3, [sp, #13]
	.loc 1 5365 21
	ldr	r3, .L804
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5365 40
	ldr	r3, .L804
	ldr	r3, [r3]
	.loc 1 5365 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #56
	blx	r4
.LVL222:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5370 5
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	.loc 1 5371 4
	lsls	r3, r3, #4
	.loc 1 5369 20
	sxth	r2, r3
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxth	r3, r3
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 5369 18
	ldr	r3, [sp]
	strh	r2, [r3]	@ movhi
	.loc 1 5373 4
	b	.L802
.L798:
	.loc 1 5375 21
	ldr	r3, .L804
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5375 40
	ldr	r3, .L804
	ldr	r3, [r3]
	.loc 1 5375 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #58
	blx	r4
.LVL223:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5379 42
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r3, r3
	.loc 1 5379 16
	strb	r3, [sp, #14]
	.loc 1 5381 21
	ldr	r3, .L804
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5381 40
	ldr	r3, .L804
	ldr	r3, [r3]
	.loc 1 5381 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL224:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5385 42
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	and	r3, r3, #7
	uxtb	r3, r3
	.loc 1 5385 16
	strb	r3, [sp, #13]
	.loc 1 5387 32
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 5389 4
	sxtb	r2, r3
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5387 16
	strb	r3, [sp, #13]
	.loc 1 5390 21
	ldr	r3, .L804
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5390 40
	ldr	r3, .L804
	ldr	r3, [r3]
	.loc 1 5390 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #57
	blx	r4
.LVL225:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5395 5
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	.loc 1 5396 4
	lsls	r3, r3, #4
	.loc 1 5394 20
	sxth	r2, r3
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxth	r3, r3
	orrs	r3, r3, r2
	sxth	r2, r3
	.loc 1 5394 18
	ldr	r3, [sp]
	strh	r2, [r3]	@ movhi
	.loc 1 5398 4
	b	.L802
.L799:
	.loc 1 5400 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 5401 4
	nop
.L802:
	.loc 1 5404 9
	ldrsb	r3, [sp, #15]
.L803:
	.loc 1 5405 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI317:
	@ sp needed
	pop	{r4, pc}
.L805:
	.align	2
.L804:
	.word	p_bmg160
.LFE105:
	.size	bmg160_get_offset, .-bmg160_get_offset
	.section	.text.bmg160_set_offset,"ax",%progbits
	.align	1
	.global	bmg160_set_offset
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_offset, %function
bmg160_set_offset:
.LFB106:
	.loc 1 5442 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI318:
	sub	sp, sp, #16
.LCFI319:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2	@ movhi
	strh	r3, [sp, #4]	@ movhi
	.loc 1 5444 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5445 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5446 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 5448 15
	ldr	r3, .L815
	ldr	r3, [r3]
	.loc 1 5448 5
	cmp	r3, #0
	bne	.L807
	.loc 1 5449 10
	mvn	r3, #126
	b	.L814
.L807:
	.loc 1 5451 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L809
	cmp	r3, #2
	bgt	.L810
	cmp	r3, #0
	beq	.L811
	cmp	r3, #1
	beq	.L812
	b	.L810
.L811:
	.loc 1 5454 16
	ldrh	r3, [sp, #4]	@ movhi
	sxtb	r3, r3
	asrs	r3, r3, #4
	sxtb	r3, r3
	uxtb	r3, r3
	strb	r3, [sp, #14]
	.loc 1 5457 21
	ldr	r3, .L815
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5457 41
	ldr	r3, .L815
	ldr	r3, [r3]
	.loc 1 5457 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #55
	blx	r4
.LVL226:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5463 4
	ldrh	r3, [sp, #4]	@ movhi
	uxtb	r3, r3
	.loc 1 5462 18
	and	r3, r3, #12
	uxtb	r3, r3
	.loc 1 5462 16
	strb	r3, [sp, #14]
	.loc 1 5464 31
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #63
	sxtb	r2, r3
	.loc 1 5464 54
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 5464 40
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5464 16
	strb	r3, [sp, #13]
	.loc 1 5466 22
	ldr	r3, .L815
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5466 41
	ldr	r3, .L815
	ldr	r3, [r3]
	.loc 1 5466 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL227:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5466 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5472 4
	ldrh	r3, [sp, #4]	@ movhi
	uxtb	r3, r3
	.loc 1 5471 18
	and	r3, r3, #3
	uxtb	r3, r3
	.loc 1 5471 16
	strb	r3, [sp, #14]
	.loc 1 5473 31
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #12
	sxtb	r2, r3
	.loc 1 5473 54
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsls	r3, r3, #2
	.loc 1 5473 60
	sxtb	r3, r3
	and	r3, r3, #12
	sxtb	r3, r3
	.loc 1 5473 40
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5473 16
	strb	r3, [sp, #13]
	.loc 1 5475 22
	ldr	r3, .L815
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5475 42
	ldr	r3, .L815
	ldr	r3, [r3]
	.loc 1 5475 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #58
	blx	r4
.LVL228:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5475 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5479 4
	b	.L813
.L812:
	.loc 1 5481 16
	ldrh	r3, [sp, #4]	@ movhi
	sxtb	r3, r3
	asrs	r3, r3, #4
	sxtb	r3, r3
	uxtb	r3, r3
	strb	r3, [sp, #14]
	.loc 1 5484 21
	ldr	r3, .L815
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5484 41
	ldr	r3, .L815
	ldr	r3, [r3]
	.loc 1 5484 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #56
	blx	r4
.LVL229:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5490 4
	ldrh	r3, [sp, #4]	@ movhi
	uxtb	r3, r3
	.loc 1 5489 18
	and	r3, r3, #14
	uxtb	r3, r3
	.loc 1 5489 16
	strb	r3, [sp, #14]
	.loc 1 5491 31
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #56
	sxtb	r2, r3
	.loc 1 5491 54
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsls	r3, r3, #3
	.loc 1 5491 60
	sxtb	r3, r3
	and	r3, r3, #56
	sxtb	r3, r3
	.loc 1 5491 40
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5491 16
	strb	r3, [sp, #13]
	.loc 1 5493 22
	ldr	r3, .L815
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5493 41
	ldr	r3, .L815
	ldr	r3, [r3]
	.loc 1 5493 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL230:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5493 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5499 4
	ldrh	r3, [sp, #4]	@ movhi
	uxtb	r3, r3
	.loc 1 5498 18
	and	r3, r3, #1
	uxtb	r3, r3
	.loc 1 5498 16
	strb	r3, [sp, #14]
	.loc 1 5500 31
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #2
	sxtb	r2, r3
	.loc 1 5500 54
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 5500 60
	sxtb	r3, r3
	and	r3, r3, #2
	sxtb	r3, r3
	.loc 1 5500 40
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5500 16
	strb	r3, [sp, #13]
	.loc 1 5502 22
	ldr	r3, .L815
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5502 42
	ldr	r3, .L815
	ldr	r3, [r3]
	.loc 1 5502 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #58
	blx	r4
.LVL231:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5502 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5506 4
	b	.L813
.L809:
	.loc 1 5508 16
	ldrh	r3, [sp, #4]	@ movhi
	sxtb	r3, r3
	asrs	r3, r3, #4
	sxtb	r3, r3
	uxtb	r3, r3
	strb	r3, [sp, #14]
	.loc 1 5511 21
	ldr	r3, .L815
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5511 41
	ldr	r3, .L815
	ldr	r3, [r3]
	.loc 1 5511 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #57
	blx	r4
.LVL232:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5517 4
	ldrh	r3, [sp, #4]	@ movhi
	uxtb	r3, r3
	.loc 1 5516 18
	and	r3, r3, #14
	uxtb	r3, r3
	.loc 1 5516 16
	strb	r3, [sp, #14]
	.loc 1 5518 31
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #7
	sxtb	r2, r3
	.loc 1 5518 60
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #7
	sxtb	r3, r3
	.loc 1 5518 40
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5518 16
	strb	r3, [sp, #13]
	.loc 1 5520 22
	ldr	r3, .L815
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5520 41
	ldr	r3, .L815
	ldr	r3, [r3]
	.loc 1 5520 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #54
	blx	r4
.LVL233:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5520 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5526 4
	ldrh	r3, [sp, #4]	@ movhi
	uxtb	r3, r3
	.loc 1 5525 18
	and	r3, r3, #1
	uxtb	r3, r3
	.loc 1 5525 16
	strb	r3, [sp, #14]
	.loc 1 5527 31
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #1
	sxtb	r2, r3
	.loc 1 5527 60
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #1
	sxtb	r3, r3
	.loc 1 5527 40
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5527 16
	strb	r3, [sp, #13]
	.loc 1 5529 22
	ldr	r3, .L815
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5529 42
	ldr	r3, .L815
	ldr	r3, [r3]
	.loc 1 5529 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #58
	blx	r4
.LVL234:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5529 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5533 4
	b	.L813
.L810:
	.loc 1 5535 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 5536 4
	nop
.L813:
	.loc 1 5539 9
	ldrsb	r3, [sp, #15]
.L814:
	.loc 1 5540 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI320:
	@ sp needed
	pop	{r4, pc}
.L816:
	.align	2
.L815:
	.word	p_bmg160
.LFE106:
	.size	bmg160_set_offset, .-bmg160_set_offset
	.section	.text.bmg160_get_gp,"ax",%progbits
	.align	1
	.global	bmg160_get_gp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_gp, %function
bmg160_get_gp:
.LFB107:
	.loc 1 5564 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI321:
	sub	sp, sp, #16
.LCFI322:
	mov	r3, r0
	str	r1, [sp]
	strb	r3, [sp, #7]
	.loc 1 5566 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5567 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5569 15
	ldr	r3, .L826
	ldr	r3, [r3]
	.loc 1 5569 5
	cmp	r3, #0
	bne	.L818
	.loc 1 5570 10
	mvn	r3, #126
	b	.L824
.L818:
	.loc 1 5572 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L820
	cmp	r3, #1
	beq	.L821
	b	.L825
.L820:
	.loc 1 5575 21
	ldr	r3, .L826
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5575 40
	ldr	r3, .L826
	ldr	r3, [r3]
	.loc 1 5575 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #58
	blx	r4
.LVL235:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5579 37
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r2, r3
	.loc 1 5579 13
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 5581 4
	b	.L823
.L821:
	.loc 1 5583 21
	ldr	r3, .L826
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5583 40
	ldr	r3, .L826
	ldr	r3, [r3]
	.loc 1 5583 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #59
	blx	r4
.LVL236:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5587 13
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3]
	.loc 1 5588 4
	b	.L823
.L825:
	.loc 1 5590 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 5591 4
	nop
.L823:
	.loc 1 5594 9
	ldrsb	r3, [sp, #15]
.L824:
	.loc 1 5595 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI323:
	@ sp needed
	pop	{r4, pc}
.L827:
	.align	2
.L826:
	.word	p_bmg160
.LFE107:
	.size	bmg160_get_gp, .-bmg160_get_gp
	.section	.text.bmg160_set_gp,"ax",%progbits
	.align	1
	.global	bmg160_set_gp
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_gp, %function
bmg160_set_gp:
.LFB108:
	.loc 1 5619 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI324:
	sub	sp, sp, #16
.LCFI325:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 5621 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5622 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5624 15
	ldr	r3, .L837
	ldr	r3, [r3]
	.loc 1 5624 5
	cmp	r3, #0
	bne	.L829
	.loc 1 5625 10
	mvn	r3, #126
	b	.L835
.L829:
	.loc 1 5627 3
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L831
	cmp	r3, #1
	beq	.L832
	b	.L836
.L831:
	.loc 1 5630 21
	ldr	r3, .L837
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5630 40
	ldr	r3, .L837
	ldr	r3, [r3]
	.loc 1 5630 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #58
	blx	r4
.LVL237:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5634 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #15
	sxtb	r2, r3
	.loc 1 5634 46
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #4
	.loc 1 5634 36
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5634 14
	strb	r3, [sp, #14]
	.loc 1 5636 22
	ldr	r3, .L837
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5636 42
	ldr	r3, .L837
	ldr	r3, [r3]
	.loc 1 5636 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #58
	blx	r4
.LVL238:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5636 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 5640 4
	b	.L834
.L832:
	.loc 1 5642 14
	ldrb	r3, [sp, #6]
	strb	r3, [sp, #14]
	.loc 1 5643 21
	ldr	r3, .L837
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5643 41
	ldr	r3, .L837
	ldr	r3, [r3]
	.loc 1 5643 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #59
	blx	r4
.LVL239:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5647 4
	b	.L834
.L836:
	.loc 1 5649 11
	movs	r3, #254
	strb	r3, [sp, #15]
	.loc 1 5650 4
	nop
.L834:
	.loc 1 5653 9
	ldrsb	r3, [sp, #15]
.L835:
	.loc 1 5654 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI326:
	@ sp needed
	pop	{r4, pc}
.L838:
	.align	2
.L837:
	.word	p_bmg160
.LFE108:
	.size	bmg160_set_gp, .-bmg160_set_gp
	.section	.text.bmg160_get_FIFO_data_reg,"ax",%progbits
	.align	1
	.global	bmg160_get_FIFO_data_reg
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_FIFO_data_reg, %function
bmg160_get_FIFO_data_reg:
.LFB109:
	.loc 1 5673 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI327:
	sub	sp, sp, #16
.LCFI328:
	str	r0, [sp, #4]
	.loc 1 5675 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5676 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5678 15
	ldr	r3, .L843
	ldr	r3, [r3]
	.loc 1 5678 5
	cmp	r3, #0
	bne	.L840
	.loc 1 5679 10
	mvn	r3, #126
	b	.L842
.L840:
	.loc 1 5682 20
	ldr	r3, .L843
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5682 39
	ldr	r3, .L843
	ldr	r3, [r3]
	.loc 1 5682 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #63
	blx	r4
.LVL240:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5685 19
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 5687 9
	ldrsb	r3, [sp, #15]
.L842:
	.loc 1 5688 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI329:
	@ sp needed
	pop	{r4, pc}
.L844:
	.align	2
.L843:
	.word	p_bmg160
.LFE109:
	.size	bmg160_get_FIFO_data_reg, .-bmg160_get_FIFO_data_reg
	.section	.text.bmg160_get_fifo_stat_reg,"ax",%progbits
	.align	1
	.global	bmg160_get_fifo_stat_reg
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_fifo_stat_reg, %function
bmg160_get_fifo_stat_reg:
.LFB110:
	.loc 1 5707 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI330:
	sub	sp, sp, #16
.LCFI331:
	str	r0, [sp, #4]
	.loc 1 5709 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5710 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5712 15
	ldr	r3, .L849
	ldr	r3, [r3]
	.loc 1 5712 5
	cmp	r3, #0
	bne	.L846
	.loc 1 5713 10
	mvn	r3, #126
	b	.L848
.L846:
	.loc 1 5716 20
	ldr	r3, .L849
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5716 39
	ldr	r3, .L849
	ldr	r3, [r3]
	.loc 1 5716 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #14
	blx	r4
.LVL241:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5719 19
	ldrb	r2, [sp, #14]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 5721 9
	ldrsb	r3, [sp, #15]
.L848:
	.loc 1 5722 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI332:
	@ sp needed
	pop	{r4, pc}
.L850:
	.align	2
.L849:
	.word	p_bmg160
.LFE110:
	.size	bmg160_get_fifo_stat_reg, .-bmg160_get_fifo_stat_reg
	.section	.text.bmg160_get_fifo_frame_count,"ax",%progbits
	.align	1
	.global	bmg160_get_fifo_frame_count
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_fifo_frame_count, %function
bmg160_get_fifo_frame_count:
.LFB111:
	.loc 1 5739 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI333:
	sub	sp, sp, #16
.LCFI334:
	str	r0, [sp, #4]
	.loc 1 5741 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5742 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5744 15
	ldr	r3, .L855
	ldr	r3, [r3]
	.loc 1 5744 5
	cmp	r3, #0
	bne	.L852
	.loc 1 5745 10
	mvn	r3, #126
	b	.L854
.L852:
	.loc 1 5748 20
	ldr	r3, .L855
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5748 39
	ldr	r3, .L855
	ldr	r3, [r3]
	.loc 1 5748 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #14
	blx	r4
.LVL242:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5751 50
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	.loc 1 5751 26
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 5754 9
	ldrsb	r3, [sp, #15]
.L854:
	.loc 1 5755 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI335:
	@ sp needed
	pop	{r4, pc}
.L856:
	.align	2
.L855:
	.word	p_bmg160
.LFE111:
	.size	bmg160_get_fifo_frame_count, .-bmg160_get_fifo_frame_count
	.section	.text.bmg160_get_fifo_overrun,"ax",%progbits
	.align	1
	.global	bmg160_get_fifo_overrun
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_fifo_overrun, %function
bmg160_get_fifo_overrun:
.LFB112:
	.loc 1 5772 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI336:
	sub	sp, sp, #16
.LCFI337:
	str	r0, [sp, #4]
	.loc 1 5774 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5775 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5777 15
	ldr	r3, .L861
	ldr	r3, [r3]
	.loc 1 5777 5
	cmp	r3, #0
	bne	.L858
	.loc 1 5778 10
	mvn	r3, #126
	b	.L860
.L858:
	.loc 1 5781 20
	ldr	r3, .L861
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5781 39
	ldr	r3, .L861
	ldr	r3, [r3]
	.loc 1 5781 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #14
	blx	r4
.LVL243:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5784 46
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r2, r3
	.loc 1 5784 22
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 5787 9
	ldrsb	r3, [sp, #15]
.L860:
	.loc 1 5788 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI338:
	@ sp needed
	pop	{r4, pc}
.L862:
	.align	2
.L861:
	.word	p_bmg160
.LFE112:
	.size	bmg160_get_fifo_overrun, .-bmg160_get_fifo_overrun
	.section	.text.bmg160_get_fifo_mode,"ax",%progbits
	.align	1
	.global	bmg160_get_fifo_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_fifo_mode, %function
bmg160_get_fifo_mode:
.LFB113:
	.loc 1 5811 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI339:
	sub	sp, sp, #16
.LCFI340:
	str	r0, [sp, #4]
	.loc 1 5813 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5814 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5816 15
	ldr	r3, .L867
	ldr	r3, [r3]
	.loc 1 5816 5
	cmp	r3, #0
	bne	.L864
	.loc 1 5817 10
	mvn	r3, #126
	b	.L866
.L864:
	.loc 1 5820 20
	ldr	r3, .L867
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5820 39
	ldr	r3, .L867
	ldr	r3, [r3]
	.loc 1 5820 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #62
	blx	r4
.LVL244:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5823 43
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	lsrs	r3, r3, #6
	uxtb	r2, r3
	.loc 1 5823 19
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 5826 9
	ldrsb	r3, [sp, #15]
.L866:
	.loc 1 5827 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI341:
	@ sp needed
	pop	{r4, pc}
.L868:
	.align	2
.L867:
	.word	p_bmg160
.LFE113:
	.size	bmg160_get_fifo_mode, .-bmg160_get_fifo_mode
	.section	.text.bmg160_set_fifo_mode,"ax",%progbits
	.align	1
	.global	bmg160_set_fifo_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_fifo_mode, %function
bmg160_set_fifo_mode:
.LFB114:
	.loc 1 5850 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI342:
	sub	sp, sp, #16
.LCFI343:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 5852 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5853 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5855 15
	ldr	r3, .L875
	ldr	r3, [r3]
	.loc 1 5855 5
	cmp	r3, #0
	bne	.L870
	.loc 1 5856 10
	mvn	r3, #126
	b	.L874
.L870:
	.loc 1 5858 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L872
	.loc 1 5860 21
	ldr	r3, .L875
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5860 40
	ldr	r3, .L875
	ldr	r3, [r3]
	.loc 1 5860 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #62
	blx	r4
.LVL245:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5864 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #63
	sxtb	r2, r3
	.loc 1 5864 53
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #6
	.loc 1 5864 36
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5864 14
	strb	r3, [sp, #14]
	.loc 1 5866 22
	ldr	r3, .L875
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5866 42
	ldr	r3, .L875
	ldr	r3, [r3]
	.loc 1 5866 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #62
	blx	r4
.LVL246:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5866 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L873
.L872:
	.loc 1 5871 11
	movs	r3, #254
	strb	r3, [sp, #15]
.L873:
	.loc 1 5874 9
	ldrsb	r3, [sp, #15]
.L874:
	.loc 1 5875 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI344:
	@ sp needed
	pop	{r4, pc}
.L876:
	.align	2
.L875:
	.word	p_bmg160
.LFE114:
	.size	bmg160_set_fifo_mode, .-bmg160_set_fifo_mode
	.section	.text.bmg160_get_fifo_data_select,"ax",%progbits
	.align	1
	.global	bmg160_get_fifo_data_select
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_fifo_data_select, %function
bmg160_get_fifo_data_select:
.LFB115:
	.loc 1 5899 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI345:
	sub	sp, sp, #16
.LCFI346:
	str	r0, [sp, #4]
	.loc 1 5901 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5902 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5904 15
	ldr	r3, .L881
	ldr	r3, [r3]
	.loc 1 5904 5
	cmp	r3, #0
	bne	.L878
	.loc 1 5905 10
	mvn	r3, #126
	b	.L880
.L878:
	.loc 1 5908 20
	ldr	r3, .L881
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5908 39
	ldr	r3, .L881
	ldr	r3, [r3]
	.loc 1 5908 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #62
	blx	r4
.LVL247:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5911 50
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #3
	uxtb	r2, r3
	.loc 1 5911 26
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 5914 9
	ldrsb	r3, [sp, #15]
.L880:
	.loc 1 5915 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI347:
	@ sp needed
	pop	{r4, pc}
.L882:
	.align	2
.L881:
	.word	p_bmg160
.LFE115:
	.size	bmg160_get_fifo_data_select, .-bmg160_get_fifo_data_select
	.section	.text.bmg160_set_fifo_data_select,"ax",%progbits
	.align	1
	.global	bmg160_set_fifo_data_select
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_fifo_data_select, %function
bmg160_set_fifo_data_select:
.LFB116:
	.loc 1 5939 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI348:
	sub	sp, sp, #16
.LCFI349:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 5941 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5942 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5944 15
	ldr	r3, .L889
	ldr	r3, [r3]
	.loc 1 5944 5
	cmp	r3, #0
	bne	.L884
	.loc 1 5945 10
	mvn	r3, #126
	b	.L888
.L884:
	.loc 1 5947 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L886
	.loc 1 5950 21
	ldr	r3, .L889
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 5950 40
	ldr	r3, .L889
	ldr	r3, [r3]
	.loc 1 5950 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #62
	blx	r4
.LVL248:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 5954 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #3
	sxtb	r2, r3
	.loc 1 5954 66
	ldrsb	r3, [sp, #7]
	and	r3, r3, #3
	sxtb	r3, r3
	.loc 1 5954 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 5954 14
	strb	r3, [sp, #14]
	.loc 1 5957 22
	ldr	r3, .L889
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 5957 42
	ldr	r3, .L889
	ldr	r3, [r3]
	.loc 1 5957 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #62
	blx	r4
.LVL249:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 5957 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L887
.L886:
	.loc 1 5962 11
	movs	r3, #254
	strb	r3, [sp, #15]
.L887:
	.loc 1 5965 9
	ldrsb	r3, [sp, #15]
.L888:
	.loc 1 5966 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI350:
	@ sp needed
	pop	{r4, pc}
.L890:
	.align	2
.L889:
	.word	p_bmg160
.LFE116:
	.size	bmg160_set_fifo_data_select, .-bmg160_set_fifo_data_select
	.section	.text.bmg160_get_power_mode,"ax",%progbits
	.align	1
	.global	bmg160_get_power_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_power_mode, %function
bmg160_get_power_mode:
.LFB117:
	.loc 1 5990 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI351:
	sub	sp, sp, #16
.LCFI352:
	str	r0, [sp, #4]
	.loc 1 5992 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 5993 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 5994 5
	movs	r3, #0
	strb	r3, [sp, #12]
	.loc 1 5995 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 5997 15
	ldr	r3, .L901
	ldr	r3, [r3]
	.loc 1 5997 5
	cmp	r3, #0
	bne	.L892
	.loc 1 5998 10
	mvn	r3, #126
	b	.L900
.L892:
	.loc 1 6001 20
	ldr	r3, .L901
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6001 39
	ldr	r3, .L901
	ldr	r3, [r3]
	.loc 1 6001 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL250:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6004 21
	ldr	r3, .L901
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6004 40
	ldr	r3, .L901
	ldr	r3, [r3]
	.loc 1 6004 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL251:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6004 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6007 26
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	asrs	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #5
	uxtb	r3, r3
	.loc 1 6007 9
	strb	r3, [sp, #13]
	.loc 1 6008 26
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	asrs	r3, r3, #6
	uxtb	r3, r3
	.loc 1 6008 9
	and	r3, r3, #1
	strb	r3, [sp, #14]
	.loc 1 6009 26
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	lsrs	r3, r3, #7
	uxtb	r3, r3
	.loc 1 6009 9
	strb	r3, [sp, #12]
	.loc 1 6010 6
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L894
	.loc 1 6011 21
	ldr	r3, [sp, #4]
	movs	r2, #4
	strb	r2, [r3]
	b	.L895
.L894:
	.loc 1 6013 15
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 6013 7
	cmp	r3, #0
	bne	.L896
	.loc 1 6013 34 discriminator 1
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	.loc 1 6013 24 discriminator 1
	cmp	r3, #0
	bne	.L896
	.loc 1 6014 22
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3]
	b	.L895
.L896:
	.loc 1 6016 16
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 6016 8
	cmp	r3, #1
	beq	.L897
	.loc 1 6016 35 discriminator 1
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 6016 25 discriminator 1
	cmp	r3, #5
	bne	.L898
.L897:
	.loc 1 6017 23
	ldr	r3, [sp, #4]
	movs	r2, #1
	strb	r2, [r3]
	b	.L895
.L898:
	.loc 1 6020 17
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 6020 9
	cmp	r3, #4
	bne	.L899
	.loc 1 6021 13 discriminator 1
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	.loc 1 6020 26 discriminator 1
	cmp	r3, #0
	bne	.L899
	.loc 1 6022 24
	ldr	r3, [sp, #4]
	movs	r2, #2
	strb	r2, [r3]
	b	.L895
.L899:
	.loc 1 6025 17
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 6025 9
	cmp	r3, #4
	bne	.L895
	.loc 1 6026 14 discriminator 1
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	.loc 1 6025 26 discriminator 1
	cmp	r3, #1
	bne	.L895
	.loc 1 6027 25
	ldr	r3, [sp, #4]
	movs	r2, #3
	strb	r2, [r3]
.L895:
	.loc 1 6034 9
	ldrsb	r3, [sp, #15]
.L900:
	.loc 1 6035 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI353:
	@ sp needed
	pop	{r4, pc}
.L902:
	.align	2
.L901:
	.word	p_bmg160
.LFE117:
	.size	bmg160_get_power_mode, .-bmg160_get_power_mode
	.section	.text.bmg160_set_power_mode,"ax",%progbits
	.align	1
	.global	bmg160_set_power_mode
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_power_mode, %function
bmg160_set_power_mode:
.LFB118:
	.loc 1 6059 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI354:
	sub	sp, sp, #16
.LCFI355:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 6061 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6062 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6063 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 6064 5
	movs	r3, #0
	strb	r3, [sp, #12]
	.loc 1 6065 5
	movs	r3, #0
	strb	r3, [sp, #11]
	.loc 1 6066 5
	movs	r3, #0
	strb	r3, [sp, #10]
	.loc 1 6068 15
	ldr	r3, .L916
	ldr	r3, [r3]
	.loc 1 6068 5
	cmp	r3, #0
	bne	.L904
	.loc 1 6069 10
	mvn	r3, #126
	b	.L915
.L904:
	.loc 1 6071 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #4
	bhi	.L906
	.loc 1 6073 21
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6073 40
	ldr	r3, .L916
	ldr	r3, [r3]
	.loc 1 6073 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL252:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6077 22
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6077 41
	ldr	r3, .L916
	ldr	r3, [r3]
	.loc 1 6077 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL253:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6077 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6081 4
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #4
	bhi	.L914
	adr	r2, .L909
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L909:
	.word	.L913+1
	.word	.L912+1
	.word	.L911+1
	.word	.L910+1
	.word	.L908+1
	.p2align 1
.L913:
	.loc 1 6083 29
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #95
	uxtb	r3, r3
	.loc 1 6083 11
	strb	r3, [sp, #14]
	.loc 1 6085 29
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r3, r3
	.loc 1 6085 11
	strb	r3, [sp, #13]
	.loc 1 6088 29
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	bic	r3, r3, #64
	uxtb	r3, r3
	.loc 1 6088 11
	strb	r3, [sp, #12]
	.loc 1 6091 23
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 6091 43
	ldr	r3, .L916
	ldr	r3, [r3]
	.loc 1 6091 15
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL254:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6091 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6095 12
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	.loc 1 6095 4
	movs	r0, #1
	blx	r3
.LVL255:
	.loc 1 6098 22
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 6098 42
	ldr	r3, .L916
	ldr	r3, [r3]
	.loc 1 6098 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL256:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6098 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6102 5
	b	.L914
.L912:
	.loc 1 6104 20
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #95
	sxtb	r3, r3
	.loc 1 6104 29
	orr	r3, r3, #32
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6104 11
	strb	r3, [sp, #14]
	.loc 1 6107 29
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r3, r3
	.loc 1 6107 11
	strb	r3, [sp, #13]
	.loc 1 6110 29
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	bic	r3, r3, #64
	uxtb	r3, r3
	.loc 1 6110 11
	strb	r3, [sp, #12]
	.loc 1 6113 23
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 6113 43
	ldr	r3, .L916
	ldr	r3, [r3]
	.loc 1 6113 15
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL257:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6113 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6117 12
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	.loc 1 6117 4
	movs	r0, #1
	blx	r3
.LVL258:
	.loc 1 6120 22
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 6120 42
	ldr	r3, .L916
	ldr	r3, [r3]
	.loc 1 6120 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL259:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6120 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6124 5
	b	.L914
.L911:
	.loc 1 6126 20
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #95
	sxtb	r3, r3
	.loc 1 6126 29
	orn	r3, r3, #127
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6126 11
	strb	r3, [sp, #14]
	.loc 1 6128 29
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r3, r3
	.loc 1 6128 11
	strb	r3, [sp, #13]
	.loc 1 6131 29
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	bic	r3, r3, #64
	uxtb	r3, r3
	.loc 1 6131 11
	strb	r3, [sp, #12]
	.loc 1 6134 23
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 6134 43
	ldr	r3, .L916
	ldr	r3, [r3]
	.loc 1 6134 15
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL260:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6134 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6138 12
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	.loc 1 6138 4
	movs	r0, #1
	blx	r3
.LVL261:
	.loc 1 6141 22
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 6141 42
	ldr	r3, .L916
	ldr	r3, [r3]
	.loc 1 6141 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL262:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6141 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6145 5
	b	.L914
.L910:
	.loc 1 6147 20
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	and	r3, r3, #95
	sxtb	r3, r3
	.loc 1 6147 29
	orn	r3, r3, #127
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6147 11
	strb	r3, [sp, #14]
	.loc 1 6149 29
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	orn	r3, r3, #127
	uxtb	r3, r3
	.loc 1 6149 11
	strb	r3, [sp, #13]
	.loc 1 6152 29
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	bic	r3, r3, #64
	uxtb	r3, r3
	.loc 1 6152 11
	strb	r3, [sp, #12]
	.loc 1 6155 23
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 6155 43
	ldr	r3, .L916
	ldr	r3, [r3]
	.loc 1 6155 15
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL263:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6155 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6159 12
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	.loc 1 6159 4
	movs	r0, #1
	blx	r3
.LVL264:
	.loc 1 6162 22
	ldr	r3, .L916
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 6162 42
	ldr	r3, .L916
	ldr	r3, [r3]
	.loc 1 6162 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL265:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6162 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6166 5
	b	.L914
.L917:
	.align	2
.L916:
	.word	p_bmg160
.L908:
	.loc 1 6170 5
	add	r3, sp, #10
	mov	r0, r3
	bl	bmg160_get_bw
	.loc 1 6171 5
	add	r3, sp, #11
	mov	r0, r3
	bl	bmg160_get_auto_sleep_durn
	.loc 1 6173 5
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	ldrb	r2, [sp, #10]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	bmg160_set_auto_sleep_durn
	.loc 1 6175 23
	ldr	r3, .L918
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6175 42
	ldr	r3, .L918
	ldr	r3, [r3]
	.loc 1 6175 15
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL266:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6175 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6180 29
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #95
	uxtb	r3, r3
	.loc 1 6180 11
	strb	r3, [sp, #14]
	.loc 1 6182 29
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r3, r3
	.loc 1 6182 11
	strb	r3, [sp, #13]
	.loc 1 6185 29
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	orr	r3, r3, #64
	uxtb	r3, r3
	.loc 1 6185 11
	strb	r3, [sp, #12]
	.loc 1 6188 23
	ldr	r3, .L918
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 6188 43
	ldr	r3, .L918
	ldr	r3, [r3]
	.loc 1 6188 15
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL267:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6188 12
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6192 12
	ldr	r3, .L918
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	.loc 1 6192 4
	movs	r0, #1
	blx	r3
.LVL268:
	.loc 1 6195 22
	ldr	r3, .L918
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 6195 42
	ldr	r3, .L918
	ldr	r3, [r3]
	.loc 1 6195 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #12
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL269:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6195 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6199 5
	b	.L914
.L906:
	.loc 1 6202 10
	movs	r3, #254
	strb	r3, [sp, #15]
.L914:
	.loc 1 6205 9
	ldrsb	r3, [sp, #15]
.L915:
	.loc 1 6206 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI356:
	@ sp needed
	pop	{r4, pc}
.L919:
	.align	2
.L918:
	.word	p_bmg160
.LFE118:
	.size	bmg160_set_power_mode, .-bmg160_set_power_mode
	.section	.text.bmg160_selftest,"ax",%progbits
	.align	1
	.global	bmg160_selftest
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_selftest, %function
bmg160_selftest:
.LFB119:
	.loc 1 6226 2
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI357:
	sub	sp, sp, #16
.LCFI358:
	str	r0, [sp, #4]
	.loc 1 6228 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6229 5
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 6230 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6232 19
	ldr	r3, .L924
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6232 38
	ldr	r3, .L924
	ldr	r3, [r3]
	.loc 1 6232 11
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #60
	blx	r4
.LVL270:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6235 38
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	asrs	r3, r3, #4
	uxtb	r3, r3
	.loc 1 6235 13
	and	r3, r3, #1
	strb	r3, [sp, #14]
	.loc 1 6237 36
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	orr	r3, r3, #1
	uxtb	r3, r3
	.loc 1 6237 13
	strb	r3, [sp, #13]
	.loc 1 6240 20
	ldr	r3, .L924
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 6240 40
	ldr	r3, .L924
	ldr	r3, [r3]
	.loc 1 6240 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #60
	blx	r4
.LVL271:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6240 9
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6245 10
	ldr	r3, .L924
	ldr	r3, [r3]
	ldr	r3, [r3, #16]
	.loc 1 6245 2
	movs	r0, #10
	blx	r3
.LVL272:
	.loc 1 6248 20
	ldr	r3, .L924
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6248 39
	ldr	r3, .L924
	ldr	r3, [r3]
	.loc 1 6248 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #60
	blx	r4
.LVL273:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6248 9
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	.loc 1 6251 38
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	asrs	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r3, r3
	.loc 1 6251 13
	strb	r3, [sp, #13]
	.loc 1 6253 18
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	.loc 1 6253 5
	cmp	r3, #0
	bne	.L921
	.loc 1 6253 33 discriminator 1
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L921
	.loc 1 6255 16
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3]
	b	.L922
.L921:
	.loc 1 6257 16
	ldr	r3, [sp, #4]
	movs	r2, #1
	strb	r2, [r3]
.L922:
	.loc 1 6258 9
	ldrsb	r3, [sp, #15]
	.loc 1 6259 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI359:
	@ sp needed
	pop	{r4, pc}
.L925:
	.align	2
.L924:
	.word	p_bmg160
.LFE119:
	.size	bmg160_selftest, .-bmg160_selftest
	.section	.text.bmg160_get_auto_sleep_durn,"ax",%progbits
	.align	1
	.global	bmg160_get_auto_sleep_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_auto_sleep_durn, %function
bmg160_get_auto_sleep_durn:
.LFB120:
	.loc 1 6285 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI360:
	sub	sp, sp, #16
.LCFI361:
	str	r0, [sp, #4]
	.loc 1 6287 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6288 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6290 15
	ldr	r3, .L930
	ldr	r3, [r3]
	.loc 1 6290 5
	cmp	r3, #0
	bne	.L927
	.loc 1 6291 10
	mvn	r3, #126
	b	.L929
.L927:
	.loc 1 6294 20
	ldr	r3, .L930
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6294 39
	ldr	r3, .L930
	ldr	r3, [r3]
	.loc 1 6294 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL274:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6297 38
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #7
	uxtb	r2, r3
	.loc 1 6297 14
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 6300 9
	ldrsb	r3, [sp, #15]
.L929:
	.loc 1 6301 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI362:
	@ sp needed
	pop	{r4, pc}
.L931:
	.align	2
.L930:
	.word	p_bmg160
.LFE120:
	.size	bmg160_get_auto_sleep_durn, .-bmg160_get_auto_sleep_durn
	.section	.text.bmg160_set_auto_sleep_durn,"ax",%progbits
	.align	1
	.global	bmg160_set_auto_sleep_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_auto_sleep_durn, %function
bmg160_set_auto_sleep_durn:
.LFB121:
	.loc 1 6342 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI363:
	sub	sp, sp, #16
.LCFI364:
	mov	r3, r0
	mov	r2, r1
	strb	r3, [sp, #7]
	mov	r3, r2
	strb	r3, [sp, #6]
	.loc 1 6344 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6345 4
	movs	r3, #0
	strb	r3, [sp, #13]
	.loc 1 6346 4
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6348 14
	ldr	r3, .L968
	ldr	r3, [r3]
	.loc 1 6348 4
	cmp	r3, #0
	bne	.L933
	.loc 1 6349 9
	mvn	r3, #126
	b	.L966
.L933:
	.loc 1 6352 19
	ldr	r3, .L968
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6352 38
	ldr	r3, .L968
	ldr	r3, [r3]
	.loc 1 6352 11
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL275:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6356 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L935
	.loc 1 6357 4
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L936
	adr	r2, .L938
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L938:
	.word	.L945+1
	.word	.L944+1
	.word	.L943+1
	.word	.L942+1
	.word	.L941+1
	.word	.L940+1
	.word	.L939+1
	.word	.L937+1
	.p2align 1
.L945:
	.loc 1 6359 8
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L946
	.loc 1 6361 28
	ldrb	r3, [sp, #7]
	strb	r3, [sp, #14]
	.loc 1 6366 5
	b	.L948
.L946:
	.loc 1 6364 28
	movs	r3, #1
	strb	r3, [sp, #14]
	.loc 1 6366 5
	b	.L948
.L944:
	.loc 1 6368 8
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L949
	.loc 1 6370 28
	ldrb	r3, [sp, #7]
	strb	r3, [sp, #14]
	.loc 1 6375 5
	b	.L948
.L949:
	.loc 1 6373 28
	movs	r3, #1
	strb	r3, [sp, #14]
	.loc 1 6375 5
	b	.L948
.L943:
	.loc 1 6377 8
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L951
	.loc 1 6379 28
	ldrb	r3, [sp, #7]
	strb	r3, [sp, #14]
	.loc 1 6384 5
	b	.L948
.L951:
	.loc 1 6382 28
	movs	r3, #1
	strb	r3, [sp, #14]
	.loc 1 6384 5
	b	.L948
.L942:
	.loc 1 6386 8
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #2
	bls	.L953
	.loc 1 6388 28
	ldrb	r3, [sp, #7]
	strb	r3, [sp, #14]
	.loc 1 6393 5
	b	.L948
.L953:
	.loc 1 6391 28
	movs	r3, #2
	strb	r3, [sp, #14]
	.loc 1 6393 5
	b	.L948
.L941:
	.loc 1 6395 8
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #4
	bls	.L955
	.loc 1 6397 28
	ldrb	r3, [sp, #7]
	strb	r3, [sp, #14]
	.loc 1 6402 5
	b	.L948
.L955:
	.loc 1 6400 28
	movs	r3, #4
	strb	r3, [sp, #14]
	.loc 1 6402 5
	b	.L948
.L940:
	.loc 1 6404 8
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #6
	bls	.L957
	.loc 1 6406 28
	ldrb	r3, [sp, #7]
	strb	r3, [sp, #14]
	.loc 1 6411 5
	b	.L948
.L957:
	.loc 1 6409 27
	movs	r3, #6
	strb	r3, [sp, #14]
	.loc 1 6411 5
	b	.L948
.L939:
	.loc 1 6413 8
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #4
	bls	.L959
	.loc 1 6415 28
	ldrb	r3, [sp, #7]
	strb	r3, [sp, #14]
	.loc 1 6420 5
	b	.L948
.L959:
	.loc 1 6418 28
	movs	r3, #4
	strb	r3, [sp, #14]
	.loc 1 6420 5
	b	.L948
.L937:
	.loc 1 6422 8
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #6
	bls	.L961
	.loc 1 6424 28
	ldrb	r3, [sp, #7]
	strb	r3, [sp, #14]
	.loc 1 6429 5
	b	.L948
.L961:
	.loc 1 6427 28
	movs	r3, #6
	strb	r3, [sp, #14]
	.loc 1 6429 5
	b	.L948
.L936:
	.loc 1 6431 7
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L963
	.loc 1 6433 27
	ldrb	r3, [sp, #7]
	strb	r3, [sp, #14]
	.loc 1 6438 5
	b	.L967
.L963:
	.loc 1 6436 27
	movs	r3, #1
	strb	r3, [sp, #14]
.L967:
	.loc 1 6438 5
	nop
.L948:
	.loc 1 6440 26
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #7
	sxtb	r2, r3
	.loc 1 6440 65
	ldrsb	r3, [sp, #14]
	and	r3, r3, #7
	sxtb	r3, r3
	.loc 1 6440 35
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6440 13
	strb	r3, [sp, #13]
	.loc 1 6443 21
	ldr	r3, .L968
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 6443 41
	ldr	r3, .L968
	ldr	r3, [r3]
	.loc 1 6443 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #13
	movs	r3, #1
	movs	r1, #18
	blx	r4
.LVL276:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6443 10
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L965
.L935:
	.loc 1 6448 10
	movs	r3, #254
	strb	r3, [sp, #15]
.L965:
	.loc 1 6451 8
	ldrsb	r3, [sp, #15]
.L966:
	.loc 1 6452 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI365:
	@ sp needed
	pop	{r4, pc}
.L969:
	.align	2
.L968:
	.word	p_bmg160
.LFE121:
	.size	bmg160_set_auto_sleep_durn, .-bmg160_set_auto_sleep_durn
	.section	.text.bmg160_get_sleep_durn,"ax",%progbits
	.align	1
	.global	bmg160_get_sleep_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_get_sleep_durn, %function
bmg160_get_sleep_durn:
.LFB122:
	.loc 1 6479 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI366:
	sub	sp, sp, #16
.LCFI367:
	str	r0, [sp, #4]
	.loc 1 6481 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6482 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6484 15
	ldr	r3, .L974
	ldr	r3, [r3]
	.loc 1 6484 5
	cmp	r3, #0
	bne	.L971
	.loc 1 6485 10
	mvn	r3, #126
	b	.L973
.L971:
	.loc 1 6488 20
	ldr	r3, .L974
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6488 39
	ldr	r3, .L974
	ldr	r3, [r3]
	.loc 1 6488 12
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL277:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6491 38
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	asrs	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #7
	uxtb	r2, r3
	.loc 1 6491 14
	ldr	r3, [sp, #4]
	strb	r2, [r3]
	.loc 1 6494 9
	ldrsb	r3, [sp, #15]
.L973:
	.loc 1 6495 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI368:
	@ sp needed
	pop	{r4, pc}
.L975:
	.align	2
.L974:
	.word	p_bmg160
.LFE122:
	.size	bmg160_get_sleep_durn, .-bmg160_get_sleep_durn
	.section	.text.bmg160_set_sleep_durn,"ax",%progbits
	.align	1
	.global	bmg160_set_sleep_durn
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	bmg160_set_sleep_durn, %function
bmg160_set_sleep_durn:
.LFB123:
	.loc 1 6522 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI369:
	sub	sp, sp, #16
.LCFI370:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 1 6524 5
	movs	r3, #255
	strb	r3, [sp, #15]
	.loc 1 6525 5
	movs	r3, #0
	strb	r3, [sp, #14]
	.loc 1 6527 15
	ldr	r3, .L982
	ldr	r3, [r3]
	.loc 1 6527 5
	cmp	r3, #0
	bne	.L977
	.loc 1 6528 10
	mvn	r3, #126
	b	.L981
.L977:
	.loc 1 6530 6
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L979
	.loc 1 6532 21
	ldr	r3, .L982
	ldr	r3, [r3]
	ldr	r4, [r3, #12]
	.loc 1 6532 40
	ldr	r3, .L982
	ldr	r3, [r3]
	.loc 1 6532 13
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL278:
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 6536 27
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	sxtb	r3, r3
	bic	r3, r3, #14
	sxtb	r2, r3
	.loc 1 6536 48
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	lsls	r3, r3, #1
	.loc 1 6536 54
	sxtb	r3, r3
	and	r3, r3, #14
	sxtb	r3, r3
	.loc 1 6536 36
	orrs	r3, r3, r2
	sxtb	r3, r3
	uxtb	r3, r3
	.loc 1 6536 14
	strb	r3, [sp, #14]
	.loc 1 6538 22
	ldr	r3, .L982
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	.loc 1 6538 42
	ldr	r3, .L982
	ldr	r3, [r3]
	.loc 1 6538 14
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	r2, sp, #14
	movs	r3, #1
	movs	r1, #17
	blx	r4
.LVL279:
	mov	r3, r0
	uxtb	r2, r3
	.loc 1 6538 11
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	add	r3, r3, r2
	uxtb	r3, r3
	strb	r3, [sp, #15]
	b	.L980
.L979:
	.loc 1 6543 11
	movs	r3, #254
	strb	r3, [sp, #15]
.L980:
	.loc 1 6546 9
	ldrsb	r3, [sp, #15]
.L981:
	.loc 1 6547 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI371:
	@ sp needed
	pop	{r4, pc}
.L983:
	.align	2
.L982:
	.word	p_bmg160
.LFE123:
	.size	bmg160_set_sleep_durn, .-bmg160_set_sleep_durn
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
	.uleb128 0x18
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
	.uleb128 0x20
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
	.uleb128 0x20
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
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI74-.LCFI73
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI75-.LFB25
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI77-.LCFI76
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
	.4byte	.LCFI78-.LFB26
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI80-.LCFI79
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
	.4byte	.LCFI81-.LFB27
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI83-.LCFI82
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
	.4byte	.LCFI84-.LFB28
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI85-.LCFI84
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI86-.LCFI85
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
	.4byte	.LCFI87-.LFB29
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI88-.LCFI87
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI89-.LCFI88
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
	.4byte	.LCFI90-.LFB30
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI91-.LCFI90
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI92-.LCFI91
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
	.4byte	.LCFI93-.LFB31
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI94-.LCFI93
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI95-.LCFI94
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
	.4byte	.LCFI96-.LFB32
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI97-.LCFI96
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI98-.LCFI97
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
	.4byte	.LCFI99-.LFB33
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI100-.LCFI99
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI101-.LCFI100
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE66:
.LSFDE68:
	.4byte	.LEFDE68-.LASFDE68
.LASFDE68:
	.4byte	.Lframe0
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.byte	0x4
	.4byte	.LCFI102-.LFB34
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI103-.LCFI102
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI104-.LCFI103
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
	.4byte	.LCFI105-.LFB35
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI106-.LCFI105
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI107-.LCFI106
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
	.4byte	.LCFI108-.LFB36
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI109-.LCFI108
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI110-.LCFI109
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
	.4byte	.LCFI111-.LFB37
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI112-.LCFI111
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI113-.LCFI112
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
	.4byte	.LCFI114-.LFB38
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI115-.LCFI114
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI116-.LCFI115
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
	.4byte	.LCFI117-.LFB39
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI118-.LCFI117
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI119-.LCFI118
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
	.4byte	.LCFI120-.LFB40
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI121-.LCFI120
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI122-.LCFI121
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
	.4byte	.LCFI123-.LFB41
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI124-.LCFI123
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI125-.LCFI124
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
	.4byte	.LCFI126-.LFB42
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI127-.LCFI126
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI128-.LCFI127
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
	.4byte	.LCFI129-.LFB43
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI130-.LCFI129
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI131-.LCFI130
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
	.4byte	.LCFI132-.LFB44
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI133-.LCFI132
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI134-.LCFI133
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
	.4byte	.LCFI135-.LFB45
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI136-.LCFI135
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI137-.LCFI136
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
	.4byte	.LCFI138-.LFB46
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI139-.LCFI138
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI140-.LCFI139
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
	.4byte	.LCFI141-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI142-.LCFI141
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI143-.LCFI142
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
	.4byte	.LCFI144-.LFB48
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI145-.LCFI144
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI146-.LCFI145
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
	.4byte	.LCFI147-.LFB49
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI148-.LCFI147
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI149-.LCFI148
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
	.4byte	.LCFI150-.LFB50
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI151-.LCFI150
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI152-.LCFI151
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
	.4byte	.LCFI153-.LFB51
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI154-.LCFI153
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI155-.LCFI154
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
	.4byte	.LCFI156-.LFB52
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI157-.LCFI156
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI158-.LCFI157
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
	.4byte	.LCFI159-.LFB53
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI160-.LCFI159
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI161-.LCFI160
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
	.4byte	.LCFI162-.LFB54
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI163-.LCFI162
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI164-.LCFI163
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
	.4byte	.LCFI165-.LFB55
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI166-.LCFI165
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI167-.LCFI166
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
	.4byte	.LCFI168-.LFB56
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI169-.LCFI168
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI170-.LCFI169
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
	.4byte	.LCFI171-.LFB57
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI172-.LCFI171
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI173-.LCFI172
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
	.4byte	.LCFI174-.LFB58
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI175-.LCFI174
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI176-.LCFI175
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
	.4byte	.LCFI177-.LFB59
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI178-.LCFI177
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI179-.LCFI178
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
	.4byte	.LCFI180-.LFB60
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI181-.LCFI180
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI182-.LCFI181
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
	.4byte	.LCFI183-.LFB61
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI184-.LCFI183
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI185-.LCFI184
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
	.4byte	.LCFI186-.LFB62
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI187-.LCFI186
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI188-.LCFI187
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
	.4byte	.LCFI189-.LFB63
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI190-.LCFI189
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI191-.LCFI190
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
	.4byte	.LCFI192-.LFB64
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI193-.LCFI192
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI194-.LCFI193
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
	.4byte	.LCFI195-.LFB65
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI196-.LCFI195
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI197-.LCFI196
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
	.4byte	.LCFI198-.LFB66
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI199-.LCFI198
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI200-.LCFI199
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
	.4byte	.LCFI201-.LFB67
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI202-.LCFI201
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI203-.LCFI202
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
	.4byte	.LCFI204-.LFB68
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI205-.LCFI204
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI206-.LCFI205
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
	.4byte	.LCFI207-.LFB69
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI208-.LCFI207
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI209-.LCFI208
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
	.4byte	.LCFI210-.LFB70
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI211-.LCFI210
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI212-.LCFI211
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
	.4byte	.LCFI213-.LFB71
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI214-.LCFI213
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI215-.LCFI214
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
	.4byte	.LCFI216-.LFB72
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI217-.LCFI216
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI218-.LCFI217
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
	.4byte	.LCFI219-.LFB73
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI220-.LCFI219
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI221-.LCFI220
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
	.4byte	.LCFI222-.LFB74
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI223-.LCFI222
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI224-.LCFI223
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
	.4byte	.LCFI225-.LFB75
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI226-.LCFI225
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI227-.LCFI226
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
	.4byte	.LCFI228-.LFB76
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI229-.LCFI228
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI230-.LCFI229
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
	.4byte	.LCFI231-.LFB77
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI232-.LCFI231
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI233-.LCFI232
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
	.4byte	.LCFI234-.LFB78
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI235-.LCFI234
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI236-.LCFI235
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
	.4byte	.LCFI237-.LFB79
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI238-.LCFI237
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI239-.LCFI238
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
	.4byte	.LCFI240-.LFB80
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI241-.LCFI240
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI242-.LCFI241
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
	.4byte	.LCFI243-.LFB81
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI244-.LCFI243
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI245-.LCFI244
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE162:
.LSFDE164:
	.4byte	.LEFDE164-.LASFDE164
.LASFDE164:
	.4byte	.Lframe0
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.byte	0x4
	.4byte	.LCFI246-.LFB82
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI247-.LCFI246
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI248-.LCFI247
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
	.4byte	.LCFI249-.LFB83
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI250-.LCFI249
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI251-.LCFI250
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
	.4byte	.LCFI252-.LFB84
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI253-.LCFI252
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI254-.LCFI253
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
	.4byte	.LCFI255-.LFB85
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI256-.LCFI255
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI257-.LCFI256
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
	.4byte	.LCFI258-.LFB86
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI259-.LCFI258
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI260-.LCFI259
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
	.4byte	.LCFI261-.LFB87
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI262-.LCFI261
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI263-.LCFI262
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
	.4byte	.LCFI264-.LFB88
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI265-.LCFI264
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI266-.LCFI265
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
	.4byte	.LCFI267-.LFB89
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI268-.LCFI267
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI269-.LCFI268
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
	.4byte	.LCFI270-.LFB90
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI271-.LCFI270
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI272-.LCFI271
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
	.4byte	.LCFI273-.LFB91
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI274-.LCFI273
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI275-.LCFI274
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
	.4byte	.LCFI276-.LFB92
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI277-.LCFI276
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI278-.LCFI277
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
	.4byte	.LCFI279-.LFB93
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI280-.LCFI279
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI281-.LCFI280
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
	.4byte	.LCFI282-.LFB94
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI283-.LCFI282
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI284-.LCFI283
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
	.4byte	.LCFI285-.LFB95
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI286-.LCFI285
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI287-.LCFI286
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
	.4byte	.LCFI288-.LFB96
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI289-.LCFI288
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI290-.LCFI289
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
	.4byte	.LCFI291-.LFB97
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI292-.LCFI291
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI293-.LCFI292
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
	.4byte	.LCFI294-.LFB98
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI295-.LCFI294
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI296-.LCFI295
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
	.4byte	.LCFI297-.LFB99
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI298-.LCFI297
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI299-.LCFI298
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
	.4byte	.LCFI300-.LFB100
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI301-.LCFI300
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI302-.LCFI301
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
	.4byte	.LCFI303-.LFB101
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI304-.LCFI303
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI305-.LCFI304
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
	.4byte	.LCFI306-.LFB102
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI307-.LCFI306
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI308-.LCFI307
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
	.4byte	.LCFI309-.LFB103
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI310-.LCFI309
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI311-.LCFI310
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
	.4byte	.LCFI312-.LFB104
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI313-.LCFI312
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI314-.LCFI313
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
	.4byte	.LCFI315-.LFB105
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI316-.LCFI315
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI317-.LCFI316
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
	.4byte	.LCFI318-.LFB106
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI319-.LCFI318
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI320-.LCFI319
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
	.4byte	.LCFI321-.LFB107
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI322-.LCFI321
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI323-.LCFI322
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
	.4byte	.LCFI324-.LFB108
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI325-.LCFI324
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI326-.LCFI325
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
	.4byte	.LCFI327-.LFB109
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI328-.LCFI327
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI329-.LCFI328
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
	.4byte	.LCFI330-.LFB110
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI331-.LCFI330
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI332-.LCFI331
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
	.4byte	.LCFI333-.LFB111
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI334-.LCFI333
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI335-.LCFI334
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
	.4byte	.LCFI336-.LFB112
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI337-.LCFI336
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI338-.LCFI337
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
	.4byte	.LCFI339-.LFB113
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI340-.LCFI339
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI341-.LCFI340
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
	.4byte	.LCFI342-.LFB114
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI343-.LCFI342
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI344-.LCFI343
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
	.4byte	.LCFI345-.LFB115
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI346-.LCFI345
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI347-.LCFI346
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
	.4byte	.LCFI348-.LFB116
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI349-.LCFI348
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI350-.LCFI349
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
	.4byte	.LCFI351-.LFB117
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI352-.LCFI351
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI353-.LCFI352
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
	.4byte	.LCFI354-.LFB118
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI355-.LCFI354
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI356-.LCFI355
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
	.4byte	.LCFI357-.LFB119
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI358-.LCFI357
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI359-.LCFI358
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
	.4byte	.LCFI360-.LFB120
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI361-.LCFI360
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI362-.LCFI361
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
	.4byte	.LCFI363-.LFB121
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI364-.LCFI363
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI365-.LCFI364
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
	.4byte	.LCFI366-.LFB122
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI367-.LCFI366
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI368-.LCFI367
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
	.4byte	.LCFI369-.LFB123
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI370-.LCFI369
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI371-.LCFI370
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE246:
	.text
.Letext0:
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\drivers\\bmg160.h"
	.section	.debug_types,"G",%progbits,wt.95b6118cc39f84dd,comdat
	.4byte	0x12a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x95
	.byte	0xb6
	.byte	0x11
	.byte	0x8c
	.byte	0xc3
	.byte	0x9f
	.byte	0x84
	.byte	0xdd
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x14
	.byte	0x2
	.2byte	0x6a7
	.byte	0x8
	.4byte	0x80
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x6a8
	.byte	0x5
	.4byte	0x80
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.2byte	0x6a9
	.byte	0x5
	.4byte	0x80
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.2byte	0x6ab
	.byte	0x7
	.4byte	0x8c
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.2byte	0x6ac
	.byte	0x7
	.4byte	0x92
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.2byte	0x6ad
	.byte	0x7
	.4byte	0x92
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.2byte	0x6ae
	.byte	0x9
	.4byte	0x98
	.byte	0x10
	.byte	0
	.uleb128 0x4
	.ascii	"u8\000"
	.byte	0x2
	.2byte	0x109
	.byte	0x17
	.4byte	0x9e
	.uleb128 0x5
	.byte	0x4
	.4byte	0xa5
	.uleb128 0x5
	.byte	0x4
	.4byte	0xc3
	.uleb128 0x5
	.byte	0x4
	.4byte	0xe1
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x7
	.4byte	0xec
	.4byte	0xc3
	.uleb128 0x8
	.4byte	0x80
	.uleb128 0x8
	.4byte	0x80
	.uleb128 0x8
	.4byte	0xf8
	.uleb128 0x8
	.4byte	0xfe
	.byte	0
	.uleb128 0x7
	.4byte	0xec
	.4byte	0xe1
	.uleb128 0x8
	.4byte	0x80
	.uleb128 0x8
	.4byte	0x80
	.uleb128 0x8
	.4byte	0xf8
	.uleb128 0x8
	.4byte	0x80
	.byte	0
	.uleb128 0x9
	.4byte	0xec
	.uleb128 0x8
	.4byte	0x10b
	.byte	0
	.uleb128 0x4
	.ascii	"s8\000"
	.byte	0x2
	.2byte	0x103
	.byte	0x15
	.4byte	0x118
	.uleb128 0x5
	.byte	0x4
	.4byte	0x80
	.uleb128 0x4
	.ascii	"s32\000"
	.byte	0x2
	.2byte	0x105
	.byte	0x14
	.4byte	0x11f
	.uleb128 0x4
	.ascii	"u32\000"
	.byte	0x2
	.2byte	0x10b
	.byte	0x16
	.4byte	0x126
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0
	.section	.debug_types,"G",%progbits,wt.ed6915408fd89689,comdat
	.4byte	0x93
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xed
	.byte	0x69
	.byte	0x15
	.byte	0x40
	.byte	0x8f
	.byte	0xd8
	.byte	0x96
	.byte	0x89
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0xc
	.byte	0x2
	.2byte	0x694
	.byte	0x8
	.4byte	0x64
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x2
	.2byte	0x695
	.byte	0x6
	.4byte	0x64
	.byte	0
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x2
	.2byte	0x696
	.byte	0x6
	.4byte	0x64
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x697
	.byte	0x6
	.4byte	0x64
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x698
	.byte	0x7
	.4byte	0x71
	.byte	0x6
	.byte	0
	.uleb128 0x4
	.ascii	"s16\000"
	.byte	0x2
	.2byte	0x104
	.byte	0x1a
	.4byte	0x81
	.uleb128 0xb
	.4byte	0x88
	.4byte	0x81
	.uleb128 0xc
	.4byte	0x8f
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.byte	0
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x28e4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0xd
	.4byte	.LASF233
	.byte	0xc
	.4byte	.LASF234
	.4byte	.LASF235
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x4
	.ascii	"s8\000"
	.byte	0x2
	.2byte	0x103
	.byte	0x15
	.4byte	0x35
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF7
	.uleb128 0x4
	.ascii	"s16\000"
	.byte	0x2
	.2byte	0x104
	.byte	0x1a
	.4byte	0x49
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF15
	.uleb128 0x4
	.ascii	"s32\000"
	.byte	0x2
	.2byte	0x105
	.byte	0x14
	.4byte	0x5d
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF17
	.uleb128 0x4
	.ascii	"u8\000"
	.byte	0x2
	.2byte	0x109
	.byte	0x17
	.4byte	0x77
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF6
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF18
	.uleb128 0x4
	.ascii	"u32\000"
	.byte	0x2
	.2byte	0x10b
	.byte	0x16
	.4byte	0x92
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF8
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF19
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF16
	.uleb128 0x5
	.byte	0x4
	.4byte	0x6b
	.uleb128 0xe
	.4byte	.LASF20
	.byte	0x1
	.byte	0x37
	.byte	0x19
	.4byte	0xbf
	.uleb128 0x5
	.byte	0x3
	.4byte	p_bmg160
	.uleb128 0xf
	.byte	0x4
	.byte	0x95
	.byte	0xb6
	.byte	0x11
	.byte	0x8c
	.byte	0xc3
	.byte	0x9f
	.byte	0x84
	.byte	0xdd
	.uleb128 0x10
	.4byte	.LASF23
	.byte	0x1
	.2byte	0x1979
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB123
	.4byte	.LFE123-.LFB123
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x115
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x1979
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x197c
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x197d
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF24
	.byte	0x1
	.2byte	0x194e
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB122
	.4byte	.LFE122-.LFB122
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x161
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x194e
	.byte	0x1e
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1951
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1952
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF26
	.byte	0x1
	.2byte	0x18c4
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB121
	.4byte	.LFE121-.LFB121
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cd
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x18c4
	.byte	0x22
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x18c5
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x18c8
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x18c9
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x12
	.4byte	.LASF28
	.byte	0x1
	.2byte	0x18ca
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF29
	.byte	0x1
	.2byte	0x188c
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB120
	.4byte	.LFE120-.LFB120
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x219
	.uleb128 0x11
	.4byte	.LASF25
	.byte	0x1
	.2byte	0x188c
	.byte	0x23
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x188f
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1890
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF30
	.byte	0x1
	.2byte	0x1851
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB119
	.4byte	.LFE119-.LFB119
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x275
	.uleb128 0x11
	.4byte	.LASF31
	.byte	0x1
	.2byte	0x1851
	.byte	0x18
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1854
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0x1855
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x12
	.4byte	.LASF33
	.byte	0x1
	.2byte	0x1856
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.2byte	0x17aa
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB118
	.4byte	.LFE118-.LFB118
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x301
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x17aa
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x17ad
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x17ae
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x17af
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x17b0
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF39
	.byte	0x1
	.2byte	0x17b1
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x12
	.4byte	.LASF40
	.byte	0x1
	.2byte	0x17b2
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -14
	.byte	0
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x1
	.2byte	0x1765
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB117
	.4byte	.LFE117-.LFB117
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x36d
	.uleb128 0x11
	.4byte	.LASF35
	.byte	0x1
	.2byte	0x1765
	.byte	0x1e
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1768
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF36
	.byte	0x1
	.2byte	0x1769
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x12
	.4byte	.LASF37
	.byte	0x1
	.2byte	0x176a
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x12
	.4byte	.LASF38
	.byte	0x1
	.2byte	0x176b
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1731
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB116
	.4byte	.LFE116-.LFB116
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3b9
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x1732
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1735
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1736
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF44
	.byte	0x1
	.2byte	0x1709
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB115
	.4byte	.LFE115-.LFB115
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x405
	.uleb128 0x11
	.4byte	.LASF43
	.byte	0x1
	.2byte	0x170a
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x170d
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x170e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF45
	.byte	0x1
	.2byte	0x16d9
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB114
	.4byte	.LFE114-.LFB114
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x451
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x16d9
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x16dc
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x16dd
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF47
	.byte	0x1
	.2byte	0x16b2
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB113
	.4byte	.LFE113-.LFB113
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x49d
	.uleb128 0x11
	.4byte	.LASF46
	.byte	0x1
	.2byte	0x16b2
	.byte	0x1d
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x16b5
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x16b6
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF48
	.byte	0x1
	.2byte	0x168a
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB112
	.4byte	.LFE112-.LFB112
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e9
	.uleb128 0x11
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x168b
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x168e
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x168f
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF50
	.byte	0x1
	.2byte	0x1669
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB111
	.4byte	.LFE111-.LFB111
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x535
	.uleb128 0x11
	.4byte	.LASF51
	.byte	0x1
	.2byte	0x166a
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x166d
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x166e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x1
	.2byte	0x1649
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB110
	.4byte	.LFE110-.LFB110
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x581
	.uleb128 0x11
	.4byte	.LASF53
	.byte	0x1
	.2byte	0x164a
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x164d
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x164e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x1628
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB109
	.4byte	.LFE109-.LFB109
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5cd
	.uleb128 0x11
	.4byte	.LASF55
	.byte	0x1
	.2byte	0x1628
	.byte	0x21
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x162b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x162c
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x1
	.2byte	0x15f1
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB108
	.4byte	.LFE108-.LFB108
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x629
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x15f1
	.byte	0x15
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x15f2
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x15f5
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x15f6
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF59
	.byte	0x1
	.2byte	0x15ba
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB107
	.4byte	.LFE107-.LFB107
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x685
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x15ba
	.byte	0x15
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF58
	.byte	0x1
	.2byte	0x15bb
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x15be
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x15bf
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF60
	.byte	0x1
	.2byte	0x1540
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB106
	.4byte	.LFE106-.LFB106
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6f1
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x1541
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x1541
	.byte	0x13
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1544
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x1545
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x1546
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.uleb128 0x10
	.4byte	.LASF65
	.byte	0x1
	.2byte	0x14c0
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB105
	.4byte	.LFE105-.LFB105
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x75d
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x14c0
	.byte	0x19
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF62
	.byte	0x1
	.2byte	0x14c1
	.byte	0x6
	.4byte	0x75d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x14c4
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF63
	.byte	0x1
	.2byte	0x14c5
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x12
	.4byte	.LASF64
	.byte	0x1
	.2byte	0x14c6
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x3c
	.uleb128 0x10
	.4byte	.LASF66
	.byte	0x1
	.2byte	0x1483
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB104
	.4byte	.LFE104-.LFB104
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7af
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1484
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1487
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1488
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF68
	.byte	0x1
	.2byte	0x1461
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB103
	.4byte	.LFE103-.LFB103
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7fb
	.uleb128 0x11
	.4byte	.LASF67
	.byte	0x1
	.2byte	0x1462
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1465
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1466
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF69
	.byte	0x1
	.2byte	0x1436
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB102
	.4byte	.LFE102-.LFB102
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x847
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1436
	.byte	0x1b
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1439
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x143a
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF71
	.byte	0x1
	.2byte	0x1412
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB101
	.4byte	.LFE101-.LFB101
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x893
	.uleb128 0x11
	.4byte	.LASF70
	.byte	0x1
	.2byte	0x1412
	.byte	0x1c
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1415
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1416
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF72
	.byte	0x1
	.2byte	0x13ec
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB100
	.4byte	.LFE100-.LFB100
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x8df
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x13ec
	.byte	0x17
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x13ef
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x13f0
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x13c6
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB99
	.4byte	.LFE99-.LFB99
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92b
	.uleb128 0x11
	.4byte	.LASF73
	.byte	0x1
	.2byte	0x13c6
	.byte	0x18
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x13c9
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x13ca
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x1387
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB98
	.4byte	.LFE98-.LFB98
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x987
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1387
	.byte	0x1a
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x1388
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x138b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x138c
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x134b
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB97
	.4byte	.LFE97-.LFB97
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e3
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x134b
	.byte	0x1a
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x134c
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x134f
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1350
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x131e
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB96
	.4byte	.LFE96-.LFB96
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa2f
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x131e
	.byte	0x20
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1321
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1322
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x12fb
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB95
	.4byte	.LFE95-.LFB95
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xa7b
	.uleb128 0x11
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x12fb
	.byte	0x21
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x12fe
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x12ff
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x12d5
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB94
	.4byte	.LFE94-.LFB94
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xac7
	.uleb128 0x11
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x12d5
	.byte	0x20
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x12d8
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x12d9
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x12b3
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB93
	.4byte	.LFE93-.LFB93
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb13
	.uleb128 0x11
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x12b3
	.byte	0x1b
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x12b6
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x12b7
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x128d
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB92
	.4byte	.LFE92-.LFB92
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xb5f
	.uleb128 0x11
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x128d
	.byte	0x1b
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1290
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1291
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x126a
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB91
	.4byte	.LFE91-.LFB91
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbab
	.uleb128 0x11
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x126a
	.byte	0x1e
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x126d
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x126e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x1222
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB90
	.4byte	.LFE90-.LFB90
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc07
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1223
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x1223
	.byte	0x15
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1226
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1227
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x11f1
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB89
	.4byte	.LFE89-.LFB89
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc53
	.uleb128 0x11
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x11f2
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x11f5
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x11f6
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x11c5
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB88
	.4byte	.LFE88-.LFB88
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8f
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x11c8
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x11c9
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x118d
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB87
	.4byte	.LFE87-.LFB87
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xceb
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x118e
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x118e
	.byte	0x15
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1191
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1192
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x114e
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB86
	.4byte	.LFE86-.LFB86
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd47
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x114e
	.byte	0x25
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x114f
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1152
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1153
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x10fb
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB85
	.4byte	.LFE85-.LFB85
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xda3
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x10fc
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x10fc
	.byte	0x15
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x10ff
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1100
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x10b5
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB84
	.4byte	.LFE84-.LFB84
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xdff
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x10b6
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x10b6
	.byte	0x16
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x10b9
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x10ba
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1084
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB83
	.4byte	.LFE83-.LFB83
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe4b
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x1085
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1088
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1089
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x1059
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB82
	.4byte	.LFE82-.LFB82
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe97
	.uleb128 0x11
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x105a
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x105d
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x105e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x102c
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB81
	.4byte	.LFE81-.LFB81
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xee3
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x102c
	.byte	0x24
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x102f
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1030
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x1004
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB80
	.4byte	.LFE80-.LFB80
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf2f
	.uleb128 0x11
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x1005
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1008
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1009
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF106
	.byte	0x1
	.2byte	0xfc7
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB79
	.4byte	.LFE79-.LFB79
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf8b
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xfc7
	.byte	0x25
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x1
	.2byte	0xfc8
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xfcb
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xfcc
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF108
	.byte	0x1
	.2byte	0xf83
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB78
	.4byte	.LFE78-.LFB78
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfe7
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xf83
	.byte	0x25
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF107
	.byte	0x1
	.2byte	0xf84
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xf87
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xf88
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF109
	.byte	0x1
	.2byte	0xf30
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB77
	.4byte	.LFE77-.LFB77
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1043
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xf30
	.byte	0x27
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0x1
	.2byte	0xf31
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xf34
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xf35
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF111
	.byte	0x1
	.2byte	0xeeb
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB76
	.4byte	.LFE76-.LFB76
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x109f
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xeeb
	.byte	0x27
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF110
	.byte	0x1
	.2byte	0xeec
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xeef
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xef0
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF112
	.byte	0x1
	.2byte	0xe9a
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB75
	.4byte	.LFE75-.LFB75
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10fb
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xe9a
	.byte	0x21
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0x1
	.2byte	0xe9b
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xe9e
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xe9f
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF114
	.byte	0x1
	.2byte	0xe56
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB74
	.4byte	.LFE74-.LFB74
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1157
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xe56
	.byte	0x21
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF113
	.byte	0x1
	.2byte	0xe57
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xe5a
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xe5b
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF115
	.byte	0x1
	.2byte	0xe06
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB73
	.4byte	.LFE73-.LFB73
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11b3
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xe06
	.byte	0x20
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0x1
	.2byte	0xe07
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xe0a
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xe0b
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF117
	.byte	0x1
	.2byte	0xdc2
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB72
	.4byte	.LFE72-.LFB72
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x120f
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xdc2
	.byte	0x20
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF116
	.byte	0x1
	.2byte	0xdc3
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xdc6
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xdc7
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF118
	.byte	0x1
	.2byte	0xd94
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB71
	.4byte	.LFE71-.LFB71
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x125b
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0x1
	.2byte	0xd94
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xd97
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xd98
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF120
	.byte	0x1
	.2byte	0xd61
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB70
	.4byte	.LFE70-.LFB70
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12a7
	.uleb128 0x11
	.4byte	.LASF119
	.byte	0x1
	.2byte	0xd61
	.byte	0x1e
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xd64
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xd65
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF121
	.byte	0x1
	.2byte	0xd2a
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB69
	.4byte	.LFE69-.LFB69
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12f3
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0x1
	.2byte	0xd2b
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xd2e
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xd2f
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF123
	.byte	0x1
	.2byte	0xd03
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB68
	.4byte	.LFE68-.LFB68
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x133f
	.uleb128 0x11
	.4byte	.LASF122
	.byte	0x1
	.2byte	0xd04
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xd07
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xd08
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF124
	.byte	0x1
	.2byte	0xcd9
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB67
	.4byte	.LFE67-.LFB67
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x138b
	.uleb128 0x11
	.4byte	.LASF125
	.byte	0x1
	.2byte	0xcda
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xcdd
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xcde
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF126
	.byte	0x1
	.2byte	0xcb3
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB66
	.4byte	.LFE66-.LFB66
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13d7
	.uleb128 0x11
	.4byte	.LASF127
	.byte	0x1
	.2byte	0xcb3
	.byte	0x1b
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xcb6
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xcb7
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF128
	.byte	0x1
	.2byte	0xc86
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB65
	.4byte	.LFE65-.LFB65
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1423
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0x1
	.2byte	0xc87
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xc8a
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xc8b
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF130
	.byte	0x1
	.2byte	0xc61
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB64
	.4byte	.LFE64-.LFB64
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x146f
	.uleb128 0x11
	.4byte	.LASF129
	.byte	0x1
	.2byte	0xc62
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xc65
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xc66
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF131
	.byte	0x1
	.2byte	0xc15
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB63
	.4byte	.LFE63-.LFB63
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x14cb
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xc15
	.byte	0x29
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0x1
	.2byte	0xc16
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xc19
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xc1a
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF133
	.byte	0x1
	.2byte	0xbd0
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB62
	.4byte	.LFE62-.LFB62
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1527
	.uleb128 0x11
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xbd0
	.byte	0x29
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF132
	.byte	0x1
	.2byte	0xbd1
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xbd4
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF32
	.byte	0x1
	.2byte	0xbd5
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF134
	.byte	0x1
	.2byte	0xb9e
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB61
	.4byte	.LFE61-.LFB61
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1573
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0x1
	.2byte	0xb9f
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xba2
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xba3
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF136
	.byte	0x1
	.2byte	0xb77
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB60
	.4byte	.LFE60-.LFB60
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15bf
	.uleb128 0x11
	.4byte	.LASF135
	.byte	0x1
	.2byte	0xb78
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xb7b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xb7c
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF137
	.byte	0x1
	.2byte	0xb4e
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB59
	.4byte	.LFE59-.LFB59
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x160b
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0x1
	.2byte	0xb4e
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xb51
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xb52
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF139
	.byte	0x1
	.2byte	0xb28
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB58
	.4byte	.LFE58-.LFB58
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1657
	.uleb128 0x11
	.4byte	.LASF138
	.byte	0x1
	.2byte	0xb28
	.byte	0x1e
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xb2b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xb2c
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF140
	.byte	0x1
	.2byte	0xafe
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB57
	.4byte	.LFE57-.LFB57
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16a3
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0x1
	.2byte	0xaff
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xb02
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xb03
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF142
	.byte	0x1
	.2byte	0xada
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB56
	.4byte	.LFE56-.LFB56
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16ef
	.uleb128 0x11
	.4byte	.LASF141
	.byte	0x1
	.2byte	0xadb
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xade
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xadf
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF143
	.byte	0x1
	.2byte	0xa9c
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB55
	.4byte	.LFE55-.LFB55
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x174b
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0xa9c
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0x1
	.2byte	0xa9d
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xaa0
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xaa1
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF145
	.byte	0x1
	.2byte	0xa60
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB54
	.4byte	.LFE54-.LFB54
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17a7
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0xa60
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF144
	.byte	0x1
	.2byte	0xa61
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xa64
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xa65
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF146
	.byte	0x1
	.2byte	0xa1a
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB53
	.4byte	.LFE53-.LFB53
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1803
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0xa1a
	.byte	0x20
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0x1
	.2byte	0xa1b
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0xa1e
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0xa1f
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x9dd
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB52
	.4byte	.LFE52-.LFB52
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x185f
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x9dd
	.byte	0x20
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x9de
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x9e1
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x9e2
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x9ad
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB51
	.4byte	.LFE51-.LFB51
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18ab
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x9ae
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x9b1
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x9b2
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x986
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB50
	.4byte	.LFE50-.LFB50
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18f7
	.uleb128 0x11
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x987
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x98a
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x98b
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x95b
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB49
	.4byte	.LFE49-.LFB49
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1943
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x95c
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x95f
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x960
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x934
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x198f
	.uleb128 0x11
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x935
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x938
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x939
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x8f5
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x19eb
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x8f5
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x8f6
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x8f9
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x8fa
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x8c9
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a37
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x8c9
	.byte	0x1e
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x8cc
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x8cd
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x8a4
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1a83
	.uleb128 0x11
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x8a4
	.byte	0x1e
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x8a7
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x8a8
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x865
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1adf
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x865
	.byte	0x1f
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x866
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x869
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x86a
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x829
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b3b
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x829
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x82a
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x82d
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x82e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x7e5
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1b97
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x7e5
	.byte	0x1f
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x7e6
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x7e9
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x7ea
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x7a9
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1bf3
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x7a9
	.byte	0x1f
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x7aa
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x7ad
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x7ae
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x765
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c4f
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x765
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x766
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x769
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x76a
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x729
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cab
	.uleb128 0x11
	.4byte	.LASF61
	.byte	0x1
	.2byte	0x729
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x72a
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x72d
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x72e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x6fa
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cf7
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x6fb
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x6fe
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x6ff
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x6d3
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d43
	.uleb128 0x11
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x6d4
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x6d7
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x6d8
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x6a9
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1d8f
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x6aa
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x6ad
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x6ae
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x683
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1ddb
	.uleb128 0x11
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x683
	.byte	0x22
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x686
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x687
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF174
	.byte	0x1
	.2byte	0x644
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e37
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x644
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x645
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x648
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x649
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF176
	.byte	0x1
	.2byte	0x607
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1e93
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x607
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF175
	.byte	0x1
	.2byte	0x608
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x60b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x60c
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF177
	.byte	0x1
	.2byte	0x5c0
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1eef
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x5c0
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x5c1
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x5c4
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x5c5
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF179
	.byte	0x1
	.2byte	0x583
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f4b
	.uleb128 0x11
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x583
	.byte	0x23
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF178
	.byte	0x1
	.2byte	0x584
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x587
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x588
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF180
	.byte	0x1
	.2byte	0x554
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1f97
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x554
	.byte	0x25
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x557
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x558
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF182
	.byte	0x1
	.2byte	0x52d
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fe3
	.uleb128 0x11
	.4byte	.LASF181
	.byte	0x1
	.2byte	0x52e
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x531
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x532
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF183
	.byte	0x1
	.2byte	0x4fe
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x202f
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x4fe
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x501
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x502
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF185
	.byte	0x1
	.2byte	0x4d8
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x207b
	.uleb128 0x11
	.4byte	.LASF184
	.byte	0x1
	.2byte	0x4d8
	.byte	0x1f
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x4db
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x4dc
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF186
	.byte	0x1
	.2byte	0x4ad
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x20c7
	.uleb128 0x11
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x4ad
	.byte	0x1e
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x4b0
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x4b1
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF188
	.byte	0x1
	.2byte	0x487
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2113
	.uleb128 0x11
	.4byte	.LASF187
	.byte	0x1
	.2byte	0x487
	.byte	0x1f
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x48a
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x48b
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF189
	.byte	0x1
	.2byte	0x461
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x214f
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x464
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF190
	.byte	0x1
	.2byte	0x465
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF191
	.byte	0x1
	.2byte	0x438
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x219b
	.uleb128 0x11
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x438
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x43b
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x43c
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF193
	.byte	0x1
	.2byte	0x412
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x21e7
	.uleb128 0x11
	.4byte	.LASF192
	.byte	0x1
	.2byte	0x412
	.byte	0x1e
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x415
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x416
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF194
	.byte	0x1
	.2byte	0x3e3
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2233
	.uleb128 0x11
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x3e3
	.byte	0x1a
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x3e6
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x3e7
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF196
	.byte	0x1
	.2byte	0x3bd
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x227f
	.uleb128 0x11
	.4byte	.LASF195
	.byte	0x1
	.2byte	0x3bd
	.byte	0x1b
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x3c0
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x3c1
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF197
	.byte	0x1
	.2byte	0x393
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x22cb
	.uleb128 0x11
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x394
	.byte	0x4
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x397
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x398
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF199
	.byte	0x1
	.2byte	0x36a
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2317
	.uleb128 0x11
	.4byte	.LASF198
	.byte	0x1
	.2byte	0x36b
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x36e
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x36f
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF200
	.byte	0x1
	.2byte	0x32e
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2383
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x32e
	.byte	0x15
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x331
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x332
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.uleb128 0x12
	.4byte	.LASF201
	.byte	0x1
	.2byte	0x333
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x12
	.4byte	.LASF202
	.byte	0x1
	.2byte	0x334
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x10
	.4byte	.LASF203
	.byte	0x1
	.2byte	0x301
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x23cf
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.2byte	0x301
	.byte	0x16
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x304
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x305
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF204
	.byte	0x1
	.2byte	0x2ca
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x241b
	.uleb128 0x11
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x2ca
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x2cd
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x2ce
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF206
	.byte	0x1
	.2byte	0x2a0
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2467
	.uleb128 0x11
	.4byte	.LASF205
	.byte	0x1
	.2byte	0x2a0
	.byte	0x1d
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x2a3
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x2a4
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF207
	.byte	0x1
	.2byte	0x275
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24b3
	.uleb128 0x11
	.4byte	.LASF208
	.byte	0x1
	.2byte	0x276
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x279
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x27a
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF209
	.byte	0x1
	.2byte	0x24a
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x24ff
	.uleb128 0x11
	.4byte	.LASF210
	.byte	0x1
	.2byte	0x24b
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x24e
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x24f
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF211
	.byte	0x1
	.2byte	0x221
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x254b
	.uleb128 0x11
	.4byte	.LASF212
	.byte	0x1
	.2byte	0x222
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x225
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x226
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF213
	.byte	0x1
	.2byte	0x1f9
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2597
	.uleb128 0x11
	.4byte	.LASF214
	.byte	0x1
	.2byte	0x1fa
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1fd
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1fe
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x10
	.4byte	.LASF215
	.byte	0x1
	.2byte	0x1da
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x25f3
	.uleb128 0x11
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x1da
	.byte	0x1d
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1db
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x1db
	.byte	0x13
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1de
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF218
	.byte	0x1
	.2byte	0x1bb
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x264f
	.uleb128 0x11
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x1bb
	.byte	0x19
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x1bc
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.4byte	.LASF219
	.byte	0x1
	.2byte	0x1bc
	.byte	0x14
	.4byte	0x85
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1bf
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF220
	.byte	0x1
	.2byte	0x19c
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26ab
	.uleb128 0x11
	.4byte	.LASF216
	.byte	0x1
	.2byte	0x19c
	.byte	0x1c
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x11
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x19d
	.byte	0x5
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x11
	.4byte	.LASF217
	.byte	0x1
	.2byte	0x19d
	.byte	0x13
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x1a0
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x10
	.4byte	.LASF221
	.byte	0x1
	.2byte	0x17a
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x26f7
	.uleb128 0x11
	.4byte	.LASF222
	.byte	0x1
	.2byte	0x17a
	.byte	0x18
	.4byte	0x26f7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x17d
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x17e
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x29
	.uleb128 0x10
	.4byte	.LASF223
	.byte	0x1
	.2byte	0x127
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2749
	.uleb128 0x11
	.4byte	.LASF224
	.byte	0x1
	.2byte	0x127
	.byte	0x2f
	.4byte	0x2749
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x12
	.4byte	.LASF21
	.byte	0x1
	.2byte	0x12a
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x1
	.2byte	0x139
	.byte	0x5
	.4byte	0x2753
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0xed
	.byte	0x69
	.byte	0x15
	.byte	0x40
	.byte	0x8f
	.byte	0xd8
	.byte	0x96
	.byte	0x89
	.uleb128 0xb
	.4byte	0x6b
	.4byte	0x2763
	.uleb128 0xc
	.4byte	0x92
	.byte	0xb
	.byte	0
	.uleb128 0x13
	.4byte	.LASF225
	.byte	0x1
	.byte	0xe8
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x27ab
	.uleb128 0x14
	.4byte	.LASF224
	.byte	0x1
	.byte	0xe8
	.byte	0x2e
	.4byte	0x2749
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0xeb
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0xf4
	.byte	0x5
	.4byte	0x27ab
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xb
	.4byte	0x6b
	.4byte	0x27bb
	.uleb128 0xc
	.4byte	0x92
	.byte	0x5
	.byte	0
	.uleb128 0x13
	.4byte	.LASF226
	.byte	0x1
	.byte	0xbf
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2803
	.uleb128 0x14
	.4byte	.LASF227
	.byte	0x1
	.byte	0xbf
	.byte	0x1b
	.4byte	0x75d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0xc2
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0xc7
	.byte	0x5
	.4byte	0x2803
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xb
	.4byte	0x6b
	.4byte	0x2813
	.uleb128 0xc
	.4byte	0x92
	.byte	0x1
	.byte	0
	.uleb128 0x13
	.4byte	.LASF228
	.byte	0x1
	.byte	0x96
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x285b
	.uleb128 0x14
	.4byte	.LASF229
	.byte	0x1
	.byte	0x96
	.byte	0x1b
	.4byte	0x75d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x99
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x9e
	.byte	0x5
	.4byte	0x2803
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x13
	.4byte	.LASF230
	.byte	0x1
	.byte	0x6c
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x28a3
	.uleb128 0x14
	.4byte	.LASF231
	.byte	0x1
	.byte	0x6c
	.byte	0x1b
	.4byte	0x75d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x6f
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x74
	.byte	0x5
	.4byte	0x2803
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x15
	.4byte	.LASF236
	.byte	0x1
	.byte	0x51
	.byte	0x4
	.4byte	0x29
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x14
	.4byte	.LASF232
	.byte	0x1
	.byte	0x51
	.byte	0x21
	.4byte	0xbf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0xe
	.4byte	.LASF21
	.byte	0x1
	.byte	0x54
	.byte	0x5
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0xe
	.4byte	.LASF22
	.byte	0x1
	.byte	0x55
	.byte	0x5
	.4byte	0x6b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -10
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
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.4byte	0xdd3
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x28e8
	.4byte	0xad
	.ascii	"p_bmg160\000"
	.4byte	0xad
	.ascii	"p_bmg160\000"
	.4byte	0xc9
	.ascii	"bmg160_set_sleep_durn\000"
	.4byte	0x115
	.ascii	"bmg160_get_sleep_durn\000"
	.4byte	0x161
	.ascii	"bmg160_set_auto_sleep_durn\000"
	.4byte	0x1cd
	.ascii	"bmg160_get_auto_sleep_durn\000"
	.4byte	0x219
	.ascii	"bmg160_selftest\000"
	.4byte	0x275
	.ascii	"bmg160_set_power_mode\000"
	.4byte	0x301
	.ascii	"bmg160_get_power_mode\000"
	.4byte	0x36d
	.ascii	"bmg160_set_fifo_data_select\000"
	.4byte	0x3b9
	.ascii	"bmg160_get_fifo_data_select\000"
	.4byte	0x405
	.ascii	"bmg160_set_fifo_mode\000"
	.4byte	0x451
	.ascii	"bmg160_get_fifo_mode\000"
	.4byte	0x49d
	.ascii	"bmg160_get_fifo_overrun\000"
	.4byte	0x4e9
	.ascii	"bmg160_get_fifo_frame_count\000"
	.4byte	0x535
	.ascii	"bmg160_get_fifo_stat_reg\000"
	.4byte	0x581
	.ascii	"bmg160_get_FIFO_data_reg\000"
	.4byte	0x5cd
	.ascii	"bmg160_set_gp\000"
	.4byte	0x629
	.ascii	"bmg160_get_gp\000"
	.4byte	0x685
	.ascii	"bmg160_set_offset\000"
	.4byte	0x6f1
	.ascii	"bmg160_get_offset\000"
	.4byte	0x763
	.ascii	"bmg160_set_fifo_wm_level\000"
	.4byte	0x7af
	.ascii	"bmg160_get_fifo_wm_level\000"
	.4byte	0x7fb
	.ascii	"bmg160_set_fifo_tag\000"
	.4byte	0x847
	.ascii	"bmg160_get_fifo_tag\000"
	.4byte	0x893
	.ascii	"bmg160_set_spi3\000"
	.4byte	0x8df
	.ascii	"bmg160_get_spi3\000"
	.4byte	0x92b
	.ascii	"bmg160_set_i2c_wdt\000"
	.4byte	0x987
	.ascii	"bmg160_get_i2c_wdt\000"
	.4byte	0x9e3
	.ascii	"bmg160_set_nvm_prog_mode\000"
	.4byte	0xa2f
	.ascii	"bmg160_get_nvm_prog_mode\000"
	.4byte	0xa7b
	.ascii	"bmg160_set_nvm_prog_trig\000"
	.4byte	0xac7
	.ascii	"bmg160_get_nvm_rdy\000"
	.4byte	0xb13
	.ascii	"bmg160_set_nvm_load\000"
	.4byte	0xb5f
	.ascii	"bmg160_get_nvm_remain\000"
	.4byte	0xbab
	.ascii	"bmg160_set_fast_offset_enable_axis\000"
	.4byte	0xc07
	.ascii	"bmg160_get_fast_offset_enable_axis\000"
	.4byte	0xc53
	.ascii	"bmg160_enable_fast_offset\000"
	.4byte	0xc8f
	.ascii	"bmg160_set_offset_word_length\000"
	.4byte	0xceb
	.ascii	"bmg160_get_offset_word_length\000"
	.4byte	0xd47
	.ascii	"bmg160_set_slow_offset_enable_axis\000"
	.4byte	0xda3
	.ascii	"bmg160_get_slow_offset_enable_axis\000"
	.4byte	0xdff
	.ascii	"bmg160_set_slow_offset_durn\000"
	.4byte	0xe4b
	.ascii	"bmg160_get_slow_offset_durn\000"
	.4byte	0xe97
	.ascii	"bmg160_set_slow_offset_thres\000"
	.4byte	0xee3
	.ascii	"bmg160_get_slow_offset_thres\000"
	.4byte	0xf2f
	.ascii	"bmg160_set_highrate_durn_axis\000"
	.4byte	0xf8b
	.ascii	"bmg160_get_highrate_durn_axis\000"
	.4byte	0xfe7
	.ascii	"bmg160_set_highrate_enable_axis\000"
	.4byte	0x1043
	.ascii	"bmg160_get_highrate_enable_axis\000"
	.4byte	0x109f
	.ascii	"bmg160_set_highrate_thres\000"
	.4byte	0x10fb
	.ascii	"bmg160_get_highrate_thres\000"
	.4byte	0x1157
	.ascii	"bmg160_set_highrate_hyst\000"
	.4byte	0x11b3
	.ascii	"bmg160_get_highrate_hyst\000"
	.4byte	0x120f
	.ascii	"bmg160_set_latch_intr\000"
	.4byte	0x125b
	.ascii	"bmg160_get_latch_intr\000"
	.4byte	0x12a7
	.ascii	"bmg160_set_latch_stat\000"
	.4byte	0x12f3
	.ascii	"bmg160_get_latch_stat\000"
	.4byte	0x133f
	.ascii	"bmg160_set_offset_rst\000"
	.4byte	0x138b
	.ascii	"bmg160_set_rst_intr\000"
	.4byte	0x13d7
	.ascii	"bmg160_set_fifo_wm_enable\000"
	.4byte	0x1423
	.ascii	"bmg160_get_fifo_wm_enable\000"
	.4byte	0x146f
	.ascii	"bmg160_set_any_motion_enable_axis\000"
	.4byte	0x14cb
	.ascii	"bmg160_get_any_motion_enable_axis\000"
	.4byte	0x1527
	.ascii	"bmg160_set_any_motion_durn_sample\000"
	.4byte	0x1573
	.ascii	"bmg160_get_any_motion_durn_sample\000"
	.4byte	0x15bf
	.ascii	"bmg160_set_awake_durn\000"
	.4byte	0x160b
	.ascii	"bmg160_get_awake_durn\000"
	.4byte	0x1657
	.ascii	"bmg160_set_any_motion_thres\000"
	.4byte	0x16a3
	.ascii	"bmg160_get_any_motion_thres\000"
	.4byte	0x16ef
	.ascii	"bmg160_set_unfilt_data\000"
	.4byte	0x174b
	.ascii	"bmg160_get_unfilt_data\000"
	.4byte	0x17a7
	.ascii	"bmg160_set_offset_unfilt\000"
	.4byte	0x1803
	.ascii	"bmg160_get_offset_unfilt\000"
	.4byte	0x185f
	.ascii	"bmg160_set_intr2_any_motion\000"
	.4byte	0x18ab
	.ascii	"bmg160_get_intr2_any_motion\000"
	.4byte	0x18f7
	.ascii	"bmg160_set_intr2_highrate\000"
	.4byte	0x1943
	.ascii	"bmg160_get_intr2_highrate\000"
	.4byte	0x198f
	.ascii	"bmg160_set_intr_fifo\000"
	.4byte	0x19eb
	.ascii	"bmg160_get_intr1_fifo\000"
	.4byte	0x1a37
	.ascii	"bmg160_get_intr2_fifo\000"
	.4byte	0x1a83
	.ascii	"bmg160_set_intr1_offset\000"
	.4byte	0x1adf
	.ascii	"bmg160_get_intr_offset\000"
	.4byte	0x1b3b
	.ascii	"bmg160_set_intr2_offset\000"
	.4byte	0x1b97
	.ascii	"bmg160_get_intr2_offset\000"
	.4byte	0x1bf3
	.ascii	"bmg160_set_intr_data\000"
	.4byte	0x1c4f
	.ascii	"bmg160_get_intr_data\000"
	.4byte	0x1cab
	.ascii	"bmg160_set_intr1_any_motion\000"
	.4byte	0x1cf7
	.ascii	"bmg160_get_intr1_any_motion\000"
	.4byte	0x1d43
	.ascii	"bmg160_set_intr1_highrate\000"
	.4byte	0x1d8f
	.ascii	"bmg160_get_intr1_highrate\000"
	.4byte	0x1ddb
	.ascii	"bmg160_set_intr_level\000"
	.4byte	0x1e37
	.ascii	"bmg160_get_intr_level\000"
	.4byte	0x1e93
	.ascii	"bmg160_set_intr_output_type\000"
	.4byte	0x1eef
	.ascii	"bmg160_get_intr_output_type\000"
	.4byte	0x1f4b
	.ascii	"bmg160_set_auto_offset_enable\000"
	.4byte	0x1f97
	.ascii	"bmg160_get_auto_offset_enable\000"
	.4byte	0x1fe3
	.ascii	"bmg160_set_fifo_enable\000"
	.4byte	0x202f
	.ascii	"bmg160_get_fifo_enable\000"
	.4byte	0x207b
	.ascii	"bmg160_set_data_enable\000"
	.4byte	0x20c7
	.ascii	"bmg160_get_data_enable\000"
	.4byte	0x2113
	.ascii	"bmg160_set_soft_rst\000"
	.4byte	0x214f
	.ascii	"bmg160_set_shadow_dis\000"
	.4byte	0x219b
	.ascii	"bmg160_get_shadow_dis\000"
	.4byte	0x21e7
	.ascii	"bmg160_set_high_bw\000"
	.4byte	0x2233
	.ascii	"bmg160_get_high_bw\000"
	.4byte	0x227f
	.ascii	"bmg160_set_pmu_ext_tri_select\000"
	.4byte	0x22cb
	.ascii	"bmg160_get_pmu_ext_tri_select\000"
	.4byte	0x2317
	.ascii	"bmg160_set_bw\000"
	.4byte	0x2383
	.ascii	"bmg160_get_bw\000"
	.4byte	0x23cf
	.ascii	"bmg160_set_range_reg\000"
	.4byte	0x241b
	.ascii	"bmg160_get_range_reg\000"
	.4byte	0x2467
	.ascii	"bmg160_get_intr_stat_reg_three\000"
	.4byte	0x24b3
	.ascii	"bmg160_get_intr_stat_reg_two\000"
	.4byte	0x24ff
	.ascii	"bmg160_get_intr_stat_reg_one\000"
	.4byte	0x254b
	.ascii	"bmg160_get_intr_stat_reg_zero\000"
	.4byte	0x2597
	.ascii	"bmg160_write_register\000"
	.4byte	0x25f3
	.ascii	"bmg160_burst_read\000"
	.4byte	0x264f
	.ascii	"bmg160_read_register\000"
	.4byte	0x26ab
	.ascii	"bmg160_get_temp\000"
	.4byte	0x26fd
	.ascii	"bmg160_get_data_XYZI\000"
	.4byte	0x2763
	.ascii	"bmg160_get_data_XYZ\000"
	.4byte	0x27bb
	.ascii	"bmg160_get_data_Z\000"
	.4byte	0x2813
	.ascii	"bmg160_get_data_Y\000"
	.4byte	0x285b
	.ascii	"bmg160_get_data_X\000"
	.4byte	0x28a3
	.ascii	"bmg160_init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0xe9
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x28e8
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
	.4byte	0x7e
	.ascii	"short unsigned int\000"
	.4byte	0x92
	.ascii	"unsigned int\000"
	.4byte	0x85
	.ascii	"u32\000"
	.4byte	0x99
	.ascii	"long long unsigned int\000"
	.4byte	0xa0
	.ascii	"char\000"
	.4byte	0xb
	.ascii	"bmg160_data_t\000"
	.4byte	0xb
	.ascii	"bmg160_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3f4
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
	.uleb128 0x36
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF25:
	.ascii	"v_durn_u8\000"
.LASF128:
	.ascii	"bmg160_set_fifo_wm_enable\000"
.LASF228:
	.ascii	"bmg160_get_data_Y\000"
.LASF200:
	.ascii	"bmg160_set_bw\000"
.LASF180:
	.ascii	"bmg160_set_auto_offset_enable\000"
.LASF101:
	.ascii	"v_offset_durn_u8\000"
.LASF119:
	.ascii	"v_latch_intr_u8\000"
.LASF28:
	.ascii	"v_auto_sleep_durn_u8r\000"
.LASF186:
	.ascii	"bmg160_set_data_enable\000"
.LASF108:
	.ascii	"bmg160_get_highrate_durn_axis\000"
.LASF124:
	.ascii	"bmg160_set_offset_rst\000"
.LASF58:
	.ascii	"v_gp_u8\000"
.LASF66:
	.ascii	"bmg160_set_fifo_wm_level\000"
.LASF12:
	.ascii	"datay\000"
.LASF107:
	.ascii	"v_highrate_durn_axis_u8\000"
.LASF103:
	.ascii	"bmg160_set_slow_offset_thres\000"
.LASF197:
	.ascii	"bmg160_set_pmu_ext_tri_select\000"
.LASF77:
	.ascii	"v_i2c_wdt_u8\000"
.LASF84:
	.ascii	"bmg160_get_nvm_rdy\000"
.LASF70:
	.ascii	"v_fifo_tag_u8\000"
.LASF99:
	.ascii	"bmg160_get_slow_offset_enable_axis\000"
.LASF120:
	.ascii	"bmg160_get_latch_intr\000"
.LASF96:
	.ascii	"bmg160_get_offset_word_length\000"
.LASF19:
	.ascii	"long long unsigned int\000"
.LASF43:
	.ascii	"v_fifo_data_select_u8\000"
.LASF164:
	.ascii	"bmg160_get_intr2_offset\000"
.LASF98:
	.ascii	"v_slow_offset_u8\000"
.LASF136:
	.ascii	"bmg160_get_any_motion_durn_sample\000"
.LASF183:
	.ascii	"bmg160_set_fifo_enable\000"
.LASF221:
	.ascii	"bmg160_get_temp\000"
.LASF40:
	.ascii	"v_bw_u8r\000"
.LASF106:
	.ascii	"bmg160_set_highrate_durn_axis\000"
.LASF208:
	.ascii	"v_stat3_data_u8\000"
.LASF91:
	.ascii	"v_fast_offset_u8\000"
.LASF219:
	.ascii	"v_len_u32\000"
.LASF97:
	.ascii	"bmg160_set_slow_offset_enable_axis\000"
.LASF173:
	.ascii	"bmg160_get_intr1_highrate\000"
.LASF154:
	.ascii	"bmg160_get_intr2_highrate\000"
.LASF14:
	.ascii	"intstatus\000"
.LASF32:
	.ascii	"v_data1_u8\000"
.LASF81:
	.ascii	"bmg160_get_nvm_prog_mode\000"
.LASF17:
	.ascii	"long long int\000"
.LASF7:
	.ascii	"signed char\000"
.LASF1:
	.ascii	"dev_addr\000"
.LASF69:
	.ascii	"bmg160_set_fifo_tag\000"
.LASF171:
	.ascii	"bmg160_set_intr1_highrate\000"
.LASF110:
	.ascii	"v_enable_u8\000"
.LASF49:
	.ascii	"v_fifo_overrun_u8\000"
.LASF138:
	.ascii	"v_awake_durn_u8\000"
.LASF133:
	.ascii	"bmg160_get_any_motion_enable_axis\000"
.LASF3:
	.ascii	"bus_write\000"
.LASF195:
	.ascii	"v_high_bw_u8\000"
.LASF4:
	.ascii	"bus_read\000"
.LASF161:
	.ascii	"bmg160_get_intr_offset\000"
.LASF143:
	.ascii	"bmg160_set_unfilt_data\000"
.LASF148:
	.ascii	"bmg160_get_offset_unfilt\000"
.LASF21:
	.ascii	"comres\000"
.LASF179:
	.ascii	"bmg160_get_intr_output_type\000"
.LASF176:
	.ascii	"bmg160_get_intr_level\000"
.LASF205:
	.ascii	"v_range_u8\000"
.LASF60:
	.ascii	"bmg160_set_offset\000"
.LASF92:
	.ascii	"bmg160_get_fast_offset_enable_axis\000"
.LASF167:
	.ascii	"bmg160_get_intr_data\000"
.LASF168:
	.ascii	"bmg160_set_intr1_any_motion\000"
.LASF139:
	.ascii	"bmg160_get_awake_durn\000"
.LASF95:
	.ascii	"v_offset_word_length_u8\000"
.LASF34:
	.ascii	"bmg160_set_power_mode\000"
.LASF177:
	.ascii	"bmg160_set_intr_output_type\000"
.LASF76:
	.ascii	"v_channel_u8\000"
.LASF72:
	.ascii	"bmg160_set_spi3\000"
.LASF223:
	.ascii	"bmg160_get_data_XYZI\000"
.LASF209:
	.ascii	"bmg160_get_intr_stat_reg_two\000"
.LASF90:
	.ascii	"bmg160_set_fast_offset_enable_axis\000"
.LASF44:
	.ascii	"bmg160_get_fifo_data_select\000"
.LASF206:
	.ascii	"bmg160_get_range_reg\000"
.LASF85:
	.ascii	"v_nvm_rdy_u8\000"
.LASF142:
	.ascii	"bmg160_get_any_motion_thres\000"
.LASF122:
	.ascii	"v_latch_stat_u8\000"
.LASF89:
	.ascii	"v_nvm_remain_u8\000"
.LASF42:
	.ascii	"bmg160_set_fifo_data_select\000"
.LASF184:
	.ascii	"v_fifo_enable_u8\000"
.LASF24:
	.ascii	"bmg160_get_sleep_durn\000"
.LASF198:
	.ascii	"v_pwu_ext_tri_select_u8\000"
.LASF45:
	.ascii	"bmg160_set_fifo_mode\000"
.LASF8:
	.ascii	"unsigned int\000"
.LASF88:
	.ascii	"bmg160_get_nvm_remain\000"
.LASF118:
	.ascii	"bmg160_set_latch_intr\000"
.LASF62:
	.ascii	"v_offset_s16\000"
.LASF127:
	.ascii	"v_rst_int_u8\000"
.LASF163:
	.ascii	"v_intr2_offset_u8\000"
.LASF104:
	.ascii	"v_offset_thres_u8\000"
.LASF78:
	.ascii	"bmg160_get_i2c_wdt\000"
.LASF165:
	.ascii	"bmg160_set_intr_data\000"
.LASF150:
	.ascii	"v_intr2_any_motion_u8\000"
.LASF71:
	.ascii	"bmg160_get_fifo_tag\000"
.LASF203:
	.ascii	"bmg160_get_bw\000"
.LASF224:
	.ascii	"data\000"
.LASF52:
	.ascii	"bmg160_get_fifo_stat_reg\000"
.LASF129:
	.ascii	"v_fifo_wm_enable_u8\000"
.LASF18:
	.ascii	"short unsigned int\000"
.LASF27:
	.ascii	"v_bw_u8\000"
.LASF131:
	.ascii	"bmg160_set_any_motion_enable_axis\000"
.LASF30:
	.ascii	"bmg160_selftest\000"
.LASF26:
	.ascii	"bmg160_set_auto_sleep_durn\000"
.LASF192:
	.ascii	"v_shadow_dis_u8\000"
.LASF123:
	.ascii	"bmg160_get_latch_stat\000"
.LASF87:
	.ascii	"v_nvm_load_u8\000"
.LASF207:
	.ascii	"bmg160_get_intr_stat_reg_three\000"
.LASF201:
	.ascii	"v_mode_u8r\000"
.LASF235:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF22:
	.ascii	"v_data_u8\000"
.LASF187:
	.ascii	"v_data_enable_u8\000"
.LASF80:
	.ascii	"nvm_prog_mode\000"
.LASF222:
	.ascii	"v_temp_s8\000"
.LASF144:
	.ascii	"v_unfilt_data_u8\000"
.LASF229:
	.ascii	"v_data_y_s16\000"
.LASF147:
	.ascii	"v_offset_unfilt_u8\000"
.LASF125:
	.ascii	"v_offset_rst_u8\000"
.LASF151:
	.ascii	"bmg160_get_intr2_any_motion\000"
.LASF13:
	.ascii	"dataz\000"
.LASF65:
	.ascii	"bmg160_get_offset\000"
.LASF117:
	.ascii	"bmg160_get_highrate_hyst\000"
.LASF33:
	.ascii	"v_data2_u8\000"
.LASF137:
	.ascii	"bmg160_set_awake_durn\000"
.LASF79:
	.ascii	"bmg160_set_nvm_prog_mode\000"
.LASF36:
	.ascii	"data1\000"
.LASF37:
	.ascii	"data2\000"
.LASF38:
	.ascii	"data3\000"
.LASF218:
	.ascii	"bmg160_burst_read\000"
.LASF156:
	.ascii	"v_intr_fifo_u8\000"
.LASF193:
	.ascii	"bmg160_get_shadow_dis\000"
.LASF35:
	.ascii	"v_power_mode_u8\000"
.LASF102:
	.ascii	"bmg160_get_slow_offset_durn\000"
.LASF10:
	.ascii	"bmg160_data_t\000"
.LASF53:
	.ascii	"v_fifo_stat_u8\000"
.LASF153:
	.ascii	"v_intr2_highrate_u8\000"
.LASF169:
	.ascii	"v_int1r_any_motion_u8\000"
.LASF188:
	.ascii	"bmg160_get_data_enable\000"
.LASF100:
	.ascii	"bmg160_set_slow_offset_durn\000"
.LASF31:
	.ascii	"v_result_u8\000"
.LASF159:
	.ascii	"bmg160_set_intr1_offset\000"
.LASF116:
	.ascii	"v_highrate_hyst_u8\000"
.LASF220:
	.ascii	"bmg160_read_register\000"
.LASF215:
	.ascii	"bmg160_write_register\000"
.LASF74:
	.ascii	"bmg160_get_spi3\000"
.LASF2:
	.ascii	"burst_read\000"
.LASF61:
	.ascii	"v_axis_u8\000"
.LASF178:
	.ascii	"v_intr_output_type_u8\000"
.LASF196:
	.ascii	"bmg160_get_high_bw\000"
.LASF149:
	.ascii	"bmg160_set_intr2_any_motion\000"
.LASF64:
	.ascii	"v_data2_u8r\000"
.LASF114:
	.ascii	"bmg160_get_highrate_thres\000"
.LASF172:
	.ascii	"v_intr1_u8\000"
.LASF191:
	.ascii	"bmg160_set_shadow_dis\000"
.LASF68:
	.ascii	"bmg160_get_fifo_wm_level\000"
.LASF140:
	.ascii	"bmg160_set_any_motion_thres\000"
.LASF112:
	.ascii	"bmg160_set_highrate_thres\000"
.LASF39:
	.ascii	"v_autosleepduration\000"
.LASF126:
	.ascii	"bmg160_set_rst_intr\000"
.LASF6:
	.ascii	"unsigned char\000"
.LASF160:
	.ascii	"v_intr1_offset_u8\000"
.LASF11:
	.ascii	"datax\000"
.LASF73:
	.ascii	"v_spi3_u8\000"
.LASF20:
	.ascii	"p_bmg160\000"
.LASF175:
	.ascii	"v_intr_level_u8\000"
.LASF121:
	.ascii	"bmg160_set_latch_stat\000"
.LASF56:
	.ascii	"bmg160_set_gp\000"
.LASF155:
	.ascii	"bmg160_set_intr_fifo\000"
.LASF15:
	.ascii	"short int\000"
.LASF166:
	.ascii	"v_intr_data_u8\000"
.LASF113:
	.ascii	"v_highrate_thres_u8\000"
.LASF214:
	.ascii	"v_stat0_data_u8\000"
.LASF105:
	.ascii	"bmg160_get_slow_offset_thres\000"
.LASF190:
	.ascii	"v_soft_rst_u8\000"
.LASF227:
	.ascii	"v_data_z_s16\000"
.LASF29:
	.ascii	"bmg160_get_auto_sleep_durn\000"
.LASF41:
	.ascii	"bmg160_get_power_mode\000"
.LASF146:
	.ascii	"bmg160_set_offset_unfilt\000"
.LASF211:
	.ascii	"bmg160_get_intr_stat_reg_one\000"
.LASF199:
	.ascii	"bmg160_get_pmu_ext_tri_select\000"
.LASF234:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_applicationLeithe\\drivers\\bmg160.c\000"
.LASF111:
	.ascii	"bmg160_get_highrate_enable_axis\000"
.LASF158:
	.ascii	"bmg160_get_intr2_fifo\000"
.LASF236:
	.ascii	"bmg160_init\000"
.LASF54:
	.ascii	"bmg160_get_FIFO_data_reg\000"
.LASF202:
	.ascii	"v_auto_sleep_dur\000"
.LASF9:
	.ascii	"bmg160_t\000"
.LASF93:
	.ascii	"bmg160_enable_fast_offset\000"
.LASF0:
	.ascii	"chip_id\000"
.LASF217:
	.ascii	"v_len_u8\000"
.LASF16:
	.ascii	"char\000"
.LASF185:
	.ascii	"bmg160_get_fifo_enable\000"
.LASF46:
	.ascii	"v_fifo_mode_u8\000"
.LASF204:
	.ascii	"bmg160_set_range_reg\000"
.LASF174:
	.ascii	"bmg160_set_intr_level\000"
.LASF162:
	.ascii	"bmg160_set_intr2_offset\000"
.LASF48:
	.ascii	"bmg160_get_fifo_overrun\000"
.LASF109:
	.ascii	"bmg160_set_highrate_enable_axis\000"
.LASF67:
	.ascii	"v_fifo_wm_level_u8\000"
.LASF83:
	.ascii	"nvm_prog_trig\000"
.LASF181:
	.ascii	"v_offset_enable_u8\000"
.LASF182:
	.ascii	"bmg160_get_auto_offset_enable\000"
.LASF189:
	.ascii	"bmg160_set_soft_rst\000"
.LASF212:
	.ascii	"v_stat1_data_u8\000"
.LASF231:
	.ascii	"v_data_x_s16\000"
.LASF233:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -fomit-frame-poi"
	.ascii	"nter -fno-dwarf2-cfi-asm -fno-builtin -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF82:
	.ascii	"bmg160_set_nvm_prog_trig\000"
.LASF134:
	.ascii	"bmg160_set_any_motion_durn_sample\000"
.LASF152:
	.ascii	"bmg160_set_intr2_highrate\000"
.LASF5:
	.ascii	"delay_msec\000"
.LASF23:
	.ascii	"bmg160_set_sleep_durn\000"
.LASF50:
	.ascii	"bmg160_get_fifo_frame_count\000"
.LASF194:
	.ascii	"bmg160_set_high_bw\000"
.LASF170:
	.ascii	"bmg160_get_intr1_any_motion\000"
.LASF86:
	.ascii	"bmg160_set_nvm_load\000"
.LASF213:
	.ascii	"bmg160_get_intr_stat_reg_zero\000"
.LASF115:
	.ascii	"bmg160_set_highrate_hyst\000"
.LASF232:
	.ascii	"bmg160\000"
.LASF51:
	.ascii	"v_fifo_frame_count_u8\000"
.LASF47:
	.ascii	"bmg160_get_fifo_mode\000"
.LASF135:
	.ascii	"v_durn_sample_u8\000"
.LASF141:
	.ascii	"v_any_motion_thres_u8\000"
.LASF132:
	.ascii	"v_any_motion_axis_u8\000"
.LASF75:
	.ascii	"bmg160_set_i2c_wdt\000"
.LASF130:
	.ascii	"bmg160_get_fifo_wm_enable\000"
.LASF216:
	.ascii	"v_addr_u8\000"
.LASF230:
	.ascii	"bmg160_get_data_X\000"
.LASF225:
	.ascii	"bmg160_get_data_XYZ\000"
.LASF226:
	.ascii	"bmg160_get_data_Z\000"
.LASF55:
	.ascii	"v_fifo_data_u8\000"
.LASF57:
	.ascii	"v_param_u8\000"
.LASF210:
	.ascii	"v_stat2_data_u8\000"
.LASF63:
	.ascii	"v_data1_u8r\000"
.LASF94:
	.ascii	"bmg160_set_offset_word_length\000"
.LASF145:
	.ascii	"bmg160_get_unfilt_data\000"
.LASF157:
	.ascii	"bmg160_get_intr1_fifo\000"
.LASF59:
	.ascii	"bmg160_get_gp\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
