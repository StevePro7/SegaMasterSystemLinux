#include "intro_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/collision_manager.h"
#include "../engine/content_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/hack_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"
#include <stdbool.h>

static bool complete;

void screen_intro_screen_load()
{
	struct_hack_object *ho = &global_hack_object;
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	unsigned char player_startY;
	unsigned char level, screen;
	unsigned char difficulty;

	level = 0;
	screen = 0;		//checkpoint

	//level = ho->hack_object_level;
	//screen = ho->hack_object_screen;

	engine_level_manager_init( level );

	//difficulty = difficulty_type_easier;
	difficulty = difficulty_type_normal;
	//difficulty = difficulty_type_harder;
	difficulty = difficulty_type_insane;
	engine_player_manager_initX( difficulty );
	engine_collision_manager_init( difficulty );

	//engine_player_manager_initX( difficulty_type_easier );
	//engine_player_manager_initX( difficulty_type_normal );
	//engine_player_manager_initX( difficulty_type_harder );
	//engine_player_manager_initX( difficulty_type_insane );
	//engine_collision_manager_init( difficulty_type_insane );

	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	engine_graphics_manager_sea();
	engine_graphics_manager_title();
	engine_graphics_manager_clouds( 88 );
	//engine_tile_manager_stevepro( TILE_PLAY_TITLE, 4, 0, 24, 3 );
	////engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 1, 4, 8, 3 );
	////engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 9, 4, 8, 3 );
	////engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 17, 4, 8, 3 );
	////engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 25, 4, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 1, 5, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 9, 5, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 17, 4, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 25, 5, 8, 3 );
	engine_level_manager_draw_point( screen );
	engine_player_manager_loadX( screen );

//	player_startY = lo->level_platforms[ po->tileX ];
	player_startY = level_platforms[ po->lookX ];
	engine_player_manager_loadY( player_startY );
	engine_player_manager_draw();
	devkit_SMS_displayOn();
	engine_scroll_manager_load( screen, lo->level_size );
	engine_music_manager_play( 1 );

	//devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
	//engine_font_manager_data( ho->hack_object_level, 12, 12 );
	//engine_font_manager_data( ho->hack_object_screen, 12, 13 );
	//engine_debug_manager_printout();
	complete = false;
}

void screen_intro_screen_update( unsigned char *screen_type )
{
	struct_scroll_object *so = &global_scroll_object;
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	unsigned char input;
	unsigned char delta;
	unsigned char value;
	signed char collision;
	enum_scroll_state scroll_state;

	//engine_player_manager_count();
	delta = 0;
	//input = engine_input_manager_hold( input_type_fire2 );
	//if( input )
	//{
	//	engine_scroll_manager_update( 0 );
	//	*screen_type = screen_type_over;
	//	return;
	//}
	//input = engine_input_manager_hold( input_type_right );
	input = engine_input_manager_move( input_type_right );
	//input = 1;
	if( input )
	{
		delta = 1;
	}
	input = engine_input_manager_move( input_type_down );
	if( input )
	{
		delta = 2;
	}
	input = engine_input_manager_move( input_type_left );
	if( input )
	{
		delta = 3;
	}
	input = engine_input_manager_move( input_type_up );
	if( input )
	{
		delta = 4;
	}
	//input = engine_input_manager_move( input_type_fire1 );
	//if( input )
	//{
	//	delta *= 2;
	//}

	if( 0 == delta )
	{
		delta = 0;
		engine_scroll_manager_update( delta );
	}

	if( !complete )
	{
		if( delta > 0 )
		{
			for( value = 0; value < delta; value++ )
			{
				scroll_state = engine_scroll_manager_update( 1 );
				if( scroll_state_tile == scroll_state )
				{
					engine_level_manager_draw_column( so->scrollColumn );
					//complete = so->scrollColumn >= lo->level_size;
					//if( complete )
					//{
					//	//engine_font_manager_text( "NEXT SCREEN", 10, 3 );
					//	break;
					//}
				}
				else if( scroll_state_comp == scroll_state )
				{
					complete = scroll_state_comp == scroll_state;
					if( complete )
					{
						//engine_font_manager_text( "NEXT SCREEN", 10, 3 );
						break;
					}
				}
			}

			engine_player_manager_right( delta );
			//engine_debug_manager_printout();

			collision = engine_collision_manager_player( po->lookX, po->tileY );

			devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
			//engine_font_manager_data( collision, 8, 12 );

			if( INVALID_INDEX == collision )
			{
				engine_font_manager_text( "DEAD", 8, 13 );
			}
			else
			{
				engine_font_manager_text( "    ", 8, 13 );
			}
		}
	}

	//engine_player_manager_update();
//	engine_player_manager_update2();
	engine_player_manager_draw();

	if( complete )
	{
		engine_scroll_manager_update( 0 );
		engine_player_manager_update3();
		*screen_type = screen_type_pass;
		return;
	}

	*screen_type = screen_type_intro;
}
