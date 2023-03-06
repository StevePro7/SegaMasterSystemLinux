#include "dead_screen.h"
#include "../engine/command_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/player_manager.h"

#define PLAYER_MAX_DEAD		224

//static signed char gravityZZ[ 17 ] = { 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5 };
//static signed char gravityZZ[ 17 ] = { 1, 1, 1, 1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 4, 4 };

static unsigned char deltaX;
static signed int deltaY;
static unsigned char swap;

void screen_dead_screen_load()
{
	struct_command_object *co = &global_command_object;
	struct_player_object *po = &global_player_object;

	// TODO - do I want to wrap this in an API?
	po->posnX = po->initX;
	//engine_font_manager_text( "DEAD SCREEN!!", 1, 5 );
	deltaX = engine_player_manager_get_deltaX( po->player_state, co->prev_command );		// TODO - do I want to halve this value - looks like slow motion
	//deltaX += 1;			// As player was previously in the air before dying.
	engine_player_manager_draw();
	swap = 0;
}

void screen_dead_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	unsigned char input1, input2;
	//struct_scroll_object *so = &global_scroll_object;
	//struct_level_object *lo = &global_level_object;
	//struct_game_object *go = &global_game_object;
	//unsigned char input;
	//unsigned char deltaX;
	//unsigned char value;
	//signed char collision;
	//signed char deltaY;	//gravity;
	//enum_scroll_state scroll_state;

	if( swap )
	{
		//engine_font_manager_text( "NEXT SCREEN!!", 1, 6 );
	}
	else
	{
		input1 = engine_input_manager_hold( input_type_up );
		input2 = engine_input_manager_move( input_type_down );
		//input1 = 1;		// TODO delete
		if( input1 || input2 )
		{
			// Set horizontal movement.
			engine_player_manager_horz( deltaX );
			// TODO - do I want to wrap this in an API?
			po->drawX = po->posnX - 16;

			if( po->posnX >= LEVELS_SIDE )
			{
				po->posnX = LEVELS_SIDE;
			}

			// Get / set vertical movement.
			deltaY = engine_player_manager_get_deltaY();			// TODO - do I want to halve this value - looks like slow motion
			engine_player_manager_vert( deltaY );
			
			if( po->posnY >= PLAYER_MAX_DEAD )
			{
				po->posnY = PLAYER_MAX_DEAD;
				swap = 1;
			}
		}
	}

	engine_player_manager_draw();
	
	//deltaX = 1;
	//input = engine_input_manager_move( input_type_right );
	//if( input )
	//{
	//	deltaX = 1;
	//}

	//if( 0 == deltaX )
	//{
	//	deltaX = 0;
	//	engine_scroll_manager_update( deltaX );
	//}
	//
	//if( deltaX > 0 )
	//{
	//	for( value = 0; value < deltaX; value++ )
	//	{
	//		scroll_state = engine_scroll_manager_update( 1 );
	//		if( scroll_state_tile == scroll_state )
	//		{
	//			engine_level_manager_draw_column( so->scrollColumn );
	//		}
	//	}

	//	if( player_state_isonground == po->player_state )
	//	{
	//		engine_player_manager_right( deltaX );
	//		collision = engine_collision_manager_player( po->lookX, po->tileY );
	//		if( INVALID_INDEX == collision )
	//		{
	//			po->player_state = player_state_isintheair;
	//			//engine_font_manager_text( "DEAD", 8, 8 );
	//		}
	//		else
	//		{
	//			//engine_font_manager_text( "    ", 8, 8 );
	//		}
	//	}
	//	else if( player_state_isintheair == po->player_state )
	//	{
	//		deltaX = 2;
	//		engine_player_manager_right( deltaX );

	//		deltaY = gravityZZ[ po->jumper_index ];
	//		//engine_font_manager_data( deltaY, 20, 6 );

	//		engine_player_manager_down( deltaY );
	//		collision = engine_collision_manager_player( po->lookX, po->tileY );
	//		if( INVALID_INDEX != collision )
	//		{
	//			po->player_state = player_state_isonground;
	//			po->posnY = po->tileY << 3;
	//			po->drawY = po->posnY - 32;
	//			po->jumper_index = 0;
	//			po->player_frame = 0;
	//		}
	//		else
	//		{
	//			if( po->jumper_index < 16 )
	//			{
	//				po->jumper_index++;
	//			}

	//			//engine_debug_manager_printout();
	//			if( po->posnY >= 168 )
	//			{
	//				po->posnY = 168;
	//				if( go->game_isgod )
	//				{
	//					po->player_state = player_state_isnowdying;
	//					po->jumper_index = 0;
	//					po->player_frame = 0;
	//				}
	//				else
	//				{
	//					engine_scroll_manager_update( 0 );
	//					//engine_font_manager_text( "SPLAT", 20, 20 );
	//					*screen_type = screen_type_over;
	//					return;
	//				}
	//			}
	//		}
	//	}
	//	if( player_state_isnowdying == po->player_state )
	//	{
	//		engine_player_manager_right( deltaX );
	//	}

	//	//engine_debug_manager_printout();
	//}

	engine_player_manager_draw();
	*screen_type = screen_type_dead;
}
