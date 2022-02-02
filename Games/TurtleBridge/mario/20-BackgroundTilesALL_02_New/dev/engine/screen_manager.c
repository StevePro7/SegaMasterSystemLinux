#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "tile_manager.h"

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS..!!", 4, 1 );

	//engine_tile_manager_turtle01( 10, 10 );
	//engine_tile_manager_turtle02( 20, 10 );

	//engine_tile_manager_cloud01( 4, 4 );
}

void engine_screen_manager_update()
{
	//unsigned char input;
	//input = engine_input_manager_hold_down();
}
