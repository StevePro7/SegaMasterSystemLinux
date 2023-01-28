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
static unsigned char anyPlatforms();

void screen_begin_screen_load()
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	unsigned char player_startY;

	engine_level_manager_load( 3 );
	//engine_player_manager_startX( difficulty_type_easier );
	//engine_player_manager_startX( difficulty_type_normal );


	devkit_SMS_displayOff();
	drawScreen();
	engine_player_manager_startX( difficulty_type_insane -3 );
	engine_level_manager_show( 0 );

//	player_startY = lo->level_platforms[ po->tileX ];
	player_startY = level_platforms[ po->tileX ];
	engine_player_manager_startY( player_startY );
	engine_player_manager_draw();

	engine_debug_manager_printout();
	//nextPrint();

	devkit_SMS_displayOn();
	engine_scroll_manager_load();

	devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
	//engine_font_manager_data( delta, 12, 12 );
	engine_font_manager_data( po->posnX, 12, 13 );
	engine_font_manager_data( po->tileX, 12, 14 );
}

void screen_begin_screen_update( unsigned char *screen_type )
{
	struct_scroll_object *so = &global_scroll_object;
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	unsigned char input;
	unsigned char delta;
	unsigned char collision;
	bool newTile;
	delta = 0;
	newTile = false;
	collision = 0;

	devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
	//engine_font_manager_data( delta, 12, 12 );
	engine_font_manager_data( po->posnX, 24, 13 );
	engine_font_manager_data( po->tileX, 24, 14 );


	input = engine_input_manager_move( input_type_down );
	if( input )
	{
		engine_scroll_manager_update( 0 );
		*screen_type = screen_type_dead;
		return;
	}
	//input = engine_input_manager_move( input_type_right );
	input = engine_input_manager_hold( input_type_right );
	//input = 1;
	if( input )
	{
		delta = 1;
	}

	if( 0 == delta )
	{
		engine_scroll_manager_update( 0 );
	}
	else
	{
		newTile = engine_scroll_manager_update( delta );
		if( newTile )
		{
			engine_level_manager_draw( so->offset_right );
		}

		engine_player_manager_right();


		//engine_debug_manager_printout();

		////// TODO - won't check this if somersault in air etc.
		//collision = anyPlatforms();
		////devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
		////engine_font_manager_data( collision, 8, 12 );
		//if( !collision )
		//{
		//	engine_scroll_manager_update( 0 );
		//	engine_player_manager_draw();
		//	*screen_type = screen_type_dead;
		//	return;
		//}
	}

	//engine_debug_manager_printout();
	//nextPrint();

	engine_player_manager_draw();
	*screen_type = screen_type_begin;
}

static unsigned char anyPlatforms()
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	unsigned int tilelook;
	unsigned char lookup_platform;
	unsigned char player_platform = po->tileY;

	//devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );

	//engine_font_manager_data( po->tileX, 8, 10 );
	//engine_font_manager_data( player_platform, 8, 11 );

	tilelook = po->tileX - 1;
	//lookup_platform = lo->level_platforms[ tilelook ];
	lookup_platform = level_platforms[ tilelook ];
	//engine_font_manager_data( tilelook, 16, 10 );
	//engine_font_manager_data( lookup_platform, 16, 11 );
	if( lookup_platform == player_platform )
	{
		return tilelook;
	}

	tilelook = po->tileX + 1;
	//lookup_platform = lo->level_platforms[ tilelook ];
	lookup_platform = level_platforms[ tilelook ];
	//engine_font_manager_data( tilelook, 24, 10 );
	//engine_font_manager_data( lookup_platform, 24, 11 );
	if( lookup_platform == player_platform )
	{
		return tilelook;
	}

	return 0;
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

	//engine_font_manager_data( lo->level_draw_offset, 8, 7 );
	//engine_font_manager_data( so->offset_right, 16, 7 );
	//engine_font_manager_data( lo->level_platforms[ lo->level_draw_offset ], 24, 7 );

	//engine_font_manager_data( po->tileX, 8, 8 );
	//engine_font_manager_data( lo->level_platforms[ po->tileX ], 16, 8 );
}