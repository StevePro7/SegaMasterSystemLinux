#include "start_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/collision_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/input_manager.h"
#include "../engine/maths_manager.h"
#include "../devkit/_sms_manager.h"

static unsigned char index;

//static const unsigned char level_tiles[] =
//{
//	0x03, 0x13, 0x23, 0x33, 0x43, 0x53, 0x63, 0x73, 0x47, 0x57, 0x67, 0x77, 0x00, 0x10, 0x20, 0x30,
//	0xB2, 0xA2, 0x92, 0x82, 0x00, 0x10, 0x20, 0x30, 0x00, 0x10, 0x20, 0x30, 0x00, 0x10, 0x20, 0x30,
//	0x04, 0x14, 0x24, 0x34, 0x04, 0x14, 0x24, 0x34, 0x04, 0x14, 0x24, 0x34, 0x04, 0x14, 0x24, 0x34,
//};

void screen_start_screen_load()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	//engine_graphics_manager_sea();
	engine_font_manager_text( "START", 10, 0 );
	devkit_SMS_displayOn();
	index = 0;
}

void screen_start_screen_update( unsigned char *screen_type )
{
	unsigned char collisionTile;

	engine_collision_manager_load( difficulty_type_insane );
	collisionTile = engine_collision_manager_player( 0, 10 );
	collisionTile = engine_collision_manager_player( 1, 11 );
	collisionTile = engine_collision_manager_player( 2, 12 );
	collisionTile = engine_collision_manager_player( 3, 13 );
	
	collisionTile = engine_collision_manager_player( 28, 20 );
	collisionTile = engine_collision_manager_player( 29, 21 );
	collisionTile = engine_collision_manager_player( 30, 22 );
	collisionTile = engine_collision_manager_player( 31, 23 );
	
	//unsigned char input;
	//unsigned char value;

	//unsigned char lower, upper;
	//lower = 0;
	//upper = 0;
	//input = engine_input_manager_hold( input_type_right );
	//if( input != 0 )
	//{
	//	value = level_tiles[ index ];
	//	engine_font_manager_data( index, 10, 10 );
	//	engine_font_manager_data( value, 20, 10 );

	//	engine_function_manager_convertByteToNibbles( value, &lower, &upper );
	//	engine_font_manager_data( lower, 10, 12 );
	//	engine_font_manager_data( upper, 20, 12);
	//	index++;
	//}

	*screen_type = screen_type_start;
}
