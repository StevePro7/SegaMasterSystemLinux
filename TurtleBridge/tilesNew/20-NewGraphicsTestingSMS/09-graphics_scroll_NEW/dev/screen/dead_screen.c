#include "dead_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

void screen_dead_screen_load()
{
	engine_font_manager_text( "DEAD SCREEN", 1, 10 );
	engine_player_manager_draw();
}

void screen_dead_screen_update( unsigned char *screen_type )
{
	engine_player_manager_draw();
	*screen_type = screen_type_dead;
}
