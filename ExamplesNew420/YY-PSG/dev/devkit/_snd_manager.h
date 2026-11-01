#ifndef _PSG_MANAGER_H_
#define _PSG_MANAGER_H_

// #defines
unsigned char devkit_PSG_STOPPED();
unsigned char devkit_PSG_PLAYING();
unsigned char devkit_SFX_CHANNEL2();
unsigned char devkit_SFX_CHANNEL3();
unsigned char devkit_SFX_CHANNELS2AND3();
unsigned char devkit_SFX_CHANNEL0();
unsigned char devkit_SFX_CHANNEL1();

#ifdef PSGLIB_MULTIBANK
void devkit_PSGPlay( void *song, unsigned char bank );
void devkit_PSGPlayLoops( void *song, unsigned char loops, unsigned char bank );
void devkit_PSGPlayNoRepeat( void *song, unsigned char bank );
#else
void devkit_PSGPlay( void *song );
void devkit_PSGPlayLoops( void *song, unsigned char loops );
void devkit_PSGPlayNoRepeat( void *song );
#endif

void devkit_PSGCancelLoop( void );
void devkit_PSGStop( void );
void devkit_PSGResume( void );
unsigned char devkit_PSGGetStatus( void );

// #defines
void devkit_PSGSetMusicVolumeChannelsAttenuation( unsigned char chn0_attenuation, unsigned char chn1_attenuation, unsigned char chn2_attenuation, unsigned char chn3_attenuation );
void devkit_PSGSetMusicVolumeAttenuation( unsigned char attenuation );
void devkit_PSGSetMusicVolumeChannelsAttenuation_f( unsigned int channels_attenuation );
void devkit_PSGSetSFXVolumeAttenuation( unsigned char attenuation );


void devkit_PSGSFXPlay( void *sfx, unsigned char channels );
void devkit_PSGSFXPlayLoop( void *sfx, unsigned char channels );
void devkit_PSGSFXCancelLoop( void );
void devkit_PSGSFXStop( void );
unsigned char devkit_PSGSFXGetStatus( void );

void devkit_PSGSilenceChannels( void );
void devkit_PSGRestoreVolumes( void );

void devkit_PSGFrame( void );
void devkit_PSGSFXFrame( void );

#endif//_PSG_MANAGER_H_