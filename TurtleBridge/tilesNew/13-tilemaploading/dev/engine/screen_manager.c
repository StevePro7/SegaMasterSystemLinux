#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"
#include "storage_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"

static unsigned int tmp;

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "SCREEN MANAGER", 10, 0 );
	engine_font_manager_draw_char( 'Z', 10, 11 );

	tmp = 128;
	//engine_tile_manager_gfx4( tmp, 10 );
	engine_tile_manager_maps( tmp, 10 );
}

void engine_screen_manager_update()
{
	
}