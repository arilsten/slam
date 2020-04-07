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
	.file	"ff.c"
	.text
.Ltext0:
	.section	.bss.FatFs,"aw",%nobits
	.align	2
	.type	FatFs, %object
	.size	FatFs, 4
FatFs:
	.space	4
	.section	.bss.Fsid,"aw",%nobits
	.align	1
	.type	Fsid, %object
	.size	Fsid, 2
Fsid:
	.space	2
	.section	.text.ld_word,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ld_word, %function
ld_word:
.LFB0:
	.file 1 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\fatfs\\src\\ff.c"
	.loc 1 603 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI0:
	str	r0, [sp, #4]
	.loc 1 606 10
	ldr	r3, [sp, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 606 5
	strh	r3, [sp, #14]	@ movhi
	.loc 1 607 10
	ldrh	r3, [sp, #14]
	lsls	r3, r3, #8
	.loc 1 607 15
	sxth	r2, r3
	.loc 1 607 20
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxth	r3, r3
	.loc 1 607 15
	orrs	r3, r3, r2
	sxth	r3, r3
	.loc 1 607 5
	strh	r3, [sp, #14]	@ movhi
	.loc 1 608 9
	ldrh	r3, [sp, #14]
	.loc 1 609 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI1:
	@ sp needed
	bx	lr
.LFE0:
	.size	ld_word, .-ld_word
	.section	.text.ld_dword,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ld_dword, %function
ld_dword:
.LFB1:
	.loc 1 613 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
.LCFI2:
	str	r0, [sp, #4]
	.loc 1 616 10
	ldr	r3, [sp, #4]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 616 5
	str	r3, [sp, #12]
	.loc 1 617 10
	ldr	r3, [sp, #12]
	lsls	r3, r3, #8
	.loc 1 617 20
	ldr	r2, [sp, #4]
	adds	r2, r2, #2
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 617 5
	orrs	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 618 10
	ldr	r3, [sp, #12]
	lsls	r3, r3, #8
	.loc 1 618 20
	ldr	r2, [sp, #4]
	adds	r2, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 618 5
	orrs	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 619 10
	ldr	r3, [sp, #12]
	lsls	r3, r3, #8
	.loc 1 619 20
	ldr	r2, [sp, #4]
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 619 5
	orrs	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 620 9
	ldr	r3, [sp, #12]
	.loc 1 621 1
	mov	r0, r3
	add	sp, sp, #16
.LCFI3:
	@ sp needed
	bx	lr
.LFE1:
	.size	ld_dword, .-ld_dword
	.section	.text.st_word,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	st_word, %function
st_word:
.LFB2:
	.loc 1 644 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI4:
	str	r0, [sp, #4]
	mov	r3, r1
	strh	r3, [sp, #2]	@ movhi
	.loc 1 645 6
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	str	r2, [sp, #4]
	.loc 1 645 11
	ldrh	r2, [sp, #2]	@ movhi
	uxtb	r2, r2
	.loc 1 645 9
	strb	r2, [r3]
	.loc 1 645 26
	ldrh	r3, [sp, #2]
	lsrs	r3, r3, #8
	strh	r3, [sp, #2]	@ movhi
	.loc 1 646 6
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	str	r2, [sp, #4]
	.loc 1 646 11
	ldrh	r2, [sp, #2]	@ movhi
	uxtb	r2, r2
	.loc 1 646 9
	strb	r2, [r3]
	.loc 1 647 1
	nop
	add	sp, sp, #8
.LCFI5:
	@ sp needed
	bx	lr
.LFE2:
	.size	st_word, .-st_word
	.section	.text.st_dword,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	st_dword, %function
st_dword:
.LFB3:
	.loc 1 651 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI6:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 652 6
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	str	r2, [sp, #4]
	.loc 1 652 11
	ldr	r2, [sp]
	uxtb	r2, r2
	.loc 1 652 9
	strb	r2, [r3]
	.loc 1 652 26
	ldr	r3, [sp]
	lsrs	r3, r3, #8
	str	r3, [sp]
	.loc 1 653 6
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	str	r2, [sp, #4]
	.loc 1 653 11
	ldr	r2, [sp]
	uxtb	r2, r2
	.loc 1 653 9
	strb	r2, [r3]
	.loc 1 653 26
	ldr	r3, [sp]
	lsrs	r3, r3, #8
	str	r3, [sp]
	.loc 1 654 6
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	str	r2, [sp, #4]
	.loc 1 654 11
	ldr	r2, [sp]
	uxtb	r2, r2
	.loc 1 654 9
	strb	r2, [r3]
	.loc 1 654 26
	ldr	r3, [sp]
	lsrs	r3, r3, #8
	str	r3, [sp]
	.loc 1 655 6
	ldr	r3, [sp, #4]
	adds	r2, r3, #1
	str	r2, [sp, #4]
	.loc 1 655 11
	ldr	r2, [sp]
	uxtb	r2, r2
	.loc 1 655 9
	strb	r2, [r3]
	.loc 1 656 1
	nop
	add	sp, sp, #8
.LCFI7:
	@ sp needed
	bx	lr
.LFE3:
	.size	st_dword, .-st_dword
	.section	.text.mem_cpy,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mem_cpy, %function
mem_cpy:
.LFB4:
	.loc 1 682 53
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI8:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 683 8
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
	.loc 1 684 14
	ldr	r3, [sp, #8]
	str	r3, [sp, #16]
	.loc 1 686 5
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L10
.L9:
	.loc 1 687 15 discriminator 1
	ldr	r2, [sp, #16]
	adds	r3, r2, #1
	str	r3, [sp, #16]
	.loc 1 687 8 discriminator 1
	ldr	r3, [sp, #20]
	adds	r1, r3, #1
	str	r1, [sp, #20]
	.loc 1 687 13 discriminator 1
	ldrb	r2, [r2]	@ zero_extendqisi2
	.loc 1 687 11 discriminator 1
	strb	r2, [r3]
	.loc 1 687 3 discriminator 1
	ldr	r3, [sp, #4]
	subs	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L9
.L10:
	.loc 1 689 1
	nop
	add	sp, sp, #24
.LCFI9:
	@ sp needed
	bx	lr
.LFE4:
	.size	mem_cpy, .-mem_cpy
	.section	.text.mem_set,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mem_set, %function
mem_set:
.LFB5:
	.loc 1 693 45
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI10:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 694 8
	ldr	r3, [sp, #12]
	str	r3, [sp, #20]
.L12:
	.loc 1 696 7 discriminator 1
	ldr	r3, [sp, #20]
	adds	r2, r3, #1
	str	r2, [sp, #20]
	.loc 1 696 12 discriminator 1
	ldr	r2, [sp, #8]
	uxtb	r2, r2
	.loc 1 696 10 discriminator 1
	strb	r2, [r3]
	.loc 1 696 2 discriminator 1
	ldr	r3, [sp, #4]
	subs	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L12
	.loc 1 697 1
	nop
	nop
	add	sp, sp, #24
.LCFI11:
	@ sp needed
	bx	lr
.LFE5:
	.size	mem_set, .-mem_set
	.section	.text.mem_cmp,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	mem_cmp, %function
mem_cmp:
.LFB6:
	.loc 1 701 58
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #32
.LCFI12:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 702 14
	ldr	r3, [sp, #12]
	str	r3, [sp, #28]
	.loc 1 702 38
	ldr	r3, [sp, #8]
	str	r3, [sp, #24]
	.loc 1 703 6
	movs	r3, #0
	str	r3, [sp, #20]
.L15:
	.loc 1 706 9 discriminator 2
	ldr	r3, [sp, #28]
	adds	r2, r3, #1
	str	r2, [sp, #28]
	.loc 1 706 7 discriminator 2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	.loc 1 706 16 discriminator 2
	ldr	r3, [sp, #24]
	adds	r2, r3, #1
	str	r2, [sp, #24]
	.loc 1 706 14 discriminator 2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 706 5 discriminator 2
	subs	r3, r1, r3
	str	r3, [sp, #20]
	.loc 1 707 2 discriminator 2
	ldr	r3, [sp, #4]
	subs	r3, r3, #1
	str	r3, [sp, #4]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L14
	.loc 1 707 17 discriminator 1
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L15
.L14:
	.loc 1 709 9
	ldr	r3, [sp, #20]
	.loc 1 710 1
	mov	r0, r3
	add	sp, sp, #32
.LCFI13:
	@ sp needed
	bx	lr
.LFE6:
	.size	mem_cmp, .-mem_cmp
	.section	.text.chk_chr,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	chk_chr, %function
chk_chr:
.LFB7:
	.loc 1 714 40
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI14:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 715 8
	b	.L18
.L20:
	.loc 1 715 33 discriminator 3
	ldr	r3, [sp, #4]
	adds	r3, r3, #1
	str	r3, [sp, #4]
.L18:
	.loc 1 715 9 discriminator 1
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 715 8 discriminator 1
	cmp	r3, #0
	beq	.L19
	.loc 1 715 17 discriminator 2
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 715 14 discriminator 2
	ldr	r3, [sp]
	cmp	r3, r2
	bne	.L20
.L19:
	.loc 1 716 9
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 717 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI15:
	@ sp needed
	bx	lr
.LFE7:
	.size	chk_chr, .-chk_chr
	.section	.text.sync_window,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sync_window, %function
sync_window:
.LFB8:
	.loc 1 871 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI16:
	sub	sp, sp, #28
.LCFI17:
	str	r0, [sp, #4]
	.loc 1 874 10
	movs	r3, #0
	strb	r3, [sp, #15]
	.loc 1 877 8
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	.loc 1 877 5
	cmp	r3, #0
	beq	.L23
	.loc 1 878 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #44]
	str	r3, [sp, #20]
	.loc 1 879 7
	ldr	r3, [sp, #4]
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 879 29
	ldr	r3, [sp, #4]
	add	r1, r3, #48
	.loc 1 879 7
	movs	r3, #1
	ldr	r2, [sp, #20]
	bl	disk_write
	mov	r3, r0
	.loc 1 879 6
	cmp	r3, #0
	beq	.L24
	.loc 1 880 8
	movs	r3, #1
	strb	r3, [sp, #15]
	b	.L23
.L24:
	.loc 1 882 14
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #3]
	.loc 1 883 18
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #32]
	.loc 1 883 14
	ldr	r2, [sp, #20]
	subs	r2, r2, r3
	.loc 1 883 32
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	.loc 1 883 7
	cmp	r2, r3
	bcs	.L23
	.loc 1 884 17
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	.loc 1 884 13
	str	r3, [sp, #16]
	.loc 1 884 5
	b	.L25
.L26:
	.loc 1 885 17 discriminator 3
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	.loc 1 885 12 discriminator 3
	ldr	r2, [sp, #20]
	add	r3, r3, r2
	str	r3, [sp, #20]
	.loc 1 886 6 discriminator 3
	ldr	r3, [sp, #4]
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 886 28 discriminator 3
	ldr	r3, [sp, #4]
	add	r1, r3, #48
	.loc 1 886 6 discriminator 3
	movs	r3, #1
	ldr	r2, [sp, #20]
	bl	disk_write
	.loc 1 884 38 discriminator 3
	ldr	r3, [sp, #16]
	subs	r3, r3, #1
	str	r3, [sp, #16]
.L25:
	.loc 1 884 5 discriminator 1
	ldr	r3, [sp, #16]
	cmp	r3, #1
	bhi	.L26
.L23:
	.loc 1 891 9
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 892 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI18:
	@ sp needed
	ldr	pc, [sp], #4
.LFE8:
	.size	sync_window, .-sync_window
	.section	.text.move_window,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	move_window, %function
move_window:
.LFB9:
	.loc 1 901 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI19:
	sub	sp, sp, #20
.LCFI20:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 902 10
	movs	r3, #0
	strb	r3, [sp, #15]
	.loc 1 905 18
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #44]
	.loc 1 905 5
	ldr	r2, [sp]
	cmp	r2, r3
	beq	.L29
	.loc 1 907 9
	ldr	r0, [sp, #4]
	bl	sync_window
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 909 6
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L29
	.loc 1 910 8
	ldr	r3, [sp, #4]
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 910 29
	ldr	r3, [sp, #4]
	add	r1, r3, #48
	.loc 1 910 8
	movs	r3, #1
	ldr	r2, [sp]
	bl	disk_read
	mov	r3, r0
	.loc 1 910 7
	cmp	r3, #0
	beq	.L30
	.loc 1 911 12
	mov	r3, #-1
	str	r3, [sp]
	.loc 1 912 9
	movs	r3, #1
	strb	r3, [sp, #15]
.L30:
	.loc 1 914 16
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #44]
.L29:
	.loc 1 917 9
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 918 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI21:
	@ sp needed
	ldr	pc, [sp], #4
.LFE9:
	.size	move_window, .-move_window
	.section	.text.sync_fs,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	sync_fs, %function
sync_fs:
.LFB10:
	.loc 1 932 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI22:
	sub	sp, sp, #20
.LCFI23:
	str	r0, [sp, #4]
	.loc 1 936 8
	ldr	r0, [sp, #4]
	bl	sync_window
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 937 5
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L33
	.loc 1 939 9
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 939 6
	cmp	r3, #3
	bne	.L34
	.loc 1 939 29 discriminator 1
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	.loc 1 939 24 discriminator 1
	cmp	r3, #1
	bne	.L34
	.loc 1 941 14
	ldr	r3, [sp, #4]
	adds	r3, r3, #48
	.loc 1 941 4
	mov	r2, #512
	movs	r1, #0
	mov	r0, r3
	bl	mem_set
	.loc 1 942 12
	ldr	r3, [sp, #4]
	adds	r3, r3, #48
	.loc 1 942 4
	add	r3, r3, #510
	movw	r1, #43605
	mov	r0, r3
	bl	st_word
	.loc 1 943 13
	ldr	r3, [sp, #4]
	adds	r3, r3, #48
	.loc 1 943 4
	ldr	r1, .L36
	mov	r0, r3
	bl	st_dword
	.loc 1 944 13
	ldr	r3, [sp, #4]
	adds	r3, r3, #48
	.loc 1 944 4
	add	r3, r3, #484
	ldr	r1, .L36+4
	mov	r0, r3
	bl	st_dword
	.loc 1 945 13
	ldr	r3, [sp, #4]
	adds	r3, r3, #48
	.loc 1 945 4
	add	r2, r3, #488
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	mov	r1, r3
	mov	r0, r2
	bl	st_dword
	.loc 1 946 13
	ldr	r3, [sp, #4]
	adds	r3, r3, #48
	.loc 1 946 4
	add	r2, r3, #492
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #12]
	mov	r1, r3
	mov	r0, r2
	bl	st_dword
	.loc 1 948 20
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 948 30
	adds	r2, r3, #1
	.loc 1 948 16
	ldr	r3, [sp, #4]
	str	r2, [r3, #44]
	.loc 1 949 4
	ldr	r3, [sp, #4]
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 949 26
	ldr	r3, [sp, #4]
	add	r1, r3, #48
	.loc 1 949 4
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #44]
	movs	r3, #1
	bl	disk_write
	.loc 1 950 17
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #4]
.L34:
	.loc 1 953 7
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	disk_ioctl
	mov	r3, r0
	.loc 1 953 6
	cmp	r3, #0
	beq	.L33
	.loc 1 953 48 discriminator 1
	movs	r3, #1
	strb	r3, [sp, #15]
.L33:
	.loc 1 956 9
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 957 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI24:
	@ sp needed
	ldr	pc, [sp], #4
.L37:
	.align	2
.L36:
	.word	1096897106
	.word	1631679090
.LFE10:
	.size	sync_fs, .-sync_fs
	.section	.text.clust2sect,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	clust2sect, %function
clust2sect:
.LFB11:
	.loc 1 972 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #8
.LCFI25:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 973 7
	ldr	r3, [sp]
	subs	r3, r3, #2
	str	r3, [sp]
	.loc 1 974 16
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #20]
	.loc 1 974 27
	subs	r3, r3, #2
	.loc 1 974 5
	ldr	r2, [sp]
	cmp	r2, r3
	bcc	.L39
	.loc 1 974 39 discriminator 1
	movs	r3, #0
	b	.L40
.L39:
	.loc 1 975 18
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	.loc 1 975 14
	ldr	r3, [sp]
	mul	r2, r3, r2
	.loc 1 975 30
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #40]
	.loc 1 975 26
	add	r3, r3, r2
.L40:
	.loc 1 976 1
	mov	r0, r3
	add	sp, sp, #8
.LCFI26:
	@ sp needed
	bx	lr
.LFE11:
	.size	clust2sect, .-clust2sect
	.section	.text.get_fat,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	get_fat, %function
get_fat:
.LFB12:
	.loc 1 990 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI27:
	sub	sp, sp, #28
.LCFI28:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 993 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #16]
	.loc 1 996 5
	ldr	r3, [sp]
	cmp	r3, #1
	bls	.L42
	.loc 1 996 28 discriminator 1
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #20]
	.loc 1 996 15 discriminator 1
	ldr	r2, [sp]
	cmp	r2, r3
	bcc	.L43
.L42:
	.loc 1 997 7
	movs	r3, #1
	str	r3, [sp, #20]
	b	.L44
.L43:
	.loc 1 1000 7
	mov	r3, #-1
	str	r3, [sp, #20]
	.loc 1 1002 13
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1002 3
	cmp	r3, #3
	beq	.L45
	cmp	r3, #3
	bgt	.L46
	cmp	r3, #1
	beq	.L47
	cmp	r3, #2
	beq	.L48
	b	.L46
.L47:
	.loc 1 1004 7
	ldr	r3, [sp]
	str	r3, [sp, #12]
	.loc 1 1004 30
	ldr	r3, [sp, #12]
	lsrs	r3, r3, #1
	.loc 1 1004 24
	ldr	r2, [sp, #12]
	add	r3, r3, r2
	str	r3, [sp, #12]
	.loc 1 1005 26
	ldr	r3, [sp, #16]
	ldr	r2, [r3, #32]
	.loc 1 1005 42
	ldr	r3, [sp, #12]
	lsrs	r3, r3, #9
	.loc 1 1005 8
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [sp, #16]
	bl	move_window
	mov	r3, r0
	.loc 1 1005 7
	cmp	r3, #0
	bne	.L56
	.loc 1 1006 19
	ldr	r3, [sp, #12]
	adds	r2, r3, #1
	str	r2, [sp, #12]
	.loc 1 1006 22
	ubfx	r3, r3, #0, #9
	.loc 1 1006 16
	ldr	r2, [sp, #16]
	add	r3, r3, r2
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 1006 7
	str	r3, [sp, #8]
	.loc 1 1007 26
	ldr	r3, [sp, #16]
	ldr	r2, [r3, #32]
	.loc 1 1007 42
	ldr	r3, [sp, #12]
	lsrs	r3, r3, #9
	.loc 1 1007 8
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [sp, #16]
	bl	move_window
	mov	r3, r0
	.loc 1 1007 7
	cmp	r3, #0
	bne	.L57
	.loc 1 1008 21
	ldr	r3, [sp, #12]
	ubfx	r3, r3, #0, #9
	.loc 1 1008 17
	ldr	r2, [sp, #16]
	add	r3, r3, r2
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 1008 36
	lsls	r3, r3, #8
	mov	r2, r3
	.loc 1 1008 7
	ldr	r3, [sp, #8]
	orrs	r3, r3, r2
	str	r3, [sp, #8]
	.loc 1 1009 16
	ldr	r3, [sp]
	and	r3, r3, #1
	.loc 1 1009 33
	cmp	r3, #0
	beq	.L51
	.loc 1 1009 33 is_stmt 0 discriminator 1
	ldr	r3, [sp, #8]
	lsrs	r3, r3, #4
	b	.L52
.L51:
	.loc 1 1009 33 discriminator 2
	ldr	r3, [sp, #8]
	ubfx	r3, r3, #0, #12
.L52:
	.loc 1 1009 8 is_stmt 1 discriminator 4
	str	r3, [sp, #20]
	.loc 1 1010 4 discriminator 4
	b	.L44
.L48:
	.loc 1 1013 26
	ldr	r3, [sp, #16]
	ldr	r2, [r3, #32]
	.loc 1 1013 44
	ldr	r3, [sp]
	lsrs	r3, r3, #8
	.loc 1 1013 8
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [sp, #16]
	bl	move_window
	mov	r3, r0
	.loc 1 1013 7
	cmp	r3, #0
	bne	.L58
	.loc 1 1014 18
	ldr	r3, [sp, #16]
	add	r2, r3, #48
	.loc 1 1014 33
	ldr	r3, [sp]
	lsls	r3, r3, #1
	.loc 1 1014 37
	and	r3, r3, #510
	.loc 1 1014 10
	add	r3, r3, r2
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 1014 8
	str	r3, [sp, #20]
	.loc 1 1015 4
	b	.L44
.L45:
	.loc 1 1018 26
	ldr	r3, [sp, #16]
	ldr	r2, [r3, #32]
	.loc 1 1018 44
	ldr	r3, [sp]
	lsrs	r3, r3, #7
	.loc 1 1018 8
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [sp, #16]
	bl	move_window
	mov	r3, r0
	.loc 1 1018 7
	cmp	r3, #0
	bne	.L59
	.loc 1 1019 19
	ldr	r3, [sp, #16]
	add	r2, r3, #48
	.loc 1 1019 34
	ldr	r3, [sp]
	lsls	r3, r3, #2
	.loc 1 1019 38
	and	r3, r3, #508
	.loc 1 1019 10
	add	r3, r3, r2
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	.loc 1 1019 8
	bic	r3, r3, #-268435456
	str	r3, [sp, #20]
	.loc 1 1020 4
	b	.L44
.L46:
	.loc 1 1046 8
	movs	r3, #1
	str	r3, [sp, #20]
	b	.L44
.L56:
	.loc 1 1005 4
	nop
	b	.L44
.L57:
	.loc 1 1007 4
	nop
	b	.L44
.L58:
	.loc 1 1013 4
	nop
	b	.L44
.L59:
	.loc 1 1018 4
	nop
.L44:
	.loc 1 1050 9
	ldr	r3, [sp, #20]
	.loc 1 1051 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI29:
	@ sp needed
	ldr	pc, [sp], #4
.LFE12:
	.size	get_fat, .-get_fat
	.section	.text.put_fat,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	put_fat, %function
put_fat:
.LFB13:
	.loc 1 1067 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI30:
	sub	sp, sp, #32
.LCFI31:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 1070 10
	movs	r3, #2
	strb	r3, [sp, #31]
	.loc 1 1073 5
	ldr	r3, [sp, #8]
	cmp	r3, #1
	bls	.L74
	.loc 1 1073 28 discriminator 1
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 1073 16 discriminator 1
	ldr	r2, [sp, #8]
	cmp	r2, r3
	bcs	.L74
	.loc 1 1074 13
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1074 3
	cmp	r3, #3
	beq	.L62
	cmp	r3, #3
	bgt	.L61
	cmp	r3, #1
	beq	.L63
	cmp	r3, #2
	beq	.L64
	b	.L61
.L63:
	.loc 1 1076 7
	ldr	r3, [sp, #8]
	str	r3, [sp, #24]
	.loc 1 1076 30
	ldr	r3, [sp, #24]
	lsrs	r3, r3, #1
	.loc 1 1076 24
	ldr	r2, [sp, #24]
	add	r3, r3, r2
	str	r3, [sp, #24]
	.loc 1 1077 28
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #32]
	.loc 1 1077 44
	ldr	r3, [sp, #24]
	lsrs	r3, r3, #9
	.loc 1 1077 10
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	move_window
	mov	r3, r0
	strb	r3, [sp, #31]
	.loc 1 1078 7
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L75
	.loc 1 1079 8
	ldr	r3, [sp, #12]
	add	r2, r3, #48
	.loc 1 1079 23
	ldr	r3, [sp, #24]
	adds	r1, r3, #1
	str	r1, [sp, #24]
	ubfx	r3, r3, #0, #9
	.loc 1 1079 6
	add	r3, r3, r2
	str	r3, [sp, #20]
	.loc 1 1080 15
	ldr	r3, [sp, #8]
	and	r3, r3, #1
	.loc 1 1080 7
	cmp	r3, #0
	beq	.L66
	.loc 1 1080 24 discriminator 1
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	.loc 1 1080 27 discriminator 1
	and	r3, r3, #15
	sxtb	r2, r3
	.loc 1 1080 38 discriminator 1
	ldr	r3, [sp, #4]
	uxtb	r3, r3
	.loc 1 1080 48 discriminator 1
	lsls	r3, r3, #4
	.loc 1 1080 35 discriminator 1
	sxtb	r3, r3
	orrs	r3, r3, r2
	sxtb	r3, r3
	.loc 1 1080 7 discriminator 1
	uxtb	r3, r3
	b	.L67
.L66:
	.loc 1 1080 7 is_stmt 0 discriminator 2
	ldr	r3, [sp, #4]
	uxtb	r3, r3
.L67:
	.loc 1 1080 7 discriminator 4
	ldr	r2, [sp, #20]
	strb	r3, [r2]
	.loc 1 1081 14 is_stmt 1 discriminator 4
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 1 1082 28 discriminator 4
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #32]
	.loc 1 1082 44 discriminator 4
	ldr	r3, [sp, #24]
	lsrs	r3, r3, #9
	.loc 1 1082 10 discriminator 4
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	move_window
	mov	r3, r0
	strb	r3, [sp, #31]
	.loc 1 1083 7 discriminator 4
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L76
	.loc 1 1084 8
	ldr	r3, [sp, #12]
	add	r2, r3, #48
	.loc 1 1084 21
	ldr	r3, [sp, #24]
	ubfx	r3, r3, #0, #9
	.loc 1 1084 6
	add	r3, r3, r2
	str	r3, [sp, #20]
	.loc 1 1085 15
	ldr	r3, [sp, #8]
	and	r3, r3, #1
	.loc 1 1085 7
	cmp	r3, #0
	beq	.L69
	.loc 1 1085 33 discriminator 1
	ldr	r3, [sp, #4]
	lsrs	r3, r3, #4
	.loc 1 1085 7 discriminator 1
	uxtb	r3, r3
	b	.L70
.L69:
	.loc 1 1085 43 discriminator 2
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	.loc 1 1085 46 discriminator 2
	bic	r3, r3, #15
	sxtb	r2, r3
	.loc 1 1085 68 discriminator 2
	ldr	r3, [sp, #4]
	lsrs	r3, r3, #8
	.loc 1 1085 57 discriminator 2
	sxtb	r3, r3
	.loc 1 1085 74 discriminator 2
	and	r3, r3, #15
	sxtb	r3, r3
	.loc 1 1085 54 discriminator 2
	orrs	r3, r3, r2
	sxtb	r3, r3
	.loc 1 1085 7 discriminator 2
	uxtb	r3, r3
.L70:
	.loc 1 1085 7 is_stmt 0 discriminator 4
	ldr	r2, [sp, #20]
	strb	r3, [r2]
	.loc 1 1086 14 is_stmt 1 discriminator 4
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 1 1087 4 discriminator 4
	b	.L61
.L64:
	.loc 1 1090 28
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #32]
	.loc 1 1090 46
	ldr	r3, [sp, #8]
	lsrs	r3, r3, #8
	.loc 1 1090 10
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	move_window
	mov	r3, r0
	strb	r3, [sp, #31]
	.loc 1 1091 7
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L77
	.loc 1 1092 12
	ldr	r3, [sp, #12]
	add	r2, r3, #48
	.loc 1 1092 27
	ldr	r3, [sp, #8]
	lsls	r3, r3, #1
	.loc 1 1092 31
	and	r3, r3, #510
	.loc 1 1092 4
	add	r3, r3, r2
	ldr	r2, [sp, #4]
	uxth	r2, r2
	mov	r1, r2
	mov	r0, r3
	bl	st_word
	.loc 1 1093 14
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 1 1094 4
	b	.L61
.L62:
	.loc 1 1100 28
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #32]
	.loc 1 1100 46
	ldr	r3, [sp, #8]
	lsrs	r3, r3, #7
	.loc 1 1100 10
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	move_window
	mov	r3, r0
	strb	r3, [sp, #31]
	.loc 1 1101 7
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L78
	.loc 1 1103 16
	ldr	r3, [sp, #4]
	bic	r4, r3, #-268435456
	.loc 1 1103 42
	ldr	r3, [sp, #12]
	add	r2, r3, #48
	.loc 1 1103 57
	ldr	r3, [sp, #8]
	lsls	r3, r3, #2
	.loc 1 1103 61
	and	r3, r3, #508
	.loc 1 1103 33
	add	r3, r3, r2
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	.loc 1 1103 76
	and	r3, r3, #-268435456
	.loc 1 1103 9
	orrs	r3, r3, r4
	str	r3, [sp, #4]
	.loc 1 1105 13
	ldr	r3, [sp, #12]
	add	r2, r3, #48
	.loc 1 1105 28
	ldr	r3, [sp, #8]
	lsls	r3, r3, #2
	.loc 1 1105 32
	and	r3, r3, #508
	.loc 1 1105 4
	add	r3, r3, r2
	ldr	r1, [sp, #4]
	mov	r0, r3
	bl	st_dword
	.loc 1 1106 14
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 1 1107 4
	b	.L61
.L74:
	.loc 1 1109 2
	nop
	b	.L61
.L75:
	.loc 1 1078 4
	nop
	b	.L61
.L76:
	.loc 1 1083 4
	nop
	b	.L61
.L77:
	.loc 1 1091 4
	nop
	b	.L61
.L78:
	.loc 1 1101 4
	nop
.L61:
	.loc 1 1110 9
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	.loc 1 1111 1
	mov	r0, r3
	add	sp, sp, #32
.LCFI32:
	@ sp needed
	pop	{r4, pc}
.LFE13:
	.size	put_fat, .-put_fat
	.section	.text.remove_chain,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	remove_chain, %function
remove_chain:
.LFB14:
	.loc 1 1237 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI33:
	sub	sp, sp, #36
.LCFI34:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 1238 10
	movs	r3, #0
	strb	r3, [sp, #31]
	.loc 1 1240 9
	ldr	r3, [sp, #12]
	ldr	r3, [r3]
	str	r3, [sp, #24]
	.loc 1 1248 5
	ldr	r3, [sp, #8]
	cmp	r3, #1
	bls	.L80
	.loc 1 1248 28 discriminator 2
	ldr	r3, [sp, #24]
	ldr	r3, [r3, #20]
	.loc 1 1248 15 discriminator 2
	ldr	r2, [sp, #8]
	cmp	r2, r3
	bcc	.L81
.L80:
	.loc 1 1248 47 discriminator 3
	movs	r3, #2
	b	.L82
.L81:
	.loc 1 1251 5
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L90
	.loc 1 1252 9
	mov	r2, #-1
	ldr	r1, [sp, #4]
	ldr	r0, [sp, #24]
	bl	put_fat
	mov	r3, r0
	strb	r3, [sp, #31]
	.loc 1 1253 6
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L90
	.loc 1 1253 28 discriminator 1
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	b	.L82
.L90:
	.loc 1 1258 9
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #12]
	bl	get_fat
	str	r0, [sp, #20]
	.loc 1 1259 6
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L91
	.loc 1 1260 6
	ldr	r3, [sp, #20]
	cmp	r3, #1
	bne	.L86
	.loc 1 1260 24 discriminator 1
	movs	r3, #2
	b	.L82
.L86:
	.loc 1 1261 6
	ldr	r3, [sp, #20]
	cmp	r3, #-1
	bne	.L87
	.loc 1 1261 33 discriminator 1
	movs	r3, #1
	b	.L82
.L87:
	.loc 1 1263 10
	movs	r2, #0
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #24]
	bl	put_fat
	mov	r3, r0
	strb	r3, [sp, #31]
	.loc 1 1264 7
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L88
	.loc 1 1264 29 discriminator 1
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	b	.L82
.L88:
	.loc 1 1266 9
	ldr	r3, [sp, #24]
	ldr	r2, [r3, #16]
	.loc 1 1266 25
	ldr	r3, [sp, #24]
	ldr	r3, [r3, #20]
	.loc 1 1266 36
	subs	r3, r3, #2
	.loc 1 1266 6
	cmp	r2, r3
	bcs	.L89
	.loc 1 1267 6
	ldr	r3, [sp, #24]
	ldr	r3, [r3, #16]
	.loc 1 1267 17
	adds	r2, r3, #1
	ldr	r3, [sp, #24]
	str	r2, [r3, #16]
	.loc 1 1268 17
	ldr	r3, [sp, #24]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	orr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [sp, #24]
	strb	r2, [r3, #4]
.L89:
	.loc 1 1288 8
	ldr	r3, [sp, #20]
	str	r3, [sp, #8]
	.loc 1 1289 20
	ldr	r3, [sp, #24]
	ldr	r3, [r3, #20]
	.loc 1 1289 2
	ldr	r2, [sp, #8]
	cmp	r2, r3
	bcc	.L90
	b	.L85
.L91:
	.loc 1 1259 3
	nop
.L85:
	.loc 1 1302 9
	movs	r3, #0
.L82:
	.loc 1 1303 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI35:
	@ sp needed
	ldr	pc, [sp], #4
.LFE14:
	.size	remove_chain, .-remove_chain
	.section	.text.create_chain,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	create_chain, %function
create_chain:
.LFB15:
	.loc 1 1316 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI36:
	sub	sp, sp, #36
.LCFI37:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1319 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #16]
	.loc 1 1322 5
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L93
	.loc 1 1323 7
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #12]
	str	r3, [sp, #24]
	.loc 1 1324 6
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L94
	.loc 1 1324 28 discriminator 2
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #20]
	.loc 1 1324 16 discriminator 2
	ldr	r2, [sp, #24]
	cmp	r2, r3
	bcc	.L95
.L94:
	.loc 1 1324 44 discriminator 3
	movs	r3, #1
	str	r3, [sp, #24]
	b	.L95
.L93:
	.loc 1 1327 8
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	get_fat
	str	r0, [sp, #12]
	.loc 1 1328 6
	ldr	r3, [sp, #12]
	cmp	r3, #1
	bhi	.L96
	.loc 1 1328 22 discriminator 1
	movs	r3, #1
	b	.L97
.L96:
	.loc 1 1329 6
	ldr	r3, [sp, #12]
	cmp	r3, #-1
	bne	.L98
	.loc 1 1329 32 discriminator 1
	ldr	r3, [sp, #12]
	b	.L97
.L98:
	.loc 1 1330 14
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #20]
	.loc 1 1330 6
	ldr	r2, [sp, #12]
	cmp	r2, r3
	bcs	.L99
	.loc 1 1330 33 discriminator 1
	ldr	r3, [sp, #12]
	b	.L97
.L99:
	.loc 1 1331 7
	ldr	r3, [sp]
	str	r3, [sp, #24]
.L95:
	.loc 1 1352 7
	ldr	r3, [sp, #24]
	str	r3, [sp, #28]
.L106:
	.loc 1 1354 7
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	str	r3, [sp, #28]
	.loc 1 1355 17
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #20]
	.loc 1 1355 7
	ldr	r2, [sp, #28]
	cmp	r2, r3
	bcc	.L100
	.loc 1 1356 9
	movs	r3, #2
	str	r3, [sp, #28]
	.loc 1 1357 8
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bls	.L100
	.loc 1 1357 27 discriminator 1
	movs	r3, #0
	b	.L97
.L100:
	.loc 1 1359 9
	ldr	r1, [sp, #28]
	ldr	r0, [sp, #4]
	bl	get_fat
	str	r0, [sp, #12]
	.loc 1 1360 7
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L115
	.loc 1 1361 7
	ldr	r3, [sp, #12]
	cmp	r3, #1
	beq	.L103
	.loc 1 1361 16 discriminator 2
	ldr	r3, [sp, #12]
	cmp	r3, #-1
	bne	.L104
.L103:
	.loc 1 1361 44 discriminator 3
	ldr	r3, [sp, #12]
	b	.L97
.L104:
	.loc 1 1362 7
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bne	.L106
	.loc 1 1362 27 discriminator 1
	movs	r3, #0
	b	.L97
.L115:
	.loc 1 1360 4
	nop
	.loc 1 1369 9
	mov	r2, #-1
	ldr	r1, [sp, #28]
	ldr	r0, [sp, #16]
	bl	put_fat
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 1370 6
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L107
	.loc 1 1370 20 discriminator 1
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L107
	.loc 1 1371 10
	ldr	r2, [sp, #28]
	ldr	r1, [sp]
	ldr	r0, [sp, #16]
	bl	put_fat
	mov	r3, r0
	strb	r3, [sp, #23]
.L107:
	.loc 1 1375 5
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L108
	.loc 1 1376 17
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #28]
	str	r2, [r3, #12]
	.loc 1 1377 9
	ldr	r3, [sp, #16]
	ldr	r2, [r3, #16]
	.loc 1 1377 25
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #20]
	.loc 1 1377 36
	subs	r3, r3, #2
	.loc 1 1377 6
	cmp	r2, r3
	bcs	.L109
	.loc 1 1377 43 discriminator 1
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #16]
	.loc 1 1377 54 discriminator 1
	subs	r2, r3, #1
	ldr	r3, [sp, #16]
	str	r2, [r3, #16]
.L109:
	.loc 1 1378 16
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	orr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [sp, #16]
	strb	r2, [r3, #4]
	b	.L110
.L108:
	.loc 1 1380 43
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L111
	.loc 1 1380 43 is_stmt 0 discriminator 1
	mov	r3, #-1
	b	.L112
.L111:
	.loc 1 1380 43 discriminator 2
	movs	r3, #1
.L112:
	.loc 1 1380 7 is_stmt 1 discriminator 4
	str	r3, [sp, #28]
.L110:
	.loc 1 1383 9
	ldr	r3, [sp, #28]
.L97:
	.loc 1 1384 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI38:
	@ sp needed
	ldr	pc, [sp], #4
.LFE15:
	.size	create_chain, .-create_chain
	.section	.text.dir_sdi,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dir_sdi, %function
dir_sdi:
.LFB16:
	.loc 1 1431 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI39:
	sub	sp, sp, #28
.LCFI40:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1433 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #16]
	.loc 1 1436 5
	ldr	r3, [sp]
	cmp	r3, #2097152
	bcs	.L117
	.loc 1 1436 77 discriminator 1
	ldr	r3, [sp]
	and	r3, r3, #31
	.loc 1 1436 70 discriminator 1
	cmp	r3, #0
	beq	.L118
.L117:
	.loc 1 1437 10
	movs	r3, #2
	b	.L119
.L118:
	.loc 1 1439 11
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	str	r2, [r3, #16]
	.loc 1 1440 7
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	str	r3, [sp, #20]
	.loc 1 1441 5
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L120
	.loc 1 1441 21 discriminator 1
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1441 16 discriminator 1
	cmp	r3, #2
	bls	.L120
	.loc 1 1442 8
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #36]
	str	r3, [sp, #20]
.L120:
	.loc 1 1446 5
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L121
	.loc 1 1447 11
	ldr	r3, [sp]
	lsrs	r3, r3, #5
	.loc 1 1447 21
	ldr	r2, [sp, #16]
	ldrh	r2, [r2, #8]
	.loc 1 1447 6
	cmp	r3, r2
	bcc	.L122
	.loc 1 1447 41 discriminator 1
	movs	r3, #2
	b	.L119
.L122:
	.loc 1 1448 16
	ldr	r3, [sp, #16]
	ldr	r2, [r3, #36]
	.loc 1 1448 12
	ldr	r3, [sp, #4]
	str	r2, [r3, #24]
	b	.L123
.L121:
	.loc 1 1451 18
	ldr	r3, [sp, #16]
	ldrh	r3, [r3, #10]
	.loc 1 1451 7
	lsls	r3, r3, #9
	str	r3, [sp, #12]
	.loc 1 1452 9
	b	.L124
.L128:
	.loc 1 1453 11
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #20]
	mov	r0, r3
	bl	get_fat
	str	r0, [sp, #20]
	.loc 1 1454 7
	ldr	r3, [sp, #20]
	cmp	r3, #-1
	bne	.L125
	.loc 1 1454 35 discriminator 1
	movs	r3, #1
	b	.L119
.L125:
	.loc 1 1455 7
	ldr	r3, [sp, #20]
	cmp	r3, #1
	bls	.L126
	.loc 1 1455 30 discriminator 2
	ldr	r3, [sp, #16]
	ldr	r3, [r3, #20]
	.loc 1 1455 17 discriminator 2
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bcc	.L127
.L126:
	.loc 1 1455 49 discriminator 3
	movs	r3, #2
	b	.L119
.L127:
	.loc 1 1456 8
	ldr	r2, [sp]
	ldr	r3, [sp, #12]
	subs	r3, r2, r3
	str	r3, [sp]
.L124:
	.loc 1 1452 9
	ldr	r2, [sp]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bcs	.L128
	.loc 1 1458 14
	ldr	r1, [sp, #20]
	ldr	r0, [sp, #16]
	bl	clust2sect
	mov	r2, r0
	.loc 1 1458 12
	ldr	r3, [sp, #4]
	str	r2, [r3, #24]
.L123:
	.loc 1 1460 12
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #20]
	str	r2, [r3, #20]
	.loc 1 1461 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	.loc 1 1461 5
	cmp	r3, #0
	bne	.L129
	.loc 1 1461 24 discriminator 1
	movs	r3, #2
	b	.L119
.L129:
	.loc 1 1462 11
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #24]
	.loc 1 1462 18
	ldr	r3, [sp]
	lsrs	r3, r3, #9
	.loc 1 1462 11
	add	r2, r2, r3
	ldr	r3, [sp, #4]
	str	r2, [r3, #24]
	.loc 1 1463 12
	ldr	r3, [sp, #16]
	add	r2, r3, #48
	.loc 1 1463 27
	ldr	r3, [sp]
	ubfx	r3, r3, #0, #9
	.loc 1 1463 20
	add	r2, r2, r3
	.loc 1 1463 10
	ldr	r3, [sp, #4]
	str	r2, [r3, #28]
	.loc 1 1465 9
	movs	r3, #0
.L119:
	.loc 1 1466 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI41:
	@ sp needed
	ldr	pc, [sp], #4
.LFE16:
	.size	dir_sdi, .-dir_sdi
	.section	.text.dir_next,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dir_next, %function
dir_next:
.LFB17:
	.loc 1 1480 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI42:
	sub	sp, sp, #28
.LCFI43:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1482 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #12]
	.loc 1 1487 10
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	.loc 1 1487 6
	adds	r3, r3, #32
	str	r3, [sp, #8]
	.loc 1 1488 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	.loc 1 1488 5
	cmp	r3, #0
	beq	.L131
	.loc 1 1488 16 discriminator 2
	ldr	r3, [sp, #8]
	cmp	r3, #2097152
	bcc	.L132
.L131:
	.loc 1 1488 91 discriminator 3
	movs	r3, #4
	b	.L133
.L132:
	.loc 1 1490 10
	ldr	r3, [sp, #8]
	ubfx	r3, r3, #0, #9
	.loc 1 1490 5
	cmp	r3, #0
	bne	.L134
	.loc 1 1491 5
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	.loc 1 1491 11
	adds	r2, r3, #1
	ldr	r3, [sp, #4]
	str	r2, [r3, #24]
	.loc 1 1493 10
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #20]
	.loc 1 1493 6
	cmp	r3, #0
	bne	.L135
	.loc 1 1494 12
	ldr	r3, [sp, #8]
	lsrs	r3, r3, #5
	.loc 1 1494 22
	ldr	r2, [sp, #12]
	ldrh	r2, [r2, #8]
	.loc 1 1494 7
	cmp	r3, r2
	bcc	.L134
	.loc 1 1495 14
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	.loc 1 1495 26
	movs	r3, #4
	b	.L133
.L135:
	.loc 1 1499 13
	ldr	r3, [sp, #8]
	lsrs	r3, r3, #9
	.loc 1 1499 32
	ldr	r2, [sp, #12]
	ldrh	r2, [r2, #10]
	.loc 1 1499 40
	subs	r2, r2, #1
	.loc 1 1499 27
	ands	r3, r3, r2
	.loc 1 1499 7
	cmp	r3, #0
	bne	.L134
	.loc 1 1500 12
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #20]
	mov	r1, r3
	mov	r0, r2
	bl	get_fat
	str	r0, [sp, #20]
	.loc 1 1501 8
	ldr	r3, [sp, #20]
	cmp	r3, #1
	bhi	.L136
	.loc 1 1501 27 discriminator 1
	movs	r3, #2
	b	.L133
.L136:
	.loc 1 1502 8
	ldr	r3, [sp, #20]
	cmp	r3, #-1
	bne	.L137
	.loc 1 1502 36 discriminator 1
	movs	r3, #1
	b	.L133
.L137:
	.loc 1 1503 19
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 1503 8
	ldr	r2, [sp, #20]
	cmp	r2, r3
	bcc	.L138
	.loc 1 1505 9
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L139
	.loc 1 1506 16
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	.loc 1 1506 28
	movs	r3, #4
	b	.L133
.L139:
	.loc 1 1508 13
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #20]
	mov	r1, r3
	mov	r0, r2
	bl	create_chain
	str	r0, [sp, #20]
	.loc 1 1509 9
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L140
	.loc 1 1509 28 discriminator 1
	movs	r3, #7
	b	.L133
.L140:
	.loc 1 1510 9
	ldr	r3, [sp, #20]
	cmp	r3, #1
	bne	.L141
	.loc 1 1510 28 discriminator 1
	movs	r3, #2
	b	.L133
.L141:
	.loc 1 1511 9
	ldr	r3, [sp, #20]
	cmp	r3, #-1
	bne	.L142
	.loc 1 1511 37 discriminator 1
	movs	r3, #1
	b	.L133
.L142:
	.loc 1 1514 10
	ldr	r0, [sp, #12]
	bl	sync_window
	mov	r3, r0
	.loc 1 1514 9
	cmp	r3, #0
	beq	.L143
	.loc 1 1514 43 discriminator 1
	movs	r3, #1
	b	.L133
.L143:
	.loc 1 1515 16
	ldr	r3, [sp, #12]
	adds	r3, r3, #48
	.loc 1 1515 6
	mov	r2, #512
	movs	r1, #0
	mov	r0, r3
	bl	mem_set
	.loc 1 1516 13
	movs	r3, #0
	str	r3, [sp, #16]
	.loc 1 1516 32
	ldr	r1, [sp, #20]
	ldr	r0, [sp, #12]
	bl	clust2sect
	mov	r2, r0
	.loc 1 1516 30
	ldr	r3, [sp, #12]
	str	r2, [r3, #44]
	.loc 1 1516 6
	b	.L144
.L146:
	.loc 1 1517 17
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 1 1518 11
	ldr	r0, [sp, #12]
	bl	sync_window
	mov	r3, r0
	.loc 1 1518 10
	cmp	r3, #0
	beq	.L145
	.loc 1 1518 44 discriminator 1
	movs	r3, #1
	b	.L133
.L145:
	.loc 1 1516 70 discriminator 2
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
	.loc 1 1516 76 discriminator 2
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #44]
	.loc 1 1516 85 discriminator 2
	adds	r2, r3, #1
	ldr	r3, [sp, #12]
	str	r2, [r3, #44]
.L144:
	.loc 1 1516 60 discriminator 1
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	.loc 1 1516 6 discriminator 1
	ldr	r3, [sp, #16]
	cmp	r3, r2
	bcc	.L146
	.loc 1 1520 18
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #44]
	ldr	r3, [sp, #16]
	subs	r2, r2, r3
	ldr	r3, [sp, #12]
	str	r2, [r3, #44]
.L138:
	.loc 1 1526 15
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #20]
	str	r2, [r3, #20]
	.loc 1 1527 16
	ldr	r1, [sp, #20]
	ldr	r0, [sp, #12]
	bl	clust2sect
	mov	r2, r0
	.loc 1 1527 14
	ldr	r3, [sp, #4]
	str	r2, [r3, #24]
.L134:
	.loc 1 1531 11
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	str	r2, [r3, #16]
	.loc 1 1532 12
	ldr	r3, [sp, #12]
	add	r2, r3, #48
	.loc 1 1532 26
	ldr	r3, [sp, #8]
	ubfx	r3, r3, #0, #9
	.loc 1 1532 20
	add	r2, r2, r3
	.loc 1 1532 10
	ldr	r3, [sp, #4]
	str	r2, [r3, #28]
	.loc 1 1534 9
	movs	r3, #0
.L133:
	.loc 1 1535 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI44:
	@ sp needed
	ldr	pc, [sp], #4
.LFE17:
	.size	dir_next, .-dir_next
	.section	.text.dir_alloc,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dir_alloc, %function
dir_alloc:
.LFB18:
	.loc 1 1550 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI45:
	sub	sp, sp, #28
.LCFI46:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1553 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #12]
	.loc 1 1556 8
	movs	r1, #0
	ldr	r0, [sp, #4]
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 1557 5
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L148
	.loc 1 1558 5
	movs	r3, #0
	str	r3, [sp, #16]
.L154:
	.loc 1 1560 10
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	move_window
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 1561 7
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L157
	.loc 1 1565 10
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 1565 15
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1565 7
	cmp	r3, #229
	beq	.L150
	.loc 1 1565 32 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 1565 37 discriminator 1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1565 27 discriminator 1
	cmp	r3, #0
	bne	.L151
.L150:
	.loc 1 1567 8
	ldr	r3, [sp, #16]
	adds	r3, r3, #1
	str	r3, [sp, #16]
	ldr	r2, [sp, #16]
	ldr	r3, [sp]
	cmp	r2, r3
	bne	.L153
	.loc 1 1567 5
	b	.L148
.L151:
	.loc 1 1569 7
	movs	r3, #0
	str	r3, [sp, #16]
.L153:
	.loc 1 1571 10
	movs	r1, #1
	ldr	r0, [sp, #4]
	bl	dir_next
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 1572 3
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L154
	b	.L148
.L157:
	.loc 1 1561 4
	nop
.L148:
	.loc 1 1575 5
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L155
	.loc 1 1575 29 discriminator 1
	movs	r3, #7
	strb	r3, [sp, #23]
.L155:
	.loc 1 1576 9
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	.loc 1 1577 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI47:
	@ sp needed
	ldr	pc, [sp], #4
.LFE18:
	.size	dir_alloc, .-dir_alloc
	.section	.text.ld_clust,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	ld_clust, %function
ld_clust:
.LFB19:
	.loc 1 1593 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI48:
	sub	sp, sp, #20
.LCFI49:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 1596 7
	ldr	r3, [sp]
	adds	r3, r3, #26
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 1596 5
	str	r3, [sp, #12]
	.loc 1 1597 8
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1597 5
	cmp	r3, #3
	bne	.L159
	.loc 1 1598 16
	ldr	r3, [sp]
	adds	r3, r3, #20
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 1598 34
	lsls	r3, r3, #16
	.loc 1 1598 6
	ldr	r2, [sp, #12]
	orrs	r3, r3, r2
	str	r3, [sp, #12]
.L159:
	.loc 1 1601 9
	ldr	r3, [sp, #12]
	.loc 1 1602 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI50:
	@ sp needed
	ldr	pc, [sp], #4
.LFE19:
	.size	ld_clust, .-ld_clust
	.section	.text.st_clust,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	st_clust, %function
st_clust:
.LFB20:
	.loc 1 1612 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI51:
	sub	sp, sp, #20
.LCFI52:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 1613 2
	ldr	r3, [sp, #8]
	adds	r3, r3, #26
	ldr	r2, [sp, #4]
	uxth	r2, r2
	mov	r1, r2
	mov	r0, r3
	bl	st_word
	.loc 1 1614 8
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 1614 5
	cmp	r3, #3
	bne	.L163
	.loc 1 1615 3
	ldr	r3, [sp, #8]
	add	r2, r3, #20
	.loc 1 1615 31
	ldr	r3, [sp, #4]
	lsrs	r3, r3, #16
	.loc 1 1615 3
	uxth	r3, r3
	mov	r1, r3
	mov	r0, r2
	bl	st_word
.L163:
	.loc 1 1617 1
	nop
	add	sp, sp, #20
.LCFI53:
	@ sp needed
	ldr	pc, [sp], #4
.LFE20:
	.size	st_clust, .-st_clust
	.section	.text.dir_read,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dir_read, %function
dir_read:
.LFB21:
	.loc 1 2093 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI54:
	sub	sp, sp, #28
.LCFI55:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 2094 10
	movs	r3, #4
	strb	r3, [sp, #23]
	.loc 1 2095 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #16]
	.loc 1 2101 8
	b	.L165
.L170:
	.loc 1 2102 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	mov	r1, r3
	ldr	r0, [sp, #16]
	bl	move_window
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 2103 6
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L173
	.loc 1 2104 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 2104 5
	ldrb	r3, [r3]
	strb	r3, [sp, #15]
	.loc 1 2105 6
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L168
	.loc 1 2105 21 discriminator 1
	movs	r3, #4
	strb	r3, [sp, #23]
	.loc 1 2105 3 discriminator 1
	b	.L167
.L168:
	.loc 1 2123 25
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 2123 30
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2123 21
	and	r3, r3, #63
	strb	r3, [sp, #14]
	.loc 1 2123 17
	ldr	r3, [sp, #4]
	ldrb	r2, [sp, #14]
	strb	r2, [r3, #6]
	.loc 1 2144 7
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #229
	beq	.L169
	.loc 1 2144 18 discriminator 1
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #46
	beq	.L169
	.loc 1 2144 30 discriminator 2
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	cmp	r3, #15
	beq	.L169
	.loc 1 2144 55 discriminator 3
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	bic	r3, r3, #32
	.loc 1 2144 46 discriminator 3
	cmp	r3, #8
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	.loc 1 2144 43 discriminator 3
	ldr	r3, [sp]
	cmp	r3, r2
	beq	.L174
.L169:
	.loc 1 2149 9
	movs	r1, #0
	ldr	r0, [sp, #4]
	bl	dir_next
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 2150 6
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L175
.L165:
	.loc 1 2101 11
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	.loc 1 2101 8
	cmp	r3, #0
	bne	.L170
	b	.L167
.L173:
	.loc 1 2103 3
	nop
	b	.L167
.L174:
	.loc 1 2145 5
	nop
	b	.L167
.L175:
	.loc 1 2150 3
	nop
.L167:
	.loc 1 2153 5
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L171
	.loc 1 2153 29 discriminator 1
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #24]
.L171:
	.loc 1 2154 9
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	.loc 1 2155 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI56:
	@ sp needed
	ldr	pc, [sp], #4
.LFE21:
	.size	dir_read, .-dir_read
	.section	.text.dir_find,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dir_find, %function
dir_find:
.LFB22:
	.loc 1 2169 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI57:
	sub	sp, sp, #28
.LCFI58:
	str	r0, [sp, #4]
	.loc 1 2171 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #16]
	.loc 1 2177 8
	movs	r1, #0
	ldr	r0, [sp, #4]
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 2178 5
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L177
	.loc 1 2178 27 discriminator 1
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	b	.L178
.L177:
	.loc 1 2201 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	mov	r1, r3
	ldr	r0, [sp, #16]
	bl	move_window
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 2202 6
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L183
	.loc 1 2203 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 2203 5
	ldrb	r3, [r3]
	strb	r3, [sp, #15]
	.loc 1 2204 6
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L181
	.loc 1 2204 21 discriminator 1
	movs	r3, #4
	strb	r3, [sp, #23]
	.loc 1 2204 3 discriminator 1
	b	.L180
.L181:
	.loc 1 2227 20
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 2227 25
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2227 30
	and	r3, r3, #63
	uxtb	r2, r3
	.loc 1 2227 16
	ldr	r3, [sp, #4]
	strb	r2, [r3, #6]
	.loc 1 2228 11
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 2228 16
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2228 21
	and	r3, r3, #8
	.loc 1 2228 6
	cmp	r3, #0
	bne	.L182
	.loc 1 2228 43 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r0, [r3, #28]
	.loc 1 2228 52 discriminator 1
	ldr	r3, [sp, #4]
	adds	r3, r3, #32
	.loc 1 2228 33 discriminator 1
	movs	r2, #11
	mov	r1, r3
	bl	mem_cmp
	mov	r3, r0
	.loc 1 2228 29 discriminator 1
	cmp	r3, #0
	beq	.L184
.L182:
	.loc 1 2230 9
	movs	r1, #0
	ldr	r0, [sp, #4]
	bl	dir_next
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 2231 2
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L177
	b	.L180
.L183:
	.loc 1 2202 3
	nop
	b	.L180
.L184:
	.loc 1 2228 3
	nop
.L180:
	.loc 1 2233 9
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
.L178:
	.loc 1 2234 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI59:
	@ sp needed
	ldr	pc, [sp], #4
.LFE22:
	.size	dir_find, .-dir_find
	.section	.text.dir_register,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dir_register, %function
dir_register:
.LFB23:
	.loc 1 2248 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI60:
	sub	sp, sp, #20
.LCFI61:
	str	r0, [sp, #4]
	.loc 1 2250 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #8]
	.loc 1 2318 8
	movs	r1, #1
	ldr	r0, [sp, #4]
	bl	dir_alloc
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2323 5
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L186
	.loc 1 2324 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	mov	r1, r3
	ldr	r0, [sp, #8]
	bl	move_window
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 2325 6
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L186
	.loc 1 2326 14
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 2326 4
	movs	r2, #32
	movs	r1, #0
	mov	r0, r3
	bl	mem_set
	.loc 1 2327 20
	ldr	r3, [sp, #4]
	ldr	r0, [r3, #28]
	.loc 1 2327 27
	ldr	r3, [sp, #4]
	adds	r3, r3, #32
	.loc 1 2327 4
	movs	r2, #11
	mov	r1, r3
	bl	mem_cpy
	.loc 1 2331 14
	ldr	r3, [sp, #8]
	movs	r2, #1
	strb	r2, [r3, #3]
.L186:
	.loc 1 2335 9
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 2336 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI62:
	@ sp needed
	ldr	pc, [sp], #4
.LFE23:
	.size	dir_register, .-dir_register
	.section	.text.dir_remove,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	dir_remove, %function
dir_remove:
.LFB24:
	.loc 1 2351 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI63:
	sub	sp, sp, #20
.LCFI64:
	str	r0, [sp, #4]
	.loc 1 2353 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #12]
	.loc 1 2376 8
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	move_window
	mov	r3, r0
	strb	r3, [sp, #11]
	.loc 1 2377 5
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L189
	.loc 1 2378 5
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 2378 14
	movs	r2, #229
	strb	r2, [r3]
	.loc 1 2379 13
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #3]
.L189:
	.loc 1 2383 9
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	.loc 1 2384 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI65:
	@ sp needed
	ldr	pc, [sp], #4
.LFE24:
	.size	dir_remove, .-dir_remove
	.section	.text.get_fileinfo,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	get_fileinfo, %function
get_fileinfo:
.LFB25:
	.loc 1 2400 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI66:
	sub	sp, sp, #28
.LCFI67:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 2410 16
	ldr	r3, [sp]
	movs	r2, #0
	strb	r2, [r3, #9]
	.loc 1 2411 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	.loc 1 2411 5
	cmp	r3, #0
	beq	.L199
	.loc 1 2471 8
	movs	r3, #0
	str	r3, [sp, #16]
	.loc 1 2471 4
	ldr	r3, [sp, #16]
	str	r3, [sp, #20]
	.loc 1 2472 8
	b	.L194
.L198:
	.loc 1 2473 16
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #28]
	.loc 1 2473 23
	ldr	r3, [sp, #20]
	adds	r1, r3, #1
	str	r1, [sp, #20]
	.loc 1 2473 21
	add	r3, r3, r2
	.loc 1 2473 5
	ldrb	r3, [r3]
	strb	r3, [sp, #15]
	.loc 1 2474 6
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L195
	.loc 1 2474 3 discriminator 1
	b	.L194
.L195:
	.loc 1 2475 6
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L196
	.loc 1 2475 20 discriminator 1
	movs	r3, #229
	strb	r3, [sp, #15]
.L196:
	.loc 1 2476 6
	ldr	r3, [sp, #20]
	cmp	r3, #9
	bne	.L197
	.loc 1 2476 27 discriminator 1
	ldr	r3, [sp, #16]
	adds	r2, r3, #1
	str	r2, [sp, #16]
	.loc 1 2476 31 discriminator 1
	ldr	r2, [sp]
	add	r3, r3, r2
	movs	r2, #46
	strb	r2, [r3, #9]
.L197:
	.loc 1 2477 15
	ldr	r3, [sp, #16]
	adds	r2, r3, #1
	str	r2, [sp, #16]
	.loc 1 2477 19
	ldr	r2, [sp]
	add	r3, r3, r2
	ldrb	r2, [sp, #15]
	strb	r2, [r3, #9]
.L194:
	.loc 1 2472 8
	ldr	r3, [sp, #20]
	cmp	r3, #10
	bls	.L198
	.loc 1 2479 16
	ldr	r2, [sp]
	ldr	r3, [sp, #16]
	add	r3, r3, r2
	adds	r3, r3, #9
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 2482 19
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 2482 15
	ldrb	r2, [r3, #11]	@ zero_extendqisi2
	ldr	r3, [sp]
	strb	r2, [r3, #8]
	.loc 1 2483 26
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 2483 32
	adds	r3, r3, #28
	.loc 1 2483 15
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 2483 13
	ldr	r3, [sp]
	str	r2, [r3]
	.loc 1 2484 18
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 2484 24
	adds	r3, r3, #22
	.loc 1 2484 7
	mov	r0, r3
	bl	ld_dword
	str	r0, [sp, #8]
	.loc 1 2485 15
	ldr	r3, [sp, #8]
	uxth	r2, r3
	.loc 1 2485 13
	ldr	r3, [sp]
	strh	r2, [r3, #6]	@ movhi
	.loc 1 2485 48
	ldr	r3, [sp, #8]
	lsrs	r3, r3, #16
	.loc 1 2485 38
	uxth	r2, r3
	.loc 1 2485 36
	ldr	r3, [sp]
	strh	r2, [r3, #4]	@ movhi
	b	.L191
.L199:
	.loc 1 2411 17
	nop
.L191:
	.loc 1 2486 1
	add	sp, sp, #28
.LCFI68:
	@ sp needed
	ldr	pc, [sp], #4
.LFE25:
	.size	get_fileinfo, .-get_fileinfo
	.section .rodata
	.align	2
.LC0:
	.ascii	"\"*+,:;<=>?[]|\177\000"
	.section	.text.create_name,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	create_name, %function
create_name:
.LFB26:
	.loc 1 2574 1
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI69:
	sub	sp, sp, #44
.LCFI70:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 2699 4
	ldr	r3, [sp]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	.loc 1 2699 17
	ldr	r3, [sp, #4]
	adds	r3, r3, #32
	str	r3, [sp, #16]
	.loc 1 2700 2
	movs	r2, #11
	movs	r1, #32
	ldr	r0, [sp, #16]
	bl	mem_set
	.loc 1 2701 9
	movs	r3, #0
	str	r3, [sp, #24]
	.loc 1 2701 5
	ldr	r3, [sp, #24]
	str	r3, [sp, #28]
	.loc 1 2701 17
	movs	r3, #8
	str	r3, [sp, #32]
.L222:
	.loc 1 2716 17
	ldr	r3, [sp, #28]
	adds	r2, r3, #1
	str	r2, [sp, #28]
	.loc 1 2716 14
	ldr	r2, [sp, #20]
	add	r3, r3, r2
	.loc 1 2716 5
	ldrb	r3, [r3]
	strb	r3, [sp, #39]
	.loc 1 2717 6
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	cmp	r3, #32
	bls	.L227
	.loc 1 2718 6
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	cmp	r3, #47
	beq	.L205
	.loc 1 2718 16 discriminator 1
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	cmp	r3, #92
	bne	.L204
	.loc 1 2719 10
	b	.L205
.L206:
	.loc 1 2719 44 discriminator 4
	ldr	r3, [sp, #28]
	adds	r3, r3, #1
	str	r3, [sp, #28]
.L205:
	.loc 1 2719 12 discriminator 1
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2719 10 discriminator 1
	cmp	r3, #47
	beq	.L206
	.loc 1 2719 28 discriminator 3
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2719 24 discriminator 3
	cmp	r3, #92
	beq	.L206
	.loc 1 2720 4
	b	.L202
.L204:
	.loc 1 2722 6
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	cmp	r3, #46
	beq	.L207
	.loc 1 2722 16 discriminator 1
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #32]
	cmp	r2, r3
	bcc	.L208
.L207:
	.loc 1 2723 7
	ldr	r3, [sp, #32]
	cmp	r3, #11
	beq	.L209
	.loc 1 2723 17 discriminator 2
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	cmp	r3, #46
	beq	.L210
.L209:
	.loc 1 2723 37 discriminator 3
	movs	r3, #6
	b	.L211
.L210:
	.loc 1 2724 6
	movs	r3, #8
	str	r3, [sp, #24]
	.loc 1 2724 14
	movs	r3, #11
	str	r3, [sp, #32]
	.loc 1 2725 4
	b	.L212
.L208:
	.loc 1 2736 6
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	cmp	r3, #128
	bls	.L213
	.loc 1 2736 27 discriminator 1
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	cmp	r3, #159
	bls	.L214
.L213:
	.loc 1 2736 49 discriminator 3
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	cmp	r3, #223
	bls	.L215
	.loc 1 2736 71 discriminator 4
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	cmp	r3, #252
	bhi	.L215
.L214:
	.loc 1 2737 18
	ldr	r3, [sp, #28]
	adds	r2, r3, #1
	str	r2, [sp, #28]
	.loc 1 2737 15
	ldr	r2, [sp, #20]
	add	r3, r3, r2
	.loc 1 2737 6
	ldrb	r3, [r3]
	strb	r3, [sp, #15]
	.loc 1 2738 7
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #63
	bls	.L216
	.loc 1 2738 29 discriminator 2
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #126
	bls	.L217
.L216:
	.loc 1 2738 65 discriminator 3
	ldrsb	r3, [sp, #15]
	.loc 1 2738 8 discriminator 3
	cmp	r3, #0
	bge	.L218
	.loc 1 2738 73 discriminator 6
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #252
	bhi	.L218
.L217:
	.loc 1 2738 107 discriminator 8
	ldr	r3, [sp, #32]
	subs	r3, r3, #1
	.loc 1 2738 96 discriminator 8
	ldr	r2, [sp, #24]
	cmp	r2, r3
	bcc	.L219
.L218:
	.loc 1 2738 119 discriminator 9
	movs	r3, #6
	b	.L211
.L219:
	.loc 1 2739 9
	ldr	r3, [sp, #24]
	adds	r2, r3, #1
	str	r2, [sp, #24]
	.loc 1 2739 7
	ldr	r2, [sp, #16]
	add	r3, r3, r2
	.loc 1 2739 13
	ldrb	r2, [sp, #39]
	strb	r2, [r3]
	.loc 1 2740 9
	ldr	r3, [sp, #24]
	adds	r2, r3, #1
	str	r2, [sp, #24]
	.loc 1 2740 7
	ldr	r2, [sp, #16]
	add	r3, r3, r2
	.loc 1 2740 13
	ldrb	r2, [sp, #15]
	strb	r2, [r3]
	b	.L212
.L215:
	.loc 1 2742 8
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, .L228
	bl	chk_chr
	mov	r3, r0
	.loc 1 2742 7
	cmp	r3, #0
	beq	.L220
	.loc 1 2742 50 discriminator 1
	movs	r3, #6
	b	.L211
.L220:
	.loc 1 2743 7
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L221
	.loc 1 2743 19 discriminator 1
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	cmp	r3, #122
	bhi	.L221
	.loc 1 2743 36 discriminator 2
	ldrb	r3, [sp, #39]
	subs	r3, r3, #32
	strb	r3, [sp, #39]
.L221:
	.loc 1 2744 9
	ldr	r3, [sp, #24]
	adds	r2, r3, #1
	str	r2, [sp, #24]
	.loc 1 2744 7
	ldr	r2, [sp, #16]
	add	r3, r3, r2
	.loc 1 2744 13
	ldrb	r2, [sp, #39]
	strb	r2, [r3]
.L212:
	.loc 1 2716 5
	b	.L222
.L227:
	.loc 1 2717 3
	nop
.L202:
	.loc 1 2747 12
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #28]
	add	r2, r2, r3
	.loc 1 2747 8
	ldr	r3, [sp]
	str	r2, [r3]
	.loc 1 2748 5
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L223
	.loc 1 2748 21 discriminator 1
	movs	r3, #6
	b	.L211
.L223:
	.loc 1 2750 9
	ldr	r3, [sp, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2750 5
	cmp	r3, #229
	bne	.L224
	.loc 1 2750 29 discriminator 1
	ldr	r3, [sp, #16]
	movs	r2, #5
	strb	r2, [r3]
.L224:
	.loc 1 2751 10
	ldrb	r3, [sp, #39]	@ zero_extendqisi2
	cmp	r3, #32
	bhi	.L225
	.loc 1 2751 10 is_stmt 0 discriminator 1
	movs	r2, #4
	b	.L226
.L225:
	.loc 1 2751 10 discriminator 2
	movs	r2, #0
.L226:
	.loc 1 2751 5 is_stmt 1 discriminator 4
	ldr	r3, [sp, #16]
	adds	r3, r3, #11
	.loc 1 2751 10 discriminator 4
	strb	r2, [r3]
	.loc 1 2753 9 discriminator 4
	movs	r3, #0
.L211:
	.loc 1 2755 1
	mov	r0, r3
	add	sp, sp, #44
.LCFI71:
	@ sp needed
	ldr	pc, [sp], #4
.L229:
	.align	2
.L228:
	.word	.LC0
.LFE26:
	.size	create_name, .-create_name
	.section	.text.follow_path,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	follow_path, %function
follow_path:
.LFB27:
	.loc 1 2769 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI72:
	sub	sp, sp, #28
.LCFI73:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 2772 9
	ldr	r3, [sp, #4]
	str	r3, [sp, #16]
	.loc 1 2773 9
	ldr	r3, [sp, #16]
	ldr	r3, [r3]
	str	r3, [sp, #12]
	.loc 1 2782 9
	b	.L231
.L232:
	.loc 1 2782 45 discriminator 4
	ldr	r3, [sp]
	adds	r3, r3, #1
	str	r3, [sp]
.L231:
	.loc 1 2782 10 discriminator 1
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2782 9 discriminator 1
	cmp	r3, #47
	beq	.L232
	.loc 1 2782 26 discriminator 3
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2782 23 discriminator 3
	cmp	r3, #92
	beq	.L232
	.loc 1 2783 15
	ldr	r3, [sp, #16]
	movs	r2, #0
	str	r2, [r3, #8]
	.loc 1 2799 12
	ldr	r3, [sp]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2799 5
	cmp	r3, #31
	bhi	.L233
	.loc 1 2800 14
	ldr	r3, [sp, #4]
	movs	r2, #128
	strb	r2, [r3, #43]
	.loc 1 2801 9
	movs	r1, #0
	ldr	r0, [sp, #4]
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [sp, #23]
	b	.L234
.L233:
	.loc 1 2805 10
	mov	r3, sp
	mov	r1, r3
	ldr	r0, [sp, #4]
	bl	create_name
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 2806 7
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L241
	.loc 1 2807 10
	ldr	r0, [sp, #4]
	bl	dir_find
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 2808 7
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #43]
	strb	r3, [sp, #11]
	.loc 1 2809 7
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L236
	.loc 1 2810 8
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L242
	.loc 1 2816 16
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	and	r3, r3, #4
	.loc 1 2816 10
	cmp	r3, #0
	bne	.L242
	.loc 1 2816 29 discriminator 1
	movs	r3, #5
	strb	r3, [sp, #23]
	.loc 1 2819 5 discriminator 1
	b	.L242
.L236:
	.loc 1 2821 11
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	and	r3, r3, #4
	.loc 1 2821 7
	cmp	r3, #0
	bne	.L243
	.loc 1 2823 13
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	.loc 1 2823 20
	and	r3, r3, #16
	.loc 1 2823 7
	cmp	r3, #0
	bne	.L239
	.loc 1 2824 9
	movs	r3, #5
	strb	r3, [sp, #23]
	.loc 1 2824 5
	b	.L234
.L239:
	.loc 1 2837 32
	ldr	r3, [sp, #12]
	add	r2, r3, #48
	.loc 1 2837 44
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #16]
	.loc 1 2837 51
	ubfx	r3, r3, #0, #9
	.loc 1 2837 19
	add	r3, r3, r2
	mov	r1, r3
	ldr	r0, [sp, #12]
	bl	ld_clust
	mov	r2, r0
	.loc 1 2837 17
	ldr	r3, [sp, #16]
	str	r2, [r3, #8]
	.loc 1 2805 8
	b	.L233
.L241:
	.loc 1 2806 4
	nop
	b	.L234
.L242:
	.loc 1 2819 5
	nop
	b	.L234
.L243:
	.loc 1 2821 4
	nop
.L234:
	.loc 1 2842 9
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	.loc 1 2843 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI74:
	@ sp needed
	ldr	pc, [sp], #4
.LFE27:
	.size	follow_path, .-follow_path
	.section	.text.get_ldnumber,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	get_ldnumber, %function
get_ldnumber:
.LFB28:
	.loc 1 2856 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #24
.LCFI75:
	str	r0, [sp, #4]
	.loc 1 2859 6
	mov	r3, #-1
	str	r3, [sp, #16]
	.loc 1 2868 6
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 2868 5
	cmp	r3, #0
	beq	.L245
	.loc 1 2869 11
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #20]
	.loc 1 2869 3
	b	.L246
.L248:
	.loc 1 2869 66 discriminator 4
	ldr	r3, [sp, #20]
	adds	r3, r3, #1
	str	r3, [sp, #20]
.L246:
	.loc 1 2869 26 discriminator 1
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2869 3 discriminator 1
	cmp	r3, #32
	bls	.L247
	.loc 1 2869 52 discriminator 3
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2869 49 discriminator 3
	cmp	r3, #58
	bne	.L248
.L247:
	.loc 1 2870 7
	ldr	r3, [sp, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2870 6
	cmp	r3, #58
	bne	.L249
	.loc 1 2871 7
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	str	r3, [sp, #12]
	.loc 1 2872 11
	ldr	r3, [sp, #12]
	adds	r2, r3, #1
	str	r2, [sp, #12]
	.loc 1 2872 8
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2872 14
	subs	r3, r3, #48
	.loc 1 2872 6
	str	r3, [sp, #8]
	.loc 1 2873 7
	ldr	r3, [sp, #8]
	cmp	r3, #9
	bhi	.L250
	.loc 1 2873 15 discriminator 1
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #20]
	cmp	r2, r3
	bne	.L250
	.loc 1 2874 8
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L250
	.loc 1 2875 10
	ldr	r3, [sp, #8]
	str	r3, [sp, #16]
	.loc 1 2876 12
	ldr	r3, [sp, #20]
	adds	r3, r3, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #20]
	str	r2, [r3]
.L250:
	.loc 1 2895 11
	ldr	r3, [sp, #16]
	b	.L251
.L249:
	.loc 1 2900 7
	movs	r3, #0
	str	r3, [sp, #16]
.L245:
	.loc 1 2903 9
	ldr	r3, [sp, #16]
.L251:
	.loc 1 2904 1
	mov	r0, r3
	add	sp, sp, #24
.LCFI76:
	@ sp needed
	bx	lr
.LFE28:
	.size	get_ldnumber, .-get_ldnumber
	.section	.text.check_fs,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	check_fs, %function
check_fs:
.LFB29:
	.loc 1 2918 1
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI77:
	sub	sp, sp, #12
.LCFI78:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 2919 12
	ldr	r3, [sp, #4]
	movs	r2, #0
	strb	r2, [r3, #3]
	.loc 1 2919 29
	ldr	r3, [sp, #4]
	mov	r2, #-1
	str	r2, [r3, #44]
	.loc 1 2920 6
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	move_window
	mov	r3, r0
	.loc 1 2920 5
	cmp	r3, #0
	beq	.L253
	.loc 1 2920 45 discriminator 1
	movs	r3, #4
	b	.L254
.L253:
	.loc 1 2922 14
	ldr	r3, [sp, #4]
	adds	r3, r3, #48
	.loc 1 2922 6
	add	r3, r3, #510
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	mov	r2, r3
	.loc 1 2922 5
	movw	r3, #43605
	cmp	r2, r3
	beq	.L255
	.loc 1 2922 47 discriminator 1
	movs	r3, #3
	b	.L254
.L255:
	.loc 1 2924 13
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 2924 5
	cmp	r3, #233
	beq	.L256
	.loc 1 2924 36 discriminator 1
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #48]	@ zero_extendqisi2
	.loc 1 2924 25 discriminator 1
	cmp	r3, #235
	bne	.L257
	.loc 1 2924 58 discriminator 2
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #50]	@ zero_extendqisi2
	.loc 1 2924 48 discriminator 2
	cmp	r3, #144
	bne	.L257
.L256:
	.loc 1 2925 17
	ldr	r3, [sp, #4]
	adds	r3, r3, #48
	.loc 1 2925 8
	adds	r3, r3, #54
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	.loc 1 2925 31
	bic	r3, r3, #-16777216
	.loc 1 2925 6
	ldr	r2, .L259
	cmp	r3, r2
	bne	.L258
	.loc 1 2925 63 discriminator 1
	movs	r3, #0
	b	.L254
.L258:
	.loc 1 2926 16
	ldr	r3, [sp, #4]
	adds	r3, r3, #48
	.loc 1 2926 7
	adds	r3, r3, #82
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	.loc 1 2926 6
	ldr	r2, .L259+4
	cmp	r3, r2
	bne	.L257
	.loc 1 2926 52 discriminator 1
	movs	r3, #0
	b	.L254
.L257:
	.loc 1 2931 9
	movs	r3, #2
.L254:
	.loc 1 2932 1
	mov	r0, r3
	add	sp, sp, #12
.LCFI79:
	@ sp needed
	ldr	pc, [sp], #4
.L260:
	.align	2
.L259:
	.word	5521734
	.word	861159750
.LFE29:
	.size	check_fs, .-check_fs
	.section	.text.find_volume,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	find_volume, %function
find_volume:
.LFB30:
	.loc 1 2947 1
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI80:
	sub	sp, sp, #92
.LCFI81:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r3, r2
	strb	r3, [sp, #7]
	.loc 1 2958 7
	ldr	r3, [sp, #8]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 2959 8
	ldr	r0, [sp, #12]
	bl	get_ldnumber
	str	r0, [sp, #60]
	.loc 1 2960 5
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bge	.L262
	.loc 1 2960 22 discriminator 1
	movs	r3, #11
	b	.L301
.L262:
	.loc 1 2963 5
	ldr	r2, .L302
	ldr	r3, [sp, #60]
	ldr	r3, [r2, r3, lsl #2]
	str	r3, [sp, #56]
	.loc 1 2964 5
	ldr	r3, [sp, #56]
	cmp	r3, #0
	bne	.L264
	.loc 1 2964 18 discriminator 1
	movs	r3, #12
	b	.L301
.L264:
	.loc 1 2967 7
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #56]
	str	r2, [r3]
	.loc 1 2969 7
	ldrb	r3, [sp, #7]
	bic	r3, r3, #1
	strb	r3, [sp, #7]
	.loc 1 2970 8
	ldr	r3, [sp, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 2970 5
	cmp	r3, #0
	beq	.L265
	.loc 1 2971 10
	ldr	r3, [sp, #56]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	disk_status
	mov	r3, r0
	strb	r3, [sp, #55]
	.loc 1 2972 14
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	and	r3, r3, #1
	.loc 1 2972 6
	cmp	r3, #0
	bne	.L265
	.loc 1 2973 7
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L266
	.loc 1 2973 28 discriminator 1
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	and	r3, r3, #4
	.loc 1 2973 19 discriminator 1
	cmp	r3, #0
	beq	.L266
	.loc 1 2974 12
	movs	r3, #10
	b	.L301
.L266:
	.loc 1 2976 11
	movs	r3, #0
	b	.L301
.L265:
	.loc 1 2983 14
	ldr	r3, [sp, #56]
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 2984 12
	ldr	r3, [sp, #60]
	uxtb	r2, r3
	.loc 1 2984 10
	ldr	r3, [sp, #56]
	strb	r2, [r3, #1]
	.loc 1 2985 9
	ldr	r3, [sp, #56]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	disk_initialize
	mov	r3, r0
	strb	r3, [sp, #55]
	.loc 1 2986 11
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	and	r3, r3, #1
	.loc 1 2986 5
	cmp	r3, #0
	beq	.L267
	.loc 1 2987 10
	movs	r3, #3
	b	.L301
.L267:
	.loc 1 2989 5
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L268
	.loc 1 2989 26 discriminator 1
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	and	r3, r3, #4
	.loc 1 2989 17 discriminator 1
	cmp	r3, #0
	beq	.L268
	.loc 1 2990 10
	movs	r3, #10
	b	.L301
.L268:
	.loc 1 2997 8
	movs	r3, #0
	str	r3, [sp, #80]
	.loc 1 2998 8
	ldr	r1, [sp, #80]
	ldr	r0, [sp, #56]
	bl	check_fs
	mov	r3, r0
	strb	r3, [sp, #87]
	.loc 1 2999 5
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L269
	.loc 1 3000 10
	movs	r3, #0
	str	r3, [sp, #64]
	.loc 1 3000 3
	b	.L270
.L273:
	.loc 1 3001 9
	ldr	r3, [sp, #56]
	add	r2, r3, #48
	.loc 1 3001 28
	ldr	r3, [sp, #64]
	lsls	r3, r3, #4
	.loc 1 3001 24
	add	r3, r3, #446
	.loc 1 3001 7
	add	r3, r3, r2
	str	r3, [sp, #48]
	.loc 1 3002 14
	ldr	r3, [sp, #48]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3002 37
	cmp	r3, #0
	beq	.L271
	.loc 1 3002 32 discriminator 1
	ldr	r3, [sp, #48]
	adds	r3, r3, #8
	.loc 1 3002 20 discriminator 1
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	b	.L272
.L271:
	.loc 1 3002 37 discriminator 2
	movs	r2, #0
.L272:
	.loc 1 3002 10 discriminator 4
	ldr	r3, [sp, #64]
	lsls	r3, r3, #2
	add	r1, sp, #88
	add	r3, r3, r1
	str	r2, [r3, #-68]
	.loc 1 3000 23 discriminator 4
	ldr	r3, [sp, #64]
	adds	r3, r3, #1
	str	r3, [sp, #64]
.L270:
	.loc 1 3000 3 discriminator 2
	ldr	r3, [sp, #64]
	cmp	r3, #3
	bls	.L273
	.loc 1 3004 5
	movs	r3, #0
	str	r3, [sp, #64]
	.loc 1 3005 6
	ldr	r3, [sp, #64]
	cmp	r3, #0
	beq	.L277
	.loc 1 3005 11 discriminator 1
	ldr	r3, [sp, #64]
	subs	r3, r3, #1
	str	r3, [sp, #64]
.L277:
	.loc 1 3007 10
	ldr	r3, [sp, #64]
	lsls	r3, r3, #2
	add	r2, sp, #88
	add	r3, r3, r2
	ldr	r3, [r3, #-68]
	str	r3, [sp, #80]
	.loc 1 3008 8
	ldr	r3, [sp, #80]
	cmp	r3, #0
	beq	.L275
	.loc 1 3008 18 discriminator 1
	ldr	r1, [sp, #80]
	ldr	r0, [sp, #56]
	bl	check_fs
	mov	r3, r0
	b	.L276
.L275:
	.loc 1 3008 8 discriminator 2
	movs	r3, #3
.L276:
	.loc 1 3008 8 is_stmt 0 discriminator 4
	strb	r3, [sp, #87]
	.loc 1 3009 3 is_stmt 1 discriminator 4
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L269
	.loc 1 3009 27 discriminator 1
	ldr	r3, [sp, #64]
	adds	r3, r3, #1
	str	r3, [sp, #64]
	ldr	r3, [sp, #64]
	cmp	r3, #3
	bls	.L277
.L269:
	.loc 1 3011 5
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L278
	.loc 1 3011 23 discriminator 1
	movs	r3, #1
	b	.L301
.L278:
	.loc 1 3012 5
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #1
	bls	.L279
	.loc 1 3012 23 discriminator 1
	movs	r3, #13
	b	.L301
.L279:
	.loc 1 3063 15
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3063 7
	adds	r3, r3, #11
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3063 6
	cmp	r3, #512
	beq	.L280
	.loc 1 3063 52 discriminator 1
	movs	r3, #13
	b	.L301
.L280:
	.loc 1 3065 20
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3065 12
	adds	r3, r3, #22
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3065 10
	str	r3, [sp, #76]
	.loc 1 3066 6
	ldr	r3, [sp, #76]
	cmp	r3, #0
	bne	.L281
	.loc 1 3066 38 discriminator 1
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3066 29 discriminator 1
	adds	r3, r3, #36
	mov	r0, r3
	bl	ld_dword
	str	r0, [sp, #76]
.L281:
	.loc 1 3067 13
	ldr	r3, [sp, #56]
	ldr	r2, [sp, #76]
	str	r2, [r3, #24]
	.loc 1 3069 23
	ldr	r3, [sp, #56]
	ldrb	r2, [r3, #64]	@ zero_extendqisi2
	.loc 1 3069 14
	ldr	r3, [sp, #56]
	strb	r2, [r3, #2]
	.loc 1 3070 9
	ldr	r3, [sp, #56]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	.loc 1 3070 6
	cmp	r3, #1
	beq	.L282
	.loc 1 3070 28 discriminator 1
	ldr	r3, [sp, #56]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	.loc 1 3070 23 discriminator 1
	cmp	r3, #2
	beq	.L282
	.loc 1 3070 50 discriminator 2
	movs	r3, #13
	b	.L301
.L282:
	.loc 1 3071 15
	ldr	r3, [sp, #56]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	.loc 1 3071 10
	ldr	r3, [sp, #76]
	mul	r3, r2, r3
	str	r3, [sp, #76]
	.loc 1 3073 22
	ldr	r3, [sp, #56]
	ldrb	r3, [r3, #61]	@ zero_extendqisi2
	uxth	r2, r3
	.loc 1 3073 13
	ldr	r3, [sp, #56]
	strh	r2, [r3, #10]	@ movhi
	.loc 1 3074 9
	ldr	r3, [sp, #56]
	ldrh	r3, [r3, #10]
	.loc 1 3074 6
	cmp	r3, #0
	beq	.L283
	.loc 1 3074 28 discriminator 2
	ldr	r3, [sp, #56]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	.loc 1 3074 41 discriminator 2
	ldr	r3, [sp, #56]
	ldrh	r3, [r3, #10]
	.loc 1 3074 49 discriminator 2
	subs	r3, r3, #1
	.loc 1 3074 36 discriminator 2
	ands	r3, r3, r2
	.loc 1 3074 22 discriminator 2
	cmp	r3, #0
	beq	.L284
.L283:
	.loc 1 3074 63 discriminator 3
	movs	r3, #13
	b	.L301
.L284:
	.loc 1 3076 27
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3076 19
	adds	r3, r3, #17
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	mov	r2, r3
	.loc 1 3076 17
	ldr	r3, [sp, #56]
	strh	r2, [r3, #8]	@ movhi
	.loc 1 3077 9
	ldr	r3, [sp, #56]
	ldrh	r3, [r3, #8]
	.loc 1 3077 7
	and	r3, r3, #15
	uxth	r3, r3
	.loc 1 3077 6
	cmp	r3, #0
	beq	.L285
	.loc 1 3077 50 discriminator 1
	movs	r3, #13
	b	.L301
.L285:
	.loc 1 3079 19
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3079 11
	adds	r3, r3, #19
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3079 9
	str	r3, [sp, #72]
	.loc 1 3080 6
	ldr	r3, [sp, #72]
	cmp	r3, #0
	bne	.L286
	.loc 1 3080 36 discriminator 1
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3080 27 discriminator 1
	adds	r3, r3, #32
	mov	r0, r3
	bl	ld_dword
	str	r0, [sp, #72]
.L286:
	.loc 1 3082 18
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3082 10
	adds	r3, r3, #14
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	strh	r3, [sp, #46]	@ movhi
	.loc 1 3083 6
	ldrh	r3, [sp, #46]
	cmp	r3, #0
	bne	.L287
	.loc 1 3083 25 discriminator 1
	movs	r3, #13
	b	.L301
.L287:
	.loc 1 3086 17
	ldrh	r2, [sp, #46]
	ldr	r3, [sp, #76]
	add	r3, r3, r2
	.loc 1 3086 30
	ldr	r2, [sp, #56]
	ldrh	r2, [r2, #8]
	.loc 1 3086 42
	lsrs	r2, r2, #4
	uxth	r2, r2
	.loc 1 3086 10
	add	r3, r3, r2
	str	r3, [sp, #40]
	.loc 1 3087 6
	ldr	r2, [sp, #72]
	ldr	r3, [sp, #40]
	cmp	r2, r3
	bcs	.L288
	.loc 1 3087 30 discriminator 1
	movs	r3, #13
	b	.L301
.L288:
	.loc 1 3088 18
	ldr	r2, [sp, #72]
	ldr	r3, [sp, #40]
	subs	r3, r2, r3
	.loc 1 3088 32
	ldr	r2, [sp, #56]
	ldrh	r2, [r2, #10]
	.loc 1 3088 9
	udiv	r3, r3, r2
	str	r3, [sp, #36]
	.loc 1 3089 6
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L289
	.loc 1 3089 26 discriminator 1
	movs	r3, #13
	b	.L301
.L303:
	.align	2
.L302:
	.word	FatFs
.L289:
	.loc 1 3090 7
	movs	r3, #3
	strb	r3, [sp, #87]
	.loc 1 3091 6
	ldr	r3, [sp, #36]
	movw	r2, #65525
	cmp	r3, r2
	bhi	.L290
	.loc 1 3091 28 discriminator 1
	movs	r3, #2
	strb	r3, [sp, #87]
.L290:
	.loc 1 3092 6
	ldr	r3, [sp, #36]
	movw	r2, #4085
	cmp	r3, r2
	bhi	.L291
	.loc 1 3092 27 discriminator 1
	movs	r3, #1
	strb	r3, [sp, #87]
.L291:
	.loc 1 3095 24
	ldr	r3, [sp, #36]
	adds	r2, r3, #2
	.loc 1 3095 16
	ldr	r3, [sp, #56]
	str	r2, [r3, #20]
	.loc 1 3096 15
	ldr	r3, [sp, #56]
	ldr	r2, [sp, #80]
	str	r2, [r3, #28]
	.loc 1 3097 23
	ldrh	r2, [sp, #46]
	ldr	r3, [sp, #80]
	add	r2, r2, r3
	.loc 1 3097 15
	ldr	r3, [sp, #56]
	str	r2, [r3, #32]
	.loc 1 3098 24
	ldr	r2, [sp, #80]
	ldr	r3, [sp, #40]
	add	r2, r2, r3
	.loc 1 3098 16
	ldr	r3, [sp, #56]
	str	r2, [r3, #40]
	.loc 1 3099 6
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L292
	.loc 1 3100 16
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3100 8
	adds	r3, r3, #42
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3100 7
	cmp	r3, #0
	beq	.L293
	.loc 1 3100 43 discriminator 1
	movs	r3, #13
	b	.L301
.L293:
	.loc 1 3101 10
	ldr	r3, [sp, #56]
	ldrh	r3, [r3, #8]
	.loc 1 3101 7
	cmp	r3, #0
	beq	.L294
	.loc 1 3101 30 discriminator 1
	movs	r3, #13
	b	.L301
.L294:
	.loc 1 3102 27
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3102 18
	adds	r3, r3, #44
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 3102 16
	ldr	r3, [sp, #56]
	str	r2, [r3, #36]
	.loc 1 3103 15
	ldr	r3, [sp, #56]
	ldr	r3, [r3, #20]
	.loc 1 3103 11
	lsls	r3, r3, #2
	str	r3, [sp, #68]
	b	.L295
.L292:
	.loc 1 3105 10
	ldr	r3, [sp, #56]
	ldrh	r3, [r3, #8]
	.loc 1 3105 7
	cmp	r3, #0
	bne	.L296
	.loc 1 3105 35 discriminator 1
	movs	r3, #13
	b	.L301
.L296:
	.loc 1 3106 20
	ldr	r3, [sp, #56]
	ldr	r2, [r3, #32]
	.loc 1 3106 30
	ldr	r3, [sp, #76]
	add	r2, r2, r3
	.loc 1 3106 16
	ldr	r3, [sp, #56]
	str	r2, [r3, #36]
	.loc 1 3108 22
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L297
	.loc 1 3108 7 discriminator 1
	ldr	r3, [sp, #56]
	ldr	r3, [r3, #20]
	.loc 1 3108 22 discriminator 1
	lsls	r3, r3, #1
	b	.L298
.L297:
	.loc 1 3108 26 discriminator 2
	ldr	r3, [sp, #56]
	ldr	r2, [r3, #20]
	.loc 1 3108 37 discriminator 2
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	.loc 1 3108 41 discriminator 2
	lsrs	r2, r3, #1
	.loc 1 3108 50 discriminator 2
	ldr	r3, [sp, #56]
	ldr	r3, [r3, #20]
	.loc 1 3108 61 discriminator 2
	and	r3, r3, #1
	.loc 1 3108 22 discriminator 2
	add	r3, r3, r2
.L298:
	.loc 1 3107 11
	str	r3, [sp, #68]
.L295:
	.loc 1 3110 9
	ldr	r3, [sp, #56]
	ldr	r2, [r3, #24]
	.loc 1 3110 27
	ldr	r3, [sp, #68]
	addw	r3, r3, #511
	.loc 1 3110 48
	lsrs	r3, r3, #9
	.loc 1 3110 6
	cmp	r2, r3
	bcs	.L299
	.loc 1 3110 70 discriminator 1
	movs	r3, #13
	b	.L301
.L299:
	.loc 1 3114 33
	ldr	r3, [sp, #56]
	mov	r2, #-1
	str	r2, [r3, #16]
	.loc 1 3114 21
	ldr	r3, [sp, #56]
	ldr	r2, [r3, #16]
	.loc 1 3114 17
	ldr	r3, [sp, #56]
	str	r2, [r3, #12]
	.loc 1 3115 16
	ldr	r3, [sp, #56]
	movs	r2, #128
	strb	r2, [r3, #4]
	.loc 1 3117 6
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L300
	.loc 1 3118 15
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3118 7
	adds	r3, r3, #48
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	.loc 1 3118 4
	cmp	r3, #1
	bne	.L300
	.loc 1 3119 7
	ldr	r3, [sp, #80]
	adds	r3, r3, #1
	mov	r1, r3
	ldr	r0, [sp, #56]
	bl	move_window
	mov	r3, r0
	.loc 1 3119 4
	cmp	r3, #0
	bne	.L300
	.loc 1 3121 17
	ldr	r3, [sp, #56]
	movs	r2, #0
	strb	r2, [r3, #4]
	.loc 1 3122 16
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3122 8
	add	r3, r3, #510
	mov	r0, r3
	bl	ld_word
	mov	r3, r0
	mov	r2, r3
	.loc 1 3122 7
	movw	r3, #43605
	cmp	r2, r3
	bne	.L300
	.loc 1 3123 17
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3123 8
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	.loc 1 3123 5
	ldr	r2, .L304
	cmp	r3, r2
	bne	.L300
	.loc 1 3124 17
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3124 8
	add	r3, r3, #484
	mov	r0, r3
	bl	ld_dword
	mov	r3, r0
	.loc 1 3124 5
	ldr	r2, .L304+4
	cmp	r3, r2
	bne	.L300
	.loc 1 3127 30
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3127 21
	add	r3, r3, #488
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 3127 19
	ldr	r3, [sp, #56]
	str	r2, [r3, #16]
	.loc 1 3130 30
	ldr	r3, [sp, #56]
	adds	r3, r3, #48
	.loc 1 3130 21
	add	r3, r3, #492
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 3130 19
	ldr	r3, [sp, #56]
	str	r2, [r3, #12]
.L300:
	.loc 1 3138 14
	ldr	r3, [sp, #56]
	ldrb	r2, [sp, #87]
	strb	r2, [r3]
	.loc 1 3139 11
	ldr	r3, .L304+8
	ldrh	r3, [r3]
	adds	r3, r3, #1
	uxth	r2, r3
	.loc 1 3139 9
	ldr	r3, .L304+8
	strh	r2, [r3]	@ movhi
	ldr	r3, .L304+8
	ldrh	r2, [r3]
	ldr	r3, [sp, #56]
	strh	r2, [r3, #6]	@ movhi
	.loc 1 3152 9
	movs	r3, #0
.L301:
	.loc 1 3153 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #92
.LCFI82:
	@ sp needed
	ldr	pc, [sp], #4
.L305:
	.align	2
.L304:
	.word	1096897106
	.word	1631679090
	.word	Fsid
.LFE30:
	.size	find_volume, .-find_volume
	.section	.text.validate,"ax",%progbits
	.align	1
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	validate, %function
validate:
.LFB31:
	.loc 1 3167 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI83:
	sub	sp, sp, #20
.LCFI84:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 3171 5
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L307
	.loc 1 3171 18 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 3171 11 discriminator 1
	cmp	r3, #0
	beq	.L307
	.loc 1 3171 30 discriminator 2
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 3171 34 discriminator 2
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 3171 23 discriminator 2
	cmp	r3, #0
	beq	.L307
	.loc 1 3171 50 discriminator 3
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 3171 54 discriminator 3
	ldrh	r2, [r3, #6]
	.loc 1 3171 65 discriminator 3
	ldr	r3, [sp, #4]
	ldrh	r3, [r3, #4]
	.loc 1 3171 44 discriminator 3
	cmp	r2, r3
	bne	.L307
	.loc 1 3171 89 discriminator 4
	ldr	r3, [sp, #4]
	ldr	r3, [r3]
	.loc 1 3171 74 discriminator 4
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	mov	r0, r3
	bl	disk_status
	mov	r3, r0
	.loc 1 3171 100 discriminator 4
	and	r3, r3, #1
	.loc 1 3171 70 discriminator 4
	cmp	r3, #0
	beq	.L308
.L307:
	.loc 1 3172 7
	ldr	r3, [sp]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 3173 7
	movs	r3, #9
	strb	r3, [sp, #15]
	b	.L309
.L308:
	.loc 1 3175 12
	ldr	r3, [sp, #4]
	ldr	r2, [r3]
	.loc 1 3175 7
	ldr	r3, [sp]
	str	r2, [r3]
	.loc 1 3177 7
	movs	r3, #0
	strb	r3, [sp, #15]
.L309:
	.loc 1 3179 9
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 3180 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI85:
	@ sp needed
	ldr	pc, [sp], #4
.LFE31:
	.size	validate, .-validate
	.section	.text.f_mount,"ax",%progbits
	.align	1
	.global	f_mount
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_mount, %function
f_mount:
.LFB32:
	.loc 1 3202 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI86:
	sub	sp, sp, #36
.LCFI87:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r3, r2
	strb	r3, [sp, #7]
	.loc 1 3206 15
	ldr	r3, [sp, #8]
	str	r3, [sp, #16]
	.loc 1 3210 8
	add	r3, sp, #16
	mov	r0, r3
	bl	get_ldnumber
	str	r0, [sp, #28]
	.loc 1 3211 5
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bge	.L312
	.loc 1 3211 22 discriminator 1
	movs	r3, #11
	b	.L318
.L312:
	.loc 1 3212 6
	ldr	r2, .L319
	ldr	r3, [sp, #28]
	ldr	r3, [r2, r3, lsl #2]
	str	r3, [sp, #24]
	.loc 1 3214 5
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L314
	.loc 1 3221 16
	ldr	r3, [sp, #24]
	movs	r2, #0
	strb	r2, [r3]
.L314:
	.loc 1 3224 6
	ldr	r3, [sp, #12]
	.loc 1 3224 5
	cmp	r3, #0
	beq	.L315
	.loc 1 3225 5
	ldr	r3, [sp, #12]
	.loc 1 3225 15
	movs	r2, #0
	strb	r2, [r3]
.L315:
	.loc 1 3230 13
	ldr	r2, [sp, #12]
	ldr	r1, .L319
	ldr	r3, [sp, #28]
	str	r2, [r1, r3, lsl #2]
	.loc 1 3232 6
	ldr	r3, [sp, #12]
	.loc 1 3232 5
	cmp	r3, #0
	beq	.L316
	.loc 1 3232 10 discriminator 2
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L317
.L316:
	.loc 1 3232 30 discriminator 3
	movs	r3, #0
	b	.L318
.L317:
	.loc 1 3234 8
	add	r1, sp, #12
	add	r3, sp, #8
	movs	r2, #0
	mov	r0, r3
	bl	find_volume
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 3235 9
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
.L318:
	.loc 1 3236 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI88:
	@ sp needed
	ldr	pc, [sp], #4
.L320:
	.align	2
.L319:
	.word	FatFs
.LFE32:
	.size	f_mount, .-f_mount
	.section	.text.f_open,"ax",%progbits
	.align	1
	.global	f_open
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_open, %function
f_open:
.LFB33:
	.loc 1 3250 1
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI89:
	sub	sp, sp, #100
.LCFI90:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	mov	r3, r2
	strb	r3, [sp, #7]
	.loc 1 3261 5
	ldr	r3, [sp, #12]
	cmp	r3, #0
	bne	.L322
	.loc 1 3261 18 discriminator 1
	movs	r3, #9
	b	.L342
.L322:
	.loc 1 3264 7
	ldrb	r3, [sp, #7]
	and	r3, r3, #63
	strb	r3, [sp, #7]
	.loc 1 3265 8
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	add	r1, sp, #20
	add	r3, sp, #8
	mov	r0, r3
	bl	find_volume
	mov	r3, r0
	strb	r3, [sp, #95]
	.loc 1 3266 5
	ldrb	r3, [sp, #95]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L324
	.loc 1 3267 13
	ldr	r3, [sp, #20]
	str	r3, [sp, #24]
	.loc 1 3269 9
	ldr	r2, [sp, #8]
	add	r3, sp, #24
	mov	r1, r2
	mov	r0, r3
	bl	follow_path
	mov	r3, r0
	strb	r3, [sp, #95]
	.loc 1 3271 6
	ldrb	r3, [sp, #95]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L325
	.loc 1 3272 13
	ldrb	r3, [sp, #67]	@ zero_extendqisi2
	.loc 1 3272 8
	sxtb	r3, r3
	.loc 1 3272 7
	cmp	r3, #0
	bge	.L325
	.loc 1 3273 9
	movs	r3, #6
	strb	r3, [sp, #95]
.L325:
	.loc 1 3282 12
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r3, r3, #28
	.loc 1 3282 6
	cmp	r3, #0
	beq	.L326
	.loc 1 3283 7
	ldrb	r3, [sp, #95]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L327
	.loc 1 3284 8
	ldrb	r3, [sp, #95]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L328
	.loc 1 3288 12
	add	r3, sp, #24
	mov	r0, r3
	bl	dir_register
	mov	r3, r0
	strb	r3, [sp, #95]
.L328:
	.loc 1 3290 10
	ldrb	r3, [sp, #7]
	orr	r3, r3, #8
	strb	r3, [sp, #7]
	b	.L329
.L327:
	.loc 1 3293 15
	ldrb	r3, [sp, #30]	@ zero_extendqisi2
	.loc 1 3293 21
	and	r3, r3, #17
	.loc 1 3293 8
	cmp	r3, #0
	beq	.L330
	.loc 1 3294 10
	movs	r3, #7
	strb	r3, [sp, #95]
	b	.L329
.L330:
	.loc 1 3296 15
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r3, r3, #4
	.loc 1 3296 9
	cmp	r3, #0
	beq	.L329
	.loc 1 3296 27 discriminator 1
	movs	r3, #8
	strb	r3, [sp, #95]
.L329:
	.loc 1 3299 7
	ldrb	r3, [sp, #95]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L331
	.loc 1 3299 30 discriminator 1
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r3, r3, #8
	.loc 1 3299 21 discriminator 1
	cmp	r3, #0
	beq	.L331
	.loc 1 3300 8
	ldr	r3, .L343
	str	r3, [sp, #80]
	.loc 1 3327 17
	ldr	r3, [sp, #52]
	.loc 1 3327 6
	adds	r3, r3, #14
	ldr	r1, [sp, #80]
	mov	r0, r3
	bl	st_dword
	.loc 1 3328 17
	ldr	r3, [sp, #52]
	.loc 1 3328 6
	adds	r3, r3, #22
	ldr	r1, [sp, #80]
	mov	r0, r3
	bl	st_dword
	.loc 1 3329 8
	ldr	r3, [sp, #52]
	.loc 1 3329 12
	adds	r3, r3, #11
	.loc 1 3329 17
	movs	r2, #32
	strb	r2, [r3]
	.loc 1 3330 11
	ldr	r3, [sp, #20]
	.loc 1 3330 26
	ldr	r2, [sp, #52]
	.loc 1 3330 11
	mov	r1, r2
	mov	r0, r3
	bl	ld_clust
	str	r0, [sp, #76]
	.loc 1 3331 6
	ldr	r3, [sp, #20]
	ldr	r1, [sp, #52]
	movs	r2, #0
	mov	r0, r3
	bl	st_clust
	.loc 1 3332 17
	ldr	r3, [sp, #52]
	.loc 1 3332 6
	adds	r3, r3, #28
	movs	r1, #0
	mov	r0, r3
	bl	st_dword
	.loc 1 3333 8
	ldr	r3, [sp, #20]
	.loc 1 3333 16
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 1 3335 9
	ldr	r3, [sp, #76]
	cmp	r3, #0
	beq	.L331
	.loc 1 3336 14
	ldr	r3, [sp, #20]
	.loc 1 3336 10
	ldr	r3, [r3, #44]
	str	r3, [sp, #80]
	.loc 1 3337 13
	add	r3, sp, #24
	movs	r2, #0
	ldr	r1, [sp, #76]
	mov	r0, r3
	bl	remove_chain
	mov	r3, r0
	strb	r3, [sp, #95]
	.loc 1 3338 10
	ldrb	r3, [sp, #95]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L331
	.loc 1 3339 14
	ldr	r3, [sp, #20]
	ldr	r1, [sp, #80]
	mov	r0, r3
	bl	move_window
	mov	r3, r0
	strb	r3, [sp, #95]
	.loc 1 3340 10
	ldr	r3, [sp, #20]
	.loc 1 3340 27
	ldr	r2, [sp, #76]
	subs	r2, r2, #1
	.loc 1 3340 22
	str	r2, [r3, #12]
	b	.L331
.L326:
	.loc 1 3347 7
	ldrb	r3, [sp, #95]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L331
	.loc 1 3348 15
	ldrb	r3, [sp, #30]	@ zero_extendqisi2
	.loc 1 3348 21
	and	r3, r3, #16
	.loc 1 3348 8
	cmp	r3, #0
	beq	.L332
	.loc 1 3349 10
	movs	r3, #4
	strb	r3, [sp, #95]
	b	.L331
.L332:
	.loc 1 3351 16
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r3, r3, #2
	.loc 1 3351 9
	cmp	r3, #0
	beq	.L331
	.loc 1 3351 34 discriminator 1
	ldrb	r3, [sp, #30]	@ zero_extendqisi2
	.loc 1 3351 40 discriminator 1
	and	r3, r3, #1
	.loc 1 3351 24 discriminator 1
	cmp	r3, #0
	beq	.L331
	.loc 1 3352 11
	movs	r3, #7
	strb	r3, [sp, #95]
.L331:
	.loc 1 3357 6
	ldrb	r3, [sp, #95]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L333
	.loc 1 3358 13
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r3, r3, #8
	.loc 1 3358 7
	cmp	r3, #0
	beq	.L334
	.loc 1 3359 10
	ldrb	r3, [sp, #7]
	orr	r3, r3, #64
	strb	r3, [sp, #7]
.L334:
	.loc 1 3360 21
	ldr	r3, [sp, #20]
	ldr	r2, [r3, #44]
	.loc 1 3360 17
	ldr	r3, [sp, #12]
	str	r2, [r3, #32]
	.loc 1 3361 20
	ldr	r2, [sp, #52]
	.loc 1 3361 16
	ldr	r3, [sp, #12]
	str	r2, [r3, #36]
.L333:
	.loc 1 3379 6
	ldrb	r3, [sp, #95]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L324
	.loc 1 3391 22
	ldr	r3, [sp, #20]
	.loc 1 3391 37
	ldr	r2, [sp, #52]
	.loc 1 3391 22
	mov	r1, r2
	mov	r0, r3
	bl	ld_clust
	mov	r2, r0
	.loc 1 3391 20
	ldr	r3, [sp, #12]
	str	r2, [r3, #8]
	.loc 1 3392 34
	ldr	r3, [sp, #52]
	.loc 1 3392 39
	adds	r3, r3, #28
	.loc 1 3392 23
	mov	r0, r3
	bl	ld_dword
	mov	r2, r0
	.loc 1 3392 21
	ldr	r3, [sp, #12]
	str	r2, [r3, #12]
	.loc 1 3397 15
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #12]
	str	r2, [r3]
	.loc 1 3398 19
	ldr	r3, [sp, #20]
	ldrh	r2, [r3, #6]
	.loc 1 3398 15
	ldr	r3, [sp, #12]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 3399 13
	ldr	r3, [sp, #12]
	ldrb	r2, [sp, #7]
	strb	r2, [r3, #16]
	.loc 1 3400 12
	ldr	r3, [sp, #12]
	movs	r2, #0
	strb	r2, [r3, #17]
	.loc 1 3401 13
	ldr	r3, [sp, #12]
	movs	r2, #0
	str	r2, [r3, #28]
	.loc 1 3402 13
	ldr	r3, [sp, #12]
	movs	r2, #0
	str	r2, [r3, #20]
	.loc 1 3405 14
	ldr	r3, [sp, #12]
	adds	r3, r3, #40
	.loc 1 3405 4
	mov	r2, #512
	movs	r1, #0
	mov	r0, r3
	bl	mem_set
	.loc 1 3407 14
	ldrb	r3, [sp, #7]	@ zero_extendqisi2
	and	r3, r3, #32
	.loc 1 3407 7
	cmp	r3, #0
	beq	.L324
	.loc 1 3407 32 discriminator 1
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 3407 22 discriminator 1
	cmp	r3, #0
	beq	.L324
	.loc 1 3408 23
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #12]
	.loc 1 3408 14
	ldr	r3, [sp, #12]
	str	r2, [r3, #20]
	.loc 1 3409 20
	ldr	r3, [sp, #20]
	ldrh	r3, [r3, #10]
	.loc 1 3409 9
	lsls	r3, r3, #9
	str	r3, [sp, #72]
	.loc 1 3410 10
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	str	r3, [sp, #88]
	.loc 1 3411 14
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	str	r3, [sp, #84]
	.loc 1 3411 5
	b	.L335
.L339:
	.loc 1 3412 13
	ldr	r3, [sp, #12]
	ldr	r1, [sp, #88]
	mov	r0, r3
	bl	get_fat
	str	r0, [sp, #88]
	.loc 1 3413 9
	ldr	r3, [sp, #88]
	cmp	r3, #1
	bhi	.L336
	.loc 1 3413 25 discriminator 1
	movs	r3, #2
	strb	r3, [sp, #95]
.L336:
	.loc 1 3414 9
	ldr	r3, [sp, #88]
	cmp	r3, #-1
	bne	.L337
	.loc 1 3414 34 discriminator 1
	movs	r3, #1
	strb	r3, [sp, #95]
.L337:
	.loc 1 3411 64 discriminator 2
	ldr	r2, [sp, #84]
	ldr	r3, [sp, #72]
	subs	r3, r2, r3
	str	r3, [sp, #84]
.L335:
	.loc 1 3411 5 discriminator 1
	ldrb	r3, [sp, #95]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L338
	.loc 1 3411 46 discriminator 3
	ldr	r2, [sp, #84]
	ldr	r3, [sp, #72]
	cmp	r2, r3
	bhi	.L339
.L338:
	.loc 1 3416 15
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #88]
	str	r2, [r3, #24]
	.loc 1 3417 8
	ldrb	r3, [sp, #95]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L324
	.loc 1 3417 29 discriminator 1
	ldr	r3, [sp, #84]
	ubfx	r3, r3, #0, #9
	.loc 1 3417 22 discriminator 1
	cmp	r3, #0
	beq	.L324
	.loc 1 3418 16
	ldr	r3, [sp, #20]
	ldr	r1, [sp, #88]
	mov	r0, r3
	bl	clust2sect
	str	r0, [sp, #68]
	.loc 1 3418 9
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L340
	.loc 1 3419 11
	movs	r3, #2
	strb	r3, [sp, #95]
	b	.L324
.L340:
	.loc 1 3421 23
	ldr	r3, [sp, #84]
	lsrs	r2, r3, #9
	.loc 1 3421 21
	ldr	r3, [sp, #68]
	add	r2, r2, r3
	.loc 1 3421 16
	ldr	r3, [sp, #12]
	str	r2, [r3, #28]
	.loc 1 3423 23
	ldr	r3, [sp, #20]
	.loc 1 3423 11
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 3423 32
	ldr	r3, [sp, #12]
	add	r1, r3, #40
	.loc 1 3423 11
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #28]
	movs	r3, #1
	bl	disk_read
	mov	r3, r0
	.loc 1 3423 10
	cmp	r3, #0
	beq	.L324
	.loc 1 3423 67 discriminator 1
	movs	r3, #1
	strb	r3, [sp, #95]
.L324:
	.loc 1 3434 5
	ldrb	r3, [sp, #95]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L341
	.loc 1 3434 31 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #0
	str	r2, [r3]
.L341:
	.loc 1 3436 9
	ldrb	r3, [sp, #95]	@ zero_extendqisi2
.L342:
	.loc 1 3437 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #100
.LCFI91:
	@ sp needed
	ldr	pc, [sp], #4
.L344:
	.align	2
.L343:
	.word	1210122240
.LFE33:
	.size	f_open, .-f_open
	.section	.text.f_read,"ax",%progbits
	.align	1
	.global	f_read
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_read, %function
f_read:
.LFB34:
	.loc 1 3452 1
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI92:
	sub	sp, sp, #60
.LCFI93:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 3458 8
	ldr	r3, [sp, #8]
	str	r3, [sp, #36]
	.loc 1 3461 6
	ldr	r3, [sp]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 3462 8
	ldr	r3, [sp, #12]
	add	r2, sp, #20
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [sp, #55]
	.loc 1 3463 5
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L346
	.loc 1 3463 27 discriminator 2
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #17]
	strb	r3, [sp, #55]
	.loc 1 3463 19 discriminator 2
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L347
.L346:
	.loc 1 3463 64 discriminator 3
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	b	.L369
.L347:
	.loc 1 3464 10
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	.loc 1 3464 17
	and	r3, r3, #1
	.loc 1 3464 5
	cmp	r3, #0
	bne	.L349
	.loc 1 3464 33 discriminator 1
	movs	r3, #7
	b	.L369
.L349:
	.loc 1 3465 18
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #12]
	.loc 1 3465 31
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3465 9
	subs	r3, r2, r3
	str	r3, [sp, #32]
	.loc 1 3466 5
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #32]
	cmp	r2, r3
	bls	.L351
	.loc 1 3466 24 discriminator 1
	ldr	r3, [sp, #32]
	str	r3, [sp, #4]
	.loc 1 3468 2 discriminator 1
	b	.L351
.L368:
	.loc 1 3470 9
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3470 16
	ubfx	r3, r3, #0, #9
	.loc 1 3470 6
	cmp	r3, #0
	bne	.L352
	.loc 1 3471 21
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3471 28
	lsrs	r3, r3, #9
	.loc 1 3471 47
	ldr	r2, [sp, #20]
	ldrh	r2, [r2, #10]
	.loc 1 3471 55
	subs	r2, r2, #1
	.loc 1 3471 10
	ands	r3, r3, r2
	str	r3, [sp, #28]
	.loc 1 3472 7
	ldr	r3, [sp, #28]
	cmp	r3, #0
	bne	.L353
	.loc 1 3473 11
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3473 8
	cmp	r3, #0
	bne	.L354
	.loc 1 3474 11
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	str	r3, [sp, #48]
	b	.L355
.L354:
	.loc 1 3482 14
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #24]
	mov	r1, r3
	mov	r0, r2
	bl	get_fat
	str	r0, [sp, #48]
.L355:
	.loc 1 3485 8
	ldr	r3, [sp, #48]
	cmp	r3, #1
	bhi	.L356
	.loc 1 3485 29 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #2
	strb	r2, [r3, #17]
	.loc 1 3485 58 discriminator 1
	movs	r3, #2
	b	.L369
.L356:
	.loc 1 3486 8
	ldr	r3, [sp, #48]
	cmp	r3, #-1
	bne	.L357
	.loc 1 3486 39 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #17]
	.loc 1 3486 69 discriminator 1
	movs	r3, #1
	b	.L369
.L357:
	.loc 1 3487 15
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #48]
	str	r2, [r3, #24]
.L353:
	.loc 1 3489 11
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #24]
	mov	r1, r3
	mov	r0, r2
	bl	clust2sect
	str	r0, [sp, #24]
	.loc 1 3490 7
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L358
	.loc 1 3490 25 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #2
	strb	r2, [r3, #17]
	.loc 1 3490 54 discriminator 1
	movs	r3, #2
	b	.L369
.L358:
	.loc 1 3491 9
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	str	r3, [sp, #24]
	.loc 1 3492 7
	ldr	r3, [sp, #4]
	lsrs	r3, r3, #9
	str	r3, [sp, #40]
	.loc 1 3493 7
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L359
	.loc 1 3494 15
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #40]
	add	r3, r3, r2
	.loc 1 3494 24
	ldr	r2, [sp, #20]
	ldrh	r2, [r2, #10]
	.loc 1 3494 8
	cmp	r3, r2
	bls	.L360
	.loc 1 3495 13
	ldr	r3, [sp, #20]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	.loc 1 3495 9
	ldr	r3, [sp, #28]
	subs	r3, r2, r3
	str	r3, [sp, #40]
.L360:
	.loc 1 3497 21
	ldr	r3, [sp, #20]
	.loc 1 3497 9
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	ldr	r3, [sp, #40]
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #36]
	bl	disk_read
	mov	r3, r0
	.loc 1 3497 8
	cmp	r3, #0
	beq	.L361
	.loc 1 3497 66 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #17]
	.loc 1 3497 96 discriminator 1
	movs	r3, #1
	b	.L369
.L361:
	.loc 1 3504 12
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	.loc 1 3504 9
	sxtb	r3, r3
	.loc 1 3504 8
	cmp	r3, #0
	bge	.L362
	.loc 1 3504 32 discriminator 1
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #28]
	.loc 1 3504 39 discriminator 1
	ldr	r3, [sp, #24]
	subs	r3, r2, r3
	.loc 1 3504 27 discriminator 1
	ldr	r2, [sp, #40]
	cmp	r2, r3
	bls	.L362
	.loc 1 3505 26
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #28]
	.loc 1 3505 33
	ldr	r3, [sp, #24]
	subs	r3, r2, r3
	.loc 1 3505 41
	lsls	r3, r3, #9
	.loc 1 3505 20
	ldr	r2, [sp, #36]
	adds	r0, r2, r3
	.loc 1 3505 59
	ldr	r3, [sp, #12]
	adds	r3, r3, #40
	.loc 1 3505 6
	mov	r2, #512
	mov	r1, r3
	bl	mem_cpy
.L362:
	.loc 1 3509 10
	ldr	r3, [sp, #40]
	lsls	r3, r3, #9
	str	r3, [sp, #44]
	.loc 1 3510 5
	b	.L363
.L359:
	.loc 1 3513 10
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #28]
	.loc 1 3513 7
	ldr	r2, [sp, #24]
	cmp	r2, r3
	beq	.L364
	.loc 1 3515 11
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	.loc 1 3515 9
	sxtb	r3, r3
	.loc 1 3515 8
	cmp	r3, #0
	bge	.L365
	.loc 1 3516 23
	ldr	r3, [sp, #20]
	.loc 1 3516 10
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 3516 32
	ldr	r3, [sp, #12]
	add	r1, r3, #40
	.loc 1 3516 10
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #28]
	movs	r3, #1
	bl	disk_write
	mov	r3, r0
	.loc 1 3516 9
	cmp	r3, #0
	beq	.L366
	.loc 1 3516 73 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #17]
	.loc 1 3516 103 discriminator 1
	movs	r3, #1
	b	.L369
.L366:
	.loc 1 3517 15
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [sp, #12]
	strb	r2, [r3, #16]
.L365:
	.loc 1 3520 21
	ldr	r3, [sp, #20]
	.loc 1 3520 9
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 3520 30
	ldr	r3, [sp, #12]
	add	r1, r3, #40
	.loc 1 3520 9
	movs	r3, #1
	ldr	r2, [sp, #24]
	bl	disk_read
	mov	r3, r0
	.loc 1 3520 8
	cmp	r3, #0
	beq	.L364
	.loc 1 3520 67 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #17]
	.loc 1 3520 97 discriminator 1
	movs	r3, #1
	b	.L369
.L364:
	.loc 1 3523 13
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #24]
	str	r2, [r3, #28]
.L352:
	.loc 1 3525 32
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3525 39
	ubfx	r3, r3, #0, #9
	.loc 1 3525 8
	rsb	r3, r3, #512
	str	r3, [sp, #44]
	.loc 1 3526 6
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bls	.L367
	.loc 1 3526 24 discriminator 1
	ldr	r3, [sp, #4]
	str	r3, [sp, #44]
.L367:
	.loc 1 3531 18
	ldr	r3, [sp, #12]
	add	r2, r3, #40
	.loc 1 3531 30
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3531 37
	ubfx	r3, r3, #0, #9
	.loc 1 3531 3
	add	r3, r3, r2
	ldr	r2, [sp, #44]
	mov	r1, r3
	ldr	r0, [sp, #36]
	bl	mem_cpy
.L363:
	.loc 1 3469 9
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #44]
	add	r3, r3, r2
	str	r3, [sp, #36]
	.loc 1 3469 27
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [sp, #44]
	add	r2, r2, r3
	ldr	r3, [sp, #12]
	str	r2, [r3, #20]
	.loc 1 3469 40
	ldr	r3, [sp]
	ldr	r2, [r3]
	ldr	r3, [sp, #44]
	add	r2, r2, r3
	ldr	r3, [sp]
	str	r2, [r3]
	.loc 1 3469 53
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #44]
	subs	r3, r2, r3
	str	r3, [sp, #4]
.L351:
	.loc 1 3468 2
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L368
	.loc 1 3535 9
	movs	r3, #0
.L369:
	.loc 1 3536 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #60
.LCFI94:
	@ sp needed
	ldr	pc, [sp], #4
.LFE34:
	.size	f_read, .-f_read
	.section	.text.f_write,"ax",%progbits
	.align	1
	.global	f_write
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_write, %function
f_write:
.LFB35:
	.loc 1 3552 1
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI95:
	sub	sp, sp, #52
.LCFI96:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	.loc 1 3557 14
	ldr	r3, [sp, #8]
	str	r3, [sp, #28]
	.loc 1 3560 6
	ldr	r3, [sp]
	movs	r2, #0
	str	r2, [r3]
	.loc 1 3561 8
	ldr	r3, [sp, #12]
	add	r2, sp, #16
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [sp, #47]
	.loc 1 3562 5
	ldrb	r3, [sp, #47]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L371
	.loc 1 3562 27 discriminator 2
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #17]
	strb	r3, [sp, #47]
	.loc 1 3562 19 discriminator 2
	ldrb	r3, [sp, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L372
.L371:
	.loc 1 3562 64 discriminator 3
	ldrb	r3, [sp, #47]	@ zero_extendqisi2
	b	.L396
.L372:
	.loc 1 3563 10
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	.loc 1 3563 17
	and	r3, r3, #2
	.loc 1 3563 5
	cmp	r3, #0
	bne	.L374
	.loc 1 3563 33 discriminator 1
	movs	r3, #7
	b	.L396
.L374:
	.loc 1 3566 44
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #20]
	.loc 1 3566 34
	ldr	r3, [sp, #4]
	add	r2, r2, r3
	.loc 1 3566 69
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3566 5
	cmp	r2, r3
	bcs	.L376
	.loc 1 3567 38
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3567 7
	mvns	r3, r3
	str	r3, [sp, #4]
	.loc 1 3570 2
	b	.L376
.L395:
	.loc 1 3572 9
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3572 16
	ubfx	r3, r3, #0, #9
	.loc 1 3572 6
	cmp	r3, #0
	bne	.L377
	.loc 1 3573 21
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3573 28
	lsrs	r3, r3, #9
	.loc 1 3573 48
	ldr	r2, [sp, #16]
	ldrh	r2, [r2, #10]
	.loc 1 3573 56
	subs	r2, r2, #1
	.loc 1 3573 10
	ands	r3, r3, r2
	str	r3, [sp, #24]
	.loc 1 3574 7
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L378
	.loc 1 3575 11
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3575 8
	cmp	r3, #0
	bne	.L379
	.loc 1 3576 11
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	str	r3, [sp, #40]
	.loc 1 3577 9
	ldr	r3, [sp, #40]
	cmp	r3, #0
	bne	.L380
	.loc 1 3578 14
	ldr	r3, [sp, #12]
	movs	r1, #0
	mov	r0, r3
	bl	create_chain
	str	r0, [sp, #40]
	b	.L380
.L379:
	.loc 1 3587 14
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #24]
	mov	r1, r3
	mov	r0, r2
	bl	create_chain
	str	r0, [sp, #40]
.L380:
	.loc 1 3590 8
	ldr	r3, [sp, #40]
	cmp	r3, #0
	beq	.L397
	.loc 1 3591 8
	ldr	r3, [sp, #40]
	cmp	r3, #1
	bne	.L383
	.loc 1 3591 30 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #2
	strb	r2, [r3, #17]
	.loc 1 3591 59 discriminator 1
	movs	r3, #2
	b	.L396
.L383:
	.loc 1 3592 8
	ldr	r3, [sp, #40]
	cmp	r3, #-1
	bne	.L384
	.loc 1 3592 39 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #17]
	.loc 1 3592 69 discriminator 1
	movs	r3, #1
	b	.L396
.L384:
	.loc 1 3593 15
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #40]
	str	r2, [r3, #24]
	.loc 1 3594 16
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #8]
	.loc 1 3594 8
	cmp	r3, #0
	bne	.L378
	.loc 1 3594 45 discriminator 1
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #40]
	str	r2, [r3, #8]
.L378:
	.loc 1 3599 10
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	.loc 1 3599 8
	sxtb	r3, r3
	.loc 1 3599 7
	cmp	r3, #0
	bge	.L385
	.loc 1 3600 22
	ldr	r3, [sp, #16]
	.loc 1 3600 9
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 3600 31
	ldr	r3, [sp, #12]
	add	r1, r3, #40
	.loc 1 3600 9
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #28]
	movs	r3, #1
	bl	disk_write
	mov	r3, r0
	.loc 1 3600 8
	cmp	r3, #0
	beq	.L386
	.loc 1 3600 72 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #17]
	.loc 1 3600 102 discriminator 1
	movs	r3, #1
	b	.L396
.L386:
	.loc 1 3601 14
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [sp, #12]
	strb	r2, [r3, #16]
.L385:
	.loc 1 3604 11
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #24]
	mov	r1, r3
	mov	r0, r2
	bl	clust2sect
	str	r0, [sp, #20]
	.loc 1 3605 7
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L387
	.loc 1 3605 25 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #2
	strb	r2, [r3, #17]
	.loc 1 3605 54 discriminator 1
	movs	r3, #2
	b	.L396
.L387:
	.loc 1 3606 9
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #24]
	add	r3, r3, r2
	str	r3, [sp, #20]
	.loc 1 3607 7
	ldr	r3, [sp, #4]
	lsrs	r3, r3, #9
	str	r3, [sp, #32]
	.loc 1 3608 7
	ldr	r3, [sp, #32]
	cmp	r3, #0
	beq	.L388
	.loc 1 3609 15
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #32]
	add	r3, r3, r2
	.loc 1 3609 24
	ldr	r2, [sp, #16]
	ldrh	r2, [r2, #10]
	.loc 1 3609 8
	cmp	r3, r2
	bls	.L389
	.loc 1 3610 13
	ldr	r3, [sp, #16]
	ldrh	r3, [r3, #10]
	mov	r2, r3
	.loc 1 3610 9
	ldr	r3, [sp, #24]
	subs	r3, r2, r3
	str	r3, [sp, #32]
.L389:
	.loc 1 3612 22
	ldr	r3, [sp, #16]
	.loc 1 3612 9
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #20]
	ldr	r1, [sp, #28]
	bl	disk_write
	mov	r3, r0
	.loc 1 3612 8
	cmp	r3, #0
	beq	.L390
	.loc 1 3612 67 discriminator 1
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #17]
	.loc 1 3612 97 discriminator 1
	movs	r3, #1
	b	.L396
.L390:
	.loc 1 3620 11
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #28]
	.loc 1 3620 18
	ldr	r3, [sp, #20]
	subs	r3, r2, r3
	.loc 1 3620 8
	ldr	r2, [sp, #32]
	cmp	r2, r3
	bls	.L391
	.loc 1 3621 16
	ldr	r3, [sp, #12]
	add	r0, r3, #40
	.loc 1 3621 35
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #28]
	.loc 1 3621 42
	ldr	r3, [sp, #20]
	subs	r3, r2, r3
	.loc 1 3621 50
	lsls	r3, r3, #9
	.loc 1 3621 29
	ldr	r2, [sp, #28]
	add	r3, r3, r2
	.loc 1 3621 6
	mov	r2, #512
	mov	r1, r3
	bl	mem_cpy
	.loc 1 3622 15
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [sp, #12]
	strb	r2, [r3, #16]
.L391:
	.loc 1 3626 10
	ldr	r3, [sp, #32]
	lsls	r3, r3, #9
	str	r3, [sp, #36]
	.loc 1 3627 5
	b	.L392
.L388:
	.loc 1 3635 10
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #28]
	.loc 1 3635 7
	ldr	r2, [sp, #20]
	cmp	r2, r3
	beq	.L393
	.loc 1 3636 7 discriminator 1
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #20]
	.loc 1 3636 23 discriminator 1
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #12]
	.loc 1 3635 25 discriminator 1
	cmp	r2, r3
	bcs	.L393
	.loc 1 3637 17
	ldr	r3, [sp, #16]
	.loc 1 3637 5
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 3637 26
	ldr	r3, [sp, #12]
	add	r1, r3, #40
	.loc 1 3637 5
	movs	r3, #1
	ldr	r2, [sp, #20]
	bl	disk_read
	mov	r3, r0
	.loc 1 3636 32
	cmp	r3, #0
	beq	.L393
	.loc 1 3638 16
	ldr	r3, [sp, #12]
	movs	r2, #1
	strb	r2, [r3, #17]
	.loc 1 3638 46
	movs	r3, #1
	b	.L396
.L393:
	.loc 1 3641 13
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #20]
	str	r2, [r3, #28]
.L377:
	.loc 1 3643 32
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3643 39
	ubfx	r3, r3, #0, #9
	.loc 1 3643 8
	rsb	r3, r3, #512
	str	r3, [sp, #36]
	.loc 1 3644 6
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #4]
	cmp	r2, r3
	bls	.L394
	.loc 1 3644 24 discriminator 1
	ldr	r3, [sp, #4]
	str	r3, [sp, #36]
.L394:
	.loc 1 3650 11
	ldr	r3, [sp, #12]
	add	r2, r3, #40
	.loc 1 3650 23
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3650 30
	ubfx	r3, r3, #0, #9
	.loc 1 3650 3
	add	r3, r3, r2
	ldr	r2, [sp, #36]
	ldr	r1, [sp, #28]
	mov	r0, r3
	bl	mem_cpy
	.loc 1 3651 12
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	orn	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [sp, #12]
	strb	r2, [r3, #16]
.L392:
	.loc 1 3571 9
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #36]
	add	r3, r3, r2
	str	r3, [sp, #28]
	.loc 1 3571 27
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [sp, #36]
	add	r2, r2, r3
	ldr	r3, [sp, #12]
	str	r2, [r3, #20]
	.loc 1 3571 73
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #12]
	.loc 1 3571 57
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 3571 94
	cmp	r2, r3
	it	cc
	movcc	r2, r3
	.loc 1 3571 52
	ldr	r3, [sp, #12]
	str	r2, [r3, #12]
	.loc 1 3571 117
	ldr	r3, [sp]
	ldr	r2, [r3]
	ldr	r3, [sp, #36]
	add	r2, r2, r3
	ldr	r3, [sp]
	str	r2, [r3]
	.loc 1 3571 130
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #36]
	subs	r3, r2, r3
	str	r3, [sp, #4]
.L376:
	.loc 1 3570 2
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L395
	b	.L382
.L397:
	.loc 1 3590 5
	nop
.L382:
	.loc 1 3655 11
	ldr	r3, [sp, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	orr	r3, r3, #64
	uxtb	r2, r3
	ldr	r3, [sp, #12]
	strb	r2, [r3, #16]
	.loc 1 3657 9
	movs	r3, #0
.L396:
	.loc 1 3658 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #52
.LCFI97:
	@ sp needed
	ldr	pc, [sp], #4
.LFE35:
	.size	f_write, .-f_write
	.section	.text.f_sync,"ax",%progbits
	.align	1
	.global	f_sync
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_sync, %function
f_sync:
.LFB36:
	.loc 1 3670 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI98:
	sub	sp, sp, #28
.LCFI99:
	str	r0, [sp, #4]
	.loc 1 3678 8
	ldr	r3, [sp, #4]
	add	r2, sp, #8
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 3679 5
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L399
	.loc 1 3680 9
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	.loc 1 3680 16
	and	r3, r3, #64
	.loc 1 3680 6
	cmp	r3, #0
	beq	.L399
	.loc 1 3682 10
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	.loc 1 3682 8
	sxtb	r3, r3
	.loc 1 3682 7
	cmp	r3, #0
	bge	.L400
	.loc 1 3683 22
	ldr	r3, [sp, #8]
	.loc 1 3683 9
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 3683 31
	ldr	r3, [sp, #4]
	add	r1, r3, #40
	.loc 1 3683 9
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #28]
	movs	r3, #1
	bl	disk_write
	mov	r3, r0
	.loc 1 3683 8
	cmp	r3, #0
	beq	.L401
	.loc 1 3683 69 discriminator 1
	movs	r3, #1
	b	.L403
.L401:
	.loc 1 3684 14
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3, #16]
.L400:
	.loc 1 3688 7
	ldr	r3, .L404
	str	r3, [sp, #16]
	.loc 1 3717 11
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #32]
	mov	r1, r3
	mov	r0, r2
	bl	move_window
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 3718 8
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L399
	.loc 1 3719 10
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #36]
	str	r3, [sp, #12]
	.loc 1 3720 14
	ldr	r3, [sp, #12]
	adds	r3, r3, #11
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [sp, #12]
	adds	r3, r3, #11
	orr	r2, r2, #32
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 3721 6
	ldr	r3, [sp, #4]
	ldr	r0, [r3]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r1, [sp, #12]
	bl	st_clust
	.loc 1 3722 6
	ldr	r3, [sp, #12]
	add	r2, r3, #28
	.loc 1 3722 39
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #12]
	.loc 1 3722 6
	mov	r1, r3
	mov	r0, r2
	bl	st_dword
	.loc 1 3723 6
	ldr	r3, [sp, #12]
	adds	r3, r3, #22
	ldr	r1, [sp, #16]
	mov	r0, r3
	bl	st_dword
	.loc 1 3724 6
	ldr	r3, [sp, #12]
	adds	r3, r3, #18
	movs	r1, #0
	mov	r0, r3
	bl	st_word
	.loc 1 3725 8
	ldr	r3, [sp, #8]
	.loc 1 3725 16
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 1 3726 12
	ldr	r3, [sp, #8]
	mov	r0, r3
	bl	sync_fs
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 3727 15
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	bic	r3, r3, #64
	uxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3, #16]
.L399:
	.loc 1 3733 9
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
.L403:
	.loc 1 3734 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI100:
	@ sp needed
	ldr	pc, [sp], #4
.L405:
	.align	2
.L404:
	.word	1210122240
.LFE36:
	.size	f_sync, .-f_sync
	.section	.text.f_close,"ax",%progbits
	.align	1
	.global	f_close
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_close, %function
f_close:
.LFB37:
	.loc 1 3748 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI101:
	sub	sp, sp, #20
.LCFI102:
	str	r0, [sp, #4]
	.loc 1 3753 8
	ldr	r0, [sp, #4]
	bl	f_sync
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3754 5
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L407
	.loc 1 3757 9
	ldr	r3, [sp, #4]
	add	r2, sp, #8
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 3758 6
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L407
	.loc 1 3764 16
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3]
.L407:
	.loc 1 3771 9
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 3772 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI103:
	@ sp needed
	ldr	pc, [sp], #4
.LFE37:
	.size	f_close, .-f_close
	.section	.text.f_lseek,"ax",%progbits
	.align	1
	.global	f_lseek
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_lseek, %function
f_lseek:
.LFB38:
	.loc 1 3937 1
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI104:
	sub	sp, sp, #36
.LCFI105:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 3946 8
	ldr	r3, [sp, #4]
	add	r2, sp, #8
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [sp, #31]
	.loc 1 3947 5
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L410
	.loc 1 3947 27 discriminator 2
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #17]
	strb	r3, [sp, #31]
	.loc 1 3947 19 discriminator 2
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L411
.L410:
	.loc 1 3947 64 discriminator 3
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
	b	.L434
.L411:
	.loc 1 4005 20
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #12]
	.loc 1 4005 6
	ldr	r2, [sp]
	cmp	r2, r3
	bls	.L413
	.loc 1 4005 42 discriminator 1
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	.loc 1 4005 49 discriminator 1
	and	r3, r3, #2
	.loc 1 4005 29 discriminator 1
	cmp	r3, #0
	bne	.L413
	.loc 1 4006 8
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #12]
	str	r3, [sp]
.L413:
	.loc 1 4008 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #20]
	str	r3, [sp, #16]
	.loc 1 4009 20
	movs	r3, #0
	str	r3, [sp, #20]
	.loc 1 4009 12
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #20]
	str	r2, [r3, #20]
	.loc 1 4010 6
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L414
	.loc 1 4011 19
	ldr	r3, [sp, #8]
	ldrh	r3, [r3, #10]
	.loc 1 4011 8
	lsls	r3, r3, #9
	str	r3, [sp, #12]
	.loc 1 4012 7
	ldr	r3, [sp, #16]
	cmp	r3, #0
	beq	.L415
	.loc 1 4013 10 discriminator 1
	ldr	r3, [sp]
	subs	r2, r3, #1
	.loc 1 4013 15 discriminator 1
	ldr	r3, [sp, #12]
	udiv	r2, r2, r3
	.loc 1 4013 31 discriminator 1
	ldr	r3, [sp, #16]
	subs	r1, r3, #1
	.loc 1 4013 36 discriminator 1
	ldr	r3, [sp, #12]
	udiv	r3, r1, r3
	.loc 1 4012 18 discriminator 1
	cmp	r2, r3
	bcc	.L415
	.loc 1 4014 23
	ldr	r3, [sp, #16]
	subs	r2, r3, #1
	.loc 1 4014 30
	ldr	r3, [sp, #12]
	rsbs	r3, r3, #0
	.loc 1 4014 28
	ands	r2, r2, r3
	.loc 1 4014 14
	ldr	r3, [sp, #4]
	str	r2, [r3, #20]
	.loc 1 4015 14
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #20]
	.loc 1 4015 9
	ldr	r2, [sp]
	subs	r3, r2, r3
	str	r3, [sp]
	.loc 1 4016 10
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	str	r3, [sp, #24]
	b	.L416
.L415:
	.loc 1 4018 10
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	str	r3, [sp, #24]
	.loc 1 4020 8
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L417
	.loc 1 4021 13
	ldr	r3, [sp, #4]
	movs	r1, #0
	mov	r0, r3
	bl	create_chain
	str	r0, [sp, #24]
	.loc 1 4022 9
	ldr	r3, [sp, #24]
	cmp	r3, #1
	bne	.L418
	.loc 1 4022 31 discriminator 1
	ldr	r3, [sp, #4]
	movs	r2, #2
	strb	r2, [r3, #17]
	.loc 1 4022 60 discriminator 1
	movs	r3, #2
	b	.L434
.L418:
	.loc 1 4023 9
	ldr	r3, [sp, #24]
	cmp	r3, #-1
	bne	.L419
	.loc 1 4023 40 discriminator 1
	ldr	r3, [sp, #4]
	movs	r2, #1
	strb	r2, [r3, #17]
	.loc 1 4023 70 discriminator 1
	movs	r3, #1
	b	.L434
.L419:
	.loc 1 4024 21
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #24]
	str	r2, [r3, #8]
.L417:
	.loc 1 4027 15
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #24]
	str	r2, [r3, #24]
.L416:
	.loc 1 4029 7
	ldr	r3, [sp, #24]
	cmp	r3, #0
	beq	.L414
	.loc 1 4030 11
	b	.L420
.L427:
	.loc 1 4031 10
	ldr	r2, [sp]
	ldr	r3, [sp, #12]
	subs	r3, r2, r3
	str	r3, [sp]
	.loc 1 4031 27
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [sp, #12]
	add	r2, r2, r3
	ldr	r3, [sp, #4]
	str	r2, [r3, #20]
	.loc 1 4033 12
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	.loc 1 4033 19
	and	r3, r3, #2
	.loc 1 4033 9
	cmp	r3, #0
	beq	.L421
	.loc 1 4038 14
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #24]
	mov	r0, r3
	bl	create_chain
	str	r0, [sp, #24]
	.loc 1 4039 10
	ldr	r3, [sp, #24]
	cmp	r3, #0
	bne	.L422
	.loc 1 4040 12
	movs	r3, #0
	str	r3, [sp]
	.loc 1 4040 8
	b	.L423
.L421:
	.loc 1 4045 14
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #24]
	mov	r0, r3
	bl	get_fat
	str	r0, [sp, #24]
.L422:
	.loc 1 4047 9
	ldr	r3, [sp, #24]
	cmp	r3, #-1
	bne	.L424
	.loc 1 4047 40 discriminator 1
	ldr	r3, [sp, #4]
	movs	r2, #1
	strb	r2, [r3, #17]
	.loc 1 4047 70 discriminator 1
	movs	r3, #1
	b	.L434
.L424:
	.loc 1 4048 9
	ldr	r3, [sp, #24]
	cmp	r3, #1
	bls	.L425
	.loc 1 4048 33 discriminator 2
	ldr	r3, [sp, #8]
	ldr	r3, [r3, #20]
	.loc 1 4048 20 discriminator 2
	ldr	r2, [sp, #24]
	cmp	r2, r3
	bcc	.L426
.L425:
	.loc 1 4048 55 discriminator 3
	ldr	r3, [sp, #4]
	movs	r2, #2
	strb	r2, [r3, #17]
	.loc 1 4048 84 discriminator 3
	movs	r3, #2
	b	.L434
.L426:
	.loc 1 4049 16
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #24]
	str	r2, [r3, #24]
.L420:
	.loc 1 4030 11
	ldr	r2, [sp]
	ldr	r3, [sp, #12]
	cmp	r2, r3
	bhi	.L427
.L423:
	.loc 1 4051 14
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [sp]
	add	r2, r2, r3
	ldr	r3, [sp, #4]
	str	r2, [r3, #20]
	.loc 1 4052 13
	ldr	r3, [sp]
	ubfx	r3, r3, #0, #9
	.loc 1 4052 8
	cmp	r3, #0
	beq	.L414
	.loc 1 4053 14
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #24]
	mov	r0, r3
	bl	clust2sect
	str	r0, [sp, #20]
	.loc 1 4054 9
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L428
	.loc 1 4054 28 discriminator 1
	ldr	r3, [sp, #4]
	movs	r2, #2
	strb	r2, [r3, #17]
	.loc 1 4054 57 discriminator 1
	movs	r3, #2
	b	.L434
.L428:
	.loc 1 4055 15
	ldr	r3, [sp]
	lsrs	r3, r3, #9
	.loc 1 4055 12
	ldr	r2, [sp, #20]
	add	r3, r3, r2
	str	r3, [sp, #20]
.L414:
	.loc 1 4059 15
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #20]
	.loc 1 4059 31
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #12]
	.loc 1 4059 6
	cmp	r2, r3
	bls	.L429
	.loc 1 4060 24
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #20]
	.loc 1 4060 20
	ldr	r3, [sp, #4]
	str	r2, [r3, #12]
	.loc 1 4061 13
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	orr	r3, r3, #64
	uxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3, #16]
.L429:
	.loc 1 4063 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #20]
	.loc 1 4063 16
	ubfx	r3, r3, #0, #9
	.loc 1 4063 6
	cmp	r3, #0
	beq	.L430
	.loc 1 4063 44 discriminator 1
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 4063 30 discriminator 1
	ldr	r2, [sp, #20]
	cmp	r2, r3
	beq	.L430
	.loc 1 4066 10
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	.loc 1 4066 8
	sxtb	r3, r3
	.loc 1 4066 7
	cmp	r3, #0
	bge	.L431
	.loc 1 4067 22
	ldr	r3, [sp, #8]
	.loc 1 4067 9
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 4067 31
	ldr	r3, [sp, #4]
	add	r1, r3, #40
	.loc 1 4067 9
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #28]
	movs	r3, #1
	bl	disk_write
	mov	r3, r0
	.loc 1 4067 8
	cmp	r3, #0
	beq	.L432
	.loc 1 4067 72 discriminator 1
	ldr	r3, [sp, #4]
	movs	r2, #1
	strb	r2, [r3, #17]
	.loc 1 4067 102 discriminator 1
	movs	r3, #1
	b	.L434
.L432:
	.loc 1 4068 14
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3, #16]
.L431:
	.loc 1 4071 20
	ldr	r3, [sp, #8]
	.loc 1 4071 8
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 4071 29
	ldr	r3, [sp, #4]
	add	r1, r3, #40
	.loc 1 4071 8
	movs	r3, #1
	ldr	r2, [sp, #20]
	bl	disk_read
	mov	r3, r0
	.loc 1 4071 7
	cmp	r3, #0
	beq	.L433
	.loc 1 4071 67 discriminator 1
	ldr	r3, [sp, #4]
	movs	r2, #1
	strb	r2, [r3, #17]
	.loc 1 4071 97 discriminator 1
	movs	r3, #1
	b	.L434
.L433:
	.loc 1 4073 13
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #20]
	str	r2, [r3, #28]
.L430:
	.loc 1 4077 9
	ldrb	r3, [sp, #31]	@ zero_extendqisi2
.L434:
	.loc 1 4078 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #36
.LCFI106:
	@ sp needed
	ldr	pc, [sp], #4
.LFE38:
	.size	f_lseek, .-f_lseek
	.section	.text.f_opendir,"ax",%progbits
	.align	1
	.global	f_opendir
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_opendir, %function
f_opendir:
.LFB39:
	.loc 1 4091 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI107:
	sub	sp, sp, #28
.LCFI108:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 4098 5
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L436
	.loc 1 4098 18 discriminator 1
	movs	r3, #9
	b	.L443
.L436:
	.loc 1 4101 6
	ldr	r3, [sp, #4]
	str	r3, [sp, #16]
	.loc 1 4102 8
	add	r1, sp, #12
	mov	r3, sp
	movs	r2, #0
	mov	r0, r3
	bl	find_volume
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 4103 5
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L438
	.loc 1 4104 11
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #16]
	str	r2, [r3]
	.loc 1 4106 9
	ldr	r3, [sp]
	mov	r1, r3
	ldr	r0, [sp, #4]
	bl	follow_path
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 4107 6
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L439
	.loc 1 4108 16
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #43]	@ zero_extendqisi2
	.loc 1 4108 8
	sxtb	r3, r3
	.loc 1 4108 7
	cmp	r3, #0
	blt	.L440
	.loc 1 4109 12
	ldr	r3, [sp, #16]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	.loc 1 4109 19
	and	r3, r3, #16
	.loc 1 4109 8
	cmp	r3, #0
	beq	.L441
	.loc 1 4121 21
	ldr	r2, [sp, #12]
	.loc 1 4121 36
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #28]
	.loc 1 4121 21
	mov	r1, r3
	mov	r0, r2
	bl	ld_clust
	mov	r2, r0
	.loc 1 4121 19
	ldr	r3, [sp, #16]
	str	r2, [r3, #8]
	b	.L440
.L441:
	.loc 1 4124 10
	movs	r3, #5
	strb	r3, [sp, #23]
.L440:
	.loc 1 4127 7
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L439
	.loc 1 4128 17
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #6]
	.loc 1 4128 13
	ldr	r3, [sp, #16]
	strh	r2, [r3, #4]	@ movhi
	.loc 1 4129 11
	movs	r1, #0
	ldr	r0, [sp, #4]
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [sp, #23]
.L439:
	.loc 1 4143 6
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L438
	.loc 1 4143 30 discriminator 1
	movs	r3, #5
	strb	r3, [sp, #23]
.L438:
	.loc 1 4145 5
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L442
	.loc 1 4145 28 discriminator 1
	ldr	r3, [sp, #16]
	movs	r2, #0
	str	r2, [r3]
.L442:
	.loc 1 4147 9
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
.L443:
	.loc 1 4148 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI109:
	@ sp needed
	ldr	pc, [sp], #4
.LFE39:
	.size	f_opendir, .-f_opendir
	.section	.text.f_closedir,"ax",%progbits
	.align	1
	.global	f_closedir
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_closedir, %function
f_closedir:
.LFB40:
	.loc 1 4160 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI110:
	sub	sp, sp, #20
.LCFI111:
	str	r0, [sp, #4]
	.loc 1 4165 8
	ldr	r3, [sp, #4]
	add	r2, sp, #8
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4166 5
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L445
	.loc 1 4174 15
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3]
.L445:
	.loc 1 4180 9
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 4181 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI112:
	@ sp needed
	ldr	pc, [sp], #4
.LFE40:
	.size	f_closedir, .-f_closedir
	.section	.text.f_readdir,"ax",%progbits
	.align	1
	.global	f_readdir
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_readdir, %function
f_readdir:
.LFB41:
	.loc 1 4194 1
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI113:
	sub	sp, sp, #20
.LCFI114:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 4200 8
	ldr	r3, [sp, #4]
	add	r2, sp, #8
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4201 5
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L448
	.loc 1 4202 6
	ldr	r3, [sp]
	cmp	r3, #0
	bne	.L449
	.loc 1 4203 10
	movs	r1, #0
	ldr	r0, [sp, #4]
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [sp, #15]
	b	.L448
.L449:
	.loc 1 4206 10
	movs	r1, #0
	ldr	r0, [sp, #4]
	bl	dir_read
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4207 7
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L450
	.loc 1 4207 31 discriminator 1
	movs	r3, #0
	strb	r3, [sp, #15]
.L450:
	.loc 1 4208 7
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L448
	.loc 1 4209 5
	ldr	r1, [sp]
	ldr	r0, [sp, #4]
	bl	get_fileinfo
	.loc 1 4210 11
	movs	r1, #0
	ldr	r0, [sp, #4]
	bl	dir_next
	mov	r3, r0
	strb	r3, [sp, #15]
	.loc 1 4211 8
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L448
	.loc 1 4211 32 discriminator 1
	movs	r3, #0
	strb	r3, [sp, #15]
.L448:
	.loc 1 4216 9
	ldrb	r3, [sp, #15]	@ zero_extendqisi2
	.loc 1 4217 1
	mov	r0, r3
	add	sp, sp, #20
.LCFI115:
	@ sp needed
	ldr	pc, [sp], #4
.LFE41:
	.size	f_readdir, .-f_readdir
	.section	.text.f_stat,"ax",%progbits
	.align	1
	.global	f_stat
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_stat, %function
f_stat:
.LFB42:
	.loc 1 4282 1
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI116:
	sub	sp, sp, #60
.LCFI117:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 4289 8
	add	r1, sp, #8
	add	r3, sp, #4
	movs	r2, #0
	mov	r0, r3
	bl	find_volume
	mov	r3, r0
	strb	r3, [sp, #55]
	.loc 1 4290 5
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L453
	.loc 1 4292 9
	ldr	r2, [sp, #4]
	add	r3, sp, #8
	mov	r1, r2
	mov	r0, r3
	bl	follow_path
	mov	r3, r0
	strb	r3, [sp, #55]
	.loc 1 4293 6
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L453
	.loc 1 4294 13
	ldrb	r3, [sp, #51]	@ zero_extendqisi2
	.loc 1 4294 8
	sxtb	r3, r3
	.loc 1 4294 7
	cmp	r3, #0
	bge	.L454
	.loc 1 4295 9
	movs	r3, #6
	strb	r3, [sp, #55]
	b	.L453
.L454:
	.loc 1 4297 8
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L453
	.loc 1 4297 14 discriminator 1
	add	r3, sp, #8
	ldr	r1, [sp]
	mov	r0, r3
	bl	get_fileinfo
.L453:
	.loc 1 4303 9
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	.loc 1 4304 1
	mov	r0, r3
	add	sp, sp, #60
.LCFI118:
	@ sp needed
	ldr	pc, [sp], #4
.LFE42:
	.size	f_stat, .-f_stat
	.section	.text.f_getfree,"ax",%progbits
	.align	1
	.global	f_getfree
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_getfree, %function
f_getfree:
.LFB43:
	.loc 1 4318 1
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI119:
	sub	sp, sp, #68
.LCFI120:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	.loc 1 4328 8
	add	r1, sp, #32
	add	r3, sp, #12
	movs	r2, #0
	mov	r0, r3
	bl	find_volume
	mov	r3, r0
	strb	r3, [sp, #63]
	.loc 1 4329 5
	ldrb	r3, [sp, #63]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L457
	.loc 1 4330 10
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #4]
	str	r2, [r3]
	.loc 1 4332 9
	ldr	r3, [sp, #32]
	ldr	r2, [r3, #16]
	.loc 1 4332 26
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #20]
	.loc 1 4332 37
	subs	r3, r3, #2
	.loc 1 4332 6
	cmp	r2, r3
	bhi	.L458
	.loc 1 4333 15
	ldr	r3, [sp, #32]
	ldr	r2, [r3, #16]
	.loc 1 4333 11
	ldr	r3, [sp, #8]
	str	r2, [r3]
	b	.L457
.L458:
	.loc 1 4336 10
	movs	r3, #0
	str	r3, [sp, #56]
	.loc 1 4337 10
	ldr	r3, [sp, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4337 7
	cmp	r3, #1
	bne	.L459
	.loc 1 4338 10
	movs	r3, #2
	str	r3, [sp, #52]
	.loc 1 4338 22
	ldr	r3, [sp, #32]
	str	r3, [sp, #16]
.L464:
	.loc 1 4340 13
	add	r3, sp, #16
	ldr	r1, [sp, #52]
	mov	r0, r3
	bl	get_fat
	str	r0, [sp, #36]
	.loc 1 4341 9
	ldr	r3, [sp, #36]
	cmp	r3, #-1
	bne	.L460
	.loc 1 4341 36 discriminator 1
	movs	r3, #1
	strb	r3, [sp, #63]
	.loc 1 4341 6 discriminator 1
	b	.L465
.L460:
	.loc 1 4342 9
	ldr	r3, [sp, #36]
	cmp	r3, #1
	bne	.L462
	.loc 1 4342 27 discriminator 1
	movs	r3, #2
	strb	r3, [sp, #63]
	.loc 1 4342 6 discriminator 1
	b	.L465
.L462:
	.loc 1 4343 9
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L463
	.loc 1 4343 26 discriminator 1
	ldr	r3, [sp, #56]
	adds	r3, r3, #1
	str	r3, [sp, #56]
.L463:
	.loc 1 4344 5
	ldr	r3, [sp, #52]
	adds	r3, r3, #1
	str	r3, [sp, #52]
	.loc 1 4344 25
	ldr	r3, [sp, #32]
	ldr	r3, [r3, #20]
	.loc 1 4344 5
	ldr	r2, [sp, #52]
	cmp	r2, r3
	bcc	.L464
	b	.L465
.L459:
	.loc 1 4365 15
	ldr	r3, [sp, #32]
	.loc 1 4365 11
	ldr	r3, [r3, #20]
	str	r3, [sp, #52]
	.loc 1 4365 36
	ldr	r3, [sp, #32]
	.loc 1 4365 32
	ldr	r3, [r3, #32]
	str	r3, [sp, #48]
	.loc 1 4366 8
	movs	r3, #0
	str	r3, [sp, #44]
	.loc 1 4366 15
	movs	r3, #0
	str	r3, [sp, #40]
.L472:
	.loc 1 4368 10
	ldr	r3, [sp, #44]
	cmp	r3, #0
	bne	.L466
	.loc 1 4369 14
	ldr	r0, [sp, #32]
	ldr	r3, [sp, #48]
	adds	r2, r3, #1
	str	r2, [sp, #48]
	mov	r1, r3
	bl	move_window
	mov	r3, r0
	strb	r3, [sp, #63]
	.loc 1 4370 11
	ldrb	r3, [sp, #63]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L474
	.loc 1 4371 14
	ldr	r3, [sp, #32]
	.loc 1 4371 10
	adds	r3, r3, #48
	str	r3, [sp, #40]
	.loc 1 4372 10
	mov	r3, #512
	str	r3, [sp, #44]
.L466:
	.loc 1 4374 13
	ldr	r3, [sp, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4374 10
	cmp	r3, #2
	bne	.L468
	.loc 1 4375 12
	ldr	r0, [sp, #40]
	bl	ld_word
	mov	r3, r0
	.loc 1 4375 11
	cmp	r3, #0
	bne	.L469
	.loc 1 4375 34 discriminator 1
	ldr	r3, [sp, #56]
	adds	r3, r3, #1
	str	r3, [sp, #56]
.L469:
	.loc 1 4376 10
	ldr	r3, [sp, #40]
	adds	r3, r3, #2
	str	r3, [sp, #40]
	.loc 1 4376 18
	ldr	r3, [sp, #44]
	subs	r3, r3, #2
	str	r3, [sp, #44]
	b	.L470
.L468:
	.loc 1 4378 13
	ldr	r0, [sp, #40]
	bl	ld_dword
	mov	r3, r0
	.loc 1 4378 25
	bic	r3, r3, #-268435456
	.loc 1 4378 11
	cmp	r3, #0
	bne	.L471
	.loc 1 4378 50 discriminator 1
	ldr	r3, [sp, #56]
	adds	r3, r3, #1
	str	r3, [sp, #56]
.L471:
	.loc 1 4379 10
	ldr	r3, [sp, #40]
	adds	r3, r3, #4
	str	r3, [sp, #40]
	.loc 1 4379 18
	ldr	r3, [sp, #44]
	subs	r3, r3, #4
	str	r3, [sp, #44]
.L470:
	.loc 1 4381 6
	ldr	r3, [sp, #52]
	subs	r3, r3, #1
	str	r3, [sp, #52]
	ldr	r3, [sp, #52]
	cmp	r3, #0
	bne	.L472
	b	.L465
.L474:
	.loc 1 4370 8
	nop
.L465:
	.loc 1 4384 11
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #56]
	str	r2, [r3]
	.loc 1 4385 6
	ldr	r3, [sp, #32]
	.loc 1 4385 18
	ldr	r2, [sp, #56]
	str	r2, [r3, #16]
	.loc 1 4386 17
	ldr	r3, [sp, #32]
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldr	r3, [sp, #32]
	orr	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3, #4]
.L457:
	.loc 1 4390 9
	ldrb	r3, [sp, #63]	@ zero_extendqisi2
	.loc 1 4391 1
	mov	r0, r3
	add	sp, sp, #68
.LCFI121:
	@ sp needed
	ldr	pc, [sp], #4
.LFE43:
	.size	f_getfree, .-f_getfree
	.section	.text.f_truncate,"ax",%progbits
	.align	1
	.global	f_truncate
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_truncate, %function
f_truncate:
.LFB44:
	.loc 1 4403 1
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI122:
	sub	sp, sp, #28
.LCFI123:
	str	r0, [sp, #4]
	.loc 1 4409 8
	ldr	r3, [sp, #4]
	add	r2, sp, #12
	mov	r1, r2
	mov	r0, r3
	bl	validate
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 4410 5
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L476
	.loc 1 4410 27 discriminator 2
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #17]
	strb	r3, [sp, #23]
	.loc 1 4410 19 discriminator 2
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L477
.L476:
	.loc 1 4410 64 discriminator 3
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	b	.L487
.L477:
	.loc 1 4411 10
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	.loc 1 4411 17
	and	r3, r3, #2
	.loc 1 4411 5
	cmp	r3, #0
	bne	.L479
	.loc 1 4411 33 discriminator 1
	movs	r3, #7
	b	.L487
.L479:
	.loc 1 4413 13
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #12]
	.loc 1 4413 26
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #20]
	.loc 1 4413 5
	cmp	r2, r3
	bls	.L480
	.loc 1 4414 9
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #20]
	.loc 1 4414 6
	cmp	r3, #0
	bne	.L481
	.loc 1 4415 10
	ldr	r0, [sp, #4]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #8]
	movs	r2, #0
	mov	r1, r3
	bl	remove_chain
	mov	r3, r0
	strb	r3, [sp, #23]
	.loc 1 4416 19
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	b	.L482
.L481:
	.loc 1 4418 10
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	mov	r1, r3
	mov	r0, r2
	bl	get_fat
	str	r0, [sp, #16]
	.loc 1 4419 8
	movs	r3, #0
	strb	r3, [sp, #23]
	.loc 1 4420 7
	ldr	r3, [sp, #16]
	cmp	r3, #-1
	bne	.L483
	.loc 1 4420 31 discriminator 1
	movs	r3, #1
	strb	r3, [sp, #23]
.L483:
	.loc 1 4421 7
	ldr	r3, [sp, #16]
	cmp	r3, #1
	bne	.L484
	.loc 1 4421 22 discriminator 1
	movs	r3, #2
	strb	r3, [sp, #23]
.L484:
	.loc 1 4422 7
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L482
	.loc 1 4422 32 discriminator 1
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #20]
	.loc 1 4422 21 discriminator 1
	ldr	r2, [sp, #16]
	cmp	r2, r3
	bcs	.L482
	.loc 1 4423 11
	ldr	r0, [sp, #4]
	ldr	r3, [sp, #4]
	ldr	r3, [r3, #24]
	mov	r2, r3
	ldr	r1, [sp, #16]
	bl	remove_chain
	mov	r3, r0
	strb	r3, [sp, #23]
.L482:
	.loc 1 4426 23
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #20]
	.loc 1 4426 19
	ldr	r3, [sp, #4]
	str	r2, [r3, #12]
	.loc 1 4427 12
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	orr	r3, r3, #64
	uxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3, #16]
	.loc 1 4429 6
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L485
	.loc 1 4429 26 discriminator 1
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	.loc 1 4429 20 discriminator 1
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L485
	.loc 1 4430 21
	ldr	r3, [sp, #12]
	.loc 1 4430 8
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	.loc 1 4430 30
	ldr	r3, [sp, #4]
	add	r1, r3, #40
	.loc 1 4430 8
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #28]
	movs	r3, #1
	bl	disk_write
	mov	r3, r0
	.loc 1 4430 7
	cmp	r3, #0
	beq	.L486
	.loc 1 4431 9
	movs	r3, #1
	strb	r3, [sp, #23]
	b	.L485
.L486:
	.loc 1 4433 14
	ldr	r3, [sp, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	and	r3, r3, #127
	uxtb	r2, r3
	ldr	r3, [sp, #4]
	strb	r2, [r3, #16]
.L485:
	.loc 1 4437 6
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L480
	.loc 1 4437 31 discriminator 1
	ldr	r3, [sp, #4]
	ldrb	r2, [sp, #23]
	strb	r2, [r3, #17]
	.loc 1 4437 53 discriminator 1
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
	b	.L487
.L480:
	.loc 1 4440 9
	ldrb	r3, [sp, #23]	@ zero_extendqisi2
.L487:
	.loc 1 4441 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #28
.LCFI124:
	@ sp needed
	ldr	pc, [sp], #4
.LFE44:
	.size	f_truncate, .-f_truncate
	.section	.text.f_unlink,"ax",%progbits
	.align	1
	.global	f_unlink
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_unlink, %function
f_unlink:
.LFB45:
	.loc 1 4453 1
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI125:
	sub	sp, sp, #116
.LCFI126:
	str	r0, [sp, #4]
	.loc 1 4456 8
	movs	r3, #0
	str	r3, [sp, #104]
	.loc 1 4465 8
	add	r1, sp, #12
	add	r3, sp, #4
	movs	r2, #2
	mov	r0, r3
	bl	find_volume
	mov	r3, r0
	strb	r3, [sp, #111]
	.loc 1 4466 12
	ldr	r3, [sp, #12]
	str	r3, [sp, #60]
	.loc 1 4467 5
	ldrb	r3, [sp, #111]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L489
	.loc 1 4469 9
	ldr	r2, [sp, #4]
	add	r3, sp, #60
	mov	r1, r2
	mov	r0, r3
	bl	follow_path
	mov	r3, r0
	strb	r3, [sp, #111]
	.loc 1 4476 6
	ldrb	r3, [sp, #111]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L489
	.loc 1 4477 13
	ldrb	r3, [sp, #103]	@ zero_extendqisi2
	.loc 1 4477 8
	sxtb	r3, r3
	.loc 1 4477 7
	cmp	r3, #0
	bge	.L490
	.loc 1 4478 9
	movs	r3, #6
	strb	r3, [sp, #111]
	b	.L491
.L490:
	.loc 1 4480 15
	ldrb	r3, [sp, #66]	@ zero_extendqisi2
	.loc 1 4480 21
	and	r3, r3, #1
	.loc 1 4480 8
	cmp	r3, #0
	beq	.L491
	.loc 1 4481 10
	movs	r3, #7
	strb	r3, [sp, #111]
.L491:
	.loc 1 4484 7
	ldrb	r3, [sp, #111]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L492
	.loc 1 4494 14
	ldr	r3, [sp, #12]
	.loc 1 4494 29
	ldr	r2, [sp, #88]
	.loc 1 4494 14
	mov	r1, r2
	mov	r0, r3
	bl	ld_clust
	str	r0, [sp, #104]
	.loc 1 4496 15
	ldrb	r3, [sp, #66]	@ zero_extendqisi2
	.loc 1 4496 21
	and	r3, r3, #16
	.loc 1 4496 8
	cmp	r3, #0
	beq	.L492
	.loc 1 4503 18
	ldr	r3, [sp, #12]
	str	r3, [sp, #16]
	.loc 1 4504 22
	ldr	r3, [sp, #104]
	str	r3, [sp, #24]
	.loc 1 4511 13
	add	r3, sp, #16
	movs	r1, #0
	mov	r0, r3
	bl	dir_sdi
	mov	r3, r0
	strb	r3, [sp, #111]
	.loc 1 4512 10
	ldrb	r3, [sp, #111]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L492
	.loc 1 4513 14
	add	r3, sp, #16
	movs	r1, #0
	mov	r0, r3
	bl	dir_read
	mov	r3, r0
	strb	r3, [sp, #111]
	.loc 1 4514 11
	ldrb	r3, [sp, #111]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L493
	.loc 1 4514 30 discriminator 1
	movs	r3, #7
	strb	r3, [sp, #111]
.L493:
	.loc 1 4515 11
	ldrb	r3, [sp, #111]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L492
	.loc 1 4515 35 discriminator 1
	movs	r3, #0
	strb	r3, [sp, #111]
.L492:
	.loc 1 4520 7
	ldrb	r3, [sp, #111]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L489
	.loc 1 4521 11
	add	r3, sp, #60
	mov	r0, r3
	bl	dir_remove
	mov	r3, r0
	strb	r3, [sp, #111]
	.loc 1 4522 8
	ldrb	r3, [sp, #111]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L494
	.loc 1 4522 22 discriminator 1
	ldr	r3, [sp, #104]
	cmp	r3, #0
	beq	.L494
	.loc 1 4526 12
	add	r3, sp, #60
	movs	r2, #0
	ldr	r1, [sp, #104]
	mov	r0, r3
	bl	remove_chain
	mov	r3, r0
	strb	r3, [sp, #111]
.L494:
	.loc 1 4529 8
	ldrb	r3, [sp, #111]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L489
	.loc 1 4529 29 discriminator 1
	ldr	r3, [sp, #12]
	mov	r0, r3
	bl	sync_fs
	mov	r3, r0
	strb	r3, [sp, #111]
.L489:
	.loc 1 4535 9
	ldrb	r3, [sp, #111]	@ zero_extendqisi2
	.loc 1 4536 1
	mov	r0, r3
	add	sp, sp, #116
.LCFI127:
	@ sp needed
	ldr	pc, [sp], #4
.LFE45:
	.size	f_unlink, .-f_unlink
	.section	.text.f_mkdir,"ax",%progbits
	.align	1
	.global	f_mkdir
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_mkdir, %function
f_mkdir:
.LFB46:
	.loc 1 4548 1
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI128:
	sub	sp, sp, #92
.LCFI129:
	str	r0, [sp, #4]
	.loc 1 4559 8
	add	r1, sp, #12
	add	r3, sp, #4
	movs	r2, #2
	mov	r0, r3
	bl	find_volume
	mov	r3, r0
	strb	r3, [sp, #87]
	.loc 1 4560 12
	ldr	r3, [sp, #12]
	str	r3, [sp, #16]
	.loc 1 4561 5
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L497
	.loc 1 4563 9
	ldr	r2, [sp, #4]
	add	r3, sp, #16
	mov	r1, r2
	mov	r0, r3
	bl	follow_path
	mov	r3, r0
	strb	r3, [sp, #87]
	.loc 1 4564 6
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L498
	.loc 1 4564 25 discriminator 1
	movs	r3, #8
	strb	r3, [sp, #87]
.L498:
	.loc 1 4568 6
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L497
	.loc 1 4569 10
	add	r3, sp, #16
	movs	r1, #0
	mov	r0, r3
	bl	create_chain
	str	r0, [sp, #68]
	.loc 1 4570 30
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #10]
	.loc 1 4570 38
	lsls	r3, r3, #9
	.loc 1 4570 19
	str	r3, [sp, #28]
	.loc 1 4571 8
	movs	r3, #0
	strb	r3, [sp, #87]
	.loc 1 4572 7
	ldr	r3, [sp, #68]
	cmp	r3, #0
	bne	.L499
	.loc 1 4572 22 discriminator 1
	movs	r3, #7
	strb	r3, [sp, #87]
.L499:
	.loc 1 4573 7
	ldr	r3, [sp, #68]
	cmp	r3, #1
	bne	.L500
	.loc 1 4573 22 discriminator 1
	movs	r3, #2
	strb	r3, [sp, #87]
.L500:
	.loc 1 4574 7
	ldr	r3, [sp, #68]
	cmp	r3, #-1
	bne	.L501
	.loc 1 4574 31 discriminator 1
	movs	r3, #1
	strb	r3, [sp, #87]
.L501:
	.loc 1 4575 7
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L502
	.loc 1 4575 28 discriminator 1
	ldr	r3, [sp, #12]
	mov	r0, r3
	bl	sync_window
	mov	r3, r0
	strb	r3, [sp, #87]
.L502:
	.loc 1 4576 7
	ldr	r3, .L512
	str	r3, [sp, #64]
	.loc 1 4577 7
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L503
	.loc 1 4578 11
	ldr	r3, [sp, #12]
	ldr	r1, [sp, #68]
	mov	r0, r3
	bl	clust2sect
	str	r0, [sp, #76]
	.loc 1 4579 13
	ldr	r3, [sp, #12]
	.loc 1 4579 9
	adds	r3, r3, #48
	str	r3, [sp, #60]
	.loc 1 4580 5
	mov	r2, #512
	movs	r1, #0
	ldr	r0, [sp, #60]
	bl	mem_set
	.loc 1 4582 6
	movs	r2, #11
	movs	r1, #32
	ldr	r0, [sp, #60]
	bl	mem_set
	.loc 1 4583 13
	ldr	r3, [sp, #60]
	movs	r2, #46
	strb	r2, [r3]
	.loc 1 4584 9
	ldr	r3, [sp, #60]
	adds	r3, r3, #11
	.loc 1 4584 14
	movs	r2, #16
	strb	r2, [r3]
	.loc 1 4585 6
	ldr	r3, [sp, #60]
	adds	r3, r3, #22
	ldr	r1, [sp, #64]
	mov	r0, r3
	bl	st_dword
	.loc 1 4586 6
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #68]
	ldr	r1, [sp, #60]
	mov	r0, r3
	bl	st_clust
	.loc 1 4587 18
	ldr	r3, [sp, #60]
	adds	r3, r3, #32
	.loc 1 4587 6
	movs	r2, #32
	ldr	r1, [sp, #60]
	mov	r0, r3
	bl	mem_cpy
	.loc 1 4588 9
	ldr	r3, [sp, #60]
	adds	r3, r3, #33
	.loc 1 4588 18
	movs	r2, #46
	strb	r2, [r3]
	.loc 1 4588 29
	ldr	r3, [sp, #24]
	str	r3, [sp, #72]
	.loc 1 4589 12
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4589 9
	cmp	r3, #3
	bne	.L504
	.loc 1 4589 39 discriminator 1
	ldr	r3, [sp, #12]
	ldr	r3, [r3, #36]
	.loc 1 4589 27 discriminator 1
	ldr	r2, [sp, #72]
	cmp	r2, r3
	bne	.L504
	.loc 1 4589 54 discriminator 2
	movs	r3, #0
	str	r3, [sp, #72]
.L504:
	.loc 1 4590 6
	ldr	r0, [sp, #12]
	ldr	r3, [sp, #60]
	adds	r3, r3, #32
	ldr	r2, [sp, #72]
	mov	r1, r3
	bl	st_clust
	.loc 1 4592 16
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #10]
	.loc 1 4592 12
	str	r3, [sp, #80]
	.loc 1 4592 5
	b	.L505
.L507:
	.loc 1 4593 23
	ldr	r3, [sp, #76]
	adds	r2, r3, #1
	str	r2, [sp, #76]
	.loc 1 4593 8
	ldr	r2, [sp, #12]
	.loc 1 4593 18
	str	r3, [r2, #44]
	.loc 1 4594 8
	ldr	r3, [sp, #12]
	.loc 1 4594 16
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 1 4595 12
	ldr	r3, [sp, #12]
	mov	r0, r3
	bl	sync_window
	mov	r3, r0
	strb	r3, [sp, #87]
	.loc 1 4596 9
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L511
	.loc 1 4597 6 discriminator 2
	mov	r2, #512
	movs	r1, #0
	ldr	r0, [sp, #60]
	bl	mem_set
	.loc 1 4592 29 discriminator 2
	ldr	r3, [sp, #80]
	subs	r3, r3, #1
	str	r3, [sp, #80]
.L505:
	.loc 1 4592 5 discriminator 1
	ldr	r3, [sp, #80]
	cmp	r3, #0
	bne	.L507
	b	.L503
.L511:
	.loc 1 4596 6
	nop
.L503:
	.loc 1 4600 7
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L508
	.loc 1 4600 28 discriminator 1
	add	r3, sp, #16
	mov	r0, r3
	bl	dir_register
	mov	r3, r0
	strb	r3, [sp, #87]
.L508:
	.loc 1 4601 7
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L509
	.loc 1 4614 10
	ldr	r3, [sp, #44]
	str	r3, [sp, #60]
	.loc 1 4615 6
	ldr	r3, [sp, #60]
	adds	r3, r3, #22
	ldr	r1, [sp, #64]
	mov	r0, r3
	bl	st_dword
	.loc 1 4616 6
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #68]
	ldr	r1, [sp, #60]
	mov	r0, r3
	bl	st_clust
	.loc 1 4617 9
	ldr	r3, [sp, #60]
	adds	r3, r3, #11
	.loc 1 4617 14
	movs	r2, #16
	strb	r2, [r3]
	.loc 1 4618 8
	ldr	r3, [sp, #12]
	.loc 1 4618 16
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 1 4620 8
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L497
	.loc 1 4620 29 discriminator 1
	ldr	r3, [sp, #12]
	mov	r0, r3
	bl	sync_fs
	mov	r3, r0
	strb	r3, [sp, #87]
	b	.L497
.L509:
	.loc 1 4622 5
	add	r3, sp, #16
	movs	r2, #0
	ldr	r1, [sp, #68]
	mov	r0, r3
	bl	remove_chain
.L497:
	.loc 1 4628 9
	ldrb	r3, [sp, #87]	@ zero_extendqisi2
	.loc 1 4629 1
	mov	r0, r3
	add	sp, sp, #92
.LCFI130:
	@ sp needed
	ldr	pc, [sp], #4
.L513:
	.align	2
.L512:
	.word	1210122240
.LFE46:
	.size	f_mkdir, .-f_mkdir
	.section	.text.f_rename,"ax",%progbits
	.align	1
	.global	f_rename
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_rename, %function
f_rename:
.LFB47:
	.loc 1 4642 1
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
.LCFI131:
	sub	sp, sp, #136
.LCFI132:
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 4651 2
	mov	r3, sp
	mov	r0, r3
	bl	get_ldnumber
	.loc 1 4652 8
	add	r1, sp, #32
	add	r3, sp, #4
	movs	r2, #2
	mov	r0, r3
	bl	find_volume
	mov	r3, r0
	strb	r3, [sp, #135]
	.loc 1 4653 5
	ldrb	r3, [sp, #135]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L515
	.loc 1 4654 14
	ldr	r3, [sp, #32]
	str	r3, [sp, #80]
	.loc 1 4656 9
	ldr	r2, [sp, #4]
	add	r3, sp, #80
	mov	r1, r2
	mov	r0, r3
	bl	follow_path
	mov	r3, r0
	strb	r3, [sp, #135]
	.loc 1 4657 6
	ldrb	r3, [sp, #135]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L516
	.loc 1 4657 30 discriminator 1
	ldrb	r3, [sp, #123]	@ zero_extendqisi2
	.loc 1 4657 35 discriminator 1
	and	r3, r3, #160
	.loc 1 4657 20 discriminator 1
	cmp	r3, #0
	beq	.L516
	.loc 1 4657 57 discriminator 2
	movs	r3, #6
	strb	r3, [sp, #135]
.L516:
	.loc 1 4661 6
	ldrb	r3, [sp, #135]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L515
	.loc 1 4688 21
	ldr	r3, [sp, #108]
	.loc 1 4688 26
	add	r1, r3, #11
	.loc 1 4688 5
	add	r3, sp, #8
	movs	r2, #21
	mov	r0, r3
	bl	mem_cpy
	.loc 1 4689 5
	add	r1, sp, #80
	add	r3, sp, #36
	movs	r2, #44
	mov	r0, r3
	bl	mem_cpy
	.loc 1 4690 11
	ldr	r2, [sp]
	add	r3, sp, #36
	mov	r1, r2
	mov	r0, r3
	bl	follow_path
	mov	r3, r0
	strb	r3, [sp, #135]
	.loc 1 4691 8
	ldrb	r3, [sp, #135]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L517
	.loc 1 4692 20
	ldr	r2, [sp, #44]
	.loc 1 4692 38
	ldr	r3, [sp, #88]
	.loc 1 4692 84
	cmp	r2, r3
	bne	.L518
	.loc 1 4692 52 discriminator 1
	ldr	r2, [sp, #52]
	.loc 1 4692 64 discriminator 1
	ldr	r3, [sp, #96]
	.loc 1 4692 46 discriminator 1
	cmp	r2, r3
	bne	.L518
	.loc 1 4692 84 discriminator 3
	movs	r3, #4
	b	.L519
.L518:
	.loc 1 4692 84 is_stmt 0 discriminator 4
	movs	r3, #8
.L519:
	.loc 1 4692 10 is_stmt 1 discriminator 6
	strb	r3, [sp, #135]
.L517:
	.loc 1 4694 8
	ldrb	r3, [sp, #135]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L520
	.loc 1 4695 12
	add	r3, sp, #36
	mov	r0, r3
	bl	dir_register
	mov	r3, r0
	strb	r3, [sp, #135]
	.loc 1 4696 9
	ldrb	r3, [sp, #135]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L520
	.loc 1 4697 11
	ldr	r3, [sp, #64]
	str	r3, [sp, #128]
	.loc 1 4698 19
	ldr	r3, [sp, #128]
	add	r0, r3, #13
	.loc 1 4698 7
	add	r3, sp, #8
	adds	r3, r3, #2
	movs	r2, #19
	mov	r1, r3
	bl	mem_cpy
	.loc 1 4699 20
	ldrb	r2, [sp, #8]	@ zero_extendqisi2
	.loc 1 4699 10
	ldr	r3, [sp, #128]
	adds	r3, r3, #11
	.loc 1 4699 15
	orr	r2, r2, #32
	uxtb	r2, r2
	strb	r2, [r3]
	.loc 1 4700 9
	ldr	r3, [sp, #32]
	.loc 1 4700 17
	movs	r2, #1
	strb	r2, [r3, #3]
	.loc 1 4701 15
	ldr	r3, [sp, #128]
	adds	r3, r3, #11
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4701 20
	and	r3, r3, #16
	.loc 1 4701 10
	cmp	r3, #0
	beq	.L520
	.loc 1 4701 38 discriminator 1
	ldr	r2, [sp, #88]
	.loc 1 4701 56 discriminator 1
	ldr	r3, [sp, #44]
	.loc 1 4701 28 discriminator 1
	cmp	r2, r3
	beq	.L520
	.loc 1 4702 13
	ldr	r4, [sp, #32]
	ldr	r3, [sp, #32]
	ldr	r1, [sp, #128]
	mov	r0, r3
	bl	ld_clust
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	clust2sect
	str	r0, [sp, #124]
	.loc 1 4703 11
	ldr	r3, [sp, #124]
	cmp	r3, #0
	bne	.L521
	.loc 1 4704 13
	movs	r3, #2
	strb	r3, [sp, #135]
	b	.L520
.L521:
	.loc 1 4707 15
	ldr	r3, [sp, #32]
	ldr	r1, [sp, #124]
	mov	r0, r3
	bl	move_window
	mov	r3, r0
	strb	r3, [sp, #135]
	.loc 1 4708 17
	ldr	r3, [sp, #32]
	.loc 1 4708 15
	adds	r3, r3, #48
	.loc 1 4708 13
	adds	r3, r3, #32
	str	r3, [sp, #128]
	.loc 1 4709 12
	ldrb	r3, [sp, #135]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L520
	.loc 1 4709 32 discriminator 1
	ldr	r3, [sp, #128]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	.loc 1 4709 26 discriminator 1
	cmp	r3, #46
	bne	.L520
	.loc 1 4710 10
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #44]
	ldr	r1, [sp, #128]
	mov	r0, r3
	bl	st_clust
	.loc 1 4711 12
	ldr	r3, [sp, #32]
	.loc 1 4711 20
	movs	r2, #1
	strb	r2, [r3, #3]
.L520:
	.loc 1 4718 7
	ldrb	r3, [sp, #135]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L515
	.loc 1 4719 11
	add	r3, sp, #80
	mov	r0, r3
	bl	dir_remove
	mov	r3, r0
	strb	r3, [sp, #135]
	.loc 1 4720 8
	ldrb	r3, [sp, #135]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L515
	.loc 1 4721 12
	ldr	r3, [sp, #32]
	mov	r0, r3
	bl	sync_fs
	mov	r3, r0
	strb	r3, [sp, #135]
.L515:
	.loc 1 4729 9
	ldrb	r3, [sp, #135]	@ zero_extendqisi2
	.loc 1 4730 1
	mov	r0, r3
	add	sp, sp, #136
.LCFI133:
	@ sp needed
	pop	{r4, pc}
.LFE47:
	.size	f_rename, .-f_rename
	.section .rodata
	.align	2
.LC1:
	.ascii	"\353\376\220MSDOS5.0\000"
	.align	2
.LC2:
	.ascii	"NO NAME    FAT32   \000"
	.align	2
.LC3:
	.ascii	"NO NAME    FAT     \000"
	.section	.text.f_mkfs,"ax",%progbits
	.align	1
	.global	f_mkfs
	.syntax unified
	.thumb
	.thumb_func
	.fpu fpv4-sp-d16
	.type	f_mkfs, %function
f_mkfs:
.LFB48:
	.loc 1 5218 1
	@ args = 4, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
.LCFI134:
	sub	sp, sp, #116
.LCFI135:
	str	r0, [sp, #12]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r1
	strb	r3, [sp, #11]
	.loc 1 5219 13
	movs	r3, #1
	str	r3, [sp, #68]
	.loc 1 5220 13
	mov	r3, #512
	str	r3, [sp, #64]
	.loc 1 5237 8
	add	r3, sp, #12
	mov	r0, r3
	bl	get_ldnumber
	str	r0, [sp, #60]
	.loc 1 5238 5
	ldr	r3, [sp, #60]
	cmp	r3, #0
	bge	.L524
	.loc 1 5238 22 discriminator 1
	movs	r3, #11
	b	.L598
.L524:
	.loc 1 5239 11
	ldr	r2, .L603
	ldr	r3, [sp, #60]
	ldr	r3, [r2, r3, lsl #2]
	.loc 1 5239 5
	cmp	r3, #0
	beq	.L526
	.loc 1 5239 23 discriminator 1
	ldr	r2, .L603
	ldr	r3, [sp, #60]
	ldr	r3, [r2, r3, lsl #2]
	.loc 1 5239 38 discriminator 1
	movs	r2, #0
	strb	r2, [r3]
.L526:
	.loc 1 5240 7
	ldr	r3, [sp, #60]
	strb	r3, [sp, #59]
	.loc 1 5241 7
	movs	r3, #0
	strb	r3, [sp, #58]
	.loc 1 5244 9
	ldrb	r3, [sp, #59]	@ zero_extendqisi2
	mov	r0, r3
	bl	disk_initialize
	mov	r3, r0
	strb	r3, [sp, #57]
	.loc 1 5245 11
	ldrb	r3, [sp, #57]	@ zero_extendqisi2
	and	r3, r3, #1
	.loc 1 5245 5
	cmp	r3, #0
	beq	.L527
	.loc 1 5245 26 discriminator 1
	movs	r3, #3
	b	.L598
.L527:
	.loc 1 5246 11
	ldrb	r3, [sp, #57]	@ zero_extendqisi2
	and	r3, r3, #4
	.loc 1 5246 5
	cmp	r3, #0
	beq	.L528
	.loc 1 5246 26 discriminator 1
	movs	r3, #10
	b	.L598
.L528:
	.loc 1 5247 6
	add	r2, sp, #20
	ldrb	r3, [sp, #59]	@ zero_extendqisi2
	movs	r1, #3
	mov	r0, r3
	bl	disk_ioctl
	mov	r3, r0
	.loc 1 5247 5
	cmp	r3, #0
	bne	.L529
	.loc 1 5247 48 discriminator 2
	ldr	r3, [sp, #20]
	.loc 1 5247 45 discriminator 2
	cmp	r3, #0
	beq	.L529
	.loc 1 5247 66 discriminator 4
	ldr	r3, [sp, #20]
	.loc 1 5247 56 discriminator 4
	cmp	r3, #32768
	bhi	.L529
	.loc 1 5247 95 discriminator 6
	ldr	r3, [sp, #20]
	subs	r2, r3, #1
	.loc 1 5247 85 discriminator 6
	ldr	r3, [sp, #20]
	ands	r3, r3, r2
	.loc 1 5247 74 discriminator 6
	cmp	r3, #0
	beq	.L530
.L529:
	.loc 1 5247 109 discriminator 7
	movs	r3, #1
	str	r3, [sp, #20]
.L530:
	.loc 1 5252 5
	mov	r3, #512
	strh	r3, [sp, #54]	@ movhi
	.loc 1 5254 5
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L531
	.loc 1 5254 21 discriminator 1
	ldrh	r3, [sp, #54]
	.loc 1 5254 15 discriminator 1
	ldr	r2, [sp, #4]
	cmp	r2, r3
	bcc	.L532
.L531:
	.loc 1 5254 27 discriminator 4
	ldr	r3, [sp, #4]
	cmp	r3, #16777216
	bhi	.L532
	.loc 1 5254 58 discriminator 6
	ldr	r3, [sp, #4]
	subs	r2, r3, #1
	.loc 1 5254 52 discriminator 6
	ldr	r3, [sp, #4]
	ands	r3, r3, r2
	.loc 1 5254 45 discriminator 6
	cmp	r3, #0
	beq	.L533
.L532:
	.loc 1 5254 72 discriminator 7
	movs	r3, #19
	b	.L598
.L533:
	.loc 1 5255 5
	ldrh	r3, [sp, #54]
	ldr	r2, [sp, #4]
	udiv	r3, r2, r3
	str	r3, [sp, #4]
	.loc 1 5258 6
	ldr	r3, [sp]
	str	r3, [sp, #48]
	.loc 1 5259 15
	ldrh	r3, [sp, #54]
	.loc 1 5259 9
	ldr	r2, [sp, #120]
	udiv	r3, r2, r3
	str	r3, [sp, #44]
	.loc 1 5260 19
	ldrh	r2, [sp, #54]
	.loc 1 5260 10
	ldr	r3, [sp, #44]
	mul	r3, r2, r3
	str	r3, [sp, #40]
	.loc 1 5261 5
	ldr	r3, [sp, #40]
	cmp	r3, #0
	bne	.L534
	.loc 1 5261 23 discriminator 1
	movs	r3, #14
	b	.L598
.L534:
	.loc 1 5274 7
	add	r2, sp, #16
	ldrb	r3, [sp, #59]	@ zero_extendqisi2
	movs	r1, #1
	mov	r0, r3
	bl	disk_ioctl
	mov	r3, r0
	.loc 1 5274 6
	cmp	r3, #0
	beq	.L535
	.loc 1 5274 54 discriminator 1
	movs	r3, #1
	b	.L598
.L535:
	.loc 1 5275 16
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	and	r3, r3, #8
	.loc 1 5275 28
	cmp	r3, #0
	beq	.L536
	.loc 1 5275 28 is_stmt 0 discriminator 1
	movs	r3, #0
	b	.L537
.L536:
	.loc 1 5275 28 discriminator 2
	movs	r3, #63
.L537:
	.loc 1 5275 9 is_stmt 1 discriminator 4
	str	r3, [sp, #36]
	.loc 1 5276 14 discriminator 4
	ldr	r3, [sp, #16]
	.loc 1 5276 6 discriminator 4
	ldr	r2, [sp, #36]
	cmp	r2, r3
	bls	.L538
	.loc 1 5276 30 discriminator 1
	movs	r3, #14
	b	.L598
.L538:
	.loc 1 5277 10
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #36]
	subs	r3, r2, r3
	str	r3, [sp, #16]
	.loc 1 5279 13
	ldr	r3, [sp, #16]
	.loc 1 5279 5
	cmp	r3, #127
	bhi	.L539
	.loc 1 5279 27 discriminator 1
	movs	r3, #14
	b	.L598
.L539:
	.loc 1 5288 6
	ldr	r3, [sp, #4]
	cmp	r3, #128
	bls	.L540
	.loc 1 5288 24 discriminator 1
	movs	r3, #19
	b	.L598
.L540:
	.loc 1 5289 11
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	and	r3, r3, #2
	.loc 1 5289 6
	cmp	r3, #0
	beq	.L541
	.loc 1 5290 13
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	and	r3, r3, #7
	.loc 1 5290 7
	cmp	r3, #2
	beq	.L542
	.loc 1 5290 38 discriminator 1
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	and	r3, r3, #1
	.loc 1 5290 29 discriminator 1
	cmp	r3, #0
	bne	.L541
.L542:
	.loc 1 5291 9
	movs	r3, #3
	strb	r3, [sp, #79]
	.loc 1 5291 5
	b	.L570
.L541:
	.loc 1 5294 13
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	and	r3, r3, #1
	.loc 1 5294 6
	cmp	r3, #0
	bne	.L544
	.loc 1 5294 29 discriminator 1
	movs	r3, #19
	b	.L598
.L544:
	.loc 1 5295 7
	movs	r3, #2
	strb	r3, [sp, #79]
.L570:
	.loc 1 5462 8
	ldr	r3, [sp, #4]
	str	r3, [sp, #80]
	.loc 1 5464 7
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L545
	.loc 1 5465 8
	ldr	r3, [sp, #80]
	cmp	r3, #0
	bne	.L546
	.loc 1 5466 17
	ldr	r3, [sp, #16]
	.loc 1 5466 8
	lsrs	r3, r3, #17
	str	r3, [sp, #92]
	.loc 1 5467 13
	movs	r3, #0
	str	r3, [sp, #72]
	.loc 1 5467 22
	movs	r3, #1
	str	r3, [sp, #80]
	.loc 1 5467 6
	b	.L547
.L548:
	.loc 1 5467 55 discriminator 4
	ldr	r3, [sp, #72]
	adds	r3, r3, #1
	str	r3, [sp, #72]
	.loc 1 5467 63 discriminator 4
	ldr	r3, [sp, #80]
	lsls	r3, r3, #1
	str	r3, [sp, #80]
.L547:
	.loc 1 5467 32 discriminator 1
	ldr	r2, .L603+4
	ldr	r3, [sp, #72]
	ldrh	r3, [r2, r3, lsl #1]
	.loc 1 5467 6 discriminator 1
	cmp	r3, #0
	beq	.L546
	.loc 1 5467 44 discriminator 3
	ldr	r2, .L603+4
	ldr	r3, [sp, #72]
	ldrh	r3, [r2, r3, lsl #1]
	mov	r2, r3
	.loc 1 5467 36 discriminator 3
	ldr	r3, [sp, #92]
	cmp	r3, r2
	bcs	.L548
.L546:
	.loc 1 5469 21
	ldr	r2, [sp, #16]
	.loc 1 5469 12
	ldr	r3, [sp, #80]
	udiv	r3, r2, r3
	str	r3, [sp, #32]
	.loc 1 5470 26
	ldr	r3, [sp, #32]
	adds	r3, r3, #2
	lsls	r2, r3, #2
	.loc 1 5470 30
	ldrh	r3, [sp, #54]
	add	r3, r3, r2
	.loc 1 5470 35
	subs	r2, r3, #1
	.loc 1 5470 40
	ldrh	r3, [sp, #54]
	.loc 1 5470 12
	udiv	r3, r2, r3
	str	r3, [sp, #104]
	.loc 1 5471 12
	movs	r3, #32
	str	r3, [sp, #84]
	.loc 1 5472 12
	movs	r3, #0
	str	r3, [sp, #108]
	.loc 1 5473 8
	ldr	r3, [sp, #32]
	movw	r2, #65525
	cmp	r3, r2
	bls	.L549
	.loc 1 5473 26 discriminator 2
	ldr	r3, [sp, #32]
	ldr	r2, .L603+8
	cmp	r3, r2
	bls	.L550
.L549:
	.loc 1 5473 56 discriminator 3
	movs	r3, #14
	b	.L598
.L545:
	.loc 1 5475 8
	ldr	r3, [sp, #80]
	cmp	r3, #0
	bne	.L551
	.loc 1 5476 17
	ldr	r3, [sp, #16]
	.loc 1 5476 8
	lsrs	r3, r3, #12
	str	r3, [sp, #92]
	.loc 1 5477 13
	movs	r3, #0
	str	r3, [sp, #72]
	.loc 1 5477 22
	movs	r3, #1
	str	r3, [sp, #80]
	.loc 1 5477 6
	b	.L552
.L553:
	.loc 1 5477 51 discriminator 4
	ldr	r3, [sp, #72]
	adds	r3, r3, #1
	str	r3, [sp, #72]
	.loc 1 5477 59 discriminator 4
	ldr	r3, [sp, #80]
	lsls	r3, r3, #1
	str	r3, [sp, #80]
.L552:
	.loc 1 5477 30 discriminator 1
	ldr	r2, .L603+12
	ldr	r3, [sp, #72]
	ldrh	r3, [r2, r3, lsl #1]
	.loc 1 5477 6 discriminator 1
	cmp	r3, #0
	beq	.L551
	.loc 1 5477 40 discriminator 3
	ldr	r2, .L603+12
	ldr	r3, [sp, #72]
	ldrh	r3, [r2, r3, lsl #1]
	mov	r2, r3
	.loc 1 5477 34 discriminator 3
	ldr	r3, [sp, #92]
	cmp	r3, r2
	bcs	.L553
.L551:
	.loc 1 5479 21
	ldr	r2, [sp, #16]
	.loc 1 5479 12
	ldr	r3, [sp, #80]
	udiv	r3, r2, r3
	str	r3, [sp, #32]
	.loc 1 5480 8
	ldr	r3, [sp, #32]
	movw	r2, #4085
	cmp	r3, r2
	bls	.L554
	.loc 1 5481 21
	ldr	r3, [sp, #32]
	adds	r3, r3, #2
	.loc 1 5481 8
	lsls	r3, r3, #1
	str	r3, [sp, #92]
	b	.L555
.L604:
	.align	2
.L603:
	.word	FatFs
	.word	cst32.5681
	.word	268435445
	.word	cst.5680
.L554:
	.loc 1 5483 10
	movs	r3, #1
	strb	r3, [sp, #79]
	.loc 1 5484 18
	ldr	r2, [sp, #32]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	.loc 1 5484 22
	adds	r3, r3, #1
	.loc 1 5484 27
	lsrs	r3, r3, #1
	.loc 1 5484 8
	adds	r3, r3, #3
	str	r3, [sp, #92]
.L555:
	.loc 1 5486 17
	ldrh	r2, [sp, #54]
	ldr	r3, [sp, #92]
	add	r3, r3, r2
	.loc 1 5486 22
	subs	r2, r3, #1
	.loc 1 5486 27
	ldrh	r3, [sp, #54]
	.loc 1 5486 12
	udiv	r3, r2, r3
	str	r3, [sp, #104]
	.loc 1 5487 12
	movs	r3, #1
	str	r3, [sp, #84]
	.loc 1 5488 31
	ldr	r3, [sp, #64]
	lsls	r2, r3, #5
	.loc 1 5488 36
	ldrh	r3, [sp, #54]
	.loc 1 5488 12
	udiv	r3, r2, r3
	str	r3, [sp, #108]
.L550:
	.loc 1 5490 10
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #84]
	add	r3, r3, r2
	str	r3, [sp, #88]
	.loc 1 5491 28
	ldr	r3, [sp, #104]
	ldr	r2, [sp, #68]
	mul	r2, r2, r3
	.loc 1 5491 19
	ldr	r3, [sp, #88]
	add	r3, r3, r2
	.loc 1 5491 11
	ldr	r2, [sp, #108]
	add	r3, r3, r2
	str	r3, [sp, #28]
	.loc 1 5494 17
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #28]
	add	r3, r3, r2
	.loc 1 5494 26
	subs	r2, r3, #1
	.loc 1 5494 33
	ldr	r3, [sp, #20]
	rsbs	r3, r3, #0
	.loc 1 5494 31
	ands	r2, r2, r3
	.loc 1 5494 6
	ldr	r3, [sp, #28]
	subs	r3, r2, r3
	str	r3, [sp, #92]
	.loc 1 5495 7
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L556
	.loc 1 5496 12
	ldr	r2, [sp, #84]
	ldr	r3, [sp, #92]
	add	r3, r3, r2
	str	r3, [sp, #84]
	.loc 1 5496 24
	ldr	r2, [sp, #88]
	ldr	r3, [sp, #92]
	add	r3, r3, r2
	str	r3, [sp, #88]
	b	.L557
.L556:
	.loc 1 5498 17
	ldr	r2, [sp, #92]
	ldr	r3, [sp, #68]
	udiv	r3, r2, r3
	.loc 1 5498 12
	ldr	r2, [sp, #104]
	add	r3, r3, r2
	str	r3, [sp, #104]
.L557:
	.loc 1 5502 30
	ldr	r3, [sp, #80]
	lsls	r2, r3, #4
	.loc 1 5502 24
	ldr	r3, [sp, #28]
	add	r2, r2, r3
	.loc 1 5502 35
	ldr	r3, [sp, #36]
	subs	r2, r2, r3
	.loc 1 5502 15
	ldr	r3, [sp, #16]
	.loc 1 5502 7
	cmp	r2, r3
	bls	.L558
	.loc 1 5502 51 discriminator 1
	movs	r3, #14
	b	.L598
.L558:
	.loc 1 5503 21
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #84]
	subs	r2, r2, r3
	.loc 1 5503 39
	ldr	r3, [sp, #104]
	ldr	r1, [sp, #68]
	mul	r3, r1, r3
	.loc 1 5503 30
	subs	r2, r2, r3
	.loc 1 5503 48
	ldr	r3, [sp, #108]
	subs	r2, r2, r3
	.loc 1 5503 11
	ldr	r3, [sp, #80]
	udiv	r3, r2, r3
	str	r3, [sp, #32]
	.loc 1 5504 7
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L559
	.loc 1 5505 8
	ldr	r3, [sp, #32]
	movw	r2, #65525
	cmp	r3, r2
	bhi	.L559
	.loc 1 5506 9
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L560
	.loc 1 5506 21 discriminator 1
	ldr	r3, [sp, #80]
	lsrs	r3, r3, #1
	str	r3, [sp, #4]
	.loc 1 5506 14 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L599
.L560:
	.loc 1 5507 13
	movs	r3, #14
	b	.L598
.L559:
	.loc 1 5510 7
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L562
	.loc 1 5511 8
	ldr	r3, [sp, #32]
	movw	r2, #65525
	cmp	r3, r2
	bls	.L563
	.loc 1 5512 9
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L564
	.loc 1 5512 22 discriminator 1
	ldr	r3, [sp, #80]
	lsls	r3, r3, #1
	.loc 1 5512 14 discriminator 1
	cmp	r3, #64
	bhi	.L564
	.loc 1 5513 10
	ldr	r3, [sp, #80]
	lsls	r3, r3, #1
	str	r3, [sp, #4]
	.loc 1 5513 7
	b	.L561
.L564:
	.loc 1 5515 15
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	and	r3, r3, #2
	.loc 1 5515 9
	cmp	r3, #0
	beq	.L565
	.loc 1 5516 11
	movs	r3, #3
	strb	r3, [sp, #79]
	.loc 1 5516 7
	b	.L561
.L565:
	.loc 1 5518 9
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L566
	.loc 1 5518 21 discriminator 1
	ldr	r3, [sp, #80]
	lsls	r3, r3, #1
	str	r3, [sp, #4]
	.loc 1 5518 14 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r3, #128
	bls	.L600
.L566:
	.loc 1 5519 13
	movs	r3, #14
	b	.L598
.L563:
	.loc 1 5521 8
	ldr	r3, [sp, #32]
	movw	r2, #4085
	cmp	r3, r2
	bhi	.L562
	.loc 1 5522 9
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.L567
	.loc 1 5522 21 discriminator 1
	ldr	r3, [sp, #80]
	lsls	r3, r3, #1
	str	r3, [sp, #4]
	.loc 1 5522 14 discriminator 1
	ldr	r3, [sp, #4]
	cmp	r3, #128
	bls	.L601
.L567:
	.loc 1 5523 13
	movs	r3, #14
	b	.L598
.L562:
	.loc 1 5526 7
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L602
	.loc 1 5526 17 discriminator 1
	ldr	r3, [sp, #32]
	movw	r2, #4085
	cmp	r3, r2
	bls	.L602
	.loc 1 5526 43 discriminator 2
	movs	r3, #14
	b	.L598
.L599:
	.loc 1 5506 6
	nop
	b	.L570
.L600:
	.loc 1 5518 6
	nop
	b	.L570
.L601:
	.loc 1 5522 6
	nop
.L561:
	.loc 1 5462 8
	b	.L570
.L602:
	.loc 1 5529 4
	nop
	.loc 1 5537 3
	ldrh	r3, [sp, #54]
	mov	r2, r3
	movs	r1, #0
	ldr	r0, [sp, #48]
	bl	mem_set
	.loc 1 5538 3
	movs	r2, #11
	ldr	r1, .L605
	ldr	r0, [sp, #48]
	bl	mem_cpy
	.loc 1 5539 3
	ldr	r3, [sp, #48]
	adds	r3, r3, #11
	ldrh	r2, [sp, #54]
	mov	r1, r2
	mov	r0, r3
	bl	st_word
	.loc 1 5540 6
	ldr	r3, [sp, #48]
	adds	r3, r3, #13
	.loc 1 5540 13
	ldr	r2, [sp, #80]
	uxtb	r2, r2
	.loc 1 5540 11
	strb	r2, [r3]
	.loc 1 5541 3
	ldr	r3, [sp, #48]
	adds	r3, r3, #14
	ldr	r2, [sp, #84]
	uxth	r2, r2
	mov	r1, r2
	mov	r0, r3
	bl	st_word
	.loc 1 5542 6
	ldr	r3, [sp, #48]
	adds	r3, r3, #16
	.loc 1 5542 13
	ldr	r2, [sp, #68]
	uxtb	r2, r2
	.loc 1 5542 11
	strb	r2, [r3]
	.loc 1 5543 3
	ldr	r3, [sp, #48]
	add	r2, r3, #17
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L571
	.loc 1 5543 3 is_stmt 0 discriminator 1
	ldr	r3, [sp, #64]
	uxth	r3, r3
	b	.L572
.L571:
	.loc 1 5543 3 discriminator 2
	movs	r3, #0
.L572:
	.loc 1 5543 3 discriminator 4
	mov	r1, r3
	mov	r0, r2
	bl	st_word
	.loc 1 5544 14 is_stmt 1 discriminator 4
	ldr	r3, [sp, #16]
	.loc 1 5544 6 discriminator 4
	cmp	r3, #65536
	bcs	.L573
	.loc 1 5545 4
	ldr	r3, [sp, #48]
	adds	r3, r3, #19
	ldr	r2, [sp, #16]
	uxth	r2, r2
	mov	r1, r2
	mov	r0, r3
	bl	st_word
	b	.L574
.L573:
	.loc 1 5547 4
	ldr	r3, [sp, #48]
	adds	r3, r3, #32
	ldr	r2, [sp, #16]
	mov	r1, r2
	mov	r0, r3
	bl	st_dword
.L574:
	.loc 1 5549 6
	ldr	r3, [sp, #48]
	adds	r3, r3, #21
	.loc 1 5549 11
	movs	r2, #248
	strb	r2, [r3]
	.loc 1 5550 3
	ldr	r3, [sp, #48]
	adds	r3, r3, #24
	movs	r1, #63
	mov	r0, r3
	bl	st_word
	.loc 1 5551 3
	ldr	r3, [sp, #48]
	adds	r3, r3, #26
	movs	r1, #255
	mov	r0, r3
	bl	st_word
	.loc 1 5552 3
	ldr	r3, [sp, #48]
	adds	r3, r3, #28
	ldr	r1, [sp, #36]
	mov	r0, r3
	bl	st_dword
	.loc 1 5553 6
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L575
	.loc 1 5554 4
	ldr	r3, [sp, #48]
	adds	r3, r3, #67
	ldr	r1, .L605+4
	mov	r0, r3
	bl	st_dword
	.loc 1 5555 4
	ldr	r3, [sp, #48]
	adds	r3, r3, #36
	ldr	r1, [sp, #104]
	mov	r0, r3
	bl	st_dword
	.loc 1 5556 4
	ldr	r3, [sp, #48]
	adds	r3, r3, #44
	movs	r1, #2
	mov	r0, r3
	bl	st_dword
	.loc 1 5557 4
	ldr	r3, [sp, #48]
	adds	r3, r3, #48
	movs	r1, #1
	mov	r0, r3
	bl	st_word
	.loc 1 5558 4
	ldr	r3, [sp, #48]
	adds	r3, r3, #50
	movs	r1, #6
	mov	r0, r3
	bl	st_word
	.loc 1 5559 7
	ldr	r3, [sp, #48]
	adds	r3, r3, #64
	.loc 1 5559 12
	movs	r2, #128
	strb	r2, [r3]
	.loc 1 5560 7
	ldr	r3, [sp, #48]
	adds	r3, r3, #66
	.loc 1 5560 12
	movs	r2, #41
	strb	r2, [r3]
	.loc 1 5561 16
	ldr	r3, [sp, #48]
	adds	r3, r3, #71
	.loc 1 5561 4
	movs	r2, #19
	ldr	r1, .L605+8
	mov	r0, r3
	bl	mem_cpy
	b	.L576
.L575:
	.loc 1 5563 4
	ldr	r3, [sp, #48]
	adds	r3, r3, #39
	ldr	r1, .L605+4
	mov	r0, r3
	bl	st_dword
	.loc 1 5564 4
	ldr	r3, [sp, #48]
	adds	r3, r3, #22
	ldr	r2, [sp, #104]
	uxth	r2, r2
	mov	r1, r2
	mov	r0, r3
	bl	st_word
	.loc 1 5565 7
	ldr	r3, [sp, #48]
	adds	r3, r3, #36
	.loc 1 5565 12
	movs	r2, #128
	strb	r2, [r3]
	.loc 1 5566 7
	ldr	r3, [sp, #48]
	adds	r3, r3, #38
	.loc 1 5566 12
	movs	r2, #41
	strb	r2, [r3]
	.loc 1 5567 16
	ldr	r3, [sp, #48]
	adds	r3, r3, #43
	.loc 1 5567 4
	movs	r2, #19
	ldr	r1, .L605+12
	mov	r0, r3
	bl	mem_cpy
.L576:
	.loc 1 5569 3
	ldr	r3, [sp, #48]
	add	r3, r3, #510
	movw	r1, #43605
	mov	r0, r3
	bl	st_word
	.loc 1 5570 7
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	movs	r3, #1
	ldr	r2, [sp, #36]
	ldr	r1, [sp, #48]
	bl	disk_write
	mov	r3, r0
	.loc 1 5570 6
	cmp	r3, #0
	beq	.L577
	.loc 1 5570 57 discriminator 1
	movs	r3, #1
	b	.L598
.L577:
	.loc 1 5573 6
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L578
	.loc 1 5574 4
	ldr	r3, [sp, #36]
	adds	r2, r3, #6
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	movs	r3, #1
	ldr	r1, [sp, #48]
	bl	disk_write
	.loc 1 5575 4
	ldrh	r3, [sp, #54]
	mov	r2, r3
	movs	r1, #0
	ldr	r0, [sp, #48]
	bl	mem_set
	.loc 1 5576 4
	ldr	r1, .L605+16
	ldr	r0, [sp, #48]
	bl	st_dword
	.loc 1 5577 4
	ldr	r3, [sp, #48]
	add	r3, r3, #484
	ldr	r1, .L605+20
	mov	r0, r3
	bl	st_dword
	.loc 1 5578 4
	ldr	r3, [sp, #48]
	add	r2, r3, #488
	ldr	r3, [sp, #32]
	subs	r3, r3, #1
	mov	r1, r3
	mov	r0, r2
	bl	st_dword
	.loc 1 5579 4
	ldr	r3, [sp, #48]
	add	r3, r3, #492
	movs	r1, #2
	mov	r0, r3
	bl	st_dword
	.loc 1 5580 4
	ldr	r3, [sp, #48]
	add	r3, r3, #510
	movw	r1, #43605
	mov	r0, r3
	bl	st_word
	.loc 1 5581 4
	ldr	r3, [sp, #36]
	adds	r2, r3, #7
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	movs	r3, #1
	ldr	r1, [sp, #48]
	bl	disk_write
	.loc 1 5582 4
	ldr	r3, [sp, #36]
	adds	r2, r3, #1
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	movs	r3, #1
	ldr	r1, [sp, #48]
	bl	disk_write
.L578:
	.loc 1 5586 3
	ldr	r2, [sp, #40]
	movs	r1, #0
	ldr	r0, [sp, #48]
	bl	mem_set
	.loc 1 5587 8
	ldr	r3, [sp, #88]
	str	r3, [sp, #100]
	.loc 1 5588 10
	movs	r3, #0
	str	r3, [sp, #72]
	.loc 1 5588 3
	b	.L579
.L586:
	.loc 1 5589 7
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L580
	.loc 1 5590 5
	mvn	r1, #7
	ldr	r0, [sp, #48]
	bl	st_dword
	.loc 1 5591 5
	ldr	r3, [sp, #48]
	adds	r3, r3, #4
	mov	r1, #-1
	mov	r0, r3
	bl	st_dword
	.loc 1 5592 5
	ldr	r3, [sp, #48]
	adds	r3, r3, #8
	mvn	r1, #-268435456
	mov	r0, r3
	bl	st_dword
	b	.L581
.L580:
	.loc 1 5594 5
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L582
	.loc 1 5594 5 is_stmt 0 discriminator 1
	ldr	r3, .L605+24
	b	.L583
.L582:
	.loc 1 5594 5 discriminator 2
	mvn	r3, #7
.L583:
	.loc 1 5594 5 discriminator 4
	mov	r1, r3
	ldr	r0, [sp, #48]
	bl	st_dword
.L581:
	.loc 1 5596 10 is_stmt 1
	ldr	r3, [sp, #104]
	str	r3, [sp, #96]
.L585:
	.loc 1 5598 7
	ldr	r2, [sp, #96]
	ldr	r3, [sp, #44]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	str	r3, [sp, #92]
	.loc 1 5599 9
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	ldr	r3, [sp, #92]
	ldr	r2, [sp, #100]
	ldr	r1, [sp, #48]
	bl	disk_write
	mov	r3, r0
	.loc 1 5599 8
	cmp	r3, #0
	beq	.L584
	.loc 1 5599 64 discriminator 1
	movs	r3, #1
	b	.L598
.L584:
	.loc 1 5600 5
	ldrh	r3, [sp, #54]
	mov	r2, r3
	movs	r1, #0
	ldr	r0, [sp, #48]
	bl	mem_set
	.loc 1 5601 10
	ldr	r2, [sp, #100]
	ldr	r3, [sp, #92]
	add	r3, r3, r2
	str	r3, [sp, #100]
	.loc 1 5601 22
	ldr	r2, [sp, #96]
	ldr	r3, [sp, #92]
	subs	r3, r2, r3
	str	r3, [sp, #96]
	.loc 1 5602 4
	ldr	r3, [sp, #96]
	cmp	r3, #0
	bne	.L585
	.loc 1 5588 28 discriminator 2
	ldr	r3, [sp, #72]
	adds	r3, r3, #1
	str	r3, [sp, #72]
.L579:
	.loc 1 5588 3 discriminator 1
	ldr	r2, [sp, #72]
	ldr	r3, [sp, #68]
	cmp	r2, r3
	bcc	.L586
	.loc 1 5606 28
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L587
	.loc 1 5606 28 is_stmt 0 discriminator 1
	ldr	r3, [sp, #80]
	b	.L588
.L587:
	.loc 1 5606 28 discriminator 2
	ldr	r3, [sp, #108]
.L588:
	.loc 1 5606 9 is_stmt 1 discriminator 4
	str	r3, [sp, #96]
.L590:
	.loc 1 5608 6
	ldr	r2, [sp, #96]
	ldr	r3, [sp, #44]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	str	r3, [sp, #92]
	.loc 1 5609 8
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	ldr	r3, [sp, #92]
	ldr	r2, [sp, #100]
	ldr	r1, [sp, #48]
	bl	disk_write
	mov	r3, r0
	.loc 1 5609 7
	cmp	r3, #0
	beq	.L589
	.loc 1 5609 63 discriminator 1
	movs	r3, #1
	b	.L598
.L606:
	.align	2
.L605:
	.word	.LC1
	.word	1210122240
	.word	.LC2
	.word	.LC3
	.word	1096897106
	.word	1631679090
	.word	16777208
.L589:
	.loc 1 5610 9
	ldr	r2, [sp, #100]
	ldr	r3, [sp, #92]
	add	r3, r3, r2
	str	r3, [sp, #100]
	.loc 1 5610 21
	ldr	r2, [sp, #96]
	ldr	r3, [sp, #92]
	subs	r3, r2, r3
	str	r3, [sp, #96]
	.loc 1 5611 3
	ldr	r3, [sp, #96]
	cmp	r3, #0
	bne	.L590
	.loc 1 5618 6
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L591
	.loc 1 5619 8
	movs	r3, #12
	strb	r3, [sp, #78]
	b	.L592
.L591:
	.loc 1 5621 15
	ldr	r3, [sp, #16]
	.loc 1 5621 7
	cmp	r3, #65536
	bcc	.L593
	.loc 1 5622 9
	movs	r3, #6
	strb	r3, [sp, #78]
	b	.L592
.L593:
	.loc 1 5624 9
	ldrb	r3, [sp, #79]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L594
	.loc 1 5624 9 is_stmt 0 discriminator 1
	movs	r3, #4
	b	.L595
.L594:
	.loc 1 5624 9 discriminator 2
	movs	r3, #1
.L595:
	.loc 1 5624 9 discriminator 4
	strb	r3, [sp, #78]
.L592:
	.loc 1 5635 13 is_stmt 1
	ldrb	r3, [sp, #11]	@ zero_extendqisi2
	and	r3, r3, #8
	.loc 1 5635 6
	cmp	r3, #0
	bne	.L596
	.loc 1 5637 4
	ldrh	r3, [sp, #54]
	mov	r2, r3
	movs	r1, #0
	ldr	r0, [sp, #48]
	bl	mem_set
	.loc 1 5638 4
	ldr	r3, [sp, #48]
	add	r3, r3, #510
	movw	r1, #43605
	mov	r0, r3
	bl	st_word
	.loc 1 5639 8
	ldr	r3, [sp, #48]
	add	r3, r3, #446
	str	r3, [sp, #24]
	.loc 1 5640 11
	ldr	r3, [sp, #24]
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 5641 7
	ldr	r3, [sp, #24]
	adds	r3, r3, #1
	.loc 1 5641 11
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 5642 7
	ldr	r3, [sp, #24]
	adds	r3, r3, #2
	.loc 1 5642 11
	movs	r2, #1
	strb	r2, [r3]
	.loc 1 5643 7
	ldr	r3, [sp, #24]
	adds	r3, r3, #3
	.loc 1 5643 11
	movs	r2, #0
	strb	r2, [r3]
	.loc 1 5644 7
	ldr	r3, [sp, #24]
	adds	r3, r3, #4
	.loc 1 5644 11
	ldrb	r2, [sp, #78]
	strb	r2, [r3]
	.loc 1 5645 15
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #36]
	add	r2, r2, r3
	.loc 1 5645 6
	ldr	r3, .L607
	umull	r1, r3, r3, r2
	subs	r2, r2, r3
	lsrs	r2, r2, #1
	add	r3, r3, r2
	lsrs	r3, r3, #13
	str	r3, [sp, #92]
	.loc 1 5646 7
	ldr	r3, [sp, #24]
	adds	r3, r3, #5
	.loc 1 5646 11
	movs	r2, #254
	strb	r2, [r3]
	.loc 1 5647 22
	ldr	r3, [sp, #92]
	lsrs	r3, r3, #2
	.loc 1 5647 13
	uxtb	r2, r3
	.loc 1 5647 7
	ldr	r3, [sp, #24]
	adds	r3, r3, #6
	.loc 1 5647 13
	orr	r2, r2, #63
	uxtb	r2, r2
	.loc 1 5647 11
	strb	r2, [r3]
	.loc 1 5648 7
	ldr	r3, [sp, #24]
	adds	r3, r3, #7
	.loc 1 5648 13
	ldr	r2, [sp, #92]
	uxtb	r2, r2
	.loc 1 5648 11
	strb	r2, [r3]
	.loc 1 5649 4
	ldr	r3, [sp, #24]
	adds	r3, r3, #8
	ldr	r1, [sp, #36]
	mov	r0, r3
	bl	st_dword
	.loc 1 5650 4
	ldr	r3, [sp, #24]
	adds	r3, r3, #12
	ldr	r2, [sp, #16]
	mov	r1, r2
	mov	r0, r3
	bl	st_dword
	.loc 1 5651 8
	ldrb	r0, [sp, #59]	@ zero_extendqisi2
	movs	r3, #1
	movs	r2, #0
	ldr	r1, [sp, #48]
	bl	disk_write
	mov	r3, r0
	.loc 1 5651 7
	cmp	r3, #0
	beq	.L596
	.loc 1 5651 54 discriminator 1
	movs	r3, #1
	b	.L598
.L596:
	.loc 1 5655 6
	ldrb	r3, [sp, #59]	@ zero_extendqisi2
	movs	r2, #0
	movs	r1, #0
	mov	r0, r3
	bl	disk_ioctl
	mov	r3, r0
	.loc 1 5655 5
	cmp	r3, #0
	beq	.L597
	.loc 1 5655 47 discriminator 1
	movs	r3, #1
	b	.L598
.L597:
	.loc 1 5657 9
	movs	r3, #0
.L598:
	.loc 1 5658 1 discriminator 1
	mov	r0, r3
	add	sp, sp, #116
.LCFI136:
	@ sp needed
	ldr	pc, [sp], #4
.L608:
	.align	2
.L607:
	.word	85284443
.LFE48:
	.size	f_mkfs, .-f_mkfs
	.section	.rodata.cst32.5681,"a"
	.align	2
	.type	cst32.5681, %object
	.size	cst32.5681, 14
cst32.5681:
	.short	1
	.short	2
	.short	4
	.short	8
	.short	16
	.short	32
	.short	0
	.section	.rodata.cst.5680,"a"
	.align	2
	.type	cst.5680, %object
	.size	cst.5680, 14
cst.5680:
	.short	1
	.short	4
	.short	16
	.short	64
	.short	256
	.short	512
	.short	0
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
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI3-.LCFI2
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE2:
.LSFDE4:
	.4byte	.LEFDE4-.LASFDE4
.LASFDE4:
	.4byte	.Lframe0
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.byte	0x4
	.4byte	.LCFI4-.LFB2
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI5-.LCFI4
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
	.4byte	.LCFI6-.LFB3
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI7-.LCFI6
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE6:
.LSFDE8:
	.4byte	.LEFDE8-.LASFDE8
.LASFDE8:
	.4byte	.Lframe0
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.byte	0x4
	.4byte	.LCFI8-.LFB4
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI9-.LCFI8
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE8:
.LSFDE10:
	.4byte	.LEFDE10-.LASFDE10
.LASFDE10:
	.4byte	.Lframe0
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.byte	0x4
	.4byte	.LCFI10-.LFB5
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI11-.LCFI10
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE10:
.LSFDE12:
	.4byte	.LEFDE12-.LASFDE12
.LASFDE12:
	.4byte	.Lframe0
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.byte	0x4
	.4byte	.LCFI12-.LFB6
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI13-.LCFI12
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE12:
.LSFDE14:
	.4byte	.LEFDE14-.LASFDE14
.LASFDE14:
	.4byte	.Lframe0
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.byte	0x4
	.4byte	.LCFI14-.LFB7
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI15-.LCFI14
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE14:
.LSFDE16:
	.4byte	.LEFDE16-.LASFDE16
.LASFDE16:
	.4byte	.Lframe0
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.byte	0x4
	.4byte	.LCFI16-.LFB8
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI17-.LCFI16
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI18-.LCFI17
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE16:
.LSFDE18:
	.4byte	.LEFDE18-.LASFDE18
.LASFDE18:
	.4byte	.Lframe0
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.byte	0x4
	.4byte	.LCFI19-.LFB9
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI20-.LCFI19
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI21-.LCFI20
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE18:
.LSFDE20:
	.4byte	.LEFDE20-.LASFDE20
.LASFDE20:
	.4byte	.Lframe0
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.byte	0x4
	.4byte	.LCFI22-.LFB10
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI23-.LCFI22
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI24-.LCFI23
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE20:
.LSFDE22:
	.4byte	.LEFDE22-.LASFDE22
.LASFDE22:
	.4byte	.Lframe0
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.byte	0x4
	.4byte	.LCFI25-.LFB11
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	.LCFI26-.LCFI25
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE22:
.LSFDE24:
	.4byte	.LEFDE24-.LASFDE24
.LASFDE24:
	.4byte	.Lframe0
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.byte	0x4
	.4byte	.LCFI27-.LFB12
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI28-.LCFI27
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI29-.LCFI28
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE24:
.LSFDE26:
	.4byte	.LEFDE26-.LASFDE26
.LASFDE26:
	.4byte	.Lframe0
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.byte	0x4
	.4byte	.LCFI30-.LFB13
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI31-.LCFI30
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI32-.LCFI31
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
	.4byte	.LCFI33-.LFB14
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI34-.LCFI33
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI35-.LCFI34
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE28:
.LSFDE30:
	.4byte	.LEFDE30-.LASFDE30
.LASFDE30:
	.4byte	.Lframe0
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.byte	0x4
	.4byte	.LCFI36-.LFB15
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI37-.LCFI36
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI38-.LCFI37
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE30:
.LSFDE32:
	.4byte	.LEFDE32-.LASFDE32
.LASFDE32:
	.4byte	.Lframe0
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.byte	0x4
	.4byte	.LCFI39-.LFB16
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI40-.LCFI39
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI41-.LCFI40
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE32:
.LSFDE34:
	.4byte	.LEFDE34-.LASFDE34
.LASFDE34:
	.4byte	.Lframe0
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.byte	0x4
	.4byte	.LCFI42-.LFB17
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI43-.LCFI42
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI44-.LCFI43
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE34:
.LSFDE36:
	.4byte	.LEFDE36-.LASFDE36
.LASFDE36:
	.4byte	.Lframe0
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.byte	0x4
	.4byte	.LCFI45-.LFB18
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI46-.LCFI45
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI47-.LCFI46
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE36:
.LSFDE38:
	.4byte	.LEFDE38-.LASFDE38
.LASFDE38:
	.4byte	.Lframe0
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.byte	0x4
	.4byte	.LCFI48-.LFB19
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI49-.LCFI48
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI50-.LCFI49
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE38:
.LSFDE40:
	.4byte	.LEFDE40-.LASFDE40
.LASFDE40:
	.4byte	.Lframe0
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.byte	0x4
	.4byte	.LCFI51-.LFB20
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI52-.LCFI51
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI53-.LCFI52
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE40:
.LSFDE42:
	.4byte	.LEFDE42-.LASFDE42
.LASFDE42:
	.4byte	.Lframe0
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.byte	0x4
	.4byte	.LCFI54-.LFB21
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI55-.LCFI54
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI56-.LCFI55
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE42:
.LSFDE44:
	.4byte	.LEFDE44-.LASFDE44
.LASFDE44:
	.4byte	.Lframe0
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.byte	0x4
	.4byte	.LCFI57-.LFB22
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI58-.LCFI57
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI59-.LCFI58
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE44:
.LSFDE46:
	.4byte	.LEFDE46-.LASFDE46
.LASFDE46:
	.4byte	.Lframe0
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.byte	0x4
	.4byte	.LCFI60-.LFB23
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI61-.LCFI60
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI62-.LCFI61
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE46:
.LSFDE48:
	.4byte	.LEFDE48-.LASFDE48
.LASFDE48:
	.4byte	.Lframe0
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.byte	0x4
	.4byte	.LCFI63-.LFB24
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI64-.LCFI63
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI65-.LCFI64
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE48:
.LSFDE50:
	.4byte	.LEFDE50-.LASFDE50
.LASFDE50:
	.4byte	.Lframe0
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.byte	0x4
	.4byte	.LCFI66-.LFB25
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI67-.LCFI66
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI68-.LCFI67
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE50:
.LSFDE52:
	.4byte	.LEFDE52-.LASFDE52
.LASFDE52:
	.4byte	.Lframe0
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.byte	0x4
	.4byte	.LCFI69-.LFB26
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI70-.LCFI69
	.byte	0xe
	.uleb128 0x30
	.byte	0x4
	.4byte	.LCFI71-.LCFI70
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE52:
.LSFDE54:
	.4byte	.LEFDE54-.LASFDE54
.LASFDE54:
	.4byte	.Lframe0
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.byte	0x4
	.4byte	.LCFI72-.LFB27
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI73-.LCFI72
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI74-.LCFI73
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE54:
.LSFDE56:
	.4byte	.LEFDE56-.LASFDE56
.LASFDE56:
	.4byte	.Lframe0
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.byte	0x4
	.4byte	.LCFI75-.LFB28
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI76-.LCFI75
	.byte	0xe
	.uleb128 0
	.align	2
.LEFDE56:
.LSFDE58:
	.4byte	.LEFDE58-.LASFDE58
.LASFDE58:
	.4byte	.Lframe0
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.byte	0x4
	.4byte	.LCFI77-.LFB29
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI78-.LCFI77
	.byte	0xe
	.uleb128 0x10
	.byte	0x4
	.4byte	.LCFI79-.LCFI78
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE58:
.LSFDE60:
	.4byte	.LEFDE60-.LASFDE60
.LASFDE60:
	.4byte	.Lframe0
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.byte	0x4
	.4byte	.LCFI80-.LFB30
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI81-.LCFI80
	.byte	0xe
	.uleb128 0x60
	.byte	0x4
	.4byte	.LCFI82-.LCFI81
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE60:
.LSFDE62:
	.4byte	.LEFDE62-.LASFDE62
.LASFDE62:
	.4byte	.Lframe0
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.byte	0x4
	.4byte	.LCFI83-.LFB31
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI84-.LCFI83
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI85-.LCFI84
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE62:
.LSFDE64:
	.4byte	.LEFDE64-.LASFDE64
.LASFDE64:
	.4byte	.Lframe0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.byte	0x4
	.4byte	.LCFI86-.LFB32
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI87-.LCFI86
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI88-.LCFI87
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE64:
.LSFDE66:
	.4byte	.LEFDE66-.LASFDE66
.LASFDE66:
	.4byte	.Lframe0
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.byte	0x4
	.4byte	.LCFI89-.LFB33
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI90-.LCFI89
	.byte	0xe
	.uleb128 0x68
	.byte	0x4
	.4byte	.LCFI91-.LCFI90
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
	.4byte	.LCFI92-.LFB34
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI93-.LCFI92
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI94-.LCFI93
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE68:
.LSFDE70:
	.4byte	.LEFDE70-.LASFDE70
.LASFDE70:
	.4byte	.Lframe0
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.byte	0x4
	.4byte	.LCFI95-.LFB35
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI96-.LCFI95
	.byte	0xe
	.uleb128 0x38
	.byte	0x4
	.4byte	.LCFI97-.LCFI96
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE70:
.LSFDE72:
	.4byte	.LEFDE72-.LASFDE72
.LASFDE72:
	.4byte	.Lframe0
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.byte	0x4
	.4byte	.LCFI98-.LFB36
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI99-.LCFI98
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI100-.LCFI99
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE72:
.LSFDE74:
	.4byte	.LEFDE74-.LASFDE74
.LASFDE74:
	.4byte	.Lframe0
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.byte	0x4
	.4byte	.LCFI101-.LFB37
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI102-.LCFI101
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI103-.LCFI102
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE74:
.LSFDE76:
	.4byte	.LEFDE76-.LASFDE76
.LASFDE76:
	.4byte	.Lframe0
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.byte	0x4
	.4byte	.LCFI104-.LFB38
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI105-.LCFI104
	.byte	0xe
	.uleb128 0x28
	.byte	0x4
	.4byte	.LCFI106-.LCFI105
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE76:
.LSFDE78:
	.4byte	.LEFDE78-.LASFDE78
.LASFDE78:
	.4byte	.Lframe0
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.byte	0x4
	.4byte	.LCFI107-.LFB39
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI108-.LCFI107
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI109-.LCFI108
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE78:
.LSFDE80:
	.4byte	.LEFDE80-.LASFDE80
.LASFDE80:
	.4byte	.Lframe0
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.byte	0x4
	.4byte	.LCFI110-.LFB40
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI111-.LCFI110
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI112-.LCFI111
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE80:
.LSFDE82:
	.4byte	.LEFDE82-.LASFDE82
.LASFDE82:
	.4byte	.Lframe0
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.byte	0x4
	.4byte	.LCFI113-.LFB41
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI114-.LCFI113
	.byte	0xe
	.uleb128 0x18
	.byte	0x4
	.4byte	.LCFI115-.LCFI114
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE82:
.LSFDE84:
	.4byte	.LEFDE84-.LASFDE84
.LASFDE84:
	.4byte	.Lframe0
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.byte	0x4
	.4byte	.LCFI116-.LFB42
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI117-.LCFI116
	.byte	0xe
	.uleb128 0x40
	.byte	0x4
	.4byte	.LCFI118-.LCFI117
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE84:
.LSFDE86:
	.4byte	.LEFDE86-.LASFDE86
.LASFDE86:
	.4byte	.Lframe0
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.byte	0x4
	.4byte	.LCFI119-.LFB43
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI120-.LCFI119
	.byte	0xe
	.uleb128 0x48
	.byte	0x4
	.4byte	.LCFI121-.LCFI120
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE86:
.LSFDE88:
	.4byte	.LEFDE88-.LASFDE88
.LASFDE88:
	.4byte	.Lframe0
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.byte	0x4
	.4byte	.LCFI122-.LFB44
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI123-.LCFI122
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	.LCFI124-.LCFI123
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE88:
.LSFDE90:
	.4byte	.LEFDE90-.LASFDE90
.LASFDE90:
	.4byte	.Lframe0
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.byte	0x4
	.4byte	.LCFI125-.LFB45
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI126-.LCFI125
	.byte	0xe
	.uleb128 0x78
	.byte	0x4
	.4byte	.LCFI127-.LCFI126
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE90:
.LSFDE92:
	.4byte	.LEFDE92-.LASFDE92
.LASFDE92:
	.4byte	.Lframe0
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.byte	0x4
	.4byte	.LCFI128-.LFB46
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI129-.LCFI128
	.byte	0xe
	.uleb128 0x60
	.byte	0x4
	.4byte	.LCFI130-.LCFI129
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE92:
.LSFDE94:
	.4byte	.LEFDE94-.LASFDE94
.LASFDE94:
	.4byte	.Lframe0
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.byte	0x4
	.4byte	.LCFI131-.LFB47
	.byte	0xe
	.uleb128 0x8
	.byte	0x84
	.uleb128 0x2
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI132-.LCFI131
	.byte	0xe
	.uleb128 0x90
	.byte	0x4
	.4byte	.LCFI133-.LCFI132
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
	.4byte	.LCFI134-.LFB48
	.byte	0xe
	.uleb128 0x4
	.byte	0x8e
	.uleb128 0x1
	.byte	0x4
	.4byte	.LCFI135-.LCFI134
	.byte	0xe
	.uleb128 0x78
	.byte	0x4
	.4byte	.LCFI136-.LCFI135
	.byte	0xe
	.uleb128 0x4
	.align	2
.LEFDE96:
	.text
.Letext0:
	.file 2 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\fatfs\\src\\diskio.h"
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
	.uleb128 0x2
	.byte	0x7
	.byte	0x1
	.4byte	0x4a
	.byte	0x2
	.byte	0x13
	.byte	0xe
	.4byte	0x4a
	.uleb128 0x3
	.4byte	.LASF0
	.byte	0
	.uleb128 0x3
	.4byte	.LASF1
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF2
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF3
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF4
	.byte	0x4
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0
	.file 3 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\fatfs\\src\\ff.h"
	.section	.debug_types,"G",%progbits,wt.a58a009c3e2232a0,comdat
	.4byte	0xa8
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xa5
	.byte	0x8a
	.byte	0
	.byte	0x9c
	.byte	0x3e
	.byte	0x22
	.byte	0x32
	.byte	0xa0
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x7
	.byte	0x1
	.4byte	0xa4
	.byte	0x3
	.byte	0xdc
	.byte	0xe
	.4byte	0xa4
	.uleb128 0x3
	.4byte	.LASF6
	.byte	0
	.uleb128 0x3
	.4byte	.LASF7
	.byte	0x1
	.uleb128 0x3
	.4byte	.LASF8
	.byte	0x2
	.uleb128 0x3
	.4byte	.LASF9
	.byte	0x3
	.uleb128 0x3
	.4byte	.LASF10
	.byte	0x4
	.uleb128 0x3
	.4byte	.LASF11
	.byte	0x5
	.uleb128 0x3
	.4byte	.LASF12
	.byte	0x6
	.uleb128 0x3
	.4byte	.LASF13
	.byte	0x7
	.uleb128 0x3
	.4byte	.LASF14
	.byte	0x8
	.uleb128 0x3
	.4byte	.LASF15
	.byte	0x9
	.uleb128 0x3
	.4byte	.LASF16
	.byte	0xa
	.uleb128 0x3
	.4byte	.LASF17
	.byte	0xb
	.uleb128 0x3
	.4byte	.LASF18
	.byte	0xc
	.uleb128 0x3
	.4byte	.LASF19
	.byte	0xd
	.uleb128 0x3
	.4byte	.LASF20
	.byte	0xe
	.uleb128 0x3
	.4byte	.LASF21
	.byte	0xf
	.uleb128 0x3
	.4byte	.LASF22
	.byte	0x10
	.uleb128 0x3
	.4byte	.LASF23
	.byte	0x11
	.uleb128 0x3
	.4byte	.LASF24
	.byte	0x12
	.uleb128 0x3
	.4byte	.LASF25
	.byte	0x13
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0
	.file 4 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\fatfs\\src\\integer.h"
	.section	.debug_types,"G",%progbits,wt.46ff29a5e6e16d7a,comdat
	.4byte	0xd4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x46
	.byte	0xff
	.byte	0x29
	.byte	0xa5
	.byte	0xe6
	.byte	0xe1
	.byte	0x6d
	.byte	0x7a
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x18
	.byte	0x3
	.byte	0xcb
	.byte	0x9
	.4byte	0x68
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.byte	0xcc
	.byte	0xa
	.4byte	0x68
	.byte	0
	.uleb128 0x6
	.4byte	.LASF27
	.byte	0x3
	.byte	0xcd
	.byte	0x7
	.4byte	0x74
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF28
	.byte	0x3
	.byte	0xce
	.byte	0x7
	.4byte	0x74
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF29
	.byte	0x3
	.byte	0xcf
	.byte	0x7
	.4byte	0x80
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF30
	.byte	0x3
	.byte	0xd4
	.byte	0x8
	.4byte	0x8c
	.byte	0x9
	.byte	0
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x3
	.byte	0x55
	.byte	0xf
	.4byte	0x9c
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x1a
	.byte	0x18
	.4byte	0xa8
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.4byte	0xaf
	.uleb128 0x8
	.4byte	0xb6
	.4byte	0x9c
	.uleb128 0x9
	.4byte	0xc2
	.byte	0xc
	.byte	0
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0x1f
	.byte	0x17
	.4byte	0xc9
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF35
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x3
	.byte	0x45
	.byte	0xe
	.4byte	0xd0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF37
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF38
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF39
	.byte	0
	.section	.debug_types,"G",%progbits,wt.090ea4b4add56514,comdat
	.4byte	0xc4
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x9
	.byte	0xe
	.byte	0xa4
	.byte	0xb4
	.byte	0xad
	.byte	0xd5
	.byte	0x65
	.byte	0x14
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x2c
	.byte	0x3
	.byte	0xb8
	.byte	0x9
	.4byte	0x74
	.uleb128 0xa
	.ascii	"obj\000"
	.byte	0x3
	.byte	0xb9
	.byte	0x8
	.4byte	0x74
	.byte	0
	.uleb128 0x6
	.4byte	.LASF40
	.byte	0x3
	.byte	0xba
	.byte	0x8
	.4byte	0x84
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x3
	.byte	0xbb
	.byte	0x8
	.4byte	0x84
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x3
	.byte	0xbc
	.byte	0x8
	.4byte	0x84
	.byte	0x18
	.uleb128 0xa
	.ascii	"dir\000"
	.byte	0x3
	.byte	0xbd
	.byte	0x8
	.4byte	0x90
	.byte	0x1c
	.uleb128 0xa
	.ascii	"fn\000"
	.byte	0x3
	.byte	0xbe
	.byte	0x7
	.4byte	0x96
	.byte	0x20
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x3
	.byte	0x9b
	.byte	0x3
	.byte	0x84
	.byte	0x1e
	.byte	0x1a
	.byte	0x95
	.byte	0xa6
	.byte	0xb2
	.byte	0x5b
	.byte	0x86
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0x1f
	.byte	0x17
	.4byte	0xa6
	.uleb128 0xc
	.byte	0x4
	.4byte	0xad
	.uleb128 0x8
	.4byte	0xad
	.4byte	0xa6
	.uleb128 0x9
	.4byte	0xb9
	.byte	0xb
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF38
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.4byte	0xc0
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF37
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.byte	0
	.section	.debug_types,"G",%progbits,wt.eaa86d484b17643f,comdat
	.4byte	0xfa
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0xea
	.byte	0xa8
	.byte	0x6d
	.byte	0x48
	.byte	0x4b
	.byte	0x17
	.byte	0x64
	.byte	0x3f
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xd
	.2byte	0x228
	.byte	0x3
	.byte	0xa1
	.byte	0x9
	.4byte	0x9d
	.uleb128 0xa
	.ascii	"obj\000"
	.byte	0x3
	.byte	0xa2
	.byte	0x8
	.4byte	0x9d
	.byte	0
	.uleb128 0x6
	.4byte	.LASF44
	.byte	0x3
	.byte	0xa3
	.byte	0x7
	.4byte	0xad
	.byte	0x10
	.uleb128 0xa
	.ascii	"err\000"
	.byte	0x3
	.byte	0xa4
	.byte	0x7
	.4byte	0xad
	.byte	0x11
	.uleb128 0x6
	.4byte	.LASF45
	.byte	0x3
	.byte	0xa5
	.byte	0xa
	.4byte	0xb9
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF41
	.byte	0x3
	.byte	0xa6
	.byte	0x8
	.4byte	0xc5
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF42
	.byte	0x3
	.byte	0xa7
	.byte	0x8
	.4byte	0xc5
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF46
	.byte	0x3
	.byte	0xa9
	.byte	0x8
	.4byte	0xc5
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF47
	.byte	0x3
	.byte	0xaa
	.byte	0x8
	.4byte	0xd1
	.byte	0x24
	.uleb128 0xa
	.ascii	"buf\000"
	.byte	0x3
	.byte	0xb0
	.byte	0x7
	.4byte	0xd7
	.byte	0x28
	.byte	0
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x3
	.byte	0x9b
	.byte	0x3
	.byte	0x84
	.byte	0x1e
	.byte	0x1a
	.byte	0x95
	.byte	0xa6
	.byte	0xb2
	.byte	0x5b
	.byte	0x86
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.4byte	0xe8
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x3
	.byte	0x55
	.byte	0xf
	.4byte	0xc5
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0x1f
	.byte	0x17
	.4byte	0xef
	.uleb128 0xc
	.byte	0x4
	.4byte	0xad
	.uleb128 0x8
	.4byte	0xad
	.4byte	0xe8
	.uleb128 0xe
	.4byte	0xf6
	.2byte	0x1ff
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF38
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF37
	.byte	0
	.section	.debug_types,"G",%progbits,wt.841e1a95a6b25b86,comdat
	.4byte	0xcb
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x84
	.byte	0x1e
	.byte	0x1a
	.byte	0x95
	.byte	0xa6
	.byte	0xb2
	.byte	0x5b
	.byte	0x86
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0x5
	.byte	0x10
	.byte	0x3
	.byte	0x8b
	.byte	0x9
	.4byte	0x73
	.uleb128 0xa
	.ascii	"fs\000"
	.byte	0x3
	.byte	0x8c
	.byte	0x9
	.4byte	0x73
	.byte	0
	.uleb128 0xa
	.ascii	"id\000"
	.byte	0x3
	.byte	0x8d
	.byte	0x7
	.4byte	0x79
	.byte	0x4
	.uleb128 0x6
	.4byte	.LASF48
	.byte	0x3
	.byte	0x8e
	.byte	0x7
	.4byte	0x85
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF49
	.byte	0x3
	.byte	0x8f
	.byte	0x7
	.4byte	0x85
	.byte	0x7
	.uleb128 0x6
	.4byte	.LASF50
	.byte	0x3
	.byte	0x90
	.byte	0x8
	.4byte	0x91
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF51
	.byte	0x3
	.byte	0x91
	.byte	0xa
	.4byte	0x9d
	.byte	0xc
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xa9
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x1a
	.byte	0x18
	.4byte	0xb9
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.4byte	0xc0
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0x1f
	.byte	0x17
	.4byte	0xc7
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x3
	.byte	0x55
	.byte	0xf
	.4byte	0x91
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x3
	.byte	0x85
	.byte	0x3
	.byte	0x31
	.byte	0x7b
	.byte	0xc5
	.byte	0xfe
	.byte	0x7d
	.byte	0xdc
	.byte	0xe7
	.byte	0xbe
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF35
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF38
	.byte	0
	.section	.debug_types,"G",%progbits,wt.317bc5fe7ddce7be,comdat
	.4byte	0x15f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.byte	0x31
	.byte	0x7b
	.byte	0xc5
	.byte	0xfe
	.byte	0x7d
	.byte	0xdc
	.byte	0xe7
	.byte	0xbe
	.4byte	0x1d
	.uleb128 0x1
	.byte	0xc
	.4byte	.Ldebug_line0
	.uleb128 0xd
	.2byte	0x230
	.byte	0x3
	.byte	0x5c
	.byte	0x9
	.4byte	0x111
	.uleb128 0x6
	.4byte	.LASF53
	.byte	0x3
	.byte	0x5d
	.byte	0x7
	.4byte	0x111
	.byte	0
	.uleb128 0xa
	.ascii	"drv\000"
	.byte	0x3
	.byte	0x5e
	.byte	0x7
	.4byte	0x111
	.byte	0x1
	.uleb128 0x6
	.4byte	.LASF54
	.byte	0x3
	.byte	0x5f
	.byte	0x7
	.4byte	0x111
	.byte	0x2
	.uleb128 0x6
	.4byte	.LASF55
	.byte	0x3
	.byte	0x60
	.byte	0x7
	.4byte	0x111
	.byte	0x3
	.uleb128 0x6
	.4byte	.LASF56
	.byte	0x3
	.byte	0x61
	.byte	0x7
	.4byte	0x111
	.byte	0x4
	.uleb128 0xa
	.ascii	"id\000"
	.byte	0x3
	.byte	0x62
	.byte	0x7
	.4byte	0x11d
	.byte	0x6
	.uleb128 0x6
	.4byte	.LASF57
	.byte	0x3
	.byte	0x63
	.byte	0x7
	.4byte	0x11d
	.byte	0x8
	.uleb128 0x6
	.4byte	.LASF58
	.byte	0x3
	.byte	0x64
	.byte	0x7
	.4byte	0x11d
	.byte	0xa
	.uleb128 0x6
	.4byte	.LASF59
	.byte	0x3
	.byte	0x72
	.byte	0x8
	.4byte	0x129
	.byte	0xc
	.uleb128 0x6
	.4byte	.LASF60
	.byte	0x3
	.byte	0x73
	.byte	0x8
	.4byte	0x129
	.byte	0x10
	.uleb128 0x6
	.4byte	.LASF61
	.byte	0x3
	.byte	0x7d
	.byte	0x8
	.4byte	0x129
	.byte	0x14
	.uleb128 0x6
	.4byte	.LASF26
	.byte	0x3
	.byte	0x7e
	.byte	0x8
	.4byte	0x129
	.byte	0x18
	.uleb128 0x6
	.4byte	.LASF62
	.byte	0x3
	.byte	0x7f
	.byte	0x8
	.4byte	0x129
	.byte	0x1c
	.uleb128 0x6
	.4byte	.LASF63
	.byte	0x3
	.byte	0x80
	.byte	0x8
	.4byte	0x129
	.byte	0x20
	.uleb128 0x6
	.4byte	.LASF64
	.byte	0x3
	.byte	0x81
	.byte	0x8
	.4byte	0x129
	.byte	0x24
	.uleb128 0x6
	.4byte	.LASF65
	.byte	0x3
	.byte	0x82
	.byte	0x8
	.4byte	0x129
	.byte	0x28
	.uleb128 0x6
	.4byte	.LASF66
	.byte	0x3
	.byte	0x83
	.byte	0x8
	.4byte	0x129
	.byte	0x2c
	.uleb128 0xa
	.ascii	"win\000"
	.byte	0x3
	.byte	0x84
	.byte	0x7
	.4byte	0x135
	.byte	0x30
	.byte	0
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.4byte	0x146
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x1a
	.byte	0x18
	.4byte	0x14d
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0x1f
	.byte	0x17
	.4byte	0x154
	.uleb128 0x8
	.4byte	0x111
	.4byte	0x146
	.uleb128 0xe
	.4byte	0x15b
	.2byte	0x1ff
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF35
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF38
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF37
	.byte	0
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x196f
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0xf
	.4byte	.LASF169
	.byte	0xc
	.4byte	.LASF170
	.4byte	.LASF171
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.4byte	.Ldebug_macro0
	.uleb128 0x10
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x7
	.4byte	.LASF67
	.byte	0x4
	.byte	0x13
	.byte	0x16
	.4byte	0x41
	.uleb128 0x11
	.4byte	0x30
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF37
	.uleb128 0x7
	.4byte	.LASF33
	.byte	0x4
	.byte	0x16
	.byte	0x17
	.4byte	0x59
	.uleb128 0x11
	.4byte	0x48
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.4byte	.LASF68
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x4
	.byte	0x1a
	.byte	0x18
	.4byte	0x78
	.uleb128 0x11
	.4byte	0x67
	.uleb128 0x4
	.byte	0x2
	.byte	0x7
	.4byte	.LASF35
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.4byte	.LASF69
	.uleb128 0x7
	.4byte	.LASF34
	.byte	0x4
	.byte	0x1f
	.byte	0x17
	.4byte	0x92
	.uleb128 0x4
	.byte	0x4
	.byte	0x7
	.4byte	.LASF38
	.uleb128 0x4
	.byte	0x8
	.byte	0x7
	.4byte	.LASF70
	.uleb128 0x7
	.4byte	.LASF36
	.byte	0x3
	.byte	0x45
	.byte	0xe
	.4byte	0xb1
	.uleb128 0x11
	.4byte	0xa0
	.uleb128 0x4
	.byte	0x1
	.byte	0x8
	.4byte	.LASF39
	.uleb128 0x11
	.4byte	0xb1
	.uleb128 0x7
	.4byte	.LASF31
	.byte	0x3
	.byte	0x55
	.byte	0xf
	.4byte	0x86
	.uleb128 0xb
	.4byte	.LASF52
	.byte	0x3
	.byte	0x85
	.byte	0x3
	.byte	0x31
	.byte	0x7b
	.byte	0xc5
	.byte	0xfe
	.byte	0x7d
	.byte	0xdc
	.byte	0xe7
	.byte	0xbe
	.uleb128 0xc
	.byte	0x4
	.4byte	0xc9
	.uleb128 0xb
	.4byte	.LASF43
	.byte	0x3
	.byte	0x9b
	.byte	0x3
	.byte	0x84
	.byte	0x1e
	.byte	0x1a
	.byte	0x95
	.byte	0xa6
	.byte	0xb2
	.byte	0x5b
	.byte	0x86
	.uleb128 0xc
	.byte	0x4
	.4byte	0x48
	.uleb128 0x12
	.ascii	"FIL\000"
	.byte	0x3
	.byte	0xb2
	.byte	0x3
	.byte	0xea
	.byte	0xa8
	.byte	0x6d
	.byte	0x48
	.byte	0x4b
	.byte	0x17
	.byte	0x64
	.byte	0x3f
	.uleb128 0x12
	.ascii	"DIR\000"
	.byte	0x3
	.byte	0xc5
	.byte	0x3
	.byte	0x9
	.byte	0xe
	.byte	0xa4
	.byte	0xb4
	.byte	0xad
	.byte	0xd5
	.byte	0x65
	.byte	0x14
	.uleb128 0xb
	.4byte	.LASF71
	.byte	0x3
	.byte	0xd6
	.byte	0x3
	.byte	0x46
	.byte	0xff
	.byte	0x29
	.byte	0xa5
	.byte	0xe6
	.byte	0xe1
	.byte	0x6d
	.byte	0x7a
	.uleb128 0xb
	.4byte	.LASF72
	.byte	0x3
	.byte	0xf1
	.byte	0x3
	.byte	0xa5
	.byte	0x8a
	.byte	0
	.byte	0x9c
	.byte	0x3e
	.byte	0x22
	.byte	0x32
	.byte	0xa0
	.uleb128 0x7
	.4byte	.LASF73
	.byte	0x2
	.byte	0x10
	.byte	0xe
	.4byte	0x48
	.uleb128 0x8
	.4byte	0xd9
	.4byte	0x151
	.uleb128 0x9
	.4byte	0x41
	.byte	0
	.byte	0
	.uleb128 0x13
	.4byte	.LASF74
	.byte	0x1
	.2byte	0x20d
	.byte	0xf
	.4byte	0x141
	.uleb128 0x5
	.byte	0x3
	.4byte	FatFs
	.uleb128 0x13
	.4byte	.LASF75
	.byte	0x1
	.2byte	0x20e
	.byte	0xd
	.4byte	0x67
	.uleb128 0x5
	.byte	0x3
	.4byte	Fsid
	.uleb128 0x14
	.4byte	.LASF93
	.byte	0x1
	.2byte	0x145b
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB48
	.4byte	.LFE48-.LFB48
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3c1
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x145c
	.byte	0xf
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x16
	.ascii	"opt\000"
	.byte	0x1
	.2byte	0x145d
	.byte	0x7
	.4byte	0x48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -109
	.uleb128 0x16
	.ascii	"au\000"
	.byte	0x1
	.2byte	0x145e
	.byte	0x8
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x15
	.4byte	.LASF77
	.byte	0x1
	.2byte	0x145f
	.byte	0x8
	.4byte	0x3c7
	.uleb128 0x3
	.byte	0x91
	.sleb128 -120
	.uleb128 0x16
	.ascii	"len\000"
	.byte	0x1
	.2byte	0x1460
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x13
	.4byte	.LASF54
	.byte	0x1
	.2byte	0x1463
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x13
	.4byte	.LASF57
	.byte	0x1
	.2byte	0x1464
	.byte	0xd
	.4byte	0x3c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.ascii	"cst\000"
	.byte	0x1
	.2byte	0x1465
	.byte	0x14
	.4byte	0x3d9
	.uleb128 0x5
	.byte	0x3
	.4byte	cst.5680
	.uleb128 0x13
	.4byte	.LASF78
	.byte	0x1
	.2byte	0x1466
	.byte	0x14
	.4byte	0x3d9
	.uleb128 0x5
	.byte	0x3
	.4byte	cst32.5681
	.uleb128 0x17
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0x1467
	.byte	0x7
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x17
	.ascii	"sys\000"
	.byte	0x1
	.2byte	0x1467
	.byte	0xc
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -42
	.uleb128 0x17
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x1467
	.byte	0x12
	.4byte	0xef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -72
	.uleb128 0x17
	.ascii	"pte\000"
	.byte	0x1
	.2byte	0x1467
	.byte	0x18
	.4byte	0xef
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x13
	.4byte	.LASF79
	.byte	0x1
	.2byte	0x1467
	.byte	0x1d
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -61
	.uleb128 0x13
	.4byte	.LASF80
	.byte	0x1
	.2byte	0x1467
	.byte	0x23
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -62
	.uleb128 0x17
	.ascii	"ss\000"
	.byte	0x1
	.2byte	0x1468
	.byte	0x7
	.4byte	0x67
	.uleb128 0x3
	.byte	0x91
	.sleb128 -66
	.uleb128 0x13
	.4byte	.LASF81
	.byte	0x1
	.2byte	0x1469
	.byte	0x8
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x13
	.4byte	.LASF82
	.byte	0x1
	.2byte	0x1469
	.byte	0x11
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x13
	.4byte	.LASF83
	.byte	0x1
	.2byte	0x1469
	.byte	0x19
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -100
	.uleb128 0x13
	.4byte	.LASF84
	.byte	0x1
	.2byte	0x1469
	.byte	0x21
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x17
	.ascii	"pau\000"
	.byte	0x1
	.2byte	0x1469
	.byte	0x29
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x1469
	.byte	0x2e
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x1
	.2byte	0x1469
	.byte	0x34
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x1469
	.byte	0x3b
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF86
	.byte	0x1
	.2byte	0x146a
	.byte	0x8
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x13
	.4byte	.LASF87
	.byte	0x1
	.2byte	0x146a
	.byte	0xf
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF88
	.byte	0x1
	.2byte	0x146a
	.byte	0x16
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x13
	.4byte	.LASF89
	.byte	0x1
	.2byte	0x146b
	.byte	0x8
	.4byte	0x86
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x13
	.4byte	.LASF90
	.byte	0x1
	.2byte	0x146b
	.byte	0x10
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF91
	.byte	0x1
	.2byte	0x146b
	.byte	0x18
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF92
	.byte	0x1
	.2byte	0x146b
	.byte	0x20
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x146c
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.ascii	"vol\000"
	.byte	0x1
	.2byte	0x146d
	.byte	0x6
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x146e
	.byte	0xa
	.4byte	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -63
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xac
	.uleb128 0x18
	.byte	0x4
	.uleb128 0x8
	.4byte	0x73
	.4byte	0x3d9
	.uleb128 0x9
	.4byte	0x41
	.byte	0x6
	.byte	0
	.uleb128 0x11
	.4byte	0x3c9
	.uleb128 0x14
	.4byte	.LASF94
	.byte	0x1
	.2byte	0x121e
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB47
	.4byte	.LFE47-.LFB47
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x48d
	.uleb128 0x15
	.4byte	.LASF95
	.byte	0x1
	.2byte	0x121f
	.byte	0xf
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -140
	.uleb128 0x15
	.4byte	.LASF96
	.byte	0x1
	.2byte	0x1220
	.byte	0xf
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -144
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x1223
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"djo\000"
	.byte	0x1
	.2byte	0x1224
	.byte	0x6
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.ascii	"djn\000"
	.byte	0x1
	.2byte	0x1224
	.byte	0xb
	.4byte	0x105
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x1225
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -112
	.uleb128 0x17
	.ascii	"buf\000"
	.byte	0x1
	.2byte	0x1226
	.byte	0x7
	.4byte	0x48d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -136
	.uleb128 0x17
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x1226
	.byte	0x1e
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"dw\000"
	.byte	0x1
	.2byte	0x1227
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x8
	.4byte	0x48
	.4byte	0x49d
	.uleb128 0x9
	.4byte	0x41
	.byte	0x17
	.byte	0
	.uleb128 0x14
	.4byte	.LASF97
	.byte	0x1
	.2byte	0x11c1
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB46
	.4byte	.LFE46-.LFB46
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x557
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x11c2
	.byte	0xf
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x11c5
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"dj\000"
	.byte	0x1
	.2byte	0x11c6
	.byte	0x6
	.4byte	0x105
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x11c7
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x17
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x11c8
	.byte	0x8
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x11c9
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"dsc\000"
	.byte	0x1
	.2byte	0x11ca
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"dcl\000"
	.byte	0x1
	.2byte	0x11ca
	.byte	0xd
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.ascii	"pcl\000"
	.byte	0x1
	.2byte	0x11ca
	.byte	0x12
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"tm\000"
	.byte	0x1
	.2byte	0x11ca
	.byte	0x17
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0x14
	.4byte	.LASF98
	.byte	0x1
	.2byte	0x1162
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x5d4
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x1163
	.byte	0xf
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -116
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x1166
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"dj\000"
	.byte	0x1
	.2byte	0x1167
	.byte	0x6
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x17
	.ascii	"sdj\000"
	.byte	0x1
	.2byte	0x1167
	.byte	0xa
	.4byte	0x105
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x13
	.4byte	.LASF99
	.byte	0x1
	.2byte	0x1168
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x1169
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -108
	.byte	0
	.uleb128 0x14
	.4byte	.LASF100
	.byte	0x1
	.2byte	0x1130
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x62e
	.uleb128 0x16
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0x1131
	.byte	0x7
	.4byte	0x62e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x1134
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x1135
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"ncl\000"
	.byte	0x1
	.2byte	0x1136
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xf5
	.uleb128 0x14
	.4byte	.LASF101
	.byte	0x1
	.2byte	0x10d9
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x70c
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x10da
	.byte	0xf
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x15
	.4byte	.LASF102
	.byte	0x1
	.2byte	0x10db
	.byte	0x9
	.4byte	0x70c
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x15
	.4byte	.LASF103
	.byte	0x1
	.2byte	0x10dc
	.byte	0xa
	.4byte	0x712
	.uleb128 0x3
	.byte	0x91
	.sleb128 -68
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x10df
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x10e0
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF104
	.byte	0x1
	.2byte	0x10e1
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x10e1
	.byte	0xf
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.2byte	0x10e1
	.byte	0x15
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.2byte	0x10e1
	.byte	0x1b
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x10e2
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x10e3
	.byte	0x8
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0x10e4
	.byte	0x8
	.4byte	0xdf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x86
	.uleb128 0xc
	.byte	0x4
	.4byte	0xd9
	.uleb128 0x14
	.4byte	.LASF106
	.byte	0x1
	.2byte	0x10b6
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x773
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0x10b7
	.byte	0xf
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x16
	.ascii	"fno\000"
	.byte	0x1
	.2byte	0x10b8
	.byte	0xb
	.4byte	0x773
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x10bb
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"dj\000"
	.byte	0x1
	.2byte	0x10bc
	.byte	0x6
	.4byte	0x105
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x115
	.uleb128 0x14
	.4byte	.LASF107
	.byte	0x1
	.2byte	0x105e
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x7d3
	.uleb128 0x16
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x105f
	.byte	0x7
	.4byte	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.ascii	"fno\000"
	.byte	0x1
	.2byte	0x1060
	.byte	0xb
	.4byte	0x773
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x1063
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x1064
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x105
	.uleb128 0x14
	.4byte	.LASF108
	.byte	0x1
	.2byte	0x103d
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x823
	.uleb128 0x16
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x103e
	.byte	0x7
	.4byte	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x1041
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x1042
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x14
	.4byte	.LASF109
	.byte	0x1
	.2byte	0xff7
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x88d
	.uleb128 0x16
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0xff8
	.byte	0x7
	.4byte	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xff9
	.byte	0xf
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xffc
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xffd
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0xffe
	.byte	0x9
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xdf
	.uleb128 0x14
	.4byte	.LASF110
	.byte	0x1
	.2byte	0xf5d
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x92d
	.uleb128 0x16
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0xf5e
	.byte	0x7
	.4byte	0x62e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x16
	.ascii	"ofs\000"
	.byte	0x1
	.2byte	0xf5f
	.byte	0xa
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xf62
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xf63
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x1
	.2byte	0xf64
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"bcs\000"
	.byte	0x1
	.2byte	0xf64
	.byte	0xe
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF85
	.byte	0x1
	.2byte	0xf64
	.byte	0x13
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF111
	.byte	0x1
	.2byte	0xf65
	.byte	0xa
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x14
	.4byte	.LASF112
	.byte	0x1
	.2byte	0xea1
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x977
	.uleb128 0x16
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0xea2
	.byte	0x7
	.4byte	0x62e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xea5
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xea6
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x14
	.4byte	.LASF113
	.byte	0x1
	.2byte	0xe53
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x9e0
	.uleb128 0x16
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0xe54
	.byte	0x7
	.4byte	0x62e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xe57
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xe58
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"tm\000"
	.byte	0x1
	.2byte	0xe59
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0xe5a
	.byte	0x8
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF114
	.byte	0x1
	.2byte	0xdda
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xab8
	.uleb128 0x16
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0xddb
	.byte	0x7
	.4byte	0x62e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x1
	.2byte	0xddc
	.byte	0xe
	.4byte	0xab8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x16
	.ascii	"btw\000"
	.byte	0x1
	.2byte	0xddd
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x16
	.ascii	"bw\000"
	.byte	0x1
	.2byte	0xdde
	.byte	0x8
	.4byte	0xabf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xde1
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xde2
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x1
	.2byte	0xde3
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.2byte	0xde3
	.byte	0xe
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF116
	.byte	0x1
	.2byte	0xde4
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"cc\000"
	.byte	0x1
	.2byte	0xde4
	.byte	0xd
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x1
	.2byte	0xde4
	.byte	0x11
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF118
	.byte	0x1
	.2byte	0xde5
	.byte	0xe
	.4byte	0xac5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xabe
	.uleb128 0x19
	.uleb128 0xc
	.byte	0x4
	.4byte	0x30
	.uleb128 0xc
	.byte	0x4
	.4byte	0x54
	.uleb128 0x14
	.4byte	.LASF119
	.byte	0x1
	.2byte	0xd76
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xbb3
	.uleb128 0x16
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0xd77
	.byte	0x7
	.4byte	0x62e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -52
	.uleb128 0x15
	.4byte	.LASF115
	.byte	0x1
	.2byte	0xd78
	.byte	0x8
	.4byte	0x3c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x16
	.ascii	"btr\000"
	.byte	0x1
	.2byte	0xd79
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x16
	.ascii	"br\000"
	.byte	0x1
	.2byte	0xd7a
	.byte	0x8
	.4byte	0xabf
	.uleb128 0x2
	.byte	0x91
	.sleb128 -64
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xd7d
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xd7e
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x1
	.2byte	0xd7f
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF42
	.byte	0x1
	.2byte	0xd7f
	.byte	0xe
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x13
	.4byte	.LASF120
	.byte	0x1
	.2byte	0xd80
	.byte	0xa
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF121
	.byte	0x1
	.2byte	0xd81
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"cc\000"
	.byte	0x1
	.2byte	0xd81
	.byte	0xd
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF117
	.byte	0x1
	.2byte	0xd81
	.byte	0x11
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF122
	.byte	0x1
	.2byte	0xd82
	.byte	0x8
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0x14
	.4byte	.LASF123
	.byte	0x1
	.2byte	0xcad
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xc8e
	.uleb128 0x16
	.ascii	"fp\000"
	.byte	0x1
	.2byte	0xcae
	.byte	0x7
	.4byte	0x62e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -92
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xcaf
	.byte	0xf
	.4byte	0x3c1
	.uleb128 0x3
	.byte	0x91
	.sleb128 -96
	.uleb128 0x15
	.4byte	.LASF124
	.byte	0x1
	.2byte	0xcb0
	.byte	0x7
	.4byte	0x48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -97
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xcb3
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"dj\000"
	.byte	0x1
	.2byte	0xcb4
	.byte	0x6
	.4byte	0x105
	.uleb128 0x3
	.byte	0x91
	.sleb128 -80
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xcb5
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x17
	.ascii	"dw\000"
	.byte	0x1
	.2byte	0xcb7
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"cl\000"
	.byte	0x1
	.2byte	0xcb7
	.byte	0xc
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.ascii	"bcs\000"
	.byte	0x1
	.2byte	0xcb7
	.byte	0x10
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x1
	.2byte	0xcb7
	.byte	0x15
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"sc\000"
	.byte	0x1
	.2byte	0xcb7
	.byte	0x1b
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.ascii	"ofs\000"
	.byte	0x1
	.2byte	0xcb8
	.byte	0xa
	.4byte	0xbd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF125
	.byte	0x1
	.2byte	0xc7d
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd18
	.uleb128 0x16
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xc7e
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xc7f
	.byte	0xf
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.ascii	"opt\000"
	.byte	0x1
	.2byte	0xc80
	.byte	0x7
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x17
	.ascii	"cfs\000"
	.byte	0x1
	.2byte	0xc83
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"vol\000"
	.byte	0x1
	.2byte	0xc84
	.byte	0x6
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xc85
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x17
	.ascii	"rp\000"
	.byte	0x1
	.2byte	0xc86
	.byte	0xf
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF126
	.byte	0x1
	.2byte	0xc5b
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB31
	.4byte	.LFE31-.LFB31
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xd63
	.uleb128 0x16
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0xc5c
	.byte	0x9
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xc5d
	.byte	0xa
	.4byte	0x712
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xc60
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF127
	.byte	0x1
	.2byte	0xb7e
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB30
	.4byte	.LFE30-.LFB30
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe8e
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xb7f
	.byte	0x10
	.4byte	0xe8e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -84
	.uleb128 0x16
	.ascii	"rfs\000"
	.byte	0x1
	.2byte	0xb80
	.byte	0xa
	.4byte	0x712
	.uleb128 0x3
	.byte	0x91
	.sleb128 -88
	.uleb128 0x15
	.4byte	.LASF124
	.byte	0x1
	.2byte	0xb81
	.byte	0x7
	.4byte	0x48
	.uleb128 0x3
	.byte	0x91
	.sleb128 -89
	.uleb128 0x17
	.ascii	"fmt\000"
	.byte	0x1
	.2byte	0xb84
	.byte	0x7
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"pt\000"
	.byte	0x1
	.2byte	0xb84
	.byte	0xd
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.ascii	"vol\000"
	.byte	0x1
	.2byte	0xb85
	.byte	0x6
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x13
	.4byte	.LASF49
	.byte	0x1
	.2byte	0xb86
	.byte	0xa
	.4byte	0x135
	.uleb128 0x2
	.byte	0x91
	.sleb128 -41
	.uleb128 0x13
	.4byte	.LASF128
	.byte	0x1
	.2byte	0xb87
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x13
	.4byte	.LASF129
	.byte	0x1
	.2byte	0xb87
	.byte	0xf
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF130
	.byte	0x1
	.2byte	0xb87
	.byte	0x17
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF131
	.byte	0x1
	.2byte	0xb87
	.byte	0x1e
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.uleb128 0x13
	.4byte	.LASF102
	.byte	0x1
	.2byte	0xb87
	.byte	0x26
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -60
	.uleb128 0x13
	.4byte	.LASF132
	.byte	0x1
	.2byte	0xb87
	.byte	0x2d
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.ascii	"br\000"
	.byte	0x1
	.2byte	0xb87
	.byte	0x35
	.4byte	0xe94
	.uleb128 0x3
	.byte	0x91
	.sleb128 -76
	.uleb128 0x13
	.4byte	.LASF133
	.byte	0x1
	.2byte	0xb88
	.byte	0x7
	.4byte	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -50
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xb89
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xb8a
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0x3c1
	.uleb128 0x8
	.4byte	0x86
	.4byte	0xea4
	.uleb128 0x9
	.4byte	0x41
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF134
	.byte	0x1
	.2byte	0xb62
	.byte	0x6
	.4byte	0x48
	.4byte	.LFB29
	.4byte	.LFE29-.LFB29
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xedf
	.uleb128 0x16
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xb63
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x15
	.4byte	.LASF42
	.byte	0x1
	.2byte	0xb64
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF135
	.byte	0x1
	.2byte	0xb25
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB28
	.4byte	.LFE28-.LFB28
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xf47
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xb26
	.byte	0x10
	.4byte	0xe8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"tp\000"
	.byte	0x1
	.2byte	0xb29
	.byte	0xf
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.ascii	"tt\000"
	.byte	0x1
	.2byte	0xb29
	.byte	0x14
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xb2a
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"vol\000"
	.byte	0x1
	.2byte	0xb2b
	.byte	0x6
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF136
	.byte	0x1
	.2byte	0xacd
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB27
	.4byte	.LFE27-.LFB27
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xfc0
	.uleb128 0x16
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0xace
	.byte	0x7
	.4byte	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xacf
	.byte	0xf
	.4byte	0x3c1
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0xad2
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"ns\000"
	.byte	0x1
	.2byte	0xad3
	.byte	0x7
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -21
	.uleb128 0x17
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0xad4
	.byte	0x9
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0xad5
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF137
	.byte	0x1
	.2byte	0xa0a
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB26
	.4byte	.LFE26-.LFB26
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1061
	.uleb128 0x16
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0xa0b
	.byte	0x7
	.4byte	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -44
	.uleb128 0x15
	.4byte	.LASF76
	.byte	0x1
	.2byte	0xa0c
	.byte	0x10
	.4byte	0xe8e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -48
	.uleb128 0x17
	.ascii	"c\000"
	.byte	0x1
	.2byte	0xa86
	.byte	0x7
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"d\000"
	.byte	0x1
	.2byte	0xa86
	.byte	0xa
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -33
	.uleb128 0x17
	.ascii	"sfn\000"
	.byte	0x1
	.2byte	0xa86
	.byte	0xe
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.ascii	"ni\000"
	.byte	0x1
	.2byte	0xa87
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"si\000"
	.byte	0x1
	.2byte	0xa87
	.byte	0xb
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x1
	.2byte	0xa87
	.byte	0xf
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"p\000"
	.byte	0x1
	.2byte	0xa88
	.byte	0xe
	.4byte	0x1061
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.4byte	0xb8
	.uleb128 0x1c
	.4byte	.LASF142
	.byte	0x1
	.2byte	0x95c
	.byte	0x6
	.4byte	.LFB25
	.4byte	.LFE25-.LFB25
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x10d7
	.uleb128 0x16
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x95d
	.byte	0x7
	.4byte	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.ascii	"fno\000"
	.byte	0x1
	.2byte	0x95e
	.byte	0xb
	.4byte	0x773
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.ascii	"i\000"
	.byte	0x1
	.2byte	0x961
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.ascii	"j\000"
	.byte	0x1
	.2byte	0x961
	.byte	0xa
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x962
	.byte	0x8
	.4byte	0xa0
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x17
	.ascii	"tm\000"
	.byte	0x1
	.2byte	0x963
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF138
	.byte	0x1
	.2byte	0x92c
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB24
	.4byte	.LFE24-.LFB24
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1121
	.uleb128 0x16
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x92d
	.byte	0x7
	.4byte	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x930
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -13
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x931
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF139
	.byte	0x1
	.2byte	0x8c5
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB23
	.4byte	.LFE23-.LFB23
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x116b
	.uleb128 0x16
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x8c6
	.byte	0x7
	.4byte	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x8c9
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x8ca
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF140
	.byte	0x1
	.2byte	0x876
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB22
	.4byte	.LFE22-.LFB22
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x11c3
	.uleb128 0x16
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x877
	.byte	0x7
	.4byte	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x87a
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x87b
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x87c
	.byte	0x7
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF141
	.byte	0x1
	.2byte	0x829
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB21
	.4byte	.LFE21-.LFB21
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1239
	.uleb128 0x16
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x82a
	.byte	0x7
	.4byte	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.ascii	"vol\000"
	.byte	0x1
	.2byte	0x82b
	.byte	0x6
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x82e
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x82f
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"a\000"
	.byte	0x1
	.2byte	0x830
	.byte	0x7
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -18
	.uleb128 0x17
	.ascii	"c\000"
	.byte	0x1
	.2byte	0x830
	.byte	0xa
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1c
	.4byte	.LASF143
	.byte	0x1
	.2byte	0x647
	.byte	0x6
	.4byte	.LFB20
	.4byte	.LFE20-.LFB20
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x127f
	.uleb128 0x16
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x648
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x16
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x649
	.byte	0x8
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.ascii	"cl\000"
	.byte	0x1
	.2byte	0x64a
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF144
	.byte	0x1
	.2byte	0x635
	.byte	0x7
	.4byte	0x86
	.4byte	.LFB19
	.4byte	.LFE19-.LFB19
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x12c9
	.uleb128 0x16
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x636
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.ascii	"dir\000"
	.byte	0x1
	.2byte	0x637
	.byte	0xe
	.4byte	0xac5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"cl\000"
	.byte	0x1
	.2byte	0x63a
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF145
	.byte	0x1
	.2byte	0x60a
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB18
	.4byte	.LFE18-.LFB18
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1331
	.uleb128 0x16
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x60b
	.byte	0x7
	.4byte	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LASF146
	.byte	0x1
	.2byte	0x60c
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x60f
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x610
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x611
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF147
	.byte	0x1
	.2byte	0x5c4
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB17
	.4byte	.LFE17-.LFB17
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x13a9
	.uleb128 0x16
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x5c5
	.byte	0x7
	.4byte	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LASF148
	.byte	0x1
	.2byte	0x5c6
	.byte	0x6
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.ascii	"ofs\000"
	.byte	0x1
	.2byte	0x5c9
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x5c9
	.byte	0xd
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x5ca
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"n\000"
	.byte	0x1
	.2byte	0x5cc
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF149
	.byte	0x1
	.2byte	0x593
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB16
	.4byte	.LFE16-.LFB16
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1413
	.uleb128 0x16
	.ascii	"dp\000"
	.byte	0x1
	.2byte	0x594
	.byte	0x7
	.4byte	0x7d3
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x16
	.ascii	"ofs\000"
	.byte	0x1
	.2byte	0x595
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.ascii	"csz\000"
	.byte	0x1
	.2byte	0x598
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x13
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x598
	.byte	0xd
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x599
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF150
	.byte	0x1
	.2byte	0x520
	.byte	0x7
	.4byte	0x86
	.4byte	.LFB15
	.4byte	.LFE15-.LFB15
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x149d
	.uleb128 0x16
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0x521
	.byte	0x9
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x522
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -40
	.uleb128 0x17
	.ascii	"cs\000"
	.byte	0x1
	.2byte	0x525
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.ascii	"ncl\000"
	.byte	0x1
	.2byte	0x525
	.byte	0xc
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.ascii	"scl\000"
	.byte	0x1
	.2byte	0x525
	.byte	0x11
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x526
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x527
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF151
	.byte	0x1
	.2byte	0x4d0
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB14
	.4byte	.LFE14-.LFB14
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1518
	.uleb128 0x16
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0x4d1
	.byte	0x9
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x4d2
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.4byte	.LASF152
	.byte	0x1
	.2byte	0x4d3
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x4d6
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.uleb128 0x17
	.ascii	"nxt\000"
	.byte	0x1
	.2byte	0x4d7
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x4d8
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF153
	.byte	0x1
	.2byte	0x426
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB13
	.4byte	.LFE13-.LFB13
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1590
	.uleb128 0x16
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x427
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x428
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x16
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x429
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x17
	.ascii	"bc\000"
	.byte	0x1
	.2byte	0x42c
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"p\000"
	.byte	0x1
	.2byte	0x42d
	.byte	0x8
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x42e
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF154
	.byte	0x1
	.2byte	0x3da
	.byte	0x7
	.4byte	0x86
	.4byte	.LFB12
	.4byte	.LFE12-.LFB12
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1609
	.uleb128 0x16
	.ascii	"obj\000"
	.byte	0x1
	.2byte	0x3db
	.byte	0x9
	.4byte	0x88d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x3dc
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.ascii	"wc\000"
	.byte	0x1
	.2byte	0x3df
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"bc\000"
	.byte	0x1
	.2byte	0x3df
	.byte	0xb
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x3e0
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x3e1
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF155
	.byte	0x1
	.2byte	0x3c8
	.byte	0x7
	.4byte	0x86
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1644
	.uleb128 0x16
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x3c9
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x15
	.4byte	.LASF105
	.byte	0x1
	.2byte	0x3ca
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF156
	.byte	0x1
	.2byte	0x3a1
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x167f
	.uleb128 0x16
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x3a2
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x3a5
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF157
	.byte	0x1
	.2byte	0x381
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x16ca
	.uleb128 0x16
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x382
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x15
	.4byte	.LASF158
	.byte	0x1
	.2byte	0x383
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x386
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -9
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF159
	.byte	0x1
	.2byte	0x364
	.byte	0x9
	.4byte	0x125
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1724
	.uleb128 0x16
	.ascii	"fs\000"
	.byte	0x1
	.2byte	0x365
	.byte	0x9
	.4byte	0xd9
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x13
	.4byte	.LASF160
	.byte	0x1
	.2byte	0x368
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.ascii	"nf\000"
	.byte	0x1
	.2byte	0x369
	.byte	0x7
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.ascii	"res\000"
	.byte	0x1
	.2byte	0x36a
	.byte	0xa
	.4byte	0x125
	.uleb128 0x2
	.byte	0x91
	.sleb128 -17
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF161
	.byte	0x1
	.2byte	0x2ca
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1760
	.uleb128 0x16
	.ascii	"str\000"
	.byte	0x1
	.2byte	0x2ca
	.byte	0x1a
	.4byte	0x1061
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x16
	.ascii	"chr\000"
	.byte	0x1
	.2byte	0x2ca
	.byte	0x23
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF162
	.byte	0x1
	.2byte	0x2bd
	.byte	0x5
	.4byte	0x29
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x17d6
	.uleb128 0x16
	.ascii	"dst\000"
	.byte	0x1
	.2byte	0x2bd
	.byte	0x1a
	.4byte	0xab8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x16
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x2bd
	.byte	0x2b
	.4byte	0xab8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x16
	.ascii	"cnt\000"
	.byte	0x1
	.2byte	0x2bd
	.byte	0x35
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x17
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x2be
	.byte	0xe
	.4byte	0xac5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x17
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x2be
	.byte	0x26
	.4byte	0xac5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x17
	.ascii	"r\000"
	.byte	0x1
	.2byte	0x2bf
	.byte	0x6
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF163
	.byte	0x1
	.2byte	0x2b5
	.byte	0x6
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x182c
	.uleb128 0x16
	.ascii	"dst\000"
	.byte	0x1
	.2byte	0x2b5
	.byte	0x15
	.4byte	0x3c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x16
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x2b5
	.byte	0x1e
	.4byte	0x29
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.ascii	"cnt\000"
	.byte	0x1
	.2byte	0x2b5
	.byte	0x28
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x2b6
	.byte	0x8
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF164
	.byte	0x1
	.2byte	0x2aa
	.byte	0x6
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1890
	.uleb128 0x16
	.ascii	"dst\000"
	.byte	0x1
	.2byte	0x2aa
	.byte	0x15
	.4byte	0x3c7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x16
	.ascii	"src\000"
	.byte	0x1
	.2byte	0x2aa
	.byte	0x26
	.4byte	0xab8
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x16
	.ascii	"cnt\000"
	.byte	0x1
	.2byte	0x2aa
	.byte	0x30
	.4byte	0x30
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x17
	.ascii	"d\000"
	.byte	0x1
	.2byte	0x2ab
	.byte	0x8
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x17
	.ascii	"s\000"
	.byte	0x1
	.2byte	0x2ac
	.byte	0xe
	.4byte	0xac5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF165
	.byte	0x1
	.2byte	0x28a
	.byte	0x6
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x18c8
	.uleb128 0x16
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x28a
	.byte	0x16
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x16
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x28a
	.byte	0x21
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.uleb128 0x1d
	.4byte	.LASF166
	.byte	0x1
	.2byte	0x283
	.byte	0x6
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1900
	.uleb128 0x16
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x283
	.byte	0x15
	.4byte	0xef
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x16
	.ascii	"val\000"
	.byte	0x1
	.2byte	0x283
	.byte	0x1f
	.4byte	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -6
	.byte	0
	.uleb128 0x1b
	.4byte	.LASF167
	.byte	0x1
	.2byte	0x264
	.byte	0x7
	.4byte	0x86
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x193b
	.uleb128 0x16
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x264
	.byte	0x1d
	.4byte	0xac5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.ascii	"rv\000"
	.byte	0x1
	.2byte	0x266
	.byte	0x8
	.4byte	0x86
	.uleb128 0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0x1e
	.4byte	.LASF168
	.byte	0x1
	.2byte	0x25a
	.byte	0x6
	.4byte	0x67
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.ascii	"ptr\000"
	.byte	0x1
	.2byte	0x25a
	.byte	0x1b
	.4byte	0xac5
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.ascii	"rv\000"
	.byte	0x1
	.2byte	0x25c
	.byte	0x7
	.4byte	0x67
	.uleb128 0x2
	.byte	0x91
	.sleb128 -2
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x8
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_pubnames,"",%progbits
	.4byte	0x479
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1973
	.4byte	0x2b
	.ascii	"FR_OK\000"
	.4byte	0x31
	.ascii	"FR_DISK_ERR\000"
	.4byte	0x37
	.ascii	"FR_INT_ERR\000"
	.4byte	0x3d
	.ascii	"FR_NOT_READY\000"
	.4byte	0x43
	.ascii	"FR_NO_FILE\000"
	.4byte	0x49
	.ascii	"FR_NO_PATH\000"
	.4byte	0x4f
	.ascii	"FR_INVALID_NAME\000"
	.4byte	0x55
	.ascii	"FR_DENIED\000"
	.4byte	0x5b
	.ascii	"FR_EXIST\000"
	.4byte	0x61
	.ascii	"FR_INVALID_OBJECT\000"
	.4byte	0x67
	.ascii	"FR_WRITE_PROTECTED\000"
	.4byte	0x6d
	.ascii	"FR_INVALID_DRIVE\000"
	.4byte	0x73
	.ascii	"FR_NOT_ENABLED\000"
	.4byte	0x79
	.ascii	"FR_NO_FILESYSTEM\000"
	.4byte	0x7f
	.ascii	"FR_MKFS_ABORTED\000"
	.4byte	0x85
	.ascii	"FR_TIMEOUT\000"
	.4byte	0x8b
	.ascii	"FR_LOCKED\000"
	.4byte	0x91
	.ascii	"FR_NOT_ENOUGH_CORE\000"
	.4byte	0x97
	.ascii	"FR_TOO_MANY_OPEN_FILES\000"
	.4byte	0x9d
	.ascii	"FR_INVALID_PARAMETER\000"
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
	.4byte	0x151
	.ascii	"FatFs\000"
	.4byte	0x164
	.ascii	"Fsid\000"
	.4byte	0x151
	.ascii	"FatFs\000"
	.4byte	0x164
	.ascii	"Fsid\000"
	.4byte	0x177
	.ascii	"f_mkfs\000"
	.4byte	0x3de
	.ascii	"f_rename\000"
	.4byte	0x49d
	.ascii	"f_mkdir\000"
	.4byte	0x557
	.ascii	"f_unlink\000"
	.4byte	0x5d4
	.ascii	"f_truncate\000"
	.4byte	0x634
	.ascii	"f_getfree\000"
	.4byte	0x718
	.ascii	"f_stat\000"
	.4byte	0x779
	.ascii	"f_readdir\000"
	.4byte	0x7d9
	.ascii	"f_closedir\000"
	.4byte	0x823
	.ascii	"f_opendir\000"
	.4byte	0x893
	.ascii	"f_lseek\000"
	.4byte	0x92d
	.ascii	"f_close\000"
	.4byte	0x977
	.ascii	"f_sync\000"
	.4byte	0x9e0
	.ascii	"f_write\000"
	.4byte	0xacb
	.ascii	"f_read\000"
	.4byte	0xbb3
	.ascii	"f_open\000"
	.4byte	0xc8e
	.ascii	"f_mount\000"
	.4byte	0xd18
	.ascii	"validate\000"
	.4byte	0xd63
	.ascii	"find_volume\000"
	.4byte	0xea4
	.ascii	"check_fs\000"
	.4byte	0xedf
	.ascii	"get_ldnumber\000"
	.4byte	0xf47
	.ascii	"follow_path\000"
	.4byte	0xfc0
	.ascii	"create_name\000"
	.4byte	0x1067
	.ascii	"get_fileinfo\000"
	.4byte	0x10d7
	.ascii	"dir_remove\000"
	.4byte	0x1121
	.ascii	"dir_register\000"
	.4byte	0x116b
	.ascii	"dir_find\000"
	.4byte	0x11c3
	.ascii	"dir_read\000"
	.4byte	0x1239
	.ascii	"st_clust\000"
	.4byte	0x127f
	.ascii	"ld_clust\000"
	.4byte	0x12c9
	.ascii	"dir_alloc\000"
	.4byte	0x1331
	.ascii	"dir_next\000"
	.4byte	0x13a9
	.ascii	"dir_sdi\000"
	.4byte	0x1413
	.ascii	"create_chain\000"
	.4byte	0x149d
	.ascii	"remove_chain\000"
	.4byte	0x1518
	.ascii	"put_fat\000"
	.4byte	0x1590
	.ascii	"get_fat\000"
	.4byte	0x1609
	.ascii	"clust2sect\000"
	.4byte	0x1644
	.ascii	"sync_fs\000"
	.4byte	0x167f
	.ascii	"move_window\000"
	.4byte	0x16ca
	.ascii	"sync_window\000"
	.4byte	0x1724
	.ascii	"chk_chr\000"
	.4byte	0x1760
	.ascii	"mem_cmp\000"
	.4byte	0x17d6
	.ascii	"mem_set\000"
	.4byte	0x182c
	.ascii	"mem_cpy\000"
	.4byte	0x1890
	.ascii	"st_dword\000"
	.4byte	0x18c8
	.ascii	"st_word\000"
	.4byte	0x1900
	.ascii	"ld_dword\000"
	.4byte	0x193b
	.ascii	"ld_word\000"
	.4byte	0
	.section	.debug_pubtypes,"",%progbits
	.4byte	0x128
	.2byte	0x2
	.4byte	.Ldebug_info0
	.4byte	0x1973
	.4byte	0x29
	.ascii	"int\000"
	.4byte	0x41
	.ascii	"unsigned int\000"
	.4byte	0x30
	.ascii	"UINT\000"
	.4byte	0x59
	.ascii	"unsigned char\000"
	.4byte	0x48
	.ascii	"BYTE\000"
	.4byte	0x60
	.ascii	"short int\000"
	.4byte	0x78
	.ascii	"short unsigned int\000"
	.4byte	0x67
	.ascii	"WORD\000"
	.4byte	0x7f
	.ascii	"long int\000"
	.4byte	0x92
	.ascii	"long unsigned int\000"
	.4byte	0x86
	.ascii	"DWORD\000"
	.4byte	0x99
	.ascii	"long long unsigned int\000"
	.4byte	0xb1
	.ascii	"char\000"
	.4byte	0xa0
	.ascii	"TCHAR\000"
	.4byte	0xbd
	.ascii	"FSIZE_t\000"
	.4byte	0xc9
	.ascii	"FATFS\000"
	.4byte	0xdf
	.ascii	"_FDID\000"
	.4byte	0xf5
	.ascii	"FIL\000"
	.4byte	0x105
	.ascii	"DIR\000"
	.4byte	0x115
	.ascii	"FILINFO\000"
	.4byte	0x125
	.ascii	"FRESULT\000"
	.4byte	0x135
	.ascii	"DSTATUS\000"
	.4byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x19c
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
	.uleb128 0x15
	.uleb128 0x3
	.byte	0x3
	.uleb128 0x1c
	.uleb128 0x4
	.byte	0x4
	.file 5 "C:\\nRF5_SDK_15.0.0_a53641a\\external\\fatfs\\src\\ffconf.h"
	.byte	0x3
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.byte	0x3
	.uleb128 0x16
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF9:
	.ascii	"FR_NOT_READY\000"
.LASF117:
	.ascii	"csect\000"
.LASF24:
	.ascii	"FR_TOO_MANY_OPEN_FILES\000"
.LASF88:
	.ascii	"b_data\000"
.LASF121:
	.ascii	"rcnt\000"
.LASF150:
	.ascii	"create_chain\000"
.LASF19:
	.ascii	"FR_NO_FILESYSTEM\000"
.LASF161:
	.ascii	"chk_chr\000"
.LASF119:
	.ascii	"f_read\000"
.LASF3:
	.ascii	"RES_NOTRDY\000"
.LASF86:
	.ascii	"b_vol\000"
.LASF57:
	.ascii	"n_rootdir\000"
.LASF76:
	.ascii	"path\000"
.LASF139:
	.ascii	"dir_register\000"
.LASF122:
	.ascii	"rbuff\000"
.LASF170:
	.ascii	"C:\\nRF5_SDK_15.0.0_a53641a\\external\\fatfs\\src\\"
	.ascii	"ff.c\000"
.LASF70:
	.ascii	"long long unsigned int\000"
.LASF140:
	.ascii	"dir_find\000"
.LASF82:
	.ascii	"sz_buf\000"
.LASF6:
	.ascii	"FR_OK\000"
.LASF42:
	.ascii	"sect\000"
.LASF63:
	.ascii	"fatbase\000"
.LASF101:
	.ascii	"f_getfree\000"
.LASF95:
	.ascii	"path_old\000"
.LASF163:
	.ascii	"mem_set\000"
.LASF87:
	.ascii	"b_fat\000"
.LASF49:
	.ascii	"stat\000"
.LASF115:
	.ascii	"buff\000"
.LASF25:
	.ascii	"FR_INVALID_PARAMETER\000"
.LASF26:
	.ascii	"fsize\000"
.LASF92:
	.ascii	"sz_dir\000"
.LASF15:
	.ascii	"FR_INVALID_OBJECT\000"
.LASF69:
	.ascii	"long int\000"
.LASF138:
	.ascii	"dir_remove\000"
.LASF4:
	.ascii	"RES_PARERR\000"
.LASF93:
	.ascii	"f_mkfs\000"
.LASF74:
	.ascii	"FatFs\000"
.LASF167:
	.ascii	"ld_dword\000"
.LASF118:
	.ascii	"wbuff\000"
.LASF99:
	.ascii	"dclst\000"
.LASF14:
	.ascii	"FR_EXIST\000"
.LASF110:
	.ascii	"f_lseek\000"
.LASF34:
	.ascii	"DWORD\000"
.LASF0:
	.ascii	"RES_OK\000"
.LASF31:
	.ascii	"FSIZE_t\000"
.LASF106:
	.ascii	"f_stat\000"
.LASF18:
	.ascii	"FR_NOT_ENABLED\000"
.LASF71:
	.ascii	"FILINFO\000"
.LASF159:
	.ascii	"sync_window\000"
.LASF148:
	.ascii	"stretch\000"
.LASF79:
	.ascii	"pdrv\000"
.LASF60:
	.ascii	"free_clst\000"
.LASF33:
	.ascii	"BYTE\000"
.LASF47:
	.ascii	"dir_ptr\000"
.LASF48:
	.ascii	"attr\000"
.LASF156:
	.ascii	"sync_fs\000"
.LASF149:
	.ascii	"dir_sdi\000"
.LASF37:
	.ascii	"unsigned int\000"
.LASF67:
	.ascii	"UINT\000"
.LASF137:
	.ascii	"create_name\000"
.LASF28:
	.ascii	"ftime\000"
.LASF38:
	.ascii	"long unsigned int\000"
.LASF112:
	.ascii	"f_close\000"
.LASF128:
	.ascii	"bsect\000"
.LASF131:
	.ascii	"sysect\000"
.LASF35:
	.ascii	"short unsigned int\000"
.LASF27:
	.ascii	"fdate\000"
.LASF94:
	.ascii	"f_rename\000"
.LASF105:
	.ascii	"clst\000"
.LASF56:
	.ascii	"fsi_flag\000"
.LASF81:
	.ascii	"szb_buf\000"
.LASF84:
	.ascii	"n_clst\000"
.LASF7:
	.ascii	"FR_DISK_ERR\000"
.LASF66:
	.ascii	"winsect\000"
.LASF162:
	.ascii	"mem_cmp\000"
.LASF158:
	.ascii	"sector\000"
.LASF96:
	.ascii	"path_new\000"
.LASF171:
	.ascii	"C:\\\\nRF5_SDK_15.0.0_a53641a\\\\examples\\\\ble_pe"
	.ascii	"ripheral\\\\slam_applicationLeithe\\\\pca10040\\\\s"
	.ascii	"132\\\\ses\000"
.LASF143:
	.ascii	"st_clust\000"
.LASF30:
	.ascii	"fname\000"
.LASF111:
	.ascii	"ifptr\000"
.LASF16:
	.ascii	"FR_WRITE_PROTECTED\000"
.LASF52:
	.ascii	"FATFS\000"
.LASF97:
	.ascii	"f_mkdir\000"
.LASF133:
	.ascii	"nrsv\000"
.LASF53:
	.ascii	"fs_type\000"
.LASF116:
	.ascii	"wcnt\000"
.LASF142:
	.ascii	"get_fileinfo\000"
.LASF45:
	.ascii	"fptr\000"
.LASF155:
	.ascii	"clust2sect\000"
.LASF144:
	.ascii	"ld_clust\000"
.LASF114:
	.ascii	"f_write\000"
.LASF2:
	.ascii	"RES_WRPRT\000"
.LASF40:
	.ascii	"dptr\000"
.LASF102:
	.ascii	"nclst\000"
.LASF21:
	.ascii	"FR_TIMEOUT\000"
.LASF32:
	.ascii	"WORD\000"
.LASF50:
	.ascii	"sclust\000"
.LASF104:
	.ascii	"nfree\000"
.LASF10:
	.ascii	"FR_NO_FILE\000"
.LASF103:
	.ascii	"fatfs\000"
.LASF36:
	.ascii	"TCHAR\000"
.LASF165:
	.ascii	"st_dword\000"
.LASF23:
	.ascii	"FR_NOT_ENOUGH_CORE\000"
.LASF168:
	.ascii	"ld_word\000"
.LASF65:
	.ascii	"database\000"
.LASF157:
	.ascii	"move_window\000"
.LASF153:
	.ascii	"put_fat\000"
.LASF51:
	.ascii	"objsize\000"
.LASF125:
	.ascii	"f_mount\000"
.LASF59:
	.ascii	"last_clst\000"
.LASF154:
	.ascii	"get_fat\000"
.LASF134:
	.ascii	"check_fs\000"
.LASF5:
	.ascii	"unsigned char\000"
.LASF98:
	.ascii	"f_unlink\000"
.LASF68:
	.ascii	"short int\000"
.LASF166:
	.ascii	"st_word\000"
.LASF127:
	.ascii	"find_volume\000"
.LASF44:
	.ascii	"flag\000"
.LASF136:
	.ascii	"follow_path\000"
.LASF17:
	.ascii	"FR_INVALID_DRIVE\000"
.LASF13:
	.ascii	"FR_DENIED\000"
.LASF126:
	.ascii	"validate\000"
.LASF89:
	.ascii	"sz_vol\000"
.LASF20:
	.ascii	"FR_MKFS_ABORTED\000"
.LASF107:
	.ascii	"f_readdir\000"
.LASF22:
	.ascii	"FR_LOCKED\000"
.LASF55:
	.ascii	"wflag\000"
.LASF58:
	.ascii	"csize\000"
.LASF64:
	.ascii	"dirbase\000"
.LASF130:
	.ascii	"tsect\000"
.LASF85:
	.ascii	"nsect\000"
.LASF39:
	.ascii	"char\000"
.LASF124:
	.ascii	"mode\000"
.LASF91:
	.ascii	"sz_fat\000"
.LASF129:
	.ascii	"fasize\000"
.LASF152:
	.ascii	"pclst\000"
.LASF145:
	.ascii	"dir_alloc\000"
.LASF151:
	.ascii	"remove_chain\000"
.LASF73:
	.ascii	"DSTATUS\000"
.LASF146:
	.ascii	"nent\000"
.LASF77:
	.ascii	"work\000"
.LASF109:
	.ascii	"f_opendir\000"
.LASF132:
	.ascii	"szbfat\000"
.LASF12:
	.ascii	"FR_INVALID_NAME\000"
.LASF80:
	.ascii	"part\000"
.LASF169:
	.ascii	"GNU C99 9.2.1 20191025 (release) [ARM/arm-9-branch "
	.ascii	"revision 277599] -fmessage-length=0 -mcpu=cortex-m4"
	.ascii	" -mlittle-endian -mfloat-abi=hard -mfpu=fpv4-sp-d16"
	.ascii	" -mthumb -mtp=soft -munaligned-access -std=gnu99 -g"
	.ascii	"3 -gpubnames -fdebug-types-section -fomit-frame-poi"
	.ascii	"nter -fno-dwarf2-cfi-asm -fno-builtin -ffunction-se"
	.ascii	"ctions -fdata-sections -fshort-enums -fno-common\000"
.LASF164:
	.ascii	"mem_cpy\000"
.LASF78:
	.ascii	"cst32\000"
.LASF120:
	.ascii	"remain\000"
.LASF113:
	.ascii	"f_sync\000"
.LASF29:
	.ascii	"fattrib\000"
.LASF46:
	.ascii	"dir_sect\000"
.LASF160:
	.ascii	"wsect\000"
.LASF100:
	.ascii	"f_truncate\000"
.LASF43:
	.ascii	"_FDID\000"
.LASF83:
	.ascii	"sz_blk\000"
.LASF54:
	.ascii	"n_fats\000"
.LASF72:
	.ascii	"FRESULT\000"
.LASF1:
	.ascii	"RES_ERROR\000"
.LASF8:
	.ascii	"FR_INT_ERR\000"
.LASF61:
	.ascii	"n_fatent\000"
.LASF141:
	.ascii	"dir_read\000"
.LASF123:
	.ascii	"f_open\000"
.LASF11:
	.ascii	"FR_NO_PATH\000"
.LASF108:
	.ascii	"f_closedir\000"
.LASF62:
	.ascii	"volbase\000"
.LASF135:
	.ascii	"get_ldnumber\000"
.LASF90:
	.ascii	"sz_rsv\000"
.LASF75:
	.ascii	"Fsid\000"
.LASF147:
	.ascii	"dir_next\000"
.LASF41:
	.ascii	"clust\000"
	.ident	"GCC: (GNU) 9.2.1 20191025 (release) [ARM/arm-9-branch revision 277599]"
