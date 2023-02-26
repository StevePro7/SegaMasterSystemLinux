#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/riff_manager.h"

static unsigned char index;

void screen_test_screen_load()
{	
	index = 0;
	engine_font_manager_draw_text( "PRESS UP / DOWN / FIRE1", 4, 6 );
	engine_font_manager_draw_text( "INDEX", 4, 10 );
	engine_font_manager_draw_data( index, 8, 11 );
}

void screen_test_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	unsigned char count;
	count = 1;
	input = engine_input_manager_hold( input_type_up );
	if( input && index > 0 )
	{
		index--;
		engine_font_manager_draw_data( index, 8, 11 );
	}
	input = engine_input_manager_hold( input_type_down );
	if( input && index < 13 )
	{
		index++;
		engine_font_manager_draw_data( index, 8, 11 );
	}

	input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		if( 10 == index || 12 == index )
		{
			engine_riff_manager_play( index + 0 );
			engine_riff_manager_play( index + 1 );
		}
		else
		{
			engine_riff_manager_play( index );
		}
	}

	*screen_type = screen_type_test;
}

//void screen_test_screen_updateX( unsigned char *screen_type )
//{	
//	unsigned char input;
//	input = engine_input_manager_hold( input_type_left );
//	if( input )
//	{
//		engine_font_manager_draw_text( "VAN HALEN 01", 10, 10 );
//		engine_riff_manager_play( 0 );
//		engine_riff_manager_play( 1 );
//	}
//	input = engine_input_manager_hold( input_type_right );
//	if( input )
//	{
//		engine_font_manager_draw_text( "VAN HALEN 02", 10, 11 );
//		engine_riff_manager_play( 2 );
//		engine_riff_manager_play( 3 );
//		engine_riff_manager_play( 4 );
//	}
//	input = engine_input_manager_hold( input_type_up );
//	if( input )
//	{
//		engine_font_manager_draw_text( "VAN HALEN 03", 10, 12 );
//		engine_riff_manager_play( 5 );
//	}
//	input = engine_input_manager_hold( input_type_down );
//	if( input )
//	{
//		engine_font_manager_draw_text( "GUNS N ROSES 01", 10, 14 );
//		engine_riff_manager_play( 6 );
//	}
//	input = engine_input_manager_hold( input_type_fire1 );
//	if( input )
//	{
//		engine_font_manager_draw_text( "GUNS N ROSES 02", 10, 15 );
//		engine_riff_manager_play( 7 );
//		engine_riff_manager_play( 8 );
//	}
//	//input = engine_input_manager_hold( input_type_fire2 );
//	//if( input )
//	//{
//	//	engine_font_manager_draw_text( "SIMPSONS SK", 10, 15 );
//	//	engine_riff_manager_play( 5 );
//	//}
//	*screen_type = screen_type_test;
//}

/*
void screen_test_screen_update( unsigned char *screen_type )
{
unsigned char input;
input = engine_input_manager_hold( input_type_left );
if( input )
{
engine_font_manager_draw_text( "SIMPSONS 10", 10, 10 );
engine_riff_manager_play( 0 );
}
input = engine_input_manager_hold( input_type_right );
if( input )
{
engine_font_manager_draw_text( "SIMPSONS 20", 10, 11 );
engine_riff_manager_play( 1 );
}
input = engine_input_manager_hold( input_type_up );
if( input )
{
engine_font_manager_draw_text( "SIMPSONS 30", 10, 12 );
engine_riff_manager_play( 2 );
}
input = engine_input_manager_hold( input_type_down );
if( input )
{
engine_font_manager_draw_text( "SIMPSONS 40", 10, 13 );
engine_riff_manager_play( 3 );
}
input = engine_input_manager_hold( input_type_fire1 );
if( input )
{
engine_font_manager_draw_text( "SIMPSONS 50", 10, 14 );
engine_riff_manager_play( 4 );
}
input = engine_input_manager_hold( input_type_fire2 );
if( input )
{
engine_font_manager_draw_text( "SIMPSONS SK", 10, 15 );
engine_riff_manager_play( 5 );
}
*screen_type = screen_type_test;
}
*/



/*
void screen_test_screen_update( unsigned char *screen_type )
{
unsigned char input = engine_input_manager_hold( input_type_left );
if( input )
{
engine_font_manager_draw_text( "SIMPSONS 10", 10, 8 );
engine_riff_manager_play( 6 );
}
else
{
input = engine_input_manager_hold( input_type_up );
if( input )
{
engine_font_manager_draw_text( "PLAY SOUND FX 02", 10, 9 );
engine_riff_manager_play( 1 );
}

input = engine_input_manager_hold( input_type_down );
if( input )
{
engine_font_manager_draw_text( "PLAY SOUND FX 02", 10, 9 );
engine_riff_manager_play( 2 );
}
else
{
input = engine_input_manager_hold( input_type_right );
if( input )
{
engine_font_manager_draw_text( "PLAY SOUND FX 03", 10, 10 );
engine_riff_manager_play( 3 );
}
else
{
input = engine_input_manager_hold( input_type_right );
if( input )
{
//engine_font_manager_draw_text( "PLAY WRONG1", 10, 12 );
//engine_riff_manager_play( 3 );
}
else
{
input = engine_input_manager_hold( input_type_fire1 );
if( input )
{
engine_font_manager_draw_text( "PLAY SOUND FX", 10, 13 );
engine_riff_manager_play( 1 );
engine_riff_manager_play( 2 );
engine_riff_manager_play( 3 );
}
else
{
input = engine_input_manager_hold( input_type_fire2 );
if( input )
{
//engine_font_manager_draw_text( "PLAY GAME OVER", 10, 14 );
//engine_riff_manager_play( 4 );
//engine_riff_manager_play( 5 );

engine_font_manager_draw_text( "PLAY OH BEHAVE!", 10, 14 );
engine_riff_manager_play( 7 );
engine_riff_manager_play( 8 );
}
}
}
}
}
}

*screen_type = screen_type_test;
}
*/