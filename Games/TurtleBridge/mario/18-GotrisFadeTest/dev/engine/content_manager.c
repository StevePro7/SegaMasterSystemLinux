#include "content_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

#define SPLASH_TILES_OFFSET		128

#define getRedFromRGB(color)        (color&11)
#define getGreenFromRGB(color)      ((color&1100)>>2)
#define getBlueFromRGB(color)      ((color&110000)>>4)

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
	unsigned char i, j, redComponent, greenComponent, blueComponent;
	unsigned char temporal_palette[ 16 ];

	devkit_SMS_zeroBGPalette();
	j = 0;
	for( j = 0; j < 16; j++ ) {
		temporal_palette[ j ] = 0;
	}
	//green 
	i = 0;
	while( i < 4 ) {
		j = 0;
		while( j < 16 ) {
			redComponent = getRedFromRGB( temporal_palette[ j ] );
			greenComponent = getGreenFromRGB( temporal_palette[ j ] );
			blueComponent = getBlueFromRGB( temporal_palette[ j ] );
			if( greenComponent < getGreenFromRGB( palette[ j ] ) ) {
				greenComponent++;
			}
			temporal_palette[ j ] = devkit_RGB( redComponent, greenComponent, blueComponent );
			j++;
		}
		//waitForFrame();
		devkit_SMS_waitForVBlank();

		devkit_SMS_loadBGPalette( temporal_palette );
		i++;
	}
	//red
	i = 0;
	while( i < 4 ) {
		j = 0;
		while( j < 16 ) {
			redComponent = getRedFromRGB( temporal_palette[ j ] );
			greenComponent = getGreenFromRGB( temporal_palette[ j ] );
			blueComponent = getBlueFromRGB( temporal_palette[ j ] );
			if( redComponent < getRedFromRGB( palette[ j ] ) ) {
				redComponent++;
			}
			temporal_palette[ j ] = devkit_RGB( redComponent, greenComponent, blueComponent );
			j++;
		}
		//waitForFrame();
		devkit_SMS_waitForVBlank();

		devkit_SMS_loadBGPalette( temporal_palette );
		i++;
	}
	//blue
	i = 0;
	while( i < 4 ) {
		j = 0;
		while( j < 16 ) {
			redComponent = getRedFromRGB( temporal_palette[ j ] );
			greenComponent = getGreenFromRGB( temporal_palette[ j ] );
			blueComponent = getBlueFromRGB( temporal_palette[ j ] );
			if( blueComponent < getBlueFromRGB( palette[ j ] ) ) {
				blueComponent++;
			}
			temporal_palette[ j ] = devkit_RGB( redComponent, greenComponent, blueComponent );
			j++;
		}
		//waitForFrame();
		devkit_SMS_waitForVBlank();

		devkit_SMS_loadBGPalette( temporal_palette );
		i++;
	}
}
void engine_content_manager_logo_fade_in()
{

}