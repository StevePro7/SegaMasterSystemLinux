;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module content_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_loadSTMcompressedTileMap
	.globl _SMS_loadPSGaidencompressedTiles
	.globl _SMS_loadBGPalette
	.globl _SMS_setSpritePaletteColor
	.globl _bank_to_be_mapped_on_slot2
	.globl _engine_content_manager_load_sprite_palette
	.globl _engine_content_manager_load_splash_screen
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$bank_to_be_mapped_on_slot2$0$0 == 0xffff
_bank_to_be_mapped_on_slot2	=	0xffff
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
	G$engine_content_manager_load_sprite_palette$0$0	= .
	.globl	G$engine_content_manager_load_sprite_palette$0$0
	C$content_manager.c$7$0$0	= .
	.globl	C$content_manager.c$7$0$0
;content_manager.c:7: void engine_content_manager_load_sprite_palette()
;	---------------------------------
; Function engine_content_manager_load_sprite_palette
; ---------------------------------
_engine_content_manager_load_sprite_palette::
	C$content_manager.c$9$1$49	= .
	.globl	C$content_manager.c$9$1$49
;content_manager.c:9: SMS_setSpritePaletteColor( RGB( 0, 0, 0 ), 0 );
	ld	hl, #0x0000
	push	hl
	call	_SMS_setSpritePaletteColor
	pop	af
	C$content_manager.c$10$1$49	= .
	.globl	C$content_manager.c$10$1$49
	XG$engine_content_manager_load_sprite_palette$0$0	= .
	.globl	XG$engine_content_manager_load_sprite_palette$0$0
	ret
	G$engine_content_manager_load_splash_screen$0$0	= .
	.globl	G$engine_content_manager_load_splash_screen$0$0
	C$content_manager.c$12$1$49	= .
	.globl	C$content_manager.c$12$1$49
;content_manager.c:12: void engine_content_manager_load_splash_screen()
;	---------------------------------
; Function engine_content_manager_load_splash_screen
; ---------------------------------
_engine_content_manager_load_splash_screen::
	C$content_manager.c$14$1$50	= .
	.globl	C$content_manager.c$14$1$50
;content_manager.c:14: SMS_loadPSGaidencompressedTiles( splash__tiles__psgcompr, SPLASH_TILES_OFFSET );
	ld	hl, #0x0080
	push	hl
	ld	hl, #_splash__tiles__psgcompr
	push	hl
	call	_SMS_loadPSGaidencompressedTiles
	pop	af
	pop	af
	C$content_manager.c$15$1$50	= .
	.globl	C$content_manager.c$15$1$50
;content_manager.c:15: SMS_loadSTMcompressedTileMap( 0, 0, ( void * ) splash__tilemap__stmcompr );
	ld	bc, #_splash__tilemap__stmcompr+0
	push	bc
	ld	hl, #0x0000
	push	hl
	call	_SMS_loadSTMcompressedTileMap
	pop	af
	pop	af
	C$content_manager.c$16$1$50	= .
	.globl	C$content_manager.c$16$1$50
;content_manager.c:16: SMS_loadBGPalette( ( void * ) splash__palette__bin );
	ld	hl, #_splash__palette__bin+0
	C$content_manager.c$17$1$50	= .
	.globl	C$content_manager.c$17$1$50
	XG$engine_content_manager_load_splash_screen$0$0	= .
	.globl	XG$engine_content_manager_load_splash_screen$0$0
	jp  _SMS_loadBGPalette
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
