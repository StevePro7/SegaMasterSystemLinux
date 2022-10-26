#include "main.h"

void main( void )
{
	devkit_SMS_init();
	devkit_SMS_displayOff();
	
	for( ;; )
	{
		devkit_SMS_waitForVBlank();

		devkit_PSGFrame();
		devkit_PSGSFXFrame();
	}
}
