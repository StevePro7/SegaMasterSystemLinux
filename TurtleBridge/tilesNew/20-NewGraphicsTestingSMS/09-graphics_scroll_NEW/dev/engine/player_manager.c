#include "player_manager.h"
#include "sprite_manager.h"

// Global variable.
struct_player_object global_player_object;

static void updatePlayer();

void engine_player_manager_init()
{
	struct_player_object *po = &global_player_object;
	po->posnX = 64;
	po->posnY = 144;
	//po->frame = 4;
	//po->frame = 0;
	updatePlayer();
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