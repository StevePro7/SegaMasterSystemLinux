#include "over_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"

void screen_over_screen_load()
{
	unsigned char byte;
	unsigned char bit;
	unsigned char res;
	engine_font_manager_text( "OVER[SCREEN", 10, 2 );

	byte = 0b00000100;
	bit = 2;
	res = ( byte >> bit ) & 0x01;
	engine_font_manager_data( byte, 10, 10 );
	engine_font_manager_data( bit, 10, 11 );
	engine_font_manager_data( res, 10, 12 );

}

void screen_over_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_over;
}
