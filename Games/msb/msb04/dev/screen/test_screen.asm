;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module test_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	C$test_screen.c$11$0_0$6	= .
	.globl	C$test_screen.c$11$0_0$6
;test_screen.c:11: void screen_test_screen_load()
;	---------------------------------
; Function screen_test_screen_load
; ---------------------------------
_screen_test_screen_load::
	C$test_screen.c$13$1_0$6	= .
	.globl	C$test_screen.c$13$1_0$6
;test_screen.c:13: engine_font_manager_text( "TEST SCREEN", 1, 5 );
	ld	de, #0x0501
	push	de
	ld	hl, #___str_0
	push	hl
	call	_engine_font_manager_text
	pop	af
	pop	af
	C$test_screen.c$14$1_0$6	= .
	.globl	C$test_screen.c$14$1_0$6
;test_screen.c:14: }
	C$test_screen.c$14$1_0$6	= .
	.globl	C$test_screen.c$14$1_0$6
	XG$screen_test_screen_load$0$0	= .
	.globl	XG$screen_test_screen_load$0$0
	ret
Ftest_screen$__str_0$0_0$0 == .
___str_0:
	.ascii "TEST SCREEN"
	.db 0x00
	G$screen_test_screen_update$0$0	= .
	.globl	G$screen_test_screen_update$0$0
	C$test_screen.c$16$1_0$8	= .
	.globl	C$test_screen.c$16$1_0$8
;test_screen.c:16: void screen_test_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_test_screen_update
; ---------------------------------
_screen_test_screen_update::
	C$test_screen.c$18$1_0$8	= .
	.globl	C$test_screen.c$18$1_0$8
;test_screen.c:18: *screen_type = screen_type_test;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0x16
	C$test_screen.c$19$1_0$8	= .
	.globl	C$test_screen.c$19$1_0$8
;test_screen.c:19: }
	C$test_screen.c$19$1_0$8	= .
	.globl	C$test_screen.c$19$1_0$8
	XG$screen_test_screen_update$0$0	= .
	.globl	XG$screen_test_screen_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
