#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/riff_manager.h"

void screen_test_screen_load()
{
	engine_font_manager_draw_text( "PRESS LEFT / UP / RIGHT", 4, 6 );
}

void screen_test_screen_update( unsigned char *screen_type )
{	
	unsigned char input = engine_input_manager_hold( input_type_left );
	input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		engine_font_manager_draw_text( "PLAY SOUND..FX", 10, 13 );
		engine_riff_manager_play( 0 );
		engine_riff_manager_play( 1 );
		engine_riff_manager_play( 2 );
	}

	*screen_type = screen_type_test;
}
