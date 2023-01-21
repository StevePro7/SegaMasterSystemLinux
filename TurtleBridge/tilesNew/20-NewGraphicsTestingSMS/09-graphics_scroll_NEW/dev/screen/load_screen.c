#include "load_screen.h"
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

void screen_load_screen_load()
{
	unsigned int tile = TILE_TURTLE_SEA2;
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	engine_graphics_manager_sea();

	engine_tile_manager_stevepro( TILE_ISLAND_MIDD, 0, 8, 4, 14 );
	engine_tile_manager_stevepro( TILE_ISLAND_MIDD, 4, 8, 4, 14 );
	engine_tile_manager_stevepro( TILE_ISLAND_RGHT, 8, 8, 4, 14 );
	engine_tile_manager_stevepro( TILE_TURTLE_SEA2, 12, 8, 4, 14 );
	engine_tile_manager_stevepro( TILE_TURTLE_SEA2, 16, 8, 4, 14 );
	//engine_tile_manager_stevepro( tile, 16, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_BRIDGE_RGHT, 12, 8, 4, 14 );

	//engine_font_manager_text( "LOAD SCREEN", 10, 10 );

	devkit_SMS_displayOn();
}

void screen_load_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	input = engine_input_manager_hold( input_type_left );
	if( input )
	{
		engine_player_manager_left();
	}
	//input = engine_input_manager_move(input_type_right);
	input = engine_input_manager_hold( input_type_right );
	if( input )
	{
		engine_player_manager_right();
	}

	engine_player_manager_draw();
	*screen_type = screen_type_load;
}
