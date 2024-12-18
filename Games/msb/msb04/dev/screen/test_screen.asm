;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module test_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _devkit_PSGPlay
	.globl _devkit_RGB
	.globl _devkit_SMS_setSpritePaletteColor
	.globl _devkit_SMS_mapROMBank
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_displayOn
	.globl _engine_input_manager_hold
	.globl _engine_font_manager_text
	.globl _screen_test_screen_load
	.globl _screen_test_screen_update
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
	G$screen_test_screen_load$0$0	= .
	.globl	G$screen_test_screen_load$0$0
	C$test_screen.c$17$0_0$102	= .
	.globl	C$test_screen.c$17$0_0$102
;test_screen.c:17: void screen_test_screen_load()
;	---------------------------------
; Function screen_test_screen_load
; ---------------------------------
_screen_test_screen_load::
	C$test_screen.c$19$1_0$102	= .
	.globl	C$test_screen.c$19$1_0$102
;test_screen.c:19: devkit_SMS_displayOff();
	call	_devkit_SMS_displayOff
	C$test_screen.c$20$1_0$102	= .
	.globl	C$test_screen.c$20$1_0$102
;test_screen.c:20: devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 0, 0, 3 ) );
	ld	a, #0x03
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_devkit_RGB
	pop	af
	ld	a, l
	inc	sp
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_devkit_SMS_setSpritePaletteColor
	pop	af
	C$test_screen.c$21$1_0$102	= .
	.globl	C$test_screen.c$21$1_0$102
;test_screen.c:21: engine_font_manager_text( "TEST SCREEN", 11, 5 );
	ld	de, #0x050b
	push	de
	ld	hl, #___str_0
	push	hl
	call	_engine_font_manager_text
	pop	af
	pop	af
	C$test_screen.c$22$1_0$102	= .
	.globl	C$test_screen.c$22$1_0$102
;test_screen.c:22: devkit_SMS_displayOn();
	C$test_screen.c$23$1_0$102	= .
	.globl	C$test_screen.c$23$1_0$102
;test_screen.c:23: }
	C$test_screen.c$23$1_0$102	= .
	.globl	C$test_screen.c$23$1_0$102
	XG$screen_test_screen_load$0$0	= .
	.globl	XG$screen_test_screen_load$0$0
	jp	_devkit_SMS_displayOn
Ftest_screen$__str_0$0_0$0 == .
___str_0:
	.ascii "TEST SCREEN"
	.db 0x00
	G$screen_test_screen_update$0$0	= .
	.globl	G$screen_test_screen_update$0$0
	C$test_screen.c$25$1_0$104	= .
	.globl	C$test_screen.c$25$1_0$104
;test_screen.c:25: void screen_test_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_test_screen_update
; ---------------------------------
_screen_test_screen_update::
	C$test_screen.c$27$1_0$104	= .
	.globl	C$test_screen.c$27$1_0$104
;test_screen.c:27: unsigned char input = engine_input_manager_hold(1);
	ld	a, #0x01
	push	af
	inc	sp
	call	_engine_input_manager_hold
	ld	a, l
	inc	sp
	C$test_screen.c$28$1_0$104	= .
	.globl	C$test_screen.c$28$1_0$104
;test_screen.c:28: if( input )
	or	a, a
	jr	Z, 00102$
	C$test_screen.c$30$2_0$105	= .
	.globl	C$test_screen.c$30$2_0$105
;test_screen.c:30: engine_font_manager_text( "TEST SCREEN", 11, 7 );
	ld	de, #0x070b
	push	de
	ld	hl, #___str_1
	push	hl
	call	_engine_font_manager_text
	pop	af
	C$test_screen.c$31$2_0$105	= .
	.globl	C$test_screen.c$31$2_0$105
;test_screen.c:31: devkit_SMS_mapROMBank( level1music_psg_bank );
	ld	h,#0x04
	ex	(sp),hl
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$test_screen.c$33$2_0$105	= .
	.globl	C$test_screen.c$33$2_0$105
;test_screen.c:33: devkit_PSGPlay( ( unsigned char * ) level1music_psg );
	ld	hl, #_level1music_psg
	push	hl
	call	_devkit_PSGPlay
	pop	af
00102$:
	C$test_screen.c$36$1_0$104	= .
	.globl	C$test_screen.c$36$1_0$104
;test_screen.c:36: *screen_type = screen_type_test;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0x16
	C$test_screen.c$37$1_0$104	= .
	.globl	C$test_screen.c$37$1_0$104
;test_screen.c:37: }
	C$test_screen.c$37$1_0$104	= .
	.globl	C$test_screen.c$37$1_0$104
	XG$screen_test_screen_update$0$0	= .
	.globl	XG$screen_test_screen_update$0$0
	ret
Ftest_screen$__str_1$0_0$0 == .
___str_1:
	.ascii "TEST SCREEN"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
