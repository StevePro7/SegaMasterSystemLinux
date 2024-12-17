;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module soundengine
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _devkit_SFX_CHANNEL3
	.globl _devkit_SFX_CHANNEL2
	.globl _devkit_PSG_PLAYING
	.globl _devkit_PSGSFXFrame
	.globl _devkit_PSGFrame
	.globl _devkit_PSGSFXGetStatus
	.globl _devkit_PSGSFXStop
	.globl _devkit_PSGSFXPlay
	.globl _devkit_PSGGetStatus
	.globl _devkit_PSGPlay
	.globl _devkit_SMS_mapROMBank
	.globl _current_fx_bank
	.globl _current_music_bank
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
	C$soundengine.c$11$0_0$95	= .
	.globl	C$soundengine.c$11$0_0$95
;soundengine.c:11: void play_logo_music()
;	---------------------------------
; Function play_logo_music
; ---------------------------------
_play_logo_music::
	C$soundengine.c$13$1_0$95	= .
	.globl	C$soundengine.c$13$1_0$95
;soundengine.c:13: devkit_SMS_mapROMBank( logo1985music_psg_bank );
	ld	a, #0x03
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$soundengine.c$14$1_0$95	= .
	.globl	C$soundengine.c$14$1_0$95
;soundengine.c:14: current_music_bank = logo1985music_psg_bank;
	ld	hl, #_current_music_bank
	ld	(hl), #0x03
	C$soundengine.c$15$1_0$95	= .
	.globl	C$soundengine.c$15$1_0$95
;soundengine.c:15: devkit_PSGPlay( logo1985music_psg );
	ld	hl, #_logo1985music_psg
	push	hl
	call	_devkit_PSGPlay
	pop	af
	C$soundengine.c$16$1_0$95	= .
	.globl	C$soundengine.c$16$1_0$95
;soundengine.c:16: }
	C$soundengine.c$16$1_0$95	= .
	.globl	C$soundengine.c$16$1_0$95
	XG$play_logo_music$0$0	= .
	.globl	XG$play_logo_music$0$0
	ret
	G$play_presentation_music$0$0	= .
	.globl	G$play_presentation_music$0$0
	C$soundengine.c$18$1_0$96	= .
	.globl	C$soundengine.c$18$1_0$96
;soundengine.c:18: void play_presentation_music()
;	---------------------------------
; Function play_presentation_music
; ---------------------------------
_play_presentation_music::
	C$soundengine.c$20$1_0$96	= .
	.globl	C$soundengine.c$20$1_0$96
;soundengine.c:20: devkit_SMS_mapROMBank( presentation_psg_bank );
	ld	a, #0x02
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$soundengine.c$21$1_0$96	= .
	.globl	C$soundengine.c$21$1_0$96
;soundengine.c:21: current_music_bank = presentation_psg_bank;
	ld	hl, #_current_music_bank
	ld	(hl), #0x02
	C$soundengine.c$22$1_0$96	= .
	.globl	C$soundengine.c$22$1_0$96
;soundengine.c:22: devkit_PSGPlay( presentation_psg );
	ld	hl, #_presentation_psg
	push	hl
	call	_devkit_PSGPlay
	pop	af
	C$soundengine.c$23$1_0$96	= .
	.globl	C$soundengine.c$23$1_0$96
;soundengine.c:23: }
	C$soundengine.c$23$1_0$96	= .
	.globl	C$soundengine.c$23$1_0$96
	XG$play_presentation_music$0$0	= .
	.globl	XG$play_presentation_music$0$0
	ret
	G$play_game_music$0$0	= .
	.globl	G$play_game_music$0$0
	C$soundengine.c$25$1_0$97	= .
	.globl	C$soundengine.c$25$1_0$97
;soundengine.c:25: void play_game_music()
;	---------------------------------
; Function play_game_music
; ---------------------------------
_play_game_music::
	C$soundengine.c$27$1_0$97	= .
	.globl	C$soundengine.c$27$1_0$97
;soundengine.c:27: devkit_SMS_mapROMBank( level1music_psg_bank );
	ld	a, #0x04
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$soundengine.c$28$1_0$97	= .
	.globl	C$soundengine.c$28$1_0$97
;soundengine.c:28: current_music_bank = level1music_psg_bank;
	ld	hl, #_current_music_bank
	ld	(hl), #0x04
	C$soundengine.c$29$1_0$97	= .
	.globl	C$soundengine.c$29$1_0$97
;soundengine.c:29: devkit_PSGPlay( level1music_psg );
	ld	hl, #_level1music_psg
	push	hl
	call	_devkit_PSGPlay
	pop	af
	C$soundengine.c$30$1_0$97	= .
	.globl	C$soundengine.c$30$1_0$97
;soundengine.c:30: }
	C$soundengine.c$30$1_0$97	= .
	.globl	C$soundengine.c$30$1_0$97
	XG$play_game_music$0$0	= .
	.globl	XG$play_game_music$0$0
	ret
	G$play_punch_sound1$0$0	= .
	.globl	G$play_punch_sound1$0$0
	C$soundengine.c$32$1_0$98	= .
	.globl	C$soundengine.c$32$1_0$98
;soundengine.c:32: void play_punch_sound1()
;	---------------------------------
; Function play_punch_sound1
; ---------------------------------
_play_punch_sound1::
	C$soundengine.c$34$1_0$98	= .
	.globl	C$soundengine.c$34$1_0$98
;soundengine.c:34: devkit_SMS_mapROMBank( punch1_psg_bank );
	ld	a, #0x04
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$soundengine.c$35$1_0$98	= .
	.globl	C$soundengine.c$35$1_0$98
;soundengine.c:35: current_fx_bank = punch1_psg_bank;
	ld	hl, #_current_fx_bank
	ld	(hl), #0x04
	C$soundengine.c$36$1_0$98	= .
	.globl	C$soundengine.c$36$1_0$98
;soundengine.c:36: devkit_PSGSFXPlay( punch1_psg, devkit_SFX_CHANNEL2() );
	call	_devkit_SFX_CHANNEL2
	ld	bc, #_punch1_psg+0
	ld	a, l
	push	af
	inc	sp
	push	bc
	call	_devkit_PSGSFXPlay
	pop	af
	inc	sp
	C$soundengine.c$37$1_0$98	= .
	.globl	C$soundengine.c$37$1_0$98
;soundengine.c:37: }
	C$soundengine.c$37$1_0$98	= .
	.globl	C$soundengine.c$37$1_0$98
	XG$play_punch_sound1$0$0	= .
	.globl	XG$play_punch_sound1$0$0
	ret
	G$play_punch_sound2$0$0	= .
	.globl	G$play_punch_sound2$0$0
	C$soundengine.c$39$1_0$99	= .
	.globl	C$soundengine.c$39$1_0$99
;soundengine.c:39: void play_punch_sound2()
;	---------------------------------
; Function play_punch_sound2
; ---------------------------------
_play_punch_sound2::
	C$soundengine.c$41$1_0$99	= .
	.globl	C$soundengine.c$41$1_0$99
;soundengine.c:41: devkit_SMS_mapROMBank( punch2_psg_bank );
	ld	a, #0x04
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$soundengine.c$42$1_0$99	= .
	.globl	C$soundengine.c$42$1_0$99
;soundengine.c:42: current_fx_bank = punch2_psg_bank;
	ld	hl, #_current_fx_bank
	ld	(hl), #0x04
	C$soundengine.c$43$1_0$99	= .
	.globl	C$soundengine.c$43$1_0$99
;soundengine.c:43: devkit_PSGSFXPlay( punch1_psg, devkit_SFX_CHANNEL3() );
	call	_devkit_SFX_CHANNEL3
	ld	bc, #_punch1_psg+0
	ld	a, l
	push	af
	inc	sp
	push	bc
	call	_devkit_PSGSFXPlay
	pop	af
	inc	sp
	C$soundengine.c$44$1_0$99	= .
	.globl	C$soundengine.c$44$1_0$99
;soundengine.c:44: }
	C$soundengine.c$44$1_0$99	= .
	.globl	C$soundengine.c$44$1_0$99
	XG$play_punch_sound2$0$0	= .
	.globl	XG$play_punch_sound2$0$0
	ret
	G$manage_sound_frame$0$0	= .
	.globl	G$manage_sound_frame$0$0
	C$soundengine.c$46$1_0$100	= .
	.globl	C$soundengine.c$46$1_0$100
;soundengine.c:46: void manage_sound_frame()
;	---------------------------------
; Function manage_sound_frame
; ---------------------------------
_manage_sound_frame::
	C$soundengine.c$48$1_0$100	= .
	.globl	C$soundengine.c$48$1_0$100
;soundengine.c:48: if( devkit_PSGGetStatus() == devkit_PSG_PLAYING() )
	call	_devkit_PSGGetStatus
	ld	c, l
	push	bc
	call	_devkit_PSG_PLAYING
	pop	bc
	ld	a, c
	sub	a, l
	jr	NZ, 00102$
	C$soundengine.c$50$2_0$101	= .
	.globl	C$soundengine.c$50$2_0$101
;soundengine.c:50: devkit_SMS_mapROMBank( current_music_bank );
	ld	a,(#_current_music_bank + 0)
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$soundengine.c$51$2_0$101	= .
	.globl	C$soundengine.c$51$2_0$101
;soundengine.c:51: devkit_PSGFrame();
	call	_devkit_PSGFrame
00102$:
	C$soundengine.c$53$1_0$100	= .
	.globl	C$soundengine.c$53$1_0$100
;soundengine.c:53: if( devkit_PSGSFXGetStatus() == devkit_PSG_PLAYING() )
	call	_devkit_PSGSFXGetStatus
	ld	c, l
	push	bc
	call	_devkit_PSG_PLAYING
	pop	bc
	ld	a, c
	sub	a, l
	jp	NZ,_devkit_PSGSFXStop
	C$soundengine.c$55$2_0$102	= .
	.globl	C$soundengine.c$55$2_0$102
;soundengine.c:55: devkit_SMS_mapROMBank( current_fx_bank );
	ld	a,(#_current_fx_bank + 0)
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$soundengine.c$56$2_0$102	= .
	.globl	C$soundengine.c$56$2_0$102
;soundengine.c:56: devkit_PSGSFXFrame();
	C$soundengine.c$60$2_0$103	= .
	.globl	C$soundengine.c$60$2_0$103
;soundengine.c:60: devkit_PSGSFXStop();
	C$soundengine.c$62$1_0$100	= .
	.globl	C$soundengine.c$62$1_0$100
;soundengine.c:62: }
	C$soundengine.c$62$1_0$100	= .
	.globl	C$soundengine.c$62$1_0$100
	XG$manage_sound_frame$0$0	= .
	.globl	XG$manage_sound_frame$0$0
	jp	_devkit_PSGSFXFrame
	.area _CODE
	.area _INITIALIZER
Fsoundengine$__xinit_current_music_bank$0_0$0 == .
__xinit__current_music_bank:
	.db #0x00	; 0
Fsoundengine$__xinit_current_fx_bank$0_0$0 == .
__xinit__current_fx_bank:
	.db #0x00	; 0
	.area _CABS (ABS)
