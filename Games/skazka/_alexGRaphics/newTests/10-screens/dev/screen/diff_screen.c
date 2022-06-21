#include "diff_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include <stdlib.h>

#define DIFFICULTY_ROW		17
#define DIFF_SOUND_DELAY	50

static unsigned char event_stage;
static unsigned char select_type;

void screen_diff_screen_load()
{
	devkit_SMS_displayOff();
	engine_content_manager_load_logo_big();
	engine_graphics_manager_draw_logo_big( LEFT_X + 2, TOP_Y + 3 );

	devkit_SMS_mapROMBank( FIXED_BANK );
	engine_font_manager_draw_text( ( unsigned char * ) diff_texts[ 0 ], LEFT_X + 14, TOP_Y + DIFFICULTY_ROW + 0 );
	engine_font_manager_draw_text( ( unsigned char * ) diff_texts[ 1 ], LEFT_X + 14, TOP_Y + DIFFICULTY_ROW + 1 );

	engine_graphics_manager_draw_border();

	engine_select_manager_load( select_type, LEFT_X + 12, TOP_Y + DIFFICULTY_ROW, 2 );
	devkit_SMS_displayOn();
}

void screen_diff_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_diff;
}
