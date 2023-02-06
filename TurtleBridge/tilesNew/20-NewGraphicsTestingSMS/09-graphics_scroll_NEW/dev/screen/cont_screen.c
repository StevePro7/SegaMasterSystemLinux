#include "cont_screen.h"
#include "../engine/collision_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/timer_manager.h"

static signed char physics_array[ 34 ] = { -11, -8, -7, -6, -5, -4, -4, -3, -3, -3, -2, -2, -2, -1, -1, -1, -1, 1, 1, 2, 2, 3, 3, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5 };

void screen_cont_screen_load()
{
	engine_frame_manager_load();
	engine_frame_manager_draw();
	engine_font_manager_text( "CONT SCREEN!!", 10, 2 );
	engine_player_manager_draw();
}

void screen_cont_screen_update( unsigned char *screen_type )
{
	struct_scroll_object *so = &global_scroll_object;
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	struct_game_object *go = &global_game_object;
	unsigned char input;
	unsigned char deltaX;
	unsigned char value;
	signed char collision;
	signed char deltaY;	//gravity;
	enum_scroll_state scroll_state;

	deltaX = 0;
	input = engine_input_manager_move( input_type_right );
	if( input )
	{
		engine_font_manager_text( "SPLAT!!", 10, 10 );
		engine_frame_manager_update();
		engine_frame_manager_draw();
	//	deltaX = 1;
	}

	//if( 0 == deltaX )
	//{
	//	deltaX = 0;
	//	engine_scroll_manager_update( deltaX );
	//}

	//if( deltaX > 0 )
	//{
	//	for( value = 0; value < deltaX; value++ )
	//	{
	//		scroll_state = engine_scroll_manager_update( 1 );
	//		if( scroll_state_tile == scroll_state )
	//		{
	//			engine_level_manager_draw_column( so->scrollColumn );
	//		}
	//	}

	//}

	engine_player_manager_draw();
	*screen_type = screen_type_cont;
}
