#include "player_manager.h"
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

void engine_player_manager_starts(unsigned char index)
{
	struct_player_object *po = &global_player_object;
	
	unsigned char px = player_object_starts[index];

	po->posnX = px;
	updatePlayerX();
}

void engine_player_manager_init()
{
	struct_player_object *po = &global_player_object;
	po->posnX = 80;
	po->initX = 80; 
	po->lookX = 0;
	//po->posnX = 32;
	//po->posnX = 96;
	//po->posnX = 168;
	po->posnY = 128;
	
	//po->posnY = 128;
	//po->posnY = 132;
	//po->frame = 4;
	//po->frame = 0;
	po->player_state = player_state_isonground;
	//po->player_state = player_state_isintheair;
	po->player_index = 0;
	po->player_frame = 0;
	//po->player_count = 0;		// todo delete
	animate_count = 0;
	updatePlayer();
}

void engine_player_manager_initX( unsigned char difficulty )
{
	struct_player_object *po = &global_player_object;
	devkit_SMS_mapROMBank( FIXED_BANK );
	po->initX = player_object_starts[ difficulty ];

	// TODO delete
	//po->initX = 102;
	//po->initX = 224;
	// TODO delete

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
	po->posnY = player_loadY << 3;
	po->initY = po->posnY;
	updatePlayerY();
}

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

	deltaY = physics_array[ po->player_index ];
	//engine_font_manager_data( po->player_index, 20, 0 );
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
			po->player_index = 0;
			updatePlayerY();

			//engine_font_manager_text( "PLAYER ON GROUND ", 5, 4 );
			//engine_font_manager_data( po->posnY, 30, 2 );
			return;
		}
		else
		{
			po->posnY = tempY;
			//po->player_index++;
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
		//po->player_index++;
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
		//po->player_index++;
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

//TODO rename right() and down() functions
//void engine_player_manager_horz( unsigned char deltaX )
//void engine_player_manager_vert( unsigned char deltaX )

void engine_player_manager_right( unsigned char deltaX )
{
	struct_player_object *po = &global_player_object;
	po->posnX += deltaX;
	updatePlayerX();
	//po->tileX = po->posnX >> 3;

	//// https://johnysswlab.com/make-your-programs-run-faster-avoid-expensive-instructions
	////po->lookX = po->tileX % SCREEN_WIDE;
	//po->lookX = po->tileX  & ( SCREEN_LESS_ONE );

	////devkit_SMS_mapROMBank( bggame_tiles__tiles__psgcompr_bank );
	//////engine_font_manager_data( delta, 12, 12 );
	////engine_font_manager_data( po->posnX, 24, 16 );
	////engine_font_manager_data( po->tileX, 24, 17 );
}

void engine_player_manager_down( unsigned char deltaY )
{
	struct_player_object *po = &global_player_object;
	po->posnY += deltaY;
	updatePlayerY();
}

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

	// TODO delete
	engine_sprite_manager_draw( 2, po->drawX+32, po->initY - 32 - 46);
}