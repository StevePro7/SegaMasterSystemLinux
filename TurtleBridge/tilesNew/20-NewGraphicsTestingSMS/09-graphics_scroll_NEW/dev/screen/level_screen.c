#include "level_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

static unsigned char cursorX;
static unsigned char world, round, point;

//static void printCursor();
static void printStats();

void screen_level_screen_load()
{
	struct_game_object *go = &global_game_object;
	world = go->game_world;
	round = go->game_round;
	point = go->game_point;
	cursorX = 2;

	// TODO delete this.
	engine_debug_manager_initgame();

	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();

	engine_graphics_manager_title();
	engine_graphics_manager_sea();

	engine_level_manager_init( go->game_level );
	engine_level_manager_draw_point( go->game_point );
	engine_util_manager_locale_texts( 6, 2, 3 );
	engine_font_manager_char( '>', cursorX, 3 );
	printStats();
	devkit_SMS_displayOn();
}

void screen_level_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_level;
}

static void printStats()
{

}