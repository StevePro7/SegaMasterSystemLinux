#include "test_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/storage_manager.h"

void screen_test_screen_load()
{
	engine_font_manager_text( "TEST", 10, 2 );
}

void screen_test_screen_update( unsigned char *screen_type )
{
	//engine_player_manager_draw();
	*screen_type = screen_type_test;
}
