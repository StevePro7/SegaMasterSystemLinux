#include "title_screen.h"
#include "splash_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
//#include "../engine/input_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank3.h"

void screen_title_screen_load()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_titles();
	engine_graphics_manager_image( titles_tiles__tilemap__bin, TILE_IMAGE_SCREEN, 8, 0, 16, 12 );

	engine_content_manager_sprite();
	engine_font_manager_text( LOCALE_TITLE1_SCREEN, 8, 22 );
	engine_font_manager_text( LOCALE_TITLE2_SCREEN, 7, 23 );
	devkit_SMS_displayOn();
}

void screen_title_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_title;
}
