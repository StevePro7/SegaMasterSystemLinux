#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "tile_manager.h"

static unsigned char col;

void engine_screen_manager_init()
{
	engine_tile_manager_sky();
	engine_tile_manager_sea();
	//engine_font_manager_draw_text( "REVERSE", 2, 2 );

	engine_tile_manager_section01_left( -8, 12 );
	engine_tile_manager_section01( 24, 12 );

	engine_tile_manager_section02( 8, 18 );
	engine_tile_manager_section03( 24, 2 );

	engine_tile_manager_cloud( tile_type_cloud01, 6, 2 );
	engine_tile_manager_cloud( tile_type_cloud02, 15, 1 );

	//engine_tile_manager_turtle( tile_type_sea_turtleA1, 8, 19 );
	////engine_tile_manager_turtle( tile_type_sea_turtleA2, 8, 11 );
	//engine_tile_manager_turtle( tile_type_sea_turtleA3, 12, 21 );

	//engine_tile_manager_turtle( tile_type_sea_turtleB1, 16, 19 );
	//engine_tile_manager_turtle( tile_type_sea_turtleB2, 20, 20 );
	////engine_tile_manager_turtle( tile_type_sea_turtleB3, 28, 12 );

	////engine_tile_manager_turtle( tile_type_fly_turtle01, 18, 8 );
	////engine_tile_manager_turtle( tile_type_fly_turtle02, 25, 8 );

	//engine_tile_manager_sign( tile_type_sign_numb, 26, 9 );

	col = 0;
}

void engine_screen_manager_update()
{
	//unsigned char input;
	//input = engine_input_manager_hold_right();
	//if( input )
	//{
	//	engine_tile_manager_scroll_test( 10, 14, col );
	//	col++;
	//}
}


void engine_screen_manager_initX()
{
	engine_tile_manager_sky();

	engine_font_manager_draw_text( "ADRIANA7", 2, 2 );

	//engine_tile_manager_turtle( tile_type_fly_turtle02, 8, 8 );
	//engine_tile_manager_turtle( tile_type_sea_turtleB3, 12, 9 );

	//engine_tile_manager_cloud( tile_type_cloud01, 18, 2 );
	//engine_tile_manager_cloud( tile_type_cloud02, 24, 2 );

	//engine_tile_manager_sign( tile_type_sign_goal, 10, 12 );
	//engine_tile_manager_sign( tile_type_sign_numb, 14, 12 );


	//engine_tile_manager_section01( 2, 2 );
	//engine_tile_manager_section02( 2, 12 );
	//engine_tile_manager_section03( 4, 2 );
}
