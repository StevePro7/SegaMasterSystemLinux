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
#include "../banks/bank2.h"

void screen_splash_screen_load()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_splash();
	engine_graphics_manager_image( splash_tiles__tilemap__bin, TILE_IMAGE_SCREEN, 4, 4, 24, 16 );
	//engine_font_manager_text( ( unsigned char * ) locale_object_texts[ 1 ], 25, 23 );
	devkit_SMS_displayOn();
}

void screen_splash_screen_update( unsigned char *screen_type )
{
	// TODO -add intro music
	*screen_type = screen_type_splash;
}
