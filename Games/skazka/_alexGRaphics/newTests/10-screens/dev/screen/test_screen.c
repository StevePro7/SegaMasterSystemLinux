#include "test_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../devkit/_sms_manager.h"
#include <stdbool.h>

static bool flag;
static unsigned int palette;

void screen_test_screen_load()
{
	engine_font_manager_draw_text( "TEST SCREEN", LEFT_X + 12, TOP_Y + 10 );
	//engine_content_manager_load_koschey();
	//engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, devkit_TILE_USE_SPRITE_PALETTE() );
	//engine_graphics_manager_draw_border();
	//palette = devkit_TILE_USE_SPRITE_PALETTE();
	//flag = true;
}

void screen_test_screen_update( unsigned char *screen_type )
{
	//unsigned char input = engine_input_manager_move( input_type_fire1 );
	//if( input )
	//{
	//	flag = !flag;
	//	if( flag )
	//	{
	//		engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, palette );
	//	}
	//	if( !flag )
	//	{
	//		engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, 0 );
	//	}
	//}

	*screen_type = screen_type_test;
}
