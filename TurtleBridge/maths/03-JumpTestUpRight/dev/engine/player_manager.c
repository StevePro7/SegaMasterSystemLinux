#include "player_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "sprite_manager.h"

// Global variable.
struct_player_object global_player_object;

#define MAX_VELOCITY_X	5
#define MAX_VELOCITY_Y	17
#define MAX_GRAVITY_ZZ	8

static unsigned char velocityXgnd[ MAX_VELOCITY_X ] = { 1, 1, 1, 2, 2 };
static unsigned char velocityXair[ MAX_VELOCITY_X ] = { 1, 2, 2, 2, 3 };

static unsigned int velocityY[ MAX_VELOCITY_Y ] = { 2958, 2347, 1960, 1673, 1441, 1247, 1079, 930, 796, 675, 564, 461, 365, 276, 191, 112, 36 };
static unsigned int gravityZZ[ MAX_GRAVITY_ZZ ] = { 348, 522, 696, 870, 1044, 1219, 1393, 1408 };

void engine_player_manager_init()
{
	struct_player_object *po = &global_player_object;
	po->posnX = 16;
	po->posnY = 160;
	po->valuY = po->posnY << 8;
	po->currY = po->valuY;
	//po->posnY = 32;

	po->drawX = po->posnX;
	po->drawY = po->posnY - 32;

	engine_font_manager_draw_data( po->drawY, 20, 0 );
	engine_font_manager_draw_data( po->posnY, 20, 1 );
	engine_font_manager_draw_data( po->currY, 20, 2 );
	engine_font_manager_draw_data( po->valuY, 20, 3 );
}

void engine_player_manager_jumping()
{

}

void engine_player_manager_update()
{
	struct_player_object *po = &global_player_object;
	po->posnY--;
	po->drawY = po->posnY - 32;

	engine_font_manager_draw_data( po->posnY, 20, 1 );
	engine_font_manager_draw_data( po->drawY, 20, 2 );
}

void engine_player_manager_update2()
{
	struct_player_object *po = &global_player_object;
	po->posnY++;
	po->drawY = po->posnY - 32;

	engine_font_manager_draw_data( po->posnY, 20, 1 );
	engine_font_manager_draw_data( po->drawY, 20, 2 );
}

void engine_player_manager_draw()
{
	struct_player_object *po = &global_player_object;

	// If Player jumps though "ceiling" then don't draw!
	if( po->posnY <= 0 || po->drawY >= PIXLES_HIGH )
	{
		return;
	}

	engine_sprite_manager_draw( po->drawX, po->drawY, SPRITE_TILES );
}