;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module scroll_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_scroll_prepare
	.globl _engine_scroll_frame
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
	G$engine_scroll_prepare$0$0	= .
	.globl	G$engine_scroll_prepare$0$0
	C$scroll_manager.c$13$0_0$4	= .
	.globl	C$scroll_manager.c$13$0_0$4
;scroll_manager.c:13: void engine_scroll_prepare( void ) __naked
;	---------------------------------
; Function engine_scroll_prepare
; ---------------------------------
_engine_scroll_prepare::
	C$scroll_manager.c$22$1_0$4	= .
	.globl	C$scroll_manager.c$22$1_0$4
;scroll_manager.c:22: __endasm;
	push	ix
	push	iy
	call	_engine_scroll_prepare_z80
	pop	iy
	pop	ix
	ret
	C$scroll_manager.c$23$1_0$4	= .
	.globl	C$scroll_manager.c$23$1_0$4
;scroll_manager.c:23: }
	G$engine_scroll_frame$0$0	= .
	.globl	G$engine_scroll_frame$0$0
	C$scroll_manager.c$31$1_0$6	= .
	.globl	C$scroll_manager.c$31$1_0$6
;scroll_manager.c:31: void engine_scroll_frame( void ) __naked
;	---------------------------------
; Function engine_scroll_frame
; ---------------------------------
_engine_scroll_frame::
	C$scroll_manager.c$41$1_0$6	= .
	.globl	C$scroll_manager.c$41$1_0$6
;scroll_manager.c:41: __endasm;
	push	ix
	push	iy
	call	_engine_scroll_draw_columns
	call	_engine_scroll_advance
	pop	iy
	pop	ix
	ret
	C$scroll_manager.c$42$1_0$6	= .
	.globl	C$scroll_manager.c$42$1_0$6
;scroll_manager.c:42: }
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
