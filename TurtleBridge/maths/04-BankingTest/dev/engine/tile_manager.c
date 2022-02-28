#include "tile_manager.h"
#include "enum_manager.h"
#include "global_manager.h"
#include "../object/tile_object.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"
#include <stdlib.h>

//static void draw_tile_scroll( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h, unsigned char col );

void engine_tile_manager_blank_column( unsigned char col )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	unsigned char row;

	void *src = ( void * ) &tiles[ SKYBLUE_TILE * 2 ];
	//void *src = ( void * ) &tiles[ 16 ];
	for( row = 10; row < WAVES_HIGH; row++ )
	{
		devkit_SMS_loadTileMap( col, row, src, 2 );
	}

}

void engine_tile_manager_draw_pipe( unsigned char type, unsigned int x, unsigned char y, unsigned char col )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	const unsigned char *array = tile_object_data[ type ];
	const unsigned char wide = tile_object_wide[ type ];
	const unsigned char high = tile_object_high[ type ];
	unsigned char idx;
	unsigned char val;
	unsigned int off;
	unsigned char row;

	for( row = 0; row < high; row++ )
	{
		idx = row * wide + col;
		val = array[ idx ];
		off = val * 2;
		devkit_SMS_loadTileMap( x, y + row, ( void * ) &tiles[ off ], 2 );
	}
}

//void engine_tile_manager_draw_pipe2( unsigned char type, unsigned int x, unsigned char y, unsigned char wide, unsigned char high, unsigned char col )
//{
//}

void engine_tile_manager_draw_norm2( unsigned char type, unsigned char x, unsigned char y )
{
	//const unsigned char *tiles = bggame_tiles__tilemap__bin;
	//const unsigned char *array = tile_object_data[ type ];
	//const unsigned char wide = tile_object_wide[ type ];
	//const unsigned char high = tile_object_high[ type ];

	//unsigned char idx;
	//unsigned char val;
	//unsigned char row, col;
	//unsigned char spc;

	//for( row = 0; row < high; row++ )
	//{
	//	spc = 0;
	//	for( col = 0; col < wide; col++ )
	//	{
	//		idx = row * wide + col;
	//		val = array[ idx ];
	//		devkit_SMS_setNextTileatXY( x + spc, y + row );
	//		devkit_SMS_setTile( ( *tiles + val ) );
	//		spc++;
	//	}
	//}
	engine_tile_manager_draw_offset2( type, 0, x, y );
}

void engine_tile_manager_draw_offset2( unsigned char type, unsigned char offset, unsigned char x, unsigned char y )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	const unsigned char *array = tile_object_data[ type ];
	const unsigned char wide = tile_object_wide[ type ];
	const unsigned char high = tile_object_high[ type ];

	unsigned char idx;
	unsigned char val;
	unsigned char row, col;
	unsigned char spc, tmp;

	tmp = offset * high;
	for( row = 0; row < high; row++ )
	{
		spc = 0;
		for( col = 0; col < wide; col++ )
		{
			idx = ( row + tmp ) * wide + col;
			val = array[ idx ];
			devkit_SMS_setNextTileatXY( x + spc, y + row );
			devkit_SMS_setTile( ( *tiles + val ) );
			spc++;
		}
	}
}

void engine_tile_manager_draw_norm( unsigned char type, unsigned char x, unsigned char y, unsigned char wide, unsigned char high, unsigned char beg, unsigned char end )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	const unsigned char *array = tile_object_data[ type ];
	unsigned char idx;
	unsigned char val;
	unsigned char row, col;
	unsigned char spc;

	for( row = 0; row < high; row++ )
	{
		spc = 0;
		for( col = beg; col < end; col++ )
		{
			idx = row * wide + col;
			val = array[ idx ];
			devkit_SMS_setNextTileatXY( x + spc, y + row );
			devkit_SMS_setTile( ( *tiles + val ) );
			spc++;
		}
	}
}

void engine_tile_manager_draw_offset( unsigned char type, unsigned char x, unsigned char y, unsigned char wide, unsigned char high, unsigned char beg, unsigned char end, unsigned char off )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	const unsigned char *array = tile_object_data[ type ];
	unsigned char idx;
	unsigned char val;
	unsigned char row, col;
	unsigned char spc, tmp;

	tmp = off * high;
	for( row = 0; row < high; row++ )
	{
		spc = 0;
		for( col = beg; col < end; col++ )
		{
			idx = ( row + tmp ) * wide + col;
			val = array[ idx ];
			devkit_SMS_setNextTileatXY( x + spc, y + row );
			devkit_SMS_setTile( ( *tiles + val ) );
			spc++;
		}
	}
}



void engine_tile_manager_draw_flip2( unsigned char type, unsigned char x, unsigned char y )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	const unsigned char *array = tile_object_data[ type ];
	const unsigned char wide = tile_object_wide[ type ];
	const unsigned char high = tile_object_high[ type ];

	unsigned char idx;
	unsigned char val;
	unsigned char row, col;
	unsigned char spc, tmp;

	unsigned int flip = devkit_TILE_FLIPPED_X();
	for( row = 0; row < high; row++ )
	{
		spc = 0;
		for( tmp = 0; tmp < wide; tmp++ )
		{
			col = wide - tmp - 1;
			idx = row * wide + col;
			val = array[ idx ];
			devkit_SMS_setNextTileatXY( x + spc, y + row );
			devkit_SMS_setTile( ( *tiles + val ) | flip );
			spc++;
		}
	}
}

void engine_tile_manager_draw_flip( unsigned char type, unsigned char x, unsigned char y, unsigned char wide, unsigned char high, unsigned char beg, unsigned char end )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	const unsigned char *array = tile_object_data[ type ];
	unsigned char idx;
	unsigned char val;
	unsigned char row, col;
	unsigned char spc, tmp;

	unsigned int flip = devkit_TILE_FLIPPED_X();
	for( row = 0; row < high; row++ )
	{
		spc = 0;
		for( tmp = beg; tmp < end; tmp++ )
		{
			col = wide - tmp - 1;
			idx = row * wide + col;
			val = array[ idx ];
			devkit_SMS_setNextTileatXY( x + spc, y + row );
			devkit_SMS_setTile( ( *tiles + val ) | flip );
			spc++;
		}
	}
}



void engine_tile_manager_draw_tile( unsigned char type, unsigned char x, unsigned char y )
{
	const unsigned char wide = tile_object_wide[ type ];
	const unsigned char high = tile_object_high[ type ];
	engine_tile_manager_draw_norm( type, x, y, wide, high, 0, wide );
}

void engine_tile_manager_sea_turtle( unsigned char turtle, unsigned char x, unsigned char y )
{
	engine_tile_manager_draw_offset2( tile_type_sea_turtles, turtle, x, y );
}
void engine_tile_manager_lie_turtle( unsigned char turtle, unsigned char x, unsigned char y )
{
	engine_tile_manager_draw_offset2( tile_type_lie_turtles, turtle, x, y );
}
void engine_tile_manager_fly_turtle( unsigned char turtle, unsigned char x, unsigned char y )
{
	engine_tile_manager_draw_offset2( tile_type_fly_turtles, turtle, x, y );
}

void engine_tile_manager_sign( unsigned char type, unsigned char x, unsigned char y )
{
	const unsigned char wide = tile_object_wide[ type ];
	const unsigned char high = tile_object_high[ type ];
	engine_tile_manager_draw_norm( type, x, y, wide, high, 0, wide );
}


void engine_tile_manager_section03( unsigned char sect, unsigned char x, unsigned char y )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	const unsigned char *array = tile_object_data[ tile_type_section03 ];

	unsigned char idx, col;
	unsigned char spc = 0;

	engine_tile_manager_draw_pipe( tile_type_section03, x + spc++, y, 0 );
	engine_tile_manager_draw_pipe( tile_type_section03, x + spc++, y, 1 );
	for( idx = 0; idx < sect; idx++ )
	{
		for( col = 2; col < 6; col++ )
		{
			engine_tile_manager_draw_pipe( tile_type_section03, x + spc++, y, col );
		}
	}
	engine_tile_manager_draw_pipe( tile_type_section03, x + spc++, y, 6 );
	engine_tile_manager_draw_pipe( tile_type_section03, x + spc++, y, 7 );
}


//void engine_tile_manager_scroll_test( unsigned char x, unsigned char y, unsigned char col )
//{
//	const unsigned char *array = tile_object_data[ tile_type_section01 ];
//	const unsigned char w = tile_object_wide[ tile_type_section01 ];
//	const unsigned char h = tile_object_high[ tile_type_section01 ];
//	draw_tile_scroll( array, x, y, w, h, col );
//}

void engine_tile_manager_sky()
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
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

void engine_tile_manager_sea()
{
	unsigned char *tiles = NULL;
	unsigned char *array = NULL;
	unsigned char wide = 0;
	unsigned char high = 0;
	
	unsigned char idx;
	unsigned char val;
	unsigned char row, col, mul;

	unsigned char x = 0;
	unsigned char y = WAVES_HIGH;

	devkit_SMS_mapROMBank( 2 );
	tiles = bggame_tiles__tilemap__bin;
	
	array = tile_object_data[ tile_type_sea_tiles ];
	wide = tile_object_wide[ tile_type_sea_tiles ];
	high = tile_object_high[ tile_type_sea_tiles ];

	devkit_SMS_mapROMBank( 2 );
	for( row = 0; row < high; row++ )
	{
		for( col = 0; col < wide; col++ )
		{
			devkit_SMS_mapROMBank( 3 );
			idx = row * wide + col;
			val = array[ idx ];

			// 8x pillars 4x tiles wide.
			for( mul = 0; mul < 8; mul++ )
			{
				devkit_SMS_mapROMBank( 2 );
				devkit_SMS_setNextTileatXY( x + col + ( mul * 4 ), y + row );
				devkit_SMS_setTile( ( *tiles + val ) );
			}
		}
	}
}


//static void draw_tile_scroll( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h, unsigned char col )
//{
//	const unsigned char *tiles = bggame_tiles__tilemap__bin;
//	unsigned char idx;
//	unsigned char val;
//	unsigned int off;
//	unsigned char row;
//
//	for( row = 0; row < h; row++ )
//	{
//		idx = row * w + col;
//		val = array[ idx ];
//		off = val * 2;
//		devkit_SMS_loadTileMap( x + col, y + row, ( void * ) &tiles[ off ], 2 );
//	}
//}