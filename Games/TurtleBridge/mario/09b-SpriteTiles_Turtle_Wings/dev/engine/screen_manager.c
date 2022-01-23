#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
//#include <stdlib.h>

static unsigned char tx;
static unsigned char ty;
//static void draw_turtle( unsigned char i );
//static unsigned char flag[ 6 ] = { 0,0,0,0,0 };
//static unsigned char wide[ 6 ] = { 2, 7, 12, 17, 22, 27 };

void engine_screen_manager_init()
{
	//engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 1 );

	tx = 14;
	ty = 12;
	engine_turtle_manager_draw_01( tx + 5, ty );
	engine_turtle_manager_draw_02( tx, ty );
}

void engine_screen_manager_update()
{
	unsigned char input;
	input = engine_input_manager_hold_down();
	if( input )
	{
	}
}
