#include "back_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"
#include <stdbool.h>

static void drawScreen();

void screen_play_screen_load()
{
	engine_level_manager_load( 1 );

	devkit_SMS_displayOff();
	drawScreen();
	engine_level_manager_show( 0 );
	engine_player_manager_draw();
	devkit_SMS_displayOn();

	engine_scroll_manager_load();
	//engine_music_manager_play( 1 );
}

void screen_play_screen_update( unsigned char *screen_type )
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned char input;
	unsigned char delta;
	unsigned char value;
	bool newTile;

	delta = 0;
	value = 0;
	newTile = false;
	//input = engine_input_manager_hold( input_type_right);
	input = engine_input_manager_move( input_type_down );
	if( input )
	{
		delta = 2;
	}
	input = engine_input_manager_move( input_type_left );
	if( input )
	{
		delta = 0;
	}
	input = engine_input_manager_move( input_type_up);
	if( input )
	{
		delta = 3;
	}
	input = engine_input_manager_move( input_type_right );
	if( input )
	{
		delta = 2;
	}
	//input = engine_input_manager_move( input_type_left );
	//if( input )
	//{
	//	delta = 3;
	//	engine_tile_manager_draw_columns( tile_type_island_tree, 20 + cols, 0 + cols );
	//	cols++;
	//	engine_scroll_manager_update( 2 );
	//	print( newTile );
	//}
	input = engine_input_manager_move( input_type_fire1 );
	if( input )
	{
		delta *= 2;
		//delta += 2;
	}
	
	if( 0 == delta )
	{
		// uncomment next line for auto scroll
		delta = 0;
		newTile = engine_scroll_manager_update( delta );
		if( newTile )
		{
			engine_level_manager_draw( so->offset_right );
		}
	}
	else
	{
		for( value = 0; value < delta; value++ )
		{
			// IMPORTANT - this MUST be 1px 
			newTile = engine_scroll_manager_update( 1 );
			if( newTile )
			{
				engine_level_manager_draw( so->offset_right );
			}
		}

		//newTile = engine_scroll_manager_update( 1 );
		////engine_font_manager_data( newTile, 30, 0 );
		//if( newTile )
		//{
		//	engine_level_manager_draw( so->offset_right );
		//}
	}

	engine_player_manager_update();
	engine_player_manager_draw();
	*screen_type = screen_type_play;
}


static void drawScreen()
{
	//unsigned char idx;

	
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();

	engine_graphics_manager_sea();
	engine_tile_manager_stevepro( TILE_PLAY_TITLE, 4, 0, 24, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 2, 0, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 10, 1, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 18, 1, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 26, 0, 8, 3 );

	engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 2, 5, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 10, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 18, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 26, 5, 8, 3 );

	//engine_tile_manager_stevepro( TILE_ISLAND_LEFT, 0, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_ISLAND_MIDD, 4, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_ISLAND_MIDD, 8, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_ISLAND_MIDD, 12, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_ISLAND_SIGN, 16, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_ISLAND_RGHT, 20, 8, 4, 14 );

	//// Draw from level.
	//for( idx = 0; idx < SCREEN_WIDE; idx++ )
	//{
	//	engine_level_manager_draw( idx );
	//}

	//engine_tile_manager_stevepro( TILE_BRIDGE_RGHT, 12, 8, 4, 14 );
	//engine_font_manager_text( "[[[[[[[[[[[[[[[[[[[[[[[[", 4, 0 );
	//engine_font_manager_text( "[[[[[[[[[[[[[[[[[[[[[[[[", 4, 1 );
	//engine_font_manager_text( "[[[[[[[[[[[[[[[[[[[[[[[[", 4, 2 );
	//engine_font_manager_text( "[[[[[[[[[[[[[[[[[[[[[[[[", 4, 3 );
	//engine_font_manager_text( "STEVEPRO[IS[WRITING[THIS", 4, 1 );
	//engine_font_manager_text( "STEVEPRO[IS[WRITING[THIS", 4, 2 );

	
}