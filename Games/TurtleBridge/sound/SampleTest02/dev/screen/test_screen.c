#include "test_screen.h"
#include "../engine/content_manager.h"
#include "../engine/enum_manager.h"
#include "../engine/font_manager.h"
#include "../engine/input_manager.h"
#include "../engine/riff_manager.h"
#include "../devkit/_sms_manager.h"

static unsigned char check;

void screen_test_screen_load()
{
	devkit_SMS_displayOff();
	engine_content_manager_load_splash_screen();
	devkit_SMS_displayOn();
	//engine_font_manager_draw_text( "PRESS FIRE 2 THEN FIRE 1", 4, 23 );
	check = 0;
}

void screen_test_screen_update( unsigned char *screen_type )
{
	//unsigned char input2;
	unsigned char input1;
	unsigned char value;

	//input2 = engine_input_manager_hold( input_type_fire2 );
	//if( input2 )
	{
		if( check == 0 )
		{
			check = 1;
			for( value = 0; value < 9; value++ )
			{
			//	engine_font_manager_draw_text( "RIFF", 4, value );
			//	engine_font_manager_draw_data( value, 24, value );
				engine_riff_manager_play( value );

				engine_input_manager_update();
				input1 = engine_input_manager_move( input_type_fire1 );
				if( input1 )
				{
					break;
				}
			}
		}
	}

	*screen_type = screen_type_test;
}


void screen_test_screen_update_input( unsigned char *screen_type )
{
	unsigned char input2;
	unsigned char input1;
	unsigned char value;
	
	input2 = engine_input_manager_hold( input_type_fire2 );
	if( input2 )
	{
		if( check == 0 )
		{
			check = 1;
			for( value = 0; value < 9; value++ )
			{
				engine_font_manager_draw_text( "RIFF", 4, value );
				engine_font_manager_draw_data( value, 24, value );
				engine_riff_manager_play( value );

				engine_input_manager_update();
				input1 = engine_input_manager_move( input_type_fire1 );
				if( input1 )
				{
					break;
				}
			}
		}
	}

	*screen_type = screen_type_test;
}

/*
void screen_test_screen_updateX( unsigned char *screen_type )
{	
	unsigned char input = engine_input_manager_hold( input_type_left );
	if( input )
	{
		engine_font_manager_draw_text( "PLAY SOUND FX 01", 10, 8 );
		engine_riff_manager_play( 1 );
	}
	else
	{
		input = engine_input_manager_hold( input_type_up );
		if( input )
		{
			engine_font_manager_draw_text( "PLAY SOUND FX 02", 10, 9 );
			engine_riff_manager_play( 2 );
		}
		else
		{
			input = engine_input_manager_hold( input_type_right );
			if( input )
			{
				engine_font_manager_draw_text( "PLAY SOUND FX 03", 10, 10 );
				engine_riff_manager_play( 3 );
			}
			else
			{
				input = engine_input_manager_hold( input_type_right );
				if( input )
				{
					//engine_font_manager_draw_text( "PLAY WRONG1", 10, 12 );
					//engine_riff_manager_play( 3 );
				}
				else
				{
					input = engine_input_manager_hold( input_type_fire1 );
					if( input )
					{
						engine_font_manager_draw_text( "PLAY SOUND FX", 10, 13 );
						engine_riff_manager_play( 0 );
					}
					else
					{
						input = engine_input_manager_hold( input_type_fire2 );
						if( input )
						{
							engine_font_manager_draw_text( "PLAY GAME OVER", 10, 14 );
							engine_riff_manager_play( 4 );
							engine_riff_manager_play( 5 );
						}
					}
				}
			}
		}
	}

	*screen_type = screen_type_test;
}
*/