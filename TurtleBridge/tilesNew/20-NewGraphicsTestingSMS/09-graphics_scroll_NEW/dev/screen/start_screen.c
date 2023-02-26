#include "start_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/storage_manager.h"

void screen_start_screen_load()
{
	engine_font_manager_text( "START!!", 10, 2 );
}

void screen_start_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	input = engine_input_manager_hold( input_type_right );
	if( input )
	{
		engine_font_manager_text( "START?!!", 10, 3 );
		engine_storage_manager_write();
		engine_font_manager_text( "START!!??", 10, 4 );
	}

	*screen_type = screen_type_start;
}
