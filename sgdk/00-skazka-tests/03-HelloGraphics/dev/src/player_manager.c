#include "player_manager.h"
#include "global_manager.h"
#include "resources.h"

//void engine_player_manager_draw_inventory( unsigned char x, unsigned char y )
//{
	//const unsigned char *pnt1 = stats_items__tilemap__bin;
	//const unsigned char *pnt2 = stats_inventory__tilemap__bin;

	//struct_player_object *po = &global_player_object;
	//unsigned char delta = 2;
	//unsigned char size = delta * delta;

	//unsigned char wide = 8;
	//unsigned char high = 8;
	//unsigned char i, j;

	//unsigned int tile = 0;
	//for( j = 0; j < high; j++ )
	//{
	//	for( i = 0; i < wide; i++ )
	//	{
	//		devkit_SMS_setNextTileatXY( x + i, y + j );
	//		devkit_SMS_setTile( *pnt1 + tile );
	//		tile++;
	//	}
	//}

	//tile = po->weapon * size;
	//for( j = 0; j < delta; j++ )
	//{
	//	for( i = 0; i < delta; i++ )
	//	{
	//		devkit_SMS_setNextTileatXY( x + i, y + j + 1 );
	//		devkit_SMS_setTile( *pnt2 + tile );
	//		tile++;
	//	}
	//}
	//if( po->armor )
	//{
	//	tile = 2 * size + po->armor * size;
	//	for( j = 0; j < delta; j++ )
	//	{
	//		for( i = 0; i < delta; i++ )
	//		{
	//			devkit_SMS_setNextTileatXY( x + i + 6, y + j + 3 );
	//			devkit_SMS_setTile( *pnt2 + tile );
	//			tile++;
	//		}
	//	}
	//}
	//if( po->life )
	//{
	//	tile = 4 * size + po->life * size;
	//	for( j = 0; j < 2; j++ )
	//	{
	//		for( i = 0; i < 2; i++ )
	//		{
	//			devkit_SMS_setNextTileatXY( x + i + 1, y + j + 6 );
	//			devkit_SMS_setTile( *pnt2 + tile );
	//			tile++;
	//		}
	//	}
	//}
//}

void engine_player_manager_draw( unsigned char x, unsigned char y )
{
	//const unsigned char wide = 3;
	//const unsigned char high = 4;

	//const unsigned char armor = 0;
	//const unsigned char weapon = 0;

	//const unsigned char start = ( armor * 36 ) + ( weapon * 3 );
	//unsigned char index = 0;
	//unsigned char value = 0;
	unsigned int tile = 0;
	//unsigned char i, j;

	//for( j = 0; j < high; j++ )
	//{
	//	for( i = 0; i < wide; i++ )
	//	{
	//		tile = ( j * 9 ) + i + start;
	//		VDP_setMapEx( BG_A, gfx_battle_player.tilemap, TILE_ATTR_FULL( PAL0, FALSE, FALSE, FALSE, 0 ), x+i, y+j, tile, 0, 1, 1 );
	//	}
	//}

	//tile = 0;	VDP_setMapEx( BG_A, gfx_battle_player.tilemap, TILE_ATTR_FULL( PAL0, FALSE, FALSE, FALSE, 0 ), x + 0, y + 0, tile, 0, 1, 1 );
	//tile = 1;	VDP_setMapEx( BG_A, gfx_battle_player.tilemap, TILE_ATTR_FULL( PAL0, FALSE, FALSE, FALSE, 0 ), x + 1, y + 0, tile, 0, 1, 1 );
	//tile = 2;	VDP_setMapEx( BG_A, gfx_battle_player.tilemap, TILE_ATTR_FULL( PAL0, FALSE, FALSE, FALSE, 0 ), x + 2, y + 0, tile, 0, 1, 1 );
	//tile = 3;	VDP_setMapEx( BG_A, gfx_battle_player.tilemap, TILE_ATTR_FULL( PAL0, FALSE, FALSE, FALSE, 0 ), x + 3, y + 0, tile, 0, 1, 1 );
	//tile = 4;	VDP_setMapEx( BG_A, gfx_battle_player.tilemap, TILE_ATTR_FULL( PAL0, FALSE, FALSE, FALSE, 0 ), x + 4, y + 0, tile, 0, 1, 1 );

	VDP_setTileMapEx( BG_A, gfx_battle_player.tilemap, TILE_ATTR_FULL( PAL0, FALSE, FALSE, FALSE, 1 ), x, y, 0, 0, 3, 4, CPU );
}
