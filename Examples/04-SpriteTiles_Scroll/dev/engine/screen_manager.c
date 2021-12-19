#include "screen_manager.h"
#include "font_manager.h"
#include "sprite_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text("STEVEPRO", 10, 10);
}

void engine_screen_manager_update()
{
	engine_sprite_manager_draw( 64, 64, 256 );
}