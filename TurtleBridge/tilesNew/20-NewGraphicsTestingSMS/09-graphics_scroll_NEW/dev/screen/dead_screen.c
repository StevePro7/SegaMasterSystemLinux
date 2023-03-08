#include "dead_screen.h"
#include "../engine/command_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"


static unsigned char player_deadX;
static unsigned char deltaX;
static signed int deltaY;
static unsigned char swap;

void screen_dead_screen_load()
{
	struct_command_object *co = &global_command_object;
	struct_player_object *po = &global_player_object;
	engine_player_manager_dying();

	player_deadX = engine_player_manager_get_deltaX( po->player_state, co->prev_command );
	player_deadX >>= 1;

	engine_player_manager_draw();
	engine_player_manager_head();
	swap = 0;
}

void screen_dead_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	unsigned char input1, input2;

	engine_scroll_manager_update( 0 );
	if( po->posnY >= PLAYER_DEAD )
	{
		engine_font_manager_text( "NEXT SCREEN!!", 1, 6 );
	}
	else
	{
		input1 = engine_input_manager_hold( input_type_left );
		input2 = engine_input_manager_move( input_type_right );
		//input1 = 1;		// TODO delete
		if( input1 || input2 )
		{
			engine_player_manager_dead( player_deadX );
		}
	}

	engine_player_manager_draw();
	engine_player_manager_head();
	*screen_type = screen_type_dead;
}
