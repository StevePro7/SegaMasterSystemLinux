#include "main.h"

void main( void )
{
	// Global variables.
	static bool global_pause;
	unsigned char open_screen_type;

	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();

	devkit_SMS_useFirstHalfTilesforSprites( false );

	open_screen_type = screen_type_splash;
	open_screen_type = screen_type_title;
	//open_screen_type = screen_type_credit;
	//open_screen_type = screen_type_menu;
	//open_screen_type = screen_type_diff;
	//open_screen_type = screen_type_intro;
	//open_screen_type = screen_type_load;
	////open_screen_type = screen_type_start;
	////open_screen_type = screen_type_stats;
	////open_screen_type = screen_type_victory;
	////open_screen_type = screen_type_relive;
	//open_screen_type = screen_type_forest;
	//open_screen_type = screen_type_stats;
	////open_screen_type = screen_type_shop;
	////open_screen_type = screen_type_talk;
	////open_screen_type = screen_type_prep;
	////open_screen_type = screen_type_boss;
	////open_screen_type = screen_type_fight;
	//open_screen_type = screen_type_over;
	//open_screen_type = screen_type_complete;
	open_screen_type = screen_type_load;
	open_screen_type = screen_type_kill;
	open_screen_type = screen_type_test;
	//open_screen_type = screen_type_func;
	//open_screen_type = screen_type_debug;

	// Initialize player first!
	engine_player_manager_init();
	engine_hack_manager_init();
	engine_hack_manager_load();
	engine_hack_manager_invert();

	engine_player_manager_load();			// TODO MOVE TO THE LOAD SCREEN
	engine_player_manager_calc();			// TODO MOVE TO THE LOAD SCREEN

	engine_enemy_manager_init();
	engine_game_manager_init();
	engine_sound_manager_init();

	engine_select_manager_init();
	engine_screen_manager_init( open_screen_type );
	engine_content_manager_load_tiles();

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

		// TODO - do I need to begin sprites > 256 tile?
		//devkit_SMS_initSprites();
		engine_input_manager_update();
		engine_screen_manager_update();

		//devkit_SMS_finalizeSprites();
		devkit_SMS_waitForVBlank();
		//devkit_SMS_copySpritestoSAT();

		devkit_PSGFrame();
		devkit_PSGSFXFrame();
	}
}
