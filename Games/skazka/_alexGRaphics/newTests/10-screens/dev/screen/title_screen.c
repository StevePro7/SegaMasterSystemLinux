#include "title_screen.h"
//#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/hack_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/text_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include <stdbool.h>
#include <stdlib.h>

#define TITLE_FLASH_DELAY	50
#define TITLE_SOUND_DELAY	50

static bool first_time;
static unsigned char event_stage;
static unsigned char flash_count;

void screen_title_screen_load()
{
	//unsigned char row;
	//unsigned char idx;

	//
	//first_time = true;
	//event_stage = event_stage_start;
	//flash_count = 0;
}

void screen_title_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_title;
}
