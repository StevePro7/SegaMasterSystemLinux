#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

void engine_content_manager_load_sprites()
{
	// Sprite tiles.
	devkit_SMS_loadSpritePalette( ( void * ) sprite_tiles__palette__bin );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) sprite_tiles__tiles__psgcompr, SPRITE_TILES );
}
