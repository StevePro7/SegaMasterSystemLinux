#include "diff_screen.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/graphics_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/tile_manager.h"
#include "../engine/util_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

static unsigned char player_loadY;

void screen_diff_screen_load()
{
		struct_player_object *po = &global_player_object;
		struct_level_object *lo = &global_level_object;
		struct_game_object *go = &global_game_object;

		// TODO delete this.
		engine_debug_manager_initgame();

		engine_level_manager_init( go->game_level );
		engine_player_manager_initX( go->game_difficulty );		// TODO rename


		devkit_SMS_displayOff();
		engine_asm_manager_clear_VRAM();
		engine_content_manager_bggame();
		engine_content_manager_sprite();

		engine_graphics_manager_title();
		engine_graphics_manager_sea();

		engine_level_manager_draw_point( go->game_point );
		engine_player_manager_loadX( go->game_point );

		player_loadY = level_platforms[ po->lookX ];
		engine_player_manager_loadY( player_loadY );

		engine_font_manager_text( ( unsigned char * ) locale_object_difficulty[ go->game_difficulty ], po->posnX / 8 - 2, player_loadY - 6 );
		engine_player_manager_draw();

		engine_util_manager_locale_texts( 5, 7, 5 );
		devkit_SMS_displayOn();

		engine_scroll_manager_load( go->game_point, lo->level_size );
}


void screen_diff_screen_update( unsigned char *screen_type )
{
	//struct_player_object *po = &global_player_object;

	engine_player_manager_draw();
	*screen_type = screen_type_diff;
}
