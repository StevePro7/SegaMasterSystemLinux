#include "main.h"

static unsigned char decoded[ 0x0c00 ];

static void check_asset( const unsigned char *source, unsigned int source_size,
	unsigned int lane_length, unsigned char lanes,
	unsigned char prefix, uint32_t expected_hash )
{
	unsigned int i;
	uint32_t hash = UINT32_C( 2166136261 );

	unsigned char result = rle_decode( source, source_size, decoded, lane_length, lanes, prefix );
	assert( result );

	for( i = 0; i < lane_length * lanes; ++i )
	{
		hash = ( hash ^ decoded[ i ] ) * UINT32_C( 16777619 );
	}

	assert( hash == expected_hash );
}

void main( void )
{
	unsigned int pos = 1;
	unsigned char i;

	check_asset( boot_font, sizeof( boot_font ), 0x0300, 4, 0, UINT32_C( 0x4b663222 ) );
	check_asset( boot_tiles_a, sizeof( boot_tiles_a ), 0x0600, 2, 0, UINT32_C( 0x8e90dfdf ) );
	check_asset( boot_tiles_b, sizeof( boot_tiles_b ), 0x0500, 2, 0, UINT32_C( 0xf83adbd7 ) );
	check_asset( boot_tiles_c, sizeof( boot_tiles_c ), 0x0500, 2, 0, UINT32_C( 0x8169c0d6 ) );
	check_asset( title_tiles, sizeof( title_tiles ), 0x01a0, 4, 0, UINT32_C( 0x4f421a98 ) );
	check_asset( title_map, sizeof( title_map ), 68, 2, 1, UINT32_C( 0x05b2d718 ) );

	assert( title_text[ 0 ] == 5 );
	for( i = 0; i < title_text[ 0 ]; ++i )
	{
		unsigned int address, size;
		assert( pos + 4 <= sizeof( title_text ) );
		address = title_text[ pos ] | ( ( unsigned int ) title_text[ pos + 1 ] << 8 );
		size = title_text[ pos + 2 ] | ( ( unsigned int ) title_text[ pos + 3 ] << 8 );
		pos += 4;
		assert( address >= 0x3800 && address + size <= 0x3f00 );
		assert( size <= sizeof( title_text ) - pos );
		pos += size;
	}

	assert( pos == sizeof( title_text ) );
	printf( "Original asset tests passed\n" );

	return;
}

#ifdef _CONSOLE
#else
SMS_EMBED_SEGA_ROM_HEADER( 9999, 0 );
SMS_EMBED_SDSC_HEADER( 1, 0, 2021, 9, 15, "StevePro Studios", "Hello World", "Simple Sega Master System demo to run on real hardware" );
#endif
