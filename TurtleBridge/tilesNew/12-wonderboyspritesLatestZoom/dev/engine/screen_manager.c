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

static void draw_sprite( unsigned char idx, unsigned char size, unsigned char x, unsigned char y );
static unsigned char frame;
static unsigned char zoomd;

static unsigned char storage_available;

void engine_screen_manager_init()
{
	struct_jump_object *jo = &global_jump_object;
	frame = 0;
	zoomd = 0;

	engine_tile_manager_sky();
	//engine_tile_manager_draw_groundX( 4, 8, 20, 0, 8 );
	devkit_SMS_setBGScrollX( 0 );
//	engine_music_manager_play();
}

void engine_screen_manager_update()
{

	draw_sprite( frame, 2, 72, 64);
}

static void draw_sprite( unsigned char idx, unsigned char size, unsigned char x, unsigned char y )
{
	const unsigned char wide = 4;
	const unsigned char high = 4;
	const unsigned char tile = 8;
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
			num = ( idx * wide * high ) + j * wide + i;
			devkit_SMS_addSprite( x + i * size * tile, y + j * size * tile, SPRITE_TILES + num );
		}
	}
}