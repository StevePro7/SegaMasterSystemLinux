#include "main.h"

void main( void )
{
	int col;
	unsigned char x, y;
	col = Bar();
	devkit_SMS_init();
	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( col, 0, 0 ) );
	engine_asm_manager_clear_VRAM();
	engine_content_manager_load_bgtiles();

	ADI_INFO("YEAH BABY")
	engine_font_manager_draw_text( "HELLO", 10, 10 );
	x = 72;
	y = x >> 3;
	engine_font_manager_draw_data( x, 10, 20 );
	engine_font_manager_draw_data( y, 10, 21 );
	devkit_SMS_displayOn();
	for( ;;)
	{
		devkit_SMS_waitForVBlank();
	}
}
