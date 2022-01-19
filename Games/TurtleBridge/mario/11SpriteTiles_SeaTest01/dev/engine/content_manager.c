#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define FONT_TILES			0

void engine_content_manager_load_tiles()
{
	// Font tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) font_tiles__tiles__psgcompr, FONT_TILES );
	devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );
}

void engine_content_manager_load_turtle()
{
	// Turtle tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tiles__tiles__psgcompr, TURTLE_TILES );
	devkit_SMS_loadBGPalette( ( void * ) game_tiles__palette__bin );
}
