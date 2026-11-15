;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module rle
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _rle_decode
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
	G$rle_decode$0$0	= .
	.globl	G$rle_decode$0$0
	C$rle.c$4$0_0$3	= .
	.globl	C$rle.c$4$0_0$3
;rle.c:4: unsigned char rle_decode( const unsigned char *source, unsigned int source_size,
;	---------------------------------
; Function rle_decode
; ---------------------------------
_rle_decode::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-25
	add	iy, sp
	ld	sp, iy
	ld	-11 (ix), l
	ld	-10 (ix), h
	ld	-13 (ix), e
	ld	-12 (ix), d
	C$rle.c$8$2_0$3	= .
	.globl	C$rle.c$8$2_0$3
;rle.c:8: unsigned int pos = 0;
	xor	a, a
	ld	-9 (ix), a
	ld	-8 (ix), a
	C$rle.c$11$1_0$3	= .
	.globl	C$rle.c$11$1_0$3
;rle.c:11: if( !lanes || !lane_length || lane_length > 65536u / lanes )
	ld	a, 8 (ix)
	or	a, a
	jr	Z, 00101$
	ld	a, 7 (ix)
	or	a, 6 (ix)
	jr	Z, 00101$
	ld	a, 8 (ix)
	ld	-4 (ix), a
	xor	a, a
	ld	-3 (ix), a
;	spillPairReg hl
;	spillPairReg hl
	ld	-2 (ix), a
	ld	-1 (ix), a
	ld	l, a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	de, #0x0000
	ld	hl, #0x0001
	call	__divulong
	pop	af
	pop	af
	ld	-17 (ix), e
	ld	-16 (ix), d
	ld	-15 (ix), l
	ld	-14 (ix), h
	ld	a, 6 (ix)
	ld	-4 (ix), a
	ld	a, 7 (ix)
	ld	-3 (ix), a
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
	ld	a, -17 (ix)
	sub	a, -4 (ix)
	ld	a, -16 (ix)
	sbc	a, -3 (ix)
	ld	a, -15 (ix)
	sbc	a, -2 (ix)
	ld	a, -14 (ix)
	sbc	a, -1 (ix)
	jr	NC, 00152$
00101$:
	C$rle.c$13$2_0$4	= .
	.globl	C$rle.c$13$2_0$4
;rle.c:13: return 0;
	xor	a, a
	jp	00135$
	C$rle.c$16$1_0$3	= .
	.globl	C$rle.c$16$1_0$3
;rle.c:16: for( lane = 0; lane < lanes; ++lane )
00152$:
	ld	-7 (ix), #0x00
00133$:
	ld	a, -7 (ix)
	sub	a, 8 (ix)
	jp	NC, 00128$
	C$rle.c$18$4_0$6	= .
	.globl	C$rle.c$18$4_0$6
;rle.c:18: unsigned int written = 0;
	xor	a, a
	ld	-6 (ix), a
	ld	-5 (ix), a
	C$rle.c$19$3_0$6	= .
	.globl	C$rle.c$19$3_0$6
;rle.c:19: while( written < lane_length )
00119$:
	ld	a, -6 (ix)
	sub	a, 6 (ix)
	ld	a, -5 (ix)
	sbc	a, 7 (ix)
	jp	NC, 00121$
	C$rle.c$21$5_0$7	= .
	.globl	C$rle.c$21$5_0$7
;rle.c:21: unsigned char command, count, value = 0;
	ld	-25 (ix), #0x00
	C$rle.c$24$4_0$7	= .
	.globl	C$rle.c$24$4_0$7
;rle.c:24: if( pos >= source_size )
	ld	a, -9 (ix)
	sub	a, -13 (ix)
	ld	a, -8 (ix)
	sbc	a, -12 (ix)
	jr	C, 00106$
	C$rle.c$26$5_0$8	= .
	.globl	C$rle.c$26$5_0$8
;rle.c:26: return 0;
	xor	a, a
	jp	00135$
00106$:
	C$rle.c$29$4_0$7	= .
	.globl	C$rle.c$29$4_0$7
;rle.c:29: command = source[ pos++ ];
	ld	a, -9 (ix)
	ld	-4 (ix), a
	ld	a, -8 (ix)
	ld	-3 (ix), a
	inc	-9 (ix)
	jr	NZ, 00217$
	inc	-8 (ix)
00217$:
	ld	a, -4 (ix)
	add	a, -11 (ix)
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, -10 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	C$rle.c$30$4_0$7	= .
	.globl	C$rle.c$30$4_0$7
;rle.c:30: count = command & 0x7f;
	ld	-1 (ix), a
	and	a, #0x7f
	C$rle.c$31$4_0$7	= .
	.globl	C$rle.c$31$4_0$7
;rle.c:31: if( !count || count > lane_length - written )
	ld	-24 (ix), a
	or	a, a
	jr	Z, 00107$
	ld	a, 6 (ix)
	sub	a, -6 (ix)
	ld	-3 (ix), a
	ld	a, 7 (ix)
	sbc	a, -5 (ix)
	ld	-2 (ix), a
	ld	a, -24 (ix)
	ld	-23 (ix), a
	ld	-22 (ix), #0x00
	ld	a, -3 (ix)
	sub	a, -23 (ix)
	ld	a, -2 (ix)
	sbc	a, -22 (ix)
	jr	NC, 00108$
00107$:
	C$rle.c$33$5_0$9	= .
	.globl	C$rle.c$33$5_0$9
;rle.c:33: return 0;
	xor	a, a
	jp	00135$
00108$:
	C$rle.c$36$4_0$7	= .
	.globl	C$rle.c$36$4_0$7
;rle.c:36: if( !( command & 0x80 ) )
	ld	a, -1 (ix)
	and	a, #0x80
	ld	-21 (ix), a
	ld	-20 (ix), #0x00
	xor	a, a
	or	a, -21 (ix)
	jr	NZ, 00148$
	C$rle.c$38$5_0$10	= .
	.globl	C$rle.c$38$5_0$10
;rle.c:38: if( pos >= source_size )
	ld	a, -9 (ix)
	sub	a, -13 (ix)
	ld	a, -8 (ix)
	sbc	a, -12 (ix)
	jr	C, 00111$
	C$rle.c$40$6_0$11	= .
	.globl	C$rle.c$40$6_0$11
;rle.c:40: return 0;
	xor	a, a
	jp	00135$
00111$:
	C$rle.c$42$5_0$10	= .
	.globl	C$rle.c$42$5_0$10
;rle.c:42: value = source[ pos++ ];
	ld	a, -9 (ix)
	ld	-4 (ix), a
	ld	a, -8 (ix)
	ld	-3 (ix), a
	inc	-9 (ix)
	jr	NZ, 00218$
	inc	-8 (ix)
00218$:
	ld	a, -11 (ix)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -10 (ix)
	adc	a, -3 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-25 (ix), a
	C$rle.c$45$1_0$3	= .
	.globl	C$rle.c$45$1_0$3
;rle.c:45: for( i = 0; i < count; ++i )
00148$:
	ld	a, -9 (ix)
	ld	-4 (ix), a
	ld	a, -8 (ix)
	ld	-3 (ix), a
	xor	a, a
	ld	-2 (ix), a
	ld	-1 (ix), a
00130$:
	ld	a, -2 (ix)
	sub	a, -23 (ix)
	ld	a, -1 (ix)
	sbc	a, -22 (ix)
	jp	NC, 00118$
	C$rle.c$47$6_0$13	= .
	.globl	C$rle.c$47$6_0$13
;rle.c:47: if( command & 0x80 )
	ld	a, -20 (ix)
	or	a, -21 (ix)
	jr	Z, 00117$
	C$rle.c$49$7_0$14	= .
	.globl	C$rle.c$49$7_0$14
;rle.c:49: if( pos >= source_size )
	ld	a, -4 (ix)
	sub	a, -13 (ix)
	ld	a, -3 (ix)
	sbc	a, -12 (ix)
	jr	C, 00115$
	C$rle.c$51$8_0$15	= .
	.globl	C$rle.c$51$8_0$15
;rle.c:51: return 0;
	xor	a, a
	jp	00135$
00115$:
	C$rle.c$53$7_0$14	= .
	.globl	C$rle.c$53$7_0$14
;rle.c:53: value = source[ pos++ ];
	ld	a, -4 (ix)
	ld	-17 (ix), a
	ld	a, -3 (ix)
	ld	-16 (ix), a
	inc	-4 (ix)
	jr	NZ, 00219$
	inc	-3 (ix)
00219$:
	ld	a, -4 (ix)
	ld	-9 (ix), a
	ld	a, -3 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	add	a, -17 (ix)
	ld	-15 (ix), a
	ld	a, -10 (ix)
	adc	a, -16 (ix)
	ld	-14 (ix), a
	ld	l, -15 (ix)
	ld	h, -14 (ix)
	ld	a, (hl)
	ld	-25 (ix), a
00117$:
	C$rle.c$55$6_0$13	= .
	.globl	C$rle.c$55$6_0$13
;rle.c:55: destination[ ( written + i ) * lanes + lane ] = value;
	ld	a, -6 (ix)
	add	a, -2 (ix)
	ld	-17 (ix), a
	ld	a, -5 (ix)
	adc	a, -1 (ix)
	ld	-16 (ix), a
	ld	a, 8 (ix)
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	l, -17 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -16 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	-19 (ix), e
	ld	-18 (ix), d
	ld	a, -7 (ix)
	ld	-15 (ix), a
	ld	-14 (ix), #0x00
	ld	a, -15 (ix)
	ld	-17 (ix), a
	ld	a, -14 (ix)
	ld	-16 (ix), a
	ld	a, -19 (ix)
	add	a, -17 (ix)
	ld	-15 (ix), a
	ld	a, -18 (ix)
	adc	a, -16 (ix)
	ld	-14 (ix), a
	ld	a, 4 (ix)
	add	a, -15 (ix)
	ld	-17 (ix), a
	ld	a, 5 (ix)
	adc	a, -14 (ix)
	ld	-16 (ix), a
	ld	l, -17 (ix)
	ld	h, -16 (ix)
	ld	a, -25 (ix)
	ld	(hl), a
	C$rle.c$45$5_0$12	= .
	.globl	C$rle.c$45$5_0$12
;rle.c:45: for( i = 0; i < count; ++i )
	inc	-2 (ix)
	jp	NZ,00130$
	inc	-1 (ix)
	jp	00130$
00118$:
	C$rle.c$58$4_0$7	= .
	.globl	C$rle.c$58$4_0$7
;rle.c:58: written += count;
	ld	a, -24 (ix)
	ld	c, #0x00
	add	a, -6 (ix)
	ld	-6 (ix), a
	ld	a, c
	adc	a, -5 (ix)
	ld	-5 (ix), a
	jp	00119$
00121$:
	C$rle.c$61$3_0$6	= .
	.globl	C$rle.c$61$3_0$6
;rle.c:61: if( !( last_lane_prefix && lane == lanes - 1 ) )
	ld	a, 9 (ix)
	or	a, a
	jr	Z, 00125$
	ld	c, 8 (ix)
	ld	b, #0x00
	dec	bc
	ld	l, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	cp	a, a
	sbc	hl, bc
	jr	Z, 00134$
00125$:
	C$rle.c$63$4_0$16	= .
	.globl	C$rle.c$63$4_0$16
;rle.c:63: if( pos >= source_size || source[ pos++ ] != 0 )
	ld	a, -9 (ix)
	sub	a, -13 (ix)
	ld	a, -8 (ix)
	sbc	a, -12 (ix)
	jr	NC, 00122$
	ld	c, -9 (ix)
	ld	b, -8 (ix)
	inc	-9 (ix)
	jr	NZ, 00222$
	inc	-8 (ix)
00222$:
	ld	l, -11 (ix)
	ld	h, -10 (ix)
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jr	Z, 00134$
00122$:
	C$rle.c$65$5_0$17	= .
	.globl	C$rle.c$65$5_0$17
;rle.c:65: return 0;
	xor	a, a
	jp	00135$
00134$:
	C$rle.c$16$2_0$5	= .
	.globl	C$rle.c$16$2_0$5
;rle.c:16: for( lane = 0; lane < lanes; ++lane )
	inc	-7 (ix)
	jp	00133$
00128$:
	C$rle.c$71$1_0$3	= .
	.globl	C$rle.c$71$1_0$3
;rle.c:71: return pos == source_size;
	ld	a, -9 (ix)
	sub	a, -13 (ix)
	jr	NZ, 00223$
	ld	a, -8 (ix)
	sub	a, -12 (ix)
	ld	a, #0x01
	jr	Z, 00224$
00223$:
	xor	a, a
00224$:
00135$:
	C$rle.c$72$1_0$3	= .
	.globl	C$rle.c$72$1_0$3
;rle.c:72: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	bc
	pop	bc
	pop	bc
	jp	(hl)
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
