#include "load_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/player_manager.h"
#include "../engine/select_manager.h"

void screen_load_screen_load()
{
	engine_player_manager_load();
	engine_player_manager_calc();

	engine_select_manager_init();
}

void screen_load_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_stats;
}
