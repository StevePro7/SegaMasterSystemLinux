#include "screen_manager.h"
#include "font_manager.h"
#include "sprite_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text("STEVEPRO STUDIOs", 10, 10);
	//engine_font_manager_draw_char( 'p', 10, 12 );
	engine_font_manager_draw_asci( 112, 10, 14 );
	engine_font_manager_draw_data( 89, 10, 16 );
}

void engine_screen_manager_update()
{
	engine_sprite_manager_draw( 64, 64, 256 );
}