#include "intro_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../devkit/_sms_manager.h"
#include <stdbool.h>

static bool complete;

void screen_intro_screen_load()
{
	engine_level_manager_load( 2 );
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	engine_graphics_manager_sea();
	engine_level_manager_show( 0 );
	engine_player_manager_draw();
	devkit_SMS_displayOn();
	engine_scroll_manager_load();
	complete = false;
}

void screen_intro_screen_update( unsigned char *screen_type )
{
	struct_scroll_object *so = &global_scroll_object;
	struct_level_object *lo = &global_level_object;
	unsigned char input;
	unsigned char delta;
	unsigned char value;
	bool newTile;

	delta = 0;
	//input = engine_input_manager_hold( input_type_right );
	input = engine_input_manager_move( input_type_right );
	if( input )
	{
		delta = 1;
	}
	//input = engine_input_manager_move( input_type_down );
	//if( input )
	//{
	//	*screen_type = screen_type_pass;
	//	return;
	//}

	if( !complete )
	{
		for( value = 0; value < delta; value++ )
		{
			newTile = engine_scroll_manager_update( 1 );
			if( newTile )
			{
				engine_level_manager_draw( so->offset_right );
				complete = so->offset_right >= lo->level_size;
				if( complete )
				{
					engine_font_manager_text( "NEXT SCREEN", 10, 3 );
					break;
				}
			}
		}
	}

	//engine_player_manager_update();
	//engine_player_manager_update2();
	engine_player_manager_draw();

	if( complete )
	{
		engine_player_manager_update3();
		*screen_type = screen_type_pass;
		return;
	}

	*screen_type = screen_type_intro;
}
