/**
* Transbot PSG sound engine - faithful C port of the original Z80 driver
* (TransbotASM/engine/sound_manager.inc, $303A-$349A).
*
* The track data contains absolute ROM addresses ($349B-$3B4F), so the data
* is kept in psg_rom[] and read through rd()/rd16() using the original addresses.
* Channel RAM keeps the original 32-byte layout (offsets are the ix+n of the Z80 code).
*/

#include "sound_engine.h"
//#include "../object/psg_data.h"

#ifdef _CONSOLE
extern void host_psg_out( uint8_t v ) {}		// stevepro
#define psg_out(v) host_psg_out(v)
#else
__sfr __at 0x7F PSGPort;
#define psg_out(v) (PSGPort = (v))
#endif

#define FREQ_TABLE 0x349F
#define ENV_PTR_TABLE 0x3AAE

#define CH_COUNT 6
#define CH_SIZE 0x20

/* _RAM_DE00_ / _RAM_DE01_ / _RAM_DE02_ */
static uint8_t ram_cmd;
static uint8_t ram_flags;
static uint8_t ram_ch[ CH_COUNT * CH_SIZE ];

/* Pointer table at $30A2, indexed by command n (1-22) */
static const uint16_t track_ptr[ 23 ] = {
	0x0000, 0x3531, 0x35B5, 0x35EC, 0x3762, 0x3879, 0x38AB, 0x38D3,
	0x38FD, 0x390F, 0x3939, 0x31B3, 0x396A, 0x397F, 0x3994, 0x39C7,
	0x31B3, 0x31B3, 0x39FC, 0x3A35, 0x3A47, 0x3A55, 0x3A8C
};

static const uint8_t tbl_freq_latch[ 4 ] = { 0x80, 0xA0, 0xC0, 0xC0 };  /* $328C */
static const uint8_t tbl_vol_latch[ 4 ] = { 0x90, 0xB0, 0xD0, 0xF0 };   /* $3290 */

static uint8_t carry_flag;  /* carry left by mul_h_e, used as the divide start carry */

//static uint8_t rd( uint16_t addr )
//{
//	addr -= PSG_ROM_BASE;
//	return addr < PSG_ROM_SIZE ? psg_rom[ addr ] : 0;
//}



/* $3456 + $3465: clear all channel RAM and silence the PSG */
static void hard_reset( void )
{
	uint8_t i;

	for( i = 0; i < sizeof( ram_ch ); i++ ) {
		ram_ch[ i ] = 0;
	}
	psg_out( 0x9F );
	psg_out( 0xBF );
	psg_out( 0xDF );
	psg_out( 0xFF );
	ram_flags = 0;
}

void sound_engine_init( void )
{
	hard_reset();
	ram_cmd = 0x80;
}
