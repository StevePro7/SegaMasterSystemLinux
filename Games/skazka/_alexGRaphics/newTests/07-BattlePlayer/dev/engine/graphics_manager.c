#include "graphics_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"
#include "../banks/bank2.h"

// battle_player_array : 9 x 12 = 108
//const unsigned char array[] =
//{
//	0,1,2,3,1,2,4,1,2,
//	5,6,7,8,6,7,9,6,7,
//	0,10,11,0,10,11,0,10,11,
//	0,12,13,0,12,13,0,12,13,
//	0,14,15,3,14,15,4,14,15,
//	16,17,18,19,17,18,20,17,18,
//	0,21,22,0,21,22,0,21,22,
//	0,12,13,0,12,13,0,12,13,
//	0,23,24,3,23,24,4,23,24,
//	25,26,27,28,26,27,29,26,27,
//	0,30,31,0,30,31,0,30,31,
//	0,12,13,0,12,13,0,12,13,
//};

void engine_graphics_manager_draw_battle_player( unsigned char x, unsigned char y, unsigned char w, unsigned char a )
{
	//const unsigned char *pnt = battle_player__tilemap__bin;
	const unsigned char wide = 3;
	const unsigned char high = 4;

	const unsigned char start = ( a * 36 ) + ( w * 3 );
	unsigned char index = 0;
	unsigned char value = 0;
	unsigned int tile = 0;
	unsigned char i, j;

	for( j = 0; j < high; j++ )
	{
		for( i = 0; i < wide; i++ )
		{
			index = ( j * 9 ) + i + start;
			value = index * 2;
			tile = battle_player__tilemap__bin[ value ];
			//tile -= PLAYER_TILES;
			devkit_SMS_setNextTileatXY( x + i, y + j );
			//devkit_SMS_setTile( *pnt + tile );
			devkit_SMS_setTile( tile );
		}
	}
}

//void engine_graphics_manager_draw_battle_player1( unsigned char x, unsigned char y )
//{
//	const unsigned char *pnt = battle_player__tilemap__bin;
//	devkit_SMS_setNextTileatXY( x + 0, y + 0 );
//	devkit_SMS_setTile( *pnt + 0 );
//	devkit_SMS_setNextTileatXY( x + 1, y + 0 );
//	devkit_SMS_setTile( *pnt + 1 );
//	devkit_SMS_setNextTileatXY( x + 2, y + 0 );
//	devkit_SMS_setTile( *pnt + 2 );
//
//	devkit_SMS_setNextTileatXY( x + 0, y + 1 );
//	devkit_SMS_setTile( *pnt + 5 );
//	devkit_SMS_setNextTileatXY( x + 1, y + 1 );
//	devkit_SMS_setTile( *pnt + 6 );
//	devkit_SMS_setNextTileatXY( x + 2, y + 1 );
//	devkit_SMS_setTile( *pnt + 7 );
//
//	devkit_SMS_setNextTileatXY( x + 0, y + 2 );
//	devkit_SMS_setTile( *pnt + 0 );
//	devkit_SMS_setNextTileatXY( x + 1, y + 2 );
//	devkit_SMS_setTile( *pnt + 10 );
//	devkit_SMS_setNextTileatXY( x + 2, y + 2 );
//	devkit_SMS_setTile( *pnt + 11 );
//
//	devkit_SMS_setNextTileatXY( x + 0, y + 3 );
//	devkit_SMS_setTile( *pnt + 0 );
//	devkit_SMS_setNextTileatXY( x + 1, y + 3 );
//	devkit_SMS_setTile( *pnt + 12 );
//	devkit_SMS_setNextTileatXY( x + 2, y + 3 );
//	devkit_SMS_setTile( *pnt + 13 );
//}

void engine_graphics_manager_draw_border()
{
	const unsigned char *pnt = border__tilemap__bin;
	unsigned char idx;

	devkit_SMS_setNextTileatXY( 0, 0 ); devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( TILES_WIDTH - 1, 0 ); devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( 0, TILES_HEIGHT - 1 ); devkit_SMS_setTile( *pnt + 0 );
	devkit_SMS_setNextTileatXY( TILES_WIDTH - 1, TILES_HEIGHT - 1 ); devkit_SMS_setTile( *pnt + 0 );

	// Vertical.
	for( idx = 1; idx <= TILES_HEIGHT - 2; idx++ )
	{
		devkit_SMS_setNextTileatXY( 0, idx ); devkit_SMS_setTile( *pnt + 1 );
		devkit_SMS_setNextTileatXY( TILES_WIDTH - 1, idx ); devkit_SMS_setTile( *pnt + 1 );
	}
	// Horizontal.
	for( idx = 1; idx <= TILES_WIDTH - 2; idx++ )
	{
		devkit_SMS_setNextTileatXY( idx, 0 ); devkit_SMS_setTile( *pnt + 2 );
		devkit_SMS_setNextTileatXY( idx, TILES_HEIGHT - 1 ); devkit_SMS_setTile( *pnt + 2 );
	}
}

void engine_graphics_manager_draw_logo_big( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = logo_big__tilemap__bin;
	const unsigned char wide = 28;
	const unsigned char high = 5;
	unsigned char i, j;

	unsigned int tile = 0;
	for( j = 0; j < high; j++ )
	{
		for( i = 0; i < wide; i++ )
		{
			devkit_SMS_setNextTileatXY( x + i, y + j );
			devkit_SMS_setTile( *pnt + tile );
			tile++;
		}
	}
}

void engine_graphics_manager_draw_koschey( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = koschey__tilemap__bin;
	const unsigned char wide = 12;
	const unsigned char high = 15;
	unsigned char i, j;
	unsigned char idx = 0;

	unsigned int tile = 0;
	unsigned int palette = devkit_TILE_USE_SPRITE_PALETTE();
	for( j = 0; j < high; j++ )
	{
		for( i = 0; i < wide; i++ )
		{
			tile = ( SPRITE_TILES + idx) | palette;
			devkit_SMS_setNextTileatXY( x + i, y + j );
			devkit_SMS_setTile( *pnt + tile );
			idx++;
		}
	}
}

void engine_graphics_manager_draw_leshy( unsigned char x, unsigned char y )
{
	const unsigned char *pnt = battle_enemies_leshy__tilemap__bin;
	const unsigned char wide = 3;
	const unsigned char high = 4;
	unsigned char i, j;
	unsigned char idx = 0;

	unsigned int tile = 0;
	unsigned int palette = devkit_TILE_USE_SPRITE_PALETTE();
	for( j = 0; j < high; j++ )
	{
		for( i = 0; i < wide; i++ )
		{
			tile = ( SPRITE_TILES + idx ) | palette;
			devkit_SMS_setNextTileatXY( x + i, y + j );
			devkit_SMS_setTile( *pnt + tile );
			idx++;
		}
	}
}