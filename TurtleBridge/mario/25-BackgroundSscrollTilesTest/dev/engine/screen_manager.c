#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "scroll_manager.h"
#include "sprite_manager.h"
#include "tile_manager.h"

static unsigned char x = 16;
static unsigned char y = 128-32;// 64;

static void bonus_level();

void engine_screen_manager_init()
{
//	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 4 );
	bonus_level();

	//engine_tile_manager_turtle( tile_type_fly_turtle01, 10, y );

	//engine_tile_manager_draw_flip( tile_type_fly_turtle02, 10, 10, 4, 3, 0, 4 );
	//engine_tile_manager_draw_flip( tile_type_section01, 0, 12, 16, 10, 6, 16 );

	//engine_tile_manager_draw_tile( tile_type_cloud02, 4, 4 );
	//engine_tile_manager_draw_tile( tile_type_section05, 4, 4 );
	//engine_tile_manager_draw_flip( tile_type_section05, 4, 4, 8, 10, 0, 8 );		// flip tree

	//engine_tile_manager_sign( tile_type_sign_numb, 4, 4 );
	engine_music_manager_play();
}

void engine_screen_manager_update()
{
	unsigned char delta = 0;
	unsigned char input = 0;
	input = engine_input_manager_move_right();
	if( input )
	{
		engine_scroll_manager_update();
	}

	//input = engine_input_manager_move_left();
	//if( input )
	//{
	//	engine_tile_manager_draw_pipe( tile_type_sea_turtleA1, 4, 19, 4, 3, 0 );
	//	x--;
	//}
	//input = engine_input_manager_move_right();
	//if( input )
	//{
	//	engine_tile_manager_draw_pipe( tile_type_sea_turtleA1, 5, 19, 4, 3, 1 );
	//	x++;
	//}
	//input = engine_input_manager_move_up();
	//if( input )
	//{
	//	engine_tile_manager_draw_pipe( tile_type_sea_turtleA1, 6, 19, 4, 3, 2 );
	//	y--;
	//}
	//input = engine_input_manager_move_down();
	//if( input )
	//{
	//	engine_tile_manager_draw_pipe( tile_type_sea_turtleA1, 7, 19, 4, 3, 3 );
	//	y++;
	//}

	//engine_sprite_manager_draw( x + 0, y, delta + 0 );

	// fish
	//engine_sprite_manager_draw( x + 40, y, delta + 18 );
	//engine_sprite_manager_draw( x + 80, y, delta + 19 );
	//engine_sprite_manager_draw( x + 120, y, delta + 22 )

	////engine_sprite_manager_fish( x + 96, y );

	
}

static void bonus_level()
{
//	unsigned char y = 11;
	engine_tile_manager_sky();
	engine_tile_manager_sea();

	// new turtles
	engine_tile_manager_draw_offset( tile_type_sea_turtles, 4, 10, 4, 3, 0, 4, 0 );
	engine_tile_manager_draw_offset( tile_type_sea_turtles, 8, 10, 4, 3, 0, 4, 1 );
	engine_tile_manager_draw_offset( tile_type_sea_turtles, 12, 11, 4, 3, 0, 4, 2 );
	engine_tile_manager_draw_offset( tile_type_sea_turtles, 16, 11, 4, 3, 0, 4, 3 );
	engine_tile_manager_draw_offset( tile_type_sea_turtles, 20, 12, 4, 3, 0, 4, 4 );
	engine_tile_manager_draw_offset( tile_type_sea_turtles, 24, 13, 4, 3, 0, 4, 5 );

	engine_tile_manager_draw_offset( tile_type_fly_turtles, 4, 16, 4, 3, 0, 4, 0 );
	engine_tile_manager_draw_offset( tile_type_fly_turtles, 8, 16, 4, 3, 0, 4, 1 );

	//engine_tile_manager_draw_tile( tile_type_section04, 10, 10);
	//engine_tile_manager_draw_tile( tile_type_section04, 24, TREES_HIGH );
	//engine_tile_manager_draw_flip( tile_type_section04, 24, TREES_HIGH, 8, 10, 0, 8 );
	engine_tile_manager_section03( 4, 10, EARTH_HIGH );

	// ORG
	//engine_tile_manager_draw_flip( tile_type_section01, 0, 12, 16, 10, 6, 16 );
	//engine_tile_manager_draw_norm( tile_type_section01, 23, 12, 16, 10, 0, 9 );
	//engine_tile_manager_sign( tile_type_sign_numb, 8, 9 );
	//engine_tile_manager_sign( tile_type_sign_goal, 28, 9 );

	// NEW
	//engine_tile_manager_draw_flip( tile_type_section02, 0, 16, 16, 6, 6, 16 );
	//engine_tile_manager_draw_norm( tile_type_section02, 23, 16, 16, 6, 0, 9 );
	//engine_tile_manager_sign( tile_type_sign_numb, 8, 13 );
	//engine_tile_manager_sign( tile_type_sign_goal, 28, 13 );

	// Clouds
	engine_tile_manager_draw_norm( tile_type_cloud01, 3, 1, 4, 3, 0, 4 );
	engine_tile_manager_draw_flip( tile_type_cloud01, 27, 2, 4, 3, 0, 4 );
	engine_tile_manager_draw_norm( tile_type_cloud02, 19, 4, 6, 3, 0, 6 );
	engine_tile_manager_draw_flip( tile_type_cloud02, 10, 2, 6, 3, 0, 6 );

	//engine_tile_manager_turtle( tile_type_sea_turtleA1, 4, WAVES_HIGH - 2 );
	//engine_tile_manager_turtle( tile_type_sea_turtleA2, 8, WAVES_HIGH - 1 );
	//engine_tile_manager_turtle( tile_type_sea_turtleA3, 12, WAVES_HIGH - 0 );

	//engine_tile_manager_turtle( tile_type_sea_turtleB1, 18, WAVES_HIGH - 2 );
	//engine_tile_manager_turtle( tile_type_sea_turtleB2, 22, WAVES_HIGH - 1 );
	//engine_tile_manager_turtle( tile_type_sea_turtleB3, 26, WAVES_HIGH - 0 );


	//engine_tile_manager_draw_flip( tile_type_section02, 0, 16, 16, 6, 6, 16 );
	
	//for( y = 0; y < 20; y++ )
	//{
	//	//engine_font_manager_draw_data( y, 17, y );
	//}
	
	//engine_tile_manager_turtle( tile_type_sea_turtleA1, 2, 19 );


	//engine_tile_manager_turtle( tile_type_fly_turtle01, 11, y );
	//engine_tile_manager_turtle( tile_type_fly_turtle01, 14, y );
	//engine_tile_manager_turtle( tile_type_fly_turtle01, 17, y );

	//engine_tile_manager_turtle( tile_type_fly_turtle01, 10, y );
	//engine_tile_manager_turtle( tile_type_fly_turtle01, 14, y );
	//engine_tile_manager_turtle( tile_type_fly_turtle01, 18, y );

	//engine_font_manager_draw_text( "123456789ABCD", 10, 12 );

	
}

static void bonus_level_org()
{
	engine_tile_manager_sky();
	engine_tile_manager_sea();

	engine_tile_manager_draw_flip( tile_type_section01, 0, 12, 16, 10, 6, 16 );
	engine_tile_manager_draw_norm( tile_type_section01, 24, 12, 16, 10, 0, 8 );

	//engine_tile_manager_turtle( tile_type_fly_turtle01, 10, 10 );
	//engine_tile_manager_turtle( tile_type_fly_turtle01, 15, 10 );
	//engine_tile_manager_turtle( tile_type_fly_turtle01, 20, 10 );
}