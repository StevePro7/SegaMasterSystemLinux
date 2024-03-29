#include "diff_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
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

#define CURSOR_X	12

static void setupPlayer();
static void printCursor();
//static void printTexts();

static unsigned char player_loadY;
static unsigned char game_difficulty; 

void screen_diff_screen_load()
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	struct_game_object *go = &global_game_object;
	unsigned char checkScreen;

	// TODO delete this.
	//engine_debug_manager_initgame();

	//engine_graphics_manager_common();
	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );
	//engine_asm_manager_clear_VRAM();
	//engine_content_manager_bggame();
	//engine_content_manager_sprite();
	engine_graphics_manager_title();
	engine_graphics_manager_sea();


	//	TODO - refactor and still work??
	engine_font_manager_text( "SELECT  DIFFICULTY", 7, SHARE_TEXT_ROW + 0 );
	engine_font_manager_text( "EASIER", CURSOR_X + 3, SHARE_TEXT_ROW + 1 );
	engine_font_manager_text( "NORMAL", CURSOR_X + 3, SHARE_TEXT_ROW + 2 );
	engine_font_manager_text( "HARDER", CURSOR_X + 3, SHARE_TEXT_ROW + 3 );
	engine_font_manager_text( "INSANE", CURSOR_X + 3, SHARE_TEXT_ROW + 4 );


	game_difficulty = go->game_difficulty;

	engine_level_manager_init( go->game_level );
	checkScreen = lo->check_width * go->game_point;
	engine_level_manager_draw_screen( checkScreen );
	//engine_level_manager_draw_point( go->game_point );
	//engine_scroll_manager_load( go->game_point, lo->level_size );


	setupPlayer();
	printCursor();
	devkit_SMS_displayOn();
//	printTexts();
	engine_player_manager_draw();
}

void screen_diff_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	unsigned char input1, input2;
	bool updateDiff = false;

	//input1 = engine_input_manager_hold( input_type_up );
	input2 = engine_input_manager_hold( input_type_left );
	if( /*input1 ||*/ input2 )
	{
		updateDiff = true;
		if( 0 == game_difficulty )
		{
			game_difficulty = MAX_DIFFICULTY - 1;
		}
		else
		{
			game_difficulty--;
		}
	}

	input1 = engine_input_manager_hold( input_type_right );
	//input2 = engine_input_manager_hold( input_type_down );
	if( input1 /*|| input2*/ )
	{
		updateDiff = true;
		if( ( MAX_DIFFICULTY - 1 ) == game_difficulty )
		{
			game_difficulty = 0;
		}
		else
		{
			game_difficulty++;
		}
	}

	if( updateDiff )
	{
		printCursor();
		setupPlayer();
	}

	input1 = engine_input_manager_hold( input_type_fire1 );
	if( input1 )
	{
		// TODO sfx
		//engine_player_manager_draw();
		engine_game_manager_set_difficulty( game_difficulty );
		engine_player_manager_lives( game_difficulty );
		*screen_type = screen_type_level;
		return;
	}

	input1 = engine_input_manager_hold( input_type_fire2 );
	if( input1 )
	{
		engine_game_manager_set_difficulty( game_difficulty );
		engine_player_manager_lives( game_difficulty );
		*screen_type = screen_type_start;
		return;
	}

	engine_player_manager_draw();
	*screen_type = screen_type_diff;
}

static void setupPlayer()
{
	struct_player_object *po = &global_player_object;
	struct_game_object *go = &global_game_object;

	engine_player_manager_initX( game_difficulty, go->game_world );
	engine_player_manager_loadX( go->game_point );
	player_loadY = level_platforms[ po->lookX ];
	engine_player_manager_loadY( player_loadY );
	//engine_player_manager_draw();
}

static void printCursor()
{
	unsigned char index;
	for( index = 0; index < MAX_DIFFICULTY; index++ )
	{
		engine_font_manager_char( ' ', CURSOR_X, SHARE_TEXT_ROW + index + 1 );
	}

	engine_font_manager_char( '>', CURSOR_X, SHARE_TEXT_ROW + game_difficulty + 1 );
}

//static void printTexts()
//{
//	//unsigned char index;
//	//unsigned char *text;
//	//engine_util_manager_locale_texts( 5, 7, SHARE_TEXT_ROW + 0 );
//
//	// Weird - for some reason I was getting graphics glitches on real HW - so hard code text for now.
//	engine_font_manager_text( "SELECT  DIFFICULTY", 7, SHARE_TEXT_ROW + 0 );
//	engine_font_manager_text( "EASIER", CURSOR_X + 3, SHARE_TEXT_ROW + 1 );
//	engine_font_manager_text( "NORMAL", CURSOR_X + 3, SHARE_TEXT_ROW + 2 );
//	engine_font_manager_text( "HARDER", CURSOR_X + 3, SHARE_TEXT_ROW + 3 );
//	engine_font_manager_text( "INSANE", CURSOR_X + 3, SHARE_TEXT_ROW + 4 );
//
//	//index = 3;
//	//text = ( unsigned char * ) locale_object_difficulty[ index ];
//	//engine_font_manager_text( text, CURSOR_X + 3, SHARE_TEXT_ROW + index + 1 );
//	//index = 1;
//	//text = ( unsigned char * ) locale_object_difficulty[ index ];
//	//engine_font_manager_text( text, CURSOR_X + 3, SHARE_TEXT_ROW + index + 1 );
//	//index = 2;
//	//text = ( unsigned char * ) locale_object_difficulty[ index ];
//	//engine_font_manager_text( text, CURSOR_X + 3, SHARE_TEXT_ROW + index + 1 );
//	//index = 0;
//	//text = ( unsigned char * ) locale_object_difficulty[ index ];
//	//engine_font_manager_text( text, CURSOR_X + 3, SHARE_TEXT_ROW + index + 1 );
//
//	//for( index = 0; index < MAX_DIFFICULTY; index++ )
//	//{
//		//text = ( unsigned char * ) locale_object_difficulty[ index ];
//		//engine_font_manager_text( text, CURSOR_X + 3, SHARE_TEXT_ROW + index + 3 );
//		//engine_font_manager_text( ( unsigned char * ) locale_object_difficulty[ index ], CURSOR_X + 3, SHARE_TEXT_ROW + index + 1 );
//	//}
//
//	//engine_font_manager_text( "EASIER", 15, 4 );
//	//engine_font_manager_text( "NORMAL", 15, 5 );
//	//engine_font_manager_text( "HARDER", 15, 6 );
//	//engine_font_manager_text( "INSANE", 15, 7 );
//	//engine_font_manager_text( "[WORLD[[[[ROUND[[[[POINT[[/[[", 2, 5 );
//	//engine_font_manager_text( "XXXXXXXXXXXXXXXXXXXXXXXXXXXXX", 2, 5 );
//	//engine_font_manager_text( " EASIER NORMAL  HARDER INSANE", 2, 3 );
//}