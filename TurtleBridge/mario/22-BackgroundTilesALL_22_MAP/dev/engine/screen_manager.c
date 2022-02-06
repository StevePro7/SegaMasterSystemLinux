#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "tile_manager.h"

void engine_screen_manager_init()
{
	//engine_turtle_manager_draw_sea();
	engine_font_manager_draw_text( "ADRIANA4", 2, 2 );

	//engine_tile_manager_turtle( tile_type_fly_turtle01, 4, 8 );
	//engine_tile_manager_turtle( tile_type_fly_turtle02, 8, 8 );
	//engine_tile_manager_turtle( tile_type_sea_turtleB3, 12, 9 );

	//engine_tile_manager_cloud( tile_type_cloud01, 18, 2 );
	//engine_tile_manager_cloud( tile_type_cloud02, 24, 2 );

	//engine_tile_manager_sign( tile_type_sign_goal, 10, 12 );
	//engine_tile_manager_sign( tile_type_sign_numb, 14, 12 );


	engine_tile_manager_section01( 2, 2 );
	//engine_tile_manager_ground02( 4, 14 );
}

void engine_screen_manager_update()
{
	//unsigned char input;
	//input = engine_input_manager_hold_down();
}
