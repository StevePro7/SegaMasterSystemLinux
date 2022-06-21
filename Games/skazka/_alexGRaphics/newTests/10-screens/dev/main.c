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
	//open_screen_type = screen_type_title;
	//open_screen_type = screen_type_load;
	//open_screen_type = screen_type_diff;


	// Initialize player first!
	//engine_player_manager_init();
	//engine_hack_manager_init();
	//engine_hack_manager_load();
	//engine_hack_manager_invert();

	//engine_enemy_manager_init();
	//engine_game_manager_init();
	//engine_sound_manager_init();

	//engine_select_manager_init();
	//engine_screen_manager_init( open_screen_type );

	engine_content_manager_load_tiles();
	engine_screen_manager_init();

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
