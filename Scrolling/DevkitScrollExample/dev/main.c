#include "main.h"

void main( void )
{
	devkit_SMS_init();
	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );
	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 0, 0, 3 ) );

	for( ;; )
	{
		devkit_SMS_waitForVBlank();
	}
}
