#include "content_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"
#include "../banks/bank2.h"
#include "../banks/bank3.h"

#define FONT_TILES		0
#define BORDER_TILES	48
#define SPRITE_TILES	436

#define LOGO_TILES		64
//#define ENEMY_TILES		256

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
	devkit_SMS_mapROMBank( logo_big__tiles__psgcompr_bank );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) logo_big__tiles__psgcompr, LOGO_TILES );
}

void engine_content_manager_load_koschey()
{
	devkit_SMS_mapROMBank( koschey__tiles__psgcompr_bank );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) koschey__tiles__psgcompr, ENEMY_TILES );
}