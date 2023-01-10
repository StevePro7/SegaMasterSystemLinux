#include "test_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"

static void print( bool newTile );

void screen_test_screen_load()
{
	//unsigned char idx;
	//unsigned char tile = tile_type_island;
	//engine_tile_manager_sky();
	//engine_tile_manager_sea();
	//engine_tile_manager_clouds();
	//engine_font_manager_text( "NEW REBUILD", 10, 0 );

	//idx = 0;
	//for( idx = 0; idx < 8; idx++ )
	//{
	//	engine_tile_manager_draw_columns( tile, 10 + idx, 18, idx, false );
	//}

	////TODO
	////engine_music_manager_play();
}

void screen_test_screen_update( unsigned char *screen_type )
{
	//struct_scroll_object *so = &global_scroll_object;
	//unsigned char input;
	//unsigned char delta;
	//unsigned char value;
	//bool newTile;

	//input = engine_input_manager_hold_up();
	//if( input )
	//{
	//	engine_font_manager_char( '?', 1, 10 );
	//}

	//input = engine_input_manager_hold_down();
	//if( input )
	//{
	//	newTile = so->scrollRight % 8 == 1;
	//	print( newTile );
	//}

	//input = engine_input_manager_hold_left();
	//if( input )
	//{
	//	engine_level_manager_draw( so->offset_right );
	//}



	//delta = 0;
	//value = 0;
	////input = engine_input_manager_hold_right();
	//input = engine_input_manager_move_right();
	//if( input )
	//{
	//	//engine_font_manager_text( "RIGHT", 4, 1 );
	//	delta = 1;
	//}
	//input = engine_input_manager_move_fire1();
	//if( input )
	//{
	//	delta *= 2;
	//}
	//if( 0 == delta )
	//{
	//	engine_scroll_manager_update( delta );
	//}
	//else
	//{
	//	for( value = 0; value < delta; value++ )
	//	{
	//		newTile = engine_scroll_manager_update( delta );
	//		if( newTile )
	//		{
	//			engine_level_manager_draw( so->offset_right );
	//		}
	//	}
	//}

	*screen_type = screen_type_test;
}


static void print( bool newTile )
{
	//struct_scroll_object *so = &global_scroll_object;
	//engine_font_manager_data( so->scroll, 25, 0 );
	//engine_font_manager_data( so->scrollRight, 25, 1 );
	////engine_font_manager_data( so->scrollRightDivided8, 25, 2 );

	////engine_font_manager_data( so->offset_left, 25, 5 );
	//engine_font_manager_data( so->offset_right, 20, 2 );
	//engine_font_manager_data( so->offset_right % SCREEN_WIDE, 25, 2 );

	//////engine_font_manager_data( so->scroll + so->scrollRight, 25, 8 );
	//////engine_font_manager_data( so->scroll, so->scroll, 1 );

	////engine_font_manager_text( "      ", 21, 3 );
	//if( newTile )
	//{
	//	engine_font_manager_text( "TILES", 21, 0 );
	//}
}