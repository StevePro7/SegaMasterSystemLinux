#include "relive_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/player_manager.h"
#include "../engine/text_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

#define RELIVE_ROW				12
#define RELIVE_SCREEN_DELAY		30

static unsigned char count;

void screen_relive_screen_load()
{
	devkit_SMS_displayOff();		// TODO try comment this line out for smooth screen transition??
	engine_content_manager_load_logo_small();
	engine_graphics_manager_draw_logo_small( LEFT_X + 1, TOP_Y + 1 );

	engine_text_manager_clear( TOP_Y + 5, TOP_Y + 22 );

	engine_font_manager_draw_text( LOCALE_REVITALISING, LEFT_X + 9, TOP_Y + RELIVE_ROW );

	engine_graphics_manager_draw_border();
	engine_graphics_manager_draw_underline( TOP_Y + 4 );

	devkit_SMS_displayOn();			// TODO try comment this line out for smooth screen transition??

	engine_timer_manager_load( RELIVE_SCREEN_DELAY );
	count = 0;
}

void screen_relive_screen_update( unsigned char *screen_type )
{
	unsigned char timer;
	unsigned char input;

	// TODO - timer is not counting!!
	//input = engine_input_manager_hold( input_type_fire1 );
	if( input )
	{
		timer = engine_timer_manager_update();
		if( timer )
		{
			engine_timer_manager_load( RELIVE_SCREEN_DELAY );
			if( count == 0 || count == 2 )
			{
				//TDOD
				//engine_sound_manager_play( sound_type_9 );
			}

			if( count != 3 )
			{
				//engine_font_manager_draw_text( LOCALE_DOT, LEFT_X + 21 + count, RELIVE_ROW );
				engine_font_manager_draw_punc( LOCALE_DOT, LEFT_X + 21 + count, RELIVE_ROW );
			}

			count++;
			if( count > 3 )
			{
				// Replenish HP and remove +1.
				engine_player_manager_rest();
				engine_player_manager_set_oneups( life_type_none );
				*screen_type = screen_type_stats;
				return;
			}
		}
	}

	*screen_type = screen_type_relive;
}

