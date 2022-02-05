#include "tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

static void draw_turtle_method_one( unsigned int *array, unsigned char x, unsigned char y );
static void draw_turtle_method_two( unsigned int *array, unsigned char x, unsigned char y );

static void draw_image( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char idx;
	unsigned char val;
	unsigned char tmp;
	unsigned char i, j;
	for( i = 0; i < w; i++ )
	{
		for( j = 0; j < h; j++ )
		{
			idx = j * 16 + i;
			val = array[ idx ];
			tmp = val * 2;
			devkit_SMS_loadTileMap( x + i, y + j, ( void * ) &pnt[ tmp ], 2 );
		}
	}
}

void engine_tile_manager_section01( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char w = 16;
	unsigned char h = 10;
	unsigned char array[] =
	{
		64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,
		65,66,67,68,69,70,67,68,69,70,67,68,69,70,67,68,
		71,72,73,74,75,76,77,74,75,76,77,74,75,76,77,74,
		78,78,79,80,81,82,83,80,81,82,83,80,81,82,83,80,
		78,78,71,84,85,86,87,88,89,86,87,88,89,86,87,88,
		78,78,78,78,90,70,67,68,69,70,67,68,69,70,67,68,
		78,78,78,78,91,76,77,74,75,76,77,74,75,76,77,74,
		78,78,78,78,92,82,83,80,81,82,83,80,81,82,83,80,
		78,78,78,78,93,86,94,95,89,86,94,95,89,86,94,95,
		96,96,96,96,97,98,99,100,101,98,99,100,101,98,99,100,
	};

	draw_image( array, x, y, w, h );

	//unsigned char idx;
	//unsigned char val;
	//unsigned char tmp;
	//unsigned char i, j;
	//for( i = 0; i < 16; i++ )
	//{
	//	for( j = 0; j < 10; j++ )
	//	{
	//		idx = j * 16 + i;
	//		val = array[ idx ];
	//		tmp = val * 2;
	//		devkit_SMS_loadTileMap( x + i, y + j, ( void * ) &pnt[ tmp ], 2 );
	//	}
	//}
}

void engine_tile_manager_section02( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	const unsigned char array[ 160 ] =
	{
		64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,64,
		65,66,67,68,69,70,67,68,69,70,67,68,69,70,67,68,
		71,72,73,74,75,76,77,74,75,76,77,74,75,76,77,74,
		78,78,79,80,81,82,83,80,81,82,83,80,81,82,83,80,
		78,78,71,84,85,86,87,88,89,86,87,88,89,86,87,88,
		78,78,78,78,90,70,67,68,69,70,67,68,69,70,67,68,
		78,78,78,78,91,76,77,74,75,76,77,74,75,76,77,74,
		78,78,78,78,92,82,83,80,81,82,83,80,81,82,83,80,
		78,78,78,78,93,86,94,95,89,86,94,95,89,86,94,95,
		96,96,96,96,97,98,99,100,101,98,99,100,101,98,99,100,
	};

	unsigned char idx;
	unsigned char val;
	unsigned char i, j;
	for( i = 0; i < 16; i++ )
	{
		for( j = 0; j < 10; j++ )
		{
			idx = j * 16 + i;
			val = array[ idx ];

			devkit_SMS_setNextTileatXY( x + i, y + j );
			devkit_SMS_setTile( *pnt + val );
		}
	}
}

void engine_tile_manager_ground02( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = game_tiles__tilemap__bin;
	unsigned char array[ 64 ] =
	{
		102,103,103,104,103,104,103,104,103,104,103,104,103,105,104,106,
		107,108,108,109,108,109,108,109,108,109,108,109,108,109,109,110,
		111,112,113,114,112,115,113,114,112,115,113,114,112,115,114,116,
		117,118,119,120,117,118,119,120,117,118,119,120,117,118,119,120,
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
		102,103,103,104,103,104,103,104,103,104,103,104,103,105,104,106,
		107,108,108,109,108,109,108,109,108,109,108,109,108,109,109,110,
		111,112,113,114,112,115,113,114,112,115,113,114,112,115,114,116,
		117,118,119,120,117,118,119,120,117,118,119,120,117,118,119,120,
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
	unsigned int array[ 24 ] = { 128,130,132,0,160,162,164,166,192,194,196,198, };
	//draw_turtle_method_one( array, x, y );
	draw_turtle_method_two( array, x, y );
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