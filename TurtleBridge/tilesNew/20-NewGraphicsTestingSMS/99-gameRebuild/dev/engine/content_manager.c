#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"
#include "../banks/bank2.h"

#define SPLASH_TILES	256

void engine_content_manager_load_bgtiles()
{
	// BGgame tiles.
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) bggame_tiles__tiles__psgcompr, 0 );
	devkit_SMS_loadBGPalette( ( void * ) bggame_tiles__palette__bin );
}
void engine_content_manager_load_sprites()
{
	// Sprite tiles.
	//devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) sprite_tiles__tiles__psgcompr, SPRITE_TILES );
	//devkit_SMS_loadSpritePalette( ( void * ) sprite_tiles__palette__bin );
}

void engine_content_manager_load_tiles_splash()
{
	devkit_SMS_mapROMBank( splash__tiles__psgcompr_bank );
	devkit_SMS_loadPSGaidencompressedTiles( splash__tiles__psgcompr, SPLASH_TILES );
	devkit_SMS_loadSTMcompressedTileMap( 0, 0, ( void * ) splash__tilemap__stmcompr );
	devkit_SMS_loadBGPalette( ( void * ) splash__palette__bin );
}
