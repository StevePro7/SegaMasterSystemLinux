#include "content_manager.h"
#include "../../lib/SMSlib.h"
#include "../gfx.h"

#define SPLASH_TILES_OFFSET		128

void engine_content_manager_load_sprite_palette()
{
	SMS_setSpritePaletteColor( RGB( 0, 0, 0 ), 0 );
}

void engine_content_manager_load_splash_screen()
{
	SMS_loadPSGaidencompressedTiles( splash__tiles__psgcompr, SPLASH_TILES_OFFSET );
	SMS_loadSTMcompressedTileMap( 0, 0, ( void * ) splash__tilemap__stmcompr );
	SMS_loadBGPalette( ( void * ) splash__palette__bin );
}