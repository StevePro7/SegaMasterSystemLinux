#include "splash_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"

void screen_splash_screen_load()
{
	engine_content_manager_load_tiles_splash();
}

void screen_splash_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_splash;
}
