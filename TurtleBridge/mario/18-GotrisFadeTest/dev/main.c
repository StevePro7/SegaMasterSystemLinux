#include "main.h"

void main( void )
{
	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	
	engine_content_manager_load_sprite_palette();
	engine_content_manager_load_splash_screen();
	devkit_SMS_displayOn();
	engine_content_manager_logo_fade_in();

	
	for( ;; )
	{
		devkit_SMS_waitForVBlank();
	}
}
