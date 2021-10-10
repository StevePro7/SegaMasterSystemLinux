;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module init_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_tree_manager_draw
	.globl _engine_content_manager_load_sprites
	.globl _engine_content_manager_load_tiles
	.globl _engine_asm_manager_clear_VRAM
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_displayOn
	.globl _screen_init_screen_load
	.globl _screen_init_screen_update
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
	G$screen_init_screen_load$0$0	= .
	.globl	G$screen_init_screen_load$0$0
	C$init_screen.c$8$0$0	= .
	.globl	C$init_screen.c$8$0$0
;init_screen.c:8: void screen_init_screen_load()
;	---------------------------------
; Function screen_init_screen_load
; ---------------------------------
_screen_init_screen_load::
	C$init_screen.c$10$1$19	= .
	.globl	C$init_screen.c$10$1$19
;init_screen.c:10: devkit_SMS_displayOff();
	call	_devkit_SMS_displayOff
	C$init_screen.c$11$1$19	= .
	.globl	C$init_screen.c$11$1$19
;init_screen.c:11: engine_asm_manager_clear_VRAM();
	call	_engine_asm_manager_clear_VRAM
	C$init_screen.c$12$1$19	= .
	.globl	C$init_screen.c$12$1$19
;init_screen.c:12: engine_content_manager_load_tiles();
	call	_engine_content_manager_load_tiles
	C$init_screen.c$13$1$19	= .
	.globl	C$init_screen.c$13$1$19
;init_screen.c:13: engine_content_manager_load_sprites();
	call	_engine_content_manager_load_sprites
	C$init_screen.c$14$1$19	= .
	.globl	C$init_screen.c$14$1$19
;init_screen.c:14: engine_tree_manager_draw();
	call	_engine_tree_manager_draw
	C$init_screen.c$15$1$19	= .
	.globl	C$init_screen.c$15$1$19
;init_screen.c:15: devkit_SMS_displayOn();
	C$init_screen.c$16$1$19	= .
	.globl	C$init_screen.c$16$1$19
	XG$screen_init_screen_load$0$0	= .
	.globl	XG$screen_init_screen_load$0$0
	jp  _devkit_SMS_displayOn
	G$screen_init_screen_update$0$0	= .
	.globl	G$screen_init_screen_update$0$0
	C$init_screen.c$18$1$19	= .
	.globl	C$init_screen.c$18$1$19
;init_screen.c:18: void screen_init_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_init_screen_update
; ---------------------------------
_screen_init_screen_update::
	C$init_screen.c$20$1$21	= .
	.globl	C$init_screen.c$20$1$21
;init_screen.c:20: *screen_type = screen_type_load;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0x02
	C$init_screen.c$21$1$21	= .
	.globl	C$init_screen.c$21$1$21
	XG$screen_init_screen_update$0$0	= .
	.globl	XG$screen_init_screen_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
