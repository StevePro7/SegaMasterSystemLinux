#include "demo_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"

void screen_demo_screen_load()
{
	engine_graphics_manager_common();
	engine_font_manager_text( "DEMO SCREEN", 21, 0 );
}

void screen_demo_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_demo;
}
