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
	/*	unsigned int num_jumps;
		unsigned int index;
		unsigned char value*/;

	devkit_SMS_enableSRAM();
	//command_frame_index[ 0 ] = 0;// command_frame_index[ 0 ];
	//command_frame_index[ 1 ] = 4;// command_frame_index[ 1 ];
	//command_frame_index[ 2 ] = 5;// command_frame_index[ 2 ];
	//command_this_command[ 0 ] = 2;// command_this_command[ 0 ];
	//command_this_command[ 1 ] = 34;// command_this_command[ 1 ];
	//command_this_command[ 2 ] = 1;// command_this_command[ 2 ];

	command_frame_index[ 0 ] = so->storage_frame_index[ 0 ];
	command_frame_index[ 1 ] = so->storage_frame_index[ 1 ];
	command_frame_index[ 2 ] = so->storage_frame_index[ 2 ];
	command_this_command[ 0 ] = so->storage_this_command[ 0 ];
	command_this_command[ 1 ] = so->storage_this_command[ 1 ];
	command_this_command[ 2 ] = so->storage_this_command[ 2 ];

	devkit_SMS_disableSRAM();
}

void engine_storage_manager_write()
{
	struct_storage_object *so = ( struct_storage_object* ) ( devkit_SMS_SRAM() );
	//struct_command_object *co = &global_command_object;
	devkit_SMS_enableSRAM();
	so->Magic = MAGIC;

	//so->storage_frame_index[ 0 ] = 0;// command_frame_index[ 0 ];
	//so->storage_frame_index[ 1 ] = 4;// command_frame_index[ 1 ];
	//so->storage_frame_index[ 2 ] = 5;// command_frame_index[ 2 ];
	//so->storage_this_command[ 0 ] = 2;// command_this_command[ 0 ];
	//so->storage_this_command[ 1 ] = 34;// command_this_command[ 1 ];
	//so->storage_this_command[ 2 ] = 1;// command_this_command[ 2 ];

	so->storage_frame_index[ 0 ] = command_frame_index[ 0 ];
	so->storage_frame_index[ 1 ] = command_frame_index[ 1 ];
	so->storage_frame_index[ 2 ] = command_frame_index[ 2 ];
	so->storage_this_command[ 0 ] = command_this_command[ 0 ];
	so->storage_this_command[ 1 ] = command_this_command[ 1 ];
	so->storage_this_command[ 2 ] = command_this_command[ 2 ];

	so->terminal = FINAL;
	devkit_SMS_disableSRAM();
}

void engine_storage_manager_erase()
{
	struct_storage_object *so = ( struct_storage_object* ) ( devkit_SMS_SRAM() );
	devkit_SMS_enableSRAM();
	so->Magic = 0x00000000;
	so->storage_frame_index[ 0 ] = 0;
	so->storage_frame_index[ 1 ] = 0;
	//so->storage_frame_index[ 2 ] = 0;
	so->storage_this_command[ 0 ] = 0;
	so->storage_this_command[ 1 ] = 0;
	//so->storage_this_command[ 2 ] = 0;
	so->terminal = FINAL;
	devkit_SMS_disableSRAM();
}