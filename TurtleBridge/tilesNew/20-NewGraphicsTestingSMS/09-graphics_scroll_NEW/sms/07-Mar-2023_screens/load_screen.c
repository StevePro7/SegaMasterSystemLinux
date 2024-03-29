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
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"

//static void drawScreen();

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
	//unsigned int game_screen;

	//devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();

	//engine_graphics_manager_level( cloud_formation );
	engine_graphics_manager_clouds( go->game_cloud );
	engine_graphics_manager_sea();

	//engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 1, 5, 8, 3 );
	//engine_tile_manager_stevepro2( TILE_CLOUD_LARGE, 9, 5, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 17, 5, 8, 3 );
	//engine_tile_manager_stevepro2( TILE_CLOUD_LARGE, 25, 5, 8, 3 );
	//engine_graphics_manager_clouds( go->game_cloud );

	// Work in terms of screens.
	checkScreen = lo->check_width * go->game_point;
	engine_scroll_manager_load( checkScreen, lo->level_check, lo->level_size );
	engine_level_manager_draw_screen( checkScreen );
	// TODO - can I delete the int representation i.e game_screen?
	//game_screen = lo->check_width * go->game_point;
	//engine_level_manager_draw_screen( game_screen );
	//engine_level_manager_draw_point( go->game_point );
	// TODO - can I delete the int representation i.e game_screen?

	engine_player_manager_initX( go->game_difficulty, go->game_world );
	engine_player_manager_loadX( checkScreen );
	//engine_player_manager_loadX( go->game_point );	// TODO - remove as this is wrong!!
	player_loadY = level_platforms[ po->lookX ];
	engine_player_manager_loadY( player_loadY );
	engine_player_manager_draw();

	engine_command_manager_init();
	//engine_command_manager_load();		// TODO remove

	// TODO delete 
	//engine_player_manager_loadY( 18 );
	// TODO delete 
	

	// TODO delete
	//engine_debug_manager_printout();
	//engine_font_manager_text( "WORLD01ROUND01POINT03/04", 4, 3 );
	//devkit_SMS_displayOn();

	//engine_font_manager_text( "CHECK SCREEN LOAD", 10, 0 );
	//engine_font_manager_data( checkScreen, 10, 1 );
}

void screen_load_screen_update( unsigned char *screen_type )
{
	engine_scroll_manager_update( 0 );
	engine_player_manager_draw();
	//unsigned char input;
	//input = engine_input_manager_hold( input_type_left );
	//if( input )
	//{
	//	engine_player_manager_left();
	//}
	////input = engine_input_manager_move(input_type_right);
	//input = engine_input_manager_hold( input_type_right );
	//if( input )
	//{
	//	engine_player_manager_right(1);
	//}
	//input = engine_input_manager_hold( input_type_down );
	//if( input )
	//{
	//	engine_player_manager_down();
	//}

	//engine_player_manager_draw();

	//*screen_type = screen_type_dead;
	//*screen_type = screen_type_over;
	//*screen_type = screen_type_cont;
	//*screen_type = screen_type_option;
	//*screen_type = screen_type_ready;
	*screen_type = screen_type_play;
	//*screen_type = screen_type_intro;				// Integrate input => commands to play game.
	//*screen_type = screen_type_test;				// Integrate command playback POC
}

//
//static void drawScreen()
//{
//	unsigned int tile = TILE_TURTLE_FLY4;
//
//	devkit_SMS_displayOff();
//	engine_asm_manager_clear_VRAM();
//	engine_content_manager_bggame();
//	engine_content_manager_sprite();
//	engine_graphics_manager_sea();
//
//	engine_tile_manager_stevepro( tile, 0, 8, 4, 14 );
//	engine_tile_manager_stevepro( tile, 4, 8, 4, 14 );
//	engine_tile_manager_stevepro( tile, 8, 8, 4, 14 );
//	engine_tile_manager_stevepro( tile, 12, 8, 4, 14 );
//	engine_tile_manager_stevepro( tile, 16, 8, 4, 14 );
//
//	//engine_tile_manager_stevepro( TILE_ISLAND_MIDD, 0, 8, 4, 14 );
//	//engine_tile_manager_stevepro( TILE_ISLAND_MIDD, 4, 8, 4, 14 );
//	//engine_tile_manager_stevepro( TILE_ISLAND_RGHT, 8, 8, 4, 14 );
//	//engine_tile_manager_stevepro( TILE_TURTLE_SEA1, 12, 8, 4, 14 );
//	//engine_tile_manager_stevepro( TILE_TURTLE_SEA1, 16, 8, 4, 14 );
//	//engine_tile_manager_stevepro( tile, 16, 8, 4, 14 );
//	//engine_tile_manager_stevepro( TILE_BRIDGE_RGHT, 12, 8, 4, 14 );
//
//	engine_tile_manager_stevepro( TILE_PLAY_TITLE, 4, 0, 24, 3 );
//	engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 2, 4, 8, 3 );
//	engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 10, 4, 8, 3 );
//	engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 18, 4, 8, 3 );
//	engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 26, 4, 8, 3 );
//	engine_player_manager_draw();
//	devkit_SMS_displayOn();
//}
