#include "player_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "sprite_manager.h"

// Global variable.
struct_player_object global_player_object;

static void updatePlayer();

//static signed char physics_array[] = { -1, -1, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, };
static signed char physics_array[] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, };

void engine_player_manager_init()
{
	struct_player_object *po = &global_player_object;
	po->posnX = 80;
//	po->posnX = 168;
	//po->posnY = 112;
	//po->posnY = 144;
	po->posnY = 141;
	//po->frame = 4;
	//po->frame = 0;
	//po->player_state = player_state_isonground;
	po->player_state = player_state_isintheair;
	//po->player_state = player_state_isonground;
	po->player_index = 0;
	updatePlayer();
}

void engine_player_manager_load()
{
	struct_player_object *po = &global_player_object;
	engine_font_manager_data( po->posnY, 30, 2 );
	//engine_font_manager_data( po->posnY, 30, 2 );
	engine_font_manager_data( po->tileY, 30, 4 );

	if( player_state_isonground == po->player_state )
	{
		engine_font_manager_text( "PLAYER ON GROUND ", 5, 4 );
	}
	else if( player_state_isintheair == po->player_state )
	{
		engine_font_manager_text( "PLAYER IN THE AIR", 5, 4 );
	}
}

void engine_player_manager_update()
{
	// TODO inject via level manager!
	const unsigned char level_platform = 18;
	unsigned char tempY, tileY;
	signed char deltaY = 0;

	struct_player_object *po = &global_player_object;
	if( player_state_isonground == po->player_state )
	{
		engine_font_manager_text( "PLAYER ON GROUND ", 5, 5 );
		return;
	}

	deltaY = physics_array[ po->player_index ];
	engine_font_manager_data( po->player_index, 20, 0 );
	engine_font_manager_data( deltaY, 30, 0 );

	if( deltaY > 0 )
	{
		engine_font_manager_text( "PLAYER DOWN", 5, 0 );
		engine_font_manager_data( po->posnY, 30, 1 );

		tempY = po->posnY + deltaY;
		tileY = tempY >> 3;

		engine_font_manager_data( tempY, 30, 4 );
		engine_font_manager_data( tileY, 30, 5 );

		if( tileY == level_platform )
		{
			po->posnY = tileY << 3;
			po->player_state = player_state_isonground;
			po->player_index = 0;
			updatePlayer();

			engine_font_manager_text( "PLAYER ON GROUND ", 5, 4 );
			return;
		}
		else
		{
			po->posnY = tempY;
			po->player_index++;
			updatePlayer();

			engine_font_manager_data( po->posnY, 30, 2 );
			return;
		}
	}
	else if( deltaY < 0 )
	{
		engine_font_manager_text( "PLAYER -UP-", 5, 0 );
		engine_font_manager_data( po->posnY, 30, 1 );

		tempY = po->posnY + deltaY;
		tileY = tempY >> 3;

		engine_font_manager_data( tempY, 30, 4 );
		engine_font_manager_data( tileY, 30, 5 );
		
		po->posnY = tempY;
		po->player_index++;
		updatePlayer();

		engine_font_manager_data( po->posnY, 30, 2 );
		return;
	}
	else
	{
		engine_font_manager_text( "PLAYER APEX", 5, 0 );
		engine_font_manager_data( po->posnY, 30, 1 );

		tempY = po->posnY + deltaY;		// NOP
		tileY = tempY >> 3;				// NOP

		engine_font_manager_data( tempY, 30, 4 );
		engine_font_manager_data( tileY, 30, 5 );

		po->posnY = tempY;				// NOP
		po->player_index++;
		updatePlayer();					// NOP

		engine_font_manager_data( po->posnY, 30, 2 );
		return;
	}
	
	//engine_font_manager_data( po->player_state, 10, 10 );
}

void engine_player_manager_left()
{
	struct_player_object *po = &global_player_object;
	po->posnX--;
	updatePlayer();
}

void engine_player_manager_right()
{
	struct_player_object *po = &global_player_object;
	po->posnX++;
	updatePlayer();
}

void engine_player_manager_up()
{
	struct_player_object *po = &global_player_object;
	po->posnY--;
	updatePlayer();
}
void engine_player_manager_down()
{
	struct_player_object *po = &global_player_object;
	po->posnY++;
	updatePlayer();
}

static void updatePlayer()
{
	struct_player_object *po = &global_player_object;
	po->drawX = po->posnX - 16;
	po->drawY = po->posnY - 32;
	po->tileX = po->posnX >> 3;
	po->tileY = po->posnY >> 3;
}

void engine_player_manager_draw()
{
	struct_player_object *po = &global_player_object;
	engine_sprite_manager_draw( 0, po->drawX, po->drawY );
}