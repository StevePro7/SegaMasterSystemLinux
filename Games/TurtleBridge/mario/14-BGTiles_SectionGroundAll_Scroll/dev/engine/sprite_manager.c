#include "sprite_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

static unsigned int offset;

void engine_tile_manager_init()
{
	offset = 0;
}

void engine_tile_manager_draw( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char tile = 0;

	unsigned char w;
	unsigned char h;

	for( h = 0; h < 6; h++ )
	{
		for( w = 0; w < 16; w++ )
		{
			devkit_SMS_setNextTileatXY( x + w, y + h );
			devkit_SMS_setTile( *pnt + tile );
			tile++;
		}
	}
	
}

void engine_tilemap_manager_draw_tile( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned int index = 0;
	//unsigned char base = 12;			// down
	unsigned char base = 0;			// up

	index = ( base + offset ) * 2 + 0;
	devkit_SMS_loadTileMap( x, y - 0, ( void * ) &pnt[ index ], 2 );  // 32 tiles * 2 bytes each

	index = ( base + offset ) * 2 + 8;
	devkit_SMS_loadTileMap( x, y + 1, ( void * ) &pnt[ index ], 2 );  // 32 tiles * 2 bytes each

	index = ( base + offset ) * 2 + 16;
	devkit_SMS_loadTileMap( x, y + 2, ( void * ) &pnt[ index ], 2 );  // 32 tiles * 2 bytes each

	offset++;
	if( offset >= 4 )
	{
		offset = 0;
	}
}