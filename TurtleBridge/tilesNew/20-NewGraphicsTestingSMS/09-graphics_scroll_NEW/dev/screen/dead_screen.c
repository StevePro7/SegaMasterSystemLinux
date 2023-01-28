#include "dead_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"

void screen_dead_screen_load()
{
	engine_font_manager_text( "DEAD[SCREEN..!!", 1, 1 );
	engine_player_manager_draw();
}

void screen_dead_screen_update( unsigned char *screen_type )
{
	engine_scroll_manager_update( 0 );
	engine_player_manager_draw();
	*screen_type = screen_type_dead;
}
