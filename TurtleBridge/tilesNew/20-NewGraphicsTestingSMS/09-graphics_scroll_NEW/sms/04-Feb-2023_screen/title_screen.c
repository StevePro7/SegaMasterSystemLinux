#include "title_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank3.h"

static unsigned int tmp;
static void draw_title(unsigned int tmp);

void screen_title_screen_load()
{
	tmp = 144;
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_titles();
	//engine_sprite_manager_clear('Z');
	//engine_font_manager_data( 51, 14, 12 );
	//engine_font_manager_text( "TITLES SCREEN", 10, 2 );
	draw_title(tmp);
	//engine_font_manager_data( tmp, 10, 20 );
	devkit_SMS_displayOn();
}

void screen_title_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	input = engine_input_manager_move(input_type_left);
	if( input )
	{
		tmp -= 2;
		draw_title( tmp );
		engine_font_manager_data( tmp, 10, 20 );
	}
	input = engine_input_manager_move(input_type_right);
	if( input )
	{
		tmp += 2;
		draw_title( tmp );
		engine_font_manager_data( tmp, 10, 20 );
	}
	*screen_type = screen_type_title;
}

static void draw_title(unsigned int tmp)
{
	const unsigned char *tiles = titles_tiles__tilemap__bin;
	unsigned int idx;
	unsigned int val;
	unsigned char row, col;

	unsigned char x, y;
	unsigned char size, w, h;
	size = 24;
	w = 16;
	h = 12;
	x = 8;
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