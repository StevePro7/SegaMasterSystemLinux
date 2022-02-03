#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"

//#define UFIX(x)                ((unsigned char)((x)>>8))

void engine_sprite_manager_init()
{
	//// 112 + 5 = 117
	//unsigned char PaddleCharX;
	//unsigned int PADDLE_SPEED = ( 1 << 8 );				// PADDLE_SPEED = 1280
	//unsigned int PaddleX = ( ( 128 - 16 ) << 8 );		// PaddleX = 28672
	//PaddleX += PADDLE_SPEED;							// PaddleX = 29952
	//PaddleCharX = UFIX( PaddleX );
}

void engine_sprite_manager_draw( unsigned char x, unsigned char y, unsigned int tile )
{
	devkit_SMS_addSprite( x + 0, y + 0, tile + 0 );
	devkit_SMS_addSprite( x + 8, y + 0, tile + 1 );
	devkit_SMS_addSprite( x + 0, y + 8, tile + 2 );
	devkit_SMS_addSprite( x + 8, y + 8, tile + 3 );
}