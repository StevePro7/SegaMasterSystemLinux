#include "level_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"
#include <stdbool.h>

#define MAX_LEVELS	40

static unsigned char cursorX[] = { 2, 11, 20 };
static unsigned char cursorIdx;
static unsigned char game_world, game_round, game_point;
static unsigned char game_level;
static unsigned int game_screen;
static unsigned int numb_screen;
//static unsigned char check_width;
static unsigned char player_loadY;

//static void printCursor();
static void printStats();
static void printTexts();
static void updateCheck();

void screen_level_screen_load()
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	struct_game_object *go = &global_game_object;

	game_world = go->game_world;
	game_round = go->game_round;
	game_level = go->game_level;
	game_point = go->game_point;
	game_screen = 0;
	numb_screen = 0;
	cursorIdx = 1;

	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );
	engine_graphics_manager_title();
	engine_graphics_manager_clouds( go->game_cloud );
	engine_graphics_manager_sea();

	engine_level_manager_init( game_level );
	//check_width = lo->level_check / SCREEN_WIDE;
	numb_screen = lo->level_check >> 3;	// / 8 blocks per screen;
	game_screen = lo->check_width * game_point;
	engine_scroll_manager_load( game_screen, lo->level_check, lo->level_size );
	engine_level_manager_draw_screen( game_screen );

	//engine_level_manager_init( game_level );
	//check_width = lo->level_check / SCREEN_WIDE;
	//game_screen = check_width * game_point;
	//engine_level_manager_draw_screen( game_screen );
	////engine_level_manager_draw_point( game_point );

	printTexts();
	printStats();

	//engine_level_manager_init( go->game_level );
	//engine_level_manager_draw_point( go->game_point );
	engine_font_manager_char( '>', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
	
	engine_player_manager_initX( go->game_difficulty, go->game_world );
	engine_player_manager_loadX( game_screen );
	player_loadY = level_platforms[ po->lookX ];
	engine_player_manager_loadY( player_loadY );
	engine_player_manager_draw();

	devkit_SMS_displayOn();
}

void screen_level_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	unsigned char input;
	bool updateLevel = false;

	input = engine_input_manager_hold( input_type_left );
	if( input && 0 != cursorIdx )
	{
		// TODO - take out later - used for level design only!!
		//if( 2 == cursorIdx )
		//{
		//	updateLevel = true;
		//	if( game_screen > 0 )
		//	{
		//		game_screen--;
		//		game_point = game_screen / lo->check_width;
		//	}
		//}
		//else
		//{
			engine_font_manager_char( ' ', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
			cursorIdx--;
			engine_font_manager_char( '>', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
		//}
	}

	input = engine_input_manager_hold( input_type_right );
	if( input )
	{
		if( 2 == cursorIdx )
		{
			updateLevel = true;
			if( game_screen < ( numb_screen - 1 ) )
			{
				game_screen++;
				game_point = game_screen / lo->check_width;
			}
		}
		else
		{
			engine_font_manager_char( ' ', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
			cursorIdx++;
			engine_font_manager_char( '>', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
		}
	}

	input = engine_input_manager_hold( input_type_up );
	if( input )
	{
		updateLevel = true;
		if( 0 == cursorIdx )
		{
			if( game_world > 0 )
			{
				game_world--;
			}
		}
		else if( 1 == cursorIdx )
		{
			if( game_level > 0 )
			{
				//game_world--;
				game_level--;
				game_point = 0;
				game_screen = lo->check_width * game_point;
			}
		}
		else
		{
			if( game_point > 0 )
			{
				game_point--;
				game_screen = lo->check_width * game_point;
			}
			else
			{
				game_point = 0;
				game_screen = lo->check_width * game_point;
			}
		}
	}
	input = engine_input_manager_hold( input_type_down );
	if( input )
	{
		updateLevel = true;
		if( 0 == cursorIdx )
		{
			if( game_world < ( MAX_WOLRDS - 1 ) )
			{
				game_world++;
				//game_level++;
				game_point = 0;
				game_screen = lo->check_width * game_point;
			}
		}
		else if( 1 == cursorIdx )
		{
			if( game_level < MAX_LEVELS )
			{
				//game_world++;
				game_level++;
				game_point = 0;
				game_screen = lo->check_width * game_point;
			}
		}
		else
		{
			if( game_point < ( MAX_CHECKS - 1 ) )
			{
				game_point++;
				game_screen = lo->check_width * game_point;
			}
		}
	}

	if( updateLevel )
	{
		//if( game_level > 0 || game_point > 0 )
		{
			updateCheck();
			//engine_level_manager_init( game_level );
			//game_screen = check_width * game_point;
			//engine_level_manager_draw_screen( game_screen );
			////engine_level_manager_draw_point( game_point );

			//engine_player_manager_initX( go->game_difficulty, game_world );
			engine_player_manager_loadX( game_point );
			player_loadY = level_platforms[ po->lookX ];
			engine_player_manager_loadY( player_loadY );
		}

		printStats();
	}

	input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		engine_game_manager_set_level_data( game_world, game_round, game_point );

		// TODO  wire this up correctly!!
		engine_game_manager_set_level_test( game_level );

		// TODO confirm will not go here unless surrounded by hack flag
		//*screen_type = screen_type_option;
		*screen_type = screen_type_init;
		return;
	}

	input = engine_input_manager_hold( input_type_fire2 );
	if( input )
	{
		engine_game_manager_set_level_data( game_world, game_round, game_point );

		// TODO  wire this up correctly!!
		engine_game_manager_set_level_test( game_level );

		*screen_type = screen_type_diff;
		return;
	}

	

	engine_player_manager_draw();
	*screen_type = screen_type_level;
}



static void updateCheck()
{
	struct_level_object *lo = &global_level_object;
	engine_level_manager_init( game_level );
	//check_width = lo->level_check >> 5;	// / SCREEN_WIDE 32px;
	numb_screen = lo->level_check >> 3;	// / 8 blocks per screen;
	engine_level_manager_draw_screen( game_screen );
	//engine_level_manager_draw_point( game_point );
}

static void printStats()
{
	//engine_font_manager_text( "[WORLD[[[[ROUND[[[[POINT[[/[[", 2, 5 );
	unsigned char delta;

	//delta = 0;
	delta = 1;
	

	engine_font_manager_valu( ( game_world + delta ), 9, SHARE_TEXT_ROW );
	//engine_font_manager_valu( ( game_round + delta ), 18, SHARE_TEXT_ROW );	// TODO using level instead of round for testing...
	//engine_font_manager_valu( ( game_level /*+ delta*/ ), 18, SHARE_TEXT_ROW );
	
	engine_font_manager_valu( ( game_point + delta ), 27, SHARE_TEXT_ROW );		// TODO - revert
	//engine_font_manager_data( ( game_point + delta ), 27, SHARE_TEXT_ROW );

	// TODO delete - used for debugging / testing only - print level + screen
	engine_font_manager_data( game_level + 1, 8, SHARE_TEXT_ROW + 1 );
	engine_font_manager_data( numb_screen, 18, SHARE_TEXT_ROW + 1 );
	engine_font_manager_data( game_screen + delta, 27, SHARE_TEXT_ROW + 1 );
	

	//engine_font_manager_char( '0', 26, SHARE_TEXT_ROW );
	//engine_font_manager_char( '/', 28, SHARE_TEXT_ROW );
	//engine_font_manager_char( '0', 29, SHARE_TEXT_ROW );
	//engine_font_manager_char( '4', 30, SHARE_TEXT_ROW );

	//engine_util_manager_locale_texts( 6, 3, SHARE_TEXT_ROW );
	//engine_util_manager_locale_texts( 7, 12, SHARE_TEXT_ROW );
	//engine_util_manager_locale_texts( 8, 21, SHARE_TEXT_ROW );

	
	//engine_font_manager_char( '>', 2, 4 );
	//engine_font_manager_char( '>', 11, 4 );
	//engine_font_manager_char( '>', 20, 4 );
}

static void printTexts()
{
	//engine_font_manager_text( "[WORLD[[[[ROUND[[[[POINT[[/[[", 2, 5 );

	// Print hard coded texts.
	engine_util_manager_locale_texts( 6, 3, SHARE_TEXT_ROW );
	engine_util_manager_locale_texts( 7, 12, SHARE_TEXT_ROW );
	engine_util_manager_locale_texts( 8, 21, SHARE_TEXT_ROW );

	engine_font_manager_char( '0', 8, SHARE_TEXT_ROW );
	engine_font_manager_char( '0', 17, SHARE_TEXT_ROW );
	engine_font_manager_char( '0', 26, SHARE_TEXT_ROW );		// TODO - revert
	engine_font_manager_text( "/04", 28, SHARE_TEXT_ROW );
}
