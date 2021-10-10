;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module load_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_input_manager_hold_fire1
	.globl _engine_font_manager_draw_text
	.globl _screen_load_screen_load
	.globl _screen_load_screen_update
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
	G$screen_load_screen_load$0$0	= .
	.globl	G$screen_load_screen_load$0$0
	C$load_screen.c$11$0$0	= .
	.globl	C$load_screen.c$11$0$0
;load_screen.c:11: void screen_load_screen_load()
;	---------------------------------
; Function screen_load_screen_load
; ---------------------------------
_screen_load_screen_load::
	C$load_screen.c$13$1$23	= .
	.globl	C$load_screen.c$13$1$23
;load_screen.c:13: engine_font_manager_draw_text( LOCALE_LINE1, 9, 10, 11 );
	ld	hl, #0x0b0a
	push	hl
	ld	a, #0x09
	push	af
	inc	sp
	ld	hl, #___str_0
	push	hl
	call	_engine_font_manager_draw_text
	pop	af
	C$load_screen.c$14$1$23	= .
	.globl	C$load_screen.c$14$1$23
;load_screen.c:14: engine_font_manager_draw_text( LOCALE_LINE2, 9, 10, 12 );
	inc	sp
	ld	hl,#0x0c0a
	ex	(sp),hl
	ld	a, #0x09
	push	af
	inc	sp
	ld	hl, #___str_1
	push	hl
	call	_engine_font_manager_draw_text
	pop	af
	C$load_screen.c$16$1$23	= .
	.globl	C$load_screen.c$16$1$23
;load_screen.c:16: engine_font_manager_draw_text( LOCALE_BLANK, 9, 4, 21 );
	inc	sp
	ld	hl,#0x1504
	ex	(sp),hl
	ld	a, #0x09
	push	af
	inc	sp
	ld	hl, #___str_2
	push	hl
	call	_engine_font_manager_draw_text
	pop	af
	C$load_screen.c$17$1$23	= .
	.globl	C$load_screen.c$17$1$23
;load_screen.c:17: engine_font_manager_draw_text( LOCALE_BLANK, 9, 15, 21 );
	inc	sp
	ld	hl,#0x150f
	ex	(sp),hl
	ld	a, #0x09
	push	af
	inc	sp
	ld	hl, #___str_2
	push	hl
	call	_engine_font_manager_draw_text
	pop	af
	pop	af
	inc	sp
	C$load_screen.c$18$1$23	= .
	.globl	C$load_screen.c$18$1$23
	XG$screen_load_screen_load$0$0	= .
	.globl	XG$screen_load_screen_load$0$0
	ret
Fload_screen$__str_0$0$0 == .
___str_0:
	.ascii "COLLISION"
	.db 0x00
Fload_screen$__str_1$0$0 == .
___str_1:
	.ascii "DETECTION"
	.db 0x00
Fload_screen$__str_2$0$0 == .
___str_2:
	.ascii "         "
	.db 0x00
	G$screen_load_screen_update$0$0	= .
	.globl	G$screen_load_screen_update$0$0
	C$load_screen.c$20$1$23	= .
	.globl	C$load_screen.c$20$1$23
;load_screen.c:20: void screen_load_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_load_screen_update
; ---------------------------------
_screen_load_screen_update::
	C$load_screen.c$22$1$25	= .
	.globl	C$load_screen.c$22$1$25
;load_screen.c:22: unsigned char input = engine_input_manager_hold_fire1();
	call	_engine_input_manager_hold_fire1
	ld	c, l
	C$load_screen.c$25$1$25	= .
	.globl	C$load_screen.c$25$1$25
;load_screen.c:25: *screen_type = screen_type_test;
	pop	de
	pop	hl
	push	hl
	push	de
	C$load_screen.c$23$1$25	= .
	.globl	C$load_screen.c$23$1$25
;load_screen.c:23: if( input )
	ld	a, c
	or	a, a
	jr	Z,00102$
	C$load_screen.c$25$2$26	= .
	.globl	C$load_screen.c$25$2$26
;load_screen.c:25: *screen_type = screen_type_test;
	ld	(hl), #0x03
	C$load_screen.c$26$2$26	= .
	.globl	C$load_screen.c$26$2$26
;load_screen.c:26: return;
	ret
00102$:
	C$load_screen.c$29$1$25	= .
	.globl	C$load_screen.c$29$1$25
;load_screen.c:29: *screen_type = screen_type_load;
	ld	(hl), #0x02
	C$load_screen.c$30$1$25	= .
	.globl	C$load_screen.c$30$1$25
	XG$screen_load_screen_update$0$0	= .
	.globl	XG$screen_load_screen_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
