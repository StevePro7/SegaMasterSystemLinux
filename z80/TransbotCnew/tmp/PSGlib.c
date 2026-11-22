/* **************************************************
   PSGlib - C programming library for the SEGA PSG
   ( part of devkitSMS - github.com/sverx/devkitSMS )
   ************************************************** */

#ifdef PSGLIB_MULTIBANK
void PSGPlay( void *song, unsigned char bank ) {}
void PSGPlayLoops( void *song, unsigned char loops, unsigned char bank ) {}
void PSGPlayNoRepeat( void *song, unsigned char bank ) {}
#else
void PSGPlay( void *song ) {}
void PSGPlayLoops( void *song, unsigned char loops ) {}
void PSGPlayNoRepeat( void *song ) {}
#endif

void PSGCancelLoop( void ) {}
void PSGStop( void ) {}
void PSGResume( void ) {}
unsigned char PSGGetStatus( void ) { return 1; }

void PSGSetMusicVolumeChannelsAttenuation_f( unsigned int channels_attenuation ) {}
void PSGSetSFXVolumeAttenuation( unsigned char attenuation ) {}

void PSGSFXPlay( void *sfx, unsigned char channels ) {}
void PSGSFXPlayLoop( void *sfx, unsigned char channels ) {}
void PSGSFXCancelLoop( void ) {}
void PSGSFXStop( void ) {}
unsigned char PSGSFXGetStatus( void ) { return 0; }

void PSGSilenceChannels( void ) {}
void PSGRestoreVolumes( void ) {}

void PSGFrame( void ) {}
void PSGSFXFrame( void ) {}

