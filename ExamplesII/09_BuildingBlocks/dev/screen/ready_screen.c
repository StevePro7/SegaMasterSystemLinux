#include "ready_screen.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../engine/content_manager.h"
#include "../engine/enemy_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/gamer_manager.h"
#include "../engine/input_manager.h"
#include "../engine/sound_manager.h"
#include "../engine/text_manager.h"
#include <stdlib.h>

void screen_ready_screen_load()
{
	engine_text_manager_names();
	engine_gamer_manager_load();
	engine_enemy_manager_load();
}

void screen_ready_screen_update( unsigned char *screen_type )
{
	unsigned char input;

	engine_gamer_manager_draw();
	engine_enemy_manager_draw();

	rand();
	engine_gamer_manager_toggle_color();
	engine_enemy_manager_toggle_color();

	input = engine_input_manager_hold_fire2();
	if( input )
	{
		engine_sound_manager_play();
	}
	input = engine_input_manager_hold_fire1();
	if( input )
	{
		*screen_type = screen_type_play;
		return;
	}

	*screen_type = screen_type_ready;
}