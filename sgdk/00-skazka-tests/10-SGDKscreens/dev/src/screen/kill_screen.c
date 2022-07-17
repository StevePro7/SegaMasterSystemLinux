#include "kill_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/timer_manager.h"
//#include <stdbool.h>

#ifdef _CONSOLE
#include "_genesis.h"
#else
#include <genesis.h>
#endif

#define KILL_SCREEN_DELAY		25
#define KILL_FLASH_COUNT		7

static unsigned int palette;
static unsigned char count;
static bool flag;

void screen_kill_screen_load()
{
	//engine_content_manager_load_koschey();
	engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, 0 );// devkit_TILE_USE_SPRITE_PALETTE() );

	engine_timer_manager_load( KILL_SCREEN_DELAY );
//	engine_sound_manager_kill();
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
			flag = !flag;
			palette = 0;// flag ? devkit_TILE_USE_SPRITE_PALETTE() : 0;
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

