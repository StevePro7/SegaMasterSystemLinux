#include "screen_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 4 );
}

void engine_screen_manager_update()
{
	unsigned char input;
	input = engine_input_manager_hold_down();
	if( input )
	{
		engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 6 );
		engine_content_manager_load_sprites();
		engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 8 );
	}

	engine_sprite_manager_draw( 32, 64, 432);
}