#include "screen_manager.h"
#include "font_manager.h"
#include "sprite_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "HELLO", 10, 10 );
	//engine_font_manager_draw_char('X', 12, 12);
	//engine_font_manager_draw_data(1, 14, 14);
}

void engine_screen_manager_update()
{
	//engine_sprite_manager_draw( 64, 64, 256 );
}