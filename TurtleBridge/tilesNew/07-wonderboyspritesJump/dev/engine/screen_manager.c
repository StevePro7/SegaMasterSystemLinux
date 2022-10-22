#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"

static void draw_sprite( unsigned char idx, unsigned char x, unsigned char y );
static unsigned char frame;
static unsigned char jumps;
static unsigned char posY;

static unsigned char deltaY[125] =
{
	1, 	1, 	1, 	1, 	1, 	2, 	2, 	2, 	2, 	3, 	3, 	3, 	3, 	3, 	4, 	4, 	4, 	4, 	4, 	4, 	5, 	5, 	5, 	5, 	5, 	5, 	6, 	6, 	6, 	6, 	6, 	6, 	6, 	6, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	8, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	7, 	6, 	6, 	6, 	6, 	6, 	6, 	6, 	6, 	5, 	5, 	5, 	5, 	5, 	5, 	4, 	4, 	4, 	4, 	4, 	4, 	3, 	3, 	3, 	3, 	3, 	2, 	2, 	2, 	2, 	1, 	1, 	1, 	1, 	1
};

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO TESTING", 2, 2 );
	frame = 0;
	jumps = 0;
	posY = 160;
}

void engine_screen_manager_update()
{
	unsigned char input;
	//unsigned char delay;

	draw_sprite( frame, 96, posY );

	if( jumps )
	{
		return;
	}
	input = engine_input_manager_hold_fire1();
	if( input )
	{
		engine_font_manager_draw_text( "STEVEPRO JUMPING", 2, 2 );
		jumps = 1;
	}
}

static void draw_sprite( unsigned char idx, unsigned char x, unsigned char y )
{
	//unsigned char row, col;
	const unsigned char wide = 4;
	const unsigned char high = 4;
	unsigned char num;
	
	unsigned char i, j;

	for( j = 0; j < high; j++ )
	{
		for( i = 0; i < wide; i++ )
		{
			num = ( idx * wide * high ) + j * 4 + i;
			devkit_SMS_addSprite( x + i * 8, y + j * 8, SPRITE_TILES + num );
		}
	}
}