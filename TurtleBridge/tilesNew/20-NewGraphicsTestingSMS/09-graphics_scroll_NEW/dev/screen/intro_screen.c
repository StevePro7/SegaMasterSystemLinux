#include "intro_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/collision_manager.h"
#include "../engine/command_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/timer_manager.h"
#include <stdbool.h>

#ifdef _CONSOLE
#else
#pragma disable_warning 110
#pragma disable_warning 261
#endif

static bool complete;
static signed int deltaY;

void screen_intro_screen_load()
{
	engine_frame_manager_load();
	engine_frame_manager_draw();
	engine_command_manager_load();
	//engine_command_manager_draw();
	engine_font_manager_text( "INTRO", 10, 0 );

	engine_scroll_manager_update( 0 );
	complete = false;
	deltaY = 0;
}

void screen_intro_screen_update( unsigned char *screen_type )
{
	// TODO delete
	struct_frame_object *fo = &global_frame_object;

	struct_scroll_object *so = &global_scroll_object;
	struct_player_object *po = &global_player_object;
	struct_command_object *co = &global_command_object;
	struct_level_object *lo = &global_level_object;
	struct_game_object *go = &global_game_object;

	unsigned char input1, input2, input3, input4, input5, input6;
	unsigned char command;

	//unsigned char deltaX;
	//unsigned char loops;
	//enum_scroll_state scroll_state;
	enum_player_state player_state;

	command = COMMAND_NONE_MASK;
	player_state = po->player_state;

	input1 = engine_input_manager_move( input_type_left );
	input2 = engine_input_manager_move( input_type_right );
	input3 = engine_input_manager_move( input_type_up );
	input4 = engine_input_manager_move( input_type_down );
	//input4 = engine_input_manager_hold( input_type_down );			// increment frame counter.
	input5 = engine_input_manager_hold( input_type_fire1 );
	input6 = engine_input_manager_hold( input_type_fire2 );

	command = engine_command_manager_build( po->player_state, input1, input2, input3, 0, input5, input6 );
	engine_font_manager_data( po->player_state, 31, 1 );
	engine_font_manager_data( command, 31, 2 );

	if( command != co->prev_command )
	{
		engine_command_manager_steven( fo->frame_count, command );
	//	engine_command_manager_draw();
	}

	engine_frame_manager_update();
	engine_frame_manager_draw();

	engine_player_manager_draw();
	*screen_type = screen_type_intro;
}
