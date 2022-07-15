#include "player_manager.h"
#include "global_manager.h"
#include "gfx.h"

#ifdef _CONSOLE
#include "_genesis.h"
#else
#include <genesis.h>
#endif

void engine_player_manager_draw_inventory( unsigned char weapon, unsigned char armor, unsigned char life, unsigned char x, unsigned char y )
{
	const unsigned char wide = 2;
	const unsigned char high = 2;

	//const unsigned char weapon = 2;
	//const unsigned char armor = 0;
	//const unsigned char life = 1;

	// TODO global_manager
	//const unsigned int index = 288;

	u16 basetile = TILE_ATTR_FULL( PAL0, 0, 0, 0, ITEMS_TILES );

	// Weapon
	//VDP_setTileMapEx( BG_A, gfx_stats_items.tilemap, TILE_ATTR_FULL( PAL0, 0, 0, 0, ITEMS_TILES ), x, y, 0, 0 * high + weapon * high, wide, high, CPU );
	VDP_setTileMapEx( BG_A, gfx_stats_items.tilemap, basetile, x + 0, y + 1, 0, 0 * high + weapon * high, wide, high, CPU );

	// Armor
	//VDP_setTileMapEx( BG_A, gfx_stats_items.tilemap, TILE_ATTR_FULL( PAL0, 0, 0, 0, ITEMS_TILES ), x, y, 0, NUM_WEAPONS * high + armor * high, wide, high, CPU );
	VDP_setTileMapEx( BG_A, gfx_stats_items.tilemap, basetile, x + 6, y + 3, 0, NUM_WEAPONS * high + armor * high, wide, high, CPU );

	if( life )
	{
		//VDP_setTileMapEx( BG_A, gfx_stats_items.tilemap, TILE_ATTR_FULL( PAL0, 0, 0, 0, index ), x + 1, y + 6, 0, ( NUM_WEAPONS + NUM_ARMORS )* high, wide, high, CPU );
		VDP_setTileMapEx( BG_A, gfx_stats_items.tilemap, basetile, x + 1, y + 6, 0, ( NUM_WEAPONS + NUM_ARMORS )* high, wide, high, CPU );
	}
}

void engine_player_manager_draw( unsigned char x, unsigned char y )
{
	const unsigned char wide = 3;
	const unsigned char high = 4;

	const unsigned char weapon = 1;
	const unsigned char armor = 1;

	const unsigned int index = 1;

	VDP_setTileMapEx( BG_A, gfx_battle_player.tilemap, TILE_ATTR_FULL( PAL0, 0, 0, 0, index ), x, y, weapon * wide, armor * high, wide, high, CPU );
}
