#include "riff_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/riff_manager.h"

void screen_riff_screen_load()
{
	engine_riff_manager_init();
	engine_font_manager_text( "RIFF SCREEN!!", 10, 2 );
}

void screen_riff_screen_update( unsigned char *screen_type )
{
	//	unsigned char index;
	unsigned char input;
	input = engine_input_manager_hold_right();
	if( input )
	{
		engine_font_manager_text( ( unsigned char* ) steven_object_texts[ 1 ], 10, 10 );
	}

	*screen_type = screen_type_riff;
}
