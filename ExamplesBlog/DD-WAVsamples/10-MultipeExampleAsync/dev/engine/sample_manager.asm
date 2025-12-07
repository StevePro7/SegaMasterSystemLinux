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
	.globl _engine_sample_manager_update
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
	C$sample_manager.c$29$0_0$7	= .
	.globl	C$sample_manager.c$29$0_0$7
;sample_manager.c:29: void engine_sample_manager_init( const void *psginit ) __naked __z88dk_fastcall
;	---------------------------------
; Function engine_sample_manager_init
; ---------------------------------
_engine_sample_manager_init::
	C$sample_manager.c$36$1_0$7	= .
	.globl	C$sample_manager.c$36$1_0$7
;sample_manager.c:36: __endasm;
	ld	bc, #0x0b7f
	otir
	ret
	C$sample_manager.c$37$1_0$7	= .
	.globl	C$sample_manager.c$37$1_0$7
;sample_manager.c:37: }
	G$engine_sample_manager_play$0$0	= .
	.globl	G$engine_sample_manager_play$0$0
	C$sample_manager.c$39$1_0$9	= .
	.globl	C$sample_manager.c$39$1_0$9
;sample_manager.c:39: void engine_sample_manager_play( const void *sample ) __z88dk_fastcall
;	---------------------------------
; Function engine_sample_manager_play
; ---------------------------------
_engine_sample_manager_play::
	C$sample_manager.c$41$1_0$9	= .
	.globl	C$sample_manager.c$41$1_0$9
;sample_manager.c:41: sm_pcm_ptr = ( const unsigned char* ) sample;
	C$sample_manager.c$43$1_0$9	= .
	.globl	C$sample_manager.c$43$1_0$9
;sample_manager.c:43: sm_pcm_len = sm_pcm_ptr[ 0 ];
	ld	(_sm_pcm_ptr), hl
	ld	a, (hl)
	ld	(_sm_pcm_len+0), a
	xor	a, a
	ld	(_sm_pcm_len+1), a
	C$sample_manager.c$44$1_0$9	= .
	.globl	C$sample_manager.c$44$1_0$9
;sample_manager.c:44: sm_pcm_len |= ( unsigned int ) sm_pcm_ptr[ 1 ] << 8;
	ld	hl, (_sm_pcm_ptr)
	inc	hl
	ld	c, (hl)
	ld	a, #0x00
	ld	iy, #_sm_pcm_len
	or	a, 0 (iy)
	ld	(_sm_pcm_len+0), a
	ld	a, c
	or	a, 1 (iy)
	ld	(_sm_pcm_len+1), a
	C$sample_manager.c$46$1_0$9	= .
	.globl	C$sample_manager.c$46$1_0$9
;sample_manager.c:46: sm_pcm_ptr += 2;
	ld	hl, (_sm_pcm_ptr)
	inc	hl
	inc	hl
	ld	(_sm_pcm_ptr), hl
	C$sample_manager.c$47$1_0$9	= .
	.globl	C$sample_manager.c$47$1_0$9
;sample_manager.c:47: sm_pcm_playing = 1;
	ld	a, #0x01
	ld	(#_sm_pcm_playing), a
	C$sample_manager.c$48$1_0$9	= .
	.globl	C$sample_manager.c$48$1_0$9
;sample_manager.c:48: }
	C$sample_manager.c$48$1_0$9	= .
	.globl	C$sample_manager.c$48$1_0$9
	XG$engine_sample_manager_play$0$0	= .
	.globl	XG$engine_sample_manager_play$0$0
	ret
	G$engine_sample_manager_stop$0$0	= .
	.globl	G$engine_sample_manager_stop$0$0
	C$sample_manager.c$50$1_0$11	= .
	.globl	C$sample_manager.c$50$1_0$11
;sample_manager.c:50: void engine_sample_manager_stop( void )
;	---------------------------------
; Function engine_sample_manager_stop
; ---------------------------------
_engine_sample_manager_stop::
	C$sample_manager.c$52$1_0$11	= .
	.globl	C$sample_manager.c$52$1_0$11
;sample_manager.c:52: sm_pcm_playing = 0;
	ld	a, #0x00
	ld	(#_sm_pcm_playing), a
	C$sample_manager.c$53$1_0$11	= .
	.globl	C$sample_manager.c$53$1_0$11
;sample_manager.c:53: }
	C$sample_manager.c$53$1_0$11	= .
	.globl	C$sample_manager.c$53$1_0$11
	XG$engine_sample_manager_stop$0$0	= .
	.globl	XG$engine_sample_manager_stop$0$0
	ret
	G$engine_sample_manager_isPlaying$0$0	= .
	.globl	G$engine_sample_manager_isPlaying$0$0
	C$sample_manager.c$55$1_0$13	= .
	.globl	C$sample_manager.c$55$1_0$13
;sample_manager.c:55: unsigned char engine_sample_manager_isPlaying( void )
;	---------------------------------
; Function engine_sample_manager_isPlaying
; ---------------------------------
_engine_sample_manager_isPlaying::
	C$sample_manager.c$57$1_0$13	= .
	.globl	C$sample_manager.c$57$1_0$13
;sample_manager.c:57: return sm_pcm_playing;
	ld	a, (#_sm_pcm_playing + 0)
	ld	l, a
	C$sample_manager.c$58$1_0$13	= .
	.globl	C$sample_manager.c$58$1_0$13
;sample_manager.c:58: }
	C$sample_manager.c$58$1_0$13	= .
	.globl	C$sample_manager.c$58$1_0$13
	XG$engine_sample_manager_isPlaying$0$0	= .
	.globl	XG$engine_sample_manager_isPlaying$0$0
	ret
	G$engine_sample_manager_update$0$0	= .
	.globl	G$engine_sample_manager_update$0$0
	C$sample_manager.c$60$1_0$15	= .
	.globl	C$sample_manager.c$60$1_0$15
;sample_manager.c:60: void engine_sample_manager_update( void ) __naked
;	---------------------------------
; Function engine_sample_manager_update
; ---------------------------------
_engine_sample_manager_update::
	C$sample_manager.c$179$1_0$15	= .
	.globl	C$sample_manager.c$179$1_0$15
;sample_manager.c:179: __endasm;
;	-------------------------------------- -
;	Check playing flag
;	-------------------------------------- -
	ld	a, ( #_sm_pcm_playing )
	or	a
	ret	z
;	-------------------------------------- -
;	Load sm_pcm_ptr → HL
;	HL = &_sm_pcm_ptr
;	-------------------------------------- -
	ld	hl, #_sm_pcm_ptr
	ld	e, ( hl )
	inc	hl
	ld	d, ( hl )
	ld	h, d
	ld	l, e; HL = sm_pcm_ptr
;	-------------------------------------- -
;	Load sm_pcm_len → IX
;	-------------------------------------- -
	ld	hl, #_sm_pcm_len
	ld	e, ( hl )
	inc	hl
	ld	d, ( hl )
	push	de
	pop	ix; IX = sm_pcm_len
;	-------------------------------------- -
;	One PCMENC fragment
;	-------------------------------------- -
	ld	a, ( hl )
	inc	hl
;	== = CHANNEL A == =
	ld	b, a
	sub	#0x10
	jr	nc, PsgWaitA
	ld	a, ( hl )
	inc	hl
	ld	b, a
	and	#0x0f
	or	#0x90
	.dw	#0x67FD
	  PsgWaitA	:
;	== = CHANNEL B == =
	ld	d, a
	sub	#0x10
	jr	nc, PsgWaitB
	ld	a, ( hl )
	inc	hl
	ld	d, a
	and	#0x0f
	or	#0xb0
	.dw	#0x6FFD
	  PsgWaitB	:
;	== = CHANNEL C == =
	ld	e, a
	sub	#0x10
	jr	nc, PsgWaitC
	ld	a, ( hl )
	inc	hl
	ld	e, a
	and	#0x0f
	or	#0xd0
	ld	c, a
	  PsgWaitC	:
	push	de
	.dw	#0x54FD
	.dw	#0x55FD
	ld	a, c
	push	bc
	ld	c, #0x7f
	out(	c ), d
	out(	c ), e
	out(	c ), a
	pop	bc
	pop	de
;	-------------------------------------- -
;	Decrement IX = length
;	-------------------------------------- -
	dec	ix
	push	ix
	pop	de
	ld	hl, #_sm_pcm_len
	ld(	hl ), e
	inc	hl
	ld(	hl ), d
;	-------------------------------------- -
;	Store updated pointer
;	-------------------------------------- -
	ld	hl, #_sm_pcm_ptr
	ld(	hl ), l
	inc	hl
	ld(	hl ), h
;	-------------------------------------- -
;	Stop if length == 0
;	-------------------------------------- -
	ld	a, d
	or	e
	jr	nz, UpdateDone
	xor	a
	ld(	#_sm_pcm_playing ), a
	  UpdateDone	:
	ret
	C$sample_manager.c$180$1_0$15	= .
	.globl	C$sample_manager.c$180$1_0$15
;sample_manager.c:180: }
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
