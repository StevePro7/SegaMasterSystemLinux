#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "sprite_manager.h"

void engine_screen_manager_init()
{
}

void engine_screen_manager_update()
{
	engine_sprite_manager_fish( 155, 48, 0 );
	engine_sprite_manager_draw( 128, 48, 10 );
	engine_sprite_manager_draw( 48, 96, 12 );
}

