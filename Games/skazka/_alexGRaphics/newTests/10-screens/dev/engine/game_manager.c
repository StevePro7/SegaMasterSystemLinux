#include "game_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "locale_manager.h"
#include "player_manager.h"
#include "text_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"

// Global variable.
struct_game_object global_game_object;

void engine_game_manager_init()
{
	engine_game_manager_intro_on();
	engine_game_manager_music_on();
	engine_game_manager_flash_on();

	engine_game_manager_difficulty( diff_type_easy );
}

void engine_game_manager_intro_on()
{
	struct_game_object *go = &global_game_object;
	go->intro_once = true;
}
void engine_game_manager_intro_off()
{
	struct_game_object *go = &global_game_object;
	go->intro_once = false;
}

void engine_game_manager_music_on()
{
	struct_game_object *go = &global_game_object;
	go->play_music = true;
}
void engine_game_manager_music_off()
{
	struct_game_object *go = &global_game_object;
	go->play_music = false;
}

void engine_game_manager_flash_on()
{
	struct_game_object *go = &global_game_object;
	go->flash_arrow = true;
}
void engine_game_manager_flash_off()
{
	struct_game_object *go = &global_game_object;
	go->flash_arrow = false;
}

void engine_game_manager_difficulty( unsigned char difficulty )
{
	struct_game_object *go = &global_game_object;
	go->difficulty = difficulty;
}

// Common game rendering functions.
void engine_game_manager_print_stats()
{
	engine_player_manager_stats();
	engine_font_manager_draw_text( LOCALE_STATISTICS, LEFT_X + 2, TOP_Y + 6 );
	engine_font_manager_draw_text( LOCALE_HP, LEFT_X + 2, TOP_Y + 7 );
	engine_font_manager_draw_text( LOCALE_XP, LEFT_X + 2, TOP_Y + 8 );
	engine_font_manager_draw_text( LOCALE_GOLD, LEFT_X + 2, TOP_Y + 9 );
}

void engine_game_manager_print_texts()
{
	unsigned char row;
	unsigned char idx;

	row = 14;
	devkit_SMS_mapROMBank( FIXED_BANK );
	for( idx = 0; idx < 8; idx++ )
	{
		engine_font_manager_draw_text( ( unsigned char * ) stats_texts[ idx ], LEFT_X + 12, TOP_Y + row );
		row++;
	}

	engine_font_manager_draw_punc( LOCALE_COLON, LEFT_X + 19, TOP_Y + 14 );
	engine_font_manager_draw_punc( LOCALE_QMARK, LEFT_X + 29, TOP_Y + 14 );
}

