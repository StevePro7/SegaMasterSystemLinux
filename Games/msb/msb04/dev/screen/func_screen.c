#include "func_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../devkit/_sms_manager.h"

void screen_func_screen_load()
{
	devkit_SMS_init();
	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	devkit_SMS_useFirstHalfTilesforSprites( 0 );
	devkit_SMS_VDPturnOnFeature( devkit_VDPFEATURE_HIDEFIRSTCOL() );

	devkit_SMS_displayOff();
	devkit_SMS_setSpritePaletteColor( 0, devkit_RGB( 0, 0, 3 ) );
	devkit_SMS_displayOn();
}

void screen_func_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_func;
}
