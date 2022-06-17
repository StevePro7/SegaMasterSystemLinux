#include "screen_manager.h"
#include "font_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_data( 7, 10, 18 );
	engine_font_manager_draw_zero( 0, 20, 18 );

	engine_font_manager_draw_text( "STATS VILLAGE", 10, 20 );
	engine_font_manager_draw_char( 'X', 20, 1 );
	engine_font_manager_draw_punc( '+', 10, 1 );
	engine_font_manager_draw_punc( '?', 12, 1 );
}

void engine_screen_manager_update()
{
//	engine_sprite_manager_draw( 64, 64, 256 );
}