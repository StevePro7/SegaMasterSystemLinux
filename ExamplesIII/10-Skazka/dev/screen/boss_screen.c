#include "boss_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/select_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

void screen_boss_screen_load()
{
	unsigned char row;
//	unsigned char idx;

	row = 1;
	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_border();
	engine_text_manager_clear( row + 2, row + 9 );

	engine_font_manager_text( "BOSS SCREEN!!", 4, 10 );
	//engine_select_manager_load( select_type_boss, LEFT_X + 5, row, 2 );
	devkit_SMS_displayOn();
}

void screen_boss_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_boss;
}
