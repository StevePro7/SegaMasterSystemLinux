#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../gfx.h"

#define title_TILES_OFFSET		0
#define FONT_TILES				96

void engine_content_manager_load_sprite_palette()
{
	devkit_SMS_setSpritePaletteColor( 0, 0, 0, 0 );
}

void engine_content_manager_load_title_screen()
{
	// Title.
	devkit_SMS_loadPSGaidencompressedTiles( title__tiles__psgcompr, title_TILES_OFFSET );
	devkit_SMS_loadSTMcompressedTileMap( 0, 0, ( void * ) title__tilemap__stmcompr );
	devkit_SMS_loadBGPalette( ( void * ) title__palette__bin );

	// Font tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char* ) font_tiles__tiles__psgcompr, FONT_TILES );
	//devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );
}