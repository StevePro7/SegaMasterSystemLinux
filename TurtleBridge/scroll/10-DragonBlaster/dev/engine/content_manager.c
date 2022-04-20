#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

void engine_content_manager_load_bgtiles()
{
	// BGgame tiles.
	devkit_SMS_loadPSGaidencompressedTiles( tileset_tiles_psgcompr, 256 );
	devkit_SMS_loadBGPalette( tileset_palette_bin );
}
void engine_content_manager_load_sprites()
{
	// Sprite tiles.
	devkit_SMS_loadPSGaidencompressedTiles( sprites_tiles_psgcompr, 0 );
	devkit_SMS_loadSpritePalette( sprites_palette_bin );
	devkit_SMS_setSpritePaletteColor( 0, 0 );
}
