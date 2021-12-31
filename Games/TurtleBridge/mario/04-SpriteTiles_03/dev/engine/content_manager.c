#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define FONT_TILES		0

void engine_content_manager_load_tiles()
{
	// Font tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) font_tiles__tiles__psgcompr, FONT_TILES );
	devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );
}

void engine_content_manager_load_sprites()
{
	// Sprite tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) mario01__tiles__psgcompr, SPRITE_TILES );
	devkit_SMS_loadSpritePalette( ( void * ) mario01__palette__bin );
}

void engine_content_manager_load_sprites01()
{
	// Sprite tiles.
	//devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) mario01__tiles__psgcompr, SPRITE_TILES );

	//devkit_SMS_VRAMmemcpy( 0x2000, mario01__tiles__psgcompr, 8 );
	devkit_UNSAFE_SMS_VRAMmemcpy128( 0x2000, ( unsigned char * ) mario01__tiles__psgcompr );
	//devkit_SMS_VRAMmemset( 0x2000, 0x3f, 32 );
}

void engine_content_manager_load_sprites02()
{
	// Sprite tiles.
//	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) mario02__tiles__psgcompr, SPRITE_TILES );
}