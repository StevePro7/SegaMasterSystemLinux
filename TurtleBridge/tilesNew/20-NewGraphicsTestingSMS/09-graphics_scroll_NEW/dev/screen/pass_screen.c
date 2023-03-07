#include "pass_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/command_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../devkit/_sms_manager.h"

static unsigned char player_passX;
static unsigned char player_endY;
static unsigned char swap;

void screen_pass_screen_load()
{
	struct_command_object *co = &global_command_object;
	struct_player_object *po = &global_player_object;
	player_passX = engine_player_manager_get_deltaX( po->player_state, co->prev_command );
	player_passX >>= 1;
	player_endY = engine_player_manager_finish();

	// TODO - wrap this in an API - must reset startX as will have increased as scrolling thru level - although drawX never changes then
	//struct_player_object *po = &global_player_object;
	//unsigned char player_loadY;

	//po->posnX = po->initX;
	//player_loadY = engine_collision_manager_finish( po->lookX, po->tileY );

	//po->posnY = player_loadY << 3;
	//po->leapY = po->posnY << 8;
	//po->drawY = po->posnY - 32;


	//if( po->player_frame < 2 || ( po->player_frame > 4 && po->player_frame < 8 ) )
	//{
	//	po->player_frame = 4;
	//}
	//else if( po->player_frame < 4 || po->player_frame > 8 )
	//{
	//	po->player_frame = 8;
	//}

	engine_player_manager_draw();
	engine_player_manager_head();

	//engine_scroll_manager_load();
	//devkit_SMS_displayOff();
	//engine_asm_manager_clear_VRAM();
	//engine_content_manager_bggame();
	//engine_content_manager_sprite();
	//engine_graphics_manager_sea();
	//engine_font_manager_text( "PASS[SCREEN", 10, 2 );
	//devkit_SMS_displayOn();

	// TODO remove from below
	// play PCM first + block
	//engine_music_manager_stop();
	swap = 0;
}

void screen_pass_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	unsigned char input1, input2;

	engine_scroll_manager_update( 0 );
	if( po->posnX >= LEVELS_SIDE )
	{
		// Continue invoke function in case player still in air.
		engine_player_manager_pass( player_passX, player_endY );
		if( !swap )
		{
			engine_music_manager_stop();
			swap = 1;
			po->player_frame = ( player_frame_theair_rght_01 == po->player_frame ) ? player_frame_ground_rght_02 : player_frame_ground_left_02;
		}
		// TODO delete - 7-Mar-2023 was POC'ing scroll / moving player back but won't work with current posnX logic check - TODO remove!!
		//else
		//{
		//	input1 = engine_input_manager_hold( input_type_up );
		//	input2 = engine_input_manager_move( input_type_down );
		//	if( input1 || input2 )
		//	{
		//		// TODO delete -poc
		//		po->posnX -= 1;
		//		po->drawX = po->posnX - 16;
		//		engine_scroll_manager_update( 1 );
		//	}
		//}
	}
	else
	{
		input1 = engine_input_manager_hold( input_type_up );
		input2 = engine_input_manager_move( input_type_down );
		//if( input1 || input2 )
		{
			engine_player_manager_pass( player_passX, player_endY );
		}
	}

	engine_player_manager_draw();
	//engine_player_manager_head();		// TODO test
	*screen_type = screen_type_pass;
}