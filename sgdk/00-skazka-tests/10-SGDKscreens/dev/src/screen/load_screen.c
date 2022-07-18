#include "load_screen.h"
#include "enum_manager.h"
#include "font_manager.h"

void screen_load_screen_load()
{
	engine_font_manager_draw_text( "LOAD SCREEN!!", 10, 2 );
}

void screen_load_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_load;
}
