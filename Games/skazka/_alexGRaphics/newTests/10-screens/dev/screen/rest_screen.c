#include "rest_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"

void screen_rest_screen_load()
{
	engine_font_manager_draw_text( "REST SCREEN!!", 10, 2 );
}

void screen_rest_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_rest;
}