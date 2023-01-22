#include "player_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "sprite_manager.h"

// Global variable.
struct_player_object global_player_object;

static void updatePlayer();

static signed char physics_array[] = { 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, };

void engine_player_manager_init()
{
	struct_player_object *po = &global_player_object;
	po->posnX = 80;
//	po->posnX = 168;
	//po->posnY = 112;
	po->posnY = 144;
	//po->frame = 4;
	//po->frame = 0;
	po->player_state = player_state_isonground;
	updatePlayer();
}

void engine_player_manager_update()
{
	struct_player_object *po = &global_player_object;
	engine_font_manager_data( po->player_state, 10, 10 );
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