#include "graphics_manager.h"
#include "global_manager.h"
#include "gfx.h"

#ifdef _CONSOLE
#include "_genesis.h"
#else
#include <genesis.h>
#endif

#define BORDER_TILES	56
#define SPLASH_TILES	64

static void drawImageEx( VDPPlane plane, const Image *image, unsigned char palette, unsigned int index, unsigned char x, unsigned char y );
static void draw_setMapEx( unsigned int tile, unsigned char x, unsigned char y );

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

void engine_graphics_manager_draw_border()
{
	engine_graphics_manager_draw_borderX( 0, 0, OUTER_WIDE, OUTER_HIGH );
}

void engine_graphics_manager_draw_borderX( unsigned char top, unsigned char left, unsigned char wide, unsigned char high )
{
	unsigned char tile = 0;
	//VDP_setMapEx( BG_A, gfx_border.tilemap, TILE_ATTR_FULL( PAL0, 0, 0, 0, BORDER_TILES + tile ), left, top, tile, 0, 1, 1 );
	draw_setMapEx( tile, left, top );
	draw_setMapEx( tile, wide - 1, top );
	draw_setMapEx( tile, left, high - 1 );
	draw_setMapEx( tile, wide - 1, high - 1 );

}

void engine_graphics_manager_draw_splash()
{
	//unsigned char idx;

	VDPPlane plane = BG_A;
	unsigned char palette = PAL0;
	//unsigned int index = 64;
	//u16 basetile = TILE_ATTR_FULL( palette, 0, 0, 0, 1 );

	drawImageEx( plane, &gfx_splash, palette, SPLASH_TILES, LEFT_X + 0, TOP_Y + 0 );
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
	drawImageEx( BG_A, &gfx_koschey, palette, index, x, y );
}

void engine_graphics_manager_draw_inventory( unsigned char x, unsigned char y )
{
	const unsigned int index = 32;
	drawImageEx( BG_A, &gfx_stats_inventory, PAL0, index, x, y );
}

void foo()
{
	const unsigned int index = 256;
	drawImageEx( BG_A, &gfx_battle_enemies, PAL0, index, 0, 0 );
}

static void drawImageEx( VDPPlane plane, const Image *image, unsigned char palette, unsigned int index, unsigned char x, unsigned char y )
{
	u16 basetile = TILE_ATTR_FULL( palette, 0, 0, 0, index );
	VDP_drawImageEx( plane, image, basetile, x, y, 0, CPU );
}
static void draw_setMapEx( unsigned int tile, unsigned char x, unsigned char y )
{
	VDP_setMapEx( BG_A, gfx_border.tilemap, TILE_ATTR_FULL( PAL0, 0, 0, 0, BORDER_TILES ), x, y, tile, 0, 1, 1 );
}