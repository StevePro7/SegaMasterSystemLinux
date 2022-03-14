#include "sound_object.h"
#include "../banks/bank4.h"
#include "../banks/bank5.h"
#include "../banks/bank6.h"
#include "../banks/bank7.h"
#include "../banks/bank8.h"
#include "../banks/bank9.h"
#include "../banks/bank10.h"
#include "../banks/bank11.h"

const unsigned char *sound_sample_data[] =
{
	Intro01_wav_pcmenc,
	Intro02_wav_pcmenc,
	Intro03_wav_pcmenc,
	Intro04_wav_pcmenc,
	Intro05_wav_pcmenc,
	Boss01_wav_pcmenc,
	Boss02_wav_pcmenc,
	Boss03_wav_pcmenc,
};

const unsigned char sound_sample_bank[] =
{
	Intro01_wav_pcmenc_bank,
	Intro02_wav_pcmenc_bank,
	Intro03_wav_pcmenc_bank,
	Intro04_wav_pcmenc_bank,
	Intro05_wav_pcmenc_bank,
	Boss01_wav_pcmenc_bank,
	Boss02_wav_pcmenc_bank,
	Boss03_wav_pcmenc_bank,
};
