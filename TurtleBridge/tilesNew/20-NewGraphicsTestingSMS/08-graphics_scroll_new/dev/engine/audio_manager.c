#include "audio_manager.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include "../banks/bank3.h"
#include <stdlib.h>

#define mus_game_psg			mus_game_psg

void engine_music_manager_play()
{
	devkit_SMS_mapROMBank( mus_game_psg_bank );
	devkit_PSGPlay( ( unsigned char* ) mus_game_psg );
	//devkit_PSGPlayNoRepeat( ( unsigned char* ) mus_game_psg );
}

void engine_sound_manager_play()
{
}
