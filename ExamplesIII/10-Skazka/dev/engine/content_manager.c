#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

#define TREE_TILES		64
#define FONT_TILES		0
#define SPRITE_TILES	256

void engine_content_manager_load_tiles()
{
	// Font tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char* ) font_tiles__tiles__psgcompr, FONT_TILES );
	devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );

}

void engine_content_manager_load_sprites()
{
	// Sprite tiles.
}