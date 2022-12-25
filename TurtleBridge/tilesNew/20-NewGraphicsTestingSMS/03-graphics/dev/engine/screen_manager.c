#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "jump_manager.h"
#include "sprite_manager.h"
#include "storage_manager.h"
#include "tile_manager.h"
#include "../devkit/_sms_manager.h"

static unsigned char frame;
static unsigned int index;
static unsigned char jumps;
static unsigned int delta;
static unsigned char posY;
static unsigned int posY2;
static unsigned char scrollX, scrollY;
static unsigned char storage_available;

static unsigned int tmp;

void engine_screen_manager_init()
{
	//unsigned char index;
	//unsigned char loop;

	//engine_font_manager_draw_text( "HELLO WORLD", 10, 0 );
	//engine_font_manager_draw_data( 1234, 10, 2 );
	//engine_font_manager_draw_data( 5678, 10, 3 );
	//engine_font_manager_draw_data( 90, 10, 4 );
	//engine_font_manager_draw_text( "!\"#$%^&*()?<>_;:'=,./[]\\",5, 10 );

	tmp = 128;
	engine_tile_manager_gfx2(tmp);
}

void engine_screen_manager_update()
{
	//struct_jump_object *jo = &global_jump_object;
	unsigned char input;

	input = engine_input_manager_hold_left();
	if( input )
	{
		tmp -= 2;
		engine_tile_manager_gfx2( tmp );
	}
	input = engine_input_manager_hold_right();
	if( input )
	{
		tmp += 2;
		engine_tile_manager_gfx2( tmp );
	}
}
