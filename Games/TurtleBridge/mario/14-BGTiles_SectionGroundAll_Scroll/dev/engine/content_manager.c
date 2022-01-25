#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define FONT_TILES			0
//#define GAME_TILES			64

void engine_content_manager_load_tiles()
{
	// Game tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) font_tiles__tiles__psgcompr, FONT_TILES );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tiles__tiles__psgcompr, GAME_TILES );
	devkit_SMS_loadBGPalette( ( void * ) game_tiles__palette__bin );
}

void engine_content_manager_load_turtle()
{
	// Sprite tiles.
	//devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) left01__tiles__psgcompr, SPRITE_TILES + ( 0 * 4 ) );
	//devkit_SMS_loadSpritePalette( ( void * ) mario01__palette__bin );
}
