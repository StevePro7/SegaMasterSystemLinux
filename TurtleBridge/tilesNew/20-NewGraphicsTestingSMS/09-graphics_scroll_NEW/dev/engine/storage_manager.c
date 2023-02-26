#include "storage_manager.h"
#include "command_manager.h"
#include "font_manager.h"
#include "global_manager.h"
#include "../devkit/_sms_manager.h"

#define MAGIC			0xACE0B004
#define FINAL			0xC9

// Global variable.
struct_storage_object global_storage_object;

// Reference:
// https://www.smspower.org/forums/16013-DevkitSMSSMSlibMissingRequestingFeatures
unsigned char engine_storage_manager_available()
{
	struct_storage_object *so = ( struct_storage_object* ) ( devkit_SMS_SRAM() );
	unsigned char foundMagic;

	devkit_SMS_enableSRAM();
	foundMagic = MAGIC == so->Magic;
	devkit_SMS_disableSRAM();
	return foundMagic;
}

void engine_storage_manager_read()
{
	struct_storage_object *so = ( struct_storage_object* ) ( devkit_SMS_SRAM() );
//	unsigned int num_jumps;
//	unsigned int index;
	//unsigned char value;

	//devkit_SMS_enableSRAM();
	//num_jumps = so->num_jumps;
	////engine_font_manager_data( num_jumps, 12, 14 );
	//engine_jump_manager_init( num_jumps );

	//for( index = 0; index < num_jumps; index++ )
	//{
	//	value = so->jump_high[ index ];
	//	//engine_font_manager_data( value, 22, 4 + index );
	//	engine_jump_manager_load( index, value );
	//}

	//devkit_SMS_disableSRAM();
}

void engine_storage_manager_write()
{
	struct_storage_object *so = ( struct_storage_object* ) ( devkit_SMS_SRAM() );
	struct_command_object *co = &global_command_object;
	devkit_SMS_enableSRAM();
	so->Magic = MAGIC;
	so->flag = 0x48;
	//storage_frame_index[ 0 ] = 1;
	//storage_this_command[ 0 ] = 2;
	//so->num_jumps = 0xBEEF;
	//so->jump_high[ 0 ] = 1;
	//so->jump_high[ 1 ] = 2;
	//so->jump_high[ 2 ] = 3;
	//so->jump_high[ 3 ] = 4;
	//so->jump_high[ 4 ] = 4;
	//so->jump_high[ 5 ] = 3;
	//so->jump_high[ 6 ] = 2;
	//so->jump_high[ 7 ] = 1;
	so->terminal = FINAL;
	devkit_SMS_disableSRAM();
}

void engine_storage_manager_erase()
{
	//struct_storage_object *so = ( struct_storage_object* ) ( devkit_SMS_SRAM() );
	//devkit_SMS_enableSRAM();
	//so->Magic = 0x00000000;
	//so->num_jumps = 0;
	//so->jump_high[ 0 ] = 9;
	//so->jump_high[ 1 ] = 9;
	//so->jump_high[ 2 ] = 9;
	//so->terminal = FINAL;
	//devkit_SMS_disableSRAM();
}