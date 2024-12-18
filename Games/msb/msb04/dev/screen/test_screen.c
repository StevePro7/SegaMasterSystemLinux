#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 110
#pragma disable_warning 261
#endif

void screen_test_screen_load()
{
	engine_font_manager_text( "TEST SCREEN", 1, 5 );
}

void screen_test_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_test;
}

