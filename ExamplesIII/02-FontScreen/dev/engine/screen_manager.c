#include "screen_manager.h"
#include "../engine/font_manager.h"
#include "sprite_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_text("STEVEPRO STUDIO!!", 10, 10);
	engine_font_manager_asci( 112, 10, 14 );
	engine_font_manager_data( 89, 10, 16 );
}

void engine_screen_manager_update()
{
	engine_sprite_manager_draw( 64, 64, 256 );
}