#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../gfx.h"

#define BACK_TILES_OFFSET 0

void engine_content_manager_load_back_tiles()
{
	// Back tiles.
	devkit_SMS_loadPSGaidencompressedTiles( back_tiles__tiles__psgcompr, BACK_TILES_OFFSET );
	devkit_SMS_loadBGPalette( ( void * ) back_tiles__palette__bin );
}