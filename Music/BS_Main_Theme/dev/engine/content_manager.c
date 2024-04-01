#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"
#include "../banks/bank3.h"
#include "../gfx.h"

#define BACK_TILES_OFFSET		0
#define MISC_TILES_OFFSET		128

void engine_content_manager_load_back_tiles()
{
	// Back tiles.
	devkit_SMS_loadPSGaidencompressedTiles( back_tiles__tiles__psgcompr, BACK_TILES_OFFSET );
	devkit_SMS_loadBGPalette( ( void * ) back_tiles__palette__bin );
}
