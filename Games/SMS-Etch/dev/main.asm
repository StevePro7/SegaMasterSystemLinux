;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.6.9 #9960 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___SMS__SDSC_signature
	.globl ___SMS__SDSC_descr
	.globl ___SMS__SDSC_name
	.globl ___SMS__SDSC_author
	.globl ___SMS__SEGA_signature
	.globl _main
	.globl _interruptibleFrameDelay
	.globl _inputDiag_inlib
	.globl _runScript
	.globl _effect1
	.globl _effect4
	.globl _effect3
	.globl _effect2
	.globl _stepIt
	.globl _tempMoveSprite
	.globl _setupSprite
	.globl _cheapCos
	.globl _cheapSin
	.globl _addRotatedXY
	.globl _drawString
	.globl _inlib_poll
	.globl _inlib_init
	.globl _savedata_commit
	.globl _savedata_init
	.globl _savestruct_valid
	.globl _savestruct_reset
	.globl _util_smsClear
	.globl _PSGSFXFrame
	.globl _PSGFrame
	.globl _PSGStop
	.globl _PSGPlayNoRepeat
	.globl _SMS_resetPauseRequest
	.globl _SMS_queryPauseRequested
	.globl _SMS_getKeysPressed
	.globl _SMS_getKeysStatus
	.globl _SMS_loadSpritePalette
	.globl _SMS_copySpritestoSAT
	.globl _SMS_hideSprite
	.globl _SMS_updateSpritePosition
	.globl _SMS_addSprite
	.globl _SMS_crt0_RST18
	.globl _SMS_crt0_RST08
	.globl _SMS_loadTileMap
	.globl _SMS_loadTiles
	.globl _SMS_waitForVBlank
	.globl _SMS_useFirstHalfTilesforSprites
	.globl _SMS_setBGScrollY
	.globl _SMS_setBGScrollX
	.globl _SMS_VDPturnOffFeature
	.globl _SMS_VDPturnOnFeature
	.globl _SMS_init
	.globl _abs
	.globl _printf
	.globl _script
	.globl _start_pressed
	.globl _drawbuf
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _vsync_keycheck
	.globl _updateDisplay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
G$VDPDataPort$0$0 == 0x00be
_VDPDataPort	=	0x00be
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$ROM_bank_to_be_mapped_on_slot2$0$0 == 0xffff
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
G$SRAM_bank_to_be_mapped_on_slot2$0$0 == 0xfffc
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
G$SMS_SRAM$0$0 == 0x8000
_SMS_SRAM	=	0x8000
Fmain$spriteIds$0$0==.
_spriteIds:
	.ds 7
Fmain$spriteX$0$0==.
_spriteX:
	.ds 7
Fmain$spriteY$0$0==.
_spriteY:
	.ds 7
G$drawbuf$0$0==.
_drawbuf::
	.ds 2
G$start_pressed$0$0==.
_start_pressed::
	.ds 1
Lmain.clearDisplay$msk$1$150==.
_clearDisplay_msk_1_150:
	.ds 1
Lmain.clearDisplay$off$1$150==.
_clearDisplay_off_1_150:
	.ds 1
Lmain.runScript$frame$1$221==.
_runScript_frame_1_221:
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
Fmain$drawing$0$0==.
_drawing:
	.ds 1
Fmain$paddle_mode$0$0==.
_paddle_mode:
	.ds 1
Fmain$fill_mode$0$0==.
_fill_mode:
	.ds 1
G$script$0$0==.
_script::
	.ds 364
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
	Fmain$clearDisplay$0$0	= .
	.globl	Fmain$clearDisplay$0$0
	C$main.c$137$1$150	= .
	.globl	C$main.c$137$1$150
;main.c:137: static uint8_t msk = 0xAA;
	ld	iy, #_clearDisplay_msk_1_150
	ld	0 (iy), #0xaa
	C$main.c$138$1$150	= .
	.globl	C$main.c$138$1$150
;main.c:138: static uint8_t off = 0;
	ld	iy, #_clearDisplay_off_1_150
	ld	0 (iy), #0x00
	G$runScript$0$0	= .
	.globl	G$runScript$0$0
	C$main.c$576$1$221	= .
	.globl	C$main.c$576$1$221
;main.c:576: static uint16_t frame = 0;
	ld	hl, #0x0000
	ld	(_runScript_frame_1_221), hl
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$setupSprite$0$0	= .
	.globl	G$setupSprite$0$0
	C$main.c$42$0$0	= .
	.globl	C$main.c$42$0$0
;main.c:42: void setupSprite(uint8_t sidx, uint8_t x, uint8_t y, uint8_t tile_id)
;	---------------------------------
; Function setupSprite
; ---------------------------------
_setupSprite::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$main.c$44$1$136	= .
	.globl	C$main.c$44$1$136
;main.c:44: spriteX[sidx] = x;
	ld	bc, #_spriteX+0
	ld	l,4 (ix)
	ld	h,#0x00
	add	hl, bc
	ld	a, 5 (ix)
	ld	(hl), a
	C$main.c$45$1$136	= .
	.globl	C$main.c$45$1$136
;main.c:45: spriteY[sidx] = y;
	ld	bc, #_spriteY+0
	ld	l,4 (ix)
	ld	h,#0x00
	add	hl, bc
	ld	a, 6 (ix)
	ld	(hl), a
	C$main.c$46$1$136	= .
	.globl	C$main.c$46$1$136
;main.c:46: spriteIds[sidx] = SMS_addSprite(x, y, tile_id);
	ld	a, 4 (ix)
	add	a, #<(_spriteIds)
	ld	c, a
	ld	a, #0x00
	adc	a, #>(_spriteIds)
	ld	b, a
	push	bc
	ld	h, 7 (ix)
	ld	l, 6 (ix)
	push	hl
	ld	a, 5 (ix)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	ld	a, l
	pop	bc
	ld	(bc), a
	pop	ix
	C$main.c$47$1$136	= .
	.globl	C$main.c$47$1$136
	XG$setupSprite$0$0	= .
	.globl	XG$setupSprite$0$0
	ret
	G$tempMoveSprite$0$0	= .
	.globl	G$tempMoveSprite$0$0
	C$main.c$55$1$136	= .
	.globl	C$main.c$55$1$136
;main.c:55: void tempMoveSprite(uint8_t sidx, int8_t x, int8_t y)
;	---------------------------------
; Function tempMoveSprite
; ---------------------------------
_tempMoveSprite::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$main.c$57$1$138	= .
	.globl	C$main.c$57$1$138
;main.c:57: SMS_updateSpritePosition(spriteIds[sidx], spriteX[sidx] + x, spriteY[sidx] + y);
	ld	bc, #_spriteY+0
	ld	l,4 (ix)
	ld	h,#0x00
	add	hl, bc
	ld	a, (hl)
	add	a, 6 (ix)
	ld	b, a
	ld	de, #_spriteX+0
	ld	l,4 (ix)
	ld	h,#0x00
	add	hl, de
	ld	c, (hl)
	ld	a, c
	add	a, 5 (ix)
	ld	d, a
	ld	a, #<(_spriteIds)
	add	a, 4 (ix)
	ld	l, a
	ld	a, #>(_spriteIds)
	adc	a, #0x00
	ld	h, a
	ld	a, (hl)
	push	bc
	inc	sp
	ld	e, a
	push	de
	call	_SMS_updateSpritePosition
	pop	af
	inc	sp
	pop	ix
	C$main.c$58$1$138	= .
	.globl	C$main.c$58$1$138
	XG$tempMoveSprite$0$0	= .
	.globl	XG$tempMoveSprite$0$0
	ret
	G$vsync_keycheck$0$0	= .
	.globl	G$vsync_keycheck$0$0
	C$main.c$62$1$138	= .
	.globl	C$main.c$62$1$138
;main.c:62: void vsync_keycheck()
;	---------------------------------
; Function vsync_keycheck
; ---------------------------------
_vsync_keycheck::
	C$main.c$64$1$139	= .
	.globl	C$main.c$64$1$139
;main.c:64: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$main.c$65$1$139	= .
	.globl	C$main.c$65$1$139
;main.c:65: SMS_copySpritestoSAT();
	call	_SMS_copySpritestoSAT
	C$main.c$66$1$139	= .
	.globl	C$main.c$66$1$139
;main.c:66: PSGFrame();
	call	_PSGFrame
	C$main.c$67$1$139	= .
	.globl	C$main.c$67$1$139
;main.c:67: PSGSFXFrame();
	call	_PSGSFXFrame
	C$main.c$68$1$139	= .
	.globl	C$main.c$68$1$139
;main.c:68: inlib_poll();
	call	_inlib_poll
	C$main.c$72$1$139	= .
	.globl	C$main.c$72$1$139
;main.c:72: if (inlib_port1.sms.buttons)
	ld	a, (#(_inlib_port1 + 0x0001) + 0)
	or	a, a
	ret	Z
	C$main.c$74$2$140	= .
	.globl	C$main.c$74$2$140
;main.c:74: start_pressed = 1;
	ld	hl,#_start_pressed + 0
	ld	(hl), #0x01
	C$main.c$76$1$139	= .
	.globl	C$main.c$76$1$139
	XG$vsync_keycheck$0$0	= .
	.globl	XG$vsync_keycheck$0$0
	ret
	Fmain$blitTile$0$0	= .
	.globl	Fmain$blitTile$0$0
	C$main.c$92$1$139	= .
	.globl	C$main.c$92$1$139
;main.c:92: static void blitTile(uint8_t *data, uint16_t tilefrom, unsigned char n_tiles)
;	---------------------------------
; Function blitTile
; ---------------------------------
_blitTile:
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	C$main.c$98$1$142	= .
	.globl	C$main.c$98$1$142
;main.c:98: __endasm;
	di
	C$main.c$100$1$142	= .
	.globl	C$main.c$100$1$142
;main.c:100: SMS_setAddr(0x4000 | (tilefrom * 32));
	ld	l,6 (ix)
	ld	h,7 (ix)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	set	6, h
	rst	#0x08
	C$main.c$102$1$142	= .
	.globl	C$main.c$102$1$142
;main.c:102: for (i = 0; i < n_tiles * 8; i++)
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	-1 (ix), #0x00
00103$:
	ld	l, 8 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00116$
	xor	a, #0x80
00116$:
	jp	P, 00101$
	C$main.c$104$3$144	= .
	.globl	C$main.c$104$3$144
;main.c:104: v = ~(*data++);
	ld	a, (bc)
	inc	bc
	cpl
	C$main.c$105$3$144	= .
	.globl	C$main.c$105$3$144
;main.c:105: VDPDataPort = v;
	ld	e,a
	out	(_VDPDataPort), a
	C$main.c$106$3$144	= .
	.globl	C$main.c$106$3$144
;main.c:106: WAIT_VRAM;
	nop 
	nop 
	nop 
	nop 
	nop 
	C$main.c$107$3$144	= .
	.globl	C$main.c$107$3$144
;main.c:107: VDPDataPort = v;
	ld	a, e
	out	(_VDPDataPort), a
	C$main.c$108$3$144	= .
	.globl	C$main.c$108$3$144
;main.c:108: WAIT_VRAM;
	nop 
	nop 
	nop 
	nop 
	nop 
	C$main.c$109$3$144	= .
	.globl	C$main.c$109$3$144
;main.c:109: VDPDataPort = v;
	ld	a, e
	out	(_VDPDataPort), a
	C$main.c$110$3$144	= .
	.globl	C$main.c$110$3$144
;main.c:110: WAIT_VRAM;
	nop 
	nop 
	nop 
	nop 
	nop 
	C$main.c$111$3$144	= .
	.globl	C$main.c$111$3$144
;main.c:111: VDPDataPort = v;
	ld	a, e
	out	(_VDPDataPort), a
	C$main.c$112$3$144	= .
	.globl	C$main.c$112$3$144
;main.c:112: WAIT_VRAM;
	nop 
	nop 
	nop 
	nop 
	nop 
	C$main.c$102$2$143	= .
	.globl	C$main.c$102$2$143
;main.c:102: for (i = 0; i < n_tiles * 8; i++)
	inc	-1 (ix)
	jr	00103$
00101$:
	C$main.c$117$1$142	= .
	.globl	C$main.c$117$1$142
;main.c:117: __endasm;
	ei
	inc	sp
	pop	ix
	C$main.c$118$1$142	= .
	.globl	C$main.c$118$1$142
	XFmain$blitTile$0$0	= .
	.globl	XFmain$blitTile$0$0
	ret
	Fmain$syncDisplay$0$0	= .
	.globl	Fmain$syncDisplay$0$0
	C$main.c$120$1$142	= .
	.globl	C$main.c$120$1$142
;main.c:120: static void syncDisplay(void)
;	---------------------------------
; Function syncDisplay
; ---------------------------------
_syncDisplay:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	C$main.c$124$2$147	= .
	.globl	C$main.c$124$2$147
;main.c:124: for (y = 0; y < DRAWAREA_TILES_H; y++)
	ld	bc, #0x0000
00102$:
	C$main.c$128$3$148	= .
	.globl	C$main.c$128$3$148
;main.c:128: DRAWAREA_FIRST_TID + y * DRAWAREA_TILES_W,
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #0x0048
	add	hl,de
	ex	(sp), hl
	C$main.c$127$3$148	= .
	.globl	C$main.c$127$3$148
;main.c:127: blitTile(drawbuf + (y * DRAWAREA_TILES_W) * 8,
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	iy, (_drawbuf)
	add	iy, de
	push	bc
	ld	a, #0x18
	push	af
	inc	sp
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	push	iy
	call	_blitTile
	pop	af
	pop	af
	inc	sp
	pop	bc
	C$main.c$124$2$147	= .
	.globl	C$main.c$124$2$147
;main.c:124: for (y = 0; y < DRAWAREA_TILES_H; y++)
	inc	bc
	ld	a, c
	sub	a, #0x0f
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00102$
	ld	sp, ix
	pop	ix
	C$main.c$131$2$147	= .
	.globl	C$main.c$131$2$147
	XFmain$syncDisplay$0$0	= .
	.globl	XFmain$syncDisplay$0$0
	ret
	Fmain$clearDisplay$0$0	= .
	.globl	Fmain$clearDisplay$0$0
	C$main.c$133$2$147	= .
	.globl	C$main.c$133$2$147
;main.c:133: static void clearDisplay(uint8_t full)
;	---------------------------------
; Function clearDisplay
; ---------------------------------
_clearDisplay:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-10
	add	hl, sp
	ld	sp, hl
	C$main.c$140$1$150	= .
	.globl	C$main.c$140$1$150
;main.c:140: if (full)
	ld	a, 4 (ix)
	or	a, a
	jr	Z,00127$
	C$main.c$142$2$151	= .
	.globl	C$main.c$142$2$151
;main.c:142: memset(drawbuf, 0, DRAWAREA_TILES * 8);
	ld	hl, (_drawbuf)
	ld	(hl), #0x00
	ld	e, l
	ld	d, h
	inc	de
	ld	bc, #0x0b3f
	ldir
	jp	00134$
	C$main.c$146$1$150	= .
	.globl	C$main.c$146$1$150
;main.c:146: for (i = 0; i < DRAWAREA_TILES * 8; i += 4)
00127$:
	ld	-6 (ix), #0x00
	ld	-5 (ix), #0x00
00113$:
	C$main.c$148$4$154	= .
	.globl	C$main.c$148$4$154
;main.c:148: drawbuf[i + (off & 3)] &= msk;
	ld	a,(#_clearDisplay_off_1_150 + 0)
	and	a, #0x03
	ld	e, a
	ld	d, #0x00
	ld	a, -6 (ix)
	add	a, e
	ld	c, a
	ld	a, -5 (ix)
	adc	a, d
	ld	b, a
	ld	iy, #_drawbuf
	ld	a, 0 (iy)
	add	a, c
	ld	c, a
	ld	a, 1 (iy)
	adc	a, b
	ld	b, a
	ld	a, (bc)
	ld	iy, #_clearDisplay_msk_1_150
	and	a, 0 (iy)
	ld	(bc), a
	C$main.c$151$4$154	= .
	.globl	C$main.c$151$4$154
;main.c:151: if ((i & 0x1ff) == 0)
	ld	a, -6 (ix)
	or	a, a
	jr	NZ,00114$
	bit	0, -5 (ix)
	jr	NZ,00114$
	C$main.c$153$5$155	= .
	.globl	C$main.c$153$5$155
;main.c:153: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$main.c$154$5$155	= .
	.globl	C$main.c$154$5$155
;main.c:154: PSGFrame();
	call	_PSGFrame
	C$main.c$155$5$155	= .
	.globl	C$main.c$155$5$155
;main.c:155: PSGSFXFrame();
	call	_PSGSFXFrame
00114$:
	C$main.c$146$3$153	= .
	.globl	C$main.c$146$3$153
;main.c:146: for (i = 0; i < DRAWAREA_TILES * 8; i += 4)
	ld	a, -6 (ix)
	add	a, #0x04
	ld	-6 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, -6 (ix)
	sub	a, #0x40
	ld	a, -5 (ix)
	rla
	ccf
	rra
	sbc	a, #0x8b
	jr	C,00113$
	C$main.c$158$2$152	= .
	.globl	C$main.c$158$2$152
;main.c:158: msk ^= 0xff;
	ld	iy, #_clearDisplay_msk_1_150
	ld	a, 0 (iy)
	xor	a, #0xff
	ld	0 (iy), a
	C$main.c$160$1$150	= .
	.globl	C$main.c$160$1$150
;main.c:160: for (i = 0; i < DRAWAREA_TILES * 8; i += 4)
	ld	-6 (ix), #0x00
	ld	-5 (ix), #0x00
00115$:
	C$main.c$162$4$157	= .
	.globl	C$main.c$162$4$157
;main.c:162: drawbuf[i + ((2 + off) & 3)] &= msk;
	ld	hl,#_clearDisplay_off_1_150 + 0
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	inc	bc
	ld	a, c
	and	a, #0x03
	ld	e, a
	ld	d, #0x00
	ld	a, -6 (ix)
	add	a, e
	ld	c, a
	ld	a, -5 (ix)
	adc	a, d
	ld	b, a
	ld	iy, #_drawbuf
	ld	a, 0 (iy)
	add	a, c
	ld	c, a
	ld	a, 1 (iy)
	adc	a, b
	ld	b, a
	ld	a, (bc)
	ld	iy, #_clearDisplay_msk_1_150
	and	a, 0 (iy)
	ld	(bc), a
	C$main.c$165$4$157	= .
	.globl	C$main.c$165$4$157
;main.c:165: if ((i & 0x1ff) == 0)
	ld	a, -6 (ix)
	or	a, a
	jr	NZ,00116$
	bit	0, -5 (ix)
	jr	NZ,00116$
	C$main.c$167$5$158	= .
	.globl	C$main.c$167$5$158
;main.c:167: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$main.c$168$5$158	= .
	.globl	C$main.c$168$5$158
;main.c:168: PSGFrame();
	call	_PSGFrame
	C$main.c$169$5$158	= .
	.globl	C$main.c$169$5$158
;main.c:169: PSGSFXFrame();
	call	_PSGSFXFrame
00116$:
	C$main.c$160$3$156	= .
	.globl	C$main.c$160$3$156
;main.c:160: for (i = 0; i < DRAWAREA_TILES * 8; i += 4)
	ld	a, -6 (ix)
	add	a, #0x04
	ld	-6 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, -6 (ix)
	sub	a, #0x40
	ld	a, -5 (ix)
	rla
	ccf
	rra
	sbc	a, #0x8b
	jr	C,00115$
	C$main.c$172$2$152	= .
	.globl	C$main.c$172$2$152
;main.c:172: off++;
	ld	hl, #_clearDisplay_off_1_150+0
	inc	(hl)
	C$main.c$175$1$150	= .
	.globl	C$main.c$175$1$150
;main.c:175: for (y = 0; y < DRAWAREA_TILES_H; y++)
00134$:
	ld	-8 (ix), #0x00
	ld	-7 (ix), #0x00
00119$:
	C$main.c$177$3$160	= .
	.globl	C$main.c$177$3$160
;main.c:177: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$main.c$178$3$160	= .
	.globl	C$main.c$178$3$160
;main.c:178: SMS_copySpritestoSAT();
	call	_SMS_copySpritestoSAT
	C$main.c$179$3$160	= .
	.globl	C$main.c$179$3$160
;main.c:179: PSGFrame();
	call	_PSGFrame
	C$main.c$180$3$160	= .
	.globl	C$main.c$180$3$160
;main.c:180: PSGSFXFrame();
	call	_PSGSFXFrame
	C$main.c$183$3$160	= .
	.globl	C$main.c$183$3$160
;main.c:183: DRAWAREA_FIRST_TID + y * DRAWAREA_TILES_W,
	ld	c,-8 (ix)
	ld	b,-7 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #0x0048
	add	hl,de
	ld	-2 (ix), l
	ld	-1 (ix), h
	C$main.c$182$3$160	= .
	.globl	C$main.c$182$3$160
;main.c:182: blitTile(drawbuf + (y * DRAWAREA_TILES_W) * 8,
	ld	c,-8 (ix)
	ld	b,-7 (ix)
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	iy, (_drawbuf)
	add	iy, bc
	push	de
	ld	a, #0x0c
	push	af
	inc	sp
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	push	iy
	call	_blitTile
	pop	af
	pop	af
	inc	sp
	call	_SMS_waitForVBlank
	call	_SMS_copySpritestoSAT
	call	_PSGFrame
	call	_PSGSFXFrame
	pop	de
	C$main.c$192$3$160	= .
	.globl	C$main.c$192$3$160
;main.c:192: DRAWAREA_FIRST_TID + y * DRAWAREA_TILES_W + DRAWAREA_TILES_W / 2,
	ld	hl, #0x0054
	add	hl,de
	ld	c, l
	ld	b, h
	C$main.c$191$3$160	= .
	.globl	C$main.c$191$3$160
;main.c:191: blitTile(drawbuf + (y * DRAWAREA_TILES_W + DRAWAREA_TILES_W / 2) * 8,
	ld	hl, #0x000c
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	iy, (_drawbuf)
	add	iy, de
	ld	a, #0x0c
	push	af
	inc	sp
	push	bc
	push	iy
	call	_blitTile
	pop	af
	pop	af
	inc	sp
	C$main.c$195$3$160	= .
	.globl	C$main.c$195$3$160
;main.c:195: ye = (y & 3) << 2;
	ld	a, -8 (ix)
	and	a, #0x03
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ex	(sp), hl
	C$main.c$196$3$160	= .
	.globl	C$main.c$196$3$160
;main.c:196: SMS_setBGScrollY(ye);
	ld	l, -10 (ix)
	call	_SMS_setBGScrollY
	C$main.c$197$3$160	= .
	.globl	C$main.c$197$3$160
;main.c:197: xe = (y & 1) << 2;
	ld	a, -8 (ix)
	and	a, #0x01
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	ld	-4 (ix), l
	ld	-3 (ix), h
	C$main.c$198$3$160	= .
	.globl	C$main.c$198$3$160
;main.c:198: SMS_setBGScrollX(xe);
	ld	l, -4 (ix)
	call	_SMS_setBGScrollX
	C$main.c$200$1$150	= .
	.globl	C$main.c$200$1$150
;main.c:200: for (i = LK_SID; i < N_SPRITES; i++)
	ld	bc, #0x0001
00117$:
	C$main.c$202$5$162	= .
	.globl	C$main.c$202$5$162
;main.c:202: tempMoveSprite(i, xe, -ye);
	ld	e, -10 (ix)
	xor	a, a
	sub	a, e
	ld	h, a
	ld	d, -4 (ix)
	ld	a, c
	push	bc
	push	hl
	inc	sp
	ld	e, a
	push	de
	call	_tempMoveSprite
	pop	af
	inc	sp
	pop	bc
	C$main.c$200$4$161	= .
	.globl	C$main.c$200$4$161
;main.c:200: for (i = LK_SID; i < N_SPRITES; i++)
	inc	bc
	ld	a, c
	sub	a, #0x07
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00117$
	C$main.c$175$2$159	= .
	.globl	C$main.c$175$2$159
;main.c:175: for (y = 0; y < DRAWAREA_TILES_H; y++)
	inc	-8 (ix)
	jr	NZ,00186$
	inc	-7 (ix)
00186$:
	ld	a, -8 (ix)
	sub	a, #0x0f
	ld	a, -7 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00119$
	C$main.c$206$1$150	= .
	.globl	C$main.c$206$1$150
;main.c:206: for (i = LK_SID; i < N_SPRITES; i++)
	ld	bc, #0x0001
00121$:
	C$main.c$208$3$164	= .
	.globl	C$main.c$208$3$164
;main.c:208: tempMoveSprite(i, 0, 0);
	ld	d, c
	push	bc
	ld	hl, #0x0000
	push	hl
	push	de
	inc	sp
	call	_tempMoveSprite
	pop	af
	inc	sp
	pop	bc
	C$main.c$206$2$163	= .
	.globl	C$main.c$206$2$163
;main.c:206: for (i = LK_SID; i < N_SPRITES; i++)
	inc	bc
	ld	a, c
	sub	a, #0x07
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00121$
	C$main.c$211$1$150	= .
	.globl	C$main.c$211$1$150
;main.c:211: SMS_setBGScrollX(0);
	ld	l, #0x00
	call	_SMS_setBGScrollX
	C$main.c$212$1$150	= .
	.globl	C$main.c$212$1$150
;main.c:212: SMS_setBGScrollY(0);
	ld	l, #0x00
	call	_SMS_setBGScrollY
	ld	sp, ix
	pop	ix
	C$main.c$213$1$150	= .
	.globl	C$main.c$213$1$150
	XFmain$clearDisplay$0$0	= .
	.globl	XFmain$clearDisplay$0$0
	ret
	Fmain$setupTilemap$0$0	= .
	.globl	Fmain$setupTilemap$0$0
	C$main.c$215$1$150	= .
	.globl	C$main.c$215$1$150
;main.c:215: static void setupTilemap()
;	---------------------------------
; Function setupTilemap
; ---------------------------------
_setupTilemap:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	C$main.c$218$1$150	= .
	.globl	C$main.c$218$1$150
;main.c:218: int tid = DRAWAREA_FIRST_TID;
	ld	bc, #0x0048
	C$main.c$220$1$165	= .
	.globl	C$main.c$220$1$165
;main.c:220: SMS_loadTileMap(0, 0, main_tilemap, main_tilemap_size);
	push	bc
	ld	hl, #0x0600
	push	hl
	ld	hl, #_main_tilemap
	push	hl
	ld	hl, #0x0000
	push	hl
	call	_SMS_loadTileMap
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	pop	bc
	C$main.c$222$2$170	= .
	.globl	C$main.c$222$2$170
;main.c:222: for (y = 0; y < DRAWAREA_TILES_H; y++)
	ld	de, #0x0000
00107$:
	C$main.c$224$3$167	= .
	.globl	C$main.c$224$3$167
;main.c:224: SMS_setNextTileatXY(DRAWAREA_X, y + DRAWAREA_Y);
	ld	hl, #0x0004
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	set	3, l
	ld	a, h
	or	a, #0x78
	ld	h, a
	push	bc
	rst	#0x08
	pop	bc
	C$main.c$225$2$170	= .
	.globl	C$main.c$225$2$170
;main.c:225: for (x = 0; x < DRAWAREA_TILES_W; x++)
	ld	hl, #0x0000
00105$:
	C$main.c$227$5$169	= .
	.globl	C$main.c$227$5$169
;main.c:227: SMS_setTile(tid++);
	inc	sp
	inc	sp
	push	bc
	inc	bc
	push	hl
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	rst	#0x18
	pop	hl
	C$main.c$225$4$168	= .
	.globl	C$main.c$225$4$168
;main.c:225: for (x = 0; x < DRAWAREA_TILES_W; x++)
	inc	hl
	ld	a, l
	sub	a, #0x18
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00105$
	C$main.c$222$2$170	= .
	.globl	C$main.c$222$2$170
;main.c:222: for (y = 0; y < DRAWAREA_TILES_H; y++)
	inc	de
	ld	a, e
	sub	a, #0x0f
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00107$
	C$main.c$233$2$170	= .
	.globl	C$main.c$233$2$170
;main.c:233: for (y = 24; y < 26; y++)
	ld	de, #0x0018
00111$:
	C$main.c$235$3$171	= .
	.globl	C$main.c$235$3$171
;main.c:235: SMS_setNextTileatXY(0, y);
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, h
	or	a, #0x78
	ld	h, a
	rst	#0x08
	C$main.c$236$2$170	= .
	.globl	C$main.c$236$2$170
;main.c:236: for (x = 0; x < 32; x++)
	ld	bc, #0x0000
00109$:
	C$main.c$238$5$173	= .
	.globl	C$main.c$238$5$173
;main.c:238: SMS_setTile(BGBLANK_TID);
	ld	hl, #0x0047
	rst	#0x18
	C$main.c$236$4$172	= .
	.globl	C$main.c$236$4$172
;main.c:236: for (x = 0; x < 32; x++)
	inc	bc
	ld	a, c
	sub	a, #0x20
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00109$
	C$main.c$233$2$170	= .
	.globl	C$main.c$233$2$170
;main.c:233: for (y = 24; y < 26; y++)
	inc	de
	ld	a, e
	sub	a, #0x1a
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00111$
	ld	sp, ix
	pop	ix
	C$main.c$241$2$170	= .
	.globl	C$main.c$241$2$170
	XFmain$setupTilemap$0$0	= .
	.globl	XFmain$setupTilemap$0$0
	ret
	Fmain$putPixel$0$0	= .
	.globl	Fmain$putPixel$0$0
	C$main.c$243$2$170	= .
	.globl	C$main.c$243$2$170
;main.c:243: static void putPixel(int x, int y)
;	---------------------------------
; Function putPixel
; ---------------------------------
_putPixel:
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
	C$main.c$249$1$175	= .
	.globl	C$main.c$249$1$175
;main.c:249: modified_tile = (x >> 3) + (y >> 3) * DRAWAREA_TILES_W;
	ld	c,4 (ix)
	ld	b,5 (ix)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	e,6 (ix)
	ld	d,7 (ix)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl,bc
	ex	de,hl
	C$main.c$251$1$175	= .
	.globl	C$main.c$251$1$175
;main.c:251: bit = 0x80 >> (x & 7);
	ld	a, 4 (ix)
	and	a, #0x07
	ld	b, a
	ld	-3 (ix), #0x80
	inc	b
	jr	00104$
00103$:
	srl	-3 (ix)
00104$:
	djnz	00103$
	C$main.c$252$1$175	= .
	.globl	C$main.c$252$1$175
;main.c:252: drawbuf[(modified_tile << 3) + (y & 0x7)] |= bit;
	ld	c, e
	ld	b, d
	sla	c
	rl	b
	sla	c
	rl	b
	sla	c
	rl	b
	ld	a, 6 (ix)
	and	a, #0x07
	ld	l, a
	ld	h, #0x00
	add	hl,bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	iy, (_drawbuf)
	push	bc
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	add	iy, bc
	pop	bc
	ld	a, 0 (iy)
	or	a, -3 (ix)
	ld	0 (iy), a
	C$main.c$254$1$175	= .
	.globl	C$main.c$254$1$175
;main.c:254: blitTile(drawbuf + (modified_tile << 3), DRAWAREA_FIRST_TID + modified_tile, 1);
	ld	hl, #0x0048
	add	hl, de
	ld	iy, (_drawbuf)
	add	iy, bc
	ld	a, #0x01
	push	af
	inc	sp
	push	hl
	push	iy
	call	_blitTile
	ld	sp,ix
	pop	ix
	C$main.c$255$1$175	= .
	.globl	C$main.c$255$1$175
	XFmain$putPixel$0$0	= .
	.globl	XFmain$putPixel$0$0
	ret
	Fmain$drawLine$0$0	= .
	.globl	Fmain$drawLine$0$0
	C$main.c$257$1$175	= .
	.globl	C$main.c$257$1$175
;main.c:257: static void drawLine(int x0, int y0, int x1, int y1)
;	---------------------------------
; Function drawLine
; ---------------------------------
_drawLine:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-13
	add	hl, sp
	ld	sp, hl
	C$main.c$259$1$177	= .
	.globl	C$main.c$259$1$177
;main.c:259: int16_t dx = abs(x1 - x0);
	ld	a, 8 (ix)
	sub	a, 4 (ix)
	ld	c, a
	ld	a, 9 (ix)
	sbc	a, 5 (ix)
	ld	b, a
	push	bc
	call	_abs
	pop	af
	ld	c, l
	ld	b, h
	C$main.c$260$1$177	= .
	.globl	C$main.c$260$1$177
;main.c:260: int16_t dy = -abs(y1 - y0);
	ld	a, 10 (ix)
	sub	a, 6 (ix)
	ld	e, a
	ld	a, 11 (ix)
	sbc	a, 7 (ix)
	ld	d, a
	push	de
	call	_abs
	pop	af
	xor	a, a
	sub	a, l
	ld	e, a
	ld	a, #0x00
	sbc	a, h
	ld	-10 (ix), e
	ld	-9 (ix), a
	C$main.c$261$1$177	= .
	.globl	C$main.c$261$1$177
;main.c:261: int8_t sx = x0 < x1 ? 1 : -1;
	ld	a, 4 (ix)
	sub	a, 8 (ix)
	ld	a, 5 (ix)
	sbc	a, 9 (ix)
	jp	PO, 00147$
	xor	a, #0x80
00147$:
	jp	P, 00115$
	ld	e, #0x01
	jr	00116$
00115$:
	ld	e, #0xff
00116$:
	ld	-7 (ix), e
	C$main.c$262$1$177	= .
	.globl	C$main.c$262$1$177
;main.c:262: int8_t sy = y0 < y1 ? 1 : -1;
	ld	a, 6 (ix)
	sub	a, 10 (ix)
	ld	a, 7 (ix)
	sbc	a, 11 (ix)
	jp	PO, 00148$
	xor	a, #0x80
00148$:
	jp	P, 00117$
	ld	e, #0x01
	jr	00118$
00117$:
	ld	e, #0xff
00118$:
	ld	-8 (ix), e
	C$main.c$263$1$177	= .
	.globl	C$main.c$263$1$177
;main.c:263: int err = dx + dy;
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
	C$main.c$268$1$177	= .
	.globl	C$main.c$268$1$177
;main.c:268: modified_tile = (x0 >> 3) + (y0 >> 3) * DRAWAREA_TILES_W;
	ld	e,4 (ix)
	ld	d,5 (ix)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l,6 (ix)
	ld	h,7 (ix)
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	pop	de
	add	hl, de
	ld	-12 (ix), l
	ld	-11 (ix), h
	C$main.c$270$1$177	= .
	.globl	C$main.c$270$1$177
;main.c:270: while (1)
00111$:
	C$main.c$273$2$178	= .
	.globl	C$main.c$273$2$178
;main.c:273: next_tile = (x0 >> 3) + (y0 >> 3) * DRAWAREA_TILES_W;
	ld	e,4 (ix)
	ld	d,5 (ix)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l,6 (ix)
	ld	h,7 (ix)
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	pop	de
	add	hl,de
	ld	e, l
	ld	d, h
	C$main.c$274$2$178	= .
	.globl	C$main.c$274$2$178
;main.c:274: if (modified_tile != next_tile)
	ld	a, -12 (ix)
	sub	a, e
	jr	NZ,00149$
	ld	a, -11 (ix)
	sub	a, d
	jr	Z,00102$
00149$:
	C$main.c$276$3$179	= .
	.globl	C$main.c$276$3$179
;main.c:276: blitTile(drawbuf + (modified_tile << 3), DRAWAREA_FIRST_TID + modified_tile, 1);
	ld	a, -12 (ix)
	add	a, #0x48
	ld	-2 (ix), a
	ld	a, -11 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	a, -12 (ix)
	ld	-4 (ix), a
	ld	a, -11 (ix)
	ld	-3 (ix), a
	ld	a, #0x03+1
	jr	00151$
00150$:
	sla	-4 (ix)
	rl	-3 (ix)
00151$:
	dec	a
	jr	NZ,00150$
	push	hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	push	hl
	pop	iy
	pop	hl
	push	bc
	ld	bc, (_drawbuf)
	add	iy, bc
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	push	hl
	push	iy
	call	_blitTile
	pop	af
	pop	af
	inc	sp
	pop	de
	pop	bc
00102$:
	C$main.c$278$2$178	= .
	.globl	C$main.c$278$2$178
;main.c:278: modified_tile = next_tile;
	ld	-12 (ix), e
	ld	-11 (ix), d
	C$main.c$280$1$177	= .
	.globl	C$main.c$280$1$177
;main.c:280: bit = 0x80 >> (x0 & 7);
	ld	a, 4 (ix)
	and	a, #0x07
	ld	-13 (ix), #0x80
	inc	a
	jr	00153$
00152$:
	srl	-13 (ix)
00153$:
	dec	a
	jr	NZ, 00152$
	C$main.c$281$2$178	= .
	.globl	C$main.c$281$2$178
;main.c:281: drawbuf[(modified_tile << 3) + (y0 & 0x7)] |= bit;
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	a, #0x03+1
	jr	00155$
00154$:
	sla	-4 (ix)
	rl	-3 (ix)
00155$:
	dec	a
	jr	NZ,00154$
	ld	a, 6 (ix)
	and	a, #0x07
	ld	l, a
	ld	h, #0x00
	push	hl
	pop	iy
	push	bc
	ld	c,-4 (ix)
	ld	b,-3 (ix)
	add	iy, bc
	ld	bc, (_drawbuf)
	add	iy, bc
	pop	bc
	ld	a, 0 (iy)
	or	a, -13 (ix)
	ld	0 (iy), a
	C$main.c$283$2$178	= .
	.globl	C$main.c$283$2$178
;main.c:283: if ((x0 == x1) && (y0 == y1))
	ld	a, 4 (ix)
	sub	a, 8 (ix)
	jr	NZ,00104$
	ld	a, 5 (ix)
	sub	a, 9 (ix)
	jr	NZ,00104$
	ld	a, 6 (ix)
	sub	a, 10 (ix)
	jr	NZ,00158$
	ld	a, 7 (ix)
	sub	a, 11 (ix)
	jr	Z,00112$
00158$:
	C$main.c$284$2$178	= .
	.globl	C$main.c$284$2$178
;main.c:284: break;
00104$:
	C$main.c$285$2$178	= .
	.globl	C$main.c$285$2$178
;main.c:285: e2 = err * 2;
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	add	hl, hl
	C$main.c$286$2$178	= .
	.globl	C$main.c$286$2$178
;main.c:286: if (e2 >= dy)
	ld	a, l
	sub	a, -10 (ix)
	ld	a, h
	sbc	a, -9 (ix)
	jp	PO, 00159$
	xor	a, #0x80
00159$:
	jp	M, 00107$
	C$main.c$288$3$180	= .
	.globl	C$main.c$288$3$180
;main.c:288: err += dy;
	ld	a, -6 (ix)
	add	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -5 (ix)
	adc	a, -9 (ix)
	ld	-5 (ix), a
	C$main.c$289$3$180	= .
	.globl	C$main.c$289$3$180
;main.c:289: x0 += sx;
	ld	e, -7 (ix)
	ld	a, -7 (ix)
	rla
	sbc	a, a
	ld	d, a
	ld	a, 4 (ix)
	add	a, e
	ld	4 (ix), a
	ld	a, 5 (ix)
	adc	a, d
	ld	5 (ix), a
00107$:
	C$main.c$291$2$178	= .
	.globl	C$main.c$291$2$178
;main.c:291: if (e2 <= dx)
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00160$
	xor	a, #0x80
00160$:
	jp	M, 00111$
	C$main.c$293$3$181	= .
	.globl	C$main.c$293$3$181
;main.c:293: err += dx;
	ld	a, -6 (ix)
	add	a, c
	ld	-6 (ix), a
	ld	a, -5 (ix)
	adc	a, b
	ld	-5 (ix), a
	C$main.c$294$3$181	= .
	.globl	C$main.c$294$3$181
;main.c:294: y0 += sy;
	ld	e, -8 (ix)
	ld	a, -8 (ix)
	rla
	sbc	a, a
	ld	d, a
	ld	a, 6 (ix)
	add	a, e
	ld	6 (ix), a
	ld	a, 7 (ix)
	adc	a, d
	ld	7 (ix), a
	jp	00111$
00112$:
	C$main.c$298$1$177	= .
	.globl	C$main.c$298$1$177
;main.c:298: blitTile(drawbuf + (modified_tile << 3), DRAWAREA_FIRST_TID + modified_tile, 1);
	ld	hl, #0x0048
	add	hl, de
	ld	iy, (_drawbuf)
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	add	iy, de
	ld	a, #0x01
	push	af
	inc	sp
	push	hl
	push	iy
	call	_blitTile
	ld	sp,ix
	pop	ix
	C$main.c$299$1$177	= .
	.globl	C$main.c$299$1$177
	XFmain$drawLine$0$0	= .
	.globl	XFmain$drawLine$0$0
	ret
	Fmain$drawLineSync$0$0	= .
	.globl	Fmain$drawLineSync$0$0
	C$main.c$301$1$177	= .
	.globl	C$main.c$301$1$177
;main.c:301: static void drawLineSync(int x0, int y0, int x1, int y1)
;	---------------------------------
; Function drawLineSync
; ---------------------------------
_drawLineSync:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-13
	add	hl, sp
	ld	sp, hl
	C$main.c$303$1$183	= .
	.globl	C$main.c$303$1$183
;main.c:303: int16_t dx = abs(x1 - x0);
	ld	a, 8 (ix)
	sub	a, 4 (ix)
	ld	c, a
	ld	a, 9 (ix)
	sbc	a, 5 (ix)
	ld	b, a
	push	bc
	call	_abs
	pop	af
	ld	c, l
	ld	b, h
	C$main.c$304$1$183	= .
	.globl	C$main.c$304$1$183
;main.c:304: int16_t dy = -abs(y1 - y0);
	ld	a, 10 (ix)
	sub	a, 6 (ix)
	ld	e, a
	ld	a, 11 (ix)
	sbc	a, 7 (ix)
	ld	d, a
	push	de
	call	_abs
	pop	af
	xor	a, a
	sub	a, l
	ld	e, a
	ld	a, #0x00
	sbc	a, h
	ld	-11 (ix), e
	ld	-10 (ix), a
	C$main.c$305$1$183	= .
	.globl	C$main.c$305$1$183
;main.c:305: int8_t sx = x0 < x1 ? 1 : -1;
	ld	a, 4 (ix)
	sub	a, 8 (ix)
	ld	a, 5 (ix)
	sbc	a, 9 (ix)
	jp	PO, 00147$
	xor	a, #0x80
00147$:
	jp	P, 00115$
	ld	e, #0x01
	jr	00116$
00115$:
	ld	e, #0xff
00116$:
	ld	-12 (ix), e
	C$main.c$306$1$183	= .
	.globl	C$main.c$306$1$183
;main.c:306: int8_t sy = y0 < y1 ? 1 : -1;
	ld	a, 6 (ix)
	sub	a, 10 (ix)
	ld	a, 7 (ix)
	sbc	a, 11 (ix)
	jp	PO, 00148$
	xor	a, #0x80
00148$:
	jp	P, 00117$
	ld	e, #0x01
	jr	00118$
00117$:
	ld	e, #0xff
00118$:
	ld	-13 (ix), e
	C$main.c$307$1$183	= .
	.globl	C$main.c$307$1$183
;main.c:307: int err = dx + dy;
	ld	l,-11 (ix)
	ld	h,-10 (ix)
	add	hl, bc
	ld	-8 (ix), l
	ld	-7 (ix), h
	C$main.c$312$1$183	= .
	.globl	C$main.c$312$1$183
;main.c:312: modified_tile = (x0 >> 3) + (y0 >> 3) * DRAWAREA_TILES_W;
	ld	e,4 (ix)
	ld	d,5 (ix)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l,6 (ix)
	ld	h,7 (ix)
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	pop	de
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
	C$main.c$314$1$183	= .
	.globl	C$main.c$314$1$183
;main.c:314: while (1)
00111$:
	C$main.c$317$2$184	= .
	.globl	C$main.c$317$2$184
;main.c:317: next_tile = (x0 >> 3) + (y0 >> 3) * DRAWAREA_TILES_W;
	ld	e,4 (ix)
	ld	d,5 (ix)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l,6 (ix)
	ld	h,7 (ix)
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	push	de
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	pop	de
	add	hl,de
	ld	e, l
	ld	d, h
	C$main.c$318$2$184	= .
	.globl	C$main.c$318$2$184
;main.c:318: if (modified_tile != next_tile)
	ld	a, -6 (ix)
	sub	a, e
	jr	NZ,00149$
	ld	a, -5 (ix)
	sub	a, d
	jr	Z,00102$
00149$:
	C$main.c$320$3$185	= .
	.globl	C$main.c$320$3$185
;main.c:320: blitTile(drawbuf + (modified_tile << 3), DRAWAREA_FIRST_TID + modified_tile, 1);
	ld	a, -6 (ix)
	add	a, #0x48
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	ld	-1 (ix), a
	ld	a, #0x03+1
	jr	00151$
00150$:
	sla	-2 (ix)
	rl	-1 (ix)
00151$:
	dec	a
	jr	NZ,00150$
	push	hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	push	hl
	pop	iy
	pop	hl
	push	bc
	ld	bc, (_drawbuf)
	add	iy, bc
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	ld	l,-4 (ix)
	ld	h,-3 (ix)
	push	hl
	push	iy
	call	_blitTile
	pop	af
	pop	af
	inc	sp
	call	_vsync_keycheck
	pop	de
	pop	bc
00102$:
	C$main.c$324$2$184	= .
	.globl	C$main.c$324$2$184
;main.c:324: modified_tile = next_tile;
	ld	-6 (ix), e
	ld	-5 (ix), d
	C$main.c$326$1$183	= .
	.globl	C$main.c$326$1$183
;main.c:326: bit = 0x80 >> (x0 & 7);
	ld	a, 4 (ix)
	and	a, #0x07
	ld	-9 (ix), #0x80
	inc	a
	jr	00153$
00152$:
	srl	-9 (ix)
00153$:
	dec	a
	jr	NZ, 00152$
	C$main.c$327$2$184	= .
	.globl	C$main.c$327$2$184
;main.c:327: drawbuf[(modified_tile << 3) + (y0 & 0x7)] |= bit;
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, #0x03+1
	jr	00155$
00154$:
	sla	-2 (ix)
	rl	-1 (ix)
00155$:
	dec	a
	jr	NZ,00154$
	ld	a, 6 (ix)
	and	a, #0x07
	ld	l, a
	ld	h, #0x00
	push	hl
	pop	iy
	push	bc
	ld	c,-2 (ix)
	ld	b,-1 (ix)
	add	iy, bc
	ld	bc, (_drawbuf)
	add	iy, bc
	pop	bc
	ld	a, 0 (iy)
	or	a, -9 (ix)
	ld	0 (iy), a
	C$main.c$329$2$184	= .
	.globl	C$main.c$329$2$184
;main.c:329: if ((x0 == x1) && (y0 == y1))
	ld	a, 4 (ix)
	sub	a, 8 (ix)
	jr	NZ,00104$
	ld	a, 5 (ix)
	sub	a, 9 (ix)
	jr	NZ,00104$
	ld	a, 6 (ix)
	sub	a, 10 (ix)
	jr	NZ,00158$
	ld	a, 7 (ix)
	sub	a, 11 (ix)
	jr	Z,00112$
00158$:
	C$main.c$330$2$184	= .
	.globl	C$main.c$330$2$184
;main.c:330: break;
00104$:
	C$main.c$331$2$184	= .
	.globl	C$main.c$331$2$184
;main.c:331: e2 = err * 2;
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	add	hl, hl
	C$main.c$332$2$184	= .
	.globl	C$main.c$332$2$184
;main.c:332: if (e2 >= dy)
	ld	a, l
	sub	a, -11 (ix)
	ld	a, h
	sbc	a, -10 (ix)
	jp	PO, 00159$
	xor	a, #0x80
00159$:
	jp	M, 00107$
	C$main.c$334$3$186	= .
	.globl	C$main.c$334$3$186
;main.c:334: err += dy;
	ld	a, -8 (ix)
	add	a, -11 (ix)
	ld	-8 (ix), a
	ld	a, -7 (ix)
	adc	a, -10 (ix)
	ld	-7 (ix), a
	C$main.c$335$3$186	= .
	.globl	C$main.c$335$3$186
;main.c:335: x0 += sx;
	ld	e, -12 (ix)
	ld	a, -12 (ix)
	rla
	sbc	a, a
	ld	d, a
	ld	a, 4 (ix)
	add	a, e
	ld	4 (ix), a
	ld	a, 5 (ix)
	adc	a, d
	ld	5 (ix), a
00107$:
	C$main.c$337$2$184	= .
	.globl	C$main.c$337$2$184
;main.c:337: if (e2 <= dx)
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00160$
	xor	a, #0x80
00160$:
	jp	M, 00111$
	C$main.c$339$3$187	= .
	.globl	C$main.c$339$3$187
;main.c:339: err += dx;
	ld	a, -8 (ix)
	add	a, c
	ld	-8 (ix), a
	ld	a, -7 (ix)
	adc	a, b
	ld	-7 (ix), a
	C$main.c$340$3$187	= .
	.globl	C$main.c$340$3$187
;main.c:340: y0 += sy;
	ld	e, -13 (ix)
	ld	a, -13 (ix)
	rla
	sbc	a, a
	ld	d, a
	ld	a, 6 (ix)
	add	a, e
	ld	6 (ix), a
	ld	a, 7 (ix)
	adc	a, d
	ld	7 (ix), a
	jp	00111$
00112$:
	C$main.c$344$1$183	= .
	.globl	C$main.c$344$1$183
;main.c:344: blitTile(drawbuf + (modified_tile << 3), DRAWAREA_FIRST_TID + modified_tile, 1);
	ld	hl, #0x0048
	add	hl, de
	ld	iy, (_drawbuf)
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	add	iy, de
	ld	a, #0x01
	push	af
	inc	sp
	push	hl
	push	iy
	call	_blitTile
	pop	af
	pop	af
	inc	sp
	C$main.c$345$1$183	= .
	.globl	C$main.c$345$1$183
;main.c:345: vsync_keycheck();
	call	_vsync_keycheck
	ld	sp, ix
	pop	ix
	C$main.c$346$1$183	= .
	.globl	C$main.c$346$1$183
	XFmain$drawLineSync$0$0	= .
	.globl	XFmain$drawLineSync$0$0
	ret
	G$updateDisplay$0$0	= .
	.globl	G$updateDisplay$0$0
	C$main.c$348$1$183	= .
	.globl	C$main.c$348$1$183
;main.c:348: void updateDisplay(int new_x, int new_y, int old_x, int old_y, uint8_t s)
;	---------------------------------
; Function updateDisplay
; ---------------------------------
_updateDisplay::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$main.c$353$1$189	= .
	.globl	C$main.c$353$1$189
;main.c:353: if (drawing)
	ld	a,(#_drawing + 0)
	or	a, a
	jr	Z,00102$
	C$main.c$355$2$190	= .
	.globl	C$main.c$355$2$190
;main.c:355: SMS_hideSprite(spriteIds[POINTER_SID]);
	ld	hl, #_spriteIds+0
	ld	b, (hl)
	push	bc
	inc	sp
	call	_SMS_hideSprite
	inc	sp
	jr	00103$
00102$:
	C$main.c$359$2$191	= .
	.globl	C$main.c$359$2$191
;main.c:359: SMS_updateSpritePosition(spriteIds[POINTER_SID], new_x + DRAWAREA_X * 8, new_y + DRAWAREA_Y * 8);
	ld	a, 6 (ix)
	add	a, #0x20
	ld	d, a
	ld	a, 4 (ix)
	add	a, #0x20
	ld	c, a
	ld	hl, #_spriteIds+0
	ld	b, (hl)
	ld	e, c
	push	de
	push	bc
	inc	sp
	call	_SMS_updateSpritePosition
	pop	af
	inc	sp
00103$:
	C$main.c$362$1$189	= .
	.globl	C$main.c$362$1$189
;main.c:362: if (drawing)
	ld	a,(#_drawing + 0)
	or	a, a
	jr	Z,00111$
	C$main.c$364$2$192	= .
	.globl	C$main.c$364$2$192
;main.c:364: putPixel(new_x, new_y);
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_putPixel
	pop	af
	pop	af
	C$main.c$367$2$192	= .
	.globl	C$main.c$367$2$192
;main.c:367: if (paddle_mode || fill_mode)
	ld	a,(#_paddle_mode + 0)
	or	a, a
	jr	NZ,00107$
	ld	a,(#_fill_mode + 0)
	or	a, a
	jr	Z,00111$
00107$:
	C$main.c$369$3$193	= .
	.globl	C$main.c$369$3$193
;main.c:369: if (!s)
	ld	a, 12 (ix)
	or	a, a
	jr	NZ,00105$
	C$main.c$371$4$194	= .
	.globl	C$main.c$371$4$194
;main.c:371: drawLine(new_x, new_y, old_x, old_y);
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_drawLine
	ld	hl, #8
	add	hl, sp
	ld	sp, hl
	jr	00111$
00105$:
	C$main.c$375$4$195	= .
	.globl	C$main.c$375$4$195
;main.c:375: drawLineSync(new_x, new_y, old_x, old_y);
	ld	l,10 (ix)
	ld	h,11 (ix)
	push	hl
	ld	l,8 (ix)
	ld	h,9 (ix)
	push	hl
	ld	l,6 (ix)
	ld	h,7 (ix)
	push	hl
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_drawLineSync
	ld	hl, #8
	add	hl, sp
	ld	sp, hl
00111$:
	C$main.c$381$1$189	= .
	.globl	C$main.c$381$1$189
;main.c:381: spriteX[LK_SID] = LEFT_KNOB_X;
	ld	hl, #(_spriteX + 0x0001)
	ld	(hl), #0x17
	C$main.c$382$1$189	= .
	.globl	C$main.c$382$1$189
;main.c:382: spriteY[LK_SID] = LEFT_KNOB_Y;
	ld	hl, #_spriteY + 1
	ld	(hl), #0xa7
	C$main.c$383$1$189	= .
	.globl	C$main.c$383$1$189
;main.c:383: addRotatedXY(new_x, &spriteX[LK_SID], &spriteY[LK_SID]);
	ld	c, l
	ld	b, h
	ld	d, 4 (ix)
	push	hl
	push	bc
	ld	bc, #(_spriteX + 0x0001)
	push	bc
	push	de
	inc	sp
	call	_addRotatedXY
	pop	af
	pop	af
	inc	sp
	pop	hl
	C$main.c$384$1$189	= .
	.globl	C$main.c$384$1$189
;main.c:384: SMS_updateSpritePosition(spriteIds[LK_SID], spriteX[LK_SID], spriteY[LK_SID]);
	ld	c, (hl)
	ld	hl, #(_spriteX + 0x0001) + 0
	ld	b, (hl)
	ld	hl, #_spriteIds + 1
	ld	e, (hl)
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, e
	push	af
	inc	sp
	call	_SMS_updateSpritePosition
	pop	af
	inc	sp
	C$main.c$386$1$189	= .
	.globl	C$main.c$386$1$189
;main.c:386: spriteX[RK_SID] = RIGHT_KNOB_X;
	ld	hl, #(_spriteX + 0x0002)
	ld	(hl), #0xe7
	C$main.c$387$1$189	= .
	.globl	C$main.c$387$1$189
;main.c:387: spriteY[RK_SID] = RIGHT_KNOB_Y;
	ld	hl, #(_spriteY + 0x0002)
	ld	(hl), #0xa7
	C$main.c$388$1$189	= .
	.globl	C$main.c$388$1$189
;main.c:388: addRotatedXY(new_y, &spriteX[RK_SID], &spriteY[RK_SID]);
	ld	bc, #(_spriteX + 0x0002)
	ld	d, 6 (ix)
	push	hl
	push	bc
	push	de
	inc	sp
	call	_addRotatedXY
	pop	af
	pop	af
	inc	sp
	C$main.c$389$1$189	= .
	.globl	C$main.c$389$1$189
;main.c:389: SMS_updateSpritePosition(spriteIds[RK_SID], spriteX[RK_SID], spriteY[RK_SID]);
	ld	hl, #(_spriteY + 0x0002) + 0
	ld	c, (hl)
	ld	hl, #(_spriteX + 0x0002) + 0
	ld	b, (hl)
	ld	hl, #_spriteIds + 2
	ld	e, (hl)
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	a, e
	push	af
	inc	sp
	call	_SMS_updateSpritePosition
	pop	af
	inc	sp
	pop	ix
	C$main.c$390$1$189	= .
	.globl	C$main.c$390$1$189
	XG$updateDisplay$0$0	= .
	.globl	XG$updateDisplay$0$0
	ret
	G$stepIt$0$0	= .
	.globl	G$stepIt$0$0
	C$main.c$411$1$189	= .
	.globl	C$main.c$411$1$189
;main.c:411: void stepIt(int *val, int *inc, int max)
;	---------------------------------
; Function stepIt
; ---------------------------------
_stepIt::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	C$main.c$413$1$198	= .
	.globl	C$main.c$413$1$198
;main.c:413: *val += *inc;
	ld	c,4 (ix)
	ld	b,5 (ix)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, 6 (ix)
	ld	-2 (ix), a
	ld	a, 7 (ix)
	ld	-1 (ix), a
	pop	hl
	push	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl,de
	ex	de,hl
	ld	l, c
	ld	h, b
	ld	(hl), e
	inc	hl
	ld	(hl), d
	C$main.c$414$1$198	= .
	.globl	C$main.c$414$1$198
;main.c:414: if (*val < 0)
	bit	7, d
	jr	Z,00102$
	C$main.c$416$2$199	= .
	.globl	C$main.c$416$2$199
;main.c:416: *inc = -*inc;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x00
	sbc	a, d
	ld	d, a
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	C$main.c$417$2$199	= .
	.globl	C$main.c$417$2$199
;main.c:417: *val = -*val;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x00
	sbc	a, d
	ld	d, a
	ld	l, c
	ld	h, b
	ld	(hl), e
	inc	hl
	ld	(hl), d
00102$:
	C$main.c$419$1$198	= .
	.globl	C$main.c$419$1$198
;main.c:419: if (*val >= max)
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, 8 (ix)
	ld	a, d
	sbc	a, 9 (ix)
	jp	PO, 00115$
	xor	a, #0x80
00115$:
	jp	M, 00105$
	C$main.c$421$2$200	= .
	.globl	C$main.c$421$2$200
;main.c:421: *inc = -*inc;
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x00
	sbc	a, d
	ld	d, a
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	C$main.c$422$2$200	= .
	.globl	C$main.c$422$2$200
;main.c:422: *val = max - (*val - max) - 1;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, 8 (ix)
	ld	e, a
	ld	a, d
	sbc	a, 9 (ix)
	ld	d, a
	ld	a, 8 (ix)
	sub	a, e
	ld	e, a
	ld	a, 9 (ix)
	sbc	a, d
	ld	d, a
	dec	de
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
00105$:
	ld	sp, ix
	pop	ix
	C$main.c$424$1$198	= .
	.globl	C$main.c$424$1$198
	XG$stepIt$0$0	= .
	.globl	XG$stepIt$0$0
	ret
	G$effect2$0$0	= .
	.globl	G$effect2$0$0
	C$main.c$426$1$198	= .
	.globl	C$main.c$426$1$198
;main.c:426: void effect2(struct scriptEvent *ev)
;	---------------------------------
; Function effect2
; ---------------------------------
_effect2::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-10
	add	hl, sp
	ld	sp, hl
	C$main.c$434$1$202	= .
	.globl	C$main.c$434$1$202
;main.c:434: x = prev_x = 40;
	ld	bc, #0x0028
	C$main.c$435$1$202	= .
	.globl	C$main.c$435$1$202
;main.c:435: y = prev_y = 50;
	ld	-6 (ix), #0x32
	ld	-5 (ix), #0x00
	C$main.c$437$2$203	= .
	.globl	C$main.c$437$2$203
;main.c:437: for (i = 0; i < 512 && !start_pressed; i++)
	ld	de, #0x0000
00106$:
	ld	a, d
	sub	a, #0x02
	jp	NC, 00108$
	ld	a,(#_start_pressed + 0)
	or	a, a
	jp	NZ, 00108$
	C$main.c$440$3$204	= .
	.globl	C$main.c$440$3$204
;main.c:440: x = MAX_PX / 2 + (cheapSin(i / 2) >> 10) + (cheapCos(i * 2 + i) >> 11);
	ld	l, e
	ld	h, d
	srl	h
	rr	l
	ld	-4 (ix), l
	push	bc
	push	de
	ld	a, -4 (ix)
	push	af
	inc	sp
	call	_cheapSin
	inc	sp
	pop	de
	pop	bc
	ld	a, h
	sra	a
	sra	a
	ld	l,a
	rlc	a
	sbc	a, a
	ld	h, a
	ld	a, l
	add	a, #0x5f
	ld	-3 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-2 (ix), a
	ld	-1 (ix), e
	ld	a, e
	add	a, a
	ld	l,a
	add	a, -1 (ix)
	ld	h, a
	push	bc
	push	de
	push	hl
	inc	sp
	call	_cheapCos
	inc	sp
	pop	de
	pop	bc
	ld	a, h
	sra	a
	sra	a
	sra	a
	ld	l,a
	rlc	a
	sbc	a, a
	ld	h, a
	ld	a, -3 (ix)
	add	a, l
	ld	l, a
	ld	a, -2 (ix)
	adc	a, h
	ld	-8 (ix), l
	ld	-7 (ix), a
	C$main.c$441$3$204	= .
	.globl	C$main.c$441$3$204
;main.c:441: y = MAX_PY / 2 + (-cheapCos(i / 2 + i) >> 11) + (cheapSin(i * 5) >> 12);
	ld	a, -4 (ix)
	add	a, -1 (ix)
	ld	h, a
	push	bc
	push	de
	push	hl
	inc	sp
	call	_cheapCos
	inc	sp
	pop	de
	pop	bc
	xor	a, a
	sub	a, l
	ld	a, #0x00
	sbc	a, h
	sra	a
	sra	a
	sra	a
	ld	l,a
	rlc	a
	sbc	a, a
	ld	h, a
	ld	a, l
	add	a, #0x3b
	ld	-3 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-2 (ix), a
	push	de
	ld	a, -1 (ix)
	ld	e, a
	add	a, a
	add	a, a
	add	a, e
	pop	de
	ld	h, a
	push	bc
	push	de
	push	hl
	inc	sp
	call	_cheapSin
	inc	sp
	pop	de
	pop	bc
	ld	a, h
	sra	a
	sra	a
	sra	a
	sra	a
	ld	l,a
	rlc	a
	sbc	a, a
	ld	h, a
	ld	a, -3 (ix)
	add	a, l
	ld	l, a
	ld	a, -2 (ix)
	adc	a, h
	ld	h, a
	inc	sp
	inc	sp
	push	hl
	C$main.c$443$3$204	= .
	.globl	C$main.c$443$3$204
;main.c:443: if (i)
	ld	a, d
	or	a,e
	jr	Z,00102$
	C$main.c$445$4$205	= .
	.globl	C$main.c$445$4$205
;main.c:445: updateDisplay(prev_x, prev_y, x, y, 1);
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	push	bc
	call	_updateDisplay
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
	pop	de
00102$:
	C$main.c$448$3$204	= .
	.globl	C$main.c$448$3$204
;main.c:448: prev_x = x;
	ld	c,-8 (ix)
	ld	b,-7 (ix)
	C$main.c$449$3$204	= .
	.globl	C$main.c$449$3$204
;main.c:449: prev_y = y;
	ld	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	ld	-5 (ix), a
	C$main.c$437$2$203	= .
	.globl	C$main.c$437$2$203
;main.c:437: for (i = 0; i < 512 && !start_pressed; i++)
	inc	de
	jp	00106$
00108$:
	ld	sp, ix
	pop	ix
	C$main.c$451$2$203	= .
	.globl	C$main.c$451$2$203
	XG$effect2$0$0	= .
	.globl	XG$effect2$0$0
	ret
	G$effect3$0$0	= .
	.globl	G$effect3$0$0
	C$main.c$453$2$203	= .
	.globl	C$main.c$453$2$203
;main.c:453: void effect3(struct scriptEvent *ev)
;	---------------------------------
; Function effect3
; ---------------------------------
_effect3::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-10
	add	hl, sp
	ld	sp, hl
	C$main.c$461$1$207	= .
	.globl	C$main.c$461$1$207
;main.c:461: x = prev_x = 40;
	ld	bc, #0x0028
	C$main.c$462$1$207	= .
	.globl	C$main.c$462$1$207
;main.c:462: y = prev_y = 50;
	ld	-8 (ix), #0x32
	ld	-7 (ix), #0x00
	C$main.c$464$2$208	= .
	.globl	C$main.c$464$2$208
;main.c:464: for (i = 0; i < 512 && !start_pressed; i++)
	ld	de, #0x0000
00106$:
	ld	a, d
	sub	a, #0x02
	jp	NC, 00108$
	ld	a,(#_start_pressed + 0)
	or	a, a
	jp	NZ, 00108$
	C$main.c$467$3$209	= .
	.globl	C$main.c$467$3$209
;main.c:467: x = MAX_PX / 2 + ((cheapSin(i) >> 11) + (cheapCos(i * 3 + i / 2) >> 10));
	ld	-1 (ix), e
	push	bc
	push	de
	ld	a, -1 (ix)
	push	af
	inc	sp
	call	_cheapSin
	inc	sp
	pop	de
	pop	bc
	ld	a, h
	sra	a
	sra	a
	sra	a
	ld	-4 (ix), a
	rlc	a
	sbc	a, a
	ld	-3 (ix), a
	push	de
	ld	a, -1 (ix)
	ld	e, a
	add	a, a
	add	a, e
	pop	de
	ld	-2 (ix), a
	ld	l, e
	ld	h, d
	srl	h
	rr	l
	ld	a, -2 (ix)
	add	a, l
	ld	-2 (ix), a
	push	bc
	push	de
	ld	a, -2 (ix)
	push	af
	inc	sp
	call	_cheapCos
	inc	sp
	pop	de
	pop	bc
	ld	a, h
	sra	a
	sra	a
	ld	l,a
	rlc	a
	sbc	a, a
	ld	h, a
	ld	a, -4 (ix)
	add	a, l
	ld	l, a
	ld	a, -3 (ix)
	adc	a, h
	ld	h, a
	ld	a, l
	add	a, #0x5f
	ld	-10 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-9 (ix), a
	C$main.c$468$3$209	= .
	.globl	C$main.c$468$3$209
;main.c:468: y = MAX_PY / 2 + ((cheapCos(i) >> 11) + (cheapSin(i * 3 + i / 2) >> 10));
	push	bc
	push	de
	ld	a, -1 (ix)
	push	af
	inc	sp
	call	_cheapCos
	inc	sp
	pop	de
	pop	bc
	ld	a, h
	sra	a
	sra	a
	sra	a
	ld	-4 (ix), a
	rlc	a
	sbc	a, a
	ld	-3 (ix), a
	push	bc
	push	de
	ld	a, -2 (ix)
	push	af
	inc	sp
	call	_cheapSin
	inc	sp
	pop	de
	pop	bc
	ld	a, h
	sra	a
	sra	a
	ld	l,a
	rlc	a
	sbc	a, a
	ld	h, a
	ld	a, -4 (ix)
	add	a, l
	ld	l, a
	ld	a, -3 (ix)
	adc	a, h
	ld	h, a
	ld	a, l
	add	a, #0x3b
	ld	-6 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-5 (ix), a
	C$main.c$470$3$209	= .
	.globl	C$main.c$470$3$209
;main.c:470: if (i)
	ld	a, d
	or	a,e
	jr	Z,00102$
	C$main.c$472$4$210	= .
	.globl	C$main.c$472$4$210
;main.c:472: updateDisplay(prev_x, prev_y, x, y, 1);
	push	de
	ld	a, #0x01
	push	af
	inc	sp
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-10 (ix)
	ld	h,-9 (ix)
	push	hl
	ld	l,-8 (ix)
	ld	h,-7 (ix)
	push	hl
	push	bc
	call	_updateDisplay
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
	pop	de
00102$:
	C$main.c$475$3$209	= .
	.globl	C$main.c$475$3$209
;main.c:475: prev_x = x;
	pop	bc
	push	bc
	C$main.c$476$3$209	= .
	.globl	C$main.c$476$3$209
;main.c:476: prev_y = y;
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	C$main.c$464$2$208	= .
	.globl	C$main.c$464$2$208
;main.c:464: for (i = 0; i < 512 && !start_pressed; i++)
	inc	de
	jp	00106$
00108$:
	ld	sp, ix
	pop	ix
	C$main.c$478$2$208	= .
	.globl	C$main.c$478$2$208
	XG$effect3$0$0	= .
	.globl	XG$effect3$0$0
	ret
	G$effect4$0$0	= .
	.globl	G$effect4$0$0
	C$main.c$480$2$208	= .
	.globl	C$main.c$480$2$208
;main.c:480: void effect4(struct scriptEvent *ev)
;	---------------------------------
; Function effect4
; ---------------------------------
_effect4::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
	C$main.c$488$1$212	= .
	.globl	C$main.c$488$1$212
;main.c:488: x = prev_x = 40;
	ld	-4 (ix), #0x28
	ld	-3 (ix), #0x00
	C$main.c$489$1$212	= .
	.globl	C$main.c$489$1$212
;main.c:489: y = prev_y = 50;
	ld	-2 (ix), #0x32
	ld	-1 (ix), #0x00
	C$main.c$491$2$213	= .
	.globl	C$main.c$491$2$213
;main.c:491: for (i = 0; i < 2048; i++)
	ld	bc, #0x0000
00104$:
	C$main.c$494$2$213	= .
	.globl	C$main.c$494$2$213
;main.c:494: x = MAX_PX / 2 + ((cheapSin(i * 8 + i) >> 10));
	ld	e, c
	ld	a, e
	rlca
	rlca
	rlca
	and	a, #0xf8
	ld	l, a
	add	hl, de
	push	bc
	push	de
	ld	a, l
	push	af
	inc	sp
	call	_cheapSin
	inc	sp
	pop	de
	pop	bc
	ld	a, h
	sra	a
	sra	a
	ld	l,a
	rlc	a
	sbc	a, a
	ld	h, a
	ld	a, l
	add	a, #0x5f
	ld	-6 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-5 (ix), a
	C$main.c$495$3$214	= .
	.globl	C$main.c$495$3$214
;main.c:495: y = MAX_PY / 2 + ((cheapSin(i * 7) >> 10));
	ld	a, e
	add	a, a
	add	a, e
	add	a, a
	add	a, e
	ld	d, a
	push	bc
	push	de
	inc	sp
	call	_cheapSin
	inc	sp
	pop	bc
	ld	a, h
	sra	a
	sra	a
	ld	e,a
	rlc	a
	sbc	a, a
	ld	d, a
	ld	hl, #0x003b
	add	hl, de
	C$main.c$497$3$214	= .
	.globl	C$main.c$497$3$214
;main.c:497: if (i)
	ld	a, b
	or	a,c
	jr	Z,00102$
	C$main.c$499$4$215	= .
	.globl	C$main.c$499$4$215
;main.c:499: drawLineSync(prev_x, prev_y, x, y);
	push	hl
	push	bc
	push	hl
	ld	e,-6 (ix)
	ld	d,-5 (ix)
	push	de
	ld	e,-2 (ix)
	ld	d,-1 (ix)
	push	de
	ld	e,-4 (ix)
	ld	d,-3 (ix)
	push	de
	call	_drawLineSync
	ld	hl, #8
	add	hl, sp
	ld	sp, hl
	pop	bc
	pop	hl
00102$:
	C$main.c$502$3$214	= .
	.globl	C$main.c$502$3$214
;main.c:502: prev_x = x;
	ld	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	ld	-3 (ix), a
	C$main.c$503$3$214	= .
	.globl	C$main.c$503$3$214
;main.c:503: prev_y = y;
	ld	-2 (ix), l
	ld	-1 (ix), h
	C$main.c$491$2$213	= .
	.globl	C$main.c$491$2$213
;main.c:491: for (i = 0; i < 2048; i++)
	inc	bc
	ld	a, b
	sub	a, #0x08
	jp	C, 00104$
	ld	sp, ix
	pop	ix
	C$main.c$505$2$213	= .
	.globl	C$main.c$505$2$213
	XG$effect4$0$0	= .
	.globl	XG$effect4$0$0
	ret
	G$effect1$0$0	= .
	.globl	G$effect1$0$0
	C$main.c$507$2$213	= .
	.globl	C$main.c$507$2$213
;main.c:507: void effect1(struct scriptEvent *ev)
;	---------------------------------
; Function effect1
; ---------------------------------
_effect1::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-18
	add	hl, sp
	ld	sp, hl
	C$main.c$509$1$213	= .
	.globl	C$main.c$509$1$213
;main.c:509: int x1 = 0, y1 = 30, x2 = MAX_PX, y2 = MAX_PY - 30;
	ld	-16 (ix), #0x00
	ld	-15 (ix), #0x00
	ld	-6 (ix), #0x1e
	ld	-5 (ix), #0x00
	ld	hl, #0x00bf
	ex	(sp), hl
	ld	-12 (ix), #0x59
	ld	-11 (ix), #0x00
	C$main.c$510$1$213	= .
	.globl	C$main.c$510$1$213
;main.c:510: int x1i = 0, y1i = 5, x2i = -0, y2i = -5;
	ld	-10 (ix), #0x00
	ld	-9 (ix), #0x00
	ld	-8 (ix), #0x05
	ld	-7 (ix), #0x00
	ld	-14 (ix), #0x00
	ld	-13 (ix), #0x00
	ld	-2 (ix), #0xfb
	ld	-1 (ix), #0xff
	C$main.c$513$2$218	= .
	.globl	C$main.c$513$2$218
;main.c:513: for (i = 0; i < 10; i++)
	ld	-4 (ix), #0x00
	ld	-3 (ix), #0x00
00102$:
	C$main.c$516$3$219	= .
	.globl	C$main.c$516$3$219
;main.c:516: stepIt(&x1, &x1i, MAX_PX);
	ld	hl, #0x0008
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	hl, #0x0002
	add	hl, sp
	ld	de, #0x00bf
	push	de
	push	bc
	push	hl
	call	_stepIt
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$main.c$517$3$219	= .
	.globl	C$main.c$517$3$219
;main.c:517: stepIt(&x2, &x2i, MAX_PX);
	ld	hl, #0x0004
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	hl, #0x0000
	add	hl, sp
	ld	de, #0x00bf
	push	de
	push	bc
	push	hl
	call	_stepIt
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$main.c$518$3$219	= .
	.globl	C$main.c$518$3$219
;main.c:518: stepIt(&y1, &y1i, MAX_PY);
	ld	hl, #0x000a
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	hl, #0x000c
	add	hl, sp
	ld	de, #0x0077
	push	de
	push	bc
	push	hl
	call	_stepIt
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$main.c$519$3$219	= .
	.globl	C$main.c$519$3$219
;main.c:519: stepIt(&y2, &y2i, MAX_PY);
	ld	hl, #0x0010
	add	hl, sp
	ld	c, l
	ld	b, h
	ld	hl, #0x0006
	add	hl, sp
	ld	de, #0x0077
	push	de
	push	bc
	push	hl
	call	_stepIt
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$main.c$521$3$219	= .
	.globl	C$main.c$521$3$219
;main.c:521: drawLineSync(x1, y1, x2, y2);
	ld	c, -12 (ix)
	ld	b, -11 (ix)
	pop	hl
	push	hl
	push	bc
	push	hl
	ld	l,-6 (ix)
	ld	h,-5 (ix)
	push	hl
	ld	l,-16 (ix)
	ld	h,-15 (ix)
	push	hl
	call	_drawLineSync
	ld	hl, #8
	add	hl, sp
	ld	sp, hl
	C$main.c$513$2$218	= .
	.globl	C$main.c$513$2$218
;main.c:513: for (i = 0; i < 10; i++)
	inc	-4 (ix)
	jr	NZ,00111$
	inc	-3 (ix)
00111$:
	ld	a, -4 (ix)
	sub	a, #0x0a
	ld	a, -3 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	C, 00102$
	ld	sp, ix
	pop	ix
	C$main.c$523$2$218	= .
	.globl	C$main.c$523$2$218
	XG$effect1$0$0	= .
	.globl	XG$effect1$0$0
	ret
	G$runScript$0$0	= .
	.globl	G$runScript$0$0
	C$main.c$574$2$218	= .
	.globl	C$main.c$574$2$218
;main.c:574: void runScript(void)
;	---------------------------------
; Function runScript
; ---------------------------------
_runScript::
	C$main.c$580$1$221	= .
	.globl	C$main.c$580$1$221
;main.c:580: vsync_keycheck();
	call	_vsync_keycheck
	C$main.c$582$1$221	= .
	.globl	C$main.c$582$1$221
;main.c:582: start_pressed = 0;
	ld	hl,#_start_pressed + 0
	ld	(hl), #0x00
	C$main.c$583$1$221	= .
	.globl	C$main.c$583$1$221
;main.c:583: nextEvent = &script[0];
	ld	bc, #_script+0
00116$:
	C$main.c$584$2$222	= .
	.globl	C$main.c$584$2$222
;main.c:584: for (; !start_pressed; frame++)
	ld	a,(#_start_pressed + 0)
	or	a, a
	jp	NZ, 00114$
	C$main.c$586$3$223	= .
	.globl	C$main.c$586$3$223
;main.c:586: vsync_keycheck();
	push	bc
	call	_vsync_keycheck
	pop	bc
	C$main.c$588$3$223	= .
	.globl	C$main.c$588$3$223
;main.c:588: if (nextEvent && (nextEvent->frame < frame))
	ld	a, b
	or	a,c
	jp	Z, 00117$
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #_runScript_frame_1_221
	ld	a, e
	sub	a, (hl)
	ld	a, d
	inc	hl
	sbc	a, (hl)
	jp	NC, 00117$
	C$main.c$590$4$224	= .
	.globl	C$main.c$590$4$224
;main.c:590: if (nextEvent->evtype != EVTYPE_END)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	a, (hl)
	cp	a, #0x04
	jp	Z,00109$
	C$main.c$593$5$225	= .
	.globl	C$main.c$593$5$225
;main.c:593: switch (nextEvent->evtype)
	or	a, a
	jr	Z,00101$
	cp	a, #0x01
	jr	Z,00102$
	cp	a, #0x02
	jr	Z,00103$
	sub	a, #0x03
	jr	Z,00104$
	jp	00107$
	C$main.c$595$6$226	= .
	.globl	C$main.c$595$6$226
;main.c:595: case EVTYPE_DRAWSTRING:
00101$:
	C$main.c$596$6$226	= .
	.globl	C$main.c$596$6$226
;main.c:596: pen_x = nextEvent->x;
	ld	l, c
	ld	h, b
	ld	de, #0x0005
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl,#_pen_x + 0
	ld	(hl), e
	C$main.c$597$6$226	= .
	.globl	C$main.c$597$6$226
;main.c:597: pen_y = nextEvent->y;
	ld	l, c
	ld	h, b
	ld	de, #0x0007
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl,#_pen_y + 0
	ld	(hl), e
	C$main.c$599$6$226	= .
	.globl	C$main.c$599$6$226
;main.c:599: drawing = 1;
	ld	hl,#_drawing + 0
	ld	(hl), #0x01
	C$main.c$600$6$226	= .
	.globl	C$main.c$600$6$226
;main.c:600: fill_mode = 1;
	ld	hl,#_fill_mode + 0
	ld	(hl), #0x01
	C$main.c$601$6$226	= .
	.globl	C$main.c$601$6$226
;main.c:601: drawString(nextEvent->str, nextEvent->scale);
	ld	l, c
	ld	h, b
	ld	de, #0x0009
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	push	bc
	ld	a, e
	push	af
	inc	sp
	push	hl
	call	_drawString
	pop	af
	inc	sp
	pop	bc
	C$main.c$602$6$226	= .
	.globl	C$main.c$602$6$226
;main.c:602: drawing = 0;
	ld	hl,#_drawing + 0
	ld	(hl), #0x00
	C$main.c$603$6$226	= .
	.globl	C$main.c$603$6$226
;main.c:603: fill_mode = 0;
	ld	hl,#_fill_mode + 0
	ld	(hl), #0x00
	C$main.c$604$6$226	= .
	.globl	C$main.c$604$6$226
;main.c:604: break;
	jr	00107$
	C$main.c$606$6$226	= .
	.globl	C$main.c$606$6$226
;main.c:606: case EVTYPE_CLEAR:
00102$:
	C$main.c$607$6$226	= .
	.globl	C$main.c$607$6$226
;main.c:607: clearDisplay(0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	_clearDisplay
	inc	sp
	pop	bc
	C$main.c$608$6$226	= .
	.globl	C$main.c$608$6$226
;main.c:608: break;
	jr	00107$
	C$main.c$610$6$226	= .
	.globl	C$main.c$610$6$226
;main.c:610: case EVTYPE_CLEAR_FULL:
00103$:
	C$main.c$611$6$226	= .
	.globl	C$main.c$611$6$226
;main.c:611: clearDisplay(1);
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	call	_clearDisplay
	inc	sp
	pop	bc
	C$main.c$612$6$226	= .
	.globl	C$main.c$612$6$226
;main.c:612: break;
	jr	00107$
	C$main.c$614$6$226	= .
	.globl	C$main.c$614$6$226
;main.c:614: case EVTYPE_FN:
00104$:
	C$main.c$615$6$226	= .
	.globl	C$main.c$615$6$226
;main.c:615: drawing = 1;
	ld	hl,#_drawing + 0
	ld	(hl), #0x01
	C$main.c$616$6$226	= .
	.globl	C$main.c$616$6$226
;main.c:616: fill_mode = 1;
	ld	hl,#_fill_mode + 0
	ld	(hl), #0x01
	C$main.c$617$6$226	= .
	.globl	C$main.c$617$6$226
;main.c:617: if (nextEvent->fn)
	push	bc
	pop	iy
	ld	l, 11 (iy)
	ld	h, 12 (iy)
	ld	a, h
	or	a,l
	jr	Z,00106$
	C$main.c$619$7$227	= .
	.globl	C$main.c$619$7$227
;main.c:619: nextEvent->fn(nextEvent);
	push	bc
	push	bc
	call	___sdcc_call_hl
	pop	af
	pop	bc
00106$:
	C$main.c$621$6$226	= .
	.globl	C$main.c$621$6$226
;main.c:621: drawing = 0;
	ld	hl,#_drawing + 0
	ld	(hl), #0x00
	C$main.c$622$6$226	= .
	.globl	C$main.c$622$6$226
;main.c:622: fill_mode = 0;
	ld	hl,#_fill_mode + 0
	ld	(hl), #0x00
	C$main.c$624$5$225	= .
	.globl	C$main.c$624$5$225
;main.c:624: }
00107$:
	C$main.c$625$5$225	= .
	.globl	C$main.c$625$5$225
;main.c:625: nextEvent++;
	ld	hl, #0x000d
	add	hl,bc
	ld	c, l
	ld	b, h
	jr	00117$
00109$:
	C$main.c$629$5$228	= .
	.globl	C$main.c$629$5$228
;main.c:629: clearDisplay(1);
	ld	a, #0x01
	push	af
	inc	sp
	call	_clearDisplay
	inc	sp
	C$main.c$631$5$228	= .
	.globl	C$main.c$631$5$228
;main.c:631: return;
	ret
00117$:
	C$main.c$584$2$222	= .
	.globl	C$main.c$584$2$222
;main.c:584: for (; !start_pressed; frame++)
	ld	iy, #_runScript_frame_1_221
	inc	0 (iy)
	jp	NZ,00116$
	inc	1 (iy)
	jp	00116$
00114$:
	C$main.c$636$1$221	= .
	.globl	C$main.c$636$1$221
;main.c:636: clearDisplay(1);
	ld	a, #0x01
	push	af
	inc	sp
	call	_clearDisplay
	inc	sp
	C$main.c$637$1$221	= .
	.globl	C$main.c$637$1$221
;main.c:637: nextEvent = NULL;
	C$main.c$638$1$221	= .
	.globl	C$main.c$638$1$221
	XG$runScript$0$0	= .
	.globl	XG$runScript$0$0
	ret
	Fmain$inputDiag_printDevice$0$0	= .
	.globl	Fmain$inputDiag_printDevice$0$0
	C$main.c$640$1$221	= .
	.globl	C$main.c$640$1$221
;main.c:640: static void inputDiag_printDevice(const char *title, uint8_t startcol, const inlib_data *dat)
;	---------------------------------
; Function inputDiag_printDevice
; ---------------------------------
_inputDiag_printDevice:
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-7
	add	hl, sp
	ld	sp, hl
	C$main.c$644$1$230	= .
	.globl	C$main.c$644$1$230
;main.c:644: SMS_setNextTileatXY(startcol, 8);
	ld	l, 6 (ix)
	ld	h, #0x00
	add	hl, hl
	ex	de,hl
	ld	l, e
	ld	a, d
	or	a, #0x7a
	ld	h, a
	rst	#0x08
	C$main.c$645$1$230	= .
	.globl	C$main.c$645$1$230
;main.c:645: printf(title);
	push	de
	ld	l,4 (ix)
	ld	h,5 (ix)
	push	hl
	call	_printf
	pop	af
	pop	de
	C$main.c$647$1$230	= .
	.globl	C$main.c$647$1$230
;main.c:647: SMS_setNextTileatXY(startcol, 10);
	ld	a, e
	set	7, a
	ld	l, a
	ld	a, d
	or	a, #0x7a
	ld	h, a
	rst	#0x08
	C$main.c$648$1$230	= .
	.globl	C$main.c$648$1$230
;main.c:648: switch (dat->type)
	ld	c,7 (ix)
	ld	b,8 (ix)
	ld	a, (bc)
	ld	-3 (ix), a
	ld	a, #0x05
	sub	a, -3 (ix)
	jr	C,00101$
	C$main.c$655$1$230	= .
	.globl	C$main.c$655$1$230
;main.c:655: SMS_setNextTileatXY(startcol, 11);
	ld	a, e
	or	a, #0xc0
	ld	-2 (ix), a
	ld	a, d
	or	a, #0x7a
	ld	-1 (ix), a
	C$main.c$656$1$230	= .
	.globl	C$main.c$656$1$230
;main.c:656: printf("Btn: %02x", dat->sms.buttons);
	ld	hl, #0x0001
	add	hl,bc
	ex	(sp), hl
	C$main.c$648$1$230	= .
	.globl	C$main.c$648$1$230
;main.c:648: switch (dat->type)
	push	de
	ld	e, -3 (ix)
	ld	d, #0x00
	ld	hl, #00115$
	add	hl, de
	add	hl, de
	add	hl, de
	pop	de
	jp	(hl)
00115$:
	jp	00102$
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
	jp	00107$
	C$main.c$650$2$231	= .
	.globl	C$main.c$650$2$231
;main.c:650: default:
00101$:
	C$main.c$651$2$231	= .
	.globl	C$main.c$651$2$231
;main.c:651: printf("Unknown");
	ld	hl, #___str_0
	push	hl
	call	_printf
	pop	af
	C$main.c$652$2$231	= .
	.globl	C$main.c$652$2$231
;main.c:652: break;
	jp	00109$
	C$main.c$653$2$231	= .
	.globl	C$main.c$653$2$231
;main.c:653: case INLIB_TYPE_SMS:
00102$:
	C$main.c$654$2$231	= .
	.globl	C$main.c$654$2$231
;main.c:654: printf("SMS Controller");
	ld	hl, #___str_1
	push	hl
	call	_printf
	pop	af
	C$main.c$655$2$231	= .
	.globl	C$main.c$655$2$231
;main.c:655: SMS_setNextTileatXY(startcol, 11);
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	rst	#0x08
	C$main.c$656$2$231	= .
	.globl	C$main.c$656$2$231
;main.c:656: printf("Btn: %02x", dat->sms.buttons);
	pop	hl
	push	hl
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #___str_2
	push	hl
	call	_printf
	pop	af
	pop	af
	C$main.c$657$2$231	= .
	.globl	C$main.c$657$2$231
;main.c:657: break;
	jp	00109$
	C$main.c$658$2$231	= .
	.globl	C$main.c$658$2$231
;main.c:658: case INLIB_TYPE_PADDLE:
00103$:
	C$main.c$659$2$231	= .
	.globl	C$main.c$659$2$231
;main.c:659: printf("SMS Paddle    ");
	push	bc
	push	de
	ld	hl, #___str_3
	push	hl
	call	_printf
	pop	af
	pop	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	rst	#0x08
	pop	bc
	C$main.c$661$2$231	= .
	.globl	C$main.c$661$2$231
;main.c:661: printf("Btn: %02x", dat->paddle.buttons);
	pop	hl
	push	hl
	ld	l, (hl)
	ld	-5 (ix), l
	ld	-4 (ix), #0x00
	push	bc
	push	de
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	hl, #___str_2
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	de
	pop	bc
	C$main.c$662$2$231	= .
	.globl	C$main.c$662$2$231
;main.c:662: SMS_setNextTileatXY(startcol, 12);
	ld	a, d
	or	a, #0x7b
	ld	h, a
	push	bc
	ld	l, e
	rst	#0x08
	C$main.c$663$2$231	= .
	.globl	C$main.c$663$2$231
;main.c:663: printf("Val: %02x", dat->paddle.value);
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #___str_4
	push	hl
	call	_printf
	pop	af
	pop	af
	C$main.c$664$2$231	= .
	.globl	C$main.c$664$2$231
;main.c:664: break;
	jp	00109$
	C$main.c$665$2$231	= .
	.globl	C$main.c$665$2$231
;main.c:665: case INLIB_TYPE_MD_MOUSE:
00104$:
	C$main.c$666$2$231	= .
	.globl	C$main.c$666$2$231
;main.c:666: printf("MD mouse      ");
	push	bc
	push	de
	ld	hl, #___str_5
	push	hl
	call	_printf
	pop	af
	pop	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	rst	#0x08
	pop	bc
	C$main.c$668$2$231	= .
	.globl	C$main.c$668$2$231
;main.c:668: printf("Btn: %02x", dat->mdmouse.buttons);
	pop	hl
	push	hl
	ld	l, (hl)
	ld	-5 (ix), l
	ld	-4 (ix), #0x00
	push	bc
	push	de
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	hl, #___str_2
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	de
	pop	bc
	C$main.c$669$2$231	= .
	.globl	C$main.c$669$2$231
;main.c:669: SMS_setNextTileatXY(startcol, 12);
	ld	l, e
	ld	a, d
	or	a, #0x7b
	ld	h, a
	push	bc
	rst	#0x08
	pop	bc
	C$main.c$670$2$231	= .
	.globl	C$main.c$670$2$231
;main.c:670: printf("X: %d  ", dat->mdmouse.x);
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	rla
	sbc	a, a
	ld	-4 (ix), a
	push	bc
	push	de
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	hl, #___str_6
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	de
	pop	bc
	C$main.c$671$2$231	= .
	.globl	C$main.c$671$2$231
;main.c:671: SMS_setNextTileatXY(startcol, 13);
	ld	a, e
	set	6, a
	ld	l, a
	ld	a, d
	or	a, #0x7b
	ld	h, a
	push	bc
	rst	#0x08
	pop	iy
	ld	c, 4 (iy)
	ld	a, c
	rla
	sbc	a, a
	ld	b, a
	push	bc
	ld	hl, #___str_7
	push	hl
	call	_printf
	pop	af
	pop	af
	C$main.c$673$2$231	= .
	.globl	C$main.c$673$2$231
;main.c:673: break;
	jp	00109$
	C$main.c$674$2$231	= .
	.globl	C$main.c$674$2$231
;main.c:674: case INLIB_TYPE_GFX_V2:
00105$:
	C$main.c$675$2$231	= .
	.globl	C$main.c$675$2$231
;main.c:675: printf("GFX. BRD. V2  ");
	push	bc
	push	de
	ld	hl, #___str_8
	push	hl
	call	_printf
	pop	af
	pop	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	rst	#0x08
	pop	bc
	C$main.c$677$2$231	= .
	.globl	C$main.c$677$2$231
;main.c:677: printf("Btn: %02x", dat->gfx2.buttons);
	pop	hl
	push	hl
	ld	l, (hl)
	ld	-5 (ix), l
	ld	-4 (ix), #0x00
	push	bc
	push	de
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	hl, #___str_2
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	de
	pop	bc
	C$main.c$678$2$231	= .
	.globl	C$main.c$678$2$231
;main.c:678: SMS_setNextTileatXY(startcol, 12);
	ld	l, e
	ld	a, d
	or	a, #0x7b
	ld	h, a
	push	bc
	rst	#0x08
	pop	bc
	C$main.c$679$2$231	= .
	.globl	C$main.c$679$2$231
;main.c:679: printf("X: %d  ", dat->gfx2.x);
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	l, (hl)
	ld	-5 (ix), l
	ld	-4 (ix), #0x00
	push	bc
	push	de
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	hl, #___str_6
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	de
	pop	bc
	C$main.c$680$2$231	= .
	.globl	C$main.c$680$2$231
;main.c:680: SMS_setNextTileatXY(startcol, 13);
	ld	a, e
	set	6, a
	ld	l, a
	ld	a, d
	or	a, #0x7b
	ld	h, a
	push	bc
	rst	#0x08
	pop	bc
	C$main.c$681$2$231	= .
	.globl	C$main.c$681$2$231
;main.c:681: printf("Y: %d  ", dat->gfx2.y);
	push	bc
	pop	iy
	ld	l, 4 (iy)
	ld	-5 (ix), l
	ld	-4 (ix), #0x00
	push	bc
	push	de
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	hl, #___str_7
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	de
	pop	bc
	C$main.c$682$2$231	= .
	.globl	C$main.c$682$2$231
;main.c:682: SMS_setNextTileatXY(startcol, 14);
	ld	a, e
	set	7, a
	ld	l, a
	ld	a, d
	or	a, #0x7b
	ld	h, a
	push	bc
	rst	#0x08
	C$main.c$683$2$231	= .
	.globl	C$main.c$683$2$231
;main.c:683: printf("P: %d  ", dat->gfx2.pressure);
	pop	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #___str_9
	push	hl
	call	_printf
	pop	af
	pop	af
	C$main.c$684$2$231	= .
	.globl	C$main.c$684$2$231
;main.c:684: break;
	jp	00109$
	C$main.c$685$2$231	= .
	.globl	C$main.c$685$2$231
;main.c:685: case INLIB_TYPE_SPORTSPAD:
00106$:
	C$main.c$686$2$231	= .
	.globl	C$main.c$686$2$231
;main.c:686: printf("SPORTSPAD     ");
	push	bc
	push	de
	ld	hl, #___str_10
	push	hl
	call	_printf
	pop	af
	pop	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	rst	#0x08
	pop	bc
	C$main.c$688$2$231	= .
	.globl	C$main.c$688$2$231
;main.c:688: printf("Btn: %02x", dat->spad.buttons);
	pop	hl
	push	hl
	ld	l, (hl)
	ld	-5 (ix), l
	ld	-4 (ix), #0x00
	push	bc
	push	de
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	hl, #___str_2
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	de
	pop	bc
	C$main.c$689$2$231	= .
	.globl	C$main.c$689$2$231
;main.c:689: SMS_setNextTileatXY(startcol, 12);
	ld	l, e
	ld	a, d
	or	a, #0x7b
	ld	h, a
	push	bc
	rst	#0x08
	pop	bc
	C$main.c$690$2$231	= .
	.globl	C$main.c$690$2$231
;main.c:690: printf("X: %d  ", dat->spad.x);
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	rla
	sbc	a, a
	ld	-4 (ix), a
	push	bc
	push	de
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	hl, #___str_6
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	de
	pop	bc
	C$main.c$691$2$231	= .
	.globl	C$main.c$691$2$231
;main.c:691: SMS_setNextTileatXY(startcol, 13);
	ld	a, e
	set	6, a
	ld	l, a
	ld	a, d
	or	a, #0x7b
	ld	h, a
	push	bc
	rst	#0x08
	pop	iy
	ld	c, 4 (iy)
	ld	a, c
	rla
	sbc	a, a
	ld	b, a
	push	bc
	ld	hl, #___str_7
	push	hl
	call	_printf
	pop	af
	pop	af
	C$main.c$693$2$231	= .
	.globl	C$main.c$693$2$231
;main.c:693: break;
	jr	00109$
	C$main.c$694$2$231	= .
	.globl	C$main.c$694$2$231
;main.c:694: case INLIB_TYPE_LIGHT_PHASER:
00107$:
	C$main.c$695$2$231	= .
	.globl	C$main.c$695$2$231
;main.c:695: printf("LIGHT PHASER  ");
	push	bc
	push	de
	ld	hl, #___str_11
	push	hl
	call	_printf
	pop	af
	pop	de
	ld	l,-2 (ix)
	ld	h,-1 (ix)
	rst	#0x08
	pop	bc
	C$main.c$697$2$231	= .
	.globl	C$main.c$697$2$231
;main.c:697: printf("Btn: %02x", dat->phaser.buttons);
	pop	hl
	push	hl
	ld	l, (hl)
	ld	-5 (ix), l
	ld	-4 (ix), #0x00
	push	bc
	push	de
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	hl, #___str_2
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	de
	pop	bc
	C$main.c$698$2$231	= .
	.globl	C$main.c$698$2$231
;main.c:698: SMS_setNextTileatXY(startcol, 12);
	ld	l, e
	ld	a, d
	or	a, #0x7b
	ld	h, a
	push	bc
	rst	#0x08
	pop	bc
	C$main.c$699$2$231	= .
	.globl	C$main.c$699$2$231
;main.c:699: printf("X: %d  ", dat->phaser.x);
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	l, (hl)
	ld	-5 (ix), l
	ld	-4 (ix), #0x00
	push	bc
	push	de
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	ld	hl, #___str_6
	push	hl
	call	_printf
	pop	af
	pop	af
	pop	de
	pop	bc
	C$main.c$700$2$231	= .
	.globl	C$main.c$700$2$231
;main.c:700: SMS_setNextTileatXY(startcol, 13);
	ld	a, e
	set	6, a
	ld	l, a
	ld	a, d
	or	a, #0x7b
	ld	h, a
	push	bc
	rst	#0x08
	C$main.c$701$2$231	= .
	.globl	C$main.c$701$2$231
;main.c:701: printf("Y: %d  ", dat->phaser.y);
	pop	hl
	inc	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	b, #0x00
	push	bc
	ld	hl, #___str_7
	push	hl
	call	_printf
	pop	af
	pop	af
	C$main.c$703$1$230	= .
	.globl	C$main.c$703$1$230
;main.c:703: }
00109$:
	ld	sp, ix
	pop	ix
	C$main.c$704$1$230	= .
	.globl	C$main.c$704$1$230
	XFmain$inputDiag_printDevice$0$0	= .
	.globl	XFmain$inputDiag_printDevice$0$0
	ret
Fmain$__str_0$0$0 == .
___str_0:
	.ascii "Unknown"
	.db 0x00
Fmain$__str_1$0$0 == .
___str_1:
	.ascii "SMS Controller"
	.db 0x00
Fmain$__str_2$0$0 == .
___str_2:
	.ascii "Btn: %02x"
	.db 0x00
Fmain$__str_3$0$0 == .
___str_3:
	.ascii "SMS Paddle    "
	.db 0x00
Fmain$__str_4$0$0 == .
___str_4:
	.ascii "Val: %02x"
	.db 0x00
Fmain$__str_5$0$0 == .
___str_5:
	.ascii "MD mouse      "
	.db 0x00
Fmain$__str_6$0$0 == .
___str_6:
	.ascii "X: %d  "
	.db 0x00
Fmain$__str_7$0$0 == .
___str_7:
	.ascii "Y: %d  "
	.db 0x00
Fmain$__str_8$0$0 == .
___str_8:
	.ascii "GFX. BRD. V2  "
	.db 0x00
Fmain$__str_9$0$0 == .
___str_9:
	.ascii "P: %d  "
	.db 0x00
Fmain$__str_10$0$0 == .
___str_10:
	.ascii "SPORTSPAD     "
	.db 0x00
Fmain$__str_11$0$0 == .
___str_11:
	.ascii "LIGHT PHASER  "
	.db 0x00
	G$inputDiag_inlib$0$0	= .
	.globl	G$inputDiag_inlib$0$0
	C$main.c$706$1$230	= .
	.globl	C$main.c$706$1$230
;main.c:706: void inputDiag_inlib(void)
;	---------------------------------
; Function inputDiag_inlib
; ---------------------------------
_inputDiag_inlib::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	C$main.c$708$1$230	= .
	.globl	C$main.c$708$1$230
;main.c:708: uint8_t polling = 1;
	ld	-1 (ix), #0x01
	C$main.c$711$1$233	= .
	.globl	C$main.c$711$1$233
;main.c:711: SMS_displayOff();
	ld	hl, #0x0140
	call	_SMS_VDPturnOffFeature
	C$main.c$712$1$233	= .
	.globl	C$main.c$712$1$233
;main.c:712: SMS_autoSetUpTextRenderer();
	call	_SMS_autoSetUpTextRenderer
	C$main.c$713$1$233	= .
	.globl	C$main.c$713$1$233
;main.c:713: SMS_displayOn();
	ld	hl, #0x0140
	call	_SMS_VDPturnOnFeature
	C$main.c$714$1$233	= .
	.globl	C$main.c$714$1$233
;main.c:714: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$main.c$715$1$233	= .
	.globl	C$main.c$715$1$233
;main.c:715: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$main.c$716$1$233	= .
	.globl	C$main.c$716$1$233
;main.c:716: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$main.c$717$1$233	= .
	.globl	C$main.c$717$1$233
;main.c:717: SMS_setNextTileatXY(1, 1);
	ld	hl, #0x7842
	rst	#0x08
	C$main.c$718$1$233	= .
	.globl	C$main.c$718$1$233
;main.c:718: printf("Input device diagnostic ");
	ld	hl, #___str_12
	push	hl
	call	_printf
	pop	af
	C$main.c$719$1$233	= .
	.globl	C$main.c$719$1$233
;main.c:719: SMS_setNextTileatXY(1, 3);
	ld	hl, #0x78c2
	rst	#0x08
	C$main.c$720$1$233	= .
	.globl	C$main.c$720$1$233
;main.c:720: printf("SMS-A-SKETCH V", "1.0");
	ld	hl, #___str_14
	push	hl
	ld	hl, #___str_13
	push	hl
	call	_printf
	pop	af
	pop	af
	C$main.c$721$1$233	= .
	.globl	C$main.c$721$1$233
;main.c:721: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$main.c$723$1$233	= .
	.globl	C$main.c$723$1$233
;main.c:723: inlib_init();
	call	_inlib_init
	C$main.c$725$1$233	= .
	.globl	C$main.c$725$1$233
;main.c:725: SMS_resetPauseRequest();
	call	_SMS_resetPauseRequest
	C$main.c$727$3$241	= .
	.globl	C$main.c$727$3$241
;main.c:727: do
	ld	-2 (ix), #0x00
00154$:
	C$main.c$729$2$234	= .
	.globl	C$main.c$729$2$234
;main.c:729: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$main.c$730$2$234	= .
	.globl	C$main.c$730$2$234
;main.c:730: inlib_poll();
	call	_inlib_poll
	C$main.c$732$2$234	= .
	.globl	C$main.c$732$2$234
;main.c:732: inputDiag_printDevice("Port 1", 1, &inlib_port1);
	ld	hl, #_inlib_port1
	push	hl
	ld	a, #0x01
	push	af
	inc	sp
	ld	hl, #___str_15
	push	hl
	call	_inputDiag_printDevice
	pop	af
	C$main.c$733$2$234	= .
	.globl	C$main.c$733$2$234
;main.c:733: inputDiag_printDevice("Port 2", 16, &inlib_port2);
	inc	sp
	ld	hl,#_inlib_port2
	ex	(sp),hl
	ld	a, #0x10
	push	af
	inc	sp
	ld	hl, #___str_16
	push	hl
	call	_inputDiag_printDevice
	pop	af
	pop	af
	inc	sp
	C$main.c$735$2$234	= .
	.globl	C$main.c$735$2$234
;main.c:735: SMS_setNextTileatXY(1, 5);
	ld	hl, #0x7942
	rst	#0x08
	C$main.c$736$2$234	= .
	.globl	C$main.c$736$2$234
;main.c:736: printf("%02x", a);
	ld	c, -2 (ix)
	ld	b, #0x00
	push	bc
	ld	hl, #___str_17
	push	hl
	call	_printf
	pop	af
	pop	af
	C$main.c$737$2$234	= .
	.globl	C$main.c$737$2$234
;main.c:737: a++;
	inc	-2 (ix)
	C$main.c$739$2$234	= .
	.globl	C$main.c$739$2$234
;main.c:739: if (inlib_port1.type == INLIB_TYPE_PADDLE)
	ld	a, (#_inlib_port1 + 0)
	cp	a, #0x01
	jr	NZ,00116$
	C$main.c$741$3$235	= .
	.globl	C$main.c$741$3$235
;main.c:741: if (inlib_port2.type != INLIB_TYPE_PADDLE)
	ld	a, (#_inlib_port2 + 0)
	dec	a
	jr	Z,00102$
	C$main.c$743$4$236	= .
	.globl	C$main.c$743$4$236
;main.c:743: SMS_setNextTileatXY(1, 20);
	ld	hl, #0x7d02
	rst	#0x08
	C$main.c$744$4$236	= .
	.globl	C$main.c$744$4$236
;main.c:744: printf("TWO PADDLES REQUIRED.  ");
	ld	hl, #___str_18
	push	hl
	call	_printf
	pop	af
	C$main.c$745$4$236	= .
	.globl	C$main.c$745$4$236
;main.c:745: inlib_init();
	call	_inlib_init
	C$main.c$746$4$236	= .
	.globl	C$main.c$746$4$236
;main.c:746: continue;
	jp	00155$
00102$:
	C$main.c$749$3$235	= .
	.globl	C$main.c$749$3$235
;main.c:749: SMS_setNextTileatXY(1, 17);
	ld	hl, #0x7c42
	rst	#0x08
	C$main.c$750$3$235	= .
	.globl	C$main.c$750$3$235
;main.c:750: printf("PADDLE MODE ENABLED    ");
	ld	hl, #___str_19
	push	hl
	call	_printf
	pop	af
	jr	00117$
00116$:
	C$main.c$752$2$234	= .
	.globl	C$main.c$752$2$234
;main.c:752: else if (inlib_port1.type == INLIB_TYPE_MD_MOUSE)
	cp	a, #0x02
	jr	NZ,00113$
	C$main.c$754$3$237	= .
	.globl	C$main.c$754$3$237
;main.c:754: SMS_setNextTileatXY(1, 17);
	ld	hl, #0x7c42
	rst	#0x08
	C$main.c$755$3$237	= .
	.globl	C$main.c$755$3$237
;main.c:755: printf("MOUSE MODE ENABLED     ");
	ld	hl, #___str_20
	push	hl
	call	_printf
	pop	af
	jr	00117$
00113$:
	C$main.c$757$2$234	= .
	.globl	C$main.c$757$2$234
;main.c:757: else if (inlib_port1.type == INLIB_TYPE_GFX_V2)
	cp	a, #0x03
	jr	NZ,00110$
	C$main.c$759$3$238	= .
	.globl	C$main.c$759$3$238
;main.c:759: SMS_setNextTileatXY(1, 17);
	ld	hl, #0x7c42
	rst	#0x08
	C$main.c$760$3$238	= .
	.globl	C$main.c$760$3$238
;main.c:760: printf("GFX. BRD. V2 ENABLED   ");
	ld	hl, #___str_21
	push	hl
	call	_printf
	pop	af
	jr	00117$
00110$:
	C$main.c$762$2$234	= .
	.globl	C$main.c$762$2$234
;main.c:762: else if (inlib_port1.type == INLIB_TYPE_SPORTSPAD)
	cp	a, #0x04
	jr	NZ,00107$
	C$main.c$764$3$239	= .
	.globl	C$main.c$764$3$239
;main.c:764: SMS_setNextTileatXY(1, 17);
	ld	hl, #0x7c42
	rst	#0x08
	C$main.c$765$3$239	= .
	.globl	C$main.c$765$3$239
;main.c:765: printf("SPORTSPAD MODE ENABLED ");
	ld	hl, #___str_22
	push	hl
	call	_printf
	pop	af
	jr	00117$
00107$:
	C$main.c$767$2$234	= .
	.globl	C$main.c$767$2$234
;main.c:767: else if (inlib_port1.type == INLIB_TYPE_LIGHT_PHASER)
	sub	a, #0x05
	jr	NZ,00104$
	C$main.c$769$3$240	= .
	.globl	C$main.c$769$3$240
;main.c:769: SMS_setNextTileatXY(1, 17);
	ld	hl, #0x7c42
	rst	#0x08
	C$main.c$770$3$240	= .
	.globl	C$main.c$770$3$240
;main.c:770: printf("LIGHT PHASER MODE      ");
	ld	hl, #___str_23
	push	hl
	call	_printf
	pop	af
	jr	00117$
00104$:
	C$main.c$774$3$241	= .
	.globl	C$main.c$774$3$241
;main.c:774: SMS_setNextTileatXY(1, 17);
	ld	hl, #0x7c42
	rst	#0x08
	C$main.c$775$3$241	= .
	.globl	C$main.c$775$3$241
;main.c:775: printf("CONTROLLER MODE ENABLED");
	ld	hl, #___str_24
	push	hl
	call	_printf
	pop	af
00117$:
	C$main.c$778$2$234	= .
	.globl	C$main.c$778$2$234
;main.c:778: SMS_setNextTileatXY(1, 23);
	ld	hl, #0x7dc2
	rst	#0x08
	C$main.c$779$2$234	= .
	.globl	C$main.c$779$2$234
;main.c:779: printf("PRESS TO CONTINUE");
	ld	hl, #___str_25
	push	hl
	call	_printf
	pop	af
	C$main.c$739$1$233	= .
	.globl	C$main.c$739$1$233
;main.c:739: if (inlib_port1.type == INLIB_TYPE_PADDLE)
	ld	hl, #_inlib_port1 + 0
	ld	c, (hl)
	C$main.c$781$2$234	= .
	.globl	C$main.c$781$2$234
;main.c:781: switch (inlib_port1.type)
	ld	a, #0x05
	sub	a, c
	jr	C,00138$
	C$main.c$784$1$233	= .
	.globl	C$main.c$784$1$233
;main.c:784: if (inlib_port1.mdmouse.buttons)
	ld	hl, #_inlib_port1 + 1
	ld	b, (hl)
	C$main.c$781$2$234	= .
	.globl	C$main.c$781$2$234
;main.c:781: switch (inlib_port1.type)
	ld	e, c
	ld	d, #0x00
	ld	hl, #00255$
	add	hl, de
	add	hl, de
	C$main.c$783$3$242	= .
	.globl	C$main.c$783$3$242
;main.c:783: case INLIB_TYPE_MD_MOUSE:
	jp	(hl)
00255$:
	jr	00121$
	jr	00126$
	jr	00118$
	jr	00129$
	jr	00132$
	jr	00135$
00118$:
	C$main.c$784$3$242	= .
	.globl	C$main.c$784$3$242
;main.c:784: if (inlib_port1.mdmouse.buttons)
	ld	a, b
	or	a, a
	jr	Z,00138$
	C$main.c$786$4$243	= .
	.globl	C$main.c$786$4$243
;main.c:786: polling = 0;
	ld	-1 (ix), #0x00
	C$main.c$788$3$242	= .
	.globl	C$main.c$788$3$242
;main.c:788: break;
	jr	00138$
	C$main.c$789$3$242	= .
	.globl	C$main.c$789$3$242
;main.c:789: case INLIB_TYPE_SMS:
00121$:
	C$main.c$790$3$242	= .
	.globl	C$main.c$790$3$242
;main.c:790: if (inlib_port1.sms.buttons)
	ld	a, b
	or	a, a
	jr	Z,00138$
	C$main.c$792$4$244	= .
	.globl	C$main.c$792$4$244
;main.c:792: if (inlib_port1.sms.buttons != SMS_BTN_1)
	ld	a, b
	sub	a, #0x10
	jr	NZ,00138$
	C$main.c$796$4$244	= .
	.globl	C$main.c$796$4$244
;main.c:796: polling = 0;
	ld	-1 (ix), #0x00
	C$main.c$798$3$242	= .
	.globl	C$main.c$798$3$242
;main.c:798: break;
	jr	00138$
	C$main.c$799$3$242	= .
	.globl	C$main.c$799$3$242
;main.c:799: case INLIB_TYPE_PADDLE:
00126$:
	C$main.c$800$3$242	= .
	.globl	C$main.c$800$3$242
;main.c:800: if (inlib_port1.paddle.buttons)
	ld	a, b
	or	a, a
	jr	Z,00138$
	C$main.c$802$4$246	= .
	.globl	C$main.c$802$4$246
;main.c:802: polling = 0;
	ld	-1 (ix), #0x00
	C$main.c$804$3$242	= .
	.globl	C$main.c$804$3$242
;main.c:804: break;
	jr	00138$
	C$main.c$805$3$242	= .
	.globl	C$main.c$805$3$242
;main.c:805: case INLIB_TYPE_GFX_V2:
00129$:
	C$main.c$806$3$242	= .
	.globl	C$main.c$806$3$242
;main.c:806: if (inlib_port1.gfx2.buttons)
	ld	a, b
	or	a, a
	jr	Z,00138$
	C$main.c$808$4$247	= .
	.globl	C$main.c$808$4$247
;main.c:808: polling = 0;
	ld	-1 (ix), #0x00
	C$main.c$810$3$242	= .
	.globl	C$main.c$810$3$242
;main.c:810: break;
	jr	00138$
	C$main.c$811$3$242	= .
	.globl	C$main.c$811$3$242
;main.c:811: case INLIB_TYPE_SPORTSPAD:
00132$:
	C$main.c$812$3$242	= .
	.globl	C$main.c$812$3$242
;main.c:812: if (inlib_port1.spad.buttons)
	ld	a, b
	or	a, a
	jr	Z,00138$
	C$main.c$814$4$248	= .
	.globl	C$main.c$814$4$248
;main.c:814: polling = 0;
	ld	-1 (ix), #0x00
	C$main.c$816$3$242	= .
	.globl	C$main.c$816$3$242
;main.c:816: break;
	jr	00138$
	C$main.c$817$3$242	= .
	.globl	C$main.c$817$3$242
;main.c:817: case INLIB_TYPE_LIGHT_PHASER:
00135$:
	C$main.c$818$3$242	= .
	.globl	C$main.c$818$3$242
;main.c:818: if (inlib_port1.phaser.buttons)
	ld	a, b
	or	a, a
	jr	Z,00138$
	C$main.c$820$4$249	= .
	.globl	C$main.c$820$4$249
;main.c:820: polling = 0;
	ld	-1 (ix), #0x00
	C$main.c$823$2$234	= .
	.globl	C$main.c$823$2$234
;main.c:823: }
00138$:
	C$main.c$825$2$234	= .
	.globl	C$main.c$825$2$234
;main.c:825: if (inlib_port1.type == INLIB_TYPE_SMS)
	ld	a, c
	or	a, a
	jr	NZ,00140$
	C$main.c$827$3$250	= .
	.globl	C$main.c$827$3$250
;main.c:827: SMS_setNextTileatXY(1, 19);
	ld	hl, #0x7cc2
	rst	#0x08
	C$main.c$828$3$250	= .
	.globl	C$main.c$828$3$250
;main.c:828: printf("Press PAUSE for SPORTSPAD");
	ld	hl, #___str_26
	push	hl
	call	_printf
	pop	af
	C$main.c$829$3$250	= .
	.globl	C$main.c$829$3$250
;main.c:829: SMS_setNextTileatXY(1, 20);
	ld	hl, #0x7d02
	rst	#0x08
	C$main.c$830$3$250	= .
	.globl	C$main.c$830$3$250
;main.c:830: printf("And Graphics Board v2");
	ld	hl, #___str_27
	push	hl
	call	_printf
	pop	af
	C$main.c$831$3$250	= .
	.globl	C$main.c$831$3$250
;main.c:831: SMS_setNextTileatXY(1, 21);
	ld	hl, #0x7d42
	rst	#0x08
	C$main.c$832$3$250	= .
	.globl	C$main.c$832$3$250
;main.c:832: printf("Or light phaser");
	ld	hl, #___str_28
	push	hl
	call	_printf
	pop	af
00140$:
	C$main.c$835$2$234	= .
	.globl	C$main.c$835$2$234
;main.c:835: if (SMS_queryPauseRequested())
	call	_SMS_queryPauseRequested
	bit	0, l
	jr	Z,00155$
	C$main.c$837$3$251	= .
	.globl	C$main.c$837$3$251
;main.c:837: SMS_resetPauseRequest();
	call	_SMS_resetPauseRequest
	C$main.c$839$3$251	= .
	.globl	C$main.c$839$3$251
;main.c:839: if (inlib_port1.type == INLIB_TYPE_SMS)
	ld	a, (#_inlib_port1 + 0)
	or	a, a
	jr	NZ,00150$
	C$main.c$841$4$252	= .
	.globl	C$main.c$841$4$252
;main.c:841: inlib_port1.type = INLIB_TYPE_GFX_V2;
	ld	hl, #_inlib_port1
	ld	(hl), #0x03
	C$main.c$842$4$252	= .
	.globl	C$main.c$842$4$252
;main.c:842: inlib_poll();
	call	_inlib_poll
	C$main.c$843$4$252	= .
	.globl	C$main.c$843$4$252
;main.c:843: inlib_poll();
	call	_inlib_poll
	jr	00155$
00150$:
	C$main.c$845$3$251	= .
	.globl	C$main.c$845$3$251
;main.c:845: else if (inlib_port1.type == INLIB_TYPE_GFX_V2)
	cp	a, #0x03
	jr	NZ,00147$
	C$main.c$847$4$253	= .
	.globl	C$main.c$847$4$253
;main.c:847: inlib_port1.type = INLIB_TYPE_SPORTSPAD;
	ld	hl, #_inlib_port1
	ld	(hl), #0x04
	C$main.c$848$4$253	= .
	.globl	C$main.c$848$4$253
;main.c:848: inlib_poll();
	call	_inlib_poll
	C$main.c$849$4$253	= .
	.globl	C$main.c$849$4$253
;main.c:849: inlib_poll();
	call	_inlib_poll
	jr	00155$
00147$:
	C$main.c$851$3$251	= .
	.globl	C$main.c$851$3$251
;main.c:851: else if (inlib_port1.type == INLIB_TYPE_SPORTSPAD)
	cp	a, #0x04
	jr	NZ,00144$
	C$main.c$853$4$254	= .
	.globl	C$main.c$853$4$254
;main.c:853: inlib_port1.type = INLIB_TYPE_LIGHT_PHASER;
	ld	hl, #_inlib_port1
	ld	(hl), #0x05
	C$main.c$854$4$254	= .
	.globl	C$main.c$854$4$254
;main.c:854: inlib_poll();
	call	_inlib_poll
	C$main.c$855$4$254	= .
	.globl	C$main.c$855$4$254
;main.c:855: inlib_poll();
	call	_inlib_poll
	jr	00155$
00144$:
	C$main.c$857$3$251	= .
	.globl	C$main.c$857$3$251
;main.c:857: else if (inlib_port1.type == INLIB_TYPE_LIGHT_PHASER)
	sub	a, #0x05
	jr	NZ,00155$
	C$main.c$859$4$255	= .
	.globl	C$main.c$859$4$255
;main.c:859: inlib_port1.type = INLIB_TYPE_SMS;
	ld	hl, #_inlib_port1
	ld	(hl), #0x00
	C$main.c$860$4$255	= .
	.globl	C$main.c$860$4$255
;main.c:860: inlib_poll();
	call	_inlib_poll
	C$main.c$861$4$255	= .
	.globl	C$main.c$861$4$255
;main.c:861: inlib_poll();
	call	_inlib_poll
00155$:
	C$main.c$865$1$233	= .
	.globl	C$main.c$865$1$233
;main.c:865: } while (polling);
	ld	a, -1 (ix)
	or	a, a
	jp	NZ, 00154$
	ld	sp, ix
	pop	ix
	C$main.c$866$1$233	= .
	.globl	C$main.c$866$1$233
	XG$inputDiag_inlib$0$0	= .
	.globl	XG$inputDiag_inlib$0$0
	ret
Fmain$__str_12$0$0 == .
___str_12:
	.ascii "Input device diagnostic "
	.db 0x00
Fmain$__str_13$0$0 == .
___str_13:
	.ascii "SMS-A-SKETCH V"
	.db 0x00
Fmain$__str_14$0$0 == .
___str_14:
	.ascii "1.0"
	.db 0x00
Fmain$__str_15$0$0 == .
___str_15:
	.ascii "Port 1"
	.db 0x00
Fmain$__str_16$0$0 == .
___str_16:
	.ascii "Port 2"
	.db 0x00
Fmain$__str_17$0$0 == .
___str_17:
	.ascii "%02x"
	.db 0x00
Fmain$__str_18$0$0 == .
___str_18:
	.ascii "TWO PADDLES REQUIRED.  "
	.db 0x00
Fmain$__str_19$0$0 == .
___str_19:
	.ascii "PADDLE MODE ENABLED    "
	.db 0x00
Fmain$__str_20$0$0 == .
___str_20:
	.ascii "MOUSE MODE ENABLED     "
	.db 0x00
Fmain$__str_21$0$0 == .
___str_21:
	.ascii "GFX. BRD. V2 ENABLED   "
	.db 0x00
Fmain$__str_22$0$0 == .
___str_22:
	.ascii "SPORTSPAD MODE ENABLED "
	.db 0x00
Fmain$__str_23$0$0 == .
___str_23:
	.ascii "LIGHT PHASER MODE      "
	.db 0x00
Fmain$__str_24$0$0 == .
___str_24:
	.ascii "CONTROLLER MODE ENABLED"
	.db 0x00
Fmain$__str_25$0$0 == .
___str_25:
	.ascii "PRESS TO CONTINUE"
	.db 0x00
Fmain$__str_26$0$0 == .
___str_26:
	.ascii "Press PAUSE for SPORTSPAD"
	.db 0x00
Fmain$__str_27$0$0 == .
___str_27:
	.ascii "And Graphics Board v2"
	.db 0x00
Fmain$__str_28$0$0 == .
___str_28:
	.ascii "Or light phaser"
	.db 0x00
	G$interruptibleFrameDelay$0$0	= .
	.globl	G$interruptibleFrameDelay$0$0
	C$main.c$868$1$233	= .
	.globl	C$main.c$868$1$233
;main.c:868: void interruptibleFrameDelay(uint16_t frames)
;	---------------------------------
; Function interruptibleFrameDelay
; ---------------------------------
_interruptibleFrameDelay::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$main.c$870$2$258	= .
	.globl	C$main.c$870$2$258
;main.c:870: while (frames--)
	ld	c,4 (ix)
	ld	b,5 (ix)
00103$:
	ld	e, c
	ld	d, b
	dec	bc
	ld	a, d
	or	a,e
	jr	Z,00106$
	C$main.c$872$2$258	= .
	.globl	C$main.c$872$2$258
;main.c:872: SMS_waitForVBlank();
	push	bc
	call	_SMS_waitForVBlank
	pop	bc
	C$main.c$874$2$258	= .
	.globl	C$main.c$874$2$258
;main.c:874: if (inlib_port1.sms.buttons)
	ld	a, (#(_inlib_port1 + 0x0001) + 0)
	or	a, a
	jr	Z,00103$
	C$main.c$876$3$259	= .
	.globl	C$main.c$876$3$259
;main.c:876: start_pressed = 1;
	ld	hl,#_start_pressed + 0
	ld	(hl), #0x01
	jr	00103$
00106$:
	pop	ix
	C$main.c$879$1$257	= .
	.globl	C$main.c$879$1$257
	XG$interruptibleFrameDelay$0$0	= .
	.globl	XG$interruptibleFrameDelay$0$0
	ret
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$881$1$257	= .
	.globl	C$main.c$881$1$257
;main.c:881: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-13
	add	hl, sp
	ld	sp, hl
	C$main.c$884$1$257	= .
	.globl	C$main.c$884$1$257
;main.c:884: int px = (DRAWAREA_TILES_W / 2) * 8;
	ld	bc, #0x0060
	C$main.c$885$1$257	= .
	.globl	C$main.c$885$1$257
;main.c:885: int py = (DRAWAREA_TILES_H / 2) * 8;
	ld	-5 (ix), #0x38
	ld	-4 (ix), #0x00
	C$main.c$886$1$257	= .
	.globl	C$main.c$886$1$257
;main.c:886: int last_px = px;
	ld	-9 (ix), #0x60
	ld	-8 (ix), #0x00
	C$main.c$887$1$257	= .
	.globl	C$main.c$887$1$257
;main.c:887: int last_py = py;
	ld	-7 (ix), #0x38
	ld	-6 (ix), #0x00
	C$main.c$889$1$261	= .
	.globl	C$main.c$889$1$261
;main.c:889: SMS_init();
	push	bc
	call	_SMS_init
	ld	hl, #0x0140
	call	_SMS_VDPturnOffFeature
	ld	hl, #0x0800
	push	hl
	ld	hl, #_main_tiles
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	hl, #_main_pal
	push	hl
	call	_util_smsClear
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
	call	_inputDiag_inlib
	ld	hl, #0x0140
	call	_SMS_VDPturnOffFeature
	ld	hl, #0x0800
	push	hl
	ld	hl, #_main_tiles
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	hl, #_main_pal
	push	hl
	call	_util_smsClear
	ld	hl, #7
	add	hl, sp
	ld	sp, hl
	ld	l, #0x01
	call	_SMS_useFirstHalfTilesforSprites
	ld	hl, #_main_pal
	call	_SMS_loadSpritePalette
	ld	hl, #0x0100
	push	hl
	ld	hl, #0x0040
	push	hl
	ld	hl, #_sprites_tiles
	push	hl
	call	_SMS_loadTiles
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	pop	bc
	C$main.c$926$1$261	= .
	.globl	C$main.c$926$1$261
;main.c:926: __endasm;
	push	af
	ld	a, #2
	ld	(0xFFFF), a
	pop	af
	C$main.c$927$1$261	= .
	.globl	C$main.c$927$1$261
;main.c:927: SMS_mapROMBank(2);
	ld	hl,#_ROM_bank_to_be_mapped_on_slot2 + 0
	ld	(hl), #0x02
	C$main.c$929$1$261	= .
	.globl	C$main.c$929$1$261
;main.c:929: setupSprite(POINTER_SID, 0, 0, POINTER_TID);
	push	bc
	ld	hl, #0x4000
	push	hl
	ld	h, #0x00
	push	hl
	call	_setupSprite
	pop	af
	ld	hl, #0x4120
	ex	(sp),hl
	ld	hl, #0x2003
	push	hl
	call	_setupSprite
	pop	af
	ld	hl, #0x4220
	ex	(sp),hl
	ld	hl, #0xd804
	push	hl
	call	_setupSprite
	pop	af
	ld	hl, #0x4390
	ex	(sp),hl
	ld	hl, #0x2005
	push	hl
	call	_setupSprite
	pop	af
	ld	hl, #0x4490
	ex	(sp),hl
	ld	hl, #0xd806
	push	hl
	call	_setupSprite
	pop	af
	ld	hl, #0x45a7
	ex	(sp),hl
	ld	hl, #0x1701
	push	hl
	call	_setupSprite
	pop	af
	ld	hl, #0x45a7
	ex	(sp),hl
	ld	hl, #0xe702
	push	hl
	call	_setupSprite
	pop	af
	pop	af
	call	_SMS_waitForVBlank
	call	_SMS_copySpritestoSAT
	pop	bc
	C$main.c$945$1$261	= .
	.globl	C$main.c$945$1$261
;main.c:945: drawbuf = &(SAVESTRUCT->drawbuf[0]);
	ld	de, #_g_savedata
	ld	hl, #0x0005
	add	hl, de
	ld	(_drawbuf), hl
	C$main.c$947$1$261	= .
	.globl	C$main.c$947$1$261
;main.c:947: setupTilemap();
	push	bc
	call	_setupTilemap
	xor	a, a
	push	af
	inc	sp
	ld	hl, #0x0038
	push	hl
	ld	l, #0x60
	push	hl
	ld	l, #0x38
	push	hl
	ld	l, #0x60
	push	hl
	call	_updateDisplay
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
	call	_syncDisplay
	ld	hl, #0x0140
	call	_SMS_VDPturnOnFeature
	ld	hl, #_promenade_psgc
	push	hl
	call	_PSGPlayNoRepeat
	pop	af
	call	_runScript
	call	_savedata_init
	pop	bc
	C$main.c$959$1$261	= .
	.globl	C$main.c$959$1$261
;main.c:959: if (!savestruct_valid(SAVESTRUCT))
	ld	de, #_g_savedata
	push	bc
	push	de
	call	_savestruct_valid
	pop	af
	pop	bc
	ld	a, l
	or	a, a
	jr	NZ,00102$
	C$main.c$961$2$262	= .
	.globl	C$main.c$961$2$262
;main.c:961: savestruct_reset(SAVESTRUCT);
	ld	de, #_g_savedata
	push	bc
	push	de
	call	_savestruct_reset
	pop	af
	call	_savedata_commit
	pop	bc
00102$:
	C$main.c$965$1$261	= .
	.globl	C$main.c$965$1$261
;main.c:965: PSGStop();
	push	bc
	call	_PSGStop
	call	_syncDisplay
	pop	bc
00207$:
	C$main.c$972$3$264	= .
	.globl	C$main.c$972$3$264
;main.c:972: SMS_waitForVBlank();
	push	bc
	call	_SMS_waitForVBlank
	call	_SMS_copySpritestoSAT
	call	_PSGFrame
	call	_PSGSFXFrame
	call	_inlib_poll
	pop	bc
	C$main.c$978$3$264	= .
	.globl	C$main.c$978$3$264
;main.c:978: switch (inlib_port1.type)
	ld	a, (#_inlib_port1+0)
	ld	-1 (ix), a
	ld	a, #0x05
	sub	a, -1 (ix)
	jp	C, 00203$
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	hl, #00399$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00399$:
	jp	00103$
	jp	00127$
	jp	00137$
	jp	00191$
	jp	00153$
	jp	00167$
	C$main.c$980$4$265	= .
	.globl	C$main.c$980$4$265
;main.c:980: case INLIB_TYPE_SMS:
00103$:
	C$main.c$981$4$265	= .
	.globl	C$main.c$981$4$265
;main.c:981: keys = SMS_getKeysPressed();
	push	bc
	call	_SMS_getKeysPressed
	pop	bc
	ld	-11 (ix), l
	ld	-10 (ix), h
	C$main.c$982$4$265	= .
	.globl	C$main.c$982$4$265
;main.c:982: now = SMS_getKeysStatus();
	push	bc
	call	_SMS_getKeysStatus
	pop	bc
	inc	sp
	inc	sp
	push	hl
	C$main.c$984$4$265	= .
	.globl	C$main.c$984$4$265
;main.c:984: if (now & PORT_A_KEY_UP)
	bit	0, -13 (ix)
	jr	Z,00107$
	C$main.c$986$5$266	= .
	.globl	C$main.c$986$5$266
;main.c:986: if (py > 0)
	xor	a, a
	cp	a, -5 (ix)
	sbc	a, -4 (ix)
	jp	PO, 00401$
	xor	a, #0x80
00401$:
	jp	P, 00107$
	C$main.c$988$6$267	= .
	.globl	C$main.c$988$6$267
;main.c:988: py--;
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	dec	hl
	ld	-5 (ix), l
	ld	-4 (ix), h
00107$:
	C$main.c$991$4$265	= .
	.globl	C$main.c$991$4$265
;main.c:991: if (now & PORT_A_KEY_DOWN)
	bit	1, -13 (ix)
	jr	Z,00111$
	C$main.c$993$5$268	= .
	.globl	C$main.c$993$5$268
;main.c:993: if (py < MAX_PY)
	ld	a, -5 (ix)
	sub	a, #0x77
	ld	a, -4 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00111$
	C$main.c$995$6$269	= .
	.globl	C$main.c$995$6$269
;main.c:995: py++;
	inc	-5 (ix)
	jr	NZ,00403$
	inc	-4 (ix)
00403$:
00111$:
	C$main.c$998$4$265	= .
	.globl	C$main.c$998$4$265
;main.c:998: if (now & PORT_A_KEY_LEFT)
	bit	2, -13 (ix)
	jr	Z,00115$
	C$main.c$1000$5$270	= .
	.globl	C$main.c$1000$5$270
;main.c:1000: if (px > 0)
	xor	a, a
	cp	a, c
	sbc	a, b
	jp	PO, 00405$
	xor	a, #0x80
00405$:
	jp	P, 00115$
	C$main.c$1002$6$271	= .
	.globl	C$main.c$1002$6$271
;main.c:1002: px--;
	dec	bc
00115$:
	C$main.c$1005$4$265	= .
	.globl	C$main.c$1005$4$265
;main.c:1005: if (now & PORT_A_KEY_RIGHT)
	bit	3, -13 (ix)
	jr	Z,00119$
	C$main.c$1007$5$272	= .
	.globl	C$main.c$1007$5$272
;main.c:1007: if (px < MAX_PX)
	ld	a, c
	sub	a, #0xbf
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00119$
	C$main.c$1009$6$273	= .
	.globl	C$main.c$1009$6$273
;main.c:1009: px++;
	inc	bc
00119$:
	C$main.c$1013$4$265	= .
	.globl	C$main.c$1013$4$265
;main.c:1013: if ((last_px != px) || (last_py != py))
	ld	a, -9 (ix)
	sub	a, c
	jr	NZ,00120$
	ld	a, -8 (ix)
	sub	a, b
	jr	NZ,00120$
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	jr	NZ,00409$
	ld	a, -4 (ix)
	sub	a, -6 (ix)
	jr	Z,00121$
00409$:
00120$:
	C$main.c$1015$5$274	= .
	.globl	C$main.c$1015$5$274
;main.c:1015: updateDisplay(px, py, last_px, last_py, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	push	bc
	call	_updateDisplay
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
	pop	bc
	C$main.c$1017$5$274	= .
	.globl	C$main.c$1017$5$274
;main.c:1017: last_px = px;
	ld	-9 (ix), c
	ld	-8 (ix), b
	C$main.c$1018$5$274	= .
	.globl	C$main.c$1018$5$274
;main.c:1018: last_py = py;
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
00121$:
	C$main.c$1021$4$265	= .
	.globl	C$main.c$1021$4$265
;main.c:1021: if (keys & PORT_A_KEY_1)
	bit	4, -11 (ix)
	jr	Z,00124$
	C$main.c$1023$5$275	= .
	.globl	C$main.c$1023$5$275
;main.c:1023: drawing = !drawing;
	ld	iy, #_drawing
	ld	a, 0 (iy)
	sub	a,#0x01
	ld	a, #0x00
	rla
	ld	0 (iy), a
	C$main.c$1024$5$275	= .
	.globl	C$main.c$1024$5$275
;main.c:1024: updateDisplay(px, py, last_px, last_py, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	push	bc
	call	_updateDisplay
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
	pop	bc
00124$:
	C$main.c$1027$4$265	= .
	.globl	C$main.c$1027$4$265
;main.c:1027: if (keys & PORT_A_KEY_2)
	bit	5, -11 (ix)
	jp	Z,00203$
	C$main.c$1029$5$276	= .
	.globl	C$main.c$1029$5$276
;main.c:1029: savedata_commit();
	push	bc
	call	_savedata_commit
	call	_syncDisplay
	pop	bc
	C$main.c$1032$4$265	= .
	.globl	C$main.c$1032$4$265
;main.c:1032: break;
	jp	00203$
	C$main.c$1034$4$265	= .
	.globl	C$main.c$1034$4$265
;main.c:1034: case INLIB_TYPE_PADDLE:
00127$:
	C$main.c$1036$4$265	= .
	.globl	C$main.c$1036$4$265
;main.c:1036: px = inlib_port1.paddle.value;
	ld	hl, #_inlib_port1 + 3
	ld	c, (hl)
	ld	b, #0x00
	C$main.c$1037$4$265	= .
	.globl	C$main.c$1037$4$265
;main.c:1037: py = 255 - inlib_port2.paddle.value;
	ld	hl, #(_inlib_port2 + 0x0003) + 0
	ld	e, (hl)
	ld	d, #0x00
	ld	a, #0xff
	sub	a, e
	ld	-5 (ix), a
	ld	a, #0x00
	sbc	a, d
	ld	-4 (ix), a
	C$main.c$1039$4$265	= .
	.globl	C$main.c$1039$4$265
;main.c:1039: if (px > MAX_PX)
	ld	a, #0xbf
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00412$
	xor	a, #0x80
00412$:
	jp	P, 00129$
	C$main.c$1041$5$277	= .
	.globl	C$main.c$1041$5$277
;main.c:1041: px = MAX_PX;
	ld	bc, #0x00bf
00129$:
	C$main.c$1043$4$265	= .
	.globl	C$main.c$1043$4$265
;main.c:1043: if (py > MAX_PY)
	ld	a, #0x77
	cp	a, -5 (ix)
	ld	a, #0x00
	sbc	a, -4 (ix)
	jp	PO, 00413$
	xor	a, #0x80
00413$:
	jp	P, 00131$
	C$main.c$1045$5$278	= .
	.globl	C$main.c$1045$5$278
;main.c:1045: py = MAX_PY;
	ld	-5 (ix), #0x77
	ld	-4 (ix), #0x00
00131$:
	C$main.c$1048$4$265	= .
	.globl	C$main.c$1048$4$265
;main.c:1048: if ((last_px != px) || (last_py != py))
	ld	a, -9 (ix)
	sub	a, c
	jr	NZ,00132$
	ld	a, -8 (ix)
	sub	a, b
	jr	NZ,00132$
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	jr	NZ,00416$
	ld	a, -4 (ix)
	sub	a, -6 (ix)
	jr	Z,00133$
00416$:
00132$:
	C$main.c$1050$5$279	= .
	.globl	C$main.c$1050$5$279
;main.c:1050: fill_mode = 1;
	ld	hl,#_fill_mode + 0
	ld	(hl), #0x01
	C$main.c$1051$5$279	= .
	.globl	C$main.c$1051$5$279
;main.c:1051: updateDisplay(px, py, last_px, last_py, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	push	bc
	call	_updateDisplay
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
	pop	bc
	C$main.c$1053$5$279	= .
	.globl	C$main.c$1053$5$279
;main.c:1053: last_px = px;
	ld	-9 (ix), c
	ld	-8 (ix), b
	C$main.c$1054$5$279	= .
	.globl	C$main.c$1054$5$279
;main.c:1054: last_py = py;
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
00133$:
	C$main.c$1057$4$265	= .
	.globl	C$main.c$1057$4$265
;main.c:1057: if (inlib_port1.paddle.pressed & PADDLE_BUTTON)
	ld	a, (#_inlib_port1 + 2)
	rrca
	jp	NC,00203$
	C$main.c$1059$5$280	= .
	.globl	C$main.c$1059$5$280
;main.c:1059: drawing = !drawing;
	ld	iy, #_drawing
	ld	a, 0 (iy)
	sub	a,#0x01
	ld	a, #0x00
	rla
	ld	0 (iy), a
	C$main.c$1060$5$280	= .
	.globl	C$main.c$1060$5$280
;main.c:1060: updateDisplay(px, py, last_px, last_py, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	push	bc
	call	_updateDisplay
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
	pop	bc
	C$main.c$1062$4$265	= .
	.globl	C$main.c$1062$4$265
;main.c:1062: break;
	jp	00203$
	C$main.c$1064$4$265	= .
	.globl	C$main.c$1064$4$265
;main.c:1064: case INLIB_TYPE_MD_MOUSE:
00137$:
	C$main.c$1066$4$265	= .
	.globl	C$main.c$1066$4$265
;main.c:1066: px += inlib_port1.mdmouse.x;
	ld	a, (#_inlib_port1 + 3)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl,bc
	ld	c, l
	ld	b, h
	C$main.c$1067$4$265	= .
	.globl	C$main.c$1067$4$265
;main.c:1067: py += -inlib_port1.mdmouse.y;
	ld	a, (#_inlib_port1 + 4)
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x00
	sbc	a, d
	ld	d, a
	ld	a, -5 (ix)
	add	a, e
	ld	-5 (ix), a
	ld	a, -4 (ix)
	adc	a, d
	ld	-4 (ix), a
	C$main.c$1069$4$265	= .
	.globl	C$main.c$1069$4$265
;main.c:1069: if (px > MAX_PX)
	ld	a, #0xbf
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00418$
	xor	a, #0x80
00418$:
	jp	P, 00139$
	C$main.c$1071$5$281	= .
	.globl	C$main.c$1071$5$281
;main.c:1071: px = MAX_PX;
	ld	bc, #0x00bf
00139$:
	C$main.c$1073$4$265	= .
	.globl	C$main.c$1073$4$265
;main.c:1073: if (py > MAX_PY)
	ld	a, #0x77
	cp	a, -5 (ix)
	ld	a, #0x00
	sbc	a, -4 (ix)
	jp	PO, 00419$
	xor	a, #0x80
00419$:
	jp	P, 00141$
	C$main.c$1075$5$282	= .
	.globl	C$main.c$1075$5$282
;main.c:1075: py = MAX_PY;
	ld	-5 (ix), #0x77
	ld	-4 (ix), #0x00
00141$:
	C$main.c$1077$4$265	= .
	.globl	C$main.c$1077$4$265
;main.c:1077: if (px < 0)
	bit	7, b
	jr	Z,00143$
	C$main.c$1079$5$283	= .
	.globl	C$main.c$1079$5$283
;main.c:1079: px = 0;
	ld	bc, #0x0000
00143$:
	C$main.c$1081$4$265	= .
	.globl	C$main.c$1081$4$265
;main.c:1081: if (py < 0)
	bit	7, -4 (ix)
	jr	Z,00145$
	C$main.c$1083$5$284	= .
	.globl	C$main.c$1083$5$284
;main.c:1083: py = 0;
	ld	-5 (ix), #0x00
	ld	-4 (ix), #0x00
00145$:
	C$main.c$1086$4$265	= .
	.globl	C$main.c$1086$4$265
;main.c:1086: if ((last_px != px) || (last_py != py))
	ld	a, -9 (ix)
	sub	a, c
	jr	NZ,00146$
	ld	a, -8 (ix)
	sub	a, b
	jr	NZ,00146$
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	jr	NZ,00422$
	ld	a, -4 (ix)
	sub	a, -6 (ix)
	jr	Z,00147$
00422$:
00146$:
	C$main.c$1088$5$285	= .
	.globl	C$main.c$1088$5$285
;main.c:1088: fill_mode = 1;
	ld	hl,#_fill_mode + 0
	ld	(hl), #0x01
	C$main.c$1089$5$285	= .
	.globl	C$main.c$1089$5$285
;main.c:1089: updateDisplay(px, py, last_px, last_py, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	push	bc
	call	_updateDisplay
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
	pop	bc
	C$main.c$1091$5$285	= .
	.globl	C$main.c$1091$5$285
;main.c:1091: last_px = px;
	ld	-9 (ix), c
	ld	-8 (ix), b
	C$main.c$1092$5$285	= .
	.globl	C$main.c$1092$5$285
;main.c:1092: last_py = py;
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
00147$:
	C$main.c$1095$4$265	= .
	.globl	C$main.c$1095$4$265
;main.c:1095: drawing = inlib_port1.mdmouse.buttons & MDMOUSE_BTN_LEFT;
	ld	hl, #(_inlib_port1 + 0x0001) + 0
	ld	e, (hl)
	ld	a, e
	and	a, #0x01
	ld	(#_drawing + 0),a
	C$main.c$1097$4$265	= .
	.globl	C$main.c$1097$4$265
;main.c:1097: if (inlib_port1.mdmouse.buttons & MDMOUSE_BTN_MID)
	bit	2, e
	jr	Z,00150$
	C$main.c$1099$5$286	= .
	.globl	C$main.c$1099$5$286
;main.c:1099: clearDisplay(0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	call	_clearDisplay
	inc	sp
	pop	bc
00150$:
	C$main.c$1102$4$265	= .
	.globl	C$main.c$1102$4$265
;main.c:1102: if (inlib_port1.mdmouse.buttons & MDMOUSE_BTN_START)
	ld	a, (#(_inlib_port1 + 0x0001) + 0)
	bit	3, a
	jp	Z,00203$
	C$main.c$1104$5$287	= .
	.globl	C$main.c$1104$5$287
;main.c:1104: savedata_commit();
	push	bc
	call	_savedata_commit
	call	_syncDisplay
	pop	bc
	C$main.c$1108$4$265	= .
	.globl	C$main.c$1108$4$265
;main.c:1108: break;
	jp	00203$
	C$main.c$1110$4$265	= .
	.globl	C$main.c$1110$4$265
;main.c:1110: case INLIB_TYPE_SPORTSPAD:
00153$:
	C$main.c$1112$4$265	= .
	.globl	C$main.c$1112$4$265
;main.c:1112: px += -inlib_port1.spad.x;
	ld	a, (#_inlib_port1 + 3)
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	xor	a, a
	sub	a, e
	ld	l, a
	ld	a, #0x00
	sbc	a, d
	ld	h, a
	add	hl,bc
	ld	c, l
	ld	b, h
	C$main.c$1113$4$265	= .
	.globl	C$main.c$1113$4$265
;main.c:1113: py += -inlib_port1.spad.y;
	ld	a, (#_inlib_port1 + 4)
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	xor	a, a
	sub	a, e
	ld	e, a
	ld	a, #0x00
	sbc	a, d
	ld	d, a
	ld	a, -5 (ix)
	add	a, e
	ld	-5 (ix), a
	ld	a, -4 (ix)
	adc	a, d
	ld	-4 (ix), a
	C$main.c$1115$4$265	= .
	.globl	C$main.c$1115$4$265
;main.c:1115: if (px > MAX_PX)
	ld	a, #0xbf
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00425$
	xor	a, #0x80
00425$:
	jp	P, 00155$
	C$main.c$1117$5$288	= .
	.globl	C$main.c$1117$5$288
;main.c:1117: px = MAX_PX;
	ld	bc, #0x00bf
00155$:
	C$main.c$1119$4$265	= .
	.globl	C$main.c$1119$4$265
;main.c:1119: if (py > MAX_PY)
	ld	a, #0x77
	cp	a, -5 (ix)
	ld	a, #0x00
	sbc	a, -4 (ix)
	jp	PO, 00426$
	xor	a, #0x80
00426$:
	jp	P, 00157$
	C$main.c$1121$5$289	= .
	.globl	C$main.c$1121$5$289
;main.c:1121: py = MAX_PY;
	ld	-5 (ix), #0x77
	ld	-4 (ix), #0x00
00157$:
	C$main.c$1123$4$265	= .
	.globl	C$main.c$1123$4$265
;main.c:1123: if (px < 0)
	bit	7, b
	jr	Z,00159$
	C$main.c$1125$5$290	= .
	.globl	C$main.c$1125$5$290
;main.c:1125: px = 0;
	ld	bc, #0x0000
00159$:
	C$main.c$1127$4$265	= .
	.globl	C$main.c$1127$4$265
;main.c:1127: if (py < 0)
	bit	7, -4 (ix)
	jr	Z,00161$
	C$main.c$1129$5$291	= .
	.globl	C$main.c$1129$5$291
;main.c:1129: py = 0;
	ld	-5 (ix), #0x00
	ld	-4 (ix), #0x00
00161$:
	C$main.c$1132$4$265	= .
	.globl	C$main.c$1132$4$265
;main.c:1132: if ((last_px != px) || (last_py != py))
	ld	a, -9 (ix)
	sub	a, c
	jr	NZ,00162$
	ld	a, -8 (ix)
	sub	a, b
	jr	NZ,00162$
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	jr	NZ,00429$
	ld	a, -4 (ix)
	sub	a, -6 (ix)
	jr	Z,00163$
00429$:
00162$:
	C$main.c$1134$5$292	= .
	.globl	C$main.c$1134$5$292
;main.c:1134: fill_mode = 1;
	ld	hl,#_fill_mode + 0
	ld	(hl), #0x01
	C$main.c$1135$5$292	= .
	.globl	C$main.c$1135$5$292
;main.c:1135: updateDisplay(px, py, last_px, last_py, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	push	bc
	call	_updateDisplay
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
	pop	bc
	C$main.c$1137$5$292	= .
	.globl	C$main.c$1137$5$292
;main.c:1137: last_px = px;
	ld	-9 (ix), c
	ld	-8 (ix), b
	C$main.c$1138$5$292	= .
	.globl	C$main.c$1138$5$292
;main.c:1138: last_py = py;
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
00163$:
	C$main.c$1141$4$265	= .
	.globl	C$main.c$1141$4$265
;main.c:1141: drawing = inlib_port1.spad.buttons & SPORTSPAD_BTN_1;
	ld	hl, #(_inlib_port1 + 0x0001) + 0
	ld	e, (hl)
	ld	a, e
	and	a, #0x01
	ld	(#_drawing + 0),a
	C$main.c$1143$4$265	= .
	.globl	C$main.c$1143$4$265
;main.c:1143: if (inlib_port1.spad.buttons & SPORTSPAD_BTN_2)
	bit	1, e
	jp	Z,00203$
	C$main.c$1145$5$293	= .
	.globl	C$main.c$1145$5$293
;main.c:1145: savedata_commit();
	push	bc
	call	_savedata_commit
	call	_syncDisplay
	pop	bc
	C$main.c$1149$4$265	= .
	.globl	C$main.c$1149$4$265
;main.c:1149: break;
	jp	00203$
	C$main.c$1151$4$265	= .
	.globl	C$main.c$1151$4$265
;main.c:1151: case INLIB_TYPE_LIGHT_PHASER:
00167$:
	C$main.c$1152$4$265	= .
	.globl	C$main.c$1152$4$265
;main.c:1152: drawing = inlib_port1.phaser.buttons;
	ld	a,(#_inlib_port1 + 1)
	ld	iy, #_drawing
	ld	0 (iy), a
	C$main.c$1154$4$265	= .
	.globl	C$main.c$1154$4$265
;main.c:1154: if (drawing)
	ld	a, 0 (iy)
	or	a, a
	jp	Z, 00189$
	C$main.c$1156$5$294	= .
	.globl	C$main.c$1156$5$294
;main.c:1156: if (inlib_port1.phaser.x < 64)
	ld	a, (#_inlib_port1 + 2)
	cp	a, #0x40
	jr	NC,00169$
	C$main.c$1158$6$295	= .
	.globl	C$main.c$1158$6$295
;main.c:1158: px = 0;
	ld	bc, #0x0000
	jr	00170$
00169$:
	C$main.c$1162$6$296	= .
	.globl	C$main.c$1162$6$296
;main.c:1162: px = inlib_port1.phaser.x - 64;
	ld	b, #0x00
	add	a, #0xc0
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
00170$:
	C$main.c$1164$5$294	= .
	.globl	C$main.c$1164$5$294
;main.c:1164: if (inlib_port1.phaser.y < 32)
	ld	a, (#_inlib_port1 + 3)
	cp	a, #0x20
	jr	NC,00172$
	C$main.c$1166$6$297	= .
	.globl	C$main.c$1166$6$297
;main.c:1166: py = 0;
	ld	-5 (ix), #0x00
	ld	-4 (ix), #0x00
	jr	00173$
00172$:
	C$main.c$1170$6$298	= .
	.globl	C$main.c$1170$6$298
;main.c:1170: py = inlib_port1.phaser.y - 32;
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
	ld	a, -3 (ix)
	add	a, #0xe0
	ld	-5 (ix), a
	ld	a, -2 (ix)
	adc	a, #0xff
	ld	-4 (ix), a
00173$:
	C$main.c$1173$5$294	= .
	.globl	C$main.c$1173$5$294
;main.c:1173: if (px > MAX_PX)
	ld	a, #0xbf
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00431$
	xor	a, #0x80
00431$:
	jp	P, 00175$
	C$main.c$1175$6$299	= .
	.globl	C$main.c$1175$6$299
;main.c:1175: px = MAX_PX;
	ld	bc, #0x00bf
00175$:
	C$main.c$1177$5$294	= .
	.globl	C$main.c$1177$5$294
;main.c:1177: if (py > MAX_PY)
	ld	a, #0x77
	cp	a, -5 (ix)
	ld	a, #0x00
	sbc	a, -4 (ix)
	jp	PO, 00432$
	xor	a, #0x80
00432$:
	jp	P, 00177$
	C$main.c$1179$6$300	= .
	.globl	C$main.c$1179$6$300
;main.c:1179: py = MAX_PY;
	ld	-5 (ix), #0x77
	ld	-4 (ix), #0x00
00177$:
	C$main.c$1181$5$294	= .
	.globl	C$main.c$1181$5$294
;main.c:1181: if (px < 0)
	bit	7, b
	jr	Z,00179$
	C$main.c$1183$6$301	= .
	.globl	C$main.c$1183$6$301
;main.c:1183: px = 0;
	ld	bc, #0x0000
00179$:
	C$main.c$1185$5$294	= .
	.globl	C$main.c$1185$5$294
;main.c:1185: if (py < 0)
	bit	7, -4 (ix)
	jr	Z,00181$
	C$main.c$1187$6$302	= .
	.globl	C$main.c$1187$6$302
;main.c:1187: py = 0;
	ld	-5 (ix), #0x00
	ld	-4 (ix), #0x00
00181$:
	C$main.c$1190$5$294	= .
	.globl	C$main.c$1190$5$294
;main.c:1190: if ((last_px != px) || (last_py != py))
	ld	a, -9 (ix)
	sub	a, c
	jr	NZ,00185$
	ld	a, -8 (ix)
	sub	a, b
	jr	NZ,00185$
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	jr	NZ,00435$
	ld	a, -4 (ix)
	sub	a, -6 (ix)
	jr	Z,00186$
00435$:
00185$:
	C$main.c$1192$6$303	= .
	.globl	C$main.c$1192$6$303
;main.c:1192: fill_mode = 1;
	ld	hl,#_fill_mode + 0
	ld	(hl), #0x01
	C$main.c$1194$6$303	= .
	.globl	C$main.c$1194$6$303
;main.c:1194: if (last_px && last_py)
	ld	a, -8 (ix)
	or	a,-9 (ix)
	jr	Z,00186$
	ld	a, -6 (ix)
	or	a,-7 (ix)
	jr	Z,00186$
	C$main.c$1196$7$304	= .
	.globl	C$main.c$1196$7$304
;main.c:1196: updateDisplay(px, py, last_px, last_py, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	push	bc
	call	_updateDisplay
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
	pop	bc
00186$:
	C$main.c$1200$5$294	= .
	.globl	C$main.c$1200$5$294
;main.c:1200: last_px = px;
	ld	-9 (ix), c
	ld	-8 (ix), b
	C$main.c$1201$5$294	= .
	.globl	C$main.c$1201$5$294
;main.c:1201: last_py = py;
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	jp	00203$
00189$:
	C$main.c$1205$5$305	= .
	.globl	C$main.c$1205$5$305
;main.c:1205: last_px = last_py = 0;
	ld	-7 (ix), #0x00
	ld	-6 (ix), #0x00
	ld	-9 (ix), #0x00
	ld	-8 (ix), #0x00
	C$main.c$1208$4$265	= .
	.globl	C$main.c$1208$4$265
;main.c:1208: break;
	jp	00203$
	C$main.c$1210$4$265	= .
	.globl	C$main.c$1210$4$265
;main.c:1210: case INLIB_TYPE_GFX_V2:
00191$:
	C$main.c$1213$4$265	= .
	.globl	C$main.c$1213$4$265
;main.c:1213: px = inlib_port1.gfx2.x;
	ld	hl, #_inlib_port1 + 3
	ld	c, (hl)
	ld	b, #0x00
	C$main.c$1216$4$265	= .
	.globl	C$main.c$1216$4$265
;main.c:1216: py = inlib_port1.gfx2.y - 50;
	ld	hl, #_inlib_port1 + 4
	ld	d, #0x00
	ld	a, (hl)
	add	a, #0xce
	ld	-5 (ix), a
	ld	a, d
	adc	a, #0xff
	ld	-4 (ix), a
	C$main.c$1218$4$265	= .
	.globl	C$main.c$1218$4$265
;main.c:1218: if (px > MAX_PX)
	ld	a, #0xbf
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00436$
	xor	a, #0x80
00436$:
	jp	P, 00193$
	C$main.c$1220$5$306	= .
	.globl	C$main.c$1220$5$306
;main.c:1220: px = MAX_PX;
	ld	bc, #0x00bf
00193$:
	C$main.c$1222$4$265	= .
	.globl	C$main.c$1222$4$265
;main.c:1222: if (py > MAX_PY)
	ld	a, #0x77
	cp	a, -5 (ix)
	ld	a, #0x00
	sbc	a, -4 (ix)
	jp	PO, 00437$
	xor	a, #0x80
00437$:
	jp	P, 00195$
	C$main.c$1224$5$307	= .
	.globl	C$main.c$1224$5$307
;main.c:1224: py = MAX_PY;
	ld	-5 (ix), #0x77
	ld	-4 (ix), #0x00
00195$:
	C$main.c$1226$4$265	= .
	.globl	C$main.c$1226$4$265
;main.c:1226: if (px < 0)
	bit	7, b
	jr	Z,00197$
	C$main.c$1228$5$308	= .
	.globl	C$main.c$1228$5$308
;main.c:1228: px = 0;
	ld	bc, #0x0000
00197$:
	C$main.c$1230$4$265	= .
	.globl	C$main.c$1230$4$265
;main.c:1230: if (py < 0)
	bit	7, -4 (ix)
	jr	Z,00199$
	C$main.c$1232$5$309	= .
	.globl	C$main.c$1232$5$309
;main.c:1232: py = 0;
	ld	-5 (ix), #0x00
	ld	-4 (ix), #0x00
00199$:
	C$main.c$1235$4$265	= .
	.globl	C$main.c$1235$4$265
;main.c:1235: if ((last_px != px) || (last_py != py))
	ld	a, -9 (ix)
	sub	a, c
	jr	NZ,00200$
	ld	a, -8 (ix)
	sub	a, b
	jr	NZ,00200$
	ld	a, -5 (ix)
	sub	a, -7 (ix)
	jr	NZ,00440$
	ld	a, -4 (ix)
	sub	a, -6 (ix)
	jr	Z,00201$
00440$:
00200$:
	C$main.c$1237$5$310	= .
	.globl	C$main.c$1237$5$310
;main.c:1237: fill_mode = 1;
	ld	hl,#_fill_mode + 0
	ld	(hl), #0x01
	C$main.c$1238$5$310	= .
	.globl	C$main.c$1238$5$310
;main.c:1238: updateDisplay(px, py, last_px, last_py, 0);
	push	bc
	xor	a, a
	push	af
	inc	sp
	ld	l,-7 (ix)
	ld	h,-6 (ix)
	push	hl
	ld	l,-9 (ix)
	ld	h,-8 (ix)
	push	hl
	ld	l,-5 (ix)
	ld	h,-4 (ix)
	push	hl
	push	bc
	call	_updateDisplay
	ld	hl, #9
	add	hl, sp
	ld	sp, hl
	pop	bc
	C$main.c$1240$5$310	= .
	.globl	C$main.c$1240$5$310
;main.c:1240: last_px = px;
	ld	-9 (ix), c
	ld	-8 (ix), b
	C$main.c$1241$5$310	= .
	.globl	C$main.c$1241$5$310
;main.c:1241: last_py = py;
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
00201$:
	C$main.c$1244$4$265	= .
	.globl	C$main.c$1244$4$265
;main.c:1244: drawing = inlib_port1.gfx2.buttons;
	ld	a,(#_inlib_port1 + 1)
	ld	(#_drawing + 0),a
	C$main.c$1246$3$264	= .
	.globl	C$main.c$1246$3$264
;main.c:1246: }
00203$:
	C$main.c$1248$3$264	= .
	.globl	C$main.c$1248$3$264
;main.c:1248: if (SMS_queryPauseRequested())
	push	bc
	call	_SMS_queryPauseRequested
	pop	bc
	bit	0, l
	jp	Z, 00207$
	C$main.c$1250$4$311	= .
	.globl	C$main.c$1250$4$311
;main.c:1250: SMS_resetPauseRequest();
	push	bc
	call	_SMS_resetPauseRequest
	xor	a, a
	push	af
	inc	sp
	call	_clearDisplay
	inc	sp
	pop	bc
	C$main.c$1254$2$263	= .
	.globl	C$main.c$1254$2$263
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jp	00207$
	.area _CODE
Fmain$__str_29$0$0 == .
__str_29:
	.ascii "StevePro Studios"
	.db 0x00
Fmain$__str_30$0$0 == .
__str_30:
	.ascii "Hello World"
	.db 0x00
Fmain$__str_31$0$0 == .
__str_31:
	.ascii "Simple Sega Master System demo to run on real hardware"
	.db 0x00
Fmain$__str_32$0$0 == .
___str_32:
	.ascii "raphnet presents"
	.db 0x00
Fmain$__str_33$0$0 == .
___str_33:
	.ascii "sms a sketch"
	.db 0x00
Fmain$__str_34$0$0 == .
___str_34:
	.ascii "for the smspower.org"
	.db 0x00
Fmain$__str_35$0$0 == .
___str_35:
	.ascii "2021 coding competition"
	.db 0x00
Fmain$__str_36$0$0 == .
___str_36:
	.ascii "Music arranged from:"
	.db 0x00
Fmain$__str_37$0$0 == .
___str_37:
	.ascii "<Pictures at an exhibition>"
	.db 0x00
Fmain$__str_38$0$0 == .
___str_38:
	.ascii "by Mussorgsky"
	.db 0x00
Fmain$__str_39$0$0 == .
___str_39:
	.ascii "Tools used:"
	.db 0x00
Fmain$__str_40$0$0 == .
___str_40:
	.ascii "devkitSMS (SMSlib, PSGlib),"
	.db 0x00
Fmain$__str_41$0$0 == .
___str_41:
	.ascii "sdcc, DefleMask, gimp..."
	.db 0x00
Fmain$__str_42$0$0 == .
___str_42:
	.ascii "Thanks!"
	.db 0x00
Fmain$__str_43$0$0 == .
___str_43:
	.ascii "What do you see?"
	.db 0x00
Fmain$__str_44$0$0 == .
___str_44:
	.ascii "I cannot draw very well so I cheated with"
	.db 0x00
Fmain$__str_45$0$0 == .
___str_45:
	.ascii "a mix of trigonometric functions..."
	.db 0x00
Fmain$__str_46$0$0 == .
___str_46:
	.ascii "Your turn!"
	.db 0x00
	.area _INITIALIZER
Fmain$__xinit_drawing$0$0 == .
__xinit__drawing:
	.db #0x00	; 0
Fmain$__xinit_paddle_mode$0$0 == .
__xinit__paddle_mode:
	.db #0x00	; 0
Fmain$__xinit_fill_mode$0$0 == .
__xinit__fill_mode:
	.db #0x00	; 0
Fmain$__xinit_script$0$0 == .
__xinit__script:
	.dw #0x0000
	.db #0x00	; 0
	.dw ___str_32
	.dw #0x0028
	.dw #0x0019
	.dw #0x0002
	.dw #0x0000
	.dw #0x003c
	.db #0x00	; 0
	.dw ___str_33
	.dw #0x0023
	.dw #0x002d
	.dw #0x0003
	.dw #0x0000
	.dw #0x0078
	.db #0x00	; 0
	.dw ___str_34
	.dw #0x0014
	.dw #0x0050
	.dw #0x0002
	.dw #0x0000
	.dw #0x0078
	.db #0x00	; 0
	.dw ___str_35
	.dw #0x000f
	.dw #0x0064
	.dw #0x0002
	.dw #0x0000
	.dw #0x00b4
	.db #0x02	; 2
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x00b4
	.db #0x00	; 0
	.dw ___str_36
	.dw #0x0005
	.dw #0x0028
	.dw #0x0002
	.dw #0x0000
	.dw #0x00b4
	.db #0x00	; 0
	.dw ___str_37
	.dw #0x0005
	.dw #0x0041
	.dw #0x0002
	.dw #0x0000
	.dw #0x00b4
	.db #0x00	; 0
	.dw ___str_38
	.dw #0x0005
	.dw #0x0050
	.dw #0x0002
	.dw #0x0000
	.dw #0x012c
	.db #0x02	; 2
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw ___str_39
	.dw #0x0005
	.dw #0x001e
	.dw #0x0002
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw ___str_40
	.dw #0x0005
	.dw #0x0037
	.dw #0x0002
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw ___str_41
	.dw #0x0005
	.dw #0x0046
	.dw #0x0002
	.dw #0x0000
	.dw #0x0168
	.db #0x00	; 0
	.dw ___str_42
	.dw #0x0005
	.dw #0x0064
	.dw #0x0002
	.dw #0x0000
	.dw #0x01a4
	.db #0x02	; 2
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw ___str_43
	.dw #0x0005
	.dw #0x000f
	.dw #0x0002
	.dw #0x0000
	.dw #0x0000
	.db #0x03	; 3
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw _effect2
	.dw #0x0000
	.db #0x00	; 0
	.dw ___str_44
	.dw #0x0005
	.dw #0x0064
	.dw #0x0001
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw ___str_45
	.dw #0x0005
	.dw #0x006e
	.dw #0x0001
	.dw #0x0000
	.dw #0x0258
	.db #0x02	; 2
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x03	; 3
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw _effect3
	.dw #0x0294
	.db #0x01	; 1
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x01	; 1
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x01	; 1
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.dw ___str_46
	.dw #0x0064
	.dw #0x005a
	.dw #0x0002
	.dw #0x0000
	.dw #0x02d0
	.db #0x01	; 1
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x01	; 1
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x01	; 1
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.db #0x04	; 4
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.dw #0x0000
	.area _CABS (ABS)
	.org 0x7FF0
G$__SMS__SEGA_signature$0$0 == .
___SMS__SEGA_signature:
	.db #0x54	; 84	'T'
	.db #0x4d	; 77	'M'
	.db #0x52	; 82	'R'
	.db #0x20	; 32
	.db #0x53	; 83	'S'
	.db #0x45	; 69	'E'
	.db #0x47	; 71	'G'
	.db #0x41	; 65	'A'
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x99	; 153
	.db #0x99	; 153
	.db #0x00	; 0
	.db #0x4c	; 76	'L'
	.org 0x7FCF
G$__SMS__SDSC_author$0$0 == .
___SMS__SDSC_author:
	.ascii "StevePro Studios"
	.db 0x00
	.org 0x7FC3
G$__SMS__SDSC_name$0$0 == .
___SMS__SDSC_name:
	.ascii "Hello World"
	.db 0x00
	.org 0x7F8C
G$__SMS__SDSC_descr$0$0 == .
___SMS__SDSC_descr:
	.ascii "Simple Sega Master System demo to run on real hardware"
	.db 0x00
	.org 0x7FE0
G$__SMS__SDSC_signature$0$0 == .
___SMS__SDSC_signature:
	.db #0x53	; 83	'S'
	.db #0x44	; 68	'D'
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x15	; 21
	.db #0x09	; 9
	.db #0x17	; 23
	.db #0x20	; 32
	.db #0xcf	; 207
	.db #0x7f	; 127
	.db #0xc3	; 195
	.db #0x7f	; 127
	.db #0x8c	; 140
	.db #0x7f	; 127
