#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

unsigned char array[ 24 ] =
{
	0,1,2,3,
	4,5,6,7,
	8,9,10,11,
	0,12,2,3,
	4,13,6,7,
	8,9,10,11,
};

void engine_turtle_manager_draw_sea()
{
	const unsigned char *pnt = turtleAA_32x24__tilemap__bin;
	unsigned char x, y;
	for( y = 0; y < 24; y++ )
	{
		for( x = 0; x < 32; x++ )
		{
			devkit_SMS_setNextTileatXY( x + 0, y + 0 );	devkit_SMS_setTile( *pnt + 3 );
		}
	}
}

void engine_turtle_manager_draw_01( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = turtleAA_32x24__tilemap__bin;
	unsigned char index = 0;

	devkit_SMS_setNextTileatXY( x + 0, y + 0 );	devkit_SMS_setTile( *pnt + array[ index + 0 ] );
	devkit_SMS_setNextTileatXY( x + 1, y + 0 );	devkit_SMS_setTile( *pnt + array[ index + 1 ] );
	devkit_SMS_setNextTileatXY( x + 2, y + 0 );	devkit_SMS_setTile( *pnt + array[ index + 2 ] );
	devkit_SMS_setNextTileatXY( x + 3, y + 0 );	devkit_SMS_setTile( *pnt + array[ index + 3 ] );

	devkit_SMS_setNextTileatXY( x + 0, y + 1 );	devkit_SMS_setTile( *pnt + array[ index + 4 ] );
	devkit_SMS_setNextTileatXY( x + 1, y + 1 );	devkit_SMS_setTile( *pnt + array[ index + 5 ] );
	devkit_SMS_setNextTileatXY( x + 2, y + 1 );	devkit_SMS_setTile( *pnt + array[ index + 6 ] );
	devkit_SMS_setNextTileatXY( x + 3, y + 1 );	devkit_SMS_setTile( *pnt + array[ index + 7 ] );

	devkit_SMS_setNextTileatXY( x + 0, y + 2 );	devkit_SMS_setTile( *pnt + array[ index + 8 ] );
	devkit_SMS_setNextTileatXY( x + 1, y + 2 );	devkit_SMS_setTile( *pnt + array[ index + 9 ] );
	devkit_SMS_setNextTileatXY( x + 2, y + 2 );	devkit_SMS_setTile( *pnt + array[ index + 10 ] );
	devkit_SMS_setNextTileatXY( x + 3, y + 2 );	devkit_SMS_setTile( *pnt + array[ index + 11 ] );
}

void engine_turtle_manager_draw_02( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = turtleAA_32x24__tilemap__bin;

	unsigned int index = 0;
	unsigned char ax, ay;
	unsigned char mx, my;
	unsigned char row = 0;
	mx = 4;
	my = 3;

	for( ax = 0; ax < mx; ax++ )
	{
		for( ay = 0 + row; ay < my + row; ay++ )
		{
			index = ( ( ay * mx ) + ax ) * 2;
			devkit_SMS_loadTileMap( x + ax, y + ay, ( void * ) &pnt[ index ], 2 );
		}
	}

	//col#0
	//index = 0 * 2; 	devkit_SMS_loadTileMap( x + 0, y + 0, ( void * ) &pnt[ index ], 2 );
	//index = 4 * 2; 	devkit_SMS_loadTileMap( x + 0, y + 1, ( void * ) &pnt[ index ], 2 );
	//index = 8 * 2; 	devkit_SMS_loadTileMap( x + 0, y + 2, ( void * ) &pnt[ index ], 2 );
}


void engine_turtle_manager_draw_03( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = turtleAA_32x24__tilemap__bin;
	unsigned char index = 12;

	devkit_SMS_setNextTileatXY( x + 0, y + 0 );	devkit_SMS_setTile( *pnt + array[ index + 0 ] );
	devkit_SMS_setNextTileatXY( x + 1, y + 0 );	devkit_SMS_setTile( *pnt + array[ index + 1 ] );
	devkit_SMS_setNextTileatXY( x + 2, y + 0 );	devkit_SMS_setTile( *pnt + array[ index + 2 ] );
	devkit_SMS_setNextTileatXY( x + 3, y + 0 );	devkit_SMS_setTile( *pnt + array[ index + 3 ] );

	devkit_SMS_setNextTileatXY( x + 0, y + 1 );	devkit_SMS_setTile( *pnt + array[ index + 4 ] );
	devkit_SMS_setNextTileatXY( x + 1, y + 1 );	devkit_SMS_setTile( *pnt + array[ index + 5 ] );
	devkit_SMS_setNextTileatXY( x + 2, y + 1 );	devkit_SMS_setTile( *pnt + array[ index + 6 ] );
	devkit_SMS_setNextTileatXY( x + 3, y + 1 );	devkit_SMS_setTile( *pnt + array[ index + 7 ] );

	devkit_SMS_setNextTileatXY( x + 0, y + 2 );	devkit_SMS_setTile( *pnt + array[ index + 8 ] );
	devkit_SMS_setNextTileatXY( x + 1, y + 2 );	devkit_SMS_setTile( *pnt + array[ index + 9 ] );
	devkit_SMS_setNextTileatXY( x + 2, y + 2 );	devkit_SMS_setTile( *pnt + array[ index + 10 ] );
	devkit_SMS_setNextTileatXY( x + 3, y + 2 );	devkit_SMS_setTile( *pnt + array[ index + 11 ] );
}

void engine_turtle_manager_draw_04( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = turtleAA_32x24__tilemap__bin;

	unsigned int index = 0;
	unsigned char ax, ay;
	unsigned char mx, my;
	unsigned char row = 1;

	mx = 4;
	my = 3;

	for( ax = 0; ax < mx; ax++ )
	{
		for( ay = 0 + ( row*my ); ay < my + ( row*my ); ay++ )
		{
			index = ( ( ay * mx ) + ax ) * 2;
			devkit_SMS_loadTileMap( x + ax, y + ay, ( void * ) &pnt[ index ], 2 );
		}
	}

	//col#0
	//index = 0 * 2; 	devkit_SMS_loadTileMap( x + 0, y + 0, ( void * ) &pnt[ index ], 2 );
	//index = 4 * 2; 	devkit_SMS_loadTileMap( x + 0, y + 1, ( void * ) &pnt[ index ], 2 );
	//index = 8 * 2; 	devkit_SMS_loadTileMap( x + 0, y + 2, ( void * ) &pnt[ index ], 2 );
}
