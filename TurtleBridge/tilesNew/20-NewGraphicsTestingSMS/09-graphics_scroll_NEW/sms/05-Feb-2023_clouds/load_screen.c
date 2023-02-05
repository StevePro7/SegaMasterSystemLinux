#include "load_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"

//static void drawScreen();

#ifdef _CONSOLE
#else
#pragma disable_warning 261
#endif

void screen_load_screen_load()
{
	unsigned char data;
	//data = 0b11110000;
	data = 0b11100000;


	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	//engine_graphics_manager_level();

	//engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 1, 5, 8, 3 );
	//engine_tile_manager_stevepro2( TILE_CLOUD_LARGE, 9, 5, 8, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 17, 5, 8, 3 );
	//engine_tile_manager_stevepro2( TILE_CLOUD_LARGE, 25, 5, 8, 3 );
	engine_font_manager_text( "12345678123456781234567812345678", 0, 3 );
	engine_graphics_manager_clouds( data );
	devkit_SMS_displayOn();


	//drawScreen();
	//engine_font_manager_text( "LOAD SCREEN", 10, 10 );
}

void screen_load_screen_update( unsigned char *screen_type )
{
	//unsigned char input;
	//input = engine_input_manager_hold( input_type_left );
	//if( input )
	//{
	//	engine_player_manager_left();
	//}
	////input = engine_input_manager_move(input_type_right);
	//input = engine_input_manager_hold( input_type_right );
	//if( input )
	//{
	//	engine_player_manager_right(1);
	//}
	//input = engine_input_manager_hold( input_type_down );
	//if( input )
	//{
	//	engine_player_manager_down();
	//}

	//engine_player_manager_draw();
	*screen_type = screen_type_load;
}

//
//static void drawScreen()
//{
//	unsigned int tile = TILE_TURTLE_FLY4;
//
//	devkit_SMS_displayOff();
//	engine_asm_manager_clear_VRAM();
//	engine_content_manager_bggame();
//	engine_content_manager_sprite();
//	engine_graphics_manager_sea();
//
//	engine_tile_manager_stevepro( tile, 0, 8, 4, 14 );
//	engine_tile_manager_stevepro( tile, 4, 8, 4, 14 );
//	engine_tile_manager_stevepro( tile, 8, 8, 4, 14 );
//	engine_tile_manager_stevepro( tile, 12, 8, 4, 14 );
//	engine_tile_manager_stevepro( tile, 16, 8, 4, 14 );
//
//	//engine_tile_manager_stevepro( TILE_ISLAND_MIDD, 0, 8, 4, 14 );
//	//engine_tile_manager_stevepro( TILE_ISLAND_MIDD, 4, 8, 4, 14 );
//	//engine_tile_manager_stevepro( TILE_ISLAND_RGHT, 8, 8, 4, 14 );
//	//engine_tile_manager_stevepro( TILE_TURTLE_SEA1, 12, 8, 4, 14 );
//	//engine_tile_manager_stevepro( TILE_TURTLE_SEA1, 16, 8, 4, 14 );
//	//engine_tile_manager_stevepro( tile, 16, 8, 4, 14 );
//	//engine_tile_manager_stevepro( TILE_BRIDGE_RGHT, 12, 8, 4, 14 );
//
//	engine_tile_manager_stevepro( TILE_PLAY_TITLE, 4, 0, 24, 3 );
//	engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 2, 4, 8, 3 );
//	engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 10, 4, 8, 3 );
//	engine_tile_manager_stevepro( TILE_CLOUD_LARGE, 18, 4, 8, 3 );
//	engine_tile_manager_stevepro( TILE_CLOUD_SMALL, 26, 4, 8, 3 );
//	engine_player_manager_draw();
//	devkit_SMS_displayOn();
//}
