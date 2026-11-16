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

}
