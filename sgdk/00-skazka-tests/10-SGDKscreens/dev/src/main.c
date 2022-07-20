#include "main.h"

int main()
{
	unsigned char open_screen_type;

	open_screen_type = screen_type_splash;
	//open_screen_type = screen_type_title;
	//open_screen_type = screen_type_diff;
	//open_screen_type = screen_type_intro;
	open_screen_type = screen_type_load;
	//open_screen_type = screen_type_start;
	//open_screen_type = screen_type_stats;
	//open_screen_type = screen_type_shop;
	//open_screen_type = screen_type_relive;
	//open_screen_type = screen_type_complete;
	//open_screen_type = screen_type_forest;
	//open_screen_type = screen_type_over;
	//open_screen_type = screen_type_credit;
	//open_screen_type = screen_type_menu;
	//open_screen_type = screen_type_victory;

	// Initialize player first!
	engine_player_manager_init();
	engine_hack_manager_init();
	engine_hack_manager_load();
	engine_hack_manager_invert();

	engine_audio_manager_init();
	engine_game_manager_init();

	engine_graphics_manager_init();
	engine_graphics_manager_load();
	engine_graphics_manager_clear_full();

	engine_screen_manager_init( open_screen_type );
	while( 1 )
	{
		engine_input_manager_update();
		engine_screen_manager_update();

		VDP_waitVSync();
	}

	return 0;
}