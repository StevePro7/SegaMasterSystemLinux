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
	engine_turtle_manager_draw_sea();
	//engine_font_manager_draw_text( "ADRIANA", 2, 2 );

	//engine_tile_manager_cloud01( 10, 10 );
	//engine_turtle_manager_draw_title( 6, 2 );

	//engine_tile_manager_turtle01( 5, 15 );
	//engine_tile_manager_turtle04( 9, 5 );
	//engine_tile_manager_turtle01( 5, 10 );
	//engine_tile_manager_turtle02( 10, 11 );
	//engine_tile_manager_turtle03( 15, 12 );
	//engine_tile_manager_turtle04( 5, 16 );
	//engine_tile_manager_turtle05( 10, 17 );
	//engine_tile_manager_turtle06( 15, 18 );
	//engine_tile_manager_turtle07( 25, 10 );
	//engine_tile_manager_turtle08( 25, 16 );

	//engine_tile_manager_ground01( 2, 2 );
	engine_tile_manager_ground02( 4, 14 );
}

void engine_screen_manager_update()
{
	//unsigned char input;
	//input = engine_input_manager_hold_down();
}
