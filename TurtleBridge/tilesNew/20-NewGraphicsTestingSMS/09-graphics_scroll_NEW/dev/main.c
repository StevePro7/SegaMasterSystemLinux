#include "main.h"

static void start();

void main( void )
{
	unsigned char input;
	start();
	for( ;; )
	{
		devkit_SMS_initSprites();
		engine_input_manager_update();
		input = input = engine_input_manager_move_fire2();
		if( input )
		{
			start();
		}
		engine_screen_manager_update();

		devkit_SMS_finalizeSprites();
		devkit_SMS_waitForVBlank();
		//devkit_SMS_copySpritestoSAT();
		devkit_UNSAFE_SMS_copySpritestoSAT();

		devkit_PSGFrame();
		devkit_PSGSFXFrame();
	}
}

static void start()
{
	unsigned char open_screen_type;

	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();

	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	devkit_SMS_useFirstHalfTilesforSprites( false );
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );

	engine_content_manager_load_bgtiles();
	//engine_content_manager_load_sprites();

	//devkit_SMS_setBGPaletteColor( 0, devkit_RGB( 1, 2, 3 ) );			// background tiles
	//devkit_SMS_setBGPaletteColor( 16, devkit_RGB( 0, 3, 3 ) );		// border tiles		cornflower blue		sky

	engine_level_manager_init();
	engine_tile_manager_init();

	//open_screen_type = screen_type_title;
	open_screen_type = screen_type_func;
	open_screen_type = screen_type_splash;

	engine_screen_manager_init( open_screen_type );
	engine_scroll_manager_init();

	devkit_SMS_displayOn();
}
