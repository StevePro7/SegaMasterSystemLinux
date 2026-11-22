# Transbot Audio Extraction & Integration Plan

## Overview
Extracting all sound effects and music from the original Transbot z80 assembly code and integrating them into the C-based TransbotCnew using PSGlib.

## Current Status
- **TransbotCnew**: Latest C-based build with video/gameplay complete
- **Sound Engine**: Original z80 ASM implementation in `TransbotASM/engine/sound_manager.inc`
- **Target Library**: `sverxPSGlib/PSGlib.inc` - C-compatible PSG audio library
- **Playback Goal**: Smooth NTSC/PAL-compatible frame-synchronized audio

---

## Audio Data Analysis

### Original Assembly Sound System (main_org.asm)
Located at `$303A-$349A` in original ROM

#### Sound Manager RAM Addresses
- `_RAM_DE00_`: Music/SFX command register
- `_RAM_DE01_`: Status/control flags
- `_RAM_DE02_`: Start of voice RAM (6 voices × 32 bytes = $C0 bytes)

#### Pointer Table (_DATA_30A2_) - 10 Entries
Indexed by `_RAM_DE00_` values $80-$89

| Index | Address  | Type | Purpose |
|-------|----------|------|---------|
| 0 | _DATA_3531_ (132 bytes) | Music/SFX | Entry 0 |
| 1 | _DATA_35B5_ (55 bytes)  | Music/SFX | Entry 1 |
| 2 | _DATA_35EC_ (374 bytes) | Music/SFX | Entry 2 |
| 3 | _DATA_3762_ (279 bytes) | Music/SFX | Entry 3 |
| 4 | _DATA_3879_ (50 bytes)  | Music/SFX | Entry 4 |
| 5 | _DATA_38AB_ (40 bytes)  | Music/SFX | Entry 5 |
| 6 | _DATA_38D3_ (42 bytes)  | Music/SFX | Entry 6 |
| 7 | _DATA_38FD_ (18 bytes)  | Music/SFX | Entry 7 |
| 8 | _DATA_390F_ (42 bytes)  | Music/SFX | Entry 8 |
| 9 | _DATA_3939_ (373 bytes) | Music/SFX | Entry 9 |

#### Envelope/Waveform Tables (_DATA_3AAE_) - 16 Entries
Pointer table for 16 different sound envelopes/waveforms

| Index | Address  | Size | Description |
|-------|----------|------|-------------|
| 0 | _DATA_3ACE_ | 7 bytes | Envelope 0: FF EE DD CC BB AA 01 |
| 1 | _DATA_3AD5_ | 9 bytes | Envelope 1 |
| 2 | _DATA_3ADE_ | 8 bytes | Envelope 2 |
| 3 | _DATA_3AE6_ | 15 bytes | Envelope 3 |
| 4 | _DATA_3AF5_ | 8 bytes | Envelope 4 |
| 5 | _DATA_3AFD_ | 4 bytes | Envelope 5 |
| 6 | _DATA_3B01_ | 6 bytes | Envelope 6 |
| 7 | _DATA_3B07_ | 3 bytes | Envelope 7 |
| 8 | _DATA_3B0A_ | 16 bytes | Envelope 8 |
| 9 | _DATA_3B1A_ | 7 bytes | Envelope 9 |
| 10 | _DATA_3B21_ | 10 bytes | Envelope 10 |
| 11 | _DATA_3B2B_ | 2 bytes | Envelope 11 |
| 12 | _DATA_3B2D_ | 10 bytes | Envelope 12 |
| 13 | _DATA_3B37_ | 8 bytes | Envelope 13 |
| 14 | _DATA_3B3F_ | 6 bytes | Envelope 14 |
| 15 | _DATA_3B45_ | 11 bytes | Envelope 15 |

#### Frequency Table (_DATA_349F_) - 73 Entries
PSG frequency values (LSB, MSB pairs) for all notes from low to high

Starting at $349F, 146 bytes = 73 note frequencies

---

## PSGlib Integration Reference

### Key PSGlib Functions

```c
// Initialization
void PSGInit();

// Music Playback
void PSGPlay(hl = music_data_address);
void PSGPlayLoops(hl = music_data_address, A = loop_count);
void PSGPlayNoRepeat(hl = music_data_address);
void PSGStop();
void PSGResume();

// SFX Playback
void PSGSFXPlay(hl = sfx_data_address, C = channel_mask);
void PSGSFXPlayLoop(hl = sfx_data_address, C = channel_mask, A = loop_count);
void PSGSFXStop();

// Volume Control
void PSGSetMusicVolumeAttenuation(L = attenuation_0_to_15);
void PSGSetSFXVolumeAttenuation(L = attenuation_0_to_15);

// Frame Processing (call every frame!)
void PSGFrame();     // Process music frame
void PSGSFXFrame();  // Process SFX frame

// Status
A = PSGGetStatus();      // Get music status
A = PSGSFXGetStatus();   // Get SFX status

// Utilities
void PSGSilenceChannels();
void PSGRestoreVolumes();
void PSGCancelLoop();
void PSGSFXCancelLoop();
```

---

## Identified Sounds in Original Code

### Music Tracks (Estimated)
Based on the 10 pointer table entries, likely:

1. **Entry 0** (132 bytes) - Likely title screen or main menu music
2. **Entry 1** (55 bytes) - Shorter musical segment
3. **Entry 2** (374 bytes) - Longest track, likely main game music
4. **Entry 3** (279 bytes) - Stage music variant
5. **Entry 4** (50 bytes) - Short SFX or stab
6. **Entry 5** (40 bytes) - Short SFX or stab
7. **Entry 6** (42 bytes) - Short SFX or stab
8. **Entry 7** (18 bytes) - Very short SFX (single note?)
9. **Entry 8** (42 bytes) - Short SFX or stab
10. **Entry 9** (373 bytes) - Very long, complex sequence

### Sound Event Trigger System
Jump table at `_DATA_30CE_` (23 entries) handles different sound event types:
- Simple triggers (entries 2-4): Direct SFX playback
- Interval-based triggers (entries 6-9): Play every Nth frame
- Complex triggers: Custom timing and synchronization

---

## Implementation Strategy

### Phase 1: Audio Data Extraction ✓ (THIS DOCUMENT)
- [x] Map all sound/music data addresses
- [x] Identify frequency table structure
- [x] Document envelope/waveform system
- [x] Create reference guide for PSGlib integration

### Phase 2: Audio Header Creation (NEXT)
Create C headers for all audio data:

```c
// audio_data.h
#ifndef AUDIO_DATA_H
#define AUDIO_DATA_H

#include <types.h>

// Music/SFX track definitions
extern const uint8_t MUSIC_TRACK_0[];  // Title/Menu music
extern const uint8_t MUSIC_TRACK_1[];  // ... etc

// PSG Frequency table (optional - may be in PSGlib)
extern const uint8_t PSG_FREQUENCIES[];

// Sound effect definitions
extern const uint8_t SFX_JUMP[];
extern const uint8_t SFX_COIN[];
extern const uint8_t SFX_POWERUP[];
// ... etc

#endif
```

### Phase 3: Audio Manager Integration
Create C-based audio manager:

```c
// audio_manager.h / audio_manager.c
typedef enum {
    AUDIO_STATE_STOPPED,
    AUDIO_STATE_PLAYING,
    AUDIO_STATE_PAUSED
} AudioState;

void audio_init();
void audio_play_music(uint8_t track, uint8_t loops);
void audio_play_sfx(uint8_t sfx, uint8_t channel_mask);
void audio_update();  // Call from main loop each frame
void audio_stop_music();
void audio_stop_sfx();
```

### Phase 4: Frame-Synchronized Playback
Ensure smooth playback for NTSC/PAL:

```c
// NTSC: 60 FPS, PSG update frequency = 60 Hz
// PAL:  50 FPS, PSG update frequency = 50 Hz

void game_loop() {
    while(game_running) {
        // Update game logic
        update_game();
        
        // Update audio (MUST be called once per frame)
        PSGFrame();      // Music
        PSGSFXFrame();   // Sound effects
        
        // Render video
        render_frame();
        
        // Wait for VBLANK (automatically handles NTSC/PAL timing)
        wait_vblank();
    }
}
```

---

## Audio Data Format (Z80 Assembly Native)

### Music/SFX Track Format
Based on code analysis, format appears to be:

```
Byte 0:   Track header/flags
Bytes 1+: Encoded note/command sequence

Command bytes (high nibble = command, low = parameter):
  0xE0-0xFF: Special commands (delay, end, envelope change, etc.)
  0x00-0x7F: Note values with timing
  0x80-0xDF: Note with envelope/effect data
```

### Envelope Entry Format
```
Bytes 0-N: Volume envelope steps
Terminator: 0x01 or 0x02
```

---

## C Data Type Definition

```c
typedef struct {
    const uint8_t *data_ptr;    // Pointer to track data
    uint8_t current_pos;        // Current playback position
    uint8_t status;             // Playing/stopped status
    uint8_t loop_count;         // Remaining loops
} PSGTrack;
```

---

## Next Steps

1. **Extract Audio Binaries**
   - Convert z80 ASM data sections to C hex arrays
   - Create `audio_data.h` with all track definitions

2. **Implement Audio Manager**
   - Wrap PSGlib functions in a game-friendly API
   - Handle music/SFX queuing and prioritization

3. **Integrate with TransbotCnew**
   - Add PSGlib to build system
   - Hook audio updates into main game loop
   - Test each track in-game

4. **Optimize & Polish**
   - Verify NTSC/PAL timing
   - Implement volume/fade controls
   - Add sound preferences/mute options

---

## References

- **PSGlib Source**: `D:\Code\testing2\sverxPSGlib\PSGlib.inc`
- **Original Sound Code**: `D:\Code\testing2\TransbotASM\engine\sound_manager.inc`
- **Original Audio Data**: `D:\Code\testing2\TransbotASM\content\psg_data.inc`
- **Game Files**: `D:\Code\testing2\TransbotCnew\dev\`

---

## Tools & Utilities

### ASM to C Converter
Consider creating a tool to automatically convert z80 ASM data blocks to C hex arrays:

```bash
# Example: Convert assembly data to C header
python3 asm_to_c.py --input main_org.asm --output audio_data.h
```

---

## Notes

- PSG (Programmable Sound Generator) = Sega Master System's 3-channel audio chip
- Frequency table uses 10-bit values (2 bytes per frequency)
- Envelope system allows dynamic volume changes over time
- Up to 6 simultaneous voices in original implementation
- PSGlib requires calling PSGFrame/PSGSFXFrame every frame for proper playback

