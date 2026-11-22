/**
* Transbot Audio Manager - Frame-synchronized audio playback
*
* Provides a high-level interface for music and sound effects playback
* with automatic NTSC/PAL frame synchronization.
*
* Features:
* - Music playback with looping support
* - Sound effect queuing (up to 3 simultaneous SFX)
* - Volume control for music and SFX separately
* - Automatic frame synchronization (PSGFrame/PSGSFXFrame)
* - Pause/resume support
* - Smooth muting/unmuting
*/

#ifndef AUDIO_MANAGER_H
#define AUDIO_MANAGER_H

#include <stdint.h>
#include <stdbool.h>

/* ============================= TYPES ============================= */

/**
* Audio playback state enumeration
*/
typedef enum {
	AUDIO_STATE_STOPPED = 0,
	AUDIO_STATE_PLAYING = 1,
	AUDIO_STATE_PAUSED = 2
} AudioState;

/**
* Music track IDs
*
* These correspond to the 10 tracks extracted from the original game.
* Adjust descriptive names based on actual audio content analysis.
*/
typedef enum {
	MUSIC_TRACK_TITLE = 0,  // Likely title screen
	MUSIC_TRACK_STAGE_1 = 1,  // Short musical segment
	MUSIC_TRACK_GAMEPLAY = 2,  // Longest track, main gameplay
	MUSIC_TRACK_STAGE_2 = 3,  // Stage variant
	MUSIC_TRACK_SFX_01 = 4,  // SFX or stinger
	MUSIC_TRACK_SFX_02 = 5,  // SFX or stinger
	MUSIC_TRACK_SFX_03 = 6,  // SFX or stinger
	MUSIC_TRACK_SFX_04 = 7,  // Very short SFX
	MUSIC_TRACK_SFX_05 = 8,  // SFX or stinger
	MUSIC_TRACK_COMPLEX = 9,  // Complex long sequence
	NUM_MUSIC_TRACKS = 10
} MusicTrackID;

/**
* Sound effect IDs
*
* To be populated after analyzing actual sound content.
* Common SFX for a platformer:
* - Jump, land, coin, powerup, enemy hit, game over, level complete, etc.
*/
typedef enum {
	// SFX id N plays original sound command (11 + N) of the Transbot driver
	SFX_00 = 0, SFX_01 = 1, SFX_02 = 2, SFX_03 = 3,
	SFX_04 = 4, SFX_05 = 5, SFX_06 = 6, SFX_07 = 7,
	SFX_08 = 8, SFX_09 = 9, SFX_10 = 10, SFX_11 = 11,
	NUM_SFX = 12
} SoundEffectID;

/**
* PSG channel enumeration for SFX allocation
*/
typedef enum {
	PSG_CHANNEL_0 = 0x01,  // Bit 0
	PSG_CHANNEL_1 = 0x02,  // Bit 1
	PSG_CHANNEL_2 = 0x04,  // Bit 2
	PSG_CHANNEL_3 = 0x08   // Bit 3 (noise channel)
} PSGChannel;

/**
* Audio manager state structure
*
* Maintains current playback state, volume levels, and frame counter
* for proper NTSC/PAL synchronization.
*/
typedef struct {
	AudioState music_state;
	AudioState sfx_state;

	uint8_t current_music_track;
	uint8_t music_volume;        // 0-15 attenuation
	uint8_t sfx_volume;          // 0-15 attenuation

	uint16_t frame_counter;      // Frame counter for timing
	bool muted;                  // Global mute flag
	bool initialized;            // Initialization flag
} AudioManager;

/* ============================= INTERFACE ============================= */

/**
* Initialize the audio system
*
* Must be called once during game startup, before any audio playback.
* This initializes the PSG hardware and sets up the audio manager state.
*
* @return true if initialization successful, false otherwise
*/
bool audio_init( void );

/**
* Play background music track
*
* Starts playing a music track with optional looping.
* If music is already playing, it will be stopped first.
*
* @param track_id    ID of the track to play (MusicTrackID)
* @param loop_count  Number of times to loop (0xFF = infinite)
* @return true if track started successfully, false otherwise
*/
bool audio_play_music( unsigned char track_id, uint8_t loop_count );

/**
* Play the stage start sequence, as in the original game
*
* Plays the intro melody (original sound command $95) for 288 frames, then
* automatically starts the stage music (track 2 or track 3). Timing is frame
* based, so it matches the original on both NTSC and PAL.
*
* @param variant 0 = stage music track 2 (original $83), 1 = track 3 ($84)
*/
bool audio_play_stage_music( uint8_t variant );

/**
* Play sound effect
*
* Queues a sound effect on an available channel.
* Multiple SFX can play simultaneously on different channels.
*
* @param sfx_id       ID of the sound effect to play (SoundEffectID)
* @param channel_mask PSG channel mask (PSGChannel enum)
* @return true if SFX queued successfully, false otherwise
*/
bool audio_play_sfx( uint8_t sfx_id );

/**
* Stop background music
*
* Stops the currently playing music track.
* Sound effects continue playing if any are active.
*/
void audio_stop_music( void );

/**
* Stop all sound effects
*
* Stops all active sound effects.
* Music continues playing if any is active.
*/
void audio_stop_sfx( void );

/**
* Stop all audio (music and SFX)
*
* Silences all audio output immediately.
*/
void audio_stop_all( void );

/**
* Update audio system (MUST be called once per frame!)
*
* This function must be called exactly once per frame in the main game loop,
* typically during or just after the VBLANK period.
*
* This function:
* - Updates PSG with current music frame data
* - Updates PSG with current SFX frame data
* - Maintains frame counter for timing
* - Handles NTSC/PAL frame synchronization
*
* Example:
*   while (game_running) {
*       update_game_logic();
*       render_frame();
*       wait_vblank();
*       audio_update();  // <-- Call once per frame
*   }
*/
void audio_update( void );

/**
* Pause background music (without affecting SFX)
*
* @return true if music was playing and is now paused
*/
bool audio_pause_music( void );

/**
* Resume previously paused music
*
* @return true if music was paused and is now playing
*/
bool audio_resume_music( void );

/**
* Set music volume attenuation
*
* Volume attenuation uses PSG's 4-bit volume register:
* - 0 = maximum volume (0 dB)
* - 15 = silent (-∞ dB)
*
* @param attenuation Volume level (0-15, where 0 is loudest)
*/
void audio_set_music_volume( uint8_t attenuation );

/**
* Set sound effects volume attenuation
*
* @param attenuation Volume level (0-15, where 0 is loudest)
*/
void audio_set_sfx_volume( uint8_t attenuation );

/**
* Mute all audio output
*
* This sets volume attenuation to 15 (silent) for both music and SFX,
* but preserves the actual attenuation values so unmute can restore them.
*/
void audio_mute( void );

/**
* Unmute audio output
*
* Restores previously saved volume levels.
*/
void audio_unmute( void );

/**
* Get current music playback state
*
* @return Current AudioState (STOPPED, PLAYING, or PAUSED)
*/
AudioState audio_get_music_state( void );

/**
* Get current SFX playback state
*
* @return Current AudioState
*/
AudioState audio_get_sfx_state( void );

/**
* Get currently playing music track ID
*
* @return Track ID, or 0xFF if no music is playing
*/
uint8_t audio_get_current_track( void );

/**
* Get current frame counter
*
* Useful for frame-based timing in the game.
* Incremented by audio_update() every frame.
*
* @return Current frame count
*/
uint16_t audio_get_frame_count( void );

/**
* Reset frame counter
*
* @param new_count New frame counter value (typically 0)
*/
void audio_set_frame_count( uint16_t new_count );

/**
* Is audio system initialized?
*
* @return true if audio_init() was called successfully
*/
bool audio_is_initialized( void );

/* ============================= NTSC/PAL SUPPORT ============================= */

/**
* Get current video system (NTSC or PAL)
*
* @return 0 for NTSC (60 Hz), 1 for PAL (50 Hz)
*/
uint8_t audio_get_video_system( void );

/**
* Set video system for frame rate synchronization
*
* This allows the audio system to adjust timing for the correct
* refresh rate (60 Hz NTSC vs 50 Hz PAL).
*
* @param is_pal 0 for NTSC (60 Hz), 1 for PAL (50 Hz)
*/
void audio_set_video_system( uint8_t is_pal );

/* ============================= DIAGNOSTIC ============================= */

/**
* Print audio system diagnostic information
*
* Useful for debugging audio issues.
* Outputs to console (if available):
* - Current music state and track
* - Current SFX state
* - Volume levels
* - Frame counter
*/
void audio_print_debug_info( void );

#endif//AUDIO_MANAGER_H
