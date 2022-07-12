#include "graphics_manager.h"
#include "global_manager.h"
#include "resources.h"

#ifdef _CONSOLE
#include "_genesis.h"
#else
#include <genesis.h>
#endif

static void draw_graphics( VDPPlane plane, const Image *image, unsigned char palette, unsigned char x, unsigned char y );

void engine_graphics_manager_init()
{
	u16 *pal0 = NULL;

	// get the palette data of moon
#ifndef _CONSOLE
	pal0 = gfx_palette0.palette->data;
#endif

	VDP_setPalette( PAL0, pal0 );
}

void engine_graphics_manager_draw_splash()
{
	//unsigned char idx;

	VDPPlane plane = BG_A;
	//const unsigned char tile = 0;
	unsigned char palette = PAL0;
	//u16 basetile = TILE_ATTR_FULL( palette, 0, 0, 0, 1 );

	draw_graphics( plane, &gfx_splash, palette, 0, 0 );
	//TODO - display off / splash / on.
	//for( idx = 0; idx < OUTER_WIDE; idx++ )
	//{
	//	VDP_setMapEx( plane, gfx_splash.tilemap, basetile, idx, 24, tile, 0, 1, 1 );
	//	VDP_setMapEx( plane, gfx_splash.tilemap, basetile, idx, 25, tile, 0, 1, 1 );
	//}
}


static void draw_graphics( VDPPlane plane, const Image *image, unsigned char palette, unsigned char x, unsigned char y )
{
	u16 basetile = TILE_ATTR_FULL( palette, 0, 0, 0, 1 );
	VDP_drawImageEx( plane, image, basetile, LEFT_X + x, TOP_Y + y, 0, CPU );
}