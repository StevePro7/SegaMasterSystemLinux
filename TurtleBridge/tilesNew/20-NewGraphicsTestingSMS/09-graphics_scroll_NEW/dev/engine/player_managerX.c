#include "player_managerX.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank2.h"

// Global variable.
struct_player_object global_player_object;

static void updatePlayer();
static void updatePlayerX();
static void updatePlayerY();

static signed char physics_array[] = { 0,-1,-1,-1,-1,-1,-1,-1,-1, -1, -1, -1, -1, -1, -1, -1, -1, -1,-1,-1,-1,-1,-1,-1,-1,-1,-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 0,0,0,0,0,0,0,0,1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, };


//static signed char physics_array[] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, };
// TODO - replace
static signed char animate_count;

//void engine_player_manager_starts( unsigned char index )
//{
//	struct_player_object *po = &global_player_object;
//	unsigned char px = player_object_starts[ index ];
//
//	po->posnX = px;
//	updatePlayerX();
//}


void engine_player_manager_update3()
{
	struct_player_object *po = &global_player_object;
	po->player_frame = 4;
}
void engine_player_manager_update2()
{
	struct_player_object *po = &global_player_object;
	animate_count++;
	if( animate_count >= 50 )
	{
		animate_count = 0;
		po->player_frame = 1 - po->player_frame;
	}
}
void engine_player_manager_update()
{
	// TODO inject via level manager!
	const unsigned char level_platform = 17;
	unsigned char tempY, tileY;
	signed char deltaY = 0;

	struct_player_object *po = &global_player_object;
	if( player_state_isonground == po->player_state )
	{
		//engine_font_manager_text( "PLAYER ON GROUND ", 5, 5 );
		return;
	}

	deltaY = physics_array[ po->jumper_index ];
	//engine_font_manager_data( po->jumper_index, 20, 0 );
	//engine_font_manager_data( deltaY, 30, 0 );

	if( deltaY > 0 )
	{
		//engine_font_manager_text( "PLAYER DOWN", 5, 0 );
		//engine_font_manager_data( po->posnY, 30, 1 );

		tempY = po->posnY + deltaY;
		tileY = tempY >> 3;

		//engine_font_manager_data( tempY, 30, 4 );
		//engine_font_manager_data( tileY, 30, 5 );

		if( tileY == level_platform )
		{
			po->posnY = tileY << 3;
			po->player_state = player_state_isonground;
			po->jumper_index = 0;
			updatePlayerY();

			//engine_font_manager_text( "PLAYER ON GROUND ", 5, 4 );
			//engine_font_manager_data( po->posnY, 30, 2 );
			return;
		}
		else
		{
			po->posnY = tempY;
			//po->jumper_index++;
			updatePlayer();

			//engine_font_manager_data( po->posnY, 30, 2 );
			return;
		}
	}
	else if( deltaY < 0 )
	{
		//engine_font_manager_text( "PLAYER -UP-", 5, 0 );
		//engine_font_manager_data( po->posnY, 30, 1 );

		tempY = po->posnY + deltaY;
		tileY = tempY >> 3;

		//engine_font_manager_data( tempY, 30, 4 );
		//engine_font_manager_data( tileY, 30, 5 );
		
		po->posnY = tempY;
		//po->jumper_index++;
		updatePlayer();

		//engine_font_manager_data( po->posnY, 30, 2 );
		return;
	}
	else
	{
		//engine_font_manager_text( "PLAYER APEX", 5, 0 );
		//engine_font_manager_data( po->posnY, 30, 1 );

		tempY = po->posnY + deltaY;		// NOP
		tileY = tempY >> 3;				// NOP

		//engine_font_manager_data( tempY, 30, 4 );
		//engine_font_manager_data( tileY, 30, 5 );

		po->posnY = tempY;				// NOP
		//po->jumper_index++;
		updatePlayer();					// NOP

		//engine_font_manager_data( po->posnY, 30, 2 );
		return;
	}
	
	////engine_font_manager_data( po->player_state, 10, 10 );
}

void engine_player_manager_left()
{
	struct_player_object *po = &global_player_object;
	po->posnX--;
	po->drawX = po->posnX - 16;
	updatePlayerX();
}

////TODO rename right() and down() functions
////void engine_player_manager_horz( unsigned char deltaX )
////void engine_player_manager_vert( unsigned char deltaX )
//
//void engine_player_manager_right( unsigned char deltaX )
//{
//	struct_player_object *po = &global_player_object;
//	po->posnX += deltaX;
//	updatePlayerX();
//	//po->tileX = po->posnX >> 3;
//
//	//// https://johnysswlab.com/make-your-programs-run-faster-avoid-expensive-instructions
//	////po->lookX = po->tileX % SCREEN_WIDE;
//	//po->lookX = po->tileX  & ( SCREEN_LESS_ONE );
//
//	////devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
//	//////engine_font_manager_data( delta, 12, 12 );
//	////engine_font_manager_data( po->posnX, 24, 16 );
//	////engine_font_manager_data( po->tileX, 24, 17 );
//}
//
//void engine_player_manager_down( unsigned char deltaY )
//{
//	struct_player_object *po = &global_player_object;
//	po->posnY += deltaY;
//	updatePlayerY();
//}

void engine_player_manager_up()
{
	struct_player_object *po = &global_player_object;
	po->posnY--;
	updatePlayerY();
}
void engine_player_manager_downX()
{
	struct_player_object *po = &global_player_object;
	po->posnY++;
	updatePlayerY();
}

static void updatePlayer()
{
	updatePlayerX();
	updatePlayerY();

	// TODO delete
	//struct_player_object *po = &global_player_object;
	//po->drawX = po->posnX - 16;
	//po->drawY = po->posnY - 32;
	//po->tileX = po->posnX >> 3;

	//// https://johnysswlab.com/make-your-programs-run-faster-avoid-expensive-instructions
	////po->lookX = po->tileX % SCREEN_WIDE;
	//po->lookX = po->tileX  & SCREEN_LESS_ONE;
	//po->tileY = po->posnY >> 3;
}

static void updatePlayerX()
{
	// https://johnysswlab.com/make-your-programs-run-faster-avoid-expensive-instructions
	struct_player_object *po = &global_player_object;
	po->tileX = po->posnX >> 3;
	po->lookX = po->tileX  & SCREEN_LESS_ONE;
}

static void updatePlayerY()
{
	struct_player_object *po = &global_player_object;
	po->drawY = po->posnY - 32;
	po->tileY = po->posnY >> 3;
	po->leapY = po->posnY << 8;
}
