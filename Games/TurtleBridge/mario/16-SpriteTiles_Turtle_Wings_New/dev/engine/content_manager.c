#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define FONT_TILES			0

void engine_content_manager_load_tiles()
{
	// Font tiles.
	//devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) font_tiles__tiles__psgcompr, FONT_TILES );
	//devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );
}

void engine_content_manager_load_turtle()
{
	// Turtle tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) wingdown__tiles__psgcompr, 64 );

	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) wingup__tiles__psgcompr, 96 );

	devkit_SMS_loadBGPalette( ( void * ) wings__palette__bin );
}

void engine_content_manager_load_sprites()
{
}
