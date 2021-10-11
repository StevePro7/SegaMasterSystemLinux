;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module none_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
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
	C$none_screen.c$6$0_0$3	= .
	.globl	C$none_screen.c$6$0_0$3
;none_screen.c:6: void screen_none_screen_load()
;	---------------------------------
; Function screen_none_screen_load
; ---------------------------------
_screen_none_screen_load::
	C$none_screen.c$8$0_0$3	= .
	.globl	C$none_screen.c$8$0_0$3
;none_screen.c:8: }
	C$none_screen.c$8$0_0$3	= .
	.globl	C$none_screen.c$8$0_0$3
	XG$screen_none_screen_load$0$0	= .
	.globl	XG$screen_none_screen_load$0$0
	ret
	G$screen_none_screen_update$0$0	= .
	.globl	G$screen_none_screen_update$0$0
	C$none_screen.c$10$0_0$5	= .
	.globl	C$none_screen.c$10$0_0$5
;none_screen.c:10: void screen_none_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_none_screen_update
; ---------------------------------
_screen_none_screen_update::
	C$none_screen.c$12$1_0$5	= .
	.globl	C$none_screen.c$12$1_0$5
;none_screen.c:12: *screen_type = screen_type_none;
	pop	de
	pop	bc
	push	bc
	push	de
	xor	a, a
	ld	(bc), a
	C$none_screen.c$13$1_0$5	= .
	.globl	C$none_screen.c$13$1_0$5
;none_screen.c:13: }
	C$none_screen.c$13$1_0$5	= .
	.globl	C$none_screen.c$13$1_0$5
	XG$screen_none_screen_update$0$0	= .
	.globl	XG$screen_none_screen_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
