;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module rle_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_rle_buffer
	.globl _engine_rle_decode_2
	.globl _engine_rle_decode_4
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$engine_rle_buffer$0_0$0 == 0xd000
_engine_rle_buffer	=	0xd000
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
	G$engine_rle_decode_2$0$0	= .
	.globl	G$engine_rle_decode_2$0$0
	C$rle_manager.c$15$0_0$4	= .
	.globl	C$rle_manager.c$15$0_0$4
;engine/rle_manager.c:15: void engine_rle_decode_2( const unsigned char *source ) __naked __z88dk_fastcall
;	---------------------------------
; Function engine_rle_decode_2
; ---------------------------------
_engine_rle_decode_2::
	C$rle_manager.c$24$1_0$4	= .
	.globl	C$rle_manager.c$24$1_0$4
;engine/rle_manager.c:24: __endasm;
	ld	e, #2
	jp	rle_decode_core
	C$rle_manager.c$26$1_0$4	= .
	.globl	C$rle_manager.c$26$1_0$4
;engine/rle_manager.c:26: }
	G$engine_rle_decode_4$0$0	= .
	.globl	G$engine_rle_decode_4$0$0
	C$rle_manager.c$31$1_0$6	= .
	.globl	C$rle_manager.c$31$1_0$6
;engine/rle_manager.c:31: void engine_rle_decode_4( const unsigned char *source ) __naked __z88dk_fastcall
;	---------------------------------
; Function engine_rle_decode_4
; ---------------------------------
_engine_rle_decode_4::
	C$rle_manager.c$82$1_0$6	= .
	.globl	C$rle_manager.c$82$1_0$6
;engine/rle_manager.c:82: __endasm;
	ld	e, #4
	rle_decode_core:
	push	ix
	push	hl
	pop	ix
	ld	hl, #_engine_rle_buffer
	ld	d, #0
	ld	c, e
	1$:
	push	hl
	2$:
	ld	a, 0( ix )
	or	a
	jr	z, 5$
	bit	7, a
	jr	nz, 4$
	ld	b, a
	inc	ix
	ld	a, 0( ix )
	3$:
	ld(	hl ), a
	add	hl, de
	djnz	3$
	inc	ix
	jr	2$
	4$:
	res	7, a
	ld	b, a
	6$:
	inc	ix
	ld	a, 0( ix )
	ld(	hl ), a
	add	hl, de
	djnz	6$
	inc	ix
	jr	2$
	5$:
	inc	ix
	pop	hl
	inc	hl
	dec	c
	jr	nz, 1$
	pop	ix
	ret
	C$rle_manager.c$84$1_0$6	= .
	.globl	C$rle_manager.c$84$1_0$6
;engine/rle_manager.c:84: }
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
