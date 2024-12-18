;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module screen_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _screen_func_screen_update
	.globl _screen_func_screen_load
	.globl _screen_test_screen_update
	.globl _screen_test_screen_load
	.globl _screen_none_screen_update
	.globl _screen_none_screen_load
	.globl _engine_screen_manager_init
	.globl _engine_screen_manager_update
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
Fscreen_manager$curr_screen_type$0_0$0==.
_curr_screen_type:
	.ds 1
Fscreen_manager$next_screen_type$0_0$0==.
_next_screen_type:
	.ds 1
Fscreen_manager$load_method$0_0$0==.
_load_method:
	.ds 48
Fscreen_manager$update_method$0_0$0==.
_update_method:
	.ds 48
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
	G$engine_screen_manager_init$0$0	= .
	.globl	G$engine_screen_manager_init$0$0
	C$screen_manager.c$37$0_0$7	= .
	.globl	C$screen_manager.c$37$0_0$7
;screen_manager.c:37: void engine_screen_manager_init( unsigned char open_screen_type )
;	---------------------------------
; Function engine_screen_manager_init
; ---------------------------------
_engine_screen_manager_init::
	C$screen_manager.c$39$1_0$7	= .
	.globl	C$screen_manager.c$39$1_0$7
;screen_manager.c:39: next_screen_type = open_screen_type;
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	ld	(_next_screen_type+0), a
	C$screen_manager.c$40$1_0$7	= .
	.globl	C$screen_manager.c$40$1_0$7
;screen_manager.c:40: curr_screen_type = screen_type_none;
	ld	hl, #_curr_screen_type
	ld	(hl), #0x00
	C$screen_manager.c$43$1_0$7	= .
	.globl	C$screen_manager.c$43$1_0$7
;screen_manager.c:43: load_method[ screen_type_none ] = screen_none_screen_load;
	ld	hl, #_screen_none_screen_load
	ld	(_load_method), hl
	C$screen_manager.c$65$1_0$7	= .
	.globl	C$screen_manager.c$65$1_0$7
;screen_manager.c:65: load_method[ screen_type_test ] = screen_test_screen_load;
	ld	hl, #_screen_test_screen_load
	ld	((_load_method + 0x002c)), hl
	C$screen_manager.c$66$1_0$7	= .
	.globl	C$screen_manager.c$66$1_0$7
;screen_manager.c:66: load_method[ screen_type_func ] = screen_func_screen_load;
	ld	hl, #_screen_func_screen_load
	ld	((_load_method + 0x002e)), hl
	C$screen_manager.c$69$1_0$7	= .
	.globl	C$screen_manager.c$69$1_0$7
;screen_manager.c:69: update_method[ screen_type_none ] = screen_none_screen_update;
	ld	hl, #_screen_none_screen_update
	ld	(_update_method), hl
	C$screen_manager.c$91$1_0$7	= .
	.globl	C$screen_manager.c$91$1_0$7
;screen_manager.c:91: update_method[ screen_type_test ] = screen_test_screen_update;
	ld	hl, #_screen_test_screen_update
	ld	((_update_method + 0x002c)), hl
	C$screen_manager.c$92$1_0$7	= .
	.globl	C$screen_manager.c$92$1_0$7
;screen_manager.c:92: update_method[ screen_type_func ] = screen_func_screen_update;
	ld	hl, #_screen_func_screen_update
	ld	((_update_method + 0x002e)), hl
	C$screen_manager.c$93$1_0$7	= .
	.globl	C$screen_manager.c$93$1_0$7
;screen_manager.c:93: }
	C$screen_manager.c$93$1_0$7	= .
	.globl	C$screen_manager.c$93$1_0$7
	XG$engine_screen_manager_init$0$0	= .
	.globl	XG$engine_screen_manager_init$0$0
	ret
	G$engine_screen_manager_update$0$0	= .
	.globl	G$engine_screen_manager_update$0$0
	C$screen_manager.c$95$1_0$8	= .
	.globl	C$screen_manager.c$95$1_0$8
;screen_manager.c:95: void engine_screen_manager_update()
;	---------------------------------
; Function engine_screen_manager_update
; ---------------------------------
_engine_screen_manager_update::
	C$screen_manager.c$97$1_0$8	= .
	.globl	C$screen_manager.c$97$1_0$8
;screen_manager.c:97: if( curr_screen_type != next_screen_type )
	ld	a,(#_curr_screen_type + 0)
	ld	iy, #_next_screen_type
	sub	a, 0 (iy)
	jr	Z, 00102$
	C$screen_manager.c$99$2_0$9	= .
	.globl	C$screen_manager.c$99$2_0$9
;screen_manager.c:99: curr_screen_type = next_screen_type;
	ld	a, 0 (iy)
	ld	iy, #_curr_screen_type
	ld	0 (iy), a
	C$screen_manager.c$100$2_0$9	= .
	.globl	C$screen_manager.c$100$2_0$9
;screen_manager.c:100: load_method[ curr_screen_type ]();
	ld	bc, #_load_method+0
	ld	l, 0 (iy)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, c
	call	___sdcc_call_hl
00102$:
	C$screen_manager.c$103$1_0$8	= .
	.globl	C$screen_manager.c$103$1_0$8
;screen_manager.c:103: update_method[ curr_screen_type ]( &next_screen_type );
	ld	bc, #_update_method+0
	ld	a, (#_curr_screen_type + 0)
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #_next_screen_type
	push	hl
	ld	l, c
	ld	h, b
	call	___sdcc_call_hl
	pop	af
	C$screen_manager.c$104$1_0$8	= .
	.globl	C$screen_manager.c$104$1_0$8
;screen_manager.c:104: }
	C$screen_manager.c$104$1_0$8	= .
	.globl	C$screen_manager.c$104$1_0$8
	XG$engine_screen_manager_update$0$0	= .
	.globl	XG$engine_screen_manager_update$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
