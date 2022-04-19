#include "main.h"

void main( void )
{
	int col;
	col = Bar();
	devkit_SMS_init();
	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( col, 0, 0 ) );
	engine_content_manager_load_bgtiles();

	ADI_INFO("YEAH BABY")
	//engine_font_manager_draw_text( "HELLO", 10, 10 );
	devkit_SMS_displayOn();
	for( ;;)
	{
		devkit_SMS_waitForVBlank();
	}
}
