#include "back_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"

static void drawScreen();

void screen_play_screen_load()
{
	drawScreen();
	//engine_music_manager_play( 0 );
}

void screen_play_screen_update( unsigned char *screen_type )
{
	
	
	//struct_scroll_object *so = &global_scroll_object;
	unsigned char input;
	

	input = engine_input_manager_hold( input_type_down);
	if( input )
	{
		
		engine_tile_manager_draw_columns( tile_type_turtle_fly4, 10, 0 );
		//engine_scroll_manager_update( 2 );
	//	print( newTile );
	}



	*screen_type = screen_type_play;
}



static void drawScreen()
{
	//unsigned char idx;
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();

	engine_graphics_manager_sea();
	engine_tile_manager_stevepro( TILE_PLAY_TITLE, 4, 0, 24, 3 );
	engine_tile_manager_stevepro( TILE_CLOUDS, 2, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUDB, 10, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUDB, 18, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUDS, 26, 4, 8, 3 );

	//for( idx = 0; idx < 4; idx++ )
	//{
	//	engine_tile_manager_draw_columns( tile_type_turtle_fly4, 10 + idx, 0 + idx );
	//}

	devkit_SMS_displayOn();
}