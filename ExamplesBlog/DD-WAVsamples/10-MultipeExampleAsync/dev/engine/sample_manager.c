#include "sample_manager.h"

static const unsigned char *sm_pcm_ptr = 0;
static unsigned int sm_pcm_len = 0;
static unsigned char sm_pcm_playing = 0;

#ifdef _CONSOLE

void engine_sample_manager_init( const void *psginit )
{
}

void engine_sample_manager_play( const void *sample )
{
}
void engine_sample_manager_update( void )
{
}
unsigned char engine_sample_manager_isPlaying( void )
{
	return 0;
}
void engine_sample_manager_stop( void )
{
}

#else

void engine_sample_manager_init( const void *psginit ) __naked __z88dk_fastcall
{
	( void ) psginit;
	__asm
	ld bc, #0x0b7f
		otir
		ret
		__endasm;
}

void engine_sample_manager_play( const void *sample ) __z88dk_fastcall
{
	sm_pcm_ptr = ( const unsigned char* ) sample;

	sm_pcm_len = sm_pcm_ptr[ 0 ];
	sm_pcm_len |= ( unsigned int ) sm_pcm_ptr[ 1 ] << 8;

	sm_pcm_ptr += 2;
	sm_pcm_playing = 1;
}

void engine_sample_manager_stop( void )
{
	sm_pcm_playing = 0;
}

unsigned char engine_sample_manager_isPlaying( void )
{
	return sm_pcm_playing;
}

void engine_sample_manager_update( void ) __naked
{
	__asm

	; -------------------------------------- -
		; Check playing flag
		; -------------------------------------- -
		ld  a, ( #_sm_pcm_playing )
		or a
		ret z

		; -------------------------------------- -
		; Load sm_pcm_ptr → HL
		; HL = &_sm_pcm_ptr
		; -------------------------------------- -
		ld  hl, #_sm_pcm_ptr
		ld  e, ( hl )
		inc hl
		ld  d, ( hl )
		ld  h, d
		ld  l, e; HL = sm_pcm_ptr

		; -------------------------------------- -
		; Load sm_pcm_len → IX
		; -------------------------------------- -
		ld  hl, #_sm_pcm_len
		ld  e, ( hl )
		inc hl
		ld  d, ( hl )
		push de
		pop ix; IX = sm_pcm_len

		; -------------------------------------- -
		; One PCMENC fragment
		; -------------------------------------- -
		ld   a, ( hl )
		inc  hl

		; == = CHANNEL A == =
		ld   b, a
		sub  #0x10
		jr   nc, PsgWaitA
		ld   a, ( hl )
		inc  hl
		ld   b, a
		and  #0x0f
		or #0x90
		LDIYHA
		PsgWaitA :

	; == = CHANNEL B == =
		ld   d, a
		sub  #0x10
		jr   nc, PsgWaitB
		ld   a, ( hl )
		inc  hl
		ld   d, a
		and  #0x0f
		or #0xb0
		LDIYLA
		PsgWaitB :

	; == = CHANNEL C == =
		ld   e, a
		sub  #0x10
		jr   nc, PsgWaitC
		ld   a, ( hl )
		inc  hl
		ld   e, a
		and  #0x0f
		or #0xd0
		ld   c, a
		PsgWaitC :

	push de
		LDDIYH
		LDDIYL
		ld a, c
		push bc
		ld c, #0x7f
		out( c ), d
		out( c ), e
		out( c ), a
		pop bc
		pop de

		; -------------------------------------- -
		; Decrement IX = length
		; -------------------------------------- -
		dec ix
		push ix
		pop  de

		ld  hl, #_sm_pcm_len
		ld( hl ), e
		inc hl
		ld( hl ), d

		; -------------------------------------- -
		; Store updated pointer
		; -------------------------------------- -
		ld  hl, #_sm_pcm_ptr
		ld( hl ), l
		inc hl
		ld( hl ), h

		; -------------------------------------- -
		; Stop if length == 0
		; -------------------------------------- -
		ld a, d
		or e
		jr nz, UpdateDone

		xor a
		ld( #_sm_pcm_playing ), a

		UpdateDone :
	ret

		__endasm;
}


#endif