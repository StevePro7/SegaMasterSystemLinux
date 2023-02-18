#include "play_screen.h"
#include "../engine/collision_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/timer_manager.h"
#include <stdbool.h>

void screen_play_screen_load()
{
	engine_frame_manager_load();
	engine_frame_manager_draw();
	engine_scroll_manager_update( 0 );
}

void screen_play_screen_update( unsigned char *screen_type )
{
	//struct_player_object *po = &global_player_object;
	//unsigned char input1, input2, input3, input4, input5, input6;
	unsigned char input;
	//unsigned char command;

	input = engine_input_manager_hold( input_type_right );
	if( input )
	{
		engine_frame_manager_update();
		engine_frame_manager_draw();
	}

	engine_player_manager_draw();
	*screen_type = screen_type_play;
}
