#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

//#define GAME_TILES			0

void engine_content_manager_load_tiles()
{
	// Sprite tiles.
	devkit_SMS_loadSpritePalette( ( void * ) game_tiles__palette__bin );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tiles__tiles__psgcompr, SPRITE_TILES );
}
