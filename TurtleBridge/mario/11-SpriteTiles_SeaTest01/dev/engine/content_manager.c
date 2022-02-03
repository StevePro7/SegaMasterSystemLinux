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
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tiles__tiles__psgcompr, 0 );
	devkit_SMS_loadBGPalette( ( void * ) game_tiles__palette__bin );

	// Sprite tiles.
	devkit_SMS_loadSpritePalette( ( void * ) mario01__palette__bin );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) left01__tiles__psgcompr, SPRITE_TILES + ( 0 * 4 ) );
}
