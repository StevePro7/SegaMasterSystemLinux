#include "func_screen.h"
//#include "../engine/asm_manager.h"
//#include "../engine/collision_manager.h"
//#include "../engine/content_manager.h"
//#include "../engine/command_manager.h"
//#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
//#include "../engine/game_manager.h"
//#include "../engine/global_manager.h"
//#include "../engine/graphics_manager.h"
//#include "../engine/input_manager.h"
//#include "../engine/level_manager.h"
//#include "../engine/player_manager.h"
//#include "../engine/scroll_manager.h"
//#include "../engine/storage_manager.h"
//#include "../engine/timer_manager.h"
//#include "../engine/util_manager.h"
//#include "../devkit/_sms_manager.h"
//#include <stdbool.h>
//
//#ifdef _CONSOLE
//#else
//#pragma disable_warning 110
//#pragma disable_warning 261
//#endif
//
//static bool complete;
//static signed int deltaY;

void screen_func_screen_load()
{
	//// init_screen
	//struct_player_object *po = &global_player_object;
	//struct_level_object *lo = &global_level_object;
	//struct_game_object *go = &global_game_object;
	//unsigned char player_loadY;
	//unsigned char checkScreen;
	//unsigned char cloud_formation = engine_random_manager_next( SPRITE_TILES );

	//// TODO delete
	////engine_debug_manager_initgame();
	//// TODO delete

	//// init_screen	clone
	//engine_level_manager_init( go->game_level );
	//engine_player_manager_initX( go->game_difficulty, go->game_world );
	//engine_collision_manager_init( go->game_difficulty );

	//// load_screen
	//devkit_SMS_displayOff();
	//engine_graphics_manager_screen( CLEAR_TILE_BLUE );
	////engine_asm_manager_clear_VRAM();
	////engine_content_manager_bggame();
	////engine_content_manager_sprite();
	////engine_graphics_manager_level( cloud_formation );
	//

	//// Work in terms of screens.
	//checkScreen = lo->check_width * go->game_point;
	//engine_scroll_manager_load( checkScreen, lo->level_check, lo->level_size );
	//engine_level_manager_draw_screen( checkScreen );
	////engine_level_manager_draw_point( go->game_point );

	//engine_player_manager_initX( go->game_difficulty, go->game_world );
	//engine_player_manager_loadX( checkScreen );
	////engine_player_manager_loadX( go->game_point );	// TODO - remove as this is wrong!!
	//player_loadY = level_platforms[ po->lookX ];
	//engine_player_manager_loadY( player_loadY );
	////engine_command_manager_init();		TODO delete - dup

	//engine_graphics_manager_sea();
	//engine_player_manager_draw();
	//devkit_SMS_displayOn();


	//// intro_screen
	//engine_frame_manager_load();
	////engine_frame_manager_draw();
	//engine_command_manager_init();
	////engine_command_manager_draw();
	//engine_font_manager_text( "RECORD SCREEN", 10, 2 );

	//engine_scroll_manager_update( 0 );

	//complete = false;
	//deltaY = 0;

	engine_font_manager_text( "FUNC SCREEN", 10, 0 );
	//engine_font_manager_data( checkScreen, 10, 1 );
}

void screen_func_screen_update( unsigned char *screen_type )
{
	//// TODO delete
	//struct_frame_object *fo = &global_frame_object;

	//struct_scroll_object *so = &global_scroll_object;
	//struct_player_object *po = &global_player_object;
	//struct_command_object *co = &global_command_object;
	//struct_level_object *lo = &global_level_object;
	//struct_game_object *go = &global_game_object;

	//unsigned char input1, input2, input3, input4, input5, input6;
	//unsigned char command;

	//unsigned char deltaX;
	//unsigned char loops;
	//enum_scroll_state scroll_state;
	//enum_player_state player_state;

	//command = COMMAND_NONE_MASK;
	//player_state = po->player_state;

	//if( !complete )
	//{
	//	input1 = engine_input_manager_move( input_type_left );
	//	input2 = engine_input_manager_move( input_type_right );
	//	input3 = engine_input_manager_move( input_type_up );
	//	input4 = engine_input_manager_move( input_type_down );
	//	//input4 = engine_input_manager_hold( input_type_down );			// increment frame counter.
	//	input5 = engine_input_manager_hold( input_type_fire1 );
	//	input6 = engine_input_manager_hold( input_type_fire2 );

	//	command = engine_command_manager_build( po->player_state, input1, input2, input3, input4, input5, input6 );
	//	//engine_font_manager_data( po->player_state, 31, 1 );
	//	//engine_font_manager_data( command, 31, 2 );

	//	if( command != co->prev_command )
	//	{
	//		engine_command_manager_record( fo->frame_count, command );
	//		//engine_font_manager_data( fo->frame_count, 30, 4 );
	//		//engine_font_manager_data( command, 30, 5 );
	//		//	engine_command_manager_draw();
	//	}

	//	engine_frame_manager_update();
	//	//engine_frame_manager_draw();


	//	if( COMMAND_NONE_MASK != command )
	//	{
	//		// Get horizontal movement.
	//		deltaX = engine_player_manager_get_deltaX( po->player_state, command );

	//		// Get button action.
	//		engine_player_manager_set_action( po->player_frame, command );

	//		// No scroll.
	//		if( 0 == deltaX )
	//		{
	//			engine_scroll_manager_update( 0 );
	//		}
	//		else
	//		{
	//			//if( !complete ) {}
	//			for( loops = 0; loops < deltaX; loops++ )
	//			{
	//				scroll_state = engine_scroll_manager_update( 1 );
	//				if( scroll_state_tile == scroll_state )
	//				{
	//					engine_level_manager_draw_column( so->scrollColumn );
	//				}
	//				//IMPORTANT - do NOT implement this code as will mis-align the checkpoint!
	//				//else if( scroll_state_line == scroll_state )
	//				//{
	//				//	engine_game_manager_inc_checkpoint();
	//				//	//TODO used for debugging - remove
	//				//	//engine_font_manager_data( go->game_point, 20, go->game_point );
	//				//}
	//				else if( scroll_state_comp == scroll_state )
	//				{
	//					complete = scroll_state_comp == scroll_state;
	//					if( complete )
	//					{
	//						break;
	//					}
	//				}
	//			}

	//			// Set horizontal movement.
	//			engine_player_manager_horz( deltaX );

	//			// Get / set vertical movement.
	//			deltaY = 0;
	//			if( player_state_isintheair == po->player_state )
	//			{
	//				deltaY = engine_player_manager_get_deltaY();
	//				engine_player_manager_vert( deltaY );
	//				engine_player_manager_bounds( deltaY, po->posnY, go->game_isgod );
	//			}
	//			else if( player_state_isonground == po->player_state )
	//			{
	//				engine_player_manager_animate( po->player_frame );
	//			}

	//			// General all-purpose collision detection routine.
	//			player_state = engine_player_manager_collision( po->player_state, po->lookX, po->tileY, deltaY, po->posnY, go->game_isgod );

	//			// Finally, check if player forcing downward drop.
	//			if( player_state_isintheair == po->player_state )
	//			{
	//				// If player forces down while in the air then only apply on the descent!
	//				if( ( COMMAND_DOWN_MASK & command ) == COMMAND_DOWN_MASK )
	//				{
	//					if( deltaY > 0 )
	//					{
	//						deltaY = engine_player_manager_get_deltaY();
	//						engine_player_manager_vert( deltaY );
	//						engine_player_manager_bounds( deltaY, po->posnY, go->game_isgod );
	//					}
	//				}

	//				// General all-purpose collision detection routine.
	//				player_state = engine_player_manager_collision( po->player_state, po->lookX, po->tileY, deltaY, po->posnY, go->game_isgod );
	//			}
	//		}

	//		// TODO - this is done up above ^^
	//		// Store command for future use.
	//		//engine_command_manager_update( command );
	//	}
	//	else
	//	{
	//		engine_scroll_manager_update( 0 );
	//	}

	//	engine_player_manager_draw();
	//	//engine_debug_manager_printout();
	//	//	engine_font_manager_data( deltaY, 30, 2 );
	//	//	engine_font_manager_data( po->posnY, 30, 3 );

	//	// Check to see if player completes level.
	//	if( complete )
	//	{
	//		engine_scroll_manager_update( 0 );
	//		engine_storage_manager_write();
	//		*screen_type = screen_type_option;
	//		return;
	//	}

	//	// Check if moving on to the dying sequence.
	//	if( player_state_isnowdying == player_state )
	//	{
	//		engine_scroll_manager_update( 0 );
	//		engine_storage_manager_write();
	//		*screen_type = screen_type_option;
	//		return;
	//		//*screen_type = screen_type_dead;
	//		//return;
	//	}
	//}

	//engine_player_manager_draw();
	*screen_type = screen_type_func;
}



