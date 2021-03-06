#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../engine/global_manager.h"
#include "../content/gfx.h"

#define FONT_TILES		0
#define GAME_TILES		64
#define SPLASH_TILES	128

void engine_content_manager_load_tiles()
{
	// Font tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) font_tiles__tiles__psgcompr, FONT_TILES );
	devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );

	// Game tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) game_tiles__tiles__psgcompr, GAME_TILES );
	devkit_SMS_loadBGPalette( ( void * ) game_tiles__palette__bin );
}

void engine_content_manager_load_sprites()
{
	// Sprite tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) sprites__tiles__psgcompr, SPRITE_TILES );
	devkit_SMS_loadSpritePalette( ( void * ) sprites__palette__bin );
}

void engine_content_manager_load_splash()
{
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) splash__tiles__psgcompr, SPLASH_TILES );
	devkit_SMS_loadSTMcompressedTileMap( 0, 0, ( void * ) splash__tilemap__stmcompr );
	devkit_SMS_loadBGPalette( ( void * ) splash__palette__bin );
}