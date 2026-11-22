/**
 * Transbot Audio Quick Reference
 * 
 * Copy-paste snippets for common audio tasks
 */

// ============================================================================
// INITIALIZATION
// ============================================================================

#include "engine/audio_manager.h"
#include "engine/audio_data.h"

int main(void) {
    video_init();
    audio_init();
    audio_set_video_system(sms_is_pal() ? 1 : 0);
    
    while (game_running) {
        update_game();
        render_frame();
        audio_update();      // ← MUST be called once per frame
        wait_vblank();
    }
}

// ============================================================================
// PLAY MUSIC
// ============================================================================

// Play music looping infinitely
audio_play_music(MUSIC_TRACK_GAMEPLAY, 0xFF);

// Play music once (no loop)
audio_play_music(MUSIC_TRACK_INTRO, 1);

// Play music with 3 loops
audio_play_music(MUSIC_TRACK_STAGE, 3);

// Stop music
audio_stop_music();

// Pause/resume
audio_pause_music();
audio_resume_music();

// ============================================================================
// PLAY SOUND EFFECTS
// ============================================================================

// Play SFX on channel 0
audio_play_sfx(SFX_JUMP, PSG_CHANNEL_0);

// Play SFX on channel 3 (noise)
audio_play_sfx(SFX_EXPLOSION, PSG_CHANNEL_3);

// Play SFX on multiple channels (if needed)
audio_play_sfx(SFX_POWERUP, PSG_CHANNEL_1 | PSG_CHANNEL_2);

// Stop all SFX
audio_stop_sfx();

// ============================================================================
// VOLUME CONTROL
// ============================================================================

// Volume range: 0 (loudest) to 15 (silent)

// Set music volume to 50%
audio_set_music_volume(7);

// Set SFX volume to 80%
audio_set_sfx_volume(3);

// Mute all
audio_mute();

// Unmute all
audio_unmute();

// ============================================================================
// QUERIES
// ============================================================================

// Get current state
AudioState music_state = audio_get_music_state();
// Returns: AUDIO_STATE_STOPPED, AUDIO_STATE_PLAYING, AUDIO_STATE_PAUSED

// Get current track
uint8_t track = audio_get_current_track();

// Get frame counter
uint16_t frame = audio_get_frame_count();

// Is initialized?
if (audio_is_initialized()) {
    // Audio system ready
}

// ============================================================================
// FRAME-BASED TIMING
// ============================================================================

// Action every 1 second (NTSC: 60 frames, PAL: 50 frames)
static uint16_t timer = 0;
static uint8_t fps = 60;  // Set to 50 for PAL

void update_once_per_second(void) {
    if (audio_get_video_system() == 1) fps = 50;  // PAL
    else fps = 60;  // NTSC
    
    timer++;
    if (timer >= fps) {
        // Do something
        timer = 0;
    }
}

// ============================================================================
// TITLE SCREEN
// ============================================================================

void title_screen_init(void) {
    video_clear();
    // ... render title graphics ...
    
    audio_play_music(MUSIC_TRACK_TITLE, 0xFF);  // Loop forever
}

void title_screen_cleanup(void) {
    audio_stop_music();
}

// ============================================================================
// GAMEPLAY SCREEN
// ============================================================================

void game_screen_init(void) {
    // ... initialize level ...
    
    audio_play_music(MUSIC_TRACK_GAMEPLAY, 0xFF);
    audio_set_music_volume(5);  // 50% volume
}

void game_screen_update(void) {
    // ... game logic ...
    
    if (player_jumping) {
        audio_play_sfx(SFX_JUMP, PSG_CHANNEL_0);
    }
    
    if (collecting_coin) {
        audio_play_sfx(SFX_COIN, PSG_CHANNEL_1);
    }
    
    if (enemy_hit) {
        audio_play_sfx(SFX_HIT, PSG_CHANNEL_2);
    }
}

void game_screen_cleanup(void) {
    audio_stop_music();
    audio_stop_sfx();
}

// ============================================================================
// GAME OVER SCREEN
// ============================================================================

void game_over_screen_init(void) {
    audio_stop_music();
    audio_stop_sfx();
    
    audio_play_music(MUSIC_TRACK_GAMEOVER, 1);  // Play once
}

// ============================================================================
// PAUSE MENU
// ============================================================================

bool paused = false;

void toggle_pause(void) {
    if (!paused) {
        // Pause
        paused = true;
        audio_pause_music();
        audio_mute();  // Optional: mute while paused
        show_pause_menu();
    } else {
        // Resume
        paused = false;
        audio_resume_music();
        audio_unmute();  // Optional: restore volume
        hide_pause_menu();
    }
}

// ============================================================================
// SETTINGS MENU (VOLUME)
// ============================================================================

void audio_settings_menu(void) {
    uint8_t music_vol = 5;
    uint8_t sfx_vol = 3;
    bool muted = false;
    
    while (menu_active) {
        // Draw UI
        display_volume_menu(music_vol, sfx_vol, muted);
        
        // Handle input
        if (input_up) {
            if (music_vol > 0) music_vol--;
            audio_set_music_volume(music_vol);
        }
        if (input_down) {
            if (music_vol < 15) music_vol++;
            audio_set_music_volume(music_vol);
        }
        
        if (input_left) {
            if (sfx_vol > 0) sfx_vol--;
            audio_set_sfx_volume(sfx_vol);
        }
        if (input_right) {
            if (sfx_vol < 15) sfx_vol++;
            audio_set_sfx_volume(sfx_vol);
        }
        
        if (input_mute_toggle) {
            muted = !muted;
            if (muted) audio_mute();
            else audio_unmute();
        }
        
        // Update audio (REQUIRED)
        audio_update();
        wait_vblank();
    }
    
    // Save settings
    save_audio_settings(music_vol, sfx_vol, muted);
}

// ============================================================================
// DEBUG
// ============================================================================

// Print debug info
audio_print_debug_info();

// Output might look like:
// === Audio Manager Debug Info ===
// Initialized: Yes
// Music State: 1 (Playing)
// Music Track: 2
// Music Volume: 5
// SFX State: 0 (Stopped)
// SFX Volume: 3
// Frame Count: 1234
// Muted: No
// Video System: NTSC (60Hz)
// ================================

// ============================================================================
// TRACK IDENTIFICATION
// ============================================================================

/*
 * To identify what each track actually is:
 * 
 * 1. Play original game in emulator
 * 2. Note which music plays when:
 *    - Game starts (Track 0?)
 *    - Stage 1 begins (Track 1?)
 *    - Gameplay runs (Track 2?)
 *    - etc.
 * 
 * 3. Update enum in audio_manager.h:
 * 
 *    typedef enum {
 *        MUSIC_TRACK_TITLE      = 0,  // Confirmed: Title screen
 *        MUSIC_TRACK_STAGE_1    = 1,  // Confirmed: First stage
 *        MUSIC_TRACK_GAMEPLAY   = 2,  // Confirmed: Main gameplay
 *        MUSIC_TRACK_STAGE_2    = 3,  // Confirmed: Second stage
 *        // ... etc ...
 *    } MusicTrackID;
 * 
 * 4. Update track names in audio_manager.c:
 * 
 *    static const uint8_t *music_tracks[NUM_MUSIC_TRACKS] = {
 *        MUSIC_TRACK_0,  // Title screen
 *        MUSIC_TRACK_1,  // Stage 1
 *        MUSIC_TRACK_2,  // Gameplay
 *        // ... etc ...
 *    };
 */

// ============================================================================
// NOTES
// ============================================================================

/*
 * Critical Requirements:
 * 
 * 1. audio_init() MUST be called once at startup
 * 2. audio_update() MUST be called exactly once per frame
 * 3. Never call audio_update() multiple times in one frame
 * 4. Never skip frames without calling audio_update()
 * 5. The timing is automatically NTSC/PAL correct if wait_vblank() is correct
 * 
 * Volume Attenuation (PSG):
 * 
 *  0 = Maximum volume (0 dB)
 *  7 = ~50% volume (-7 dB)
 * 15 = Silent (-∞ dB)
 * 
 * PSG Channels:
 * 
 *  0 = Tone channel (notes)
 *  1 = Tone channel (notes)
 *  2 = Tone channel (notes)
 *  3 = Noise channel (drums, percussion)
 * 
 * Always use unique channels for simultaneous sounds:
 * 
 *  - Music typically: channels 0 & 1
 *  - SFX typically: channels 2 & 3
 *  - Avoid overlap if possible
 */

// ============================================================================
// PERFORMANCE
// ============================================================================

/*
 * CPU Usage: ~5-10% per frame
 * Memory: ~2 KB data + 256 bytes RAM
 * Code Size: ~40 KB (PSGlib + audio_manager compiled)
 * 
 * Safe for real-time gameplay on SMS hardware
 */
