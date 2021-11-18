#include "screen_manager.h"
#include "font_manager.h"
#include "input_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text("HELLO WORLD!!", 10, 10);
}

void engine_screen_manager_update()
{
	unsigned char input;

	input = engine_input_manager_hold_left();
	if( input )
	{
		engine_font_manager_draw_text( "LEFT", 10, 12 );
	}

	input = engine_input_manager_hold_right();
	if( input )
	{
		engine_font_manager_draw_text( "RIGHT", 10, 14 );
	}
}