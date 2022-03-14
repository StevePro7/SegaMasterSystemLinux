#include "record_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"

void screen_record_screen_load()
{
	engine_font_manager_text( "HELLO WORLD", 2, 10 );
	engine_font_manager_char( 'A', 2, 12 );

	engine_font_manager_data( 1234, 12, 14 );
	engine_font_manager_data( 5678, 12, 15 );
	engine_font_manager_data( 1234, 12, 16 );
	engine_font_manager_zero( 90, 12, 17 );
}

void screen_record_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_record;
}
