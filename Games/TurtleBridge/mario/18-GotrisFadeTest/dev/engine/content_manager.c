#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define SPLASH_TILES_OFFSET		128

void engine_content_manager_load_sprite_palette()
{
	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 0, 0, 0 ) );
}

void engine_content_manager_load_splash_screen()
{
	devkit_SMS_loadPSGaidencompressedTiles( ( void* ) splash__tiles__psgcompr, SPLASH_TILES_OFFSET );
	devkit_SMS_loadSTMcompressedTileMap( 0, 0, ( void * ) splash__tilemap__stmcompr );
	devkit_SMS_loadBGPalette( ( void * ) splash__palette__bin );
}

void fadeInBGPalette( unsigned char *palette )
{
	//unsigned char i, j, redComponent, greenComponent, blueComponent;
	//unsigned char temporal_palette[ 16 ];

	devkit_SMS_zeroBGPalette();
}
void engine_content_manager_logo_fade_in()
{

}