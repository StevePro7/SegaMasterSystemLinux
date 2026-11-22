/**
* Transbot Audio Manager - Wrapper around C-based Audio Engine
*
* This provides a C API for audio control using a hybrid C/Z80 implementation:
* - C code handles state machine logic
* - Z80 inline asm handles PSG register writes
*/

#include "audio_manager.h"
#include "sound_engine.h"
#include <stdlib.h>

#ifdef _CONSOLE
#else
#pragma disable_warning 110
#endif

/* ============================= STATIC STATE ============================= */

// Global audio manager state
static AudioManager audio_manager = {
	.music_state = AUDIO_STATE_STOPPED,
	.sfx_state = AUDIO_STATE_STOPPED,
	.current_music_track = 0xFF,
	.music_volume = 0,
	.sfx_volume = 0,
//	.frame_counter = 0,
	.muted = false,
	.initialized = false
};

// Saved volume levels for mute/unmute
static uint8_t saved_music_volume = 0;
static uint8_t saved_sfx_volume = 0;

// Video system: 0 = NTSC (60Hz), 1 = PAL (50Hz)
static uint8_t video_system = 0;

// Stage start: original plays the intro melody (command 21) for 288 frames, then the stage music
#define STAGE_INTRO_FRAMES 288
static uint16_t stage_intro_frames = 0;
static uint8_t stage_music_variant = 0;

/* ============================= IMPLEMENTATION ============================= */

bool audio_init( void ) {
	// Initialize the audio engine
	sound_engine_init();

	// Reset audio manager state
	audio_manager.music_state = AUDIO_STATE_STOPPED;
	audio_manager.sfx_state = AUDIO_STATE_STOPPED;
	audio_manager.current_music_track = 0xFF;
	audio_manager.music_volume = 0;
	audio_manager.sfx_volume = 0;
	//audio_manager.frame_counter = 0;
	audio_manager.muted = false;

	saved_music_volume = 0;
	saved_sfx_volume = 0;

	audio_manager.initialized = true;

	return true;
}

bool audio_play_music( unsigned char track_id, uint8_t loop_count ) {
	( void ) loop_count;  /* Not used yet - for future looping support */

	if( !audio_manager.initialized ) {
		return false;
	}

	if( track_id >= NUM_MUSIC_TRACKS ) {
		return false;
	}

	// Play the track
	stage_intro_frames = 0;
	sound_engine_play_track( track_id );

	audio_manager.music_state = AUDIO_STATE_PLAYING;
	audio_manager.current_music_track = track_id;

	return true;
}

bool audio_play_sfx( uint8_t sfx_id ) {
	if( !audio_manager.initialized ) {
		return false;
	}

	if( sfx_id >= NUM_SFX ) {
		return false;
	}

	sound_engine_play_cmd( 11 + sfx_id );
	audio_manager.sfx_state = AUDIO_STATE_PLAYING;

	return true;
}

void audio_stop_music( void ) {
	stage_intro_frames = 0;
	if( audio_manager.music_state != AUDIO_STATE_STOPPED ) {
		audio_manager.music_state = AUDIO_STATE_STOPPED;
		audio_manager.current_music_track = 0xFF;
		sound_engine_stop();
	}
}

void audio_stop_sfx( void ) {
	audio_manager.sfx_state = AUDIO_STATE_STOPPED;
}

void audio_stop_all( void ) {
	audio_stop_music();
	audio_stop_sfx();
}

bool audio_pause_music( void ) {
	if( audio_manager.music_state == AUDIO_STATE_PLAYING ) {
		audio_manager.music_state = AUDIO_STATE_PAUSED;
		return true;
	}
	return false;
}

bool audio_resume_music( void ) {
	if( audio_manager.music_state == AUDIO_STATE_PAUSED ) {
		audio_manager.music_state = AUDIO_STATE_PLAYING;
		return true;
	}
	return false;
}

void audio_set_music_volume( uint8_t attenuation ) {
	if( attenuation > 15 ) {
		attenuation = 15;
	}

	audio_manager.music_volume = attenuation;

	if( !audio_manager.muted && audio_manager.music_state != AUDIO_STATE_STOPPED ) {
		// Volume control would go here
	}
}

void audio_set_sfx_volume( uint8_t attenuation ) {
	if( attenuation > 15 ) {
		attenuation = 15;
	}

	audio_manager.sfx_volume = attenuation;

	if( !audio_manager.muted && audio_manager.sfx_state != AUDIO_STATE_STOPPED ) {
		// Volume control would go here
	}
}

void audio_mute( void ) {
	if( !audio_manager.muted ) {
		saved_music_volume = audio_manager.music_volume;
		saved_sfx_volume = audio_manager.sfx_volume;

		audio_manager.muted = true;

		// Muting logic would go here
	}
}

void audio_unmute( void ) {
	if( audio_manager.muted ) {
		audio_manager.muted = false;

		audio_manager.music_volume = saved_music_volume;
		audio_manager.sfx_volume = saved_sfx_volume;

		// Unmuting logic would go here
	}
}

AudioState audio_get_music_state( void ) {
	return audio_manager.music_state;
}

AudioState audio_get_sfx_state( void ) {
	return audio_manager.sfx_state;
}

uint8_t audio_get_current_track( void ) {
	return audio_manager.current_music_track;
}

uint16_t audio_get_frame_count( void ) {
	return 0;
//	return audio_manager.frame_counter;
}

void audio_set_frame_count( uint16_t new_count ) {
//	audio_manager.frame_counter = new_count;
}

bool audio_is_initialized( void ) {
	return audio_manager.initialized;
}

uint8_t audio_get_video_system( void ) {
	return video_system;
}

void audio_set_video_system( uint8_t is_pal ) {
	video_system = is_pal ? 1 : 0;
}

void audio_update( void ) {
	if( !audio_manager.initialized ) {
		return;
	}

	// Stage intro melody finished: start the stage music (original $5BC countdown)
	if( stage_intro_frames ) {
		stage_intro_frames--;
		if( stage_intro_frames == 0 ) {
			sound_engine_play_cmd( 3 + stage_music_variant );
			audio_manager.music_state = AUDIO_STATE_PLAYING;
			audio_manager.current_music_track = 2 + stage_music_variant;
		}
	}

	// Update the Z80 sound engine (process one frame)
	sound_engine_update();

	// Increment frame counter
	//audio_manager.frame_counter++;
}

bool audio_play_stage_music( uint8_t variant ) {
	if( !audio_manager.initialized ) {
		return false;
	}

	stage_music_variant = variant ? 1 : 0;
	stage_intro_frames = STAGE_INTRO_FRAMES;
	sound_engine_play_cmd( 21 );
	audio_manager.music_state = AUDIO_STATE_PLAYING;
	audio_manager.current_music_track = 0xFF;

	return true;
}

void audio_print_debug_info( void ) {
	// Diagnostic output (stub for now)
	// In a full implementation, would print to console
}
