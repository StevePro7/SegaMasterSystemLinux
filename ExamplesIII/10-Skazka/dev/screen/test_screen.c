#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"

void screen_test_screen_load()
{
	engine_font_manager_text( "TEST SCREEN!!", 2, 10 );
}

void screen_test_screen_update( unsigned char *screen_type )
{
	unsigned char input;

	input = engine_input_manager_hold( input_type_down );
	if( input )
	{
		engine_font_manager_text( "FIRE SCREEN!!", 2, 12 );
	}

	*screen_type = screen_type_test;
}
