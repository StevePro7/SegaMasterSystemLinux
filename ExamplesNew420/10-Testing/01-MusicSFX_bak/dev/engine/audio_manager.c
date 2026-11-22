#include "audio_manager.h"
#include "../object/audio_data.h"
#include "../devkit/_sms_manager.h"
#include "../devkit/_snd_manager.h"
#include <stdlib.h>

// Global audio manager state
static AudioManager audio_manager = {
	.music_state = AUDIO_STATE_STOPPED,
	.sfx_state = AUDIO_STATE_STOPPED,
	.current_music_track = 0xFF,
	.music_volume = 0,        // 0 = max volume
	.sfx_volume = 0,
	.frame_counter = 0,
	.muted = false,
	.initialized = false
};

// Saved volume levels for mute/unmute
static uint8_t saved_music_volume = 0;
static uint8_t saved_sfx_volume = 0;

// Music track pointer table
static const uint8_t *music_tracks[ NUM_MUSIC_TRACKS ] = {
	MUSIC_TRACK_0,
	//MUSIC_TRACK_1,
	//MUSIC_TRACK_2,
	//MUSIC_TRACK_3,
	//MUSIC_TRACK_4,
	//MUSIC_TRACK_5,
	//MUSIC_TRACK_6,
	//MUSIC_TRACK_7,
	//MUSIC_TRACK_8,
	//MUSIC_TRACK_9
};

// Video system: 0 = NTSC (60 Hz), 1 = PAL (50 Hz)
static uint8_t video_system = 0;  // Default to NTSC

								  /* ============================= IMPLEMENTATION ============================= */

bool audio_init( void ) {
	// Initialize devkit_PSG hardware
	//devkit_devkit_PSGInit();

	// Reset audio manager state
	audio_manager.music_state = AUDIO_STATE_STOPPED;
	audio_manager.sfx_state = AUDIO_STATE_STOPPED;
	audio_manager.current_music_track = 0xFF;
	audio_manager.music_volume = 0;
	audio_manager.sfx_volume = 0;
	audio_manager.frame_counter = 0;
	audio_manager.muted = false;

	saved_music_volume = 0;
	saved_sfx_volume = 0;

	audio_manager.initialized = true;

	return true;
}

bool audio_play_music( uint8_t track_id, uint8_t loop_count ) {
	if( !audio_manager.initialized ) {
		return false;
	}

	if( track_id >= NUM_MUSIC_TRACKS ) {
		return false;
	}

	// Stop current music if playing
	if( audio_manager.music_state != AUDIO_STATE_STOPPED ) {
		devkit_PSGStop();
	}

	// Start new music
	const uint8_t *track_data = music_tracks[ track_id ];
	if( track_data == NULL ) {
		return false;
	}

	if( loop_count == 0xFF ) {
		// Infinite loop
		devkit_PSGPlayLoops( track_data, 0xFF );
	}
	else if( loop_count == 1 ) {
		// No repeat
		devkit_PSGPlayNoRepeat( track_data );
	}
	else {
		// Specific loop count
		devkit_PSGPlayLoops( track_data, loop_count );
	}

	audio_manager.music_state = AUDIO_STATE_PLAYING;
	audio_manager.current_music_track = track_id;

	// Apply current volume
	if( !audio_manager.muted ) {
		devkit_PSGSetMusicVolumeAttenuation( audio_manager.music_volume );
	}
	else {
		devkit_PSGSetMusicVolumeAttenuation( 15 );  // Silent
	}

	return true;
}

bool audio_play_sfx( uint8_t sfx_id ) {
	if( !audio_manager.initialized ) {
		return false;
	}

	if( sfx_id >= NUM_SFX ) {
		return false;
	}

	// For now, just track that SFX is playing
	// Actual SFX data would come from extracted audio
	audio_manager.sfx_state = AUDIO_STATE_PLAYING;

	// Apply current SFX volume
	if( !audio_manager.muted ) {
		devkit_PSGSetSFXVolumeAttenuation( audio_manager.sfx_volume );
	}
	else {
		devkit_PSGSetSFXVolumeAttenuation( 15 );  // Silent
	}

	return true;
}

void audio_stop_music( void ) {
	if( audio_manager.music_state != AUDIO_STATE_STOPPED ) {
		devkit_PSGStop();
		audio_manager.music_state = AUDIO_STATE_STOPPED;
		audio_manager.current_music_track = 0xFF;
	}
}

void audio_stop_sfx( void ) {
	if( audio_manager.sfx_state != AUDIO_STATE_STOPPED ) {
		devkit_PSGSFXStop();
		audio_manager.sfx_state = AUDIO_STATE_STOPPED;
	}
}

void audio_stop_all( void ) {
	audio_stop_music();
	audio_stop_sfx();
	devkit_PSGSilenceChannels();
}

void audio_update( void ) {
	if( !audio_manager.initialized ) {
		return;
	}

	// Update music frame
	if( audio_manager.music_state == AUDIO_STATE_PLAYING ) {
		devkit_PSGFrame();

		// Check if music has stopped
		uint8_t status = devkit_PSGGetStatus();
		if( status == 0 ) {  // 0 = devkit_PSG_STOPPED
			audio_manager.music_state = AUDIO_STATE_STOPPED;
			audio_manager.current_music_track = 0xFF;
		}
	}

	// Update SFX frame
	if( audio_manager.sfx_state == AUDIO_STATE_PLAYING ) {
		devkit_PSGSFXFrame();

		// Check if SFX has stopped
		uint8_t sfx_status = devkit_PSGSFXGetStatus();
		if( sfx_status == 0 ) {  // 0 = devkit_PSG_STOPPED
			audio_manager.sfx_state = AUDIO_STATE_STOPPED;
		}
	}

	// Increment frame counter
	audio_manager.frame_counter++;
}

bool audio_pause_music( void ) {
	if( audio_manager.music_state == AUDIO_STATE_PLAYING ) {
		// Note: devkit_PSGlib doesn't have a direct pause function
		// We simulate it by stopping but remembering we paused
		audio_manager.music_state = AUDIO_STATE_PAUSED;
		devkit_PSGStop();
		return true;
	}
	return false;
}

bool audio_resume_music( void ) {
	if( audio_manager.music_state == AUDIO_STATE_PAUSED ) {
		devkit_PSGResume();
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
		devkit_PSGSetMusicVolumeAttenuation( attenuation );
	}
}

void audio_set_sfx_volume( uint8_t attenuation ) {
	if( attenuation > 15 ) {
		attenuation = 15;
	}

	audio_manager.sfx_volume = attenuation;

	if( !audio_manager.muted && audio_manager.sfx_state != AUDIO_STATE_STOPPED ) {
		devkit_PSGSetSFXVolumeAttenuation( attenuation );
	}
}

void audio_mute( void ) {
	if( !audio_manager.muted ) {
		saved_music_volume = audio_manager.music_volume;
		saved_sfx_volume = audio_manager.sfx_volume;

		audio_manager.muted = true;

		devkit_PSGSetMusicVolumeAttenuation( 15 );  // Silent
		devkit_PSGSetSFXVolumeAttenuation( 15 );    // Silent
	}
}

void audio_unmute( void ) {
	if( audio_manager.muted ) {
		audio_manager.muted = false;

		devkit_PSGSetMusicVolumeAttenuation( saved_music_volume );
		devkit_PSGSetSFXVolumeAttenuation( saved_sfx_volume );
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
	return audio_manager.frame_counter;
}

void audio_set_frame_count( uint16_t new_count ) {
	audio_manager.frame_counter = new_count;
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

void audio_print_debug_info( void ) {
	// This would print debug info if console output is available
	// For now, it's a placeholder

	/*
	printf("=== Audio Manager Debug Info ===\n");
	printf("Initialized: %s\n", audio_manager.initialized ? "Yes" : "No");
	printf("Music State: %d (0=Stopped, 1=Playing, 2=Paused)\n", audio_manager.music_state);
	printf("Music Track: %d\n", audio_manager.current_music_track);
	printf("Music Volume: %d\n", audio_manager.music_volume);
	printf("SFX State: %d\n", audio_manager.sfx_state);
	printf("SFX Volume: %d\n", audio_manager.sfx_volume);
	printf("Frame Count: %d\n", audio_manager.frame_counter);
	printf("Muted: %s\n", audio_manager.muted ? "Yes" : "No");
	printf("Video System: %s\n", video_system == 0 ? "NTSC (60Hz)" : "PAL (50Hz)");
	printf("================================\n");
	*/
}
