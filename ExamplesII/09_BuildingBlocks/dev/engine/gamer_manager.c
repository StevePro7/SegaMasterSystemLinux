#include "gamer_manager.h"
#include "enum_manager.h"
#include "hack_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include <stdlib.h>

// Global variable.
struct_gamer_object global_gamer_object;

static void kid_calculate_tile();

void engine_gamer_manager_load()
{
	struct_hack_object *ho = &global_hack_object;
	struct_gamer_object *go = &global_gamer_object;
	unsigned char pathIndex = 0;

	go->kidColor = 0;
	go->kidX = 48;
	go->kidY = 32;
	go->velZ = 0;
	go->steps = ho->hack_steps;
	go->kidFrame = 0;
	kid_calculate_tile();
	go->direction = direction_none;
	go->lifecycle = lifecycle_idle;

	go->moveFrame = 0;
	if( ho->hack_paths )
	{
		go->pathIndex = ho->hack_paths - 1;
	}
	else
	{
		// Ensure do not repeat path!
		while( pathIndex == go->prevIndex )
		{
			// Must store path in local variable.
			pathIndex = rand() % GAMER_MAX_PATHS;
		}

		go->pathIndex = pathIndex;
		go->prevIndex = go->pathIndex;
	}
}

void engine_gamer_manager_toggle_color()
{
	struct_gamer_object *go = &global_gamer_object;

	unsigned char input = engine_input_manager_hold_up();
	if( !input )
	{
		return;
	}

	go->kidColor = ( 1 - go->kidColor );
	kid_calculate_tile();
}

void engine_gamer_manager_toggle_frame()
{
	struct_gamer_object *go = &global_gamer_object;
	go->kidFrame = ( 1 - go->kidFrame );
	kid_calculate_tile();
}

void engine_gamer_manager_setdirection( unsigned char direction )
{
	struct_gamer_object *go = &global_gamer_object;
	go->direction = direction;
}

void engine_gamer_manager_incmovements()
{
	struct_gamer_object *go = &global_gamer_object;
	go->moveFrame++;
}

void engine_gamer_manager_setlifecycle()
{
	struct_gamer_object *go = &global_gamer_object;
	go->lifecycle = lifecycle_move;
	engine_gamer_manager_toggle_frame();
}

void engine_gamer_manager_update()
{
	struct_gamer_object *go = &global_gamer_object;
	go->velZ += go->steps;
	if( go->velZ >= GAMER_MAX_STEPS )
	{
		go->velZ = 0;
		if( 1 == go->kidFrame )
		{
			engine_gamer_manager_toggle_frame();
		}
		else
		{
			go->lifecycle = lifecycle_idle;
		}
	}

	if( direction_up == go->direction )
	{
		go->kidY -= go->steps;
	}
	else if( direction_down == go->direction )
	{
		go->kidY += go->steps;
	}
	else if( direction_left == go->direction )
	{
		go->kidX -= go->steps;
	}
	else if( direction_right == go->direction )
	{
		go->kidX += go->steps;
	}
}

void engine_gamer_manager_draw()
{
	struct_gamer_object *go = &global_gamer_object;
	engine_sprite_manager_draw( go->kidX, go->kidY, go->kidTile );
}

static void kid_calculate_tile()
{
	struct_gamer_object *go = &global_gamer_object;
	go->kidTile = SPRITE_TILES + ( ( go->kidColor * 2 ) + go->kidFrame ) * 2;
}