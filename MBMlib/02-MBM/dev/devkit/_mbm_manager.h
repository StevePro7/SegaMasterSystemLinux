#ifndef _MBM_MANAGER_H_
#define _MBM_MANAGER_H_

unsigned char devkit_SMS_GetFMAudioCapabilities();
void devkit_SMS_EnableAudio( unsigned char chips );

void devkit_MBMPlay( void *module );
void devkit_MBMFrame( void );

unsigned char devkit_MBMSFXGetStatus( void );

#endif//_MBM_MANAGER_H_