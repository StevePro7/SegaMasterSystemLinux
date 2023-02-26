#include "test_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/game_manager.h"
#include "../engine/hack_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank2.h"

#define UFIX(x)                ((unsigned char)((x)>>8))
static unsigned char player_loadY;
static unsigned char flag, frame;
static unsigned char landingY;
static unsigned char game_difficulty;
//static int jumps[] = { -642, -617, -59, -566, -541, -516, -491, -466, -441, -416, -391, -366, -341, -316, -290, -265, -240, -215, -190, -165, -140, -115, -90, -65, -40, -15, 11, 36, 61, 86, 111, 136, 161, 186, 211, 236, 261, 287, 312, 337, 362, 387, 412, 437, 462, 487, 512, 537, 562, 588, 613, 638, 663, 688, 713, 738, 763, 788, 813, 838, 838, 864, 889, 914, 939 };
static int jumps[] =
{
	-735, -702, -669, -636, -603, -569, -536, -503, -470, -437, -404, -370, -337, -304, -271, -238, -204, -171, -138, -105, -72, -39, -5, 27, 60, 93, 126, 160, 193, 226, 259, 292, 325, 359, 392, 425, 458, 491, 524, 558, 591, 624, 657, 690, 724, 757, 790, 823, 856, 889, 923, 956, 989, 1022, 1055, 1089, 1122, 1155, 1188, 1221, 1254, 1288,
};

//static int jumps[] =
//{
//	-362, -354, -346, -338, -330, -323, -315, -307, -299, -291, -283, -275, -268, -260, -252, -244, -236, -228, -220, -212, -205, -197, -189, -181, -173, -165, -157, -150, -142, -134, -126, -118, -110, -102, -94, -87, -79, -71, -63, -55, -47, -39, -32, -24, -16, -8, 0, 7, 15, 23, 30, 38, 46, 54, 62, 70, 78, 85, 93, 101, 109, 117, 125, 133, 141, 148, 156, 164, 172, 180, 188, 196, 204, 211, 219, 227, 235, 243, 251, 259, 266, 274, 282, 290, 298, 306, 314, 322, 329, 337, 345, 353, 361, 369, 377, 384, 392, 400, 408, 416, 424, 432, 440, 447, 455, 463, 471, 479, 487, 495, 502, 510, 518, 526, 534, 542, 550, 558, 565, 573, 581, 589, 597, 605, 613, 620, 628, 636,
//};


//static int jumps[] =
//{
//	-1035, -1010, -985, -960, -935, -910, -885, -860, -835, -810, -785, -760, -734, -709, -684, -659, -634, -609, -584, -559, -534, -509, -484, -458, -433, -408, -383, -358, -333, -308, -283, -258, -233, -208, -182, -157, -132, -107, -82, -57, -32, -7, 17, 42, 67, 92, 118, 143, 168, 193, 218, 243, 268, 293, 318, 343, 368, 394, 419, 444, 469, 494, 519, 544, 569, 594, 619, 644, 670, 695, 720, 745, 770, 795, 820, 845, 870, 895, 920, 945, 971, 996, 1021, 1046, 1071, 1096, 1121, 1146, 1171, 1196, 1221, 1247, 1272, 1297, 1322, 1347, 1372, 1397, 1422, 1447, 1472, 1497, 1523,
//};

static unsigned char index;
static unsigned int posY2;

void screen_test_screen_load()
{
	struct_player_object *po = &global_player_object;
	struct_game_object *go = &global_game_object;

	// TODO delete this.
	engine_debug_manager_initgame();

	engine_level_manager_init( go->game_level );
	game_difficulty = go->game_difficulty;
	engine_player_manager_initX( game_difficulty );


	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();

	engine_graphics_manager_title();
	engine_graphics_manager_sea();

	engine_level_manager_draw_point( go->game_point );
	engine_player_manager_loadX( go->game_point );

	player_loadY = level_platforms[ po->lookX ];
	engine_player_manager_loadY( player_loadY );

	engine_player_manager_draw();
	devkit_SMS_displayOn();

	posY2 = po->posnY << 8;
	index = 0;
	frame = 0;
	flag = 0;

	engine_font_manager_data( frame, 20, 9 );
	engine_font_manager_data( index, 20, 10 );
	engine_font_manager_data( 0, 20, 11 );
	engine_font_manager_data( 0, 20, 12 );
	engine_font_manager_data( po->posnY, 20, 13 );
	engine_font_manager_data( po->drawY, 20, 14 );

	landingY = player_loadY * 8;
	landingY += 16;
}

void screen_test_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	unsigned int tmpY2;
	unsigned char tmpY;
	unsigned char input;
	int delta;
	tmpY2 = 0;
	delta = 0;
	if( flag )
	{
		frame++;
		delta = jumps[ index ];
		tmpY2 = posY2 + delta;
		tmpY = UFIX( tmpY2 );
		po->posnY = tmpY;
		if( po->posnY >= landingY )
		{
			//po->posnY = player_loadY * 8;
			po->posnY = landingY;
			po->player_frame = 0;
			index = 0;
			flag = 0;
		}
		else
		{
			po->posnX += 2;
			po->drawX = po->posnX - 16;
			po->player_frame = 4;
			posY2 = po->posnY << 8;
			index++;
		}

		po->drawY = po->posnY - 32;
		engine_font_manager_data( frame, 20, 9 );
		engine_font_manager_data( index, 20, 10 );
		engine_font_manager_data( delta, 20, 11 );
		engine_font_manager_data( tmpY2, 20, 12 );
		engine_font_manager_data( po->posnY, 20, 13 );
		engine_font_manager_data( po->drawY, 20, 14 );
	}
	else
	{
		input = engine_input_manager_hold( input_type_right );
		if( input )
		{
			frame = 0;
			flag = 1;
		}
	}

	engine_player_manager_draw();
	*screen_type = screen_type_test;
}

void screen_test_screen_updateX( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	unsigned int tmpY2;
	unsigned char tmpY;
	unsigned char input;
	int delta;
	if( flag )
	{
		if( po->posnY > 128 )
		{
			po->posnY = 128;
			po->drawY = po->posnY - 32;
			posY2 = po->posnY << 8;
			index = 0;
			flag = 0;
		}
		else
		{
			delta = jumps[ index ];
			tmpY2 = posY2 + delta;
			tmpY = UFIX( tmpY2 );
			po->posnY = tmpY;
			po->drawY = po->posnY - 32;
			posY2 = po->posnY << 8;
			index++;
		}

		//engine_font_manager_text( "SPLAT", 20, 12 );
	}
	else
	{
		//engine_font_manager_text( "SPLAT", 20, 10 );
		input = engine_input_manager_hold( input_type_right );
		if( input )
		{
			//engine_font_manager_text( "SPLAT", 20, 11 );
			flag = 1;
		}
	}

	engine_player_manager_draw();
	*screen_type = screen_type_test;
}
