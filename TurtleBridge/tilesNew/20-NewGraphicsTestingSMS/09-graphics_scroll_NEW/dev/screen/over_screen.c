#include "over_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/player_manager.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"

static void printGameOver()
{

}

void screen_over_screen_load()
{
	struct_game_object *go = &global_game_object;

	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );

	// Draw screen specific graphics.
	engine_graphics_manager_clouds( go->game_cloud );
	engine_graphics_manager_sea();
	engine_font_manager_text( "OVER SCREEN", 10, 2 );
	printGameOver();
	devkit_SMS_displayOn();
}

void screen_over_screen_update( unsigned char *screen_type )
{
	unsigned char input1, input2;

	input1 = engine_input_manager_hold( input_type_fire1 );
	input2 = engine_input_manager_hold( input_type_fire2 );
	if( input1 || input2 )
	{
		*screen_type = screen_type_start;
		return;
	}

	//engine_scroll_manager_update( 0 );
	//engine_player_manager_draw();
	*screen_type = screen_type_over;
}
