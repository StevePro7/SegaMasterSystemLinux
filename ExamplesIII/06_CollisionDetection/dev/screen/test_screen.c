#include "test_screen.h"
#include "../devkit/_sms_manager.h"
#include "../engine/enemy_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/gamer_manager.h"
#include "../engine/input_manager.h"
#include "../engine/locale_manager.h"
#include <stdbool.h>

void screen_test_screen_load()
{
	engine_font_manager_draw_text( LOCALE_BLANK, 10, 11 );
	engine_font_manager_draw_text( LOCALE_BLANK, 10, 12 );
	engine_font_manager_draw_text( LOCALE_STATUS, 4, 21 );

	engine_gamer_manager_load();
	engine_enemy_manager_load();
}

void screen_test_screen_update( unsigned char *screen_type )
{
	bool collide = false;
	unsigned char input;

	engine_gamer_manager_update();
	engine_gamer_manager_draw();
	engine_enemy_manager_draw();

	collide = devkit_isCollisionDetected();
	engine_font_manager_draw_data( collide, 23, 21 );

	input = engine_input_manager_hold_fire2();
	if ( input )
	{
		*screen_type = screen_type_load;
		return;
	}

	*screen_type = screen_type_test;
}