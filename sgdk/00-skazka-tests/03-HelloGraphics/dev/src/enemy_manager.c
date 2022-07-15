#include "enemy_manager.h"
#include "global_manager.h"
#include "gfx.h"

#ifdef _CONSOLE
#include "_genesis.h"
#else
#include <genesis.h>
#endif

static void draw_enemy( unsigned char enemy, unsigned char x, unsigned char y );
static void draw_leshy( unsigned char x, unsigned char y );

void engine_enemy_manager_draw( unsigned char enemy, unsigned char x, unsigned char y )
{
	// TODO update enum
	//if( enemy_type_leshy != eo->index )
	if( 3 != enemy )
	{
		draw_enemy( enemy, x, y );
	}
	else
	{
		draw_leshy( x, y );
		//draw_enemy( enemy, x, y );
	}
}

static void draw_enemy( unsigned char enemy, unsigned char x, unsigned char y )
{
	const unsigned char wide = 3;
	const unsigned char high = 4;

	u16 basetile = TILE_ATTR_FULL( PAL0, 0, 0, 0, ENEMY_TILES );
	VDP_setTileMapEx( BG_A, gfx_battle_enemies.tilemap, basetile, x, y, 0, enemy * high, wide, high, CPU );
}

static void draw_leshy( unsigned char x, unsigned char y )
{
	const unsigned char wide = 3;
	const unsigned char high = 4;

	u16 basetile = TILE_ATTR_FULL( PAL1, 0, 0, 0, LESHY_TILES );
	VDP_setTileMapEx( BG_A, gfx_battle_enemies_leshy.tilemap, basetile, x, y, 0, 0, wide, high, CPU );
}
