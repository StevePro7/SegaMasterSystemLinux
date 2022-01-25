#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
//#include <stdlib.h>

void engine_screen_manager_init()
{
	unsigned char x = 10;
	unsigned char y = 10;
	engine_tile_manager_draw( x + 0, y + 0, 0 );
}

void engine_screen_manager_update()
{
	unsigned char input;
	input = engine_input_manager_move_down();
	//input = 1;
	if( input )
	{
	}
}