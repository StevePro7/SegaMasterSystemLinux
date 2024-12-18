;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module func_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _devkit_RGB
	.globl _devkit_SMS_setSpritePaletteColor
	.globl _devkit_SPRITEMODE_NORMAL
	.globl _devkit_SMS_setSpriteMode
	.globl _devkit_SMS_useFirstHalfTilesforSprites
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_displayOn
	.globl _devkit_VDPFEATURE_HIDEFIRSTCOL
	.globl _devkit_SMS_VDPturnOnFeature
	.globl _devkit_SMS_init
	.globl _engine_font_manager_text
	.globl _screen_func_screen_load
	.globl _screen_func_screen_update
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
	G$screen_func_screen_load$0$0	= .
	.globl	G$screen_func_screen_load$0$0
	C$func_screen.c$6$0_0$87	= .
	.globl	C$func_screen.c$6$0_0$87
;func_screen.c:6: void screen_func_screen_load()
;	---------------------------------
; Function screen_func_screen_load
; ---------------------------------
_screen_func_screen_load::
	C$func_screen.c$8$1_0$87	= .
	.globl	C$func_screen.c$8$1_0$87
;func_screen.c:8: devkit_SMS_init();
	call	_devkit_SMS_init
	C$func_screen.c$9$1_0$87	= .
	.globl	C$func_screen.c$9$1_0$87
;func_screen.c:9: devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	call	_devkit_SPRITEMODE_NORMAL
	ld	a, l
	push	af
	inc	sp
	call	_devkit_SMS_setSpriteMode
	inc	sp
	C$func_screen.c$10$1_0$87	= .
	.globl	C$func_screen.c$10$1_0$87
;func_screen.c:10: devkit_SMS_useFirstHalfTilesforSprites( 0 );
	xor	a, a
	push	af
	inc	sp
	call	_devkit_SMS_useFirstHalfTilesforSprites
	inc	sp
	C$func_screen.c$11$1_0$87	= .
	.globl	C$func_screen.c$11$1_0$87
;func_screen.c:11: devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );
	call	_devkit_VDPFEATURE_HIDEFIRSTCOL
	push	hl
	call	_devkit_SMS_VDPturnOnFeature
	pop	af
	C$func_screen.c$13$1_0$87	= .
	.globl	C$func_screen.c$13$1_0$87
;func_screen.c:13: devkit_SMS_displayOff();
	call	_devkit_SMS_displayOff
	C$func_screen.c$14$1_0$87	= .
	.globl	C$func_screen.c$14$1_0$87
;func_screen.c:14: devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 0, 0, 3 ) );
	ld	a, #0x03
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_devkit_RGB
	pop	af
	ld	a, l
	inc	sp
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_devkit_SMS_setSpritePaletteColor
	pop	af
	C$func_screen.c$15$1_0$87	= .
	.globl	C$func_screen.c$15$1_0$87
;func_screen.c:15: engine_font_manager_text( "FUNC SCREEN", 1, 5 );
	ld	de, #0x0501
	push	de
	ld	hl, #___str_0
	push	hl
	call	_engine_font_manager_text
	pop	af
	pop	af
	C$func_screen.c$16$1_0$87	= .
	.globl	C$func_screen.c$16$1_0$87
;func_screen.c:16: devkit_SMS_displayOn();
	C$func_screen.c$17$1_0$87	= .
	.globl	C$func_screen.c$17$1_0$87
;func_screen.c:17: }
	C$func_screen.c$17$1_0$87	= .
	.globl	C$func_screen.c$17$1_0$87
	XG$screen_func_screen_load$0$0	= .
	.globl	XG$screen_func_screen_load$0$0
	jp	_devkit_SMS_displayOn
Ffunc_screen$__str_0$0_0$0 == .
___str_0:
	.ascii "FUNC SCREEN"
	.db 0x00
	G$screen_func_screen_update$0$0	= .
	.globl	G$screen_func_screen_update$0$0
	C$func_screen.c$19$1_0$89	= .
	.globl	C$func_screen.c$19$1_0$89
;func_screen.c:19: void screen_func_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_func_screen_update
; ---------------------------------
_screen_func_screen_update::
	C$func_screen.c$21$1_0$89	= .
	.globl	C$func_screen.c$21$1_0$89
;func_screen.c:21: *screen_type = screen_type_func;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0x17
	C$func_screen.c$22$1_0$89	= .
	.globl	C$func_screen.c$22$1_0$89
;func_screen.c:22: }
	C$func_screen.c$22$1_0$89	= .
	.globl	C$func_screen.c$22$1_0$89
	XG$screen_func_screen_update$0$0	= .
	.globl	XG$screen_func_screen_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
