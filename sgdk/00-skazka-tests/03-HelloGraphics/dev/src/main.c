#include "main.h"

int main()
{
	engine_graphics_manager_init();
	engine_graphics_manager_draw_splash();
	while( 1 )
	{
		VDP_waitVSync();
	}

	return 0;
}