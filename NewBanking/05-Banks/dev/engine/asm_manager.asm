;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module asm_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_asm_manager_clear_VRAM
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
G$VDPControlPort$0_0$0 == 0x00bf
_VDPControlPort	=	0x00bf
G$VDPDataPort$0_0$0 == 0x00be
_VDPDataPort	=	0x00be
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$engine_asm_manager_clear_VRAM$0$0	= .
	.globl	G$engine_asm_manager_clear_VRAM$0$0
	C$asm_manager.c$11$0_0$1	= .
	.globl	C$asm_manager.c$11$0_0$1
;asm_manager.c:11: void engine_asm_manager_clear_VRAM()
;	---------------------------------
; Function engine_asm_manager_clear_VRAM
; ---------------------------------
_engine_asm_manager_clear_VRAM::
	C$asm_manager.c$30$1_0$1	= .
	.globl	C$asm_manager.c$30$1_0$1
;asm_manager.c:30: __endasm;
	ld	a, #0x00
	out(	_VDPControlPort ), a
	ld	a, #0x40
	out(	_VDPControlPort ), a
	ld	bc, #0x4000
	  ClearVRAMLoop:
	ld	a, #0x00
	out(	_VDPDataPort ), a
	dec	bc
	ld	a, b
	or	c
	jp	nz, ClearVRAMLoop
	C$asm_manager.c$33$1_0$1	= .
	.globl	C$asm_manager.c$33$1_0$1
;asm_manager.c:33: }
	C$asm_manager.c$33$1_0$1	= .
	.globl	C$asm_manager.c$33$1_0$1
	XG$engine_asm_manager_clear_VRAM$0$0	= .
	.globl	XG$engine_asm_manager_clear_VRAM$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
