#include "_gun_manager.h"

#ifdef _CONSOLE
#include "../../tmp/inlib.h"
#else
#include "../../lib/inlib.h"
#endif

struct inlibDevice *device;

unsigned char devkit_get_device_type()
{
	return device->type;
}
unsigned char devkit_get_device_absx()
{
	return device->abs.x;
}
unsigned char devkit_get_device_absy()
{
	return device->abs.y;
}
//void devkit_set_device_absx( unsigned char x )
//{
//	device->abs.x = x;
//}
//void devkit_set_device_absy( unsigned char y )
//{
//	device->abs.y = y;
//}
//#define INLIB_TYPE_NONE      0x00
//#define INLIB_TYPE_SMS       0x01
//#define INLIB_TYPE_MD3	     0x02
//#define INLIB_TYPE_MD6	     0x03
//#define INLIB_TYPE_PADDLE    0x10
//#define INLIB_TYPE_GRAPHIC_BOARD 0x11
//#define INLIB_TYPE_SPORTSPAD 0x20
//#define INLIB_TYPE_MDMOUSE   0x40
//#define INLIB_TYPE_SPORTSPAD_MARKIII 0x80

//#define INLIB_TYPE_PHASER      0x04
//#define INLIB_TYPE_PHASER_HIT  0x81
unsigned char devkit_INLIB_TYPE_PHASER_HIT()
{
	return INLIB_TYPE_PHASER_HIT;
}
//#define INLIB_ISGAMEPAD(type)  (!(type & 0xC0))
//#define INLIB_ISPADDLE(type) (type == INLIB_TYPE_PADDLE)
//#define INLIB_ISGRAPHICBOARD(type) (type == INLIB_GRAPHIC_BOARD)
//#define INLIB_ISRELATIVE(type) (type & 0x20)
//#define INLIB_ISRELATIVE16(type) (type & 0x40)
//#define INLIB_ISABSOLUTE(type) (type & 0x80)

//#define INLIB_BTN_UP       0x01
//#define INLIB_BTN_DOWN     0x02
//#define INLIB_BTN_LEFT     0x04
//#define INLIB_BTN_RIGHT    0x08

//#define INLIB_BTN_1        0x10 // Also MDpad B, Paddle button, mouse Left button, phase trigger
unsigned int devkit_INLIB_BTN_1()
{
	return INLIB_BTN_1;
}
//#define INLIB_BTN_START    (INLIB_BTN_1)
//#define INLIB_BTN_2        0x20 // Also MDpad C, mouse right button
//#define INLIB_BTN_MD_A     0x40 // Also mouse Middle butotn
//#define INLIB_BTN_MD_START 0x80 // Also Mouse start button
//#define INLIB_BTN_MD_Z     0x100
//#define INLIB_BTN_MD_Y     0x200
//#define INLIB_BTN_MD_X     0x400
//#define INLIB_BTN_MD_MODE  0x800

//#define INLIB_BTN_GRAF_PEN_DOWN  INLIB_BTN_1
//#define INLIB_BTN_GRAF_1         INLIB_BTN_2
//#define INLIB_BTN_GRAF_2         INLIB_BTN_MD_A
//#define INLIB_BTN_GRAF_3         INLIB_BTN_START

//#define INLIB_BTN_ANYDIR   (INLIB_BTN_UP|INLIB_BTN_DOWN|INLIB_BTN_LEFT|INLIB_BTN_RIGHT)

// Initialize library internals
//void inlib_init( void ) {}
void devkit_inlib_init()
{
	inlib_init();
}

//#define INLIB_PORTCOUNT	2

//#define INLIB_PORTA	0
//#define INLIB_PORTB	1

//#define inlib_getPortPtr(id) ((id) ? &inlib_portB : &inlib_portA)
//struct inlibDevice devkit_inlib_getPortPtr( unsigned char port )
void devkit_inlib_getPortPtr( unsigned char port )
{
	device = inlib_getPortPtr( port );
	//return inlib_getPortPtr( port );
	//inlib_getPortPtr( port );
}
//extern volatile struct inlibDevice inlib_portA;
//extern volatile struct inlibDevice inlib_portB;

//unsigned short inlib_keysStatus( unsigned char port ) /*__z88dk_fastcall __naked*/ { return 0; }
unsigned short devkit_inlib_keysStatus( unsigned char port )
{
	return inlib_keysStatus( port );
}
//unsigned short inlib_keysPressed( unsigned char port ) /*__z88dk_fastcall __naked*/ { return 0; }
//void devkit_inlib_pollSMS(unsigned char port) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_readPaddle (unsigned char port) /*__z88dk_fastcall __naked*/ {}
//void devkit_inlib_readMDpad(unsigned char port) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_readSportsPad(unsigned char port) /*__z88dk_fastcall __naked*/ {}
//void devkit_inlib_readMDmouse(unsigned char port) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_readSportsPad_markIII(unsigned char port) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_pollLightPhaser_trigger(unsigned char port) /*__naked __z88dk_fastcall*/ {}
void devkit_inlib_pollLightPhaser_trigger( unsigned char port )
{
	inlib_pollLightPhaser_trigger( port );
}

//void devkit_inlib_pollLightPhaser_position(unsigned char port) /*__naked __z88dk_fastcall*/ {}
void devkit_inlib_pollLightPhaser_position( unsigned char port )
{
	inlib_pollLightPhaser_position( port );
}
//void devkit_inlib_readGraphicBoard(unsigned char port) /*__z88dk_fastcall __naked*/ {}
//void devkit_inlib_getportA(void) /*__naked __z88dk_fastcall __preserves_regs(b,c,d,e,iyl,iyh)*/ {}
//void devkit_inlib_getportB(void) /*__naked __z88dk_fastcall __preserves_regs(b,c,d,e,iyl,iyh)*/ {}

//void devkit_inlib_portA_TH_in_TR_in(void) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_portB_TH_in_TR_in(void) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_portA_TH_out_TR_in(void) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_portB_TH_out_TR_in(void) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_portA_TH_out_TR_out(void) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_portB_TH_out_TR_out(void) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_portA_TH_low(void) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_portA_TH_high(void) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_portB_TH_low(void) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_portB_TH_high(void) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_portA_TR_low(void) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_portA_TR_high(void) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_portB_TR_low(void) /*__naked __z88dk_fastcall*/ {}
//void devkit_inlib_portB_TR_high(void) /*__naked __z88dk_fastcall*/ {}