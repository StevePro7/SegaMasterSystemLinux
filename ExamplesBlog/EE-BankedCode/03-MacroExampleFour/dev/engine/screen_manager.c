#include "screen_manager.h"
#include "font_manager.h"
#include "input_manager.h"
#include "../banks/banked_code_1.h"
#include "../banks/banked_code_2.h"
#include "../banks/banked_code_3.h"
#include "../banks/banked_code_4.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text("=== BANKED CODE EXAMPLE ===", 3, 6);
	engine_font_manager_draw_text("PRESS: LEFT, RIGHT, UP, DOWN", 3, 8);
	engine_font_manager_draw_text("PRESS: FIRE1 TO CLEAR DATA!!", 3, 9);
}

void engine_screen_manager_update()
{
	unsigned char input;
	unsigned char value;

	value = 0;
	input = engine_input_manager_hold_left();
	if (input)
	{
		value = banked_code_1();
		engine_font_manager_draw_data(value, 10, 12);
	}

	input = engine_input_manager_hold_right();
	if (input)
	{
		value = banked_code_2();
		engine_font_manager_draw_data(value, 10, 13);
	}

	input = engine_input_manager_hold_up();
	if (input)
	{
		value = banked_code_3();
		engine_font_manager_draw_data(value, 10, 14);
	}
	input = engine_input_manager_hold_down();
	if (input)
	{
		value = banked_code_4();
		engine_font_manager_draw_data(value, 10, 15);
	}

	input = engine_input_manager_hold_fire1();
	if (input)
	{
		engine_font_manager_draw_text("  ", 9, 12);
		engine_font_manager_draw_text("  ", 9, 13);
		engine_font_manager_draw_text("  ", 9, 14);
		engine_font_manager_draw_text("  ", 9, 15);
	}
}