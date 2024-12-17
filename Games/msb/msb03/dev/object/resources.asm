;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module resources
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _devkit_SMS_zeroBGPalette
	.globl _devkit_SMS_loadBGPaletteHalfBrightness
	.globl _devkit_SMS_loadSpritePalette
	.globl _devkit_SMS_loadBGPalette
	.globl _devkit_SMS_loadTileMap
	.globl _devkit_SMS_loadPSGaidencompressedTiles
	.globl _devkit_SMS_loadTiles
	.globl _devkit_SMS_setNextTileatXY
	.globl _devkit_SMS_setTile
	.globl _devkit_SMS_mapROMBank
	.globl _drawEntities
	.globl _updateTiles
	.globl _updateAnimations
	.globl _get_scroll_y
	.globl _get_scroll_x
	.globl _move_scroll
	.globl _init_scroll
	.globl _scroll_y
	.globl _scroll_x
	.globl _load_logo_assets
	.globl _load_logo_halfpalette
	.globl _load_logo_fullpalette
	.globl _load_fnaclogo_assets
	.globl _load_fnaclogo_halfpalette
	.globl _load_fnaclogo_fullpalette
	.globl _load_presentation_assets
	.globl _load_presentation_halfpalette
	.globl _load_presentation_fullpalette
	.globl _load_level1_assets
	.globl _init_level1_scroll
	.globl _update_scroll
	.globl _get_scroll_position_x
	.globl _get_scroll_position_y
	.globl _update_resources
	.globl _load_background_blackpalette
	.globl _load_system_font
	.globl _print_debug_info
	.globl _print_unsigned_char
	.globl _print_signed_char
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$scroll_x$0_0$0==.
_scroll_x::
	.ds 2
G$scroll_y$0_0$0==.
_scroll_y::
	.ds 2
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
	G$load_logo_assets$0$0	= .
	.globl	G$load_logo_assets$0$0
	C$resources.c$13$0_0$94	= .
	.globl	C$resources.c$13$0_0$94
;resources.c:13: void load_logo_assets()
;	---------------------------------
; Function load_logo_assets
; ---------------------------------
_load_logo_assets::
	C$resources.c$15$1_0$94	= .
	.globl	C$resources.c$15$1_0$94
;resources.c:15: devkit_SMS_mapROMBank(logo1985tiles_bin_bank);
	ld	a, #0x03
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$resources.c$16$1_0$94	= .
	.globl	C$resources.c$16$1_0$94
;resources.c:16: devkit_SMS_loadTiles(logo1985tiles_bin, 0, logo1985tiles_bin_size);
	ld	hl, #0x0cc0
	push	hl
	ld	hl, #0x0000
	push	hl
	ld	hl, #_logo1985tiles_bin
	push	hl
	call	_devkit_SMS_loadTiles
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$resources.c$17$1_0$94	= .
	.globl	C$resources.c$17$1_0$94
;resources.c:17: devkit_SMS_loadTileMap(0, 0, logo1985tilemap_bin, logo1985tilemap_bin_size);
	ld	hl, #0x0600
	push	hl
	ld	hl, #_logo1985tilemap_bin
	push	hl
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_devkit_SMS_loadTileMap
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$resources.c$18$1_0$94	= .
	.globl	C$resources.c$18$1_0$94
;resources.c:18: }
	C$resources.c$18$1_0$94	= .
	.globl	C$resources.c$18$1_0$94
	XG$load_logo_assets$0$0	= .
	.globl	XG$load_logo_assets$0$0
	ret
	G$load_logo_halfpalette$0$0	= .
	.globl	G$load_logo_halfpalette$0$0
	C$resources.c$20$1_0$95	= .
	.globl	C$resources.c$20$1_0$95
;resources.c:20: void load_logo_halfpalette()
;	---------------------------------
; Function load_logo_halfpalette
; ---------------------------------
_load_logo_halfpalette::
	C$resources.c$22$1_0$95	= .
	.globl	C$resources.c$22$1_0$95
;resources.c:22: devkit_SMS_loadBGPaletteHalfBrightness(logo1985palette_bin);
	ld	hl, #_logo1985palette_bin
	push	hl
	call	_devkit_SMS_loadBGPaletteHalfBrightness
	pop	af
	C$resources.c$23$1_0$95	= .
	.globl	C$resources.c$23$1_0$95
;resources.c:23: }
	C$resources.c$23$1_0$95	= .
	.globl	C$resources.c$23$1_0$95
	XG$load_logo_halfpalette$0$0	= .
	.globl	XG$load_logo_halfpalette$0$0
	ret
	G$load_logo_fullpalette$0$0	= .
	.globl	G$load_logo_fullpalette$0$0
	C$resources.c$25$1_0$96	= .
	.globl	C$resources.c$25$1_0$96
;resources.c:25: void load_logo_fullpalette()
;	---------------------------------
; Function load_logo_fullpalette
; ---------------------------------
_load_logo_fullpalette::
	C$resources.c$27$1_0$96	= .
	.globl	C$resources.c$27$1_0$96
;resources.c:27: devkit_SMS_loadBGPalette(logo1985palette_bin);
	ld	hl, #_logo1985palette_bin
	push	hl
	call	_devkit_SMS_loadBGPalette
	pop	af
	C$resources.c$28$1_0$96	= .
	.globl	C$resources.c$28$1_0$96
;resources.c:28: }
	C$resources.c$28$1_0$96	= .
	.globl	C$resources.c$28$1_0$96
	XG$load_logo_fullpalette$0$0	= .
	.globl	XG$load_logo_fullpalette$0$0
	ret
	G$load_fnaclogo_assets$0$0	= .
	.globl	G$load_fnaclogo_assets$0$0
	C$resources.c$30$1_0$97	= .
	.globl	C$resources.c$30$1_0$97
;resources.c:30: void load_fnaclogo_assets()
;	---------------------------------
; Function load_fnaclogo_assets
; ---------------------------------
_load_fnaclogo_assets::
	C$resources.c$32$1_0$97	= .
	.globl	C$resources.c$32$1_0$97
;resources.c:32: devkit_SMS_mapROMBank(fnaclogotiles_psgcompr_bank);
	ld	a, #0x03
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$resources.c$33$1_0$97	= .
	.globl	C$resources.c$33$1_0$97
;resources.c:33: devkit_SMS_loadPSGaidencompressedTiles(fnaclogotiles_psgcompr,0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #_fnaclogotiles_psgcompr
	push	hl
	call	_devkit_SMS_loadPSGaidencompressedTiles
	pop	af
	C$resources.c$34$1_0$97	= .
	.globl	C$resources.c$34$1_0$97
;resources.c:34: devkit_SMS_loadTileMap(0, 0, fnaclogotilemap_bin, fnaclogotilemap_bin_size);
	ld	hl, #0x0600
	ex	(sp),hl
	ld	hl, #_fnaclogotilemap_bin
	push	hl
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_devkit_SMS_loadTileMap
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$resources.c$35$1_0$97	= .
	.globl	C$resources.c$35$1_0$97
;resources.c:35: }
	C$resources.c$35$1_0$97	= .
	.globl	C$resources.c$35$1_0$97
	XG$load_fnaclogo_assets$0$0	= .
	.globl	XG$load_fnaclogo_assets$0$0
	ret
	G$load_fnaclogo_halfpalette$0$0	= .
	.globl	G$load_fnaclogo_halfpalette$0$0
	C$resources.c$37$1_0$98	= .
	.globl	C$resources.c$37$1_0$98
;resources.c:37: void load_fnaclogo_halfpalette()
;	---------------------------------
; Function load_fnaclogo_halfpalette
; ---------------------------------
_load_fnaclogo_halfpalette::
	C$resources.c$39$1_0$98	= .
	.globl	C$resources.c$39$1_0$98
;resources.c:39: devkit_SMS_mapROMBank(fnaclogopalette_bin_bank);
	ld	a, #0x03
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$resources.c$40$1_0$98	= .
	.globl	C$resources.c$40$1_0$98
;resources.c:40: devkit_SMS_loadBGPaletteHalfBrightness(fnaclogopalette_bin);
	ld	hl, #_fnaclogopalette_bin
	push	hl
	call	_devkit_SMS_loadBGPaletteHalfBrightness
	pop	af
	C$resources.c$41$1_0$98	= .
	.globl	C$resources.c$41$1_0$98
;resources.c:41: }
	C$resources.c$41$1_0$98	= .
	.globl	C$resources.c$41$1_0$98
	XG$load_fnaclogo_halfpalette$0$0	= .
	.globl	XG$load_fnaclogo_halfpalette$0$0
	ret
	G$load_fnaclogo_fullpalette$0$0	= .
	.globl	G$load_fnaclogo_fullpalette$0$0
	C$resources.c$43$1_0$99	= .
	.globl	C$resources.c$43$1_0$99
;resources.c:43: void load_fnaclogo_fullpalette()
;	---------------------------------
; Function load_fnaclogo_fullpalette
; ---------------------------------
_load_fnaclogo_fullpalette::
	C$resources.c$45$1_0$99	= .
	.globl	C$resources.c$45$1_0$99
;resources.c:45: devkit_SMS_mapROMBank(fnaclogopalette_bin_bank);
	ld	a, #0x03
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$resources.c$46$1_0$99	= .
	.globl	C$resources.c$46$1_0$99
;resources.c:46: devkit_SMS_loadBGPalette(fnaclogopalette_bin);
	ld	hl, #_fnaclogopalette_bin
	push	hl
	call	_devkit_SMS_loadBGPalette
	pop	af
	C$resources.c$47$1_0$99	= .
	.globl	C$resources.c$47$1_0$99
;resources.c:47: }
	C$resources.c$47$1_0$99	= .
	.globl	C$resources.c$47$1_0$99
	XG$load_fnaclogo_fullpalette$0$0	= .
	.globl	XG$load_fnaclogo_fullpalette$0$0
	ret
	G$load_presentation_assets$0$0	= .
	.globl	G$load_presentation_assets$0$0
	C$resources.c$49$1_0$100	= .
	.globl	C$resources.c$49$1_0$100
;resources.c:49: void load_presentation_assets() {
;	---------------------------------
; Function load_presentation_assets
; ---------------------------------
_load_presentation_assets::
	C$resources.c$50$1_0$100	= .
	.globl	C$resources.c$50$1_0$100
;resources.c:50: devkit_SMS_mapROMBank(gatopresentaciontiles_psgcompr_bank);
	ld	a, #0x02
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$resources.c$51$1_0$100	= .
	.globl	C$resources.c$51$1_0$100
;resources.c:51: devkit_SMS_loadPSGaidencompressedTiles(gatopresentaciontiles_psgcompr,0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #_gatopresentaciontiles_psgcompr
	push	hl
	call	_devkit_SMS_loadPSGaidencompressedTiles
	pop	af
	C$resources.c$52$1_0$100	= .
	.globl	C$resources.c$52$1_0$100
;resources.c:52: devkit_SMS_loadTileMap(0, 0, gatopresentaciontilemap_bin, gatopresentaciontilemap_bin_size);	
	ld	hl, #0x0600
	ex	(sp),hl
	ld	hl, #_gatopresentaciontilemap_bin
	push	hl
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	call	_devkit_SMS_loadTileMap
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$resources.c$53$1_0$100	= .
	.globl	C$resources.c$53$1_0$100
;resources.c:53: }
	C$resources.c$53$1_0$100	= .
	.globl	C$resources.c$53$1_0$100
	XG$load_presentation_assets$0$0	= .
	.globl	XG$load_presentation_assets$0$0
	ret
	G$load_presentation_halfpalette$0$0	= .
	.globl	G$load_presentation_halfpalette$0$0
	C$resources.c$55$1_0$101	= .
	.globl	C$resources.c$55$1_0$101
;resources.c:55: void load_presentation_halfpalette() {
;	---------------------------------
; Function load_presentation_halfpalette
; ---------------------------------
_load_presentation_halfpalette::
	C$resources.c$56$1_0$101	= .
	.globl	C$resources.c$56$1_0$101
;resources.c:56: devkit_SMS_mapROMBank(gatopresentacionpalette_bin_bank);
	ld	a, #0x02
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$resources.c$57$1_0$101	= .
	.globl	C$resources.c$57$1_0$101
;resources.c:57: devkit_SMS_loadBGPaletteHalfBrightness(gatopresentacionpalette_bin);
	ld	hl, #_gatopresentacionpalette_bin
	push	hl
	call	_devkit_SMS_loadBGPaletteHalfBrightness
	pop	af
	C$resources.c$58$1_0$101	= .
	.globl	C$resources.c$58$1_0$101
;resources.c:58: }
	C$resources.c$58$1_0$101	= .
	.globl	C$resources.c$58$1_0$101
	XG$load_presentation_halfpalette$0$0	= .
	.globl	XG$load_presentation_halfpalette$0$0
	ret
	G$load_presentation_fullpalette$0$0	= .
	.globl	G$load_presentation_fullpalette$0$0
	C$resources.c$60$1_0$102	= .
	.globl	C$resources.c$60$1_0$102
;resources.c:60: void load_presentation_fullpalette() {
;	---------------------------------
; Function load_presentation_fullpalette
; ---------------------------------
_load_presentation_fullpalette::
	C$resources.c$61$1_0$102	= .
	.globl	C$resources.c$61$1_0$102
;resources.c:61: devkit_SMS_mapROMBank(gatopresentacionpalette_bin_bank);
	ld	a, #0x02
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$resources.c$62$1_0$102	= .
	.globl	C$resources.c$62$1_0$102
;resources.c:62: devkit_SMS_loadBGPalette(gatopresentacionpalette_bin);
	ld	hl, #_gatopresentacionpalette_bin
	push	hl
	call	_devkit_SMS_loadBGPalette
	pop	af
	C$resources.c$63$1_0$102	= .
	.globl	C$resources.c$63$1_0$102
;resources.c:63: }
	C$resources.c$63$1_0$102	= .
	.globl	C$resources.c$63$1_0$102
	XG$load_presentation_fullpalette$0$0	= .
	.globl	XG$load_presentation_fullpalette$0$0
	ret
	G$load_level1_assets$0$0	= .
	.globl	G$load_level1_assets$0$0
	C$resources.c$65$1_0$103	= .
	.globl	C$resources.c$65$1_0$103
;resources.c:65: void load_level1_assets() {
;	---------------------------------
; Function load_level1_assets
; ---------------------------------
_load_level1_assets::
	C$resources.c$66$1_0$103	= .
	.globl	C$resources.c$66$1_0$103
;resources.c:66: devkit_SMS_mapROMBank(level1_palette_bin_bank);
	ld	a, #0x02
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$resources.c$67$1_0$103	= .
	.globl	C$resources.c$67$1_0$103
;resources.c:67: devkit_SMS_loadBGPalette(level1_palette_bin);
	ld	hl, #_level1_palette_bin
	push	hl
	call	_devkit_SMS_loadBGPalette
	pop	af
	C$resources.c$68$1_0$103	= .
	.globl	C$resources.c$68$1_0$103
;resources.c:68: devkit_SMS_loadTiles(level1_tiles_bin,0, level1_tiles_bin_size);
	ld	hl, #0x1100
	push	hl
	ld	h, l
	push	hl
	ld	hl, #_level1_tiles_bin
	push	hl
	call	_devkit_SMS_loadTiles
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$resources.c$69$1_0$103	= .
	.globl	C$resources.c$69$1_0$103
;resources.c:69: devkit_SMS_mapROMBank(player_palette_bin_bank);
	ld	a, #0x03
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$resources.c$70$1_0$103	= .
	.globl	C$resources.c$70$1_0$103
;resources.c:70: devkit_SMS_loadSpritePalette(player_palette_bin);
	ld	hl, #_player_palette_bin
	push	hl
	call	_devkit_SMS_loadSpritePalette
	pop	af
	C$resources.c$71$1_0$103	= .
	.globl	C$resources.c$71$1_0$103
;resources.c:71: }
	C$resources.c$71$1_0$103	= .
	.globl	C$resources.c$71$1_0$103
	XG$load_level1_assets$0$0	= .
	.globl	XG$load_level1_assets$0$0
	ret
	G$init_level1_scroll$0$0	= .
	.globl	G$init_level1_scroll$0$0
	C$resources.c$73$1_0$104	= .
	.globl	C$resources.c$73$1_0$104
;resources.c:73: void init_level1_scroll() {
;	---------------------------------
; Function init_level1_scroll
; ---------------------------------
_init_level1_scroll::
	C$resources.c$74$1_0$104	= .
	.globl	C$resources.c$74$1_0$104
;resources.c:74: scroll_x = 0;
	ld	hl, #0x0000
	ld	(_scroll_x), hl
	C$resources.c$75$1_0$104	= .
	.globl	C$resources.c$75$1_0$104
;resources.c:75: scroll_y = 0;
	ld	l, h
	ld	(_scroll_y), hl
	C$resources.c$76$1_0$104	= .
	.globl	C$resources.c$76$1_0$104
;resources.c:76: devkit_SMS_mapROMBank(level1_metatiles_bin_bank);
	ld	a, #0x02
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$resources.c$77$1_0$104	= .
	.globl	C$resources.c$77$1_0$104
;resources.c:77: init_scroll(&level1_scrolltable_bin, &level1_metatiles_bin, scroll_x, scroll_y);
	ld	hl, (_scroll_y)
	push	hl
	ld	hl, (_scroll_x)
	push	hl
	ld	hl, #_level1_metatiles_bin
	push	hl
	ld	hl, #_level1_scrolltable_bin
	push	hl
	call	_init_scroll
	ld	hl, #8
	add	hl, sp
	ld	sp, hl
	C$resources.c$78$1_0$104	= .
	.globl	C$resources.c$78$1_0$104
;resources.c:78: }
	C$resources.c$78$1_0$104	= .
	.globl	C$resources.c$78$1_0$104
	XG$init_level1_scroll$0$0	= .
	.globl	XG$init_level1_scroll$0$0
	ret
	G$update_scroll$0$0	= .
	.globl	G$update_scroll$0$0
	C$resources.c$80$1_0$106	= .
	.globl	C$resources.c$80$1_0$106
;resources.c:80: void update_scroll(signed char delta_x, signed char delta_y) {
;	---------------------------------
; Function update_scroll
; ---------------------------------
_update_scroll::
	C$resources.c$81$1_0$106	= .
	.globl	C$resources.c$81$1_0$106
;resources.c:81: devkit_SMS_mapROMBank(level1_metatiles_bin_bank);
	ld	a, #0x02
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$resources.c$82$1_0$106	= .
	.globl	C$resources.c$82$1_0$106
;resources.c:82: move_scroll(delta_x, delta_y);
	ld	iy, #3
	add	iy, sp
	ld	h, 0 (iy)
	ld	l, -1 (iy)
	push	hl
	call	_move_scroll
	pop	af
	C$resources.c$83$1_0$106	= .
	.globl	C$resources.c$83$1_0$106
;resources.c:83: }
	C$resources.c$83$1_0$106	= .
	.globl	C$resources.c$83$1_0$106
	XG$update_scroll$0$0	= .
	.globl	XG$update_scroll$0$0
	ret
	G$get_scroll_position_x$0$0	= .
	.globl	G$get_scroll_position_x$0$0
	C$resources.c$85$1_0$107	= .
	.globl	C$resources.c$85$1_0$107
;resources.c:85: unsigned int get_scroll_position_x() {
;	---------------------------------
; Function get_scroll_position_x
; ---------------------------------
_get_scroll_position_x::
	C$resources.c$86$1_0$107	= .
	.globl	C$resources.c$86$1_0$107
;resources.c:86: return get_scroll_x();
	C$resources.c$87$1_0$107	= .
	.globl	C$resources.c$87$1_0$107
;resources.c:87: }
	C$resources.c$87$1_0$107	= .
	.globl	C$resources.c$87$1_0$107
	XG$get_scroll_position_x$0$0	= .
	.globl	XG$get_scroll_position_x$0$0
	jp	_get_scroll_x
	G$get_scroll_position_y$0$0	= .
	.globl	G$get_scroll_position_y$0$0
	C$resources.c$89$1_0$108	= .
	.globl	C$resources.c$89$1_0$108
;resources.c:89: unsigned int get_scroll_position_y() {
;	---------------------------------
; Function get_scroll_position_y
; ---------------------------------
_get_scroll_position_y::
	C$resources.c$90$1_0$108	= .
	.globl	C$resources.c$90$1_0$108
;resources.c:90: return get_scroll_y();
	C$resources.c$91$1_0$108	= .
	.globl	C$resources.c$91$1_0$108
;resources.c:91: }
	C$resources.c$91$1_0$108	= .
	.globl	C$resources.c$91$1_0$108
	XG$get_scroll_position_y$0$0	= .
	.globl	XG$get_scroll_position_y$0$0
	jp	_get_scroll_y
	G$update_resources$0$0	= .
	.globl	G$update_resources$0$0
	C$resources.c$94$1_0$109	= .
	.globl	C$resources.c$94$1_0$109
;resources.c:94: void update_resources()
;	---------------------------------
; Function update_resources
; ---------------------------------
_update_resources::
	C$resources.c$96$1_0$109	= .
	.globl	C$resources.c$96$1_0$109
;resources.c:96: updateTiles();
	call	_updateTiles
	C$resources.c$97$1_0$109	= .
	.globl	C$resources.c$97$1_0$109
;resources.c:97: updateAnimations();
	call	_updateAnimations
	C$resources.c$98$1_0$109	= .
	.globl	C$resources.c$98$1_0$109
;resources.c:98: drawEntities();
	C$resources.c$99$1_0$109	= .
	.globl	C$resources.c$99$1_0$109
;resources.c:99: }
	C$resources.c$99$1_0$109	= .
	.globl	C$resources.c$99$1_0$109
	XG$update_resources$0$0	= .
	.globl	XG$update_resources$0$0
	jp	_drawEntities
	G$load_background_blackpalette$0$0	= .
	.globl	G$load_background_blackpalette$0$0
	C$resources.c$101$1_0$110	= .
	.globl	C$resources.c$101$1_0$110
;resources.c:101: void load_background_blackpalette()
;	---------------------------------
; Function load_background_blackpalette
; ---------------------------------
_load_background_blackpalette::
	C$resources.c$103$1_0$110	= .
	.globl	C$resources.c$103$1_0$110
;resources.c:103: devkit_SMS_zeroBGPalette();
	C$resources.c$104$1_0$110	= .
	.globl	C$resources.c$104$1_0$110
;resources.c:104: }
	C$resources.c$104$1_0$110	= .
	.globl	C$resources.c$104$1_0$110
	XG$load_background_blackpalette$0$0	= .
	.globl	XG$load_background_blackpalette$0$0
	jp	_devkit_SMS_zeroBGPalette
	G$load_system_font$0$0	= .
	.globl	G$load_system_font$0$0
	C$resources.c$106$1_0$111	= .
	.globl	C$resources.c$106$1_0$111
;resources.c:106: void load_system_font()
;	---------------------------------
; Function load_system_font
; ---------------------------------
_load_system_font::
	C$resources.c$108$1_0$111	= .
	.globl	C$resources.c$108$1_0$111
;resources.c:108: devkit_SMS_mapROMBank(systemfont_psgcompr_bank);
	ld	a, #0x04
	push	af
	inc	sp
	call	_devkit_SMS_mapROMBank
	inc	sp
	C$resources.c$109$1_0$111	= .
	.globl	C$resources.c$109$1_0$111
;resources.c:109: devkit_SMS_loadPSGaidencompressedTiles(systemfont_psgcompr,0);
	ld	hl, #0x0000
	push	hl
	ld	hl, #_systemfont_psgcompr
	push	hl
	call	_devkit_SMS_loadPSGaidencompressedTiles
	pop	af
	pop	af
	C$resources.c$110$1_0$111	= .
	.globl	C$resources.c$110$1_0$111
;resources.c:110: }
	C$resources.c$110$1_0$111	= .
	.globl	C$resources.c$110$1_0$111
	XG$load_system_font$0$0	= .
	.globl	XG$load_system_font$0$0
	ret
	G$print_debug_info$0$0	= .
	.globl	G$print_debug_info$0$0
	C$resources.c$112$1_0$112	= .
	.globl	C$resources.c$112$1_0$112
;resources.c:112: void print_debug_info()
;	---------------------------------
; Function print_debug_info
; ---------------------------------
_print_debug_info::
	C$resources.c$115$1_0$112	= .
	.globl	C$resources.c$115$1_0$112
;resources.c:115: i = 0;
	C$resources.c$117$1_0$112	= .
	.globl	C$resources.c$117$1_0$112
;resources.c:117: }
	C$resources.c$117$1_0$112	= .
	.globl	C$resources.c$117$1_0$112
	XG$print_debug_info$0$0	= .
	.globl	XG$print_debug_info$0$0
	ret
	G$print_unsigned_char$0$0	= .
	.globl	G$print_unsigned_char$0$0
	C$resources.c$119$1_0$114	= .
	.globl	C$resources.c$119$1_0$114
;resources.c:119: void print_unsigned_char(unsigned char number)
;	---------------------------------
; Function print_unsigned_char
; ---------------------------------
_print_unsigned_char::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	C$resources.c$122$1_0$114	= .
	.globl	C$resources.c$122$1_0$114
;resources.c:122: devkit_SMS_setNextTileatXY(1,0);
	xor	a, a
	ld	d,a
	ld	e,#0x01
	push	de
	call	_devkit_SMS_setNextTileatXY
	pop	af
	C$resources.c$123$1_0$114	= .
	.globl	C$resources.c$123$1_0$114
;resources.c:123: tmpHundreds = number / 100;
	ld	c, 4 (ix)
	ld	b, #0x00
	push	bc
	ld	hl, #0x0064
	push	hl
	push	bc
	call	__divsint
	pop	af
	pop	af
	pop	bc
	C$resources.c$124$1_0$114	= .
	.globl	C$resources.c$124$1_0$114
;resources.c:124: devkit_SMS_setTile(96 + tmpHundreds);
	ld	-1 (ix), l
	ld	e, l
	ld	d, #0x00
	ld	hl, #0x0060
	add	hl, de
	push	bc
	push	de
	push	hl
	call	_devkit_SMS_setTile
	pop	af
	pop	de
	pop	bc
	C$resources.c$125$1_0$114	= .
	.globl	C$resources.c$125$1_0$114
;resources.c:125: tmpTens = (number - (tmpHundreds * 100)) / 10;
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	ld	hl, #0x000a
	push	hl
	push	bc
	call	__divsint
	pop	af
	pop	af
	ex	de, hl
	C$resources.c$126$1_0$114	= .
	.globl	C$resources.c$126$1_0$114
;resources.c:126: devkit_SMS_setTile(96 + tmpTens);
	ld	h, #0x00
	ld	l, e
	ld	bc, #0x0060
	add	hl, bc
	push	de
	push	hl
	call	_devkit_SMS_setTile
	pop	af
	pop	de
	C$resources.c$127$1_0$114	= .
	.globl	C$resources.c$127$1_0$114
;resources.c:127: tmpUnits = (number - (tmpHundreds * 100) - (tmpTens * 10));
	ld	a, -1 (ix)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	ld	c, a
	ld	a, 4 (ix)
	sub	a, c
	ld	c, a
	ld	a, e
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	ld	b, a
	ld	a, c
	sub	a, b
	C$resources.c$128$1_0$114	= .
	.globl	C$resources.c$128$1_0$114
;resources.c:128: devkit_SMS_setTile(96 + tmpUnits);
	ld	h, #0x00
	ld	l, a
	ld	de, #0x0060
	add	hl, de
	push	hl
	call	_devkit_SMS_setTile
	pop	af
	C$resources.c$129$1_0$114	= .
	.globl	C$resources.c$129$1_0$114
;resources.c:129: }
	inc	sp
	pop	ix
	C$resources.c$129$1_0$114	= .
	.globl	C$resources.c$129$1_0$114
	XG$print_unsigned_char$0$0	= .
	.globl	XG$print_unsigned_char$0$0
	ret
	G$print_signed_char$0$0	= .
	.globl	G$print_signed_char$0$0
	C$resources.c$131$1_0$116	= .
	.globl	C$resources.c$131$1_0$116
;resources.c:131: void print_signed_char(signed char number)
;	---------------------------------
; Function print_signed_char
; ---------------------------------
_print_signed_char::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	C$resources.c$134$1_0$116	= .
	.globl	C$resources.c$134$1_0$116
;resources.c:134: devkit_SMS_setNextTileatXY(1,0);
	xor	a, a
	ld	d,a
	ld	e,#0x01
	push	de
	call	_devkit_SMS_setNextTileatXY
	pop	af
	C$resources.c$135$1_0$116	= .
	.globl	C$resources.c$135$1_0$116
;resources.c:135: if(number < 0) {
	bit	7, 4 (ix)
	jr	Z, 00102$
	C$resources.c$136$2_0$117	= .
	.globl	C$resources.c$136$2_0$117
;resources.c:136: devkit_SMS_setTile(93);
	ld	hl, #0x005d
	push	hl
	call	_devkit_SMS_setTile
	pop	af
	C$resources.c$137$2_0$117	= .
	.globl	C$resources.c$137$2_0$117
;resources.c:137: number = number * -1;	
	xor	a, a
	sub	a, 4 (ix)
	ld	4 (ix), a
00102$:
	C$resources.c$139$1_0$116	= .
	.globl	C$resources.c$139$1_0$116
;resources.c:139: tmpHundreds = number / 100;
	ld	a, 4 (ix)
	ld	c, a
	rla
	sbc	a, a
	ld	b, a
	push	bc
	ld	hl, #0x0064
	push	hl
	push	bc
	call	__divsint
	pop	af
	pop	af
	pop	bc
	C$resources.c$140$1_0$116	= .
	.globl	C$resources.c$140$1_0$116
;resources.c:140: devkit_SMS_setTile(96 + tmpHundreds);
	ld	-1 (ix), l
	ld	e, l
	ld	d, #0x00
	ld	hl, #0x0060
	add	hl, de
	push	bc
	push	de
	push	hl
	call	_devkit_SMS_setTile
	pop	af
	pop	de
	pop	bc
	C$resources.c$141$1_0$116	= .
	.globl	C$resources.c$141$1_0$116
;resources.c:141: tmpTens = (number - (tmpHundreds * 100)) / 10;
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	ld	hl, #0x000a
	push	hl
	push	bc
	call	__divsint
	pop	af
	pop	af
	ex	de, hl
	C$resources.c$142$1_0$116	= .
	.globl	C$resources.c$142$1_0$116
;resources.c:142: devkit_SMS_setTile(96 + tmpTens);
	ld	h, #0x00
	ld	l, e
	ld	bc, #0x0060
	add	hl, bc
	push	de
	push	hl
	call	_devkit_SMS_setTile
	pop	af
	pop	de
	C$resources.c$143$1_0$116	= .
	.globl	C$resources.c$143$1_0$116
;resources.c:143: tmpUnits = (number - (tmpHundreds * 100) - (tmpTens * 10));
	ld	a, -1 (ix)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	add	a, a
	add	a, c
	add	a, a
	add	a, a
	ld	c, a
	ld	a, 4 (ix)
	sub	a, c
	ld	c, a
	ld	a, e
	add	a, a
	add	a, a
	add	a, e
	add	a, a
	ld	b, a
	ld	a, c
	sub	a, b
	C$resources.c$144$1_0$116	= .
	.globl	C$resources.c$144$1_0$116
;resources.c:144: devkit_SMS_setTile(96 + tmpUnits);	
	ld	h, #0x00
	ld	l, a
	ld	de, #0x0060
	add	hl, de
	push	hl
	call	_devkit_SMS_setTile
	pop	af
	C$resources.c$145$1_0$116	= .
	.globl	C$resources.c$145$1_0$116
;resources.c:145: }
	inc	sp
	pop	ix
	C$resources.c$145$1_0$116	= .
	.globl	C$resources.c$145$1_0$116
	XG$print_signed_char$0$0	= .
	.globl	XG$print_signed_char$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
