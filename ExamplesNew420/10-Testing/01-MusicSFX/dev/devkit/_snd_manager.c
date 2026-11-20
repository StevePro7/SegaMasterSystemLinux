#include "_snd_manager.h"

#ifdef _CONSOLE
#include "../../tmp/PSGlib.h"
#else
#include "../../lib/PSGlib.h"
#endif

// #defines
unsigned char devkit_PSG_STOPPED()
{
	return PSG_STOPPED;
}
unsigned char devkit_PSG_PLAYING()
{
	return PSG_PLAYING;
}

unsigned char devkit_SFX_CHANNEL2()
{
	return SFX_CHANNEL2;
}
unsigned char devkit_SFX_CHANNEL3()
{
	return SFX_CHANNEL3;
}
unsigned char devkit_SFX_CHANNELS2AND3()
{
	return SFX_CHANNELS2AND3;
}
unsigned char devkit_SFX_CHANNEL0()
{
	return SFX_CHANNEL0;
}
unsigned char devkit_SFX_CHANNEL1()
{
	return SFX_CHANNEL1;
}

#ifdef PSGLIB_MULTIBANK
void devkit_PSGPlay( void *song, unsigned char bank )
{
	PSGPlay( song, bank );
}
void devkit_PSGPlayLoops( void *song, unsigned char loops, unsigned char bank )
{
	PSGPlayLoops( *song, loops, bank );
}
void devkit_PSGPlayNoRepeat( void *song, unsigned char bank )
{
	PSGPlayNoRepeat( song, bank );
}
#else
void devkit_PSGPlay( void *song )
{
	PSGPlay( song );
}
void devkit_PSGPlayLoops( void *song, unsigned char loops )
{
	PSGPlayLoops( song, loops );
}
void devkit_PSGPlayNoRepeat( void *song )
{
	PSGPlayNoRepeat( song );
}
#endif

void devkit_PSGCancelLoop( void )
{
	PSGCancelLoop();
}
void devkit_PSGStop( void )
{
	PSGStop();
}
void devkit_PSGResume( void )
{
	PSGResume();
}
unsigned char devkit_PSGGetStatus( void )
{
	return PSGGetStatus();
}

// #defines
void devkit_PSGSetMusicVolumeChannelsAttenuation( unsigned char chn0_attenuation, unsigned char chn1_attenuation, unsigned char chn2_attenuation, unsigned char chn3_attenuation )
{
	PSGSetMusicVolumeChannelsAttenuation( chn0_attenuation, chn1_attenuation, chn2_attenuation, chn3_attenuation );
}
void devkit_PSGSetMusicVolumeAttenuation( unsigned char attenuation )
{
	PSGSetMusicVolumeAttenuation( attenuation );
}
void devkit_PSGSetMusicVolumeChannelsAttenuation_f( unsigned int channels_attenuation )
{
	PSGSetMusicVolumeChannelsAttenuation_f( channels_attenuation );
}
void devkit_PSGSetSFXVolumeAttenuation( unsigned char attenuation )
{
	PSGSetSFXVolumeAttenuation( attenuation );
}

void devkit_PSGSFXPlay( void *sfx, unsigned char channels )
{
	PSGSFXPlay( sfx, channels );
}
void devkit_PSGSFXPlayLoop( void *sfx, unsigned char channels )
{
	PSGSFXPlayLoop( sfx, channels );
}
void devkit_PSGSFXCancelLoop( void )
{
	PSGSFXCancelLoop();
}
void devkit_PSGSFXStop( void )
{
	PSGSFXStop();
}
unsigned char devkit_PSGSFXGetStatus( void )
{
	return PSGSFXGetStatus();
}

void devkit_PSGSilenceChannels( void )
{
	PSGSilenceChannels();
}
void devkit_PSGRestoreVolumes( void )
{
	PSGRestoreVolumes();
}

void devkit_PSGFrame( void )
{
	PSGFrame();
}
void devkit_PSGSFXFrame( void )
{
	PSGSFXFrame();
}
