#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../gfx.h"

#define FONT_TILES		0
#define LOAD_TILES		64
#define SPRITE_TILES	256

// Tiles.
void engine_content_manager_load_tiles_font()
{
	// Font tiles.
	devkit_SMS_loadPSGaidencompressedTiles( font_tiles__tiles__psgcompr, FONT_TILES );
	devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );
}
void engine_content_manager_load_tiles_game()
{
	// Game tiles.
	devkit_SMS_loadPSGaidencompressedTiles( game_tiles__tiles__psgcompr, LOAD_TILES );
	devkit_SMS_loadBGPalette( ( void * ) game_tiles__palette__bin );
}
void engine_content_manager_load_sprites()
{
	// Sprite tiles.
	devkit_SMS_loadPSGaidencompressedTiles( sprites__tiles__psgcompr, SPRITE_TILES );
	devkit_SMS_loadSpritePalette( ( void * ) sprites__palette__bin );
}