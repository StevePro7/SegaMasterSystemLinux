#include "begin_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"
#include <stdbool.h>

static void drawScreen();
static void nextPrint();
static bool anyPlatforms();

void screen_begin_screen_load()
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	unsigned char player_startY;

	engine_level_manager_load( 3 );
	//engine_player_manager_startX( difficulty_type_easier );
	engine_player_manager_startX( difficulty_type_normal );
	//engine_player_manager_startX( difficulty_type_insane+1 );

	devkit_SMS_displayOff();
	drawScreen();
	engine_level_manager_show( 0 );

	player_startY = lo->level_platforms[ po->tileX ];
	engine_player_manager_startY( player_startY );
	engine_player_manager_draw();

	//engine_debug_manager_printout();
	//nextPrint();

	devkit_SMS_displayOn();
	engine_scroll_manager_load();
}

void screen_begin_screen_update( unsigned char *screen_type )
{
	struct_scroll_object *so = &global_scroll_object;
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	unsigned char input;
	unsigned char delta;
	bool newTile;
	delta = 0;
	newTile = false;

	input = engine_input_manager_move( input_type_down );
	if( input )
	{
		engine_scroll_manager_update( 0 );
		*screen_type = screen_type_dead;
		return;
		//engine_player_manager_left();
		//engine_debug_manager_printout();
	}
	//input = engine_input_manager_move( input_type_right );
	input = engine_input_manager_hold( input_type_right );
	if( input )
	{
		delta = 1;
	}

	if( 0 == delta )
	{
		delta = 0;
		engine_scroll_manager_update( delta );
	}
	else
	{
		delta = 1;

		//engine_player_manager_right();
		//engine_debug_manager_printout();
		newTile = engine_scroll_manager_update( delta );
		if( newTile )
		{
			engine_level_manager_draw( so->offset_right );
		}

		po->posnX++;
		po->tileX = po->posnX >> 3;
	}

	//engine_debug_manager_printout();
	//nextPrint();

	engine_player_manager_draw();
	*screen_type = screen_type_begin;
}

static bool anyPlatforms()
{
	return true;
}

static void drawScreen()
{
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();

	engine_graphics_manager_sea();
	//engine_font_manager_text( "BEGIN[SCREEN!!", 10, 2 );
}

static void nextPrint()
{
	struct_scroll_object *so = &global_scroll_object;
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;

	devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );

	engine_font_manager_data( lo->level_draw_offset, 8, 7 );
	engine_font_manager_data( so->offset_right, 16, 7 );
	engine_font_manager_data( lo->level_platforms[ lo->level_draw_offset ], 24, 7 );

	engine_font_manager_data( po->tileX, 8, 8 );
	engine_font_manager_data( lo->level_platforms[ po->tileX ], 16, 8 );
}