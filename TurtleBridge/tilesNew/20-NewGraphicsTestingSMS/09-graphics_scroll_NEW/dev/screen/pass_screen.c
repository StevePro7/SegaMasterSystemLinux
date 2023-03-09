#include "pass_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/command_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../devkit/_sms_manager.h"

static unsigned char player_passX;
static unsigned char player_endY;
static unsigned char swap;

void screen_pass_screen_load()
{
	struct_command_object *co = &global_command_object;
	struct_player_object *po = &global_player_object;
	player_passX = engine_player_manager_get_deltaX( po->player_state, co->prev_command );
	player_passX >>= 1;
	player_endY = engine_player_manager_finish();

	engine_player_manager_draw();
	engine_player_manager_head();
	swap = 0;
}

// TODO - show the world round point text on screen when pass.
void screen_pass_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	struct_game_object *go = &global_game_object;
	unsigned char input1, input2;
	unsigned char game_level;

	engine_scroll_manager_update( 0 );
	if( po->posnX >= LEVELS_SIDE )
	{
		// Continue invoke function in case player still in air.
		engine_player_manager_pass( player_passX, player_endY );
		if( !swap )
		{
			engine_music_manager_stop();
			swap = 1;
			po->player_frame = ( player_frame_theair_rght_01 == po->player_frame ) ? player_frame_ground_rght_02 : player_frame_ground_left_02;
		}
		// TODO delete - 7-Mar-2023 was POC'ing scroll / moving player back but won't work with current posnX logic check - TODO remove!!
		else
		{
			input1 = engine_input_manager_hold( input_type_fire1 );
			input2 = engine_input_manager_move( input_type_down );
			if( input1 || input2 )
			{
				// TODO - pause and goto interim screen to increment level until beat_screen...
				game_level = go->game_level;
				game_level += 1;
				engine_game_manager_set_level_test( game_level );
				*screen_type = screen_type_intro;		// TODO view screen.
				return;
		//		// TODO delete -poc
		//		po->posnX -= 1;
		//		po->drawX = po->posnX - 16;
		//		engine_scroll_manager_update( 1 );
			}
		}
	}
	else
	{
		input1 = engine_input_manager_hold( input_type_up );
		input2 = engine_input_manager_move( input_type_down );
		//if( input1 || input2 )
		{
			engine_player_manager_pass( player_passX, player_endY );
		}
	}

	engine_player_manager_draw();
	engine_player_manager_head();
	*screen_type = screen_type_pass;
}