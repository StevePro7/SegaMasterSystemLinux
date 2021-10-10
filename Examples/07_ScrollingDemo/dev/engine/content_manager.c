#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../gfx.h"

#define FONT_TILES		0
#define TREE_TILES		64
#define SPLASH_TILES	128

void engine_content_manager_load_tiles()
{
	devkit_SMS_loadPSGaidencompressedTiles( hockey__tiles__psgcompr, 0 );
	devkit_SMS_loadBGPalette( ( void * ) hockey__palette__bin );
}