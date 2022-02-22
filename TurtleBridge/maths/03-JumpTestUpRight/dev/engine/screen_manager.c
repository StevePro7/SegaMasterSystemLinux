#include "screen_manager.h"
#include "audio_manager.h"
#include "content_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "input_manager.h"
#include "player_manager.h"
#include "sprite_manager.h"
//#include <stdlib.h>

#define UFIX(x)                ((unsigned char)((x)>>8))

static unsigned int	topBlock;
static unsigned char platform;
static unsigned char /*cur_enemy_y,*/ enemy_y;
static unsigned int cur_value_y, value_y;

static unsigned char index, count, state;

static unsigned int ascent[ 17 ] = { 2958, 2347, 1960, 1673, 1441, 1247, 1079, 930, 796, 675, 564, 461, 365, 276, 191, 112, 36 };
static unsigned int descent[ 8 ] = { 348, 522, 696, 870, 1044, 1219, 1393, 1408 };

// half jump - not great!
//static unsigned int ascent[ 17 ] = { 1479, 1173, 980, 836, 720, 623, 539, 465, 398, 337, 282, 230, 182, 138, 95, 56, 18 };
//static unsigned int descent[ 8 ] = { 174, 261, 348, 435, 522, 609, 696, 704 };

void engine_screen_manager_init()
{
	engine_player_manager_init();

	//engine_font_manager_draw_text( "STEVEPRO STUDIOS!!", 4, 1 );

	//unsigned char index;
	//for( index = 0; index < 17; index++ )
	//{
	//	//engine_font_manager_draw_data( ascent[ index ], 20, index );
	//}

	//// Prevent player jumping "through the roof"
	//topBlock = ( unsigned int ) ( 192 << 8 );
	//platform = 128;// 64 - 32;// 160 - 24;
	//enemy_y = platform;
	//state = 0;
	//index = 0;
	//value_y = enemy_y << 8;
	//cur_value_y = value_y;

	//engine_font_manager_draw_data( state, 14, 5 );
	//engine_font_manager_draw_data( index, 14, 6 );
	//engine_font_manager_draw_data( enemy_y, 14, 7 );
	//engine_font_manager_draw_data( value_y, 14, 8 );
	//engine_font_manager_draw_data( cur_value_y, 14, 9 );

	//engine_music_manager_play();
}

void engine_screen_manager_update()
{
	unsigned char input;
	//unsigned int delta;
	//input = engine_input_manager_hold_down();
	input = engine_input_manager_hold_up();
	if( input )
	{
		engine_player_manager_update();
	}
	//input = 1;
	
	//{
	//	if( 0 == state )
	//	{
	//		delta = ascent[ index ];
	//		cur_value_y -= delta;
	//		if( cur_value_y >= topBlock )
	//		{
	//			cur_value_y = 0;
	//		}
	//		value_y = cur_value_y;
	//		enemy_y = UFIX( value_y );
	//		//cur_enemy_y = enemy_y;

	//		engine_font_manager_draw_data( enemy_y, 14, 7 );
	//		engine_font_manager_draw_data( value_y, 14, 8 );
	//		engine_font_manager_draw_data( cur_value_y, 14, 9 );

	//		index++;
	//		if( index >= 17 )
	//		{
	//			state = 1;
	//			index = 0;
	//		}

	//		engine_font_manager_draw_data( state, 14, 5 );
	//		engine_font_manager_draw_data( index, 14, 6 );
	//	}
	//	else if( 1 == state )
	//	{
	//		delta = ascent[ index ];
	//		cur_value_y -= delta;
	//		if( cur_value_y >= topBlock )
	//		{
	//			cur_value_y = 0;
	//		}
	//		value_y = cur_value_y;
	//		enemy_y = UFIX( value_y );
	//		//cur_enemy_y = enemy_y;

	//		engine_font_manager_draw_data( enemy_y, 14, 7 );
	//		engine_font_manager_draw_data( value_y, 14, 8 );
	//		engine_font_manager_draw_data( cur_value_y, 14, 9 );

	//		index++;
	//		if( index >= 17 )
	//		{
	//			state = 2;
	//			index = 0;
	//		}

	//		engine_font_manager_draw_data( state, 14, 5 );
	//		engine_font_manager_draw_data( index, 14, 6 );
	//	}
	//	else if( 2 == state )
	//	{
	//		delta = descent[ index ];
	//		cur_value_y += delta;
	//		value_y = cur_value_y;
	//		enemy_y = UFIX( value_y );
	//		//cur_enemy_y = enemy_y;

	//		engine_font_manager_draw_data( enemy_y, 14, 7 );
	//		engine_font_manager_draw_data( value_y, 14, 8 );
	//		engine_font_manager_draw_data( cur_value_y, 14, 9 );

	//		index++;
	//		if( index > 7 )
	//		{
	//			index = 7;
	//		}

	//		if( enemy_y >= platform )
	//		{
	//			enemy_y = platform;
	//			state = 0;
	//			index = 0;
	//			value_y = enemy_y << 8;
	//			cur_value_y = value_y;
	//		}

	//		engine_font_manager_draw_data( state, 14, 5 );
	//		engine_font_manager_draw_data( index, 14, 6 );
	//	}
	//}
	//

	//engine_sprite_manager_draw( 32, enemy_y, SPRITE_TILES );

	engine_player_manager_draw();
	engine_sprite_manager_draw( 64, 160, SPRITE_TILES );
}