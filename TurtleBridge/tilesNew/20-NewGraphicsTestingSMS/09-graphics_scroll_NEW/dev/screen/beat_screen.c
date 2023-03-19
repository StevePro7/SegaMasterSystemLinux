#include "beat_screen.h"
#include "../engine/audio_manager.h"
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
#include "../engine/tile_manager.h"
#include "../engine/timer_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/bank2.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 261
#endif

static void printBeatGame()
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	unsigned char x, y, d;

	x = 4;
	y = 0;
	d = 0;
	engine_graphics_manager_image( tiles, TILE_TURTLE_FLIP, x + 0, y + 1, 4, 3 );
	engine_graphics_manager_image( tiles, TILE_TURTLE_FLIP, x + 4, y, 4, 3 );
	engine_graphics_manager_image( tiles, TILE_TURTLE_FLIP, x + 8, y, 4, 3 );
	engine_graphics_manager_image_flip( tiles, TILE_TURTLE_FLIP, x + 12 + d, y, 4, 3 );
	engine_graphics_manager_image_flip( tiles, TILE_TURTLE_FLIP, x + 16 + d, y, 4, 3 );
	engine_graphics_manager_image_flip( tiles, TILE_TURTLE_FLIP, x + 20 + d, y + 1, 4, 3 );

	y = 5;
	engine_graphics_manager_image( tiles, TILE_TURTLE_FLIP, x + 0, y - 1, 4, 3 );
	engine_graphics_manager_image( tiles, TILE_TURTLE_FLIP, x + 4, y, 4, 3 );
	engine_graphics_manager_image( tiles, TILE_TURTLE_FLIP, x + 8, y, 4, 3 );
	engine_graphics_manager_image_flip( tiles, TILE_TURTLE_FLIP, x + 12 + d, y, 4, 3 );
	engine_graphics_manager_image_flip( tiles, TILE_TURTLE_FLIP, x + 16 + d, y, 4, 3 );
	engine_graphics_manager_image_flip( tiles, TILE_TURTLE_FLIP, x + 20 + d, y - 1, 4, 3 );

	engine_font_manager_text( "CONGLATURATION", 9, 3 );
	engine_font_manager_text( "AWINNER IS YOU", 9, 4 );
	//engine_font_manager_text( "-012345678901234567890123456789-", 0, 4 );
}

void screen_beat_screen_load()
{
	struct_scroll_object *so = &global_scroll_object;
	struct_game_object *go = &global_game_object;

	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );
	
	// Draw screen specific graphics.
	engine_graphics_manager_clouds( go->game_cloud );
	engine_graphics_manager_sea();
	//gine_font_manager_text( "BEAT SCREEN", 21, 2 );
	//engine_font_manager_text( "BEAT SCREEN", value, 2 );
	printBeatGame();
	devkit_SMS_displayOn();

//ngine_frame_manager_load();
//ngine_frame_manager_draw();

	engine_music_manager_playnorepeat( 6 );
	//value = so->scrollLeftX >> 0;
}

void screen_beat_screen_update( unsigned char *screen_type )
{
	unsigned char input1, input2;
	// TODO reset game world, round, point to 1 + test
	//	engine_game_manager_set_level_data( 0, 0, 0 );

	if( !devkit_PSGGetStatus() )
	{
		devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
		engine_music_manager_stop();
		//engine_font_manager_text( "FINISH", 20, 10 );
		// Resume from init
		*screen_type = screen_type_start;
		return;
	}

//	struct_player_object *po = &global_player_object;
//	struct_level_object *lo = &global_level_object;
//	struct_game_object *go = &global_game_object;
//nsigned char input;// , index;
//	//unsigned char loops, count, value;
////	unsigned char player_loadY;
//	unsigned char checkScreen;
//

	input1 = engine_input_manager_hold( input_type_fire1 );
	input2= engine_input_manager_hold( input_type_fire2);
	if( input1 || input2 )
	{
		devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
		engine_music_manager_stop();
		//engine_font_manager_text( "FINISH", 20, 10 );
		// Resume from init
		*screen_type = screen_type_start;
		return;
	}



	//put1= engine_input_manager_hold( input_type_left );
	//( input )
	{
		//engine_sound_manager_play( 2 );
	}
////	index = 2;
	//put = engine_input_manager_hold( input_type_right );
	//( input )
	{
//engine_music_manager_stop();
		//devkit_PSGSFXStop();
//		engine_level_manager_init( go->game_level );
//		//value = engine_random_manager_next( SPRITE_TILES );
//		//engine_font_manager_data( value, 10, 10 );
//
//		checkScreen = lo->check_width * go->game_point;
//		engine_scroll_manager_load( checkScreen, lo->level_check, lo->level_size );
//		engine_level_manager_draw_screen( checkScreen );
	}
//
//ngine_frame_manager_update();
//ngine_frame_manager_draw();
//
//	engine_random_manager_rand();
	*screen_type = screen_type_beat;
}
