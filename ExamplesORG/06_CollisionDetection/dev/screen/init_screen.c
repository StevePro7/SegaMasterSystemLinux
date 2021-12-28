#include "init_screen.h"
#include "../devkit/_sms_manager.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/tree_manager.h"

void screen_init_screen_load()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_load_tiles();
	engine_content_manager_load_sprites();
	engine_tree_manager_draw();
	devkit_SMS_displayOn();
}

void screen_init_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_load;
}