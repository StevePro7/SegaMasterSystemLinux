#include "graphics_manager.h"
#include "global_manager.h"
#include "resources.h"

#ifdef _CONSOLE
#include "_genesis.h"
#else
#include <genesis.h>
#endif

void engine_graphics_manager_init()
{
	u16 *data = NULL;

	// get the palette data of moon
#ifndef _CONSOLE
	data = gfx_palette0.palette->data;
#endif

	VDP_setPalette( PAL0, data );
}

void engine_graphics_manager_draw_splash()
{
	VDP_drawImageEx( BG_A, &gfx_splash, TILE_ATTR_FULL( PAL0, 0, 0, 0, 1 ), 0, 0, 0, CPU );
}
