#include "screen_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "scroll_manager.h"
#include "sprite_manager.h"

static unsigned char x = 16;
static unsigned char y = 128-32;// 64;

static void bonus_level();

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 4 );
}

void engine_screen_manager_update()
{

	
}

static void bonus_level()
{
}