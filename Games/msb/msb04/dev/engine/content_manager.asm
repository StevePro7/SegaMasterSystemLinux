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
	.globl _devkit_SMS_mapROMBank
	.globl _engine_content_manager_bggame
	.globl _engine_content_manager_splash
	.globl _engine_content_manager_titles
	.globl _engine_content_manager_sprite
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
	C$content_manager.c$11$0_0$84	= .
	.globl	C$content_manager.c$11$0_0$84
;content_manager.c:11: void engine_content_manager_bggame()
;	---------------------------------
; Function engine_content_manager_bggame
; ---------------------------------
_engine_content_manager_bggame::
	C$content_manager.c$14$0_0$84	= .
	.globl	C$content_manager.c$14$0_0$84
;content_manager.c:14: }
	C$content_manager.c$14$0_0$84	= .
	.globl	C$content_manager.c$14$0_0$84
	XG$engine_content_manager_bggame$0$0	= .
	.globl	XG$engine_content_manager_bggame$0$0
	ret
	G$engine_content_manager_splash$0$0	= .
	.globl	G$engine_content_manager_splash$0$0
	C$content_manager.c$16$0_0$86	= .
	.globl	C$content_manager.c$16$0_0$86
;content_manager.c:16: void engine_content_manager_splash()
;	---------------------------------
; Function engine_content_manager_splash
; ---------------------------------
_engine_content_manager_splash::
	C$content_manager.c$19$0_0$86	= .
	.globl	C$content_manager.c$19$0_0$86
;content_manager.c:19: }
	C$content_manager.c$19$0_0$86	= .
	.globl	C$content_manager.c$19$0_0$86
	XG$engine_content_manager_splash$0$0	= .
	.globl	XG$engine_content_manager_splash$0$0
	ret
	G$engine_content_manager_titles$0$0	= .
	.globl	G$engine_content_manager_titles$0$0
	C$content_manager.c$21$0_0$88	= .
	.globl	C$content_manager.c$21$0_0$88
;content_manager.c:21: void engine_content_manager_titles()
;	---------------------------------
; Function engine_content_manager_titles
; ---------------------------------
_engine_content_manager_titles::
	C$content_manager.c$24$0_0$88	= .
	.globl	C$content_manager.c$24$0_0$88
;content_manager.c:24: }
	C$content_manager.c$24$0_0$88	= .
	.globl	C$content_manager.c$24$0_0$88
	XG$engine_content_manager_titles$0$0	= .
	.globl	XG$engine_content_manager_titles$0$0
	ret
	G$engine_content_manager_sprite$0$0	= .
	.globl	G$engine_content_manager_sprite$0$0
	C$content_manager.c$26$0_0$90	= .
	.globl	C$content_manager.c$26$0_0$90
;content_manager.c:26: void engine_content_manager_sprite()
;	---------------------------------
; Function engine_content_manager_sprite
; ---------------------------------
_engine_content_manager_sprite::
	C$content_manager.c$32$0_0$90	= .
	.globl	C$content_manager.c$32$0_0$90
;content_manager.c:32: }
	C$content_manager.c$32$0_0$90	= .
	.globl	C$content_manager.c$32$0_0$90
	XG$engine_content_manager_sprite$0$0	= .
	.globl	XG$engine_content_manager_sprite$0$0
	ret
	Fcontent_manager$load_tile$0$0	= .
	.globl	Fcontent_manager$load_tile$0$0
	C$content_manager.c$34$0_0$92	= .
	.globl	C$content_manager.c$34$0_0$92
;content_manager.c:34: static void load_tile( unsigned char bank, const unsigned char *tiles, unsigned char tilefrom, const unsigned char *palette )
;	---------------------------------
; Function load_tile
; ---------------------------------
_load_tile:
	C$content_manager.c$36$1_0$92	= .
	.globl	C$content_manager.c$36$1_0$92
;content_manager.c:36: devkit_SMS_mapROMBank( bank );
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$content_manager.c$37$1_0$92	= .
	.globl	C$content_manager.c$37$1_0$92
;content_manager.c:37: devkit_SMS_loadPSGaidencompressedTiles( tiles, tilefrom );
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
	C$content_manager.c$38$1_0$92	= .
	.globl	C$content_manager.c$38$1_0$92
;content_manager.c:38: devkit_SMS_loadBGPalette( ( void * ) palette );
	ld	hl, #6
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_devkit_SMS_loadBGPalette
	pop	af
	C$content_manager.c$39$1_0$92	= .
	.globl	C$content_manager.c$39$1_0$92
;content_manager.c:39: }
	C$content_manager.c$39$1_0$92	= .
	.globl	C$content_manager.c$39$1_0$92
	XFcontent_manager$load_tile$0$0	= .
	.globl	XFcontent_manager$load_tile$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
