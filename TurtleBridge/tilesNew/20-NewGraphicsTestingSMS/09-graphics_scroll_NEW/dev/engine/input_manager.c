#include "input_manager.h"
#include "../devkit/_sms_manager.h"

// Must be static to persist values!
static unsigned int curr_joypad1 = 0;
static unsigned int prev_joypad1 = 0;

// Public methods.
void engine_input_manager_update()
{
	prev_joypad1 = curr_joypad1;
	curr_joypad1 = devkit_SMS_getKeysStatus();
}

unsigned char engine_input_manager_hold( unsigned char data )
{
	return curr_joypad1 & data && !( prev_joypad1 & data );
}

unsigned char engine_input_manager_move( unsigned char data )
{
	return curr_joypad1 & data;
}
