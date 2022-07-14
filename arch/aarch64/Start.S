/* SPDX-License-Identifier: GPL-2.0 */
/*
 * Copyright (c) 2022, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
 */

	b	main			// branch to kernel start, magic
	.quad	0x8000				// Image load offset from start of RAM, little-endian
	.quad   0    /* Effective size of kernel image, little-endian */
	.quad   0    /* kernel flags, little-endian */
	.quad	0				// reserved
	.quad	0				// reserved
	.quad	0				// reserved
	.byte   0x41 /* Magic number, "ARM\x64" */
	.byte   0x52
	.byte   0x4d
	.byte   0x64
	.word   0    /* reserved (used for PE COFF offset) */
