#include "splash_screen.h"
#include "enum_manager.h"
//#include "../engine/font_manager.h"
#include "graphics_manager.h"

void screen_splash_screen_load()
{
	//engine_font_manager_text( "SPLASH SCREEN!!", 10, 2 );
	engine_graphics_manager_draw_splash();
}

void screen_splash_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_splash;
}
