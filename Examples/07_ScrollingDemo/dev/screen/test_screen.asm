;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module test_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_scroll_manager_update_right
	.globl _engine_scroll_manager_update_left
	.globl _engine_scroll_manager_load
	.globl _engine_input_manager_move_right
	.globl _engine_input_manager_move_left
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
	C$test_screen.c$6$0_0$2	= .
	.globl	C$test_screen.c$6$0_0$2
;test_screen.c:6: void screen_test_screen_load()
;	---------------------------------
; Function screen_test_screen_load
; ---------------------------------
_screen_test_screen_load::
	C$test_screen.c$8$1_0$2	= .
	.globl	C$test_screen.c$8$1_0$2
;test_screen.c:8: engine_scroll_manager_load();
	C$test_screen.c$9$1_0$2	= .
	.globl	C$test_screen.c$9$1_0$2
;test_screen.c:9: }
	C$test_screen.c$9$1_0$2	= .
	.globl	C$test_screen.c$9$1_0$2
	XG$screen_test_screen_load$0$0	= .
	.globl	XG$screen_test_screen_load$0$0
	jp	_engine_scroll_manager_load
	G$screen_test_screen_update$0$0	= .
	.globl	G$screen_test_screen_update$0$0
	C$test_screen.c$11$1_0$4	= .
	.globl	C$test_screen.c$11$1_0$4
;test_screen.c:11: void screen_test_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_test_screen_update
; ---------------------------------
_screen_test_screen_update::
	C$test_screen.c$14$1_0$4	= .
	.globl	C$test_screen.c$14$1_0$4
;test_screen.c:14: input = engine_input_manager_move_right();
	call	_engine_input_manager_move_right
	ld	a, l
	C$test_screen.c$15$1_0$4	= .
	.globl	C$test_screen.c$15$1_0$4
;test_screen.c:15: if( input )
	or	a, a
	jr	Z, 00104$
	C$test_screen.c$17$2_0$5	= .
	.globl	C$test_screen.c$17$2_0$5
;test_screen.c:17: engine_scroll_manager_update_right();
	call	_engine_scroll_manager_update_right
	jr	00105$
00104$:
	C$test_screen.c$21$2_0$6	= .
	.globl	C$test_screen.c$21$2_0$6
;test_screen.c:21: input = engine_input_manager_move_left();
	call	_engine_input_manager_move_left
	ld	a, l
	C$test_screen.c$22$2_0$6	= .
	.globl	C$test_screen.c$22$2_0$6
;test_screen.c:22: if( input )
	or	a, a
	jr	Z, 00105$
	C$test_screen.c$24$3_0$7	= .
	.globl	C$test_screen.c$24$3_0$7
;test_screen.c:24: engine_scroll_manager_update_left();
	call	_engine_scroll_manager_update_left
00105$:
	C$test_screen.c$28$1_0$4	= .
	.globl	C$test_screen.c$28$1_0$4
;test_screen.c:28: *screen_type = screen_type_test;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0x01
	C$test_screen.c$29$1_0$4	= .
	.globl	C$test_screen.c$29$1_0$4
;test_screen.c:29: }
	C$test_screen.c$29$1_0$4	= .
	.globl	C$test_screen.c$29$1_0$4
	XG$screen_test_screen_update$0$0	= .
	.globl	XG$screen_test_screen_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
