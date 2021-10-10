#include "enemy_manager.h"
#include "enum_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"

// Global variables.
struct_enemy_object global_enemy_objects[ MAX_ENEMIES ];

static void construction( unsigned char idx, unsigned char x, unsigned char y, unsigned int base );
static void calculate_tile( unsigned char idx );

// todo delay is currently hard coded at 75!
void engine_enemy_manager_load()
{
	unsigned char idx;

	construction( enemy_pro, 160, 144, 16 );
	construction( enemy_adi, 48, 144, 32 );
	construction( enemy_suz, 160, 32, 48 );

	for( idx = 0; idx < MAX_ENEMIES; idx++ )
	{
		calculate_tile( idx );
	}
}

void engine_enemy_manager_draw()
{
	struct_enemy_object *eo;
	unsigned char idx;

	for( idx = 0; idx < MAX_ENEMIES; idx++ )
	{
		eo = &global_enemy_objects[ idx ];
		engine_sprite_manager_draw( eo->enemyX, eo->enemyY, eo->tile );
	}
}

static void construction( unsigned char idx, unsigned char x, unsigned char y, unsigned int base )
{
	struct_enemy_object *eo = &global_enemy_objects[ idx ];

	eo->index = idx;
	eo->enemyX = x;
	eo->enemyY = y;
	eo->color = 0;
	eo->frame = 0;
	eo->base = SPRITE_TILES + base;
}
static void calculate_tile( unsigned char idx )
{
	struct_enemy_object *eo = &global_enemy_objects[ idx ];
	eo->tile = eo->base + ( ( eo->color * 2 ) + eo->frame ) * 2;
}