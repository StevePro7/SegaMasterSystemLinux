;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module content_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SMS_VRAMmemcpy
	.globl _SMS_loadSpritePalette
	.globl _SMS_loadBGPalette
	.globl _engine_rle_decode_4
	.globl _engine_rle_decode_2
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot0
	.globl _ROM_bank_to_be_mapped_on_slot1
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _engine_content_manager_load_boot_tiles
	.globl _engine_content_manager_load_title
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
G$SMS_VDPControlPort$0_0$0 == 0x00bf
_SMS_VDPControlPort	=	0x00bf
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$ROM_bank_to_be_mapped_on_slot2$0_0$0 == 0xffff
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
G$ROM_bank_to_be_mapped_on_slot1$0_0$0 == 0xfffe
_ROM_bank_to_be_mapped_on_slot1	=	0xfffe
G$ROM_bank_to_be_mapped_on_slot0$0_0$0 == 0xfffd
_ROM_bank_to_be_mapped_on_slot0	=	0xfffd
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
	G$engine_content_manager_load_boot_tiles$0$0	= .
	.globl	G$engine_content_manager_load_boot_tiles$0$0
	C$content_manager.c$23$0_0$112	= .
	.globl	C$content_manager.c$23$0_0$112
;engine/content_manager.c:23: void engine_content_manager_load_boot_tiles( void )
;	---------------------------------
; Function engine_content_manager_load_boot_tiles
; ---------------------------------
_engine_content_manager_load_boot_tiles::
	C$content_manager.c$25$1_0$112	= .
	.globl	C$content_manager.c$25$1_0$112
;engine/content_manager.c:25: engine_rle_decode_4( boot_font );
	ld	hl, #_boot_font
	call	_engine_rle_decode_4
	C$content_manager.c$26$1_0$112	= .
	.globl	C$content_manager.c$26$1_0$112
;engine/content_manager.c:26: SMS_VRAMmemcpy( 0x2000, engine_rle_buffer, 0x0c00 );
	ld	hl, #0x0c00
	push	hl
	ld	de, #_engine_rle_buffer
	ld	h, #0x20
	call	_SMS_VRAMmemcpy
	C$content_manager.c$27$1_0$112	= .
	.globl	C$content_manager.c$27$1_0$112
;engine/content_manager.c:27: engine_rle_decode_2( boot_tiles_a );
	ld	hl, #_boot_tiles_a
	call	_engine_rle_decode_2
	C$content_manager.c$28$1_0$112	= .
	.globl	C$content_manager.c$28$1_0$112
;engine/content_manager.c:28: SMS_VRAMmemcpy( 0x0000, engine_rle_buffer, 0x0c00 );
	ld	hl, #0x0c00
	push	hl
	ld	de, #_engine_rle_buffer
	ld	h, l
	call	_SMS_VRAMmemcpy
	C$content_manager.c$29$1_0$112	= .
	.globl	C$content_manager.c$29$1_0$112
;engine/content_manager.c:29: engine_rle_decode_2( boot_tiles_b );
	ld	hl, #_boot_tiles_b
	call	_engine_rle_decode_2
	C$content_manager.c$30$1_0$112	= .
	.globl	C$content_manager.c$30$1_0$112
;engine/content_manager.c:30: SMS_VRAMmemcpy( 0x0c00, engine_rle_buffer, 0x0a00 );
	ld	hl, #0x0a00
	push	hl
	ld	de, #_engine_rle_buffer
	ld	h, #0x0c
	call	_SMS_VRAMmemcpy
	C$content_manager.c$31$1_0$112	= .
	.globl	C$content_manager.c$31$1_0$112
;engine/content_manager.c:31: engine_rle_decode_2( boot_tiles_c );
	ld	hl, #_boot_tiles_c
	call	_engine_rle_decode_2
	C$content_manager.c$32$1_0$112	= .
	.globl	C$content_manager.c$32$1_0$112
;engine/content_manager.c:32: SMS_VRAMmemcpy( 0x1600, engine_rle_buffer, 0x0a00 );
	ld	hl, #0x0a00
	push	hl
	ld	de, #_engine_rle_buffer
	ld	h, #0x16
	call	_SMS_VRAMmemcpy
	C$content_manager.c$33$1_0$112	= .
	.globl	C$content_manager.c$33$1_0$112
;engine/content_manager.c:33: }
	C$content_manager.c$33$1_0$112	= .
	.globl	C$content_manager.c$33$1_0$112
	XG$engine_content_manager_load_boot_tiles$0$0	= .
	.globl	XG$engine_content_manager_load_boot_tiles$0$0
	ret
Fcontent_manager$title_bg_palette$0_0$0 == .
_title_bg_palette:
	.db #0x30	; 48	'0'
	.db #0x3f	; 63
	.db #0x2f	; 47
	.db #0x1b	; 27
	.db #0x17	; 23
	.db #0x13	; 19
	.db #0x3e	; 62
	.db #0x10	; 16
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x3f	; 63
Fcontent_manager$title_sprite_palette$0_0$0 == .
_title_sprite_palette:
	.db #0x30	; 48	'0'
	.db #0x3f	; 63
	.db #0x3a	; 58
	.db #0x35	; 53	'5'
	.db #0x2f	; 47
	.db #0x2a	; 42
	.db #0x25	; 37
	.db #0x0b	; 11
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x38	; 56	'8'
	.db #0x00	; 0
	G$engine_content_manager_load_title$0$0	= .
	.globl	G$engine_content_manager_load_title$0$0
	C$content_manager.c$35$1_0$114	= .
	.globl	C$content_manager.c$35$1_0$114
;engine/content_manager.c:35: void engine_content_manager_load_title( void )
;	---------------------------------
; Function engine_content_manager_load_title
; ---------------------------------
_engine_content_manager_load_title::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	C$content_manager.c$37$2_0$114	= .
	.globl	C$content_manager.c$37$2_0$114
;engine/content_manager.c:37: const unsigned char *text = title_text;
	C$content_manager.c$41$1_0$114	= .
	.globl	C$content_manager.c$41$1_0$114
;engine/content_manager.c:41: SMS_loadBGPalette( ( unsigned char * ) title_bg_palette );
	ld	hl, #_title_bg_palette
	call	_SMS_loadBGPalette
	C$content_manager.c$42$1_0$114	= .
	.globl	C$content_manager.c$42$1_0$114
;engine/content_manager.c:42: SMS_loadSpritePalette( ( unsigned char *) title_sprite_palette );
	ld	hl, #_title_sprite_palette
	call	_SMS_loadSpritePalette
	C$content_manager.c$43$1_0$114	= .
	.globl	C$content_manager.c$43$1_0$114
;engine/content_manager.c:43: engine_rle_decode_4( title_tiles );
	ld	hl, #_title_tiles
	call	_engine_rle_decode_4
	C$content_manager.c$44$1_0$114	= .
	.globl	C$content_manager.c$44$1_0$114
;engine/content_manager.c:44: SMS_VRAMmemcpy( 0x2c00, engine_rle_buffer, 0x0680 );
	ld	hl, #0x0680
	push	hl
	ld	de, #_engine_rle_buffer
	ld	hl, #0x2c00
	call	_SMS_VRAMmemcpy
	C$content_manager.c$46$1_0$114	= .
	.globl	C$content_manager.c$46$1_0$114
;engine/content_manager.c:46: engine_rle_decode_2( title_map );
	ld	hl, #_title_map
	call	_engine_rle_decode_2
	C$content_manager.c$47$1_0$114	= .
	.globl	C$content_manager.c$47$1_0$114
;engine/content_manager.c:47: for( row = 0; row < 4; ++row )
	ld	-1 (ix), #0x00
00105$:
	C$content_manager.c$49$3_0$116	= .
	.globl	C$content_manager.c$49$3_0$116
;engine/content_manager.c:49: SMS_VRAMmemcpy( 0x398e + ( unsigned int ) row * 64, engine_rle_buffer + ( unsigned int ) row * 34, 34 );
	ld	de, #_engine_rle_buffer+0
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, de
	ex	de, hl
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x398e
	add	hl, bc
	ld	bc, #0x0022
	push	bc
	call	_SMS_VRAMmemcpy
	C$content_manager.c$47$2_0$115	= .
	.globl	C$content_manager.c$47$2_0$115
;engine/content_manager.c:47: for( row = 0; row < 4; ++row )
	inc	-1 (ix)
	ld	a, -1 (ix)
	sub	a, #0x04
	jr	C, 00105$
	C$content_manager.c$52$1_0$114	= .
	.globl	C$content_manager.c$52$1_0$114
;engine/content_manager.c:52: count = *text++;
	ld	hl, #_title_text
	ld	c, (hl)
	ld	de, #_title_text + 1
	C$content_manager.c$53$1_0$114	= .
	.globl	C$content_manager.c$53$1_0$114
;engine/content_manager.c:53: while( count-- )
00102$:
	ld	a, c
	dec	c
	or	a, a
	jr	Z, 00107$
	C$content_manager.c$55$2_0$117	= .
	.globl	C$content_manager.c$55$2_0$117
;engine/content_manager.c:55: unsigned int address = text[ 0 ] | ( ( unsigned int ) text[ 1 ] << 8 );
	ld	a, (de)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	b, l
	or	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	or	a, h
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	pop	iy
	C$content_manager.c$56$2_0$117	= .
	.globl	C$content_manager.c$56$2_0$117
;engine/content_manager.c:56: unsigned int size = text[ 2 ] | ( ( unsigned int ) text[ 3 ] << 8 );
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	b, l
	or	a, l
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	or	a, h
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	C$content_manager.c$57$2_0$117	= .
	.globl	C$content_manager.c$57$2_0$117
;engine/content_manager.c:57: text += 4;
	ld	a, e
	add	a, #0x04
	ld	-2 (ix), a
	ld	a, d
	adc	a, #0x00
	ld	-1 (ix), a
	C$content_manager.c$58$2_0$117	= .
	.globl	C$content_manager.c$58$2_0$117
;engine/content_manager.c:58: SMS_VRAMmemcpy( address, text, size );
	pop	de
	push	de
	push	hl
	push	bc
	push	hl
	push	iy
	pop	hl
	call	_SMS_VRAMmemcpy
	pop	bc
	pop	hl
	C$content_manager.c$59$2_0$117	= .
	.globl	C$content_manager.c$59$2_0$117
;engine/content_manager.c:59: text += size;
	ld	a, -2 (ix)
	add	a, l
	ld	e, a
	ld	a, -1 (ix)
	adc	a, h
	ld	d, a
	jp	00102$
00107$:
	C$content_manager.c$61$1_0$114	= .
	.globl	C$content_manager.c$61$1_0$114
;engine/content_manager.c:61: }
	ld	sp, ix
	pop	ix
	C$content_manager.c$61$1_0$114	= .
	.globl	C$content_manager.c$61$1_0$114
	XG$engine_content_manager_load_title$0$0	= .
	.globl	XG$engine_content_manager_load_title$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
