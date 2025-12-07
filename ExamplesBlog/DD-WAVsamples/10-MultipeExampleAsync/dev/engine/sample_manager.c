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
	; check playing
		ld  a, ( #_sm_pcm_playing )
		or a
		ret z

		; load sm_pcm_ptr->HL
		ld  hl, #_sm_pcm_ptr
		ld  e, ( hl )
		inc hl
		ld  d, ( hl )
		ld  h, d
		ld  l, e; HL = sm_pcm_ptr

		; load sm_pcm_len->IX( via DE / push because ld ix, ( sym ) not allowed)
			ld  hl, #_sm_pcm_len
			ld  e, ( hl )
			inc hl
			ld  d, ( hl )
			push de
			pop  ix

			; fetch next byte, increment pointer
			ld   a, ( hl )
			inc  hl

			; == = channel A == =
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

	; == = channel B == =
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

	; == = channel C == =
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
		LDEIYL
		ld a, c
		push bc
		ld c, #0x7f
		out( c ), d
		out( c ), e
		out( c ), a
		pop bc
		pop de

		; decrement IX
		dec ix
		push ix
		pop  de

		; store sm_pcm_len back
		ld  hl, #_sm_pcm_len
		ld( hl ), e
		inc hl
		ld( hl ), d

		; store sm_pcm_ptr back( HL currently points after consumed bytes )
		ld  hl, #_sm_pcm_ptr
		ld( hl ), l
		inc hl
		ld( hl ), h

		; if IX != 0 continue else stop
		ld a, d
		or e
		jr nz, Done
		xor a
		ld( #_sm_pcm_playing ), a

		Done :
	ret
		__endasm;
}


#endif