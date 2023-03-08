#include "start_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/hack_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/timer_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank2.h"
#include <stdbool.h>

static unsigned char screen_intro_screen_delay;
static unsigned char cheat_count;
static unsigned char delay;
static bool flag;

void screen_start_screen_load()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	engine_graphics_manager_title();
	engine_graphics_manager_sea();
	engine_util_manager_locale_texts( 4, 9, 7 );
	devkit_SMS_displayOn();

	engine_scroll_manager_init();
	engine_scroll_manager_load( 0, 0 );
	screen_intro_screen_delay = NORMAL_DELAY;
	engine_delay_manager_load( 50 );
	flag = true;
}

void screen_start_screen_update( unsigned char *screen_type )
{
	//unsigned char input; 
	delay = engine_delay_manager_update();
	if( delay )
	{
		flag = !flag;
		if( flag )
		{
			engine_util_manager_locale_texts( 4, 9, 7 );
		}
		else
		{
			//engine_font_manager_text( LOCALE_BLANK14, 9, 7 );
			engine_util_manager_locale_blank( 0, 9, 7 );
		}
	}

	engine_scroll_manager_section( 1 );
	*screen_type = screen_type_start;
}
