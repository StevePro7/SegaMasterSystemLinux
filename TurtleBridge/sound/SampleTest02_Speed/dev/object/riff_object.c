#include "riff_object.h"
#include "../banks/bank2.h"
#include "../banks/bank3.h"
#include "../banks/bank4.h"
#include "../banks/bank5.h"
#include "../banks/bank6.h"
#include "../banks/bank7.h"
#include "../banks/bank8.h"
#include "../banks/bank9.h"
#include "../banks/bank10.h"

const unsigned char *riff_sample_data[] =
{
	Riff__01_wav_pcmenc,
	Riff__02_wav_pcmenc,
	Riff__03_wav_pcmenc,
	Riff__04_wav_pcmenc,
	Riff__05_wav_pcmenc,
	Riff__06_wav_pcmenc,
	Riff__07_wav_pcmenc,
	Riff__08_wav_pcmenc,
	Riff__09_wav_pcmenc,
};

const unsigned char riff_sample_bank[] =
{
	Riff__01_wav_pcmenc_bank,
	Riff__02_wav_pcmenc_bank,
	Riff__03_wav_pcmenc_bank,
	Riff__04_wav_pcmenc_bank,
	Riff__05_wav_pcmenc_bank,
	Riff__06_wav_pcmenc_bank,
	Riff__07_wav_pcmenc_bank,
	Riff__08_wav_pcmenc_bank,
	Riff__09_wav_pcmenc_bank
};