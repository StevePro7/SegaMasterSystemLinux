#include "play_screen.h"
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

static unsigned char getDelta();
static unsigned char foo;

void screen_play_screen_load()
{
	engine_font_manager_text( "PLAY SCREEN", 10, 5 );
	foo = 0;
	engine_font_manager_data( foo, 10, 7 );
}

void screen_play_screen_update( unsigned char *screen_type )
{
	//struct_scroll_object *so = &global_scroll_object;
	unsigned char input;
	//unsigned char delta;
	//unsigned char value;
	//bool newTile;

	//delta = 0;
	//value = 0;
	//newTile = false;
	////input = engine_input_manager_hold( input_type_right);
	input = engine_input_manager_move( input_type_down );
	if( input )
	{
		foo++;
		engine_font_manager_data( foo, 10, 7 );
	}
	//input = engine_input_manager_move( input_type_left );
	//if( input )
	//{
	//	delta = 0;
	//}
	//input = engine_input_manager_move( input_type_up);
	//if( input )
	//{
	//	delta = 3;
	//}
	//input = engine_input_manager_move( input_type_right );
	//if( input )
	//{
	//	delta = 2;
	//}
	////input = engine_input_manager_move( input_type_left );
	////if( input )
	////{
	////	delta = 3;
	////	engine_tile_manager_draw_columns( tile_type_island_tree, 20 + cols, 0 + cols );
	////	cols++;
	////	engine_scroll_manager_update( 2 );
	////	print( newTile );
	////}
	//input = engine_input_manager_move( input_type_fire1 );
	//if( input )
	//{
	//	delta *= 2;
	//	//delta += 2;
	//}
	//
	//if( 0 == delta )
	//{
	//	// uncomment next line for auto scroll
	//	delta = 0;
	//	newTile = engine_scroll_manager_update( delta );
	//	if( newTile )
	//	{
	//		engine_level_manager_draw_column( so->scrollColumn );
	//	}
	//}
	//else
	//{
	//	for( value = 0; value < delta; value++ )
	//	{
	//		// IMPORTANT - this MUST be 1px 
	//		newTile = engine_scroll_manager_update( 1 );
	//		if( newTile )
	//		{
	//			engine_level_manager_draw_column( so->scrollColumn );
	//		}
	//	}

	//	//newTile = engine_scroll_manager_update( 1 );
	//	////engine_font_manager_data( newTile, 30, 0 );
	//	//if( newTile )
	//	//{
	//	//	engine_level_manager_draw_column( so->scrollColumn );
	//	//}
	//}

	//engine_player_manager_update();
	engine_player_manager_draw();
	*screen_type = screen_type_play;
}


static unsigned char getDelta()
{
	unsigned char input;
	unsigned char delta;
	delta = 0;
	
	input = engine_input_manager_move( input_type_right );
	if( input )
	{
		delta = 1;
	}
	input = engine_input_manager_move( input_type_down );
	if( input )
	{
		delta = 2;
	}
	input = engine_input_manager_move( input_type_left );
	if( input )
	{
		delta = 3;
	}
	input = engine_input_manager_move( input_type_up );
	if( input )
	{
		delta = 4;
	}

	return delta *= 2;
}