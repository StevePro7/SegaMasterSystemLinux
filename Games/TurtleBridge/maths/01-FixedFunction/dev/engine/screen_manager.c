#include "screen_manager.h"
#include "font_manager.h"
#include "sprite_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 4 );
	engine_sprite_manager_init();
}

void engine_screen_manager_update()
{
}