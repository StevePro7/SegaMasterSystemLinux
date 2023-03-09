#include "begin_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/audio_manager.h"
#include "../engine/content_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"


void screen_begin_screen_load()
{
	engine_font_manager_text( "BEGIN SCREEN!!", 10, 2 );

	
}

void screen_begin_screen_update( unsigned char *screen_type )
{


	*screen_type = screen_type_begin;
}
