#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "map_manager.h"
#include "scroll_manager.h"
#include "sprite_manager.h"
#include "../content/gfx.h"
#include <stdbool.h>

void engine_screen_manager_init()
{
	engine_scroll_manager_init( ( unsigned char * ) level1_bin );

	engine_map_manager_init( ( unsigned char * ) level1_bin );
	engine_map_manager_draw_map_screen();

	engine_music_manager_play();
}

void engine_screen_manager_update()
{
	unsigned char input1;
	unsigned char input2;
	unsigned char input3;
	bool doScroll;

	input1 = engine_input_manager_move_fire1();
	input2 = engine_input_manager_move_fire2();
	input3 = engine_input_manager_move_right();

	if( input1 && input3 )
	{
		doScroll = engine_scroll_manager_update();
		if( doScroll )
		{
			engine_scroll_manager_draw();
		}
		doScroll = engine_scroll_manager_update();
		if( doScroll )
		{
			engine_scroll_manager_draw();
		}
	}
	else if( input2 && input3 )
	{
		doScroll = engine_scroll_manager_update();
		if( doScroll )
		{
			engine_scroll_manager_draw();
		}
		doScroll = engine_scroll_manager_update();
		if( doScroll )
		{
			engine_scroll_manager_draw();
		}
		doScroll = engine_scroll_manager_update();
		if( doScroll )
		{
			engine_scroll_manager_draw();
		}
	}
	else if( input3 )
	{
		doScroll = engine_scroll_manager_update();
		if( doScroll )
		{
			engine_scroll_manager_draw();
		}
	}

}
