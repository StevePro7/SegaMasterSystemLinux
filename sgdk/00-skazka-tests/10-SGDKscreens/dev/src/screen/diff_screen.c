#include "diff_screen.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "game_manager.h"
#include "global_manager.h"
#include "graphics_manager.h"
#include "locale_manager.h"
#include "random_manager.h"
#include "select_manager.h"
#include "text_manager.h"
#include "fixedbank.h"

#define DIFFICULTY_ROW		17
#define DIFF_SOUND_DELAY	50

//static unsigned char event_stage;
static unsigned char select_type;

void screen_diff_screen_load()
{
	engine_graphics_manager_clear_full();
	engine_graphics_manager_draw_logo_big( LEFT_X + 2, TOP_Y + 3 );

	engine_font_manager_draw_text( ( char * ) diff_texts[ 0 ], LEFT_X + 14, TOP_Y + DIFFICULTY_ROW + 0 );
	engine_font_manager_draw_text( ( char * ) diff_texts[ 1 ], LEFT_X + 14, TOP_Y + DIFFICULTY_ROW + 1 );

	engine_font_manager_draw_text( LOCALE_DIFFICULTY, LEFT_X + 7, TOP_Y + 12 );
	engine_graphics_manager_draw_border();

	engine_select_manager_load( select_type, LEFT_X + 12, TOP_Y + DIFFICULTY_ROW, 2 );
}

void screen_diff_screen_update( unsigned char *screen_type )
{
	unsigned char selection;
	//unsigned char timer;

	engine_random_manager_rand();

	selection = engine_select_manager_update( select_type );
	if( NO_SELECTION == selection )
	{
		*screen_type = screen_type_diff;
		return;
	}

	// Set difficulty.
	engine_game_manager_difficulty( selection );

	*screen_type = screen_type_diff;
}
