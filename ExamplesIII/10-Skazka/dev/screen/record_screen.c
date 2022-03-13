#include "record_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"

void screen_record_screen_load()
{
	engine_font_manager_text( "RECORD SCREEN!!", 2, 10 );
	engine_font_manager_char( 'X', 2, 12 );

	engine_font_manager_data( 8, 12, 14 );
	engine_font_manager_zero( 28, 12, 16 );
}

void screen_record_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_record;
}
