#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"




void engine_sprite_manager_draw( unsigned char x, unsigned char y, unsigned int tile )
{
	devkit_SMS_addSprite( x + 0, y + 0, tile + 0 );
	devkit_SMS_addSprite( x + 8, y + 0, tile + 1 );
	devkit_SMS_addSprite( x + 16, y + 0, tile + 2 );
	devkit_SMS_addSprite( x + 24, y + 0, tile + 3 );

	devkit_SMS_addSprite( x + 0, y + 8, tile + 4 );
	devkit_SMS_addSprite( x + 8, y + 8, tile + 5 );
	devkit_SMS_addSprite( x + 16, y + 8, tile + 6 );
	devkit_SMS_addSprite( x + 24, y + 8, tile + 7 );

	devkit_SMS_addSprite( x + 0, y + 16, tile + 8 );
	devkit_SMS_addSprite( x + 8, y + 16, tile + 9 );
	devkit_SMS_addSprite( x + 16, y + 16, tile + 10 );
	devkit_SMS_addSprite( x + 24, y + 16, tile + 11 );

	devkit_SMS_addSprite( x + 0, y + 24, tile + 12 );
	devkit_SMS_addSprite( x + 8, y + 24, tile + 13 );
	devkit_SMS_addSprite( x + 16, y + 24, tile + 14 );
	devkit_SMS_addSprite( x + 24, y + 24, tile + 15 );
}


//void engine_sprite_manager_draw( unsigned char x, unsigned char y, unsigned int tile )
//{
//	const unsigned char size = 1;
//
//	devkit_SMS_addSprite( x + size * 0, y + size * 0,  tile + 0 );
//	devkit_SMS_addSprite( x + size * 8, y + size * 0,  tile + 1 );
//	devkit_SMS_addSprite( x + size * 16, y + size * 0,  tile + 2 );
//	devkit_SMS_addSprite( x + size * 24, y + size * 0,  tile + 3 );
//
//	devkit_SMS_addSprite( x + size * 0, y + size * 8, tile + 4 );
//	devkit_SMS_addSprite( x + size * 8, y + size * 8, tile + 5 );
//	devkit_SMS_addSprite( x + size * 16, y + size * 8, tile + 6 );
//	devkit_SMS_addSprite( x + size * 24, y + size * 8, tile + 7 );
//
//	devkit_SMS_addSprite( x + size * 0, y + size * 16, tile + 8 );
//	devkit_SMS_addSprite( x + size * 8, y + size * 16, tile + 9 );
//	devkit_SMS_addSprite( x + size * 16, y + size * 16, tile + 10 );
//	devkit_SMS_addSprite( x + size * 24, y + size * 16, tile + 11 );
//
//	//devkit_SMS_addSprite( x + size * 0, y + size * 24, tile + 12 );
//	//devkit_SMS_addSprite( x + size * 8, y + size * 24, tile + 13 );
//	//devkit_SMS_addSprite( x + size * 16, y + size * 24, tile + 14 );
//	//devkit_SMS_addSprite( x + size * 24, y + size * 24, tile + 15 );
//}
