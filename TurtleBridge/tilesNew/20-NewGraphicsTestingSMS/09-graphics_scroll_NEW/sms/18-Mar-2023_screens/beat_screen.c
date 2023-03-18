#include "beat_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/content_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/riff_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 261
#endif

void screen_beat_screen_load()
{
	struct_scroll_object *so = &global_scroll_object;
	struct_game_object *go = &global_game_object;
	unsigned char value;
	value = 1;

	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );
	// Draw screen specific graphics.
	engine_graphics_manager_clouds( go->game_cloud );
	engine_graphics_manager_sea();
	//engine_font_manager_text( "BEAT SCREEN", 21, 0 );
	//engine_font_manager_text( "BEAT SCREEN", value, 2 );
	devkit_SMS_displayOn();

	//value = so->scrollLeftX >> 0;
}

void screen_beat_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	struct_game_object *go = &global_game_object;
	unsigned char input;// , index;
	//unsigned char loops, count, value;
//	unsigned char player_loadY;
	unsigned char checkScreen;

//	index = 2;
	input = engine_input_manager_hold( input_type_right );
	if( input )
	{
		engine_level_manager_init( go->game_level );
		//value = engine_random_manager_next( SPRITE_TILES );
		//engine_font_manager_data( value, 10, 10 );

		checkScreen = lo->check_width * go->game_point;
		engine_scroll_manager_load( checkScreen, lo->level_check, lo->level_size );
		engine_level_manager_draw_screen( checkScreen );
		// TODO - can I delete the int representation i.e game_screen?
		//game_screen = lo->check_width * go->game_point;
		//engine_level_manager_draw_screen( game_screen );
		//engine_level_manager_draw_point( go->game_point );
		// TODO - can I delete the int representation i.e game_screen?

		//engine_player_manager_initX( go->game_difficulty, go->game_world );
		//engine_player_manager_loadX( checkScreen );
		////engine_player_manager_loadX( go->game_point );	// TODO - remove as this is wrong!!
		//player_loadY = level_platforms[ po->lookX ];
		//engine_player_manager_loadY( player_loadY );
		//engine_player_manager_draw();
	}


	//input = engine_input_manager_hold( input_type_fire1 );
	//if( input )
	//{
	//	engine_font_manager_text( "PCM PLAYING", 10, 4 );

	//	count = riff_counts[ index ];
	//	value = riff_indexs[ index ];
	//	if( 1 == count )
	//	{
	//		engine_riff_manager_play( value );
	//	}
	//	else
	//	{
	//		for( loops = 0; loops < count; loops++ )
	//		{
	//			engine_riff_manager_play( loops + value );
	//		}
	//	}
	//}

	engine_random_manager_rand();
	*screen_type = screen_type_beat;
}
