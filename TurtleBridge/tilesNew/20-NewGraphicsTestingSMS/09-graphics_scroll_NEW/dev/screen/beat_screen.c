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
#include "../engine/timer_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"
//#include "../devkit/_snd_manager.h"

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
	engine_font_manager_text( "BEAT SCREEN", 21, 2 );
	//engine_font_manager_text( "BEAT SCREEN", value, 2 );
	devkit_SMS_displayOn();

	engine_frame_manager_load();
	engine_frame_manager_draw();

	engine_music_manager_playnorepeat( 6 );
	//value = so->scrollLeftX >> 0;
}

void screen_beat_screen_update( unsigned char *screen_type )
{
//	struct_player_object *po = &global_player_object;
//	struct_level_object *lo = &global_level_object;
//	struct_game_object *go = &global_game_object;
	unsigned char input;// , index;
//	//unsigned char loops, count, value;
////	unsigned char player_loadY;
//	unsigned char checkScreen;
//
	input = engine_input_manager_hold( input_type_left );
	if( input )
	{
		//engine_sound_manager_play( 2 );
	}
////	index = 2;
	input = engine_input_manager_hold( input_type_right );
	if( input )
	{
		engine_music_manager_stop();
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
	engine_frame_manager_update();
	engine_frame_manager_draw();
//
//	engine_random_manager_rand();
	*screen_type = screen_type_beat;
}
