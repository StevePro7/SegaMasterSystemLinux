#include "main.h"

int main()
{
	engine_graphics_manager_init();
	//engine_graphics_manager_draw_splash();
	//engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, PAL1 );

	foo();
	engine_player_manager_draw( 20, 0 );

	while( 1 )
	{
		VDP_waitVSync();
	}

	return 0;
}