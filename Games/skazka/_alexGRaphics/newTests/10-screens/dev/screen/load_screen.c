#include "load_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"

void screen_load_screen_load()
{
	engine_font_manager_draw_text( "LOAD SCREEN", 10, 2 );
}

void screen_load_screen_update( unsigned char *screen_type )
{
	unsigned char input;

	input = engine_input_manager_hold( input_type_fire1 );

	if( input )
	{
		engine_font_manager_draw_text( "LOAD SCREEN", 10, 4 );
	}

	*screen_type = screen_type_load;
}
