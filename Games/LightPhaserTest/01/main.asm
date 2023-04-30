;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _SMS_setSpritePaletteColor
	.globl _SMS_waitForVBlank
	.globl _SMS_VDPturnOnFeature
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
_SMS_SRAM	=	0x8000
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
;main.c:2: void main (void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:4: SMS_setSpritePaletteColor(0, RGB(3,3,3));
	ld	a, #0x3f
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_SMS_setSpritePaletteColor
	pop	af
;main.c:5: SMS_displayOn();
	ld	hl, #0x0140
	call	_SMS_VDPturnOnFeature
00102$:
;main.c:8: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
;main.c:10: }
	jr	00102$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
