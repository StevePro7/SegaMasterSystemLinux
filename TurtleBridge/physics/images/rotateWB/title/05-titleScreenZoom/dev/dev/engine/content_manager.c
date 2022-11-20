#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

void engine_content_manager_load_bgtiles()
{
	// BGgame tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) bggame_tiles__tiles__psgcompr, 0 );
	devkit_SMS_loadBGPalette( ( void * ) bggame_tiles__palette__bin );

	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) titlescreen__tiles__psgcompr, 64 );
	devkit_SMS_loadBGPalette( ( void * ) titlescreen__palette__bin );
}
void engine_content_manager_load_sprites()
{
	// Sprite tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) sprite_tiles__tiles__psgcompr, SPRITE_TILES );
	devkit_SMS_loadSpritePalette( ( void * ) sprite_tiles__palette__bin );
}
