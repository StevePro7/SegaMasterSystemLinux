;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.0 #12072 (MINGW64)
;--------------------------------------------------------
	.module montylib
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _GSL_getCurrentY
	.globl _GSL_getCurrentX
	.globl _GSL_getMapHeightInPixels
	.globl _GSL_getMapWidthInPixels
	.globl _GSL_VBlank
	.globl _GSL_scroll
	.globl _GSL_refreshVDP
	.globl _GSL_positionWindow
	.globl _GSL_initializeMap
	.globl _SMS_VRAMmemset
	.globl _SMS_copySpritestoSAT
	.globl _SMS_waitForVBlank
	.globl _SMS_setSpriteMode
	.globl _SMS_setBackdropColor
	.globl _SMS_VDPturnOnFeature
	.globl _SMS_init
	.globl _manage_sound_frame
	.globl _rand_index
	.globl _frame_cnt
	.globl _pause
	.globl _SMS_SRAM
	.globl _SRAM_bank_to_be_mapped_on_slot2
	.globl _ROM_bank_to_be_mapped_on_slot2
	.globl _randLUT
	.globl _init_console
	.globl _init_scroll
	.globl _move_scroll
	.globl _get_scroll_x
	.globl _get_scroll_y
	.globl _waitForFrame
	.globl _rand
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$ROM_bank_to_be_mapped_on_slot2$0_0$0 == 0xffff
_ROM_bank_to_be_mapped_on_slot2	=	0xffff
G$SRAM_bank_to_be_mapped_on_slot2$0_0$0 == 0xfffc
_SRAM_bank_to_be_mapped_on_slot2	=	0xfffc
G$SMS_SRAM$0_0$0 == 0x8000
_SMS_SRAM	=	0x8000
G$pause$0_0$0==.
_pause::
	.ds 1
G$frame_cnt$0_0$0==.
_frame_cnt::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$rand_index$0_0$0==.
_rand_index::
	.ds 1
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$init_console$0$0	= .
	.globl	G$init_console$0$0
	C$montylib.c$16$0_0$90	= .
	.globl	C$montylib.c$16$0_0$90
;montylib.c:16: void init_console() {
;	---------------------------------
; Function init_console
; ---------------------------------
_init_console::
	C$montylib.c$17$1_0$90	= .
	.globl	C$montylib.c$17$1_0$90
;montylib.c:17: SMS_init();
	call	_SMS_init
	C$montylib.c$18$1_0$90	= .
	.globl	C$montylib.c$18$1_0$90
;montylib.c:18: SMS_VRAMmemset(0x4000, 0x00, 0x4000);
	ld	hl, #0x4000
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	l, #0x00
	push	hl
	call	_SMS_VRAMmemset
	pop	af
	C$montylib.c$19$1_0$90	= .
	.globl	C$montylib.c$19$1_0$90
;montylib.c:19: SMS_VRAMmemset(0xC000, 0x00, 0x0020);
	inc	sp
	ld	hl,#0x0020
	ex	(sp),hl
	xor	a, a
	push	af
	inc	sp
	ld	hl, #0xc000
	push	hl
	call	_SMS_VRAMmemset
	pop	af
	pop	af
	inc	sp
	C$montylib.c$20$1_0$90	= .
	.globl	C$montylib.c$20$1_0$90
;montylib.c:20: SMS_setSpriteMode(SPRITEMODE_NORMAL);
	ld	l, #0x00
	call	_SMS_setSpriteMode
	C$montylib.c$21$1_0$90	= .
	.globl	C$montylib.c$21$1_0$90
;montylib.c:21: SMS_displayOn();
	ld	hl, #0x0140
	call	_SMS_VDPturnOnFeature
	C$montylib.c$22$1_0$90	= .
	.globl	C$montylib.c$22$1_0$90
;montylib.c:22: SMS_VDPturnOnFeature(VDPFEATURE_LEFTCOLBLANK);
	ld	hl, #0x0020
	call	_SMS_VDPturnOnFeature
	C$montylib.c$23$1_0$90	= .
	.globl	C$montylib.c$23$1_0$90
;montylib.c:23: SMS_setBackdropColor(0);
	ld	l, #0x00
	call	_SMS_setBackdropColor
	C$montylib.c$24$1_0$90	= .
	.globl	C$montylib.c$24$1_0$90
;montylib.c:24: pause = false;
	ld	a, #0x00
	ld	(#_pause), a
	C$montylib.c$25$1_0$90	= .
	.globl	C$montylib.c$25$1_0$90
;montylib.c:25: }
	C$montylib.c$25$1_0$90	= .
	.globl	C$montylib.c$25$1_0$90
	XG$init_console$0$0	= .
	.globl	XG$init_console$0$0
	ret
G$randLUT$0_0$0 == .
_randLUT:
	.db #0x0f	; 15
	.db #0x6a	; 106	'j'
	.db #0x09	; 9
	.db #0x8e	; 142
	.db #0x29	; 41
	.db #0x7c	; 124
	.db #0x76	; 118	'v'
	.db #0x7d	; 125
	.db #0xed	; 237
	.db #0x83	; 131
	.db #0x34	; 52	'4'
	.db #0x6a	; 106	'j'
	.db #0xc2	; 194
	.db #0xd0	; 208
	.db #0x5c	; 92
	.db #0x38	; 56	'8'
	.db #0x80	; 128
	.db #0x0f	; 15
	.db #0x4d	; 77	'M'
	.db #0xa8	; 168
	.db #0x68	; 104	'h'
	.db #0x34	; 52	'4'
	.db #0xbf	; 191
	.db #0xda	; 218
	.db #0xcc	; 204
	.db #0x9a	; 154
	.db #0xc1	; 193
	.db #0x65	; 101	'e'
	.db #0xf6	; 246
	.db #0x46	; 70	'F'
	.db #0x0a	; 10
	.db #0xe6	; 230
	.db #0xa0	; 160
	.db #0x2b	; 43
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x38	; 56	'8'
	.db #0xb5	; 181
	.db #0x9a	; 154
	.db #0xc3	; 195
	.db #0xe9	; 233
	.db #0xa8	; 168
	.db #0x6f	; 111	'o'
	.db #0x0e	; 14
	.db #0xbc	; 188
	.db #0x1b	; 27
	.db #0x8a	; 138
	.db #0x70	; 112	'p'
	.db #0x42	; 66	'B'
	.db #0x58	; 88	'X'
	.db #0x22	; 34
	.db #0x9d	; 157
	.db #0x93	; 147
	.db #0x41	; 65	'A'
	.db #0x13	; 19
	.db #0xb4	; 180
	.db #0x8f	; 143
	.db #0x65	; 101	'e'
	.db #0xa6	; 166
	.db #0x78	; 120	'x'
	.db #0xb7	; 183
	.db #0x3e	; 62
	.db #0x24	; 36
	.db #0xbe	; 190
	.db #0xb3	; 179
	.db #0xab	; 171
	.db #0x2e	; 46
	.db #0x14	; 20
	.db #0xf9	; 249
	.db #0x35	; 53	'5'
	.db #0xc3	; 195
	.db #0x77	; 119	'w'
	.db #0x31	; 49	'1'
	.db #0x5c	; 92
	.db #0x96	; 150
	.db #0x1a	; 26
	.db #0xc7	; 199
	.db #0x5e	; 94
	.db #0xe5	; 229
	.db #0xa2	; 162
	.db #0x49	; 73	'I'
	.db #0x06	; 6
	.db #0x2f	; 47
	.db #0xff	; 255
	.db #0xba	; 186
	.db #0x24	; 36
	.db #0x0f	; 15
	.db #0x3f	; 63
	.db #0x6c	; 108	'l'
	.db #0x5d	; 93
	.db #0x23	; 35
	.db #0x14	; 20
	.db #0xc5	; 197
	.db #0x54	; 84	'T'
	.db #0xd8	; 216
	.db #0x68	; 104	'h'
	.db #0x54	; 84	'T'
	.db #0x01	; 1
	.db #0x2b	; 43
	.db #0xc0	; 192
	.db #0x43	; 67	'C'
	.db #0xa5	; 165
	.db #0xc1	; 193
	.db #0x56	; 86	'V'
	.db #0xb4	; 180
	.db #0x8b	; 139
	.db #0xbb	; 187
	.db #0x0b	; 11
	.db #0x58	; 88	'X'
	.db #0x00	; 0
	.db #0x34	; 52	'4'
	.db #0x44	; 68	'D'
	.db #0x9e	; 158
	.db #0x92	; 146
	.db #0xc1	; 193
	.db #0x10	; 16
	.db #0x65	; 101	'e'
	.db #0x93	; 147
	.db #0x75	; 117	'u'
	.db #0x87	; 135
	.db #0xc1	; 193
	.db #0x91	; 145
	.db #0x7b	; 123
	.db #0x09	; 9
	.db #0x15	; 21
	.db #0xd2	; 210
	.db #0x85	; 133
	.db #0xd8	; 216
	.db #0xa3	; 163
	.db #0x85	; 133
	.db #0xb8	; 184
	.db #0x32	; 50	'2'
	.db #0xc8	; 200
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x61	; 97	'a'
	.db #0xd4	; 212
	.db #0xf4	; 244
	.db #0x3d	; 61
	.db #0xca	; 202
	.db #0xd5	; 213
	.db #0x85	; 133
	.db #0xff	; 255
	.db #0x64	; 100	'd'
	.db #0x51	; 81	'Q'
	.db #0x8e	; 142
	.db #0x21	; 33
	.db #0xb8	; 184
	.db #0x32	; 50	'2'
	.db #0xa6	; 166
	.db #0x56	; 86	'V'
	.db #0xb7	; 183
	.db #0x8f	; 143
	.db #0x45	; 69	'E'
	.db #0x3a	; 58
	.db #0xff	; 255
	.db #0x39	; 57	'9'
	.db #0x33	; 51	'3'
	.db #0xfc	; 252
	.db #0x63	; 99	'c'
	.db #0xb8	; 184
	.db #0xd5	; 213
	.db #0xca	; 202
	.db #0xc5	; 197
	.db #0x11	; 17
	.db #0x35	; 53	'5'
	.db #0xee	; 238
	.db #0xe2	; 226
	.db #0x65	; 101	'e'
	.db #0x65	; 101	'e'
	.db #0xbd	; 189
	.db #0xc8	; 200
	.db #0x31	; 49	'1'
	.db #0x99	; 153
	.db #0xa1	; 161
	.db #0x04	; 4
	.db #0x86	; 134
	.db #0xff	; 255
	.db #0x90	; 144
	.db #0x47	; 71	'G'
	.db #0x3b	; 59
	.db #0xd0	; 208
	.db #0x5b	; 91
	.db #0x04	; 4
	.db #0xbc	; 188
	.db #0xa9	; 169
	.db #0x8a	; 138
	.db #0x35	; 53	'5'
	.db #0xa3	; 163
	.db #0x2b	; 43
	.db #0xb3	; 179
	.db #0x3c	; 60
	.db #0x3c	; 60
	.db #0x3d	; 61
	.db #0xcf	; 207
	.db #0xeb	; 235
	.db #0x73	; 115	's'
	.db #0xb4	; 180
	.db #0xdd	; 221
	.db #0xb1	; 177
	.db #0x86	; 134
	.db #0x65	; 101	'e'
	.db #0xd2	; 210
	.db #0x03	; 3
	.db #0xac	; 172
	.db #0x28	; 40
	.db #0x9b	; 155
	.db #0x7f	; 127
	.db #0xb2	; 178
	.db #0xec	; 236
	.db #0x1b	; 27
	.db #0xd5	; 213
	.db #0x0a	; 10
	.db #0x18	; 24
	.db #0x11	; 17
	.db #0xcd	; 205
	.db #0x2e	; 46
	.db #0x4a	; 74	'J'
	.db #0x9c	; 156
	.db #0xa0	; 160
	.db #0x58	; 88	'X'
	.db #0x59	; 89	'Y'
	.db #0xf8	; 248
	.db #0x2b	; 43
	.db #0x38	; 56	'8'
	.db #0x99	; 153
	.db #0x53	; 83	'S'
	.db #0x3c	; 60
	.db #0xb8	; 184
	.db #0x3c	; 60
	.db #0x99	; 153
	.db #0xe5	; 229
	.db #0x6f	; 111	'o'
	.db #0x5c	; 92
	.db #0x2b	; 43
	.db #0x2d	; 45
	.db #0xe0	; 224
	.db #0x06	; 6
	.db #0xca	; 202
	.db #0xde	; 222
	.db #0x01	; 1
	.db #0x3c	; 60
	.db #0xeb	; 235
	.db #0x91	; 145
	.db #0xa4	; 164
	.db #0x28	; 40
	.db #0x52	; 82	'R'
	.db #0xb1	; 177
	.db #0x60	; 96
	.db #0x56	; 86	'V'
	.db #0xd3	; 211
	.db #0xae	; 174
	.db #0x38	; 56	'8'
	.db #0x69	; 105	'i'
	.db 0x00
	G$init_scroll$0$0	= .
	.globl	G$init_scroll$0$0
	C$montylib.c$27$1_0$92	= .
	.globl	C$montylib.c$27$1_0$92
;montylib.c:27: void init_scroll(void *scrolltable, void *metatiles, unsigned int scroll_x, unsigned int scroll_y) {
;	---------------------------------
; Function init_scroll
; ---------------------------------
_init_scroll::
	C$montylib.c$28$1_0$92	= .
	.globl	C$montylib.c$28$1_0$92
;montylib.c:28: GSL_initializeMap(scrolltable, metatiles);
	ld	iy, #4
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_GSL_initializeMap
	pop	af
	pop	af
	C$montylib.c$29$1_0$92	= .
	.globl	C$montylib.c$29$1_0$92
;montylib.c:29: GSL_positionWindow(scroll_x,scroll_y);
	ld	iy, #8
	add	iy, sp
	ld	l, 0 (iy)
	ld	h, 1 (iy)
	push	hl
	ld	l, -2 (iy)
	ld	h, -1 (iy)
	push	hl
	call	_GSL_positionWindow
	pop	af
	pop	af
	C$montylib.c$30$1_0$92	= .
	.globl	C$montylib.c$30$1_0$92
;montylib.c:30: GSL_refreshVDP();
	C$montylib.c$31$1_0$92	= .
	.globl	C$montylib.c$31$1_0$92
;montylib.c:31: }
	C$montylib.c$31$1_0$92	= .
	.globl	C$montylib.c$31$1_0$92
	XG$init_scroll$0$0	= .
	.globl	XG$init_scroll$0$0
	jp	_GSL_refreshVDP
	G$move_scroll$0$0	= .
	.globl	G$move_scroll$0$0
	C$montylib.c$33$1_0$94	= .
	.globl	C$montylib.c$33$1_0$94
;montylib.c:33: void move_scroll(signed char delta_x, signed char delta_y) {
;	---------------------------------
; Function move_scroll
; ---------------------------------
_move_scroll::
	push	ix
	ld	ix,#0
	add	ix,sp
	C$montylib.c$34$1_0$94	= .
	.globl	C$montylib.c$34$1_0$94
;montylib.c:34: signed int currentx = GSL_getCurrentX();
	call	_GSL_getCurrentX
	C$montylib.c$35$1_0$94	= .
	.globl	C$montylib.c$35$1_0$94
;montylib.c:35: signed int currenty = GSL_getCurrentY();
	push	hl
	call	_GSL_getCurrentY
	pop	de
	ld	c, l
	ld	b, h
	C$montylib.c$36$1_0$94	= .
	.globl	C$montylib.c$36$1_0$94
;montylib.c:36: if((currentx + delta_x) < 0) delta_x = 0;
	ld	a, 4 (ix)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	bit	7, h
	jr	Z, 00102$
	ld	4 (ix), #0
00102$:
	C$montylib.c$37$1_0$94	= .
	.globl	C$montylib.c$37$1_0$94
;montylib.c:37: if((currentx + delta_x) > (GSL_getMapWidthInPixels() - 256)) delta_x = 0;
	ld	a, 4 (ix)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	push	bc
	push	hl
	call	_GSL_getMapWidthInPixels
	pop	de
	pop	bc
	ld	a,h
	add	a,#0xff
	ld	h, a
	xor	a, a
	sbc	hl, de
	jr	NC, 00104$
	ld	4 (ix), #0
00104$:
	C$montylib.c$38$1_0$94	= .
	.globl	C$montylib.c$38$1_0$94
;montylib.c:38: if((currenty + delta_y) < 0) delta_y = 0;
	ld	a, 5 (ix)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, bc
	bit	7, h
	jr	Z, 00106$
	ld	5 (ix), #0
00106$:
	C$montylib.c$39$1_0$94	= .
	.globl	C$montylib.c$39$1_0$94
;montylib.c:39: if((currenty + delta_y) > (GSL_getMapHeightInPixels() - 192)) delta_y = 0;
	ld	a, 5 (ix)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, bc
	push	hl
	call	_GSL_getMapHeightInPixels
	pop	de
	ld	a, l
	add	a, #0x40
	ld	l, a
	ld	a, h
	adc	a, #0xff
	ld	h, a
	xor	a, a
	sbc	hl, de
	jr	NC, 00108$
	ld	5 (ix), #0
00108$:
	C$montylib.c$41$1_0$94	= .
	.globl	C$montylib.c$41$1_0$94
;montylib.c:41: GSL_scroll(delta_x,delta_y);
	ld	h, 5 (ix)
	ld	l, 4 (ix)
	push	hl
	call	_GSL_scroll
	pop	af
	C$montylib.c$42$1_0$94	= .
	.globl	C$montylib.c$42$1_0$94
;montylib.c:42: }
	pop	ix
	C$montylib.c$42$1_0$94	= .
	.globl	C$montylib.c$42$1_0$94
	XG$move_scroll$0$0	= .
	.globl	XG$move_scroll$0$0
	ret
	G$get_scroll_x$0$0	= .
	.globl	G$get_scroll_x$0$0
	C$montylib.c$44$1_0$95	= .
	.globl	C$montylib.c$44$1_0$95
;montylib.c:44: unsigned int get_scroll_x() {
;	---------------------------------
; Function get_scroll_x
; ---------------------------------
_get_scroll_x::
	C$montylib.c$45$1_0$95	= .
	.globl	C$montylib.c$45$1_0$95
;montylib.c:45: return GSL_getCurrentX();
	C$montylib.c$46$1_0$95	= .
	.globl	C$montylib.c$46$1_0$95
;montylib.c:46: }
	C$montylib.c$46$1_0$95	= .
	.globl	C$montylib.c$46$1_0$95
	XG$get_scroll_x$0$0	= .
	.globl	XG$get_scroll_x$0$0
	jp	_GSL_getCurrentX
	G$get_scroll_y$0$0	= .
	.globl	G$get_scroll_y$0$0
	C$montylib.c$48$1_0$96	= .
	.globl	C$montylib.c$48$1_0$96
;montylib.c:48: unsigned int get_scroll_y() {
;	---------------------------------
; Function get_scroll_y
; ---------------------------------
_get_scroll_y::
	C$montylib.c$49$1_0$96	= .
	.globl	C$montylib.c$49$1_0$96
;montylib.c:49: return GSL_getCurrentY();
	C$montylib.c$50$1_0$96	= .
	.globl	C$montylib.c$50$1_0$96
;montylib.c:50: }
	C$montylib.c$50$1_0$96	= .
	.globl	C$montylib.c$50$1_0$96
	XG$get_scroll_y$0$0	= .
	.globl	XG$get_scroll_y$0$0
	jp	_GSL_getCurrentY
	G$waitForFrame$0$0	= .
	.globl	G$waitForFrame$0$0
	C$montylib.c$52$1_0$97	= .
	.globl	C$montylib.c$52$1_0$97
;montylib.c:52: void waitForFrame(){
;	---------------------------------
; Function waitForFrame
; ---------------------------------
_waitForFrame::
	C$montylib.c$53$1_0$97	= .
	.globl	C$montylib.c$53$1_0$97
;montylib.c:53: if(!pause) {
	ld	hl, #_pause
	bit	0, (hl)
	jr	NZ, 00102$
	C$montylib.c$54$2_0$98	= .
	.globl	C$montylib.c$54$2_0$98
;montylib.c:54: manage_sound_frame();
	call	_manage_sound_frame
00102$:
	C$montylib.c$56$1_0$97	= .
	.globl	C$montylib.c$56$1_0$97
;montylib.c:56: SMS_waitForVBlank();
	call	_SMS_waitForVBlank
	C$montylib.c$57$1_0$97	= .
	.globl	C$montylib.c$57$1_0$97
;montylib.c:57: GSL_VBlank();
	call	_GSL_VBlank
	C$montylib.c$58$1_0$97	= .
	.globl	C$montylib.c$58$1_0$97
;montylib.c:58: SMS_copySpritestoSAT();
	C$montylib.c$59$1_0$97	= .
	.globl	C$montylib.c$59$1_0$97
;montylib.c:59: }
	C$montylib.c$59$1_0$97	= .
	.globl	C$montylib.c$59$1_0$97
	XG$waitForFrame$0$0	= .
	.globl	XG$waitForFrame$0$0
	jp	_SMS_copySpritestoSAT
	G$rand$0$0	= .
	.globl	G$rand$0$0
	C$montylib.c$61$1_0$99	= .
	.globl	C$montylib.c$61$1_0$99
;montylib.c:61: unsigned char rand() {
;	---------------------------------
; Function rand
; ---------------------------------
_rand::
	C$montylib.c$63$1_0$99	= .
	.globl	C$montylib.c$63$1_0$99
;montylib.c:63: return randLUT[rand_index++];
	ld	iy, #_rand_index
	ld	c, 0 (iy)
	inc	0 (iy)
	ld	hl, #_randLUT
	ld	b, #0x00
	add	hl, bc
	ld	l, (hl)
	C$montylib.c$64$1_0$99	= .
	.globl	C$montylib.c$64$1_0$99
;montylib.c:64: }
	C$montylib.c$64$1_0$99	= .
	.globl	C$montylib.c$64$1_0$99
	XG$rand$0$0	= .
	.globl	XG$rand$0$0
	ret
	.area _CODE
	.area _INITIALIZER
Fmontylib$__xinit_rand_index$0_0$0 == .
__xinit__rand_index:
	.db #0x00	; 0
	.area _CABS (ABS)
