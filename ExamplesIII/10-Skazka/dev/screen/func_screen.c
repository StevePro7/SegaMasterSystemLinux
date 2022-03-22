#include "func_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/locale_manager.h"
#include "../engine/text_manager.h"
#include "../devkit/_sms_manager.h"

// TODO delete!!
static void section04();

void screen_func_screen_load()
{
//	section04();
//
//	//unsigned char code[] = { 0x87, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x89 };
//	//engine_font_manager_text( "FUNC SCREEN...!!", 2, 10 );
//
//	//engine_text_manager_args( 2, 7, 12, 0x86, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x81, 0x88 );
//	//engine_text_manager_list( 2, 8, 12, code );
}

void screen_func_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_func;
}

// 13000 REM TITLE SCREEN
//static void section04()
//{
//	//unsigned char index;
//	unsigned char row;
//
//	row = 1;
//	engine_content_manager_load_title( row );
//	engine_text_manager_clear( row + 2, row + 9 );
//	engine_text_manager_border();
//	//for( idx = row + 2; idx < row + 9; idx++ )
//	//{
//	//	engine_font_manager_text( LOCALE_29_SPCS, LEFT_X + 2, idx );
//	//}
//}