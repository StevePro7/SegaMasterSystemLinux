#include "dead_screen.h"
#include "../engine/command_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/timer_manager.h"

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
	engine_reset_manager_load( NORMAL_DELAY );
	swap = 0;
}

// TODO - inject pause before going to next screen...
void screen_dead_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	unsigned char input1, input2;
	//unsigned char input;
	//unsigned char check;

	if( !swap )
	{
		// Block play PCM then death music first time.
		swap = 1;
	}

	// Player chance to quit out to start screen.
	//input1 = engine_input_manager_move( input_type_up );
	//if( input1 )
	//{
	//	check = engine_reset_manager_update();
	//	if( check )
	//	{
	//		input2 = engine_input_manager_move( input_type_fire2 );
	//		if( input2 )
	//		{
	//			*screen_type = screen_type_start;
	//			return;
	//		}
	//	}
	//}
	//else
	//{
	//	engine_reset_manager_reset();
	//}

	//engine_scroll_manager_update( 0 );
	if( po->posnY >= PLAYER_DEAD )
	{
		//swap = 1;
		if( 0 == po->player_lives )
		{
			*screen_type = screen_type_cont;
			return;
		}
		else
		{
			*screen_type = screen_type_load;
			return;
		}
	}
	else
	{
		input1 = engine_input_manager_hold( input_type_up );
		input2 = engine_input_manager_move( input_type_down );
		input1 = 1;		// TODO delete
		if( input1 || input2 )
		{
			engine_player_manager_dead( player_deadX );
		}
	}

	engine_player_manager_draw();
	engine_player_manager_head();
	*screen_type = screen_type_dead;
}
