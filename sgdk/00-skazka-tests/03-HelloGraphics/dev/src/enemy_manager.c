#include "enemy_manager.h"
#include "global_manager.h"
#include "gfx.h"

#ifdef _CONSOLE
#include "_genesis.h"
#else
#include <genesis.h>
#endif

static void draw_enemy( unsigned char enemy, unsigned char x, unsigned char y );
//static void draw_leshy( unsigned char x, unsigned char y )

void engine_enemy_manager_draw( unsigned char x, unsigned char y )
{
	draw_enemy( 2,x,y );
}

static void draw_enemy( unsigned char enemy, unsigned char x, unsigned char y )
{
	const unsigned char wide = 3;
	const unsigned char high = 4;

	// TODO global_manager
	const unsigned int index = 256;
	VDP_setTileMapEx( BG_A, gfx_battle_enemies.tilemap, TILE_ATTR_FULL( PAL0, 0, 0, 0, index ), x, y, 0, enemy * high, wide, high, CPU );
}
//static void draw_leshy( unsigned char x, unsigned char y )
//{
//
//}
