#include "load_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/player_manager.h"

void screen_load_screen_load()
{
	engine_content_manager_load_title( 1 );
	engine_player_manager_load();
	engine_player_manager_calc();
	engine_font_manager_text( "LOAD SCREEN!!", 10, 20 );
}

void screen_load_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_load;
	//*screen_type = screen_type_stats;
}
