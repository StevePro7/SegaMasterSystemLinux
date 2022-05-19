#include "screen_manager.h"
#include "font_manager.h"
#include "input_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( " == PCM SAMPLE TESTER == ", 4, 6 );
	engine_font_manager_draw_text( "PRESS LEFT, RIGHT OR DOWN", 4, 8 );
	engine_font_manager_draw_text( "PRESS FIRE TO PLAY SAMPLE", 4, 9 );
}

void engine_screen_manager_update()
{
	unsigned char input;
	unsigned char value;

	value = 0;
	input = engine_input_manager_hold_left();
	if( input )
	{
	}

	input = engine_input_manager_hold_right();
	if( input )
	{
	}

	input = engine_input_manager_hold_down();
	if( input )
	{
	}

	input = engine_input_manager_hold_fire1();
	if( input )
	{
	}
}