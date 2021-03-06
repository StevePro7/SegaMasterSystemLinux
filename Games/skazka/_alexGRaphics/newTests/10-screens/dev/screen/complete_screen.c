#include "complete_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/text_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/fixedbank.h"

#define BEAT_SCREEN_DELAY	900

void screen_complete_screen_load()
{
	unsigned char row;
	unsigned char idx;

	devkit_SMS_displayOff();
	engine_content_manager_load_logo_small();
	engine_graphics_manager_draw_logo_small( LEFT_X + 1, TOP_Y + 1 );

	engine_text_manager_clear( TOP_Y + 5, TOP_Y + 22 );

	row = 7;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 11; idx++ )
	{
		engine_font_manager_draw_text( ( unsigned char * ) beat_texts[ idx ], LEFT_X + 2, TOP_Y + row );
		row++;
	}

	engine_font_manager_draw_punc( LOCALE_POINT, LEFT_X + 22, TOP_Y + 7 );
	engine_font_manager_draw_punc( LOCALE_POINT, LEFT_X + 23, TOP_Y + 7 );
	engine_font_manager_draw_punc( LOCALE_POINT, LEFT_X + 27, TOP_Y + 17 );
	engine_font_manager_draw_punc( '.', LEFT_X + 16, TOP_Y + 13 );

	engine_graphics_manager_draw_border();
	engine_graphics_manager_draw_underline( TOP_Y + 4 );

	engine_text_manager_cont();
	devkit_SMS_displayOn();

	engine_timer_manager_load( BEAT_SCREEN_DELAY );
	engine_music_manager_beat();
}

void screen_complete_screen_update( unsigned char *screen_type )
{
	unsigned char input1;
	unsigned char input2;
	unsigned char timer;

	input1 = engine_input_manager_hold( input_type_fire1 );
	input2 = engine_input_manager_hold( input_type_fire2 );
	timer = engine_timer_manager_update();

	if( input1 || input2 || timer )
	{
		devkit_PSGStop();
		engine_game_manager_intro_off();
		engine_game_manager_music_off();
		*screen_type = screen_type_title;
		return;
	}

	*screen_type = screen_type_complete;
}
