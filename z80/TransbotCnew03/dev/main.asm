;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _screen_game_screen_update
	.globl _screen_game_screen_load
	.globl _SMS_waitForVBlank
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
G$PSGPort$0_0$0 == 0x007f
_PSGPort	=	0x007f
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
	Fmain$silence_psg$0$0	= .
	.globl	Fmain$silence_psg$0$0
	C$main.c$8$0_0$118	= .
	.globl	C$main.c$8$0_0$118
;main.c:8: static void silence_psg( void )
;	---------------------------------
; Function silence_psg
; ---------------------------------
_silence_psg:
	C$main.c$13$1_0$118	= .
	.globl	C$main.c$13$1_0$118
;main.c:13: PSGPort = 0x9f;
	ld	a, #0x9f
	out	(_PSGPort), a
	C$main.c$14$1_0$118	= .
	.globl	C$main.c$14$1_0$118
;main.c:14: PSGPort = 0xbf;
	ld	a, #0xbf
	out	(_PSGPort), a
	C$main.c$15$1_0$118	= .
	.globl	C$main.c$15$1_0$118
;main.c:15: PSGPort = 0xdf;
	ld	a, #0xdf
	out	(_PSGPort), a
	C$main.c$16$1_0$118	= .
	.globl	C$main.c$16$1_0$118
;main.c:16: PSGPort = 0xff;
	ld	a, #0xff
	out	(_PSGPort), a
	C$main.c$18$1_0$118	= .
	.globl	C$main.c$18$1_0$118
;main.c:18: }
	C$main.c$18$1_0$118	= .
	.globl	C$main.c$18$1_0$118
	XFmain$silence_psg$0$0	= .
	.globl	XFmain$silence_psg$0$0
	ret
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$21$1_0$120	= .
	.globl	C$main.c$21$1_0$120
;main.c:21: void main( void )
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$23$1_0$120	= .
	.globl	C$main.c$23$1_0$120
;main.c:23: silence_psg();
	call	_silence_psg
	C$main.c$24$1_0$120	= .
	.globl	C$main.c$24$1_0$120
;main.c:24: screen_game_screen_load();
	call	_screen_game_screen_load
00102$:
	C$main.c$28$3_0$122	= .
	.globl	C$main.c$28$3_0$122
;main.c:28: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$main.c$29$3_0$122	= .
	.globl	C$main.c$29$3_0$122
;main.c:29: screen_game_screen_update();
	call	_screen_game_screen_update
	C$main.c$31$2_0$120	= .
	.globl	C$main.c$31$2_0$120
;main.c:31: }
	C$main.c$31$2_0$120	= .
	.globl	C$main.c$31$2_0$120
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jp	00102$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
