#include "test_screen.h"
#include "title_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/sprite_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

static unsigned int tmp;
static void draw_title(unsigned int tmp);
static void drawScreen();

void screen_test_screen_load()
{
	tmp = TILE_CLOUD_SMALL;

	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	draw_title( tmp );
	engine_font_manager_data( tmp, 10, 20 );
	devkit_SMS_displayOn();
	//drawScreen();
}

void screen_test_screen_update( unsigned char *screen_type )	
{
	unsigned char input;
	input = engine_input_manager_hold(input_type_left);
	if( input )
	{
		tmp -= 2;
		draw_title( tmp );
		engine_font_manager_data( tmp, 10, 20 );
	}
	//input = engine_input_manager_move(input_type_right);
	input = engine_input_manager_hold(input_type_right);
	if( input )
	{
		tmp += 2;
		draw_title( tmp );
		engine_font_manager_data( tmp, 10, 20 );
	}
	*screen_type = screen_type_test;
}

static void draw_title(unsigned int tmp)
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;
	unsigned int idx;
	unsigned int val;
	unsigned char row, col;

	unsigned char x, y;
	unsigned char size, w, h;
	size = 24;
	w = 8;
	h = 3;
	x = 0;
	y = 0;

	for( row = 0; row < h; row++ )
	{
		for( col = 0; col < w; col++ )
		{
			idx = tmp + row * 2 * size + col * 2;
			val = tiles[ idx ];
			devkit_SMS_setNextTileatXY( x + col, y + row );
			devkit_SMS_setTile( ( val ) );
		}
	}
}

static void drawScreen()
{
	//unsigned char x;
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();

	engine_graphics_manager_sea();
	//for( x = 0; x < 32; x += 4 )
	//{
	//	//engine_graphics_manager_sea( x );
	//}
	////engine_sprite_manager_clear('[');

	//engine_tile_manager_stevepro( TILE_PLAY_TITLE, 4, 0, 24, 3 );
	//engine_tile_manager_stevepro( TILE_CLOUDS, 2, 4, 8, 3 );
	//engine_tile_manager_stevepro3( TILE_CLOUDS, 10, 4, 8, 3 );
	////engine_tile_manager_stevepro( TILE_CLOUDB, 18, 4, 8, 3 );
	////engine_tile_manager_stevepro( TILE_CLOUDS, 26, 4, 8, 3 );

	//engine_tile_manager_stevepro( TILE_BRIDGE_MIDD, 0, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_BRIDGE_MIDD, 4, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_BRIDGE_SIGN, 8, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_BRIDGE_RGHT, 12, 8, 4, 14 );

	//engine_tile_manager_stevepro( TILE_WAVE, 16, 8, 4, 14 );
	//engine_tile_manager_stevepro( TILE_WAVE, 20, 8, 4, 14 );

	//engine_tile_manager_stevepro( TILE_ISLAND_02, 24, 8, 8, 14 );

	//draw_title(tmp);
	//engine_font_manager_data( tmp, 10, 20 );
	devkit_SMS_displayOn();
}