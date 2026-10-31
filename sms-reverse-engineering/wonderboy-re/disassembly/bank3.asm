; z80dasm 1.1.5
; command line: z80dasm -a -l -t -g 0x0000 -o disassembly/bank3.asm disassembly/bank3.bin

	org	00000h

l0000h:
	nop			;0000	00 	. 
l0001h:
	nop			;0001	00 	. 
l0002h:
	nop			;0002	00 	. 
l0003h:
	nop			;0003	00 	. 
l0004h:
	nop			;0004	00 	. 
	nop			;0005	00 	. 
l0006h:
	nop			;0006	00 	. 
	nop			;0007	00 	. 
	rst 38h			;0008	ff 	. 
	nop			;0009	00 	. 
	rst 38h			;000a	ff 	. 
	nop			;000b	00 	. 
	ld a,a			;000c	7f 	 
	ld (hl),07fh		;000d	36 7f 	6  
	ld (hl),0ffh		;000f	36 ff 	6 . 
	nop			;0011	00 	. 
l0012h:
	rst 38h			;0012	ff 	. 
	nop			;0013	00 	. 
	ex af,af'			;0014	08 	. 
l0015h:
	ex af,af'			;0015	08 	. 
l0016h:
	ex af,af'			;0016	08 	. 
	rrca			;0017	0f 	. 
	rlca			;0018	07 	. 
	rlca			;0019	07 	. 
	rlca			;001a	07 	. 
	rlca			;001b	07 	. 
	ex af,af'			;001c	08 	. 
	ex af,af'			;001d	08 	. 
l001eh:
	ex af,af'			;001e	08 	. 
sub_001fh:
	rrca			;001f	0f 	. 
	nop			;0020	00 	. 
l0021h:
	nop			;0021	00 	. 
	nop			;0022	00 	. 
	nop			;0023	00 	. 
	nop			;0024	00 	. 
	nop			;0025	00 	. 
	nop			;0026	00 	. 
	nop			;0027	00 	. 
	rst 38h			;0028	ff 	. 
	nop			;0029	00 	. 
	rst 38h			;002a	ff 	. 
	nop			;002b	00 	. 
	rst 38h			;002c	ff 	. 
	in a,(0ffh)		;002d	db ff 	. . 
	in a,(0ffh)		;002f	db ff 	. . 
	nop			;0031	00 	. 
	rst 38h			;0032	ff 	. 
	nop			;0033	00 	. 
	rlca			;0034	07 	. 
	rlca			;0035	07 	. 
	rlca			;0036	07 	. 
	rst 38h			;0037	ff 	. 
sub_0038h:
	ei			;0038	fb 	. 
	ei			;0039	fb 	. 
	ei			;003a	fb 	. 
	call m,sub_0707h		;003b	fc 07 07 	. . . 
l003eh:
	rlca			;003e	07 	. 
	rst 38h			;003f	ff 	. 
	nop			;0040	00 	. 
	nop			;0041	00 	. 
	nop			;0042	00 	. 
	nop			;0043	00 	. 
	nop			;0044	00 	. 
	nop			;0045	00 	. 
	nop			;0046	00 	. 
	nop			;0047	00 	. 
	rst 38h			;0048	ff 	. 
	nop			;0049	00 	. 
	rst 38h			;004a	ff 	. 
	nop			;004b	00 	. 
	cp 06ch		;004c	fe 6c 	. l 
	cp 06ch		;004e	fe 6c 	. l 
	rst 38h			;0050	ff 	. 
	nop			;0051	00 	. 
	rst 38h			;0052	ff 	. 
	nop			;0053	00 	. 
l0054h:
	ret po			;0054	e0 	. 
	ret po			;0055	e0 	. 
	ret po			;0056	e0 	. 
	ret po			;0057	e0 	. 
	ret nz			;0058	c0 	. 
	ld b,b			;0059	40 	@ 
	ld b,b			;005a	40 	@ 
	jr nc,$-30		;005b	30 e0 	0 . 
	ret po			;005d	e0 	. 
	ret po			;005e	e0 	. 
	ret po			;005f	e0 	. 
	rlca			;0060	07 	. 
	rlca			;0061	07 	. 
	rlca			;0062	07 	. 
	rlca			;0063	07 	. 
	ex af,af'			;0064	08 	. 
	ex af,af'			;0065	08 	. 
	ex af,af'			;0066	08 	. 
	rrca			;0067	0f 	. 
	rlca			;0068	07 	. 
	rlca			;0069	07 	. 
	rlca			;006a	07 	. 
	rlca			;006b	07 	. 
	ex af,af'			;006c	08 	. 
	ex af,af'			;006d	08 	. 
	ex af,af'			;006e	08 	. 
	rrca			;006f	0f 	. 
	nop			;0070	00 	. 
	nop			;0071	00 	. 
l0072h:
	nop			;0072	00 	. 
	nop			;0073	00 	. 
	rst 38h			;0074	ff 	. 
	nop			;0075	00 	. 
	rst 38h			;0076	ff 	. 
	nop			;0077	00 	. 
	ld a,a			;0078	7f 	 
	ld (hl),07fh		;0079	36 7f 	6  
	ld (hl),0ffh		;007b	36 ff 	6 . 
l007dh:
	nop			;007d	00 	. 
	rst 38h			;007e	ff 	. 
sub_007fh:
	nop			;007f	00 	. 
sub_0080h:
	ei			;0080	fb 	. 
	ei			;0081	fb 	. 
	ei			;0082	fb 	. 
	call m,sub_0707h		;0083	fc 07 07 	. . . 
	rlca			;0086	07 	. 
l0087h:
	rst 38h			;0087	ff 	. 
	ei			;0088	fb 	. 
	ei			;0089	fb 	. 
	ei			;008a	fb 	. 
	call m,sub_0707h		;008b	fc 07 07 	. . . 
	rlca			;008e	07 	. 
	rst 38h			;008f	ff 	. 
	ei			;0090	fb 	. 
	ei			;0091	fb 	. 
	ei			;0092	fb 	. 
	call m,sub_00ffh		;0093	fc ff 00 	. . . 
	rst 38h			;0096	ff 	. 
	nop			;0097	00 	. 
	rst 38h			;0098	ff 	. 
	in a,(0ffh)		;0099	db ff 	. . 
	in a,(0ffh)		;009b	db ff 	. . 
	nop			;009d	00 	. 
	rst 38h			;009e	ff 	. 
l009fh:
	nop			;009f	00 	. 
	ret nz			;00a0	c0 	. 
	ld b,b			;00a1	40 	@ 
	ld b,b			;00a2	40 	@ 
l00a3h:
	jr nc,$-30		;00a3	30 e0 	0 . 
	ret po			;00a5	e0 	. 
	ret po			;00a6	e0 	. 
	ret po			;00a7	e0 	. 
	ret nz			;00a8	c0 	. 
	ld b,b			;00a9	40 	@ 
	ld b,b			;00aa	40 	@ 
	jr nc,$-30		;00ab	30 e0 	0 . 
	ret po			;00ad	e0 	. 
	ret po			;00ae	e0 	. 
	ret po			;00af	e0 	. 
sub_00b0h:
	ret nz			;00b0	c0 	. 
	ld b,b			;00b1	40 	@ 
	ld b,b			;00b2	40 	@ 
	jr nc,$+1		;00b3	30 ff 	0 . 
	nop			;00b5	00 	. 
	rst 38h			;00b6	ff 	. 
	nop			;00b7	00 	. 
	cp 06ch		;00b8	fe 6c 	. l 
	cp 06ch		;00ba	fe 6c 	. l 
	rst 38h			;00bc	ff 	. 
	nop			;00bd	00 	. 
	rst 38h			;00be	ff 	. 
	nop			;00bf	00 	. 
l00c0h:
	rst 38h			;00c0	ff 	. 
	nop			;00c1	00 	. 
	rst 38h			;00c2	ff 	. 
	nop			;00c3	00 	. 
	ld a,a			;00c4	7f 	 
	ld (hl),07fh		;00c5	36 7f 	6  
	ld (hl),0ffh		;00c7	36 ff 	6 . 
	nop			;00c9	00 	. 
	rst 38h			;00ca	ff 	. 
	nop			;00cb	00 	. 
	nop			;00cc	00 	. 
	nop			;00cd	00 	. 
	nop			;00ce	00 	. 
	nop			;00cf	00 	. 
	ex af,af'			;00d0	08 	. 
	ex af,af'			;00d1	08 	. 
	ex af,af'			;00d2	08 	. 
	rrca			;00d3	0f 	. 
	rlca			;00d4	07 	. 
	rlca			;00d5	07 	. 
	rlca			;00d6	07 	. 
	rlca			;00d7	07 	. 
	nop			;00d8	00 	. 
	nop			;00d9	00 	. 
	nop			;00da	00 	. 
	nop			;00db	00 	. 
sub_00dch:
	ex af,af'			;00dc	08 	. 
	ex af,af'			;00dd	08 	. 
	ex af,af'			;00de	08 	. 
	rrca			;00df	0f 	. 
	rst 38h			;00e0	ff 	. 
	nop			;00e1	00 	. 
l00e2h:
	rst 38h			;00e2	ff 	. 
l00e3h:
	nop			;00e3	00 	. 
	rst 38h			;00e4	ff 	. 
	in a,(0ffh)		;00e5	db ff 	. . 
	in a,(0ffh)		;00e7	db ff 	. . 
	nop			;00e9	00 	. 
	rst 38h			;00ea	ff 	. 
	nop			;00eb	00 	. 
	rst 38h			;00ec	ff 	. 
	rst 38h			;00ed	ff 	. 
sub_00eeh:
	rst 38h			;00ee	ff 	. 
	rst 38h			;00ef	ff 	. 
sub_00f0h:
	rst 38h			;00f0	ff 	. 
l00f1h:
	ld sp,hl			;00f1	f9 	. 
	ret po			;00f2	e0 	. 
	ld sp,hl			;00f3	f9 	. 
	rrca			;00f4	0f 	. 
	add hl,bc			;00f5	09 	. 
	nop			;00f6	00 	. 
	ld sp,hl			;00f7	f9 	. 
sub_00f8h:
	di			;00f8	f3 	. 
	di			;00f9	f3 	. 
	di			;00fa	f3 	. 
	call m,0ffffh		;00fb	fc ff ff 	. . . 
l00feh:
	rst 28h			;00fe	ef 	. 
sub_00ffh:
	rst 38h			;00ff	ff 	. 
l0100h:
	rst 38h			;0100	ff 	. 
l0101h:
	nop			;0101	00 	. 
	rst 38h			;0102	ff 	. 
	nop			;0103	00 	. 
	cp 06ch		;0104	fe 6c 	. l 
l0106h:
	cp 06ch		;0106	fe 6c 	. l 
	rst 38h			;0108	ff 	. 
l0109h:
	nop			;0109	00 	. 
	rst 38h			;010a	ff 	. 
	nop			;010b	00 	. 
	nop			;010c	00 	. 
	nop			;010d	00 	. 
	nop			;010e	00 	. 
l010fh:
	nop			;010f	00 	. 
	nop			;0110	00 	. 
	nop			;0111	00 	. 
	nop			;0112	00 	. 
	nop			;0113	00 	. 
	nop			;0114	00 	. 
	nop			;0115	00 	. 
	nop			;0116	00 	. 
	nop			;0117	00 	. 
	nop			;0118	00 	. 
	nop			;0119	00 	. 
	nop			;011a	00 	. 
	nop			;011b	00 	. 
	ret nz			;011c	c0 	. 
	ld b,b			;011d	40 	@ 
	ld b,b			;011e	40 	@ 
	jr nc,l0128h		;011f	30 07 	0 . 
	rlca			;0121	07 	. 
	rlca			;0122	07 	. 
	rlca			;0123	07 	. 
	nop			;0124	00 	. 
	nop			;0125	00 	. 
	nop			;0126	00 	. 
	nop			;0127	00 	. 
l0128h:
	ex af,af'			;0128	08 	. 
	ex af,af'			;0129	08 	. 
	ex af,af'			;012a	08 	. 
	rrca			;012b	0f 	. 
	rlca			;012c	07 	. 
	rlca			;012d	07 	. 
	rlca			;012e	07 	. 
	rlca			;012f	07 	. 
	nop			;0130	00 	. 
	nop			;0131	00 	. 
l0132h:
	nop			;0132	00 	. 
	nop			;0133	00 	. 
	ex af,af'			;0134	08 	. 
	ex af,af'			;0135	08 	. 
	ex af,af'			;0136	08 	. 
	rrca			;0137	0f 	. 
	rlca			;0138	07 	. 
	rlca			;0139	07 	. 
	rlca			;013a	07 	. 
	rlca			;013b	07 	. 
	nop			;013c	00 	. 
	nop			;013d	00 	. 
	nop			;013e	00 	. 
	nop			;013f	00 	. 
	rrca			;0140	0f 	. 
	add hl,bc			;0141	09 	. 
	nop			;0142	00 	. 
	ld sp,hl			;0143	f9 	. 
	di			;0144	f3 	. 
	di			;0145	f3 	. 
	di			;0146	f3 	. 
	call m,0ffffh		;0147	fc ff ff 	. . . 
	rst 28h			;014a	ef 	. 
	rst 38h			;014b	ff 	. 
	rrca			;014c	0f 	. 
l014dh:
	add hl,bc			;014d	09 	. 
	nop			;014e	00 	. 
	ld sp,hl			;014f	f9 	. 
	di			;0150	f3 	. 
	di			;0151	f3 	. 
	di			;0152	f3 	. 
	call m,0ffffh		;0153	fc ff ff 	. . . 
	rst 28h			;0156	ef 	. 
	rst 38h			;0157	ff 	. 
	rrca			;0158	0f 	. 
l0159h:
	add hl,bc			;0159	09 	. 
	nop			;015a	00 	. 
	ld sp,hl			;015b	f9 	. 
	di			;015c	f3 	. 
	di			;015d	f3 	. 
	di			;015e	f3 	. 
	call m,0e0e0h		;015f	fc e0 e0 	. . . 
	ret po			;0162	e0 	. 
	ret po			;0163	e0 	. 
	nop			;0164	00 	. 
	nop			;0165	00 	. 
	nop			;0166	00 	. 
	nop			;0167	00 	. 
	ret nz			;0168	c0 	. 
	ld b,b			;0169	40 	@ 
	ld b,b			;016a	40 	@ 
	jr nc,l014dh		;016b	30 e0 	0 . 
	ret po			;016d	e0 	. 
	ret po			;016e	e0 	. 
	ret po			;016f	e0 	. 
	nop			;0170	00 	. 
	nop			;0171	00 	. 
	nop			;0172	00 	. 
	nop			;0173	00 	. 
	ret nz			;0174	c0 	. 
	ld b,b			;0175	40 	@ 
	ld b,b			;0176	40 	@ 
	jr nc,l0159h		;0177	30 e0 	0 . 
	ret po			;0179	e0 	. 
	ret po			;017a	e0 	. 
	ret po			;017b	e0 	. 
	nop			;017c	00 	. 
	nop			;017d	00 	. 
	nop			;017e	00 	. 
l017fh:
	nop			;017f	00 	. 
	nop			;0180	00 	. 
	nop			;0181	00 	. 
	nop			;0182	00 	. 
	rrca			;0183	0f 	. 
	rlca			;0184	07 	. 
	rlca			;0185	07 	. 
	rlca			;0186	07 	. 
	rlca			;0187	07 	. 
	nop			;0188	00 	. 
	nop			;0189	00 	. 
	nop			;018a	00 	. 
	nop			;018b	00 	. 
	nop			;018c	00 	. 
	nop			;018d	00 	. 
	nop			;018e	00 	. 
	nop			;018f	00 	. 
	nop			;0190	00 	. 
	nop			;0191	00 	. 
	nop			;0192	00 	. 
	nop			;0193	00 	. 
	rst 38h			;0194	ff 	. 
	nop			;0195	00 	. 
	rst 38h			;0196	ff 	. 
	nop			;0197	00 	. 
	ld a,a			;0198	7f 	 
	ld (hl),07fh		;0199	36 7f 	6  
	ld (hl),0ffh		;019b	36 ff 	6 . 
	nop			;019d	00 	. 
	rst 38h			;019e	ff 	. 
	nop			;019f	00 	. 
	rst 38h			;01a0	ff 	. 
	rst 38h			;01a1	ff 	. 
	rst 28h			;01a2	ef 	. 
	rst 38h			;01a3	ff 	. 
	rrca			;01a4	0f 	. 
l01a5h:
	add hl,bc			;01a5	09 	. 
	nop			;01a6	00 	. 
	ld sp,hl			;01a7	f9 	. 
	di			;01a8	f3 	. 
	di			;01a9	f3 	. 
	di			;01aa	f3 	. 
	call m,0ffffh		;01ab	fc ff ff 	. . . 
	rst 28h			;01ae	ef 	. 
	rst 38h			;01af	ff 	. 
	rst 38h			;01b0	ff 	. 
l01b1h:
	ld sp,hl			;01b1	f9 	. 
	ret po			;01b2	e0 	. 
	ld sp,hl			;01b3	f9 	. 
	rst 38h			;01b4	ff 	. 
	nop			;01b5	00 	. 
	rst 38h			;01b6	ff 	. 
	nop			;01b7	00 	. 
	rst 38h			;01b8	ff 	. 
	in a,(0ffh)		;01b9	db ff 	. . 
	in a,(0ffh)		;01bb	db ff 	. . 
	nop			;01bd	00 	. 
	rst 38h			;01be	ff 	. 
	nop			;01bf	00 	. 
	ret nz			;01c0	c0 	. 
	ld b,b			;01c1	40 	@ 
	ld b,b			;01c2	40 	@ 
	jr nc,l01a5h		;01c3	30 e0 	0 . 
	ret po			;01c5	e0 	. 
l01c6h:
	ret po			;01c6	e0 	. 
	ret po			;01c7	e0 	. 
	nop			;01c8	00 	. 
	nop			;01c9	00 	. 
	nop			;01ca	00 	. 
	nop			;01cb	00 	. 
	ret nz			;01cc	c0 	. 
	ld b,b			;01cd	40 	@ 
	ld b,b			;01ce	40 	@ 
	jr nc,l01b1h		;01cf	30 e0 	0 . 
	ret po			;01d1	e0 	. 
	ret po			;01d2	e0 	. 
	ret po			;01d3	e0 	. 
	rst 38h			;01d4	ff 	. 
	nop			;01d5	00 	. 
	rst 38h			;01d6	ff 	. 
	nop			;01d7	00 	. 
	cp 06ch		;01d8	fe 6c 	. l 
	cp 06ch		;01da	fe 6c 	. l 
	rst 38h			;01dc	ff 	. 
	nop			;01dd	00 	. 
	rst 38h			;01de	ff 	. 
	nop			;01df	00 	. 
	nop			;01e0	00 	. 
	nop			;01e1	00 	. 
	nop			;01e2	00 	. 
	nop			;01e3	00 	. 
	ld bc,l0100h		;01e4	01 00 01 	. . . 
	ld bc,l0004h		;01e7	01 04 00 	. . . 
	rlca			;01ea	07 	. 
	rlca			;01eb	07 	. 
	jr l01eeh		;01ec	18 00 	. . 
l01eeh:
	rra			;01ee	1f 	. 
	rra			;01ef	1f 	. 
	jr nc,$+3		;01f0	30 01 	0 . 
	ld a,03eh		;01f2	3e 3e 	> > 
	inc h			;01f4	24 	$ 
	nop			;01f5	00 	. 
	ccf			;01f6	3f 	? 
	ccf			;01f7	3f 	? 
	ld (hl),b			;01f8	70 	p 
	nop			;01f9	00 	. 
	ld a,a			;01fa	7f 	 
	ld a,a			;01fb	7f 	 
	ret nz			;01fc	c0 	. 
	add a,b			;01fd	80 	. 
	rst 38h			;01fe	ff 	. 
l01ffh:
	rst 38h			;01ff	ff 	. 
l0200h:
	ret nz			;0200	c0 	. 
l0201h:
	nop			;0201	00 	. 
l0202h:
	rst 38h			;0202	ff 	. 
l0203h:
	rst 38h			;0203	ff 	. 
	ex af,af'			;0204	08 	. 
	ld (bc),a			;0205	02 	. 
	defb 0fdh,0fdh,011h	;illegal sequence		;0206	fd fd 11 	. . . 
	ld (bc),a			;0209	02 	. 
	call m,sub_00b0h		;020a	fc b0 00 	. . . 
	inc bc			;020d	03 	. 
	call m,01038h		;020e	fc 38 10 	. 8 . 
l0211h:
	ld bc,0fcfeh		;0211	01 fe fc 	. . . 
	inc b			;0214	04 	. 
	nop			;0215	00 	. 
	rst 38h			;0216	ff 	. 
	rst 38h			;0217	ff 	. 
	inc bc			;0218	03 	. 
	ret po			;0219	e0 	. 
	rra			;021a	1f 	. 
	rra			;021b	1f 	. 
	ld (bc),a			;021c	02 	. 
	call p,sub_0b0bh		;021d	f4 0b 0b 	. . . 
	nop			;0220	00 	. 
l0221h:
	nop			;0221	00 	. 
	nop			;0222	00 	. 
	nop			;0223	00 	. 
	nop			;0224	00 	. 
	nop			;0225	00 	. 
	ret po			;0226	e0 	. 
	ret po			;0227	e0 	. 
	nop			;0228	00 	. 
	add a,b			;0229	80 	. 
	ld a,b			;022a	78 	x 
	ld a,b			;022b	78 	x 
	add a,b			;022c	80 	. 
	ld b,b			;022d	40 	@ 
	jr c,l0258h		;022e	38 28 	8 ( 
	nop			;0230	00 	. 
	ld b,b			;0231	40 	@ 
	cp h			;0232	bc 	. 
	inc l			;0233	2c 	, 
	nop			;0234	00 	. 
	ret nz			;0235	c0 	. 
	ld a,03eh		;0236	3e 3e 	> > 
	djnz l01c6h		;0238	10 8c 	. . 
	ld (hl),d			;023a	72 	r 
	ld (hl),d			;023b	72 	r 
	and b			;023c	a0 	. 
	ld b,0f9h		;023d	06 f9 	. . 
	pop af			;023f	f1 	. 
	ret p			;0240	f0 	. 
	ret nz			;0241	c0 	. 
	rst 38h			;0242	ff 	. 
	rst 38h			;0243	ff 	. 
	jp p,0ffc0h		;0244	f2 c0 ff 	. . . 
	rst 38h			;0247	ff 	. 
	ld l,c			;0248	69 	i 
	ld b,b			;0249	40 	@ 
	ld a,a			;024a	7f 	 
	ld a,a			;024b	7f 	 
	ld h,b			;024c	60 	` 
	ld b,h			;024d	44 	D 
	ld a,e			;024e	7b 	{ 
	ld a,c			;024f	79 	y 
	ret nz			;0250	c0 	. 
	add a,b			;0251	80 	. 
	rst 38h			;0252	ff 	. 
	call m,080e8h		;0253	fc e8 80 	. . . 
	rst 38h			;0256	ff 	. 
	rst 38h			;0257	ff 	. 
l0258h:
	jp po,0ff80h		;0258	e2 80 ff 	. . . 
	rst 38h			;025b	ff 	. 
	call m,0ffc0h		;025c	fc c0 ff 	. . . 
	rst 38h			;025f	ff 	. 
	ex af,af'			;0260	08 	. 
	ld h,b			;0261	60 	` 
	sbc a,a			;0262	9f 	. 
	rra			;0263	1f 	. 
	ex af,af'			;0264	08 	. 
	inc bc			;0265	03 	. 
	call m,sub_149ch		;0266	fc 9c 14 	. . . 
	inc bc			;0269	03 	. 
	call m,060fch		;026a	fc fc 60 	. . ` 
	ld bc,0fcfeh		;026d	01 fe fc 	. . . 
	inc b			;0270	04 	. 
l0271h:
	nop			;0271	00 	. 
	rst 38h			;0272	ff 	. 
	rst 38h			;0273	ff 	. 
	inc hl			;0274	23 	# 
	jr $-23		;0275	18 e7 	. . 
	ld h,a			;0277	67 	g 
	jr nz,l0282h		;0278	20 08 	  . 
	rst 30h			;027a	f7 	. 
	ld (hl),l			;027b	75 	u 
	jr c,$+3		;027c	38 01 	8 . 
	cp 0feh		;027e	fe fe 	. . 
	jr nc,l0282h		;0280	30 00 	0 . 
l0282h:
	rst 38h			;0282	ff 	. 
	ld a,a			;0283	7f 	 
	ld a,(de)			;0284	1a 	. 
	add a,b			;0285	80 	. 
	ld a,a			;0286	7f 	 
	ld a,a			;0287	7f 	 
	inc l			;0288	2c 	, 
l0289h:
	ld b,b			;0289	40 	@ 
	cp a			;028a	bf 	. 
	ccf			;028b	3f 	? 
	ld bc,l3fc0h		;028c	01 c0 3f 	. . ? 
	rra			;028f	1f 	. 
	dec d			;0290	15 	. 
	add a,b			;0291	80 	. 
	ld a,a			;0292	7f 	 
	ld a,a			;0293	7f 	 
	ld bc,0cf30h		;0294	01 30 cf 	. 0 . 
	rst 8			;0297	cf 	. 
	ld b,d			;0298	42 	B 
	djnz l0289h		;0299	10 ee 	. . 
	xor 02bh		;029b	ee 2b 	. + 
	add a,c			;029d	81 	. 
	ld a,a			;029e	7f 	 
	ld a,a			;029f	7f 	 
	ld (hl),e			;02a0	73 	s 
	ld b,b			;02a1	40 	@ 
	ld a,a			;02a2	7f 	 
	ld a,a			;02a3	7f 	 
	ld l,d			;02a4	6a 	j 
	ld b,b			;02a5	40 	@ 
	ld a,a			;02a6	7f 	 
	ld a,a			;02a7	7f 	 
	ld a,l			;02a8	7d 	} 
	ld h,b			;02a9	60 	` 
	ld a,a			;02aa	7f 	 
	ld a,a			;02ab	7f 	 
	ld a,030h		;02ac	3e 30 	> 0 
	ccf			;02ae	3f 	? 
	ccf			;02af	3f 	? 
	rra			;02b0	1f 	. 
	jr l02d2h		;02b1	18 1f 	. . 
	rra			;02b3	1f 	. 
	rrca			;02b4	0f 	. 
	rrca			;02b5	0f 	. 
	rrca			;02b6	0f 	. 
	rrca			;02b7	0f 	. 
	ld bc,l0101h		;02b8	01 01 01 	. . . 
	ld bc,l0000h		;02bb	01 00 00 	. . . 
	nop			;02be	00 	. 
	nop			;02bf	00 	. 
	ld (0ff00h),hl		;02c0	22 00 ff 	" . . 
	rst 38h			;02c3	ff 	. 
	ret			;02c4	c9 	. 
	nop			;02c5	00 	. 
	rst 38h			;02c6	ff 	. 
	rst 38h			;02c7	ff 	. 
	scf			;02c8	37 	7 
	nop			;02c9	00 	. 
	rst 38h			;02ca	ff 	. 
	rst 38h			;02cb	ff 	. 
sub_02cch:
	ld b,(hl)			;02cc	46 	F 
	nop			;02cd	00 	. 
	rst 38h			;02ce	ff 	. 
	rst 38h			;02cf	ff 	. 
	xor e			;02d0	ab 	. 
	nop			;02d1	00 	. 
l02d2h:
	rst 38h			;02d2	ff 	. 
	rst 38h			;02d3	ff 	. 
	defb 0fdh,000h,0ffh	;illegal sequence		;02d4	fd 00 ff 	. . . 
	rst 38h			;02d7	ff 	. 
	rst 38h			;02d8	ff 	. 
	ret po			;02d9	e0 	. 
	rst 38h			;02da	ff 	. 
	rst 38h			;02db	ff 	. 
	rst 38h			;02dc	ff 	. 
	rst 38h			;02dd	ff 	. 
	rst 38h			;02de	ff 	. 
	rst 38h			;02df	ff 	. 
	daa			;02e0	27 	' 
	ld bc,0ffffh		;02e1	01 ff ff 	. . . 
	add a,(hl)			;02e4	86 	. 
	ld (bc),a			;02e5	02 	. 
	cp 0feh		;02e6	fe fe 	. . 
	ld e,002h		;02e8	1e 02 	. . 
	cp 0feh		;02ea	fe fe 	. . 
	ld a,h			;02ec	7c 	| 
	inc b			;02ed	04 	. 
	call m,0b8fch		;02ee	fc fc b8 	. . . 
	ex af,af'			;02f1	08 	. 
l02f2h:
	ret m			;02f2	f8 	. 
	ret m			;02f3	f8 	. 
	ret p			;02f4	f0 	. 
	djnz $-14		;02f5	10 f0 	. . 
	ret p			;02f7	f0 	. 
	ret po			;02f8	e0 	. 
	ret po			;02f9	e0 	. 
l02fah:
	ret po			;02fa	e0 	. 
	ret po			;02fb	e0 	. 
l02fch:
	nop			;02fc	00 	. 
	nop			;02fd	00 	. 
	nop			;02fe	00 	. 
l02ffh:
	nop			;02ff	00 	. 
l0300h:
	nop			;0300	00 	. 
l0301h:
	ex af,af'			;0301	08 	. 
	nop			;0302	00 	. 
l0303h:
	ld a,b			;0303	78 	x 
	nop			;0304	00 	. 
	dec b			;0305	05 	. 
	jr c,l0384h		;0306	38 7c 	8 | 
	nop			;0308	00 	. 
	ld bc,07c00h		;0309	01 00 7c 	. . | 
	rst 38h			;030c	ff 	. 
	adc a,01ch		;030d	ce 1c 	. . 
	jr c,$+114		;030f	38 70 	8 p 
	cp 0ffh		;0311	fe ff 	. . 
	nop			;0313	00 	. 
	rst 38h			;0314	ff 	. 
	jr l0317h		;0315	18 00 	. . 
l0317h:
	ld bc,0ff00h		;0317	01 00 ff 	. . . 
	jr $+1		;031a	18 ff 	. . 
	nop			;031c	00 	. 
	jr c,l0363h		;031d	38 44 	8 D 
	cp d			;031f	ba 	. 
	and d			;0320	a2 	. 
	cp d			;0321	ba 	. 
	ld b,h			;0322	44 	D 
	jr c,l0325h		;0323	38 00 	8 . 
l0325h:
	ld bc,07c00h		;0325	01 00 7c 	. . | 
	and 0e0h		;0328	e6 e0 	. . 
	ld a,h			;032a	7c 	| 
	ld b,0e6h		;032b	06 e6 	. . 
	ld a,h			;032d	7c 	| 
	nop			;032e	00 	. 
	ld bc,0ff00h		;032f	01 00 ff 	. . . 
	cp 0ffh		;0332	fe ff 	. . 
	inc c			;0334	0c 	. 
	nop			;0335	00 	. 
	inc bc			;0336	03 	. 
	jr l0339h		;0337	18 00 	. . 
l0339h:
	ld bc,0ff00h		;0339	01 00 ff 	. . . 
	cp 000h		;033c	fe 00 	. . 
	dec b			;033e	05 	. 
	jr c,l0341h		;033f	38 00 	8 . 
l0341h:
	ld bc,07c00h		;0341	01 00 7c 	. . | 
	rst 38h			;0344	ff 	. 
	adc a,07ch		;0345	ce 7c 	. | 
	rst 38h			;0347	ff 	. 
	adc a,07ch		;0348	ce 7c 	. | 
	nop			;034a	00 	. 
	ld bc,07c00h		;034b	01 00 7c 	. . | 
	nop			;034e	00 	. 
	inc bc			;034f	03 	. 
	adc a,07eh		;0350	ce 7e 	. ~ 
	ld c,07ch		;0352	0e 7c 	. | 
	nop			;0354	00 	. 
	ld bc,l0000h		;0355	01 00 00 	. . . 
	ld b,0e6h		;0358	06 e6 	. . 
	ld a,h			;035a	7c 	| 
	nop			;035b	00 	. 
	ld bc,0fc00h		;035c	01 00 fc 	. . . 
	nop			;035f	00 	. 
	inc bc			;0360	03 	. 
	and 0fch		;0361	e6 fc 	. . 
l0363h:
	rst 38h			;0363	ff 	. 
	ret po			;0364	e0 	. 
	nop			;0365	00 	. 
	ld bc,l0000h		;0366	01 00 00 	. . . 
	inc bc			;0369	03 	. 
	and 0feh		;036a	e6 fe 	. . 
	nop			;036c	00 	. 
	inc bc			;036d	03 	. 
	and 000h		;036e	e6 00 	. . 
	ld bc,l0000h		;0370	01 00 00 	. . . 
	rlca			;0373	07 	. 
	jr c,l0376h		;0374	38 00 	8 . 
l0376h:
	ld bc,07c00h		;0376	01 00 7c 	. . | 
	rst 38h			;0379	ff 	. 
	and 0e0h		;037a	e6 e0 	. . 
	xor 0e6h		;037c	ee e6 	. . 
	ld a,h			;037e	7c 	| 
	nop			;037f	00 	. 
	ld bc,0fc00h		;0380	01 00 fc 	. . . 
	rst 38h			;0383	ff 	. 
l0384h:
	and 0fch		;0384	e6 fc 	. . 
	rst 38h			;0386	ff 	. 
	and 0fch		;0387	e6 fc 	. . 
	nop			;0389	00 	. 
	ld bc,07c00h		;038a	01 00 7c 	. . | 
	rst 38h			;038d	ff 	. 
	xor 0e0h		;038e	ee e0 	. . 
	rst 38h			;0390	ff 	. 
	xor 07ch		;0391	ee 7c 	. | 
	nop			;0393	00 	. 
	ld bc,0fc00h		;0394	01 00 fc 	. . . 
	nop			;0397	00 	. 
	dec b			;0398	05 	. 
	and 0fch		;0399	e6 fc 	. . 
	nop			;039b	00 	. 
	ld bc,0fe00h		;039c	01 00 fe 	. . . 
	rst 38h			;039f	ff 	. 
	ret po			;03a0	e0 	. 
	call m,0e0ffh		;03a1	fc ff e0 	. . . 
	cp 000h		;03a4	fe 00 	. . 
	ld bc,0fc00h		;03a6	01 00 fc 	. . . 
	nop			;03a9	00 	. 
	inc bc			;03aa	03 	. 
	and 0fch		;03ab	e6 fc 	. . 
	rst 38h			;03ad	ff 	. 
	and 000h		;03ae	e6 00 	. . 
	ld bc,l3800h		;03b0	01 00 38 	. . 8 
	ld h,h			;03b3	64 	d 
	rst 38h			;03b4	ff 	. 
	and 0feh		;03b5	e6 fe 	. . 
	rst 38h			;03b7	ff 	. 
	and 000h		;03b8	e6 00 	. . 
	ld bc,l0000h		;03ba	01 00 00 	. . . 
	ld b,0e0h		;03bd	06 e0 	. . 
	cp 000h		;03bf	fe 00 	. . 
	ld bc,0ff00h		;03c1	01 00 ff 	. . . 
	add a,0feh		;03c4	c6 fe 	. . 
	ld a,h			;03c6	7c 	| 
	nop			;03c7	00 	. 
	inc bc			;03c8	03 	. 
	jr c,l03cbh		;03c9	38 00 	8 . 
l03cbh:
	ld bc,0c600h		;03cb	01 00 c6 	. . . 
	and 0f6h		;03ce	e6 f6 	. . 
	cp 0eeh		;03d0	fe ee 	. . 
	and 0e2h		;03d2	e6 e2 	. . 
	nop			;03d4	00 	. 
	ld bc,07c00h		;03d5	01 00 7c 	. . | 
	nop			;03d8	00 	. 
	dec b			;03d9	05 	. 
	and 07ch		;03da	e6 7c 	. | 
	nop			;03dc	00 	. 
	ld bc,07c00h		;03dd	01 00 7c 	. . | 
	rst 38h			;03e0	ff 	. 
	ld b,07eh		;03e1	06 7e 	. ~ 
	rst 38h			;03e3	ff 	. 
	add a,07eh		;03e4	c6 7e 	. ~ 
	nop			;03e6	00 	. 
	ld bc,06c00h		;03e7	01 00 6c 	. . l 
	cp 000h		;03ea	fe 00 	. . 
	dec b			;03ec	05 	. 
	sub 000h		;03ed	d6 00 	. . 
	ld bc,07c00h		;03ef	01 00 7c 	. . | 
	rst 38h			;03f2	ff 	. 
	add a,0fch		;03f3	c6 fc 	. . 
	rst 38h			;03f5	ff 	. 
	ret nz			;03f6	c0 	. 
	ld a,(hl)			;03f7	7e 	~ 
	nop			;03f8	00 	. 
	ld bc,l0000h		;03f9	01 00 00 	. . . 
	ld bc,sub_00ffh		;03fc	01 ff 00 	. . . 
l03ffh:
	inc bc			;03ff	03 	. 
l0400h:
	rra			;0400	1f 	. 
	nop			;0401	00 	. 
l0402h:
	inc bc			;0402	03 	. 
	rrca			;0403	0f 	. 
l0404h:
	rlca			;0404	07 	. 
	nop			;0405	00 	. 
sub_0406h:
	inc bc			;0406	03 	. 
l0407h:
	ret nc			;0407	d0 	. 
	nop			;0408	00 	. 
	inc bc			;0409	03 	. 
	ret pe			;040a	e8 	. 
	rst 38h			;040b	ff 	. 
	call p,sub_07ffh		;040c	f4 ff 07 	. . . 
	nop			;040f	00 	. 
	dec b			;0410	05 	. 
	inc bc			;0411	03 	. 
l0412h:
	nop			;0412	00 	. 
	ld bc,0f400h		;0413	01 00 f4 	. . . 
	nop			;0416	00 	. 
	inc bc			;0417	03 	. 
	jp m,0fdffh		;0418	fa ff fd 	. . . 
	nop			;041b	00 	. 
	ld bc,0ffffh		;041c	01 ff ff 	. . . 
	nop			;041f	00 	. 
	nop			;0420	00 	. 
	ld bc,sub_00ffh		;0421	01 ff 00 	. . . 
	ld bc,l0000h		;0424	01 00 00 	. . . 
	ld bc,sub_07ffh		;0427	01 ff 07 	. . . 
	rst 38h			;042a	ff 	. 
	inc bc			;042b	03 	. 
	ld bc,l0100h		;042c	01 00 01 	. . . 
	nop			;042f	00 	. 
	ret nz			;0430	c0 	. 
	jr nc,$-54		;0431	30 c8 	0 . 
	rst 38h			;0433	ff 	. 
	call p,0faffh		;0434	f4 ff fa 	. . . 
	nop			;0437	00 	. 
	inc bc			;0438	03 	. 
	ld bc,l02ffh		;0439	01 ff 02 	. . . 
	dec b			;043c	05 	. 
	ei			;043d	fb 	. 
	rlca			;043e	07 	. 
l043fh:
	nop			;043f	00 	. 
	inc b			;0440	04 	. 
	jp m,0f4ffh		;0441	fa ff f4 	. . . 
	ret pe			;0444	e8 	. 
	ret nc			;0445	d0 	. 
	nop			;0446	00 	. 
	ld bc,sub_00ffh		;0447	01 ff 00 	. . . 
	inc bc			;044a	03 	. 
	rrca			;044b	0f 	. 
	nop			;044c	00 	. 
	inc b			;044d	04 	. 
	nop			;044e	00 	. 
	nop			;044f	00 	. 
	inc bc			;0450	03 	. 
	ret nc			;0451	d0 	. 
	ret p			;0452	f0 	. 
	nop			;0453	00 	. 
	inc b			;0454	04 	. 
	nop			;0455	00 	. 
	nop			;0456	00 	. 
	inc b			;0457	04 	. 
	ld bc,l0100h		;0458	01 00 01 	. . . 
	rst 38h			;045b	ff 	. 
	nop			;045c	00 	. 
	ld bc,l0000h		;045d	01 00 00 	. . . 
	ld bc,sub_00ffh		;0460	01 ff 00 	. . . 
	ld bc,0fe00h		;0463	01 00 fe 	. . . 
	ld (bc),a			;0466	02 	. 
	nop			;0467	00 	. 
	inc b			;0468	04 	. 
	jp m,0fffeh		;0469	fa fe ff 	. . . 
	nop			;046c	00 	. 
	nop			;046d	00 	. 
	ld bc,sub_00ffh		;046e	01 ff 00 	. . . 
	ld bc,l0000h		;0471	01 00 00 	. . . 
	ld bc,sub_00ffh		;0474	01 ff 00 	. . . 
	inc b			;0477	04 	. 
	ld bc,l0100h		;0478	01 00 01 	. . . 
	nop			;047b	00 	. 
l047ch:
	cp 002h		;047c	fe 02 	. . 
	nop			;047e	00 	. 
	inc b			;047f	04 	. 
sub_0480h:
	jp m,l00feh		;0480	fa fe 00 	. . . 
	inc bc			;0483	03 	. 
	nop			;0484	00 	. 
	rrca			;0485	0f 	. 
	ex af,af'			;0486	08 	. 
	rrca			;0487	0f 	. 
	nop			;0488	00 	. 
	ld bc,sub_07ffh		;0489	01 ff 07 	. . . 
	nop			;048c	00 	. 
	inc bc			;048d	03 	. 
	nop			;048e	00 	. 
	ret p			;048f	f0 	. 
	djnz l0492h		;0490	10 00 	. . 
l0492h:
	inc bc			;0492	03 	. 
	ret nc			;0493	d0 	. 
	nop			;0494	00 	. 
	ld b,0a0h		;0495	06 a0 	. . 
	cp a			;0497	bf 	. 
	add a,b			;0498	80 	. 
	nop			;0499	00 	. 
	ld bc,l0000h		;049a	01 00 00 	. . . 
	ld bc,sub_00ffh		;049d	01 ff 00 	. . . 
	ld bc,0bf00h		;04a0	01 00 bf 	. . . 
	nop			;04a3	00 	. 
	inc b			;04a4	04 	. 
	and b			;04a5	a0 	. 
	cp a			;04a6	bf 	. 
	nop			;04a7	00 	. 
	rrca			;04a8	0f 	. 
	and b			;04a9	a0 	. 
	nop			;04aa	00 	. 
	ld bc,l0000h		;04ab	01 00 00 	. . . 
	ld bc,sub_00ffh		;04ae	01 ff 00 	. . . 
	ld bc,l0000h		;04b1	01 00 00 	. . . 
	ld bc,l1fffh		;04b4	01 ff 1f 	. . . 
	rrca			;04b7	0f 	. 
	rlca			;04b8	07 	. 
	inc bc			;04b9	03 	. 
	nop			;04ba	00 	. 
	ld bc,08000h		;04bb	01 00 80 	. . . 
	ld h,b			;04be	60 	` 
	sub b			;04bf	90 	. 
	ret pe			;04c0	e8 	. 
	rst 38h			;04c1	ff 	. 
	call p,003fah		;04c2	f4 fa 03 	. . . 
	rst 38h			;04c5	ff 	. 
	ld bc,l0500h		;04c6	01 00 05 	. . . 
	nop			;04c9	00 	. 
	rst 38h			;04ca	ff 	. 
	jp m,l0600h		;04cb	fa 00 06 	. . . 
	defb 0fdh,000h,004h	;illegal sequence		;04ce	fd 00 04 	. . . 
	and b			;04d1	a0 	. 
	or b			;04d2	b0 	. 
	sub b			;04d3	90 	. 
	ret p			;04d4	f0 	. 
	nop			;04d5	00 	. 
	ld bc,l0000h		;04d6	01 00 00 	. . . 
	ex af,af'			;04d9	08 	. 
	and b			;04da	a0 	. 
	nop			;04db	00 	. 
	ex af,af'			;04dc	08 	. 
	nop			;04dd	00 	. 
	nop			;04de	00 	. 
	inc b			;04df	04 	. 
	and b			;04e0	a0 	. 
	cp a			;04e1	bf 	. 
	add a,b			;04e2	80 	. 
	nop			;04e3	00 	. 
	ld bc,sub_00ffh		;04e4	01 ff 00 	. . . 
	ld b,000h		;04e7	06 00 	. . 
	rst 38h			;04e9	ff 	. 
	ld bc,l0002h		;04ea	01 02 00 	. . . 
	dec b			;04ed	05 	. 
	defb 0fdh,07dh	;ld a,iyl		;04ee	fd 7d 	. } 
	ld a,d			;04f0	7a 	z 
	jp m,l0500h+2		;04f1	fa 02 05 	. . . 
	dec bc			;04f4	0b 	. 
	rla			;04f5	17 	. 
	rst 28h			;04f6	ef 	. 
	rra			;04f7	1f 	. 
	nop			;04f8	00 	. 
	ld bc,sub_00ffh		;04f9	01 ff 00 	. . . 
sub_04fch:
	ld bc,0fa00h		;04fc	01 00 fa 	. . . 
	rst 38h			;04ff	ff 	. 
l0500h:
	call p,090e8h		;0500	f4 e8 90 	. . . 
l0503h:
	ld h,b			;0503	60 	` 
	add a,b			;0504	80 	. 
	nop			;0505	00 	. 
	ld bc,l0000h		;0506	01 00 00 	. . . 
	ld bc,0ffffh		;0509	01 ff ff 	. . . 
	inc bc			;050c	03 	. 
	nop			;050d	00 	. 
	dec b			;050e	05 	. 
	ld bc,0ffe8h		;050f	01 e8 ff 	. . . 
	call p,l0500h		;0512	f4 00 05 	. . . 
	jp m,l01ffh		;0515	fa ff 01 	. . . 
	ld (bc),a			;0518	02 	. 
	dec b			;0519	05 	. 
	ei			;051a	fb 	. 
l051bh:
	rlca			;051b	07 	. 
	nop			;051c	00 	. 
	ld bc,sub_00ffh		;051d	01 ff 00 	. . . 
	ld bc,l0000h		;0520	01 00 00 	. . . 
	inc bc			;0523	03 	. 
	jp m,0e4f4h		;0524	fa f4 e4 	. . . 
	ret c			;0527	d8 	. 
	ret po			;0528	e0 	. 
	rst 38h			;0529	ff 	. 
	nop			;052a	00 	. 
	nop			;052b	00 	. 
	ld bc,080ffh		;052c	01 ff 80 	. . . 
	nop			;052f	00 	. 
	ld bc,sub_00ffh		;0530	01 ff 00 	. . . 
	inc b			;0533	04 	. 
	ld a,a			;0534	7f 	 
	nop			;0535	00 	. 
	ld bc,0e000h		;0536	01 00 e0 	. . . 
	jr nz,l051bh		;0539	20 e0 	  . 
	ld b,a			;053b	47 	G 
	ld b,h			;053c	44 	D 
	rst 38h			;053d	ff 	. 
	ld b,a			;053e	47 	G 
	rst 38h			;053f	ff 	. 
	ld a,a			;0540	7f 	 
	nop			;0541	00 	. 
	ld b,03fh		;0542	06 3f 	. ? 
	ld b,a			;0544	47 	G 
	nop			;0545	00 	. 
	dec b			;0546	05 	. 
	xor a			;0547	af 	. 
	rst 10h			;0548	d7 	. 
	rst 28h			;0549	ef 	. 
	nop			;054a	00 	. 
	ld bc,l0700h		;054b	01 00 07 	. . . 
	inc b			;054e	04 	. 
	rlca			;054f	07 	. 
	ex (sp),hl			;0550	e3 	. 
	inc hl			;0551	23 	# 
	rst 38h			;0552	ff 	. 
	and e			;0553	a3 	. 
	nop			;0554	00 	. 
	ld bc,l0000h		;0555	01 00 00 	. . . 
	ld bc,l01ffh		;0558	01 ff 01 	. . . 
	nop			;055b	00 	. 
	ld bc,sub_00ffh		;055c	01 ff 00 	. . . 
	inc b			;055f	04 	. 
	jp m,l00a3h		;0560	fa a3 00 	. . . 
	dec b			;0563	05 	. 
	rst 10h			;0564	d7 	. 
	ex de,hl			;0565	eb 	. 
	rst 30h			;0566	f7 	. 
	rst 38h			;0567	ff 	. 
	jp m,l0600h		;0568	fa 00 06 	. . . 
	call p,sub_00ffh		;056b	f4 ff 00 	. . . 
	ld bc,l0f07h		;056e	01 07 0f 	. . . 
	rst 38h			;0571	ff 	. 
	rra			;0572	1f 	. 
	ccf			;0573	3f 	? 
	rrca			;0574	0f 	. 
	ld (hl),b			;0575	70 	p 
	adc a,a			;0576	8f 	. 
	nop			;0577	00 	. 
	dec b			;0578	05 	. 
	rst 38h			;0579	ff 	. 
	ccf			;057a	3f 	? 
	rst 38h			;057b	ff 	. 
	ld a,a			;057c	7f 	 
	ld a,(hl)			;057d	7e 	~ 
	cp 000h		;057e	fe 00 	. . 
	inc bc			;0580	03 	. 
	defb 0fdh,0d8h,0a0h	;illegal sequence		;0581	fd d8 a0 	. . . 
	ld b,b			;0584	40 	@ 
	rst 38h			;0585	ff 	. 
	add a,b			;0586	80 	. 
	nop			;0587	00 	. 
	inc bc			;0588	03 	. 
	nop			;0589	00 	. 
	ret p			;058a	f0 	. 
	ld c,0f1h		;058b	0e f1 	. . 
	cp 000h		;058d	fe 00 	. . 
	inc b			;058f	04 	. 
	rst 38h			;0590	ff 	. 
	rst 38h			;0591	ff 	. 
	nop			;0592	00 	. 
	add a,b			;0593	80 	. 
	ld h,b			;0594	60 	` 
	sub b			;0595	90 	. 
	rst 38h			;0596	ff 	. 
l0597h:
	ret pe			;0597	e8 	. 
	call p,sub_073fh		;0598	f4 3f 07 	. ? . 
	inc bc			;059b	03 	. 
	rst 38h			;059c	ff 	. 
	ld bc,l0300h		;059d	01 00 03 	. . . 
	nop			;05a0	00 	. 
	call p,l0300h		;05a1	f4 00 03 	. . . 
	jp m,l0400h		;05a4	fa 00 04 	. . . 
	defb 0fdh,000h,001h	;illegal sequence		;05a7	fd 00 01 	. . . 
	nop			;05aa	00 	. 
	ld a,a			;05ab	7f 	 
	ld b,b			;05ac	40 	@ 
	ld a,a			;05ad	7f 	 
	nop			;05ae	00 	. 
	inc b			;05af	04 	. 
	ccf			;05b0	3f 	? 
	nop			;05b1	00 	. 
	ld bc,0e000h		;05b2	01 00 e0 	. . . 
	jr nz,l05b7h		;05b5	20 00 	  . 
l05b7h:
	inc bc			;05b7	03 	. 
	and b			;05b8	a0 	. 
	ret nc			;05b9	d0 	. 
	ret pe			;05ba	e8 	. 
	ld a,h			;05bb	7c 	| 
	ret nz			;05bc	c0 	. 
	call m,l0300h		;05bd	fc 00 03 	. . . 
	adc a,07ch		;05c0	ce 7c 	. | 
	nop			;05c2	00 	. 
	ld bc,0f400h		;05c3	01 00 f4 	. . . 
	jp m,0fefdh		;05c6	fa fd fe 	. . . 
	nop			;05c9	00 	. 
	inc b			;05ca	04 	. 
	rst 38h			;05cb	ff 	. 
	nop			;05cc	00 	. 
	ld bc,l0700h		;05cd	01 00 07 	. . . 
	inc b			;05d0	04 	. 
	rlca			;05d1	07 	. 
	nop			;05d2	00 	. 
	inc b			;05d3	04 	. 
	inc bc			;05d4	03 	. 
	nop			;05d5	00 	. 
	ex af,af'			;05d6	08 	. 
	rst 38h			;05d7	ff 	. 
	nop			;05d8	00 	. 
	inc bc			;05d9	03 	. 
	inc bc			;05da	03 	. 
	add a,e			;05db	83 	. 
	ld b,e			;05dc	43 	C 
	and e			;05dd	a3 	. 
	out (0ebh),a		;05de	d3 eb 	. . 
	nop			;05e0	00 	. 
	ex af,af'			;05e1	08 	. 
	jp m,l0100h		;05e2	fa 00 01 	. . . 
	nop			;05e5	00 	. 
	nop			;05e6	00 	. 
	ld bc,080ffh		;05e7	01 ff 80 	. . . 
	nop			;05ea	00 	. 
	ld bc,0ffffh		;05eb	01 ff ff 	. . . 
	ld a,a			;05ee	7f 	 
	rst 38h			;05ef	ff 	. 
	ccf			;05f0	3f 	? 
	nop			;05f1	00 	. 
	ld bc,0e000h		;05f2	01 00 e0 	. . . 
	jr nz,l0597h		;05f5	20 a0 	  . 
	rst 38h			;05f7	ff 	. 
	ld b,b			;05f8	40 	@ 
	rst 38h			;05f9	ff 	. 
	and b			;05fa	a0 	. 
	rst 38h			;05fb	ff 	. 
	rra			;05fc	1f 	. 
	rst 38h			;05fd	ff 	. 
	rrca			;05fe	0f 	. 
	rst 38h			;05ff	ff 	. 
l0600h:
	rlca			;0600	07 	. 
	rst 38h			;0601	ff 	. 
l0602h:
	inc bc			;0602	03 	. 
l0603h:
	rst 38h			;0603	ff 	. 
	ret nc			;0604	d0 	. 
	rst 38h			;0605	ff 	. 
	ret pe			;0606	e8 	. 
	rst 38h			;0607	ff 	. 
	call p,0faffh		;0608	f4 ff fa 	. . . 
	nop			;060b	00 	. 
	ld bc,l0f00h		;060c	01 00 0f 	. . . 
	ex af,af'			;060f	08 	. 
	rrca			;0610	0f 	. 
	rst 38h			;0611	ff 	. 
	rlca			;0612	07 	. 
	rst 38h			;0613	ff 	. 
	rrca			;0614	0f 	. 
	nop			;0615	00 	. 
	ld bc,0fe00h		;0616	01 00 fe 	. . . 
	ld (bc),a			;0619	02 	. 
	or 0ffh		;061a	f6 ff 	. . 
	call p,0e8ffh		;061c	f4 ff e8 	. . . 
	rst 38h			;061f	ff 	. 
	rra			;0620	1f 	. 
	rst 38h			;0621	ff 	. 
	ccf			;0622	3f 	? 
	rst 38h			;0623	ff 	. 
	ld a,a			;0624	7f 	 
	rst 38h			;0625	ff 	. 
	cp 0ffh		;0626	fe ff 	. . 
	ret nc			;0628	d0 	. 
	rst 38h			;0629	ff 	. 
	and b			;062a	a0 	. 
	rst 38h			;062b	ff 	. 
	ld b,b			;062c	40 	@ 
	rst 38h			;062d	ff 	. 
	add a,b			;062e	80 	. 
	nop			;062f	00 	. 
	rlca			;0630	07 	. 
	nop			;0631	00 	. 
	ld bc,l0100h		;0632	01 00 01 	. . . 
	nop			;0635	00 	. 
	inc c			;0636	0c 	. 
	inc bc			;0637	03 	. 
	jr nz,l064bh		;0638	20 11 	  . 
	dec sp			;063a	3b 	; 
	rst 20h			;063b	e7 	. 
	add a,c			;063c	81 	. 
	inc bc			;063d	03 	. 
	rlca			;063e	07 	. 
	rrca			;063f	0f 	. 
	dec bc			;0640	0b 	. 
	rlca			;0641	07 	. 
	rrca			;0642	0f 	. 
	inc c			;0643	0c 	. 
	inc a			;0644	3c 	< 
	ex (sp),hl			;0645	e3 	. 
	rst 28h			;0646	ef 	. 
	ld sp,hl			;0647	f9 	. 
l0648h:
	di			;0648	f3 	. 
	ex de,hl			;0649	eb 	. 
	push bc			;064a	c5 	. 
l064bh:
	adc a,080h		;064b	ce 80 	. . 
	rst 38h			;064d	ff 	. 
	jr nc,l0648h		;064e	30 f8 	0 . 
	pop af			;0650	f1 	. 
	jp 0fdefh		;0651	c3 ef fd 	. . . 
	xor 000h		;0654	ee 00 	. . 
	ld bc,l0e00h		;0656	01 00 0e 	. . . 
	inc hl			;0659	23 	# 
	add a,b			;065a	80 	. 
	nop			;065b	00 	. 
	ld bc,04000h		;065c	01 00 40 	. . @ 
	ret nz			;065f	c0 	. 
	nop			;0660	00 	. 
	ld bc,l0000h		;0661	01 00 00 	. . . 
	ld bc,0a3ffh		;0664	01 ff a3 	. . . 
	ld d,d			;0667	52 	R 
	ret nz			;0668	c0 	. 
	add a,c			;0669	81 	. 
	add a,b			;066a	80 	. 
	jr c,l06c9h		;066b	38 5c 	8 \ 
	add a,c			;066d	81 	. 
	ld c,b			;066e	48 	H 
	rst 38h			;066f	ff 	. 
	adc a,h			;0670	8c 	. 
	inc c			;0671	0c 	. 
	ld b,04bh		;0672	06 4b 	. K 
	ld e,a			;0674	5f 	_ 
	nop			;0675	00 	. 
	inc bc			;0676	03 	. 
	nop			;0677	00 	. 
	adc a,h			;0678	8c 	. 
	rst 38h			;0679	ff 	. 
	ret c			;067a	d8 	. 
	ld a,017h		;067b	3e 17 	> . 
	rst 38h			;067d	ff 	. 
	ccf			;067e	3f 	? 
	inc a			;067f	3c 	< 
	rst 38h			;0680	ff 	. 
	jr c,$+26		;0681	38 18 	8 . 
	inc e			;0683	1c 	. 
	ld c,0f8h		;0684	0e f8 	. . 
	call z,sub_0804h		;0686	cc 04 08 	. . . 
	nop			;0689	00 	. 
	ld bc,l0900h		;068a	01 00 09 	. . . 
	rra			;068d	1f 	. 
	nop			;068e	00 	. 
	ld bc,l0effh		;068f	01 ff 0e 	. . . 
	ld (bc),a			;0692	02 	. 
	ld bc,l02ffh		;0693	01 ff 02 	. . . 
	ld b,0ffh		;0696	06 ff 	. . 
	dec b			;0698	05 	. 
	nop			;0699	00 	. 
	ld bc,0feffh		;069a	01 ff fe 	. . . 
	nop			;069d	00 	. 
	inc bc			;069e	03 	. 
	call m,07cffh		;069f	fc ff 7c 	. . | 
	dec a			;06a2	3d 	= 
	nop			;06a3	00 	. 
	inc bc			;06a4	03 	. 
	ccf			;06a5	3f 	? 
	rst 38h			;06a6	ff 	. 
	rra			;06a7	1f 	. 
	rst 38h			;06a8	ff 	. 
	ld a,a			;06a9	7f 	 
	ld e,a			;06aa	5f 	_ 
	inc a			;06ab	3c 	< 
	ld a,h			;06ac	7c 	| 
	ld (hl),b			;06ad	70 	p 
	nop			;06ae	00 	. 
	ld bc,l0000h		;06af	01 00 00 	. . . 
	inc b			;06b2	04 	. 
	rlca			;06b3	07 	. 
	adc a,a			;06b4	8f 	. 
	inc bc			;06b5	03 	. 
	nop			;06b6	00 	. 
	ld bc,0ff00h		;06b7	01 00 ff 	. . . 
	ret po			;06ba	e0 	. 
	ret nz			;06bb	c0 	. 
	rst 38h			;06bc	ff 	. 
	sub b			;06bd	90 	. 
	di			;06be	f3 	. 
	pop hl			;06bf	e1 	. 
	rst 38h			;06c0	ff 	. 
	ret nz			;06c1	c0 	. 
	add a,0c7h		;06c2	c6 c7 	. . 
	jp l00e2h		;06c4	c3 e2 00 	. . . 
	inc bc			;06c7	03 	. 
	rst 38h			;06c8	ff 	. 
l06c9h:
	ld a,(hl)			;06c9	7e 	~ 
	ld a,a			;06ca	7f 	 
	ccf			;06cb	3f 	? 
	sbc a,a			;06cc	9f 	. 
	ld c,0f0h		;06cd	0e f0 	. . 
	cp 000h		;06cf	fe 00 	. . 
	ld bc,l1e00h		;06d1	01 00 1e 	. . . 
	ccf			;06d4	3f 	? 
	ld a,0ffh		;06d5	3e ff 	> . 
	ld a,h			;06d7	7c 	| 
	ld b,b			;06d8	40 	@ 
	ld hl,l1113h		;06d9	21 13 11 	! . . 
	rst 38h			;06dc	ff 	. 
	add hl,bc			;06dd	09 	. 
	adc a,c			;06de	89 	. 
	adc a,e			;06df	8b 	. 
	nop			;06e0	00 	. 
	inc b			;06e1	04 	. 
	rst 38h			;06e2	ff 	. 
	ccf			;06e3	3f 	? 
	sbc a,(hl)			;06e4	9e 	. 
	ccf			;06e5	3f 	? 
	ld a,h			;06e6	7c 	| 
	nop			;06e7	00 	. 
	inc b			;06e8	04 	. 
	add a,b			;06e9	80 	. 
	nop			;06ea	00 	. 
	inc b			;06eb	04 	. 
	nop			;06ec	00 	. 
	ld l,b			;06ed	68 	h 
	and 0ffh		;06ee	e6 ff 	. . 
	pop hl			;06f0	e1 	. 
	ret p			;06f1	f0 	. 
	nop			;06f2	00 	. 
	inc bc			;06f3	03 	. 
	call p,l0700h		;06f4	f4 00 07 	. . . 
	nop			;06f7	00 	. 
	djnz $-2		;06f8	10 fc 	. . 
	cp 000h		;06fa	fe 00 	. . 
	inc bc			;06fc	03 	. 
	rst 38h			;06fd	ff 	. 
	nop			;06fe	00 	. 
	inc bc			;06ff	03 	. 
l0700h:
	ld a,a			;0700	7f 	 
	rst 38h			;0701	ff 	. 
	nop			;0702	00 	. 
l0703h:
	ld bc,l03ffh		;0703	01 ff 03 	. . . 
	rst 38h			;0706	ff 	. 
sub_0707h:
	rlca			;0707	07 	. 
	rrca			;0708	0f 	. 
	rst 38h			;0709	ff 	. 
	ld a,a			;070a	7f 	 
	ld a,(hl)			;070b	7e 	~ 
	ld a,h			;070c	7c 	| 
	ld a,b			;070d	78 	x 
	ld h,b			;070e	60 	` 
	rst 38h			;070f	ff 	. 
	nop			;0710	00 	. 
	rst 38h			;0711	ff 	. 
	rrca			;0712	0f 	. 
	nop			;0713	00 	. 
	dec b			;0714	05 	. 
	rra			;0715	1f 	. 
	ccf			;0716	3f 	? 
	ld a,a			;0717	7f 	 
	inc hl			;0718	23 	# 
l0719h:
	ld a,a			;0719	7f 	 
	nop			;071a	00 	. 
	dec b			;071b	05 	. 
	rst 38h			;071c	ff 	. 
	nop			;071d	00 	. 
	ld bc,l0600h		;071e	01 00 06 	. . . 
	inc c			;0721	0c 	. 
	jr l0754h		;0722	18 30 	. 0 
	ld h,b			;0724	60 	` 
	ret nz			;0725	c0 	. 
	nop			;0726	00 	. 
	ld bc,l0000h		;0727	01 00 00 	. . . 
	ex af,af'			;072a	08 	. 
	rst 38h			;072b	ff 	. 
	nop			;072c	00 	. 
	inc b			;072d	04 	. 
	nop			;072e	00 	. 
	ret po			;072f	e0 	. 
	rst 38h			;0730	ff 	. 
	ret p			;0731	f0 	. 
	ret m			;0732	f8 	. 
	ccf			;0733	3f 	? 
	nop			;0734	00 	. 
	rlca			;0735	07 	. 
	rra			;0736	1f 	. 
	nop			;0737	00 	. 
	ld b,0ffh		;0738	06 ff 	. . 
	defb 0fdh,0fah,000h	;illegal sequence		;073a	fd fa 00 	. . . 
	rlca			;073d	07 	. 
	rrca			;073e	0f 	. 
sub_073fh:
	nop			;073f	00 	. 
	ld bc,l0000h		;0740	01 00 00 	. . . 
	inc bc			;0743	03 	. 
	jp m,l0300h		;0744	fa 00 03 	. . . 
	call p,000fch		;0747	f4 fc 00 	. . . 
	ld bc,l0000h		;074a	01 00 00 	. . . 
	rlca			;074d	07 	. 
	rst 38h			;074e	ff 	. 
	ld a,a			;074f	7f 	 
	call p,l0700h		;0750	f4 00 07 	. . . 
	ret pe			;0753	e8 	. 
l0754h:
	nop			;0754	00 	. 
	inc bc			;0755	03 	. 
	ld a,a			;0756	7f 	 
	nop			;0757	00 	. 
	inc b			;0758	04 	. 
	ccf			;0759	3f 	? 
	nop			;075a	00 	. 
	ld bc,l0000h		;075b	01 00 00 	. . . 
	ld b,0d0h		;075e	06 d0 	. . 
	ret p			;0760	f0 	. 
	nop			;0761	00 	. 
	ld bc,l0000h		;0762	01 00 00 	. . . 
	inc bc			;0765	03 	. 
	defb 0fdh,0feh,07eh	;illegal sequence		;0766	fd fe 7e 	. . ~ 
	rst 38h			;0769	ff 	. 
	ld a,a			;076a	7f 	 
	ccf			;076b	3f 	? 
	nop			;076c	00 	. 
	inc bc			;076d	03 	. 
	nop			;076e	00 	. 
	rst 38h			;076f	ff 	. 
	add a,b			;0770	80 	. 
	ld b,b			;0771	40 	@ 
	and b			;0772	a0 	. 
	ret c			;0773	d8 	. 
	ccf			;0774	3f 	? 
	rst 38h			;0775	ff 	. 
	rra			;0776	1f 	. 
	rrca			;0777	0f 	. 
	rlca			;0778	07 	. 
	ld bc,sub_00ffh		;0779	01 ff 00 	. . . 
	rst 20h			;077c	e7 	. 
	ret m			;077d	f8 	. 
	nop			;077e	00 	. 
	inc b			;077f	04 	. 
	rst 38h			;0780	ff 	. 
	ld a,a			;0781	7f 	 
	rrca			;0782	0f 	. 
	nop			;0783	00 	. 
	inc bc			;0784	03 	. 
	nop			;0785	00 	. 
	rst 38h			;0786	ff 	. 
	ld bc,l0500h+2		;0787	01 02 05 	. . . 
	dec de			;078a	1b 	. 
	nop			;078b	00 	. 
	inc bc			;078c	03 	. 
	defb 0fdh,07dh	;ld a,iyl		;078d	fd 7d 	. } 
	ld a,d			;078f	7a 	z 
	rst 38h			;0790	ff 	. 
	jp m,0e7f4h		;0791	fa f4 e7 	. . . 
	rra			;0794	1f 	. 
	rst 38h			;0795	ff 	. 
	rst 38h			;0796	ff 	. 
	cp 000h		;0797	fe 00 	. . 
	ld bc,0feffh		;0799	01 ff fe 	. . . 
	ret p			;079c	f0 	. 
	call p,0e8ffh		;079d	f4 ff e8 	. . . 
	sub b			;07a0	90 	. 
	ld h,b			;07a1	60 	` 
	add a,b			;07a2	80 	. 
	rst 38h			;07a3	ff 	. 
	nop			;07a4	00 	. 
	nop			;07a5	00 	. 
	ex af,af'			;07a6	08 	. 
	ccf			;07a7	3f 	? 
	cp a			;07a8	bf 	. 
	xor a			;07a9	af 	. 
	and a			;07aa	a7 	. 
	and e			;07ab	a3 	. 
	and c			;07ac	a1 	. 
	nop			;07ad	00 	. 
	inc bc			;07ae	03 	. 
	and b			;07af	a0 	. 
	nop			;07b0	00 	. 
	inc b			;07b1	04 	. 
	ccf			;07b2	3f 	? 
	nop			;07b3	00 	. 
	inc bc			;07b4	03 	. 
	ld a,a			;07b5	7f 	 
	nop			;07b6	00 	. 
	ld bc,l0000h		;07b7	01 00 00 	. . . 
	ld b,0a0h		;07ba	06 a0 	. . 
	ret po			;07bc	e0 	. 
	nop			;07bd	00 	. 
	ld bc,0f700h		;07be	01 00 f7 	. . . 
	ld sp,hl			;07c1	f9 	. 
	nop			;07c2	00 	. 
	inc b			;07c3	04 	. 
	rst 38h			;07c4	ff 	. 
	ld a,a			;07c5	7f 	 
	ccf			;07c6	3f 	? 
	nop			;07c7	00 	. 
	ex af,af'			;07c8	08 	. 
	jp m,l0f1fh		;07c9	fa 1f 0f 	. . . 
	rlca			;07cc	07 	. 
	nop			;07cd	00 	. 
	inc b			;07ce	04 	. 
	inc bc			;07cf	03 	. 
	nop			;07d0	00 	. 
	ld bc,l0000h		;07d1	01 00 00 	. . . 
	ld b,0fah		;07d4	06 fa 	. . 
	cp 000h		;07d6	fe 00 	. . 
	ld bc,0ff00h		;07d8	01 00 ff 	. . . 
	ld bc,l0600h		;07db	01 00 06 	. . . 
	nop			;07de	00 	. 
	nop			;07df	00 	. 
	inc b			;07e0	04 	. 
	rst 38h			;07e1	ff 	. 
	nop			;07e2	00 	. 
	inc b			;07e3	04 	. 
	ccf			;07e4	3f 	? 
	nop			;07e5	00 	. 
	ld bc,l0100h		;07e6	01 00 01 	. . . 
	inc bc			;07e9	03 	. 
	rlca			;07ea	07 	. 
	rra			;07eb	1f 	. 
	ccf			;07ec	3f 	? 
	ld a,a			;07ed	7f 	 
	nop			;07ee	00 	. 
sub_07efh:
	ld bc,07fffh		;07ef	01 ff 7f 	. .  
	nop			;07f2	00 	. 
	rlca			;07f3	07 	. 
	rst 38h			;07f4	ff 	. 
	rst 38h			;07f5	ff 	. 
	defb 0fdh,0fah,0f6h	;illegal sequence		;07f6	fd fa f6 	. . . 
	nop			;07f9	00 	. 
	inc b			;07fa	04 	. 
	ret pe			;07fb	e8 	. 
	nop			;07fc	00 	. 
	rlca			;07fd	07 	. 
	nop			;07fe	00 	. 
sub_07ffh:
	inc bc			;07ff	03 	. 
l0800h:
	nop			;0800	00 	. 
	inc b			;0801	04 	. 
	ret pe			;0802	e8 	. 
	rst 38h			;0803	ff 	. 
sub_0804h:
	call p,000fch		;0804	f4 fc 00 	. . . 
	inc bc			;0807	03 	. 
	nop			;0808	00 	. 
	nop			;0809	00 	. 
	ld b,080h		;080a	06 80 	. . 
	dec hl			;080c	2b 	+ 
	cpl			;080d	2f 	/ 
	ld l,a			;080e	6f 	o 
	ld l,(hl)			;080f	6e 	n 
	ld l,h			;0810	6c 	l 
	ld a,h			;0811	7c 	| 
	ld l,h			;0812	6c 	l 
	ld h,(hl)			;0813	66 	f 
	ld a,c			;0814	79 	y 
	ret m			;0815	f8 	. 
	ret po			;0816	e0 	. 
	rst 38h			;0817	ff 	. 
	ld l,b			;0818	68 	h 
	ld a,b			;0819	78 	x 
	ld e,b			;081a	58 	X 
	inc e			;081b	1c 	. 
	ld h,e			;081c	63 	c 
	ld h,c			;081d	61 	a 
	ld sp,04911h		;081e	31 11 49 	1 . I 
	ld b,b			;0821	40 	@ 
	jr nz,$+50		;0822	20 30 	  0 
	rrca			;0824	0f 	. 
	ld c,086h		;0825	0e 86 	. . 
	add a,a			;0827	87 	. 
	rst 38h			;0828	ff 	. 
	jp 063e0h		;0829	c3 e0 63 	. . c 
	cp 000h		;082c	fe 00 	. . 
	ld bc,0fdffh		;082e	01 ff fd 	. . . 
	ret p			;0831	f0 	. 
	rst 38h			;0832	ff 	. 
	ld h,b			;0833	60 	` 
	ld b,b			;0834	40 	@ 
	ld h,b			;0835	60 	` 
	dec de			;0836	1b 	. 
	inc e			;0837	1c 	. 
	ccf			;0838	3f 	? 
	rrca			;0839	0f 	. 
	rlca			;083a	07 	. 
	nop			;083b	00 	. 
	ld bc,l1d00h		;083c	01 00 1d 	. . . 
	rrca			;083f	0f 	. 
	ld h,b			;0840	60 	` 
	jr nc,l0843h		;0841	30 00 	0 . 
l0843h:
	dec b			;0843	05 	. 
	nop			;0844	00 	. 
	sub b			;0845	90 	. 
	inc bc			;0846	03 	. 
	ld bc,l0300h		;0847	01 00 03 	. . . 
	nop			;084a	00 	. 
	rra			;084b	1f 	. 
	ld c,a			;084c	4f 	O 
	xor a			;084d	af 	. 
	ex (sp),hl			;084e	e3 	. 
	ld bc,0c5c1h		;084f	01 c1 c5 	. . . 
	nop			;0852	00 	. 
	ld bc,048ffh		;0853	01 ff 48 	. . H 
	jr l0858h		;0856	18 00 	. . 
l0858h:
	ld bc,l0500h		;0858	01 00 05 	. . . 
	rst 38h			;085b	ff 	. 
	add a,l			;085c	85 	. 
	add a,a			;085d	87 	. 
	add a,(hl)			;085e	86 	. 
	add a,0ffh		;085f	c6 ff 	. . 
	ld b,d			;0861	42 	B 
	call z,sub_0ee6h		;0862	cc e6 0e 	. . . 
	ld a,(hl)			;0865	7e 	~ 
	ccf			;0866	3f 	? 
	nop			;0867	00 	. 
	inc bc			;0868	03 	. 
	rra			;0869	1f 	. 
	ld b,d			;086a	42 	B 
	inc bc			;086b	03 	. 
l086ch:
	rst 38h			;086c	ff 	. 
	ld bc,l0100h		;086d	01 00 01 	. . . 
	nop			;0870	00 	. 
	add a,b			;0871	80 	. 
	nop			;0872	00 	. 
	ld bc,0c000h		;0873	01 00 c0 	. . . 
	nop			;0876	00 	. 
	inc bc			;0877	03 	. 
	add a,a			;0878	87 	. 
	add a,e			;0879	83 	. 
	add a,c			;087a	81 	. 
	nop			;087b	00 	. 
	inc bc			;087c	03 	. 
	ret nz			;087d	c0 	. 
	and b			;087e	a0 	. 
	rst 38h			;087f	ff 	. 
	ret nz			;0880	c0 	. 
	ret nc			;0881	d0 	. 
	ret po			;0882	e0 	. 
	jr nz,l089dh		;0883	20 18 	  . 
	nop			;0885	00 	. 
	ld bc,0c000h		;0886	01 00 c0 	. . . 
	ld b,b			;0889	40 	@ 
	ld h,b			;088a	60 	` 
	and b			;088b	a0 	. 
	ret nc			;088c	d0 	. 
	ld (hl),b			;088d	70 	p 
	jr z,l086ch		;088e	28 dc 	( . 
	nop			;0890	00 	. 
	ex af,af'			;0891	08 	. 
	nop			;0892	00 	. 
	ld a,h			;0893	7c 	| 
	ld a,l			;0894	7d 	} 
	ld a,(hl)			;0895	7e 	~ 
	ccf			;0896	3f 	? 
	ld e,000h		;0897	1e 00 	. . 
	inc bc			;0899	03 	. 
	nop			;089a	00 	. 
	nop			;089b	00 	. 
	inc bc			;089c	03 	. 
l089dh:
	dec bc			;089d	0b 	. 
	nop			;089e	00 	. 
	dec b			;089f	05 	. 
	rrca			;08a0	0f 	. 
	nop			;08a1	00 	. 
	ex af,af'			;08a2	08 	. 
	nop			;08a3	00 	. 
	rra			;08a4	1f 	. 
	nop			;08a5	00 	. 
	inc bc			;08a6	03 	. 
	rla			;08a7	17 	. 
	rlca			;08a8	07 	. 
	daa			;08a9	27 	' 
	rst 38h			;08aa	ff 	. 
	rrca			;08ab	0f 	. 
	ret p			;08ac	f0 	. 
	di			;08ad	f3 	. 
	rst 38h			;08ae	ff 	. 
	ret p			;08af	f0 	. 
	call m,0f9f8h		;08b0	fc f8 f9 	. . . 
	nop			;08b3	00 	. 
	ld bc,l10ffh		;08b4	01 ff 10 	. . . 
	rst 38h			;08b7	ff 	. 
	jr nc,$+1		;08b8	30 ff 	0 . 
	ld (hl),b			;08ba	70 	p 
	ret m			;08bb	f8 	. 
	ret z			;08bc	c8 	. 
	sbc a,b			;08bd	98 	. 
	rst 20h			;08be	e7 	. 
	rst 28h			;08bf	ef 	. 
	nop			;08c0	00 	. 
	inc bc			;08c1	03 	. 
	rst 8			;08c2	cf 	. 
	nop			;08c3	00 	. 
	inc bc			;08c4	03 	. 
	rst 18h			;08c5	df 	. 
	sbc a,b			;08c6	98 	. 
	jr c,l08c9h		;08c7	38 00 	8 . 
l08c9h:
	inc b			;08c9	04 	. 
	ld a,b			;08ca	78 	x 
	ld (hl),b			;08cb	70 	p 
	ret p			;08cc	f0 	. 
	rst 38h			;08cd	ff 	. 
	nop			;08ce	00 	. 
	rra			;08cf	1f 	. 
	ld a,a			;08d0	7f 	 
	nop			;08d1	00 	. 
	ld bc,l3ffch+3		;08d2	01 ff 3f 	. . ? 
	rlca			;08d5	07 	. 
	jp l0100h		;08d6	c3 00 01 	. . . 
	nop			;08d9	00 	. 
	rst 38h			;08da	ff 	. 
	rlca			;08db	07 	. 
	ld (bc),a			;08dc	02 	. 
	pop bc			;08dd	c1 	. 
	ex (sp),hl			;08de	e3 	. 
	di			;08df	f3 	. 
	ccf			;08e0	3f 	? 
	call m,l0900h		;08e1	fc 00 09 	. . . 
	rst 38h			;08e4	ff 	. 
	rst 38h			;08e5	ff 	. 
	ret p			;08e6	f0 	. 
	ret m			;08e7	f8 	. 
	nop			;08e8	00 	. 
	inc bc			;08e9	03 	. 
	rst 38h			;08ea	ff 	. 
	nop			;08eb	00 	. 
	ld bc,l3000h		;08ec	01 00 30 	. . 0 
	rst 38h			;08ef	ff 	. 
	ret p			;08f0	f0 	. 
	pop af			;08f1	f1 	. 
	inc hl			;08f2	23 	# 
	rst 0			;08f3	c7 	. 
	rst 20h			;08f4	e7 	. 
	nop			;08f5	00 	. 
	inc b			;08f6	04 	. 
	nop			;08f7	00 	. 
	nop			;08f8	00 	. 
	inc b			;08f9	04 	. 
	add a,b			;08fa	80 	. 
	jp p,003f0h		;08fb	f2 f0 03 	. . . 
	nop			;08fe	00 	. 
	inc bc			;08ff	03 	. 
l0900h:
	nop			;0900	00 	. 
	ret nz			;0901	c0 	. 
	ret po			;0902	e0 	. 
	nop			;0903	00 	. 
	ld bc,0c000h		;0904	01 00 c0 	. . . 
	nop			;0907	00 	. 
	ld b,000h		;0908	06 00 	. . 
	nop			;090a	00 	. 
	ex af,af'			;090b	08 	. 
	rst 38h			;090c	ff 	. 
	rst 38h			;090d	ff 	. 
	ret p			;090e	f0 	. 
	rst 38h			;090f	ff 	. 
	ret m			;0910	f8 	. 
	rst 38h			;0911	ff 	. 
	call m,0feffh		;0912	fc ff fe 	. . . 
	rst 38h			;0915	ff 	. 
	nop			;0916	00 	. 
	rst 38h			;0917	ff 	. 
	add a,b			;0918	80 	. 
	nop			;0919	00 	. 
	inc bc			;091a	03 	. 
	ld b,b			;091b	40 	@ 
	jr nz,l091eh		;091c	20 00 	  . 
l091eh:
	inc bc			;091e	03 	. 
	cp 000h		;091f	fe 00 	. . 
	dec b			;0921	05 	. 
	rst 38h			;0922	ff 	. 
	nop			;0923	00 	. 
	ex af,af'			;0924	08 	. 
	nop			;0925	00 	. 
	ccf			;0926	3f 	? 
	rra			;0927	1f 	. 
	ld e,0ffh		;0928	1e ff 	. . 
	inc e			;092a	1c 	. 
	nop			;092b	00 	. 
	inc bc			;092c	03 	. 
	inc c			;092d	0c 	. 
	nop			;092e	00 	. 
	dec b			;092f	05 	. 
	nop			;0930	00 	. 
	rst 38h			;0931	ff 	. 
	ld bc,l0100h		;0932	01 00 01 	. . . 
	nop			;0935	00 	. 
l0936h:
	rst 38h			;0936	ff 	. 
	ld c,006h		;0937	0e 06 	. . 
	rlca			;0939	07 	. 
	nop			;093a	00 	. 
	inc bc			;093b	03 	. 
	inc bc			;093c	03 	. 
	ld bc,l00c0h		;093d	01 c0 00 	. . . 
	rlca			;0940	07 	. 
	nop			;0941	00 	. 
	ccf			;0942	3f 	? 
	rlca			;0943	07 	. 
	ld bc,l0800h		;0944	01 00 08 	. . . 
	nop			;0947	00 	. 
	ld b,001h		;0948	06 01 	. . 
	rst 38h			;094a	ff 	. 
	add a,b			;094b	80 	. 
	ret nz			;094c	c0 	. 
	nop			;094d	00 	. 
	inc b			;094e	04 	. 
	nop			;094f	00 	. 
	add a,b			;0950	80 	. 
	ld a,b			;0951	78 	x 
	rst 38h			;0952	ff 	. 
	nop			;0953	00 	. 
	sbc a,0ddh		;0954	de dd 	. . 
	call nc,sub_1766h		;0956	d4 66 17 	. f . 
	rrca			;0959	0f 	. 
	ld b,002h		;095a	06 02 	. . 
	jr nz,l091eh		;095c	20 c0 	  . 
	nop			;095e	00 	. 
	inc b			;095f	04 	. 
	jr nz,$+1		;0960	20 ff 	  . 
	ld b,b			;0962	40 	@ 
	ld bc,l03ffh		;0963	01 ff 03 	. . . 
	ld (bc),a			;0966	02 	. 
sub_0967h:
	ld b,004h		;0967	06 04 	. . 
	rst 38h			;0969	ff 	. 
	ex af,af'			;096a	08 	. 
	add a,b			;096b	80 	. 
	nop			;096c	00 	. 
	rlca			;096d	07 	. 
	nop			;096e	00 	. 
	ld b,004h		;096f	06 04 	. . 
	inc c			;0971	0c 	. 
	ex af,af'			;0972	08 	. 
	rst 38h			;0973	ff 	. 
	jr $+1		;0974	18 ff 	. . 
	djnz l0978h		;0976	10 00 	. . 
l0978h:
	inc bc			;0978	03 	. 
	nop			;0979	00 	. 
	djnz $+26		;097a	10 18 	. . 
	inc e			;097c	1c 	. 
	ld e,01fh		;097d	1e 1f 	. . 
	nop			;097f	00 	. 
	inc b			;0980	04 	. 
	nop			;0981	00 	. 
	rlca			;0982	07 	. 
	nop			;0983	00 	. 
	inc bc			;0984	03 	. 
	nop			;0985	00 	. 
	rra			;0986	1f 	. 
	rst 38h			;0987	ff 	. 
	ccf			;0988	3f 	? 
	ld a,(hl)			;0989	7e 	~ 
	cp 0ffh		;098a	fe ff 	. . 
	ld a,078h		;098c	3e 78 	> x 
	nop			;098e	00 	. 
l098fh:
	ld c,b			;098f	48 	H 
	nop			;0990	00 	. 
	jr nz,$+1		;0991	20 ff 	  . 
	djnz l0995h		;0993	10 00 	. . 
l0995h:
	inc bc			;0995	03 	. 
	ex af,af'			;0996	08 	. 
	rst 38h			;0997	ff 	. 
	inc b			;0998	04 	. 
	nop			;0999	00 	. 
	ex af,af'			;099a	08 	. 
	nop			;099b	00 	. 
	inc b			;099c	04 	. 
	nop			;099d	00 	. 
	rlca			;099e	07 	. 
	ld (bc),a			;099f	02 	. 
	jr l09c0h		;09a0	18 1e 	. . 
	rra			;09a2	1f 	. 
	rrca			;09a3	0f 	. 
	rst 38h			;09a4	ff 	. 
	ld c,006h		;09a5	0e 06 	. . 
	rlca			;09a7	07 	. 
	rst 38h			;09a8	ff 	. 
	rra			;09a9	1f 	. 
	rst 20h			;09aa	e7 	. 
	add a,b			;09ab	80 	. 
	nop			;09ac	00 	. 
	ld bc,08000h		;09ad	01 00 80 	. . . 
	ld b,b			;09b0	40 	@ 
	nop			;09b1	00 	. 
	ld bc,l0300h		;09b2	01 00 03 	. . . 
	rlca			;09b5	07 	. 
	rst 38h			;09b6	ff 	. 
	ld bc,l0400h		;09b7	01 00 04 	. . . 
	nop			;09ba	00 	. 
	add a,b			;09bb	80 	. 
	ret nz			;09bc	c0 	. 
	rst 38h			;09bd	ff 	. 
	ret po			;09be	e0 	. 
	ret p			;09bf	f0 	. 
l09c0h:
	ret m			;09c0	f8 	. 
	ld a,(hl)			;09c1	7e 	~ 
	ccf			;09c2	3f 	? 
	and b			;09c3	a0 	. 
	or b			;09c4	b0 	. 
	ret nz			;09c5	c0 	. 
	nop			;09c6	00 	. 
	dec b			;09c7	05 	. 
	nop			;09c8	00 	. 
	ld l,(hl)			;09c9	6e 	n 
	nop			;09ca	00 	. 
	ex af,af'			;09cb	08 	. 
	nop			;09cc	00 	. 
	nop			;09cd	00 	. 
	inc bc			;09ce	03 	. 
	ld bc,l0300h		;09cf	01 00 03 	. . . 
	nop			;09d2	00 	. 
	adc a,a			;09d3	8f 	. 
	nop			;09d4	00 	. 
	inc b			;09d5	04 	. 
	nop			;09d6	00 	. 
	ld bc,l0f03h		;09d7	01 03 0f 	. . . 
	nop			;09da	00 	. 
	ld bc,sub_00ffh		;09db	01 ff 00 	. . . 
	inc b			;09de	04 	. 
	rla			;09df	17 	. 
	rst 38h			;09e0	ff 	. 
	rra			;09e1	1f 	. 
	rst 38h			;09e2	ff 	. 
	ld a,087h		;09e3	3e 87 	> . 
	sbc a,c			;09e5	99 	. 
	and b			;09e6	a0 	. 
	ret nz			;09e7	c0 	. 
	ld b,b			;09e8	40 	@ 
	ld b,h			;09e9	44 	D 
	adc a,(hl)			;09ea	8e 	. 
	sbc a,a			;09eb	9f 	. 
	ld a,l			;09ec	7d 	} 
	rst 38h			;09ed	ff 	. 
	ld a,c			;09ee	79 	y 
	ret p			;09ef	f0 	. 
	rst 30h			;09f0	f7 	. 
	call p,0e4ffh		;09f1	f4 ff e4 	. . . 
	cp (hl)			;09f4	be 	. 
	call m,0f0f8h		;09f5	fc f8 f0 	. . . 
	ret po			;09f8	e0 	. 
	ld b,b			;09f9	40 	@ 
	nop			;09fa	00 	. 
	ld bc,l2000h		;09fb	01 00 20 	. .   
	ld l,017h		;09fe	2e 17 	. . 
	adc a,e			;0a00	8b 	. 
	ld b,a			;0a01	47 	G 
	cpl			;0a02	2f 	/ 
	inc sp			;0a03	33 	3 
	ld h,d			;0a04	62 	b 
	and c			;0a05	a1 	. 
	nop			;0a06	00 	. 
	ld bc,0c000h		;0a07	01 00 c0 	. . . 
	ret m			;0a0a	f8 	. 
l0a0bh:
	rst 38h			;0a0b	ff 	. 
	rst 38h			;0a0c	ff 	. 
	ei			;0a0d	fb 	. 
	ld sp,hl			;0a0e	f9 	. 
	ret p			;0a0f	f0 	. 
	ld hl,l3111h		;0a10	21 11 31 	! . 1 
	rst 38h			;0a13	ff 	. 
	ld b,c			;0a14	41 	A 
	add a,c			;0a15	81 	. 
	inc bc			;0a16	03 	. 
	ld (bc),a			;0a17	02 	. 
	ret po			;0a18	e0 	. 
	ret nz			;0a19	c0 	. 
	nop			;0a1a	00 	. 
	inc bc			;0a1b	03 	. 
	add a,b			;0a1c	80 	. 
	nop			;0a1d	00 	. 
	inc b			;0a1e	04 	. 
	nop			;0a1f	00 	. 
	inc bc			;0a20	03 	. 
	rra			;0a21	1f 	. 
	nop			;0a22	00 	. 
	ld bc,0feffh		;0a23	01 ff fe 	. . . 
	call m,sub_00f0h		;0a26	fc f0 00 	. . . 
	ld bc,0ff00h		;0a29	01 00 ff 	. . . 
	rst 8			;0a2c	cf 	. 
	add a,a			;0a2d	87 	. 
	rst 38h			;0a2e	ff 	. 
	inc hl			;0a2f	23 	# 
	inc de			;0a30	13 	. 
	dec d			;0a31	15 	. 
	dec e			;0a32	1d 	. 
	add a,b			;0a33	80 	. 
	ld b,b			;0a34	40 	@ 
	jr nz,l0a37h		;0a35	20 00 	  . 
l0a37h:
	inc bc			;0a37	03 	. 
	djnz $+1		;0a38	10 ff 	. . 
	jr nz,l0a4ah		;0a3a	20 0e 	  . 
	inc bc			;0a3c	03 	. 
	ld bc,l0500h		;0a3d	01 00 05 	. . . 
	nop			;0a40	00 	. 
	sbc a,a			;0a41	9f 	. 
	sbc a,h			;0a42	9c 	. 
	sbc a,b			;0a43	98 	. 
	or c			;0a44	b1 	. 
	rst 30h			;0a45	f7 	. 
	cp 0f8h		;0a46	fe f8 	. . 
	rst 38h			;0a48	ff 	. 
	ret p			;0a49	f0 	. 
l0a4ah:
	jr nc,l0a4ch		;0a4a	30 00 	0 . 
l0a4ch:
	ld bc,0f000h		;0a4c	01 00 f0 	. . . 
	ex af,af'			;0a4f	08 	. 
	inc b			;0a50	04 	. 
	rst 38h			;0a51	ff 	. 
	ld (bc),a			;0a52	02 	. 
	ret po			;0a53	e0 	. 
	ld h,b			;0a54	60 	` 
	ret nz			;0a55	c0 	. 
	nop			;0a56	00 	. 
	dec b			;0a57	05 	. 
	nop			;0a58	00 	. 
	rst 38h			;0a59	ff 	. 
	ld bc,00d00h		;0a5a	01 00 0d 	. . . 
	nop			;0a5d	00 	. 
	ld bc,l0700h		;0a5e	01 00 07 	. . . 
	nop			;0a61	00 	. 
	add a,b			;0a62	80 	. 
	ld bc,l0700h		;0a63	01 00 07 	. . . 
	nop			;0a66	00 	. 
	add a,b			;0a67	80 	. 
	nop			;0a68	00 	. 
	daa			;0a69	27 	' 
l0a6ah:
	nop			;0a6a	00 	. 
	nop			;0a6b	00 	. 
	nop			;0a6c	00 	. 
	nop			;0a6d	00 	. 
	rst 38h			;0a6e	ff 	. 
	nop			;0a6f	00 	. 
	nop			;0a70	00 	. 
	or c			;0a71	b1 	. 
	nop			;0a72	00 	. 
	nop			;0a73	00 	. 
	ex af,af'			;0a74	08 	. 
	rst 38h			;0a75	ff 	. 
	nop			;0a76	00 	. 
	ret p			;0a77	f0 	. 
	nop			;0a78	00 	. 
	nop			;0a79	00 	. 
	ex af,af'			;0a7a	08 	. 
	rst 38h			;0a7b	ff 	. 
	nop			;0a7c	00 	. 
	ld d,l			;0a7d	55 	U 
	nop			;0a7e	00 	. 
	ld bc,l0603h		;0a7f	01 03 06 	. . . 
	nop			;0a82	00 	. 
	ld bc,l3000h		;0a83	01 00 30 	. . 0 
	ld a,h			;0a86	7c 	| 
	rra			;0a87	1f 	. 
	ld l,(hl)			;0a88	6e 	n 
	call nz,07e18h		;0a89	c4 18 7e 	. . ~ 
	inc c			;0a8c	0c 	. 
	ex af,af'			;0a8d	08 	. 
	djnz $+54		;0a8e	10 34 	. 4 
	jr c,l0ac2h		;0a90	38 30 	8 0 
	ld (hl),e			;0a92	73 	s 
	ld b,e			;0a93	43 	C 
	inc e			;0a94	1c 	. 
	djnz $+8		;0a95	10 06 	. . 
	inc c			;0a97	0c 	. 
	inc d			;0a98	14 	. 
	ld a,(07f31h)		;0a99	3a 31 7f 	: 1  
	jr nz,l0ac1h		;0a9c	20 23 	  # 
	rlca			;0a9e	07 	. 
	ld c,03ch		;0a9f	0e 3c 	. < 
	djnz $+4		;0aa1	10 02 	. . 
	ld de,0f0f8h		;0aa3	11 f8 f0 	. . . 
	call c,sub_007fh		;0aa6	dc 7f 00 	.  . 
	ld bc,0bfffh		;0aa9	01 ff bf 	. . . 
	ccf			;0aac	3f 	? 
	nop			;0aad	00 	. 
	ld bc,sub_00ffh		;0aae	01 ff 00 	. . . 
	ld bc,05c00h		;0ab1	01 00 5c 	. . \ 
	xor l			;0ab4	ad 	. 
	ccf			;0ab5	3f 	? 
	ld a,(hl)			;0ab6	7e 	~ 
	ld a,a			;0ab7	7f 	 
	rst 0			;0ab8	c7 	. 
	and e			;0ab9	a3 	. 
	ld a,(hl)			;0aba	7e 	~ 
	or a			;0abb	b7 	. 
	rst 38h			;0abc	ff 	. 
	ld (hl),e			;0abd	73 	s 
	di			;0abe	f3 	. 
	ld sp,hl			;0abf	f9 	. 
	or h			;0ac0	b4 	. 
l0ac1h:
	and b			;0ac1	a0 	. 
l0ac2h:
	nop			;0ac2	00 	. 
	ld bc,07000h		;0ac3	01 00 70 	. . p 
	call m,sub_2773h		;0ac6	fc 73 27 	. s ' 
	rla			;0ac9	17 	. 
	cp c			;0aca	b9 	. 
	ret c			;0acb	d8 	. 
	rst 38h			;0acc	ff 	. 
	ccf			;0acd	3f 	? 
	inc a			;0ace	3c 	< 
	rst 38h			;0acf	ff 	. 
	jr c,l0a6ah		;0ad0	38 98 	8 . 
	sbc a,h			;0ad2	9c 	. 
	adc a,(hl)			;0ad3	8e 	. 
	rlca			;0ad4	07 	. 
	inc sp			;0ad5	33 	3 
	ei			;0ad6	fb 	. 
	rst 30h			;0ad7	f7 	. 
	nop			;0ad8	00 	. 
	ld bc,0f6ffh		;0ad9	01 ff f6 	. . . 
	ret po			;0adc	e0 	. 
	nop			;0add	00 	. 
	ld bc,l0e00h		;0ade	01 00 0e 	. . . 
	add a,d			;0ae1	82 	. 
	add a,c			;0ae2	81 	. 
	rst 38h			;0ae3	ff 	. 
	ld (bc),a			;0ae4	02 	. 
	ld b,0ffh		;0ae5	06 ff 	. . 
	dec b			;0ae7	05 	. 
	nop			;0ae8	00 	. 
	ld bc,0feffh		;0ae9	01 ff fe 	. . . 
	nop			;0aec	00 	. 
	inc bc			;0aed	03 	. 
	call m,07cffh		;0aee	fc ff 7c 	. . | 
	dec a			;0af1	3d 	= 
	rst 38h			;0af2	ff 	. 
	ccf			;0af3	3f 	? 
	scf			;0af4	37 	7 
	rst 38h			;0af5	ff 	. 
	inc de			;0af6	13 	. 
	ld a,c			;0af7	79 	y 
	ld a,l			;0af8	7d 	} 
	ld a,a			;0af9	7f 	 
	inc a			;0afa	3c 	< 
	ld a,l			;0afb	7d 	} 
	ld a,a			;0afc	7f 	 
	ld a,h			;0afd	7c 	| 
	nop			;0afe	00 	. 
	inc b			;0aff	04 	. 
	ld a,b			;0b00	78 	x 
	sbc a,a			;0b01	9f 	. 
	nop			;0b02	00 	. 
	ld bc,l1fffh		;0b03	01 ff 1f 	. . . 
	rst 38h			;0b06	ff 	. 
	rrca			;0b07	0f 	. 
	nop			;0b08	00 	. 
	inc bc			;0b09	03 	. 
	rlca			;0b0a	07 	. 
sub_0b0bh:
	di			;0b0b	f3 	. 
	pop hl			;0b0c	e1 	. 
	rst 38h			;0b0d	ff 	. 
	ret nz			;0b0e	c0 	. 
	add a,0c7h		;0b0f	c6 c7 	. . 
	jp l00e3h		;0b11	c3 e3 00 	. . . 
	inc bc			;0b14	03 	. 
	rst 38h			;0b15	ff 	. 
	rst 38h			;0b16	ff 	. 
	ld a,h			;0b17	7c 	| 
	ld a,09eh		;0b18	3e 9e 	> . 
	adc a,(hl)			;0b1a	8e 	. 
	ret p			;0b1b	f0 	. 
	nop			;0b1c	00 	. 
	ld bc,0e1ffh		;0b1d	01 ff e1 	. . . 
	ret nz			;0b20	c0 	. 
	nop			;0b21	00 	. 
	inc b			;0b22	04 	. 
	add a,b			;0b23	80 	. 
	ret nz			;0b24	c0 	. 
	pop hl			;0b25	e1 	. 
	di			;0b26	f3 	. 
	pop af			;0b27	f1 	. 
	rst 38h			;0b28	ff 	. 
	ld a,c			;0b29	79 	y 
	add hl,sp			;0b2a	39 	9 
	ld a,(l0400h)		;0b2b	3a 00 04 	: . . 
	rst 38h			;0b2e	ff 	. 
	ccf			;0b2f	3f 	? 
	ld e,03fh		;0b30	1e 3f 	. ? 
	ld a,a			;0b32	7f 	 
	nop			;0b33	00 	. 
	inc b			;0b34	04 	. 
	add a,b			;0b35	80 	. 
	nop			;0b36	00 	. 
	inc b			;0b37	04 	. 
	nop			;0b38	00 	. 
	ld l,a			;0b39	6f 	o 
	rst 20h			;0b3a	e7 	. 
	ld h,c			;0b3b	61 	a 
	ld h,e			;0b3c	63 	c 
	nop			;0b3d	00 	. 
	inc b			;0b3e	04 	. 
	ld (hl),a			;0b3f	77 	w 
	add a,b			;0b40	80 	. 
	nop			;0b41	00 	. 
	ld b,0c0h		;0b42	06 c0 	. . 
	sub b			;0b44	90 	. 
	call m,l00feh		;0b45	fc fe 00 	. . . 
	inc bc			;0b48	03 	. 
l0b49h:
	rst 38h			;0b49	ff 	. 
	nop			;0b4a	00 	. 
	inc bc			;0b4b	03 	. 
	ld a,a			;0b4c	7f 	 
	rst 38h			;0b4d	ff 	. 
	nop			;0b4e	00 	. 
	ld bc,l02ffh		;0b4f	01 ff 02 	. . . 
	rst 38h			;0b52	ff 	. 
	inc b			;0b53	04 	. 
	inc c			;0b54	0c 	. 
	rst 38h			;0b55	ff 	. 
	ld a,a			;0b56	7f 	 
	ld a,(hl)			;0b57	7e 	~ 
	ld a,h			;0b58	7c 	| 
	ld a,b			;0b59	78 	x 
	ld h,b			;0b5a	60 	` 
	rst 38h			;0b5b	ff 	. 
	nop			;0b5c	00 	. 
	rst 38h			;0b5d	ff 	. 
	inc c			;0b5e	0c 	. 
	inc e			;0b5f	1c 	. 
	nop			;0b60	00 	. 
	inc b			;0b61	04 	. 
	djnz l0b94h		;0b62	10 30 	. 0 
	ld a,a			;0b64	7f 	 
	jr nz,$+1		;0b65	20 ff 	  . 
	nop			;0b67	00 	. 
	rst 38h			;0b68	ff 	. 
	inc bc			;0b69	03 	. 
	rlca			;0b6a	07 	. 
	rrca			;0b6b	0f 	. 
	nop			;0b6c	00 	. 
	ex af,af'			;0b6d	08 	. 
	nop			;0b6e	00 	. 
	rra			;0b6f	1f 	. 
	nop			;0b70	00 	. 
	inc b			;0b71	04 	. 
	ccf			;0b72	3f 	? 
	nop			;0b73	00 	. 
	inc bc			;0b74	03 	. 
	rra			;0b75	1f 	. 
	nop			;0b76	00 	. 
	inc b			;0b77	04 	. 
	nop			;0b78	00 	. 
	ret po			;0b79	e0 	. 
	rst 38h			;0b7a	ff 	. 
	ret p			;0b7b	f0 	. 
	ret m			;0b7c	f8 	. 
	nop			;0b7d	00 	. 
	pop de			;0b7e	d1 	. 
	nop			;0b7f	00 	. 
	ld bc,l0703h		;0b80	01 03 07 	. . . 
	ld e,03eh		;0b83	1e 3e 	. > 
	ld a,b			;0b85	78 	x 
	cp 07ch		;0b86	fe 7c 	. | 
	ret po			;0b88	e0 	. 
	add a,b			;0b89	80 	. 
	ld h,00eh		;0b8a	26 0e 	& . 
	inc a			;0b8c	3c 	< 
	nop			;0b8d	00 	. 
	ld de,l0300h		;0b8e	11 00 03 	. . . 
	nop			;0b91	00 	. 
	ld a,(bc)			;0b92	0a 	. 
	nop			;0b93	00 	. 
l0b94h:
	nop			;0b94	00 	. 
	ld b,080h		;0b95	06 80 	. . 
	ld d,h			;0b97	54 	T 
	ld d,b			;0b98	50 	P 
	sub b			;0b99	90 	. 
	sub c			;0b9a	91 	. 
	sub e			;0b9b	93 	. 
	add a,e			;0b9c	83 	. 
	sub e			;0b9d	93 	. 
	sbc a,c			;0b9e	99 	. 
	add a,(hl)			;0b9f	86 	. 
	rlca			;0ba0	07 	. 
	rra			;0ba1	1f 	. 
	rst 38h			;0ba2	ff 	. 
	sub a			;0ba3	97 	. 
	add a,a			;0ba4	87 	. 
	and a			;0ba5	a7 	. 
	ex (sp),hl			;0ba6	e3 	. 
	sbc a,h			;0ba7	9c 	. 
	sbc a,(hl)			;0ba8	9e 	. 
	ld c,(hl)			;0ba9	4e 	N 
	ld l,(hl)			;0baa	6e 	n 
	ld (hl),03fh		;0bab	36 3f 	6 ? 
	ld e,a			;0bad	5f 	_ 
	ld c,a			;0bae	4f 	O 
	rst 38h			;0baf	ff 	. 
	ret p			;0bb0	f0 	. 
	rst 38h			;0bb1	ff 	. 
	ld a,b			;0bb2	78 	x 
	inc e			;0bb3	1c 	. 
	inc b			;0bb4	04 	. 
	nop			;0bb5	00 	. 
	ld bc,08300h		;0bb6	01 00 83 	. . . 
	ld bc,l0300h		;0bb9	01 00 03 	. . . 
	nop			;0bbc	00 	. 
	nop			;0bbd	00 	. 
	inc b			;0bbe	04 	. 
	add a,b			;0bbf	80 	. 
	call po,0c0e3h		;0bc0	e4 e3 c0 	. . . 
	ret p			;0bc3	f0 	. 
	ret m			;0bc4	f8 	. 
	ld a,a			;0bc5	7f 	 
	ld h,d			;0bc6	62 	b 
	jr nc,l0b49h		;0bc7	30 80 	0 . 
	ret nz			;0bc9	c0 	. 
	ld h,b			;0bca	60 	` 
	rrca			;0bcb	0f 	. 
	ld a,a			;0bcc	7f 	 
	nop			;0bcd	00 	. 
	ld bc,l0fffh		;0bce	01 ff 0f 	. . . 
	sub a			;0bd1	97 	. 
	inc e			;0bd2	1c 	. 
	ld c,003h		;0bd3	0e 03 	. . 
	rst 38h			;0bd5	ff 	. 
	ret po			;0bd6	e0 	. 
	sbc a,a			;0bd7	9f 	. 
	ld b,b			;0bd8	40 	@ 
	add a,b			;0bd9	80 	. 
	inc e			;0bda	1c 	. 
	cp 03eh		;0bdb	fe 3e 	. > 
	ld a,(l0100h)		;0bdd	3a 00 01 	: . . 
	nop			;0be0	00 	. 
	or a			;0be1	b7 	. 
	rst 20h			;0be2	e7 	. 
	nop			;0be3	00 	. 
	ld bc,sub_00ffh		;0be4	01 ff 00 	. . . 
	inc bc			;0be7	03 	. 
	dec b			;0be8	05 	. 
	rlca			;0be9	07 	. 
	rst 38h			;0bea	ff 	. 
	ld b,0ffh		;0beb	06 ff 	. . 
	add a,d			;0bed	82 	. 
	inc sp			;0bee	33 	3 
	add hl,de			;0bef	19 	. 
	pop af			;0bf0	f1 	. 
	ld bc,l0300h		;0bf1	01 00 03 	. . . 
	nop			;0bf4	00 	. 
	add a,b			;0bf5	80 	. 
	add a,d			;0bf6	82 	. 
	jp 0c1ffh		;0bf7	c3 ff c1 	. . . 
	ret nz			;0bfa	c0 	. 
	ld b,b			;0bfb	40 	@ 
	ret nz			;0bfc	c0 	. 
	jr nz,l0bffh		;0bfd	20 00 	  . 
l0bffh:
	inc bc			;0bff	03 	. 
l0c00h:
	ret m			;0c00	f8 	. 
	ld a,h			;0c01	7c 	| 
l0c02h:
	ld a,(hl)			;0c02	7e 	~ 
	nop			;0c03	00 	. 
	inc bc			;0c04	03 	. 
	ld a,a			;0c05	7f 	 
	ld b,a			;0c06	47 	G 
	rst 38h			;0c07	ff 	. 
	rlca			;0c08	07 	. 
	rrca			;0c09	0f 	. 
	rra			;0c0a	1f 	. 
	rst 18h			;0c0b	df 	. 
	rst 20h			;0c0c	e7 	. 
	nop			;0c0d	00 	. 
	ld bc,0ffffh		;0c0e	01 ff ff 	. . . 
	ld a,a			;0c11	7f 	 
	ccf			;0c12	3f 	? 
	sbc a,a			;0c13	9f 	. 
	rst 18h			;0c14	df 	. 
	ld l,a			;0c15	6f 	o 
	rrca			;0c16	0f 	. 
	cpl			;0c17	2f 	/ 
	nop			;0c18	00 	. 
	ex af,af'			;0c19	08 	. 
	rst 38h			;0c1a	ff 	. 
	nop			;0c1b	00 	. 
	inc bc			;0c1c	03 	. 
	add a,b			;0c1d	80 	. 
	ret nz			;0c1e	c0 	. 
	pop hl			;0c1f	e1 	. 
	nop			;0c20	00 	. 
	inc bc			;0c21	03 	. 
	rst 38h			;0c22	ff 	. 
	rst 38h			;0c23	ff 	. 
	ld a,(07c7ah)		;0c24	3a 7a 7c 	: z | 
	nop			;0c27	00 	. 
	inc b			;0c28	04 	. 
	call m,l0800h		;0c29	fc 00 08 	. . . 
	rst 38h			;0c2c	ff 	. 
	call m,l0300h		;0c2d	fc 00 03 	. . . 
	call p,0e7e6h		;0c30	f4 e6 e7 	. . . 
	rst 8			;0c33	cf 	. 
	adc a,a			;0c34	8f 	. 
	ld (hl),l			;0c35	75 	u 
	rst 38h			;0c36	ff 	. 
	ld (hl),a			;0c37	77 	w 
	rst 30h			;0c38	f7 	. 
	call m,0f9f8h		;0c39	fc f8 f9 	. . . 
	nop			;0c3c	00 	. 
	ld bc,090ffh		;0c3d	01 ff 90 	. . . 
	or b			;0c40	b0 	. 
	jr nc,$+1		;0c41	30 ff 	0 . 
	ld (hl),b			;0c43	70 	p 
	ret m			;0c44	f8 	. 
	ret z			;0c45	c8 	. 
	sbc a,b			;0c46	98 	. 
	rst 20h			;0c47	e7 	. 
	rst 28h			;0c48	ef 	. 
	nop			;0c49	00 	. 
	inc bc			;0c4a	03 	. 
	rst 8			;0c4b	cf 	. 
	nop			;0c4c	00 	. 
	inc bc			;0c4d	03 	. 
	rst 18h			;0c4e	df 	. 
	sbc a,b			;0c4f	98 	. 
	jr c,l0c52h		;0c50	38 00 	8 . 
l0c52h:
	inc b			;0c52	04 	. 
	ld a,b			;0c53	78 	x 
	ld (hl),b			;0c54	70 	p 
	ret p			;0c55	f0 	. 
	rst 38h			;0c56	ff 	. 
	nop			;0c57	00 	. 
	rra			;0c58	1f 	. 
	ld a,a			;0c59	7f 	 
	nop			;0c5a	00 	. 
	ld bc,l3ffch+3		;0c5b	01 ff 3f 	. . ? 
	rlca			;0c5e	07 	. 
	jp l0100h		;0c5f	c3 00 01 	. . . 
	nop			;0c62	00 	. 
	rst 38h			;0c63	ff 	. 
	rlca			;0c64	07 	. 
	ld (bc),a			;0c65	02 	. 
	pop bc			;0c66	c1 	. 
	ex (sp),hl			;0c67	e3 	. 
	di			;0c68	f3 	. 
	ccf			;0c69	3f 	? 
	call m,l1fffh		;0c6a	fc ff 1f 	. . . 
	ccf			;0c6d	3f 	? 
	ld l,b			;0c6e	68 	h 
	rst 38h			;0c6f	ff 	. 
	nop			;0c70	00 	. 
	cp a			;0c71	bf 	. 
	rst 38h			;0c72	ff 	. 
	rst 38h			;0c73	ff 	. 
	rst 38h			;0c74	ff 	. 
	ret p			;0c75	f0 	. 
	nop			;0c76	00 	. 
	ld bc,l0300h		;0c77	01 00 03 	. . . 
	ld bc,sub_00ffh		;0c7a	01 ff 00 	. . . 
	jr nc,$+1		;0c7d	30 ff 	0 . 
	ret p			;0c7f	f0 	. 
	pop af			;0c80	f1 	. 
	inc hl			;0c81	23 	# 
	rst 0			;0c82	c7 	. 
	rst 20h			;0c83	e7 	. 
	nop			;0c84	00 	. 
	inc b			;0c85	04 	. 
	nop			;0c86	00 	. 
	nop			;0c87	00 	. 
	inc b			;0c88	04 	. 
	add a,b			;0c89	80 	. 
	jp p,003f0h		;0c8a	f2 f0 03 	. . . 
	nop			;0c8d	00 	. 
	inc bc			;0c8e	03 	. 
	nop			;0c8f	00 	. 
	ret nz			;0c90	c0 	. 
	rst 38h			;0c91	ff 	. 
	nop			;0c92	00 	. 
	ret nz			;0c93	c0 	. 
	nop			;0c94	00 	. 
	ld b,000h		;0c95	06 00 	. . 
	ret p			;0c97	f0 	. 
	call m,l00feh		;0c98	fc fe 00 	. . . 
	dec b			;0c9b	05 	. 
	rst 38h			;0c9c	ff 	. 
	nop			;0c9d	00 	. 
	dec b			;0c9e	05 	. 
	nop			;0c9f	00 	. 
	rst 38h			;0ca0	ff 	. 
	add a,b			;0ca1	80 	. 
	add a,d			;0ca2	82 	. 
	nop			;0ca3	00 	. 
	inc b			;0ca4	04 	. 
	nop			;0ca5	00 	. 
	nop			;0ca6	00 	. 
	inc bc			;0ca7	03 	. 
	add a,b			;0ca8	80 	. 
	ret nz			;0ca9	c0 	. 
	jp nz,0c0ffh		;0caa	c2 ff c0 	. . . 
	ex (sp),hl			;0cad	e3 	. 
	nop			;0cae	00 	. 
	inc b			;0caf	04 	. 
	rst 38h			;0cb0	ff 	. 
	nop			;0cb1	00 	. 
	ex af,af'			;0cb2	08 	. 
	nop			;0cb3	00 	. 
	ret nz			;0cb4	c0 	. 
	ret po			;0cb5	e0 	. 
	pop hl			;0cb6	e1 	. 
	ex (sp),hl			;0cb7	e3 	. 
	ld h,e			;0cb8	63 	c 
	nop			;0cb9	00 	. 
	inc bc			;0cba	03 	. 
	ld (hl),e			;0cbb	73 	s 
	nop			;0cbc	00 	. 
	dec b			;0cbd	05 	. 
	nop			;0cbe	00 	. 
	rst 38h			;0cbf	ff 	. 
	ld bc,l0100h		;0cc0	01 00 01 	. . . 
	nop			;0cc3	00 	. 
	rst 38h			;0cc4	ff 	. 
	ld sp,l1839h		;0cc5	31 39 18 	1 9 . 
	nop			;0cc8	00 	. 
	inc bc			;0cc9	03 	. 
	inc e			;0cca	1c 	. 
	ld a,03fh		;0ccb	3e 3f 	> ? 
	nop			;0ccd	00 	. 
	rlca			;0cce	07 	. 
	rst 38h			;0ccf	ff 	. 
	ret nz			;0cd0	c0 	. 
	ret m			;0cd1	f8 	. 
	cp 000h		;0cd2	fe 00 	. . 
	ex af,af'			;0cd4	08 	. 
	rst 38h			;0cd5	ff 	. 
	ld sp,hl			;0cd6	f9 	. 
	ret m			;0cd7	f8 	. 
	ld a,h			;0cd8	7c 	| 
	ld a,(hl)			;0cd9	7e 	~ 
	ld a,000h		;0cda	3e 00 	> . 
	inc b			;0cdc	04 	. 
	rst 38h			;0cdd	ff 	. 
	ld a,a			;0cde	7f 	 
	rlca			;0cdf	07 	. 
	ccf			;0ce0	3f 	? 
	ld a,a			;0ce1	7f 	 
	jr nz,l0d06h		;0ce2	20 22 	  " 
	dec hl			;0ce4	2b 	+ 
	sbc a,c			;0ce5	99 	. 
	ret pe			;0ce6	e8 	. 
	ret p			;0ce7	f0 	. 
	ld sp,hl			;0ce8	f9 	. 
	defb 0fdh,00fh,01fh	;illegal sequence		;0ce9	fd 0f 1f 	. . . 
	nop			;0cec	00 	. 
	inc b			;0ced	04 	. 
	rst 18h			;0cee	df 	. 
	rst 38h			;0cef	ff 	. 
	cp a			;0cf0	bf 	. 
	cp 0ffh		;0cf1	fe ff 	. . 
	call m,0f9fdh		;0cf3	fc fd f9 	. . . 
	ei			;0cf6	fb 	. 
	rst 38h			;0cf7	ff 	. 
	rst 30h			;0cf8	f7 	. 
	ld a,a			;0cf9	7f 	 
	nop			;0cfa	00 	. 
	inc b			;0cfb	04 	. 
sub_0cfch:
	rst 38h			;0cfc	ff 	. 
	rst 20h			;0cfd	e7 	. 
sub_0cfeh:
	rst 0			;0cfe	c7 	. 
	jp 000fdh		;0cff	c3 fd 00 	. . . 
	ld bc,0fbffh		;0d02	01 ff fb 	. . . 
	nop			;0d05	00 	. 
l0d06h:
	ld bc,0ffffh		;0d06	01 ff ff 	. . . 
	rst 30h			;0d09	f7 	. 
	nop			;0d0a	00 	. 
	add hl,bc			;0d0b	09 	. 
	rst 38h			;0d0c	ff 	. 
	cp 000h		;0d0d	fe 00 	. . 
l0d0fh:
	inc b			;0d0f	04 	. 
	rst 38h			;0d10	ff 	. 
	ld sp,hl			;0d11	f9 	. 
	rst 20h			;0d12	e7 	. 
	rst 38h			;0d13	ff 	. 
	jp l00feh		;0d14	c3 fe 00 	. . . 
	ld bc,0f7ffh		;0d17	01 ff f7 	. . . 
	and 086h		;0d1a	e6 86 	. . 
	rst 38h			;0d1c	ff 	. 
	add a,088h		;0d1d	c6 88 	. . 
	add a,b			;0d1f	80 	. 
	ld h,b			;0d20	60 	` 
	sbc a,b			;0d21	98 	. 
	ld b,(hl)			;0d22	46 	F 
	and c			;0d23	a1 	. 
	ret p			;0d24	f0 	. 
	rst 38h			;0d25	ff 	. 
	rst 38h			;0d26	ff 	. 
l0d27h:
	ld bc,l03ffh		;0d27	01 ff 03 	. . . 
	ld sp,0c34dh		;0d2a	31 4d c3 	1 M . 
	jr nz,l0d27h		;0d2d	20 f8 	  . 
	nop			;0d2f	00 	. 
	ld bc,07fffh		;0d30	01 ff 7f 	. .  
	dec l			;0d33	2d 	- 
	ld d,c			;0d34	51 	Q 
	and a			;0d35	a7 	. 
l0d36h:
	xor c			;0d36	a9 	. 
	or c			;0d37	b1 	. 
	jr nz,l0d36h		;0d38	20 fc 	  . 
	nop			;0d3a	00 	. 
	ld bc,0fcffh		;0d3b	01 ff fc 	. . . 
	ret p			;0d3e	f0 	. 
	pop af			;0d3f	f1 	. 
	pop hl			;0d40	e1 	. 
	sub d			;0d41	92 	. 
	adc a,h			;0d42	8c 	. 
	ret p			;0d43	f0 	. 
	nop			;0d44	00 	. 
	dec b			;0d45	05 	. 
	rst 38h			;0d46	ff 	. 
	ld a,a			;0d47	7f 	 
	rra			;0d48	1f 	. 
	ld b,e			;0d49	43 	C 
	dec hl			;0d4a	2b 	+ 
	call c,sub_00eeh		;0d4b	dc ee 00 	. . . 
	inc b			;0d4e	04 	. 
	rst 38h			;0d4f	ff 	. 
	rra			;0d50	1f 	. 
	nop			;0d51	00 	. 
	ld bc,0ffffh		;0d52	01 ff ff 	. . . 
	cp (hl)			;0d55	be 	. 
	inc a			;0d56	3c 	< 
	dec e			;0d57	1d 	. 
	dec c			;0d58	0d 	. 
	ld bc,07e3dh		;0d59	01 3d 7e 	. = ~ 
	ld a,h			;0d5c	7c 	| 
	cp 0fdh		;0d5d	fe fd 	. . 
	ld sp,hl			;0d5f	f9 	. 
	ret po			;0d60	e0 	. 
	ret nz			;0d61	c0 	. 
	rrca			;0d62	0f 	. 
	rst 38h			;0d63	ff 	. 
	rlca			;0d64	07 	. 
	dec bc			;0d65	0b 	. 
	scf			;0d66	37 	7 
	rst 0			;0d67	c7 	. 
	rlca			;0d68	07 	. 
	inc bc			;0d69	03 	. 
	ret nz			;0d6a	c0 	. 
	rst 38h			;0d6b	ff 	. 
	ret po			;0d6c	e0 	. 
	nop			;0d6d	00 	. 
	inc bc			;0d6e	03 	. 
	ret p			;0d6f	f0 	. 
	rst 38h			;0d70	ff 	. 
	ret m			;0d71	f8 	. 
	nop			;0d72	00 	. 
	inc bc			;0d73	03 	. 
	rst 38h			;0d74	ff 	. 
	rst 28h			;0d75	ef 	. 
	rst 0			;0d76	c7 	. 
	call nz,sub_30c8h		;0d77	c4 c8 30 	. . 0 
	ret m			;0d7a	f8 	. 
	nop			;0d7b	00 	. 
	rlca			;0d7c	07 	. 
	call m,06167h		;0d7d	fc 67 61 	. g a 
	ld h,b			;0d80	60 	` 
	jr nc,$+1		;0d81	30 ff 	0 . 
	ld sp,l1839h		;0d83	31 39 18 	1 9 . 
	rst 38h			;0d86	ff 	. 
	ret pe			;0d87	e8 	. 
	inc e			;0d88	1c 	. 
	rra			;0d89	1f 	. 
	sbc a,a			;0d8a	9f 	. 
	ld e,a			;0d8b	5f 	_ 
	rra			;0d8c	1f 	. 
	sbc a,a			;0d8d	9f 	. 
	inc e			;0d8e	1c 	. 
	ex af,af'			;0d8f	08 	. 
	ld c,006h		;0d90	0e 06 	. . 
	rst 38h			;0d92	ff 	. 
	inc bc			;0d93	03 	. 
	rst 38h			;0d94	ff 	. 
	ld bc,l2f6fh		;0d95	01 6f 2f 	. o / 
	rrca			;0d98	0f 	. 
	rlca			;0d99	07 	. 
	inc bc			;0d9a	03 	. 
	nop			;0d9b	00 	. 
	ld bc,08000h		;0d9c	01 00 80 	. . . 
	ret nz			;0d9f	c0 	. 
	rst 38h			;0da0	ff 	. 
	rlca			;0da1	07 	. 
	rrca			;0da2	0f 	. 
	nop			;0da3	00 	. 
	dec b			;0da4	05 	. 
	rst 38h			;0da5	ff 	. 
	ld bc,l009fh		;0da6	01 9f 00 	. . . 
	rlca			;0da9	07 	. 
	rst 38h			;0daa	ff 	. 
	nop			;0dab	00 	. 
	inc bc			;0dac	03 	. 
	cp 0ffh		;0dad	fe ff 	. . 
	rst 38h			;0daf	ff 	. 
	ccf			;0db0	3f 	? 
	nop			;0db1	00 	. 
	ld bc,0ff00h		;0db2	01 00 ff 	. . . 
	rst 38h			;0db5	ff 	. 
	rst 38h			;0db6	ff 	. 
	cp 0fch		;0db7	fe fc 	. . 
	ret m			;0db9	f8 	. 
	ret po			;0dba	e0 	. 
	nop			;0dbb	00 	. 
	ld bc,l0000h		;0dbc	01 00 00 	. . . 
	ld b,080h		;0dbf	06 80 	. . 
	rst 38h			;0dc1	ff 	. 
	ld bc,06660h		;0dc2	01 60 66 	. ` f 
	ld e,a			;0dc5	5f 	_ 
	ccf			;0dc6	3f 	? 
	cp a			;0dc7	bf 	. 
	cp e			;0dc8	bb 	. 
	ld (hl),c			;0dc9	71 	q 
	ld h,b			;0dca	60 	` 
	ld (bc),a			;0dcb	02 	. 
	rst 38h			;0dcc	ff 	. 
	ld b,00ch		;0dcd	06 0c 	. . 
	rst 38h			;0dcf	ff 	. 
	ex af,af'			;0dd0	08 	. 
	rst 38h			;0dd1	ff 	. 
	jr l0e14h		;0dd2	18 40 	. @ 
	nop			;0dd4	00 	. 
	inc b			;0dd5	04 	. 
	nop			;0dd6	00 	. 
	ld bc,l0703h		;0dd7	01 03 07 	. . . 
	rst 10h			;0dda	d7 	. 
	ex de,hl			;0ddb	eb 	. 
	ld (hl),a			;0ddc	77 	w 
	cp a			;0ddd	bf 	. 
	out (0cdh),a		;0dde	d3 cd 	. . 
	sbc a,h			;0de0	9c 	. 
	ld e,000h		;0de1	1e 00 	. . 
	ld bc,l3ffch+3		;0de3	01 ff 3f 	. . ? 
	ld b,a			;0de6	47 	G 
	ret nz			;0de7	c0 	. 
	rst 20h			;0de8	e7 	. 
	rst 38h			;0de9	ff 	. 
	rst 0			;0dea	c7 	. 
	adc a,a			;0deb	8f 	. 
	ld e,00eh		;0dec	1e 0e 	. . 
	rrca			;0dee	0f 	. 
	ccf			;0def	3f 	? 
	cp a			;0df0	bf 	. 
	ld a,a			;0df1	7f 	 
	cp 0ffh		;0df2	fe ff 	. . 
	rst 38h			;0df4	ff 	. 
	ccf			;0df5	3f 	? 
	nop			;0df6	00 	. 
	inc bc			;0df7	03 	. 
	ld a,a			;0df8	7f 	 
	nop			;0df9	00 	. 
	inc b			;0dfa	04 	. 
	rst 38h			;0dfb	ff 	. 
	call m,sub_1fe3h		;0dfc	fc e3 1f 	. . . 
	nop			;0dff	00 	. 
l0e00h:
	inc b			;0e00	04 	. 
	rst 38h			;0e01	ff 	. 
sub_0e02h:
	ld c,a			;0e02	4f 	O 
	rst 8			;0e03	cf 	. 
	rst 0			;0e04	c7 	. 
	rst 38h			;0e05	ff 	. 
	ex (sp),hl			;0e06	e3 	. 
	di			;0e07	f3 	. 
	push af			;0e08	f5 	. 
	defb 0fdh,07fh,03fh	;illegal sequence		;0e09	fd 7f 3f 	.  ? 
	rra			;0e0c	1f 	. 
	nop			;0e0d	00 	. 
	inc bc			;0e0e	03 	. 
l0e0fh:
	rrca			;0e0f	0f 	. 
	rst 38h			;0e10	ff 	. 
	rra			;0e11	1f 	. 
	cp 000h		;0e12	fe 00 	. . 
l0e14h:
	rlca			;0e14	07 	. 
	rst 38h			;0e15	ff 	. 
	sbc a,a			;0e16	9f 	. 
	sbc a,h			;0e17	9c 	. 
	sbc a,b			;0e18	98 	. 
	or c			;0e19	b1 	. 
	rst 30h			;0e1a	f7 	. 
	nop			;0e1b	00 	. 
	inc bc			;0e1c	03 	. 
	rst 38h			;0e1d	ff 	. 
	ret p			;0e1e	f0 	. 
	jr nc,$+1		;0e1f	30 ff 	0 . 
	nop			;0e21	00 	. 
	ret p			;0e22	f0 	. 
	ret m			;0e23	f8 	. 
	rst 38h			;0e24	ff 	. 
	call m,l0100h		;0e25	fc 00 01 	. . . 
	rst 38h			;0e28	ff 	. 
	ld a,a			;0e29	7f 	 
	nop			;0e2a	00 	. 
	ld b,0ffh		;0e2b	06 ff 	. . 
	rst 38h			;0e2d	ff 	. 
	cp 000h		;0e2e	fe 00 	. . 
	ld b,0ffh		;0e30	06 ff 	. . 
	pop af			;0e32	f1 	. 
	adc a,e			;0e33	8b 	. 
	add a,a			;0e34	87 	. 
	add a,e			;0e35	83 	. 
	ld b,e			;0e36	43 	C 
	rst 38h			;0e37	ff 	. 
	ld hl,08f73h		;0e38	21 73 8f 	! s . 
	pop de			;0e3b	d1 	. 
	pop hl			;0e3c	e1 	. 
	pop bc			;0e3d	c1 	. 
	jp nz,084ffh		;0e3e	c2 ff 84 	. . . 
	adc a,043h		;0e41	ce 43 	. C 
	ld b,c			;0e43	41 	A 
	rst 38h			;0e44	ff 	. 
	add a,e			;0e45	83 	. 
	rst 38h			;0e46	ff 	. 
	add a,a			;0e47	87 	. 
	ld c,a			;0e48	4f 	O 
	cp a			;0e49	bf 	. 
	rst 38h			;0e4a	ff 	. 
	jp nz,0e1ffh		;0e4b	c2 ff e1 	. . . 
	rst 38h			;0e4e	ff 	. 
	pop af			;0e4f	f1 	. 
	ld sp,hl			;0e50	f9 	. 
	cp 001h		;0e51	fe 01 	. . 
	ld (bc),a			;0e53	02 	. 
	inc b			;0e54	04 	. 
	rst 38h			;0e55	ff 	. 
	ex af,af'			;0e56	08 	. 
	rlca			;0e57	07 	. 
	rst 38h			;0e58	ff 	. 
	nop			;0e59	00 	. 
	add a,b			;0e5a	80 	. 
	ret nz			;0e5b	c0 	. 
	rst 38h			;0e5c	ff 	. 
	ret po			;0e5d	e0 	. 
	ret nz			;0e5e	c0 	. 
	nop			;0e5f	00 	. 
	ld b,000h		;0e60	06 00 	. . 
	ld c,011h		;0e62	0e 11 	. . 
	ld hl,04241h		;0e64	21 41 42 	! A B 
	ret nz			;0e67	c0 	. 
	ret p			;0e68	f0 	. 
	call m,07f7eh		;0e69	fc 7e 7f 	. ~  
	ccf			;0e6c	3f 	? 
	rrca			;0e6d	0f 	. 
	inc bc			;0e6e	03 	. 
	nop			;0e6f	00 	. 
	nop			;0e70	00 	. 
	nop			;0e71	00 	. 
	ret po			;0e72	e0 	. 
	nop			;0e73	00 	. 
	rra			;0e74	1f 	. 
	nop			;0e75	00 	. 
	inc bc			;0e76	03 	. 
	rrca			;0e77	0f 	. 
	nop			;0e78	00 	. 
	inc bc			;0e79	03 	. 
	rlca			;0e7a	07 	. 
	inc bc			;0e7b	03 	. 
	nop			;0e7c	00 	. 
	inc bc			;0e7d	03 	. 
	ret nz			;0e7e	c0 	. 
	nop			;0e7f	00 	. 
	inc bc			;0e80	03 	. 
	ret po			;0e81	e0 	. 
	rst 38h			;0e82	ff 	. 
	ret p			;0e83	f0 	. 
	rst 38h			;0e84	ff 	. 
	inc bc			;0e85	03 	. 
	nop			;0e86	00 	. 
	inc b			;0e87	04 	. 
	ld bc,sub_00ffh		;0e88	01 ff 00 	. . . 
	ret p			;0e8b	f0 	. 
	nop			;0e8c	00 	. 
	inc bc			;0e8d	03 	. 
	ret m			;0e8e	f8 	. 
	rst 38h			;0e8f	ff 	. 
	call m,l0500h		;0e90	fc 00 05 	. . . 
	nop			;0e93	00 	. 
	rlca			;0e94	07 	. 
	inc bc			;0e95	03 	. 
	rst 38h			;0e96	ff 	. 
	ld bc,l0400h		;0e97	01 00 04 	. . . 
	nop			;0e9a	00 	. 
	ret nz			;0e9b	c0 	. 
	rst 38h			;0e9c	ff 	. 
	ret p			;0e9d	f0 	. 
	rst 38h			;0e9e	ff 	. 
	ret m			;0e9f	f8 	. 
	nop			;0ea0	00 	. 
	dec b			;0ea1	05 	. 
	nop			;0ea2	00 	. 
	ld bc,l0703h		;0ea3	01 03 07 	. . . 
	nop			;0ea6	00 	. 
	inc b			;0ea7	04 	. 
	ret m			;0ea8	f8 	. 
	rst 38h			;0ea9	ff 	. 
	ret p			;0eaa	f0 	. 
	ret po			;0eab	e0 	. 
	ret nz			;0eac	c0 	. 
	nop			;0ead	00 	. 
	inc bc			;0eae	03 	. 
	rlca			;0eaf	07 	. 
	nop			;0eb0	00 	. 
	dec b			;0eb1	05 	. 
	nop			;0eb2	00 	. 
	nop			;0eb3	00 	. 
	inc bc			;0eb4	03 	. 
	ret nz			;0eb5	c0 	. 
	nop			;0eb6	00 	. 
	rrca			;0eb7	0f 	. 
	nop			;0eb8	00 	. 
	nop			;0eb9	00 	. 
	inc b			;0eba	04 	. 
	ret m			;0ebb	f8 	. 
	nop			;0ebc	00 	. 
	dec c			;0ebd	0d 	. 
	nop			;0ebe	00 	. 
	nop			;0ebf	00 	. 
	inc b			;0ec0	04 	. 
	ret m			;0ec1	f8 	. 
	nop			;0ec2	00 	. 
	ld b,000h		;0ec3	06 00 	. . 
	nop			;0ec5	00 	. 
	inc bc			;0ec6	03 	. 
	rlca			;0ec7	07 	. 
	nop			;0ec8	00 	. 
	dec b			;0ec9	05 	. 
	nop			;0eca	00 	. 
	nop			;0ecb	00 	. 
	inc bc			;0ecc	03 	. 
	ret nz			;0ecd	c0 	. 
	nop			;0ece	00 	. 
	ex af,af'			;0ecf	08 	. 
	add a,b			;0ed0	80 	. 
	nop			;0ed1	00 	. 
	inc bc			;0ed2	03 	. 
	nop			;0ed3	00 	. 
	nop			;0ed4	00 	. 
	dec d			;0ed5	15 	. 
	add a,b			;0ed6	80 	. 
	nop			;0ed7	00 	. 
	inc bc			;0ed8	03 	. 
	nop			;0ed9	00 	. 
	rra			;0eda	1f 	. 
	rrca			;0edb	0f 	. 
	rlca			;0edc	07 	. 
	inc bc			;0edd	03 	. 
	ld bc,l0300h		;0ede	01 00 03 	. . . 
	nop			;0ee1	00 	. 
	add a,b			;0ee2	80 	. 
	ret po			;0ee3	e0 	. 
	rst 38h			;0ee4	ff 	. 
	ret p			;0ee5	f0 	. 
sub_0ee6h:
	ret m			;0ee6	f8 	. 
	ld bc,l0700h		;0ee7	01 00 07 	. . . 
	nop			;0eea	00 	. 
	rst 38h			;0eeb	ff 	. 
	ret m			;0eec	f8 	. 
	call m,l0500h		;0eed	fc 00 05 	. . . 
	ld a,h			;0ef0	7c 	| 
	nop			;0ef1	00 	. 
	ld b,080h		;0ef2	06 80 	. . 
	rst 38h			;0ef4	ff 	. 
	nop			;0ef5	00 	. 
	nop			;0ef6	00 	. 
	ex af,af'			;0ef7	08 	. 
	add a,b			;0ef8	80 	. 
	nop			;0ef9	00 	. 
	ex af,af'			;0efa	08 	. 
	rst 38h			;0efb	ff 	. 
	nop			;0efc	00 	. 
	ld b,080h		;0efd	06 80 	. . 
l0effh:
	nop			;0eff	00 	. 
l0f00h:
	ld a,(bc)			;0f00	0a 	. 
l0f01h:
	nop			;0f01	00 	. 
	nop			;0f02	00 	. 
l0f03h:
	ld b,07ch		;0f03	06 7c 	. | 
	ld a,b			;0f05	78 	x 
	ret m			;0f06	f8 	. 
l0f07h:
	nop			;0f07	00 	. 
	ld bc,l0100h		;0f08	01 00 01 	. . . 
	inc bc			;0f0b	03 	. 
	rlca			;0f0c	07 	. 
	rrca			;0f0d	0f 	. 
l0f0eh:
	rra			;0f0e	1f 	. 
l0f0fh:
	rst 38h			;0f0f	ff 	. 
	nop			;0f10	00 	. 
	ret m			;0f11	f8 	. 
	rst 38h			;0f12	ff 	. 
	ret p			;0f13	f0 	. 
	ret po			;0f14	e0 	. 
	add a,b			;0f15	80 	. 
	nop			;0f16	00 	. 
	inc bc			;0f17	03 	. 
	nop			;0f18	00 	. 
	inc bc			;0f19	03 	. 
	rst 38h			;0f1a	ff 	. 
	ld bc,l0500h		;0f1b	01 00 05 	. . . 
l0f1eh:
	nop			;0f1e	00 	. 
l0f1fh:
	ret po			;0f1f	e0 	. 
	rst 38h			;0f20	ff 	. 
	ret p			;0f21	f0 	. 
	nop			;0f22	00 	. 
	dec b			;0f23	05 	. 
	ret m			;0f24	f8 	. 
	nop			;0f25	00 	. 
	inc bc			;0f26	03 	. 
	nop			;0f27	00 	. 
	ld bc,l0703h		;0f28	01 03 07 	. . . 
	rst 38h			;0f2b	ff 	. 
	nop			;0f2c	00 	. 
	nop			;0f2d	00 	. 
	inc bc			;0f2e	03 	. 
	ret m			;0f2f	f8 	. 
	ret p			;0f30	f0 	. 
	ret po			;0f31	e0 	. 
	ret nz			;0f32	c0 	. 
	nop			;0f33	00 	. 
	dec b			;0f34	05 	. 
	nop			;0f35	00 	. 
	nop			;0f36	00 	. 
	dec b			;0f37	05 	. 
	ccf			;0f38	3f 	? 
	nop			;0f39	00 	. 
	inc bc			;0f3a	03 	. 
	nop			;0f3b	00 	. 
	add a,b			;0f3c	80 	. 
	rst 38h			;0f3d	ff 	. 
	nop			;0f3e	00 	. 
	rst 38h			;0f3f	ff 	. 
	inc bc			;0f40	03 	. 
	rst 38h			;0f41	ff 	. 
	ccf			;0f42	3f 	? 
	nop			;0f43	00 	. 
	ld b,01fh		;0f44	06 1f 	. . 
	inc bc			;0f46	03 	. 
	nop			;0f47	00 	. 
	dec b			;0f48	05 	. 
	add a,a			;0f49	87 	. 
	rst 0			;0f4a	c7 	. 
	rst 28h			;0f4b	ef 	. 
	nop			;0f4c	00 	. 
	inc bc			;0f4d	03 	. 
	nop			;0f4e	00 	. 
	nop			;0f4f	00 	. 
	inc bc			;0f50	03 	. 
	ld bc,081ffh		;0f51	01 ff 81 	. . . 
	nop			;0f54	00 	. 
	inc bc			;0f55	03 	. 
	nop			;0f56	00 	. 
	call m,l0400h		;0f57	fc 00 04 	. . . 
	ret m			;0f5a	f8 	. 
	add a,c			;0f5b	81 	. 
	nop			;0f5c	00 	. 
	dec b			;0f5d	05 	. 
	jp 0f7e3h		;0f5e	c3 e3 f7 	. . . 
	rst 38h			;0f61	ff 	. 
	ret m			;0f62	f8 	. 
	nop			;0f63	00 	. 
	ld b,0f0h		;0f64	06 f0 	. . 
	nop			;0f66	00 	. 
	inc bc			;0f67	03 	. 
	nop			;0f68	00 	. 
	ld bc,0ff07h		;0f69	01 07 ff 	. . . 
	rrca			;0f6c	0f 	. 
	rra			;0f6d	1f 	. 
	rst 38h			;0f6e	ff 	. 
	nop			;0f6f	00 	. 
	rrca			;0f70	0f 	. 
	nop			;0f71	00 	. 
	inc b			;0f72	04 	. 
	rst 38h			;0f73	ff 	. 
	ret m			;0f74	f8 	. 
	rra			;0f75	1f 	. 
	rst 38h			;0f76	ff 	. 
	ccf			;0f77	3f 	? 
	ld a,07eh		;0f78	3e 7e 	> ~ 
	nop			;0f7a	00 	. 
	inc bc			;0f7b	03 	. 
	ld a,h			;0f7c	7c 	| 
	ret nz			;0f7d	c0 	. 
	add a,b			;0f7e	80 	. 
	nop			;0f7f	00 	. 
	ex af,af'			;0f80	08 	. 
	nop			;0f81	00 	. 
	ret p			;0f82	f0 	. 
	cp 000h		;0f83	fe 00 	. . 
	inc bc			;0f85	03 	. 
	rst 38h			;0f86	ff 	. 
	ccf			;0f87	3f 	? 
	nop			;0f88	00 	. 
	inc b			;0f89	04 	. 
	nop			;0f8a	00 	. 
	add a,b			;0f8b	80 	. 
	rst 38h			;0f8c	ff 	. 
	ret po			;0f8d	e0 	. 
	ret p			;0f8e	f0 	. 
	rlca			;0f8f	07 	. 
	inc bc			;0f90	03 	. 
	ld bc,l0500h		;0f91	01 00 05 	. . . 
	nop			;0f94	00 	. 
	ret p			;0f95	f0 	. 
	nop			;0f96	00 	. 
	inc bc			;0f97	03 	. 
	ret m			;0f98	f8 	. 
	call m,l0300h		;0f99	fc 00 03 	. . . 
	ld a,h			;0f9c	7c 	| 
	nop			;0f9d	00 	. 
	inc bc			;0f9e	03 	. 
	nop			;0f9f	00 	. 
	nop			;0fa0	00 	. 
	dec b			;0fa1	05 	. 
	rra			;0fa2	1f 	. 
	nop			;0fa3	00 	. 
	inc bc			;0fa4	03 	. 
	nop			;0fa5	00 	. 
	nop			;0fa6	00 	. 
	inc bc			;0fa7	03 	. 
	add a,b			;0fa8	80 	. 
	ret nz			;0fa9	c0 	. 
	ret po			;0faa	e0 	. 
	nop			;0fab	00 	. 
	ex af,af'			;0fac	08 	. 
	nop			;0fad	00 	. 
	ret p			;0fae	f0 	. 
	ret m			;0faf	f8 	. 
	call m,l00feh		;0fb0	fc fe 00 	. . . 
	inc b			;0fb3	04 	. 
	rst 38h			;0fb4	ff 	. 
	nop			;0fb5	00 	. 
	inc bc			;0fb6	03 	. 
	nop			;0fb7	00 	. 
	nop			;0fb8	00 	. 
	dec b			;0fb9	05 	. 
	ld bc,l0800h		;0fba	01 00 08 	. . . 
	nop			;0fbd	00 	. 
	nop			;0fbe	00 	. 
	dec b			;0fbf	05 	. 
	ld bc,0c181h		;0fc0	01 81 c1 	. . . 
	pop hl			;0fc3	e1 	. 
	nop			;0fc4	00 	. 
	ex af,af'			;0fc5	08 	. 
	ret m			;0fc6	f8 	. 
	nop			;0fc7	00 	. 
	inc bc			;0fc8	03 	. 
	nop			;0fc9	00 	. 
	ld a,a			;0fca	7f 	 
	rst 38h			;0fcb	ff 	. 
	ccf			;0fcc	3f 	? 
	rst 38h			;0fcd	ff 	. 
	rra			;0fce	1f 	. 
	nop			;0fcf	00 	. 
	inc bc			;0fd0	03 	. 
	nop			;0fd1	00 	. 
	add a,b			;0fd2	80 	. 
	rst 38h			;0fd3	ff 	. 
	nop			;0fd4	00 	. 
	rst 38h			;0fd5	ff 	. 
	add a,b			;0fd6	80 	. 
	rst 38h			;0fd7	ff 	. 
	rrca			;0fd8	0f 	. 
	rst 38h			;0fd9	ff 	. 
	rlca			;0fda	07 	. 
	rst 38h			;0fdb	ff 	. 
	inc bc			;0fdc	03 	. 
	rst 38h			;0fdd	ff 	. 
	ld bc,0c0ffh		;0fde	01 ff c0 	. . . 
	rst 38h			;0fe1	ff 	. 
	ret po			;0fe2	e0 	. 
	rst 38h			;0fe3	ff 	. 
	ret p			;0fe4	f0 	. 
	rst 38h			;0fe5	ff 	. 
	ret m			;0fe6	f8 	. 
	nop			;0fe7	00 	. 
	inc bc			;0fe8	03 	. 
	nop			;0fe9	00 	. 
	nop			;0fea	00 	. 
	inc bc			;0feb	03 	. 
	inc bc			;0fec	03 	. 
	rst 38h			;0fed	ff 	. 
	rlca			;0fee	07 	. 
	nop			;0fef	00 	. 
	inc bc			;0ff0	03 	. 
	nop			;0ff1	00 	. 
	nop			;0ff2	00 	. 
	inc bc			;0ff3	03 	. 
	ret p			;0ff4	f0 	. 
	rst 38h			;0ff5	ff 	. 
	ret po			;0ff6	e0 	. 
	rst 38h			;0ff7	ff 	. 
	rrca			;0ff8	0f 	. 
	rst 38h			;0ff9	ff 	. 
	rra			;0ffa	1f 	. 
	rst 38h			;0ffb	ff 	. 
	ccf			;0ffc	3f 	? 
	rst 38h			;0ffd	ff 	. 
	ld a,(hl)			;0ffe	7e 	~ 
l0fffh:
	rst 38h			;0fff	ff 	. 
l1000h:
	ret nz			;1000	c0 	. 
	rst 38h			;1001	ff 	. 
	add a,b			;1002	80 	. 
	nop			;1003	00 	. 
	cpl			;1004	2f 	/ 
	nop			;1005	00 	. 
	inc bc			;1006	03 	. 
	rlca			;1007	07 	. 
	nop			;1008	00 	. 
	inc bc			;1009	03 	. 
	rrca			;100a	0f 	. 
	nop			;100b	00 	. 
	ex af,af'			;100c	08 	. 
	nop			;100d	00 	. 
	ld c,007h		;100e	0e 07 	. . 
	nop			;1010	00 	. 
	inc bc			;1011	03 	. 
	inc bc			;1012	03 	. 
	ld bc,l0300h		;1013	01 00 03 	. . . 
	nop			;1016	00 	. 
l1017h:
	ld (hl),b			;1017	70 	p 
	call m,0ff73h		;1018	fc 73 ff 	. s . 
	daa			;101b	27 	' 
	pop bc			;101c	c1 	. 
l101dh:
	ret pe			;101d	e8 	. 
	rst 38h			;101e	ff 	. 
	nop			;101f	00 	. 
	inc bc			;1020	03 	. 
	rst 38h			;1021	ff 	. 
	rlca			;1022	07 	. 
	add a,a			;1023	87 	. 
	add a,e			;1024	83 	. 
	add a,c			;1025	81 	. 
	rlca			;1026	07 	. 
	inc sp			;1027	33 	3 
	ei			;1028	fb 	. 
	rst 30h			;1029	f7 	. 
	nop			;102a	00 	. 
	ld bc,0f6ffh		;102b	01 ff f6 	. . . 
	ret po			;102e	e0 	. 
	nop			;102f	00 	. 
	ld bc,l0100h		;1030	01 00 01 	. . . 
	rst 38h			;1033	ff 	. 
	add a,c			;1034	81 	. 
	nop			;1035	00 	. 
	inc bc			;1036	03 	. 
	ld bc,l03ffh		;1037	01 ff 03 	. . . 
	nop			;103a	00 	. 
	ld bc,l0100h		;103b	01 00 01 	. . . 
	nop			;103e	00 	. 
	inc bc			;103f	03 	. 
	inc bc			;1040	03 	. 
	rst 38h			;1041	ff 	. 
	add a,e			;1042	83 	. 
	jp l0300h		;1043	c3 00 03 	. . . 
	ret nz			;1046	c0 	. 
	rst 38h			;1047	ff 	. 
	ret po			;1048	e0 	. 
	ret p			;1049	f0 	. 
	ret m			;104a	f8 	. 
	call m,0ffe3h		;104b	fc e3 ff 	. . . 
	rst 38h			;104e	ff 	. 
	call m,l0400h		;104f	fc 00 04 	. . . 
	ret m			;1052	f8 	. 
	rst 38h			;1053	ff 	. 
	rst 38h			;1054	ff 	. 
	rra			;1055	1f 	. 
	rst 38h			;1056	ff 	. 
	rrca			;1057	0f 	. 
	nop			;1058	00 	. 
	inc bc			;1059	03 	. 
	rlca			;105a	07 	. 
	inc c			;105b	0c 	. 
	ld e,000h		;105c	1e 00 	. . 
	dec b			;105e	05 	. 
	ccf			;105f	3f 	? 
	rra			;1060	1f 	. 
	nop			;1061	00 	. 
	inc bc			;1062	03 	. 
	nop			;1063	00 	. 
	add a,c			;1064	81 	. 
	add a,b			;1065	80 	. 
	ret nz			;1066	c0 	. 
	ret po			;1067	e0 	. 
	pop af			;1068	f1 	. 
	rrca			;1069	0f 	. 
	nop			;106a	00 	. 
	ld bc,0e1ffh		;106b	01 ff e1 	. . . 
	ret nz			;106e	c0 	. 
	nop			;106f	00 	. 
	inc b			;1070	04 	. 
	add a,b			;1071	80 	. 
	nop			;1072	00 	. 
	ld bc,0feffh		;1073	01 ff fe 	. . . 
	call m,0fffeh		;1076	fc fe ff 	. . . 
	ld a,(hl)			;1079	7e 	~ 
	ld a,03ch		;107a	3e 3c 	> < 
	nop			;107c	00 	. 
	inc bc			;107d	03 	. 
	nop			;107e	00 	. 
	ld bc,07fc3h		;107f	01 c3 7f 	. .  
	rst 18h			;1082	df 	. 
	adc a,a			;1083	8f 	. 
	nop			;1084	00 	. 
	ex af,af'			;1085	08 	. 
	rst 38h			;1086	ff 	. 
	sbc a,a			;1087	9f 	. 
	nop			;1088	00 	. 
	inc bc			;1089	03 	. 
	rra			;108a	1f 	. 
	nop			;108b	00 	. 
	inc b			;108c	04 	. 
	rrca			;108d	0f 	. 
	nop			;108e	00 	. 
	rlca			;108f	07 	. 
	rst 38h			;1090	ff 	. 
	rst 28h			;1091	ef 	. 
	ld (hl),b			;1092	70 	p 
	add a,b			;1093	80 	. 
	rst 38h			;1094	ff 	. 
	nop			;1095	00 	. 
	ld bc,08381h		;1096	01 81 83 	. . . 
	add a,a			;1099	87 	. 
	rst 38h			;109a	ff 	. 
	nop			;109b	00 	. 
	ld bc,l02ffh		;109c	01 ff 02 	. . . 
	nop			;109f	00 	. 
	inc bc			;10a0	03 	. 
	nop			;10a1	00 	. 
	sbc a,a			;10a2	9f 	. 
	nop			;10a3	00 	. 
	ld bc,0feffh		;10a4	01 ff fe 	. . . 
	call m,0e0f8h		;10a7	fc f8 e0 	. . . 
	rst 38h			;10aa	ff 	. 
	add a,b			;10ab	80 	. 
	nop			;10ac	00 	. 
	ex af,af'			;10ad	08 	. 
	nop			;10ae	00 	. 
	ret p			;10af	f0 	. 
	call m,sub_0080h		;10b0	fc 80 00 	. . . 
	add hl,de			;10b3	19 	. 
	nop			;10b4	00 	. 
	ret po			;10b5	e0 	. 
	ret p			;10b6	f0 	. 
	jr nc,l10b9h		;10b7	30 00 	0 . 
l10b9h:
	ld bc,l1f00h		;10b9	01 00 1f 	. . . 
	nop			;10bc	00 	. 
	rlca			;10bd	07 	. 
	rrca			;10be	0f 	. 
	nop			;10bf	00 	. 
	ld b,0ffh		;10c0	06 ff 	. . 
	call m,sub_00f8h		;10c2	fc f8 00 	. . . 
	ld b,007h		;10c5	06 07 	. . 
	rst 38h			;10c7	ff 	. 
	nop			;10c8	00 	. 
	nop			;10c9	00 	. 
	inc bc			;10ca	03 	. 
	ret m			;10cb	f8 	. 
	nop			;10cc	00 	. 
	inc bc			;10cd	03 	. 
	ret p			;10ce	f0 	. 
	rst 38h			;10cf	ff 	. 
	nop			;10d0	00 	. 
	nop			;10d1	00 	. 
	ld b,0ffh		;10d2	06 ff 	. . 
	ld a,a			;10d4	7f 	 
	ccf			;10d5	3f 	? 
	ret p			;10d6	f0 	. 
	nop			;10d7	00 	. 
	rlca			;10d8	07 	. 
	ret po			;10d9	e0 	. 
	nop			;10da	00 	. 
	inc bc			;10db	03 	. 
	ccf			;10dc	3f 	? 
	nop			;10dd	00 	. 
	inc bc			;10de	03 	. 
	rra			;10df	1f 	. 
	rst 38h			;10e0	ff 	. 
	nop			;10e1	00 	. 
	nop			;10e2	00 	. 
	ld b,0c0h		;10e3	06 c0 	. . 
	rst 38h			;10e5	ff 	. 
	nop			;10e6	00 	. 
	nop			;10e7	00 	. 
	inc bc			;10e8	03 	. 
	ld a,h			;10e9	7c 	| 
	ld a,(hl)			;10ea	7e 	~ 
	ld a,0ffh		;10eb	3e ff 	> . 
	ccf			;10ed	3f 	? 
	rra			;10ee	1f 	. 
	nop			;10ef	00 	. 
	ld b,000h		;10f0	06 00 	. . 
	add a,b			;10f2	80 	. 
	ret nz			;10f3	c0 	. 
l10f4h:
	rra			;10f4	1f 	. 
	rst 38h			;10f5	ff 	. 
	rrca			;10f6	0f 	. 
	rlca			;10f7	07 	. 
	ld bc,l0300h		;10f8	01 00 03 	. . . 
	nop			;10fb	00 	. 
	ret po			;10fc	e0 	. 
	ret m			;10fd	f8 	. 
l10feh:
	nop			;10fe	00 	. 
l10ffh:
	inc bc			;10ff	03 	. 
l1100h:
	rst 38h			;1100	ff 	. 
	ld a,a			;1101	7f 	 
	rrca			;1102	0f 	. 
	nop			;1103	00 	. 
	rlca			;1104	07 	. 
	nop			;1105	00 	. 
	ld bc,l0003h		;1106	01 03 00 	. . . 
	inc b			;1109	04 	. 
	ld a,h			;110a	7c 	| 
	ld a,b			;110b	78 	x 
	rst 38h			;110c	ff 	. 
	ret m			;110d	f8 	. 
	ret p			;110e	f0 	. 
	rlca			;110f	07 	. 
l1110h:
	rra			;1110	1f 	. 
	rst 38h			;1111	ff 	. 
	rst 38h			;1112	ff 	. 
l1113h:
	rst 38h			;1113	ff 	. 
	cp 0f0h		;1114	fe f0 	. . 
	nop			;1116	00 	. 
	ld bc,0f000h		;1117	01 00 f0 	. . . 
	rst 38h			;111a	ff 	. 
	ret po			;111b	e0 	. 
	add a,b			;111c	80 	. 
	nop			;111d	00 	. 
	inc b			;111e	04 	. 
	nop			;111f	00 	. 
	nop			;1120	00 	. 
	ex af,af'			;1121	08 	. 
	rra			;1122	1f 	. 
	adc a,a			;1123	8f 	. 
	add a,a			;1124	87 	. 
	add a,e			;1125	83 	. 
	add a,c			;1126	81 	. 
	nop			;1127	00 	. 
	inc b			;1128	04 	. 
	add a,b			;1129	80 	. 
	nop			;112a	00 	. 
	dec b			;112b	05 	. 
	rra			;112c	1f 	. 
	ccf			;112d	3f 	? 
	rst 38h			;112e	ff 	. 
	nop			;112f	00 	. 
	nop			;1130	00 	. 
	ld b,080h		;1131	06 80 	. . 
	rst 38h			;1133	ff 	. 
	nop			;1134	00 	. 
	pop af			;1135	f1 	. 
	ld sp,hl			;1136	f9 	. 
	nop			;1137	00 	. 
	inc bc			;1138	03 	. 
	rst 38h			;1139	ff 	. 
	ld a,a			;113a	7f 	 
	ccf			;113b	3f 	? 
	rra			;113c	1f 	. 
	nop			;113d	00 	. 
	ex af,af'			;113e	08 	. 
	ret m			;113f	f8 	. 
	rrca			;1140	0f 	. 
	rlca			;1141	07 	. 
	inc bc			;1142	03 	. 
	nop			;1143	00 	. 
	inc bc			;1144	03 	. 
	ld bc,sub_00ffh		;1145	01 ff 00 	. . . 
	nop			;1148	00 	. 
	ld b,0f8h		;1149	06 f8 	. . 
	nop			;114b	00 	. 
	ld a,(bc)			;114c	0a 	. 
	nop			;114d	00 	. 
	rst 38h			;114e	ff 	. 
	rst 38h			;114f	ff 	. 
	ld a,a			;1150	7f 	 
	ccf			;1151	3f 	? 
	nop			;1152	00 	. 
	inc b			;1153	04 	. 
	rra			;1154	1f 	. 
	nop			;1155	00 	. 
	djnz l1158h		;1156	10 00 	. . 
l1158h:
	rst 38h			;1158	ff 	. 
	call m,0f0f8h		;1159	fc f8 f0 	. . . 
	nop			;115c	00 	. 
	inc b			;115d	04 	. 
	ret po			;115e	e0 	. 
	nop			;115f	00 	. 
	ld b,000h		;1160	06 00 	. . 
	inc bc			;1162	03 	. 
	inc c			;1163	0c 	. 
	nop			;1164	00 	. 
	inc b			;1165	04 	. 
	ret po			;1166	e0 	. 
	rst 38h			;1167	ff 	. 
	ret p			;1168	f0 	. 
	nop			;1169	00 	. 
	inc hl			;116a	23 	# 
	nop			;116b	00 	. 
	rst 38h			;116c	ff 	. 
	inc bc			;116d	03 	. 
	ld bc,07961h		;116e	01 61 79 	. a y 
	inc a			;1171	3c 	< 
	rst 38h			;1172	ff 	. 
	jr $+1		;1173	18 ff 	. . 
	ld a,000h		;1175	3e 00 	> . 
	inc b			;1177	04 	. 
	ccf			;1178	3f 	? 
	rra			;1179	1f 	. 
	nop			;117a	00 	. 
	dec b			;117b	05 	. 
	nop			;117c	00 	. 
	rst 38h			;117d	ff 	. 
	add a,b			;117e	80 	. 
	ret nz			;117f	c0 	. 
	rra			;1180	1f 	. 
	rrca			;1181	0f 	. 
	sbc a,a			;1182	9f 	. 
	ret p			;1183	f0 	. 
	add a,b			;1184	80 	. 
	nop			;1185	00 	. 
	inc bc			;1186	03 	. 
	nop			;1187	00 	. 
	ret po			;1188	e0 	. 
	ret p			;1189	f0 	. 
	call m,sub_001fh		;118a	fc 1f 00 	. . . 
	inc c			;118d	0c 	. 
	nop			;118e	00 	. 
	nop			;118f	00 	. 
	inc bc			;1190	03 	. 
	inc bc			;1191	03 	. 
	nop			;1192	00 	. 
	dec b			;1193	05 	. 
	ld bc,l0300h		;1194	01 00 03 	. . . 
	nop			;1197	00 	. 
	rst 38h			;1198	ff 	. 
	ret p			;1199	f0 	. 
	nop			;119a	00 	. 
	inc bc			;119b	03 	. 
	ld (hl),b			;119c	70 	p 
	ld bc,l0700h		;119d	01 00 07 	. . . 
	nop			;11a0	00 	. 
	nop			;11a1	00 	. 
	inc bc			;11a2	03 	. 
	ret m			;11a3	f8 	. 
	call m,l00feh		;11a4	fc fe 00 	. . . 
	inc bc			;11a7	03 	. 
	rst 38h			;11a8	ff 	. 
	ld b,a			;11a9	47 	G 
	rst 38h			;11aa	ff 	. 
	rlca			;11ab	07 	. 
	rra			;11ac	1f 	. 
	ccf			;11ad	3f 	? 
	nop			;11ae	00 	. 
	ld b,0ffh		;11af	06 ff 	. . 
	ld a,a			;11b1	7f 	 
	ccf			;11b2	3f 	? 
	rra			;11b3	1f 	. 
	ccf			;11b4	3f 	? 
	nop			;11b5	00 	. 
	add hl,bc			;11b6	09 	. 
	rst 38h			;11b7	ff 	. 
	nop			;11b8	00 	. 
	inc bc			;11b9	03 	. 
	add a,b			;11ba	80 	. 
l11bbh:
	ret nz			;11bb	c0 	. 
	pop hl			;11bc	e1 	. 
	nop			;11bd	00 	. 
	inc bc			;11be	03 	. 
	rst 38h			;11bf	ff 	. 
	rst 38h			;11c0	ff 	. 
	inc a			;11c1	3c 	< 
	ld a,h			;11c2	7c 	| 
	ld a,b			;11c3	78 	x 
	nop			;11c4	00 	. 
	inc b			;11c5	04 	. 
	ret m			;11c6	f8 	. 
	nop			;11c7	00 	. 
	ex af,af'			;11c8	08 	. 
	rst 38h			;11c9	ff 	. 
	nop			;11ca	00 	. 
	rlca			;11cb	07 	. 
	ret m			;11cc	f8 	. 
	call m,l0500h		;11cd	fc 00 05 	. . . 
	rrca			;11d0	0f 	. 
	rra			;11d1	1f 	. 
	ld e,010h		;11d2	1e 10 	. . 
	rst 28h			;11d4	ef 	. 
	rst 38h			;11d5	ff 	. 
	rst 8			;11d6	cf 	. 
	rst 38h			;11d7	ff 	. 
	adc a,a			;11d8	8f 	. 
	rlca			;11d9	07 	. 
	scf			;11da	37 	7 
	ld h,(hl)			;11db	66 	f 
	jr l11eeh		;11dc	18 10 	. . 
	nop			;11de	00 	. 
	inc bc			;11df	03 	. 
	jr nc,l1203h		;11e0	30 21 	0 ! 
	jr nz,l1205h		;11e2	20 21 	  ! 
	ld h,(hl)			;11e4	66 	f 
	add a,0ffh		;11e5	c6 ff 	. . 
	add a,(hl)			;11e7	86 	. 
	rst 38h			;11e8	ff 	. 
	add a,h			;11e9	84 	. 
	adc a,h			;11ea	8c 	. 
	inc c			;11eb	0c 	. 
	nop			;11ec	00 	. 
	dec b			;11ed	05 	. 
l11eeh:
	nop			;11ee	00 	. 
	ld b,b			;11ef	40 	@ 
	ret m			;11f0	f8 	. 
	inc a			;11f1	3c 	< 
	rst 38h			;11f2	ff 	. 
	nop			;11f3	00 	. 
	jr l11bbh		;11f4	18 c5 	. . 
	inc hl			;11f6	23 	# 
	rla			;11f7	17 	. 
	inc c			;11f8	0c 	. 
	ret nz			;11f9	c0 	. 
	inc bc			;11fa	03 	. 
	nop			;11fb	00 	. 
	add hl,bc			;11fc	09 	. 
	nop			;11fd	00 	. 
	rst 38h			;11fe	ff 	. 
	rra			;11ff	1f 	. 
l1200h:
	rlca			;1200	07 	. 
	nop			;1201	00 	. 
	dec b			;1202	05 	. 
l1203h:
	nop			;1203	00 	. 
	ld c,b			;1204	48 	H 
l1205h:
	adc a,b			;1205	88 	. 
	ld a,(bc)			;1206	0a 	. 
	call c,01838h		;1207	dc 38 18 	. 8 . 
	nop			;120a	00 	. 
	rlca			;120b	07 	. 
	nop			;120c	00 	. 
	add a,b			;120d	80 	. 
	dec c			;120e	0d 	. 
	ld a,a			;120f	7f 	 
	nop			;1210	00 	. 
	ld bc,0fcffh		;1211	01 ff fc 	. . . 
	cp 000h		;1214	fe 00 	. . 
	ld bc,l3ffch+3		;1216	01 ff 3f 	. . ? 
	rra			;1219	1f 	. 
	nop			;121a	00 	. 
	ld bc,0c000h		;121b	01 00 c0 	. . . 
	nop			;121e	00 	. 
l121fh:
	inc b			;121f	04 	. 
	nop			;1220	00 	. 
	rst 38h			;1221	ff 	. 
	add a,b			;1222	80 	. 
	nop			;1223	00 	. 
	ex af,af'			;1224	08 	. 
	nop			;1225	00 	. 
	rst 38h			;1226	ff 	. 
	rrca			;1227	0f 	. 
	rst 38h			;1228	ff 	. 
	rlca			;1229	07 	. 
	rst 38h			;122a	ff 	. 
	inc bc			;122b	03 	. 
	rst 38h			;122c	ff 	. 
	ld bc,sub_00ffh		;122d	01 ff 00 	. . . 
	rst 38h			;1230	ff 	. 
	add a,b			;1231	80 	. 
	nop			;1232	00 	. 
	inc bc			;1233	03 	. 
	ret nz			;1234	c0 	. 
	ret po			;1235	e0 	. 
	nop			;1236	00 	. 
	inc bc			;1237	03 	. 
	ld bc,l0500h		;1238	01 00 05 	. . . 
	nop			;123b	00 	. 
	rst 38h			;123c	ff 	. 
	ret nz			;123d	c0 	. 
	rst 38h			;123e	ff 	. 
	ret po			;123f	e0 	. 
	nop			;1240	00 	. 
	inc bc			;1241	03 	. 
	ret p			;1242	f0 	. 
	ret m			;1243	f8 	. 
	nop			;1244	00 	. 
	ex af,af'			;1245	08 	. 
	nop			;1246	00 	. 
	nop			;1247	00 	. 
	inc bc			;1248	03 	. 
	call m,0feffh		;1249	fc ff fe 	. . . 
	nop			;124c	00 	. 
	ld bc,0feffh		;124d	01 ff fe 	. . . 
	nop			;1250	00 	. 
	ld bc,sub_00ffh		;1251	01 ff 00 	. . . 
	djnz l1256h		;1254	10 00 	. . 
l1256h:
	jr nz,l1258h		;1256	20 00 	  . 
l1258h:
	ld a,(bc)			;1258	0a 	. 
	nop			;1259	00 	. 
	ld b,007h		;125a	06 07 	. . 
	inc bc			;125c	03 	. 
	rst 38h			;125d	ff 	. 
	ld bc,l0400h		;125e	01 00 04 	. . . 
	nop			;1261	00 	. 
	add a,b			;1262	80 	. 
	ret m			;1263	f8 	. 
	cp 000h		;1264	fe 00 	. . 
	ld bc,l03ffh		;1266	01 ff 03 	. . . 
	ld bc,l0600h		;1269	01 00 06 	. . . 
	nop			;126c	00 	. 
	rst 38h			;126d	ff 	. 
	rst 38h			;126e	ff 	. 
	nop			;126f	00 	. 
	inc b			;1270	04 	. 
	ccf			;1271	3f 	? 
	rst 38h			;1272	ff 	. 
	ld a,a			;1273	7f 	 
	nop			;1274	00 	. 
	ld bc,l0000h		;1275	01 00 00 	. . . 
	inc bc			;1278	03 	. 
	inc bc			;1279	03 	. 
	rst 38h			;127a	ff 	. 
	rlca			;127b	07 	. 
	rrca			;127c	0f 	. 
	adc a,a			;127d	8f 	. 
	nop			;127e	00 	. 
	inc b			;127f	04 	. 
	rst 38h			;1280	ff 	. 
	rst 20h			;1281	e7 	. 
	jp 08183h		;1282	c3 83 81 	. . . 
	nop			;1285	00 	. 
	inc d			;1286	14 	. 
	rst 38h			;1287	ff 	. 
	rst 20h			;1288	e7 	. 
	jp 081ffh		;1289	c3 ff 81 	. . . 
	nop			;128c	00 	. 
	ld bc,sub_00ffh		;128d	01 ff 00 	. . . 
	inc bc			;1290	03 	. 
	cp 000h		;1291	fe 00 	. . 
	inc bc			;1293	03 	. 
	call m,sub_00f8h		;1294	fc f8 00 	. . . 
	dec b			;1297	05 	. 
	nop			;1298	00 	. 
	add a,b			;1299	80 	. 
	ret p			;129a	f0 	. 
	ei			;129b	fb 	. 
	nop			;129c	00 	. 
	ld bc,0ff00h		;129d	01 00 ff 	. . . 
	ld bc,l0400h		;12a0	01 00 04 	. . . 
	nop			;12a3	00 	. 
	jr nz,l1321h		;12a4	20 7b 	  { 
	dec c			;12a6	0d 	. 
	nop			;12a7	00 	. 
	ld b,000h		;12a8	06 00 	. . 
	ret m			;12aa	f8 	. 
	call m,0ff10h		;12ab	fc 10 ff 	. . . 
	ret po			;12ae	e0 	. 
	add a,b			;12af	80 	. 
	nop			;12b0	00 	. 
	inc bc			;12b1	03 	. 
	nop			;12b2	00 	. 
	ret p			;12b3	f0 	. 
	nop			;12b4	00 	. 
	inc bc			;12b5	03 	. 
	rst 38h			;12b6	ff 	. 
	ld a,a			;12b7	7f 	 
	rra			;12b8	1f 	. 
	nop			;12b9	00 	. 
	inc b			;12ba	04 	. 
	nop			;12bb	00 	. 
	call nz,0efeeh		;12bc	c4 ee ef 	. . . 
	rst 30h			;12bf	f7 	. 
	add hl,sp			;12c0	39 	9 
	ld c,01eh		;12c1	0e 1e 	. . 
	rst 38h			;12c3	ff 	. 
	inc e			;12c4	1c 	. 
	jr l12cfh		;12c5	18 08 	. . 
	nop			;12c7	00 	. 
	inc bc			;12c8	03 	. 
	nop			;12c9	00 	. 
	inc a			;12ca	3c 	< 
	jr c,l1349h		;12cb	38 7c 	8 | 
	ld a,b			;12cd	78 	x 
	ret po			;12ce	e0 	. 
l12cfh:
	ret nz			;12cf	c0 	. 
	nop			;12d0	00 	. 
	ld bc,l0700h		;12d1	01 00 07 	. . . 
	rst 38h			;12d4	ff 	. 
	inc bc			;12d5	03 	. 
	ld bc,0ff02h		;12d6	01 02 ff 	. . . 
	inc bc			;12d9	03 	. 
	nop			;12da	00 	. 
	ld bc,0e000h		;12db	01 00 e0 	. . . 
	rst 38h			;12de	ff 	. 
	ret p			;12df	f0 	. 
	nop			;12e0	00 	. 
	inc bc			;12e1	03 	. 
	ret m			;12e2	f8 	. 
	rst 38h			;12e3	ff 	. 
	call m,0fff6h		;12e4	fc f6 ff 	. . . 
	rst 28h			;12e7	ef 	. 
	rst 0			;12e8	c7 	. 
	nop			;12e9	00 	. 
	ld bc,08000h		;12ea	01 00 80 	. . . 
	rst 38h			;12ed	ff 	. 
	nop			;12ee	00 	. 
	call m,l0700h		;12ef	fc 00 07 	. . . 
	cp 000h		;12f2	fe 00 	. . 
	add hl,bc			;12f4	09 	. 
	nop			;12f5	00 	. 
	djnz $+1		;12f6	10 ff 	. . 
	ret po			;12f8	e0 	. 
	ld h,b			;12f9	60 	` 
	and b			;12fa	a0 	. 
	ret po			;12fb	e0 	. 
	ld h,b			;12fc	60 	` 
	nop			;12fd	00 	. 
	ex af,af'			;12fe	08 	. 
	nop			;12ff	00 	. 
	nop			;1300	00 	. 
	inc bc			;1301	03 	. 
	djnz l131ch		;1302	10 18 	. . 
	inc c			;1304	0c 	. 
	rlca			;1305	07 	. 
	ld bc,l1100h		;1306	01 00 11 	. . . 
	nop			;1309	00 	. 
	ld bc,0ff02h		;130a	01 02 ff 	. . . 
	inc bc			;130d	03 	. 
	ld bc,l0100h		;130e	01 00 01 	. . . 
	nop			;1311	00 	. 
	ret nz			;1312	c0 	. 
	ld a,a			;1313	7f 	 
	nop			;1314	00 	. 
	ld bc,08000h		;1315	01 00 80 	. . . 
	rst 38h			;1318	ff 	. 
	add a,c			;1319	81 	. 
	inc bc			;131a	03 	. 
	rlca			;131b	07 	. 
l131ch:
	ld e,0f8h		;131c	1e f8 	. . 
	nop			;131e	00 	. 
	inc b			;131f	04 	. 
	ld a,b			;1320	78 	x 
l1321h:
	rst 38h			;1321	ff 	. 
	ld (hl),b			;1322	70 	p 
	ret p			;1323	f0 	. 
	ret po			;1324	e0 	. 
	rlca			;1325	07 	. 
	rra			;1326	1f 	. 
	ccf			;1327	3f 	? 
	nop			;1328	00 	. 
	inc bc			;1329	03 	. 
	ld a,a			;132a	7f 	 
	rst 38h			;132b	ff 	. 
	rst 38h			;132c	ff 	. 
	rst 38h			;132d	ff 	. 
	ret po			;132e	e0 	. 
	pop bc			;132f	c1 	. 
	jp l0087h		;1330	c3 87 00 	. . . 
	inc bc			;1333	03 	. 
	rlca			;1334	07 	. 
	nop			;1335	00 	. 
	inc c			;1336	0c 	. 
	rst 38h			;1337	ff 	. 
	rst 38h			;1338	ff 	. 
	cp 000h		;1339	fe 00 	. . 
	inc b			;133b	04 	. 
	rst 38h			;133c	ff 	. 
	cp a			;133d	bf 	. 
	ccf			;133e	3f 	? 
	rra			;133f	1f 	. 
	rst 38h			;1340	ff 	. 
	ccf			;1341	3f 	? 
	ld a,a			;1342	7f 	 
	nop			;1343	00 	. 
	ex af,af'			;1344	08 	. 
	rst 38h			;1345	ff 	. 
	ld a,a			;1346	7f 	 
	nop			;1347	00 	. 
	rrca			;1348	0f 	. 
l1349h:
	rst 38h			;1349	ff 	. 
	call m,0fffeh		;134a	fc fe ff 	. . . 
	rst 38h			;134d	ff 	. 
	rst 38h			;134e	ff 	. 
	call m,0feffh		;134f	fc ff fe 	. . . 
	nop			;1352	00 	. 
	ld bc,07fffh		;1353	01 ff 7f 	. .  
	ccf			;1356	3f 	? 
	nop			;1357	00 	. 
	inc bc			;1358	03 	. 
	rra			;1359	1f 	. 
	rst 38h			;135a	ff 	. 
	ccf			;135b	3f 	? 
	nop			;135c	00 	. 
	ex af,af'			;135d	08 	. 
	rst 38h			;135e	ff 	. 
	ld h,b			;135f	60 	` 
	ld h,e			;1360	63 	c 
	ld h,a			;1361	67 	g 
	rst 8			;1362	cf 	. 
	rst 38h			;1363	ff 	. 
	rrca			;1364	0f 	. 
	rst 38h			;1365	ff 	. 
	rra			;1366	1f 	. 
	inc c			;1367	0c 	. 
	ret z			;1368	c8 	. 
	nop			;1369	00 	. 
	inc bc			;136a	03 	. 
	ret m			;136b	f8 	. 
	call m,0feffh		;136c	fc ff fe 	. . . 
	ccf			;136f	3f 	? 
	cp a			;1370	bf 	. 
	nop			;1371	00 	. 
	ld c,0ffh		;1372	0e ff 	. . 
	nop			;1374	00 	. 
	ld bc,l0100h		;1375	01 00 01 	. . . 
	inc bc			;1378	03 	. 
	rst 38h			;1379	ff 	. 
	ld bc,l0400h		;137a	01 00 04 	. . . 
	nop			;137d	00 	. 
	add a,b			;137e	80 	. 
	ret nz			;137f	c0 	. 
	rst 38h			;1380	ff 	. 
	add a,b			;1381	80 	. 
	nop			;1382	00 	. 
	dec b			;1383	05 	. 
	nop			;1384	00 	. 
	rst 38h			;1385	ff 	. 
	ld bc,l03ffh		;1386	01 ff 03 	. . . 
	rst 38h			;1389	ff 	. 
	rlca			;138a	07 	. 
	rst 38h			;138b	ff 	. 
	nop			;138c	00 	. 
	rst 38h			;138d	ff 	. 
	ret nz			;138e	c0 	. 
	rst 38h			;138f	ff 	. 
	ret po			;1390	e0 	. 
	rst 38h			;1391	ff 	. 
	ret p			;1392	f0 	. 
	nop			;1393	00 	. 
	add hl,bc			;1394	09 	. 
	nop			;1395	00 	. 
	add a,b			;1396	80 	. 
	rst 38h			;1397	ff 	. 
	ret nz			;1398	c0 	. 
	nop			;1399	00 	. 
	dec c			;139a	0d 	. 
	nop			;139b	00 	. 
	ld b,b			;139c	40 	@ 
	ld (hl),b			;139d	70 	p 
	inc a			;139e	3c 	< 
	ld a,00eh		;139f	3e 0e 	> . 
	ld (bc),a			;13a1	02 	. 
	nop			;13a2	00 	. 
	ld bc,l0000h		;13a3	01 00 00 	. . . 
	nop			;13a6	00 	. 
	nop			;13a7	00 	. 
	ex af,af'			;13a8	08 	. 
	nop			;13a9	00 	. 
	nop			;13aa	00 	. 
	ld b,004h		;13ab	06 04 	. . 
	ld (bc),a			;13ad	02 	. 
	nop			;13ae	00 	. 
	ld bc,l0200h		;13af	01 00 02 	. . . 
	ld sp,0c221h		;13b2	31 21 c2 	1 ! . 
	inc b			;13b5	04 	. 
	ex af,af'			;13b6	08 	. 
	nop			;13b7	00 	. 
	inc b			;13b8	04 	. 
	nop			;13b9	00 	. 
	inc b			;13ba	04 	. 
	inc e			;13bb	1c 	. 
	nop			;13bc	00 	. 
	ld bc,l0400h		;13bd	01 00 04 	. . . 
	inc e			;13c0	1c 	. 
	rst 38h			;13c1	ff 	. 
	nop			;13c2	00 	. 
	jr c,l1405h		;13c3	38 40 	8 @ 
	ld e,l			;13c5	5d 	] 
	ld b,c			;13c6	41 	A 
	ld a,(de)			;13c7	1a 	. 
	inc b			;13c8	04 	. 
	jr $+4		;13c9	18 02 	. . 
	add hl,de			;13cb	19 	. 
	ld d,002h		;13cc	16 02 	. . 
	ld a,c			;13ce	79 	y 
	ld bc,l0002h		;13cf	01 02 00 	. . . 
	ld bc,0ff00h		;13d2	01 00 ff 	. . . 
	ld bc,l02f2h		;13d5	01 f2 02 	. . . 
	nop			;13d8	00 	. 
	inc bc			;13d9	03 	. 
	inc b			;13da	04 	. 
	nop			;13db	00 	. 
	ld bc,0ff00h		;13dc	01 00 ff 	. . . 
	ld bc,l0006h		;13df	01 06 00 	. . . 
	inc b			;13e2	04 	. 
	inc b			;13e3	04 	. 
	nop			;13e4	00 	. 
	ld bc,l0200h		;13e5	01 00 02 	. . . 
	ld sp,l0221h		;13e8	31 21 02 	1 ! . 
	ld sp,l0221h		;13eb	31 21 02 	1 ! . 
	nop			;13ee	00 	. 
	ld bc,l0200h		;13ef	01 00 02 	. . . 
	ld sp,l21ffh		;13f2	31 ff 21 	1 . ! 
	ld bc,l0271h		;13f5	01 71 02 	. q . 
	nop			;13f8	00 	. 
	ld bc,l0000h		;13f9	01 00 00 	. . . 
	ld b,011h		;13fc	06 11 	. . 
	ld (bc),a			;13fe	02 	. 
	nop			;13ff	00 	. 
	ld bc,l0200h		;1400	01 00 02 	. . . 
	add hl,de			;1403	19 	. 
	rst 38h			;1404	ff 	. 
l1405h:
	ld de,0ff02h		;1405	11 02 ff 	. . . 
	djnz l140ah		;1408	10 00 	. . 
l140ah:
	ld bc,l0000h		;140a	01 00 00 	. . . 
	inc bc			;140d	03 	. 
	ld de,l1901h		;140e	11 01 19 	. . . 
	rst 38h			;1411	ff 	. 
	ld de,l0100h		;1412	11 00 01 	. . . 
	nop			;1415	00 	. 
	nop			;1416	00 	. 
	rlca			;1417	07 	. 
	inc b			;1418	04 	. 
	nop			;1419	00 	. 
	ld bc,l0200h		;141a	01 00 02 	. . . 
	add hl,de			;141d	19 	. 
	ld de,0ff17h		;141e	11 17 ff 	. . . 
	ld de,l0002h		;1421	11 02 00 	. . . 
	ld bc,l0200h		;1424	01 00 02 	. . . 
	add hl,de			;1427	19 	. 
	ld de,l1902h		;1428	11 02 19 	. . . 
	ld de,l0002h		;142b	11 02 00 	. . . 
	ld bc,l0200h		;142e	01 00 02 	. . . 
	rst 38h			;1431	ff 	. 
	ld de,0ff1fh		;1432	11 1f ff 	. . . 
	ld de,l0002h		;1435	11 02 00 	. . . 
	ld bc,l0200h		;1438	01 00 02 	. . . 
	add hl,de			;143b	19 	. 
	nop			;143c	00 	. 
	inc b			;143d	04 	. 
	ld de,l0002h		;143e	11 02 00 	. . . 
	ld bc,l0100h		;1441	01 00 01 	. . . 
	ld e,010h		;1444	1e 10 	. . 
	ld (bc),a			;1446	02 	. 
	inc e			;1447	1c 	. 
	djnz l144bh		;1448	10 01 	. . 
	nop			;144a	00 	. 
l144bh:
	ld bc,l0200h		;144b	01 00 02 	. . . 
	add hl,de			;144e	19 	. 
	rst 38h			;144f	ff 	. 
	ld de,l1902h		;1450	11 02 19 	. . . 
	ld de,l0100h		;1453	11 00 01 	. . . 
	nop			;1456	00 	. 
	inc b			;1457	04 	. 
	ld a,(de)			;1458	1a 	. 
	rst 38h			;1459	ff 	. 
	ld de,l1901h		;145a	11 01 19 	. . . 
	ld de,l0100h		;145d	11 00 01 	. . . 
	nop			;1460	00 	. 
	nop			;1461	00 	. 
	ld b,010h		;1462	06 10 	. . 
	ld bc,l0100h		;1464	01 00 01 	. . . 
	nop			;1467	00 	. 
	rst 38h			;1468	ff 	. 
	ld hl,l0201h		;1469	21 01 02 	! . . 
	nop			;146c	00 	. 
	inc bc			;146d	03 	. 
	inc b			;146e	04 	. 
	nop			;146f	00 	. 
	ld bc,l2100h		;1470	01 00 21 	. . ! 
	ld de,l0109h		;1473	11 09 01 	. . . 
	nop			;1476	00 	. 
	inc bc			;1477	03 	. 
	ld de,l0100h		;1478	11 00 01 	. . . 
	nop			;147b	00 	. 
	ld (bc),a			;147c	02 	. 
	add hl,de			;147d	19 	. 
	nop			;147e	00 	. 
	inc b			;147f	04 	. 
	ld de,0ff02h		;1480	11 02 ff 	. . . 
	nop			;1483	00 	. 
	add hl,sp			;1484	39 	9 
	rst 38h			;1485	ff 	. 
	ld bc,l2139h		;1486	01 39 21 	. 9 ! 
	ld bc,l0100h		;1489	01 00 01 	. . . 
	nop			;148c	00 	. 
	ld (de),a			;148d	12 	. 
	ld bc,l0500h		;148e	01 00 05 	. . . 
	add hl,hl			;1491	29 	) 
	rst 38h			;1492	ff 	. 
	nop			;1493	00 	. 
	jr c,l14b7h		;1494	38 21 	8 ! 
	ld (bc),a			;1496	02 	. 
	inc a			;1497	3c 	< 
	jr nz,l149bh		;1498	20 01 	  . 
	nop			;149a	00 	. 
l149bh:
	rst 38h			;149b	ff 	. 
sub_149ch:
	nop			;149c	00 	. 
	nop			;149d	00 	. 
	or d			;149e	b2 	. 
	nop			;149f	00 	. 
	ld (bc),a			;14a0	02 	. 
	inc a			;14a1	3c 	< 
	ld (bc),a			;14a2	02 	. 
	ld sp,l21ffh		;14a3	31 ff 21 	1 . ! 
	ld (bc),a			;14a6	02 	. 
	nop			;14a7	00 	. 
	ld l,(hl)			;14a8	6e 	n 
	nop			;14a9	00 	. 
	ld bc,l0603h		;14aa	01 03 06 	. . . 
	nop			;14ad	00 	. 
	ld bc,l3000h		;14ae	01 00 30 	. . 0 
	ld a,h			;14b1	7c 	| 
	rra			;14b2	1f 	. 
	ld l,(hl)			;14b3	6e 	n 
	push bc			;14b4	c5 	. 
	ld a,(de)			;14b5	1a 	. 
	ld a,(hl)			;14b6	7e 	~ 
l14b7h:
	inc c			;14b7	0c 	. 
	add hl,bc			;14b8	09 	. 
	ld de,l3a37h		;14b9	11 37 3a 	. 7 : 
	jr nc,l1531h		;14bc	30 73 	0 s 
	ld b,e			;14be	43 	C 
	call m,086d0h		;14bf	fc d0 86 	. . . 
	sbc a,h			;14c2	9c 	. 
	or h			;14c3	b4 	. 
	jp m,l00f1h		;14c4	fa f1 00 	. . . 
	ld bc,sub_00ffh		;14c7	01 ff 00 	. . . 
	ld bc,l0300h		;14ca	01 00 03 	. . . 
	adc a,a			;14cd	8f 	. 
	ld a,(hl)			;14ce	7e 	~ 
	inc a			;14cf	3c 	< 
	cp h			;14d0	bc 	. 
	jp m,0f839h		;14d1	fa 39 f8 	. 9 . 
	cp 000h		;14d4	fe 00 	. . 
	ld bc,07fffh		;14d6	01 ff 7f 	. .  
	nop			;14d9	00 	. 
	ld bc,0bfffh		;14da	01 ff bf 	. . . 
	ccf			;14dd	3f 	? 
	nop			;14de	00 	. 
	ld bc,044ffh		;14df	01 ff 44 	. . D 
	ld e,h			;14e2	5c 	\ 
	xor l			;14e3	ad 	. 
	ccf			;14e4	3f 	? 
	ld a,(hl)			;14e5	7e 	~ 
	ld a,a			;14e6	7f 	 
	rst 0			;14e7	c7 	. 
	cp e			;14e8	bb 	. 
	ld a,(hl)			;14e9	7e 	~ 
	cp a			;14ea	bf 	. 
	ld a,a			;14eb	7f 	 
	ld (hl),a			;14ec	77 	w 
	rst 30h			;14ed	f7 	. 
	nop			;14ee	00 	. 
	ld bc,0b7ffh		;14ef	01 ff b7 	. . . 
	and c			;14f2	a1 	. 
	nop			;14f3	00 	. 
	ld bc,07000h		;14f4	01 00 70 	. . p 
	call m,sub_2773h		;14f7	fc 73 27 	. s ' 
	rlca			;14fa	07 	. 
	add a,c			;14fb	81 	. 
	ret z			;14fc	c8 	. 
	nop			;14fd	00 	. 
	dec b			;14fe	05 	. 
	nop			;14ff	00 	. 
	nop			;1500	00 	. 
	inc bc			;1501	03 	. 
	add a,b			;1502	80 	. 
	rlca			;1503	07 	. 
	inc sp			;1504	33 	3 
	ei			;1505	fb 	. 
	rst 30h			;1506	f7 	. 
	nop			;1507	00 	. 
	inc bc			;1508	03 	. 
	rst 38h			;1509	ff 	. 
	di			;150a	f3 	. 
	nop			;150b	00 	. 
	ld bc,0ff00h		;150c	01 00 ff 	. . . 
	add a,b			;150f	80 	. 
	nop			;1510	00 	. 
	jr l1513h		;1511	18 00 	. . 
l1513h:
	inc bc			;1513	03 	. 
	nop			;1514	00 	. 
	ld b,000h		;1515	06 00 	. . 
	ret po			;1517	e0 	. 
	rst 38h			;1518	ff 	. 
	djnz l151bh		;1519	10 00 	. . 
l151bh:
	dec d			;151b	15 	. 
	nop			;151c	00 	. 
	ld e,021h		;151d	1e 21 	. ! 
	rst 38h			;151f	ff 	. 
	ld b,b			;1520	40 	@ 
	nop			;1521	00 	. 
	ld b,000h		;1522	06 00 	. . 
	add a,b			;1524	80 	. 
	nop			;1525	00 	. 
	inc hl			;1526	23 	# 
	nop			;1527	00 	. 
	ld a,h			;1528	7c 	| 
	cp 000h		;1529	fe 00 	. . 
	inc bc			;152b	03 	. 
	rst 38h			;152c	ff 	. 
	nop			;152d	00 	. 
	inc bc			;152e	03 	. 
	ld a,a			;152f	7f 	 
	nop			;1530	00 	. 
l1531h:
	ex af,af'			;1531	08 	. 
	nop			;1532	00 	. 
	rst 38h			;1533	ff 	. 
	ld a,a			;1534	7f 	 
	ld a,(hl)			;1535	7e 	~ 
	ld a,h			;1536	7c 	| 
	ld a,b			;1537	78 	x 
	ld h,b			;1538	60 	` 
	nop			;1539	00 	. 
	inc d			;153a	14 	. 
	nop			;153b	00 	. 
	ld (bc),a			;153c	02 	. 
	inc b			;153d	04 	. 
	ex af,af'			;153e	08 	. 
	djnz l1561h		;153f	10 20 	.   
	nop			;1541	00 	. 
	dec c			;1542	0d 	. 
	nop			;1543	00 	. 
	ret po			;1544	e0 	. 
	rst 38h			;1545	ff 	. 
	ret p			;1546	f0 	. 
	add a,b			;1547	80 	. 
	nop			;1548	00 	. 
	jp m,l0000h		;1549	fa 00 00 	. . . 
	ld b,080h		;154c	06 80 	. . 
	ld d,l			;154e	55 	U 
	ld d,c			;154f	51 	Q 
	or b			;1550	b0 	. 
	or c			;1551	b1 	. 
	out (0c3h),a		;1552	d3 c3 	. . 
	out (0d9h),a		;1554	d3 d9 	. . 
	add a,(hl)			;1556	86 	. 
	rlca			;1557	07 	. 
	rra			;1558	1f 	. 
	rst 38h			;1559	ff 	. 
	sbc a,a			;155a	9f 	. 
	adc a,a			;155b	8f 	. 
	xor a			;155c	af 	. 
	rst 20h			;155d	e7 	. 
	cp l			;155e	bd 	. 
	sbc a,a			;155f	9f 	. 
	ld c,a			;1560	4f 	O 
l1561h:
	ld l,(hl)			;1561	6e 	n 
	ld (hl),03fh		;1562	36 3f 	6 ? 
	rst 38h			;1564	ff 	. 
	ld a,a			;1565	7f 	 
	call p,0fbf3h		;1566	f4 f3 fb 	. . . 
	ld sp,hl			;1569	f9 	. 
	rst 38h			;156a	ff 	. 
	defb 0fdh,07fh,0bfh	;illegal sequence		;156b	fd 7f bf 	.  . 
	ccf			;156e	3f 	? 
	rst 38h			;156f	ff 	. 
	ld a,(hl)			;1570	7e 	~ 
	ld a,a			;1571	7f 	 
	nop			;1572	00 	. 
	inc bc			;1573	03 	. 
	rst 38h			;1574	ff 	. 
	cp a			;1575	bf 	. 
	call pe,0c4ebh		;1576	ec eb c4 	. . . 
	di			;1579	f3 	. 
	ld sp,hl			;157a	f9 	. 
	nop			;157b	00 	. 
	ld bc,0e2ffh		;157c	01 ff e2 	. . . 
	ret p			;157f	f0 	. 
	cp a			;1580	bf 	. 
	rst 18h			;1581	df 	. 
	nop			;1582	00 	. 
	ld bc,0f0ffh		;1583	01 ff f0 	. . . 
	add a,b			;1586	80 	. 
	nop			;1587	00 	. 
	ld bc,0f000h		;1588	01 00 f0 	. . . 
	ret m			;158b	f8 	. 
	call m,l00feh		;158c	fc fe 00 	. . . 
	ld bc,0ffffh		;158f	01 ff ff 	. . . 
	rra			;1592	1f 	. 
	ld a,a			;1593	7f 	 
	ret nz			;1594	c0 	. 
	add a,b			;1595	80 	. 
	dec e			;1596	1d 	. 
	nop			;1597	00 	. 
	ld bc,l3effh		;1598	01 ff 3e 	. . > 
	ld a,(l0100h)		;159b	3a 00 01 	: . . 
	nop			;159e	00 	. 
	or a			;159f	b7 	. 
	rst 20h			;15a0	e7 	. 
	nop			;15a1	00 	. 
	ld bc,sub_00ffh		;15a2	01 ff 00 	. . . 
	ld bc,l0000h		;15a5	01 00 00 	. . . 
	inc b			;15a8	04 	. 
	add a,b			;15a9	80 	. 
	ld b,b			;15aa	40 	@ 
	rst 38h			;15ab	ff 	. 
	ret nz			;15ac	c0 	. 
	inc sp			;15ad	33 	3 
	dec de			;15ae	1b 	. 
	rst 30h			;15af	f7 	. 
	defb 0fdh,0fch,0ffh	;illegal sequence		;15b0	fd fc ff 	. . . 
	cp 07fh		;15b3	fe 7f 	.  
	add a,b			;15b5	80 	. 
	nop			;15b6	00 	. 
	ld b,0c0h		;15b7	06 c0 	. . 
	ld h,b			;15b9	60 	` 
	nop			;15ba	00 	. 
	inc bc			;15bb	03 	. 
	nop			;15bc	00 	. 
	nop			;15bd	00 	. 
	dec b			;15be	05 	. 
	add a,b			;15bf	80 	. 
	nop			;15c0	00 	. 
	inc bc			;15c1	03 	. 
	nop			;15c2	00 	. 
	djnz $+1		;15c3	10 ff 	. . 
	jr nz,$+26		;15c5	20 18 	  . 
	nop			;15c7	00 	. 
	ld bc,08000h		;15c8	01 00 80 	. . . 
	nop			;15cb	00 	. 
	ld bc,04000h		;15cc	01 00 40 	. . @ 
	jr nz,l15d1h		;15cf	20 00 	  . 
l15d1h:
	ld bc,l1000h		;15d1	01 00 10 	. . . 
	jr nz,$-46		;15d4	20 d0 	  . 
	nop			;15d6	00 	. 
	inc b			;15d7	04 	. 
	nop			;15d8	00 	. 
	rrca			;15d9	0f 	. 
	djnz l15dch		;15da	10 00 	. . 
l15dch:
	dec d			;15dc	15 	. 
	nop			;15dd	00 	. 
	call m,07e00h		;15de	fc 00 7e 	. . ~ 
	nop			;15e1	00 	. 
	rst 38h			;15e2	ff 	. 
	add a,b			;15e3	80 	. 
	nop			;15e4	00 	. 
	inc bc			;15e5	03 	. 
	ld b,b			;15e6	40 	@ 
	jr nz,l15e9h		;15e7	20 00 	  . 
l15e9h:
	djnz l15ebh		;15e9	10 00 	. . 
l15ebh:
	rst 0			;15eb	c7 	. 
	rst 20h			;15ec	e7 	. 
	and 0ech		;15ed	e6 ec 	. . 
	ld l,h			;15ef	6c 	l 
	rst 38h			;15f0	ff 	. 
	ld a,h			;15f1	7c 	| 
	ld (hl),h			;15f2	74 	t 
	nop			;15f3	00 	. 
	dec b			;15f4	05 	. 
	nop			;15f5	00 	. 
	rst 38h			;15f6	ff 	. 
	ld bc,l0100h		;15f7	01 00 01 	. . . 
	nop			;15fa	00 	. 
	rst 38h			;15fb	ff 	. 
	ld (hl),03ah		;15fc	36 3a 	6 : 
	dec de			;15fe	1b 	. 
	nop			;15ff	00 	. 
	inc bc			;1600	03 	. 
	dec e			;1601	1d 	. 
	ld a,0c0h		;1602	3e c0 	> . 
	nop			;1604	00 	. 
	rlca			;1605	07 	. 
	nop			;1606	00 	. 
	ccf			;1607	3f 	? 
	rlca			;1608	07 	. 
	ld bc,l0800h		;1609	01 00 08 	. . . 
	nop			;160c	00 	. 
	ld b,007h		;160d	06 07 	. . 
	add a,e			;160f	83 	. 
	add a,c			;1610	81 	. 
	pop bc			;1611	c1 	. 
	nop			;1612	00 	. 
	inc b			;1613	04 	. 
	nop			;1614	00 	. 
	add a,b			;1615	80 	. 
	ret m			;1616	f8 	. 
	cp 000h		;1617	fe 00 	. . 
	ld bc,0feffh		;1619	01 ff fe 	. . . 
	nop			;161c	00 	. 
	ld bc,0efffh		;161d	01 ff ef 	. . . 
	ld a,a			;1620	7f 	 
	dec de			;1621	1b 	. 
	add hl,bc			;1622	09 	. 
	dec b			;1623	05 	. 
	inc bc			;1624	03 	. 
	jr nc,l1627h		;1625	30 00 	0 . 
l1627h:
	dec b			;1627	05 	. 
	ret po			;1628	e0 	. 
	rst 38h			;1629	ff 	. 
	ret nz			;162a	c0 	. 
	ld bc,l03ffh		;162b	01 ff 03 	. . . 
	ld (bc),a			;162e	02 	. 
	ld b,004h		;162f	06 04 	. . 
	ex af,af'			;1631	08 	. 
	adc a,b			;1632	88 	. 
	add a,b			;1633	80 	. 
	nop			;1634	00 	. 
	inc bc			;1635	03 	. 
	nop			;1636	00 	. 
	jr l1675h		;1637	18 3c 	. < 
	ld a,h			;1639	7c 	| 
	ld a,(hl)			;163a	7e 	~ 
	ld (bc),a			;163b	02 	. 
	nop			;163c	00 	. 
	ld bc,l0400h		;163d	01 00 04 	. . . 
	nop			;1640	00 	. 
	ld bc,0ff00h		;1641	01 00 ff 	. . . 
	ex af,af'			;1644	08 	. 
	nop			;1645	00 	. 
	add hl,bc			;1646	09 	. 
	nop			;1647	00 	. 
	ld bc,l0400h		;1648	01 00 04 	. . . 
	nop			;164b	00 	. 
	ld e,03ch		;164c	1e 3c 	. < 
	rst 38h			;164e	ff 	. 
	ld a,(hl)			;164f	7e 	~ 
	ld bc,l0100h		;1650	01 00 01 	. . . 
	nop			;1653	00 	. 
	ex af,af'			;1654	08 	. 
	jr l16cfh		;1655	18 78 	. x 
	rst 38h			;1657	ff 	. 
	jr c,$+114		;1658	38 70 	8 p 
	add a,b			;165a	80 	. 
	ret po			;165b	e0 	. 
	ret m			;165c	f8 	. 
	ld a,(hl)			;165d	7e 	~ 
	cp a			;165e	bf 	. 
	nop			;165f	00 	. 
	inc bc			;1660	03 	. 
	rst 38h			;1661	ff 	. 
	ld bc,l03ffh		;1662	01 ff 03 	. . . 
	ld sp,l007dh		;1665	31 7d 00 	1 } . 
	ld bc,l3ffch+3		;1668	01 ff 3f 	. . ? 
	nop			;166b	00 	. 
	inc bc			;166c	03 	. 
	rst 38h			;166d	ff 	. 
	rst 28h			;166e	ef 	. 
	rst 18h			;166f	df 	. 
	cp a			;1670	bf 	. 
	cp c			;1671	b9 	. 
	or c			;1672	b1 	. 
	jr nz,l1675h		;1673	20 00 	  . 
l1675h:
	ld b,0ffh		;1675	06 ff 	. . 
	sbc a,(hl)			;1677	9e 	. 
	adc a,h			;1678	8c 	. 
	ret p			;1679	f0 	. 
	nop			;167a	00 	. 
	rlca			;167b	07 	. 
	rst 38h			;167c	ff 	. 
	ld a,a			;167d	7f 	 
	ccf			;167e	3f 	? 
	call c,sub_00eeh		;167f	dc ee 00 	. . . 
	ld b,0ffh		;1682	06 ff 	. . 
	rst 38h			;1684	ff 	. 
	cp (hl)			;1685	be 	. 
	inc a			;1686	3c 	< 
	dec e			;1687	1d 	. 
	dec c			;1688	0d 	. 
	ld bc,0ff3dh		;1689	01 3d ff 	. = . 
	ld a,a			;168c	7f 	 
	nop			;168d	00 	. 
	ld bc,0fdffh		;168e	01 ff fd 	. . . 
	ld sp,hl			;1691	f9 	. 
	ret po			;1692	e0 	. 
	ret nz			;1693	c0 	. 
	nop			;1694	00 	. 
	inc bc			;1695	03 	. 
	rst 38h			;1696	ff 	. 
	ei			;1697	fb 	. 
	rst 30h			;1698	f7 	. 
	rst 0			;1699	c7 	. 
	rlca			;169a	07 	. 
	inc bc			;169b	03 	. 
	jr nz,$+1		;169c	20 ff 	  . 
	djnz l16a0h		;169e	10 00 	. . 
l16a0h:
	inc bc			;16a0	03 	. 
	ex af,af'			;16a1	08 	. 
	rst 38h			;16a2	ff 	. 
	inc b			;16a3	04 	. 
	nop			;16a4	00 	. 
	dec b			;16a5	05 	. 
	rst 38h			;16a6	ff 	. 
	call m,sub_30f8h		;16a7	fc f8 30 	. . 0 
	inc b			;16aa	04 	. 
	nop			;16ab	00 	. 
	rlca			;16ac	07 	. 
	ld (bc),a			;16ad	02 	. 
	ld a,a			;16ae	7f 	 
	ld l,a			;16af	6f 	o 
	ld h,a			;16b0	67 	g 
	scf			;16b1	37 	7 
	ld (hl),032h		;16b2	36 32 	6 2 
	ld a,(0ff1bh)		;16b4	3a 1b ff 	: . . 
	ret m			;16b7	f8 	. 
	call po,060e0h		;16b8	e4 e0 60 	. . ` 
	and b			;16bb	a0 	. 
	ret po			;16bc	e0 	. 
	ld h,b			;16bd	60 	` 
	inc e			;16be	1c 	. 
	ex af,af'			;16bf	08 	. 
	ld c,006h		;16c0	0e 06 	. . 
	rst 38h			;16c2	ff 	. 
	inc bc			;16c3	03 	. 
	rst 38h			;16c4	ff 	. 
	ld bc,0d090h		;16c5	01 90 d0 	. . . 
	ld (hl),b			;16c8	70 	p 
	jr c,l16e7h		;16c9	38 1c 	8 . 
	rrca			;16cb	0f 	. 
	adc a,a			;16cc	8f 	. 
	rst 0			;16cd	c7 	. 
	nop			;16ce	00 	. 
l16cfh:
	djnz l16d1h		;16cf	10 00 	. . 
l16d1h:
	ld bc,0ff02h		;16d1	01 02 ff 	. . . 
	inc bc			;16d4	03 	. 
	ld bc,l0100h		;16d5	01 00 01 	. . . 
	nop			;16d8	00 	. 
	ret nz			;16d9	c0 	. 
	nop			;16da	00 	. 
	ld bc,sub_00ffh		;16db	01 ff 00 	. . . 
	ld bc,08000h		;16de	01 00 80 	. . . 
	rst 38h			;16e1	ff 	. 
	add a,c			;16e2	81 	. 
	inc bc			;16e3	03 	. 
	rlca			;16e4	07 	. 
	rra			;16e5	1f 	. 
	nop			;16e6	00 	. 
l16e7h:
	ld bc,0ffffh		;16e7	01 ff ff 	. . . 
	ld a,a			;16ea	7f 	 
	rst 38h			;16eb	ff 	. 
	ld a,(hl)			;16ec	7e 	~ 
	rst 38h			;16ed	ff 	. 
	ld a,h			;16ee	7c 	| 
	rst 38h			;16ef	ff 	. 
	ld sp,hl			;16f0	f9 	. 
	ld h,a			;16f1	67 	g 
	ld a,c			;16f2	79 	y 
	ld h,b			;16f3	60 	` 
	ld b,b			;16f4	40 	@ 
	ret nz			;16f5	c0 	. 
	call nz,09f8eh		;16f6	c4 8e 9f 	. . . 
	di			;16f9	f3 	. 
	rst 38h			;16fa	ff 	. 
	rst 30h			;16fb	f7 	. 
	rst 38h			;16fc	ff 	. 
	rst 28h			;16fd	ef 	. 
	call pe,0dcffh		;16fe	ec ff dc 	. . . 
	cp a			;1701	bf 	. 
	nop			;1702	00 	. 
	inc b			;1703	04 	. 
	rst 38h			;1704	ff 	. 
	ld a,(hl)			;1705	7e 	~ 
	inc a			;1706	3c 	< 
	jr c,l1731h		;1707	38 28 	8 ( 
	inc d			;1709	14 	. 
	adc a,b			;170a	88 	. 
	ld b,b			;170b	40 	@ 
	inc l			;170c	2c 	, 
	ld (0e162h),a		;170d	32 62 e1 	2 b . 
	nop			;1710	00 	. 
	ld bc,0c000h		;1711	01 00 c0 	. . . 
	cp b			;1714	b8 	. 
	ccf			;1715	3f 	? 
	jr $+1		;1716	18 ff 	. . 
	jr c,l178ah		;1718	38 70 	8 p 
	pop hl			;171a	e1 	. 
	pop af			;171b	f1 	. 
	ret p			;171c	f0 	. 
	ret nz			;171d	c0 	. 
	ld b,b			;171e	40 	@ 
	add a,b			;171f	80 	. 
	ld bc,sub_00ffh		;1720	01 ff 00 	. . . 
	ret nz			;1723	c0 	. 
	nop			;1724	00 	. 
	inc bc			;1725	03 	. 
	add a,b			;1726	80 	. 
	nop			;1727	00 	. 
	inc b			;1728	04 	. 
	nop			;1729	00 	. 
	inc bc			;172a	03 	. 
	inc e			;172b	1c 	. 
	ret po			;172c	e0 	. 
	nop			;172d	00 	. 
	inc b			;172e	04 	. 
	nop			;172f	00 	. 
	add a,b			;1730	80 	. 
l1731h:
	nop			;1731	00 	. 
	rlca			;1732	07 	. 
	nop			;1733	00 	. 
	add a,b			;1734	80 	. 
	ld b,b			;1735	40 	@ 
	jr nz,l1738h		;1736	20 00 	  . 
l1738h:
	inc bc			;1738	03 	. 
	djnz $+1		;1739	10 ff 	. . 
	jr nz,l173dh		;173b	20 00 	  . 
l173dh:
	inc de			;173d	13 	. 
	nop			;173e	00 	. 
	ret p			;173f	f0 	. 
	ex af,af'			;1740	08 	. 
	inc b			;1741	04 	. 
	rst 38h			;1742	ff 	. 
	ld (bc),a			;1743	02 	. 
	nop			;1744	00 	. 
	ex af,af'			;1745	08 	. 
	nop			;1746	00 	. 
	rst 38h			;1747	ff 	. 
	ld bc,l0600h		;1748	01 00 06 	. . . 
	nop			;174b	00 	. 
	pop af			;174c	f1 	. 
	ei			;174d	fb 	. 
	rst 38h			;174e	ff 	. 
	rst 38h			;174f	ff 	. 
	ld a,a			;1750	7f 	 
	rst 38h			;1751	ff 	. 
	ccf			;1752	3f 	? 
	ld a,(hl)			;1753	7e 	~ 
	adc a,a			;1754	8f 	. 
	rst 18h			;1755	df 	. 
	rst 38h			;1756	ff 	. 
	rst 38h			;1757	ff 	. 
	cp 0ffh		;1758	fe ff 	. . 
	call m,07effh		;175a	fc ff 7e 	. . ~ 
	ld a,a			;175d	7f 	 
	nop			;175e	00 	. 
	inc b			;175f	04 	. 
	rst 38h			;1760	ff 	. 
	ld a,a			;1761	7f 	 
	nop			;1762	00 	. 
	ld bc,07effh		;1763	01 ff 7e 	. . ~ 
sub_1766h:
	cp 000h		;1766	fe 00 	. . 
	dec b			;1768	05 	. 
	rst 38h			;1769	ff 	. 
	cp 001h		;176a	fe 01 	. . 
	inc bc			;176c	03 	. 
	rlca			;176d	07 	. 
	rst 38h			;176e	ff 	. 
	rrca			;176f	0f 	. 
	rlca			;1770	07 	. 
	rst 38h			;1771	ff 	. 
	nop			;1772	00 	. 
	add a,b			;1773	80 	. 
	ret nz			;1774	c0 	. 
	rst 38h			;1775	ff 	. 
	ret po			;1776	e0 	. 
	ret nz			;1777	c0 	. 
	nop			;1778	00 	. 
	ld b,000h		;1779	06 00 	. . 
	ld c,01fh		;177b	0e 1f 	. . 
	ccf			;177d	3f 	? 
	ld a,a			;177e	7f 	 
	ld a,(hl)			;177f	7e 	~ 
	ret nz			;1780	c0 	. 
	ret p			;1781	f0 	. 
	call m,07f7eh		;1782	fc 7e 7f 	. ~  
	ccf			;1785	3f 	? 
	rrca			;1786	0f 	. 
	inc bc			;1787	03 	. 
	nop			;1788	00 	. 
	nop			;1789	00 	. 
l178ah:
	nop			;178a	00 	. 
	nop			;178b	00 	. 
	nop			;178c	00 	. 
	nop			;178d	00 	. 
	nop			;178e	00 	. 
	nop			;178f	00 	. 
	nop			;1790	00 	. 
	nop			;1791	00 	. 
	djnz l17b2h		;1792	10 1e 	. . 
	djnz $+18		;1794	10 10 	. . 
	ld (l203dh),hl		;1796	22 3d 20 	" =   
	jr nz,l17c9h		;1799	20 2e 	  . 
	dec h			;179b	25 	% 
	inc (hl)			;179c	34 	4 
	inc (hl)			;179d	34 	4 
	call m,080e3h		;179e	fc e3 80 	. . . 
	add a,b			;17a1	80 	. 
	ret p			;17a2	f0 	. 
	out (0ech),a		;17a3	d3 ec 	. . 
	call nz,04040h		;17a5	c4 40 40 	. @ @ 
	ld a,a			;17a8	7f 	 
	ld b,a			;17a9	47 	G 
	nop			;17aa	00 	. 
	nop			;17ab	00 	. 
	nop			;17ac	00 	. 
	nop			;17ad	00 	. 
	nop			;17ae	00 	. 
	nop			;17af	00 	. 
	nop			;17b0	00 	. 
	nop			;17b1	00 	. 
l17b2h:
	nop			;17b2	00 	. 
	nop			;17b3	00 	. 
	nop			;17b4	00 	. 
	nop			;17b5	00 	. 
	nop			;17b6	00 	. 
	nop			;17b7	00 	. 
	nop			;17b8	00 	. 
	nop			;17b9	00 	. 
	ld a,b			;17ba	78 	x 
	and 07eh		;17bb	e6 7e 	. ~ 
	halt			;17bd	76 	v 
	ld a,h			;17be	7c 	| 
	jp 0637fh		;17bf	c3 7f 63 	.  c 
	halt			;17c2	76 	v 
	ld c,c			;17c3	49 	I 
	rst 38h			;17c4	ff 	. 
	jp (hl)			;17c5	e9 	. 
	ld (hl),a			;17c6	77 	w 
	ld c,b			;17c7	48 	H 
	rst 38h			;17c8	ff 	. 
l17c9h:
	ex de,hl			;17c9	eb 	. 
	nop			;17ca	00 	. 
	nop			;17cb	00 	. 
	nop			;17cc	00 	. 
	nop			;17cd	00 	. 
	nop			;17ce	00 	. 
	nop			;17cf	00 	. 
	nop			;17d0	00 	. 
	nop			;17d1	00 	. 
	nop			;17d2	00 	. 
	nop			;17d3	00 	. 
	nop			;17d4	00 	. 
	nop			;17d5	00 	. 
	nop			;17d6	00 	. 
	nop			;17d7	00 	. 
	nop			;17d8	00 	. 
	nop			;17d9	00 	. 
	nop			;17da	00 	. 
	nop			;17db	00 	. 
	nop			;17dc	00 	. 
	nop			;17dd	00 	. 
	nop			;17de	00 	. 
	nop			;17df	00 	. 
	nop			;17e0	00 	. 
	nop			;17e1	00 	. 
	nop			;17e2	00 	. 
	nop			;17e3	00 	. 
	nop			;17e4	00 	. 
	nop			;17e5	00 	. 
	add a,b			;17e6	80 	. 
	nop			;17e7	00 	. 
	add a,b			;17e8	80 	. 
	nop			;17e9	00 	. 
	jr nz,l180ch		;17ea	20 20 	    
	ccf			;17ec	3f 	? 
	cpl			;17ed	2f 	/ 
	ld a,a			;17ee	7f 	 
	ld e,a			;17ef	5f 	_ 
	ld a,b			;17f0	78 	x 
	ld e,a			;17f1	5f 	_ 
	ccf			;17f2	3f 	? 
	add hl,hl			;17f3	29 	) 
	ld sp,07f29h		;17f4	31 29 7f 	1 )  
	ld c,a			;17f7	4f 	O 
	ld a,c			;17f8	79 	y 
	ld e,a			;17f9	5f 	_ 
	ld a,a			;17fa	7f 	 
	ld b,(hl)			;17fb	46 	F 
	ld a,a			;17fc	7f 	 
	ld e,(hl)			;17fd	5e 	^ 
	ld a,e			;17fe	7b 	{ 
	ld e,d			;17ff	5a 	Z 
	ld a,a			;1800	7f 	 
	ld e,d			;1801	5a 	Z 
	daa			;1802	27 	' 
	inc h			;1803	24 	$ 
	daa			;1804	27 	' 
	inc h			;1805	24 	$ 
	inc bc			;1806	03 	. 
	inc bc			;1807	03 	. 
	inc bc			;1808	03 	. 
	inc bc			;1809	03 	. 
	rst 28h			;180a	ef 	. 
	sub b			;180b	90 	. 
l180ch:
	rst 38h			;180c	ff 	. 
	out (0dfh),a		;180d	d3 df 	. . 
	and c			;180f	a1 	. 
	rst 38h			;1810	ff 	. 
	rst 20h			;1811	e7 	. 
	rst 38h			;1812	ff 	. 
	ld (bc),a			;1813	02 	. 
	rst 38h			;1814	ff 	. 
	adc a,a			;1815	8f 	. 
	rst 38h			;1816	ff 	. 
	inc b			;1817	04 	. 
	rst 38h			;1818	ff 	. 
	rra			;1819	1f 	. 
	rst 38h			;181a	ff 	. 
	ld c,0ffh		;181b	0e ff 	. . 
	ccf			;181d	3f 	? 
	rst 30h			;181e	f7 	. 
	scf			;181f	37 	7 
	ei			;1820	fb 	. 
	or e			;1821	b3 	. 
	jp pe,0feaah		;1822	ea aa fe 	. . . 
	jp pe,05454h		;1825	ea 54 54 	. T T 
	ld d,h			;1828	54 	T 
	ld d,h			;1829	54 	T 
	ret nz			;182a	c0 	. 
	nop			;182b	00 	. 
	ret nz			;182c	c0 	. 
	nop			;182d	00 	. 
	ret nz			;182e	c0 	. 
	nop			;182f	00 	. 
	ret nz			;1830	c0 	. 
	add a,b			;1831	80 	. 
	ret p			;1832	f0 	. 
	nop			;1833	00 	. 
	ret p			;1834	f0 	. 
	add a,b			;1835	80 	. 
	call m,0fc00h		;1836	fc 00 fc 	. . . 
l1839h:
	ret p			;1839	f0 	. 
	cp 09ch		;183a	fe 9c 	. . 
	cp 09ch		;183c	fe 9c 	. . 
	ld (hl),d			;183e	72 	r 
	ld h,d			;183f	62 	b 
	ld (hl),d			;1840	72 	r 
	ld h,d			;1841	62 	b 
	jr l1854h		;1842	18 10 	. . 
	jr l1856h		;1844	18 10 	. . 
	ex af,af'			;1846	08 	. 
	ex af,af'			;1847	08 	. 
	ex af,af'			;1848	08 	. 
	ex af,af'			;1849	08 	. 
	nop			;184a	00 	. 
	nop			;184b	00 	. 
	nop			;184c	00 	. 
	nop			;184d	00 	. 
	nop			;184e	00 	. 
	nop			;184f	00 	. 
	nop			;1850	00 	. 
	nop			;1851	00 	. 
	djnz l1872h		;1852	10 1e 	. . 
l1854h:
	djnz l1866h		;1854	10 10 	. . 
l1856h:
	ld (l203dh),hl		;1856	22 3d 20 	" =   
	jr nz,l1889h		;1859	20 2e 	  . 
	ld hl,l3030h		;185b	21 30 30 	! 0 0 
	ld a,h			;185e	7c 	| 
	ld l,e			;185f	6b 	k 
	ld c,b			;1860	48 	H 
	ld c,b			;1861	48 	H 
	ret p			;1862	f0 	. 
	di			;1863	f3 	. 
	adc a,h			;1864	8c 	. 
	add a,h			;1865	84 	. 
l1866h:
	ld h,b			;1866	60 	` 
	ld b,b			;1867	40 	@ 
	ld a,a			;1868	7f 	 
	ld h,a			;1869	67 	g 
	rra			;186a	1f 	. 
	nop			;186b	00 	. 
	rra			;186c	1f 	. 
	nop			;186d	00 	. 
	ld a,a			;186e	7f 	 
	rlca			;186f	07 	. 
	ld a,a			;1870	7f 	 
	rra			;1871	1f 	. 
l1872h:
	ld a,a			;1872	7f 	 
	ex af,af'			;1873	08 	. 
	ld a,a			;1874	7f 	 
	ccf			;1875	3f 	? 
	call m,0ff13h		;1876	fc 13 ff 	. . . 
	dec sp			;1879	3b 	; 
	ld a,c			;187a	79 	y 
	or (hl)			;187b	b6 	. 
	ld a,a			;187c	7f 	 
	halt			;187d	76 	v 
	ld a,a			;187e	7f 	 
	ret nc			;187f	d0 	. 
	rra			;1880	1f 	. 
	ld e,b			;1881	58 	X 
	ld a,a			;1882	7f 	 
	ld d,b			;1883	50 	P 
	adc a,a			;1884	8f 	. 
	rst 18h			;1885	df 	. 
	ld a,a			;1886	7f 	 
	ld d,c			;1887	51 	Q 
	adc a,a			;1888	8f 	. 
l1889h:
	rst 18h			;1889	df 	. 
	inc e			;188a	1c 	. 
	ld (bc),a			;188b	02 	. 
	ld e,01ah		;188c	1e 1a 	. . 
	cp 002h		;188e	fe 02 	. . 
	cp 0c6h		;1890	fe c6 	. . 
	call m,0fc0ch		;1892	fc 0c fc 	. . . 
l1895h:
	inc e			;1895	1c 	. 
	ret m			;1896	f8 	. 
	nop			;1897	00 	. 
	ret m			;1898	f8 	. 
	jr c,$-6		;1899	38 f8 	8 . 
	jr l1895h		;189b	18 f8 	. . 
	ld a,b			;189d	78 	x 
	call pe,0ee22h		;189e	ec 22 ee 	. " . 
	jp pe,046feh		;18a1	ea fe 46 	. . F 
	cp 0f6h		;18a4	fe f6 	. . 
	rst 38h			;18a6	ff 	. 
	add a,b			;18a7	80 	. 
	rst 38h			;18a8	ff 	. 
	call c,04040h		;18a9	dc 40 40 	. @ @ 
	ld a,a			;18ac	7f 	 
	ld c,a			;18ad	4f 	O 
	ccf			;18ae	3f 	? 
	ccf			;18af	3f 	? 
	jr c,l18f1h		;18b0	38 3f 	8 ? 
	rra			;18b2	1f 	. 
	jr l18c5h		;18b3	18 10 	. . 
	jr l18c6h		;18b5	18 0f 	. . 
	rrca			;18b7	0f 	. 
	add hl,bc			;18b8	09 	. 
	rrca			;18b9	0f 	. 
	rlca			;18ba	07 	. 
	rlca			;18bb	07 	. 
	rlca			;18bc	07 	. 
	rlca			;18bd	07 	. 
	ld bc,l0101h		;18be	01 01 01 	. . . 
	ld bc,l0202h		;18c1	01 02 02 	. . . 
	inc bc			;18c4	03 	. 
l18c5h:
	ld (bc),a			;18c5	02 	. 
l18c6h:
	ld bc,l0101h		;18c6	01 01 01 	. . . 
	ld bc,0a0ffh		;18c9	01 ff a0 	. . . 
	rra			;18cc	1f 	. 
	or c			;18cd	b1 	. 
	rst 38h			;18ce	ff 	. 
	ld b,b			;18cf	40 	@ 
	ccf			;18d0	3f 	? 
	ld h,b			;18d1	60 	` 
	rst 38h			;18d2	ff 	. 
	ret nz			;18d3	c0 	. 
	ld a,a			;18d4	7f 	 
	di			;18d5	f3 	. 
	defb 0fdh,082h,0ffh	;illegal sequence		;18d6	fd 82 ff 	. . . 
	in a,(0ffh)		;18d9	db ff 	. . 
	ret nc			;18db	d0 	. 
	rst 38h			;18dc	ff 	. 
	ei			;18dd	fb 	. 
	ei			;18de	fb 	. 
	ld sp,hl			;18df	f9 	. 
	ld h,a			;18e0	67 	g 
	ld h,e			;18e1	63 	c 
	xor d			;18e2	aa 	. 
	xor d			;18e3	aa 	. 
	cp 0aah		;18e4	fe aa 	. . 
	ld d,h			;18e6	54 	T 
	ld d,h			;18e7	54 	T 
	ld d,h			;18e8	54 	T 
	ld d,h			;18e9	54 	T 
	rst 38h			;18ea	ff 	. 
	rlca			;18eb	07 	. 
	rst 38h			;18ec	ff 	. 
	cp a			;18ed	bf 	. 
	call m,0fc1ch		;18ee	fc 1c fc 	. . . 
l18f1h:
	ld a,h			;18f1	7c 	| 
	ret po			;18f2	e0 	. 
sub_18f3h:
	ld h,b			;18f3	60 	` 
	ret po			;18f4	e0 	. 
	ret po			;18f5	e0 	. 
	ret nz			;18f6	c0 	. 
	ld b,b			;18f7	40 	@ 
	ret nz			;18f8	c0 	. 
	ret nz			;18f9	c0 	. 
	ret nz			;18fa	c0 	. 
	ret nz			;18fb	c0 	. 
	ret nz			;18fc	c0 	. 
	ret nz			;18fd	c0 	. 
	add a,b			;18fe	80 	. 
	add a,b			;18ff	80 	. 
	add a,b			;1900	80 	. 
l1901h:
	add a,b			;1901	80 	. 
l1902h:
	nop			;1902	00 	. 
	nop			;1903	00 	. 
	nop			;1904	00 	. 
	nop			;1905	00 	. 
	nop			;1906	00 	. 
	nop			;1907	00 	. 
	nop			;1908	00 	. 
	nop			;1909	00 	. 
	nop			;190a	00 	. 
	nop			;190b	00 	. 
	nop			;190c	00 	. 
	nop			;190d	00 	. 
	nop			;190e	00 	. 
	nop			;190f	00 	. 
	nop			;1910	00 	. 
	nop			;1911	00 	. 
	djnz l1932h		;1912	10 1e 	. . 
	djnz l1926h		;1914	10 10 	. . 
	ld (l203dh),hl		;1916	22 3d 20 	" =   
	jr nz,l1949h		;1919	20 2e 	  . 
	ld hl,l3030h		;191b	21 30 30 	! 0 0 
	ld a,h			;191e	7c 	| 
	ld l,e			;191f	6b 	k 
	ld c,b			;1920	48 	H 
	ld c,b			;1921	48 	H 
	ret p			;1922	f0 	. 
	di			;1923	f3 	. 
	adc a,h			;1924	8c 	. 
	add a,h			;1925	84 	. 
l1926h:
	ld h,b			;1926	60 	` 
	ld b,b			;1927	40 	@ 
	ld a,a			;1928	7f 	 
	ld h,a			;1929	67 	g 
	nop			;192a	00 	. 
	nop			;192b	00 	. 
	nop			;192c	00 	. 
	nop			;192d	00 	. 
	nop			;192e	00 	. 
	nop			;192f	00 	. 
	nop			;1930	00 	. 
	nop			;1931	00 	. 
l1932h:
	nop			;1932	00 	. 
	nop			;1933	00 	. 
	nop			;1934	00 	. 
	nop			;1935	00 	. 
	nop			;1936	00 	. 
	nop			;1937	00 	. 
	nop			;1938	00 	. 
	nop			;1939	00 	. 
	ld a,(hl)			;193a	7e 	~ 
	pop de			;193b	d1 	. 
	ld a,a			;193c	7f 	 
	ld a,l			;193d	7d 	} 
	ld a,(hl)			;193e	7e 	~ 
l193fh:
	pop hl			;193f	e1 	. 
	ccf			;1940	3f 	? 
	ld a,c			;1941	79 	y 
	ld a,a			;1942	7f 	 
	ld h,b			;1943	60 	` 
	cp a			;1944	bf 	. 
	ret m			;1945	f8 	. 
	ld a,a			;1946	7f 	 
	ld h,b			;1947	60 	` 
	cp a			;1948	bf 	. 
l1949h:
	ret m			;1949	f8 	. 
	nop			;194a	00 	. 
	nop			;194b	00 	. 
	nop			;194c	00 	. 
	nop			;194d	00 	. 
	nop			;194e	00 	. 
	nop			;194f	00 	. 
	nop			;1950	00 	. 
	nop			;1951	00 	. 
	nop			;1952	00 	. 
	nop			;1953	00 	. 
	nop			;1954	00 	. 
	nop			;1955	00 	. 
	nop			;1956	00 	. 
	nop			;1957	00 	. 
	nop			;1958	00 	. 
	nop			;1959	00 	. 
	inc c			;195a	0c 	. 
	ld (bc),a			;195b	02 	. 
	ld c,00ah		;195c	0e 0a 	. . 
	ld a,(hl)			;195e	7e 	~ 
	add a,(hl)			;195f	86 	. 
	cp 0f6h		;1960	fe f6 	. . 
	ccf			;1962	3f 	? 
	ret nz			;1963	c0 	. 
	rst 38h			;1964	ff 	. 
	call m,047bfh		;1965	fc bf 47 	. . G 
	rst 38h			;1968	ff 	. 
	ld a,a			;1969	7f 	 
	ld b,b			;196a	40 	@ 
	ld b,b			;196b	40 	@ 
	ld a,a			;196c	7f 	 
	ld c,a			;196d	4f 	O 
	ccf			;196e	3f 	? 
	ccf			;196f	3f 	? 
	jr c,l19b1h		;1970	38 3f 	8 ? 
	ccf			;1972	3f 	? 
l1973h:
	jr z,$+50		;1973	28 30 	( 0 
	jr z,$+65		;1975	28 3f 	( ? 
l1977h:
	cpl			;1977	2f 	/ 
	add hl,sp			;1978	39 	9 
	ccf			;1979	3f 	? 
	ld a,a			;197a	7f 	 
	ld b,(hl)			;197b	46 	F 
	ld a,a			;197c	7f 	 
	ld e,a			;197d	5f 	_ 
	rst 38h			;197e	ff 	. 
	sbc a,e			;197f	9b 	. 
	rst 38h			;1980	ff 	. 
	cp a			;1981	bf 	. 
	ld h,(hl)			;1982	66 	f 
	ld h,(hl)			;1983	66 	f 
	ld h,a			;1984	67 	g 
	ld h,(hl)			;1985	66 	f 
	ld bc,l0101h		;1986	01 01 01 	. . . 
	ld bc,0b0ffh		;1989	01 ff b0 	. . . 
	rra			;198c	1f 	. 
	cp h			;198d	bc 	. 
	rst 38h			;198e	ff 	. 
	ld d,b			;198f	50 	P 
	ccf			;1990	3f 	? 
	ld a,h			;1991	7c 	| 
	rst 38h			;1992	ff 	. 
	ret z			;1993	c8 	. 
	ld a,a			;1994	7f 	 
l1995h:
	cp 0ffh		;1995	fe ff 	. . 
	add a,h			;1997	84 	. 
	rst 38h			;1998	ff 	. 
	rst 18h			;1999	df 	. 
	rst 38h			;199a	ff 	. 
	ld d,e			;199b	53 	S 
	rst 38h			;199c	ff 	. 
	rst 38h			;199d	ff 	. 
	ei			;199e	fb 	. 
	ei			;199f	fb 	. 
	ld h,a			;19a0	67 	g 
l19a1h:
	ld h,e			;19a1	63 	c 
	xor d			;19a2	aa 	. 
	xor d			;19a3	aa 	. 
	cp 0aah		;19a4	fe aa 	. . 
	ld d,h			;19a6	54 	T 
	ld d,h			;19a7	54 	T 
	ld d,h			;19a8	54 	T 
l19a9h:
	ld d,h			;19a9	54 	T 
	sbc a,h			;19aa	9c 	. 
	ld l,h			;19ab	6c 	l 
	call m,0d07ch		;19ac	fc 7c d0 	. | . 
	jr nc,l19a1h		;19af	30 f0 	0 . 
l19b1h:
	jr nc,l1973h		;19b1	30 c0 	0 . 
	jr nz,l1995h		;19b3	20 e0 	  . 
	jr nz,l1977h		;19b5	20 c0 	  . 
	jr nc,l19a9h		;19b7	30 f0 	0 . 
	or b			;19b9	b0 	. 
	ret po			;19ba	e0 	. 
	djnz $-14		;19bb	10 f0 	. . 
l19bdh:
	ret nc			;19bd	d0 	. 
	ret p			;19be	f0 	. 
	ret z			;19bf	c8 	. 
	ret m			;19c0	f8 	. 
	ret pe			;19c1	e8 	. 
	jr c,$+54		;19c2	38 34 	8 4 
	inc a			;19c4	3c 	< 
	inc (hl)			;19c5	34 	4 
	inc c			;19c6	0c 	. 
	inc c			;19c7	0c 	. 
	inc c			;19c8	0c 	. 
	inc c			;19c9	0c 	. 
	jr nz,l19ech		;19ca	20 20 	    
	inc a			;19cc	3c 	< 
	jr nz,l1a3fh		;19cd	20 70 	  p 
	ld b,b			;19cf	40 	@ 
	ld a,(hl)			;19d0	7e 	~ 
	ld a,b			;19d1	78 	x 
	ld h,b			;19d2	60 	` 
	ld b,b			;19d3	40 	@ 
	ld a,(hl)			;19d4	7e 	~ 
	ld a,b			;19d5	78 	x 
	pop hl			;19d6	e1 	. 
l19d7h:
	add a,b			;19d7	80 	. 
	rst 38h			;19d8	ff 	. 
	defb 0fdh,0f1h,080h	;illegal sequence		;19d9	fd f1 80 	. . . 
	rst 38h			;19dc	ff 	. 
	ld sp,hl			;19dd	f9 	. 
	rst 38h			;19de	ff 	. 
	add a,c			;19df	81 	. 
	rst 38h			;19e0	ff 	. 
	rst 38h			;19e1	ff 	. 
	cp 0c2h		;19e2	fe c2 	. . 
	cp 0feh		;19e4	fe fe 	. . 
	ld a,h			;19e6	7c 	| 
	ld a,h			;19e7	7c 	| 
	ld a,h			;19e8	7c 	| 
	ld a,h			;19e9	7c 	| 
	inc l			;19ea	2c 	, 
	inc l			;19eb	2c 	, 
l19ech:
	ld (l1a20h),a		;19ec	32 20 1a 	2   . 
	ld a,(de)			;19ef	1a 	. 
	dec e			;19f0	1d 	. 
	jr l1a01h		;19f1	18 0e 	. . 
	ex af,af'			;19f3	08 	. 
	add hl,bc			;19f4	09 	. 
	ex af,af'			;19f5	08 	. 
	rra			;19f6	1f 	. 
	djnz l1a09h		;19f7	10 10 	. . 
	djnz l1a1ah		;19f9	10 1f 	. . 
	ld (de),a			;19fb	12 	. 
	ld (de),a			;19fc	12 	. 
	ld (de),a			;19fd	12 	. 
	ld c,008h		;19fe	0e 08 	. . 
	add hl,bc			;1a00	09 	. 
l1a01h:
	ex af,af'			;1a01	08 	. 
	ld b,006h		;1a02	06 06 	. . 
	rlca			;1a04	07 	. 
	ld b,047h		;1a05	06 47 	. G 
	ld h,l			;1a07	65 	e 
	ld e,a			;1a08	5f 	_ 
l1a09h:
	ld e,a			;1a09	5f 	_ 
	jr $+26		;1a0a	18 18 	. . 
	inc h			;1a0c	24 	$ 
	nop			;1a0d	00 	. 
	xor h			;1a0e	ac 	. 
	xor h			;1a0f	ac 	. 
	call c,sub_308ch		;1a10	dc 8c 30 	. . 0 
	nop			;1a13	00 	. 
	ret nz			;1a14	c0 	. 
	nop			;1a15	00 	. 
	ret m			;1a16	f8 	. 
	nop			;1a17	00 	. 
	add a,b			;1a18	80 	. 
	add a,b			;1a19	80 	. 
l1a1ah:
	ld a,b			;1a1a	78 	x 
	jr nz,l19bdh		;1a1b	20 a0 	  . 
	jr nz,l19d7h		;1a1d	20 b8 	  . 
	adc a,b			;1a1f	88 	. 
l1a20h:
	ld c,b			;1a20	48 	H 
	ex af,af'			;1a21	08 	. 
	or b			;1a22	b0 	. 
	jr nc,l1a95h		;1a23	30 70 	0 p 
	jr nc,$+114		;1a25	30 70 	0 p 
	ld d,(hl)			;1a27	56 	V 
	ret m			;1a28	f8 	. 
	ld a,b			;1a29	78 	x 
	sbc a,088h		;1a2a	de 88 	. . 
	rst 38h			;1a2c	ff 	. 
	rst 38h			;1a2d	ff 	. 
	call c,0ff88h		;1a2e	dc 88 ff 	. . . 
	rst 38h			;1a31	ff 	. 
	sbc a,098h		;1a32	de 98 	. . 
	rst 38h			;1a34	ff 	. 
	rst 38h			;1a35	ff 	. 
	rst 28h			;1a36	ef 	. 
	adc a,h			;1a37	8c 	. 
	rst 28h			;1a38	ef 	. 
	rst 28h			;1a39	ef 	. 
	ex de,hl			;1a3a	eb 	. 
	xor d			;1a3b	aa 	. 
	rst 28h			;1a3c	ef 	. 
	rst 28h			;1a3d	ef 	. 
	ld (hl),c			;1a3e	71 	q 
l1a3fh:
	ld (hl),c			;1a3f	71 	q 
	ld l,a			;1a40	6f 	o 
	ld h,a			;1a41	67 	g 
	ld d,014h		;1a42	16 14 	. . 
	rra			;1a44	1f 	. 
	rla			;1a45	17 	. 
	dec bc			;1a46	0b 	. 
	dec bc			;1a47	0b 	. 
	dec bc			;1a48	0b 	. 
	dec bc			;1a49	0b 	. 
	sbc a,b			;1a4a	98 	. 
	add a,d			;1a4b	82 	. 
	defb 0fdh,0fdh,01ch	;illegal sequence		;1a4c	fd fd 1c 	. . . 
	ret z			;1a4f	c8 	. 
	ccf			;1a50	3f 	? 
	ccf			;1a51	3f 	? 
	ld (hl),084h		;1a52	36 84 	6 . 
	ld (hl),a			;1a54	77 	w 
	ld (hl),a			;1a55	77 	w 
	ld (hl),a			;1a56	77 	w 
	inc d			;1a57	14 	. 
	rst 30h			;1a58	f7 	. 
	rst 30h			;1a59	f7 	. 
	ex (sp),hl			;1a5a	e3 	. 
	ld (0f3f3h),hl		;1a5b	22 f3 f3 	" . . 
	push bc			;1a5e	c5 	. 
	push bc			;1a5f	c5 	. 
	ld sp,hl			;1a60	f9 	. 
	pop af			;1a61	f1 	. 
	or h			;1a62	b4 	. 
	inc d			;1a63	14 	. 
	call m,0e8f4h		;1a64	fc f4 e8 	. . . 
	ret pe			;1a67	e8 	. 
	ret pe			;1a68	e8 	. 
	ret pe			;1a69	e8 	. 
	inc l			;1a6a	2c 	, 
	inc l			;1a6b	2c 	, 
	ld (l1a20h),a		;1a6c	32 20 1a 	2   . 
	ld a,(de)			;1a6f	1a 	. 
	dec e			;1a70	1d 	. 
	jr l1a81h		;1a71	18 0e 	. . 
	jr z,l1a7eh		;1a73	28 09 	( . 
	ex af,af'			;1a75	08 	. 
	rra			;1a76	1f 	. 
	ld d,d			;1a77	52 	R 
	ld (09f32h),a		;1a78	32 32 9f 	2 2 . 
	add a,b			;1a7b	80 	. 
	ret p			;1a7c	f0 	. 
	ret p			;1a7d	f0 	. 
l1a7eh:
	sbc a,088h		;1a7e	de 88 	. . 
	ld sp,hl			;1a80	f9 	. 
l1a81h:
	ret m			;1a81	f8 	. 
	sbc a,08eh		;1a82	de 8e 	. . 
	rst 38h			;1a84	ff 	. 
	cp 0dfh		;1a85	fe df 	. . 
	adc a,l			;1a87	8d 	. 
	rst 38h			;1a88	ff 	. 
	rst 38h			;1a89	ff 	. 
	jr $+26		;1a8a	18 18 	. . 
	inc h			;1a8c	24 	$ 
	nop			;1a8d	00 	. 
	xor h			;1a8e	ac 	. 
	xor h			;1a8f	ac 	. 
	call c,sub_348ch		;1a90	dc 8c 34 	. . 4 
	ld b,0c4h		;1a93	06 c4 	. . 
l1a95h:
	inc b			;1a95	04 	. 
	call m,0a625h		;1a96	fc 25 a6 	. % . 
	and (hl)			;1a99	a6 	. 
	ld a,h			;1a9a	7c 	| 
	nop			;1a9b	00 	. 
	add a,a			;1a9c	87 	. 
	rlca			;1a9d	07 	. 
	cp l			;1a9e	bd 	. 
	adc a,b			;1a9f	88 	. 
	ld c,a			;1aa0	4f 	O 
	rrca			;1aa1	0f 	. 
	cp c			;1aa2	b9 	. 
	jr nc,l1b24h		;1aa3	30 7f 	0  
	ccf			;1aa5	3f 	? 
	ld a,c			;1aa6	79 	y 
	ld d,b			;1aa7	50 	P 
	rst 38h			;1aa8	ff 	. 
	ld a,a			;1aa9	7f 	 
	cp 088h		;1aaa	fe 88 	. . 
	rst 38h			;1aac	ff 	. 
	rst 38h			;1aad	ff 	. 
	ld a,h			;1aae	7c 	| 
	ld c,b			;1aaf	48 	H 
	ld a,a			;1ab0	7f 	 
	ld a,a			;1ab1	7f 	 
	ld a,038h		;1ab2	3e 38 	> 8 
	ccf			;1ab4	3f 	? 
	ccf			;1ab5	3f 	? 
	rla			;1ab6	17 	. 
	inc d			;1ab7	14 	. 
	rra			;1ab8	1f 	. 
	rra			;1ab9	1f 	. 
	inc de			;1aba	13 	. 
	ld (de),a			;1abb	12 	. 
	rra			;1abc	1f 	. 
	rra			;1abd	1f 	. 
	ld l,l			;1abe	6d 	m 
	ld l,l			;1abf	6d 	m 
	ld e,l			;1ac0	5d 	] 
	ld c,l			;1ac1	4d 	M 
	ld h,024h		;1ac2	26 24 	& $ 
	scf			;1ac4	37 	7 
	daa			;1ac5	27 	' 
	inc de			;1ac6	13 	. 
	inc de			;1ac7	13 	. 
	inc de			;1ac8	13 	. 
	inc de			;1ac9	13 	. 
	sbc a,a			;1aca	9f 	. 
	add a,b			;1acb	80 	. 
	rst 38h			;1acc	ff 	. 
	rst 38h			;1acd	ff 	. 
	rra			;1ace	1f 	. 
	ret			;1acf	c9 	. 
	ccf			;1ad0	3f 	? 
l1ad1h:
	ccf			;1ad1	3f 	? 
	ld (hl),086h		;1ad2	36 86 	6 . 
	halt			;1ad4	76 	v 
l1ad5h:
	halt			;1ad5	76 	v 
	ld (hl),b			;1ad6	70 	p 
	djnz l1ad1h		;1ad7	10 f8 	. . 
	ret m			;1ad9	f8 	. 
	ret po			;1ada	e0 	. 
	jr nz,l1ad5h		;1adb	20 f8 	  . 
	ret m			;1add	f8 	. 
	jp c,0dcdah		;1ade	da da dc 	. . . 
	ret c			;1ae1	d8 	. 
	xor d			;1ae2	aa 	. 
	ld a,(bc)			;1ae3	0a 	. 
	xor 0eah		;1ae4	ee ea 	. . 
	call po,0e4e4h		;1ae6	e4 e4 e4 	. . . 
	call po,sub_0406h		;1ae9	e4 06 04 	. . . 
	rlca			;1aec	07 	. 
	rlca			;1aed	07 	. 
	inc bc			;1aee	03 	. 
	inc bc			;1aef	03 	. 
	inc bc			;1af0	03 	. 
	inc bc			;1af1	03 	. 
	ld h,e			;1af2	63 	c 
	ld h,d			;1af3	62 	b 
	ld b,e			;1af4	43 	C 
	ld b,e			;1af5	43 	C 
	rst 0			;1af6	c7 	. 
	call nz,09fbfh		;1af7	c4 bf 9f 	. . . 
	ld l,028h		;1afa	2e 28 	. ( 
	ccf			;1afc	3f 	? 
	ccf			;1afd	3f 	? 
	inc e			;1afe	1c 	. 
	jr l1b20h		;1aff	18 1f 	. . 
	rra			;1b01	1f 	. 
	ccf			;1b02	3f 	? 
	add hl,hl			;1b03	29 	) 
	ccf			;1b04	3f 	? 
	ccf			;1b05	3f 	? 
	ld e,(hl)			;1b06	5e 	^ 
	ld c,(hl)			;1b07	4e 	N 
	ld a,a			;1b08	7f 	 
	ld a,(hl)			;1b09	7e 	~ 
	xor b			;1b0a	a8 	. 
	ex af,af'			;1b0b	08 	. 
	call pe,0cae8h		;1b0c	ec e8 ca 	. . . 
	jp z,0c8cch		;1b0f	ca cc c8 	. . . 
	and 026h		;1b12	e6 26 	. & 
	cp 0feh		;1b14	fe fe 	. . 
	ld (hl),b			;1b16	70 	p 
	djnz $-6		;1b17	10 f8 	. . 
	ret m			;1b19	f8 	. 
	jr c,$-118		;1b1a	38 88 	8 . 
	ld a,b			;1b1c	78 	x 
	ld a,b			;1b1d	78 	x 
	inc e			;1b1e	1c 	. 
	ret z			;1b1f	c8 	. 
l1b20h:
	inc a			;1b20	3c 	< 
	inc a			;1b21	3c 	< 
	ld e,(hl)			;1b22	5e 	^ 
	ld b,b			;1b23	40 	@ 
l1b24h:
	cp 07eh		;1b24	fe 7e 	. ~ 
	cp c			;1b26	b9 	. 
	jr nc,$+1		;1b27	30 ff 	0 . 
	ccf			;1b29	3f 	? 
	defb 0ddh,08ch	;adc a,ixh		;1b2a	dd 8c 	. . 
	rst 38h			;1b2c	ff 	. 
	call m,089dfh		;1b2d	fc df 89 	. . . 
	ret m			;1b30	f8 	. 
	ret m			;1b31	f8 	. 
	ld e,a			;1b32	5f 	_ 
	ld (hl),h			;1b33	74 	t 
	ld d,h			;1b34	54 	T 
	ld d,h			;1b35	54 	T 
	ld e,a			;1b36	5f 	_ 
	ld d,b			;1b37	50 	P 
	ld (hl),b			;1b38	70 	p 
	ld (hl),b			;1b39	70 	p 
	ld l,028h		;1b3a	2e 28 	. ( 
	add hl,hl			;1b3c	29 	) 
	jr z,l1b89h		;1b3d	28 4a 	( J 
	ld c,d			;1b3f	4a 	J 
	ld l,l			;1b40	6d 	m 
	ld c,b			;1b41	48 	H 
	cpl			;1b42	2f 	/ 
	cpl			;1b43	2f 	/ 
	inc sp			;1b44	33 	3 
	inc hl			;1b45	23 	# 
	inc e			;1b46	1c 	. 
	inc e			;1b47	1c 	. 
	inc e			;1b48	1c 	. 
	inc e			;1b49	1c 	. 
	exx			;1b4a	d9 	. 
	djnz $+1		;1b4b	10 ff 	. . 
	sbc a,a			;1b4d	9f 	. 
	defb 0fdh,048h,08fh	;illegal sequence		;1b4e	fd 48 8f 	. H . 
	rrca			;1b51	0f 	. 
	defb 0fdh,087h,005h	;illegal sequence		;1b52	fd 87 05 	. . . 
	dec b			;1b55	05 	. 
	call m,09614h		;1b56	fc 14 96 	. . . 
	sub (hl)			;1b59	96 	. 
	ld a,(0ca0ah)		;1b5a	3a 0a ca 	: . . 
	ld a,(bc)			;1b5d	0a 	. 
	and h			;1b5e	a4 	. 
	and h			;1b5f	a4 	. 
	sub 084h		;1b60	d6 84 	. . 
	ld a,d			;1b62	7a 	z 
	ld a,d			;1b63	7a 	z 
	ld h,(hl)			;1b64	66 	f 
	ld h,d			;1b65	62 	b 
	inc e			;1b66	1c 	. 
	inc e			;1b67	1c 	. 
	inc e			;1b68	1c 	. 
	inc e			;1b69	1c 	. 
	ld a,h			;1b6a	7c 	| 
	nop			;1b6b	00 	. 
	dec b			;1b6c	05 	. 
	adc a,07ch		;1b6d	ce 7c 	. | 
	nop			;1b6f	00 	. 
	ld bc,07800h		;1b70	01 00 78 	. . x 
	nop			;1b73	00 	. 
	dec b			;1b74	05 	. 
	jr c,l1bf3h		;1b75	38 7c 	8 | 
	nop			;1b77	00 	. 
	ld bc,07c00h		;1b78	01 00 7c 	. . | 
	rst 38h			;1b7b	ff 	. 
	adc a,01ch		;1b7c	ce 1c 	. . 
	jr c,$+114		;1b7e	38 70 	8 p 
	cp 000h		;1b80	fe 00 	. . 
	ld bc,07c00h		;1b82	01 00 7c 	. . | 
	rst 38h			;1b85	ff 	. 
	adc a,01ch		;1b86	ce 1c 	. . 
	rst 38h			;1b88	ff 	. 
l1b89h:
	adc a,07ch		;1b89	ce 7c 	. | 
	nop			;1b8b	00 	. 
	ld bc,l0c00h		;1b8c	01 00 0c 	. . . 
	inc e			;1b8f	1c 	. 
	inc a			;1b90	3c 	< 
	ld l,h			;1b91	6c 	l 
	call z,sub_0cfeh		;1b92	cc fe 0c 	. . . 
	nop			;1b95	00 	. 
	ld bc,0fc00h		;1b96	01 00 fc 	. . . 
	ret po			;1b99	e0 	. 
	call m,l0effh		;1b9a	fc ff 0e 	. . . 
	adc a,07ch		;1b9d	ce 7c 	. | 
	nop			;1b9f	00 	. 
	ld bc,07c00h		;1ba0	01 00 7c 	. . | 
	ret nz			;1ba3	c0 	. 
	call m,l0300h		;1ba4	fc 00 03 	. . . 
	adc a,07ch		;1ba7	ce 7c 	. | 
	nop			;1ba9	00 	. 
	ld bc,0fe00h		;1baa	01 00 fe 	. . . 
	add a,0ceh		;1bad	c6 ce 	. . 
	inc e			;1baf	1c 	. 
	nop			;1bb0	00 	. 
	inc bc			;1bb1	03 	. 
	jr l1bb4h		;1bb2	18 00 	. . 
l1bb4h:
	ld bc,07c00h		;1bb4	01 00 7c 	. . | 
	rst 38h			;1bb7	ff 	. 
	adc a,07ch		;1bb8	ce 7c 	. | 
	rst 38h			;1bba	ff 	. 
	adc a,07ch		;1bbb	ce 7c 	. | 
	nop			;1bbd	00 	. 
	ld bc,07c00h		;1bbe	01 00 7c 	. . | 
	nop			;1bc1	00 	. 
	inc bc			;1bc2	03 	. 
	adc a,07eh		;1bc3	ce 7e 	. ~ 
	ld c,07ch		;1bc5	0e 7c 	. | 
	nop			;1bc7	00 	. 
	ld bc,l0000h		;1bc8	01 00 00 	. . . 
	ld b,0e6h		;1bcb	06 e6 	. . 
	ld a,h			;1bcd	7c 	| 
	nop			;1bce	00 	. 
	ld bc,0fc00h		;1bcf	01 00 fc 	. . . 
	nop			;1bd2	00 	. 
	inc bc			;1bd3	03 	. 
	and 0fch		;1bd4	e6 fc 	. . 
	rst 38h			;1bd6	ff 	. 
	ret po			;1bd7	e0 	. 
	nop			;1bd8	00 	. 
	ld bc,l0000h		;1bd9	01 00 00 	. . . 
	inc bc			;1bdc	03 	. 
	and 0feh		;1bdd	e6 fe 	. . 
	nop			;1bdf	00 	. 
	inc bc			;1be0	03 	. 
	and 000h		;1be1	e6 00 	. . 
	ld bc,l0000h		;1be3	01 00 00 	. . . 
	rlca			;1be6	07 	. 
	jr c,l1be9h		;1be7	38 00 	8 . 
l1be9h:
	ld bc,07c00h		;1be9	01 00 7c 	. . | 
	rst 38h			;1bec	ff 	. 
	and 0e0h		;1bed	e6 e0 	. . 
	xor 0e6h		;1bef	ee e6 	. . 
	ld a,h			;1bf1	7c 	| 
	nop			;1bf2	00 	. 
l1bf3h:
	ld bc,0fc00h		;1bf3	01 00 fc 	. . . 
	rst 38h			;1bf6	ff 	. 
	and 0fch		;1bf7	e6 fc 	. . 
	rst 38h			;1bf9	ff 	. 
	and 0fch		;1bfa	e6 fc 	. . 
	nop			;1bfc	00 	. 
	ld bc,07c00h		;1bfd	01 00 7c 	. . | 
	rst 38h			;1c00	ff 	. 
	xor 0e0h		;1c01	ee e0 	. . 
	rst 38h			;1c03	ff 	. 
	xor 07ch		;1c04	ee 7c 	. | 
	nop			;1c06	00 	. 
	ld bc,0fc00h		;1c07	01 00 fc 	. . . 
	nop			;1c0a	00 	. 
	dec b			;1c0b	05 	. 
	and 0fch		;1c0c	e6 fc 	. . 
	nop			;1c0e	00 	. 
	ld bc,0fe00h		;1c0f	01 00 fe 	. . . 
	rst 38h			;1c12	ff 	. 
	ret po			;1c13	e0 	. 
	call m,0e0ffh		;1c14	fc ff e0 	. . . 
	cp 000h		;1c17	fe 00 	. . 
	ld bc,0fe00h		;1c19	01 00 fe 	. . . 
	rst 38h			;1c1c	ff 	. 
	ret po			;1c1d	e0 	. 
	call m,l0300h		;1c1e	fc 00 03 	. . . 
	ret po			;1c21	e0 	. 
	nop			;1c22	00 	. 
	ld bc,l3800h		;1c23	01 00 38 	. . 8 
	ld h,h			;1c26	64 	d 
	rst 38h			;1c27	ff 	. 
	and 0feh		;1c28	e6 fe 	. . 
	rst 38h			;1c2a	ff 	. 
	and 000h		;1c2b	e6 00 	. . 
	ld bc,0c600h		;1c2d	01 00 c6 	. . . 
	xor 07ch		;1c30	ee 7c 	. | 
	jr c,l1cb0h		;1c32	38 7c 	8 | 
	xor 0c6h		;1c34	ee c6 	. . 
	nop			;1c36	00 	. 
	ld bc,0ff00h		;1c37	01 00 ff 	. . . 
	add a,0feh		;1c3a	c6 fe 	. . 
	ld a,h			;1c3c	7c 	| 
	nop			;1c3d	00 	. 
	inc bc			;1c3e	03 	. 
	jr c,l1c41h		;1c3f	38 00 	8 . 
l1c41h:
	ld bc,l0000h		;1c41	01 00 00 	. . . 
	inc b			;1c44	04 	. 
	ld c,0ffh		;1c45	0e ff 	. . 
	adc a,07ch		;1c47	ce 7c 	. | 
	nop			;1c49	00 	. 
	ld bc,0e000h		;1c4a	01 00 e0 	. . . 
	and 0ech		;1c4d	e6 ec 	. . 
	rst 38h			;1c4f	ff 	. 
	ret m			;1c50	f8 	. 
	call pe,000e6h		;1c51	ec e6 00 	. . . 
	ld bc,l0000h		;1c54	01 00 00 	. . . 
	ld b,0e0h		;1c57	06 e0 	. . 
	cp 000h		;1c59	fe 00 	. . 
	ld bc,06c00h		;1c5b	01 00 6c 	. . l 
	cp 000h		;1c5e	fe 00 	. . 
	dec b			;1c60	05 	. 
	sub 000h		;1c61	d6 00 	. . 
	ld bc,0c600h		;1c63	01 00 c6 	. . . 
	and 0f6h		;1c66	e6 f6 	. . 
	cp 0eeh		;1c68	fe ee 	. . 
	and 0e2h		;1c6a	e6 e2 	. . 
	nop			;1c6c	00 	. 
	ld bc,07c00h		;1c6d	01 00 7c 	. . | 
	nop			;1c70	00 	. 
	dec b			;1c71	05 	. 
	and 07ch		;1c72	e6 7c 	. | 
	nop			;1c74	00 	. 
	ld bc,0ff00h		;1c75	01 00 ff 	. . . 
	cp 01ch		;1c78	fe 1c 	. . 
	jr c,l1cech		;1c7a	38 70 	8 p 
	rst 38h			;1c7c	ff 	. 
	cp 000h		;1c7d	fe 00 	. . 
	ld bc,07c00h		;1c7f	01 00 7c 	. . | 
	nop			;1c82	00 	. 
	inc bc			;1c83	03 	. 
	add a,0f6h		;1c84	c6 f6 	. . 
	adc a,07ch		;1c86	ce 7c 	. | 
	nop			;1c88	00 	. 
	ld bc,0fc00h		;1c89	01 00 fc 	. . . 
	nop			;1c8c	00 	. 
	inc bc			;1c8d	03 	. 
	and 0fch		;1c8e	e6 fc 	. . 
	rst 38h			;1c90	ff 	. 
	and 000h		;1c91	e6 00 	. . 
	ld bc,07c00h		;1c93	01 00 7c 	. . | 
	and 0e0h		;1c96	e6 e0 	. . 
	ld a,h			;1c98	7c 	| 
	ld b,0e6h		;1c99	06 e6 	. . 
	ld a,h			;1c9b	7c 	| 
	nop			;1c9c	00 	. 
	ld bc,0ff00h		;1c9d	01 00 ff 	. . . 
	cp 000h		;1ca0	fe 00 	. . 
	dec b			;1ca2	05 	. 
	jr c,l1ca5h		;1ca3	38 00 	8 . 
l1ca5h:
	ld bc,l0000h		;1ca5	01 00 00 	. . . 
	dec b			;1ca8	05 	. 
	sub 0feh		;1ca9	d6 fe 	. . 
	ld l,h			;1cab	6c 	l 
	nop			;1cac	00 	. 
	ld bc,l0000h		;1cad	01 00 00 	. . . 
l1cb0h:
	dec b			;1cb0	05 	. 
	add a,06ch		;1cb1	c6 6c 	. l 
	jr c,l1cb5h		;1cb3	38 00 	8 . 
l1cb5h:
	ld bc,l3800h		;1cb5	01 00 38 	. . 8 
	ld b,h			;1cb8	44 	D 
	cp d			;1cb9	ba 	. 
	and d			;1cba	a2 	. 
	cp d			;1cbb	ba 	. 
	ld b,h			;1cbc	44 	D 
	jr c,$+1		;1cbd	38 ff 	8 . 
	nop			;1cbf	00 	. 
	rst 38h			;1cc0	ff 	. 
	jr l1cc3h		;1cc1	18 00 	. . 
l1cc3h:
	ld bc,0ff00h		;1cc3	01 00 ff 	. . . 
	jr $+1		;1cc6	18 ff 	. . 
	nop			;1cc8	00 	. 
	inc bc			;1cc9	03 	. 
	ld b,00ch		;1cca	06 0c 	. . 
	jr l1cfeh		;1ccc	18 30 	. 0 
	ld h,b			;1cce	60 	` 
	ret nz			;1ccf	c0 	. 
	nop			;1cd0	00 	. 
	ld bc,07c00h		;1cd1	01 00 7c 	. . | 
	rst 38h			;1cd4	ff 	. 
	add a,0fch		;1cd5	c6 fc 	. . 
	rst 38h			;1cd7	ff 	. 
	ret nz			;1cd8	c0 	. 
	ld a,(hl)			;1cd9	7e 	~ 
	nop			;1cda	00 	. 
	dec b			;1cdb	05 	. 
	nop			;1cdc	00 	. 
	rst 38h			;1cdd	ff 	. 
	jr $+1		;1cde	18 ff 	. . 
	nop			;1ce0	00 	. 
	ld a,h			;1ce1	7c 	| 
	rst 38h			;1ce2	ff 	. 
	ld b,07eh		;1ce3	06 7e 	. ~ 
	rst 38h			;1ce5	ff 	. 
	add a,07eh		;1ce6	c6 7e 	. ~ 
	nop			;1ce8	00 	. 
	ld bc,l0000h		;1ce9	01 00 00 	. . . 
l1cech:
	inc bc			;1cec	03 	. 
	inc a			;1ced	3c 	< 
	jr l1cf0h		;1cee	18 00 	. . 
l1cf0h:
	ld bc,0ff00h		;1cf0	01 00 ff 	. . . 
	jr $+1		;1cf3	18 ff 	. . 
	nop			;1cf5	00 	. 
	ld l,h			;1cf6	6c 	l 
	rst 38h			;1cf7	ff 	. 
	ld a,h			;1cf8	7c 	| 
	jr c,l1d0bh		;1cf9	38 10 	8 . 
	nop			;1cfb	00 	. 
sub_1cfch:
	dec b			;1cfc	05 	. 
	nop			;1cfd	00 	. 
l1cfeh:
	rst 38h			;1cfe	ff 	. 
	ld a,h			;1cff	7c 	| 
l1d00h:
	nop			;1d00	00 	. 
	rlca			;1d01	07 	. 
	nop			;1d02	00 	. 
	inc e			;1d03	1c 	. 
	inc c			;1d04	0c 	. 
	jr $+34		;1d05	18 20 	.   
	nop			;1d07	00 	. 
	nop			;1d08	00 	. 
	nop			;1d09	00 	. 
	rst 38h			;1d0a	ff 	. 
l1d0bh:
	nop			;1d0b	00 	. 
	nop			;1d0c	00 	. 
	ld e,d			;1d0d	5a 	Z 
	nop			;1d0e	00 	. 
	ld l,h			;1d0f	6c 	l 
	rst 38h			;1d10	ff 	. 
	ld a,h			;1d11	7c 	| 
	jr c,$+18		;1d12	38 10 	8 . 
	nop			;1d14	00 	. 
	ld (de),a			;1d15	12 	. 
	nop			;1d16	00 	. 
	nop			;1d17	00 	. 
	nop			;1d18	00 	. 
	nop			;1d19	00 	. 
	rst 38h			;1d1a	ff 	. 
	nop			;1d1b	00 	. 
	nop			;1d1c	00 	. 
	ld (hl),c			;1d1d	71 	q 
	nop			;1d1e	00 	. 
	nop			;1d1f	00 	. 
	nop			;1d20	00 	. 
l1d21h:
	ld (bc),a			;1d21	02 	. 
	ld sp,l0400h		;1d22	31 00 04 	1 . . 
	ld hl,l0002h		;1d25	21 02 00 	! . . 
	ld bc,l0000h		;1d28	01 00 00 	. . . 
	ld b,004h		;1d2b	06 04 	. . 
	ld (bc),a			;1d2d	02 	. 
	nop			;1d2e	00 	. 
	ld bc,l0200h		;1d2f	01 00 02 	. . . 
	ld sp,0c221h		;1d32	31 21 c2 	1 ! . 
	inc b			;1d35	04 	. 
	ex af,af'			;1d36	08 	. 
	rst 38h			;1d37	ff 	. 
	nop			;1d38	00 	. 
	ld (bc),a			;1d39	02 	. 
	ld sp,0c221h		;1d3a	31 21 c2 	1 ! . 
	ld de,l0201h		;1d3d	11 01 02 	. . . 
	nop			;1d40	00 	. 
	ld bc,l0000h		;1d41	01 00 00 	. . . 
	inc bc			;1d44	03 	. 
	ld (bc),a			;1d45	02 	. 
	ld (de),a			;1d46	12 	. 
	ld (l0201h),hl		;1d47	22 01 02 	" . . 
	nop			;1d4a	00 	. 
	ld bc,l0200h		;1d4b	01 00 02 	. . . 
	inc e			;1d4e	1c 	. 
	ld (bc),a			;1d4f	02 	. 
	pop af			;1d50	f1 	. 
	rst 38h			;1d51	ff 	. 
	ld bc,l0002h		;1d52	01 02 00 	. . . 
	ld bc,l0200h		;1d55	01 00 02 	. . . 
	inc a			;1d58	3c 	< 
	ld (bc),a			;1d59	02 	. 
	ld sp,l21ffh		;1d5a	31 ff 21 	1 . ! 
	ld (bc),a			;1d5d	02 	. 
	nop			;1d5e	00 	. 
	ld bc,l0100h		;1d5f	01 00 01 	. . . 
	add hl,sp			;1d62	39 	9 
	ld hl,l0002h		;1d63	21 02 00 	! . . 
	inc bc			;1d66	03 	. 
	inc b			;1d67	04 	. 
	nop			;1d68	00 	. 
	ld bc,l0200h		;1d69	01 00 02 	. . . 
	ld sp,l0221h		;1d6c	31 21 02 	1 ! . 
	ld sp,l0221h		;1d6f	31 21 02 	1 ! . 
	nop			;1d72	00 	. 
	ld bc,l0200h		;1d73	01 00 02 	. . . 
	ld sp,l21ffh		;1d76	31 ff 21 	1 . ! 
	ld bc,l0271h		;1d79	01 71 02 	. q . 
	nop			;1d7c	00 	. 
	ld bc,l0000h		;1d7d	01 00 00 	. . . 
	ld b,011h		;1d80	06 11 	. . 
	ld (bc),a			;1d82	02 	. 
	nop			;1d83	00 	. 
	ld bc,l0200h		;1d84	01 00 02 	. . . 
	add hl,de			;1d87	19 	. 
	rst 38h			;1d88	ff 	. 
	ld de,0ff02h		;1d89	11 02 ff 	. . . 
	djnz l1d8eh		;1d8c	10 00 	. . 
l1d8eh:
	ld bc,l0000h		;1d8e	01 00 00 	. . . 
	inc bc			;1d91	03 	. 
	ld de,l1901h		;1d92	11 01 19 	. . . 
	rst 38h			;1d95	ff 	. 
	ld de,l0100h		;1d96	11 00 01 	. . . 
	nop			;1d99	00 	. 
	nop			;1d9a	00 	. 
	rlca			;1d9b	07 	. 
	inc b			;1d9c	04 	. 
	nop			;1d9d	00 	. 
	ld bc,l0200h		;1d9e	01 00 02 	. . . 
	add hl,de			;1da1	19 	. 
	ld de,0ff17h		;1da2	11 17 ff 	. . . 
	ld de,l0002h		;1da5	11 02 00 	. . . 
	ld bc,l0200h		;1da8	01 00 02 	. . . 
	add hl,de			;1dab	19 	. 
	ld de,l1902h		;1dac	11 02 19 	. . . 
	ld de,l0002h		;1daf	11 02 00 	. . . 
	ld bc,l0200h		;1db2	01 00 02 	. . . 
	rst 38h			;1db5	ff 	. 
	ld de,0ff1fh		;1db6	11 1f ff 	. . . 
	ld de,l0002h		;1db9	11 02 00 	. . . 
	ld bc,l0200h		;1dbc	01 00 02 	. . . 
	add hl,de			;1dbf	19 	. 
	nop			;1dc0	00 	. 
	inc b			;1dc1	04 	. 
	ld de,l0002h		;1dc2	11 02 00 	. . . 
	ld bc,l0100h		;1dc5	01 00 01 	. . . 
	ld e,010h		;1dc8	1e 10 	. . 
	ld (bc),a			;1dca	02 	. 
	inc e			;1dcb	1c 	. 
	djnz l1dcfh		;1dcc	10 01 	. . 
	nop			;1dce	00 	. 
l1dcfh:
	ld bc,l0100h		;1dcf	01 00 01 	. . . 
	ld e,010h		;1dd2	1e 10 	. . 
	ld (bc),a			;1dd4	02 	. 
	inc e			;1dd5	1c 	. 
	rst 38h			;1dd6	ff 	. 
	djnz l1dd9h		;1dd7	10 00 	. . 
l1dd9h:
	ld bc,l0400h		;1dd9	01 00 04 	. . . 
	ld a,(de)			;1ddc	1a 	. 
	rst 38h			;1ddd	ff 	. 
	ld de,l1901h		;1dde	11 01 19 	. . . 
	ld de,l0100h		;1de1	11 00 01 	. . . 
	nop			;1de4	00 	. 
	ld hl,l0211h		;1de5	21 11 02 	! . . 
	inc b			;1de8	04 	. 
	ld (bc),a			;1de9	02 	. 
	ld de,l0021h		;1dea	11 21 00 	. ! . 
	ld bc,0ff00h		;1ded	01 00 ff 	. . . 
	ld hl,l0201h		;1df0	21 01 02 	! . . 
	nop			;1df3	00 	. 
	inc bc			;1df4	03 	. 
	inc b			;1df5	04 	. 
	nop			;1df6	00 	. 
	ld bc,l0000h		;1df7	01 00 00 	. . . 
	inc b			;1dfa	04 	. 
	ld bc,l21ffh		;1dfb	01 ff 21 	. . ! 
	ld (bc),a			;1dfe	02 	. 
	nop			;1dff	00 	. 
l1e00h:
	ld bc,l1000h		;1e00	01 00 10 	. . . 
	ld de,0ff12h		;1e03	11 12 ff 	. . . 
	inc b			;1e06	04 	. 
	ld (de),a			;1e07	12 	. 
	ld de,l0100h		;1e08	11 00 01 	. . . 
	nop			;1e0b	00 	. 
	nop			;1e0c	00 	. 
	ld b,010h		;1e0d	06 10 	. . 
	ld bc,l0100h		;1e0f	01 00 01 	. . . 
	nop			;1e12	00 	. 
	ld (de),a			;1e13	12 	. 
	ld bc,l0500h		;1e14	01 00 05 	. . . 
	add hl,hl			;1e17	29 	) 
	nop			;1e18	00 	. 
	ld bc,l2100h		;1e19	01 00 21 	. . ! 
	ld de,l0109h		;1e1c	11 09 01 	. . . 
	nop			;1e1f	00 	. 
	inc bc			;1e20	03 	. 
	ld de,l0100h		;1e21	11 00 01 	. . . 
	nop			;1e24	00 	. 
	ld (bc),a			;1e25	02 	. 
	add hl,de			;1e26	19 	. 
	nop			;1e27	00 	. 
	inc b			;1e28	04 	. 
	ld de,l0002h		;1e29	11 02 00 	. . . 
	ld bc,0ff00h		;1e2c	01 00 ff 	. . . 
	ld bc,l0402h		;1e2f	01 02 04 	. . . 
	ex af,af'			;1e32	08 	. 
	rst 38h			;1e33	ff 	. 
	ld bc,l0100h		;1e34	01 00 01 	. . . 
	nop			;1e37	00 	. 
	ld (bc),a			;1e38	02 	. 
	add hl,sp			;1e39	39 	9 
	rst 38h			;1e3a	ff 	. 
	ld hl,l3101h		;1e3b	21 01 31 	! . 1 
	ld (bc),a			;1e3e	02 	. 
	nop			;1e3f	00 	. 
	ld bc,l0200h		;1e40	01 00 02 	. . . 
	add hl,de			;1e43	19 	. 
	rst 38h			;1e44	ff 	. 
	ld de,l1902h		;1e45	11 02 19 	. . . 
	ld de,l0100h		;1e48	11 00 01 	. . . 
	nop			;1e4b	00 	. 
	ld (bc),a			;1e4c	02 	. 
	add hl,de			;1e4d	19 	. 
	ld d,002h		;1e4e	16 02 	. . 
	ld a,c			;1e50	79 	y 
	ld bc,l0002h		;1e51	01 02 00 	. . . 
	ld bc,0ff00h		;1e54	01 00 ff 	. . . 
	ld bc,l0006h		;1e57	01 06 00 	. . . 
	inc b			;1e5a	04 	. 
	inc b			;1e5b	04 	. 
	nop			;1e5c	00 	. 
	ld bc,l0000h		;1e5d	01 00 00 	. . . 
	dec b			;1e60	05 	. 
	add hl,hl			;1e61	29 	) 
	ld bc,l0012h		;1e62	01 12 00 	. . . 
	ld bc,l0000h		;1e65	01 00 00 	. . . 
	dec b			;1e68	05 	. 
	ld hl,l0412h		;1e69	21 12 04 	! . . 
	rst 38h			;1e6c	ff 	. 
	nop			;1e6d	00 	. 
	jr c,l1eb0h		;1e6e	38 40 	8 @ 
	ld e,l			;1e70	5d 	] 
	ld b,c			;1e71	41 	A 
	ld a,(de)			;1e72	1a 	. 
	inc b			;1e73	04 	. 
	jr $+1		;1e74	18 ff 	. . 
	nop			;1e76	00 	. 
	inc b			;1e77	04 	. 
	inc e			;1e78	1c 	. 
	nop			;1e79	00 	. 
	ld bc,l0400h		;1e7a	01 00 04 	. . . 
	inc e			;1e7d	1c 	. 
	rst 38h			;1e7e	ff 	. 
	nop			;1e7f	00 	. 
	ld bc,l0402h		;1e80	01 02 04 	. . . 
	ex af,af'			;1e83	08 	. 
	djnz l1ea6h		;1e84	10 20 	.   
	rst 38h			;1e86	ff 	. 
	nop			;1e87	00 	. 
	jr c,l1eabh		;1e88	38 21 	8 ! 
	ld (bc),a			;1e8a	02 	. 
	inc a			;1e8b	3c 	< 
	jr nz,l1e8fh		;1e8c	20 01 	  . 
	nop			;1e8e	00 	. 
l1e8fh:
	dec b			;1e8f	05 	. 
	nop			;1e90	00 	. 
	rst 38h			;1e91	ff 	. 
	inc b			;1e92	04 	. 
	inc c			;1e93	0c 	. 
	rst 38h			;1e94	ff 	. 
	nop			;1e95	00 	. 
	add hl,sp			;1e96	39 	9 
	rst 38h			;1e97	ff 	. 
	ld bc,l2139h		;1e98	01 39 21 	. 9 ! 
	ld bc,l0100h		;1e9b	01 00 01 	. . . 
	nop			;1e9e	00 	. 
	nop			;1e9f	00 	. 
	inc bc			;1ea0	03 	. 
	ld (bc),a			;1ea1	02 	. 
	inc b			;1ea2	04 	. 
	jr $+1		;1ea3	18 ff 	. . 
	inc b			;1ea5	04 	. 
l1ea6h:
	inc c			;1ea6	0c 	. 
	rst 38h			;1ea7	ff 	. 
	nop			;1ea8	00 	. 
	rst 38h			;1ea9	ff 	. 
	ld (bc),a			;1eaa	02 	. 
l1eabh:
	inc b			;1eab	04 	. 
	ex af,af'			;1eac	08 	. 
	djnz l1eafh		;1ead	10 00 	. . 
l1eafh:
	dec b			;1eaf	05 	. 
l1eb0h:
	nop			;1eb0	00 	. 
	ld (bc),a			;1eb1	02 	. 
	ld a,000h		;1eb2	3e 00 	> . 
	rlca			;1eb4	07 	. 
	nop			;1eb5	00 	. 
	ld (bc),a			;1eb6	02 	. 
	ld b,018h		;1eb7	06 18 	. . 
	nop			;1eb9	00 	. 
	nop			;1eba	00 	. 
	nop			;1ebb	00 	. 
	inc bc			;1ebc	03 	. 
	nop			;1ebd	00 	. 
	inc bc			;1ebe	03 	. 
	nop			;1ebf	00 	. 
	rrca			;1ec0	0f 	. 
	nop			;1ec1	00 	. 
	rrca			;1ec2	0f 	. 
	nop			;1ec3	00 	. 
	rra			;1ec4	1f 	. 
	nop			;1ec5	00 	. 
	rra			;1ec6	1f 	. 
	ld bc,l003eh		;1ec7	01 3e 00 	. > . 
	ccf			;1eca	3f 	? 
	ld (bc),a			;1ecb	02 	. 
	inc a			;1ecc	3c 	< 
	ld bc,l043fh		;1ecd	01 3f 04 	. ? . 
	ld a,b			;1ed0	78 	x 
	inc bc			;1ed1	03 	. 
	ld a,a			;1ed2	7f 	 
	ex af,af'			;1ed3	08 	. 
	ld (hl),b			;1ed4	70 	p 
l1ed5h:
	rlca			;1ed5	07 	. 
	ld a,a			;1ed6	7f 	 
l1ed7h:
	inc l			;1ed7	2c 	, 
	ld d,b			;1ed8	50 	P 
	inc bc			;1ed9	03 	. 
	ld a,a			;1eda	7f 	 
	jr l1ed5h		;1edb	18 f8 	. . 
	jr l1ed7h		;1edd	18 f8 	. . 
	inc b			;1edf	04 	. 
	call m,0fc04h		;1ee0	fc 04 fc 	. . . 
	inc (hl)			;1ee3	34 	4 
	call z,0cc34h		;1ee4	cc 34 cc 	. 4 . 
	ld l,d			;1ee7	6a 	j 
	add a,(hl)			;1ee8	86 	. 
	ld a,d			;1ee9	7a 	z 
	add a,(hl)			;1eea	86 	. 
	jp m,07a06h		;1eeb	fa 06 7a 	. . z 
	add a,(hl)			;1eee	86 	. 
	ld a,d			;1eef	7a 	z 
	ld b,0b2h		;1ef0	06 b2 	. . 
	adc a,072h		;1ef2	ce 72 	. r 
	ld c,082h		;1ef4	0e 82 	. . 
	cp 032h		;1ef6	fe 32 	. 2 
	ld c,0c2h		;1ef8	0e c2 	. . 
	cp 000h		;1efa	fe 00 	. . 
	nop			;1efc	00 	. 
	nop			;1efd	00 	. 
	nop			;1efe	00 	. 
	nop			;1eff	00 	. 
l1f00h:
	nop			;1f00	00 	. 
	nop			;1f01	00 	. 
	nop			;1f02	00 	. 
	nop			;1f03	00 	. 
	nop			;1f04	00 	. 
	nop			;1f05	00 	. 
	nop			;1f06	00 	. 
	nop			;1f07	00 	. 
	nop			;1f08	00 	. 
	nop			;1f09	00 	. 
	nop			;1f0a	00 	. 
	nop			;1f0b	00 	. 
	nop			;1f0c	00 	. 
	nop			;1f0d	00 	. 
	nop			;1f0e	00 	. 
	nop			;1f0f	00 	. 
	nop			;1f10	00 	. 
	nop			;1f11	00 	. 
	nop			;1f12	00 	. 
	nop			;1f13	00 	. 
	nop			;1f14	00 	. 
	nop			;1f15	00 	. 
	nop			;1f16	00 	. 
	nop			;1f17	00 	. 
	nop			;1f18	00 	. 
	nop			;1f19	00 	. 
	nop			;1f1a	00 	. 
	dec hl			;1f1b	2b 	+ 
	ld b,b			;1f1c	40 	@ 
	inc d			;1f1d	14 	. 
	ld (hl),h			;1f1e	74 	t 
	ld hl,l0054h		;1f1f	21 54 00 	! T . 
	ld l,d			;1f22	6a 	j 
	ld bc,00a3eh		;1f23	01 3e 0a 	. > . 
	jr nz,l1f28h		;1f26	20 00 	  . 
l1f28h:
	rra			;1f28	1f 	. 
	nop			;1f29	00 	. 
	nop			;1f2a	00 	. 
	inc b			;1f2b	04 	. 
	dec de			;1f2c	1b 	. 
	inc b			;1f2d	04 	. 
	nop			;1f2e	00 	. 
	inc b			;1f2f	04 	. 
	dec bc			;1f30	0b 	. 
	inc d			;1f31	14 	. 
	djnz l1f34h		;1f32	10 00 	. . 
l1f34h:
	nop			;1f34	00 	. 
	rrca			;1f35	0f 	. 
	rrca			;1f36	0f 	. 
	nop			;1f37	00 	. 
	rlca			;1f38	07 	. 
	nop			;1f39	00 	. 
	nop			;1f3a	00 	. 
	dec a			;1f3b	3d 	= 
	inc bc			;1f3c	03 	. 
	pop bc			;1f3d	c1 	. 
	rst 38h			;1f3e	ff 	. 
	sbc a,c			;1f3f	99 	. 
	rlca			;1f40	07 	. 
	ld h,c			;1f41	61 	a 
	ld a,a			;1f42	7f 	 
	sbc a,c			;1f43	99 	. 
	ld b,a			;1f44	47 	G 
	ld hl,l193fh		;1f45	21 3f 19 	! ? . 
	rst 0			;1f48	c7 	. 
	ld hl,01d3fh		;1f49	21 3f 1d 	! ? . 
	jp l3f21h		;1f4c	c3 21 3f 	. ! ? 
	dec e			;1f4f	1d 	. 
	add a,e			;1f50	83 	. 
	ld h,c			;1f51	61 	a 
	ld a,a			;1f52	7f 	 
	dec c			;1f53	0d 	. 
	ld (hl),e			;1f54	73 	s 
	add a,c			;1f55	81 	. 
	adc a,a			;1f56	8f 	. 
	inc c			;1f57	0c 	. 
	di			;1f58	f3 	. 
	ex af,af'			;1f59	08 	. 
	rlca			;1f5a	07 	. 
	nop			;1f5b	00 	. 
	nop			;1f5c	00 	. 
	nop			;1f5d	00 	. 
	nop			;1f5e	00 	. 
	nop			;1f5f	00 	. 
	nop			;1f60	00 	. 
	nop			;1f61	00 	. 
	nop			;1f62	00 	. 
	nop			;1f63	00 	. 
	nop			;1f64	00 	. 
	nop			;1f65	00 	. 
	nop			;1f66	00 	. 
	nop			;1f67	00 	. 
	nop			;1f68	00 	. 
	nop			;1f69	00 	. 
	nop			;1f6a	00 	. 
	nop			;1f6b	00 	. 
	nop			;1f6c	00 	. 
	nop			;1f6d	00 	. 
	nop			;1f6e	00 	. 
	nop			;1f6f	00 	. 
	nop			;1f70	00 	. 
	nop			;1f71	00 	. 
	nop			;1f72	00 	. 
	nop			;1f73	00 	. 
	nop			;1f74	00 	. 
	nop			;1f75	00 	. 
	nop			;1f76	00 	. 
	add a,b			;1f77	80 	. 
	add a,b			;1f78	80 	. 
	add a,b			;1f79	80 	. 
	add a,b			;1f7a	80 	. 
	nop			;1f7b	00 	. 
	dec bc			;1f7c	0b 	. 
	dec c			;1f7d	0d 	. 
	add hl,bc			;1f7e	09 	. 
	nop			;1f7f	00 	. 
	dec e			;1f80	1d 	. 
	rra			;1f81	1f 	. 
	dec e			;1f82	1d 	. 
	nop			;1f83	00 	. 
	nop			;1f84	00 	. 
	rrca			;1f85	0f 	. 
	nop			;1f86	00 	. 
	rlca			;1f87	07 	. 
	nop			;1f88	00 	. 
	rlca			;1f89	07 	. 
	rlca			;1f8a	07 	. 
	ld (bc),a			;1f8b	02 	. 
	inc e			;1f8c	1c 	. 
	rra			;1f8d	1f 	. 
	ld e,00dh		;1f8e	1e 0d 	. . 
	ld (de),a			;1f90	12 	. 
	rrca			;1f91	0f 	. 
	inc bc			;1f92	03 	. 
	ld b,031h		;1f93	06 31 	. 1 
	rrca			;1f95	0f 	. 
	add hl,bc			;1f96	09 	. 
	nop			;1f97	00 	. 
	ld sp,l0f0fh		;1f98	31 0f 0f 	1 . . 
	ld a,(bc)			;1f9b	0a 	. 
	push hl			;1f9c	e5 	. 
	sbc a,b			;1f9d	98 	. 
	adc a,e			;1f9e	8b 	. 
	ld (de),a			;1f9f	12 	. 
	adc a,l			;1fa0	8d 	. 
	ld (hl),b			;1fa1	70 	p 
	inc de			;1fa2	13 	. 
	ld h,b			;1fa3	60 	` 
	inc de			;1fa4	13 	. 
l1fa5h:
	call pe,08d61h		;1fa5	ec 61 8d 	. a . 
	inc bc			;1fa8	03 	. 
	defb 0fdh,08dh	;adc a,iyl		;1fa9	fd 8d 	. . 
	ld a,c			;1fab	79 	y 
	rlca			;1fac	07 	. 
	ld sp,hl			;1fad	f9 	. 
	ld a,c			;1fae	79 	y 
	add a,(hl)			;1faf	86 	. 
	ld a,d			;1fb0	7a 	z 
	cp 0fah		;1fb1	fe fa 	. . 
	rlca			;1fb3	07 	. 
	ld sp,hl			;1fb4	f9 	. 
	rst 38h			;1fb5	ff 	. 
	ld sp,hl			;1fb6	f9 	. 
	rrca			;1fb7	0f 	. 
	djnz $+1		;1fb8	10 ff 	. . 
	ret p			;1fba	f0 	. 
	add a,b			;1fbb	80 	. 
	add a,b			;1fbc	80 	. 
	add a,b			;1fbd	80 	. 
	add a,b			;1fbe	80 	. 
	add a,b			;1fbf	80 	. 
	add a,b			;1fc0	80 	. 
	add a,b			;1fc1	80 	. 
	add a,b			;1fc2	80 	. 
	ld b,b			;1fc3	40 	@ 
	ret nz			;1fc4	c0 	. 
	ld b,b			;1fc5	40 	@ 
	ret nz			;1fc6	c0 	. 
	add a,b			;1fc7	80 	. 
	add a,b			;1fc8	80 	. 
	add a,b			;1fc9	80 	. 
	add a,b			;1fca	80 	. 
	nop			;1fcb	00 	. 
	nop			;1fcc	00 	. 
	nop			;1fcd	00 	. 
	nop			;1fce	00 	. 
	nop			;1fcf	00 	. 
	nop			;1fd0	00 	. 
	nop			;1fd1	00 	. 
	nop			;1fd2	00 	. 
	nop			;1fd3	00 	. 
	nop			;1fd4	00 	. 
	nop			;1fd5	00 	. 
	nop			;1fd6	00 	. 
	add a,b			;1fd7	80 	. 
	add a,b			;1fd8	80 	. 
	add a,b			;1fd9	80 	. 
	add a,b			;1fda	80 	. 
	inc bc			;1fdb	03 	. 
	ld (l0e0fh),a		;1fdc	32 0f 0e 	2 . . 
	inc bc			;1fdf	03 	. 
	ld h,e			;1fe0	63 	c 
	rra			;1fe1	1f 	. 
	rra			;1fe2	1f 	. 
sub_1fe3h:
	inc b			;1fe3	04 	. 
	ld h,h			;1fe4	64 	d 
	inc e			;1fe5	1c 	. 
	inc e			;1fe6	1c 	. 
	jr c,l2021h		;1fe7	38 38 	8 8 
	jr c,l2023h		;1fe9	38 38 	8 8 
	nop			;1feb	00 	. 
	nop			;1fec	00 	. 
	nop			;1fed	00 	. 
	nop			;1fee	00 	. 
	nop			;1fef	00 	. 
	ld bc,l0000h		;1ff0	01 00 00 	. . . 
	nop			;1ff3	00 	. 
	ld bc,l0000h		;1ff4	01 00 00 	. . . 
	nop			;1ff7	00 	. 
	nop			;1ff8	00 	. 
	nop			;1ff9	00 	. 
	nop			;1ffa	00 	. 
	rra			;1ffb	1f 	. 
	jp l233fh		;1ffc	c3 3f 23 	. ? # 
l1fffh:
	rrca			;1fff	0f 	. 
l2000h:
	ret			;2000	c9 	. 
	ccf			;2001	3f 	? 
	add hl,sp			;2002	39 	9 
	ld c,0ceh		;2003	0e ce 	. . 
	ld a,03eh		;2005	3e 3e 	> > 
	ex af,af'			;2007	08 	. 
	ret z			;2008	c8 	. 
	jr c,l2043h		;2009	38 38 	8 8 
	ex af,af'			;200b	08 	. 
	ret z			;200c	c8 	. 
	jr c,l2047h		;200d	38 38 	8 8 
	ex af,af'			;200f	08 	. 
	ret z			;2010	c8 	. 
	jr c,l204bh		;2011	38 38 	8 8 
	djnz l1fa5h		;2013	10 90 	. . 
	ld (hl),b			;2015	70 	p 
	ld (hl),b			;2016	70 	p 
	ret po			;2017	e0 	. 
	ret po			;2018	e0 	. 
	ret po			;2019	e0 	. 
	ret po			;201a	e0 	. 
	nop			;201b	00 	. 
	nop			;201c	00 	. 
	nop			;201d	00 	. 
	nop			;201e	00 	. 
	nop			;201f	00 	. 
	nop			;2020	00 	. 
l2021h:
	nop			;2021	00 	. 
	nop			;2022	00 	. 
l2023h:
	nop			;2023	00 	. 
	nop			;2024	00 	. 
	nop			;2025	00 	. 
	nop			;2026	00 	. 
	nop			;2027	00 	. 
	nop			;2028	00 	. 
	nop			;2029	00 	. 
	nop			;202a	00 	. 
	nop			;202b	00 	. 
	nop			;202c	00 	. 
	nop			;202d	00 	. 
	nop			;202e	00 	. 
	nop			;202f	00 	. 
	nop			;2030	00 	. 
	nop			;2031	00 	. 
	nop			;2032	00 	. 
	nop			;2033	00 	. 
	nop			;2034	00 	. 
	nop			;2035	00 	. 
	nop			;2036	00 	. 
	nop			;2037	00 	. 
	nop			;2038	00 	. 
	nop			;2039	00 	. 
	nop			;203a	00 	. 
	nop			;203b	00 	. 
	inc bc			;203c	03 	. 
l203dh:
	nop			;203d	00 	. 
	inc bc			;203e	03 	. 
	nop			;203f	00 	. 
	rrca			;2040	0f 	. 
	nop			;2041	00 	. 
	rrca			;2042	0f 	. 
l2043h:
	nop			;2043	00 	. 
	rra			;2044	1f 	. 
	nop			;2045	00 	. 
	rra			;2046	1f 	. 
l2047h:
	ld bc,l003eh		;2047	01 3e 00 	. > . 
	ccf			;204a	3f 	? 
l204bh:
	ld (bc),a			;204b	02 	. 
	inc a			;204c	3c 	< 
	ld bc,l043fh		;204d	01 3f 04 	. ? . 
	ld a,b			;2050	78 	x 
	inc bc			;2051	03 	. 
	ld a,a			;2052	7f 	 
	ex af,af'			;2053	08 	. 
	ld (hl),b			;2054	70 	p 
l2055h:
	rlca			;2055	07 	. 
	ld a,a			;2056	7f 	 
l2057h:
	inc l			;2057	2c 	, 
	ld d,b			;2058	50 	P 
	inc bc			;2059	03 	. 
	ld a,a			;205a	7f 	 
	jr l2055h		;205b	18 f8 	. . 
	jr l2057h		;205d	18 f8 	. . 
	inc b			;205f	04 	. 
	call m,0fc04h		;2060	fc 04 fc 	. . . 
	inc (hl)			;2063	34 	4 
	call z,0cc34h		;2064	cc 34 cc 	. 4 . 
	ld l,(hl)			;2067	6e 	n 
sub_2068h:
	add a,d			;2068	82 	. 
	ld a,d			;2069	7a 	z 
	add a,(hl)			;206a	86 	. 
	cp 002h		;206b	fe 02 	. . 
	ld a,d			;206d	7a 	z 
	add a,(hl)			;206e	86 	. 
	ld a,d			;206f	7a 	z 
	ld b,0b2h		;2070	06 b2 	. . 
	adc a,072h		;2072	ce 72 	. r 
	ld c,082h		;2074	0e 82 	. . 
	cp 032h		;2076	fe 32 	. 2 
	ld c,0c2h		;2078	0e c2 	. . 
	cp 000h		;207a	fe 00 	. . 
	nop			;207c	00 	. 
	nop			;207d	00 	. 
	nop			;207e	00 	. 
	nop			;207f	00 	. 
	nop			;2080	00 	. 
	nop			;2081	00 	. 
	nop			;2082	00 	. 
	nop			;2083	00 	. 
	nop			;2084	00 	. 
	nop			;2085	00 	. 
	nop			;2086	00 	. 
	nop			;2087	00 	. 
	nop			;2088	00 	. 
	nop			;2089	00 	. 
	nop			;208a	00 	. 
	nop			;208b	00 	. 
	nop			;208c	00 	. 
	nop			;208d	00 	. 
	nop			;208e	00 	. 
	nop			;208f	00 	. 
	nop			;2090	00 	. 
	nop			;2091	00 	. 
	nop			;2092	00 	. 
	nop			;2093	00 	. 
	nop			;2094	00 	. 
	nop			;2095	00 	. 
	nop			;2096	00 	. 
	nop			;2097	00 	. 
	nop			;2098	00 	. 
	nop			;2099	00 	. 
	nop			;209a	00 	. 
	dec hl			;209b	2b 	+ 
	ld b,b			;209c	40 	@ 
	inc d			;209d	14 	. 
	ld (hl),h			;209e	74 	t 
	ld hl,l0054h		;209f	21 54 00 	! T . 
	ld l,d			;20a2	6a 	j 
	ld bc,00a3eh		;20a3	01 3e 0a 	. > . 
	jr nz,l20a8h		;20a6	20 00 	  . 
l20a8h:
	rra			;20a8	1f 	. 
	nop			;20a9	00 	. 
	nop			;20aa	00 	. 
	inc b			;20ab	04 	. 
	dec de			;20ac	1b 	. 
	inc b			;20ad	04 	. 
	nop			;20ae	00 	. 
	inc b			;20af	04 	. 
	dec bc			;20b0	0b 	. 
	inc d			;20b1	14 	. 
	djnz l20b4h		;20b2	10 00 	. . 
l20b4h:
	nop			;20b4	00 	. 
	rrca			;20b5	0f 	. 
	rrca			;20b6	0f 	. 
	nop			;20b7	00 	. 
	rlca			;20b8	07 	. 
	nop			;20b9	00 	. 
	nop			;20ba	00 	. 
	dec a			;20bb	3d 	= 
	inc bc			;20bc	03 	. 
	pop bc			;20bd	c1 	. 
	rst 38h			;20be	ff 	. 
	sbc a,c			;20bf	99 	. 
	rlca			;20c0	07 	. 
	ld h,c			;20c1	61 	a 
	ld a,a			;20c2	7f 	 
	sbc a,c			;20c3	99 	. 
	ld b,a			;20c4	47 	G 
	ld hl,l193fh		;20c5	21 3f 19 	! ? . 
	rst 0			;20c8	c7 	. 
	ld hl,01d3fh		;20c9	21 3f 1d 	! ? . 
	jp l3f21h		;20cc	c3 21 3f 	. ! ? 
	dec a			;20cf	3d 	= 
	add a,e			;20d0	83 	. 
	ld b,c			;20d1	41 	A 
	ld a,a			;20d2	7f 	 
	dec c			;20d3	0d 	. 
	ld (hl),e			;20d4	73 	s 
	add a,c			;20d5	81 	. 
	adc a,a			;20d6	8f 	. 
	inc b			;20d7	04 	. 
	ei			;20d8	fb 	. 
	nop			;20d9	00 	. 
	rlca			;20da	07 	. 
	nop			;20db	00 	. 
	nop			;20dc	00 	. 
	nop			;20dd	00 	. 
	nop			;20de	00 	. 
	nop			;20df	00 	. 
	nop			;20e0	00 	. 
	nop			;20e1	00 	. 
	nop			;20e2	00 	. 
	nop			;20e3	00 	. 
	nop			;20e4	00 	. 
	nop			;20e5	00 	. 
	nop			;20e6	00 	. 
	nop			;20e7	00 	. 
	nop			;20e8	00 	. 
	nop			;20e9	00 	. 
	nop			;20ea	00 	. 
	nop			;20eb	00 	. 
	nop			;20ec	00 	. 
	nop			;20ed	00 	. 
	nop			;20ee	00 	. 
	nop			;20ef	00 	. 
	nop			;20f0	00 	. 
	nop			;20f1	00 	. 
	nop			;20f2	00 	. 
	nop			;20f3	00 	. 
	nop			;20f4	00 	. 
	nop			;20f5	00 	. 
	nop			;20f6	00 	. 
	add a,b			;20f7	80 	. 
	add a,b			;20f8	80 	. 
	add a,b			;20f9	80 	. 
	add a,b			;20fa	80 	. 
	nop			;20fb	00 	. 
	dec bc			;20fc	0b 	. 
	dec c			;20fd	0d 	. 
	dec c			;20fe	0d 	. 
	nop			;20ff	00 	. 
l2100h:
	rra			;2100	1f 	. 
	dec e			;2101	1d 	. 
	dec e			;2102	1d 	. 
	nop			;2103	00 	. 
	nop			;2104	00 	. 
	rrca			;2105	0f 	. 
	nop			;2106	00 	. 
	rlca			;2107	07 	. 
	nop			;2108	00 	. 
	rlca			;2109	07 	. 
	rlca			;210a	07 	. 
	nop			;210b	00 	. 
	ld bc,l0006h		;210c	01 06 00 	. . . 
	nop			;210f	00 	. 
	rlca			;2110	07 	. 
	ld b,006h		;2111	06 06 	. . 
	ld (bc),a			;2113	02 	. 
	dec c			;2114	0d 	. 
	ld c,00ch		;2115	0e 0c 	. . 
	ld (bc),a			;2117	02 	. 
	dec e			;2118	1d 	. 
	ld e,01ch		;2119	1e 1c 	. . 
	ld b,0f1h		;211b	06 f1 	. . 
	adc a,h			;211d	8c 	. 
	add a,a			;211e	87 	. 
	ld a,(bc)			;211f	0a 	. 
	add a,l			;2120	85 	. 
	ld a,b			;2121	78 	x 
	dec bc			;2122	0b 	. 
	ld (hl),d			;2123	72 	r 
	ld bc,073feh		;2124	01 fe 73 	. . s 
	adc a,l			;2127	8d 	. 
	ld b,e			;2128	43 	C 
	cp l			;2129	bd 	. 
	adc a,l			;212a	8d 	. 
	ld bc,07987h		;212b	01 87 79 	. . y 
	ld a,c			;212e	79 	y 
	ld c,092h		;212f	0e 92 	. . 
	ld a,(hl)			;2131	7e 	~ 
	ld (hl),d			;2132	72 	r 
	rlca			;2133	07 	. 
	sbc a,c			;2134	99 	. 
	ld a,a			;2135	7f 	 
	ld a,c			;2136	79 	y 
	ld (de),a			;2137	12 	. 
	sbc a,(hl)			;2138	9e 	. 
l2139h:
	ld a,(hl)			;2139	7e 	~ 
	ld a,(hl)			;213a	7e 	~ 
	add a,b			;213b	80 	. 
	add a,b			;213c	80 	. 
	add a,b			;213d	80 	. 
	add a,b			;213e	80 	. 
	add a,b			;213f	80 	. 
	add a,b			;2140	80 	. 
	add a,b			;2141	80 	. 
	add a,b			;2142	80 	. 
	ld b,b			;2143	40 	@ 
	ret nz			;2144	c0 	. 
	ld b,b			;2145	40 	@ 
	ret nz			;2146	c0 	. 
	add a,b			;2147	80 	. 
	add a,b			;2148	80 	. 
	add a,b			;2149	80 	. 
	add a,b			;214a	80 	. 
	nop			;214b	00 	. 
	nop			;214c	00 	. 
	nop			;214d	00 	. 
	nop			;214e	00 	. 
	nop			;214f	00 	. 
	nop			;2150	00 	. 
	nop			;2151	00 	. 
	nop			;2152	00 	. 
	nop			;2153	00 	. 
	nop			;2154	00 	. 
	nop			;2155	00 	. 
	nop			;2156	00 	. 
	nop			;2157	00 	. 
	nop			;2158	00 	. 
	nop			;2159	00 	. 
	nop			;215a	00 	. 
	nop			;215b	00 	. 
	dec bc			;215c	0b 	. 
	inc c			;215d	0c 	. 
	inc c			;215e	0c 	. 
	nop			;215f	00 	. 
	dec bc			;2160	0b 	. 
	inc b			;2161	04 	. 
	inc b			;2162	04 	. 
	nop			;2163	00 	. 
	inc c			;2164	0c 	. 
	inc bc			;2165	03 	. 
	inc bc			;2166	03 	. 
	nop			;2167	00 	. 
	inc c			;2168	0c 	. 
	inc bc			;2169	03 	. 
	inc bc			;216a	03 	. 
	nop			;216b	00 	. 
	inc c			;216c	0c 	. 
	inc bc			;216d	03 	. 
	inc bc			;216e	03 	. 
	nop			;216f	00 	. 
	inc e			;2170	1c 	. 
	inc bc			;2171	03 	. 
	inc bc			;2172	03 	. 
	ld bc,l0719h		;2173	01 19 07 	. . . 
	rlca			;2176	07 	. 
	ld c,00eh		;2177	0e 0e 	. . 
	ld c,00eh		;2179	0e 0e 	. . 
	inc e			;217b	1c 	. 
	sbc a,h			;217c	9c 	. 
	ld a,h			;217d	7c 	| 
	ld a,h			;217e	7c 	| 
	jr nz,l21a1h		;217f	20 20 	    
	ret po			;2181	e0 	. 
	ret po			;2182	e0 	. 
	ret nz			;2183	c0 	. 
	ret nz			;2184	c0 	. 
	ret nz			;2185	c0 	. 
	ret nz			;2186	c0 	. 
	add a,b			;2187	80 	. 
	add a,b			;2188	80 	. 
	add a,b			;2189	80 	. 
	add a,b			;218a	80 	. 
	add a,b			;218b	80 	. 
	add a,b			;218c	80 	. 
	add a,b			;218d	80 	. 
	add a,b			;218e	80 	. 
	add a,b			;218f	80 	. 
	add a,b			;2190	80 	. 
	add a,b			;2191	80 	. 
	add a,b			;2192	80 	. 
	nop			;2193	00 	. 
	nop			;2194	00 	. 
	nop			;2195	00 	. 
	nop			;2196	00 	. 
	nop			;2197	00 	. 
	nop			;2198	00 	. 
	nop			;2199	00 	. 
	nop			;219a	00 	. 
	nop			;219b	00 	. 
	nop			;219c	00 	. 
	nop			;219d	00 	. 
	nop			;219e	00 	. 
	nop			;219f	00 	. 
	nop			;21a0	00 	. 
l21a1h:
	nop			;21a1	00 	. 
	nop			;21a2	00 	. 
	nop			;21a3	00 	. 
	nop			;21a4	00 	. 
	nop			;21a5	00 	. 
	nop			;21a6	00 	. 
	nop			;21a7	00 	. 
	nop			;21a8	00 	. 
	nop			;21a9	00 	. 
	nop			;21aa	00 	. 
	nop			;21ab	00 	. 
	nop			;21ac	00 	. 
	nop			;21ad	00 	. 
	nop			;21ae	00 	. 
	nop			;21af	00 	. 
	nop			;21b0	00 	. 
	nop			;21b1	00 	. 
	nop			;21b2	00 	. 
	nop			;21b3	00 	. 
	nop			;21b4	00 	. 
	nop			;21b5	00 	. 
	nop			;21b6	00 	. 
	nop			;21b7	00 	. 
	nop			;21b8	00 	. 
	nop			;21b9	00 	. 
	nop			;21ba	00 	. 
	nop			;21bb	00 	. 
	nop			;21bc	00 	. 
	nop			;21bd	00 	. 
	nop			;21be	00 	. 
	nop			;21bf	00 	. 
	inc bc			;21c0	03 	. 
	nop			;21c1	00 	. 
	inc bc			;21c2	03 	. 
	nop			;21c3	00 	. 
	rlca			;21c4	07 	. 
	nop			;21c5	00 	. 
	rlca			;21c6	07 	. 
	nop			;21c7	00 	. 
	rrca			;21c8	0f 	. 
	nop			;21c9	00 	. 
	rrca			;21ca	0f 	. 
	nop			;21cb	00 	. 
	rrca			;21cc	0f 	. 
	nop			;21cd	00 	. 
	rrca			;21ce	0f 	. 
	ld bc,l001eh		;21cf	01 1e 00 	. . . 
	rra			;21d2	1f 	. 
	ld (bc),a			;21d3	02 	. 
	inc e			;21d4	1c 	. 
	ld bc,00b1fh		;21d5	01 1f 0b 	. . . 
	inc d			;21d8	14 	. 
	nop			;21d9	00 	. 
	rra			;21da	1f 	. 
	ld b,0feh		;21db	06 fe 	. . 
	ld b,0feh		;21dd	06 fe 	. . 
	ld bc,l01ffh		;21df	01 ff 01 	. . . 
	rst 38h			;21e2	ff 	. 
	dec c			;21e3	0d 	. 
	di			;21e4	f3 	. 
	dec c			;21e5	0d 	. 
	di			;21e6	f3 	. 
	ld e,d			;21e7	5a 	Z 
	and c			;21e8	a1 	. 
	ld e,0e1h		;21e9	1e e1 	. . 
	cp (hl)			;21eb	be 	. 
	ld bc,0e15eh		;21ec	01 5e e1 	. ^ . 
	inc e			;21ef	1c 	. 
	inc bc			;21f0	03 	. 
	call pe,sub_18f3h		;21f1	ec f3 18 	. . . 
	ld b,a			;21f4	47 	G 
	and b			;21f5	a0 	. 
	cp a			;21f6	bf 	. 
	inc c			;21f7	0c 	. 
	ex (sp),hl			;21f8	e3 	. 
	djnz l221ah		;21f9	10 1f 	. . 
	nop			;21fb	00 	. 
	nop			;21fc	00 	. 
	nop			;21fd	00 	. 
	nop			;21fe	00 	. 
l21ffh:
	nop			;21ff	00 	. 
l2200h:
	nop			;2200	00 	. 
	nop			;2201	00 	. 
	nop			;2202	00 	. 
	nop			;2203	00 	. 
	nop			;2204	00 	. 
	nop			;2205	00 	. 
	nop			;2206	00 	. 
	add a,b			;2207	80 	. 
	add a,b			;2208	80 	. 
	add a,b			;2209	80 	. 
	add a,b			;220a	80 	. 
	add a,b			;220b	80 	. 
	add a,b			;220c	80 	. 
l220dh:
	add a,b			;220d	80 	. 
	add a,b			;220e	80 	. 
	add a,b			;220f	80 	. 
	add a,b			;2210	80 	. 
	add a,b			;2211	80 	. 
	add a,b			;2212	80 	. 
	add a,b			;2213	80 	. 
	add a,b			;2214	80 	. 
	add a,b			;2215	80 	. 
	add a,b			;2216	80 	. 
	add a,b			;2217	80 	. 
	add a,b			;2218	80 	. 
	add a,b			;2219	80 	. 
l221ah:
	add a,b			;221a	80 	. 
	ex af,af'			;221b	08 	. 
	ld d,000h		;221c	16 00 	. . 
	add hl,de			;221e	19 	. 
	ld a,(bc)			;221f	0a 	. 
	dec d			;2220	15 	. 
	ld bc,l0317h+1		;2221	01 18 03 	. . . 
	inc d			;2224	14 	. 
	ex af,af'			;2225	08 	. 
	ex af,af'			;2226	08 	. 
	nop			;2227	00 	. 
	ld (hl),a			;2228	77 	w 
	ex af,af'			;2229	08 	. 
	ex af,af'			;222a	08 	. 
	ld bc,l0936h		;222b	01 36 09 	. 6 . 
	ex af,af'			;222e	08 	. 
	nop			;222f	00 	. 
	dec de			;2230	1b 	. 
	inc b			;2231	04 	. 
	inc b			;2232	04 	. 
	nop			;2233	00 	. 
	inc c			;2234	0c 	. 
	inc bc			;2235	03 	. 
	inc bc			;2236	03 	. 
	nop			;2237	00 	. 
	rlca			;2238	07 	. 
	nop			;2239	00 	. 
	nop			;223a	00 	. 
	cpl			;223b	2f 	/ 
	add a,b			;223c	80 	. 
	djnz $+97		;223d	10 5f 	. _ 
	ld (hl),0c1h		;223f	36 c1 	6 . 
	ld c,b			;2241	48 	H 
	rrca			;2242	0f 	. 
	ld (hl),a			;2243	77 	w 
	add a,b			;2244	80 	. 
	ex af,af'			;2245	08 	. 
	rrca			;2246	0f 	. 
	ld b,0f1h		;2247	06 f1 	. . 
	ex af,af'			;2249	08 	. 
	ld c,0c4h		;224a	0e c4 	. . 
	inc sp			;224c	33 	3 
	ret z			;224d	c8 	. 
	inc c			;224e	0c 	. 
	add a,b			;224f	80 	. 
	ld h,a			;2250	67 	g 
	sbc a,b			;2251	98 	. 
	jr l2254h		;2252	18 00 	. . 
l2254h:
	ld e,0e1h		;2254	1e e1 	. . 
	pop hl			;2256	e1 	. 
	ld bc,l02fch		;2257	01 fc 02 	. . . 
	inc bc			;225a	03 	. 
	ld b,b			;225b	40 	@ 
	ret nz			;225c	c0 	. 
	ld b,b			;225d	40 	@ 
	ret nz			;225e	c0 	. 
	ld b,b			;225f	40 	@ 
	ret nz			;2260	c0 	. 
	ld b,b			;2261	40 	@ 
	ld b,b			;2262	40 	@ 
	nop			;2263	00 	. 
	ret p			;2264	f0 	. 
	nop			;2265	00 	. 
	nop			;2266	00 	. 
	djnz $-14		;2267	10 f0 	. . 
	djnz l227bh		;2269	10 10 	. . 
	jr nz,l220dh		;226b	20 a0 	  . 
	ld h,b			;226d	60 	` 
	ld h,b			;226e	60 	` 
	ld b,b			;226f	40 	@ 
	ld b,b			;2270	40 	@ 
	ret nz			;2271	c0 	. 
	ret nz			;2272	c0 	. 
	ld b,b			;2273	40 	@ 
	ret nz			;2274	c0 	. 
	ld b,b			;2275	40 	@ 
	ret nz			;2276	c0 	. 
	ld b,b			;2277	40 	@ 
	ret nz			;2278	c0 	. 
	ld b,b			;2279	40 	@ 
	ret nz			;227a	c0 	. 
l227bh:
	nop			;227b	00 	. 
	rlca			;227c	07 	. 
	ld b,006h		;227d	06 06 	. . 
	ld bc,l0f0eh		;227f	01 0e 0f 	. . . 
	ld c,001h		;2282	0e 01 	. . 
	ld c,00fh		;2284	0e 0f 	. . 
	ld c,000h		;2286	0e 00 	. . 
	rlca			;2288	07 	. 
	nop			;2289	00 	. 
	nop			;228a	00 	. 
	nop			;228b	00 	. 
	rlca			;228c	07 	. 
	nop			;228d	00 	. 
	nop			;228e	00 	. 
	nop			;228f	00 	. 
	rlca			;2290	07 	. 
	rlca			;2291	07 	. 
	rlca			;2292	07 	. 
	nop			;2293	00 	. 
	rrca			;2294	0f 	. 
	rrca			;2295	0f 	. 
	rrca			;2296	0f 	. 
	nop			;2297	00 	. 
	add hl,bc			;2298	09 	. 
	rrca			;2299	0f 	. 
	rrca			;229a	0f 	. 
	inc bc			;229b	03 	. 
	ld (hl),b			;229c	70 	p 
l229dh:
	call pe,sub_07efh		;229d	ec ef 07 	. . . 
	ret m			;22a0	f8 	. 
l22a1h:
	ret c			;22a1	d8 	. 
	rst 18h			;22a2	df 	. 
l22a3h:
	ld b,0f1h		;22a3	06 f1 	. . 
	ret m			;22a5	f8 	. 
	rst 38h			;22a6	ff 	. 
	ld b,0f1h		;22a7	06 f1 	. . 
l22a9h:
	ex af,af'			;22a9	08 	. 
	rrca			;22aa	0f 	. 
l22abh:
	inc b			;22ab	04 	. 
	di			;22ac	f3 	. 
	ex af,af'			;22ad	08 	. 
	rrca			;22ae	0f 	. 
	rra			;22af	1f 	. 
	rst 20h			;22b0	e7 	. 
	rst 38h			;22b1	ff 	. 
	rst 20h			;22b2	e7 	. 
	ld c,0f2h		;22b3	0e f2 	. . 
l22b5h:
	cp 0f2h		;22b5	fe f2 	. . 
l22b7h:
	rlca			;22b7	07 	. 
	adc a,c			;22b8	89 	. 
	rst 38h			;22b9	ff 	. 
	ld sp,hl			;22ba	f9 	. 
	jr nz,l229dh		;22bb	20 e0 	  . 
	jr nz,$-30		;22bd	20 e0 	  . 
	jr nz,l22a1h		;22bf	20 e0 	  . 
	jr nz,l22a3h		;22c1	20 e0 	  . 
	djnz l22b5h		;22c3	10 f0 	. . 
	djnz l22b7h		;22c5	10 f0 	. . 
	jr nz,l22a9h		;22c7	20 e0 	  . 
	jr nz,l22abh		;22c9	20 e0 	  . 
	ret nz			;22cb	c0 	. 
	ret nz			;22cc	c0 	. 
	ret nz			;22cd	c0 	. 
	ret nz			;22ce	c0 	. 
	nop			;22cf	00 	. 
	nop			;22d0	00 	. 
	nop			;22d1	00 	. 
	nop			;22d2	00 	. 
	nop			;22d3	00 	. 
	nop			;22d4	00 	. 
	nop			;22d5	00 	. 
	nop			;22d6	00 	. 
	nop			;22d7	00 	. 
	nop			;22d8	00 	. 
	nop			;22d9	00 	. 
	nop			;22da	00 	. 
	nop			;22db	00 	. 
	ld c,009h		;22dc	0e 09 	. . 
	add hl,bc			;22de	09 	. 
	nop			;22df	00 	. 
	rlca			;22e0	07 	. 
	nop			;22e1	00 	. 
	nop			;22e2	00 	. 
	nop			;22e3	00 	. 
	rlca			;22e4	07 	. 
	nop			;22e5	00 	. 
	nop			;22e6	00 	. 
	nop			;22e7	00 	. 
	rlca			;22e8	07 	. 
	ex af,af'			;22e9	08 	. 
	nop			;22ea	00 	. 
	inc c			;22eb	0c 	. 
	inc bc			;22ec	03 	. 
	inc e			;22ed	1c 	. 
	inc c			;22ee	0c 	. 
	djnz l22f4h		;22ef	10 03 	. . 
	jr nc,l2303h		;22f1	30 10 	0 . 
	ex af,af'			;22f3	08 	. 
l22f4h:
	nop			;22f4	00 	. 
	ccf			;22f5	3f 	? 
	ex af,af'			;22f6	08 	. 
	cpl			;22f7	2f 	/ 
	nop			;22f8	00 	. 
	rst 28h			;22f9	ef 	. 
	cpl			;22fa	2f 	/ 
	ld b,072h		;22fb	06 72 	. r 
	adc a,(hl)			;22fd	8e 	. 
l22feh:
	adc a,d			;22fe	8a 	. 
	inc b			;22ff	04 	. 
	ld (hl),h			;2300	74 	t 
	adc a,h			;2301	8c 	. 
	adc a,h			;2302	8c 	. 
l2303h:
	inc b			;2303	04 	. 
	ld (hl),h			;2304	74 	t 
	adc a,a			;2305	8f 	. 
	adc a,h			;2306	8c 	. 
	rlca			;2307	07 	. 
	ld (hl),h			;2308	74 	t 
	adc a,a			;2309	8f 	. 
	adc a,a			;230a	8f 	. 
	ex af,af'			;230b	08 	. 
	ld l,b			;230c	68 	h 
	sbc a,b			;230d	98 	. 
	sbc a,b			;230e	98 	. 
	ex af,af'			;230f	08 	. 
	ld l,b			;2310	68 	h 
	sbc a,a			;2311	9f 	. 
	sbc a,b			;2312	98 	. 
	rlca			;2313	07 	. 
	nop			;2314	00 	. 
	rst 38h			;2315	ff 	. 
	rlca			;2316	07 	. 
	ret m			;2317	f8 	. 
	nop			;2318	00 	. 
	ret m			;2319	f8 	. 
	ret m			;231a	f8 	. 
	nop			;231b	00 	. 
	nop			;231c	00 	. 
	nop			;231d	00 	. 
	nop			;231e	00 	. 
	nop			;231f	00 	. 
	nop			;2320	00 	. 
	nop			;2321	00 	. 
	nop			;2322	00 	. 
	nop			;2323	00 	. 
	nop			;2324	00 	. 
	nop			;2325	00 	. 
	nop			;2326	00 	. 
	nop			;2327	00 	. 
	nop			;2328	00 	. 
	ret po			;2329	e0 	. 
	nop			;232a	00 	. 
	ld h,b			;232b	60 	` 
	nop			;232c	00 	. 
	ret p			;232d	f0 	. 
	ld h,b			;232e	60 	` 
	sub b			;232f	90 	. 
	nop			;2330	00 	. 
	sub b			;2331	90 	. 
	sub b			;2332	90 	. 
	nop			;2333	00 	. 
	nop			;2334	00 	. 
	ret po			;2335	e0 	. 
	nop			;2336	00 	. 
	ret po			;2337	e0 	. 
	nop			;2338	00 	. 
	ret po			;2339	e0 	. 
	ret po			;233a	e0 	. 
	nop			;233b	00 	. 
	nop			;233c	00 	. 
	nop			;233d	00 	. 
	nop			;233e	00 	. 
l233fh:
	nop			;233f	00 	. 
	inc bc			;2340	03 	. 
	nop			;2341	00 	. 
	inc bc			;2342	03 	. 
	nop			;2343	00 	. 
	rlca			;2344	07 	. 
	nop			;2345	00 	. 
	rlca			;2346	07 	. 
	nop			;2347	00 	. 
	rrca			;2348	0f 	. 
	nop			;2349	00 	. 
	rrca			;234a	0f 	. 
	nop			;234b	00 	. 
	rrca			;234c	0f 	. 
	nop			;234d	00 	. 
	rrca			;234e	0f 	. 
	ld bc,l001eh		;234f	01 1e 00 	. . . 
	rra			;2352	1f 	. 
	ld (bc),a			;2353	02 	. 
	inc e			;2354	1c 	. 
	ld bc,00b1fh		;2355	01 1f 0b 	. . . 
	inc d			;2358	14 	. 
	nop			;2359	00 	. 
	rra			;235a	1f 	. 
	ld b,0feh		;235b	06 fe 	. . 
	ld b,0feh		;235d	06 fe 	. . 
	ld bc,l01ffh		;235f	01 ff 01 	. . . 
	rst 38h			;2362	ff 	. 
	dec c			;2363	0d 	. 
	di			;2364	f3 	. 
	dec c			;2365	0d 	. 
	di			;2366	f3 	. 
	ld e,d			;2367	5a 	Z 
	and c			;2368	a1 	. 
	ld e,0e1h		;2369	1e e1 	. . 
	cp (hl)			;236b	be 	. 
	ld bc,0e15eh		;236c	01 5e e1 	. ^ . 
	inc e			;236f	1c 	. 
	inc bc			;2370	03 	. 
	call pe,sub_18f3h		;2371	ec f3 18 	. . . 
	ld b,a			;2374	47 	G 
	and b			;2375	a0 	. 
	cp a			;2376	bf 	. 
	inc c			;2377	0c 	. 
	ex (sp),hl			;2378	e3 	. 
	djnz l239ah		;2379	10 1f 	. . 
	nop			;237b	00 	. 
	nop			;237c	00 	. 
	nop			;237d	00 	. 
	nop			;237e	00 	. 
	nop			;237f	00 	. 
	nop			;2380	00 	. 
	nop			;2381	00 	. 
	nop			;2382	00 	. 
	nop			;2383	00 	. 
	nop			;2384	00 	. 
	nop			;2385	00 	. 
	nop			;2386	00 	. 
	add a,b			;2387	80 	. 
	add a,b			;2388	80 	. 
	add a,b			;2389	80 	. 
	add a,b			;238a	80 	. 
	add a,b			;238b	80 	. 
	add a,b			;238c	80 	. 
	add a,b			;238d	80 	. 
	add a,b			;238e	80 	. 
	add a,b			;238f	80 	. 
	add a,b			;2390	80 	. 
	add a,b			;2391	80 	. 
	add a,b			;2392	80 	. 
	add a,b			;2393	80 	. 
	add a,b			;2394	80 	. 
	add a,b			;2395	80 	. 
	add a,b			;2396	80 	. 
	add a,b			;2397	80 	. 
	add a,b			;2398	80 	. 
	add a,b			;2399	80 	. 
l239ah:
	add a,b			;239a	80 	. 
	ex af,af'			;239b	08 	. 
	ld d,000h		;239c	16 00 	. . 
	add hl,de			;239e	19 	. 
	ld a,(bc)			;239f	0a 	. 
	dec d			;23a0	15 	. 
	ld bc,l0317h+1		;23a1	01 18 03 	. . . 
	inc b			;23a4	04 	. 
	ex af,af'			;23a5	08 	. 
	ex af,af'			;23a6	08 	. 
	nop			;23a7	00 	. 
	rlca			;23a8	07 	. 
	ex af,af'			;23a9	08 	. 
	ex af,af'			;23aa	08 	. 
	nop			;23ab	00 	. 
	rlca			;23ac	07 	. 
	ex af,af'			;23ad	08 	. 
	ex af,af'			;23ae	08 	. 
	nop			;23af	00 	. 
	inc bc			;23b0	03 	. 
	inc b			;23b1	04 	. 
	inc b			;23b2	04 	. 
	nop			;23b3	00 	. 
	inc b			;23b4	04 	. 
	inc bc			;23b5	03 	. 
	inc bc			;23b6	03 	. 
	nop			;23b7	00 	. 
	rrca			;23b8	0f 	. 
	nop			;23b9	00 	. 
	nop			;23ba	00 	. 
	cpl			;23bb	2f 	/ 
	add a,b			;23bc	80 	. 
	djnz l241eh		;23bd	10 5f 	. _ 
	ld (hl),0c1h		;23bf	36 c1 	6 . 
	ld c,b			;23c1	48 	H 
	rrca			;23c2	0f 	. 
	ld (hl),a			;23c3	77 	w 
	add a,b			;23c4	80 	. 
	ex af,af'			;23c5	08 	. 
	rrca			;23c6	0f 	. 
	rlca			;23c7	07 	. 
	ret p			;23c8	f0 	. 
	ex af,af'			;23c9	08 	. 
	rrca			;23ca	0f 	. 
	add a,a			;23cb	87 	. 
	ld (hl),b			;23cc	70 	p 
	adc a,b			;23cd	88 	. 
	rrca			;23ce	0f 	. 
	rlca			;23cf	07 	. 
	ret po			;23d0	e0 	. 
	jr l23f2h		;23d1	18 1f 	. . 
	inc bc			;23d3	03 	. 
	inc e			;23d4	1c 	. 
	ret po			;23d5	e0 	. 
	ex (sp),hl			;23d6	e3 	. 
	ld bc,l00feh		;23d7	01 fe 00 	. . . 
	ld bc,0c040h		;23da	01 40 c0 	. @ . 
	ld b,b			;23dd	40 	@ 
	ret nz			;23de	c0 	. 
	ld b,b			;23df	40 	@ 
	ret nz			;23e0	c0 	. 
	ld b,b			;23e1	40 	@ 
	ret nz			;23e2	c0 	. 
	ld b,b			;23e3	40 	@ 
	ret nz			;23e4	c0 	. 
	ld b,b			;23e5	40 	@ 
	ret nz			;23e6	c0 	. 
	ld b,b			;23e7	40 	@ 
	ret nz			;23e8	c0 	. 
	ld b,b			;23e9	40 	@ 
	ret nz			;23ea	c0 	. 
	ld b,b			;23eb	40 	@ 
	ret nz			;23ec	c0 	. 
	ld b,b			;23ed	40 	@ 
	ret nz			;23ee	c0 	. 
	ld b,b			;23ef	40 	@ 
	ret nz			;23f0	c0 	. 
	ld b,b			;23f1	40 	@ 
l23f2h:
	ret nz			;23f2	c0 	. 
	ld b,b			;23f3	40 	@ 
	ret nz			;23f4	c0 	. 
	ld b,b			;23f5	40 	@ 
	ret nz			;23f6	c0 	. 
	ld b,b			;23f7	40 	@ 
	ret nz			;23f8	c0 	. 
	ld b,b			;23f9	40 	@ 
	ret nz			;23fa	c0 	. 
	nop			;23fb	00 	. 
	rra			;23fc	1f 	. 
	ld b,006h		;23fd	06 06 	. . 
	ld bc,l0f1eh		;23ff	01 1e 0f 	. . . 
	ld c,001h		;2402	0e 01 	. . 
	ld e,00fh		;2404	1e 0f 	. . 
	ld c,000h		;2406	0e 00 	. . 
	scf			;2408	37 	7 
	ex af,af'			;2409	08 	. 
	ex af,af'			;240a	08 	. 
	nop			;240b	00 	. 
	scf			;240c	37 	7 
	ex af,af'			;240d	08 	. 
	ex af,af'			;240e	08 	. 
	nop			;240f	00 	. 
	daa			;2410	27 	' 
	rla			;2411	17 	. 
	rla			;2412	17 	. 
	nop			;2413	00 	. 
	add hl,bc			;2414	09 	. 
	cpl			;2415	2f 	/ 
	cpl			;2416	2f 	/ 
	nop			;2417	00 	. 
	ld c,009h		;2418	0e 09 	. . 
	add hl,bc			;241a	09 	. 
	ld bc,0e876h		;241b	01 76 e8 	. v . 
l241eh:
	jp (hl)			;241e	e9 	. 
l241fh:
	nop			;241f	00 	. 
	ei			;2420	fb 	. 
l2421h:
	call c,sub_00dch		;2421	dc dc 00 	. . . 
	di			;2424	f3 	. 
	call m,sub_04fch		;2425	fc fc 04 	. . . 
	pop af			;2428	f1 	. 
l2429h:
	ld a,(bc)			;2429	0a 	. 
	ld c,004h		;242a	0e 04 	. . 
	pop af			;242c	f1 	. 
	ld a,(bc)			;242d	0a 	. 
	ld c,01ch		;242e	0e 1c 	. . 
	push hl			;2430	e5 	. 
	cp 0e6h		;2431	fe e6 	. . 
	ld c,0f2h		;2433	0e f2 	. . 
l2435h:
	cp 0f2h		;2435	fe f2 	. . 
l2437h:
	rlca			;2437	07 	. 
	ld sp,hl			;2438	f9 	. 
	rst 38h			;2439	ff 	. 
	ld sp,hl			;243a	f9 	. 
	jr nz,$-30		;243b	20 e0 	  . 
	jr nz,l241fh		;243d	20 e0 	  . 
	jr nz,l2421h		;243f	20 e0 	  . 
	jr nz,$-30		;2441	20 e0 	  . 
	djnz l2435h		;2443	10 f0 	. . 
	djnz l2437h		;2445	10 f0 	. . 
	jr nz,l2429h		;2447	20 e0 	  . 
	jr nz,l24abh		;2449	20 60 	  ` 
	nop			;244b	00 	. 
	ret nz			;244c	c0 	. 
	nop			;244d	00 	. 
	nop			;244e	00 	. 
	nop			;244f	00 	. 
	nop			;2450	00 	. 
	nop			;2451	00 	. 
	nop			;2452	00 	. 
	nop			;2453	00 	. 
	nop			;2454	00 	. 
	nop			;2455	00 	. 
	nop			;2456	00 	. 
	nop			;2457	00 	. 
	nop			;2458	00 	. 
	nop			;2459	00 	. 
	nop			;245a	00 	. 
	nop			;245b	00 	. 
	rrca			;245c	0f 	. 
	ex af,af'			;245d	08 	. 
	ex af,af'			;245e	08 	. 
	nop			;245f	00 	. 
	rlca			;2460	07 	. 
	nop			;2461	00 	. 
	nop			;2462	00 	. 
	nop			;2463	00 	. 
	rlca			;2464	07 	. 
	nop			;2465	00 	. 
	nop			;2466	00 	. 
	nop			;2467	00 	. 
	inc bc			;2468	03 	. 
	inc c			;2469	0c 	. 
	nop			;246a	00 	. 
	inc c			;246b	0c 	. 
	inc bc			;246c	03 	. 
	inc e			;246d	1c 	. 
	inc c			;246e	0c 	. 
	djnz l2471h		;246f	10 00 	. . 
l2471h:
	jr nc,l2483h		;2471	30 10 	0 . 
	ex af,af'			;2473	08 	. 
	nop			;2474	00 	. 
	ccf			;2475	3f 	? 
	ex af,af'			;2476	08 	. 
	cpl			;2477	2f 	/ 
	nop			;2478	00 	. 
	rst 28h			;2479	ef 	. 
	cpl			;247a	2f 	/ 
	ld b,08ah		;247b	06 8a 	. . 
	cp 0fah		;247d	fe fa 	. . 
	inc b			;247f	04 	. 
	ld (hl),h			;2480	74 	t 
	adc a,h			;2481	8c 	. 
	adc a,h			;2482	8c 	. 
l2483h:
	inc b			;2483	04 	. 
	ld (hl),h			;2484	74 	t 
	adc a,a			;2485	8f 	. 
	adc a,h			;2486	8c 	. 
	rlca			;2487	07 	. 
	ld (hl),h			;2488	74 	t 
	adc a,a			;2489	8f 	. 
	adc a,a			;248a	8f 	. 
	ex af,af'			;248b	08 	. 
	ld l,b			;248c	68 	h 
	sbc a,b			;248d	98 	. 
	sbc a,b			;248e	98 	. 
	ex af,af'			;248f	08 	. 
	ld l,b			;2490	68 	h 
	sbc a,a			;2491	9f 	. 
	sbc a,b			;2492	98 	. 
	rrca			;2493	0f 	. 
	ld l,b			;2494	68 	h 
	sbc a,a			;2495	9f 	. 
	sbc a,a			;2496	9f 	. 
	ret m			;2497	f8 	. 
	nop			;2498	00 	. 
	ret m			;2499	f8 	. 
	ret m			;249a	f8 	. 
	nop			;249b	00 	. 
	nop			;249c	00 	. 
	nop			;249d	00 	. 
	nop			;249e	00 	. 
	nop			;249f	00 	. 
	nop			;24a0	00 	. 
	nop			;24a1	00 	. 
	nop			;24a2	00 	. 
	nop			;24a3	00 	. 
	nop			;24a4	00 	. 
	nop			;24a5	00 	. 
	nop			;24a6	00 	. 
	nop			;24a7	00 	. 
	nop			;24a8	00 	. 
	ret po			;24a9	e0 	. 
	nop			;24aa	00 	. 
l24abh:
	ld h,b			;24ab	60 	` 
	nop			;24ac	00 	. 
	ret p			;24ad	f0 	. 
	ld h,b			;24ae	60 	` 
	sub b			;24af	90 	. 
	nop			;24b0	00 	. 
	sub b			;24b1	90 	. 
	sub b			;24b2	90 	. 
	nop			;24b3	00 	. 
	nop			;24b4	00 	. 
	ret po			;24b5	e0 	. 
	nop			;24b6	00 	. 
	ret po			;24b7	e0 	. 
	nop			;24b8	00 	. 
	ret po			;24b9	e0 	. 
	ret po			;24ba	e0 	. 
	nop			;24bb	00 	. 
	nop			;24bc	00 	. 
	nop			;24bd	00 	. 
	nop			;24be	00 	. 
	ld e,000h		;24bf	1e 00 	. . 
	ld e,000h		;24c1	1e 00 	. . 
	ccf			;24c3	3f 	? 
	nop			;24c4	00 	. 
	ccf			;24c5	3f 	? 
	nop			;24c6	00 	. 
	ld a,a			;24c7	7f 	 
	nop			;24c8	00 	. 
	ld a,a			;24c9	7f 	 
	nop			;24ca	00 	. 
	ld a,a			;24cb	7f 	 
	nop			;24cc	00 	. 
	ld a,a			;24cd	7f 	 
	nop			;24ce	00 	. 
	ld a,a			;24cf	7f 	 
	nop			;24d0	00 	. 
	ld a,a			;24d1	7f 	 
	nop			;24d2	00 	. 
	ld a,a			;24d3	7f 	 
	nop			;24d4	00 	. 
	ld a,a			;24d5	7f 	 
	nop			;24d6	00 	. 
	ccf			;24d7	3f 	? 
	nop			;24d8	00 	. 
	ccf			;24d9	3f 	? 
	nop			;24da	00 	. 
	nop			;24db	00 	. 
	nop			;24dc	00 	. 
	nop			;24dd	00 	. 
	nop			;24de	00 	. 
	jr nc,$+14		;24df	30 0c 	0 . 
	inc a			;24e1	3c 	< 
	inc c			;24e2	0c 	. 
	ld h,h			;24e3	64 	d 
	ld a,(de)			;24e4	1a 	. 
	ld a,d			;24e5	7a 	z 
	ld a,(de)			;24e6	1a 	. 
	jp nz,0fd3dh		;24e7	c2 3d fd 	. = . 
	dec a			;24ea	3d 	= 
	jp nz,0fd3dh		;24eb	c2 3d fd 	. = . 
	dec a			;24ee	3d 	= 
	add a,b			;24ef	80 	. 
	ld a,a			;24f0	7f 	 
	rst 38h			;24f1	ff 	. 
	ld a,a			;24f2	7f 	 
	add a,b			;24f3	80 	. 
	ld a,a			;24f4	7f 	 
	rst 38h			;24f5	ff 	. 
	ld a,a			;24f6	7f 	 
	add a,b			;24f7	80 	. 
	ld a,(hl)			;24f8	7e 	~ 
	cp 07eh		;24f9	fe 7e 	. ~ 
	ccf			;24fb	3f 	? 
	nop			;24fc	00 	. 
	ccf			;24fd	3f 	? 
	nop			;24fe	00 	. 
	rra			;24ff	1f 	. 
	nop			;2500	00 	. 
	rra			;2501	1f 	. 
	nop			;2502	00 	. 
	rrca			;2503	0f 	. 
	nop			;2504	00 	. 
	rrca			;2505	0f 	. 
	nop			;2506	00 	. 
	rlca			;2507	07 	. 
	nop			;2508	00 	. 
	rlca			;2509	07 	. 
	nop			;250a	00 	. 
	inc bc			;250b	03 	. 
	nop			;250c	00 	. 
	inc bc			;250d	03 	. 
	nop			;250e	00 	. 
	ld bc,l0100h		;250f	01 00 01 	. . . 
	nop			;2512	00 	. 
	nop			;2513	00 	. 
	nop			;2514	00 	. 
	nop			;2515	00 	. 
	nop			;2516	00 	. 
	nop			;2517	00 	. 
	nop			;2518	00 	. 
	nop			;2519	00 	. 
	nop			;251a	00 	. 
	nop			;251b	00 	. 
	cp 0feh		;251c	fe fe 	. . 
	cp 000h		;251e	fe 00 	. . 
	call m,0fcfch		;2520	fc fc fc 	. . . 
	nop			;2523	00 	. 
	ret m			;2524	f8 	. 
	ret m			;2525	f8 	. 
	ret m			;2526	f8 	. 
	nop			;2527	00 	. 
	ret p			;2528	f0 	. 
	ret p			;2529	f0 	. 
	ret p			;252a	f0 	. 
	nop			;252b	00 	. 
	ret po			;252c	e0 	. 
	ret po			;252d	e0 	. 
	ret po			;252e	e0 	. 
	nop			;252f	00 	. 
	ret nz			;2530	c0 	. 
	ret nz			;2531	c0 	. 
	ret nz			;2532	c0 	. 
	add a,b			;2533	80 	. 
	nop			;2534	00 	. 
	add a,b			;2535	80 	. 
	nop			;2536	00 	. 
	nop			;2537	00 	. 
	nop			;2538	00 	. 
	nop			;2539	00 	. 
	nop			;253a	00 	. 
	nop			;253b	00 	. 
	nop			;253c	00 	. 
	nop			;253d	00 	. 
	nop			;253e	00 	. 
	ld a,a			;253f	7f 	 
	ld a,a			;2540	7f 	 
	ld b,b			;2541	40 	@ 
	ld b,b			;2542	40 	@ 
	rst 38h			;2543	ff 	. 
	rst 18h			;2544	df 	. 
	adc a,a			;2545	8f 	. 
	adc a,a			;2546	8f 	. 
	rst 38h			;2547	ff 	. 
	ret m			;2548	f8 	. 
	sbc a,a			;2549	9f 	. 
	sbc a,h			;254a	9c 	. 
	rst 38h			;254b	ff 	. 
	ret p			;254c	f0 	. 
	sbc a,a			;254d	9f 	. 
	sbc a,e			;254e	9b 	. 
	rst 38h			;254f	ff 	. 
	di			;2550	f3 	. 
	sbc a,a			;2551	9f 	. 
	sbc a,e			;2552	9b 	. 
	rst 38h			;2553	ff 	. 
	di			;2554	f3 	. 
	sbc a,h			;2555	9c 	. 
	sbc a,b			;2556	98 	. 
	rst 38h			;2557	ff 	. 
	ret p			;2558	f0 	. 
	sbc a,a			;2559	9f 	. 
	sbc a,b			;255a	98 	. 
	nop			;255b	00 	. 
	nop			;255c	00 	. 
	nop			;255d	00 	. 
	nop			;255e	00 	. 
	cp 0cch		;255f	fe cc 	. . 
	nop			;2561	00 	. 
	nop			;2562	00 	. 
	rst 38h			;2563	ff 	. 
	cp 0fch		;2564	fe fc 	. . 
	call m,sub_07ffh		;2566	fc ff 07 	. . . 
	call m,0ff04h		;2569	fc 04 ff 	. . . 
	rlca			;256c	07 	. 
	call m,0fffch		;256d	fc fc ff 	. . . 
	rst 38h			;2570	ff 	. 
	call m,0fffch		;2571	fc fc ff 	. . . 
	rst 38h			;2574	ff 	. 
	nop			;2575	00 	. 
	nop			;2576	00 	. 
	rst 38h			;2577	ff 	. 
	rlca			;2578	07 	. 
	call m,0ff04h		;2579	fc 04 ff 	. . . 
	ret m			;257c	f8 	. 
	sbc a,a			;257d	9f 	. 
	sbc a,a			;257e	9f 	. 
	rst 38h			;257f	ff 	. 
	rst 38h			;2580	ff 	. 
	adc a,a			;2581	8f 	. 
	adc a,a			;2582	8f 	. 
	rst 38h			;2583	ff 	. 
	rst 38h			;2584	ff 	. 
	add a,b			;2585	80 	. 
	add a,b			;2586	80 	. 
	rst 38h			;2587	ff 	. 
	ret po			;2588	e0 	. 
	cp a			;2589	bf 	. 
	and b			;258a	a0 	. 
	rst 38h			;258b	ff 	. 
	ret nc			;258c	d0 	. 
	sbc a,a			;258d	9f 	. 
	sbc a,a			;258e	9f 	. 
	rst 38h			;258f	ff 	. 
	rst 28h			;2590	ef 	. 
	adc a,a			;2591	8f 	. 
	adc a,a			;2592	8f 	. 
	rst 38h			;2593	ff 	. 
	rst 38h			;2594	ff 	. 
	ret nz			;2595	c0 	. 
	ret nz			;2596	c0 	. 
	ld a,a			;2597	7f 	 
	ld a,a			;2598	7f 	 
	ld a,a			;2599	7f 	 
	ld a,a			;259a	7f 	 
	rst 38h			;259b	ff 	. 
	rlca			;259c	07 	. 
	call m,0fff4h		;259d	fc f4 ff 	. . . 
	and 0fch		;25a0	e6 fc 	. . 
	call p,0e6ffh		;25a2	f4 ff e6 	. . . 
	inc a			;25a5	3c 	< 
	inc (hl)			;25a6	34 	4 
	rst 38h			;25a7	ff 	. 
	rlca			;25a8	07 	. 
	call m,0ff04h		;25a9	fc 04 ff 	. . . 
	ld b,0fch		;25ac	06 fc 	. . 
	call m,0ffffh		;25ae	fc ff ff 	. . . 
	call m,0fffch		;25b1	fc fc ff 	. . . 
	rst 38h			;25b4	ff 	. 
	ld bc,0fe01h		;25b5	01 01 fe 	. . . 
	cp 0feh		;25b8	fe fe 	. . 
	cp 000h		;25ba	fe 00 	. . 
	nop			;25bc	00 	. 
	nop			;25bd	00 	. 
	nop			;25be	00 	. 
	ld a,a			;25bf	7f 	 
	ld a,a			;25c0	7f 	 
	ld b,b			;25c1	40 	@ 
	ld b,b			;25c2	40 	@ 
	rst 38h			;25c3	ff 	. 
	rst 18h			;25c4	df 	. 
	adc a,a			;25c5	8f 	. 
	adc a,a			;25c6	8f 	. 
	rst 38h			;25c7	ff 	. 
	ret m			;25c8	f8 	. 
	sbc a,a			;25c9	9f 	. 
	sbc a,h			;25ca	9c 	. 
	rst 38h			;25cb	ff 	. 
	ret p			;25cc	f0 	. 
	sbc a,a			;25cd	9f 	. 
	sbc a,e			;25ce	9b 	. 
	rst 38h			;25cf	ff 	. 
	di			;25d0	f3 	. 
	sbc a,a			;25d1	9f 	. 
	sbc a,e			;25d2	9b 	. 
	rst 38h			;25d3	ff 	. 
	di			;25d4	f3 	. 
	sbc a,h			;25d5	9c 	. 
	sbc a,b			;25d6	98 	. 
	rst 38h			;25d7	ff 	. 
	ret p			;25d8	f0 	. 
	sbc a,a			;25d9	9f 	. 
	sbc a,b			;25da	98 	. 
	nop			;25db	00 	. 
	nop			;25dc	00 	. 
	nop			;25dd	00 	. 
	nop			;25de	00 	. 
	cp 0cch		;25df	fe cc 	. . 
	nop			;25e1	00 	. 
	nop			;25e2	00 	. 
	rst 38h			;25e3	ff 	. 
	cp 0f8h		;25e4	fe f8 	. . 
	ret m			;25e6	f8 	. 
	rst 38h			;25e7	ff 	. 
	rrca			;25e8	0f 	. 
	call m,0ff0ch		;25e9	fc 0c ff 	. . . 
	rlca			;25ec	07 	. 
	call m,0fff4h		;25ed	fc f4 ff 	. . . 
	rst 20h			;25f0	e7 	. 
	call m,0fff4h		;25f1	fc f4 ff 	. . . 
	rst 20h			;25f4	e7 	. 
	inc a			;25f5	3c 	< 
	inc (hl)			;25f6	34 	4 
	rst 38h			;25f7	ff 	. 
	rlca			;25f8	07 	. 
	call m,0ff04h		;25f9	fc 04 ff 	. . . 
	ret p			;25fc	f0 	. 
	sbc a,a			;25fd	9f 	. 
	sbc a,e			;25fe	9b 	. 
	rst 38h			;25ff	ff 	. 
	di			;2600	f3 	. 
	sbc a,a			;2601	9f 	. 
	sbc a,e			;2602	9b 	. 
	rst 38h			;2603	ff 	. 
	di			;2604	f3 	. 
	sbc a,h			;2605	9c 	. 
	sbc a,b			;2606	98 	. 
	rst 38h			;2607	ff 	. 
	ret p			;2608	f0 	. 
	sbc a,a			;2609	9f 	. 
	sbc a,h			;260a	9c 	. 
	rst 38h			;260b	ff 	. 
	ret c			;260c	d8 	. 
	sbc a,a			;260d	9f 	. 
	sbc a,a			;260e	9f 	. 
	rst 38h			;260f	ff 	. 
	rst 28h			;2610	ef 	. 
	adc a,a			;2611	8f 	. 
	adc a,a			;2612	8f 	. 
	rst 38h			;2613	ff 	. 
	rst 38h			;2614	ff 	. 
	ret nz			;2615	c0 	. 
	ret nz			;2616	c0 	. 
	ld a,a			;2617	7f 	 
	ld a,a			;2618	7f 	 
	ld a,a			;2619	7f 	 
	ld a,a			;261a	7f 	 
	rst 38h			;261b	ff 	. 
	rlca			;261c	07 	. 
	call m,0fffch		;261d	fc fc ff 	. . . 
	cp 0fch		;2620	fe fc 	. . 
	call m,0feffh		;2622	fc ff fe 	. . . 
	nop			;2625	00 	. 
	nop			;2626	00 	. 
	rst 38h			;2627	ff 	. 
	rlca			;2628	07 	. 
	call m,0ff04h		;2629	fc 04 ff 	. . . 
	ld b,0fch		;262c	06 fc 	. . 
	call m,0ffffh		;262e	fc ff ff 	. . . 
	call m,0fffch		;2631	fc fc ff 	. . . 
	rst 38h			;2634	ff 	. 
	ld bc,0fe01h		;2635	01 01 fe 	. . . 
	cp 0feh		;2638	fe fe 	. . 
	cp 000h		;263a	fe 00 	. . 
	nop			;263c	00 	. 
	nop			;263d	00 	. 
	nop			;263e	00 	. 
	ld a,a			;263f	7f 	 
	ld a,a			;2640	7f 	 
	ld b,b			;2641	40 	@ 
	ld b,b			;2642	40 	@ 
	rst 38h			;2643	ff 	. 
	rst 18h			;2644	df 	. 
	adc a,a			;2645	8f 	. 
	adc a,a			;2646	8f 	. 
	rst 38h			;2647	ff 	. 
	ret m			;2648	f8 	. 
	sbc a,a			;2649	9f 	. 
	sbc a,h			;264a	9c 	. 
	rst 38h			;264b	ff 	. 
	ret p			;264c	f0 	. 
	sbc a,a			;264d	9f 	. 
	sbc a,e			;264e	9b 	. 
	rst 38h			;264f	ff 	. 
	di			;2650	f3 	. 
	sbc a,a			;2651	9f 	. 
	sbc a,e			;2652	9b 	. 
	rst 38h			;2653	ff 	. 
	di			;2654	f3 	. 
	sbc a,(hl)			;2655	9e 	. 
	sbc a,d			;2656	9a 	. 
	rst 38h			;2657	ff 	. 
	di			;2658	f3 	. 
	sbc a,(hl)			;2659	9e 	. 
	sbc a,d			;265a	9a 	. 
	nop			;265b	00 	. 
	nop			;265c	00 	. 
	nop			;265d	00 	. 
	nop			;265e	00 	. 
	cp 0cch		;265f	fe cc 	. . 
	nop			;2661	00 	. 
	nop			;2662	00 	. 
	rst 38h			;2663	ff 	. 
	cp 0fch		;2664	fe fc 	. . 
	call m,sub_07ffh		;2666	fc ff 07 	. . . 
	call m,0ff04h		;2669	fc 04 ff 	. . . 
	rlca			;266c	07 	. 
	call m,0fffch		;266d	fc fc ff 	. . . 
	rst 38h			;2670	ff 	. 
	call m,0fffch		;2671	fc fc ff 	. . . 
	rst 38h			;2674	ff 	. 
	nop			;2675	00 	. 
	nop			;2676	00 	. 
	rst 38h			;2677	ff 	. 
	rst 38h			;2678	ff 	. 
	inc a			;2679	3c 	< 
	inc a			;267a	3c 	< 
	rst 38h			;267b	ff 	. 
	di			;267c	f3 	. 
	sbc a,(hl)			;267d	9e 	. 
	sbc a,d			;267e	9a 	. 
	rst 38h			;267f	ff 	. 
	di			;2680	f3 	. 
	sbc a,(hl)			;2681	9e 	. 
	sbc a,d			;2682	9a 	. 
	rst 38h			;2683	ff 	. 
	di			;2684	f3 	. 
	sbc a,a			;2685	9f 	. 
	sbc a,e			;2686	9b 	. 
	rst 38h			;2687	ff 	. 
	ret p			;2688	f0 	. 
	sbc a,a			;2689	9f 	. 
	sbc a,h			;268a	9c 	. 
	rst 38h			;268b	ff 	. 
	ret c			;268c	d8 	. 
	sbc a,a			;268d	9f 	. 
	sbc a,a			;268e	9f 	. 
	rst 38h			;268f	ff 	. 
	rst 28h			;2690	ef 	. 
	adc a,a			;2691	8f 	. 
	adc a,a			;2692	8f 	. 
	rst 38h			;2693	ff 	. 
	rst 38h			;2694	ff 	. 
	ret nz			;2695	c0 	. 
	ret nz			;2696	c0 	. 
	ld a,a			;2697	7f 	 
	ld a,a			;2698	7f 	 
	ld a,a			;2699	7f 	 
	ld a,a			;269a	7f 	 
	rst 38h			;269b	ff 	. 
	rst 20h			;269c	e7 	. 
	inc a			;269d	3c 	< 
	inc (hl)			;269e	34 	4 
	rst 38h			;269f	ff 	. 
	and 03ch		;26a0	e6 3c 	. < 
	inc (hl)			;26a2	34 	4 
	rst 38h			;26a3	ff 	. 
	and 0fch		;26a4	e6 fc 	. . 
	call p,sub_07ffh		;26a6	f4 ff 07 	. . . 
	call m,0ff04h		;26a9	fc 04 ff 	. . . 
	ld b,0fch		;26ac	06 fc 	. . 
	call m,0ffffh		;26ae	fc ff ff 	. . . 
	call m,0fffch		;26b1	fc fc ff 	. . . 
	rst 38h			;26b4	ff 	. 
	ld bc,0fe01h		;26b5	01 01 fe 	. . . 
	cp 0feh		;26b8	fe fe 	. . 
	cp 000h		;26ba	fe 00 	. . 
	nop			;26bc	00 	. 
	nop			;26bd	00 	. 
	nop			;26be	00 	. 
	ld a,a			;26bf	7f 	 
	ld a,a			;26c0	7f 	 
	ld b,b			;26c1	40 	@ 
	ld b,b			;26c2	40 	@ 
	rst 38h			;26c3	ff 	. 
	rst 18h			;26c4	df 	. 
	add a,a			;26c5	87 	. 
	add a,a			;26c6	87 	. 
	rst 38h			;26c7	ff 	. 
	ret m			;26c8	f8 	. 
	adc a,a			;26c9	8f 	. 
	adc a,h			;26ca	8c 	. 
	rst 38h			;26cb	ff 	. 
	ret m			;26cc	f8 	. 
	adc a,a			;26cd	8f 	. 
	adc a,l			;26ce	8d 	. 
	rst 38h			;26cf	ff 	. 
	ld sp,hl			;26d0	f9 	. 
	adc a,a			;26d1	8f 	. 
	adc a,l			;26d2	8d 	. 
	rst 38h			;26d3	ff 	. 
	di			;26d4	f3 	. 
	sbc a,(hl)			;26d5	9e 	. 
	sbc a,d			;26d6	9a 	. 
	rst 38h			;26d7	ff 	. 
	di			;26d8	f3 	. 
	sbc a,(hl)			;26d9	9e 	. 
	sbc a,d			;26da	9a 	. 
	nop			;26db	00 	. 
	nop			;26dc	00 	. 
	nop			;26dd	00 	. 
	nop			;26de	00 	. 
	cp 0cch		;26df	fe cc 	. . 
	nop			;26e1	00 	. 
	nop			;26e2	00 	. 
	rst 38h			;26e3	ff 	. 
	cp 0e0h		;26e4	fe e0 	. . 
	ret po			;26e6	e0 	. 
	rst 38h			;26e7	ff 	. 
	rra			;26e8	1f 	. 
	ret p			;26e9	f0 	. 
	djnz $+1		;26ea	10 ff 	. . 
	rra			;26ec	1f 	. 
	ret p			;26ed	f0 	. 
	ret nc			;26ee	d0 	. 
	rst 38h			;26ef	ff 	. 
	sbc a,a			;26f0	9f 	. 
	ret p			;26f1	f0 	. 
	ret nc			;26f2	d0 	. 
	rst 38h			;26f3	ff 	. 
	rst 8			;26f4	cf 	. 
	ld a,b			;26f5	78 	x 
	ld l,b			;26f6	68 	h 
	rst 38h			;26f7	ff 	. 
	rst 8			;26f8	cf 	. 
	ld a,b			;26f9	78 	x 
	ld l,b			;26fa	68 	h 
	rst 38h			;26fb	ff 	. 
	di			;26fc	f3 	. 
	sbc a,(hl)			;26fd	9e 	. 
	sbc a,d			;26fe	9a 	. 
	rst 38h			;26ff	ff 	. 
	di			;2700	f3 	. 
	sbc a,(hl)			;2701	9e 	. 
	sbc a,d			;2702	9a 	. 
	rst 38h			;2703	ff 	. 
	rst 20h			;2704	e7 	. 
	cp h			;2705	bc 	. 
	or h			;2706	b4 	. 
	rst 38h			;2707	ff 	. 
	rst 20h			;2708	e7 	. 
	cp l			;2709	bd 	. 
	or l			;270a	b5 	. 
	rst 38h			;270b	ff 	. 
	rst 20h			;270c	e7 	. 
	cp l			;270d	bd 	. 
	cp l			;270e	bd 	. 
	rst 38h			;270f	ff 	. 
	rst 38h			;2710	ff 	. 
	cp l			;2711	bd 	. 
	cp l			;2712	bd 	. 
	rst 38h			;2713	ff 	. 
	rst 38h			;2714	ff 	. 
	ret nz			;2715	c0 	. 
	ret nz			;2716	c0 	. 
	ld a,a			;2717	7f 	 
	ld a,a			;2718	7f 	 
	ld a,a			;2719	7f 	 
	ld a,a			;271a	7f 	 
	rst 38h			;271b	ff 	. 
	rst 8			;271c	cf 	. 
	ld a,b			;271d	78 	x 
	ld l,b			;271e	68 	h 
	rst 38h			;271f	ff 	. 
	and 03ch		;2720	e6 3c 	. < 
	inc (hl)			;2722	34 	4 
	rst 38h			;2723	ff 	. 
	and 03ch		;2724	e6 3c 	. < 
	inc (hl)			;2726	34 	4 
	rst 38h			;2727	ff 	. 
	rlca			;2728	07 	. 
	call m,0ff84h		;2729	fc 84 ff 	. . . 
	ld b,0fch		;272c	06 fc 	. . 
	call m,0ffffh		;272e	fc ff ff 	. . . 
	call m,0fffch		;2731	fc fc ff 	. . . 
	rst 38h			;2734	ff 	. 
	ld bc,0fe01h		;2735	01 01 fe 	. . . 
	cp 0feh		;2738	fe fe 	. . 
	cp 004h		;273a	fe 04 	. . 
	nop			;273c	00 	. 
	ld b,004h		;273d	06 04 	. . 
	inc b			;273f	04 	. 
	nop			;2740	00 	. 
	ld b,004h		;2741	06 04 	. . 
	ld (de),a			;2743	12 	. 
	nop			;2744	00 	. 
	dec de			;2745	1b 	. 
	ld (de),a			;2746	12 	. 
	ld d,004h		;2747	16 04 	. . 
	ld a,e			;2749	7b 	{ 
	ld (de),a			;274a	12 	. 
	ld hl,(l3effh+1)		;274b	2a 00 3f 	* . ? 
	ld hl,(l0015h)		;274e	2a 15 00 	* . . 
	ld a,a			;2751	7f 	 
	dec d			;2752	15 	. 
	ex de,hl			;2753	eb 	. 
	nop			;2754	00 	. 
	rst 38h			;2755	ff 	. 
	jp pe,l1017h		;2756	ea 17 10 	. . . 
	ld a,l			;2759	7d 	} 
	djnz l275ch		;275a	10 00 	. . 
l275ch:
	nop			;275c	00 	. 
	nop			;275d	00 	. 
	nop			;275e	00 	. 
	nop			;275f	00 	. 
	nop			;2760	00 	. 
	nop			;2761	00 	. 
	nop			;2762	00 	. 
	add a,b			;2763	80 	. 
	nop			;2764	00 	. 
	ret po			;2765	e0 	. 
	add a,b			;2766	80 	. 
	and b			;2767	a0 	. 
	nop			;2768	00 	. 
	ret p			;2769	f0 	. 
	and b			;276a	a0 	. 
l276bh:
	ret nz			;276b	c0 	. 
	nop			;276c	00 	. 
	ret po			;276d	e0 	. 
	ret nz			;276e	c0 	. 
	ret p			;276f	f0 	. 
	nop			;2770	00 	. 
	ret p			;2771	f0 	. 
	nop			;2772	00 	. 
sub_2773h:
	ret p			;2773	f0 	. 
	nop			;2774	00 	. 
	ret p			;2775	f0 	. 
	nop			;2776	00 	. 
	ret m			;2777	f8 	. 
	nop			;2778	00 	. 
	ld e,b			;2779	58 	X 
	nop			;277a	00 	. 
	ld a,a			;277b	7f 	 
	nop			;277c	00 	. 
	ld a,l			;277d	7d 	} 
	ld h,b			;277e	60 	` 
l277fh:
	cpl			;277f	2f 	/ 
	jr nz,l277fh		;2780	20 fd 	  . 
	jr nz,l276bh		;2782	20 e7 	  . 
	ret po			;2784	e0 	. 
	cp 0e0h		;2785	fe e0 	. . 
	inc de			;2787	13 	. 
	djnz $+33		;2788	10 1f 	. . 
	djnz l2795h		;278a	10 09 	. . 
	ex af,af'			;278c	08 	. 
	rrca			;278d	0f 	. 
	ex af,af'			;278e	08 	. 
	inc b			;278f	04 	. 
	inc b			;2790	04 	. 
	rlca			;2791	07 	. 
	inc b			;2792	04 	. 
	ld (bc),a			;2793	02 	. 
	ld (bc),a			;2794	02 	. 
l2795h:
	inc bc			;2795	03 	. 
	ld (bc),a			;2796	02 	. 
	ld bc,l0101h		;2797	01 01 01 	. . . 
	ld bc,000fch		;279a	01 fc 00 	. . . 
	ld e,h			;279d	5c 	\ 
	nop			;279e	00 	. 
	call m,05c00h		;279f	fc 00 5c 	. . \ 
l27a2h:
	inc b			;27a2	04 	. 
	call m,0bc00h		;27a3	fc 00 bc 	. . . 
	inc c			;27a6	0c 	. 
	call m,0fc04h		;27a7	fc 04 fc 	. . . 
	inc e			;27aa	1c 	. 
	ret m			;27ab	f8 	. 
	ex af,af'			;27ac	08 	. 
	ret m			;27ad	f8 	. 
	ld a,b			;27ae	78 	x 
	ret p			;27af	f0 	. 
	djnz l27a2h		;27b0	10 f0 	. . 
	ret p			;27b2	f0 	. 
	ret po			;27b3	e0 	. 
	ld h,b			;27b4	60 	` 
	ret po			;27b5	e0 	. 
	ret po			;27b6	e0 	. 
	add a,b			;27b7	80 	. 
	add a,b			;27b8	80 	. 
	add a,b			;27b9	80 	. 
	add a,b			;27ba	80 	. 
	nop			;27bb	00 	. 
	nop			;27bc	00 	. 
	nop			;27bd	00 	. 
l27beh:
	nop			;27be	00 	. 
	nop			;27bf	00 	. 
	nop			;27c0	00 	. 
	nop			;27c1	00 	. 
	nop			;27c2	00 	. 
	inc bc			;27c3	03 	. 
	nop			;27c4	00 	. 
	nop			;27c5	00 	. 
	nop			;27c6	00 	. 
	rrca			;27c7	0f 	. 
	nop			;27c8	00 	. 
	nop			;27c9	00 	. 
	nop			;27ca	00 	. 
	ccf			;27cb	3f 	? 
	nop			;27cc	00 	. 
	nop			;27cd	00 	. 
	nop			;27ce	00 	. 
	ld a,a			;27cf	7f 	 
	jr nz,l27d2h		;27d0	20 00 	  . 
l27d2h:
	nop			;27d2	00 	. 
	rst 38h			;27d3	ff 	. 
	ld h,b			;27d4	60 	` 
	nop			;27d5	00 	. 
	nop			;27d6	00 	. 
	cp a			;27d7	bf 	. 
	or b			;27d8	b0 	. 
	ld b,b			;27d9	40 	@ 
	nop			;27da	00 	. 
	nop			;27db	00 	. 
	nop			;27dc	00 	. 
	nop			;27dd	00 	. 
	nop			;27de	00 	. 
	nop			;27df	00 	. 
	nop			;27e0	00 	. 
	nop			;27e1	00 	. 
	nop			;27e2	00 	. 
	ret po			;27e3	e0 	. 
	nop			;27e4	00 	. 
	nop			;27e5	00 	. 
	nop			;27e6	00 	. 
	ret m			;27e7	f8 	. 
	nop			;27e8	00 	. 
	nop			;27e9	00 	. 
	nop			;27ea	00 	. 
	call m,l0000h		;27eb	fc 00 00 	. . . 
	nop			;27ee	00 	. 
	cp 000h		;27ef	fe 00 	. . 
	nop			;27f1	00 	. 
	nop			;27f2	00 	. 
	cp 000h		;27f3	fe 00 	. . 
	nop			;27f5	00 	. 
	nop			;27f6	00 	. 
	rst 38h			;27f7	ff 	. 
	nop			;27f8	00 	. 
	nop			;27f9	00 	. 
	nop			;27fa	00 	. 
	ccf			;27fb	3f 	? 
	jr c,l27beh		;27fc	38 c0 	8 . 
	nop			;27fe	00 	. 
	cp a			;27ff	bf 	. 
	cp (hl)			;2800	be 	. 
	ret nz			;2801	c0 	. 
	add a,b			;2802	80 	. 
	sbc a,a			;2803	9f 	. 
	sbc a,a			;2804	9f 	. 
	ret po			;2805	e0 	. 
	add a,b			;2806	80 	. 
	ld b,a			;2807	47 	G 
	ld b,a			;2808	47 	G 
	ld a,b			;2809	78 	x 
	ld b,b			;280a	40 	@ 
	ld sp,l3e31h		;280b	31 31 3e 	1 1 > 
	jr nc,l281ch		;280e	30 0c 	0 . 
	inc c			;2810	0c 	. 
	rrca			;2811	0f 	. 
	inc c			;2812	0c 	. 
	inc bc			;2813	03 	. 
l2814h:
	inc bc			;2814	03 	. 
	inc bc			;2815	03 	. 
	inc bc			;2816	03 	. 
	nop			;2817	00 	. 
	nop			;2818	00 	. 
	nop			;2819	00 	. 
	nop			;281a	00 	. 
	rst 38h			;281b	ff 	. 
l281ch:
	ld bc,l0000h		;281c	01 00 00 	. . . 
	cp 002h		;281f	fe 02 	. . 
	nop			;2821	00 	. 
	nop			;2822	00 	. 
	call m,sub_02cch		;2823	fc cc 02 	. . . 
	nop			;2826	00 	. 
	ret m			;2827	f8 	. 
	ret m			;2828	f8 	. 
	inc b			;2829	04 	. 
	nop			;282a	00 	. 
	ret po			;282b	e0 	. 
	ret po			;282c	e0 	. 
	jr l282fh		;282d	18 00 	. . 
l282fh:
	jr l2849h		;282f	18 18 	. . 
	ret m			;2831	f8 	. 
	jr l2814h		;2832	18 e0 	. . 
	ret po			;2834	e0 	. 
	ret po			;2835	e0 	. 
	ret po			;2836	e0 	. 
	nop			;2837	00 	. 
	nop			;2838	00 	. 
	nop			;2839	00 	. 
	nop			;283a	00 	. 
	nop			;283b	00 	. 
	nop			;283c	00 	. 
	nop			;283d	00 	. 
	nop			;283e	00 	. 
l283fh:
	nop			;283f	00 	. 
	nop			;2840	00 	. 
	nop			;2841	00 	. 
	nop			;2842	00 	. 
	inc bc			;2843	03 	. 
	nop			;2844	00 	. 
	ld bc,l0f01h		;2845	01 01 0f 	. . . 
	nop			;2848	00 	. 
l2849h:
	ld bc,l3f01h		;2849	01 01 3f 	. . ? 
	nop			;284c	00 	. 
	ld bc,07f01h		;284d	01 01 7f 	. .  
	jr nz,l2852h		;2850	20 00 	  . 
l2852h:
	nop			;2852	00 	. 
	rst 38h			;2853	ff 	. 
	ld h,b			;2854	60 	` 
	nop			;2855	00 	. 
	nop			;2856	00 	. 
	cp a			;2857	bf 	. 
	or b			;2858	b0 	. 
	ld b,b			;2859	40 	@ 
	nop			;285a	00 	. 
	nop			;285b	00 	. 
	nop			;285c	00 	. 
	nop			;285d	00 	. 
	nop			;285e	00 	. 
	nop			;285f	00 	. 
	nop			;2860	00 	. 
	nop			;2861	00 	. 
	nop			;2862	00 	. 
	ret po			;2863	e0 	. 
	nop			;2864	00 	. 
	nop			;2865	00 	. 
	nop			;2866	00 	. 
	ret m			;2867	f8 	. 
	nop			;2868	00 	. 
	nop			;2869	00 	. 
	nop			;286a	00 	. 
	call m,l1000h		;286b	fc 00 10 	. . . 
l286eh:
	djnz l286eh		;286e	10 fe 	. . 
	nop			;2870	00 	. 
	sub b			;2871	90 	. 
	sub b			;2872	90 	. 
	cp 000h		;2873	fe 00 	. . 
	and b			;2875	a0 	. 
	and b			;2876	a0 	. 
	rst 38h			;2877	ff 	. 
	nop			;2878	00 	. 
	ld b,b			;2879	40 	@ 
	ld b,b			;287a	40 	@ 
	ccf			;287b	3f 	? 
	jr c,l283fh		;287c	38 c1 	8 . 
	ld bc,0bebfh		;287e	01 bf be 	. . . 
	ret nz			;2881	c0 	. 
	add a,b			;2882	80 	. 
	sbc a,a			;2883	9f 	. 
	sbc a,a			;2884	9f 	. 
	ret po			;2885	e0 	. 
	add a,b			;2886	80 	. 
	ld b,a			;2887	47 	G 
	ld b,a			;2888	47 	G 
	ld a,b			;2889	78 	x 
	ld b,b			;288a	40 	@ 
	ld sp,l3e31h		;288b	31 31 3e 	1 1 > 
	jr nc,l289ch		;288e	30 0c 	0 . 
	inc c			;2890	0c 	. 
	rrca			;2891	0f 	. 
	inc c			;2892	0c 	. 
	inc bc			;2893	03 	. 
	inc bc			;2894	03 	. 
	inc bc			;2895	03 	. 
	inc bc			;2896	03 	. 
	nop			;2897	00 	. 
	nop			;2898	00 	. 
	nop			;2899	00 	. 
	nop			;289a	00 	. 
	rst 38h			;289b	ff 	. 
l289ch:
	ld bc,04040h		;289c	01 40 40 	. @ @ 
	cp 002h		;289f	fe 02 	. . 
	add a,b			;28a1	80 	. 
l28a2h:
	add a,b			;28a2	80 	. 
	call m,0824ch		;28a3	fc 4c 82 	. L . 
	add a,b			;28a6	80 	. 
	ret m			;28a7	f8 	. 
	ld a,b			;28a8	78 	x 
	add a,h			;28a9	84 	. 
l28aah:
	add a,b			;28aa	80 	. 
	ret po			;28ab	e0 	. 
	and b			;28ac	a0 	. 
	ld e,b			;28ad	58 	X 
	ld b,b			;28ae	40 	@ 
	ld e,b			;28af	58 	X 
	jr l28aah		;28b0	18 f8 	. . 
	ld e,b			;28b2	58 	X 
	ret po			;28b3	e0 	. 
	ret po			;28b4	e0 	. 
	ret po			;28b5	e0 	. 
	ret po			;28b6	e0 	. 
	nop			;28b7	00 	. 
	nop			;28b8	00 	. 
	nop			;28b9	00 	. 
	nop			;28ba	00 	. 
	nop			;28bb	00 	. 
	nop			;28bc	00 	. 
	nop			;28bd	00 	. 
	nop			;28be	00 	. 
	nop			;28bf	00 	. 
	nop			;28c0	00 	. 
	nop			;28c1	00 	. 
	nop			;28c2	00 	. 
	inc bc			;28c3	03 	. 
	nop			;28c4	00 	. 
	nop			;28c5	00 	. 
	nop			;28c6	00 	. 
	rrca			;28c7	0f 	. 
	nop			;28c8	00 	. 
	nop			;28c9	00 	. 
	nop			;28ca	00 	. 
	ld a,000h		;28cb	3e 00 	> . 
	ld bc,l3effh+1		;28cd	01 00 3f 	. . ? 
	jr nz,l2912h		;28d0	20 40 	  @ 
	nop			;28d2	00 	. 
	rst 38h			;28d3	ff 	. 
	jr nz,l28a2h		;28d4	20 cc 	  . 
	nop			;28d6	00 	. 
	cp a			;28d7	bf 	. 
	and b			;28d8	a0 	. 
	ld e,(hl)			;28d9	5e 	^ 
	nop			;28da	00 	. 
	nop			;28db	00 	. 
l28dch:
	nop			;28dc	00 	. 
	nop			;28dd	00 	. 
	nop			;28de	00 	. 
	nop			;28df	00 	. 
	nop			;28e0	00 	. 
	nop			;28e1	00 	. 
	nop			;28e2	00 	. 
	ret po			;28e3	e0 	. 
	nop			;28e4	00 	. 
	nop			;28e5	00 	. 
	nop			;28e6	00 	. 
	jr c,l28e9h		;28e7	38 00 	8 . 
l28e9h:
	ret nz			;28e9	c0 	. 
	nop			;28ea	00 	. 
	inc e			;28eb	1c 	. 
	nop			;28ec	00 	. 
	ret po			;28ed	e0 	. 
	nop			;28ee	00 	. 
	ld a,000h		;28ef	3e 00 	> . 
	ret nz			;28f1	c0 	. 
	nop			;28f2	00 	. 
	jp m,l0400h		;28f3	fa 00 04 	. . . 
l28f6h:
	nop			;28f6	00 	. 
	rst 8			;28f7	cf 	. 
	nop			;28f8	00 	. 
	jr nc,l28fbh		;28f9	30 00 	0 . 
l28fbh:
	ccf			;28fb	3f 	? 
	jr nz,l28dch		;28fc	20 de 	  . 
	nop			;28fe	00 	. 
	cp a			;28ff	bf 	. 
	or d			;2900	b2 	. 
	call z,0ff80h		;2901	cc 80 ff 	. . . 
	sbc a,a			;2904	9f 	. 
	ret po			;2905	e0 	. 
	ret po			;2906	e0 	. 
	ld h,a			;2907	67 	g 
	ld b,a			;2908	47 	G 
	ld a,b			;2909	78 	x 
	ld h,b			;290a	60 	` 
	scf			;290b	37 	7 
	ld sp,l363eh		;290c	31 3e 36 	1 > 6 
	ld c,00ch		;290f	0e 0c 	. . 
	rrca			;2911	0f 	. 
l2912h:
	ld c,003h		;2912	0e 03 	. . 
l2914h:
	inc bc			;2914	03 	. 
	inc bc			;2915	03 	. 
	inc bc			;2916	03 	. 
	nop			;2917	00 	. 
	nop			;2918	00 	. 
	nop			;2919	00 	. 
	nop			;291a	00 	. 
	rst 8			;291b	cf 	. 
	ld bc,00030h		;291c	01 30 00 	. 0 . 
	cp 002h		;291f	fe 02 	. . 
	nop			;2921	00 	. 
l2922h:
	nop			;2922	00 	. 
	call m,0c20ch		;2923	fc 0c c2 	. . . 
	nop			;2926	00 	. 
	ret m			;2927	f8 	. 
	jr nc,l28f6h		;2928	30 cc 	0 . 
	nop			;292a	00 	. 
	ret po			;292b	e0 	. 
	ret po			;292c	e0 	. 
	jr l292fh		;292d	18 00 	. . 
l292fh:
	jr l2949h		;292f	18 18 	. . 
	ret m			;2931	f8 	. 
	jr l2914h		;2932	18 e0 	. . 
	ret po			;2934	e0 	. 
	ret po			;2935	e0 	. 
	ret po			;2936	e0 	. 
l2937h:
	nop			;2937	00 	. 
	nop			;2938	00 	. 
	nop			;2939	00 	. 
	nop			;293a	00 	. 
	nop			;293b	00 	. 
	nop			;293c	00 	. 
	nop			;293d	00 	. 
	nop			;293e	00 	. 
	nop			;293f	00 	. 
	nop			;2940	00 	. 
	nop			;2941	00 	. 
	nop			;2942	00 	. 
	inc bc			;2943	03 	. 
	nop			;2944	00 	. 
	ld bc,l0f01h		;2945	01 01 0f 	. . . 
	nop			;2948	00 	. 
l2949h:
	ld bc,l3f01h		;2949	01 01 3f 	. . ? 
	nop			;294c	00 	. 
	ld bc,l3f01h		;294d	01 01 3f 	. . ? 
	jr nz,l2992h		;2950	20 40 	  @ 
	nop			;2952	00 	. 
	rst 38h			;2953	ff 	. 
	jr nz,l2922h		;2954	20 cc 	  . 
	nop			;2956	00 	. 
	cp a			;2957	bf 	. 
	and b			;2958	a0 	. 
	ld e,(hl)			;2959	5e 	^ 
	nop			;295a	00 	. 
	nop			;295b	00 	. 
	nop			;295c	00 	. 
l295dh:
	nop			;295d	00 	. 
	nop			;295e	00 	. 
	nop			;295f	00 	. 
	nop			;2960	00 	. 
	nop			;2961	00 	. 
	nop			;2962	00 	. 
	ret po			;2963	e0 	. 
	nop			;2964	00 	. 
	nop			;2965	00 	. 
	nop			;2966	00 	. 
	jr c,l2969h		;2967	38 00 	8 . 
l2969h:
	ret nz			;2969	c0 	. 
	nop			;296a	00 	. 
	inc e			;296b	1c 	. 
	nop			;296c	00 	. 
	ret p			;296d	f0 	. 
	djnz $-64		;296e	10 be 	. . 
	nop			;2970	00 	. 
	ret nc			;2971	d0 	. 
	sub b			;2972	90 	. 
	jp m,0a400h		;2973	fa 00 a4 	. . . 
l2976h:
	and b			;2976	a0 	. 
	rst 8			;2977	cf 	. 
	nop			;2978	00 	. 
	ld (hl),b			;2979	70 	p 
	ld b,b			;297a	40 	@ 
	ccf			;297b	3f 	? 
	jr nz,l295dh		;297c	20 df 	  . 
	ld bc,0b2bfh		;297e	01 bf b2 	. . . 
	call z,0ff80h		;2981	cc 80 ff 	. . . 
	sbc a,a			;2984	9f 	. 
	ret po			;2985	e0 	. 
	ret po			;2986	e0 	. 
	ld h,a			;2987	67 	g 
	ld b,a			;2988	47 	G 
	ld a,b			;2989	78 	x 
	ld h,b			;298a	60 	` 
	scf			;298b	37 	7 
	ld sp,l363eh		;298c	31 3e 36 	1 > 6 
	ld c,00ch		;298f	0e 0c 	. . 
	rrca			;2991	0f 	. 
l2992h:
	ld c,003h		;2992	0e 03 	. . 
	inc bc			;2994	03 	. 
	inc bc			;2995	03 	. 
	inc bc			;2996	03 	. 
	nop			;2997	00 	. 
	nop			;2998	00 	. 
	nop			;2999	00 	. 
	nop			;299a	00 	. 
	rst 8			;299b	cf 	. 
	ld bc,04070h		;299c	01 70 40 	. p @ 
	cp 002h		;299f	fe 02 	. . 
	add a,b			;29a1	80 	. 
	add a,b			;29a2	80 	. 
	call m,0c20ch		;29a3	fc 0c c2 	. . . 
	add a,b			;29a6	80 	. 
	ret m			;29a7	f8 	. 
	jr nc,l2976h		;29a8	30 cc 	0 . 
l29aah:
	add a,b			;29aa	80 	. 
	ret po			;29ab	e0 	. 
	and b			;29ac	a0 	. 
	ld e,b			;29ad	58 	X 
	ld b,b			;29ae	40 	@ 
	ld e,b			;29af	58 	X 
	jr l29aah		;29b0	18 f8 	. . 
	ld e,b			;29b2	58 	X 
	ret po			;29b3	e0 	. 
	ret po			;29b4	e0 	. 
	ret po			;29b5	e0 	. 
	ret po			;29b6	e0 	. 
	nop			;29b7	00 	. 
	nop			;29b8	00 	. 
	nop			;29b9	00 	. 
	nop			;29ba	00 	. 
	ld (hl),b			;29bb	70 	p 
	nop			;29bc	00 	. 
	ld (hl),b			;29bd	70 	p 
	nop			;29be	00 	. 
	rst 38h			;29bf	ff 	. 
	nop			;29c0	00 	. 
	ld a,a			;29c1	7f 	 
	nop			;29c2	00 	. 
	rst 38h			;29c3	ff 	. 
	add a,b			;29c4	80 	. 
	cp a			;29c5	bf 	. 
	add a,b			;29c6	80 	. 
	ld a,a			;29c7	7f 	 
	ld b,b			;29c8	40 	@ 
	ld c,a			;29c9	4f 	O 
	ld b,b			;29ca	40 	@ 
	ccf			;29cb	3f 	? 
	jr nc,l29feh		;29cc	30 30 	0 0 
	jr nc,l29dch		;29ce	30 0c 	0 . 
	inc c			;29d0	0c 	. 
	ex af,af'			;29d1	08 	. 
	rrca			;29d2	0f 	. 
	inc c			;29d3	0c 	. 
	inc c			;29d4	0c 	. 
	ex af,af'			;29d5	08 	. 
	rrca			;29d6	0f 	. 
	rlca			;29d7	07 	. 
	inc b			;29d8	04 	. 
	inc b			;29d9	04 	. 
	inc b			;29da	04 	. 
	nop			;29db	00 	. 
l29dch:
	nop			;29dc	00 	. 
	nop			;29dd	00 	. 
	nop			;29de	00 	. 
	rst 38h			;29df	ff 	. 
	nop			;29e0	00 	. 
	rst 38h			;29e1	ff 	. 
	nop			;29e2	00 	. 
	rst 38h			;29e3	ff 	. 
	nop			;29e4	00 	. 
	rst 38h			;29e5	ff 	. 
	nop			;29e6	00 	. 
	rst 38h			;29e7	ff 	. 
	nop			;29e8	00 	. 
	rst 38h			;29e9	ff 	. 
	nop			;29ea	00 	. 
	rst 38h			;29eb	ff 	. 
	nop			;29ec	00 	. 
	nop			;29ed	00 	. 
	nop			;29ee	00 	. 
	rst 38h			;29ef	ff 	. 
	rst 38h			;29f0	ff 	. 
	ld a,a			;29f1	7f 	 
	rst 38h			;29f2	ff 	. 
	add a,b			;29f3	80 	. 
	nop			;29f4	00 	. 
	nop			;29f5	00 	. 
	nop			;29f6	00 	. 
	nop			;29f7	00 	. 
	nop			;29f8	00 	. 
	nop			;29f9	00 	. 
	nop			;29fa	00 	. 
	nop			;29fb	00 	. 
	nop			;29fc	00 	. 
	nop			;29fd	00 	. 
l29feh:
	nop			;29fe	00 	. 
	cp 000h		;29ff	fe 00 	. . 
	cp 000h		;2a01	fe 00 	. . 
	rst 38h			;2a03	ff 	. 
	nop			;2a04	00 	. 
	cp 000h		;2a05	fe 00 	. . 
	cp 000h		;2a07	fe 00 	. . 
	call m,0fc00h		;2a09	fc 00 fc 	. . . 
	nop			;2a0c	00 	. 
	nop			;2a0d	00 	. 
	nop			;2a0e	00 	. 
	ret z			;2a0f	c8 	. 
	ret z			;2a10	c8 	. 
	add a,b			;2a11	80 	. 
	ret m			;2a12	f8 	. 
	ret z			;2a13	c8 	. 
	ret nz			;2a14	c0 	. 
	add a,b			;2a15	80 	. 
	ret p			;2a16	f0 	. 
	ld (hl),b			;2a17	70 	p 
	ld b,b			;2a18	40 	@ 
	ld b,b			;2a19	40 	@ 
	ld b,b			;2a1a	40 	@ 
	nop			;2a1b	00 	. 
	nop			;2a1c	00 	. 
	nop			;2a1d	00 	. 
	nop			;2a1e	00 	. 
	inc bc			;2a1f	03 	. 
	nop			;2a20	00 	. 
	inc bc			;2a21	03 	. 
	inc bc			;2a22	03 	. 
	dec b			;2a23	05 	. 
	ld bc,0040eh		;2a24	01 0e 04 	. . . 
	rlca			;2a27	07 	. 
	inc bc			;2a28	03 	. 
	inc e			;2a29	1c 	. 
	inc b			;2a2a	04 	. 
	ccf			;2a2b	3f 	? 
	nop			;2a2c	00 	. 
	ccf			;2a2d	3f 	? 
	ld a,077h		;2a2e	3e 77 	> w 
	inc b			;2a30	04 	. 
	ld a,e			;2a31	7b 	{ 
	ld (hl),d			;2a32	72 	r 
	rra			;2a33	1f 	. 
	inc c			;2a34	0c 	. 
	ld (hl),e			;2a35	73 	s 
	ld (de),a			;2a36	12 	. 
	rra			;2a37	1f 	. 
	nop			;2a38	00 	. 
	ld a,a			;2a39	7f 	 
	rra			;2a3a	1f 	. 
	nop			;2a3b	00 	. 
	nop			;2a3c	00 	. 
	nop			;2a3d	00 	. 
	nop			;2a3e	00 	. 
	ret po			;2a3f	e0 	. 
	nop			;2a40	00 	. 
	ret po			;2a41	e0 	. 
	nop			;2a42	00 	. 
	ret m			;2a43	f8 	. 
	nop			;2a44	00 	. 
	ret m			;2a45	f8 	. 
	nop			;2a46	00 	. 
	call m,0e418h		;2a47	fc 18 e4 	. . . 
	nop			;2a4a	00 	. 
	call m,0e418h		;2a4b	fc 18 e4 	. . . 
	nop			;2a4e	00 	. 
	cp 0c0h		;2a4f	fe c0 	. . 
	ld a,000h		;2a51	3e 00 	> . 
	cp 0c0h		;2a53	fe c0 	. . 
	ld a,000h		;2a55	3e 00 	> . 
	rst 38h			;2a57	ff 	. 
	inc c			;2a58	0c 	. 
	di			;2a59	f3 	. 
	nop			;2a5a	00 	. 
	ld a,a			;2a5b	7f 	 
	ld b,b			;2a5c	40 	@ 
	ld a,a			;2a5d	7f 	 
	ld a,a			;2a5e	7f 	 
	inc a			;2a5f	3c 	< 
	ccf			;2a60	3f 	? 
	inc a			;2a61	3c 	< 
	inc a			;2a62	3c 	< 
	ex af,af'			;2a63	08 	. 
	add hl,bc			;2a64	09 	. 
	ld c,00eh		;2a65	0e 0e 	. . 
	djnz l2a79h		;2a67	10 10 	. . 
	rra			;2a69	1f 	. 
	rra			;2a6a	1f 	. 
	djnz l2a7dh		;2a6b	10 10 	. . 
l2a6dh:
	rra			;2a6d	1f 	. 
	rra			;2a6e	1f 	. 
	djnz l2a81h		;2a6f	10 10 	. . 
l2a71h:
	rra			;2a71	1f 	. 
	rra			;2a72	1f 	. 
	ex af,af'			;2a73	08 	. 
	dec bc			;2a74	0b 	. 
	inc c			;2a75	0c 	. 
l2a76h:
	inc c			;2a76	0c 	. 
	rlca			;2a77	07 	. 
	rlca			;2a78	07 	. 
l2a79h:
	rlca			;2a79	07 	. 
	rlca			;2a7a	07 	. 
	rst 38h			;2a7b	ff 	. 
l2a7ch:
	inc c			;2a7c	0c 	. 
l2a7dh:
	di			;2a7d	f3 	. 
	add a,b			;2a7e	80 	. 
	ld a,a			;2a7f	7f 	 
	add a,c			;2a80	81 	. 
l2a81h:
	ld a,a			;2a81	7f 	 
	ld a,c			;2a82	79 	y 
	ld e,0feh		;2a83	1e fe 	. . 
	ld e,01eh		;2a85	1e 1e 	. . 
	djnz l2a79h		;2a87	10 f0 	. . 
	djnz l2a9bh		;2a89	10 10 	. . 
	jr nz,l2a6dh		;2a8b	20 e0 	  . 
	jr nz,l2aafh		;2a8d	20 20 	    
	jr nz,l2a71h		;2a8f	20 e0 	  . 
	jr nz,$+34		;2a91	20 20 	    
	ld b,b			;2a93	40 	@ 
	ret nz			;2a94	c0 	. 
	ld b,b			;2a95	40 	@ 
	ld b,b			;2a96	40 	@ 
	add a,b			;2a97	80 	. 
	add a,b			;2a98	80 	. 
	add a,b			;2a99	80 	. 
	add a,b			;2a9a	80 	. 
l2a9bh:
	rlca			;2a9b	07 	. 
	rlca			;2a9c	07 	. 
	rlca			;2a9d	07 	. 
	rlca			;2a9e	07 	. 
	rrca			;2a9f	0f 	. 
	ex af,af'			;2aa0	08 	. 
	rrca			;2aa1	0f 	. 
l2aa2h:
	ex af,af'			;2aa2	08 	. 
	rra			;2aa3	1f 	. 
	djnz $+33		;2aa4	10 1f 	. . 
	djnz $+33		;2aa6	10 1f 	. . 
	jr $+33		;2aa8	18 1f 	. . 
	jr $+33		;2aaa	18 1f 	. . 
	rla			;2aac	17 	. 
	rra			;2aad	1f 	. 
	rla			;2aae	17 	. 
l2aafh:
	ccf			;2aaf	3f 	? 
	jr nz,l2af1h		;2ab0	20 3f 	  ? 
	jr nz,l2ad3h		;2ab2	20 1f 	  . 
l2ab4h:
	inc d			;2ab4	14 	. 
	inc de			;2ab5	13 	. 
	djnz $+65		;2ab6	10 3f 	. ? 
l2ab8h:
	jr z,l2adbh		;2ab8	28 21 	( ! 
l2abah:
	jr nz,l2a7ch		;2aba	20 c0 	  . 
l2abch:
	ret nz			;2abc	c0 	. 
	ret nz			;2abd	c0 	. 
	ret nz			;2abe	c0 	. 
	ret po			;2abf	e0 	. 
	jr nz,l2aa2h		;2ac0	20 e0 	  . 
	jr nz,l2ab4h		;2ac2	20 f0 	  . 
	djnz l2a76h		;2ac4	10 b0 	. . 
	djnz l2ab8h		;2ac6	10 f0 	. . 
	jr nc,l2abah		;2ac8	30 f0 	0 . 
	jr nc,l2abch		;2aca	30 f0 	0 . 
	ret nc			;2acc	d0 	. 
	ret p			;2acd	f0 	. 
	ret nc			;2ace	d0 	. 
	ret m			;2acf	f8 	. 
	ex af,af'			;2ad0	08 	. 
	ret pe			;2ad1	e8 	. 
	ex af,af'			;2ad2	08 	. 
l2ad3h:
	ret m			;2ad3	f8 	. 
	ex af,af'			;2ad4	08 	. 
	sbc a,b			;2ad5	98 	. 
	ex af,af'			;2ad6	08 	. 
	ret m			;2ad7	f8 	. 
	ex af,af'			;2ad8	08 	. 
	ex af,af'			;2ad9	08 	. 
	ex af,af'			;2ada	08 	. 
l2adbh:
	ccf			;2adb	3f 	? 
	jr z,l2afeh		;2adc	28 20 	(   
	jr nz,l2b1fh		;2ade	20 3f 	  ? 
	jr z,l2b02h		;2ae0	28 20 	(   
	jr nz,l2b23h		;2ae2	20 3f 	  ? 
	jr z,l2b0ch		;2ae4	28 26 	( & 
	jr nz,l2b27h		;2ae6	20 3f 	  ? 
	jr z,l2b0fh		;2ae8	28 25 	( % 
	jr nz,$+65		;2aea	20 3f 	  ? 
	jr z,l2b13h		;2aec	28 25 	( % 
	jr nz,l2b2fh		;2aee	20 3f 	  ? 
	cpl			;2af0	2f 	/ 
l2af1h:
	jr nz,l2b13h		;2af1	20 20 	    
	rra			;2af3	1f 	. 
	djnz l2b06h		;2af4	10 10 	. . 
	djnz l2b07h		;2af6	10 0f 	. . 
l2af8h:
	rrca			;2af8	0f 	. 
	rrca			;2af9	0f 	. 
	rrca			;2afa	0f 	. 
	ret m			;2afb	f8 	. 
	ex af,af'			;2afc	08 	. 
	ex af,af'			;2afd	08 	. 
l2afeh:
	ex af,af'			;2afe	08 	. 
	ret m			;2aff	f8 	. 
	ex af,af'			;2b00	08 	. 
	ex af,af'			;2b01	08 	. 
l2b02h:
	ex af,af'			;2b02	08 	. 
	ret m			;2b03	f8 	. 
	ex af,af'			;2b04	08 	. 
	ret z			;2b05	c8 	. 
l2b06h:
	ex af,af'			;2b06	08 	. 
l2b07h:
	ret m			;2b07	f8 	. 
	ex af,af'			;2b08	08 	. 
	ld c,b			;2b09	48 	H 
	ex af,af'			;2b0a	08 	. 
	ret m			;2b0b	f8 	. 
l2b0ch:
	ex af,af'			;2b0c	08 	. 
	ld c,b			;2b0d	48 	H 
	ex af,af'			;2b0e	08 	. 
l2b0fh:
	ret m			;2b0f	f8 	. 
	ex af,af'			;2b10	08 	. 
	ex af,af'			;2b11	08 	. 
	ex af,af'			;2b12	08 	. 
l2b13h:
	ret p			;2b13	f0 	. 
	djnz l2b26h		;2b14	10 10 	. . 
	djnz l2af8h		;2b16	10 e0 	. . 
	ret po			;2b18	e0 	. 
	ret po			;2b19	e0 	. 
	ret po			;2b1a	e0 	. 
	ld bc,l0000h		;2b1b	01 00 00 	. . . 
	nop			;2b1e	00 	. 
l2b1fh:
	ld (bc),a			;2b1f	02 	. 
	nop			;2b20	00 	. 
	nop			;2b21	00 	. 
	nop			;2b22	00 	. 
l2b23h:
	ld bc,l0000h		;2b23	01 00 00 	. . . 
l2b26h:
	nop			;2b26	00 	. 
l2b27h:
	ld bc,l0101h		;2b27	01 01 01 	. . . 
	ld bc,l0303h		;2b2a	01 03 03 	. . . 
	ld (bc),a			;2b2d	02 	. 
	ld (bc),a			;2b2e	02 	. 
l2b2fh:
	scf			;2b2f	37 	7 
	ld b,004h		;2b30	06 04 	. . 
	inc b			;2b32	04 	. 
	ld a,a			;2b33	7f 	 
	rlca			;2b34	07 	. 
	inc b			;2b35	04 	. 
	inc b			;2b36	04 	. 
	cp 006h		;2b37	fe 06 	. . 
	dec b			;2b39	05 	. 
	dec b			;2b3a	05 	. 
	ret nz			;2b3b	c0 	. 
	nop			;2b3c	00 	. 
	nop			;2b3d	00 	. 
	nop			;2b3e	00 	. 
	jr nz,l2b41h		;2b3f	20 00 	  . 
l2b41h:
	nop			;2b41	00 	. 
	nop			;2b42	00 	. 
	ret nz			;2b43	c0 	. 
	nop			;2b44	00 	. 
	nop			;2b45	00 	. 
	nop			;2b46	00 	. 
	ret nz			;2b47	c0 	. 
	ret nz			;2b48	c0 	. 
	ret nz			;2b49	c0 	. 
	ret nz			;2b4a	c0 	. 
	ret po			;2b4b	e0 	. 
	ret po			;2b4c	e0 	. 
	jr nz,l2b6fh		;2b4d	20 20 	    
	or 0f4h		;2b4f	f6 f4 	. . 
	rla			;2b51	17 	. 
	inc d			;2b52	14 	. 
	ccf			;2b53	3f 	? 
	ld (hl),h			;2b54	74 	t 
	sub a			;2b55	97 	. 
	sub h			;2b56	94 	. 
	ccf			;2b57	3f 	? 
	ex de,hl			;2b58	eb 	. 
	inc bc			;2b59	03 	. 
	dec bc			;2b5a	0b 	. 
	cp 0e2h		;2b5b	fe e2 	. . 
	ex (sp),hl			;2b5d	e3 	. 
	ex (sp),hl			;2b5e	e3 	. 
	add hl,de			;2b5f	19 	. 
	ld e,018h		;2b60	1e 18 	. . 
	jr l2b6bh		;2b62	18 07 	. . 
	ld a,(de)			;2b64	1a 	. 
	inc b			;2b65	04 	. 
	ld b,01fh		;2b66	06 1f 	. . 
	inc e			;2b68	1c 	. 
	inc de			;2b69	13 	. 
	inc e			;2b6a	1c 	. 
l2b6bh:
	cpl			;2b6b	2f 	/ 
	inc a			;2b6c	3c 	< 
	jr z,l2b9bh		;2b6d	28 2c 	( , 
l2b6fh:
	ld b,e			;2b6f	43 	C 
	ld a,h			;2b70	7c 	| 
	ld b,b			;2b71	40 	@ 
	ld b,b			;2b72	40 	@ 
	ld d,c			;2b73	51 	Q 
	ld a,a			;2b74	7f 	 
	ld d,c			;2b75	51 	Q 
	ld d,c			;2b76	51 	Q 
	ld l,a			;2b77	6f 	o 
l2b78h:
	ld l,a			;2b78	6f 	o 
	ld l,a			;2b79	6f 	o 
	ld l,a			;2b7a	6f 	o 
	ld (l22feh),a		;2b7b	32 fe 22 	2 . " 
	ld (09444h),a		;2b7e	32 44 94 	2 D . 
	inc l			;2b81	2c 	, 
	inc l			;2b82	2c 	, 
	ret z			;2b83	c8 	. 
	jr z,l2b9eh		;2b84	28 18 	( . 
	jr l2b78h		;2b86	18 f0 	. . 
	ld d,b			;2b88	50 	P 
	ret nc			;2b89	d0 	. 
	ld d,b			;2b8a	50 	P 
	ret p			;2b8b	f0 	. 
	nop			;2b8c	00 	. 
	nop			;2b8d	00 	. 
	nop			;2b8e	00 	. 
	ret p			;2b8f	f0 	. 
	djnz l2ba2h		;2b90	10 10 	. . 
	djnz $+34		;2b92	10 20 	.   
	ld h,b			;2b94	60 	` 
	and b			;2b95	a0 	. 
	and b			;2b96	a0 	. 
	ret nz			;2b97	c0 	. 
	ret nz			;2b98	c0 	. 
	ret nz			;2b99	c0 	. 
	ret nz			;2b9a	c0 	. 
l2b9bh:
	inc b			;2b9b	04 	. 
	nop			;2b9c	00 	. 
	inc b			;2b9d	04 	. 
l2b9eh:
	inc b			;2b9e	04 	. 
	ld e,01fh		;2b9f	1e 1f 	. . 
l2ba1h:
	inc bc			;2ba1	03 	. 
l2ba2h:
	ld e,07fh		;2ba2	1e 7f 	.  
	ld h,c			;2ba4	61 	a 
	ld bc,0ff61h		;2ba5	01 61 ff 	. a . 
	sbc a,a			;2ba8	9f 	. 
	rra			;2ba9	1f 	. 
	add a,c			;2baa	81 	. 
	ex (sp),hl			;2bab	e3 	. 
	ld h,b			;2bac	60 	` 
	ld h,e			;2bad	63 	c 
	inc bc			;2bae	03 	. 
	add a,c			;2baf	81 	. 
	add a,b			;2bb0	80 	. 
	add a,c			;2bb1	81 	. 
	ld bc,l0001h		;2bb2	01 01 00 	. . . 
	ld bc,l0301h		;2bb5	01 01 03 	. . . 
	inc bc			;2bb8	03 	. 
	inc bc			;2bb9	03 	. 
	inc bc			;2bba	03 	. 
	nop			;2bbb	00 	. 
	nop			;2bbc	00 	. 
	nop			;2bbd	00 	. 
	nop			;2bbe	00 	. 
	nop			;2bbf	00 	. 
	nop			;2bc0	00 	. 
	nop			;2bc1	00 	. 
	ret nz			;2bc2	c0 	. 
	nop			;2bc3	00 	. 
	add a,b			;2bc4	80 	. 
	add a,b			;2bc5	80 	. 
	ld (hl),b			;2bc6	70 	p 
	sub b			;2bc7	90 	. 
	ret nc			;2bc8	d0 	. 
	ret nc			;2bc9	d0 	. 
	xor b			;2bca	a8 	. 
	add a,b			;2bcb	80 	. 
	ret nz			;2bcc	c0 	. 
	ret nz			;2bcd	c0 	. 
	cp h			;2bce	bc 	. 
	xor b			;2bcf	a8 	. 
	ret nz			;2bd0	c0 	. 
	ret nz			;2bd1	c0 	. 
	sub h			;2bd2	94 	. 
	jr z,l2c3dh		;2bd3	28 68 	( h 
	ret pe			;2bd5	e8 	. 
	cp (hl)			;2bd6	be 	. 
	add a,b			;2bd7	80 	. 
	ld b,b			;2bd8	40 	@ 
	ret nz			;2bd9	c0 	. 
	cp (hl)			;2bda	be 	. 
	inc bc			;2bdb	03 	. 
	inc bc			;2bdc	03 	. 
	inc bc			;2bdd	03 	. 
	inc bc			;2bde	03 	. 
	inc bc			;2bdf	03 	. 
	inc bc			;2be0	03 	. 
	inc bc			;2be1	03 	. 
	inc bc			;2be2	03 	. 
	rst 0			;2be3	c7 	. 
	rst 0			;2be4	c7 	. 
	rst 0			;2be5	c7 	. 
	rst 0			;2be6	c7 	. 
	ld a,(hl)			;2be7	7e 	~ 
	ld a,a			;2be8	7f 	 
	ld a,a			;2be9	7f 	 
	ld a,(hl)			;2bea	7e 	~ 
	ld h,d			;2beb	62 	b 
	ld l,a			;2bec	6f 	o 
	ld l,a			;2bed	6f 	o 
	ld (hl),d			;2bee	72 	r 
	jr nc,l2c30h		;2bef	30 3f 	0 ? 
	ccf			;2bf1	3f 	? 
	jr nc,$+30		;2bf2	30 1c 	0 . 
	rra			;2bf4	1f 	. 
	rra			;2bf5	1f 	. 
	inc e			;2bf6	1c 	. 
	rlca			;2bf7	07 	. 
	rlca			;2bf8	07 	. 
	rlca			;2bf9	07 	. 
	rlca			;2bfa	07 	. 
	ret p			;2bfb	f0 	. 
	ld (hl),b			;2bfc	70 	p 
	ret p			;2bfd	f0 	. 
	cp 0cch		;2bfe	fe cc 	. . 
	call z,0fecch		;2c00	cc cc fe 	. . . 
	ret po			;2c03	e0 	. 
	and b			;2c04	a0 	. 
l2c05h:
	ret po			;2c05	e0 	. 
	rst 38h			;2c06	ff 	. 
	ret c			;2c07	d8 	. 
	cp h			;2c08	bc 	. 
	call m,060dbh		;2c09	fc db 60 	. . ` 
	ret c			;2c0c	d8 	. 
	ret m			;2c0d	f8 	. 
	ld h,a			;2c0e	67 	g 
	jr nz,l2ba1h		;2c0f	20 90 	  . 
	or b			;2c11	b0 	. 
	ld l,a			;2c12	6f 	o 
	jr nz,l2c25h		;2c13	20 10 	  . 
	jr nc,l2c05h		;2c15	30 ee 	0 . 
	ret nz			;2c17	c0 	. 
	ret m			;2c18	f8 	. 
	ret m			;2c19	f8 	. 
	call nz,l0100h		;2c1a	c4 00 01 	. . . 
	ld bc,l0400h		;2c1d	01 00 04 	. . . 
	nop			;2c20	00 	. 
	rlca			;2c21	07 	. 
	inc b			;2c22	04 	. 
	nop			;2c23	00 	. 
	rrca			;2c24	0f 	. 
l2c25h:
	rrca			;2c25	0f 	. 
	nop			;2c26	00 	. 
	jr $+18		;2c27	18 10 	. . 
	rra			;2c29	1f 	. 
	jr l2c3ch		;2c2a	18 10 	. . 
	rra			;2c2c	1f 	. 
	rra			;2c2d	1f 	. 
	djnz l2c48h		;2c2e	10 18 	. . 
l2c30h:
	djnz l2c51h		;2c30	10 1f 	. . 
	jr l2c44h		;2c32	18 10 	. . 
	rra			;2c34	1f 	. 
	rra			;2c35	1f 	. 
	djnz l2c50h		;2c36	10 18 	. . 
	djnz l2c59h		;2c38	10 1f 	. . 
	jr l2c3ch		;2c3a	18 00 	. . 
l2c3ch:
	nop			;2c3c	00 	. 
l2c3dh:
	nop			;2c3d	00 	. 
	add a,b			;2c3e	80 	. 
	ld h,b			;2c3f	60 	` 
	ld h,b			;2c40	60 	` 
	add a,b			;2c41	80 	. 
	nop			;2c42	00 	. 
	ld h,b			;2c43	60 	` 
l2c44h:
	ld h,b			;2c44	60 	` 
	ld h,b			;2c45	60 	` 
	sub b			;2c46	90 	. 
	ld a,b			;2c47	78 	x 
l2c48h:
	ld c,b			;2c48	48 	H 
	add a,b			;2c49	80 	. 
	nop			;2c4a	00 	. 
	nop			;2c4b	00 	. 
	nop			;2c4c	00 	. 
	nop			;2c4d	00 	. 
	ret m			;2c4e	f8 	. 
	ld a,b			;2c4f	78 	x 
l2c50h:
	ld a,b			;2c50	78 	x 
l2c51h:
	add a,b			;2c51	80 	. 
	nop			;2c52	00 	. 
	nop			;2c53	00 	. 
	nop			;2c54	00 	. 
	nop			;2c55	00 	. 
	ret m			;2c56	f8 	. 
	ld a,b			;2c57	78 	x 
	ld a,b			;2c58	78 	x 
l2c59h:
	add a,b			;2c59	80 	. 
	nop			;2c5a	00 	. 
	ex af,af'			;2c5b	08 	. 
	rrca			;2c5c	0f 	. 
	ld l,a			;2c5d	6f 	o 
	ex af,af'			;2c5e	08 	. 
	ld b,006h		;2c5f	06 06 	. . 
	add a,a			;2c61	87 	. 
	ld b,0dah		;2c62	06 da 	. . 
	jp c,l0203h		;2c64	da 03 02 	. . . 
	ld bc,06501h		;2c67	01 01 65 	. . e 
	ld bc,l0404h		;2c6a	01 04 04 	. . . 
	adc a,a			;2c6d	8f 	. 
	inc b			;2c6e	04 	. 
	adc a,d			;2c6f	8a 	. 
	adc a,b			;2c70	88 	. 
	rra			;2c71	1f 	. 
	ld a,(bc)			;2c72	0a 	. 
	add hl,bc			;2c73	09 	. 
	add hl,bc			;2c74	09 	. 
	rra			;2c75	1f 	. 
	add hl,bc			;2c76	09 	. 
	ld d,016h		;2c77	16 16 	. . 
	inc b			;2c79	04 	. 
	inc b			;2c7a	04 	. 
	ld b,006h		;2c7b	06 06 	. . 
	nop			;2c7d	00 	. 
	ret p			;2c7e	f0 	. 
	ld b,c			;2c7f	41 	A 
	ld b,c			;2c80	41 	A 
	add a,b			;2c81	80 	. 
	nop			;2c82	00 	. 
	ld e,c			;2c83	59 	Y 
	ld e,b			;2c84	58 	X 
	add a,b			;2c85	80 	. 
	nop			;2c86	00 	. 
	and (hl)			;2c87	a6 	. 
	ld h,080h		;2c88	26 80 	& . 
l2c8ah:
	add a,b			;2c8a	80 	. 
	pop de			;2c8b	d1 	. 
	pop de			;2c8c	d1 	. 
	nop			;2c8d	00 	. 
	nop			;2c8e	00 	. 
	jp (hl)			;2c8f	e9 	. 
	xor b			;2c90	a8 	. 
	ld b,b			;2c91	40 	@ 
	nop			;2c92	00 	. 
	ret pe			;2c93	e8 	. 
	ret pe			;2c94	e8 	. 
	add a,b			;2c95	80 	. 
	add a,b			;2c96	80 	. 
	ld c,b			;2c97	48 	H 
	nop			;2c98	00 	. 
	nop			;2c99	00 	. 
	nop			;2c9a	00 	. 
	nop			;2c9b	00 	. 
	ld bc,l0001h		;2c9c	01 01 00 	. . . 
	inc b			;2c9f	04 	. 
	nop			;2ca0	00 	. 
	rlca			;2ca1	07 	. 
	inc b			;2ca2	04 	. 
	nop			;2ca3	00 	. 
	rrca			;2ca4	0f 	. 
	rrca			;2ca5	0f 	. 
	nop			;2ca6	00 	. 
	jr $+18		;2ca7	18 10 	. . 
	rra			;2ca9	1f 	. 
	jr l2cbch		;2caa	18 10 	. . 
	rra			;2cac	1f 	. 
	rra			;2cad	1f 	. 
	djnz l2c48h		;2cae	10 98 	. . 
	sub b			;2cb0	90 	. 
	rra			;2cb1	1f 	. 
	jr l2cc4h		;2cb2	18 10 	. . 
	rra			;2cb4	1f 	. 
	sbc a,a			;2cb5	9f 	. 
	djnz l2cd0h		;2cb6	10 18 	. . 
	djnz l2d19h		;2cb8	10 5f 	. _ 
	jr l2cbch		;2cba	18 00 	. . 
l2cbch:
	nop			;2cbc	00 	. 
	nop			;2cbd	00 	. 
	add a,b			;2cbe	80 	. 
	ld h,b			;2cbf	60 	` 
	ld h,b			;2cc0	60 	` 
	add a,b			;2cc1	80 	. 
	nop			;2cc2	00 	. 
	ld h,b			;2cc3	60 	` 
l2cc4h:
	ld h,b			;2cc4	60 	` 
	ld h,b			;2cc5	60 	` 
	sub b			;2cc6	90 	. 
	ld a,b			;2cc7	78 	x 
	ld c,b			;2cc8	48 	H 
	add a,b			;2cc9	80 	. 
	nop			;2cca	00 	. 
	nop			;2ccb	00 	. 
	nop			;2ccc	00 	. 
	nop			;2ccd	00 	. 
	ret m			;2cce	f8 	. 
	ld a,c			;2ccf	79 	y 
l2cd0h:
	ld a,b			;2cd0	78 	x 
	add a,b			;2cd1	80 	. 
	nop			;2cd2	00 	. 
	ld bc,l0001h		;2cd3	01 01 00 	. . . 
	ret m			;2cd6	f8 	. 
	ld a,d			;2cd7	7a 	z 
	ld a,d			;2cd8	7a 	z 
	add a,b			;2cd9	80 	. 
	nop			;2cda	00 	. 
	ex af,af'			;2cdb	08 	. 
	rrca			;2cdc	0f 	. 
	cpl			;2cdd	2f 	/ 
	ex af,af'			;2cde	08 	. 
	add a,(hl)			;2cdf	86 	. 
	add a,(hl)			;2ce0	86 	. 
	ld b,a			;2ce1	47 	G 
	ld b,002h		;2ce2	06 02 	. . 
	ld (bc),a			;2ce4	02 	. 
	dec sp			;2ce5	3b 	; 
	ld (bc),a			;2ce6	02 	. 
	inc bc			;2ce7	03 	. 
	inc bc			;2ce8	03 	. 
	rlca			;2ce9	07 	. 
	inc bc			;2cea	03 	. 
	inc b			;2ceb	04 	. 
	inc b			;2cec	04 	. 
	rrca			;2ced	0f 	. 
	inc b			;2cee	04 	. 
	ld c,d			;2cef	4a 	J 
	ld c,b			;2cf0	48 	H 
	ccf			;2cf1	3f 	? 
	ld a,(bc)			;2cf2	0a 	. 
	add hl,bc			;2cf3	09 	. 
	add hl,bc			;2cf4	09 	. 
	rrca			;2cf5	0f 	. 
	add hl,bc			;2cf6	09 	. 
	ld b,006h		;2cf7	06 06 	. . 
	inc b			;2cf9	04 	. 
	inc b			;2cfa	04 	. 
	inc b			;2cfb	04 	. 
	inc b			;2cfc	04 	. 
	nop			;2cfd	00 	. 
	ret p			;2cfe	f0 	. 
	ld b,e			;2cff	43 	C 
	ld b,d			;2d00	42 	B 
	add a,b			;2d01	80 	. 
	nop			;2d02	00 	. 
	ld e,h			;2d03	5c 	\ 
	ld e,h			;2d04	5c 	\ 
	add a,b			;2d05	80 	. 
	nop			;2d06	00 	. 
	and b			;2d07	a0 	. 
	jr nz,l2c8ah		;2d08	20 80 	  . 
	add a,b			;2d0a	80 	. 
	ret nc			;2d0b	d0 	. 
	ret nc			;2d0c	d0 	. 
	nop			;2d0d	00 	. 
	nop			;2d0e	00 	. 
	xor 0ach		;2d0f	ee ac 	. . 
	ld b,b			;2d11	40 	@ 
	nop			;2d12	00 	. 
	ret po			;2d13	e0 	. 
	ret po			;2d14	e0 	. 
	add a,b			;2d15	80 	. 
	add a,b			;2d16	80 	. 
	ld b,b			;2d17	40 	@ 
	nop			;2d18	00 	. 
l2d19h:
	nop			;2d19	00 	. 
	nop			;2d1a	00 	. 
	ld bc,l0100h		;2d1b	01 00 01 	. . . 
	nop			;2d1e	00 	. 
	nop			;2d1f	00 	. 
	nop			;2d20	00 	. 
	rlca			;2d21	07 	. 
	nop			;2d22	00 	. 
	rrca			;2d23	0f 	. 
	nop			;2d24	00 	. 
	rrca			;2d25	0f 	. 
	inc c			;2d26	0c 	. 
	djnz l2d39h		;2d27	10 10 	. . 
	rra			;2d29	1f 	. 
	djnz l2d4bh		;2d2a	10 1f 	. . 
	djnz l2d4dh		;2d2c	10 1f 	. . 
	inc e			;2d2e	1c 	. 
	djnz l2d41h		;2d2f	10 10 	. . 
	rra			;2d31	1f 	. 
	djnz l2d53h		;2d32	10 1f 	. . 
	djnz l2d55h		;2d34	10 1f 	. . 
	inc e			;2d36	1c 	. 
	jr l2d51h		;2d37	18 18 	. . 
l2d39h:
	rra			;2d39	1f 	. 
	jr l2cbch		;2d3a	18 80 	. . 
	nop			;2d3c	00 	. 
	add a,b			;2d3d	80 	. 
	nop			;2d3e	00 	. 
	ld h,b			;2d3f	60 	` 
	ld h,b			;2d40	60 	` 
l2d41h:
	add a,b			;2d41	80 	. 
	nop			;2d42	00 	. 
	sub b			;2d43	90 	. 
	nop			;2d44	00 	. 
	ret p			;2d45	f0 	. 
	nop			;2d46	00 	. 
	ld a,b			;2d47	78 	x 
	ld c,b			;2d48	48 	H 
	add a,b			;2d49	80 	. 
	nop			;2d4a	00 	. 
l2d4bh:
	ret m			;2d4b	f8 	. 
	nop			;2d4c	00 	. 
l2d4dh:
	ret m			;2d4d	f8 	. 
	nop			;2d4e	00 	. 
	ld a,b			;2d4f	78 	x 
	ld a,b			;2d50	78 	x 
l2d51h:
	add a,b			;2d51	80 	. 
	nop			;2d52	00 	. 
l2d53h:
	ret m			;2d53	f8 	. 
	nop			;2d54	00 	. 
l2d55h:
	ret m			;2d55	f8 	. 
	nop			;2d56	00 	. 
	ld a,b			;2d57	78 	x 
	ld a,b			;2d58	78 	x 
	add a,b			;2d59	80 	. 
	nop			;2d5a	00 	. 
	rrca			;2d5b	0f 	. 
	jr z,l2d6dh		;2d5c	28 0f 	( . 
	ld l,006h		;2d5e	2e 06 	. . 
	ld b,(hl)			;2d60	46 	F 
	rlca			;2d61	07 	. 
	ld b,(hl)			;2d62	46 	F 
	ld (bc),a			;2d63	02 	. 
	ld e,d			;2d64	5a 	Z 
	inc bc			;2d65	03 	. 
	ld e,d			;2d66	5a 	Z 
	inc bc			;2d67	03 	. 
	daa			;2d68	27 	' 
	inc bc			;2d69	03 	. 
	daa			;2d6a	27 	' 
	inc b			;2d6b	04 	. 
	ld c,h			;2d6c	4c 	L 
l2d6dh:
	rlca			;2d6d	07 	. 
	ld c,h			;2d6e	4c 	L 
	ld a,(bc)			;2d6f	0a 	. 
	ld e,b			;2d70	58 	X 
	rrca			;2d71	0f 	. 
	ld e,b			;2d72	58 	X 
	add hl,bc			;2d73	09 	. 
	add hl,de			;2d74	19 	. 
	rrca			;2d75	0f 	. 
	add hl,de			;2d76	19 	. 
	inc b			;2d77	04 	. 
	inc c			;2d78	0c 	. 
	ld b,00ch		;2d79	06 0c 	. . 
	ret p			;2d7b	f0 	. 
	inc b			;2d7c	04 	. 
	ret p			;2d7d	f0 	. 
	inc b			;2d7e	04 	. 
	ld b,b			;2d7f	40 	@ 
	ld b,d			;2d80	42 	B 
	add a,b			;2d81	80 	. 
	ld (bc),a			;2d82	02 	. 
	ld b,b			;2d83	40 	@ 
	ld e,d			;2d84	5a 	Z 
	add a,b			;2d85	80 	. 
	ld a,(de)			;2d86	1a 	. 
	add a,b			;2d87	80 	. 
	inc h			;2d88	24 	$ 
	add a,b			;2d89	80 	. 
	inc h			;2d8a	24 	$ 
	ret nz			;2d8b	c0 	. 
	jp nc,l1200h		;2d8c	d2 00 12 	. . . 
	ret po			;2d8f	e0 	. 
	xor d			;2d90	aa 	. 
	ld b,b			;2d91	40 	@ 
	ld a,(bc)			;2d92	0a 	. 
	ret po			;2d93	e0 	. 
	ret pe			;2d94	e8 	. 
	add a,b			;2d95	80 	. 
	adc a,b			;2d96	88 	. 
	ld b,b			;2d97	40 	@ 
	ld d,b			;2d98	50 	P 
	nop			;2d99	00 	. 
	djnz l2dcfh		;2d9a	10 33 	. 3 
	inc sp			;2d9c	33 	3 
	ld b,h			;2d9d	44 	D 
	nop			;2d9e	00 	. 
	ld h,(hl)			;2d9f	66 	f 
	ld h,(hl)			;2da0	66 	f 
	ld a,a			;2da1	7f 	 
	ld h,(hl)			;2da2	66 	f 
	rst 38h			;2da3	ff 	. 
	add a,b			;2da4	80 	. 
	add a,b			;2da5	80 	. 
	add a,b			;2da6	80 	. 
	ld a,a			;2da7	7f 	 
	ld c,h			;2da8	4c 	L 
	ld c,h			;2da9	4c 	L 
	ld c,h			;2daa	4c 	L 
	inc h			;2dab	24 	$ 
	inc h			;2dac	24 	$ 
	ld (hl),024h		;2dad	36 24 	6 $ 
	jr nz,l2dd1h		;2daf	20 20 	    
	inc a			;2db1	3c 	< 
	jr nz,l2de3h		;2db2	20 2f 	  / 
	inc l			;2db4	2c 	, 
	inc sp			;2db5	33 	3 
	ld (0484fh),hl		;2db6	22 4f 48 	" O H 
l2db9h:
	ld (hl),a			;2db9	77 	w 
	ld b,h			;2dba	44 	D 
	nop			;2dbb	00 	. 
	nop			;2dbc	00 	. 
	nop			;2dbd	00 	. 
	nop			;2dbe	00 	. 
	nop			;2dbf	00 	. 
	nop			;2dc0	00 	. 
	add a,b			;2dc1	80 	. 
	nop			;2dc2	00 	. 
	add a,b			;2dc3	80 	. 
	nop			;2dc4	00 	. 
	nop			;2dc5	00 	. 
	nop			;2dc6	00 	. 
	nop			;2dc7	00 	. 
	nop			;2dc8	00 	. 
	nop			;2dc9	00 	. 
	nop			;2dca	00 	. 
	nop			;2dcb	00 	. 
	nop			;2dcc	00 	. 
	nop			;2dcd	00 	. 
	nop			;2dce	00 	. 
l2dcfh:
	ret m			;2dcf	f8 	. 
	nop			;2dd0	00 	. 
l2dd1h:
	ret m			;2dd1	f8 	. 
	add a,b			;2dd2	80 	. 
	cp 000h		;2dd3	fe 00 	. . 
	jp m,0ff00h		;2dd5	fa 00 ff 	. . . 
	nop			;2dd8	00 	. 
	ld (iy+05fh),b		;2dd9	fd 70 5f 	. p _ 
	ld e,b			;2ddc	58 	X 
l2dddh:
	ld l,a			;2ddd	6f 	o 
	ld c,h			;2dde	4c 	L 
	sbc a,a			;2ddf	9f 	. 
	sbc a,b			;2de0	98 	. 
	rst 28h			;2de1	ef 	. 
	adc a,l			;2de2	8d 	. 
l2de3h:
	cp a			;2de3	bf 	. 
	cp b			;2de4	b8 	. 
	rst 8			;2de5	cf 	. 
	adc a,l			;2de6	8d 	. 
	ccf			;2de7	3f 	? 
	jr c,l2db9h		;2de8	38 cf 	8 . 
	inc c			;2dea	0c 	. 
	rra			;2deb	1f 	. 
	jr l2dddh		;2dec	18 ef 	. . 
	ld c,01fh		;2dee	0e 1f 	. . 
	inc e			;2df0	1c 	. 
	rst 20h			;2df1	e7 	. 
	rlca			;2df2	07 	. 
	adc a,a			;2df3	8f 	. 
	adc a,a			;2df4	8f 	. 
	di			;2df5	f3 	. 
	add a,e			;2df6	83 	. 
	ld h,b			;2df7	60 	` 
	ld h,b			;2df8	60 	` 
	ld a,a			;2df9	7f 	 
	ld h,b			;2dfa	60 	` 
	rst 38h			;2dfb	ff 	. 
	nop			;2dfc	00 	. 
	rst 38h			;2dfd	ff 	. 
	adc a,b			;2dfe	88 	. 
	rst 38h			;2dff	ff 	. 
	nop			;2e00	00 	. 
	rst 38h			;2e01	ff 	. 
	inc b			;2e02	04 	. 
	rst 38h			;2e03	ff 	. 
	jr nz,$+1		;2e04	20 ff 	  . 
	inc h			;2e06	24 	$ 
	rst 38h			;2e07	ff 	. 
	nop			;2e08	00 	. 
	rst 38h			;2e09	ff 	. 
	call nz,sub_00ffh		;2e0a	c4 ff 00 	. . . 
	rst 38h			;2e0d	ff 	. 
	jr $+1		;2e0e	18 ff 	. . 
	ld bc,0e1ffh		;2e10	01 ff e1 	. . . 
	ret m			;2e13	f8 	. 
	nop			;2e14	00 	. 
	rst 38h			;2e15	ff 	. 
	nop			;2e16	00 	. 
	ld (bc),a			;2e17	02 	. 
	ld (bc),a			;2e18	02 	. 
	cp 002h		;2e19	fe 02 	. . 
	nop			;2e1b	00 	. 
	nop			;2e1c	00 	. 
	nop			;2e1d	00 	. 
	nop			;2e1e	00 	. 
	nop			;2e1f	00 	. 
	nop			;2e20	00 	. 
	nop			;2e21	00 	. 
	nop			;2e22	00 	. 
	nop			;2e23	00 	. 
	nop			;2e24	00 	. 
	nop			;2e25	00 	. 
	nop			;2e26	00 	. 
	nop			;2e27	00 	. 
	nop			;2e28	00 	. 
	nop			;2e29	00 	. 
	nop			;2e2a	00 	. 
	nop			;2e2b	00 	. 
	nop			;2e2c	00 	. 
	nop			;2e2d	00 	. 
	nop			;2e2e	00 	. 
	inc bc			;2e2f	03 	. 
	nop			;2e30	00 	. 
	inc bc			;2e31	03 	. 
	nop			;2e32	00 	. 
	rra			;2e33	1f 	. 
	djnz l2e55h		;2e34	10 1f 	. . 
	djnz l2e77h		;2e36	10 3f 	. ? 
	jr nz,l2e79h		;2e38	20 3f 	  ? 
	ld hl,l0000h		;2e3a	21 00 00 	! . . 
	nop			;2e3d	00 	. 
	nop			;2e3e	00 	. 
	nop			;2e3f	00 	. 
	nop			;2e40	00 	. 
	nop			;2e41	00 	. 
	nop			;2e42	00 	. 
	nop			;2e43	00 	. 
	nop			;2e44	00 	. 
	nop			;2e45	00 	. 
	nop			;2e46	00 	. 
	nop			;2e47	00 	. 
	nop			;2e48	00 	. 
	nop			;2e49	00 	. 
	nop			;2e4a	00 	. 
	nop			;2e4b	00 	. 
	nop			;2e4c	00 	. 
	nop			;2e4d	00 	. 
	nop			;2e4e	00 	. 
	ret po			;2e4f	e0 	. 
	nop			;2e50	00 	. 
	ret po			;2e51	e0 	. 
	nop			;2e52	00 	. 
	ret m			;2e53	f8 	. 
	nop			;2e54	00 	. 
l2e55h:
	ret c			;2e55	d8 	. 
	nop			;2e56	00 	. 
	call m,0fc00h		;2e57	fc 00 fc 	. . . 
	ret nz			;2e5a	c0 	. 
	ld a,a			;2e5b	7f 	 
	ld b,b			;2e5c	40 	@ 
	ld a,a			;2e5d	7f 	 
	ld h,d			;2e5e	62 	b 
	ld a,a			;2e5f	7f 	 
	ld b,b			;2e60	40 	@ 
	ld a,a			;2e61	7f 	 
	ld (hl),h			;2e62	74 	t 
	ld a,a			;2e63	7f 	 
	ld b,b			;2e64	40 	@ 
	ld a,a			;2e65	7f 	 
	ld (hl),h			;2e66	74 	t 
	ld a,a			;2e67	7f 	 
	ld b,b			;2e68	40 	@ 
	ld a,a			;2e69	7f 	 
	ld (hl),e			;2e6a	73 	s 
	ld a,a			;2e6b	7f 	 
	ld b,b			;2e6c	40 	@ 
	ld a,a			;2e6d	7f 	 
	ld a,b			;2e6e	78 	x 
	ld a,a			;2e6f	7f 	 
	ld e,b			;2e70	58 	X 
	ld a,a			;2e71	7f 	 
	ld a,e			;2e72	7b 	{ 
	ccf			;2e73	3f 	? 
	inc h			;2e74	24 	$ 
	ccf			;2e75	3f 	? 
	inc a			;2e76	3c 	< 
l2e77h:
	rra			;2e77	1f 	. 
l2e78h:
	rra			;2e78	1f 	. 
l2e79h:
	rra			;2e79	1f 	. 
	rra			;2e7a	1f 	. 
	call m,0fc00h		;2e7b	fc 00 fc 	. . . 
	jr nz,$-2		;2e7e	20 fc 	  . 
	nop			;2e80	00 	. 
	call m,0fc10h		;2e81	fc 10 fc 	. . . 
	add a,b			;2e84	80 	. 
	call m,0fc90h		;2e85	fc 90 fc 	. . . 
	nop			;2e88	00 	. 
	call m,0fc10h		;2e89	fc 10 fc 	. . . 
	nop			;2e8c	00 	. 
	call m,0fc60h		;2e8d	fc 60 fc 	. ` . 
	inc b			;2e90	04 	. 
	call m,0f884h		;2e91	fc 84 f8 	. . . 
	jr $-6		;2e94	18 f8 	. . 
	jr l2e78h		;2e96	18 e0 	. . 
	ret po			;2e98	e0 	. 
	ret po			;2e99	e0 	. 
	ret po			;2e9a	e0 	. 
	nop			;2e9b	00 	. 
	nop			;2e9c	00 	. 
	nop			;2e9d	00 	. 
	nop			;2e9e	00 	. 
	nop			;2e9f	00 	. 
	nop			;2ea0	00 	. 
	nop			;2ea1	00 	. 
	nop			;2ea2	00 	. 
	inc sp			;2ea3	33 	3 
	inc sp			;2ea4	33 	3 
	ld b,h			;2ea5	44 	D 
	nop			;2ea6	00 	. 
	ld h,(hl)			;2ea7	66 	f 
	ld h,(hl)			;2ea8	66 	f 
	ld a,a			;2ea9	7f 	 
	ld h,(hl)			;2eaa	66 	f 
	rst 38h			;2eab	ff 	. 
	add a,b			;2eac	80 	. 
	add a,b			;2ead	80 	. 
	add a,b			;2eae	80 	. 
	ld (hl),a			;2eaf	77 	w 
	ld b,h			;2eb0	44 	D 
	ld b,h			;2eb1	44 	D 
	ld b,h			;2eb2	44 	D 
	inc hl			;2eb3	23 	# 
	jr nz,l2ef5h		;2eb4	20 3f 	  ? 
	jr nz,l2f07h		;2eb6	20 4f 	  O 
	ld c,b			;2eb8	48 	H 
l2eb9h:
	ld (hl),a			;2eb9	77 	w 
	ld b,h			;2eba	44 	D 
	nop			;2ebb	00 	. 
	nop			;2ebc	00 	. 
l2ebdh:
	nop			;2ebd	00 	. 
	nop			;2ebe	00 	. 
	nop			;2ebf	00 	. 
	nop			;2ec0	00 	. 
	nop			;2ec1	00 	. 
	nop			;2ec2	00 	. 
	nop			;2ec3	00 	. 
	nop			;2ec4	00 	. 
	nop			;2ec5	00 	. 
	nop			;2ec6	00 	. 
	nop			;2ec7	00 	. 
	nop			;2ec8	00 	. 
	add a,b			;2ec9	80 	. 
	nop			;2eca	00 	. 
	add a,b			;2ecb	80 	. 
	nop			;2ecc	00 	. 
	nop			;2ecd	00 	. 
	nop			;2ece	00 	. 
	ret m			;2ecf	f8 	. 
	nop			;2ed0	00 	. 
	ret m			;2ed1	f8 	. 
	nop			;2ed2	00 	. 
	cp 000h		;2ed3	fe 00 	. . 
	cp 000h		;2ed5	fe 00 	. . 
	rst 38h			;2ed7	ff 	. 
	nop			;2ed8	00 	. 
	rst 38h			;2ed9	ff 	. 
	ld (hl),b			;2eda	70 	p 
	sbc a,a			;2edb	9f 	. 
	sbc a,b			;2edc	98 	. 
	rst 28h			;2edd	ef 	. 
	adc a,h			;2ede	8c 	. 
	cp a			;2edf	bf 	. 
	cp b			;2ee0	b8 	. 
	rst 8			;2ee1	cf 	. 
	adc a,l			;2ee2	8d 	. 
	ccf			;2ee3	3f 	? 
	jr c,$-47		;2ee4	38 cf 	8 . 
	dec c			;2ee6	0d 	. 
	ccf			;2ee7	3f 	? 
	jr c,l2eb9h		;2ee8	38 cf 	8 . 
	inc c			;2eea	0c 	. 
	ccf			;2eeb	3f 	? 
	jr c,l2ebdh		;2eec	38 cf 	8 . 
	ld c,01fh		;2eee	0e 1f 	. . 
	inc e			;2ef0	1c 	. 
	rst 20h			;2ef1	e7 	. 
	rlca			;2ef2	07 	. 
	add a,c			;2ef3	81 	. 
	add a,c			;2ef4	81 	. 
l2ef5h:
	rst 38h			;2ef5	ff 	. 
	add a,c			;2ef6	81 	. 
	ld h,b			;2ef7	60 	` 
	ld h,b			;2ef8	60 	` 
	ld a,a			;2ef9	7f 	 
	ld h,b			;2efa	60 	` 
	rst 38h			;2efb	ff 	. 
	nop			;2efc	00 	. 
	defb 0fdh,088h,0ffh	;illegal sequence		;2efd	fd 88 ff 	. . . 
	nop			;2f00	00 	. 
	rst 38h			;2f01	ff 	. 
	inc b			;2f02	04 	. 
	rst 38h			;2f03	ff 	. 
	jr nz,$+1		;2f04	20 ff 	  . 
	inc h			;2f06	24 	$ 
l2f07h:
	rst 38h			;2f07	ff 	. 
	nop			;2f08	00 	. 
	rst 38h			;2f09	ff 	. 
	call nz,sub_00ffh		;2f0a	c4 ff 00 	. . . 
	rst 38h			;2f0d	ff 	. 
	jr $+1		;2f0e	18 ff 	. . 
	ld bc,0e1ffh		;2f10	01 ff e1 	. . . 
	ret m			;2f13	f8 	. 
	nop			;2f14	00 	. 
	rst 38h			;2f15	ff 	. 
	nop			;2f16	00 	. 
l2f17h:
	ld (bc),a			;2f17	02 	. 
	ld (bc),a			;2f18	02 	. 
	cp 002h		;2f19	fe 02 	. . 
	ld (02222h),hl		;2f1b	22 22 22 	" " " 
	nop			;2f1e	00 	. 
	nop			;2f1f	00 	. 
	nop			;2f20	00 	. 
	nop			;2f21	00 	. 
	ccf			;2f22	3f 	? 
	rla			;2f23	17 	. 
	dec d			;2f24	15 	. 
	dec d			;2f25	15 	. 
	dec e			;2f26	1d 	. 
	jr nc,l2f59h		;2f27	30 30 	0 0 
	jr nc,l2f6ah		;2f29	30 3f 	0 ? 
	ld h,b			;2f2b	60 	` 
	ld h,b			;2f2c	60 	` 
	ld h,b			;2f2d	60 	` 
	ld a,a			;2f2e	7f 	 
	ld h,e			;2f2f	63 	c 
	ld h,e			;2f30	63 	c 
	ld h,e			;2f31	63 	c 
	ld a,h			;2f32	7c 	| 
l2f33h:
	ld h,a			;2f33	67 	g 
	ld h,a			;2f34	67 	g 
	ld h,a			;2f35	67 	g 
	ld a,e			;2f36	7b 	{ 
	daa			;2f37	27 	' 
	daa			;2f38	27 	' 
	daa			;2f39	27 	' 
	dec sp			;2f3a	3b 	; 
	nop			;2f3b	00 	. 
	nop			;2f3c	00 	. 
	nop			;2f3d	00 	. 
	nop			;2f3e	00 	. 
	ex af,af'			;2f3f	08 	. 
l2f40h:
	nop			;2f40	00 	. 
	nop			;2f41	00 	. 
	nop			;2f42	00 	. 
	nop			;2f43	00 	. 
	nop			;2f44	00 	. 
	ex af,af'			;2f45	08 	. 
	ret p			;2f46	f0 	. 
	jr l2f61h		;2f47	18 18 	. . 
	jr l2f33h		;2f49	18 e8 	. . 
	ret m			;2f4b	f8 	. 
	ret m			;2f4c	f8 	. 
	ret m			;2f4d	f8 	. 
	jr l2f40h		;2f4e	18 f0 	. . 
	ret p			;2f50	f0 	. 
	ret p			;2f51	f0 	. 
	ret p			;2f52	f0 	. 
	ret p			;2f53	f0 	. 
	ret p			;2f54	f0 	. 
	ret p			;2f55	f0 	. 
	ret p			;2f56	f0 	. 
	ret p			;2f57	f0 	. 
	ret p			;2f58	f0 	. 
l2f59h:
	ret p			;2f59	f0 	. 
l2f5ah:
	add a,b			;2f5a	80 	. 
	scf			;2f5b	37 	7 
	scf			;2f5c	37 	7 
	scf			;2f5d	37 	7 
	inc a			;2f5e	3c 	< 
	inc de			;2f5f	13 	. 
	inc de			;2f60	13 	. 
l2f61h:
	inc de			;2f61	13 	. 
	ld a,a			;2f62	7f 	 
	adc a,b			;2f63	88 	. 
	adc a,b			;2f64	88 	. 
	adc a,b			;2f65	88 	. 
	rst 38h			;2f66	ff 	. 
	call z,0cccch		;2f67	cc cc cc 	. . . 
l2f6ah:
	rst 38h			;2f6a	ff 	. 
	ld h,(hl)			;2f6b	66 	f 
	ld h,(hl)			;2f6c	66 	f 
	ld h,a			;2f6d	67 	g 
	ld a,(hl)			;2f6e	7e 	~ 
l2f6fh:
	inc sp			;2f6f	33 	3 
	jr nc,l2fa3h		;2f70	30 31 	0 1 
	inc a			;2f72	3c 	< 
	add hl,sp			;2f73	39 	9 
	jr c,l2fafh		;2f74	38 39 	8 9 
	ld a,01fh		;2f76	3e 1f 	> . 
	add hl,bc			;2f78	09 	. 
	dec de			;2f79	1b 	. 
	ld l,c			;2f7a	69 	i 
	ret p			;2f7b	f0 	. 
	ret p			;2f7c	f0 	. 
	ret po			;2f7d	e0 	. 
	ld h,b			;2f7e	60 	` 
	cp b			;2f7f	b8 	. 
l2f80h:
	cp b			;2f80	b8 	. 
	add a,b			;2f81	80 	. 
	ret nz			;2f82	c0 	. 
	ld e,b			;2f83	58 	X 
	ld e,b			;2f84	58 	X 
	jr nc,l2f17h		;2f85	30 90 	0 . 
	sbc a,h			;2f87	9c 	. 
	sbc a,h			;2f88	9c 	. 
	ld h,b			;2f89	60 	` 
	nop			;2f8a	00 	. 
	cp h			;2f8b	bc 	. 
	cp h			;2f8c	bc 	. 
	ret pe			;2f8d	e8 	. 
	xor b			;2f8e	a8 	. 
	inc e			;2f8f	1c 	. 
	inc e			;2f90	1c 	. 
	ret po			;2f91	e0 	. 
	nop			;2f92	00 	. 
	ld a,h			;2f93	7c 	| 
	ld a,h			;2f94	7c 	| 
	call nc,sub_3854h		;2f95	d4 54 38 	. T 8 
	jr c,l2f5ah		;2f98	38 c0 	8 . 
	nop			;2f9a	00 	. 
	ld c,000h		;2f9b	0e 00 	. . 
	rrca			;2f9d	0f 	. 
	ld (hl),b			;2f9e	70 	p 
	sbc a,(hl)			;2f9f	9e 	. 
	ld (de),a			;2fa0	12 	. 
	rra			;2fa1	1f 	. 
	ld (hl),d			;2fa2	72 	r 
l2fa3h:
	inc (hl)			;2fa3	34 	4 
	jr nc,$+57		;2fa4	30 37 	0 7 
	ret p			;2fa6	f0 	. 
	ld h,h			;2fa7	64 	d 
	inc h			;2fa8	24 	$ 
	ld h,024h		;2fa9	26 24 	& $ 
	nop			;2fab	00 	. 
	nop			;2fac	00 	. 
	inc b			;2fad	04 	. 
	nop			;2fae	00 	. 
l2fafh:
	nop			;2faf	00 	. 
	nop			;2fb0	00 	. 
	nop			;2fb1	00 	. 
	nop			;2fb2	00 	. 
	nop			;2fb3	00 	. 
	nop			;2fb4	00 	. 
	nop			;2fb5	00 	. 
	nop			;2fb6	00 	. 
	nop			;2fb7	00 	. 
	nop			;2fb8	00 	. 
	nop			;2fb9	00 	. 
	nop			;2fba	00 	. 
	ld (hl),b			;2fbb	70 	p 
	ld (hl),b			;2fbc	70 	p 
	or b			;2fbd	b0 	. 
	jr c,l2f80h		;2fbe	38 c0 	8 . 
	ret nz			;2fc0	c0 	. 
	ld b,b			;2fc1	40 	@ 
	ld a,b			;2fc2	78 	x 
	ld h,c			;2fc3	61 	a 
	ld h,b			;2fc4	60 	` 
	ld h,b			;2fc5	60 	` 
	ld a,h			;2fc6	7c 	| 
	ld (l3030h),a		;2fc7	32 30 30 	2 0 0 
	dec a			;2fca	3d 	= 
	jr c,l3005h		;2fcb	38 38 	8 8 
	jr c,l300eh		;2fcd	38 3f 	8 ? 
	jr l2fe9h		;2fcf	18 18 	. . 
	jr l2ff1h		;2fd1	18 1e 	. . 
	inc c			;2fd3	0c 	. 
	inc c			;2fd4	0c 	. 
	inc c			;2fd5	0c 	. 
	inc c			;2fd6	0c 	. 
	nop			;2fd7	00 	. 
	nop			;2fd8	00 	. 
	nop			;2fd9	00 	. 
	nop			;2fda	00 	. 
l2fdbh:
	ld (02222h),hl		;2fdb	22 22 22 	" " " 
	nop			;2fde	00 	. 
	nop			;2fdf	00 	. 
	nop			;2fe0	00 	. 
	nop			;2fe1	00 	. 
	ccf			;2fe2	3f 	? 
	rla			;2fe3	17 	. 
	dec d			;2fe4	15 	. 
	dec d			;2fe5	15 	. 
	dec e			;2fe6	1d 	. 
	jr nc,l3019h		;2fe7	30 30 	0 0 
l2fe9h:
	jr nc,$+65		;2fe9	30 3f 	0 ? 
	ld h,b			;2feb	60 	` 
	ld h,b			;2fec	60 	` 
	ld h,b			;2fed	60 	` 
	ld a,a			;2fee	7f 	 
	ld h,e			;2fef	63 	c 
	ld h,e			;2ff0	63 	c 
l2ff1h:
	ld h,e			;2ff1	63 	c 
	ld a,h			;2ff2	7c 	| 
l2ff3h:
	ld h,a			;2ff3	67 	g 
	ld h,a			;2ff4	67 	g 
	ld h,a			;2ff5	67 	g 
	ld a,e			;2ff6	7b 	{ 
	daa			;2ff7	27 	' 
	daa			;2ff8	27 	' 
	daa			;2ff9	27 	' 
	dec sp			;2ffa	3b 	; 
	nop			;2ffb	00 	. 
	nop			;2ffc	00 	. 
	nop			;2ffd	00 	. 
	nop			;2ffe	00 	. 
	ex af,af'			;2fff	08 	. 
l3000h:
	nop			;3000	00 	. 
	nop			;3001	00 	. 
	nop			;3002	00 	. 
	nop			;3003	00 	. 
	nop			;3004	00 	. 
l3005h:
	ex af,af'			;3005	08 	. 
	ret p			;3006	f0 	. 
	jr l3021h		;3007	18 18 	. . 
	jr l2ff3h		;3009	18 e8 	. . 
	ret m			;300b	f8 	. 
	ret m			;300c	f8 	. 
	ret m			;300d	f8 	. 
l300eh:
	jr l3000h		;300e	18 f0 	. . 
	ret p			;3010	f0 	. 
	ret p			;3011	f0 	. 
	ret p			;3012	f0 	. 
	ret p			;3013	f0 	. 
	ret p			;3014	f0 	. 
	ret p			;3015	f0 	. 
	ret p			;3016	f0 	. 
	ret p			;3017	f0 	. 
	ret p			;3018	f0 	. 
l3019h:
	ret p			;3019	f0 	. 
	add a,b			;301a	80 	. 
	scf			;301b	37 	7 
	scf			;301c	37 	7 
	scf			;301d	37 	7 
	inc a			;301e	3c 	< 
	inc bc			;301f	03 	. 
	inc bc			;3020	03 	. 
l3021h:
	inc bc			;3021	03 	. 
	ld a,a			;3022	7f 	 
	nop			;3023	00 	. 
	nop			;3024	00 	. 
	nop			;3025	00 	. 
	rst 38h			;3026	ff 	. 
	jr nc,l3059h		;3027	30 30 	0 0 
	jr nc,$+1		;3029	30 ff 	0 . 
	cp b			;302b	b8 	. 
	jr c,l3067h		;302c	38 39 	8 9 
	ld a,03dh		;302e	3e 3d 	> = 
l3030h:
	inc a			;3030	3c 	< 
	ccf			;3031	3f 	? 
	inc a			;3032	3c 	< 
	ccf			;3033	3f 	? 
	jr nc,$+65		;3034	30 3f 	0 ? 
	jr nc,l306fh		;3036	30 37 	0 7 
	ld hl,l2937h		;3038	21 37 29 	! 7 ) 
	ret p			;303b	f0 	. 
	ret p			;303c	f0 	. 
l303dh:
	ret po			;303d	e0 	. 
	ld h,b			;303e	60 	` 
	or b			;303f	b0 	. 
	or b			;3040	b0 	. 
	add a,b			;3041	80 	. 
	ret z			;3042	c8 	. 
	ld e,b			;3043	58 	X 
	ld e,b			;3044	58 	X 
	jr nc,l2fdbh		;3045	30 94 	0 . 
	sbc a,b			;3047	98 	. 
	sbc a,b			;3048	98 	. 
	ld h,b			;3049	60 	` 
	ld b,0bch		;304a	06 bc 	. . 
	cp h			;304c	bc 	. 
	ret pe			;304d	e8 	. 
	xor e			;304e	ab 	. 
	inc e			;304f	1c 	. 
	inc e			;3050	1c 	. 
	ret po			;3051	e0 	. 
	inc bc			;3052	03 	. 
	ld a,a			;3053	7f 	 
	ld a,(hl)			;3054	7e 	~ 
	sub 056h		;3055	d6 56 	. V 
	inc (hl)			;3057	34 	4 
sub_3058h:
	inc (hl)			;3058	34 	4 
l3059h:
	ret z			;3059	c8 	. 
	nop			;305a	00 	. 
	inc de			;305b	13 	. 
	djnz l3071h		;305c	10 13 	. . 
	inc e			;305e	1c 	. 
	ld de,l1110h		;305f	11 10 11 	. . . 
	ld a,(hl)			;3062	7e 	~ 
	jr l307dh		;3063	18 18 	. . 
	jr l30e6h		;3065	18 7f 	.  
l3067h:
	inc c			;3067	0c 	. 
	inc c			;3068	0c 	. 
	inc c			;3069	0c 	. 
	ccf			;306a	3f 	? 
	ld (hl),036h		;306b	36 36 	6 6 
	ld (hl),037h		;306d	36 37 	6 7 
l306fh:
	inc bc			;306f	03 	. 
	inc bc			;3070	03 	. 
l3071h:
	inc bc			;3071	03 	. 
	inc bc			;3072	03 	. 
	ld bc,l0101h		;3073	01 01 01 	. . . 
	ld bc,l0000h		;3076	01 00 00 	. . . 
	nop			;3079	00 	. 
	nop			;307a	00 	. 
	nop			;307b	00 	. 
	nop			;307c	00 	. 
l307dh:
	ret m			;307d	f8 	. 
	nop			;307e	00 	. 
	add a,b			;307f	80 	. 
	nop			;3080	00 	. 
	ret p			;3081	f0 	. 
	nop			;3082	00 	. 
	ret nz			;3083	c0 	. 
	nop			;3084	00 	. 
	ret nz			;3085	c0 	. 
	nop			;3086	00 	. 
	jr z,l3089h		;3087	28 00 	( . 
l3089h:
	nop			;3089	00 	. 
	sub b			;308a	90 	. 
	nop			;308b	00 	. 
sub_308ch:
	nop			;308c	00 	. 
	nop			;308d	00 	. 
	ret m			;308e	f8 	. 
	nop			;308f	00 	. 
	nop			;3090	00 	. 
	nop			;3091	00 	. 
	ret m			;3092	f8 	. 
	add a,b			;3093	80 	. 
	add a,b			;3094	80 	. 
	add a,b			;3095	80 	. 
	ret p			;3096	f0 	. 
l3097h:
	ret nz			;3097	c0 	. 
	ret nz			;3098	c0 	. 
	ret nz			;3099	c0 	. 
	ret nz			;309a	c0 	. 
	nop			;309b	00 	. 
	ld (l2200h),hl		;309c	22 00 22 	" . " 
	ccf			;309f	3f 	? 
	nop			;30a0	00 	. 
	nop			;30a1	00 	. 
	ccf			;30a2	3f 	? 
	rra			;30a3	1f 	. 
	dec d			;30a4	15 	. 
	dec d			;30a5	15 	. 
	dec e			;30a6	1d 	. 
	ccf			;30a7	3f 	? 
	jr nc,l30dah		;30a8	30 30 	0 0 
	ccf			;30aa	3f 	? 
	ld a,a			;30ab	7f 	 
	ld h,b			;30ac	60 	` 
	ld h,b			;30ad	60 	` 
	ld a,a			;30ae	7f 	 
	ld a,h			;30af	7c 	| 
	ld h,e			;30b0	63 	c 
	ld h,b			;30b1	60 	` 
	ld a,a			;30b2	7f 	 
	ld a,e			;30b3	7b 	{ 
	ld h,a			;30b4	67 	g 
	ld h,e			;30b5	63 	c 
	ld a,a			;30b6	7f 	 
	dec sp			;30b7	3b 	; 
	daa			;30b8	27 	' 
	inc hl			;30b9	23 	# 
	ccf			;30ba	3f 	? 
	nop			;30bb	00 	. 
	nop			;30bc	00 	. 
	nop			;30bd	00 	. 
	nop			;30be	00 	. 
	ex af,af'			;30bf	08 	. 
	nop			;30c0	00 	. 
	nop			;30c1	00 	. 
	nop			;30c2	00 	. 
	ret p			;30c3	f0 	. 
	nop			;30c4	00 	. 
l30c5h:
	ex af,af'			;30c5	08 	. 
	ret p			;30c6	f0 	. 
l30c7h:
	ret pe			;30c7	e8 	. 
sub_30c8h:
	jr l30d2h		;30c8	18 08 	. . 
	ret m			;30ca	f8 	. 
	jr l30c5h		;30cb	18 f8 	. . 
	jr l30c7h		;30cd	18 f8 	. . 
	ret p			;30cf	f0 	. 
	ret p			;30d0	f0 	. 
	ret p			;30d1	f0 	. 
l30d2h:
	ret p			;30d2	f0 	. 
	ret p			;30d3	f0 	. 
	ret p			;30d4	f0 	. 
	ret p			;30d5	f0 	. 
	ret p			;30d6	f0 	. 
	add a,b			;30d7	80 	. 
	ret p			;30d8	f0 	. 
	add a,b			;30d9	80 	. 
l30dah:
	ret p			;30da	f0 	. 
	inc a			;30db	3c 	< 
	scf			;30dc	37 	7 
	inc (hl)			;30dd	34 	4 
	ccf			;30de	3f 	? 
	ld a,a			;30df	7f 	 
	inc de			;30e0	13 	. 
	inc de			;30e1	13 	. 
	ld a,a			;30e2	7f 	 
	rst 38h			;30e3	ff 	. 
	adc a,b			;30e4	88 	. 
	adc a,b			;30e5	88 	. 
l30e6h:
	rst 38h			;30e6	ff 	. 
	rst 38h			;30e7	ff 	. 
	call z,0ffcch		;30e8	cc cc ff 	. . . 
	ld a,(hl)			;30eb	7e 	~ 
	ld h,(hl)			;30ec	66 	f 
	ld h,a			;30ed	67 	g 
	ld a,(hl)			;30ee	7e 	~ 
	ccf			;30ef	3f 	? 
	jr nc,l3123h		;30f0	30 31 	0 1 
	inc a			;30f2	3c 	< 
	ccf			;30f3	3f 	? 
	jr c,l312fh		;30f4	38 39 	8 9 
	ld a,07fh		;30f6	3e 7f 	>  
sub_30f8h:
	add hl,bc			;30f8	09 	. 
	dec de			;30f9	1b 	. 
	ld l,c			;30fa	69 	i 
	ld (hl),b			;30fb	70 	p 
	ret p			;30fc	f0 	. 
	ld h,b			;30fd	60 	` 
	ret po			;30fe	e0 	. 
	ret m			;30ff	f8 	. 
	cp b			;3100	b8 	. 
l3101h:
	add a,b			;3101	80 	. 
	ret nz			;3102	c0 	. 
	ret c			;3103	d8 	. 
	ld e,b			;3104	58 	X 
	jr nc,l3097h		;3105	30 90 	0 . 
	sbc a,h			;3107	9c 	. 
	sbc a,h			;3108	9c 	. 
	ld h,b			;3109	60 	` 
	nop			;310a	00 	. 
	cp h			;310b	bc 	. 
	cp h			;310c	bc 	. 
	ret pe			;310d	e8 	. 
	xor b			;310e	a8 	. 
	inc e			;310f	1c 	. 
	inc e			;3110	1c 	. 
l3111h:
	ret po			;3111	e0 	. 
	nop			;3112	00 	. 
	ld a,h			;3113	7c 	| 
	ld a,h			;3114	7c 	| 
	call nc,sub_3854h		;3115	d4 54 38 	. T 8 
	jr c,l30dah		;3118	38 c0 	8 . 
	nop			;311a	00 	. 
	ld a,(hl)			;311b	7e 	~ 
	nop			;311c	00 	. 
	rrca			;311d	0f 	. 
	ld (hl),b			;311e	70 	p 
	cp 012h		;311f	fe 12 	. . 
	rra			;3121	1f 	. 
	ld (hl),d			;3122	72 	r 
l3123h:
	call p,sub_3730h		;3123	f4 30 37 	. 0 7 
	ret p			;3126	f0 	. 
	ld h,h			;3127	64 	d 
	inc h			;3128	24 	$ 
	ld h,024h		;3129	26 24 	& $ 
	nop			;312b	00 	. 
	nop			;312c	00 	. 
	inc b			;312d	04 	. 
	nop			;312e	00 	. 
l312fh:
	nop			;312f	00 	. 
	nop			;3130	00 	. 
l3131h:
	nop			;3131	00 	. 
	nop			;3132	00 	. 
	nop			;3133	00 	. 
	nop			;3134	00 	. 
	nop			;3135	00 	. 
	nop			;3136	00 	. 
	nop			;3137	00 	. 
l3138h:
	nop			;3138	00 	. 
	nop			;3139	00 	. 
	nop			;313a	00 	. 
	ld a,b			;313b	78 	x 
	ld (hl),b			;313c	70 	p 
	or b			;313d	b0 	. 
	jr c,l3138h		;313e	38 f8 	8 . 
	ret nz			;3140	c0 	. 
	ld b,b			;3141	40 	@ 
	ld a,b			;3142	78 	x 
	ld a,l			;3143	7d 	} 
	ld h,b			;3144	60 	` 
	ld h,b			;3145	60 	` 
	ld a,h			;3146	7c 	| 
	ccf			;3147	3f 	? 
	jr nc,l317ah		;3148	30 30 	0 0 
	dec a			;314a	3d 	= 
	ccf			;314b	3f 	? 
	jr c,l3186h		;314c	38 38 	8 8 
	ccf			;314e	3f 	? 
	ld e,018h		;314f	1e 18 	. . 
	jr l3171h		;3151	18 1e 	. . 
	inc c			;3153	0c 	. 
	inc c			;3154	0c 	. 
	inc c			;3155	0c 	. 
	inc c			;3156	0c 	. 
	nop			;3157	00 	. 
	nop			;3158	00 	. 
	nop			;3159	00 	. 
	nop			;315a	00 	. 
	nop			;315b	00 	. 
	ld (l2200h),hl		;315c	22 00 22 	" . " 
	ccf			;315f	3f 	? 
	nop			;3160	00 	. 
	nop			;3161	00 	. 
	ccf			;3162	3f 	? 
	rra			;3163	1f 	. 
	dec d			;3164	15 	. 
	dec d			;3165	15 	. 
	dec e			;3166	1d 	. 
	ccf			;3167	3f 	? 
	jr nc,l319ah		;3168	30 30 	0 0 
	ccf			;316a	3f 	? 
	ld a,a			;316b	7f 	 
	ld h,b			;316c	60 	` 
	ld h,b			;316d	60 	` 
	ld a,a			;316e	7f 	 
	ld a,h			;316f	7c 	| 
	ld h,e			;3170	63 	c 
l3171h:
	ld h,b			;3171	60 	` 
	ld a,a			;3172	7f 	 
	ld a,e			;3173	7b 	{ 
	ld h,a			;3174	67 	g 
	ld h,e			;3175	63 	c 
	ld a,a			;3176	7f 	 
	dec sp			;3177	3b 	; 
	daa			;3178	27 	' 
	inc hl			;3179	23 	# 
l317ah:
	ccf			;317a	3f 	? 
	nop			;317b	00 	. 
	nop			;317c	00 	. 
	nop			;317d	00 	. 
	nop			;317e	00 	. 
	ex af,af'			;317f	08 	. 
	nop			;3180	00 	. 
	nop			;3181	00 	. 
	nop			;3182	00 	. 
	ret p			;3183	f0 	. 
	nop			;3184	00 	. 
l3185h:
	ex af,af'			;3185	08 	. 
l3186h:
	ret p			;3186	f0 	. 
l3187h:
	ret pe			;3187	e8 	. 
	jr l3192h		;3188	18 08 	. . 
	ret m			;318a	f8 	. 
	jr l3185h		;318b	18 f8 	. . 
	jr l3187h		;318d	18 f8 	. . 
	ret p			;318f	f0 	. 
	ret p			;3190	f0 	. 
	ret p			;3191	f0 	. 
l3192h:
	ret p			;3192	f0 	. 
	ret p			;3193	f0 	. 
	ret p			;3194	f0 	. 
	ret p			;3195	f0 	. 
	ret p			;3196	f0 	. 
	add a,b			;3197	80 	. 
	ret p			;3198	f0 	. 
	add a,b			;3199	80 	. 
l319ah:
	ret p			;319a	f0 	. 
	inc a			;319b	3c 	< 
	scf			;319c	37 	7 
	inc (hl)			;319d	34 	4 
	ccf			;319e	3f 	? 
	ld a,a			;319f	7f 	 
	inc bc			;31a0	03 	. 
	inc bc			;31a1	03 	. 
	ld a,a			;31a2	7f 	 
	rst 38h			;31a3	ff 	. 
	nop			;31a4	00 	. 
	nop			;31a5	00 	. 
	rst 38h			;31a6	ff 	. 
	rst 38h			;31a7	ff 	. 
	jr nc,l31dah		;31a8	30 30 	0 0 
	rst 38h			;31aa	ff 	. 
	cp (hl)			;31ab	be 	. 
	jr c,l31e7h		;31ac	38 39 	8 9 
	ld a,03dh		;31ae	3e 3d 	> = 
	inc a			;31b0	3c 	< 
	ccf			;31b1	3f 	? 
	inc a			;31b2	3c 	< 
	ccf			;31b3	3f 	? 
	jr nc,$+65		;31b4	30 3f 	0 ? 
	jr nc,$+65		;31b6	30 3f 	0 ? 
	ld hl,l2937h		;31b8	21 37 29 	! 7 ) 
	ld (hl),b			;31bb	70 	p 
	ret p			;31bc	f0 	. 
	ld h,b			;31bd	60 	` 
	ret po			;31be	e0 	. 
	ret m			;31bf	f8 	. 
	or b			;31c0	b0 	. 
	add a,b			;31c1	80 	. 
	ret z			;31c2	c8 	. 
	call c,sub_3058h		;31c3	dc 58 30 	. X 0 
	sub h			;31c6	94 	. 
	sbc a,(hl)			;31c7	9e 	. 
	sbc a,b			;31c8	98 	. 
	ld h,b			;31c9	60 	` 
	ld b,0bfh		;31ca	06 bf 	. . 
	cp h			;31cc	bc 	. 
	ret pe			;31cd	e8 	. 
	xor e			;31ce	ab 	. 
	rra			;31cf	1f 	. 
	inc e			;31d0	1c 	. 
	ret po			;31d1	e0 	. 
	inc bc			;31d2	03 	. 
	ld a,a			;31d3	7f 	 
	ld a,(hl)			;31d4	7e 	~ 
	sub 056h		;31d5	d6 56 	. V 
	inc (hl)			;31d7	34 	4 
	inc (hl)			;31d8	34 	4 
	ret z			;31d9	c8 	. 
l31dah:
	nop			;31da	00 	. 
	rra			;31db	1f 	. 
	djnz l31f1h		;31dc	10 13 	. . 
	inc e			;31de	1c 	. 
	ld a,a			;31df	7f 	 
	djnz l31f3h		;31e0	10 11 	. . 
	ld a,(hl)			;31e2	7e 	~ 
	ld a,a			;31e3	7f 	 
	jr l31feh		;31e4	18 18 	. . 
	ld a,a			;31e6	7f 	 
l31e7h:
	ccf			;31e7	3f 	? 
	inc c			;31e8	0c 	. 
	inc c			;31e9	0c 	. 
	ccf			;31ea	3f 	? 
	scf			;31eb	37 	7 
	ld (hl),036h		;31ec	36 36 	6 6 
	scf			;31ee	37 	7 
	inc bc			;31ef	03 	. 
	inc bc			;31f0	03 	. 
l31f1h:
	inc bc			;31f1	03 	. 
	inc bc			;31f2	03 	. 
l31f3h:
	ld bc,l0101h		;31f3	01 01 01 	. . . 
	ld bc,l0000h		;31f6	01 00 00 	. . . 
	nop			;31f9	00 	. 
	nop			;31fa	00 	. 
	nop			;31fb	00 	. 
	nop			;31fc	00 	. 
	ret m			;31fd	f8 	. 
l31feh:
	nop			;31fe	00 	. 
	add a,b			;31ff	80 	. 
	nop			;3200	00 	. 
	ret p			;3201	f0 	. 
	nop			;3202	00 	. 
	ret nz			;3203	c0 	. 
	nop			;3204	00 	. 
	ret nz			;3205	c0 	. 
	nop			;3206	00 	. 
	cp b			;3207	b8 	. 
	nop			;3208	00 	. 
	nop			;3209	00 	. 
	sub b			;320a	90 	. 
	ret m			;320b	f8 	. 
sub_320ch:
	nop			;320c	00 	. 
	nop			;320d	00 	. 
	ret m			;320e	f8 	. 
	ret m			;320f	f8 	. 
	nop			;3210	00 	. 
	nop			;3211	00 	. 
	ret m			;3212	f8 	. 
	ret p			;3213	f0 	. 
	add a,b			;3214	80 	. 
	add a,b			;3215	80 	. 
	ret p			;3216	f0 	. 
	ret nz			;3217	c0 	. 
	ret nz			;3218	c0 	. 
	ret nz			;3219	c0 	. 
	ret nz			;321a	c0 	. 
	ld bc,l1000h		;321b	01 00 10 	. . . 
	nop			;321e	00 	. 
	dec bc			;321f	0b 	. 
	nop			;3220	00 	. 
	ld a,(bc)			;3221	0a 	. 
	ld (bc),a			;3222	02 	. 
	dec c			;3223	0d 	. 
	ld bc,l0d0fh		;3224	01 0f 0d 	. . . 
	dec de			;3227	1b 	. 
	dec bc			;3228	0b 	. 
	rra			;3229	1f 	. 
	dec de			;322a	1b 	. 
	scf			;322b	37 	7 
	rlca			;322c	07 	. 
	ccf			;322d	3f 	? 
	scf			;322e	37 	7 
	cpl			;322f	2f 	/ 
	rrca			;3230	0f 	. 
	ccf			;3231	3f 	? 
	cpl			;3232	2f 	/ 
	cpl			;3233	2f 	/ 
	rrca			;3234	0f 	. 
	ccf			;3235	3f 	? 
	cpl			;3236	2f 	/ 
	inc sp			;3237	33 	3 
	inc bc			;3238	03 	. 
	ccf			;3239	3f 	? 
	inc sp			;323a	33 	3 
	nop			;323b	00 	. 
	nop			;323c	00 	. 
	inc b			;323d	04 	. 
	nop			;323e	00 	. 
	ret z			;323f	c8 	. 
	nop			;3240	00 	. 
	ret z			;3241	c8 	. 
	nop			;3242	00 	. 
	jr c,l3245h		;3243	38 00 	8 . 
l3245h:
	ret m			;3245	f8 	. 
	nop			;3246	00 	. 
	ret c			;3247	d8 	. 
	ret nc			;3248	d0 	. 
	ret m			;3249	f8 	. 
	ret nc			;324a	d0 	. 
l324bh:
	call pe,0fce0h		;324b	ec e0 fc 	. . . 
	ret po			;324e	e0 	. 
	call p,0fcf0h		;324f	f4 f0 fc 	. . . 
	ret p			;3252	f0 	. 
	call p,0fcf0h		;3253	f4 f0 fc 	. . . 
	ret p			;3256	f0 	. 
	call pe,0fce0h		;3257	ec e0 fc 	. . . 
	ret po			;325a	e0 	. 
	inc e			;325b	1c 	. 
	nop			;325c	00 	. 
	rra			;325d	1f 	. 
	djnz l329fh		;325e	10 3f 	. ? 
	jr l32a1h		;3260	18 3f 	. ? 
	jr l32a3h		;3262	18 3f 	. ? 
	rrca			;3264	0f 	. 
	ld a,a			;3265	7f 	 
	rrca			;3266	0f 	. 
	rst 38h			;3267	ff 	. 
	jr nc,$+1		;3268	30 ff 	0 . 
	jr c,l324bh		;326a	38 df 	8 . 
	ld d,b			;326c	50 	P 
	ld e,a			;326d	5f 	_ 
	ld e,h			;326e	5c 	\ 
	sbc a,h			;326f	9c 	. 
	sbc a,b			;3270	98 	. 
	sbc a,a			;3271	9f 	. 
	sbc a,h			;3272	9c 	. 
	ld (de),a			;3273	12 	. 
	ld (de),a			;3274	12 	. 
	rra			;3275	1f 	. 
	ld (de),a			;3276	12 	. 
	nop			;3277	00 	. 
	nop			;3278	00 	. 
	rra			;3279	1f 	. 
	nop			;327a	00 	. 
	jr l327dh		;327b	18 00 	. . 
l327dh:
	ret m			;327d	f8 	. 
l327eh:
	nop			;327e	00 	. 
	call m,0fc18h		;327f	fc 18 fc 	. . . 
	jr l327eh		;3282	18 fa 	. . 
	ret p			;3284	f0 	. 
	xor 0e8h		;3285	ee e8 	. . 
	defb 0fdh,030h,0cfh	;illegal sequence		;3287	fd 30 cf 	. 0 . 
	ex af,af'			;328a	08 	. 
	ld a,a			;328b	7f 	 
	ld a,h			;328c	7c 	| 
	sub a			;328d	97 	. 
	inc d			;328e	14 	. 
	ccf			;328f	3f 	? 
	ld a,0c6h		;3290	3e c6 	> . 
	ld b,0b9h		;3292	06 b9 	. . 
	cp c			;3294	b9 	. 
	jp (hl)			;3295	e9 	. 
	xor c			;3296	a9 	. 
	jr $+26		;3297	18 18 	. . 
	ret po			;3299	e0 	. 
	nop			;329a	00 	. 
	dec b			;329b	05 	. 
	dec b			;329c	05 	. 
	rrca			;329d	0f 	. 
	dec b			;329e	05 	. 
l329fh:
	ex af,af'			;329f	08 	. 
	nop			;32a0	00 	. 
l32a1h:
	rrca			;32a1	0f 	. 
	nop			;32a2	00 	. 
l32a3h:
	dec e			;32a3	1d 	. 
	ld bc,0051fh		;32a4	01 1f 05 	. . . 
	call pe,07f04h		;32a7	ec 04 7f 	. .  
l32aah:
	inc c			;32aa	0c 	. 
	call c,0fd0ch		;32ab	dc 0c fd 	. . . 
	sbc a,h			;32ae	9c 	. 
	ret m			;32af	f8 	. 
	jr l32aah		;32b0	18 f8 	. . 
	ret m			;32b2	f8 	. 
	ld (hl),b			;32b3	70 	p 
	ld (hl),b			;32b4	70 	p 
	ld (hl),b			;32b5	70 	p 
	ld (hl),b			;32b6	70 	p 
	nop			;32b7	00 	. 
	nop			;32b8	00 	. 
	nop			;32b9	00 	. 
	nop			;32ba	00 	. 
	ld e,b			;32bb	58 	X 
	ld e,b			;32bc	58 	X 
	ret p			;32bd	f0 	. 
	ld d,b			;32be	50 	P 
	nop			;32bf	00 	. 
	nop			;32c0	00 	. 
	ret p			;32c1	f0 	. 
	nop			;32c2	00 	. 
	jr l32c5h		;32c3	18 00 	. . 
l32c5h:
	ret m			;32c5	f8 	. 
	nop			;32c6	00 	. 
	ld (hl),a			;32c7	77 	w 
	ld h,b			;32c8	60 	` 
	cp 070h		;32c9	fe 70 	. p 
	dec sp			;32cb	3b 	; 
	jr nc,l330dh		;32cc	30 3f 	0 ? 
	add hl,sp			;32ce	39 	9 
	rra			;32cf	1f 	. 
	jr l32f1h		;32d0	18 1f 	. . 
	rra			;32d2	1f 	. 
	ld c,00eh		;32d3	0e 0e 	. . 
	ld c,00eh		;32d5	0e 0e 	. . 
	nop			;32d7	00 	. 
	nop			;32d8	00 	. 
	nop			;32d9	00 	. 
	nop			;32da	00 	. 
	ld bc,l0100h		;32db	01 00 01 	. . . 
	nop			;32de	00 	. 
	nop			;32df	00 	. 
	nop			;32e0	00 	. 
	nop			;32e1	00 	. 
	rlca			;32e2	07 	. 
	nop			;32e3	00 	. 
	nop			;32e4	00 	. 
	nop			;32e5	00 	. 
	rra			;32e6	1f 	. 
	nop			;32e7	00 	. 
	nop			;32e8	00 	. 
	nop			;32e9	00 	. 
	ccf			;32ea	3f 	? 
	nop			;32eb	00 	. 
	nop			;32ec	00 	. 
	nop			;32ed	00 	. 
	ccf			;32ee	3f 	? 
	nop			;32ef	00 	. 
	ld b,b			;32f0	40 	@ 
l32f1h:
	ld b,b			;32f1	40 	@ 
	cp a			;32f2	bf 	. 
	ld e,b			;32f3	58 	X 
	ld e,b			;32f4	58 	X 
	ld b,b			;32f5	40 	@ 
	and a			;32f6	a7 	. 
l32f7h:
	ld e,h			;32f7	5c 	\ 
	ld e,h			;32f8	5c 	\ 
	ld e,b			;32f9	58 	X 
	cp e			;32fa	bb 	. 
	and b			;32fb	a0 	. 
	nop			;32fc	00 	. 
	and b			;32fd	a0 	. 
	nop			;32fe	00 	. 
	ld b,b			;32ff	40 	@ 
	ld b,b			;3300	40 	@ 
	ld b,b			;3301	40 	@ 
	ret nz			;3302	c0 	. 
	jr nc,l3335h		;3303	30 30 	0 0 
	jr nc,l32f7h		;3305	30 f0 	0 . 
	ex af,af'			;3307	08 	. 
	ld a,b			;3308	78 	x 
	ld a,b			;3309	78 	x 
	adc a,b			;330a	88 	. 
	ex af,af'			;330b	08 	. 
	ld a,b			;330c	78 	x 
l330dh:
	ld a,b			;330d	78 	x 
	adc a,b			;330e	88 	. 
	ld (bc),a			;330f	02 	. 
	ld (hl),d			;3310	72 	r 
	ld (hl),d			;3311	72 	r 
	adc a,(hl)			;3312	8e 	. 
	adc a,d			;3313	8a 	. 
	cp d			;3314	ba 	. 
	ld a,d			;3315	7a 	z 
	ld b,0cah		;3316	06 ca 	. . 
	jp c,0c6fah		;3318	da fa c6 	. . . 
	ld e,b			;331b	58 	X 
	ret c			;331c	d8 	. 
	ret nz			;331d	c0 	. 
	daa			;331e	27 	' 
	ld b,a			;331f	47 	G 
	ret nz			;3320	c0 	. 
	rst 0			;3321	c7 	. 
	ld a,a			;3322	7f 	 
	rlca			;3323	07 	. 
l3324h:
	nop			;3324	00 	. 
	rlca			;3325	07 	. 
	jr c,l3328h		;3326	38 00 	8 . 
l3328h:
	nop			;3328	00 	. 
	nop			;3329	00 	. 
	rst 18h			;332a	df 	. 
	dec bc			;332b	0b 	. 
	set 1,e		;332c	cb cb 	. . 
	cpl			;332e	2f 	/ 
	djnz l3324h		;332f	10 f3 	. . 
	di			;3331	f3 	. 
	inc e			;3332	1c 	. 
	add a,b			;3333	80 	. 
	ret p			;3334	f0 	. 
l3335h:
	ret p			;3335	f0 	. 
	adc a,a			;3336	8f 	. 
	ld b,b			;3337	40 	@ 
	ld h,b			;3338	60 	` 
	ld h,b			;3339	60 	` 
	ld e,a			;333a	5f 	_ 
	adc a,d			;333b	8a 	. 
	cp d			;333c	ba 	. 
	ld a,d			;333d	7a 	z 
	ld b,016h		;333e	06 16 	. . 
	or 0f6h		;3340	f6 f6 	. . 
	ld e,018h		;3342	1e 18 	. . 
	ret m			;3344	f8 	. 
	ret m			;3345	f8 	. 
	jr $+50		;3346	18 30 	. 0 
	or 0f6h		;3348	f6 f6 	. . 
	jr nc,l338ch		;334a	30 40 	0 @ 
	adc a,0ceh		;334c	ce ce 	. . 
	ld b,b			;334e	40 	@ 
l334fh:
	jr nz,l334fh		;334f	20 fe 	  . 
	cp 020h		;3351	fe 20 	.   
	ld (0fefeh),hl		;3353	22 fe fe 	" . . 
	ld (07c34h),hl		;3356	22 34 7c 	" 4 | 
	ld a,h			;3359	7c 	| 
	or h			;335a	b4 	. 
	nop			;335b	00 	. 
	jr nz,l337eh		;335c	20 20 	    
	rra			;335e	1f 	. 
	nop			;335f	00 	. 
	nop			;3360	00 	. 
	ld (hl),b			;3361	70 	p 
	rrca			;3362	0f 	. 
	nop			;3363	00 	. 
	nop			;3364	00 	. 
	rst 38h			;3365	ff 	. 
	nop			;3366	00 	. 
	ld b,b			;3367	40 	@ 
	ld b,b			;3368	40 	@ 
	ld c,a			;3369	4f 	O 
	ld (hl),b			;336a	70 	p 
	ld bc,l0703h+2		;336b	01 05 07 	. . . 
	add hl,sp			;336e	39 	9 
	ld (bc),a			;336f	02 	. 
	ld c,00eh		;3370	0e 0e 	. . 
	ld (hl),d			;3372	72 	r 
	inc e			;3373	1c 	. 
	inc e			;3374	1c 	. 
	inc e			;3375	1c 	. 
	call m,0e0e0h		;3376	fc e0 e0 	. . . 
l3379h:
	ret po			;3379	e0 	. 
	ret po			;337a	e0 	. 
	jr l33f5h		;337b	18 78 	. x 
	ld a,b			;337d	78 	x 
l337eh:
	sbc a,b			;337e	98 	. 
	jr l3379h		;337f	18 f8 	. . 
	ret pe			;3381	e8 	. 
	ex af,af'			;3382	08 	. 
	cp 0feh		;3383	fe fe 	. . 
	ld b,006h		;3385	06 06 	. . 
	ld l,07eh		;3387	2e 7e 	. ~ 
	jp nc,l0c02h		;3389	d2 02 0c 	. . . 
l338ch:
	inc a			;338c	3c 	< 
	inc a			;338d	3c 	< 
	call z,sub_0e02h		;338e	cc 02 0e 	. . . 
	ld c,072h		;3391	0e 72 	. r 
	ld bc,l0101h		;3393	01 01 01 	. . . 
	rra			;3396	1f 	. 
	ld e,01eh		;3397	1e 1e 	. . 
	ld e,01eh		;3399	1e 1e 	. . 
	ld bc,l0100h		;339b	01 00 01 	. . . 
	nop			;339e	00 	. 
	nop			;339f	00 	. 
	nop			;33a0	00 	. 
	nop			;33a1	00 	. 
	rlca			;33a2	07 	. 
	nop			;33a3	00 	. 
	nop			;33a4	00 	. 
	nop			;33a5	00 	. 
	rra			;33a6	1f 	. 
	nop			;33a7	00 	. 
	nop			;33a8	00 	. 
	nop			;33a9	00 	. 
	ccf			;33aa	3f 	? 
	nop			;33ab	00 	. 
	nop			;33ac	00 	. 
	nop			;33ad	00 	. 
	ccf			;33ae	3f 	? 
	nop			;33af	00 	. 
	nop			;33b0	00 	. 
	nop			;33b1	00 	. 
	ld a,a			;33b2	7f 	 
	jr nz,l33d5h		;33b3	20 20 	    
	djnz $+81		;33b5	10 4f 	. O 
	jr nc,l33e9h		;33b7	30 30 	0 0 
	jr c,l3432h		;33b9	38 77 	8 w 
	ret nc			;33bb	d0 	. 
	nop			;33bc	00 	. 
l33bdh:
	ret nc			;33bd	d0 	. 
	nop			;33be	00 	. 
	jr nz,$+98		;33bf	20 60 	  ` 
	ld h,b			;33c1	60 	` 
	and b			;33c2	a0 	. 
	jr c,l33bdh		;33c3	38 f8 	8 . 
	ret m			;33c5	f8 	. 
	jr c,$+14		;33c6	38 0c 	8 . 
	call m,sub_0cfch		;33c8	fc fc 0c 	. . . 
	ld h,0beh		;33cb	26 be 	& . 
	cp (hl)			;33cd	be 	. 
	ld h,(hl)			;33ce	66 	f 
	ld d,09eh		;33cf	16 9e 	. . 
	sbc a,(hl)			;33d1	9e 	. 
	halt			;33d2	76 	v 
	ld d,0deh		;33d3	16 de 	. . 
l33d5h:
	sbc a,036h		;33d5	de 36 	. 6 
	ld e,0deh		;33d7	1e de 	. . 
	sbc a,03eh		;33d9	de 3e 	. > 
	nop			;33db	00 	. 
	nop			;33dc	00 	. 
	djnz $+113		;33dd	10 6f 	. o 
	ld h,b			;33df	60 	` 
	ld bc,07e61h		;33e0	01 61 7e 	. a ~ 
	jr nz,$+3		;33e3	20 01 	  . 
	ld hl,l001eh		;33e5	21 1e 00 	! . . 
	rlca			;33e8	07 	. 
l33e9h:
	rlca			;33e9	07 	. 
	ex af,af'			;33ea	08 	. 
	inc bc			;33eb	03 	. 
	inc bc			;33ec	03 	. 
	inc bc			;33ed	03 	. 
	inc bc			;33ee	03 	. 
	nop			;33ef	00 	. 
	inc bc			;33f0	03 	. 
	inc bc			;33f1	03 	. 
	inc b			;33f2	04 	. 
	nop			;33f3	00 	. 
	inc bc			;33f4	03 	. 
l33f5h:
	inc bc			;33f5	03 	. 
	inc c			;33f6	0c 	. 
	nop			;33f7	00 	. 
	inc bc			;33f8	03 	. 
l33f9h:
	inc bc			;33f9	03 	. 
	inc c			;33fa	0c 	. 
	ld e,09eh		;33fb	1e 9e 	. . 
	sbc a,(hl)			;33fd	9e 	. 
	ld a,(hl)			;33fe	7e 	~ 
	ld a,0beh		;33ff	3e be 	> . 
	cp (hl)			;3401	be 	. 
	ld a,(hl)			;3402	7e 	~ 
	inc e			;3403	1c 	. 
	call m,sub_1cfch		;3404	fc fc 1c 	. . . 
	jr nc,l33f9h		;3407	30 f0 	0 . 
	ret p			;3409	f0 	. 
	jr nc,$-14		;340a	30 f0 	0 . 
	ret p			;340c	f0 	. 
	ret p			;340d	f0 	. 
	ret p			;340e	f0 	. 
	sbc a,b			;340f	98 	. 
	sbc a,b			;3410	98 	. 
	sbc a,b			;3411	98 	. 
	ret m			;3412	f8 	. 
	adc a,h			;3413	8c 	. 
	adc a,h			;3414	8c 	. 
	adc a,h			;3415	8c 	. 
	call m,08282h		;3416	fc 82 82 	. . . 
	add a,d			;3419	82 	. 
	cp 000h		;341a	fe 00 	. . 
	ld bc,l1e00h+1		;341c	01 01 1e 	. . . 
	ld bc,l0303h		;341f	01 03 03 	. . . 
	dec e			;3422	1d 	. 
	nop			;3423	00 	. 
	nop			;3424	00 	. 
	ccf			;3425	3f 	? 
	nop			;3426	00 	. 
	nop			;3427	00 	. 
	inc bc			;3428	03 	. 
	ld a,e			;3429	7b 	{ 
	inc b			;342a	04 	. 
	jr c,l3465h		;342b	38 38 	8 8 
	jr c,l346eh		;342d	38 3f 	8 ? 
	nop			;342f	00 	. 
	nop			;3430	00 	. 
	nop			;3431	00 	. 
l3432h:
	rrca			;3432	0f 	. 
	nop			;3433	00 	. 
	inc bc			;3434	03 	. 
	inc bc			;3435	03 	. 
	inc c			;3436	0c 	. 
	rlca			;3437	07 	. 
	rlca			;3438	07 	. 
	rlca			;3439	07 	. 
	rlca			;343a	07 	. 
	pop bc			;343b	c1 	. 
	pop bc			;343c	c1 	. 
	pop bc			;343d	c1 	. 
	rst 38h			;343e	ff 	. 
	exx			;343f	d9 	. 
	exx			;3440	d9 	. 
	ret			;3441	c9 	. 
	rst 28h			;3442	ef 	. 
	jp m,l02fah		;3443	fa fa 02 	. . . 
	ld b,05eh		;3446	06 5e 	. ^ 
	sbc a,0ech		;3448	de ec 	. . 
	ld c,h			;344a	4c 	L 
	ld b,h			;344b	44 	D 
	call z,044dch		;344c	cc dc 44 	. . D 
	ld b,h			;344f	44 	D 
	call z,054cch		;3450	cc cc 54 	. . T 
	sbc a,b			;3453	98 	. 
	sbc a,b			;3454	98 	. 
	sbc a,b			;3455	98 	. 
	sbc a,b			;3456	98 	. 
	add a,b			;3457	80 	. 
	add a,b			;3458	80 	. 
	add a,b			;3459	80 	. 
	add a,b			;345a	80 	. 
	ld bc,l0100h		;345b	01 00 01 	. . . 
	nop			;345e	00 	. 
	nop			;345f	00 	. 
	nop			;3460	00 	. 
	nop			;3461	00 	. 
	rlca			;3462	07 	. 
	nop			;3463	00 	. 
	nop			;3464	00 	. 
l3465h:
	nop			;3465	00 	. 
	rra			;3466	1f 	. 
	nop			;3467	00 	. 
	nop			;3468	00 	. 
	nop			;3469	00 	. 
	ccf			;346a	3f 	? 
	nop			;346b	00 	. 
	nop			;346c	00 	. 
	nop			;346d	00 	. 
l346eh:
	ccf			;346e	3f 	? 
	nop			;346f	00 	. 
	nop			;3470	00 	. 
	nop			;3471	00 	. 
	ld a,a			;3472	7f 	 
	ld (l0132h),a		;3473	32 32 01 	2 2 . 
	ld c,h			;3476	4c 	L 
l3477h:
	dec sp			;3477	3b 	; 
	dec sp			;3478	3b 	; 
	inc sp			;3479	33 	3 
	ld (hl),a			;347a	77 	w 
	and b			;347b	a0 	. 
	nop			;347c	00 	. 
	and b			;347d	a0 	. 
	nop			;347e	00 	. 
	ld h,b			;347f	60 	` 
	ld h,b			;3480	60 	` 
	ld h,b			;3481	60 	` 
	ret po			;3482	e0 	. 
	djnz l3495h		;3483	10 10 	. . 
	djnz l3477h		;3485	10 f0 	. . 
	ex af,af'			;3487	08 	. 
	ld a,b			;3488	78 	x 
	ld a,b			;3489	78 	x 
	adc a,b			;348a	88 	. 
	inc b			;348b	04 	. 
sub_348ch:
	ld a,h			;348c	7c 	| 
	ld a,h			;348d	7c 	| 
	add a,h			;348e	84 	. 
	inc b			;348f	04 	. 
	ld h,h			;3490	64 	d 
	ld h,h			;3491	64 	d 
	sbc a,h			;3492	9c 	. 
	inc d			;3493	14 	. 
	ld (hl),h			;3494	74 	t 
l3495h:
	ld (hl),h			;3495	74 	t 
	adc a,h			;3496	8c 	. 
	inc d			;3497	14 	. 
	ld (hl),h			;3498	74 	t 
	call p,sub_320ch		;3499	f4 0c 32 	. . 2 
	ld (04c01h),a		;349c	32 01 4c 	2 . L 
	ld c,000h		;349f	0e 00 	. . 
	ld c,07fh		;34a1	0e 7f 	.  
	ld c,000h		;34a3	0e 00 	. . 
	ld c,039h		;34a5	0e 39 	. 9 
	nop			;34a7	00 	. 
	nop			;34a8	00 	. 
	nop			;34a9	00 	. 
	rst 18h			;34aa	df 	. 
	dec bc			;34ab	0b 	. 
	set 1,e		;34ac	cb cb 	. . 
	cpl			;34ae	2f 	/ 
	sub b			;34af	90 	. 
	di			;34b0	f3 	. 
	di			;34b1	f3 	. 
	sbc a,h			;34b2	9c 	. 
	ld b,b			;34b3	40 	@ 
	ld (hl),b			;34b4	70 	p 
	ld (hl),b			;34b5	70 	p 
	ld c,a			;34b6	4f 	O 
	jr nz,l34d9h		;34b7	20 20 	    
	jr nz,l34fah		;34b9	20 3f 	  ? 
	inc d			;34bb	14 	. 
	call p,00cf4h		;34bc	f4 f4 0c 	. . . 
	inc c			;34bf	0c 	. 
	call pe,l1cech		;34c0	ec ec 1c 	. . . 
	jr $-6		;34c3	18 f8 	. . 
	ret m			;34c5	f8 	. 
	jr l34f8h		;34c6	18 30 	. 0 
	ret p			;34c8	f0 	. 
	ret p			;34c9	f0 	. 
	jr nc,$+66		;34ca	30 40 	0 @ 
	ret z			;34cc	c8 	. 
l34cdh:
	ret z			;34cd	c8 	. 
	ld b,h			;34ce	44 	D 
	jr nz,l34cdh		;34cf	20 fc 	  . 
	call m,04420h		;34d1	fc 20 44 	.   D 
	call m,044fch		;34d4	fc fc 44 	. . D 
	ld e,b			;34d7	58 	X 
	ret m			;34d8	f8 	. 
l34d9h:
	ret m			;34d9	f8 	. 
	ld e,b			;34da	58 	X 
	nop			;34db	00 	. 
	ld bc,l1e00h+1		;34dc	01 01 1e 	. . . 
	nop			;34df	00 	. 
	inc bc			;34e0	03 	. 
	inc hl			;34e1	23 	# 
	inc e			;34e2	1c 	. 
	nop			;34e3	00 	. 
	nop			;34e4	00 	. 
	ld a,a			;34e5	7f 	 
	nop			;34e6	00 	. 
	ld b,b			;34e7	40 	@ 
	ld b,b			;34e8	40 	@ 
	rst 38h			;34e9	ff 	. 
	ld b,b			;34ea	40 	@ 
	cp a			;34eb	bf 	. 
	cp a			;34ec	bf 	. 
	cp (hl)			;34ed	be 	. 
	cp (hl)			;34ee	be 	. 
	ld h,h			;34ef	64 	d 
	ld a,h			;34f0	7c 	| 
	ld a,h			;34f1	7c 	| 
	ld h,a			;34f2	67 	g 
	add hl,bc			;34f3	09 	. 
l34f4h:
	add hl,sp			;34f4	39 	9 
	add hl,sp			;34f5	39 	9 
	add hl,bc			;34f6	09 	. 
	ld (de),a			;34f7	12 	. 
l34f8h:
	ld (de),a			;34f8	12 	. 
	ld (de),a			;34f9	12 	. 
l34fah:
	inc de			;34fa	13 	. 
	jr nz,$-30		;34fb	20 e0 	  . 
	ret po			;34fd	e0 	. 
	jr nz,l3520h		;34fe	20 20 	    
	ret po			;3500	e0 	. 
	ret po			;3501	e0 	. 
	jr nz,l34f4h		;3502	20 f0 	  . 
	ret p			;3504	f0 	. 
l3505h:
	djnz l3517h		;3505	10 10 	. . 
l3507h:
	ld a,b			;3507	78 	x 
	ld a,b			;3508	78 	x 
	adc a,b			;3509	88 	. 
	ex af,af'			;350a	08 	. 
l350bh:
	call m,044fch		;350b	fc fc 44 	. . D 
	ld b,h			;350e	44 	D 
	jr c,$+58		;350f	38 38 	8 8 
	jr c,l350bh		;3511	38 f8 	8 . 
	djnz l3525h		;3513	10 10 	. . 
	djnz l3507h		;3515	10 f0 	. . 
l3517h:
	djnz l3529h		;3517	10 10 	. . 
	djnz l350bh		;3519	10 f0 	. . 
	nop			;351b	00 	. 
	nop			;351c	00 	. 
	nop			;351d	00 	. 
	nop			;351e	00 	. 
	rlca			;351f	07 	. 
l3520h:
	nop			;3520	00 	. 
	nop			;3521	00 	. 
	rlca			;3522	07 	. 
	ld e,001h		;3523	1e 01 	. . 
l3525h:
	nop			;3525	00 	. 
	rra			;3526	1f 	. 
	rra			;3527	1f 	. 
	nop			;3528	00 	. 
l3529h:
	nop			;3529	00 	. 
	rra			;352a	1f 	. 
	ccf			;352b	3f 	? 
	ld bc,l3f01h		;352c	01 01 3f 	. . ? 
	cp a			;352f	bf 	. 
	daa			;3530	27 	' 
	and (hl)			;3531	a6 	. 
	ld a,0ddh		;3532	3e dd 	> . 
	ld de,l10feh		;3534	11 fe 10 	. . . 
	ei			;3537	fb 	. 
	add a,d			;3538	82 	. 
	call m,sub_0080h		;3539	fc 80 00 	. . . 
	nop			;353c	00 	. 
	nop			;353d	00 	. 
	nop			;353e	00 	. 
	ret nz			;353f	c0 	. 
	nop			;3540	00 	. 
	nop			;3541	00 	. 
	ret nz			;3542	c0 	. 
	jr nc,l3505h		;3543	30 c0 	0 . 
	nop			;3545	00 	. 
	ret p			;3546	f0 	. 
	call nz,sub_0038h		;3547	c4 38 00 	. 8 . 
	call m,0d8e4h		;354a	fc e4 d8 	. . . 
	ret nz			;354d	c0 	. 
	call m,0ecf2h		;354e	fc f2 ec 	. . . 
	jr nz,l3591h		;3551	20 3e 	  > 
	jp m,l10f4h		;3553	fa f4 10 	. . . 
	ld e,0fah		;3556	1e fa 	. . 
	call p,01e10h		;3558	f4 10 1e 	. . . 
	add a,a			;355b	87 	. 
	add a,a			;355c	87 	. 
	ret m			;355d	f8 	. 
	add a,b			;355e	80 	. 
	adc a,a			;355f	8f 	. 
	adc a,(hl)			;3560	8e 	. 
	ret p			;3561	f0 	. 
	add a,b			;3562	80 	. 
	ld b,a			;3563	47 	G 
	ld b,(hl)			;3564	46 	F 
	ld a,b			;3565	78 	x 
	ld b,b			;3566	40 	@ 
	dec a			;3567	3d 	= 
	ld (l3f20h),hl		;3568	22 20 3f 	"   ? 
	daa			;356b	27 	' 
	daa			;356c	27 	' 
	jr c,l358fh		;356d	38 20 	8   
	dec a			;356f	3d 	= 
	ld (l3f20h),hl		;3570	22 20 3f 	"   ? 
	daa			;3573	27 	' 
	daa			;3574	27 	' 
	jr c,l3597h		;3575	38 20 	8   
	dec sp			;3577	3b 	; 
	dec h			;3578	25 	% 
	jr nz,l35b9h		;3579	20 3e 	  > 
	jp m,01074h		;357b	fa 74 10 	. t . 
	ld e,0fah		;357e	1e fa 	. . 
	ld (hl),h			;3580	74 	t 
	djnz l35a1h		;3581	10 1e 	. . 
	cp 0f0h		;3583	fe f0 	. . 
	djnz $+32		;3585	10 1e 	. . 
	call p,sub_2068h		;3587	f4 68 20 	. h   
	cp h			;358a	bc 	. 
	call m,040c0h		;358b	fc c0 40 	. . @ 
	ld a,h			;358e	7c 	| 
l358fh:
	ret m			;358f	f8 	. 
	ret nz			;3590	c0 	. 
l3591h:
	ld b,b			;3591	40 	@ 
	ld a,b			;3592	78 	x 
	ret p			;3593	f0 	. 
	add a,b			;3594	80 	. 
	add a,b			;3595	80 	. 
	ret p			;3596	f0 	. 
l3597h:
	ret po			;3597	e0 	. 
	add a,b			;3598	80 	. 
	add a,b			;3599	80 	. 
	ret po			;359a	e0 	. 
	cpl			;359b	2f 	/ 
	ld l,030h		;359c	2e 30 	. 0 
	ld hl,l121fh		;359e	21 1f 12 	! . . 
l35a1h:
	djnz l35c0h		;35a1	10 1d 	. . 
	ld de,01e10h		;35a3	11 10 1e 	. . . 
	ld de,l101dh		;35a6	11 1d 10 	. . . 
	ld (de),a			;35a9	12 	. 
	dec e			;35aa	1d 	. 
	ex af,af'			;35ab	08 	. 
	ex af,af'			;35ac	08 	. 
	rrca			;35ad	0f 	. 
	ex af,af'			;35ae	08 	. 
	ld c,008h		;35af	0e 08 	. . 
	add hl,bc			;35b1	09 	. 
	ld c,007h		;35b2	0e 07 	. . 
	inc b			;35b4	04 	. 
	inc b			;35b5	04 	. 
	rlca			;35b6	07 	. 
	rrca			;35b7	0f 	. 
	rrca			;35b8	0f 	. 
l35b9h:
	rrca			;35b9	0f 	. 
	rrca			;35ba	0f 	. 
	ret nz			;35bb	c0 	. 
	nop			;35bc	00 	. 
	nop			;35bd	00 	. 
	ret nz			;35be	c0 	. 
	add a,b			;35bf	80 	. 
l35c0h:
	nop			;35c0	00 	. 
	nop			;35c1	00 	. 
	add a,b			;35c2	80 	. 
	add a,b			;35c3	80 	. 
	nop			;35c4	00 	. 
	nop			;35c5	00 	. 
	add a,b			;35c6	80 	. 
	add a,b			;35c7	80 	. 
	nop			;35c8	00 	. 
	nop			;35c9	00 	. 
	add a,b			;35ca	80 	. 
	add a,b			;35cb	80 	. 
	nop			;35cc	00 	. 
	nop			;35cd	00 	. 
	add a,b			;35ce	80 	. 
	ret nz			;35cf	c0 	. 
	nop			;35d0	00 	. 
	nop			;35d1	00 	. 
	ret nz			;35d2	c0 	. 
	ld (hl),b			;35d3	70 	p 
	nop			;35d4	00 	. 
	add a,b			;35d5	80 	. 
	ld (hl),b			;35d6	70 	p 
	ret p			;35d7	f0 	. 
	ret p			;35d8	f0 	. 
	ret p			;35d9	f0 	. 
	ret p			;35da	f0 	. 
	nop			;35db	00 	. 
	nop			;35dc	00 	. 
	nop			;35dd	00 	. 
	nop			;35de	00 	. 
	ld bc,l0000h		;35df	01 00 00 	. . . 
	ld bc,l0106h		;35e2	01 06 01 	. . . 
l35e5h:
	nop			;35e5	00 	. 
	rlca			;35e6	07 	. 
	rrca			;35e7	0f 	. 
	nop			;35e8	00 	. 
l35e9h:
	nop			;35e9	00 	. 
	rrca			;35ea	0f 	. 
	rra			;35eb	1f 	. 
	djnz l35feh		;35ec	10 10 	. . 
	rra			;35ee	1f 	. 
	rrca			;35ef	0f 	. 
	inc c			;35f0	0c 	. 
	ccf			;35f1	3f 	? 
	rrca			;35f2	0f 	. 
	rrca			;35f3	0f 	. 
	ld bc,l017fh		;35f4	01 7f 01 	.  . 
	ccf			;35f7	3f 	? 
	ld b,07fh		;35f8	06 7f 	.  
	rlca			;35fa	07 	. 
	nop			;35fb	00 	. 
	nop			;35fc	00 	. 
	nop			;35fd	00 	. 
l35feh:
	nop			;35fe	00 	. 
	ret nz			;35ff	c0 	. 
	nop			;3600	00 	. 
	nop			;3601	00 	. 
	ret nz			;3602	c0 	. 
	djnz l35e5h		;3603	10 e0 	. . 
	nop			;3605	00 	. 
	ret p			;3606	f0 	. 
	jr l35e9h		;3607	18 e0 	. . 
	nop			;3609	00 	. 
	ret m			;360a	f8 	. 
	call m,l3030h		;360b	fc 30 30 	. 0 0 
	call m,0d8feh		;360e	fc fe d8 	. . . 
	ret m			;3611	f8 	. 
	cp 0feh		;3612	fe fe 	. . 
	inc a			;3614	3c 	< 
	call nz,0ffc6h		;3615	c4 c6 ff 	. . . 
	ld c,h			;3618	4c 	L 
	add a,h			;3619	84 	. 
	add a,a			;361a	87 	. 
	rst 20h			;361b	e7 	. 
	rlca			;361c	07 	. 
	ret m			;361d	f8 	. 
	nop			;361e	00 	. 
	rst 0			;361f	c7 	. 
	ld b,a			;3620	47 	G 
	ret m			;3621	f8 	. 
	ld b,b			;3622	40 	@ 
	ld b,c			;3623	41 	A 
	ld b,c			;3624	41 	A 
	ld a,(hl)			;3625	7e 	~ 
	ld b,b			;3626	40 	@ 
	ccf			;3627	3f 	? 
	jr nc,l365ah		;3628	30 30 	0 0 
	ccf			;362a	3f 	? 
	ex af,af'			;362b	08 	. 
	ex af,af'			;362c	08 	. 
	rrca			;362d	0f 	. 
	ex af,af'			;362e	08 	. 
	rlca			;362f	07 	. 
	inc b			;3630	04 	. 
	inc b			;3631	04 	. 
	rlca			;3632	07 	. 
	ld (bc),a			;3633	02 	. 
	ld (bc),a			;3634	02 	. 
	inc bc			;3635	03 	. 
	ld (bc),a			;3636	02 	. 
	ld bc,l0101h		;3637	01 01 01 	. . . 
	ld bc,0ecffh		;363a	01 ff ec 	. . . 
	inc b			;363d	04 	. 
l363eh:
	rlca			;363e	07 	. 
	rst 38h			;363f	ff 	. 
l3640h:
	call z,l0703h+1		;3640	cc 04 07 	. . . 
	rst 38h			;3643	ff 	. 
	call c,l0703h+1		;3644	dc 04 07 	. . . 
	ld a,a			;3647	7f 	 
	sbc a,h			;3648	9c 	. 
	inc b			;3649	04 	. 
	rst 20h			;364a	e7 	. 
	cp 0f8h		;364b	fe f8 	. . 
	ex af,af'			;364d	08 	. 
	ld c,0beh		;364e	0e be 	. . 
	ld e,b			;3650	58 	X 
	ex af,af'			;3651	08 	. 
	xor 06ch		;3652	ee 6c 	. l 
	ld h,b			;3654	60 	` 
	sub b			;3655	90 	. 
	inc c			;3656	0c 	. 
	call pe,l1000h		;3657	ec 00 10 	. . . 
l365ah:
	call pe,l0000h		;365a	ec 00 00 	. . . 
	nop			;365d	00 	. 
	nop			;365e	00 	. 
	nop			;365f	00 	. 
	nop			;3660	00 	. 
	nop			;3661	00 	. 
	nop			;3662	00 	. 
	nop			;3663	00 	. 
	nop			;3664	00 	. 
	nop			;3665	00 	. 
	nop			;3666	00 	. 
	nop			;3667	00 	. 
	nop			;3668	00 	. 
	nop			;3669	00 	. 
	nop			;366a	00 	. 
	ld bc,l0101h		;366b	01 01 01 	. . . 
	ld bc,l0203h		;366e	01 03 02 	. . . 
	ld (bc),a			;3671	02 	. 
	inc bc			;3672	03 	. 
	inc b			;3673	04 	. 
	inc b			;3674	04 	. 
	rlca			;3675	07 	. 
	inc b			;3676	04 	. 
	rra			;3677	1f 	. 
	rra			;3678	1f 	. 
	rra			;3679	1f 	. 
	rra			;367a	1f 	. 
	adc a,h			;367b	8c 	. 
	add a,b			;367c	80 	. 
	ret p			;367d	f0 	. 
	adc a,h			;367e	8c 	. 
	call pe,09080h		;367f	ec 80 90 	. . . 
	call pe,0808ch		;3682	ec 8c 80 	. . . 
	ret p			;3685	f0 	. 
	adc a,h			;3686	8c 	. 
	ret pe			;3687	e8 	. 
	add a,b			;3688	80 	. 
	sub b			;3689	90 	. 
	ret pe			;368a	e8 	. 
	jr l368dh		;368b	18 00 	. . 
l368dh:
	ret po			;368d	e0 	. 
	jr l3640h		;368e	18 b0 	. . 
	nop			;3690	00 	. 
	ld b,b			;3691	40 	@ 
	or b			;3692	b0 	. 
	ret po			;3693	e0 	. 
	nop			;3694	00 	. 
	nop			;3695	00 	. 
	ret po			;3696	e0 	. 
	ret nz			;3697	c0 	. 
	ret nz			;3698	c0 	. 
	ret nz			;3699	c0 	. 
	ret nz			;369a	c0 	. 
l369bh:
	rrca			;369b	0f 	. 
	nop			;369c	00 	. 
	ld b,b			;369d	40 	@ 
	rrca			;369e	0f 	. 
	sbc a,c			;369f	99 	. 
	ld b,080h		;36a0	06 80 	. . 
	rra			;36a2	1f 	. 
	sbc a,a			;36a3	9f 	. 
	ld c,08eh		;36a4	0e 8e 	. . 
	ld e,04fh		;36a6	1e 4f 	. O 
	ld bc,00d4dh		;36a8	01 4d 0d 	. M . 
	scf			;36ab	37 	7 
	ld bc,sub_073fh		;36ac	01 3f 07 	. ? . 
	ld a,020h		;36af	3e 20 	>   
	ccf			;36b1	3f 	? 
	ld (0405eh),a		;36b2	32 5e 40 	2 ^ @ 
	ld a,a			;36b5	7f 	 
	ld e,(hl)			;36b6	5e 	^ 
	cp a			;36b7	bf 	. 
	sbc a,a			;36b8	9f 	. 
	ret nz			;36b9	c0 	. 
l36bah:
	add a,b			;36ba	80 	. 
	nop			;36bb	00 	. 
	nop			;36bc	00 	. 
	nop			;36bd	00 	. 
	nop			;36be	00 	. 
	add a,b			;36bf	80 	. 
	nop			;36c0	00 	. 
	nop			;36c1	00 	. 
	add a,b			;36c2	80 	. 
	ret nz			;36c3	c0 	. 
	nop			;36c4	00 	. 
	nop			;36c5	00 	. 
	ret nz			;36c6	c0 	. 
	and b			;36c7	a0 	. 
	ld b,b			;36c8	40 	@ 
	nop			;36c9	00 	. 
	ret po			;36ca	e0 	. 
	ret nc			;36cb	d0 	. 
	jr nz,l36ceh		;36cc	20 00 	  . 
l36ceh:
	ret p			;36ce	f0 	. 
	ret m			;36cf	f8 	. 
	ret nz			;36d0	c0 	. 
	ret nz			;36d1	c0 	. 
	ret m			;36d2	f8 	. 
	jr z,l3705h		;36d3	28 30 	( 0 
	ret po			;36d5	e0 	. 
	jr c,l3700h		;36d6	38 28 	8 ( 
	jr nc,l36bah		;36d8	30 e0 	0 . 
	jr c,l369bh		;36da	38 bf 	8 . 
	xor a			;36dc	af 	. 
	ret nz			;36dd	c0 	. 
	add a,b			;36de	80 	. 
	cp (hl)			;36df	be 	. 
	and (hl)			;36e0	a6 	. 
	pop bc			;36e1	c1 	. 
	add a,b			;36e2	80 	. 
	sbc a,(hl)			;36e3	9e 	. 
	sbc a,(hl)			;36e4	9e 	. 
	pop hl			;36e5	e1 	. 
	add a,b			;36e6	80 	. 
	push hl			;36e7	e5 	. 
	sbc a,c			;36e8	99 	. 
	add a,e			;36e9	83 	. 
	defb 0fdh,09fh,09eh	;illegal sequence		;36ea	fd 9f 9e 	. . . 
	jp po,0eb83h		;36ed	e2 83 eb 	. . . 
	sub d			;36f0	92 	. 
	add a,(hl)			;36f1	86 	. 
	ei			;36f2	fb 	. 
	ld c,e			;36f3	4b 	K 
	ld c,d			;36f4	4a 	J 
	halt			;36f5	76 	v 
	ld b,e			;36f6	43 	C 
	ld a,l			;36f7	7d 	} 
	ld b,h			;36f8	44 	D 
	ld b,d			;36f9	42 	B 
	ld a,c			;36fa	79 	y 
	ld l,b			;36fb	68 	h 
	ld d,b			;36fc	50 	P 
	ret nz			;36fd	c0 	. 
	ld a,b			;36fe	78 	x 
	ld (hl),b			;36ff	70 	p 
l3700h:
	ld b,b			;3700	40 	@ 
	ret nz			;3701	c0 	. 
	ld (hl),b			;3702	70 	p 
	ret p			;3703	f0 	. 
	add a,b			;3704	80 	. 
l3705h:
	add a,b			;3705	80 	. 
	ret p			;3706	f0 	. 
	ret po			;3707	e0 	. 
	nop			;3708	00 	. 
	nop			;3709	00 	. 
	ret po			;370a	e0 	. 
	ld b,b			;370b	40 	@ 
	add a,b			;370c	80 	. 
	nop			;370d	00 	. 
	ret nz			;370e	c0 	. 
	ld b,b			;370f	40 	@ 
	add a,b			;3710	80 	. 
	nop			;3711	00 	. 
	ret nz			;3712	c0 	. 
	add a,b			;3713	80 	. 
	nop			;3714	00 	. 
	nop			;3715	00 	. 
	add a,b			;3716	80 	. 
	add a,d			;3717	82 	. 
	ld bc,08300h		;3718	01 00 83 	. . . 
	dec h			;371b	25 	% 
	inc h			;371c	24 	$ 
	ld a,(l1d21h)		;371d	3a 21 1d 	: ! . 
	djnz l3734h		;3720	10 12 	. . 
	dec e			;3722	1d 	. 
	ex af,af'			;3723	08 	. 
	ex af,af'			;3724	08 	. 
	rrca			;3725	0f 	. 
	ex af,af'			;3726	08 	. 
	ld b,006h		;3727	06 06 	. . 
	rlca			;3729	07 	. 
	ld b,001h		;372a	06 01 	. . 
	ld bc,l0101h		;372c	01 01 01 	. . . 
	nop			;372f	00 	. 
sub_3730h:
	nop			;3730	00 	. 
	nop			;3731	00 	. 
	nop			;3732	00 	. 
	nop			;3733	00 	. 
l3734h:
	nop			;3734	00 	. 
	nop			;3735	00 	. 
	nop			;3736	00 	. 
	nop			;3737	00 	. 
	nop			;3738	00 	. 
	nop			;3739	00 	. 
	nop			;373a	00 	. 
	dec b			;373b	05 	. 
	ld bc,l0503h		;373c	01 03 05 	. . . 
	sbc a,d			;373f	9a 	. 
	ld (bc),a			;3740	02 	. 
	ld b,09ah		;3741	06 9a 	. . 
	jp m,l0602h		;3743	fa 02 06 	. . . 
	jp m,00464h		;3746	fa 64 04 	. d . 
	sbc a,h			;3749	9c 	. 
	ld h,h			;374a	64 	d 
	ex af,af'			;374b	08 	. 
	ex af,af'			;374c	08 	. 
	ret m			;374d	f8 	. 
	ex af,af'			;374e	08 	. 
	ret p			;374f	f0 	. 
	ret p			;3750	f0 	. 
	ret p			;3751	f0 	. 
	ret p			;3752	f0 	. 
	nop			;3753	00 	. 
	nop			;3754	00 	. 
	nop			;3755	00 	. 
	nop			;3756	00 	. 
	nop			;3757	00 	. 
	nop			;3758	00 	. 
	nop			;3759	00 	. 
	nop			;375a	00 	. 
	nop			;375b	00 	. 
	nop			;375c	00 	. 
	nop			;375d	00 	. 
	nop			;375e	00 	. 
	nop			;375f	00 	. 
	nop			;3760	00 	. 
	nop			;3761	00 	. 
	nop			;3762	00 	. 
	nop			;3763	00 	. 
	nop			;3764	00 	. 
l3765h:
	nop			;3765	00 	. 
	nop			;3766	00 	. 
	nop			;3767	00 	. 
	nop			;3768	00 	. 
	nop			;3769	00 	. 
	nop			;376a	00 	. 
	nop			;376b	00 	. 
	nop			;376c	00 	. 
	nop			;376d	00 	. 
	nop			;376e	00 	. 
	nop			;376f	00 	. 
	inc bc			;3770	03 	. 
	nop			;3771	00 	. 
	inc bc			;3772	03 	. 
	ld d,019h		;3773	16 19 	. . 
	djnz l3790h		;3775	10 19 	. . 
	ccf			;3777	3f 	? 
	jr nz,$+34		;3778	20 20 	    
	jr nc,l377ch		;377a	30 00 	0 . 
l377ch:
	nop			;377c	00 	. 
	nop			;377d	00 	. 
	nop			;377e	00 	. 
	nop			;377f	00 	. 
	nop			;3780	00 	. 
	nop			;3781	00 	. 
	nop			;3782	00 	. 
	nop			;3783	00 	. 
	inc bc			;3784	03 	. 
	nop			;3785	00 	. 
	inc bc			;3786	03 	. 
	ld bc,l010fh		;3787	01 0f 01 	. . . 
	rrca			;378a	0f 	. 
	ld c,00eh		;378b	0e 0e 	. . 
	ld c,00eh		;378d	0e 0e 	. . 
	add a,b			;378f	80 	. 
l3790h:
	nop			;3790	00 	. 
	nop			;3791	00 	. 
	add a,b			;3792	80 	. 
	ret nz			;3793	c0 	. 
	nop			;3794	00 	. 
	nop			;3795	00 	. 
	ld b,b			;3796	40 	@ 
	ld (hl),b			;3797	70 	p 
	xor a			;3798	af 	. 
	jr nz,$+1		;3799	20 ff 	  . 
	nop			;379b	00 	. 
	nop			;379c	00 	. 
	nop			;379d	00 	. 
	nop			;379e	00 	. 
	nop			;379f	00 	. 
	nop			;37a0	00 	. 
	nop			;37a1	00 	. 
	nop			;37a2	00 	. 
	jr nz,l3765h		;37a3	20 c0 	  . 
	nop			;37a5	00 	. 
	ret nz			;37a6	c0 	. 
	ret p			;37a7	f0 	. 
	ret pe			;37a8	e8 	. 
	ret po			;37a9	e0 	. 
	ret m			;37aa	f8 	. 
	jr l37c1h		;37ab	18 14 	. . 
	djnz l37cbh		;37ad	10 1c 	. . 
	jr l37c5h		;37af	18 14 	. . 
	djnz l37cfh		;37b1	10 1c 	. . 
	inc c			;37b3	0c 	. 
	ld a,(bc)			;37b4	0a 	. 
	ex af,af'			;37b5	08 	. 
	ld c,03ch		;37b6	0e 3c 	. < 
	jp z,0fe08h		;37b8	ca 08 fe 	. . . 
	ccf			;37bb	3f 	? 
	inc h			;37bc	24 	$ 
	inc h			;37bd	24 	$ 
	inc (hl)			;37be	34 	4 
	ld a,021h		;37bf	3e 21 	> ! 
l37c1h:
	jr nz,$+59		;37c1	20 39 	  9 
	inc e			;37c3	1c 	. 
	inc de			;37c4	13 	. 
l37c5h:
	inc e			;37c5	1c 	. 
	rra			;37c6	1f 	. 
	rra			;37c7	1f 	. 
	djnz l37dah		;37c8	10 10 	. . 
	rra			;37ca	1f 	. 
l37cbh:
	rrca			;37cb	0f 	. 
	rrca			;37cc	0f 	. 
	rrca			;37cd	0f 	. 
	rrca			;37ce	0f 	. 
l37cfh:
	ld bc,l0101h		;37cf	01 01 01 	. . . 
	ld bc,l0407h		;37d2	01 07 04 	. . . 
	inc b			;37d5	04 	. 
	rlca			;37d6	07 	. 
	inc bc			;37d7	03 	. 
	inc bc			;37d8	03 	. 
	inc bc			;37d9	03 	. 
l37dah:
	inc bc			;37da	03 	. 
	ld h,b			;37db	60 	` 
	sbc a,a			;37dc	9f 	. 
	nop			;37dd	00 	. 
	rst 38h			;37de	ff 	. 
	ret p			;37df	f0 	. 
	rrca			;37e0	0f 	. 
	nop			;37e1	00 	. 
	rst 38h			;37e2	ff 	. 
	rst 38h			;37e3	ff 	. 
	nop			;37e4	00 	. 
	nop			;37e5	00 	. 
	rst 38h			;37e6	ff 	. 
	ret c			;37e7	d8 	. 
	and b			;37e8	a0 	. 
	add a,a			;37e9	87 	. 
	ret m			;37ea	f8 	. 
	rst 18h			;37eb	df 	. 
	xor a			;37ec	af 	. 
	adc a,a			;37ed	8f 	. 
	rst 38h			;37ee	ff 	. 
	cp (hl)			;37ef	be 	. 
	ld e,b			;37f0	58 	X 
l37f1h:
	jr l37f1h		;37f1	18 fe 	. . 
	cp 03eh		;37f3	fe 3e 	. > 
	ld a,0feh		;37f5	3e fe 	> . 
	ret po			;37f7	e0 	. 
	ret po			;37f8	e0 	. 
	ret po			;37f9	e0 	. 
	ret po			;37fa	e0 	. 
	jp 0003ch		;37fb	c3 3c 00 	. < . 
	ccf			;37fe	3f 	? 
	rla			;37ff	17 	. 
l3800h:
	ret pe			;3800	e8 	. 
	nop			;3801	00 	. 
	rst 38h			;3802	ff 	. 
	rst 30h			;3803	f7 	. 
	ex af,af'			;3804	08 	. 
	nop			;3805	00 	. 
	ei			;3806	fb 	. 
	di			;3807	f3 	. 
	call l3f01h		;3808	cd 01 3f 	. . ? 
	jp m,0e0e4h		;380b	fa e4 e0 	. . . 
	cp 0fdh		;380e	fe fd 	. . 
	sub e			;3810	93 	. 
	sub c			;3811	91 	. 
	rst 38h			;3812	ff 	. 
	rst 38h			;3813	ff 	. 
	ret m			;3814	f8 	. 
	ret m			;3815	f8 	. 
	rst 38h			;3816	ff 	. 
	rlca			;3817	07 	. 
	rlca			;3818	07 	. 
	rlca			;3819	07 	. 
	rlca			;381a	07 	. 
	nop			;381b	00 	. 
	nop			;381c	00 	. 
	nop			;381d	00 	. 
l381eh:
	nop			;381e	00 	. 
	nop			;381f	00 	. 
	nop			;3820	00 	. 
	nop			;3821	00 	. 
	nop			;3822	00 	. 
	nop			;3823	00 	. 
	nop			;3824	00 	. 
	nop			;3825	00 	. 
	nop			;3826	00 	. 
	nop			;3827	00 	. 
	nop			;3828	00 	. 
	nop			;3829	00 	. 
	nop			;382a	00 	. 
	nop			;382b	00 	. 
	nop			;382c	00 	. 
	nop			;382d	00 	. 
	nop			;382e	00 	. 
	nop			;382f	00 	. 
	inc bc			;3830	03 	. 
	nop			;3831	00 	. 
	inc bc			;3832	03 	. 
	halt			;3833	76 	v 
	add hl,de			;3834	19 	. 
	ld (hl),b			;3835	70 	p 
	add hl,de			;3836	19 	. 
	rst 38h			;3837	ff 	. 
	ld h,d			;3838	62 	b 
	jp po,l0072h		;3839	e2 72 00 	. r . 
	nop			;383c	00 	. 
l383dh:
	nop			;383d	00 	. 
	nop			;383e	00 	. 
	ld b,005h		;383f	06 05 	. . 
	inc b			;3841	04 	. 
	rlca			;3842	07 	. 
	rrca			;3843	0f 	. 
	dec bc			;3844	0b 	. 
	dec bc			;3845	0b 	. 
	rrca			;3846	0f 	. 
	nop			;3847	00 	. 
	ex af,af'			;3848	08 	. 
	nop			;3849	00 	. 
	ex af,af'			;384a	08 	. 
	ex af,af'			;384b	08 	. 
	ex af,af'			;384c	08 	. 
	ex af,af'			;384d	08 	. 
	ex af,af'			;384e	08 	. 
	add a,b			;384f	80 	. 
	nop			;3850	00 	. 
	nop			;3851	00 	. 
	add a,b			;3852	80 	. 
	ret nz			;3853	c0 	. 
sub_3854h:
	nop			;3854	00 	. 
	nop			;3855	00 	. 
	ld b,b			;3856	40 	@ 
	ld (hl),b			;3857	70 	p 
	xor a			;3858	af 	. 
	jr nz,$+1		;3859	20 ff 	  . 
	nop			;385b	00 	. 
	nop			;385c	00 	. 
	nop			;385d	00 	. 
	nop			;385e	00 	. 
	nop			;385f	00 	. 
	add a,b			;3860	80 	. 
	nop			;3861	00 	. 
	add a,b			;3862	80 	. 
	and b			;3863	a0 	. 
	ret nz			;3864	c0 	. 
	add a,b			;3865	80 	. 
	ret nz			;3866	c0 	. 
	ret p			;3867	f0 	. 
	ret pe			;3868	e8 	. 
	ret po			;3869	e0 	. 
	ret m			;386a	f8 	. 
	jr l3881h		;386b	18 14 	. . 
	djnz l388bh		;386d	10 1c 	. . 
	jr l3885h		;386f	18 14 	. . 
	djnz l388fh		;3871	10 1c 	. . 
	inc c			;3873	0c 	. 
	ld a,(bc)			;3874	0a 	. 
	ex af,af'			;3875	08 	. 
	ld c,03ch		;3876	0e 3c 	. < 
	jp z,0fe08h		;3878	ca 08 fe 	. . . 
	cp a			;387b	bf 	. 
	jr nz,l381eh		;387c	20 a0 	  . 
l387eh:
	jr nc,l387eh		;387e	30 fe 	0 . 
	and c			;3880	a1 	. 
l3881h:
	ret po			;3881	e0 	. 
	cp c			;3882	b9 	. 
	ld a,h			;3883	7c 	| 
	ld b,e			;3884	43 	C 
l3885h:
	ld a,h			;3885	7c 	| 
	ld c,a			;3886	4f 	O 
	ccf			;3887	3f 	? 
	jr nc,l38bah		;3888	30 30 	0 0 
	ccf			;388a	3f 	? 
l388bh:
	rrca			;388b	0f 	. 
	rrca			;388c	0f 	. 
	rrca			;388d	0f 	. 
	rrca			;388e	0f 	. 
l388fh:
	inc bc			;388f	03 	. 
	ld (bc),a			;3890	02 	. 
	ld (bc),a			;3891	02 	. 
	inc bc			;3892	03 	. 
	ld bc,l0101h		;3893	01 01 01 	. . . 
	ld bc,l0000h		;3896	01 00 00 	. . . 
	nop			;3899	00 	. 
	nop			;389a	00 	. 
	ld h,b			;389b	60 	` 
	sbc a,a			;389c	9f 	. 
	nop			;389d	00 	. 
	rst 38h			;389e	ff 	. 
	ld (hl),b			;389f	70 	p 
	adc a,a			;38a0	8f 	. 
	nop			;38a1	00 	. 
	rst 38h			;38a2	ff 	. 
	rst 38h			;38a3	ff 	. 
	nop			;38a4	00 	. 
	nop			;38a5	00 	. 
	rst 38h			;38a6	ff 	. 
	ret nc			;38a7	d0 	. 
	and b			;38a8	a0 	. 
	adc a,a			;38a9	8f 	. 
	ret p			;38aa	f0 	. 
	rst 18h			;38ab	df 	. 
	xor a			;38ac	af 	. 
	adc a,a			;38ad	8f 	. 
	rst 38h			;38ae	ff 	. 
	call pe,04050h		;38af	ec 50 40 	. P @ 
	call m,0ccfch		;38b2	fc fc cc 	. . . 
	call z,sub_38fch		;38b5	cc fc 38 	. . 8 
	jr c,$+58		;38b8	38 38 	8 8 
l38bah:
	jr c,$-59		;38ba	38 c3 	8 . 
	inc a			;38bc	3c 	< 
	nop			;38bd	00 	. 
	ccf			;38be	3f 	? 
	rla			;38bf	17 	. 
	ret pe			;38c0	e8 	. 
	nop			;38c1	00 	. 
	ei			;38c2	fb 	. 
	di			;38c3	f3 	. 
	inc c			;38c4	0c 	. 
	nop			;38c5	00 	. 
	rst 38h			;38c6	ff 	. 
	rst 30h			;38c7	f7 	. 
	ret			;38c8	c9 	. 
	ld bc,0f73fh		;38c9	01 3f f7 	. ? . 
	ex de,hl			;38cc	eb 	. 
	ex (sp),hl			;38cd	e3 	. 
	rst 38h			;38ce	ff 	. 
	ld l,a			;38cf	6f 	o 
	ld d,h			;38d0	54 	T 
	ld b,h			;38d1	44 	D 
	ld a,a			;38d2	7f 	 
	ccf			;38d3	3f 	? 
	cpl			;38d4	2f 	/ 
	cpl			;38d5	2f 	/ 
	ccf			;38d6	3f 	? 
	jr $+26		;38d7	18 18 	. . 
	jr l38f3h		;38d9	18 18 	. . 
	nop			;38db	00 	. 
	nop			;38dc	00 	. 
	nop			;38dd	00 	. 
	nop			;38de	00 	. 
	nop			;38df	00 	. 
	inc bc			;38e0	03 	. 
	nop			;38e1	00 	. 
	inc bc			;38e2	03 	. 
	ld d,019h		;38e3	16 19 	. . 
	djnz l3900h		;38e5	10 19 	. . 
	ccf			;38e7	3f 	? 
	jr nz,$+40		;38e8	20 26 	  & 
	ld (hl),03fh		;38ea	36 3f 	6 ? 
	jr nz,l390eh		;38ec	20 20 	    
	jr nc,l392eh		;38ee	30 3e 	0 > 
	ld hl,l3920h		;38f0	21 20 39 	!   9 
l38f3h:
	ld a,h			;38f3	7c 	| 
	ld b,e			;38f4	43 	C 
	ld a,h			;38f5	7c 	| 
	ld c,a			;38f6	4f 	O 
	rst 38h			;38f7	ff 	. 
	or b			;38f8	b0 	. 
	ret p			;38f9	f0 	. 
	cp a			;38fa	bf 	. 
	nop			;38fb	00 	. 
sub_38fch:
	nop			;38fc	00 	. 
	nop			;38fd	00 	. 
	nop			;38fe	00 	. 
	ret p			;38ff	f0 	. 
l3900h:
	ld c,b			;3900	48 	H 
	ld b,b			;3901	40 	@ 
	ret m			;3902	f8 	. 
	ret m			;3903	f8 	. 
	jr c,l393eh		;3904	38 38 	8 8 
	ld a,b			;3906	78 	x 
	ld a,(hl)			;3907	7e 	~ 
	and b			;3908	a0 	. 
l3909h:
	jr nz,l3909h		;3909	20 fe 	  . 
	ld h,e			;390b	63 	c 
	sbc a,h			;390c	9c 	. 
	nop			;390d	00 	. 
l390eh:
	defb 0fdh,040h,0bfh	;illegal sequence		;390e	fd 40 bf 	. @ . 
	nop			;3911	00 	. 
	rst 38h			;3912	ff 	. 
	cp 001h		;3913	fe 01 	. . 
	nop			;3915	00 	. 
	rst 38h			;3916	ff 	. 
	rst 20h			;3917	e7 	. 
	add a,(hl)			;3918	86 	. 
	sbc a,b			;3919	98 	. 
	pop hl			;391a	e1 	. 
	nop			;391b	00 	. 
	nop			;391c	00 	. 
	nop			;391d	00 	. 
	nop			;391e	00 	. 
	nop			;391f	00 	. 
l3920h:
	nop			;3920	00 	. 
	nop			;3921	00 	. 
	nop			;3922	00 	. 
	jr c,$+40		;3923	38 26 	8 & 
	jr nz,$+64		;3925	20 3e 	  > 
	inc e			;3927	1c 	. 
	inc de			;3928	13 	. 
	djnz l394ah		;3929	10 1f 	. . 
	defb 0fdh,01fh,01dh	;illegal sequence		;392b	fd 1f 1d 	. . . 
l392eh:
	rst 38h			;392e	ff 	. 
	ld c,0f2h		;392f	0e f2 	. . 
	ld (bc),a			;3931	02 	. 
	cp 02eh		;3932	fe 2e 	. . 
	ret nc			;3934	d0 	. 
	nop			;3935	00 	. 
	or 0e6h		;3936	f6 e6 	. . 
	add hl,de			;3938	19 	. 
	nop			;3939	00 	. 
	rst 38h			;393a	ff 	. 
	rst 8			;393b	cf 	. 
	adc a,a			;393c	8f 	. 
	rst 8			;393d	cf 	. 
l393eh:
	adc a,a			;393e	8f 	. 
	exx			;393f	d9 	. 
	sub c			;3940	91 	. 
	exx			;3941	d9 	. 
	pop de			;3942	d1 	. 
	ld a,e			;3943	7b 	{ 
	ld c,d			;3944	4a 	J 
	ld a,d			;3945	7a 	z 
	ld l,e			;3946	6b 	k 
	ld sp,l3131h		;3947	31 31 31 	1 1 1 
l394ah:
	ld sp,l0000h		;394a	31 00 00 	1 . . 
	nop			;394d	00 	. 
	nop			;394e	00 	. 
	nop			;394f	00 	. 
	nop			;3950	00 	. 
	nop			;3951	00 	. 
	nop			;3952	00 	. 
	nop			;3953	00 	. 
	nop			;3954	00 	. 
	nop			;3955	00 	. 
	nop			;3956	00 	. 
	nop			;3957	00 	. 
	nop			;3958	00 	. 
	nop			;3959	00 	. 
	nop			;395a	00 	. 
	sbc a,0aeh		;395b	de ae 	. . 
	adc a,a			;395d	8f 	. 
	cp 0b1h		;395e	fe b1 	. . 
	ld d,c			;3960	51 	Q 
	ld de,0e0f1h		;3961	11 f1 e0 	. . . 
	jr nz,l3986h		;3964	20 20 	    
	ret po			;3966	e0 	. 
	ret nz			;3967	c0 	. 
	ret nz			;3968	c0 	. 
	ret nz			;3969	c0 	. 
	ret nz			;396a	c0 	. 
	nop			;396b	00 	. 
	nop			;396c	00 	. 
	nop			;396d	00 	. 
	nop			;396e	00 	. 
	ld a,(bc)			;396f	0a 	. 
	inc c			;3970	0c 	. 
	ex af,af'			;3971	08 	. 
	ld c,007h		;3972	0e 07 	. . 
	ld b,006h		;3974	06 06 	. . 
	rlca			;3976	07 	. 
	ld bc,l0101h		;3977	01 01 01 	. . . 
	ld bc,0136eh		;397a	01 6e 13 	. n . 
	add a,d			;397d	82 	. 
	ld a,a			;397e	7f 	 
	call pe,0c4d7h		;397f	ec d7 c4 	. . . 
	rst 38h			;3982	ff 	. 
	xor (ix-074h)		;3983	dd ae 8c 	. . . 
l3986h:
	rst 38h			;3986	ff 	. 
	ld a,e			;3987	7b 	{ 
	ld e,l			;3988	5d 	] 
	ld e,c			;3989	59 	Y 
	ld a,a			;398a	7f 	 
	ld (hl),038h		;398b	36 38 	6 8 
l398dh:
	jr nc,l39cdh		;398d	30 3e 	0 > 
l398fh:
	ld l,(hl)			;398f	6e 	n 
	ld d,(hl)			;3990	56 	V 
	ld b,(hl)			;3991	46 	F 
	ld a,(hl)			;3992	7e 	~ 
	jr l398dh		;3993	18 f8 	. . 
	jr l398fh		;3995	18 f8 	. . 
	ret po			;3997	e0 	. 
	ret po			;3998	e0 	. 
	ret po			;3999	e0 	. 
	ret po			;399a	e0 	. 
	nop			;399b	00 	. 
	nop			;399c	00 	. 
	nop			;399d	00 	. 
	nop			;399e	00 	. 
	rlca			;399f	07 	. 
	ld b,004h		;39a0	06 04 	. . 
	inc b			;39a2	04 	. 
	inc e			;39a3	1c 	. 
	inc e			;39a4	1c 	. 
	inc de			;39a5	13 	. 
	djnz $+53		;39a6	10 33 	. 3 
	inc sp			;39a8	33 	3 
	cpl			;39a9	2f 	/ 
	inc hl			;39aa	23 	# 
	ld l,h			;39ab	6c 	l 
	ld l,h			;39ac	6c 	l 
	ld e,h			;39ad	5c 	\ 
	ld c,h			;39ae	4c 	L 
	ld (hl),b			;39af	70 	p 
	ld (hl),b			;39b0	70 	p 
	ld d,b			;39b1	50 	P 
	ld d,b			;39b2	50 	P 
	ld h,b			;39b3	60 	` 
	ld b,b			;39b4	40 	@ 
	ld b,b			;39b5	40 	@ 
	ld b,b			;39b6	40 	@ 
	jr nz,$+34		;39b7	20 20 	    
	jr nz,$+34		;39b9	20 20 	    
	nop			;39bb	00 	. 
	nop			;39bc	00 	. 
	nop			;39bd	00 	. 
	nop			;39be	00 	. 
	ret nz			;39bf	c0 	. 
	add a,b			;39c0	80 	. 
	nop			;39c1	00 	. 
	nop			;39c2	00 	. 
	jr nz,l39e5h		;39c3	20 20 	    
	ret nz			;39c5	c0 	. 
	nop			;39c6	00 	. 
	ret nc			;39c7	d0 	. 
	ret nc			;39c8	d0 	. 
	ret po			;39c9	e0 	. 
	ret nz			;39ca	c0 	. 
	jr c,l39edh		;39cb	38 20 	8   
l39cdh:
	jr c,l39efh		;39cd	38 20 	8   
	ld a,h			;39cf	7c 	| 
	ld b,h			;39d0	44 	D 
	ld a,h			;39d1	7c 	| 
	ld a,h			;39d2	7c 	| 
	jr c,$+50		;39d3	38 30 	8 0 
	inc a			;39d5	3c 	< 
	jr nc,l3a16h		;39d6	30 3e 	0 > 
	jr nz,l3a18h		;39d8	20 3e 	  > 
	jr nc,l39dch		;39da	30 00 	0 . 
l39dch:
	nop			;39dc	00 	. 
	nop			;39dd	00 	. 
	nop			;39de	00 	. 
	nop			;39df	00 	. 
	nop			;39e0	00 	. 
	nop			;39e1	00 	. 
	nop			;39e2	00 	. 
	nop			;39e3	00 	. 
	nop			;39e4	00 	. 
l39e5h:
	nop			;39e5	00 	. 
	nop			;39e6	00 	. 
	nop			;39e7	00 	. 
	nop			;39e8	00 	. 
	nop			;39e9	00 	. 
	nop			;39ea	00 	. 
	nop			;39eb	00 	. 
	nop			;39ec	00 	. 
l39edh:
	nop			;39ed	00 	. 
	nop			;39ee	00 	. 
l39efh:
	nop			;39ef	00 	. 
	nop			;39f0	00 	. 
	nop			;39f1	00 	. 
	nop			;39f2	00 	. 
	ld c,008h		;39f3	0e 08 	. . 
	rrca			;39f5	0f 	. 
	inc c			;39f6	0c 	. 
	ld a,a			;39f7	7f 	 
	ld b,b			;39f8	40 	@ 
	ld c,a			;39f9	4f 	O 
	ld c,b			;39fa	48 	H 
	ld a,020h		;39fb	3e 20 	>   
	ld a,03ch		;39fd	3e 3c 	> < 
	ld a,(de)			;39ff	1a 	. 
	ld a,(de)			;3a00	1a 	. 
	inc e			;3a01	1c 	. 
	jr $+63		;3a02	18 3d 	. = 
	jr nc,l3a45h		;3a04	30 3f 	0 ? 
	jr nc,l3a47h		;3a06	30 3f 	0 ? 
	jr nc,$+65		;3a08	30 3f 	0 ? 
	ccf			;3a0a	3f 	? 
	rra			;3a0b	1f 	. 
	add hl,de			;3a0c	19 	. 
	rra			;3a0d	1f 	. 
	add hl,de			;3a0e	19 	. 
	dec sp			;3a0f	3b 	; 
	ld (l303dh),a		;3a10	32 3d 30 	2 = 0 
	defb 0fdh,020h,0ffh	;illegal sequence		;3a13	fd 20 ff 	.   . 
l3a16h:
	ld (hl),l			;3a16	75 	u 
	rst 38h			;3a17	ff 	. 
l3a18h:
	sub c			;3a18	91 	. 
	ccf			;3a19	3f 	? 
	inc de			;3a1a	13 	. 
	rst 38h			;3a1b	ff 	. 
	or b			;3a1c	b0 	. 
	or a			;3a1d	b7 	. 
	or h			;3a1e	b4 	. 
	rst 38h			;3a1f	ff 	. 
	and b			;3a20	a0 	. 
	and a			;3a21	a7 	. 
	and (hl)			;3a22	a6 	. 
	ld a,l			;3a23	7d 	} 
	ld b,h			;3a24	44 	D 
	ld c,e			;3a25	4b 	K 
	ld c,c			;3a26	49 	I 
	ei			;3a27	fb 	. 
	jp (hl)			;3a28	e9 	. 
	or (hl)			;3a29	b6 	. 
	or d			;3a2a	b2 	. 
	halt			;3a2b	76 	v 
	halt			;3a2c	76 	v 
	ld c,a			;3a2d	4f 	O 
	ld b,(hl)			;3a2e	46 	F 
	pop bc			;3a2f	c1 	. 
	pop bc			;3a30	c1 	. 
	cp c			;3a31	b9 	. 
	add a,c			;3a32	81 	. 
	jp (hl)			;3a33	e9 	. 
	xor c			;3a34	a9 	. 
	cp c			;3a35	b9 	. 
	xor c			;3a36	a9 	. 
l3a37h:
	ld d,b			;3a37	50 	P 
	ld d,b			;3a38	50 	P 
	ld d,b			;3a39	50 	P 
	ld d,b			;3a3a	50 	P 
	ld a,e			;3a3b	7b 	{ 
	ld b,b			;3a3c	40 	@ 
	cp a			;3a3d	bf 	. 
	add hl,bc			;3a3e	09 	. 
	rst 38h			;3a3f	ff 	. 
	ld bc,01bffh		;3a40	01 ff 1b 	. . . 
	cp 00ah		;3a43	fe 0a 	. . 
l3a45h:
	cp 0feh		;3a45	fe fe 	. . 
l3a47h:
	call m,0ac5ch		;3a47	fc 5c ac 	. \ . 
	xor h			;3a4a	ac 	. 
	and b			;3a4b	a0 	. 
	and b			;3a4c	a0 	. 
	ret p			;3a4d	f0 	. 
	and b			;3a4e	a0 	. 
	ret m			;3a4f	f8 	. 
	ret m			;3a50	f8 	. 
	ld d,b			;3a51	50 	P 
	ld d,b			;3a52	50 	P 
	ld d,b			;3a53	50 	P 
	ld d,b			;3a54	50 	P 
	ret m			;3a55	f8 	. 
	ld d,b			;3a56	50 	P 
	xor b			;3a57	a8 	. 
	xor b			;3a58	a8 	. 
	xor b			;3a59	a8 	. 
	xor b			;3a5a	a8 	. 
	nop			;3a5b	00 	. 
	nop			;3a5c	00 	. 
	nop			;3a5d	00 	. 
	nop			;3a5e	00 	. 
	nop			;3a5f	00 	. 
	nop			;3a60	00 	. 
	nop			;3a61	00 	. 
	nop			;3a62	00 	. 
	rrca			;3a63	0f 	. 
	dec c			;3a64	0d 	. 
	ex af,af'			;3a65	08 	. 
	ex af,af'			;3a66	08 	. 
	jr c,l3aa1h		;3a67	38 38 	8 8 
	daa			;3a69	27 	' 
	jr nz,l3ad3h		;3a6a	20 67 	  g 
	ld h,a			;3a6c	67 	g 
	ld e,a			;3a6d	5f 	_ 
	ld b,a			;3a6e	47 	G 
	ret c			;3a6f	d8 	. 
	ret c			;3a70	d8 	. 
	cp b			;3a71	b8 	. 
	sbc a,b			;3a72	98 	. 
	ret po			;3a73	e0 	. 
	ret po			;3a74	e0 	. 
	and b			;3a75	a0 	. 
	and b			;3a76	a0 	. 
	ret nz			;3a77	c0 	. 
	add a,b			;3a78	80 	. 
	add a,b			;3a79	80 	. 
	add a,b			;3a7a	80 	. 
	nop			;3a7b	00 	. 
	nop			;3a7c	00 	. 
	nop			;3a7d	00 	. 
	nop			;3a7e	00 	. 
	nop			;3a7f	00 	. 
	nop			;3a80	00 	. 
	nop			;3a81	00 	. 
	nop			;3a82	00 	. 
	add a,b			;3a83	80 	. 
	nop			;3a84	00 	. 
	nop			;3a85	00 	. 
	nop			;3a86	00 	. 
	ld b,b			;3a87	40 	@ 
	ld b,b			;3a88	40 	@ 
	add a,b			;3a89	80 	. 
	nop			;3a8a	00 	. 
	and b			;3a8b	a0 	. 
	and b			;3a8c	a0 	. 
	ret nz			;3a8d	c0 	. 
	add a,b			;3a8e	80 	. 
	ld (hl),b			;3a8f	70 	p 
	ld b,b			;3a90	40 	@ 
	ld (hl),b			;3a91	70 	p 
	ld b,b			;3a92	40 	@ 
	ret m			;3a93	f8 	. 
	adc a,b			;3a94	88 	. 
	ret m			;3a95	f8 	. 
	ret m			;3a96	f8 	. 
	ld a,b			;3a97	78 	x 
l3a98h:
	ld h,b			;3a98	60 	` 
	ld a,h			;3a99	7c 	| 
	ld h,b			;3a9a	60 	` 
	ld b,b			;3a9b	40 	@ 
	ld b,b			;3a9c	40 	@ 
	ld b,b			;3a9d	40 	@ 
	ld b,b			;3a9e	40 	@ 
	nop			;3a9f	00 	. 
	nop			;3aa0	00 	. 
l3aa1h:
	nop			;3aa1	00 	. 
	nop			;3aa2	00 	. 
	ld a,b			;3aa3	78 	x 
	ld (hl),b			;3aa4	70 	p 
	ld b,b			;3aa5	40 	@ 
	ld b,b			;3aa6	40 	@ 
	inc a			;3aa7	3c 	< 
	inc a			;3aa8	3c 	< 
	jr nc,$+50		;3aa9	30 30 	0 0 
	ld h,h			;3aab	64 	d 
	ld h,h			;3aac	64 	d 
	ld e,b			;3aad	58 	X 
	ld b,b			;3aae	40 	@ 
	inc h			;3aaf	24 	$ 
	inc h			;3ab0	24 	$ 
	jr c,l3ad3h		;3ab1	38 20 	8   
	dec de			;3ab3	1b 	. 
	ld a,(de)			;3ab4	1a 	. 
	dec e			;3ab5	1d 	. 
	jr l3b33h		;3ab6	18 7b 	. { 
	ld c,d			;3ab8	4a 	J 
	ld c,l			;3ab9	4d 	M 
	ld c,b			;3aba	48 	H 
	ld a,020h		;3abb	3e 20 	>   
	ld a,030h		;3abd	3e 30 	> 0 
	ld e,010h		;3abf	1e 10 	. . 
	ld e,01ch		;3ac1	1e 1c 	. . 
	dec sp			;3ac3	3b 	; 
	ld a,(l383dh)		;3ac4	3a 3d 38 	: = 8 
	dec a			;3ac7	3d 	= 
	jr nc,$+65		;3ac8	30 3f 	0 ? 
	add hl,sp			;3aca	39 	9 
	rra			;3acb	1f 	. 
	djnz l3aedh		;3acc	10 1f 	. . 
	add hl,de			;3ace	19 	. 
	ccf			;3acf	3f 	? 
	add hl,sp			;3ad0	39 	9 
	ccf			;3ad1	3f 	? 
	ccf			;3ad2	3f 	? 
l3ad3h:
	ei			;3ad3	fb 	. 
	ld (071fdh),hl		;3ad4	22 fd 71 	" . q 
	defb 0fdh,090h,03fh	;illegal sequence		;3ad7	fd 90 3f 	. . ? 
	ld de,0a5fdh		;3ada	11 fd a5 	. . . 
	and (hl)			;3add	a6 	. 
	and h			;3ade	a4 	. 
	defb 0fdh,0b5h	;or iyl		;3adf	fd b5 	. . 
	or (hl)			;3ae1	b6 	. 
	or h			;3ae2	b4 	. 
	ld a,c			;3ae3	79 	y 
	ld c,c			;3ae4	49 	I 
	ld c,a			;3ae5	4f 	O 
	ld c,c			;3ae6	49 	I 
	rst 38h			;3ae7	ff 	. 
	and 0bfh		;3ae8	e6 bf 	. . 
	cp a			;3aea	bf 	. 
	ld a,d			;3aeb	7a 	z 
	ld a,d			;3aec	7a 	z 
l3aedh:
	ld a,a			;3aed	7f 	 
	ld a,d			;3aee	7a 	z 
	rra			;3aef	1f 	. 
	rra			;3af0	1f 	. 
	dec d			;3af1	15 	. 
	dec d			;3af2	15 	. 
	dec d			;3af3	15 	. 
	dec d			;3af4	15 	. 
	rra			;3af5	1f 	. 
	dec d			;3af6	15 	. 
	ld a,(bc)			;3af7	0a 	. 
	ld a,(bc)			;3af8	0a 	. 
	ld a,(bc)			;3af9	0a 	. 
	ld a,(bc)			;3afa	0a 	. 
	rst 18h			;3afb	df 	. 
	ld b,c			;3afc	41 	A 
	cp a			;3afd	bf 	. 
	add hl,bc			;3afe	09 	. 
	cp a			;3aff	bf 	. 
	ld bc,l1fffh		;3b00	01 ff 1f 	. . . 
	cp 00ah		;3b03	fe 0a 	. . 
	cp 0feh		;3b05	fe fe 	. . 
	call m,05cach		;3b07	fc ac 5c 	. . \ 
	ld e,h			;3b0a	5c 	\ 
	or b			;3b0b	b0 	. 
	or b			;3b0c	b0 	. 
	ret p			;3b0d	f0 	. 
	or b			;3b0e	b0 	. 
	and b			;3b0f	a0 	. 
	and b			;3b10	a0 	. 
	jr nc,l3b33h		;3b11	30 20 	0   
	djnz l3b25h		;3b13	10 10 	. . 
	sub b			;3b15	90 	. 
	djnz l3a98h		;3b16	10 80 	. . 
	add a,b			;3b18	80 	. 
	add a,b			;3b19	80 	. 
	add a,b			;3b1a	80 	. 
	ld a,b			;3b1b	78 	x 
	ld (hl),b			;3b1c	70 	p 
	ld d,b			;3b1d	50 	P 
	ld d,b			;3b1e	50 	P 
	ld d,h			;3b1f	54 	T 
	ld d,h			;3b20	54 	T 
	jr c,l3b33h		;3b21	38 10 	8 . 
	ld b,h			;3b23	44 	D 
	ld b,h			;3b24	44 	D 
l3b25h:
	ld a,b			;3b25	78 	x 
	ld b,b			;3b26	40 	@ 
	inc (hl)			;3b27	34 	4 
	inc (hl)			;3b28	34 	4 
	jr c,l3b5bh		;3b29	38 30 	8 0 
	dec bc			;3b2b	0b 	. 
	ld a,(bc)			;3b2c	0a 	. 
	dec c			;3b2d	0d 	. 
	ex af,af'			;3b2e	08 	. 
	ld a,e			;3b2f	7b 	{ 
	ld c,d			;3b30	4a 	J 
	ld c,l			;3b31	4d 	M 
	ld c,b			;3b32	48 	H 
l3b33h:
	defb 0fdh,085h	;add a,iyl		;3b33	fd 85 	. . 
	or (hl)			;3b35	b6 	. 
	or h			;3b36	b4 	. 
	defb 0fdh,085h	;add a,iyl		;3b37	fd 85 	. . 
	add a,(hl)			;3b39	86 	. 
	add a,h			;3b3a	84 	. 
	nop			;3b3b	00 	. 
	nop			;3b3c	00 	. 
	nop			;3b3d	00 	. 
	nop			;3b3e	00 	. 
	nop			;3b3f	00 	. 
	nop			;3b40	00 	. 
	nop			;3b41	00 	. 
	nop			;3b42	00 	. 
	nop			;3b43	00 	. 
	nop			;3b44	00 	. 
	nop			;3b45	00 	. 
	nop			;3b46	00 	. 
	nop			;3b47	00 	. 
	nop			;3b48	00 	. 
	nop			;3b49	00 	. 
	nop			;3b4a	00 	. 
	ret po			;3b4b	e0 	. 
	nop			;3b4c	00 	. 
	ret po			;3b4d	e0 	. 
	ld h,b			;3b4e	60 	` 
	ret p			;3b4f	f0 	. 
	add a,b			;3b50	80 	. 
	jr nc,l3b63h		;3b51	30 10 	0 . 
	ret c			;3b53	d8 	. 
	ld b,b			;3b54	40 	@ 
	cp h			;3b55	bc 	. 
	ex af,af'			;3b56	08 	. 
	cp h			;3b57	bc 	. 
	nop			;3b58	00 	. 
	cp 018h		;3b59	fe 18 	. . 
l3b5bh:
	ld a,c			;3b5b	79 	y 
	ld c,c			;3b5c	49 	I 
	ld c,a			;3b5d	4f 	O 
	ld c,c			;3b5e	49 	I 
	cp a			;3b5f	bf 	. 
	and (hl)			;3b60	a6 	. 
	rst 38h			;3b61	ff 	. 
	cp a			;3b62	bf 	. 
l3b63h:
	ld a,d			;3b63	7a 	z 
	ld a,d			;3b64	7a 	z 
	ld a,a			;3b65	7f 	 
	ld a,d			;3b66	7a 	z 
	rrca			;3b67	0f 	. 
	rrca			;3b68	0f 	. 
	ld a,(bc)			;3b69	0a 	. 
	ld a,(bc)			;3b6a	0a 	. 
	dec b			;3b6b	05 	. 
	dec b			;3b6c	05 	. 
	rlca			;3b6d	07 	. 
	dec b			;3b6e	05 	. 
	ld (bc),a			;3b6f	02 	. 
	ld (bc),a			;3b70	02 	. 
	ld (bc),a			;3b71	02 	. 
	ld (bc),a			;3b72	02 	. 
	ret nz			;3b73	c0 	. 
	add a,b			;3b74	80 	. 
	add a,b			;3b75	80 	. 
	add a,b			;3b76	80 	. 
	and b			;3b77	a0 	. 
	and b			;3b78	a0 	. 
	ret nz			;3b79	c0 	. 
	add a,b			;3b7a	80 	. 
	cp 008h		;3b7b	fe 08 	. . 
	cp 0fch		;3b7d	fe fc 	. . 
	defb 0fdh,0a9h,05eh	;illegal sequence		;3b7f	fd a9 5e 	. . ^ 
	ld e,h			;3b82	5c 	\ 
	cp (hl)			;3b83	be 	. 
	cp h			;3b84	bc 	. 
	rst 38h			;3b85	ff 	. 
	cp h			;3b86	bc 	. 
	rst 18h			;3b87	df 	. 
l3b88h:
	ret c			;3b88	d8 	. 
	sbc a,a			;3b89	9f 	. 
	sbc a,h			;3b8a	9c 	. 
	ld c,a			;3b8b	4f 	O 
	ld c,b			;3b8c	48 	H 
	rst 28h			;3b8d	ef 	. 
	ld c,a			;3b8e	4f 	O 
	cp l			;3b8f	bd 	. 
	or l			;3b90	b5 	. 
	cp a			;3b91	bf 	. 
	cp l			;3b92	bd 	. 
	ld e,010h		;3b93	1e 10 	. . 
	ld e,018h		;3b95	1e 18 	. . 
	ld a,02ah		;3b97	3e 2a 	> * 
	ld a,03eh		;3b99	3e 3e 	> > 
	ld e,b			;3b9b	58 	X 
	ld e,b			;3b9c	58 	X 
	ld h,b			;3b9d	60 	` 
	ld b,b			;3b9e	40 	@ 
	daa			;3b9f	27 	' 
	daa			;3ba0	27 	' 
	jr c,$+34		;3ba1	38 20 	8   
	jr l3bbdh		;3ba3	18 18 	. . 
	rra			;3ba5	1f 	. 
l3ba6h:
	jr l3bafh		;3ba6	18 07 	. . 
	rlca			;3ba8	07 	. 
	rlca			;3ba9	07 	. 
	rlca			;3baa	07 	. 
	nop			;3bab	00 	. 
	nop			;3bac	00 	. 
	nop			;3bad	00 	. 
	nop			;3bae	00 	. 
l3bafh:
	nop			;3baf	00 	. 
	nop			;3bb0	00 	. 
	nop			;3bb1	00 	. 
	nop			;3bb2	00 	. 
	nop			;3bb3	00 	. 
	nop			;3bb4	00 	. 
	nop			;3bb5	00 	. 
	nop			;3bb6	00 	. 
	nop			;3bb7	00 	. 
	nop			;3bb8	00 	. 
	nop			;3bb9	00 	. 
	nop			;3bba	00 	. 
	ld a,h			;3bbb	7c 	| 
	ld b,h			;3bbc	44 	D 
l3bbdh:
	ld a,h			;3bbd	7c 	| 
	ld h,h			;3bbe	64 	d 
	sbc a,b			;3bbf	98 	. 
	sbc a,b			;3bc0	98 	. 
	ld a,b			;3bc1	78 	x 
	jr l3be4h		;3bc2	18 20 	.   
	jr nz,l3ba6h		;3bc4	20 e0 	  . 
	jr nz,l3b88h		;3bc6	20 c0 	  . 
	ret nz			;3bc8	c0 	. 
	ret nz			;3bc9	c0 	. 
	ret nz			;3bca	c0 	. 
	nop			;3bcb	00 	. 
	nop			;3bcc	00 	. 
	nop			;3bcd	00 	. 
	nop			;3bce	00 	. 
	nop			;3bcf	00 	. 
	nop			;3bd0	00 	. 
	nop			;3bd1	00 	. 
	nop			;3bd2	00 	. 
	nop			;3bd3	00 	. 
	nop			;3bd4	00 	. 
	nop			;3bd5	00 	. 
	nop			;3bd6	00 	. 
	nop			;3bd7	00 	. 
	nop			;3bd8	00 	. 
	nop			;3bd9	00 	. 
	nop			;3bda	00 	. 
	inc b			;3bdb	04 	. 
	inc b			;3bdc	04 	. 
	rlca			;3bdd	07 	. 
	inc b			;3bde	04 	. 
	djnz l3bf1h		;3bdf	10 10 	. . 
	rra			;3be1	1f 	. 
	djnz l3c1ch		;3be2	10 38 	. 8 
l3be4h:
	jr nz,$+65		;3be4	20 3f 	  ? 
	ld a,030h		;3be6	3e 30 	> 0 
	jr nz,l3c29h		;3be8	20 3f 	  ? 
	ccf			;3bea	3f 	? 
	ld (hl),b			;3beb	70 	p 
	ld b,b			;3bec	40 	@ 
	ld a,a			;3bed	7f 	 
	ld a,a			;3bee	7f 	 
	ld h,b			;3bef	60 	` 
	ld b,b			;3bf0	40 	@ 
l3bf1h:
	ld a,a			;3bf1	7f 	 
	ld a,a			;3bf2	7f 	 
	ret p			;3bf3	f0 	. 
	add a,b			;3bf4	80 	. 
	rst 38h			;3bf5	ff 	. 
	rst 38h			;3bf6	ff 	. 
	ret p			;3bf7	f0 	. 
	add a,b			;3bf8	80 	. 
	rst 38h			;3bf9	ff 	. 
	rst 38h			;3bfa	ff 	. 
	nop			;3bfb	00 	. 
	nop			;3bfc	00 	. 
	add a,b			;3bfd	80 	. 
	nop			;3bfe	00 	. 
	nop			;3bff	00 	. 
	nop			;3c00	00 	. 
	ret po			;3c01	e0 	. 
	nop			;3c02	00 	. 
	ld h,b			;3c03	60 	` 
	ld h,b			;3c04	60 	` 
	sub b			;3c05	90 	. 
	nop			;3c06	00 	. 
	nop			;3c07	00 	. 
	nop			;3c08	00 	. 
	ret p			;3c09	f0 	. 
	add a,b			;3c0a	80 	. 
	djnz l3c1dh		;3c0b	10 10 	. . 
	ret pe			;3c0d	e8 	. 
	ret po			;3c0e	e0 	. 
	djnz l3c21h		;3c0f	10 10 	. . 
	ret pe			;3c11	e8 	. 
	ret po			;3c12	e0 	. 
	ex af,af'			;3c13	08 	. 
	ex af,af'			;3c14	08 	. 
	call p,sub_0480h		;3c15	f4 80 04 	. . . 
	inc b			;3c18	04 	. 
	jp m,0f8e0h		;3c19	fa e0 f8 	. . . 
l3c1ch:
	add a,b			;3c1c	80 	. 
l3c1dh:
	rst 38h			;3c1d	ff 	. 
	rst 38h			;3c1e	ff 	. 
	ret m			;3c1f	f8 	. 
	add a,b			;3c20	80 	. 
l3c21h:
	rst 38h			;3c21	ff 	. 
	rst 38h			;3c22	ff 	. 
	call m,0ffc0h		;3c23	fc c0 ff 	. . . 
	rst 38h			;3c26	ff 	. 
	ld a,b			;3c27	78 	x 
	ld b,b			;3c28	40 	@ 
l3c29h:
	ld a,a			;3c29	7f 	 
	ld a,a			;3c2a	7f 	 
	ld a,a			;3c2b	7f 	 
	ld b,b			;3c2c	40 	@ 
	ld a,a			;3c2d	7f 	 
	ld a,a			;3c2e	7f 	 
	ld a,a			;3c2f	7f 	 
	ld h,b			;3c30	60 	` 
	ld a,a			;3c31	7f 	 
	ld a,a			;3c32	7f 	 
	ccf			;3c33	3f 	? 
	inc a			;3c34	3c 	< 
	ccf			;3c35	3f 	? 
	ccf			;3c36	3f 	? 
	rlca			;3c37	07 	. 
	rlca			;3c38	07 	. 
	rlca			;3c39	07 	. 
	rlca			;3c3a	07 	. 
	nop			;3c3b	00 	. 
	nop			;3c3c	00 	. 
	cp 0f0h		;3c3d	fe f0 	. . 
	ld bc,0ff00h		;3c3f	01 00 ff 	. . . 
	pop af			;3c42	f1 	. 
	inc bc			;3c43	03 	. 
	nop			;3c44	00 	. 
	rst 38h			;3c45	ff 	. 
	ex (sp),hl			;3c46	e3 	. 
	rlca			;3c47	07 	. 
	nop			;3c48	00 	. 
	rst 38h			;3c49	ff 	. 
	rlca			;3c4a	07 	. 
	rst 38h			;3c4b	ff 	. 
	ld bc,0ffffh		;3c4c	01 ff ff 	. . . 
	cp 002h		;3c4f	fe 02 	. . 
	cp 0feh		;3c51	fe fe 	. . 
	call m,0fc0ch		;3c53	fc 0c fc 	. . . 
	call m,0f0f0h		;3c56	fc f0 f0 	. . . 
	ret p			;3c59	f0 	. 
	ret p			;3c5a	f0 	. 
	jr nz,l3c7dh		;3c5b	20 20 	    
	inc a			;3c5d	3c 	< 
	jr nz,l3cd0h		;3c5e	20 70 	  p 
	ld b,b			;3c60	40 	@ 
	ld a,(hl)			;3c61	7e 	~ 
	ld a,b			;3c62	78 	x 
	ld h,b			;3c63	60 	` 
	ld b,b			;3c64	40 	@ 
	ld a,(hl)			;3c65	7e 	~ 
	ld a,b			;3c66	78 	x 
	pop hl			;3c67	e1 	. 
	add a,b			;3c68	80 	. 
	rst 38h			;3c69	ff 	. 
	defb 0fdh,0f1h,080h	;illegal sequence		;3c6a	fd f1 80 	. . . 
	rst 38h			;3c6d	ff 	. 
	ld sp,hl			;3c6e	f9 	. 
	rst 38h			;3c6f	ff 	. 
	add a,c			;3c70	81 	. 
	rst 38h			;3c71	ff 	. 
	rst 38h			;3c72	ff 	. 
	cp 0c2h		;3c73	fe c2 	. . 
	cp 0feh		;3c75	fe fe 	. . 
	ld a,h			;3c77	7c 	| 
	ld a,h			;3c78	7c 	| 
	ld a,h			;3c79	7c 	| 
	ld a,h			;3c7a	7c 	| 
	nop			;3c7b	00 	. 
	nop			;3c7c	00 	. 
l3c7dh:
	nop			;3c7d	00 	. 
	nop			;3c7e	00 	. 
	nop			;3c7f	00 	. 
	nop			;3c80	00 	. 
	nop			;3c81	00 	. 
	nop			;3c82	00 	. 
	nop			;3c83	00 	. 
	nop			;3c84	00 	. 
	nop			;3c85	00 	. 
	nop			;3c86	00 	. 
	nop			;3c87	00 	. 
	nop			;3c88	00 	. 
	nop			;3c89	00 	. 
	nop			;3c8a	00 	. 
	nop			;3c8b	00 	. 
	nop			;3c8c	00 	. 
	nop			;3c8d	00 	. 
	nop			;3c8e	00 	. 
	nop			;3c8f	00 	. 
	nop			;3c90	00 	. 
	nop			;3c91	00 	. 
	nop			;3c92	00 	. 
	nop			;3c93	00 	. 
	nop			;3c94	00 	. 
	nop			;3c95	00 	. 
	nop			;3c96	00 	. 
	nop			;3c97	00 	. 
	nop			;3c98	00 	. 
	nop			;3c99	00 	. 
	nop			;3c9a	00 	. 
	nop			;3c9b	00 	. 
	nop			;3c9c	00 	. 
	nop			;3c9d	00 	. 
	nop			;3c9e	00 	. 
	nop			;3c9f	00 	. 
	nop			;3ca0	00 	. 
	nop			;3ca1	00 	. 
	nop			;3ca2	00 	. 
	nop			;3ca3	00 	. 
	nop			;3ca4	00 	. 
	nop			;3ca5	00 	. 
	nop			;3ca6	00 	. 
	nop			;3ca7	00 	. 
	nop			;3ca8	00 	. 
	nop			;3ca9	00 	. 
	nop			;3caa	00 	. 
	nop			;3cab	00 	. 
	nop			;3cac	00 	. 
	nop			;3cad	00 	. 
	nop			;3cae	00 	. 
	nop			;3caf	00 	. 
	nop			;3cb0	00 	. 
	nop			;3cb1	00 	. 
	nop			;3cb2	00 	. 
	nop			;3cb3	00 	. 
	nop			;3cb4	00 	. 
	nop			;3cb5	00 	. 
	nop			;3cb6	00 	. 
	nop			;3cb7	00 	. 
	nop			;3cb8	00 	. 
	nop			;3cb9	00 	. 
	nop			;3cba	00 	. 
	nop			;3cbb	00 	. 
	nop			;3cbc	00 	. 
	nop			;3cbd	00 	. 
	nop			;3cbe	00 	. 
	nop			;3cbf	00 	. 
	nop			;3cc0	00 	. 
	nop			;3cc1	00 	. 
	nop			;3cc2	00 	. 
	nop			;3cc3	00 	. 
	nop			;3cc4	00 	. 
	nop			;3cc5	00 	. 
	nop			;3cc6	00 	. 
	nop			;3cc7	00 	. 
	nop			;3cc8	00 	. 
	nop			;3cc9	00 	. 
	nop			;3cca	00 	. 
	nop			;3ccb	00 	. 
	nop			;3ccc	00 	. 
	nop			;3ccd	00 	. 
	nop			;3cce	00 	. 
	nop			;3ccf	00 	. 
l3cd0h:
	nop			;3cd0	00 	. 
	nop			;3cd1	00 	. 
	nop			;3cd2	00 	. 
	nop			;3cd3	00 	. 
	nop			;3cd4	00 	. 
	nop			;3cd5	00 	. 
	nop			;3cd6	00 	. 
	nop			;3cd7	00 	. 
	nop			;3cd8	00 	. 
	nop			;3cd9	00 	. 
	nop			;3cda	00 	. 
	ld b,c			;3cdb	41 	A 
	ld b,c			;3cdc	41 	A 
	ld h,c			;3cdd	61 	a 
	ld b,c			;3cde	41 	A 
	pop bc			;3cdf	c1 	. 
	add a,c			;3ce0	81 	. 
	pop af			;3ce1	f1 	. 
	pop hl			;3ce2	e1 	. 
	ret po			;3ce3	e0 	. 
	add a,b			;3ce4	80 	. 
	ret p			;3ce5	f0 	. 
	ret p			;3ce6	f0 	. 
	ret p			;3ce7	f0 	. 
	ret nz			;3ce8	c0 	. 
	call m,07cf8h		;3ce9	fc f8 7c 	. . | 
	ld h,h			;3cec	64 	d 
	ld a,h			;3ced	7c 	| 
	ld a,h			;3cee	7c 	| 
	add hl,sp			;3cef	39 	9 
	add hl,sp			;3cf0	39 	9 
	add hl,sp			;3cf1	39 	9 
	add hl,sp			;3cf2	39 	9 
	pop bc			;3cf3	c1 	. 
	add a,c			;3cf4	81 	. 
	pop hl			;3cf5	e1 	. 
	pop hl			;3cf6	e1 	. 
	ret pe			;3cf7	e8 	. 
	adc a,b			;3cf8	88 	. 
	rst 28h			;3cf9	ef 	. 
	call pe,l0000h		;3cfa	ec 00 00 	. . . 
	add a,b			;3cfd	80 	. 
	add a,b			;3cfe	80 	. 
	add a,d			;3cff	82 	. 
	add a,d			;3d00	82 	. 
	add a,e			;3d01	83 	. 
	add a,e			;3d02	83 	. 
	ld b,e			;3d03	43 	C 
	ld b,e			;3d04	43 	C 
	ld (hl),e			;3d05	73 	s 
	ld h,e			;3d06	63 	c 
	add a,084h		;3d07	c6 84 	. . 
	cp 0e6h		;3d09	fe e6 	. . 
	add a,086h		;3d0b	c6 86 	. . 
	cp 0feh		;3d0d	fe fe 	. . 
	ret m			;3d0f	f8 	. 
	ex af,af'			;3d10	08 	. 
	ret m			;3d11	f8 	. 
	ret m			;3d12	f8 	. 
	ret m			;3d13	f8 	. 
	cp b			;3d14	b8 	. 
	cp 0f8h		;3d15	fe f8 	. . 
	ld c,b			;3d17	48 	H 
	ld c,b			;3d18	48 	H 
	adc a,04ch		;3d19	ce 4c 	. L 
	ret m			;3d1b	f8 	. 
	ret p			;3d1c	f0 	. 
	rst 38h			;3d1d	ff 	. 
	cp 018h		;3d1e	fe 18 	. . 
	djnz l3d41h		;3d20	10 1f 	. . 
	ld e,038h		;3d22	1e 38 	. 8 
	jr nz,l3d65h		;3d24	20 3f 	  ? 
	inc a			;3d26	3c 	< 
	inc a			;3d27	3c 	< 
	jr nz,l3d69h		;3d28	20 3f 	  ? 
	ccf			;3d2a	3f 	? 
	inc a			;3d2b	3c 	< 
	jr nc,l3d6dh		;3d2c	30 3f 	0 ? 
	ccf			;3d2e	3f 	? 
	sbc a,a			;3d2f	9f 	. 
	sbc a,b			;3d30	98 	. 
	rst 38h			;3d31	ff 	. 
	rst 18h			;3d32	df 	. 
	adc a,a			;3d33	8f 	. 
	adc a,h			;3d34	8c 	. 
	rst 28h			;3d35	ef 	. 
	rst 28h			;3d36	ef 	. 
	rst 20h			;3d37	e7 	. 
	rst 20h			;3d38	e7 	. 
	rst 20h			;3d39	e7 	. 
	rst 20h			;3d3a	e7 	. 
	sbc a,b			;3d3b	98 	. 
	sub b			;3d3c	90 	. 
	ld e,(hl)			;3d3d	5e 	^ 
	inc e			;3d3e	1c 	. 
	jr c,l3d61h		;3d3f	38 20 	8   
l3d41h:
	cp 03eh		;3d41	fe 3e 	. > 
	ld a,030h		;3d43	3e 30 	> 0 
	cp 0beh		;3d45	fe be 	. . 
	ld e,(hl)			;3d47	5e 	^ 
	ld (de),a			;3d48	12 	. 
	cp 0feh		;3d49	fe fe 	. . 
	sbc a,h			;3d4b	9c 	. 
	inc e			;3d4c	1c 	. 
	call m,0e0fch		;3d4d	fc fc e0 	. . . 
	nop			;3d50	00 	. 
	ret po			;3d51	e0 	. 
	ret po			;3d52	e0 	. 
	call po,0e624h		;3d53	e4 24 e6 	. $ . 
	and 0c6h		;3d56	e6 c6 	. . 
	add a,0c6h		;3d58	c6 c6 	. . 
	add a,000h		;3d5a	c6 00 	. . 
	jr l3d76h		;3d5c	18 18 	. . 
	jr l3d60h		;3d5e	18 00 	. . 
l3d60h:
	inc a			;3d60	3c 	< 
l3d61h:
	inc a			;3d61	3c 	< 
	inc a			;3d62	3c 	< 
	nop			;3d63	00 	. 
	ld a,(hl)			;3d64	7e 	~ 
l3d65h:
	ld a,(hl)			;3d65	7e 	~ 
	ld a,(hl)			;3d66	7e 	~ 
	jr $+1		;3d67	18 ff 	. . 
l3d69h:
	rst 20h			;3d69	e7 	. 
l3d6ah:
	rst 20h			;3d6a	e7 	. 
	sbc a,h			;3d6b	9c 	. 
	ld e,a			;3d6c	5f 	_ 
l3d6dh:
	ex (sp),hl			;3d6d	e3 	. 
	ld b,e			;3d6e	43 	C 
	ld b,h			;3d6f	44 	D 
	ld (0227eh),hl		;3d70	22 7e 22 	" ~ " 
	ld h,b			;3d73	60 	` 
	ld e,07eh		;3d74	1e 7e 	. ~ 
l3d76h:
	ld e,07ah		;3d76	1e 7a 	. z 
	inc b			;3d78	04 	. 
	ld a,(hl)			;3d79	7e 	~ 
	inc b			;3d7a	04 	. 
	inc (hl)			;3d7b	34 	4 
	ex af,af'			;3d7c	08 	. 
	inc h			;3d7d	24 	$ 
	jr l3da0h		;3d7e	18 20 	.   
	djnz l3d82h		;3d80	10 00 	. . 
l3d82h:
	jr nc,l3da4h		;3d82	30 20 	0   
	inc de			;3d84	13 	. 
	nop			;3d85	00 	. 
	inc sp			;3d86	33 	3 
	ld hl,l0016h		;3d87	21 16 00 	! . . 
	scf			;3d8a	37 	7 
	sbc a,d			;3d8b	9a 	. 
	ld b,h			;3d8c	44 	D 
	nop			;3d8d	00 	. 
	sbc a,05ah		;3d8e	de 5a 	. Z 
	inc h			;3d90	24 	$ 
	nop			;3d91	00 	. 
	ld a,(hl)			;3d92	7e 	~ 
	inc (hl)			;3d93	34 	4 
	ex af,af'			;3d94	08 	. 
	nop			;3d95	00 	. 
	inc a			;3d96	3c 	< 
	inc c			;3d97	0c 	. 
	nop			;3d98	00 	. 
	nop			;3d99	00 	. 
	inc c			;3d9a	0c 	. 
	dec bc			;3d9b	0b 	. 
	dec bc			;3d9c	0b 	. 
	inc c			;3d9d	0c 	. 
	ex af,af'			;3d9e	08 	. 
	dec b			;3d9f	05 	. 
l3da0h:
	dec b			;3da0	05 	. 
	ld b,004h		;3da1	06 04 	. . 
	ld (bc),a			;3da3	02 	. 
l3da4h:
	ld (bc),a			;3da4	02 	. 
	inc bc			;3da5	03 	. 
	ld (bc),a			;3da6	02 	. 
	ld bc,l0101h		;3da7	01 01 01 	. . . 
	ld bc,l0a0bh		;3daa	01 0b 0a 	. . . 
	inc bc			;3dad	03 	. 
	inc bc			;3dae	03 	. 
	inc de			;3daf	13 	. 
	djnz l3dd1h		;3db0	10 1f 	. . 
	inc de			;3db2	13 	. 
	rra			;3db3	1f 	. 
	jr l3dd5h		;3db4	18 1f 	. . 
	ld e,027h		;3db6	1e 27 	. ' 
	jr nz,l3dc1h		;3db8	20 07 	  . 
	inc b			;3dba	04 	. 
	ret p			;3dbb	f0 	. 
	ret nc			;3dbc	d0 	. 
	add a,b			;3dbd	80 	. 
	add a,b			;3dbe	80 	. 
	ret p			;3dbf	f0 	. 
	or b			;3dc0	b0 	. 
l3dc1h:
	djnz l3dd3h		;3dc1	10 10 	. . 
	ld h,b			;3dc3	60 	` 
	ld h,b			;3dc4	60 	` 
	and b			;3dc5	a0 	. 
	jr nz,l3e08h		;3dc6	20 40 	  @ 
	ld b,b			;3dc8	40 	@ 
	ret nz			;3dc9	c0 	. 
	ld b,b			;3dca	40 	@ 
	ret z			;3dcb	c8 	. 
	ex af,af'			;3dcc	08 	. 
	ret nz			;3dcd	c0 	. 
	ld b,b			;3dce	40 	@ 
	ld l,b			;3dcf	68 	h 
	ex af,af'			;3dd0	08 	. 
l3dd1h:
	ret p			;3dd1	f0 	. 
	ld h,b			;3dd2	60 	` 
l3dd3h:
	ret m			;3dd3	f8 	. 
	adc a,b			;3dd4	88 	. 
l3dd5h:
	ld a,b			;3dd5	78 	x 
	jr c,l3d6ah		;3dd6	38 92 	8 . 
l3dd8h:
	ld h,d			;3dd8	62 	b 
	ld (hl),b			;3dd9	70 	p 
	ld (hl),b			;3dda	70 	p 
	ld e,a			;3ddb	5f 	_ 
	ld d,b			;3ddc	50 	P 
	ld l,a			;3ddd	6f 	o 
	ld c,h			;3dde	4c 	L 
	cpl			;3ddf	2f 	/ 
	jr nz,l3e21h		;3de0	20 3f 	  ? 
l3de2h:
	inc l			;3de2	2c 	, 
	rra			;3de3	1f 	. 
	djnz l3e05h		;3de4	10 1f 	. . 
	ld e,00fh		;3de6	1e 0f 	. . 
	ex af,af'			;3de8	08 	. 
	rrca			;3de9	0f 	. 
	rrca			;3dea	0f 	. 
	rrca			;3deb	0f 	. 
	ld a,(bc)			;3dec	0a 	. 
	dec bc			;3ded	0b 	. 
l3deeh:
	dec bc			;3dee	0b 	. 
	rlca			;3def	07 	. 
	inc b			;3df0	04 	. 
	dec b			;3df1	05 	. 
	dec b			;3df2	05 	. 
	ld (bc),a			;3df3	02 	. 
	ld (bc),a			;3df4	02 	. 
	inc bc			;3df5	03 	. 
	ld (bc),a			;3df6	02 	. 
	ld bc,l0101h		;3df7	01 01 01 	. . . 
	ld bc,0e69eh		;3dfa	01 9e e6 	. . . 
	ld a,b			;3dfd	78 	x 
	ld a,b			;3dfe	78 	x 
	jp c,07ea2h		;3dff	da a2 7e 	. . ~ 
	ld hl,(l047ch)		;3e02	2a 7c 04 	* | . 
l3e05h:
	call m,0781ch		;3e05	fc 1c 78 	. . x 
l3e08h:
	ex af,af'			;3e08	08 	. 
	ret m			;3e09	f8 	. 
	jr c,$-14		;3e0a	38 f0 	8 . 
	jr nz,l3deeh		;3e0c	20 e0 	  . 
	ret po			;3e0e	e0 	. 
	ret p			;3e0f	f0 	. 
	djnz l3de2h		;3e10	10 d0 	. . 
	ret nc			;3e12	d0 	. 
	and b			;3e13	a0 	. 
	and b			;3e14	a0 	. 
	ld h,b			;3e15	60 	` 
	jr nz,l3dd8h		;3e16	20 c0 	  . 
	ret nz			;3e18	c0 	. 
	ret nz			;3e19	c0 	. 
	ret nz			;3e1a	c0 	. 
	nop			;3e1b	00 	. 
	nop			;3e1c	00 	. 
	nop			;3e1d	00 	. 
	nop			;3e1e	00 	. 
	dec b			;3e1f	05 	. 
	dec b			;3e20	05 	. 
l3e21h:
	ld b,004h		;3e21	06 04 	. . 
	jp nz,04342h		;3e23	c2 42 43 	. B C 
	ld (bc),a			;3e26	02 	. 
	pop hl			;3e27	e1 	. 
	and c			;3e28	a1 	. 
	and c			;3e29	a1 	. 
	ld bc,06161h		;3e2a	01 61 61 	. a a 
	ld h,c			;3e2d	61 	a 
l3e2eh:
	ld bc,l0203h		;3e2e	01 03 02 	. . . 
l3e31h:
	inc bc			;3e31	03 	. 
	inc bc			;3e32	03 	. 
	add hl,bc			;3e33	09 	. 
	ex af,af'			;3e34	08 	. 
	rrca			;3e35	0f 	. 
l3e36h:
	add hl,bc			;3e36	09 	. 
	rlca			;3e37	07 	. 
	inc b			;3e38	04 	. 
	rlca			;3e39	07 	. 
	rlca			;3e3a	07 	. 
	nop			;3e3b	00 	. 
	nop			;3e3c	00 	. 
	nop			;3e3d	00 	. 
	nop			;3e3e	00 	. 
	ret po			;3e3f	e0 	. 
	ret po			;3e40	e0 	. 
	add a,b			;3e41	80 	. 
	add a,b			;3e42	80 	. 
	and c			;3e43	a1 	. 
	and b			;3e44	a0 	. 
	ld h,b			;3e45	60 	` 
	jr nz,l3e8bh		;3e46	20 43 	  C 
	ld b,c			;3e48	41 	A 
	pop bc			;3e49	c1 	. 
	ld b,b			;3e4a	40 	@ 
	add a,(hl)			;3e4b	86 	. 
	ld b,086h		;3e4c	06 86 	. . 
	add a,b			;3e4e	80 	. 
	ret nz			;3e4f	c0 	. 
	nop			;3e50	00 	. 
	ret nz			;3e51	c0 	. 
	ret nz			;3e52	c0 	. 
	ld d,b			;3e53	50 	P 
	djnz l3e36h		;3e54	10 e0 	. . 
	ld b,b			;3e56	40 	@ 
	ret p			;3e57	f0 	. 
	djnz l3ecah		;3e58	10 70 	. p 
	jr nc,l3e6bh		;3e5a	30 0f 	0 . 
	ex af,af'			;3e5c	08 	. 
	rrca			;3e5d	0f 	. 
	ld c,01fh		;3e5e	0e 1f 	. . 
	jr l3e79h		;3e60	18 17 	. . 
	rla			;3e62	17 	. 
	rla			;3e63	17 	. 
	inc d			;3e64	14 	. 
	rra			;3e65	1f 	. 
	rla			;3e66	17 	. 
	rrca			;3e67	0f 	. 
	dec c			;3e68	0d 	. 
	dec c			;3e69	0d 	. 
	dec c			;3e6a	0d 	. 
l3e6bh:
	ld b,e			;3e6b	43 	C 
	ld (bc),a			;3e6c	02 	. 
	ld (bc),a			;3e6d	02 	. 
	ld (bc),a			;3e6e	02 	. 
	ld bc,l0101h		;3e6f	01 01 01 	. . . 
	ld bc,l0000h		;3e72	01 00 00 	. . . 
	nop			;3e75	00 	. 
	nop			;3e76	00 	. 
	nop			;3e77	00 	. 
	nop			;3e78	00 	. 
l3e79h:
	nop			;3e79	00 	. 
	nop			;3e7a	00 	. 
	cp b			;3e7b	b8 	. 
	ret z			;3e7c	c8 	. 
	ld a,b			;3e7d	78 	x 
l3e7eh:
	ld e,b			;3e7e	58 	X 
	ld a,b			;3e7f	78 	x 
	ex af,af'			;3e80	08 	. 
	ret p			;3e81	f0 	. 
	jr nc,l3ef4h		;3e82	30 70 	0 p 
	djnz l3e7eh		;3e84	10 f8 	. . 
	ld (hl),b			;3e86	70 	p 
	ret pe			;3e87	e8 	. 
	ld c,b			;3e88	48 	H 
	ret z			;3e89	c8 	. 
	ret z			;3e8a	c8 	. 
l3e8bh:
	ret po			;3e8b	e0 	. 
	jr nz,l3e2eh		;3e8c	20 a0 	  . 
	and b			;3e8e	a0 	. 
	add a,0c4h		;3e8f	c6 c4 	. . 
	ld b,h			;3e91	44 	D 
	ld b,b			;3e92	40 	@ 
	add a,e			;3e93	83 	. 
	add a,d			;3e94	82 	. 
l3e95h:
	add a,d			;3e95	82 	. 
	add a,b			;3e96	80 	. 
	nop			;3e97	00 	. 
	nop			;3e98	00 	. 
	nop			;3e99	00 	. 
	nop			;3e9a	00 	. 
	nop			;3e9b	00 	. 
	nop			;3e9c	00 	. 
	nop			;3e9d	00 	. 
	nop			;3e9e	00 	. 
	ld (bc),a			;3e9f	02 	. 
	ld (bc),a			;3ea0	02 	. 
	inc bc			;3ea1	03 	. 
	ld (bc),a			;3ea2	02 	. 
	ld b,004h		;3ea3	06 04 	. . 
	rlca			;3ea5	07 	. 
	inc b			;3ea6	04 	. 
	rrca			;3ea7	0f 	. 
	ex af,af'			;3ea8	08 	. 
	rrca			;3ea9	0f 	. 
	ld a,(bc)			;3eaa	0a 	. 
	inc c			;3eab	0c 	. 
	ex af,af'			;3eac	08 	. 
	rrca			;3ead	0f 	. 
	rrca			;3eae	0f 	. 
	inc e			;3eaf	1c 	. 
	ld de,0161eh		;3eb0	11 1e 16 	. . . 
	jr z,l3ed6h		;3eb3	28 21 	( ! 
	ld a,02eh		;3eb5	3e 2e 	> . 
	ret m			;3eb7	f8 	. 
	pop af			;3eb8	f1 	. 
	sbc a,(hl)			;3eb9	9e 	. 
	sbc a,(hl)			;3eba	9e 	. 
	nop			;3ebb	00 	. 
	nop			;3ebc	00 	. 
	nop			;3ebd	00 	. 
	nop			;3ebe	00 	. 
	add a,b			;3ebf	80 	. 
	nop			;3ec0	00 	. 
l3ec1h:
	ret nz			;3ec1	c0 	. 
	nop			;3ec2	00 	. 
	and b			;3ec3	a0 	. 
	add a,b			;3ec4	80 	. 
	ld h,b			;3ec5	60 	` 
	nop			;3ec6	00 	. 
	ld (hl),b			;3ec7	70 	p 
	nop			;3ec8	00 	. 
	ret p			;3ec9	f0 	. 
l3ecah:
	and b			;3eca	a0 	. 
	djnz $-126		;3ecb	10 80 	. . 
	ld (hl),b			;3ecd	70 	p 
	ld h,b			;3ece	60 	` 
	jr $-30		;3ecf	18 e0 	. . 
	jr l3ee3h		;3ed1	18 10 	. . 
	jr z,l3e95h		;3ed3	28 c0 	( . 
	inc e			;3ed5	1c 	. 
l3ed6h:
	jr l3f47h		;3ed6	18 6f 	. o 
	add a,a			;3ed8	87 	. 
	inc e			;3ed9	1c 	. 
	inc e			;3eda	1c 	. 
	ld l,h			;3edb	6c 	l 
	ld l,c			;3edc	69 	i 
	ld l,(hl)			;3edd	6e 	n 
	ld l,(hl)			;3ede	6e 	n 
	inc c			;3edf	0c 	. 
	ex af,af'			;3ee0	08 	. 
	rrca			;3ee1	0f 	. 
	rrca			;3ee2	0f 	. 
l3ee3h:
	ld a,(de)			;3ee3	1a 	. 
	jr l3efdh		;3ee4	18 17 	. . 
	inc de			;3ee6	13 	. 
	rrca			;3ee7	0f 	. 
	ld c,00fh		;3ee8	0e 0f 	. . 
	rrca			;3eea	0f 	. 
	ld bc,l0101h		;3eeb	01 01 01 	. . . 
	ld bc,l0202h		;3eee	01 02 02 	. . . 
	inc bc			;3ef1	03 	. 
	ld (bc),a			;3ef2	02 	. 
	rlca			;3ef3	07 	. 
l3ef4h:
	rlca			;3ef4	07 	. 
	inc b			;3ef5	04 	. 
	inc b			;3ef6	04 	. 
	inc bc			;3ef7	03 	. 
	inc bc			;3ef8	03 	. 
	inc bc			;3ef9	03 	. 
	inc bc			;3efa	03 	. 
	ld a,e			;3efb	7b 	{ 
	adc a,e			;3efc	8b 	. 
l3efdh:
	dec de			;3efd	1b 	. 
	dec de			;3efe	1b 	. 
l3effh:
	djnz l3ec1h		;3eff	10 c0 	. . 
l3f01h:
	jr nc,l3f33h		;3f01	30 30 	0 0 
	jr z,l3f0dh		;3f03	28 08 	( . 
	ret p			;3f05	f0 	. 
	ret po			;3f06	e0 	. 
	ret m			;3f07	f8 	. 
	jr c,$-6		;3f08	38 f8 	8 . 
	ret m			;3f0a	f8 	. 
	ld b,b			;3f0b	40 	@ 
	ld b,b			;3f0c	40 	@ 
l3f0dh:
	ret nz			;3f0d	c0 	. 
	ld b,b			;3f0e	40 	@ 
	ld b,b			;3f0f	40 	@ 
	ld b,b			;3f10	40 	@ 
	add a,b			;3f11	80 	. 
	nop			;3f12	00 	. 
	ret po			;3f13	e0 	. 
	ret nz			;3f14	c0 	. 
	add a,b			;3f15	80 	. 
	add a,b			;3f16	80 	. 
	ret po			;3f17	e0 	. 
	ret po			;3f18	e0 	. 
	ret po			;3f19	e0 	. 
	ret po			;3f1a	e0 	. 
	nop			;3f1b	00 	. 
	nop			;3f1c	00 	. 
	nop			;3f1d	00 	. 
	nop			;3f1e	00 	. 
	nop			;3f1f	00 	. 
l3f20h:
	nop			;3f20	00 	. 
l3f21h:
	nop			;3f21	00 	. 
	nop			;3f22	00 	. 
	ld a,a			;3f23	7f 	 
	nop			;3f24	00 	. 
	nop			;3f25	00 	. 
	nop			;3f26	00 	. 
	rst 38h			;3f27	ff 	. 
	nop			;3f28	00 	. 
	nop			;3f29	00 	. 
	nop			;3f2a	00 	. 
	ccf			;3f2b	3f 	? 
	ret nz			;3f2c	c0 	. 
	ret nz			;3f2d	c0 	. 
	nop			;3f2e	00 	. 
	rst 18h			;3f2f	df 	. 
	jr nz,l3f52h		;3f30	20 20 	    
	nop			;3f32	00 	. 
l3f33h:
	rst 28h			;3f33	ef 	. 
	djnz l3f4ch		;3f34	10 16 	. . 
	nop			;3f36	00 	. 
	rst 30h			;3f37	f7 	. 
	ex af,af'			;3f38	08 	. 
	rrca			;3f39	0f 	. 
	nop			;3f3a	00 	. 
	nop			;3f3b	00 	. 
	nop			;3f3c	00 	. 
	nop			;3f3d	00 	. 
	nop			;3f3e	00 	. 
	nop			;3f3f	00 	. 
	nop			;3f40	00 	. 
	nop			;3f41	00 	. 
	nop			;3f42	00 	. 
	call m,l0000h		;3f43	fc 00 00 	. . . 
	nop			;3f46	00 	. 
l3f47h:
	cp 000h		;3f47	fe 00 	. . 
	nop			;3f49	00 	. 
	nop			;3f4a	00 	. 
	ret m			;3f4b	f8 	. 
l3f4ch:
	rlca			;3f4c	07 	. 
	rlca			;3f4d	07 	. 
	nop			;3f4e	00 	. 
	or 009h		;3f4f	f6 09 	. . 
	add hl,bc			;3f51	09 	. 
l3f52h:
	nop			;3f52	00 	. 
	xor 011h		;3f53	ee 11 	. . 
	pop de			;3f55	d1 	. 
	nop			;3f56	00 	. 
	sbc a,021h		;3f57	de 21 	. ! 
	pop hl			;3f59	e1 	. 
	nop			;3f5a	00 	. 
	rst 38h			;3f5b	ff 	. 
	nop			;3f5c	00 	. 
	inc bc			;3f5d	03 	. 
	nop			;3f5e	00 	. 
	rst 38h			;3f5f	ff 	. 
	nop			;3f60	00 	. 
	ld bc,0ff00h		;3f61	01 00 ff 	. . . 
	nop			;3f64	00 	. 
	nop			;3f65	00 	. 
	nop			;3f66	00 	. 
	ld a,a			;3f67	7f 	 
	nop			;3f68	00 	. 
	nop			;3f69	00 	. 
	nop			;3f6a	00 	. 
	nop			;3f6b	00 	. 
	ld a,a			;3f6c	7f 	 
	ld a,a			;3f6d	7f 	 
	nop			;3f6e	00 	. 
	nop			;3f6f	00 	. 
	nop			;3f70	00 	. 
	nop			;3f71	00 	. 
	nop			;3f72	00 	. 
	nop			;3f73	00 	. 
	nop			;3f74	00 	. 
	nop			;3f75	00 	. 
	nop			;3f76	00 	. 
	nop			;3f77	00 	. 
	nop			;3f78	00 	. 
	nop			;3f79	00 	. 
	nop			;3f7a	00 	. 
	cp 001h		;3f7b	fe 01 	. . 
	add a,c			;3f7d	81 	. 
	nop			;3f7e	00 	. 
	cp 001h		;3f7f	fe 01 	. . 
	ld bc,0fe00h		;3f81	01 00 fe 	. . . 
	ld bc,l0001h		;3f84	01 01 00 	. . . 
	call m,l0303h		;3f87	fc 03 03 	. . . 
	nop			;3f8a	00 	. 
	nop			;3f8b	00 	. 
	cp 0feh		;3f8c	fe fe 	. . 
	nop			;3f8e	00 	. 
	nop			;3f8f	00 	. 
	nop			;3f90	00 	. 
	nop			;3f91	00 	. 
	nop			;3f92	00 	. 
	nop			;3f93	00 	. 
	nop			;3f94	00 	. 
	nop			;3f95	00 	. 
	nop			;3f96	00 	. 
	nop			;3f97	00 	. 
	nop			;3f98	00 	. 
	nop			;3f99	00 	. 
	nop			;3f9a	00 	. 
	jr nz,l3fa7h		;3f9b	20 0a 	  . 
	ld a,(0c172h)		;3f9d	3a 72 c1 	: r . 
	inc a			;3fa0	3c 	< 
	ld (0c171h),a		;3fa1	32 71 c1 	2 q . 
	jp l3d65h		;3fa4	c3 65 3d 	. e = 
l3fa7h:
	ld hl,0c16bh		;3fa7	21 6b c1 	! k . 
	res 1,(hl)		;3faa	cb 8e 	. . 
	jp l3d65h		;3fac	c3 65 3d 	. e = 
	ld b,004h		;3faf	06 04 	. . 
	ld de,(0c17ch)		;3fb1	ed 5b 7c c1 	. [ | . 
	ld a,0a0h		;3fb5	3e a0 	> . 
	cp e			;3fb7	bb 	. 
	ld a,08ch		;3fb8	3e 8c 	> . 
	jr z,l3fbdh		;3fba	28 01 	( . 
	add a,b			;3fbc	80 	. 
l3fbdh:
	ld hl,l098fh		;3fbd	21 8f 09 	! . . 
l3fc0h:
	call sub_0967h		;3fc0	cd 67 09 	. g . 
	ld (ix+002h),081h		;3fc3	dd 36 02 81 	. 6 . . 
	ld a,(0c224h)		;3fc7	3a 24 c2 	: $ . 
	add a,003h		;3fca	c6 03 	. . 
	ld (ix+003h),080h		;3fcc	dd 36 03 80 	. 6 . . 
	ld (ix+004h),a		;3fd0	dd 77 04 	. w . 
	ld a,(0c227h)		;3fd3	3a 27 c2 	: ' . 
	add a,0feh		;3fd6	c6 fe 	. . 
	ld (ix+007h),a		;3fd8	dd 77 07 	. w . 
	ld (ix+010h),020h		;3fdb	dd 36 10 20 	. 6 .   
	ld (ix+011h),000h		;3fdf	dd 36 11 00 	. 6 . . 
	ld a,(0c16bh)		;3fe3	3a 6b c1 	: k . 
	bit 3,a		;3fe6	cb 5f 	. _ 
	jr nz,l3ff4h		;3fe8	20 0a 	  . 
	ld (ix+012h),000h		;3fea	dd 36 12 00 	. 6 . . 
	ld (ix+013h),002h		;3fee	dd 36 13 02 	. 6 . . 
	jr l3ffch		;3ff2	18 08 	. . 
l3ff4h:
	ld (ix+012h),000h		;3ff4	dd 36 12 00 	. 6 . . 
	ld (ix+013h),0feh		;3ff8	dd 36 13 fe 	. 6 . . 
l3ffch:
	ld (ix+00ch),00ch		;3ffc	dd 36 0c 0c 	. 6 . . 
