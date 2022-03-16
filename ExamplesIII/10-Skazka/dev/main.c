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

	engine_sound_manager_init();

	// TODO - this will be in the title screen!
	engine_content_manager_load_tiles();

	// Blue background
	//devkit_SMS_setBGPaletteColor( 0, devkit_RGB( 0, 0, 3 ) );

	//open_screen_type = screen_type_splash;
	//open_screen_type = screen_type_title;
	//open_screen_type = screen_type_intro;
	//open_screen_type = screen_type_rest;
	//open_screen_type = screen_type_stats;
	//open_screen_type = screen_type_forest;
	//open_screen_type = screen_type_select;
	//open_screen_type = screen_type_record;
	//open_screen_type = screen_type_func;
	//open_screen_type = screen_type_over;
	//open_screen_type = screen_type_menu;
	open_screen_type = screen_type_fight;

	// TODO  init player + enemy again before start new game!
	engine_enemy_manager_init();
	engine_player_manager_init();
	engine_player_manager_calc();

	engine_select_manager_init();
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
				devkit_PSGSilenceChannels();
			}
			else
			{
				devkit_PSGRestoreVolumes();
			}
		}

		if( global_pause )
		{
			continue;
		}

		engine_input_manager_update();
		engine_screen_manager_update();
		devkit_SMS_waitForVBlank();
	}
}
