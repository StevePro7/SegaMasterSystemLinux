#include "demo_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/global_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/tile_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

static unsigned int tmp;
//static void draw_tiles( unsigned int tmp );

void screen_demo_screen_load()
{
	// Draw individual turtle
	tmp = TILE_TURTLE_FLIP;
	devkit_SMS_displayOff();
	engine_graphics_manager_screen( CLEAR_TILE_BLUE );

	// Draw screen specific graphics.
	engine_font_manager_text( "DEMO SCREEN!!", 10, 0 );
	//draw_tiles( tmp );

	devkit_SMS_displayOn();
}

void screen_demo_screen_update( unsigned char *screen_type )
{
	

	*screen_type = screen_type_demo;
}
