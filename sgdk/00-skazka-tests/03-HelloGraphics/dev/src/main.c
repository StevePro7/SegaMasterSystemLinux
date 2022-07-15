#include "main.h"

int main()
{
	engine_graphics_manager_init();
	engine_graphics_manager_load();

	engine_screen_manager_update();
	while( 1 )
	{
		VDP_waitVSync();
	}

	return 0;
}