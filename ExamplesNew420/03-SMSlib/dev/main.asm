;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _devkit_RGB
	.globl _devkit_SMS_setSpritePaletteColor
	.globl _devkit_SMS_setBGPaletteColor
	.globl _devkit_SMS_waitForVBlank
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_displayOn
	.globl _devkit_SMS_init
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
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$3$0_0$126	= .
	.globl	C$main.c$3$0_0$126
;main.c:3: void main( void )
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$5$1_0$126	= .
	.globl	C$main.c$5$1_0$126
;main.c:5: devkit_SMS_init();
	call	_devkit_SMS_init
	C$main.c$6$1_0$126	= .
	.globl	C$main.c$6$1_0$126
;main.c:6: devkit_SMS_displayOff();
	call	_devkit_SMS_displayOff
	C$main.c$8$1_0$126	= .
	.globl	C$main.c$8$1_0$126
;main.c:8: devkit_SMS_setBGPaletteColor( 0, devkit_RGB( 0, 0, 0 ) );
	xor	a, a
	push	af
	inc	sp
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	ld	l, a
	call	_devkit_RGB
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	call	_devkit_SMS_setBGPaletteColor
	C$main.c$9$1_0$126	= .
	.globl	C$main.c$9$1_0$126
;main.c:9: devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 0, 3, 0 ) );
	xor	a, a
	push	af
	inc	sp
	ld	l, #0x03
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	call	_devkit_RGB
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	call	_devkit_SMS_setSpritePaletteColor
	C$main.c$10$1_0$126	= .
	.globl	C$main.c$10$1_0$126
;main.c:10: devkit_SMS_displayOn();
	call	_devkit_SMS_displayOn
00102$:
	C$main.c$13$3_0$128	= .
	.globl	C$main.c$13$3_0$128
;main.c:13: devkit_SMS_waitForVBlank();
	call	_devkit_SMS_waitForVBlank
	C$main.c$15$2_0$126	= .
	.globl	C$main.c$15$2_0$126
;main.c:15: }
	C$main.c$15$2_0$126	= .
	.globl	C$main.c$15$2_0$126
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jp	00102$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
