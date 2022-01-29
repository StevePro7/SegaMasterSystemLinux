#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define FONT_TILES			0
//#define BACK_TILES			64

void engine_content_manager_load_tiles()
{
	// Font tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) font_tiles__tiles__psgcompr, FONT_TILES );
	devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );

	// Turtle tiles.
//	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) back_tiles__tiles__psgcompr, TURTLE_TILES );
//	devkit_SMS_loadBGPalette( ( void * ) back_tiles__palette__bin );
}
