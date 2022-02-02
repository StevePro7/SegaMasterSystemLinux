#include "tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

void engine_tile_manager_turtle01( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	//unsigned char array[ 24 ] = { 64,65,66,0,73,74,75,76,87,88,89,90, };		// high sea
	unsigned char array[ 24 ] = { 64,101,66,0,73,109,75,76,111,112,113,114, };	// low fly

	unsigned char ix, iy;
	unsigned char idx, val;

	for( iy = 0; iy < 3; iy++ )
	{
		for( ix = 0; ix < 4; ix++ )
		{
			idx = iy * 4 + ix;
			val = array[ idx ];

			devkit_SMS_setNextTileatXY( x + ix, y + iy );
			devkit_SMS_setTile( *pnt + val );
		}
	}
}

void engine_tile_manager_turtle02( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned int array[ 24 ] = { 152,154,156,0,256,186,260,262,216,218,220,294, };

	unsigned char idx;
	unsigned int val;
	unsigned char ix, iy;

	for( iy = 0; iy < 3; iy++ )
	{
		for( ix = 0; ix < 4; ix++ )
		{
			idx = iy * 4 + ix;
			val = array[ idx ];

			devkit_SMS_loadTileMap( x + ix, y + iy, ( void * ) &pnt[ val ], 2 );
		}
	}

	//val = array[ 0 ];	devkit_SMS_loadTileMap( x + 0, y + 0, ( void * ) &pnt[ val ], 2 );
	//val = array[ 1 ];	devkit_SMS_loadTileMap( x + 1, y + 0, ( void * ) &pnt[ val ], 2 );
	//val = array[ 2 ];	devkit_SMS_loadTileMap( x + 2, y + 0, ( void * ) &pnt[ val ], 2 );
	//val = array[ 3 ];	devkit_SMS_loadTileMap( x + 3, y + 0, ( void * ) &pnt[ val ], 2 );

	//val = array[ 4 ];	devkit_SMS_loadTileMap( x + 0, y + 1, ( void * ) &pnt[ val ], 2 );
	//val = array[ 5 ];	devkit_SMS_loadTileMap( x + 1, y + 1, ( void * ) &pnt[ val ], 2 );
	//val = array[ 6 ];	devkit_SMS_loadTileMap( x + 2, y + 1, ( void * ) &pnt[ val ], 2 );
	//val = array[ 7 ];	devkit_SMS_loadTileMap( x + 3, y + 1, ( void * ) &pnt[ val ], 2 );

	//val = array[ 8 ];	devkit_SMS_loadTileMap( x + 0, y + 2, ( void * ) &pnt[ val ], 2 );
	//val = array[ 9 ];	devkit_SMS_loadTileMap( x + 1, y + 2, ( void * ) &pnt[ val ], 2 );
	//val = array[ 10 ];	devkit_SMS_loadTileMap( x + 2, y + 2, ( void * ) &pnt[ val ], 2 );
	//val = array[ 11 ];	devkit_SMS_loadTileMap( x + 3, y + 2, ( void * ) &pnt[ val ], 2 );

	
}