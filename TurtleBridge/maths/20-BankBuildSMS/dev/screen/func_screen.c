#include "func_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

void screen_func_screen_load()
{
	unsigned char number;
	engine_font_manager_text( "FUNC SCREEN", 10, 2 );

	devkit_SMS_mapROMBank( FIXED_BANK );
	number = steven_object_numbers[ 0 ];
	engine_font_manager_data( number, 10, 4 );

	devkit_SMS_mapROMBank( FIXED_BANK );
	number = steven_object_numbers[ 1 ];
	engine_font_manager_data( number, 10, 5 );

	devkit_SMS_mapROMBank( FIXED_BANK );
	number = steven_object_numbers[ 2 ];
	engine_font_manager_data( number, 10, 6 );
}

void screen_func_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_func;
}