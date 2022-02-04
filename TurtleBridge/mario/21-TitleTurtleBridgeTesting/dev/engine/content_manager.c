#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define GAME_TILES			16

void engine_content_manager_load_tiles()
{
	// Game tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tiles__tilemap__bin, 16 );
	devkit_SMS_loadBGPalette( ( void * ) game_tiles__palette__bin );
}
