;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl ___SMS__SEGA_signature
	.globl _main
	.globl _GSL_getScrolltableAddress
	.globl _GSL_getMapHeightInPixels
	.globl _GSL_getMapWidthInPixels
	.globl _GSL_metatileUpdateCustom
	.globl _GSL_metatileUpdate
	.globl _GSL_VBlank
	.globl _GSL_scroll
	.globl _GSL_refreshVDP
	.globl _GSL_metatileLookup
	.globl _GSL_positionWindow
	.globl _GSL_initializeMap
	.globl _PSGFrame
	.globl _PSGPlay
	.globl _UNSAFE_SMS_VRAMmemcpy128
	.globl _UNSAFE_SMS_copySpritestoSAT
	.globl _SMS_VRAMmemset
	.globl _SMS_VRAMmemcpy
	.globl _SMS_getKeysStatus
	.globl _SMS_loadSpritePalette
	.globl _SMS_loadBGPalette
	.globl _SMS_addSprite
	.globl _SMS_initSprites
	.globl _SMS_waitForVBlank
	.globl _SMS_VDPturnOffFeature
	.globl _SMS_VDPturnOnFeature
	.globl _direction
	.globl _playerYOffset
	.globl _playerXOffset
	.globl _spriteYOffset
	.globl _spriteXOffset
	.globl _scrollYOffset
	.globl _scrollXOffset
	.globl _spriteTileOffsets
	.globl _actionButtonWatch
	.globl _action
	.globl _actionCount
	.globl _animationCount
	.globl _playerSpriteY
	.globl _playerSpriteX
	.globl _playerY
	.globl _playerX
	.globl _scrolltable
	.globl _currentAttackSprites
	.globl _attackSprites
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _metatilesMetaLUT
	.globl _spriteAttackRightMeta
	.globl _spriteAttackLeftMeta
	.globl _spriteAttackDownMeta
	.globl _spriteAttackUpMeta
	.globl _spriteAttackRight
	.globl _spriteAttackLeft
	.globl _spriteAttackDown
	.globl _spriteAttackUp
	.globl _spriteMoveRight
	.globl _spriteMoveLeft
	.globl _spriteMoveDown
	.globl _spriteMoveUp
	.globl _processSpritesActiveDisplay
	.globl _processSpritesVBlank
	.globl _processUserInput
	.globl _processUpKey
	.globl _processDownKey
	.globl _processLeftKey
	.globl _processRightKey
	.globl _processAttackKey
	.globl _checkForAttackInteraction
	.globl _processAttackInteraction
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
_attackSprites::
	.ds 2
_currentAttackSprites::
	.ds 2
_scrolltable::
	.ds 4109
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_playerX::
	.ds 2
_playerY::
	.ds 2
_playerSpriteX::
	.ds 1
_playerSpriteY::
	.ds 1
_animationCount::
	.ds 1
_actionCount::
	.ds 1
_action::
	.ds 1
_actionButtonWatch::
	.ds 1
_spriteTileOffsets::
	.ds 2
_scrollXOffset::
	.ds 1
_scrollYOffset::
	.ds 1
_spriteXOffset::
	.ds 1
_spriteYOffset::
	.ds 1
_playerXOffset::
	.ds 2
_playerYOffset::
	.ds 2
_direction::
	.ds 1
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
;main.c:62: void main(void) 
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:67: SMS_VRAMmemset(0x4000, 0x00, 0x4000);
	ld	hl, #0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	l, #0x00
	push	hl
	call	_SMS_VRAMmemset
	pop	af
;main.c:68: SMS_VRAMmemset(0xC000, 0x00, 0x0020);
	inc	sp
	ld	hl,#0x0020
	ex	(sp),hl
	xor	a, a
	push	af
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_SMS_VRAMmemset
	pop	af
;main.c:69: SMS_loadTiles(&tiles_bin, 0, tiles_bin_size);
	inc	sp
	ld	hl,#0x0b00
	ex	(sp),hl
	ld	hl, #_tiles_bin
	push	hl
	ld	hl, #0x4000
	push	hl
	call	_SMS_VRAMmemcpy
;main.c:70: SMS_loadBGPalette(&palette_bin);
	ld	hl, #_palette_bin
	call	_SMS_loadBGPalette
;main.c:71: SMS_loadTiles(&sprite_tiles_bin, 256, sprite_tiles_bin_size);
	ld	hl, #0x1800
	push	hl
	ld	hl, #_sprite_tiles_bin
	push	hl
	ld	hl, #0x6000
	push	hl
	call	_SMS_VRAMmemcpy
;main.c:72: SMS_loadSpritePalette(&sprite_palette_bin);
	ld	hl, #_sprite_palette_bin
	call	_SMS_loadSpritePalette
;main.c:79: for (int i = 0; i < scrolltable_bin_size; i++) scrolltable[i] = *(scrolltable_bin + i);
00122$:
	ld	bc, #0x0000
00113$:
	ld	a, c
	sub	a, #0x0d
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x90
	jr	NC, 00101$
	ld	hl, #_scrolltable
	add	hl, bc
	ex	de, hl
	ld	hl, #_scrolltable_bin
	add	hl, bc
	ld	a, (hl)
	ld	(de), a
	inc	bc
	jr	00113$
00101$:
;main.c:82: GSL_initializeMap(&scrolltable, &metatiles_bin);
	ld	hl, #_metatiles_bin
	push	hl
	ld	hl, #_scrolltable
	push	hl
	call	_GSL_initializeMap
	pop	af
	pop	af
;main.c:83: GSL_positionWindow(768,832);
	ld	hl, #0x0340
	push	hl
	ld	l, #0x00
	push	hl
	call	_GSL_positionWindow
	pop	af
	pop	af
;main.c:84: GSL_refreshVDP();
	call	_GSL_refreshVDP
;main.c:86: SMS_VDPturnOnFeature(VDPFEATURE_HIDEFIRSTCOL);
	ld	hl, #0x0020
	call	_SMS_VDPturnOnFeature
;main.c:87: SMS_displayOn();
	ld	hl, #0x0140
	call	_SMS_VDPturnOnFeature
;main.c:89: PSGPlay(&village_psg);
	ld	hl, #_village_psg
	push	hl
	call	_PSGPlay
	pop	af
;main.c:91: playerX = 904;
	ld	hl, #0x0388
	ld	(_playerX), hl
;main.c:92: playerY = 928;
	ld	l, #0xa0
	ld	(_playerY), hl
;main.c:93: playerSpriteX = 136;
	ld	hl, #_playerSpriteX
	ld	(hl), #0x88
;main.c:94: playerSpriteY = 96;
	ld	hl, #_playerSpriteY
	ld	(hl), #0x60
;main.c:95: actionCount = 0;
	ld	hl, #_actionCount
	ld	(hl), #0x00
00115$:
;main.c:100: playerMetatile = *(GSL_metatileLookup(playerX, playerY)); 
	ld	hl, (_playerY)
	push	hl
	ld	hl, (_playerX)
	push	hl
	call	_GSL_metatileLookup
	pop	af
	pop	af
	ld	a, (hl)
;main.c:101: if (playerMetatile == METATILE_DUNGEON_ENTRANCE) break;
	sub	a, #0x20
	jp	Z,00110$
;main.c:103: SMS_initSprites(); 
	call	_SMS_initSprites
;main.c:104: ks = SMS_getKeysStatus(); 
	call	_SMS_getKeysStatus
;main.c:105: if (!(ks & PORT_A_KEY_2)) actionButtonWatch = 0;
	bit	5, l
	jr	NZ, 00105$
	ld	hl, #_actionButtonWatch
	ld	(hl), #0x00
00105$:
;main.c:110: if (actionCount == 0) processUserInput();
	ld	a,(#_actionCount + 0)
	or	a, a
	jr	NZ, 00107$
	call	_processUserInput
00107$:
;main.c:111: if (actionCount != 0) actionCount--;
	ld	iy, #_actionCount
	ld	a, 0 (iy)
	or	a, a
	jr	Z, 00109$
	dec	0 (iy)
00109$:
;main.c:113: playerX += playerXOffset;
	ld	hl, #_playerXOffset
	push	de
	ld	de, #_playerX
	push	de
	pop	de
	ld	a, (de)
	add	a, (hl)
	ld	(de), a
	inc	de
	ld	a, (de)
	inc	hl
	adc	a, (hl)
	ld	(de), a
	pop	de
;main.c:114: playerY += playerYOffset;
	ld	hl, #_playerYOffset
	push	de
	ld	de, #_playerY
	push	de
	pop	de
	ld	a, (de)
	add	a, (hl)
	ld	(de), a
	inc	de
	ld	a, (de)
	inc	hl
	adc	a, (hl)
	ld	(de), a
	pop	de
;main.c:115: playerSpriteX += spriteXOffset;
	ld	hl, #_playerSpriteX
	ld	a, (hl)
	ld	iy, #_spriteXOffset
	add	a, 0 (iy)
	ld	(hl), a
;main.c:116: playerSpriteY += spriteYOffset;
	ld	hl, #_playerSpriteY
	ld	a, (hl)
	ld	iy, #_spriteYOffset
	add	a, 0 (iy)
	ld	(hl), a
;main.c:117: GSL_scroll(scrollXOffset,scrollYOffset); // << GSL_scroll with offsets to scroll map.
	ld	a,(#_scrollYOffset + 0)
	push	af
	inc	sp
	ld	a,(#_scrollXOffset + 0)
	push	af
	inc	sp
	call	_GSL_scroll
	pop	af
;main.c:119: processSpritesActiveDisplay();
	call	_processSpritesActiveDisplay
;main.c:121: SMS_waitForVBlank(); 
	call	_SMS_waitForVBlank
;main.c:122: GSL_VBlank();  // <<< Call GSL_VBlank to process any pending scroll / metatile updates.
	call	_GSL_VBlank
;main.c:123: processSpritesVBlank();
	call	_processSpritesVBlank
;main.c:124: PSGFrame();
	call	_PSGFrame
	jp	00115$
00110$:
;main.c:127: SMS_displayOff();
	ld	hl, #0x0140
	call	_SMS_VDPturnOffFeature
;main.c:129: }
	jp	00122$
_spriteMoveUp:
	.dw #0x0080
	.dw #0x0000
	.dw #0x0080
	.dw #0x0100
_spriteMoveDown:
	.dw #0x0200
	.dw #0x0180
	.dw #0x0200
	.dw #0x0280
_spriteMoveLeft:
	.dw #0x0380
	.dw #0x0300
	.dw #0x0380
	.dw #0x0400
_spriteMoveRight:
	.dw #0x0500
	.dw #0x0480
	.dw #0x0500
	.dw #0x0580
_spriteAttackUp:
	.dw #0x0080
	.dw #0x0900
	.dw #0x0800
	.dw #0x0700
	.dw #0x0600
_spriteAttackDown:
	.dw #0x0200
	.dw #0x0d00
	.dw #0x0c00
	.dw #0x0b00
	.dw #0x0a00
_spriteAttackLeft:
	.dw #0x0380
	.dw #0x1100
	.dw #0x1000
	.dw #0x0f00
	.dw #0x0e00
_spriteAttackRight:
	.dw #0x0500
	.dw #0x1500
	.dw #0x1400
	.dw #0x1300
	.dw #0x1200
_spriteAttackUpMeta:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0x05	; 5
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x06	; 6
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xbf	; 191
_spriteAttackDownMeta:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xbf	; 191
_spriteAttackLeftMeta:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0xf0	; 240
	.db #0x08	; 8
	.db #0x06	; 6
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0x04	; 4
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x05	; 5
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x04	; 4
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xbf	; 191
_spriteAttackRightMeta:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0xf0	; 240
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xf0	; 240
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0xf8	; 248
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xf8	; 248
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0xbf	; 191
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0xbf	; 191
_metatilesMetaLUT:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
;main.c:133: void processSpritesActiveDisplay()
;	---------------------------------
; Function processSpritesActiveDisplay
; ---------------------------------
_processSpritesActiveDisplay::
;main.c:136: SMS_addSprite(playerSpriteX + 0xF8, playerSpriteY + 0xF8, 0);
	ld	a,(#_playerSpriteY + 0)
	add	a, #0xf8
	ld	b, a
	ld	a,(#_playerSpriteX + 0)
	add	a, #0xf8
	ld	h, #0x00
	ld	l, b
	push	hl
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
;main.c:137: SMS_addSprite(playerSpriteX + 0x00, playerSpriteY + 0xF8, 1);
	ld	a,(#_playerSpriteY + 0)
	add	a, #0xf8
	ld	h, #0x01
	push	hl
	inc	sp
	push	af
	inc	sp
	ld	a,(#_playerSpriteX + 0)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
;main.c:138: SMS_addSprite(playerSpriteX + 0xF8, playerSpriteY + 0x00, 2);
	ld	a,(#_playerSpriteX + 0)
	add	a, #0xf8
	ld	h, #0x02
	push	hl
	inc	sp
	ld	iy, #_playerSpriteY
	ld	h, 0 (iy)
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
;main.c:139: SMS_addSprite(playerSpriteX + 0x00, playerSpriteY + 0x00, 3);
	ld	a, #0x03
	push	af
	inc	sp
	ld	a,(#_playerSpriteY + 0)
	push	af
	inc	sp
	ld	a,(#_playerSpriteX + 0)
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
;main.c:143: if (action == ACTION_ATTACK)
	ld	a,(#_action + 0)
	dec	a
	ret	NZ
;main.c:146: if (actionCount == 5) checkForAttackInteraction();
	ld	a,(#_actionCount + 0)
	sub	a, #0x05
	jr	NZ, 00102$
	call	_checkForAttackInteraction
00102$:
;main.c:148: currentAttackSprites = attackSprites + ((actionCount & 14) << 3);
	ld	a,(#_actionCount + 0)
	and	a, #0x0e
	ld	h, #0x00
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	de,hl
	ld	hl, #_currentAttackSprites
	ld	iy, #_attackSprites
	ld	a, 0 (iy)
	add	a, e
	ld	(hl), a
	ld	a, 1 (iy)
	adc	a, d
	inc	hl
	ld	(hl), a
;main.c:149: SMS_addSprite(playerSpriteX + *(currentAttackSprites + 0), playerSpriteY + *(currentAttackSprites + 1), *(currentAttackSprites + 2));
	ld	hl, (_currentAttackSprites)
	inc	hl
	inc	hl
	ld	c, (hl)
	ld	hl, (_currentAttackSprites)
	inc	hl
	ld	a, (hl)
	ld	hl, #_playerSpriteY
	add	a, (hl)
	ld	b, a
	ld	hl, (_currentAttackSprites)
	ld	a, (hl)
	ld	hl, #_playerSpriteX
	add	a, (hl)
	ld	h, c
	ld	l, b
	push	hl
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
;main.c:150: SMS_addSprite(playerSpriteX + *(currentAttackSprites + 3), playerSpriteY + *(currentAttackSprites + 4), *(currentAttackSprites + 5));
	ld	hl, (_currentAttackSprites)
	ld	de, #0x0005
	add	hl, de
	ld	c, (hl)
	ld	hl, (_currentAttackSprites)
	ld	de, #0x0004
	add	hl, de
	ld	a, (hl)
	ld	hl, #_playerSpriteY
	add	a, (hl)
	ld	b, a
	ld	hl, (_currentAttackSprites)
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	hl, #_playerSpriteX
	add	a, (hl)
	ld	h, c
	ld	l, b
	push	hl
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
;main.c:151: SMS_addSprite(playerSpriteX + *(currentAttackSprites + 6), playerSpriteY + *(currentAttackSprites + 7), *(currentAttackSprites + 8));
	ld	hl, (_currentAttackSprites)
	ld	de, #0x0008
	add	hl, de
	ld	c, (hl)
	ld	hl, (_currentAttackSprites)
	ld	de, #0x0007
	add	hl, de
	ld	a, (hl)
	ld	hl, #_playerSpriteY
	add	a, (hl)
	ld	b, a
	ld	hl, (_currentAttackSprites)
	ld	de, #0x0006
	add	hl, de
	ld	a, (hl)
	ld	hl, #_playerSpriteX
	add	a, (hl)
	ld	h, c
	ld	l, b
	push	hl
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
;main.c:152: SMS_addSprite(playerSpriteX + *(currentAttackSprites + 9), playerSpriteY + *(currentAttackSprites + 10), *(currentAttackSprites + 11));
	ld	hl, (_currentAttackSprites)
	ld	de, #0x000b
	add	hl, de
	ld	c, (hl)
	ld	hl, (_currentAttackSprites)
	ld	de, #0x000a
	add	hl, de
	ld	a, (hl)
	ld	hl, #_playerSpriteY
	add	a, (hl)
	ld	b, a
	ld	hl, (_currentAttackSprites)
	ld	de, #0x0009
	add	hl, de
	ld	a, (hl)
	ld	hl, #_playerSpriteX
	add	a, (hl)
	ld	h, c
	ld	l, b
	push	hl
	push	af
	inc	sp
	call	_SMS_addSprite
	pop	af
	inc	sp
;main.c:154: }
	ret
;main.c:157: void processSpritesVBlank()
;	---------------------------------
; Function processSpritesVBlank
; ---------------------------------
_processSpritesVBlank::
;main.c:160: UNSAFE_SMS_copySpritestoSAT();
	call	_UNSAFE_SMS_copySpritestoSAT
;main.c:163: if (action == ACTION_ATTACK) 
	ld	a,(#_action + 0)
	dec	a
	jr	NZ, 00102$
;main.c:165: UNSAFE_SMS_load4Tiles(sprite_tiles_bin + *(spriteTileOffsets + ((actionCount & 14) >> 1)), 256);
	ld	a,(#_actionCount + 0)
	and	a, #0x0e
	ld	e, a
	ld	d, #0x00
	sra	d
	rr	e
	ex	de, hl
	add	hl, hl
	ex	de, hl
	ld	hl, (_spriteTileOffsets)
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #_sprite_tiles_bin
	add	hl, bc
	push	hl
	ld	hl, #0x2000
	push	hl
	call	_UNSAFE_SMS_VRAMmemcpy128
	pop	af
	pop	af
;main.c:166: UNSAFE_SMS_load4Tiles(128 + sprite_tiles_bin + *(spriteTileOffsets + ((actionCount & 14) >> 1)), 260);
	ld	a,(#_actionCount + 0)
	and	a, #0x0e
	ld	e, a
	ld	d, #0x00
	sra	d
	rr	e
	ex	de, hl
	add	hl, hl
	ex	de, hl
	ld	hl, (_spriteTileOffsets)
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #(_sprite_tiles_bin + 0x0080)
	add	hl, bc
	push	hl
	ld	hl, #0x2080
	push	hl
	call	_UNSAFE_SMS_VRAMmemcpy128
	pop	af
	pop	af
	ret
00102$:
;main.c:170: else UNSAFE_SMS_load4Tiles(sprite_tiles_bin + *(spriteTileOffsets + animationCount), 256);
	ld	a, (#_animationCount + 0)
	ld	l, a
	ld	h, #0x00
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_spriteTileOffsets)
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #_sprite_tiles_bin
	add	hl, bc
	push	hl
	ld	hl, #0x2000
	push	hl
	call	_UNSAFE_SMS_VRAMmemcpy128
	pop	af
	pop	af
;main.c:171: }
	ret
;main.c:176: void processUserInput()
;	---------------------------------
; Function processUserInput
; ---------------------------------
_processUserInput::
;main.c:178: unsigned int ks = SMS_getKeysStatus(); 
	call	_SMS_getKeysStatus
	ex	de, hl
;main.c:181: action = ACTION_STATIONARY;
	ld	hl, #_action
	ld	(hl), #0x02
;main.c:182: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:183: scrollYOffset = 0;
	ld	hl, #_scrollYOffset
	ld	(hl), #0x00
;main.c:184: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:185: playerYOffset = 0;
	ld	l, h
	ld	(_playerYOffset), hl
;main.c:186: spriteXOffset = 0;
;main.c:187: spriteYOffset = 0;
	ld	a,#0x00
	ld	(#_spriteXOffset),a
	ld	(#_spriteYOffset), a
;main.c:189: if (actionButtonWatch == 0 && (ks & PORT_A_KEY_2))
	ld	iy, #_actionButtonWatch
	ld	a, 0 (iy)
	or	a, a
	jr	NZ, 00113$
	bit	5, e
;main.c:191: processAttackKey();
;main.c:192: return;
	jp	NZ,_processAttackKey
00113$:
;main.c:194: else if (ks & PORT_A_KEY_UP)
	bit	0, e
;main.c:196: processUpKey();
;main.c:197: return;
	jp	NZ,_processUpKey
;main.c:200: else if (ks & PORT_A_KEY_DOWN)
	bit	1, e
;main.c:202: processDownKey();
;main.c:203: return;
	jp	NZ,_processDownKey
;main.c:206: else if (ks & PORT_A_KEY_LEFT)
	bit	2, e
;main.c:208: processLeftKey();
;main.c:209: return;
	jp	NZ,_processLeftKey
;main.c:212: else if (ks & PORT_A_KEY_RIGHT)
	bit	3, e
;main.c:214: processRightKey();
;main.c:215: return;
	jp	NZ,_processRightKey
;main.c:217: }
	ret
;main.c:220: void processUpKey()
;	---------------------------------
; Function processUpKey
; ---------------------------------
_processUpKey::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;main.c:224: unsigned char topLeftMetatile = *(GSL_metatileLookup(playerX - 8, playerY - 1));
	ld	de, (_playerY)
	dec	de
	ld	iy, #_playerX
	ld	a, 0 (iy)
	add	a, #0xf8
	ld	c, a
	ld	a, 1 (iy)
	adc	a, #0xff
	ld	b, a
	push	de
	push	bc
	call	_GSL_metatileLookup
	pop	af
	pop	af
	ld	a, (hl)
	ld	-2 (ix), a
;main.c:225: unsigned char topRightMetatile = *(GSL_metatileLookup(playerX + 7, playerY - 1));
	ld	bc, (_playerY)
	dec	bc
	ld	hl, (_playerX)
	ld	de, #0x0007
	add	hl, de
	push	bc
	push	hl
	call	_GSL_metatileLookup
	pop	af
	pop	af
	ld	c, (hl)
;main.c:233: animationCount = (animationCount - 1) & 3;
	ld	a,(#_animationCount + 0)
	dec	a
	and	a, #0x03
	ld	-1 (ix), a
;main.c:228: if (playerY == 8 || ((metatilesMetaLUT[topLeftMetatile] & 1) == 0 && (metatilesMetaLUT[topRightMetatile] & 1)  == 0))
	ld	iy, #_playerY
	ld	a, 0 (iy)
	sub	a, #0x08
	or	a, 1 (iy)
	jr	Z, 00101$
	ld	a, #<(_metatilesMetaLUT)
	add	a, -2 (ix)
	ld	l, a
	ld	a, #>(_metatilesMetaLUT)
	adc	a, #0x00
	ld	h, a
	ld	l, (hl)
	ld	a, l
	and	a, #0x01
	ld	e, a
	ld	d, #0x00
	ld	a, #<(_metatilesMetaLUT)
	add	a, c
	ld	c, a
	ld	a, #>(_metatilesMetaLUT)
	adc	a, #0x00
	ld	b, a
	ld	a, d
	or	a, e
	jr	NZ, 00102$
	ld	a, (bc)
	rrca
	jr	C, 00102$
00101$:
;main.c:231: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:232: direction = DIRECTION_UP;
	ld	hl, #_direction
	ld	(hl), #0x00
;main.c:233: animationCount = (animationCount - 1) & 3;
	ld	a, -1 (ix)
	ld	(#_animationCount),a
;main.c:234: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:235: spriteTileOffsets = spriteMoveUp;
	ld	hl, #_spriteMoveUp+0
	ld	(_spriteTileOffsets), hl
;main.c:237: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:238: scrollYOffset = 0;
	ld	hl, #_scrollYOffset
	ld	(hl), #0x00
;main.c:239: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:240: playerYOffset = 0;
	ld	l, h
	ld	(_playerYOffset), hl
;main.c:241: spriteXOffset = 0;
;main.c:242: spriteYOffset = 0;
	ld	a,#0x00
	ld	(#_spriteXOffset),a
	ld	(#_spriteYOffset), a
;main.c:244: return;
	jp	00115$
00102$:
;main.c:249: if ((metatilesMetaLUT[topLeftMetatile] & 1) == 1 && (metatilesMetaLUT[topRightMetatile] & 1)  == 0)
	ld	a, l
	and	a, #0x01
	ld	l, a
	ld	h, #0x00
	ld	a, l
	dec	a
	or	a, h
	jr	NZ, 00106$
	ld	a, (bc)
	rrca
	jr	C, 00106$
;main.c:251: processLeftKey();
	call	_processLeftKey
;main.c:252: return;
	jp	00115$
00106$:
;main.c:254: if ((metatilesMetaLUT[topLeftMetatile] & 1) == 0 && (metatilesMetaLUT[topRightMetatile] & 1)  == 1)
	ld	a, d
	or	a, e
	jr	NZ, 00109$
	ld	a, (bc)
	and	a, #0x01
	ld	c, a
	ld	b, #0x00
	ld	a, c
	dec	a
	or	a, b
	jr	NZ, 00109$
;main.c:256: processRightKey();
	call	_processRightKey
;main.c:257: return;
	jr	00115$
00109$:
;main.c:261: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:262: direction = DIRECTION_UP;
	ld	hl, #_direction
	ld	(hl), #0x00
;main.c:263: animationCount = (animationCount - 1) & 3;
	ld	a, -1 (ix)
	ld	(#_animationCount),a
;main.c:264: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:265: spriteTileOffsets = spriteMoveUp;
	ld	hl, #_spriteMoveUp+0
	ld	(_spriteTileOffsets), hl
;main.c:267: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:268: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:269: spriteXOffset = 0;
	ld	hl, #_spriteXOffset
	ld	(hl), #0x00
;main.c:270: playerYOffset = 0xFFFE;
	ld	hl, #0xfffe
	ld	(_playerYOffset), hl
;main.c:274: if (playerY <= 96 || playerY > GSL_getMapHeightInPixels() - 96)
	ld	a, #0x60
	ld	iy, #_playerY
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jr	NC, 00111$
	call	_GSL_getMapHeightInPixels
	ld	a, l
	add	a, #0xa0
	ld	c, a
	ld	a, h
	adc	a, #0xff
	ld	b, a
	ld	a, c
	ld	iy, #_playerY
	sub	a, 0 (iy)
	ld	a, b
	sbc	a, 1 (iy)
	jr	NC, 00112$
00111$:
;main.c:276: spriteYOffset = 0xFE;
	ld	a, #0xfe
	ld	(#_spriteYOffset), a
;main.c:277: scrollYOffset = 0;
	ld	a, #0x00
	ld	(#_scrollYOffset), a
	jr	00115$
00112$:
;main.c:281: spriteYOffset = 0;
	ld	a, #0x00
	ld	(#_spriteYOffset), a
;main.c:282: scrollYOffset = 0xFE;
	ld	a, #0xfe
	ld	(#_scrollYOffset), a
00115$:
;main.c:284: }
	ld	sp, ix
	pop	ix
	ret
;main.c:287: void processDownKey()
;	---------------------------------
; Function processDownKey
; ---------------------------------
_processDownKey::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;main.c:291: unsigned char bottomLeftMetatile = *(GSL_metatileLookup(playerX - 8, playerY + 8));
	ld	iy, #_playerY
	ld	a, 0 (iy)
	add	a, #0x08
	ld	e, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	d, a
	ld	iy, #_playerX
	ld	a, 0 (iy)
	add	a, #0xf8
	ld	c, a
	ld	a, 1 (iy)
	adc	a, #0xff
	ld	b, a
	push	de
	push	bc
	call	_GSL_metatileLookup
	pop	af
	pop	af
	ld	a, (hl)
	ld	-3 (ix), a
;main.c:292: unsigned char bottomRightMetatile = *(GSL_metatileLookup(playerX + 7, playerY + 8));
	ld	iy, #_playerY
	ld	a, 0 (iy)
	add	a, #0x08
	ld	c, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	b, a
	ld	hl, (_playerX)
	ld	de, #0x0007
	add	hl, de
	push	bc
	push	hl
	call	_GSL_metatileLookup
	pop	af
	pop	af
	ld	a, (hl)
	ld	-2 (ix), a
;main.c:295: if (playerY == GSL_getMapHeightInPixels() - 8 || ((metatilesMetaLUT[bottomLeftMetatile] & 1) == 0 && (metatilesMetaLUT[bottomRightMetatile] & 1) == 0))
	call	_GSL_getMapHeightInPixels
	ld	bc, #0xfff8
	add	hl,bc
	ld	c, l
	ld	b, h
;main.c:300: animationCount = (animationCount - 1) & 3;
	ld	a,(#_animationCount + 0)
	dec	a
	and	a, #0x03
	ld	-1 (ix), a
;main.c:295: if (playerY == GSL_getMapHeightInPixels() - 8 || ((metatilesMetaLUT[bottomLeftMetatile] & 1) == 0 && (metatilesMetaLUT[bottomRightMetatile] & 1) == 0))
	ld	hl, (_playerY)
	cp	a, a
	sbc	hl, bc
	jr	Z, 00101$
	ld	bc, #_metatilesMetaLUT+0
	ld	l, -3 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	l, (hl)
	ld	a, l
	and	a, #0x01
	ld	e, a
	ld	d, #0x00
	ld	a, c
	add	a, -2 (ix)
	ld	c, a
	jr	NC, 00153$
	inc	b
00153$:
	ld	a, d
	or	a, e
	jr	NZ, 00102$
	ld	a, (bc)
	rrca
	jr	C, 00102$
00101$:
;main.c:298: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:299: direction = DIRECTION_DOWN;
	ld	hl, #_direction
	ld	(hl), #0x01
;main.c:300: animationCount = (animationCount - 1) & 3;
	ld	a, -1 (ix)
	ld	(#_animationCount),a
;main.c:301: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:302: spriteTileOffsets = spriteMoveDown;
	ld	hl, #_spriteMoveDown+0
	ld	(_spriteTileOffsets), hl
;main.c:304: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:305: scrollYOffset = 0;
	ld	hl, #_scrollYOffset
	ld	(hl), #0x00
;main.c:306: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:307: playerYOffset = 0;
	ld	l, h
	ld	(_playerYOffset), hl
;main.c:308: spriteXOffset = 0;
;main.c:309: spriteYOffset = 0;
	ld	a,#0x00
	ld	(#_spriteXOffset),a
	ld	(#_spriteYOffset), a
;main.c:311: return;
	jp	00115$
00102$:
;main.c:316: if ((metatilesMetaLUT[bottomLeftMetatile] & 1) == 1 && (metatilesMetaLUT[bottomRightMetatile] & 1) == 0)
	ld	a, l
	and	a, #0x01
	ld	l, a
	ld	h, #0x00
	ld	a, l
	dec	a
	or	a, h
	jr	NZ, 00106$
	ld	a, (bc)
	rrca
	jr	C, 00106$
;main.c:318: processLeftKey();
	call	_processLeftKey
;main.c:319: return;
	jp	00115$
00106$:
;main.c:321: if ((metatilesMetaLUT[bottomLeftMetatile] & 1) == 0 && (metatilesMetaLUT[bottomRightMetatile] & 1) == 1)
	ld	a, d
	or	a, e
	jr	NZ, 00109$
	ld	a, (bc)
	and	a, #0x01
	ld	c, a
	ld	b, #0x00
	ld	a, c
	dec	a
	or	a, b
	jr	NZ, 00109$
;main.c:323: processRightKey();
	call	_processRightKey
;main.c:324: return;
	jr	00115$
00109$:
;main.c:328: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:329: direction = DIRECTION_DOWN;
	ld	hl, #_direction
	ld	(hl), #0x01
;main.c:330: animationCount = (animationCount - 1) & 3;
	ld	a, -1 (ix)
	ld	(#_animationCount),a
;main.c:331: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:332: spriteTileOffsets = spriteMoveDown;
	ld	hl, #_spriteMoveDown+0
	ld	(_spriteTileOffsets), hl
;main.c:334: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:335: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:336: spriteXOffset = 0;
	ld	iy, #_spriteXOffset
	ld	0 (iy), #0x00
;main.c:337: playerYOffset = 2;
	ld	l, #0x02
	ld	(_playerYOffset), hl
;main.c:341: if (playerY < 96 || playerY >= GSL_getMapHeightInPixels() - 96)
	ld	iy, #_playerY
	ld	a, 0 (iy)
	sub	a, #0x60
	ld	a, 1 (iy)
	sbc	a, #0x00
	jr	C, 00111$
	call	_GSL_getMapHeightInPixels
	ld	bc, #0xffa0
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, (_playerY)
	xor	a, a
	sbc	hl, bc
	jr	C, 00112$
00111$:
;main.c:343: spriteYOffset = 2;
	ld	a, #0x02
	ld	(#_spriteYOffset), a
;main.c:344: scrollYOffset = 0;
	ld	a, #0x00
	ld	(#_scrollYOffset), a
	jr	00115$
00112$:
;main.c:348: spriteYOffset = 0;
	ld	a, #0x00
	ld	(#_spriteYOffset), a
;main.c:349: scrollYOffset = 2;
	ld	a, #0x02
	ld	(#_scrollYOffset), a
00115$:
;main.c:351: }
	ld	sp, ix
	pop	ix
	ret
;main.c:354: void processLeftKey()
;	---------------------------------
; Function processLeftKey
; ---------------------------------
_processLeftKey::
;main.c:358: unsigned char lowerLeftMetatile = *(GSL_metatileLookup(playerX - 9, playerY));
	ld	iy, #_playerX
	ld	a, 0 (iy)
	add	a, #0xf7
	ld	c, a
	ld	a, 1 (iy)
	adc	a, #0xff
	ld	b, a
	ld	hl, (_playerY)
	push	hl
	push	bc
	call	_GSL_metatileLookup
	pop	af
	pop	af
	ld	c, (hl)
;main.c:366: animationCount = (animationCount - 1) & 3;
	ld	a,(#_animationCount + 0)
	dec	a
	and	a, #0x03
	ld	e, a
;main.c:361: if (playerX == 16 || (metatilesMetaLUT[lowerLeftMetatile] & 1) == 0)
	ld	iy, #_playerX
	ld	a, 0 (iy)
	sub	a, #0x10
	or	a, 1 (iy)
	jr	Z, 00101$
	ld	hl, #_metatilesMetaLUT+0
	ld	b, #0x00
	add	hl, bc
	ld	a, (hl)
	rrca
	jr	C, 00102$
00101$:
;main.c:364: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:365: direction = DIRECTION_LEFT;
	ld	hl, #_direction
	ld	(hl), #0x02
;main.c:366: animationCount = (animationCount - 1) & 3;
	ld	hl, #_animationCount
	ld	(hl), e
;main.c:367: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:368: spriteTileOffsets = spriteMoveLeft;
	ld	hl, #_spriteMoveLeft+0
	ld	(_spriteTileOffsets), hl
;main.c:370: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:371: scrollYOffset = 0;
	ld	hl, #_scrollYOffset
	ld	(hl), #0x00
;main.c:372: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:373: playerYOffset = 0;
	ld	l, h
	ld	(_playerYOffset), hl
;main.c:374: spriteXOffset = 0;
;main.c:375: spriteYOffset = 0;
	ld	a,#0x00
	ld	(#_spriteXOffset),a
	ld	(#_spriteYOffset), a
;main.c:377: return;
	ret
00102$:
;main.c:381: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:382: direction = DIRECTION_LEFT;
	ld	hl, #_direction
	ld	(hl), #0x02
;main.c:383: animationCount = (animationCount - 1) & 3;
	ld	hl, #_animationCount
	ld	(hl), e
;main.c:384: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:385: spriteTileOffsets = spriteMoveLeft;
	ld	hl, #_spriteMoveLeft+0
	ld	(_spriteTileOffsets), hl
;main.c:387: playerXOffset = 0xFFFE;
	ld	hl, #0xfffe
	ld	(_playerXOffset), hl
;main.c:388: scrollYOffset = 0;
	ld	hl, #_scrollYOffset
	ld	(hl), #0x00
;main.c:389: playerYOffset = 0;
	ld	hl, #0x0000
	ld	(_playerYOffset), hl
;main.c:390: spriteYOffset = 0;
	ld	a, #0x00
	ld	(#_spriteYOffset), a
;main.c:394: if (playerX <= 136 || playerX > GSL_getMapWidthInPixels() - 120)
	ld	a, #0x88
	ld	iy, #_playerX
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jr	NC, 00104$
	call	_GSL_getMapWidthInPixels
	ld	a, l
	add	a, #0x88
	ld	c, a
	ld	a, h
	adc	a, #0xff
	ld	b, a
	ld	a, c
	ld	iy, #_playerX
	sub	a, 0 (iy)
	ld	a, b
	sbc	a, 1 (iy)
	jr	NC, 00105$
00104$:
;main.c:396: spriteXOffset = 0xFE;
	ld	a, #0xfe
	ld	(#_spriteXOffset), a
;main.c:397: scrollXOffset = 0;
	ld	a, #0x00
	ld	(#_scrollXOffset), a
	ret
00105$:
;main.c:401: spriteXOffset = 0;
	ld	a, #0x00
	ld	(#_spriteXOffset), a
;main.c:402: scrollXOffset = 0xFE;
	ld	a, #0xfe
	ld	(#_scrollXOffset), a
;main.c:404: }
	ret
;main.c:408: void processRightKey()
;	---------------------------------
; Function processRightKey
; ---------------------------------
_processRightKey::
;main.c:412: unsigned char lowerRightMetatile = *(GSL_metatileLookup(playerX + 8, playerY));
	ld	iy, #_playerX
	ld	a, 0 (iy)
	add	a, #0x08
	ld	c, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	b, a
	ld	hl, (_playerY)
	push	hl
	push	bc
	call	_GSL_metatileLookup
	pop	af
	pop	af
	ld	c, (hl)
;main.c:415: if (playerX == GSL_getMapWidthInPixels() - 8 || (metatilesMetaLUT[lowerRightMetatile] & 1) == 0)
	push	bc
	call	_GSL_getMapWidthInPixels
	pop	bc
	ld	de, #0xfff8
	add	hl, de
	ex	de,hl
;main.c:420: animationCount = (animationCount - 1) & 3;
	ld	a,(#_animationCount + 0)
	dec	a
	and	a, #0x03
	ld	b, a
;main.c:415: if (playerX == GSL_getMapWidthInPixels() - 8 || (metatilesMetaLUT[lowerRightMetatile] & 1) == 0)
	ld	hl, (_playerX)
	cp	a, a
	sbc	hl, de
	jr	Z, 00101$
	ld	de, #_metatilesMetaLUT+0
	ld	l, c
	ld	h, #0x00
	add	hl, de
	ld	a, (hl)
	rrca
	jr	C, 00102$
00101$:
;main.c:418: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:419: direction = DIRECTION_RIGHT;
	ld	hl, #_direction
	ld	(hl), #0x03
;main.c:420: animationCount = (animationCount - 1) & 3;
	ld	hl, #_animationCount
	ld	(hl), b
;main.c:421: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:422: spriteTileOffsets = spriteMoveRight;
	ld	hl, #_spriteMoveRight+0
	ld	(_spriteTileOffsets), hl
;main.c:424: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:425: scrollYOffset = 0;
	ld	hl, #_scrollYOffset
	ld	(hl), #0x00
;main.c:426: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:427: playerYOffset = 0;
	ld	l, h
	ld	(_playerYOffset), hl
;main.c:428: spriteXOffset = 0;
;main.c:429: spriteYOffset = 0;
	ld	a,#0x00
	ld	(#_spriteXOffset),a
	ld	(#_spriteYOffset), a
;main.c:431: return;
	ret
00102$:
;main.c:435: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:436: direction = DIRECTION_RIGHT;
	ld	hl, #_direction
	ld	(hl), #0x03
;main.c:437: animationCount = (animationCount - 1) & 3;
	ld	hl, #_animationCount
	ld	(hl), b
;main.c:438: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:439: spriteTileOffsets = spriteMoveRight;
	ld	hl, #_spriteMoveRight+0
	ld	(_spriteTileOffsets), hl
;main.c:441: playerXOffset = 2;
	ld	hl, #0x0002
	ld	(_playerXOffset), hl
;main.c:442: scrollYOffset = 0;
	ld	iy, #_scrollYOffset
	ld	0 (iy), #0x00
;main.c:443: playerYOffset = 0; 
	ld	l, h
	ld	(_playerYOffset), hl
;main.c:444: spriteYOffset = 0;
	ld	a, #0x00
	ld	(#_spriteYOffset), a
;main.c:448: if (playerX < 136 || playerX >= GSL_getMapWidthInPixels() - 120)
	ld	iy, #_playerX
	ld	a, 0 (iy)
	sub	a, #0x88
	ld	a, 1 (iy)
	sbc	a, #0x00
	jr	C, 00104$
	call	_GSL_getMapWidthInPixels
	ld	bc, #0xff88
	add	hl,bc
	ld	c, l
	ld	b, h
	ld	hl, (_playerX)
	xor	a, a
	sbc	hl, bc
	jr	C, 00105$
00104$:
;main.c:450: spriteXOffset = 2;
	ld	a, #0x02
	ld	(#_spriteXOffset), a
;main.c:451: scrollXOffset = 0;
	ld	a, #0x00
	ld	(#_scrollXOffset), a
	ret
00105$:
;main.c:455: spriteXOffset = 0;
	ld	a, #0x00
	ld	(#_spriteXOffset), a
;main.c:456: scrollXOffset = 2;
	ld	a, #0x02
	ld	(#_scrollXOffset), a
;main.c:458: }
	ret
;main.c:461: void processAttackKey()
;	---------------------------------
; Function processAttackKey
; ---------------------------------
_processAttackKey::
;main.c:464: actionButtonWatch = 1;
	ld	a, #0x01
	ld	(#_actionButtonWatch), a
;main.c:468: switch (direction)
	ld	iy, #_direction
	ld	a, 0 (iy)
	or	a, a
	jr	Z, 00101$
	ld	a, 0 (iy)
	dec	a
	jr	Z, 00102$
	ld	a, 0 (iy)
	sub	a, #0x02
	jr	Z, 00103$
	ld	a, 0 (iy)
	sub	a, #0x03
	jr	Z, 00104$
	jr	00105$
;main.c:470: case DIRECTION_UP:
00101$:
;main.c:471: attackSprites = spriteAttackUpMeta;
	ld	hl, #_spriteAttackUpMeta+0
	ld	(_attackSprites), hl
;main.c:472: spriteTileOffsets = spriteAttackUp;
	ld	hl, #_spriteAttackUp+0
	ld	(_spriteTileOffsets), hl
;main.c:473: break;
	jr	00105$
;main.c:475: case DIRECTION_DOWN:
00102$:
;main.c:476: attackSprites = spriteAttackDownMeta;
	ld	hl, #_spriteAttackDownMeta+0
	ld	(_attackSprites), hl
;main.c:477: spriteTileOffsets = spriteAttackDown;
	ld	hl, #_spriteAttackDown+0
	ld	(_spriteTileOffsets), hl
;main.c:478: break;
	jr	00105$
;main.c:480: case DIRECTION_LEFT: 
00103$:
;main.c:481: attackSprites = spriteAttackLeftMeta;
	ld	hl, #_spriteAttackLeftMeta+0
	ld	(_attackSprites), hl
;main.c:482: spriteTileOffsets = spriteAttackLeft;
	ld	hl, #_spriteAttackLeft+0
	ld	(_spriteTileOffsets), hl
;main.c:483: break;
	jr	00105$
;main.c:485: case DIRECTION_RIGHT:
00104$:
;main.c:486: attackSprites = spriteAttackRightMeta;
	ld	hl, #_spriteAttackRightMeta+0
	ld	(_attackSprites), hl
;main.c:487: spriteTileOffsets = spriteAttackRight;
	ld	hl, #_spriteAttackRight+0
	ld	(_spriteTileOffsets), hl
;main.c:489: }
00105$:
;main.c:492: actionCount = 9;
	ld	a, #0x09
	ld	(#_actionCount), a
;main.c:493: animationCount = 0;
;main.c:494: scrollXOffset = 0;
	ld	a,#0x00
	ld	(#_animationCount),a
	ld	(#_scrollXOffset), a
;main.c:495: scrollYOffset = 0;
	ld	a, #0x00
	ld	(#_scrollYOffset), a
;main.c:496: action = ACTION_ATTACK;
	ld	a, #0x01
	ld	(#_action), a
;main.c:498: }
	ret
;main.c:509: void checkForAttackInteraction()
;	---------------------------------
; Function checkForAttackInteraction
; ---------------------------------
_checkForAttackInteraction::
;main.c:515: metatile = GSL_metatileLookup(playerX - 8, playerY - 1);
	ld	iy, #_playerX
	ld	a, 0 (iy)
	add	a, #0xf8
	ld	c, a
	ld	a, 1 (iy)
	adc	a, #0xff
	ld	b, a
;main.c:514: if (direction == DIRECTION_UP) 
	ld	a,(#_direction + 0)
	or	a, a
	jr	NZ, 00108$
;main.c:515: metatile = GSL_metatileLookup(playerX - 8, playerY - 1);
	ld	de, (_playerY)
	dec	de
	push	de
	push	bc
	call	_GSL_metatileLookup
	pop	af
	pop	af
	jr	00109$
00108$:
;main.c:516: else if (direction == DIRECTION_DOWN) 
	ld	a,(#_direction + 0)
	dec	a
	jr	NZ, 00105$
;main.c:517: metatile = GSL_metatileLookup(playerX - 8, playerY + 8);
	ld	hl, (_playerY)
	ld	de, #0x0008
	add	hl, de
	push	hl
	push	bc
	call	_GSL_metatileLookup
	pop	af
	pop	af
	jr	00109$
00105$:
;main.c:519: metatile = GSL_metatileLookup(playerX - 9, playerY - 8);
	ld	iy, #_playerY
	ld	a, 0 (iy)
	add	a, #0xf8
	ld	c, a
	ld	a, 1 (iy)
	adc	a, #0xff
	ld	b, a
;main.c:518: else if (direction == DIRECTION_LEFT) 
	ld	a,(#_direction + 0)
	sub	a, #0x02
	jr	NZ, 00102$
;main.c:519: metatile = GSL_metatileLookup(playerX - 9, playerY - 8);
	ld	iy, #_playerX
	ld	a, 0 (iy)
	add	a, #0xf7
	ld	e, a
	ld	a, 1 (iy)
	adc	a, #0xff
	ld	d, a
	push	bc
	push	de
	call	_GSL_metatileLookup
	pop	af
	pop	af
	jr	00109$
00102$:
;main.c:520: else metatile = GSL_metatileLookup(playerX + 8, playerY - 8);
	ld	hl, (_playerX)
	ld	de, #0x0008
	add	hl, de
	push	bc
	push	hl
	call	_GSL_metatileLookup
	pop	af
	pop	af
00109$:
;main.c:521: processAttackInteraction(metatile);
	push	hl
	call	_processAttackInteraction
	pop	af
;main.c:525: metatile = GSL_metatileLookup(playerX + 7, playerY - 1);
	ld	iy, #_playerX
	ld	a, 0 (iy)
	add	a, #0x07
	ld	c, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	b, a
;main.c:524: if (direction == DIRECTION_UP) 
	ld	a,(#_direction + 0)
	or	a, a
	jr	NZ, 00117$
;main.c:525: metatile = GSL_metatileLookup(playerX + 7, playerY - 1);
	ld	de, (_playerY)
	dec	de
	push	de
	push	bc
	call	_GSL_metatileLookup
	pop	af
	pop	af
	jr	00118$
00117$:
;main.c:526: else if (direction == DIRECTION_DOWN) 
	ld	a,(#_direction + 0)
	dec	a
	jr	NZ, 00114$
;main.c:527: metatile = GSL_metatileLookup(playerX + 7, playerY + 8);
	ld	hl, (_playerY)
	ld	de, #0x0008
	add	hl, de
	push	hl
	push	bc
	call	_GSL_metatileLookup
	pop	af
	pop	af
	jr	00118$
00114$:
;main.c:529: metatile = GSL_metatileLookup(playerX - 9, playerY + 7);
	ld	iy, #_playerY
	ld	a, 0 (iy)
	add	a, #0x07
	ld	c, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	b, a
;main.c:528: else if (direction == DIRECTION_LEFT) 
	ld	a,(#_direction + 0)
	sub	a, #0x02
	jr	NZ, 00111$
;main.c:529: metatile = GSL_metatileLookup(playerX - 9, playerY + 7);
	ld	iy, #_playerX
	ld	a, 0 (iy)
	add	a, #0xf7
	ld	e, a
	ld	a, 1 (iy)
	adc	a, #0xff
	ld	d, a
	push	bc
	push	de
	call	_GSL_metatileLookup
	pop	af
	pop	af
	jr	00118$
00111$:
;main.c:530: else metatile = GSL_metatileLookup(playerX + 8, playerY + 7);
	ld	hl, (_playerX)
	ld	de, #0x0008
	add	hl, de
	push	bc
	push	hl
	call	_GSL_metatileLookup
	pop	af
	pop	af
00118$:
;main.c:531: processAttackInteraction(metatile);
	push	hl
	call	_processAttackInteraction
	pop	af
;main.c:532: }
	ret
;main.c:545: void processAttackInteraction(unsigned char * metatile)
;	---------------------------------
; Function processAttackInteraction
; ---------------------------------
_processAttackInteraction::
	push	ix
	ld	ix,#0
	add	ix,sp
;main.c:557: if (*metatile == METATILE_GREEN_TREE)
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	sub	a, #0x11
	jr	NZ, 00102$
;main.c:560: *metatile = METATILE_TREE_STUMP;
	ld	a, #0x38
	ld	(bc), a
;main.c:563: GSL_metatileUpdate();
	push	bc
	call	_GSL_metatileUpdate
	pop	bc
00102$:
;main.c:568: if (*metatile == METATILE_CUT_CACTUS) 
	ld	a, (bc)
	sub	a, #0x90
	jr	NZ, 00104$
;main.c:571: *metatile = METATILE_SAND; 
	ld	a, #0xb0
	ld	(bc), a
;main.c:574: GSL_metatileUpdate();
	push	bc
	call	_GSL_metatileUpdate
	pop	bc
00104$:
;main.c:588: if (*metatile == METATILE_INTERACTIVE_TOMBSTONE_1)
	ld	a, (bc)
	sub	a, #0x78
	jr	NZ, 00106$
;main.c:593: *metatile = METATILE_TOMBSTONE; 
	ld	a, #0xa9
	ld	(bc), a
;main.c:599: *(GSL_getScrolltableAddress() + (51*64 + 28)) = METATILE_GRASS;
	push	bc
	call	_GSL_getScrolltableAddress
	pop	bc
	ld	de, #0x0cdc
	add	hl, de
	ld	(hl), #0x59
;main.c:603: GSL_metatileUpdateCustom(448, 816, (51*64 + 28));
	push	bc
	ld	hl, #0x0cdc
	push	hl
	ld	hl, #0x0330
	push	hl
	ld	hl, #0x01c0
	push	hl
	call	_GSL_metatileUpdateCustom
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	call	_GSL_getScrolltableAddress
	pop	bc
	ld	de, #0x0cdd
	add	hl, de
	ld	(hl), #0x59
;main.c:607: GSL_metatileUpdateCustom(464, 816, (51*64 + 29));
	push	bc
	ld	hl, #0x0cdd
	push	hl
	ld	hl, #0x0330
	push	hl
	ld	hl, #0x01d0
	push	hl
	call	_GSL_metatileUpdateCustom
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	pop	bc
00106$:
;main.c:612: if (*metatile == METATILE_INTERACTIVE_TOMBSTONE_2)
	ld	a, (bc)
	sub	a, #0x91
	jr	NZ, 00109$
;main.c:615: *metatile = METATILE_TOMBSTONE; 
	ld	a, #0xa9
	ld	(bc), a
;main.c:618: *(GSL_getScrolltableAddress() + (43*64 + 28)) = METATILE_VERTICAL_BRIDGE;
	call	_GSL_getScrolltableAddress
	ld	bc, #0x0adc
	add	hl, bc
	ld	(hl), #0x10
;main.c:619: GSL_metatileUpdateCustom(448, 688, (43*64 + 28));
	ld	hl, #0x0adc
	push	hl
	ld	hl, #0x02b0
	push	hl
	ld	hl, #0x01c0
	push	hl
	call	_GSL_metatileUpdateCustom
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;main.c:621: *(GSL_getScrolltableAddress() + (44*64 + 28)) = METATILE_VERTICAL_BRIDGE;
	call	_GSL_getScrolltableAddress
	ld	bc, #0x0b1c
	add	hl, bc
	ld	(hl), #0x10
;main.c:622: GSL_metatileUpdateCustom(448, 704, (44*64 + 28));
	ld	hl, #0x0b1c
	push	hl
	ld	hl, #0x02c0
	push	hl
	ld	h, #0x01
	push	hl
	call	_GSL_metatileUpdateCustom
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;main.c:624: *(GSL_getScrolltableAddress() + (45*64 + 28)) = METATILE_VERTICAL_BRIDGE;
	call	_GSL_getScrolltableAddress
	ld	bc, #0x0b5c
	add	hl, bc
	ld	(hl), #0x10
;main.c:625: GSL_metatileUpdateCustom(448, 720, (45*64 + 28));
	ld	hl, #0x0b5c
	push	hl
	ld	hl, #0x02d0
	push	hl
	ld	hl, #0x01c0
	push	hl
	call	_GSL_metatileUpdateCustom
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
00109$:
;main.c:627: }
	pop	ix
	ret
	.area _CODE
	.area _INITIALIZER
__xinit__playerX:
	.dw #0x0388
__xinit__playerY:
	.dw #0x03a0
__xinit__playerSpriteX:
	.db #0x88	; 136
__xinit__playerSpriteY:
	.db #0x60	; 96
__xinit__animationCount:
	.db #0x00	; 0
__xinit__actionCount:
	.db #0x00	; 0
__xinit__action:
	.db #0x02	; 2
__xinit__actionButtonWatch:
	.db #0x00	; 0
__xinit__spriteTileOffsets:
	.dw _spriteMoveDown
__xinit__scrollXOffset:
	.db #0x00	; 0
__xinit__scrollYOffset:
	.db #0x00	; 0
__xinit__spriteXOffset:
	.db #0x00	; 0
__xinit__spriteYOffset:
	.db #0x00	; 0
__xinit__playerXOffset:
	.dw #0x0000
__xinit__playerYOffset:
	.dw #0x0000
__xinit__direction:
	.db #0x01	; 1
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
	.db #0x01	; 1
	.db #0x4c	; 76	'L'
