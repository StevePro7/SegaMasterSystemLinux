#include "main.h"

void main( void )
{
	SMS_init();
	SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	
	engine_content_manager_load_sprite_palette();
	engine_content_manager_load_splash_screen();

	SMS_displayOn();
	for( ;; )
	{
		SMS_waitForVBlank();
	}
}
