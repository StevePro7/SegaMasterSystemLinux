#include "content_manager.h"
#include "rle_manager.h"
#include "../content/assets.h"
#include "../game.h"

static const unsigned char title_bg_palette[ 16 ] = {
	0x30, 0x3f, 0x2f, 0x1b, 0x17, 0x13, 0x3e, 0x10,
	0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f, 0x3f
};

static const unsigned char title_sprite_palette[ 16 ] = {
	0x30, 0x3f, 0x3a, 0x35, 0x2f, 0x2a, 0x25, 0x0b,
	0x03, 0x02, 0x0e, 0x0c, 0x08, 0x3e, 0x38, 0x00
};

static const unsigned char stage_palette[ 32 ] = {
	0x00, 0x15, 0x1a, 0x1f, 0x2f, 0x2a, 0x25, 0x35,
	0x3a, 0x3f, 0x13, 0x17, 0x12, 0x22, 0x32, 0x00,
	0x00, 0x3f, 0x3a, 0x35, 0x2f, 0x2a, 0x25, 0x0b,
	0x03, 0x02, 0x0e, 0x0c, 0x08, 0x3e, 0x38, 0x00
};

void engine_content_manager_load_boot_tiles( void )
{
	engine_rle_decode_4( boot_font );
	SMS_VRAMmemcpy( 0x2000, engine_rle_buffer, 0x0c00 );
	engine_rle_decode_2( boot_tiles_a );
	SMS_VRAMmemcpy( 0x0000, engine_rle_buffer, 0x0c00 );
	engine_rle_decode_2( boot_tiles_b );
	SMS_VRAMmemcpy( 0x0c00, engine_rle_buffer, 0x0a00 );
	engine_rle_decode_2( boot_tiles_c );
	SMS_VRAMmemcpy( 0x1600, engine_rle_buffer, 0x0a00 );
}

void engine_content_manager_load_title( void )
{
	const unsigned char *text = title_text;
	unsigned char count;
	unsigned char row;

	SMS_loadBGPalette( ( unsigned char * ) title_bg_palette );
	SMS_loadSpritePalette( ( unsigned char *) title_sprite_palette );
	engine_rle_decode_4( title_tiles );
	SMS_VRAMmemcpy( 0x2c00, engine_rle_buffer, 0x0680 );

	engine_rle_decode_2( title_map );
	for( row = 0; row < 4; ++row )
	{
		SMS_VRAMmemcpy( 0x398e + ( unsigned int ) row * 64, engine_rle_buffer + ( unsigned int ) row * 34, 34 );
	}

	count = *text++;
	while( count-- )
	{
		unsigned int address = text[ 0 ] | ( ( unsigned int ) text[ 1 ] << 8 );
		unsigned int size = text[ 2 ] | ( ( unsigned int ) text[ 3 ] << 8 );
		text += 4;
		SMS_VRAMmemcpy( address, text, size );
		text += size;
	}
}

/* Mirrors $0429: palette, sprite tiles, then the stage map left in the decode buffer. */
void engine_content_manager_load_stage( void )
{
	SMS_loadBGPalette( ( unsigned char * ) stage_palette );
	SMS_loadSpritePalette( ( unsigned char * ) stage_palette + 16 );
	engine_rle_decode_4( stage_tiles );
	SMS_VRAMmemcpy( 0x2c00, engine_rle_buffer, 0x0c00 );
	engine_rle_decode_2( stage_map );
}