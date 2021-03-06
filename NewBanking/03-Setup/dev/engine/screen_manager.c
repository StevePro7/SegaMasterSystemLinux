#include "screen_manager.h"
#include "font_manager.h"
#include "input_manager.h"
#include "../banks/banked_code_1.h"
#include "../banks/banked_code_2.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text("HELLO WORLD!!", 10, 10);
}

void engine_screen_manager_update()
{
	unsigned char input;
	unsigned char value;

	value = 0;
	input = engine_input_manager_hold_left();
	if( input )
	{
		value = foo();
		engine_font_manager_draw_data( value, 10, 12 );
	}

	input = engine_input_manager_hold_right();
	if( input )
	{
		value = bar();
		engine_font_manager_draw_data( value, 10, 12 );
	}

	input = engine_input_manager_hold_fire1();
	if( input )
	{
		engine_font_manager_draw_char( ' ', 10, 12 );
	}
}