;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module GSLib
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GSL_LUTRowUpdate
	.globl _GSL_LUTColumnUpdate
	.globl _GSL_RAM
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
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$GSL_RAM$0_0$0==.
_GSL_RAM::
	.ds 263
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
	G$GSL_positionWindow$0$0	= .
	.globl	G$GSL_positionWindow$0$0
	C$GSLib.c$56$0_0$8	= .
	.globl	C$GSLib.c$56$0_0$8
;GSLib.c:56: void GSL_positionWindow(unsigned int X, unsigned int Y)
;	---------------------------------
; Function GSL_positionWindow
; ---------------------------------
_GSL_positionWindow::
	C$GSLib.c$68$1_0$8	= .
	.globl	C$GSLib.c$68$1_0$8
;GSLib.c:68: __endasm;
	pop	de
	pop	hl
	pop	bc
	push	bc
	push	hl
	push	de
	call	GSL_PositionWindow
	C$GSLib.c$69$1_0$8	= .
	.globl	C$GSLib.c$69$1_0$8
;GSLib.c:69: }							
	C$GSLib.c$69$1_0$8	= .
	.globl	C$GSLib.c$69$1_0$8
	XG$GSL_positionWindow$0$0	= .
	.globl	XG$GSL_positionWindow$0$0
	ret
	G$GSL_metatileLookup$0$0	= .
	.globl	G$GSL_metatileLookup$0$0
	C$GSLib.c$73$1_0$10	= .
	.globl	C$GSLib.c$73$1_0$10
;GSLib.c:73: unsigned int * GSL_metatileLookup(unsigned int x, unsigned int y)
;	---------------------------------
; Function GSL_metatileLookup
; ---------------------------------
_GSL_metatileLookup::
	C$GSLib.c$84$1_0$10	= .
	.globl	C$GSLib.c$84$1_0$10
;GSLib.c:84: __endasm;
	pop	de
	pop	hl
	pop	bc
	push	bc
	push	hl
	push	de
	call	GSL_MetatileLookup
	C$GSLib.c$85$1_0$10	= .
	.globl	C$GSLib.c$85$1_0$10
;GSLib.c:85: }
	C$GSLib.c$85$1_0$10	= .
	.globl	C$GSLib.c$85$1_0$10
	XG$GSL_metatileLookup$0$0	= .
	.globl	XG$GSL_metatileLookup$0$0
	ret
	G$GSL_tileLookup$0$0	= .
	.globl	G$GSL_tileLookup$0$0
	C$GSLib.c$89$1_0$12	= .
	.globl	C$GSLib.c$89$1_0$12
;GSLib.c:89: void GSL_tileLookup(unsigned int x, unsigned int y)
;	---------------------------------
; Function GSL_tileLookup
; ---------------------------------
_GSL_tileLookup::
	C$GSLib.c$101$1_0$12	= .
	.globl	C$GSLib.c$101$1_0$12
;GSLib.c:101: __endasm;
	pop	de
	pop	hl
	pop	bc
	push	bc
	push	hl
	push	de
	call	GSL_TileLookup
	C$GSLib.c$102$1_0$12	= .
	.globl	C$GSLib.c$102$1_0$12
;GSLib.c:102: }
	C$GSLib.c$102$1_0$12	= .
	.globl	C$GSLib.c$102$1_0$12
	XG$GSL_tileLookup$0$0	= .
	.globl	XG$GSL_tileLookup$0$0
	ret
	G$GSL_refreshVDP$0$0	= .
	.globl	G$GSL_refreshVDP$0$0
	C$GSLib.c$106$1_0$13	= .
	.globl	C$GSLib.c$106$1_0$13
;GSLib.c:106: void GSL_refreshVDP()
;	---------------------------------
; Function GSL_refreshVDP
; ---------------------------------
_GSL_refreshVDP::
	C$GSLib.c$112$1_0$13	= .
	.globl	C$GSLib.c$112$1_0$13
;GSLib.c:112: __endasm;
	push	iy
	call	GSL_refreshVDP
	pop	iy
	C$GSLib.c$113$1_0$13	= .
	.globl	C$GSLib.c$113$1_0$13
;GSLib.c:113: }
	C$GSLib.c$113$1_0$13	= .
	.globl	C$GSLib.c$113$1_0$13
	XG$GSL_refreshVDP$0$0	= .
	.globl	XG$GSL_refreshVDP$0$0
	ret
	G$GSL_scroll$0$0	= .
	.globl	G$GSL_scroll$0$0
	C$GSLib.c$117$1_0$15	= .
	.globl	C$GSLib.c$117$1_0$15
;GSLib.c:117: void GSL_scroll(char x, char y)
;	---------------------------------
; Function GSL_scroll
; ---------------------------------
_GSL_scroll::
	C$GSLib.c$135$1_0$15	= .
	.globl	C$GSLib.c$135$1_0$15
;GSLib.c:135: __endasm;
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
	C$GSLib.c$136$1_0$15	= .
	.globl	C$GSLib.c$136$1_0$15
;GSLib.c:136: }
	C$GSLib.c$136$1_0$15	= .
	.globl	C$GSLib.c$136$1_0$15
	XG$GSL_scroll$0$0	= .
	.globl	XG$GSL_scroll$0$0
	ret
	G$GSL_VBlank$0$0	= .
	.globl	G$GSL_VBlank$0$0
	C$GSLib.c$140$1_0$16	= .
	.globl	C$GSLib.c$140$1_0$16
;GSLib.c:140: void GSL_VBlank()
;	---------------------------------
; Function GSL_VBlank
; ---------------------------------
_GSL_VBlank::
	C$GSLib.c$146$1_0$16	= .
	.globl	C$GSLib.c$146$1_0$16
;GSLib.c:146: __endasm;
	push	iy
	call	GSL_VBlankRoutine
	pop	iy
	C$GSLib.c$147$1_0$16	= .
	.globl	C$GSLib.c$147$1_0$16
;GSLib.c:147: }
	C$GSLib.c$147$1_0$16	= .
	.globl	C$GSLib.c$147$1_0$16
	XG$GSL_VBlank$0$0	= .
	.globl	XG$GSL_VBlank$0$0
	ret
	G$GSL_metatileUpdate$0$0	= .
	.globl	G$GSL_metatileUpdate$0$0
	C$GSLib.c$151$1_0$17	= .
	.globl	C$GSLib.c$151$1_0$17
;GSLib.c:151: void GSL_metatileUpdate()
;	---------------------------------
; Function GSL_metatileUpdate
; ---------------------------------
_GSL_metatileUpdate::
	C$GSLib.c$155$1_0$17	= .
	.globl	C$GSLib.c$155$1_0$17
;GSLib.c:155: __endasm;
	call	GSL_MetatileUpdate
	C$GSLib.c$156$1_0$17	= .
	.globl	C$GSLib.c$156$1_0$17
;GSLib.c:156: }
	C$GSLib.c$156$1_0$17	= .
	.globl	C$GSLib.c$156$1_0$17
	XG$GSL_metatileUpdate$0$0	= .
	.globl	XG$GSL_metatileUpdate$0$0
	ret
	G$GSL_metatileUpdateCustom$0$0	= .
	.globl	G$GSL_metatileUpdateCustom$0$0
	C$GSLib.c$160$1_0$19	= .
	.globl	C$GSLib.c$160$1_0$19
;GSLib.c:160: void GSL_metatileUpdateCustom(unsigned int x, unsigned int y, unsigned int offset)
;	---------------------------------
; Function GSL_metatileUpdateCustom
; ---------------------------------
_GSL_metatileUpdateCustom::
	C$GSLib.c$178$1_0$19	= .
	.globl	C$GSLib.c$178$1_0$19
;GSLib.c:178: __endasm;	
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
	C$GSLib.c$179$1_0$19	= .
	.globl	C$GSLib.c$179$1_0$19
;GSLib.c:179: }
	C$GSLib.c$179$1_0$19	= .
	.globl	C$GSLib.c$179$1_0$19
	XG$GSL_metatileUpdateCustom$0$0	= .
	.globl	XG$GSL_metatileUpdateCustom$0$0
	ret
	G$GSL_getMapWidthInPixels$0$0	= .
	.globl	G$GSL_getMapWidthInPixels$0$0
	C$GSLib.c$182$1_0$20	= .
	.globl	C$GSLib.c$182$1_0$20
;GSLib.c:182: unsigned int GSL_getMapWidthInPixels()
;	---------------------------------
; Function GSL_getMapWidthInPixels
; ---------------------------------
_GSL_getMapWidthInPixels::
	C$GSLib.c$184$1_0$20	= .
	.globl	C$GSLib.c$184$1_0$20
;GSLib.c:184: return *((unsigned int*)(&GSL_RAM + 6));
	ld	hl, (#(_GSL_RAM + 0x0006) + 0)
	C$GSLib.c$185$1_0$20	= .
	.globl	C$GSLib.c$185$1_0$20
;GSLib.c:185: }
	C$GSLib.c$185$1_0$20	= .
	.globl	C$GSLib.c$185$1_0$20
	XG$GSL_getMapWidthInPixels$0$0	= .
	.globl	XG$GSL_getMapWidthInPixels$0$0
	ret
	G$GSL_getMapHeightInPixels$0$0	= .
	.globl	G$GSL_getMapHeightInPixels$0$0
	C$GSLib.c$189$1_0$21	= .
	.globl	C$GSLib.c$189$1_0$21
;GSLib.c:189: unsigned int GSL_getMapHeightInPixels()
;	---------------------------------
; Function GSL_getMapHeightInPixels
; ---------------------------------
_GSL_getMapHeightInPixels::
	C$GSLib.c$191$1_0$21	= .
	.globl	C$GSLib.c$191$1_0$21
;GSLib.c:191: return *((unsigned int*)(&GSL_RAM + 8));
	ld	hl, (#(_GSL_RAM + 0x0008) + 0)
	C$GSLib.c$192$1_0$21	= .
	.globl	C$GSLib.c$192$1_0$21
;GSLib.c:192: }
	C$GSLib.c$192$1_0$21	= .
	.globl	C$GSLib.c$192$1_0$21
	XG$GSL_getMapHeightInPixels$0$0	= .
	.globl	XG$GSL_getMapHeightInPixels$0$0
	ret
	G$GSL_getMapWidthInMetatiles$0$0	= .
	.globl	G$GSL_getMapWidthInMetatiles$0$0
	C$GSLib.c$196$1_0$22	= .
	.globl	C$GSLib.c$196$1_0$22
;GSLib.c:196: unsigned int GSL_getMapWidthInMetatiles()
;	---------------------------------
; Function GSL_getMapWidthInMetatiles
; ---------------------------------
_GSL_getMapWidthInMetatiles::
	C$GSLib.c$198$1_0$22	= .
	.globl	C$GSLib.c$198$1_0$22
;GSLib.c:198: return *((unsigned int*)(&GSL_RAM + 2));
	ld	hl, (#(_GSL_RAM + 0x0002) + 0)
	C$GSLib.c$199$1_0$22	= .
	.globl	C$GSLib.c$199$1_0$22
;GSLib.c:199: }
	C$GSLib.c$199$1_0$22	= .
	.globl	C$GSLib.c$199$1_0$22
	XG$GSL_getMapWidthInMetatiles$0$0	= .
	.globl	XG$GSL_getMapWidthInMetatiles$0$0
	ret
	G$GSL_getMapHeightInMetatiles$0$0	= .
	.globl	G$GSL_getMapHeightInMetatiles$0$0
	C$GSLib.c$203$1_0$23	= .
	.globl	C$GSLib.c$203$1_0$23
;GSLib.c:203: unsigned int GSL_getMapHeightInMetatiles()
;	---------------------------------
; Function GSL_getMapHeightInMetatiles
; ---------------------------------
_GSL_getMapHeightInMetatiles::
	C$GSLib.c$205$1_0$23	= .
	.globl	C$GSLib.c$205$1_0$23
;GSLib.c:205: return *((unsigned int*)(&GSL_RAM + 4));
	ld	hl, (#(_GSL_RAM + 0x0004) + 0)
	C$GSLib.c$206$1_0$23	= .
	.globl	C$GSLib.c$206$1_0$23
;GSLib.c:206: }
	C$GSLib.c$206$1_0$23	= .
	.globl	C$GSLib.c$206$1_0$23
	XG$GSL_getMapHeightInMetatiles$0$0	= .
	.globl	XG$GSL_getMapHeightInMetatiles$0$0
	ret
	G$GSL_getScrolltableSize$0$0	= .
	.globl	G$GSL_getScrolltableSize$0$0
	C$GSLib.c$210$1_0$24	= .
	.globl	C$GSLib.c$210$1_0$24
;GSLib.c:210: unsigned int GSL_getScrolltableSize()
;	---------------------------------
; Function GSL_getScrolltableSize
; ---------------------------------
_GSL_getScrolltableSize::
	C$GSLib.c$212$1_0$24	= .
	.globl	C$GSLib.c$212$1_0$24
;GSLib.c:212: return *((unsigned int*)(&GSL_RAM + 0));
	ld	hl, (#_GSL_RAM + 0)
	C$GSLib.c$213$1_0$24	= .
	.globl	C$GSLib.c$213$1_0$24
;GSLib.c:213: }
	C$GSLib.c$213$1_0$24	= .
	.globl	C$GSLib.c$213$1_0$24
	XG$GSL_getScrolltableSize$0$0	= .
	.globl	XG$GSL_getScrolltableSize$0$0
	ret
	G$GSL_getCurrentX$0$0	= .
	.globl	G$GSL_getCurrentX$0$0
	C$GSLib.c$217$1_0$25	= .
	.globl	C$GSLib.c$217$1_0$25
;GSLib.c:217: unsigned int GSL_getCurrentX()
;	---------------------------------
; Function GSL_getCurrentX
; ---------------------------------
_GSL_getCurrentX::
	C$GSLib.c$219$1_0$25	= .
	.globl	C$GSLib.c$219$1_0$25
;GSLib.c:219: return *((unsigned int*)(&GSL_RAM + 27));
	ld	hl, (#(_GSL_RAM + 0x001b) + 0)
	C$GSLib.c$220$1_0$25	= .
	.globl	C$GSLib.c$220$1_0$25
;GSLib.c:220: }
	C$GSLib.c$220$1_0$25	= .
	.globl	C$GSLib.c$220$1_0$25
	XG$GSL_getCurrentX$0$0	= .
	.globl	XG$GSL_getCurrentX$0$0
	ret
	G$GSL_getCurrentY$0$0	= .
	.globl	G$GSL_getCurrentY$0$0
	C$GSLib.c$224$1_0$26	= .
	.globl	C$GSLib.c$224$1_0$26
;GSLib.c:224: unsigned int GSL_getCurrentY()
;	---------------------------------
; Function GSL_getCurrentY
; ---------------------------------
_GSL_getCurrentY::
	C$GSLib.c$226$1_0$26	= .
	.globl	C$GSLib.c$226$1_0$26
;GSLib.c:226: return *((unsigned int*)(&GSL_RAM + 29));
	ld	hl, (#(_GSL_RAM + 0x001d) + 0)
	C$GSLib.c$227$1_0$26	= .
	.globl	C$GSLib.c$227$1_0$26
;GSLib.c:227: }
	C$GSLib.c$227$1_0$26	= .
	.globl	C$GSLib.c$227$1_0$26
	XG$GSL_getCurrentY$0$0	= .
	.globl	XG$GSL_getCurrentY$0$0
	ret
	G$GSL_getCollisionCount$0$0	= .
	.globl	G$GSL_getCollisionCount$0$0
	C$GSLib.c$231$1_0$27	= .
	.globl	C$GSLib.c$231$1_0$27
;GSLib.c:231: unsigned char GSL_getCollisionCount()
;	---------------------------------
; Function GSL_getCollisionCount
; ---------------------------------
_GSL_getCollisionCount::
	C$GSLib.c$233$1_0$27	= .
	.globl	C$GSLib.c$233$1_0$27
;GSLib.c:233: return *((unsigned char*)(&GSL_RAM + 44));
	ld	a, (#(_GSL_RAM + 0x002c) + 0)
	ld	l, a
	C$GSLib.c$234$1_0$27	= .
	.globl	C$GSLib.c$234$1_0$27
;GSLib.c:234: }
	C$GSLib.c$234$1_0$27	= .
	.globl	C$GSLib.c$234$1_0$27
	XG$GSL_getCollisionCount$0$0	= .
	.globl	XG$GSL_getCollisionCount$0$0
	ret
	G$GSL_getScrolltableAddress$0$0	= .
	.globl	G$GSL_getScrolltableAddress$0$0
	C$GSLib.c$237$1_0$28	= .
	.globl	C$GSLib.c$237$1_0$28
;GSLib.c:237: unsigned char * GSL_getScrolltableAddress()
;	---------------------------------
; Function GSL_getScrolltableAddress
; ---------------------------------
_GSL_getScrolltableAddress::
	C$GSLib.c$239$1_0$28	= .
	.globl	C$GSLib.c$239$1_0$28
;GSLib.c:239: return *(unsigned char**)(&GSL_RAM + 13);
	ld	hl, (#(_GSL_RAM + 0x000d) + 0)
	C$GSLib.c$240$1_0$28	= .
	.globl	C$GSLib.c$240$1_0$28
;GSLib.c:240: }
	C$GSLib.c$240$1_0$28	= .
	.globl	C$GSLib.c$240$1_0$28
	XG$GSL_getScrolltableAddress$0$0	= .
	.globl	XG$GSL_getScrolltableAddress$0$0
	ret
	G$GSL_initializeMap$0$0	= .
	.globl	G$GSL_initializeMap$0$0
	C$GSLib.c$244$1_0$30	= .
	.globl	C$GSLib.c$244$1_0$30
;GSLib.c:244: void GSL_initializeMap(void *scrolltable, void *metatiles)
;	---------------------------------
; Function GSL_initializeMap
; ---------------------------------
_GSL_initializeMap::
	C$GSLib.c$1724$1_0$30	= .
	.globl	C$GSLib.c$1724$1_0$30
;GSLib.c:1724: __endasm;
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
	C$GSLib.c$1725$1_0$30	= .
	.globl	C$GSLib.c$1725$1_0$30
;GSLib.c:1725: }
	C$GSLib.c$1725$1_0$30	= .
	.globl	C$GSLib.c$1725$1_0$30
	XG$GSL_initializeMap$0$0	= .
	.globl	XG$GSL_initializeMap$0$0
	ret
	.area _CODE
G$GSL_LUTColumnUpdate$0_0$0 == .
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
G$GSL_LUTRowUpdate$0_0$0 == .
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
	.area _INITIALIZER
	.area _CABS (ABS)
