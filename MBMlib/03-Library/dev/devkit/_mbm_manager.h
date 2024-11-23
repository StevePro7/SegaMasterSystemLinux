#ifndef _MBM_MANAGER_H_
#define _MBM_MANAGER_H_

void devkit_MBMPlay( void *module );
void devkit_MBMCancelLoop( void );
void devkit_MBMPlayNoRepeat( void *module );

void devkit_MBMStop( void );
void devkit_MBMResume( void );

unsigned char devkit_MBMGetStatus( void );

void devkit_MBMFadeOut( unsigned char fade_fraction );

void devkit_MBMFrame( void );

unsigned char devkit_SMS_GetFMAudioCapabilities();
void devkit_SMS_EnableAudio( unsigned char chips );

unsigned char devkit_MBMSFXGetStatus( void );

#endif//_MBM_MANAGER_H_