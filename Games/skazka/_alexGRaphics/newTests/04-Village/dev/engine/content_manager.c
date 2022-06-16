#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define FONT_TILES		0
#define SPRITE_TILES	256

void engine_content_manager_load_tiles()
{
	// Font tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) font_tiles__tiles__psgcompr, FONT_TILES );
	devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );

	// Village tiles
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) stats_village__tiles__psgcompr, SPRITE_TILES );
	devkit_SMS_loadSpritePalette( ( void * ) stats_village__palette__bin );
}

void engine_content_manager_draw_village()
{
	const unsigned char *pnt = stats_village__tilemap__bin;
	unsigned char x, y;
	unsigned char i, j;
	unsigned char idx = 0;
	unsigned int tile;
	unsigned int palette;

	palette = devkit_TILE_USE_SPRITE_PALETTE();
	for( j = 0; j < 7; j++ )
	{
		for( i = 0; i < 18; i++ )
		{
			x = 10 + i;
			y = 4 + j;
			tile = (256 + idx) | palette;
			devkit_SMS_setNextTileatXY( x, y );
			devkit_SMS_setTile( *pnt + tile );
			idx++;
		}
	}
}
