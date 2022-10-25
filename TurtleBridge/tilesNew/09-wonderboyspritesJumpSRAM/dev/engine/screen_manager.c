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

//#define MAX_JUMPS	125
//#define MAX_JUMPS	516
#define MAX_FLOOR	128

static void draw_sprite( unsigned char idx, unsigned char x, unsigned char y );
static unsigned char frame;
static unsigned int index;
static unsigned char jumps;
static unsigned char posY;

void engine_screen_manager_init()
{
	engine_tile_manager_sky();
	//engine_tile_manager_draw_normX( 4, 0, 20 );
	engine_tile_manager_draw_groundX( 4, 0, 20, 0, 8 );
	engine_tile_manager_draw_groundX( 4, 8, 20, 0, 8 );
	engine_tile_manager_draw_groundX( 4, 16, 20, 0, 8 );
	engine_tile_manager_draw_groundX( 4, 24, 20, 0, 8 );
	engine_font_manager_draw_text( "STEVEPRO TESTING", 2, 2 );
	frame = 0;
	index = 0;
	jumps = 0;
	posY = MAX_FLOOR;
	//engine_music_manager_play();
}

void engine_screen_manager_update()
{
	unsigned char input;
	unsigned char delta = 0;

	frame = 0;
	if( jumps )
	{
		//delta = deltaY[ index ];
		index++;
		if( index >= MAX_JUMPS )
		{
			index = 0;
			jumps = 0;
			posY = MAX_FLOOR;
		}

		//if( index < 100 )
		//{
		//	frame = frames[ index ];
		//}
	}
	else
	{
		input = engine_input_manager_hold_fire1();
		if( input )
		{
			engine_font_manager_draw_text( "STEVEPRO JUMPING", 2, 2 );
			index = 0;
			jumps = 1;
			posY = MAX_FLOOR;
		}
	}

	//engine_font_manager_draw_data( index, 25, 0 );
	//engine_font_manager_draw_data( frame, 25, 1 );
	//engine_font_manager_draw_data( jumps, 25, 2 );
	draw_sprite( frame, 72, posY - delta );
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