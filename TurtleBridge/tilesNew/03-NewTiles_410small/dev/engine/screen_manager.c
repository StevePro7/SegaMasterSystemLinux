#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "tile_manager.h"
#include <stdbool.h>

#define MAX_COUNT	20
static unsigned char x = 32;
static unsigned char y = 128-64;// 64;

static void bonus_level();
static void texts_level();
static unsigned char dx;
static unsigned char count;
static unsigned char tiles;
static unsigned char frame;
static bool walking;
static unsigned char frames[] = { 0, 1, 2, 1 };

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 4 );
	texts_level();

	count = 0;
	tiles = 0;
	frame = 0;
	dx = 0;
	walking = false;
}

void engine_screen_manager_update()
{
	unsigned char input = 0;
	
	if( !walking )
	{
		tiles = 0;
		input = engine_input_manager_move_right();
		if( input )
		{
			engine_font_manager_draw_text( "WALKING", 4, 5 );
			walking = true;
		}
	}
	else
	{
		count++;
		if( count >= MAX_COUNT )
		{
			dx++;
			count = 0;
			frame++;
			if( frame > 2 )
			{
				frame = 0;
				walking = false;
			}

			tiles = frames[ frame ];
		}
	}
	
	engine_sprite_manager_draw( x + dx, y, 0 + tiles );

	engine_sprite_manager_draw( 128, 64, 17 );
	engine_sprite_manager_draw( 192, 80, 18 );
}

void engine_screen_manager_updateX()
{
	unsigned char delta = 0;
	unsigned char input = 0;
	input = engine_input_manager_hold_fire1();
	if( input )
	{

	}

	input = engine_input_manager_move_left();
	if( input )
	{
		engine_tile_manager_draw_pipe( tile_type_sea_turtleA1, 4, 19, 4, 3, 0 );
		x--;
	}
	input = engine_input_manager_move_right();
	if( input )
	{
		engine_tile_manager_draw_pipe( tile_type_sea_turtleA1, 5, 19, 4, 3, 1 );
		x++;
	}
	input = engine_input_manager_move_up();
	if( input )
	{
		engine_tile_manager_draw_pipe( tile_type_sea_turtleA1, 6, 19, 4, 3, 2 );
		y--;
	}
	input = engine_input_manager_move_down();
	if( input )
	{
		engine_tile_manager_draw_pipe( tile_type_sea_turtleA1, 7, 19, 4, 3, 3 );
		y++;
	}

	engine_sprite_manager_draw( x + 0, y, delta + 0 );

	// fish
	//engine_sprite_manager_draw( x + 40, y, delta + 18 );
	//engine_sprite_manager_draw( x + 80, y, delta + 19 );
	//engine_sprite_manager_draw( x + 120, y, delta + 22 )

	////engine_sprite_manager_fish( x + 96, y );


}

static void texts_level()
{
	engine_font_manager_draw_text( "1234", 4, 7 );
	engine_font_manager_draw_text( "1234", 16, 7 );
	engine_font_manager_draw_text( "1", 3, 8 );	engine_font_manager_draw_text( "1", 15, 8 );
	engine_font_manager_draw_text( "2", 3, 9 ); engine_font_manager_draw_text( "2", 15, 9 );
	engine_font_manager_draw_text( "3", 3, 10 ); engine_font_manager_draw_text( "3", 15, 10 );
	engine_font_manager_draw_text( "4", 3, 11 ); engine_font_manager_draw_text( "4", 15, 11 );
}

static void bonus_level()
{
	unsigned char col = 0;
	unsigned char max = 3;

	engine_tile_manager_sky();
	engine_tile_manager_seaX( 4 );


	engine_tile_manager_draw_normX( tile_type_cloud_smallC, 3, 2 );
	engine_tile_manager_draw_normX( tile_type_cloud_largeC, 8, 2 );
	engine_tile_manager_draw_flipX( tile_type_cloud_largeC, 18, 2 );
	engine_tile_manager_draw_flipX( tile_type_cloud_smallC, 25, 2 );

	engine_tile_manager_draw_flipX( tile_type_large_ground, 0, 12 );
	engine_tile_manager_draw_normX( tile_type_small_ground, 20, 16 );
	//engine_tile_manager_draw_normX( tile_type_trees_planeB, 10, 10 );
	//engine_tile_manager_draw_normX( tile_type_sign_sendAll, 10, 10 );
	//engine_tile_manager_draw_normX( tile_type_sign_goalAll, 20, 10 );

	// tile_type_diver_turtle
	// tile_type_hover_turtle
	// tile_type_flyer_turtle
	for( col = 0; col < max; col++ )
	{
		engine_tile_manager_draw_scrollX( tile_type_sign_goalAll, 24 + col, 13, col );
	}

	//engine_tile_manager_draw_turtleX( tile_type_hover_turtle, 0, 7, 8 );
	engine_tile_manager_draw_turtleX( tile_type_flyer_turtle, 0, 14, 14 );

	// ORG
	//engine_tile_manager_draw_flip( tile_type_section01, 0, 12, 16, 10, 6, 16 );
	//engine_tile_manager_draw_norm( tile_type_section01, 23, 12, 16, 10, 0, 9 );
	//engine_tile_manager_sign( tile_type_sign_numb, 8, 9 );
	//engine_tile_manager_sign( tile_type_sign_goal, 28, 9 );

	// NEW
	//engine_tile_manager_draw_flip( tile_type_section01b, 0, 16, 16, 6, 6, 16 );
	//engine_tile_manager_draw_norm( tile_type_section01b, 23, 16, 16, 6, 0, 9 );
	//engine_tile_manager_sign( tile_type_sign_numb, 8, 13 );
	//engine_tile_manager_sign( tile_type_sign_goal, 28, 13 );


	//engine_tile_manager_draw_tile( tile_type_section02, 16, 18);
	//engine_tile_manager_draw_tile( tile_type_section03, 24, 8 );

	// Clouds
	//engine_tile_manager_draw_norm( tile_type_cloud01, 3, 1, 4, 3, 0, 4 );
	//engine_tile_manager_draw_flip( tile_type_cloud01, 27, 2, 4, 3, 0, 4 );
	//engine_tile_manager_draw_norm( tile_type_cloud02, 19, 4, 6, 3, 0, 6 );
	//engine_tile_manager_draw_flip( tile_type_cloud02, 10, 2, 6, 3, 0, 6 );

	//engine_tile_manager_draw_flip( tile_type_section01b, 0, 16, 16, 6, 6, 16 );
	//
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

	engine_tile_manager_turtle( tile_type_fly_turtle01, 10, 10 );
	engine_tile_manager_turtle( tile_type_fly_turtle01, 15, 10 );
	engine_tile_manager_turtle( tile_type_fly_turtle01, 20, 10 );
}