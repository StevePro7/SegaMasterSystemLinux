;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.2.2 #13350 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _askfornamescreen
	.globl _sayhelloscreen
	.globl _resetcharactername
	.globl _isWithinKeyboard
	.globl _updateplayername
	.globl _drawplayername
	.globl _removefromplayername
	.globl _addtoplayername
	.globl _performantdelay
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _waitpadup
	.globl _joypad
	.globl _playerhasname
	.globl _i
	.globl _namecharacterindex
	.globl _keydown
	.globl _cursor
	.globl _maxcursory
	.globl _maxcursorx
	.globl _mincursory
	.globl _mincursorx
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_cursor::
	.ds 4
_keydown::
	.ds 1
_namecharacterindex::
	.ds 1
_i::
	.ds 1
_playerhasname::
	.ds 1
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
;main.c:19: void performantdelay(UINT8 numloops){
;	---------------------------------
; Function performantdelay
; ---------------------------------
_performantdelay::
	ld	c, a
;main.c:21: for(ii = 0; ii < numloops; ii++){
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, c
	ret	NC
;main.c:22: wait_vbl_done();
	call	_wait_vbl_done
;main.c:21: for(ii = 0; ii < numloops; ii++){
	inc	b
;main.c:24: }
	jr	00103$
_mincursorx:
	.db #0x0c	; 12
_mincursory:
	.db #0x50	; 80	'P'
_maxcursorx:
	.db #0x9c	; 156
_maxcursory:
	.db #0x80	; 128
;main.c:26: void addtoplayername(struct Cursor* cursor){
;	---------------------------------
; Function addtoplayername
; ---------------------------------
_addtoplayername::
	ld	c, e
	ld	b, d
;main.c:27: UINT8 characterindex = cursor->row * 10 + cursor->col + 1;
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	l, (hl)
;	spillPairReg hl
	ld	e, l
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	inc	bc
	inc	bc
	ld	a, (bc)
	add	a, l
	ld	c, a
	inc	c
;main.c:29: if(namecharacterindex == 18) return;
	ld	a, (#_namecharacterindex)
	sub	a, #0x12
	ret	Z
;main.c:31: playername[namecharacterindex] = characterindex;
	ld	a, #<(_playername)
	ld	hl, #_namecharacterindex
	add	a, (hl)
	ld	e, a
	ld	a, #>(_playername)
	adc	a, #0x00
	ld	d, a
	ld	a, c
	ld	(de), a
;main.c:32: namecharacterindex++;
	inc	(hl)
;main.c:33: }
	ret
;main.c:35: void removefromplayername(){
;	---------------------------------
; Function removefromplayername
; ---------------------------------
_removefromplayername::
;main.c:36: if(namecharacterindex>0){
	ld	hl, #_namecharacterindex
	ld	a, (hl)
	or	a, a
	ret	Z
;main.c:37: namecharacterindex--;
	dec	(hl)
;main.c:38: playername[namecharacterindex] = 0;
	ld	bc, #_playername+0
	ld	a, c
	add	a, (hl)
	ld	c, a
	jr	NC, 00110$
	inc	b
00110$:
	xor	a, a
	ld	(bc), a
;main.c:40: }
	ret
;main.c:42: void drawplayername(){
;	---------------------------------
; Function drawplayername
; ---------------------------------
_drawplayername::
;main.c:43: set_bkg_tiles(1, 4, 18, 1, playername);
	ld	de, #_playername
	push	de
	ld	hl, #0x112
	push	hl
	ld	hl, #0x401
	push	hl
	call	_set_bkg_tiles
	add	sp, #6
;main.c:44: }
	ret
;main.c:46: void updateplayername(struct Cursor* cursor){
;	---------------------------------
; Function updateplayername
; ---------------------------------
_updateplayername::
;main.c:47: if(cursor->col==8 && cursor->row==4){
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, c
	sub	a, #0x08
	jr	NZ, 00106$
	ld	a, (hl)
	sub	a, #0x04
	jr	NZ, 00106$
;main.c:49: removefromplayername();
	call	_removefromplayername
;main.c:50: drawplayername();
	jp	_drawplayername
00106$:
;main.c:52: else if(cursor->col==9 && cursor->row==4){
	ld	a, c
	sub	a, #0x09
	jr	NZ, 00102$
	ld	a, (hl)
	sub	a, #0x04
	jr	NZ, 00102$
;main.c:54: playerhasname = 1;
	ld	hl, #_playerhasname
	ld	(hl), #0x01
	ret
00102$:
;main.c:58: addtoplayername(cursor);
	call	_addtoplayername
;main.c:59: drawplayername();
;main.c:61: }
	jp	_drawplayername
;main.c:63: UBYTE isWithinKeyboard(UINT8 x, UINT8 y){
;	---------------------------------
; Function isWithinKeyboard
; ---------------------------------
_isWithinKeyboard::
	ld	c, a
;main.c:64: if(x==140 && y==144 || x==156 && y==144){
	ld	a, e
	sub	a, #0x90
	ld	a, #0x01
	jr	Z, 00141$
	xor	a, a
00141$:
	ld	b, a
	ld	a, c
	sub	a,#0x8c
	jr	NZ, 00105$
	or	a,b
	jr	NZ, 00101$
00105$:
	ld	a, c
	sub	a,#0x9c
	jr	NZ, 00102$
	or	a,b
	jr	Z, 00102$
00101$:
;main.c:65: return 1;
	ld	a, #0x01
	ret
00102$:
;main.c:67: return x >= mincursorx && x <= maxcursorx && y >=mincursory && y <= maxcursory;
	ld	hl, #_mincursorx
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jr	C, 00108$
	ld	a, (#_maxcursorx)
	sub	a, c
	jr	C, 00108$
	ld	hl, #_mincursory
	ld	c, (hl)
	ld	a, e
	sub	a, c
	jr	C, 00108$
	ld	a, (#_maxcursory)
	sub	a, e
	jr	NC, 00109$
00108$:
	xor	a, a
	ret
00109$:
	ld	a, #0x01
;main.c:68: }
	ret
;main.c:70: void resetcharactername(){
;	---------------------------------
; Function resetcharactername
; ---------------------------------
_resetcharactername::
;main.c:71: for(i=0;i!=18;i++){
	ld	hl, #_i
	ld	(hl), #0x00
00102$:
;main.c:72: playername[i] = 0x00;
	ld	a, #<(_playername)
	ld	hl, #_i
	add	a, (hl)
	ld	c, a
	ld	a, #>(_playername)
	adc	a, #0x00
	ld	b, a
	xor	a, a
	ld	(bc), a
;main.c:71: for(i=0;i!=18;i++){
	inc	(hl)
	ld	a, (hl)
	sub	a, #0x12
	jr	NZ, 00102$
;main.c:74: playerhasname = 0;
	ld	hl, #_playerhasname
	ld	(hl), #0x00
;main.c:75: }
	ret
;main.c:77: void sayhelloscreen(){
;	---------------------------------
; Function sayhelloscreen
; ---------------------------------
_sayhelloscreen::
;main.c:78: set_bkg_data(0, 45, keyboarddata);
	ld	de, #_keyboarddata
	push	de
	ld	hl, #0x2d00
	push	hl
	call	_set_bkg_data
	add	sp, #4
;main.c:80: set_bkg_tiles(0, 0, 20, 18, welcomemap);
	ld	de, #_welcomemap
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;main.c:82: drawplayername();
	call	_drawplayername
;main.c:84: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;main.c:85: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
;main.c:86: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;main.c:88: }
	ret
;main.c:90: void askfornamescreen(){
;	---------------------------------
; Function askfornamescreen
; ---------------------------------
_askfornamescreen::
;main.c:91: resetcharactername();
	call	_resetcharactername
;main.c:93: set_sprite_data(0, 1, sprites);
	ld	de, #_sprites
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_data
	add	sp, #4
;C:/gbdk/include/gb/gb.h:1602: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x00
;main.c:96: cursor.x = 12;
	ld	hl, #_cursor
	ld	(hl), #0x0c
;main.c:97: cursor.y = 80;
	ld	hl, #(_cursor + 1)
	ld	(hl), #0x50
;main.c:98: cursor.col = 0;
	ld	hl, #(_cursor + 2)
	ld	(hl), #0x00
;main.c:99: cursor.row = 0;
	ld	hl, #(_cursor + 3)
	ld	(hl), #0x00
;main.c:100: move_sprite(0, cursor.x, cursor.y);
	ld	hl, #(_cursor + 1)
	ld	b, (hl)
	ld	hl, #_cursor
	ld	c, (hl)
;C:/gbdk/include/gb/gb.h:1675: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;C:/gbdk/include/gb/gb.h:1676: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
;main.c:102: set_bkg_data(0, 45, keyboarddata);
	ld	de, #_keyboarddata
	push	de
	ld	hl, #0x2d00
	push	hl
	call	_set_bkg_data
	add	sp, #4
;main.c:103: set_bkg_tiles(0, 0, 20, 18, keyboardmap);
	ld	de, #_keyboardmap
	push	de
	ld	hl, #0x1214
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
;C:/gbdk/include/gb/gb.h:1222: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCX_REG + 0)
	add	a, #0xfc
	ldh	(_SCX_REG + 0), a
;main.c:106: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
;main.c:107: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
;main.c:108: DISPLAY_ON;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
	ldh	(_LCDC_REG + 0), a
;main.c:110: while(!playerhasname){
00117$:
	ld	a, (#_playerhasname)
	or	a, a
	jp	NZ, 00119$
;main.c:111: if(keydown){
	ld	a, (#_keydown)
	or	a, a
	jr	Z, 00102$
;main.c:112: waitpadup();
	call	_waitpadup
;main.c:113: keydown = 0;
	ld	hl, #_keydown
	ld	(hl), #0x00
00102$:
;main.c:116: switch(joypad()){
	call	_joypad
	ld	c, a
	dec	a
	jp	Z,00112$
	ld	a,c
	cp	a,#0x02
	jr	Z, 00109$
	cp	a,#0x04
	jr	Z, 00103$
	cp	a,#0x08
	jr	Z, 00106$
	sub	a, #0x10
	jp	Z,00115$
	jp	00116$
;main.c:117: case J_UP:
00103$:
;main.c:118: if(isWithinKeyboard(cursor.x, cursor.y - 16)){
	ld	a, (#(_cursor + 1) + 0)
	add	a, #0xf0
	ld	b, a
	ld	hl, #_cursor
	ld	c, (hl)
	ld	e, b
	ld	a, c
	call	_isWithinKeyboard
	or	a, a
	jp	Z, 00116$
;main.c:119: cursor.y -= 16;
	ld	a, (#(_cursor + 1) + 0)
	add	a, #0xf0
	ld	(#(_cursor + 1)),a
;main.c:120: cursor.row--;
	ld	a, (#(_cursor + 3) + 0)
	dec	a
	ld	(#(_cursor + 3)),a
;C:/gbdk/include/gb/gb.h:1691: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;C:/gbdk/include/gb/gb.h:1692: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	add	a, #0xf0
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
;main.c:122: keydown = 1;
	ld	hl, #_keydown
	ld	(hl), #0x01
;main.c:124: break;
	jp	00116$
;main.c:125: case J_DOWN: 
00106$:
;main.c:126: if(isWithinKeyboard(cursor.x, cursor.y + 16)){            
	ld	a, (#(_cursor + 1) + 0)
	add	a, #0x10
	ld	b, a
	ld	hl, #_cursor
	ld	c, (hl)
	ld	e, b
	ld	a, c
	call	_isWithinKeyboard
	or	a, a
	jp	Z, 00116$
;main.c:127: cursor.y += 16;
	ld	a, (#(_cursor + 1) + 0)
	add	a, #0x10
	ld	(#(_cursor + 1)),a
;C:/gbdk/include/gb/gb.h:1691: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;C:/gbdk/include/gb/gb.h:1692: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	add	a, #0x10
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	ld	(bc), a
;main.c:129: keydown = 1;
	ld	hl, #_keydown
	ld	(hl), #0x01
;main.c:130: cursor.row++;
	ld	a, (#(_cursor + 3) + 0)
	inc	a
	ld	(#(_cursor + 3)),a
;main.c:132: break;  
	jr	00116$
;main.c:133: case J_LEFT: 
00109$:
;main.c:134: if(isWithinKeyboard(cursor.x - 16, cursor.y)){
	ld	hl, #(_cursor + 1)
	ld	b, (hl)
	ld	a, (#_cursor + 0)
	add	a, #0xf0
	ld	e, b
	call	_isWithinKeyboard
	or	a, a
	jr	Z, 00116$
;main.c:135: cursor.x -= 16;
	ld	a, (#_cursor + 0)
	add	a, #0xf0
	ld	(#_cursor),a
;C:/gbdk/include/gb/gb.h:1691: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM+0
;C:/gbdk/include/gb/gb.h:1692: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	add	a, #0xf0
	ld	(bc), a
;main.c:137: keydown = 1;
	ld	hl, #_keydown
	ld	(hl), #0x01
;main.c:138: cursor.col--;
	ld	a, (#(_cursor + 2) + 0)
	dec	a
	ld	(#(_cursor + 2)),a
;main.c:140: break; 
	jr	00116$
;main.c:141: case J_RIGHT: 
00112$:
;main.c:142: if(isWithinKeyboard(cursor.x + 16, cursor.y)){            
	ld	hl, #(_cursor + 1)
	ld	c, (hl)
	ld	a, (#_cursor + 0)
	add	a, #0x10
	ld	e, c
	call	_isWithinKeyboard
	or	a, a
	jr	Z, 00116$
;main.c:143: cursor.x += 16;
	ld	a, (#_cursor + 0)
	add	a, #0x10
	ld	(#_cursor),a
;C:/gbdk/include/gb/gb.h:1691: OAM_item_t * itm = &shadow_OAM[nb];
	ld	bc, #_shadow_OAM
;C:/gbdk/include/gb/gb.h:1692: itm->y+=y, itm->x+=x;
	ld	a, (bc)
	ld	(bc), a
	inc	bc
	ld	a, (bc)
	add	a, #0x10
	ld	(bc), a
;main.c:145: keydown = 1;
	ld	hl, #_keydown
	ld	(hl), #0x01
;main.c:146: cursor.col++;
	ld	a, (#(_cursor + 2) + 0)
	inc	a
	ld	(#(_cursor + 2)),a
;main.c:148: break;
	jr	00116$
;main.c:149: case J_A:
00115$:
;main.c:150: updateplayername(&cursor);
	ld	de, #_cursor
	call	_updateplayername
;main.c:151: keydown = 1;
	ld	hl, #_keydown
	ld	(hl), #0x01
;main.c:153: }  
00116$:
;main.c:155: performantdelay(2);   
	ld	a, #0x02
	call	_performantdelay
	jp	00117$
00119$:
;C:/gbdk/include/gb/gb.h:1222: SCX_REG+=x, SCY_REG+=y;
	ldh	a, (_SCX_REG + 0)
	add	a, #0x04
	ldh	(_SCX_REG + 0), a
;main.c:158: return;
;main.c:159: }
	ret
;main.c:161: void main(){
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:162: ENABLE_RAM_MBC1;
	ld	hl, #0x0000
	ld	(hl), #0x0a
;main.c:164: if(playername[0]>0x28){
	ld	hl, #_playername
	ld	c, (hl)
	ld	a, #0x28
	sub	a, c
	jr	NC, 00102$
;main.c:165: askfornamescreen();
	call	_askfornamescreen
00102$:
;main.c:168: sayhelloscreen();
	call	_sayhelloscreen
;main.c:170: DISABLE_RAM_MBC1;
	ld	hl, #0x0000
	ld	(hl), #0x00
;main.c:171: }
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
