#include "audio_manager.h"
#include "../devkit/_mbm_manager.h"
#include "../mbm.h"

int engine_audio_manager_play()
{
	unsigned char data = devkit_MBMSFXGetStatus();
	return data;
}