;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module gamelogic
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_getKeysStatus
	.globl _SMS_setBackdropColor
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
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
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
G$ROM_bank_to_be_mapped_on_slot2$0_0$0 == 0xffff
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
G$SRAM_bank_to_be_mapped_on_slot2$0_0$0 == 0xfffc
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
G$SMS_SRAM$0_0$0 == 0x8000
_SMS_SRAM	=	0x8000
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
	C$gamelogic.c$15$0_0$89	= .
	.globl	C$gamelogic.c$15$0_0$89
;gamelogic.c:15: void init_game() {
;	---------------------------------
; Function init_game
; ---------------------------------
_init_game::
	C$gamelogic.c$16$1_0$89	= .
	.globl	C$gamelogic.c$16$1_0$89
;gamelogic.c:16: init_console();
	C$gamelogic.c$17$1_0$89	= .
	.globl	C$gamelogic.c$17$1_0$89
;gamelogic.c:17: }
	C$gamelogic.c$17$1_0$89	= .
	.globl	C$gamelogic.c$17$1_0$89
	XG$init_game$0$0	= .
	.globl	XG$init_game$0$0
	jp	_init_console
	G$play_game$0$0	= .
	.globl	G$play_game$0$0
	C$gamelogic.c$19$1_0$90	= .
	.globl	C$gamelogic.c$19$1_0$90
;gamelogic.c:19: void play_game(){
;	---------------------------------
; Function play_game
; ---------------------------------
_play_game::
	C$gamelogic.c$20$1_0$90	= .
	.globl	C$gamelogic.c$20$1_0$90
;gamelogic.c:20: logo_screen();
	call	_logo_screen
	C$gamelogic.c$21$1_0$90	= .
	.globl	C$gamelogic.c$21$1_0$90
;gamelogic.c:21: fnaclogo_screen();
	call	_fnaclogo_screen
	C$gamelogic.c$22$1_0$90	= .
	.globl	C$gamelogic.c$22$1_0$90
;gamelogic.c:22: presentation_screen();
	call	_presentation_screen
	C$gamelogic.c$23$1_0$90	= .
	.globl	C$gamelogic.c$23$1_0$90
;gamelogic.c:23: while(game_status != GAME_STATUS_GAME_OVER) {
00101$:
	ld	a,(#_game_status + 0)
	dec	a
	ret	Z
	C$gamelogic.c$24$2_0$91	= .
	.globl	C$gamelogic.c$24$2_0$91
;gamelogic.c:24: game_loop();
	call	_game_loop
	C$gamelogic.c$26$1_0$90	= .
	.globl	C$gamelogic.c$26$1_0$90
;gamelogic.c:26: }
	C$gamelogic.c$26$1_0$90	= .
	.globl	C$gamelogic.c$26$1_0$90
	XG$play_game$0$0	= .
	.globl	XG$play_game$0$0
	jr	00101$
	G$logo_screen$0$0	= .
	.globl	G$logo_screen$0$0
	C$gamelogic.c$28$1_0$92	= .
	.globl	C$gamelogic.c$28$1_0$92
;gamelogic.c:28: void logo_screen() {
;	---------------------------------
; Function logo_screen
; ---------------------------------
_logo_screen::
	C$gamelogic.c$29$1_0$92	= .
	.globl	C$gamelogic.c$29$1_0$92
;gamelogic.c:29: load_logo_assets();
	call	_load_logo_assets
	C$gamelogic.c$30$1_0$92	= .
	.globl	C$gamelogic.c$30$1_0$92
;gamelogic.c:30: load_background_blackpalette();
	call	_load_background_blackpalette
	C$gamelogic.c$31$1_0$92	= .
	.globl	C$gamelogic.c$31$1_0$92
;gamelogic.c:31: frame_cnt = 0;
	ld	hl, #0x0000
	ld	(_frame_cnt), hl
	C$gamelogic.c$32$1_0$92	= .
	.globl	C$gamelogic.c$32$1_0$92
;gamelogic.c:32: play_logo_music();
	call	_play_logo_music
	C$gamelogic.c$33$1_0$92	= .
	.globl	C$gamelogic.c$33$1_0$92
;gamelogic.c:33: while (frame_cnt < 300) {
00109$:
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x2c
	ld	a, 1 (iy)
	sbc	a, #0x01
	ret	NC
	C$gamelogic.c$34$2_0$93	= .
	.globl	C$gamelogic.c$34$2_0$93
;gamelogic.c:34: frame_cnt++;
	ld	hl, (_frame_cnt)
	inc	hl
	ld	(_frame_cnt), hl
	C$gamelogic.c$35$2_0$93	= .
	.globl	C$gamelogic.c$35$2_0$93
;gamelogic.c:35: if(frame_cnt == 25) {
	ld	a, 0 (iy)
	sub	a, #0x19
	or	a, 1 (iy)
	jr	NZ, 00102$
	C$gamelogic.c$36$3_0$94	= .
	.globl	C$gamelogic.c$36$3_0$94
;gamelogic.c:36: load_logo_halfpalette();
	call	_load_logo_halfpalette
00102$:
	C$gamelogic.c$38$2_0$93	= .
	.globl	C$gamelogic.c$38$2_0$93
;gamelogic.c:38: if(frame_cnt == 50) {
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x32
	or	a, 1 (iy)
	jr	NZ, 00104$
	C$gamelogic.c$39$3_0$95	= .
	.globl	C$gamelogic.c$39$3_0$95
;gamelogic.c:39: load_logo_fullpalette();
	call	_load_logo_fullpalette
00104$:
	C$gamelogic.c$41$2_0$93	= .
	.globl	C$gamelogic.c$41$2_0$93
;gamelogic.c:41: if(frame_cnt == 250) {
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0xfa
	or	a, 1 (iy)
	jr	NZ, 00106$
	C$gamelogic.c$42$3_0$96	= .
	.globl	C$gamelogic.c$42$3_0$96
;gamelogic.c:42: load_logo_halfpalette();
	call	_load_logo_halfpalette
00106$:
	C$gamelogic.c$44$2_0$93	= .
	.globl	C$gamelogic.c$44$2_0$93
;gamelogic.c:44: if(frame_cnt == 275) {
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x13
	jr	NZ, 00108$
	ld	a, 1 (iy)
	dec	a
	jr	NZ, 00108$
	C$gamelogic.c$45$3_0$97	= .
	.globl	C$gamelogic.c$45$3_0$97
;gamelogic.c:45: load_background_blackpalette();
	call	_load_background_blackpalette
00108$:
	C$gamelogic.c$47$2_0$93	= .
	.globl	C$gamelogic.c$47$2_0$93
;gamelogic.c:47: waitForFrame();
	call	_waitForFrame
	C$gamelogic.c$49$1_0$92	= .
	.globl	C$gamelogic.c$49$1_0$92
;gamelogic.c:49: }
	C$gamelogic.c$49$1_0$92	= .
	.globl	C$gamelogic.c$49$1_0$92
	XG$logo_screen$0$0	= .
	.globl	XG$logo_screen$0$0
	jr	00109$
	G$fnaclogo_screen$0$0	= .
	.globl	G$fnaclogo_screen$0$0
	C$gamelogic.c$51$1_0$98	= .
	.globl	C$gamelogic.c$51$1_0$98
;gamelogic.c:51: void fnaclogo_screen() {
;	---------------------------------
; Function fnaclogo_screen
; ---------------------------------
_fnaclogo_screen::
	C$gamelogic.c$52$1_0$98	= .
	.globl	C$gamelogic.c$52$1_0$98
;gamelogic.c:52: load_fnaclogo_assets();
	call	_load_fnaclogo_assets
	C$gamelogic.c$53$1_0$98	= .
	.globl	C$gamelogic.c$53$1_0$98
;gamelogic.c:53: load_background_blackpalette();
	call	_load_background_blackpalette
	C$gamelogic.c$54$1_0$98	= .
	.globl	C$gamelogic.c$54$1_0$98
;gamelogic.c:54: frame_cnt = 0;
	ld	hl, #0x0000
	ld	(_frame_cnt), hl
	C$gamelogic.c$55$1_0$98	= .
	.globl	C$gamelogic.c$55$1_0$98
;gamelogic.c:55: while (frame_cnt < 300) {
00109$:
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x2c
	ld	a, 1 (iy)
	sbc	a, #0x01
	ret	NC
	C$gamelogic.c$56$2_0$99	= .
	.globl	C$gamelogic.c$56$2_0$99
;gamelogic.c:56: frame_cnt++;
	ld	hl, (_frame_cnt)
	inc	hl
	ld	(_frame_cnt), hl
	C$gamelogic.c$57$2_0$99	= .
	.globl	C$gamelogic.c$57$2_0$99
;gamelogic.c:57: if(frame_cnt == 25) {
	ld	a, 0 (iy)
	sub	a, #0x19
	or	a, 1 (iy)
	jr	NZ, 00102$
	C$gamelogic.c$58$3_0$100	= .
	.globl	C$gamelogic.c$58$3_0$100
;gamelogic.c:58: load_fnaclogo_halfpalette();
	call	_load_fnaclogo_halfpalette
00102$:
	C$gamelogic.c$60$2_0$99	= .
	.globl	C$gamelogic.c$60$2_0$99
;gamelogic.c:60: if(frame_cnt == 50) {
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x32
	or	a, 1 (iy)
	jr	NZ, 00104$
	C$gamelogic.c$61$3_0$101	= .
	.globl	C$gamelogic.c$61$3_0$101
;gamelogic.c:61: load_fnaclogo_fullpalette();
	call	_load_fnaclogo_fullpalette
00104$:
	C$gamelogic.c$63$2_0$99	= .
	.globl	C$gamelogic.c$63$2_0$99
;gamelogic.c:63: if(frame_cnt == 250) {
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0xfa
	or	a, 1 (iy)
	jr	NZ, 00106$
	C$gamelogic.c$64$3_0$102	= .
	.globl	C$gamelogic.c$64$3_0$102
;gamelogic.c:64: load_fnaclogo_halfpalette();
	call	_load_fnaclogo_halfpalette
00106$:
	C$gamelogic.c$66$2_0$99	= .
	.globl	C$gamelogic.c$66$2_0$99
;gamelogic.c:66: if(frame_cnt == 275) {
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x13
	jr	NZ, 00108$
	ld	a, 1 (iy)
	dec	a
	jr	NZ, 00108$
	C$gamelogic.c$67$3_0$103	= .
	.globl	C$gamelogic.c$67$3_0$103
;gamelogic.c:67: load_background_blackpalette();
	call	_load_background_blackpalette
00108$:
	C$gamelogic.c$69$2_0$99	= .
	.globl	C$gamelogic.c$69$2_0$99
;gamelogic.c:69: waitForFrame();
	call	_waitForFrame
	C$gamelogic.c$71$1_0$98	= .
	.globl	C$gamelogic.c$71$1_0$98
;gamelogic.c:71: }
	C$gamelogic.c$71$1_0$98	= .
	.globl	C$gamelogic.c$71$1_0$98
	XG$fnaclogo_screen$0$0	= .
	.globl	XG$fnaclogo_screen$0$0
	jr	00109$
	G$presentation_screen$0$0	= .
	.globl	G$presentation_screen$0$0
	C$gamelogic.c$73$1_0$104	= .
	.globl	C$gamelogic.c$73$1_0$104
;gamelogic.c:73: void presentation_screen() {
;	---------------------------------
; Function presentation_screen
; ---------------------------------
_presentation_screen::
	C$gamelogic.c$75$1_0$104	= .
	.globl	C$gamelogic.c$75$1_0$104
;gamelogic.c:75: load_presentation_assets();
	call	_load_presentation_assets
	C$gamelogic.c$76$1_0$104	= .
	.globl	C$gamelogic.c$76$1_0$104
;gamelogic.c:76: load_background_blackpalette();
	call	_load_background_blackpalette
	C$gamelogic.c$77$1_0$104	= .
	.globl	C$gamelogic.c$77$1_0$104
;gamelogic.c:77: play_presentation_music();
	call	_play_presentation_music
	C$gamelogic.c$78$1_0$104	= .
	.globl	C$gamelogic.c$78$1_0$104
;gamelogic.c:78: frame_cnt = 0;
	ld	hl, #0x0000
	ld	(_frame_cnt), hl
	C$gamelogic.c$79$1_0$104	= .
	.globl	C$gamelogic.c$79$1_0$104
;gamelogic.c:79: while (frame_cnt < 800) {
00112$:
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x20
	ld	a, 1 (iy)
	sbc	a, #0x03
	ret	NC
	C$gamelogic.c$80$2_0$105	= .
	.globl	C$gamelogic.c$80$2_0$105
;gamelogic.c:80: frame_cnt++;
	ld	hl, (_frame_cnt)
	inc	hl
	ld	(_frame_cnt), hl
	C$gamelogic.c$81$2_0$105	= .
	.globl	C$gamelogic.c$81$2_0$105
;gamelogic.c:81: if(frame_cnt == 25) {
	ld	a, 0 (iy)
	sub	a, #0x19
	or	a, 1 (iy)
	jr	NZ, 00102$
	C$gamelogic.c$82$3_0$106	= .
	.globl	C$gamelogic.c$82$3_0$106
;gamelogic.c:82: load_presentation_halfpalette();
	call	_load_presentation_halfpalette
00102$:
	C$gamelogic.c$84$2_0$105	= .
	.globl	C$gamelogic.c$84$2_0$105
;gamelogic.c:84: if(frame_cnt == 50) {
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x32
	or	a, 1 (iy)
	jr	NZ, 00104$
	C$gamelogic.c$85$3_0$107	= .
	.globl	C$gamelogic.c$85$3_0$107
;gamelogic.c:85: load_presentation_fullpalette();
	call	_load_presentation_fullpalette
00104$:
	C$gamelogic.c$87$2_0$105	= .
	.globl	C$gamelogic.c$87$2_0$105
;gamelogic.c:87: if(frame_cnt == 750) {
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0xee
	jr	NZ, 00106$
	ld	a, 1 (iy)
	sub	a, #0x02
	jr	NZ, 00106$
	C$gamelogic.c$88$3_0$108	= .
	.globl	C$gamelogic.c$88$3_0$108
;gamelogic.c:88: load_presentation_halfpalette();
	call	_load_presentation_halfpalette
00106$:
	C$gamelogic.c$90$2_0$105	= .
	.globl	C$gamelogic.c$90$2_0$105
;gamelogic.c:90: if(frame_cnt == 775) {
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0x07
	jr	NZ, 00108$
	ld	a, 1 (iy)
	sub	a, #0x03
	jr	NZ, 00108$
	C$gamelogic.c$91$3_0$109	= .
	.globl	C$gamelogic.c$91$3_0$109
;gamelogic.c:91: load_background_blackpalette();
	call	_load_background_blackpalette
00108$:
	C$gamelogic.c$93$2_0$105	= .
	.globl	C$gamelogic.c$93$2_0$105
;gamelogic.c:93: keys = SMS_getKeysStatus();
	call	_SMS_getKeysStatus
	C$gamelogic.c$94$2_0$105	= .
	.globl	C$gamelogic.c$94$2_0$105
;gamelogic.c:94: if(keys & PORT_A_KEY_1 && (frame_cnt < 740)) {
	bit	4, l
	jr	Z, 00110$
	ld	iy, #_frame_cnt
	ld	a, 0 (iy)
	sub	a, #0xe4
	ld	a, 1 (iy)
	sbc	a, #0x02
	jr	NC, 00110$
	C$gamelogic.c$95$3_0$110	= .
	.globl	C$gamelogic.c$95$3_0$110
;gamelogic.c:95: frame_cnt = 740;
	ld	hl, #0x02e4
	ld	(_frame_cnt), hl
00110$:
	C$gamelogic.c$97$2_0$105	= .
	.globl	C$gamelogic.c$97$2_0$105
;gamelogic.c:97: waitForFrame();
	call	_waitForFrame
	C$gamelogic.c$99$1_0$104	= .
	.globl	C$gamelogic.c$99$1_0$104
;gamelogic.c:99: }
	C$gamelogic.c$99$1_0$104	= .
	.globl	C$gamelogic.c$99$1_0$104
	XG$presentation_screen$0$0	= .
	.globl	XG$presentation_screen$0$0
	jp	00112$
	G$game_loop$0$0	= .
	.globl	G$game_loop$0$0
	C$gamelogic.c$101$1_0$111	= .
	.globl	C$gamelogic.c$101$1_0$111
;gamelogic.c:101: void game_loop() {
;	---------------------------------
; Function game_loop
; ---------------------------------
_game_loop::
	C$gamelogic.c$102$1_0$111	= .
	.globl	C$gamelogic.c$102$1_0$111
;gamelogic.c:102: SMS_setBackdropColor(1);
	ld	l, #0x01
	call	_SMS_setBackdropColor
	C$gamelogic.c$103$1_0$111	= .
	.globl	C$gamelogic.c$103$1_0$111
;gamelogic.c:103: load_level1_assets();
	call	_load_level1_assets
	C$gamelogic.c$104$1_0$111	= .
	.globl	C$gamelogic.c$104$1_0$111
;gamelogic.c:104: init_gamestatus();
	call	_init_gamestatus
	C$gamelogic.c$105$1_0$111	= .
	.globl	C$gamelogic.c$105$1_0$111
;gamelogic.c:105: init_level1_scroll();
	call	_init_level1_scroll
	C$gamelogic.c$106$1_0$111	= .
	.globl	C$gamelogic.c$106$1_0$111
;gamelogic.c:106: play_game_music();
	call	_play_game_music
	C$gamelogic.c$107$1_0$111	= .
	.globl	C$gamelogic.c$107$1_0$111
;gamelogic.c:107: add_player(1);
	ld	a, #0x01
	push	af
	inc	sp
	call	_add_player
	inc	sp
	C$gamelogic.c$109$1_0$111	= .
	.globl	C$gamelogic.c$109$1_0$111
;gamelogic.c:109: frame_cnt = 0;
	ld	hl, #0x0000
	ld	(_frame_cnt), hl
	C$gamelogic.c$110$1_0$111	= .
	.globl	C$gamelogic.c$110$1_0$111
;gamelogic.c:110: scroll_enabled = true;
	ld	hl, #_scroll_enabled
	ld	(hl), #0x01
	C$gamelogic.c$111$1_0$111	= .
	.globl	C$gamelogic.c$111$1_0$111
;gamelogic.c:111: while (1) {
00104$:
	C$gamelogic.c$112$2_0$112	= .
	.globl	C$gamelogic.c$112$2_0$112
;gamelogic.c:112: if(!pause) {
	ld	hl, #_pause
	bit	0, (hl)
	jr	NZ, 00102$
	C$gamelogic.c$113$3_0$113	= .
	.globl	C$gamelogic.c$113$3_0$113
;gamelogic.c:113: execute_game_logic();
	call	_execute_game_logic
00102$:
	C$gamelogic.c$115$2_0$112	= .
	.globl	C$gamelogic.c$115$2_0$112
;gamelogic.c:115: waitForFrame();
	call	_waitForFrame
	C$gamelogic.c$117$1_0$111	= .
	.globl	C$gamelogic.c$117$1_0$111
;gamelogic.c:117: }
	C$gamelogic.c$117$1_0$111	= .
	.globl	C$gamelogic.c$117$1_0$111
	XG$game_loop$0$0	= .
	.globl	XG$game_loop$0$0
	jr	00104$
	G$init_gamestatus$0$0	= .
	.globl	G$init_gamestatus$0$0
	C$gamelogic.c$119$1_0$114	= .
	.globl	C$gamelogic.c$119$1_0$114
;gamelogic.c:119: void init_gamestatus() {
;	---------------------------------
; Function init_gamestatus
; ---------------------------------
_init_gamestatus::
	C$gamelogic.c$120$1_0$114	= .
	.globl	C$gamelogic.c$120$1_0$114
;gamelogic.c:120: game_status = GAME_STATUS_PLAYING;
	ld	hl, #_game_status
	ld	(hl), #0x00
	C$gamelogic.c$121$1_0$114	= .
	.globl	C$gamelogic.c$121$1_0$114
;gamelogic.c:121: score = 0;
	ld	hl, #0x0000
	ld	(_score), hl
	C$gamelogic.c$122$1_0$114	= .
	.globl	C$gamelogic.c$122$1_0$114
;gamelogic.c:122: }
	C$gamelogic.c$122$1_0$114	= .
	.globl	C$gamelogic.c$122$1_0$114
	XG$init_gamestatus$0$0	= .
	.globl	XG$init_gamestatus$0$0
	ret
	G$execute_game_logic$0$0	= .
	.globl	G$execute_game_logic$0$0
	C$gamelogic.c$124$1_0$115	= .
	.globl	C$gamelogic.c$124$1_0$115
;gamelogic.c:124: void execute_game_logic() {
;	---------------------------------
; Function execute_game_logic
; ---------------------------------
_execute_game_logic::
	C$gamelogic.c$126$1_0$115	= .
	.globl	C$gamelogic.c$126$1_0$115
;gamelogic.c:126: switch (game_status) {
	ld	a,(#_game_status + 0)
	or	a, a
	ret	NZ
	C$gamelogic.c$129$2_0$116	= .
	.globl	C$gamelogic.c$129$2_0$116
;gamelogic.c:129: keys = SMS_getKeysStatus();
	call	_SMS_getKeysStatus
	C$gamelogic.c$130$2_0$116	= .
	.globl	C$gamelogic.c$130$2_0$116
;gamelogic.c:130: manage_input(keys);
	push	hl
	call	_manage_input
	pop	af
	C$gamelogic.c$133$2_0$116	= .
	.globl	C$gamelogic.c$133$2_0$116
;gamelogic.c:133: update_resources();
	call	_update_resources
	C$gamelogic.c$135$2_0$116	= .
	.globl	C$gamelogic.c$135$2_0$116
;gamelogic.c:135: if(player1.vx > 0 && scroll_enabled) {
	ld	bc, (#(_player1 + 0x0002) + 0)
	ld	a, b
	or	a, c
	jr	Z, 00113$
	ld	hl, #_scroll_enabled
	bit	0, (hl)
	jr	Z, 00113$
	C$gamelogic.c$136$3_0$117	= .
	.globl	C$gamelogic.c$136$3_0$117
;gamelogic.c:136: if(player1.entityreference->px > 200 && player1.xdirection == 1) {
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
	C$gamelogic.c$137$4_0$118	= .
	.globl	C$gamelogic.c$137$4_0$118
;gamelogic.c:137: update_scroll(UFIX2CHAR(player1.vx),0);
	ld	a, b
	ld	h, #0x00
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_update_scroll
	pop	af
	C$gamelogic.c$138$4_0$118	= .
	.globl	C$gamelogic.c$138$4_0$118
;gamelogic.c:138: if(get_scroll_position_x() > 1200){
	call	_get_scroll_position_x
	ld	a, #0xb0
	cp	a, l
	ld	a, #0x04
	sbc	a, h
	jr	NC, 00103$
	C$gamelogic.c$139$5_0$119	= .
	.globl	C$gamelogic.c$139$5_0$119
;gamelogic.c:139: scroll_enabled = false;
	ld	hl, #_scroll_enabled
	ld	(hl), #0x00
00103$:
	C$gamelogic.c$142$4_0$118	= .
	.globl	C$gamelogic.c$142$4_0$118
;gamelogic.c:142: update_player_positions(UFIX2CHAR(player1.vx),0); 
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
	C$gamelogic.c$143$3_0$117	= .
	.globl	C$gamelogic.c$143$3_0$117
;gamelogic.c:143: } else if(player1.entityreference->px < 56 && player1.xdirection == -1) {
	ld	a, e
	sub	a, #0x38
	jr	NC, 00105$
	ld	a, (#_player1 + 6)
	inc	a
	jr	NZ, 00105$
	C$gamelogic.c$144$4_0$120	= .
	.globl	C$gamelogic.c$144$4_0$120
;gamelogic.c:144: update_scroll(UFIX2CHAR(player1.vx)*-1,0);
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
	C$gamelogic.c$145$4_0$120	= .
	.globl	C$gamelogic.c$145$4_0$120
;gamelogic.c:145: update_player_positions(UFIX2CHAR(player1.vx)*-1,0); 
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
	C$gamelogic.c$147$4_0$121	= .
	.globl	C$gamelogic.c$147$4_0$121
;gamelogic.c:147: update_player_positions(0,0); 
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
	C$gamelogic.c$150$3_0$122	= .
	.globl	C$gamelogic.c$150$3_0$122
;gamelogic.c:150: update_player_positions(0,0);    
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_update_player_positions
	pop	af
00114$:
	C$gamelogic.c$152$2_0$116	= .
	.globl	C$gamelogic.c$152$2_0$116
;gamelogic.c:152: frame_cnt++;
	ld	hl, (_frame_cnt)
	inc	hl
	ld	(_frame_cnt), hl
	C$gamelogic.c$156$1_0$115	= .
	.globl	C$gamelogic.c$156$1_0$115
;gamelogic.c:156: }
	C$gamelogic.c$157$1_0$115	= .
	.globl	C$gamelogic.c$157$1_0$115
;gamelogic.c:157: }
	C$gamelogic.c$157$1_0$115	= .
	.globl	C$gamelogic.c$157$1_0$115
	XG$execute_game_logic$0$0	= .
	.globl	XG$execute_game_logic$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
