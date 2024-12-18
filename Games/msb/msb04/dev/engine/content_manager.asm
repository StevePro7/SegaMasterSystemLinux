;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module content_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _devkit_SMS_loadSpritePalette
	.globl _devkit_SMS_loadBGPalette
	.globl _devkit_SMS_loadPSGaidencompressedTiles
	.globl _devkit_SMS_loadTiles
	.globl _devkit_SMS_mapROMBank
	.globl _engine_content_manager_bggame
	.globl _engine_content_manager_splash
	.globl _engine_content_manager_titles
	.globl _engine_content_manager_sprite
	.globl _engine_content_manager_load_level1_assets
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
	G$engine_content_manager_bggame$0$0	= .
	.globl	G$engine_content_manager_bggame$0$0
	C$content_manager.c$13$0_0$83	= .
	.globl	C$content_manager.c$13$0_0$83
;content_manager.c:13: void engine_content_manager_bggame()
;	---------------------------------
; Function engine_content_manager_bggame
; ---------------------------------
_engine_content_manager_bggame::
	C$content_manager.c$15$1_0$83	= .
	.globl	C$content_manager.c$15$1_0$83
;content_manager.c:15: devkit_SMS_loadPSGaidencompressedTiles( font_tiles__tiles__psgcompr, 0 );
	ld	hl, #0x0000
	push	hl
	ld	hl, #_font_tiles__tiles__psgcompr
	push	hl
	call	_devkit_SMS_loadPSGaidencompressedTiles
	pop	af
	C$content_manager.c$16$1_0$83	= .
	.globl	C$content_manager.c$16$1_0$83
;content_manager.c:16: devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );
	ld	hl, #_font_tiles__palette__bin
	ex	(sp),hl
	call	_devkit_SMS_loadBGPalette
	pop	af
	C$content_manager.c$17$1_0$83	= .
	.globl	C$content_manager.c$17$1_0$83
;content_manager.c:17: }
	C$content_manager.c$17$1_0$83	= .
	.globl	C$content_manager.c$17$1_0$83
	XG$engine_content_manager_bggame$0$0	= .
	.globl	XG$engine_content_manager_bggame$0$0
	ret
	G$engine_content_manager_splash$0$0	= .
	.globl	G$engine_content_manager_splash$0$0
	C$content_manager.c$19$1_0$85	= .
	.globl	C$content_manager.c$19$1_0$85
;content_manager.c:19: void engine_content_manager_splash()
;	---------------------------------
; Function engine_content_manager_splash
; ---------------------------------
_engine_content_manager_splash::
	C$content_manager.c$22$1_0$85	= .
	.globl	C$content_manager.c$22$1_0$85
;content_manager.c:22: }
	C$content_manager.c$22$1_0$85	= .
	.globl	C$content_manager.c$22$1_0$85
	XG$engine_content_manager_splash$0$0	= .
	.globl	XG$engine_content_manager_splash$0$0
	ret
	G$engine_content_manager_titles$0$0	= .
	.globl	G$engine_content_manager_titles$0$0
	C$content_manager.c$24$1_0$87	= .
	.globl	C$content_manager.c$24$1_0$87
;content_manager.c:24: void engine_content_manager_titles()
;	---------------------------------
; Function engine_content_manager_titles
; ---------------------------------
_engine_content_manager_titles::
	C$content_manager.c$27$1_0$87	= .
	.globl	C$content_manager.c$27$1_0$87
;content_manager.c:27: }
	C$content_manager.c$27$1_0$87	= .
	.globl	C$content_manager.c$27$1_0$87
	XG$engine_content_manager_titles$0$0	= .
	.globl	XG$engine_content_manager_titles$0$0
	ret
	G$engine_content_manager_sprite$0$0	= .
	.globl	G$engine_content_manager_sprite$0$0
	C$content_manager.c$29$1_0$89	= .
	.globl	C$content_manager.c$29$1_0$89
;content_manager.c:29: void engine_content_manager_sprite()
;	---------------------------------
; Function engine_content_manager_sprite
; ---------------------------------
_engine_content_manager_sprite::
	C$content_manager.c$35$1_0$89	= .
	.globl	C$content_manager.c$35$1_0$89
;content_manager.c:35: }
	C$content_manager.c$35$1_0$89	= .
	.globl	C$content_manager.c$35$1_0$89
	XG$engine_content_manager_sprite$0$0	= .
	.globl	XG$engine_content_manager_sprite$0$0
	ret
	G$engine_content_manager_load_level1_assets$0$0	= .
	.globl	G$engine_content_manager_load_level1_assets$0$0
	C$content_manager.c$37$1_0$90	= .
	.globl	C$content_manager.c$37$1_0$90
;content_manager.c:37: void engine_content_manager_load_level1_assets()
;	---------------------------------
; Function engine_content_manager_load_level1_assets
; ---------------------------------
_engine_content_manager_load_level1_assets::
	C$content_manager.c$39$1_0$90	= .
	.globl	C$content_manager.c$39$1_0$90
;content_manager.c:39: devkit_SMS_mapROMBank( level1_palette_bin_bank );
	ld	a, #0x02
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$content_manager.c$40$1_0$90	= .
	.globl	C$content_manager.c$40$1_0$90
;content_manager.c:40: devkit_SMS_loadBGPalette( (unsigned char *) level1_palette_bin );
	ld	hl, #_level1_palette_bin
	push	hl
	call	_devkit_SMS_loadBGPalette
	pop	af
	C$content_manager.c$41$1_0$90	= .
	.globl	C$content_manager.c$41$1_0$90
;content_manager.c:41: devkit_SMS_loadTiles( ( unsigned char * )level1_tiles_bin, 0, level1_tiles_bin_size );
	ld	hl, #0x1100
	push	hl
	ld	h, l
	push	hl
	ld	hl, #_level1_tiles_bin
	push	hl
	call	_devkit_SMS_loadTiles
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$content_manager.c$42$1_0$90	= .
	.globl	C$content_manager.c$42$1_0$90
;content_manager.c:42: devkit_SMS_mapROMBank( player_palette_bin_bank );
	ld	a, #0x03
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$content_manager.c$43$1_0$90	= .
	.globl	C$content_manager.c$43$1_0$90
;content_manager.c:43: devkit_SMS_loadSpritePalette( ( unsigned char * ) player_palette_bin );
	ld	hl, #_player_palette_bin
	push	hl
	call	_devkit_SMS_loadSpritePalette
	pop	af
	C$content_manager.c$44$1_0$90	= .
	.globl	C$content_manager.c$44$1_0$90
;content_manager.c:44: }
	C$content_manager.c$44$1_0$90	= .
	.globl	C$content_manager.c$44$1_0$90
	XG$engine_content_manager_load_level1_assets$0$0	= .
	.globl	XG$engine_content_manager_load_level1_assets$0$0
	ret
	Fcontent_manager$load_tile$0$0	= .
	.globl	Fcontent_manager$load_tile$0$0
	C$content_manager.c$46$1_0$92	= .
	.globl	C$content_manager.c$46$1_0$92
;content_manager.c:46: static void load_tile( unsigned char bank, const unsigned char *tiles, unsigned char tilefrom, const unsigned char *palette )
;	---------------------------------
; Function load_tile
; ---------------------------------
_load_tile:
	C$content_manager.c$48$1_0$92	= .
	.globl	C$content_manager.c$48$1_0$92
;content_manager.c:48: devkit_SMS_mapROMBank( bank );
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$content_manager.c$49$1_0$92	= .
	.globl	C$content_manager.c$49$1_0$92
;content_manager.c:49: devkit_SMS_loadPSGaidencompressedTiles( tiles, tilefrom );
	ld	iy, #5
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, #0x00
	ld	c, -2 (iy)
	ld	b, -1 (iy)
	push	de
	push	bc
	call	_devkit_SMS_loadPSGaidencompressedTiles
	pop	af
	pop	af
	C$content_manager.c$50$1_0$92	= .
	.globl	C$content_manager.c$50$1_0$92
;content_manager.c:50: devkit_SMS_loadBGPalette( ( void * ) palette );
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_devkit_SMS_loadBGPalette
	pop	af
	C$content_manager.c$51$1_0$92	= .
	.globl	C$content_manager.c$51$1_0$92
;content_manager.c:51: }
	C$content_manager.c$51$1_0$92	= .
	.globl	C$content_manager.c$51$1_0$92
	XFcontent_manager$load_tile$0$0	= .
	.globl	XFcontent_manager$load_tile$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
