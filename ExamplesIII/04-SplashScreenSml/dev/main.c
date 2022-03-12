#include "main.h"

static void erase_lines();

void main( void )
{
	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	
	engine_content_manager_load_sprite_palette();
	engine_content_manager_load_title_screen();
	devkit_SMS_useFirstHalfTilesforSprites( true );

	//devkit_SMS_setBGPaletteColor( 1, devkit_RGB( 3, 3, 3 ) );
	engine_font_manager_text( "HELLO WORLD..!!", 10, 20 );
	engine_font_manager_char( '!', 20, 22 );
//	erase_lines();
	devkit_SMS_displayOn();
	for( ;; )
	{
		devkit_SMS_waitForVBlank();
	}
}

static void erase_lines()
{
	unsigned char idx;
	for( idx = 4; idx < 8; idx++ )
	{
		engine_font_manager_text( "         ", 0, idx );
	}
}