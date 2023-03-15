#include "begin_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
//#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"

void screen_begin_screen_load()
{
	unsigned char cloud;

	// TODO delete this.
	engine_debug_manager_initgame();
	// TODO delete this.
	cloud = engine_random_manager_next( SPRITE_TILES );
	engine_game_manager_set_cloud_form( cloud );

	//devkit_SMS_displayOn();
	// TODO delete this.

	// TODO - can run tnis inline as this will be the only consumer eventually...
	engine_graphics_manager_common();

	//devkit_SMS_displayOff();
	//engine_asm_manager_clear_VRAM();
	//engine_content_manager_bggame();
	//engine_content_manager_sprite();
	//engine_graphics_manager_title();
	//engine_graphics_manager_sea();
	//devkit_SMS_displayOn();
}

void screen_begin_screen_update( unsigned char *screen_type )
{
	//*screen_type = screen_type_over;
	//*screen_type = screen_type_cont;
	//*screen_type = screen_type_init;
	//*screen_type = screen_type_intro;
	//*screen_type = screen_type_level;
	//*screen_type = screen_type_option;
	//*screen_type = screen_type_diff;
	//*screen_type = screen_type_beat;
	*screen_type = screen_type_test;
	//*screen_type = screen_type_start;
	//*screen_type = screen_type_record;
	//*screen_type = screen_type_repeat;
	//*screen_type = screen_type_begin;
}
