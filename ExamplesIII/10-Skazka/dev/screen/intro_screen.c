#include "intro_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include <stdlib.h>

void screen_intro_screen_load()
{
	unsigned char row = 1;
	unsigned char *text = NULL;

	devkit_SMS_displayOff();
	engine_content_manager_load_title( row );
	engine_text_manager_clear( row + 0, row + 9 );
	engine_text_manager_border();

	engine_text_manager_title( row + 2 );
	devkit_SMS_mapROMBank( FIXED_BANK );
	text = ( unsigned char * ) intro_texts[ 3 ];
	//text = "HELLO WORLD";
	engine_font_manager_text( text, LEFT_X + 2, 10 );

	devkit_SMS_displayOn();
}

void screen_intro_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_intro;
}
