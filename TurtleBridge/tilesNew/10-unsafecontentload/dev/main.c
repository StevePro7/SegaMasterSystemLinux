#include "main.h"

static unsigned char abc, def;
static unsigned int stageframe;
static unsigned char stageframe2mod;
static unsigned char numinterrupts;;

void InterruptHandler( void )
{
	numinterrupts++;
}

void main( void )
{
	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();

	// Advanced frameskipping
	numinterrupts = 0;
	devkit_SMS_setLineInterruptHandler( &InterruptHandler );
	devkit_SMS_setLineCounter( 192 );
	devkit_SMS_enableLineInterrupt();

	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	devkit_SMS_useFirstHalfTilesforSprites( false );
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );

	engine_content_manager_load_bgtiles();
	engine_content_manager_load_sprites();

	devkit_SMS_setBGPaletteColor( 0, devkit_RGB( 1, 2, 3 ) );			// background tiles
	//devkit_SMS_setBGPaletteColor( 16, devkit_RGB( 1, 2, 3 ) );		// border tiles		cornflower blue		sky

	abc = 0;
	def = 0;
	engine_screen_manager_init();
	devkit_SMS_displayOn();

	stageframe = 0;
	stageframe2mod = 0;
	for( ;; )
	{
		// Increase frames
		stageframe++;
		stageframe2mod = stageframe % 2;

		//devkit_SMS_initSprites();
		engine_input_manager_update();
		engine_screen_manager_update();

		//devkit_SMS_finalizeSprites();
		if( !abc && !def )
		{
			devkit_SMS_waitForVBlank();
			abc = 1;
		}
		else if( abc && !def )
		{
			engine_screen_manager_update2();
			def = 1;
		}
		else
		{
			devkit_SMS_waitForVBlank();
		}
		//devkit_SMS_copySpritestoSAT();
		//devkit_UNSAFE_SMS_copySpritestoSAT();

		devkit_PSGFrame();
		devkit_PSGSFXFrame();
	}
}
