#include "option_screen.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/player_manager.h"

static unsigned char cursorY;

void screen_option_screen_load()
{
	unsigned char idx;
	for( idx = 0; idx < SCREEN_HIGH; idx++ )
	{
		engine_font_manager_text( "                                ", 0, idx );
	}
	engine_font_manager_text( "OPTION SCREEN", 10, 2 );
	engine_font_manager_text( "  RECORD CMDS", 10, 0 );
	engine_font_manager_text( "  PLAYBACK!!!", 10, 1 );
	cursorY = 0;
	engine_font_manager_char( '>', 10, cursorY );
}

void screen_option_screen_update( unsigned char *screen_type )
{
	unsigned char input1, input2, input3;
	input1 = engine_input_manager_hold( input_type_up );
	input2 = engine_input_manager_hold( input_type_down );
	if( input1 || input2 )
	{
		engine_font_manager_char( ' ', 10, cursorY );
		cursorY = 1 - cursorY;
		engine_font_manager_char( '>', 10, cursorY );
	}

	input3 = engine_input_manager_hold( input_type_right );
	if( input3 )
	{
		if( 0 == cursorY )
		{
			*screen_type = screen_type_intro;
			return;
		}
	}

//	engine_player_manager_draw();
	*screen_type = screen_type_option;
}
