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
#include "../banks/bank11.h"
#include "../banks/bank12.h"
#include "../banks/bank13.h"
#include "../banks/bank14.h"
#include "../banks/bank15.h"

const unsigned char *riff_sample_data[] =
{
	Riff_Sound_VHjump02_01_wav_pcmenc,
	Riff_Sound_VHjump02_02_wav_pcmenc,
	Riff_Sound_VHdoctor_01_wav_pcmenc,
	Riff_Sound_VHdoctor_02_wav_pcmenc,
	Riff_Sound_VHdoctor_03_wav_pcmenc,
	Riff_Sound_VHshriek_01_wav_pcmenc,
	Riff_Sound_Youza40_01_wav_pcmenc,
	Riff_Sound_GnRSucked_01_wav_pcmenc,
	Riff_Sound_GnRSucked_02_wav_pcmenc,
	Riff_Sound_GnRSucked_03_wav_pcmenc,
};

const unsigned char riff_sample_bank[] =
{
	Riff_Sound_VHjump02_01_wav_pcmenc_bank,
	Riff_Sound_VHjump02_02_wav_pcmenc_bank,
	Riff_Sound_VHdoctor_01_wav_pcmenc_bank,
	Riff_Sound_VHdoctor_02_wav_pcmenc_bank,
	Riff_Sound_VHdoctor_03_wav_pcmenc_bank,
	Riff_Sound_VHshriek_01_wav_pcmenc_bank,
	Riff_Sound_Youza40_01_wav_pcmenc_bank,
	Riff_Sound_GnRSucked_01_wav_pcmenc_bank,
	Riff_Sound_GnRSucked_02_wav_pcmenc_bank,
	Riff_Sound_GnRSucked_03_wav_pcmenc_bank,
};

/*
const unsigned char *riff_sample_data[] =
{
	Riff_Sound_Excellent10_01_wav_pcmenc,
	Riff_Sound_Excellent20_01_wav_pcmenc,
	Riff_Sound_Excellent30_01_wav_pcmenc,
	Riff_Sound_Excellent40_01_wav_pcmenc,
	Riff_Sound_Excellent50_01_wav_pcmenc,
	Riff_Sound_SimpsonsSucked_01_wav_pcmenc,
	SoundFx_wav_pcmenc,
	SoundFx03_wav_pcmenc,
	SoundFx04_wav_pcmenc,
	SoundFx05_wav_pcmenc,
	SoundFx06_wav_pcmenc,
	SoundFx07_wav_pcmenc,
	SoundFx08_wav_pcmenc,
	Riff__09_wav_pcmenc,
};

const unsigned char riff_sample_bank[] =
{
	Riff_Sound_Excellent10_01_wav_pcmenc_bank,
	Riff_Sound_Excellent20_01_wav_pcmenc_bank,
	Riff_Sound_Excellent30_01_wav_pcmenc_bank,
	Riff_Sound_Excellent40_01_wav_pcmenc_bank,
	Riff_Sound_Excellent50_01_wav_pcmenc_bank,
	Riff_Sound_SimpsonsSucked_01_wav_pcmenc_bank,
	SoundFx_wav_pcmenc_bank,
	SoundFx03_wav_pcmenc_bank,
	SoundFx04_wav_pcmenc_bank,
	SoundFx05_wav_pcmenc_bank,
	SoundFx06_wav_pcmenc_bank,
	SoundFx07_wav_pcmenc_bank,
	SoundFx08_wav_pcmenc_bank,
	Riff__09_wav_pcmenc_bank,
};
*/