;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _SG_waitForVBlank
	.globl _SG_setBackdropColor
	.globl _SG_VDPturnOnFeature
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
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
;main.c:3: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:5: SG_setBackdropColor(SG_COLOR_LIGHT_RED);
	ld	a, #0x09
	push	af
	inc	sp
	call	_SG_setBackdropColor
	inc	sp
;main.c:6: SG_displayOn();
	ld	hl, #0x0140
	push	hl
	call	_SG_VDPturnOnFeature
	pop	af
00102$:
;main.c:9: SG_waitForVBlank();
	call	_SG_waitForVBlank
	jr	00102$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
