#include "main.h"

void main( void )
{
	unsigned char open_screen_type;

	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();

	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	//devkit_SMS_setSpriteMode( devkit_SPRITEMODE_ZOOMED() );
	devkit_SMS_useFirstHalfTilesforSprites( false );
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );

	engine_content_manager_load_bgtiles();
	engine_content_manager_load_sprites();

	//devkit_SMS_setBGPaletteColor( 0, devkit_RGB( 1, 2, 3 ) );			// background tiles
	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 0, 0, 0 ) );		// border tiles		cornflower blue		sky

	open_screen_type = screen_type_test;
	//open_screen_type = screen_type_func;
	engine_riff_manager_init();
	engine_screen_manager_init( open_screen_type );
	devkit_SMS_displayOn();
	for( ;; )
	{
		devkit_SMS_initSprites();
		engine_input_manager_update();
		engine_screen_manager_update();	

		devkit_SMS_finalizeSprites();
		devkit_SMS_waitForVBlank();
		devkit_SMS_copySpritestoSAT();
		devkit_UNSAFE_SMS_copySpritestoSAT();

		//devkit_PSGFrame();
		//devkit_PSGSFXFrame();
	}
}
