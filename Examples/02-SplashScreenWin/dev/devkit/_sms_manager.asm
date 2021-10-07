;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (Linux)
;--------------------------------------------------------
	.module _sms_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___SMS__SDSC_signature
	.globl ___SMS__SDSC_descr
	.globl ___SMS__SDSC_name
	.globl ___SMS__SDSC_author
	.globl ___SMS__SEGA_signature
	.globl _UNSAFE_SMS_copySpritestoSAT
	.globl _SMS_resetPauseRequest
	.globl _SMS_queryPauseRequested
	.globl _SMS_getKeysStatus
	.globl _SMS_loadSpritePalette
	.globl _SMS_loadBGPalette
	.globl _SMS_setSpritePaletteColor
	.globl _SMS_finalizeSprites
	.globl _SMS_addSprite
	.globl _SMS_initSprites
	.globl _SMS_crt0_RST18
	.globl _SMS_crt0_RST08
	.globl _SMS_loadSTMcompressedTileMapArea
	.globl _SMS_loadTileMap
	.globl _SMS_loadPSGaidencompressedTiles
	.globl _SMS_waitForVBlank
	.globl _SMS_setSpriteMode
	.globl _SMS_useFirstHalfTilesforSprites
	.globl _SMS_setBGScrollY
	.globl _SMS_setBGScrollX
	.globl _SMS_VDPturnOffFeature
	.globl _SMS_VDPturnOnFeature
	.globl _SMS_init
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _devkit_SMS_init
	.globl _devkit_SMS_displayOn
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_mapROMBank
	.globl _devkit_SMS_setBGScrollX
	.globl _devkit_SMS_setBGScrollY
	.globl _devkit_SMS_enableSRAM
	.globl _devkit_SMS_enableSRAMBank
	.globl _devkit_SMS_disableSRAM
	.globl _devkit_SMS_setSpriteMode
	.globl _devkit_SMS_useFirstHalfTilesforSprites_False
	.globl _devkit_SMS_useFirstHalfTilesforSprites_True
	.globl _devkit_SMS_VDPturnOnFeature
	.globl _devkit_SMS_loadPSGaidencompressedTiles
	.globl _devkit_SMS_loadSTMcompressedTileMap
	.globl _devkit_SMS_loadBGPalette
	.globl _devkit_SMS_loadSpritePalette
	.globl _devkit_SMS_setSpritePaletteColor
	.globl _devkit_SMS_setNextTileatXY
	.globl _devkit_SMS_setTile
	.globl _devkit_SMS_loadTileMap
	.globl _devkit_SMS_addSprite
	.globl _devkit_SMS_addSprite_bulk8
	.globl _devkit_SMS_addSprite_bulk12
	.globl _devkit_SMS_initSprites
	.globl _devkit_SMS_finalizeSprites
	.globl _devkit_SMS_waitForVBlank
	.globl _devkit_SMS_copySpritestoSAT
	.globl _devkit_UNSAFE_SMS_copySpritestoSAT
	.globl _devkit_SMS_queryPauseRequested
	.globl _devkit_SMS_resetPauseRequest
	.globl _devkit_isCollisionDetected
	.globl _devkit_SMS_getKeysStatus
	.globl _devkit_PORT_A_KEY_UP
	.globl _devkit_PORT_A_KEY_DOWN
	.globl _devkit_PORT_A_KEY_LEFT
	.globl _devkit_PORT_A_KEY_RIGHT
	.globl _devkit_PORT_A_KEY_1
	.globl _devkit_PORT_A_KEY_2
	.globl _devkit_SPRITEMODE_NORMAL
	.globl _devkit_VDPFEATURE_HIDEFIRSTCOL
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
_SMS_SRAM	=	0x8000
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
;_sms_manager.c:12: void devkit_SMS_init()
;	---------------------------------
; Function devkit_SMS_init
; ---------------------------------
_devkit_SMS_init::
;_sms_manager.c:14: SMS_init();
;_sms_manager.c:15: }
	jp	_SMS_init
;_sms_manager.c:16: void devkit_SMS_displayOn()
;	---------------------------------
; Function devkit_SMS_displayOn
; ---------------------------------
_devkit_SMS_displayOn::
;_sms_manager.c:18: SMS_displayOn();
	ld	hl, #0x0140
;_sms_manager.c:19: }
	jp	_SMS_VDPturnOnFeature
;_sms_manager.c:20: void devkit_SMS_displayOff()
;	---------------------------------
; Function devkit_SMS_displayOff
; ---------------------------------
_devkit_SMS_displayOff::
;_sms_manager.c:22: SMS_displayOff();
	ld	hl, #0x0140
;_sms_manager.c:23: }
	jp	_SMS_VDPturnOffFeature
;_sms_manager.c:24: void devkit_SMS_mapROMBank( unsigned char n )
;	---------------------------------
; Function devkit_SMS_mapROMBank
; ---------------------------------
_devkit_SMS_mapROMBank::
;_sms_manager.c:26: SMS_mapROMBank( n );
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	ld	(_ROM_bank_to_be_mapped_on_slot2+0), a
;_sms_manager.c:27: }
	ret
;_sms_manager.c:29: void devkit_SMS_setBGScrollX( unsigned char scrollX )
;	---------------------------------
; Function devkit_SMS_setBGScrollX
; ---------------------------------
_devkit_SMS_setBGScrollX::
;_sms_manager.c:31: SMS_setBGScrollX( scrollX );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
;_sms_manager.c:32: }
	jp	_SMS_setBGScrollX
;_sms_manager.c:33: void devkit_SMS_setBGScrollY( unsigned char scrollY )
;	---------------------------------
; Function devkit_SMS_setBGScrollY
; ---------------------------------
_devkit_SMS_setBGScrollY::
;_sms_manager.c:35: SMS_setBGScrollY( scrollY );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
;_sms_manager.c:36: }
	jp	_SMS_setBGScrollY
;_sms_manager.c:38: void devkit_SMS_enableSRAM()
;	---------------------------------
; Function devkit_SMS_enableSRAM
; ---------------------------------
_devkit_SMS_enableSRAM::
;_sms_manager.c:40: SMS_enableSRAM();
	ld	a, #0x08
	ld	(#_SRAM_bank_to_be_mapped_on_slot2), a
;_sms_manager.c:41: }
	ret
;_sms_manager.c:42: void devkit_SMS_enableSRAMBank( unsigned char n )
;	---------------------------------
; Function devkit_SMS_enableSRAMBank
; ---------------------------------
_devkit_SMS_enableSRAMBank::
;_sms_manager.c:44: SMS_enableSRAMBank( n );
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	add	a, a
	add	a, a
	set	3, a
	and	a, #0x0c
	ld	(_SRAM_bank_to_be_mapped_on_slot2+0), a
;_sms_manager.c:45: }
	ret
;_sms_manager.c:46: void devkit_SMS_disableSRAM()
;	---------------------------------
; Function devkit_SMS_disableSRAM
; ---------------------------------
_devkit_SMS_disableSRAM::
;_sms_manager.c:48: SMS_disableSRAM();
	ld	a, #0x00
	ld	(#_SRAM_bank_to_be_mapped_on_slot2), a
;_sms_manager.c:49: }
	ret
;_sms_manager.c:52: void devkit_SMS_setSpriteMode( unsigned char mode )
;	---------------------------------
; Function devkit_SMS_setSpriteMode
; ---------------------------------
_devkit_SMS_setSpriteMode::
;_sms_manager.c:54: SMS_setSpriteMode( mode );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
;_sms_manager.c:55: }
	jp	_SMS_setSpriteMode
;_sms_manager.c:56: void devkit_SMS_useFirstHalfTilesforSprites_False()
;	---------------------------------
; Function devkit_SMS_useFirstHalfTilesforSprites_False
; ---------------------------------
_devkit_SMS_useFirstHalfTilesforSprites_False::
;_sms_manager.c:58: SMS_useFirstHalfTilesforSprites( false );
	ld	l, #0x00
;_sms_manager.c:59: }
	jp	_SMS_useFirstHalfTilesforSprites
;_sms_manager.c:60: void devkit_SMS_useFirstHalfTilesforSprites_True()
;	---------------------------------
; Function devkit_SMS_useFirstHalfTilesforSprites_True
; ---------------------------------
_devkit_SMS_useFirstHalfTilesforSprites_True::
;_sms_manager.c:62: SMS_useFirstHalfTilesforSprites( true );
	ld	l, #0x01
;_sms_manager.c:63: }
	jp	_SMS_useFirstHalfTilesforSprites
;_sms_manager.c:64: void devkit_SMS_VDPturnOnFeature( unsigned int feature )
;	---------------------------------
; Function devkit_SMS_VDPturnOnFeature
; ---------------------------------
_devkit_SMS_VDPturnOnFeature::
;_sms_manager.c:66: SMS_VDPturnOnFeature( feature );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
;_sms_manager.c:67: }
	jp	_SMS_VDPturnOnFeature
;_sms_manager.c:69: void devkit_SMS_loadPSGaidencompressedTiles( void *src, unsigned int tilefrom )
;	---------------------------------
; Function devkit_SMS_loadPSGaidencompressedTiles
; ---------------------------------
_devkit_SMS_loadPSGaidencompressedTiles::
;_sms_manager.c:71: SMS_loadPSGaidencompressedTiles( src, tilefrom );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_SMS_loadPSGaidencompressedTiles
	pop	af
	pop	af
;_sms_manager.c:72: }
	ret
;_sms_manager.c:73: void devkit_SMS_loadSTMcompressedTileMap( unsigned char x, unsigned char y, unsigned char *src )
;	---------------------------------
; Function devkit_SMS_loadSTMcompressedTileMap
; ---------------------------------
_devkit_SMS_loadSTMcompressedTileMap::
;_sms_manager.c:75: SMS_loadSTMcompressedTileMap( x, y, src );
	ld	a, #0x20
	push	af
	inc	sp
	ld	iy, #5
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	a, -1 (iy)
	dec	iy
	push	af
	inc	sp
	ld	a, -1 (iy)
	push	af
	inc	sp
	call	_SMS_loadSTMcompressedTileMapArea
	pop	af
	pop	af
	inc	sp
;_sms_manager.c:76: }
	ret
;_sms_manager.c:78: void devkit_SMS_loadBGPalette( void *palette )
;	---------------------------------
; Function devkit_SMS_loadBGPalette
; ---------------------------------
_devkit_SMS_loadBGPalette::
;_sms_manager.c:80: SMS_loadBGPalette( palette );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
;_sms_manager.c:81: }
	jp	_SMS_loadBGPalette
;_sms_manager.c:82: void devkit_SMS_loadSpritePalette( void *palette )
;	---------------------------------
; Function devkit_SMS_loadSpritePalette
; ---------------------------------
_devkit_SMS_loadSpritePalette::
;_sms_manager.c:84: SMS_loadSpritePalette( palette );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
;_sms_manager.c:85: }
	jp	_SMS_loadSpritePalette
;_sms_manager.c:86: void devkit_SMS_setSpritePaletteColor( const unsigned char entry, const unsigned char r, const unsigned char g, const unsigned char b )
;	---------------------------------
; Function devkit_SMS_setSpritePaletteColor
; ---------------------------------
_devkit_SMS_setSpritePaletteColor::
;_sms_manager.c:88: const unsigned char color = RGB( r, g, b );
	ld	iy, #4
	add	iy, sp
	ld	a, 0 (iy)
	add	a, a
	add	a, a
	dec	iy
	or	a, 0 (iy)
	ld	c, a
	ld	a, 2 (iy)
	inc	iy
	inc	iy
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	or	a, c
;_sms_manager.c:89: SMS_setSpritePaletteColor( entry, color );
	push	af
	inc	sp
	ld	a, -3 (iy)
	push	af
	inc	sp
	call	_SMS_setSpritePaletteColor
	pop	af
;_sms_manager.c:90: }
	ret
;_sms_manager.c:92: void devkit_SMS_setNextTileatXY( unsigned char x, unsigned char y )
;	---------------------------------
; Function devkit_SMS_setNextTileatXY
; ---------------------------------
_devkit_SMS_setNextTileatXY::
	push	ix
	ld	ix,#0
	add	ix,sp
;_sms_manager.c:94: SMS_setNextTileatXY( x, y );
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	a, l
	push	af
	ld	a, h
	or	a, #0x78
	ld	c, a
	pop	af
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	or	a, l
	ld	l, a
	ld	a, c
	or	a, h
	ld	h, a
;_sms_manager.c:95: }
	pop	ix
	jp	_SMS_crt0_RST08
;_sms_manager.c:96: void devkit_SMS_setTile( const unsigned char tile )
;	---------------------------------
; Function devkit_SMS_setTile
; ---------------------------------
_devkit_SMS_setTile::
;_sms_manager.c:98: SMS_setTile( tile );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, #0x00
;_sms_manager.c:99: }
	jp	_SMS_crt0_RST18
;_sms_manager.c:100: void devkit_SMS_loadTileMap( unsigned char x, unsigned char y, unsigned char *src, int size)
;	---------------------------------
; Function devkit_SMS_loadTileMap
; ---------------------------------
_devkit_SMS_loadTileMap::
;_sms_manager.c:102: SMS_loadTileMap( x, y, src, size );
	ld	iy, #4
	add	iy, sp
	ld	c, 0 (iy)
	ld	b, 1 (iy)
	ld	l, 2 (iy)
	ld	h, 3 (iy)
	inc	iy
	inc	iy
	push	hl
	push	bc
	ld	a, -3 (iy)
	dec	iy
	dec	iy
	dec	iy
	push	af
	inc	sp
	ld	a, -1 (iy)
	push	af
	inc	sp
	call	_SMS_loadTileMap
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;_sms_manager.c:103: }
	ret
;_sms_manager.c:105: void devkit_SMS_addSprite( unsigned char x, unsigned char y, int tile )
;	---------------------------------
; Function devkit_SMS_addSprite
; ---------------------------------
_devkit_SMS_addSprite::
;_sms_manager.c:107: SMS_addSprite( x, y, tile );
	ld	iy, #4
	add	iy, sp
	ld	a, 0 (iy)
	push	af
	inc	sp
	ld	a, -1 (iy)
	dec	iy
	push	af
	inc	sp
	ld	a, -1 (iy)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
;_sms_manager.c:108: }
	ret
;_sms_manager.c:109: void devkit_SMS_addSprite_bulk8( unsigned char x, unsigned char y, int tile )
;	---------------------------------
; Function devkit_SMS_addSprite_bulk8
; ---------------------------------
_devkit_SMS_addSprite_bulk8::
	push	ix
	ld	ix,#0
	add	ix,sp
;_sms_manager.c:111: devkit_SMS_addSprite( x + 0, y + 0, tile + 0 );
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	ld	h, 5 (ix)
	ld	l, 4 (ix)
	push	hl
	call	_devkit_SMS_addSprite
	pop	af
	pop	af
;_sms_manager.c:112: devkit_SMS_addSprite( x + 8, y + 0, tile + 1 );
	ld	c, 6 (ix)
	ld	b, 7 (ix)
	inc	bc
	ld	a, 4 (ix)
	add	a, #0x08
	ld	d, a
	push	de
	push	bc
	ld	a, 5 (ix)
	push	af
	inc	sp
	push	de
	inc	sp
	call	_devkit_SMS_addSprite
	pop	af
	pop	af
	pop	de
;_sms_manager.c:114: devkit_SMS_addSprite( x + 0, y + 8, tile + 2 );
	ld	c, 6 (ix)
	ld	b, 7 (ix)
	inc	bc
	inc	bc
	ld	e, 5 (ix)
	ld	a, e
	add	a, #0x08
	ld	l, a
	push	hl
	push	de
	push	bc
	ld	h, l
	ld	l, 4 (ix)
	push	hl
	call	_devkit_SMS_addSprite
	pop	af
	pop	af
	pop	de
	pop	hl
;_sms_manager.c:115: devkit_SMS_addSprite( x + 8, y + 8, tile + 3 );
	ld	c, 6 (ix)
	ld	b, 7 (ix)
	inc	bc
	inc	bc
	inc	bc
	push	de
	push	bc
	ld	a, l
	push	af
	inc	sp
	push	de
	inc	sp
	call	_devkit_SMS_addSprite
	pop	af
	pop	af
	pop	de
;_sms_manager.c:117: devkit_SMS_addSprite( x + 0, y + 16, tile + 4 );
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	ld	bc, #0x0004
	add	hl, bc
	ld	a, e
	add	a, #0x10
	ld	c, a
	push	bc
	push	de
	push	hl
	ld	h, c
	ld	l, 4 (ix)
	push	hl
	call	_devkit_SMS_addSprite
	pop	af
	pop	af
	pop	de
	pop	bc
;_sms_manager.c:118: devkit_SMS_addSprite( x + 8, y + 16, tile + 5 );
	ld	a, 6 (ix)
	add	a, #0x05
	ld	l, a
	ld	a, 7 (ix)
	adc	a, #0x00
	ld	h, a
	push	de
	push	hl
	ld	a, c
	push	af
	inc	sp
	push	de
	inc	sp
	call	_devkit_SMS_addSprite
	pop	af
	pop	af
	pop	de
;_sms_manager.c:120: devkit_SMS_addSprite( x + 0, y + 24, tile + 6 );
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	ld	bc, #0x0006
	add	hl, bc
	ld	a, e
	add	a, #0x18
	ld	e, a
	push	de
	push	hl
	ld	h, e
	ld	l, 4 (ix)
	push	hl
	call	_devkit_SMS_addSprite
	pop	af
	pop	af
	pop	de
;_sms_manager.c:121: devkit_SMS_addSprite( x + 8, y + 24, tile + 7 );
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	ld	bc, #0x0007
	add	hl, bc
	push	hl
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	call	_devkit_SMS_addSprite
	pop	af
	pop	af
;_sms_manager.c:122: }
	pop	ix
	ret
;_sms_manager.c:123: void devkit_SMS_addSprite_bulk12( unsigned char x, unsigned char y, int tile )
;	---------------------------------
; Function devkit_SMS_addSprite_bulk12
; ---------------------------------
_devkit_SMS_addSprite_bulk12::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;_sms_manager.c:125: SMS_addSprite( x + 0, y + 0, tile + 0 );
	ld	c, 6 (ix)
	push	bc
	ld	h, c
	ld	l, 5 (ix)
	push	hl
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	pop	bc
;_sms_manager.c:126: SMS_addSprite( x + 8, y + 0, tile + 1 );
	ld	d, c
	inc	d
	ld	b, 4 (ix)
	ld	a, b
	add	a, #0x08
	ld	-1 (ix), a
	push	bc
	push	de
	inc	sp
	ld	h, 5 (ix)
	ld	l, -1 (ix)
	push	hl
	call	_SMS_addSprite
	pop	af
	inc	sp
	pop	bc
;_sms_manager.c:127: SMS_addSprite( x + 16, y + 0, tile + 2 );
	ld	e, c
	inc	e
	inc	e
	ld	a, b
	add	a, #0x10
	ld	b, a
	push	bc
	ld	h, e
	ld	l, 5 (ix)
	push	hl
	push	bc
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	pop	bc
;_sms_manager.c:129: SMS_addSprite( x + 0, y + 8, tile + 3 );
	ld	l, c
	inc	l
	inc	l
	inc	l
	ld	e, 5 (ix)
	ld	a, e
	add	a, #0x08
	ld	d, a
	push	bc
	push	de
	ld	a, l
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	pop	de
	pop	bc
;_sms_manager.c:130: SMS_addSprite( x + 8, y + 8, tile + 4 );
	ld	a, c
	inc	a
	inc	a
	inc	a
	inc	a
	push	bc
	push	de
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	pop	de
	pop	bc
;_sms_manager.c:131: SMS_addSprite( x + 16, y + 8, tile + 5 );
	ld	a, c
	add	a, #0x05
	push	bc
	push	de
	push	af
	inc	sp
	ld	e, b
	push	de
	call	_SMS_addSprite
	pop	af
	inc	sp
	pop	de
	pop	bc
;_sms_manager.c:133: SMS_addSprite( x + 0, y + 16, tile + 6 );
	ld	a, c
	add	a, #0x06
	ld	h, a
	ld	a, e
	add	a, #0x10
	ld	d, a
	push	bc
	push	de
	ld	l, d
	push	hl
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	pop	de
	pop	bc
;_sms_manager.c:134: SMS_addSprite( x + 8, y + 16, tile + 7 );
	ld	a, c
	add	a, #0x07
	push	bc
	push	de
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	pop	de
	pop	bc
;_sms_manager.c:135: SMS_addSprite( x + 16, y + 16, tile + 8 );
	ld	a, c
	add	a, #0x08
	push	bc
	push	de
	push	af
	inc	sp
	ld	e, b
	push	de
	call	_SMS_addSprite
	pop	af
	inc	sp
	pop	de
	pop	bc
;_sms_manager.c:137: SMS_addSprite( x + 0, y + 24, tile + 9 );
	ld	a, c
	add	a, #0x09
	ld	h, a
	ld	a, e
	add	a, #0x18
	ld	d, a
	push	bc
	push	de
	ld	l, d
	push	hl
	ld	a, 4 (ix)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	pop	de
	pop	bc
;_sms_manager.c:138: SMS_addSprite( x + 8, y + 24, tile + 10 );
	ld	a, c
	add	a, #0x0a
	push	bc
	push	de
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a, -1 (ix)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
	pop	de
	pop	bc
;_sms_manager.c:139: SMS_addSprite( x + 16, y + 24, tile + 11 );
	ld	a, c
	add	a, #0x0b
	push	af
	inc	sp
	ld	e, b
	push	de
	call	_SMS_addSprite
	pop	af
	inc	sp
;_sms_manager.c:140: }
	inc	sp
	pop	ix
	ret
;_sms_manager.c:142: void devkit_SMS_initSprites()
;	---------------------------------
; Function devkit_SMS_initSprites
; ---------------------------------
_devkit_SMS_initSprites::
;_sms_manager.c:144: SMS_initSprites();
;_sms_manager.c:145: }
	jp	_SMS_initSprites
;_sms_manager.c:146: void devkit_SMS_finalizeSprites()
;	---------------------------------
; Function devkit_SMS_finalizeSprites
; ---------------------------------
_devkit_SMS_finalizeSprites::
;_sms_manager.c:148: SMS_finalizeSprites();
;_sms_manager.c:149: }
	jp	_SMS_finalizeSprites
;_sms_manager.c:150: void devkit_SMS_waitForVBlank()
;	---------------------------------
; Function devkit_SMS_waitForVBlank
; ---------------------------------
_devkit_SMS_waitForVBlank::
;_sms_manager.c:152: SMS_waitForVBlank();
;_sms_manager.c:153: }
	jp	_SMS_waitForVBlank
;_sms_manager.c:154: void devkit_SMS_copySpritestoSAT()
;	---------------------------------
; Function devkit_SMS_copySpritestoSAT
; ---------------------------------
_devkit_SMS_copySpritestoSAT::
;_sms_manager.c:156: UNSAFE_SMS_copySpritestoSAT();
;_sms_manager.c:157: }
	jp	_UNSAFE_SMS_copySpritestoSAT
;_sms_manager.c:158: void devkit_UNSAFE_SMS_copySpritestoSAT()
;	---------------------------------
; Function devkit_UNSAFE_SMS_copySpritestoSAT
; ---------------------------------
_devkit_UNSAFE_SMS_copySpritestoSAT::
;_sms_manager.c:160: UNSAFE_SMS_copySpritestoSAT();
;_sms_manager.c:161: }
	jp	_UNSAFE_SMS_copySpritestoSAT
;_sms_manager.c:163: unsigned char devkit_SMS_queryPauseRequested()
;	---------------------------------
; Function devkit_SMS_queryPauseRequested
; ---------------------------------
_devkit_SMS_queryPauseRequested::
;_sms_manager.c:165: return SMS_queryPauseRequested();
;_sms_manager.c:166: }
	jp  _SMS_queryPauseRequested
;_sms_manager.c:167: void devkit_SMS_resetPauseRequest()
;	---------------------------------
; Function devkit_SMS_resetPauseRequest
; ---------------------------------
_devkit_SMS_resetPauseRequest::
;_sms_manager.c:169: SMS_resetPauseRequest();
;_sms_manager.c:170: }
	jp	_SMS_resetPauseRequest
;_sms_manager.c:172: unsigned char devkit_isCollisionDetected()
;	---------------------------------
; Function devkit_isCollisionDetected
; ---------------------------------
_devkit_isCollisionDetected::
;_sms_manager.c:174: return ( SMS_VDPFlags & VDPFLAG_SPRITECOLLISION );
	ld	a,(#_SMS_VDPFlags + 0)
	and	a, #0x20
	ld	l, a
;_sms_manager.c:175: }
	ret
;_sms_manager.c:178: unsigned int devkit_SMS_getKeysStatus()
;	---------------------------------
; Function devkit_SMS_getKeysStatus
; ---------------------------------
_devkit_SMS_getKeysStatus::
;_sms_manager.c:180: return SMS_getKeysStatus();
;_sms_manager.c:181: }
	jp	_SMS_getKeysStatus
;_sms_manager.c:182: unsigned int devkit_PORT_A_KEY_UP()
;	---------------------------------
; Function devkit_PORT_A_KEY_UP
; ---------------------------------
_devkit_PORT_A_KEY_UP::
;_sms_manager.c:184: return PORT_A_KEY_UP;
	ld	hl, #0x0001
;_sms_manager.c:185: }
	ret
;_sms_manager.c:186: unsigned int devkit_PORT_A_KEY_DOWN()
;	---------------------------------
; Function devkit_PORT_A_KEY_DOWN
; ---------------------------------
_devkit_PORT_A_KEY_DOWN::
;_sms_manager.c:188: return PORT_A_KEY_DOWN;
	ld	hl, #0x0002
;_sms_manager.c:189: }
	ret
;_sms_manager.c:190: unsigned int devkit_PORT_A_KEY_LEFT()
;	---------------------------------
; Function devkit_PORT_A_KEY_LEFT
; ---------------------------------
_devkit_PORT_A_KEY_LEFT::
;_sms_manager.c:192: return PORT_A_KEY_LEFT;
	ld	hl, #0x0004
;_sms_manager.c:193: }
	ret
;_sms_manager.c:194: unsigned int devkit_PORT_A_KEY_RIGHT()
;	---------------------------------
; Function devkit_PORT_A_KEY_RIGHT
; ---------------------------------
_devkit_PORT_A_KEY_RIGHT::
;_sms_manager.c:196: return PORT_A_KEY_RIGHT;
	ld	hl, #0x0008
;_sms_manager.c:197: }
	ret
;_sms_manager.c:198: unsigned int devkit_PORT_A_KEY_1()
;	---------------------------------
; Function devkit_PORT_A_KEY_1
; ---------------------------------
_devkit_PORT_A_KEY_1::
;_sms_manager.c:200: return PORT_A_KEY_1;
	ld	hl, #0x0010
;_sms_manager.c:201: }
	ret
;_sms_manager.c:202: unsigned int devkit_PORT_A_KEY_2()
;	---------------------------------
; Function devkit_PORT_A_KEY_2
; ---------------------------------
_devkit_PORT_A_KEY_2::
;_sms_manager.c:204: return PORT_A_KEY_2;
	ld	hl, #0x0020
;_sms_manager.c:205: }
	ret
;_sms_manager.c:208: unsigned char devkit_SPRITEMODE_NORMAL()
;	---------------------------------
; Function devkit_SPRITEMODE_NORMAL
; ---------------------------------
_devkit_SPRITEMODE_NORMAL::
;_sms_manager.c:210: return SPRITEMODE_NORMAL;
	ld	l, #0x00
;_sms_manager.c:211: }
	ret
;_sms_manager.c:212: unsigned int devkit_VDPFEATURE_HIDEFIRSTCOL()
;	---------------------------------
; Function devkit_VDPFEATURE_HIDEFIRSTCOL
; ---------------------------------
_devkit_VDPFEATURE_HIDEFIRSTCOL::
;_sms_manager.c:214: return VDPFEATURE_HIDEFIRSTCOL;
	ld	hl, #0x0020
;_sms_manager.c:215: }
	ret
	.area _CODE
__str_0:
	.ascii "Steven Boland"
	.db 0x00
__str_1:
	.ascii "Splash Screen"
	.db 0x00
__str_2:
	.ascii "Simple Sega Master System demo to run on real hardware!"
	.db 0x00
	.area _INITIALIZER
	.area _CABS (ABS)
	.org 0x7FF0
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
	.org 0x7FD2
___SMS__SDSC_author:
	.ascii "Steven Boland"
	.db 0x00
	.org 0x7FC4
___SMS__SDSC_name:
	.ascii "Splash Screen"
	.db 0x00
	.org 0x7F8C
___SMS__SDSC_descr:
	.ascii "Simple Sega Master System demo to run on real hardware!"
	.db 0x00
	.org 0x7FE0
___SMS__SDSC_signature:
	.db #0x53	; 83	'S'
	.db #0x44	; 68	'D'
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x12	; 18
	.db #0x19	; 25
	.db #0x20	; 32
	.db #0xd2	; 210
	.db #0x7f	; 127
	.db #0xc4	; 196
	.db #0x7f	; 127
	.db #0x8c	; 140
	.db #0x7f	; 127
