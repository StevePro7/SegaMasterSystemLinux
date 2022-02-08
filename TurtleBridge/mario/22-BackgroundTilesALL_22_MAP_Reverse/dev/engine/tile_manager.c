#include "tile_manager.h"
#include "enum_manager.h"
#include "global_manager.h"
#include "../object/tile_object.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

static void draw_tile_side( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h, unsigned char s, unsigned char f );
static void draw_tile_fl02( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h, unsigned char s, unsigned char f );
static void draw_tile_full( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h );
static void draw_tile_flip( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h );
static void draw_tile_next( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h );
static void draw_tile_scroll( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h, unsigned char col );

void engine_tile_manager_sky()
{
	const unsigned char *tiles = game_tiles__tilemap__bin;
	const unsigned char idx = 64;

	unsigned char row, col;
	for( row = 0; row < SCREEN_HIGH; row++ )
	{
		for( col = 0; col < SCREEN_WIDE; col++ )
		{
			devkit_SMS_setNextTileatXY( col, row );
			devkit_SMS_setTile( *tiles + idx );
		}
	}
}

void engine_tile_manager_turtle( unsigned char type, unsigned char x, unsigned char y )
{
	const unsigned char *array = tile_object_data[ type ];
	const unsigned char w = 4;
	const unsigned char h = 3;
	draw_tile_full( array, x, y, w, h );
}

void engine_tile_manager_cloud( unsigned char type, unsigned char x, unsigned char y )
{
	const unsigned char *array = tile_object_data[ type ];
	const unsigned char h = 3;
	unsigned char w = 4;
	if( type == tile_type_cloud02 )
	{
		w = 6;
	}
	draw_tile_full( array, x, y, w, h );
}

void engine_tile_manager_sign( unsigned char type, unsigned char x, unsigned char y )
{
	const unsigned char *array = tile_object_data[ type ];
	const unsigned char w = 3;
	const unsigned char h = 3;
	draw_tile_full( array, x, y, w, h );
}

void engine_tile_manager_section01( unsigned char x, unsigned char y )
{
	const unsigned char *array = tile_object_data[ tile_type_section01 ];
	const unsigned char w = tile_object_wide[ tile_type_section01 ];
	const unsigned char h = tile_object_high[ tile_type_section01 ];
	//	draw_tile_full( array, x, y, w, h );
	//draw_tile_next( array, x, y, w, h );
	draw_tile_side( array, x, y, w, h, 0, 8 );
}

void engine_tile_manager_section01_left( unsigned char x, unsigned char y )
{
	const unsigned char *array = tile_object_data[ tile_type_section01 ];
	const unsigned char w = tile_object_wide[ tile_type_section01 ];
	const unsigned char h = tile_object_high[ tile_type_section01 ];
	//	draw_tile_full( array, x, y, w, h );
	//	draw_tile_next( array, x, y, w, h );
	draw_tile_fl02( array, x, y, w, h, 8, 16 );
}

void engine_tile_manager_section02( unsigned char x, unsigned char y )
{
	const unsigned char *array = tile_object_data[ tile_type_section02 ];
	const unsigned char w = tile_object_wide[ tile_type_section02 ];
	const unsigned char h = tile_object_high[ tile_type_section02 ];
	//draw_tile_full( array, x, y, w, h );
	draw_tile_next( array, x, y, w, h );
}

void engine_tile_manager_section03( unsigned char x, unsigned char y )
{
	const unsigned char *array = tile_object_data[ tile_type_section03 ];
	const unsigned char w = tile_object_wide[ tile_type_section03 ];
	const unsigned char h = tile_object_high[ tile_type_section03 ];
	//draw_tile_full( array, x, y, w, h );
	draw_tile_next( array, x, y, w, h );
	//draw_tile_flip( array, x, y, w, h );
}


void engine_tile_manager_scroll_test( unsigned char x, unsigned char y, unsigned char col )
{
	const unsigned char *array = tile_object_data[ tile_type_section01 ];
	const unsigned char w = tile_object_wide[ tile_type_section01 ];
	const unsigned char h = tile_object_high[ tile_type_section01 ];
	draw_tile_scroll( array, x, y, w, h, col );
}


static void draw_tile_scroll( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h, unsigned char col )
{
	const unsigned char *tiles = game_tiles__tilemap__bin;
	unsigned char idx;
	unsigned char val;
	unsigned int off;
	unsigned char row;

	for( row = 0; row < h; row++ )
	{
		idx = row * w + col;
		val = array[ idx ];
		off = val * 2;
		devkit_SMS_loadTileMap( x + col, y + row, ( void * ) &tiles[ off ], 2 );
	}
}

static void draw_tile_side( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h, unsigned char s, unsigned char f )
{
	const unsigned char *tiles = game_tiles__tilemap__bin;
	unsigned char idx;
	unsigned char val;
	unsigned int off;
	unsigned char row, col;

	for( row = 0; row < h; row++ )
	{
		for( col = s; col < f; col++ )
		{
			idx = row * w + col;
			val = array[ idx ];
			off = val * 2;
			devkit_SMS_loadTileMap( x + col, y + row, ( void * ) &tiles[ off ], 2 );
		}
	}
}

static void draw_tile_fl02( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h, unsigned char s, unsigned char f )
{
	const unsigned char *tiles = game_tiles__tilemap__bin;
	unsigned char idx;
	unsigned int val;
	unsigned char row, col, tmp;

	unsigned int flip = devkit_TILE_FLIPPED_X();
	for( row = 0; row < h; row++ )
	{
		for( tmp = 0; tmp < w; tmp++ )
		for( tmp = s; tmp < f; tmp++ )
		{
			col = w - tmp - 1;
			idx = row * w + col;
			val = array[ idx ];
			devkit_SMS_setNextTileatXY( x + tmp, y + row );
			devkit_SMS_setTile( ( *tiles + val ) | flip );
		}
	}
}

static void draw_tile_full( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h )
{
	const unsigned char *tiles = game_tiles__tilemap__bin;
	unsigned char idx;
	unsigned char val;
	unsigned int off;
	unsigned char row, col;

	for( row = 0; row < h; row++ )
	{
		for( col = 0; col < w; col++ )
		{
			idx = row * w + col;
			val = array[ idx ];
			off = val * 2;
			devkit_SMS_loadTileMap( x + col, y + row, ( void * ) &tiles[ off ], 2 );
		}
	}
}

static void draw_tile_flip( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h )
{
	const unsigned char *tiles = game_tiles__tilemap__bin;
	unsigned char idx;
	unsigned int val;
	unsigned char row, col, tmp;

	unsigned int flip = devkit_TILE_FLIPPED_X();
	for( row = 0; row < h; row++ )
	{
		for( tmp = 0; tmp < w; tmp++ )
		{
			col = w - tmp - 1;
			idx = row * w + col;
			val = array[ idx ];
			devkit_SMS_setNextTileatXY( x + tmp, y + row );
			devkit_SMS_setTile( ( *tiles + val ) | flip );
		}
	}
}

static void draw_tile_next( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h )
{
	const unsigned char *tiles = game_tiles__tilemap__bin;
	unsigned char idx;
	unsigned char val;
	unsigned char row, col;

	for( row = 0; row < h; row++ )
	{
		for( col = 0; col < w; col++ )
		{
			idx = row * w + col;
			val = array[ idx ];
			devkit_SMS_setNextTileatXY( x + col, y + row );
			devkit_SMS_setTile( ( *tiles + val ) );
		}
	}
}