#include "main.h"

void main( void )
{
	devkit_SMS_init();
	devkit_SMS_displayOff();
	//engine_asm_manager_clear_VRAM();
	devkit_SMS_setBGPaletteColor( 0, devkit_RGB( 0, 0, 0 ) );
	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 0, 0, 3 ) );
	devkit_SMS_displayOn();
	for( ;; )
	{
		devkit_SMS_waitForVBlank();
	}
}
