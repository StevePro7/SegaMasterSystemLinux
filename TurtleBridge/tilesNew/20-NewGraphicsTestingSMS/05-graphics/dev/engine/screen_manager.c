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

#define TMP_HGH		10

static unsigned char x;
static unsigned char col;
static unsigned int tmp;

void engine_screen_manager_init()
{
	//unsigned char idx;
	//unsigned char loop;

	engine_font_manager_draw_text( "HELLO WORLD", 10, 0 );
	engine_font_manager_draw_data( 1234, 10, 2 );
	engine_font_manager_draw_data( 5678, 10, 3 );
	engine_font_manager_draw_data( 90, 10, 4 );
	engine_font_manager_draw_text( "!\"#$%^&*()?<>_;:'=,./[]\\", 5, 6 );
	engine_font_manager_draw_char( 'X', 18, 11 );
	
	tmp = 160;
	engine_tile_manager_gfx4( tmp, TMP_HGH );
	engine_font_manager_draw_data( tmp, 10, 12 );
}

void engine_screen_manager_update()
{
	unsigned char input;

	input = engine_input_manager_hold_left();
	if( input )
	{
		tmp -= 2;
		engine_tile_manager_gfx4( tmp, TMP_HGH );
		engine_font_manager_draw_data( tmp, 10, 12 );
	}
	input = engine_input_manager_hold_right();
	if( input )
	{
		tmp += 2;
		engine_tile_manager_gfx4( tmp, TMP_HGH );
		engine_font_manager_draw_data( tmp, 10, 12 );
	}
}
