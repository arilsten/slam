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
	.file	"buffer.c"
	.text
.Ltext0:
	.section	.text.buffer_init,"ax",%progbits
	.align	1
	.global	buffer_init
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	buffer_init, %function
buffer_init:
.LFB0:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\buffer.c"
	.loc 1 4 63
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI0:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r3, r2
	strh	r3, [sp, #6]	@ movhi
	.loc 1 5 5
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L2
	.loc 1 5 25 discriminator 1
	movs	r3, #0
	b	.L3
.L2:
	.loc 1 6 10
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	str	r2, [r3]
	.loc 1 7 15
	ldr	r3, [sp, #12]
	ldrh	r2, [sp, #6]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	.loc 1 8 30
	ldr	r3, [sp, #12]
	movs	r2, #0
	strh	r2, [r3, #10]	@ movhi
	.loc 1 8 24
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #10]
	.loc 1 8 21
	ldr	r3, [sp, #12]
	strh	r2, [r3, #8]	@ movhi
	.loc 1 8 14
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #8]
	.loc 1 8 11
	ldr	r3, [sp, #12]
	strh	r2, [r3, #6]	@ movhi
	.loc 1 9 10
	movs	r3, #1
.L3:
	.loc 1 10 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI1:
	@ sp needed
	bx	lr
.LFE0:
	.size	buffer_init, .-buffer_init
	.section	.text.buffer_append,"ax",%progbits
	.align	1
	.global	buffer_append
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	buffer_append, %function
buffer_append:
.LFB1:
	.loc 1 12 66
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI2:
	sub	sp, sp, #16
.LCFI3:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r3, r2
	strh	r3, [sp, #6]	@ movhi
	.loc 1 13 10
	ldrh	r2, [sp, #6]
	.loc 1 13 13
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	mov	r1, r3
	.loc 1 13 27
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #10]
	.loc 1 13 24
	subs	r3, r1, r3
	.loc 1 13 5
	cmp	r2, r3
	ble	.L5
	.loc 1 13 41 discriminator 1
	movs	r3, #0
	b	.L6
.L5:
	.loc 1 14 10
	ldrh	r2, [sp, #6]
	.loc 1 14 13
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	mov	r1, r3
	.loc 1 14 27
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #6]
	.loc 1 14 24
	subs	r3, r1, r3
	.loc 1 14 5
	cmp	r2, r3
	bge	.L7
	.loc 1 15 13
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 15 20
	ldr	r2, [sp, #12]
	ldrh	r2, [r2, #6]
	.loc 1 15 18
	add	r3, r3, r2
	.loc 1 15 5
	ldrh	r2, [sp, #6]
	ldr	r1, [sp, #8]
	mov	r0, r3
	bl	memcpy
	.loc 1 16 13
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #6]
	ldrh	r3, [sp, #6]	@ movhi
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3, #6]	@ movhi
	.loc 1 17 9
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #6]
	.loc 1 17 20
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	.loc 1 17 7
	cmp	r2, r3
	bne	.L8
	.loc 1 17 40 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #0
	strh	r2, [r3, #6]	@ movhi
	b	.L8
.L7:
	.loc 1 19 13
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 19 20
	ldr	r2, [sp, #12]
	ldrh	r2, [r2, #6]
	.loc 1 19 18
	adds	r0, r3, r2
	.loc 1 19 36
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	mov	r2, r3
	.loc 1 19 50
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #6]
	.loc 1 19 47
	subs	r3, r2, r3
	.loc 1 19 5
	mov	r2, r3
	ldr	r1, [sp, #8]
	bl	memcpy
	.loc 1 20 13
	ldr	r3, [sp, #12]
	ldr	r0, [r3]
	.loc 1 20 29
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	mov	r2, r3
	.loc 1 20 43
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #6]
	.loc 1 20 40
	subs	r3, r2, r3
	mov	r2, r3
	.loc 1 20 25
	ldr	r3, [sp, #8]
	adds	r1, r3, r2
	.loc 1 20 55
	ldrh	r2, [sp, #6]
	.loc 1 20 58
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	mov	r4, r3
	.loc 1 20 72
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #6]
	.loc 1 20 69
	subs	r3, r4, r3
	.loc 1 20 55
	subs	r3, r2, r3
	.loc 1 20 5
	mov	r2, r3
	bl	memcpy
	.loc 1 21 35
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #6]
	.loc 1 21 21
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	.loc 1 21 18
	subs	r3, r2, r3
	uxth	r2, r3
	ldrh	r3, [sp, #6]	@ movhi
	add	r3, r3, r2
	uxth	r2, r3
	.loc 1 21 13
	ldr	r3, [sp, #12]
	strh	r2, [r3, #6]	@ movhi
.L8:
	.loc 1 23 10
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #10]
	ldrh	r3, [sp, #6]	@ movhi
	add	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3, #10]	@ movhi
	.loc 1 24 10
	movs	r3, #1
.L6:
	.loc 1 25 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI4:
	@ sp needed
	pop	{r4, pc}
.LFE1:
	.size	buffer_append, .-buffer_append
	.section	.text.buffer_remove_token,"ax",%progbits
	.align	1
	.global	buffer_remove_token
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	buffer_remove_token, %function
buffer_remove_token:
.LFB2:
	.loc 1 29 89
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI5:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r1, r2
	mov	r2, r3
	mov	r3, r1
	strb	r3, [sp, #7]
	mov	r3, r2	@ movhi
	strh	r3, [sp, #4]	@ movhi
	.loc 1 32 5
	ldr	r3, [sp, #8]
	str	r3, [sp, #16]
	.loc 1 33 8
	movs	r3, #0
	strh	r3, [sp, #22]	@ movhi
	.loc 1 33 3
	b	.L10
.L15:
	.loc 1 34 10
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #8]
	.loc 1 34 21
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #6]
	.loc 1 34 7
	cmp	r2, r3
	beq	.L11
	.loc 1 35 15
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 35 22
	ldr	r2, [sp, #12]
	ldrh	r2, [r2, #8]
	.loc 1 35 20
	add	r2, r2, r3
	.loc 1 35 9
	ldr	r3, [sp, #16]
	adds	r1, r3, #1
	str	r1, [sp, #16]
	.loc 1 35 20
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 35 12
	strb	r2, [r3]
	.loc 1 36 8
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #8]
	.loc 1 36 14
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3, #8]	@ movhi
	.loc 1 37 8
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #10]
	.loc 1 37 13
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3, #10]	@ movhi
	.loc 1 38 12
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #8]
	.loc 1 38 23
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	.loc 1 38 9
	cmp	r2, r3
	bne	.L12
	.loc 1 39 17
	ldr	r3, [sp, #12]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
.L12:
	.loc 1 41 13
	ldr	r3, [sp, #16]
	subs	r3, r3, #1
	.loc 1 41 10
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 41 9
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L13
	.loc 1 41 35 discriminator 1
	ldrh	r3, [sp, #22]	@ movhi
	adds	r3, r3, #1
	uxth	r3, r3
	b	.L14
.L11:
	.loc 1 43 14
	ldrh	r3, [sp, #22]
	b	.L14
.L13:
	.loc 1 33 25 discriminator 2
	ldrh	r3, [sp, #22]
	adds	r3, r3, #1
	strh	r3, [sp, #22]	@ movhi
.L10:
	.loc 1 33 3 discriminator 1
	ldrh	r2, [sp, #22]
	ldrh	r3, [sp, #4]
	cmp	r2, r3
	bcc	.L15
	.loc 1 46 10
	ldrh	r3, [sp, #4]
.L14:
	.loc 1 47 1
	mov	r0, r3
	add	sp, sp, #24
.LCFI6:
	@ sp needed
	bx	lr
.LFE2:
	.size	buffer_remove_token, .-buffer_remove_token
	.section	.text.buffer_read,"ax",%progbits
	.align	1
	.global	buffer_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	buffer_read, %function
buffer_read:
.LFB3:
	.loc 1 49 78
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI7:
	sub	sp, sp, #16
.LCFI8:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r1, r2
	mov	r2, r3
	mov	r3, r1	@ movhi
	strh	r3, [sp, #6]	@ movhi
	mov	r3, r2	@ movhi
	strh	r3, [sp, #4]	@ movhi
	.loc 1 50 5
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L17
	.loc 1 50 26 discriminator 1
	movs	r3, #0
	b	.L18
.L17:
	.loc 1 51 14
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	.loc 1 51 5
	ldrh	r2, [sp, #6]
	cmp	r2, r3
	bcc	.L19
	.loc 1 51 34 discriminator 1
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	.loc 1 51 30 discriminator 1
	ldrh	r2, [sp, #6]	@ movhi
	subs	r3, r2, r3
	strh	r3, [sp, #6]	@ movhi
.L19:
	.loc 1 52 7
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	mov	r2, r3
	.loc 1 52 18
	ldrh	r3, [sp, #6]
	subs	r2, r2, r3
	.loc 1 52 24
	ldrh	r3, [sp, #4]
	.loc 1 52 5
	cmp	r2, r3
	blt	.L20
	.loc 1 53 19
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	.loc 1 53 5
	ldrh	r3, [sp, #6]
	.loc 1 53 24
	add	r3, r3, r2
	.loc 1 53 5
	ldrh	r2, [sp, #4]
	mov	r1, r3
	ldr	r0, [sp, #8]
	bl	memcpy
	b	.L21
.L20:
	.loc 1 55 19
	ldr	r3, [sp, #12]
	ldr	r2, [r3]
	.loc 1 55 5
	ldrh	r3, [sp, #6]
	.loc 1 55 24
	adds	r1, r2, r3
	.loc 1 55 31
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	mov	r2, r3
	.loc 1 55 42
	ldrh	r3, [sp, #6]
	subs	r3, r2, r3
	.loc 1 55 5
	mov	r2, r3
	ldr	r0, [sp, #8]
	bl	memcpy
	.loc 1 56 21
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	mov	r2, r3
	.loc 1 56 32
	ldrh	r3, [sp, #6]
	subs	r3, r2, r3
	mov	r2, r3
	.loc 1 56 17
	ldr	r3, [sp, #8]
	adds	r0, r3, r2
	.loc 1 56 41
	ldr	r3, [sp, #12]
	ldr	r1, [r3]
	.loc 1 56 52
	ldrh	r2, [sp, #4]
	.loc 1 56 56
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	mov	r4, r3
	.loc 1 56 67
	ldrh	r3, [sp, #6]
	subs	r3, r4, r3
	.loc 1 56 52
	subs	r3, r2, r3
	.loc 1 56 5
	mov	r2, r3
	bl	memcpy
.L21:
	.loc 1 58 10
	ldrh	r3, [sp, #4]
.L18:
	.loc 1 59 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI9:
	@ sp needed
	pop	{r4, pc}
.LFE3:
	.size	buffer_read, .-buffer_read
	.section	.text.buffer_remove,"ax",%progbits
	.align	1
	.global	buffer_remove
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	buffer_remove, %function
buffer_remove:
.LFB4:
	.loc 1 62 66
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI10:
	sub	sp, sp, #16
.LCFI11:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r3, r2
	strh	r3, [sp, #6]	@ movhi
	.loc 1 63 13
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #10]
	.loc 1 63 5
	ldrh	r2, [sp, #6]
	cmp	r2, r3
	bls	.L23
	.loc 1 63 24 discriminator 1
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #10]	@ movhi
	strh	r3, [sp, #6]	@ movhi
.L23:
	.loc 1 64 7
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	mov	r2, r3
	.loc 1 64 21
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #8]
	.loc 1 64 18
	subs	r2, r2, r3
	.loc 1 64 28
	ldrh	r3, [sp, #6]
	.loc 1 64 5
	cmp	r2, r3
	blt	.L24
	.loc 1 65 7
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L25
	.loc 1 65 35 discriminator 1
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 65 42 discriminator 1
	ldr	r2, [sp, #12]
	ldrh	r2, [r2, #8]
	.loc 1 65 40 discriminator 1
	add	r3, r3, r2
	.loc 1 65 21 discriminator 1
	ldrh	r2, [sp, #6]
	mov	r1, r3
	ldr	r0, [sp, #8]
	bl	memcpy
.L25:
	.loc 1 66 16
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #8]
	.loc 1 66 23
	ldrh	r3, [sp, #6]	@ movhi
	add	r3, r3, r2
	uxth	r2, r3
	.loc 1 66 13
	ldr	r3, [sp, #12]
	strh	r2, [r3, #8]	@ movhi
	.loc 1 67 9
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #8]
	.loc 1 67 20
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	.loc 1 67 7
	cmp	r2, r3
	bne	.L26
	.loc 1 67 40 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	b	.L26
.L24:
	.loc 1 69 7
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L27
	.loc 1 70 21
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 70 28
	ldr	r2, [sp, #12]
	ldrh	r2, [r2, #8]
	.loc 1 70 26
	adds	r1, r3, r2
	.loc 1 70 37
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	mov	r2, r3
	.loc 1 70 51
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #8]
	.loc 1 70 48
	subs	r3, r2, r3
	.loc 1 70 7
	mov	r2, r3
	ldr	r0, [sp, #8]
	bl	memcpy
	.loc 1 71 23
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	mov	r2, r3
	.loc 1 71 37
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #8]
	.loc 1 71 34
	subs	r3, r2, r3
	mov	r2, r3
	.loc 1 71 19
	ldr	r3, [sp, #8]
	adds	r0, r3, r2
	.loc 1 71 47
	ldr	r3, [sp, #12]
	ldr	r1, [r3]
	.loc 1 71 58
	ldrh	r2, [sp, #6]
	.loc 1 71 62
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	mov	r4, r3
	.loc 1 71 76
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #8]
	.loc 1 71 73
	subs	r3, r4, r3
	.loc 1 71 58
	subs	r3, r2, r3
	.loc 1 71 7
	mov	r2, r3
	bl	memcpy
.L27:
	.loc 1 73 37
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #8]
	.loc 1 73 23
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #4]
	.loc 1 73 19
	subs	r3, r2, r3
	uxth	r2, r3
	ldrh	r3, [sp, #6]	@ movhi
	add	r3, r3, r2
	uxth	r2, r3
	.loc 1 73 13
	ldr	r3, [sp, #12]
	strh	r2, [r3, #8]	@ movhi
.L26:
	.loc 1 75 10
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #10]
	ldrh	r3, [sp, #6]	@ movhi
	subs	r3, r2, r3
	uxth	r2, r3
	ldr	r3, [sp, #12]
	strh	r2, [r3, #10]	@ movhi
	.loc 1 76 10
	ldrh	r3, [sp, #6]
	.loc 1 77 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI12:
	@ sp needed
	pop	{r4, pc}
.LFE4:
	.size	buffer_remove, .-buffer_remove
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI1-.LCFI0
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE0:
.LSFDE2:
	.4byte	.LEFDE2-.LASFDE2
.LASFDE2:
	.4byte	.Lframe0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.byte	0x4
	.4byte	.LCFI2-.LFB1
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI4-.LCFI3
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
	.4byte	.LCFI5-.LFB2
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI6-.LCFI5
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE4:
.LSFDE6:
	.4byte	.LEFDE6-.LASFDE6
.LASFDE6:
	.4byte	.Lframe0
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.byte	0x4
	.4byte	.LCFI7-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI8-.LCFI7
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
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
	.4byte	.LCFI10-.LFB4
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI12-.LCFI11
	.byte	0xe
	.uleb128 0x8
	.align	2
.LEFDE8:
	.text
.Letext0:
	.file 2 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.uleb128 0x2
	.4byte	.LASF3
	.byte	0x8
	.byte	0x2
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x2
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x2
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x2
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x5
	.byte	0x4
	.4byte	0x61
	.uleb128 0x6
	.4byte	0x70
	.4byte	0x70
	.uleb128 0x7
	.4byte	0x76
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x9
	.4byte	0x82
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
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
	.uleb128 0xb
	.4byte	.LASF5
	.byte	0x14
	.byte	0x2
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0xc
	.4byte	.LASF6
	.byte	0x2
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0xd
	.4byte	0x48
	.4byte	0x48
	.uleb128 0xe
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x55
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x9
	.4byte	0x5a
	.uleb128 0xf
	.4byte	.LASF8
	.byte	0x2
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
	.uleb128 0x10
	.byte	0xc
	.byte	0x2
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0xc
	.4byte	.LASF9
	.byte	0x2
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0xc
	.4byte	.LASF10
	.byte	0x2
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF11
	.byte	0x2
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
	.uleb128 0x9
	.4byte	0x6f
	.uleb128 0x9
	.4byte	0x76
	.uleb128 0x9
	.4byte	0x86
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0xf
	.4byte	.LASF12
	.byte	0x2
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
	.uleb128 0xf
	.4byte	.LASF13
	.byte	0x2
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
	.uleb128 0x10
	.byte	0x20
	.byte	0x2
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0xc
	.4byte	.LASF14
	.byte	0x2
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0xc
	.4byte	.LASF15
	.byte	0x2
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF16
	.byte	0x2
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF17
	.byte	0x2
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF18
	.byte	0x2
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF19
	.byte	0x2
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF20
	.byte	0x2
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF21
	.byte	0x2
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
	.uleb128 0x6
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0x7
	.4byte	0x130
	.uleb128 0x7
	.4byte	0x130
	.byte	0
	.uleb128 0x6
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0x7
	.4byte	0x130
	.byte	0
	.uleb128 0x6
	.4byte	0x130
	.4byte	0xea
	.uleb128 0x7
	.4byte	0x137
	.uleb128 0x7
	.4byte	0x130
	.byte	0
	.uleb128 0x6
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0x7
	.4byte	0x137
	.byte	0
	.uleb128 0x6
	.4byte	0x130
	.4byte	0x112
	.uleb128 0x7
	.4byte	0x13e
	.uleb128 0x7
	.4byte	0x144
	.uleb128 0x7
	.4byte	0x14b
	.byte	0
	.uleb128 0x6
	.4byte	0x130
	.4byte	0x130
	.uleb128 0x7
	.4byte	0x155
	.uleb128 0x7
	.4byte	0x15b
	.uleb128 0x7
	.4byte	0x144
	.uleb128 0x7
	.4byte	0x14b
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF22
	.uleb128 0x5
	.byte	0x4
	.4byte	0x161
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x11
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
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
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
	.uleb128 0x10
	.byte	0x58
	.byte	0x2
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0xc
	.4byte	.LASF23
	.byte	0x2
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0xc
	.4byte	.LASF24
	.byte	0x2
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF25
	.byte	0x2
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0xc
	.4byte	.LASF26
	.byte	0x2
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0xc
	.4byte	.LASF27
	.byte	0x2
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0xc
	.4byte	.LASF28
	.byte	0x2
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0xc
	.4byte	.LASF29
	.byte	0x2
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0xc
	.4byte	.LASF30
	.byte	0x2
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0xc
	.4byte	.LASF31
	.byte	0x2
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0xc
	.4byte	.LASF32
	.byte	0x2
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0xc
	.4byte	.LASF33
	.byte	0x2
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0xc
	.4byte	.LASF34
	.byte	0x2
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0xc
	.4byte	.LASF35
	.byte	0x2
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0xc
	.4byte	.LASF36
	.byte	0x2
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0xc
	.4byte	.LASF37
	.byte	0x2
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0xc
	.4byte	.LASF38
	.byte	0x2
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0xc
	.4byte	.LASF39
	.byte	0x2
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0xc
	.4byte	.LASF40
	.byte	0x2
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0xc
	.4byte	.LASF41
	.byte	0x2
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0xc
	.4byte	.LASF42
	.byte	0x2
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0xc
	.4byte	.LASF43
	.byte	0x2
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0xc
	.4byte	.LASF44
	.byte	0x2
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0xc
	.4byte	.LASF45
	.byte	0x2
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0xc
	.4byte	.LASF46
	.byte	0x2
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0xc
	.4byte	.LASF47
	.byte	0x2
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0xc
	.4byte	.LASF48
	.byte	0x2
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0xc
	.4byte	.LASF49
	.byte	0x2
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0xc
	.4byte	.LASF50
	.byte	0x2
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0xc
	.4byte	.LASF51
	.byte	0x2
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0xc
	.4byte	.LASF52
	.byte	0x2
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0xc
	.4byte	.LASF53
	.byte	0x2
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0xc
	.4byte	.LASF54
	.byte	0x2
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
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
	.uleb128 0xb
	.4byte	.LASF55
	.byte	0x8
	.byte	0x2
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0xc
	.4byte	.LASF56
	.byte	0x2
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0xc
	.4byte	.LASF57
	.byte	0x2
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF22
	.byte	0
	.file 3 "C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripheral\\slam_applicationLeithe\\communication\\buffer.h"
	.file 4 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.section	.debug_types,"G",%progbits,wt.0f7170025156f7d8,comdat
	.4byte	0x91
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xf
	.byte	0x71
	.byte	0x70
	.byte	0x2
	.byte	0x51
	.byte	0x56
	.byte	0xf7
	.byte	0xd8
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x10
	.byte	0xc
	.byte	0x3
	.byte	0x6
	.byte	0x9
	.4byte	0x68
	.uleb128 0x12
	.ascii	"buf\000"
	.byte	0x3
	.byte	0x7
	.byte	0xc
	.4byte	0x68
	.byte	0
	.uleb128 0xc
	.4byte	.LASF58
	.byte	0x3
	.byte	0x8
	.byte	0xc
	.4byte	0x6e
	.byte	0x4
	.uleb128 0xc
	.4byte	.LASF59
	.byte	0x3
	.byte	0x9
	.byte	0xc
	.4byte	0x6e
	.byte	0x6
	.uleb128 0xc
	.4byte	.LASF60
	.byte	0x3
	.byte	0xa
	.byte	0xc
	.4byte	0x6e
	.byte	0x8
	.uleb128 0x12
	.ascii	"len\000"
	.byte	0x3
	.byte	0xb
	.byte	0xc
	.4byte	0x6e
	.byte	0xa
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x7a
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x86
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x8d
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF63
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF64
	.byte	0
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x3d0
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x14
	.4byte	.LASF96
	.byte	0xc
	.4byte	.LASF97
	.4byte	.LASF98
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.4byte	.LASF65
	.uleb128 0x13
	.4byte	.LASF62
	.byte	0x4
	.byte	0x30
	.byte	0x17
	.4byte	0x3c
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF64
	.uleb128 0x9
	.4byte	0x3c
	.uleb128 0xa
	.byte	0x2
	.byte	0x5
	.4byte	.LASF66
	.uleb128 0x13
	.4byte	.LASF61
	.byte	0x4
	.byte	0x36
	.byte	0x18
	.4byte	0x5b
	.uleb128 0xa
	.byte	0x2
	.byte	0x7
	.4byte	.LASF63
	.uleb128 0x8
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0xa
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0xa
	.byte	0x8
	.byte	0x5
	.4byte	.LASF67
	.uleb128 0xa
	.byte	0x8
	.byte	0x7
	.4byte	.LASF68
	.uleb128 0x5
	.byte	0x4
	.4byte	0x30
	.uleb128 0xf
	.4byte	.LASF69
	.byte	0x3
	.byte	0xc
	.byte	0x3
	.byte	0xf
	.byte	0x71
	.byte	0x70
	.byte	0x2
	.byte	0x51
	.byte	0x56
	.byte	0xf7
	.byte	0xd8
	.uleb128 0xa
	.byte	0x4
	.byte	0x5
	.4byte	.LASF22
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.4byte	.LASF2
	.uleb128 0x9
	.4byte	0x9b
	.uleb128 0xf
	.4byte	.LASF13
	.byte	0x2
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
	.4byte	0xa7
	.uleb128 0xf
	.4byte	.LASF8
	.byte	0x2
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
	.4byte	0xbc
	.uleb128 0x15
	.4byte	.LASF70
	.byte	0x2
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
	.uleb128 0x16
	.4byte	.LASF71
	.byte	0x2
	.2byte	0x10d
	.byte	0x1d
	.4byte	0xcc
	.uleb128 0x16
	.4byte	.LASF72
	.byte	0x2
	.2byte	0x110
	.byte	0x25
	.4byte	0xb7
	.uleb128 0x16
	.4byte	.LASF73
	.byte	0x2
	.2byte	0x111
	.byte	0x25
	.4byte	0xb7
	.uleb128 0xd
	.4byte	0x43
	.4byte	0x119
	.uleb128 0xe
	.4byte	0x69
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.4byte	0x109
	.uleb128 0x16
	.4byte	.LASF74
	.byte	0x2
	.2byte	0x113
	.byte	0x1c
	.4byte	0x119
	.uleb128 0xd
	.4byte	0xa2
	.4byte	0x136
	.uleb128 0x17
	.byte	0
	.uleb128 0x9
	.4byte	0x12b
	.uleb128 0x16
	.4byte	.LASF75
	.byte	0x2
	.2byte	0x115
	.byte	0x13
	.4byte	0x136
	.uleb128 0x16
	.4byte	.LASF76
	.byte	0x2
	.2byte	0x116
	.byte	0x13
	.4byte	0x136
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x2
	.2byte	0x117
	.byte	0x13
	.4byte	0x136
	.uleb128 0x16
	.4byte	.LASF78
	.byte	0x2
	.2byte	0x118
	.byte	0x13
	.4byte	0x136
	.uleb128 0x16
	.4byte	.LASF79
	.byte	0x2
	.2byte	0x11a
	.byte	0x13
	.4byte	0x136
	.uleb128 0x16
	.4byte	.LASF80
	.byte	0x2
	.2byte	0x11b
	.byte	0x13
	.4byte	0x136
	.uleb128 0x16
	.4byte	.LASF81
	.byte	0x2
	.2byte	0x11c
	.byte	0x13
	.4byte	0x136
	.uleb128 0x16
	.4byte	.LASF82
	.byte	0x2
	.2byte	0x11d
	.byte	0x13
	.4byte	0x136
	.uleb128 0x16
	.4byte	.LASF83
	.byte	0x2
	.2byte	0x11e
	.byte	0x13
	.4byte	0x136
	.uleb128 0x16
	.4byte	.LASF84
	.byte	0x2
	.2byte	0x11f
	.byte	0x13
	.4byte	0x136
	.uleb128 0x6
	.4byte	0x62
	.4byte	0x1cc
	.uleb128 0x7
	.4byte	0x1cc
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d7
	.uleb128 0x18
	.4byte	.LASF99
	.uleb128 0x9
	.4byte	0x1d2
	.uleb128 0x16
	.4byte	.LASF85
	.byte	0x2
	.2byte	0x135
	.byte	0xe
	.4byte	0x1e9
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1bd
	.uleb128 0x6
	.4byte	0x62
	.4byte	0x1fe
	.uleb128 0x7
	.4byte	0x1fe
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1d2
	.uleb128 0x16
	.4byte	.LASF86
	.byte	0x2
	.2byte	0x136
	.byte	0xe
	.4byte	0x211
	.uleb128 0x5
	.byte	0x4
	.4byte	0x1ef
	.uleb128 0x19
	.4byte	.LASF87
	.byte	0x2
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
	.uleb128 0x16
	.4byte	.LASF88
	.byte	0x2
	.2byte	0x157
	.byte	0x1f
	.4byte	0x235
	.uleb128 0x5
	.byte	0x4
	.4byte	0x217
	.uleb128 0x1a
	.4byte	.LASF89
	.byte	0x1
	.byte	0x3e
	.byte	0xa
	.4byte	0x4f
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x281
	.uleb128 0x1b
	.ascii	"b\000"
	.byte	0x1
	.byte	0x3e
	.byte	0x22
	.4byte	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.4byte	.LASF10
	.byte	0x1
	.byte	0x3e
	.byte	0x2e
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.ascii	"len\000"
	.byte	0x1
	.byte	0x3e
	.byte	0x3d
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.4byte	0x84
	.uleb128 0x1a
	.4byte	.LASF90
	.byte	0x1
	.byte	0x31
	.byte	0xa
	.4byte	0x4f
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2dc
	.uleb128 0x1b
	.ascii	"b\000"
	.byte	0x1
	.byte	0x31
	.byte	0x20
	.4byte	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.4byte	.LASF10
	.byte	0x1
	.byte	0x31
	.byte	0x2c
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.ascii	"idx\000"
	.byte	0x1
	.byte	0x31
	.byte	0x3b
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x1b
	.ascii	"len\000"
	.byte	0x1
	.byte	0x31
	.byte	0x49
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF91
	.byte	0x1
	.byte	0x1d
	.byte	0xa
	.4byte	0x4f
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x34b
	.uleb128 0x1b
	.ascii	"b\000"
	.byte	0x1
	.byte	0x1d
	.byte	0x28
	.4byte	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.4byte	.LASF10
	.byte	0x1
	.byte	0x1d
	.byte	0x34
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1c
	.4byte	.LASF92
	.byte	0x1
	.byte	0x1d
	.byte	0x42
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x1c
	.4byte	.LASF93
	.byte	0x1
	.byte	0x1d
	.byte	0x52
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x1e
	.ascii	"i\000"
	.byte	0x1
	.byte	0x1e
	.byte	0xc
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x1e
	.ascii	"p\000"
	.byte	0x1
	.byte	0x1f
	.byte	0xd
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF94
	.byte	0x1
	.byte	0xc
	.byte	0xa
	.4byte	0x4f
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x391
	.uleb128 0x1b
	.ascii	"b\000"
	.byte	0x1
	.byte	0xc
	.byte	0x22
	.4byte	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x1c
	.4byte	.LASF10
	.byte	0x1
	.byte	0xc
	.byte	0x2e
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x1b
	.ascii	"len\000"
	.byte	0x1
	.byte	0xc
	.byte	0x3d
	.4byte	0x4f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.byte	0
	.uleb128 0x1f
	.4byte	.LASF100
	.byte	0x1
	.byte	0x4
	.byte	0x9
	.4byte	0x30
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x1b
	.ascii	"b\000"
	.byte	0x1
	.byte	0x4
	.byte	0x1f
	.4byte	0x281
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x1b
	.ascii	"buf\000"
	.byte	0x1
	.byte	0x4
	.byte	0x2b
	.4byte	0x7e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1c
	.4byte	.LASF95
	.byte	0x1
	.byte	0x4
	.byte	0x39
	.4byte	0x4f
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
	.uleb128 0x7
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x13
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
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x20
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
	.uleb128 0x1b
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x6a
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x3d4
	.4byte	0x23b
	.ascii	"buffer_remove\000"
	.4byte	0x287
	.ascii	"buffer_read\000"
	.4byte	0x2dc
	.ascii	"buffer_remove_token\000"
	.4byte	0x34b
	.ascii	"buffer_append\000"
	.4byte	0x391
	.ascii	"buffer_init\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x158
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x3d4
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
	.4byte	0x62
	.ascii	"int\000"
	.4byte	0x69
	.ascii	"unsigned int\000"
	.4byte	0x70
	.ascii	"long long int\000"
	.4byte	0x77
	.ascii	"long long unsigned int\000"
	.4byte	0x84
	.ascii	"buffer_t\000"
	.4byte	0x94
	.ascii	"long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0x9b
	.ascii	"char\000"
	.4byte	0xa7
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0xbc
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x217
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x3c
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
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x4
	.uleb128 0x4
	.byte	0x4
	.byte	0x4
	.file 5 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.byte	0x3
	.uleb128 0x2
	.uleb128 0x5
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF92:
	.ascii	"token\000"
.LASF36:
	.ascii	"p_sep_by_space\000"
.LASF55:
	.ascii	"__mbstate_s\000"
.LASF17:
	.ascii	"__iswctype\000"
.LASF27:
	.ascii	"currency_symbol\000"
.LASF88:
	.ascii	"__RAL_error_decoder_head\000"
.LASF18:
	.ascii	"__towupper\000"
.LASF44:
	.ascii	"int_n_sep_by_space\000"
.LASF66:
	.ascii	"short int\000"
.LASF73:
	.ascii	"__RAL_codeset_utf8\000"
.LASF49:
	.ascii	"month_names\000"
.LASF57:
	.ascii	"__wchar\000"
.LASF38:
	.ascii	"n_sep_by_space\000"
.LASF16:
	.ascii	"__tolower\000"
.LASF40:
	.ascii	"n_sign_posn\000"
.LASF53:
	.ascii	"time_format\000"
.LASF12:
	.ascii	"__RAL_locale_data_t\000"
.LASF52:
	.ascii	"date_format\000"
.LASF77:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF35:
	.ascii	"p_cs_precedes\000"
.LASF100:
	.ascii	"buffer_init\000"
.LASF59:
	.ascii	"head\000"
.LASF62:
	.ascii	"uint8_t\000"
.LASF79:
	.ascii	"__RAL_data_utf8_period\000"
.LASF96:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -fomit-frame-poi"
	.ascii	"nter -fno-dwarf2-cfi-asm -fno-builtin -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF3:
	.ascii	"__RAL_error_decoder_s\000"
.LASF87:
	.ascii	"__RAL_error_decoder_t\000"
.LASF28:
	.ascii	"mon_decimal_point\000"
.LASF23:
	.ascii	"decimal_point\000"
.LASF47:
	.ascii	"day_names\000"
.LASF33:
	.ascii	"int_frac_digits\000"
.LASF11:
	.ascii	"codeset\000"
.LASF67:
	.ascii	"long long int\000"
.LASF6:
	.ascii	"__category\000"
.LASF25:
	.ascii	"grouping\000"
.LASF15:
	.ascii	"__toupper\000"
.LASF22:
	.ascii	"long int\000"
.LASF90:
	.ascii	"buffer_read\000"
.LASF29:
	.ascii	"mon_thousands_sep\000"
.LASF76:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF43:
	.ascii	"int_p_sep_by_space\000"
.LASF19:
	.ascii	"__towlower\000"
.LASF32:
	.ascii	"negative_sign\000"
.LASF0:
	.ascii	"decode\000"
.LASF9:
	.ascii	"name\000"
.LASF94:
	.ascii	"buffer_append\000"
.LASF4:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF60:
	.ascii	"tail\000"
.LASF85:
	.ascii	"__user_set_time_of_day\000"
.LASF64:
	.ascii	"unsigned char\000"
.LASF71:
	.ascii	"__RAL_c_locale\000"
.LASF91:
	.ascii	"buffer_remove_token\000"
.LASF81:
	.ascii	"__RAL_data_utf8_space\000"
.LASF65:
	.ascii	"signed char\000"
.LASF58:
	.ascii	"capacity\000"
.LASF68:
	.ascii	"long long unsigned int\000"
.LASF30:
	.ascii	"mon_grouping\000"
.LASF7:
	.ascii	"unsigned int\000"
.LASF61:
	.ascii	"uint16_t\000"
.LASF51:
	.ascii	"am_pm_indicator\000"
.LASF72:
	.ascii	"__RAL_codeset_ascii\000"
.LASF26:
	.ascii	"int_curr_symbol\000"
.LASF82:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF63:
	.ascii	"short unsigned int\000"
.LASF95:
	.ascii	"size\000"
.LASF2:
	.ascii	"char\000"
.LASF98:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF56:
	.ascii	"__state\000"
.LASF37:
	.ascii	"n_cs_precedes\000"
.LASF54:
	.ascii	"date_time_format\000"
.LASF89:
	.ascii	"buffer_remove\000"
.LASF69:
	.ascii	"buffer_t\000"
.LASF10:
	.ascii	"data\000"
.LASF31:
	.ascii	"positive_sign\000"
.LASF34:
	.ascii	"frac_digits\000"
.LASF74:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF84:
	.ascii	"__RAL_data_empty_string\000"
.LASF45:
	.ascii	"int_p_sign_posn\000"
.LASF93:
	.ascii	"nbytes\000"
.LASF41:
	.ascii	"int_p_cs_precedes\000"
.LASF99:
	.ascii	"timeval\000"
.LASF75:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF50:
	.ascii	"abbrev_month_names\000"
.LASF13:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF70:
	.ascii	"__RAL_global_locale\000"
.LASF21:
	.ascii	"__mbtowc\000"
.LASF46:
	.ascii	"int_n_sign_posn\000"
.LASF8:
	.ascii	"__RAL_locale_t\000"
.LASF78:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF20:
	.ascii	"__wctomb\000"
.LASF80:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF86:
	.ascii	"__user_get_time_of_day\000"
.LASF24:
	.ascii	"thousands_sep\000"
.LASF42:
	.ascii	"int_n_cs_precedes\000"
.LASF14:
	.ascii	"__isctype\000"
.LASF39:
	.ascii	"p_sign_posn\000"
.LASF83:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF97:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\examples\\ble_peripher"
	.ascii	"al\\slam_applicationLeithe\\communication\\buffer.c"
	.ascii	"\000"
.LASF48:
	.ascii	"abbrev_day_names\000"
.LASF1:
	.ascii	"next\000"
.LASF5:
	.ascii	"__locale_s\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
