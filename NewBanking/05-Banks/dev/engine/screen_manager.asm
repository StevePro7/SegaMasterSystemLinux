;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module screen_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_sgb
	.globl _sgb
	.globl b_bar
	.globl _bar
	.globl b_foo
	.globl _foo
	.globl _engine_input_manager_hold_fire1
	.globl _engine_input_manager_hold_right
	.globl _engine_input_manager_hold_left
	.globl _engine_input_manager_hold_down
	.globl _engine_font_manager_draw_data
	.globl _engine_font_manager_draw_text
	.globl _engine_screen_manager_init
	.globl _engine_screen_manager_update
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
	G$engine_screen_manager_init$0$0	= .
	.globl	G$engine_screen_manager_init$0$0
	C$screen_manager.c$8$0_0$5	= .
	.globl	C$screen_manager.c$8$0_0$5
;screen_manager.c:8: void engine_screen_manager_init()
;	---------------------------------
; Function engine_screen_manager_init
; ---------------------------------
_engine_screen_manager_init::
	C$screen_manager.c$10$1_0$5	= .
	.globl	C$screen_manager.c$10$1_0$5
;screen_manager.c:10: engine_font_manager_draw_text("PRESS LEFT, RIGHT OR DOWN", 4, 8);
	ld	de, #0x0804
	push	de
	ld	hl, #___str_0
	push	hl
	call	_engine_font_manager_draw_text
	pop	af
	pop	af
	C$screen_manager.c$11$1_0$5	= .
	.globl	C$screen_manager.c$11$1_0$5
;screen_manager.c:11: engine_font_manager_draw_text("PRESS FIRE1 TO CLEAR DATA", 4, 9);
	ld	de, #0x0904
	push	de
	ld	hl, #___str_1
	push	hl
	call	_engine_font_manager_draw_text
	pop	af
	pop	af
	C$screen_manager.c$12$1_0$5	= .
	.globl	C$screen_manager.c$12$1_0$5
;screen_manager.c:12: }
	C$screen_manager.c$12$1_0$5	= .
	.globl	C$screen_manager.c$12$1_0$5
	XG$engine_screen_manager_init$0$0	= .
	.globl	XG$engine_screen_manager_init$0$0
	ret
Fscreen_manager$__str_0$0_0$0 == .
___str_0:
	.ascii "PRESS LEFT, RIGHT OR DOWN"
	.db 0x00
Fscreen_manager$__str_1$0_0$0 == .
___str_1:
	.ascii "PRESS FIRE1 TO CLEAR DATA"
	.db 0x00
	G$engine_screen_manager_update$0$0	= .
	.globl	G$engine_screen_manager_update$0$0
	C$screen_manager.c$14$1_0$6	= .
	.globl	C$screen_manager.c$14$1_0$6
;screen_manager.c:14: void engine_screen_manager_update()
;	---------------------------------
; Function engine_screen_manager_update
; ---------------------------------
_engine_screen_manager_update::
	C$screen_manager.c$20$1_0$6	= .
	.globl	C$screen_manager.c$20$1_0$6
;screen_manager.c:20: input = engine_input_manager_hold_left();
	call	_engine_input_manager_hold_left
	ld	a, l
	C$screen_manager.c$21$1_0$6	= .
	.globl	C$screen_manager.c$21$1_0$6
;screen_manager.c:21: if( input )
	or	a, a
	jr	Z, 00102$
	C$screen_manager.c$23$2_0$7	= .
	.globl	C$screen_manager.c$23$2_0$7
;screen_manager.c:23: value = foo();
	ld	e, #b_foo
	ld	hl, #_foo
	call	___sdcc_bcall_ehl
	C$screen_manager.c$24$2_0$7	= .
	.globl	C$screen_manager.c$24$2_0$7
;screen_manager.c:24: engine_font_manager_draw_data( value, 10, 12 );
	ld	h, #0x00
	ld	de, #0x0c0a
	push	de
	push	hl
	call	_engine_font_manager_draw_data
	pop	af
	pop	af
00102$:
	C$screen_manager.c$27$1_0$6	= .
	.globl	C$screen_manager.c$27$1_0$6
;screen_manager.c:27: input = engine_input_manager_hold_right();
	call	_engine_input_manager_hold_right
	ld	a, l
	C$screen_manager.c$28$1_0$6	= .
	.globl	C$screen_manager.c$28$1_0$6
;screen_manager.c:28: if( input )
	or	a, a
	jr	Z, 00104$
	C$screen_manager.c$30$2_0$8	= .
	.globl	C$screen_manager.c$30$2_0$8
;screen_manager.c:30: value = bar();
	ld	e, #b_bar
	ld	hl, #_bar
	call	___sdcc_bcall_ehl
	C$screen_manager.c$31$2_0$8	= .
	.globl	C$screen_manager.c$31$2_0$8
;screen_manager.c:31: engine_font_manager_draw_data( value, 10, 13 );
	ld	h, #0x00
	ld	de, #0x0d0a
	push	de
	push	hl
	call	_engine_font_manager_draw_data
	pop	af
	pop	af
00104$:
	C$screen_manager.c$34$1_0$6	= .
	.globl	C$screen_manager.c$34$1_0$6
;screen_manager.c:34: input = engine_input_manager_hold_down();
	call	_engine_input_manager_hold_down
	ld	a, l
	C$screen_manager.c$35$1_0$6	= .
	.globl	C$screen_manager.c$35$1_0$6
;screen_manager.c:35: if( input )
	or	a, a
	jr	Z, 00106$
	C$screen_manager.c$37$2_0$9	= .
	.globl	C$screen_manager.c$37$2_0$9
;screen_manager.c:37: value = sgb();
	ld	e, #b_sgb
	ld	hl, #_sgb
	call	___sdcc_bcall_ehl
	C$screen_manager.c$38$2_0$9	= .
	.globl	C$screen_manager.c$38$2_0$9
;screen_manager.c:38: engine_font_manager_draw_data( value, 10, 14 );
	ld	h, #0x00
	ld	de, #0x0e0a
	push	de
	push	hl
	call	_engine_font_manager_draw_data
	pop	af
	pop	af
00106$:
	C$screen_manager.c$41$1_0$6	= .
	.globl	C$screen_manager.c$41$1_0$6
;screen_manager.c:41: input = engine_input_manager_hold_fire1();
	call	_engine_input_manager_hold_fire1
	ld	a, l
	C$screen_manager.c$42$1_0$6	= .
	.globl	C$screen_manager.c$42$1_0$6
;screen_manager.c:42: if( input )
	or	a, a
	ret	Z
	C$screen_manager.c$44$2_0$10	= .
	.globl	C$screen_manager.c$44$2_0$10
;screen_manager.c:44: engine_font_manager_draw_text( "  ", 9, 12 );
	ld	de, #0x0c09
	push	de
	ld	hl, #___str_2
	push	hl
	call	_engine_font_manager_draw_text
	pop	af
	pop	af
	C$screen_manager.c$45$2_0$10	= .
	.globl	C$screen_manager.c$45$2_0$10
;screen_manager.c:45: engine_font_manager_draw_text( "  ", 9, 13 );
	ld	de, #0x0d09
	push	de
	ld	hl, #___str_2
	push	hl
	call	_engine_font_manager_draw_text
	pop	af
	pop	af
	C$screen_manager.c$46$2_0$10	= .
	.globl	C$screen_manager.c$46$2_0$10
;screen_manager.c:46: engine_font_manager_draw_text( "  ", 9, 14 );
	ld	de, #0x0e09
	push	de
	ld	hl, #___str_2
	push	hl
	call	_engine_font_manager_draw_text
	pop	af
	pop	af
	C$screen_manager.c$49$1_0$6	= .
	.globl	C$screen_manager.c$49$1_0$6
;screen_manager.c:49: }
	C$screen_manager.c$49$1_0$6	= .
	.globl	C$screen_manager.c$49$1_0$6
	XG$engine_screen_manager_update$0$0	= .
	.globl	XG$engine_screen_manager_update$0$0
	ret
Fscreen_manager$__str_2$0_0$0 == .
___str_2:
	.ascii "  "
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
