#ifndef RLE_MANAGER_H
#define RLE_MANAGER_H

#define RLE_BUFFER_SIZE 0x0c00

/* Fixed at the original decode buffer: the scroll engine reads map rows from $D000. */
#ifdef _CONSOLE
extern unsigned char engine_rle_buffer[ RLE_BUFFER_SIZE ];
#else
extern __at( 0xd000 ) unsigned char engine_rle_buffer[ RLE_BUFFER_SIZE ];
#endif

/* These routines accept verified ROM streams only; they have no bounds checks. */
#ifdef _CONSOLE
extern unsigned char engine_rle_buffer[ RLE_BUFFER_SIZE ];

void engine_rle_decode_2( const unsigned char *source );
void engine_rle_decode_4( const unsigned char *source );
#else
extern __at( 0xd000 ) unsigned char engine_rle_buffer[ RLE_BUFFER_SIZE ];

void engine_rle_decode_2( const unsigned char *source ) __z88dk_fastcall;
void engine_rle_decode_4( const unsigned char *source ) __z88dk_fastcall;
#endif

#endif// RLE_MANAGER_H
