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
#include "../banks/bank3.h"

static unsigned int tmp;
static void draw_title(unsigned int tmp);

void screen_title_screen_load()
{
	tmp = 144;
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_titles();

	engine_graphics_manager_image( titles_tiles__tilemap__bin, TILE_IMAGE_SCREEN, 8, 0, 16, 12 );

	devkit_SMS_displayOn();
}

void screen_title_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_title;
}
