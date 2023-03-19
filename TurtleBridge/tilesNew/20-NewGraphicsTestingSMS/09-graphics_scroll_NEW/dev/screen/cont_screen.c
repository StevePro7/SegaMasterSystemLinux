#include "cont_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
//#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"

static unsigned char offset;
static void printStuff( unsigned char offset )
{
	engine_font_manager_text( "CONTINUE?", offset, 0 );
	engine_font_manager_text( ">YES  NO", offset, 1 );
	engine_font_manager_text( "  GAME  ", offset, 2 );
	engine_font_manager_text( "  OVER  ", offset, 3 );
	engine_font_manager_data( offset, 1 + offset, 4 );
	//engine_font_manager_text( "-123456789A123456789B123456789C=", 1 + offset, 2 );
}

void screen_cont_screen_load()
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	struct_game_object *go = &global_game_object;
	unsigned char player_loadY;
	unsigned char checkScreen;

	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );


	// Work in terms of screens.
	checkScreen = lo->check_width * go->game_point;
	engine_scroll_manager_load( checkScreen, lo->level_check, lo->level_size );
	engine_level_manager_draw_screen( checkScreen );


	engine_player_manager_initX( go->game_difficulty, go->game_world );
	engine_player_manager_loadX( checkScreen );
	player_loadY = level_platforms[ po->lookX ];
	engine_player_manager_loadY( player_loadY );
	engine_player_manager_draw();

	engine_graphics_manager_sea();
	engine_graphics_manager_clouds( go->game_cloud );
	engine_level_manager_draw_screen( checkScreen );		// Weird - must draw this twice otherwise clouds + sea don't draw??

	printStuff( 1 );
	devkit_SMS_displayOn();

	//engine_riff_manager_init();
	//engine_command_manager_init();
	//check = 0;
}
void screen_cont_screen_loadX()
{
	struct_scroll_object *so = &global_scroll_object;
	unsigned char scroll = so->scrollLeftX;

	unsigned char valueX = 256 - scroll;
	unsigned char tester = valueX >> 3;
	//unsigned char lookup1;
	//lookup1 = so->scrollLeftX  & SCREEN_LESS_ONE;

	//unsigned char scroll = 0;
	//offset = scroll >> 3;
	devkit_SMS_setBGScrollX( 0 );
	offset = 1;// 12 + tester;

//	devkit_SMS_displayOff();
//	engine_graphics_manager_screen( CLEAR_TILE_BLUE );

	printStuff( offset );
//	engine_player_manager_draw();

//	devkit_SMS_displayOn();
}

void screen_cont_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
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
	engine_player_manager_animate( po->player_frame );
	engine_player_manager_draw();
	*screen_type = screen_type_cont;
}
