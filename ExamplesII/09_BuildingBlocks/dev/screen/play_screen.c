#include "play_screen.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/enemy_manager.h"
#include "../engine/gamer_manager.h"
#include "../engine/input_manager.h"
#include "../engine/path_manager.h"
#include "../engine/sound_manager.h"
#include "../engine/text_manager.h"

void screen_play_screen_load()
{
	struct_gamer_object *go = &global_gamer_object;
	struct_path_object *po = &global_path_object;
	unsigned char direction;

	engine_text_manager_space();
	engine_music_manager_play();

	direction = po->gamer_route[ go->pathIndex ][ go->moveFrame ];
	engine_gamer_manager_setdirection( direction );
	engine_gamer_manager_setlifecycle();
}

void screen_play_screen_update( unsigned char *screen_type )
{
	struct_gamer_object *go = &global_gamer_object;
	struct_path_object *po = &global_path_object;

	unsigned char direction;
	unsigned char input;

	engine_gamer_manager_draw();
	engine_enemy_manager_draw();
	
	if( lifecycle_idle == go->lifecycle )
	{
		engine_gamer_manager_incmovements();
		if( go->moveFrame >= GAMER_MAX_FRAME )
		{
			*screen_type = screen_type_ready;
			return;
		}

		direction = po->gamer_route[ go->pathIndex ][ go->moveFrame ];
		engine_gamer_manager_setdirection( direction );
		engine_gamer_manager_setlifecycle();
	}

	engine_gamer_manager_update();

	engine_gamer_manager_toggle_color();
	engine_enemy_manager_toggle_color();
	engine_enemy_manager_toggle_frame();

	input = engine_input_manager_hold_fire2();
	if( input )
	{
		engine_sound_manager_play();
	}

	*screen_type = screen_type_play;
}