#include "song_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"

void screen_song_screen_load()
{
	engine_font_manager_text( "SONG SCREEN!!", 10, 2 );
}

void screen_song_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_song;
}
