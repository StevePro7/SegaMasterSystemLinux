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

static void printBeatGame();

void screen_beat_screen_load()
{
	struct_scroll_object *so = &global_scroll_object;
	struct_game_object *go = &global_game_object;

	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );
	
	engine_graphics_manager_sea();
	printBeatGame();
	devkit_SMS_displayOn();

	engine_frame_manager_load();
	engine_frame_manager_draw();

	// TODO perfect this i.e. w/o debug_mgr
	//	engine_game_manager_set_level_data( 0, 0, 0 );
	engine_music_manager_playnorepeat( 6 );
	//value = so->scrollLeftX >> 0;
}

void screen_beat_screen_update( unsigned char *screen_type )
{
	unsigned char input1, input2;
	if( !devkit_PSGGetStatus() )
	{
		devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
		engine_music_manager_stop();
		//engine_font_manager_text( "FINISH", 20, 10 );
		// Resume from init
		//*screen_type = screen_type_start;
		return;
	}



	input1 = engine_input_manager_hold( input_type_fire1 );
	input2= engine_input_manager_hold( input_type_fire2);
	if( input1 || input2 )
	{
		devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
		engine_music_manager_stop();
		//engine_font_manager_text( "FINISH", 20, 10 );
		// Resume from init
	//	*screen_type = screen_type_start;
		return;
	}



	
	*screen_type = screen_type_beat;
}


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