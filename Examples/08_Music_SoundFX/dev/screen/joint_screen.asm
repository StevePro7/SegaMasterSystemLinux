;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module joint_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_text_manager_title
	.globl _engine_sound_manager_play
	.globl _engine_music_manager_play
	.globl _engine_input_manager_hold_fire2
	.globl _engine_input_manager_hold_right
	.globl _engine_input_manager_hold_left
	.globl _engine_input_manager_hold_down
	.globl _engine_input_manager_hold_up
	.globl _devkit_PSGGetStatus
	.globl _devkit_PSGResume
	.globl _devkit_PSGStop
	.globl _screen_joint_screen_load
	.globl _screen_joint_screen_update
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
Fjoint_screen$prev_play_type$0_0$0==.
_prev_play_type:
	.ds 1
Fjoint_screen$curr_play_type$0_0$0==.
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
	G$screen_joint_screen_load$0$0	= .
	.globl	G$screen_joint_screen_load$0$0
	C$joint_screen.c$11$0_0$18	= .
	.globl	C$joint_screen.c$11$0_0$18
;joint_screen.c:11: void screen_joint_screen_load()
;	---------------------------------
; Function screen_joint_screen_load
; ---------------------------------
_screen_joint_screen_load::
	C$joint_screen.c$13$1_0$18	= .
	.globl	C$joint_screen.c$13$1_0$18
;joint_screen.c:13: engine_text_manager_title();
	call	_engine_text_manager_title
	C$joint_screen.c$14$1_0$18	= .
	.globl	C$joint_screen.c$14$1_0$18
;joint_screen.c:14: prev_play_type = play_type_stop;
	C$joint_screen.c$15$1_0$18	= .
	.globl	C$joint_screen.c$15$1_0$18
;joint_screen.c:15: curr_play_type = play_type_stop;
	ld	a,#0x04
	ld	(#_prev_play_type),a
	ld	(#_curr_play_type), a
	C$joint_screen.c$16$1_0$18	= .
	.globl	C$joint_screen.c$16$1_0$18
;joint_screen.c:16: }
	C$joint_screen.c$16$1_0$18	= .
	.globl	C$joint_screen.c$16$1_0$18
	XG$screen_joint_screen_load$0$0	= .
	.globl	XG$screen_joint_screen_load$0$0
	ret
	G$screen_joint_screen_update$0$0	= .
	.globl	G$screen_joint_screen_update$0$0
	C$joint_screen.c$18$1_0$20	= .
	.globl	C$joint_screen.c$18$1_0$20
;joint_screen.c:18: void screen_joint_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_joint_screen_update
; ---------------------------------
_screen_joint_screen_update::
	C$joint_screen.c$23$1_0$20	= .
	.globl	C$joint_screen.c$23$1_0$20
;joint_screen.c:23: input = engine_input_manager_hold_fire2();
	call	_engine_input_manager_hold_fire2
	C$joint_screen.c$26$1_0$20	= .
	.globl	C$joint_screen.c$26$1_0$20
;joint_screen.c:26: *screen_type = screen_type_sound;
	pop	de
	pop	bc
	push	bc
	push	de
	C$joint_screen.c$24$1_0$20	= .
	.globl	C$joint_screen.c$24$1_0$20
;joint_screen.c:24: if( input )
	ld	a, l
	or	a, a
	jr	Z, 00102$
	C$joint_screen.c$26$2_0$21	= .
	.globl	C$joint_screen.c$26$2_0$21
;joint_screen.c:26: *screen_type = screen_type_sound;
	ld	a, #0x03
	ld	(bc), a
	C$joint_screen.c$27$2_0$21	= .
	.globl	C$joint_screen.c$27$2_0$21
;joint_screen.c:27: return;
	ret
00102$:
	C$joint_screen.c$30$1_0$20	= .
	.globl	C$joint_screen.c$30$1_0$20
;joint_screen.c:30: input = engine_input_manager_hold_left();
	push	bc
	call	_engine_input_manager_hold_left
	ld	a, l
	pop	bc
	C$joint_screen.c$31$1_0$20	= .
	.globl	C$joint_screen.c$31$1_0$20
;joint_screen.c:31: if( input )
	or	a, a
	jr	Z, 00108$
	C$joint_screen.c$33$2_0$22	= .
	.globl	C$joint_screen.c$33$2_0$22
;joint_screen.c:33: if( play_type_stop == prev_play_type && play_type_stop == curr_play_type )
	ld	a,(#_prev_play_type + 0)
	sub	a, #0x04
	jr	NZ, 00104$
	ld	a,(#_curr_play_type + 0)
	sub	a, #0x04
	jr	NZ, 00104$
	C$joint_screen.c$35$3_0$23	= .
	.globl	C$joint_screen.c$35$3_0$23
;joint_screen.c:35: engine_music_manager_play();
	push	bc
	call	_engine_music_manager_play
	pop	bc
	C$joint_screen.c$36$3_0$23	= .
	.globl	C$joint_screen.c$36$3_0$23
;joint_screen.c:36: curr_play_type = play_type_start;
	ld	hl, #_curr_play_type
	ld	(hl), #0x01
	jr	00108$
00104$:
	C$joint_screen.c$40$3_0$24	= .
	.globl	C$joint_screen.c$40$3_0$24
;joint_screen.c:40: devkit_PSGResume();
	push	bc
	call	_devkit_PSGResume
	pop	bc
	C$joint_screen.c$41$3_0$24	= .
	.globl	C$joint_screen.c$41$3_0$24
;joint_screen.c:41: curr_play_type = play_type_resume;
	ld	hl, #_curr_play_type
	ld	(hl), #0x03
00108$:
	C$joint_screen.c$45$1_0$20	= .
	.globl	C$joint_screen.c$45$1_0$20
;joint_screen.c:45: input = engine_input_manager_hold_right();
	push	bc
	call	_engine_input_manager_hold_right
	ld	a, l
	pop	bc
	C$joint_screen.c$46$1_0$20	= .
	.globl	C$joint_screen.c$46$1_0$20
;joint_screen.c:46: if( input )
	or	a, a
	jr	Z, 00110$
	C$joint_screen.c$48$2_0$25	= .
	.globl	C$joint_screen.c$48$2_0$25
;joint_screen.c:48: prev_play_type = curr_play_type;
	ld	a,(#_curr_play_type + 0)
	ld	(#_prev_play_type),a
	C$joint_screen.c$49$2_0$25	= .
	.globl	C$joint_screen.c$49$2_0$25
;joint_screen.c:49: devkit_PSGStop();
	push	bc
	call	_devkit_PSGStop
	pop	bc
	C$joint_screen.c$50$2_0$25	= .
	.globl	C$joint_screen.c$50$2_0$25
;joint_screen.c:50: curr_play_type = play_type_pause;
	ld	hl, #_curr_play_type
	ld	(hl), #0x02
00110$:
	C$joint_screen.c$53$1_0$20	= .
	.globl	C$joint_screen.c$53$1_0$20
;joint_screen.c:53: if( engine_input_manager_hold_up() ||
	push	bc
	call	_engine_input_manager_hold_up
	ld	a, l
	pop	bc
	or	a, a
	jr	NZ, 00111$
	C$joint_screen.c$54$1_0$20	= .
	.globl	C$joint_screen.c$54$1_0$20
;joint_screen.c:54: engine_input_manager_hold_down() )
	push	bc
	call	_engine_input_manager_hold_down
	ld	a, l
	pop	bc
	or	a, a
	jr	Z, 00112$
00111$:
	C$joint_screen.c$56$2_0$26	= .
	.globl	C$joint_screen.c$56$2_0$26
;joint_screen.c:56: engine_sound_manager_play();
	push	bc
	call	_engine_sound_manager_play
	pop	bc
00112$:
	C$joint_screen.c$60$1_0$20	= .
	.globl	C$joint_screen.c$60$1_0$20
;joint_screen.c:60: sound = devkit_PSGGetStatus();
	push	bc
	call	_devkit_PSGGetStatus
	ld	a, l
	pop	bc
	C$joint_screen.c$61$1_0$20	= .
	.globl	C$joint_screen.c$61$1_0$20
;joint_screen.c:61: if( !sound )
	or	a, a
	jr	NZ, 00115$
	C$joint_screen.c$63$2_0$27	= .
	.globl	C$joint_screen.c$63$2_0$27
;joint_screen.c:63: curr_play_type = play_type_stop;
	ld	a, #0x04
	ld	(#_curr_play_type), a
00115$:
	C$joint_screen.c$66$1_0$20	= .
	.globl	C$joint_screen.c$66$1_0$20
;joint_screen.c:66: *screen_type = screen_type_joint;
	ld	a, #0x04
	ld	(bc), a
	C$joint_screen.c$67$1_0$20	= .
	.globl	C$joint_screen.c$67$1_0$20
;joint_screen.c:67: }
	C$joint_screen.c$67$1_0$20	= .
	.globl	C$joint_screen.c$67$1_0$20
	XG$screen_joint_screen_update$0$0	= .
	.globl	XG$screen_joint_screen_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
