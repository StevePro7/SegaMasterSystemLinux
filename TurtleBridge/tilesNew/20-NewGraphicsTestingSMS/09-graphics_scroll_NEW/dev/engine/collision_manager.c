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

signed char engine_collision_manager_player( unsigned char lookX, unsigned char tileY )
{
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;


	unsigned char lookup_platform;
	unsigned char player_platform;		 // po->tileY
//	unsigned char lookX;
	signed char collisionTile;

	//player_platform = po->tileY;
	//lookX = po->lookX;
	player_platform = tileY;
	collisionTile = INVALID_NUMBER;
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

	// TODO delete
	devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
	engine_font_manager_data( collisionTile, 8, 6 );

	lookup_platform = level_platforms[ collisionTile ];
	engine_font_manager_data( lookup_platform, 8, 7 );
	if( lookup_platform == player_platform )
	{
		return collisionTile;
	}

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
	

	// TODO delete
	devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
	engine_font_manager_data( collisionTile, 8, 9 );

	lookup_platform = level_platforms[ collisionTile ];
	engine_font_manager_data( lookup_platform, 8, 10 );
	if( lookup_platform == player_platform )
	{
		
		return collisionTile;
	}
	
	return INVALID_NUMBER;
}


//else
//{
//	engine_font_manager_data( 0, 8, 12 );
//}

// TODO delete

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

//collision = 0;

//collisionTile += tileY;