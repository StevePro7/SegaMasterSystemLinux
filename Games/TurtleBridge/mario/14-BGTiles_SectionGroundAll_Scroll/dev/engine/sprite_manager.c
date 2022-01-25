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
	unsigned char tile = 48;

	unsigned char w;
	unsigned char h;

	for( h = 3; h < 6; h++ )
	{
		for( w = 0; w < 16; w++ )
		{
			devkit_SMS_setNextTileatXY( x + w, y + h );
			devkit_SMS_setTile( *pnt + tile );
			devkit_SMS_setNextTileatXY( x + w + 16, y + h );
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

	index = ( base + offset + 0 ) * 2;
	devkit_SMS_loadTileMap( x, y - 0, ( void * ) &pnt[ index ], 2 );  // 32 tiles * 2 bytes each

	index = ( base + offset + 16 ) * 2;
	devkit_SMS_loadTileMap( x, y + 1, ( void * ) &pnt[ index ], 2 );  // 32 tiles * 2 bytes each

	index = ( base + offset + 32 ) * 2;
	devkit_SMS_loadTileMap( x, y + 2, ( void * ) &pnt[ index ], 2 );  // 32 tiles * 2 bytes each

	//index = ( base + offset + 48 ) * 2 + 0;
	//devkit_SMS_loadTileMap( x, y + 3, ( void * ) &pnt[ index ], 2 );  // 32 tiles * 2 bytes each

	//index = ( base + offset + 64 ) * 2;
	//devkit_SMS_loadTileMap( x, y + 4, ( void * ) &pnt[ index ], 2 );  // 32 tiles * 2 bytes each

	//index = ( base + offset + 80 ) * 2;
	//devkit_SMS_loadTileMap( x, y + 5, ( void * ) &pnt[ index ], 2 );  // 32 tiles * 2 bytes each


	offset++;
	if( offset >= 16 )
	{
		offset = 0;
	}
}