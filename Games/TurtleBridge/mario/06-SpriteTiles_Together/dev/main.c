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
	engine_content_manager_load_sprites();

	devkit_SMS_setBGPaletteColor( 0, devkit_RGB( 3, 3, 3 ) );		// white				all bg
	devkit_SMS_setBGPaletteColor( 16, devkit_RGB( 1, 2, 3 ) );		// cornflower blue		sky
	devkit_SMS_setSpritePaletteColor( 7, devkit_RGB( 3, 2, 2 ) );	// set turtle feet manually to teal.
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
		devkit_UNSAFE_SMS_copySpritestoSAT();

		devkit_PSGFrame();
		devkit_PSGSFXFrame();
	}
}
