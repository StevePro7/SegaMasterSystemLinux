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
G$engine_rle_buffer$0_0$0==.
_engine_rle_buffer::
	.ds 3072
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
	C$rle_manager.c$5$0_0$4	= .
	.globl	C$rle_manager.c$5$0_0$4
;rle_manager.c:5: void engine_rle_decode_2( const unsigned char *source )	// __naked __z88dk_fastcall
;	---------------------------------
; Function engine_rle_decode_2
; ---------------------------------
_engine_rle_decode_2::
	C$rle_manager.c$13$1_0$4	= .
	.globl	C$rle_manager.c$13$1_0$4
;rle_manager.c:13: __endasm;
	ld	e, #2
	jp	rle_decode_core
	C$rle_manager.c$15$1_0$4	= .
	.globl	C$rle_manager.c$15$1_0$4
;rle_manager.c:15: }
	C$rle_manager.c$15$1_0$4	= .
	.globl	C$rle_manager.c$15$1_0$4
	XG$engine_rle_decode_2$0$0	= .
	.globl	XG$engine_rle_decode_2$0$0
	ret
	G$engine_rle_decode_4$0$0	= .
	.globl	G$engine_rle_decode_4$0$0
	C$rle_manager.c$17$1_0$6	= .
	.globl	C$rle_manager.c$17$1_0$6
;rle_manager.c:17: void engine_rle_decode_4( const unsigned char *source )	// __naked __z88dk_fastcall
;	---------------------------------
; Function engine_rle_decode_4
; ---------------------------------
_engine_rle_decode_4::
	C$rle_manager.c$67$1_0$6	= .
	.globl	C$rle_manager.c$67$1_0$6
;rle_manager.c:67: __endasm;
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
	6$	:
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
	C$rle_manager.c$69$1_0$6	= .
	.globl	C$rle_manager.c$69$1_0$6
;rle_manager.c:69: }
	C$rle_manager.c$69$1_0$6	= .
	.globl	C$rle_manager.c$69$1_0$6
	XG$engine_rle_decode_4$0$0	= .
	.globl	XG$engine_rle_decode_4$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
