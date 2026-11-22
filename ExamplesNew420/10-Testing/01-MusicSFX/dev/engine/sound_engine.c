///**
//* Transbot PSG sound engine - faithful C port of the original Z80 driver
//* (TransbotASM/engine/sound_manager.inc, $303A-$349A).
//*
//* The track data contains absolute ROM addresses ($349B-$3B4F), so the data
//* is kept in psg_rom[] and read through rd()/rd16() using the original addresses.
//* Channel RAM keeps the original 32-byte layout (offsets are the ix+n of the Z80 code).
//*/
//
//#include "sound_engine.h"
//#include "../object/psg_data.h"
//
//#ifdef _CONSOLE
//extern void host_psg_out( uint8_t v ) {}		// stevepro
//#define psg_out(v) host_psg_out(v)
//#else
//__sfr __at 0x7F PSGPort;
//#define psg_out(v) (PSGPort = (v))
//#endif
//
//#define FREQ_TABLE 0x349F
//#define ENV_PTR_TABLE 0x3AAE
//
//#define CH_COUNT 6
//#define CH_SIZE 0x20
//
///* _RAM_DE00_ / _RAM_DE01_ / _RAM_DE02_ */
//static uint8_t ram_cmd;
//static uint8_t ram_flags;
//static uint8_t ram_ch[ CH_COUNT * CH_SIZE ];
//
///* Pointer table at $30A2, indexed by command n (1-22) */
//static const uint16_t track_ptr[ 23 ] = {
//	0x0000, 0x3531, 0x35B5, 0x35EC, 0x3762, 0x3879, 0x38AB, 0x38D3,
//	0x38FD, 0x390F, 0x3939, 0x31B3, 0x396A, 0x397F, 0x3994, 0x39C7,
//	0x31B3, 0x31B3, 0x39FC, 0x3A35, 0x3A47, 0x3A55, 0x3A8C
//};
//
//static const uint8_t tbl_freq_latch[ 4 ] = { 0x80, 0xA0, 0xC0, 0xC0 };  /* $328C */
//static const uint8_t tbl_vol_latch[ 4 ] = { 0x90, 0xB0, 0xD0, 0xF0 };   /* $3290 */
//
//static uint8_t carry_flag;  /* carry left by mul_h_e, used as the divide start carry */
//
//static uint8_t rd( uint16_t addr )
//{
//	addr -= PSG_ROM_BASE;
//	return addr < PSG_ROM_SIZE ? psg_rom[ addr ] : 0;
//}
//
//static uint16_t rd16( uint16_t addr )
//{
//	return ( uint16_t ) rd( addr ) | ( ( uint16_t ) rd( addr + 1 ) << 8 );
//}
//
///* $344E: write unless the channel is muted by an overriding SFX (bit 2) */
//static void chan_out( uint8_t *ix, uint8_t v )
//{
//	if( !( ix[ 0 ] & 4 ) ) {
//		psg_out( v );
//	}
//}
//
///* $2834: HL = H * E, keeping the carry the Z80 routine leaves behind */
//static uint16_t mul_h_e( uint8_t h, uint8_t e )
//{
//	uint16_t hl = ( uint16_t ) h << 8;
//	uint32_t s;
//	uint8_t b, c = 0;
//
//	for( b = 0; b < 8; b++ ) {
//		c = ( uint8_t ) ( ( hl >> 15 ) & 1 );
//		hl <<= 1;
//		if( c ) {
//			s = ( uint32_t ) hl + e;
//			c = ( uint8_t ) ( s >> 16 );
//			hl = ( uint16_t ) s;
//		}
//	}
//	carry_flag = c;
//	return hl;
//}
//
///* $3488: HL / E, bit-exact including the inverted-quotient carry trick */
//static uint8_t div_hl_e( uint16_t hl, uint8_t e, uint8_t carry )
//{
//	uint32_t s;
//	uint8_t b, a;
//
//	for( b = 0; b < 8; b++ ) {
//		s = ( ( uint32_t ) hl << 1 ) + carry;
//		carry = ( uint8_t ) ( ( s >> 16 ) & 1 );
//		hl = ( uint16_t ) s;
//		a = ( uint8_t ) ( hl >> 8 );
//		if( carry || a >= e ) {
//			a -= e;
//			hl = ( hl & 0x00FF ) | ( ( uint16_t ) a << 8 );
//			carry = 0;
//		} else {
//			carry = 1;
//		}
//	}
//	a = ( uint8_t ) hl;
//	a = ( uint8_t ) ( ( a << 1 ) | carry );
//	return ( uint8_t ) ~a;
//}
//
///* $3456 + $3465: clear all channel RAM and silence the PSG */
//static void hard_reset( void )
//{
//	uint8_t i;
//
//	for( i = 0; i < sizeof( ram_ch ); i++ ) {
//		ram_ch[ i ] = 0;
//	}
//	psg_out( 0x9F );
//	psg_out( 0xBF );
//	psg_out( 0xDF );
//	psg_out( 0xFF );
//	ram_flags = 0;
//}
//
///* $318D: copy channel headers (9 bytes each) from the track into channel RAM */
//static void load_channels( uint16_t src, uint8_t *dst )
//{
//	uint8_t n = rd( src++ );
//	uint8_t i;
//
//	while( n-- && dst < ram_ch + sizeof( ram_ch ) ) {
//		for( i = 0; i < 9; i++ ) {
//			dst[ i ] = rd( src++ );
//		}
//		dst[ 9 ] = 0x20;
//		dst[ 10 ] = 1;
//		dst[ 11 ] = 0;
//		dst[ 12 ] = 0;
//		dst[ 13 ] = 0;
//		dst += CH_SIZE;
//	}
//	ram_cmd = 0x80;
//}
//
//static uint16_t freq_lookup( uint8_t a )
//{
//	return rd16( FREQ_TABLE + ( uint8_t ) ( a + a ) );
//}
//
///* $3297: volume envelope step */
//static void env_step( uint8_t *ix, uint16_t base )
//{
//	uint8_t a, carry;
//	uint16_t sum;
//
//	for( ;;) {
//		a = rd( base + ( ix[ 14 ] >> 1 ) );
//		if( !( ix[ 14 ] & 1 ) ) {
//			a = ( uint8_t ) ( ( a >> 4 ) | ( a << 4 ) );
//			if( a == 0 ) {
//				ix[ 14 ] = 0;
//				continue;
//			}
//			if( a == 0x10 ) {
//				ix[ 14 ]--;
//				continue;
//			}
//			if( a == 0x20 ) {
//				a = 0;
//				break;
//			}
//		}
//		ix[ 14 ]++;
//		sum = ( uint16_t ) ( a | 0xF0 ) + ix[ 8 ];
//		carry = ( uint8_t ) ( sum > 0xFF );
//		a = ( uint8_t ) ( sum + 1 );
//		if( !carry ) {
//			a = 0;
//		}
//		break;
//	}
//	ix[ 22 ] = ( uint8_t ) ( ~a ) & 0x0F;
//}
//
///*
//* Commands $E0-$EE ($3362). *pde points at the parameter byte; the caller
//* advances it by one afterwards (the original's "+: inc de").
//* Returns 1 when the channel was terminated.
//*/
//static uint8_t do_cmd( uint8_t *ix, uint8_t cmd, uint16_t *pde )
//{
//	uint16_t de = *pde;
//	uint16_t target;
//	uint8_t a, c;
//	uint8_t *p;
//
//	switch( cmd & 0x1F ) {
//	case 0x00:  /* E0: tempo */
//		ix[ 2 ] = rd( de );
//		break;
//	case 0x01:  /* E1: volume */
//		ix[ 8 ] = rd( de );
//		break;
//	case 0x02:  /* E2: stop channel (clears all priority flags) */
//	case 0x0E:  /* EE: stop channel (keeps bit 5 priority flag) */
//		ram_flags = ( cmd & 0x1F ) == 0x02 ? 0 : ( ram_flags & 0x20 );
//		ix[ 0 ] = 0;
//		chan_out( ix, tbl_vol_latch[ ix[ 1 ] & 3 ] | 0x0F );
//		return 1;
//	case 0x03:  /* E3: noise control */
//		a = rd( de ) | 0xE0;
//		chan_out( ix, a );
//		if( ( uint8_t ) ( ( a | 0xFC ) + 1 ) == 0 ) {
//			ix[ 0 ] &= ~0x40;
//		} else {
//			ix[ 0 ] |= 0x40;
//		}
//		break;
//	case 0x04:  /* E4: envelope */
//		ix[ 7 ] = rd( de );
//		break;
//	case 0x05:  /* E5: jump */
//		de = rd16( de ) - 1;
//		break;
//	case 0x06:  /* E6: slide on */
//		ix[ 0 ] |= 0x20;
//		de--;
//		break;
//	case 0x07:  /* E7: slide off */
//		ix[ 0 ] &= ~0x20;
//		de--;
//		break;
//	case 0x08:  /* E8: raw frequency mode on */
//		ix[ 0 ] |= 0x08;
//		de--;
//		break;
//	case 0x09:  /* E9: raw frequency mode off */
//		ix[ 0 ] &= ~0x08;
//		de--;
//		break;
//	case 0x0A:  /* EA: call */
//		target = rd16( de );
//		de++;
//		ix[ 9 ]--;
//		c = ix[ 9 ];
//		ix[ 9 ]--;
//		ix[ c ] = ( uint8_t ) ( de >> 8 );
//		ix[ c - 1 ] = ( uint8_t ) de;
//		de = target - 1;
//		break;
//	case 0x0B:  /* EB: return */
//		c = ix[ 9 ];
//		de = ( uint16_t ) ix[ c ] | ( ( uint16_t ) ix[ c + 1 ] << 8 );
//		ix[ 9 ] += 2;
//		break;
//	case 0x0C:  /* EC: loop counter */
//		p = ix + ( uint8_t ) ( rd( de ) + 0x17 );
//		de++;
//		if( *p == 0 ) {
//			*p = rd( de );
//		}
//		de++;
//		( *p )--;
//		if( *p != 0 ) {
//			de = rd16( de ) - 1;
//		} else {
//			de++;
//		}
//		break;
//	case 0x0D:  /* ED: transpose */
//		ix[ 5 ] += rd( de );
//		break;
//	default:
//		de--;
//		break;
//	}
//
//	*pde = de;
//	return 0;
//}
//
///* $32CE: fetch the next note/command for a channel. Returns 1 if the channel ended. */
//static uint8_t note_fetch( uint8_t *ix )
//{
//	uint16_t de = ( uint16_t ) ix[ 3 ] | ( ( uint16_t ) ix[ 4 ] << 8 );
//	uint16_t f, dur;
//	uint8_t a;
//	uint8_t need_dur_byte = 0;
//	uint8_t have_dur = 0;
//
//	for( ;;) {
//		a = rd( de++ );
//
//		if( a >= 0xE0 ) {
//			if( do_cmd( ix, a, &de ) ) {
//				return 1;
//			}
//			de++;
//			continue;
//		}
//
//		if( ix[ 0 ] & 0x08 ) {
//			ix[ 17 ] = a;
//			ix[ 16 ] = rd( de++ );
//			if( ix[ 0 ] & 0x20 ) {
//				ix[ 21 ] = rd( de++ );
//				ix[ 20 ] = rd( de++ );
//			}
//			need_dur_byte = 1;
//			break;
//		}
//
//		if( !( a & 0x80 ) ) {
//			have_dur = 1;
//			break;
//		}
//
//		a -= 0x80;
//		if( a ) {
//			a += ix[ 5 ];
//		}
//		f = freq_lookup( a );
//		ix[ 16 ] = ( uint8_t ) f;
//		ix[ 17 ] = ( uint8_t ) ( f >> 8 );
//
//		if( ix[ 0 ] & 0x20 ) {
//			a = rd( de++ );
//			a = ( uint8_t ) ( a - 0x80 + ix[ 5 ] );
//			f = freq_lookup( a );
//			ix[ 20 ] = ( uint8_t ) f;
//			ix[ 21 ] = ( uint8_t ) ( f >> 8 );
//			need_dur_byte = 1;
//			break;
//		}
//
//		a = rd( de );
//		if( a & 0x80 ) {
//			break;  /* no duration byte: keep the previous duration */
//		}
//		de++;
//		have_dur = 1;
//		break;
//	}
//
//	if( need_dur_byte ) {
//		a = rd( de++ );
//		have_dur = 1;
//	}
//	if( have_dur ) {
//		dur = mul_h_e( a, ix[ 2 ] );
//		ix[ 10 ] = ( uint8_t ) dur;
//		ix[ 11 ] = ( uint8_t ) ( dur >> 8 );
//	}
//
//	ix[ 14 ] = 0;
//	ix[ 15 ] = 0;
//	ix[ 3 ] = ( uint8_t ) de;
//	ix[ 4 ] = ( uint8_t ) ( de >> 8 );
//	ix[ 12 ] = 0;
//	ix[ 13 ] = 0;
//	return 0;
//}
//
///* $31B9: per-frame update of one active channel */
//static void chan_update( uint8_t *ix )
//{
//	uint16_t de, hl, cur, tgt, diff, delta;
//	uint8_t a, q, neg;
//
//	de = ( ( uint16_t ) ix[ 12 ] | ( ( uint16_t ) ix[ 13 ] << 8 ) ) + 1;
//	ix[ 12 ] = ( uint8_t ) de;
//	ix[ 13 ] = ( uint8_t ) ( de >> 8 );
//	hl = ( uint16_t ) ix[ 10 ] | ( ( uint16_t ) ix[ 11 ] << 8 );
//	if( hl == de ) {
//		if( note_fetch( ix ) ) {
//			return;
//		}
//	}
//
//	cur = ( uint16_t ) ix[ 16 ] | ( ( uint16_t ) ix[ 17 ] << 8 );
//	if( cur == 0 ) {
//		ix[ 22 ] = 0x0F;
//		goto volume_out;
//	}
//
//	if( !( ix[ 0 ] & 0x20 ) ) {
//		ix[ 18 ] = ( uint8_t ) cur;
//		ix[ 19 ] = ( uint8_t ) ( cur >> 8 );
//	} else {
//		tgt = ( uint16_t ) ix[ 20 ] | ( ( uint16_t ) ix[ 21 ] << 8 );
//		diff = ( uint16_t ) ( tgt - cur );
//		neg = ( diff & 0x8000 ) != 0;
//		a = ( uint8_t ) diff;
//		if( neg ) {
//			a = ( uint8_t ) ( 0 - a );
//		}
//		hl = mul_h_e( a, ix[ 12 ] );
//		q = div_hl_e( hl, ix[ 10 ], carry_flag );
//		delta = neg ? ( uint16_t ) ( 0 - ( uint16_t ) q ) : q;
//		cur += delta;
//		ix[ 18 ] = ( uint8_t ) cur;
//		ix[ 19 ] = ( uint8_t ) ( cur >> 8 );
//	}
//
//	/* $3232: volume */
//	if( ix[ 7 ] == 0 ) {
//		ix[ 22 ] = ( uint8_t ) ( ~ix[ 8 ] ) & 0x0F;
//	} else {
//		a = ix[ 7 ] & 0x7F;
//		env_step( ix, rd16( ENV_PTR_TABLE + ( uint16_t ) ( uint8_t ) ( a - 1 ) * 2 ) );
//	}
//
//	if( !( ix[ 0 ] & 0x40 ) ) {
//		chan_out( ix, ( ix[ 18 ] & 0x0F ) | tbl_freq_latch[ ix[ 1 ] & 3 ] );
//		a = ( uint8_t ) ( ( ix[ 18 ] & 0xF0 ) | ix[ 19 ] );
//		chan_out( ix, ( uint8_t ) ( ( a >> 4 ) | ( a << 4 ) ) );
//	}
//
//volume_out:
//	chan_out( ix, tbl_vol_latch[ ix[ 1 ] & 3 ] | ix[ 22 ] );
//}
//
///* Command dispatch ($30A2/$30CE jump table) for _RAM_DE00_ */
//static void cmd_process( void )
//{
//	uint8_t a = ram_cmd;
//	uint8_t n, f;
//	uint16_t p;
//
//	if( !( a & 0x80 ) || a >= 0x97 ) {
//		hard_reset();
//		return;
//	}
//	n = a - 0x80;
//	if( n == 0 ) {
//		return;
//	}
//	p = track_ptr[ n ];
//	f = ram_flags;
//
//	switch( n ) {
//	case 1: case 2: case 3: case 4: case 21:
//		hard_reset();
//		load_channels( p, ram_ch );
//		return;
//	case 5: case 6: case 7: case 9: case 10:
//		if( f & 0x0F ) break;
//		ram_flags = 0x10;
//		load_channels( p, ram_ch + 4 * CH_SIZE );
//		return;
//	case 8:
//		if( f & 0x1F ) break;
//		psg_out( 0xDF );
//		load_channels( p, ram_ch + 5 * CH_SIZE );
//		return;
//	case 12:
//		if( f & 0x01 ) break;
//		ram_flags = f | 2;
//		load_channels( p, ram_ch + 4 * CH_SIZE );
//		return;
//	case 13:
//		if( f & 0x03 ) break;
//		ram_flags = 4;
//		load_channels( p, ram_ch + 4 * CH_SIZE );
//		return;
//	case 14:
//		if( f & 0x01 ) break;
//		ram_flags = f | 2;
//		psg_out( 0xDF );
//		load_channels( p, ram_ch + 5 * CH_SIZE );
//		return;
//	case 15:
//		if( f & 0x0F ) break;
//		ram_flags = 0x10;
//		psg_out( 0xDF );
//		load_channels( p, ram_ch + 4 * CH_SIZE );
//		return;
//	case 18:
//		if( f & 0x03 ) break;
//		ram_flags = 4;
//		psg_out( 0xDF );
//		load_channels( p, ram_ch + 3 * CH_SIZE );
//		return;
//	case 19:
//		ram_flags = f | 1;
//		load_channels( p, ram_ch + 3 * CH_SIZE );
//		return;
//	case 20:
//		load_channels( p, ram_ch );
//		return;
//	case 22:
//		if( f & 0x03 ) break;
//		ram_flags = 4;
//		load_channels( p, ram_ch + 4 * CH_SIZE );
//		return;
//	default:
//		break;
//	}
//
//	ram_cmd = 0x80;  /* command ignored (lower priority sound playing, or unused) */
//}
//
//void sound_engine_init( void )
//{
//	hard_reset();
//	ram_cmd = 0x80;
//}
//
///* $303A */
//void sound_engine_update( void )
//{
//	uint8_t i;
//	uint8_t *ix;
//
//	cmd_process();
//
//	/* SFX channels 3-5 mute the music channels 0-2 they overlay */
//	for( i = 0; i < 3; i++ ) {
//		if( ram_ch[ ( i + 3 ) * CH_SIZE ] & 0x80 ) {
//			ram_ch[ i * CH_SIZE ] |= 4;
//		} else {
//			ram_ch[ i * CH_SIZE ] &= ~4;
//		}
//	}
//
//	for( i = 0; i < CH_COUNT; i++ ) {
//		ix = ram_ch + i * CH_SIZE;
//		if( ix[ 0 ] & 0x80 ) {
//			chan_update( ix );
//		}
//	}
//}
//
//void sound_engine_play_cmd( uint8_t n )
//{
//	ram_cmd = 0x80 + n;
//}
//
//void sound_engine_play_track( uint8_t track_id )
//{
//	sound_engine_play_cmd( track_id + 1 );
//}
//
//void sound_engine_stop( void )
//{
//	hard_reset();
//	ram_cmd = 0x80;
//}
//
//uint8_t sound_engine_get_state( void )
//{
//	return ram_cmd;
//}
