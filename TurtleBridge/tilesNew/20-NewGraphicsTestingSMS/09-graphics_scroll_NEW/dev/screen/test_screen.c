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
static unsigned char flag;
static unsigned char game_difficulty;
static int jumps[] = { -642, -617, -59, -566, -541, -516, -491, -466, -441, -416, -391, -366, -341, -316, -290, -265, -240, -215, -190, -165, -140, -115, -90, -65, -40, -15, 11, 36, 61, 86, 111, 136, 161, 186, 211, 236, 261, 287, 312, 337, 362, 387, 412, 437, 462, 487, 512, 537, 562, 588, 613, 638, 663, 688, 713, 738, 763, 788, 813, 838, 838, 864, 889, 914, 939 };
static unsigned char index;
static unsigned int posY2;

void screen_test_screen_load()
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
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
	flag = 0;

	engine_font_manager_data( index, 20, 10 );
	engine_font_manager_data( 0, 20, 11 );
	engine_font_manager_data( 0, 20, 12 );
	engine_font_manager_data( po->posnY, 20, 13 );
	engine_font_manager_data( po->drawY, 20, 14 );
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

		delta = jumps[ index ];
		tmpY2 = posY2 + delta;
		tmpY = UFIX( tmpY2 );
		po->posnY = tmpY;
		if( po->posnY >= player_loadY * 8 )
		{
			po->posnY = player_loadY * 8;
			index = 0;
			flag = 0;
		}
		else
		{
			posY2 = po->posnY << 8;
			index++;
		}

		po->drawY = po->posnY - 32;
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
