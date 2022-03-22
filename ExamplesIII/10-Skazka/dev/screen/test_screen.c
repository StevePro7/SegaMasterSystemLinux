#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"

unsigned char index;

void screen_test_screen_load()
{
	engine_font_manager_text( "TEST SCREEN!!", 2, 10 );
}

void screen_test_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_test;
}
