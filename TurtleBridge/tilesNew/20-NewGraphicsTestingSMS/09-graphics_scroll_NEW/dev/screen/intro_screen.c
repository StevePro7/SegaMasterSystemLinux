#include "intro_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include <stdbool.h>

#ifdef _CONSOLE
#else
#pragma disable_warning 110
#pragma disable_warning 261
#endif

static bool complete;
static signed int deltaY;

void screen_intro_screen_load()
{
	engine_font_manager_text( "INTRO", 10, 2 );
	complete = false;
}

void screen_intro_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_intro;
}
