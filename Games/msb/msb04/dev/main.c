#include "main.h"

void main( void )
{
	devkit_SMS_init();
	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	devkit_SMS_useFirstHalfTilesforSprites( false );
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );

	devkit_SMS_displayOff();
	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 3, 0, 0 ) );
	devkit_SMS_displayOn();
	for( ;; )
	{
		devkit_SMS_waitForVBlank();
	}
}