;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module gamelogic
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _devkit_PORT_A_KEY_1
	.globl _devkit_SMS_getKeysStatus
	.globl _devkit_SMS_setBackdropColor
	.globl _play_game_music
	.globl _play_presentation_music
	.globl _play_logo_music
	.globl _load_background_blackpalette
	.globl _update_resources
	.globl _get_scroll_position_x
	.globl _update_scroll
	.globl _init_level1_scroll
	.globl _load_level1_assets
	.globl _load_presentation_fullpalette
	.globl _load_presentation_halfpalette
	.globl _load_presentation_assets
	.globl _load_fnaclogo_fullpalette
	.globl _load_fnaclogo_halfpalette
	.globl _load_fnaclogo_assets
	.globl _load_logo_fullpalette
	.globl _load_logo_halfpalette
	.globl _load_logo_assets
	.globl _waitForFrame
	.globl _init_console
	.globl _update_player_positions
	.globl _manage_input
	.globl _add_player
	.globl _scroll_enabled
	.globl _score
	.globl _game_status
	.globl _init_game
	.globl _play_game
	.globl _logo_screen
	.globl _fnaclogo_screen
	.globl _presentation_screen
	.globl _game_loop
	.globl _init_gamestatus
	.globl _execute_game_logic
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$game_status$0_0$0==.
_game_status::
	.ds 1
G$score$0_0$0==.
_score::
	.ds 2
G$scroll_enabled$0_0$0==.
_scroll_enabled::
	.ds 1
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
	G$init_game$0$0	= .
	.globl	G$init_game$0$0
	C$gamelogic.c$15$0_0$106	= .
	.globl	C$gamelogic.c$15$0_0$106
;gamelogic.c:15: void init_game()
;	---------------------------------
; Function init_game
; ---------------------------------
_init_game::
	C$gamelogic.c$17$1_0$106	= .
	.globl	C$gamelogic.c$17$1_0$106
;gamelogic.c:17: init_console();
	C$gamelogic.c$18$1_0$106	= .
	.globl	C$gamelogic.c$18$1_0$106
;gamelogic.c:18: }
	C$gamelogic.c$18$1_0$106	= .
	.globl	C$gamelogic.c$18$1_0$106
	XG$init_game$0$0	= .
	.globl	XG$init_game$0$0
	jp	_init_console
	G$play_game$0$0	= .
	.globl	G$play_game$0$0
	C$gamelogic.c$20$1_0$107	= .
	.globl	C$gamelogic.c$20$1_0$107
;gamelogic.c:20: void play_game()
;	---------------------------------
; Function play_game
; ---------------------------------
_play_game::
	C$gamelogic.c$22$1_0$107	= .
	.globl	C$gamelogic.c$22$1_0$107
;gamelogic.c:22: logo_screen();
	call	_logo_screen
	C$gamelogic.c$23$1_0$107	= .
	.globl	C$gamelogic.c$23$1_0$107
;gamelogic.c:23: fnaclogo_screen();
	call	_fnaclogo_screen
	C$gamelogic.c$24$1_0$107	= .
	.globl	C$gamelogic.c$24$1_0$107
;gamelogic.c:24: presentation_screen();
	call	_presentation_screen
	C$gamelogic.c$25$1_0$107	= .
	.globl	C$gamelogic.c$25$1_0$107
;gamelogic.c:25: while(game_status != GAME_STATUS_GAME_OVER)
00101$:
	ld	a,(#_game_status + 0)
	dec	a
	ret	Z
	C$gamelogic.c$27$2_0$108	= .
	.globl	C$gamelogic.c$27$2_0$108
;gamelogic.c:27: game_loop();
	call	_game_loop
	C$gamelogic.c$29$1_0$107	= .
	.globl	C$gamelogic.c$29$1_0$107
;gamelogic.c:29: }
	C$gamelogic.c$29$1_0$107	= .
	.globl	C$gamelogic.c$29$1_0$107
	XG$play_game$0$0	= .
	.globl	XG$play_game$0$0
	jr	00101$
	G$logo_screen$0$0	= .
	.globl	G$logo_screen$0$0
	C$gamelogic.c$31$1_0$109	= .
	.globl	C$gamelogic.c$31$1_0$109
;gamelogic.c:31: void logo_screen()
;	---------------------------------
; Function logo_screen
; ---------------------------------
_logo_screen::
	C$gamelogic.c$33$1_0$109	= .
	.globl	C$gamelogic.c$33$1_0$109
;gamelogic.c:33: load_logo_assets();
	call	_load_logo_assets
	C$gamelogic.c$34$1_0$109	= .
	.globl	C$gamelogic.c$34$1_0$109
;gamelogic.c:34: load_background_blackpalette();
	call	_load_background_blackpalette
	C$gamelogic.c$35$1_0$109	= .
	.globl	C$gamelogic.c$35$1_0$109
;gamelogic.c:35: frame_cnt = 0;
	ld	hl, #0x0000
	ld	(_frame_cnt), hl
	C$gamelogic.c$36$1_0$109	= .
	.globl	C$gamelogic.c$36$1_0$109
;gamelogic.c:36: play_logo_music();
	call	_play_logo_music
	C$gamelogic.c$37$1_0$109	= .
	.globl	C$gamelogic.c$37$1_0$109
;gamelogic.c:37: while (frame_cnt < 300)
00109$:
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x2c
	ld	a, 1 (iy)
	sbc	a, #0x01
	ret	NC
	C$gamelogic.c$39$2_0$110	= .
	.globl	C$gamelogic.c$39$2_0$110
;gamelogic.c:39: frame_cnt++;
	ld	hl, (_frame_cnt)
	inc	hl
	ld	(_frame_cnt), hl
	C$gamelogic.c$40$2_0$110	= .
	.globl	C$gamelogic.c$40$2_0$110
;gamelogic.c:40: if(frame_cnt == 25)
	ld	a, 0 (iy)
	sub	a, #0x19
	or	a, 1 (iy)
	jr	NZ, 00102$
	C$gamelogic.c$42$3_0$111	= .
	.globl	C$gamelogic.c$42$3_0$111
;gamelogic.c:42: load_logo_halfpalette();
	call	_load_logo_halfpalette
00102$:
	C$gamelogic.c$44$2_0$110	= .
	.globl	C$gamelogic.c$44$2_0$110
;gamelogic.c:44: if(frame_cnt == 50)
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x32
	or	a, 1 (iy)
	jr	NZ, 00104$
	C$gamelogic.c$46$3_0$112	= .
	.globl	C$gamelogic.c$46$3_0$112
;gamelogic.c:46: load_logo_fullpalette();
	call	_load_logo_fullpalette
00104$:
	C$gamelogic.c$48$2_0$110	= .
	.globl	C$gamelogic.c$48$2_0$110
;gamelogic.c:48: if(frame_cnt == 250)
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0xfa
	or	a, 1 (iy)
	jr	NZ, 00106$
	C$gamelogic.c$50$3_0$113	= .
	.globl	C$gamelogic.c$50$3_0$113
;gamelogic.c:50: load_logo_halfpalette();
	call	_load_logo_halfpalette
00106$:
	C$gamelogic.c$52$2_0$110	= .
	.globl	C$gamelogic.c$52$2_0$110
;gamelogic.c:52: if(frame_cnt == 275)
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x13
	jr	NZ, 00108$
	ld	a, 1 (iy)
	dec	a
	jr	NZ, 00108$
	C$gamelogic.c$54$3_0$114	= .
	.globl	C$gamelogic.c$54$3_0$114
;gamelogic.c:54: load_background_blackpalette();
	call	_load_background_blackpalette
00108$:
	C$gamelogic.c$56$2_0$110	= .
	.globl	C$gamelogic.c$56$2_0$110
;gamelogic.c:56: waitForFrame();
	call	_waitForFrame
	C$gamelogic.c$58$1_0$109	= .
	.globl	C$gamelogic.c$58$1_0$109
;gamelogic.c:58: }
	C$gamelogic.c$58$1_0$109	= .
	.globl	C$gamelogic.c$58$1_0$109
	XG$logo_screen$0$0	= .
	.globl	XG$logo_screen$0$0
	jr	00109$
	G$fnaclogo_screen$0$0	= .
	.globl	G$fnaclogo_screen$0$0
	C$gamelogic.c$60$1_0$115	= .
	.globl	C$gamelogic.c$60$1_0$115
;gamelogic.c:60: void fnaclogo_screen()
;	---------------------------------
; Function fnaclogo_screen
; ---------------------------------
_fnaclogo_screen::
	C$gamelogic.c$62$1_0$115	= .
	.globl	C$gamelogic.c$62$1_0$115
;gamelogic.c:62: load_fnaclogo_assets();
	call	_load_fnaclogo_assets
	C$gamelogic.c$63$1_0$115	= .
	.globl	C$gamelogic.c$63$1_0$115
;gamelogic.c:63: load_background_blackpalette();
	call	_load_background_blackpalette
	C$gamelogic.c$64$1_0$115	= .
	.globl	C$gamelogic.c$64$1_0$115
;gamelogic.c:64: frame_cnt = 0;
	ld	hl, #0x0000
	ld	(_frame_cnt), hl
	C$gamelogic.c$65$1_0$115	= .
	.globl	C$gamelogic.c$65$1_0$115
;gamelogic.c:65: while (frame_cnt < 300)
00109$:
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x2c
	ld	a, 1 (iy)
	sbc	a, #0x01
	ret	NC
	C$gamelogic.c$67$2_0$116	= .
	.globl	C$gamelogic.c$67$2_0$116
;gamelogic.c:67: frame_cnt++;
	ld	hl, (_frame_cnt)
	inc	hl
	ld	(_frame_cnt), hl
	C$gamelogic.c$68$2_0$116	= .
	.globl	C$gamelogic.c$68$2_0$116
;gamelogic.c:68: if(frame_cnt == 25)
	ld	a, 0 (iy)
	sub	a, #0x19
	or	a, 1 (iy)
	jr	NZ, 00102$
	C$gamelogic.c$70$3_0$117	= .
	.globl	C$gamelogic.c$70$3_0$117
;gamelogic.c:70: load_fnaclogo_halfpalette();
	call	_load_fnaclogo_halfpalette
00102$:
	C$gamelogic.c$72$2_0$116	= .
	.globl	C$gamelogic.c$72$2_0$116
;gamelogic.c:72: if(frame_cnt == 50)
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x32
	or	a, 1 (iy)
	jr	NZ, 00104$
	C$gamelogic.c$74$3_0$118	= .
	.globl	C$gamelogic.c$74$3_0$118
;gamelogic.c:74: load_fnaclogo_fullpalette();
	call	_load_fnaclogo_fullpalette
00104$:
	C$gamelogic.c$76$2_0$116	= .
	.globl	C$gamelogic.c$76$2_0$116
;gamelogic.c:76: if(frame_cnt == 250)
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0xfa
	or	a, 1 (iy)
	jr	NZ, 00106$
	C$gamelogic.c$78$3_0$119	= .
	.globl	C$gamelogic.c$78$3_0$119
;gamelogic.c:78: load_fnaclogo_halfpalette();
	call	_load_fnaclogo_halfpalette
00106$:
	C$gamelogic.c$80$2_0$116	= .
	.globl	C$gamelogic.c$80$2_0$116
;gamelogic.c:80: if(frame_cnt == 275)
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x13
	jr	NZ, 00108$
	ld	a, 1 (iy)
	dec	a
	jr	NZ, 00108$
	C$gamelogic.c$82$3_0$120	= .
	.globl	C$gamelogic.c$82$3_0$120
;gamelogic.c:82: load_background_blackpalette();
	call	_load_background_blackpalette
00108$:
	C$gamelogic.c$84$2_0$116	= .
	.globl	C$gamelogic.c$84$2_0$116
;gamelogic.c:84: waitForFrame();
	call	_waitForFrame
	C$gamelogic.c$86$1_0$115	= .
	.globl	C$gamelogic.c$86$1_0$115
;gamelogic.c:86: }
	C$gamelogic.c$86$1_0$115	= .
	.globl	C$gamelogic.c$86$1_0$115
	XG$fnaclogo_screen$0$0	= .
	.globl	XG$fnaclogo_screen$0$0
	jr	00109$
	G$presentation_screen$0$0	= .
	.globl	G$presentation_screen$0$0
	C$gamelogic.c$88$1_0$121	= .
	.globl	C$gamelogic.c$88$1_0$121
;gamelogic.c:88: void presentation_screen()
;	---------------------------------
; Function presentation_screen
; ---------------------------------
_presentation_screen::
	C$gamelogic.c$91$1_0$121	= .
	.globl	C$gamelogic.c$91$1_0$121
;gamelogic.c:91: load_presentation_assets();
	call	_load_presentation_assets
	C$gamelogic.c$92$1_0$121	= .
	.globl	C$gamelogic.c$92$1_0$121
;gamelogic.c:92: load_background_blackpalette();
	call	_load_background_blackpalette
	C$gamelogic.c$93$1_0$121	= .
	.globl	C$gamelogic.c$93$1_0$121
;gamelogic.c:93: play_presentation_music();
	call	_play_presentation_music
	C$gamelogic.c$94$1_0$121	= .
	.globl	C$gamelogic.c$94$1_0$121
;gamelogic.c:94: frame_cnt = 0;
	ld	hl, #0x0000
	ld	(_frame_cnt), hl
	C$gamelogic.c$95$1_0$121	= .
	.globl	C$gamelogic.c$95$1_0$121
;gamelogic.c:95: while (frame_cnt < 800)
00112$:
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x20
	ld	a, 1 (iy)
	sbc	a, #0x03
	ret	NC
	C$gamelogic.c$97$2_0$122	= .
	.globl	C$gamelogic.c$97$2_0$122
;gamelogic.c:97: frame_cnt++;
	ld	hl, (_frame_cnt)
	inc	hl
	ld	(_frame_cnt), hl
	C$gamelogic.c$98$2_0$122	= .
	.globl	C$gamelogic.c$98$2_0$122
;gamelogic.c:98: if(frame_cnt == 25)
	ld	a, 0 (iy)
	sub	a, #0x19
	or	a, 1 (iy)
	jr	NZ, 00102$
	C$gamelogic.c$100$3_0$123	= .
	.globl	C$gamelogic.c$100$3_0$123
;gamelogic.c:100: load_presentation_halfpalette();
	call	_load_presentation_halfpalette
00102$:
	C$gamelogic.c$102$2_0$122	= .
	.globl	C$gamelogic.c$102$2_0$122
;gamelogic.c:102: if(frame_cnt == 50)
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x32
	or	a, 1 (iy)
	jr	NZ, 00104$
	C$gamelogic.c$104$3_0$124	= .
	.globl	C$gamelogic.c$104$3_0$124
;gamelogic.c:104: load_presentation_fullpalette();
	call	_load_presentation_fullpalette
00104$:
	C$gamelogic.c$106$2_0$122	= .
	.globl	C$gamelogic.c$106$2_0$122
;gamelogic.c:106: if(frame_cnt == 750)
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0xee
	jr	NZ, 00106$
	ld	a, 1 (iy)
	sub	a, #0x02
	jr	NZ, 00106$
	C$gamelogic.c$108$3_0$125	= .
	.globl	C$gamelogic.c$108$3_0$125
;gamelogic.c:108: load_presentation_halfpalette();
	call	_load_presentation_halfpalette
00106$:
	C$gamelogic.c$110$2_0$122	= .
	.globl	C$gamelogic.c$110$2_0$122
;gamelogic.c:110: if(frame_cnt == 775)
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x07
	jr	NZ, 00108$
	ld	a, 1 (iy)
	sub	a, #0x03
	jr	NZ, 00108$
	C$gamelogic.c$112$3_0$126	= .
	.globl	C$gamelogic.c$112$3_0$126
;gamelogic.c:112: load_background_blackpalette();
	call	_load_background_blackpalette
00108$:
	C$gamelogic.c$114$2_0$122	= .
	.globl	C$gamelogic.c$114$2_0$122
;gamelogic.c:114: keys = devkit_SMS_getKeysStatus();
	call	_devkit_SMS_getKeysStatus
	C$gamelogic.c$115$2_0$122	= .
	.globl	C$gamelogic.c$115$2_0$122
;gamelogic.c:115: if(keys & devkit_PORT_A_KEY_1() && (frame_cnt < 740))
	push	hl
	call	_devkit_PORT_A_KEY_1
	pop	de
	ld	a, l
	and	a, e
	ld	c, a
	ld	a, h
	and	a, d
	or	a, c
	jr	Z, 00110$
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0xe4
	ld	a, 1 (iy)
	sbc	a, #0x02
	jr	NC, 00110$
	C$gamelogic.c$117$3_0$127	= .
	.globl	C$gamelogic.c$117$3_0$127
;gamelogic.c:117: frame_cnt = 740;
	ld	hl, #0x02e4
	ld	(_frame_cnt), hl
00110$:
	C$gamelogic.c$119$2_0$122	= .
	.globl	C$gamelogic.c$119$2_0$122
;gamelogic.c:119: waitForFrame();
	call	_waitForFrame
	C$gamelogic.c$121$1_0$121	= .
	.globl	C$gamelogic.c$121$1_0$121
;gamelogic.c:121: }
	C$gamelogic.c$121$1_0$121	= .
	.globl	C$gamelogic.c$121$1_0$121
	XG$presentation_screen$0$0	= .
	.globl	XG$presentation_screen$0$0
	jp	00112$
	G$game_loop$0$0	= .
	.globl	G$game_loop$0$0
	C$gamelogic.c$123$1_0$128	= .
	.globl	C$gamelogic.c$123$1_0$128
;gamelogic.c:123: void game_loop()
;	---------------------------------
; Function game_loop
; ---------------------------------
_game_loop::
	C$gamelogic.c$125$1_0$128	= .
	.globl	C$gamelogic.c$125$1_0$128
;gamelogic.c:125: devkit_SMS_setBackdropColor(1);
	ld	a, #0x01
	push	af
	inc	sp
	call	_devkit_SMS_setBackdropColor
	inc	sp
	C$gamelogic.c$126$1_0$128	= .
	.globl	C$gamelogic.c$126$1_0$128
;gamelogic.c:126: load_level1_assets();
	call	_load_level1_assets
	C$gamelogic.c$127$1_0$128	= .
	.globl	C$gamelogic.c$127$1_0$128
;gamelogic.c:127: init_gamestatus();
	call	_init_gamestatus
	C$gamelogic.c$128$1_0$128	= .
	.globl	C$gamelogic.c$128$1_0$128
;gamelogic.c:128: init_level1_scroll();
	call	_init_level1_scroll
	C$gamelogic.c$129$1_0$128	= .
	.globl	C$gamelogic.c$129$1_0$128
;gamelogic.c:129: play_game_music();
	call	_play_game_music
	C$gamelogic.c$130$1_0$128	= .
	.globl	C$gamelogic.c$130$1_0$128
;gamelogic.c:130: add_player(1);
	ld	a, #0x01
	push	af
	inc	sp
	call	_add_player
	inc	sp
	C$gamelogic.c$132$1_0$128	= .
	.globl	C$gamelogic.c$132$1_0$128
;gamelogic.c:132: frame_cnt = 0;
	ld	hl, #0x0000
	ld	(_frame_cnt), hl
	C$gamelogic.c$133$1_0$128	= .
	.globl	C$gamelogic.c$133$1_0$128
;gamelogic.c:133: scroll_enabled = true;
	ld	hl, #_scroll_enabled
	ld	(hl), #0x01
	C$gamelogic.c$134$1_0$128	= .
	.globl	C$gamelogic.c$134$1_0$128
;gamelogic.c:134: while (1)
00104$:
	C$gamelogic.c$136$2_0$129	= .
	.globl	C$gamelogic.c$136$2_0$129
;gamelogic.c:136: if(!pause)
	ld	hl, #_pause
	bit	0, (hl)
	jr	NZ, 00102$
	C$gamelogic.c$138$3_0$130	= .
	.globl	C$gamelogic.c$138$3_0$130
;gamelogic.c:138: execute_game_logic();
	call	_execute_game_logic
00102$:
	C$gamelogic.c$140$2_0$129	= .
	.globl	C$gamelogic.c$140$2_0$129
;gamelogic.c:140: waitForFrame();
	call	_waitForFrame
	C$gamelogic.c$142$1_0$128	= .
	.globl	C$gamelogic.c$142$1_0$128
;gamelogic.c:142: }
	C$gamelogic.c$142$1_0$128	= .
	.globl	C$gamelogic.c$142$1_0$128
	XG$game_loop$0$0	= .
	.globl	XG$game_loop$0$0
	jr	00104$
	G$init_gamestatus$0$0	= .
	.globl	G$init_gamestatus$0$0
	C$gamelogic.c$144$1_0$131	= .
	.globl	C$gamelogic.c$144$1_0$131
;gamelogic.c:144: void init_gamestatus() {
;	---------------------------------
; Function init_gamestatus
; ---------------------------------
_init_gamestatus::
	C$gamelogic.c$145$1_0$131	= .
	.globl	C$gamelogic.c$145$1_0$131
;gamelogic.c:145: game_status = GAME_STATUS_PLAYING;
	ld	hl, #_game_status
	ld	(hl), #0x00
	C$gamelogic.c$146$1_0$131	= .
	.globl	C$gamelogic.c$146$1_0$131
;gamelogic.c:146: score = 0;
	ld	hl, #0x0000
	ld	(_score), hl
	C$gamelogic.c$147$1_0$131	= .
	.globl	C$gamelogic.c$147$1_0$131
;gamelogic.c:147: }
	C$gamelogic.c$147$1_0$131	= .
	.globl	C$gamelogic.c$147$1_0$131
	XG$init_gamestatus$0$0	= .
	.globl	XG$init_gamestatus$0$0
	ret
	G$execute_game_logic$0$0	= .
	.globl	G$execute_game_logic$0$0
	C$gamelogic.c$149$1_0$132	= .
	.globl	C$gamelogic.c$149$1_0$132
;gamelogic.c:149: void execute_game_logic()
;	---------------------------------
; Function execute_game_logic
; ---------------------------------
_execute_game_logic::
	C$gamelogic.c$152$1_0$132	= .
	.globl	C$gamelogic.c$152$1_0$132
;gamelogic.c:152: switch (game_status)
	ld	a,(#_game_status + 0)
	or	a, a
	ret	NZ
	C$gamelogic.c$156$2_0$133	= .
	.globl	C$gamelogic.c$156$2_0$133
;gamelogic.c:156: keys = devkit_SMS_getKeysStatus();
	call	_devkit_SMS_getKeysStatus
	C$gamelogic.c$157$2_0$133	= .
	.globl	C$gamelogic.c$157$2_0$133
;gamelogic.c:157: manage_input(keys);
	push	hl
	call	_manage_input
	pop	af
	C$gamelogic.c$160$2_0$133	= .
	.globl	C$gamelogic.c$160$2_0$133
;gamelogic.c:160: update_resources();
	call	_update_resources
	C$gamelogic.c$162$2_0$133	= .
	.globl	C$gamelogic.c$162$2_0$133
;gamelogic.c:162: if(player1.vx > 0 && scroll_enabled)
	ld	bc, (#(_player1 + 0x0002) + 0)
	ld	a, b
	or	a, c
	jr	Z, 00113$
	ld	hl, #_scroll_enabled
	bit	0, (hl)
	jr	Z, 00113$
	C$gamelogic.c$164$3_0$134	= .
	.globl	C$gamelogic.c$164$3_0$134
;gamelogic.c:164: if(player1.entityreference->px > 200 && player1.xdirection == 1)
	ld	hl, (#_player1 + 0)
	inc	hl
	inc	hl
	inc	hl
	ld	e, (hl)
	ld	a, #0xc8
	sub	a, e
	jr	NC, 00109$
	ld	a, (#_player1 + 6)
	dec	a
	jr	NZ, 00109$
	C$gamelogic.c$166$4_0$135	= .
	.globl	C$gamelogic.c$166$4_0$135
;gamelogic.c:166: update_scroll(UFIX2CHAR(player1.vx),0);
	ld	a, b
	ld	h, #0x00
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_update_scroll
	pop	af
	C$gamelogic.c$167$4_0$135	= .
	.globl	C$gamelogic.c$167$4_0$135
;gamelogic.c:167: if(get_scroll_position_x() > 1200){
	call	_get_scroll_position_x
	ld	a, #0xb0
	cp	a, l
	ld	a, #0x04
	sbc	a, h
	jr	NC, 00103$
	C$gamelogic.c$168$5_0$136	= .
	.globl	C$gamelogic.c$168$5_0$136
;gamelogic.c:168: scroll_enabled = false;
	ld	hl, #_scroll_enabled
	ld	(hl), #0x00
00103$:
	C$gamelogic.c$171$4_0$135	= .
	.globl	C$gamelogic.c$171$4_0$135
;gamelogic.c:171: update_player_positions(UFIX2CHAR(player1.vx),0); 
	ld	hl, (#(_player1 + 0x0002) + 0)
	ld	a, h
	ld	h, #0x00
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_update_player_positions
	pop	af
	jr	00114$
00109$:
	C$gamelogic.c$173$3_0$134	= .
	.globl	C$gamelogic.c$173$3_0$134
;gamelogic.c:173: else if(player1.entityreference->px < 56 && player1.xdirection == -1)
	ld	a, e
	sub	a, #0x38
	jr	NC, 00105$
	ld	a, (#_player1 + 6)
	inc	a
	jr	NZ, 00105$
	C$gamelogic.c$175$4_0$137	= .
	.globl	C$gamelogic.c$175$4_0$137
;gamelogic.c:175: update_scroll(UFIX2CHAR(player1.vx)*-1,0);
	ld	c, b
	xor	a, a
	sub	a, c
	ld	h, #0x00
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_update_scroll
	pop	af
	C$gamelogic.c$176$4_0$137	= .
	.globl	C$gamelogic.c$176$4_0$137
;gamelogic.c:176: update_player_positions(UFIX2CHAR(player1.vx)*-1,0); 
	ld	hl, (#(_player1 + 0x0002) + 0)
	ld	c, h
	xor	a, a
	sub	a, c
	ld	h, #0x00
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_update_player_positions
	pop	af
	jr	00114$
00105$:
	C$gamelogic.c$180$4_0$138	= .
	.globl	C$gamelogic.c$180$4_0$138
;gamelogic.c:180: update_player_positions(0,0); 
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_update_player_positions
	pop	af
	jr	00114$
00113$:
	C$gamelogic.c$185$3_0$139	= .
	.globl	C$gamelogic.c$185$3_0$139
;gamelogic.c:185: update_player_positions(0,0);    
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_update_player_positions
	pop	af
00114$:
	C$gamelogic.c$187$2_0$133	= .
	.globl	C$gamelogic.c$187$2_0$133
;gamelogic.c:187: frame_cnt++;
	ld	hl, (_frame_cnt)
	inc	hl
	ld	(_frame_cnt), hl
	C$gamelogic.c$191$1_0$132	= .
	.globl	C$gamelogic.c$191$1_0$132
;gamelogic.c:191: }
	C$gamelogic.c$192$1_0$132	= .
	.globl	C$gamelogic.c$192$1_0$132
;gamelogic.c:192: }
	C$gamelogic.c$192$1_0$132	= .
	.globl	C$gamelogic.c$192$1_0$132
	XG$execute_game_logic$0$0	= .
	.globl	XG$execute_game_logic$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
