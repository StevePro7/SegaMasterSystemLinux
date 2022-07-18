#include "main.h"

int main()
{
	unsigned char open_screen_type;

	open_screen_type = screen_type_splash;
	//open_screen_type = screen_type_title;
	//open_screen_type = screen_type_diff;
	//open_screen_type = screen_type_intro;
	open_screen_type = screen_type_over;
	//open_screen_type = screen_type_test;

	// Initialize player first!
	//engine_player_manager_init();
	engine_hack_manager_init();
	engine_hack_manager_load();
	engine_hack_manager_invert();

	engine_audio_manager_init();
	engine_game_manager_init();

	engine_graphics_manager_init();
	engine_graphics_manager_load();

	engine_screen_manager_init( open_screen_type );
	while( 1 )
	{
		engine_input_manager_update();
		engine_screen_manager_update();

		VDP_waitVSync();
	}

	return 0;
}