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

static unsigned char cursorX[] = { 2, 11, 20 };
static unsigned char cursorIdx;
static unsigned char game_world, game_round, game_point;
static unsigned char game_level;
//static void printCursor();
static void printStats();
static void printTexts();
static unsigned char player_loadY;

void screen_level_screen_load()
{
	struct_player_object *po = &global_player_object;
	struct_game_object *go = &global_game_object;

	// TODO delete this.
	//engine_debug_manager_initgame();
	game_world = go->game_world;
	game_round = go->game_round;
	game_level = go->game_level;
	game_point = go->game_point;
	cursorIdx = 1;


	engine_graphics_manager_common();
	//devkit_SMS_displayOff();
	//engine_asm_manager_clear_VRAM();
	//engine_content_manager_bggame();
	//engine_content_manager_sprite();
	//engine_graphics_manager_title();
	//engine_graphics_manager_sea();
	//devkit_SMS_displayOn();


	engine_level_manager_init( game_level );
	engine_level_manager_draw_point( game_point );

	//engine_level_manager_init( go->game_level );
	//engine_level_manager_draw_point( go->game_point );


	printTexts();
	printStats();
	engine_font_manager_char( '>', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
	
	// TODO confirm that will NOT draw player here 
	engine_player_manager_initX( go->game_difficulty, go->game_world );
	engine_player_manager_loadX( go->game_point );
	player_loadY = level_platforms[ po->lookX ];
	engine_player_manager_loadY( player_loadY );
	engine_player_manager_draw();
}

void screen_level_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	unsigned char input;
	bool updateLevel = false;

	input = engine_input_manager_hold( input_type_left );
	if( input && 0 != cursorIdx )
	{
		engine_font_manager_char( ' ', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
		cursorIdx--;
		engine_font_manager_char( '>', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
	}

	input = engine_input_manager_hold( input_type_right );
	if( input && 2 != cursorIdx )
	{
		engine_font_manager_char( ' ', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
		cursorIdx++;
		engine_font_manager_char( '>', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
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
				//game_level--;
				//game_point = 0;
				//engine_level_manager_init( game_level );
				//engine_level_manager_draw_point( game_point );
			}
		}
		else if( 1 == cursorIdx )
		{
			if( game_level > 0 )
			{
				//game_world--;
				game_level--;
				game_point = 0;
				//engine_level_manager_init( game_level );
				//engine_level_manager_draw_point( game_point );
			}
		}
		else
		{
			if( game_point > 0 )
			{
				game_point--;
				//engine_level_manager_init( game_level );
				//engine_level_manager_draw_point( game_point );
			}
		}
	}
	input = engine_input_manager_hold( input_type_down );
	if( input )
	{
		updateLevel = true;
		if( 0 == cursorIdx )
		{
			if( game_world < (MAX_WOLRDS-1) )
			{
				game_world++;
				//game_level++;
				game_point = 0;
				//engine_level_manager_init( game_level );
				//engine_level_manager_draw_point( game_point );
			}
		}
		else if( 1 == cursorIdx )
		{
			if( game_level < 21 )
			{
				//game_world++;
				game_level++;
				game_point = 0;
				//engine_level_manager_init( game_level );
				//engine_level_manager_draw_point( game_point );
			}
		}
		else
		{
			game_point++;
			//engine_level_manager_init( game_level );
			//engine_level_manager_draw_point( game_point );
		}
	}

	if( updateLevel )
	{
		if( game_level > 0 || game_point > 0 )
		{
			engine_level_manager_init( game_level );
			engine_level_manager_draw_point( game_point );

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
		//engine_font_manager_text( "YES", 10, 10 );
		engine_game_manager_set_level_data( game_world, game_round, game_point );

		// TODO  wire this up correctly!!
		engine_game_manager_set_level_test( game_level );

		// TODO confirm will not go here unless surrounded by hack flag
		//*screen_type = screen_type_intro;		// view screen
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

//void screen_level_screen_updateY( unsigned char *screen_type )
//{
//	unsigned char input;
//
//	input = engine_input_manager_hold( input_type_left );
//	if( input && 0 != cursorIdx )
//	{
//		engine_font_manager_char( ' ', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
//		cursorIdx--;
//		engine_font_manager_char( '>', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
//	}
//
//	input = engine_input_manager_hold( input_type_right );
//	if( input && 2 != cursorIdx )
//	{
//		engine_font_manager_char( ' ', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
//		cursorIdx++;
//		engine_font_manager_char( '>', cursorX[ cursorIdx ], SHARE_TEXT_ROW );
//	}
//
//	input = engine_input_manager_hold( input_type_up );
//	if( input )
//	{
//		if( 0 == cursorIdx && game_world > 0 )
//		{
//			game_world--;
//		}
//		if( 1 == cursorIdx && round > 0 )
//		{
//			round--;
//		}
//		if( 2 == cursorIdx && game_point > 0 )
//		{
//			game_point--;
//			//engine_level_manager_init( game_level );
//			//engine_level_manager_draw_point( game_point );
//		}
//
//		printStats();
//	}
//	input = engine_input_manager_hold( input_type_down );
//	if( input )
//	{
//		if( 0 == cursorIdx && game_world < ( MAX_WOLRDS - 1 ) )
//		{
//			game_world++;
//		}
//		if( 1 == cursorIdx && round < ( MAX_ROUNDS - 1 ) )
//		{
//			round++;
//		}
//		if( 2 == cursorIdx && game_point < ( MAX_CHECKS - 1 ) )
//		{
//			game_point++;
//			//engine_level_manager_init( game_level );
//			//engine_level_manager_draw_point( game_point );
//		}
//
//		printStats();
//	}
//
//	*screen_type = screen_type_level;
//}

static void printStats()
{
	//engine_font_manager_text( "[WORLD[[[[ROUND[[[[POINT[[/[[", 2, 5 );
	unsigned char delta;

	delta = 0;
	delta = 1;
	engine_font_manager_valu( ( game_world + delta ), 9, SHARE_TEXT_ROW );
	//engine_font_manager_valu( ( game_round + delta ), 18, SHARE_TEXT_ROW );	// TODO using level instead of round for testing...
	engine_font_manager_valu( ( game_level /*+ delta*/ ), 18, SHARE_TEXT_ROW );
	engine_font_manager_valu( ( game_point + delta ), 27, SHARE_TEXT_ROW );		// TODO - revert
	//engine_font_manager_data( ( game_point + delta ), 27, SHARE_TEXT_ROW );

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