#include "dead_screen.h"
#include "../engine/collision_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"

static signed char gravityZZ[ 17 ] = { 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5 };
//static signed char gravityZZ[ 17 ] = { 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4 };

void screen_dead_screen_load()
{
	engine_font_manager_text( "DEAD SCREEN", 1, 5 );
	engine_player_manager_draw();
}

void screen_dead_screen_update( unsigned char *screen_type )
{
	struct_scroll_object *so = &global_scroll_object;
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	unsigned char input;
	unsigned char deltaX;
	unsigned char value;
	signed char collision;
	signed char deltaY;	//gravity;
	enum_scroll_state scroll_state;

	deltaX = 0;
	input = engine_input_manager_move( input_type_right );
	if( input )
	{
		deltaX = 1;
	}

	if( 0 == deltaX )
	{
		deltaX = 0;
		engine_scroll_manager_update( deltaX );
	}
	
	if( deltaX > 0 )
	{
		for( value = 0; value < deltaX; value++ )
		{
			scroll_state = engine_scroll_manager_update( 1 );
			if( scroll_state_tile == scroll_state )
			{
				engine_level_manager_draw_column( so->scrollColumn );
			}
		}

		if( player_state_isonground == po->player_state )
		{
			engine_player_manager_right( deltaX );
			collision = engine_collision_manager_player( po->lookX, po->tileY );
			if( INVALID_INDEX == collision )
			{
				po->player_state = player_state_isintheair;
				engine_font_manager_text( "DEAD", 8, 8 );
			}
			else
			{
				engine_font_manager_text( "    ", 8, 8 );
			}
		}
		else if( player_state_isintheair == po->player_state )
		{
			deltaX = 2;
			engine_player_manager_right( deltaX );

			deltaY = gravityZZ[ po->player_index ];
			engine_font_manager_data( deltaY, 20, 6 );

			engine_player_manager_down( deltaY );
			if( po->player_index < 16 )
			{
				po->player_index++;
			}

			if( po->posnY >= 168 )
			{
				po->posnY = 168;
				po->player_state = player_state_isnowdying;
				po->player_index = 0;
			}
		}
		else if( player_state_isnowdying == po->player_state )
		{
			engine_player_manager_right( deltaX );
		}

		engine_debug_manager_printout();
	}

	engine_player_manager_draw();
	*screen_type = screen_type_dead;
}
