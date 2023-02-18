#include "player_manager.h"
#include "enum_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "sprite_manager.h"
#include "../devkit/_sms_manager.h"
#include "../banks/fixedbank.h"
#include "../banks/bank2.h"

#define PLAYER_MIN_HIGH		32
#define PLAYER_MAX_HIGH		168

// Global variable.
struct_player_object global_player_object;

static void updatePlayer();
static void updatePlayerX();
static void updatePlayerY();

void engine_player_manager_init()
{
	struct_player_object *po = &global_player_object;
	po->initX = 0; po->posnX = 0; po->tileX = 0; po->lookX = 0;
	//po->initY = 0; po->posnY = 0; po->tileY = 0; po->leapY = 0;
	po->posnY = 0; po->tileY = 0; po->leapY = 0;
	po->drawX = 0; po->drawY = 0;
	po->player_state = player_state_isonground;
	po->player_index = 0; po->player_frame = 0;
	po->player_count = 0;
	updatePlayer();
}

void engine_player_manager_initX( unsigned char difficulty )
{
	struct_player_object *po = &global_player_object;
	//devkit_SMS_mapROMBank( FIXED_BANK );
	po->initX = player_object_starts[ difficulty ];
	po->posnX = po->initX;
	po->drawX = po->posnX - 16;
	updatePlayerX();
}

// TODO - need algorithm to align which individual screen to a checkpoint
void engine_player_manager_loadX( unsigned char checkPoint )
{
	struct_player_object *po = &global_player_object;
	unsigned int offset;
	unsigned char screen;

	screen = checkPoint;
	offset = screen * PIXELS_WIDE;
	po->posnX = po->initX + offset;
	updatePlayerX();
}

void engine_player_manager_loadY( unsigned char player_loadY )
{
	struct_player_object *po = &global_player_object;
	po->player_state = player_state_isonground;

	// Check for starting point without platform.
	if( 0 == player_loadY )
	{
		po->player_state = player_state_isintheair;
		po->posnY = PLAYER_MIN_HIGH;
	}
	else
	{
		po->posnY = player_loadY << 3;
	}
	
	//po->initY = po->posnY;		// TODO - don't think I need this
	updatePlayerY();
}

unsigned char engine_player_manager_get_deltaX( unsigned char state, unsigned char command )
{
	unsigned char deltaX;

	deltaX = 0;
	//deltaX = 2;
	if( ( COMMAND_LEFT_MASK & command ) == COMMAND_LEFT_MASK )
	{
		deltaX = 1;
	}
	if( ( COMMAND_RGHT_MASK & command ) == COMMAND_RGHT_MASK )
	{
		deltaX = 3;
	}

	// Add 1px when player in the air.
	if( player_state_isintheair == state )
	{
		deltaX += 1;
	}

	return deltaX;
}

engine_player_manager_set_action( unsigned char state, unsigned char command )
{
	struct_player_object *po = &global_player_object;
	unsigned char index;

	// Player on ground.
	if( ( COMMAND_JUMP_MASK & command ) == COMMAND_JUMP_MASK )
	{
		po->player_state = player_state_isintheair;
		po->player_index = 0;
		po->player_frame = 4;
		index = 0;
		// determine jump index
		if( ( COMMAND_HIGH_MASK & command ) == COMMAND_HIGH_MASK )
		{
			index += 1;
		}

		//ptr = jump_array_ptr[ indexZ ];
		//len = jump_array_len[ indexZ ];
		//data = ptr[ valueX ];
	}
	else
	{
		// Player in the air.
		if( ( COMMAND_SWAP_MASK & command ) == COMMAND_SWAP_MASK )
		{
			//demo_screen
			//swap_player_frame();
		}
		if( ( COMMAND_FLIP_MASK & command ) == COMMAND_FLIP_MASK )
		{
			//demo_screen
			//but use command to determine LEFT || RGHT for Flip.
			//flip_player_frame(command);
		}
	}
}

//TODO rename right() and down() functions
//void engine_player_manager_horz( unsigned char deltaX )
//void engine_player_manager_vert( unsigned char deltaY )

void engine_player_manager_right( unsigned char deltaX )
{
	struct_player_object *po = &global_player_object;
	po->posnX += deltaX;
	updatePlayerX();
}

void engine_player_manager_down( unsigned char deltaY )
{
	struct_player_object *po = &global_player_object;
	po->posnY += deltaY;
	updatePlayerY();
}

static void updatePlayer()
{
	updatePlayerX();
	updatePlayerY();
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

void engine_player_manager_pass()
{
	struct_player_object *po = &global_player_object;
	po->posnX++;
	updatePlayer();
}
void engine_player_manager_count()
{
	struct_player_object *po = &global_player_object;
	po->player_count++;
	if( po->player_count > 25 )
	{
		po->player_count = 0;
		po->player_frame = 1 - po->player_frame;
	}
}
void engine_player_manager_draw()
{
	struct_player_object *po = &global_player_object;
	engine_sprite_manager_draw( po->player_frame, po->drawX, po->drawY );
}