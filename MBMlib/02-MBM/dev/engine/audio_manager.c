#include "audio_manager.h"
#include "../devkit/_mbm_manager.h"
#include "../mbm.h"

#define EXAMPLE_MBM			example_mbm

void engine_audio_manager_play()
{
	devkit_MBMPlay( ( unsigned char* ) EXAMPLE_MBM );
}


//int engine_audio_manager_play()
//{
//	unsigned char data = devkit_MBMSFXGetStatus();
//	return data;
//}