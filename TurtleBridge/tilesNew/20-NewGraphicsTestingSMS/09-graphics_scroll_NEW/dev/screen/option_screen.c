#include "option_screen.h"
#include "../engine/collision_manager.h"
#include "../engine/debug_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/game_manager.h"
#include "../engine/global_manager.h"
#include "../engine/input_manager.h"
#include "../engine/level_manager.h"
#include "../engine/player_manager.h"
#include "../engine/scroll_manager.h"
#include "../engine/timer_manager.h"
#include <stdlib.h>

static const signed int *ptr;
static signed char indexZ;
static unsigned char valueX;
static unsigned char len;

static void reset();

void screen_option_screen_load()
{
	//engine_font_manager_text( "OPTION SCREEN", 10, 0 );
	engine_player_manager_draw();
	engine_debug_manager_printout();
	reset();
}

void screen_option_screen_update( unsigned char *screen_type )
{
	struct_scroll_object *so = &global_scroll_object;
	struct_player_object *po = &global_player_object;
	struct_level_object *lo = &global_level_object;
	struct_game_object *go = &global_game_object;
	unsigned char input;
	unsigned char deltaX;
	signed char deltaY;	//gravity;
	unsigned char loops;
	signed char collision;
	
	enum_scroll_state scroll_state;
	//signed int data;

	deltaX = 0;
	input = engine_input_manager_move( input_type_right );
	if( input )
	{
		if( player_state_isonground == po->player_state )
		{
			deltaX = 1;
		}
		else if( player_state_isintheair == po->player_state )
		{
			deltaX = 2;
		}
	}

	if( player_state_isonground == po->player_state )
	{
		input = engine_input_manager_move( input_type_fire1 );
		if( input )
		{
			po->player_state = player_state_isintheair;
			po->player_index = 0;
			po->player_frame = 4;
			engine_font_manager_text( "JUMP", 8, 8 );

			indexZ = 1;
			valueX = 0;
			ptr = jump_array_ptr[ indexZ ];
			len = jump_array_len[ indexZ ];
			//data = ptr[ valueX ];
		}
	}

	if( 0 == deltaX )
	{
		deltaX = 0;
		engine_scroll_manager_update( deltaX );
	}


	if( deltaX > 0 )
	{
		for( loops = 0; loops < deltaX; loops++ )
		{
			scroll_state = engine_scroll_manager_update( 1 );
			if( scroll_state_tile == scroll_state )
			{
				engine_level_manager_draw_column( so->scrollColumn );
			}
		}

		if( player_state_isonground == po->player_state )
		{
			engine_player_manager_right( deltaX );

			// Edge case where player is invincible and walking on water then do not perform gravity test!
			if( po->posnY >= 168 && go->game_isgod )
			{
				po->posnY = 168;
			}
			else
			{
				collision = engine_collision_manager_player( po->lookX, po->tileY );
				if( INVALID_INDEX == collision )
				{
					po->player_state = player_state_isintheair;
					po->player_index = 0;
					po->player_frame = 4;
					engine_font_manager_text( "FALL", 8, 8 );

					indexZ = 0;
					valueX = 0;
					ptr = jump_array_ptr[ indexZ ];
					len = jump_array_len[ indexZ ];
					//data = ptr[ valueX ];
				}
			}
		}
		else if( player_state_isintheair == po->player_state )
		{
			engine_player_manager_right( deltaX );
			deltaY = ptr[ po->player_index ];
			//deltaY = data[ po->player_index ];
			engine_player_manager_down( deltaY );

			// TODO
			if( deltaY < 0 )
			{
				// cap high jump so not thru screen
				if( po->posnY < 32 )
				{
					// TODO updatePlayerY()
					po->posnY = 32;
					po->drawY = po->posnY - 32;
					po->tileY = po->posnY >> 3;
				}
			}

			if( deltaY > 0 )
			{
				collision = engine_collision_manager_player( po->lookX, po->tileY );
				if( INVALID_INDEX != collision )
				{
					po->player_state = player_state_isonground;
					po->posnY = po->tileY << 3;
					po->drawY = po->posnY - 32;
					po->player_index = 0;
					po->player_frame = 0;
					engine_font_manager_text( "LAND", 8, 8 );
				}
				else
				{
					//engine_font_manager_text( "    ", 8, 8 );
					if( po->posnY >= 168 )
					{
						po->posnY = 168;
						if( go->game_isgod )
						{
							po->player_state = player_state_isonground;
							po->player_index = 0;
							po->player_frame = 0;
						}
						else
						{
							engine_scroll_manager_update( 0 );
							//engine_font_manager_text( "SPLAT", 20, 20 );
							*screen_type = screen_type_over;
							return;
						}
					}
				}
			}

			if( player_state_isintheair == po->player_state )
			{
				if( po->player_index < len - 1 )
				{
					po->player_index++;
				}
			}
		}
	}

	//
	//signed int data;

	//data = 0;
	//deltaX = 0;
	//if( INVALID_INDEX == index )
	//{
	//	input = engine_input_manager_move( input_type_left );
	//	if( input )
	//	{
	//		index = 0;
	//		value = 0;
	//		ptr = jump_array_ptr[ index ];
	//		len = jump_array_len[ index ];
	//		data = ptr[ value ];
	//	}

	//	input = engine_input_manager_move( input_type_right );
	//	if( input )
	//	{
	//		index = 1;
	//		value = 0;
	//		ptr = jump_array_ptr[ index ];
	//		len = jump_array_len[ index ];
	//		data = ptr[ value ];
	//	}

	//	engine_font_manager_data( index, 10, 2 );
	//	engine_font_manager_data( value, 10, 3 );
	//	engine_font_manager_data( len, 10, 4 );
	//	engine_font_manager_data( data, 10, 5 );
	//}
	//else
	//{
	//	input = engine_input_manager_move( input_type_fire1 );
	//	if( input )
	//	{
	//		if( value < len - 1 )
	//		{
	//			value++;
	//			data = ptr[ value ];

	//			engine_font_manager_data( index, 10, 2 );
	//			engine_font_manager_data( value, 10, 3 );
	//			engine_font_manager_data( len, 10, 4 );
	//			engine_font_manager_data( data, 10, 5 );
	//		}
	//	}

	//	input = engine_input_manager_move( input_type_fire2 );
	//	if( input )
	//	{
	//		reset();
	//	}
	//}

	engine_debug_manager_printout();
	engine_player_manager_draw();
	*screen_type = screen_type_option;
}

static void reset()
{
	ptr = NULL;
	indexZ = INVALID_INDEX;
	valueX = 0;
	len = 0;
}