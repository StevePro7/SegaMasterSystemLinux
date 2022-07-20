#include "boss_screen.h"
#include "audio_manager.h"
#include "enemy_manager.h"
#include "enum_manager.h"
#include "fight_manager.h"
#include "font_manager.h"
#include "game_manager.h"
#include "global_manager.h"
#include "graphics_manager.h"
#include "hack_manager.h"
#include "input_manager.h"
#include "locale_manager.h"
#include "player_manager.h"
#include "random_manager.h"
#include "select_manager.h"
#include "text_manager.h"
#include "fixedbank.h"

//static unsigned char select_type;
//static unsigned char event_stage;
//static unsigned char enemys_damage;
//static unsigned char player_damage;
//static unsigned char player_weapon;
//static unsigned char player_armor;
//static unsigned char beg_boss_val;
//static unsigned char first_time;
//
//static void boss_init( unsigned char *p_weapon, unsigned char *p_armor );
//static void boss_stats( unsigned char *p_weapon, unsigned char *p_armor );
//static void boss_laugh( unsigned char selection );

void screen_boss_screen_load()
{
	engine_graphics_manager_draw_border();
	engine_graphics_manager_clear_part();

	//first_time = 1;
}

void screen_boss_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_boss;
}
