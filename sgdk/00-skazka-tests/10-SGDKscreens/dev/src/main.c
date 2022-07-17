#include "main.h"

//static void print00()
//{
//	engine_player_manager_draw( 2, 1, LEFT_X + 2, TOP_Y + 16 );
//	engine_enemy_manager_draw( 3, LEFT_X + 27, TOP_Y + 16 );
//}

int main()
{
	engine_audio_manager_init();
	//engine_audio_manager_play_sound( sound_type_2 );
	engine_audio_manager_play_sound( 1 );

	//engine_graphics_manager_init();
	//engine_graphics_manager_load();

	//print00();
	//engine_graphics_manager_draw_splash();
	while( 1 )
	{
		VDP_waitVSync();
	}

	return 0;
}