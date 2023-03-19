#include "over_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/bank2.h"

static void printGameOver()
{
}




void screen_over_screen_load()
{
	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );

	// Draw screen specific graphics.
	//engine_graphics_manager_clouds( go->game_cloud );
	engine_graphics_manager_sea();
	//engine_font_manager_text( "OVER SCREEN", 10, 2 );
	//printBeatGame();
	printGameOver();
	devkit_SMS_displayOn();

//egine_music_manager_playnorepeat( 5);		// cont
}

void screen_over_screen_update( unsigned char *screen_type )
{
	//signed char input1, input2;

	

	//engine_scroll_manager_update( 0 );
	//engine_player_manager_draw();
	*screen_type = screen_type_over;
}


void screen_over_screen_loadX()
{
	//struct_player_object *po = &global_player_object;
	//struct_level_object *lo = &global_level_object;
	struct_game_object *go = &global_game_object;
	//unsigned char player_loadY;
	//unsigned char checkScreen;

	//devkit_SMS_displayOff();
	//engine_graphics_manager_screen( CLEAR_TILE_BLUE );


	//// Work in terms of screens.
	//checkScreen = lo->check_width * go->game_point;
	//engine_scroll_manager_load( checkScreen, lo->level_check, lo->level_size );
	//engine_level_manager_draw_screen( checkScreen );


	//engine_player_manager_initX( go->game_difficulty, go->game_world );
	//engine_player_manager_loadX( checkScreen );
	//player_loadY = level_platforms[ po->lookX ];
	//engine_player_manager_loadY( player_loadY );
	//engine_player_manager_draw();

	//engine_graphics_manager_sea();
	//engine_graphics_manager_clouds( go->game_cloud );
	//engine_level_manager_draw_screen( checkScreen );		// Weird - must draw this twice otherwise clouds + sea don't draw??

	//printStuff();
	//devkit_SMS_displayOn();

	//struct_game_object *go = &global_game_object;
}