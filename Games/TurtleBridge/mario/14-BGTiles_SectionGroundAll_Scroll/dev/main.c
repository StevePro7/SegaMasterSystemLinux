#include "main.h"

void main( void )
{
	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();

	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	devkit_SMS_useFirstHalfTilesforSprites( false );
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );
	//devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_ZOOMSPRITES() );

	engine_content_manager_load_tiles();
	//engine_content_manager_load_sprites();
	//engine_content_manager_load_turtle();

	// Turtle
	//devkit_SMS_setBGPaletteColor( 3, devkit_RGB( 3, 2, 2 ) );	// set turtle feet manually to teal.
	//devkit_SMS_setBGPaletteColor( 4, devkit_RGB( 0, 3, 2 ) );	// set turtle shell inner	$2c
	//devkit_SMS_setBGPaletteColor( 2, devkit_RGB( 3, 2, 1 ) );	// set turtle shell outer	$1b

	//devkit_SMS_setBGPaletteColor( 0, devkit_RGB( 3, 3, 3 ) );
	//devkit_SMS_setBGPaletteColor( 15, devkit_RGB( 0, 0, 0 ) );
	//devkit_SMS_setBGPaletteColor( 0, devkit_RGB( 1, 2, 3 ) );
	devkit_SMS_setBGPaletteColor( 15, devkit_RGB( 3, 3, 3 ) );		// white			important for font tiles
	//devkit_SMS_setBGPaletteColor( 0, devkit_RGB( 0, 0, 0 ) );		// black

	//devkit_SMS_setBGPaletteColor( 16, devkit_RGB( 1, 2, 3 ) );		// cornflower blue		sky
	engine_screen_manager_init();

	devkit_SMS_displayOn();
	for( ;; )
	{
		devkit_SMS_initSprites();
		engine_input_manager_update();
		engine_screen_manager_update();

		devkit_SMS_finalizeSprites();
		devkit_SMS_waitForVBlank();
		//devkit_SMS_copySpritestoSAT();
		devkit_UNSAFE_SMS_copySpritestoSAT();		// TODO ensure this works

		devkit_PSGFrame();
		devkit_PSGSFXFrame();
	}
}
