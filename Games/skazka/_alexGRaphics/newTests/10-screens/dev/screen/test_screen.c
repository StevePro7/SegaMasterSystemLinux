#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"

void screen_test_screen_load()
{
	//engine_font_manager_draw_text( "MY TEST SCREEN", 10, 2 );

	engine_graphics_manager_draw_border();
}

void screen_test_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_test;
}
