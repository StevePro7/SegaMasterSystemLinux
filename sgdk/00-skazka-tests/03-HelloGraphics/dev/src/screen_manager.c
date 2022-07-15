#include "screen_manager.h"
#include "enemy_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "graphics_manager.h"
#include "locale_manager.h"
#include "player_manager.h"

static void print01();
static void print02();

void engine_screen_manager_update()
{
	print01();
	print02();
	//engine_graphics_manager_draw_splash();
	//engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, PAL0 );

	//foo();
	//engine_enemy_manager_draw( 20, 0 );
	//engine_player_manager_draw( 20, 0 );

	//engine_graphics_manager_draw_inventory( LEFT_X + 2, TOP_Y + 14 );
	//engine_player_manager_draw_inventory( 20, 0 );// LEFT_X + 2, TOP_Y + 14 );
}

static void print01()
{
	engine_font_manager_punc( LOCALE_ARROW, 4, 1 );
	engine_font_manager_data( 123, 30, 0 );
	engine_font_manager_numb( 7, 35, 0 );
	engine_font_manager_char( ' ', 29, 0 );
	engine_font_manager_zero( 3, 20, 0 );
	engine_font_manager_text( "SUZANNE BOLANX", 2, 0 );
	engine_font_manager_text( "STEVEPRO STUDIOS", 14, 1 );
}
static void print02()
{
	engine_graphics_manager_draw_splash();
}