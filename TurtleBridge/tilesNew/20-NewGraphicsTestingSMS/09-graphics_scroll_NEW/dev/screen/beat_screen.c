#include "beat_screen.h"
#include "../engine/cartoon_manager.h"
#include "../engine/command_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/player_manager.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 261
#endif

void screen_beat_screen_load()
{
	struct_player_object *po = &global_player_object;
	unsigned char data;

	engine_player_manager_initX( 0 );
	engine_player_manager_loadX( 0 );
	engine_player_manager_loadY( 16 );
	//po->posnX = 128;
	//po->initX = po->posnX;
	//po->drawX = po->initX - 16;
	//po->drawY = 96;
	po->player_frame = 4;
	engine_font_manager_data( po->player_frame, 10, 10 );

	data = 17;
	engine_font_manager_text( "HELLO", 20, 14 );
	engine_font_manager_data( data, 24, 12 );

	engine_font_manager_valu( data, 24, 14 );
	//unsigned char data = 0xFF;
	//unsigned char data = engine_random_manager_next( 256 );

	//struct_game_object *go = &global_game_object;
	//engine_font_manager_text( "BEAT SCREEN..!!", 10, 14 );
	//engine_font_manager_data( go->game_difficulty, 10, 4 );

	//engine_graphics_manager_clouds( data );
}

void screen_beat_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	//unsigned char data, loop;
	unsigned char input1, input2;// , input3, input4, input5, input6;
	unsigned char command;

	input1 = engine_input_manager_hold( input_type_down );
	input2 = engine_input_manager_hold( input_type_right );

	if( input1 )
	{
		//command = 0b00000000;
		command = engine_command_manager_build( 1, 0, 0, 0, 0, 0, 1 );
		//po->player_frame = engine_cartoon_manager_wave( po->player_frame );
		//po->player_frame = engine_cartoon_manager_swap( po->player_frame );
		po->player_frame = engine_cartoon_manager_flip( po->player_frame, command );
		engine_font_manager_data( po->player_frame, 10, 10 );
	}

	if( input2 )
	{
		//po->player_frame = engine_cartoon_manager_wave( po->player_frame );
		po->player_frame = engine_cartoon_manager_swap( po->player_frame );
		//po->player_frame = engine_cartoon_manager_flip( po->player_frame, command );

		//po->drawX = po->initX - 16;
		//po->drawY = 96;
		//if( 5 == po->player_frame || 7 == po->player_frame || 9 == po->player_frame || 11 == po->player_frame )
		//{
		//	po->drawX = po->initX - 16 + 4;
		//	po->drawY = 100;
		//}

		engine_font_manager_data( po->player_frame, 10, 10 );
	}
	//if( input2 )
	//{
	//	engine_random_manager_rand();
	//}
	//if( input1 )
	//{
	//	data = engine_random_manager_next( 256 );
	//	for( loop = 4; loop < 8; loop++ )
	//	{
	//		engine_font_manager_text( "                                ", 0, loop );
	//	}

	//	engine_graphics_manager_clouds( data );
	//}

	engine_player_manager_draw();

	*screen_type = screen_type_beat;
}
