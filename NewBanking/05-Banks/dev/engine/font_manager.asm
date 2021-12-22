;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module font_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _devkit_SMS_setTile
	.globl _devkit_SMS_setNextTileatXY
	.globl _engine_font_manager_draw_char
	.globl _engine_font_manager_draw_text
	.globl _engine_font_manager_draw_data
	.globl _engine_font_manager_draw_data_ZERO
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
	G$engine_font_manager_draw_char$0$0	= .
	.globl	G$engine_font_manager_draw_char$0$0
	C$font_manager.c$10$0_0$22	= .
	.globl	C$font_manager.c$10$0_0$22
;font_manager.c:10: void engine_font_manager_draw_char(unsigned char ch, unsigned char x, unsigned char y)
;	---------------------------------
; Function engine_font_manager_draw_char
; ---------------------------------
_engine_font_manager_draw_char::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$font_manager.c$12$2_0$22	= .
	.globl	C$font_manager.c$12$2_0$22
;font_manager.c:12: const unsigned char *pnt = font__tilemap__bin;
	C$font_manager.c$13$1_0$22	= .
	.globl	C$font_manager.c$13$1_0$22
;font_manager.c:13: unsigned char tile = ch - TEXT_ROOT;
	ld	a, 4 (ix)
	add	a, #0xe0
	ld	c, a
	C$font_manager.c$14$1_0$22	= .
	.globl	C$font_manager.c$14$1_0$22
;font_manager.c:14: devkit_SMS_setNextTileatXY(x, y);
	push	bc
	ld	h, 6 (ix)
	ld	l, 5 (ix)
	push	hl
	call	_devkit_SMS_setNextTileatXY
	pop	af
	pop	bc
	C$font_manager.c$15$1_0$22	= .
	.globl	C$font_manager.c$15$1_0$22
;font_manager.c:15: devkit_SMS_setTile(*pnt + tile);
	ld	a, (#_font__tilemap__bin + 0)
	ld	l, a
	ld	h, #0x00
	ld	b, #0x00
	add	hl, bc
	push	hl
	call	_devkit_SMS_setTile
	pop	af
	C$font_manager.c$16$1_0$22	= .
	.globl	C$font_manager.c$16$1_0$22
;font_manager.c:16: }
	pop	ix
	C$font_manager.c$16$1_0$22	= .
	.globl	C$font_manager.c$16$1_0$22
	XG$engine_font_manager_draw_char$0$0	= .
	.globl	XG$engine_font_manager_draw_char$0$0
	ret
	G$engine_font_manager_draw_text$0$0	= .
	.globl	G$engine_font_manager_draw_text$0$0
	C$font_manager.c$18$1_0$24	= .
	.globl	C$font_manager.c$18$1_0$24
;font_manager.c:18: void engine_font_manager_draw_text(unsigned char *text, unsigned char x, unsigned char y)
;	---------------------------------
; Function engine_font_manager_draw_text
; ---------------------------------
_engine_font_manager_draw_text::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	C$font_manager.c$20$2_0$24	= .
	.globl	C$font_manager.c$20$2_0$24
;font_manager.c:20: const unsigned char *pnt = font__tilemap__bin;
	C$font_manager.c$22$1_0$24	= .
	.globl	C$font_manager.c$22$1_0$24
;font_manager.c:22: while ( '\0' != text[idx] )
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
	C$font_manager.c$24$2_0$25	= .
	.globl	C$font_manager.c$24$2_0$25
;font_manager.c:24: unsigned char ch = text[idx];
	C$font_manager.c$25$2_0$25	= .
	.globl	C$font_manager.c$25$2_0$25
;font_manager.c:25: unsigned char tile = ch - TEXT_ROOT;
	add	a, #0xe0
	ld	b, a
	C$font_manager.c$26$2_0$25	= .
	.globl	C$font_manager.c$26$2_0$25
;font_manager.c:26: devkit_SMS_setNextTileatXY(x++, y);
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
	C$font_manager.c$27$2_0$25	= .
	.globl	C$font_manager.c$27$2_0$25
;font_manager.c:27: devkit_SMS_setTile(*pnt + tile);
	ld	a, (#_font__tilemap__bin + 0)
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
	C$font_manager.c$28$2_0$25	= .
	.globl	C$font_manager.c$28$2_0$25
;font_manager.c:28: idx++;
	inc	c
	jr	00101$
00104$:
	C$font_manager.c$30$1_0$24	= .
	.globl	C$font_manager.c$30$1_0$24
;font_manager.c:30: }
	inc	sp
	pop	ix
	C$font_manager.c$30$1_0$24	= .
	.globl	C$font_manager.c$30$1_0$24
	XG$engine_font_manager_draw_text$0$0	= .
	.globl	XG$engine_font_manager_draw_text$0$0
	ret
	G$engine_font_manager_draw_data$0$0	= .
	.globl	G$engine_font_manager_draw_data$0$0
	C$font_manager.c$32$1_0$28	= .
	.globl	C$font_manager.c$32$1_0$28
;font_manager.c:32: void engine_font_manager_draw_data(unsigned int data, unsigned char x, unsigned char y)
;	---------------------------------
; Function engine_font_manager_draw_data
; ---------------------------------
_engine_font_manager_draw_data::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-9
	add	hl, sp
	ld	sp, hl
	C$font_manager.c$34$2_0$28	= .
	.globl	C$font_manager.c$34$2_0$28
;font_manager.c:34: const unsigned char *pnt = font__tilemap__bin;
	C$font_manager.c$43$3_0$29	= .
	.globl	C$font_manager.c$43$3_0$29
;font_manager.c:43: for (idx = 0; idx < DATA_LONG; ++idx)
	ld	hl, #0
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	a, 6 (ix)
	ld	-2 (ix), a
	ld	-1 (ix), #0
00106$:
	C$font_manager.c$45$2_0$28	= .
	.globl	C$font_manager.c$45$2_0$28
;font_manager.c:45: quotient = data / UNIT_ROOT;
	push	bc
	ld	hl, #0x000a
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	__divuint
	pop	af
	pop	af
	ex	de, hl
	pop	bc
	ld	-5 (ix), e
	ld	-4 (ix), d
	C$font_manager.c$46$2_0$28	= .
	.globl	C$font_manager.c$46$2_0$28
;font_manager.c:46: remainder = data % UNIT_ROOT;
	push	bc
	push	de
	ld	hl, #0x000a
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	__moduint
	pop	af
	pop	af
	pop	de
	pop	bc
	ld	-3 (ix), l
	C$font_manager.c$48$3_0$29	= .
	.globl	C$font_manager.c$48$3_0$29
;font_manager.c:48: hold[idx] = remainder;
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, -3 (ix)
	ld	(hl), a
	C$font_manager.c$49$3_0$29	= .
	.globl	C$font_manager.c$49$3_0$29
;font_manager.c:49: data /= UNIT_ROOT;
	ld	4 (ix), e
	ld	5 (ix), d
	C$font_manager.c$51$3_0$29	= .
	.globl	C$font_manager.c$51$3_0$29
;font_manager.c:51: tile = hold[idx] + DATA_ROOT;
	ld	a, -3 (ix)
	add	a, #0x10
	ld	e, a
	C$font_manager.c$52$3_0$29	= .
	.globl	C$font_manager.c$52$3_0$29
;font_manager.c:52: if (0 == quotient && 0 == remainder && idx > 0)
	ld	a, -4 (ix)
	or	a, -5 (ix)
	jr	NZ, 00102$
	ld	a, -3 (ix)
	or	a, a
	jr	NZ, 00102$
	ld	a, -1 (ix)
	or	a, a
	jr	Z, 00102$
	C$font_manager.c$55$4_0$30	= .
	.globl	C$font_manager.c$55$4_0$30
;font_manager.c:55: tile = 0;
	ld	e, #0x00
00102$:
	C$font_manager.c$58$3_0$29	= .
	.globl	C$font_manager.c$58$3_0$29
;font_manager.c:58: devkit_SMS_setNextTileatXY(x--, y);
	ld	d, -2 (ix)
	dec	-2 (ix)
	ld	a, -2 (ix)
	ld	6 (ix), a
	push	bc
	push	de
	ld	a, 7 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_devkit_SMS_setNextTileatXY
	pop	af
	pop	de
	pop	bc
	C$font_manager.c$59$3_0$29	= .
	.globl	C$font_manager.c$59$3_0$29
;font_manager.c:59: devkit_SMS_setTile(*pnt + tile);
	ld	a, (#_font__tilemap__bin + 0)
	ld	l, a
	ld	d, #0x00
	ld	a, e
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	push	bc
	push	hl
	call	_devkit_SMS_setTile
	pop	af
	pop	bc
	C$font_manager.c$43$2_0$28	= .
	.globl	C$font_manager.c$43$2_0$28
;font_manager.c:43: for (idx = 0; idx < DATA_LONG; ++idx)
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x04
	jp	C, 00106$
	C$font_manager.c$61$2_0$28	= .
	.globl	C$font_manager.c$61$2_0$28
;font_manager.c:61: }
	ld	sp, ix
	pop	ix
	C$font_manager.c$61$2_0$28	= .
	.globl	C$font_manager.c$61$2_0$28
	XG$engine_font_manager_draw_data$0$0	= .
	.globl	XG$engine_font_manager_draw_data$0$0
	ret
	G$engine_font_manager_draw_data_ZERO$0$0	= .
	.globl	G$engine_font_manager_draw_data_ZERO$0$0
	C$font_manager.c$63$2_0$33	= .
	.globl	C$font_manager.c$63$2_0$33
;font_manager.c:63: void engine_font_manager_draw_data_ZERO(unsigned int data, unsigned char x, unsigned char y)
;	---------------------------------
; Function engine_font_manager_draw_data_ZERO
; ---------------------------------
_engine_font_manager_draw_data_ZERO::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
	C$font_manager.c$65$2_0$33	= .
	.globl	C$font_manager.c$65$2_0$33
;font_manager.c:65: const unsigned char *pnt = font__tilemap__bin;
	C$font_manager.c$72$3_0$34	= .
	.globl	C$font_manager.c$72$3_0$34
;font_manager.c:72: for (idx = 0; idx < DATA_LONG; ++idx)
	ld	hl, #0
	add	hl, sp
	ld	-3 (ix), l
	ld	-2 (ix), h
	ld	a, 6 (ix)
	ld	-1 (ix), a
	ld	c, #0x00
00102$:
	C$font_manager.c$74$3_0$34	= .
	.globl	C$font_manager.c$74$3_0$34
;font_manager.c:74: hold[idx] = data % UNIT_ROOT;
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	b, #0x00
	add	hl, bc
	push	hl
	push	bc
	ld	de, #0x000a
	push	de
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	push	de
	call	__moduint
	pop	af
	pop	af
	ex	de, hl
	pop	bc
	pop	hl
	ld	b, e
	ld	(hl), b
	C$font_manager.c$75$2_0$33	= .
	.globl	C$font_manager.c$75$2_0$33
;font_manager.c:75: data /= UNIT_ROOT;
	push	bc
	ld	hl, #0x000a
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	__divuint
	pop	af
	pop	af
	pop	bc
	ld	4 (ix), l
	ld	5 (ix), h
	C$font_manager.c$77$3_0$34	= .
	.globl	C$font_manager.c$77$3_0$34
;font_manager.c:77: tile = hold[idx] + DATA_ROOT;
	ld	a, b
	add	a, #0x10
	ld	e, a
	C$font_manager.c$79$3_0$34	= .
	.globl	C$font_manager.c$79$3_0$34
;font_manager.c:79: devkit_SMS_setNextTileatXY(x--, y);
	ld	b, -1 (ix)
	dec	-1 (ix)
	ld	a, -1 (ix)
	ld	6 (ix), a
	push	bc
	push	de
	ld	a, 7 (ix)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_devkit_SMS_setNextTileatXY
	pop	af
	pop	de
	pop	bc
	C$font_manager.c$80$3_0$34	= .
	.globl	C$font_manager.c$80$3_0$34
;font_manager.c:80: devkit_SMS_setTile(*pnt + tile);
	ld	a, (#_font__tilemap__bin + 0)
	ld	l, a
	ld	h, #0x00
	ld	d, #0x00
	add	hl, de
	push	bc
	push	hl
	call	_devkit_SMS_setTile
	pop	af
	pop	bc
	C$font_manager.c$72$2_0$33	= .
	.globl	C$font_manager.c$72$2_0$33
;font_manager.c:72: for (idx = 0; idx < DATA_LONG; ++idx)
	inc	c
	ld	a, c
	sub	a, #0x04
	jr	C, 00102$
	C$font_manager.c$82$2_0$33	= .
	.globl	C$font_manager.c$82$2_0$33
;font_manager.c:82: }
	ld	sp, ix
	pop	ix
	C$font_manager.c$82$2_0$33	= .
	.globl	C$font_manager.c$82$2_0$33
	XG$engine_font_manager_draw_data_ZERO$0$0	= .
	.globl	XG$engine_font_manager_draw_data_ZERO$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
