#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/riff_manager.h"

void screen_test_screen_load()
{
	engine_font_manager_draw_text( "PRESS FIRE1", 4, 6 );
}

void screen_test_screen_update( unsigned char *screen_type )
{	
	unsigned char input;
	unsigned char index;

	input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		for( index = 0; index < 8; index++ )
		{
			engine_riff_manager_play( index );
		}
	}

	*screen_type = screen_type_test;
}
