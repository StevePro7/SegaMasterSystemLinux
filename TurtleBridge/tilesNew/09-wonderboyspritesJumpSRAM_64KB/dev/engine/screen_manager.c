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

//#define MAX_JUMPS	125
//#define MAX_JUMPS	516
#define MAX_FLOOR	128

static void draw_sprite( unsigned char idx, unsigned char x, unsigned char y );
static unsigned char frame;
static unsigned int index;
static unsigned char jumps;
static unsigned char delta;
static unsigned char posY;
static unsigned char scrollX, scrollY;
static unsigned char storage_available;

void engine_screen_manager_init()
{
	struct_jump_object *jo = &global_jump_object;
	unsigned char index;
	engine_tile_manager_sky();
	//engine_tile_manager_draw_normX( 4, 0, 20 );
	engine_tile_manager_draw_groundX( 4, 0, 20, 0, 8 );
	engine_tile_manager_draw_groundX( 4, 8, 20, 0, 8 );
	engine_tile_manager_draw_groundX( 4, 16, 20, 0, 8 );
	engine_tile_manager_draw_groundX( 4, 24, 20, 0, 8 );
	//engine_font_manager_draw_text( "STEVEPRO STORAGE", 2, 2 );
	//engine_font_manager_draw_text( "STEVEPRO STORAGE", 2, 3 );
	storage_available = engine_storage_manager_available();
	if( storage_available )
	{
		engine_storage_manager_read();
		//engine_font_manager_draw_data( storage_available, 12, 4 );
		//engine_font_manager_draw_data( jo->num_jumps, 22, 5 );

		//for( index = 0; index < jo->num_jumps; index++ )
		//{
		//	engine_font_manager_draw_data( jo->jump_high[index], 22, 7 + index );
		//}
	}
	frame = 0;
	index = 0;
	delta = 0;
	jumps = 0;
	posY = MAX_FLOOR;
	scrollX = 1;
	scrollY = 1;
	devkit_SMS_setBGScrollX( 0 );
	//engine_music_manager_play();
}

void engine_screen_manager_update()
{
	struct_jump_object *jo = &global_jump_object;
	unsigned char input;

	input = engine_input_manager_move_right();
	if( input )
	{
		if( scrollY )
		{
			devkit_SMS_setBGScrollX( scrollX-- );
			devkit_SMS_setBGScrollX( scrollX-- );
			devkit_SMS_setBGScrollX( scrollX-- );
			devkit_SMS_setBGScrollX( scrollX-- );
			devkit_SMS_setBGScrollX( scrollX-- );
			devkit_SMS_setBGScrollX( scrollX-- );
			devkit_SMS_setBGScrollX( scrollX-- );
			devkit_SMS_setBGScrollX( scrollX-- );
		}
	}

	frame = 0;
	if( jumps )
	{
		input = engine_input_manager_move_fire1();
		if( input )
		{
			delta = jo->jump_high[ index ];// deltaY[ index ];
			//engine_font_manager_draw_data( delta, 22, 4 + index );
			index++;
			if( index >= jo->num_jumps )
			{
				delta = 0;
				index = 0;
				jumps = 0;
				posY = MAX_FLOOR;
			}

			//if( index < 100 )
			//{
			//	frame = frames[ index ];
			//}
		}

		
	}
	else
	{
		//input = engine_input_manager_hold_fire1();
		//if( input )
		//{
		//	engine_font_manager_draw_text( "STEVEPRO JUMPING 1", 2, 2 );
		//	engine_storage_manager_write();
		//	engine_font_manager_draw_text( "STEVEPRO JUMPING 3", 2, 3 );
		//	index = 0;
		//	//jumps = 1;
		//	posY = MAX_FLOOR;
		//}

		input = engine_input_manager_hold_fire2();
		if( input )
		{
			//for( index = 0; index < jo->num_jumps; index++ )
			//{
			//	engine_font_manager_draw_data( jo->jump_high[ index ], 12, 4 + index );
			//}

			delta = 0;
			index = 0;
			jumps = 1;
			//engine_font_manager_draw_text( "STEVEPRO JUMPING!!", 2, 2 );
			//engine_storage_manager_write();
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