#include "complete_screen.h"
#include "enum_manager.h"
#include "font_manager.h"

void screen_complete_screen_load()
{
	engine_font_manager_draw_text( "COMPLETE SCREEN!!", 10, 2 );
}

void screen_complete_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_complete;
}
