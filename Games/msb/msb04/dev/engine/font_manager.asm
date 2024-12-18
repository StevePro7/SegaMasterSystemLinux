;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module font_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_font_manager_char
	.globl _engine_font_manager_text
	.globl _engine_font_manager_data
	.globl _engine_font_manager_valu
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
	G$engine_font_manager_char$0$0	= .
	.globl	G$engine_font_manager_char$0$0
	C$font_manager.c$13$0_0$89	= .
	.globl	C$font_manager.c$13$0_0$89
;font_manager.c:13: void engine_font_manager_char( unsigned char ch, unsigned char x, unsigned char y )
;	---------------------------------
; Function engine_font_manager_char
; ---------------------------------
_engine_font_manager_char::
	C$font_manager.c$21$0_0$89	= .
	.globl	C$font_manager.c$21$0_0$89
;font_manager.c:21: }
	C$font_manager.c$21$0_0$89	= .
	.globl	C$font_manager.c$21$0_0$89
	XG$engine_font_manager_char$0$0	= .
	.globl	XG$engine_font_manager_char$0$0
	ret
	G$engine_font_manager_text$0$0	= .
	.globl	G$engine_font_manager_text$0$0
	C$font_manager.c$23$0_0$92	= .
	.globl	C$font_manager.c$23$0_0$92
;font_manager.c:23: void engine_font_manager_text( unsigned char *text, unsigned char x, unsigned char y )
;	---------------------------------
; Function engine_font_manager_text
; ---------------------------------
_engine_font_manager_text::
	C$font_manager.c$36$0_0$92	= .
	.globl	C$font_manager.c$36$0_0$92
;font_manager.c:36: }
	C$font_manager.c$36$0_0$92	= .
	.globl	C$font_manager.c$36$0_0$92
	XG$engine_font_manager_text$0$0	= .
	.globl	XG$engine_font_manager_text$0$0
	ret
	G$engine_font_manager_data$0$0	= .
	.globl	G$engine_font_manager_data$0$0
	C$font_manager.c$38$0_0$94	= .
	.globl	C$font_manager.c$38$0_0$94
;font_manager.c:38: void engine_font_manager_data( unsigned int data, unsigned char x, unsigned char y )
;	---------------------------------
; Function engine_font_manager_data
; ---------------------------------
_engine_font_manager_data::
	C$font_manager.c$40$1_0$94	= .
	.globl	C$font_manager.c$40$1_0$94
;font_manager.c:40: print_data( DATA_LONG, data, x, y );
	ld	iy, #5
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
	push	hl
	ld	hl, #0x0005
	push	hl
	call	_print_data
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$font_manager.c$41$1_0$94	= .
	.globl	C$font_manager.c$41$1_0$94
;font_manager.c:41: }
	C$font_manager.c$41$1_0$94	= .
	.globl	C$font_manager.c$41$1_0$94
	XG$engine_font_manager_data$0$0	= .
	.globl	XG$engine_font_manager_data$0$0
	ret
	G$engine_font_manager_valu$0$0	= .
	.globl	G$engine_font_manager_valu$0$0
	C$font_manager.c$43$1_0$96	= .
	.globl	C$font_manager.c$43$1_0$96
;font_manager.c:43: void engine_font_manager_valu( unsigned int data, unsigned char x, unsigned char y )
;	---------------------------------
; Function engine_font_manager_valu
; ---------------------------------
_engine_font_manager_valu::
	C$font_manager.c$45$1_0$96	= .
	.globl	C$font_manager.c$45$1_0$96
;font_manager.c:45: print_data( SING_LONG, data, x, y );
	ld	iy, #5
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
	push	hl
	ld	hl, #0x0001
	push	hl
	call	_print_data
	ld	hl, #6
	add	hl, sp
	ld	sp, hl
	C$font_manager.c$46$1_0$96	= .
	.globl	C$font_manager.c$46$1_0$96
;font_manager.c:46: }
	C$font_manager.c$46$1_0$96	= .
	.globl	C$font_manager.c$46$1_0$96
	XG$engine_font_manager_valu$0$0	= .
	.globl	XG$engine_font_manager_valu$0$0
	ret
	Ffont_manager$print_data$0$0	= .
	.globl	Ffont_manager$print_data$0$0
	C$font_manager.c$48$1_0$99	= .
	.globl	C$font_manager.c$48$1_0$99
;font_manager.c:48: static void print_data( unsigned wide, unsigned int data, unsigned char x, unsigned char y )
;	---------------------------------
; Function print_data
; ---------------------------------
_print_data:
	C$font_manager.c$77$1_0$99	= .
	.globl	C$font_manager.c$77$1_0$99
;font_manager.c:77: }
	C$font_manager.c$77$1_0$99	= .
	.globl	C$font_manager.c$77$1_0$99
	XFfont_manager$print_data$0$0	= .
	.globl	XFfont_manager$print_data$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
