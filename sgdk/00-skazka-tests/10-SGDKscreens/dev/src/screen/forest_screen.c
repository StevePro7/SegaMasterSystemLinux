#include "forest_screen.h"
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

void screen_forest_screen_load()
{
	engine_graphics_manager_draw_border();
	engine_graphics_manager_clear_part();
}

void screen_forest_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_forest;
}
