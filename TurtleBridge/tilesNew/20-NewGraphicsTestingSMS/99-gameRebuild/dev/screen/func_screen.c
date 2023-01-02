#include "func_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/scroll_manager.h"

static unsigned char value;

void screen_func_screen_load()
{
	engine_font_manager_text( "FUNC SCREEN????", 10, 0 );
	engine_font_manager_data( value, 30, 0 );
	engine_scroll_manager_load( 30 );
}

void screen_func_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	engine_scroll_manager_update( 0 );

	input = engine_input_manager_hold_up();
	if( input )
	{
		engine_font_manager_text( "               ", 10, 1 );
		engine_font_manager_data( value, 30, 0 );
	}
	
	input = engine_input_manager_hold_down();
	if( input )
	{
		value++;
		engine_font_manager_text( "FUNC SCREEN????", 10, 1 );
		engine_font_manager_data( value, 30, 0 );
	}
	*screen_type = screen_type_func;
}
