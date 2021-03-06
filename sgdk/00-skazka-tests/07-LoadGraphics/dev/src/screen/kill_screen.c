#include "kill_screen.h"
#include "audio_manager.h"
#include "enum_manager.h"
#include "global_manager.h"
#include "graphics_manager.h"
#include "timer_manager.h"

#ifdef _CONSOLE
#include "_genesis.h"
#else
#include <genesis.h>
#endif

#define KILL_SCREEN_DELAY		25
#define KILL_FLASH_COUNT		7

static unsigned int palette;
static unsigned char count;
static unsigned char  flag;

void screen_kill_screen_load()
{
	engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, 0 );

	engine_timer_manager_load( KILL_SCREEN_DELAY );
//	engine_sound_manager_kill();
	// TODO test
	engine_audio_manager_play_sound( sound_type_13 );
	count = 0;
	flag = 1;
}

void screen_kill_screen_update( unsigned char *screen_type )
{
	unsigned char timer;

	timer = engine_timer_manager_update();
	if( timer )
	{
		count++;
		if( count < KILL_FLASH_COUNT )
		{
			flag = 1 - flag;
			palette = 1 - palette;	// TODO test!!// flag ? devkit_TILE_USE_SPRITE_PALETTE() : 0;
			engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, palette );
		}
	}

	if( count > KILL_FLASH_COUNT )
	{
		*screen_type = screen_type_complete;
		return;
	}

	*screen_type = screen_type_kill;
}

