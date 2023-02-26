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

void screen_test_screen_load()
{
	engine_font_manager_text( "TEST", 10, 0 );

	engine_frame_manager_load();
	engine_frame_manager_draw();

	complete = false;
	deltaY = 0;
}

void screen_test_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	input = engine_input_manager_hold( input_type_down );
	if( input )
	{
		engine_font_manager_text( "TEST??", 10, 3 );
		engine_font_manager_data( command_frame_index[ 0 ], 20, 10 );
		engine_font_manager_data( command_frame_index[ 1 ], 20, 11 );
		engine_font_manager_data( command_this_command[ 0 ], 20, 12 );
		engine_font_manager_data( command_this_command[ 1 ], 20, 13 );
		
		engine_storage_manager_read();

		engine_font_manager_data( command_frame_index[ 0 ], 20, 18 );
		engine_font_manager_data( command_frame_index[ 1 ], 20, 19 );
		engine_font_manager_data( command_this_command[ 0 ], 20, 20 );
		engine_font_manager_data( command_this_command[ 1 ], 20, 21 );
		engine_font_manager_text( "TEST??", 10, 4 );
	}

	//engine_player_manager_draw();
	*screen_type = screen_type_test;
}
