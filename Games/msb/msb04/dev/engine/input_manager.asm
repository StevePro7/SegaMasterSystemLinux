;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module input_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _devkit_SMS_getKeysStatus
	.globl _engine_input_manager_init
	.globl _engine_input_manager_update
	.globl _engine_input_manager_hold
	.globl _engine_input_manager_move
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
Finput_manager$hold_method$0_0$0==.
_hold_method:
	.ds 2
Finput_manager$move_method$0_0$0==.
_move_method:
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
Finput_manager$curr_joypad1$0_0$0==.
_curr_joypad1:
	.ds 2
Finput_manager$prev_joypad1$0_0$0==.
_prev_joypad1:
	.ds 2
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
	G$engine_input_manager_init$0$0	= .
	.globl	G$engine_input_manager_init$0$0
	C$input_manager.c$23$0_0$88	= .
	.globl	C$input_manager.c$23$0_0$88
;input_manager.c:23: void engine_input_manager_init()
;	---------------------------------
; Function engine_input_manager_init
; ---------------------------------
_engine_input_manager_init::
	C$input_manager.c$27$2_0$89	= .
	.globl	C$input_manager.c$27$2_0$89
;input_manager.c:27: hold_method = my_hold_method;
	ld	iy, #_hold_method
	ld	0 (iy), #<(_my_hold_method)
	ld	1 (iy), #>(_my_hold_method)
	C$input_manager.c$28$2_0$89	= .
	.globl	C$input_manager.c$28$2_0$89
;input_manager.c:28: move_method = my_move_method;
	ld	iy, #_move_method
	ld	0 (iy), #<(_my_move_method)
	ld	1 (iy), #>(_my_move_method)
	C$input_manager.c$34$1_0$88	= .
	.globl	C$input_manager.c$34$1_0$88
;input_manager.c:34: move_method = my_hold_method;
	C$input_manager.c$36$1_0$88	= .
	.globl	C$input_manager.c$36$1_0$88
;input_manager.c:36: }
	C$input_manager.c$36$1_0$88	= .
	.globl	C$input_manager.c$36$1_0$88
	XG$engine_input_manager_init$0$0	= .
	.globl	XG$engine_input_manager_init$0$0
	ret
	G$engine_input_manager_update$0$0	= .
	.globl	G$engine_input_manager_update$0$0
	C$input_manager.c$37$1_0$91	= .
	.globl	C$input_manager.c$37$1_0$91
;input_manager.c:37: void engine_input_manager_update()
;	---------------------------------
; Function engine_input_manager_update
; ---------------------------------
_engine_input_manager_update::
	C$input_manager.c$39$1_0$91	= .
	.globl	C$input_manager.c$39$1_0$91
;input_manager.c:39: prev_joypad1 = curr_joypad1;
	ld	hl, (_curr_joypad1)
	ld	(_prev_joypad1), hl
	C$input_manager.c$40$1_0$91	= .
	.globl	C$input_manager.c$40$1_0$91
;input_manager.c:40: curr_joypad1 = devkit_SMS_getKeysStatus();
	call	_devkit_SMS_getKeysStatus
	ld	(_curr_joypad1), hl
	C$input_manager.c$41$1_0$91	= .
	.globl	C$input_manager.c$41$1_0$91
;input_manager.c:41: }
	C$input_manager.c$41$1_0$91	= .
	.globl	C$input_manager.c$41$1_0$91
	XG$engine_input_manager_update$0$0	= .
	.globl	XG$engine_input_manager_update$0$0
	ret
	G$engine_input_manager_hold$0$0	= .
	.globl	G$engine_input_manager_hold$0$0
	C$input_manager.c$43$1_0$93	= .
	.globl	C$input_manager.c$43$1_0$93
;input_manager.c:43: unsigned char engine_input_manager_hold( unsigned char data )
;	---------------------------------
; Function engine_input_manager_hold
; ---------------------------------
_engine_input_manager_hold::
	C$input_manager.c$45$1_0$93	= .
	.globl	C$input_manager.c$45$1_0$93
;input_manager.c:45: return hold_method( data );
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, (_hold_method)
	call	___sdcc_call_hl
	inc	sp
	C$input_manager.c$46$1_0$93	= .
	.globl	C$input_manager.c$46$1_0$93
;input_manager.c:46: }
	C$input_manager.c$46$1_0$93	= .
	.globl	C$input_manager.c$46$1_0$93
	XG$engine_input_manager_hold$0$0	= .
	.globl	XG$engine_input_manager_hold$0$0
	ret
	G$engine_input_manager_move$0$0	= .
	.globl	G$engine_input_manager_move$0$0
	C$input_manager.c$48$1_0$95	= .
	.globl	C$input_manager.c$48$1_0$95
;input_manager.c:48: unsigned char engine_input_manager_move( unsigned char data )
;	---------------------------------
; Function engine_input_manager_move
; ---------------------------------
_engine_input_manager_move::
	C$input_manager.c$50$1_0$95	= .
	.globl	C$input_manager.c$50$1_0$95
;input_manager.c:50: return move_method( data );
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	ld	hl, (_move_method)
	call	___sdcc_call_hl
	inc	sp
	C$input_manager.c$51$1_0$95	= .
	.globl	C$input_manager.c$51$1_0$95
;input_manager.c:51: }
	C$input_manager.c$51$1_0$95	= .
	.globl	C$input_manager.c$51$1_0$95
	XG$engine_input_manager_move$0$0	= .
	.globl	XG$engine_input_manager_move$0$0
	ret
	Finput_manager$my_hold_method$0$0	= .
	.globl	Finput_manager$my_hold_method$0$0
	C$input_manager.c$53$1_0$97	= .
	.globl	C$input_manager.c$53$1_0$97
;input_manager.c:53: static unsigned char my_hold_method( unsigned char data )
;	---------------------------------
; Function my_hold_method
; ---------------------------------
_my_hold_method:
	C$input_manager.c$55$1_0$97	= .
	.globl	C$input_manager.c$55$1_0$97
;input_manager.c:55: return curr_joypad1 & data && !( prev_joypad1 & data );
	ld	iy, #2
	add	iy, sp
	ld	c, 0 (iy)
	ld	b, #0x00
	ld	iy, #_curr_joypad1
	ld	a, 0 (iy)
	and	a, c
	ld	e, a
	ld	a, 1 (iy)
	and	a, b
	or	a, e
	jr	Z, 00103$
	ld	iy, #_prev_joypad1
	ld	a, 0 (iy)
	and	a, c
	ld	c, a
	ld	a, 1 (iy)
	and	a, b
	or	a, c
	jr	Z, 00104$
00103$:
	ld	l, #0x00
	ret
00104$:
	ld	l, #0x01
	C$input_manager.c$56$1_0$97	= .
	.globl	C$input_manager.c$56$1_0$97
;input_manager.c:56: }
	C$input_manager.c$56$1_0$97	= .
	.globl	C$input_manager.c$56$1_0$97
	XFinput_manager$my_hold_method$0$0	= .
	.globl	XFinput_manager$my_hold_method$0$0
	ret
	Finput_manager$my_move_method$0$0	= .
	.globl	Finput_manager$my_move_method$0$0
	C$input_manager.c$58$1_0$99	= .
	.globl	C$input_manager.c$58$1_0$99
;input_manager.c:58: static unsigned char my_move_method( unsigned char data )
;	---------------------------------
; Function my_move_method
; ---------------------------------
_my_move_method:
	C$input_manager.c$60$1_0$99	= .
	.globl	C$input_manager.c$60$1_0$99
;input_manager.c:60: return curr_joypad1 & data;
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	ld	iy, #_curr_joypad1
	ld	c, 0 (iy)
	and	a, c
	ld	l, a
	C$input_manager.c$61$1_0$99	= .
	.globl	C$input_manager.c$61$1_0$99
;input_manager.c:61: }
	C$input_manager.c$61$1_0$99	= .
	.globl	C$input_manager.c$61$1_0$99
	XFinput_manager$my_move_method$0$0	= .
	.globl	XFinput_manager$my_move_method$0$0
	ret
	.area _CODE
	.area _INITIALIZER
Finput_manager$__xinit_curr_joypad1$0_0$0 == .
__xinit__curr_joypad1:
	.dw #0x0000
Finput_manager$__xinit_prev_joypad1$0_0$0 == .
__xinit__prev_joypad1:
	.dw #0x0000
	.area _CABS (ABS)
