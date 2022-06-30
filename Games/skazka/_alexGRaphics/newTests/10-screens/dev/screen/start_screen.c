#include "start_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/player_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../engine/timer_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

#define START_FLASH_DELAY		50
#define START_FLASH_TOTAL		3
static unsigned char flash_index;
static unsigned char flash_count;

void screen_start_screen_load()
{
	devkit_SMS_displayOff();		// TODO try comment this line out for smooth screen transition??
	engine_content_manager_load_logo_small();
	engine_content_manager_load_village();
	engine_content_manager_load_inventory();

	engine_text_manager_clear( TOP_Y + 5, TOP_Y + 22 );
	engine_graphics_manager_draw_logo_small( LEFT_X + 1, TOP_Y + 1 );
	engine_graphics_manager_draw_village( LEFT_X + 12, TOP_Y + 6 );

	engine_player_manager_draw_inventory( LEFT_X + 2, TOP_Y + 14 );

	engine_game_manager_print_stats();
	engine_game_manager_print_texts();

	engine_graphics_manager_draw_border();
	engine_graphics_manager_draw_underline( TOP_Y + 4 );

	devkit_SMS_displayOn();			// TODO try comment this line out for smooth screen transition??

	engine_timer_manager_load( START_FLASH_DELAY );
	flash_index = 0;
	flash_count = 0;
}

void screen_start_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_start;
}
