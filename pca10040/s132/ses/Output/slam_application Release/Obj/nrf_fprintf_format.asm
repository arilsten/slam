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
	.file	"nrf_fprintf_format.c"
	.text
.Ltext0:
	.section	.text.buffer_add,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	buffer_add, %function
buffer_add:
.LFB142:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\fprintf\\nrf_fprintf_format.c"
	.loc 1 73 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #12
.LCFI1:
	str	r0, [sp, #4]
	mov	r3, r1
	strb	r3, [sp, #3]
	.loc 1 74 10
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 74 29
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	.loc 1 74 44
	adds	r0, r3, #1
	ldr	r1, [sp, #4]
	str	r0, [r1, #8]
	.loc 1 74 23
	add	r3, r3, r2
	.loc 1 74 48
	ldrb	r2, [sp, #3]
	strb	r2, [r3]
	.loc 1 76 14
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #8]
	.loc 1 76 38
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #4]
	.loc 1 76 8
	cmp	r2, r3
	bcc	.L3
	.loc 1 78 9
	ldr	r0, [sp, #4]
	bl	nrf_fprintf_buffer_flush
.L3:
	.loc 1 80 1
	nop
	add	sp, sp, #12
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.LFE142:
	.size	buffer_add, .-buffer_add
	.section	.text.string_print,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	string_print, %function
string_print:
.LFB143:
	.loc 1 86 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI3:
	sub	sp, sp, #28
.LCFI4:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 87 14
	movs	r3, #0
	str	r3, [sp, #20]
	.loc 1 90 22
	ldr	r3, [sp]
	and	r3, r3, #1
	.loc 1 90 8
	cmp	r3, #0
	beq	.L5
	.loc 1 92 15
	b	.L6
.L7:
	.loc 1 94 18
	ldr	r3, [sp, #8]
	adds	r3, r3, #1
	str	r3, [sp, #8]
	.loc 1 95 18
	ldr	r3, [sp, #20]
	adds	r3, r3, #1
	str	r3, [sp, #20]
	.loc 1 96 13
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	buffer_add
.L6:
	.loc 1 92 19
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]
	strb	r3, [sp, #19]
	.loc 1 92 15
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L7
	.loc 1 99 15
	b	.L8
.L10:
	.loc 1 101 23
	ldr	r3, [sp, #4]
	subs	r3, r3, #1
	str	r3, [sp, #4]
	.loc 1 102 13
	movs	r1, #32
	ldr	r0, [sp, #12]
	bl	buffer_add
.L8:
	.loc 1 99 15
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bls	.L17
	.loc 1 99 37 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L10
	.loc 1 125 1
	b	.L17
.L5:
	.loc 1 107 12
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L12
	.loc 1 109 21
	ldr	r0, [sp, #8]
	bl	strlen
	str	r0, [sp, #20]
	.loc 1 112 15
	b	.L12
.L14:
	.loc 1 114 23
	ldr	r3, [sp, #4]
	subs	r3, r3, #1
	str	r3, [sp, #4]
	.loc 1 115 13
	movs	r1, #32
	ldr	r0, [sp, #12]
	bl	buffer_add
.L12:
	.loc 1 112 15
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bls	.L15
	.loc 1 112 37 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L14
	.loc 1 118 15
	b	.L15
.L16:
	.loc 1 120 18
	ldr	r3, [sp, #8]
	adds	r3, r3, #1
	str	r3, [sp, #8]
	.loc 1 121 18
	ldr	r3, [sp, #20]
	adds	r3, r3, #1
	str	r3, [sp, #20]
	.loc 1 122 13
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	buffer_add
.L15:
	.loc 1 118 19
	ldr	r3, [sp, #8]
	ldrb	r3, [r3]
	strb	r3, [sp, #19]
	.loc 1 118 15
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L16
.L17:
	.loc 1 125 1
	nop
	add	sp, sp, #28
.LCFI5:
	@ sp needed
	ldr	pc, [sp], #4
.LFE143:
	.size	string_print, .-string_print
	.section	.text.unsigned_print,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	unsigned_print, %function
unsigned_print:
.LFB144:
	.loc 1 133 1
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI6:
	sub	sp, sp, #36
.LCFI7:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 141 11
	ldr	r3, [sp, #8]
	str	r3, [sp, #28]
	.loc 1 145 11
	movs	r3, #1
	str	r3, [sp, #24]
	.loc 1 146 11
	b	.L19
.L20:
	.loc 1 148 15
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	udiv	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 149 14
	ldr	r3, [sp, #24]
	adds	r3, r3, #1
	str	r3, [sp, #24]
.L19:
	.loc 1 146 11
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcs	.L20
	.loc 1 151 8
	ldr	r2, [sp]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bls	.L21
	.loc 1 153 15
	ldr	r3, [sp]
	str	r3, [sp, #24]
.L21:
	.loc 1 158 22
	ldr	r3, [sp, #44]
	and	r3, r3, #1
	.loc 1 158 8
	cmp	r3, #0
	bne	.L22
	.loc 1 160 12
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L22
	.loc 1 162 31
	ldr	r3, [sp, #44]
	and	r3, r3, #2
	.loc 1 162 16
	cmp	r3, #0
	beq	.L23
	.loc 1 162 58 discriminator 1
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L23
	.loc 1 165 19
	movs	r3, #48
	strb	r3, [sp, #23]
	b	.L24
.L23:
	.loc 1 169 19
	movs	r3, #32
	strb	r3, [sp, #23]
.L24:
	.loc 1 171 19
	b	.L25
.L26:
	.loc 1 173 27
	ldr	r3, [sp, #40]
	subs	r3, r3, #1
	str	r3, [sp, #40]
	.loc 1 174 17
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	buffer_add
.L25:
	.loc 1 171 19
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L22
	.loc 1 171 39 discriminator 1
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #40]
	cmp	r2, r3
	bcc	.L26
.L22:
	.loc 1 179 11
	movs	r3, #1
	str	r3, [sp, #28]
.L30:
	.loc 1 191 12
	ldr	r3, [sp]
	cmp	r3, #1
	bls	.L27
	.loc 1 193 22
	ldr	r3, [sp]
	subs	r3, r3, #1
	str	r3, [sp]
	b	.L28
.L27:
	.loc 1 197 17
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #28]
	udiv	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 199 16
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bcs	.L28
	.loc 1 201 17
	b	.L29
.L28:
	.loc 1 204 15
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #4]
	mul	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 191 12
	b	.L30
.L29:
	.loc 1 211 13 discriminator 1
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #28]
	udiv	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 212 18 discriminator 1
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #28]
	mul	r3, r2, r3
	.loc 1 212 11 discriminator 1
	ldr	r2, [sp, #8]
	subs	r3, r2, r3
	str	r3, [sp, #8]
	.loc 1 213 9 discriminator 1
	ldr	r2, .L35
	ldr	r3, [sp, #16]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	buffer_add
	.loc 1 214 15 discriminator 1
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #4]
	udiv	r3, r2, r3
	str	r3, [sp, #28]
	.loc 1 215 5 discriminator 1
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bne	.L29
	.loc 1 219 22
	ldr	r3, [sp, #44]
	and	r3, r3, #1
	.loc 1 219 8
	cmp	r3, #0
	beq	.L34
	.loc 1 221 12
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L34
	.loc 1 223 19
	b	.L32
.L33:
	.loc 1 225 27
	ldr	r3, [sp, #40]
	subs	r3, r3, #1
	str	r3, [sp, #40]
	.loc 1 226 17
	movs	r1, #32
	ldr	r0, [sp, #12]
	bl	buffer_add
.L32:
	.loc 1 223 19
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L34
	.loc 1 223 39 discriminator 1
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #40]
	cmp	r2, r3
	bcc	.L33
.L34:
	.loc 1 230 1
	nop
	add	sp, sp, #36
.LCFI8:
	@ sp needed
	ldr	pc, [sp], #4
.L36:
	.align	2
.L35:
	.word	_aV2C.7537
.LFE144:
	.size	unsigned_print, .-unsigned_print
	.section	.text.int_print,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	int_print, %function
int_print:
.LFB145:
	.loc 1 238 1
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI9:
	sub	sp, sp, #36
.LCFI10:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	.loc 1 242 12
	ldr	r3, [sp, #16]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [sp, #24]
	.loc 1 247 11
	movs	r3, #1
	str	r3, [sp, #28]
	.loc 1 248 11
	b	.L38
.L39:
	.loc 1 250 28
	ldr	r3, [sp, #12]
	.loc 1 250 16
	ldr	r2, [sp, #24]
	sdiv	r3, r2, r3
	str	r3, [sp, #24]
	.loc 1 251 14
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	str	r3, [sp, #28]
.L38:
	.loc 1 248 19
	ldr	r3, [sp, #12]
	.loc 1 248 11
	ldr	r2, [sp, #24]
	cmp	r2, r3
	bge	.L39
	.loc 1 253 8
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #28]
	cmp	r2, r3
	bls	.L40
	.loc 1 255 15
	ldr	r3, [sp, #8]
	str	r3, [sp, #28]
.L40:
	.loc 1 257 8
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L41
	.loc 1 257 27 discriminator 1
	ldr	r3, [sp, #16]
	cmp	r3, #0
	blt	.L42
	.loc 1 258 23 discriminator 2
	ldr	r3, [sp, #44]
	and	r3, r3, #4
	.loc 1 257 39 discriminator 2
	cmp	r3, #0
	beq	.L41
.L42:
	.loc 1 260 19
	ldr	r3, [sp, #40]
	subs	r3, r3, #1
	str	r3, [sp, #40]
.L41:
	.loc 1 265 24
	ldr	r3, [sp, #44]
	and	r3, r3, #2
	.loc 1 265 8
	cmp	r3, #0
	beq	.L43
	.loc 1 265 44 discriminator 2
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L44
.L43:
	.loc 1 266 23 discriminator 3
	ldr	r3, [sp, #44]
	and	r3, r3, #1
	.loc 1 265 66 discriminator 3
	cmp	r3, #0
	bne	.L44
	.loc 1 268 12
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L44
	.loc 1 270 19
	b	.L45
.L46:
	.loc 1 272 27
	ldr	r3, [sp, #40]
	subs	r3, r3, #1
	str	r3, [sp, #40]
	.loc 1 273 17
	movs	r1, #32
	ldr	r0, [sp, #20]
	bl	buffer_add
.L45:
	.loc 1 270 19
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L44
	.loc 1 270 39 discriminator 1
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #40]
	cmp	r2, r3
	bcc	.L46
.L44:
	.loc 1 280 8
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bge	.L47
	.loc 1 282 11
	ldr	r3, [sp, #16]
	rsbs	r3, r3, #0
	str	r3, [sp, #16]
	.loc 1 283 9
	movs	r1, #45
	ldr	r0, [sp, #20]
	bl	buffer_add
	b	.L48
.L47:
	.loc 1 285 27
	ldr	r3, [sp, #44]
	and	r3, r3, #4
	.loc 1 285 13
	cmp	r3, #0
	beq	.L48
	.loc 1 287 9
	movs	r1, #43
	ldr	r0, [sp, #20]
	bl	buffer_add
.L48:
	.loc 1 296 23
	ldr	r3, [sp, #44]
	and	r3, r3, #2
	.loc 1 296 8
	cmp	r3, #0
	beq	.L49
	.loc 1 297 23 discriminator 1
	ldr	r3, [sp, #44]
	and	r3, r3, #1
	.loc 1 296 50 discriminator 1
	cmp	r3, #0
	bne	.L49
	.loc 1 297 43
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L49
	.loc 1 299 12
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L49
	.loc 1 301 19
	b	.L50
.L51:
	.loc 1 303 27
	ldr	r3, [sp, #40]
	subs	r3, r3, #1
	str	r3, [sp, #40]
	.loc 1 304 17
	movs	r1, #48
	ldr	r0, [sp, #20]
	bl	buffer_add
.L50:
	.loc 1 301 19
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L49
	.loc 1 301 39 discriminator 1
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #40]
	cmp	r2, r3
	bcc	.L51
.L49:
	.loc 1 311 5
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #44]
	str	r3, [sp, #4]
	ldr	r3, [sp, #40]
	str	r3, [sp]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r0, [sp, #20]
	bl	unsigned_print
	.loc 1 312 1
	nop
	add	sp, sp, #36
.LCFI11:
	@ sp needed
	ldr	pc, [sp], #4
.LFE145:
	.size	int_print, .-int_print
	.section	.text.nrf_fprintf_fmt,"ax",%progbits
	.align	1
	.global	nrf_fprintf_fmt
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_fprintf_fmt, %function
nrf_fprintf_fmt:
.LFB146:
	.loc 1 317 1
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI12:
	sub	sp, sp, #60
.LCFI13:
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	.loc 1 324 8
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L82
.L53:
	.loc 1 337 11
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]
	strb	r3, [sp, #55]
	.loc 1 338 14
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 340 12
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L83
	.loc 1 344 12
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #37
	bne	.L57
	.loc 1 349 25
	movs	r3, #0
	str	r3, [sp, #40]
	.loc 1 350 15
	movs	r3, #1
	str	r3, [sp, #48]
.L62:
	.loc 1 354 19
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]
	strb	r3, [sp, #55]
	.loc 1 355 17
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #48
	beq	.L58
	cmp	r3, #48
	bgt	.L59
	cmp	r3, #43
	beq	.L60
	cmp	r3, #45
	bne	.L59
	.loc 1 358 37
	ldr	r3, [sp, #40]
	orr	r3, r3, #1
	str	r3, [sp, #40]
	.loc 1 359 30
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 360 25
	b	.L61
.L58:
	.loc 1 362 37
	ldr	r3, [sp, #40]
	orr	r3, r3, #2
	str	r3, [sp, #40]
	.loc 1 363 30
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 364 25
	b	.L61
.L60:
	.loc 1 366 37
	ldr	r3, [sp, #40]
	orr	r3, r3, #4
	str	r3, [sp, #40]
	.loc 1 367 30
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 368 25
	b	.L61
.L59:
	.loc 1 370 27
	movs	r3, #0
	str	r3, [sp, #48]
	.loc 1 371 25
	nop
.L61:
	.loc 1 373 13
	ldr	r3, [sp, #48]
	cmp	r3, #0
	bne	.L62
	.loc 1 378 24
	movs	r3, #0
	str	r3, [sp, #36]
.L65:
	.loc 1 381 20
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #42
	bne	.L63
	.loc 1 384 50
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	adds	r1, r3, #4
	ldr	r2, [sp, #12]
	str	r1, [r2]
	ldr	r3, [r3]
	.loc 1 384 32
	ldr	r2, [sp, #36]
	add	r3, r3, r2
	str	r3, [sp, #36]
	.loc 1 386 26
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 387 21
	b	.L64
.L63:
	.loc 1 389 19
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]
	strb	r3, [sp, #55]
	.loc 1 390 20
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L64
	.loc 1 390 31 discriminator 1
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L64
	.loc 1 394 22
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 395 42
	ldr	r2, [sp, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	.loc 1 395 49
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	add	r3, r3, r2
	.loc 1 395 28
	subs	r3, r3, #48
	str	r3, [sp, #36]
	.loc 1 381 20
	b	.L65
.L64:
	.loc 1 401 23
	movs	r3, #0
	str	r3, [sp, #44]
	.loc 1 402 15
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]
	strb	r3, [sp, #55]
	.loc 1 403 16
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #46
	bne	.L66
	.loc 1 405 22
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
.L67:
	.loc 1 408 23
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]
	strb	r3, [sp, #55]
	.loc 1 409 24
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L66
	.loc 1 409 35 discriminator 1
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L66
	.loc 1 413 26
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 414 43
	ldr	r2, [sp, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	.loc 1 414 49
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	add	r3, r3, r2
	.loc 1 414 31
	subs	r3, r3, #48
	str	r3, [sp, #44]
	.loc 1 408 23
	b	.L67
.L66:
	.loc 1 420 15
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]
	strb	r3, [sp, #55]
.L70:
	.loc 1 423 20
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #108
	beq	.L68
	.loc 1 423 32 discriminator 1
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #104
	bne	.L69
.L68:
	.loc 1 425 26
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 426 23
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]
	strb	r3, [sp, #55]
	.loc 1 423 20
	b	.L70
.L69:
	.loc 1 437 13
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #37
	beq	.L71
	cmp	r3, #37
	blt	.L84
	cmp	r3, #120
	bgt	.L84
	cmp	r3, #88
	blt	.L84
	subs	r3, r3, #88
	cmp	r3, #32
	bhi	.L84
	adr	r2, .L74
	ldr	pc, [r2, r3, lsl #2]
	.p2align 2
.L74:
	.word	.L73+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L79+1
	.word	.L78+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L78+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L84+1
	.word	.L77+1
	.word	.L84+1
	.word	.L84+1
	.word	.L76+1
	.word	.L84+1
	.word	.L75+1
	.word	.L84+1
	.word	.L84+1
	.word	.L73+1
	.p2align 1
.L79:
.LBB2:
	.loc 1 442 23
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	adds	r1, r3, #4
	ldr	r2, [sp, #12]
	str	r1, [r2]
	ldr	r3, [r3]
	str	r3, [sp, #48]
	.loc 1 443 24
	ldr	r3, [sp, #48]
	strb	r3, [sp, #31]
	.loc 1 444 21
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #20]
	bl	buffer_add
	.loc 1 445 21
	b	.L80
.L78:
.LBE2:
	.loc 1 449 23
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	adds	r1, r3, #4
	ldr	r2, [sp, #12]
	str	r1, [r2]
	ldr	r3, [r3]
	str	r3, [sp, #48]
	.loc 1 450 21
	ldr	r3, [sp, #40]
	str	r3, [sp, #4]
	ldr	r3, [sp, #36]
	str	r3, [sp]
	ldr	r3, [sp, #44]
	movs	r2, #10
	ldr	r1, [sp, #48]
	ldr	r0, [sp, #20]
	bl	int_print
	.loc 1 456 21
	b	.L80
.L75:
	.loc 1 458 23
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	adds	r1, r3, #4
	ldr	r2, [sp, #12]
	str	r1, [r2]
	ldr	r3, [r3]
	str	r3, [sp, #48]
	.loc 1 459 21
	ldr	r1, [sp, #48]
	ldr	r3, [sp, #40]
	str	r3, [sp, #4]
	ldr	r3, [sp, #36]
	str	r3, [sp]
	ldr	r3, [sp, #44]
	movs	r2, #10
	ldr	r0, [sp, #20]
	bl	unsigned_print
	.loc 1 465 21
	b	.L80
.L73:
	.loc 1 468 23
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	adds	r1, r3, #4
	ldr	r2, [sp, #12]
	str	r1, [r2]
	ldr	r3, [r3]
	str	r3, [sp, #48]
	.loc 1 469 21
	ldr	r1, [sp, #48]
	ldr	r3, [sp, #40]
	str	r3, [sp, #4]
	ldr	r3, [sp, #36]
	str	r3, [sp]
	ldr	r3, [sp, #44]
	movs	r2, #16
	ldr	r0, [sp, #20]
	bl	unsigned_print
	.loc 1 475 21
	b	.L80
.L76:
.LBB3:
	.loc 1 478 34
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	adds	r1, r3, #4
	ldr	r2, [sp, #12]
	str	r1, [r2]
	ldr	r3, [r3]
	str	r3, [sp, #32]
	.loc 1 479 21
	ldr	r3, [sp, #40]
	ldr	r2, [sp, #36]
	ldr	r1, [sp, #32]
	ldr	r0, [sp, #20]
	bl	string_print
	.loc 1 480 21
	b	.L80
.L77:
.LBE3:
	.loc 1 483 23
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	adds	r1, r3, #4
	ldr	r2, [sp, #12]
	str	r1, [r2]
	ldr	r3, [r3]
	str	r3, [sp, #48]
	.loc 1 484 21
	movs	r1, #48
	ldr	r0, [sp, #20]
	bl	buffer_add
	.loc 1 485 21
	movs	r1, #120
	ldr	r0, [sp, #20]
	bl	buffer_add
	.loc 1 486 21
	ldr	r1, [sp, #48]
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r3, #8
	str	r3, [sp]
	movs	r3, #8
	movs	r2, #16
	ldr	r0, [sp, #20]
	bl	unsigned_print
	.loc 1 487 21
	b	.L80
.L71:
	.loc 1 489 21
	movs	r1, #37
	ldr	r0, [sp, #20]
	bl	buffer_add
	.loc 1 490 21
	b	.L80
.L84:
	.loc 1 492 21
	nop
.L80:
	.loc 1 495 18
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
	b	.L81
.L57:
	.loc 1 499 13
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [sp, #20]
	bl	buffer_add
.L81:
	.loc 1 501 14
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 501 5
	cmp	r3, #0
	bne	.L53
	b	.L56
.L83:
	.loc 1 342 13
	nop
.L56:
	.loc 1 503 14
	ldr	r3, [sp, #20]
	ldrb	r3, [r3, #12]	@ zero_extendqisi2
	.loc 1 503 8
	cmp	r3, #0
	beq	.L52
	.loc 1 505 9
	ldr	r0, [sp, #20]
	bl	nrf_fprintf_buffer_flush
	b	.L52
.L82:
	.loc 1 326 9
	nop
.L52:
	.loc 1 507 1
	add	sp, sp, #60
.LCFI14:
	@ sp needed
	ldr	pc, [sp], #4
.LFE146:
	.size	nrf_fprintf_fmt, .-nrf_fprintf_fmt
	.section	.rodata._aV2C.7537,"a"
	.align	2
	.type	_aV2C.7537, %object
	.size	_aV2C.7537, 16
_aV2C.7537:
	.ascii	"0123456789ABCDEF"
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
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.byte	0x4
	.4byte	.LCFI0-.LFB142
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI2-.LCFI1
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.byte	0x4
	.4byte	.LCFI3-.LFB143
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.byte	0x4
	.4byte	.LCFI6-.LFB144
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.byte	0x4
	.4byte	.LCFI9-.LFB145
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.byte	0x4
	.4byte	.LCFI12-.LFB146
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE8:
	.text
.Letext0:
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\fprintf\\nrf_fprintf.h"
	.file 3 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.section	.debug_types,"G",%progbits,wt.44ee41285017180a,comdat
	.4byte	0xe5
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x44
	.byte	0xee
	.byte	0x41
	.byte	0x28
	.byte	0x50
	.byte	0x17
	.byte	0x18
	.byte	0xa
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF11
	.byte	0x18
	.byte	0x2
	.byte	0x37
	.byte	0x10
	.4byte	0x79
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.byte	0x39
	.byte	0x12
	.4byte	0x79
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.byte	0x3a
	.byte	0x12
	.4byte	0x7e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.byte	0x3b
	.byte	0xc
	.4byte	0x83
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x2
	.byte	0x3c
	.byte	0x9
	.4byte	0x8f
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x2
	.byte	0x3e
	.byte	0x18
	.4byte	0x96
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF5
	.byte	0x2
	.byte	0x40
	.byte	0x18
	.4byte	0x9b
	.byte	0x14
	.byte	0
	.uleb128 0x4
	.4byte	0xa7
	.uleb128 0x4
	.4byte	0x83
	.uleb128 0x5
	.4byte	.LASF6
	.byte	0x3
	.byte	0x37
	.byte	0x12
	.4byte	0xad
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	0xb4
	.uleb128 0x5
	.4byte	.LASF7
	.byte	0x2
	.byte	0x32
	.byte	0x11
	.4byte	0xba
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc0
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc8
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x8
	.uleb128 0x9
	.4byte	0xdd
	.uleb128 0xa
	.4byte	0xb4
	.uleb128 0xa
	.4byte	0xdd
	.uleb128 0xa
	.4byte	0x83
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xe3
	.uleb128 0x4
	.4byte	0xc0
	.byte	0
	.file 4 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.4byte	.LASF12
	.byte	0x8
	.byte	0x4
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0xc
	.4byte	.LASF13
	.byte	0x4
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x4
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x4
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x7
	.byte	0x4
	.4byte	0x61
	.uleb128 0xe
	.4byte	0x70
	.4byte	0x70
	.uleb128 0xa
	.4byte	0x76
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7d
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x4
	.4byte	0x82
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
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
	.4byte	.LASF16
	.byte	0x14
	.byte	0x4
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x4
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x10
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x11
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x55
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x4
	.4byte	0x5a
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x4
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
	.uleb128 0x13
	.byte	0xc
	.byte	0x4
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0x4
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0x4
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0x4
	.byte	0xd7
	.byte	0x21
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x60
	.uleb128 0x7
	.byte	0x4
	.4byte	0x65
	.uleb128 0x7
	.byte	0x4
	.4byte	0x6a
	.uleb128 0x4
	.4byte	0x6f
	.uleb128 0x4
	.4byte	0x76
	.uleb128 0x4
	.4byte	0x86
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x12
	.4byte	.LASF22
	.byte	0x4
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
	.4byte	.LASF23
	.byte	0x4
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
	.uleb128 0x13
	.byte	0x20
	.byte	0x4
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x4
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x4
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF26
	.byte	0x4
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF27
	.byte	0x4
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF28
	.byte	0x4
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF29
	.byte	0x4
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x4
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x4
	.byte	0xd1
	.byte	0x9
	.4byte	0xad
	.byte	0x1c
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb3
	.uleb128 0x7
	.byte	0x4
	.4byte	0xc7
	.uleb128 0x7
	.byte	0x4
	.4byte	0xd6
	.uleb128 0x7
	.byte	0x4
	.4byte	0xea
	.uleb128 0x7
	.byte	0x4
	.4byte	0xf9
	.uleb128 0x7
	.byte	0x4
	.4byte	0x112
	.uleb128 0xe
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0xa
	.4byte	0x130
	.uleb128 0xa
	.4byte	0x130
	.byte	0
	.uleb128 0xe
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0xa
	.4byte	0x130
	.byte	0
	.uleb128 0xe
	.4byte	0x130
	.4byte	0xea
	.uleb128 0xa
	.4byte	0x137
	.uleb128 0xa
	.4byte	0x130
	.byte	0
	.uleb128 0xe
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0xa
	.4byte	0x137
	.byte	0
	.uleb128 0xe
	.4byte	0x130
	.4byte	0x112
	.uleb128 0xa
	.4byte	0x13e
	.uleb128 0xa
	.4byte	0x144
	.uleb128 0xa
	.4byte	0x14b
	.byte	0
	.uleb128 0xe
	.4byte	0x130
	.4byte	0x130
	.uleb128 0xa
	.4byte	0x155
	.uleb128 0xa
	.4byte	0x15b
	.uleb128 0xa
	.4byte	0x144
	.uleb128 0xa
	.4byte	0x14b
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF32
	.uleb128 0x7
	.byte	0x4
	.4byte	0x161
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x14
	.byte	0x4
	.byte	0x43
	.byte	0xa1
	.byte	0x3c
	.byte	0x2b
	.byte	0x4d
	.byte	0x78
	.byte	0x9e
	.byte	0x4a
	.uleb128 0x7
	.byte	0x4
	.4byte	0x144
	.uleb128 0x7
	.byte	0x4
	.4byte	0x168
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
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
	.uleb128 0x13
	.byte	0x58
	.byte	0x4
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x4
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x4
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x4
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x4
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x4
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF38
	.byte	0x4
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF39
	.byte	0x4
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF40
	.byte	0x4
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF41
	.byte	0x4
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF42
	.byte	0x4
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF43
	.byte	0x4
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF44
	.byte	0x4
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF45
	.byte	0x4
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x4
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x4
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF48
	.byte	0x4
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF49
	.byte	0x4
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF50
	.byte	0x4
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF51
	.byte	0x4
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF52
	.byte	0x4
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF53
	.byte	0x4
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x4
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF55
	.byte	0x4
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x4
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x4
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x4
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF59
	.byte	0x4
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF60
	.byte	0x4
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x4
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x4
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x4
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x4
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
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
	.4byte	.LASF65
	.byte	0x8
	.byte	0x4
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x4
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x4
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF32
	.byte	0
	.file 5 "<built-in>"
	.section	.debug_types,"G",%progbits,wt.e0945ce8758c9534,comdat
	.4byte	0x33
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xe0
	.byte	0x94
	.byte	0x5c
	.byte	0xe8
	.byte	0x75
	.byte	0x8c
	.byte	0x95
	.byte	0x34
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x15
	.4byte	.LASF68
	.byte	0x4
	.byte	0x5
	.byte	0
	.4byte	0x34
	.uleb128 0x16
	.4byte	.LASF69
	.4byte	0x34
	.byte	0
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0
	.file 6 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.file 7 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 8 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 9 "../../../../../../components/libraries/util/app_util.h"
	.file 10 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdarg.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x59e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x18
	.4byte	.LASF122
	.byte	0xc
	.4byte	.LASF123
	.4byte	.LASF124
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x6
	.byte	0x1
	.byte	0x6
	.4byte	.LASF70
	.uleb128 0x5
	.4byte	.LASF71
	.byte	0x6
	.byte	0x30
	.byte	0x17
	.4byte	0x3c
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF72
	.uleb128 0x4
	.4byte	0x3c
	.uleb128 0x6
	.byte	0x2
	.byte	0x5
	.4byte	.LASF73
	.uleb128 0x5
	.4byte	.LASF74
	.byte	0x6
	.byte	0x36
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x6
	.byte	0x2
	.byte	0x7
	.4byte	.LASF75
	.uleb128 0x5
	.4byte	.LASF76
	.byte	0x6
	.byte	0x37
	.byte	0x14
	.4byte	0x73
	.uleb128 0x19
	.4byte	0x62
	.uleb128 0xf
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x5
	.4byte	.LASF77
	.byte	0x6
	.byte	0x38
	.byte	0x16
	.4byte	0x86
	.uleb128 0x6
	.byte	0x4
	.byte	0x7
	.4byte	.LASF9
	.uleb128 0x6
	.byte	0x8
	.byte	0x5
	.4byte	.LASF78
	.uleb128 0x6
	.byte	0x8
	.byte	0x7
	.4byte	.LASF79
	.uleb128 0x12
	.4byte	.LASF68
	.byte	0x4
	.byte	0x4c
	.byte	0x1b
	.byte	0xe0
	.byte	0x94
	.byte	0x5c
	.byte	0xe8
	.byte	0x75
	.byte	0x8c
	.byte	0x95
	.byte	0x34
	.uleb128 0x6
	.byte	0x4
	.byte	0x5
	.4byte	.LASF32
	.uleb128 0x6
	.byte	0x1
	.byte	0x8
	.4byte	.LASF10
	.uleb128 0x4
	.4byte	0xb2
	.uleb128 0x7
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x12
	.4byte	.LASF23
	.byte	0x4
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
	.uleb128 0x4
	.4byte	0xc4
	.uleb128 0x12
	.4byte	.LASF18
	.byte	0x4
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
	.uleb128 0x4
	.4byte	0xd9
	.uleb128 0x1a
	.4byte	.LASF80
	.byte	0x4
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
	.4byte	.LASF81
	.byte	0x4
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xe9
	.uleb128 0x1b
	.4byte	.LASF82
	.byte	0x4
	.2byte	0x110
	.byte	0x25
	.4byte	0xd4
	.uleb128 0x1b
	.4byte	.LASF83
	.byte	0x4
	.2byte	0x111
	.byte	0x25
	.4byte	0xd4
	.uleb128 0x10
	.4byte	0x43
	.4byte	0x136
	.uleb128 0x11
	.4byte	0x86
	.byte	0x7f
	.byte	0
	.uleb128 0x4
	.4byte	0x126
	.uleb128 0x1b
	.4byte	.LASF84
	.byte	0x4
	.2byte	0x113
	.byte	0x1c
	.4byte	0x136
	.uleb128 0x10
	.4byte	0xb9
	.4byte	0x153
	.uleb128 0x1c
	.byte	0
	.uleb128 0x4
	.4byte	0x148
	.uleb128 0x1b
	.4byte	.LASF85
	.byte	0x4
	.2byte	0x115
	.byte	0x13
	.4byte	0x153
	.uleb128 0x1b
	.4byte	.LASF86
	.byte	0x4
	.2byte	0x116
	.byte	0x13
	.4byte	0x153
	.uleb128 0x1b
	.4byte	.LASF87
	.byte	0x4
	.2byte	0x117
	.byte	0x13
	.4byte	0x153
	.uleb128 0x1b
	.4byte	.LASF88
	.byte	0x4
	.2byte	0x118
	.byte	0x13
	.4byte	0x153
	.uleb128 0x1b
	.4byte	.LASF89
	.byte	0x4
	.2byte	0x11a
	.byte	0x13
	.4byte	0x153
	.uleb128 0x1b
	.4byte	.LASF90
	.byte	0x4
	.2byte	0x11b
	.byte	0x13
	.4byte	0x153
	.uleb128 0x1b
	.4byte	.LASF91
	.byte	0x4
	.2byte	0x11c
	.byte	0x13
	.4byte	0x153
	.uleb128 0x1b
	.4byte	.LASF92
	.byte	0x4
	.2byte	0x11d
	.byte	0x13
	.4byte	0x153
	.uleb128 0x1b
	.4byte	.LASF93
	.byte	0x4
	.2byte	0x11e
	.byte	0x13
	.4byte	0x153
	.uleb128 0x1b
	.4byte	.LASF94
	.byte	0x4
	.2byte	0x11f
	.byte	0x13
	.4byte	0x153
	.uleb128 0xe
	.4byte	0x73
	.4byte	0x1e9
	.uleb128 0xa
	.4byte	0x1e9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1f4
	.uleb128 0x1d
	.4byte	.LASF125
	.uleb128 0x4
	.4byte	0x1ef
	.uleb128 0x1b
	.4byte	.LASF95
	.byte	0x4
	.2byte	0x135
	.byte	0xe
	.4byte	0x206
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1da
	.uleb128 0xe
	.4byte	0x73
	.4byte	0x21b
	.uleb128 0xa
	.4byte	0x21b
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x1ef
	.uleb128 0x1b
	.4byte	.LASF96
	.byte	0x4
	.2byte	0x136
	.byte	0xe
	.4byte	0x22e
	.uleb128 0x7
	.byte	0x4
	.4byte	0x20c
	.uleb128 0x1e
	.4byte	.LASF97
	.byte	0x4
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
	.4byte	.LASF98
	.byte	0x4
	.2byte	0x157
	.byte	0x1f
	.4byte	0x252
	.uleb128 0x7
	.byte	0x4
	.4byte	0x234
	.uleb128 0x1b
	.4byte	.LASF99
	.byte	0x7
	.2byte	0x744
	.byte	0x19
	.4byte	0x6e
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0x8
	.byte	0x21
	.byte	0x11
	.4byte	0x7a
	.uleb128 0x1f
	.4byte	.LASF101
	.byte	0x9
	.byte	0x53
	.byte	0x11
	.4byte	0x7a
	.uleb128 0x1f
	.4byte	.LASF102
	.byte	0x9
	.byte	0x54
	.byte	0x11
	.4byte	0x7a
	.uleb128 0x1f
	.4byte	.LASF103
	.byte	0x9
	.byte	0x72
	.byte	0x13
	.4byte	0x295
	.uleb128 0x7
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x1f
	.4byte	.LASF104
	.byte	0x9
	.byte	0x73
	.byte	0x11
	.4byte	0x7a
	.uleb128 0x5
	.4byte	.LASF105
	.byte	0xa
	.byte	0x45
	.byte	0x13
	.4byte	0x9b
	.uleb128 0x6
	.byte	0x1
	.byte	0x2
	.4byte	.LASF8
	.uleb128 0x12
	.4byte	.LASF106
	.byte	0x2
	.byte	0x41
	.byte	0x3
	.byte	0x44
	.byte	0xee
	.byte	0x41
	.byte	0x28
	.byte	0x50
	.byte	0x17
	.byte	0x18
	.byte	0xa
	.uleb128 0x20
	.4byte	.LASF126
	.byte	0x1
	.2byte	0x13a
	.byte	0x6
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x395
	.uleb128 0x21
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x13a
	.byte	0x30
	.4byte	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x21
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x13b
	.byte	0x22
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x21
	.4byte	.LASF109
	.byte	0x1
	.2byte	0x13c
	.byte	0x1f
	.4byte	0x3a0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x22
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x149
	.byte	0xa
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x22
	.ascii	"v\000"
	.byte	0x1
	.2byte	0x14a
	.byte	0xd
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x23
	.4byte	.LASF110
	.byte	0x1
	.2byte	0x14b
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x23
	.4byte	.LASF111
	.byte	0x1
	.2byte	0x14c
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x23
	.4byte	.LASF112
	.byte	0x1
	.2byte	0x14d
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x24
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x37a
	.uleb128 0x22
	.ascii	"c0\000"
	.byte	0x1
	.2byte	0x1b9
	.byte	0x1a
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.byte	0
	.uleb128 0x25
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.uleb128 0x22
	.ascii	"p_s\000"
	.byte	0x1
	.2byte	0x1de
	.byte	0x22
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2ba
	.uleb128 0x4
	.4byte	0x395
	.uleb128 0x7
	.byte	0x4
	.4byte	0x2a7
	.uleb128 0x26
	.4byte	.LASF116
	.byte	0x1
	.byte	0xe8
	.byte	0xd
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x433
	.uleb128 0x27
	.4byte	.LASF107
	.byte	0x1
	.byte	0xe8
	.byte	0x31
	.4byte	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x28
	.ascii	"v\000"
	.byte	0x1
	.byte	0xe9
	.byte	0x1f
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.4byte	.LASF113
	.byte	0x1
	.byte	0xea
	.byte	0x20
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.4byte	.LASF110
	.byte	0x1
	.byte	0xeb
	.byte	0x20
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.4byte	.LASF112
	.byte	0x1
	.byte	0xec
	.byte	0x20
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.4byte	.LASF111
	.byte	0x1
	.byte	0xed
	.byte	0x20
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.4byte	.LASF114
	.byte	0x1
	.byte	0xef
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x29
	.4byte	.LASF115
	.byte	0x1
	.byte	0xf0
	.byte	0xd
	.4byte	0x62
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x26
	.4byte	.LASF117
	.byte	0x1
	.byte	0x7f
	.byte	0xd
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4ee
	.uleb128 0x27
	.4byte	.LASF107
	.byte	0x1
	.byte	0x7f
	.byte	0x36
	.4byte	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x28
	.ascii	"v\000"
	.byte	0x1
	.byte	0x80
	.byte	0x25
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.4byte	.LASF113
	.byte	0x1
	.byte	0x81
	.byte	0x25
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x27
	.4byte	.LASF110
	.byte	0x1
	.byte	0x82
	.byte	0x25
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x27
	.4byte	.LASF112
	.byte	0x1
	.byte	0x83
	.byte	0x25
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x27
	.4byte	.LASF111
	.byte	0x1
	.byte	0x84
	.byte	0x25
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x29
	.4byte	.LASF118
	.byte	0x1
	.byte	0x86
	.byte	0x17
	.4byte	0x4fe
	.uleb128 0x5
	.byte	0x3
	.4byte	_aV2C.7537
	.uleb128 0x2a
	.ascii	"Div\000"
	.byte	0x1
	.byte	0x88
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x29
	.4byte	.LASF119
	.byte	0x1
	.byte	0x89
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x29
	.4byte	.LASF114
	.byte	0x1
	.byte	0x8a
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2a
	.ascii	"c\000"
	.byte	0x1
	.byte	0x8b
	.byte	0xa
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x10
	.4byte	0xb9
	.4byte	0x4fe
	.uleb128 0x11
	.4byte	0x86
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.4byte	0x4ee
	.uleb128 0x26
	.4byte	.LASF120
	.byte	0x1
	.byte	0x52
	.byte	0xd
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x572
	.uleb128 0x27
	.4byte	.LASF107
	.byte	0x1
	.byte	0x52
	.byte	0x34
	.4byte	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.4byte	.LASF121
	.byte	0x1
	.byte	0x53
	.byte	0x27
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x27
	.4byte	.LASF112
	.byte	0x1
	.byte	0x54
	.byte	0x23
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x27
	.4byte	.LASF111
	.byte	0x1
	.byte	0x55
	.byte	0x23
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.4byte	.LASF114
	.byte	0x1
	.byte	0x57
	.byte	0xe
	.4byte	0x7a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2a
	.ascii	"c\000"
	.byte	0x1
	.byte	0x58
	.byte	0xa
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.byte	0
	.uleb128 0x2b
	.4byte	.LASF127
	.byte	0x1
	.byte	0x48
	.byte	0xd
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x27
	.4byte	.LASF107
	.byte	0x1
	.byte	0x48
	.byte	0x32
	.4byte	0x39b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x28
	.ascii	"c\000"
	.byte	0x1
	.byte	0x48
	.byte	0x3e
	.4byte	0xb2
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x20
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.uleb128 0x34
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x18
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
	.uleb128 0x2b
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x63
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x5a2
	.4byte	0x2ca
	.ascii	"nrf_fprintf_fmt\000"
	.4byte	0x3a6
	.ascii	"int_print\000"
	.4byte	0x433
	.ascii	"unsigned_print\000"
	.4byte	0x503
	.ascii	"string_print\000"
	.4byte	0x572
	.ascii	"buffer_add\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x1c0
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x5a2
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
	.4byte	0xb
	.ascii	"__va_list\000"
	.4byte	0x9b
	.ascii	"__va_list\000"
	.4byte	0xab
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xb2
	.ascii	"char\000"
	.4byte	0xc4
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xd9
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x234
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x2a7
	.ascii	"va_list\000"
	.4byte	0x2b3
	.ascii	"_Bool\000"
	.4byte	0xb
	.ascii	"nrf_fprintf_ctx\000"
	.4byte	0x2ba
	.ascii	"nrf_fprintf_ctx_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
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
	.file 11 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x6
	.byte	0x4
	.file 12 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xc
	.byte	0x4
	.byte	0x3
	.uleb128 0x37
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.file 13 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0xd
	.byte	0x4
	.file 14 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0xe
	.byte	0x4
	.file 15 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0xf
	.byte	0x4
	.file 16 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x10
	.byte	0x4
	.file 17 "../../../../../../components/libraries/util/sdk_errors.h"
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x11
	.file 18 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x9
	.file 19 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x13
	.byte	0x4
	.file 20 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x14
	.file 21 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x15
	.byte	0x3
	.uleb128 0x92
	.uleb128 0x7
	.file 22 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x16
	.file 23 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x17
	.byte	0x4
	.byte	0x4
	.file 24 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x18
	.byte	0x4
	.file 25 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x19
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0x8
	.byte	0x4
	.byte	0x4
	.file 26 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x1a
	.byte	0x4
	.file 27 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x1b
	.byte	0x4
	.file 28 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x1c
	.byte	0x4
	.byte	0x3
	.uleb128 0x61
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 29 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x1d
	.file 30 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x1e
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0xa
	.byte	0x4
	.byte	0x3
	.uleb128 0x40
	.uleb128 0x1e
	.byte	0x4
	.byte	0x3
	.uleb128 0x41
	.uleb128 0x2
	.byte	0x4
	.file 31 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\fprintf\\nrf_fprintf_format.h"
	.byte	0x3
	.uleb128 0x42
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF113:
	.ascii	"Base\000"
.LASF4:
	.ascii	"p_user_ctx\000"
.LASF104:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF91:
	.ascii	"__RAL_data_utf8_space\000"
.LASF64:
	.ascii	"date_time_format\000"
.LASF86:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF82:
	.ascii	"__RAL_codeset_ascii\000"
.LASF15:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF3:
	.ascii	"auto_flush\000"
.LASF18:
	.ascii	"__RAL_locale_t\000"
.LASF105:
	.ascii	"va_list\000"
.LASF93:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF111:
	.ascii	"FormatFlags\000"
.LASF121:
	.ascii	"p_str\000"
.LASF79:
	.ascii	"long long unsigned int\000"
.LASF16:
	.ascii	"__locale_s\000"
.LASF96:
	.ascii	"__user_get_time_of_day\000"
.LASF103:
	.ascii	"_vectors\000"
.LASF99:
	.ascii	"ITM_RxBuffer\000"
.LASF62:
	.ascii	"date_format\000"
.LASF14:
	.ascii	"next\000"
.LASF60:
	.ascii	"abbrev_month_names\000"
.LASF13:
	.ascii	"decode\000"
.LASF78:
	.ascii	"long long int\000"
.LASF70:
	.ascii	"signed char\000"
.LASF80:
	.ascii	"__RAL_global_locale\000"
.LASF21:
	.ascii	"codeset\000"
.LASF28:
	.ascii	"__towupper\000"
.LASF90:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF11:
	.ascii	"nrf_fprintf_ctx\000"
.LASF32:
	.ascii	"long int\000"
.LASF68:
	.ascii	"__va_list\000"
.LASF36:
	.ascii	"int_curr_symbol\000"
.LASF47:
	.ascii	"n_cs_precedes\000"
.LASF74:
	.ascii	"uint16_t\000"
.LASF1:
	.ascii	"io_buffer_size\000"
.LASF51:
	.ascii	"int_p_cs_precedes\000"
.LASF67:
	.ascii	"__wchar\000"
.LASF40:
	.ascii	"mon_grouping\000"
.LASF27:
	.ascii	"__iswctype\000"
.LASF6:
	.ascii	"size_t\000"
.LASF9:
	.ascii	"unsigned int\000"
.LASF53:
	.ascii	"int_p_sep_by_space\000"
.LASF100:
	.ascii	"SystemCoreClock\000"
.LASF61:
	.ascii	"am_pm_indicator\000"
.LASF89:
	.ascii	"__RAL_data_utf8_period\000"
.LASF126:
	.ascii	"nrf_fprintf_fmt\000"
.LASF35:
	.ascii	"grouping\000"
.LASF29:
	.ascii	"__towlower\000"
.LASF94:
	.ascii	"__RAL_data_empty_string\000"
.LASF34:
	.ascii	"thousands_sep\000"
.LASF17:
	.ascii	"__category\000"
.LASF102:
	.ascii	"__StackLimit\000"
.LASF25:
	.ascii	"__toupper\000"
.LASF19:
	.ascii	"name\000"
.LASF20:
	.ascii	"data\000"
.LASF42:
	.ascii	"negative_sign\000"
.LASF75:
	.ascii	"short unsigned int\000"
.LASF0:
	.ascii	"p_io_buffer\000"
.LASF57:
	.ascii	"day_names\000"
.LASF124:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF125:
	.ascii	"timeval\000"
.LASF112:
	.ascii	"FieldWidth\000"
.LASF123:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\external\\fprintf\\nrf"
	.ascii	"_fprintf_format.c\000"
.LASF63:
	.ascii	"time_format\000"
.LASF106:
	.ascii	"nrf_fprintf_ctx_t\000"
.LASF41:
	.ascii	"positive_sign\000"
.LASF49:
	.ascii	"p_sign_posn\000"
.LASF115:
	.ascii	"Number\000"
.LASF45:
	.ascii	"p_cs_precedes\000"
.LASF84:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF108:
	.ascii	"p_fmt\000"
.LASF109:
	.ascii	"p_args\000"
.LASF31:
	.ascii	"__mbtowc\000"
.LASF58:
	.ascii	"abbrev_day_names\000"
.LASF81:
	.ascii	"__RAL_c_locale\000"
.LASF26:
	.ascii	"__tolower\000"
.LASF116:
	.ascii	"int_print\000"
.LASF95:
	.ascii	"__user_set_time_of_day\000"
.LASF52:
	.ascii	"int_n_cs_precedes\000"
.LASF83:
	.ascii	"__RAL_codeset_utf8\000"
.LASF66:
	.ascii	"__state\000"
.LASF101:
	.ascii	"__StackTop\000"
.LASF118:
	.ascii	"_aV2C\000"
.LASF8:
	.ascii	"_Bool\000"
.LASF76:
	.ascii	"int32_t\000"
.LASF72:
	.ascii	"unsigned char\000"
.LASF120:
	.ascii	"string_print\000"
.LASF85:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF44:
	.ascii	"frac_digits\000"
.LASF73:
	.ascii	"short int\000"
.LASF98:
	.ascii	"__RAL_error_decoder_head\000"
.LASF110:
	.ascii	"NumDigits\000"
.LASF39:
	.ascii	"mon_thousands_sep\000"
.LASF22:
	.ascii	"__RAL_locale_data_t\000"
.LASF50:
	.ascii	"n_sign_posn\000"
.LASF77:
	.ascii	"uint32_t\000"
.LASF117:
	.ascii	"unsigned_print\000"
.LASF55:
	.ascii	"int_p_sign_posn\000"
.LASF37:
	.ascii	"currency_symbol\000"
.LASF10:
	.ascii	"char\000"
.LASF46:
	.ascii	"p_sep_by_space\000"
.LASF2:
	.ascii	"io_buffer_cnt\000"
.LASF23:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF69:
	.ascii	"__ap\000"
.LASF122:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -fomit-frame-poi"
	.ascii	"nter -fno-dwarf2-cfi-asm -fno-builtin -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF56:
	.ascii	"int_n_sign_posn\000"
.LASF119:
	.ascii	"Value\000"
.LASF7:
	.ascii	"nrf_fprintf_fwrite\000"
.LASF87:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF24:
	.ascii	"__isctype\000"
.LASF12:
	.ascii	"__RAL_error_decoder_s\000"
.LASF97:
	.ascii	"__RAL_error_decoder_t\000"
.LASF65:
	.ascii	"__mbstate_s\000"
.LASF71:
	.ascii	"uint8_t\000"
.LASF43:
	.ascii	"int_frac_digits\000"
.LASF59:
	.ascii	"month_names\000"
.LASF5:
	.ascii	"fwrite\000"
.LASF54:
	.ascii	"int_n_sep_by_space\000"
.LASF48:
	.ascii	"n_sep_by_space\000"
.LASF114:
	.ascii	"Width\000"
.LASF92:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF88:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF38:
	.ascii	"mon_decimal_point\000"
.LASF30:
	.ascii	"__wctomb\000"
.LASF33:
	.ascii	"decimal_point\000"
.LASF107:
	.ascii	"p_ctx\000"
.LASF127:
	.ascii	"buffer_add\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
