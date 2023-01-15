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
#include <stdbool.h>

static void drawScreen();
static unsigned char cols;

void screen_play_screen_load()
{
	drawScreen();
	engine_music_manager_play( 1 );
	//engine_scroll_manager_load( 10 );
	cols = 0;
}

void screen_play_screen_update( unsigned char *screen_type )
{
	//struct_scroll_object *so = &global_scroll_object;
	unsigned char input;
	bool flag;
	input = engine_input_manager_hold( input_type_down);
	if( input )
	{
		engine_tile_manager_draw_columns( tile_type_island_tree, 20 + cols, 0 + cols );
		//flag = engine_scroll_manager_update( cols );
		//engine_font_manager_data( flag, 30, 0 );
		cols++;
		//engine_scroll_manager_update( 2 );
	//	print( newTile );
	}

	*screen_type = screen_type_play;
}


static void drawScreen()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();

	engine_graphics_manager_sea();
	engine_tile_manager_stevepro( TILE_PLAY_TITLE, 4, 0, 24, 3 );
	engine_tile_manager_stevepro( TILE_CLOUDS, 2, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUDB, 10, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUDB, 18, 4, 8, 3 );
	engine_tile_manager_stevepro( TILE_CLOUDS, 26, 4, 8, 3 );

	engine_tile_manager_stevepro( TILE_BRIDGE_MIDD, 0, 8, 4, 14 );
	engine_tile_manager_stevepro( TILE_BRIDGE_MIDD, 4, 8, 4, 14 );
	engine_tile_manager_stevepro( TILE_BRIDGE_SIGN, 8, 8, 4, 14 );
	engine_tile_manager_stevepro( TILE_BRIDGE_RGHT, 12, 8, 4, 14 );
	//engine_font_manager_text( "[[[[[[[[[[[[[[[[[[[[[[[[", 4, 3 );
	//engine_font_manager_text( "STEVEPRO[IS[WRITING[THIS", 4, 3 );
	devkit_SMS_displayOn();
}