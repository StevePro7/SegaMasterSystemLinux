# Audio Playback Diagnosis - Transbot Audio System

## Current Status: ✅ BUILD SUCCESS, ❌ NO AUDIO PLAYBACK

### The Problem

The Transbot audio data (`psg_data.inc`) is **NOT in PSGlib format**. 

**Evidence:**
- All tracks start with: `0x03, 0x80, 0x20...`
- PSGlib command codes are: `0x00`(end), `0x01`(loop), `0x08`(substring), `0x38`(wait)
- `0x03` is NOT a valid PSGlib command
- This data is from the **original Transbot z80 PSG driver**, not PSGlib

### Audio Data Format

The extracted data uses a **proprietary format** specific to the original z80 `sound_manager.inc`:

```
Original z80 driver (TransbotASM/engine/sound_manager.inc):
  - Custom PSG command interpretation
  - Different byte encoding than PSGlib
  - Uses RAM structure at _RAM_DE00_, _RAM_DE01_, etc.
  - 6 simultaneous voices (more than PSGlib's 4 channels)
```

### Why No Sound

1. ✅ Audio data is correctly extracted and embedded as C byte arrays
2. ✅ PSGlib.inc is linked correctly
3. ✅ audio_manager.c calls devkit_PSGPlayLoops() with track data
4. ❌ **PSGlib.inc cannot interpret the proprietary Transbot data format**
   - PSGlib reads bytes and expects its command codes
   - It encounters `0x03` and doesn't know what to do with it
   - Playback doesn't start because data is "invalid" to PSGlib

### Solution Options

#### Option A: Use Original z80 PSG Driver (RECOMMENDED)
- **Pros:**
  - Data is 100% compatible
  - Faster implementation
  - Preserves all original audio features
- **Cons:**
  - Need original z80 code (available in TransbotASM/engine/sound_manager.inc)
  - Requires porting z80 assembly to C or linking z80 code
  
#### Option B: Convert Audio Data to PSGlib Format
- **Pros:**
  - Uses standard PSGlib
- **Cons:**
  - Complex reverse-engineering of proprietary format
  - Time-consuming conversion of all tracks
  - May lose features (6 voices → 4 channels)

#### Option C: Keep PSGlib but Skip Data Interpretation
- **Pros:**
  - Keeps PSGlib
- **Cons:**
  - Requires rewriting audio generation logic
  - Most complex, least practical

### Recommended Next Steps

**1. Port the Original z80 PSG Driver**

The key routines in `TransbotASM/engine/sound_manager.inc`:
- `_LABEL_303A_`: Main PSG update routine
- `_LABEL_31B9_` and related: Voice/channel handlers
- Pointer table at `_DATA_30A2_`: Maps track IDs to data

**2. Create C Wrapper Functions**

```c
// Initialize the original driver
void audio_driver_init(void);

// Update: Call once per frame  
void audio_driver_update(void);

// Play track by ID (0-9)
void audio_driver_play(uint8_t track_id, uint8_t loop_count);

// Stop playback
void audio_driver_stop(void);
```

**3. Use Raw Audio Data As-Is**

No need to convert the bytes - they'll work directly with the original driver.

### Current Implementation Status

**Files Modified:**
- ✅ `01-MusicSFX/dev/engine/audio_manager.c` - API layer
- ✅ `01-MusicSFX/dev/object/audio_data.c` - Raw audio bytes
- ✅ `01-MusicSFX/dev/build.bat` - Build configuration

**What Works:**
- Build compiles successfully (32KB ROM)
- Audio data is embedded correctly
- PSGlib is linked
- Audio manager C API is complete

**What Doesn't Work:**
- PSGlib cannot interpret Transbot proprietary audio format
- Result: No sound playback despite correct data

### Technical Details

**PSGlib Command Codes (from PSGlib.inc):**
```
$00 = PSGEnd       (end of song)
$01 = PSGLoop      (loop point)
$08 = PSGSubString (substring reference)
$38 = PSGWait      (wait N frames)
(All other bytes are tone/frequency data)
```

**Transbot Data Starts With:**
```
$03 $80 $20 $04...  (not recognized by PSGlib)
```

### Conclusion

**The build is working correctly, but we're trying to play incompatible data format.**

This is NOT a build issue, compilation issue, or integration issue.

It's an **audio format compatibility issue** that requires either:
1. Using the original z80 driver (simplest)
2. Converting all data to PSGlib format (most work)

---

**Next Decision Point:** 
Would you like me to:
- [ A ] Port the original z80 sound_manager to C
- [ B ] Create a tool to convert all tracks to PSGlib format  
- [ C ] Link the z80 code directly (hybrid approach)
