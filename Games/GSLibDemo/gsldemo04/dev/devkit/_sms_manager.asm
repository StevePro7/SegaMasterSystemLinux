;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
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
	.globl _SMS_nmi_isr
	.globl _SMS_isr
	.globl _UNSAFE_SMS_VRAMmemcpy128
	.globl _UNSAFE_SMS_VRAMmemcpy64
	.globl _UNSAFE_SMS_VRAMmemcpy32
	.globl _UNSAFE_SMS_copySpritestoSAT
	.globl _SMS_VRAMmemsetW
	.globl _SMS_VRAMmemset
	.globl _SMS_VRAMmemcpy_brief
	.globl _SMS_VRAMmemcpy
	.globl _SMS_getHCount
	.globl _SMS_getVCount
	.globl _SMS_setLineCounter
	.globl _SMS_setLineInterruptHandler
	.globl _SMS_resetPauseRequest
	.globl _SMS_queryPauseRequested
	.globl _SMS_readPaddle
	.globl _SMS_detectPaddle
	.globl _SMS_getKeysReleased
	.globl _SMS_getKeysHeld
	.globl _SMS_getKeysPressed
	.globl _SMS_getKeysStatus
	.globl _SMS_decompressZX7
	.globl _SMS_autoSetUpTextRenderer
	.globl _SMS_configureTextRenderer
	.globl _SMS_zeroSpritePalette
	.globl _SMS_zeroBGPalette
	.globl _SMS_loadSpritePaletteHalfBrightness
	.globl _SMS_loadBGPaletteHalfBrightness
	.globl _SMS_setColor
	.globl _SMS_loadSpritePalette
	.globl _SMS_loadBGPalette
	.globl _SMS_setSpritePaletteColor
	.globl _SMS_setBGPaletteColor
	.globl _SMS_copySpritestoSAT
	.globl _SMS_finalizeSprites
	.globl _SMS_addSpriteClipping
	.globl _SMS_setClippingWindow
	.globl _SMS_hideSprite
	.globl _SMS_updateSpriteImage
	.globl _SMS_updateSpritePosition
	.globl _SMS_reserveSprite
	.globl _SMS_addThreeAdjoiningSprites
	.globl _SMS_addTwoAdjoiningSprites
	.globl _SMS_addSprite
	.globl _SMS_initSprites
	.globl _SMS_loadSTMcompressedTileMapatAddr
	.globl _SMS_loadTileMapArea
	.globl _UNSAFE_SMS_loadaPLibcompressedTilesatAddr
	.globl _UNSAFE_SMS_loadZX7compressedTilesatAddr
	.globl _SMS_loadPSGaidencompressedTilesatAddr
	.globl _SMS_load1bppTiles
	.globl _SMS_crt0_RST18
	.globl _SMS_crt0_RST08
	.globl _SMS_waitForVBlank
	.globl _SMS_setSpriteMode
	.globl _SMS_useFirstHalfTilesforSprites
	.globl _SMS_setBackdropColor
	.globl _SMS_setBGScrollY
	.globl _SMS_setBGScrollX
	.globl _SMS_VDPturnOffFeature
	.globl _SMS_VDPturnOnFeature
	.globl _SMS_init
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _devkit_SMS_init
	.globl _devkit_SMS_VDPturnOnFeature
	.globl _devkit_SMS_VDPturnOffFeature
	.globl _devkit_VDPFEATURE_EXTRAHEIGHT
	.globl _devkit_VDPFEATURE_SHIFTSPRITES
	.globl _devkit_VDPFEATURE_HIDEFIRSTCOL
	.globl _devkit_VDPFEATURE_LEFTCOLBLANK
	.globl _devkit_VDPFEATURE_LOCKHSCROLL
	.globl _devkit_VDPFEATURE_LOCKVSCROLL
	.globl _devkit_VDPFEATURE_ZOOMSPRITES
	.globl _devkit_VDPFEATURE_USETALLSPRITES
	.globl _devkit_VDPFEATURE_240LINES
	.globl _devkit_VDPFEATURE_224LINES
	.globl _devkit_VDPFEATURE_FRAMEIRQ
	.globl _devkit_VDPFEATURE_SHOWDISPLAY
	.globl _devkit_SMS_displayOn
	.globl _devkit_SMS_displayOff
	.globl _devkit_SMS_setBGScrollX
	.globl _devkit_SMS_setBGScrollY
	.globl _devkit_SMS_setBackdropColor
	.globl _devkit_SMS_useFirstHalfTilesforSprites
	.globl _devkit_SMS_setSpriteMode
	.globl _devkit_SPRITEMODE_NORMAL
	.globl _devkit_SPRITEMODE_TALL
	.globl _devkit_SPRITEMODE_ZOOMED
	.globl _devkit_SPRITEMODE_TALL_ZOOMED
	.globl _devkit_SMS_mapROMBank
	.globl _devkit_SMS_enableSRAM
	.globl _devkit_SMS_enableSRAMBank
	.globl _devkit_SMS_disableSRAM
	.globl _devkit_SMS_SRAM
	.globl _devkit_SMS_waitForVBlank
	.globl _devkit_SMS_crt0_RST08
	.globl _devkit_SMS_crt0_RST18
	.globl _devkit_SMS_setTile
	.globl _devkit_SMS_setAddr
	.globl _devkit_XYtoADDR
	.globl _devkit_SMS_setNextTileatXY
	.globl _devkit_SMS_setNextTileatLoc
	.globl _devkit_SMS_setNextTileatAddr
	.globl _devkit_SMS_setTileatXY
	.globl _devkit_TILEtoADDR
	.globl _devkit_TILE_FLIPPED_X
	.globl _devkit_TILE_FLIPPED_Y
	.globl _devkit_TILE_USE_SPRITE_PALETTE
	.globl _devkit_TILE_PRIORITY
	.globl _devkit_SMS_loadTiles
	.globl _devkit_SMS_load1bppTiles
	.globl _devkit_SMS_loadPSGaidencompressedTilesatAddr
	.globl _devkit_SMS_loadPSGaidencompressedTiles
	.globl _devkit_UNSAFE_SMS_loadZX7compressedTilesatAddr
	.globl _devkit_UNSAFE_SMS_loadZX7compressedTiles
	.globl _devkit_UNSAFE_SMS_loadaPLibcompressedTilesatAddr
	.globl _devkit_UNSAFE_SMS_loadaPLibcompressedTiles
	.globl _devkit_SMS_loadTileMap
	.globl _devkit_SMS_loadTileMapArea
	.globl _devkit_SMS_loadSTMcompressedTileMapatAddr
	.globl _devkit_SMS_loadSTMcompressedTileMap
	.globl _devkit_SMS_loadSTMcompressedTileMapArea
	.globl _devkit_SMS_initSprites
	.globl _devkit_SMS_addSprite
	.globl _devkit_SMS_addTwoAdjoiningSprites
	.globl _devkit_SMS_addThreeAdjoiningSprites
	.globl _devkit_SMS_reserveSprite
	.globl _devkit_SMS_updateSpritePosition
	.globl _devkit_SMS_updateSpriteImage
	.globl _devkit_SMS_hideSprite
	.globl _devkit_SMS_setClippingWindow
	.globl _devkit_SMS_addSpriteClipping
	.globl _devkit_SMS_finalizeSprites
	.globl _devkit_SMS_copySpritestoSAT
	.globl _devkit_SMS_setBGPaletteColor
	.globl _devkit_SMS_setSpritePaletteColor
	.globl _devkit_SMS_loadBGPalette
	.globl _devkit_SMS_loadSpritePalette
	.globl _devkit_SMS_setNextBGColoratIndex
	.globl _devkit_SMS_setNextSpriteColoratIndex
	.globl _devkit_SMS_setColor
	.globl _devkit_RGB
	.globl _devkit_RGB8
	.globl _devkit_SMS_loadBGPaletteHalfBrightness
	.globl _devkit_SMS_loadSpritePaletteHalfBrightness
	.globl _devkit_SMS_zeroBGPalette
	.globl _devkit_SMS_zeroSpritePalette
	.globl _devkit_SMS_configureTextRenderer
	.globl _devkit_SMS_autoSetUpTextRenderer
	.globl _devkit_SMS_decompressZX7
	.globl _devkit_SMS_getKeysStatus
	.globl _devkit_SMS_getKeysPressed
	.globl _devkit_SMS_getKeysHeld
	.globl _devkit_SMS_getKeysReleased
	.globl _devkit_PORT_A_KEY_UP
	.globl _devkit_PORT_A_KEY_DOWN
	.globl _devkit_PORT_A_KEY_LEFT
	.globl _devkit_PORT_A_KEY_RIGHT
	.globl _devkit_PORT_A_KEY_1
	.globl _devkit_PORT_A_KEY_2
	.globl _devkit_PORT_A_KEY_START
	.globl _devkit_PORT_B_KEY_UP
	.globl _devkit_PORT_B_KEY_DOWN
	.globl _devkit_PORT_B_KEY_LEFT
	.globl _devkit_PORT_B_KEY_RIGHT
	.globl _devkit_PORT_B_KEY_1
	.globl _devkit_PORT_B_KEY_2
	.globl _devkit_PORT_B_KEY_START
	.globl _devkit_RESET_KEY
	.globl _devkit_CARTRIDGE_SLOT
	.globl _devkit_PORT_A_TH
	.globl _devkit_PORT_B_TH
	.globl _devkit_PORT_A
	.globl _devkit_PORT_B
	.globl _devkit_SMS_detectPaddle
	.globl _devkit_SMS_readPaddle
	.globl _devkit_SMS_queryPauseRequested
	.globl _devkit_SMS_resetPauseRequest
	.globl _devkit_SMS_VDPFlags
	.globl _devkit_VDPFLAG_SPRITEOVERFLOW
	.globl _devkit_VDPFLAG_SPRITECOLLISION
	.globl _devkit_SMS_setLineInterruptHandler
	.globl _devkit_SMS_setLineCounter
	.globl _devkit_SMS_enableLineInterrupt
	.globl _devkit_SMS_disableLineInterrupt
	.globl _devkit_SMS_getVCount
	.globl _devkit_SMS_getHCount
	.globl _devkit_SMS_VRAMmemcpy
	.globl _devkit_SMS_VRAMmemcpy_brief
	.globl _devkit_SMS_VRAMmemset
	.globl _devkit_SMS_VRAMmemsetW
	.globl _devkit_UNSAFE_SMS_copySpritestoSAT
	.globl _devkit_UNSAFE_SMS_VRAMmemcpy32
	.globl _devkit_UNSAFE_SMS_VRAMmemcpy64
	.globl _devkit_UNSAFE_SMS_VRAMmemcpy128
	.globl _devkit_UNSAFE_SMS_load1Tile
	.globl _devkit_UNSAFE_SMS_load2Tiles
	.globl _devkit_UNSAFE_SMS_load4Tiles
	.globl _dekvit_SMS_isr
	.globl _dekvit_SMS_nmi_isr
	.globl _devkit_SMS_addSprite_bulk8
	.globl _devkit_SMS_addSprite_bulk12
	.globl _devkit_SMS_setTilePriority
	.globl _devkit_isCollisionDetected
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$ROM_bank_to_be_mapped_on_slot2$0_0$0 == 0xffff
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
G$SRAM_bank_to_be_mapped_on_slot2$0_0$0 == 0xfffc
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
G$SMS_SRAM$0_0$0 == 0x8000
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
	G$devkit_SMS_init$0$0	= .
	.globl	G$devkit_SMS_init$0$0
	C$_sms_manager.c$12$0_0$146	= .
	.globl	C$_sms_manager.c$12$0_0$146
;_sms_manager.c:12: void devkit_SMS_init()
;	---------------------------------
; Function devkit_SMS_init
; ---------------------------------
_devkit_SMS_init::
	C$_sms_manager.c$14$1_0$146	= .
	.globl	C$_sms_manager.c$14$1_0$146
;_sms_manager.c:14: SMS_init();
	C$_sms_manager.c$15$1_0$146	= .
	.globl	C$_sms_manager.c$15$1_0$146
;_sms_manager.c:15: }
	C$_sms_manager.c$15$1_0$146	= .
	.globl	C$_sms_manager.c$15$1_0$146
	XG$devkit_SMS_init$0$0	= .
	.globl	XG$devkit_SMS_init$0$0
	jp	_SMS_init
	G$devkit_SMS_VDPturnOnFeature$0$0	= .
	.globl	G$devkit_SMS_VDPturnOnFeature$0$0
	C$_sms_manager.c$18$1_0$148	= .
	.globl	C$_sms_manager.c$18$1_0$148
;_sms_manager.c:18: void devkit_SMS_VDPturnOnFeature( unsigned int feature )
;	---------------------------------
; Function devkit_SMS_VDPturnOnFeature
; ---------------------------------
_devkit_SMS_VDPturnOnFeature::
	C$_sms_manager.c$20$1_0$148	= .
	.globl	C$_sms_manager.c$20$1_0$148
;_sms_manager.c:20: SMS_VDPturnOnFeature( feature );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	C$_sms_manager.c$21$1_0$148	= .
	.globl	C$_sms_manager.c$21$1_0$148
;_sms_manager.c:21: }
	C$_sms_manager.c$21$1_0$148	= .
	.globl	C$_sms_manager.c$21$1_0$148
	XG$devkit_SMS_VDPturnOnFeature$0$0	= .
	.globl	XG$devkit_SMS_VDPturnOnFeature$0$0
	jp	_SMS_VDPturnOnFeature
	G$devkit_SMS_VDPturnOffFeature$0$0	= .
	.globl	G$devkit_SMS_VDPturnOffFeature$0$0
	C$_sms_manager.c$22$1_0$150	= .
	.globl	C$_sms_manager.c$22$1_0$150
;_sms_manager.c:22: void devkit_SMS_VDPturnOffFeature( unsigned int feature )
;	---------------------------------
; Function devkit_SMS_VDPturnOffFeature
; ---------------------------------
_devkit_SMS_VDPturnOffFeature::
	C$_sms_manager.c$24$1_0$150	= .
	.globl	C$_sms_manager.c$24$1_0$150
;_sms_manager.c:24: SMS_VDPturnOffFeature( feature );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	C$_sms_manager.c$25$1_0$150	= .
	.globl	C$_sms_manager.c$25$1_0$150
;_sms_manager.c:25: }
	C$_sms_manager.c$25$1_0$150	= .
	.globl	C$_sms_manager.c$25$1_0$150
	XG$devkit_SMS_VDPturnOffFeature$0$0	= .
	.globl	XG$devkit_SMS_VDPturnOffFeature$0$0
	jp	_SMS_VDPturnOffFeature
	G$devkit_VDPFEATURE_EXTRAHEIGHT$0$0	= .
	.globl	G$devkit_VDPFEATURE_EXTRAHEIGHT$0$0
	C$_sms_manager.c$28$1_0$151	= .
	.globl	C$_sms_manager.c$28$1_0$151
;_sms_manager.c:28: unsigned int devkit_VDPFEATURE_EXTRAHEIGHT()
;	---------------------------------
; Function devkit_VDPFEATURE_EXTRAHEIGHT
; ---------------------------------
_devkit_VDPFEATURE_EXTRAHEIGHT::
	C$_sms_manager.c$30$1_0$151	= .
	.globl	C$_sms_manager.c$30$1_0$151
;_sms_manager.c:30: return VDPFEATURE_EXTRAHEIGHT; 
	ld	hl, #0x0002
	C$_sms_manager.c$31$1_0$151	= .
	.globl	C$_sms_manager.c$31$1_0$151
;_sms_manager.c:31: }
	C$_sms_manager.c$31$1_0$151	= .
	.globl	C$_sms_manager.c$31$1_0$151
	XG$devkit_VDPFEATURE_EXTRAHEIGHT$0$0	= .
	.globl	XG$devkit_VDPFEATURE_EXTRAHEIGHT$0$0
	ret
	G$devkit_VDPFEATURE_SHIFTSPRITES$0$0	= .
	.globl	G$devkit_VDPFEATURE_SHIFTSPRITES$0$0
	C$_sms_manager.c$32$1_0$152	= .
	.globl	C$_sms_manager.c$32$1_0$152
;_sms_manager.c:32: unsigned int devkit_VDPFEATURE_SHIFTSPRITES()
;	---------------------------------
; Function devkit_VDPFEATURE_SHIFTSPRITES
; ---------------------------------
_devkit_VDPFEATURE_SHIFTSPRITES::
	C$_sms_manager.c$34$1_0$152	= .
	.globl	C$_sms_manager.c$34$1_0$152
;_sms_manager.c:34: return VDPFEATURE_SHIFTSPRITES; 
	ld	hl, #0x0008
	C$_sms_manager.c$35$1_0$152	= .
	.globl	C$_sms_manager.c$35$1_0$152
;_sms_manager.c:35: }
	C$_sms_manager.c$35$1_0$152	= .
	.globl	C$_sms_manager.c$35$1_0$152
	XG$devkit_VDPFEATURE_SHIFTSPRITES$0$0	= .
	.globl	XG$devkit_VDPFEATURE_SHIFTSPRITES$0$0
	ret
	G$devkit_VDPFEATURE_HIDEFIRSTCOL$0$0	= .
	.globl	G$devkit_VDPFEATURE_HIDEFIRSTCOL$0$0
	C$_sms_manager.c$36$1_0$153	= .
	.globl	C$_sms_manager.c$36$1_0$153
;_sms_manager.c:36: unsigned int devkit_VDPFEATURE_HIDEFIRSTCOL() 
;	---------------------------------
; Function devkit_VDPFEATURE_HIDEFIRSTCOL
; ---------------------------------
_devkit_VDPFEATURE_HIDEFIRSTCOL::
	C$_sms_manager.c$38$1_0$153	= .
	.globl	C$_sms_manager.c$38$1_0$153
;_sms_manager.c:38: return VDPFEATURE_HIDEFIRSTCOL; 
	ld	hl, #0x0020
	C$_sms_manager.c$39$1_0$153	= .
	.globl	C$_sms_manager.c$39$1_0$153
;_sms_manager.c:39: }
	C$_sms_manager.c$39$1_0$153	= .
	.globl	C$_sms_manager.c$39$1_0$153
	XG$devkit_VDPFEATURE_HIDEFIRSTCOL$0$0	= .
	.globl	XG$devkit_VDPFEATURE_HIDEFIRSTCOL$0$0
	ret
	G$devkit_VDPFEATURE_LEFTCOLBLANK$0$0	= .
	.globl	G$devkit_VDPFEATURE_LEFTCOLBLANK$0$0
	C$_sms_manager.c$40$1_0$154	= .
	.globl	C$_sms_manager.c$40$1_0$154
;_sms_manager.c:40: unsigned int devkit_VDPFEATURE_LEFTCOLBLANK()
;	---------------------------------
; Function devkit_VDPFEATURE_LEFTCOLBLANK
; ---------------------------------
_devkit_VDPFEATURE_LEFTCOLBLANK::
	C$_sms_manager.c$42$1_0$154	= .
	.globl	C$_sms_manager.c$42$1_0$154
;_sms_manager.c:42: return VDPFEATURE_LEFTCOLBLANK; 
	ld	hl, #0x0020
	C$_sms_manager.c$43$1_0$154	= .
	.globl	C$_sms_manager.c$43$1_0$154
;_sms_manager.c:43: }
	C$_sms_manager.c$43$1_0$154	= .
	.globl	C$_sms_manager.c$43$1_0$154
	XG$devkit_VDPFEATURE_LEFTCOLBLANK$0$0	= .
	.globl	XG$devkit_VDPFEATURE_LEFTCOLBLANK$0$0
	ret
	G$devkit_VDPFEATURE_LOCKHSCROLL$0$0	= .
	.globl	G$devkit_VDPFEATURE_LOCKHSCROLL$0$0
	C$_sms_manager.c$44$1_0$155	= .
	.globl	C$_sms_manager.c$44$1_0$155
;_sms_manager.c:44: unsigned int devkit_VDPFEATURE_LOCKHSCROLL()
;	---------------------------------
; Function devkit_VDPFEATURE_LOCKHSCROLL
; ---------------------------------
_devkit_VDPFEATURE_LOCKHSCROLL::
	C$_sms_manager.c$46$1_0$155	= .
	.globl	C$_sms_manager.c$46$1_0$155
;_sms_manager.c:46: return VDPFEATURE_LOCKHSCROLL; 
	ld	hl, #0x0040
	C$_sms_manager.c$47$1_0$155	= .
	.globl	C$_sms_manager.c$47$1_0$155
;_sms_manager.c:47: }
	C$_sms_manager.c$47$1_0$155	= .
	.globl	C$_sms_manager.c$47$1_0$155
	XG$devkit_VDPFEATURE_LOCKHSCROLL$0$0	= .
	.globl	XG$devkit_VDPFEATURE_LOCKHSCROLL$0$0
	ret
	G$devkit_VDPFEATURE_LOCKVSCROLL$0$0	= .
	.globl	G$devkit_VDPFEATURE_LOCKVSCROLL$0$0
	C$_sms_manager.c$48$1_0$156	= .
	.globl	C$_sms_manager.c$48$1_0$156
;_sms_manager.c:48: unsigned int devkit_VDPFEATURE_LOCKVSCROLL() 
;	---------------------------------
; Function devkit_VDPFEATURE_LOCKVSCROLL
; ---------------------------------
_devkit_VDPFEATURE_LOCKVSCROLL::
	C$_sms_manager.c$50$1_0$156	= .
	.globl	C$_sms_manager.c$50$1_0$156
;_sms_manager.c:50: return VDPFEATURE_LOCKVSCROLL; 
	ld	hl, #0x0080
	C$_sms_manager.c$51$1_0$156	= .
	.globl	C$_sms_manager.c$51$1_0$156
;_sms_manager.c:51: }
	C$_sms_manager.c$51$1_0$156	= .
	.globl	C$_sms_manager.c$51$1_0$156
	XG$devkit_VDPFEATURE_LOCKVSCROLL$0$0	= .
	.globl	XG$devkit_VDPFEATURE_LOCKVSCROLL$0$0
	ret
	G$devkit_VDPFEATURE_ZOOMSPRITES$0$0	= .
	.globl	G$devkit_VDPFEATURE_ZOOMSPRITES$0$0
	C$_sms_manager.c$54$1_0$157	= .
	.globl	C$_sms_manager.c$54$1_0$157
;_sms_manager.c:54: unsigned int devkit_VDPFEATURE_ZOOMSPRITES()
;	---------------------------------
; Function devkit_VDPFEATURE_ZOOMSPRITES
; ---------------------------------
_devkit_VDPFEATURE_ZOOMSPRITES::
	C$_sms_manager.c$56$1_0$157	= .
	.globl	C$_sms_manager.c$56$1_0$157
;_sms_manager.c:56: return VDPFEATURE_ZOOMSPRITES; 
	ld	hl, #0x0101
	C$_sms_manager.c$57$1_0$157	= .
	.globl	C$_sms_manager.c$57$1_0$157
;_sms_manager.c:57: }
	C$_sms_manager.c$57$1_0$157	= .
	.globl	C$_sms_manager.c$57$1_0$157
	XG$devkit_VDPFEATURE_ZOOMSPRITES$0$0	= .
	.globl	XG$devkit_VDPFEATURE_ZOOMSPRITES$0$0
	ret
	G$devkit_VDPFEATURE_USETALLSPRITES$0$0	= .
	.globl	G$devkit_VDPFEATURE_USETALLSPRITES$0$0
	C$_sms_manager.c$58$1_0$158	= .
	.globl	C$_sms_manager.c$58$1_0$158
;_sms_manager.c:58: unsigned int devkit_VDPFEATURE_USETALLSPRITES()
;	---------------------------------
; Function devkit_VDPFEATURE_USETALLSPRITES
; ---------------------------------
_devkit_VDPFEATURE_USETALLSPRITES::
	C$_sms_manager.c$60$1_0$158	= .
	.globl	C$_sms_manager.c$60$1_0$158
;_sms_manager.c:60: return VDPFEATURE_USETALLSPRITES; 
	ld	hl, #0x0102
	C$_sms_manager.c$61$1_0$158	= .
	.globl	C$_sms_manager.c$61$1_0$158
;_sms_manager.c:61: }
	C$_sms_manager.c$61$1_0$158	= .
	.globl	C$_sms_manager.c$61$1_0$158
	XG$devkit_VDPFEATURE_USETALLSPRITES$0$0	= .
	.globl	XG$devkit_VDPFEATURE_USETALLSPRITES$0$0
	ret
	G$devkit_VDPFEATURE_240LINES$0$0	= .
	.globl	G$devkit_VDPFEATURE_240LINES$0$0
	C$_sms_manager.c$62$1_0$159	= .
	.globl	C$_sms_manager.c$62$1_0$159
;_sms_manager.c:62: unsigned int devkit_VDPFEATURE_240LINES()
;	---------------------------------
; Function devkit_VDPFEATURE_240LINES
; ---------------------------------
_devkit_VDPFEATURE_240LINES::
	C$_sms_manager.c$64$1_0$159	= .
	.globl	C$_sms_manager.c$64$1_0$159
;_sms_manager.c:64: return VDPFEATURE_240LINES; 
	ld	hl, #0x0108
	C$_sms_manager.c$65$1_0$159	= .
	.globl	C$_sms_manager.c$65$1_0$159
;_sms_manager.c:65: }
	C$_sms_manager.c$65$1_0$159	= .
	.globl	C$_sms_manager.c$65$1_0$159
	XG$devkit_VDPFEATURE_240LINES$0$0	= .
	.globl	XG$devkit_VDPFEATURE_240LINES$0$0
	ret
	G$devkit_VDPFEATURE_224LINES$0$0	= .
	.globl	G$devkit_VDPFEATURE_224LINES$0$0
	C$_sms_manager.c$66$1_0$160	= .
	.globl	C$_sms_manager.c$66$1_0$160
;_sms_manager.c:66: unsigned int devkit_VDPFEATURE_224LINES()
;	---------------------------------
; Function devkit_VDPFEATURE_224LINES
; ---------------------------------
_devkit_VDPFEATURE_224LINES::
	C$_sms_manager.c$68$1_0$160	= .
	.globl	C$_sms_manager.c$68$1_0$160
;_sms_manager.c:68: return VDPFEATURE_224LINES; 
	ld	hl, #0x0110
	C$_sms_manager.c$69$1_0$160	= .
	.globl	C$_sms_manager.c$69$1_0$160
;_sms_manager.c:69: }
	C$_sms_manager.c$69$1_0$160	= .
	.globl	C$_sms_manager.c$69$1_0$160
	XG$devkit_VDPFEATURE_224LINES$0$0	= .
	.globl	XG$devkit_VDPFEATURE_224LINES$0$0
	ret
	G$devkit_VDPFEATURE_FRAMEIRQ$0$0	= .
	.globl	G$devkit_VDPFEATURE_FRAMEIRQ$0$0
	C$_sms_manager.c$70$1_0$161	= .
	.globl	C$_sms_manager.c$70$1_0$161
;_sms_manager.c:70: unsigned int devkit_VDPFEATURE_FRAMEIRQ()
;	---------------------------------
; Function devkit_VDPFEATURE_FRAMEIRQ
; ---------------------------------
_devkit_VDPFEATURE_FRAMEIRQ::
	C$_sms_manager.c$72$1_0$161	= .
	.globl	C$_sms_manager.c$72$1_0$161
;_sms_manager.c:72: return VDPFEATURE_FRAMEIRQ;
	ld	hl, #0x0120
	C$_sms_manager.c$73$1_0$161	= .
	.globl	C$_sms_manager.c$73$1_0$161
;_sms_manager.c:73: }
	C$_sms_manager.c$73$1_0$161	= .
	.globl	C$_sms_manager.c$73$1_0$161
	XG$devkit_VDPFEATURE_FRAMEIRQ$0$0	= .
	.globl	XG$devkit_VDPFEATURE_FRAMEIRQ$0$0
	ret
	G$devkit_VDPFEATURE_SHOWDISPLAY$0$0	= .
	.globl	G$devkit_VDPFEATURE_SHOWDISPLAY$0$0
	C$_sms_manager.c$74$1_0$162	= .
	.globl	C$_sms_manager.c$74$1_0$162
;_sms_manager.c:74: unsigned int devkit_VDPFEATURE_SHOWDISPLAY()
;	---------------------------------
; Function devkit_VDPFEATURE_SHOWDISPLAY
; ---------------------------------
_devkit_VDPFEATURE_SHOWDISPLAY::
	C$_sms_manager.c$76$1_0$162	= .
	.globl	C$_sms_manager.c$76$1_0$162
;_sms_manager.c:76: return VDPFEATURE_SHOWDISPLAY; 
	ld	hl, #0x0140
	C$_sms_manager.c$77$1_0$162	= .
	.globl	C$_sms_manager.c$77$1_0$162
;_sms_manager.c:77: }
	C$_sms_manager.c$77$1_0$162	= .
	.globl	C$_sms_manager.c$77$1_0$162
	XG$devkit_VDPFEATURE_SHOWDISPLAY$0$0	= .
	.globl	XG$devkit_VDPFEATURE_SHOWDISPLAY$0$0
	ret
	G$devkit_SMS_displayOn$0$0	= .
	.globl	G$devkit_SMS_displayOn$0$0
	C$_sms_manager.c$80$1_0$163	= .
	.globl	C$_sms_manager.c$80$1_0$163
;_sms_manager.c:80: void devkit_SMS_displayOn()
;	---------------------------------
; Function devkit_SMS_displayOn
; ---------------------------------
_devkit_SMS_displayOn::
	C$_sms_manager.c$82$1_0$163	= .
	.globl	C$_sms_manager.c$82$1_0$163
;_sms_manager.c:82: SMS_displayOn();
	ld	hl, #0x0140
	C$_sms_manager.c$83$1_0$163	= .
	.globl	C$_sms_manager.c$83$1_0$163
;_sms_manager.c:83: }
	C$_sms_manager.c$83$1_0$163	= .
	.globl	C$_sms_manager.c$83$1_0$163
	XG$devkit_SMS_displayOn$0$0	= .
	.globl	XG$devkit_SMS_displayOn$0$0
	jp	_SMS_VDPturnOnFeature
	G$devkit_SMS_displayOff$0$0	= .
	.globl	G$devkit_SMS_displayOff$0$0
	C$_sms_manager.c$84$1_0$164	= .
	.globl	C$_sms_manager.c$84$1_0$164
;_sms_manager.c:84: void devkit_SMS_displayOff()
;	---------------------------------
; Function devkit_SMS_displayOff
; ---------------------------------
_devkit_SMS_displayOff::
	C$_sms_manager.c$86$1_0$164	= .
	.globl	C$_sms_manager.c$86$1_0$164
;_sms_manager.c:86: SMS_displayOff();
	ld	hl, #0x0140
	C$_sms_manager.c$87$1_0$164	= .
	.globl	C$_sms_manager.c$87$1_0$164
;_sms_manager.c:87: }
	C$_sms_manager.c$87$1_0$164	= .
	.globl	C$_sms_manager.c$87$1_0$164
	XG$devkit_SMS_displayOff$0$0	= .
	.globl	XG$devkit_SMS_displayOff$0$0
	jp	_SMS_VDPturnOffFeature
	G$devkit_SMS_setBGScrollX$0$0	= .
	.globl	G$devkit_SMS_setBGScrollX$0$0
	C$_sms_manager.c$89$1_0$166	= .
	.globl	C$_sms_manager.c$89$1_0$166
;_sms_manager.c:89: void devkit_SMS_setBGScrollX( unsigned char scrollX )
;	---------------------------------
; Function devkit_SMS_setBGScrollX
; ---------------------------------
_devkit_SMS_setBGScrollX::
	C$_sms_manager.c$91$1_0$166	= .
	.globl	C$_sms_manager.c$91$1_0$166
;_sms_manager.c:91: SMS_setBGScrollX( scrollX );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	C$_sms_manager.c$92$1_0$166	= .
	.globl	C$_sms_manager.c$92$1_0$166
;_sms_manager.c:92: }
	C$_sms_manager.c$92$1_0$166	= .
	.globl	C$_sms_manager.c$92$1_0$166
	XG$devkit_SMS_setBGScrollX$0$0	= .
	.globl	XG$devkit_SMS_setBGScrollX$0$0
	jp	_SMS_setBGScrollX
	G$devkit_SMS_setBGScrollY$0$0	= .
	.globl	G$devkit_SMS_setBGScrollY$0$0
	C$_sms_manager.c$93$1_0$168	= .
	.globl	C$_sms_manager.c$93$1_0$168
;_sms_manager.c:93: void devkit_SMS_setBGScrollY( unsigned char scrollY )
;	---------------------------------
; Function devkit_SMS_setBGScrollY
; ---------------------------------
_devkit_SMS_setBGScrollY::
	C$_sms_manager.c$95$1_0$168	= .
	.globl	C$_sms_manager.c$95$1_0$168
;_sms_manager.c:95: SMS_setBGScrollY( scrollY );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	C$_sms_manager.c$96$1_0$168	= .
	.globl	C$_sms_manager.c$96$1_0$168
;_sms_manager.c:96: }
	C$_sms_manager.c$96$1_0$168	= .
	.globl	C$_sms_manager.c$96$1_0$168
	XG$devkit_SMS_setBGScrollY$0$0	= .
	.globl	XG$devkit_SMS_setBGScrollY$0$0
	jp	_SMS_setBGScrollY
	G$devkit_SMS_setBackdropColor$0$0	= .
	.globl	G$devkit_SMS_setBackdropColor$0$0
	C$_sms_manager.c$97$1_0$170	= .
	.globl	C$_sms_manager.c$97$1_0$170
;_sms_manager.c:97: void devkit_SMS_setBackdropColor( unsigned char entry )
;	---------------------------------
; Function devkit_SMS_setBackdropColor
; ---------------------------------
_devkit_SMS_setBackdropColor::
	C$_sms_manager.c$99$1_0$170	= .
	.globl	C$_sms_manager.c$99$1_0$170
;_sms_manager.c:99: SMS_setBackdropColor( entry );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	C$_sms_manager.c$100$1_0$170	= .
	.globl	C$_sms_manager.c$100$1_0$170
;_sms_manager.c:100: }
	C$_sms_manager.c$100$1_0$170	= .
	.globl	C$_sms_manager.c$100$1_0$170
	XG$devkit_SMS_setBackdropColor$0$0	= .
	.globl	XG$devkit_SMS_setBackdropColor$0$0
	jp	_SMS_setBackdropColor
	G$devkit_SMS_useFirstHalfTilesforSprites$0$0	= .
	.globl	G$devkit_SMS_useFirstHalfTilesforSprites$0$0
	C$_sms_manager.c$101$1_0$172	= .
	.globl	C$_sms_manager.c$101$1_0$172
;_sms_manager.c:101: void devkit_SMS_useFirstHalfTilesforSprites( unsigned char usefirsthalf )
;	---------------------------------
; Function devkit_SMS_useFirstHalfTilesforSprites
; ---------------------------------
_devkit_SMS_useFirstHalfTilesforSprites::
	C$_sms_manager.c$103$1_0$172	= .
	.globl	C$_sms_manager.c$103$1_0$172
;_sms_manager.c:103: SMS_useFirstHalfTilesforSprites( usefirsthalf );
	xor	a, a
	ld	iy, #2
	add	iy, sp
	cp	a, 0 (iy)
	rla
	ld	l, a
	C$_sms_manager.c$104$1_0$172	= .
	.globl	C$_sms_manager.c$104$1_0$172
;_sms_manager.c:104: }
	C$_sms_manager.c$104$1_0$172	= .
	.globl	C$_sms_manager.c$104$1_0$172
	XG$devkit_SMS_useFirstHalfTilesforSprites$0$0	= .
	.globl	XG$devkit_SMS_useFirstHalfTilesforSprites$0$0
	jp	_SMS_useFirstHalfTilesforSprites
	G$devkit_SMS_setSpriteMode$0$0	= .
	.globl	G$devkit_SMS_setSpriteMode$0$0
	C$_sms_manager.c$105$1_0$174	= .
	.globl	C$_sms_manager.c$105$1_0$174
;_sms_manager.c:105: void devkit_SMS_setSpriteMode( unsigned char mode )
;	---------------------------------
; Function devkit_SMS_setSpriteMode
; ---------------------------------
_devkit_SMS_setSpriteMode::
	C$_sms_manager.c$107$1_0$174	= .
	.globl	C$_sms_manager.c$107$1_0$174
;_sms_manager.c:107: SMS_setSpriteMode( mode );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	C$_sms_manager.c$108$1_0$174	= .
	.globl	C$_sms_manager.c$108$1_0$174
;_sms_manager.c:108: }
	C$_sms_manager.c$108$1_0$174	= .
	.globl	C$_sms_manager.c$108$1_0$174
	XG$devkit_SMS_setSpriteMode$0$0	= .
	.globl	XG$devkit_SMS_setSpriteMode$0$0
	jp	_SMS_setSpriteMode
	G$devkit_SPRITEMODE_NORMAL$0$0	= .
	.globl	G$devkit_SPRITEMODE_NORMAL$0$0
	C$_sms_manager.c$111$1_0$175	= .
	.globl	C$_sms_manager.c$111$1_0$175
;_sms_manager.c:111: unsigned char devkit_SPRITEMODE_NORMAL() 
;	---------------------------------
; Function devkit_SPRITEMODE_NORMAL
; ---------------------------------
_devkit_SPRITEMODE_NORMAL::
	C$_sms_manager.c$113$1_0$175	= .
	.globl	C$_sms_manager.c$113$1_0$175
;_sms_manager.c:113: return SPRITEMODE_NORMAL; 
	ld	l, #0x00
	C$_sms_manager.c$114$1_0$175	= .
	.globl	C$_sms_manager.c$114$1_0$175
;_sms_manager.c:114: }
	C$_sms_manager.c$114$1_0$175	= .
	.globl	C$_sms_manager.c$114$1_0$175
	XG$devkit_SPRITEMODE_NORMAL$0$0	= .
	.globl	XG$devkit_SPRITEMODE_NORMAL$0$0
	ret
	G$devkit_SPRITEMODE_TALL$0$0	= .
	.globl	G$devkit_SPRITEMODE_TALL$0$0
	C$_sms_manager.c$115$1_0$176	= .
	.globl	C$_sms_manager.c$115$1_0$176
;_sms_manager.c:115: unsigned char devkit_SPRITEMODE_TALL()
;	---------------------------------
; Function devkit_SPRITEMODE_TALL
; ---------------------------------
_devkit_SPRITEMODE_TALL::
	C$_sms_manager.c$117$1_0$176	= .
	.globl	C$_sms_manager.c$117$1_0$176
;_sms_manager.c:117: return SPRITEMODE_TALL; 
	ld	l, #0x01
	C$_sms_manager.c$118$1_0$176	= .
	.globl	C$_sms_manager.c$118$1_0$176
;_sms_manager.c:118: }
	C$_sms_manager.c$118$1_0$176	= .
	.globl	C$_sms_manager.c$118$1_0$176
	XG$devkit_SPRITEMODE_TALL$0$0	= .
	.globl	XG$devkit_SPRITEMODE_TALL$0$0
	ret
	G$devkit_SPRITEMODE_ZOOMED$0$0	= .
	.globl	G$devkit_SPRITEMODE_ZOOMED$0$0
	C$_sms_manager.c$119$1_0$177	= .
	.globl	C$_sms_manager.c$119$1_0$177
;_sms_manager.c:119: unsigned char devkit_SPRITEMODE_ZOOMED()
;	---------------------------------
; Function devkit_SPRITEMODE_ZOOMED
; ---------------------------------
_devkit_SPRITEMODE_ZOOMED::
	C$_sms_manager.c$121$1_0$177	= .
	.globl	C$_sms_manager.c$121$1_0$177
;_sms_manager.c:121: return SPRITEMODE_ZOOMED; 
	ld	l, #0x02
	C$_sms_manager.c$122$1_0$177	= .
	.globl	C$_sms_manager.c$122$1_0$177
;_sms_manager.c:122: }
	C$_sms_manager.c$122$1_0$177	= .
	.globl	C$_sms_manager.c$122$1_0$177
	XG$devkit_SPRITEMODE_ZOOMED$0$0	= .
	.globl	XG$devkit_SPRITEMODE_ZOOMED$0$0
	ret
	G$devkit_SPRITEMODE_TALL_ZOOMED$0$0	= .
	.globl	G$devkit_SPRITEMODE_TALL_ZOOMED$0$0
	C$_sms_manager.c$123$1_0$178	= .
	.globl	C$_sms_manager.c$123$1_0$178
;_sms_manager.c:123: unsigned char devkit_SPRITEMODE_TALL_ZOOMED()
;	---------------------------------
; Function devkit_SPRITEMODE_TALL_ZOOMED
; ---------------------------------
_devkit_SPRITEMODE_TALL_ZOOMED::
	C$_sms_manager.c$125$1_0$178	= .
	.globl	C$_sms_manager.c$125$1_0$178
;_sms_manager.c:125: return SPRITEMODE_TALL_ZOOMED; 
	ld	l, #0x03
	C$_sms_manager.c$126$1_0$178	= .
	.globl	C$_sms_manager.c$126$1_0$178
;_sms_manager.c:126: }
	C$_sms_manager.c$126$1_0$178	= .
	.globl	C$_sms_manager.c$126$1_0$178
	XG$devkit_SPRITEMODE_TALL_ZOOMED$0$0	= .
	.globl	XG$devkit_SPRITEMODE_TALL_ZOOMED$0$0
	ret
	G$devkit_SMS_mapROMBank$0$0	= .
	.globl	G$devkit_SMS_mapROMBank$0$0
	C$_sms_manager.c$130$1_0$180	= .
	.globl	C$_sms_manager.c$130$1_0$180
;_sms_manager.c:130: void devkit_SMS_mapROMBank( unsigned char n )
;	---------------------------------
; Function devkit_SMS_mapROMBank
; ---------------------------------
_devkit_SMS_mapROMBank::
	C$_sms_manager.c$132$1_0$180	= .
	.globl	C$_sms_manager.c$132$1_0$180
;_sms_manager.c:132: SMS_mapROMBank( n );
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	ld	(_ROM_bank_to_be_mapped_on_slot2+0), a
	C$_sms_manager.c$133$1_0$180	= .
	.globl	C$_sms_manager.c$133$1_0$180
;_sms_manager.c:133: }
	C$_sms_manager.c$133$1_0$180	= .
	.globl	C$_sms_manager.c$133$1_0$180
	XG$devkit_SMS_mapROMBank$0$0	= .
	.globl	XG$devkit_SMS_mapROMBank$0$0
	ret
	G$devkit_SMS_enableSRAM$0$0	= .
	.globl	G$devkit_SMS_enableSRAM$0$0
	C$_sms_manager.c$136$1_0$181	= .
	.globl	C$_sms_manager.c$136$1_0$181
;_sms_manager.c:136: void devkit_SMS_enableSRAM()
;	---------------------------------
; Function devkit_SMS_enableSRAM
; ---------------------------------
_devkit_SMS_enableSRAM::
	C$_sms_manager.c$138$1_0$181	= .
	.globl	C$_sms_manager.c$138$1_0$181
;_sms_manager.c:138: SMS_enableSRAM();
	ld	a, #0x08
	ld	(#_SRAM_bank_to_be_mapped_on_slot2), a
	C$_sms_manager.c$139$1_0$181	= .
	.globl	C$_sms_manager.c$139$1_0$181
;_sms_manager.c:139: }
	C$_sms_manager.c$139$1_0$181	= .
	.globl	C$_sms_manager.c$139$1_0$181
	XG$devkit_SMS_enableSRAM$0$0	= .
	.globl	XG$devkit_SMS_enableSRAM$0$0
	ret
	G$devkit_SMS_enableSRAMBank$0$0	= .
	.globl	G$devkit_SMS_enableSRAMBank$0$0
	C$_sms_manager.c$140$1_0$183	= .
	.globl	C$_sms_manager.c$140$1_0$183
;_sms_manager.c:140: void devkit_SMS_enableSRAMBank( unsigned char n )
;	---------------------------------
; Function devkit_SMS_enableSRAMBank
; ---------------------------------
_devkit_SMS_enableSRAMBank::
	C$_sms_manager.c$142$1_0$183	= .
	.globl	C$_sms_manager.c$142$1_0$183
;_sms_manager.c:142: SMS_enableSRAMBank( n );
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	add	a, a
	add	a, a
	set	3, a
	and	a, #0x0c
	ld	(_SRAM_bank_to_be_mapped_on_slot2+0), a
	C$_sms_manager.c$143$1_0$183	= .
	.globl	C$_sms_manager.c$143$1_0$183
;_sms_manager.c:143: }
	C$_sms_manager.c$143$1_0$183	= .
	.globl	C$_sms_manager.c$143$1_0$183
	XG$devkit_SMS_enableSRAMBank$0$0	= .
	.globl	XG$devkit_SMS_enableSRAMBank$0$0
	ret
	G$devkit_SMS_disableSRAM$0$0	= .
	.globl	G$devkit_SMS_disableSRAM$0$0
	C$_sms_manager.c$144$1_0$184	= .
	.globl	C$_sms_manager.c$144$1_0$184
;_sms_manager.c:144: void devkit_SMS_disableSRAM()
;	---------------------------------
; Function devkit_SMS_disableSRAM
; ---------------------------------
_devkit_SMS_disableSRAM::
	C$_sms_manager.c$146$1_0$184	= .
	.globl	C$_sms_manager.c$146$1_0$184
;_sms_manager.c:146: SMS_disableSRAM();
	ld	a, #0x00
	ld	(#_SRAM_bank_to_be_mapped_on_slot2), a
	C$_sms_manager.c$147$1_0$184	= .
	.globl	C$_sms_manager.c$147$1_0$184
;_sms_manager.c:147: }
	C$_sms_manager.c$147$1_0$184	= .
	.globl	C$_sms_manager.c$147$1_0$184
	XG$devkit_SMS_disableSRAM$0$0	= .
	.globl	XG$devkit_SMS_disableSRAM$0$0
	ret
	G$devkit_SMS_SRAM$0$0	= .
	.globl	G$devkit_SMS_SRAM$0$0
	C$_sms_manager.c$150$1_0$185	= .
	.globl	C$_sms_manager.c$150$1_0$185
;_sms_manager.c:150: unsigned char* devkit_SMS_SRAM()
;	---------------------------------
; Function devkit_SMS_SRAM
; ---------------------------------
_devkit_SMS_SRAM::
	C$_sms_manager.c$152$1_0$185	= .
	.globl	C$_sms_manager.c$152$1_0$185
;_sms_manager.c:152: return SMS_SRAM;
	ld	hl, #_SMS_SRAM
	C$_sms_manager.c$153$1_0$185	= .
	.globl	C$_sms_manager.c$153$1_0$185
;_sms_manager.c:153: }
	C$_sms_manager.c$153$1_0$185	= .
	.globl	C$_sms_manager.c$153$1_0$185
	XG$devkit_SMS_SRAM$0$0	= .
	.globl	XG$devkit_SMS_SRAM$0$0
	ret
	G$devkit_SMS_waitForVBlank$0$0	= .
	.globl	G$devkit_SMS_waitForVBlank$0$0
	C$_sms_manager.c$156$1_0$186	= .
	.globl	C$_sms_manager.c$156$1_0$186
;_sms_manager.c:156: void devkit_SMS_waitForVBlank()
;	---------------------------------
; Function devkit_SMS_waitForVBlank
; ---------------------------------
_devkit_SMS_waitForVBlank::
	C$_sms_manager.c$158$1_0$186	= .
	.globl	C$_sms_manager.c$158$1_0$186
;_sms_manager.c:158: SMS_waitForVBlank();
	C$_sms_manager.c$159$1_0$186	= .
	.globl	C$_sms_manager.c$159$1_0$186
;_sms_manager.c:159: }
	C$_sms_manager.c$159$1_0$186	= .
	.globl	C$_sms_manager.c$159$1_0$186
	XG$devkit_SMS_waitForVBlank$0$0	= .
	.globl	XG$devkit_SMS_waitForVBlank$0$0
	jp	_SMS_waitForVBlank
	G$devkit_SMS_crt0_RST08$0$0	= .
	.globl	G$devkit_SMS_crt0_RST08$0$0
	C$_sms_manager.c$161$1_0$188	= .
	.globl	C$_sms_manager.c$161$1_0$188
;_sms_manager.c:161: void devkit_SMS_crt0_RST08( unsigned int addr )
;	---------------------------------
; Function devkit_SMS_crt0_RST08
; ---------------------------------
_devkit_SMS_crt0_RST08::
	C$_sms_manager.c$163$1_0$188	= .
	.globl	C$_sms_manager.c$163$1_0$188
;_sms_manager.c:163: SMS_crt0_RST08( addr );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	C$_sms_manager.c$164$1_0$188	= .
	.globl	C$_sms_manager.c$164$1_0$188
;_sms_manager.c:164: }
	C$_sms_manager.c$164$1_0$188	= .
	.globl	C$_sms_manager.c$164$1_0$188
	XG$devkit_SMS_crt0_RST08$0$0	= .
	.globl	XG$devkit_SMS_crt0_RST08$0$0
	jp	_SMS_crt0_RST08
	G$devkit_SMS_crt0_RST18$0$0	= .
	.globl	G$devkit_SMS_crt0_RST18$0$0
	C$_sms_manager.c$165$1_0$190	= .
	.globl	C$_sms_manager.c$165$1_0$190
;_sms_manager.c:165: void devkit_SMS_crt0_RST18( unsigned int tile )
;	---------------------------------
; Function devkit_SMS_crt0_RST18
; ---------------------------------
_devkit_SMS_crt0_RST18::
	C$_sms_manager.c$167$1_0$190	= .
	.globl	C$_sms_manager.c$167$1_0$190
;_sms_manager.c:167: SMS_crt0_RST18( tile );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	C$_sms_manager.c$168$1_0$190	= .
	.globl	C$_sms_manager.c$168$1_0$190
;_sms_manager.c:168: }
	C$_sms_manager.c$168$1_0$190	= .
	.globl	C$_sms_manager.c$168$1_0$190
	XG$devkit_SMS_crt0_RST18$0$0	= .
	.globl	XG$devkit_SMS_crt0_RST18$0$0
	jp	_SMS_crt0_RST18
	G$devkit_SMS_setTile$0$0	= .
	.globl	G$devkit_SMS_setTile$0$0
	C$_sms_manager.c$171$1_0$192	= .
	.globl	C$_sms_manager.c$171$1_0$192
;_sms_manager.c:171: void devkit_SMS_setTile( const unsigned int tile )
;	---------------------------------
; Function devkit_SMS_setTile
; ---------------------------------
_devkit_SMS_setTile::
	C$_sms_manager.c$173$1_0$192	= .
	.globl	C$_sms_manager.c$173$1_0$192
;_sms_manager.c:173: SMS_setTile( tile );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	C$_sms_manager.c$174$1_0$192	= .
	.globl	C$_sms_manager.c$174$1_0$192
;_sms_manager.c:174: }
	C$_sms_manager.c$174$1_0$192	= .
	.globl	C$_sms_manager.c$174$1_0$192
	XG$devkit_SMS_setTile$0$0	= .
	.globl	XG$devkit_SMS_setTile$0$0
	jp	_SMS_crt0_RST18
	G$devkit_SMS_setAddr$0$0	= .
	.globl	G$devkit_SMS_setAddr$0$0
	C$_sms_manager.c$175$1_0$194	= .
	.globl	C$_sms_manager.c$175$1_0$194
;_sms_manager.c:175: void devkit_SMS_setAddr( const unsigned int addr )
;	---------------------------------
; Function devkit_SMS_setAddr
; ---------------------------------
_devkit_SMS_setAddr::
	C$_sms_manager.c$177$1_0$194	= .
	.globl	C$_sms_manager.c$177$1_0$194
;_sms_manager.c:177: SMS_setAddr( addr );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	C$_sms_manager.c$178$1_0$194	= .
	.globl	C$_sms_manager.c$178$1_0$194
;_sms_manager.c:178: }
	C$_sms_manager.c$178$1_0$194	= .
	.globl	C$_sms_manager.c$178$1_0$194
	XG$devkit_SMS_setAddr$0$0	= .
	.globl	XG$devkit_SMS_setAddr$0$0
	jp	_SMS_crt0_RST08
	G$devkit_XYtoADDR$0$0	= .
	.globl	G$devkit_XYtoADDR$0$0
	C$_sms_manager.c$182$1_0$196	= .
	.globl	C$_sms_manager.c$182$1_0$196
;_sms_manager.c:182: void devkit_XYtoADDR( unsigned int x, unsigned char y )
;	---------------------------------
; Function devkit_XYtoADDR
; ---------------------------------
_devkit_XYtoADDR::
	C$_sms_manager.c$184$1_0$196	= .
	.globl	C$_sms_manager.c$184$1_0$196
;_sms_manager.c:184: XYtoADDR( x, y );
	C$_sms_manager.c$185$1_0$196	= .
	.globl	C$_sms_manager.c$185$1_0$196
;_sms_manager.c:185: }
	C$_sms_manager.c$185$1_0$196	= .
	.globl	C$_sms_manager.c$185$1_0$196
	XG$devkit_XYtoADDR$0$0	= .
	.globl	XG$devkit_XYtoADDR$0$0
	ret
	G$devkit_SMS_setNextTileatXY$0$0	= .
	.globl	G$devkit_SMS_setNextTileatXY$0$0
	C$_sms_manager.c$186$1_0$198	= .
	.globl	C$_sms_manager.c$186$1_0$198
;_sms_manager.c:186: void devkit_SMS_setNextTileatXY( unsigned char x, unsigned char y )
;	---------------------------------
; Function devkit_SMS_setNextTileatXY
; ---------------------------------
_devkit_SMS_setNextTileatXY::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$_sms_manager.c$188$1_0$198	= .
	.globl	C$_sms_manager.c$188$1_0$198
;_sms_manager.c:188: SMS_setNextTileatXY( x, y );
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, 4 (ix)
	ld	b, #0x00
	add	hl, bc
	add	hl, hl
	ld	a, h
	or	a, #0x78
	ld	h, a
	C$_sms_manager.c$189$1_0$198	= .
	.globl	C$_sms_manager.c$189$1_0$198
;_sms_manager.c:189: }
	C$_sms_manager.c$189$1_0$198	= .
	.globl	C$_sms_manager.c$189$1_0$198
	XG$devkit_SMS_setNextTileatXY$0$0	= .
	.globl	XG$devkit_SMS_setNextTileatXY$0$0
	pop	ix
	jp	_SMS_crt0_RST08
	G$devkit_SMS_setNextTileatLoc$0$0	= .
	.globl	G$devkit_SMS_setNextTileatLoc$0$0
	C$_sms_manager.c$190$1_0$200	= .
	.globl	C$_sms_manager.c$190$1_0$200
;_sms_manager.c:190: void devkit_SMS_setNextTileatLoc( unsigned int loc )
;	---------------------------------
; Function devkit_SMS_setNextTileatLoc
; ---------------------------------
_devkit_SMS_setNextTileatLoc::
	C$_sms_manager.c$192$1_0$200	= .
	.globl	C$_sms_manager.c$192$1_0$200
;_sms_manager.c:192: SMS_setNextTileatLoc( loc );
	pop	bc
	pop	hl
	push	hl
	push	bc
	add	hl, hl
	ld	a, h
	or	a, #0x78
	ld	h, a
	C$_sms_manager.c$193$1_0$200	= .
	.globl	C$_sms_manager.c$193$1_0$200
;_sms_manager.c:193: }
	C$_sms_manager.c$193$1_0$200	= .
	.globl	C$_sms_manager.c$193$1_0$200
	XG$devkit_SMS_setNextTileatLoc$0$0	= .
	.globl	XG$devkit_SMS_setNextTileatLoc$0$0
	jp	_SMS_crt0_RST08
	G$devkit_SMS_setNextTileatAddr$0$0	= .
	.globl	G$devkit_SMS_setNextTileatAddr$0$0
	C$_sms_manager.c$194$1_0$202	= .
	.globl	C$_sms_manager.c$194$1_0$202
;_sms_manager.c:194: void devkit_SMS_setNextTileatAddr( const unsigned char a )
;	---------------------------------
; Function devkit_SMS_setNextTileatAddr
; ---------------------------------
_devkit_SMS_setNextTileatAddr::
	C$_sms_manager.c$196$1_0$202	= .
	.globl	C$_sms_manager.c$196$1_0$202
;_sms_manager.c:196: SMS_setNextTileatAddr( a );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, #0x00
	C$_sms_manager.c$197$1_0$202	= .
	.globl	C$_sms_manager.c$197$1_0$202
;_sms_manager.c:197: }
	C$_sms_manager.c$197$1_0$202	= .
	.globl	C$_sms_manager.c$197$1_0$202
	XG$devkit_SMS_setNextTileatAddr$0$0	= .
	.globl	XG$devkit_SMS_setNextTileatAddr$0$0
	jp	_SMS_crt0_RST08
	G$devkit_SMS_setTileatXY$0$0	= .
	.globl	G$devkit_SMS_setTileatXY$0$0
	C$_sms_manager.c$198$1_0$204	= .
	.globl	C$_sms_manager.c$198$1_0$204
;_sms_manager.c:198: void devkit_SMS_setTileatXY( unsigned int x, unsigned char y, unsigned int tile )
;	---------------------------------
; Function devkit_SMS_setTileatXY
; ---------------------------------
_devkit_SMS_setTileatXY::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$_sms_manager.c$200$2_0$205	= .
	.globl	C$_sms_manager.c$200$2_0$205
;_sms_manager.c:200: SMS_setTileatXY( x, y, tile );
	ld	l, 6 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	c, 4 (ix)
	ld	b, #0x00
	add	hl, bc
	add	hl, hl
	ld	a, h
	or	a, #0x78
	ld	h, a
	rst	#0x08
	ld	l, 7 (ix)
	ld	h, 8 (ix)
	C$_sms_manager.c$201$1_0$204	= .
	.globl	C$_sms_manager.c$201$1_0$204
;_sms_manager.c:201: }
	C$_sms_manager.c$201$1_0$204	= .
	.globl	C$_sms_manager.c$201$1_0$204
	XG$devkit_SMS_setTileatXY$0$0	= .
	.globl	XG$devkit_SMS_setTileatXY$0$0
	pop	ix
	jp	_SMS_crt0_RST18
	G$devkit_TILEtoADDR$0$0	= .
	.globl	G$devkit_TILEtoADDR$0$0
	C$_sms_manager.c$205$1_0$207	= .
	.globl	C$_sms_manager.c$205$1_0$207
;_sms_manager.c:205: void devkit_TILEtoADDR( unsigned int tile )
;	---------------------------------
; Function devkit_TILEtoADDR
; ---------------------------------
_devkit_TILEtoADDR::
	C$_sms_manager.c$207$1_0$207	= .
	.globl	C$_sms_manager.c$207$1_0$207
;_sms_manager.c:207: TILEtoADDR( tile );
	C$_sms_manager.c$208$1_0$207	= .
	.globl	C$_sms_manager.c$208$1_0$207
;_sms_manager.c:208: }
	C$_sms_manager.c$208$1_0$207	= .
	.globl	C$_sms_manager.c$208$1_0$207
	XG$devkit_TILEtoADDR$0$0	= .
	.globl	XG$devkit_TILEtoADDR$0$0
	ret
	G$devkit_TILE_FLIPPED_X$0$0	= .
	.globl	G$devkit_TILE_FLIPPED_X$0$0
	C$_sms_manager.c$211$1_0$208	= .
	.globl	C$_sms_manager.c$211$1_0$208
;_sms_manager.c:211: unsigned int devkit_TILE_FLIPPED_X()
;	---------------------------------
; Function devkit_TILE_FLIPPED_X
; ---------------------------------
_devkit_TILE_FLIPPED_X::
	C$_sms_manager.c$213$1_0$208	= .
	.globl	C$_sms_manager.c$213$1_0$208
;_sms_manager.c:213: return TILE_FLIPPED_X;
	ld	hl, #0x0200
	C$_sms_manager.c$214$1_0$208	= .
	.globl	C$_sms_manager.c$214$1_0$208
;_sms_manager.c:214: }
	C$_sms_manager.c$214$1_0$208	= .
	.globl	C$_sms_manager.c$214$1_0$208
	XG$devkit_TILE_FLIPPED_X$0$0	= .
	.globl	XG$devkit_TILE_FLIPPED_X$0$0
	ret
	G$devkit_TILE_FLIPPED_Y$0$0	= .
	.globl	G$devkit_TILE_FLIPPED_Y$0$0
	C$_sms_manager.c$215$1_0$209	= .
	.globl	C$_sms_manager.c$215$1_0$209
;_sms_manager.c:215: unsigned int devkit_TILE_FLIPPED_Y()
;	---------------------------------
; Function devkit_TILE_FLIPPED_Y
; ---------------------------------
_devkit_TILE_FLIPPED_Y::
	C$_sms_manager.c$217$1_0$209	= .
	.globl	C$_sms_manager.c$217$1_0$209
;_sms_manager.c:217: return TILE_FLIPPED_Y;
	ld	hl, #0x0400
	C$_sms_manager.c$218$1_0$209	= .
	.globl	C$_sms_manager.c$218$1_0$209
;_sms_manager.c:218: }
	C$_sms_manager.c$218$1_0$209	= .
	.globl	C$_sms_manager.c$218$1_0$209
	XG$devkit_TILE_FLIPPED_Y$0$0	= .
	.globl	XG$devkit_TILE_FLIPPED_Y$0$0
	ret
	G$devkit_TILE_USE_SPRITE_PALETTE$0$0	= .
	.globl	G$devkit_TILE_USE_SPRITE_PALETTE$0$0
	C$_sms_manager.c$219$1_0$210	= .
	.globl	C$_sms_manager.c$219$1_0$210
;_sms_manager.c:219: unsigned int devkit_TILE_USE_SPRITE_PALETTE()
;	---------------------------------
; Function devkit_TILE_USE_SPRITE_PALETTE
; ---------------------------------
_devkit_TILE_USE_SPRITE_PALETTE::
	C$_sms_manager.c$221$1_0$210	= .
	.globl	C$_sms_manager.c$221$1_0$210
;_sms_manager.c:221: return TILE_USE_SPRITE_PALETTE;
	ld	hl, #0x0800
	C$_sms_manager.c$222$1_0$210	= .
	.globl	C$_sms_manager.c$222$1_0$210
;_sms_manager.c:222: }
	C$_sms_manager.c$222$1_0$210	= .
	.globl	C$_sms_manager.c$222$1_0$210
	XG$devkit_TILE_USE_SPRITE_PALETTE$0$0	= .
	.globl	XG$devkit_TILE_USE_SPRITE_PALETTE$0$0
	ret
	G$devkit_TILE_PRIORITY$0$0	= .
	.globl	G$devkit_TILE_PRIORITY$0$0
	C$_sms_manager.c$223$1_0$211	= .
	.globl	C$_sms_manager.c$223$1_0$211
;_sms_manager.c:223: unsigned int devkit_TILE_PRIORITY()
;	---------------------------------
; Function devkit_TILE_PRIORITY
; ---------------------------------
_devkit_TILE_PRIORITY::
	C$_sms_manager.c$225$1_0$211	= .
	.globl	C$_sms_manager.c$225$1_0$211
;_sms_manager.c:225: return TILE_PRIORITY;
	ld	hl, #0x1000
	C$_sms_manager.c$226$1_0$211	= .
	.globl	C$_sms_manager.c$226$1_0$211
;_sms_manager.c:226: }
	C$_sms_manager.c$226$1_0$211	= .
	.globl	C$_sms_manager.c$226$1_0$211
	XG$devkit_TILE_PRIORITY$0$0	= .
	.globl	XG$devkit_TILE_PRIORITY$0$0
	ret
	G$devkit_SMS_loadTiles$0$0	= .
	.globl	G$devkit_SMS_loadTiles$0$0
	C$_sms_manager.c$229$1_0$213	= .
	.globl	C$_sms_manager.c$229$1_0$213
;_sms_manager.c:229: void devkit_SMS_loadTiles( void *src, unsigned int tilefrom, unsigned int size )
;	---------------------------------
; Function devkit_SMS_loadTiles
; ---------------------------------
_devkit_SMS_loadTiles::
	C$_sms_manager.c$231$1_0$213	= .
	.globl	C$_sms_manager.c$231$1_0$213
;_sms_manager.c:231: SMS_loadTiles( src, tilefrom, size );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	set	6, h
	ld	e, 2 (iy)
	ld	d, 3 (iy)
	push	de
	ld	iy, #4
	add	iy, sp
	ld	e, 0 (iy)
	ld	d, 1 (iy)
	push	de
	push	hl
	call	_SMS_VRAMmemcpy
	C$_sms_manager.c$232$1_0$213	= .
	.globl	C$_sms_manager.c$232$1_0$213
;_sms_manager.c:232: }
	C$_sms_manager.c$232$1_0$213	= .
	.globl	C$_sms_manager.c$232$1_0$213
	XG$devkit_SMS_loadTiles$0$0	= .
	.globl	XG$devkit_SMS_loadTiles$0$0
	ret
	G$devkit_SMS_load1bppTiles$0$0	= .
	.globl	G$devkit_SMS_load1bppTiles$0$0
	C$_sms_manager.c$233$1_0$215	= .
	.globl	C$_sms_manager.c$233$1_0$215
;_sms_manager.c:233: void devkit_SMS_load1bppTiles( const void *src, unsigned int tilefrom, unsigned int size, unsigned char color0, unsigned char color1 )
;	---------------------------------
; Function devkit_SMS_load1bppTiles
; ---------------------------------
_devkit_SMS_load1bppTiles::
	C$_sms_manager.c$235$1_0$215	= .
	.globl	C$_sms_manager.c$235$1_0$215
;_sms_manager.c:235: SMS_load1bppTiles( src, tilefrom, size, color0, color1 );
	ld	iy, #9
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
	dec	iy
	dec	iy
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	dec	iy
	dec	iy
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_SMS_load1bppTiles
	ld	hl, #8
	add	hl, sp
	ld	sp, hl
	C$_sms_manager.c$236$1_0$215	= .
	.globl	C$_sms_manager.c$236$1_0$215
;_sms_manager.c:236: }
	C$_sms_manager.c$236$1_0$215	= .
	.globl	C$_sms_manager.c$236$1_0$215
	XG$devkit_SMS_load1bppTiles$0$0	= .
	.globl	XG$devkit_SMS_load1bppTiles$0$0
	ret
	G$devkit_SMS_loadPSGaidencompressedTilesatAddr$0$0	= .
	.globl	G$devkit_SMS_loadPSGaidencompressedTilesatAddr$0$0
	C$_sms_manager.c$239$1_0$217	= .
	.globl	C$_sms_manager.c$239$1_0$217
;_sms_manager.c:239: void devkit_SMS_loadPSGaidencompressedTilesatAddr( const void *src, unsigned int dst )
;	---------------------------------
; Function devkit_SMS_loadPSGaidencompressedTilesatAddr
; ---------------------------------
_devkit_SMS_loadPSGaidencompressedTilesatAddr::
	C$_sms_manager.c$241$1_0$217	= .
	.globl	C$_sms_manager.c$241$1_0$217
;_sms_manager.c:241: SMS_loadPSGaidencompressedTilesatAddr( src, dst );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_SMS_loadPSGaidencompressedTilesatAddr
	pop	af
	pop	af
	C$_sms_manager.c$242$1_0$217	= .
	.globl	C$_sms_manager.c$242$1_0$217
;_sms_manager.c:242: }
	C$_sms_manager.c$242$1_0$217	= .
	.globl	C$_sms_manager.c$242$1_0$217
	XG$devkit_SMS_loadPSGaidencompressedTilesatAddr$0$0	= .
	.globl	XG$devkit_SMS_loadPSGaidencompressedTilesatAddr$0$0
	ret
	G$devkit_SMS_loadPSGaidencompressedTiles$0$0	= .
	.globl	G$devkit_SMS_loadPSGaidencompressedTiles$0$0
	C$_sms_manager.c$243$1_0$219	= .
	.globl	C$_sms_manager.c$243$1_0$219
;_sms_manager.c:243: void devkit_SMS_loadPSGaidencompressedTiles( const void *src, unsigned int tilefrom )
;	---------------------------------
; Function devkit_SMS_loadPSGaidencompressedTiles
; ---------------------------------
_devkit_SMS_loadPSGaidencompressedTiles::
	C$_sms_manager.c$245$1_0$219	= .
	.globl	C$_sms_manager.c$245$1_0$219
;_sms_manager.c:245: SMS_loadPSGaidencompressedTiles( src, tilefrom );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	set	6, h
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_SMS_loadPSGaidencompressedTilesatAddr
	pop	af
	pop	af
	C$_sms_manager.c$246$1_0$219	= .
	.globl	C$_sms_manager.c$246$1_0$219
;_sms_manager.c:246: }
	C$_sms_manager.c$246$1_0$219	= .
	.globl	C$_sms_manager.c$246$1_0$219
	XG$devkit_SMS_loadPSGaidencompressedTiles$0$0	= .
	.globl	XG$devkit_SMS_loadPSGaidencompressedTiles$0$0
	ret
	G$devkit_UNSAFE_SMS_loadZX7compressedTilesatAddr$0$0	= .
	.globl	G$devkit_UNSAFE_SMS_loadZX7compressedTilesatAddr$0$0
	C$_sms_manager.c$249$1_0$221	= .
	.globl	C$_sms_manager.c$249$1_0$221
;_sms_manager.c:249: void devkit_UNSAFE_SMS_loadZX7compressedTilesatAddr( const void *src, unsigned int dst )
;	---------------------------------
; Function devkit_UNSAFE_SMS_loadZX7compressedTilesatAddr
; ---------------------------------
_devkit_UNSAFE_SMS_loadZX7compressedTilesatAddr::
	C$_sms_manager.c$251$1_0$221	= .
	.globl	C$_sms_manager.c$251$1_0$221
;_sms_manager.c:251: UNSAFE_SMS_loadZX7compressedTilesatAddr( src, dst );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_UNSAFE_SMS_loadZX7compressedTilesatAddr
	pop	af
	pop	af
	C$_sms_manager.c$252$1_0$221	= .
	.globl	C$_sms_manager.c$252$1_0$221
;_sms_manager.c:252: }
	C$_sms_manager.c$252$1_0$221	= .
	.globl	C$_sms_manager.c$252$1_0$221
	XG$devkit_UNSAFE_SMS_loadZX7compressedTilesatAddr$0$0	= .
	.globl	XG$devkit_UNSAFE_SMS_loadZX7compressedTilesatAddr$0$0
	ret
	G$devkit_UNSAFE_SMS_loadZX7compressedTiles$0$0	= .
	.globl	G$devkit_UNSAFE_SMS_loadZX7compressedTiles$0$0
	C$_sms_manager.c$253$1_0$223	= .
	.globl	C$_sms_manager.c$253$1_0$223
;_sms_manager.c:253: void devkit_UNSAFE_SMS_loadZX7compressedTiles( const void *src, unsigned int tilefrom )
;	---------------------------------
; Function devkit_UNSAFE_SMS_loadZX7compressedTiles
; ---------------------------------
_devkit_UNSAFE_SMS_loadZX7compressedTiles::
	C$_sms_manager.c$255$1_0$223	= .
	.globl	C$_sms_manager.c$255$1_0$223
;_sms_manager.c:255: UNSAFE_SMS_loadZX7compressedTiles( src, tilefrom );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	set	6, h
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_UNSAFE_SMS_loadZX7compressedTilesatAddr
	pop	af
	pop	af
	C$_sms_manager.c$256$1_0$223	= .
	.globl	C$_sms_manager.c$256$1_0$223
;_sms_manager.c:256: }
	C$_sms_manager.c$256$1_0$223	= .
	.globl	C$_sms_manager.c$256$1_0$223
	XG$devkit_UNSAFE_SMS_loadZX7compressedTiles$0$0	= .
	.globl	XG$devkit_UNSAFE_SMS_loadZX7compressedTiles$0$0
	ret
	G$devkit_UNSAFE_SMS_loadaPLibcompressedTilesatAddr$0$0	= .
	.globl	G$devkit_UNSAFE_SMS_loadaPLibcompressedTilesatAddr$0$0
	C$_sms_manager.c$257$1_0$225	= .
	.globl	C$_sms_manager.c$257$1_0$225
;_sms_manager.c:257: void devkit_UNSAFE_SMS_loadaPLibcompressedTilesatAddr( const void *src, unsigned int dst )
;	---------------------------------
; Function devkit_UNSAFE_SMS_loadaPLibcompressedTilesatAddr
; ---------------------------------
_devkit_UNSAFE_SMS_loadaPLibcompressedTilesatAddr::
	C$_sms_manager.c$259$1_0$225	= .
	.globl	C$_sms_manager.c$259$1_0$225
;_sms_manager.c:259: UNSAFE_SMS_loadaPLibcompressedTilesatAddr( src, dst );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_UNSAFE_SMS_loadaPLibcompressedTilesatAddr
	pop	af
	pop	af
	C$_sms_manager.c$260$1_0$225	= .
	.globl	C$_sms_manager.c$260$1_0$225
;_sms_manager.c:260: }
	C$_sms_manager.c$260$1_0$225	= .
	.globl	C$_sms_manager.c$260$1_0$225
	XG$devkit_UNSAFE_SMS_loadaPLibcompressedTilesatAddr$0$0	= .
	.globl	XG$devkit_UNSAFE_SMS_loadaPLibcompressedTilesatAddr$0$0
	ret
	G$devkit_UNSAFE_SMS_loadaPLibcompressedTiles$0$0	= .
	.globl	G$devkit_UNSAFE_SMS_loadaPLibcompressedTiles$0$0
	C$_sms_manager.c$261$1_0$227	= .
	.globl	C$_sms_manager.c$261$1_0$227
;_sms_manager.c:261: void devkit_UNSAFE_SMS_loadaPLibcompressedTiles( const void *src, unsigned int tilefrom )
;	---------------------------------
; Function devkit_UNSAFE_SMS_loadaPLibcompressedTiles
; ---------------------------------
_devkit_UNSAFE_SMS_loadaPLibcompressedTiles::
	C$_sms_manager.c$263$1_0$227	= .
	.globl	C$_sms_manager.c$263$1_0$227
;_sms_manager.c:263: UNSAFE_SMS_loadaPLibcompressedTiles( src, tilefrom );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	set	6, h
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_UNSAFE_SMS_loadaPLibcompressedTilesatAddr
	pop	af
	pop	af
	C$_sms_manager.c$264$1_0$227	= .
	.globl	C$_sms_manager.c$264$1_0$227
;_sms_manager.c:264: }
	C$_sms_manager.c$264$1_0$227	= .
	.globl	C$_sms_manager.c$264$1_0$227
	XG$devkit_UNSAFE_SMS_loadaPLibcompressedTiles$0$0	= .
	.globl	XG$devkit_UNSAFE_SMS_loadaPLibcompressedTiles$0$0
	ret
	G$devkit_SMS_loadTileMap$0$0	= .
	.globl	G$devkit_SMS_loadTileMap$0$0
	C$_sms_manager.c$267$1_0$229	= .
	.globl	C$_sms_manager.c$267$1_0$229
;_sms_manager.c:267: void devkit_SMS_loadTileMap( unsigned char x, unsigned char y, unsigned char *src, int size )
;	---------------------------------
; Function devkit_SMS_loadTileMap
; ---------------------------------
_devkit_SMS_loadTileMap::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$_sms_manager.c$269$1_0$229	= .
	.globl	C$_sms_manager.c$269$1_0$229
;_sms_manager.c:269: SMS_loadTileMap( x, y, src, size );
	ld	c, 6 (ix)
	ld	b, 7 (ix)
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, 4 (ix)
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	or	a, #0x78
	ld	h, a
	ld	e, 8 (ix)
	ld	d, 9 (ix)
	push	de
	push	bc
	push	hl
	call	_SMS_VRAMmemcpy
	C$_sms_manager.c$270$1_0$229	= .
	.globl	C$_sms_manager.c$270$1_0$229
;_sms_manager.c:270: }
	pop	ix
	C$_sms_manager.c$270$1_0$229	= .
	.globl	C$_sms_manager.c$270$1_0$229
	XG$devkit_SMS_loadTileMap$0$0	= .
	.globl	XG$devkit_SMS_loadTileMap$0$0
	ret
	G$devkit_SMS_loadTileMapArea$0$0	= .
	.globl	G$devkit_SMS_loadTileMapArea$0$0
	C$_sms_manager.c$271$1_0$231	= .
	.globl	C$_sms_manager.c$271$1_0$231
;_sms_manager.c:271: void devkit_SMS_loadTileMapArea( unsigned char x, unsigned char y, void *src, unsigned char width, unsigned char height )
;	---------------------------------
; Function devkit_SMS_loadTileMapArea
; ---------------------------------
_devkit_SMS_loadTileMapArea::
	C$_sms_manager.c$273$1_0$231	= .
	.globl	C$_sms_manager.c$273$1_0$231
;_sms_manager.c:273: SMS_loadTileMapArea( x, y, src, width, height );
	ld	iy, #7
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
	dec	iy
	dec	iy
	push	hl
	ld	a, -1 (iy)
	dec	iy
	push	af
	inc	sp
	ld	a, -1 (iy)
	push	af
	inc	sp
	call	_SMS_loadTileMapArea
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$_sms_manager.c$274$1_0$231	= .
	.globl	C$_sms_manager.c$274$1_0$231
;_sms_manager.c:274: }
	C$_sms_manager.c$274$1_0$231	= .
	.globl	C$_sms_manager.c$274$1_0$231
	XG$devkit_SMS_loadTileMapArea$0$0	= .
	.globl	XG$devkit_SMS_loadTileMapArea$0$0
	ret
	G$devkit_SMS_loadSTMcompressedTileMapatAddr$0$0	= .
	.globl	G$devkit_SMS_loadSTMcompressedTileMapatAddr$0$0
	C$_sms_manager.c$276$1_0$233	= .
	.globl	C$_sms_manager.c$276$1_0$233
;_sms_manager.c:276: void devkit_SMS_loadSTMcompressedTileMapatAddr( unsigned int dst, const void *src )
;	---------------------------------
; Function devkit_SMS_loadSTMcompressedTileMapatAddr
; ---------------------------------
_devkit_SMS_loadSTMcompressedTileMapatAddr::
	C$_sms_manager.c$278$1_0$233	= .
	.globl	C$_sms_manager.c$278$1_0$233
;_sms_manager.c:278: SMS_loadSTMcompressedTileMapatAddr( dst, src );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_SMS_loadSTMcompressedTileMapatAddr
	pop	af
	pop	af
	C$_sms_manager.c$279$1_0$233	= .
	.globl	C$_sms_manager.c$279$1_0$233
;_sms_manager.c:279: }
	C$_sms_manager.c$279$1_0$233	= .
	.globl	C$_sms_manager.c$279$1_0$233
	XG$devkit_SMS_loadSTMcompressedTileMapatAddr$0$0	= .
	.globl	XG$devkit_SMS_loadSTMcompressedTileMapatAddr$0$0
	ret
	G$devkit_SMS_loadSTMcompressedTileMap$0$0	= .
	.globl	G$devkit_SMS_loadSTMcompressedTileMap$0$0
	C$_sms_manager.c$280$1_0$235	= .
	.globl	C$_sms_manager.c$280$1_0$235
;_sms_manager.c:280: void devkit_SMS_loadSTMcompressedTileMap( unsigned char x, unsigned char y, unsigned char *src )
;	---------------------------------
; Function devkit_SMS_loadSTMcompressedTileMap
; ---------------------------------
_devkit_SMS_loadSTMcompressedTileMap::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$_sms_manager.c$282$1_0$235	= .
	.globl	C$_sms_manager.c$282$1_0$235
;_sms_manager.c:282: SMS_loadSTMcompressedTileMap( x, y, src );
	ld	c, 6 (ix)
	ld	b, 7 (ix)
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, 4 (ix)
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	or	a, #0x78
	ld	h, a
	push	bc
	push	hl
	call	_SMS_loadSTMcompressedTileMapatAddr
	pop	af
	pop	af
	C$_sms_manager.c$283$1_0$235	= .
	.globl	C$_sms_manager.c$283$1_0$235
;_sms_manager.c:283: }
	pop	ix
	C$_sms_manager.c$283$1_0$235	= .
	.globl	C$_sms_manager.c$283$1_0$235
	XG$devkit_SMS_loadSTMcompressedTileMap$0$0	= .
	.globl	XG$devkit_SMS_loadSTMcompressedTileMap$0$0
	ret
	G$devkit_SMS_loadSTMcompressedTileMapArea$0$0	= .
	.globl	G$devkit_SMS_loadSTMcompressedTileMapArea$0$0
	C$_sms_manager.c$284$1_0$237	= .
	.globl	C$_sms_manager.c$284$1_0$237
;_sms_manager.c:284: void devkit_SMS_loadSTMcompressedTileMapArea( unsigned char x, unsigned char y, unsigned char *src /*, unsigned char w*/ )
;	---------------------------------
; Function devkit_SMS_loadSTMcompressedTileMapArea
; ---------------------------------
_devkit_SMS_loadSTMcompressedTileMapArea::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$_sms_manager.c$286$1_0$237	= .
	.globl	C$_sms_manager.c$286$1_0$237
;_sms_manager.c:286: SMS_loadSTMcompressedTileMapArea( x, y, src, 0 /*, w*/ );
	ld	c, 6 (ix)
	ld	b, 7 (ix)
	ld	l, 5 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	e, 4 (ix)
	ld	d, #0x00
	add	hl, de
	add	hl, hl
	ld	a, h
	or	a, #0x78
	ld	h, a
	push	bc
	push	hl
	call	_SMS_loadSTMcompressedTileMapatAddr
	pop	af
	pop	af
	C$_sms_manager.c$287$1_0$237	= .
	.globl	C$_sms_manager.c$287$1_0$237
;_sms_manager.c:287: }
	pop	ix
	C$_sms_manager.c$287$1_0$237	= .
	.globl	C$_sms_manager.c$287$1_0$237
	XG$devkit_SMS_loadSTMcompressedTileMapArea$0$0	= .
	.globl	XG$devkit_SMS_loadSTMcompressedTileMapArea$0$0
	ret
	G$devkit_SMS_initSprites$0$0	= .
	.globl	G$devkit_SMS_initSprites$0$0
	C$_sms_manager.c$290$1_0$238	= .
	.globl	C$_sms_manager.c$290$1_0$238
;_sms_manager.c:290: void devkit_SMS_initSprites()
;	---------------------------------
; Function devkit_SMS_initSprites
; ---------------------------------
_devkit_SMS_initSprites::
	C$_sms_manager.c$292$1_0$238	= .
	.globl	C$_sms_manager.c$292$1_0$238
;_sms_manager.c:292: SMS_initSprites();
	C$_sms_manager.c$293$1_0$238	= .
	.globl	C$_sms_manager.c$293$1_0$238
;_sms_manager.c:293: }
	C$_sms_manager.c$293$1_0$238	= .
	.globl	C$_sms_manager.c$293$1_0$238
	XG$devkit_SMS_initSprites$0$0	= .
	.globl	XG$devkit_SMS_initSprites$0$0
	jp	_SMS_initSprites
	G$devkit_SMS_addSprite$0$0	= .
	.globl	G$devkit_SMS_addSprite$0$0
	C$_sms_manager.c$294$1_0$240	= .
	.globl	C$_sms_manager.c$294$1_0$240
;_sms_manager.c:294: void devkit_SMS_addSprite( unsigned char x, unsigned char y, int tile )
;	---------------------------------
; Function devkit_SMS_addSprite
; ---------------------------------
_devkit_SMS_addSprite::
	C$_sms_manager.c$296$1_0$240	= .
	.globl	C$_sms_manager.c$296$1_0$240
;_sms_manager.c:296: SMS_addSprite( x, y, tile );
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
	C$_sms_manager.c$297$1_0$240	= .
	.globl	C$_sms_manager.c$297$1_0$240
;_sms_manager.c:297: }
	C$_sms_manager.c$297$1_0$240	= .
	.globl	C$_sms_manager.c$297$1_0$240
	XG$devkit_SMS_addSprite$0$0	= .
	.globl	XG$devkit_SMS_addSprite$0$0
	ret
	G$devkit_SMS_addTwoAdjoiningSprites$0$0	= .
	.globl	G$devkit_SMS_addTwoAdjoiningSprites$0$0
	C$_sms_manager.c$298$1_0$242	= .
	.globl	C$_sms_manager.c$298$1_0$242
;_sms_manager.c:298: void devkit_SMS_addTwoAdjoiningSprites( unsigned char x, unsigned char y, unsigned char tile )
;	---------------------------------
; Function devkit_SMS_addTwoAdjoiningSprites
; ---------------------------------
_devkit_SMS_addTwoAdjoiningSprites::
	C$_sms_manager.c$300$1_0$242	= .
	.globl	C$_sms_manager.c$300$1_0$242
;_sms_manager.c:300: SMS_addTwoAdjoiningSprites( x, y, tile );
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
	call	_SMS_addTwoAdjoiningSprites
	pop	af
	inc	sp
	C$_sms_manager.c$301$1_0$242	= .
	.globl	C$_sms_manager.c$301$1_0$242
;_sms_manager.c:301: }
	C$_sms_manager.c$301$1_0$242	= .
	.globl	C$_sms_manager.c$301$1_0$242
	XG$devkit_SMS_addTwoAdjoiningSprites$0$0	= .
	.globl	XG$devkit_SMS_addTwoAdjoiningSprites$0$0
	ret
	G$devkit_SMS_addThreeAdjoiningSprites$0$0	= .
	.globl	G$devkit_SMS_addThreeAdjoiningSprites$0$0
	C$_sms_manager.c$302$1_0$244	= .
	.globl	C$_sms_manager.c$302$1_0$244
;_sms_manager.c:302: void devkit_SMS_addThreeAdjoiningSprites( unsigned char x, unsigned char y, unsigned char tile )
;	---------------------------------
; Function devkit_SMS_addThreeAdjoiningSprites
; ---------------------------------
_devkit_SMS_addThreeAdjoiningSprites::
	C$_sms_manager.c$304$1_0$244	= .
	.globl	C$_sms_manager.c$304$1_0$244
;_sms_manager.c:304: SMS_addThreeAdjoiningSprites( x, y, tile );
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
	call	_SMS_addThreeAdjoiningSprites
	pop	af
	inc	sp
	C$_sms_manager.c$305$1_0$244	= .
	.globl	C$_sms_manager.c$305$1_0$244
;_sms_manager.c:305: }
	C$_sms_manager.c$305$1_0$244	= .
	.globl	C$_sms_manager.c$305$1_0$244
	XG$devkit_SMS_addThreeAdjoiningSprites$0$0	= .
	.globl	XG$devkit_SMS_addThreeAdjoiningSprites$0$0
	ret
	G$devkit_SMS_reserveSprite$0$0	= .
	.globl	G$devkit_SMS_reserveSprite$0$0
	C$_sms_manager.c$306$1_0$246	= .
	.globl	C$_sms_manager.c$306$1_0$246
;_sms_manager.c:306: signed char devkit_SMS_reserveSprite( void )
;	---------------------------------
; Function devkit_SMS_reserveSprite
; ---------------------------------
_devkit_SMS_reserveSprite::
	C$_sms_manager.c$308$1_0$246	= .
	.globl	C$_sms_manager.c$308$1_0$246
;_sms_manager.c:308: return SMS_reserveSprite();
	C$_sms_manager.c$309$1_0$246	= .
	.globl	C$_sms_manager.c$309$1_0$246
;_sms_manager.c:309: }
	C$_sms_manager.c$309$1_0$246	= .
	.globl	C$_sms_manager.c$309$1_0$246
	XG$devkit_SMS_reserveSprite$0$0	= .
	.globl	XG$devkit_SMS_reserveSprite$0$0
	jp	_SMS_reserveSprite
	G$devkit_SMS_updateSpritePosition$0$0	= .
	.globl	G$devkit_SMS_updateSpritePosition$0$0
	C$_sms_manager.c$310$1_0$248	= .
	.globl	C$_sms_manager.c$310$1_0$248
;_sms_manager.c:310: void devkit_SMS_updateSpritePosition( signed char sprite, unsigned char x, unsigned char y )
;	---------------------------------
; Function devkit_SMS_updateSpritePosition
; ---------------------------------
_devkit_SMS_updateSpritePosition::
	C$_sms_manager.c$312$1_0$248	= .
	.globl	C$_sms_manager.c$312$1_0$248
;_sms_manager.c:312: SMS_updateSpritePosition( sprite, x, y );
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
	call	_SMS_updateSpritePosition
	pop	af
	inc	sp
	C$_sms_manager.c$313$1_0$248	= .
	.globl	C$_sms_manager.c$313$1_0$248
;_sms_manager.c:313: }
	C$_sms_manager.c$313$1_0$248	= .
	.globl	C$_sms_manager.c$313$1_0$248
	XG$devkit_SMS_updateSpritePosition$0$0	= .
	.globl	XG$devkit_SMS_updateSpritePosition$0$0
	ret
	G$devkit_SMS_updateSpriteImage$0$0	= .
	.globl	G$devkit_SMS_updateSpriteImage$0$0
	C$_sms_manager.c$314$1_0$250	= .
	.globl	C$_sms_manager.c$314$1_0$250
;_sms_manager.c:314: void devkit_SMS_updateSpriteImage( signed char sprite, unsigned char tile )
;	---------------------------------
; Function devkit_SMS_updateSpriteImage
; ---------------------------------
_devkit_SMS_updateSpriteImage::
	C$_sms_manager.c$316$1_0$250	= .
	.globl	C$_sms_manager.c$316$1_0$250
;_sms_manager.c:316: SMS_updateSpriteImage( sprite, tile );
	ld	iy, #3
	add	iy, sp
	ld	h, 0 (iy)
	ld	l, -1 (iy)
	push	hl
	call	_SMS_updateSpriteImage
	pop	af
	C$_sms_manager.c$317$1_0$250	= .
	.globl	C$_sms_manager.c$317$1_0$250
;_sms_manager.c:317: }
	C$_sms_manager.c$317$1_0$250	= .
	.globl	C$_sms_manager.c$317$1_0$250
	XG$devkit_SMS_updateSpriteImage$0$0	= .
	.globl	XG$devkit_SMS_updateSpriteImage$0$0
	ret
	G$devkit_SMS_hideSprite$0$0	= .
	.globl	G$devkit_SMS_hideSprite$0$0
	C$_sms_manager.c$318$1_0$252	= .
	.globl	C$_sms_manager.c$318$1_0$252
;_sms_manager.c:318: void devkit_SMS_hideSprite( signed char sprite )
;	---------------------------------
; Function devkit_SMS_hideSprite
; ---------------------------------
_devkit_SMS_hideSprite::
	C$_sms_manager.c$320$1_0$252	= .
	.globl	C$_sms_manager.c$320$1_0$252
;_sms_manager.c:320: SMS_hideSprite( sprite );
	ld	hl, #2
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_SMS_hideSprite
	inc	sp
	C$_sms_manager.c$321$1_0$252	= .
	.globl	C$_sms_manager.c$321$1_0$252
;_sms_manager.c:321: }
	C$_sms_manager.c$321$1_0$252	= .
	.globl	C$_sms_manager.c$321$1_0$252
	XG$devkit_SMS_hideSprite$0$0	= .
	.globl	XG$devkit_SMS_hideSprite$0$0
	ret
	G$devkit_SMS_setClippingWindow$0$0	= .
	.globl	G$devkit_SMS_setClippingWindow$0$0
	C$_sms_manager.c$322$1_0$254	= .
	.globl	C$_sms_manager.c$322$1_0$254
;_sms_manager.c:322: void devkit_SMS_setClippingWindow( unsigned char x0, unsigned char y0, unsigned char x1, unsigned char y1 )
;	---------------------------------
; Function devkit_SMS_setClippingWindow
; ---------------------------------
_devkit_SMS_setClippingWindow::
	C$_sms_manager.c$324$1_0$254	= .
	.globl	C$_sms_manager.c$324$1_0$254
;_sms_manager.c:324: SMS_setClippingWindow( x0, y0, x1, y1 );
	ld	iy, #5
	add	iy, sp
	ld	a, 0 (iy)
	push	af
	inc	sp
	ld	a, -1 (iy)
	dec	iy
	push	af
	inc	sp
	ld	a, -1 (iy)
	dec	iy
	push	af
	inc	sp
	ld	a, -1 (iy)
	push	af
	inc	sp
	call	_SMS_setClippingWindow
	pop	af
	pop	af
	C$_sms_manager.c$325$1_0$254	= .
	.globl	C$_sms_manager.c$325$1_0$254
;_sms_manager.c:325: }
	C$_sms_manager.c$325$1_0$254	= .
	.globl	C$_sms_manager.c$325$1_0$254
	XG$devkit_SMS_setClippingWindow$0$0	= .
	.globl	XG$devkit_SMS_setClippingWindow$0$0
	ret
	G$devkit_SMS_addSpriteClipping$0$0	= .
	.globl	G$devkit_SMS_addSpriteClipping$0$0
	C$_sms_manager.c$326$1_0$256	= .
	.globl	C$_sms_manager.c$326$1_0$256
;_sms_manager.c:326: signed char devkit_SMS_addSpriteClipping( int x, int y, unsigned char tile )
;	---------------------------------
; Function devkit_SMS_addSpriteClipping
; ---------------------------------
_devkit_SMS_addSpriteClipping::
	C$_sms_manager.c$328$1_0$256	= .
	.globl	C$_sms_manager.c$328$1_0$256
;_sms_manager.c:328: return SMS_addSpriteClipping( x, y, tile );
	ld	iy, #6
	add	iy, sp
	ld	a, 0 (iy)
	push	af
	inc	sp
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	dec	iy
	dec	iy
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_SMS_addSpriteClipping
	pop	af
	pop	af
	inc	sp
	C$_sms_manager.c$329$1_0$256	= .
	.globl	C$_sms_manager.c$329$1_0$256
;_sms_manager.c:329: }
	C$_sms_manager.c$329$1_0$256	= .
	.globl	C$_sms_manager.c$329$1_0$256
	XG$devkit_SMS_addSpriteClipping$0$0	= .
	.globl	XG$devkit_SMS_addSpriteClipping$0$0
	ret
	G$devkit_SMS_finalizeSprites$0$0	= .
	.globl	G$devkit_SMS_finalizeSprites$0$0
	C$_sms_manager.c$330$1_0$257	= .
	.globl	C$_sms_manager.c$330$1_0$257
;_sms_manager.c:330: void devkit_SMS_finalizeSprites()
;	---------------------------------
; Function devkit_SMS_finalizeSprites
; ---------------------------------
_devkit_SMS_finalizeSprites::
	C$_sms_manager.c$332$1_0$257	= .
	.globl	C$_sms_manager.c$332$1_0$257
;_sms_manager.c:332: SMS_finalizeSprites();
	C$_sms_manager.c$333$1_0$257	= .
	.globl	C$_sms_manager.c$333$1_0$257
;_sms_manager.c:333: }
	C$_sms_manager.c$333$1_0$257	= .
	.globl	C$_sms_manager.c$333$1_0$257
	XG$devkit_SMS_finalizeSprites$0$0	= .
	.globl	XG$devkit_SMS_finalizeSprites$0$0
	jp	_SMS_finalizeSprites
	G$devkit_SMS_copySpritestoSAT$0$0	= .
	.globl	G$devkit_SMS_copySpritestoSAT$0$0
	C$_sms_manager.c$334$1_0$258	= .
	.globl	C$_sms_manager.c$334$1_0$258
;_sms_manager.c:334: void devkit_SMS_copySpritestoSAT()
;	---------------------------------
; Function devkit_SMS_copySpritestoSAT
; ---------------------------------
_devkit_SMS_copySpritestoSAT::
	C$_sms_manager.c$336$1_0$258	= .
	.globl	C$_sms_manager.c$336$1_0$258
;_sms_manager.c:336: SMS_copySpritestoSAT();
	C$_sms_manager.c$337$1_0$258	= .
	.globl	C$_sms_manager.c$337$1_0$258
;_sms_manager.c:337: }
	C$_sms_manager.c$337$1_0$258	= .
	.globl	C$_sms_manager.c$337$1_0$258
	XG$devkit_SMS_copySpritestoSAT$0$0	= .
	.globl	XG$devkit_SMS_copySpritestoSAT$0$0
	jp	_SMS_copySpritestoSAT
	G$devkit_SMS_setBGPaletteColor$0$0	= .
	.globl	G$devkit_SMS_setBGPaletteColor$0$0
	C$_sms_manager.c$347$1_0$260	= .
	.globl	C$_sms_manager.c$347$1_0$260
;_sms_manager.c:347: void devkit_SMS_setBGPaletteColor( unsigned char entry, unsigned char color )
;	---------------------------------
; Function devkit_SMS_setBGPaletteColor
; ---------------------------------
_devkit_SMS_setBGPaletteColor::
	C$_sms_manager.c$349$1_0$260	= .
	.globl	C$_sms_manager.c$349$1_0$260
;_sms_manager.c:349: SMS_setBGPaletteColor( entry, color );
	ld	iy, #3
	add	iy, sp
	ld	h, 0 (iy)
	ld	l, -1 (iy)
	push	hl
	call	_SMS_setBGPaletteColor
	pop	af
	C$_sms_manager.c$350$1_0$260	= .
	.globl	C$_sms_manager.c$350$1_0$260
;_sms_manager.c:350: }
	C$_sms_manager.c$350$1_0$260	= .
	.globl	C$_sms_manager.c$350$1_0$260
	XG$devkit_SMS_setBGPaletteColor$0$0	= .
	.globl	XG$devkit_SMS_setBGPaletteColor$0$0
	ret
	G$devkit_SMS_setSpritePaletteColor$0$0	= .
	.globl	G$devkit_SMS_setSpritePaletteColor$0$0
	C$_sms_manager.c$351$1_0$262	= .
	.globl	C$_sms_manager.c$351$1_0$262
;_sms_manager.c:351: void devkit_SMS_setSpritePaletteColor( unsigned char entry, unsigned char color )
;	---------------------------------
; Function devkit_SMS_setSpritePaletteColor
; ---------------------------------
_devkit_SMS_setSpritePaletteColor::
	C$_sms_manager.c$353$1_0$262	= .
	.globl	C$_sms_manager.c$353$1_0$262
;_sms_manager.c:353: SMS_setSpritePaletteColor( entry, color );
	ld	iy, #3
	add	iy, sp
	ld	h, 0 (iy)
	ld	l, -1 (iy)
	push	hl
	call	_SMS_setSpritePaletteColor
	pop	af
	C$_sms_manager.c$354$1_0$262	= .
	.globl	C$_sms_manager.c$354$1_0$262
;_sms_manager.c:354: }
	C$_sms_manager.c$354$1_0$262	= .
	.globl	C$_sms_manager.c$354$1_0$262
	XG$devkit_SMS_setSpritePaletteColor$0$0	= .
	.globl	XG$devkit_SMS_setSpritePaletteColor$0$0
	ret
	G$devkit_SMS_loadBGPalette$0$0	= .
	.globl	G$devkit_SMS_loadBGPalette$0$0
	C$_sms_manager.c$355$1_0$264	= .
	.globl	C$_sms_manager.c$355$1_0$264
;_sms_manager.c:355: void devkit_SMS_loadBGPalette( void *palette )
;	---------------------------------
; Function devkit_SMS_loadBGPalette
; ---------------------------------
_devkit_SMS_loadBGPalette::
	C$_sms_manager.c$357$1_0$264	= .
	.globl	C$_sms_manager.c$357$1_0$264
;_sms_manager.c:357: SMS_loadBGPalette( palette );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	C$_sms_manager.c$358$1_0$264	= .
	.globl	C$_sms_manager.c$358$1_0$264
;_sms_manager.c:358: }
	C$_sms_manager.c$358$1_0$264	= .
	.globl	C$_sms_manager.c$358$1_0$264
	XG$devkit_SMS_loadBGPalette$0$0	= .
	.globl	XG$devkit_SMS_loadBGPalette$0$0
	jp	_SMS_loadBGPalette
	G$devkit_SMS_loadSpritePalette$0$0	= .
	.globl	G$devkit_SMS_loadSpritePalette$0$0
	C$_sms_manager.c$359$1_0$266	= .
	.globl	C$_sms_manager.c$359$1_0$266
;_sms_manager.c:359: void devkit_SMS_loadSpritePalette( void *palette )
;	---------------------------------
; Function devkit_SMS_loadSpritePalette
; ---------------------------------
_devkit_SMS_loadSpritePalette::
	C$_sms_manager.c$361$1_0$266	= .
	.globl	C$_sms_manager.c$361$1_0$266
;_sms_manager.c:361: SMS_loadSpritePalette( palette );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	C$_sms_manager.c$362$1_0$266	= .
	.globl	C$_sms_manager.c$362$1_0$266
;_sms_manager.c:362: }
	C$_sms_manager.c$362$1_0$266	= .
	.globl	C$_sms_manager.c$362$1_0$266
	XG$devkit_SMS_loadSpritePalette$0$0	= .
	.globl	XG$devkit_SMS_loadSpritePalette$0$0
	jp	_SMS_loadSpritePalette
	G$devkit_SMS_setNextBGColoratIndex$0$0	= .
	.globl	G$devkit_SMS_setNextBGColoratIndex$0$0
	C$_sms_manager.c$363$1_0$268	= .
	.globl	C$_sms_manager.c$363$1_0$268
;_sms_manager.c:363: void devkit_SMS_setNextBGColoratIndex( const unsigned char i )
;	---------------------------------
; Function devkit_SMS_setNextBGColoratIndex
; ---------------------------------
_devkit_SMS_setNextBGColoratIndex::
	C$_sms_manager.c$365$1_0$268	= .
	.globl	C$_sms_manager.c$365$1_0$268
;_sms_manager.c:365: SMS_setNextBGColoratIndex( i );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	xor	a, a
	or	a, #0xc0
	ld	h, a
	C$_sms_manager.c$366$1_0$268	= .
	.globl	C$_sms_manager.c$366$1_0$268
;_sms_manager.c:366: }
	C$_sms_manager.c$366$1_0$268	= .
	.globl	C$_sms_manager.c$366$1_0$268
	XG$devkit_SMS_setNextBGColoratIndex$0$0	= .
	.globl	XG$devkit_SMS_setNextBGColoratIndex$0$0
	jp	_SMS_crt0_RST08
	G$devkit_SMS_setNextSpriteColoratIndex$0$0	= .
	.globl	G$devkit_SMS_setNextSpriteColoratIndex$0$0
	C$_sms_manager.c$367$1_0$270	= .
	.globl	C$_sms_manager.c$367$1_0$270
;_sms_manager.c:367: void devkit_SMS_setNextSpriteColoratIndex( const unsigned char i )
;	---------------------------------
; Function devkit_SMS_setNextSpriteColoratIndex
; ---------------------------------
_devkit_SMS_setNextSpriteColoratIndex::
	C$_sms_manager.c$369$1_0$270	= .
	.globl	C$_sms_manager.c$369$1_0$270
;_sms_manager.c:369: SMS_setNextSpriteColoratIndex( i );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	xor	a, a
	set	4, l
	or	a, #0xc0
	ld	h, a
	C$_sms_manager.c$370$1_0$270	= .
	.globl	C$_sms_manager.c$370$1_0$270
;_sms_manager.c:370: }
	C$_sms_manager.c$370$1_0$270	= .
	.globl	C$_sms_manager.c$370$1_0$270
	XG$devkit_SMS_setNextSpriteColoratIndex$0$0	= .
	.globl	XG$devkit_SMS_setNextSpriteColoratIndex$0$0
	jp	_SMS_crt0_RST08
	G$devkit_SMS_setColor$0$0	= .
	.globl	G$devkit_SMS_setColor$0$0
	C$_sms_manager.c$371$1_0$272	= .
	.globl	C$_sms_manager.c$371$1_0$272
;_sms_manager.c:371: void devkit_SMS_setColor( unsigned char color )
;	---------------------------------
; Function devkit_SMS_setColor
; ---------------------------------
_devkit_SMS_setColor::
	C$_sms_manager.c$373$1_0$272	= .
	.globl	C$_sms_manager.c$373$1_0$272
;_sms_manager.c:373: SMS_setColor( color );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	C$_sms_manager.c$374$1_0$272	= .
	.globl	C$_sms_manager.c$374$1_0$272
;_sms_manager.c:374: }
	C$_sms_manager.c$374$1_0$272	= .
	.globl	C$_sms_manager.c$374$1_0$272
	XG$devkit_SMS_setColor$0$0	= .
	.globl	XG$devkit_SMS_setColor$0$0
	jp	_SMS_setColor
	G$devkit_RGB$0$0	= .
	.globl	G$devkit_RGB$0$0
	C$_sms_manager.c$377$1_0$274	= .
	.globl	C$_sms_manager.c$377$1_0$274
;_sms_manager.c:377: unsigned char devkit_RGB( const unsigned char r, const unsigned char g, const unsigned char b )
;	---------------------------------
; Function devkit_RGB
; ---------------------------------
_devkit_RGB::
	C$_sms_manager.c$379$1_0$274	= .
	.globl	C$_sms_manager.c$379$1_0$274
;_sms_manager.c:379: return RGB( r, g, b );
	ld	iy, #3
	add	iy, sp
	ld	a, 0 (iy)
	add	a, a
	add	a, a
	dec	iy
	or	a, 0 (iy)
	ld	c, a
	ld	a, 2 (iy)
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	or	a, c
	ld	l, a
	C$_sms_manager.c$380$1_0$274	= .
	.globl	C$_sms_manager.c$380$1_0$274
;_sms_manager.c:380: }
	C$_sms_manager.c$380$1_0$274	= .
	.globl	C$_sms_manager.c$380$1_0$274
	XG$devkit_RGB$0$0	= .
	.globl	XG$devkit_RGB$0$0
	ret
	G$devkit_RGB8$0$0	= .
	.globl	G$devkit_RGB8$0$0
	C$_sms_manager.c$381$1_0$276	= .
	.globl	C$_sms_manager.c$381$1_0$276
;_sms_manager.c:381: unsigned char devkit_RGB8( const unsigned char r, const unsigned char g, const unsigned char b )
;	---------------------------------
; Function devkit_RGB8
; ---------------------------------
_devkit_RGB8::
	C$_sms_manager.c$383$1_0$276	= .
	.globl	C$_sms_manager.c$383$1_0$276
;_sms_manager.c:383: return RGB8( r, g, b );
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	rlca
	rlca
	and	a, #0x03
	ld	c, a
	ld	a, 1 (iy)
	inc	iy
	rlca
	rlca
	and	a, #0x03
	add	a, a
	add	a, a
	or	a, c
	ld	c, a
	ld	a, 1 (iy)
	rlca
	rlca
	and	a, #0x03
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	or	a, c
	ld	l, a
	C$_sms_manager.c$384$1_0$276	= .
	.globl	C$_sms_manager.c$384$1_0$276
;_sms_manager.c:384: }
	C$_sms_manager.c$384$1_0$276	= .
	.globl	C$_sms_manager.c$384$1_0$276
	XG$devkit_RGB8$0$0	= .
	.globl	XG$devkit_RGB8$0$0
	ret
	G$devkit_SMS_loadBGPaletteHalfBrightness$0$0	= .
	.globl	G$devkit_SMS_loadBGPaletteHalfBrightness$0$0
	C$_sms_manager.c$390$1_0$278	= .
	.globl	C$_sms_manager.c$390$1_0$278
;_sms_manager.c:390: void devkit_SMS_loadBGPaletteHalfBrightness( void *palette )
;	---------------------------------
; Function devkit_SMS_loadBGPaletteHalfBrightness
; ---------------------------------
_devkit_SMS_loadBGPaletteHalfBrightness::
	C$_sms_manager.c$392$1_0$278	= .
	.globl	C$_sms_manager.c$392$1_0$278
;_sms_manager.c:392: SMS_loadBGPaletteHalfBrightness( palette );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	C$_sms_manager.c$393$1_0$278	= .
	.globl	C$_sms_manager.c$393$1_0$278
;_sms_manager.c:393: }
	C$_sms_manager.c$393$1_0$278	= .
	.globl	C$_sms_manager.c$393$1_0$278
	XG$devkit_SMS_loadBGPaletteHalfBrightness$0$0	= .
	.globl	XG$devkit_SMS_loadBGPaletteHalfBrightness$0$0
	jp	_SMS_loadBGPaletteHalfBrightness
	G$devkit_SMS_loadSpritePaletteHalfBrightness$0$0	= .
	.globl	G$devkit_SMS_loadSpritePaletteHalfBrightness$0$0
	C$_sms_manager.c$394$1_0$280	= .
	.globl	C$_sms_manager.c$394$1_0$280
;_sms_manager.c:394: void devkit_SMS_loadSpritePaletteHalfBrightness( void *palette )
;	---------------------------------
; Function devkit_SMS_loadSpritePaletteHalfBrightness
; ---------------------------------
_devkit_SMS_loadSpritePaletteHalfBrightness::
	C$_sms_manager.c$396$1_0$280	= .
	.globl	C$_sms_manager.c$396$1_0$280
;_sms_manager.c:396: SMS_loadSpritePaletteHalfBrightness( palette );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	C$_sms_manager.c$397$1_0$280	= .
	.globl	C$_sms_manager.c$397$1_0$280
;_sms_manager.c:397: }
	C$_sms_manager.c$397$1_0$280	= .
	.globl	C$_sms_manager.c$397$1_0$280
	XG$devkit_SMS_loadSpritePaletteHalfBrightness$0$0	= .
	.globl	XG$devkit_SMS_loadSpritePaletteHalfBrightness$0$0
	jp	_SMS_loadSpritePaletteHalfBrightness
	G$devkit_SMS_zeroBGPalette$0$0	= .
	.globl	G$devkit_SMS_zeroBGPalette$0$0
	C$_sms_manager.c$398$1_0$282	= .
	.globl	C$_sms_manager.c$398$1_0$282
;_sms_manager.c:398: void devkit_SMS_zeroBGPalette( void )
;	---------------------------------
; Function devkit_SMS_zeroBGPalette
; ---------------------------------
_devkit_SMS_zeroBGPalette::
	C$_sms_manager.c$400$1_0$282	= .
	.globl	C$_sms_manager.c$400$1_0$282
;_sms_manager.c:400: SMS_zeroBGPalette();
	C$_sms_manager.c$401$1_0$282	= .
	.globl	C$_sms_manager.c$401$1_0$282
;_sms_manager.c:401: }
	C$_sms_manager.c$401$1_0$282	= .
	.globl	C$_sms_manager.c$401$1_0$282
	XG$devkit_SMS_zeroBGPalette$0$0	= .
	.globl	XG$devkit_SMS_zeroBGPalette$0$0
	jp	_SMS_zeroBGPalette
	G$devkit_SMS_zeroSpritePalette$0$0	= .
	.globl	G$devkit_SMS_zeroSpritePalette$0$0
	C$_sms_manager.c$402$1_0$284	= .
	.globl	C$_sms_manager.c$402$1_0$284
;_sms_manager.c:402: void devkit_SMS_zeroSpritePalette( void )
;	---------------------------------
; Function devkit_SMS_zeroSpritePalette
; ---------------------------------
_devkit_SMS_zeroSpritePalette::
	C$_sms_manager.c$404$1_0$284	= .
	.globl	C$_sms_manager.c$404$1_0$284
;_sms_manager.c:404: SMS_zeroSpritePalette();
	C$_sms_manager.c$405$1_0$284	= .
	.globl	C$_sms_manager.c$405$1_0$284
;_sms_manager.c:405: }
	C$_sms_manager.c$405$1_0$284	= .
	.globl	C$_sms_manager.c$405$1_0$284
	XG$devkit_SMS_zeroSpritePalette$0$0	= .
	.globl	XG$devkit_SMS_zeroSpritePalette$0$0
	jp	_SMS_zeroSpritePalette
	G$devkit_SMS_configureTextRenderer$0$0	= .
	.globl	G$devkit_SMS_configureTextRenderer$0$0
	C$_sms_manager.c$408$1_0$286	= .
	.globl	C$_sms_manager.c$408$1_0$286
;_sms_manager.c:408: void devkit_SMS_configureTextRenderer( signed int ascii_to_tile_offset )
;	---------------------------------
; Function devkit_SMS_configureTextRenderer
; ---------------------------------
_devkit_SMS_configureTextRenderer::
	C$_sms_manager.c$410$1_0$286	= .
	.globl	C$_sms_manager.c$410$1_0$286
;_sms_manager.c:410: SMS_configureTextRenderer( ascii_to_tile_offset );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	C$_sms_manager.c$411$1_0$286	= .
	.globl	C$_sms_manager.c$411$1_0$286
;_sms_manager.c:411: }
	C$_sms_manager.c$411$1_0$286	= .
	.globl	C$_sms_manager.c$411$1_0$286
	XG$devkit_SMS_configureTextRenderer$0$0	= .
	.globl	XG$devkit_SMS_configureTextRenderer$0$0
	jp	_SMS_configureTextRenderer
	G$devkit_SMS_autoSetUpTextRenderer$0$0	= .
	.globl	G$devkit_SMS_autoSetUpTextRenderer$0$0
	C$_sms_manager.c$412$1_0$288	= .
	.globl	C$_sms_manager.c$412$1_0$288
;_sms_manager.c:412: void devkit_SMS_autoSetUpTextRenderer( void )
;	---------------------------------
; Function devkit_SMS_autoSetUpTextRenderer
; ---------------------------------
_devkit_SMS_autoSetUpTextRenderer::
	C$_sms_manager.c$414$1_0$288	= .
	.globl	C$_sms_manager.c$414$1_0$288
;_sms_manager.c:414: SMS_autoSetUpTextRenderer();
	C$_sms_manager.c$415$1_0$288	= .
	.globl	C$_sms_manager.c$415$1_0$288
;_sms_manager.c:415: }
	C$_sms_manager.c$415$1_0$288	= .
	.globl	C$_sms_manager.c$415$1_0$288
	XG$devkit_SMS_autoSetUpTextRenderer$0$0	= .
	.globl	XG$devkit_SMS_autoSetUpTextRenderer$0$0
	jp	_SMS_autoSetUpTextRenderer
	G$devkit_SMS_decompressZX7$0$0	= .
	.globl	G$devkit_SMS_decompressZX7$0$0
	C$_sms_manager.c$418$1_0$290	= .
	.globl	C$_sms_manager.c$418$1_0$290
;_sms_manager.c:418: void devkit_SMS_decompressZX7( const void *src, void *dst )
;	---------------------------------
; Function devkit_SMS_decompressZX7
; ---------------------------------
_devkit_SMS_decompressZX7::
	C$_sms_manager.c$420$1_0$290	= .
	.globl	C$_sms_manager.c$420$1_0$290
;_sms_manager.c:420: SMS_decompressZX7( src, dst );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_SMS_decompressZX7
	pop	af
	pop	af
	C$_sms_manager.c$421$1_0$290	= .
	.globl	C$_sms_manager.c$421$1_0$290
;_sms_manager.c:421: }
	C$_sms_manager.c$421$1_0$290	= .
	.globl	C$_sms_manager.c$421$1_0$290
	XG$devkit_SMS_decompressZX7$0$0	= .
	.globl	XG$devkit_SMS_decompressZX7$0$0
	ret
	G$devkit_SMS_getKeysStatus$0$0	= .
	.globl	G$devkit_SMS_getKeysStatus$0$0
	C$_sms_manager.c$424$1_0$291	= .
	.globl	C$_sms_manager.c$424$1_0$291
;_sms_manager.c:424: unsigned int devkit_SMS_getKeysStatus()
;	---------------------------------
; Function devkit_SMS_getKeysStatus
; ---------------------------------
_devkit_SMS_getKeysStatus::
	C$_sms_manager.c$426$1_0$291	= .
	.globl	C$_sms_manager.c$426$1_0$291
;_sms_manager.c:426: return SMS_getKeysStatus();
	C$_sms_manager.c$427$1_0$291	= .
	.globl	C$_sms_manager.c$427$1_0$291
;_sms_manager.c:427: }
	C$_sms_manager.c$427$1_0$291	= .
	.globl	C$_sms_manager.c$427$1_0$291
	XG$devkit_SMS_getKeysStatus$0$0	= .
	.globl	XG$devkit_SMS_getKeysStatus$0$0
	jp	_SMS_getKeysStatus
	G$devkit_SMS_getKeysPressed$0$0	= .
	.globl	G$devkit_SMS_getKeysPressed$0$0
	C$_sms_manager.c$428$1_0$292	= .
	.globl	C$_sms_manager.c$428$1_0$292
;_sms_manager.c:428: unsigned int devkit_SMS_getKeysPressed()
;	---------------------------------
; Function devkit_SMS_getKeysPressed
; ---------------------------------
_devkit_SMS_getKeysPressed::
	C$_sms_manager.c$430$1_0$292	= .
	.globl	C$_sms_manager.c$430$1_0$292
;_sms_manager.c:430: return SMS_getKeysPressed();
	C$_sms_manager.c$431$1_0$292	= .
	.globl	C$_sms_manager.c$431$1_0$292
;_sms_manager.c:431: }
	C$_sms_manager.c$431$1_0$292	= .
	.globl	C$_sms_manager.c$431$1_0$292
	XG$devkit_SMS_getKeysPressed$0$0	= .
	.globl	XG$devkit_SMS_getKeysPressed$0$0
	jp	_SMS_getKeysPressed
	G$devkit_SMS_getKeysHeld$0$0	= .
	.globl	G$devkit_SMS_getKeysHeld$0$0
	C$_sms_manager.c$432$1_0$293	= .
	.globl	C$_sms_manager.c$432$1_0$293
;_sms_manager.c:432: unsigned int devkit_SMS_getKeysHeld()
;	---------------------------------
; Function devkit_SMS_getKeysHeld
; ---------------------------------
_devkit_SMS_getKeysHeld::
	C$_sms_manager.c$434$1_0$293	= .
	.globl	C$_sms_manager.c$434$1_0$293
;_sms_manager.c:434: return SMS_getKeysHeld();
	C$_sms_manager.c$435$1_0$293	= .
	.globl	C$_sms_manager.c$435$1_0$293
;_sms_manager.c:435: }
	C$_sms_manager.c$435$1_0$293	= .
	.globl	C$_sms_manager.c$435$1_0$293
	XG$devkit_SMS_getKeysHeld$0$0	= .
	.globl	XG$devkit_SMS_getKeysHeld$0$0
	jp	_SMS_getKeysHeld
	G$devkit_SMS_getKeysReleased$0$0	= .
	.globl	G$devkit_SMS_getKeysReleased$0$0
	C$_sms_manager.c$436$1_0$294	= .
	.globl	C$_sms_manager.c$436$1_0$294
;_sms_manager.c:436: unsigned int devkit_SMS_getKeysReleased()
;	---------------------------------
; Function devkit_SMS_getKeysReleased
; ---------------------------------
_devkit_SMS_getKeysReleased::
	C$_sms_manager.c$438$1_0$294	= .
	.globl	C$_sms_manager.c$438$1_0$294
;_sms_manager.c:438: return SMS_getKeysReleased();
	C$_sms_manager.c$439$1_0$294	= .
	.globl	C$_sms_manager.c$439$1_0$294
;_sms_manager.c:439: }
	C$_sms_manager.c$439$1_0$294	= .
	.globl	C$_sms_manager.c$439$1_0$294
	XG$devkit_SMS_getKeysReleased$0$0	= .
	.globl	XG$devkit_SMS_getKeysReleased$0$0
	jp	_SMS_getKeysReleased
	G$devkit_PORT_A_KEY_UP$0$0	= .
	.globl	G$devkit_PORT_A_KEY_UP$0$0
	C$_sms_manager.c$442$1_0$295	= .
	.globl	C$_sms_manager.c$442$1_0$295
;_sms_manager.c:442: unsigned int devkit_PORT_A_KEY_UP()
;	---------------------------------
; Function devkit_PORT_A_KEY_UP
; ---------------------------------
_devkit_PORT_A_KEY_UP::
	C$_sms_manager.c$444$1_0$295	= .
	.globl	C$_sms_manager.c$444$1_0$295
;_sms_manager.c:444: return PORT_A_KEY_UP;
	ld	hl, #0x0001
	C$_sms_manager.c$445$1_0$295	= .
	.globl	C$_sms_manager.c$445$1_0$295
;_sms_manager.c:445: }
	C$_sms_manager.c$445$1_0$295	= .
	.globl	C$_sms_manager.c$445$1_0$295
	XG$devkit_PORT_A_KEY_UP$0$0	= .
	.globl	XG$devkit_PORT_A_KEY_UP$0$0
	ret
	G$devkit_PORT_A_KEY_DOWN$0$0	= .
	.globl	G$devkit_PORT_A_KEY_DOWN$0$0
	C$_sms_manager.c$446$1_0$296	= .
	.globl	C$_sms_manager.c$446$1_0$296
;_sms_manager.c:446: unsigned int devkit_PORT_A_KEY_DOWN()
;	---------------------------------
; Function devkit_PORT_A_KEY_DOWN
; ---------------------------------
_devkit_PORT_A_KEY_DOWN::
	C$_sms_manager.c$448$1_0$296	= .
	.globl	C$_sms_manager.c$448$1_0$296
;_sms_manager.c:448: return PORT_A_KEY_DOWN;
	ld	hl, #0x0002
	C$_sms_manager.c$449$1_0$296	= .
	.globl	C$_sms_manager.c$449$1_0$296
;_sms_manager.c:449: }
	C$_sms_manager.c$449$1_0$296	= .
	.globl	C$_sms_manager.c$449$1_0$296
	XG$devkit_PORT_A_KEY_DOWN$0$0	= .
	.globl	XG$devkit_PORT_A_KEY_DOWN$0$0
	ret
	G$devkit_PORT_A_KEY_LEFT$0$0	= .
	.globl	G$devkit_PORT_A_KEY_LEFT$0$0
	C$_sms_manager.c$450$1_0$297	= .
	.globl	C$_sms_manager.c$450$1_0$297
;_sms_manager.c:450: unsigned int devkit_PORT_A_KEY_LEFT()
;	---------------------------------
; Function devkit_PORT_A_KEY_LEFT
; ---------------------------------
_devkit_PORT_A_KEY_LEFT::
	C$_sms_manager.c$452$1_0$297	= .
	.globl	C$_sms_manager.c$452$1_0$297
;_sms_manager.c:452: return PORT_A_KEY_LEFT;
	ld	hl, #0x0004
	C$_sms_manager.c$453$1_0$297	= .
	.globl	C$_sms_manager.c$453$1_0$297
;_sms_manager.c:453: }
	C$_sms_manager.c$453$1_0$297	= .
	.globl	C$_sms_manager.c$453$1_0$297
	XG$devkit_PORT_A_KEY_LEFT$0$0	= .
	.globl	XG$devkit_PORT_A_KEY_LEFT$0$0
	ret
	G$devkit_PORT_A_KEY_RIGHT$0$0	= .
	.globl	G$devkit_PORT_A_KEY_RIGHT$0$0
	C$_sms_manager.c$454$1_0$298	= .
	.globl	C$_sms_manager.c$454$1_0$298
;_sms_manager.c:454: unsigned int devkit_PORT_A_KEY_RIGHT()
;	---------------------------------
; Function devkit_PORT_A_KEY_RIGHT
; ---------------------------------
_devkit_PORT_A_KEY_RIGHT::
	C$_sms_manager.c$456$1_0$298	= .
	.globl	C$_sms_manager.c$456$1_0$298
;_sms_manager.c:456: return PORT_A_KEY_RIGHT;
	ld	hl, #0x0008
	C$_sms_manager.c$457$1_0$298	= .
	.globl	C$_sms_manager.c$457$1_0$298
;_sms_manager.c:457: }
	C$_sms_manager.c$457$1_0$298	= .
	.globl	C$_sms_manager.c$457$1_0$298
	XG$devkit_PORT_A_KEY_RIGHT$0$0	= .
	.globl	XG$devkit_PORT_A_KEY_RIGHT$0$0
	ret
	G$devkit_PORT_A_KEY_1$0$0	= .
	.globl	G$devkit_PORT_A_KEY_1$0$0
	C$_sms_manager.c$458$1_0$299	= .
	.globl	C$_sms_manager.c$458$1_0$299
;_sms_manager.c:458: unsigned int devkit_PORT_A_KEY_1()
;	---------------------------------
; Function devkit_PORT_A_KEY_1
; ---------------------------------
_devkit_PORT_A_KEY_1::
	C$_sms_manager.c$460$1_0$299	= .
	.globl	C$_sms_manager.c$460$1_0$299
;_sms_manager.c:460: return PORT_A_KEY_1;
	ld	hl, #0x0010
	C$_sms_manager.c$461$1_0$299	= .
	.globl	C$_sms_manager.c$461$1_0$299
;_sms_manager.c:461: }
	C$_sms_manager.c$461$1_0$299	= .
	.globl	C$_sms_manager.c$461$1_0$299
	XG$devkit_PORT_A_KEY_1$0$0	= .
	.globl	XG$devkit_PORT_A_KEY_1$0$0
	ret
	G$devkit_PORT_A_KEY_2$0$0	= .
	.globl	G$devkit_PORT_A_KEY_2$0$0
	C$_sms_manager.c$462$1_0$300	= .
	.globl	C$_sms_manager.c$462$1_0$300
;_sms_manager.c:462: unsigned int devkit_PORT_A_KEY_2()
;	---------------------------------
; Function devkit_PORT_A_KEY_2
; ---------------------------------
_devkit_PORT_A_KEY_2::
	C$_sms_manager.c$464$1_0$300	= .
	.globl	C$_sms_manager.c$464$1_0$300
;_sms_manager.c:464: return PORT_A_KEY_2;
	ld	hl, #0x0020
	C$_sms_manager.c$465$1_0$300	= .
	.globl	C$_sms_manager.c$465$1_0$300
;_sms_manager.c:465: }
	C$_sms_manager.c$465$1_0$300	= .
	.globl	C$_sms_manager.c$465$1_0$300
	XG$devkit_PORT_A_KEY_2$0$0	= .
	.globl	XG$devkit_PORT_A_KEY_2$0$0
	ret
	G$devkit_PORT_A_KEY_START$0$0	= .
	.globl	G$devkit_PORT_A_KEY_START$0$0
	C$_sms_manager.c$466$1_0$301	= .
	.globl	C$_sms_manager.c$466$1_0$301
;_sms_manager.c:466: unsigned int devkit_PORT_A_KEY_START()
;	---------------------------------
; Function devkit_PORT_A_KEY_START
; ---------------------------------
_devkit_PORT_A_KEY_START::
	C$_sms_manager.c$468$1_0$301	= .
	.globl	C$_sms_manager.c$468$1_0$301
;_sms_manager.c:468: return PORT_A_KEY_START;
	ld	hl, #0x0010
	C$_sms_manager.c$469$1_0$301	= .
	.globl	C$_sms_manager.c$469$1_0$301
;_sms_manager.c:469: }
	C$_sms_manager.c$469$1_0$301	= .
	.globl	C$_sms_manager.c$469$1_0$301
	XG$devkit_PORT_A_KEY_START$0$0	= .
	.globl	XG$devkit_PORT_A_KEY_START$0$0
	ret
	G$devkit_PORT_B_KEY_UP$0$0	= .
	.globl	G$devkit_PORT_B_KEY_UP$0$0
	C$_sms_manager.c$471$1_0$302	= .
	.globl	C$_sms_manager.c$471$1_0$302
;_sms_manager.c:471: unsigned int devkit_PORT_B_KEY_UP()
;	---------------------------------
; Function devkit_PORT_B_KEY_UP
; ---------------------------------
_devkit_PORT_B_KEY_UP::
	C$_sms_manager.c$473$1_0$302	= .
	.globl	C$_sms_manager.c$473$1_0$302
;_sms_manager.c:473: return PORT_B_KEY_UP;
	ld	hl, #0x0040
	C$_sms_manager.c$474$1_0$302	= .
	.globl	C$_sms_manager.c$474$1_0$302
;_sms_manager.c:474: }
	C$_sms_manager.c$474$1_0$302	= .
	.globl	C$_sms_manager.c$474$1_0$302
	XG$devkit_PORT_B_KEY_UP$0$0	= .
	.globl	XG$devkit_PORT_B_KEY_UP$0$0
	ret
	G$devkit_PORT_B_KEY_DOWN$0$0	= .
	.globl	G$devkit_PORT_B_KEY_DOWN$0$0
	C$_sms_manager.c$475$1_0$303	= .
	.globl	C$_sms_manager.c$475$1_0$303
;_sms_manager.c:475: unsigned int devkit_PORT_B_KEY_DOWN()
;	---------------------------------
; Function devkit_PORT_B_KEY_DOWN
; ---------------------------------
_devkit_PORT_B_KEY_DOWN::
	C$_sms_manager.c$477$1_0$303	= .
	.globl	C$_sms_manager.c$477$1_0$303
;_sms_manager.c:477: return PORT_B_KEY_DOWN;
	ld	hl, #0x0080
	C$_sms_manager.c$478$1_0$303	= .
	.globl	C$_sms_manager.c$478$1_0$303
;_sms_manager.c:478: }
	C$_sms_manager.c$478$1_0$303	= .
	.globl	C$_sms_manager.c$478$1_0$303
	XG$devkit_PORT_B_KEY_DOWN$0$0	= .
	.globl	XG$devkit_PORT_B_KEY_DOWN$0$0
	ret
	G$devkit_PORT_B_KEY_LEFT$0$0	= .
	.globl	G$devkit_PORT_B_KEY_LEFT$0$0
	C$_sms_manager.c$479$1_0$304	= .
	.globl	C$_sms_manager.c$479$1_0$304
;_sms_manager.c:479: unsigned int devkit_PORT_B_KEY_LEFT()
;	---------------------------------
; Function devkit_PORT_B_KEY_LEFT
; ---------------------------------
_devkit_PORT_B_KEY_LEFT::
	C$_sms_manager.c$481$1_0$304	= .
	.globl	C$_sms_manager.c$481$1_0$304
;_sms_manager.c:481: return PORT_B_KEY_LEFT;
	ld	hl, #0x0100
	C$_sms_manager.c$482$1_0$304	= .
	.globl	C$_sms_manager.c$482$1_0$304
;_sms_manager.c:482: }
	C$_sms_manager.c$482$1_0$304	= .
	.globl	C$_sms_manager.c$482$1_0$304
	XG$devkit_PORT_B_KEY_LEFT$0$0	= .
	.globl	XG$devkit_PORT_B_KEY_LEFT$0$0
	ret
	G$devkit_PORT_B_KEY_RIGHT$0$0	= .
	.globl	G$devkit_PORT_B_KEY_RIGHT$0$0
	C$_sms_manager.c$483$1_0$305	= .
	.globl	C$_sms_manager.c$483$1_0$305
;_sms_manager.c:483: unsigned int devkit_PORT_B_KEY_RIGHT()
;	---------------------------------
; Function devkit_PORT_B_KEY_RIGHT
; ---------------------------------
_devkit_PORT_B_KEY_RIGHT::
	C$_sms_manager.c$485$1_0$305	= .
	.globl	C$_sms_manager.c$485$1_0$305
;_sms_manager.c:485: return PORT_B_KEY_RIGHT;
	ld	hl, #0x0200
	C$_sms_manager.c$486$1_0$305	= .
	.globl	C$_sms_manager.c$486$1_0$305
;_sms_manager.c:486: }
	C$_sms_manager.c$486$1_0$305	= .
	.globl	C$_sms_manager.c$486$1_0$305
	XG$devkit_PORT_B_KEY_RIGHT$0$0	= .
	.globl	XG$devkit_PORT_B_KEY_RIGHT$0$0
	ret
	G$devkit_PORT_B_KEY_1$0$0	= .
	.globl	G$devkit_PORT_B_KEY_1$0$0
	C$_sms_manager.c$487$1_0$306	= .
	.globl	C$_sms_manager.c$487$1_0$306
;_sms_manager.c:487: unsigned int devkit_PORT_B_KEY_1()
;	---------------------------------
; Function devkit_PORT_B_KEY_1
; ---------------------------------
_devkit_PORT_B_KEY_1::
	C$_sms_manager.c$489$1_0$306	= .
	.globl	C$_sms_manager.c$489$1_0$306
;_sms_manager.c:489: return PORT_B_KEY_1;
	ld	hl, #0x0400
	C$_sms_manager.c$490$1_0$306	= .
	.globl	C$_sms_manager.c$490$1_0$306
;_sms_manager.c:490: }
	C$_sms_manager.c$490$1_0$306	= .
	.globl	C$_sms_manager.c$490$1_0$306
	XG$devkit_PORT_B_KEY_1$0$0	= .
	.globl	XG$devkit_PORT_B_KEY_1$0$0
	ret
	G$devkit_PORT_B_KEY_2$0$0	= .
	.globl	G$devkit_PORT_B_KEY_2$0$0
	C$_sms_manager.c$491$1_0$307	= .
	.globl	C$_sms_manager.c$491$1_0$307
;_sms_manager.c:491: unsigned int devkit_PORT_B_KEY_2()
;	---------------------------------
; Function devkit_PORT_B_KEY_2
; ---------------------------------
_devkit_PORT_B_KEY_2::
	C$_sms_manager.c$493$1_0$307	= .
	.globl	C$_sms_manager.c$493$1_0$307
;_sms_manager.c:493: return PORT_B_KEY_2;
	ld	hl, #0x0800
	C$_sms_manager.c$494$1_0$307	= .
	.globl	C$_sms_manager.c$494$1_0$307
;_sms_manager.c:494: }
	C$_sms_manager.c$494$1_0$307	= .
	.globl	C$_sms_manager.c$494$1_0$307
	XG$devkit_PORT_B_KEY_2$0$0	= .
	.globl	XG$devkit_PORT_B_KEY_2$0$0
	ret
	G$devkit_PORT_B_KEY_START$0$0	= .
	.globl	G$devkit_PORT_B_KEY_START$0$0
	C$_sms_manager.c$495$1_0$308	= .
	.globl	C$_sms_manager.c$495$1_0$308
;_sms_manager.c:495: unsigned int devkit_PORT_B_KEY_START()
;	---------------------------------
; Function devkit_PORT_B_KEY_START
; ---------------------------------
_devkit_PORT_B_KEY_START::
	C$_sms_manager.c$497$1_0$308	= .
	.globl	C$_sms_manager.c$497$1_0$308
;_sms_manager.c:497: return PORT_B_KEY_START;
	ld	hl, #0x0400
	C$_sms_manager.c$498$1_0$308	= .
	.globl	C$_sms_manager.c$498$1_0$308
;_sms_manager.c:498: }
	C$_sms_manager.c$498$1_0$308	= .
	.globl	C$_sms_manager.c$498$1_0$308
	XG$devkit_PORT_B_KEY_START$0$0	= .
	.globl	XG$devkit_PORT_B_KEY_START$0$0
	ret
	G$devkit_RESET_KEY$0$0	= .
	.globl	G$devkit_RESET_KEY$0$0
	C$_sms_manager.c$500$1_0$309	= .
	.globl	C$_sms_manager.c$500$1_0$309
;_sms_manager.c:500: unsigned int devkit_RESET_KEY()
;	---------------------------------
; Function devkit_RESET_KEY
; ---------------------------------
_devkit_RESET_KEY::
	C$_sms_manager.c$502$1_0$309	= .
	.globl	C$_sms_manager.c$502$1_0$309
;_sms_manager.c:502: return RESET_KEY; 
	ld	hl, #0x1000
	C$_sms_manager.c$503$1_0$309	= .
	.globl	C$_sms_manager.c$503$1_0$309
;_sms_manager.c:503: }
	C$_sms_manager.c$503$1_0$309	= .
	.globl	C$_sms_manager.c$503$1_0$309
	XG$devkit_RESET_KEY$0$0	= .
	.globl	XG$devkit_RESET_KEY$0$0
	ret
	G$devkit_CARTRIDGE_SLOT$0$0	= .
	.globl	G$devkit_CARTRIDGE_SLOT$0$0
	C$_sms_manager.c$504$1_0$310	= .
	.globl	C$_sms_manager.c$504$1_0$310
;_sms_manager.c:504: unsigned int devkit_CARTRIDGE_SLOT()
;	---------------------------------
; Function devkit_CARTRIDGE_SLOT
; ---------------------------------
_devkit_CARTRIDGE_SLOT::
	C$_sms_manager.c$506$1_0$310	= .
	.globl	C$_sms_manager.c$506$1_0$310
;_sms_manager.c:506: return CARTRIDGE_SLOT; 
	ld	hl, #0x2000
	C$_sms_manager.c$507$1_0$310	= .
	.globl	C$_sms_manager.c$507$1_0$310
;_sms_manager.c:507: }
	C$_sms_manager.c$507$1_0$310	= .
	.globl	C$_sms_manager.c$507$1_0$310
	XG$devkit_CARTRIDGE_SLOT$0$0	= .
	.globl	XG$devkit_CARTRIDGE_SLOT$0$0
	ret
	G$devkit_PORT_A_TH$0$0	= .
	.globl	G$devkit_PORT_A_TH$0$0
	C$_sms_manager.c$508$1_0$311	= .
	.globl	C$_sms_manager.c$508$1_0$311
;_sms_manager.c:508: unsigned int devkit_PORT_A_TH()
;	---------------------------------
; Function devkit_PORT_A_TH
; ---------------------------------
_devkit_PORT_A_TH::
	C$_sms_manager.c$510$1_0$311	= .
	.globl	C$_sms_manager.c$510$1_0$311
;_sms_manager.c:510: return PORT_A_TH; 
	ld	hl, #0x4000
	C$_sms_manager.c$511$1_0$311	= .
	.globl	C$_sms_manager.c$511$1_0$311
;_sms_manager.c:511: }
	C$_sms_manager.c$511$1_0$311	= .
	.globl	C$_sms_manager.c$511$1_0$311
	XG$devkit_PORT_A_TH$0$0	= .
	.globl	XG$devkit_PORT_A_TH$0$0
	ret
	G$devkit_PORT_B_TH$0$0	= .
	.globl	G$devkit_PORT_B_TH$0$0
	C$_sms_manager.c$512$1_0$312	= .
	.globl	C$_sms_manager.c$512$1_0$312
;_sms_manager.c:512: unsigned int devkit_PORT_B_TH()
;	---------------------------------
; Function devkit_PORT_B_TH
; ---------------------------------
_devkit_PORT_B_TH::
	C$_sms_manager.c$514$1_0$312	= .
	.globl	C$_sms_manager.c$514$1_0$312
;_sms_manager.c:514: return PORT_B_TH; 
	ld	hl, #0x8000
	C$_sms_manager.c$515$1_0$312	= .
	.globl	C$_sms_manager.c$515$1_0$312
;_sms_manager.c:515: }
	C$_sms_manager.c$515$1_0$312	= .
	.globl	C$_sms_manager.c$515$1_0$312
	XG$devkit_PORT_B_TH$0$0	= .
	.globl	XG$devkit_PORT_B_TH$0$0
	ret
	G$devkit_PORT_A$0$0	= .
	.globl	G$devkit_PORT_A$0$0
	C$_sms_manager.c$518$1_0$313	= .
	.globl	C$_sms_manager.c$518$1_0$313
;_sms_manager.c:518: unsigned char devkit_PORT_A()
;	---------------------------------
; Function devkit_PORT_A
; ---------------------------------
_devkit_PORT_A::
	C$_sms_manager.c$520$1_0$313	= .
	.globl	C$_sms_manager.c$520$1_0$313
;_sms_manager.c:520: return PORT_A;
	ld	l, #0x00
	C$_sms_manager.c$521$1_0$313	= .
	.globl	C$_sms_manager.c$521$1_0$313
;_sms_manager.c:521: }
	C$_sms_manager.c$521$1_0$313	= .
	.globl	C$_sms_manager.c$521$1_0$313
	XG$devkit_PORT_A$0$0	= .
	.globl	XG$devkit_PORT_A$0$0
	ret
	G$devkit_PORT_B$0$0	= .
	.globl	G$devkit_PORT_B$0$0
	C$_sms_manager.c$522$1_0$314	= .
	.globl	C$_sms_manager.c$522$1_0$314
;_sms_manager.c:522: unsigned char devkit_PORT_B()
;	---------------------------------
; Function devkit_PORT_B
; ---------------------------------
_devkit_PORT_B::
	C$_sms_manager.c$524$1_0$314	= .
	.globl	C$_sms_manager.c$524$1_0$314
;_sms_manager.c:524: return PORT_B;
	ld	l, #0x01
	C$_sms_manager.c$525$1_0$314	= .
	.globl	C$_sms_manager.c$525$1_0$314
;_sms_manager.c:525: }
	C$_sms_manager.c$525$1_0$314	= .
	.globl	C$_sms_manager.c$525$1_0$314
	XG$devkit_PORT_B$0$0	= .
	.globl	XG$devkit_PORT_B$0$0
	ret
	G$devkit_SMS_detectPaddle$0$0	= .
	.globl	G$devkit_SMS_detectPaddle$0$0
	C$_sms_manager.c$526$1_0$316	= .
	.globl	C$_sms_manager.c$526$1_0$316
;_sms_manager.c:526: unsigned char devkit_SMS_detectPaddle( unsigned char port )
;	---------------------------------
; Function devkit_SMS_detectPaddle
; ---------------------------------
_devkit_SMS_detectPaddle::
	C$_sms_manager.c$528$1_0$316	= .
	.globl	C$_sms_manager.c$528$1_0$316
;_sms_manager.c:528: return SMS_detectPaddle( port );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	C$_sms_manager.c$529$1_0$316	= .
	.globl	C$_sms_manager.c$529$1_0$316
;_sms_manager.c:529: }
	C$_sms_manager.c$529$1_0$316	= .
	.globl	C$_sms_manager.c$529$1_0$316
	XG$devkit_SMS_detectPaddle$0$0	= .
	.globl	XG$devkit_SMS_detectPaddle$0$0
	jp  _SMS_detectPaddle
	G$devkit_SMS_readPaddle$0$0	= .
	.globl	G$devkit_SMS_readPaddle$0$0
	C$_sms_manager.c$530$1_0$318	= .
	.globl	C$_sms_manager.c$530$1_0$318
;_sms_manager.c:530: unsigned char devkit_SMS_readPaddle( unsigned char port )
;	---------------------------------
; Function devkit_SMS_readPaddle
; ---------------------------------
_devkit_SMS_readPaddle::
	C$_sms_manager.c$532$1_0$318	= .
	.globl	C$_sms_manager.c$532$1_0$318
;_sms_manager.c:532: return SMS_readPaddle( port );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	C$_sms_manager.c$533$1_0$318	= .
	.globl	C$_sms_manager.c$533$1_0$318
;_sms_manager.c:533: }
	C$_sms_manager.c$533$1_0$318	= .
	.globl	C$_sms_manager.c$533$1_0$318
	XG$devkit_SMS_readPaddle$0$0	= .
	.globl	XG$devkit_SMS_readPaddle$0$0
	jp	_SMS_readPaddle
	G$devkit_SMS_queryPauseRequested$0$0	= .
	.globl	G$devkit_SMS_queryPauseRequested$0$0
	C$_sms_manager.c$536$1_0$319	= .
	.globl	C$_sms_manager.c$536$1_0$319
;_sms_manager.c:536: unsigned char devkit_SMS_queryPauseRequested()
;	---------------------------------
; Function devkit_SMS_queryPauseRequested
; ---------------------------------
_devkit_SMS_queryPauseRequested::
	C$_sms_manager.c$538$1_0$319	= .
	.globl	C$_sms_manager.c$538$1_0$319
;_sms_manager.c:538: return SMS_queryPauseRequested();
	C$_sms_manager.c$539$1_0$319	= .
	.globl	C$_sms_manager.c$539$1_0$319
;_sms_manager.c:539: }
	C$_sms_manager.c$539$1_0$319	= .
	.globl	C$_sms_manager.c$539$1_0$319
	XG$devkit_SMS_queryPauseRequested$0$0	= .
	.globl	XG$devkit_SMS_queryPauseRequested$0$0
	jp  _SMS_queryPauseRequested
	G$devkit_SMS_resetPauseRequest$0$0	= .
	.globl	G$devkit_SMS_resetPauseRequest$0$0
	C$_sms_manager.c$540$1_0$320	= .
	.globl	C$_sms_manager.c$540$1_0$320
;_sms_manager.c:540: void devkit_SMS_resetPauseRequest()
;	---------------------------------
; Function devkit_SMS_resetPauseRequest
; ---------------------------------
_devkit_SMS_resetPauseRequest::
	C$_sms_manager.c$542$1_0$320	= .
	.globl	C$_sms_manager.c$542$1_0$320
;_sms_manager.c:542: SMS_resetPauseRequest();
	C$_sms_manager.c$543$1_0$320	= .
	.globl	C$_sms_manager.c$543$1_0$320
;_sms_manager.c:543: }
	C$_sms_manager.c$543$1_0$320	= .
	.globl	C$_sms_manager.c$543$1_0$320
	XG$devkit_SMS_resetPauseRequest$0$0	= .
	.globl	XG$devkit_SMS_resetPauseRequest$0$0
	jp	_SMS_resetPauseRequest
	G$devkit_SMS_VDPFlags$0$0	= .
	.globl	G$devkit_SMS_VDPFlags$0$0
	C$_sms_manager.c$561$1_0$322	= .
	.globl	C$_sms_manager.c$561$1_0$322
;_sms_manager.c:561: unsigned char devkit_SMS_VDPFlags( void )
;	---------------------------------
; Function devkit_SMS_VDPFlags
; ---------------------------------
_devkit_SMS_VDPFlags::
	C$_sms_manager.c$563$1_0$322	= .
	.globl	C$_sms_manager.c$563$1_0$322
;_sms_manager.c:563: return SMS_VDPFlags;
	ld	a, (#_SMS_VDPFlags + 0)
	ld	l, a
	C$_sms_manager.c$564$1_0$322	= .
	.globl	C$_sms_manager.c$564$1_0$322
;_sms_manager.c:564: }
	C$_sms_manager.c$564$1_0$322	= .
	.globl	C$_sms_manager.c$564$1_0$322
	XG$devkit_SMS_VDPFlags$0$0	= .
	.globl	XG$devkit_SMS_VDPFlags$0$0
	ret
	G$devkit_VDPFLAG_SPRITEOVERFLOW$0$0	= .
	.globl	G$devkit_VDPFLAG_SPRITEOVERFLOW$0$0
	C$_sms_manager.c$565$1_0$323	= .
	.globl	C$_sms_manager.c$565$1_0$323
;_sms_manager.c:565: unsigned char devkit_VDPFLAG_SPRITEOVERFLOW()
;	---------------------------------
; Function devkit_VDPFLAG_SPRITEOVERFLOW
; ---------------------------------
_devkit_VDPFLAG_SPRITEOVERFLOW::
	C$_sms_manager.c$567$1_0$323	= .
	.globl	C$_sms_manager.c$567$1_0$323
;_sms_manager.c:567: return VDPFLAG_SPRITEOVERFLOW;
	ld	l, #0x40
	C$_sms_manager.c$568$1_0$323	= .
	.globl	C$_sms_manager.c$568$1_0$323
;_sms_manager.c:568: }
	C$_sms_manager.c$568$1_0$323	= .
	.globl	C$_sms_manager.c$568$1_0$323
	XG$devkit_VDPFLAG_SPRITEOVERFLOW$0$0	= .
	.globl	XG$devkit_VDPFLAG_SPRITEOVERFLOW$0$0
	ret
	G$devkit_VDPFLAG_SPRITECOLLISION$0$0	= .
	.globl	G$devkit_VDPFLAG_SPRITECOLLISION$0$0
	C$_sms_manager.c$569$1_0$324	= .
	.globl	C$_sms_manager.c$569$1_0$324
;_sms_manager.c:569: unsigned char devkit_VDPFLAG_SPRITECOLLISION()
;	---------------------------------
; Function devkit_VDPFLAG_SPRITECOLLISION
; ---------------------------------
_devkit_VDPFLAG_SPRITECOLLISION::
	C$_sms_manager.c$571$1_0$324	= .
	.globl	C$_sms_manager.c$571$1_0$324
;_sms_manager.c:571: return VDPFLAG_SPRITECOLLISION;
	ld	l, #0x20
	C$_sms_manager.c$572$1_0$324	= .
	.globl	C$_sms_manager.c$572$1_0$324
;_sms_manager.c:572: }
	C$_sms_manager.c$572$1_0$324	= .
	.globl	C$_sms_manager.c$572$1_0$324
	XG$devkit_VDPFLAG_SPRITECOLLISION$0$0	= .
	.globl	XG$devkit_VDPFLAG_SPRITECOLLISION$0$0
	ret
	G$devkit_SMS_setLineInterruptHandler$0$0	= .
	.globl	G$devkit_SMS_setLineInterruptHandler$0$0
	C$_sms_manager.c$575$1_0$327	= .
	.globl	C$_sms_manager.c$575$1_0$327
;_sms_manager.c:575: void devkit_SMS_setLineInterruptHandler( void( *theHandlerFunction )( void ) )
;	---------------------------------
; Function devkit_SMS_setLineInterruptHandler
; ---------------------------------
_devkit_SMS_setLineInterruptHandler::
	C$_sms_manager.c$577$1_0$327	= .
	.globl	C$_sms_manager.c$577$1_0$327
;_sms_manager.c:577: SMS_setLineInterruptHandler( theHandlerFunction );
	pop	bc
	pop	hl
	push	hl
	push	bc
	C$_sms_manager.c$578$1_0$327	= .
	.globl	C$_sms_manager.c$578$1_0$327
;_sms_manager.c:578: }
	C$_sms_manager.c$578$1_0$327	= .
	.globl	C$_sms_manager.c$578$1_0$327
	XG$devkit_SMS_setLineInterruptHandler$0$0	= .
	.globl	XG$devkit_SMS_setLineInterruptHandler$0$0
	jp	_SMS_setLineInterruptHandler
	G$devkit_SMS_setLineCounter$0$0	= .
	.globl	G$devkit_SMS_setLineCounter$0$0
	C$_sms_manager.c$579$1_0$329	= .
	.globl	C$_sms_manager.c$579$1_0$329
;_sms_manager.c:579: void devkit_SMS_setLineCounter( unsigned char count )
;	---------------------------------
; Function devkit_SMS_setLineCounter
; ---------------------------------
_devkit_SMS_setLineCounter::
	C$_sms_manager.c$581$1_0$329	= .
	.globl	C$_sms_manager.c$581$1_0$329
;_sms_manager.c:581: SMS_setLineCounter( count );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	C$_sms_manager.c$582$1_0$329	= .
	.globl	C$_sms_manager.c$582$1_0$329
;_sms_manager.c:582: }
	C$_sms_manager.c$582$1_0$329	= .
	.globl	C$_sms_manager.c$582$1_0$329
	XG$devkit_SMS_setLineCounter$0$0	= .
	.globl	XG$devkit_SMS_setLineCounter$0$0
	jp	_SMS_setLineCounter
	G$devkit_SMS_enableLineInterrupt$0$0	= .
	.globl	G$devkit_SMS_enableLineInterrupt$0$0
	C$_sms_manager.c$583$1_0$330	= .
	.globl	C$_sms_manager.c$583$1_0$330
;_sms_manager.c:583: void devkit_SMS_enableLineInterrupt()
;	---------------------------------
; Function devkit_SMS_enableLineInterrupt
; ---------------------------------
_devkit_SMS_enableLineInterrupt::
	C$_sms_manager.c$585$1_0$330	= .
	.globl	C$_sms_manager.c$585$1_0$330
;_sms_manager.c:585: SMS_enableLineInterrupt();
	ld	hl, #0x0010
	C$_sms_manager.c$586$1_0$330	= .
	.globl	C$_sms_manager.c$586$1_0$330
;_sms_manager.c:586: }
	C$_sms_manager.c$586$1_0$330	= .
	.globl	C$_sms_manager.c$586$1_0$330
	XG$devkit_SMS_enableLineInterrupt$0$0	= .
	.globl	XG$devkit_SMS_enableLineInterrupt$0$0
	jp	_SMS_VDPturnOnFeature
	G$devkit_SMS_disableLineInterrupt$0$0	= .
	.globl	G$devkit_SMS_disableLineInterrupt$0$0
	C$_sms_manager.c$587$1_0$331	= .
	.globl	C$_sms_manager.c$587$1_0$331
;_sms_manager.c:587: void devkit_SMS_disableLineInterrupt()
;	---------------------------------
; Function devkit_SMS_disableLineInterrupt
; ---------------------------------
_devkit_SMS_disableLineInterrupt::
	C$_sms_manager.c$589$1_0$331	= .
	.globl	C$_sms_manager.c$589$1_0$331
;_sms_manager.c:589: SMS_disableLineInterrupt();
	ld	hl, #0x0010
	C$_sms_manager.c$590$1_0$331	= .
	.globl	C$_sms_manager.c$590$1_0$331
;_sms_manager.c:590: }
	C$_sms_manager.c$590$1_0$331	= .
	.globl	C$_sms_manager.c$590$1_0$331
	XG$devkit_SMS_disableLineInterrupt$0$0	= .
	.globl	XG$devkit_SMS_disableLineInterrupt$0$0
	jp	_SMS_VDPturnOffFeature
	G$devkit_SMS_getVCount$0$0	= .
	.globl	G$devkit_SMS_getVCount$0$0
	C$_sms_manager.c$593$1_0$333	= .
	.globl	C$_sms_manager.c$593$1_0$333
;_sms_manager.c:593: unsigned char devkit_SMS_getVCount( void )
;	---------------------------------
; Function devkit_SMS_getVCount
; ---------------------------------
_devkit_SMS_getVCount::
	C$_sms_manager.c$595$1_0$333	= .
	.globl	C$_sms_manager.c$595$1_0$333
;_sms_manager.c:595: return SMS_getVCount();
	C$_sms_manager.c$596$1_0$333	= .
	.globl	C$_sms_manager.c$596$1_0$333
;_sms_manager.c:596: }
	C$_sms_manager.c$596$1_0$333	= .
	.globl	C$_sms_manager.c$596$1_0$333
	XG$devkit_SMS_getVCount$0$0	= .
	.globl	XG$devkit_SMS_getVCount$0$0
	jp	_SMS_getVCount
	G$devkit_SMS_getHCount$0$0	= .
	.globl	G$devkit_SMS_getHCount$0$0
	C$_sms_manager.c$598$1_0$335	= .
	.globl	C$_sms_manager.c$598$1_0$335
;_sms_manager.c:598: unsigned char devkit_SMS_getHCount( void )
;	---------------------------------
; Function devkit_SMS_getHCount
; ---------------------------------
_devkit_SMS_getHCount::
	C$_sms_manager.c$600$1_0$335	= .
	.globl	C$_sms_manager.c$600$1_0$335
;_sms_manager.c:600: return SMS_getHCount();
	C$_sms_manager.c$601$1_0$335	= .
	.globl	C$_sms_manager.c$601$1_0$335
;_sms_manager.c:601: }
	C$_sms_manager.c$601$1_0$335	= .
	.globl	C$_sms_manager.c$601$1_0$335
	XG$devkit_SMS_getHCount$0$0	= .
	.globl	XG$devkit_SMS_getHCount$0$0
	jp	_SMS_getHCount
	G$devkit_SMS_VRAMmemcpy$0$0	= .
	.globl	G$devkit_SMS_VRAMmemcpy$0$0
	C$_sms_manager.c$604$1_0$337	= .
	.globl	C$_sms_manager.c$604$1_0$337
;_sms_manager.c:604: void devkit_SMS_VRAMmemcpy( unsigned int dst, const void *src, unsigned int size )
;	---------------------------------
; Function devkit_SMS_VRAMmemcpy
; ---------------------------------
_devkit_SMS_VRAMmemcpy::
	C$_sms_manager.c$606$1_0$337	= .
	.globl	C$_sms_manager.c$606$1_0$337
;_sms_manager.c:606: SMS_VRAMmemcpy( dst, src, size );
	ld	iy, #6
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	dec	iy
	dec	iy
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_SMS_VRAMmemcpy
	C$_sms_manager.c$607$1_0$337	= .
	.globl	C$_sms_manager.c$607$1_0$337
;_sms_manager.c:607: }
	C$_sms_manager.c$607$1_0$337	= .
	.globl	C$_sms_manager.c$607$1_0$337
	XG$devkit_SMS_VRAMmemcpy$0$0	= .
	.globl	XG$devkit_SMS_VRAMmemcpy$0$0
	ret
	G$devkit_SMS_VRAMmemcpy_brief$0$0	= .
	.globl	G$devkit_SMS_VRAMmemcpy_brief$0$0
	C$_sms_manager.c$608$1_0$339	= .
	.globl	C$_sms_manager.c$608$1_0$339
;_sms_manager.c:608: void devkit_SMS_VRAMmemcpy_brief( unsigned int dst, const void *src, unsigned char size )
;	---------------------------------
; Function devkit_SMS_VRAMmemcpy_brief
; ---------------------------------
_devkit_SMS_VRAMmemcpy_brief::
	C$_sms_manager.c$610$1_0$339	= .
	.globl	C$_sms_manager.c$610$1_0$339
;_sms_manager.c:610: SMS_VRAMmemcpy_brief( dst, src, size );
	ld	iy, #6
	add	iy, sp
	ld	a, 0 (iy)
	push	af
	inc	sp
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	dec	iy
	dec	iy
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_SMS_VRAMmemcpy_brief
	C$_sms_manager.c$611$1_0$339	= .
	.globl	C$_sms_manager.c$611$1_0$339
;_sms_manager.c:611: }
	C$_sms_manager.c$611$1_0$339	= .
	.globl	C$_sms_manager.c$611$1_0$339
	XG$devkit_SMS_VRAMmemcpy_brief$0$0	= .
	.globl	XG$devkit_SMS_VRAMmemcpy_brief$0$0
	ret
	G$devkit_SMS_VRAMmemset$0$0	= .
	.globl	G$devkit_SMS_VRAMmemset$0$0
	C$_sms_manager.c$612$1_0$341	= .
	.globl	C$_sms_manager.c$612$1_0$341
;_sms_manager.c:612: void devkit_SMS_VRAMmemset( unsigned int dst, unsigned char value, unsigned int size )
;	---------------------------------
; Function devkit_SMS_VRAMmemset
; ---------------------------------
_devkit_SMS_VRAMmemset::
	C$_sms_manager.c$614$1_0$341	= .
	.globl	C$_sms_manager.c$614$1_0$341
;_sms_manager.c:614: SMS_VRAMmemset( dst, value, size );
	ld	iy, #5
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	a, -1 (iy)
	dec	iy
	push	af
	inc	sp
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_SMS_VRAMmemset
	pop	af
	pop	af
	inc	sp
	C$_sms_manager.c$615$1_0$341	= .
	.globl	C$_sms_manager.c$615$1_0$341
;_sms_manager.c:615: }
	C$_sms_manager.c$615$1_0$341	= .
	.globl	C$_sms_manager.c$615$1_0$341
	XG$devkit_SMS_VRAMmemset$0$0	= .
	.globl	XG$devkit_SMS_VRAMmemset$0$0
	ret
	G$devkit_SMS_VRAMmemsetW$0$0	= .
	.globl	G$devkit_SMS_VRAMmemsetW$0$0
	C$_sms_manager.c$616$1_0$343	= .
	.globl	C$_sms_manager.c$616$1_0$343
;_sms_manager.c:616: void devkit_SMS_VRAMmemsetW( unsigned int dst, unsigned int value, unsigned int size )
;	---------------------------------
; Function devkit_SMS_VRAMmemsetW
; ---------------------------------
_devkit_SMS_VRAMmemsetW::
	C$_sms_manager.c$618$1_0$343	= .
	.globl	C$_sms_manager.c$618$1_0$343
;_sms_manager.c:618: SMS_VRAMmemsetW( dst, value, size );
	ld	iy, #6
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	dec	iy
	dec	iy
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_SMS_VRAMmemsetW
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$_sms_manager.c$619$1_0$343	= .
	.globl	C$_sms_manager.c$619$1_0$343
;_sms_manager.c:619: }
	C$_sms_manager.c$619$1_0$343	= .
	.globl	C$_sms_manager.c$619$1_0$343
	XG$devkit_SMS_VRAMmemsetW$0$0	= .
	.globl	XG$devkit_SMS_VRAMmemsetW$0$0
	ret
	G$devkit_UNSAFE_SMS_copySpritestoSAT$0$0	= .
	.globl	G$devkit_UNSAFE_SMS_copySpritestoSAT$0$0
	C$_sms_manager.c$622$1_0$345	= .
	.globl	C$_sms_manager.c$622$1_0$345
;_sms_manager.c:622: void devkit_UNSAFE_SMS_copySpritestoSAT( void )
;	---------------------------------
; Function devkit_UNSAFE_SMS_copySpritestoSAT
; ---------------------------------
_devkit_UNSAFE_SMS_copySpritestoSAT::
	C$_sms_manager.c$624$1_0$345	= .
	.globl	C$_sms_manager.c$624$1_0$345
;_sms_manager.c:624: UNSAFE_SMS_copySpritestoSAT();
	C$_sms_manager.c$625$1_0$345	= .
	.globl	C$_sms_manager.c$625$1_0$345
;_sms_manager.c:625: }
	C$_sms_manager.c$625$1_0$345	= .
	.globl	C$_sms_manager.c$625$1_0$345
	XG$devkit_UNSAFE_SMS_copySpritestoSAT$0$0	= .
	.globl	XG$devkit_UNSAFE_SMS_copySpritestoSAT$0$0
	jp	_UNSAFE_SMS_copySpritestoSAT
	G$devkit_UNSAFE_SMS_VRAMmemcpy32$0$0	= .
	.globl	G$devkit_UNSAFE_SMS_VRAMmemcpy32$0$0
	C$_sms_manager.c$626$1_0$347	= .
	.globl	C$_sms_manager.c$626$1_0$347
;_sms_manager.c:626: void devkit_UNSAFE_SMS_VRAMmemcpy32( unsigned int dst, void *src )
;	---------------------------------
; Function devkit_UNSAFE_SMS_VRAMmemcpy32
; ---------------------------------
_devkit_UNSAFE_SMS_VRAMmemcpy32::
	C$_sms_manager.c$628$1_0$347	= .
	.globl	C$_sms_manager.c$628$1_0$347
;_sms_manager.c:628: UNSAFE_SMS_VRAMmemcpy32( dst, src );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_UNSAFE_SMS_VRAMmemcpy32
	pop	af
	pop	af
	C$_sms_manager.c$629$1_0$347	= .
	.globl	C$_sms_manager.c$629$1_0$347
;_sms_manager.c:629: }
	C$_sms_manager.c$629$1_0$347	= .
	.globl	C$_sms_manager.c$629$1_0$347
	XG$devkit_UNSAFE_SMS_VRAMmemcpy32$0$0	= .
	.globl	XG$devkit_UNSAFE_SMS_VRAMmemcpy32$0$0
	ret
	G$devkit_UNSAFE_SMS_VRAMmemcpy64$0$0	= .
	.globl	G$devkit_UNSAFE_SMS_VRAMmemcpy64$0$0
	C$_sms_manager.c$630$1_0$349	= .
	.globl	C$_sms_manager.c$630$1_0$349
;_sms_manager.c:630: void devkit_UNSAFE_SMS_VRAMmemcpy64( unsigned int dst, void *src )
;	---------------------------------
; Function devkit_UNSAFE_SMS_VRAMmemcpy64
; ---------------------------------
_devkit_UNSAFE_SMS_VRAMmemcpy64::
	C$_sms_manager.c$632$1_0$349	= .
	.globl	C$_sms_manager.c$632$1_0$349
;_sms_manager.c:632: UNSAFE_SMS_VRAMmemcpy64( dst, src );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_UNSAFE_SMS_VRAMmemcpy64
	pop	af
	pop	af
	C$_sms_manager.c$633$1_0$349	= .
	.globl	C$_sms_manager.c$633$1_0$349
;_sms_manager.c:633: }
	C$_sms_manager.c$633$1_0$349	= .
	.globl	C$_sms_manager.c$633$1_0$349
	XG$devkit_UNSAFE_SMS_VRAMmemcpy64$0$0	= .
	.globl	XG$devkit_UNSAFE_SMS_VRAMmemcpy64$0$0
	ret
	G$devkit_UNSAFE_SMS_VRAMmemcpy128$0$0	= .
	.globl	G$devkit_UNSAFE_SMS_VRAMmemcpy128$0$0
	C$_sms_manager.c$634$1_0$351	= .
	.globl	C$_sms_manager.c$634$1_0$351
;_sms_manager.c:634: void devkit_UNSAFE_SMS_VRAMmemcpy128( unsigned int dst, void *src )
;	---------------------------------
; Function devkit_UNSAFE_SMS_VRAMmemcpy128
; ---------------------------------
_devkit_UNSAFE_SMS_VRAMmemcpy128::
	C$_sms_manager.c$636$1_0$351	= .
	.globl	C$_sms_manager.c$636$1_0$351
;_sms_manager.c:636: UNSAFE_SMS_VRAMmemcpy128( dst, src );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_UNSAFE_SMS_VRAMmemcpy128
	pop	af
	pop	af
	C$_sms_manager.c$637$1_0$351	= .
	.globl	C$_sms_manager.c$637$1_0$351
;_sms_manager.c:637: }
	C$_sms_manager.c$637$1_0$351	= .
	.globl	C$_sms_manager.c$637$1_0$351
	XG$devkit_UNSAFE_SMS_VRAMmemcpy128$0$0	= .
	.globl	XG$devkit_UNSAFE_SMS_VRAMmemcpy128$0$0
	ret
	G$devkit_UNSAFE_SMS_load1Tile$0$0	= .
	.globl	G$devkit_UNSAFE_SMS_load1Tile$0$0
	C$_sms_manager.c$640$1_0$353	= .
	.globl	C$_sms_manager.c$640$1_0$353
;_sms_manager.c:640: void devkit_UNSAFE_SMS_load1Tile( void *src, unsigned int theTile )
;	---------------------------------
; Function devkit_UNSAFE_SMS_load1Tile
; ---------------------------------
_devkit_UNSAFE_SMS_load1Tile::
	C$_sms_manager.c$642$1_0$353	= .
	.globl	C$_sms_manager.c$642$1_0$353
;_sms_manager.c:642: UNSAFE_SMS_VRAMmemcpy32( ( theTile ) * 32, ( src ) );
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	pop	bc
	pop	de
	push	de
	push	bc
	push	de
	push	hl
	call	_UNSAFE_SMS_VRAMmemcpy32
	pop	af
	pop	af
	C$_sms_manager.c$643$1_0$353	= .
	.globl	C$_sms_manager.c$643$1_0$353
;_sms_manager.c:643: }
	C$_sms_manager.c$643$1_0$353	= .
	.globl	C$_sms_manager.c$643$1_0$353
	XG$devkit_UNSAFE_SMS_load1Tile$0$0	= .
	.globl	XG$devkit_UNSAFE_SMS_load1Tile$0$0
	ret
	G$devkit_UNSAFE_SMS_load2Tiles$0$0	= .
	.globl	G$devkit_UNSAFE_SMS_load2Tiles$0$0
	C$_sms_manager.c$644$1_0$355	= .
	.globl	C$_sms_manager.c$644$1_0$355
;_sms_manager.c:644: void devkit_UNSAFE_SMS_load2Tiles( void *src, unsigned int tilefrom )
;	---------------------------------
; Function devkit_UNSAFE_SMS_load2Tiles
; ---------------------------------
_devkit_UNSAFE_SMS_load2Tiles::
	C$_sms_manager.c$646$1_0$355	= .
	.globl	C$_sms_manager.c$646$1_0$355
;_sms_manager.c:646: UNSAFE_SMS_VRAMmemcpy64( ( tilefrom ) * 32, ( src ) );
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	pop	bc
	pop	de
	push	de
	push	bc
	push	de
	push	hl
	call	_UNSAFE_SMS_VRAMmemcpy64
	pop	af
	pop	af
	C$_sms_manager.c$647$1_0$355	= .
	.globl	C$_sms_manager.c$647$1_0$355
;_sms_manager.c:647: }
	C$_sms_manager.c$647$1_0$355	= .
	.globl	C$_sms_manager.c$647$1_0$355
	XG$devkit_UNSAFE_SMS_load2Tiles$0$0	= .
	.globl	XG$devkit_UNSAFE_SMS_load2Tiles$0$0
	ret
	G$devkit_UNSAFE_SMS_load4Tiles$0$0	= .
	.globl	G$devkit_UNSAFE_SMS_load4Tiles$0$0
	C$_sms_manager.c$648$1_0$357	= .
	.globl	C$_sms_manager.c$648$1_0$357
;_sms_manager.c:648: void devkit_UNSAFE_SMS_load4Tiles( void *src, unsigned int tilefrom )
;	---------------------------------
; Function devkit_UNSAFE_SMS_load4Tiles
; ---------------------------------
_devkit_UNSAFE_SMS_load4Tiles::
	C$_sms_manager.c$650$1_0$357	= .
	.globl	C$_sms_manager.c$650$1_0$357
;_sms_manager.c:650: UNSAFE_SMS_VRAMmemcpy128( ( tilefrom ) * 32, ( src ) );
	ld	hl, #4
	add	hl, sp
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	pop	bc
	pop	de
	push	de
	push	bc
	push	de
	push	hl
	call	_UNSAFE_SMS_VRAMmemcpy128
	pop	af
	pop	af
	C$_sms_manager.c$651$1_0$357	= .
	.globl	C$_sms_manager.c$651$1_0$357
;_sms_manager.c:651: }
	C$_sms_manager.c$651$1_0$357	= .
	.globl	C$_sms_manager.c$651$1_0$357
	XG$devkit_UNSAFE_SMS_load4Tiles$0$0	= .
	.globl	XG$devkit_UNSAFE_SMS_load4Tiles$0$0
	ret
	G$dekvit_SMS_isr$0$0	= .
	.globl	G$dekvit_SMS_isr$0$0
	C$_sms_manager.c$655$1_0$359	= .
	.globl	C$_sms_manager.c$655$1_0$359
;_sms_manager.c:655: void dekvit_SMS_isr( void )
;	---------------------------------
; Function dekvit_SMS_isr
; ---------------------------------
_dekvit_SMS_isr::
	C$_sms_manager.c$657$1_0$359	= .
	.globl	C$_sms_manager.c$657$1_0$359
;_sms_manager.c:657: SMS_isr();
	C$_sms_manager.c$658$1_0$359	= .
	.globl	C$_sms_manager.c$658$1_0$359
;_sms_manager.c:658: }
	C$_sms_manager.c$658$1_0$359	= .
	.globl	C$_sms_manager.c$658$1_0$359
	XG$dekvit_SMS_isr$0$0	= .
	.globl	XG$dekvit_SMS_isr$0$0
	jp	_SMS_isr
	G$dekvit_SMS_nmi_isr$0$0	= .
	.globl	G$dekvit_SMS_nmi_isr$0$0
	C$_sms_manager.c$659$1_0$361	= .
	.globl	C$_sms_manager.c$659$1_0$361
;_sms_manager.c:659: void dekvit_SMS_nmi_isr( void )
;	---------------------------------
; Function dekvit_SMS_nmi_isr
; ---------------------------------
_dekvit_SMS_nmi_isr::
	C$_sms_manager.c$661$1_0$361	= .
	.globl	C$_sms_manager.c$661$1_0$361
;_sms_manager.c:661: SMS_nmi_isr();
	C$_sms_manager.c$662$1_0$361	= .
	.globl	C$_sms_manager.c$662$1_0$361
;_sms_manager.c:662: }
	C$_sms_manager.c$662$1_0$361	= .
	.globl	C$_sms_manager.c$662$1_0$361
	XG$dekvit_SMS_nmi_isr$0$0	= .
	.globl	XG$dekvit_SMS_nmi_isr$0$0
	jp	_SMS_nmi_isr
	G$devkit_SMS_addSprite_bulk8$0$0	= .
	.globl	G$devkit_SMS_addSprite_bulk8$0$0
	C$_sms_manager.c$667$1_0$363	= .
	.globl	C$_sms_manager.c$667$1_0$363
;_sms_manager.c:667: void devkit_SMS_addSprite_bulk8( unsigned char x, unsigned char y, int tile )
;	---------------------------------
; Function devkit_SMS_addSprite_bulk8
; ---------------------------------
_devkit_SMS_addSprite_bulk8::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$_sms_manager.c$669$1_0$363	= .
	.globl	C$_sms_manager.c$669$1_0$363
;_sms_manager.c:669: devkit_SMS_addSprite( x + 0, y + 0, tile + 0 );
	ld	l, 6 (ix)
	ld	h, 7 (ix)
	push	hl
	ld	h, 5 (ix)
	ld	l, 4 (ix)
	push	hl
	call	_devkit_SMS_addSprite
	pop	af
	pop	af
	C$_sms_manager.c$670$1_0$363	= .
	.globl	C$_sms_manager.c$670$1_0$363
;_sms_manager.c:670: devkit_SMS_addSprite( x + 8, y + 0, tile + 1 );
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
	C$_sms_manager.c$672$1_0$363	= .
	.globl	C$_sms_manager.c$672$1_0$363
;_sms_manager.c:672: devkit_SMS_addSprite( x + 0, y + 8, tile + 2 );
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
	C$_sms_manager.c$673$1_0$363	= .
	.globl	C$_sms_manager.c$673$1_0$363
;_sms_manager.c:673: devkit_SMS_addSprite( x + 8, y + 8, tile + 3 );
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
	C$_sms_manager.c$675$1_0$363	= .
	.globl	C$_sms_manager.c$675$1_0$363
;_sms_manager.c:675: devkit_SMS_addSprite( x + 0, y + 16, tile + 4 );
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
	C$_sms_manager.c$676$1_0$363	= .
	.globl	C$_sms_manager.c$676$1_0$363
;_sms_manager.c:676: devkit_SMS_addSprite( x + 8, y + 16, tile + 5 );
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
	C$_sms_manager.c$678$1_0$363	= .
	.globl	C$_sms_manager.c$678$1_0$363
;_sms_manager.c:678: devkit_SMS_addSprite( x + 0, y + 24, tile + 6 );
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
	C$_sms_manager.c$679$1_0$363	= .
	.globl	C$_sms_manager.c$679$1_0$363
;_sms_manager.c:679: devkit_SMS_addSprite( x + 8, y + 24, tile + 7 );
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
	C$_sms_manager.c$680$1_0$363	= .
	.globl	C$_sms_manager.c$680$1_0$363
;_sms_manager.c:680: }
	pop	ix
	C$_sms_manager.c$680$1_0$363	= .
	.globl	C$_sms_manager.c$680$1_0$363
	XG$devkit_SMS_addSprite_bulk8$0$0	= .
	.globl	XG$devkit_SMS_addSprite_bulk8$0$0
	ret
	G$devkit_SMS_addSprite_bulk12$0$0	= .
	.globl	G$devkit_SMS_addSprite_bulk12$0$0
	C$_sms_manager.c$681$1_0$365	= .
	.globl	C$_sms_manager.c$681$1_0$365
;_sms_manager.c:681: void devkit_SMS_addSprite_bulk12( unsigned char x, unsigned char y, int tile )
;	---------------------------------
; Function devkit_SMS_addSprite_bulk12
; ---------------------------------
_devkit_SMS_addSprite_bulk12::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	C$_sms_manager.c$683$1_0$365	= .
	.globl	C$_sms_manager.c$683$1_0$365
;_sms_manager.c:683: SMS_addSprite( x + 0, y + 0, tile + 0 );
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
	C$_sms_manager.c$684$1_0$365	= .
	.globl	C$_sms_manager.c$684$1_0$365
;_sms_manager.c:684: SMS_addSprite( x + 8, y + 0, tile + 1 );
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
	C$_sms_manager.c$685$1_0$365	= .
	.globl	C$_sms_manager.c$685$1_0$365
;_sms_manager.c:685: SMS_addSprite( x + 16, y + 0, tile + 2 );
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
	C$_sms_manager.c$687$1_0$365	= .
	.globl	C$_sms_manager.c$687$1_0$365
;_sms_manager.c:687: SMS_addSprite( x + 0, y + 8, tile + 3 );
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
	C$_sms_manager.c$688$1_0$365	= .
	.globl	C$_sms_manager.c$688$1_0$365
;_sms_manager.c:688: SMS_addSprite( x + 8, y + 8, tile + 4 );
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
	C$_sms_manager.c$689$1_0$365	= .
	.globl	C$_sms_manager.c$689$1_0$365
;_sms_manager.c:689: SMS_addSprite( x + 16, y + 8, tile + 5 );
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
	C$_sms_manager.c$691$1_0$365	= .
	.globl	C$_sms_manager.c$691$1_0$365
;_sms_manager.c:691: SMS_addSprite( x + 0, y + 16, tile + 6 );
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
	C$_sms_manager.c$692$1_0$365	= .
	.globl	C$_sms_manager.c$692$1_0$365
;_sms_manager.c:692: SMS_addSprite( x + 8, y + 16, tile + 7 );
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
	C$_sms_manager.c$693$1_0$365	= .
	.globl	C$_sms_manager.c$693$1_0$365
;_sms_manager.c:693: SMS_addSprite( x + 16, y + 16, tile + 8 );
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
	C$_sms_manager.c$695$1_0$365	= .
	.globl	C$_sms_manager.c$695$1_0$365
;_sms_manager.c:695: SMS_addSprite( x + 0, y + 24, tile + 9 );
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
	C$_sms_manager.c$696$1_0$365	= .
	.globl	C$_sms_manager.c$696$1_0$365
;_sms_manager.c:696: SMS_addSprite( x + 8, y + 24, tile + 10 );
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
	C$_sms_manager.c$697$1_0$365	= .
	.globl	C$_sms_manager.c$697$1_0$365
;_sms_manager.c:697: SMS_addSprite( x + 16, y + 24, tile + 11 );
	ld	a, c
	add	a, #0x0b
	push	af
	inc	sp
	ld	e, b
	push	de
	call	_SMS_addSprite
	pop	af
	inc	sp
	C$_sms_manager.c$698$1_0$365	= .
	.globl	C$_sms_manager.c$698$1_0$365
;_sms_manager.c:698: }
	inc	sp
	pop	ix
	C$_sms_manager.c$698$1_0$365	= .
	.globl	C$_sms_manager.c$698$1_0$365
	XG$devkit_SMS_addSprite_bulk12$0$0	= .
	.globl	XG$devkit_SMS_addSprite_bulk12$0$0
	ret
	G$devkit_SMS_setTilePriority$0$0	= .
	.globl	G$devkit_SMS_setTilePriority$0$0
	C$_sms_manager.c$700$1_0$367	= .
	.globl	C$_sms_manager.c$700$1_0$367
;_sms_manager.c:700: void devkit_SMS_setTilePriority( const unsigned char tile )
;	---------------------------------
; Function devkit_SMS_setTilePriority
; ---------------------------------
_devkit_SMS_setTilePriority::
	C$_sms_manager.c$702$1_0$367	= .
	.globl	C$_sms_manager.c$702$1_0$367
;_sms_manager.c:702: SMS_setTile( tile | TILE_PRIORITY | TILE_USE_SPRITE_PALETTE );
	ld	iy, #2
	add	iy, sp
	ld	l, 0 (iy)
	xor	a, a
	or	a, #0x18
	ld	h, a
	C$_sms_manager.c$703$1_0$367	= .
	.globl	C$_sms_manager.c$703$1_0$367
;_sms_manager.c:703: }
	C$_sms_manager.c$703$1_0$367	= .
	.globl	C$_sms_manager.c$703$1_0$367
	XG$devkit_SMS_setTilePriority$0$0	= .
	.globl	XG$devkit_SMS_setTilePriority$0$0
	jp	_SMS_crt0_RST18
	G$devkit_isCollisionDetected$0$0	= .
	.globl	G$devkit_isCollisionDetected$0$0
	C$_sms_manager.c$704$1_0$368	= .
	.globl	C$_sms_manager.c$704$1_0$368
;_sms_manager.c:704: unsigned char devkit_isCollisionDetected()
;	---------------------------------
; Function devkit_isCollisionDetected
; ---------------------------------
_devkit_isCollisionDetected::
	C$_sms_manager.c$706$1_0$368	= .
	.globl	C$_sms_manager.c$706$1_0$368
;_sms_manager.c:706: return ( SMS_VDPFlags & VDPFLAG_SPRITECOLLISION );
	ld	a,(#_SMS_VDPFlags + 0)
	and	a, #0x20
	ld	l, a
	C$_sms_manager.c$707$1_0$368	= .
	.globl	C$_sms_manager.c$707$1_0$368
;_sms_manager.c:707: }
	C$_sms_manager.c$707$1_0$368	= .
	.globl	C$_sms_manager.c$707$1_0$368
	XG$devkit_isCollisionDetected$0$0	= .
	.globl	XG$devkit_isCollisionDetected$0$0
	ret
	.area _CODE
F_sms_manager$__str_0$0_0$0 == .
__str_0:
	.ascii "stevepro"
	.db 0x00
F_sms_manager$__str_1$0_0$0 == .
__str_1:
	.ascii "GSLdemo"
	.db 0x00
F_sms_manager$__str_2$0_0$0 == .
__str_2:
	.ascii "SMS Power tutorial for General Scroll Library"
	.db 0x00
	.area _INITIALIZER
	.area _CABS (ABS)
	.org 0x7FF0
G$__SMS__SEGA_signature$0_0$0 == .
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
	.org 0x7FD7
G$__SMS__SDSC_author$0_0$0 == .
___SMS__SDSC_author:
	.ascii "stevepro"
	.db 0x00
	.org 0x7FCF
G$__SMS__SDSC_name$0_0$0 == .
___SMS__SDSC_name:
	.ascii "GSLdemo"
	.db 0x00
	.org 0x7FA1
G$__SMS__SDSC_descr$0_0$0 == .
___SMS__SDSC_descr:
	.ascii "SMS Power tutorial for General Scroll Library"
	.db 0x00
	.org 0x7FE0
G$__SMS__SDSC_signature$0_0$0 == .
___SMS__SDSC_signature:
	.db #0x53	; 83	'S'
	.db #0x44	; 68	'D'
	.db #0x53	; 83	'S'
	.db #0x43	; 67	'C'
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x21	; 33
	.db #0x07	; 7
	.db #0x22	; 34
	.db #0x20	; 32
	.db #0xd7	; 215
	.db #0x7f	; 127
	.db #0xcf	; 207
	.db #0x7f	; 127
	.db #0xa1	; 161
	.db #0x7f	; 127
