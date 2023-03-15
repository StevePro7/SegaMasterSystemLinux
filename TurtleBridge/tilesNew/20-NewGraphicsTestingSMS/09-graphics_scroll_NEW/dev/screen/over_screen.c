#include "over_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"

void screen_over_screen_load()
{
//	unsigned char byte;
//	unsigned char bit;
//	unsigned char res;
	//engine_graphics_manager_screen();
	engine_font_manager_text( "OVER SCREEN!!", 10, 3 );

	//byte = 0b00000100;
	//bit = 2;
	//res = ( byte >> bit ) & 0x01;
	//engine_font_manager_data( byte, 10, 10 );
	//engine_font_manager_data( bit, 10, 11 );
	//engine_font_manager_data( res, 10, 12 );

	// TODO play Game Over PCM - block
	// TODO play game over music
}

void screen_over_screen_update( unsigned char *screen_type )
{
	unsigned char input1, input2;

	input1 = engine_input_manager_hold( input_type_fire1 );
	input2 = engine_input_manager_hold( input_type_fire2 );
	if( input1 || input2 )
	{
		*screen_type = screen_type_start;
		return;
	}

	//engine_scroll_manager_update( 0 );
	//engine_player_manager_draw();
	*screen_type = screen_type_over;
}
