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
static void printTexts();

static unsigned char player_loadY;
static unsigned char game_difficulty; 



void screen_diff_screen_load()
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	struct_game_object *go = &global_game_object;

	// TODO delete this.
	engine_debug_manager_initgame();

	engine_level_manager_init( go->game_level );
	game_difficulty = go->game_difficulty;

	//engine_graphics_manager_common();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	engine_graphics_manager_title();
	engine_graphics_manager_sea();
	devkit_SMS_displayOn();


	engine_level_manager_draw_point( go->game_point );
	engine_scroll_manager_load( go->game_point, lo->level_size );


	setupPlayer();
	printCursor();
	printTexts();
	engine_player_manager_draw();
}

void screen_diff_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	unsigned char input;
	bool updateDiff = false;

	input = engine_input_manager_hold( input_type_up );
	if( input )
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

	input = engine_input_manager_hold( input_type_down );
	if( input )
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

	input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		//engine_util_manager_locale_blank( 1, po->posnX / 8 - 2, player_loadY - 6 );
		//engine_util_manager_locale_blank( 2, 7, 5 );
		// TODO sfx
		//engine_player_manager_draw();
		engine_game_manager_set_difficulty( game_difficulty );
		//*screen_type = screen_type_beat;
		*screen_type = screen_type_level;
		return;
	}

	// TODO - navigate backwards.
	//input = engine_input_manager_hold( input_type_fire2 );

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
}

static void printCursor()
{
	unsigned char index;
	for( index = 0; index < MAX_DIFFICULTY; index++ )
	{
		engine_font_manager_char( ' ', CURSOR_X, SHARE_TEXT_ROW_ + index + 1 );
	}

	engine_font_manager_char( '>', CURSOR_X, SHARE_TEXT_ROW_ + game_difficulty + 1 );
}

static void printTexts()
{
	unsigned char index;
	engine_util_manager_locale_texts( 5, 7, SHARE_TEXT_ROW_ );
	for( index = 0; index < MAX_DIFFICULTY; index++ )
	{
		engine_font_manager_text( ( unsigned char * ) locale_object_difficulty[ index ], CURSOR_X + 3, SHARE_TEXT_ROW_ + index + 1 );
	}

	//engine_font_manager_text( "EASIER", 15, 4 );
	//engine_font_manager_text( "NORMAL", 15, 5 );
	//engine_font_manager_text( "HARDER", 15, 6 );
	//engine_font_manager_text( "INSANE", 15, 7 );
	//engine_font_manager_text( "[WORLD[[[[ROUND[[[[POINT[[/[[", 2, 5 );
	//engine_font_manager_text( "XXXXXXXXXXXXXXXXXXXXXXXXXXXXX", 2, 5 );
	//engine_font_manager_text( " EASIER NORMAL  HARDER INSANE", 2, 3 );
}