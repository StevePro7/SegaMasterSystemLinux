#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "scroll_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"

static unsigned char x;
static unsigned char col;
static unsigned int tmp;

void engine_screen_manager_init()
{
	unsigned char idx;
	unsigned char tile = tile_type_bridge;
	engine_tile_manager_sky();
	engine_tile_manager_sea();

	engine_font_manager_draw_text( "NEW BUILD", 10, 0 );
//	engine_tile_manager_draw( tile_type_island );

	idx = 0;
	//engine_tile_manager_draw_columns( tile, idx, 18 );
	//engine_tile_manager_draw_columns( tile, 1, 17 );
	//engine_tile_manager_draw_columns( tile, 2, 16 );
	//engine_tile_manager_draw_columns( tile, 3, 15 );
	//engine_tile_manager_draw_columns( tile, 4, 14 );
	//engine_tile_manager_draw_columns( tile, 5, 13 );
	//engine_tile_manager_draw_columns( tile, 6, 12 );
	//engine_tile_manager_draw_columns( tile, 7, 11 );
	for( idx = 0; idx < 8; idx++ )
	{
		//engine_font_manager_draw_data( idx, 20, 10 + idx );
		engine_tile_manager_draw_columns( tile, 8- idx, 4, idx, true);
	}

	//TODO
	//engine_music_manager_play();
}

void engine_screen_manager_update()
{
	//unsigned char input;
}
