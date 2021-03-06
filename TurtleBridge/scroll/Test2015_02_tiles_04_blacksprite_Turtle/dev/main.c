#include "main.h"

void main( void )
{
	//engine_log_manager_open();

	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();

	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	devkit_SMS_useFirstHalfTilesforSprites( false );
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );
	//devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_ZOOMSPRITES() );

	engine_content_manager_load_tiles();
	devkit_SMS_setBGPaletteColor( 15, devkit_RGB( 3, 3, 3 ) );

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

	//engine_log_manager_close();
}
