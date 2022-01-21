#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define FONT_TILES		0
#define SPRITE_TILES	256

void engine_content_manager_load_tiles()
{
	// Font tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) font_tiles__tiles__psgcompr, FONT_TILES );
	devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );
}
//
//void engine_content_manager_load_sprites()
//{
//	// Sprite tiles.
//	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) sprites__tiles__psgcompr, SPRITE_TILES );
//	devkit_SMS_loadSpritePalette( ( void * ) sprites__palette__bin );
//}
