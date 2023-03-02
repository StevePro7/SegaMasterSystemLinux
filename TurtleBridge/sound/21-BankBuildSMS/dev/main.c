#include "main.h"

void main( void )
{
	unsigned char open_screen_type;
	devkit_SMS_init();

	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	devkit_SMS_useFirstHalfTilesforSprites( false );
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );		// TODO uncomment

	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	devkit_SMS_displayOn();

	open_screen_type = screen_type_riff;
	//open_screen_type = screen_type_song;
	//open_screen_type = screen_type_test;
	engine_screen_manager_init( open_screen_type );
	for( ;; )
	{
		devkit_SMS_initSprites();
		engine_input_manager_update();
		engine_screen_manager_update();

		devkit_SMS_finalizeSprites();
		devkit_SMS_waitForVBlank();
		//devkit_SMS_copySpritestoSAT();
		devkit_UNSAFE_SMS_copySpritestoSAT();		// TODO ensure this works

		engine_audio_manager_update();
	}
}
