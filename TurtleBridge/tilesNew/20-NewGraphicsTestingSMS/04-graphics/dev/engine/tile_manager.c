#include "tile_manager.h"
#include "enum_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

void engine_tile_manager_gfx2( unsigned char tmp )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	unsigned int idx;
	unsigned int val;
	unsigned char row, col;

	unsigned x, y;
	unsigned w, h;
	w = 16;
	h = 10;
	x = 18;
	y = 12;

	for( row = 0; row < h; row++ )
	{
		for( col = 0; col < w; col++ )
		{
			idx = tmp + row * 2 * w + col * 2;
			val = tiles[ idx ];
			devkit_SMS_setNextTileatXY( x + col, y + row );
			devkit_SMS_setTile( ( val ) );
		}
	}
}

void engine_tile_manager_gfx3( unsigned char tmp, unsigned char x, unsigned char col )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	unsigned int idx;
	unsigned int val;
	unsigned char row/*, col*/;

	unsigned /*x,*/ y;
	unsigned w, h;
	w = 16;
	h = 10;
	y = 12;

	for( row = 0; row < h; row++ )
	{
		//for( col = 0; col < w; col++ )
		//{
			idx = tmp + row * 2 * w + col * 2;
			val = tiles[ idx ];
			val = val | devkit_TILE_FLIPPED_X();
			devkit_SMS_setNextTileatXY( x /*+ col*/, y + row );		// IMPORTANT x not plus col now
			devkit_SMS_setTile( ( val ) );
		//}
	}
}



void engine_tile_manager_gfx2_hack( unsigned char tmp )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	unsigned int idx;
	unsigned int val;
	unsigned char row, col;

	unsigned x, y;
	unsigned w, h;
	w = 16;
	//h = 5;
	h = 10;
	x = 18;
	y = 12;

	//HACK to show small bridge - TODO would need to do this "properly"..!!
	for( row = 0; row < h; row++ )
	{
		for( col = 0; col < w; col++ )
		{
			if( row >= 5 && row < 9 )
			{
				continue;
			}
			idx = tmp + row * 2 * w + col * 2;
			val = tiles[ idx ];
			if( 9 == row )
			{
				devkit_SMS_setNextTileatXY( x + col, y + 5 );
				devkit_SMS_setTile( ( val ) );
			}
			else
			{
				devkit_SMS_setNextTileatXY( x + col, y + row );
				devkit_SMS_setTile( ( val ) );
			}
		}
	}
}

void engine_tile_manager_gfx()
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	unsigned int idx;
	unsigned int val;
	unsigned char row, col;

	unsigned x, y;
	unsigned w, h;
	w = 9;
	h = 10;
	x = 8;
	y = 4;

	for( row = 0; row < h; row++ )
	{
		for( col = 0; col < w; col++ )
		{
			idx = row * 2 * w + col * 2;
			val = tiles[ idx ];
			devkit_SMS_setNextTileatXY( x + col, y + row );
			devkit_SMS_setTile( ( val ) );
		}
	}
}

void engine_tile_manager_sky()
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	unsigned int idx;
	unsigned int val;
	unsigned char row, col, tmp;

	unsigned x, y;
	unsigned w, h;
	w = 1;
	h = 1;
	x = 8;
	y = 22;

	tmp = 128;
	for( row = 0; row < h; row++ )
	{
		for( col = 0; col < w; col++ )
		{
			idx = tmp + row * 2 * w + col * 2;
			val = tiles[ idx ];
			devkit_SMS_setNextTileatXY( x + col, y + row );
			devkit_SMS_setTile( ( val ) );
		}
	}
}

void engine_tile_manager_sea()
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	unsigned int idx;
	unsigned int val;
	unsigned char row, col, bse, tmp;

	unsigned x, y;
	unsigned w, h;
	w = 1;
	h = 1;
	x = 2;
	y = 15;

	//tmp = 76 * 2;
	col = 0;
	row = 0;
	// 64 = sky block
	// 65 = sea block
	// 66 - 74 = 9x sea tiles
	// 1 + 1 + 9 = 11
	// 11 * 8 = 88 px
	//for( bse = 64; bse < 75; bse++ )
	{
		tmp = bse * 2;
		//for( col = 0; col < w; col++ )
		{
			idx = tmp + row * 2 * w + col * 2;
			val = tiles[ idx ];
			devkit_SMS_setNextTileatXY( x, y );
			devkit_SMS_setTile( ( val ) );
			x += 1;
		}
	}
}

//static void draw_tile_fl02( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h, unsigned char s, unsigned char f );
////static void draw_tile_full( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h );
//static void draw_tile_flip( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h );
//static void draw_tile_next( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h );
//static void draw_tile_scroll( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h, unsigned char col );
//
//
//void engine_tile_manager_draw_pipe( unsigned char type, unsigned int x, unsigned char y, unsigned char wide, unsigned char high, unsigned char col )
//{
//	//const unsigned char *tiles = bggame_tiles__tilemap__bin;
//}
//
//void engine_tile_manager_draw_norm( unsigned char type, unsigned char x, unsigned char y, unsigned char wide, unsigned char high, unsigned char beg, unsigned char end )
//{
//	
//}
//
//void engine_tile_manager_draw_flip( unsigned char type, unsigned char x, unsigned char y, unsigned char wide, unsigned char high, unsigned char beg, unsigned char end )
//{
//	
//}



//void engine_tile_manager_draw_tile( unsigned char type, unsigned char x, unsigned char y )
//{
//	
//}
//
//void engine_tile_manager_turtle( unsigned char type, unsigned char x, unsigned char y )
//{
//	
//}
//
//void engine_tile_manager_sign( unsigned char type, unsigned char x, unsigned char y )
//{
//	
//}


//void engine_tile_manager_cloud( unsigned char type, unsigned char x, unsigned char y )
//{
//	const unsigned char *array = tile_object_data[ type ];
//	const unsigned char w = tile_object_wide[ type ];
//	const unsigned char h = tile_object_high[ type ];
//	draw_tile_next( array, x, y, w, h );
//}



//void engine_tile_manager_section01( unsigned char x, unsigned char y )
//{
//	const unsigned char *array = tile_object_data[ tile_type_section01 ];
//	const unsigned char w = tile_object_wide[ tile_type_section01 ];
//	const unsigned char h = tile_object_high[ tile_type_section01 ];
//	//draw_tile_full( array, x, y, w, h );
//	draw_tile_next( array, x, y, w, h );
//	//draw_tile_side( array, x, y, w, h, 0, 16 );
//}
//
//void engine_tile_manager_section01_left( unsigned char x, unsigned char y )
//{
//	const unsigned char *array = tile_object_data[ tile_type_section01 ];
//	const unsigned char w = tile_object_wide[ tile_type_section01 ];
//	const unsigned char h = tile_object_high[ tile_type_section01 ];
//	//	draw_tile_full( array, x, y, w, h );
//	//	draw_tile_next( array, x, y, w, h );
//	draw_tile_fl02( array, x, y, w, h, 0, 16 );
//}
//
//void engine_tile_manager_section02( unsigned char x, unsigned char y )
//{
//	const unsigned char *array = tile_object_data[ tile_type_section02 ];
//	const unsigned char w = tile_object_wide[ tile_type_section02 ];
//	const unsigned char h = tile_object_high[ tile_type_section02 ];
//	//draw_tile_full( array, x, y, w, h );
//	draw_tile_next( array, x, y, w, h );
//}
//
//void engine_tile_manager_section03( unsigned char x, unsigned char y )
//{
//	const unsigned char *array = tile_object_data[ tile_type_section03 ];
//	const unsigned char w = tile_object_wide[ tile_type_section03 ];
//	const unsigned char h = tile_object_high[ tile_type_section03 ];
//	//draw_tile_full( array, x, y, w, h );
//	draw_tile_next( array, x, y, w, h );
//	//draw_tile_flip( array, x, y, w, h );
//}


//void engine_tile_manager_scroll_test( unsigned char x, unsigned char y, unsigned char col )
//{
//	
//}
//

//
//
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
//
//static void draw_tile_fl02( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h, unsigned char s, unsigned char f )
//{
//	const unsigned char *tiles = bggame_tiles__tilemap__bin;
//	unsigned char idx;
//	unsigned int val;
//	unsigned char row, col, tmp;
//
//	unsigned int flip = devkit_TILE_FLIPPED_X();
//	for( row = 0; row < h; row++ )
//	{
//		//for( tmp = 0; tmp < w; tmp++ )
//		for( tmp = s; tmp < f; tmp++ )
//		{
//			col = w - tmp - 1;
//			idx = row * w + col;
//			val = array[ idx ];
//			devkit_SMS_setNextTileatXY( x + tmp, y + row );
//			devkit_SMS_setTile( ( *tiles + val ) | flip );
//		}
//	}
//}

//static void draw_tile_full( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h )
//{
//	const unsigned char *tiles = bggame_tiles__tilemap__bin;
//	unsigned char idx;
//	unsigned char val;
//	unsigned int off;
//	unsigned char row, col;
//
//	for( row = 0; row < h; row++ )
//	{
//		for( col = 0; col < w; col++ )
//		{
//			idx = row * w + col;
//			val = array[ idx ];
//			off = val * 2;
//			devkit_SMS_loadTileMap( x + col, y + row, ( void * ) &tiles[ off ], 2 );
//		}
//	}
//}

//static void draw_tile_flip( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h )
//{
//	const unsigned char *tiles = bggame_tiles__tilemap__bin;
//	unsigned char idx;
//	unsigned int val;
//	unsigned char row, col, tmp;
//
//	unsigned int flip = devkit_TILE_FLIPPED_X();
//	for( row = 0; row < h; row++ )
//	{
//		for( tmp = 0; tmp < w; tmp++ )
//		{
//			col = w - tmp - 1;
//			idx = row * w + col;
//			val = array[ idx ];
//			devkit_SMS_setNextTileatXY( x + tmp, y + row );
//			devkit_SMS_setTile( ( *tiles + val ) | flip );
//		}
//	}
//}
//
//static void draw_tile_next( const unsigned char *array, unsigned char x, unsigned char y, unsigned char w, unsigned char h )
//{
//	const unsigned char *tiles = bggame_tiles__tilemap__bin;
//	unsigned char idx;
//	unsigned char val;
//	unsigned char row, col;
//
//	for( row = 0; row < h; row++ )
//	{
//		for( col = 0; col < w; col++ )
//		{
//			idx = row * w + col;
//			val = array[ idx ];
//			devkit_SMS_setNextTileatXY( x + col, y + row );
//			devkit_SMS_setTile( ( *tiles + val ) );
//		}
//	}
//}


// Flip
//void engine_tile_manager_turtle_flip( unsigned char type, unsigned char x, unsigned char y )
//{
//	const unsigned char wide = 4;
//	const unsigned char high = 3;
//	engine_tile_manager_draw_flip( type, x, y, wide, high, 0, wide );
//}