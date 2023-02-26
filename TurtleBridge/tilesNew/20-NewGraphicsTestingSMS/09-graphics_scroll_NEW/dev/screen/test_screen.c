#include "test_screen.h"
//#include "../engine/audio_manager.h"
#include "../engine/collision_manager.h"
#include "../engine/command_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/storage_manager.h"
#include "../engine/timer_manager.h"
#include <stdbool.h>

#ifdef _CONSOLE
#else
#pragma disable_warning 110
#pragma disable_warning 261
#endif

static bool complete;
static signed int deltaY;
static unsigned char frame_counter;
static void printCmds();

void screen_test_screen_load()
{
	engine_font_manager_text( "TEST", 10, 0 );

	engine_frame_manager_load();
	engine_frame_manager_draw();
	engine_storage_manager_read();
	complete = false;
	deltaY = 0;
	frame_counter = 0;
}

void screen_test_screen_update( unsigned char *screen_type )
{
	// TODO delete
	struct_frame_object *fo = &global_frame_object;

	//struct_scroll_object *so = &global_scroll_object;
	struct_player_object *po = &global_player_object;
	//struct_level_object *lo = &global_level_object;
	//struct_game_object *go = &global_game_object;
	struct_command_object *co = &global_command_object;

	unsigned char input1;// input2, input3, input4, input5, input6;
	unsigned char input2;
	//unsigned char deltaX;
	////signed int deltaY;
	//unsigned char loops;
	////signed char collision;
	//enum_scroll_state scroll_state;
	enum_player_state player_state;

	unsigned char command = COMMAND_NONE_MASK;
	player_state = po->player_state;

	input1 = engine_input_manager_hold( input_type_left );
	input2 = engine_input_manager_move( input_type_right );
	//input1 = 1;		// TODO delete
	if( input1 || input2 )
	{
		if( command_frame_index[ frame_counter ] == fo->frame_count )
		{
			command = command_this_command[ frame_counter ];
			engine_font_manager_data( command, 30, 04 );

			//TODO - bad - wrap in API.
			co->prev_command = command;
			frame_counter++;
		}
		else
		{
			command = co->prev_command;
		}

		
		engine_frame_manager_update();
		engine_frame_manager_draw();
	}

	//engine_player_manager_draw();
	*screen_type = screen_type_test;
}


static void printCmds()
{
	engine_font_manager_text( "TEST??", 10, 3 );
	engine_font_manager_data( command_frame_index[ 0 ], 20, 10 );
	engine_font_manager_data( command_frame_index[ 1 ], 20, 11 );
	engine_font_manager_data( command_this_command[ 0 ], 20, 12 );
	engine_font_manager_data( command_this_command[ 1 ], 20, 13 );

	engine_font_manager_data( command_frame_index[ 0 ], 20, 18 );
	engine_font_manager_data( command_frame_index[ 1 ], 20, 19 );
	engine_font_manager_data( command_this_command[ 0 ], 20, 20 );
	engine_font_manager_data( command_this_command[ 1 ], 20, 21 );
	engine_font_manager_text( "TEST??", 10, 4 );
}