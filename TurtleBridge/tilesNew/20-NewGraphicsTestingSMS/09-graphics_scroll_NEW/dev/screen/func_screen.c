#include "func_screen.h"
#include "../engine/command_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"

#ifdef _CONSOLE
#else
#pragma disable_warning 261
#endif

void screen_func_screen_load()
{
	engine_font_manager_text( "FUNC SCREEN.!", 10, 2 );

	engine_font_manager_data( COMMAND_NONE_MASK, 10, 3 );

	engine_font_manager_data( COMMAND_LEFT_MASK, 10, 5 );
	engine_font_manager_data( COMMAND_MIDD_MASK, 10, 6 );
	engine_font_manager_data( COMMAND_RGHT_MASK, 10, 7 );
	engine_font_manager_data( COMMAND_HIGH_MASK, 10, 8 );

	engine_font_manager_data( COMMAND_JUMP_MASK, 10, 10 );
	engine_font_manager_data( COMMAND_DOWN_MASK, 10, 11 );
	engine_font_manager_data( COMMAND_SWAP_MASK, 10, 12 );
	engine_font_manager_data( COMMAND_FLIP_MASK, 10, 13 );
}

void screen_func_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_func;
}