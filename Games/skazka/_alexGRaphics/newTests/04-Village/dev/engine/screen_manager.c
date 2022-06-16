#include "screen_manager.h"
#include "font_manager.h"

void engine_screen_manager_init()
{
	//engine_font_manager_draw_data( 89, 10, 10 );
	//engine_font_manager_draw_zero( 0, 10, 10 );

	engine_font_manager_draw_text( "BOSS FIGHT", 10, 20 );
	//engine_font_manager_draw_char( ')', 10, 10 );
}

void engine_screen_manager_update()
{
//	engine_sprite_manager_draw( 64, 64, 256 );
}