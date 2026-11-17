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
	.globl _SMS_setLineCounter
	.globl _SMS_setLineInterruptHandler
	.globl _SMS_setFrameInterruptHandler
	.globl _SMS_copySpritestoSAT
	.globl _SMS_initSprites
	.globl _SMS_setBGScrollY
	.globl _SMS_setBGScrollX
	.globl _SMS_VDPturnOffFeature
	.globl _SMS_VDPturnOnFeature
	.globl _engine_scroll_frame
	.globl _engine_scroll_prepare
	.globl _engine_content_manager_load_stage
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
	C$game_screen.c$9$0_0$139	= .
	.globl	C$game_screen.c$9$0_0$139
;game_screen.c:9: static void game_frame_interrupt( void )
;	---------------------------------
; Function game_frame_interrupt
; ---------------------------------
_game_frame_interrupt:
	C$game_screen.c$11$2_0$140	= .
	.globl	C$game_screen.c$11$2_0$140
;game_screen.c:11: INLINE_SMS_setBGScrollX( ORIG_SCROLL_X_TOP );
	ld	hl, #0xc14f
	ld	a, (hl)
	out	(_SMS_VDPControlPort), a
	ld	a, #0x88
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$12$1_0$139	= .
	.globl	C$game_screen.c$12$1_0$139
;game_screen.c:12: SMS_VDPControlPort = 0x7f;
	ld	a, #0x7f
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$13$1_0$139	= .
	.globl	C$game_screen.c$13$1_0$139
;game_screen.c:13: SMS_VDPControlPort = 0x8a;
	ld	a, #0x8a
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$14$1_0$139	= .
	.globl	C$game_screen.c$14$1_0$139
;game_screen.c:14: engine_scroll_frame();
	C$game_screen.c$15$1_0$139	= .
	.globl	C$game_screen.c$15$1_0$139
;game_screen.c:15: }
	C$game_screen.c$15$1_0$139	= .
	.globl	C$game_screen.c$15$1_0$139
	XFgame_screen$game_frame_interrupt$0$0	= .
	.globl	XFgame_screen$game_frame_interrupt$0$0
	jp	_engine_scroll_frame
	Fgame_screen$game_line_interrupt$0$0	= .
	.globl	Fgame_screen$game_line_interrupt$0$0
	C$game_screen.c$18$1_0$142	= .
	.globl	C$game_screen.c$18$1_0$142
;game_screen.c:18: static void game_line_interrupt( void )
;	---------------------------------
; Function game_line_interrupt
; ---------------------------------
_game_line_interrupt:
	C$game_screen.c$20$1_0$142	= .
	.globl	C$game_screen.c$20$1_0$142
;game_screen.c:20: if( ORIG_SCROLL_FLAGS & SCROLL_FLAG_BONUS )
	ld	a, (#0xc152)
	bit	5, a
	C$game_screen.c$22$2_0$143	= .
	.globl	C$game_screen.c$22$2_0$143
;game_screen.c:22: return;
	C$game_screen.c$25$1_0$142	= .
	.globl	C$game_screen.c$25$1_0$142
;game_screen.c:25: INLINE_SMS_setBGScrollX( ORIG_SCROLL_X_BOTTOM );
	ret	NZ
	ld	a, (#0xc145)
	out	(_SMS_VDPControlPort), a
	ld	a, #0x88
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$26$1_0$142	= .
	.globl	C$game_screen.c$26$1_0$142
;game_screen.c:26: SMS_VDPControlPort = 0xff;
	ld	a, #0xff
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$27$1_0$142	= .
	.globl	C$game_screen.c$27$1_0$142
;game_screen.c:27: SMS_VDPControlPort = 0x8a;
	ld	a, #0x8a
	out	(_SMS_VDPControlPort), a
	C$game_screen.c$28$1_0$142	= .
	.globl	C$game_screen.c$28$1_0$142
;game_screen.c:28: }
	C$game_screen.c$28$1_0$142	= .
	.globl	C$game_screen.c$28$1_0$142
	XFgame_screen$game_line_interrupt$0$0	= .
	.globl	XFgame_screen$game_line_interrupt$0$0
	ret
	G$screen_game_screen_load$0$0	= .
	.globl	G$screen_game_screen_load$0$0
	C$game_screen.c$31$1_0$146	= .
	.globl	C$game_screen.c$31$1_0$146
;game_screen.c:31: void screen_game_screen_load( void )
;	---------------------------------
; Function screen_game_screen_load
; ---------------------------------
_screen_game_screen_load::
	C$game_screen.c$33$1_0$146	= .
	.globl	C$game_screen.c$33$1_0$146
;game_screen.c:33: SMS_displayOff();
	ld	hl, #0x0140
	call	_SMS_VDPturnOffFeature
	C$game_screen.c$36$1_0$146	= .
	.globl	C$game_screen.c$36$1_0$146
;game_screen.c:36: SMS_VRAMmemsetW( 0, 0, 0x4000 );
	ld	hl, #0x4000
	push	hl
	ld	de, #0x0000
	ld	h, l
	call	_SMS_VRAMmemsetW
	C$game_screen.c$37$1_0$146	= .
	.globl	C$game_screen.c$37$1_0$146
;game_screen.c:37: SMS_VDPturnOnFeature( VDPFEATURE_LEFTCOLBLANK | VDPFEATURE_LOCKHSCROLL );
	ld	hl, #0x0060
	call	_SMS_VDPturnOnFeature
	C$game_screen.c$38$1_0$146	= .
	.globl	C$game_screen.c$38$1_0$146
;game_screen.c:38: SMS_setBGScrollX( 0 );
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	call	_SMS_setBGScrollX
	C$game_screen.c$39$1_0$146	= .
	.globl	C$game_screen.c$39$1_0$146
;game_screen.c:39: SMS_setBGScrollY( 0 );
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	call	_SMS_setBGScrollY
	C$game_screen.c$40$1_0$146	= .
	.globl	C$game_screen.c$40$1_0$146
;game_screen.c:40: engine_content_manager_load_boot_tiles();
	call	_engine_content_manager_load_boot_tiles
	C$game_screen.c$43$1_0$146	= .
	.globl	C$game_screen.c$43$1_0$146
;game_screen.c:43: SMS_setFrameInterruptHandler( 0 );
	ld	hl, #0x0000
	call	_SMS_setFrameInterruptHandler
	C$game_screen.c$44$1_0$146	= .
	.globl	C$game_screen.c$44$1_0$146
;game_screen.c:44: SMS_setLineInterruptHandler( 0 );
	ld	hl, #0x0000
	call	_SMS_setLineInterruptHandler
	C$game_screen.c$45$1_0$146	= .
	.globl	C$game_screen.c$45$1_0$146
;game_screen.c:45: memset( ( void * ) ORIGINAL_RAM_START, 0, ORIGINAL_RAM_SIZE );
	ld	hl, #0xc100
	ld	(hl), #0x00
	ld	e, l
	ld	d, h
	inc	de
	ld	bc, #0x051f
	ldir
	C$game_screen.c$47$1_0$146	= .
	.globl	C$game_screen.c$47$1_0$146
;game_screen.c:47: engine_content_manager_load_stage();
	call	_engine_content_manager_load_stage
	C$game_screen.c$48$1_0$146	= .
	.globl	C$game_screen.c$48$1_0$146
;game_screen.c:48: SMS_VRAMmemsetW( 0x3800, 0x1100, 0x0700 );
	ld	hl, #0x0700
	push	hl
	ld	de, #0x1100
	ld	h, #0x38
	call	_SMS_VRAMmemsetW
	C$game_screen.c$49$1_0$146	= .
	.globl	C$game_screen.c$49$1_0$146
;game_screen.c:49: SMS_initSprites();
	call	_SMS_initSprites
	C$game_screen.c$50$1_0$146	= .
	.globl	C$game_screen.c$50$1_0$146
;game_screen.c:50: SMS_copySpritestoSAT();
	call	_SMS_copySpritestoSAT
	C$game_screen.c$52$1_0$146	= .
	.globl	C$game_screen.c$52$1_0$146
;game_screen.c:52: ORIG_SCROLL_ROW_PTR = ( unsigned int ) engine_scroll_sequence;
	ld	hl, #_engine_scroll_sequence
	ld	(0xc153), hl
	C$game_screen.c$53$1_0$146	= .
	.globl	C$game_screen.c$53$1_0$146
;game_screen.c:53: ORIG_ROW_INDEX = 0xff;
	ld	hl, #0xc15a
	ld	(hl), #0xff
	C$game_screen.c$54$1_0$146	= .
	.globl	C$game_screen.c$54$1_0$146
;game_screen.c:54: ORIG_ROW_INDEX_2 = 0xff;
	ld	l, #0x5c
	ld	(hl), #0xff
	C$game_screen.c$55$1_0$146	= .
	.globl	C$game_screen.c$55$1_0$146
;game_screen.c:55: ORIG_STAGE_STATE = 1;
	ld	l, #0x6e
	ld	(hl), #0x01
	C$game_screen.c$56$1_0$146	= .
	.globl	C$game_screen.c$56$1_0$146
;game_screen.c:56: engine_scroll_prepare();
	call	_engine_scroll_prepare
	C$game_screen.c$57$1_0$146	= .
	.globl	C$game_screen.c$57$1_0$146
;game_screen.c:57: ORIG_SCROLL_FLAGS |= SCROLL_FLAG_ACTIVE;
	ld	a, (#0xc152)
	set	3, a
	ld	(#0xc152),a
	C$game_screen.c$59$1_0$146	= .
	.globl	C$game_screen.c$59$1_0$146
;game_screen.c:59: SMS_setLineCounter( 0x7f );
	ld	l, #0x7f
;	spillPairReg hl
;	spillPairReg hl
	call	_SMS_setLineCounter
	C$game_screen.c$60$1_0$146	= .
	.globl	C$game_screen.c$60$1_0$146
;game_screen.c:60: SMS_setFrameInterruptHandler( game_frame_interrupt );
	ld	hl, #_game_frame_interrupt
	call	_SMS_setFrameInterruptHandler
	C$game_screen.c$61$1_0$146	= .
	.globl	C$game_screen.c$61$1_0$146
;game_screen.c:61: SMS_setLineInterruptHandler( game_line_interrupt );
	ld	hl, #_game_line_interrupt
	call	_SMS_setLineInterruptHandler
	C$game_screen.c$62$1_0$146	= .
	.globl	C$game_screen.c$62$1_0$146
;game_screen.c:62: SMS_enableLineInterrupt();
	ld	hl, #0x0010
	call	_SMS_VDPturnOnFeature
	C$game_screen.c$63$1_0$146	= .
	.globl	C$game_screen.c$63$1_0$146
;game_screen.c:63: SMS_displayOn();
	ld	hl, #0x0140
	C$game_screen.c$64$1_0$146	= .
	.globl	C$game_screen.c$64$1_0$146
;game_screen.c:64: }
	C$game_screen.c$64$1_0$146	= .
	.globl	C$game_screen.c$64$1_0$146
	XG$screen_game_screen_load$0$0	= .
	.globl	XG$screen_game_screen_load$0$0
	jp	_SMS_VDPturnOnFeature
	G$screen_game_screen_update$0$0	= .
	.globl	G$screen_game_screen_update$0$0
	C$game_screen.c$66$1_0$148	= .
	.globl	C$game_screen.c$66$1_0$148
;game_screen.c:66: void screen_game_screen_update( void )
;	---------------------------------
; Function screen_game_screen_update
; ---------------------------------
_screen_game_screen_update::
	C$game_screen.c$68$1_0$148	= .
	.globl	C$game_screen.c$68$1_0$148
;game_screen.c:68: engine_scroll_prepare();
	C$game_screen.c$69$1_0$148	= .
	.globl	C$game_screen.c$69$1_0$148
;game_screen.c:69: }
	C$game_screen.c$69$1_0$148	= .
	.globl	C$game_screen.c$69$1_0$148
	XG$screen_game_screen_update$0$0	= .
	.globl	XG$screen_game_screen_update$0$0
	jp	_engine_scroll_prepare
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
