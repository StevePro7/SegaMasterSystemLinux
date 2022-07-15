#include "screen_manager.h"
#include "enemy_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "graphics_manager.h"
#include "locale_manager.h"
#include "player_manager.h"

#ifdef _CONSOLE
#include "_genesis.h"
#else
#include <genesis.h>
#endif

static void print00();

void engine_screen_manager_update()
{
	print00();

	//engine_enemy_manager_draw( 20, 0 );
	//engine_player_manager_draw( 20, 0 );
}

static void print00()
{
	engine_player_manager_draw( 0, 2, LEFT_X + 2, TOP_Y + 16 );
	engine_enemy_manager_draw( 3, LEFT_X + 27, TOP_Y + 16 );
}

//static void print00()
//{
//	engine_graphics_manager_draw_border();
//	engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, PAL1 );
//}

//static void print00()
//{
//	engine_graphics_manager_draw_border();
//	engine_graphics_manager_draw_koschey( LEFT_X + 10, TOP_Y + 2, PAL1 );
//}

//static void print00()
//{
//	//engine_graphics_manager_draw_border();
//	//engine_graphics_manager_draw_underline( TOP_Y + 4 );
//
//	////engine_graphics_manager_draw_logo_big( LEFT_X + 2, TOP_Y + 3 );
//
//	//engine_graphics_manager_draw_logo_small( LEFT_X + 1, TOP_Y + 1 );
//	//engine_graphics_manager_draw_village( LEFT_X + 12, TOP_Y + 6 );
//	engine_graphics_manager_draw_inventory( LEFT_X + 2, TOP_Y + 14 );
//	engine_player_manager_draw_inventory( 2, 1, 1, LEFT_X + 2, TOP_Y + 14 );
//}

//static void print00()
//{
//	engine_graphics_manager_draw_splash();
//}

//static void print00()
//{
//	engine_font_manager_punc( LOCALE_ARROW, 4, 1 );
//	engine_font_manager_data( 123, 30, 0 );
//	engine_font_manager_numb( 7, 35, 0 );
//	engine_font_manager_char( ' ', 29, 0 );
//	engine_font_manager_zero( 3, 20, 0 );
//	engine_font_manager_text( "SUZANNE BOLANX", 2, 0 );
//	engine_font_manager_text( "STEVEPRO STUDIOS", 14, 1 );
//
//	//TODO delete
//	engine_font_manager_data( 123, 3, 0 ); engine_font_manager_numb( 0, 0, 0 );
//	engine_font_manager_data( 123, 3, 1 ); engine_font_manager_numb( 0, 0, 1 );
//	engine_font_manager_data( 123, 3, 2 ); engine_font_manager_numb( 0, 0, 2 );
//	engine_font_manager_data( 123, 3, 26 ); engine_font_manager_numb( 0, 0, 26 );
//	engine_font_manager_data( 123, 3, 27 ); engine_font_manager_numb( 0, 0, 27 );
//	engine_font_manager_data( 123, 39, 0 ); engine_font_manager_numb( 0, 36, 0 );
//
//	engine_font_manager_text( "ABCDEFGHIJ", 4, 1 );
//	engine_font_manager_text( "ABCDEFGHIJ", 4 + 10, 0 );
//	engine_font_manager_text( "ABCDEFGHIJ", 4 + 20, 1 );
//	engine_font_manager_text( "XY", 4 + 30, 0 );
//}

