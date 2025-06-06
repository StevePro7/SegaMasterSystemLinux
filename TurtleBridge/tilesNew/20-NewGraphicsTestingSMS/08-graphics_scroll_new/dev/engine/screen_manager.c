#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "level_manager.h"
#include "scroll_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"

static void print( bool newTile );

void engine_screen_manager_init()
{
	unsigned char idx;
	engine_tile_manager_banner();
	engine_tile_manager_sky();
	engine_tile_manager_sea();
	engine_tile_manager_clouds();		//TODO re-instate - sky the whole screen on scroll
	//engine_font_manager_draw_text( "NEW TILES", 10, 0 );

	idx = 0;
	for( idx = 0; idx < 8; idx++ )
	{
		engine_tile_manager_draw_columns( tile_type_tree, 20 + idx, 8, idx, false );
		engine_tile_manager_draw_columns( tile_type_island, 20 + idx, 18, idx, false );
	}

	//TODO
	engine_music_manager_play();
}

void engine_screen_manager_update()
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned char input;
	unsigned char delta;
	unsigned char value;
	bool newTile;


	delta = 0;
	value = 0;
	//input = engine_input_manager_hold_right();
	input = engine_input_manager_move_right();
	//input = 1;
	if( input )
	{
		//engine_font_manager_draw_text( "RIGHT", 4, 1 );
		delta = 4;
	}
	input = engine_input_manager_move_fire1();
	if( input )
	{
		delta *= 2;
	}
	if( 0 == delta )
	{
		//engine_scroll_manager_update( 0 );
		newTile = engine_scroll_manager_update( 1 );
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
		//if( newTile )
		//{
		//	engine_level_manager_draw( so->offset_right );
		//}
		//newTile = engine_scroll_manager_update( 1 );
		//if( newTile )
		//{
		//	engine_level_manager_draw( so->offset_right );
		//}
		//newTile = engine_scroll_manager_update( 1 );
		//if( newTile )
		//{
		//	engine_level_manager_draw( so->offset_right );
		//}
		//newTile = engine_scroll_manager_update( 1 );
		//if( newTile )
		//{
		//	engine_level_manager_draw( so->offset_right );
		//}
		//newTile = engine_scroll_manager_update( 1 );
		//if( newTile )
		//{
		//	engine_level_manager_draw( so->offset_right );
		//}
		//newTile = engine_scroll_manager_update( 1 );
		//if( newTile )
		//{
		//	engine_level_manager_draw( so->offset_right );
		//}
	}
}


static void print( bool newTile )
{
	struct_scroll_object *so = &global_scroll_object;
	//engine_font_manager_draw_data( so->scroll, 25, 0 );
	engine_font_manager_draw_data( so->scrollRight, 25, 1 );
	//engine_font_manager_draw_data( so->scrollRightDivided8, 25, 2 );

	//engine_font_manager_draw_data( so->offset_left, 25, 5 );
	engine_font_manager_draw_data( so->offset_right, 20, 2 );
	engine_font_manager_draw_data( so->offset_right % SCREEN_WIDE, 25, 2 );

	////engine_font_manager_draw_data( so->scroll + so->scrollRight, 25, 8 );
	////engine_font_manager_draw_data( so->scroll, so->scroll, 1 );

	//engine_font_manager_draw_text( "      ", 21, 3 );
	if( newTile )
	{
		engine_font_manager_draw_text( "TILES", 21, 0 );
	}
}