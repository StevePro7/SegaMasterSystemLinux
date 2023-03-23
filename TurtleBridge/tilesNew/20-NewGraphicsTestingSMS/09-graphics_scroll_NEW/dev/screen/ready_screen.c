#include "ready_screen.h"
#include "../engine/audio_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/bank2.h"
#include <stdbool.h>

static unsigned char cursorX[] = { 2, 11, 20 };
static unsigned char cursorIdx;
static unsigned char game_world, game_round, game_point;
static unsigned char game_level;
static unsigned int game_screen;
static unsigned int numb_screen;
static unsigned char player_loadY;
static unsigned char check;

static void printStats();
static void updateCheck();

// TODO - use for level screen back up
void screen_ready_screen_load()
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	struct_game_object *go = &global_game_object;

	game_world = go->game_world;
	game_round = go->game_round;
	game_level = go->game_level;
	game_point = go->game_point;
	game_screen = 0;
	numb_screen = 0;
	cursorIdx = 1;

	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );
	engine_graphics_manager_title();
	engine_graphics_manager_clouds( go->game_cloud );
	engine_graphics_manager_sea();

	engine_level_manager_init( game_level );
	//check_width = lo->level_check / SCREEN_WIDE;
	numb_screen = lo->level_check >> 3;	// / 8 blocks per screen;
	game_screen = lo->check_width * game_point;
	engine_scroll_manager_load( game_screen, lo->level_check, lo->level_size );
	engine_level_manager_draw_screen( game_screen );

	//engine_level_manager_init( game_level );
	//check_width = lo->level_check / SCREEN_WIDE;
	//game_screen = check_width * game_point;
	//engine_level_manager_draw_screen( game_screen );
	////engine_level_manager_draw_point( game_point );

	//printTexts();
	engine_graphics_manager_level_stats( game_world, game_round, game_point );
	engine_graphics_manager_level_texts();
	printStats();

	//engine_level_manager_init( go->game_level );
	//engine_level_manager_draw_point( go->game_point );
	engine_font_manager_char( '>', cursorX[ cursorIdx ], SHARE_TEXT_ROW );

	engine_player_manager_initX( go->game_difficulty, go->game_world );
	engine_player_manager_loadX( game_screen );
	player_loadY = level_platforms[ po->lookX ];
	engine_player_manager_loadY( player_loadY );
	engine_player_manager_draw();

	devkit_SMS_displayOn();
	check = 0;

	// TODO do not include
	engine_font_manager_text( "READY-LEVEL", 10, 2 );
	// TODO do not include
}

void screen_ready_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_ready;
}

static void updateCheck()
{
	struct_level_object *lo = &global_level_object;
	engine_level_manager_init( game_level );
	//check_width = lo->level_check >> 5;	// / SCREEN_WIDE 32px;
	numb_screen = lo->level_check >> 3;	// / 8 blocks per screen;
	engine_level_manager_draw_screen( game_screen );
	//engine_level_manager_draw_point( game_point );
}

static void printStats()
{
	unsigned char delta;
	//delta = 0;
	delta = 1;

	// TODO delete - used for debugging / testing only - print level + screen
	engine_font_manager_data( game_level + delta, 8, SHARE_TEXT_ROW + 5 );
	engine_font_manager_data( numb_screen, 18, SHARE_TEXT_ROW + 5 );
	engine_font_manager_data( game_screen + delta, 27, SHARE_TEXT_ROW + 5 );
	// TODO delete - used for debugging / testing only - print level + screen
}