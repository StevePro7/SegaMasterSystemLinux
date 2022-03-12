#include "main.h"

void main( void )
{
	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	
	engine_content_manager_load_sprite_palette();
	engine_content_manager_load_title_screen();

	engine_font_manager_text( "HELLO WORLD!!", 10, 10 );
	devkit_SMS_displayOn();
	for( ;; )
	{
		devkit_SMS_waitForVBlank();
	}
}
