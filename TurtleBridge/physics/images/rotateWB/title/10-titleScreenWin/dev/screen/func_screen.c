#include "func_screen.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/sprite_manager.h"
#include "../devkit/_sms_manager.h"

static unsigned char index;

void screen_func_screen_load()
{
	engine_font_manager_draw_text( "FUNC SCREEN", 10, 2 );
	//devkit_SMS_setSpriteMode( devkit_SPRITEMODE_ZOOMED() );
	devkit_SMS_setSpriteMode( devkit_SPRITEMODE_NORMAL() );
	index = 0;

}

void screen_func_screen_update( unsigned char *screen_type )
{
	unsigned char input;
	input = engine_input_manager_hold_left();
	if ( input )
	{
		index--;
	}
	input = engine_input_manager_hold_right();
	if ( input )
	{
		index++;
	}
	//engine_sprite_manager_draw_player( index, sprite_mode_zoomed, 96, 96 );
	engine_sprite_manager_draw_player( index, sprite_mode_normai, 96, 96 );
	*screen_type = screen_type_func;
}
