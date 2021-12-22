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
	.globl _engine_input_manager_update
	.globl _engine_input_manager_hold_up
	.globl _engine_input_manager_hold_down
	.globl _engine_input_manager_hold_left
	.globl _engine_input_manager_hold_right
	.globl _engine_input_manager_hold_fire1
	.globl _engine_input_manager_hold_fire2
	.globl _engine_input_manager_move_up
	.globl _engine_input_manager_move_down
	.globl _engine_input_manager_move_left
	.globl _engine_input_manager_move_right
	.globl _engine_input_manager_move_fire1
	.globl _engine_input_manager_move_fire2
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
	G$engine_input_manager_update$0$0	= .
	.globl	G$engine_input_manager_update$0$0
	C$input_manager.c$13$0_0$19	= .
	.globl	C$input_manager.c$13$0_0$19
;input_manager.c:13: void engine_input_manager_update()
;	---------------------------------
; Function engine_input_manager_update
; ---------------------------------
_engine_input_manager_update::
	C$input_manager.c$15$1_0$19	= .
	.globl	C$input_manager.c$15$1_0$19
;input_manager.c:15: prev_joypad1 = curr_joypad1;
	ld	hl, (_curr_joypad1)
	ld	(_prev_joypad1), hl
	C$input_manager.c$16$1_0$19	= .
	.globl	C$input_manager.c$16$1_0$19
;input_manager.c:16: curr_joypad1 = devkit_SMS_getKeysStatus();
	call	_devkit_SMS_getKeysStatus
	ld	(_curr_joypad1), hl
	C$input_manager.c$17$1_0$19	= .
	.globl	C$input_manager.c$17$1_0$19
;input_manager.c:17: }
	C$input_manager.c$17$1_0$19	= .
	.globl	C$input_manager.c$17$1_0$19
	XG$engine_input_manager_update$0$0	= .
	.globl	XG$engine_input_manager_update$0$0
	ret
	G$engine_input_manager_hold_up$0$0	= .
	.globl	G$engine_input_manager_hold_up$0$0
	C$input_manager.c$20$1_0$20	= .
	.globl	C$input_manager.c$20$1_0$20
;input_manager.c:20: unsigned char engine_input_manager_hold_up()
;	---------------------------------
; Function engine_input_manager_hold_up
; ---------------------------------
_engine_input_manager_hold_up::
	C$input_manager.c$22$1_0$20	= .
	.globl	C$input_manager.c$22$1_0$20
;input_manager.c:22: return engine_input_manager_hold( devkit_PORT_A_KEY_UP() );
	call	_devkit_PORT_A_KEY_UP
	push	hl
	call	_engine_input_manager_hold
	pop	af
	C$input_manager.c$23$1_0$20	= .
	.globl	C$input_manager.c$23$1_0$20
;input_manager.c:23: }
	C$input_manager.c$23$1_0$20	= .
	.globl	C$input_manager.c$23$1_0$20
	XG$engine_input_manager_hold_up$0$0	= .
	.globl	XG$engine_input_manager_hold_up$0$0
	ret
	G$engine_input_manager_hold_down$0$0	= .
	.globl	G$engine_input_manager_hold_down$0$0
	C$input_manager.c$24$1_0$21	= .
	.globl	C$input_manager.c$24$1_0$21
;input_manager.c:24: unsigned char engine_input_manager_hold_down()
;	---------------------------------
; Function engine_input_manager_hold_down
; ---------------------------------
_engine_input_manager_hold_down::
	C$input_manager.c$26$1_0$21	= .
	.globl	C$input_manager.c$26$1_0$21
;input_manager.c:26: return engine_input_manager_hold( devkit_PORT_A_KEY_DOWN() );
	call	_devkit_PORT_A_KEY_DOWN
	push	hl
	call	_engine_input_manager_hold
	pop	af
	C$input_manager.c$27$1_0$21	= .
	.globl	C$input_manager.c$27$1_0$21
;input_manager.c:27: }
	C$input_manager.c$27$1_0$21	= .
	.globl	C$input_manager.c$27$1_0$21
	XG$engine_input_manager_hold_down$0$0	= .
	.globl	XG$engine_input_manager_hold_down$0$0
	ret
	G$engine_input_manager_hold_left$0$0	= .
	.globl	G$engine_input_manager_hold_left$0$0
	C$input_manager.c$28$1_0$22	= .
	.globl	C$input_manager.c$28$1_0$22
;input_manager.c:28: unsigned char engine_input_manager_hold_left()
;	---------------------------------
; Function engine_input_manager_hold_left
; ---------------------------------
_engine_input_manager_hold_left::
	C$input_manager.c$30$1_0$22	= .
	.globl	C$input_manager.c$30$1_0$22
;input_manager.c:30: return engine_input_manager_hold( devkit_PORT_A_KEY_LEFT() );
	call	_devkit_PORT_A_KEY_LEFT
	push	hl
	call	_engine_input_manager_hold
	pop	af
	C$input_manager.c$31$1_0$22	= .
	.globl	C$input_manager.c$31$1_0$22
;input_manager.c:31: }
	C$input_manager.c$31$1_0$22	= .
	.globl	C$input_manager.c$31$1_0$22
	XG$engine_input_manager_hold_left$0$0	= .
	.globl	XG$engine_input_manager_hold_left$0$0
	ret
	G$engine_input_manager_hold_right$0$0	= .
	.globl	G$engine_input_manager_hold_right$0$0
	C$input_manager.c$32$1_0$23	= .
	.globl	C$input_manager.c$32$1_0$23
;input_manager.c:32: unsigned char engine_input_manager_hold_right()
;	---------------------------------
; Function engine_input_manager_hold_right
; ---------------------------------
_engine_input_manager_hold_right::
	C$input_manager.c$34$1_0$23	= .
	.globl	C$input_manager.c$34$1_0$23
;input_manager.c:34: return engine_input_manager_hold( devkit_PORT_A_KEY_RIGHT() );
	call	_devkit_PORT_A_KEY_RIGHT
	push	hl
	call	_engine_input_manager_hold
	pop	af
	C$input_manager.c$35$1_0$23	= .
	.globl	C$input_manager.c$35$1_0$23
;input_manager.c:35: }
	C$input_manager.c$35$1_0$23	= .
	.globl	C$input_manager.c$35$1_0$23
	XG$engine_input_manager_hold_right$0$0	= .
	.globl	XG$engine_input_manager_hold_right$0$0
	ret
	G$engine_input_manager_hold_fire1$0$0	= .
	.globl	G$engine_input_manager_hold_fire1$0$0
	C$input_manager.c$36$1_0$24	= .
	.globl	C$input_manager.c$36$1_0$24
;input_manager.c:36: unsigned char engine_input_manager_hold_fire1()
;	---------------------------------
; Function engine_input_manager_hold_fire1
; ---------------------------------
_engine_input_manager_hold_fire1::
	C$input_manager.c$38$1_0$24	= .
	.globl	C$input_manager.c$38$1_0$24
;input_manager.c:38: return engine_input_manager_hold( devkit_PORT_A_KEY_1() );
	call	_devkit_PORT_A_KEY_1
	push	hl
	call	_engine_input_manager_hold
	pop	af
	C$input_manager.c$39$1_0$24	= .
	.globl	C$input_manager.c$39$1_0$24
;input_manager.c:39: }
	C$input_manager.c$39$1_0$24	= .
	.globl	C$input_manager.c$39$1_0$24
	XG$engine_input_manager_hold_fire1$0$0	= .
	.globl	XG$engine_input_manager_hold_fire1$0$0
	ret
	G$engine_input_manager_hold_fire2$0$0	= .
	.globl	G$engine_input_manager_hold_fire2$0$0
	C$input_manager.c$40$1_0$25	= .
	.globl	C$input_manager.c$40$1_0$25
;input_manager.c:40: unsigned char engine_input_manager_hold_fire2()
;	---------------------------------
; Function engine_input_manager_hold_fire2
; ---------------------------------
_engine_input_manager_hold_fire2::
	C$input_manager.c$42$1_0$25	= .
	.globl	C$input_manager.c$42$1_0$25
;input_manager.c:42: return engine_input_manager_hold( devkit_PORT_A_KEY_2() );
	call	_devkit_PORT_A_KEY_2
	push	hl
	call	_engine_input_manager_hold
	pop	af
	C$input_manager.c$43$1_0$25	= .
	.globl	C$input_manager.c$43$1_0$25
;input_manager.c:43: }
	C$input_manager.c$43$1_0$25	= .
	.globl	C$input_manager.c$43$1_0$25
	XG$engine_input_manager_hold_fire2$0$0	= .
	.globl	XG$engine_input_manager_hold_fire2$0$0
	ret
	G$engine_input_manager_move_up$0$0	= .
	.globl	G$engine_input_manager_move_up$0$0
	C$input_manager.c$46$1_0$26	= .
	.globl	C$input_manager.c$46$1_0$26
;input_manager.c:46: unsigned char engine_input_manager_move_up()
;	---------------------------------
; Function engine_input_manager_move_up
; ---------------------------------
_engine_input_manager_move_up::
	C$input_manager.c$48$1_0$26	= .
	.globl	C$input_manager.c$48$1_0$26
;input_manager.c:48: return engine_input_manager_move( devkit_PORT_A_KEY_UP() );
	call	_devkit_PORT_A_KEY_UP
	push	hl
	call	_engine_input_manager_move
	pop	af
	C$input_manager.c$49$1_0$26	= .
	.globl	C$input_manager.c$49$1_0$26
;input_manager.c:49: }
	C$input_manager.c$49$1_0$26	= .
	.globl	C$input_manager.c$49$1_0$26
	XG$engine_input_manager_move_up$0$0	= .
	.globl	XG$engine_input_manager_move_up$0$0
	ret
	G$engine_input_manager_move_down$0$0	= .
	.globl	G$engine_input_manager_move_down$0$0
	C$input_manager.c$50$1_0$27	= .
	.globl	C$input_manager.c$50$1_0$27
;input_manager.c:50: unsigned char engine_input_manager_move_down()
;	---------------------------------
; Function engine_input_manager_move_down
; ---------------------------------
_engine_input_manager_move_down::
	C$input_manager.c$52$1_0$27	= .
	.globl	C$input_manager.c$52$1_0$27
;input_manager.c:52: return engine_input_manager_move( devkit_PORT_A_KEY_DOWN() );
	call	_devkit_PORT_A_KEY_DOWN
	push	hl
	call	_engine_input_manager_move
	pop	af
	C$input_manager.c$53$1_0$27	= .
	.globl	C$input_manager.c$53$1_0$27
;input_manager.c:53: }
	C$input_manager.c$53$1_0$27	= .
	.globl	C$input_manager.c$53$1_0$27
	XG$engine_input_manager_move_down$0$0	= .
	.globl	XG$engine_input_manager_move_down$0$0
	ret
	G$engine_input_manager_move_left$0$0	= .
	.globl	G$engine_input_manager_move_left$0$0
	C$input_manager.c$54$1_0$28	= .
	.globl	C$input_manager.c$54$1_0$28
;input_manager.c:54: unsigned char engine_input_manager_move_left()
;	---------------------------------
; Function engine_input_manager_move_left
; ---------------------------------
_engine_input_manager_move_left::
	C$input_manager.c$56$1_0$28	= .
	.globl	C$input_manager.c$56$1_0$28
;input_manager.c:56: return engine_input_manager_move( devkit_PORT_A_KEY_LEFT() );
	call	_devkit_PORT_A_KEY_LEFT
	push	hl
	call	_engine_input_manager_move
	pop	af
	C$input_manager.c$57$1_0$28	= .
	.globl	C$input_manager.c$57$1_0$28
;input_manager.c:57: }
	C$input_manager.c$57$1_0$28	= .
	.globl	C$input_manager.c$57$1_0$28
	XG$engine_input_manager_move_left$0$0	= .
	.globl	XG$engine_input_manager_move_left$0$0
	ret
	G$engine_input_manager_move_right$0$0	= .
	.globl	G$engine_input_manager_move_right$0$0
	C$input_manager.c$58$1_0$29	= .
	.globl	C$input_manager.c$58$1_0$29
;input_manager.c:58: unsigned char engine_input_manager_move_right()
;	---------------------------------
; Function engine_input_manager_move_right
; ---------------------------------
_engine_input_manager_move_right::
	C$input_manager.c$60$1_0$29	= .
	.globl	C$input_manager.c$60$1_0$29
;input_manager.c:60: return engine_input_manager_move( devkit_PORT_A_KEY_RIGHT() );
	call	_devkit_PORT_A_KEY_RIGHT
	push	hl
	call	_engine_input_manager_move
	pop	af
	C$input_manager.c$61$1_0$29	= .
	.globl	C$input_manager.c$61$1_0$29
;input_manager.c:61: }
	C$input_manager.c$61$1_0$29	= .
	.globl	C$input_manager.c$61$1_0$29
	XG$engine_input_manager_move_right$0$0	= .
	.globl	XG$engine_input_manager_move_right$0$0
	ret
	G$engine_input_manager_move_fire1$0$0	= .
	.globl	G$engine_input_manager_move_fire1$0$0
	C$input_manager.c$62$1_0$30	= .
	.globl	C$input_manager.c$62$1_0$30
;input_manager.c:62: unsigned char engine_input_manager_move_fire1()
;	---------------------------------
; Function engine_input_manager_move_fire1
; ---------------------------------
_engine_input_manager_move_fire1::
	C$input_manager.c$64$1_0$30	= .
	.globl	C$input_manager.c$64$1_0$30
;input_manager.c:64: return engine_input_manager_move( devkit_PORT_A_KEY_1() );
	call	_devkit_PORT_A_KEY_1
	push	hl
	call	_engine_input_manager_move
	pop	af
	C$input_manager.c$65$1_0$30	= .
	.globl	C$input_manager.c$65$1_0$30
;input_manager.c:65: }
	C$input_manager.c$65$1_0$30	= .
	.globl	C$input_manager.c$65$1_0$30
	XG$engine_input_manager_move_fire1$0$0	= .
	.globl	XG$engine_input_manager_move_fire1$0$0
	ret
	G$engine_input_manager_move_fire2$0$0	= .
	.globl	G$engine_input_manager_move_fire2$0$0
	C$input_manager.c$66$1_0$31	= .
	.globl	C$input_manager.c$66$1_0$31
;input_manager.c:66: unsigned char engine_input_manager_move_fire2()
;	---------------------------------
; Function engine_input_manager_move_fire2
; ---------------------------------
_engine_input_manager_move_fire2::
	C$input_manager.c$68$1_0$31	= .
	.globl	C$input_manager.c$68$1_0$31
;input_manager.c:68: return engine_input_manager_move( devkit_PORT_A_KEY_2() );
	call	_devkit_PORT_A_KEY_2
	push	hl
	call	_engine_input_manager_move
	pop	af
	C$input_manager.c$69$1_0$31	= .
	.globl	C$input_manager.c$69$1_0$31
;input_manager.c:69: }
	C$input_manager.c$69$1_0$31	= .
	.globl	C$input_manager.c$69$1_0$31
	XG$engine_input_manager_move_fire2$0$0	= .
	.globl	XG$engine_input_manager_move_fire2$0$0
	ret
	Finput_manager$engine_input_manager_hold$0$0	= .
	.globl	Finput_manager$engine_input_manager_hold$0$0
	C$input_manager.c$72$1_0$33	= .
	.globl	C$input_manager.c$72$1_0$33
;input_manager.c:72: static unsigned char engine_input_manager_hold( unsigned int data )
;	---------------------------------
; Function engine_input_manager_hold
; ---------------------------------
_engine_input_manager_hold:
	C$input_manager.c$74$1_0$33	= .
	.globl	C$input_manager.c$74$1_0$33
;input_manager.c:74: return curr_joypad1 & data && !( prev_joypad1 & data );
	ld	a,(#_curr_joypad1 + 0)
	ld	iy, #2
	add	iy, sp
	and	a, 0 (iy)
	ld	c, a
	ld	a,(#_curr_joypad1 + 1)
	ld	iy, #2
	add	iy, sp
	and	a, 1 (iy)
	or	a, c
	jr	Z, 00103$
	ld	a,(#_prev_joypad1 + 0)
	ld	iy, #2
	add	iy, sp
	and	a, 0 (iy)
	ld	c, a
	ld	a,(#_prev_joypad1 + 1)
	ld	iy, #2
	add	iy, sp
	and	a, 1 (iy)
	or	a, c
	jr	Z, 00104$
00103$:
	ld	l, #0x00
	ret
00104$:
	ld	l, #0x01
	C$input_manager.c$75$1_0$33	= .
	.globl	C$input_manager.c$75$1_0$33
;input_manager.c:75: }
	C$input_manager.c$75$1_0$33	= .
	.globl	C$input_manager.c$75$1_0$33
	XFinput_manager$engine_input_manager_hold$0$0	= .
	.globl	XFinput_manager$engine_input_manager_hold$0$0
	ret
	Finput_manager$engine_input_manager_move$0$0	= .
	.globl	Finput_manager$engine_input_manager_move$0$0
	C$input_manager.c$76$1_0$35	= .
	.globl	C$input_manager.c$76$1_0$35
;input_manager.c:76: static unsigned char engine_input_manager_move( unsigned int data )
;	---------------------------------
; Function engine_input_manager_move
; ---------------------------------
_engine_input_manager_move:
	C$input_manager.c$78$1_0$35	= .
	.globl	C$input_manager.c$78$1_0$35
;input_manager.c:78: return curr_joypad1 & data;
	ld	a,(#_curr_joypad1 + 0)
	ld	iy, #2
	add	iy, sp
	ld	c, 0 (iy)
	and	a, c
	ld	l, a
	C$input_manager.c$79$1_0$35	= .
	.globl	C$input_manager.c$79$1_0$35
;input_manager.c:79: }
	C$input_manager.c$79$1_0$35	= .
	.globl	C$input_manager.c$79$1_0$35
	XFinput_manager$engine_input_manager_move$0$0	= .
	.globl	XFinput_manager$engine_input_manager_move$0$0
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
