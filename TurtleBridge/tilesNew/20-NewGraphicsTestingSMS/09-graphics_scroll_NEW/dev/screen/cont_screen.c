#include "cont_screen.h"
//#include "../engine/collision_manager.h"
//#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
//#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
//#include "../engine/scroll_manager.h"
//#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"

void screen_cont_screen_load()
{
	//engine_frame_manager_load();
	//engine_frame_manager_draw();
	//devkit_SMS_setBGScrollX( 0 );
	//engine_graphics_manager_screen();
	engine_font_manager_text( "CONT SCREEN", 21, 2 );
	engine_player_manager_draw();
	//engine_debug_manager_printout();
}

void screen_cont_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	struct_game_object *go = &global_game_object;
	unsigned char input;
	
	input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		// TODO 
		engine_player_manager_lives( go->game_difficulty );
		*screen_type = screen_type_load;
		return;
	}
	input = engine_input_manager_hold( input_type_fire2 );
	if( input )
	{
		*screen_type = screen_type_over;
		return;
	}
	
	//engine_player_manager_draw();
	*screen_type = screen_type_cont;
}
