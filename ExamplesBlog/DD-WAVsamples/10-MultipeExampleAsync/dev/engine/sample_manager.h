#ifndef _SAMPLE_MANAGER_H_
#define _SAMPLE_MANAGER_H_

#define LDIXHA   .dw #0x67DD
#define LDIXLA   .dw #0x6FDD
#define LDAIXH   .dw #0x7CDD
#define LDAIXL   .dw #0x7DDD
#define ORIXL    .dw #0xB5DD

#define LDIYHA   .dw #0x67FD
#define LDIYLA   .dw #0x6FFD
#define LDAIYH   .dw #0x7CFD
#define LDAIYL   .dw #0x7DFD
#define ORIYL    .dw #0xB5FD

#define LDDIYH   .dw #0x54FD
#define LDDIYL   .dw #0x55FD
#define LDEIYH   .dw #0x5CFD
#define LDEIYL   .dw #0x5DFD


#ifdef _CONSOLE

//void engine_sample_manager_init( const void *psginit ) /*__z88dk_fastcall*/;
//void engine_sample_manager_play( const void *sample ) /*__z88dk_fastcall*/;

void engine_sample_manager_init( const void *psginit );
void engine_sample_manager_play( const void *sample );
void engine_sample_manager_update( void );
unsigned char engine_sample_manager_isPlaying( void );
void engine_sample_manager_stop( void );

#else

void engine_sample_manager_init( const void *psginit ) __naked __z88dk_fastcall;
void engine_sample_manager_play( const void *sample ) __z88dk_fastcall;
void engine_sample_manager_update( void ) __naked;
unsigned char engine_sample_manager_isPlaying( void );
void engine_sample_manager_stop( void );

#endif 

#endif//_SAMPLE_MANAGER_H_