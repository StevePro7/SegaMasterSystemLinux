#include "main.h"

void main( void )
{
	// Global variables.
	static bool global_pause;
	unsigned char open_screen_type;

	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();

	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	devkit_SMS_useFirstHalfTilesforSprites( false );
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );

	//devkit_SMS_EnableAudio();

	open_screen_type = screen_type_start;
	//open_screen_type = screen_type_music;
	engine_screen_manager_init( open_screen_type );

	devkit_SMS_displayOn();
	for( ;; )
	{
		if( devkit_SMS_queryPauseRequested() )
		{
			devkit_SMS_resetPauseRequest();
			global_pause = !global_pause;
			if( global_pause )
			{
				engine_font_manager_draw_text( LOCALE_PAUSED, 10, 13 );
				devkit_PSGSilenceChannels();
			}
			else
			{
				engine_font_manager_draw_text( LOCALE_SPACES, 10, 13 );
				devkit_PSGRestoreVolumes();
			}
		}

		if( global_pause )
		{
			continue;
		}

		devkit_SMS_initSprites();
		engine_input_manager_update();
		engine_screen_manager_update();

		devkit_SMS_finalizeSprites();
		devkit_SMS_waitForVBlank();
		devkit_SMS_copySpritestoSAT();

		devkit_MBMFrame();
		devkit_PSGFrame();
		devkit_PSGSFXFrame();
	}
}
