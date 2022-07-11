#include "font_manager.h"
#include "resources.h"

#define FONT_TILES	0		// 1  is graphics tile
#define TEXT_ROOT	64		// 64 is "A" (65-01).
#define DATA_ROOT	27		// 27 is "0" (48-27).
#define UNIT_ROOT	10		// 10 is decimal
#define DATA_LONG	3		// 3 placeholder

#ifdef _CONSOLE
#include "_genesis.h"
#else
#include <genesis.h>
#endif

void engine_font_manager_init()
{
	unsigned short *data = NULL;
	unsigned char palette = NULL;

	VDP_loadTileSet( gfx_font.tileset, FONT_TILES, TRUE );
	if( NULL != gfx_font.palette )
	{
		data = gfx_font.palette->data;
	}

	VDP_setPalette( palette, data );
}

void engine_font_manager_char( const unsigned char ch, unsigned char x, unsigned char y )
{
	unsigned char tile = ch - TEXT_ROOT;
	VDP_setMapEx( BG_A, gfx_font.tilemap, TILE_ATTR_FULL( PAL0, FALSE, FALSE, FALSE, FONT_TILES ), x, y, tile, 0, 1, 1 );
}

void engine_font_manager_text( char *text, unsigned char x, unsigned char y )
{
	unsigned char idx = 0;
	while( '\0' != text[ idx ] )
	{
		unsigned char tile = text[ idx ] - TEXT_ROOT;
		VDP_setMapEx( BG_A, gfx_font.tilemap, TILE_ATTR_FULL( PAL0, FALSE, FALSE, FALSE, FONT_TILES ), x++, y, tile, 0, 1, 1 );
		idx++;
	}
}