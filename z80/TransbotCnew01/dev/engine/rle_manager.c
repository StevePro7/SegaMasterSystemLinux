#include "rle_manager.h"

unsigned char engine_rle_buffer[ RLE_BUFFER_SIZE ];

void engine_rle_decode_2( const unsigned char *source )	// __naked __z88dk_fastcall
{
	( void ) source;
#ifdef _CONSOLE
#else
	__asm
		ld e, #2
		jp rle_decode_core
	__endasm;
#endif
}

void engine_rle_decode_4( const unsigned char *source )	// __naked __z88dk_fastcall
{
	( void ) source;
#ifdef _CONSOLE
#else
	__asm
		ld e, #4
rle_decode_core:
		push ix
		push hl
		pop ix
		ld hl, #_engine_rle_buffer
		ld d, #0
		ld c, e
1$:
		push hl
2$:
		ld a, 0( ix )
		or a
		jr z, 5$
		bit 7, a
		jr nz, 4$
		ld b, a
		inc ix
		ld a, 0( ix )
3$:
		ld( hl ), a
		add hl, de
		djnz 3$
		inc ix
		jr 2$
4$:
		res 7, a
		ld b, a
6$ :
		inc ix
		ld a, 0( ix )
		ld( hl ), a
		add hl, de
		djnz 6$
		inc ix
		jr 2$
5$:
		inc ix
		pop hl
		inc hl
		dec c
		jr nz, 1$
		pop ix
		ret
	__endasm;
#endif
}