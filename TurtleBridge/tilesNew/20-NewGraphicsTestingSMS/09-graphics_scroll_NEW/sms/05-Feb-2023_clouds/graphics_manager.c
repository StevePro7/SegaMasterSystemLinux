#include "graphics_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

#define CLOUD_ROW_START		4
#define CLOUD_COL_START		1
#define CLOUD_COL_WIDES		8

void engine_graphics_manager_level()
{
	engine_graphics_manager_title();
	//engine_graphics_manager_clouds();
	engine_graphics_manager_sea();
}

void engine_graphics_manager_clouds( unsigned char data )
{
	unsigned int cloud_tile_type[] = { TILE_CLOUD_LARGE , TILE_CLOUD_SMALL };
	//unsigned char byte, bit;
	unsigned char result;
	unsigned char height;
	//unsigned char flip;
	unsigned char flip1, flip2;

	flip2 = ( data >> 0 ) & 0x01;
	flip1 = ( data >> 1 ) & 0x01;
	height = ( data >> 2 ) & 0x01;
	result = ( data >> 3 ) & 0x01;
	//if( cloud_type_large == result )
	//{
	//	engine_tile_manager_draw_cloud( cloud_tile_type[ cloud_type_large ], CLOUD_COL_START + 2 * CLOUD_COL_WIDES, CLOUD_ROW_START + 1, flip1 );
	//	engine_tile_manager_draw_cloud( cloud_tile_type[ cloud_type_small ], CLOUD_COL_START + 3 * CLOUD_COL_WIDES, CLOUD_ROW_START + height, flip2 );
	//}
	//else
	//{
	//	engine_tile_manager_draw_cloud( cloud_tile_type[ cloud_type_small ], CLOUD_COL_START + 2 * CLOUD_COL_WIDES, CLOUD_ROW_START + height, flip1 );
	//	engine_tile_manager_draw_cloud( cloud_tile_type[ cloud_type_large ], CLOUD_COL_START + 3 * CLOUD_COL_WIDES, CLOUD_ROW_START + 1, flip2 );
	//}


	result = ( data >> 7 ) & 0x01;
	height = ( data >> 6 ) & 0x01;
	flip1 = ( data >> 5 ) & 0x01;
	flip2 = ( data >> 4 ) & 0x01;
	//flip2 = 0;
//	engine_font_manager_data( flip1, 10, 10 );
//	engine_font_manager_data( flip2, 10, 11 );
	if( cloud_type_large == result )
	{
		engine_tile_manager_draw_cloud( cloud_tile_type[ cloud_type_large ], CLOUD_COL_START + 0 * CLOUD_COL_WIDES, CLOUD_ROW_START + 1, flip1 );
		engine_tile_manager_draw_cloud( cloud_tile_type[ cloud_type_small ], CLOUD_COL_START + 1 * CLOUD_COL_WIDES, CLOUD_ROW_START + height, flip2 );
	}
	else
	{
		engine_tile_manager_draw_cloud( cloud_tile_type[ cloud_type_small ], CLOUD_COL_START + 0 * CLOUD_COL_WIDES, CLOUD_ROW_START + height, flip1 );
		engine_tile_manager_draw_cloud( cloud_tile_type[ cloud_type_large ], CLOUD_COL_START + 1 * CLOUD_COL_WIDES, CLOUD_ROW_START + 1, flip2 );
	}
//



	//result = cloud_type_small;
	//engine_tile_manager_draw_cloud( cloud_tile_type[ result ], CLOUD_COL_START + 2 * CLOUD_COL_WIDES, CLOUD_ROW_START + height, 0 );
	//engine_tile_manager_draw_cloud( cloud_tile_type[ result ], CLOUD_COL_START + 3 * CLOUD_COL_WIDES, CLOUD_ROW_START + height, 1 );
	/*result = ( data >> 7 ) & 0x01;
	if( cloud_type_large == result )
	{
		height = 1;
		result = ( data >> 3 ) & 0x01;
		if( result )
		{
			engine_tile_manager_stevepro( TILE_CLOUD_LARGE, CLOUD_COL_START + 0 * 4, CLOUD_ROW_START + height, 8, 3 );
		}
		else
		{
			engine_tile_manager_stevepro2( TILE_CLOUD_LARGE, CLOUD_COL_START + 0 * 4, CLOUD_ROW_START + height, 8, 3 );
		}
	}
	else
	{
		height = ( data >> 6 ) & 0x01;
		result = ( data >> 2 ) & 0x01;
		if( result )
		{
			engine_tile_manager_stevepro( TILE_CLOUD_SMALL, CLOUD_COL_START + 0 * 4, CLOUD_ROW_START + height, 8, 3 );
		}
		else
		{
			engine_tile_manager_stevepro2( TILE_CLOUD_SMALL, CLOUD_COL_START + 0 * 4, CLOUD_ROW_START + height, 8, 3 );
		}
	}*/
	/*engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 1, 5, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 9, 5, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 17, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 25, 5, 8, 3 );*/
}
void engine_graphics_manager_cloud()
{
	engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 1, 5, 8, 3 );
	engine_tile_manager_stevepro2( TILE_CLOUD_LARGE, 17, 5, 8, 3 );
	engine_tile_manager_stevepro2( TILE_CLOUD_SMALL, 9, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 25, 5, 8, 3 );
}
void engine_graphics_manager_title()
{
	engine_graphics_manager_image( bggame_tiles__tilemap__bin, TILE_PLAY_TITLE, 4, 0, 24, 3 );
}

void engine_graphics_manager_image( const unsigned char *tiles, unsigned int tileMap, unsigned char x, unsigned char y, unsigned char w, unsigned char h )
{
	unsigned int idx;
	unsigned int val;
	unsigned char row, col;

	for( row = 0; row < h; row++ )
	{
		for( col = 0; col < w; col++ )
		{
			idx = tileMap + row * 2 * TILMAP_WIDE + col * 2;
			val = tiles[ idx ];
			devkit_SMS_setNextTileatXY( x + col, y + row );
			devkit_SMS_setTile( ( val ) );
		}
	}
}

// NOTES
/*
OLD
unsigned char sea_line1[] = { 66, 66, 67, 68, };
unsigned char sea_line2[] = { 65, 65, 65, 73, };
unsigned char sea_line3[] = { 65, 71, 72, 65, };


Z			116
black			120

skyblue0	64	124
blue1		65	126	60
wave2		66	128	61
wave3		67	130	62
wave4		68	132	63
wave5		69	134	64
wave6		70	136	65
wave7		71	138	66
wave8		72	140	67
wave9		73	142	68

white		2920		191
*/
void engine_graphics_manager_sea()
{
	// TODO -call API in tile mgr
	const unsigned char *tiles = bggame_tiles__tilemap__bin;

	//TODO fixed bank this
	unsigned char row, col;
	unsigned char x, y;
	unsigned char tileIdx, tileMap;
	unsigned int idx, val;

	// Original data - new data is 2x tiles offset

	// TODO use TILE_SEA as offset here!
	unsigned char sea_lines[] =
	{
		66, 66, 67, 68,
		65, 65, 65, 73,
		65, 71, 72, 65,
	};

	for( row = 0; row < OCEANS_HIGH; row++ )
	{
		y = 21 + row;
		//x = 0;
		for( x = 0; x < SCREEN_WIDE; x += 4 )
		{

			for( col = 0; col < TILE_STRIP; col++ )
			{
				tileIdx = row * TILE_STRIP + col;
				tileMap = sea_lines[ tileIdx ];
				tileMap -= 2;
				tileMap *= 2;

				idx = tileMap;// +0 * 2 * TILMAP_WIDE + 0 * 2;
				val = tiles[ idx ];
				devkit_SMS_setNextTileatXY( x + col, y + 0 );
				devkit_SMS_setTile( ( val ) );
			}
		}
	}
}
