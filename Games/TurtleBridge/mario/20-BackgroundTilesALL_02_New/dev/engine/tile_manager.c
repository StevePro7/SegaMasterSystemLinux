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
	unsigned char array[ 24 ] = { 64,65,66,0,67,68,69,70,71,72,73,74,0, };

	unsigned char idx, val;
	unsigned char ax, ay;
	ax = 0;
	ay = 0;

	//idx = 0;
	//val = 128;// val = array[ idx ] * 2;
	//devkit_SMS_loadTileMap( x + ax, y + ay, ( void * ) &pnt[ val ], 2 );

	//ax = 1;
	//idx = 1;
	//val = array[ idx ] * 2;
	//devkit_SMS_loadTileMap( x + ax, y + ay, ( void * ) &pnt[ val ], 2 );
	//ax = 2;
	//idx = 2;
	//val = array[ idx ] * 2;
	//devkit_SMS_loadTileMap( x + ax, y + ay, ( void * ) &pnt[ val ], 2 );

	ax = 0;
	ay = 1;
	idx = 4;
	val = array[ idx ] * 2;
	val = 11 * 16;
	devkit_SMS_loadTileMap( x + ax, y + ay, ( void * ) &pnt[ val ], 2 );

	/*ax = 1;
	ay = 1;
	idx = 5;
	val = array[ idx ] * 2;
	devkit_SMS_loadTileMap( x + ax, y + ay, ( void * ) &pnt[ val ], 2 );*/
	//unsigned char ax, ay;
	//unsigned char mx, my;
	//unsigned char row = 0;
	//mx = 4;
	//my = 3;

	//for( ax = 0; ax < mx; ax++ )
	//{
	//	for( ay = 0 + ( row*my ); ay < my + ( row*my ); ay++ )
	//	{
	//		index = ( ( ay * mx ) + ax ) * 2;
	//		devkit_SMS_loadTileMap( x + ax, y + ay, ( void * ) &pnt[ index ], 2 );
	//	}
	//}
}