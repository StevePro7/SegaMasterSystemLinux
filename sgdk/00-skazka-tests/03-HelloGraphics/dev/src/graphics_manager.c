#include "graphics_manager.h"
#include "global_manager.h"
#include "gfx.h"

#ifdef _CONSOLE
#include "_genesis.h"
#else
#include <genesis.h>
#endif

#define BORDER_TILES	48

static void draw_graphics( VDPPlane plane, const Image *image, unsigned char palette, unsigned int index, unsigned char x, unsigned char y );

void engine_graphics_manager_init()
{
	u16 *pal0 = NULL;
	u16 *pal1 = NULL;

	// get the palette data of moon
#ifndef _CONSOLE
	pal0 = gfx_palette0.palette->data;
	pal1 = gfx_palette1.palette->data;
#endif

	VDP_setPalette( PAL0, pal0 );
	VDP_setPalette( PAL1, pal1 );
}

void engine_graphics_manager_load()
{
	VDP_loadTileSet( gfx_font.tileset, FONT_TILES, TRUE );
	VDP_loadTileSet( gfx_border.tileset, BORDER_TILES, TRUE );
}

void engine_graphics_manager_draw_splash()
{
	//unsigned char idx;

	VDPPlane plane = BG_A;
	//const unsigned char tile = 0;
	unsigned char palette = PAL0;
	//u16 basetile = TILE_ATTR_FULL( palette, 0, 0, 0, 1 );

	draw_graphics( plane, &gfx_splash, palette, LEFT_X + 0, TOP_Y + 0, 1 );
	//TODO - display off / splash / on.
	//for( idx = 0; idx < OUTER_WIDE; idx++ )
	//{
	//	VDP_setMapEx( plane, gfx_splash.tilemap, basetile, idx, 24, tile, 0, 1, 1 );
	//	VDP_setMapEx( plane, gfx_splash.tilemap, basetile, idx, 25, tile, 0, 1, 1 );
	//}
}

void engine_graphics_manager_draw_koschey( unsigned char x, unsigned char y, unsigned int palette )
{
	const unsigned int index = 256;
	draw_graphics( BG_A, &gfx_koschey, palette, index, x, y );
}

void engine_graphics_manager_draw_inventory( unsigned char x, unsigned char y )
{
	const unsigned int index = 32;
	draw_graphics( BG_A, &gfx_stats_inventory, PAL0, index, x, y );
}

void foo()
{
	const unsigned int index = 256;
	draw_graphics( BG_A, &gfx_battle_enemies, PAL0, index, 0, 0 );
}

static void draw_graphics( VDPPlane plane, const Image *image, unsigned char palette, unsigned int index, unsigned char x, unsigned char y )
{
	u16 basetile = TILE_ATTR_FULL( palette, 0, 0, 0, index );
	VDP_drawImageEx( plane, image, basetile, x, y, 0, CPU );
}