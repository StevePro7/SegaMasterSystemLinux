#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "jump_manager.h"
#include "sprite_manager.h"
#include "storage_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"

void engine_screen_manager_init()
{
	devkit_SMS_displayOff();
	engine_tile_manager_draw_title();
	engine_font_manager_draw_text( "STEVEPRO", 10, 20 );
	devkit_SMS_displayOn();
}

void engine_screen_manager_update()
{
	
}
