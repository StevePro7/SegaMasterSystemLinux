#include "demo_screen.h"
//#include "../engine/asm_manager.h"
//#include "../engine/audio_manager.h"
//#include "../engine/content_manager.h"
//#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
//#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
//#include "../engine/game_manager.h"
//#include "../engine/hack_manager.h"
//#include "../engine/input_manager.h"
//#include "../engine/level_manager.h"
//#include "../engine/player_manager.h"
//#include "../engine/scroll_manager.h"
//#include "../engine/timer_manager.h"
//#include "../devkit/_sms_manager.h"
//#include "../banks/fixedbank.h"
//#include "../banks/bank2.h"

//#define UFIX(x)                ((unsigned char)((x)>>8))
//static unsigned char player_loadY;
//static unsigned char frame;
//static unsigned char landingY;
//static unsigned char index;
////static unsigned int posY2;
////
////static signed int jumps[] =
////{
////	-368,-351,-335,-318,-302,-285,-268,-252,-235,-219,-202,-185,-169,-152,-136,-119,-102,-86,-69,-53,-36,-20,-3,14,30,47,63,80,97,113,130,146,163,180,196,213,229,246,262,279,296,312,329,345,362,379,395,412,428,409,462,478,495,511,528,545,561,578,594,611,627,644,
////};
//
//// Angle	75
//// Speed	32
////static signed int jumps[] =
////{
////	-893,	-860,	-827,	-794,	-761,	-727,	-694,	-661,	-628,	-595,	-562,	-528,	-495,	-462,	-429,	-396,	-363,	-329,	-296,	-263,	-230,	-197,	-163,	-130,	-97,	-64,	-31,	2,	36,	69,	102,	135,	168,	202,	235,	268,	301,	334,	367,	401,	434,	467,	500,	533,	566,	600,	633,	666,	699,	732,	766,	799,	832,	865,	898,	931,	965,
////};
//
//// Angle	75
//// Speed	45
//// Max Vert	96
//static signed int jumps[] =
//{
//	-1263,	-1230,	-1197,	-1164,	-1130,	-1097,	-1064,	-1031,	-998,	-964,	-931,	-898,	-865,	-832,	-799,	-765,	-732,	-699,	-666,	-633,	-599,	-566,	-533,	-500,	-467,	-434,	-400,	-367,	-334,	-301,	-268,	-235,	-201,	-168,	-135,	-102,	-69,	-35,	-2,	31,	64,	97,	130,	164,	197,	230,	263,	296,	330,	363,	396,	429,	462,	495,	529,	562,	595,	628,	661,	694,	728,	761,	794,	827,	860,	894,	927,	960,	993,	1026,	1059,	1093,	1126,	1159,	1192,	1225,	1259,	1292,	1325,
//};
//
//
//
////static signed int jumps[] =
////{
////	-736, -702, -670, -636, -604, -570, -536, -504, -470, -438, -404, -370, -338, -304, -272, -238, -204, -172, -138, -106, -72, -40, -6, 28, 60, 94, 126, 160, 194, 226, 260, 292, 326, 360, 392, 426, 458, 492, 524, 558, 592, 624, 658, 690, 724, 758, 790, 824, 856, 818, 924, 956, 990, 1022, 1056, 1090, 1122, 1156, 1188, 1222, 1254, 1288,
////};
//
//static void swap_player_frame();
//static void flip_player_frame( unsigned char input3, unsigned char input4 );

void screen_demo_screen_load()
{
	engine_graphics_manager_common();
	//struct_player_object *po = &global_player_object;
	//struct_game_object *go = &global_game_object;
	//unsigned char player_loadY;

	// TODO delete this.
	//engine_debug_manager_initgame();

	//engine_level_manager_init( go->game_level );
	//engine_player_manager_initX( go->game_difficulty, go->game_world );
	//po->player_frame = 8;

	//devkit_SMS_displayOff();
	//engine_asm_manager_clear_VRAM();
	//engine_content_manager_bggame();
	//engine_content_manager_sprite();

	//engine_graphics_manager_title();
	//engine_graphics_manager_sea();

	//engine_level_manager_draw_point( go->game_point );
	//engine_player_manager_loadX( go->game_point );

	//player_loadY = level_platforms[ po->lookX ];
	//engine_player_manager_loadY( player_loadY );

	//engine_player_manager_draw();
	//devkit_SMS_displayOn();

	//index = 0;
	//frame = 0;

	//engine_font_manager_data( po->player_frame, 20, 5 );
	//engine_font_manager_data( po->player_state, 20, 8 );
	//engine_font_manager_data( frame, 20, 9 );
	//engine_font_manager_data( index, 20, 10 );
	//engine_font_manager_data( 0, 20, 11 );
	//engine_font_manager_data( 0, 20, 12 );
	//engine_font_manager_data( po->posnY, 20, 13 );
	//engine_font_manager_data( po->drawY, 20, 14 );

	//landingY = player_loadY * 8;
	engine_font_manager_text( "DEMO SCREEN", 21, 0 );
}

void screen_demo_screen_update( unsigned char *screen_type )
{
//	struct_player_object *po = &global_player_object;
//	unsigned int input1, input2;
//	unsigned int input3, input4;	// TODO - use later to move right when in the air
//	signed int deltaY;
////	unsigned int leapY;
//
//	//input1 = devkit_SMS_getKeysPressed();			// hold
//	input1 = engine_input_manager_hold( input_type_fire1 );
//	input2 = engine_input_manager_hold( input_type_fire2 );
//	//input2 = devkit_SMS_getKeysHeld();				// move
//	if( player_state_isonground == po->player_state )
//	{
//		//if( input_type_fire1 & input1 || input_type_fire2 & input1 )
//		if (input1 || input2 )
//		{
//			frame = 0;
//			engine_font_manager_data( input1, 20, 7 );
//			po->player_state = player_state_isintheair;
//			//po->player_frame = 4;
//			index = 0;
//		}
//	}
//	else if( player_state_isintheair == po->player_state )
//	{
//		//if( input_type_fire1 & input1 )
//		if( input1 )
//		{
//			engine_font_manager_data( input1, 20, 7 );
//			swap_player_frame();
//		}
//		if( input2 )
//		{
//			input3 = engine_input_manager_move( input_type_left );
//			input4 = engine_input_manager_move( input_type_right );
//			engine_font_manager_data( input1, 20, 7 );
//			flip_player_frame( input3 , input4 );
//		}
//
//		// TODO pull joystick down on descent to double next code.
//		deltaY = jumps[ index ];
//		po->leapY += deltaY;
//		po->posnY = UFIX( po->leapY );
//		if( po->posnY >= landingY )
//		{
//			//po->posnY = player_loadY * 8;
//			po->posnY = landingY;
//			po->leapY = po->posnY << 8;
//			//po->player_frame = 0;
//			po->player_state = player_state_isonground;
//			index = 0;
//		}
//		else
//		{
//			//po->posnX += 2;
//			//po->drawX = po->posnX - 16;
//			//po->player_frame = 4;
//			//po->leapY = po->posnY << 8;
//			index++;
//		}
//		frame++;
//		po->drawY = po->posnY - 32;
//
//		engine_font_manager_data( po->player_frame, 20, 5 );
//		engine_font_manager_data( po->player_state, 20, 8 );
//		engine_font_manager_data( frame, 20, 9 );
//		engine_font_manager_data( index, 20, 10 );
//		engine_font_manager_data( 0, 20, 11 );
//		engine_font_manager_data( 0, 20, 12 );
//		engine_font_manager_data( po->posnY, 20, 13 );
//		engine_font_manager_data( po->drawY, 20, 14 );
//	}
//
//	engine_player_manager_draw();
	*screen_type = screen_type_demo;
}
//
//static void swap_player_frame()
//{
//	struct_player_object *po = &global_player_object;
//	if( po->player_frame < 4 )
//	{
//		po->player_frame = 2 - po->player_frame;
//	}
//	else if( po->player_frame < 8 )
//	{
//		po->player_frame += 4;
//	}
//	else if( po->player_frame < 12 )
//	{
//		po->player_frame -= 4;
//	}
//}
//
//static void flip_player_frame( unsigned char input3, unsigned char input4 )
//{
//	 TODO enum??
//	struct_player_object *po = &global_player_object;
//	if( 0 == po->player_frame )
//	{
//		po->player_frame = 4;
//	}
//	else if( 2 == po->player_frame )
//	{
//		po->player_frame = 8;
//	}
//	else if( po->player_frame < 8 )
//	{
//		if( input3 )
//		{
//			if( 4 == po->player_frame )
//			{
//				po->player_frame = 7;
//			}
//			else
//			{
//				po->player_frame--;
//			}
//		}
//		else
//		{
//			if( 7 == po->player_frame )
//			{
//				po->player_frame = 4;
//			}
//			else
//			{
//				po->player_frame++;
//			}
//		}
//	}
//	else if( po->player_frame < 12 )
//	{
//		if( input4 )
//		{
//			if( 11 == po->player_frame )
//			{
//				po->player_frame = 8;
//			}
//			else
//			{
//				po->player_frame++;
//			}
//		}
//		else
//		{
//			if( 8 == po->player_frame )
//			{
//				po->player_frame = 11;
//			}
//			else
//			{
//				po->player_frame--;
//			}
//		}
//	}
//
//	po->drawX = po->initX - 16;
//	if( 5 == po->player_frame || 7 == po->player_frame || 9 == po->player_frame || 11 == po->player_frame )
//	{
//		po->drawX = po->initX - 16 + 4;
//	}
//}