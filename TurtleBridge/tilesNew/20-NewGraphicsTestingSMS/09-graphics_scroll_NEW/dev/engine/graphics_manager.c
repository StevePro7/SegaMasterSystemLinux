#include "graphics_manager.h"
#include "global_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

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

	// Original data - new data is 2x tiles offset!
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

//void engine_graphics_manager_seaX( unsigned char x )
//{
//	engine_tile_manager_stevepro( 128, x + 0, 21, 1, 1 );
//	engine_tile_manager_stevepro( 128, x + 1, 21, 1, 1 );
//	engine_tile_manager_stevepro( 130, x + 2, 21, 1, 1 );
//	engine_tile_manager_stevepro( 132, x + 3, 21, 1, 1 );
//
//	engine_tile_manager_stevepro( 126, x + 0, 22, 1, 1 );
//	engine_tile_manager_stevepro( 126, x + 1, 22, 1, 1 );
//	engine_tile_manager_stevepro( 126, x + 2, 22, 1, 1 );
//	engine_tile_manager_stevepro( 142, x + 3, 22, 1, 1 );
//
//	engine_tile_manager_stevepro( 126, x + 0, 23, 1, 1 );
//	engine_tile_manager_stevepro( 138, x + 1, 23, 1, 1 );
//	engine_tile_manager_stevepro( 140, x + 2, 23, 1, 1 );
//	engine_tile_manager_stevepro( 126, x + 3, 23, 1, 1 );
//}