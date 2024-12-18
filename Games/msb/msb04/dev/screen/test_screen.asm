;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module test_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _devkit_SMS_mapROMBank
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_displayOn
	.globl _engine_input_manager_hold
	.globl _engine_font_manager_text
	.globl _engine_content_manager_load_level1_assets
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
	C$test_screen.c$18$0_0$102	= .
	.globl	C$test_screen.c$18$0_0$102
;test_screen.c:18: void screen_test_screen_load()
;	---------------------------------
; Function screen_test_screen_load
; ---------------------------------
_screen_test_screen_load::
	C$test_screen.c$20$1_0$102	= .
	.globl	C$test_screen.c$20$1_0$102
;test_screen.c:20: devkit_SMS_displayOff();
	call	_devkit_SMS_displayOff
	C$test_screen.c$23$1_0$102	= .
	.globl	C$test_screen.c$23$1_0$102
;test_screen.c:23: engine_content_manager_load_level1_assets();
	call	_engine_content_manager_load_level1_assets
	C$test_screen.c$24$1_0$102	= .
	.globl	C$test_screen.c$24$1_0$102
;test_screen.c:24: devkit_SMS_displayOn();
	C$test_screen.c$25$1_0$102	= .
	.globl	C$test_screen.c$25$1_0$102
;test_screen.c:25: }
	C$test_screen.c$25$1_0$102	= .
	.globl	C$test_screen.c$25$1_0$102
	XG$screen_test_screen_load$0$0	= .
	.globl	XG$screen_test_screen_load$0$0
	jp	_devkit_SMS_displayOn
	G$screen_test_screen_update$0$0	= .
	.globl	G$screen_test_screen_update$0$0
	C$test_screen.c$27$1_0$104	= .
	.globl	C$test_screen.c$27$1_0$104
;test_screen.c:27: void screen_test_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_test_screen_update
; ---------------------------------
_screen_test_screen_update::
	C$test_screen.c$29$1_0$104	= .
	.globl	C$test_screen.c$29$1_0$104
;test_screen.c:29: unsigned char input = engine_input_manager_hold(1);
	ld	a, #0x01
	push	af
	inc	sp
	call	_engine_input_manager_hold
	ld	a, l
	inc	sp
	C$test_screen.c$30$1_0$104	= .
	.globl	C$test_screen.c$30$1_0$104
;test_screen.c:30: if( input )
	or	a, a
	jr	Z, 00102$
	C$test_screen.c$32$2_0$105	= .
	.globl	C$test_screen.c$32$2_0$105
;test_screen.c:32: engine_font_manager_text( "TEST SCREEN", 11, 7 );
	ld	de, #0x070b
	push	de
	ld	hl, #___str_0
	push	hl
	call	_engine_font_manager_text
	pop	af
	C$test_screen.c$33$2_0$105	= .
	.globl	C$test_screen.c$33$2_0$105
;test_screen.c:33: devkit_SMS_mapROMBank( level1music_psg_bank );
	ld	h,#0x04
	ex	(sp),hl
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
00102$:
	C$test_screen.c$38$1_0$104	= .
	.globl	C$test_screen.c$38$1_0$104
;test_screen.c:38: *screen_type = screen_type_test;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0x16
	C$test_screen.c$39$1_0$104	= .
	.globl	C$test_screen.c$39$1_0$104
;test_screen.c:39: }
	C$test_screen.c$39$1_0$104	= .
	.globl	C$test_screen.c$39$1_0$104
	XG$screen_test_screen_update$0$0	= .
	.globl	XG$screen_test_screen_update$0$0
	ret
Ftest_screen$__str_0$0_0$0 == .
___str_0:
	.ascii "TEST SCREEN"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
