#include "tile_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank2.h"

#define TILE_SCROLL_HIGH	8
#define TILE_SCROLL_ROWS	14

static unsigned int flippedX;

void engine_tile_manager_init()
{
	flippedX = devkit_TILE_FLIPPED_X();
}

//void engine_tile_manager_draw_columns( unsigned char tile_type, unsigned char x, unsigned char col )
void engine_tile_manager_draw_column( unsigned char tile_type, unsigned char x, unsigned char col, bool flip )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	unsigned int idx;
	unsigned int tmp;
	unsigned int val;
	unsigned char row;
	devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );

	tmp = tiles_object_indexes[ tile_type ];
	for( row = 0; row < TILE_SCROLL_ROWS; row++ )
	{
		idx = tmp + row * 2 * TILMAP_WIDE + col * 2;
		val = tiles[ idx ];
		if( flip )
		{
			// TODO - do I want to do this or pass unsigned int??
			val |= flippedX;
		}

		devkit_SMS_setNextTileatXY( x, TILE_SCROLL_HIGH + row );
		devkit_SMS_setTile( val );
	}
}

void engine_tile_manager_draw_cloud( unsigned int tileMap, unsigned char x, unsigned char y, bool flip )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	unsigned int idx;
	unsigned int val;
	unsigned char row, col, tmp;
	const unsigned char w = 8;
	const unsigned char h = 3;

	for( row = 0; row < h; row++ )
	{
		for( col = 0; col < w; col++ )
		{
			tmp = flip ? ( w - col - 1 ) : col;
			idx = tileMap + row * 2 * TILMAP_WIDE + col * 2;
			val = tiles[ idx ];
			if( flip )
			{
				// TODO - do I want to do this or pass unsigned int??
				val |= flippedX;
			}

			devkit_SMS_setNextTileatXY( x + tmp, y + row );
			devkit_SMS_setTile( ( val ) );
		}
	}
}
//todo delete this code - not used
//void engine_tile_manager_stevepro( unsigned int tileMap, unsigned char x, unsigned char y, unsigned char w, unsigned char h )
//{
//	const unsigned char *tiles = bggame_tiles__tilemap__bin;
//	unsigned int idx;
//	unsigned int val;
//	unsigned char row, col;
//
//	for( row = 0; row < h; row++ )
//	{
//		for( col = 0; col < w; col++ )
//		{
//			idx = tileMap + row * 2 * TILMAP_WIDE + col * 2;
//			val = tiles[ idx ];
//			devkit_SMS_setNextTileatXY( x + col, y + row );
//			devkit_SMS_setTile( ( val ) );
//		}
//	}
//}
////todo delete this code - not used
//void engine_tile_manager_stevepro2( unsigned int tileMap, unsigned char x, unsigned char y, unsigned char w, unsigned char h )
//{
//	const unsigned char *tiles = bggame_tiles__tilemap__bin;
//	unsigned int idx;
//	unsigned int val;
//	unsigned char row, col, tmp;
//
//	for( row = 0; row < h; row++ )
//	{
//		for( col = 0; col < w; col++ )
//		{
//			tmp = w - col - 1;
//			idx = tileMap + row * 2 * TILMAP_WIDE + col * 2;
//			val = tiles[ idx ];
//			val |= devkit_TILE_FLIPPED_X();
//			devkit_SMS_setNextTileatXY( x + tmp, y + row );
//			devkit_SMS_setTile( ( val ) );
//		}
//	}
//}
//void engine_tile_manager_stevepro3( unsigned int tileMap, unsigned char x, unsigned char y, unsigned char w, unsigned char h )
//{
//	const unsigned char *tiles = bggame_tiles__tilemap__bin;
//	unsigned int idx;
//	unsigned int val;
//	unsigned char row, col, tmp;
//
//	//unsigned char x, y;
//	//unsigned char size, w, h;
//	//size = 24;
//	//w = 24;
//	//h = 3;
//	//x = 0;
//	//y = 0;
//
//	for( row = 0; row < h; row++ )
//	{
//		for( col = 0; col < w; col++ )
//		{
//			tmp = h - row;
//			idx = tileMap + row * 2 * TILMAP_WIDE + col * 2;
//			val = tiles[ idx ];
//			val |= devkit_TILE_FLIPPED_Y();
//			devkit_SMS_setNextTileatXY( x + col, y + tmp );
//			devkit_SMS_setTile( ( val ) );
//		}
//	}
//}

/*
//void engine_tile_manager_draw_columns( unsigned char tile_type, unsigned char col, unsigned char x, bool flip )
void engine_tile_manager_draw_columns( unsigned char tile_type, unsigned char x, unsigned char y, unsigned char col, bool flip )
{
	//const unsigned char *tiles = bggame_tiles__tilemap__bin;
	//struct_tile_object *to = &global_tile_objects[ tile_type ];

	//unsigned int idx;
	//unsigned int val;
	//unsigned char row;

	//for( row = 0; row < to->tile_high; row++ )
	//{
	//	idx = to->tilemap_index + row * 2 * TILMAP_WIDE + col * 2;
	//	val = tiles[ idx ];
	//	if( flip )
	//	{
	//		val |= devkit_TILE_FLIPPED_X();
	//	}

	//	devkit_SMS_setNextTileatXY( x, y + row );
	//	devkit_SMS_setTile( val );
	//}
}

void engine_tile_manager_draw( unsigned char tile_type )
{
	//const unsigned char *tiles = bggame_tiles__tilemap__bin;
	//struct_tile_object *to = &global_tile_objects[ tile_type ];

	//unsigned int idx;
	//unsigned int val;
	//unsigned char row, col;

	//unsigned x, y;
	//x = 14;
	//y = 10;


	//for( row = 0; row < to->tile_high; row++ )
	//{
	//	for( col = 0; col < to->tile_wide; col++ )
	//	{
	//		idx = to->tilemap_index + row * 2 * TILMAP_WIDE + col * 2;
	//		val = tiles[ idx ];
	//		devkit_SMS_setNextTileatXY( x + col, y + row );
	//		devkit_SMS_setTile( val );
	//	}
	//}
}

void engine_tile_manager_clouds()
{
	//engine_tile_manager_gfx5( 928, 1, 4, 6, 3 );
	////engine_tile_manager_gfx5( 928, 2, 4, 6, 3 );
	//engine_tile_manager_gfx5( 1024, 10, 5, 4, 3 );
	//engine_tile_manager_gfx5( 928, 18, 4, 6, 3 );
	//engine_tile_manager_gfx5( 1024, 26, 5, 4, 3 );
}
void engine_tile_manager_island()
{
	//engine_tile_manager_gfx5( 480, 1, 18, 8, 4 );
}
void engine_tile_manager_tree()
{
	//engine_tile_manager_gfx5( 608, 2, 8, 8, 10 );
}
void engine_tile_manager_bridge()
{
	//engine_tile_manager_gfx5( 160, 1, 12, 8, 10 );		// Tall bridge
}
void engine_tile_manager_turtle()
{
	//engine_tile_manager_gfx5( 1120, 12, 15, 4, 3 );		// Flying turtle
	//engine_tile_manager_gfx5( 1216, 12, 15, 4, 3 );		// Hover  turtle
}
void engine_tile_manager_sign()
{
	//engine_tile_manager_gfx5( 1312, 4, 15, 3, 3 );		// sign
	//engine_tile_manager_gfx5( 1408, 4, 15, 3, 3 );		// goal
}

void engine_tile_manager_gfx5( unsigned int tmp, unsigned char x, unsigned char y, unsigned char w, unsigned char h )
{
	//const unsigned char *tiles = bggame_tiles__tilemap__bin;
	//const unsigned size = 16;

	//unsigned int idx;
	//unsigned int val;
	//unsigned char row, col;

	//for( row = 0; row < h; row++ )
	//{
	//	for( col = 0; col < w; col++ )
	//	{
	//		idx = tmp + row * 2 * size + col * 2;
	//		val = tiles[ idx ];
	//		devkit_SMS_setNextTileatXY( x + col, y + row );
	//		devkit_SMS_setTile( ( val ) );
	//	}
	//}
}

void engine_tile_manager_gfx4( unsigned int tmp, unsigned char h )
{
	//const unsigned char *tiles = bggame_tiles__tilemap__bin;
	//unsigned int idx;
	//unsigned int val;
	//unsigned char row, col;

	//unsigned x, y;
	//unsigned w, h;
	//w = 16;
	////h = 10;
	//x = 18;
	//y = 12;

	//for( row = 0; row < h; row++ )
	//{
	//	for( col = 0; col < w; col++ )
	//	{
	//		idx = tmp + row * 2 * w + col * 2;
	//		val = tiles[ idx ];
	//		devkit_SMS_setNextTileatXY( x + col, y + row );
	//		devkit_SMS_setTile( ( val ) );
	//	}
	//}
//}

void engine_tile_manager_gfx2( unsigned char tmp )
{
	//const unsigned char *tiles = bggame_tiles__tilemap__bin;
	//unsigned int idx;
	//unsigned int val;
	//unsigned char row, col;

	//unsigned x, y;
	//unsigned w, h;
	//w = 16;
	//h = 10;
	//x = 18;
	//y = 12;

	//for( row = 0; row < h; row++ )
	//{
	//	for( col = 0; col < w; col++ )
	//	{
	//		idx = tmp + row * 2 * w + col * 2;
	//		val = tiles[ idx ];
	//		devkit_SMS_setNextTileatXY( x + col, y + row );
	//		devkit_SMS_setTile( ( val ) );
	//	}
	//}
}

void engine_tile_manager_gfx3( unsigned char tmp, unsigned char x, unsigned char col )
{
	//const unsigned char *tiles = bggame_tiles__tilemap__bin;
	//unsigned int idx;
	//unsigned int val;
	//unsigned char row, col;

	//unsigned x,y;
	//unsigned w, h;
	//w = 16;
	//h = 10;
	//y = 12;

	//for( row = 0; row < h; row++ )
	//{
	//	//for( col = 0; col < w; col++ )
	//	//{
	//		idx = tmp + row * 2 * w + col * 2;
	//		val = tiles[ idx ];
	//		val = val | devkit_TILE_FLIPPED_X();
	//		devkit_SMS_setNextTileatXY( x, y + row );		// IMPORTANT x not plus col now
	//		devkit_SMS_setTile( ( val ) );
	//	//}
	//}
//}

void engine_tile_manager_gfx2_hack( unsigned char tmp )
{
	//const unsigned char *tiles = bggame_tiles__tilemap__bin;
	//unsigned int idx;
	//unsigned int val;
	//unsigned char row, col;

	//unsigned x, y;
	//unsigned w, h;
	//w = 16;
	////h = 5;
	//h = 10;
	//x = 18;
	//y = 12;

	////HACK to show small bridge - TODO would need to do this "properly"..!!
	//for( row = 0; row < h; row++ )
	//{
	//	for( col = 0; col < w; col++ )
	//	{
	//		if( row >= 5 && row < 9 )
	//		{
	//			continue;
	//		}
	//		idx = tmp + row * 2 * w + col * 2;
	//		val = tiles[ idx ];
	//		if( 9 == row )
	//		{
	//			devkit_SMS_setNextTileatXY( x + col, y + 5 );
	//			devkit_SMS_setTile( ( val ) );
	//		}
	//		else
	//		{
	//			devkit_SMS_setNextTileatXY( x + col, y + row );
	//			devkit_SMS_setTile( ( val ) );
	//		}
	//	}
	//}
}

void engine_tile_manager_gfx()
{
	//const unsigned char *tiles = bggame_tiles__tilemap__bin;
	//unsigned int idx;
	//unsigned int val;
	//unsigned char row, col;

	//unsigned x, y;
	//unsigned w, h;
	//w = 9;
	//h = 10;
	//x = 8;
	//y = 4;

	//for( row = 0; row < h; row++ )
	//{
	//	for( col = 0; col < w; col++ )
	//	{
	//		idx = row * 2 * w + col * 2;
	//		val = tiles[ idx ];
	//		devkit_SMS_setNextTileatXY( x + col, y + row );
	//		devkit_SMS_setTile( ( val ) );
	//	}
	//}
}

void engine_tile_manager_sky()
{
	//const unsigned char *tiles = bggame_tiles__tilemap__bin;
	//unsigned int idx;
	//unsigned int val;
	//unsigned char row, col, tmp;

	//tmp = 64;
	//tmp *= 2;
	//idx = tmp + 0 * 2 * 1 + 0 * 2;
	//val = tiles[ idx ];
	//for( row = 3; row < 21; row++ )
	//{
	//	for( col = 0; col < 32; col++ )
	//	{
	//		devkit_SMS_setNextTileatXY( col, row );
	//		devkit_SMS_setTile( ( val ) );
	//	}
	//}
}

static void draw_see_line( unsigned char *sea_line, unsigned char x, unsigned char y )
{
	//const unsigned char *tiles = bggame_tiles__tilemap__bin;
	//const unsigned size = 16;
	//unsigned char elem, tile;

	//unsigned int idx, val;
	//unsigned char row, col, bse, tmp;

	//idx = 0;
	//col = 0;
	//row = 0;
	//bse = 64;
	//tmp = bse * 2;
	//for( elem = 0; elem < 4; elem++ )
	//{
	//	tile = sea_line[ elem ];
	//	col = tile - bse;
	//	idx = tmp + row * 2 * size + col * 2;
	//	val = tiles[ idx ];

	//	devkit_SMS_setNextTileatXY( x, y );
	//	devkit_SMS_setTile( ( val ) );
	//	x++;
	//}
}

void engine_tile_manager_sea()
{
	//unsigned char sea_line1[] = { 66, 66, 67, 68, };
	//unsigned char sea_line2[] = { 65, 65, 65, 73, };
	//unsigned char sea_line3[] = { 65, 71, 72, 65, };
	//unsigned char x = 0;

	//for( x = 0; x < 32; x += 4 )
	//{
	//	draw_see_line( sea_line1, x, 21 );
	//	draw_see_line( sea_line2, x, 22 );
	//	draw_see_line( sea_line3, x, 23 );
	//}
}
*/
