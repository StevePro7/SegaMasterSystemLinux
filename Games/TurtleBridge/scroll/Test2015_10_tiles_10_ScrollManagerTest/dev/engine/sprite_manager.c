#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"
#include <stdlib.h>

void engine_sprite_manager_draw( unsigned char x, unsigned char y )
{
	devkit_SMS_addSprite( x + 0, y + 0, 256 );
}