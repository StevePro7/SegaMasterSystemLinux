#include "main.h"

void main( void )
{
	unsigned char open_screen_type;
	//bool global_pause;

	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();

	open_screen_type = screen_type_func;
	open_screen_type = screen_type_test;
	//open_screen_type = screen_type_begin;
	engine_screen_manager_init( open_screen_type );
	engine_input_manager_init();

	devkit_SMS_init();
	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	devkit_SMS_useFirstHalfTilesforSprites( 0 );
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );

	for( ;; )
	{
		devkit_SMS_initSprites();
		engine_input_manager_update();

		engine_screen_manager_update();

		devkit_SMS_waitForVBlank();

		devkit_UNSAFE_SMS_copySpritestoSAT();

		devkit_PSGFrame();
	}
}