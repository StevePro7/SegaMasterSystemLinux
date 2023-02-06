#include "cont_screen.h"
#include "../engine/collision_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/timer_manager.h"

static signed char physics_array[ 34 ] = { -11, -8, -7, -6, -5, -4, -4, -3, -3, -3, -2, -2, -2, -1, -1, -1, -1, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5 };
//static signed char physics_array[ 22 ] = { -4, -3, -2, -1, 0, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5 };

void screen_cont_screen_load()
{
	engine_frame_manager_load();
	engine_frame_manager_draw();
	//engine_font_manager_text( "CONT SCREEN!!", 10, 2 );
	engine_player_manager_draw();
	engine_debug_manager_printout();
}

void screen_cont_screen_update( unsigned char *screen_type )
{
	struct_scroll_object *so = &global_scroll_object;
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	struct_frame_object *fo = &global_frame_object;
	struct_game_object *go = &global_game_object;
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
		if( player_state_isonground == po->player_state )
		{
			deltaX = 1;
		}
		else if( player_state_isintheair == po->player_state )
		{
			deltaX = 2;
		}
	}

	if( player_state_isonground == po->player_state )
	{
		input = engine_input_manager_move( input_type_fire1 );
		if( input )
		{
			po->player_state = player_state_isintheair;
			po->player_index = 0;
			po->player_frame = 4;
			engine_font_manager_text( "JUMP", 8, 8 );
		}
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
			//if( 0 == fo->frame_count )
			//{
			//	po->player_state = player_state_isintheair;
			//	po->player_index = 0;
			//	po->player_frame = 4;
			//	engine_font_manager_text( "JUMP", 8, 8 );
			//}
		}
		else if( player_state_isintheair == po->player_state )
		{
			engine_player_manager_right( deltaX );
			deltaY = physics_array[ po->player_index ];
			engine_player_manager_down( deltaY );

			// TODO
			if( deltaY < 0 )
			{
				// cap high jump so not thru screen
			}

			if( deltaY > 0 )
			{
				collision = engine_collision_manager_player( po->lookX, po->tileY );
				if( INVALID_INDEX != collision )
				{
					po->player_state = player_state_isonground;
					po->posnY = po->tileY << 3;
					po->drawY = po->posnY - 32;
					po->player_index = 0;
					po->player_frame = 0;
					engine_font_manager_text( "LAND", 8, 8 );
				}
				else
				{
					engine_font_manager_text( "    ", 8, 8 );

					//engine_debug_manager_printout();
					if( po->posnY >= 168 )
					{
						po->posnY = 168;
						if( go->game_isgod )
						{
							po->player_state = player_state_isnowdying;
							po->player_index = 0;
							po->player_frame = 0;
						}
						else
						{
							engine_scroll_manager_update( 0 );
							//engine_font_manager_text( "SPLAT", 20, 20 );
							*screen_type = screen_type_over;
							return;
						}
					}
				}
			}

			if( player_state_isintheair == po->player_state )
			{
				if( po->player_index < 33 )
				{
					po->player_index++;
				}
			}
		}

		engine_debug_manager_printout();

		if( deltaX > 0 )
		{
			engine_frame_manager_update();
			engine_frame_manager_draw();
		}
	}

	engine_player_manager_draw();
	*screen_type = screen_type_cont;
}
