#include "screen_manager.h"
#include "font_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"

#define UFIX(x)                ((unsigned char)((x)>>8))

static unsigned char cur_enemy_x, enemy_x;
static unsigned int cur_value_x, value_x;

static void foo();
static void bar();
static void execute( void( *f )( ) );

void engine_screen_manager_init()
{
	engine_font_manager_draw_text( "STEVEPRO STUDIOS", 4, 4 );
	engine_sprite_manager_init();

	enemy_x = 64;
	value_x = enemy_x << 8;
	cur_value_x = value_x;

	engine_font_manager_draw_data( enemy_x, 14, 7 );
	engine_font_manager_draw_data( value_x, 14, 8 );
	engine_font_manager_draw_data( cur_value_x, 14, 9 );
}

void engine_screen_manager_update()
{
	unsigned char input;
	input = engine_input_manager_hold_left();
	if( input )
	{
		engine_font_manager_draw_text( "FOO DUMMY", 20, 0 );
		execute( foo );
	}
	input = engine_input_manager_hold_right();
	if( input )
	{
		engine_font_manager_draw_text( "BAR DUMMY", 20, 12 );
		execute( bar );
	}
	//input = engine_input_manager_hold_fire1();
	/*if( input )
	{
		cur_value_x += 64;

		value_x = cur_value_x;
		enemy_x = UFIX( value_x );
		cur_enemy_x = enemy_x;
		
		engine_font_manager_draw_data( enemy_x, 14, 7 );
		engine_font_manager_draw_data( value_x, 14, 8 );
		engine_font_manager_draw_data( cur_value_x, 14, 9 );
	}*/
}



static void foo()
{
	engine_font_manager_draw_text( "FOO REALX", 20, 1 );
}
static void bar()
{
	engine_font_manager_draw_text( "BAR REALX", 20, 13 );
}
static void execute( void( *f )( ) )
{
	f();
}