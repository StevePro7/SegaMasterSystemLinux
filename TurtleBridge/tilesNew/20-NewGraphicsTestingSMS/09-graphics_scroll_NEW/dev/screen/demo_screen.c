#include "demo_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

static unsigned int tmp;
static void draw_tiles( unsigned int tmp );

void screen_demo_screen_load()
{
	// Draw individual turtle
	tmp = TILE_TURTLE_FLIP;
	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );

	// Draw screen specific graphics.
	engine_font_manager_text( "DEMO SCREEN!!", 10, 0 );
	draw_tiles( tmp );

	
	devkit_SMS_displayOn();
}

void screen_demo_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	input = engine_input_manager_move( input_type_left );
	if( input )
	{
		tmp -= 2;
		draw_tiles( tmp );
		engine_font_manager_data( tmp, 10, 20 );
	}
	input = engine_input_manager_move( input_type_right );
	if( input )
	{
		tmp += 2;
		draw_tiles( tmp );
		engine_font_manager_data( tmp, 10, 20 );
	}

	*screen_type = screen_type_demo;
}

static void draw_tiles( unsigned int tmp )
{
	const unsigned char *tiles = bggame_tiles__tilemap__bin;

	engine_graphics_manager_image( tiles, tmp, 5, 10, 4, 3 );
	engine_graphics_manager_image( tiles, tmp, 10, 20, 4, 3 );

	engine_graphics_manager_image_flip( tiles, tmp, 10, 10, 4, 3 );
	//unsigned int idx;
	//unsigned int val;
	//unsigned char row, col;

	//unsigned char x, y;
	//unsigned char size, w, h;
	//size = 24;
	//w = 4;
	//h = 3;
	//x = 1;
	//y = 0;

	//for( row = 0; row < h; row++ )
	//{
	//	for( col = 0; col < w; col++ )
	//	{
	//		idx = tmp + row * 2 * size + col * 2;
	//		val = tiles[ idx ];
	//		devkit_SMS_setNextTileatXY( x + col, y + row );
	//		devkit_SMS_setTile( ( val ) );
	//	}
	//}
}