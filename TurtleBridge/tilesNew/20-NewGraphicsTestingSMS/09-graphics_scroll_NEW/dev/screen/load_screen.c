#include "load_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/command_manager.h"
#include "../engine/content_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/riff_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"

static unsigned char check;

#ifdef _CONSOLE
#else
#pragma disable_warning 261
#endif

void screen_load_screen_load()
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	struct_game_object *go = &global_game_object;
	unsigned char player_loadY;
	unsigned char checkScreen;

	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );


	// Work in terms of screens.
	checkScreen = lo->check_width * go->game_point;
	engine_scroll_manager_load( checkScreen, lo->level_check, lo->level_size );
	engine_level_manager_draw_screen( checkScreen );


	engine_player_manager_initX( go->game_difficulty, go->game_world );
	engine_player_manager_loadX( checkScreen );
	player_loadY = level_platforms[ po->lookX ];
	engine_player_manager_loadY( player_loadY );
	engine_player_manager_draw();

	engine_graphics_manager_sea();
	engine_graphics_manager_clouds( go->game_cloud );
	engine_level_manager_draw_screen( checkScreen );		// Weird - must draw this twice otherwise clouds + sea don't draw??
	devkit_SMS_displayOn();

	engine_riff_manager_init();
	engine_command_manager_init();
	check = 0;
}

void screen_load_screen_update( unsigned char *screen_type )
{
	struct_game_object *go = &global_game_object;
	unsigned char index, maxim;

	if( !check )
	{
		//engine_player_manager_draw();		// TODO - makes blink [I think] so leave out
		check = 1;
		*screen_type = screen_type_load;
		return;
	}
	else
	{
		if( go->game_start )
		{
			engine_player_manager_draw();
			// TODO - update magic number?
			maxim = 3;
			index = engine_random_manager_next( maxim );
			index = 0;		// TODO - remove this!!
			index += RIFF_START_LOAD;

			// TODO -uncomment
			//engine_riff_manager_loop( index );
		}
	}

	//*screen_type = screen_type_dead;
	//*screen_type = screen_type_over;
	//*screen_type = screen_type_cont;
	//*screen_type = screen_type_test;
	*screen_type = screen_type_play;
}
