;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module none_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_font_manager_text
	.globl _screen_none_screen_load
	.globl _screen_none_screen_update
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
	G$screen_none_screen_load$0$0	= .
	.globl	G$screen_none_screen_load$0$0
	C$none_screen.c$5$0_0$6	= .
	.globl	C$none_screen.c$5$0_0$6
;none_screen.c:5: void screen_none_screen_load()
;	---------------------------------
; Function screen_none_screen_load
; ---------------------------------
_screen_none_screen_load::
	C$none_screen.c$7$1_0$6	= .
	.globl	C$none_screen.c$7$1_0$6
;none_screen.c:7: engine_font_manager_text( "NONE SCREEN!!", 10, 2 );
	ld	de, #0x020a
	push	de
	ld	hl, #___str_0
	push	hl
	call	_engine_font_manager_text
	pop	af
	pop	af
	C$none_screen.c$8$1_0$6	= .
	.globl	C$none_screen.c$8$1_0$6
;none_screen.c:8: }
	C$none_screen.c$8$1_0$6	= .
	.globl	C$none_screen.c$8$1_0$6
	XG$screen_none_screen_load$0$0	= .
	.globl	XG$screen_none_screen_load$0$0
	ret
Fnone_screen$__str_0$0_0$0 == .
___str_0:
	.ascii "NONE SCREEN!!"
	.db 0x00
	G$screen_none_screen_update$0$0	= .
	.globl	G$screen_none_screen_update$0$0
	C$none_screen.c$10$1_0$8	= .
	.globl	C$none_screen.c$10$1_0$8
;none_screen.c:10: void screen_none_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_none_screen_update
; ---------------------------------
_screen_none_screen_update::
	C$none_screen.c$12$1_0$8	= .
	.globl	C$none_screen.c$12$1_0$8
;none_screen.c:12: *screen_type = screen_type_none;
	pop	de
	pop	bc
	push	bc
	push	de
	xor	a, a
	ld	(bc), a
	C$none_screen.c$13$1_0$8	= .
	.globl	C$none_screen.c$13$1_0$8
;none_screen.c:13: }
	C$none_screen.c$13$1_0$8	= .
	.globl	C$none_screen.c$13$1_0$8
	XG$screen_none_screen_update$0$0	= .
	.globl	XG$screen_none_screen_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
