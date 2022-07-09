#include "test_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"

void screen_test_screen_load()
{
	engine_font_manager_draw_text( "TEST SCREEN", 10, 10 );
}

void screen_test_screen_update( unsigned char *screen_type )
{
	unsigned char input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		engine_sound_manager_play( sound_type_12 );
		engine_font_manager_draw_text( "TEST SCREEN", 10, 12 );
	}

	*screen_type = screen_type_test;
}
