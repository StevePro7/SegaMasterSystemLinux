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
void engine_sample_manager_step( void )
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

void engine_sample_manager_play( const void *sample )
{
	sm_pcm_ptr = ( const unsigned char* ) sample;
	sm_pcm_len = sm_pcm_ptr[ 0 ] | ( ( unsigned int ) sm_pcm_ptr[ 1 ] << 8 );
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

// ---------------------------------------------------------------------
// SDCC-safe step() using 8-bit temporaries
// ---------------------------------------------------------------------
void engine_sample_manager_step( void )
{
	if( !sm_pcm_playing ) return;

	// Split 16-bit globals into 8-bit locals
	unsigned char hl_l = ( unsigned int ) sm_pcm_ptr & 0xFF;
	unsigned char hl_h = ( ( unsigned int ) sm_pcm_ptr >> 8 ) & 0xFF;
	unsigned char ix_l = sm_pcm_len & 0xFF;
	unsigned char ix_h = sm_pcm_len >> 8;

	__asm
	di

		; Load HL from locals
		ld a, ( _hl_l )
		ld l, a
		ld a, ( _hl_h )
		ld h, a

		; Load IX from locals
		ld a, ( _ix_l )
		ld ixl, a
		ld a, ( _ix_h )
		ld ixh, a

		; -- - PCMENC triplet loop-- -
		ld a, ( hl )
		inc hl
		ld b, a

		; CHANNEL A
		sub #0x10
		jr nc, 1f
		ld a, ( hl )
		inc hl
		ld b, a
		and #0x0f
		or #0x90
		LDIYHA
		1:

	; CHANNEL B
		ld d, a
		sub #0x10
		jr nc, 2f
		ld a, ( hl )
		inc hl
		ld d, a
		and #0x0f
		or #0xb0
		LDIYLA
		2:

	; CHANNEL C
		ld e, a
		sub #0x10
		jr nc, 3f
		ld a, ( hl )
		inc hl
		ld e, a
		and #0x0f
		or #0xd0
		ld c, a
		3:

	; PSG output
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

		; Write back HL to locals
		ld a, l
		ld( _hl_l ), a
		ld a, h
		ld( _hl_h ), a

		; Decrement IX
		dec ix
		ld a, ixl
		ld( _ix_l ), a
		ld a, ixh
		ld( _ix_h ), a

		; Stop playback if IX = 0
		ld a, ixh
		or ixl
		jr nz, 4f
		xor a
		ld( _sm_pcm_playing ), a
		4:

	ei
		__endasm;

	// Merge back into globals
	sm_pcm_ptr = ( const unsigned char* ) ( ( ( unsigned int ) hl_h << 8 ) | hl_l );
	sm_pcm_len = ( ( unsigned int ) ix_h << 8 ) | ix_l;
}


#endif
