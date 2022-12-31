#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "level_manager.h"
#include "scroll_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"

static unsigned char flag;

void engine_screen_manager_init()
{
	unsigned char idx;
	unsigned char tile = tile_type_island;
	engine_tile_manager_sky();
	engine_tile_manager_sea();

	engine_font_manager_draw_text( "NEW SCROLL", 10, 0 );

	idx = 0;
	for( idx = 0; idx < 8; idx++ )
	{
		engine_tile_manager_draw_columns( tile, 10 + idx, 18, idx, false );
	}

	//TODO
	//engine_music_manager_play();
	flag = 0;
}

void engine_screen_manager_update()
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned char input;
	unsigned char delta;

	input = engine_input_manager_hold_left();
	if( input )
	{
		engine_level_manager_draw( so->offset_right );
	}

	delta = 0;
	input = engine_input_manager_hold_right();
	if( input )
	{
		if( !flag )
		{
			delta = 1;
			flag = 1;
		}
	}
	engine_scroll_manager_update( delta );
}
