;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module sound_screen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_text_manager_sound
	.globl _engine_sound_manager_play
	.globl _engine_input_manager_hold_fire2
	.globl _engine_input_manager_hold_fire1
	.globl _engine_input_manager_hold_right
	.globl _engine_input_manager_hold_left
	.globl _engine_input_manager_hold_down
	.globl _engine_input_manager_hold_up
	.globl _devkit_PSGSFXStop
	.globl _screen_sound_screen_load
	.globl _screen_sound_screen_update
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
	G$screen_sound_screen_load$0$0	= .
	.globl	G$screen_sound_screen_load$0$0
	C$sound_screen.c$8$0_0$18	= .
	.globl	C$sound_screen.c$8$0_0$18
;sound_screen.c:8: void screen_sound_screen_load()
;	---------------------------------
; Function screen_sound_screen_load
; ---------------------------------
_screen_sound_screen_load::
	C$sound_screen.c$10$1_0$18	= .
	.globl	C$sound_screen.c$10$1_0$18
;sound_screen.c:10: engine_text_manager_sound();
	C$sound_screen.c$11$1_0$18	= .
	.globl	C$sound_screen.c$11$1_0$18
;sound_screen.c:11: }
	C$sound_screen.c$11$1_0$18	= .
	.globl	C$sound_screen.c$11$1_0$18
	XG$screen_sound_screen_load$0$0	= .
	.globl	XG$screen_sound_screen_load$0$0
	jp	_engine_text_manager_sound
	G$screen_sound_screen_update$0$0	= .
	.globl	G$screen_sound_screen_update$0$0
	C$sound_screen.c$13$1_0$20	= .
	.globl	C$sound_screen.c$13$1_0$20
;sound_screen.c:13: void screen_sound_screen_update( unsigned char *screen_type )
;	---------------------------------
; Function screen_sound_screen_update
; ---------------------------------
_screen_sound_screen_update::
	C$sound_screen.c$15$1_0$20	= .
	.globl	C$sound_screen.c$15$1_0$20
;sound_screen.c:15: unsigned char input = engine_input_manager_hold_fire1();
	call	_engine_input_manager_hold_fire1
	C$sound_screen.c$19$1_0$20	= .
	.globl	C$sound_screen.c$19$1_0$20
;sound_screen.c:19: *screen_type = screen_type_joint;
	pop	de
	pop	bc
	push	bc
	push	de
	C$sound_screen.c$16$1_0$20	= .
	.globl	C$sound_screen.c$16$1_0$20
;sound_screen.c:16: if( input )
	ld	a, l
	or	a, a
	jr	Z, 00102$
	C$sound_screen.c$18$2_0$21	= .
	.globl	C$sound_screen.c$18$2_0$21
;sound_screen.c:18: devkit_PSGSFXStop();
	push	bc
	call	_devkit_PSGSFXStop
	pop	bc
	C$sound_screen.c$19$2_0$21	= .
	.globl	C$sound_screen.c$19$2_0$21
;sound_screen.c:19: *screen_type = screen_type_joint;
	ld	a, #0x04
	ld	(bc), a
	C$sound_screen.c$20$2_0$21	= .
	.globl	C$sound_screen.c$20$2_0$21
;sound_screen.c:20: return;
	ret
00102$:
	C$sound_screen.c$23$1_0$20	= .
	.globl	C$sound_screen.c$23$1_0$20
;sound_screen.c:23: input = engine_input_manager_hold_fire2();
	push	bc
	call	_engine_input_manager_hold_fire2
	ld	a, l
	pop	bc
	C$sound_screen.c$24$1_0$20	= .
	.globl	C$sound_screen.c$24$1_0$20
;sound_screen.c:24: if( input )
	or	a, a
	jr	Z, 00104$
	C$sound_screen.c$26$2_0$22	= .
	.globl	C$sound_screen.c$26$2_0$22
;sound_screen.c:26: *screen_type = screen_type_music;
	ld	a, #0x02
	ld	(bc), a
	C$sound_screen.c$27$2_0$22	= .
	.globl	C$sound_screen.c$27$2_0$22
;sound_screen.c:27: return;
	ret
00104$:
	C$sound_screen.c$30$1_0$20	= .
	.globl	C$sound_screen.c$30$1_0$20
;sound_screen.c:30: if( engine_input_manager_hold_left() ||
	push	bc
	call	_engine_input_manager_hold_left
	ld	a, l
	pop	bc
	or	a, a
	jr	NZ, 00105$
	C$sound_screen.c$31$1_0$20	= .
	.globl	C$sound_screen.c$31$1_0$20
;sound_screen.c:31: engine_input_manager_hold_right() ||
	push	bc
	call	_engine_input_manager_hold_right
	ld	a, l
	pop	bc
	or	a, a
	jr	NZ, 00105$
	C$sound_screen.c$32$1_0$20	= .
	.globl	C$sound_screen.c$32$1_0$20
;sound_screen.c:32: engine_input_manager_hold_up() ||
	push	bc
	call	_engine_input_manager_hold_up
	ld	a, l
	pop	bc
	or	a, a
	jr	NZ, 00105$
	C$sound_screen.c$33$1_0$20	= .
	.globl	C$sound_screen.c$33$1_0$20
;sound_screen.c:33: engine_input_manager_hold_down() )
	push	bc
	call	_engine_input_manager_hold_down
	ld	a, l
	pop	bc
	or	a, a
	jr	Z, 00106$
00105$:
	C$sound_screen.c$35$2_0$23	= .
	.globl	C$sound_screen.c$35$2_0$23
;sound_screen.c:35: engine_sound_manager_play();
	push	bc
	call	_engine_sound_manager_play
	pop	bc
00106$:
	C$sound_screen.c$38$1_0$20	= .
	.globl	C$sound_screen.c$38$1_0$20
;sound_screen.c:38: *screen_type = screen_type_sound;
	ld	a, #0x03
	ld	(bc), a
	C$sound_screen.c$39$1_0$20	= .
	.globl	C$sound_screen.c$39$1_0$20
;sound_screen.c:39: }
	C$sound_screen.c$39$1_0$20	= .
	.globl	C$sound_screen.c$39$1_0$20
	XG$screen_sound_screen_update$0$0	= .
	.globl	XG$screen_sound_screen_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
