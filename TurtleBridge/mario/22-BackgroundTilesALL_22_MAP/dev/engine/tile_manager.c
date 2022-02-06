#include "tile_manager.h"
#include "../object/tile_object.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

static void draw_turtle_method_one( unsigned int *array, unsigned char x, unsigned char y );
static void draw_turtle_method_two( unsigned int *array, unsigned char x, unsigned char y );

void engine_tile_manager_turtle( unsigned char type, unsigned char x, unsigned char y )
{
	const unsigned char *tiles = game_tiles__tilemap__bin;
	const unsigned char *array = tile_object_data[ type ];
	unsigned char idx;
	unsigned char val;
	unsigned char row, col;
	unsigned char w, h;
	w = 4;
	h = 3;

	for ( row = 0; row < h; row++ )
	{
		for( col = 0; col < w; col++ )
		{
			idx = row * w + col;
			val = array[ idx ];
			idx = val * 2;
			devkit_SMS_loadTileMap( x + col, y + row, ( void * ) &tiles[ idx ], 2 );
		}
	}
}

void engine_tile_manager_ground02( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char array[ 64 ] =
	{
		0,1,1,2,1,2,1,2,1,2,1,2,1,3,2,4,
		5,6,6,7,6,7,6,7,6,7,6,7,6,7,7,8,
		9,10,11,12,10,13,11,12,10,13,11,12,10,13,12,14,
		15,16,17,18,15,16,17,18,15,16,17,18,15,16,17,18,
	};

	unsigned char idx;
	unsigned char val;
	unsigned char tmp;
	unsigned char i, j;
	for( i = 0; i < 16; i++ )
	{
		for( j = 0; j < 4; j++ )
		{
			idx = j * 16 + i;
			val = array[ idx ];
			tmp = val * 2;
			devkit_SMS_loadTileMap( x + i, y + j, ( void * ) &pnt[ tmp ], 2 );
		}
	}
}

void engine_tile_manager_ground03( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char idx;
	unsigned int val;
	unsigned char ix, iy;

	ix = 0; iy = 0; idx = 0; val = 0;	devkit_SMS_loadTileMap( x + ix, y + iy, ( void * ) &pnt[ val ], 2 );
	ix = 1; iy = 0; idx = 0; val = 2;	devkit_SMS_loadTileMap( x + ix, y + iy, ( void * ) &pnt[ val ], 2 );
	
	ix = 0; iy = 1; idx = 0; val = 10;	devkit_SMS_loadTileMap( x + ix, y + iy, ( void * ) &pnt[ val ], 2 );

	ix = 0; iy = 2; idx = 0; val = 18;	devkit_SMS_loadTileMap( x + ix, y + iy, ( void * ) &pnt[ val ], 2 );

	ix = 0; iy = 3; idx = 0; val = 30;	devkit_SMS_loadTileMap( x + ix, y + iy, ( void * ) &pnt[ val ], 2 );
}

void engine_tile_manager_ground01( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char array[ 64 ] = 
	{
		0,1,1,2,1,2,1,2,1,2,1,2,1,3,2,4,
		5,6,6,7,6,7,6,7,6,7,6,7,6,7,7,8,
		9,10,11,12,10,13,11,12,10,13,11,12,10,13,12,14,
		15,16,17,18,15,16,17,18,15,16,17,18,15,16,17,18,
	};

	unsigned char idx;
	unsigned char val;
	unsigned char i, j;
	for( j = 0; j < 4; j++ )
	{
		for( i = 0; i < 16; i++ )
		{
			idx = j * 16 + i;
			val = array[ idx ];

			devkit_SMS_setNextTileatXY( x + i, y + j );
			devkit_SMS_setTile( *pnt + val );

		}
	}
	//devkit_SMS_setNextTileatXY( x + 0, y + 0 );	devkit_SMS_setTile( *pnt + 115 );
	//devkit_SMS_setNextTileatXY( x + 1, y + 0 );	devkit_SMS_setTile( *pnt + 116 );
	//devkit_SMS_setNextTileatXY( x + 2, y + 0 );	devkit_SMS_setTile( *pnt + 117 );
	//devkit_SMS_setNextTileatXY( x + 3, y + 0 );	devkit_SMS_setTile( *pnt + 118 );
}

void engine_tile_manager_cloud01( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	devkit_SMS_setNextTileatXY( x + 0, y + 0 );	devkit_SMS_setTile( *pnt + 115 );
	devkit_SMS_setNextTileatXY( x + 1, y + 0 );	devkit_SMS_setTile( *pnt + 116 );
	devkit_SMS_setNextTileatXY( x + 2, y + 0 );	devkit_SMS_setTile( *pnt + 117 );
	devkit_SMS_setNextTileatXY( x + 3, y + 0 );	devkit_SMS_setTile( *pnt + 118 );

	//devkit_SMS_setNextTileatXY( x + 0, y + 1 );	devkit_SMS_setTile( *pnt + 131 );
	devkit_SMS_setNextTileatXY( x + 1, y + 1 );	devkit_SMS_setTile( *pnt + 131 );
	devkit_SMS_setNextTileatXY( x + 2, y + 1 );	devkit_SMS_setTile( *pnt + 131 );
	//devkit_SMS_setNextTileatXY( x + 3, y + 1 );	devkit_SMS_setTile( *pnt + 133 );
	//unsigned int array[ 24 ] = { 320,322,324,326,354,358,358,360,386,388,392,0, };
	//draw_turtle_method_one( array, x, y );
	////draw_turtle_method_two( array, x, y );
}


void engine_tile_manager_turtle01( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char array[] =
	{
		72,73,74,64,
		75,76,77,78,
		79,80,81,82,
	};

	unsigned char idx;
	unsigned char val;
	unsigned char row, col;
	unsigned char w, h;
	w = 4;
	h = 3;
	for( row = 0; row < h; row++ )
	{
		for( col = 0; col < w; col++ )
		{
			idx = row * w + col;
			val = array[ idx ];
			idx = val * 2;
			devkit_SMS_loadTileMap( x + col, y + row, ( void * ) &pnt[ idx ], 2 );
		}
	}
}
void engine_tile_manager_turtle02( unsigned char x, unsigned char y )
{
	unsigned int array[ 24 ] = { 128,130,132,0,168,162,172,174,200,194,196,206, };
	draw_turtle_method_one( array, x, y );
}
void engine_tile_manager_turtle03( unsigned char x, unsigned char y )
{
	unsigned int array[ 24 ] = { 144,146,148,124,176,162,180,182,200,194,196,206, };
	draw_turtle_method_one( array, x, y );
}
void engine_tile_manager_turtle04( unsigned char x, unsigned char y )
{
	unsigned int array[ 24 ] = { 152,154,156,0,184,186,188,190,216,218,220,222, };
	draw_turtle_method_one( array, x, y );
}

void engine_tile_manager_turtle05( unsigned char x, unsigned char y )
{
	unsigned int array[ 24 ] = { 152,154,156,0,256,186,260,262,216,218,220,294, };
	draw_turtle_method_one( array, x, y );
}
void engine_tile_manager_turtle06( unsigned char x, unsigned char y )
{
	unsigned int array[ 24 ] = { 232,234,236,124,264,186,268,270,216,218,220,294, };
	draw_turtle_method_one( array, x, y );
}
void engine_tile_manager_turtle07( unsigned char x, unsigned char y )
{
	unsigned int array[ 24 ] = { 128,242,132,0,160,274,164,166,304,306,308,310, };
	draw_turtle_method_one( array, x, y );
}
void engine_tile_manager_turtle08( unsigned char x, unsigned char y )
{
	unsigned int array[ 24 ] = { 128,250,132,0,160,282,164,166,304,306,308,310, };
	//draw_turtle_method_one( array, x, y );
	draw_turtle_method_two( array, x, y );
}


static void draw_turtle_method_one( unsigned int *array, unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char idx;
	unsigned int val;
	unsigned char tmp;
	unsigned char ix, iy;

	for( iy = 0; iy < 3; iy++ )
	{
		for( ix = 0; ix < 4; ix++ )
		{
			idx = iy * 4 + ix;
			val = array[ idx ];
			tmp = ( unsigned char ) pnt[ val ];
			devkit_SMS_setNextTileatXY( x + ix, y + iy );
			devkit_SMS_setTile( *pnt + tmp );
		}
	}
}

static void draw_turtle_method_two( unsigned int *array, unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
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
}