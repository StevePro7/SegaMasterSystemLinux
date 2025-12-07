#include "main.h"

#define PCM_RATE 8008
#define FRAME_RATE 60      // PAL 50Hz; change to 60 for NTSC
#define PCM_ACC_INC ((PCM_RATE << 8)/FRAME_RATE)
static unsigned int pcm_accumulator = 0;
void vblank_isr() /*__interrupt*/
{
	pcm_accumulator += PCM_ACC_INC;

	while( pcm_accumulator >= 256 ) {
		pcm_accumulator -= 256;
		engine_sample_manager_step();
	}
}

void main( void )
{
	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	
	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	devkit_SMS_useFirstHalfTilesforSprites( false );
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );
	
	engine_content_manager_load_tiles();
	engine_riff_manager_init();
	engine_screen_manager_init();

	devkit_SMS_displayOn();
	for( ;; )
	{
		devkit_SMS_initSprites();
		engine_input_manager_update();
		engine_screen_manager_update();

		devkit_SMS_finalizeSprites();
		devkit_SMS_waitForVBlank();
		devkit_SMS_copySpritestoSAT();

		// Increment fractional accumulator
		pcm_accumulator += PCM_ACC_INC;

		// Step the PCM sample enough times to match real sample rate
		while( pcm_accumulator >= 256 ) {
			pcm_accumulator -= 256;
			engine_sample_manager_step();
		}

		devkit_PSGFrame();
		devkit_PSGSFXFrame();
	}
}
