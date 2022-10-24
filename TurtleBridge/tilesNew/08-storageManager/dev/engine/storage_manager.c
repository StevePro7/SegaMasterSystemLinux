#include "storage_manager.h"
#include "../devkit/_sms_manager.h"

#define MAGIC			0xACE0B004
#define FINAL			0xFE

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

unsigned int engine_storage_manager_read()
{
	struct_storage_object *so = ( struct_storage_object* ) ( devkit_SMS_SRAM() );
	unsigned int temp;
	devkit_SMS_enableSRAM();
	temp = so->num_bytes;
	devkit_SMS_disableSRAM();
	return temp;
}

void engine_storage_manager_write()
{
	struct_storage_object *so = ( struct_storage_object* ) ( devkit_SMS_SRAM() );
	devkit_SMS_enableSRAM();
	so->Magic = MAGIC;
	so->num_bytes = 400;
	so->sgb_bytes[ 0 ] = 12;
	so->sgb_bytes[ 1 ] = 24;
	so->sgb_bytes[ 2 ] = 48;
	so->terminal = FINAL;
	devkit_SMS_disableSRAM();
}

void engine_storage_manager_erase()
{
	struct_storage_object *so = ( struct_storage_object* ) ( devkit_SMS_SRAM() );

	devkit_SMS_enableSRAM();
	so->Magic = 0x00000000;
	so->num_bytes = 0;
	so->sgb_bytes[ 0 ] = 0;
	so->sgb_bytes[ 1 ] = 0;
	so->sgb_bytes[ 2 ] = 0;
	so->terminal = FINAL;
	devkit_SMS_disableSRAM();
}