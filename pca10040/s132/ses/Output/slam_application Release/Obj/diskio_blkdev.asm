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
	.file	"diskio_blkdev.c"
	.text
.Ltext0:
	.section	.text.nrf_blk_dev_init,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_blk_dev_init, %function
nrf_blk_dev_init:
.LFB142:
	.file 1 "../../../../../../components/libraries/block_dev/nrf_block_dev.h"
	.loc 1 239 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI0:
	sub	sp, sp, #20
.LCFI1:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 241 21
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 241 28
	ldr	r3, [r3]
	.loc 1 241 12
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	blx	r3
.LVL0:
	mov	r3, r0
	.loc 1 242 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI2:
	@ sp needed
	ldr	pc, [sp], #4
.LFE142:
	.size	nrf_blk_dev_init, .-nrf_blk_dev_init
	.section	.text.nrf_blk_dev_uninit,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_blk_dev_uninit, %function
nrf_blk_dev_uninit:
.LFB143:
	.loc 1 252 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI3:
	sub	sp, sp, #12
.LCFI4:
	str	r0, [sp, #4]
	.loc 1 254 21
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 254 28
	ldr	r3, [r3, #4]
	.loc 1 254 12
	ldr	r0, [sp, #4]
	blx	r3
.LVL1:
	mov	r3, r0
	.loc 1 255 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI5:
	@ sp needed
	ldr	pc, [sp], #4
.LFE143:
	.size	nrf_blk_dev_uninit, .-nrf_blk_dev_uninit
	.section	.text.nrf_blk_dev_read_req,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_blk_dev_read_req, %function
nrf_blk_dev_read_req:
.LFB144:
	.loc 1 273 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI6:
	sub	sp, sp, #8
.LCFI7:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 277 14
	ldr	r3, [sp]
	ldr	r4, [r3]
	.loc 1 277 35
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 277 42
	ldr	r3, [r3, #20]
	.loc 1 277 26
	ldr	r0, [sp, #4]
	blx	r3
.LVL2:
	mov	r3, r0
	.loc 1 277 63
	ldr	r3, [r3]
	.loc 1 277 8
	cmp	r4, r3
	bcc	.L6
	.loc 1 279 16
	movs	r3, #7
	b	.L7
.L6:
	.loc 1 282 21
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 282 28
	ldr	r3, [r3, #8]
	.loc 1 282 12
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	blx	r3
.LVL3:
	mov	r3, r0
.L7:
	.loc 1 283 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI8:
	@ sp needed
	pop	{r4, pc}
.LFE144:
	.size	nrf_blk_dev_read_req, .-nrf_blk_dev_read_req
	.section	.text.nrf_blk_dev_write_req,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_blk_dev_write_req, %function
nrf_blk_dev_write_req:
.LFB145:
	.loc 1 301 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI9:
	sub	sp, sp, #8
.LCFI10:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 305 14
	ldr	r3, [sp]
	ldr	r4, [r3]
	.loc 1 305 35
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 305 42
	ldr	r3, [r3, #20]
	.loc 1 305 26
	ldr	r0, [sp, #4]
	blx	r3
.LVL4:
	mov	r3, r0
	.loc 1 305 63
	ldr	r3, [r3]
	.loc 1 305 8
	cmp	r4, r3
	bcc	.L9
	.loc 1 307 16
	movs	r3, #7
	b	.L10
.L9:
	.loc 1 310 21
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 310 28
	ldr	r3, [r3, #12]
	.loc 1 310 12
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	blx	r3
.LVL5:
	mov	r3, r0
.L10:
	.loc 1 311 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI11:
	@ sp needed
	pop	{r4, pc}
.LFE145:
	.size	nrf_blk_dev_write_req, .-nrf_blk_dev_write_req
	.section	.text.nrf_blk_dev_ioctl,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_blk_dev_ioctl, %function
nrf_blk_dev_ioctl:
.LFB146:
	.loc 1 325 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI12:
	sub	sp, sp, #20
.LCFI13:
	str	r0, [sp, #12]
	mov	r3, r1
	str	r2, [sp, #4]
	strb	r3, [sp, #11]
	.loc 1 327 21
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	.loc 1 327 28
	ldr	r3, [r3, #16]
	.loc 1 327 12
	ldrb	r1, [sp, #11]	@ zero_extendqisi2
	ldr	r2, [sp, #4]
	ldr	r0, [sp, #12]
	blx	r3
.LVL6:
	mov	r3, r0
	.loc 1 328 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI14:
	@ sp needed
	ldr	pc, [sp], #4
.LFE146:
	.size	nrf_blk_dev_ioctl, .-nrf_blk_dev_ioctl
	.section	.text.nrf_blk_dev_geometry,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	nrf_blk_dev_geometry, %function
nrf_blk_dev_geometry:
.LFB147:
	.loc 1 339 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI15:
	sub	sp, sp, #12
.LCFI16:
	str	r0, [sp, #4]
	.loc 1 341 21
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 341 28
	ldr	r3, [r3, #20]
	.loc 1 341 12
	ldr	r0, [sp, #4]
	blx	r3
.LVL7:
	mov	r3, r0
	.loc 1 342 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI17:
	@ sp needed
	ldr	pc, [sp], #4
.LFE147:
	.size	nrf_blk_dev_geometry, .-nrf_blk_dev_geometry
	.section	.bss.m_drives,"aw",%nobits
	.align	2
	.type	m_drives, %object
	.size	m_drives, 4
m_drives:
	.space	4
	.section	.bss.m_drives_count,"aw",%nobits
	.type	m_drives_count, %object
	.size	m_drives_count, 1
m_drives_count:
	.space	1
	.section	.text.block_dev_handler,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	block_dev_handler, %function
block_dev_handler:
.LFB148:
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\fatfs\\port\\diskio_blkdev.c"
	.loc 2 61 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI18:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 2 62 46
	ldr	r3, [sp]
	ldr	r3, [r3, #8]
	.loc 2 62 13
	strb	r3, [sp, #15]
	.loc 2 65 20
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 65 5
	cmp	r3, #3
	bhi	.L18
	.loc 2 71 21
	ldr	r3, .L19
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 71 48
	ldr	r2, [sp]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	.loc 2 71 39
	strb	r2, [r3, #8]
	.loc 2 72 21
	ldr	r3, .L19
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 72 32
	movs	r2, #0
	strb	r2, [r3, #10]
	.loc 2 73 13
	b	.L17
.L18:
	.loc 2 75 13
	nop
.L17:
	.loc 2 77 1
	nop
	add	sp, sp, #16
.LCFI19:
	@ sp needed
	bx	lr
.L20:
	.align	2
.L19:
	.word	m_drives
.LFE148:
	.size	block_dev_handler, .-block_dev_handler
	.section	.text.default_wait_func,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	default_wait_func, %function
default_wait_func:
.LFB149:
	.loc 2 83 1
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
.LBB4:
.LBB5:
	.file 3 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h"
	.loc 3 396 3
	.syntax unified
@ 396 "../../../../../../components/toolchain/cmsis/include/cmsis_gcc.h" 1
	wfe
@ 0 "" 2
	.loc 3 397 1
	.thumb
	.syntax unified
	nop
.LBE5:
.LBE4:
	.loc 2 85 1
	nop
	bx	lr
.LFE149:
	.size	default_wait_func, .-default_wait_func
	.section	.text.disk_initialize,"ax",%progbits
	.align	1
	.global	disk_initialize
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	disk_initialize, %function
disk_initialize:
.LFB150:
	.loc 2 88 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI20:
	sub	sp, sp, #20
.LCFI21:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 2 91 13
	ldr	r3, .L31
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 91 8
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L23
	.loc 2 93 16
	movs	r3, #3
	b	.L24
.L23:
	.loc 2 96 18
	ldr	r3, .L31+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 96 30
	ldr	r3, [r3]
	.loc 2 96 8
	cmp	r3, #0
	bne	.L25
	.loc 2 98 16
	movs	r3, #3
	b	.L24
.L25:
	.loc 2 101 19
	ldr	r3, .L31+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 101 24
	ldrb	r3, [r3, #9]
	uxtb	r3, r3
	.loc 2 101 31
	and	r3, r3, #1
	.loc 2 101 8
	cmp	r3, #0
	bne	.L26
	.loc 2 104 24
	ldr	r3, .L31+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 104 29
	ldrb	r3, [r3, #9]
	uxtb	r3, r3
	b	.L24
.L26:
	.loc 2 107 17
	ldr	r3, .L31+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 107 29
	ldr	r3, [r3, #4]
	.loc 2 107 8
	cmp	r3, #0
	bne	.L27
	.loc 2 109 17
	ldr	r3, .L31+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 109 40
	ldr	r2, .L31+8
	str	r2, [r3, #4]
.L27:
	.loc 2 112 13
	ldr	r3, .L31+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 112 24
	movs	r2, #1
	strb	r2, [r3, #10]
	.loc 2 113 52
	ldr	r3, .L31+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 113 27
	ldr	r3, [r3]
	.loc 2 115 53
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	.loc 2 113 27
	ldr	r1, .L31+12
	mov	r0, r3
	bl	nrf_blk_dev_init
	str	r0, [sp, #12]
	.loc 2 116 8
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L28
	.loc 2 118 15
	b	.L29
.L30:
	.loc 2 120 21
	ldr	r3, .L31+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 120 33
	ldr	r3, [r3, #4]
	.loc 2 120 13
	blx	r3
.LVL8:
.L29:
	.loc 2 118 24
	ldr	r3, .L31+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 118 29
	ldrb	r3, [r3, #10]
	uxtb	r3, r3
	.loc 2 118 15
	cmp	r3, #0
	bne	.L30
	.loc 2 123 21
	ldr	r3, .L31+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 123 26
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	.loc 2 123 12
	cmp	r3, #0
	bne	.L28
	.loc 2 125 33
	ldr	r3, .L31+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldrb	r3, [r3, #9]
	uxtb	r1, r3
	ldr	r3, .L31+4
	ldr	r0, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	bic	r2, r1, #1
	uxtb	r2, r2
	strb	r2, [r3, #9]
.L28:
	.loc 2 129 20
	ldr	r3, .L31+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 129 25
	ldrb	r3, [r3, #9]
	uxtb	r3, r3
.L24:
	.loc 2 130 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI22:
	@ sp needed
	ldr	pc, [sp], #4
.L32:
	.align	2
.L31:
	.word	m_drives_count
	.word	m_drives
	.word	default_wait_func
	.word	block_dev_handler
.LFE150:
	.size	disk_initialize, .-disk_initialize
	.section	.text.disk_uninitialize,"ax",%progbits
	.align	1
	.global	disk_uninitialize
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	disk_uninitialize, %function
disk_uninitialize:
.LFB151:
	.loc 2 133 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI23:
	sub	sp, sp, #20
.LCFI24:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 2 136 13
	ldr	r3, .L43
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 136 8
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L34
	.loc 2 138 16
	movs	r3, #3
	b	.L35
.L34:
	.loc 2 141 18
	ldr	r3, .L43+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 141 30
	ldr	r3, [r3]
	.loc 2 141 8
	cmp	r3, #0
	bne	.L36
	.loc 2 143 16
	movs	r3, #3
	b	.L35
.L36:
	.loc 2 146 17
	ldr	r3, .L43+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 146 22
	ldrb	r3, [r3, #9]
	uxtb	r3, r3
	.loc 2 146 29
	and	r3, r3, #1
	.loc 2 146 8
	cmp	r3, #0
	beq	.L37
	.loc 2 149 24
	ldr	r3, .L43+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 149 29
	ldrb	r3, [r3, #9]
	uxtb	r3, r3
	b	.L35
.L37:
	.loc 2 152 37
	ldr	r3, .L43+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 152 11
	ldr	r3, [r3]
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	nrf_blk_dev_ioctl
.L38:
	.loc 2 159 42 discriminator 1
	ldr	r3, .L43+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 159 15 discriminator 1
	ldr	r3, [r3]
	mov	r0, r3
	bl	nrf_blk_dev_uninit
	str	r0, [sp, #12]
	.loc 2 160 5 discriminator 1
	ldr	r3, [sp, #12]
	cmp	r3, #17
	beq	.L38
	.loc 2 162 8
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L39
	.loc 2 164 15
	b	.L40
.L41:
	.loc 2 166 21
	ldr	r3, .L43+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 166 33
	ldr	r3, [r3, #4]
	.loc 2 166 13
	blx	r3
.LVL9:
.L40:
	.loc 2 164 24
	ldr	r3, .L43+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 164 29
	ldrb	r3, [r3, #10]
	uxtb	r3, r3
	.loc 2 164 15
	cmp	r3, #0
	bne	.L41
.L39:
	.loc 2 169 17
	ldr	r3, .L43+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 169 22
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	.loc 2 169 8
	cmp	r3, #0
	bne	.L42
	.loc 2 171 29
	ldr	r3, .L43+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldrb	r3, [r3, #9]
	uxtb	r1, r3
	ldr	r3, .L43+4
	ldr	r0, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	orr	r2, r1, #1
	uxtb	r2, r2
	strb	r2, [r3, #9]
.L42:
	.loc 2 174 20
	ldr	r3, .L43+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 174 25
	ldrb	r3, [r3, #9]
	uxtb	r3, r3
.L35:
	.loc 2 175 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI25:
	@ sp needed
	ldr	pc, [sp], #4
.L44:
	.align	2
.L43:
	.word	m_drives_count
	.word	m_drives
.LFE151:
	.size	disk_uninitialize, .-disk_uninitialize
	.section	.text.disk_status,"ax",%progbits
	.align	1
	.global	disk_status
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	disk_status, %function
disk_status:
.LFB152:
	.loc 2 178 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI26:
	mov	r3, r0
	strb	r3, [sp, #7]
	.loc 2 181 13
	ldr	r3, .L48
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 181 8
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L46
	.loc 2 183 16
	movs	r3, #1
	b	.L47
.L46:
	.loc 2 185 20
	ldr	r3, .L48+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 185 25
	ldrb	r3, [r3, #9]
	uxtb	r3, r3
.L47:
	.loc 2 186 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI27:
	@ sp needed
	bx	lr
.L49:
	.align	2
.L48:
	.word	m_drives_count
	.word	m_drives
.LFE152:
	.size	disk_status, .-disk_status
	.section	.text.disk_read,"ax",%progbits
	.align	1
	.global	disk_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	disk_read, %function
disk_read:
.LFB153:
	.loc 2 189 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI28:
	sub	sp, sp, #36
.LCFI29:
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 2 192 14
	ldr	r3, .L60
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 192 8
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	cmp	r2, r3
	bcs	.L51
	.loc 2 192 33 discriminator 1
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L52
.L51:
	.loc 2 194 16
	movs	r3, #4
	b	.L59
.L52:
	.loc 2 197 18
	ldr	r3, .L60+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 197 30
	ldr	r3, [r3]
	.loc 2 197 8
	cmp	r3, #0
	beq	.L54
	.loc 2 198 21
	ldr	r3, .L60+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 198 26
	ldrb	r3, [r3, #9]
	uxtb	r3, r3
	.loc 2 198 33
	and	r3, r3, #1
	.loc 2 198 9
	cmp	r3, #0
	beq	.L55
.L54:
	.loc 2 200 16
	movs	r3, #3
	b	.L59
.L55:
	.loc 2 203 27
	ldr	r3, [sp, #4]
	str	r3, [sp, #16]
	ldr	r3, [sp]
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	str	r3, [sp, #24]
	.loc 2 209 13
	ldr	r3, .L60+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 209 24
	movs	r2, #1
	strb	r2, [r3, #10]
	.loc 2 210 56
	ldr	r3, .L60+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 210 27
	ldr	r3, [r3]
	add	r2, sp, #16
	mov	r1, r2
	mov	r0, r3
	bl	nrf_blk_dev_read_req
	str	r0, [sp, #28]
	.loc 2 212 8
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bne	.L56
	.loc 2 214 15
	b	.L57
.L58:
	.loc 2 216 21
	ldr	r3, .L60+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 216 33
	ldr	r3, [r3, #4]
	.loc 2 216 13
	blx	r3
.LVL10:
.L57:
	.loc 2 214 24
	ldr	r3, .L60+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 214 29
	ldrb	r3, [r3, #10]
	uxtb	r3, r3
	.loc 2 214 15
	cmp	r3, #0
	bne	.L58
	.loc 2 219 21
	ldr	r3, .L60+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 219 26
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	.loc 2 219 12
	cmp	r3, #0
	bne	.L56
	.loc 2 221 20
	movs	r3, #0
	b	.L59
.L56:
	.loc 2 224 12
	movs	r3, #1
.L59:
	.loc 2 225 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI30:
	@ sp needed
	ldr	pc, [sp], #4
.L61:
	.align	2
.L60:
	.word	m_drives_count
	.word	m_drives
.LFE153:
	.size	disk_read, .-disk_read
	.section	.text.disk_write,"ax",%progbits
	.align	1
	.global	disk_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	disk_write, %function
disk_write:
.LFB154:
	.loc 2 228 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI31:
	sub	sp, sp, #36
.LCFI32:
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 2 231 14
	ldr	r3, .L73
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 231 8
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	cmp	r2, r3
	bcs	.L63
	.loc 2 231 33 discriminator 1
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L64
.L63:
	.loc 2 233 16
	movs	r3, #4
	b	.L72
.L64:
	.loc 2 236 18
	ldr	r3, .L73+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 236 30
	ldr	r3, [r3]
	.loc 2 236 8
	cmp	r3, #0
	beq	.L66
	.loc 2 237 21
	ldr	r3, .L73+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 237 26
	ldrb	r3, [r3, #9]
	uxtb	r3, r3
	.loc 2 237 33
	and	r3, r3, #1
	.loc 2 237 9
	cmp	r3, #0
	beq	.L67
.L66:
	.loc 2 239 16
	movs	r3, #3
	b	.L72
.L67:
	.loc 2 242 17
	ldr	r3, .L73+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 242 22
	ldrb	r3, [r3, #9]
	uxtb	r3, r3
	.loc 2 242 29
	and	r3, r3, #4
	.loc 2 242 8
	cmp	r3, #0
	beq	.L68
	.loc 2 244 16
	movs	r3, #2
	b	.L72
.L68:
	.loc 2 247 27
	ldr	r3, [sp, #4]
	str	r3, [sp, #16]
	ldr	r3, [sp]
	str	r3, [sp, #20]
	ldr	r3, [sp, #8]
	str	r3, [sp, #24]
	.loc 2 253 13
	ldr	r3, .L73+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 253 24
	movs	r2, #1
	strb	r2, [r3, #10]
	.loc 2 254 57
	ldr	r3, .L73+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 254 27
	ldr	r3, [r3]
	add	r2, sp, #16
	mov	r1, r2
	mov	r0, r3
	bl	nrf_blk_dev_write_req
	str	r0, [sp, #28]
	.loc 2 255 8
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bne	.L69
	.loc 2 257 15
	b	.L70
.L71:
	.loc 2 259 21
	ldr	r3, .L73+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 259 33
	ldr	r3, [r3, #4]
	.loc 2 259 13
	blx	r3
.LVL11:
.L70:
	.loc 2 257 24
	ldr	r3, .L73+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 257 29
	ldrb	r3, [r3, #10]
	uxtb	r3, r3
	.loc 2 257 15
	cmp	r3, #0
	bne	.L71
	.loc 2 262 21
	ldr	r3, .L73+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #15]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 262 26
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	.loc 2 262 12
	cmp	r3, #0
	bne	.L69
	.loc 2 264 20
	movs	r3, #0
	b	.L72
.L69:
	.loc 2 267 12
	movs	r3, #1
.L72:
	.loc 2 268 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI33:
	@ sp needed
	ldr	pc, [sp], #4
.L74:
	.align	2
.L73:
	.word	m_drives_count
	.word	m_drives
.LFE154:
	.size	disk_write, .-disk_write
	.section	.text.disk_ioctl,"ax",%progbits
	.align	1
	.global	disk_ioctl
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	disk_ioctl, %function
disk_ioctl:
.LFB155:
	.loc 2 271 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI34:
	sub	sp, sp, #28
.LCFI35:
	mov	r3, r0
	str	r2, [sp]
	strb	r3, [sp, #7]
	mov	r3, r1
	strb	r3, [sp, #6]
	.loc 2 274 13
	ldr	r3, .L90
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 2 274 8
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L76
	.loc 2 276 16
	movs	r3, #4
	b	.L77
.L76:
	.loc 2 279 5
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L78
	cmp	r3, #2
	bgt	.L88
	cmp	r3, #0
	beq	.L80
	cmp	r3, #1
	beq	.L81
	.loc 2 321 13
	b	.L88
.L80:
.LBB6:
	.loc 2 283 17
	movs	r3, #1
	strb	r3, [sp, #11]
.L84:
.LBB7:
	.loc 2 286 60
	ldr	r3, .L90+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 286 34
	ldr	r3, [r3]
	add	r2, sp, #11
	movs	r1, #0
	mov	r0, r3
	bl	nrf_blk_dev_ioctl
	str	r0, [sp, #12]
	.loc 2 289 20
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L82
	.loc 2 289 40 discriminator 1
	ldr	r3, [sp, #12]
	cmp	r3, #17
	bne	.L89
.L82:
.LBE7:
	.loc 2 294 22
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	.loc 2 294 13
	cmp	r3, #0
	bne	.L84
	b	.L83
.L89:
.LBB8:
	.loc 2 291 21
	nop
.L83:
.LBE8:
	.loc 2 296 20
	movs	r3, #0
	b	.L77
.L81:
.LBE6:
.LBB9:
	.loc 2 300 25
	ldr	r3, .L90+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 300 37
	ldr	r3, [r3]
	.loc 2 300 16
	cmp	r3, #0
	bne	.L85
	.loc 2 302 24
	movs	r3, #3
	b	.L77
.L85:
	.loc 2 305 21
	ldr	r3, [sp]
	str	r3, [sp, #16]
	.loc 2 306 49
	ldr	r3, .L90+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 306 20
	ldr	r3, [r3]
	mov	r0, r3
	bl	nrf_blk_dev_geometry
	mov	r3, r0
	.loc 2 306 77
	ldr	r2, [r3]
	.loc 2 306 18
	ldr	r3, [sp, #16]
	str	r2, [r3]
	.loc 2 307 20
	movs	r3, #0
	b	.L77
.L78:
.LBE9:
.LBB10:
	.loc 2 311 25
	ldr	r3, .L90+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 311 37
	ldr	r3, [r3]
	.loc 2 311 16
	cmp	r3, #0
	bne	.L86
	.loc 2 313 24
	movs	r3, #3
	b	.L77
.L86:
	.loc 2 316 20
	ldr	r3, [sp]
	str	r3, [sp, #20]
	.loc 2 317 49
	ldr	r3, .L90+4
	ldr	r1, [r3]
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	.loc 2 317 20
	ldr	r3, [r3]
	mov	r0, r3
	bl	nrf_blk_dev_geometry
	mov	r3, r0
	.loc 2 317 77
	ldr	r3, [r3, #4]
	.loc 2 317 18
	uxth	r2, r3
	ldr	r3, [sp, #20]
	strh	r2, [r3]	@ movhi
	.loc 2 318 20
	movs	r3, #0
	b	.L77
.L88:
.LBE10:
	.loc 2 321 13
	nop
	.loc 2 323 12
	movs	r3, #1
.L77:
	.loc 2 324 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI36:
	@ sp needed
	ldr	pc, [sp], #4
.L91:
	.align	2
.L90:
	.word	m_drives_count
	.word	m_drives
.LFE155:
	.size	disk_ioctl, .-disk_ioctl
	.section	.text.diskio_blockdev_register,"ax",%progbits
	.align	1
	.global	diskio_blockdev_register
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	diskio_blockdev_register, %function
diskio_blockdev_register:
.LFB156:
	.loc 2 327 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI37:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 2 330 14
	ldr	r2, .L93
	ldr	r3, [sp, #4]
	str	r3, [r2]
	.loc 2 331 20
	ldr	r3, [sp]
	uxtb	r2, r3
	ldr	r3, .L93+4
	strb	r2, [r3]
	.loc 2 332 1
	nop
	add	sp, sp, #8
.LCFI38:
	@ sp needed
	bx	lr
.L94:
	.align	2
.L93:
	.word	m_drives
	.word	m_drives_count
.LFE156:
	.size	diskio_blockdev_register, .-diskio_blockdev_register
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
	.uleb128 0x18
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
	.uleb128 0x10
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
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0x10
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
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.byte	0x4
	.4byte	.LCFI9-.LFB145
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI10-.LCFI9
	.byte	0xe
	.uleb128 0x10
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
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI14-.LCFI13
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.byte	0x4
	.4byte	.LCFI15-.LFB147
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI16-.LCFI15
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.byte	0x4
	.4byte	.LCFI18-.LFB148
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI19-.LCFI18
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.byte	0x4
	.4byte	.LCFI20-.LFB150
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI22-.LCFI21
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.byte	0x4
	.4byte	.LCFI23-.LFB151
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI25-.LCFI24
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.byte	0x4
	.4byte	.LCFI26-.LFB152
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI27-.LCFI26
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.byte	0x4
	.4byte	.LCFI28-.LFB153
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI30-.LCFI29
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.byte	0x4
	.4byte	.LCFI31-.LFB154
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI33-.LCFI32
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.byte	0x4
	.4byte	.LCFI34-.LFB155
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI36-.LCFI35
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE26:
.LSFDE28:
	.4byte	.LEFDE28-.LASFDE28
.LASFDE28:
	.4byte	.Lframe0
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.byte	0x4
	.4byte	.LCFI37-.LFB156
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE28:
	.text
.Letext0:
	.file 4 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\fatfs\\port\\diskio_blkdev.h"
	.file 5 "../../../../../../external/fatfs/src/diskio.h"
	.file 6 "../../../../../../external/fatfs/src/integer.h"
	.section	.debug_types,"G",%progbits,wt.e6f3ff006ccd60f8,comdat
	.4byte	0xa8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xe6
	.byte	0xf3
	.byte	0xff
	.byte	0
	.byte	0x6c
	.byte	0xcd
	.byte	0x60
	.byte	0xf8
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x4
	.byte	0x4f
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0x4
	.byte	0x51
	.byte	0x1c
	.4byte	0x5b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x4
	.byte	0x52
	.byte	0x1c
	.4byte	0x6b
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x4
	.byte	0x53
	.byte	0x16
	.4byte	0x7b
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x4
	.byte	0x54
	.byte	0x15
	.4byte	0x80
	.byte	0xa
	.byte	0
	.uleb128 0x4
	.4byte	.LASF4
	.byte	0x4
	.byte	0x49
	.byte	0x3
	.byte	0x1c
	.byte	0x8
	.byte	0xf1
	.byte	0x7
	.byte	0xf7
	.byte	0xfa
	.byte	0x19
	.byte	0xaf
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0xd0
	.byte	0x8f
	.byte	0xd0
	.byte	0xae
	.byte	0xef
	.byte	0xa
	.byte	0x6
	.byte	0xb9
	.uleb128 0x5
	.4byte	0x85
	.uleb128 0x5
	.4byte	0x91
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x5
	.byte	0x10
	.byte	0xe
	.4byte	0x98
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.4byte	.LASF8
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0xa4
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0
	.section	.debug_types,"G",%progbits,wt.1c08f107f7fa19af,comdat
	.4byte	0x60
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x1c
	.byte	0x8
	.byte	0xf1
	.byte	0x7
	.byte	0xf7
	.byte	0xfa
	.byte	0x19
	.byte	0xaf
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x4
	.byte	0x3f
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.byte	0x41
	.byte	0x1d
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x4
	.byte	0x48
	.byte	0xc
	.4byte	0x47
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x52
	.uleb128 0x9
	.4byte	0x53
	.uleb128 0xa
	.uleb128 0x4
	.4byte	.LASF12
	.byte	0x1
	.byte	0xdc
	.byte	0x3
	.byte	0x22
	.byte	0xec
	.byte	0xf5
	.byte	0xee
	.byte	0x45
	.byte	0x8
	.byte	0x99
	.byte	0xf5
	.byte	0
	.file 7 "../../../../../../components/libraries/util/sdk_errors.h"
	.file 8 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdint.h"
	.section	.debug_types,"G",%progbits,wt.78e07f7d8ce77be7,comdat
	.4byte	0x1b2
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x78
	.byte	0xe0
	.byte	0x7f
	.byte	0x7d
	.byte	0x8c
	.byte	0xe7
	.byte	0x7b
	.byte	0xe7
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xb
	.4byte	.LASF27
	.byte	0x18
	.byte	0x1
	.byte	0xb7
	.byte	0xc
	.4byte	0x79
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x1
	.byte	0xbb
	.byte	0x16
	.4byte	0x79
	.byte	0
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x1
	.byte	0xc2
	.byte	0x16
	.4byte	0x7f
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x1
	.byte	0xc7
	.byte	0x16
	.4byte	0x85
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0x1
	.byte	0xcd
	.byte	0x16
	.4byte	0x85
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0x1
	.byte	0xd3
	.byte	0x16
	.4byte	0x8b
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0x1
	.byte	0xda
	.byte	0x2c
	.4byte	0x91
	.byte	0x14
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x97
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb0
	.uleb128 0x8
	.byte	0x4
	.4byte	0xbf
	.uleb128 0x8
	.byte	0x4
	.4byte	0xd3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xec
	.uleb128 0xc
	.4byte	0xfb
	.4byte	0xb0
	.uleb128 0xd
	.4byte	0x107
	.uleb128 0xd
	.4byte	0x10d
	.uleb128 0xd
	.4byte	0x119
	.byte	0
	.uleb128 0xc
	.4byte	0xfb
	.4byte	0xbf
	.uleb128 0xd
	.4byte	0x107
	.byte	0
	.uleb128 0xc
	.4byte	0xfb
	.4byte	0xd3
	.uleb128 0xd
	.4byte	0x107
	.uleb128 0xd
	.4byte	0x11f
	.byte	0
	.uleb128 0xc
	.4byte	0xfb
	.4byte	0xec
	.uleb128 0xd
	.4byte	0x107
	.uleb128 0xd
	.4byte	0x125
	.uleb128 0xd
	.4byte	0x135
	.byte	0
	.uleb128 0xc
	.4byte	0x137
	.4byte	0xfb
	.uleb128 0xd
	.4byte	0x107
	.byte	0
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x7
	.byte	0x9e
	.byte	0x12
	.4byte	0x13d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x149
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7b
	.byte	0x11
	.4byte	0x152
	.uleb128 0x8
	.byte	0x4
	.4byte	0x158
	.uleb128 0x8
	.byte	0x4
	.4byte	0x159
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x1
	.byte	0xa8
	.byte	0x3
	.byte	0x43
	.byte	0xe0
	.byte	0xcf
	.byte	0x54
	.byte	0x2e
	.byte	0xbc
	.byte	0x9b
	.byte	0xe7
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x8
	.byte	0x4
	.4byte	0x15e
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x8
	.byte	0x38
	.byte	0x16
	.4byte	0x163
	.uleb128 0xf
	.byte	0x22
	.byte	0xec
	.byte	0xf5
	.byte	0xee
	.byte	0x45
	.byte	0x8
	.byte	0x99
	.byte	0xf5
	.uleb128 0x8
	.byte	0x4
	.4byte	0x16a
	.uleb128 0x10
	.uleb128 0x9
	.4byte	0x17a
	.uleb128 0x9
	.4byte	0x18a
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0x11
	.4byte	0x17a
	.uleb128 0xd
	.4byte	0x107
	.uleb128 0xd
	.4byte	0x19a
	.byte	0
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x1
	.byte	0x45
	.byte	0x3
	.byte	0xed
	.byte	0xd2
	.byte	0x99
	.byte	0xe7
	.byte	0x92
	.byte	0xa
	.byte	0x7d
	.byte	0x29
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x1
	.byte	0x84
	.byte	0x3
	.byte	0xc
	.byte	0x5b
	.byte	0x9f
	.byte	0x75
	.byte	0x4d
	.byte	0xef
	.byte	0x9b
	.byte	0x3e
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1a0
	.uleb128 0x9
	.4byte	0x1a5
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x1
	.byte	0x71
	.byte	0x3
	.byte	0xef
	.byte	0x86
	.byte	0xc0
	.byte	0xdd
	.byte	0x77
	.byte	0x9e
	.byte	0xb0
	.byte	0xf6
	.byte	0
	.section	.debug_types,"G",%progbits,wt.43e0cf542ebc9be7,comdat
	.4byte	0x3c
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x43
	.byte	0xe0
	.byte	0xcf
	.byte	0x54
	.byte	0x2e
	.byte	0xbc
	.byte	0x9b
	.byte	0xe7
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x12
	.byte	0x7
	.byte	0x1
	.4byte	0x38
	.byte	0x1
	.byte	0xa5
	.byte	0xe
	.4byte	0x38
	.uleb128 0x13
	.4byte	.LASF28
	.byte	0
	.uleb128 0x13
	.4byte	.LASF29
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0
	.section	.debug_types,"G",%progbits,wt.0c5b9f754def9b3e,comdat
	.4byte	0x51
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xc
	.byte	0x5b
	.byte	0x9f
	.byte	0x75
	.byte	0x4d
	.byte	0xef
	.byte	0x9b
	.byte	0x3e
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x8
	.byte	0x1
	.byte	0x81
	.byte	0x9
	.4byte	0x41
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x1
	.byte	0x82
	.byte	0xe
	.4byte	0x41
	.byte	0
	.uleb128 0x3
	.4byte	.LASF31
	.byte	0x1
	.byte	0x83
	.byte	0xe
	.4byte	0x41
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x8
	.byte	0x38
	.byte	0x16
	.4byte	0x4d
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.byte	0
	.section	.debug_types,"G",%progbits,wt.22ecf5ee450899f5,comdat
	.4byte	0x44
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x22
	.byte	0xec
	.byte	0xf5
	.byte	0xee
	.byte	0x45
	.byte	0x8
	.byte	0x99
	.byte	0xf5
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xb
	.4byte	.LASF32
	.byte	0x4
	.byte	0x1
	.byte	0xb6
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF33
	.byte	0x1
	.byte	0xdb
	.byte	0xf
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3e
	.uleb128 0xf
	.byte	0x78
	.byte	0xe0
	.byte	0x7f
	.byte	0x7d
	.byte	0x8c
	.byte	0xe7
	.byte	0x7b
	.byte	0xe7
	.byte	0
	.section	.debug_types,"G",%progbits,wt.ef86c0dd779eb0f6,comdat
	.4byte	0x9a
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xef
	.byte	0x86
	.byte	0xc0
	.byte	0xdd
	.byte	0x77
	.byte	0x9e
	.byte	0xb0
	.byte	0xf6
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x1
	.byte	0x6c
	.byte	0x9
	.4byte	0x5b
	.uleb128 0x3
	.4byte	.LASF34
	.byte	0x1
	.byte	0x6d
	.byte	0x20
	.4byte	0x5b
	.byte	0
	.uleb128 0x3
	.4byte	.LASF35
	.byte	0x1
	.byte	0x6e
	.byte	0x1c
	.4byte	0x6b
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF36
	.byte	0x1
	.byte	0x6f
	.byte	0x1d
	.4byte	0x7b
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF37
	.byte	0x1
	.byte	0x70
	.byte	0x12
	.4byte	0x81
	.byte	0x8
	.byte	0
	.uleb128 0x4
	.4byte	.LASF38
	.byte	0x1
	.byte	0x61
	.byte	0x3
	.byte	0xa8
	.byte	0x17
	.byte	0x6c
	.byte	0x72
	.byte	0x2b
	.byte	0x71
	.byte	0xac
	.byte	0xd6
	.uleb128 0x4
	.4byte	.LASF5
	.byte	0x1
	.byte	0x67
	.byte	0x3
	.byte	0xd0
	.byte	0x8f
	.byte	0xd0
	.byte	0xae
	.byte	0xef
	.byte	0xa
	.byte	0x6
	.byte	0xb9
	.uleb128 0x8
	.byte	0x4
	.4byte	0x87
	.uleb128 0x8
	.byte	0x4
	.4byte	0x8c
	.uleb128 0x9
	.4byte	0x8d
	.uleb128 0x10
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x1
	.byte	0x45
	.byte	0x3
	.byte	0xed
	.byte	0xd2
	.byte	0x99
	.byte	0xe7
	.byte	0x92
	.byte	0xa
	.byte	0x7d
	.byte	0x29
	.byte	0
	.section	.debug_types,"G",%progbits,wt.d08fd0aeef0a06b9,comdat
	.4byte	0x42
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xd0
	.byte	0x8f
	.byte	0xd0
	.byte	0xae
	.byte	0xef
	.byte	0xa
	.byte	0x6
	.byte	0xb9
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x12
	.byte	0x7
	.byte	0x1
	.4byte	0x3e
	.byte	0x1
	.byte	0x63
	.byte	0xe
	.4byte	0x3e
	.uleb128 0x13
	.4byte	.LASF39
	.byte	0
	.uleb128 0x13
	.4byte	.LASF40
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF41
	.byte	0x2
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0
	.section	.debug_types,"G",%progbits,wt.a8176c722b71acd6,comdat
	.4byte	0x48
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xa8
	.byte	0x17
	.byte	0x6c
	.byte	0x72
	.byte	0x2b
	.byte	0x71
	.byte	0xac
	.byte	0xd6
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x12
	.byte	0x7
	.byte	0x1
	.4byte	0x44
	.byte	0x1
	.byte	0x5c
	.byte	0xe
	.4byte	0x44
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0
	.uleb128 0x13
	.4byte	.LASF43
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF44
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF45
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0
	.section	.debug_types,"G",%progbits,wt.edd299e7920a7d29,comdat
	.4byte	0x60
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xed
	.byte	0xd2
	.byte	0x99
	.byte	0xe7
	.byte	0x92
	.byte	0xa
	.byte	0x7d
	.byte	0x29
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0xc
	.byte	0x1
	.byte	0x41
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF46
	.byte	0x1
	.byte	0x42
	.byte	0xe
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF30
	.byte	0x1
	.byte	0x43
	.byte	0xe
	.4byte	0x4e
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF47
	.byte	0x1
	.byte	0x44
	.byte	0xc
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x8
	.byte	0x38
	.byte	0x16
	.4byte	0x5c
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.byte	0
	.file 9 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/__crossworks.h"
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
	.4byte	.LASF48
	.byte	0x8
	.byte	0x9
	.2byte	0x14f
	.byte	0x10
	.4byte	0x48
	.uleb128 0x15
	.4byte	.LASF49
	.byte	0x9
	.2byte	0x151
	.byte	0x1c
	.4byte	0x48
	.byte	0
	.uleb128 0x15
	.4byte	.LASF50
	.byte	0x9
	.2byte	0x152
	.byte	0x21
	.4byte	0x55
	.byte	0x4
	.byte	0
	.uleb128 0x16
	.4byte	.LASF51
	.byte	0x9
	.2byte	0x14d
	.byte	0x18
	.4byte	0x5b
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1d
	.uleb128 0x8
	.byte	0x4
	.4byte	0x61
	.uleb128 0xc
	.4byte	0x70
	.4byte	0x70
	.uleb128 0xd
	.4byte	0x76
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x7d
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x9
	.4byte	0x82
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF52
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
	.4byte	.LASF53
	.byte	0x14
	.byte	0x9
	.byte	0xdc
	.byte	0x10
	.4byte	0x38
	.uleb128 0x3
	.4byte	.LASF54
	.byte	0x9
	.byte	0xdd
	.byte	0x19
	.4byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	0x48
	.4byte	0x48
	.uleb128 0x19
	.4byte	0x4e
	.byte	0x4
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x55
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0x9
	.4byte	0x5a
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x9
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
	.byte	0x9
	.byte	0xd4
	.byte	0x9
	.4byte	0x4e
	.uleb128 0x3
	.4byte	.LASF56
	.byte	0x9
	.byte	0xd5
	.byte	0xf
	.4byte	0x4e
	.byte	0
	.uleb128 0x3
	.4byte	.LASF57
	.byte	0x9
	.byte	0xd6
	.byte	0x1e
	.4byte	0x54
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF58
	.byte	0x9
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
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF52
	.uleb128 0x4
	.4byte	.LASF59
	.byte	0x9
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
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x9
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
	.byte	0x9
	.byte	0xc4
	.byte	0x9
	.4byte	0x8f
	.uleb128 0x3
	.4byte	.LASF61
	.byte	0x9
	.byte	0xc6
	.byte	0x9
	.4byte	0x8f
	.byte	0
	.uleb128 0x3
	.4byte	.LASF62
	.byte	0x9
	.byte	0xc7
	.byte	0x9
	.4byte	0x95
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF63
	.byte	0x9
	.byte	0xc8
	.byte	0x9
	.4byte	0x95
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF64
	.byte	0x9
	.byte	0xcb
	.byte	0x9
	.4byte	0x9b
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF65
	.byte	0x9
	.byte	0xcc
	.byte	0xa
	.4byte	0xa1
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF66
	.byte	0x9
	.byte	0xcd
	.byte	0xa
	.4byte	0xa1
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF67
	.byte	0x9
	.byte	0xd0
	.byte	0x9
	.4byte	0xa7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF68
	.byte	0x9
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
	.uleb128 0xc
	.4byte	0x130
	.4byte	0xc7
	.uleb128 0xd
	.4byte	0x130
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0xc
	.4byte	0x130
	.4byte	0xd6
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0xc
	.4byte	0x130
	.4byte	0xea
	.uleb128 0xd
	.4byte	0x137
	.uleb128 0xd
	.4byte	0x130
	.byte	0
	.uleb128 0xc
	.4byte	0x137
	.4byte	0xf9
	.uleb128 0xd
	.4byte	0x137
	.byte	0
	.uleb128 0xc
	.4byte	0x130
	.4byte	0x112
	.uleb128 0xd
	.4byte	0x13e
	.uleb128 0xd
	.4byte	0x144
	.uleb128 0xd
	.4byte	0x14b
	.byte	0
	.uleb128 0xc
	.4byte	0x130
	.4byte	0x130
	.uleb128 0xd
	.4byte	0x155
	.uleb128 0xd
	.4byte	0x15b
	.uleb128 0xd
	.4byte	0x144
	.uleb128 0xd
	.4byte	0x14b
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF69
	.uleb128 0x8
	.byte	0x4
	.4byte	0x161
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
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
	.uleb128 0x8
	.byte	0x4
	.4byte	0x144
	.uleb128 0x8
	.byte	0x4
	.4byte	0x168
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF52
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
	.uleb128 0x2
	.byte	0x58
	.byte	0x9
	.byte	0x86
	.byte	0x9
	.4byte	0x1c7
	.uleb128 0x3
	.4byte	.LASF70
	.byte	0x9
	.byte	0x88
	.byte	0xf
	.4byte	0x1c7
	.byte	0
	.uleb128 0x3
	.4byte	.LASF71
	.byte	0x9
	.byte	0x89
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF72
	.byte	0x9
	.byte	0x8a
	.byte	0xf
	.4byte	0x1c7
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF73
	.byte	0x9
	.byte	0x8c
	.byte	0xf
	.4byte	0x1c7
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF74
	.byte	0x9
	.byte	0x8d
	.byte	0xf
	.4byte	0x1c7
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF75
	.byte	0x9
	.byte	0x8e
	.byte	0xf
	.4byte	0x1c7
	.byte	0x14
	.uleb128 0x3
	.4byte	.LASF76
	.byte	0x9
	.byte	0x8f
	.byte	0xf
	.4byte	0x1c7
	.byte	0x18
	.uleb128 0x3
	.4byte	.LASF77
	.byte	0x9
	.byte	0x90
	.byte	0xf
	.4byte	0x1c7
	.byte	0x1c
	.uleb128 0x3
	.4byte	.LASF78
	.byte	0x9
	.byte	0x91
	.byte	0xf
	.4byte	0x1c7
	.byte	0x20
	.uleb128 0x3
	.4byte	.LASF79
	.byte	0x9
	.byte	0x92
	.byte	0xf
	.4byte	0x1c7
	.byte	0x24
	.uleb128 0x3
	.4byte	.LASF80
	.byte	0x9
	.byte	0x94
	.byte	0x8
	.4byte	0x1cd
	.byte	0x28
	.uleb128 0x3
	.4byte	.LASF81
	.byte	0x9
	.byte	0x95
	.byte	0x8
	.4byte	0x1cd
	.byte	0x29
	.uleb128 0x3
	.4byte	.LASF82
	.byte	0x9
	.byte	0x96
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2a
	.uleb128 0x3
	.4byte	.LASF83
	.byte	0x9
	.byte	0x97
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2b
	.uleb128 0x3
	.4byte	.LASF84
	.byte	0x9
	.byte	0x98
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2c
	.uleb128 0x3
	.4byte	.LASF85
	.byte	0x9
	.byte	0x99
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2d
	.uleb128 0x3
	.4byte	.LASF86
	.byte	0x9
	.byte	0x9a
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2e
	.uleb128 0x3
	.4byte	.LASF87
	.byte	0x9
	.byte	0x9b
	.byte	0x8
	.4byte	0x1cd
	.byte	0x2f
	.uleb128 0x3
	.4byte	.LASF88
	.byte	0x9
	.byte	0x9c
	.byte	0x8
	.4byte	0x1cd
	.byte	0x30
	.uleb128 0x3
	.4byte	.LASF89
	.byte	0x9
	.byte	0x9d
	.byte	0x8
	.4byte	0x1cd
	.byte	0x31
	.uleb128 0x3
	.4byte	.LASF90
	.byte	0x9
	.byte	0x9e
	.byte	0x8
	.4byte	0x1cd
	.byte	0x32
	.uleb128 0x3
	.4byte	.LASF91
	.byte	0x9
	.byte	0x9f
	.byte	0x8
	.4byte	0x1cd
	.byte	0x33
	.uleb128 0x3
	.4byte	.LASF92
	.byte	0x9
	.byte	0xa0
	.byte	0x8
	.4byte	0x1cd
	.byte	0x34
	.uleb128 0x3
	.4byte	.LASF93
	.byte	0x9
	.byte	0xa1
	.byte	0x8
	.4byte	0x1cd
	.byte	0x35
	.uleb128 0x3
	.4byte	.LASF94
	.byte	0x9
	.byte	0xa6
	.byte	0xf
	.4byte	0x1c7
	.byte	0x38
	.uleb128 0x3
	.4byte	.LASF95
	.byte	0x9
	.byte	0xa7
	.byte	0xf
	.4byte	0x1c7
	.byte	0x3c
	.uleb128 0x3
	.4byte	.LASF96
	.byte	0x9
	.byte	0xa8
	.byte	0xf
	.4byte	0x1c7
	.byte	0x40
	.uleb128 0x3
	.4byte	.LASF97
	.byte	0x9
	.byte	0xa9
	.byte	0xf
	.4byte	0x1c7
	.byte	0x44
	.uleb128 0x3
	.4byte	.LASF98
	.byte	0x9
	.byte	0xaa
	.byte	0xf
	.4byte	0x1c7
	.byte	0x48
	.uleb128 0x3
	.4byte	.LASF99
	.byte	0x9
	.byte	0xab
	.byte	0xf
	.4byte	0x1c7
	.byte	0x4c
	.uleb128 0x3
	.4byte	.LASF100
	.byte	0x9
	.byte	0xac
	.byte	0xf
	.4byte	0x1c7
	.byte	0x50
	.uleb128 0x3
	.4byte	.LASF101
	.byte	0x9
	.byte	0xad
	.byte	0xf
	.4byte	0x1c7
	.byte	0x54
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x1d4
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF52
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
	.4byte	.LASF102
	.byte	0x8
	.byte	0x9
	.byte	0x7e
	.byte	0x8
	.4byte	0x45
	.uleb128 0x3
	.4byte	.LASF103
	.byte	0x9
	.byte	0x7f
	.byte	0x7
	.4byte	0x45
	.byte	0
	.uleb128 0x3
	.4byte	.LASF104
	.byte	0x9
	.byte	0x80
	.byte	0x8
	.4byte	0x4c
	.byte	0x4
	.byte	0
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF69
	.byte	0
	.section	.debug_types,"G",%progbits,wt.5f973a9f4f53eec0,comdat
	.4byte	0x4e
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x5f
	.byte	0x97
	.byte	0x3a
	.byte	0x9f
	.byte	0x4f
	.byte	0x53
	.byte	0xee
	.byte	0xc0
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x12
	.byte	0x7
	.byte	0x1
	.4byte	0x4a
	.byte	0x5
	.byte	0x13
	.byte	0xe
	.4byte	0x4a
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0
	.uleb128 0x13
	.4byte	.LASF106
	.byte	0x1
	.uleb128 0x13
	.4byte	.LASF107
	.byte	0x2
	.uleb128 0x13
	.4byte	.LASF108
	.byte	0x3
	.uleb128 0x13
	.4byte	.LASF109
	.byte	0x4
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.byte	0
	.file 10 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/string.h"
	.file 11 "../../../../../../components/toolchain/cmsis/include/core_cm4.h"
	.file 12 "../../../../../../modules/nrfx/mdk/system_nrf52.h"
	.file 13 "../../../../../../components/libraries/util/app_util.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x85b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1b
	.4byte	.LASF177
	.byte	0xc
	.4byte	.LASF178
	.4byte	.LASF179
	.4byte	.Ldebug_ranges0+0x18
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x17
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x6
	.4byte	.LASF110
	.byte	0x6
	.byte	0x13
	.byte	0x16
	.4byte	0x3c
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF23
	.uleb128 0x6
	.4byte	.LASF7
	.byte	0x6
	.byte	0x16
	.byte	0x17
	.4byte	0x54
	.uleb128 0x9
	.4byte	0x43
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF9
	.uleb128 0x9
	.4byte	0x54
	.uleb128 0x7
	.byte	0x2
	.byte	0x5
	.4byte	.LASF111
	.uleb128 0x6
	.4byte	.LASF112
	.byte	0x6
	.byte	0x1a
	.byte	0x18
	.4byte	0x73
	.uleb128 0x7
	.byte	0x2
	.byte	0x7
	.4byte	.LASF113
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.4byte	.LASF69
	.uleb128 0x6
	.4byte	.LASF114
	.byte	0x6
	.byte	0x1f
	.byte	0x17
	.4byte	0x8d
	.uleb128 0x7
	.byte	0x4
	.byte	0x7
	.4byte	.LASF115
	.uleb128 0x7
	.byte	0x8
	.byte	0x7
	.4byte	.LASF116
	.uleb128 0x6
	.4byte	.LASF6
	.byte	0x5
	.byte	0x10
	.byte	0xe
	.4byte	0x43
	.uleb128 0x4
	.4byte	.LASF117
	.byte	0x5
	.byte	0x19
	.byte	0x3
	.byte	0x5f
	.byte	0x97
	.byte	0x3a
	.byte	0x9f
	.byte	0x4f
	.byte	0x53
	.byte	0xee
	.byte	0xc0
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.4byte	.LASF118
	.uleb128 0x6
	.4byte	.LASF119
	.byte	0x8
	.byte	0x30
	.byte	0x17
	.4byte	0x54
	.uleb128 0x6
	.4byte	.LASF120
	.byte	0x8
	.byte	0x36
	.byte	0x18
	.4byte	0x73
	.uleb128 0x6
	.4byte	.LASF121
	.byte	0x8
	.byte	0x37
	.byte	0x14
	.4byte	0x29
	.uleb128 0x5
	.4byte	0xd6
	.uleb128 0x6
	.4byte	.LASF22
	.byte	0x8
	.byte	0x38
	.byte	0x16
	.4byte	0x3c
	.uleb128 0x7
	.byte	0x8
	.byte	0x5
	.4byte	.LASF122
	.uleb128 0xe
	.byte	0x4
	.uleb128 0x7
	.byte	0x1
	.byte	0x8
	.4byte	.LASF52
	.uleb128 0x9
	.4byte	0xfc
	.uleb128 0x4
	.4byte	.LASF60
	.byte	0x9
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
	.4byte	0x108
	.uleb128 0x4
	.4byte	.LASF55
	.byte	0x9
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
	.4byte	0x11d
	.uleb128 0x1c
	.4byte	.LASF123
	.byte	0x9
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
	.4byte	.LASF124
	.byte	0x9
	.2byte	0x10d
	.byte	0x1d
	.4byte	0x12d
	.uleb128 0x1d
	.4byte	.LASF125
	.byte	0x9
	.2byte	0x110
	.byte	0x25
	.4byte	0x118
	.uleb128 0x1d
	.4byte	.LASF126
	.byte	0x9
	.2byte	0x111
	.byte	0x25
	.4byte	0x118
	.uleb128 0x18
	.4byte	0x5b
	.4byte	0x17a
	.uleb128 0x19
	.4byte	0x3c
	.byte	0x7f
	.byte	0
	.uleb128 0x9
	.4byte	0x16a
	.uleb128 0x1d
	.4byte	.LASF127
	.byte	0x9
	.2byte	0x113
	.byte	0x1c
	.4byte	0x17a
	.uleb128 0x18
	.4byte	0x103
	.4byte	0x197
	.uleb128 0x1e
	.byte	0
	.uleb128 0x9
	.4byte	0x18c
	.uleb128 0x1d
	.4byte	.LASF128
	.byte	0x9
	.2byte	0x115
	.byte	0x13
	.4byte	0x197
	.uleb128 0x1d
	.4byte	.LASF129
	.byte	0x9
	.2byte	0x116
	.byte	0x13
	.4byte	0x197
	.uleb128 0x1d
	.4byte	.LASF130
	.byte	0x9
	.2byte	0x117
	.byte	0x13
	.4byte	0x197
	.uleb128 0x1d
	.4byte	.LASF131
	.byte	0x9
	.2byte	0x118
	.byte	0x13
	.4byte	0x197
	.uleb128 0x1d
	.4byte	.LASF132
	.byte	0x9
	.2byte	0x11a
	.byte	0x13
	.4byte	0x197
	.uleb128 0x1d
	.4byte	.LASF133
	.byte	0x9
	.2byte	0x11b
	.byte	0x13
	.4byte	0x197
	.uleb128 0x1d
	.4byte	.LASF134
	.byte	0x9
	.2byte	0x11c
	.byte	0x13
	.4byte	0x197
	.uleb128 0x1d
	.4byte	.LASF135
	.byte	0x9
	.2byte	0x11d
	.byte	0x13
	.4byte	0x197
	.uleb128 0x1d
	.4byte	.LASF136
	.byte	0x9
	.2byte	0x11e
	.byte	0x13
	.4byte	0x197
	.uleb128 0x1d
	.4byte	.LASF137
	.byte	0x9
	.2byte	0x11f
	.byte	0x13
	.4byte	0x197
	.uleb128 0xc
	.4byte	0x29
	.4byte	0x22d
	.uleb128 0xd
	.4byte	0x22d
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x238
	.uleb128 0x1f
	.4byte	.LASF180
	.uleb128 0x9
	.4byte	0x233
	.uleb128 0x1d
	.4byte	.LASF138
	.byte	0x9
	.2byte	0x135
	.byte	0xe
	.4byte	0x24a
	.uleb128 0x8
	.byte	0x4
	.4byte	0x21e
	.uleb128 0xc
	.4byte	0x29
	.4byte	0x25f
	.uleb128 0xd
	.4byte	0x25f
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x233
	.uleb128 0x1d
	.4byte	.LASF139
	.byte	0x9
	.2byte	0x136
	.byte	0xe
	.4byte	0x272
	.uleb128 0x8
	.byte	0x4
	.4byte	0x250
	.uleb128 0x20
	.4byte	.LASF140
	.byte	0x9
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
	.4byte	.LASF141
	.byte	0x9
	.2byte	0x157
	.byte	0x1f
	.4byte	0x296
	.uleb128 0x8
	.byte	0x4
	.4byte	0x278
	.uleb128 0x6
	.4byte	.LASF142
	.byte	0xa
	.byte	0x37
	.byte	0x12
	.4byte	0x3c
	.uleb128 0x6
	.4byte	.LASF19
	.byte	0x7
	.byte	0x9e
	.byte	0x12
	.4byte	0xe7
	.uleb128 0x1d
	.4byte	.LASF143
	.byte	0xb
	.2byte	0x744
	.byte	0x19
	.4byte	0xe2
	.uleb128 0x21
	.4byte	.LASF144
	.byte	0xc
	.byte	0x21
	.byte	0x11
	.4byte	0xe7
	.uleb128 0x21
	.4byte	.LASF145
	.byte	0xd
	.byte	0x53
	.byte	0x11
	.4byte	0xe7
	.uleb128 0x21
	.4byte	.LASF146
	.byte	0xd
	.byte	0x54
	.byte	0x11
	.4byte	0xe7
	.uleb128 0x21
	.4byte	.LASF147
	.byte	0xd
	.byte	0x72
	.byte	0x13
	.4byte	0x2f1
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe7
	.uleb128 0x21
	.4byte	.LASF148
	.byte	0xd
	.byte	0x73
	.byte	0x11
	.4byte	0xe7
	.uleb128 0x4
	.4byte	.LASF24
	.byte	0x1
	.byte	0x45
	.byte	0x3
	.byte	0xed
	.byte	0xd2
	.byte	0x99
	.byte	0xe7
	.byte	0x92
	.byte	0xa
	.byte	0x7d
	.byte	0x29
	.uleb128 0x9
	.4byte	0x303
	.uleb128 0x8
	.byte	0x4
	.4byte	0x313
	.uleb128 0x8
	.byte	0x4
	.4byte	0x324
	.uleb128 0x10
	.uleb128 0x4
	.4byte	.LASF26
	.byte	0x1
	.byte	0x71
	.byte	0x3
	.byte	0xef
	.byte	0x86
	.byte	0xc0
	.byte	0xdd
	.byte	0x77
	.byte	0x9e
	.byte	0xb0
	.byte	0xf6
	.uleb128 0x9
	.4byte	0x325
	.uleb128 0x6
	.4byte	.LASF20
	.byte	0x1
	.byte	0x7b
	.byte	0x11
	.4byte	0x346
	.uleb128 0x8
	.byte	0x4
	.4byte	0x34c
	.uleb128 0x11
	.4byte	0x35c
	.uleb128 0xd
	.4byte	0x35c
	.uleb128 0xd
	.4byte	0x367
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x362
	.uleb128 0x9
	.4byte	0x855
	.uleb128 0x8
	.byte	0x4
	.4byte	0x335
	.uleb128 0x4
	.4byte	.LASF25
	.byte	0x1
	.byte	0x84
	.byte	0x3
	.byte	0xc
	.byte	0x5b
	.byte	0x9f
	.byte	0x75
	.byte	0x4d
	.byte	0xef
	.byte	0x9b
	.byte	0x3e
	.uleb128 0x9
	.4byte	0x36d
	.uleb128 0x4
	.4byte	.LASF21
	.byte	0x1
	.byte	0xa8
	.byte	0x3
	.byte	0x43
	.byte	0xe0
	.byte	0xcf
	.byte	0x54
	.byte	0x2e
	.byte	0xbc
	.byte	0x9b
	.byte	0xe7
	.uleb128 0x8
	.byte	0x4
	.4byte	0x37d
	.uleb128 0x6
	.4byte	.LASF12
	.byte	0x1
	.byte	0xdc
	.byte	0x3
	.4byte	0x855
	.uleb128 0x9
	.4byte	0x398
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3a4
	.uleb128 0x7
	.byte	0x1
	.byte	0x2
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF149
	.byte	0x4
	.byte	0x55
	.byte	0x3
	.byte	0xe6
	.byte	0xf3
	.byte	0xff
	.byte	0
	.byte	0x6c
	.byte	0xcd
	.byte	0x60
	.byte	0xf8
	.uleb128 0x22
	.4byte	.LASF150
	.byte	0x2
	.byte	0x2f
	.byte	0x1a
	.4byte	0x3d8
	.uleb128 0x5
	.byte	0x3
	.4byte	m_drives
	.uleb128 0x8
	.byte	0x4
	.4byte	0x3b6
	.uleb128 0x22
	.4byte	.LASF151
	.byte	0x2
	.byte	0x34
	.byte	0xd
	.4byte	0x43
	.uleb128 0x5
	.byte	0x3
	.4byte	m_drives_count
	.uleb128 0x23
	.4byte	.LASF181
	.byte	0x2
	.2byte	0x146
	.byte	0x6
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x428
	.uleb128 0x24
	.4byte	.LASF152
	.byte	0x2
	.2byte	0x146
	.byte	0x31
	.4byte	0x3d8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x24
	.4byte	.LASF153
	.byte	0x2
	.2byte	0x146
	.byte	0x48
	.4byte	0x29c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x25
	.4byte	.LASF156
	.byte	0x2
	.2byte	0x10e
	.byte	0x9
	.4byte	0xa7
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4e0
	.uleb128 0x26
	.ascii	"drv\000"
	.byte	0x2
	.2byte	0x10e
	.byte	0x19
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x26
	.ascii	"cmd\000"
	.byte	0x2
	.2byte	0x10e
	.byte	0x23
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -26
	.uleb128 0x24
	.4byte	.LASF154
	.byte	0x2
	.2byte	0x10e
	.byte	0x2e
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x27
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x4a7
	.uleb128 0x28
	.4byte	.LASF155
	.byte	0x2
	.2byte	0x11b
	.byte	0x11
	.4byte	0x3af
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x29
	.4byte	.Ldebug_ranges0+0
	.uleb128 0x2a
	.ascii	"ret\000"
	.byte	0x2
	.2byte	0x11e
	.byte	0x1c
	.4byte	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x27
	.4byte	.LBB9
	.4byte	.LBE9-.LBB9
	.4byte	0x4c5
	.uleb128 0x2a
	.ascii	"val\000"
	.byte	0x2
	.2byte	0x131
	.byte	0x15
	.4byte	0x4e0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x2b
	.4byte	.LBB10
	.4byte	.LBE10-.LBB10
	.uleb128 0x2a
	.ascii	"val\000"
	.byte	0x2
	.2byte	0x13c
	.byte	0x14
	.4byte	0x4e6
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x81
	.uleb128 0x8
	.byte	0x4
	.4byte	0x67
	.uleb128 0x2c
	.4byte	.LASF157
	.byte	0x2
	.byte	0xe3
	.byte	0x9
	.4byte	0xa7
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x561
	.uleb128 0x2d
	.ascii	"drv\000"
	.byte	0x2
	.byte	0xe3
	.byte	0x19
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2e
	.4byte	.LASF154
	.byte	0x2
	.byte	0xe3
	.byte	0x2a
	.4byte	0x561
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.4byte	.LASF158
	.byte	0x2
	.byte	0xe3
	.byte	0x36
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x2
	.byte	0xe3
	.byte	0x43
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.ascii	"req\000"
	.byte	0x2
	.byte	0xf7
	.byte	0x1b
	.4byte	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LASF159
	.byte	0x2
	.byte	0xfe
	.byte	0x10
	.4byte	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x4f
	.uleb128 0x2c
	.4byte	.LASF160
	.byte	0x2
	.byte	0xbc
	.byte	0x9
	.4byte	0xa7
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5dc
	.uleb128 0x2d
	.ascii	"drv\000"
	.byte	0x2
	.byte	0xbc
	.byte	0x18
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -25
	.uleb128 0x2e
	.4byte	.LASF154
	.byte	0x2
	.byte	0xbc
	.byte	0x23
	.4byte	0x5dc
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x2e
	.4byte	.LASF158
	.byte	0x2
	.byte	0xbc
	.byte	0x2f
	.4byte	0x81
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x2e
	.4byte	.LASF153
	.byte	0x2
	.byte	0xbc
	.byte	0x3c
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x2f
	.ascii	"req\000"
	.byte	0x2
	.byte	0xcb
	.byte	0x1b
	.4byte	0x313
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x22
	.4byte	.LASF159
	.byte	0x2
	.byte	0xd2
	.byte	0x10
	.4byte	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.4byte	0x43
	.uleb128 0x30
	.4byte	.LASF161
	.byte	0x2
	.byte	0xb1
	.byte	0x9
	.4byte	0x9b
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x60c
	.uleb128 0x2d
	.ascii	"drv\000"
	.byte	0x2
	.byte	0xb1
	.byte	0x1a
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF162
	.byte	0x2
	.byte	0x84
	.byte	0x9
	.4byte	0x9b
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x645
	.uleb128 0x2d
	.ascii	"drv\000"
	.byte	0x2
	.byte	0x84
	.byte	0x20
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x2f
	.ascii	"ret\000"
	.byte	0x2
	.byte	0x9b
	.byte	0x10
	.4byte	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x2c
	.4byte	.LASF163
	.byte	0x2
	.byte	0x57
	.byte	0x9
	.4byte	0x9b
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x67e
	.uleb128 0x2d
	.ascii	"drv\000"
	.byte	0x2
	.byte	0x57
	.byte	0x1e
	.4byte	0x43
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x22
	.4byte	.LASF159
	.byte	0x2
	.byte	0x71
	.byte	0x10
	.4byte	0x2a8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x31
	.4byte	.LASF164
	.byte	0x2
	.byte	0x52
	.byte	0xd
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6a5
	.uleb128 0x32
	.4byte	0x84b
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.byte	0x2
	.byte	0x54
	.byte	0x5
	.byte	0
	.uleb128 0x31
	.4byte	.LASF165
	.byte	0x2
	.byte	0x3b
	.byte	0xd
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x6e9
	.uleb128 0x2e
	.4byte	.LASF166
	.byte	0x2
	.byte	0x3b
	.byte	0x3e
	.4byte	0x35c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2e
	.4byte	.LASF167
	.byte	0x2
	.byte	0x3c
	.byte	0x3d
	.4byte	0x367
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2f
	.ascii	"drv\000"
	.byte	0x2
	.byte	0x3e
	.byte	0xd
	.4byte	0xbe
	.uleb128 0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.uleb128 0x33
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x152
	.byte	0x1
	.4byte	0x392
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x715
	.uleb128 0x24
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x152
	.byte	0x2e
	.4byte	0x3a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x33
	.4byte	.LASF169
	.byte	0x1
	.2byte	0x142
	.byte	0x1a
	.4byte	0x2a8
	.4byte	.LFB146
	.4byte	.LFE146-.LFB146
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x761
	.uleb128 0x24
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x142
	.byte	0x44
	.4byte	0x3a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x26
	.ascii	"req\000"
	.byte	0x1
	.2byte	0x143
	.byte	0x46
	.4byte	0x382
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x24
	.4byte	.LASF170
	.byte	0x1
	.2byte	0x144
	.byte	0x33
	.4byte	0xfa
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x33
	.4byte	.LASF171
	.byte	0x1
	.2byte	0x12b
	.byte	0x1a
	.4byte	0x2a8
	.4byte	.LFB145
	.4byte	.LFE145-.LFB145
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x79d
	.uleb128 0x24
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x12b
	.byte	0x48
	.4byte	0x3a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x12c
	.byte	0x48
	.4byte	0x318
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x33
	.4byte	.LASF173
	.byte	0x1
	.2byte	0x10f
	.byte	0x1a
	.4byte	0x2a8
	.4byte	.LFB144
	.4byte	.LFE144-.LFB144
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d9
	.uleb128 0x24
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x10f
	.byte	0x47
	.4byte	0x3a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x24
	.4byte	.LASF172
	.byte	0x1
	.2byte	0x110
	.byte	0x47
	.4byte	0x318
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x34
	.4byte	.LASF174
	.byte	0x1
	.byte	0xfb
	.byte	0x1a
	.4byte	0x2a8
	.4byte	.LFB143
	.4byte	.LFE143-.LFB143
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x803
	.uleb128 0x2e
	.4byte	.LASF166
	.byte	0x1
	.byte	0xfb
	.byte	0x45
	.4byte	0x3a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x34
	.4byte	.LASF175
	.byte	0x1
	.byte	0xec
	.byte	0x1a
	.4byte	0x2a8
	.4byte	.LFB142
	.4byte	.LFE142-.LFB142
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x84b
	.uleb128 0x2e
	.4byte	.LASF166
	.byte	0x1
	.byte	0xec
	.byte	0x43
	.4byte	0x3a9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x2e
	.4byte	.LASF176
	.byte	0x1
	.byte	0xed
	.byte	0x44
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x2e
	.4byte	.LASF37
	.byte	0x1
	.byte	0xee
	.byte	0x38
	.4byte	0x31e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x35
	.4byte	.LASF182
	.byte	0x3
	.2byte	0x18a
	.byte	0x33
	.byte	0x3
	.uleb128 0x36
	.byte	0x22
	.byte	0xec
	.byte	0xf5
	.byte	0xee
	.byte	0x45
	.byte	0x8
	.byte	0x99
	.byte	0xf5
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
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
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
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x20
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
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
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x13
	.byte	0
	.uleb128 0x69
	.uleb128 0x20
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x310
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x85f
	.4byte	0x2b
	.ascii	"RES_OK\000"
	.4byte	0x31
	.ascii	"RES_ERROR\000"
	.4byte	0x37
	.ascii	"RES_WRPRT\000"
	.4byte	0x3d
	.ascii	"RES_NOTRDY\000"
	.4byte	0x43
	.ascii	"RES_PARERR\000"
	.4byte	0x2b
	.ascii	"NRF_BLOCK_DEV_EVT_INIT\000"
	.4byte	0x31
	.ascii	"NRF_BLOCK_DEV_EVT_UNINIT\000"
	.4byte	0x37
	.ascii	"NRF_BLOCK_DEV_EVT_BLK_READ_DONE\000"
	.4byte	0x3d
	.ascii	"NRF_BLOCK_DEV_EVT_BLK_WRITE_DONE\000"
	.4byte	0x2b
	.ascii	"NRF_BLOCK_DEV_RESULT_SUCCESS\000"
	.4byte	0x31
	.ascii	"NRF_BLOCK_DEV_RESULT_IO_ERROR\000"
	.4byte	0x37
	.ascii	"NRF_BLOCK_DEV_RESULT_TIMEOUT\000"
	.4byte	0x2b
	.ascii	"NRF_BLOCK_DEV_IOCTL_REQ_CACHE_FLUSH\000"
	.4byte	0x31
	.ascii	"NRF_BLOCK_DEV_IOCTL_REQ_INFO_STRINGS\000"
	.4byte	0x3c6
	.ascii	"m_drives\000"
	.4byte	0x3de
	.ascii	"m_drives_count\000"
	.4byte	0x3c6
	.ascii	"m_drives\000"
	.4byte	0x3de
	.ascii	"m_drives_count\000"
	.4byte	0x3f0
	.ascii	"diskio_blockdev_register\000"
	.4byte	0x428
	.ascii	"disk_ioctl\000"
	.4byte	0x4ec
	.ascii	"disk_write\000"
	.4byte	0x567
	.ascii	"disk_read\000"
	.4byte	0x5e2
	.ascii	"disk_status\000"
	.4byte	0x60c
	.ascii	"disk_uninitialize\000"
	.4byte	0x645
	.ascii	"disk_initialize\000"
	.4byte	0x67e
	.ascii	"default_wait_func\000"
	.4byte	0x6a5
	.ascii	"block_dev_handler\000"
	.4byte	0x6e9
	.ascii	"nrf_blk_dev_geometry\000"
	.4byte	0x715
	.ascii	"nrf_blk_dev_ioctl\000"
	.4byte	0x761
	.ascii	"nrf_blk_dev_write_req\000"
	.4byte	0x79d
	.ascii	"nrf_blk_dev_read_req\000"
	.4byte	0x7d9
	.ascii	"nrf_blk_dev_uninit\000"
	.4byte	0x803
	.ascii	"nrf_blk_dev_init\000"
	.4byte	0x84b
	.ascii	"__WFE\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x2b5
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x85f
	.4byte	0x29
	.ascii	"int\000"
	.4byte	0x3c
	.ascii	"unsigned int\000"
	.4byte	0x30
	.ascii	"UINT\000"
	.4byte	0x54
	.ascii	"unsigned char\000"
	.4byte	0x43
	.ascii	"BYTE\000"
	.4byte	0x60
	.ascii	"short int\000"
	.4byte	0x73
	.ascii	"short unsigned int\000"
	.4byte	0x67
	.ascii	"WORD\000"
	.4byte	0x7a
	.ascii	"long int\000"
	.4byte	0x8d
	.ascii	"long unsigned int\000"
	.4byte	0x81
	.ascii	"DWORD\000"
	.4byte	0x94
	.ascii	"long long unsigned int\000"
	.4byte	0x9b
	.ascii	"DSTATUS\000"
	.4byte	0xa7
	.ascii	"DRESULT\000"
	.4byte	0xb7
	.ascii	"signed char\000"
	.4byte	0xbe
	.ascii	"uint8_t\000"
	.4byte	0xca
	.ascii	"uint16_t\000"
	.4byte	0xd6
	.ascii	"int32_t\000"
	.4byte	0xe7
	.ascii	"uint32_t\000"
	.4byte	0xf3
	.ascii	"long long int\000"
	.4byte	0xb
	.ascii	"__mbstate_s\000"
	.4byte	0xfc
	.ascii	"char\000"
	.4byte	0x108
	.ascii	"__RAL_locale_codeset_t\000"
	.4byte	0x11d
	.ascii	"__RAL_locale_t\000"
	.4byte	0xb
	.ascii	"__locale_s\000"
	.4byte	0xb
	.ascii	"__RAL_error_decoder_s\000"
	.4byte	0x278
	.ascii	"__RAL_error_decoder_t\000"
	.4byte	0x29c
	.ascii	"size_t\000"
	.4byte	0x2a8
	.ascii	"ret_code_t\000"
	.4byte	0x303
	.ascii	"nrf_block_req_t\000"
	.4byte	0x325
	.ascii	"nrf_block_dev_event_t\000"
	.4byte	0x33a
	.ascii	"nrf_block_dev_ev_handler\000"
	.4byte	0x36d
	.ascii	"nrf_block_dev_geometry_t\000"
	.4byte	0x382
	.ascii	"nrf_block_dev_ioctl_req_t\000"
	.4byte	0xb
	.ascii	"nrf_block_dev_ops_s\000"
	.4byte	0xb
	.ascii	"nrf_block_dev_s\000"
	.4byte	0x398
	.ascii	"nrf_block_dev_t\000"
	.4byte	0x3af
	.ascii	"_Bool\000"
	.4byte	0x3b6
	.ascii	"diskio_blkdev_t\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x8c
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
	.4byte	.LFB147
	.4byte	.LFE147-.LFB147
	.4byte	.LFB148
	.4byte	.LFE148-.LFB148
	.4byte	.LFB149
	.4byte	.LFE149-.LFB149
	.4byte	.LFB150
	.4byte	.LFE150-.LFB150
	.4byte	.LFB151
	.4byte	.LFE151-.LFB151
	.4byte	.LFB152
	.4byte	.LFE152-.LFB152
	.4byte	.LFB153
	.4byte	.LFE153-.LFB153
	.4byte	.LFB154
	.4byte	.LFE154-.LFB154
	.4byte	.LFB155
	.4byte	.LFE155-.LFB155
	.4byte	.LFB156
	.4byte	.LFE156-.LFB156
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LBB7
	.4byte	.LBE7
	.4byte	.LBB8
	.4byte	.LBE8
	.4byte	0
	.4byte	0
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
	.4byte	.LFB147
	.4byte	.LFE147
	.4byte	.LFB148
	.4byte	.LFE148
	.4byte	.LFB149
	.4byte	.LFE149
	.4byte	.LFB150
	.4byte	.LFE150
	.4byte	.LFB151
	.4byte	.LFE151
	.4byte	.LFB152
	.4byte	.LFE152
	.4byte	.LFB153
	.4byte	.LFE153
	.4byte	.LFB154
	.4byte	.LFE154
	.4byte	.LFB155
	.4byte	.LFE155
	.4byte	.LFB156
	.4byte	.LFE156
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",%progbits
.Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	.Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x2
	.byte	0x3
	.uleb128 0x29
	.uleb128 0x4
	.byte	0x3
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0x3
	.uleb128 0xc
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x2d
	.uleb128 0x1
	.file 14 "../../../../../../components/libraries/util/sdk_common.h"
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0xe
	.byte	0x3
	.uleb128 0x35
	.uleb128 0x8
	.byte	0x4
	.file 15 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stdbool.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0xf
	.byte	0x4
	.byte	0x3
	.uleb128 0x37
	.uleb128 0xa
	.byte	0x3
	.uleb128 0x2f
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.file 16 "../config/sdk_config.h"
	.byte	0x3
	.uleb128 0x38
	.uleb128 0x10
	.byte	0x4
	.file 17 "../../../../../../components/libraries/util/nordic_common.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x11
	.byte	0x4
	.file 18 "../../../../../../modules/nrfx/mdk/compiler_abstraction.h"
	.byte	0x3
	.uleb128 0x3a
	.uleb128 0x12
	.byte	0x4
	.file 19 "../../../../../../components/libraries/util/sdk_os.h"
	.byte	0x3
	.uleb128 0x3b
	.uleb128 0x13
	.byte	0x4
	.byte	0x3
	.uleb128 0x3c
	.uleb128 0x7
	.file 20 "../../../../../../components/softdevice/s132/headers/nrf_error.h"
	.byte	0x3
	.uleb128 0x49
	.uleb128 0x14
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0xd
	.file 21 "C:/Program Files (x86)/SEGGER/SEGGER Embedded Studio for ARM 4.50/include/stddef.h"
	.byte	0x3
	.uleb128 0x36
	.uleb128 0x15
	.byte	0x4
	.file 22 "../../../../../../modules/nrfx/mdk/nrf.h"
	.byte	0x3
	.uleb128 0x39
	.uleb128 0x16
	.file 23 "../../../../../../modules/nrfx/mdk/nrf52.h"
	.byte	0x3
	.uleb128 0x54
	.uleb128 0x17
	.byte	0x3
	.uleb128 0x92
	.uleb128 0xb
	.file 24 "../../../../../../components/toolchain/cmsis/include/core_cmInstr.h"
	.byte	0x3
	.uleb128 0xd2
	.uleb128 0x18
	.byte	0x3
	.uleb128 0x3d
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.file 25 "../../../../../../components/toolchain/cmsis/include/core_cmFunc.h"
	.byte	0x3
	.uleb128 0xd3
	.uleb128 0x19
	.byte	0x4
	.file 26 "../../../../../../components/toolchain/cmsis/include/core_cmSimd.h"
	.byte	0x3
	.uleb128 0xd4
	.uleb128 0x1a
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x93
	.uleb128 0xc
	.byte	0x4
	.byte	0x4
	.file 27 "../../../../../../modules/nrfx/mdk/nrf52_bitfields.h"
	.byte	0x3
	.uleb128 0x55
	.uleb128 0x1b
	.byte	0x4
	.file 28 "../../../../../../modules/nrfx/mdk/nrf51_to_nrf52.h"
	.byte	0x3
	.uleb128 0x56
	.uleb128 0x1c
	.byte	0x4
	.file 29 "../../../../../../modules/nrfx/mdk/nrf52_name_change.h"
	.byte	0x3
	.uleb128 0x57
	.uleb128 0x1d
	.byte	0x4
	.byte	0x3
	.uleb128 0x61
	.uleb128 0x12
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.file 30 "../../../../../../components/libraries/util/sdk_macros.h"
	.byte	0x3
	.uleb128 0x3e
	.uleb128 0x1e
	.file 31 "../../../../../../components/libraries/util/nrf_assert.h"
	.byte	0x3
	.uleb128 0x34
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x30
	.uleb128 0x1f
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF10:
	.ascii	"p_block_device\000"
.LASF153:
	.ascii	"count\000"
.LASF107:
	.ascii	"RES_WRPRT\000"
.LASF148:
	.ascii	"__FLASH_segment_used_end__\000"
.LASF134:
	.ascii	"__RAL_data_utf8_space\000"
.LASF101:
	.ascii	"date_time_format\000"
.LASF129:
	.ascii	"__RAL_c_locale_abbrev_day_names\000"
.LASF125:
	.ascii	"__RAL_codeset_ascii\000"
.LASF51:
	.ascii	"__RAL_error_decoder_fn_t\000"
.LASF82:
	.ascii	"p_cs_precedes\000"
.LASF26:
	.ascii	"nrf_block_dev_event_t\000"
.LASF136:
	.ascii	"__RAL_data_utf8_minus\000"
.LASF67:
	.ascii	"__wctomb\000"
.LASF13:
	.ascii	"init\000"
.LASF116:
	.ascii	"long long unsigned int\000"
.LASF175:
	.ascii	"nrf_blk_dev_init\000"
.LASF53:
	.ascii	"__locale_s\000"
.LASF139:
	.ascii	"__user_get_time_of_day\000"
.LASF147:
	.ascii	"_vectors\000"
.LASF143:
	.ascii	"ITM_RxBuffer\000"
.LASF99:
	.ascii	"date_format\000"
.LASF50:
	.ascii	"next\000"
.LASF11:
	.ascii	"wait_func\000"
.LASF97:
	.ascii	"abbrev_month_names\000"
.LASF122:
	.ascii	"long long int\000"
.LASF118:
	.ascii	"signed char\000"
.LASF123:
	.ascii	"__RAL_global_locale\000"
.LASF154:
	.ascii	"buff\000"
.LASF58:
	.ascii	"codeset\000"
.LASF167:
	.ascii	"p_event\000"
.LASF65:
	.ascii	"__towupper\000"
.LASF155:
	.ascii	"flush_in_progress\000"
.LASF149:
	.ascii	"diskio_blkdev_t\000"
.LASF164:
	.ascii	"default_wait_func\000"
.LASF34:
	.ascii	"ev_type\000"
.LASF2:
	.ascii	"state\000"
.LASF69:
	.ascii	"long int\000"
.LASF18:
	.ascii	"geometry\000"
.LASF152:
	.ascii	"diskio_blkdevs\000"
.LASF133:
	.ascii	"__RAL_data_utf8_comma\000"
.LASF73:
	.ascii	"int_curr_symbol\000"
.LASF46:
	.ascii	"blk_id\000"
.LASF162:
	.ascii	"disk_uninitialize\000"
.LASF84:
	.ascii	"n_cs_precedes\000"
.LASF120:
	.ascii	"uint16_t\000"
.LASF41:
	.ascii	"NRF_BLOCK_DEV_RESULT_TIMEOUT\000"
.LASF114:
	.ascii	"DWORD\000"
.LASF104:
	.ascii	"__wchar\000"
.LASF88:
	.ascii	"int_p_cs_precedes\000"
.LASF17:
	.ascii	"ioctl\000"
.LASF14:
	.ascii	"uninit\000"
.LASF33:
	.ascii	"p_ops\000"
.LASF163:
	.ascii	"disk_initialize\000"
.LASF77:
	.ascii	"mon_grouping\000"
.LASF64:
	.ascii	"__iswctype\000"
.LASF142:
	.ascii	"size_t\000"
.LASF7:
	.ascii	"BYTE\000"
.LASF182:
	.ascii	"__WFE\000"
.LASF176:
	.ascii	"ev_handler\000"
.LASF24:
	.ascii	"nrf_block_req_t\000"
.LASF23:
	.ascii	"unsigned int\000"
.LASF90:
	.ascii	"int_p_sep_by_space\000"
.LASF144:
	.ascii	"SystemCoreClock\000"
.LASF38:
	.ascii	"nrf_block_dev_event_type_t\000"
.LASF98:
	.ascii	"am_pm_indicator\000"
.LASF132:
	.ascii	"__RAL_data_utf8_period\000"
.LASF110:
	.ascii	"UINT\000"
.LASF72:
	.ascii	"grouping\000"
.LASF5:
	.ascii	"nrf_block_dev_result_t\000"
.LASF115:
	.ascii	"long unsigned int\000"
.LASF66:
	.ascii	"__towlower\000"
.LASF161:
	.ascii	"disk_status\000"
.LASF137:
	.ascii	"__RAL_data_empty_string\000"
.LASF44:
	.ascii	"NRF_BLOCK_DEV_EVT_BLK_READ_DONE\000"
.LASF71:
	.ascii	"thousands_sep\000"
.LASF54:
	.ascii	"__category\000"
.LASF146:
	.ascii	"__StackLimit\000"
.LASF62:
	.ascii	"__toupper\000"
.LASF56:
	.ascii	"name\000"
.LASF57:
	.ascii	"data\000"
.LASF79:
	.ascii	"negative_sign\000"
.LASF113:
	.ascii	"short unsigned int\000"
.LASF169:
	.ascii	"nrf_blk_dev_ioctl\000"
.LASF94:
	.ascii	"day_names\000"
.LASF158:
	.ascii	"sector\000"
.LASF179:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF180:
	.ascii	"timeval\000"
.LASF156:
	.ascii	"disk_ioctl\000"
.LASF83:
	.ascii	"p_sep_by_space\000"
.LASF45:
	.ascii	"NRF_BLOCK_DEV_EVT_BLK_WRITE_DONE\000"
.LASF55:
	.ascii	"__RAL_locale_t\000"
.LASF160:
	.ascii	"disk_read\000"
.LASF100:
	.ascii	"time_format\000"
.LASF70:
	.ascii	"decimal_point\000"
.LASF78:
	.ascii	"positive_sign\000"
.LASF171:
	.ascii	"nrf_blk_dev_write_req\000"
.LASF86:
	.ascii	"p_sign_posn\000"
.LASF19:
	.ascii	"ret_code_t\000"
.LASF29:
	.ascii	"NRF_BLOCK_DEV_IOCTL_REQ_INFO_STRINGS\000"
.LASF40:
	.ascii	"NRF_BLOCK_DEV_RESULT_IO_ERROR\000"
.LASF1:
	.ascii	"last_result\000"
.LASF127:
	.ascii	"__RAL_ascii_ctype_map\000"
.LASF159:
	.ascii	"err_code\000"
.LASF37:
	.ascii	"p_context\000"
.LASF49:
	.ascii	"decode\000"
.LASF112:
	.ascii	"WORD\000"
.LASF105:
	.ascii	"RES_OK\000"
.LASF68:
	.ascii	"__mbtowc\000"
.LASF95:
	.ascii	"abbrev_day_names\000"
.LASF124:
	.ascii	"__RAL_c_locale\000"
.LASF63:
	.ascii	"__tolower\000"
.LASF165:
	.ascii	"block_dev_handler\000"
.LASF25:
	.ascii	"nrf_block_dev_geometry_t\000"
.LASF138:
	.ascii	"__user_set_time_of_day\000"
.LASF89:
	.ascii	"int_n_cs_precedes\000"
.LASF126:
	.ascii	"__RAL_codeset_utf8\000"
.LASF166:
	.ascii	"p_blk_dev\000"
.LASF32:
	.ascii	"nrf_block_dev_s\000"
.LASF12:
	.ascii	"nrf_block_dev_t\000"
.LASF151:
	.ascii	"m_drives_count\000"
.LASF42:
	.ascii	"NRF_BLOCK_DEV_EVT_INIT\000"
.LASF109:
	.ascii	"RES_PARERR\000"
.LASF145:
	.ascii	"__StackTop\000"
.LASF8:
	.ascii	"_Bool\000"
.LASF121:
	.ascii	"int32_t\000"
.LASF9:
	.ascii	"unsigned char\000"
.LASF128:
	.ascii	"__RAL_c_locale_day_names\000"
.LASF81:
	.ascii	"frac_digits\000"
.LASF111:
	.ascii	"short int\000"
.LASF181:
	.ascii	"diskio_blockdev_register\000"
.LASF174:
	.ascii	"nrf_blk_dev_uninit\000"
.LASF141:
	.ascii	"__RAL_error_decoder_head\000"
.LASF4:
	.ascii	"diskio_blkdev_config_t\000"
.LASF119:
	.ascii	"uint8_t\000"
.LASF173:
	.ascii	"nrf_blk_dev_read_req\000"
.LASF168:
	.ascii	"nrf_blk_dev_geometry\000"
.LASF47:
	.ascii	"p_buff\000"
.LASF172:
	.ascii	"p_blk\000"
.LASF59:
	.ascii	"__RAL_locale_data_t\000"
.LASF87:
	.ascii	"n_sign_posn\000"
.LASF22:
	.ascii	"uint32_t\000"
.LASF92:
	.ascii	"int_p_sign_posn\000"
.LASF74:
	.ascii	"currency_symbol\000"
.LASF52:
	.ascii	"char\000"
.LASF21:
	.ascii	"nrf_block_dev_ioctl_req_t\000"
.LASF76:
	.ascii	"mon_thousands_sep\000"
.LASF27:
	.ascii	"nrf_block_dev_ops_s\000"
.LASF31:
	.ascii	"blk_size\000"
.LASF6:
	.ascii	"DSTATUS\000"
.LASF15:
	.ascii	"read_req\000"
.LASF43:
	.ascii	"NRF_BLOCK_DEV_EVT_UNINIT\000"
.LASF60:
	.ascii	"__RAL_locale_codeset_t\000"
.LASF157:
	.ascii	"disk_write\000"
.LASF177:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -fomit-frame-poi"
	.ascii	"nter -fno-dwarf2-cfi-asm -fno-builtin -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF93:
	.ascii	"int_n_sign_posn\000"
.LASF39:
	.ascii	"NRF_BLOCK_DEV_RESULT_SUCCESS\000"
.LASF130:
	.ascii	"__RAL_c_locale_month_names\000"
.LASF61:
	.ascii	"__isctype\000"
.LASF20:
	.ascii	"nrf_block_dev_ev_handler\000"
.LASF48:
	.ascii	"__RAL_error_decoder_s\000"
.LASF140:
	.ascii	"__RAL_error_decoder_t\000"
.LASF150:
	.ascii	"m_drives\000"
.LASF108:
	.ascii	"RES_NOTRDY\000"
.LASF102:
	.ascii	"__mbstate_s\000"
.LASF117:
	.ascii	"DRESULT\000"
.LASF36:
	.ascii	"p_blk_req\000"
.LASF3:
	.ascii	"busy\000"
.LASF0:
	.ascii	"config\000"
.LASF80:
	.ascii	"int_frac_digits\000"
.LASF96:
	.ascii	"month_names\000"
.LASF106:
	.ascii	"RES_ERROR\000"
.LASF91:
	.ascii	"int_n_sep_by_space\000"
.LASF30:
	.ascii	"blk_count\000"
.LASF170:
	.ascii	"p_data\000"
.LASF85:
	.ascii	"n_sep_by_space\000"
.LASF28:
	.ascii	"NRF_BLOCK_DEV_IOCTL_REQ_CACHE_FLUSH\000"
.LASF135:
	.ascii	"__RAL_data_utf8_plus\000"
.LASF103:
	.ascii	"__state\000"
.LASF131:
	.ascii	"__RAL_c_locale_abbrev_month_names\000"
.LASF16:
	.ascii	"write_req\000"
.LASF75:
	.ascii	"mon_decimal_point\000"
.LASF35:
	.ascii	"result\000"
.LASF178:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\external\\fatfs\\port\\"
	.ascii	"diskio_blkdev.c\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
