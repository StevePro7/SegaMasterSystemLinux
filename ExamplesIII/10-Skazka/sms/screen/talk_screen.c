#include "talk_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/player_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/fixedbank.h"
#include <stdlib.h>

#define MAX_CHAT	3
#define NUM_GOLD	5

static void display_msg();

void screen_talk_screen_load()
{
	unsigned char row;
	//unsigned char val;

	row = 1;
	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 2, row + 9 );

	//val = ( unsigned char ) ( rand() % MAX_RANDOM );
	display_msg();

	//// Adjust gold.
	//if( 0 == val )
	//{
	//	engine_sound_manager_play( sound_type_6 );
	//	engine_player_manager_dec_gold( NUM_GOLD );
	//}
	//if( ( MAX_RANDOM - 1 ) == val )
	//{
	//	engine_sound_manager_play( sound_type_7 );
	//	engine_player_manager_inc_gold( 0, NUM_GOLD );
	//}

	engine_text_manager_fire();
	devkit_SMS_displayOn();
}

void screen_talk_screen_update( unsigned char *screen_type )
{
	unsigned char input1 = engine_input_manager_hold( input_type_fire1 );
	unsigned char input2 = engine_input_manager_hold( input_type_fire2 );
	if( input1 )
	{
		if( !devkit_PSGSFXGetStatus() )
		{
			*screen_type = screen_type_stats;
			return;
		}
	}

	if( input2 )
	{
		// TODO clear the 3x rows first!
		display_msg();
	}

	*screen_type = screen_type_talk;
}

// TODO - do I want
static void display_msg()
{
	unsigned char row;
	unsigned char val;
	unsigned char idx = 0;
	unsigned char beg = 0;
	unsigned char txt = 0;

	val = ( unsigned char ) ( rand() % MAX_RANDOM );

	// Adjust gold.
	if( 0 == val )
	{
		engine_sound_manager_play( sound_type_6 );
		engine_player_manager_dec_gold( NUM_GOLD );
	}
	if( ( MAX_RANDOM - 1 ) == val )
	{
		engine_sound_manager_play( sound_type_7 );
		engine_player_manager_inc_gold( 0, NUM_GOLD );
	}

	beg = val * MAX_CHAT;
	row = 7;

	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < MAX_CHAT; idx++ )
	{
		txt = beg + idx;
		engine_font_manager_text( ( unsigned char * ) villager_texts[ txt ], LEFT_X + 3, row );
		row++;
	}
}