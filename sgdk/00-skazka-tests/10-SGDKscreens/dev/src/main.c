#include "main.h"

int main()
{
	unsigned char open_screen_type;

	open_screen_type = screen_type_splash;
	//open_screen_type = screen_type_title;
	//open_screen_type = screen_type_diff;
	open_screen_type = screen_type_intro;

	engine_screen_manager_init( open_screen_type );

	engine_graphics_manager_init();
	engine_graphics_manager_load();

	while( 1 )
	{
		engine_input_manager_update();
		engine_screen_manager_update();

		VDP_waitVSync();
	}

	return 0;
}