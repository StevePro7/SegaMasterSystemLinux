;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module sample_manager
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _engine_sample_manager_init
	.globl _engine_sample_manager_play
	.globl _engine_sample_manager_stop
	.globl _engine_sample_manager_isPlaying
	.globl _engine_sample_manager_step
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
Fsample_manager$sm_pcm_ptr$0_0$0==.
_sm_pcm_ptr:
	.ds 2
Fsample_manager$sm_pcm_len$0_0$0==.
_sm_pcm_len:
	.ds 2
Fsample_manager$sm_pcm_playing$0_0$0==.
_sm_pcm_playing:
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
	G$engine_sample_manager_init$0$0	= .
	.globl	G$engine_sample_manager_init$0$0
	C$sample_manager.c$32$0_0$8	= .
	.globl	C$sample_manager.c$32$0_0$8
;sample_manager.c:32: void engine_sample_manager_init( const void *psginit ) __naked __z88dk_fastcall
;	---------------------------------
; Function engine_sample_manager_init
; ---------------------------------
_engine_sample_manager_init::
	C$sample_manager.c$39$1_0$8	= .
	.globl	C$sample_manager.c$39$1_0$8
;sample_manager.c:39: __endasm;
	ld	bc, #0x0b7f
	otir
	ret
	C$sample_manager.c$40$1_0$8	= .
	.globl	C$sample_manager.c$40$1_0$8
;sample_manager.c:40: }
	G$engine_sample_manager_play$0$0	= .
	.globl	G$engine_sample_manager_play$0$0
	C$sample_manager.c$42$1_0$10	= .
	.globl	C$sample_manager.c$42$1_0$10
;sample_manager.c:42: void engine_sample_manager_play( const void *sample )
;	---------------------------------
; Function engine_sample_manager_play
; ---------------------------------
_engine_sample_manager_play::
	C$sample_manager.c$44$1_0$10	= .
	.globl	C$sample_manager.c$44$1_0$10
;sample_manager.c:44: sm_pcm_ptr = ( const unsigned char* ) sample;
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	ld	(_sm_pcm_ptr+0), a
	ld	a, 1 (iy)
	ld	(_sm_pcm_ptr+1), a
	C$sample_manager.c$45$1_0$10	= .
	.globl	C$sample_manager.c$45$1_0$10
;sample_manager.c:45: sm_pcm_len = sm_pcm_ptr[ 0 ] | ( ( unsigned int ) sm_pcm_ptr[ 1 ] << 8 );
	ld	hl, (_sm_pcm_ptr)
	ld	e, (hl)
	ld	hl, (_sm_pcm_ptr)
	inc	hl
	ld	c, (hl)
	ld	a, #0x00
	ld	b, #0x00
	or	a, e
	ld	(_sm_pcm_len+0), a
	ld	a, c
	or	a, b
	ld	(_sm_pcm_len+1), a
	C$sample_manager.c$46$1_0$10	= .
	.globl	C$sample_manager.c$46$1_0$10
;sample_manager.c:46: sm_pcm_ptr += 2;
	ld	hl, (_sm_pcm_ptr)
	inc	hl
	inc	hl
	ld	(_sm_pcm_ptr), hl
	C$sample_manager.c$47$1_0$10	= .
	.globl	C$sample_manager.c$47$1_0$10
;sample_manager.c:47: sm_pcm_playing = 1;
	ld	a, #0x01
	ld	(#_sm_pcm_playing), a
	C$sample_manager.c$48$1_0$10	= .
	.globl	C$sample_manager.c$48$1_0$10
;sample_manager.c:48: }
	C$sample_manager.c$48$1_0$10	= .
	.globl	C$sample_manager.c$48$1_0$10
	XG$engine_sample_manager_play$0$0	= .
	.globl	XG$engine_sample_manager_play$0$0
	ret
	G$engine_sample_manager_stop$0$0	= .
	.globl	G$engine_sample_manager_stop$0$0
	C$sample_manager.c$50$1_0$12	= .
	.globl	C$sample_manager.c$50$1_0$12
;sample_manager.c:50: void engine_sample_manager_stop( void )
;	---------------------------------
; Function engine_sample_manager_stop
; ---------------------------------
_engine_sample_manager_stop::
	C$sample_manager.c$52$1_0$12	= .
	.globl	C$sample_manager.c$52$1_0$12
;sample_manager.c:52: sm_pcm_playing = 0;
	ld	a, #0x00
	ld	(#_sm_pcm_playing), a
	C$sample_manager.c$53$1_0$12	= .
	.globl	C$sample_manager.c$53$1_0$12
;sample_manager.c:53: }
	C$sample_manager.c$53$1_0$12	= .
	.globl	C$sample_manager.c$53$1_0$12
	XG$engine_sample_manager_stop$0$0	= .
	.globl	XG$engine_sample_manager_stop$0$0
	ret
	G$engine_sample_manager_isPlaying$0$0	= .
	.globl	G$engine_sample_manager_isPlaying$0$0
	C$sample_manager.c$55$1_0$14	= .
	.globl	C$sample_manager.c$55$1_0$14
;sample_manager.c:55: unsigned char engine_sample_manager_isPlaying( void )
;	---------------------------------
; Function engine_sample_manager_isPlaying
; ---------------------------------
_engine_sample_manager_isPlaying::
	C$sample_manager.c$57$1_0$14	= .
	.globl	C$sample_manager.c$57$1_0$14
;sample_manager.c:57: return sm_pcm_playing;
	ld	a, (#_sm_pcm_playing + 0)
	ld	l, a
	C$sample_manager.c$58$1_0$14	= .
	.globl	C$sample_manager.c$58$1_0$14
;sample_manager.c:58: }
	C$sample_manager.c$58$1_0$14	= .
	.globl	C$sample_manager.c$58$1_0$14
	XG$engine_sample_manager_isPlaying$0$0	= .
	.globl	XG$engine_sample_manager_isPlaying$0$0
	ret
	G$engine_sample_manager_step$0$0	= .
	.globl	G$engine_sample_manager_step$0$0
	C$sample_manager.c$63$1_0$16	= .
	.globl	C$sample_manager.c$63$1_0$16
;sample_manager.c:63: void engine_sample_manager_step( void )
;	---------------------------------
; Function engine_sample_manager_step
; ---------------------------------
_engine_sample_manager_step::
	C$sample_manager.c$65$1_0$16	= .
	.globl	C$sample_manager.c$65$1_0$16
;sample_manager.c:65: if( !sm_pcm_playing ) return;
	ld	iy, #_sm_pcm_playing
	ld	a, 0 (iy)
	or	a, a
	jp	Z,00103$
	C$sample_manager.c$68$1_1$17	= .
	.globl	C$sample_manager.c$68$1_1$17
;sample_manager.c:68: unsigned char hl_l = ( unsigned int ) sm_pcm_ptr & 0xFF;
	ld	a, (#_sm_pcm_ptr + 0)
	ld	c, a
	C$sample_manager.c$69$1_1$17	= .
	.globl	C$sample_manager.c$69$1_1$17
;sample_manager.c:69: unsigned char hl_h = ( ( unsigned int ) sm_pcm_ptr >> 8 ) & 0xFF;
	ld	hl, (_sm_pcm_ptr)
	ld	-1 (ix), h
	C$sample_manager.c$70$1_1$16	= .
	.globl	C$sample_manager.c$70$1_1$16
;sample_manager.c:70: unsigned char ix_l = sm_pcm_len & 0xFF;
	ld	iy, #_sm_pcm_len
	ld	e, 0 (iy)
	C$sample_manager.c$71$1_1$17	= .
	.globl	C$sample_manager.c$71$1_1$17
;sample_manager.c:71: unsigned char ix_h = sm_pcm_len >> 8;
	ld	l, 1 (iy)
	ld	b, #0x00
	ld	a, l
	C$sample_manager.c$163$1_1$17	= .
	.globl	C$sample_manager.c$163$1_1$17
;sample_manager.c:163: __endasm;
	di
;	Load HL from locals
	ld	a, ( _hl_l )
	ld	l, a
	ld	a, ( _hl_h )
	ld	h, a
;	Load IX from locals
	ld	a, ( _ix_l )
	ld	ixl, a
	ld	a, ( _ix_h )
	ld	ixh, a
;	-- - PCMENC triplet loop-- -
	ld	a, ( hl )
	inc	hl
	ld	b, a
;	CHANNEL A
	sub	#0x10
	jr	nc, 1f
	ld	a, ( hl )
	inc	hl
	ld	b, a
	and	#0x0f
	or	#0x90
	.dw	#0x67FD
	  1:
;	CHANNEL B
	ld	d, a
	sub	#0x10
	jr	nc, 2f
	ld	a, ( hl )
	inc	hl
	ld	d, a
	and	#0x0f
	or	#0xb0
	.dw	#0x6FFD
	  2:
;	CHANNEL C
	ld	e, a
	sub	#0x10
	jr	nc, 3f
	ld	a, ( hl )
	inc	hl
	ld	e, a
	and	#0x0f
	or	#0xd0
	ld	c, a
	  3:
;	PSG output
	push	de
	.dw	#0x54FD
	.dw	#0x5DFD
	ld	a, c
	push	bc
	ld	c, #0x7f
	out(	c ), d
	out(	c ), e
	out(	c ), a
	pop	bc
	pop	de
;	Write back HL to locals
	ld	a, l
	ld(	_hl_l ), a
	ld	a, h
	ld(	_hl_h ), a
;	Decrement IX
	dec	ix
	ld	a, ixl
	ld(	_ix_l ), a
	ld	a, ixh
	ld(	_ix_h ), a
;	Stop playback if IX = 0
	ld	a, ixh
	or	ixl
	jr	nz, 4f
	xor	a
	ld(	_sm_pcm_playing ), a
	  4:
	ei
	C$sample_manager.c$166$1_1$17	= .
	.globl	C$sample_manager.c$166$1_1$17
;sample_manager.c:166: sm_pcm_ptr = ( const unsigned char* ) ( ( ( unsigned int ) hl_h << 8 ) | hl_l );
	ld	h, -1 (ix)
	ld	l, #0x00
	ld	b, #0x00
	push	af
	ld	a, l
	or	a, c
	ld	l, a
	ld	a, h
	or	a, b
	ld	h, a
	pop	af
	ld	(_sm_pcm_ptr), hl
	C$sample_manager.c$167$1_1$17	= .
	.globl	C$sample_manager.c$167$1_1$17
;sample_manager.c:167: sm_pcm_len = ( ( unsigned int ) ix_h << 8 ) | ix_l;
	ld	c, a
	ld	a, #0x00
	ld	b, #0x00
	or	a, e
	ld	(_sm_pcm_len+0), a
	ld	a, c
	or	a, b
	ld	(_sm_pcm_len+1), a
00103$:
	C$sample_manager.c$168$1_1$16	= .
	.globl	C$sample_manager.c$168$1_1$16
;sample_manager.c:168: }
	.area _CODE
	.area _INITIALIZER
Fsample_manager$__xinit_sm_pcm_ptr$0_0$0 == .
__xinit__sm_pcm_ptr:
	.dw #0x0000
Fsample_manager$__xinit_sm_pcm_len$0_0$0 == .
__xinit__sm_pcm_len:
	.dw #0x0000
Fsample_manager$__xinit_sm_pcm_playing$0_0$0 == .
__xinit__sm_pcm_playing:
	.db #0x00	; 0
	.area _CABS (ABS)
