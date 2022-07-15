#include "screen_manager.h"
#include "enemy_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "graphics_manager.h"
#include "player_manager.h"

void engine_screen_manager_update()
{
	engine_font_manager_punc( ':', 10, 10 );
	engine_font_manager_text( "SUZANNE BOLAND", 2, 8 );
	engine_font_manager_text( "STEVEPRO STUDIOS", 4, 18 );
	//engine_graphics_manager_draw_splash();
	//engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, PAL0 );

	//foo();
	//engine_enemy_manager_draw( 20, 0 );
	//engine_player_manager_draw( 20, 0 );

	//engine_graphics_manager_draw_inventory( LEFT_X + 2, TOP_Y + 14 );
	//engine_player_manager_draw_inventory( 20, 0 );// LEFT_X + 2, TOP_Y + 14 );
}