#ifndef RLE_MANAGER_H
#define RLE_MANAGER_H

#define RLE_BUFFER_SIZE 0x0c00

extern unsigned char engine_rle_buffer[ RLE_BUFFER_SIZE ];

/* These routines accept verified ROM streams only; they have no bounds checks. */
#ifdef _CONSOLE
void engine_rle_decode_2( const unsigned char *source );
void engine_rle_decode_4( const unsigned char *source );
#else
void engine_rle_decode_2( const unsigned char *source ) __z88dk_fastcall;
void engine_rle_decode_4( const unsigned char *source ) __z88dk_fastcall;
#endif

#endif// RLE_MANAGER_H
