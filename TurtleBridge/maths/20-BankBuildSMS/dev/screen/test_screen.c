#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/riff_manager.h"

void screen_test_screen_load()
{
	engine_riff_manager_init();
	engine_font_manager_text( "TEST SCREEN!!", 10, 2 );
}

void screen_test_screen_update( unsigned char *screen_type )
{
	unsigned char index;
	unsigned char input;

	input = engine_input_manager_hold_right();
	if( input )
	{
		engine_font_manager_text( "UW", 10, 10 );
		//engine_riff_manager_play( 0 );

		for( index = 0; index < 4; index++ )
		{
			engine_riff_manager_play( index );
		}
	}

	//input = engine_input_manager_hold_up();
	//if( input )
	//{
	//	engine_font_manager_text( "SPLASH", 10, 10 );
	//	for( index = 9; index < 18; index++ )
	//	{
	//		engine_riff_manager_play( index );
	//	}
	//}

	//input = engine_input_manager_hold_down();
	//if( input )
	//{
	//	engine_font_manager_text( "TITLES", 10, 10 );
	//	for( index = 0; index < 9; index++ )
	//	{
	//		engine_riff_manager_play( index );
	//	}
	//}

	*screen_type = screen_type_test;
}