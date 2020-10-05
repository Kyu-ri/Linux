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
	.file	"HIL_mems.c"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.align	2
	.global	HIL_malloc
	.syntax unified
	.arm
	.fpu vfp
	.type	HIL_malloc, %function
HIL_malloc:
.LFB2:
	.file 1 "./src/HIL_mems.c"
	.loc 1 64 0
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
	.loc 1 67 0
	ldr	r0, [fp, #-8]
	bl	malloc
	mov	r3, r0
	.loc 1 69 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE2:
	.size	HIL_malloc, .-HIL_malloc
	.align	2
	.global	HIL_free
	.syntax unified
	.arm
	.fpu vfp
	.type	HIL_free, %function
HIL_free:
.LFB3:
	.loc 1 83 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	.loc 1 85 0
	mov	r3, #0
	str	r3, [fp, #-8]
	.loc 1 86 0
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L4
	.loc 1 86 0 is_stmt 0 discriminator 1
	ldr	r0, [fp, #-16]
	bl	free
	b	.L5
.L4:
	.loc 1 87 0 is_stmt 1
	mov	r3, #-2147483647
	str	r3, [fp, #-8]
.L5:
	.loc 1 90 0
	ldr	r3, [fp, #-8]
	.loc 1 92 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE3:
	.size	HIL_free, .-HIL_free
	.align	2
	.global	HIL_memset
	.syntax unified
	.arm
	.fpu vfp
	.type	HIL_memset, %function
HIL_memset:
.LFB4:
	.loc 1 106 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 11, -4
	add	fp, sp, #0
	.cfi_def_cfa_register 11
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	.loc 1 109 0
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-12]
	.loc 1 110 0
	mov	r3, #0
	str	r3, [fp, #-16]
	.loc 1 112 0
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L8
.L9:
	.loc 1 113 0 discriminator 3
	ldr	r3, [fp, #-28]
	sxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3]
	.loc 1 114 0 discriminator 3
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	.loc 1 112 0 discriminator 3
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L8:
	.loc 1 112 0 is_stmt 0 discriminator 1
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bcc	.L9
	.loc 1 119 0 is_stmt 1
	ldr	r3, [fp, #-16]
	.loc 1 121 0
	mov	r0, r3
	add	sp, fp, #0
	.cfi_def_cfa_register 13
	@ sp needed
	ldr	fp, [sp], #4
	.cfi_restore 11
	.cfi_def_cfa_offset 0
	bx	lr
	.cfi_endproc
.LFE4:
	.size	HIL_memset, .-HIL_memset
	.align	2
	.global	HIL_memcpy
	.syntax unified
	.arm
	.fpu vfp
	.type	HIL_memcpy, %function
HIL_memcpy:
.LFB5:
	.loc 1 135 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 11, -8
	.cfi_offset 14, -4
	add	fp, sp, #4
	.cfi_def_cfa 11, 4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	.loc 1 139 0
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	memcpy
	mov	r3, r0
	.loc 1 141 0
	mov	r0, r3
	sub	sp, fp, #4
	.cfi_def_cfa 13, 8
	@ sp needed
	pop	{fp, pc}
	.cfi_endproc
.LFE5:
	.size	HIL_memcpy, .-HIL_memcpy
.Letext0:
	.file 2 "/usr/lib/gcc/arm-linux-gnueabihf/6/include/stddef.h"
	.file 3 "/usr/include/arm-linux-gnueabihf/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/stdio.h"
	.file 6 "/usr/include/arm-linux-gnueabihf/bits/sys_errlist.h"
	.file 7 "../../hdr/HIL_types.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x453
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF67
	.byte	0xc
	.4byte	.LASF68
	.4byte	.LASF69
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
	.4byte	.LASF70
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
	.4byte	.LASF71
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
	.uleb128 0x6
	.byte	0x4
	.4byte	0x31a
	.uleb128 0x12
	.uleb128 0x13
	.ascii	"s32\000"
	.byte	0x7
	.byte	0x24
	.4byte	0x85
	.uleb128 0x13
	.ascii	"u32\000"
	.byte	0x7
	.byte	0x25
	.4byte	0x45
	.uleb128 0x13
	.ascii	"s8\000"
	.byte	0x7
	.byte	0x28
	.4byte	0x4c
	.uleb128 0x6
	.byte	0x4
	.4byte	0x331
	.uleb128 0x2
	.4byte	.LASF57
	.byte	0x7
	.byte	0x38
	.4byte	0x326
	.uleb128 0x14
	.4byte	.LASF60
	.byte	0x1
	.byte	0x83
	.4byte	0x9e
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x390
	.uleb128 0x15
	.4byte	.LASF58
	.byte	0x1
	.byte	0x84
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x16
	.ascii	"src\000"
	.byte	0x1
	.byte	0x85
	.4byte	0x314
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x15
	.4byte	.LASF59
	.byte	0x1
	.byte	0x86
	.4byte	0x25
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x17
	.4byte	.LASF61
	.byte	0x1
	.byte	0x66
	.4byte	0x341
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x3fc
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x1
	.byte	0x67
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -28
	.uleb128 0x15
	.4byte	.LASF63
	.byte	0x1
	.byte	0x68
	.4byte	0x31b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x1
	.byte	0x69
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -36
	.uleb128 0x18
	.ascii	"i\000"
	.byte	0x1
	.byte	0x6c
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x18
	.ascii	"npP\000"
	.byte	0x1
	.byte	0x6d
	.4byte	0x33b
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x19
	.4byte	.LASF65
	.byte	0x1
	.byte	0x6e
	.4byte	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x14
	.4byte	.LASF66
	.byte	0x1
	.byte	0x52
	.4byte	0x341
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x432
	.uleb128 0x15
	.4byte	.LASF62
	.byte	0x1
	.byte	0x52
	.4byte	0x9e
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x19
	.4byte	.LASF65
	.byte	0x1
	.byte	0x55
	.4byte	0x341
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x1a
	.4byte	.LASF72
	.byte	0x1
	.byte	0x3f
	.4byte	0x9e
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x15
	.4byte	.LASF64
	.byte	0x1
	.byte	0x3f
	.4byte	0x326
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x19
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
.LASF67:
	.ascii	"GNU C11 6.3.0 20170516 -march=armv6 -mfloat-abi=har"
	.ascii	"d -mfpu=vfp -mtls-dialect=gnu -g\000"
.LASF59:
	.ascii	"count\000"
.LASF16:
	.ascii	"_IO_read_ptr\000"
.LASF28:
	.ascii	"_chain\000"
.LASF8:
	.ascii	"size_t\000"
.LASF34:
	.ascii	"_shortbuf\000"
.LASF65:
	.ascii	"nRes\000"
.LASF61:
	.ascii	"HIL_memset\000"
.LASF51:
	.ascii	"_IO_2_1_stderr_\000"
.LASF22:
	.ascii	"_IO_buf_base\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF6:
	.ascii	"long long int\000"
.LASF4:
	.ascii	"signed char\000"
.LASF57:
	.ascii	"HIL_RESULT\000"
.LASF29:
	.ascii	"_fileno\000"
.LASF17:
	.ascii	"_IO_read_end\000"
.LASF11:
	.ascii	"long int\000"
.LASF72:
	.ascii	"HIL_malloc\000"
.LASF15:
	.ascii	"_flags\000"
.LASF23:
	.ascii	"_IO_buf_end\000"
.LASF32:
	.ascii	"_cur_column\000"
.LASF63:
	.ascii	"nValue\000"
.LASF9:
	.ascii	"__quad_t\000"
.LASF31:
	.ascii	"_old_offset\000"
.LASF36:
	.ascii	"_offset\000"
.LASF62:
	.ascii	"npPtr\000"
.LASF45:
	.ascii	"_IO_marker\000"
.LASF52:
	.ascii	"stdin\000"
.LASF0:
	.ascii	"unsigned int\000"
.LASF3:
	.ascii	"long unsigned int\000"
.LASF71:
	.ascii	"_IO_FILE_plus\000"
.LASF20:
	.ascii	"_IO_write_ptr\000"
.LASF66:
	.ascii	"HIL_free\000"
.LASF55:
	.ascii	"sys_nerr\000"
.LASF47:
	.ascii	"_sbuf\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF60:
	.ascii	"HIL_memcpy\000"
.LASF24:
	.ascii	"_IO_save_base\000"
.LASF35:
	.ascii	"_lock\000"
.LASF30:
	.ascii	"_flags2\000"
.LASF42:
	.ascii	"_mode\000"
.LASF53:
	.ascii	"stdout\000"
.LASF49:
	.ascii	"_IO_2_1_stdin_\000"
.LASF13:
	.ascii	"sizetype\000"
.LASF21:
	.ascii	"_IO_write_end\000"
.LASF70:
	.ascii	"_IO_lock_t\000"
.LASF44:
	.ascii	"_IO_FILE\000"
.LASF58:
	.ascii	"dest\000"
.LASF10:
	.ascii	"__off_t\000"
.LASF48:
	.ascii	"_pos\000"
.LASF56:
	.ascii	"sys_errlist\000"
.LASF27:
	.ascii	"_markers\000"
.LASF1:
	.ascii	"unsigned char\000"
.LASF5:
	.ascii	"short int\000"
.LASF69:
	.ascii	"/home/pi/Desktop/linux_source/final/gpio_control/sr"
	.ascii	"c/util\000"
.LASF33:
	.ascii	"_vtable_offset\000"
.LASF50:
	.ascii	"_IO_2_1_stdout_\000"
.LASF64:
	.ascii	"nSize\000"
.LASF14:
	.ascii	"char\000"
.LASF46:
	.ascii	"_next\000"
.LASF12:
	.ascii	"__off64_t\000"
.LASF18:
	.ascii	"_IO_read_base\000"
.LASF26:
	.ascii	"_IO_save_end\000"
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
.LASF43:
	.ascii	"_unused2\000"
.LASF54:
	.ascii	"stderr\000"
.LASF25:
	.ascii	"_IO_backup_base\000"
.LASF68:
	.ascii	"./src/HIL_mems.c\000"
.LASF19:
	.ascii	"_IO_write_base\000"
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1+deb9u1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
