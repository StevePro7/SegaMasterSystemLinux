#ifndef _STORAGE_OBJECT_H_
#define _STORAGE_OBJECT_H_

#include "../engine/global_manager.h"

// Reference: http://www.smspower.org/forums/16013-DevkitSMSSMSlibMissingRequestingFeatures#91899
typedef struct tag_struct_storage_object
{
	unsigned long Magic;

	unsigned int num_jumps;
	//unsigned char jump_high[ 6 ];

	unsigned char terminal;

} struct_storage_object;

#endif//_STORAGE_OBJECT_H_