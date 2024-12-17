;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module _gsl_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GSL_getScrolltableAddress
	.globl _GSL_getCollisionCount
	.globl _GSL_getCurrentY
	.globl _GSL_getCurrentX
	.globl _GSL_getScrolltableSize
	.globl _GSL_getMapHeightInMetatiles
	.globl _GSL_getMapWidthInMetatiles
	.globl _GSL_getMapHeightInPixels
	.globl _GSL_getMapWidthInPixels
	.globl _GSL_metatileUpdateCustom
	.globl _GSL_metatileUpdate
	.globl _GSL_VBlank
	.globl _GSL_scroll
	.globl _GSL_refreshVDP
	.globl _GSL_tileLookup
	.globl _GSL_metatileLookup
	.globl _GSL_positionWindow
	.globl _GSL_initializeMap
	.globl _devkit_GSL_initializeMap
	.globl _devkit_GSL_positionWindow
	.globl _devkit_GSL_metatileLookup
	.globl _devkit_GSL_tileLookup
	.globl _devkit_GSL_refreshVDP
	.globl _devkit_GSL_scroll
	.globl _devkit_GSL_VBlank
	.globl _devkit_GSL_metatileUpdate
	.globl _devkit_GSL_metatileUpdateCustom
	.globl _devkit_GSL_getMapWidthInPixels
	.globl _devkit_GSL_getMapHeightInPixels
	.globl _devkit_GSL_getMapWidthInMetatiles
	.globl _devkit_GSL_getMapHeightInMetatiles
	.globl _devkit_GSL_getScrolltableSize
	.globl _devkit_GSL_getCurrentX
	.globl _devkit_GSL_getCurrentY
	.globl _devkit_GSL_getCollisionCount
	.globl _devkit_GSL_getScrolltableAddress
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
	G$devkit_GSL_initializeMap$0$0	= .
	.globl	G$devkit_GSL_initializeMap$0$0
	C$_gsl_manager.c$9$0_0$14	= .
	.globl	C$_gsl_manager.c$9$0_0$14
;_gsl_manager.c:9: void devkit_GSL_initializeMap( void *scrolltable, void *metatiles )
;	---------------------------------
; Function devkit_GSL_initializeMap
; ---------------------------------
_devkit_GSL_initializeMap::
	C$_gsl_manager.c$11$1_0$14	= .
	.globl	C$_gsl_manager.c$11$1_0$14
;_gsl_manager.c:11: GSL_initializeMap( scrolltable, metatiles );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_GSL_initializeMap
	pop	af
	pop	af
	C$_gsl_manager.c$12$1_0$14	= .
	.globl	C$_gsl_manager.c$12$1_0$14
;_gsl_manager.c:12: }
	C$_gsl_manager.c$12$1_0$14	= .
	.globl	C$_gsl_manager.c$12$1_0$14
	XG$devkit_GSL_initializeMap$0$0	= .
	.globl	XG$devkit_GSL_initializeMap$0$0
	ret
	G$devkit_GSL_positionWindow$0$0	= .
	.globl	G$devkit_GSL_positionWindow$0$0
	C$_gsl_manager.c$13$1_0$16	= .
	.globl	C$_gsl_manager.c$13$1_0$16
;_gsl_manager.c:13: void devkit_GSL_positionWindow( unsigned int X, unsigned int Y )
;	---------------------------------
; Function devkit_GSL_positionWindow
; ---------------------------------
_devkit_GSL_positionWindow::
	C$_gsl_manager.c$15$1_0$16	= .
	.globl	C$_gsl_manager.c$15$1_0$16
;_gsl_manager.c:15: GSL_positionWindow( X, Y );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_GSL_positionWindow
	pop	af
	pop	af
	C$_gsl_manager.c$16$1_0$16	= .
	.globl	C$_gsl_manager.c$16$1_0$16
;_gsl_manager.c:16: }
	C$_gsl_manager.c$16$1_0$16	= .
	.globl	C$_gsl_manager.c$16$1_0$16
	XG$devkit_GSL_positionWindow$0$0	= .
	.globl	XG$devkit_GSL_positionWindow$0$0
	ret
	G$devkit_GSL_metatileLookup$0$0	= .
	.globl	G$devkit_GSL_metatileLookup$0$0
	C$_gsl_manager.c$17$1_0$18	= .
	.globl	C$_gsl_manager.c$17$1_0$18
;_gsl_manager.c:17: unsigned int *devkit_GSL_metatileLookup( unsigned int x, unsigned int y )
;	---------------------------------
; Function devkit_GSL_metatileLookup
; ---------------------------------
_devkit_GSL_metatileLookup::
	C$_gsl_manager.c$19$1_0$18	= .
	.globl	C$_gsl_manager.c$19$1_0$18
;_gsl_manager.c:19: return GSL_metatileLookup( x, y );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_GSL_metatileLookup
	pop	af
	pop	af
	C$_gsl_manager.c$20$1_0$18	= .
	.globl	C$_gsl_manager.c$20$1_0$18
;_gsl_manager.c:20: }
	C$_gsl_manager.c$20$1_0$18	= .
	.globl	C$_gsl_manager.c$20$1_0$18
	XG$devkit_GSL_metatileLookup$0$0	= .
	.globl	XG$devkit_GSL_metatileLookup$0$0
	ret
	G$devkit_GSL_tileLookup$0$0	= .
	.globl	G$devkit_GSL_tileLookup$0$0
	C$_gsl_manager.c$21$1_0$20	= .
	.globl	C$_gsl_manager.c$21$1_0$20
;_gsl_manager.c:21: void devkit_GSL_tileLookup( unsigned int x, unsigned int y )
;	---------------------------------
; Function devkit_GSL_tileLookup
; ---------------------------------
_devkit_GSL_tileLookup::
	C$_gsl_manager.c$23$1_0$20	= .
	.globl	C$_gsl_manager.c$23$1_0$20
;_gsl_manager.c:23: GSL_tileLookup( x, y );
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_GSL_tileLookup
	pop	af
	pop	af
	C$_gsl_manager.c$24$1_0$20	= .
	.globl	C$_gsl_manager.c$24$1_0$20
;_gsl_manager.c:24: }
	C$_gsl_manager.c$24$1_0$20	= .
	.globl	C$_gsl_manager.c$24$1_0$20
	XG$devkit_GSL_tileLookup$0$0	= .
	.globl	XG$devkit_GSL_tileLookup$0$0
	ret
	G$devkit_GSL_refreshVDP$0$0	= .
	.globl	G$devkit_GSL_refreshVDP$0$0
	C$_gsl_manager.c$25$1_0$21	= .
	.globl	C$_gsl_manager.c$25$1_0$21
;_gsl_manager.c:25: void devkit_GSL_refreshVDP()
;	---------------------------------
; Function devkit_GSL_refreshVDP
; ---------------------------------
_devkit_GSL_refreshVDP::
	C$_gsl_manager.c$27$1_0$21	= .
	.globl	C$_gsl_manager.c$27$1_0$21
;_gsl_manager.c:27: GSL_refreshVDP();
	C$_gsl_manager.c$28$1_0$21	= .
	.globl	C$_gsl_manager.c$28$1_0$21
;_gsl_manager.c:28: }
	C$_gsl_manager.c$28$1_0$21	= .
	.globl	C$_gsl_manager.c$28$1_0$21
	XG$devkit_GSL_refreshVDP$0$0	= .
	.globl	XG$devkit_GSL_refreshVDP$0$0
	jp	_GSL_refreshVDP
	G$devkit_GSL_scroll$0$0	= .
	.globl	G$devkit_GSL_scroll$0$0
	C$_gsl_manager.c$29$1_0$23	= .
	.globl	C$_gsl_manager.c$29$1_0$23
;_gsl_manager.c:29: void devkit_GSL_scroll( char x, char y )
;	---------------------------------
; Function devkit_GSL_scroll
; ---------------------------------
_devkit_GSL_scroll::
	C$_gsl_manager.c$31$1_0$23	= .
	.globl	C$_gsl_manager.c$31$1_0$23
;_gsl_manager.c:31: GSL_scroll( x, y );
	ld	iy, #3
	add	iy, sp
	ld	h, 0 (iy)
	ld	l, -1 (iy)
	push	hl
	call	_GSL_scroll
	pop	af
	C$_gsl_manager.c$32$1_0$23	= .
	.globl	C$_gsl_manager.c$32$1_0$23
;_gsl_manager.c:32: }
	C$_gsl_manager.c$32$1_0$23	= .
	.globl	C$_gsl_manager.c$32$1_0$23
	XG$devkit_GSL_scroll$0$0	= .
	.globl	XG$devkit_GSL_scroll$0$0
	ret
	G$devkit_GSL_VBlank$0$0	= .
	.globl	G$devkit_GSL_VBlank$0$0
	C$_gsl_manager.c$33$1_0$24	= .
	.globl	C$_gsl_manager.c$33$1_0$24
;_gsl_manager.c:33: void devkit_GSL_VBlank()
;	---------------------------------
; Function devkit_GSL_VBlank
; ---------------------------------
_devkit_GSL_VBlank::
	C$_gsl_manager.c$35$1_0$24	= .
	.globl	C$_gsl_manager.c$35$1_0$24
;_gsl_manager.c:35: GSL_VBlank();
	C$_gsl_manager.c$36$1_0$24	= .
	.globl	C$_gsl_manager.c$36$1_0$24
;_gsl_manager.c:36: }
	C$_gsl_manager.c$36$1_0$24	= .
	.globl	C$_gsl_manager.c$36$1_0$24
	XG$devkit_GSL_VBlank$0$0	= .
	.globl	XG$devkit_GSL_VBlank$0$0
	jp	_GSL_VBlank
	G$devkit_GSL_metatileUpdate$0$0	= .
	.globl	G$devkit_GSL_metatileUpdate$0$0
	C$_gsl_manager.c$37$1_0$25	= .
	.globl	C$_gsl_manager.c$37$1_0$25
;_gsl_manager.c:37: void devkit_GSL_metatileUpdate()
;	---------------------------------
; Function devkit_GSL_metatileUpdate
; ---------------------------------
_devkit_GSL_metatileUpdate::
	C$_gsl_manager.c$39$1_0$25	= .
	.globl	C$_gsl_manager.c$39$1_0$25
;_gsl_manager.c:39: GSL_metatileUpdate();
	C$_gsl_manager.c$40$1_0$25	= .
	.globl	C$_gsl_manager.c$40$1_0$25
;_gsl_manager.c:40: }
	C$_gsl_manager.c$40$1_0$25	= .
	.globl	C$_gsl_manager.c$40$1_0$25
	XG$devkit_GSL_metatileUpdate$0$0	= .
	.globl	XG$devkit_GSL_metatileUpdate$0$0
	jp	_GSL_metatileUpdate
	G$devkit_GSL_metatileUpdateCustom$0$0	= .
	.globl	G$devkit_GSL_metatileUpdateCustom$0$0
	C$_gsl_manager.c$41$1_0$27	= .
	.globl	C$_gsl_manager.c$41$1_0$27
;_gsl_manager.c:41: void devkit_GSL_metatileUpdateCustom( unsigned int x, unsigned int y, unsigned int offset )
;	---------------------------------
; Function devkit_GSL_metatileUpdateCustom
; ---------------------------------
_devkit_GSL_metatileUpdateCustom::
	C$_gsl_manager.c$43$1_0$27	= .
	.globl	C$_gsl_manager.c$43$1_0$27
;_gsl_manager.c:43: GSL_metatileUpdateCustom( x, y, offset );
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
	call	_GSL_metatileUpdateCustom
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$_gsl_manager.c$44$1_0$27	= .
	.globl	C$_gsl_manager.c$44$1_0$27
;_gsl_manager.c:44: }
	C$_gsl_manager.c$44$1_0$27	= .
	.globl	C$_gsl_manager.c$44$1_0$27
	XG$devkit_GSL_metatileUpdateCustom$0$0	= .
	.globl	XG$devkit_GSL_metatileUpdateCustom$0$0
	ret
	G$devkit_GSL_getMapWidthInPixels$0$0	= .
	.globl	G$devkit_GSL_getMapWidthInPixels$0$0
	C$_gsl_manager.c$45$1_0$28	= .
	.globl	C$_gsl_manager.c$45$1_0$28
;_gsl_manager.c:45: unsigned int devkit_GSL_getMapWidthInPixels()
;	---------------------------------
; Function devkit_GSL_getMapWidthInPixels
; ---------------------------------
_devkit_GSL_getMapWidthInPixels::
	C$_gsl_manager.c$47$1_0$28	= .
	.globl	C$_gsl_manager.c$47$1_0$28
;_gsl_manager.c:47: return GSL_getMapWidthInPixels();
	C$_gsl_manager.c$48$1_0$28	= .
	.globl	C$_gsl_manager.c$48$1_0$28
;_gsl_manager.c:48: }
	C$_gsl_manager.c$48$1_0$28	= .
	.globl	C$_gsl_manager.c$48$1_0$28
	XG$devkit_GSL_getMapWidthInPixels$0$0	= .
	.globl	XG$devkit_GSL_getMapWidthInPixels$0$0
	jp	_GSL_getMapWidthInPixels
	G$devkit_GSL_getMapHeightInPixels$0$0	= .
	.globl	G$devkit_GSL_getMapHeightInPixels$0$0
	C$_gsl_manager.c$49$1_0$29	= .
	.globl	C$_gsl_manager.c$49$1_0$29
;_gsl_manager.c:49: unsigned int devkit_GSL_getMapHeightInPixels()
;	---------------------------------
; Function devkit_GSL_getMapHeightInPixels
; ---------------------------------
_devkit_GSL_getMapHeightInPixels::
	C$_gsl_manager.c$51$1_0$29	= .
	.globl	C$_gsl_manager.c$51$1_0$29
;_gsl_manager.c:51: return GSL_getMapHeightInPixels();
	C$_gsl_manager.c$52$1_0$29	= .
	.globl	C$_gsl_manager.c$52$1_0$29
;_gsl_manager.c:52: }
	C$_gsl_manager.c$52$1_0$29	= .
	.globl	C$_gsl_manager.c$52$1_0$29
	XG$devkit_GSL_getMapHeightInPixels$0$0	= .
	.globl	XG$devkit_GSL_getMapHeightInPixels$0$0
	jp	_GSL_getMapHeightInPixels
	G$devkit_GSL_getMapWidthInMetatiles$0$0	= .
	.globl	G$devkit_GSL_getMapWidthInMetatiles$0$0
	C$_gsl_manager.c$53$1_0$30	= .
	.globl	C$_gsl_manager.c$53$1_0$30
;_gsl_manager.c:53: unsigned int devkit_GSL_getMapWidthInMetatiles()
;	---------------------------------
; Function devkit_GSL_getMapWidthInMetatiles
; ---------------------------------
_devkit_GSL_getMapWidthInMetatiles::
	C$_gsl_manager.c$55$1_0$30	= .
	.globl	C$_gsl_manager.c$55$1_0$30
;_gsl_manager.c:55: return GSL_getMapWidthInMetatiles();
	C$_gsl_manager.c$56$1_0$30	= .
	.globl	C$_gsl_manager.c$56$1_0$30
;_gsl_manager.c:56: }
	C$_gsl_manager.c$56$1_0$30	= .
	.globl	C$_gsl_manager.c$56$1_0$30
	XG$devkit_GSL_getMapWidthInMetatiles$0$0	= .
	.globl	XG$devkit_GSL_getMapWidthInMetatiles$0$0
	jp	_GSL_getMapWidthInMetatiles
	G$devkit_GSL_getMapHeightInMetatiles$0$0	= .
	.globl	G$devkit_GSL_getMapHeightInMetatiles$0$0
	C$_gsl_manager.c$57$1_0$31	= .
	.globl	C$_gsl_manager.c$57$1_0$31
;_gsl_manager.c:57: unsigned int devkit_GSL_getMapHeightInMetatiles()
;	---------------------------------
; Function devkit_GSL_getMapHeightInMetatiles
; ---------------------------------
_devkit_GSL_getMapHeightInMetatiles::
	C$_gsl_manager.c$59$1_0$31	= .
	.globl	C$_gsl_manager.c$59$1_0$31
;_gsl_manager.c:59: return GSL_getMapHeightInMetatiles();
	C$_gsl_manager.c$60$1_0$31	= .
	.globl	C$_gsl_manager.c$60$1_0$31
;_gsl_manager.c:60: }
	C$_gsl_manager.c$60$1_0$31	= .
	.globl	C$_gsl_manager.c$60$1_0$31
	XG$devkit_GSL_getMapHeightInMetatiles$0$0	= .
	.globl	XG$devkit_GSL_getMapHeightInMetatiles$0$0
	jp	_GSL_getMapHeightInMetatiles
	G$devkit_GSL_getScrolltableSize$0$0	= .
	.globl	G$devkit_GSL_getScrolltableSize$0$0
	C$_gsl_manager.c$61$1_0$32	= .
	.globl	C$_gsl_manager.c$61$1_0$32
;_gsl_manager.c:61: unsigned int devkit_GSL_getScrolltableSize()
;	---------------------------------
; Function devkit_GSL_getScrolltableSize
; ---------------------------------
_devkit_GSL_getScrolltableSize::
	C$_gsl_manager.c$63$1_0$32	= .
	.globl	C$_gsl_manager.c$63$1_0$32
;_gsl_manager.c:63: return GSL_getScrolltableSize();
	C$_gsl_manager.c$64$1_0$32	= .
	.globl	C$_gsl_manager.c$64$1_0$32
;_gsl_manager.c:64: }
	C$_gsl_manager.c$64$1_0$32	= .
	.globl	C$_gsl_manager.c$64$1_0$32
	XG$devkit_GSL_getScrolltableSize$0$0	= .
	.globl	XG$devkit_GSL_getScrolltableSize$0$0
	jp	_GSL_getScrolltableSize
	G$devkit_GSL_getCurrentX$0$0	= .
	.globl	G$devkit_GSL_getCurrentX$0$0
	C$_gsl_manager.c$65$1_0$33	= .
	.globl	C$_gsl_manager.c$65$1_0$33
;_gsl_manager.c:65: unsigned int devkit_GSL_getCurrentX()
;	---------------------------------
; Function devkit_GSL_getCurrentX
; ---------------------------------
_devkit_GSL_getCurrentX::
	C$_gsl_manager.c$67$1_0$33	= .
	.globl	C$_gsl_manager.c$67$1_0$33
;_gsl_manager.c:67: return GSL_getCurrentX();
	C$_gsl_manager.c$68$1_0$33	= .
	.globl	C$_gsl_manager.c$68$1_0$33
;_gsl_manager.c:68: }
	C$_gsl_manager.c$68$1_0$33	= .
	.globl	C$_gsl_manager.c$68$1_0$33
	XG$devkit_GSL_getCurrentX$0$0	= .
	.globl	XG$devkit_GSL_getCurrentX$0$0
	jp	_GSL_getCurrentX
	G$devkit_GSL_getCurrentY$0$0	= .
	.globl	G$devkit_GSL_getCurrentY$0$0
	C$_gsl_manager.c$69$1_0$34	= .
	.globl	C$_gsl_manager.c$69$1_0$34
;_gsl_manager.c:69: unsigned int devkit_GSL_getCurrentY()
;	---------------------------------
; Function devkit_GSL_getCurrentY
; ---------------------------------
_devkit_GSL_getCurrentY::
	C$_gsl_manager.c$71$1_0$34	= .
	.globl	C$_gsl_manager.c$71$1_0$34
;_gsl_manager.c:71: return GSL_getCurrentY();
	C$_gsl_manager.c$72$1_0$34	= .
	.globl	C$_gsl_manager.c$72$1_0$34
;_gsl_manager.c:72: }
	C$_gsl_manager.c$72$1_0$34	= .
	.globl	C$_gsl_manager.c$72$1_0$34
	XG$devkit_GSL_getCurrentY$0$0	= .
	.globl	XG$devkit_GSL_getCurrentY$0$0
	jp	_GSL_getCurrentY
	G$devkit_GSL_getCollisionCount$0$0	= .
	.globl	G$devkit_GSL_getCollisionCount$0$0
	C$_gsl_manager.c$73$1_0$35	= .
	.globl	C$_gsl_manager.c$73$1_0$35
;_gsl_manager.c:73: unsigned char devkit_GSL_getCollisionCount()
;	---------------------------------
; Function devkit_GSL_getCollisionCount
; ---------------------------------
_devkit_GSL_getCollisionCount::
	C$_gsl_manager.c$75$1_0$35	= .
	.globl	C$_gsl_manager.c$75$1_0$35
;_gsl_manager.c:75: return GSL_getCollisionCount();
	C$_gsl_manager.c$76$1_0$35	= .
	.globl	C$_gsl_manager.c$76$1_0$35
;_gsl_manager.c:76: }
	C$_gsl_manager.c$76$1_0$35	= .
	.globl	C$_gsl_manager.c$76$1_0$35
	XG$devkit_GSL_getCollisionCount$0$0	= .
	.globl	XG$devkit_GSL_getCollisionCount$0$0
	jp	_GSL_getCollisionCount
	G$devkit_GSL_getScrolltableAddress$0$0	= .
	.globl	G$devkit_GSL_getScrolltableAddress$0$0
	C$_gsl_manager.c$77$1_0$36	= .
	.globl	C$_gsl_manager.c$77$1_0$36
;_gsl_manager.c:77: unsigned char *devkit_GSL_getScrolltableAddress()
;	---------------------------------
; Function devkit_GSL_getScrolltableAddress
; ---------------------------------
_devkit_GSL_getScrolltableAddress::
	C$_gsl_manager.c$79$1_0$36	= .
	.globl	C$_gsl_manager.c$79$1_0$36
;_gsl_manager.c:79: return GSL_getScrolltableAddress();
	C$_gsl_manager.c$80$1_0$36	= .
	.globl	C$_gsl_manager.c$80$1_0$36
;_gsl_manager.c:80: }
	C$_gsl_manager.c$80$1_0$36	= .
	.globl	C$_gsl_manager.c$80$1_0$36
	XG$devkit_GSL_getScrolltableAddress$0$0	= .
	.globl	XG$devkit_GSL_getScrolltableAddress$0$0
	jp	_GSL_getScrolltableAddress
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
