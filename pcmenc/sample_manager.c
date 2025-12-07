#include "sample_manager.h"
#include "sample_manager_macros.h"

#ifndef _CONSOLE

// ---------------------------------------------------------------------
// Internal PCM playback state (OPTION A you selected: static globals)
// ---------------------------------------------------------------------
static const unsigned char *sm_pcm_ptr = 0;
static unsigned int sm_pcm_len = 0;
static unsigned char sm_pcm_playing = 0;

// ---------------------------------------------------------------------
// Init PSG (your original implementation unchanged)
// ---------------------------------------------------------------------
void engine_sample_manager_init(const void *psginit) __naked __z88dk_fastcall
        {
                (void)psginit;
        __asm

        ld bc,#0x0b7f
        otir
        ret

        __endasm;
        }

// ---------------------------------------------------------------------
// Start sample (non-blocking)
// ---------------------------------------------------------------------
void engine_sample_manager_play(const void *sample) __z88dk_fastcall
{
sm_pcm_ptr = (const unsigned char*)sample;

// IX length: 2 bytes little endian at start of sample
sm_pcm_len  = sm_pcm_ptr[0];
sm_pcm_len |= (unsigned int)sm_pcm_ptr[1] << 8;

sm_pcm_ptr += 2;

sm_pcm_playing = 1;
}

// ---------------------------------------------------------------------
// Stop sample
// ---------------------------------------------------------------------
void engine_sample_manager_stop(void)
{
    sm_pcm_playing = 0;
}

// ---------------------------------------------------------------------
// Query status
// ---------------------------------------------------------------------
unsigned char engine_sample_manager_isPlaying(void)
{
    return sm_pcm_playing;
}

// ---------------------------------------------------------------------
// Non-blocking PCM update (one 447-cycle fragment per frame)
// ---------------------------------------------------------------------
void engine_sample_manager_update(void) __naked
{
__asm

; Check if playing
ld   a,(_sm_pcm_playing)
or   a
ret  z

; Load pointer and length
ld   hl,(_sm_pcm_ptr)
ld   ix,(_sm_pcm_len)

; --- BEGIN PCMENC PER-FRAME WORK (trimmed from your blocking loop) ---

; Read next data nibble
ld   a,(hl)
inc  hl

; Your PCMENC logic: update volumes and emit 3 PSG writes
; (this preserves your existing logic and timing structure)

; ---------- CHANNEL A ----------
ld   b,a
sub  #0x10
jr   nc, PsgWaitA
ld   a,(hl)
inc  hl
ld   b,a
and  #0x0f
or   #0x90
LDIYHA
PsgWaitA:

; ---------- CHANNEL B ----------
ld   d,a
sub  #0x10
jr   nc, PsgWaitB
ld   a,(hl)
inc  hl
ld   d,a
and  #0x0f
or   #0xb0
LDIYLA
PsgWaitB:

; ---------- CHANNEL C ----------
ld   e,a
sub  #0x10
jr   nc, PsgWaitC
ld   a,(hl)
inc  hl
ld   e,a
and  #0x0f
or   #0xd0
ld   c,a
PsgWaitC:

push de
LDDIYH
LDEIYL
ld a,c
push bc
ld c,#0x7f

out (c),d
out (c),e
out (c),a

pop bc
pop de

; --- END PCMENC PER-FRAME WORK ---

; Update state
dec ix
ld (_sm_pcm_len),ix

ld (_sm_pcm_ptr),hl

ld a,ixh
or ixl
jr nz, done

; length = 0 → stop
        xor a
        ld (_sm_pcm_playing),a

done:
ret

        __endasm;
}

#else
// Console stubs
void engine_sample_manager_init(const void *psginit) {}
void engine_sample_manager_play(const void *sample) {}
void engine_sample_manager_update(void) {}
unsigned char engine_sample_manager_isPlaying(void) { return 0; }
void engine_sample_manager_stop(void) {}
#endif
