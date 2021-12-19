#include "screen_manager.h"
#include "font_manager.h"
#include "input_manager.h"
#include "gamer_manager.h"
#include "scroll_manager.h"

void engine_screen_manager_init()
{
	unsigned char i;
	for (i = 0; i < 24; i++)
	{
		engine_font_manager_draw_text("HELLO WORLD", 10, i);
	}
}

void engine_screen_manager_update()
{
	engine_scroll_manager_update();
}