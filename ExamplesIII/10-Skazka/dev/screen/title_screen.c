#include "title_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"

void screen_title_screen_load()
{
	unsigned char row = 1;

	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_clear( row + 2, row + 9 );
	engine_text_manager_border();
	devkit_SMS_displayOn();
}

void screen_title_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_title;
}
