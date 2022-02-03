#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

//#define GAME_TILES			0

void engine_content_manager_load_tiles()
{
	// Game tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tilesB__tilemap__bin, 16 );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tilesB__tilemap__bin, 20 );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tilesB__tilemap__bin, 24 );

	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tilesB__tilemap__bin, 28 );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tilesB__tilemap__bin, 32 );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tilesB__tilemap__bin, 36 );

	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tilesB__tilemap__bin, 40 );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tilesB__tilemap__bin, 44 );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tilesB__tilemap__bin, 48 );

	devkit_SMS_loadBGPalette( ( void * ) game_tilesU__palette__bin );
}
