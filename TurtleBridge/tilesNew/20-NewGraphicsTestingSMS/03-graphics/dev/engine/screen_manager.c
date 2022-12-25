#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "jump_manager.h"
#include "sprite_manager.h"
#include "storage_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"

#define UFIX(x)                ((unsigned char)((x)>>8))

//#define MAX_JUMPS	125
//#define MAX_JUMPS	516
#define MAX_FLOOR	128

static void draw_sprite( unsigned char idx, unsigned char x, unsigned char y );
static unsigned char frame;
static unsigned int index;
static unsigned char jumps;
static unsigned int delta;
static unsigned char posY;
static unsigned int posY2;
static unsigned char scrollX, scrollY;
static unsigned char storage_available;

static unsigned int tmp;

void engine_screen_manager_init()
{
	struct_jump_object *jo = &global_jump_object;
	unsigned char index;

	scrollX = 1;
	scrollY = 0;
	//engine_tile_manager_sky();
	//engine_tile_manager_draw_groundX( 4, 8, 20, 0, 8 );
	if( !scrollY )
	{
		//engine_tile_manager_draw_groundX( 4, 0, 20, 0, 8 );
		//engine_tile_manager_draw_groundX( 4, 16, 20, 0, 8 );
		//engine_tile_manager_draw_groundX( 4, 24, 20, 0, 8 );
	}

	//engine_jump_manager_data();
	if( scrollY )
	{
		//engine_font_manager_draw_data( storage_available, 12, 4 );
		//engine_font_manager_draw_data( jo->num_jumps, 22, 5 );
	}

	frame = 0;
	index = 0;
	delta = 0;
	jumps = 0;
	posY = MAX_FLOOR;
	posY2 = posY << 8;

	tmp = 180;
	engine_tile_manager_gfx2(tmp);
	//devkit_SMS_setBGScrollX( 0 );
//	engine_music_manager_play();
}

void engine_screen_manager_update()
{
	//struct_jump_object *jo = &global_jump_object;
	unsigned char input;

	input = engine_input_manager_hold_left();
	if( input )
	{
		tmp -= 2;
		engine_tile_manager_gfx2( tmp );
	}
	//	if( scrollY )
	//	{
	//		devkit_SMS_setBGScrollX( scrollX-- );
	//	}
	//}
	//else
	//{
	//	input = engine_input_manager_move_right();
	//	if( input )
	//	{
	//		if( scrollY )
	//		{
	//			devkit_SMS_setBGScrollX( scrollX-- );
	//			devkit_SMS_setBGScrollX( scrollX-- );
	//			devkit_SMS_setBGScrollX( scrollX-- );
	//			devkit_SMS_setBGScrollX( scrollX-- );
	//		}
	//	}
	//	if( scrollY )
	//	{
	//		devkit_SMS_setBGScrollX( scrollX-- );
	//		devkit_SMS_setBGScrollX( scrollX-- );
	//	}
	//}

	input = engine_input_manager_hold_right();
	if( input )
	{
		tmp += 2;
		engine_tile_manager_gfx2( tmp );
	}
	//	if( frame >= 10 )
	//	{
	//		frame = 0;
	//	}
	//}
	//input = engine_input_manager_hold_down();
	//if( input )
	//{
	//	if( frame > 1 )
	//	{
	//		if( frame >= 6 )
	//		{
	//			frame -= 4;
	//		}
	//		else
	//		{
	//			frame += 4;
	//		}
	//	}
	//}
	//if( jumps )
	//{
	//	input = 1;// engine_input_manager_move_fire1();
	//	if( input )
	//	{
	//		delta = jo->jump_high[ index ];// deltaY[ index ];
	//		//engine_font_manager_draw_data( delta, 22, 4 + index );
	//		index++;
	//		if( index >= jo->num_jumps )
	//		{
	//			delta = 0;
	//			index = 0;
	//			jumps = 0;
	//			posY = MAX_FLOOR;
	//		}
	//	}
	//}
	//else
	//{
	//	input = engine_input_manager_move_fire2();
	//	if( input )
	//	{
	//		delta = 0;
	//		index = 0;
	//		jumps = 1;
	//		//engine_font_manager_draw_text( "STEVEPRO JUMPING!!", 2, 2 );
	//		//engine_storage_manager_write();
	//	}
	//}

	//
	//if( 0 == delta )
	//{
	//	draw_sprite( frame, 72, posY - delta );
	//}
	//else
	//{
	//	unsigned int tmpY2 = posY2 - delta;
	//	unsigned char tmpY = UFIX( tmpY2 );
	//	draw_sprite( frame, 72, tmpY );
	//}
}

static void draw_sprite( unsigned char idx, unsigned char x, unsigned char y )
{
	const unsigned char wide = 4;
	const unsigned char high = 4;
	unsigned char num;
	
	unsigned char i, j;
	if( 0 == idx || 1 == idx || 2 == idx || 4 == idx || 6 == idx || 8 == idx )
	{
		x += 4;
	}
	else //if( 3 == idx || 1 == idx || 2 == idx )
	{
		y += 4;
	}
	for( j = 0; j < high; j++ )
	{
		for( i = 0; i < wide; i++ )
		{
			num = ( idx * wide * high ) + j * 4 + i;
			devkit_SMS_addSprite( x + i * 8, y + j * 8, SPRITE_TILES + num );
		}
	}
}