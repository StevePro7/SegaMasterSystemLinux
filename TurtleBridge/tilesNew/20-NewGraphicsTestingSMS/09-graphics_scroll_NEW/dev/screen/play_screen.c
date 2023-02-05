#include "play_screen.h"
#include "../engine/collision_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include <stdbool.h>

static unsigned char getDelta();
static bool complete;

void screen_play_screen_load()
{
	complete = false;
}

void screen_play_screen_update( unsigned char *screen_type )
{
	struct_scroll_object *so = &global_scroll_object;
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	unsigned char delta;
	unsigned char value;
	signed char collision;
	enum_scroll_state scroll_state;

	delta = getDelta();
	if( 0 == delta )
	{
		delta = 0;
		engine_scroll_manager_update( delta );
	}

	if( !complete )
	{
		if( delta > 0 )
		{
			for( value = 0; value < delta; value++ )
			{
				scroll_state = engine_scroll_manager_update( 1 );
				if( scroll_state_tile == scroll_state )
				{
					engine_level_manager_draw_column( so->scrollColumn );
				}
				else if( scroll_state_comp == scroll_state )
				{
					complete = scroll_state_comp == scroll_state;
					if( complete )
					{
						break;
					}
				}
			}

			engine_player_manager_right( delta );
			engine_debug_manager_printout();

			collision = engine_collision_manager_player( po->lookX, po->tileY );
			if( INVALID_INDEX == collision )
			{
				engine_font_manager_text( "DEAD", 8, 13 );
			}
			else
			{
				engine_font_manager_text( "    ", 8, 13 );
			}
		}
	}

	engine_player_manager_draw();
	*screen_type = screen_type_play;
}


static unsigned char getDelta()
{
	unsigned char input;
	unsigned char delta;
	delta = 0;
	
	input = engine_input_manager_move( input_type_right );
	if( input )
	{
		delta = 1;
	}
	input = engine_input_manager_move( input_type_down );
	if( input )
	{
		delta = 2;
	}
	input = engine_input_manager_move( input_type_left );
	if( input )
	{
		delta = 3;
	}
	input = engine_input_manager_move( input_type_up );
	if( input )
	{
		delta = 4;
	}

	return delta;
}