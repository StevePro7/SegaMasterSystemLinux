#include "test_screen.h"
#include "input_manager.h"
#include "enemy_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "graphics_manager.h"
#include "player_manager.h"

void screen_test_screen_load()
{
	engine_font_manager_draw_text( "TEST SCREEN!!", 10, 2 );
	//engine_audio_manager_play_sound( sound_type_8 );
	//engine_music_manager_beat();
	//engine_sound_manager_fight();
	//engine_music_manager_over();
}

void screen_test_screen_update( unsigned char *screen_type )
{
	unsigned char input = engine_input_manager_hold_buttonA();
	if( input )
	{
		engine_graphics_manager_draw_logo_small( LEFT_X + 1, TOP_Y + 1 );
		engine_graphics_manager_draw_village( LEFT_X + 12, TOP_Y + 6 );
		engine_graphics_manager_draw_inventory( LEFT_X + 2, TOP_Y + 14 );

		engine_graphics_manager_load();
		engine_player_manager_draw_inventory( 2, 1, 1, LEFT_X + 2, TOP_Y + 14 );

		engine_player_manager_draw( 2, 1, LEFT_X + 0, TOP_Y + 0 );
		engine_enemy_manager_draw( 3, LEFT_X + 27, TOP_Y + 0 );
	}

	*screen_type = screen_type_test;
}
