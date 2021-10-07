;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _engine_content_manager_load_splash_screen
	.globl _engine_content_manager_load_sprite_palette
	.globl _engine_asm_manager_clear_VRAM
	.globl _devkit_SMS_waitForVBlank
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_displayOn
	.globl _devkit_SMS_init
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
;main.c:3: void main( void )
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:5: devkit_SMS_init();
	call	_devkit_SMS_init
;main.c:6: devkit_SMS_displayOff();
	call	_devkit_SMS_displayOff
;main.c:7: engine_asm_manager_clear_VRAM();
	call	_engine_asm_manager_clear_VRAM
;main.c:9: engine_content_manager_load_sprite_palette();
	call	_engine_content_manager_load_sprite_palette
;main.c:10: engine_content_manager_load_splash_screen();
	call	_engine_content_manager_load_splash_screen
;main.c:12: devkit_SMS_displayOn();
	call	_devkit_SMS_displayOn
00102$:
;main.c:15: devkit_SMS_waitForVBlank();
	call	_devkit_SMS_waitForVBlank
;main.c:17: }
	jr	00102$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
