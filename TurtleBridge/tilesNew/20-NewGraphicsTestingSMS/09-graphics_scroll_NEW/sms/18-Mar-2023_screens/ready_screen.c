#include "ready_screen.h"
#include "../engine/command_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/player_manager.h"
#include "../engine/timer_manager.h"

void screen_ready_screen_load()
{
	engine_frame_manager_load();
	engine_frame_manager_draw();
	engine_command_manager_init();
	//engine_command_manager_load();
	engine_command_manager_draw();
	engine_font_manager_text( "READY", 10, 2 );
}

void screen_ready_screen_update( unsigned char *screen_type )
{
	struct_frame_object *fo = &global_frame_object;
	struct_player_object *po = &global_player_object;
	struct_command_object *co = &global_command_object;

	unsigned char input1, input2, input3, input4, input5, input6;
	unsigned char command;
	input1 = engine_input_manager_move( input_type_left );
	input2 = engine_input_manager_move( input_type_right );
	input3 = engine_input_manager_move( input_type_up );
//	input4 = engine_input_manager_move( input_type_down );
	input4 = engine_input_manager_hold( input_type_down );			// increment frame counter.
	input5 = engine_input_manager_hold( input_type_fire1 );
	input6 = engine_input_manager_hold( input_type_fire2 );

	command = engine_command_manager_build( po->player_state, input1, input2, input3, 0, input5, input6 );
	engine_font_manager_data( po->player_state, 31, 1 );
	engine_font_manager_data( command, 31, 2 );
	if( input4 )
	{
		if( command != co->prev_command )
		{
			engine_command_manager_record( fo->frame_count, command );
			engine_command_manager_draw();
		}

		engine_frame_manager_update();
		engine_frame_manager_draw();
	}

	*screen_type = screen_type_ready;
	//*screen_type = screen_type_play;
}
