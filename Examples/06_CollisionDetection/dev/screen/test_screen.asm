;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module test_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_input_manager_hold_fire2
	.globl _engine_gamer_manager_draw
	.globl _engine_gamer_manager_update
	.globl _engine_gamer_manager_load
	.globl _engine_font_manager_draw_data
	.globl _engine_font_manager_draw_text
	.globl _engine_enemy_manager_draw
	.globl _engine_enemy_manager_load
	.globl _devkit_isCollisionDetected
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
	C$test_screen.c$11$0$0	= .
	.globl	C$test_screen.c$11$0$0
;test_screen.c:11: void screen_test_screen_load()
;	---------------------------------
; Function screen_test_screen_load
; ---------------------------------
_screen_test_screen_load::
	C$test_screen.c$13$1$23	= .
	.globl	C$test_screen.c$13$1$23
;test_screen.c:13: engine_font_manager_draw_text( LOCALE_BLANK, 9, 10, 11 );
	ld	hl, #0x0b0a
	push	hl
	ld	a, #0x09
	push	af
	inc	sp
	ld	hl, #___str_0
	push	hl
	call	_engine_font_manager_draw_text
	pop	af
	C$test_screen.c$14$1$23	= .
	.globl	C$test_screen.c$14$1$23
;test_screen.c:14: engine_font_manager_draw_text( LOCALE_BLANK, 9, 10, 12 );
	inc	sp
	ld	hl,#0x0c0a
	ex	(sp),hl
	ld	a, #0x09
	push	af
	inc	sp
	ld	hl, #___str_0
	push	hl
	call	_engine_font_manager_draw_text
	pop	af
	C$test_screen.c$15$1$23	= .
	.globl	C$test_screen.c$15$1$23
;test_screen.c:15: engine_font_manager_draw_text( LOCALE_STATUS, 6, 4, 21 );
	inc	sp
	ld	hl,#0x1504
	ex	(sp),hl
	ld	a, #0x06
	push	af
	inc	sp
	ld	hl, #___str_1
	push	hl
	call	_engine_font_manager_draw_text
	pop	af
	pop	af
	inc	sp
	C$test_screen.c$17$1$23	= .
	.globl	C$test_screen.c$17$1$23
;test_screen.c:17: engine_gamer_manager_load();
	call	_engine_gamer_manager_load
	C$test_screen.c$18$1$23	= .
	.globl	C$test_screen.c$18$1$23
;test_screen.c:18: engine_enemy_manager_load();
	C$test_screen.c$19$1$23	= .
	.globl	C$test_screen.c$19$1$23
	XG$screen_test_screen_load$0$0	= .
	.globl	XG$screen_test_screen_load$0$0
	jp  _engine_enemy_manager_load
Ftest_screen$__str_0$0$0 == .
___str_0:
	.ascii "         "
	.db 0x00
Ftest_screen$__str_1$0$0 == .
___str_1:
	.ascii "STATUS"
	.db 0x00
	G$screen_test_screen_update$0$0	= .
	.globl	G$screen_test_screen_update$0$0
	C$test_screen.c$21$1$23	= .
	.globl	C$test_screen.c$21$1$23
;test_screen.c:21: void screen_test_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_test_screen_update
; ---------------------------------
_screen_test_screen_update::
	C$test_screen.c$26$1$25	= .
	.globl	C$test_screen.c$26$1$25
;test_screen.c:26: engine_gamer_manager_update();
	call	_engine_gamer_manager_update
	C$test_screen.c$27$1$25	= .
	.globl	C$test_screen.c$27$1$25
;test_screen.c:27: engine_gamer_manager_draw();
	call	_engine_gamer_manager_draw
	C$test_screen.c$28$1$25	= .
	.globl	C$test_screen.c$28$1$25
;test_screen.c:28: engine_enemy_manager_draw();
	call	_engine_enemy_manager_draw
	C$test_screen.c$30$1$25	= .
	.globl	C$test_screen.c$30$1$25
;test_screen.c:30: collide = devkit_isCollisionDetected();
	call	_devkit_isCollisionDetected
	xor	a, a
	cp	a, l
	rla
	ld	c, a
	C$test_screen.c$31$1$25	= .
	.globl	C$test_screen.c$31$1$25
;test_screen.c:31: engine_font_manager_draw_data( collide, 23, 21 );
	ld	b, #0x00
	ld	hl, #0x1517
	push	hl
	push	bc
	call	_engine_font_manager_draw_data
	pop	af
	pop	af
	C$test_screen.c$33$1$25	= .
	.globl	C$test_screen.c$33$1$25
;test_screen.c:33: input = engine_input_manager_hold_fire2();
	call	_engine_input_manager_hold_fire2
	ld	c, l
	C$test_screen.c$36$1$25	= .
	.globl	C$test_screen.c$36$1$25
;test_screen.c:36: *screen_type = screen_type_load;
	pop	de
	pop	hl
	push	hl
	push	de
	C$test_screen.c$34$1$25	= .
	.globl	C$test_screen.c$34$1$25
;test_screen.c:34: if ( input )
	ld	a, c
	or	a, a
	jr	Z,00102$
	C$test_screen.c$36$2$26	= .
	.globl	C$test_screen.c$36$2$26
;test_screen.c:36: *screen_type = screen_type_load;
	ld	(hl), #0x02
	C$test_screen.c$37$2$26	= .
	.globl	C$test_screen.c$37$2$26
;test_screen.c:37: return;
	ret
00102$:
	C$test_screen.c$40$1$25	= .
	.globl	C$test_screen.c$40$1$25
;test_screen.c:40: *screen_type = screen_type_test;
	ld	(hl), #0x03
	C$test_screen.c$41$1$25	= .
	.globl	C$test_screen.c$41$1$25
	XG$screen_test_screen_update$0$0	= .
	.globl	XG$screen_test_screen_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
