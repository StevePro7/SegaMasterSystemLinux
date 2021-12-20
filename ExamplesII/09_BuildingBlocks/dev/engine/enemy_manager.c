#include "enemy_manager.h"
#include "enum_manager.h"
#include "hack_manager.h"
#include "input_manager.h"
#include "global_manager.h"
#include "sprite_manager.h"

// Global variables.
struct_enemy_object global_enemy_objects[ MAX_ENEMIES ];

static void construction( unsigned char idx, unsigned char x, unsigned char y, unsigned char delay, unsigned int base );
static void toggle_color( unsigned char idx );
static void toggle_frame( unsigned char idx );
static void calculate_tile( unsigned char idx );

void engine_enemy_manager_load()
{
	struct_hack_object *ho = &global_hack_object;
	unsigned char delay = ho->hack_delay;
	unsigned char idx;

	construction( enemy_pro, 160, 144, delay, 16 );
	construction( enemy_adi, 48, 144, delay, 32 );
	construction( enemy_suz, 160, 32, delay, 48 );

	for( idx = 0; idx < MAX_ENEMIES; idx++ )
	{
		calculate_tile( idx );
	}
}

void engine_enemy_manager_toggle_color()
{
	unsigned char input = engine_input_manager_hold_right();
	if( input )
	{
		toggle_color( enemy_pro );
	}
	input = engine_input_manager_hold_down();
	if( input )
	{
		toggle_color( enemy_adi );
	}
	input = engine_input_manager_hold_left();
	if( input )
	{
		toggle_color( enemy_suz );
	}
}

void engine_enemy_manager_toggle_frame()
{
	struct_hack_object *ho = &global_hack_object;
	struct_enemy_object *eo;
	unsigned char idx;

	if( !ho->hack_hands )
	{
		return;
	}

	for( idx = 0; idx < MAX_ENEMIES; idx++ )
	{
		eo = &global_enemy_objects[ idx ];
		eo->timer++;

		if( eo->timer > eo->delay )
		{
			eo->timer = 0;
			toggle_frame( idx );
		}
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

static void construction( unsigned char idx, unsigned char x, unsigned char y, unsigned char delay, unsigned int base )
{
	struct_enemy_object *eo = &global_enemy_objects[ idx ];

	eo->index = idx;
	eo->enemyX = x;
	eo->enemyY = y;
	eo->color = 0;
	eo->frame = 0;
	eo->delay = delay;
	eo->timer = 0;
	eo->base = SPRITE_TILES + base;
}

static void toggle_color( unsigned char idx )
{
	struct_enemy_object *eo = &global_enemy_objects[ idx ];
	eo->color = ( 1 - eo->color );
	calculate_tile( idx );
}
static void toggle_frame( unsigned char idx )
{
	struct_enemy_object *eo = &global_enemy_objects[ idx ];
	eo->frame = ( 1 - eo->frame );
	calculate_tile( idx );
}
static void calculate_tile( unsigned char idx )
{
	struct_enemy_object *eo = &global_enemy_objects[ idx ];
	eo->tile = eo->base + ( ( eo->color * 2 ) + eo->frame ) * 2;
}