#include "main.h"

static void print00()
{
	engine_graphics_manager_draw_border();
	engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, PAL1 );
}

int main()
{
	engine_graphics_manager_init();
	engine_graphics_manager_load();

	print00();
	//engine_graphics_manager_draw_splash();
	while( 1 )
	{
		VDP_waitVSync();
	}

	return 0;
}