;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module content_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _devkit_SMS_loadBGPalette
	.globl _devkit_SMS_loadPSGaidencompressedTiles
	.globl _engine_content_manager_load_tiles
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
	G$engine_content_manager_load_tiles$0$0	= .
	.globl	G$engine_content_manager_load_tiles$0$0
	C$content_manager.c$9$0_0$17	= .
	.globl	C$content_manager.c$9$0_0$17
;content_manager.c:9: void engine_content_manager_load_tiles()
;	---------------------------------
; Function engine_content_manager_load_tiles
; ---------------------------------
_engine_content_manager_load_tiles::
	C$content_manager.c$12$1_0$17	= .
	.globl	C$content_manager.c$12$1_0$17
;content_manager.c:12: devkit_SMS_loadPSGaidencompressedTiles( font__tiles__psgcompr, FONT_TILES );
	ld	hl, #0x0000
	push	hl
	ld	hl, #_font__tiles__psgcompr
	push	hl
	call	_devkit_SMS_loadPSGaidencompressedTiles
	pop	af
	C$content_manager.c$13$1_0$17	= .
	.globl	C$content_manager.c$13$1_0$17
;content_manager.c:13: devkit_SMS_loadBGPalette( ( void * ) font__palette__bin );
	ld	hl, #_font__palette__bin
	ex	(sp),hl
	call	_devkit_SMS_loadBGPalette
	pop	af
	C$content_manager.c$15$1_0$17	= .
	.globl	C$content_manager.c$15$1_0$17
;content_manager.c:15: }
	C$content_manager.c$15$1_0$17	= .
	.globl	C$content_manager.c$15$1_0$17
	XG$engine_content_manager_load_tiles$0$0	= .
	.globl	XG$engine_content_manager_load_tiles$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
