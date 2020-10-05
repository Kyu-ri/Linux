	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	2
.LC0:
	.ascii	"-h\000"
	.align	2
.LC1:
	.ascii	"-r\000"
	.align	2
.LC2:
	.ascii	"-w\000"
	.align	2
.LC3:
	.ascii	"Pin #%u has written as %d\012\000"
	.align	2
.LC4:
	.ascii	"Pin #%u value is %u\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
.LFB2:
	.file 1 "./src/main.c"
	.loc 1 14 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	.loc 1 15 0
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 16 0
	mov	r3, #0
	str	r3, [fp, #-20]
	.loc 1 17 0
	mvn	r3, #0
	str	r3, [fp, #-12]
	.loc 1 18 0
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 21 0
	ldr	r3, [fp, #-24]
	cmp	r3, #2
	beq	.L2
	.loc 1 21 0 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	beq	.L2
	.loc 1 21 0 discriminator 2
	ldr	r3, [fp, #-24]
	cmp	r3, #4
	beq	.L2
	.loc 1 22 0 is_stmt 1
	bl	print_usage
	.loc 1 23 0
	mov	r0, #-2147483647
	bl	assert
.L2:
.LBB2:
	.loc 1 26 0
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	ldr	r3, [r3]
	mov	r2, #3
	ldr	r1, .L17
	mov	r0, r3
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L3
	.loc 1 27 0
	bl	print_full_usage
	.loc 1 28 0
	mov	r3, #0
	b	.L16
.L3:
.LBE2:
.LBB3:
	.loc 1 31 0
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	ldr	r3, [r3]
	mov	r2, #3
	ldr	r1, .L17+4
	mov	r0, r3
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L5
	.loc 1 31 0 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	beq	.L5
	.loc 1 32 0 is_stmt 1
	bl	print_usage
	.loc 1 33 0
	mov	r0, #-2147483647
	bl	assert
.L5:
.LBE3:
.LBB4:
	.loc 1 36 0
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	ldr	r3, [r3]
	mov	r2, #3
	ldr	r1, .L17+8
	mov	r0, r3
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L6
	.loc 1 36 0 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-24]
	cmp	r3, #4
	beq	.L6
	.loc 1 37 0 is_stmt 1
	bl	print_usage
	.loc 1 38 0
	mov	r0, #-2147483647
	bl	assert
.L6:
.LBE4:
.LBB5:
	.loc 1 43 0
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	ldr	r3, [r3]
	mov	r2, #3
	ldr	r1, .L17+4
	mov	r0, r3
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L7
	.loc 1 44 0
	ldr	r3, [fp, #-28]
	add	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	mov	r3, r0
	str	r3, [fp, #-8]
	.loc 1 47 0
	ldr	r3, [fp, #-8]
	cmp	r3, #31
	bls	.L9
	.loc 1 48 0
	bl	print_usage
	.loc 1 49 0
	mov	r0, #-2147483647
	bl	assert
	b	.L9
.L7:
	.loc 1 51 0
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	ldr	r3, [r3]
	mov	r2, #3
	ldr	r1, .L17+8
	mov	r0, r3
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L9
	.loc 1 52 0
	ldr	r3, [fp, #-28]
	add	r3, r3, #8
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	mov	r3, r0
	str	r3, [fp, #-8]
	.loc 1 53 0
	ldr	r3, [fp, #-28]
	add	r3, r3, #12
	ldr	r3, [r3]
	mov	r0, r3
	bl	atoi
	str	r0, [fp, #-12]
	.loc 1 56 0
	ldr	r3, [fp, #-8]
	cmp	r3, #31
	bls	.L10
	.loc 1 57 0
	bl	print_usage
	.loc 1 58 0
	mov	r0, #-2147483647
	bl	assert
.L10:
	.loc 1 60 0
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L9
	.loc 1 60 0 is_stmt 0 discriminator 1
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	beq	.L9
	.loc 1 61 0 is_stmt 1
	bl	print_usage
	.loc 1 62 0
	mov	r0, #-2147483647
	bl	assert
.L9:
.LBE5:
	.loc 1 67 0
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	blt	.L11
.LBB6:
	.loc 1 68 0
	ldr	r3, [fp, #-12]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	gpio_write
	mov	r3, r0
	str	r3, [fp, #-16]
.LBE6:
	b	.L12
.L11:
.LBB7:
	.loc 1 70 0
	sub	r3, fp, #20
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	gpio_read
	mov	r3, r0
	str	r3, [fp, #-16]
.L12:
.LBE7:
	.loc 1 74 0
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L13
	.loc 1 75 0
	ldr	r0, [fp, #-16]
	bl	assert
.L13:
	.loc 1 79 0
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	blt	.L14
	.loc 1 80 0
	ldr	r3, .L17+12
	ldr	r0, [r3]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r1, .L17+16
	bl	fprintf
	b	.L15
.L14:
	.loc 1 82 0
	ldr	r3, .L17+12
	ldr	r0, [r3]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	ldr	r1, .L17+20
	bl	fprintf
.L15:
	.loc 1 85 0
	ldr	r3, [fp, #-16]
.L16:
	.loc 1 86 0 discriminator 1
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
.L18:
	.align	2
.L17:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	stdout
	.word	.LC3
	.word	.LC4
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align	2
.LC5:
	.ascii	"Usage: <-w/-r/-h> <pin> [<value>]\012\000"
	.text
	.align	2
	.global	print_usage
	.syntax unified
	.arm
	.fpu vfp
	.type	print_usage, %function
print_usage:
.LFB3:
	.loc 1 91 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	.loc 1 92 0
	ldr	r3, .L20
	ldr	r3, [r3]
	mov	r2, #34
	mov	r1, #1
	ldr	r0, .L20+4
	bl	fwrite
	.loc 1 93 0
	nop
	pop	{fp, pc}
.L21:
	.align	2
.L20:
	.word	stdout
	.word	.LC5
	.cfi_endproc
.LFE3:
	.size	print_usage, .-print_usage
	.section	.rodata
	.align	2
.LC6:
	.ascii	"Usage\012\000"
	.align	2
.LC7:
	.ascii	"\011./gpio -w <pin> [<value>]\012\000"
	.align	2
.LC8:
	.ascii	"\011./gpio -r <pin>\012\000"
	.align	2
.LC9:
	.ascii	"\011./gpio -h\012\000"
	.align	2
.LC10:
	.ascii	"\012\011Pin number must be in 0~28\012\000"
	.align	2
.LC11:
	.ascii	"\011Write value must be in 0 or 1\012\000"
	.text
	.align	2
	.global	print_full_usage
	.syntax unified
	.arm
	.fpu vfp
	.type	print_full_usage, %function
print_full_usage:
.LFB4:
	.loc 1 98 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	.loc 1 99 0
	ldr	r3, .L23
	ldr	r3, [r3]
	mov	r2, #6
	mov	r1, #1
	ldr	r0, .L23+4
	bl	fwrite
	.loc 1 100 0
	ldr	r3, .L23
	ldr	r3, [r3]
	mov	r2, #27
	mov	r1, #1
	ldr	r0, .L23+8
	bl	fwrite
	.loc 1 101 0
	ldr	r3, .L23
	ldr	r3, [r3]
	mov	r2, #17
	mov	r1, #1
	ldr	r0, .L23+12
	bl	fwrite
	.loc 1 102 0
	ldr	r3, .L23
	ldr	r3, [r3]
	mov	r2, #11
	mov	r1, #1
	ldr	r0, .L23+16
	bl	fwrite
	.loc 1 103 0
	ldr	r3, .L23
	ldr	r3, [r3]
	mov	r2, #29
	mov	r1, #1
	ldr	r0, .L23+20
	bl	fwrite
	.loc 1 104 0
	ldr	r3, .L23
	ldr	r3, [r3]
	mov	r2, #31
	mov	r1, #1
	ldr	r0, .L23+24
	bl	fwrite
	.loc 1 105 0
	nop
	pop	{fp, pc}
.L24:
	.align	2
.L23:
	.word	stdout
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.cfi_endproc
.LFE4:
	.size	print_full_usage, .-print_full_usage
	.section	.rodata
	.align	2
.LC12:
	.ascii	"Error occurred [Error code: %x].\012\000"
	.text
	.align	2
	.global	assert
	.syntax unified
	.arm
	.fpu vfp
	.type	assert, %function
assert:
.LFB5:
	.loc 1 107 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	.loc 1 109 0
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L26
	.loc 1 110 0
	ldr	r3, .L27
	ldr	r3, [r3]
	ldr	r2, [fp, #-8]
	ldr	r1, .L27+4
	mov	r0, r3
	bl	fprintf
.L26:
	.loc 1 113 0
	ldr	r3, [fp, #-8]
	mov	r0, r3
	bl	exit
.L28:
	.align	2
.L27:
	.word	stderr
	.word	.LC12
	.cfi_endproc
.LFE5:
	.size	assert, .-assert
.Letext0:
	.file 2 "/usr/lib/gcc/arm-linux-gnueabihf/6/include/stddef.h"
	.file 3 "/usr/include/arm-linux-gnueabihf/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/arm-linux-gnueabihf/bits/sys_errlist.h"
	.file 7 "../../hdr/HIL_types.h"
	.file 8 "/usr/include/signal.h"
	.file 9 "<built-in>"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x4c7
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF71
	.byte	0xc
	.4byte	.LASF72
	.4byte	.LASF73
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.4byte	.LASF8
	.byte	0x2
	.byte	0xd8
	.4byte	0x30
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.4byte	.LASF9
	.byte	0x3
	.byte	0x37
	.4byte	0x61
	.uleb128 0x2
	.4byte	.LASF10
	.byte	0x3
	.byte	0x83
	.4byte	0x85
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.4byte	.LASF11
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x3
	.byte	0x84
	.4byte	0x6f
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.4byte	.LASF13
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.4byte	0xa6
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.4byte	.LASF14
	.uleb128 0x7
	.4byte	0xa6
	.uleb128 0x8
	.4byte	.LASF44
	.byte	0x98
	.byte	0x4
	.byte	0xf1
	.4byte	0x22f
	.uleb128 0x9
	.4byte	.LASF15
	.byte	0x4
	.byte	0xf2
	.4byte	0x5a
	.byte	0
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x4
	.byte	0xf7
	.4byte	0xa0
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x4
	.byte	0xf8
	.4byte	0xa0
	.byte	0x8
	.uleb128 0x9
	.4byte	.LASF18
	.byte	0x4
	.byte	0xf9
	.4byte	0xa0
	.byte	0xc
	.uleb128 0x9
	.4byte	.LASF19
	.byte	0x4
	.byte	0xfa
	.4byte	0xa0
	.byte	0x10
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x4
	.byte	0xfb
	.4byte	0xa0
	.byte	0x14
	.uleb128 0x9
	.4byte	.LASF21
	.byte	0x4
	.byte	0xfc
	.4byte	0xa0
	.byte	0x18
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x4
	.byte	0xfd
	.4byte	0xa0
	.byte	0x1c
	.uleb128 0x9
	.4byte	.LASF23
	.byte	0x4
	.byte	0xfe
	.4byte	0xa0
	.byte	0x20
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x4
	.2byte	0x100
	.4byte	0xa0
	.byte	0x24
	.uleb128 0xa
	.4byte	.LASF25
	.byte	0x4
	.2byte	0x101
	.4byte	0xa0
	.byte	0x28
	.uleb128 0xa
	.4byte	.LASF26
	.byte	0x4
	.2byte	0x102
	.4byte	0xa0
	.byte	0x2c
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x4
	.2byte	0x104
	.4byte	0x267
	.byte	0x30
	.uleb128 0xa
	.4byte	.LASF28
	.byte	0x4
	.2byte	0x106
	.4byte	0x26d
	.byte	0x34
	.uleb128 0xa
	.4byte	.LASF29
	.byte	0x4
	.2byte	0x108
	.4byte	0x5a
	.byte	0x38
	.uleb128 0xa
	.4byte	.LASF30
	.byte	0x4
	.2byte	0x10c
	.4byte	0x5a
	.byte	0x3c
	.uleb128 0xa
	.4byte	.LASF31
	.byte	0x4
	.2byte	0x10e
	.4byte	0x7a
	.byte	0x40
	.uleb128 0xa
	.4byte	.LASF32
	.byte	0x4
	.2byte	0x112
	.4byte	0x3e
	.byte	0x44
	.uleb128 0xa
	.4byte	.LASF33
	.byte	0x4
	.2byte	0x113
	.4byte	0x4c
	.byte	0x46
	.uleb128 0xa
	.4byte	.LASF34
	.byte	0x4
	.2byte	0x114
	.4byte	0x273
	.byte	0x47
	.uleb128 0xa
	.4byte	.LASF35
	.byte	0x4
	.2byte	0x118
	.4byte	0x283
	.byte	0x48
	.uleb128 0xa
	.4byte	.LASF36
	.byte	0x4
	.2byte	0x121
	.4byte	0x8c
	.byte	0x50
	.uleb128 0xa
	.4byte	.LASF37
	.byte	0x4
	.2byte	0x129
	.4byte	0x9e
	.byte	0x58
	.uleb128 0xa
	.4byte	.LASF38
	.byte	0x4
	.2byte	0x12a
	.4byte	0x9e
	.byte	0x5c
	.uleb128 0xa
	.4byte	.LASF39
	.byte	0x4
	.2byte	0x12b
	.4byte	0x9e
	.byte	0x60
	.uleb128 0xa
	.4byte	.LASF40
	.byte	0x4
	.2byte	0x12c
	.4byte	0x9e
	.byte	0x64
	.uleb128 0xa
	.4byte	.LASF41
	.byte	0x4
	.2byte	0x12e
	.4byte	0x25
	.byte	0x68
	.uleb128 0xa
	.4byte	.LASF42
	.byte	0x4
	.2byte	0x12f
	.4byte	0x5a
	.byte	0x6c
	.uleb128 0xa
	.4byte	.LASF43
	.byte	0x4
	.2byte	0x131
	.4byte	0x289
	.byte	0x70
	.byte	0
	.uleb128 0xb
	.4byte	.LASF74
	.byte	0x4
	.byte	0x96
	.uleb128 0x8
	.4byte	.LASF45
	.byte	0xc
	.byte	0x4
	.byte	0x9c
	.4byte	0x267
	.uleb128 0x9
	.4byte	.LASF46
	.byte	0x4
	.byte	0x9d
	.4byte	0x267
	.byte	0
	.uleb128 0x9
	.4byte	.LASF47
	.byte	0x4
	.byte	0x9e
	.4byte	0x26d
	.byte	0x4
	.uleb128 0x9
	.4byte	.LASF48
	.byte	0x4
	.byte	0xa2
	.4byte	0x5a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x236
	.uleb128 0x6
	.byte	0x4
	.4byte	0xb2
	.uleb128 0xc
	.4byte	0xa6
	.4byte	0x283
	.uleb128 0xd
	.4byte	0x97
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x22f
	.uleb128 0xc
	.4byte	0xa6
	.4byte	0x299
	.uleb128 0xd
	.4byte	0x97
	.byte	0x27
	.byte	0
	.uleb128 0xe
	.4byte	.LASF75
	.uleb128 0xf
	.4byte	.LASF49
	.byte	0x4
	.2byte	0x13b
	.4byte	0x299
	.uleb128 0xf
	.4byte	.LASF50
	.byte	0x4
	.2byte	0x13c
	.4byte	0x299
	.uleb128 0xf
	.4byte	.LASF51
	.byte	0x4
	.2byte	0x13d
	.4byte	0x299
	.uleb128 0x6
	.byte	0x4
	.4byte	0xad
	.uleb128 0x7
	.4byte	0x2c2
	.uleb128 0x10
	.4byte	.LASF52
	.byte	0x5
	.byte	0xaa
	.4byte	0x26d
	.uleb128 0x10
	.4byte	.LASF53
	.byte	0x5
	.byte	0xab
	.4byte	0x26d
	.uleb128 0x10
	.4byte	.LASF54
	.byte	0x5
	.byte	0xac
	.4byte	0x26d
	.uleb128 0x10
	.4byte	.LASF55
	.byte	0x6
	.byte	0x1a
	.4byte	0x5a
	.uleb128 0xc
	.4byte	0x2c8
	.4byte	0x304
	.uleb128 0x11
	.byte	0
	.uleb128 0x7
	.4byte	0x2f9
	.uleb128 0x10
	.4byte	.LASF56
	.byte	0x6
	.byte	0x1b
	.4byte	0x304
	.uleb128 0x12
	.ascii	"s32\000"
	.byte	0x7
	.byte	0x24
	.4byte	0x85
	.uleb128 0x12
	.ascii	"u32\000"
	.byte	0x7
	.byte	0x25
	.4byte	0x45
	.uleb128 0x12
	.ascii	"s8\000"
	.byte	0x7
	.byte	0x28
	.4byte	0x4c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x32a
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x7
	.byte	0x38
	.4byte	0x31f
	.uleb128 0xc
	.4byte	0x2c8
	.4byte	0x355
	.uleb128 0xd
	.4byte	0x97
	.byte	0x40
	.byte	0
	.uleb128 0x7
	.4byte	0x345
	.uleb128 0xf
	.4byte	.LASF58
	.byte	0x8
	.2byte	0x12d
	.4byte	0x355
	.uleb128 0xf
	.4byte	.LASF59
	.byte	0x8
	.2byte	0x12e
	.4byte	0x355
	.uleb128 0x13
	.4byte	.LASF76
	.byte	0x1
	.byte	0x6b
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x396
	.uleb128 0x14
	.4byte	.LASF62
	.byte	0x1
	.byte	0x6b
	.4byte	0x33a
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x15
	.4byte	.LASF60
	.byte	0x1
	.byte	0x62
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF61
	.byte	0x1
	.byte	0x5b
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x16
	.4byte	.LASF77
	.byte	0x1
	.byte	0xe
	.4byte	0x314
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x4c4
	.uleb128 0x14
	.4byte	.LASF63
	.byte	0x1
	.byte	0xe
	.4byte	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x14
	.4byte	.LASF64
	.byte	0x1
	.byte	0xe
	.4byte	0x4c4
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x17
	.4byte	.LASF65
	.byte	0x1
	.byte	0xf
	.4byte	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x17
	.4byte	.LASF66
	.byte	0x1
	.byte	0x10
	.4byte	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -24
	.uleb128 0x17
	.4byte	.LASF67
	.byte	0x1
	.byte	0x11
	.4byte	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x17
	.4byte	.LASF62
	.byte	0x1
	.byte	0x12
	.4byte	0x31f
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x18
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.4byte	0x440
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x9
	.byte	0
	.4byte	0x5a
	.uleb128 0x1a
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LBB3
	.4byte	.LBE3-.LBB3
	.4byte	0x45b
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x9
	.byte	0
	.4byte	0x5a
	.uleb128 0x1a
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LBB4
	.4byte	.LBE4-.LBB4
	.4byte	0x476
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x9
	.byte	0
	.4byte	0x5a
	.uleb128 0x1a
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LBB5
	.4byte	.LBE5-.LBB5
	.4byte	0x491
	.uleb128 0x19
	.4byte	.LASF68
	.byte	0x9
	.byte	0
	.4byte	0x5a
	.uleb128 0x1a
	.byte	0
	.byte	0
	.uleb128 0x18
	.4byte	.LBB6
	.4byte	.LBE6-.LBB6
	.4byte	0x4ac
	.uleb128 0x19
	.4byte	.LASF69
	.byte	0x1
	.byte	0x44
	.4byte	0x5a
	.uleb128 0x1a
	.byte	0
	.byte	0
	.uleb128 0x1b
	.4byte	.LBB7
	.4byte	.LBE7-.LBB7
	.uleb128 0x19
	.4byte	.LASF70
	.byte	0x1
	.byte	0x46
	.4byte	0x5a
	.uleb128 0x1a
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.4byte	0x334
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.Ltext0
	.4byte	.Letext0-.Ltext0
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF9:
	.ascii	"__quad_t\000"
.LASF62:
	.ascii	"result\000"
.LASF44:
	.ascii	"_IO_FILE\000"
.LASF55:
	.ascii	"sys_nerr\000"
.LASF26:
	.ascii	"_IO_save_end\000"
.LASF5:
	.ascii	"short int\000"
.LASF8:
	.ascii	"size_t\000"
.LASF13:
	.ascii	"sizetype\000"
.LASF36:
	.ascii	"_offset\000"
.LASF20:
	.ascii	"_IO_write_ptr\000"
.LASF15:
	.ascii	"_flags\000"
.LASF50:
	.ascii	"_IO_2_1_stdout_\000"
.LASF68:
	.ascii	"strncmp\000"
.LASF73:
	.ascii	"/home/pi/Desktop/linux_source/final/gpio_control/sr"
	.ascii	"c/main\000"
.LASF59:
	.ascii	"sys_siglist\000"
.LASF66:
	.ascii	"read_value\000"
.LASF69:
	.ascii	"gpio_write\000"
.LASF67:
	.ascii	"write_value\000"
.LASF54:
	.ascii	"stderr\000"
.LASF60:
	.ascii	"print_full_usage\000"
.LASF35:
	.ascii	"_lock\000"
.LASF11:
	.ascii	"long int\000"
.LASF57:
	.ascii	"HIL_RESULT\000"
.LASF32:
	.ascii	"_cur_column\000"
.LASF51:
	.ascii	"_IO_2_1_stderr_\000"
.LASF27:
	.ascii	"_markers\000"
.LASF48:
	.ascii	"_pos\000"
.LASF65:
	.ascii	"pin_number\000"
.LASF64:
	.ascii	"argv\000"
.LASF47:
	.ascii	"_sbuf\000"
.LASF31:
	.ascii	"_old_offset\000"
.LASF61:
	.ascii	"print_usage\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF70:
	.ascii	"gpio_read\000"
.LASF63:
	.ascii	"argc\000"
.LASF4:
	.ascii	"signed char\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF49:
	.ascii	"_IO_2_1_stdin_\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF45:
	.ascii	"_IO_marker\000"
.LASF34:
	.ascii	"_shortbuf\000"
.LASF72:
	.ascii	"./src/main.c\000"
.LASF17:
	.ascii	"_IO_read_end\000"
.LASF19:
	.ascii	"_IO_write_base\000"
.LASF43:
	.ascii	"_unused2\000"
.LASF16:
	.ascii	"_IO_read_ptr\000"
.LASF58:
	.ascii	"_sys_siglist\000"
.LASF23:
	.ascii	"_IO_buf_end\000"
.LASF14:
	.ascii	"char\000"
.LASF77:
	.ascii	"main\000"
.LASF46:
	.ascii	"_next\000"
.LASF37:
	.ascii	"__pad1\000"
.LASF38:
	.ascii	"__pad2\000"
.LASF39:
	.ascii	"__pad3\000"
.LASF40:
	.ascii	"__pad4\000"
.LASF41:
	.ascii	"__pad5\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF3:
	.ascii	"long unsigned int\000"
.LASF21:
	.ascii	"_IO_write_end\000"
.LASF12:
	.ascii	"__off64_t\000"
.LASF29:
	.ascii	"_fileno\000"
.LASF28:
	.ascii	"_chain\000"
.LASF10:
	.ascii	"__off_t\000"
.LASF25:
	.ascii	"_IO_backup_base\000"
.LASF52:
	.ascii	"stdin\000"
.LASF22:
	.ascii	"_IO_buf_base\000"
.LASF30:
	.ascii	"_flags2\000"
.LASF42:
	.ascii	"_mode\000"
.LASF18:
	.ascii	"_IO_read_base\000"
.LASF33:
	.ascii	"_vtable_offset\000"
.LASF24:
	.ascii	"_IO_save_base\000"
.LASF56:
	.ascii	"sys_errlist\000"
.LASF75:
	.ascii	"_IO_FILE_plus\000"
.LASF53:
	.ascii	"stdout\000"
.LASF6:
	.ascii	"long long int\000"
.LASF74:
	.ascii	"_IO_lock_t\000"
.LASF76:
	.ascii	"assert\000"
.LASF71:
	.ascii	"GNU C11 6.3.0 20170516 -march=armv6 -mfloat-abi=har"
	.ascii	"d -mfpu=vfp -mtls-dialect=gnu -g\000"
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
