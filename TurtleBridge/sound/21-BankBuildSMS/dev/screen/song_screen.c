#include "song_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"

static unsigned char index;

void screen_song_screen_load()
{
	engine_font_manager_text( "SONG SCREEN..!!", 10, 2 );
	//engine_music_manager_play( index );
	index = 0;
	engine_font_manager_data( index, 14, 9 );
	engine_font_manager_text( ( unsigned char* ) song_object_texts[ index ], 10, 10 );
	engine_music_manager_play( index );
}

void screen_song_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	input = engine_input_manager_hold_left();
	if( input && index > 0 )
	{
		index--;
		engine_music_manager_stop();
		engine_font_manager_data( index, 14, 9 );
		engine_font_manager_text( ( unsigned char* ) song_object_texts[ index ], 10, 10 );
		engine_music_manager_play( index );
	}

	input = engine_input_manager_hold_right();
	if( input && index < 4 )
	{
		index++;
		engine_music_manager_stop();
		engine_font_manager_data( index, 14, 9 );
		engine_font_manager_text( ( unsigned char* ) song_object_texts[ index ], 10, 10 );
		engine_music_manager_play( index );
	}
	*screen_type = screen_type_song;
}