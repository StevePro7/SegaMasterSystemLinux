#include "asm_manager.h"

__sfr __at 0xBF VDPControlPort;
__sfr __at 0xBE VDPDataPort;

void engine_asm_manager_clear_VRAM()
{
	__asm
	ld a, #0x00
		out( _VDPControlPort ), a
		ld a, #0x40
		out( _VDPControlPort ), a
		ld bc, #0x4000
		ClearVRAMLoop:
	ld a, #0x00
		out( _VDPDataPort ), a
		dec bc
		ld a, b
		or c
		jp nz, ClearVRAMLoop
	__endasm;

}