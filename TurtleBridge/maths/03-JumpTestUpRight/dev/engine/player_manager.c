#include "player_manager.h"
#include "font_manager.h"
#include "function_manager.h"
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

static void coord();
static void print();

static unsigned char platform = 160;

void engine_player_manager_init()
{
	struct_player_object *po = &global_player_object;
	po->posnX = 16;
	po->posnY = platform;
	po->prevY = po->posnY;
	po->valuY = po->posnY << 8;
	po->currY = po->valuY;
	//po->posnY = 32;

	coord();

	po->dataX = 0;
	po->dataY = 0;
	po->state = 0;

	print();
}

void engine_player_manager_jumping()
{
	struct_player_object *po = &global_player_object;
	unsigned char deltaX;
	unsigned int deltaY;

	if( 0 == po->state )
	{
		deltaX = velocityXair[ po->dataX ];
		po->posnX += deltaX;
		po->totalX += deltaX;

		deltaY = velocityY[ po->dataY ];
		po->currY -= deltaY;
		
		po->valuY = po->currY;
		po->posnY = UFIX( po->valuY );
		po->totalY += ( po->prevY - po->posnY );
		po->prevY = po->posnY;

		po->dataX++;
		if( po->dataX >= MAX_VELOCITY_X )
		{
			po->dataX = MAX_VELOCITY_X - 1;
		}

		po->dataY++;
		if( po->dataY >= MAX_VELOCITY_Y )
		{
			po->state = 1;
			po->dataY = 0;
		}
	}
	else if( 1 == po->state )
	{
		deltaX = velocityXair[ po->dataX ];
		po->posnX += deltaX;
		po->totalX += deltaX;

		deltaY = gravityZZ[ po->dataY ];
		po->currY += deltaY;

		po->valuY = po->currY;
		po->posnY = UFIX( po->valuY );
		po->totalY += ( po->posnY - po->prevY );
		po->prevY = po->posnY;

		po->dataX++;
		if( po->dataX >= MAX_VELOCITY_X )
		{
			po->dataX = MAX_VELOCITY_X - 1;
		}

		po->dataY++;
		if( po->dataY >= MAX_GRAVITY_ZZ )
		{
			po->dataY = MAX_GRAVITY_ZZ - 1;
		}

		if( po->posnY >= platform )
		{
			po->posnY = platform;
			po->valuY = po->posnY << 8;
			po->currY = po->valuY;
			po->state = 2;// 0;
			po->dataX = 0;
			po->dataY = 0;
		}
	}

	coord();
	print();
}

void engine_player_manager_update()
{
	struct_player_object *po = &global_player_object;
	po->posnY--;
	po->drawY = po->posnY - 32;

	print();
}

void engine_player_manager_update2()
{
	struct_player_object *po = &global_player_object;
	po->posnY++;
	po->drawY = po->posnY - 32;

	print();
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

static void coord()
{
	struct_player_object *po = &global_player_object;
	po->drawX = po->posnX;
	po->drawY = po->posnY - 32;
}

static void print()
{
	struct_player_object *po = &global_player_object;
	engine_font_manager_draw_data( po->drawY, 20, 0 );
	engine_font_manager_draw_data( po->posnY, 20, 1 );	engine_font_manager_draw_data( po->posnX, 10, 1 );
	engine_font_manager_draw_data( po->currY, 20, 2 );
	engine_font_manager_draw_data( po->valuY, 20, 3 );
	engine_font_manager_draw_data( po->totalY, 20, 4 );	engine_font_manager_draw_data( po->totalX, 10, 4 );
}