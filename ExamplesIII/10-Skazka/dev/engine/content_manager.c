#include "content_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"
#include "../banks/bank3.h"

#define LOAD_TILES		0

void engine_content_manager_load_splash()
{
	devkit_SMS_mapROMBank( splash__tilemap__stmcompr_bank );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char* ) splash__tiles__psgcompr, LOAD_TILES );
	devkit_SMS_loadSTMcompressedTileMap( LEFT_X + 0, 0, ( void * ) splash__tilemap__stmcompr );
	devkit_SMS_loadBGPalette( ( void * ) splash__palette__bin );
}

void engine_content_manager_load_tiles()
{
	// Font tiles.
	devkit_SMS_mapROMBank( font_tiles__tilemap__bin_bank );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char* ) font_tiles__tiles__psgcompr, LOAD_TILES );
	devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );
}

void engine_content_manager_load_title( unsigned char y )
{
	// Title tiles.
	devkit_SMS_mapROMBank( font_tiles__tilemap__bin_bank );
	devkit_SMS_loadPSGaidencompressedTiles( ( unsigned char* ) font_tiles__tiles__psgcompr, LOAD_TILES );
	devkit_SMS_loadSTMcompressedTileMap( LEFT_X + 0, y, ( void * ) font_tiles__tilemap__stmcompr );
	devkit_SMS_loadBGPalette( ( void * ) font_tiles__palette__bin );
}