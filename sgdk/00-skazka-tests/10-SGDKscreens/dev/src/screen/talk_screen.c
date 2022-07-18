#include "talk_screen.h"
#include "enum_manager.h"
#include "font_manager.h"

void screen_talk_screen_load()
{
	engine_font_manager_text( "TALK SCREEN!!", 10, 2 );
}

void screen_talk_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_talk;
}
