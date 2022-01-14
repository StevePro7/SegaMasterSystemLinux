#include "riff_object.h"
#include "../banks/bank2.h"
#include "../banks/bank3.h"
#include "../banks/bank4.h"
#include "../banks/bank5.h"
#include "../banks/bank6.h"
#include "../banks/bank7.h"

const unsigned char *riff_sample_data[] =
{
	SoundFx_wav_pcmenc,
	SoundFx03_wav_pcmenc,
	SoundFx04_wav_pcmenc,
	SoundFx05_wav_pcmenc,
	SoundFx06_wav_pcmenc,
	SoundFx07_wav_pcmenc,
};

const unsigned char riff_sample_bank[] =
{
	SoundFx_wav_pcmenc_bank,
	SoundFx03_wav_pcmenc_bank,
	SoundFx04_wav_pcmenc_bank,
	SoundFx05_wav_pcmenc_bank,
	SoundFx06_wav_pcmenc_bank,
	SoundFx07_wav_pcmenc_bank,
};