#include "splash_screen.h"
#include "enum_manager.h"
#include "graphics_manager.h"

void screen_splash_screen_load()
{
	engine_graphics_manager_clear_full();
	engine_graphics_manager_draw_splash();
}

void screen_splash_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_splash;
}
