;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module music_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_text_manager_music
	.globl _engine_music_manager_play
	.globl _engine_input_manager_hold_fire1
	.globl _engine_input_manager_hold_right
	.globl _engine_input_manager_hold_left
	.globl _devkit_PSGSFXStop
	.globl _devkit_PSGGetStatus
	.globl _devkit_PSGResume
	.globl _devkit_PSGStop
	.globl _screen_music_screen_load
	.globl _screen_music_screen_update
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
Fmusic_screen$prev_play_type$0_0$0==.
_prev_play_type:
	.ds 1
Fmusic_screen$curr_play_type$0_0$0==.
_curr_play_type:
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
	G$screen_music_screen_load$0$0	= .
	.globl	G$screen_music_screen_load$0$0
	C$music_screen.c$11$0_0$18	= .
	.globl	C$music_screen.c$11$0_0$18
;music_screen.c:11: void screen_music_screen_load()
;	---------------------------------
; Function screen_music_screen_load
; ---------------------------------
_screen_music_screen_load::
	C$music_screen.c$13$1_0$18	= .
	.globl	C$music_screen.c$13$1_0$18
;music_screen.c:13: devkit_PSGStop();
	call	_devkit_PSGStop
	C$music_screen.c$14$1_0$18	= .
	.globl	C$music_screen.c$14$1_0$18
;music_screen.c:14: devkit_PSGSFXStop();
	call	_devkit_PSGSFXStop
	C$music_screen.c$16$1_0$18	= .
	.globl	C$music_screen.c$16$1_0$18
;music_screen.c:16: engine_text_manager_music();
	call	_engine_text_manager_music
	C$music_screen.c$17$1_0$18	= .
	.globl	C$music_screen.c$17$1_0$18
;music_screen.c:17: prev_play_type = play_type_stop;
	C$music_screen.c$18$1_0$18	= .
	.globl	C$music_screen.c$18$1_0$18
;music_screen.c:18: curr_play_type = play_type_stop;
	ld	a,#0x04
	ld	(#_prev_play_type),a
	ld	(#_curr_play_type), a
	C$music_screen.c$19$1_0$18	= .
	.globl	C$music_screen.c$19$1_0$18
;music_screen.c:19: }
	C$music_screen.c$19$1_0$18	= .
	.globl	C$music_screen.c$19$1_0$18
	XG$screen_music_screen_load$0$0	= .
	.globl	XG$screen_music_screen_load$0$0
	ret
	G$screen_music_screen_update$0$0	= .
	.globl	G$screen_music_screen_update$0$0
	C$music_screen.c$21$1_0$20	= .
	.globl	C$music_screen.c$21$1_0$20
;music_screen.c:21: void screen_music_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_music_screen_update
; ---------------------------------
_screen_music_screen_update::
	C$music_screen.c$26$1_0$20	= .
	.globl	C$music_screen.c$26$1_0$20
;music_screen.c:26: input = engine_input_manager_hold_fire1();
	call	_engine_input_manager_hold_fire1
	C$music_screen.c$30$1_0$20	= .
	.globl	C$music_screen.c$30$1_0$20
;music_screen.c:30: *screen_type = screen_type_sound;
	pop	de
	pop	bc
	push	bc
	push	de
	C$music_screen.c$27$1_0$20	= .
	.globl	C$music_screen.c$27$1_0$20
;music_screen.c:27: if( input )
	ld	a, l
	or	a, a
	jr	Z, 00102$
	C$music_screen.c$29$2_0$21	= .
	.globl	C$music_screen.c$29$2_0$21
;music_screen.c:29: devkit_PSGStop();
	push	bc
	call	_devkit_PSGStop
	pop	bc
	C$music_screen.c$30$2_0$21	= .
	.globl	C$music_screen.c$30$2_0$21
;music_screen.c:30: *screen_type = screen_type_sound;
	ld	a, #0x03
	ld	(bc), a
	C$music_screen.c$31$2_0$21	= .
	.globl	C$music_screen.c$31$2_0$21
;music_screen.c:31: return;
	ret
00102$:
	C$music_screen.c$34$1_0$20	= .
	.globl	C$music_screen.c$34$1_0$20
;music_screen.c:34: input = engine_input_manager_hold_left();
	push	bc
	call	_engine_input_manager_hold_left
	ld	a, l
	pop	bc
	C$music_screen.c$35$1_0$20	= .
	.globl	C$music_screen.c$35$1_0$20
;music_screen.c:35: if( input )
	or	a, a
	jr	Z, 00108$
	C$music_screen.c$37$2_0$22	= .
	.globl	C$music_screen.c$37$2_0$22
;music_screen.c:37: if( play_type_stop == prev_play_type && play_type_stop == curr_play_type )
	ld	a,(#_prev_play_type + 0)
	sub	a, #0x04
	jr	NZ, 00104$
	ld	a,(#_curr_play_type + 0)
	sub	a, #0x04
	jr	NZ, 00104$
	C$music_screen.c$39$3_0$23	= .
	.globl	C$music_screen.c$39$3_0$23
;music_screen.c:39: engine_music_manager_play();
	push	bc
	call	_engine_music_manager_play
	pop	bc
	C$music_screen.c$40$3_0$23	= .
	.globl	C$music_screen.c$40$3_0$23
;music_screen.c:40: curr_play_type = play_type_start;
	ld	hl, #_curr_play_type
	ld	(hl), #0x01
	jr	00108$
00104$:
	C$music_screen.c$44$3_0$24	= .
	.globl	C$music_screen.c$44$3_0$24
;music_screen.c:44: devkit_PSGResume();
	push	bc
	call	_devkit_PSGResume
	pop	bc
	C$music_screen.c$45$3_0$24	= .
	.globl	C$music_screen.c$45$3_0$24
;music_screen.c:45: curr_play_type = play_type_resume;
	ld	hl, #_curr_play_type
	ld	(hl), #0x03
00108$:
	C$music_screen.c$49$1_0$20	= .
	.globl	C$music_screen.c$49$1_0$20
;music_screen.c:49: input = engine_input_manager_hold_right();
	push	bc
	call	_engine_input_manager_hold_right
	ld	a, l
	pop	bc
	C$music_screen.c$50$1_0$20	= .
	.globl	C$music_screen.c$50$1_0$20
;music_screen.c:50: if( input )
	or	a, a
	jr	Z, 00112$
	C$music_screen.c$52$2_0$25	= .
	.globl	C$music_screen.c$52$2_0$25
;music_screen.c:52: if( play_type_pause != curr_play_type )
	ld	iy, #_curr_play_type
	ld	a, 0 (iy)
	sub	a, #0x02
	jr	Z, 00112$
	C$music_screen.c$54$3_0$26	= .
	.globl	C$music_screen.c$54$3_0$26
;music_screen.c:54: prev_play_type = curr_play_type;
	ld	a, 0 (iy)
	ld	(#_prev_play_type),a
	C$music_screen.c$55$3_0$26	= .
	.globl	C$music_screen.c$55$3_0$26
;music_screen.c:55: devkit_PSGStop();
	push	bc
	call	_devkit_PSGStop
	pop	bc
	C$music_screen.c$56$3_0$26	= .
	.globl	C$music_screen.c$56$3_0$26
;music_screen.c:56: curr_play_type = play_type_pause;
	ld	hl, #_curr_play_type
	ld	(hl), #0x02
00112$:
	C$music_screen.c$61$1_0$20	= .
	.globl	C$music_screen.c$61$1_0$20
;music_screen.c:61: sound = devkit_PSGGetStatus();
	push	bc
	call	_devkit_PSGGetStatus
	ld	a, l
	pop	bc
	C$music_screen.c$62$1_0$20	= .
	.globl	C$music_screen.c$62$1_0$20
;music_screen.c:62: if( !sound )
	or	a, a
	jr	NZ, 00114$
	C$music_screen.c$64$2_0$27	= .
	.globl	C$music_screen.c$64$2_0$27
;music_screen.c:64: curr_play_type = play_type_stop;
	ld	a, #0x04
	ld	(#_curr_play_type), a
00114$:
	C$music_screen.c$67$1_0$20	= .
	.globl	C$music_screen.c$67$1_0$20
;music_screen.c:67: *screen_type = screen_type_music;
	ld	a, #0x02
	ld	(bc), a
	C$music_screen.c$68$1_0$20	= .
	.globl	C$music_screen.c$68$1_0$20
;music_screen.c:68: }
	C$music_screen.c$68$1_0$20	= .
	.globl	C$music_screen.c$68$1_0$20
	XG$screen_music_screen_update$0$0	= .
	.globl	XG$screen_music_screen_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
