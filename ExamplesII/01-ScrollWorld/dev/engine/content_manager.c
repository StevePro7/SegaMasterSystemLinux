#include "content_manager.h"
#include "../content/gfx.h"

#define FONT_TILES		0

void engine_content_manager_load_tiles()
{
	// Font tiles.
	SMS_loadPSGaidencompressedTiles( font_tiles__tiles__psgcompr, FONT_TILES );
	SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );
}
