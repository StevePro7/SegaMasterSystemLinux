;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module soundengine
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _PSGSFXFrame
	.globl _PSGFrame
	.globl _PSGSFXGetStatus
	.globl _PSGSFXStop
	.globl _PSGSFXPlay
	.globl _PSGGetStatus
	.globl _PSGPlay
	.globl _current_fx_bank
	.globl _current_music_bank
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _play_logo_music
	.globl _play_presentation_music
	.globl _play_game_music
	.globl _play_punch_sound1
	.globl _play_punch_sound2
	.globl _manage_sound_frame
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$ROM_bank_to_be_mapped_on_slot2$0_0$0 == 0xffff
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
G$SRAM_bank_to_be_mapped_on_slot2$0_0$0 == 0xfffc
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
G$SMS_SRAM$0_0$0 == 0x8000
_SMS_SRAM	=	0x8000
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$current_music_bank$0_0$0==.
_current_music_bank::
	.ds 1
G$current_fx_bank$0_0$0==.
_current_fx_bank::
	.ds 1
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
	G$play_logo_music$0$0	= .
	.globl	G$play_logo_music$0$0
	C$soundengine.c$11$0_0$82	= .
	.globl	C$soundengine.c$11$0_0$82
;soundengine.c:11: void play_logo_music() {
;	---------------------------------
; Function play_logo_music
; ---------------------------------
_play_logo_music::
	C$soundengine.c$12$1_0$82	= .
	.globl	C$soundengine.c$12$1_0$82
;soundengine.c:12: SMS_mapROMBank(logo1985music_psg_bank);
	ld	hl, #_ROM_bank_to_be_mapped_on_slot2
	ld	(hl), #0x03
	C$soundengine.c$13$1_0$82	= .
	.globl	C$soundengine.c$13$1_0$82
;soundengine.c:13: current_music_bank = logo1985music_psg_bank;
	ld	hl, #_current_music_bank
	ld	(hl), #0x03
	C$soundengine.c$14$1_0$82	= .
	.globl	C$soundengine.c$14$1_0$82
;soundengine.c:14: PSGPlay(logo1985music_psg);
	ld	hl, #_logo1985music_psg
	push	hl
	call	_PSGPlay
	pop	af
	C$soundengine.c$15$1_0$82	= .
	.globl	C$soundengine.c$15$1_0$82
;soundengine.c:15: }
	C$soundengine.c$15$1_0$82	= .
	.globl	C$soundengine.c$15$1_0$82
	XG$play_logo_music$0$0	= .
	.globl	XG$play_logo_music$0$0
	ret
	G$play_presentation_music$0$0	= .
	.globl	G$play_presentation_music$0$0
	C$soundengine.c$17$1_0$83	= .
	.globl	C$soundengine.c$17$1_0$83
;soundengine.c:17: void play_presentation_music() {
;	---------------------------------
; Function play_presentation_music
; ---------------------------------
_play_presentation_music::
	C$soundengine.c$18$1_0$83	= .
	.globl	C$soundengine.c$18$1_0$83
;soundengine.c:18: SMS_mapROMBank(presentation_psg_bank);
	ld	hl, #_ROM_bank_to_be_mapped_on_slot2
	ld	(hl), #0x02
	C$soundengine.c$19$1_0$83	= .
	.globl	C$soundengine.c$19$1_0$83
;soundengine.c:19: current_music_bank = presentation_psg_bank;
	ld	hl, #_current_music_bank
	ld	(hl), #0x02
	C$soundengine.c$20$1_0$83	= .
	.globl	C$soundengine.c$20$1_0$83
;soundengine.c:20: PSGPlay(presentation_psg);
	ld	hl, #_presentation_psg
	push	hl
	call	_PSGPlay
	pop	af
	C$soundengine.c$21$1_0$83	= .
	.globl	C$soundengine.c$21$1_0$83
;soundengine.c:21: }
	C$soundengine.c$21$1_0$83	= .
	.globl	C$soundengine.c$21$1_0$83
	XG$play_presentation_music$0$0	= .
	.globl	XG$play_presentation_music$0$0
	ret
	G$play_game_music$0$0	= .
	.globl	G$play_game_music$0$0
	C$soundengine.c$23$1_0$84	= .
	.globl	C$soundengine.c$23$1_0$84
;soundengine.c:23: void play_game_music() {
;	---------------------------------
; Function play_game_music
; ---------------------------------
_play_game_music::
	C$soundengine.c$24$1_0$84	= .
	.globl	C$soundengine.c$24$1_0$84
;soundengine.c:24: SMS_mapROMBank(level1music_psg_bank);
	ld	hl, #_ROM_bank_to_be_mapped_on_slot2
	ld	(hl), #0x04
	C$soundengine.c$25$1_0$84	= .
	.globl	C$soundengine.c$25$1_0$84
;soundengine.c:25: current_music_bank = level1music_psg_bank;
	ld	hl, #_current_music_bank
	ld	(hl), #0x04
	C$soundengine.c$26$1_0$84	= .
	.globl	C$soundengine.c$26$1_0$84
;soundengine.c:26: PSGPlay(level1music_psg);
	ld	hl, #_level1music_psg
	push	hl
	call	_PSGPlay
	pop	af
	C$soundengine.c$27$1_0$84	= .
	.globl	C$soundengine.c$27$1_0$84
;soundengine.c:27: }
	C$soundengine.c$27$1_0$84	= .
	.globl	C$soundengine.c$27$1_0$84
	XG$play_game_music$0$0	= .
	.globl	XG$play_game_music$0$0
	ret
	G$play_punch_sound1$0$0	= .
	.globl	G$play_punch_sound1$0$0
	C$soundengine.c$29$1_0$85	= .
	.globl	C$soundengine.c$29$1_0$85
;soundengine.c:29: void play_punch_sound1() {
;	---------------------------------
; Function play_punch_sound1
; ---------------------------------
_play_punch_sound1::
	C$soundengine.c$30$1_0$85	= .
	.globl	C$soundengine.c$30$1_0$85
;soundengine.c:30: SMS_mapROMBank(punch1_psg_bank);
	ld	hl, #_ROM_bank_to_be_mapped_on_slot2
	ld	(hl), #0x04
	C$soundengine.c$31$1_0$85	= .
	.globl	C$soundengine.c$31$1_0$85
;soundengine.c:31: current_fx_bank = punch1_psg_bank;
	ld	hl, #_current_fx_bank
	ld	(hl), #0x04
	C$soundengine.c$32$1_0$85	= .
	.globl	C$soundengine.c$32$1_0$85
;soundengine.c:32: PSGSFXPlay(punch1_psg, SFX_CHANNEL2);
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #_punch1_psg
	push	hl
	call	_PSGSFXPlay
	pop	af
	inc	sp
	C$soundengine.c$33$1_0$85	= .
	.globl	C$soundengine.c$33$1_0$85
;soundengine.c:33: }
	C$soundengine.c$33$1_0$85	= .
	.globl	C$soundengine.c$33$1_0$85
	XG$play_punch_sound1$0$0	= .
	.globl	XG$play_punch_sound1$0$0
	ret
	G$play_punch_sound2$0$0	= .
	.globl	G$play_punch_sound2$0$0
	C$soundengine.c$35$1_0$86	= .
	.globl	C$soundengine.c$35$1_0$86
;soundengine.c:35: void play_punch_sound2() {
;	---------------------------------
; Function play_punch_sound2
; ---------------------------------
_play_punch_sound2::
	C$soundengine.c$36$1_0$86	= .
	.globl	C$soundengine.c$36$1_0$86
;soundengine.c:36: SMS_mapROMBank(punch2_psg_bank);
	ld	hl, #_ROM_bank_to_be_mapped_on_slot2
	ld	(hl), #0x04
	C$soundengine.c$37$1_0$86	= .
	.globl	C$soundengine.c$37$1_0$86
;soundengine.c:37: current_fx_bank = punch2_psg_bank;
	ld	hl, #_current_fx_bank
	ld	(hl), #0x04
	C$soundengine.c$38$1_0$86	= .
	.globl	C$soundengine.c$38$1_0$86
;soundengine.c:38: PSGSFXPlay(punch1_psg, SFX_CHANNEL3);
	ld	a, #0x02
	push	af
	inc	sp
	ld	hl, #_punch1_psg
	push	hl
	call	_PSGSFXPlay
	pop	af
	inc	sp
	C$soundengine.c$39$1_0$86	= .
	.globl	C$soundengine.c$39$1_0$86
;soundengine.c:39: }
	C$soundengine.c$39$1_0$86	= .
	.globl	C$soundengine.c$39$1_0$86
	XG$play_punch_sound2$0$0	= .
	.globl	XG$play_punch_sound2$0$0
	ret
	G$manage_sound_frame$0$0	= .
	.globl	G$manage_sound_frame$0$0
	C$soundengine.c$41$1_0$87	= .
	.globl	C$soundengine.c$41$1_0$87
;soundengine.c:41: void manage_sound_frame() {
;	---------------------------------
; Function manage_sound_frame
; ---------------------------------
_manage_sound_frame::
	C$soundengine.c$42$1_0$87	= .
	.globl	C$soundengine.c$42$1_0$87
;soundengine.c:42: if(PSGGetStatus() == PSG_PLAYING){
	call	_PSGGetStatus
	dec	l
	jr	NZ, 00102$
	C$soundengine.c$43$2_0$88	= .
	.globl	C$soundengine.c$43$2_0$88
;soundengine.c:43: SMS_mapROMBank(current_music_bank);
	ld	a,(#_current_music_bank + 0)
	ld	(#_ROM_bank_to_be_mapped_on_slot2),a
	C$soundengine.c$44$2_0$88	= .
	.globl	C$soundengine.c$44$2_0$88
;soundengine.c:44: PSGFrame();
	call	_PSGFrame
00102$:
	C$soundengine.c$46$1_0$87	= .
	.globl	C$soundengine.c$46$1_0$87
;soundengine.c:46: if(PSGSFXGetStatus() == PSG_PLAYING){
	call	_PSGSFXGetStatus
	dec	l
	jp	NZ,_PSGSFXStop
	C$soundengine.c$47$2_0$89	= .
	.globl	C$soundengine.c$47$2_0$89
;soundengine.c:47: SMS_mapROMBank(current_fx_bank);
	ld	a,(#_current_fx_bank + 0)
	ld	iy, #_ROM_bank_to_be_mapped_on_slot2
	ld	0 (iy), a
	C$soundengine.c$48$2_0$89	= .
	.globl	C$soundengine.c$48$2_0$89
;soundengine.c:48: PSGSFXFrame();
	C$soundengine.c$50$2_0$90	= .
	.globl	C$soundengine.c$50$2_0$90
;soundengine.c:50: PSGSFXStop();
	C$soundengine.c$52$1_0$87	= .
	.globl	C$soundengine.c$52$1_0$87
;soundengine.c:52: }
	C$soundengine.c$52$1_0$87	= .
	.globl	C$soundengine.c$52$1_0$87
	XG$manage_sound_frame$0$0	= .
	.globl	XG$manage_sound_frame$0$0
	jp	_PSGSFXFrame
	.area _CODE
	.area _INITIALIZER
Fsoundengine$__xinit_current_music_bank$0_0$0 == .
__xinit__current_music_bank:
	.db #0x00	; 0
Fsoundengine$__xinit_current_fx_bank$0_0$0 == .
__xinit__current_fx_bank:
	.db #0x00	; 0
	.area _CABS (ABS)
