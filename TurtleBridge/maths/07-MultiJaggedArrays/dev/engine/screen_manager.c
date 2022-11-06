#include "screen_manager.h"
#include "font_manager.h"
#include "input_manager.h"

static unsigned char index;

void engine_screen_manager_init()
{
	index = 0;
	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 0 );
	engine_font_manager_draw_data( index, 10, 2 );
}

void engine_screen_manager_update()
{
	unsigned char input;
	input = engine_input_manager_hold_fire1();
	if( input )
	{
		engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 4 );
	}
}