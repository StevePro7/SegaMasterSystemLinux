#include "main.h"

void main( void )
{
	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	
	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	devkit_SMS_useFirstHalfTilesforSprites( false );
	//devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );	// org
	//devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_LEFTCOLBLANK() );	// scroll Mgr

	engine_content_manager_load_back_tiles();
	engine_screen_manager_init();
	engine_scroll_manager_init();
	devkit_SMS_displayOn();
	for( ;; )
	{
		devkit_SMS_initSprites();
		engine_screen_manager_update();

		devkit_SMS_finalizeSprites();
		devkit_SMS_waitForVBlank();
		devkit_SMS_copySpritestoSAT();
	}
}
