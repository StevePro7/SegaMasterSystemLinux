;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module title_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_VRAMmemsetW
	.globl _SMS_setBGScrollY
	.globl _SMS_setBGScrollX
	.globl _SMS_VDPturnOffFeature
	.globl _SMS_VDPturnOnFeature
	.globl _engine_content_manager_load_boot_tiles
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot0
	.globl _ROM_bank_to_be_mapped_on_slot1
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _screen_title_screen_load
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
	G$screen_title_screen_load$0$0	= .
	.globl	G$screen_title_screen_load$0$0
	C$title_screen.c$5$0_0$111	= .
	.globl	C$title_screen.c$5$0_0$111
;title_screen.c:5: void screen_title_screen_load( void )
;	---------------------------------
; Function screen_title_screen_load
; ---------------------------------
_screen_title_screen_load::
	C$title_screen.c$7$1_0$111	= .
	.globl	C$title_screen.c$7$1_0$111
;title_screen.c:7: SMS_displayOff();
	ld	hl, #0x0140
	call	_SMS_VDPturnOffFeature
	C$title_screen.c$8$1_0$111	= .
	.globl	C$title_screen.c$8$1_0$111
;title_screen.c:8: SMS_VRAMmemsetW( 0, 0, 0x4000 );
	ld	hl, #0x4000
	push	hl
	ld	de, #0x0000
	ld	h, l
	call	_SMS_VRAMmemsetW
	C$title_screen.c$9$1_0$111	= .
	.globl	C$title_screen.c$9$1_0$111
;title_screen.c:9: SMS_VDPturnOnFeature( VDPFEATURE_LEFTCOLBLANK | VDPFEATURE_LOCKHSCROLL );
	ld	hl, #0x0060
	call	_SMS_VDPturnOnFeature
	C$title_screen.c$10$1_0$111	= .
	.globl	C$title_screen.c$10$1_0$111
;title_screen.c:10: SMS_setBGScrollX( 0 );
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	call	_SMS_setBGScrollX
	C$title_screen.c$11$1_0$111	= .
	.globl	C$title_screen.c$11$1_0$111
;title_screen.c:11: SMS_setBGScrollY( 0 );
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	call	_SMS_setBGScrollY
	C$title_screen.c$12$1_0$111	= .
	.globl	C$title_screen.c$12$1_0$111
;title_screen.c:12: engine_content_manager_load_boot_tiles();
	call	_engine_content_manager_load_boot_tiles
	C$title_screen.c$14$1_0$111	= .
	.globl	C$title_screen.c$14$1_0$111
;title_screen.c:14: SMS_displayOn();
	ld	hl, #0x0140
	C$title_screen.c$15$1_0$111	= .
	.globl	C$title_screen.c$15$1_0$111
;title_screen.c:15: }
	C$title_screen.c$15$1_0$111	= .
	.globl	C$title_screen.c$15$1_0$111
	XG$screen_title_screen_load$0$0	= .
	.globl	XG$screen_title_screen_load$0$0
	jp	_SMS_VDPturnOnFeature
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
