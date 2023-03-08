#include "level_screen.h"
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

#define DIFFICULTY_ROW	3

static unsigned char cursorX[] = { 2, 11, 20 };
static unsigned char cursorIdx;
static unsigned char world, round, level, point;

//static void printCursor();
static void printStats();
static void printTexts();

void screen_level_screen_load()
{
	struct_game_object *go = &global_game_object;

	// TODO delete this.
	engine_debug_manager_initgame();
	world = go->game_world;
	round = go->game_round;
	level = go->game_level;
	point = go->game_point;
	cursorIdx = 0;

	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	engine_graphics_manager_title();
	engine_graphics_manager_sea();

	engine_level_manager_init( level );
	engine_level_manager_draw_point( point );

	//engine_level_manager_init( go->game_level );
	//engine_level_manager_draw_point( go->game_point );


	printTexts();
	printStats();
	engine_font_manager_char( '>', cursorX[ cursorIdx ], DIFFICULTY_ROW );
	devkit_SMS_displayOn();
}


void screen_level_screen_updateY( unsigned char *screen_type )
{
	unsigned char input;

	input = engine_input_manager_hold( input_type_left );
	if( input && 0 != cursorIdx )
	{
		engine_font_manager_char( ' ', cursorX[ cursorIdx ], DIFFICULTY_ROW );
		cursorIdx--;
		engine_font_manager_char( '>', cursorX[ cursorIdx ], DIFFICULTY_ROW );
	}

	input = engine_input_manager_hold( input_type_right );
	if( input && 2 != cursorIdx )
	{
		engine_font_manager_char( ' ', cursorX[ cursorIdx ], DIFFICULTY_ROW );
		cursorIdx++;
		engine_font_manager_char( '>', cursorX[ cursorIdx ], DIFFICULTY_ROW );
	}

	input = engine_input_manager_hold( input_type_up );
	if( input )
	{
		if( 0 == cursorIdx && world > 0 )
		{
			world--;
		}
		if( 1 == cursorIdx && round > 0 )
		{
			round--;
		}
		if( 2 == cursorIdx && point > 0 )
		{
			point--;
			//engine_level_manager_init( level );
			//engine_level_manager_draw_point( point );
		}

		printStats();
	}
	input = engine_input_manager_hold( input_type_down );
	if( input )
	{
		if( 0 == cursorIdx && world < ( MAX_WOLRDS - 1 ) )
		{
			world++;
		}
		if( 1 == cursorIdx && round < ( MAX_ROUNDS - 1 ) )
		{
			round++;
		}
		if( 2 == cursorIdx && point < ( MAX_CHECKS - 1 ) )
		{
			point++;
			//engine_level_manager_init( level );
			//engine_level_manager_draw_point( point );
		}

		printStats();
	}

	*screen_type = screen_type_level;
}

void screen_level_screen_update( unsigned char *screen_type )
{
	unsigned char input;

	input = engine_input_manager_hold( input_type_left );
	if( input && 0 != cursorIdx )
	{
		engine_font_manager_char( ' ', cursorX[ cursorIdx ], DIFFICULTY_ROW );
		cursorIdx--;
		engine_font_manager_char( '>', cursorX[ cursorIdx ], DIFFICULTY_ROW );
	}

	input = engine_input_manager_hold( input_type_right );
	if( input && 2 != cursorIdx )
	{
		engine_font_manager_char( ' ', cursorX[ cursorIdx ], DIFFICULTY_ROW );
		cursorIdx++;
		engine_font_manager_char( '>', cursorX[ cursorIdx ], DIFFICULTY_ROW );
	}

	input = engine_input_manager_hold( input_type_up );
	if( input )
	{
		if( 0 == cursorIdx || 1 == cursorIdx )
		{
			if( level > 0 )
			{
				world--;
				level--;
				point = 0;
				engine_level_manager_init( level );
				engine_level_manager_draw_point( point );
			}
		}
		else
		{
			if( point > 0 )
			{
				point--;
				engine_level_manager_init( level );
				engine_level_manager_draw_point( point );
			}
		}

		printStats();
	}
	input = engine_input_manager_hold( input_type_down );
	if( input )
	{
		if( 0 == cursorIdx || 1 == cursorIdx )
		{
			if( level < 21 )
			{
				world++;
				level++;
				point = 0;
				engine_level_manager_init( level );
				engine_level_manager_draw_point( point );
			}
		}
		else
		{
			point++;
			engine_level_manager_init( level );
			engine_level_manager_draw_point( point );
		}

		printStats();
	}

	*screen_type = screen_type_level;
}

static void printStats()
{
	//engine_font_manager_text( "[WORLD[[[[ROUND[[[[POINT[[/[[", 2, 5 );
	unsigned char delta;

	delta = 0;
	delta = 1;
	engine_font_manager_valu( ( world + delta ), 9, DIFFICULTY_ROW );
	engine_font_manager_valu( ( round + delta ), 18, DIFFICULTY_ROW );
	//engine_font_manager_valu( ( point + delta ), 27, DIFFICULTY_ROW );		// TODO - revert
	engine_font_manager_data( ( point + delta ), 27, DIFFICULTY_ROW );

	//engine_font_manager_char( '0', 26, DIFFICULTY_ROW );
	//engine_font_manager_char( '/', 28, DIFFICULTY_ROW );
	//engine_font_manager_char( '0', 29, DIFFICULTY_ROW );
	//engine_font_manager_char( '4', 30, DIFFICULTY_ROW );

	//engine_util_manager_locale_texts( 6, 3, DIFFICULTY_ROW );
	//engine_util_manager_locale_texts( 7, 12, DIFFICULTY_ROW );
	//engine_util_manager_locale_texts( 8, 21, DIFFICULTY_ROW );

	
	//engine_font_manager_char( '>', 2, 4 );
	//engine_font_manager_char( '>', 11, 4 );
	//engine_font_manager_char( '>', 20, 4 );
}

static void printTexts()
{
	//engine_font_manager_text( "[WORLD[[[[ROUND[[[[POINT[[/[[", 2, 5 );

	// Print hard coded texts.
	engine_util_manager_locale_texts( 6, 3, DIFFICULTY_ROW );
	engine_util_manager_locale_texts( 7, 12, DIFFICULTY_ROW );
	engine_util_manager_locale_texts( 8, 21, DIFFICULTY_ROW );

	engine_font_manager_char( '0', 8, DIFFICULTY_ROW );
	engine_font_manager_char( '0', 17, DIFFICULTY_ROW );
	//engine_font_manager_char( '0', 26, DIFFICULTY_ROW );		// TODO - revert
	engine_font_manager_text( "/04", 28, DIFFICULTY_ROW );
}