#include "collision_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "level_manager.h"
#include "player_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/bank2.h"
#include <stdbool.h>

#define COLLISION_MIN_PLUS_NIL		0						// 00
#define COLLISION_MIN_PLUS_ONE		1						// 01
#define COLLISION_MAX_LESS_ONE		SCREEN_WIDE - 1			// 31
#define COLLISION_MAX_LESS_TWO		SCREEN_WIDE - 2			// 30

static unsigned char collisionDelta;
static unsigned char collisionRange;
static bool moreForgiving;

void engine_collision_manager_load( unsigned char difficulty )
{
	collisionDelta = 1;
	moreForgiving = false;
	if( difficulty_type_easier == difficulty || difficulty_type_normal == difficulty )
	{
		collisionDelta = 2;
		moreForgiving = true;
	}

	collisionRange = SCREEN_WIDE - collisionDelta;
}

void engine_collision_manager_player()
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;

	unsigned char collisionTile;
	//unsigned char lookup_platform;
	unsigned char player_platform;
	unsigned char lookX;

	player_platform = po->tileY;
	lookX = po->lookX;

	// Check collision right side of player.
	//if( ( 31 == lookX ) || ( 30 == lookX && moreForgiving ) )
	if( ( COLLISION_MAX_LESS_ONE == lookX ) || ( COLLISION_MAX_LESS_TWO == lookX && moreForgiving ) )
	{
		collisionTile = lookX - collisionRange;
	}
	else
	{
		collisionTile = lookX + collisionDelta;
	}


	// Check collision left side of player.
	//if( ( 0 == lookX ) || ( 1 == lookX && moreForgiving ) )
	if( ( COLLISION_MIN_PLUS_NIL == lookX ) || ( COLLISION_MIN_PLUS_ONE ==lookX && moreForgiving ) )
	{
		collisionTile = lookX + collisionRange;
	}
	else
	{
		collisionTile = lookX - collisionDelta;
	}

	//if( ( COLLISION_TEST_LEFT_TWO == lookX ) || ( COLLISION_TEST_LEFT_ONE == lookX && moreForgiving ) )
	//{
	//	collisionTile = lookX + COLLISION_TEST_RGHT_TWO;
	//}
	//else
	//{
	//	collisionTile = lookX - collisionDelta;
	//}

	//lookup_platform = level_platforms[ collisionTile ];
	//if( lookup_platform == player_platform )
	//{
	//	return lookup_platform;
	//}


	//lookup_platform = level_platforms[ collisionTile ];
	//if( lookup_platform == player_platform )
	//{
	//	return lookup_platform;
	//}

	// 
	devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
	//engine_font_manager_data( COLLISION_TEST_RGHT_TWO, 12, 12 );
	//collision = 0;
}
