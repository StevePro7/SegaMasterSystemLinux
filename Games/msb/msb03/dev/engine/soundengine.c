#include "soundengine.h"
#include "../banks/bank2.h"
#include "../banks/bank3.h"
#include "../banks/bank4.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"

unsigned char current_music_bank = 0;
unsigned char current_fx_bank = 0;

void play_logo_music()
{
	devkit_SMS_mapROMBank( logo1985music_psg_bank );
	current_music_bank = logo1985music_psg_bank;
	devkit_PSGPlay( logo1985music_psg );
}

void play_presentation_music()
{
	devkit_SMS_mapROMBank( presentation_psg_bank );
	current_music_bank = presentation_psg_bank;
	devkit_PSGPlay( presentation_psg );
}

void play_game_music()
{
	devkit_SMS_mapROMBank( level1music_psg_bank );
	current_music_bank = level1music_psg_bank;
	devkit_PSGPlay( level1music_psg );
}

void play_punch_sound1()
{
	devkit_SMS_mapROMBank( punch1_psg_bank );
	current_fx_bank = punch1_psg_bank;
	devkit_PSGSFXPlay( punch1_psg, devkit_SFX_CHANNEL2() );
}

void play_punch_sound2()
{
	devkit_SMS_mapROMBank( punch2_psg_bank );
	current_fx_bank = punch2_psg_bank;
	devkit_PSGSFXPlay( punch1_psg, devkit_SFX_CHANNEL3() );
}

void manage_sound_frame()
{
	if( devkit_PSGGetStatus() == devkit_PSG_PLAYING() )
	{
		devkit_SMS_mapROMBank( current_music_bank );
		devkit_PSGFrame();
	}
	if( devkit_PSGSFXGetStatus() == devkit_PSG_PLAYING() )
	{
		devkit_SMS_mapROMBank( current_fx_bank );
		devkit_PSGSFXFrame();
	}
	else
	{
		devkit_PSGSFXStop();
	}
}