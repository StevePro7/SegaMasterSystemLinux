;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
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
	.globl _PSGSFXFrame
	.globl _PSGFrame
	.globl _PSGSilenceChannels
	.globl _SMS_setSpritePaletteColor
	.globl _SMS_waitForVBlank
	.globl _SMS_VDPturnOnFeature
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot0
	.globl _ROM_bank_to_be_mapped_on_slot1
	.globl _ROM_bank_to_be_mapped_on_slot2
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
G$SMS_VDPControlPort$0_0$0 == 0x00bf
_SMS_VDPControlPort	=	0x00bf
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$ROM_bank_to_be_mapped_on_slot2$0_0$0 == 0xffff
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
G$ROM_bank_to_be_mapped_on_slot1$0_0$0 == 0xfffe
_ROM_bank_to_be_mapped_on_slot1	=	0xfffe
G$ROM_bank_to_be_mapped_on_slot0$0_0$0 == 0xfffd
_ROM_bank_to_be_mapped_on_slot0	=	0xfffd
G$SRAM_bank_to_be_mapped_on_slot2$0_0$0 == 0xfffc
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
G$SMS_SRAM$0_0$0 == 0x8000
_SMS_SRAM	=	0x8000
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
	C$main.c$3$0_0$170	= .
	.globl	C$main.c$3$0_0$170
;main.c:3: void main( void )
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$5$1_0$170	= .
	.globl	C$main.c$5$1_0$170
;main.c:5: PSGSilenceChannels();
	call	_PSGSilenceChannels
	C$main.c$7$1_0$170	= .
	.globl	C$main.c$7$1_0$170
;main.c:7: SMS_setSpritePaletteColor( 0, RGB( 1, 2,  3) );
	ld	l, #0x39
;	spillPairReg hl
;	spillPairReg hl
	xor	a, a
	call	_SMS_setSpritePaletteColor
	C$main.c$8$1_0$170	= .
	.globl	C$main.c$8$1_0$170
;main.c:8: SMS_displayOn();
	ld	hl, #0x0140
	call	_SMS_VDPturnOnFeature
00102$:
	C$main.c$11$3_0$172	= .
	.globl	C$main.c$11$3_0$172
;main.c:11: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$main.c$12$3_0$172	= .
	.globl	C$main.c$12$3_0$172
;main.c:12: PSGFrame();
	call	_PSGFrame
	C$main.c$13$3_0$172	= .
	.globl	C$main.c$13$3_0$172
;main.c:13: PSGSFXFrame();
	call	_PSGSFXFrame
	C$main.c$15$2_0$170	= .
	.globl	C$main.c$15$2_0$170
;main.c:15: }
	C$main.c$15$2_0$170	= .
	.globl	C$main.c$15$2_0$170
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jp	00102$
	.area _CODE
Fmain$__str_0$0_0$0 == .
__str_0:
	.ascii "StevePro Studios"
	.db 0x00
Fmain$__str_1$0_0$0 == .
__str_1:
	.ascii "Hello World"
	.db 0x00
Fmain$__str_2$0_0$0 == .
__str_2:
	.ascii "Simple Sega Master System demo to run on real hardware"
	.db 0x00
	.area _INITIALIZER
	.area _CABS (ABS)
	.org 0x7FF0
G$__SMS__SEGA_signature$0_0$0 == .
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
G$__SMS__SDSC_author$0_0$0 == .
___SMS__SDSC_author:
	.ascii "StevePro Studios"
	.db 0x00
	.org 0x7FC3
G$__SMS__SDSC_name$0_0$0 == .
___SMS__SDSC_name:
	.ascii "Hello World"
	.db 0x00
	.org 0x7F8C
G$__SMS__SDSC_descr$0_0$0 == .
___SMS__SDSC_descr:
	.ascii "Simple Sega Master System demo to run on real hardware"
	.db 0x00
	.org 0x7FE0
G$__SMS__SDSC_signature$0_0$0 == .
___SMS__SDSC_signature:
	.db #0x53	; 83	'S'
	.db #0x44	; 68	'D'
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x09	; 9
	.db #0x21	; 33
	.db #0x20	; 32
	.db #0xcf	; 207
	.db #0x7f	; 127
	.db #0xc3	; 195
	.db #0x7f	; 127
	.db #0x8c	; 140
	.db #0x7f	; 127
