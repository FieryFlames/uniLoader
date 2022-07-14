/* SPDX-License-Identifier: GPL-2.0 */
/*
 * Copyright (c) 2022, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
 */

OUTPUT_FORMAT("elf64-littleaarch64")
OUTPUT_ARCH(aarch64)
TARGET(binary)

SECTIONS
{
	. = 0x00000000;

	. = ALIGN(8);
	.text :
	{
		arch/aarch64/Start.o (.text*)
	}

	. = ALIGN(8);
	.data : {
		*(.data*)
	}

	. = ALIGN(8);

	. = .;
	
	_end = .;
}