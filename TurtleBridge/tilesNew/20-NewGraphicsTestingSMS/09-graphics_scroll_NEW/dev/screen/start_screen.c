// TODO - check includes
#include "start_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/game_manager.h"
#include "../engine/hack_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/riff_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/timer_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank2.h"
#include <stdbool.h>

#ifdef _CONSOLE
#else
#pragma disable_warning 126
#endif

#define STARTING_SCROLLING		1

//static unsigned char screen_intro_screen_delay;
static unsigned char cheat_count;
static unsigned char delay;
static unsigned char check;
static bool flag;

void screen_start_screen_load()
{
	struct_game_object *go = &global_game_object;

	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );

	// Draw screen specific graphics.
	engine_graphics_manager_title();
	engine_graphics_manager_sea();


	// TODO for testing
	engine_level_manager_init( go->game_level );
	engine_level_manager_draw_screen( 0 );
	// TODO for testing

	engine_util_manager_locale_texts( 4, 9, 7 );
	if( STARTING_SCROLLING )
	{
		engine_scroll_manager_para_load( 0, 0 );
	}

	// TODO implement properly
	engine_font_manager_text( "JUMPS", 27, 3 );
	engine_font_manager_text( "   UP", 27, 4 );
	engine_font_manager_text( "RIGHT", 27, 5 );
	engine_font_manager_text( "FIRE1", 27, 6 );

	engine_scroll_manager_para_update( 0 );
	devkit_SMS_displayOn();

	engine_delay_manager_load( NORMAL_DELAY );
	flag = true;
	check = 0;
}

// TODO add the cheat detect here...
void screen_start_screen_update( unsigned char *screen_type )
{
	struct_hack_object *ho = &global_hack_object;
	//unsigned char index, maxim;
	unsigned char input;
	unsigned char cloud;

	if( 1 == check )
	{
		engine_scroll_manager_para_update( 0 );
		if( !devkit_PSGSFXGetStatus() )
		{
			engine_sound_manager_stop();
			devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
			*screen_type = screen_type_diff;
			return;
		}
	}
	else
	{
		input = engine_input_manager_hold( input_type_fire1 );
		if( input )
		{
			engine_scroll_manager_para_update( 0 );

			// TODO riff
			//engine_font_manager_text( "DIFF SCREEN", 10, 10 );
			//*screen_type = screen_type_diff;

			cloud = engine_random_manager_next( SPRITE_TILES );
			engine_game_manager_set_cloud_form( cloud );

			engine_util_manager_locale_texts( 4, 9, 7 );
			engine_sound_manager_play( 2 );
			check = 1;
			return;
			// TODO - update magic number?
			//maxim = 3;
			//index = engine_random_manager_next( maxim );
			//index = 0;		// TODO - remove this!!

			// TODO -uncomment
			//engine_scroll_manager_para_update( 0 );
			//engine_scroll_manager_para_load( 0, 0 );
			//engine_riff_manager_loop( index );
			//engine_scroll_manager_para_update( 0 );
			//devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
			//*screen_type = screen_type_intro;
			//return;
		}
		input = engine_input_manager_hold( input_type_fire2 );
		if( input )
		{
			engine_scroll_manager_para_update( 0 );
			*screen_type = screen_type_title;
			return;
		}

		delay = engine_delay_manager_update();
		if( delay )
		{
			if( !ho->hack_delay )
			{
				flag = !flag;
				if( flag )
				{
					engine_util_manager_locale_texts( 4, 9, 7 );
				}
				else
				{
					engine_util_manager_locale_blank( 0, 9, 7 );
				}
			}
		}

		if( STARTING_SCROLLING )
		{
			engine_scroll_manager_para_update( 1 );
			//engine_scroll_manager_section( 1 );		// TODO delete
		}
	}

	engine_random_manager_rand();
	*screen_type = screen_type_start;
}
