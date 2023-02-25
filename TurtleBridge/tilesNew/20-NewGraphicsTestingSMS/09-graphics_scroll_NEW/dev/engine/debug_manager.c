#include "debug_manager.h"
#include "../engine/asm_manager.h"
#include "../engine/content_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"
#include <stdbool.h>

void engine_debug_manager_initgame()
{
	struct_player_object *po = &global_player_object;
	struct_game_object *go = &global_game_object;
	go->game_difficulty = difficulty_type_easier;
	//go->game_difficulty = difficulty_type_normal;
	//go->game_difficulty = difficulty_type_harder;
	//go->game_difficulty = difficulty_type_insane;
	go->game_world = 0;
	go->game_round = 0;
	go->game_level = 3;// 9;
	go->game_point = 0;
	//go->game_level = 8;	// turtles
//	go->game_level = 6;
	//go->game_level = 7;
	//go->game_level = 9;
	
	go->game_cloud = 88;		// TODO will be random
	go->game_isgod = false;
	//go->game_isgod = true;

	po->player_frame = 0;// player_frame_ground_left_01;
}

void engine_debug_manager_printout()
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	//unsigned char idx, tmp;

	//devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
	//for( idx = 0; idx < 16; idx++ )
	//{
	//	engine_font_manager_data( idx, 14, idx );
	//	engine_font_manager_data( level_platforms[ idx ], 18, idx );

	//	tmp = idx + 16;
	//	engine_font_manager_data( tmp, 25, idx );
	//	engine_font_manager_data( level_platforms[ tmp ], 30, idx );
	//}

	engine_font_manager_data( po->posnX, 10, 0 );
	engine_font_manager_data( po->tileX, 10, 1 );
	engine_font_manager_data( po->tileX, 20, 0 );
	engine_font_manager_data( po->lookX, 20, 1 );

	engine_font_manager_data( po->posnY, 10, 3 );
	engine_font_manager_data( po->tileY, 10, 4 );
	engine_font_manager_data( po->drawY, 10, 5 );
	engine_font_manager_data( po->player_state, 20, 3 );
	engine_font_manager_data( po->jumper_index, 20, 4 );
	engine_font_manager_data( po->deltaY_index, 20, 5 );
}

//void engine_debug_manager_printoutX()
//{
//	struct_player_object *po = &global_player_object;
//	struct_level_object *lo = &global_level_object;
//	unsigned char lookX;
//
//	devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
//	//engine_font_manager_data( po->tileX, 8, 0 );
//	engine_font_manager_data( po->posnX, 8, 0 );
//	//engine_font_manager_data( po->drawX, 24, 0 );
//	engine_font_manager_data( po->tileX, 16, 0 );
//	//engine_font_manager_data( po->lookX, 24, 0 );
//
//	lookX = po->lookX;
//	engine_font_manager_data( lookX - 2, 8, 2 );
//	engine_font_manager_data( lookX - 1, 8, 3 );
//	engine_font_manager_data( lookX + 0, 8, 4 );
//	engine_font_manager_data( lookX + 1, 8, 5 );
//	engine_font_manager_data( lookX + 2, 8, 6 );
//
//	engine_font_manager_data( level_platforms[ lookX - 2 ], 16, 2 );
//	engine_font_manager_data( level_platforms[ lookX - 1 ], 16, 3 );
//	engine_font_manager_data( level_platforms[ lookX + 0 ], 16, 4 );
//	engine_font_manager_data( level_platforms[ lookX + 1 ], 16, 5 );
//	engine_font_manager_data( level_platforms[ lookX + 2 ], 16, 6 );
//}


void engine_debug_manager_scrollout()
{
	struct_scroll_object *so = &global_scroll_object;
	devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
	engine_font_manager_data( so->scrollFinish, 8, 0 );
}


void engine_debug_manager_initcontent()
{
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	engine_content_manager_bggame();
	engine_content_manager_sprite();
	devkit_SMS_displayOn();

}