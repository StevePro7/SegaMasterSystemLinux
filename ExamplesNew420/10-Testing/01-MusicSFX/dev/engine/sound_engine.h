/**
* Transbot PSG sound engine - faithful C port of the original Z80 driver
* (TransbotASM/engine/sound_manager.inc, $303A-$349A).
*
* Called once per frame, exactly like the original driver, so timing is
* identical on NTSC (60Hz) and PAL (50Hz).
*/

#ifndef _SOUND_ENGINE_H_
#define _SOUND_ENGINE_H_

#include <stdint.h>

/* Initialize the engine and silence the PSG */
void sound_engine_init( void );

#endif//_SOUND_ENGINE_H_