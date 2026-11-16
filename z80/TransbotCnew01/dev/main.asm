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
	.globl _screen_title_screen_load
	.globl _PSGSFXFrame
	.globl _PSGFrame
	.globl _PSGSilenceChannels
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
	C$main.c$3$0_0$135	= .
	.globl	C$main.c$3$0_0$135
;main.c:3: void main( void )
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$5$1_0$135	= .
	.globl	C$main.c$5$1_0$135
;main.c:5: PSGSilenceChannels();
	call	_PSGSilenceChannels
	C$main.c$6$1_0$135	= .
	.globl	C$main.c$6$1_0$135
;main.c:6: screen_title_screen_load();
	call	_screen_title_screen_load
00102$:
	C$main.c$10$3_0$137	= .
	.globl	C$main.c$10$3_0$137
;main.c:10: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$main.c$11$3_0$137	= .
	.globl	C$main.c$11$3_0$137
;main.c:11: PSGFrame();
	call	_PSGFrame
	C$main.c$12$3_0$137	= .
	.globl	C$main.c$12$3_0$137
;main.c:12: PSGSFXFrame();
	call	_PSGSFXFrame
	C$main.c$14$2_0$135	= .
	.globl	C$main.c$14$2_0$135
;main.c:14: }
	C$main.c$14$2_0$135	= .
	.globl	C$main.c$14$2_0$135
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jp	00102$
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
