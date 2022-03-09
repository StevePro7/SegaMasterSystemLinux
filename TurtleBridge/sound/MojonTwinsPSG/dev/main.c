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
	devkit_SMS_useFirstHalfTilesforSprites_False();
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );

	engine_hack_manager_init();
	engine_hack_manager_update();
	engine_content_manager_load_tiles();

	open_screen_type = screen_type_sound;
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

		engine_input_manager_update();
		engine_screen_manager_update();

		devkit_PSGFrame();
		devkit_PSGSFXFrame();
	}
}
