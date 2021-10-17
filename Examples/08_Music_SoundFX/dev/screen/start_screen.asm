;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module start_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_tree_manager_draw
	.globl _engine_text_manager_title
	.globl _engine_input_manager_hold_fire1
	.globl _engine_content_manager_load_sprites
	.globl _engine_content_manager_load_tiles
	.globl _engine_asm_manager_clear_VRAM
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_displayOn
	.globl _screen_start_screen_load
	.globl _screen_start_screen_update
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
	G$screen_start_screen_load$0$0	= .
	.globl	G$screen_start_screen_load$0$0
	C$start_screen.c$10$0_0$19	= .
	.globl	C$start_screen.c$10$0_0$19
;start_screen.c:10: void screen_start_screen_load()
;	---------------------------------
; Function screen_start_screen_load
; ---------------------------------
_screen_start_screen_load::
	C$start_screen.c$12$1_0$19	= .
	.globl	C$start_screen.c$12$1_0$19
;start_screen.c:12: devkit_SMS_displayOff();
	call	_devkit_SMS_displayOff
	C$start_screen.c$13$1_0$19	= .
	.globl	C$start_screen.c$13$1_0$19
;start_screen.c:13: engine_asm_manager_clear_VRAM();
	call	_engine_asm_manager_clear_VRAM
	C$start_screen.c$14$1_0$19	= .
	.globl	C$start_screen.c$14$1_0$19
;start_screen.c:14: engine_content_manager_load_tiles();
	call	_engine_content_manager_load_tiles
	C$start_screen.c$15$1_0$19	= .
	.globl	C$start_screen.c$15$1_0$19
;start_screen.c:15: engine_content_manager_load_sprites();
	call	_engine_content_manager_load_sprites
	C$start_screen.c$16$1_0$19	= .
	.globl	C$start_screen.c$16$1_0$19
;start_screen.c:16: engine_text_manager_title();
	call	_engine_text_manager_title
	C$start_screen.c$17$1_0$19	= .
	.globl	C$start_screen.c$17$1_0$19
;start_screen.c:17: engine_tree_manager_draw();
	call	_engine_tree_manager_draw
	C$start_screen.c$18$1_0$19	= .
	.globl	C$start_screen.c$18$1_0$19
;start_screen.c:18: devkit_SMS_displayOn();
	C$start_screen.c$19$1_0$19	= .
	.globl	C$start_screen.c$19$1_0$19
;start_screen.c:19: }
	C$start_screen.c$19$1_0$19	= .
	.globl	C$start_screen.c$19$1_0$19
	XG$screen_start_screen_load$0$0	= .
	.globl	XG$screen_start_screen_load$0$0
	jp	_devkit_SMS_displayOn
	G$screen_start_screen_update$0$0	= .
	.globl	G$screen_start_screen_update$0$0
	C$start_screen.c$21$1_0$21	= .
	.globl	C$start_screen.c$21$1_0$21
;start_screen.c:21: void screen_start_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_start_screen_update
; ---------------------------------
_screen_start_screen_update::
	C$start_screen.c$23$1_0$21	= .
	.globl	C$start_screen.c$23$1_0$21
;start_screen.c:23: unsigned char input = engine_input_manager_hold_fire1();
	call	_engine_input_manager_hold_fire1
	ld	c, l
	C$start_screen.c$26$1_0$21	= .
	.globl	C$start_screen.c$26$1_0$21
;start_screen.c:26: *screen_type = screen_type_music;
	pop	de
	pop	hl
	push	hl
	push	de
	C$start_screen.c$24$1_0$21	= .
	.globl	C$start_screen.c$24$1_0$21
;start_screen.c:24: if( input )
	ld	a, c
	or	a, a
	jr	Z, 00102$
	C$start_screen.c$26$2_0$22	= .
	.globl	C$start_screen.c$26$2_0$22
;start_screen.c:26: *screen_type = screen_type_music;
	ld	(hl), #0x02
	C$start_screen.c$27$2_0$22	= .
	.globl	C$start_screen.c$27$2_0$22
;start_screen.c:27: return;
	ret
00102$:
	C$start_screen.c$30$1_0$21	= .
	.globl	C$start_screen.c$30$1_0$21
;start_screen.c:30: *screen_type = screen_type_start;
	ld	(hl), #0x01
	C$start_screen.c$31$1_0$21	= .
	.globl	C$start_screen.c$31$1_0$21
;start_screen.c:31: }
	C$start_screen.c$31$1_0$21	= .
	.globl	C$start_screen.c$31$1_0$21
	XG$screen_start_screen_update$0$0	= .
	.globl	XG$screen_start_screen_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
