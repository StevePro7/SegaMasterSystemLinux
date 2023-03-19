#include "cont_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
//#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
//#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"

static unsigned char offset;
static void printStuff( unsigned char offset )
{
	engine_font_manager_text( "CONT SCREEN!!", 1 + offset, 0 );
	//engine_font_manager_text( "-123456789A123456789B123456789C=", 1 + offset, 2 );
}

void screen_cont_screen_load()
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned char scroll = so->scrollLeftX;
	//unsigned char lookup1;
	//lookup1 = so->scrollLeftX  & SCREEN_LESS_ONE;

	//unsigned char scroll = 0;
	//offset = scroll >> 3;
	offset = 1;

//	devkit_SMS_displayOff();
//	engine_graphics_manager_screen( CLEAR_TILE_BLUE );

	printStuff( offset );
//	engine_player_manager_draw();

//	devkit_SMS_displayOn();
}

void screen_cont_screen_update( unsigned char *screen_type )
{
	//struct_player_object *po = &global_player_object;
	//struct_game_object *go = &global_game_object;
	unsigned char input;
	
	input = engine_input_manager_hold( input_type_down );
	if( input )
	{
	//	// TODO 
	//	engine_player_manager_lives( go->game_difficulty );
		*screen_type = screen_type_init;
		return;
	}
	//input = engine_input_manager_hold( input_type_fire2 );
	//if( input )
	//{
	//	*screen_type = screen_type_over;
	//	return;
	//}
	
	//engine_player_manager_draw();
	*screen_type = screen_type_cont;
}
