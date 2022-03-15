#include "record_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

void screen_record_screen_load()
{
	// TODO this is the fight intro screen!
	// need to move this or rename this....
	unsigned char row;
	unsigned char idx;

	row = 1;
	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_clear( row + 0, row + 9 );
	engine_text_manager_border();

	// SKAZKA.
	engine_text_manager_title( row + 2 );

	devkit_SMS_displayOn();
}

void screen_record_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_record;
}
