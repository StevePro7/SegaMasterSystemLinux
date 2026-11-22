# Transbot Audio Integration Guide

## Quick Start

This guide walks through integrating smooth, frame-synchronized audio playback into TransbotCnew.

---

## Step 1: Extract Audio Data

### Run the audio extraction script:

```bash
cd D:\Code\testing2
python3 extract_audio_data.py TransbotASM\content\psg_data.inc TransbotCnew\dev\engine\audio_data.h
```

Or if the data is in main_org.asm:

```bash
python3 extract_audio_data.py TransbotASM\main_org.asm TransbotCnew\dev\engine\audio_data.h
```

This generates `audio_data.h` containing:
- 10 music/SFX tracks as C byte arrays
- 73 PSG frequency values
- 16 envelope/waveform tables

### Expected Output:
```
Extracting audio data from: TransbotASM\content\psg_data.inc
Output file: TransbotCnew\dev\engine\audio_data.h

Found _DATA_3531_ (132 bytes)
Found _DATA_35B5_ (55 bytes)
... (more tracks)

Generation complete!
  Data blocks found: 26
  Total data bytes: 1847
```

---

## Step 2: Integrate PSGlib

### Copy PSGlib to TransbotCnew build:

```bash
cp D:\Code\testing2\sverxPSGlib\PSGlib.inc TransbotCnew\dev\engine\psglib.asm
```

### Update build system (Makefile):

Add to your C compiler flags:
```makefile
# In TransbotCnew/Makefile
ASFLAGS += -i dev/engine/
```

Ensure PSGlib.inc is included in your build:
```makefile
# Add to build dependencies
OBJS += dev/engine/audio_manager.o
```

---

## Step 3: Identify Actual Sound Content

Before using the audio system, it's important to understand what each track actually is.

### Analysis Method:

1. **Listen to the original game** using an SMS emulator
   - Note which music plays during title screen, gameplay, etc.
   - Identify all sound effects (jump, coin, power-up, etc.)

2. **Correlate with code locations**:
   - Check game state machine for screen transitions
   - Find where `_RAM_DE00_` is set to trigger sounds
   - Match trigger values (0x80-0x89) to track numbers

3. **Update enum names** in `audio_manager.h`:
   ```c
   typedef enum {
       MUSIC_TRACK_TITLE      = 0,  // Confirmed: Title screen
       MUSIC_TRACK_STAGE_1    = 1,  // Confirmed: First stage
       MUSIC_TRACK_GAMEPLAY   = 2,  // Confirmed: Main gameplay
       // ... etc
   } MusicTrackID;
   ```

### Example: Finding sounds in original code

Search in `TransbotASM/engine/sound_manager.inc`:

```asm
; Look for where music is triggered:
ld a, $80           ; Select track 0
ld (_RAM_DE00_), a  ; Trigger playback
```

The value in register `A` before writing to `_RAM_DE00_` indicates which track:
- `0x80` → Track 0 (MUSIC_TRACK_0)
- `0x81` → Track 1 (MUSIC_TRACK_1)
- ... etc
- `0x89` → Track 9 (MUSIC_TRACK_9)

---

## Step 4: Integrate into Game Loop

### In your main game loop (main.c):

```c
#include "engine/audio_manager.h"
#include "engine/audio_data.h"

int main(void) {
    // Initialize video/graphics first
    video_init();
    
    // Initialize audio system
    audio_init();
    
    // Detect video system (NTSC vs PAL)
    uint8_t is_pal = sms_is_pal();  // Your detection function
    audio_set_video_system(is_pal);
    
    // Main game loop
    while (game_running) {
        // Update game logic
        update_game_state();
        
        // Handle input
        process_input();
        
        // Update graphics
        render_frame();
        
        // **CRITICAL: Update audio exactly once per frame**
        // This MUST be called after game logic but doesn't have to wait
        audio_update();
        
        // Wait for VBLANK (this automatically handles NTSC/PAL timing)
        wait_vblank();
    }
    
    return 0;
}
```

### Critical Timing:

The `audio_update()` function MUST be called exactly once per frame:

```
Frame N:
  |-> update_game()
  |-> process_input()
  |-> render_frame()
  |-> audio_update() ← CALL ONCE HERE
  |-> wait_vblank()
  |
Frame N+1:
  ...
```

**NOT** like this (calling multiple times):
```c
// WRONG! Do not call multiple times per frame:
for (int i = 0; i < 10; i++) {
    audio_update();  // ❌ WRONG
}
```

---

## Step 5: Trigger Music and SFX

### Playing music:

```c
#include "engine/audio_manager.h"

// In your title screen code:
void title_screen_init(void) {
    video_clear();
    // ... render title graphics ...
    
    // Start title music (loop infinitely)
    audio_play_music(MUSIC_TRACK_TITLE, 0xFF);
}

// In your game screen code:
void game_screen_init(void) {
    // ... initialize level ...
    
    // Start gameplay music
    audio_play_music(MUSIC_TRACK_GAMEPLAY, 0xFF);
}

// When transitioning to game over:
void game_over(void) {
    audio_stop_music();  // Stop current music
    // ... show game over screen ...
}
```

### Playing sound effects:

```c
// When player jumps:
void player_jump(void) {
    // Play jump SFX on channel 0
    audio_play_sfx(SFX_JUMP, PSG_CHANNEL_0);
    
    // ... apply jump physics ...
}

// When collecting coin:
void collect_coin(void) {
    // Play coin SFX on channel 1
    audio_play_sfx(SFX_COIN, PSG_CHANNEL_1);
    
    score += 10;
}

// Multiple SFX on different channels:
void power_up_collected(void) {
    // Play power-up sound
    audio_play_sfx(SFX_POWERUP, PSG_CHANNEL_2);
}
```

### Channel allocation:

```
PSG Channels:
  Channel 0: Tone (notes)
  Channel 1: Tone (notes)
  Channel 2: Tone (notes)
  Channel 3: Noise (drums, percussion)

Usage Strategy:
  - Music typically uses channels 0 & 1
  - SFX can use channel 2 & 3
  - Avoid conflicts if possible
  
Bitmask:
  PSG_CHANNEL_0 = 0x01
  PSG_CHANNEL_1 = 0x02
  PSG_CHANNEL_2 = 0x04
  PSG_CHANNEL_3 = 0x08
  
  Multiple channels: 0x03 (use channels 0 & 1)
```

---

## Step 6: Volume Control

### Set initial volumes:

```c
void audio_init_complete(void) {
    audio_init();
    
    // Set volume to 50% (attenuation 7-8 out of 15)
    // 0 = loudest, 15 = silent
    audio_set_music_volume(5);   // 5 = 7/15 ≈ 50% volume
    audio_set_sfx_volume(3);     // 3 = 3/15 ≈ 80% volume
}
```

### Volume menu:

```c
void audio_volume_menu(void) {
    uint8_t music_vol = 0;
    uint8_t sfx_vol = 0;
    
    while (menu_active) {
        // ... draw UI ...
        
        if (input_up) {
            if (music_vol > 0) music_vol--;
            audio_set_music_volume(music_vol);
        }
        if (input_down) {
            if (music_vol < 15) music_vol++;
            audio_set_music_volume(music_vol);
        }
        
        // ... similar for SFX volume ...
        
        audio_update();  // Don't forget!
    }
}
```

### Mute/Unmute:

```c
// Toggle mute with a key
if (input_mute_toggle) {
    if (audio_manager.muted) {
        audio_unmute();
    } else {
        audio_mute();
    }
}
```

---

## Step 7: Testing

### Minimal test program:

```c
#include "engine/audio_manager.h"
#include "engine/audio_data.h"

int main(void) {
    video_init();
    audio_init();
    
    // Play first track
    audio_play_music(MUSIC_TRACK_0, 0xFF);
    
    uint16_t frame_count = 0;
    
    while (1) {
        // Update audio every frame
        audio_update();
        
        // Every 60 frames (1 second), print status
        frame_count++;
        if (frame_count % 60 == 0) {
            audio_print_debug_info();
        }
        
        wait_vblank();
    }
}
```

### Testing checklist:

- [ ] Audio initializes without errors
- [ ] Music plays when selected
- [ ] Music loops correctly
- [ ] SFX plays without interrupting music
- [ ] Volume controls work
- [ ] Mute/unmute toggles
- [ ] Music stops cleanly
- [ ] No audio glitches (pops, clicks)
- [ ] NTSC timing (60 FPS)
- [ ] PAL timing (50 FPS)

---

## Step 8: Audio Timing Details

### NTSC System (60 Hz):

```
1 Frame = 16.67 milliseconds
60 Frames = 1 second

PSG update rate: 60 times per second
Call audio_update() 60 times per second
```

### PAL System (50 Hz):

```
1 Frame = 20 milliseconds
50 Frames = 1 second

PSG update rate: 50 times per second
Call audio_update() 50 times per second
```

The `wait_vblank()` function automatically handles this by waiting for the actual VBLANK interrupt, which has the correct frequency for the system (60 Hz NTSC, 50 Hz PAL).

### Frame-locked timing:

```c
// If you need to do something every 2 seconds:
#define FRAMES_PER_SECOND (audio_get_video_system() == 0 ? 60 : 50)
#define ACTION_INTERVAL (FRAMES_PER_SECOND * 2)  // 2 seconds

void update_every_2_seconds(void) {
    static uint16_t last_frame = 0;
    
    if (audio_get_frame_count() - last_frame >= ACTION_INTERVAL) {
        // Do something every 2 seconds
        my_action();
        last_frame = audio_get_frame_count();
    }
}
```

---

## Troubleshooting

### Audio not playing:

1. **Check initialization**:
   ```c
   if (!audio_is_initialized()) {
       printf("Error: audio_init() not called!\n");
   }
   ```

2. **Check audio_update() is called each frame**:
   - Set a breakpoint in `audio_update()`
   - Verify it's called 60 times per second (NTSC)

3. **Verify track data**:
   ```c
   if (MUSIC_TRACK_0 == NULL) {
       printf("Error: Track 0 not loaded!\n");
   }
   ```

4. **Check PSG hardware**:
   - Verify PSG port I/O ($7F, $7E) is accessible
   - Check for hardware conflicts

### Audio glitches (pops/clicks):

1. **Multiple audio_update() calls per frame**: Check loop is correct
2. **Volume changes too fast**: Use gradual fade instead of step change
3. **Channel conflicts**: Allocate SFX to different channels than music

### NTSC/PAL mismatch:

1. **Audio speed wrong**: 
   ```c
   audio_set_video_system(sms_is_pal() ? 1 : 0);
   ```

2. **Audio timing off**:
   - Ensure `wait_vblank()` is correct
   - Use oscilloscope to verify frame rate

### Music stops unexpectedly:

1. **Check loop count**:
   ```c
   // This plays once then stops:
   audio_play_music(TRACK_ID, 1);
   
   // This loops forever:
   audio_play_music(TRACK_ID, 0xFF);
   ```

2. **Check for audio_stop_music() calls** in unintended places

---

## Performance Considerations

### CPU Usage:

- `audio_update()` uses minimal CPU (~5-10% per frame)
- Actual usage depends on PSGlib implementation
- Safe to call every frame

### Memory Usage:

- Audio data: ~1-2 KB (all tracks + tables)
- Audio manager state: ~32 bytes
- PSGlib RAM: ~256 bytes (for PSG voice state)

### Code Size:

- audio_manager.c: ~12 KB (compiled)
- audio_data.h: ~8 KB (all tracks)
- PSGlib: ~15 KB (compiled)

---

## Next Steps

1. Run audio extraction script
2. Analyze sound content in original game
3. Update enum names with actual track purposes
4. Add `audio_update()` to main game loop
5. Add music/SFX triggers in game logic
6. Test each track in-game
7. Adjust volumes and timing as needed
8. Add sound preferences menu (optional)

---

## References

- **PSGlib Documentation**: `D:\Code\testing2\sverxPSGlib\PSGlib.inc`
- **Audio Manager Header**: `D:\Code\testing2\TransbotCnew\dev\engine\audio_manager.h`
- **Audio Manager Implementation**: `D:\Code\testing2\TransbotCnew\dev\engine\audio_manager.c`
- **Extraction Tool**: `D:\Code\testing2\extract_audio_data.py`
- **Audio Data Format**: See `AUDIO_EXTRACTION_PLAN.md`

