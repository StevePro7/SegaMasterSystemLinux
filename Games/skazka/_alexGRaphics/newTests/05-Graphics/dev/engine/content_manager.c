#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define FONT_TILES		0
#define BORDER_TILES	48
#define SPRITE_TILES	436

#define LGOG_TILES		64

void engine_content_manager_load_tiles()
{
	// Background tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) font__tiles__psgcompr, FONT_TILES );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) border__tiles__psgcompr, BORDER_TILES );
	devkit_SMS_loadBGPalette( ( void * ) background__palette__bin );

	// Sprite tiles
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) battle_enemies_leshy__tiles__psgcompr, SPRITE_TILES );
	devkit_SMS_loadSpritePalette( ( void * ) sprite__palette__bin );
}

void engine_content_manager_load_logo_big()
{
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) font__tiles__psgcompr, FONT_TILES );
}