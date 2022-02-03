#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include "../content/gfx.h"

// zoom sprites
void engine_sprite_manager_draw( unsigned char x, unsigned char y, unsigned int tile )
{
	const unsigned char size = 2;

	devkit_SMS_addSprite( x + size * 0, y + size * 0, tile + 0 );
	devkit_SMS_addSprite( x + size * 8, y + size * 0, tile + 1 );
	devkit_SMS_addSprite( x + size * 0, y + size * 8, tile + 2 );
	devkit_SMS_addSprite( x + size * 8, y + size * 8, tile + 3 );
}
