#include "main.h"

static void start();

void main( void )
{
	static bool global_pause;
	//unsigned char input;
	start();
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
			engine_scroll_manager_para_update( 0 );
			//engine_scroll_manager_update( 0 );
			devkit_SMS_waitForVBlank();
			//engine_audio_manager_update();
			continue;
		}

		devkit_SMS_initSprites();
		engine_input_manager_update();

		//input = engine_input_manager_move( input_type_fire2 );
		//if( input )
		//{
		//	devkit_PSGStop();
		//	start();
		//}

		engine_screen_manager_update();

		devkit_SMS_finalizeSprites();
		devkit_SMS_waitForVBlank();

		//devkit_SMS_copySpritestoSAT();
		devkit_UNSAFE_SMS_copySpritestoSAT();

		engine_audio_manager_update();
	}
}

static void start()
{
	unsigned char open_screen_type;

	devkit_SMS_init();
	//engine_debug_manager_initcontent();

	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	devkit_SMS_useFirstHalfTilesforSprites( false );
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );		// TODO uncomment

	//devkit_SMS_setBGPaletteColor( 0, devkit_RGB( 1, 2, 3 ) );			// background tiles
	//devkit_SMS_setBGPaletteColor( 16, devkit_RGB( 0, 3, 3 ) );		// border tiles		cornflower blue		sky

	engine_game_manager_init();
	engine_hack_manager_init();
	engine_hack_manager_load();
	engine_audio_manager_init();
	engine_input_manager_init();
	engine_tile_manager_init();

	//open_screen_type = screen_type_splash;
	//open_screen_type = screen_type_title;
	open_screen_type = screen_type_begin;

	engine_player_manager_init();
	engine_screen_manager_init( open_screen_type );
}
