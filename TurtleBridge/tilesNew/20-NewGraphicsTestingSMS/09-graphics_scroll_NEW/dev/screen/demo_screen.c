#include "demo_screen.h"
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
static unsigned char frame;
static unsigned char landingY;
static unsigned char index;
//static unsigned int posY2;

//static signed int jumps[] =
//{
//	-368,-351,-335,-318,-302,-285,-268,-252,-235,-219,-202,-185,-169,-152,-136,-119,-102,-86,-69,-53,-36,-20,-3,14,30,47,63,80,97,113,130,146,163,180,196,213,229,246,262,279,296,312,329,345,362,379,395,412,428,409,462,478,495,511,528,545,561,578,594,611,627,644,
//};

static signed int jumps[] =
{
	-736, -702, -670, -636, -604, -570, -536, -504, -470, -438, -404, -370, -338, -304, -272, -238, -204, -172, -138, -106, -72, -40, -6, 28, 60, 94, 126, 160, 194, 226, 260, 292, 326, 360, 392, 426, 458, 492, 524, 558, 592, 624, 658, 690, 724, 758, 790, 824, 856, 818, 924, 956, 990, 1022, 1056, 1090, 1122, 1156, 1188, 1222, 1254, 1288,
};

void screen_demo_screen_load()
{
	struct_player_object *po = &global_player_object;
	struct_game_object *go = &global_game_object;
	unsigned char player_loadY;

	// TODO delete this.
	engine_debug_manager_initgame();

	engine_level_manager_init( go->game_level );
	engine_player_manager_initX( go->game_difficulty );


	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();

	//engine_graphics_manager_title();
	engine_graphics_manager_sea();

	engine_level_manager_draw_point( go->game_point );
	engine_player_manager_loadX( go->game_point );

	player_loadY = level_platforms[ po->lookX ];
	engine_player_manager_loadY( player_loadY );

	engine_player_manager_draw();
	devkit_SMS_displayOn();

	index = 0;
	frame = 0;

	engine_font_manager_data( po->player_state, 20, 8 );
	engine_font_manager_data( frame, 20, 9 );
	engine_font_manager_data( index, 20, 10 );
	engine_font_manager_data( 0, 20, 11 );
	engine_font_manager_data( 0, 20, 12 );
	engine_font_manager_data( po->posnY, 20, 13 );
	engine_font_manager_data( po->drawY, 20, 14 );

	landingY = player_loadY * 8;
}

void screen_demo_screen_update( unsigned char *screen_type )
{
	struct_player_object *po = &global_player_object;
	unsigned int input1, input2;
	signed int deltaY;
//	unsigned int leapY;

	input1 = devkit_SMS_getKeysPressed();			// hold
	input2 = devkit_SMS_getKeysHeld();				// move
	if( player_state_isonground == po->player_state )
	{
		if( input1 & input_type_fire1 || input1 & input_type_fire2 )
		{
			frame = 0;
			engine_font_manager_data( input1, 20, 7 );
			po->player_state = player_state_isintheair;
			index = 0;
		}
	}
	if( player_state_isintheair == po->player_state )
	{
		deltaY = jumps[ index ];
		po->leapY += deltaY;
		po->posnY = UFIX( po->leapY );
		if( po->posnY >= landingY )
		{
			//po->posnY = player_loadY * 8;
			po->posnY = landingY;
			po->leapY = po->posnY << 8;
			po->player_frame = 0;
			po->player_state = player_state_isonground;
			index = 0;
		}
		else
		{
			//po->posnX += 2;
			//po->drawX = po->posnX - 16;
			//po->player_frame = 4;
			//po->leapY = po->posnY << 8;
			index++;
		}

		frame++;
		po->drawY = po->posnY - 32;

		engine_font_manager_data( po->player_state, 20, 8 );
		engine_font_manager_data( frame, 20, 9 );
		engine_font_manager_data( index, 20, 10 );
		engine_font_manager_data( 0, 20, 11 );
		engine_font_manager_data( 0, 20, 12 );
		engine_font_manager_data( po->posnY, 20, 13 );
		engine_font_manager_data( po->drawY, 20, 14 );
	}

	engine_player_manager_draw();
	*screen_type = screen_type_demo;
}
