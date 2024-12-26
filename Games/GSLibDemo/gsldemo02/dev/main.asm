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
	.globl _UNSAFE_SMS_VRAMmemcpy128
	.globl _UNSAFE_SMS_copySpritestoSAT
	.globl _SMS_VRAMmemset
	.globl _SMS_getKeysStatus
	.globl _SMS_loadSpritePalette
	.globl _SMS_loadBGPalette
	.globl _SMS_addSprite
	.globl _SMS_initSprites
	.globl _SMS_loadTiles
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
	.globl _PSGSFXSubstringRetAddr
	.globl _PSGSFXSubstringLen
	.globl _PSGSFXLoopFlag
	.globl _PSGSFXSkipFrames
	.globl _PSGSFXLoopPoint
	.globl _PSGSFXPointer
	.globl _PSGSFXStart
	.globl _PSGSFXStatus
	.globl _PSGSFXChan3Volume
	.globl _PSGSFXChan2Volume
	.globl _PSGChannel3SFX
	.globl _PSGChannel2SFX
	.globl _PSGChan3LowTone
	.globl _PSGChan2HighTone
	.globl _PSGChan2LowTone
	.globl _PSGChan3Volume
	.globl _PSGChan2Volume
	.globl _PSGChan1Volume
	.globl _PSGChan0Volume
	.globl _PSGMusicSubstringRetAddr
	.globl _PSGMusicSubstringLen
	.globl _PSGMusicVolumeAttenuation
	.globl _PSGMusicLastLatch
	.globl _PSGLoopFlag
	.globl _PSGMusicSkipFrames
	.globl _PSGMusicLoopPoint
	.globl _PSGMusicPointer
	.globl _PSGMusicStart
	.globl _PSGMusicStatus
	.globl _GSL_RAM
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _GSL_LUTRowUpdate
	.globl _GSL_LUTColumnUpdate
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
	.globl _GSL_positionWindow
	.globl _GSL_metatileLookup
	.globl _GSL_tileLookup
	.globl _GSL_refreshVDP
	.globl _GSL_scroll
	.globl _GSL_VBlank
	.globl _GSL_metatileUpdate
	.globl _GSL_metatileUpdateCustom
	.globl _GSL_getMapWidthInPixels
	.globl _GSL_getMapHeightInPixels
	.globl _GSL_getMapWidthInMetatiles
	.globl _GSL_getMapHeightInMetatiles
	.globl _GSL_getScrolltableSize
	.globl _GSL_getCurrentX
	.globl _GSL_getCurrentY
	.globl _GSL_getCollisionCount
	.globl _GSL_getScrolltableAddress
	.globl _GSL_initializeMap
	.globl _PSGStop
	.globl _PSGResume
	.globl _PSGPlay
	.globl _PSGCancelLoop
	.globl _PSGPlayNoRepeat
	.globl _PSGGetStatus
	.globl _PSGSilenceChannels
	.globl _PSGRestoreVolumes
	.globl _PSGSetMusicVolumeAttenuation
	.globl _PSGSFXStop
	.globl _PSGSFXPlay
	.globl _PSGSFXCancelLoop
	.globl _PSGSFXGetStatus
	.globl _PSGSFXPlayLoop
	.globl _PSGFrame
	.globl _PSGSFXFrame
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
_PSGPort	=	0x007f
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
_SMS_SRAM	=	0x8000
_GSL_RAM::
	.ds 263
_PSGMusicStatus::
	.ds 1
_PSGMusicStart::
	.ds 2
_PSGMusicPointer::
	.ds 2
_PSGMusicLoopPoint::
	.ds 2
_PSGMusicSkipFrames::
	.ds 1
_PSGLoopFlag::
	.ds 1
_PSGMusicLastLatch::
	.ds 1
_PSGMusicVolumeAttenuation::
	.ds 1
_PSGMusicSubstringLen::
	.ds 1
_PSGMusicSubstringRetAddr::
	.ds 2
_PSGChan0Volume::
	.ds 1
_PSGChan1Volume::
	.ds 1
_PSGChan2Volume::
	.ds 1
_PSGChan3Volume::
	.ds 1
_PSGChan2LowTone::
	.ds 1
_PSGChan2HighTone::
	.ds 1
_PSGChan3LowTone::
	.ds 1
_PSGChannel2SFX::
	.ds 1
_PSGChannel3SFX::
	.ds 1
_PSGSFXChan2Volume::
	.ds 1
_PSGSFXChan3Volume::
	.ds 1
_PSGSFXStatus::
	.ds 1
_PSGSFXStart::
	.ds 2
_PSGSFXPointer::
	.ds 2
_PSGSFXLoopPoint::
	.ds 2
_PSGSFXSkipFrames::
	.ds 1
_PSGSFXLoopFlag::
	.ds 1
_PSGSFXSubstringLen::
	.ds 1
_PSGSFXSubstringRetAddr::
	.ds 2
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
;libs\GSLib.c:56: void GSL_positionWindow(unsigned int X, unsigned int Y)
;	---------------------------------
; Function GSL_positionWindow
; ---------------------------------
_GSL_positionWindow::
;libs\GSLib.c:68: __endasm;
	pop	de
	pop	hl
	pop	bc
	push	bc
	push	hl
	push	de
	call	GSL_PositionWindow
;libs\GSLib.c:69: }							
	ret
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
;libs\GSLib.c:73: unsigned int * GSL_metatileLookup(unsigned int x, unsigned int y)
;	---------------------------------
; Function GSL_metatileLookup
; ---------------------------------
_GSL_metatileLookup::
;libs\GSLib.c:84: __endasm;
	pop	de
	pop	hl
	pop	bc
	push	bc
	push	hl
	push	de
	call	GSL_MetatileLookup
;libs\GSLib.c:85: }
	ret
;libs\GSLib.c:89: void GSL_tileLookup(unsigned int x, unsigned int y)
;	---------------------------------
; Function GSL_tileLookup
; ---------------------------------
_GSL_tileLookup::
;libs\GSLib.c:101: __endasm;
	pop	de
	pop	hl
	pop	bc
	push	bc
	push	hl
	push	de
	call	GSL_TileLookup
;libs\GSLib.c:102: }
	ret
;libs\GSLib.c:106: void GSL_refreshVDP()
;	---------------------------------
; Function GSL_refreshVDP
; ---------------------------------
_GSL_refreshVDP::
;libs\GSLib.c:112: __endasm;
	push	iy
	call	GSL_refreshVDP
	pop	iy
;libs\GSLib.c:113: }
	ret
;libs\GSLib.c:117: void GSL_scroll(char x, char y)
;	---------------------------------
; Function GSL_scroll
; ---------------------------------
_GSL_scroll::
;libs\GSLib.c:135: __endasm;
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	iy
	ld	a, h
	ld	(# #_GSL_RAM + 34), a
	ld	a, l
	ld	(# #_GSL_RAM + 33), a
	call	GSL_ActiveDisplayRoutine
	pop	iy
;libs\GSLib.c:136: }
	ret
;libs\GSLib.c:140: void GSL_VBlank()
;	---------------------------------
; Function GSL_VBlank
; ---------------------------------
_GSL_VBlank::
;libs\GSLib.c:146: __endasm;
	push	iy
	call	GSL_VBlankRoutine
	pop	iy
;libs\GSLib.c:147: }
	ret
;libs\GSLib.c:151: void GSL_metatileUpdate()
;	---------------------------------
; Function GSL_metatileUpdate
; ---------------------------------
_GSL_metatileUpdate::
;libs\GSLib.c:155: __endasm;
	call	GSL_MetatileUpdate
;libs\GSLib.c:156: }
	ret
;libs\GSLib.c:160: void GSL_metatileUpdateCustom(unsigned int x, unsigned int y, unsigned int offset)
;	---------------------------------
; Function GSL_metatileUpdateCustom
; ---------------------------------
_GSL_metatileUpdateCustom::
;libs\GSLib.c:178: __endasm;	
	pop	bc
	pop	hl
	ld	(# #_GSL_RAM + 23), hl
	pop	hl
	ld	(# #_GSL_RAM + 25), hl
	pop	hl
	ld	de, (# #_GSL_RAM + 13)
	add	hl, de
	ld	(# #_GSL_RAM + 21), hl
	push	hl
	push	hl
	push	hl
	push	bc
	call	GSL_MetatileUpdate
;libs\GSLib.c:179: }
	ret
;libs\GSLib.c:182: unsigned int GSL_getMapWidthInPixels()
;	---------------------------------
; Function GSL_getMapWidthInPixels
; ---------------------------------
_GSL_getMapWidthInPixels::
;libs\GSLib.c:184: return *((unsigned int*)(&GSL_RAM + 6));
	ld	hl, (#(_GSL_RAM + 0x0006) + 0)
;libs\GSLib.c:185: }
	ret
;libs\GSLib.c:189: unsigned int GSL_getMapHeightInPixels()
;	---------------------------------
; Function GSL_getMapHeightInPixels
; ---------------------------------
_GSL_getMapHeightInPixels::
;libs\GSLib.c:191: return *((unsigned int*)(&GSL_RAM + 8));
	ld	hl, (#(_GSL_RAM + 0x0008) + 0)
;libs\GSLib.c:192: }
	ret
;libs\GSLib.c:196: unsigned int GSL_getMapWidthInMetatiles()
;	---------------------------------
; Function GSL_getMapWidthInMetatiles
; ---------------------------------
_GSL_getMapWidthInMetatiles::
;libs\GSLib.c:198: return *((unsigned int*)(&GSL_RAM + 2));
	ld	hl, (#(_GSL_RAM + 0x0002) + 0)
;libs\GSLib.c:199: }
	ret
;libs\GSLib.c:203: unsigned int GSL_getMapHeightInMetatiles()
;	---------------------------------
; Function GSL_getMapHeightInMetatiles
; ---------------------------------
_GSL_getMapHeightInMetatiles::
;libs\GSLib.c:205: return *((unsigned int*)(&GSL_RAM + 4));
	ld	hl, (#(_GSL_RAM + 0x0004) + 0)
;libs\GSLib.c:206: }
	ret
;libs\GSLib.c:210: unsigned int GSL_getScrolltableSize()
;	---------------------------------
; Function GSL_getScrolltableSize
; ---------------------------------
_GSL_getScrolltableSize::
;libs\GSLib.c:212: return *((unsigned int*)(&GSL_RAM + 0));
	ld	hl, (#_GSL_RAM + 0)
;libs\GSLib.c:213: }
	ret
;libs\GSLib.c:217: unsigned int GSL_getCurrentX()
;	---------------------------------
; Function GSL_getCurrentX
; ---------------------------------
_GSL_getCurrentX::
;libs\GSLib.c:219: return *((unsigned int*)(&GSL_RAM + 27));
	ld	hl, (#(_GSL_RAM + 0x001b) + 0)
;libs\GSLib.c:220: }
	ret
;libs\GSLib.c:224: unsigned int GSL_getCurrentY()
;	---------------------------------
; Function GSL_getCurrentY
; ---------------------------------
_GSL_getCurrentY::
;libs\GSLib.c:226: return *((unsigned int*)(&GSL_RAM + 29));
	ld	hl, (#(_GSL_RAM + 0x001d) + 0)
;libs\GSLib.c:227: }
	ret
;libs\GSLib.c:231: unsigned char GSL_getCollisionCount()
;	---------------------------------
; Function GSL_getCollisionCount
; ---------------------------------
_GSL_getCollisionCount::
;libs\GSLib.c:233: return *((unsigned char*)(&GSL_RAM + 44));
	ld	a, (#(_GSL_RAM + 0x002c) + 0)
	ld	l, a
;libs\GSLib.c:234: }
	ret
;libs\GSLib.c:237: unsigned char * GSL_getScrolltableAddress()
;	---------------------------------
; Function GSL_getScrolltableAddress
; ---------------------------------
_GSL_getScrolltableAddress::
;libs\GSLib.c:239: return *(unsigned char**)(&GSL_RAM + 13);
	ld	hl, (#(_GSL_RAM + 0x000d) + 0)
;libs\GSLib.c:240: }
	ret
;libs\GSLib.c:244: void GSL_initializeMap(void *scrolltable, void *metatiles)
;	---------------------------------
; Function GSL_initializeMap
; ---------------------------------
_GSL_initializeMap::
;libs\GSLib.c:1724: __endasm;
	pop	de
	pop	hl
	pop	bc
	push	bc
	push	hl
	push	de
	call	GSL_InitialiseMap
	jp	_Finalise
;	===============================================================================
;	GSLib 1.0 ASM
	GSL_InitialiseMap:
; == Store MetatileTable Address
	ld	(# #_GSL_RAM + 19), bc
;	== Store CollisionCount (3rd byte in metatile table)
	inc	bc
	inc	bc
	inc	bc
	ld	a, (bc)
	ld	(# #_GSL_RAM + 44), a
;	== Copy Scrolltable Header to Ram
	ld	de, #_GSL_RAM
	ld	bc, #13
	ldir
;	== Store # #_GSL_RAM + 13 (ldir will have pushed past header to actual table)
	ld	(# #_GSL_RAM + 13), hl
;	== Initialize Ram
	ld	hl, # #_GSL_RAM + 183
	ld	(# #_GSL_RAM + 42), hl
	xor	a
	ld	(# #_GSL_RAM + 41), a
	ld	(# #_GSL_RAM + 33), a
	ld	(# #_GSL_RAM + 34), a
	ret
	GSL_PositionWindow:
; == Store (x, y) in ram
	ld	(# #_GSL_RAM + 29), bc
	ld	(# #_GSL_RAM + 27), hl
;	**** Calculate and Store # #_GSL_RAM + 15
	call	GSL_MetatileLookup
;	== Store # #_GSL_RAM + 15
	ld	(# #_GSL_RAM + 15), hl
;	*** Calculate and Store # #_GSL_RAM + 31
;	== Y Modulo 224 (height of window in pixels)
	ld	hl, (# #_GSL_RAM + 29)
	ld	e, #224
	ld	b, #8
	_DivLoop:
	adc hl, hl
	ld	a, h
	jr	c, _DivCarry1
	cp	e
	jr	c, _DivCarry2
	_DivCarry1:
	sub e
	ld	h, a
	or	a
	_DivCarry2:
	djnz _DivLoop
	ld	a, l
	rla
	cpl
;	== Store # #_GSL_RAM + 31
	ld	a, h
	ld	(# #_GSL_RAM + 31), a
;	*** Calculate and Store # #_GSL_RAM + 17 (top left nametable entry on VDP)
;	== Use Previous Modulo to Calculate Namtable Row Address ((modulo & %11110000) * 4)
	ld	a, #248
	and	h
	ld	l, a
	xor	a
	ld	h, a
	ld	d, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	== Add X worth of nametable entries.
;	Divide by 8 then << 1 (below is optimization of this)
	ld	a, (# #_GSL_RAM + 27)
	and	#248 ; %11111000
	rra
	rra
	ld	e, a
	add	hl, de
;	== Add vdp base address of nametable
	ld	de, #0x7800 ; base address of nametable in vram including write bit set (14)
	add	hl, de
;	== Store # #_GSL_RAM + 17
	inc	hl
	inc	hl
	ld	(# #_GSL_RAM + 17), hl
;	== Set VDP Fine Scroll Values
	ld	a, (# #_GSL_RAM + 27)
	out	(#0xBF), a
	ld	a, #136 ; $88
	out	(#0xBF), a
	ld	a, (# #_GSL_RAM + 31)
	out	(#0xBF), a
	ld	a, #137 ; $89
	out	(#0xBF), a
	ret
	GSL_MetatileLookup:
; == Convert Y to LUT Entry and retrieve value
	ld	(# #_GSL_RAM + 23), hl
	ld	(# #_GSL_RAM + 25), bc
;	== Divide Y by 16 to get Metatile Y Index
	ld	a, c
	srl	b
	rra
	srl	b
	rra
	srl	b
	rra
	srl	b
	rra
	ld	c, a
;	== Multiply Metatile Y Index By Map Metatile Width
	ld	de, (# #_GSL_RAM + 2)
	ld	hl, #0
	ld	a, b
	ld	b, #16
	_Mult16Loop:
	add hl, hl
	sla	c
	rla
	jr	nc, _Mult16NoAdd
	add	hl, de
	_Mult16NoAdd:
	djnz _Mult16Loop
;	== Divide X by 16 to get Metatile X Index and add
	ld	de, (# #_GSL_RAM + 23)
	ld	a, e
	srl	d
	rra
	srl	d
	rra
	srl	d
	rra
	srl	d
	rra
	ld	e, a
	add	hl, de
;	== Add # #_GSL_RAM + 19 Base Address
	ld	de, (# #_GSL_RAM + 13)
	add	hl, de
;	== Put Metatile ID in a and store address in buffer.
	ld	(# #_GSL_RAM + 21), hl
	ret
	GSL_TileLookup:
; == Create offset for within Metatile (which nametable entry does x,y point to)
	ld	a, #8 ; %00001000
	and	l
	rra
	rra
	ld	d, a
	ld	a, #8 ; %00001000
	and	c
	rra
	or	d
	push	af
;	== Retrieve Metatile ID
	call	GSL_MetatileLookup
;	== Resolve in to Metatile Address - ((ld << 3) + Offset + GSL_METATILE_TABLE)
	ld	a, (hl)
	ld	l, a
	and	#7 ; %111
	ld	h, a
	ld	a, l
	and	#248 ; %11111000
	ld	l, a
	pop	af
	or	l
	ld	l, a ; hl = pointer to metatile nametable entry we need to write to vdp
	ld	de, (# #_GSL_RAM + 19)
	add	hl, de
;	== Get Nametable entry using resolved address
	ld	a, (hl) ; indirection
	inc	hl
	ld	h, (hl)
	ld	l, a
	ret
	GSL_refreshVDP:
; == Set VDP Nametable Pointer
	ld	hl, (# #_GSL_RAM + 17)
	ld	(# #_GSL_RAM + 39), hl
;	== Keep a Modified Y to reflect rows being updated
	ld	hl, (# #_GSL_RAM + 29)
	ld	(# #_GSL_RAM + 32), hl ; using this as temp ram entry
	ld	a, (# #_GSL_RAM + 31)
	srl	a
	srl	a
	srl	a
	sub	#28
	ld	(# #_GSL_RAM + 47), a
	ld	a, #28
	ld	(# #_GSL_RAM + 47 + 1), a
	_RefreshLoop:
; == Set VDP Pointer at Start of Row
	ld	hl, (# #_GSL_RAM + 39)
	ld	c, #0xBF
	out	(c), l
	out	(c), h
;	== Lookup Metatile for this Row
	ld	bc, (# #_GSL_RAM + 32)
	ld	hl, (# #_GSL_RAM + 27)
	call	GSL_MetatileLookup
;	== Store address in iy
	push	hl
	pop	iy
;	== Put Y Offset in to ixl and Unroll a row of Nametable data.
	ld	a, (# #_GSL_RAM + 32)
	and	#8 ; %00001000
	rrca
	ld	(# #_GSL_RAM + 45), a
	call	_unrollRowForNTUpdate ; Unroll buffer table column for nametable updates!
;	== Add Offset to Start location in Buffer.
	ld	a, (# #_GSL_RAM + 27)
	rrca
	rrca
	and	#2
	add	a, #2
	ld	hl, # #_GSL_RAM + 111
	ld	e, a
	xor	a
	ld	d, a
	add	hl, de
;	== Calculate Number of Bytes to be Written in first Write, store in b.
	ld	a, (# #_GSL_RAM + 27)
	add	a, #8
	and	#248 ; %11111000
	rrca
	rrca
	ld	d, a
	ld	a, #64
	sub	d
	and	#63 ; %00111111
	ld	d, a
;	== Write Buffered Data to VDP Nametable
	ld	c, #0xBE
	_WriteRow1Loop:
	outi
	dec	d
	jp	nz, _WriteRow1Loop
;	== Set VDP Address to Start of Row for Second Write
	ld	de, (# #_GSL_RAM + 39)
	ld	c, #0xBF
	ld	a, #192 ; %11000000
	and	e
	out	(c), a
	out	(c), d
;	== Calculate Number of Bytes to be Written in scond Write, store in b.
	ld	a, (# #_GSL_RAM + 27)
	add	a, #8
	and	#248 ; %11111000
	rrca
	rrca
	ld	d, a
	ld	c, #0xBE
;	== Write Buffered Data to VDP Nametable
	_WriteRow2Loop:
	outi
	dec	d
	jp	nz, _WriteRow2Loop
;	**** Prep for Next Write.
;	== Push VDP Nametable address to next Row.
	ld	hl, (# #_GSL_RAM + 39)
	ld	de, #0x40
	add	hl, de
	ld	(# #_GSL_RAM + 39), hl
;	== Have we written rows? Return if true;
	ld	a, (# #_GSL_RAM + 47 + 1)
	dec	a
	ret	z
	ld	(# #_GSL_RAM + 47 + 1), a
;	== Is next row at top of VDP Nametable, reset Address if true;
	ld	a, (# #_GSL_RAM + 47)
	inc	a
	ld	(# #_GSL_RAM + 47), a
	jp	nz, _AdjustTempYValue
	ld	hl, (# #_GSL_RAM + 39)
	ld	h, #0x78
	ld	a, #63 ; %00111111
	and	l
	ld	l, a
	ld	(# #_GSL_RAM + 39), hl
;	== Adjust Temp Y Value for Next Write.
	_AdjustTempYValue:
	ld hl, (# #_GSL_RAM + 32)
	ld	d, #0
	ld	e, #8
	add	hl, de
	ld	(# #_GSL_RAM + 32), hl
	jp	_RefreshLoop
	GSL_MetatileUpdateSpecific:
; == Populate Buffered Values with Custom Values.
	ld	(# #_GSL_RAM + 25), hl
	ld	(# #_GSL_RAM + 23), de
;	== Add Array offset to Scrolltable bass address then store results.
	ld	hl, (# #_GSL_RAM + 13)
	add	hl, bc
	ld	(# #_GSL_RAM + 21), hl
;	== Flow to GSL_MetatileUpdate Below
	GSL_MetatileUpdate:
; == Identify Column of update
	ld	hl, (# #_GSL_RAM + 25)
	ld	e, #224
	ld	b, #8
	_MDivLoop:
	adc hl, hl
	ld	a, h
	jr	c, _MDivCarry1
	cp	e
	jr	c, _MDivCarry2
	_MDivCarry1:
	sub e
	ld	h, a
	or	a
	_MDivCarry2:
	djnz _MDivLoop
	ld	a, l
	rla
	cpl
	ld	a, h
	rra
	rra
	rra
	rra
	and	#15
	add	a, #240
	ld	h, a
	xor	a
	ld	l, a
	ld	d, a ; Prep for X
	srl	h
	rr	l
;	== Isolate metatile location in X and add
	ld	a, (# #_GSL_RAM + 23)
	and	#240 ; %11110000
	rra
	rra
	ld	e, a
	add	hl, de
;	== Write Resolved Address of Metatile on VDP (including register high bits)
	ex	de, hl
	ld	hl, (# #_GSL_RAM + 42)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	inc	hl
	ex	de, hl
;	== Resolve Metatile Location from ID
	ld	hl, (# #_GSL_RAM + 21)
	ld	l, (hl)
	ld	a, l
	and	#7 ; %111
;or	#GSL_METATILE_TABLE_HIGH_BYTE ; add high bits of metatile address (table must be on 2k boundary)
	ld	h, a
	ld	a, l
	and	#248 ; %11111000
	ld	l, a
	ld	bc, (# #_GSL_RAM + 19)
	add	hl, bc
;	== Copy Contents of Metatile To Ram Buffer
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
	ldi
;	== Update Count and Address for more Metatile Updates if any
	ld	(# #_GSL_RAM + 42), de
	ld	hl, # #_GSL_RAM + 41
	inc	(hl)
	ret
	_unrollRowForNTUpdate:
	ld de, # #_GSL_RAM + 111
	ld	c, #17*#4
	_unrollMetaTileRow:
	ld l, 0 (iy) ; == Resolve metatile address, current metatile pointed to by iy
	ld	a, l ; optimized <<3 shift, bits are stored as '43210765' for speed
	and	#7 ; %111
	ld	h, a
	ld	a, l
	and	#248 ; %11111000
	ld	l, a
	ld	a, (# #_GSL_RAM + 45) ; add X offset (in ixl) to get desired column in meta tile.
	or	l
	ld	l, a ; hl = pointer to metatile nametable entry we need to write to vdp
	push	bc
	ld	bc, (# #_GSL_RAM + 19)
	add	hl, bc
	pop	bc
	ldi	; == Write 2x nametable entries to buffer.
	ldi	; metatiles are 2 entries wide so l+=2 to move to second entry.
	ldi
	ldi
	xor	a ; loop
	or	c
	ret	z
	inc	iy ; Update Scrolltable Pointer
	jp	_unrollMetaTileRow
	_unrollColumnForNTUpdate:
	ld de, # #_GSL_RAM + 47
	ld	c, #15*#4
	_unrollMetaTileColumn:
	ld l, 0 (iy) ; == Resolve metatile address, current metatile pointed to by iy
	ld	a, l ; optimized <<3 shift, bits are stored as '43210765' for speed
	and	#7 ; %111
	ld	h, a
	ld	a, l
	and	#248 ; %11111000
	ld	l, a
	ld	a, (# #_GSL_RAM + 45)
	or	l
	ld	l, a ; hl = pointer to metatile nametable entry we need to write to vdp
	push	bc
	ld	bc, (# #_GSL_RAM + 19)
	add	hl, bc
	pop	bc
	ldi	; == Write 2x nametable entries to buffer.
	ldi	; metatiles are 2 entries wide so l+=2 to move to second entry.
	inc	hl
	inc	hl
	ldi
	ldi
	xor	a ; loop
	or	c
	ret	z
	ld	hl, (# #_GSL_RAM + 2) ; Update Scrolltable Pointer
	ex	de, hl
	add	iy, de
	ex	de, hl
	jp	_unrollMetaTileColumn
	GSL_ActiveDisplayRoutine:
; == Initialize
	ld	iy, #_GSL_RAM
	xor	a
	ld	(# #_GSL_RAM + 35), a
	ld	(# #_GSL_RAM + 36), a
	_xScroll:
; == Check Left / Right Scroll...
	ld	a, (# #_GSL_RAM + 33)
	and	a
	jp	z, _yScroll ; no value = no horizontal scroll
	jp	m, _leftScroll ; signed = left scroll.
	_rightScroll:
; == Update currentXScroll Value.
	ld	hl, (# #_GSL_RAM + 27) ; add to current x value
	ld	b, l
	add	a, l
	jr	nc, _noRightHighByteCarry
	inc	h
	_noRightHighByteCarry:
	ld l, a
	xor	b
	ld	d, a ; store low byte different pre / post scroll (for boundary tests)
	ld	(# #_GSL_RAM + 27), hl
	_rightNametableCheck:
; == Check for NameTable Boundary Cross
	and	#248 ; %11111000
	jp	z, _yScroll
;	== NameTable Bounary Crossed... Process
	ld	a, #1
	ld	(# #_GSL_RAM + 35), a
	ld	a, (# #_GSL_RAM + 17) ; Update NameTable Pointer
	ld	c, a ; (addition bound within low 6 bits!!!)
	and	#192 ; %11000000
	ld	b, a
	ld	a, c
	add	a, #2
	and	#63 ; %111111
	or	b
	ld	(# #_GSL_RAM + 17), a
	_rightScrolltableCheck:
; == Check for BufferTable Boundary Cross
	ld	a, d
	and	#240 ; %11110000
	jp	z, _yScroll
;	== BufferTable Boundary Crossed... Process
	ld	hl, (# #_GSL_RAM + 15) ; Update buffer table pointer.
	inc	hl
	ld	(# #_GSL_RAM + 15), hl
	jp	_yScroll
	_leftScroll:
; == Update currentXScroll Value.
	ld	hl, (# #_GSL_RAM + 27) ; add to current x value
	ld	b, l
	add	a, l
	jr	c, _noLeftHighByteCarry
	dec	h
	_noLeftHighByteCarry:
	ld l, a
	xor	b
	ld	d, a ; store low byte different pre / post scroll (for boundary tests)
	ld	(# #_GSL_RAM + 27), hl
	_leftNametableCheck:
; == Check for NameTable Boundary Cross
	and	#248 ; %11111000
	jp	z, _yScroll
;	== NameTable Bounary Crossed... Process
	ld	a, #129
	ld	(# #_GSL_RAM + 35), a
	ld	a, (# #_GSL_RAM + 17) ; Update name table pointer.
	ld	c, a ; (subtraction bound within low 6 bits!!!)
	and	#192 ; %11000000
	ld	b, a
	ld	a, c
	sub	#2
	and	#63 ; %111111
	or	b
	ld	(# #_GSL_RAM + 17), a
	_leftScrolltableCheck:
; == Check for BufferTable Boundary Cross
	ld	a, d
	and	#240 ; %11110000
	jp	z, _yScroll
;	== BufferTable Boundary Crossed... Process
	ld	hl, (# #_GSL_RAM + 15) ; Update buffer table pointer.
	dec	hl
	ld	(# #_GSL_RAM + 15), hl
	_yScroll:
; == Check Up / Down Scroll...
	ld	a, (# #_GSL_RAM + 34)
	and	a
	jp	z, _processUpdateBuffers ; no value = no vertical scroll
	jp	m, _upScroll ; signed = left scroll.
	_downScroll:
; == Update dummyYScroll Value (wraps around 224 NameTable height!)
	ld	b, a
	ld	a, (# #_GSL_RAM + 31)
	add	a, b
	cp	#224
	jp	c, _downNoCrossBoundary
	sub	#224
	_downNoCrossBoundary:
	ld (# #_GSL_RAM + 31), a
	ld	a, b
;	== Update currentYScroll Value.
	ld	hl, (# #_GSL_RAM + 29) ; add to current y value
	ld	b, l
	add	a, l
	jr	nc, _noDownHighByteCarry
	inc	h
	_noDownHighByteCarry:
	ld l, a
	xor	b
	ld	d, a ; store low byte different pre / post scroll (for boundary tests)
	ld	(# #_GSL_RAM + 29), hl
	_downNametableCheck:
; == Check for NameTable Boundary Cross
	and	#248 ; %11111000
	jp	z, _processUpdateBuffers
;	== NameTable Bounary Crossed... Process
	ld	a, #1
	ld	(# #_GSL_RAM + 36), a
	ld	hl, (# #_GSL_RAM + 17) ; Update name table pointer.
	ld	bc, #64
	add	hl, bc
	ld	a, #0x7F ; TODO shift this to .defines for variable nat positioning
	cp	h
	jp	nz, _downNoResetNTHighByte
	ld	h, #0x78
	_downNoResetNTHighByte:
	ld (# #_GSL_RAM + 17), hl
	_downScrolltableCheck:
; == Check for BufferTable Boundary Cross
	ld	a, d
	and	#240 ; %11110000 ; !SMC metatile width bitmask
	jp	z, _processUpdateBuffers
;	== BufferTable Boundary Crossed... Process
	ld	hl, (# #_GSL_RAM + 15)
	ld	bc, (# #_GSL_RAM + 2)
	add	hl, bc
	ld	(# #_GSL_RAM + 15), hl
	jp	_processUpdateBuffers
	_upScroll:
; == Update dummyYScroll Value (wraps around 224 NameTable height!)
	ld	b, a
	ld	a, (# #_GSL_RAM + 31)
	add	a, b
	jp	c, _upNoCrossBoundary
	sub	#32
	_upNoCrossBoundary:
	ld (# #_GSL_RAM + 31), a
	ld	a, b
;	== Update currentYScroll Value.
	ld	hl, (# #_GSL_RAM + 29) ; add to current y value
	ld	b, l
	add	a, l
	jr	c, _noUpHighByteCarry
	dec	h
	_noUpHighByteCarry:
	ld l, a
	xor	b
	ld	d, a ; store low byte different pre / post scroll (for boundary tests)
	ld	(# #_GSL_RAM + 29), hl
	_upNametableCheck:
; == Check for NameTable Boundary Cross
	ld	a, d
	and	#248 ; %11111000
	jp	z, _processUpdateBuffers
;	== NameTable Bounary Crossed... Process
	ld	a, #129
	ld	(# #_GSL_RAM + 36), a
	ld	hl, (# #_GSL_RAM + 17) ; Update name table pointer.
	ld	bc, #64
	or	a
	sbc	hl, bc
	ld	a, #0x78 - 1
	cp	h
	jp	nz, _upNoResetNTHighByte
	ld	h, #0x7F - 1
	_upNoResetNTHighByte:
	ld (# #_GSL_RAM + 17), hl
	_upScrolltableCheck:
; == Check for BufferTable Boundary Cross
	ld	a, d
	and	#240 ; %11110000 ; !SMC metatile width bitmask
	jp	z, _processUpdateBuffers
;	== BufferTable Boundary Crossed... Process
	ld	hl, (# #_GSL_RAM + 15)
	ld	bc, (# #_GSL_RAM + 2)
	xor	a
	sbc	hl, bc
	ld	(# #_GSL_RAM + 15), hl
	_processUpdateBuffers:
	_updateX:
; == Left / Right Scroll Occur?
	ld	a, (# #_GSL_RAM + 35)
	or	a
	jp	z, _updateY
	jp	m, _updateBufferLeft
	_updateBufferRight:
; == Create Adjusted btPointer for _unrollColumnForNTUpdate call
	ld	iy, (# #_GSL_RAM + 15)
	ld	de, #16
	add	iy, de
;	== Create X offset for _unrollColumnForNTUpdate call
	ld	a, (# #_GSL_RAM + 27) ; get x offset for meta tile. Writing column so need to adjust for this.
	and	#8 ; %00001000
	rrca
	rrca
	ld	(# #_GSL_RAM + 45), a ;ld ixl, a
;	== Unroll MetaTiles and get NameTable data for update
	call	_unrollColumnForNTUpdate
;	== Store Adjusted NameTable Address for Update.
	ld	a, (# #_GSL_RAM + 17)
	ld	c, a
	and	#192 ; %11000000 ; update name table pointer.
	ld	b, a
	ld	a, c
	sub	#2
	and	#63 ; %111111
	or	b
	ld	(# #_GSL_RAM + 37), a
	ld	a, (# #_GSL_RAM + 17 + 1)
	ld	(# #_GSL_RAM + 37 + 1), a
	jp	_updateY
	_updateBufferLeft:
; == NameTable Update Required?
	rra
	jp	nc, _updateY
;	== Create Adjusted btPointer for _unrollColumnForNTUpdate call
	ld	iy, (# #_GSL_RAM + 15)
	ld	a, (# #_GSL_RAM + 27)
	add	a, #8
	and	#8 ; %00001000
	jp	nz, _createXOffset
	inc	iy
;	== Create X offset for _unrollColumnForNTUpdate call
	_createXOffset:
	rrca
	rrca
	ld	(# #_GSL_RAM + 45), a ;ld ixl, a
;	== Unroll MetaTiles and get NameTable data for update
	call	_unrollColumnForNTUpdate
;	== Store NameTable Address for Update (no adjustment required)
	ld	hl, (# #_GSL_RAM + 17)
	ld	(# #_GSL_RAM + 37), hl
	_updateY:
; == Left / Right Scroll Occur?
	ld	a, (# #_GSL_RAM + 36)
	or	a
	ret	z
	jp	m, _updateBufferUp
	_updateBufferDown:
; == NameTable Update Required?
	rra
	ret	nc
;	== Create Adjusted btPointer for _unrollColumnForNTUpdate call
	ld	iy, (# #_GSL_RAM + 15)
	ld	de, (# #_GSL_RAM + 10)
	add	iy, de
	ld	de, (# #_GSL_RAM + 2)
	ld	a, (# #_GSL_RAM + 29) ; get x offset for meta tile. Writing column so need to adjust for this.
	sub	#8
	and	#8 ; %00001000
	jp	nz, _createYOffset
	add	iy, de
	_createYOffset:
	rrca
	ld	(# #_GSL_RAM + 45), a ;ld ixl, a
;	== Unroll MetaTiles and get NameTable data for update
	call	_unrollRowForNTUpdate
;	== Store Adjusted NameTable Address for Update.
	ld	hl, (# #_GSL_RAM + 17)
	ld	de, #64
	or	a
	sbc	hl, de
	ld	a, #0x78 - 1
	cp	h
	jp	nz, _noYNametableWrap
	ld	h, #0x7F - 1
	_noYNametableWrap:
	ld (# #_GSL_RAM + 39), hl
	ret
	_updateBufferUp:
; == NameTable Update Required?
	rrca
	ret	nc
;	== Get btPointer for _unrollColumnForNTUpdate call
	ld	iy, (# #_GSL_RAM + 15)
;	== Create Y offset for _unrollColumnForNTUpdate call
	ld	a, (# #_GSL_RAM + 29) ; get x offset for meta tile. Writing column so need to adjust for this.
	and	#8 ; %00001000
	rrca
	ld	(# #_GSL_RAM + 45), a ;ld ixl, a
	call	_unrollRowForNTUpdate ; Unroll buffer table column for nametable updates!
;	== Store NameTable Address for Update (no adjustment required)
	ld	hl, (# #_GSL_RAM + 17)
	ld	(# #_GSL_RAM + 39), hl
	ret
	GSL_VBlankRoutine:
; == Check if row update required.
	ld	a, (# #_GSL_RAM + 36)
	and	a
	jp	z, _updateColumn
	_writeRow:
; == Put VDP Pointer Address in Shadow Register and Set VDP Pointer.
	exx
	ld	hl, (# #_GSL_RAM + 39)
	ld	c, #0xBF
	out	(c), l
	out	(c), h
	exx
	ld	c, #0xBE
;	== Construct LUT address For First Write
	ld	a, (# #_GSL_RAM + 27)
	and	#248 ; %11111000
	rrca
	rrca
	ld	hl, #_GSL_LUTRowUpdate
	add	a, l
	jp	nc, _finaliseLUTRowAddress
	inc	h
	_finaliseLUTRowAddress:
	ld l, a
	push	hl ; Story copy on stack
;	== Extract Jump Location from LUT and store in IY
;	Jump is for unrolled VDP Write code
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	iy, #_UnrolledRowWrites
	add	iy, de
;	== Add Offset to Start location in Buffer.
	ld	a, (# #_GSL_RAM + 27)
	rrca
	rrca
	and	#2
	add	a, #2
	ld	hl, # #_GSL_RAM + 111
	ld	e, a
	xor	a
	ld	d, a
	add	hl, de
	call	IYJump
;	== Update VDP Pointer For Second Write
;	Second write always starts at left most side of Nametable so clear
;	low bytes of address and update.
	exx
	ld	a, #192 ; %11000000
	and	l
	out	(c), a
	out	(c), h
	exx
;	== Move Forward 130 bytes in LUT
	ex	de, hl
	pop	hl
	ld	a, #64
	add	a, l
	ld	l, a
	jp	nc, _rowExtractJumpAddress
	inc	h
	_rowExtractJumpAddress:
; == Extract Jump Location from LUT and store in IY
;	Jump is for unrolled VDP Write code
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	iy, #_UnrolledRowWrites
	add	iy, bc
	ex	de, hl
	ld	c, #0xBE
	call	IYJump
	_updateColumn:
; == Check if row update required.
	ld	a, (# #_GSL_RAM + 35)
	and	a
	jp	z, _MetatileUpdates
;	== Put VDP Pointer Address in Shadow Register and Set VDP Pointer.
	exx
	ld	hl, (# #_GSL_RAM + 37)
	ld	de, #64 ; Each new column entry is 64 bytes ahead, store here for addition
	ld	c, #0xBF
	exx
	ld	c, #0xBE
;	== Construct LUT address For First Write
	ld	a, (# #_GSL_RAM + 31)
	and	#248 ; %11111000
	rrca
	rrca
	ld	hl, #_GSL_LUTColumnUpdate
	add	a, l
	jp	nc, _finaliseLUTColumnAddress
	inc	h
	_finaliseLUTColumnAddress:
	ld l, a
	push	hl ; Story copy on stack
;	== Extract Jump Location from LUT and store in IY
;	Jump is for unrolled VDP Write code
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	iy, #_UnrolledColumnWrites
	add	iy, de
;	== Add Offset to Start location in Buffer.
	ld	a, (# #_GSL_RAM + 29)
	and	#8 ; %00001000
	rrca
	rrca
	ld	hl, # #_GSL_RAM + 47
	ld	e, a
	xor	a
	ld	d, a
	add	hl, de
	call	IYJump
;	== Update VDP Pointer For Second Write
;	Second write always starts at top row of Nametable so reset high byte
;	to 0x78, keep low bytes of address and update.
	exx
	ld	a, (# #_GSL_RAM + 37) ; Get vram nametable pointer
	and	#63 ; %00111111
	ld	h, #0x78
	ld	l, a
	exx
;	== Move Forward 114 bytes in LUT
	ex	de, hl
	pop	hl
	ld	a, #56
	add	a, l
	ld	l, a
	jp	nc, _columnExtractJumpAddress
	inc	h
	_columnExtractJumpAddress:
; == Extract Jump Location from LUT and store in IY
;	Jump is for unrolled VDP Write code
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	iy, #_UnrolledColumnWrites
	add	iy, bc
	ex	de, hl
	ld	c, #0xBE
	call	IYJump
	_MetatileUpdates:
; == Check if Metatile Updates are Required.
	ld	a, (# #_GSL_RAM + 41)
	or	a
	jp	z, _VBlankCleanup
	ld	hl, # #_GSL_RAM + 183
	ld	b, a
	_MetatileUpdatesLoop:
; == Process each metatile Update
	ld	a, #7 ; count = number of metatile to update.
	add	a, b ; add 7 to current number, outi will reduce this by 8
	ld	b, a ; end result will be to subtract 1 from current number
;	== First word is VDP address of update. Update VDP Pointer.
	ld	d, (hl)
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	c, #0xBF
	out	(c), d
	out	(c), e
;	== Write first two entries of Metatile.
	dec	c
	outi
	outi
	outi
	outi
;	== Update VDP pointer to be one nametable row lower.
	ld	a, #64 ; $40
	add	a, d
	ld	d, a
	inc	c
	out	(c), d
	out	(c), e
;	== Write last two entries.
	dec	c
	outi
	outi
	outi
	outi
;	== Loop if required.
	ld	a, b
	or	a
	jp	nz, _MetatileUpdatesLoop
	_VBlankCleanup:
; == Reset RAM Variables for next Active Display.
	ld	hl, # #_GSL_RAM + 183
	ld	(# #_GSL_RAM + 42), hl
	xor	a
	ld	(# #_GSL_RAM + 41), a
	ld	(# #_GSL_RAM + 33), a
	ld	(# #_GSL_RAM + 34), a
;	== Update Screen X,Y Scroll
	ld	a, (# #_GSL_RAM + 27)
	neg
	out	(#0xBF), a
	ld	a, #136 ; $88
	out	(#0xBF), a
	ld	a, (# #_GSL_RAM + 31)
	out	(#0xBF), a
	ld	a, #137 ; $89
	out	(#0xBF), a
	ret
	IYJump:
	jp (iy)
	ret
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	outi
	_UnrolledRowWrites:
	ret
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	exx
	out	(c), l
	out	(c), h
	add	hl, de
	exx
	outi
	outi
	_UnrolledColumnWrites:
	ret
	_Finalise:
;libs\GSLib.c:1725: }
	ret
;libs\PSGlib.c:70: void PSGStop (void) {
;	---------------------------------
; Function PSGStop
; ---------------------------------
_PSGStop::
;libs\PSGlib.c:74: if (PSGMusicStatus) {
	ld	a,(#_PSGMusicStatus + 0)
	or	a, a
	ret	Z
;libs\PSGlib.c:75: PSGPort=PSGLatch|PSGChannel0|PSGVolumeData|0x0F;   // latch channel 0, volume=0xF (silent)
	ld	a, #0x9f
	out	(_PSGPort), a
;libs\PSGlib.c:76: PSGPort=PSGLatch|PSGChannel1|PSGVolumeData|0x0F;   // latch channel 1, volume=0xF (silent)
	ld	a, #0xbf
	out	(_PSGPort), a
;libs\PSGlib.c:77: if (!PSGChannel2SFX)
	ld	a,(#_PSGChannel2SFX + 0)
	or	a, a
	jr	NZ, 00102$
;libs\PSGlib.c:78: PSGPort=PSGLatch|PSGChannel2|PSGVolumeData|0x0F;   // latch channel 2, volume=0xF (silent)
	ld	a, #0xdf
	out	(_PSGPort), a
00102$:
;libs\PSGlib.c:79: if (!PSGChannel3SFX)
	ld	a,(#_PSGChannel3SFX + 0)
	or	a, a
	jr	NZ, 00104$
;libs\PSGlib.c:80: PSGPort=PSGLatch|PSGChannel3|PSGVolumeData|0x0F;   // latch channel 3, volume=0xF (silent)
	ld	a, #0xff
	out	(_PSGPort), a
00104$:
;libs\PSGlib.c:81: PSGMusicStatus=PSG_STOPPED;
	ld	a, #0x00
	ld	(#_PSGMusicStatus), a
;libs\PSGlib.c:83: }
	ret
_GSL_LUTColumnUpdate:
	.dw #0xfecc
	.dw #0xfed7
	.dw #0xfee2
	.dw #0xfeed
	.dw #0xfef8
	.dw #0xff03
	.dw #0xff0e
	.dw #0xff19
	.dw #0xff24
	.dw #0xff2f
	.dw #0xff3a
	.dw #0xff45
	.dw #0xff50
	.dw #0xff5b
	.dw #0xff66
	.dw #0xff71
	.dw #0xff7c
	.dw #0xff87
	.dw #0xff92
	.dw #0xff9d
	.dw #0xffa8
	.dw #0xffb3
	.dw #0xffbe
	.dw #0xffc9
	.dw #0xffd4
	.dw #0xffdf
	.dw #0xffea
	.dw #0xfff5
	.dw #0x0000
	.dw #0xfff5
	.dw #0xffea
	.dw #0xffdf
	.dw #0xffd4
	.dw #0xffc9
	.dw #0xffbe
	.dw #0xffb3
	.dw #0xffa8
	.dw #0xff9d
	.dw #0xff92
	.dw #0xff87
	.dw #0xff7c
	.dw #0xff71
	.dw #0xff66
	.dw #0xff5b
	.dw #0xff50
	.dw #0xff45
	.dw #0xff3a
	.dw #0xff2f
	.dw #0xff24
	.dw #0xff19
	.dw #0xff0e
	.dw #0xff03
	.dw #0xfef8
	.dw #0xfeed
	.dw #0xfee2
	.dw #0xfed7
_GSL_LUTRowUpdate:
	.dw #0xff84
	.dw #0xff88
	.dw #0xff8c
	.dw #0xff90
	.dw #0xff94
	.dw #0xff98
	.dw #0xff9c
	.dw #0xffa0
	.dw #0xffa4
	.dw #0xffa8
	.dw #0xffac
	.dw #0xffb0
	.dw #0xffb4
	.dw #0xffb8
	.dw #0xffbc
	.dw #0xffc0
	.dw #0xffc4
	.dw #0xffc8
	.dw #0xffcc
	.dw #0xffd0
	.dw #0xffd4
	.dw #0xffd8
	.dw #0xffdc
	.dw #0xffe0
	.dw #0xffe4
	.dw #0xffe8
	.dw #0xffec
	.dw #0xfff0
	.dw #0xfff4
	.dw #0xfff8
	.dw #0xfffc
	.dw #0x0000
	.dw #0xfffc
	.dw #0xfff8
	.dw #0xfff4
	.dw #0xfff0
	.dw #0xffec
	.dw #0xffe8
	.dw #0xffe4
	.dw #0xffe0
	.dw #0xffdc
	.dw #0xffd8
	.dw #0xffd4
	.dw #0xffd0
	.dw #0xffcc
	.dw #0xffc8
	.dw #0xffc4
	.dw #0xffc0
	.dw #0xffbc
	.dw #0xffb8
	.dw #0xffb4
	.dw #0xffb0
	.dw #0xffac
	.dw #0xffa8
	.dw #0xffa4
	.dw #0xffa0
	.dw #0xff9c
	.dw #0xff98
	.dw #0xff94
	.dw #0xff90
	.dw #0xff8c
	.dw #0xff88
	.dw #0xff84
	.dw #0xff80
;libs\PSGlib.c:85: void PSGResume (void) {
;	---------------------------------
; Function PSGResume
; ---------------------------------
_PSGResume::
;libs\PSGlib.c:89: if (!PSGMusicStatus) {
	ld	a,(#_PSGMusicStatus + 0)
	or	a, a
	ret	NZ
;libs\PSGlib.c:90: PSGPort=PSGLatch|PSGChannel0|PSGVolumeData|PSGChan0Volume;   // restore channel 0 volume
	ld	a,(#_PSGChan0Volume + 0)
	or	a, #0x90
	out	(_PSGPort), a
;libs\PSGlib.c:91: PSGPort=PSGLatch|PSGChannel1|PSGVolumeData|PSGChan1Volume;   // restore channel 1 volume
	ld	a,(#_PSGChan1Volume + 0)
	or	a, #0xb0
	out	(_PSGPort), a
;libs\PSGlib.c:92: if (!PSGChannel2SFX) {
	ld	a,(#_PSGChannel2SFX + 0)
	or	a, a
	jr	NZ, 00102$
;libs\PSGlib.c:93: PSGPort=PSGLatch|PSGChannel2|(PSGChan2LowTone&0x0F);       // restore channel 2 frequency
	ld	a,(#_PSGChan2LowTone + 0)
	and	a, #0x0f
	or	a, #0xc0
	out	(_PSGPort), a
;libs\PSGlib.c:94: PSGPort=PSGChan2HighTone&0x3F;
	ld	a,(#_PSGChan2HighTone + 0)
	and	a, #0x3f
	out	(_PSGPort), a
;libs\PSGlib.c:95: PSGPort=PSGLatch|PSGChannel2|PSGVolumeData|PSGChan2Volume; // restore channel 2 volume
	ld	a,(#_PSGChan2Volume + 0)
	or	a, #0xd0
	out	(_PSGPort), a
00102$:
;libs\PSGlib.c:97: if (!PSGChannel3SFX) {
	ld	a,(#_PSGChannel3SFX + 0)
	or	a, a
	jr	NZ, 00104$
;libs\PSGlib.c:98: PSGPort=PSGLatch|PSGChannel3|(PSGChan3LowTone&0x0F);       // restore channel 3 frequency
	ld	a,(#_PSGChan3LowTone + 0)
	and	a, #0x0f
	or	a, #0xe0
	out	(_PSGPort), a
;libs\PSGlib.c:99: PSGPort=PSGLatch|PSGChannel3|PSGVolumeData|PSGChan3Volume; // restore channel 3 volume
	ld	a,(#_PSGChan3Volume + 0)
	or	a, #0xf0
	out	(_PSGPort), a
00104$:
;libs\PSGlib.c:101: PSGMusicStatus=PSG_PLAYING;
	ld	a, #0x01
	ld	(#_PSGMusicStatus), a
;libs\PSGlib.c:103: }
	ret
;libs\PSGlib.c:105: void PSGPlay (void *song) {
;	---------------------------------
; Function PSGPlay
; ---------------------------------
_PSGPlay::
;libs\PSGlib.c:109: PSGStop();
	call	_PSGStop
;libs\PSGlib.c:110: PSGLoopFlag=1;
	ld	iy, #_PSGLoopFlag
	ld	0 (iy), #0x01
;libs\PSGlib.c:111: PSGMusicStart=song;           // store the begin point of music
	pop	de
	pop	bc
	push	bc
	push	de
	ld	(_PSGMusicStart), bc
;libs\PSGlib.c:112: PSGMusicPointer=song;         // set music pointer to begin of music
	ld	(_PSGMusicPointer), bc
;libs\PSGlib.c:113: PSGMusicLoopPoint=song;       // looppointer points to begin too
	ld	(_PSGMusicLoopPoint), bc
;libs\PSGlib.c:115: PSGMusicSkipFrames=0;         // reset the skip frames
;libs\PSGlib.c:116: PSGMusicSubstringLen=0;       // reset the substring len (for compression)
	ld	a,#0x00
	ld	(#_PSGMusicSkipFrames),a
	ld	(#_PSGMusicSubstringLen), a
;libs\PSGlib.c:117: PSGMusicLastLatch=PSGLatch|PSGChannel0|PSGVolumeData|0x0F;   // latch channel 0, volume=0xF (silent)
	ld	a, #0x9f
	ld	(#_PSGMusicLastLatch), a
;libs\PSGlib.c:118: PSGMusicStatus=PSG_PLAYING;
	ld	a, #0x01
	ld	(#_PSGMusicStatus), a
;libs\PSGlib.c:119: }
	ret
;libs\PSGlib.c:121: void PSGCancelLoop (void) {
;	---------------------------------
; Function PSGCancelLoop
; ---------------------------------
_PSGCancelLoop::
;libs\PSGlib.c:125: PSGLoopFlag=0;
	ld	a, #0x00
	ld	(#_PSGLoopFlag), a
;libs\PSGlib.c:126: }
	ret
;libs\PSGlib.c:128: void PSGPlayNoRepeat (void *song) {
;	---------------------------------
; Function PSGPlayNoRepeat
; ---------------------------------
_PSGPlayNoRepeat::
;libs\PSGlib.c:132: PSGPlay(song);
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_PSGPlay
	pop	af
;libs\PSGlib.c:133: PSGLoopFlag=0;
	ld	a, #0x00
	ld	(#_PSGLoopFlag), a
;libs\PSGlib.c:134: }
	ret
;libs\PSGlib.c:136: unsigned char PSGGetStatus (void) {
;	---------------------------------
; Function PSGGetStatus
; ---------------------------------
_PSGGetStatus::
;libs\PSGlib.c:140: return(PSGMusicStatus);
	ld	a, (#_PSGMusicStatus + 0)
	ld	l, a
;libs\PSGlib.c:141: }
	ret
;libs\PSGlib.c:143: void PSGSilenceChannels (void) {
;	---------------------------------
; Function PSGSilenceChannels
; ---------------------------------
_PSGSilenceChannels::
;libs\PSGlib.c:147: PSGPort=PSGLatch|PSGChannel0|PSGVolumeData|0x0F;
	ld	a, #0x9f
	out	(_PSGPort), a
;libs\PSGlib.c:148: PSGPort=PSGLatch|PSGChannel1|PSGVolumeData|0x0F;
	ld	a, #0xbf
	out	(_PSGPort), a
;libs\PSGlib.c:149: PSGPort=PSGLatch|PSGChannel2|PSGVolumeData|0x0F;
	ld	a, #0xdf
	out	(_PSGPort), a
;libs\PSGlib.c:150: PSGPort=PSGLatch|PSGChannel3|PSGVolumeData|0x0F;
	ld	a, #0xff
	out	(_PSGPort), a
;libs\PSGlib.c:151: }
	ret
;libs\PSGlib.c:153: void PSGRestoreVolumes (void) {
;	---------------------------------
; Function PSGRestoreVolumes
; ---------------------------------
_PSGRestoreVolumes::
;libs\PSGlib.c:158: PSGPort=PSGLatch|PSGChannel0|PSGVolumeData|((PSGChan0Volume+PSGMusicVolumeAttenuation>15)?15:PSGChan0Volume+PSGMusicVolumeAttenuation);
	ld	a, (#_PSGMusicVolumeAttenuation + 0)
	ld	c, a
	ld	b, #0x00
;libs\PSGlib.c:157: if (PSGMusicStatus) {
	ld	a,(#_PSGMusicStatus + 0)
	or	a, a
	jr	Z, 00102$
;libs\PSGlib.c:158: PSGPort=PSGLatch|PSGChannel0|PSGVolumeData|((PSGChan0Volume+PSGMusicVolumeAttenuation>15)?15:PSGChan0Volume+PSGMusicVolumeAttenuation);
	ld	a, (#_PSGChan0Volume + 0)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, #0x0f
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00168$
	xor	a, #0x80
00168$:
	jp	P, 00115$
	ld	de, #0x000f
	jr	00116$
00115$:
	ld	hl, #_PSGMusicVolumeAttenuation
	ld	a,(#_PSGChan0Volume + 0)
	add	a, (hl)
	ld	e, a
00116$:
	ld	a, e
	or	a, #0x90
	out	(_PSGPort), a
;libs\PSGlib.c:159: PSGPort=PSGLatch|PSGChannel1|PSGVolumeData|((PSGChan1Volume+PSGMusicVolumeAttenuation>15)?15:PSGChan1Volume+PSGMusicVolumeAttenuation);
	ld	a, (#_PSGChan1Volume + 0)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, #0x0f
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00169$
	xor	a, #0x80
00169$:
	jp	P, 00117$
	ld	de, #0x000f
	jr	00118$
00117$:
	ld	hl, #_PSGMusicVolumeAttenuation
	ld	a,(#_PSGChan1Volume + 0)
	add	a, (hl)
	ld	e, a
00118$:
	ld	a, e
	or	a, #0xb0
	out	(_PSGPort), a
00102$:
;libs\PSGlib.c:161: if (PSGChannel2SFX)
	ld	a,(#_PSGChannel2SFX + 0)
	or	a, a
	jr	Z, 00106$
;libs\PSGlib.c:162: PSGPort=PSGLatch|PSGChannel2|PSGVolumeData|PSGSFXChan2Volume;
	ld	a,(#_PSGSFXChan2Volume + 0)
	or	a, #0xd0
	out	(_PSGPort), a
	jr	00107$
00106$:
;libs\PSGlib.c:163: else if (PSGMusicStatus)
	ld	a,(#_PSGMusicStatus + 0)
	or	a, a
	jr	Z, 00107$
;libs\PSGlib.c:164: PSGPort=PSGLatch|PSGChannel2|PSGVolumeData|((PSGChan2Volume+PSGMusicVolumeAttenuation>15)?15:PSGChan2Volume+PSGMusicVolumeAttenuation);
	ld	a, (#_PSGChan2Volume + 0)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, #0x0f
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00170$
	xor	a, #0x80
00170$:
	jp	P, 00119$
	ld	de, #0x000f
	jr	00120$
00119$:
	ld	hl, #_PSGMusicVolumeAttenuation
	ld	a,(#_PSGChan2Volume + 0)
	add	a, (hl)
	ld	e, a
00120$:
	ld	a, e
	or	a, #0xd0
	out	(_PSGPort), a
00107$:
;libs\PSGlib.c:165: if (PSGChannel3SFX)
	ld	a,(#_PSGChannel3SFX + 0)
	or	a, a
	jr	Z, 00111$
;libs\PSGlib.c:166: PSGPort=PSGLatch|PSGChannel3|PSGVolumeData|PSGSFXChan3Volume;
	ld	a,(#_PSGSFXChan3Volume + 0)
	or	a, #0xf0
	out	(_PSGPort), a
	ret
00111$:
;libs\PSGlib.c:167: else if (PSGMusicStatus)
	ld	a,(#_PSGMusicStatus + 0)
	or	a, a
	ret	Z
;libs\PSGlib.c:168: PSGPort=PSGLatch|PSGChannel3|PSGVolumeData|((PSGChan3Volume+PSGMusicVolumeAttenuation>15)?15:PSGChan3Volume+PSGMusicVolumeAttenuation);
	ld	a, (#_PSGChan3Volume + 0)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, #0x0f
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00171$
	xor	a, #0x80
00171$:
	jp	P, 00121$
	ld	bc, #0x000f
	jr	00122$
00121$:
	ld	hl, #_PSGMusicVolumeAttenuation
	ld	a,(#_PSGChan3Volume + 0)
	add	a, (hl)
	ld	c, a
00122$:
	ld	a, c
	or	a, #0xf0
	out	(_PSGPort), a
;libs\PSGlib.c:169: }
	ret
;libs\PSGlib.c:171: void PSGSetMusicVolumeAttenuation (unsigned char attenuation) {
;	---------------------------------
; Function PSGSetMusicVolumeAttenuation
; ---------------------------------
_PSGSetMusicVolumeAttenuation::
	push	ix
	ld	ix,#0
	add	ix,sp
;libs\PSGlib.c:175: PSGMusicVolumeAttenuation=attenuation;
	ld	a, 4 (ix)
	ld	(#_PSGMusicVolumeAttenuation), a
;libs\PSGlib.c:176: if (PSGMusicStatus) {
	ld	a,(#_PSGMusicStatus + 0)
	or	a, a
	jp	Z, 00107$
;libs\PSGlib.c:177: PSGPort=PSGLatch|PSGChannel0|PSGVolumeData|((PSGChan0Volume+PSGMusicVolumeAttenuation>15)?15:PSGChan0Volume+PSGMusicVolumeAttenuation);
	ld	a,(#_PSGChan0Volume + 0)
	ld	e, #0x00
	ld	hl, #_PSGMusicVolumeAttenuation
	ld	c, (hl)
	ld	b, #0x00
	ld	l, a
	ld	h, e
	add	hl, bc
	ld	a, #0x0f
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00152$
	xor	a, #0x80
00152$:
	jp	P, 00109$
	ld	de, #0x000f
	jr	00110$
00109$:
	ld	hl, #_PSGMusicVolumeAttenuation
	ld	a,(#_PSGChan0Volume + 0)
	add	a, (hl)
	ld	e, a
00110$:
	ld	a, e
	or	a, #0x90
	out	(_PSGPort), a
;libs\PSGlib.c:178: PSGPort=PSGLatch|PSGChannel1|PSGVolumeData|((PSGChan1Volume+PSGMusicVolumeAttenuation>15)?15:PSGChan1Volume+PSGMusicVolumeAttenuation);
	ld	a, (#_PSGChan1Volume + 0)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, #0x0f
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00153$
	xor	a, #0x80
00153$:
	jp	P, 00111$
	ld	de, #0x000f
	jr	00112$
00111$:
	ld	hl, #_PSGMusicVolumeAttenuation
	ld	a,(#_PSGChan1Volume + 0)
	add	a, (hl)
	ld	e, a
00112$:
	ld	a, e
	or	a, #0xb0
	out	(_PSGPort), a
;libs\PSGlib.c:179: if (!PSGChannel2SFX)
	ld	a,(#_PSGChannel2SFX + 0)
	or	a, a
	jr	NZ, 00102$
;libs\PSGlib.c:180: PSGPort=PSGLatch|PSGChannel2|PSGVolumeData|((PSGChan2Volume+PSGMusicVolumeAttenuation>15)?15:PSGChan2Volume+PSGMusicVolumeAttenuation);
	ld	a, (#_PSGChan2Volume + 0)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, #0x0f
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00154$
	xor	a, #0x80
00154$:
	jp	P, 00113$
	ld	de, #0x000f
	jr	00114$
00113$:
	ld	hl, #_PSGMusicVolumeAttenuation
	ld	a,(#_PSGChan2Volume + 0)
	add	a, (hl)
	ld	e, a
00114$:
	ld	a, e
	or	a, #0xd0
	out	(_PSGPort), a
00102$:
;libs\PSGlib.c:181: if (!PSGChannel3SFX)
	ld	a,(#_PSGChannel3SFX + 0)
	or	a, a
	jr	NZ, 00107$
;libs\PSGlib.c:182: PSGPort=PSGLatch|PSGChannel3|PSGVolumeData|((PSGChan3Volume+PSGMusicVolumeAttenuation>15)?15:PSGChan3Volume+PSGMusicVolumeAttenuation);
	ld	a, (#_PSGChan3Volume + 0)
	ld	l, a
	ld	h, #0x00
	add	hl, bc
	ld	a, #0x0f
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00155$
	xor	a, #0x80
00155$:
	jp	P, 00115$
	ld	bc, #0x000f
	jr	00116$
00115$:
	ld	hl, #_PSGMusicVolumeAttenuation
	ld	a,(#_PSGChan3Volume + 0)
	add	a, (hl)
	ld	c, a
00116$:
	ld	a, c
	or	a, #0xf0
	out	(_PSGPort), a
00107$:
;libs\PSGlib.c:184: }
	pop	ix
	ret
;libs\PSGlib.c:186: void PSGSFXStop (void) {
;	---------------------------------
; Function PSGSFXStop
; ---------------------------------
_PSGSFXStop::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;libs\PSGlib.c:190: if (PSGSFXStatus) {
	ld	a,(#_PSGSFXStatus + 0)
	or	a, a
	jp	Z, 00113$
;libs\PSGlib.c:195: PSGPort=PSGLatch|PSGChannel2|PSGVolumeData|(((PSGChan2Volume&0x0F)+PSGMusicVolumeAttenuation>15)?15:(PSGChan2Volume&0x0F)+PSGMusicVolumeAttenuation);
	ld	iy, #_PSGMusicVolumeAttenuation
	ld	a, 0 (iy)
	ld	-2 (ix), a
	ld	-1 (ix), #0
	ld	c, 0 (iy)
;libs\PSGlib.c:191: if (PSGChannel2SFX) {
	ld	a,(#_PSGChannel2SFX + 0)
	or	a, a
	jr	Z, 00105$
;libs\PSGlib.c:192: if (PSGMusicStatus) {
	ld	a,(#_PSGMusicStatus + 0)
	or	a, a
	jr	Z, 00102$
;libs\PSGlib.c:193: PSGPort=PSGLatch|PSGChannel2|(PSGChan2LowTone&0x0F);
	ld	a,(#_PSGChan2LowTone + 0)
	and	a, #0x0f
	or	a, #0xc0
	out	(_PSGPort), a
;libs\PSGlib.c:194: PSGPort=PSGChan2HighTone&0x3F;
	ld	a,(#_PSGChan2HighTone + 0)
	and	a, #0x3f
	out	(_PSGPort), a
;libs\PSGlib.c:195: PSGPort=PSGLatch|PSGChannel2|PSGVolumeData|(((PSGChan2Volume&0x0F)+PSGMusicVolumeAttenuation>15)?15:(PSGChan2Volume&0x0F)+PSGMusicVolumeAttenuation);
	ld	a,(#_PSGChan2Volume + 0)
	and	a, #0x0f
	ld	e, a
	ld	d, #0x00
	pop	hl
	push	hl
	add	hl, de
	ld	a, #0x0f
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00154$
	xor	a, #0x80
00154$:
	jp	P, 00115$
	ld	de, #0x000f
	jr	00116$
00115$:
	ld	a,(#_PSGChan2Volume + 0)
	and	a, #0x0f
	add	a, c
	ld	e, a
	rla
00116$:
	ld	a, e
	or	a, #0xd0
	out	(_PSGPort), a
	jr	00103$
00102$:
;libs\PSGlib.c:197: PSGPort=PSGLatch|PSGChannel2|PSGVolumeData|0x0F;
	ld	a, #0xdf
	out	(_PSGPort), a
00103$:
;libs\PSGlib.c:199: PSGChannel2SFX=PSG_STOPPED;
	ld	a, #0x00
	ld	(#_PSGChannel2SFX), a
00105$:
;libs\PSGlib.c:202: if (PSGChannel3SFX) {
	ld	a,(#_PSGChannel3SFX + 0)
	or	a, a
	jr	Z, 00110$
;libs\PSGlib.c:203: if (PSGMusicStatus) {
	ld	a,(#_PSGMusicStatus + 0)
	or	a, a
	jr	Z, 00107$
;libs\PSGlib.c:204: PSGPort=PSGLatch|PSGChannel3|(PSGChan3LowTone&0x0F);
	ld	a,(#_PSGChan3LowTone + 0)
	and	a, #0x0f
	or	a, #0xe0
	out	(_PSGPort), a
;libs\PSGlib.c:205: PSGPort=PSGLatch|PSGChannel3|PSGVolumeData|(((PSGChan3Volume&0x0F)+PSGMusicVolumeAttenuation>15)?15:(PSGChan3Volume&0x0F)+PSGMusicVolumeAttenuation);
	ld	a,(#_PSGChan3Volume + 0)
	and	a, #0x0f
	ld	e, a
	ld	d, #0x00
	pop	hl
	push	hl
	add	hl, de
	ld	a, #0x0f
	cp	a, l
	ld	a, #0x00
	sbc	a, h
	jp	PO, 00155$
	xor	a, #0x80
00155$:
	jp	P, 00117$
	ld	bc, #0x000f
	jr	00118$
00117$:
	ld	a,(#_PSGChan3Volume + 0)
	and	a, #0x0f
	add	a, c
	ld	c, a
	rla
00118$:
	ld	a, c
	or	a, #0xf0
	out	(_PSGPort), a
	jr	00108$
00107$:
;libs\PSGlib.c:207: PSGPort=PSGLatch|PSGChannel3|PSGVolumeData|0x0F;
	ld	a, #0xff
	out	(_PSGPort), a
00108$:
;libs\PSGlib.c:209: PSGChannel3SFX=PSG_STOPPED;
	ld	a, #0x00
	ld	(#_PSGChannel3SFX), a
00110$:
;libs\PSGlib.c:211: PSGSFXStatus=PSG_STOPPED;
	ld	a, #0x00
	ld	(#_PSGSFXStatus), a
00113$:
;libs\PSGlib.c:213: }
	ld	sp, ix
	pop	ix
	ret
;libs\PSGlib.c:215: void PSGSFXPlay (void *sfx, unsigned char channels) {
;	---------------------------------
; Function PSGSFXPlay
; ---------------------------------
_PSGSFXPlay::
;libs\PSGlib.c:220: PSGSFXStop();
	call	_PSGSFXStop
;libs\PSGlib.c:221: PSGSFXLoopFlag=0;
	ld	iy, #_PSGSFXLoopFlag
	ld	0 (iy), #0x00
;libs\PSGlib.c:222: PSGSFXStart=sfx;              // store begin of SFX
	pop	de
	pop	bc
	push	bc
	push	de
	ld	(_PSGSFXStart), bc
;libs\PSGlib.c:223: PSGSFXPointer=sfx;            // set the pointer to begin of SFX
	ld	(_PSGSFXPointer), bc
;libs\PSGlib.c:224: PSGSFXLoopPoint=sfx;          // looppointer points to begin too
	ld	(_PSGSFXLoopPoint), bc
;libs\PSGlib.c:225: PSGSFXSkipFrames=0;           // reset the skip frames
;libs\PSGlib.c:226: PSGSFXSubstringLen=0;         // reset the substring len
	ld	a,#0x00
	ld	(#_PSGSFXSkipFrames),a
	ld	(#_PSGSFXSubstringLen), a
;libs\PSGlib.c:227: PSGChannel2SFX=(channels&SFX_CHANNEL2)?PSG_PLAYING:PSG_STOPPED;
	ld	iy, #4
	add	iy, sp
	ld	c, 0 (iy)
	bit	0, c
	jr	Z, 00103$
	ld	de, #0x0001
	jr	00104$
00103$:
	ld	de, #0x0000
00104$:
	ld	a, e
	ld	(#_PSGChannel2SFX), a
;libs\PSGlib.c:228: PSGChannel3SFX=(channels&SFX_CHANNEL3)?PSG_PLAYING:PSG_STOPPED;
	bit	1, c
	jr	Z, 00105$
	ld	bc, #0x0001
	jr	00106$
00105$:
	ld	bc, #0x0000
00106$:
	ld	a, c
	ld	(#_PSGChannel3SFX), a
;libs\PSGlib.c:229: PSGSFXStatus=PSG_PLAYING;
	ld	a, #0x01
	ld	(#_PSGSFXStatus), a
;libs\PSGlib.c:230: }
	ret
;libs\PSGlib.c:232: void PSGSFXCancelLoop (void) {
;	---------------------------------
; Function PSGSFXCancelLoop
; ---------------------------------
_PSGSFXCancelLoop::
;libs\PSGlib.c:236: PSGSFXLoopFlag=0;
	ld	a, #0x00
	ld	(#_PSGSFXLoopFlag), a
;libs\PSGlib.c:237: }
	ret
;libs\PSGlib.c:239: unsigned char PSGSFXGetStatus (void) {
;	---------------------------------
; Function PSGSFXGetStatus
; ---------------------------------
_PSGSFXGetStatus::
;libs\PSGlib.c:243: return(PSGSFXStatus);
	ld	a, (#_PSGSFXStatus + 0)
	ld	l, a
;libs\PSGlib.c:244: }
	ret
;libs\PSGlib.c:246: void PSGSFXPlayLoop (void *sfx, unsigned char channels) {
;	---------------------------------
; Function PSGSFXPlayLoop
; ---------------------------------
_PSGSFXPlayLoop::
;libs\PSGlib.c:251: PSGSFXPlay(sfx, channels);
	ld	iy, #4
	add	iy, sp
	ld	a, 0 (iy)
	push	af
	inc	sp
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_PSGSFXPlay
	pop	af
	inc	sp
;libs\PSGlib.c:252: PSGSFXLoopFlag=1;
	ld	a, #0x01
	ld	(#_PSGSFXLoopFlag), a
;libs\PSGlib.c:253: }
	ret
;libs\PSGlib.c:255: void PSGFrame (void) {
;	---------------------------------
; Function PSGFrame
; ---------------------------------
_PSGFrame::
;libs\PSGlib.c:450: __endasm;
	ld	a,(_PSGMusicStatus) ; check if we have got to play a tune
	or	a
	ret	z
	ld	a,(_PSGMusicSkipFrames) ; check if we have got to skip frames
	or	a
	jp	nz,_skipFrame
	ld	hl,(_PSGMusicPointer) ; read current address
	_intLoop:
	ld	b,(hl) ; load PSG byte (in B)
	inc	hl ; point to next byte
	ld	a,(_PSGMusicSubstringLen) ; read substring len
	or	a
	jr	z,_continue ; check if it is 0 (we are not in a substring)
	dec	a ; decrease len
	ld	(_PSGMusicSubstringLen),a ; save len
	jr	nz,_continue
	ld	hl,(_PSGMusicSubstringRetAddr) ; substring is over, retrieve return address
	_continue:
	ld	a,b ; copy PSG byte into A
	cp	#0x80 ; is it a latch?
	jr	c,_noLatch ; if < $80 then it is NOT a latch
	ld	(_PSGMusicLastLatch),a ; it is a latch - save it in "LastLatch"
;	we have got the latch PSG byte both in A and in B
;	and we have to check if the value should pass to PSG or not
	bit	4,a ; test if it is a volume
	jr	nz,_latch_Volume ; jump if volume data
	bit	6,a ; test if the latch it is for channels 0-1 or for 2-3
	jp	z,_send2PSG_A ; send data to PSG if it is for channels 0-1
;	we have got the latch (tone, chn 2 or 3) PSG byte both in A and in B
;	and we have to check if the value should be passed to PSG or not
	bit	5,a ; test if tone it is for channel 2 or 3
	jr	z,_ifchn2 ; jump if channel 2
	ld	(_PSGChan3LowTone),a ; save tone LOW data
	ld	a,(_PSGChannel3SFX) ; channel 3 free?
	or	a
	jp	nz,_intLoop
	ld	a,(_PSGChan3LowTone)
	and	#3 ; test if channel 3 is set to use the frequency of channel 2
	cp	#3
	jr	nz,_send2PSG_B ; if channel 3 does not use frequency of channel 2 jump
	ld	a,(_PSGSFXStatus) ; test if an SFX is playing
	or	a
	jr	z,_send2PSG_B ; if no SFX is playing jump
	ld	(_PSGChannel3SFX),a ; otherwise mark channel 3 as occupied
	ld	a,#0x80|#0b01100000|#0b00010000|#0x0F ; and silence channel 3
	out	(#0x7f),a
	jp	_intLoop
	_ifchn2:
	ld	(_PSGChan2LowTone),a ; save tone LOW data
	ld	a,(_PSGChannel2SFX) ; channel 2 free?
	or	a
	jr	z,_send2PSG_B
	jp	_intLoop
	_latch_Volume:
	bit	6,a ; test if the latch it is for channels 0-1 or for 2-3
	jr	nz,_latch_Volume_23 ; volume is for channel 2 or 3
	bit	5,a ; test if volume it is for channel 0 or 1
	jr	z,_chn0 ; jump for channel 0
	ld	(_PSGChan1Volume),a ; save volume data
	jp	_sendVolume2PSG_A
	_chn0:
	ld	(_PSGChan0Volume),a ; save volume data
	jp	_sendVolume2PSG_A
	_latch_Volume_23:
	bit	5,a ; test if volume it is for channel 2 or 3
	jr	z,_chn2 ; jump for channel 2
	ld	(_PSGChan3Volume),a ; save volume data
	ld	a,(_PSGChannel3SFX) ; channel 3 free?
	or	a
	jr	z,_sendVolume2PSG_B
	jp	_intLoop
	_chn2:
	ld	(_PSGChan2Volume),a ; save volume data
	ld	a,(_PSGChannel2SFX) ; channel 2 free?
	or	a
	jr	z,_sendVolume2PSG_B
	jp	_intLoop
	_skipFrame:
	dec	a
	ld	(_PSGMusicSkipFrames),a
	ret
	_noLatch:
	cp	#0x40
	jr	c,_command ; if < $40 then it is a command
;	it is a data
	ld	a,(_PSGMusicLastLatch) ; retrieve last latch
	jp	_output_NoLatch
	_command:
	cp	#0x38
	jr	z,_done ; no additional frames
	jr	c,_otherCommands ; other commands?
	and	#0x07 ; take only the last 3 bits for skip frames
	ld	(_PSGMusicSkipFrames),a ; we got additional frames
	_done:
	ld	(_PSGMusicPointer),hl ; save current address
	ret	; frame done
	_otherCommands:
	cp	#0x08
	jr	nc,_substring
	cp	#0x00
	jr	z,_musicLoop
	cp	#0x01
	jr	z,_setLoopPoint
;	***************************************************************************
;	we should never get here!
;	if we do, it means the PSG file is probably corrupted, so we just RET
;	***************************************************************************
	ret
	_send2PSG_B:
	ld	a,b
	_send2PSG_A:
	out	(#0x7f),a ; output the byte
	jp	_intLoop
	_sendVolume2PSG_B:
	ld	a,b
	_sendVolume2PSG_A:
	ld	c,a ; save the PSG command byte
	and	#0x0F ; keep lower nibble
	ld	b,a ; save value
	ld	a,(_PSGMusicVolumeAttenuation) ; load volume attenuation
	add	a,b ; add value
	cp	#0x0F ; check overflow
	jr	c,_no_overflow ; if it is <=15 then ok
	ld	a,#0x0F ; else, reset to 15
	_no_overflow:
	ld	b,a ; save new attenuated volume value
	ld	a,c ; retrieve PSG command
	and	#0xF0 ; keep upper nibble
	or	b ; set attenuated volume
	out	(#0x7f),a ; output the byte
	jp	_intLoop
	_output_NoLatch:
;	we got the last latch in A and the PSG data in B
;	and we have to check if the value should pass to PSG or not
;	note that non-latch commands can be only contain frequencies (no volumes)
;	for channels 0,1,2 only (no noise)
	bit	6,a ; test if the latch it is for channels 0-1 or for chn 2
	jr	nz,_high_part_Tone ; it is tone data for channel 2
	jp	_send2PSG_B ; otherwise, it is for chn 0 or 1 so we have done!
	_setLoopPoint:
	ld	(_PSGMusicLoopPoint),hl
	jp	_intLoop
	_musicLoop:
	ld	a,(_PSGLoopFlag) ; looping requested?
	or	a
	jp	z,_PSGStop ; No:stop it! (tail call optimization)
	ld	hl,(_PSGMusicLoopPoint)
	jp	_intLoop
	_substring:
	sub	#0x08 -4 ; len is value - $08 + 4
	ld	(_PSGMusicSubstringLen),a ; save len
	ld	c,(hl) ; load substring address (offset)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	(_PSGMusicSubstringRetAddr),hl ; save return address
	ld	hl,(_PSGMusicStart)
	add	hl,bc ; make substring current
	jp	_intLoop
	_high_part_Tone:
;	we got the last latch in A and the PSG data in B
;	and we have to check if the value should pass to PSG or not
;	PSG data can only be for channel 2, here
	ld	a,b ; move PSG data in A
	ld	(_PSGChan2HighTone),a ; save channel 2 tone HIGH data
	ld	a,(_PSGChannel2SFX) ; channel 2 free?
	or	a
	jr	z,_send2PSG_B
	jp	_intLoop
;libs\PSGlib.c:451: }
	ret
;libs\PSGlib.c:453: void PSGSFXFrame (void) {
;	---------------------------------
; Function PSGSFXFrame
; ---------------------------------
_PSGSFXFrame::
;libs\PSGlib.c:550: __endasm;
	ld	a,(_PSGSFXStatus) ; check if we have got to play SFX
	or	a
	ret	z
	ld	a,(_PSGSFXSkipFrames) ; check if we have got to skip frames
	or	a
	jp	nz,_skipSFXFrame
	ld	hl,(_PSGSFXPointer) ; read current SFX address
	_intSFXLoop:
	ld	b,(hl) ; load a byte in B, temporary
	inc	hl ; point to next byte
	ld	a,(_PSGSFXSubstringLen) ; read substring len
	or	a ; check if it is 0 (we are not in a substring)
	jr	z,_SFXcontinue
	dec	a ; decrease len
	ld	(_PSGSFXSubstringLen),a ; save len
	jr	nz,_SFXcontinue
	ld	hl,(_PSGSFXSubstringRetAddr) ; substring over, retrieve return address
	_SFXcontinue:
	ld	a,b ; restore byte
	cp	#0x40
	jp	c,_SFXcommand ; if less than $40 then it is a command
	bit	4,a ; check if it is a volume byte
	jr	z,_SFXoutbyte ; if not, output it
	bit	5,a ; check if it is volume for channel 2 or channel 3
	jr	nz,_SFXvolumechn3
	ld	(_PSGSFXChan2Volume),a
	jr	_SFXoutbyte
	_SFXvolumechn3:
	ld	(_PSGSFXChan3Volume),a
	_SFXoutbyte:
	out	(#0x7f),a ; output the byte
	jp	_intSFXLoop
	_skipSFXFrame:
	dec	a
	ld	(_PSGSFXSkipFrames),a
	ret
	_SFXcommand:
	cp	#0x38
	jr	z,_SFXdone ; no additional frames
	jr	c,_SFXotherCommands ; other commands?
	and	#0x07 ; take only the last 3 bits for skip frames
	ld	(_PSGSFXSkipFrames),a ; we got additional frames to skip
	_SFXdone:
	ld	(_PSGSFXPointer),hl ; save current address
	ret	; frame done
	_SFXotherCommands:
	cp	#0x08
	jr	nc,_SFXsubstring
	cp	#0x00
	jr	z,_sfxLoop
	cp	#0x01
	jr	z,_SFXsetLoopPoint
;	***************************************************************************
;	we should never get here!
;	if we do, it means the PSG SFX file is probably corrupted, so we just RET
;	***************************************************************************
	ret
	_SFXsetLoopPoint:
	ld	(_PSGSFXLoopPoint),hl
	jp	_intSFXLoop
	_sfxLoop:
	ld	a,(_PSGSFXLoopFlag) ; is it a looping SFX?
	or	a
	jp	z,_PSGSFXStop ; No:stop it! (tail call optimization)
	ld	hl,(_PSGSFXLoopPoint)
	ld	(_PSGSFXPointer),hl
	jp	_intSFXLoop
	_SFXsubstring:
	sub	#0x08 -4 ; len is value - $08 + 4
	ld	(_PSGSFXSubstringLen),a ; save len
	ld	c,(hl) ; load substring address (offset)
	inc	hl
	ld	b,(hl)
	inc	hl
	ld	(_PSGSFXSubstringRetAddr),hl ; save return address
	ld	hl,(_PSGSFXStart)
	add	hl,bc ; make substring current
	jp	_intSFXLoop
;libs\PSGlib.c:551: }
	ret
;main.c:68: void main(void) 
;	---------------------------------
; Function main
; ---------------------------------
_main::
;main.c:73: SMS_VRAMmemset(0x4000, 0x00, 0x4000);
	ld	hl, #0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	l, #0x00
	push	hl
	call	_SMS_VRAMmemset
	pop	af
;main.c:74: SMS_VRAMmemset(0xC000, 0x00, 0x0020);
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
	pop	af
	inc	sp
;main.c:75: SMS_loadTiles(&tiles_bin, 0, tiles_bin_size);
	ld	hl, #0x0b00
	push	hl
	ld	h, l
	push	hl
	ld	hl, #_tiles_bin
	push	hl
	call	_SMS_loadTiles
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;main.c:76: SMS_loadBGPalette(&palette_bin);
	ld	hl, #_palette_bin
	call	_SMS_loadBGPalette
;main.c:77: SMS_loadTiles(&sprite_tiles_bin, 256, sprite_tiles_bin_size);
	ld	hl, #0x1800
	push	hl
	ld	h, #0x01
	push	hl
	ld	hl, #_sprite_tiles_bin
	push	hl
	call	_SMS_loadTiles
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
;main.c:78: SMS_loadSpritePalette(&sprite_palette_bin);
	ld	hl, #_sprite_palette_bin
	call	_SMS_loadSpritePalette
;main.c:85: for (int i = 0; i < scrolltable_bin_size; i++) scrolltable[i] = *(scrolltable_bin + i);
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
;main.c:88: GSL_initializeMap(&scrolltable, &metatiles_bin);
	ld	hl, #_metatiles_bin
	push	hl
	ld	hl, #_scrolltable
	push	hl
	call	_GSL_initializeMap
	pop	af
	pop	af
;main.c:89: GSL_positionWindow(768,832);
	ld	hl, #0x0340
	push	hl
	ld	l, #0x00
	push	hl
	call	_GSL_positionWindow
	pop	af
	pop	af
;main.c:90: GSL_refreshVDP();
	call	_GSL_refreshVDP
;main.c:92: SMS_VDPturnOnFeature(VDPFEATURE_HIDEFIRSTCOL);
	ld	hl, #0x0020
	call	_SMS_VDPturnOnFeature
;main.c:93: SMS_displayOn();
	ld	hl, #0x0140
	call	_SMS_VDPturnOnFeature
;main.c:95: PSGPlay(&village_psg);
	ld	hl, #_village_psg
	push	hl
	call	_PSGPlay
	pop	af
;main.c:97: playerX = 904;
	ld	hl, #0x0388
	ld	(_playerX), hl
;main.c:98: playerY = 928;
	ld	l, #0xa0
	ld	(_playerY), hl
;main.c:99: playerSpriteX = 136;
	ld	hl, #_playerSpriteX
	ld	(hl), #0x88
;main.c:100: playerSpriteY = 96;
	ld	hl, #_playerSpriteY
	ld	(hl), #0x60
;main.c:101: actionCount = 0;
	ld	hl, #_actionCount
	ld	(hl), #0x00
00115$:
;main.c:106: playerMetatile = *(GSL_metatileLookup(playerX, playerY)); 
	ld	hl, (_playerY)
	push	hl
	ld	hl, (_playerX)
	push	hl
	call	_GSL_metatileLookup
	pop	af
	pop	af
	ld	a, (hl)
;main.c:107: if (playerMetatile == METATILE_DUNGEON_ENTRANCE) break;
	sub	a, #0x20
	jp	Z,00110$
;main.c:109: SMS_initSprites(); 
	call	_SMS_initSprites
;main.c:110: ks = SMS_getKeysStatus(); 
	call	_SMS_getKeysStatus
;main.c:111: if (!(ks & PORT_A_KEY_2)) actionButtonWatch = 0;
	bit	5, l
	jr	NZ, 00105$
	ld	hl, #_actionButtonWatch
	ld	(hl), #0x00
00105$:
;main.c:116: if (actionCount == 0) processUserInput();
	ld	a,(#_actionCount + 0)
	or	a, a
	jr	NZ, 00107$
	call	_processUserInput
00107$:
;main.c:117: if (actionCount != 0) actionCount--;
	ld	iy, #_actionCount
	ld	a, 0 (iy)
	or	a, a
	jr	Z, 00109$
	dec	0 (iy)
00109$:
;main.c:119: playerX += playerXOffset;
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
;main.c:120: playerY += playerYOffset;
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
;main.c:121: playerSpriteX += spriteXOffset;
	ld	hl, #_playerSpriteX
	ld	a, (hl)
	ld	iy, #_spriteXOffset
	add	a, 0 (iy)
	ld	(hl), a
;main.c:122: playerSpriteY += spriteYOffset;
	ld	hl, #_playerSpriteY
	ld	a, (hl)
	ld	iy, #_spriteYOffset
	add	a, 0 (iy)
	ld	(hl), a
;main.c:123: GSL_scroll(scrollXOffset,scrollYOffset); // << GSL_scroll with offsets to scroll map.
	ld	a,(#_scrollYOffset + 0)
	push	af
	inc	sp
	ld	a,(#_scrollXOffset + 0)
	push	af
	inc	sp
	call	_GSL_scroll
	pop	af
;main.c:125: processSpritesActiveDisplay();
	call	_processSpritesActiveDisplay
;main.c:127: SMS_waitForVBlank(); 
	call	_SMS_waitForVBlank
;main.c:128: GSL_VBlank();  // <<< Call GSL_VBlank to process any pending scroll / metatile updates.
	call	_GSL_VBlank
;main.c:129: processSpritesVBlank();
	call	_processSpritesVBlank
;main.c:130: PSGFrame();
	call	_PSGFrame
	jp	00115$
00110$:
;main.c:133: SMS_displayOff();
	ld	hl, #0x0140
	call	_SMS_VDPturnOffFeature
;main.c:135: }
	jp	00122$
;main.c:139: void processSpritesActiveDisplay()
;	---------------------------------
; Function processSpritesActiveDisplay
; ---------------------------------
_processSpritesActiveDisplay::
;main.c:142: SMS_addSprite(playerSpriteX + 0xF8, playerSpriteY + 0xF8, 0);
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
;main.c:143: SMS_addSprite(playerSpriteX + 0x00, playerSpriteY + 0xF8, 1);
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
;main.c:144: SMS_addSprite(playerSpriteX + 0xF8, playerSpriteY + 0x00, 2);
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
;main.c:145: SMS_addSprite(playerSpriteX + 0x00, playerSpriteY + 0x00, 3);
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
;main.c:149: if (action == ACTION_ATTACK)
	ld	a,(#_action + 0)
	dec	a
	ret	NZ
;main.c:152: if (actionCount == 5) checkForAttackInteraction();
	ld	a,(#_actionCount + 0)
	sub	a, #0x05
	jr	NZ, 00102$
	call	_checkForAttackInteraction
00102$:
;main.c:154: currentAttackSprites = attackSprites + ((actionCount & 14) << 3);
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
;main.c:155: SMS_addSprite(playerSpriteX + *(currentAttackSprites + 0), playerSpriteY + *(currentAttackSprites + 1), *(currentAttackSprites + 2));
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
;main.c:156: SMS_addSprite(playerSpriteX + *(currentAttackSprites + 3), playerSpriteY + *(currentAttackSprites + 4), *(currentAttackSprites + 5));
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
;main.c:157: SMS_addSprite(playerSpriteX + *(currentAttackSprites + 6), playerSpriteY + *(currentAttackSprites + 7), *(currentAttackSprites + 8));
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
;main.c:158: SMS_addSprite(playerSpriteX + *(currentAttackSprites + 9), playerSpriteY + *(currentAttackSprites + 10), *(currentAttackSprites + 11));
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
;main.c:160: }
	ret
;main.c:163: void processSpritesVBlank()
;	---------------------------------
; Function processSpritesVBlank
; ---------------------------------
_processSpritesVBlank::
;main.c:166: UNSAFE_SMS_copySpritestoSAT();
	call	_UNSAFE_SMS_copySpritestoSAT
;main.c:169: if (action == ACTION_ATTACK) 
	ld	a,(#_action + 0)
	dec	a
	jr	NZ, 00102$
;main.c:171: UNSAFE_SMS_load4Tiles(sprite_tiles_bin + *(spriteTileOffsets + ((actionCount & 14) >> 1)), 256);
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
;main.c:172: UNSAFE_SMS_load4Tiles(128 + sprite_tiles_bin + *(spriteTileOffsets + ((actionCount & 14) >> 1)), 260);
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
;main.c:176: else UNSAFE_SMS_load4Tiles(sprite_tiles_bin + *(spriteTileOffsets + animationCount), 256);
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
;main.c:177: }
	ret
;main.c:182: void processUserInput()
;	---------------------------------
; Function processUserInput
; ---------------------------------
_processUserInput::
;main.c:184: unsigned int ks = SMS_getKeysStatus(); 
	call	_SMS_getKeysStatus
	ex	de, hl
;main.c:187: action = ACTION_STATIONARY;
	ld	hl, #_action
	ld	(hl), #0x02
;main.c:188: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:189: scrollYOffset = 0;
	ld	hl, #_scrollYOffset
	ld	(hl), #0x00
;main.c:190: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:191: playerYOffset = 0;
	ld	l, h
	ld	(_playerYOffset), hl
;main.c:192: spriteXOffset = 0;
;main.c:193: spriteYOffset = 0;
	ld	a,#0x00
	ld	(#_spriteXOffset),a
	ld	(#_spriteYOffset), a
;main.c:195: if (actionButtonWatch == 0 && (ks & PORT_A_KEY_2))
	ld	iy, #_actionButtonWatch
	ld	a, 0 (iy)
	or	a, a
	jr	NZ, 00113$
	bit	5, e
;main.c:197: processAttackKey();
;main.c:198: return;
	jp	NZ,_processAttackKey
00113$:
;main.c:200: else if (ks & PORT_A_KEY_UP)
	bit	0, e
;main.c:202: processUpKey();
;main.c:203: return;
	jp	NZ,_processUpKey
;main.c:206: else if (ks & PORT_A_KEY_DOWN)
	bit	1, e
;main.c:208: processDownKey();
;main.c:209: return;
	jp	NZ,_processDownKey
;main.c:212: else if (ks & PORT_A_KEY_LEFT)
	bit	2, e
;main.c:214: processLeftKey();
;main.c:215: return;
	jp	NZ,_processLeftKey
;main.c:218: else if (ks & PORT_A_KEY_RIGHT)
	bit	3, e
;main.c:220: processRightKey();
;main.c:221: return;
	jp	NZ,_processRightKey
;main.c:223: }
	ret
;main.c:226: void processUpKey()
;	---------------------------------
; Function processUpKey
; ---------------------------------
_processUpKey::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
;main.c:230: unsigned char topLeftMetatile = *(GSL_metatileLookup(playerX - 8, playerY - 1));
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
;main.c:231: unsigned char topRightMetatile = *(GSL_metatileLookup(playerX + 7, playerY - 1));
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
;main.c:239: animationCount = (animationCount - 1) & 3;
	ld	a,(#_animationCount + 0)
	dec	a
	and	a, #0x03
	ld	-1 (ix), a
;main.c:234: if (playerY == 8 || ((metatilesMetaLUT[topLeftMetatile] & 1) == 0 && (metatilesMetaLUT[topRightMetatile] & 1)  == 0))
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
;main.c:237: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:238: direction = DIRECTION_UP;
	ld	hl, #_direction
	ld	(hl), #0x00
;main.c:239: animationCount = (animationCount - 1) & 3;
	ld	a, -1 (ix)
	ld	(#_animationCount),a
;main.c:240: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:241: spriteTileOffsets = spriteMoveUp;
	ld	hl, #_spriteMoveUp+0
	ld	(_spriteTileOffsets), hl
;main.c:243: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:244: scrollYOffset = 0;
	ld	hl, #_scrollYOffset
	ld	(hl), #0x00
;main.c:245: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:246: playerYOffset = 0;
	ld	l, h
	ld	(_playerYOffset), hl
;main.c:247: spriteXOffset = 0;
;main.c:248: spriteYOffset = 0;
	ld	a,#0x00
	ld	(#_spriteXOffset),a
	ld	(#_spriteYOffset), a
;main.c:250: return;
	jp	00115$
00102$:
;main.c:255: if ((metatilesMetaLUT[topLeftMetatile] & 1) == 1 && (metatilesMetaLUT[topRightMetatile] & 1)  == 0)
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
;main.c:257: processLeftKey();
	call	_processLeftKey
;main.c:258: return;
	jp	00115$
00106$:
;main.c:260: if ((metatilesMetaLUT[topLeftMetatile] & 1) == 0 && (metatilesMetaLUT[topRightMetatile] & 1)  == 1)
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
;main.c:262: processRightKey();
	call	_processRightKey
;main.c:263: return;
	jr	00115$
00109$:
;main.c:267: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:268: direction = DIRECTION_UP;
	ld	hl, #_direction
	ld	(hl), #0x00
;main.c:269: animationCount = (animationCount - 1) & 3;
	ld	a, -1 (ix)
	ld	(#_animationCount),a
;main.c:270: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:271: spriteTileOffsets = spriteMoveUp;
	ld	hl, #_spriteMoveUp+0
	ld	(_spriteTileOffsets), hl
;main.c:273: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:274: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:275: spriteXOffset = 0;
	ld	hl, #_spriteXOffset
	ld	(hl), #0x00
;main.c:276: playerYOffset = 0xFFFE;
	ld	hl, #0xfffe
	ld	(_playerYOffset), hl
;main.c:280: if (playerY <= 96 || playerY > GSL_getMapHeightInPixels() - 96)
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
;main.c:282: spriteYOffset = 0xFE;
	ld	a, #0xfe
	ld	(#_spriteYOffset), a
;main.c:283: scrollYOffset = 0;
	ld	a, #0x00
	ld	(#_scrollYOffset), a
	jr	00115$
00112$:
;main.c:287: spriteYOffset = 0;
	ld	a, #0x00
	ld	(#_spriteYOffset), a
;main.c:288: scrollYOffset = 0xFE;
	ld	a, #0xfe
	ld	(#_scrollYOffset), a
00115$:
;main.c:290: }
	ld	sp, ix
	pop	ix
	ret
;main.c:293: void processDownKey()
;	---------------------------------
; Function processDownKey
; ---------------------------------
_processDownKey::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
;main.c:297: unsigned char bottomLeftMetatile = *(GSL_metatileLookup(playerX - 8, playerY + 8));
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
;main.c:298: unsigned char bottomRightMetatile = *(GSL_metatileLookup(playerX + 7, playerY + 8));
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
;main.c:301: if (playerY == GSL_getMapHeightInPixels() - 8 || ((metatilesMetaLUT[bottomLeftMetatile] & 1) == 0 && (metatilesMetaLUT[bottomRightMetatile] & 1) == 0))
	call	_GSL_getMapHeightInPixels
	ld	bc, #0xfff8
	add	hl,bc
	ld	c, l
	ld	b, h
;main.c:306: animationCount = (animationCount - 1) & 3;
	ld	a,(#_animationCount + 0)
	dec	a
	and	a, #0x03
	ld	-1 (ix), a
;main.c:301: if (playerY == GSL_getMapHeightInPixels() - 8 || ((metatilesMetaLUT[bottomLeftMetatile] & 1) == 0 && (metatilesMetaLUT[bottomRightMetatile] & 1) == 0))
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
;main.c:304: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:305: direction = DIRECTION_DOWN;
	ld	hl, #_direction
	ld	(hl), #0x01
;main.c:306: animationCount = (animationCount - 1) & 3;
	ld	a, -1 (ix)
	ld	(#_animationCount),a
;main.c:307: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:308: spriteTileOffsets = spriteMoveDown;
	ld	hl, #_spriteMoveDown+0
	ld	(_spriteTileOffsets), hl
;main.c:310: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:311: scrollYOffset = 0;
	ld	hl, #_scrollYOffset
	ld	(hl), #0x00
;main.c:312: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:313: playerYOffset = 0;
	ld	l, h
	ld	(_playerYOffset), hl
;main.c:314: spriteXOffset = 0;
;main.c:315: spriteYOffset = 0;
	ld	a,#0x00
	ld	(#_spriteXOffset),a
	ld	(#_spriteYOffset), a
;main.c:317: return;
	jp	00115$
00102$:
;main.c:322: if ((metatilesMetaLUT[bottomLeftMetatile] & 1) == 1 && (metatilesMetaLUT[bottomRightMetatile] & 1) == 0)
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
;main.c:324: processLeftKey();
	call	_processLeftKey
;main.c:325: return;
	jp	00115$
00106$:
;main.c:327: if ((metatilesMetaLUT[bottomLeftMetatile] & 1) == 0 && (metatilesMetaLUT[bottomRightMetatile] & 1) == 1)
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
;main.c:329: processRightKey();
	call	_processRightKey
;main.c:330: return;
	jr	00115$
00109$:
;main.c:334: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:335: direction = DIRECTION_DOWN;
	ld	hl, #_direction
	ld	(hl), #0x01
;main.c:336: animationCount = (animationCount - 1) & 3;
	ld	a, -1 (ix)
	ld	(#_animationCount),a
;main.c:337: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:338: spriteTileOffsets = spriteMoveDown;
	ld	hl, #_spriteMoveDown+0
	ld	(_spriteTileOffsets), hl
;main.c:340: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:341: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:342: spriteXOffset = 0;
	ld	iy, #_spriteXOffset
	ld	0 (iy), #0x00
;main.c:343: playerYOffset = 2;
	ld	l, #0x02
	ld	(_playerYOffset), hl
;main.c:347: if (playerY < 96 || playerY >= GSL_getMapHeightInPixels() - 96)
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
;main.c:349: spriteYOffset = 2;
	ld	a, #0x02
	ld	(#_spriteYOffset), a
;main.c:350: scrollYOffset = 0;
	ld	a, #0x00
	ld	(#_scrollYOffset), a
	jr	00115$
00112$:
;main.c:354: spriteYOffset = 0;
	ld	a, #0x00
	ld	(#_spriteYOffset), a
;main.c:355: scrollYOffset = 2;
	ld	a, #0x02
	ld	(#_scrollYOffset), a
00115$:
;main.c:357: }
	ld	sp, ix
	pop	ix
	ret
;main.c:360: void processLeftKey()
;	---------------------------------
; Function processLeftKey
; ---------------------------------
_processLeftKey::
;main.c:364: unsigned char lowerLeftMetatile = *(GSL_metatileLookup(playerX - 9, playerY));
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
;main.c:372: animationCount = (animationCount - 1) & 3;
	ld	a,(#_animationCount + 0)
	dec	a
	and	a, #0x03
	ld	e, a
;main.c:367: if (playerX == 16 || (metatilesMetaLUT[lowerLeftMetatile] & 1) == 0)
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
;main.c:370: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:371: direction = DIRECTION_LEFT;
	ld	hl, #_direction
	ld	(hl), #0x02
;main.c:372: animationCount = (animationCount - 1) & 3;
	ld	hl, #_animationCount
	ld	(hl), e
;main.c:373: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:374: spriteTileOffsets = spriteMoveLeft;
	ld	hl, #_spriteMoveLeft+0
	ld	(_spriteTileOffsets), hl
;main.c:376: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:377: scrollYOffset = 0;
	ld	hl, #_scrollYOffset
	ld	(hl), #0x00
;main.c:378: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:379: playerYOffset = 0;
	ld	l, h
	ld	(_playerYOffset), hl
;main.c:380: spriteXOffset = 0;
;main.c:381: spriteYOffset = 0;
	ld	a,#0x00
	ld	(#_spriteXOffset),a
	ld	(#_spriteYOffset), a
;main.c:383: return;
	ret
00102$:
;main.c:387: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:388: direction = DIRECTION_LEFT;
	ld	hl, #_direction
	ld	(hl), #0x02
;main.c:389: animationCount = (animationCount - 1) & 3;
	ld	hl, #_animationCount
	ld	(hl), e
;main.c:390: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:391: spriteTileOffsets = spriteMoveLeft;
	ld	hl, #_spriteMoveLeft+0
	ld	(_spriteTileOffsets), hl
;main.c:393: playerXOffset = 0xFFFE;
	ld	hl, #0xfffe
	ld	(_playerXOffset), hl
;main.c:394: scrollYOffset = 0;
	ld	hl, #_scrollYOffset
	ld	(hl), #0x00
;main.c:395: playerYOffset = 0;
	ld	hl, #0x0000
	ld	(_playerYOffset), hl
;main.c:396: spriteYOffset = 0;
	ld	a, #0x00
	ld	(#_spriteYOffset), a
;main.c:400: if (playerX <= 136 || playerX > GSL_getMapWidthInPixels() - 120)
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
;main.c:402: spriteXOffset = 0xFE;
	ld	a, #0xfe
	ld	(#_spriteXOffset), a
;main.c:403: scrollXOffset = 0;
	ld	a, #0x00
	ld	(#_scrollXOffset), a
	ret
00105$:
;main.c:407: spriteXOffset = 0;
	ld	a, #0x00
	ld	(#_spriteXOffset), a
;main.c:408: scrollXOffset = 0xFE;
	ld	a, #0xfe
	ld	(#_scrollXOffset), a
;main.c:410: }
	ret
;main.c:414: void processRightKey()
;	---------------------------------
; Function processRightKey
; ---------------------------------
_processRightKey::
;main.c:418: unsigned char lowerRightMetatile = *(GSL_metatileLookup(playerX + 8, playerY));
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
;main.c:421: if (playerX == GSL_getMapWidthInPixels() - 8 || (metatilesMetaLUT[lowerRightMetatile] & 1) == 0)
	push	bc
	call	_GSL_getMapWidthInPixels
	pop	bc
	ld	de, #0xfff8
	add	hl, de
	ex	de,hl
;main.c:426: animationCount = (animationCount - 1) & 3;
	ld	a,(#_animationCount + 0)
	dec	a
	and	a, #0x03
	ld	b, a
;main.c:421: if (playerX == GSL_getMapWidthInPixels() - 8 || (metatilesMetaLUT[lowerRightMetatile] & 1) == 0)
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
;main.c:424: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:425: direction = DIRECTION_RIGHT;
	ld	hl, #_direction
	ld	(hl), #0x03
;main.c:426: animationCount = (animationCount - 1) & 3;
	ld	hl, #_animationCount
	ld	(hl), b
;main.c:427: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:428: spriteTileOffsets = spriteMoveRight;
	ld	hl, #_spriteMoveRight+0
	ld	(_spriteTileOffsets), hl
;main.c:430: scrollXOffset = 0;
	ld	hl, #_scrollXOffset
	ld	(hl), #0x00
;main.c:431: scrollYOffset = 0;
	ld	hl, #_scrollYOffset
	ld	(hl), #0x00
;main.c:432: playerXOffset = 0;
	ld	hl, #0x0000
	ld	(_playerXOffset), hl
;main.c:433: playerYOffset = 0;
	ld	l, h
	ld	(_playerYOffset), hl
;main.c:434: spriteXOffset = 0;
;main.c:435: spriteYOffset = 0;
	ld	a,#0x00
	ld	(#_spriteXOffset),a
	ld	(#_spriteYOffset), a
;main.c:437: return;
	ret
00102$:
;main.c:441: action = ACTION_MOVE;
	ld	hl, #_action
	ld	(hl), #0x00
;main.c:442: direction = DIRECTION_RIGHT;
	ld	hl, #_direction
	ld	(hl), #0x03
;main.c:443: animationCount = (animationCount - 1) & 3;
	ld	hl, #_animationCount
	ld	(hl), b
;main.c:444: actionCount = 4;
	ld	hl, #_actionCount
	ld	(hl), #0x04
;main.c:445: spriteTileOffsets = spriteMoveRight;
	ld	hl, #_spriteMoveRight+0
	ld	(_spriteTileOffsets), hl
;main.c:447: playerXOffset = 2;
	ld	hl, #0x0002
	ld	(_playerXOffset), hl
;main.c:448: scrollYOffset = 0;
	ld	iy, #_scrollYOffset
	ld	0 (iy), #0x00
;main.c:449: playerYOffset = 0; 
	ld	l, h
	ld	(_playerYOffset), hl
;main.c:450: spriteYOffset = 0;
	ld	a, #0x00
	ld	(#_spriteYOffset), a
;main.c:454: if (playerX < 136 || playerX >= GSL_getMapWidthInPixels() - 120)
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
;main.c:456: spriteXOffset = 2;
	ld	a, #0x02
	ld	(#_spriteXOffset), a
;main.c:457: scrollXOffset = 0;
	ld	a, #0x00
	ld	(#_scrollXOffset), a
	ret
00105$:
;main.c:461: spriteXOffset = 0;
	ld	a, #0x00
	ld	(#_spriteXOffset), a
;main.c:462: scrollXOffset = 2;
	ld	a, #0x02
	ld	(#_scrollXOffset), a
;main.c:464: }
	ret
;main.c:467: void processAttackKey()
;	---------------------------------
; Function processAttackKey
; ---------------------------------
_processAttackKey::
;main.c:470: actionButtonWatch = 1;
	ld	a, #0x01
	ld	(#_actionButtonWatch), a
;main.c:474: switch (direction)
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
;main.c:476: case DIRECTION_UP:
00101$:
;main.c:477: attackSprites = spriteAttackUpMeta;
	ld	hl, #_spriteAttackUpMeta+0
	ld	(_attackSprites), hl
;main.c:478: spriteTileOffsets = spriteAttackUp;
	ld	hl, #_spriteAttackUp+0
	ld	(_spriteTileOffsets), hl
;main.c:479: break;
	jr	00105$
;main.c:481: case DIRECTION_DOWN:
00102$:
;main.c:482: attackSprites = spriteAttackDownMeta;
	ld	hl, #_spriteAttackDownMeta+0
	ld	(_attackSprites), hl
;main.c:483: spriteTileOffsets = spriteAttackDown;
	ld	hl, #_spriteAttackDown+0
	ld	(_spriteTileOffsets), hl
;main.c:484: break;
	jr	00105$
;main.c:486: case DIRECTION_LEFT: 
00103$:
;main.c:487: attackSprites = spriteAttackLeftMeta;
	ld	hl, #_spriteAttackLeftMeta+0
	ld	(_attackSprites), hl
;main.c:488: spriteTileOffsets = spriteAttackLeft;
	ld	hl, #_spriteAttackLeft+0
	ld	(_spriteTileOffsets), hl
;main.c:489: break;
	jr	00105$
;main.c:491: case DIRECTION_RIGHT:
00104$:
;main.c:492: attackSprites = spriteAttackRightMeta;
	ld	hl, #_spriteAttackRightMeta+0
	ld	(_attackSprites), hl
;main.c:493: spriteTileOffsets = spriteAttackRight;
	ld	hl, #_spriteAttackRight+0
	ld	(_spriteTileOffsets), hl
;main.c:495: }
00105$:
;main.c:498: actionCount = 9;
	ld	a, #0x09
	ld	(#_actionCount), a
;main.c:499: animationCount = 0;
;main.c:500: scrollXOffset = 0;
	ld	a,#0x00
	ld	(#_animationCount),a
	ld	(#_scrollXOffset), a
;main.c:501: scrollYOffset = 0;
	ld	a, #0x00
	ld	(#_scrollYOffset), a
;main.c:502: action = ACTION_ATTACK;
	ld	a, #0x01
	ld	(#_action), a
;main.c:504: }
	ret
;main.c:515: void checkForAttackInteraction()
;	---------------------------------
; Function checkForAttackInteraction
; ---------------------------------
_checkForAttackInteraction::
;main.c:521: metatile = GSL_metatileLookup(playerX - 8, playerY - 1);
	ld	iy, #_playerX
	ld	a, 0 (iy)
	add	a, #0xf8
	ld	c, a
	ld	a, 1 (iy)
	adc	a, #0xff
	ld	b, a
;main.c:520: if (direction == DIRECTION_UP) 
	ld	a,(#_direction + 0)
	or	a, a
	jr	NZ, 00108$
;main.c:521: metatile = GSL_metatileLookup(playerX - 8, playerY - 1);
	ld	de, (_playerY)
	dec	de
	push	de
	push	bc
	call	_GSL_metatileLookup
	pop	af
	pop	af
	jr	00109$
00108$:
;main.c:522: else if (direction == DIRECTION_DOWN) 
	ld	a,(#_direction + 0)
	dec	a
	jr	NZ, 00105$
;main.c:523: metatile = GSL_metatileLookup(playerX - 8, playerY + 8);
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
;main.c:525: metatile = GSL_metatileLookup(playerX - 9, playerY - 8);
	ld	iy, #_playerY
	ld	a, 0 (iy)
	add	a, #0xf8
	ld	c, a
	ld	a, 1 (iy)
	adc	a, #0xff
	ld	b, a
;main.c:524: else if (direction == DIRECTION_LEFT) 
	ld	a,(#_direction + 0)
	sub	a, #0x02
	jr	NZ, 00102$
;main.c:525: metatile = GSL_metatileLookup(playerX - 9, playerY - 8);
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
;main.c:526: else metatile = GSL_metatileLookup(playerX + 8, playerY - 8);
	ld	hl, (_playerX)
	ld	de, #0x0008
	add	hl, de
	push	bc
	push	hl
	call	_GSL_metatileLookup
	pop	af
	pop	af
00109$:
;main.c:527: processAttackInteraction(metatile);
	push	hl
	call	_processAttackInteraction
	pop	af
;main.c:531: metatile = GSL_metatileLookup(playerX + 7, playerY - 1);
	ld	iy, #_playerX
	ld	a, 0 (iy)
	add	a, #0x07
	ld	c, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	b, a
;main.c:530: if (direction == DIRECTION_UP) 
	ld	a,(#_direction + 0)
	or	a, a
	jr	NZ, 00117$
;main.c:531: metatile = GSL_metatileLookup(playerX + 7, playerY - 1);
	ld	de, (_playerY)
	dec	de
	push	de
	push	bc
	call	_GSL_metatileLookup
	pop	af
	pop	af
	jr	00118$
00117$:
;main.c:532: else if (direction == DIRECTION_DOWN) 
	ld	a,(#_direction + 0)
	dec	a
	jr	NZ, 00114$
;main.c:533: metatile = GSL_metatileLookup(playerX + 7, playerY + 8);
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
;main.c:535: metatile = GSL_metatileLookup(playerX - 9, playerY + 7);
	ld	iy, #_playerY
	ld	a, 0 (iy)
	add	a, #0x07
	ld	c, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	b, a
;main.c:534: else if (direction == DIRECTION_LEFT) 
	ld	a,(#_direction + 0)
	sub	a, #0x02
	jr	NZ, 00111$
;main.c:535: metatile = GSL_metatileLookup(playerX - 9, playerY + 7);
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
;main.c:536: else metatile = GSL_metatileLookup(playerX + 8, playerY + 7);
	ld	hl, (_playerX)
	ld	de, #0x0008
	add	hl, de
	push	bc
	push	hl
	call	_GSL_metatileLookup
	pop	af
	pop	af
00118$:
;main.c:537: processAttackInteraction(metatile);
	push	hl
	call	_processAttackInteraction
	pop	af
;main.c:538: }
	ret
;main.c:551: void processAttackInteraction(unsigned char * metatile)
;	---------------------------------
; Function processAttackInteraction
; ---------------------------------
_processAttackInteraction::
	push	ix
	ld	ix,#0
	add	ix,sp
;main.c:563: if (*metatile == METATILE_GREEN_TREE)
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	a, (bc)
	sub	a, #0x11
	jr	NZ, 00102$
;main.c:566: *metatile = METATILE_TREE_STUMP;
	ld	a, #0x38
	ld	(bc), a
;main.c:569: GSL_metatileUpdate();
	push	bc
	call	_GSL_metatileUpdate
	pop	bc
00102$:
;main.c:574: if (*metatile == METATILE_CUT_CACTUS) 
	ld	a, (bc)
	sub	a, #0x90
	jr	NZ, 00104$
;main.c:577: *metatile = METATILE_SAND; 
	ld	a, #0xb0
	ld	(bc), a
;main.c:580: GSL_metatileUpdate();
	push	bc
	call	_GSL_metatileUpdate
	pop	bc
00104$:
;main.c:594: if (*metatile == METATILE_INTERACTIVE_TOMBSTONE_1)
	ld	a, (bc)
	sub	a, #0x78
	jr	NZ, 00106$
;main.c:599: *metatile = METATILE_TOMBSTONE; 
	ld	a, #0xa9
	ld	(bc), a
;main.c:605: *(GSL_getScrolltableAddress() + (51*64 + 28)) = METATILE_GRASS;
	push	bc
	call	_GSL_getScrolltableAddress
	pop	bc
	ld	de, #0x0cdc
	add	hl, de
	ld	(hl), #0x59
;main.c:609: GSL_metatileUpdateCustom(448, 816, (51*64 + 28));
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
;main.c:613: GSL_metatileUpdateCustom(464, 816, (51*64 + 29));
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
;main.c:618: if (*metatile == METATILE_INTERACTIVE_TOMBSTONE_2)
	ld	a, (bc)
	sub	a, #0x91
	jr	NZ, 00109$
;main.c:621: *metatile = METATILE_TOMBSTONE; 
	ld	a, #0xa9
	ld	(bc), a
;main.c:624: *(GSL_getScrolltableAddress() + (43*64 + 28)) = METATILE_VERTICAL_BRIDGE;
	call	_GSL_getScrolltableAddress
	ld	bc, #0x0adc
	add	hl, bc
	ld	(hl), #0x10
;main.c:625: GSL_metatileUpdateCustom(448, 688, (43*64 + 28));
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
;main.c:627: *(GSL_getScrolltableAddress() + (44*64 + 28)) = METATILE_VERTICAL_BRIDGE;
	call	_GSL_getScrolltableAddress
	ld	bc, #0x0b1c
	add	hl, bc
	ld	(hl), #0x10
;main.c:628: GSL_metatileUpdateCustom(448, 704, (44*64 + 28));
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
;main.c:630: *(GSL_getScrolltableAddress() + (45*64 + 28)) = METATILE_VERTICAL_BRIDGE;
	call	_GSL_getScrolltableAddress
	ld	bc, #0x0b5c
	add	hl, bc
	ld	(hl), #0x10
;main.c:631: GSL_metatileUpdateCustom(448, 720, (45*64 + 28));
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
;main.c:633: }
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
