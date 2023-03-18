#include "intro_screen.h"
//#include "../engine/asm_manager.h"
//#include "../engine/collision_manager.h"
//#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
//#include "../engine/game_manager.h"
//#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
//#include "../engine/input_manager.h"
//#include "../engine/level_manager.h"
//#include "../engine/player_manager.h"
//#include "../engine/scroll_manager.h"
//#include "../devkit/_sms_manager.h"
//#include "../controller.h"
//#include <stdbool.h>
////
////#ifdef _CONSOLE
////#else
////#pragma disable_warning 110
////#pragma disable_warning 261
////#endif
////
//static bool complete;

void screen_intro_screen_load()
{
	engine_graphics_manager_common();

//	struct_level_object *lo = &global_level_object;
//	struct_game_object *go = &global_game_object;
//
//	engine_graphics_manager_common();
//	devkit_SMS_displayOff();
//	engine_asm_manager_clear_VRAM();
//	engine_content_manager_bggame();
//	engine_content_manager_sprite();
//	engine_graphics_manager_title();
//	engine_graphics_manager_clouds( go->game_cloud );
//	engine_graphics_manager_sea();
//	devkit_SMS_displayOn();
//
//	engine_level_manager_init( go->game_level );
//	engine_level_manager_draw_point( go->game_point );
//
//	game_controller_setup_player( go->game_difficulty, go->game_world, go->game_point );
//	engine_collision_manager_init( go->game_difficulty );
	engine_font_manager_text( "INTRO SCREEN??", 10, 2 );
//
//	engine_scroll_manager_load( go->game_point, lo->level_check, lo->level_size );
//	engine_scroll_manager_update( 0 );
//
//	complete = false;
}

void screen_intro_screen_update( unsigned char *screen_type )
{
	//struct_scroll_object *so = &global_scroll_object;
	////struct_player_object *po = &global_player_object;
	////struct_command_object *co = &global_command_object;
	////struct_level_object *lo = &global_level_object;
	////struct_game_object *go = &global_game_object;

	//unsigned char input0, input1, input2;// , input3, input4, input5, input6;
	////unsigned char command;

	//unsigned char deltaX;
	//unsigned char loops;
	//enum_scroll_state scroll_state;
	////enum_player_state player_state;

	////command = COMMAND_NONE_MASK;
	////player_state = po->player_state;

	//input0 = engine_input_manager_hold( input_type_fire1 );
	//if( input0 )
	//{
	//	// TODO - forward onto game init.
	//	//*screen_type = screen_type_start;
	//	*screen_type = screen_type_init;
	//	return;
	//}

	//if( !complete )
	//{
	//	deltaX = 0;
	//	input1 = engine_input_manager_move( input_type_left );
	//	input2 = engine_input_manager_move( input_type_right );

	//	if( input1 )
	//	{
	//		deltaX = 2;
	//	}
	//	if( input2 )
	//	{
	//		deltaX = 8;
	//	}


	//	for( loops = 0; loops < deltaX; loops++ )
	//	{
	//		scroll_state = engine_scroll_manager_update( 1 );
	//		if( scroll_state_tile == scroll_state )
	//		{
	//			engine_level_manager_draw_column( so->scrollColumn );
	//		}
	//		else if( scroll_state_comp == scroll_state )
	//		{
	//			complete = scroll_state_comp == scroll_state;
	//			if( complete )
	//			{
	//				// TODO - do I want to pause on complete??
	//				break;
	//			}
	//		}
	//	}
	//}

	//// Check to see if player completes level.
	//if( complete )
	//{
	//	engine_scroll_manager_update( 0 );
	//	//engine_font_manager_text( "FINISH", 10, 10 );
	//	//*screen_type = screen_type_start;
	//	return;
	//}

	////engine_player_manager_draw();
	*screen_type = screen_type_intro;
}
