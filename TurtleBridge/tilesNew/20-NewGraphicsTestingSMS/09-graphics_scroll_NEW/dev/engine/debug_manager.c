#include "debug_manager.h"
#include "../engine/font_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"

void engine_debug_manager_scrollout()
{
	struct_scroll_object *so = &global_scroll_object;
	devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
	engine_font_manager_data( so->scroll_complete, 8, 0 );
}

void engine_debug_manager_printout()
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;

	devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
	//engine_font_manager_data( po->tileX, 8, 0 );
	engine_font_manager_data( po->posnX, 16, 0 );
	//engine_font_manager_data( po->drawX, 24, 0 );
	engine_font_manager_data( po->tileX, 24, 0 );

	engine_font_manager_data( po->tileX - 2, 8, 2 );
	engine_font_manager_data( po->tileX - 1, 8, 3 );
	engine_font_manager_data( po->tileX + 0, 8, 4 );
	engine_font_manager_data( po->tileX + 1, 8, 5 );
	engine_font_manager_data( po->tileX + 2, 8, 6 );

	engine_font_manager_data( level_platforms[ po->tileX - 2 ], 16, 2 );
	engine_font_manager_data( level_platforms[ po->tileX - 1 ], 16, 3 );
	engine_font_manager_data( level_platforms[ po->tileX + 0 ], 16, 4 );
	engine_font_manager_data( level_platforms[ po->tileX + 1 ], 16, 5 );
	engine_font_manager_data( level_platforms[ po->tileX + 2 ], 16, 6 );

//	engine_font_manager_data( lo->level_platforms[ po->tileX - 2 ], 16, 2 );
//	engine_font_manager_data( lo->level_platforms[ po->tileX - 1 ], 16, 3 );
	//engine_font_manager_data( lo->level_platforms[ po->tileX + 0 ], 16, 4 );
	//engine_font_manager_data( lo->level_platforms[ po->tileX + 1 ], 16, 5 );
	//engine_font_manager_data( lo->level_platforms[ po->tileX + 2 ], 16, 6 );
}