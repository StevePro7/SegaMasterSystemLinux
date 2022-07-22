#include "test_screen.h"
#include "audio_manager.h"
#include "enum_manager.h"
#include "font_manager.h"

void screen_test_screen_load()
{
	engine_font_manager_draw_text( "TEST SCREEN!!", 10, 2 );
	//engine_audio_manager_play_sound( sound_type_8 );
	//engine_music_manager_beat();
	//engine_sound_manager_fight();
	engine_music_manager_over();
}

void screen_test_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_test;
}
