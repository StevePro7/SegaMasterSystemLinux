#include "pass_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../devkit/_sms_manager.h"

unsigned char swap;

void screen_pass_screen_load()
{
	engine_player_manager_draw();
	engine_scroll_manager_load();
	//devkit_SMS_displayOff();
	//engine_asm_manager_clear_VRAM();
	//engine_content_manager_bggame();
	//engine_content_manager_sprite();
	//engine_graphics_manager_sea();
	//engine_font_manager_text( "PASS[SCREEN", 10, 2 );
	//devkit_SMS_displayOn();
	swap = 1;
}

void screen_pass_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	engine_scroll_manager_update( 0 );
	if( po->posnX >= 200 )
	{
		//po->player_frame = 4;
	}
	if( po->posnX >= 240 )
	{
		//engine_font_manager_text( "LEVEL COM", 10, 4 );
		// TODO delete
		//po->player_frame = 1;
	}
	else
	{
		//swap = 1 - swap;
		if( swap )
		{
			engine_player_manager_pass();
		}
	}
	
	engine_player_manager_draw();
	*screen_type = screen_type_pass;
}