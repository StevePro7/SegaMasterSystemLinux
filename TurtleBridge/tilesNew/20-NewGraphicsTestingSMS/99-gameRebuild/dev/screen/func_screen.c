#include "func_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/scroll_manager.h"

void screen_func_screen_load()
{
	engine_scroll_manager_load( 30 );
	engine_font_manager_text( "FUNC SCREEN????", 10, 0 );
}

void screen_func_screen_update( unsigned char *screen_type )
{
	engine_scroll_manager_update( 0 );
	*screen_type = screen_type_func;
}
