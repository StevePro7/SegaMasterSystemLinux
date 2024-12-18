#include "content_manager.h"
#include "../engine/global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../gfx.h"

#define BGGAME_TILES	0

static void load_tile( unsigned char bank, const unsigned char *tiles, unsigned char tilefrom, const unsigned char *palette );

void engine_content_manager_bggame()
{
	devkit_SMS_loadPSGaidencompressedTiles( font_tiles__tiles__psgcompr, 0 );
	devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );
}

void engine_content_manager_splash()
{
	//load_tile( splash_tiles__tiles__psgcompr_bank, splash_tiles__tiles__psgcompr, BGGAME_TILES, splash_tiles__palette__bin );
}

void engine_content_manager_titles()
{
	//load_tile( titles_tiles__tiles__psgcompr_bank, titles_tiles__tiles__psgcompr, BGGAME_TILES, titles_tiles__palette__bin );
}

void engine_content_manager_sprite()
{
	// Sprite tiles.
	//devkit_SMS_mapROMBank( sprite_tiles__tiles__psgcompr_bank );
	//devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char * ) sprite_tiles__tiles__psgcompr, SPRITE_TILES );
	//devkit_SMS_loadSpritePalette( ( void * ) sprite_tiles__palette__bin );
}

static void load_tile( unsigned char bank, const unsigned char *tiles, unsigned char tilefrom, const unsigned char *palette )
{
	devkit_SMS_mapROMBank( bank );
	devkit_SMS_loadPSGaidencompressedTiles( tiles, tilefrom );
	devkit_SMS_loadBGPalette( ( void * ) palette );
}