;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module test_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _init_scroll
	.globl _devkit_GSL_refreshVDP
	.globl _devkit_GSL_positionWindow
	.globl _devkit_GSL_initializeMap
	.globl _devkit_SMS_mapROMBank
	.globl _devkit_SMS_setBackdropColor
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_displayOn
	.globl _engine_input_manager_hold
	.globl _engine_font_manager_text
	.globl _engine_content_manager_load_level1_assets
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
	G$init_scroll$0$0	= .
	.globl	G$init_scroll$0$0
	C$test_screen.c$19$0_0$109	= .
	.globl	C$test_screen.c$19$0_0$109
;test_screen.c:19: void init_scroll( void *scrolltable, void *metatiles, unsigned int scroll_x, unsigned int scroll_y )
;	---------------------------------
; Function init_scroll
; ---------------------------------
_init_scroll::
	C$test_screen.c$21$1_0$109	= .
	.globl	C$test_screen.c$21$1_0$109
;test_screen.c:21: devkit_GSL_initializeMap( scrolltable, metatiles );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_devkit_GSL_initializeMap
	pop	af
	pop	af
	C$test_screen.c$22$1_0$109	= .
	.globl	C$test_screen.c$22$1_0$109
;test_screen.c:22: devkit_GSL_positionWindow( scroll_x, scroll_y );
	ld	iy, #8
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_devkit_GSL_positionWindow
	pop	af
	pop	af
	C$test_screen.c$23$1_0$109	= .
	.globl	C$test_screen.c$23$1_0$109
;test_screen.c:23: devkit_GSL_refreshVDP();
	C$test_screen.c$24$1_0$109	= .
	.globl	C$test_screen.c$24$1_0$109
;test_screen.c:24: }
	C$test_screen.c$24$1_0$109	= .
	.globl	C$test_screen.c$24$1_0$109
	XG$init_scroll$0$0	= .
	.globl	XG$init_scroll$0$0
	jp	_devkit_GSL_refreshVDP
	G$screen_test_screen_load$0$0	= .
	.globl	G$screen_test_screen_load$0$0
	C$test_screen.c$26$1_0$110	= .
	.globl	C$test_screen.c$26$1_0$110
;test_screen.c:26: void screen_test_screen_load()
;	---------------------------------
; Function screen_test_screen_load
; ---------------------------------
_screen_test_screen_load::
	C$test_screen.c$28$1_0$110	= .
	.globl	C$test_screen.c$28$1_0$110
;test_screen.c:28: devkit_SMS_displayOff();
	call	_devkit_SMS_displayOff
	C$test_screen.c$31$1_0$110	= .
	.globl	C$test_screen.c$31$1_0$110
;test_screen.c:31: devkit_SMS_setBackdropColor( 1 );
	ld	a, #0x01
	push	af
	inc	sp
	call	_devkit_SMS_setBackdropColor
	inc	sp
	C$test_screen.c$32$1_0$110	= .
	.globl	C$test_screen.c$32$1_0$110
;test_screen.c:32: engine_content_manager_load_level1_assets();
	call	_engine_content_manager_load_level1_assets
	C$test_screen.c$33$1_0$110	= .
	.globl	C$test_screen.c$33$1_0$110
;test_screen.c:33: devkit_SMS_mapROMBank( level1_metatiles_bin_bank );
	ld	a, #0x02
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$test_screen.c$34$1_0$110	= .
	.globl	C$test_screen.c$34$1_0$110
;test_screen.c:34: init_scroll( ( unsigned char * ) &level1_scrolltable_bin, ( unsigned char * ) &level1_metatiles_bin, 0, 0 );
	ld	hl, #0x0000
	push	hl
	ld	l, h
	push	hl
	ld	hl, #_level1_metatiles_bin
	push	hl
	ld	hl, #_level1_scrolltable_bin
	push	hl
	call	_init_scroll
	ld	hl, #8
	add	hl, sp
	ld	sp, hl
	C$test_screen.c$35$1_0$110	= .
	.globl	C$test_screen.c$35$1_0$110
;test_screen.c:35: devkit_SMS_displayOn();
	C$test_screen.c$36$1_0$110	= .
	.globl	C$test_screen.c$36$1_0$110
;test_screen.c:36: }
	C$test_screen.c$36$1_0$110	= .
	.globl	C$test_screen.c$36$1_0$110
	XG$screen_test_screen_load$0$0	= .
	.globl	XG$screen_test_screen_load$0$0
	jp	_devkit_SMS_displayOn
	G$screen_test_screen_update$0$0	= .
	.globl	G$screen_test_screen_update$0$0
	C$test_screen.c$38$1_0$112	= .
	.globl	C$test_screen.c$38$1_0$112
;test_screen.c:38: void screen_test_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_test_screen_update
; ---------------------------------
_screen_test_screen_update::
	C$test_screen.c$40$1_0$112	= .
	.globl	C$test_screen.c$40$1_0$112
;test_screen.c:40: unsigned char input = engine_input_manager_hold(1);
	ld	a, #0x01
	push	af
	inc	sp
	call	_engine_input_manager_hold
	ld	a, l
	inc	sp
	C$test_screen.c$41$1_0$112	= .
	.globl	C$test_screen.c$41$1_0$112
;test_screen.c:41: if( input )
	or	a, a
	jr	Z, 00102$
	C$test_screen.c$43$2_0$113	= .
	.globl	C$test_screen.c$43$2_0$113
;test_screen.c:43: engine_font_manager_text( "TEST SCREEN", 11, 7 );
	ld	de, #0x070b
	push	de
	ld	hl, #___str_0
	push	hl
	call	_engine_font_manager_text
	pop	af
	C$test_screen.c$44$2_0$113	= .
	.globl	C$test_screen.c$44$2_0$113
;test_screen.c:44: devkit_SMS_mapROMBank( level1music_psg_bank );
	ld	h,#0x04
	ex	(sp),hl
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
00102$:
	C$test_screen.c$49$1_0$112	= .
	.globl	C$test_screen.c$49$1_0$112
;test_screen.c:49: *screen_type = screen_type_test;
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0x16
	C$test_screen.c$50$1_0$112	= .
	.globl	C$test_screen.c$50$1_0$112
;test_screen.c:50: }
	C$test_screen.c$50$1_0$112	= .
	.globl	C$test_screen.c$50$1_0$112
	XG$screen_test_screen_update$0$0	= .
	.globl	XG$screen_test_screen_update$0$0
	ret
Ftest_screen$__str_0$0_0$0 == .
___str_0:
	.ascii "TEST SCREEN"
	.db 0x00
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
