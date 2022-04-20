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
	
void engine_screen_manager_init()
{
	//engine_music_manager_play();
}

void engine_screen_manager_update()
{
	unsigned char input;
	input = engine_input_manager_hold_down();
	if( input )
	{
		engine_scroll_manager_down();
	}
	
	input = engine_input_manager_hold_up();
	if( input )
	{
		engine_scroll_manager_up();
	}
}
