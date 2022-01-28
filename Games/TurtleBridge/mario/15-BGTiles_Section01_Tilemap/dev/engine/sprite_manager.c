#include "sprite_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define TILE_HIGH	12
#define TILE_WIDE	16

static unsigned int offset;

void engine_tile_manager_init()
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	const unsigned char tile = 19;

	unsigned char w;
	unsigned char h;
	for( h = 0; h < 24; h++ )
	{
		for( w = 0; w < 32; w++ )
		{
			devkit_SMS_setNextTileatXY( w, h );
			devkit_SMS_setTile( *pnt + tile );
		}
	}

	offset = 0;
}

void engine_tile_manager_draw( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char w, h, idx, key;

	unsigned char tileMap[ TILE_HIGH * TILE_WIDE ] =
	{
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 5, 6,
		7, 8, 9, 10, 7, 8, 9, 10, 7, 8, 9, 10, 7, 11, 12, 13,
		14, 15, 16, 17, 14, 15, 16, 17, 14, 15, 16, 17, 14, 18, 19, 19,
		20, 21, 22, 23, 20, 21, 22, 23, 20, 21, 22, 24, 25, 13, 19, 19,
		1, 2, 3, 4, 1, 2, 3, 4, 1, 2, 3, 26, 19, 19, 19, 19,
		7, 8, 9, 10, 7, 8, 9, 10, 7, 8, 9, 27, 19, 19, 19, 19,
		14, 15, 16, 17, 14, 15, 16, 17, 14, 15, 16, 28, 19, 19, 19, 19,
		29, 30, 22, 23, 29, 30, 22, 23, 29, 30, 22, 31, 19, 19, 19, 19,
		32, 33, 34, 35, 32, 33, 34, 35, 32, 33, 34, 36, 37, 37, 37, 37,
		38, 39, 40, 41, 38, 39, 40, 41, 38, 39, 40, 41, 42, 42, 42, 42,
		40, 40, 39, 40, 40, 40, 39, 40, 40, 40, 39, 40, 40, 40, 40, 40,
	};

	for( h = 0; h < TILE_HIGH; h++ )
	{
		for( w = 0; w < TILE_WIDE; w++ )
		{
			idx = h * TILE_WIDE + w;
			key = tileMap[ idx ];
			devkit_SMS_setNextTileatXY( x + w, y + h );
			devkit_SMS_setTile( *pnt + key );
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