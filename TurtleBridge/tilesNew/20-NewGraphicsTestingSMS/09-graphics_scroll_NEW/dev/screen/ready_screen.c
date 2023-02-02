#include "ready_screen.h"
#include "../engine/asm_manager.h"
//#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

static void drawScreen();

void screen_ready_screen_load()
{
	drawScreen();
	//engine_player_manager_load();
}

//unsigned int input = devkit_SMS_getKeysStatus();
void screen_ready_screen_update( unsigned char *screen_type )
{
	unsigned int input1;
	unsigned int input2;

	input1 = 0;
	input2 = 0;
	//engine_font_manager_data( input1, 10, 10 );
	//engine_font_manager_data( input2, 10, 11 );

	devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
	input2 = devkit_SMS_getKeysHeld();		//move
	if( input2 != 0 )
	{
		engine_font_manager_data( input2, 10, 15 );
	}

	input1 = devkit_SMS_getKeysPressed();	//hold
	if( input1 != 0 )
	{
		engine_font_manager_data( input1, 10, 14 );
		if( input1 & 32 )
		{
			engine_font_manager_text( "JUMP!!", 20, 10 );
		}
	}


	engine_font_manager_data( input1, 10, 10 );
	engine_font_manager_data( input2, 10, 11 );

	engine_font_manager_data( input1, 10, 14 );
	engine_font_manager_data( input2, 10, 15 );

	//unsigned char input;
	//input = engine_input_manager_hold( input_type_fire1 );
	//input = engine_input_manager_move( input_type_right );
	//if( input )
	//{
	//	engine_player_manager_update();
	//}

	//engine_player_manager_draw();
	*screen_type = screen_type_ready;
}

static void drawScreen()
{
	unsigned int tile = TILE_TURTLE_FLY1;

	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	engine_graphics_manager_sea();

	//engine_tile_manager_stevepro( tile, 0, 8, 4, 14 );
	//engine_tile_manager_stevepro( tile, 4, 8, 4, 14 );
	//engine_tile_manager_stevepro( tile, 8, 8, 4, 14 );
	//engine_tile_manager_stevepro( tile, 12, 8, 4, 14 );
	//engine_tile_manager_stevepro( tile, 16, 8, 4, 14 );

	//engine_tile_manager_stevepro( TILE_ISLAND_MIDD, 0, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_ISLAND_MIDD, 4, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_ISLAND_RGHT, 8, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_TURTLE_SEA1, 12, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_TURTLE_SEA1, 16, 8, 4, 14 );
	//engine_tile_manager_stevepro( tile, 16, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_BRIDGE_RGHT, 12, 8, 4, 14 );

	//engine_tile_manager_stevepro( TILE_PLAY_TITLE, 4, 0, 24, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 2, 4, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 10, 4, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 18, 4, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 26, 4, 8, 3 );
	//engine_player_manager_draw();
	devkit_SMS_displayOn();
}