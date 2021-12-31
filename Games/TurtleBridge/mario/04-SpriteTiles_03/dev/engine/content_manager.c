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
	//devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) mario01__tiles__psgcompr, SPRITE_TILES );
	devkit_SMS_loadSpritePalette( ( void * ) mario01__palette__bin );

	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) rght01__tiles__psgcompr, SPRITE_TILES + ( 0 * 4 ) );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) rght02__tiles__psgcompr, SPRITE_TILES + ( 1 * 4 ) );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) rght03__tiles__psgcompr, SPRITE_TILES + ( 2 * 4 ) );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) rght04__tiles__psgcompr, SPRITE_TILES + ( 3 * 4 ) );

	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) left01__tiles__psgcompr, SPRITE_TILES + ( 4 * 4 ) );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) left02__tiles__psgcompr, SPRITE_TILES + ( 5 * 4 ) );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) left03__tiles__psgcompr, SPRITE_TILES + ( 6 * 4 ) );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) left04__tiles__psgcompr, SPRITE_TILES + ( 7 * 4 ) );
}

//void engine_content_manager_load_sprites01()
//{
//	// Sprite tiles.
//	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) left01__tiles__psgcompr, SPRITE_TILES + ( 0 * 4 ) );
//}
//
//void engine_content_manager_load_sprites02()
//{
//	// Sprite tiles.
//	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) left02__tiles__psgcompr, SPRITE_TILES + ( 1 * 4 ) );
//}