;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module game_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_VRAMmemsetW
	.globl _SMS_VRAMmemcpy
	.globl _SMS_setLineCounter
	.globl _SMS_setLineInterruptHandler
	.globl _SMS_setFrameInterruptHandler
	.globl _SMS_setBGScrollY
	.globl _SMS_setBGScrollX
	.globl _SMS_VDPturnOffFeature
	.globl _SMS_VDPturnOnFeature
	.globl _orig_stage_timer
	.globl _orig_hud_update
	.globl _orig_score_update
	.globl _orig_timer_update
	.globl _orig_player_update
	.globl _orig_input_update
	.globl _orig_scroll_advance
	.globl _orig_vblank_columns
	.globl _orig_spawn_pending
	.globl _orig_map_next
	.globl _orig_map_trigger
	.globl _orig_scroll_prepare
	.globl _orig_stage_sequencer
	.globl _orig_object_update
	.globl _orig_stage_start
	.globl _orig_screen_setup
	.globl _engine_content_manager_load_boot_tiles
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot0
	.globl _ROM_bank_to_be_mapped_on_slot1
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _screen_game_screen_load
	.globl _screen_game_screen_update
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
	Fgame_screen$game_frame_interrupt$0$0	= .
	.globl	Fgame_screen$game_frame_interrupt$0$0
	C$game_screen.c$19$0_0$137	= .
	.globl	C$game_screen.c$19$0_0$137
;screen/game_screen.c:19: static void game_frame_interrupt( void ) __naked
;	---------------------------------
; Function game_frame_interrupt
; ---------------------------------
_game_frame_interrupt:
	C$game_screen.c$40$1_0$137	= .
	.globl	C$game_screen.c$40$1_0$137
;screen/game_screen.c:40: __endasm;
	.db	0x08; exchange af with the alternate af
	push	af
	.db	0x08; exchange af with the alternate af
	exx
	push	bc
	push	de
	push	hl
	exx
	call	_game_frame_body
	exx
	pop	hl
	pop	de
	pop	bc
	exx
	.db	0x08; exchange af with the alternate af
	pop	af
	.db	0x08; exchange af with the alternate af
	ret
	C$game_screen.c$41$1_0$137	= .
	.globl	C$game_screen.c$41$1_0$137
;screen/game_screen.c:41: }
	Fgame_screen$game_frame_body$0$0	= .
	.globl	Fgame_screen$game_frame_body$0$0
	C$game_screen.c$44$1_0$139	= .
	.globl	C$game_screen.c$44$1_0$139
;screen/game_screen.c:44: static void game_frame_body( void )
;	---------------------------------
; Function game_frame_body
; ---------------------------------
_game_frame_body:
	C$game_screen.c$46$2_0$140	= .
	.globl	C$game_screen.c$46$2_0$140
;screen/game_screen.c:46: INLINE_SMS_setBGScrollX( ORIG_SCROLL_X_TOP );
	ld	a, (#0xc14f)
	out	(_SMS_VDPControlPort), a
	ld	a, #0x88
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$47$1_0$139	= .
	.globl	C$game_screen.c$47$1_0$139
;screen/game_screen.c:47: SMS_VDPControlPort = 0x7f;
	ld	a, #0x7f
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$48$1_0$139	= .
	.globl	C$game_screen.c$48$1_0$139
;screen/game_screen.c:48: SMS_VDPControlPort = 0x8a;
	ld	a, #0x8a
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$50$1_0$139	= .
	.globl	C$game_screen.c$50$1_0$139
;screen/game_screen.c:50: if( ORIG_FRAME_COUNTER < 0x0f )
	ld	a, (#0xc00c)
	sub	a, #0x0f
	jr	NC, 00105$
	C$game_screen.c$52$2_0$141	= .
	.globl	C$game_screen.c$52$2_0$141
;screen/game_screen.c:52: ++ORIG_FRAME_COUNTER;
	ld	a, (#0xc00c)
	inc	a
	ld	(#0xc00c),a
00105$:
	C$game_screen.c$54$1_0$139	= .
	.globl	C$game_screen.c$54$1_0$139
;screen/game_screen.c:54: if( ORIG_FRAME_READY )
	ld	a, (#0xc001)
	or	a, a
	C$game_screen.c$56$2_0$142	= .
	.globl	C$game_screen.c$56$2_0$142
;screen/game_screen.c:56: return;
	ret	NZ
	C$game_screen.c$59$1_0$139	= .
	.globl	C$game_screen.c$59$1_0$139
;screen/game_screen.c:59: if( ORIG_SAT_FLAGS & 0x80 )
	ld	a, (#0xc181)
	rlca
	jr	NC, 00109$
	C$game_screen.c$61$2_0$143	= .
	.globl	C$game_screen.c$61$2_0$143
;screen/game_screen.c:61: SMS_VRAMmemcpy( 0x3f00, ( const void * ) 0xc240, 0x40 );
	ld	hl, #0x0040
	push	hl
	ld	de, #0xc240
	ld	hl, #0x3f00
	call	_SMS_VRAMmemcpy
	C$game_screen.c$62$2_0$143	= .
	.globl	C$game_screen.c$62$2_0$143
;screen/game_screen.c:62: SMS_VRAMmemcpy( 0x3f80, ( const void * ) 0xc280, 0x80 );
	ld	hl, #0x0080
	push	hl
	ld	de, #0xc280
	ld	h, #0x3f
	call	_SMS_VRAMmemcpy
	C$game_screen.c$63$2_0$143	= .
	.globl	C$game_screen.c$63$2_0$143
;screen/game_screen.c:63: ORIG_SAT_FLAGS &= 0x7f;
	ld	a, (#0xc181)
	res	7, a
	ld	(#0xc181),a
00109$:
	C$game_screen.c$65$1_0$139	= .
	.globl	C$game_screen.c$65$1_0$139
;screen/game_screen.c:65: orig_vblank_columns();
	call	_orig_vblank_columns
	C$game_screen.c$66$1_0$139	= .
	.globl	C$game_screen.c$66$1_0$139
;screen/game_screen.c:66: orig_scroll_advance();
	call	_orig_scroll_advance
	C$game_screen.c$67$1_0$139	= .
	.globl	C$game_screen.c$67$1_0$139
;screen/game_screen.c:67: orig_input_update();
	call	_orig_input_update
	C$game_screen.c$68$1_0$139	= .
	.globl	C$game_screen.c$68$1_0$139
;screen/game_screen.c:68: orig_player_update();
	call	_orig_player_update
	C$game_screen.c$69$1_0$139	= .
	.globl	C$game_screen.c$69$1_0$139
;screen/game_screen.c:69: orig_timer_update();
	call	_orig_timer_update
	C$game_screen.c$70$1_0$139	= .
	.globl	C$game_screen.c$70$1_0$139
;screen/game_screen.c:70: orig_score_update();
	call	_orig_score_update
	C$game_screen.c$71$1_0$139	= .
	.globl	C$game_screen.c$71$1_0$139
;screen/game_screen.c:71: orig_hud_update();
	call	_orig_hud_update
	C$game_screen.c$72$1_0$139	= .
	.globl	C$game_screen.c$72$1_0$139
;screen/game_screen.c:72: orig_stage_timer();
	call	_orig_stage_timer
	C$game_screen.c$73$1_0$139	= .
	.globl	C$game_screen.c$73$1_0$139
;screen/game_screen.c:73: ORIG_FRAME_READY = 1;
	ld	hl, #0xc001
	ld	(hl), #0x01
	C$game_screen.c$74$1_0$139	= .
	.globl	C$game_screen.c$74$1_0$139
;screen/game_screen.c:74: }
	C$game_screen.c$74$1_0$139	= .
	.globl	C$game_screen.c$74$1_0$139
	XFgame_screen$game_frame_body$0$0	= .
	.globl	XFgame_screen$game_frame_body$0$0
	ret
	Fgame_screen$game_line_interrupt$0$0	= .
	.globl	Fgame_screen$game_line_interrupt$0$0
	C$game_screen.c$77$1_0$145	= .
	.globl	C$game_screen.c$77$1_0$145
;screen/game_screen.c:77: static void game_line_interrupt( void )
;	---------------------------------
; Function game_line_interrupt
; ---------------------------------
_game_line_interrupt:
	C$game_screen.c$79$1_0$145	= .
	.globl	C$game_screen.c$79$1_0$145
;screen/game_screen.c:79: if( ORIG_SCROLL_FLAGS & SCROLL_FLAG_BONUS )
	ld	a, (#0xc152)
	bit	5, a
	C$game_screen.c$81$2_0$146	= .
	.globl	C$game_screen.c$81$2_0$146
;screen/game_screen.c:81: return;
	C$game_screen.c$84$1_0$145	= .
	.globl	C$game_screen.c$84$1_0$145
;screen/game_screen.c:84: INLINE_SMS_setBGScrollX( ORIG_SCROLL_X_BOTTOM );
	ret	NZ
	ld	a, (#0xc145)
	out	(_SMS_VDPControlPort), a
	ld	a, #0x88
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$85$1_0$145	= .
	.globl	C$game_screen.c$85$1_0$145
;screen/game_screen.c:85: SMS_VDPControlPort = 0xff;
	ld	a, #0xff
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$86$1_0$145	= .
	.globl	C$game_screen.c$86$1_0$145
;screen/game_screen.c:86: SMS_VDPControlPort = 0x8a;
	ld	a, #0x8a
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$87$1_0$145	= .
	.globl	C$game_screen.c$87$1_0$145
;screen/game_screen.c:87: }
	C$game_screen.c$87$1_0$145	= .
	.globl	C$game_screen.c$87$1_0$145
	XFgame_screen$game_line_interrupt$0$0	= .
	.globl	XFgame_screen$game_line_interrupt$0$0
	ret
	G$screen_game_screen_load$0$0	= .
	.globl	G$screen_game_screen_load$0$0
	C$game_screen.c$90$1_0$149	= .
	.globl	C$game_screen.c$90$1_0$149
;screen/game_screen.c:90: void screen_game_screen_load( void )
;	---------------------------------
; Function screen_game_screen_load
; ---------------------------------
_screen_game_screen_load::
	C$game_screen.c$92$1_0$149	= .
	.globl	C$game_screen.c$92$1_0$149
;screen/game_screen.c:92: SMS_displayOff();
	ld	hl, #0x0140
	call	_SMS_VDPturnOffFeature
	C$game_screen.c$95$1_0$149	= .
	.globl	C$game_screen.c$95$1_0$149
;screen/game_screen.c:95: SMS_VRAMmemsetW( 0, 0, 0x4000 );
	ld	hl, #0x4000
	push	hl
	ld	de, #0x0000
	ld	h, l
	call	_SMS_VRAMmemsetW
	C$game_screen.c$96$1_0$149	= .
	.globl	C$game_screen.c$96$1_0$149
;screen/game_screen.c:96: SMS_VDPturnOnFeature( VDPFEATURE_LEFTCOLBLANK | VDPFEATURE_LOCKHSCROLL );
	ld	hl, #0x0060
	call	_SMS_VDPturnOnFeature
	C$game_screen.c$97$1_0$149	= .
	.globl	C$game_screen.c$97$1_0$149
;screen/game_screen.c:97: SMS_setBGScrollX( 0 );
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	call	_SMS_setBGScrollX
	C$game_screen.c$98$1_0$149	= .
	.globl	C$game_screen.c$98$1_0$149
;screen/game_screen.c:98: SMS_setBGScrollY( 0 );
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	call	_SMS_setBGScrollY
	C$game_screen.c$99$1_0$149	= .
	.globl	C$game_screen.c$99$1_0$149
;screen/game_screen.c:99: engine_content_manager_load_boot_tiles();
	call	_engine_content_manager_load_boot_tiles
	C$game_screen.c$102$1_0$149	= .
	.globl	C$game_screen.c$102$1_0$149
;screen/game_screen.c:102: SMS_setFrameInterruptHandler( 0 );
	ld	hl, #0x0000
	call	_SMS_setFrameInterruptHandler
	C$game_screen.c$103$1_0$149	= .
	.globl	C$game_screen.c$103$1_0$149
;screen/game_screen.c:103: SMS_setLineInterruptHandler( 0 );
	ld	hl, #0x0000
	call	_SMS_setLineInterruptHandler
	C$game_screen.c$105$1_0$149	= .
	.globl	C$game_screen.c$105$1_0$149
;screen/game_screen.c:105: memset( ( void * ) ORIGINAL_RAM_START, 0, ORIGINAL_RAM_SIZE );
	ld	hl, #0xc100
	ld	(hl), #0x00
	ld	e, l
	ld	d, h
	inc	de
	ld	bc, #0x051f
	ldir
	C$game_screen.c$106$1_0$149	= .
	.globl	C$game_screen.c$106$1_0$149
;screen/game_screen.c:106: memset( ( void * ) ORIGINAL_WORK_RAM_START, 0, ORIGINAL_WORK_RAM_SIZE );
	ld	hl, #0xd000
	ld	(hl), #0x00
	ld	e, l
	ld	d, h
	inc	de
	ld	bc, #0x0f01
	ldir
	C$game_screen.c$107$1_0$149	= .
	.globl	C$game_screen.c$107$1_0$149
;screen/game_screen.c:107: ORIG_FRAME_READY = 0;
	ld	hl, #0xc001
	ld	(hl), #0x00
	C$game_screen.c$108$1_0$149	= .
	.globl	C$game_screen.c$108$1_0$149
;screen/game_screen.c:108: ORIG_FRAME_COUNTER = 0;
	ld	l, #0x0c
	ld	(hl), #0x00
	C$game_screen.c$109$1_0$149	= .
	.globl	C$game_screen.c$109$1_0$149
;screen/game_screen.c:109: ORIG_PAD_DETECT = 0xff;
	ld	l, #0x02
	ld	(hl), #0xff
	C$game_screen.c$110$1_0$149	= .
	.globl	C$game_screen.c$110$1_0$149
;screen/game_screen.c:110: ORIG_MODE_FLAGS = 0x50;
	ld	l, #0x00
	ld	(hl), #0x50
	C$game_screen.c$117$1_0$149	= .
	.globl	C$game_screen.c$117$1_0$149
;screen/game_screen.c:117: __endasm;
	di
	C$game_screen.c$119$1_0$149	= .
	.globl	C$game_screen.c$119$1_0$149
;screen/game_screen.c:119: orig_screen_setup();
	call	_orig_screen_setup
	C$game_screen.c$120$1_0$149	= .
	.globl	C$game_screen.c$120$1_0$149
;screen/game_screen.c:120: orig_stage_start();
	call	_orig_stage_start
	C$game_screen.c$121$1_0$149	= .
	.globl	C$game_screen.c$121$1_0$149
;screen/game_screen.c:121: ORIG_STAGE_STATE = 1;
	ld	hl, #0xc16e
	ld	(hl), #0x01
	C$game_screen.c$123$1_0$149	= .
	.globl	C$game_screen.c$123$1_0$149
;screen/game_screen.c:123: SMS_VDPControlPort = 0xfb;
	ld	a, #0xfb
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$124$1_0$149	= .
	.globl	C$game_screen.c$124$1_0$149
;screen/game_screen.c:124: SMS_VDPControlPort = 0x86;
	ld	a, #0x86
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$129$1_0$149	= .
	.globl	C$game_screen.c$129$1_0$149
;screen/game_screen.c:129: __endasm;
	ei
	C$game_screen.c$132$1_0$149	= .
	.globl	C$game_screen.c$132$1_0$149
;screen/game_screen.c:132: SMS_setLineCounter( 0x7f );
	ld	l, #0x7f
;	spillPairReg hl
;	spillPairReg hl
	call	_SMS_setLineCounter
	C$game_screen.c$133$1_0$149	= .
	.globl	C$game_screen.c$133$1_0$149
;screen/game_screen.c:133: SMS_setFrameInterruptHandler( game_frame_interrupt );
	ld	hl, #_game_frame_interrupt
	call	_SMS_setFrameInterruptHandler
	C$game_screen.c$135$1_0$149	= .
	.globl	C$game_screen.c$135$1_0$149
;screen/game_screen.c:135: SMS_setLineInterruptHandler( game_line_interrupt );
	ld	hl, #_game_line_interrupt
	call	_SMS_setLineInterruptHandler
	C$game_screen.c$136$1_0$149	= .
	.globl	C$game_screen.c$136$1_0$149
;screen/game_screen.c:136: SMS_enableLineInterrupt();
	ld	hl, #0x0010
	call	_SMS_VDPturnOnFeature
	C$game_screen.c$137$1_0$149	= .
	.globl	C$game_screen.c$137$1_0$149
;screen/game_screen.c:137: SMS_displayOn();
	ld	hl, #0x0140
	C$game_screen.c$138$1_0$149	= .
	.globl	C$game_screen.c$138$1_0$149
;screen/game_screen.c:138: }
	C$game_screen.c$138$1_0$149	= .
	.globl	C$game_screen.c$138$1_0$149
	XG$screen_game_screen_load$0$0	= .
	.globl	XG$screen_game_screen_load$0$0
	jp	_SMS_VDPturnOnFeature
	G$screen_game_screen_update$0$0	= .
	.globl	G$screen_game_screen_update$0$0
	C$game_screen.c$140$1_0$151	= .
	.globl	C$game_screen.c$140$1_0$151
;screen/game_screen.c:140: void screen_game_screen_update( void )
;	---------------------------------
; Function screen_game_screen_update
; ---------------------------------
_screen_game_screen_update::
	C$game_screen.c$142$1_0$151	= .
	.globl	C$game_screen.c$142$1_0$151
;screen/game_screen.c:142: if( !ORIG_FRAME_READY )
	ld	a, (#0xc001)
	or	a, a
	C$game_screen.c$144$2_0$152	= .
	.globl	C$game_screen.c$144$2_0$152
;screen/game_screen.c:144: return;
	ret	Z
	C$game_screen.c$147$1_0$151	= .
	.globl	C$game_screen.c$147$1_0$151
;screen/game_screen.c:147: ORIG_FRAME_READY = 0;
	ld	hl, #0xc001
	ld	(hl), #0x00
	C$game_screen.c$152$1_0$151	= .
	.globl	C$game_screen.c$152$1_0$151
;screen/game_screen.c:152: __endasm;
	di
	C$game_screen.c$154$1_0$151	= .
	.globl	C$game_screen.c$154$1_0$151
;screen/game_screen.c:154: orig_object_update();
	call	_orig_object_update
	C$game_screen.c$155$1_0$151	= .
	.globl	C$game_screen.c$155$1_0$151
;screen/game_screen.c:155: orig_stage_sequencer();
	call	_orig_stage_sequencer
	C$game_screen.c$156$1_0$151	= .
	.globl	C$game_screen.c$156$1_0$151
;screen/game_screen.c:156: orig_scroll_prepare();
	call	_orig_scroll_prepare
	C$game_screen.c$157$1_0$151	= .
	.globl	C$game_screen.c$157$1_0$151
;screen/game_screen.c:157: orig_map_trigger();
	call	_orig_map_trigger
	C$game_screen.c$158$1_0$151	= .
	.globl	C$game_screen.c$158$1_0$151
;screen/game_screen.c:158: orig_map_next();
	call	_orig_map_next
	C$game_screen.c$159$1_0$151	= .
	.globl	C$game_screen.c$159$1_0$151
;screen/game_screen.c:159: orig_spawn_pending();
	call	_orig_spawn_pending
	C$game_screen.c$164$1_0$151	= .
	.globl	C$game_screen.c$164$1_0$151
;screen/game_screen.c:164: __endasm;
	ei
	C$game_screen.c$166$1_0$151	= .
	.globl	C$game_screen.c$166$1_0$151
;screen/game_screen.c:166: }
	C$game_screen.c$166$1_0$151	= .
	.globl	C$game_screen.c$166$1_0$151
	XG$screen_game_screen_update$0$0	= .
	.globl	XG$screen_game_screen_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
