#include "screen_manager.h"
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
	engine_map_manager_init( ( unsigned char * ) level1_bin );
	engine_map_manager_draw_map_screen();
}

void engine_screen_manager_update()
{

	
}
