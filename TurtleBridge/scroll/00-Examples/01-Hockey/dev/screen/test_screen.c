#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/input_manager.h"
#include "../engine/scroll_manager.h"

void screen_test_screen_load()
{
	engine_scroll_manager_load();
}

void screen_test_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	input = engine_input_manager_hold_right();
	if( input )
	{
		engine_scroll_manager_update_right();
	}
	else
	{
		input = engine_input_manager_hold_left();
		if( input )
		{
			engine_scroll_manager_update_left();
		}
	}

	*screen_type = screen_type_test;
}