#include "main.h"

void main(void)
{
	unsigned char input;
	unsigned char flags;
	unsigned char value;

	engine_asm_manager_clear_VRAM();
	devkit_SMS_init();
	devkit_SMS_displayOff();

	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
//	devkit_SMS_useFirstHalfTilesforSprites_False();
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );

	engine_content_manager_load_back_tiles();

	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 3, 3, 3 ) );
	engine_font_manager_draw_text( "BS MAIN THEME", 4, 2 );
	devkit_SMS_displayOn();
	flags = 0;
	for (;;)
	{
		devkit_SMS_initSprites();
		engine_input_manager_update();

		input = engine_input_manager_hold_down();
		if( flags )
		{
			value = devkit_PSGGetStatus();
			//engine_font_manager_draw_data( value, 4, 6 );
			if( !value )
			{
				//engine_font_manager_draw_text( "SECOND HALF", 4, 5 );
				engine_audio_manager_music_game( 1 );
				flags = 0;
			}
		}
		if( input )
		{
			flags = 1;
			engine_font_manager_draw_text( "FIRST HALF", 4, 4 );
			engine_audio_manager_music_game( 0 );
		}

		devkit_SMS_finalizeSprites();
		devkit_SMS_waitForVBlank();
		devkit_SMS_copySpritestoSAT();

		devkit_PSGFrame();
		devkit_PSGSFXFrame();
	}
}
