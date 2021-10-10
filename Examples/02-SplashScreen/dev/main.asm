;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___SMS__SDSC_signature
	.globl ___SMS__SDSC_descr
	.globl ___SMS__SDSC_name
	.globl ___SMS__SDSC_author
	.globl ___SMS__SEGA_signature
	.globl _main
	.globl _engine_content_manager_load_splash_screen
	.globl _engine_content_manager_load_sprite_palette
	.globl _engine_asm_manager_clear_VRAM
	.globl _SMS_waitForVBlank
	.globl _SMS_VDPturnOffFeature
	.globl _SMS_VDPturnOnFeature
	.globl _SMS_init
	.globl _bank_to_be_mapped_on_slot2
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
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$3$0$0	= .
	.globl	C$main.c$3$0$0
;main.c:3: void main( void )
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$5$1$70	= .
	.globl	C$main.c$5$1$70
;main.c:5: SMS_init();
	call	_SMS_init
	C$main.c$6$1$70	= .
	.globl	C$main.c$6$1$70
;main.c:6: SMS_displayOff();
	ld	hl, #0x0140
	call	_SMS_VDPturnOffFeature
	C$main.c$7$1$70	= .
	.globl	C$main.c$7$1$70
;main.c:7: engine_asm_manager_clear_VRAM();
	call	_engine_asm_manager_clear_VRAM
	C$main.c$9$1$70	= .
	.globl	C$main.c$9$1$70
;main.c:9: engine_content_manager_load_sprite_palette();
	call	_engine_content_manager_load_sprite_palette
	C$main.c$10$1$70	= .
	.globl	C$main.c$10$1$70
;main.c:10: engine_content_manager_load_splash_screen();
	call	_engine_content_manager_load_splash_screen
	C$main.c$12$1$70	= .
	.globl	C$main.c$12$1$70
;main.c:12: SMS_displayOn();
	ld	hl, #0x0140
	call	_SMS_VDPturnOnFeature
00102$:
	C$main.c$15$3$72	= .
	.globl	C$main.c$15$3$72
;main.c:15: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$main.c$17$2$71	= .
	.globl	C$main.c$17$2$71
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00102$
	.area _CODE
Fmain$__str_0$0$0 == .
__str_0:
	.ascii "StevePro Studios"
	.db 0x00
Fmain$__str_1$0$0 == .
__str_1:
	.ascii "Hello World"
	.db 0x00
Fmain$__str_2$0$0 == .
__str_2:
	.ascii "Simple Sega Master System demo to run on real hardware"
	.db 0x00
	.area _INITIALIZER
	.area _CABS (ABS)
	.org 0x7FF0
G$__SMS__SEGA_signature$0$0 == .
___SMS__SEGA_signature:
	.db #0x54	; 84	'T'
	.db #0x4d	; 77	'M'
	.db #0x52	; 82	'R'
	.db #0x20	; 32
	.db #0x53	; 83	'S'
	.db #0x45	; 69	'E'
	.db #0x47	; 71	'G'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.org 0x7FCF
G$__SMS__SDSC_author$0$0 == .
___SMS__SDSC_author:
	.ascii "StevePro Studios"
	.db 0x00
	.org 0x7FC3
G$__SMS__SDSC_name$0$0 == .
___SMS__SDSC_name:
	.ascii "Hello World"
	.db 0x00
	.org 0x7F8C
G$__SMS__SDSC_descr$0$0 == .
___SMS__SDSC_descr:
	.ascii "Simple Sega Master System demo to run on real hardware"
	.db 0x00
	.org 0x7FE0
G$__SMS__SDSC_signature$0$0 == .
___SMS__SDSC_signature:
	.db #0x53	; 83	'S'
	.db #0x44	; 68	'D'
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x09	; 9
	.db #0x17	; 23
	.db #0x20	; 32
	.db #0xcf	; 207
	.db #0x7f	; 127
	.db #0xc3	; 195
	.db #0x7f	; 127
	.db #0x8c	; 140
	.db #0x7f	; 127
