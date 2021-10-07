;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module content_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _devkit_SMS_setSpritePaletteColor
	.globl _devkit_SMS_loadBGPalette
	.globl _devkit_SMS_loadSTMcompressedTileMap
	.globl _devkit_SMS_loadPSGaidencompressedTiles
	.globl _engine_content_manager_load_sprite_palette
	.globl _engine_content_manager_load_splash_screen
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
;content_manager.c:7: void engine_content_manager_load_sprite_palette()
;	---------------------------------
; Function engine_content_manager_load_sprite_palette
; ---------------------------------
_engine_content_manager_load_sprite_palette::
;content_manager.c:9: devkit_SMS_setSpritePaletteColor( 0, 0, 0, 0 );
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_devkit_SMS_setSpritePaletteColor
	pop	af
	pop	af
;content_manager.c:10: }
	ret
;content_manager.c:12: void engine_content_manager_load_splash_screen()
;	---------------------------------
; Function engine_content_manager_load_splash_screen
; ---------------------------------
_engine_content_manager_load_splash_screen::
;content_manager.c:14: devkit_SMS_loadPSGaidencompressedTiles( splash__tiles__psgcompr, SPLASH_TILES_OFFSET );
	ld	hl, #0x0080
	push	hl
	ld	hl, #_splash__tiles__psgcompr
	push	hl
	call	_devkit_SMS_loadPSGaidencompressedTiles
	pop	af
;content_manager.c:15: devkit_SMS_loadSTMcompressedTileMap( 0, 0, ( void * ) splash__tilemap__stmcompr );
	ld	hl, #_splash__tilemap__stmcompr
	ex	(sp),hl
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_devkit_SMS_loadSTMcompressedTileMap
	pop	af
;content_manager.c:16: devkit_SMS_loadBGPalette( ( void * ) splash__palette__bin );
	ld	hl, #_splash__palette__bin
	ex	(sp),hl
	call	_devkit_SMS_loadBGPalette
	pop	af
;content_manager.c:17: }
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
