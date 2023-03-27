#include "intro_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

void screen_intro_screen_load()
{
	unsigned char col, row;
	col = 3;
	row = 3;
	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );
	engine_graphics_manager_title();

	//engine_font_manager_text( "                              ", col - 1, row + 3 );
	//engine_font_manager_text( "[[[[[[[[[[[[[[[[[[[[[[[[[[[[[[", col - 1, row + 3 );
	//engine_font_manager_text( "[[[[[[[[[[[[[[[[[[[[[[[[[[[[[", col - 1, 1 );

	engine_font_manager_text( "[[[[[[[[[[[[[[[[[[[[[[[[[[[[[", col - 1, row + 0 );
	engine_font_manager_text( "[[=====[CHEAT[SHEET[======[[[", col - 1, row + 1 );
	engine_font_manager_text( "[[[[[[[[[[[[[[[[[[[[[[[[[[[[[", col - 1, row + 2 );
	engine_font_manager_text( "[[[[[[[[[[[[[[[[[[[[[[[[[[[[[", col - 1, row + 3 );
	row += 2;
	engine_font_manager_text( "[JUMP[[CATEGORIES[[ON[GROUND[", col - 1, row + 2 );
	row += 1;
	//engine_font_manager_text( "TYPE  DESCRIPTION ACTION", col, row + 0 );
	//engine_font_manager_text( "                              ", col- 1, row + 1 );
	engine_font_manager_text( "SKIP  SMALLEST   LEFT+FIRE1", col - 1, row + 2 );
	engine_font_manager_text( "JUMP  STANDARD   LEFT+FIRE2", col - 1, row + 4 );
	engine_font_manager_text( "                 OR   FIRE1", col - 1, row + 5 );
	engine_font_manager_text( "LEAP  SIZEABLE  RIGHT+FIRE1", col - 1, row + 7 );
	engine_font_manager_text( "                OR    FIRE2", col - 1, row + 8 );
	engine_font_manager_text( "HURL  COLOSSAL  RIGHT+FIRE2", col - 1, row + 10 );

	row += 13;
	engine_font_manager_text( "JUMP  ACTIVITIES  AIRBORNE!", col - 1, row + 1 );
	engine_font_manager_text( "SWAP  DIRECTION       FIRE1", col - 1, row + 2 );
	engine_font_manager_text( "FLIP  SOMERSAULT      FIRE2", col - 1, row + 3 );
	engine_font_manager_text( "BOBO", 10, 23 );
	devkit_SMS_displayOn();
}

void screen_intro_screen_update( unsigned char *screen_type )
{
	*screen_type = screen_type_intro;
}
