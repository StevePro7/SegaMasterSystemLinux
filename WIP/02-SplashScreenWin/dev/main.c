#include "main.h"

void main( void )
{
	unsigned int input1, input2;
	static unsigned char flags, frame, steve;
	unsigned char cntR[] = { 0,0,0,0 };
	unsigned char cntG[] = { 0,0,0,0 };
	devkit_SMS_init();
	devkit_SMS_displayOff();
	engine_asm_manager_clear_VRAM();
	
	engine_content_manager_load_sprite_palette();
	engine_content_manager_load_splash_screen();

	input1 = 0;
	input2 = 0;
	flags = 0;
	frame = 0;
	steve = 0;
	devkit_SMS_displayOn();
	for( ;; )
	{
		engine_input_manager_update();
		input1 = engine_input_manager_move_up();
		if( input1 )
		{
			if( 1 == flags )
			{
				if( 20 == frame || 40 == frame )
				{
					cntR[ 0 ]++;
					cntR[ 3 ]++;
				}
				if( 30 == frame )
				{
					cntR[ 2 ]++;

					cntG[ 2 ]++;
					cntG[ 3 ]++;
				}
				if( 60 == frame )
				{
					cntR[ 0 ]++;
					cntR[ 1 ]++;
					cntR[ 2 ]++;
					cntR[ 3 ]++;
				}
				frame++;

				//devkit_SMS_setBGPaletteColor( 15, 3, 3, 3 );
				devkit_SMS_setBGPaletteColor( 1, cntR[ 0 ], cntG[ 0 ], 0 );
				devkit_SMS_setBGPaletteColor( 3, cntR[ 1 ], cntG[ 1 ], 0 );
				devkit_SMS_setBGPaletteColor( 4, cntR[ 1 ], cntG[ 1 ], 0 );
				devkit_SMS_setBGPaletteColor( 5, cntR[ 2 ], cntG[ 2 ], 0 );
				devkit_SMS_setBGPaletteColor( 6, cntR[ 2 ], cntG[ 2 ], 0 );
				devkit_SMS_setBGPaletteColor( 7, cntR[ 3 ], cntG[ 3 ], 0 );
				devkit_SMS_setBGPaletteColor( 8, cntR[ 3 ], cntG[ 3 ], 0 );
			}
		}


		input2 = engine_input_manager_hold_down();
		if( input2 )
		{
			if( 0 == flags )
			{
				flags = 1;
				for( steve = 0; steve < 16; steve++ )
				{
					devkit_SMS_setBGPaletteColor( steve, 0, 0, 0 );
				}
			}
			
		}

		devkit_SMS_waitForVBlank();
	}
}
