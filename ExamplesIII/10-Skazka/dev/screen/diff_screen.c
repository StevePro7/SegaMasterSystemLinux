#include "diff_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

#define  DIFFICULTY_ROW		17

static unsigned char select_type;

void screen_diff_screen_load()
{
	unsigned char row = 1;
	select_type = select_type_diff;

	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 0, row + 9 );

	// SKAZKA.
	engine_text_manager_title( row + 2 );
	engine_font_manager_text( LOCALE_DIFFICULTY, LEFT_X + 8, 12 );

	devkit_SMS_mapROMBank( FIXED_BANK );
	engine_font_manager_text( ( unsigned char * ) diff_texts[ 0 ], LEFT_X + 15, 17 );
	engine_font_manager_text( ( unsigned char * ) diff_texts[ 1 ], LEFT_X + 15, 18 );

	engine_select_manager_load( select_type, LEFT_X + 12, DIFFICULTY_ROW, 2 );
	devkit_SMS_displayOn();
}

void screen_diff_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_diff;
}
