;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module font_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _devkit_SMS_setNextTileatXY
	.globl _devkit_SMS_setTile
	.globl _engine_font_manager_char
	.globl _engine_font_manager_text
	.globl _engine_font_manager_data
	.globl _engine_font_manager_valu
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
	G$engine_font_manager_char$0$0	= .
	.globl	G$engine_font_manager_char$0$0
	C$font_manager.c$13$0_0$88	= .
	.globl	C$font_manager.c$13$0_0$88
;font_manager.c:13: void engine_font_manager_char( unsigned char ch, unsigned char x, unsigned char y )
;	---------------------------------
; Function engine_font_manager_char
; ---------------------------------
_engine_font_manager_char::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$font_manager.c$15$2_0$88	= .
	.globl	C$font_manager.c$15$2_0$88
;font_manager.c:15: const unsigned char *pnt = font_tiles__tilemap__bin;
	C$font_manager.c$16$1_0$88	= .
	.globl	C$font_manager.c$16$1_0$88
;font_manager.c:16: unsigned char tile = ch - TEXT_ROOT;
	ld	a, 4 (ix)
	add	a, #0xe0
	ld	c, a
	C$font_manager.c$19$1_0$88	= .
	.globl	C$font_manager.c$19$1_0$88
;font_manager.c:19: devkit_SMS_setNextTileatXY( x, y );
	push	bc
	ld	h, 6 (ix)
	ld	l, 5 (ix)
	push	hl
	call	_devkit_SMS_setNextTileatXY
	pop	af
	pop	bc
	C$font_manager.c$20$1_0$88	= .
	.globl	C$font_manager.c$20$1_0$88
;font_manager.c:20: devkit_SMS_setTile( *pnt + tile );
	ld	a, (#_font_tiles__tilemap__bin + 0)
	ld	l, a
	ld	h, #0x00
	ld	b, #0x00
	add	hl, bc
	push	hl
	call	_devkit_SMS_setTile
	pop	af
	C$font_manager.c$21$1_0$88	= .
	.globl	C$font_manager.c$21$1_0$88
;font_manager.c:21: }
	pop	ix
	C$font_manager.c$21$1_0$88	= .
	.globl	C$font_manager.c$21$1_0$88
	XG$engine_font_manager_char$0$0	= .
	.globl	XG$engine_font_manager_char$0$0
	ret
	G$engine_font_manager_text$0$0	= .
	.globl	G$engine_font_manager_text$0$0
	C$font_manager.c$23$1_0$90	= .
	.globl	C$font_manager.c$23$1_0$90
;font_manager.c:23: void engine_font_manager_text( unsigned char *text, unsigned char x, unsigned char y )
;	---------------------------------
; Function engine_font_manager_text
; ---------------------------------
_engine_font_manager_text::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	C$font_manager.c$25$2_0$90	= .
	.globl	C$font_manager.c$25$2_0$90
;font_manager.c:25: const unsigned char *pnt = font_tiles__tilemap__bin;
	C$font_manager.c$29$1_0$90	= .
	.globl	C$font_manager.c$29$1_0$90
;font_manager.c:29: while( '\0' != text[ idx ] )
	ld	a, 6 (ix)
	ld	-1 (ix), a
	ld	c, #0x00
00101$:
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	b, #0x00
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jr	Z, 00104$
	C$font_manager.c$31$2_0$91	= .
	.globl	C$font_manager.c$31$2_0$91
;font_manager.c:31: unsigned char tile = text[ idx ] - TEXT_ROOT;
	add	a, #0xe0
	ld	b, a
	C$font_manager.c$32$2_0$91	= .
	.globl	C$font_manager.c$32$2_0$91
;font_manager.c:32: devkit_SMS_setNextTileatXY( x++, y );
	ld	d, -1 (ix)
	inc	-1 (ix)
	ld	a, -1 (ix)
	ld	6 (ix), a
	push	bc
	ld	a, 7 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_devkit_SMS_setNextTileatXY
	pop	af
	pop	bc
	C$font_manager.c$33$2_0$91	= .
	.globl	C$font_manager.c$33$2_0$91
;font_manager.c:33: devkit_SMS_setTile( *pnt + tile );
	ld	a, (#_font_tiles__tilemap__bin + 0)
	ld	e, a
	ld	d, #0x00
	ld	l, b
	ld	h, #0x00
	add	hl, de
	push	bc
	push	hl
	call	_devkit_SMS_setTile
	pop	af
	pop	bc
	C$font_manager.c$34$2_0$91	= .
	.globl	C$font_manager.c$34$2_0$91
;font_manager.c:34: idx++;
	inc	c
	jr	00101$
00104$:
	C$font_manager.c$36$1_0$90	= .
	.globl	C$font_manager.c$36$1_0$90
;font_manager.c:36: }
	inc	sp
	pop	ix
	C$font_manager.c$36$1_0$90	= .
	.globl	C$font_manager.c$36$1_0$90
	XG$engine_font_manager_text$0$0	= .
	.globl	XG$engine_font_manager_text$0$0
	ret
	G$engine_font_manager_data$0$0	= .
	.globl	G$engine_font_manager_data$0$0
	C$font_manager.c$38$1_0$93	= .
	.globl	C$font_manager.c$38$1_0$93
;font_manager.c:38: void engine_font_manager_data( unsigned int data, unsigned char x, unsigned char y )
;	---------------------------------
; Function engine_font_manager_data
; ---------------------------------
_engine_font_manager_data::
	C$font_manager.c$40$1_0$93	= .
	.globl	C$font_manager.c$40$1_0$93
;font_manager.c:40: print_data( DATA_LONG, data, x, y );
	ld	iy, #5
	add	iy, sp
	ld	a, 0 (iy)
	push	af
	inc	sp
	ld	a, -1 (iy)
	dec	iy
	push	af
	inc	sp
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	ld	hl, #0x0005
	push	hl
	call	_print_data
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$font_manager.c$41$1_0$93	= .
	.globl	C$font_manager.c$41$1_0$93
;font_manager.c:41: }
	C$font_manager.c$41$1_0$93	= .
	.globl	C$font_manager.c$41$1_0$93
	XG$engine_font_manager_data$0$0	= .
	.globl	XG$engine_font_manager_data$0$0
	ret
	G$engine_font_manager_valu$0$0	= .
	.globl	G$engine_font_manager_valu$0$0
	C$font_manager.c$43$1_0$95	= .
	.globl	C$font_manager.c$43$1_0$95
;font_manager.c:43: void engine_font_manager_valu( unsigned int data, unsigned char x, unsigned char y )
;	---------------------------------
; Function engine_font_manager_valu
; ---------------------------------
_engine_font_manager_valu::
	C$font_manager.c$45$1_0$95	= .
	.globl	C$font_manager.c$45$1_0$95
;font_manager.c:45: print_data( SING_LONG, data, x, y );
	ld	iy, #5
	add	iy, sp
	ld	a, 0 (iy)
	push	af
	inc	sp
	ld	a, -1 (iy)
	dec	iy
	push	af
	inc	sp
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	ld	hl, #0x0001
	push	hl
	call	_print_data
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$font_manager.c$46$1_0$95	= .
	.globl	C$font_manager.c$46$1_0$95
;font_manager.c:46: }
	C$font_manager.c$46$1_0$95	= .
	.globl	C$font_manager.c$46$1_0$95
	XG$engine_font_manager_valu$0$0	= .
	.globl	XG$engine_font_manager_valu$0$0
	ret
	Ffont_manager$print_data$0$0	= .
	.globl	Ffont_manager$print_data$0$0
	C$font_manager.c$48$1_0$98	= .
	.globl	C$font_manager.c$48$1_0$98
;font_manager.c:48: static void print_data( unsigned wide, unsigned int data, unsigned char x, unsigned char y )
;	---------------------------------
; Function print_data
; ---------------------------------
_print_data:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-9
	add	hl, sp
	ld	sp, hl
	C$font_manager.c$50$2_0$98	= .
	.globl	C$font_manager.c$50$2_0$98
;font_manager.c:50: const unsigned char *pnt = font_tiles__tilemap__bin;
	C$font_manager.c$59$3_0$99	= .
	.globl	C$font_manager.c$59$3_0$99
;font_manager.c:59: for( idx = 0; idx < wide; ++idx )
	ld	hl, #0
	add	hl, sp
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	c, 8 (ix)
	ld	-1 (ix), #0
00107$:
	ld	a, -1 (ix)
	ld	b, #0x00
	sub	a, 4 (ix)
	ld	a, b
	sbc	a, 5 (ix)
	jp	NC, 00109$
	C$font_manager.c$61$2_0$98	= .
	.globl	C$font_manager.c$61$2_0$98
;font_manager.c:61: quotient = data / UNIT_ROOT;
	push	bc
	ld	hl, #0x000a
	push	hl
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	call	__divuint
	pop	af
	ex	(sp),hl
	pop	iy
	pop	bc
	push	iy
	pop	de
	C$font_manager.c$62$2_0$98	= .
	.globl	C$font_manager.c$62$2_0$98
;font_manager.c:62: remainder = data % UNIT_ROOT;
	push	bc
	push	de
	push	iy
	ld	hl, #0x000a
	push	hl
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	iy
	pop	de
	pop	bc
	ld	b, l
	C$font_manager.c$64$3_0$99	= .
	.globl	C$font_manager.c$64$3_0$99
;font_manager.c:64: hold[ idx ] = remainder;
	ld	a, -4 (ix)
	add	a, -1 (ix)
	ld	l, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), b
	C$font_manager.c$65$3_0$99	= .
	.globl	C$font_manager.c$65$3_0$99
;font_manager.c:65: data /= UNIT_ROOT;
	push	iy
	pop	af
	ld	7 (ix), a
	push	iy
	dec	sp
	pop	af
	ld	6 (ix), a
	inc	sp
	C$font_manager.c$67$3_0$99	= .
	.globl	C$font_manager.c$67$3_0$99
;font_manager.c:67: tile = hold[ idx ] + DATA_ROOT;
	ld	a, b
	add	a, #0x10
	ld	-2 (ix), a
	C$font_manager.c$68$3_0$99	= .
	.globl	C$font_manager.c$68$3_0$99
;font_manager.c:68: if( 0 == quotient && 0 == remainder && idx > 0 )
	ld	a, d
	or	a,e
	jr	NZ, 00102$
	or	a,b
	jr	NZ, 00102$
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00102$
	C$font_manager.c$71$4_0$100	= .
	.globl	C$font_manager.c$71$4_0$100
;font_manager.c:71: tile = 0;
	ld	-2 (ix), #0
00102$:
	C$font_manager.c$74$3_0$99	= .
	.globl	C$font_manager.c$74$3_0$99
;font_manager.c:74: devkit_SMS_setNextTileatXY( x--, y );
	ld	b, c
	dec	c
	ld	8 (ix), c
	push	bc
	ld	a, 9 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_devkit_SMS_setNextTileatXY
	pop	af
	pop	bc
	C$font_manager.c$75$3_0$99	= .
	.globl	C$font_manager.c$75$3_0$99
;font_manager.c:75: devkit_SMS_setTile( *pnt + tile );
	ld	a, (#_font_tiles__tilemap__bin + 0)
	ld	e, a
	ld	d, #0x00
	ld	a, -2 (ix)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	push	bc
	push	hl
	call	_devkit_SMS_setTile
	pop	af
	pop	bc
	C$font_manager.c$59$2_0$98	= .
	.globl	C$font_manager.c$59$2_0$98
;font_manager.c:59: for( idx = 0; idx < wide; ++idx )
	inc	-1 (ix)
	jp	00107$
00109$:
	C$font_manager.c$77$2_0$98	= .
	.globl	C$font_manager.c$77$2_0$98
;font_manager.c:77: }
	ld	sp, ix
	pop	ix
	C$font_manager.c$77$2_0$98	= .
	.globl	C$font_manager.c$77$2_0$98
	XFfont_manager$print_data$0$0	= .
	.globl	XFfont_manager$print_data$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
