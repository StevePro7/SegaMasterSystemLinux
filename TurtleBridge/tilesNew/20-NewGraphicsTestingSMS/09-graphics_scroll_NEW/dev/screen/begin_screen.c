#include "begin_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"

static void drawScreen();

void screen_begin_screen_load()
{
	engine_level_manager_load( 3 );
	engine_player_manager_load( difficulty_type_easier );
	devkit_SMS_displayOff();
	drawScreen();
	engine_level_manager_show( 0 );
	engine_player_manager_draw();
	devkit_SMS_displayOn();
}

void screen_begin_screen_update( unsigned char *screen_type )
{
	engine_player_manager_draw();
	*screen_type = screen_type_begin;
}

static void drawScreen()
{
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();

	engine_graphics_manager_sea();
	engine_font_manager_text( "BEGIN[SCREEN!!", 10, 2 );
}