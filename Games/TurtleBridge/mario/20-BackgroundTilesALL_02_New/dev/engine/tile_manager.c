#include "tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

static void draw_turtle_method_one( unsigned int *array, unsigned char x, unsigned char y );
static void draw_turtle_method_two( unsigned int *array, unsigned char x, unsigned char y );



void engine_tile_manager_turtle01( unsigned char x, unsigned char y )
{
	unsigned int array[ 24 ] = { 128,130,132,0,160,162,164,166,192,194,196,198, };
	draw_turtle_method_one( array, x, y );
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