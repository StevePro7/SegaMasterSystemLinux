#ifndef _SOUND_MANAGER_H_
#define _SOUND_MANAGER_H_

/**
* Transbot PSG sound engine - faithful C port of the original Z80 driver
* (TransbotASM/engine/sound_manager.inc, $303A-$349A).
*
* Called once per frame, exactly like the original driver, so timing is
* identical on NTSC (60Hz) and PAL (50Hz).
*/

#include <stdint.h>

/* Initialize the engine and silence the PSG */
void sound_engine_init( void );

/* Run one frame of the driver (original $303A) */
void sound_engine_update( void );

/* Queue an original sound command: 1-22 (original _RAM_DE00_ = 0x80 + n) */
void sound_engine_play_cmd( uint8_t n );

/* Music track 0-9 (commands 1-10) */
void sound_engine_play_track( uint8_t track_id );

/* Hard stop: clear all channels and silence the PSG */
void sound_engine_stop( void );

/* Pending command byte (0x80 = idle) */
uint8_t sound_engine_get_state( void );

#endif//_SOUND_MANAGER_H_
