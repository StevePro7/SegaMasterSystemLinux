#ifndef _STORAGE_OBJECT_H_
#define _STORAGE_OBJECT_H_

#include "../engine/global_manager.h"

// Reference: http://www.smspower.org/forums/16013-DevkitSMSSMSlibMissingRequestingFeatures#91899
typedef struct tag_struct_storage_object
{
	unsigned long Magic;

	//unsigned int num_jumps;
	unsigned char flag;
	unsigned char terminal;

} struct_storage_object;

//extern unsigned int storage_frame_index[];
//extern unsigned char storage_this_command[];

#endif//_STORAGE_OBJECT_H_