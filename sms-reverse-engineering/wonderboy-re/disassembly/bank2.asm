; z80dasm 1.1.5
; command line: z80dasm -a -l -t -g 0x0000 -o disassembly/bank2.asm disassembly/bank2.bin

	org	00000h

sub_0000h:
	ld de,l0010h+1		;0000	11 11 00 	. . . 
sub_0003h:
	nop			;0003	00 	. 
	ld h,a			;0004	67 	g 
	ld h,a			;0005	67 	g 
l0006h:
	jr l0010h		;0006	18 08 	. . 
	dec b			;0008	05 	. 
	dec b			;0009	05 	. 
	ld a,(06a10h)		;000a	3a 10 6a 	: . j 
	ld l,d			;000d	6a 	j 
	dec d			;000e	15 	. 
	nop			;000f	00 	. 
l0010h:
	djnz l0022h		;0010	10 10 	. . 
	rra			;0012	1f 	. 
	djnz $+18		;0013	10 10 	. . 
	djnz $+33		;0015	10 1f 	. . 
	djnz l003ah		;0017	10 21 	. ! 
	ld hl,0203eh		;0019	21 3e 20 	! >   
	inc hl			;001c	23 	# 
	inc hl			;001d	23 	# 
l001eh:
	inc a			;001e	3c 	< 
	jr nz,$-14		;001f	20 f0 	  . 
	ret p			;0021	f0 	. 
l0022h:
	nop			;0022	00 	. 
	nop			;0023	00 	. 
	call m,sub_00cch		;0024	fc cc 00 	. . . 
	nop			;0027	00 	. 
l0028h:
	cp 0f2h		;0028	fe f2 	. . 
	nop			;002a	00 	. 
	nop			;002b	00 	. 
l002ch:
	ld a,(hl)			;002c	7e 	~ 
	ld a,d			;002d	7a 	z 
	add a,b			;002e	80 	. 
l002fh:
	nop			;002f	00 	. 
l0030h:
	rst 38h			;0030	ff 	. 
l0031h:
	rst 38h			;0031	ff 	. 
	nop			;0032	00 	. 
	nop			;0033	00 	. 
	rst 38h			;0034	ff 	. 
	defb 0ddh,000h,000h	;illegal sequence		;0035	dd 00 00 	. . . 
sub_0038h:
	defb 0edh;next byte illegal after ed		;0038	ed 	. 
	rst 18h			;0039	df 	. 
l003ah:
	nop			;003a	00 	. 
	nop			;003b	00 	. 
	ld l,c			;003c	69 	i 
	jp (hl)			;003d	e9 	. 
	ld d,016h		;003e	16 16 	. . 
	nop			;0040	00 	. 
	nop			;0041	00 	. 
	nop			;0042	00 	. 
	nop			;0043	00 	. 
	nop			;0044	00 	. 
	nop			;0045	00 	. 
	nop			;0046	00 	. 
	nop			;0047	00 	. 
l0048h:
	nop			;0048	00 	. 
	nop			;0049	00 	. 
	nop			;004a	00 	. 
	nop			;004b	00 	. 
	nop			;004c	00 	. 
	nop			;004d	00 	. 
	nop			;004e	00 	. 
	nop			;004f	00 	. 
	nop			;0050	00 	. 
	nop			;0051	00 	. 
	nop			;0052	00 	. 
	nop			;0053	00 	. 
l0054h:
	nop			;0054	00 	. 
	nop			;0055	00 	. 
	nop			;0056	00 	. 
	nop			;0057	00 	. 
	add a,b			;0058	80 	. 
	add a,b			;0059	80 	. 
	nop			;005a	00 	. 
	nop			;005b	00 	. 
	add a,b			;005c	80 	. 
	add a,b			;005d	80 	. 
	nop			;005e	00 	. 
	nop			;005f	00 	. 
	daa			;0060	27 	' 
	daa			;0061	27 	' 
	jr c,l0084h		;0062	38 20 	8   
	daa			;0064	27 	' 
	daa			;0065	27 	' 
	jr c,l0088h		;0066	38 20 	8   
	ld hl,l3e21h		;0068	21 21 3e 	! ! > 
	ld (l2121h),hl		;006b	22 21 21 	" ! ! 
	ld a,022h		;006e	3e 22 	> " 
	ld (de),a			;0070	12 	. 
	ld (de),a			;0071	12 	. 
	dec e			;0072	1d 	. 
	ld de,l1313h		;0073	11 13 13 	. . . 
	inc e			;0076	1c 	. 
	djnz l008ch		;0077	10 13 	. . 
	inc de			;0079	13 	. 
	inc e			;007a	1c 	. 
	djnz l0086h		;007b	10 09 	. . 
	add hl,bc			;007d	09 	. 
	ld c,008h		;007e	0e 08 	. . 
	ld b,b			;0080	40 	@ 
	ld c,(hl)			;0081	4e 	N 
	or c			;0082	b1 	. 
	or c			;0083	b1 	. 
l0084h:
	ld a,(de)			;0084	1a 	. 
	dec h			;0085	25 	% 
l0086h:
	ret nz			;0086	c0 	. 
	ret nz			;0087	c0 	. 
l0088h:
	dec sp			;0088	3b 	; 
	ld c,(hl)			;0089	4e 	N 
	adc a,d			;008a	8a 	. 
	adc a,d			;008b	8a 	. 
l008ch:
	dec sp			;008c	3b 	; 
	ld c,(hl)			;008d	4e 	N 
	adc a,d			;008e	8a 	. 
	adc a,d			;008f	8a 	. 
	nop			;0090	00 	. 
	ccf			;0091	3f 	? 
	ret nz			;0092	c0 	. 
	ret nz			;0093	c0 	. 
	inc b			;0094	04 	. 
	cp e			;0095	bb 	. 
	ld b,b			;0096	40 	@ 
	ld b,b			;0097	40 	@ 
	inc b			;0098	04 	. 
	ld a,e			;0099	7b 	{ 
	add a,h			;009a	84 	. 
	add a,b			;009b	80 	. 
	add a,c			;009c	81 	. 
	cp a			;009d	bf 	. 
	ld b,b			;009e	40 	@ 
	ld b,b			;009f	40 	@ 
	add a,b			;00a0	80 	. 
	add a,b			;00a1	80 	. 
	nop			;00a2	00 	. 
	nop			;00a3	00 	. 
	add a,b			;00a4	80 	. 
	add a,b			;00a5	80 	. 
	nop			;00a6	00 	. 
	nop			;00a7	00 	. 
	add a,b			;00a8	80 	. 
	add a,b			;00a9	80 	. 
	nop			;00aa	00 	. 
	nop			;00ab	00 	. 
	add a,b			;00ac	80 	. 
	add a,b			;00ad	80 	. 
	nop			;00ae	00 	. 
	nop			;00af	00 	. 
	add a,b			;00b0	80 	. 
	add a,b			;00b1	80 	. 
	nop			;00b2	00 	. 
	nop			;00b3	00 	. 
	nop			;00b4	00 	. 
	nop			;00b5	00 	. 
	nop			;00b6	00 	. 
	nop			;00b7	00 	. 
	nop			;00b8	00 	. 
	nop			;00b9	00 	. 
	nop			;00ba	00 	. 
	nop			;00bb	00 	. 
	nop			;00bc	00 	. 
	nop			;00bd	00 	. 
	nop			;00be	00 	. 
	nop			;00bf	00 	. 
	inc b			;00c0	04 	. 
	rlca			;00c1	07 	. 
	inc b			;00c2	04 	. 
l00c3h:
	inc b			;00c3	04 	. 
	ex af,af'			;00c4	08 	. 
	rrca			;00c5	0f 	. 
	ex af,af'			;00c6	08 	. 
	ex af,af'			;00c7	08 	. 
	djnz l00e9h		;00c8	10 1f 	. . 
	djnz l00dch		;00ca	10 10 	. . 
sub_00cch:
	djnz l00edh		;00cc	10 1f 	. . 
	djnz l00e0h		;00ce	10 10 	. . 
	djnz l00f1h		;00d0	10 1f 	. . 
	djnz l00e4h		;00d2	10 10 	. . 
	ex af,af'			;00d4	08 	. 
	rrca			;00d5	0f 	. 
	ex af,af'			;00d6	08 	. 
	ex af,af'			;00d7	08 	. 
	ld e,01fh		;00d8	1e 1f 	. . 
	ld e,01eh		;00da	1e 1e 	. . 
l00dch:
	ccf			;00dc	3f 	? 
	jr nz,l00ffh		;00dd	20 20 	    
	ccf			;00df	3f 	? 
l00e0h:
	ld (bc),a			;00e0	02 	. 
	jp nz,03c3ch		;00e1	c2 3c 3c 	. < < 
l00e4h:
	nop			;00e4	00 	. 
	call m,sub_0000h		;00e5	fc 00 00 	. . . 
	nop			;00e8	00 	. 
l00e9h:
	cp 000h		;00e9	fe 00 	. . 
	nop			;00eb	00 	. 
	nop			;00ec	00 	. 
l00edh:
	ld a,0c0h		;00ed	3e c0 	> . 
	ret nz			;00ef	c0 	. 
sub_00f0h:
	nop			;00f0	00 	. 
l00f1h:
	sbc a,021h		;00f1	de 21 	. ! 
	ld hl,0ee00h		;00f3	21 00 ee 	! . . 
	ld de,l0010h+1		;00f6	11 11 00 	. . . 
	xor 011h		;00f9	ee 11 	. . 
	ld de,0c300h		;00fb	11 00 c3 	. . . 
	inc a			;00fe	3c 	< 
l00ffh:
	ccf			;00ff	3f 	? 
l0100h:
	nop			;0100	00 	. 
l0101h:
	nop			;0101	00 	. 
	nop			;0102	00 	. 
	nop			;0103	00 	. 
	nop			;0104	00 	. 
	nop			;0105	00 	. 
	nop			;0106	00 	. 
l0107h:
	nop			;0107	00 	. 
	nop			;0108	00 	. 
	nop			;0109	00 	. 
	nop			;010a	00 	. 
	nop			;010b	00 	. 
	nop			;010c	00 	. 
	nop			;010d	00 	. 
	nop			;010e	00 	. 
l010fh:
	nop			;010f	00 	. 
	nop			;0110	00 	. 
	add a,b			;0111	80 	. 
	nop			;0112	00 	. 
	nop			;0113	00 	. 
	nop			;0114	00 	. 
	add a,b			;0115	80 	. 
	nop			;0116	00 	. 
	nop			;0117	00 	. 
	nop			;0118	00 	. 
	add a,b			;0119	80 	. 
	nop			;011a	00 	. 
	nop			;011b	00 	. 
	nop			;011c	00 	. 
	nop			;011d	00 	. 
	nop			;011e	00 	. 
	nop			;011f	00 	. 
	rra			;0120	1f 	. 
	djnz $+18		;0121	10 10 	. . 
	rra			;0123	1f 	. 
	dec c			;0124	0d 	. 
	ex af,af'			;0125	08 	. 
	ld a,(bc)			;0126	0a 	. 
	rrca			;0127	0f 	. 
l0128h:
	ex af,af'			;0128	08 	. 
	add hl,bc			;0129	09 	. 
	ld c,00eh		;012a	0e 0e 	. . 
l012ch:
	ex af,af'			;012c	08 	. 
	add hl,bc			;012d	09 	. 
	ld c,00eh		;012e	0e 0e 	. . 
l0130h:
	inc b			;0130	04 	. 
	dec b			;0131	05 	. 
	ld b,006h		;0132	06 06 	. . 
l0134h:
	inc bc			;0134	03 	. 
	inc bc			;0135	03 	. 
	inc bc			;0136	03 	. 
	inc bc			;0137	03 	. 
l0138h:
	nop			;0138	00 	. 
	nop			;0139	00 	. 
	nop			;013a	00 	. 
l013bh:
	nop			;013b	00 	. 
	nop			;013c	00 	. 
l013dh:
	nop			;013d	00 	. 
	nop			;013e	00 	. 
l013fh:
	nop			;013f	00 	. 
	nop			;0140	00 	. 
	rst 38h			;0141	ff 	. 
	nop			;0142	00 	. 
	rst 38h			;0143	ff 	. 
	ret po			;0144	e0 	. 
	rla			;0145	17 	. 
	ex af,af'			;0146	08 	. 
	ld sp,hl			;0147	f9 	. 
	ret po			;0148	e0 	. 
	rla			;0149	17 	. 
	ex af,af'			;014a	08 	. 
	ret m			;014b	f8 	. 
	nop			;014c	00 	. 
	rst 10h			;014d	d7 	. 
	jr z,l0188h		;014e	28 38 	( 8 
	ld d,b			;0150	50 	P 
	rst 10h			;0151	d7 	. 
	ld e,b			;0152	58 	X 
	ld e,b			;0153	58 	X 
	sub b			;0154	90 	. 
	sub e			;0155	93 	. 
	sbc a,h			;0156	9c 	. 
	sbc a,h			;0157	9c 	. 
l0158h:
	ex af,af'			;0158	08 	. 
	ex af,af'			;0159	08 	. 
	rrca			;015a	0f 	. 
	rrca			;015b	0f 	. 
l015ch:
	rlca			;015c	07 	. 
	rlca			;015d	07 	. 
	rlca			;015e	07 	. 
	rlca			;015f	07 	. 
	nop			;0160	00 	. 
	nop			;0161	00 	. 
	nop			;0162	00 	. 
	nop			;0163	00 	. 
	nop			;0164	00 	. 
	nop			;0165	00 	. 
	nop			;0166	00 	. 
	nop			;0167	00 	. 
	nop			;0168	00 	. 
	nop			;0169	00 	. 
	nop			;016a	00 	. 
	nop			;016b	00 	. 
	nop			;016c	00 	. 
	nop			;016d	00 	. 
	nop			;016e	00 	. 
l016fh:
	nop			;016f	00 	. 
	nop			;0170	00 	. 
	nop			;0171	00 	. 
	nop			;0172	00 	. 
	nop			;0173	00 	. 
	nop			;0174	00 	. 
	add a,b			;0175	80 	. 
	nop			;0176	00 	. 
	nop			;0177	00 	. 
	nop			;0178	00 	. 
	add a,b			;0179	80 	. 
	nop			;017a	00 	. 
	nop			;017b	00 	. 
	nop			;017c	00 	. 
	nop			;017d	00 	. 
	nop			;017e	00 	. 
l017fh:
	nop			;017f	00 	. 
	inc b			;0180	04 	. 
	rlca			;0181	07 	. 
	inc b			;0182	04 	. 
	inc b			;0183	04 	. 
	ex af,af'			;0184	08 	. 
	rrca			;0185	0f 	. 
	ex af,af'			;0186	08 	. 
	ex af,af'			;0187	08 	. 
l0188h:
	djnz l01a9h		;0188	10 1f 	. . 
	djnz l019ch		;018a	10 10 	. . 
	djnz l01adh		;018c	10 1f 	. . 
	djnz l01a0h		;018e	10 10 	. . 
	djnz l01b1h		;0190	10 1f 	. . 
	djnz l01a4h		;0192	10 10 	. . 
	ex af,af'			;0194	08 	. 
	rrca			;0195	0f 	. 
	ex af,af'			;0196	08 	. 
	ex af,af'			;0197	08 	. 
	ld b,007h		;0198	06 07 	. . 
	ld b,006h		;019a	06 06 	. . 
l019ch:
	rra			;019c	1f 	. 
	inc e			;019d	1c 	. 
	inc e			;019e	1c 	. 
	rra			;019f	1f 	. 
l01a0h:
	ld (bc),a			;01a0	02 	. 
	jp nz,03c3ch		;01a1	c2 3c 3c 	. < < 
l01a4h:
	nop			;01a4	00 	. 
	call m,sub_0000h		;01a5	fc 00 00 	. . . 
	nop			;01a8	00 	. 
l01a9h:
	ld a,(hl)			;01a9	7e 	~ 
	add a,b			;01aa	80 	. 
	add a,b			;01ab	80 	. 
	nop			;01ac	00 	. 
l01adh:
	ccf			;01ad	3f 	? 
	ret nz			;01ae	c0 	. 
	ret nz			;01af	c0 	. 
	nop			;01b0	00 	. 
l01b1h:
	sbc a,021h		;01b1	de 21 	. ! 
	ld hl,0e200h		;01b3	21 00 e2 	! . . 
	dec e			;01b6	1d 	. 
	dec e			;01b7	1d 	. 
	nop			;01b8	00 	. 
	cp (hl)			;01b9	be 	. 
	ld b,c			;01ba	41 	A 
	ld b,e			;01bb	43 	C 
	add a,b			;01bc	80 	. 
	ld a,a			;01bd	7f 	 
	nop			;01be	00 	. 
	add a,c			;01bf	81 	. 
	nop			;01c0	00 	. 
	nop			;01c1	00 	. 
	nop			;01c2	00 	. 
	nop			;01c3	00 	. 
	nop			;01c4	00 	. 
	nop			;01c5	00 	. 
	nop			;01c6	00 	. 
	nop			;01c7	00 	. 
	nop			;01c8	00 	. 
	nop			;01c9	00 	. 
	nop			;01ca	00 	. 
	nop			;01cb	00 	. 
	nop			;01cc	00 	. 
	add a,b			;01cd	80 	. 
	nop			;01ce	00 	. 
	nop			;01cf	00 	. 
	nop			;01d0	00 	. 
	add a,b			;01d1	80 	. 
	nop			;01d2	00 	. 
	nop			;01d3	00 	. 
	nop			;01d4	00 	. 
	add a,b			;01d5	80 	. 
	nop			;01d6	00 	. 
	nop			;01d7	00 	. 
	nop			;01d8	00 	. 
	add a,b			;01d9	80 	. 
	nop			;01da	00 	. 
	nop			;01db	00 	. 
	nop			;01dc	00 	. 
	nop			;01dd	00 	. 
	nop			;01de	00 	. 
	nop			;01df	00 	. 
	ld hl,l3e20h		;01e0	21 20 3e 	!   > 
	ccf			;01e3	3f 	? 
	jr nz,l0206h		;01e4	20 20 	    
	ccf			;01e6	3f 	? 
	ccf			;01e7	3f 	? 
	jr nz,$+49		;01e8	20 2f 	  / 
	jr nc,l021ch		;01ea	30 30 	0 0 
	inc hl			;01ec	23 	# 
	cpl			;01ed	2f 	/ 
	inc sp			;01ee	33 	3 
	inc sp			;01ef	33 	3 
	inc h			;01f0	24 	$ 
	inc l			;01f1	2c 	, 
	inc (hl)			;01f2	34 	4 
	inc (hl)			;01f3	34 	4 
l01f4h:
	jr l020eh		;01f4	18 18 	. . 
	jr l0210h		;01f6	18 18 	. . 
	nop			;01f8	00 	. 
	nop			;01f9	00 	. 
	nop			;01fa	00 	. 
	nop			;01fb	00 	. 
	nop			;01fc	00 	. 
	nop			;01fd	00 	. 
	nop			;01fe	00 	. 
	nop			;01ff	00 	. 
l0200h:
	ret nz			;0200	c0 	. 
l0201h:
	rrca			;0201	0f 	. 
l0202h:
	jr nc,l01f4h		;0202	30 f0 	0 . 
	ret p			;0204	f0 	. 
	inc hl			;0205	23 	# 
l0206h:
	inc l			;0206	2c 	, 
	call m,0b9f8h		;0207	fc f8 b9 	. . . 
	cp (hl)			;020a	be 	. 
	cp 044h		;020b	fe 44 	. D 
	ld b,h			;020d	44 	D 
l020eh:
	ld b,a			;020e	47 	G 
	ld b,a			;020f	47 	G 
l0210h:
	ld (bc),a			;0210	02 	. 
	ld (bc),a			;0211	02 	. 
	inc bc			;0212	03 	. 
	inc bc			;0213	03 	. 
	ld bc,l0101h		;0214	01 01 01 	. . . 
	ld bc,sub_0000h		;0217	01 00 00 	. . . 
	nop			;021a	00 	. 
	nop			;021b	00 	. 
l021ch:
	nop			;021c	00 	. 
	nop			;021d	00 	. 
	nop			;021e	00 	. 
l021fh:
	nop			;021f	00 	. 
	nop			;0220	00 	. 
	ld h,b			;0221	60 	` 
	nop			;0222	00 	. 
	nop			;0223	00 	. 
	nop			;0224	00 	. 
	ret p			;0225	f0 	. 
	nop			;0226	00 	. 
	nop			;0227	00 	. 
	nop			;0228	00 	. 
	ret p			;0229	f0 	. 
	nop			;022a	00 	. 
	nop			;022b	00 	. 
l022ch:
	nop			;022c	00 	. 
	ld h,b			;022d	60 	` 
l022eh:
	add a,b			;022e	80 	. 
l022fh:
	add a,b			;022f	80 	. 
l0230h:
	jr nz,l0252h		;0230	20 20 	    
	ret po			;0232	e0 	. 
	ret po			;0233	e0 	. 
	ret nz			;0234	c0 	. 
	ret nz			;0235	c0 	. 
	ret nz			;0236	c0 	. 
	ret nz			;0237	c0 	. 
sub_0238h:
	nop			;0238	00 	. 
	nop			;0239	00 	. 
	nop			;023a	00 	. 
	nop			;023b	00 	. 
l023ch:
	nop			;023c	00 	. 
	nop			;023d	00 	. 
	nop			;023e	00 	. 
	nop			;023f	00 	. 
	inc b			;0240	04 	. 
	rlca			;0241	07 	. 
	inc b			;0242	04 	. 
	inc b			;0243	04 	. 
l0244h:
	ex af,af'			;0244	08 	. 
	rrca			;0245	0f 	. 
	ex af,af'			;0246	08 	. 
	ex af,af'			;0247	08 	. 
	djnz l0269h		;0248	10 1f 	. . 
	djnz l025ch		;024a	10 10 	. . 
	djnz l026dh		;024c	10 1f 	. . 
	djnz l0260h		;024e	10 10 	. . 
l0250h:
	djnz l0271h		;0250	10 1f 	. . 
l0252h:
	djnz l0264h		;0252	10 10 	. . 
	ex af,af'			;0254	08 	. 
	rrca			;0255	0f 	. 
	ex af,af'			;0256	08 	. 
	ex af,af'			;0257	08 	. 
	ld b,007h		;0258	06 07 	. . 
	ld b,006h		;025a	06 06 	. . 
l025ch:
	rlca			;025c	07 	. 
	inc b			;025d	04 	. 
	inc b			;025e	04 	. 
	rlca			;025f	07 	. 
l0260h:
	ld (bc),a			;0260	02 	. 
	jp nz,03c3ch		;0261	c2 3c 3c 	. < < 
l0264h:
	nop			;0264	00 	. 
	cp 000h		;0265	fe 00 	. . 
	nop			;0267	00 	. 
	nop			;0268	00 	. 
l0269h:
	ld a,a			;0269	7f 	 
	add a,b			;026a	80 	. 
	add a,b			;026b	80 	. 
	nop			;026c	00 	. 
l026dh:
	ld a,0c1h		;026d	3e c1 	> . 
	pop bc			;026f	c1 	. 
	nop			;0270	00 	. 
l0271h:
	sbc a,021h		;0271	de 21 	. ! 
	ld hl,0e200h		;0273	21 00 e2 	! . . 
	dec e			;0276	1d 	. 
	dec e			;0277	1d 	. 
	jr l0201h		;0278	18 87 	. . 
	ld h,b			;027a	60 	` 
	ld a,a			;027b	7f 	 
	sbc a,h			;027c	9c 	. 
	ld h,e			;027d	63 	c 
	nop			;027e	00 	. 
	sbc a,a			;027f	9f 	. 
	nop			;0280	00 	. 
	nop			;0281	00 	. 
	nop			;0282	00 	. 
	nop			;0283	00 	. 
	nop			;0284	00 	. 
	nop			;0285	00 	. 
	nop			;0286	00 	. 
	nop			;0287	00 	. 
	nop			;0288	00 	. 
	nop			;0289	00 	. 
	nop			;028a	00 	. 
	nop			;028b	00 	. 
	nop			;028c	00 	. 
	add a,b			;028d	80 	. 
	nop			;028e	00 	. 
	nop			;028f	00 	. 
	nop			;0290	00 	. 
	add a,b			;0291	80 	. 
	nop			;0292	00 	. 
l0293h:
	nop			;0293	00 	. 
	nop			;0294	00 	. 
	add a,b			;0295	80 	. 
	nop			;0296	00 	. 
l0297h:
	nop			;0297	00 	. 
	nop			;0298	00 	. 
	nop			;0299	00 	. 
	nop			;029a	00 	. 
	nop			;029b	00 	. 
	nop			;029c	00 	. 
	nop			;029d	00 	. 
	nop			;029e	00 	. 
	nop			;029f	00 	. 
	ld c,008h		;02a0	0e 08 	. . 
	add hl,bc			;02a2	09 	. 
	rrca			;02a3	0f 	. 
	ld e,010h		;02a4	1e 10 	. . 
	ld de,l0e1fh		;02a6	11 1f 0e 	. . . 
	ld c,00fh		;02a9	0e 0f 	. . 
	rrca			;02ab	0f 	. 
	ld bc,l0101h		;02ac	01 01 01 	. . . 
	ld bc,l0101h		;02af	01 01 01 	. . . 
	ld bc,l0101h		;02b2	01 01 01 	. . . 
	ld bc,l0101h		;02b5	01 01 01 	. . . 
	nop			;02b8	00 	. 
	nop			;02b9	00 	. 
	nop			;02ba	00 	. 
	nop			;02bb	00 	. 
	nop			;02bc	00 	. 
	nop			;02bd	00 	. 
	nop			;02be	00 	. 
	nop			;02bf	00 	. 
	inc c			;02c0	0c 	. 
	di			;02c1	f3 	. 
	nop			;02c2	00 	. 
	rrca			;02c3	0f 	. 
	ld a,(bc)			;02c4	0a 	. 
	ld a,c			;02c5	79 	y 
	adc a,h			;02c6	8c 	. 
	adc a,a			;02c7	8f 	. 
	nop			;02c8	00 	. 
	ld (hl),d			;02c9	72 	r 
	adc a,h			;02ca	8c 	. 
	adc a,h			;02cb	8c 	. 
	nop			;02cc	00 	. 
	ld (hl),h			;02cd	74 	t 
	adc a,b			;02ce	88 	. 
	adc a,b			;02cf	88 	. 
	nop			;02d0	00 	. 
	jr nc,l0293h		;02d1	30 c0 	0 . 
	ret nz			;02d3	c0 	. 
	nop			;02d4	00 	. 
	jr c,l0297h		;02d5	38 c0 	8 . 
	ret nz			;02d7	c0 	. 
	add a,b			;02d8	80 	. 
	sbc a,b			;02d9	98 	. 
	ret po			;02da	e0 	. 
	ret po			;02db	e0 	. 
	ld (hl),b			;02dc	70 	p 
	ld (hl),b			;02dd	70 	p 
	ld (hl),b			;02de	70 	p 
	ld (hl),b			;02df	70 	p 
	nop			;02e0	00 	. 
	nop			;02e1	00 	. 
	nop			;02e2	00 	. 
	nop			;02e3	00 	. 
	nop			;02e4	00 	. 
	nop			;02e5	00 	. 
	nop			;02e6	00 	. 
	nop			;02e7	00 	. 
	nop			;02e8	00 	. 
	nop			;02e9	00 	. 
	nop			;02ea	00 	. 
	nop			;02eb	00 	. 
	nop			;02ec	00 	. 
	nop			;02ed	00 	. 
	nop			;02ee	00 	. 
	nop			;02ef	00 	. 
	nop			;02f0	00 	. 
	nop			;02f1	00 	. 
	nop			;02f2	00 	. 
	nop			;02f3	00 	. 
	nop			;02f4	00 	. 
	nop			;02f5	00 	. 
	nop			;02f6	00 	. 
	nop			;02f7	00 	. 
	nop			;02f8	00 	. 
	nop			;02f9	00 	. 
	nop			;02fa	00 	. 
	nop			;02fb	00 	. 
	nop			;02fc	00 	. 
	nop			;02fd	00 	. 
	nop			;02fe	00 	. 
	nop			;02ff	00 	. 
	ld b,007h		;0300	06 07 	. . 
	ld b,006h		;0302	06 06 	. . 
	inc b			;0304	04 	. 
l0305h:
	rlca			;0305	07 	. 
l0306h:
	inc b			;0306	04 	. 
	inc b			;0307	04 	. 
	ex af,af'			;0308	08 	. 
	rrca			;0309	0f 	. 
	ex af,af'			;030a	08 	. 
	ex af,af'			;030b	08 	. 
	ex af,af'			;030c	08 	. 
	rrca			;030d	0f 	. 
	ex af,af'			;030e	08 	. 
	ex af,af'			;030f	08 	. 
	ex af,af'			;0310	08 	. 
	rrca			;0311	0f 	. 
	ex af,af'			;0312	08 	. 
	ex af,af'			;0313	08 	. 
	jr nc,l0355h		;0314	30 3f 	0 ? 
	jr nc,l0354h		;0316	30 3c 	0 < 
	ld a,h			;0318	7c 	| 
	ld b,e			;0319	43 	C 
	ld b,b			;031a	40 	@ 
	ld a,a			;031b	7f 	 
	ccf			;031c	3f 	? 
	jr nz,l033fh		;031d	20 20 	    
	ccf			;031f	3f 	? 
l0320h:
	ld (bc),a			;0320	02 	. 
	jp nz,03c3ch		;0321	c2 3c 3c 	. < < 
	nop			;0324	00 	. 
	call m,sub_0000h		;0325	fc 00 00 	. . . 
	nop			;0328	00 	. 
	cp (hl)			;0329	be 	. 
	ld b,b			;032a	40 	@ 
	ld b,b			;032b	40 	@ 
l032ch:
	nop			;032c	00 	. 
	sbc a,(hl)			;032d	9e 	. 
	ld h,b			;032e	60 	` 
l032fh:
	ld h,b			;032f	60 	` 
l0330h:
	nop			;0330	00 	. 
	xor 010h		;0331	ee 10 	. . 
	djnz l0335h		;0333	10 00 	. . 
l0335h:
	or 008h		;0335	f6 08 	. . 
	ex af,af'			;0337	08 	. 
	nop			;0338	00 	. 
l0339h:
	rst 30h			;0339	f7 	. 
	ex af,af'			;033a	08 	. 
	ld c,000h		;033b	0e 00 	. . 
	rst 38h			;033d	ff 	. 
	nop			;033e	00 	. 
l033fh:
	sbc a,b			;033f	98 	. 
	nop			;0340	00 	. 
	nop			;0341	00 	. 
	nop			;0342	00 	. 
	nop			;0343	00 	. 
	nop			;0344	00 	. 
	nop			;0345	00 	. 
	nop			;0346	00 	. 
	nop			;0347	00 	. 
	nop			;0348	00 	. 
	nop			;0349	00 	. 
	nop			;034a	00 	. 
	nop			;034b	00 	. 
	nop			;034c	00 	. 
	nop			;034d	00 	. 
	nop			;034e	00 	. 
	nop			;034f	00 	. 
l0350h:
	nop			;0350	00 	. 
	nop			;0351	00 	. 
	nop			;0352	00 	. 
	nop			;0353	00 	. 
l0354h:
	nop			;0354	00 	. 
l0355h:
	nop			;0355	00 	. 
	nop			;0356	00 	. 
	nop			;0357	00 	. 
sub_0358h:
	nop			;0358	00 	. 
	add a,b			;0359	80 	. 
	nop			;035a	00 	. 
	nop			;035b	00 	. 
	nop			;035c	00 	. 
	ret c			;035d	d8 	. 
	nop			;035e	00 	. 
	nop			;035f	00 	. 
	ld a,a			;0360	7f 	 
	ld d,b			;0361	50 	P 
	ld d,b			;0362	50 	P 
	ld a,a			;0363	7f 	 
	cpl			;0364	2f 	/ 
	jr nz,l0397h		;0365	20 30 	  0 
	ccf			;0367	3f 	? 
	ld c,h			;0368	4c 	L 
	ld b,e			;0369	43 	C 
	ld (hl),b			;036a	70 	p 
	ld a,h			;036b	7c 	| 
	ld b,b			;036c	40 	@ 
	ld c,(hl)			;036d	4e 	N 
	ld (hl),b			;036e	70 	p 
	ld (hl),b			;036f	70 	p 
	ld b,b			;0370	40 	@ 
	ld e,h			;0371	5c 	\ 
	ld h,b			;0372	60 	` 
	ld h,b			;0373	60 	` 
	jr nz,l03b2h		;0374	20 3c 	  < 
	jr nz,l0398h		;0376	20 20 	    
	jr l0392h		;0378	18 18 	. . 
	jr l0394h		;037a	18 18 	. . 
	nop			;037c	00 	. 
	nop			;037d	00 	. 
	nop			;037e	00 	. 
	nop			;037f	00 	. 
	add a,b			;0380	80 	. 
	ld a,e			;0381	7b 	{ 
	inc b			;0382	04 	. 
	call m,sub_00f0h		;0383	fc f0 00 	. . . 
	rrca			;0386	0f 	. 
	rst 38h			;0387	ff 	. 
	rst 38h			;0388	ff 	. 
	cp a			;0389	bf 	. 
	cp a			;038a	bf 	. 
	rst 38h			;038b	ff 	. 
	ld b,b			;038c	40 	@ 
	ld b,b			;038d	40 	@ 
	ld b,b			;038e	40 	@ 
	ld b,b			;038f	40 	@ 
	nop			;0390	00 	. 
	nop			;0391	00 	. 
l0392h:
	nop			;0392	00 	. 
	nop			;0393	00 	. 
l0394h:
	nop			;0394	00 	. 
	nop			;0395	00 	. 
	nop			;0396	00 	. 
l0397h:
	nop			;0397	00 	. 
l0398h:
	nop			;0398	00 	. 
	nop			;0399	00 	. 
	nop			;039a	00 	. 
	nop			;039b	00 	. 
	nop			;039c	00 	. 
	nop			;039d	00 	. 
	nop			;039e	00 	. 
	nop			;039f	00 	. 
	nop			;03a0	00 	. 
	call m,sub_0000h		;03a1	fc 00 00 	. . . 
	nop			;03a4	00 	. 
	ld a,h			;03a5	7c 	| 
	add a,b			;03a6	80 	. 
	add a,b			;03a7	80 	. 
	inc b			;03a8	04 	. 
	inc a			;03a9	3c 	< 
	call nz,088c4h		;03aa	c4 c4 88 	. . . 
	adc a,b			;03ad	88 	. 
	ret m			;03ae	f8 	. 
	ret m			;03af	f8 	. 
	ld (hl),b			;03b0	70 	p 
	ld (hl),b			;03b1	70 	p 
l03b2h:
	ld (hl),b			;03b2	70 	p 
	ld (hl),b			;03b3	70 	p 
	nop			;03b4	00 	. 
	nop			;03b5	00 	. 
	nop			;03b6	00 	. 
	nop			;03b7	00 	. 
	nop			;03b8	00 	. 
	nop			;03b9	00 	. 
	nop			;03ba	00 	. 
	nop			;03bb	00 	. 
	nop			;03bc	00 	. 
	nop			;03bd	00 	. 
	nop			;03be	00 	. 
	nop			;03bf	00 	. 
	nop			;03c0	00 	. 
	nop			;03c1	00 	. 
	nop			;03c2	00 	. 
	nop			;03c3	00 	. 
	nop			;03c4	00 	. 
	nop			;03c5	00 	. 
	nop			;03c6	00 	. 
	nop			;03c7	00 	. 
	ld (bc),a			;03c8	02 	. 
	ld (bc),a			;03c9	02 	. 
	nop			;03ca	00 	. 
	nop			;03cb	00 	. 
	ld bc,l0201h		;03cc	01 01 02 	. . . 
	nop			;03cf	00 	. 
	dec b			;03d0	05 	. 
	dec b			;03d1	05 	. 
	ld (bc),a			;03d2	02 	. 
	nop			;03d3	00 	. 
	ld (bc),a			;03d4	02 	. 
	ld (bc),a			;03d5	02 	. 
	ld bc,l0200h		;03d6	01 00 02 	. . . 
	ld (bc),a			;03d9	02 	. 
	inc bc			;03da	03 	. 
	ld (bc),a			;03db	02 	. 
	inc b			;03dc	04 	. 
	inc b			;03dd	04 	. 
	rlca			;03de	07 	. 
	inc b			;03df	04 	. 
	nop			;03e0	00 	. 
	nop			;03e1	00 	. 
	nop			;03e2	00 	. 
	nop			;03e3	00 	. 
	nop			;03e4	00 	. 
	nop			;03e5	00 	. 
	nop			;03e6	00 	. 
	nop			;03e7	00 	. 
	sbc a,h			;03e8	9c 	. 
	sbc a,h			;03e9	9c 	. 
	jr nz,l03ech		;03ea	20 00 	  . 
l03ech:
	rst 38h			;03ec	ff 	. 
	rst 38h			;03ed	ff 	. 
	nop			;03ee	00 	. 
	nop			;03ef	00 	. 
	rst 38h			;03f0	ff 	. 
	rst 38h			;03f1	ff 	. 
	nop			;03f2	00 	. 
	nop			;03f3	00 	. 
	rst 8			;03f4	cf 	. 
	rst 8			;03f5	cf 	. 
	jr nc,l03f8h		;03f6	30 00 	0 . 
l03f8h:
	sbc a,e			;03f8	9b 	. 
	sbc a,e			;03f9	9b 	. 
	ld h,h			;03fa	64 	d 
	nop			;03fb	00 	. 
	cp c			;03fc	b9 	. 
	cp c			;03fd	b9 	. 
	ld b,(hl)			;03fe	46 	F 
sub_03ffh:
	nop			;03ff	00 	. 
l0400h:
	nop			;0400	00 	. 
l0401h:
	nop			;0401	00 	. 
	nop			;0402	00 	. 
	nop			;0403	00 	. 
sub_0404h:
	nop			;0404	00 	. 
	nop			;0405	00 	. 
l0406h:
	nop			;0406	00 	. 
	nop			;0407	00 	. 
	nop			;0408	00 	. 
	nop			;0409	00 	. 
	nop			;040a	00 	. 
	nop			;040b	00 	. 
	nop			;040c	00 	. 
	nop			;040d	00 	. 
	nop			;040e	00 	. 
	nop			;040f	00 	. 
	add a,b			;0410	80 	. 
	add a,b			;0411	80 	. 
	nop			;0412	00 	. 
	nop			;0413	00 	. 
	ret nz			;0414	c0 	. 
	ret nz			;0415	c0 	. 
	nop			;0416	00 	. 
	nop			;0417	00 	. 
	ret nz			;0418	c0 	. 
	ret nz			;0419	c0 	. 
	nop			;041a	00 	. 
	nop			;041b	00 	. 
	ret po			;041c	e0 	. 
	ret po			;041d	e0 	. 
	nop			;041e	00 	. 
	nop			;041f	00 	. 
	dec b			;0420	05 	. 
	dec b			;0421	05 	. 
	ld b,004h		;0422	06 04 	. . 
	dec b			;0424	05 	. 
	dec b			;0425	05 	. 
	ld b,004h		;0426	06 04 	. . 
	inc b			;0428	04 	. 
	inc b			;0429	04 	. 
	rlca			;042a	07 	. 
	inc b			;042b	04 	. 
	inc b			;042c	04 	. 
	inc b			;042d	04 	. 
	rlca			;042e	07 	. 
	inc b			;042f	04 	. 
	ex af,af'			;0430	08 	. 
	ld a,(bc)			;0431	0a 	. 
	dec c			;0432	0d 	. 
	inc c			;0433	0c 	. 
	ex af,af'			;0434	08 	. 
	dec bc			;0435	0b 	. 
	inc c			;0436	0c 	. 
	inc c			;0437	0c 	. 
l0438h:
	ex af,af'			;0438	08 	. 
	dec bc			;0439	0b 	. 
	inc c			;043a	0c 	. 
	inc c			;043b	0c 	. 
sub_043ch:
	ex af,af'			;043c	08 	. 
	dec bc			;043d	0b 	. 
	inc c			;043e	0c 	. 
	inc c			;043f	0c 	. 
	ld a,c			;0440	79 	y 
	ld a,c			;0441	79 	y 
	add a,(hl)			;0442	86 	. 
	ld (bc),a			;0443	02 	. 
	ld d,b			;0444	50 	P 
	ld d,b			;0445	50 	P 
	xor a			;0446	af 	. 
	rrca			;0447	0f 	. 
l0448h:
	ld b,(hl)			;0448	46 	F 
	ld b,c			;0449	41 	A 
	cp b			;044a	b8 	. 
	jr c,l049bh		;044b	38 4e 	8 N 
	ld b,e			;044d	43 	C 
	or d			;044e	b2 	. 
	or d			;044f	b2 	. 
	ld c,(hl)			;0450	4e 	N 
	ld b,e			;0451	43 	C 
	or d			;0452	b2 	. 
	ld (08f80h),a		;0453	32 80 8f 	2 . . 
	ld (hl),b			;0456	70 	p 
	jr nc,l047ah		;0457	30 21 	0 ! 
	ld h,0d8h		;0459	26 d8 	& . 
	jr l047eh		;045b	18 21 	. ! 
	and (hl)			;045d	a6 	. 
l045eh:
	ld e,c			;045e	59 	Y 
	jr l04c1h		;045f	18 60 	. ` 
	ld h,b			;0461	60 	` 
	add a,b			;0462	80 	. 
	add a,b			;0463	80 	. 
	jr nz,l0406h		;0464	20 a0 	  . 
	ld b,b			;0466	40 	@ 
	ld b,b			;0467	40 	@ 
	add a,b			;0468	80 	. 
	ld b,b			;0469	40 	@ 
	nop			;046a	00 	. 
	nop			;046b	00 	. 
	ret nz			;046c	c0 	. 
	add a,b			;046d	80 	. 
	add a,b			;046e	80 	. 
	add a,b			;046f	80 	. 
	ret nz			;0470	c0 	. 
	add a,b			;0471	80 	. 
	add a,b			;0472	80 	. 
	add a,b			;0473	80 	. 
	nop			;0474	00 	. 
	ret nz			;0475	c0 	. 
	nop			;0476	00 	. 
	nop			;0477	00 	. 
	nop			;0478	00 	. 
	ret nz			;0479	c0 	. 
l047ah:
	nop			;047a	00 	. 
	nop			;047b	00 	. 
	nop			;047c	00 	. 
	ret nz			;047d	c0 	. 
l047eh:
	nop			;047e	00 	. 
	nop			;047f	00 	. 
	inc b			;0480	04 	. 
	dec b			;0481	05 	. 
	ld b,006h		;0482	06 06 	. . 
	inc b			;0484	04 	. 
	dec b			;0485	05 	. 
	ld b,006h		;0486	06 06 	. . 
	ld (bc),a			;0488	02 	. 
	ld (bc),a			;0489	02 	. 
	inc bc			;048a	03 	. 
	inc bc			;048b	03 	. 
sub_048ch:
	ld bc,l0101h		;048c	01 01 01 	. . . 
	ld bc,sub_0000h		;048f	01 00 00 	. . . 
	nop			;0492	00 	. 
	nop			;0493	00 	. 
	nop			;0494	00 	. 
	nop			;0495	00 	. 
	nop			;0496	00 	. 
	nop			;0497	00 	. 
	nop			;0498	00 	. 
	nop			;0499	00 	. 
	nop			;049a	00 	. 
l049bh:
	nop			;049b	00 	. 
sub_049ch:
	nop			;049c	00 	. 
	nop			;049d	00 	. 
	nop			;049e	00 	. 
	nop			;049f	00 	. 
	nop			;04a0	00 	. 
	di			;04a1	f3 	. 
	inc c			;04a2	0c 	. 
	inc c			;04a3	0c 	. 
	nop			;04a4	00 	. 
	call m,00303h		;04a5	fc 03 03 	. . . 
	nop			;04a8	00 	. 
	rst 18h			;04a9	df 	. 
	jr nz,l04cch		;04aa	20 20 	    
	nop			;04ac	00 	. 
	rrca			;04ad	0f 	. 
	ret p			;04ae	f0 	. 
	ret p			;04af	f0 	. 
	ret nz			;04b0	c0 	. 
	rst 0			;04b1	c7 	. 
	ret m			;04b2	f8 	. 
	ret m			;04b3	f8 	. 
	jr nz,$+35		;04b4	20 21 	  ! 
	ld a,03eh		;04b6	3e 3e 	> > 
	ld a,a			;04b8	7f 	 
	ld b,b			;04b9	40 	@ 
	ld b,b			;04ba	40 	@ 
	ld a,a			;04bb	7f 	 
	rst 38h			;04bc	ff 	. 
	add a,b			;04bd	80 	. 
	add a,b			;04be	80 	. 
	rst 38h			;04bf	ff 	. 
	nop			;04c0	00 	. 
l04c1h:
	add a,b			;04c1	80 	. 
sub_04c2h:
	nop			;04c2	00 	. 
	nop			;04c3	00 	. 
	nop			;04c4	00 	. 
	ld b,b			;04c5	40 	@ 
l04c6h:
	add a,b			;04c6	80 	. 
	add a,b			;04c7	80 	. 
	nop			;04c8	00 	. 
	or b			;04c9	b0 	. 
	ld b,b			;04ca	40 	@ 
	ld b,b			;04cb	40 	@ 
l04cch:
	nop			;04cc	00 	. 
	call c,sub_2020h		;04cd	dc 20 20 	.     
l04d0h:
	nop			;04d0	00 	. 
	ret c			;04d1	d8 	. 
	jr nz,l04f4h		;04d2	20 20 	    
	djnz l04c6h		;04d4	10 f0 	. . 
	djnz l0548h		;04d6	10 70 	. p 
	add a,b			;04d8	80 	. 
	ld a,h			;04d9	7c 	| 
	nop			;04da	00 	. 
	ret po			;04db	e0 	. 
	add a,b			;04dc	80 	. 
	ld l,(hl)			;04dd	6e 	n 
	djnz l04d0h		;04de	10 f0 	. . 
	nop			;04e0	00 	. 
	nop			;04e1	00 	. 
	nop			;04e2	00 	. 
	nop			;04e3	00 	. 
	nop			;04e4	00 	. 
	nop			;04e5	00 	. 
	nop			;04e6	00 	. 
	nop			;04e7	00 	. 
	nop			;04e8	00 	. 
	nop			;04e9	00 	. 
	nop			;04ea	00 	. 
	nop			;04eb	00 	. 
	nop			;04ec	00 	. 
	nop			;04ed	00 	. 
	nop			;04ee	00 	. 
	nop			;04ef	00 	. 
	nop			;04f0	00 	. 
	nop			;04f1	00 	. 
	nop			;04f2	00 	. 
	nop			;04f3	00 	. 
l04f4h:
	nop			;04f4	00 	. 
	nop			;04f5	00 	. 
	nop			;04f6	00 	. 
	nop			;04f7	00 	. 
	nop			;04f8	00 	. 
	nop			;04f9	00 	. 
	nop			;04fa	00 	. 
	nop			;04fb	00 	. 
sub_04fch:
	nop			;04fc	00 	. 
	nop			;04fd	00 	. 
	nop			;04fe	00 	. 
	nop			;04ff	00 	. 
l0500h:
	di			;0500	f3 	. 
l0501h:
	adc a,h			;0501	8c 	. 
l0502h:
	add a,b			;0502	80 	. 
	di			;0503	f3 	. 
l0504h:
	pop hl			;0504	e1 	. 
sub_0505h:
	xor (hl)			;0505	ae 	. 
	or b			;0506	b0 	. 
	pop af			;0507	f1 	. 
	ld h,c			;0508	61 	a 
	ld l,a			;0509	6f 	o 
	ld (hl),c			;050a	71 	q 
	ld (hl),c			;050b	71 	q 
	ld b,b			;050c	40 	@ 
l050dh:
	ld e,(hl)			;050d	5e 	^ 
	ld h,b			;050e	60 	` 
	ld h,b			;050f	60 	` 
	add a,b			;0510	80 	. 
	sbc a,h			;0511	9c 	. 
	ret po			;0512	e0 	. 
	ret po			;0513	e0 	. 
	add a,b			;0514	80 	. 
	sbc a,(hl)			;0515	9e 	. 
	ret po			;0516	e0 	. 
	ret po			;0517	e0 	. 
	ld b,b			;0518	40 	@ 
	ld b,(hl)			;0519	46 	F 
	ld a,b			;051a	78 	x 
	ld a,b			;051b	78 	x 
	inc a			;051c	3c 	< 
	inc a			;051d	3c 	< 
	inc a			;051e	3c 	< 
	inc a			;051f	3c 	< 
l0520h:
	nop			;0520	00 	. 
	adc a,030h		;0521	ce 30 	. 0 
	ret p			;0523	f0 	. 
	jr nz,l050dh		;0524	20 e7 	  . 
	jr c,l0520h		;0526	38 f8 	8 . 
	sub b			;0528	90 	. 
	ld d,a			;0529	57 	W 
	jr l0504h		;052a	18 d8 	. . 
	adc a,(hl)			;052c	8e 	. 
	adc a,(hl)			;052d	8e 	. 
	adc a,(hl)			;052e	8e 	. 
	adc a,(hl)			;052f	8e 	. 
	nop			;0530	00 	. 
	nop			;0531	00 	. 
	nop			;0532	00 	. 
	nop			;0533	00 	. 
	nop			;0534	00 	. 
	nop			;0535	00 	. 
	nop			;0536	00 	. 
	nop			;0537	00 	. 
l0538h:
	nop			;0538	00 	. 
	nop			;0539	00 	. 
	nop			;053a	00 	. 
	nop			;053b	00 	. 
	nop			;053c	00 	. 
l053dh:
	nop			;053d	00 	. 
	nop			;053e	00 	. 
	nop			;053f	00 	. 
	nop			;0540	00 	. 
	nop			;0541	00 	. 
	nop			;0542	00 	. 
	nop			;0543	00 	. 
	nop			;0544	00 	. 
	nop			;0545	00 	. 
	nop			;0546	00 	. 
	nop			;0547	00 	. 
l0548h:
	nop			;0548	00 	. 
	nop			;0549	00 	. 
	nop			;054a	00 	. 
	nop			;054b	00 	. 
	nop			;054c	00 	. 
	nop			;054d	00 	. 
	nop			;054e	00 	. 
	nop			;054f	00 	. 
	inc bc			;0550	03 	. 
	inc bc			;0551	03 	. 
	nop			;0552	00 	. 
	nop			;0553	00 	. 
l0554h:
	ld bc,sub_0000h+1		;0554	01 01 00 	. . . 
	nop			;0557	00 	. 
	inc bc			;0558	03 	. 
	inc bc			;0559	03 	. 
	nop			;055a	00 	. 
	nop			;055b	00 	. 
	ld bc,l0101h		;055c	01 01 01 	. . . 
	ld bc,sub_0000h		;055f	01 00 00 	. . . 
	nop			;0562	00 	. 
	nop			;0563	00 	. 
	nop			;0564	00 	. 
	nop			;0565	00 	. 
	nop			;0566	00 	. 
	nop			;0567	00 	. 
	nop			;0568	00 	. 
	nop			;0569	00 	. 
	nop			;056a	00 	. 
	nop			;056b	00 	. 
	ld b,b			;056c	40 	@ 
	ld b,b			;056d	40 	@ 
	nop			;056e	00 	. 
	nop			;056f	00 	. 
	ld c,(hl)			;0570	4e 	N 
	ld c,(hl)			;0571	4e 	N 
	nop			;0572	00 	. 
	nop			;0573	00 	. 
	and a			;0574	a7 	. 
	and a			;0575	a7 	. 
	ld e,b			;0576	58 	X 
	nop			;0577	00 	. 
	ld hl,0de21h		;0578	21 21 de 	! ! . 
	nop			;057b	00 	. 
	ld b,c			;057c	41 	A 
	ld b,c			;057d	41 	A 
	cp (hl)			;057e	be 	. 
	nop			;057f	00 	. 
	nop			;0580	00 	. 
	nop			;0581	00 	. 
	nop			;0582	00 	. 
	nop			;0583	00 	. 
	nop			;0584	00 	. 
	nop			;0585	00 	. 
	nop			;0586	00 	. 
	nop			;0587	00 	. 
	nop			;0588	00 	. 
	nop			;0589	00 	. 
	nop			;058a	00 	. 
	nop			;058b	00 	. 
	nop			;058c	00 	. 
	nop			;058d	00 	. 
	nop			;058e	00 	. 
	nop			;058f	00 	. 
	nop			;0590	00 	. 
	nop			;0591	00 	. 
	nop			;0592	00 	. 
	nop			;0593	00 	. 
	ret nz			;0594	c0 	. 
	ret nz			;0595	c0 	. 
	nop			;0596	00 	. 
	nop			;0597	00 	. 
	ret po			;0598	e0 	. 
	ret po			;0599	e0 	. 
	nop			;059a	00 	. 
	nop			;059b	00 	. 
	ret p			;059c	f0 	. 
	ret p			;059d	f0 	. 
	nop			;059e	00 	. 
	nop			;059f	00 	. 
	ld (bc),a			;05a0	02 	. 
	ld (bc),a			;05a1	02 	. 
	inc bc			;05a2	03 	. 
	ld (bc),a			;05a3	02 	. 
	ld (bc),a			;05a4	02 	. 
	ld (bc),a			;05a5	02 	. 
	inc bc			;05a6	03 	. 
	ld (bc),a			;05a7	02 	. 
	ld (bc),a			;05a8	02 	. 
	ld (bc),a			;05a9	02 	. 
	inc bc			;05aa	03 	. 
	ld (bc),a			;05ab	02 	. 
	ld (bc),a			;05ac	02 	. 
	ld (bc),a			;05ad	02 	. 
	inc bc			;05ae	03 	. 
	ld (bc),a			;05af	02 	. 
	ld (bc),a			;05b0	02 	. 
	ld (bc),a			;05b1	02 	. 
	inc bc			;05b2	03 	. 
	ld (bc),a			;05b3	02 	. 
	ld (bc),a			;05b4	02 	. 
	ld (bc),a			;05b5	02 	. 
	inc bc			;05b6	03 	. 
	ld (bc),a			;05b7	02 	. 
	ld bc,l0101h		;05b8	01 01 01 	. . . 
	ld bc,l0101h		;05bb	01 01 01 	. . . 
	ld bc,sub_0000h+1		;05be	01 01 00 	. . . 
	nop			;05c1	00 	. 
	rst 38h			;05c2	ff 	. 
	nop			;05c3	00 	. 
	nop			;05c4	00 	. 
	nop			;05c5	00 	. 
	rst 38h			;05c6	ff 	. 
	nop			;05c7	00 	. 
	nop			;05c8	00 	. 
	nop			;05c9	00 	. 
	rst 38h			;05ca	ff 	. 
	nop			;05cb	00 	. 
	nop			;05cc	00 	. 
	nop			;05cd	00 	. 
	rst 38h			;05ce	ff 	. 
	nop			;05cf	00 	. 
	nop			;05d0	00 	. 
	nop			;05d1	00 	. 
	rst 38h			;05d2	ff 	. 
	nop			;05d3	00 	. 
	nop			;05d4	00 	. 
	nop			;05d5	00 	. 
	rst 38h			;05d6	ff 	. 
	nop			;05d7	00 	. 
	nop			;05d8	00 	. 
	nop			;05d9	00 	. 
	rst 38h			;05da	ff 	. 
	nop			;05db	00 	. 
	nop			;05dc	00 	. 
	nop			;05dd	00 	. 
	rst 38h			;05de	ff 	. 
	ex af,af'			;05df	08 	. 
	ret p			;05e0	f0 	. 
	ret p			;05e1	f0 	. 
	nop			;05e2	00 	. 
	nop			;05e3	00 	. 
	ret m			;05e4	f8 	. 
	ret m			;05e5	f8 	. 
	nop			;05e6	00 	. 
	nop			;05e7	00 	. 
	cp b			;05e8	b8 	. 
	cp b			;05e9	b8 	. 
	ld b,b			;05ea	40 	@ 
	nop			;05eb	00 	. 
	or b			;05ec	b0 	. 
	or d			;05ed	b2 	. 
	ld c,b			;05ee	48 	H 
	ex af,af'			;05ef	08 	. 
	nop			;05f0	00 	. 
	ld c,0f0h		;05f1	0e f0 	. . 
	jr nc,l05f5h		;05f3	30 00 	0 . 
l05f5h:
	ld a,0c0h		;05f5	3e c0 	> . 
	ld b,b			;05f7	40 	@ 
	nop			;05f8	00 	. 
	ccf			;05f9	3f 	? 
l05fah:
	ret nz			;05fa	c0 	. 
	nop			;05fb	00 	. 
	ld (bc),a			;05fc	02 	. 
	cp 002h		;05fd	fe 02 	. . 
	ld (bc),a			;05ff	02 	. 
	ld bc,l0101h		;0600	01 01 01 	. . . 
	ld bc,sub_0000h		;0603	01 00 00 	. . . 
l0606h:
	nop			;0606	00 	. 
	nop			;0607	00 	. 
	nop			;0608	00 	. 
	ld bc,sub_0000h		;0609	01 00 00 	. . . 
	nop			;060c	00 	. 
	ld (bc),a			;060d	02 	. 
	ld bc,l0101h		;060e	01 01 01 	. . . 
	nop			;0611	00 	. 
	ld (bc),a			;0612	02 	. 
	inc bc			;0613	03 	. 
	rlca			;0614	07 	. 
	inc b			;0615	04 	. 
	inc b			;0616	04 	. 
	rlca			;0617	07 	. 
	add hl,de			;0618	19 	. 
	jr $+32		;0619	18 1e 	. . 
	rra			;061b	1f 	. 
	ld hl,l3e20h		;061c	21 20 3e 	!   > 
	ccf			;061f	3f 	? 
	nop			;0620	00 	. 
	rlca			;0621	07 	. 
	ret m			;0622	f8 	. 
	sbc a,b			;0623	98 	. 
	nop			;0624	00 	. 
	inc bc			;0625	03 	. 
	call m,000fch		;0626	fc fc 00 	. . . 
	ld bc,0fefeh		;0629	01 fe fe 	. . . 
	ret nz			;062c	c0 	. 
	ld bc,0fe3eh		;062d	01 3e fe 	. > . 
	ret m			;0630	f8 	. 
	ld bc,0fe06h		;0631	01 06 fe 	. . . 
	ret m			;0634	f8 	. 
	rlca			;0635	07 	. 
l0636h:
	nop			;0636	00 	. 
	rst 38h			;0637	ff 	. 
l0638h:
	call m,sub_0003h		;0638	fc 03 00 	. . . 
	rst 38h			;063b	ff 	. 
	ld a,h			;063c	7c 	| 
	add a,e			;063d	83 	. 
	nop			;063e	00 	. 
	ld a,a			;063f	7f 	 
	inc c			;0640	0c 	. 
	call m,sub_0c0ch		;0641	fc 0c 0c 	. . . 
	jr nc,l0636h		;0644	30 f0 	0 . 
	jr nc,l0678h		;0646	30 30 	0 0 
l0648h:
	ld b,b			;0648	40 	@ 
	ret nz			;0649	c0 	. 
	ld b,b			;064a	40 	@ 
	ld b,b			;064b	40 	@ 
	nop			;064c	00 	. 
	add a,b			;064d	80 	. 
	nop			;064e	00 	. 
	nop			;064f	00 	. 
l0650h:
	nop			;0650	00 	. 
	add a,b			;0651	80 	. 
	nop			;0652	00 	. 
	nop			;0653	00 	. 
	nop			;0654	00 	. 
	ret nz			;0655	c0 	. 
	nop			;0656	00 	. 
	ret nz			;0657	c0 	. 
	nop			;0658	00 	. 
	ret po			;0659	e0 	. 
	nop			;065a	00 	. 
	ret po			;065b	e0 	. 
	nop			;065c	00 	. 
	ld h,b			;065d	60 	` 
	add a,b			;065e	80 	. 
	ret po			;065f	e0 	. 
	ld b,b			;0660	40 	@ 
	ld b,e			;0661	43 	C 
	ld a,h			;0662	7c 	| 
	ld a,h			;0663	7c 	| 
	ld b,b			;0664	40 	@ 
	ld c,a			;0665	4f 	O 
	ld (hl),b			;0666	70 	p 
	ld (hl),b			;0667	70 	p 
	ld b,e			;0668	43 	C 
	ld c,a			;0669	4f 	O 
	ld (hl),e			;066a	73 	s 
	ld (hl),e			;066b	73 	s 
	inc h			;066c	24 	$ 
	inc a			;066d	3c 	< 
	inc h			;066e	24 	$ 
l066fh:
	inc h			;066f	24 	$ 
	jr l068ah		;0670	18 18 	. . 
	jr l068ch		;0672	18 18 	. . 
	nop			;0674	00 	. 
	nop			;0675	00 	. 
	nop			;0676	00 	. 
l0677h:
	nop			;0677	00 	. 
l0678h:
	nop			;0678	00 	. 
	nop			;0679	00 	. 
	nop			;067a	00 	. 
	nop			;067b	00 	. 
	nop			;067c	00 	. 
	nop			;067d	00 	. 
	nop			;067e	00 	. 
	nop			;067f	00 	. 
	ld a,0c0h		;0680	3e c0 	> . 
	ld bc,07c3fh		;0682	01 3f 7c 	. ? | 
	ret p			;0685	f0 	. 
	ld (hl),e			;0686	73 	s 
	ld a,a			;0687	7f 	 
	adc a,b			;0688	88 	. 
	adc a,b			;0689	88 	. 
l068ah:
	adc a,a			;068a	8f 	. 
	adc a,a			;068b	8f 	. 
l068ch:
	inc b			;068c	04 	. 
	inc b			;068d	04 	. 
	rlca			;068e	07 	. 
	rlca			;068f	07 	. 
	inc b			;0690	04 	. 
	inc b			;0691	04 	. 
	rlca			;0692	07 	. 
	rlca			;0693	07 	. 
	ld (bc),a			;0694	02 	. 
	ld (bc),a			;0695	02 	. 
	inc bc			;0696	03 	. 
	inc bc			;0697	03 	. 
	ld bc,l0101h		;0698	01 01 01 	. . . 
	ld bc,sub_0000h		;069b	01 00 00 	. . . 
	nop			;069e	00 	. 
	nop			;069f	00 	. 
	nop			;06a0	00 	. 
	ret po			;06a1	e0 	. 
	nop			;06a2	00 	. 
	jr nz,l06a5h		;06a3	20 00 	  . 
l06a5h:
	ret nc			;06a5	d0 	. 
	nop			;06a6	00 	. 
	djnz l06a9h		;06a7	10 00 	. . 
l06a9h:
	ret nz			;06a9	c0 	. 
	nop			;06aa	00 	. 
	nop			;06ab	00 	. 
	nop			;06ac	00 	. 
	ld h,b			;06ad	60 	` 
	add a,b			;06ae	80 	. 
	add a,b			;06af	80 	. 
	nop			;06b0	00 	. 
	ld h,b			;06b1	60 	` 
	add a,b			;06b2	80 	. 
	add a,b			;06b3	80 	. 
	nop			;06b4	00 	. 
	jr nz,l0677h		;06b5	20 c0 	  . 
	ret nz			;06b7	c0 	. 
	nop			;06b8	00 	. 
	nop			;06b9	00 	. 
	ret po			;06ba	e0 	. 
	ret po			;06bb	e0 	. 
	ret po			;06bc	e0 	. 
	ret po			;06bd	e0 	. 
	ret po			;06be	e0 	. 
	ret po			;06bf	e0 	. 
	nop			;06c0	00 	. 
	nop			;06c1	00 	. 
	nop			;06c2	00 	. 
	nop			;06c3	00 	. 
	ld (bc),a			;06c4	02 	. 
	ld (bc),a			;06c5	02 	. 
	ld bc,l0500h		;06c6	01 00 05 	. . . 
	dec b			;06c9	05 	. 
	ld (bc),a			;06ca	02 	. 
	nop			;06cb	00 	. 
	ld (bc),a			;06cc	02 	. 
	ld (bc),a			;06cd	02 	. 
	ld bc,l0401h		;06ce	01 01 04 	. . . 
	inc b			;06d1	04 	. 
	rlca			;06d2	07 	. 
	inc b			;06d3	04 	. 
	dec bc			;06d4	0b 	. 
	dec bc			;06d5	0b 	. 
	inc c			;06d6	0c 	. 
	ex af,af'			;06d7	08 	. 
	dec bc			;06d8	0b 	. 
	dec bc			;06d9	0b 	. 
	inc c			;06da	0c 	. 
	ex af,af'			;06db	08 	. 
	ld (de),a			;06dc	12 	. 
	ld (de),a			;06dd	12 	. 
	dec e			;06de	1d 	. 
l06dfh:
	djnz l06e1h		;06df	10 00 	. . 
l06e1h:
	nop			;06e1	00 	. 
	nop			;06e2	00 	. 
l06e3h:
	nop			;06e3	00 	. 
	add a,b			;06e4	80 	. 
	add a,b			;06e5	80 	. 
	nop			;06e6	00 	. 
	nop			;06e7	00 	. 
	inc e			;06e8	1c 	. 
	inc e			;06e9	1c 	. 
	ret po			;06ea	e0 	. 
	nop			;06eb	00 	. 
	ld a,a			;06ec	7f 	 
	ld a,a			;06ed	7f 	 
	add a,b			;06ee	80 	. 
	nop			;06ef	00 	. 
	cp a			;06f0	bf 	. 
	or c			;06f1	b1 	. 
	ld b,b			;06f2	40 	@ 
	nop			;06f3	00 	. 
	rrca			;06f4	0f 	. 
	ex af,af'			;06f5	08 	. 
	ret p			;06f6	f0 	. 
	nop			;06f7	00 	. 
	rra			;06f8	1f 	. 
	rra			;06f9	1f 	. 
	ret po			;06fa	e0 	. 
	nop			;06fb	00 	. 
	dec sp			;06fc	3b 	; 
	dec sp			;06fd	3b 	; 
	call nz,sub_0000h		;06fe	c4 00 00 	. . . 
	nop			;0701	00 	. 
	nop			;0702	00 	. 
	nop			;0703	00 	. 
	nop			;0704	00 	. 
	nop			;0705	00 	. 
	nop			;0706	00 	. 
l0707h:
	nop			;0707	00 	. 
	nop			;0708	00 	. 
	nop			;0709	00 	. 
	nop			;070a	00 	. 
	nop			;070b	00 	. 
	nop			;070c	00 	. 
	nop			;070d	00 	. 
	nop			;070e	00 	. 
l070fh:
	nop			;070f	00 	. 
	add a,b			;0710	80 	. 
	add a,b			;0711	80 	. 
	nop			;0712	00 	. 
	nop			;0713	00 	. 
	ret nz			;0714	c0 	. 
	ret nz			;0715	c0 	. 
	nop			;0716	00 	. 
	nop			;0717	00 	. 
	ret nz			;0718	c0 	. 
l0719h:
	ret nz			;0719	c0 	. 
	nop			;071a	00 	. 
	nop			;071b	00 	. 
	ld h,b			;071c	60 	` 
l071dh:
	ld h,b			;071d	60 	` 
	add a,b			;071e	80 	. 
	nop			;071f	00 	. 
	djnz l0732h		;0720	10 10 	. . 
	rra			;0722	1f 	. 
	djnz $+18		;0723	10 10 	. . 
	djnz l0746h		;0725	10 1f 	. . 
	djnz l0739h		;0727	10 10 	. . 
	djnz $+33		;0729	10 1f 	. . 
	djnz l0745h		;072b	10 18 	. . 
	jr l0746h		;072d	18 17 	. . 
	ld de,l1818h		;072f	11 18 18 	. . . 
l0732h:
	rla			;0732	17 	. 
	ld de,l1c1ch		;0733	11 1c 1c 	. . . 
	inc de			;0736	13 	. 
	djnz l073ah		;0737	10 01 	. . 
l0739h:
	ld a,l			;0739	7d 	} 
l073ah:
	ld (bc),a			;073a	02 	. 
	nop			;073b	00 	. 
	nop			;073c	00 	. 
	cp 001h		;073d	fe 01 	. . 
l073fh:
	nop			;073f	00 	. 
	scf			;0740	37 	7 
	dec (hl)			;0741	35 	5 
	ret z			;0742	c8 	. 
	nop			;0743	00 	. 
	halt			;0744	76 	v 
l0745h:
	ld (hl),e			;0745	73 	s 
l0746h:
	adc a,b			;0746	88 	. 
	adc a,b			;0747	88 	. 
	ret nz			;0748	c0 	. 
	jp l1c3ch		;0749	c3 3c 1c 	. < . 
	add a,(hl)			;074c	86 	. 
	sbc a,c			;074d	99 	. 
	ld h,b			;074e	60 	` 
	jr nz,l06dfh		;074f	20 8e 	  . 
	or c			;0751	b1 	. 
	ld b,b			;0752	40 	@ 
	ld b,b			;0753	40 	@ 
	adc a,(hl)			;0754	8e 	. 
	or e			;0755	b3 	. 
	ld b,d			;0756	42 	B 
	ld b,d			;0757	42 	B 
	add a,b			;0758	80 	. 
	cp a			;0759	bf 	. 
	ld b,b			;075a	40 	@ 
	ld b,b			;075b	40 	@ 
	adc a,a			;075c	8f 	. 
	or b			;075d	b0 	. 
	ld c,h			;075e	4c 	L 
	ld b,b			;075f	40 	@ 
	ld h,b			;0760	60 	` 
	jr nz,l06e3h		;0761	20 80 	  . 
	nop			;0763	00 	. 
	ret po			;0764	e0 	. 
	ret po			;0765	e0 	. 
	nop			;0766	00 	. 
	nop			;0767	00 	. 
	nop			;0768	00 	. 
	ld h,b			;0769	60 	` 
	add a,b			;076a	80 	. 
	add a,b			;076b	80 	. 
	add a,b			;076c	80 	. 
	ld b,b			;076d	40 	@ 
	nop			;076e	00 	. 
	nop			;076f	00 	. 
	ret nz			;0770	c0 	. 
	djnz $+34		;0771	10 20 	.   
	jr nz,$-62		;0773	20 c0 	  . 
	sub b			;0775	90 	. 
	and b			;0776	a0 	. 
	and b			;0777	a0 	. 
	nop			;0778	00 	. 
	ret nc			;0779	d0 	. 
	jr nz,$+34		;077a	20 20 	    
	add a,b			;077c	80 	. 
	jr nz,l073fh		;077d	20 c0 	  . 
	ld b,b			;077f	40 	@ 
	nop			;0780	00 	. 
	rst 28h			;0781	ef 	. 
	djnz l0794h		;0782	10 10 	. . 
	add a,b			;0784	80 	. 
	jp 0bcbch		;0785	c3 bc bc 	. . . 
	ld a,h			;0788	7c 	| 
	ld a,l			;0789	7d 	} 
	ld a,(hl)			;078a	7e 	~ 
	ld a,(hl)			;078b	7e 	~ 
	inc c			;078c	0c 	. 
	ld bc,l3e32h		;078d	01 32 3e 	. 2 > 
	inc b			;0790	04 	. 
	ld bc,07e7ah		;0791	01 7a 7e 	. z ~ 
l0794h:
	adc a,b			;0794	88 	. 
	or e			;0795	b3 	. 
	call nz,084cch		;0796	c4 cc 84 	. . . 
	cp c			;0799	b9 	. 
	jp nz,086ceh		;079a	c2 ce 86 	. . . 
	ret m			;079d	f8 	. 
	add a,c			;079e	81 	. 
l079fh:
	sbc a,a			;079f	9f 	. 
	rlca			;07a0	07 	. 
	ret c			;07a1	d8 	. 
	daa			;07a2	27 	' 
	jr nz,l07a5h		;07a3	20 00 	  . 
l07a5h:
	adc a,a			;07a5	8f 	. 
	ld (hl),b			;07a6	70 	p 
	ld (hl),b			;07a7	70 	p 
	nop			;07a8	00 	. 
	ret nz			;07a9	c0 	. 
	ld a,03eh		;07aa	3e 3e 	> > 
	nop			;07ac	00 	. 
	ret nz			;07ad	c0 	. 
	ld a,03eh		;07ae	3e 3e 	> > 
	nop			;07b0	00 	. 
	ret po			;07b1	e0 	. 
	ld e,01eh		;07b2	1e 1e 	. . 
	nop			;07b4	00 	. 
	ret p			;07b5	f0 	. 
	inc c			;07b6	0c 	. 
	inc c			;07b7	0c 	. 
	nop			;07b8	00 	. 
	ret p			;07b9	f0 	. 
	inc c			;07ba	0c 	. 
	inc c			;07bb	0c 	. 
	nop			;07bc	00 	. 
	nop			;07bd	00 	. 
	ret m			;07be	f8 	. 
	ret m			;07bf	f8 	. 
	nop			;07c0	00 	. 
	add a,b			;07c1	80 	. 
	nop			;07c2	00 	. 
	nop			;07c3	00 	. 
	nop			;07c4	00 	. 
	nop			;07c5	00 	. 
	nop			;07c6	00 	. 
	nop			;07c7	00 	. 
	nop			;07c8	00 	. 
	nop			;07c9	00 	. 
	nop			;07ca	00 	. 
	nop			;07cb	00 	. 
	nop			;07cc	00 	. 
	nop			;07cd	00 	. 
	nop			;07ce	00 	. 
	nop			;07cf	00 	. 
	nop			;07d0	00 	. 
	nop			;07d1	00 	. 
	nop			;07d2	00 	. 
	nop			;07d3	00 	. 
	nop			;07d4	00 	. 
	nop			;07d5	00 	. 
	nop			;07d6	00 	. 
	nop			;07d7	00 	. 
	nop			;07d8	00 	. 
	nop			;07d9	00 	. 
	nop			;07da	00 	. 
	nop			;07db	00 	. 
	nop			;07dc	00 	. 
	nop			;07dd	00 	. 
	nop			;07de	00 	. 
	nop			;07df	00 	. 
	ld (hl),a			;07e0	77 	w 
	ld a,b			;07e1	78 	x 
	ld (hl),b			;07e2	70 	p 
	ld a,a			;07e3	7f 	 
	dec d			;07e4	15 	. 
	jr l07f9h		;07e5	18 12 	. . 
	rra			;07e7	1f 	. 
	add hl,bc			;07e8	09 	. 
	ex af,af'			;07e9	08 	. 
	ld c,00fh		;07ea	0e 0f 	. . 
	djnz l07feh		;07ec	10 10 	. . 
	rra			;07ee	1f 	. 
	rra			;07ef	1f 	. 
	djnz l0805h		;07f0	10 13 	. . 
	inc e			;07f2	1c 	. 
	inc e			;07f3	1c 	. 
	djnz l080dh		;07f4	10 17 	. . 
	jr l0810h		;07f6	18 18 	. . 
	ex af,af'			;07f8	08 	. 
l07f9h:
	ld c,008h		;07f9	0e 08 	. . 
	ex af,af'			;07fb	08 	. 
	ld b,006h		;07fc	06 06 	. . 
l07feh:
	ld b,006h		;07fe	06 06 	. . 
	ret m			;0800	f8 	. 
	nop			;0801	00 	. 
	nop			;0802	00 	. 
	ret m			;0803	f8 	. 
	ret m			;0804	f8 	. 
l0805h:
	nop			;0805	00 	. 
	nop			;0806	00 	. 
	ret m			;0807	f8 	. 
	ret m			;0808	f8 	. 
	nop			;0809	00 	. 
	nop			;080a	00 	. 
	ret m			;080b	f8 	. 
	ld (hl),b			;080c	70 	p 
l080dh:
	djnz l079fh		;080d	10 90 	. . 
	ret p			;080f	f0 	. 
l0810h:
	ret po			;0810	e0 	. 
l0811h:
	ret po			;0811	e0 	. 
	ret po			;0812	e0 	. 
	ret po			;0813	e0 	. 
	nop			;0814	00 	. 
	nop			;0815	00 	. 
	nop			;0816	00 	. 
	nop			;0817	00 	. 
	nop			;0818	00 	. 
	nop			;0819	00 	. 
	nop			;081a	00 	. 
	nop			;081b	00 	. 
	nop			;081c	00 	. 
	nop			;081d	00 	. 
	nop			;081e	00 	. 
	nop			;081f	00 	. 
	nop			;0820	00 	. 
	nop			;0821	00 	. 
	nop			;0822	00 	. 
	nop			;0823	00 	. 
l0824h:
	nop			;0824	00 	. 
	nop			;0825	00 	. 
	nop			;0826	00 	. 
	nop			;0827	00 	. 
	nop			;0828	00 	. 
	nop			;0829	00 	. 
	nop			;082a	00 	. 
	nop			;082b	00 	. 
l082ch:
	nop			;082c	00 	. 
	nop			;082d	00 	. 
	nop			;082e	00 	. 
	nop			;082f	00 	. 
l0830h:
	nop			;0830	00 	. 
	nop			;0831	00 	. 
	nop			;0832	00 	. 
	nop			;0833	00 	. 
	nop			;0834	00 	. 
	nop			;0835	00 	. 
	nop			;0836	00 	. 
	nop			;0837	00 	. 
	nop			;0838	00 	. 
	nop			;0839	00 	. 
	nop			;083a	00 	. 
	nop			;083b	00 	. 
sub_083ch:
	nop			;083c	00 	. 
	nop			;083d	00 	. 
	nop			;083e	00 	. 
	nop			;083f	00 	. 
	nop			;0840	00 	. 
	nop			;0841	00 	. 
	nop			;0842	00 	. 
	nop			;0843	00 	. 
	nop			;0844	00 	. 
	nop			;0845	00 	. 
	nop			;0846	00 	. 
	nop			;0847	00 	. 
sub_0848h:
	nop			;0848	00 	. 
	nop			;0849	00 	. 
	nop			;084a	00 	. 
	nop			;084b	00 	. 
	nop			;084c	00 	. 
	nop			;084d	00 	. 
	nop			;084e	00 	. 
	nop			;084f	00 	. 
l0850h:
	nop			;0850	00 	. 
	nop			;0851	00 	. 
	nop			;0852	00 	. 
	nop			;0853	00 	. 
	nop			;0854	00 	. 
	nop			;0855	00 	. 
	nop			;0856	00 	. 
	nop			;0857	00 	. 
	nop			;0858	00 	. 
	nop			;0859	00 	. 
	nop			;085a	00 	. 
	nop			;085b	00 	. 
	nop			;085c	00 	. 
	nop			;085d	00 	. 
	nop			;085e	00 	. 
	nop			;085f	00 	. 
	nop			;0860	00 	. 
	nop			;0861	00 	. 
	nop			;0862	00 	. 
	nop			;0863	00 	. 
	nop			;0864	00 	. 
	nop			;0865	00 	. 
	nop			;0866	00 	. 
	nop			;0867	00 	. 
	rlca			;0868	07 	. 
	rlca			;0869	07 	. 
	nop			;086a	00 	. 
	nop			;086b	00 	. 
	rra			;086c	1f 	. 
	rra			;086d	1f 	. 
	nop			;086e	00 	. 
	nop			;086f	00 	. 
	ccf			;0870	3f 	? 
	ccf			;0871	3f 	? 
	nop			;0872	00 	. 
	nop			;0873	00 	. 
	ld a,a			;0874	7f 	 
	ld a,a			;0875	7f 	 
	nop			;0876	00 	. 
	nop			;0877	00 	. 
	ld a,a			;0878	7f 	 
	ld a,a			;0879	7f 	 
	nop			;087a	00 	. 
	nop			;087b	00 	. 
	in a,(0dbh)		;087c	db db 	. . 
	inc h			;087e	24 	$ 
	inc h			;087f	24 	$ 
	nop			;0880	00 	. 
	nop			;0881	00 	. 
	nop			;0882	00 	. 
	nop			;0883	00 	. 
	ex af,af'			;0884	08 	. 
	ex af,af'			;0885	08 	. 
	nop			;0886	00 	. 
	nop			;0887	00 	. 
	call z,sub_00cch		;0888	cc cc 00 	. . . 
	nop			;088b	00 	. 
	rst 30h			;088c	f7 	. 
	rst 30h			;088d	f7 	. 
	ex af,af'			;088e	08 	. 
	nop			;088f	00 	. 
	jr c,l08cah		;0890	38 38 	8 8 
	call nz,09e00h		;0892	c4 00 9e 	. . . 
	sbc a,(hl)			;0895	9e 	. 
	ld h,d			;0896	62 	b 
	ld (bc),a			;0897	02 	. 
	xor 0eeh		;0898	ee ee 	. . 
	ld (de),a			;089a	12 	. 
	ld (bc),a			;089b	02 	. 
	ld l,l			;089c	6d 	m 
	defb 0edh;next byte illegal after ed		;089d	ed 	. 
	inc de			;089e	13 	. 
	ld bc,sub_0000h		;089f	01 00 00 	. . . 
	nop			;08a2	00 	. 
	nop			;08a3	00 	. 
	nop			;08a4	00 	. 
	nop			;08a5	00 	. 
	nop			;08a6	00 	. 
	nop			;08a7	00 	. 
	nop			;08a8	00 	. 
	nop			;08a9	00 	. 
	nop			;08aa	00 	. 
	nop			;08ab	00 	. 
	nop			;08ac	00 	. 
	nop			;08ad	00 	. 
	nop			;08ae	00 	. 
	nop			;08af	00 	. 
	nop			;08b0	00 	. 
	nop			;08b1	00 	. 
	nop			;08b2	00 	. 
	nop			;08b3	00 	. 
	nop			;08b4	00 	. 
	nop			;08b5	00 	. 
	nop			;08b6	00 	. 
	nop			;08b7	00 	. 
	nop			;08b8	00 	. 
	nop			;08b9	00 	. 
	nop			;08ba	00 	. 
	nop			;08bb	00 	. 
	nop			;08bc	00 	. 
	nop			;08bd	00 	. 
	nop			;08be	00 	. 
	nop			;08bf	00 	. 
	ret nz			;08c0	c0 	. 
	ret			;08c1	c9 	. 
	ld (hl),036h		;08c2	36 36 	6 6 
	sub (hl)			;08c4	96 	. 
	xor c			;08c5	a9 	. 
	ld b,b			;08c6	40 	@ 
	ld b,b			;08c7	40 	@ 
	scf			;08c8	37 	7 
	ld c,b			;08c9	48 	H 
l08cah:
	nop			;08ca	00 	. 
	nop			;08cb	00 	. 
	scf			;08cc	37 	7 
	ld e,h			;08cd	5c 	\ 
	inc d			;08ce	14 	. 
	inc d			;08cf	14 	. 
	nop			;08d0	00 	. 
	ld a,a			;08d1	7f 	 
	nop			;08d2	00 	. 
	nop			;08d3	00 	. 
	jr l093ch		;08d4	18 66 	. f 
	ld de,l1c01h		;08d6	11 01 1c 	. . . 
	ld h,d			;08d9	62 	b 
	dec e			;08da	1d 	. 
	ld bc,l3c00h		;08db	01 00 3c 	. . < 
	inc bc			;08de	03 	. 
	inc bc			;08df	03 	. 
	ld (hl),l			;08e0	75 	u 
	push af			;08e1	f5 	. 
	dec bc			;08e2	0b 	. 
	ld bc,0b131h		;08e3	01 31 b1 	. 1 . 
	ld c,a			;08e6	4f 	O 
	ld b,c			;08e7	41 	A 
	ld hl,0df21h		;08e8	21 21 df 	! ! . 
	pop bc			;08eb	c1 	. 
	ld (bc),a			;08ec	02 	. 
	ld (bc),a			;08ed	02 	. 
	cp 0e2h		;08ee	fe e2 	. . 
	ld (0de22h),hl		;08f0	22 22 de 	" " . 
	jp nz,06262h		;08f3	c2 62 62 	. b b 
	sbc a,(hl)			;08f6	9e 	. 
	add a,d			;08f7	82 	. 
	ld b,h			;08f8	44 	D 
	call nz,sub_043ch		;08f9	c4 3c 04 	. < . 
	call nz,sub_3cc4h		;08fc	c4 c4 3c 	. . < 
	inc b			;08ff	04 	. 
	nop			;0900	00 	. 
	nop			;0901	00 	. 
	nop			;0902	00 	. 
	nop			;0903	00 	. 
	nop			;0904	00 	. 
	nop			;0905	00 	. 
	nop			;0906	00 	. 
	nop			;0907	00 	. 
	nop			;0908	00 	. 
	nop			;0909	00 	. 
	nop			;090a	00 	. 
	nop			;090b	00 	. 
	nop			;090c	00 	. 
	jr nc,$+3		;090d	30 01 	0 . 
	ld bc,07b00h		;090f	01 00 7b 	. . { 
l0912h:
	nop			;0912	00 	. 
	inc bc			;0913	03 	. 
	nop			;0914	00 	. 
	ld a,a			;0915	7f 	 
	nop			;0916	00 	. 
	ld bc,l0f00h		;0917	01 00 0f 	. . . 
	jr nc,l094ch		;091a	30 30 	0 0 
	jr nz,l0941h		;091c	20 23 	  # 
	inc a			;091e	3c 	< 
	inc a			;091f	3c 	< 
	nop			;0920	00 	. 
	inc bc			;0921	03 	. 
	inc a			;0922	3c 	< 
	inc a			;0923	3c 	< 
	nop			;0924	00 	. 
	ld a,a			;0925	7f 	 
	nop			;0926	00 	. 
	nop			;0927	00 	. 
	nop			;0928	00 	. 
	rst 38h			;0929	ff 	. 
	nop			;092a	00 	. 
	nop			;092b	00 	. 
	nop			;092c	00 	. 
	cp 001h		;092d	fe 01 	. . 
	ld bc,l3c00h		;092f	01 00 3c 	. . < 
	jp 040c3h		;0932	c3 c3 40 	. . @ 
	add a,b			;0935	80 	. 
l0936h:
	ccf			;0936	3f 	? 
	rst 38h			;0937	ff 	. 
	add hl,sp			;0938	39 	9 
	pop bc			;0939	c1 	. 
	rlca			;093a	07 	. 
	rst 38h			;093b	ff 	. 
l093ch:
	ccf			;093c	3f 	? 
	ret nz			;093d	c0 	. 
	nop			;093e	00 	. 
	rst 38h			;093f	ff 	. 
	adc a,b			;0940	88 	. 
l0941h:
	ret pe			;0941	e8 	. 
	jr l094ch		;0942	18 08 	. . 
	djnz l0936h		;0944	10 f0 	. . 
	djnz $+18		;0946	10 10 	. . 
	ex af,af'			;0948	08 	. 
	ret m			;0949	f8 	. 
	ex af,af'			;094a	08 	. 
	ex af,af'			;094b	08 	. 
l094ch:
	ex af,af'			;094c	08 	. 
	ld a,b			;094d	78 	x 
	adc a,b			;094e	88 	. 
	adc a,b			;094f	88 	. 
	inc b			;0950	04 	. 
	inc a			;0951	3c 	< 
	call nz,084c4h		;0952	c4 c4 84 	. . . 
	cp h			;0955	bc 	. 
	call nz,084c4h		;0956	c4 c4 84 	. . . 
	inc a			;0959	3c 	< 
	ld b,h			;095a	44 	D 
	call nz,098c8h		;095b	c4 c8 98 	. . . 
	xor b			;095e	a8 	. 
	ret pe			;095f	e8 	. 
	inc de			;0960	13 	. 
	inc de			;0961	13 	. 
	rra			;0962	1f 	. 
	rra			;0963	1f 	. 
	inc c			;0964	0c 	. 
	inc c			;0965	0c 	. 
	inc c			;0966	0c 	. 
sub_0967h:
	inc c			;0967	0c 	. 
	nop			;0968	00 	. 
	nop			;0969	00 	. 
	nop			;096a	00 	. 
	nop			;096b	00 	. 
	nop			;096c	00 	. 
	nop			;096d	00 	. 
	nop			;096e	00 	. 
	nop			;096f	00 	. 
	nop			;0970	00 	. 
	nop			;0971	00 	. 
	nop			;0972	00 	. 
	nop			;0973	00 	. 
	nop			;0974	00 	. 
	nop			;0975	00 	. 
	nop			;0976	00 	. 
	nop			;0977	00 	. 
	nop			;0978	00 	. 
	nop			;0979	00 	. 
	nop			;097a	00 	. 
	nop			;097b	00 	. 
	nop			;097c	00 	. 
	nop			;097d	00 	. 
	nop			;097e	00 	. 
	nop			;097f	00 	. 
	ld a,a			;0980	7f 	 
	add a,b			;0981	80 	. 
	nop			;0982	00 	. 
	rst 38h			;0983	ff 	. 
	ld l,a			;0984	6f 	o 
	nop			;0985	00 	. 
	djnz l0a07h		;0986	10 7f 	.  
	rlca			;0988	07 	. 
	ld de,l0f09h		;0989	11 09 0f 	. . . 
	ld (bc),a			;098c	02 	. 
	ld a,(l0606h)		;098d	3a 06 06 	: . . 
	ld (bc),a			;0990	02 	. 
	ld a,(l0606h)		;0991	3a 06 06 	: . . 
	ld (bc),a			;0994	02 	. 
	ld (hl),d			;0995	72 	r 
	ld c,00eh		;0996	0e 0e 	. . 
	inc b			;0998	04 	. 
	ld h,h			;0999	64 	d 
	inc e			;099a	1c 	. 
	inc e			;099b	1c 	. 
	jr c,l09d6h		;099c	38 38 	8 8 
	jr c,$+58		;099e	38 38 	8 8 
	ret p			;09a0	f0 	. 
	or b			;09a1	b0 	. 
	or b			;09a2	b0 	. 
	ret p			;09a3	f0 	. 
	ret nz			;09a4	c0 	. 
	ld b,b			;09a5	40 	@ 
	ld b,b			;09a6	40 	@ 
	ret nz			;09a7	c0 	. 
	ret nz			;09a8	c0 	. 
	ld b,b			;09a9	40 	@ 
	ld b,b			;09aa	40 	@ 
	ret nz			;09ab	c0 	. 
sub_09ach:
	add a,b			;09ac	80 	. 
	add a,b			;09ad	80 	. 
	add a,b			;09ae	80 	. 
	add a,b			;09af	80 	. 
	nop			;09b0	00 	. 
	nop			;09b1	00 	. 
	nop			;09b2	00 	. 
	nop			;09b3	00 	. 
	nop			;09b4	00 	. 
	nop			;09b5	00 	. 
	nop			;09b6	00 	. 
	nop			;09b7	00 	. 
	nop			;09b8	00 	. 
	nop			;09b9	00 	. 
	nop			;09ba	00 	. 
	nop			;09bb	00 	. 
	nop			;09bc	00 	. 
	nop			;09bd	00 	. 
	nop			;09be	00 	. 
	nop			;09bf	00 	. 
	nop			;09c0	00 	. 
	nop			;09c1	00 	. 
	nop			;09c2	00 	. 
	nop			;09c3	00 	. 
	nop			;09c4	00 	. 
	nop			;09c5	00 	. 
	nop			;09c6	00 	. 
	nop			;09c7	00 	. 
	nop			;09c8	00 	. 
	nop			;09c9	00 	. 
	nop			;09ca	00 	. 
	nop			;09cb	00 	. 
	nop			;09cc	00 	. 
	nop			;09cd	00 	. 
	nop			;09ce	00 	. 
	nop			;09cf	00 	. 
	ld bc,sub_0000h+1		;09d0	01 01 00 	. . . 
	nop			;09d3	00 	. 
	ld (bc),a			;09d4	02 	. 
	ld (bc),a			;09d5	02 	. 
l09d6h:
	ld bc,l0200h		;09d6	01 00 02 	. . . 
	ld (bc),a			;09d9	02 	. 
	ld bc,l0100h		;09da	01 00 01 	. . . 
	ld bc,l0006h		;09dd	01 06 00 	. . . 
	ld (bc),a			;09e0	02 	. 
	ld (bc),a			;09e1	02 	. 
	nop			;09e2	00 	. 
	nop			;09e3	00 	. 
	nop			;09e4	00 	. 
	nop			;09e5	00 	. 
	ld bc,l3e00h		;09e6	01 00 3e 	. . > 
	ld a,001h		;09e9	3e 01 	> . 
	ld bc,0c7c7h		;09eb	01 c7 c7 	. . . 
	jr c,l09f0h		;09ee	38 00 	8 . 
l09f0h:
	rra			;09f0	1f 	. 
	rra			;09f1	1f 	. 
	ret po			;09f2	e0 	. 
	nop			;09f3	00 	. 
	ccf			;09f4	3f 	? 
	ccf			;09f5	3f 	? 
	ret nz			;09f6	c0 	. 
	nop			;09f7	00 	. 
	rst 38h			;09f8	ff 	. 
	rst 38h			;09f9	ff 	. 
	nop			;09fa	00 	. 
	nop			;09fb	00 	. 
	ld l,(hl)			;09fc	6e 	n 
	ld l,(hl)			;09fd	6e 	n 
	sub c			;09fe	91 	. 
	sub b			;09ff	90 	. 
	add a,b			;0a00	80 	. 
	add a,b			;0a01	80 	. 
	nop			;0a02	00 	. 
	nop			;0a03	00 	. 
	ret po			;0a04	e0 	. 
	ret po			;0a05	e0 	. 
	nop			;0a06	00 	. 
l0a07h:
	nop			;0a07	00 	. 
	ld b,b			;0a08	40 	@ 
	ld b,b			;0a09	40 	@ 
	add a,b			;0a0a	80 	. 
	add a,b			;0a0b	80 	. 
	add a,b			;0a0c	80 	. 
	add a,b			;0a0d	80 	. 
	nop			;0a0e	00 	. 
	nop			;0a0f	00 	. 
	ret nz			;0a10	c0 	. 
	ret nz			;0a11	c0 	. 
	nop			;0a12	00 	. 
	nop			;0a13	00 	. 
l0a14h:
	ret po			;0a14	e0 	. 
	ret po			;0a15	e0 	. 
l0a16h:
	nop			;0a16	00 	. 
	nop			;0a17	00 	. 
	ret po			;0a18	e0 	. 
	ret po			;0a19	e0 	. 
l0a1ah:
	nop			;0a1a	00 	. 
	nop			;0a1b	00 	. 
	ret po			;0a1c	e0 	. 
	ret po			;0a1d	e0 	. 
	djnz l0a20h		;0a1e	10 00 	. . 
l0a20h:
	ld bc,00601h		;0a20	01 01 06 	. . . 
	nop			;0a23	00 	. 
	inc bc			;0a24	03 	. 
	inc bc			;0a25	03 	. 
	inc b			;0a26	04 	. 
	nop			;0a27	00 	. 
	nop			;0a28	00 	. 
	nop			;0a29	00 	. 
	rlca			;0a2a	07 	. 
	inc bc			;0a2b	03 	. 
l0a2ch:
	ld (bc),a			;0a2c	02 	. 
	ld (bc),a			;0a2d	02 	. 
	dec b			;0a2e	05 	. 
	ld bc,l0202h		;0a2f	01 02 02 	. . . 
	dec b			;0a32	05 	. 
	ld bc,l0202h		;0a33	01 02 02 	. . . 
	dec b			;0a36	05 	. 
	ld bc,l0202h		;0a37	01 02 02 	. . . 
	ld bc,l0101h		;0a3a	01 01 01 	. . . 
	ld bc,sub_0000h+2		;0a3d	01 02 00 	. . . 
	inc l			;0a40	2c 	, 
	inc l			;0a41	2c 	, 
	out (0d3h),a		;0a42	d3 d3 	. . 
	ex af,af'			;0a44	08 	. 
	ld e,e			;0a45	5b 	[ 
	and h			;0a46	a4 	. 
	and h			;0a47	a4 	. 
	ld (hl),a			;0a48	77 	w 
	adc a,b			;0a49	88 	. 
	nop			;0a4a	00 	. 
	nop			;0a4b	00 	. 
	rst 38h			;0a4c	ff 	. 
	inc d			;0a4d	14 	. 
	inc d			;0a4e	14 	. 
	inc d			;0a4f	14 	. 
	rst 38h			;0a50	ff 	. 
	nop			;0a51	00 	. 
	nop			;0a52	00 	. 
	nop			;0a53	00 	. 
	ld (hl),a			;0a54	77 	w 
	adc a,b			;0a55	88 	. 
	nop			;0a56	00 	. 
	nop			;0a57	00 	. 
	ex af,af'			;0a58	08 	. 
	rst 30h			;0a59	f7 	. 
	nop			;0a5a	00 	. 
	nop			;0a5b	00 	. 
	ex af,af'			;0a5c	08 	. 
	ld (hl),a			;0a5d	77 	w 
	adc a,b			;0a5e	88 	. 
	add a,b			;0a5f	80 	. 
	ret po			;0a60	e0 	. 
	ret po			;0a61	e0 	. 
	djnz l0a64h		;0a62	10 00 	. . 
l0a64h:
	ld b,b			;0a64	40 	@ 
	ld b,b			;0a65	40 	@ 
	or b			;0a66	b0 	. 
	add a,b			;0a67	80 	. 
	nop			;0a68	00 	. 
	add a,b			;0a69	80 	. 
	ld (hl),b			;0a6a	70 	p 
	ld b,b			;0a6b	40 	@ 
	add a,b			;0a6c	80 	. 
	ld b,b			;0a6d	40 	@ 
	jr nc,l0a70h		;0a6e	30 00 	0 . 
l0a70h:
	ret po			;0a70	e0 	. 
	jr nz,l0a83h		;0a71	20 10 	  . 
	nop			;0a73	00 	. 
	jr nz,l0a16h		;0a74	20 a0 	  . 
	ld d,b			;0a76	50 	P 
	nop			;0a77	00 	. 
	jr nz,l0a1ah		;0a78	20 a0 	  . 
	ld b,b			;0a7a	40 	@ 
	nop			;0a7b	00 	. 
	ld h,b			;0a7c	60 	` 
	ret po			;0a7d	e0 	. 
	nop			;0a7e	00 	. 
	nop			;0a7f	00 	. 
	nop			;0a80	00 	. 
	ld a,a			;0a81	7f 	 
	nop			;0a82	00 	. 
l0a83h:
	nop			;0a83	00 	. 
	nop			;0a84	00 	. 
	rst 30h			;0a85	f7 	. 
	ex af,af'			;0a86	08 	. 
	ex af,af'			;0a87	08 	. 
	nop			;0a88	00 	. 
	ret p			;0a89	f0 	. 
	rrca			;0a8a	0f 	. 
	rrca			;0a8b	0f 	. 
	rlca			;0a8c	07 	. 
	rst 20h			;0a8d	e7 	. 
	rra			;0a8e	1f 	. 
sub_0a8fh:
	rra			;0a8f	1f 	. 
	ld a,b			;0a90	78 	x 
	ld a,b			;0a91	78 	x 
	ld a,b			;0a92	78 	x 
	ld a,b			;0a93	78 	x 
	inc bc			;0a94	03 	. 
	inc c			;0a95	0c 	. 
	nop			;0a96	00 	. 
	inc bc			;0a97	03 	. 
	ld bc,l001eh		;0a98	01 1e 00 	. . . 
	ld bc,l1f00h		;0a9b	01 00 1f 	. . . 
	nop			;0a9e	00 	. 
	nop			;0a9f	00 	. 
	add a,b			;0aa0	80 	. 
	sbc a,a			;0aa1	9f 	. 
	ld h,b			;0aa2	60 	` 
	ld h,b			;0aa3	60 	` 
	add a,c			;0aa4	81 	. 
	pop bc			;0aa5	c1 	. 
	ld a,03eh		;0aa6	3e 3e 	> > 
	nop			;0aa8	00 	. 
	ld a,a			;0aa9	7f 	 
	add a,b			;0aaa	80 	. 
	add a,b			;0aab	80 	. 
	nop			;0aac	00 	. 
	ld a,a			;0aad	7f 	 
	add a,b			;0aae	80 	. 
	add a,b			;0aaf	80 	. 
	nop			;0ab0	00 	. 
	ccf			;0ab1	3f 	? 
	ret nz			;0ab2	c0 	. 
	ret nz			;0ab3	c0 	. 
	nop			;0ab4	00 	. 
	rra			;0ab5	1f 	. 
	ret po			;0ab6	e0 	. 
	ret po			;0ab7	e0 	. 
	ret nz			;0ab8	c0 	. 
	ld b,039h		;0ab9	06 39 	. 9 
	ld sp,hl			;0abb	f9 	. 
	ret p			;0abc	f0 	. 
	rrca			;0abd	0f 	. 
	nop			;0abe	00 	. 
	rst 38h			;0abf	ff 	. 
	add a,b			;0ac0	80 	. 
	ret m			;0ac1	f8 	. 
	nop			;0ac2	00 	. 
	nop			;0ac3	00 	. 
	nop			;0ac4	00 	. 
	cp 000h		;0ac5	fe 00 	. . 
	nop			;0ac7	00 	. 
	nop			;0ac8	00 	. 
	sbc a,(hl)			;0ac9	9e 	. 
	ld h,b			;0aca	60 	` 
	ld h,b			;0acb	60 	` 
	ld b,b			;0acc	40 	@ 
	ld c,h			;0acd	4c 	L 
	ret p			;0ace	f0 	. 
	ret p			;0acf	f0 	. 
	jr c,l0b0ah		;0ad0	38 38 	8 8 
	cp b			;0ad2	b8 	. 
	cp b			;0ad3	b8 	. 
	nop			;0ad4	00 	. 
	nop			;0ad5	00 	. 
	add a,b			;0ad6	80 	. 
	add a,b			;0ad7	80 	. 
	nop			;0ad8	00 	. 
	add a,b			;0ad9	80 	. 
	nop			;0ada	00 	. 
	add a,b			;0adb	80 	. 
	nop			;0adc	00 	. 
	ret po			;0add	e0 	. 
	nop			;0ade	00 	. 
	add a,b			;0adf	80 	. 
	djnz l0b01h		;0ae0	10 1f 	. . 
	djnz l0af4h		;0ae2	10 10 	. . 
	ex af,af'			;0ae4	08 	. 
	rrca			;0ae5	0f 	. 
	ex af,af'			;0ae6	08 	. 
	ex af,af'			;0ae7	08 	. 
	inc b			;0ae8	04 	. 
	rlca			;0ae9	07 	. 
	inc b			;0aea	04 	. 
	inc b			;0aeb	04 	. 
	inc bc			;0aec	03 	. 
	inc bc			;0aed	03 	. 
	inc bc			;0aee	03 	. 
	inc bc			;0aef	03 	. 
	nop			;0af0	00 	. 
	nop			;0af1	00 	. 
	nop			;0af2	00 	. 
	nop			;0af3	00 	. 
l0af4h:
	nop			;0af4	00 	. 
	nop			;0af5	00 	. 
	nop			;0af6	00 	. 
	nop			;0af7	00 	. 
	nop			;0af8	00 	. 
	nop			;0af9	00 	. 
	nop			;0afa	00 	. 
	nop			;0afb	00 	. 
	nop			;0afc	00 	. 
	nop			;0afd	00 	. 
	nop			;0afe	00 	. 
	nop			;0aff	00 	. 
	ld a,h			;0b00	7c 	| 
l0b01h:
	add a,e			;0b01	83 	. 
	nop			;0b02	00 	. 
	ld a,a			;0b03	7f 	 
	ld a,(hl)			;0b04	7e 	~ 
	add a,b			;0b05	80 	. 
	ld bc,0ff7fh		;0b06	01 7f ff 	.  . 
sub_0b09h:
	rst 0			;0b09	c7 	. 
l0b0ah:
	rst 0			;0b0a	c7 	. 
	rst 38h			;0b0b	ff 	. 
	jr c,l0b36h		;0b0c	38 28 	8 ( 
	jr z,l0b48h		;0b0e	28 38 	( 8 
	djnz l0b22h		;0b10	10 10 	. . 
	djnz l0b24h		;0b12	10 10 	. . 
	nop			;0b14	00 	. 
	nop			;0b15	00 	. 
	nop			;0b16	00 	. 
	nop			;0b17	00 	. 
	nop			;0b18	00 	. 
	nop			;0b19	00 	. 
	nop			;0b1a	00 	. 
	nop			;0b1b	00 	. 
	nop			;0b1c	00 	. 
	nop			;0b1d	00 	. 
	nop			;0b1e	00 	. 
	nop			;0b1f	00 	. 
	nop			;0b20	00 	. 
	halt			;0b21	76 	v 
l0b22h:
	add a,b			;0b22	80 	. 
	add a,b			;0b23	80 	. 
l0b24h:
	nop			;0b24	00 	. 
	ld h,0d9h		;0b25	26 d9 	& . 
	exx			;0b27	d9 	. 
	nop			;0b28	00 	. 
	rrca			;0b29	0f 	. 
	ret p			;0b2a	f0 	. 
	ret p			;0b2b	f0 	. 
	pop bc			;0b2c	c1 	. 
	rst 18h			;0b2d	df 	. 
	pop hl			;0b2e	e1 	. 
	pop hl			;0b2f	e1 	. 
	ld b,d			;0b30	42 	B 
	ld e,(hl)			;0b31	5e 	^ 
l0b32h:
	ld h,d			;0b32	62 	b 
	ld h,d			;0b33	62 	b 
	inc h			;0b34	24 	$ 
	inc a			;0b35	3c 	< 
l0b36h:
	inc h			;0b36	24 	$ 
	inc h			;0b37	24 	$ 
	jr l0b52h		;0b38	18 18 	. . 
	jr l0b54h		;0b3a	18 18 	. . 
	nop			;0b3c	00 	. 
	nop			;0b3d	00 	. 
	nop			;0b3e	00 	. 
	nop			;0b3f	00 	. 
	nop			;0b40	00 	. 
	nop			;0b41	00 	. 
	nop			;0b42	00 	. 
	nop			;0b43	00 	. 
	nop			;0b44	00 	. 
	nop			;0b45	00 	. 
	nop			;0b46	00 	. 
	nop			;0b47	00 	. 
l0b48h:
	nop			;0b48	00 	. 
	nop			;0b49	00 	. 
	nop			;0b4a	00 	. 
	nop			;0b4b	00 	. 
	ld bc,sub_0000h+1		;0b4c	01 01 00 	. . . 
	nop			;0b4f	00 	. 
	inc bc			;0b50	03 	. 
	inc bc			;0b51	03 	. 
l0b52h:
	nop			;0b52	00 	. 
	nop			;0b53	00 	. 
l0b54h:
	ld b,006h		;0b54	06 06 	. . 
	ld bc,l0400h		;0b56	01 00 04 	. . . 
	inc b			;0b59	04 	. 
	inc bc			;0b5a	03 	. 
	nop			;0b5b	00 	. 
	ld c,00eh		;0b5c	0e 0e 	. . 
	ld bc,l0500h		;0b5e	01 00 05 	. . . 
	dec b			;0b61	05 	. 
	nop			;0b62	00 	. 
	nop			;0b63	00 	. 
	ld bc,l0201h		;0b64	01 01 02 	. . . 
	nop			;0b67	00 	. 
	ld a,b			;0b68	78 	x 
	ld a,b			;0b69	78 	x 
	rlca			;0b6a	07 	. 
	inc bc			;0b6b	03 	. 
	cp 0feh		;0b6c	fe fe 	. . 
l0b6eh:
	ld bc,03f00h		;0b6e	01 00 3f 	. . ? 
	ccf			;0b71	3f 	? 
	ret nz			;0b72	c0 	. 
	nop			;0b73	00 	. 
	ld a,a			;0b74	7f 	 
	ld a,a			;0b75	7f 	 
	add a,b			;0b76	80 	. 
	nop			;0b77	00 	. 
	rst 38h			;0b78	ff 	. 
	rst 38h			;0b79	ff 	. 
	nop			;0b7a	00 	. 
	nop			;0b7b	00 	. 
	defb 0ddh,0ddh,022h	;illegal sequence		;0b7c	dd dd 22 	. . " 
	ld (sub_0000h),hl		;0b7f	22 00 00 	" . . 
	nop			;0b82	00 	. 
	nop			;0b83	00 	. 
	add a,b			;0b84	80 	. 
	add a,b			;0b85	80 	. 
	nop			;0b86	00 	. 
	nop			;0b87	00 	. 
	nop			;0b88	00 	. 
	nop			;0b89	00 	. 
	nop			;0b8a	00 	. 
	nop			;0b8b	00 	. 
	nop			;0b8c	00 	. 
	nop			;0b8d	00 	. 
	nop			;0b8e	00 	. 
	nop			;0b8f	00 	. 
	nop			;0b90	00 	. 
	nop			;0b91	00 	. 
	add a,b			;0b92	80 	. 
	nop			;0b93	00 	. 
	add a,b			;0b94	80 	. 
	add a,b			;0b95	80 	. 
	nop			;0b96	00 	. 
	nop			;0b97	00 	. 
	ret nz			;0b98	c0 	. 
	ret nz			;0b99	c0 	. 
	nop			;0b9a	00 	. 
	nop			;0b9b	00 	. 
	ret nz			;0b9c	c0 	. 
	ret nz			;0b9d	c0 	. 
	nop			;0b9e	00 	. 
	nop			;0b9f	00 	. 
	ld a,(de)			;0ba0	1a 	. 
	dec de			;0ba1	1b 	. 
	inc b			;0ba2	04 	. 
	nop			;0ba3	00 	. 
	inc b			;0ba4	04 	. 
	dec b			;0ba5	05 	. 
	ld a,(bc)			;0ba6	0a 	. 
	ld (bc),a			;0ba7	02 	. 
	inc c			;0ba8	0c 	. 
	dec c			;0ba9	0d 	. 
	ld (bc),a			;0baa	02 	. 
	ld (bc),a			;0bab	02 	. 
	add hl,de			;0bac	19 	. 
	jr l0bb5h		;0bad	18 06 	. . 
	ld (bc),a			;0baf	02 	. 
	inc bc			;0bb0	03 	. 
	jr c,l0bb7h		;0bb1	38 04 	8 . 
	nop			;0bb3	00 	. 
	nop			;0bb4	00 	. 
l0bb5h:
	ld a,l			;0bb5	7d 	} 
	ld (bc),a			;0bb6	02 	. 
l0bb7h:
	ld (bc),a			;0bb7	02 	. 
	nop			;0bb8	00 	. 
	ld a,l			;0bb9	7d 	} 
	ld (bc),a			;0bba	02 	. 
	ld (bc),a			;0bbb	02 	. 
	ld b,b			;0bbc	40 	@ 
	ld b,h			;0bbd	44 	D 
	ld a,e			;0bbe	7b 	{ 
	ld a,e			;0bbf	7b 	{ 
	ld e,b			;0bc0	58 	X 
	ld e,e			;0bc1	5b 	[ 
	and h			;0bc2	a4 	. 
	and h			;0bc3	a4 	. 
	djnz $-71		;0bc4	10 b7 	. . 
	ld c,b			;0bc6	48 	H 
	ld c,b			;0bc7	48 	H 
	xor 011h		;0bc8	ee 11 	. . 
	nop			;0bca	00 	. 
	nop			;0bcb	00 	. 
	rst 38h			;0bcc	ff 	. 
l0bcdh:
	ld b,h			;0bcd	44 	D 
	ld b,h			;0bce	44 	D 
	ld b,h			;0bcf	44 	D 
	rst 38h			;0bd0	ff 	. 
	nop			;0bd1	00 	. 
	nop			;0bd2	00 	. 
	nop			;0bd3	00 	. 
	xor 011h		;0bd4	ee 11 	. . 
	nop			;0bd6	00 	. 
	nop			;0bd7	00 	. 
	djnz $-15		;0bd8	10 ef 	. . 
	nop			;0bda	00 	. 
	nop			;0bdb	00 	. 
	djnz l0bcdh		;0bdc	10 ef 	. . 
	djnz l0be0h		;0bde	10 00 	. . 
l0be0h:
	ret nz			;0be0	c0 	. 
	ret nz			;0be1	c0 	. 
	nop			;0be2	00 	. 
	nop			;0be3	00 	. 
	ret po			;0be4	e0 	. 
	ret po			;0be5	e0 	. 
	nop			;0be6	00 	. 
	nop			;0be7	00 	. 
	ret po			;0be8	e0 	. 
	ld h,b			;0be9	60 	` 
	nop			;0bea	00 	. 
	nop			;0beb	00 	. 
	ret nc			;0bec	d0 	. 
	ret p			;0bed	f0 	. 
	nop			;0bee	00 	. 
	nop			;0bef	00 	. 
	add a,b			;0bf0	80 	. 
	ret p			;0bf1	f0 	. 
	nop			;0bf2	00 	. 
	nop			;0bf3	00 	. 
	add a,b			;0bf4	80 	. 
	ret m			;0bf5	f8 	. 
	nop			;0bf6	00 	. 
	nop			;0bf7	00 	. 
	add a,b			;0bf8	80 	. 
	ret p			;0bf9	f0 	. 
	ex af,af'			;0bfa	08 	. 
	ex af,af'			;0bfb	08 	. 
	ex af,af'			;0bfc	08 	. 
	ret pe			;0bfd	e8 	. 
	jr $+26		;0bfe	18 18 	. . 
l0c00h:
	jr nc,l0c38h		;0c00	30 36 	0 6 
	add hl,sp			;0c02	39 	9 
	add hl,sp			;0c03	39 	9 
	ex af,af'			;0c04	08 	. 
	dec bc			;0c05	0b 	. 
	inc c			;0c06	0c 	. 
	inc c			;0c07	0c 	. 
	inc b			;0c08	04 	. 
	inc b			;0c09	04 	. 
	rlca			;0c0a	07 	. 
	rlca			;0c0b	07 	. 
sub_0c0ch:
	ld (bc),a			;0c0c	02 	. 
	ld (bc),a			;0c0d	02 	. 
	inc bc			;0c0e	03 	. 
	inc bc			;0c0f	03 	. 
	nop			;0c10	00 	. 
	nop			;0c11	00 	. 
	ld bc,sub_0000h+1		;0c12	01 01 00 	. . . 
	nop			;0c15	00 	. 
	ld bc,00301h		;0c16	01 01 03 	. . . 
	nop			;0c19	00 	. 
	nop			;0c1a	00 	. 
	inc bc			;0c1b	03 	. 
l0c1ch:
	rlca			;0c1c	07 	. 
	nop			;0c1d	00 	. 
	nop			;0c1e	00 	. 
	rlca			;0c1f	07 	. 
	nop			;0c20	00 	. 
	ld a,l			;0c21	7d 	} 
	add a,d			;0c22	82 	. 
	add a,d			;0c23	82 	. 
	ld (bc),a			;0c24	02 	. 
	add a,e			;0c25	83 	. 
	ld a,h			;0c26	7c 	| 
	ld a,h			;0c27	7c 	| 
l0c28h:
	nop			;0c28	00 	. 
	cp 001h		;0c29	fe 01 	. . 
	ld bc,0fe00h		;0c2b	01 00 fe 	. . . 
	ld bc,sub_0000h+1		;0c2e	01 01 00 	. . . 
	ld a,(hl)			;0c31	7e 	~ 
	add a,c			;0c32	81 	. 
	add a,c			;0c33	81 	. 
	nop			;0c34	00 	. 
	ld a,0c1h		;0c35	3e c1 	> . 
	pop bc			;0c37	c1 	. 
l0c38h:
	add a,b			;0c38	80 	. 
	dec c			;0c39	0d 	. 
	ld (hl),d			;0c3a	72 	r 
	di			;0c3b	f3 	. 
	ret p			;0c3c	f0 	. 
	rrca			;0c3d	0f 	. 
	nop			;0c3e	00 	. 
	cp 010h		;0c3f	fe 10 	. . 
	ret nc			;0c41	d0 	. 
l0c42h:
	jr nc,l0c74h		;0c42	30 30 	0 0 
l0c44h:
	jr nz,$+34		;0c44	20 20 	    
	ret po			;0c46	e0 	. 
	ret po			;0c47	e0 	. 
	ld b,b			;0c48	40 	@ 
	ld b,b			;0c49	40 	@ 
	ret nz			;0c4a	c0 	. 
	ret nz			;0c4b	c0 	. 
	add a,b			;0c4c	80 	. 
	add a,(hl)			;0c4d	86 	. 
	add a,b			;0c4e	80 	. 
	add a,b			;0c4f	80 	. 
	nop			;0c50	00 	. 
	rrca			;0c51	0f 	. 
	nop			;0c52	00 	. 
	nop			;0c53	00 	. 
	nop			;0c54	00 	. 
	ld a,(hl)			;0c55	7e 	~ 
	ld bc,l0101h		;0c56	01 01 01 	. . . 
	defb 0fdh,003h,003h	;illegal sequence		;0c59	fd 03 03 	. . . 
	ld bc,03fc1h		;0c5c	01 c1 3f 	. . ? 
	ccf			;0c5f	3f 	? 
	inc c			;0c60	0c 	. 
	ld (bc),a			;0c61	02 	. 
	ld bc,l080dh		;0c62	01 0d 08 	. . . 
	ld c,009h		;0c65	0e 09 	. . 
	add hl,bc			;0c67	09 	. 
	nop			;0c68	00 	. 
	rlca			;0c69	07 	. 
	nop			;0c6a	00 	. 
	nop			;0c6b	00 	. 
	nop			;0c6c	00 	. 
	inc bc			;0c6d	03 	. 
	nop			;0c6e	00 	. 
	nop			;0c6f	00 	. 
	nop			;0c70	00 	. 
	rlca			;0c71	07 	. 
	nop			;0c72	00 	. 
	nop			;0c73	00 	. 
l0c74h:
	nop			;0c74	00 	. 
	rlca			;0c75	07 	. 
	nop			;0c76	00 	. 
	nop			;0c77	00 	. 
	nop			;0c78	00 	. 
	ld b,001h		;0c79	06 01 	. . 
	ld bc,00303h		;0c7b	01 03 03 	. . . 
	inc bc			;0c7e	03 	. 
	inc bc			;0c7f	03 	. 
	ret m			;0c80	f8 	. 
	ld b,001h		;0c81	06 01 	. . 
	rst 38h			;0c83	ff 	. 
	ld (hl),b			;0c84	70 	p 
	inc c			;0c85	0c 	. 
	add a,e			;0c86	83 	. 
	rst 38h			;0c87	ff 	. 
	ld (hl),a			;0c88	77 	w 
	rrca			;0c89	0f 	. 
	add a,a			;0c8a	87 	. 
	rst 38h			;0c8b	ff 	. 
	jr c,l0c96h		;0c8c	38 08 	8 . 
	ret z			;0c8e	c8 	. 
	ret m			;0c8f	f8 	. 
	jr nc,l0c42h		;0c90	30 b0 	0 . 
	ld (hl),b			;0c92	70 	p 
	ld (hl),b			;0c93	70 	p 
	ld b,b			;0c94	40 	@ 
	ld b,b			;0c95	40 	@ 
l0c96h:
	ret nz			;0c96	c0 	. 
	ret nz			;0c97	c0 	. 
	add a,b			;0c98	80 	. 
	add a,b			;0c99	80 	. 
	add a,b			;0c9a	80 	. 
	add a,b			;0c9b	80 	. 
	nop			;0c9c	00 	. 
	nop			;0c9d	00 	. 
	nop			;0c9e	00 	. 
	nop			;0c9f	00 	. 
	ld (0fe32h),a		;0ca0	32 32 fe 	2 2 . 
	cp 0cch		;0ca3	fe cc 	. . 
	call z,0cccch		;0ca5	cc cc cc 	. . . 
	nop			;0ca8	00 	. 
	nop			;0ca9	00 	. 
	nop			;0caa	00 	. 
	nop			;0cab	00 	. 
	nop			;0cac	00 	. 
	nop			;0cad	00 	. 
	nop			;0cae	00 	. 
	nop			;0caf	00 	. 
	nop			;0cb0	00 	. 
	nop			;0cb1	00 	. 
	nop			;0cb2	00 	. 
	nop			;0cb3	00 	. 
	nop			;0cb4	00 	. 
	nop			;0cb5	00 	. 
	nop			;0cb6	00 	. 
	nop			;0cb7	00 	. 
	nop			;0cb8	00 	. 
	nop			;0cb9	00 	. 
	nop			;0cba	00 	. 
	nop			;0cbb	00 	. 
	nop			;0cbc	00 	. 
	nop			;0cbd	00 	. 
	nop			;0cbe	00 	. 
	nop			;0cbf	00 	. 
	inc bc			;0cc0	03 	. 
	nop			;0cc1	00 	. 
	inc bc			;0cc2	03 	. 
	nop			;0cc3	00 	. 
	ld bc,l0100h		;0cc4	01 00 01 	. . . 
	nop			;0cc7	00 	. 
	sbc a,a			;0cc8	9f 	. 
	nop			;0cc9	00 	. 
	sbc a,a			;0cca	9f 	. 
	nop			;0ccb	00 	. 
	rrca			;0ccc	0f 	. 
	nop			;0ccd	00 	. 
	rrca			;0cce	0f 	. 
	nop			;0ccf	00 	. 
	ld l,a			;0cd0	6f 	o 
	ld bc,l016fh		;0cd1	01 6f 01 	. o . 
	ccf			;0cd4	3f 	? 
	dec b			;0cd5	05 	. 
	ccf			;0cd6	3f 	? 
	dec b			;0cd7	05 	. 
	rra			;0cd8	1f 	. 
	ld b,01fh		;0cd9	06 1f 	. . 
	ld b,01fh		;0cdb	06 1f 	. . 
	rrca			;0cdd	0f 	. 
	rra			;0cde	1f 	. 
	rrca			;0cdf	0f 	. 
	sub b			;0ce0	90 	. 
	nop			;0ce1	00 	. 
	sub b			;0ce2	90 	. 
	nop			;0ce3	00 	. 
	call m,0fc00h		;0ce4	fc 00 fc 	. . . 
	nop			;0ce7	00 	. 
	cp 028h		;0ce8	fe 28 	. ( 
	cp 028h		;0cea	fe 28 	. ( 
	rst 38h			;0cec	ff 	. 
	inc l			;0ced	2c 	, 
	rst 38h			;0cee	ff 	. 
	inc l			;0cef	2c 	, 
	rst 38h			;0cf0	ff 	. 
	call m,0fcffh		;0cf1	fc ff fc 	. . . 
	rst 38h			;0cf4	ff 	. 
	rst 38h			;0cf5	ff 	. 
	rst 38h			;0cf6	ff 	. 
	rst 38h			;0cf7	ff 	. 
	rst 38h			;0cf8	ff 	. 
	rst 38h			;0cf9	ff 	. 
	rst 38h			;0cfa	ff 	. 
	rst 38h			;0cfb	ff 	. 
sub_0cfch:
	rst 38h			;0cfc	ff 	. 
	rst 38h			;0cfd	ff 	. 
	rst 38h			;0cfe	ff 	. 
	rst 38h			;0cff	ff 	. 
	nop			;0d00	00 	. 
	nop			;0d01	00 	. 
	nop			;0d02	00 	. 
	nop			;0d03	00 	. 
	sub b			;0d04	90 	. 
	nop			;0d05	00 	. 
	sub b			;0d06	90 	. 
	nop			;0d07	00 	. 
	ret nz			;0d08	c0 	. 
	nop			;0d09	00 	. 
	ret nz			;0d0a	c0 	. 
	nop			;0d0b	00 	. 
	ret po			;0d0c	e0 	. 
	nop			;0d0d	00 	. 
	ret po			;0d0e	e0 	. 
	nop			;0d0f	00 	. 
	pop af			;0d10	f1 	. 
	add a,b			;0d11	80 	. 
	pop af			;0d12	f1 	. 
	add a,b			;0d13	80 	. 
	jp p,0f2c0h		;0d14	f2 c0 f2 	. . . 
	ret nz			;0d17	c0 	. 
	ret m			;0d18	f8 	. 
	ret nc			;0d19	d0 	. 
	ret m			;0d1a	f8 	. 
	ret nc			;0d1b	d0 	. 
	ret m			;0d1c	f8 	. 
	ret m			;0d1d	f8 	. 
	ret m			;0d1e	f8 	. 
	ret m			;0d1f	f8 	. 
	rra			;0d20	1f 	. 
	rrca			;0d21	0f 	. 
	rra			;0d22	1f 	. 
	rrca			;0d23	0f 	. 
	rra			;0d24	1f 	. 
	rlca			;0d25	07 	. 
	rra			;0d26	1f 	. 
	rlca			;0d27	07 	. 
	rra			;0d28	1f 	. 
	rlca			;0d29	07 	. 
	rra			;0d2a	1f 	. 
	rlca			;0d2b	07 	. 
	rrca			;0d2c	0f 	. 
	rlca			;0d2d	07 	. 
	rrca			;0d2e	0f 	. 
	rlca			;0d2f	07 	. 
	rrca			;0d30	0f 	. 
	inc bc			;0d31	03 	. 
	rrca			;0d32	0f 	. 
	inc bc			;0d33	03 	. 
	rst 8			;0d34	cf 	. 
	inc bc			;0d35	03 	. 
	rst 8			;0d36	cf 	. 
	inc bc			;0d37	03 	. 
	ccf			;0d38	3f 	? 
	ld bc,l013fh		;0d39	01 3f 01 	. ? . 
	ld a,a			;0d3c	7f 	 
	dec e			;0d3d	1d 	. 
	ld a,a			;0d3e	7f 	 
	dec e			;0d3f	1d 	. 
	rst 38h			;0d40	ff 	. 
	rst 38h			;0d41	ff 	. 
	rst 38h			;0d42	ff 	. 
	rst 38h			;0d43	ff 	. 
	rst 38h			;0d44	ff 	. 
	rst 38h			;0d45	ff 	. 
	rst 38h			;0d46	ff 	. 
	rst 38h			;0d47	ff 	. 
	rst 38h			;0d48	ff 	. 
	rst 38h			;0d49	ff 	. 
	rst 38h			;0d4a	ff 	. 
	rst 38h			;0d4b	ff 	. 
	rst 38h			;0d4c	ff 	. 
	adc a,b			;0d4d	88 	. 
	adc a,b			;0d4e	88 	. 
	adc a,b			;0d4f	88 	. 
l0d50h:
	rst 38h			;0d50	ff 	. 
	ld (02222h),hl		;0d51	22 22 22 	" " " 
	rst 38h			;0d54	ff 	. 
	nop			;0d55	00 	. 
	nop			;0d56	00 	. 
	nop			;0d57	00 	. 
	rst 38h			;0d58	ff 	. 
	adc a,b			;0d59	88 	. 
	adc a,b			;0d5a	88 	. 
	adc a,b			;0d5b	88 	. 
	rst 38h			;0d5c	ff 	. 
	rst 38h			;0d5d	ff 	. 
	rst 38h			;0d5e	ff 	. 
	rst 38h			;0d5f	ff 	. 
	ret m			;0d60	f8 	. 
	ret p			;0d61	f0 	. 
	ret m			;0d62	f8 	. 
	ret p			;0d63	f0 	. 
	ret m			;0d64	f8 	. 
	ret p			;0d65	f0 	. 
	ret m			;0d66	f8 	. 
	ret p			;0d67	f0 	. 
	jp m,0faf0h		;0d68	fa f0 fa 	. . . 
	ret p			;0d6b	f0 	. 
	ret m			;0d6c	f8 	. 
	ret po			;0d6d	e0 	. 
	ret m			;0d6e	f8 	. 
	ret po			;0d6f	e0 	. 
	ret m			;0d70	f8 	. 
	nop			;0d71	00 	. 
	jr l0d74h		;0d72	18 00 	. . 
l0d74h:
	ret m			;0d74	f8 	. 
	ld h,b			;0d75	60 	` 
	ld a,b			;0d76	78 	x 
	ld h,b			;0d77	60 	` 
	ret p			;0d78	f0 	. 
	ret nz			;0d79	c0 	. 
	ret p			;0d7a	f0 	. 
	ret nz			;0d7b	c0 	. 
	call p,0f4c0h		;0d7c	f4 c0 f4 	. . . 
	ret nz			;0d7f	c0 	. 
	ld a,a			;0d80	7f 	 
	ccf			;0d81	3f 	? 
	ld a,a			;0d82	7f 	 
	ccf			;0d83	3f 	? 
	ld a,a			;0d84	7f 	 
	ccf			;0d85	3f 	? 
	ld a,a			;0d86	7f 	 
	ccf			;0d87	3f 	? 
	ld a,a			;0d88	7f 	 
	rra			;0d89	1f 	. 
	ld a,a			;0d8a	7f 	 
	rra			;0d8b	1f 	. 
	ccf			;0d8c	3f 	? 
	ld bc,l013fh		;0d8d	01 3f 01 	. ? . 
	rrca			;0d90	0f 	. 
	nop			;0d91	00 	. 
	rrca			;0d92	0f 	. 
	nop			;0d93	00 	. 
	rlca			;0d94	07 	. 
	nop			;0d95	00 	. 
	rlca			;0d96	07 	. 
	nop			;0d97	00 	. 
	rlca			;0d98	07 	. 
	nop			;0d99	00 	. 
	ld b,001h		;0d9a	06 01 	. . 
	ccf			;0d9c	3f 	? 
	nop			;0d9d	00 	. 
	inc a			;0d9e	3c 	< 
	inc bc			;0d9f	03 	. 
	rst 38h			;0da0	ff 	. 
	rst 38h			;0da1	ff 	. 
	rst 38h			;0da2	ff 	. 
	rst 38h			;0da3	ff 	. 
	rst 38h			;0da4	ff 	. 
	rst 38h			;0da5	ff 	. 
	rst 38h			;0da6	ff 	. 
	rst 38h			;0da7	ff 	. 
	rst 38h			;0da8	ff 	. 
	rst 38h			;0da9	ff 	. 
	rst 38h			;0daa	ff 	. 
	rst 38h			;0dab	ff 	. 
	rst 38h			;0dac	ff 	. 
	rst 38h			;0dad	ff 	. 
	rst 38h			;0dae	ff 	. 
	rst 38h			;0daf	ff 	. 
	rst 38h			;0db0	ff 	. 
	rst 38h			;0db1	ff 	. 
	rst 38h			;0db2	ff 	. 
	rst 38h			;0db3	ff 	. 
	rst 38h			;0db4	ff 	. 
	rst 38h			;0db5	ff 	. 
	rst 38h			;0db6	ff 	. 
	rst 38h			;0db7	ff 	. 
	rst 38h			;0db8	ff 	. 
	rst 38h			;0db9	ff 	. 
	rst 38h			;0dba	ff 	. 
	rst 38h			;0dbb	ff 	. 
	rst 38h			;0dbc	ff 	. 
	ccf			;0dbd	3f 	? 
	ccf			;0dbe	3f 	? 
	rst 38h			;0dbf	ff 	. 
	ret po			;0dc0	e0 	. 
	add a,b			;0dc1	80 	. 
	ret po			;0dc2	e0 	. 
	add a,b			;0dc3	80 	. 
	ret p			;0dc4	f0 	. 
	add a,b			;0dc5	80 	. 
	ret p			;0dc6	f0 	. 
	add a,b			;0dc7	80 	. 
	call m,0fce0h		;0dc8	fc e0 fc 	. . . 
	ret po			;0dcb	e0 	. 
	ret m			;0dcc	f8 	. 
	ret p			;0dcd	f0 	. 
	ret m			;0dce	f8 	. 
	ret p			;0dcf	f0 	. 
	call m,0fcf8h		;0dd0	fc f8 fc 	. . . 
	ret m			;0dd3	f8 	. 
	cp 0f8h		;0dd4	fe f8 	. . 
	cp 0f8h		;0dd6	fe f8 	. . 
	cp 0bch		;0dd8	fe bc 	. . 
	cp 0bch		;0dda	fe bc 	. . 
	cp 03ch		;0ddc	fe 3c 	. < 
	ld a,(hl)			;0dde	7e 	~ 
	cp h			;0ddf	bc 	. 
	rrca			;0de0	0f 	. 
	nop			;0de1	00 	. 
	inc c			;0de2	0c 	. 
	inc bc			;0de3	03 	. 
	rrca			;0de4	0f 	. 
	nop			;0de5	00 	. 
	ld c,001h		;0de6	0e 01 	. . 
	rlca			;0de8	07 	. 
	ld bc,l0107h		;0de9	01 07 01 	. . . 
	rlca			;0dec	07 	. 
	ld bc,l0107h		;0ded	01 07 01 	. . . 
	rlca			;0df0	07 	. 
	ld bc,l0107h		;0df1	01 07 01 	. . . 
	rrca			;0df4	0f 	. 
	ld bc,l010fh		;0df5	01 0f 01 	. . . 
	inc bc			;0df8	03 	. 
	nop			;0df9	00 	. 
	inc bc			;0dfa	03 	. 
	nop			;0dfb	00 	. 
	nop			;0dfc	00 	. 
	nop			;0dfd	00 	. 
	nop			;0dfe	00 	. 
	nop			;0dff	00 	. 
	rst 38h			;0e00	ff 	. 
	nop			;0e01	00 	. 
	nop			;0e02	00 	. 
	rst 38h			;0e03	ff 	. 
	rst 38h			;0e04	ff 	. 
	ld bc,0ff01h		;0e05	01 01 ff 	. . . 
	rst 38h			;0e08	ff 	. 
	jp 0ffc3h		;0e09	c3 c3 ff 	. . . 
	rst 38h			;0e0c	ff 	. 
	rst 28h			;0e0d	ef 	. 
l0e0eh:
	rst 28h			;0e0e	ef 	. 
l0e0fh:
	rst 38h			;0e0f	ff 	. 
	rst 38h			;0e10	ff 	. 
	rst 28h			;0e11	ef 	. 
	rst 38h			;0e12	ff 	. 
	rst 28h			;0e13	ef 	. 
	rst 38h			;0e14	ff 	. 
	rst 30h			;0e15	f7 	. 
	rst 38h			;0e16	ff 	. 
l0e17h:
	rst 30h			;0e17	f7 	. 
	rst 38h			;0e18	ff 	. 
	ld (hl),b			;0e19	70 	p 
	rst 38h			;0e1a	ff 	. 
	ld (hl),b			;0e1b	70 	p 
	ret m			;0e1c	f8 	. 
	jr nc,l0e17h		;0e1d	30 f8 	0 . 
l0e1fh:
	jr nc,l0e1fh		;0e1f	30 fe 	0 . 
	jr l0ea1h		;0e21	18 7e 	. ~ 
	sbc a,b			;0e23	98 	. 
	call m,07c00h		;0e24	fc 00 7c 	. . | 
	add a,b			;0e27	80 	. 
l0e28h:
	ret pe			;0e28	e8 	. 
	add a,b			;0e29	80 	. 
	ret pe			;0e2a	e8 	. 
	add a,b			;0e2b	80 	. 
l0e2ch:
	ret nz			;0e2c	c0 	. 
	add a,b			;0e2d	80 	. 
	ret nz			;0e2e	c0 	. 
	add a,b			;0e2f	80 	. 
	ret nz			;0e30	c0 	. 
	add a,b			;0e31	80 	. 
	ret nz			;0e32	c0 	. 
	add a,b			;0e33	80 	. 
	ret nz			;0e34	c0 	. 
	nop			;0e35	00 	. 
	ret nz			;0e36	c0 	. 
	nop			;0e37	00 	. 
	add a,b			;0e38	80 	. 
	nop			;0e39	00 	. 
	add a,b			;0e3a	80 	. 
	nop			;0e3b	00 	. 
l0e3ch:
	nop			;0e3c	00 	. 
	nop			;0e3d	00 	. 
	nop			;0e3e	00 	. 
	nop			;0e3f	00 	. 
	ld (bc),a			;0e40	02 	. 
	ld (bc),a			;0e41	02 	. 
	ld (bc),a			;0e42	02 	. 
	ld (bc),a			;0e43	02 	. 
	inc bc			;0e44	03 	. 
	ld (bc),a			;0e45	02 	. 
	inc bc			;0e46	03 	. 
	ld (bc),a			;0e47	02 	. 
	dec bc			;0e48	0b 	. 
	inc bc			;0e49	03 	. 
	dec bc			;0e4a	0b 	. 
	inc bc			;0e4b	03 	. 
	rrca			;0e4c	0f 	. 
	dec bc			;0e4d	0b 	. 
	rrca			;0e4e	0f 	. 
	dec bc			;0e4f	0b 	. 
	rra			;0e50	1f 	. 
	rrca			;0e51	0f 	. 
	rra			;0e52	1f 	. 
	rrca			;0e53	0f 	. 
	rra			;0e54	1f 	. 
	rrca			;0e55	0f 	. 
	rra			;0e56	1f 	. 
	rrca			;0e57	0f 	. 
	rra			;0e58	1f 	. 
	ld e,01fh		;0e59	1e 1f 	. . 
l0e5bh:
	rra			;0e5b	1f 	. 
	rra			;0e5c	1f 	. 
	ld e,01fh		;0e5d	1e 1f 	. . 
	rra			;0e5f	1f 	. 
l0e60h:
	ld a,c			;0e60	79 	y 
	ld a,c			;0e61	79 	y 
	ld a,c			;0e62	79 	y 
	ld a,c			;0e63	79 	y 
	ei			;0e64	fb 	. 
	ld sp,hl			;0e65	f9 	. 
	ei			;0e66	fb 	. 
	ld sp,hl			;0e67	f9 	. 
l0e68h:
	rst 38h			;0e68	ff 	. 
	defb 0fdh,0ffh,0fdh	;illegal sequence		;0e69	fd ff fd 	. . . 
	rst 38h			;0e6c	ff 	. 
	rst 38h			;0e6d	ff 	. 
	rst 38h			;0e6e	ff 	. 
	rst 38h			;0e6f	ff 	. 
	rst 38h			;0e70	ff 	. 
	rst 38h			;0e71	ff 	. 
	rst 38h			;0e72	ff 	. 
	rst 38h			;0e73	ff 	. 
	rst 38h			;0e74	ff 	. 
	rst 18h			;0e75	df 	. 
	rst 38h			;0e76	ff 	. 
	rst 38h			;0e77	ff 	. 
	rst 38h			;0e78	ff 	. 
	rst 18h			;0e79	df 	. 
	rst 38h			;0e7a	ff 	. 
	rst 38h			;0e7b	ff 	. 
	rst 38h			;0e7c	ff 	. 
	ld e,c			;0e7d	59 	Y 
	rst 38h			;0e7e	ff 	. 
	rst 38h			;0e7f	ff 	. 
	nop			;0e80	00 	. 
	nop			;0e81	00 	. 
l0e82h:
	nop			;0e82	00 	. 
	nop			;0e83	00 	. 
	nop			;0e84	00 	. 
	nop			;0e85	00 	. 
	nop			;0e86	00 	. 
	nop			;0e87	00 	. 
	and b			;0e88	a0 	. 
	add a,b			;0e89	80 	. 
	and b			;0e8a	a0 	. 
	add a,b			;0e8b	80 	. 
	ret po			;0e8c	e0 	. 
	ret po			;0e8d	e0 	. 
	ret po			;0e8e	e0 	. 
	ret po			;0e8f	e0 	. 
	ret po			;0e90	e0 	. 
	ret po			;0e91	e0 	. 
	ret po			;0e92	e0 	. 
	ret po			;0e93	e0 	. 
	ret p			;0e94	f0 	. 
	ret po			;0e95	e0 	. 
	ret p			;0e96	f0 	. 
	ret po			;0e97	e0 	. 
	ret p			;0e98	f0 	. 
	ret p			;0e99	f0 	. 
	ret p			;0e9a	f0 	. 
	ret p			;0e9b	f0 	. 
	ret po			;0e9c	e0 	. 
	ret po			;0e9d	e0 	. 
	ret po			;0e9e	e0 	. 
	ret po			;0e9f	e0 	. 
	rrca			;0ea0	0f 	. 
l0ea1h:
	ld c,00fh		;0ea1	0e 0f 	. . 
	rrca			;0ea3	0f 	. 
	rra			;0ea4	1f 	. 
	inc e			;0ea5	1c 	. 
	rra			;0ea6	1f 	. 
	rra			;0ea7	1f 	. 
	rrca			;0ea8	0f 	. 
	inc c			;0ea9	0c 	. 
	rrca			;0eaa	0f 	. 
	rrca			;0eab	0f 	. 
	inc hl			;0eac	23 	# 
	nop			;0ead	00 	. 
	inc hl			;0eae	23 	# 
	inc hl			;0eaf	23 	# 
	inc sp			;0eb0	33 	3 
	nop			;0eb1	00 	. 
	inc sp			;0eb2	33 	3 
	inc sp			;0eb3	33 	3 
	add hl,sp			;0eb4	39 	9 
	nop			;0eb5	00 	. 
	add hl,sp			;0eb6	39 	9 
	add hl,sp			;0eb7	39 	9 
	ld a,a			;0eb8	7f 	 
	ld (bc),a			;0eb9	02 	. 
	ld a,a			;0eba	7f 	 
	ld a,a			;0ebb	7f 	 
	rra			;0ebc	1f 	. 
	ld de,l1f1fh		;0ebd	11 1f 1f 	. . . 
	rst 38h			;0ec0	ff 	. 
	djnz $+1		;0ec1	10 ff 	. . 
	rst 38h			;0ec3	ff 	. 
	rst 38h			;0ec4	ff 	. 
	jr z,l0e82h		;0ec5	28 bb 	( . 
	cp e			;0ec7	bb 	. 
	rst 38h			;0ec8	ff 	. 
	jr z,l0f04h		;0ec9	28 39 	( 9 
	add hl,sp			;0ecb	39 	9 
	rst 38h			;0ecc	ff 	. 
	nop			;0ecd	00 	. 
	ld de,0ff11h		;0ece	11 11 ff 	. . . 
	nop			;0ed1	00 	. 
	rst 38h			;0ed2	ff 	. 
	rst 38h			;0ed3	ff 	. 
	rst 38h			;0ed4	ff 	. 
	nop			;0ed5	00 	. 
	rst 38h			;0ed6	ff 	. 
	rst 38h			;0ed7	ff 	. 
	rst 38h			;0ed8	ff 	. 
	nop			;0ed9	00 	. 
	rst 38h			;0eda	ff 	. 
	rst 38h			;0edb	ff 	. 
	rst 38h			;0edc	ff 	. 
	add a,e			;0edd	83 	. 
	rst 38h			;0ede	ff 	. 
	rst 38h			;0edf	ff 	. 
	ret po			;0ee0	e0 	. 
	ret po			;0ee1	e0 	. 
	ret po			;0ee2	e0 	. 
	ret po			;0ee3	e0 	. 
	ret p			;0ee4	f0 	. 
	ld (hl),b			;0ee5	70 	p 
	ret p			;0ee6	f0 	. 
	ret p			;0ee7	f0 	. 
	ret nz			;0ee8	c0 	. 
	ld b,b			;0ee9	40 	@ 
	ret nz			;0eea	c0 	. 
	ret nz			;0eeb	c0 	. 
	adc a,b			;0eec	88 	. 
	nop			;0eed	00 	. 
	adc a,b			;0eee	88 	. 
	adc a,b			;0eef	88 	. 
	sbc a,b			;0ef0	98 	. 
	nop			;0ef1	00 	. 
	sbc a,b			;0ef2	98 	. 
	sbc a,b			;0ef3	98 	. 
	ret m			;0ef4	f8 	. 
	ld b,b			;0ef5	40 	@ 
	ret m			;0ef6	f8 	. 
	ret m			;0ef7	f8 	. 
	call m,0fc80h		;0ef8	fc 80 fc 	. . . 
	call m,010f0h		;0efb	fc f0 10 	. . . 
	ret p			;0efe	f0 	. 
	ret p			;0eff	f0 	. 
l0f00h:
	rrca			;0f00	0f 	. 
	ex af,af'			;0f01	08 	. 
	rrca			;0f02	0f 	. 
	rrca			;0f03	0f 	. 
l0f04h:
	rlca			;0f04	07 	. 
	inc b			;0f05	04 	. 
	rlca			;0f06	07 	. 
	rlca			;0f07	07 	. 
	inc bc			;0f08	03 	. 
l0f09h:
	inc bc			;0f09	03 	. 
	inc bc			;0f0a	03 	. 
	inc bc			;0f0b	03 	. 
	dec b			;0f0c	05 	. 
	ld bc,l0501h		;0f0d	01 01 05 	. . . 
	ccf			;0f10	3f 	? 
	ld bc,03f01h		;0f11	01 01 3f 	. . ? 
	rlca			;0f14	07 	. 
	nop			;0f15	00 	. 
	nop			;0f16	00 	. 
	rlca			;0f17	07 	. 
	rrca			;0f18	0f 	. 
	nop			;0f19	00 	. 
	nop			;0f1a	00 	. 
	rrca			;0f1b	0f 	. 
	ld bc,sub_0000h		;0f1c	01 00 00 	. . . 
l0f1fh:
	ld bc,07cffh		;0f1f	01 ff 7c 	. . | 
	rst 38h			;0f22	ff 	. 
l0f23h:
	rst 38h			;0f23	ff 	. 
l0f24h:
	rst 38h			;0f24	ff 	. 
	nop			;0f25	00 	. 
	rst 38h			;0f26	ff 	. 
	rst 38h			;0f27	ff 	. 
	rst 38h			;0f28	ff 	. 
	ld bc,0ffffh		;0f29	01 ff ff 	. . . 
	rst 38h			;0f2c	ff 	. 
l0f2dh:
	ld bc,0ffffh		;0f2d	01 ff ff 	. . . 
	rst 38h			;0f30	ff 	. 
	add a,e			;0f31	83 	. 
	rst 38h			;0f32	ff 	. 
	rst 38h			;0f33	ff 	. 
	rst 38h			;0f34	ff 	. 
	ld a,h			;0f35	7c 	| 
	ld a,h			;0f36	7c 	| 
	rst 38h			;0f37	ff 	. 
l0f38h:
	rst 38h			;0f38	ff 	. 
	nop			;0f39	00 	. 
	nop			;0f3a	00 	. 
	rst 38h			;0f3b	ff 	. 
	rst 38h			;0f3c	ff 	. 
	nop			;0f3d	00 	. 
	nop			;0f3e	00 	. 
	rst 38h			;0f3f	ff 	. 
sub_0f40h:
	ret po			;0f40	e0 	. 
	jr nz,l0f23h		;0f41	20 e0 	  . 
	ret po			;0f43	e0 	. 
	ret nz			;0f44	c0 	. 
	ld b,b			;0f45	40 	@ 
	ret nz			;0f46	c0 	. 
	ret nz			;0f47	c0 	. 
	add a,b			;0f48	80 	. 
	add a,b			;0f49	80 	. 
	add a,b			;0f4a	80 	. 
	add a,b			;0f4b	80 	. 
	ld b,b			;0f4c	40 	@ 
	nop			;0f4d	00 	. 
	nop			;0f4e	00 	. 
	ld b,b			;0f4f	40 	@ 
	ret nz			;0f50	c0 	. 
	nop			;0f51	00 	. 
	nop			;0f52	00 	. 
	ret nz			;0f53	c0 	. 
	ret p			;0f54	f0 	. 
	nop			;0f55	00 	. 
	nop			;0f56	00 	. 
	ret p			;0f57	f0 	. 
	ret nz			;0f58	c0 	. 
	nop			;0f59	00 	. 
	nop			;0f5a	00 	. 
	ret nz			;0f5b	c0 	. 
	ld b,b			;0f5c	40 	@ 
	nop			;0f5d	00 	. 
	nop			;0f5e	00 	. 
	ld b,b			;0f5f	40 	@ 
	inc bc			;0f60	03 	. 
	nop			;0f61	00 	. 
	nop			;0f62	00 	. 
	inc bc			;0f63	03 	. 
	nop			;0f64	00 	. 
	nop			;0f65	00 	. 
	nop			;0f66	00 	. 
	nop			;0f67	00 	. 
	nop			;0f68	00 	. 
	nop			;0f69	00 	. 
	nop			;0f6a	00 	. 
	nop			;0f6b	00 	. 
	nop			;0f6c	00 	. 
	nop			;0f6d	00 	. 
	nop			;0f6e	00 	. 
	nop			;0f6f	00 	. 
	nop			;0f70	00 	. 
	nop			;0f71	00 	. 
	nop			;0f72	00 	. 
	nop			;0f73	00 	. 
	nop			;0f74	00 	. 
	nop			;0f75	00 	. 
	nop			;0f76	00 	. 
	nop			;0f77	00 	. 
	nop			;0f78	00 	. 
	nop			;0f79	00 	. 
	nop			;0f7a	00 	. 
	nop			;0f7b	00 	. 
	nop			;0f7c	00 	. 
	nop			;0f7d	00 	. 
	nop			;0f7e	00 	. 
	nop			;0f7f	00 	. 
	rst 38h			;0f80	ff 	. 
	add a,h			;0f81	84 	. 
	add a,h			;0f82	84 	. 
	rst 38h			;0f83	ff 	. 
	cp 040h		;0f84	fe 40 	. @ 
	add a,0feh		;0f86	c6 fe 	. . 
	cp 020h		;0f88	fe 20 	.   
	xor 0feh		;0f8a	ee fe 	. . 
	cp 000h		;0f8c	fe 00 	. . 
	cp 0feh		;0f8e	fe fe 	. . 
	ld a,h			;0f90	7c 	| 
	nop			;0f91	00 	. 
	ld a,h			;0f92	7c 	| 
	ld a,h			;0f93	7c 	| 
	ld a,h			;0f94	7c 	| 
	nop			;0f95	00 	. 
	ld a,h			;0f96	7c 	| 
	ld a,h			;0f97	7c 	| 
	jr c,l0faah		;0f98	38 10 	8 . 
	jr c,l0fd4h		;0f9a	38 38 	8 8 
	nop			;0f9c	00 	. 
	nop			;0f9d	00 	. 
	nop			;0f9e	00 	. 
	nop			;0f9f	00 	. 
	nop			;0fa0	00 	. 
	nop			;0fa1	00 	. 
	nop			;0fa2	00 	. 
	nop			;0fa3	00 	. 
	nop			;0fa4	00 	. 
	nop			;0fa5	00 	. 
	nop			;0fa6	00 	. 
	nop			;0fa7	00 	. 
	nop			;0fa8	00 	. 
	nop			;0fa9	00 	. 
l0faah:
	nop			;0faa	00 	. 
	nop			;0fab	00 	. 
l0fach:
	nop			;0fac	00 	. 
l0fadh:
	nop			;0fad	00 	. 
	nop			;0fae	00 	. 
	nop			;0faf	00 	. 
	nop			;0fb0	00 	. 
	nop			;0fb1	00 	. 
	nop			;0fb2	00 	. 
	nop			;0fb3	00 	. 
	nop			;0fb4	00 	. 
	nop			;0fb5	00 	. 
	nop			;0fb6	00 	. 
	nop			;0fb7	00 	. 
	nop			;0fb8	00 	. 
	nop			;0fb9	00 	. 
	nop			;0fba	00 	. 
	nop			;0fbb	00 	. 
	nop			;0fbc	00 	. 
	nop			;0fbd	00 	. 
	nop			;0fbe	00 	. 
	nop			;0fbf	00 	. 
	nop			;0fc0	00 	. 
	nop			;0fc1	00 	. 
	nop			;0fc2	00 	. 
	nop			;0fc3	00 	. 
	ld (bc),a			;0fc4	02 	. 
	nop			;0fc5	00 	. 
	ld (bc),a			;0fc6	02 	. 
	nop			;0fc7	00 	. 
	inc bc			;0fc8	03 	. 
	inc bc			;0fc9	03 	. 
	inc bc			;0fca	03 	. 
	inc bc			;0fcb	03 	. 
	dec bc			;0fcc	0b 	. 
	dec bc			;0fcd	0b 	. 
	dec bc			;0fce	0b 	. 
	dec bc			;0fcf	0b 	. 
l0fd0h:
	rrca			;0fd0	0f 	. 
	rlca			;0fd1	07 	. 
	rrca			;0fd2	0f 	. 
	rlca			;0fd3	07 	. 
l0fd4h:
	rra			;0fd4	1f 	. 
	rra			;0fd5	1f 	. 
	rra			;0fd6	1f 	. 
	rra			;0fd7	1f 	. 
	rra			;0fd8	1f 	. 
	rra			;0fd9	1f 	. 
	rra			;0fda	1f 	. 
	rra			;0fdb	1f 	. 
	rra			;0fdc	1f 	. 
	ld d,01fh		;0fdd	16 1f 	. . 
	rla			;0fdf	17 	. 
	ld d,b			;0fe0	50 	P 
	ld d,b			;0fe1	50 	P 
	ld d,b			;0fe2	50 	P 
	ld d,b			;0fe3	50 	P 
	ld a,c			;0fe4	79 	y 
	ld e,b			;0fe5	58 	X 
	ld a,c			;0fe6	79 	y 
	ld e,b			;0fe7	58 	X 
	ei			;0fe8	fb 	. 
	ei			;0fe9	fb 	. 
	ei			;0fea	fb 	. 
	ei			;0feb	fb 	. 
	rst 38h			;0fec	ff 	. 
	ei			;0fed	fb 	. 
	rst 38h			;0fee	ff 	. 
	ei			;0fef	fb 	. 
	rst 38h			;0ff0	ff 	. 
	rst 38h			;0ff1	ff 	. 
	rst 38h			;0ff2	ff 	. 
	rst 38h			;0ff3	ff 	. 
	rst 38h			;0ff4	ff 	. 
	rst 38h			;0ff5	ff 	. 
	rst 38h			;0ff6	ff 	. 
	rst 38h			;0ff7	ff 	. 
	rst 38h			;0ff8	ff 	. 
	rst 18h			;0ff9	df 	. 
	rst 38h			;0ffa	ff 	. 
	rst 38h			;0ffb	ff 	. 
	rst 38h			;0ffc	ff 	. 
	rst 18h			;0ffd	df 	. 
	rst 38h			;0ffe	ff 	. 
	rst 38h			;0fff	ff 	. 
	nop			;1000	00 	. 
	nop			;1001	00 	. 
	nop			;1002	00 	. 
	nop			;1003	00 	. 
	nop			;1004	00 	. 
	nop			;1005	00 	. 
	nop			;1006	00 	. 
	nop			;1007	00 	. 
	nop			;1008	00 	. 
	nop			;1009	00 	. 
	nop			;100a	00 	. 
	nop			;100b	00 	. 
	and b			;100c	a0 	. 
	and b			;100d	a0 	. 
	and b			;100e	a0 	. 
	and b			;100f	a0 	. 
	ret po			;1010	e0 	. 
	and b			;1011	a0 	. 
l1012h:
	ret po			;1012	e0 	. 
	and b			;1013	a0 	. 
	ret po			;1014	e0 	. 
	ret po			;1015	e0 	. 
	ret po			;1016	e0 	. 
	ret po			;1017	e0 	. 
	ret p			;1018	f0 	. 
	ret p			;1019	f0 	. 
	ret p			;101a	f0 	. 
	ret p			;101b	f0 	. 
	ret p			;101c	f0 	. 
	ret po			;101d	e0 	. 
	ret p			;101e	f0 	. 
	ret po			;101f	e0 	. 
	rra			;1020	1f 	. 
	ld e,01fh		;1021	1e 1f 	. . 
	rra			;1023	1f 	. 
sub_1024h:
	rrca			;1024	0f 	. 
l1025h:
	ld c,00fh		;1025	0e 0f 	. . 
	rrca			;1027	0f 	. 
	rra			;1028	1f 	. 
	inc e			;1029	1c 	. 
sub_102ah:
	rra			;102a	1f 	. 
	rra			;102b	1f 	. 
l102ch:
	rrca			;102c	0f 	. 
	inc c			;102d	0c 	. 
	rrca			;102e	0f 	. 
	rrca			;102f	0f 	. 
	inc bc			;1030	03 	. 
	nop			;1031	00 	. 
	inc bc			;1032	03 	. 
	inc bc			;1033	03 	. 
	inc bc			;1034	03 	. 
	nop			;1035	00 	. 
	inc bc			;1036	03 	. 
	inc bc			;1037	03 	. 
sub_1038h:
	ld bc,l0100h		;1038	01 00 01 	. . . 
	ld bc,l021fh		;103b	01 1f 02 	. . . 
	rra			;103e	1f 	. 
	rra			;103f	1f 	. 
	rst 38h			;1040	ff 	. 
	ld e,c			;1041	59 	Y 
	rst 38h			;1042	ff 	. 
	rst 38h			;1043	ff 	. 
	rst 38h			;1044	ff 	. 
	djnz $+1		;1045	10 ff 	. . 
	rst 38h			;1047	ff 	. 
l1048h:
	rst 38h			;1048	ff 	. 
	nop			;1049	00 	. 
	sub e			;104a	93 	. 
	sub e			;104b	93 	. 
	rst 38h			;104c	ff 	. 
	jr z,l1088h		;104d	28 39 	( 9 
	add hl,sp			;104f	39 	9 
	rst 38h			;1050	ff 	. 
	jr z,l108ch		;1051	28 39 	( 9 
	add hl,sp			;1053	39 	9 
l1054h:
	rst 38h			;1054	ff 	. 
	nop			;1055	00 	. 
	rst 38h			;1056	ff 	. 
	rst 38h			;1057	ff 	. 
	rst 38h			;1058	ff 	. 
	nop			;1059	00 	. 
	rst 38h			;105a	ff 	. 
	rst 38h			;105b	ff 	. 
	rst 38h			;105c	ff 	. 
	nop			;105d	00 	. 
	rst 38h			;105e	ff 	. 
	rst 38h			;105f	ff 	. 
	ret po			;1060	e0 	. 
	ret po			;1061	e0 	. 
	ret po			;1062	e0 	. 
	ret po			;1063	e0 	. 
	ret po			;1064	e0 	. 
	ret po			;1065	e0 	. 
	ret po			;1066	e0 	. 
	ret po			;1067	e0 	. 
	ret p			;1068	f0 	. 
	ld (hl),b			;1069	70 	p 
	ret p			;106a	f0 	. 
	ret p			;106b	f0 	. 
	ret nz			;106c	c0 	. 
	ld b,b			;106d	40 	@ 
	ret nz			;106e	c0 	. 
	ret nz			;106f	c0 	. 
	add a,b			;1070	80 	. 
	nop			;1071	00 	. 
	add a,b			;1072	80 	. 
	add a,b			;1073	80 	. 
	add a,b			;1074	80 	. 
	nop			;1075	00 	. 
	add a,b			;1076	80 	. 
	add a,b			;1077	80 	. 
	nop			;1078	00 	. 
	nop			;1079	00 	. 
	nop			;107a	00 	. 
	nop			;107b	00 	. 
	ret p			;107c	f0 	. 
	add a,b			;107d	80 	. 
	ret p			;107e	f0 	. 
	ret p			;107f	f0 	. 
	ccf			;1080	3f 	? 
	ld bc,l3f3eh+1		;1081	01 3f 3f 	. ? ? 
	ccf			;1084	3f 	? 
	nop			;1085	00 	. 
	ccf			;1086	3f 	? 
	ccf			;1087	3f 	? 
l1088h:
	rra			;1088	1f 	. 
	ld c,01fh		;1089	0e 1f 	. . 
	rra			;108b	1f 	. 
l108ch:
	ld de,l1101h		;108c	11 01 11 	. . . 
	ld de,l0101h		;108f	11 01 01 	. . . 
	ld bc,03f01h		;1092	01 01 3f 	. . ? 
	ld bc,03f01h		;1095	01 01 3f 	. . ? 
	rlca			;1098	07 	. 
	nop			;1099	00 	. 
	nop			;109a	00 	. 
	rlca			;109b	07 	. 
	rrca			;109c	0f 	. 
	nop			;109d	00 	. 
	nop			;109e	00 	. 
	rrca			;109f	0f 	. 
	rst 38h			;10a0	ff 	. 
	add a,e			;10a1	83 	. 
	rst 38h			;10a2	ff 	. 
	rst 38h			;10a3	ff 	. 
	rst 38h			;10a4	ff 	. 
	ld a,h			;10a5	7c 	| 
	rst 38h			;10a6	ff 	. 
	rst 38h			;10a7	ff 	. 
	rst 38h			;10a8	ff 	. 
	nop			;10a9	00 	. 
	rst 38h			;10aa	ff 	. 
	rst 38h			;10ab	ff 	. 
	rst 38h			;10ac	ff 	. 
	ld bc,0ffffh		;10ad	01 ff ff 	. . . 
	rst 38h			;10b0	ff 	. 
	ld bc,0ffffh		;10b1	01 ff ff 	. . . 
	rst 38h			;10b4	ff 	. 
	add a,e			;10b5	83 	. 
	rst 38h			;10b6	ff 	. 
	rst 38h			;10b7	ff 	. 
	rst 38h			;10b8	ff 	. 
	ld b,b			;10b9	40 	@ 
	ld a,h			;10ba	7c 	| 
	rst 38h			;10bb	ff 	. 
	rst 38h			;10bc	ff 	. 
	nop			;10bd	00 	. 
	nop			;10be	00 	. 
	rst 38h			;10bf	ff 	. 
	ret m			;10c0	f8 	. 
	nop			;10c1	00 	. 
	ret m			;10c2	f8 	. 
	ret m			;10c3	f8 	. 
	ret m			;10c4	f8 	. 
	nop			;10c5	00 	. 
	ret m			;10c6	f8 	. 
	ret m			;10c7	f8 	. 
	ret p			;10c8	f0 	. 
	ret po			;10c9	e0 	. 
	ret p			;10ca	f0 	. 
	ret p			;10cb	f0 	. 
	djnz l10ceh		;10cc	10 00 	. . 
l10ceh:
	djnz l10e0h		;10ce	10 10 	. . 
	nop			;10d0	00 	. 
	nop			;10d1	00 	. 
	nop			;10d2	00 	. 
	nop			;10d3	00 	. 
	ret p			;10d4	f0 	. 
	nop			;10d5	00 	. 
	nop			;10d6	00 	. 
	ret p			;10d7	f0 	. 
	ret nz			;10d8	c0 	. 
	nop			;10d9	00 	. 
	nop			;10da	00 	. 
	ret nz			;10db	c0 	. 
	ret nz			;10dc	c0 	. 
	nop			;10dd	00 	. 
	nop			;10de	00 	. 
	ret nz			;10df	c0 	. 
l10e0h:
	ld bc,sub_0000h		;10e0	01 00 00 	. . . 
	ld bc,sub_0003h		;10e3	01 03 00 	. . . 
	nop			;10e6	00 	. 
	inc bc			;10e7	03 	. 
	ld bc,l0101h		;10e8	01 01 01 	. . . 
	ld bc,sub_0000h+1		;10eb	01 01 00 	. . . 
	ld bc,l0101h		;10ee	01 01 01 	. . . 
	nop			;10f1	00 	. 
	ld bc,sub_0000h+1		;10f2	01 01 00 	. . . 
	nop			;10f5	00 	. 
	nop			;10f6	00 	. 
	nop			;10f7	00 	. 
	nop			;10f8	00 	. 
	nop			;10f9	00 	. 
	nop			;10fa	00 	. 
	nop			;10fb	00 	. 
	nop			;10fc	00 	. 
	nop			;10fd	00 	. 
l10feh:
	nop			;10fe	00 	. 
	nop			;10ff	00 	. 
	rst 38h			;1100	ff 	. 
l1101h:
	nop			;1101	00 	. 
	nop			;1102	00 	. 
	rst 38h			;1103	ff 	. 
	rst 38h			;1104	ff 	. 
	add a,h			;1105	84 	. 
	add a,h			;1106	84 	. 
	rst 38h			;1107	ff 	. 
	rst 38h			;1108	ff 	. 
	rst 0			;1109	c7 	. 
	rst 0			;110a	c7 	. 
	rst 38h			;110b	ff 	. 
	rst 38h			;110c	ff 	. 
	jr z,l10feh		;110d	28 ef 	( . 
	rst 38h			;110f	ff 	. 
	rst 28h			;1110	ef 	. 
	nop			;1111	00 	. 
	rst 28h			;1112	ef 	. 
	rst 28h			;1113	ef 	. 
	xor 000h		;1114	ee 00 	. . 
	xor 0eeh		;1116	ee ee 	. . 
	xor 000h		;1118	ee 00 	. . 
	xor 0eeh		;111a	ee ee 	. . 
	add a,000h		;111c	c6 00 	. . 
	add a,0c6h		;111e	c6 c6 	. . 
	ld b,b			;1120	40 	@ 
	nop			;1121	00 	. 
	nop			;1122	00 	. 
	ld b,b			;1123	40 	@ 
	nop			;1124	00 	. 
	nop			;1125	00 	. 
	nop			;1126	00 	. 
	nop			;1127	00 	. 
	nop			;1128	00 	. 
	nop			;1129	00 	. 
	nop			;112a	00 	. 
	nop			;112b	00 	. 
	nop			;112c	00 	. 
	nop			;112d	00 	. 
	nop			;112e	00 	. 
l112fh:
	nop			;112f	00 	. 
	nop			;1130	00 	. 
	nop			;1131	00 	. 
	nop			;1132	00 	. 
	nop			;1133	00 	. 
	nop			;1134	00 	. 
sub_1135h:
	nop			;1135	00 	. 
	nop			;1136	00 	. 
	nop			;1137	00 	. 
	nop			;1138	00 	. 
	nop			;1139	00 	. 
	nop			;113a	00 	. 
	nop			;113b	00 	. 
	nop			;113c	00 	. 
	nop			;113d	00 	. 
	nop			;113e	00 	. 
	nop			;113f	00 	. 
	nop			;1140	00 	. 
	nop			;1141	00 	. 
	nop			;1142	00 	. 
	nop			;1143	00 	. 
	nop			;1144	00 	. 
	nop			;1145	00 	. 
	nop			;1146	00 	. 
	nop			;1147	00 	. 
	nop			;1148	00 	. 
	nop			;1149	00 	. 
	nop			;114a	00 	. 
	nop			;114b	00 	. 
	nop			;114c	00 	. 
	nop			;114d	00 	. 
	nop			;114e	00 	. 
	nop			;114f	00 	. 
	nop			;1150	00 	. 
	nop			;1151	00 	. 
	nop			;1152	00 	. 
	nop			;1153	00 	. 
	nop			;1154	00 	. 
	nop			;1155	00 	. 
	nop			;1156	00 	. 
	nop			;1157	00 	. 
	nop			;1158	00 	. 
	nop			;1159	00 	. 
	nop			;115a	00 	. 
	nop			;115b	00 	. 
	nop			;115c	00 	. 
	nop			;115d	00 	. 
	nop			;115e	00 	. 
	nop			;115f	00 	. 
	nop			;1160	00 	. 
	nop			;1161	00 	. 
	nop			;1162	00 	. 
	rrca			;1163	0f 	. 
	ld bc,sub_0000h		;1164	01 00 00 	. . . 
	ld a,000h		;1167	3e 00 	> . 
	nop			;1169	00 	. 
	nop			;116a	00 	. 
	ld a,a			;116b	7f 	 
	nop			;116c	00 	. 
	nop			;116d	00 	. 
	nop			;116e	00 	. 
	ld a,a			;116f	7f 	 
	nop			;1170	00 	. 
	nop			;1171	00 	. 
	nop			;1172	00 	. 
	rst 38h			;1173	ff 	. 
	nop			;1174	00 	. 
	nop			;1175	00 	. 
	nop			;1176	00 	. 
	rst 38h			;1177	ff 	. 
	nop			;1178	00 	. 
	nop			;1179	00 	. 
	nop			;117a	00 	. 
	rst 38h			;117b	ff 	. 
	inc bc			;117c	03 	. 
	inc bc			;117d	03 	. 
	nop			;117e	00 	. 
	call m,sub_0000h		;117f	fc 00 00 	. . . 
	nop			;1182	00 	. 
	add a,b			;1183	80 	. 
	nop			;1184	00 	. 
	nop			;1185	00 	. 
	nop			;1186	00 	. 
	ret po			;1187	e0 	. 
	ld b,b			;1188	40 	@ 
	nop			;1189	00 	. 
	nop			;118a	00 	. 
	or b			;118b	b0 	. 
	jr nz,l118eh		;118c	20 00 	  . 
l118eh:
	nop			;118e	00 	. 
	ret nc			;118f	d0 	. 
	nop			;1190	00 	. 
	nop			;1191	00 	. 
	nop			;1192	00 	. 
	ret m			;1193	f8 	. 
	nop			;1194	00 	. 
	nop			;1195	00 	. 
	nop			;1196	00 	. 
	ret m			;1197	f8 	. 
	nop			;1198	00 	. 
	nop			;1199	00 	. 
	nop			;119a	00 	. 
	ret m			;119b	f8 	. 
	inc c			;119c	0c 	. 
	inc a			;119d	3c 	< 
	ret nz			;119e	c0 	. 
	ret nz			;119f	c0 	. 
	nop			;11a0	00 	. 
	nop			;11a1	00 	. 
	nop			;11a2	00 	. 
	nop			;11a3	00 	. 
	nop			;11a4	00 	. 
	nop			;11a5	00 	. 
	nop			;11a6	00 	. 
	nop			;11a7	00 	. 
	nop			;11a8	00 	. 
	nop			;11a9	00 	. 
	nop			;11aa	00 	. 
	nop			;11ab	00 	. 
	ex af,af'			;11ac	08 	. 
	ld c,008h		;11ad	0e 08 	. . 
	ex af,af'			;11af	08 	. 
	djnz l11d1h		;11b0	10 1f 	. . 
	djnz $+18		;11b2	10 10 	. . 
	djnz l11d4h		;11b4	10 1e 	. . 
	ld de,l0811h		;11b6	11 11 08 	. . . 
	inc c			;11b9	0c 	. 
	dec bc			;11ba	0b 	. 
	dec bc			;11bb	0b 	. 
	ld b,006h		;11bc	06 06 	. . 
	rlca			;11be	07 	. 
	rlca			;11bf	07 	. 
	inc a			;11c0	3c 	< 
	dec h			;11c1	25 	% 
	ld (bc),a			;11c2	02 	. 
	jp nz,0a2c9h		;11c3	c2 c9 a2 	. . . 
	inc d			;11c6	14 	. 
l11c7h:
	inc d			;11c7	14 	. 
	ret			;11c8	c9 	. 
	and d			;11c9	a2 	. 
	inc d			;11ca	14 	. 
	inc d			;11cb	14 	. 
	ret z			;11cc	c8 	. 
	and e			;11cd	a3 	. 
l11ceh:
	inc d			;11ce	14 	. 
	inc d			;11cf	14 	. 
	cp b			;11d0	b8 	. 
l11d1h:
	res 0,h		;11d1	cb 84 	. . 
	add a,h			;11d3	84 	. 
l11d4h:
	jr l11c7h		;11d4	18 f1 	. . 
	ld b,006h		;11d6	06 06 	. . 
	inc b			;11d8	04 	. 
	ld (hl),b			;11d9	70 	p 
	adc a,e			;11da	8b 	. 
	adc a,e			;11db	8b 	. 
	inc bc			;11dc	03 	. 
	add hl,sp			;11dd	39 	9 
	call nz,0d0c5h		;11de	c4 c5 d0 	. . . 
	jr z,l11e3h		;11e1	28 00 	( . 
l11e3h:
	nop			;11e3	00 	. 
	ret c			;11e4	d8 	. 
	ld (hl),d			;11e5	72 	r 
	ld d,b			;11e6	50 	P 
	ld d,b			;11e7	50 	P 
	ret c			;11e8	d8 	. 
	ld (hl),d			;11e9	72 	r 
	ld d,h			;11ea	54 	T 
	ld d,h			;11eb	54 	T 
	nop			;11ec	00 	. 
	ei			;11ed	fb 	. 
	inc b			;11ee	04 	. 
	inc b			;11ef	04 	. 
	ret po			;11f0	e0 	. 
	ld a,(de)			;11f1	1a 	. 
	add a,h			;11f2	84 	. 
	inc b			;11f3	04 	. 
	ld h,b			;11f4	60 	` 
	sbc a,b			;11f5	98 	. 
	ld h,h			;11f6	64 	d 
	inc b			;11f7	04 	. 
	ld a,b			;11f8	78 	x 
	adc a,b			;11f9	88 	. 
	nop			;11fa	00 	. 
	ex af,af'			;11fb	08 	. 
	ret p			;11fc	f0 	. 
	nop			;11fd	00 	. 
	nop			;11fe	00 	. 
	nop			;11ff	00 	. 
	ld bc,l0101h		;1200	01 01 01 	. . . 
	ld bc,sub_0000h		;1203	01 00 00 	. . . 
	nop			;1206	00 	. 
	nop			;1207	00 	. 
	inc bc			;1208	03 	. 
	inc bc			;1209	03 	. 
	inc bc			;120a	03 	. 
	inc bc			;120b	03 	. 
	ld (bc),a			;120c	02 	. 
	inc bc			;120d	03 	. 
	ld (bc),a			;120e	02 	. 
	inc bc			;120f	03 	. 
	inc bc			;1210	03 	. 
	ld (bc),a			;1211	02 	. 
	ld (bc),a			;1212	02 	. 
	ld (bc),a			;1213	02 	. 
	rlca			;1214	07 	. 
	inc b			;1215	04 	. 
	inc b			;1216	04 	. 
	inc b			;1217	04 	. 
	rlca			;1218	07 	. 
	inc b			;1219	04 	. 
	inc b			;121a	04 	. 
	inc b			;121b	04 	. 
	ld c,b			;121c	48 	H 
	add hl,bc			;121d	09 	. 
	ld c,(hl)			;121e	4e 	N 
	ld c,080h		;121f	0e 80 	. . 
	cp b			;1221	b8 	. 
	rst 0			;1222	c7 	. 
	rst 0			;1223	c7 	. 
	add a,b			;1224	80 	. 
	cp h			;1225	bc 	. 
	jp l00c3h		;1226	c3 c3 00 	. . . 
	sbc a,021h		;1229	de 21 	. ! 
	pop hl			;122b	e1 	. 
	ld b,b			;122c	40 	@ 
	xor a			;122d	af 	. 
	djnz $-14		;122e	10 f0 	. . 
l1230h:
	ret po			;1230	e0 	. 
	sbc a,a			;1231	9f 	. 
	nop			;1232	00 	. 
	rst 38h			;1233	ff 	. 
	rst 20h			;1234	e7 	. 
	ld e,b			;1235	58 	X 
	nop			;1236	00 	. 
	ld a,a			;1237	7f 	 
	rst 38h			;1238	ff 	. 
	ld h,b			;1239	60 	` 
	jr nz,l12bbh		;123a	20 7f 	   
	sbc a,a			;123c	9f 	. 
	inc de			;123d	13 	. 
	inc de			;123e	13 	. 
l123fh:
	rra			;123f	1f 	. 
	nop			;1240	00 	. 
	nop			;1241	00 	. 
	ret nz			;1242	c0 	. 
	ret nz			;1243	c0 	. 
	nop			;1244	00 	. 
	nop			;1245	00 	. 
	ret nz			;1246	c0 	. 
	ret nz			;1247	c0 	. 
	nop			;1248	00 	. 
	nop			;1249	00 	. 
	add a,b			;124a	80 	. 
	add a,b			;124b	80 	. 
	jr nc,l11ceh		;124c	30 80 	0 . 
	nop			;124e	00 	. 
	nop			;124f	00 	. 
	ret m			;1250	f8 	. 
	nop			;1251	00 	. 
	nop			;1252	00 	. 
	add a,b			;1253	80 	. 
	ret m			;1254	f8 	. 
l1255h:
	nop			;1255	00 	. 
	nop			;1256	00 	. 
	add a,b			;1257	80 	. 
	ret nz			;1258	c0 	. 
	jr c,l125bh		;1259	38 00 	8 . 
l125bh:
	add a,b			;125b	80 	. 
	add a,b			;125c	80 	. 
	cp b			;125d	b8 	. 
	ret nz			;125e	c0 	. 
	ret nz			;125f	c0 	. 
	ret p			;1260	f0 	. 
	rla			;1261	17 	. 
	ret m			;1262	f8 	. 
	jr l1255h		;1263	18 f0 	. . 
	rla			;1265	17 	. 
	ld a,b			;1266	78 	x 
	jr $+1		;1267	18 ff 	. . 
	adc a,a			;1269	8f 	. 
	cp a			;126a	bf 	. 
	adc a,a			;126b	8f 	. 
	ld a,a			;126c	7f 	 
	ld b,b			;126d	40 	@ 
	ld c,a			;126e	4f 	O 
	ld b,b			;126f	40 	@ 
	ccf			;1270	3f 	? 
	jr nc,l12a3h		;1271	30 30 	0 0 
	jr nc,l1281h		;1273	30 0c 	0 . 
	inc c			;1275	0c 	. 
	ex af,af'			;1276	08 	. 
	rrca			;1277	0f 	. 
	inc c			;1278	0c 	. 
	inc c			;1279	0c 	. 
	ex af,af'			;127a	08 	. 
	rrca			;127b	0f 	. 
	rlca			;127c	07 	. 
	inc b			;127d	04 	. 
	inc b			;127e	04 	. 
	inc b			;127f	04 	. 
	inc c			;1280	0c 	. 
l1281h:
	adc a,h			;1281	8c 	. 
	inc c			;1282	0c 	. 
	inc c			;1283	0c 	. 
	ld a,a			;1284	7f 	 
	add a,b			;1285	80 	. 
	ld a,a			;1286	7f 	 
	rra			;1287	1f 	. 
	rst 38h			;1288	ff 	. 
	nop			;1289	00 	. 
	rst 38h			;128a	ff 	. 
	inc bc			;128b	03 	. 
	rst 38h			;128c	ff 	. 
	nop			;128d	00 	. 
	rst 38h			;128e	ff 	. 
	nop			;128f	00 	. 
	rst 38h			;1290	ff 	. 
	nop			;1291	00 	. 
	nop			;1292	00 	. 
	nop			;1293	00 	. 
	rst 38h			;1294	ff 	. 
	rst 38h			;1295	ff 	. 
	ld a,a			;1296	7f 	 
	rst 38h			;1297	ff 	. 
	add a,b			;1298	80 	. 
	nop			;1299	00 	. 
	nop			;129a	00 	. 
	nop			;129b	00 	. 
	nop			;129c	00 	. 
	nop			;129d	00 	. 
	nop			;129e	00 	. 
	nop			;129f	00 	. 
	add a,b			;12a0	80 	. 
	cp h			;12a1	bc 	. 
	ret nz			;12a2	c0 	. 
l12a3h:
	ret nz			;12a3	c0 	. 
	add a,d			;12a4	82 	. 
	adc a,h			;12a5	8c 	. 
	jp p,0fff0h		;12a6	f2 f0 ff 	. . . 
	ld a,b			;12a9	78 	x 
	cp 0f8h		;12aa	fe f8 	. . 
	cp 000h		;12ac	fe 00 	. . 
	call m,0fc00h		;12ae	fc 00 fc 	. . . 
	nop			;12b1	00 	. 
	nop			;12b2	00 	. 
	nop			;12b3	00 	. 
	ret z			;12b4	c8 	. 
	ret z			;12b5	c8 	. 
	add a,b			;12b6	80 	. 
	ret m			;12b7	f8 	. 
	ret z			;12b8	c8 	. 
	ret nz			;12b9	c0 	. 
	add a,b			;12ba	80 	. 
l12bbh:
	ret p			;12bb	f0 	. 
	ld (hl),b			;12bc	70 	p 
	ld b,b			;12bd	40 	@ 
	ld b,b			;12be	40 	@ 
	ld b,b			;12bf	40 	@ 
	nop			;12c0	00 	. 
	nop			;12c1	00 	. 
	nop			;12c2	00 	. 
	nop			;12c3	00 	. 
	nop			;12c4	00 	. 
	nop			;12c5	00 	. 
	nop			;12c6	00 	. 
	nop			;12c7	00 	. 
	nop			;12c8	00 	. 
	nop			;12c9	00 	. 
	nop			;12ca	00 	. 
	nop			;12cb	00 	. 
	nop			;12cc	00 	. 
	nop			;12cd	00 	. 
	nop			;12ce	00 	. 
	nop			;12cf	00 	. 
	nop			;12d0	00 	. 
	nop			;12d1	00 	. 
	nop			;12d2	00 	. 
	nop			;12d3	00 	. 
	nop			;12d4	00 	. 
	nop			;12d5	00 	. 
	nop			;12d6	00 	. 
	nop			;12d7	00 	. 
	nop			;12d8	00 	. 
	nop			;12d9	00 	. 
	nop			;12da	00 	. 
	nop			;12db	00 	. 
	nop			;12dc	00 	. 
	nop			;12dd	00 	. 
	nop			;12de	00 	. 
	nop			;12df	00 	. 
	nop			;12e0	00 	. 
	nop			;12e1	00 	. 
	nop			;12e2	00 	. 
	rrca			;12e3	0f 	. 
	ld bc,sub_0000h		;12e4	01 00 00 	. . . 
	ld a,000h		;12e7	3e 00 	> . 
	nop			;12e9	00 	. 
	nop			;12ea	00 	. 
	ld a,a			;12eb	7f 	 
	nop			;12ec	00 	. 
	nop			;12ed	00 	. 
	nop			;12ee	00 	. 
	ld a,a			;12ef	7f 	 
	nop			;12f0	00 	. 
	nop			;12f1	00 	. 
	nop			;12f2	00 	. 
	rst 38h			;12f3	ff 	. 
	nop			;12f4	00 	. 
	nop			;12f5	00 	. 
	nop			;12f6	00 	. 
	rst 38h			;12f7	ff 	. 
	nop			;12f8	00 	. 
	nop			;12f9	00 	. 
	nop			;12fa	00 	. 
	rst 38h			;12fb	ff 	. 
	inc bc			;12fc	03 	. 
	inc bc			;12fd	03 	. 
	nop			;12fe	00 	. 
	call m,sub_0000h		;12ff	fc 00 00 	. . . 
	nop			;1302	00 	. 
	add a,b			;1303	80 	. 
	nop			;1304	00 	. 
	nop			;1305	00 	. 
	nop			;1306	00 	. 
	ret po			;1307	e0 	. 
	ld b,b			;1308	40 	@ 
	nop			;1309	00 	. 
	nop			;130a	00 	. 
	or b			;130b	b0 	. 
	jr nz,l130eh		;130c	20 00 	  . 
l130eh:
	nop			;130e	00 	. 
	ret nc			;130f	d0 	. 
	nop			;1310	00 	. 
	nop			;1311	00 	. 
	nop			;1312	00 	. 
l1313h:
	ret m			;1313	f8 	. 
	nop			;1314	00 	. 
	nop			;1315	00 	. 
	nop			;1316	00 	. 
	ret m			;1317	f8 	. 
	nop			;1318	00 	. 
	nop			;1319	00 	. 
	nop			;131a	00 	. 
	ret m			;131b	f8 	. 
l131ch:
	inc c			;131c	0c 	. 
	inc a			;131d	3c 	< 
	ret nz			;131e	c0 	. 
	ret nz			;131f	c0 	. 
	nop			;1320	00 	. 
	nop			;1321	00 	. 
	nop			;1322	00 	. 
	nop			;1323	00 	. 
	nop			;1324	00 	. 
	nop			;1325	00 	. 
l1326h:
	nop			;1326	00 	. 
	nop			;1327	00 	. 
	nop			;1328	00 	. 
	nop			;1329	00 	. 
l132ah:
	nop			;132a	00 	. 
	nop			;132b	00 	. 
	nop			;132c	00 	. 
	nop			;132d	00 	. 
	nop			;132e	00 	. 
	nop			;132f	00 	. 
	nop			;1330	00 	. 
	nop			;1331	00 	. 
	nop			;1332	00 	. 
	nop			;1333	00 	. 
	nop			;1334	00 	. 
	ld bc,sub_0000h		;1335	01 00 00 	. . . 
	djnz l1359h		;1338	10 1f 	. . 
	djnz l134ch		;133a	10 10 	. . 
	jr nz,l137ch		;133c	20 3e 	  > 
	ld hl,l3c21h		;133e	21 21 3c 	! ! < 
	dec h			;1341	25 	% 
	ld (bc),a			;1342	02 	. 
	jp nz,0a2c9h		;1343	c2 c9 a2 	. . . 
	inc d			;1346	14 	. 
l1347h:
	inc d			;1347	14 	. 
	ret			;1348	c9 	. 
	and d			;1349	a2 	. 
	inc d			;134a	14 	. 
	inc d			;134b	14 	. 
l134ch:
	ret z			;134c	c8 	. 
	and e			;134d	a3 	. 
l134eh:
	inc d			;134e	14 	. 
	inc d			;134f	14 	. 
	cp b			;1350	b8 	. 
	res 0,h		;1351	cb 84 	. . 
	add a,h			;1353	84 	. 
	jr l1347h		;1354	18 f1 	. . 
	ld b,006h		;1356	06 06 	. . 
	inc b			;1358	04 	. 
l1359h:
	ld (hl),b			;1359	70 	p 
	adc a,e			;135a	8b 	. 
	adc a,e			;135b	8b 	. 
	inc bc			;135c	03 	. 
	add hl,sp			;135d	39 	9 
	call nz,0d0c5h		;135e	c4 c5 d0 	. . . 
	jr z,l1363h		;1361	28 00 	( . 
l1363h:
	nop			;1363	00 	. 
	ret c			;1364	d8 	. 
	ld (hl),d			;1365	72 	r 
	ld d,b			;1366	50 	P 
	ld d,b			;1367	50 	P 
l1368h:
	ret c			;1368	d8 	. 
	ld (hl),d			;1369	72 	r 
	ld d,h			;136a	54 	T 
	ld d,h			;136b	54 	T 
	nop			;136c	00 	. 
	ei			;136d	fb 	. 
	inc b			;136e	04 	. 
	inc b			;136f	04 	. 
	ret po			;1370	e0 	. 
	ld a,(de)			;1371	1a 	. 
	add a,h			;1372	84 	. 
	inc b			;1373	04 	. 
	ld h,b			;1374	60 	` 
	sbc a,b			;1375	98 	. 
	ld h,h			;1376	64 	d 
	inc b			;1377	04 	. 
	ld a,b			;1378	78 	x 
	adc a,b			;1379	88 	. 
	nop			;137a	00 	. 
	ex af,af'			;137b	08 	. 
l137ch:
	ret p			;137c	f0 	. 
	nop			;137d	00 	. 
	nop			;137e	00 	. 
	nop			;137f	00 	. 
	jr nz,l13beh		;1380	20 3c 	  < 
	inc hl			;1382	23 	# 
	inc hl			;1383	23 	# 
	inc de			;1384	13 	. 
	rra			;1385	1f 	. 
	inc de			;1386	13 	. 
	inc de			;1387	13 	. 
	rrca			;1388	0f 	. 
	rrca			;1389	0f 	. 
	rrca			;138a	0f 	. 
	rrca			;138b	0f 	. 
	ld (bc),a			;138c	02 	. 
	inc bc			;138d	03 	. 
	ld (bc),a			;138e	02 	. 
	inc bc			;138f	03 	. 
	inc bc			;1390	03 	. 
	ld (bc),a			;1391	02 	. 
	ld (bc),a			;1392	02 	. 
	ld (bc),a			;1393	02 	. 
	rlca			;1394	07 	. 
	inc b			;1395	04 	. 
	inc b			;1396	04 	. 
	inc b			;1397	04 	. 
	rlca			;1398	07 	. 
	inc b			;1399	04 	. 
	inc b			;139a	04 	. 
	inc b			;139b	04 	. 
	ld c,b			;139c	48 	H 
	add hl,bc			;139d	09 	. 
	ld c,(hl)			;139e	4e 	N 
	ld c,080h		;139f	0e 80 	. . 
	cp b			;13a1	b8 	. 
	rst 0			;13a2	c7 	. 
	rst 0			;13a3	c7 	. 
	add a,b			;13a4	80 	. 
	cp h			;13a5	bc 	. 
	jp l00c3h		;13a6	c3 c3 00 	. . . 
	sbc a,021h		;13a9	de 21 	. ! 
	pop hl			;13ab	e1 	. 
	ld b,b			;13ac	40 	@ 
	xor a			;13ad	af 	. 
	djnz $-14		;13ae	10 f0 	. . 
	ret po			;13b0	e0 	. 
	sbc a,a			;13b1	9f 	. 
	nop			;13b2	00 	. 
	rst 38h			;13b3	ff 	. 
	rst 20h			;13b4	e7 	. 
	ld e,b			;13b5	58 	X 
	nop			;13b6	00 	. 
	ld a,a			;13b7	7f 	 
	rst 38h			;13b8	ff 	. 
	ld h,b			;13b9	60 	` 
	jr nz,l143bh		;13ba	20 7f 	   
	sbc a,a			;13bc	9f 	. 
	inc de			;13bd	13 	. 
l13beh:
	inc de			;13be	13 	. 
	rra			;13bf	1f 	. 
	nop			;13c0	00 	. 
	nop			;13c1	00 	. 
	ret nz			;13c2	c0 	. 
	ret nz			;13c3	c0 	. 
	nop			;13c4	00 	. 
	nop			;13c5	00 	. 
	ret nz			;13c6	c0 	. 
	ret nz			;13c7	c0 	. 
	nop			;13c8	00 	. 
	nop			;13c9	00 	. 
	add a,b			;13ca	80 	. 
	add a,b			;13cb	80 	. 
	jr nc,l134eh		;13cc	30 80 	0 . 
	nop			;13ce	00 	. 
	nop			;13cf	00 	. 
	ret m			;13d0	f8 	. 
	nop			;13d1	00 	. 
	nop			;13d2	00 	. 
	add a,b			;13d3	80 	. 
	ret m			;13d4	f8 	. 
l13d5h:
	nop			;13d5	00 	. 
	nop			;13d6	00 	. 
	add a,b			;13d7	80 	. 
	ret nz			;13d8	c0 	. 
	jr c,l13dbh		;13d9	38 00 	8 . 
l13dbh:
	add a,b			;13db	80 	. 
	add a,b			;13dc	80 	. 
	cp b			;13dd	b8 	. 
	ret nz			;13de	c0 	. 
	ret nz			;13df	c0 	. 
	ret p			;13e0	f0 	. 
	rla			;13e1	17 	. 
	ret m			;13e2	f8 	. 
	jr l13d5h		;13e3	18 f0 	. . 
	rla			;13e5	17 	. 
	ld a,b			;13e6	78 	x 
	jr $+1		;13e7	18 ff 	. . 
	adc a,a			;13e9	8f 	. 
	cp a			;13ea	bf 	. 
	adc a,a			;13eb	8f 	. 
	ld a,a			;13ec	7f 	 
	ld b,b			;13ed	40 	@ 
	ld c,a			;13ee	4f 	O 
	ld b,b			;13ef	40 	@ 
	ccf			;13f0	3f 	? 
	jr nc,l1423h		;13f1	30 30 	0 0 
	jr nc,l1401h		;13f3	30 0c 	0 . 
	inc c			;13f5	0c 	. 
	ex af,af'			;13f6	08 	. 
	rrca			;13f7	0f 	. 
	inc c			;13f8	0c 	. 
	inc c			;13f9	0c 	. 
	ex af,af'			;13fa	08 	. 
	rrca			;13fb	0f 	. 
	rlca			;13fc	07 	. 
	inc b			;13fd	04 	. 
	inc b			;13fe	04 	. 
	inc b			;13ff	04 	. 
	inc c			;1400	0c 	. 
l1401h:
	adc a,h			;1401	8c 	. 
	inc c			;1402	0c 	. 
	inc c			;1403	0c 	. 
l1404h:
	ld a,a			;1404	7f 	 
	add a,b			;1405	80 	. 
	ld a,a			;1406	7f 	 
	rra			;1407	1f 	. 
	rst 38h			;1408	ff 	. 
	nop			;1409	00 	. 
	rst 38h			;140a	ff 	. 
	inc bc			;140b	03 	. 
	rst 38h			;140c	ff 	. 
	nop			;140d	00 	. 
	rst 38h			;140e	ff 	. 
	nop			;140f	00 	. 
	rst 38h			;1410	ff 	. 
	nop			;1411	00 	. 
	nop			;1412	00 	. 
	nop			;1413	00 	. 
	rst 38h			;1414	ff 	. 
	rst 38h			;1415	ff 	. 
	ld a,a			;1416	7f 	 
	rst 38h			;1417	ff 	. 
	add a,b			;1418	80 	. 
	nop			;1419	00 	. 
	nop			;141a	00 	. 
	nop			;141b	00 	. 
	nop			;141c	00 	. 
	nop			;141d	00 	. 
	nop			;141e	00 	. 
	nop			;141f	00 	. 
	add a,b			;1420	80 	. 
	cp h			;1421	bc 	. 
	ret nz			;1422	c0 	. 
l1423h:
	ret nz			;1423	c0 	. 
sub_1424h:
	add a,d			;1424	82 	. 
	adc a,h			;1425	8c 	. 
	jp p,0fff0h		;1426	f2 f0 ff 	. . . 
	ld a,b			;1429	78 	x 
	cp 0f8h		;142a	fe f8 	. . 
	cp 000h		;142c	fe 00 	. . 
	call m,0fc00h		;142e	fc 00 fc 	. . . 
	nop			;1431	00 	. 
	nop			;1432	00 	. 
	nop			;1433	00 	. 
	ret z			;1434	c8 	. 
	ret z			;1435	c8 	. 
	add a,b			;1436	80 	. 
	ret m			;1437	f8 	. 
	ret z			;1438	c8 	. 
	ret nz			;1439	c0 	. 
	add a,b			;143a	80 	. 
l143bh:
	ret p			;143b	f0 	. 
	ld (hl),b			;143c	70 	p 
l143dh:
	ld b,b			;143d	40 	@ 
	ld b,b			;143e	40 	@ 
	ld b,b			;143f	40 	@ 
	nop			;1440	00 	. 
	nop			;1441	00 	. 
	nop			;1442	00 	. 
	nop			;1443	00 	. 
	nop			;1444	00 	. 
	nop			;1445	00 	. 
	nop			;1446	00 	. 
	inc bc			;1447	03 	. 
sub_1448h:
	nop			;1448	00 	. 
	nop			;1449	00 	. 
	nop			;144a	00 	. 
	rlca			;144b	07 	. 
	nop			;144c	00 	. 
	nop			;144d	00 	. 
	nop			;144e	00 	. 
	rlca			;144f	07 	. 
	nop			;1450	00 	. 
	nop			;1451	00 	. 
	nop			;1452	00 	. 
	rrca			;1453	0f 	. 
	nop			;1454	00 	. 
	nop			;1455	00 	. 
	nop			;1456	00 	. 
	rrca			;1457	0f 	. 
l1458h:
	nop			;1458	00 	. 
	nop			;1459	00 	. 
	nop			;145a	00 	. 
	rrca			;145b	0f 	. 
	ld bc,sub_0000h+1		;145c	01 01 00 	. . . 
	ld c,000h		;145f	0e 00 	. . 
	nop			;1461	00 	. 
	nop			;1462	00 	. 
	ret m			;1463	f8 	. 
	djnz l1466h		;1464	10 00 	. . 
l1466h:
	nop			;1466	00 	. 
	xor 004h		;1467	ee 04 	. . 
	nop			;1469	00 	. 
	nop			;146a	00 	. 
	ei			;146b	fb 	. 
	ld (bc),a			;146c	02 	. 
	nop			;146d	00 	. 
	nop			;146e	00 	. 
	defb 0fdh,000h,000h	;illegal sequence		;146f	fd 00 00 	. . . 
	nop			;1472	00 	. 
	rst 38h			;1473	ff 	. 
	nop			;1474	00 	. 
	nop			;1475	00 	. 
	nop			;1476	00 	. 
	rst 38h			;1477	ff 	. 
	nop			;1478	00 	. 
	nop			;1479	00 	. 
	nop			;147a	00 	. 
	rst 38h			;147b	ff 	. 
	add a,b			;147c	80 	. 
	sbc a,a			;147d	9f 	. 
	ld h,b			;147e	60 	` 
	ld h,b			;147f	60 	` 
	nop			;1480	00 	. 
	nop			;1481	00 	. 
	nop			;1482	00 	. 
	nop			;1483	00 	. 
	nop			;1484	00 	. 
	nop			;1485	00 	. 
	nop			;1486	00 	. 
	nop			;1487	00 	. 
	nop			;1488	00 	. 
	nop			;1489	00 	. 
	nop			;148a	00 	. 
	nop			;148b	00 	. 
	nop			;148c	00 	. 
	nop			;148d	00 	. 
	nop			;148e	00 	. 
	nop			;148f	00 	. 
	nop			;1490	00 	. 
	nop			;1491	00 	. 
	nop			;1492	00 	. 
	add a,b			;1493	80 	. 
	nop			;1494	00 	. 
	nop			;1495	00 	. 
	nop			;1496	00 	. 
	add a,b			;1497	80 	. 
	nop			;1498	00 	. 
	nop			;1499	00 	. 
	nop			;149a	00 	. 
	add a,b			;149b	80 	. 
	add a,b			;149c	80 	. 
	add a,b			;149d	80 	. 
	nop			;149e	00 	. 
	nop			;149f	00 	. 
	rlca			;14a0	07 	. 
	inc b			;14a1	04 	. 
	nop			;14a2	00 	. 
	ex af,af'			;14a3	08 	. 
	add hl,bc			;14a4	09 	. 
	inc c			;14a5	0c 	. 
	ld (bc),a			;14a6	02 	. 
	ld (bc),a			;14a7	02 	. 
	add hl,bc			;14a8	09 	. 
	inc c			;14a9	0c 	. 
	ld (bc),a			;14aa	02 	. 
	ld (bc),a			;14ab	02 	. 
	add hl,bc			;14ac	09 	. 
	inc c			;14ad	0c 	. 
	ld (bc),a			;14ae	02 	. 
	ld (bc),a			;14af	02 	. 
	ld b,004h		;14b0	06 04 	. . 
	ld bc,sub_0000h+1		;14b2	01 01 00 	. . . 
	rlca			;14b5	07 	. 
	nop			;14b6	00 	. 
	nop			;14b7	00 	. 
	nop			;14b8	00 	. 
	rrca			;14b9	0f 	. 
	nop			;14ba	00 	. 
	nop			;14bb	00 	. 
	nop			;14bc	00 	. 
	ld e,001h		;14bd	1e 01 	. . 
	ld bc,0a59ah		;14bf	01 9a a5 	. . . 
	ld b,b			;14c2	40 	@ 
	ld b,b			;14c3	40 	@ 
	dec sp			;14c4	3b 	; 
	ld c,(hl)			;14c5	4e 	N 
	adc a,d			;14c6	8a 	. 
	adc a,d			;14c7	8a 	. 
	dec sp			;14c8	3b 	; 
	ld c,(hl)			;14c9	4e 	N 
	adc a,d			;14ca	8a 	. 
	adc a,d			;14cb	8a 	. 
	nop			;14cc	00 	. 
	ld a,a			;14cd	7f 	 
	add a,b			;14ce	80 	. 
	add a,b			;14cf	80 	. 
	inc b			;14d0	04 	. 
	ld a,e			;14d1	7b 	{ 
	add a,b			;14d2	80 	. 
	add a,b			;14d3	80 	. 
l14d4h:
	add a,h			;14d4	84 	. 
	dec sp			;14d5	3b 	; 
	ld b,h			;14d6	44 	D 
	ld b,b			;14d7	40 	@ 
	ld b,c			;14d8	41 	A 
	adc a,(hl)			;14d9	8e 	. 
	jr nc,l150ch		;14da	30 30 	0 0 
	ld a,0d0h		;14dc	3e d0 	> . 
	ld bc,l0010h+1		;14de	01 11 00 	. . . 
	nop			;14e1	00 	. 
	nop			;14e2	00 	. 
	nop			;14e3	00 	. 
	nop			;14e4	00 	. 
	nop			;14e5	00 	. 
	nop			;14e6	00 	. 
	nop			;14e7	00 	. 
	nop			;14e8	00 	. 
	nop			;14e9	00 	. 
	nop			;14ea	00 	. 
	nop			;14eb	00 	. 
	nop			;14ec	00 	. 
	ld b,b			;14ed	40 	@ 
	add a,b			;14ee	80 	. 
	add a,b			;14ef	80 	. 
	nop			;14f0	00 	. 
	ld h,b			;14f1	60 	` 
	add a,b			;14f2	80 	. 
	add a,b			;14f3	80 	. 
	nop			;14f4	00 	. 
	ld a,h			;14f5	7c 	| 
	add a,b			;14f6	80 	. 
	add a,b			;14f7	80 	. 
	inc b			;14f8	04 	. 
	call m,sub_0404h		;14f9	fc 04 04 	. . . 
	cp b			;14fc	b8 	. 
	ret m			;14fd	f8 	. 
	cp b			;14fe	b8 	. 
	cp b			;14ff	b8 	. 
	nop			;1500	00 	. 
	inc e			;1501	1c 	. 
	inc bc			;1502	03 	. 
	inc bc			;1503	03 	. 
	ld (bc),a			;1504	02 	. 
	ld a,(l0707h)		;1505	3a 07 07 	: . . 
	inc b			;1508	04 	. 
	call m,sub_0505h		;1509	fc 05 05 	. . . 
l150ch:
	ld (hl),e			;150c	73 	s 
	ld a,b			;150d	78 	x 
	ld (hl),b			;150e	70 	p 
	ld (hl),e			;150f	73 	s 
	rrca			;1510	0f 	. 
	ex af,af'			;1511	08 	. 
	ex af,af'			;1512	08 	. 
	rrca			;1513	0f 	. 
	rlca			;1514	07 	. 
	inc b			;1515	04 	. 
	inc b			;1516	04 	. 
	inc b			;1517	04 	. 
	rrca			;1518	0f 	. 
	ex af,af'			;1519	08 	. 
	ex af,af'			;151a	08 	. 
	ex af,af'			;151b	08 	. 
	add hl,bc			;151c	09 	. 
	ex af,af'			;151d	08 	. 
	ld c,00eh		;151e	0e 0e 	. . 
	ld c,0f0h		;1520	0e f0 	. . 
	ld bc,sub_0000h+1		;1522	01 01 00 	. . . 
	cp 001h		;1525	fe 01 	. . 
	ld bc,07f00h		;1527	01 00 7f 	. .  
	add a,b			;152a	80 	. 
	add a,c			;152b	81 	. 
	add a,b			;152c	80 	. 
	rra			;152d	1f 	. 
	ld h,b			;152e	60 	` 
	ex (sp),hl			;152f	e3 	. 
l1530h:
	ret po			;1530	e0 	. 
	rra			;1531	1f 	. 
	nop			;1532	00 	. 
	rst 38h			;1533	ff 	. 
	call m,sub_0003h		;1534	fc 03 00 	. . . 
	rst 38h			;1537	ff 	. 
	rst 38h			;1538	ff 	. 
	add hl,bc			;1539	09 	. 
	add hl,bc			;153a	09 	. 
	ld a,a			;153b	7f 	 
	rst 38h			;153c	ff 	. 
	ld e,e			;153d	5b 	[ 
	ld e,e			;153e	5b 	[ 
	ld a,a			;153f	7f 	 
	ld b,b			;1540	40 	@ 
	ld b,b			;1541	40 	@ 
	ld b,b			;1542	40 	@ 
	ld b,b			;1543	40 	@ 
l1544h:
	nop			;1544	00 	. 
	add a,b			;1545	80 	. 
	nop			;1546	00 	. 
	add a,b			;1547	80 	. 
	ld h,b			;1548	60 	` 
	add a,b			;1549	80 	. 
	nop			;154a	00 	. 
	add a,b			;154b	80 	. 
	ret p			;154c	f0 	. 
	nop			;154d	00 	. 
	nop			;154e	00 	. 
	nop			;154f	00 	. 
	ret p			;1550	f0 	. 
	add a,b			;1551	80 	. 
	nop			;1552	00 	. 
	add a,b			;1553	80 	. 
	ld b,030h		;1554	06 30 	. 0 
	add a,0c0h		;1556	c6 c0 	. . 
	rlca			;1558	07 	. 
	jr c,$-56		;1559	38 c6 	8 . 
	ret nz			;155b	c0 	. 
	inc bc			;155c	03 	. 
	inc a			;155d	3c 	< 
	jp nz,030c0h		;155e	c2 c0 30 	. . 0 
	ld de,l1e3eh		;1561	11 3e 1e 	. > . 
	ld (hl),b			;1564	70 	p 
	inc de			;1565	13 	. 
	ld a,h			;1566	7c 	| 
	inc e			;1567	1c 	. 
	ld a,a			;1568	7f 	 
	rrca			;1569	0f 	. 
	ccf			;156a	3f 	? 
	rrca			;156b	0f 	. 
	ld a,a			;156c	7f 	 
	ld b,b			;156d	40 	@ 
	ld c,a			;156e	4f 	O 
	ld b,b			;156f	40 	@ 
	ccf			;1570	3f 	? 
	jr nc,$+50		;1571	30 30 	0 0 
	jr nc,l1584h		;1573	30 0f 	0 . 
	rrca			;1575	0f 	. 
	ld c,00fh		;1576	0e 0f 	. . 
	inc bc			;1578	03 	. 
	inc bc			;1579	03 	. 
	ld (bc),a			;157a	02 	. 
	inc bc			;157b	03 	. 
	ld bc,l0101h		;157c	01 01 01 	. . . 
	ld bc,l24a5h		;157f	01 a5 24 	. . $ 
	dec h			;1582	25 	% 
	dec h			;1583	25 	% 
l1584h:
	ld a,a			;1584	7f 	 
	add a,b			;1585	80 	. 
	ld a,a			;1586	7f 	 
	rrca			;1587	0f 	. 
	ld a,a			;1588	7f 	 
	add a,b			;1589	80 	. 
	ld a,a			;158a	7f 	 
	inc bc			;158b	03 	. 
	rst 38h			;158c	ff 	. 
	nop			;158d	00 	. 
	call m,0ff00h		;158e	fc 00 ff 	. . . 
	inc bc			;1591	03 	. 
	inc bc			;1592	03 	. 
	inc bc			;1593	03 	. 
	cp h			;1594	bc 	. 
	cp h			;1595	bc 	. 
	inc e			;1596	1c 	. 
	call m,080a0h		;1597	fc a0 80 	. . . 
	nop			;159a	00 	. 
	ret nz			;159b	c0 	. 
	ret nz			;159c	c0 	. 
	add a,b			;159d	80 	. 
	nop			;159e	00 	. 
	add a,b			;159f	80 	. 
	add a,a			;15a0	87 	. 
	add a,c			;15a1	81 	. 
	ld sp,iy		;15a2	fd f9 	. . 
	cp 072h		;15a4	fe 72 	. r 
	jp p,0faf2h		;15a6	f2 f2 fa 	. . . 
	ld a,(bc)			;15a9	0a 	. 
	ret nz			;15aa	c0 	. 
	adc a,0fah		;15ab	ce fa 	. . 
	jr c,l15cfh		;15ad	38 20 	8   
	inc a			;15af	3c 	< 
	call c,0d0d8h		;15b0	dc d8 d0 	. . . 
	ret c			;15b3	d8 	. 
	nop			;15b4	00 	. 
	nop			;15b5	00 	. 
	nop			;15b6	00 	. 
	nop			;15b7	00 	. 
	nop			;15b8	00 	. 
	nop			;15b9	00 	. 
	nop			;15ba	00 	. 
	nop			;15bb	00 	. 
	nop			;15bc	00 	. 
	nop			;15bd	00 	. 
	nop			;15be	00 	. 
	nop			;15bf	00 	. 
	nop			;15c0	00 	. 
	nop			;15c1	00 	. 
	nop			;15c2	00 	. 
	nop			;15c3	00 	. 
	nop			;15c4	00 	. 
	nop			;15c5	00 	. 
	nop			;15c6	00 	. 
	inc bc			;15c7	03 	. 
	nop			;15c8	00 	. 
	nop			;15c9	00 	. 
	nop			;15ca	00 	. 
	rlca			;15cb	07 	. 
	nop			;15cc	00 	. 
	nop			;15cd	00 	. 
	nop			;15ce	00 	. 
l15cfh:
	rlca			;15cf	07 	. 
	nop			;15d0	00 	. 
	nop			;15d1	00 	. 
	nop			;15d2	00 	. 
	rrca			;15d3	0f 	. 
	nop			;15d4	00 	. 
	nop			;15d5	00 	. 
	nop			;15d6	00 	. 
	rrca			;15d7	0f 	. 
	nop			;15d8	00 	. 
	nop			;15d9	00 	. 
	nop			;15da	00 	. 
	rrca			;15db	0f 	. 
	ld bc,sub_0000h+1		;15dc	01 01 00 	. . . 
	ld c,000h		;15df	0e 00 	. . 
	nop			;15e1	00 	. 
	nop			;15e2	00 	. 
	ret m			;15e3	f8 	. 
	djnz l15e6h		;15e4	10 00 	. . 
l15e6h:
	nop			;15e6	00 	. 
	xor 004h		;15e7	ee 04 	. . 
	nop			;15e9	00 	. 
	nop			;15ea	00 	. 
	ei			;15eb	fb 	. 
	ld (bc),a			;15ec	02 	. 
	nop			;15ed	00 	. 
	nop			;15ee	00 	. 
	defb 0fdh,000h,000h	;illegal sequence		;15ef	fd 00 00 	. . . 
	nop			;15f2	00 	. 
	rst 38h			;15f3	ff 	. 
	nop			;15f4	00 	. 
	nop			;15f5	00 	. 
	nop			;15f6	00 	. 
	rst 38h			;15f7	ff 	. 
	nop			;15f8	00 	. 
	nop			;15f9	00 	. 
	nop			;15fa	00 	. 
	rst 38h			;15fb	ff 	. 
	add a,b			;15fc	80 	. 
	sbc a,a			;15fd	9f 	. 
	ld h,b			;15fe	60 	` 
	ld h,b			;15ff	60 	` 
	nop			;1600	00 	. 
	nop			;1601	00 	. 
	nop			;1602	00 	. 
	nop			;1603	00 	. 
	nop			;1604	00 	. 
	nop			;1605	00 	. 
	nop			;1606	00 	. 
	nop			;1607	00 	. 
	nop			;1608	00 	. 
	nop			;1609	00 	. 
	nop			;160a	00 	. 
	nop			;160b	00 	. 
	nop			;160c	00 	. 
	nop			;160d	00 	. 
	nop			;160e	00 	. 
	nop			;160f	00 	. 
	nop			;1610	00 	. 
	nop			;1611	00 	. 
	nop			;1612	00 	. 
	add a,b			;1613	80 	. 
	nop			;1614	00 	. 
	nop			;1615	00 	. 
	nop			;1616	00 	. 
	add a,b			;1617	80 	. 
	nop			;1618	00 	. 
	nop			;1619	00 	. 
	nop			;161a	00 	. 
	add a,b			;161b	80 	. 
	add a,b			;161c	80 	. 
	add a,b			;161d	80 	. 
	nop			;161e	00 	. 
	nop			;161f	00 	. 
	rlca			;1620	07 	. 
	inc b			;1621	04 	. 
	nop			;1622	00 	. 
	ex af,af'			;1623	08 	. 
	add hl,bc			;1624	09 	. 
	inc c			;1625	0c 	. 
	ld (bc),a			;1626	02 	. 
	ld (bc),a			;1627	02 	. 
	add hl,bc			;1628	09 	. 
	inc c			;1629	0c 	. 
	ld (bc),a			;162a	02 	. 
	ld (bc),a			;162b	02 	. 
l162ch:
	add hl,bc			;162c	09 	. 
	inc c			;162d	0c 	. 
	ld (bc),a			;162e	02 	. 
	ld (bc),a			;162f	02 	. 
	ld b,004h		;1630	06 04 	. . 
	ld bc,sub_0000h+1		;1632	01 01 00 	. . . 
	rlca			;1635	07 	. 
	nop			;1636	00 	. 
	nop			;1637	00 	. 
	nop			;1638	00 	. 
	rrca			;1639	0f 	. 
l163ah:
	nop			;163a	00 	. 
	nop			;163b	00 	. 
	nop			;163c	00 	. 
	ld e,001h		;163d	1e 01 	. . 
	ld bc,0a59ah		;163f	01 9a a5 	. . . 
l1642h:
	ld b,b			;1642	40 	@ 
	ld b,b			;1643	40 	@ 
	dec sp			;1644	3b 	; 
	ld c,(hl)			;1645	4e 	N 
	adc a,d			;1646	8a 	. 
	adc a,d			;1647	8a 	. 
	dec sp			;1648	3b 	; 
	ld c,(hl)			;1649	4e 	N 
	adc a,d			;164a	8a 	. 
	adc a,d			;164b	8a 	. 
	nop			;164c	00 	. 
	ld a,a			;164d	7f 	 
	add a,b			;164e	80 	. 
	add a,b			;164f	80 	. 
	inc b			;1650	04 	. 
	ld a,e			;1651	7b 	{ 
	add a,b			;1652	80 	. 
	add a,b			;1653	80 	. 
	add a,h			;1654	84 	. 
	dec sp			;1655	3b 	; 
	ld b,h			;1656	44 	D 
	ld b,b			;1657	40 	@ 
	ld b,c			;1658	41 	A 
	adc a,(hl)			;1659	8e 	. 
	jr nc,l168ch		;165a	30 30 	0 0 
	ld a,0d0h		;165c	3e d0 	> . 
	ld bc,l0010h+1		;165e	01 11 00 	. . . 
	nop			;1661	00 	. 
	nop			;1662	00 	. 
	nop			;1663	00 	. 
	nop			;1664	00 	. 
	nop			;1665	00 	. 
	nop			;1666	00 	. 
	nop			;1667	00 	. 
	nop			;1668	00 	. 
	nop			;1669	00 	. 
	nop			;166a	00 	. 
	nop			;166b	00 	. 
	nop			;166c	00 	. 
	ld b,b			;166d	40 	@ 
	add a,b			;166e	80 	. 
	add a,b			;166f	80 	. 
	nop			;1670	00 	. 
	ld a,b			;1671	78 	x 
	add a,b			;1672	80 	. 
	add a,b			;1673	80 	. 
	ex af,af'			;1674	08 	. 
	ld a,b			;1675	78 	x 
	adc a,b			;1676	88 	. 
	adc a,b			;1677	88 	. 
	or b			;1678	b0 	. 
	ret p			;1679	f0 	. 
	or b			;167a	b0 	. 
	or b			;167b	b0 	. 
	ld b,b			;167c	40 	@ 
	ld b,b			;167d	40 	@ 
	ld b,b			;167e	40 	@ 
	ld b,b			;167f	40 	@ 
	nop			;1680	00 	. 
	ld a,h			;1681	7c 	| 
	inc bc			;1682	03 	. 
	inc bc			;1683	03 	. 
	halt			;1684	76 	v 
	ld a,(hl)			;1685	7e 	~ 
	ld (hl),a			;1686	77 	w 
	ld (hl),a			;1687	77 	w 
	ex af,af'			;1688	08 	. 
	ex af,af'			;1689	08 	. 
	add hl,bc			;168a	09 	. 
	add hl,bc			;168b	09 	. 
l168ch:
	inc bc			;168c	03 	. 
	nop			;168d	00 	. 
	nop			;168e	00 	. 
	inc bc			;168f	03 	. 
	rlca			;1690	07 	. 
	nop			;1691	00 	. 
	nop			;1692	00 	. 
	rlca			;1693	07 	. 
	rlca			;1694	07 	. 
	inc b			;1695	04 	. 
	inc b			;1696	04 	. 
	inc b			;1697	04 	. 
	rrca			;1698	0f 	. 
	ex af,af'			;1699	08 	. 
	ex af,af'			;169a	08 	. 
	ex af,af'			;169b	08 	. 
	add hl,bc			;169c	09 	. 
	ex af,af'			;169d	08 	. 
	ld c,00eh		;169e	0e 0e 	. . 
	ld c,0f0h		;16a0	0e f0 	. . 
	ld bc,sub_0000h+1		;16a2	01 01 00 	. . . 
	cp 001h		;16a5	fe 01 	. . 
	ld bc,07f00h		;16a7	01 00 7f 	. .  
	add a,b			;16aa	80 	. 
	add a,c			;16ab	81 	. 
	add a,b			;16ac	80 	. 
	rra			;16ad	1f 	. 
	ld h,b			;16ae	60 	` 
	ex (sp),hl			;16af	e3 	. 
	ret po			;16b0	e0 	. 
	rra			;16b1	1f 	. 
	nop			;16b2	00 	. 
	rst 38h			;16b3	ff 	. 
	call m,sub_0003h		;16b4	fc 03 00 	. . . 
	rst 38h			;16b7	ff 	. 
	rst 38h			;16b8	ff 	. 
	add hl,bc			;16b9	09 	. 
	add hl,bc			;16ba	09 	. 
	ld a,a			;16bb	7f 	 
	rst 38h			;16bc	ff 	. 
	ld e,e			;16bd	5b 	[ 
	ld e,e			;16be	5b 	[ 
	ld a,a			;16bf	7f 	 
	nop			;16c0	00 	. 
	nop			;16c1	00 	. 
	nop			;16c2	00 	. 
	nop			;16c3	00 	. 
	nop			;16c4	00 	. 
	add a,b			;16c5	80 	. 
	nop			;16c6	00 	. 
	add a,b			;16c7	80 	. 
	ld h,b			;16c8	60 	` 
	add a,b			;16c9	80 	. 
	nop			;16ca	00 	. 
	add a,b			;16cb	80 	. 
	ret p			;16cc	f0 	. 
	nop			;16cd	00 	. 
	nop			;16ce	00 	. 
	nop			;16cf	00 	. 
	ret p			;16d0	f0 	. 
	add a,b			;16d1	80 	. 
	nop			;16d2	00 	. 
	add a,b			;16d3	80 	. 
	ld b,030h		;16d4	06 30 	. 0 
	add a,0c0h		;16d6	c6 c0 	. . 
	rlca			;16d8	07 	. 
	jr c,$-56		;16d9	38 c6 	8 . 
	ret nz			;16db	c0 	. 
	inc bc			;16dc	03 	. 
	inc a			;16dd	3c 	< 
	jp nz,030c0h		;16de	c2 c0 30 	. . 0 
	ld de,l1e3eh		;16e1	11 3e 1e 	. > . 
	ld (hl),b			;16e4	70 	p 
	inc de			;16e5	13 	. 
	ld a,h			;16e6	7c 	| 
	inc e			;16e7	1c 	. 
	ld a,a			;16e8	7f 	 
	rrca			;16e9	0f 	. 
	ccf			;16ea	3f 	? 
	rrca			;16eb	0f 	. 
	ld a,a			;16ec	7f 	 
	ld b,b			;16ed	40 	@ 
	ld c,a			;16ee	4f 	O 
	ld b,b			;16ef	40 	@ 
	ccf			;16f0	3f 	? 
	jr nc,$+50		;16f1	30 30 	0 0 
	jr nc,l1704h		;16f3	30 0f 	0 . 
	rrca			;16f5	0f 	. 
	ld c,00fh		;16f6	0e 0f 	. . 
	inc bc			;16f8	03 	. 
	inc bc			;16f9	03 	. 
	ld (bc),a			;16fa	02 	. 
	inc bc			;16fb	03 	. 
	ld bc,l0101h		;16fc	01 01 01 	. . . 
	ld bc,l24a5h		;16ff	01 a5 24 	. . $ 
	dec h			;1702	25 	% 
	dec h			;1703	25 	% 
l1704h:
	ld a,a			;1704	7f 	 
	add a,b			;1705	80 	. 
	ld a,a			;1706	7f 	 
	rrca			;1707	0f 	. 
	ld a,a			;1708	7f 	 
	add a,b			;1709	80 	. 
	ld a,a			;170a	7f 	 
	inc bc			;170b	03 	. 
	rst 38h			;170c	ff 	. 
	nop			;170d	00 	. 
	call m,0ff00h		;170e	fc 00 ff 	. . . 
	inc bc			;1711	03 	. 
	inc bc			;1712	03 	. 
	inc bc			;1713	03 	. 
	cp h			;1714	bc 	. 
	cp h			;1715	bc 	. 
	inc e			;1716	1c 	. 
	call m,080a0h		;1717	fc a0 80 	. . . 
	nop			;171a	00 	. 
	ret nz			;171b	c0 	. 
	ret nz			;171c	c0 	. 
	add a,b			;171d	80 	. 
	nop			;171e	00 	. 
	add a,b			;171f	80 	. 
	add a,a			;1720	87 	. 
	add a,c			;1721	81 	. 
	ld sp,iy		;1722	fd f9 	. . 
	cp 072h		;1724	fe 72 	. r 
	jp p,0faf2h		;1726	f2 f2 fa 	. . . 
	ld a,(bc)			;1729	0a 	. 
	ret nz			;172a	c0 	. 
	adc a,0fah		;172b	ce fa 	. . 
	jr c,l174fh		;172d	38 20 	8   
	inc a			;172f	3c 	< 
l1730h:
	call c,0d0d8h		;1730	dc d8 d0 	. . . 
	ret c			;1733	d8 	. 
	nop			;1734	00 	. 
	nop			;1735	00 	. 
	nop			;1736	00 	. 
	nop			;1737	00 	. 
	nop			;1738	00 	. 
	nop			;1739	00 	. 
	nop			;173a	00 	. 
	nop			;173b	00 	. 
	nop			;173c	00 	. 
	nop			;173d	00 	. 
	nop			;173e	00 	. 
	nop			;173f	00 	. 
	nop			;1740	00 	. 
	nop			;1741	00 	. 
	nop			;1742	00 	. 
	nop			;1743	00 	. 
	ld bc,l0031h		;1744	01 31 00 	. 1 . 
	ld bc,l0e0fh		;1747	01 0f 0e 	. . . 
	ld (hl),b			;174a	70 	p 
	ld a,h			;174b	7c 	| 
l174ch:
	ld a,l			;174c	7d 	} 
	ld h,h			;174d	64 	d 
	ld h,d			;174e	62 	b 
l174fh:
	ld h,h			;174f	64 	d 
	ld a,(l0502h)		;1750	3a 02 05 	: . . 
	nop			;1753	00 	. 
	ld b,l			;1754	45 	E 
	dec b			;1755	05 	. 
	ld a,(0fd05h)		;1756	3a 05 fd 	: . . 
	call m,0fc02h		;1759	fc 02 fc 	. . . 
	defb 0fdh,0c5h,002h	;illegal sequence		;175c	fd c5 02 	. . . 
	push bc			;175f	c5 	. 
	nop			;1760	00 	. 
	nop			;1761	00 	. 
	nop			;1762	00 	. 
	nop			;1763	00 	. 
	ret nz			;1764	c0 	. 
	nop			;1765	00 	. 
	nop			;1766	00 	. 
l1767h:
	nop			;1767	00 	. 
	ret po			;1768	e0 	. 
	nop			;1769	00 	. 
	nop			;176a	00 	. 
	nop			;176b	00 	. 
	ret p			;176c	f0 	. 
	djnz l176fh		;176d	10 00 	. . 
l176fh:
	djnz $+114		;176f	10 70 	. p 
	ld (hl),b			;1771	70 	p 
	sub b			;1772	90 	. 
	jr nc,$-78		;1773	30 b0 	0 . 
	or b			;1775	b0 	. 
	ld (hl),b			;1776	70 	p 
	or b			;1777	b0 	. 
	ret po			;1778	e0 	. 
	ret po			;1779	e0 	. 
	ld h,b			;177a	60 	` 
	ret po			;177b	e0 	. 
	ret nz			;177c	c0 	. 
	ret nz			;177d	c0 	. 
	ret nz			;177e	c0 	. 
	ret nz			;177f	c0 	. 
	rst 38h			;1780	ff 	. 
	rst 20h			;1781	e7 	. 
	add a,c			;1782	81 	. 
	rst 20h			;1783	e7 	. 
	rst 38h			;1784	ff 	. 
	rst 28h			;1785	ef 	. 
	add a,e			;1786	83 	. 
	rst 28h			;1787	ef 	. 
	cp 0feh		;1788	fe fe 	. . 
	add a,0feh		;178a	c6 fe 	. . 
	ld a,h			;178c	7c 	| 
	ld a,h			;178d	7c 	| 
	ld a,h			;178e	7c 	| 
	ld a,h			;178f	7c 	| 
	nop			;1790	00 	. 
	nop			;1791	00 	. 
	nop			;1792	00 	. 
	nop			;1793	00 	. 
	nop			;1794	00 	. 
	nop			;1795	00 	. 
	nop			;1796	00 	. 
	nop			;1797	00 	. 
	nop			;1798	00 	. 
	nop			;1799	00 	. 
	nop			;179a	00 	. 
	nop			;179b	00 	. 
	nop			;179c	00 	. 
	nop			;179d	00 	. 
	nop			;179e	00 	. 
	nop			;179f	00 	. 
	add a,b			;17a0	80 	. 
	ret po			;17a1	e0 	. 
	add a,b			;17a2	80 	. 
	add a,b			;17a3	80 	. 
	nop			;17a4	00 	. 
	jr nc,l1767h		;17a5	30 c0 	0 . 
	ret nz			;17a7	c0 	. 
	add a,b			;17a8	80 	. 
	sbc a,b			;17a9	98 	. 
	ret po			;17aa	e0 	. 
	ret po			;17ab	e0 	. 
	ld b,b			;17ac	40 	@ 
	ld c,h			;17ad	4c 	L 
	ld (hl),b			;17ae	70 	p 
	ld (hl),b			;17af	70 	p 
	jr nz,$+40		;17b0	20 26 	  & 
	jr c,$+58		;17b2	38 38 	8 8 
	djnz l17c8h		;17b4	10 12 	. . 
	dec e			;17b6	1d 	. 
	dec e			;17b7	1d 	. 
	add hl,bc			;17b8	09 	. 
	add hl,bc			;17b9	09 	. 
	rrca			;17ba	0f 	. 
	rrca			;17bb	0f 	. 
	ld b,006h		;17bc	06 06 	. . 
	ld b,006h		;17be	06 06 	. . 
	inc bc			;17c0	03 	. 
	ld (bc),a			;17c1	02 	. 
	nop			;17c2	00 	. 
	ld (bc),a			;17c3	02 	. 
	rlca			;17c4	07 	. 
	inc b			;17c5	04 	. 
	nop			;17c6	00 	. 
	inc b			;17c7	04 	. 
l17c8h:
	rlca			;17c8	07 	. 
	inc b			;17c9	04 	. 
	nop			;17ca	00 	. 
	inc b			;17cb	04 	. 
	rlca			;17cc	07 	. 
	ld b,004h		;17cd	06 04 	. . 
	ld b,007h		;17cf	06 07 	. . 
	rlca			;17d1	07 	. 
	inc b			;17d2	04 	. 
	rlca			;17d3	07 	. 
	ld b,006h		;17d4	06 06 	. . 
	rlca			;17d6	07 	. 
	ld b,003h		;17d7	06 03 	. . 
	inc bc			;17d9	03 	. 
	inc bc			;17da	03 	. 
	inc bc			;17db	03 	. 
	ld bc,l0101h		;17dc	01 01 01 	. . . 
	ld bc,l00e0h		;17df	01 e0 00 	. . . 
	nop			;17e2	00 	. 
	nop			;17e3	00 	. 
	ret p			;17e4	f0 	. 
	ld d,000h		;17e5	16 00 	. . 
	djnz $-6		;17e7	10 f8 	. . 
	ld (hl),001h		;17e9	36 01 	6 . 
	ld hl,069edh		;17eb	21 ed 69 	! . i 
	inc de			;17ee	13 	. 
	ld l,e			;17ef	6b 	k 
	xor 0eah		;17f0	ee ea 	. . 
	ld (de),a			;17f2	12 	. 
	jp pe,l1012h		;17f3	ea 12 10 	. . . 
	call pe,0ee00h		;17f6	ec 00 ee 	. . . 
	call pe,0ec10h		;17f9	ec 10 ec 	. . . 
	rst 28h			;17fc	ef 	. 
	ex (sp),hl			;17fd	e3 	. 
	sub b			;17fe	90 	. 
	ex (sp),hl			;17ff	e3 	. 
	nop			;1800	00 	. 
	inc bc			;1801	03 	. 
	nop			;1802	00 	. 
	nop			;1803	00 	. 
l1804h:
	nop			;1804	00 	. 
	ld b,001h		;1805	06 01 	. . 
	ld bc,l0c00h		;1807	01 00 0c 	. . . 
l180ah:
	inc bc			;180a	03 	. 
	inc bc			;180b	03 	. 
	ld bc,l0719h		;180c	01 19 07 	. . . 
	rlca			;180f	07 	. 
	ld (bc),a			;1810	02 	. 
	ld (l0e0eh),a		;1811	32 0e 0e 	2 . . 
	inc b			;1814	04 	. 
	ld h,h			;1815	64 	d 
	inc e			;1816	1c 	. 
	inc e			;1817	1c 	. 
l1818h:
	ld c,b			;1818	48 	H 
	ld c,b			;1819	48 	H 
	ld a,b			;181a	78 	x 
	ld a,b			;181b	78 	x 
	jr nc,$+50		;181c	30 30 	0 0 
	jr nc,l1850h		;181e	30 30 	0 0 
	rst 28h			;1820	ef 	. 
	rst 28h			;1821	ef 	. 
	pop de			;1822	d1 	. 
	rst 28h			;1823	ef 	. 
	ld a,a			;1824	7f 	 
	ld a,a			;1825	7f 	 
	ex (sp),hl			;1826	e3 	. 
	rst 38h			;1827	ff 	. 
	cp (hl)			;1828	be 	. 
	cp (hl)			;1829	be 	. 
	cp (hl)			;182a	be 	. 
	cp (hl)			;182b	be 	. 
	inc e			;182c	1c 	. 
	inc e			;182d	1c 	. 
	inc e			;182e	1c 	. 
	inc e			;182f	1c 	. 
l1830h:
	nop			;1830	00 	. 
	nop			;1831	00 	. 
	nop			;1832	00 	. 
	nop			;1833	00 	. 
	nop			;1834	00 	. 
	nop			;1835	00 	. 
	nop			;1836	00 	. 
	nop			;1837	00 	. 
sub_1838h:
	nop			;1838	00 	. 
	nop			;1839	00 	. 
	nop			;183a	00 	. 
	nop			;183b	00 	. 
	nop			;183c	00 	. 
	nop			;183d	00 	. 
	nop			;183e	00 	. 
	nop			;183f	00 	. 
	nop			;1840	00 	. 
	nop			;1841	00 	. 
	nop			;1842	00 	. 
	nop			;1843	00 	. 
	nop			;1844	00 	. 
	ld bc,sub_0000h		;1845	01 00 00 	. . . 
l1848h:
	nop			;1848	00 	. 
	ld bc,sub_0000h		;1849	01 00 00 	. . . 
	nop			;184c	00 	. 
	ld bc,sub_0000h		;184d	01 00 00 	. . . 
l1850h:
	nop			;1850	00 	. 
	inc bc			;1851	03 	. 
	nop			;1852	00 	. 
	nop			;1853	00 	. 
	nop			;1854	00 	. 
	inc bc			;1855	03 	. 
	nop			;1856	00 	. 
	nop			;1857	00 	. 
	jr c,l185dh		;1858	38 03 	8 . 
	nop			;185a	00 	. 
	nop			;185b	00 	. 
	ld a,e			;185c	7b 	{ 
l185dh:
	nop			;185d	00 	. 
	inc b			;185e	04 	. 
	nop			;185f	00 	. 
	nop			;1860	00 	. 
	ret nz			;1861	c0 	. 
	nop			;1862	00 	. 
	nop			;1863	00 	. 
	jr nz,$-94		;1864	20 a0 	  . 
	ld h,b			;1866	60 	` 
	ld h,b			;1867	60 	` 
	jr nz,l180ah		;1868	20 a0 	  . 
	ld h,b			;186a	60 	` 
	ld h,b			;186b	60 	` 
	jr nz,$-94		;186c	20 a0 	  . 
	ld h,b			;186e	60 	` 
	ld h,b			;186f	60 	` 
	ld b,b			;1870	40 	@ 
	ld b,b			;1871	40 	@ 
	ret nz			;1872	c0 	. 
	ret nz			;1873	c0 	. 
	ld b,b			;1874	40 	@ 
	ld b,b			;1875	40 	@ 
	ret nz			;1876	c0 	. 
	ret nz			;1877	c0 	. 
	ld b,b			;1878	40 	@ 
	ld b,b			;1879	40 	@ 
	ret nz			;187a	c0 	. 
	ret nz			;187b	c0 	. 
	ld b,b			;187c	40 	@ 
	ld b,b			;187d	40 	@ 
	ret nz			;187e	c0 	. 
	ret nz			;187f	c0 	. 
	ld a,e			;1880	7b 	{ 
	ld (bc),a			;1881	02 	. 
	inc b			;1882	04 	. 
	ld (bc),a			;1883	02 	. 
	ld a,a			;1884	7f 	 
	ld b,(hl)			;1885	46 	F 
	nop			;1886	00 	. 
	ld b,d			;1887	42 	B 
	ld a,(hl)			;1888	7e 	~ 
	ld a,(hl)			;1889	7e 	~ 
	ld b,c			;188a	41 	A 
	ld a,h			;188b	7c 	| 
	ld hl,l3e21h		;188c	21 21 3e 	! ! > 
	ld hl,l1e1eh		;188f	21 1e 1e 	! . . 
	ld de,00e1eh		;1892	11 1e 0e 	. . . 
	ld c,009h		;1895	0e 09 	. . 
	ld c,004h		;1897	0e 04 	. . 
	inc b			;1899	04 	. 
	rlca			;189a	07 	. 
	inc b			;189b	04 	. 
	ld bc,l0305h		;189c	01 05 03 	. . . 
	inc bc			;189f	03 	. 
	or b			;18a0	b0 	. 
	djnz l18f3h		;18a1	10 50 	. P 
	djnz $-6		;18a3	10 f8 	. . 
	ld l,b			;18a5	68 	h 
	nop			;18a6	00 	. 
	jr z,l1925h		;18a7	28 7c 	( | 
	ld c,h			;18a9	4c 	L 
	add a,h			;18aa	84 	. 
	ld c,h			;18ab	4c 	L 
	call m,sub_048ch		;18ac	fc 8c 04 	. . . 
	adc a,h			;18af	8c 	. 
	call m,sub_048ch		;18b0	fc 8c 04 	. . . 
	adc a,h			;18b3	8c 	. 
	call m,sub_049ch		;18b4	fc 9c 04 	. . . 
	sbc a,h			;18b7	9c 	. 
	call m,sub_0cfch		;18b8	fc fc 0c 	. . . 
	call m,0f0f0h		;18bb	fc f0 f0 	. . . 
	ret p			;18be	f0 	. 
	ret p			;18bf	f0 	. 
	nop			;18c0	00 	. 
	nop			;18c1	00 	. 
	nop			;18c2	00 	. 
	nop			;18c3	00 	. 
	nop			;18c4	00 	. 
	nop			;18c5	00 	. 
	nop			;18c6	00 	. 
	nop			;18c7	00 	. 
	nop			;18c8	00 	. 
	nop			;18c9	00 	. 
	nop			;18ca	00 	. 
	nop			;18cb	00 	. 
	nop			;18cc	00 	. 
	nop			;18cd	00 	. 
	nop			;18ce	00 	. 
	nop			;18cf	00 	. 
l18d0h:
	nop			;18d0	00 	. 
	nop			;18d1	00 	. 
	nop			;18d2	00 	. 
	nop			;18d3	00 	. 
	nop			;18d4	00 	. 
	nop			;18d5	00 	. 
	nop			;18d6	00 	. 
	nop			;18d7	00 	. 
	nop			;18d8	00 	. 
	ld a,a			;18d9	7f 	 
	ld a,a			;18da	7f 	 
	add a,b			;18db	80 	. 
	rst 38h			;18dc	ff 	. 
	defb 0fdh,0f8h,0fdh	;illegal sequence		;18dd	fd f8 fd 	. . . 
	nop			;18e0	00 	. 
	nop			;18e1	00 	. 
	nop			;18e2	00 	. 
	nop			;18e3	00 	. 
	nop			;18e4	00 	. 
	nop			;18e5	00 	. 
	nop			;18e6	00 	. 
	nop			;18e7	00 	. 
	nop			;18e8	00 	. 
	nop			;18e9	00 	. 
	nop			;18ea	00 	. 
	nop			;18eb	00 	. 
	nop			;18ec	00 	. 
	ld bc,sub_0000h+1		;18ed	01 01 00 	. . . 
	ld bc,l0e0eh		;18f0	01 0e 0e 	. . . 
l18f3h:
	nop			;18f3	00 	. 
	inc bc			;18f4	03 	. 
	dec e			;18f5	1d 	. 
	dec e			;18f6	1d 	. 
	ld bc,0fd03h		;18f7	01 03 fd 	. . . 
	defb 0fdh,001h,0c1h	;illegal sequence		;18fa	fd 01 c1 	. . . 
	ld a,(hl)			;18fd	7e 	~ 
	ld a,040h		;18fe	3e 40 	> @ 
	nop			;1900	00 	. 
	inc bc			;1901	03 	. 
	inc bc			;1902	03 	. 
	nop			;1903	00 	. 
	nop			;1904	00 	. 
	inc e			;1905	1c 	. 
	inc e			;1906	1c 	. 
	inc bc			;1907	03 	. 
	nop			;1908	00 	. 
	ld b,c			;1909	41 	A 
	ld d,e			;190a	53 	S 
	inc l			;190b	2c 	, 
	nop			;190c	00 	. 
	jp m,l05fah		;190d	fa fa 05 	. . . 
	sbc a,b			;1910	98 	. 
	ld a,a			;1911	7f 	 
	ld a,a			;1912	7f 	 
	nop			;1913	00 	. 
	rst 0			;1914	c7 	. 
	cp a			;1915	bf 	. 
	cp a			;1916	bf 	. 
	add a,b			;1917	80 	. 
	ret nz			;1918	c0 	. 
	cp a			;1919	bf 	. 
	cp a			;191a	bf 	. 
	add a,b			;191b	80 	. 
	add a,b			;191c	80 	. 
	ld a,a			;191d	7f 	 
	ld a,a			;191e	7f 	 
	nop			;191f	00 	. 
	nop			;1920	00 	. 
	nop			;1921	00 	. 
	nop			;1922	00 	. 
	nop			;1923	00 	. 
	nop			;1924	00 	. 
l1925h:
	adc a,(hl)			;1925	8e 	. 
	adc a,(hl)			;1926	8e 	. 
	nop			;1927	00 	. 
	nop			;1928	00 	. 
	ld (hl),c			;1929	71 	q 
	ld (hl),l			;192a	75 	u 
l192bh:
	adc a,d			;192b	8a 	. 
	nop			;192c	00 	. 
	ex af,af'			;192d	08 	. 
	ld c,c			;192e	49 	I 
	or (hl)			;192f	b6 	. 
	nop			;1930	00 	. 
	pop hl			;1931	e1 	. 
	pop af			;1932	f1 	. 
	ld c,000h		;1933	0e 00 	. . 
	cp 0feh		;1935	fe fe 	. . 
	ld bc,0ffc0h		;1937	01 c0 ff 	. . . 
	rst 38h			;193a	ff 	. 
	nop			;193b	00 	. 
	nop			;193c	00 	. 
	rst 38h			;193d	ff 	. 
	rst 38h			;193e	ff 	. 
	nop			;193f	00 	. 
	nop			;1940	00 	. 
	nop			;1941	00 	. 
	nop			;1942	00 	. 
	nop			;1943	00 	. 
	nop			;1944	00 	. 
	nop			;1945	00 	. 
	nop			;1946	00 	. 
	nop			;1947	00 	. 
	nop			;1948	00 	. 
	nop			;1949	00 	. 
	nop			;194a	00 	. 
	nop			;194b	00 	. 
	nop			;194c	00 	. 
	ret nz			;194d	c0 	. 
	ret nz			;194e	c0 	. 
	nop			;194f	00 	. 
sub_1950h:
	nop			;1950	00 	. 
	jr nz,l19b3h		;1951	20 60 	  ` 
	add a,b			;1953	80 	. 
	nop			;1954	00 	. 
	jr nz,l1977h		;1955	20 20 	    
	ret nz			;1957	c0 	. 
	nop			;1958	00 	. 
	sub b			;1959	90 	. 
	or b			;195a	b0 	. 
	ld b,b			;195b	40 	@ 
	nop			;195c	00 	. 
	ret pe			;195d	e8 	. 
	ret pe			;195e	e8 	. 
	djnz l1961h		;195f	10 00 	. . 
l1961h:
	nop			;1961	00 	. 
	nop			;1962	00 	. 
	nop			;1963	00 	. 
	nop			;1964	00 	. 
	nop			;1965	00 	. 
	nop			;1966	00 	. 
	nop			;1967	00 	. 
	nop			;1968	00 	. 
	nop			;1969	00 	. 
	nop			;196a	00 	. 
	nop			;196b	00 	. 
	rlca			;196c	07 	. 
	rlca			;196d	07 	. 
	nop			;196e	00 	. 
	nop			;196f	00 	. 
	rrca			;1970	0f 	. 
	rrca			;1971	0f 	. 
	inc de			;1972	13 	. 
	inc bc			;1973	03 	. 
	inc e			;1974	1c 	. 
	inc e			;1975	1c 	. 
	inc h			;1976	24 	$ 
l1977h:
	inc b			;1977	04 	. 
	jr c,l19b2h		;1978	38 38 	8 8 
	ld c,b			;197a	48 	H 
	ex af,af'			;197b	08 	. 
	jr nc,$+50		;197c	30 30 	0 0 
	ld b,b			;197e	40 	@ 
	nop			;197f	00 	. 
	rlca			;1980	07 	. 
	rlca			;1981	07 	. 
	rlca			;1982	07 	. 
	rlca			;1983	07 	. 
	nop			;1984	00 	. 
	nop			;1985	00 	. 
	nop			;1986	00 	. 
	nop			;1987	00 	. 
	nop			;1988	00 	. 
	nop			;1989	00 	. 
	nop			;198a	00 	. 
	nop			;198b	00 	. 
	nop			;198c	00 	. 
	nop			;198d	00 	. 
	nop			;198e	00 	. 
	nop			;198f	00 	. 
	nop			;1990	00 	. 
	nop			;1991	00 	. 
	nop			;1992	00 	. 
	nop			;1993	00 	. 
	nop			;1994	00 	. 
	nop			;1995	00 	. 
	nop			;1996	00 	. 
	nop			;1997	00 	. 
	nop			;1998	00 	. 
	nop			;1999	00 	. 
	nop			;199a	00 	. 
	nop			;199b	00 	. 
	nop			;199c	00 	. 
	nop			;199d	00 	. 
	nop			;199e	00 	. 
	nop			;199f	00 	. 
	call m,083ffh		;19a0	fc ff 83 	. . . 
	call m,07f7fh		;19a3	fc 7f 7f 	.   
	ld a,b			;19a6	78 	x 
	ld a,a			;19a7	7f 	 
	rlca			;19a8	07 	. 
	rlca			;19a9	07 	. 
	ld b,007h		;19aa	06 07 	. . 
	ld bc,l0101h		;19ac	01 01 01 	. . . 
	ld bc,sub_0000h		;19af	01 00 00 	. . . 
l19b2h:
	nop			;19b2	00 	. 
l19b3h:
	nop			;19b3	00 	. 
	nop			;19b4	00 	. 
l19b5h:
	nop			;19b5	00 	. 
	nop			;19b6	00 	. 
	nop			;19b7	00 	. 
	nop			;19b8	00 	. 
l19b9h:
	nop			;19b9	00 	. 
	nop			;19ba	00 	. 
	nop			;19bb	00 	. 
	nop			;19bc	00 	. 
	nop			;19bd	00 	. 
	nop			;19be	00 	. 
	nop			;19bf	00 	. 
	nop			;19c0	00 	. 
	rst 38h			;19c1	ff 	. 
	rst 38h			;19c2	ff 	. 
	nop			;19c3	00 	. 
	ret po			;19c4	e0 	. 
	rra			;19c5	1f 	. 
	rra			;19c6	1f 	. 
	nop			;19c7	00 	. 
	cp 0c1h		;19c8	fe c1 	. . 
	ld bc,0ffc0h		;19ca	01 c0 ff 	. . . 
	ret m			;19cd	f8 	. 
	add a,b			;19ce	80 	. 
	ret m			;19cf	f8 	. 
	ld a,a			;19d0	7f 	 
	ld a,a			;19d1	7f 	 
	ld (hl),b			;19d2	70 	p 
	ld a,a			;19d3	7f 	 
	rrca			;19d4	0f 	. 
	rrca			;19d5	0f 	. 
	ld c,00fh		;19d6	0e 0f 	. . 
	ld bc,l0101h		;19d8	01 01 01 	. . . 
	ld bc,sub_0000h		;19db	01 00 00 	. . . 
	nop			;19de	00 	. 
	nop			;19df	00 	. 
	nop			;19e0	00 	. 
	rst 38h			;19e1	ff 	. 
	rst 38h			;19e2	ff 	. 
	nop			;19e3	00 	. 
	nop			;19e4	00 	. 
	rst 38h			;19e5	ff 	. 
	rst 38h			;19e6	ff 	. 
	nop			;19e7	00 	. 
	ld bc,0fefeh		;19e8	01 fe fe 	. . . 
	nop			;19eb	00 	. 
	rst 38h			;19ec	ff 	. 
	nop			;19ed	00 	. 
	nop			;19ee	00 	. 
	nop			;19ef	00 	. 
	rst 38h			;19f0	ff 	. 
	rrca			;19f1	0f 	. 
	nop			;19f2	00 	. 
	rrca			;19f3	0f 	. 
	rst 38h			;19f4	ff 	. 
	rst 38h			;19f5	ff 	. 
	rlca			;19f6	07 	. 
	rst 38h			;19f7	ff 	. 
	ret m			;19f8	f8 	. 
	ret m			;19f9	f8 	. 
	ret m			;19fa	f8 	. 
	ret m			;19fb	f8 	. 
	nop			;19fc	00 	. 
	nop			;19fd	00 	. 
	nop			;19fe	00 	. 
	nop			;19ff	00 	. 
	nop			;1a00	00 	. 
	ret m			;1a01	f8 	. 
	ld sp,hl			;1a02	f9 	. 
	nop			;1a03	00 	. 
	ld bc,0fffeh		;1a04	01 fe ff 	. . . 
	nop			;1a07	00 	. 
	rst 38h			;1a08	ff 	. 
	rrca			;1a09	0f 	. 
	ld bc,0fe0fh		;1a0a	01 0f fe 	. . . 
	ld a,(hl)			;1a0d	7e 	~ 
	ld b,07eh		;1a0e	06 7e 	. ~ 
	ret m			;1a10	f8 	. 
	ret m			;1a11	f8 	. 
	jr c,$-6		;1a12	38 f8 	8 . 
	ret nz			;1a14	c0 	. 
	ret nz			;1a15	c0 	. 
	ret nz			;1a16	c0 	. 
l1a17h:
	ret nz			;1a17	c0 	. 
	nop			;1a18	00 	. 
	nop			;1a19	00 	. 
	nop			;1a1a	00 	. 
	nop			;1a1b	00 	. 
	nop			;1a1c	00 	. 
	nop			;1a1d	00 	. 
	nop			;1a1e	00 	. 
	nop			;1a1f	00 	. 
	djnz l1a32h		;1a20	10 10 	. . 
	ret p			;1a22	f0 	. 
	djnz l19b5h		;1a23	10 90 	. . 
	djnz l1a17h		;1a25	10 f0 	. . 
	djnz l19b9h		;1a27	10 90 	. . 
	sub b			;1a29	90 	. 
	ret po			;1a2a	e0 	. 
	add a,b			;1a2b	80 	. 
	ret z			;1a2c	c8 	. 
	adc a,b			;1a2d	88 	. 
	ret p			;1a2e	f0 	. 
	add a,b			;1a2f	80 	. 
	ld h,h			;1a30	64 	d 
	ld b,h			;1a31	44 	D 
l1a32h:
	ld a,b			;1a32	78 	x 
	ld b,b			;1a33	40 	@ 
	ld a,(l3c32h)		;1a34	3a 32 3c 	: 2 < 
	jr nc,l1a45h		;1a37	30 0c 	0 . 
	ex af,af'			;1a39	08 	. 
	rrca			;1a3a	0f 	. 
	ex af,af'			;1a3b	08 	. 
	rlca			;1a3c	07 	. 
	rlca			;1a3d	07 	. 
	rlca			;1a3e	07 	. 
l1a3fh:
	rlca			;1a3f	07 	. 
	nop			;1a40	00 	. 
	nop			;1a41	00 	. 
	nop			;1a42	00 	. 
	nop			;1a43	00 	. 
	nop			;1a44	00 	. 
l1a45h:
	nop			;1a45	00 	. 
	nop			;1a46	00 	. 
	nop			;1a47	00 	. 
	nop			;1a48	00 	. 
	nop			;1a49	00 	. 
	nop			;1a4a	00 	. 
	nop			;1a4b	00 	. 
l1a4ch:
	nop			;1a4c	00 	. 
	nop			;1a4d	00 	. 
	nop			;1a4e	00 	. 
	nop			;1a4f	00 	. 
	nop			;1a50	00 	. 
	nop			;1a51	00 	. 
	nop			;1a52	00 	. 
	nop			;1a53	00 	. 
	nop			;1a54	00 	. 
	nop			;1a55	00 	. 
	nop			;1a56	00 	. 
	nop			;1a57	00 	. 
	nop			;1a58	00 	. 
	nop			;1a59	00 	. 
	nop			;1a5a	00 	. 
	nop			;1a5b	00 	. 
	nop			;1a5c	00 	. 
	inc bc			;1a5d	03 	. 
	inc bc			;1a5e	03 	. 
	nop			;1a5f	00 	. 
	nop			;1a60	00 	. 
	nop			;1a61	00 	. 
	nop			;1a62	00 	. 
	nop			;1a63	00 	. 
	nop			;1a64	00 	. 
	nop			;1a65	00 	. 
	nop			;1a66	00 	. 
	nop			;1a67	00 	. 
	nop			;1a68	00 	. 
	nop			;1a69	00 	. 
	nop			;1a6a	00 	. 
	nop			;1a6b	00 	. 
	nop			;1a6c	00 	. 
	nop			;1a6d	00 	. 
	nop			;1a6e	00 	. 
	nop			;1a6f	00 	. 
	nop			;1a70	00 	. 
	inc bc			;1a71	03 	. 
	inc bc			;1a72	03 	. 
	nop			;1a73	00 	. 
	ld b,019h		;1a74	06 19 	. . 
	add hl,de			;1a76	19 	. 
	nop			;1a77	00 	. 
	add hl,bc			;1a78	09 	. 
	ret p			;1a79	f0 	. 
	or 006h		;1a7a	f6 06 	. . 
	ld b,0f9h		;1a7c	06 f9 	. . 
	ld sp,hl			;1a7e	f9 	. 
	nop			;1a7f	00 	. 
	nop			;1a80	00 	. 
	nop			;1a81	00 	. 
	nop			;1a82	00 	. 
	nop			;1a83	00 	. 
	nop			;1a84	00 	. 
	nop			;1a85	00 	. 
	nop			;1a86	00 	. 
	nop			;1a87	00 	. 
	nop			;1a88	00 	. 
	nop			;1a89	00 	. 
	nop			;1a8a	00 	. 
	nop			;1a8b	00 	. 
	nop			;1a8c	00 	. 
	ccf			;1a8d	3f 	? 
	ccf			;1a8e	3f 	? 
	nop			;1a8f	00 	. 
	nop			;1a90	00 	. 
	pop hl			;1a91	e1 	. 
	pop hl			;1a92	e1 	. 
	ld e,000h		;1a93	1e 00 	. . 
	sbc a,(hl)			;1a95	9e 	. 
	sbc a,(hl)			;1a96	9e 	. 
	ld h,c			;1a97	61 	a 
	nop			;1a98	00 	. 
	rst 38h			;1a99	ff 	. 
	rst 38h			;1a9a	ff 	. 
	nop			;1a9b	00 	. 
	nop			;1a9c	00 	. 
	rst 38h			;1a9d	ff 	. 
	rst 38h			;1a9e	ff 	. 
	nop			;1a9f	00 	. 
	nop			;1aa0	00 	. 
	nop			;1aa1	00 	. 
	nop			;1aa2	00 	. 
	nop			;1aa3	00 	. 
	nop			;1aa4	00 	. 
	nop			;1aa5	00 	. 
	nop			;1aa6	00 	. 
	nop			;1aa7	00 	. 
	nop			;1aa8	00 	. 
	nop			;1aa9	00 	. 
	nop			;1aaa	00 	. 
	nop			;1aab	00 	. 
	nop			;1aac	00 	. 
	nop			;1aad	00 	. 
	nop			;1aae	00 	. 
	nop			;1aaf	00 	. 
	nop			;1ab0	00 	. 
	ret p			;1ab1	f0 	. 
	ret p			;1ab2	f0 	. 
	nop			;1ab3	00 	. 
	nop			;1ab4	00 	. 
	ld a,a			;1ab5	7f 	 
	ld a,a			;1ab6	7f 	 
	add a,b			;1ab7	80 	. 
	nop			;1ab8	00 	. 
	rst 38h			;1ab9	ff 	. 
	rst 38h			;1aba	ff 	. 
	nop			;1abb	00 	. 
	nop			;1abc	00 	. 
	rst 38h			;1abd	ff 	. 
	rst 38h			;1abe	ff 	. 
	nop			;1abf	00 	. 
	nop			;1ac0	00 	. 
	nop			;1ac1	00 	. 
	nop			;1ac2	00 	. 
	nop			;1ac3	00 	. 
	nop			;1ac4	00 	. 
	nop			;1ac5	00 	. 
	nop			;1ac6	00 	. 
	nop			;1ac7	00 	. 
	nop			;1ac8	00 	. 
	nop			;1ac9	00 	. 
	nop			;1aca	00 	. 
	nop			;1acb	00 	. 
	nop			;1acc	00 	. 
	nop			;1acd	00 	. 
	nop			;1ace	00 	. 
	nop			;1acf	00 	. 
	nop			;1ad0	00 	. 
	nop			;1ad1	00 	. 
	nop			;1ad2	00 	. 
	nop			;1ad3	00 	. 
	nop			;1ad4	00 	. 
	add a,b			;1ad5	80 	. 
	add a,b			;1ad6	80 	. 
	nop			;1ad7	00 	. 
	nop			;1ad8	00 	. 
	ret p			;1ad9	f0 	. 
	ret p			;1ada	f0 	. 
	nop			;1adb	00 	. 
	nop			;1adc	00 	. 
	cp 0feh		;1add	fe fe 	. . 
	nop			;1adf	00 	. 
	nop			;1ae0	00 	. 
	nop			;1ae1	00 	. 
	nop			;1ae2	00 	. 
	nop			;1ae3	00 	. 
	nop			;1ae4	00 	. 
	nop			;1ae5	00 	. 
	nop			;1ae6	00 	. 
	nop			;1ae7	00 	. 
l1ae8h:
	nop			;1ae8	00 	. 
	nop			;1ae9	00 	. 
	nop			;1aea	00 	. 
	nop			;1aeb	00 	. 
	nop			;1aec	00 	. 
	nop			;1aed	00 	. 
	nop			;1aee	00 	. 
	nop			;1aef	00 	. 
	nop			;1af0	00 	. 
	nop			;1af1	00 	. 
	nop			;1af2	00 	. 
	nop			;1af3	00 	. 
	nop			;1af4	00 	. 
	nop			;1af5	00 	. 
	nop			;1af6	00 	. 
	nop			;1af7	00 	. 
	inc e			;1af8	1c 	. 
	inc e			;1af9	1c 	. 
	nop			;1afa	00 	. 
	nop			;1afb	00 	. 
	ld c,h			;1afc	4c 	L 
	ld c,h			;1afd	4c 	L 
	inc a			;1afe	3c 	< 
	inc c			;1aff	0c 	. 
	inc bc			;1b00	03 	. 
l1b01h:
	inc bc			;1b01	03 	. 
	inc bc			;1b02	03 	. 
	inc bc			;1b03	03 	. 
	nop			;1b04	00 	. 
	nop			;1b05	00 	. 
	nop			;1b06	00 	. 
	nop			;1b07	00 	. 
	nop			;1b08	00 	. 
	nop			;1b09	00 	. 
	nop			;1b0a	00 	. 
	nop			;1b0b	00 	. 
	nop			;1b0c	00 	. 
	nop			;1b0d	00 	. 
	nop			;1b0e	00 	. 
	nop			;1b0f	00 	. 
	nop			;1b10	00 	. 
	nop			;1b11	00 	. 
	nop			;1b12	00 	. 
l1b13h:
	nop			;1b13	00 	. 
	nop			;1b14	00 	. 
	nop			;1b15	00 	. 
	nop			;1b16	00 	. 
	nop			;1b17	00 	. 
	nop			;1b18	00 	. 
	nop			;1b19	00 	. 
	nop			;1b1a	00 	. 
	nop			;1b1b	00 	. 
	nop			;1b1c	00 	. 
	nop			;1b1d	00 	. 
	nop			;1b1e	00 	. 
	nop			;1b1f	00 	. 
	rst 38h			;1b20	ff 	. 
	rst 38h			;1b21	ff 	. 
	nop			;1b22	00 	. 
	rst 38h			;1b23	ff 	. 
	rst 38h			;1b24	ff 	. 
	rst 38h			;1b25	ff 	. 
	ret m			;1b26	f8 	. 
	rst 38h			;1b27	ff 	. 
	rlca			;1b28	07 	. 
	rlca			;1b29	07 	. 
	rlca			;1b2a	07 	. 
	rlca			;1b2b	07 	. 
	nop			;1b2c	00 	. 
	nop			;1b2d	00 	. 
	nop			;1b2e	00 	. 
	nop			;1b2f	00 	. 
	nop			;1b30	00 	. 
	nop			;1b31	00 	. 
l1b32h:
	nop			;1b32	00 	. 
	nop			;1b33	00 	. 
	nop			;1b34	00 	. 
	nop			;1b35	00 	. 
	nop			;1b36	00 	. 
	nop			;1b37	00 	. 
	nop			;1b38	00 	. 
	nop			;1b39	00 	. 
	nop			;1b3a	00 	. 
	nop			;1b3b	00 	. 
	nop			;1b3c	00 	. 
	nop			;1b3d	00 	. 
	nop			;1b3e	00 	. 
	nop			;1b3f	00 	. 
	rst 38h			;1b40	ff 	. 
	add a,b			;1b41	80 	. 
	nop			;1b42	00 	. 
	add a,b			;1b43	80 	. 
	rst 38h			;1b44	ff 	. 
	cp 000h		;1b45	fe 00 	. . 
	cp 0ffh		;1b47	fe ff 	. . 
	rst 38h			;1b49	ff 	. 
	call m,sub_03ffh		;1b4a	fc ff 03 	. . . 
	inc bc			;1b4d	03 	. 
	inc bc			;1b4e	03 	. 
	inc bc			;1b4f	03 	. 
	nop			;1b50	00 	. 
	nop			;1b51	00 	. 
	nop			;1b52	00 	. 
l1b53h:
	nop			;1b53	00 	. 
	nop			;1b54	00 	. 
	nop			;1b55	00 	. 
	nop			;1b56	00 	. 
	nop			;1b57	00 	. 
	nop			;1b58	00 	. 
	nop			;1b59	00 	. 
	nop			;1b5a	00 	. 
	nop			;1b5b	00 	. 
	nop			;1b5c	00 	. 
	nop			;1b5d	00 	. 
	nop			;1b5e	00 	. 
	nop			;1b5f	00 	. 
	nop			;1b60	00 	. 
	rst 38h			;1b61	ff 	. 
	rst 38h			;1b62	ff 	. 
	nop			;1b63	00 	. 
	rst 38h			;1b64	ff 	. 
	nop			;1b65	00 	. 
	nop			;1b66	00 	. 
	nop			;1b67	00 	. 
	rst 38h			;1b68	ff 	. 
	rst 38h			;1b69	ff 	. 
	nop			;1b6a	00 	. 
	rst 38h			;1b6b	ff 	. 
	rst 38h			;1b6c	ff 	. 
	rst 38h			;1b6d	ff 	. 
	rst 38h			;1b6e	ff 	. 
	rst 38h			;1b6f	ff 	. 
	nop			;1b70	00 	. 
l1b71h:
	nop			;1b71	00 	. 
	nop			;1b72	00 	. 
	nop			;1b73	00 	. 
	nop			;1b74	00 	. 
	nop			;1b75	00 	. 
	nop			;1b76	00 	. 
	nop			;1b77	00 	. 
	nop			;1b78	00 	. 
	nop			;1b79	00 	. 
	nop			;1b7a	00 	. 
	nop			;1b7b	00 	. 
	nop			;1b7c	00 	. 
	nop			;1b7d	00 	. 
	nop			;1b7e	00 	. 
	nop			;1b7f	00 	. 
	ld bc,0fffeh		;1b80	01 fe ff 	. . . 
	nop			;1b83	00 	. 
	rst 38h			;1b84	ff 	. 
	ccf			;1b85	3f 	? 
	inc bc			;1b86	03 	. 
	ccf			;1b87	3f 	? 
	call m,sub_3cfch		;1b88	fc fc 3c 	. . < 
	call m,0c0c0h		;1b8b	fc c0 c0 	. . . 
	ret nz			;1b8e	c0 	. 
	ret nz			;1b8f	c0 	. 
	nop			;1b90	00 	. 
	nop			;1b91	00 	. 
	nop			;1b92	00 	. 
	nop			;1b93	00 	. 
	nop			;1b94	00 	. 
	nop			;1b95	00 	. 
	nop			;1b96	00 	. 
	nop			;1b97	00 	. 
	nop			;1b98	00 	. 
	nop			;1b99	00 	. 
	nop			;1b9a	00 	. 
	nop			;1b9b	00 	. 
	nop			;1b9c	00 	. 
	nop			;1b9d	00 	. 
	nop			;1b9e	00 	. 
	nop			;1b9f	00 	. 
	djnz l1bb2h		;1ba0	10 10 	. . 
	ret p			;1ba2	f0 	. 
	djnz l1b71h		;1ba3	10 cc 	. . 
	adc a,h			;1ba5	8c 	. 
	ret p			;1ba6	f0 	. 
	add a,b			;1ba7	80 	. 
	ld a,c			;1ba8	79 	y 
	ld (hl),c			;1ba9	71 	q 
	ld a,(hl)			;1baa	7e 	~ 
	ld (hl),b			;1bab	70 	p 
	rrca			;1bac	0f 	. 
	rrca			;1bad	0f 	. 
	rrca			;1bae	0f 	. 
	rrca			;1baf	0f 	. 
	nop			;1bb0	00 	. 
	nop			;1bb1	00 	. 
l1bb2h:
	nop			;1bb2	00 	. 
	nop			;1bb3	00 	. 
	nop			;1bb4	00 	. 
	nop			;1bb5	00 	. 
	nop			;1bb6	00 	. 
	nop			;1bb7	00 	. 
	nop			;1bb8	00 	. 
	nop			;1bb9	00 	. 
	nop			;1bba	00 	. 
	nop			;1bbb	00 	. 
	nop			;1bbc	00 	. 
	nop			;1bbd	00 	. 
	nop			;1bbe	00 	. 
	nop			;1bbf	00 	. 
	ld c,000h		;1bc0	0e 00 	. . 
	nop			;1bc2	00 	. 
	ld (bc),a			;1bc3	02 	. 
	dec c			;1bc4	0d 	. 
	ld b,004h		;1bc5	06 04 	. . 
	rlca			;1bc7	07 	. 
	jr l1be1h		;1bc8	18 17 	. . 
	djnz l1be3h		;1bca	10 17 	. . 
	jr nz,l1c0dh		;1bcc	20 3f 	  ? 
	jr nz,l1c0fh		;1bce	20 3f 	  ? 
	ld b,b			;1bd0	40 	@ 
	ld a,a			;1bd1	7f 	 
	ld b,b			;1bd2	40 	@ 
	ld a,a			;1bd3	7f 	 
	ccf			;1bd4	3f 	? 
l1bd5h:
	ccf			;1bd5	3f 	? 
	ccf			;1bd6	3f 	? 
	ccf			;1bd7	3f 	? 
	ld a,a			;1bd8	7f 	 
	ld h,b			;1bd9	60 	` 
	ld b,b			;1bda	40 	@ 
	ld h,b			;1bdb	60 	` 
	ccf			;1bdc	3f 	? 
	jr nc,l1bffh		;1bdd	30 20 	0   
	jr nc,$-30		;1bdf	30 e0 	0 . 
l1be1h:
	nop			;1be1	00 	. 
	nop			;1be2	00 	. 
l1be3h:
	jr nz,l1bd5h		;1be3	20 f0 	  . 
	ld b,b			;1be5	40 	@ 
	ld b,b			;1be6	40 	@ 
	ld d,b			;1be7	50 	P 
	ret nc			;1be8	d0 	. 
	jr nz,l1bfbh		;1be9	20 10 	  . 
	jr nc,l1c1dh		;1beb	30 30 	0 0 
	ret nz			;1bed	c0 	. 
	nop			;1bee	00 	. 
	ret p			;1bef	f0 	. 
	ret m			;1bf0	f8 	. 
	ld h,b			;1bf1	60 	` 
	ld h,b			;1bf2	60 	` 
	ret m			;1bf3	f8 	. 
	ret m			;1bf4	f8 	. 
	add a,b			;1bf5	80 	. 
	adc a,b			;1bf6	88 	. 
	adc a,b			;1bf7	88 	. 
	ret m			;1bf8	f8 	. 
	nop			;1bf9	00 	. 
	nop			;1bfa	00 	. 
l1bfbh:
	jr $+42		;1bfb	18 28 	. ( 
	ret c			;1bfd	d8 	. 
	ex af,af'			;1bfe	08 	. 
l1bffh:
	ret m			;1bff	f8 	. 
	rra			;1c00	1f 	. 
l1c01h:
	rra			;1c01	1f 	. 
l1c02h:
	djnz l1c23h		;1c02	10 1f 	. . 
	ld e,a			;1c04	5f 	_ 
	ld a,b			;1c05	78 	x 
	ld b,b			;1c06	40 	@ 
	ld a,b			;1c07	78 	x 
	ld e,a			;1c08	5f 	_ 
	ld (hl),b			;1c09	70 	p 
	ld b,b			;1c0a	40 	@ 
	ld (hl),b			;1c0b	70 	p 
	ld a,a			;1c0c	7f 	 
l1c0dh:
	ld c,b			;1c0d	48 	H 
	ld h,b			;1c0e	60 	` 
l1c0fh:
	ld e,b			;1c0f	58 	X 
	ld e,a			;1c10	5f 	_ 
	ld l,a			;1c11	6f 	o 
	ld b,b			;1c12	40 	@ 
	ld a,a			;1c13	7f 	 
	cpl			;1c14	2f 	/ 
	inc sp			;1c15	33 	3 
	inc hl			;1c16	23 	# 
	ccf			;1c17	3f 	? 
	ld d,h			;1c18	54 	T 
	ld l,a			;1c19	6f 	o 
	ld d,h			;1c1a	54 	T 
	ld l,a			;1c1b	6f 	o 
l1c1ch:
	dec sp			;1c1c	3b 	; 
l1c1dh:
	dec sp			;1c1d	3b 	; 
	dec sp			;1c1e	3b 	; 
	dec sp			;1c1f	3b 	; 
	xor h			;1c20	ac 	. 
	ret nc			;1c21	d0 	. 
	inc h			;1c22	24 	$ 
l1c23h:
	call c,078c4h		;1c23	dc c4 78 	. . x 
	nop			;1c26	00 	. 
	ld a,h			;1c27	7c 	| 
	jp c,05af4h		;1c28	da f4 5a 	. . Z 
	or 0d2h		;1c2b	f6 d2 	. . 
	call m,0fe50h		;1c2d	fc 50 fe 	. P . 
	or (hl)			;1c30	b6 	. 
	ret c			;1c31	d8 	. 
	or h			;1c32	b4 	. 
	jp c,07896h		;1c33	da 96 78 	. . x 
l1c36h:
	djnz l1c36h		;1c36	10 fe 	. . 
sub_1c38h:
	ld h,(hl)			;1c38	66 	f 
	cp d			;1c39	ba 	. 
	ld h,d			;1c3a	62 	b 
	cp (hl)			;1c3b	be 	. 
l1c3ch:
	call m,0fcfch		;1c3c	fc fc fc 	. . . 
	call m,sub_223bh		;1c3f	fc 3b 22 	. ; " 
	ld (l372ah),hl		;1c42	22 2a 37 	" * 7 
	ex af,af'			;1c45	08 	. 
	nop			;1c46	00 	. 
	inc c			;1c47	0c 	. 
	ld h,e			;1c48	63 	c 
	ld e,h			;1c49	5c 	\ 
	ld b,b			;1c4a	40 	@ 
	ld e,h			;1c4b	5c 	\ 
	add a,b			;1c4c	80 	. 
	rst 38h			;1c4d	ff 	. 
	add a,b			;1c4e	80 	. 
	rst 38h			;1c4f	ff 	. 
	inc bc			;1c50	03 	. 
	defb 0fdh,001h,0ffh	;illegal sequence		;1c51	fd 01 ff 	. . . 
	rst 38h			;1c54	ff 	. 
	cp 0feh		;1c55	fe fe 	. . 
	cp 0ffh		;1c57	fe ff 	. . 
	add a,b			;1c59	80 	. 
	nop			;1c5a	00 	. 
	add a,b			;1c5b	80 	. 
	call m,080e3h		;1c5c	fc e3 80 	. . . 
	ex (sp),hl			;1c5f	e3 	. 
	add a,b			;1c60	80 	. 
	nop			;1c61	00 	. 
	nop			;1c62	00 	. 
	add a,b			;1c63	80 	. 
	ret nz			;1c64	c0 	. 
	nop			;1c65	00 	. 
	nop			;1c66	00 	. 
	ld b,b			;1c67	40 	@ 
	ld l,b			;1c68	68 	h 
	cp b			;1c69	b8 	. 
	ld l,b			;1c6a	68 	h 
	ret m			;1c6b	f8 	. 
	call po,sub_243ch		;1c6c	e4 3c 24 	. < $ 
	call m,094ech		;1c6f	fc ec 94 	. . . 
	add a,h			;1c72	84 	. 
	call m,sub_04fch		;1c73	fc fc 04 	. . . 
	inc d			;1c76	14 	. 
	inc l			;1c77	2c 	, 
	ret pe			;1c78	e8 	. 
	jr l1c83h		;1c79	18 08 	. . 
	ld a,b			;1c7b	78 	x 
	sub b			;1c7c	90 	. 
	ld h,b			;1c7d	60 	` 
	nop			;1c7e	00 	. 
	ret p			;1c7f	f0 	. 
	ld a,a			;1c80	7f 	 
	ld a,h			;1c81	7c 	| 
	ld (hl),b			;1c82	70 	p 
l1c83h:
	ld a,h			;1c83	7c 	| 
	ccf			;1c84	3f 	? 
	jr z,l1ca7h		;1c85	28 20 	(   
	jr c,l1cc8h		;1c87	38 3f 	8 ? 
l1c89h:
	jr z,l1cabh		;1c89	28 20 	(   
	jr c,l1cach		;1c8b	38 1f 	8 . 
	ld d,010h		;1c8d	16 10 	. . 
	ld e,00fh		;1c8f	1e 0f 	. . 
	add hl,bc			;1c91	09 	. 
	inc c			;1c92	0c 	. 
	rrca			;1c93	0f 	. 
	rlca			;1c94	07 	. 
	ld b,006h		;1c95	06 06 	. . 
	rlca			;1c97	07 	. 
	ld bc,l0101h		;1c98	01 01 01 	. . . 
	ld bc,sub_0000h		;1c9b	01 00 00 	. . . 
	nop			;1c9e	00 	. 
	nop			;1c9f	00 	. 
	ret pe			;1ca0	e8 	. 
	djnz $+34		;1ca1	10 20 	.   
	jr l1c89h		;1ca3	18 e4 	. . 
	jr l1ca7h		;1ca5	18 00 	. . 
l1ca7h:
	inc e			;1ca7	1c 	. 
	ret pe			;1ca8	e8 	. 
	inc d			;1ca9	14 	. 
	ex af,af'			;1caa	08 	. 
l1cabh:
	inc d			;1cab	14 	. 
l1cach:
	jp nc,l022eh		;1cac	d2 2e 02 	. . . 
	ld a,0fah		;1caf	3e fa 	> . 
	add a,(hl)			;1cb1	86 	. 
	ld (de),a			;1cb2	12 	. 
	cp 0fdh		;1cb3	fe fd 	. . 
	inc sp			;1cb5	33 	3 
	ld sp,06bffh		;1cb6	31 ff 6b 	1 . k 
	xor h			;1cb9	ac 	. 
	jr z,l1cabh		;1cba	28 ef 	( . 
	rst 20h			;1cbc	e7 	. 
	rst 20h			;1cbd	e7 	. 
	rst 20h			;1cbe	e7 	. 
	rst 20h			;1cbf	e7 	. 
	ret po			;1cc0	e0 	. 
	ld b,b			;1cc1	40 	@ 
	and 0e6h		;1cc2	e6 e6 	. . 
	call pe,0e7a4h		;1cc4	ec a4 e7 	. . . 
	rst 20h			;1cc7	e7 	. 
l1cc8h:
	ret p			;1cc8	f0 	. 
	ret po			;1cc9	e0 	. 
	cp a			;1cca	bf 	. 
	cp a			;1ccb	bf 	. 
	and b			;1ccc	a0 	. 
	add a,b			;1ccd	80 	. 
	rst 38h			;1cce	ff 	. 
	rst 38h			;1ccf	ff 	. 
	cp a			;1cd0	bf 	. 
	cp a			;1cd1	bf 	. 
	rst 38h			;1cd2	ff 	. 
	rst 38h			;1cd3	ff 	. 
	rst 38h			;1cd4	ff 	. 
	and b			;1cd5	a0 	. 
	ret nz			;1cd6	c0 	. 
	ret po			;1cd7	e0 	. 
	rst 38h			;1cd8	ff 	. 
	sub b			;1cd9	90 	. 
	ret po			;1cda	e0 	. 
	ret p			;1cdb	f0 	. 
	ld a,a			;1cdc	7f 	 
	ld c,a			;1cdd	4f 	O 
	ld (hl),b			;1cde	70 	p 
	ld a,a			;1cdf	7f 	 
	ld (de),a			;1ce0	12 	. 
	ld (de),a			;1ce1	12 	. 
	ld h,a			;1ce2	67 	g 
	ld h,a			;1ce3	67 	g 
	ld sp,hl			;1ce4	f9 	. 
	ld c,c			;1ce5	49 	I 
	ld c,a			;1ce6	4f 	O 
	ld c,a			;1ce7	4f 	O 
	dec sp			;1ce8	3b 	; 
	add hl,bc			;1ce9	09 	. 
	rst 38h			;1cea	ff 	. 
	rst 38h			;1ceb	ff 	. 
	rst 38h			;1cec	ff 	. 
	ld h,l			;1ced	65 	e 
	ei			;1cee	fb 	. 
	ei			;1cef	fb 	. 
	ei			;1cf0	fb 	. 
	or c			;1cf1	b1 	. 
	adc a,a			;1cf2	8f 	. 
	cp a			;1cf3	bf 	. 
	jp p,l1e22h		;1cf4	f2 22 1e 	. " . 
	ld a,(l22a6h)		;1cf7	3a a6 22 	: . " 
	ld a,(hl)			;1cfa	7e 	~ 
	ld a,(hl)			;1cfb	7e 	~ 
	and (hl)			;1cfc	a6 	. 
	ld (bc),a			;1cfd	02 	. 
	cp 0f6h		;1cfe	fe f6 	. . 
	ld a,a			;1d00	7f 	 
	ld (hl),b			;1d01	70 	p 
	ld b,b			;1d02	40 	@ 
	ld (hl),b			;1d03	70 	p 
	rst 38h			;1d04	ff 	. 
	and b			;1d05	a0 	. 
	ret nz			;1d06	c0 	. 
	ret po			;1d07	e0 	. 
	ld e,a			;1d08	5f 	_ 
	ld d,b			;1d09	50 	P 
	ld h,b			;1d0a	60 	` 
	ld (hl),b			;1d0b	70 	p 
	ld c,a			;1d0c	4f 	O 
	ld c,b			;1d0d	48 	H 
	ld (hl),b			;1d0e	70 	p 
	ld e,b			;1d0f	58 	X 
	scf			;1d10	37 	7 
	daa			;1d11	27 	' 
	jr c,l1d53h		;1d12	38 3f 	8 ? 
	rra			;1d14	1f 	. 
	ld (de),a			;1d15	12 	. 
	rra			;1d16	1f 	. 
	rra			;1d17	1f 	. 
	ld d,a			;1d18	57 	W 
	ld d,c			;1d19	51 	Q 
	ld l,a			;1d1a	6f 	o 
	ld l,a			;1d1b	6f 	o 
	ld a,03eh		;1d1c	3e 3e 	> > 
	ld a,03eh		;1d1e	3e 3e 	> > 
	call m,sub_3c04h		;1d20	fc 04 3c 	. . < 
	inc a			;1d23	3c 	< 
	call pe,l3c00h		;1d24	ec 00 3c 	. . < 
	inc l			;1d27	2c 	, 
l1d28h:
	jp m,l1c02h		;1d28	fa 02 1c 	. . . 
	inc e			;1d2b	1c 	. 
	adc a,044h		;1d2c	ce 44 	. D 
	scf			;1d2e	37 	7 
	ld (hl),a			;1d2f	77 	w 
	call m,07f98h		;1d30	fc 98 7f 	. .  
	rst 38h			;1d33	ff 	. 
	cp a			;1d34	bf 	. 
	inc sp			;1d35	33 	3 
	rst 38h			;1d36	ff 	. 
	cp a			;1d37	bf 	. 
	jp p,0fde2h		;1d38	f2 e2 fd 	. . . 
	defb 0fdh,01fh,01fh	;illegal sequence		;1d3b	fd 1f 1f 	. . . 
	rra			;1d3e	1f 	. 
	rra			;1d3f	1f 	. 
	ret nz			;1d40	c0 	. 
	add a,b			;1d41	80 	. 
	add a,b			;1d42	80 	. 
	add a,c			;1d43	81 	. 
	ld b,b			;1d44	40 	@ 
	add a,d			;1d45	82 	. 
	nop			;1d46	00 	. 
	add a,e			;1d47	83 	. 
	ld l,c			;1d48	69 	i 
	call 0ce29h		;1d49	cd 29 ce 	. ) . 
	jp (hl)			;1d4c	e9 	. 
	adc a,0a9h		;1d4d	ce a9 	. . 
	rst 8			;1d4f	cf 	. 
	ret nz			;1d50	c0 	. 
	add a,e			;1d51	83 	. 
	ld b,b			;1d52	40 	@ 
l1d53h:
	add a,l			;1d53	85 	. 
	ld l,c			;1d54	69 	i 
	ret nc			;1d55	d0 	. 
	jp (hl)			;1d56	e9 	. 
	pop de			;1d57	d1 	. 
	ret nz			;1d58	c0 	. 
	add a,(hl)			;1d59	86 	. 
	ld b,b			;1d5a	40 	@ 
	adc a,b			;1d5b	88 	. 
	ret nz			;1d5c	c0 	. 
	adc a,c			;1d5d	89 	. 
	ld b,b			;1d5e	40 	@ 
	adc a,e			;1d5f	8b 	. 
	ret nz			;1d60	c0 	. 
	adc a,h			;1d61	8c 	. 
	ld b,b			;1d62	40 	@ 
l1d63h:
	adc a,(hl)			;1d63	8e 	. 
	ret nz			;1d64	c0 	. 
	adc a,a			;1d65	8f 	. 
	ld b,b			;1d66	40 	@ 
	sub c			;1d67	91 	. 
	ret nz			;1d68	c0 	. 
	sub d			;1d69	92 	. 
	ld b,b			;1d6a	40 	@ 
l1d6bh:
	sub h			;1d6b	94 	. 
	ret nz			;1d6c	c0 	. 
	sub l			;1d6d	95 	. 
	ld hl,(l2abch)		;1d6e	2a bc 2a 	* . * 
	cp h			;1d71	bc 	. 
	ld c,c			;1d72	49 	I 
	cp h			;1d73	bc 	. 
	ld c,c			;1d74	49 	I 
	cp h			;1d75	bc 	. 
	ld h,l			;1d76	65 	e 
	cp h			;1d77	bc 	. 
	ld h,l			;1d78	65 	e 
	cp h			;1d79	bc 	. 
	ld a,a			;1d7a	7f 	 
	cp h			;1d7b	bc 	. 
	ld h,l			;1d7c	65 	e 
	cp h			;1d7d	bc 	. 
	dec hl			;1d7e	2b 	+ 
	cp l			;1d7f	bd 	. 
	dec hl			;1d80	2b 	+ 
	cp l			;1d81	bd 	. 
	dec hl			;1d82	2b 	+ 
	cp l			;1d83	bd 	. 
	dec hl			;1d84	2b 	+ 
	cp l			;1d85	bd 	. 
	out (0bch),a		;1d86	d3 bc 	. . 
	pop af			;1d88	f1 	. 
	cp h			;1d89	bc 	. 
	out (0bch),a		;1d8a	d3 bc 	. . 
	djnz $-65		;1d8c	10 bd 	. . 
	sub h			;1d8e	94 	. 
	cp h			;1d8f	bc 	. 
	sub h			;1d90	94 	. 
	cp h			;1d91	bc 	. 
	sub h			;1d92	94 	. 
	cp h			;1d93	bc 	. 
	sub h			;1d94	94 	. 
	cp h			;1d95	bc 	. 
	ld c,c			;1d96	49 	I 
	cp l			;1d97	bd 	. 
	ld c,c			;1d98	49 	I 
	cp l			;1d99	bd 	. 
	ld c,c			;1d9a	49 	I 
	cp l			;1d9b	bd 	. 
	ld c,c			;1d9c	49 	I 
	cp l			;1d9d	bd 	. 
	ld h,a			;1d9e	67 	g 
	cp l			;1d9f	bd 	. 
	add a,h			;1da0	84 	. 
	cp l			;1da1	bd 	. 
	ld h,a			;1da2	67 	g 
	cp l			;1da3	bd 	. 
	add a,h			;1da4	84 	. 
	cp l			;1da5	bd 	. 
	out (0bch),a		;1da6	d3 bc 	. . 
	pop af			;1da8	f1 	. 
	cp h			;1da9	bc 	. 
	out (0bch),a		;1daa	d3 bc 	. . 
	djnz l1d6bh		;1dac	10 bd 	. . 
	and d			;1dae	a2 	. 
	cp l			;1daf	bd 	. 
	and d			;1db0	a2 	. 
	cp l			;1db1	bd 	. 
	and d			;1db2	a2 	. 
	cp l			;1db3	bd 	. 
	and d			;1db4	a2 	. 
	cp l			;1db5	bd 	. 
	or h			;1db6	b4 	. 
	cp h			;1db7	bc 	. 
	or h			;1db8	b4 	. 
	cp h			;1db9	bc 	. 
	or h			;1dba	b4 	. 
l1dbbh:
	cp h			;1dbb	bc 	. 
	or h			;1dbc	b4 	. 
	cp h			;1dbd	bc 	. 
	ld h,l			;1dbe	65 	e 
	cp h			;1dbf	bc 	. 
	ld h,l			;1dc0	65 	e 
	cp h			;1dc1	bc 	. 
	ld a,a			;1dc2	7f 	 
	cp h			;1dc3	bc 	. 
	ld h,l			;1dc4	65 	e 
	cp h			;1dc5	bc 	. 
	out (0bch),a		;1dc6	d3 bc 	. . 
	pop af			;1dc8	f1 	. 
	cp h			;1dc9	bc 	. 
	out (0bch),a		;1dca	d3 bc 	. . 
	djnz $-65		;1dcc	10 bd 	. . 
	ld e,b			;1dce	58 	X 
l1dcfh:
	cp (hl)			;1dcf	be 	. 
	ld e,b			;1dd0	58 	X 
	cp (hl)			;1dd1	be 	. 
	ld e,b			;1dd2	58 	X 
	cp (hl)			;1dd3	be 	. 
	ld e,b			;1dd4	58 	X 
	cp (hl)			;1dd5	be 	. 
	ld c,c			;1dd6	49 	I 
	cp l			;1dd7	bd 	. 
	ld c,c			;1dd8	49 	I 
	cp l			;1dd9	bd 	. 
	ld c,c			;1dda	49 	I 
	cp l			;1ddb	bd 	. 
	ld c,c			;1ddc	49 	I 
	cp l			;1ddd	bd 	. 
	adc a,h			;1dde	8c 	. 
	cp (hl)			;1ddf	be 	. 
	adc a,h			;1de0	8c 	. 
	cp (hl)			;1de1	be 	. 
	adc a,h			;1de2	8c 	. 
	cp (hl)			;1de3	be 	. 
	adc a,h			;1de4	8c 	. 
	cp (hl)			;1de5	be 	. 
	ld a,(03abeh)		;1de6	3a be 3a 	: . : 
	cp (hl)			;1de9	be 	. 
	ld a,(03abeh)		;1dea	3a be 3a 	: . : 
	cp (hl)			;1ded	be 	. 
	ld hl,(l2abch)		;1dee	2a bc 2a 	* . * 
	cp h			;1df1	bc 	. 
	ld c,c			;1df2	49 	I 
	cp h			;1df3	bc 	. 
	ld c,c			;1df4	49 	I 
	cp h			;1df5	bc 	. 
	jp nz,0c2bdh		;1df6	c2 bd c2 	. . . 
	cp l			;1df9	bd 	. 
	jp nz,0c2bdh		;1dfa	c2 bd c2 	. . . 
	cp l			;1dfd	bd 	. 
	inc e			;1dfe	1c 	. 
	cp (hl)			;1dff	be 	. 
	inc e			;1e00	1c 	. 
	cp (hl)			;1e01	be 	. 
	rst 38h			;1e02	ff 	. 
	cp l			;1e03	bd 	. 
	rst 38h			;1e04	ff 	. 
	cp l			;1e05	bd 	. 
	out (0bch),a		;1e06	d3 bc 	. . 
	pop af			;1e08	f1 	. 
	cp h			;1e09	bc 	. 
	out (0bch),a		;1e0a	d3 bc 	. . 
	djnz $-65		;1e0c	10 bd 	. . 
	sub h			;1e0e	94 	. 
	cp h			;1e0f	bc 	. 
	sub h			;1e10	94 	. 
	cp h			;1e11	bc 	. 
	sub h			;1e12	94 	. 
	cp h			;1e13	bc 	. 
	sub h			;1e14	94 	. 
	cp h			;1e15	bc 	. 
	ld h,a			;1e16	67 	g 
	cp l			;1e17	bd 	. 
	add a,h			;1e18	84 	. 
	cp l			;1e19	bd 	. 
	ld h,a			;1e1a	67 	g 
	cp l			;1e1b	bd 	. 
	add a,h			;1e1c	84 	. 
l1e1dh:
	cp l			;1e1d	bd 	. 
l1e1eh:
	and d			;1e1e	a2 	. 
	cp l			;1e1f	bd 	. 
	and d			;1e20	a2 	. 
	cp l			;1e21	bd 	. 
l1e22h:
	and d			;1e22	a2 	. 
	cp l			;1e23	bd 	. 
	and d			;1e24	a2 	. 
	cp l			;1e25	bd 	. 
	out (0bch),a		;1e26	d3 bc 	. . 
	pop af			;1e28	f1 	. 
	cp h			;1e29	bc 	. 
	out (0bch),a		;1e2a	d3 bc 	. . 
l1e2ch:
	djnz $-65		;1e2c	10 bd 	. . 
	ld h,l			;1e2e	65 	e 
	cp h			;1e2f	bc 	. 
	ld h,l			;1e30	65 	e 
	cp h			;1e31	bc 	. 
	ld a,a			;1e32	7f 	 
	cp h			;1e33	bc 	. 
	ld h,l			;1e34	65 	e 
	cp h			;1e35	bc 	. 
	dec hl			;1e36	2b 	+ 
	cp l			;1e37	bd 	. 
	dec hl			;1e38	2b 	+ 
	cp l			;1e39	bd 	. 
	dec hl			;1e3a	2b 	+ 
	cp l			;1e3b	bd 	. 
	dec hl			;1e3c	2b 	+ 
	cp l			;1e3d	bd 	. 
l1e3eh:
	pop hl			;1e3e	e1 	. 
	cp l			;1e3f	bd 	. 
	jp nz,0c2bdh		;1e40	c2 bd c2 	. . . 
	cp l			;1e43	bd 	. 
	jp nz,0d3bdh		;1e44	c2 bd d3 	. . . 
	cp h			;1e47	bc 	. 
	pop af			;1e48	f1 	. 
	cp h			;1e49	bc 	. 
	out (0bch),a		;1e4a	d3 bc 	. . 
	djnz $-65		;1e4c	10 bd 	. . 
	halt			;1e4e	76 	v 
	cp (hl)			;1e4f	be 	. 
	halt			;1e50	76 	v 
	cp (hl)			;1e51	be 	. 
	halt			;1e52	76 	v 
	cp (hl)			;1e53	be 	. 
	halt			;1e54	76 	v 
	cp (hl)			;1e55	be 	. 
	ld hl,(l2abch)		;1e56	2a bc 2a 	* . * 
	cp h			;1e59	bc 	. 
	ld c,c			;1e5a	49 	I 
	cp h			;1e5b	bc 	. 
	ld c,c			;1e5c	49 	I 
	cp h			;1e5d	bc 	. 
	or h			;1e5e	b4 	. 
	cp h			;1e5f	bc 	. 
	or h			;1e60	b4 	. 
	cp h			;1e61	bc 	. 
	or h			;1e62	b4 	. 
	cp h			;1e63	bc 	. 
	or h			;1e64	b4 	. 
	cp h			;1e65	bc 	. 
	ld a,(03abeh)		;1e66	3a be 3a 	: . : 
	cp (hl)			;1e69	be 	. 
	ld a,(03abeh)		;1e6a	3a be 3a 	: . : 
	cp (hl)			;1e6d	be 	. 
	inc e			;1e6e	1c 	. 
	cp (hl)			;1e6f	be 	. 
	inc e			;1e70	1c 	. 
	cp (hl)			;1e71	be 	. 
	rst 38h			;1e72	ff 	. 
	cp l			;1e73	bd 	. 
	rst 38h			;1e74	ff 	. 
	cp l			;1e75	bd 	. 
	sub h			;1e76	94 	. 
	cp h			;1e77	bc 	. 
	sub h			;1e78	94 	. 
	cp h			;1e79	bc 	. 
	sub h			;1e7a	94 	. 
	cp h			;1e7b	bc 	. 
	sub h			;1e7c	94 	. 
	cp h			;1e7d	bc 	. 
	ld h,a			;1e7e	67 	g 
	cp l			;1e7f	bd 	. 
l1e80h:
	add a,h			;1e80	84 	. 
	cp l			;1e81	bd 	. 
	ld h,a			;1e82	67 	g 
	cp l			;1e83	bd 	. 
	add a,h			;1e84	84 	. 
	cp l			;1e85	bd 	. 
	out (0bch),a		;1e86	d3 bc 	. . 
	pop af			;1e88	f1 	. 
	cp h			;1e89	bc 	. 
	out (0bch),a		;1e8a	d3 bc 	. . 
	djnz $-65		;1e8c	10 bd 	. . 
	jp nz,0c2bdh		;1e8e	c2 bd c2 	. . . 
	cp l			;1e91	bd 	. 
	jp nz,0c2bdh		;1e92	c2 bd c2 	. . . 
	cp l			;1e95	bd 	. 
	ld h,l			;1e96	65 	e 
	cp h			;1e97	bc 	. 
	ld h,l			;1e98	65 	e 
	cp h			;1e99	bc 	. 
	ld a,a			;1e9a	7f 	 
	cp h			;1e9b	bc 	. 
	ld h,l			;1e9c	65 	e 
	cp h			;1e9d	bc 	. 
	and d			;1e9e	a2 	. 
	cp l			;1e9f	bd 	. 
	and d			;1ea0	a2 	. 
	cp l			;1ea1	bd 	. 
	and d			;1ea2	a2 	. 
	cp l			;1ea3	bd 	. 
	and d			;1ea4	a2 	. 
	cp l			;1ea5	bd 	. 
	out (0bch),a		;1ea6	d3 bc 	. . 
	pop af			;1ea8	f1 	. 
	cp h			;1ea9	bc 	. 
	out (0bch),a		;1eaa	d3 bc 	. . 
	djnz $-65		;1eac	10 bd 	. . 
	xor b			;1eae	a8 	. 
	cp (hl)			;1eaf	be 	. 
	xor b			;1eb0	a8 	. 
	cp (hl)			;1eb1	be 	. 
	xor b			;1eb2	a8 	. 
	cp (hl)			;1eb3	be 	. 
	xor b			;1eb4	a8 	. 
	cp (hl)			;1eb5	be 	. 
	cp 09fh		;1eb6	fe 9f 	. . 
	adc a,a			;1eb8	8f 	. 
	and b			;1eb9	a0 	. 
	ld h,l			;1eba	65 	e 
	and c			;1ebb	a1 	. 
	call z,024a1h		;1ebc	cc a1 24 	. . $ 
	and d			;1ebf	a2 	. 
	or l			;1ec0	b5 	. 
	and d			;1ec1	a2 	. 
	ld c,c			;1ec2	49 	I 
	and e			;1ec3	a3 	. 
	xor d			;1ec4	aa 	. 
	and e			;1ec5	a3 	. 
	ex af,af'			;1ec6	08 	. 
	xor d			;1ec7	aa 	. 
	ld e,l			;1ec8	5d 	] 
	xor d			;1ec9	aa 	. 
	or l			;1eca	b5 	. 
	xor d			;1ecb	aa 	. 
	ld sp,0ddabh		;1ecc	31 ab dd 	1 . . 
	and (hl)			;1ecf	a6 	. 
	inc e			;1ed0	1c 	. 
	xor b			;1ed1	a8 	. 
	inc de			;1ed2	13 	. 
	xor c			;1ed3	a9 	. 
	xor l			;1ed4	ad 	. 
	xor c			;1ed5	a9 	. 
	ret p			;1ed6	f0 	. 
	and e			;1ed7	a3 	. 
	ld h,e			;1ed8	63 	c 
	and h			;1ed9	a4 	. 
	out (0a4h),a		;1eda	d3 a4 	. . 
	inc de			;1edc	13 	. 
	and l			;1edd	a5 	. 
	adc a,h			;1ede	8c 	. 
	xor e			;1edf	ab 	. 
	ld h,0ach		;1ee0	26 ac 	& . 
	ld a,(hl)			;1ee2	7e 	~ 
	xor h			;1ee3	ac 	. 
	ret nc			;1ee4	d0 	. 
	xor h			;1ee5	ac 	. 
	ld (06badh),hl		;1ee6	22 ad 6b 	" . k 
	xor l			;1ee9	ad 	. 
	defb 0edh;next byte illegal after ed		;1eea	ed 	. 
	xor l			;1eeb	ad 	. 
	ld b,d			;1eec	42 	B 
	xor (hl)			;1eed	ae 	. 
	and (ix+01ch)		;1eee	dd a6 1c 	. . . 
	xor b			;1ef1	a8 	. 
	inc de			;1ef2	13 	. 
	xor c			;1ef3	a9 	. 
	xor l			;1ef4	ad 	. 
	xor c			;1ef5	a9 	. 
	ld h,a			;1ef6	67 	g 
	xor (hl)			;1ef7	ae 	. 
	call pe,sub_38aeh		;1ef8	ec ae 38 	. . 8 
	xor a			;1efb	af 	. 
	ld e,l			;1efc	5d 	] 
	xor a			;1efd	af 	. 
	ld b,h			;1efe	44 	D 
	and l			;1eff	a5 	. 
l1f00h:
	sbc a,a			;1f00	9f 	. 
	and l			;1f01	a5 	. 
	add hl,bc			;1f02	09 	. 
	and (hl)			;1f03	a6 	. 
	ld l,l			;1f04	6d 	m 
	and (hl)			;1f05	a6 	. 
	inc h			;1f06	24 	$ 
	and d			;1f07	a2 	. 
	or l			;1f08	b5 	. 
	and d			;1f09	a2 	. 
	ld c,c			;1f0a	49 	I 
	and e			;1f0b	a3 	. 
	xor d			;1f0c	aa 	. 
	and e			;1f0d	a3 	. 
	and (ix+01ch)		;1f0e	dd a6 1c 	. . . 
	xor b			;1f11	a8 	. 
	inc de			;1f12	13 	. 
	xor c			;1f13	a9 	. 
	xor l			;1f14	ad 	. 
	xor c			;1f15	a9 	. 
	ld c,h			;1f16	4c 	L 
	or l			;1f17	b5 	. 
	push bc			;1f18	c5 	. 
	or l			;1f19	b5 	. 
	add hl,hl			;1f1a	29 	) 
	or (hl)			;1f1b	b6 	. 
	ld a,(hl)			;1f1c	7e 	~ 
	or (hl)			;1f1d	b6 	. 
	adc a,h			;1f1e	8c 	. 
l1f1fh:
	xor e			;1f1f	ab 	. 
	ld h,0ach		;1f20	26 ac 	& . 
	ld a,(hl)			;1f22	7e 	~ 
	xor h			;1f23	ac 	. 
	ret nc			;1f24	d0 	. 
	xor h			;1f25	ac 	. 
	sbc a,c			;1f26	99 	. 
	cp b			;1f27	b8 	. 
	pop af			;1f28	f1 	. 
	cp b			;1f29	b8 	. 
	ld b,b			;1f2a	40 	@ 
	cp c			;1f2b	b9 	. 
	adc a,h			;1f2c	8c 	. 
	cp c			;1f2d	b9 	. 
	dec sp			;1f2e	3b 	; 
	or e			;1f2f	b3 	. 
	call po,05ab3h		;1f30	e4 b3 5a 	. . Z 
	or h			;1f33	b4 	. 
	nop			;1f34	00 	. 
	or l			;1f35	b5 	. 
	cp 09fh		;1f36	fe 9f 	. . 
	adc a,a			;1f38	8f 	. 
	and b			;1f39	a0 	. 
	ld h,l			;1f3a	65 	e 
	and c			;1f3b	a1 	. 
	call z,094a1h		;1f3c	cc a1 94 	. . . 
	xor a			;1f3f	af 	. 
	ld a,(0cbb0h)		;1f40	3a b0 cb 	: . . 
	or b			;1f43	b0 	. 
	ld c,d			;1f44	4a 	J 
	or c			;1f45	b1 	. 
	push de			;1f46	d5 	. 
	or c			;1f47	b1 	. 
	ld d,h			;1f48	54 	T 
	or d			;1f49	b2 	. 
	xor c			;1f4a	a9 	. 
	or d			;1f4b	b2 	. 
	push af			;1f4c	f5 	. 
	or d			;1f4d	b2 	. 
	and (ix+01ch)		;1f4e	dd a6 1c 	. . . 
	xor b			;1f51	a8 	. 
	inc de			;1f52	13 	. 
	xor c			;1f53	a9 	. 
	xor l			;1f54	ad 	. 
	xor c			;1f55	a9 	. 
	ret p			;1f56	f0 	. 
	and e			;1f57	a3 	. 
	ld h,e			;1f58	63 	c 
	and h			;1f59	a4 	. 
	out (0a4h),a		;1f5a	d3 a4 	. . 
	inc de			;1f5c	13 	. 
	and l			;1f5d	a5 	. 
	ld (06badh),hl		;1f5e	22 ad 6b 	" . k 
	xor l			;1f61	ad 	. 
	defb 0edh;next byte illegal after ed		;1f62	ed 	. 
	xor l			;1f63	ad 	. 
	ld b,d			;1f64	42 	B 
	xor (hl)			;1f65	ae 	. 
	ld h,a			;1f66	67 	g 
	xor (hl)			;1f67	ae 	. 
	call pe,sub_38aeh		;1f68	ec ae 38 	. . 8 
	xor a			;1f6b	af 	. 
	ld e,l			;1f6c	5d 	] 
	xor a			;1f6d	af 	. 
	and (ix+01ch)		;1f6e	dd a6 1c 	. . . 
	xor b			;1f71	a8 	. 
	inc de			;1f72	13 	. 
	xor c			;1f73	a9 	. 
	xor l			;1f74	ad 	. 
	xor c			;1f75	a9 	. 
	inc h			;1f76	24 	$ 
	and d			;1f77	a2 	. 
	or l			;1f78	b5 	. 
	and d			;1f79	a2 	. 
	ld c,c			;1f7a	49 	I 
	and e			;1f7b	a3 	. 
	xor d			;1f7c	aa 	. 
	and e			;1f7d	a3 	. 
	ex af,af'			;1f7e	08 	. 
	xor d			;1f7f	aa 	. 
	ld e,l			;1f80	5d 	] 
	xor d			;1f81	aa 	. 
	or l			;1f82	b5 	. 
	xor d			;1f83	aa 	. 
	ld sp,094abh		;1f84	31 ab 94 	1 . . 
	xor a			;1f87	af 	. 
	ld a,(0cbb0h)		;1f88	3a b0 cb 	: . . 
	or b			;1f8b	b0 	. 
	ld c,d			;1f8c	4a 	J 
	or c			;1f8d	b1 	. 
	and (ix+01ch)		;1f8e	dd a6 1c 	. . . 
	xor b			;1f91	a8 	. 
	inc de			;1f92	13 	. 
	xor c			;1f93	a9 	. 
	xor l			;1f94	ad 	. 
	xor c			;1f95	a9 	. 
	exx			;1f96	d9 	. 
	or (hl)			;1f97	b6 	. 
	ld b,(hl)			;1f98	46 	F 
	or a			;1f99	b7 	. 
	jp nz,l23b7h		;1f9a	c2 b7 23 	. . # 
	cp b			;1f9d	b8 	. 
	cp 09fh		;1f9e	fe 9f 	. . 
	adc a,a			;1fa0	8f 	. 
	and b			;1fa1	a0 	. 
	ld h,l			;1fa2	65 	e 
	and c			;1fa3	a1 	. 
	call z,044a1h		;1fa4	cc a1 44 	. . D 
	and l			;1fa7	a5 	. 
	sbc a,a			;1fa8	9f 	. 
	and l			;1fa9	a5 	. 
	add hl,bc			;1faa	09 	. 
	and (hl)			;1fab	a6 	. 
	ld l,l			;1fac	6d 	m 
	and (hl)			;1fad	a6 	. 
	dec sp			;1fae	3b 	; 
	or e			;1faf	b3 	. 
	call po,05ab3h		;1fb0	e4 b3 5a 	. . Z 
	or h			;1fb3	b4 	. 
	nop			;1fb4	00 	. 
	or l			;1fb5	b5 	. 
	push de			;1fb6	d5 	. 
	or c			;1fb7	b1 	. 
	ld d,h			;1fb8	54 	T 
	or d			;1fb9	b2 	. 
	xor c			;1fba	a9 	. 
	or d			;1fbb	b2 	. 
	push af			;1fbc	f5 	. 
	or d			;1fbd	b2 	. 
	ret p			;1fbe	f0 	. 
	and e			;1fbf	a3 	. 
	ld h,e			;1fc0	63 	c 
	and h			;1fc1	a4 	. 
	out (0a4h),a		;1fc2	d3 a4 	. . 
	inc de			;1fc4	13 	. 
	and l			;1fc5	a5 	. 
	ld (06badh),hl		;1fc6	22 ad 6b 	" . k 
	xor l			;1fc9	ad 	. 
	defb 0edh;next byte illegal after ed		;1fca	ed 	. 
	xor l			;1fcb	ad 	. 
	ld b,d			;1fcc	42 	B 
	xor (hl)			;1fcd	ae 	. 
	and (ix+01ch)		;1fce	dd a6 1c 	. . . 
	xor b			;1fd1	a8 	. 
	inc de			;1fd2	13 	. 
	xor c			;1fd3	a9 	. 
	xor l			;1fd4	ad 	. 
	xor c			;1fd5	a9 	. 
	sub h			;1fd6	94 	. 
	xor a			;1fd7	af 	. 
	ld a,(0cbb0h)		;1fd8	3a b0 cb 	: . . 
	or b			;1fdb	b0 	. 
	ld c,d			;1fdc	4a 	J 
	or c			;1fdd	b1 	. 
	inc h			;1fde	24 	$ 
	and d			;1fdf	a2 	. 
	or l			;1fe0	b5 	. 
	and d			;1fe1	a2 	. 
	ld c,c			;1fe2	49 	I 
	and e			;1fe3	a3 	. 
	xor d			;1fe4	aa 	. 
	and e			;1fe5	a3 	. 
	ld h,a			;1fe6	67 	g 
	xor (hl)			;1fe7	ae 	. 
	call pe,sub_38aeh		;1fe8	ec ae 38 	. . 8 
	xor a			;1feb	af 	. 
	ld e,l			;1fec	5d 	] 
	xor a			;1fed	af 	. 
	and (ix+01ch)		;1fee	dd a6 1c 	. . . 
	xor b			;1ff1	a8 	. 
	inc de			;1ff2	13 	. 
	xor c			;1ff3	a9 	. 
	xor l			;1ff4	ad 	. 
	xor c			;1ff5	a9 	. 
	push de			;1ff6	d5 	. 
	cp c			;1ff7	b9 	. 
	push de			;1ff8	d5 	. 
	cp c			;1ff9	b9 	. 
	push de			;1ffa	d5 	. 
	cp c			;1ffb	b9 	. 
	push de			;1ffc	d5 	. 
	cp c			;1ffd	b9 	. 
	ld bc,l002fh		;1ffe	01 2f 00 	. / . 
	ex af,af'			;2001	08 	. 
	ld b,b			;2002	40 	@ 
	sbc a,(hl)			;2003	9e 	. 
	inc de			;2004	13 	. 
	ld l,046h		;2005	2e 46 	. F 
	rla			;2007	17 	. 
	xor (hl)			;2008	ae 	. 
	ld b,(hl)			;2009	46 	F 
	dec de			;200a	1b 	. 
	jr c,$+4		;200b	38 02 	8 . 
l200dh:
	dec de			;200d	1b 	. 
	ld l,046h		;200e	2e 46 	. F 
	sbc a,h			;2010	9c 	. 
	ret nz			;2011	c0 	. 
	ld c,a			;2012	4f 	O 
	ld e,0c0h		;2013	1e c0 	. . 
	add a,a			;2015	87 	. 
	dec h			;2016	25 	% 
	ld d,b			;2017	50 	P 
	inc bc			;2018	03 	. 
	and (hl)			;2019	a6 	. 
	inc l			;201a	2c 	, 
	ld (de),a			;201b	12 	. 
	ld h,02ch		;201c	26 2c 	& , 
	ld c,d			;201e	4a 	J 
	cpl			;201f	2f 	/ 
sub_2020h:
	inc l			;2020	2c 	, 
	ld c,c			;2021	49 	I 
	or e			;2022	b3 	. 
	xor h			;2023	ac 	. 
	add hl,bc			;2024	09 	. 
	or e			;2025	b3 	. 
	inc l			;2026	2c 	, 
	ld c,c			;2027	49 	I 
	inc sp			;2028	33 	3 
	inc l			;2029	2c 	, 
	adc a,c			;202a	89 	. 
	jr c,l2059h		;202b	38 2c 	8 , 
	ld c,c			;202d	49 	I 
	inc a			;202e	3c 	< 
	ld d,b			;202f	50 	P 
	inc bc			;2030	03 	. 
	inc a			;2031	3c 	< 
	inc l			;2032	2c 	, 
	adc a,c			;2033	89 	. 
	ccf			;2034	3f 	? 
	inc l			;2035	2c 	, 
	add hl,bc			;2036	09 	. 
	call nz,sub_09ach		;2037	c4 ac 09 	. . . 
	call nz,0492ch		;203a	c4 2c 49 	. , I 
	call nz,0892ch		;203d	c4 2c 89 	. , . 
	ld c,b			;2040	48 	H 
	inc l			;2041	2c 	, 
	adc a,c			;2042	89 	. 
	ld c,l			;2043	4d 	M 
	inc l			;2044	2c 	, 
	ex af,af'			;2045	08 	. 
	ld c,a			;2046	4f 	O 
	inc l			;2047	2c 	, 
	ld c,b			;2048	48 	H 
	ld d,d			;2049	52 	R 
	inc l			;204a	2c 	, 
	ld e,b			;204b	58 	X 
	ld d,e			;204c	53 	S 
	ld d,b			;204d	50 	P 
	inc bc			;204e	03 	. 
	ld d,l			;204f	55 	U 
	inc l			;2050	2c 	, 
	adc a,c			;2051	89 	. 
	ld d,a			;2052	57 	W 
	inc l			;2053	2c 	, 
	ex af,af'			;2054	08 	. 
	ld e,c			;2055	59 	Y 
	inc l			;2056	2c 	, 
	ex af,af'			;2057	08 	. 
sub_2058h:
	ld e,l			;2058	5d 	] 
l2059h:
	inc l			;2059	2c 	, 
	ld c,c			;205a	49 	I 
	ld h,c			;205b	61 	a 
	jr c,l2060h		;205c	38 02 	8 . 
	ld h,c			;205e	61 	a 
	inc l			;205f	2c 	, 
l2060h:
	ld c,c			;2060	49 	I 
	ld h,h			;2061	64 	d 
	ld d,b			;2062	50 	P 
	inc b			;2063	04 	. 
	ld h,l			;2064	65 	e 
	inc l			;2065	2c 	, 
	add hl,bc			;2066	09 	. 
	ld h,(hl)			;2067	66 	f 
	ld b,h			;2068	44 	D 
	add a,a			;2069	87 	. 
	ld l,c			;206a	69 	i 
	inc l			;206b	2c 	, 
	ld c,c			;206c	49 	I 
	jp (hl)			;206d	e9 	. 
	call nz,0e90fh		;206e	c4 0f e9 	. . . 
	ld b,h			;2071	44 	D 
	ld c,a			;2072	4f 	O 
	jp (hl)			;2073	e9 	. 
	ld b,h			;2074	44 	D 
	sbc a,l			;2075	9d 	. 
	ld l,e			;2076	6b 	k 
	ld b,h			;2077	44 	D 
	sbc a,l			;2078	9d 	. 
	ld l,l			;2079	6d 	m 
	inc l			;207a	2c 	, 
	add hl,bc			;207b	09 	. 
	neg		;207c	ed 44 	. D 
	ld d,b			;207e	50 	P 
	neg		;207f	ed 44 	. D 
	sbc a,l			;2081	9d 	. 
	halt			;2082	76 	v 
	inc l			;2083	2c 	, 
	add hl,bc			;2084	09 	. 
	ld sp,hl			;2085	f9 	. 
	call nz,0f90fh		;2086	c4 0f f9 	. . . 
	ld b,h			;2089	44 	D 
	ld c,a			;208a	4f 	O 
	ld sp,hl			;208b	f9 	. 
	ld b,h			;208c	44 	D 
	sbc a,l			;208d	9d 	. 
	ld a,a			;208e	7f 	 
	ld bc,0012fh		;208f	01 2f 01 	. / . 
	adc a,a			;2092	8f 	. 
	inc l			;2093	2c 	, 
	add hl,bc			;2094	09 	. 
	sub l			;2095	95 	. 
	ld d,b			;2096	50 	P 
	inc e			;2097	1c 	. 
	sub l			;2098	95 	. 
	ld d,b			;2099	50 	P 
	sbc a,h			;209a	9c 	. 
	rla			;209b	17 	. 
	inc l			;209c	2c 	, 
	ld e,b			;209d	58 	X 
	ld a,(de)			;209e	1a 	. 
	inc l			;209f	2c 	, 
	ld (de),a			;20a0	12 	. 
	dec de			;20a1	1b 	. 
	ld d,b			;20a2	50 	P 
	inc bc			;20a3	03 	. 
	inc e			;20a4	1c 	. 
	inc l			;20a5	2c 	, 
l20a6h:
	ld c,b			;20a6	48 	H 
	dec e			;20a7	1d 	. 
	inc l			;20a8	2c 	, 
	adc a,b			;20a9	88 	. 
	daa			;20aa	27 	' 
	xor h			;20ab	ac 	. 
	ld c,b			;20ac	48 	H 
	add hl,hl			;20ad	29 	) 
	inc l			;20ae	2c 	, 
	ld c,b			;20af	48 	H 
	dec hl			;20b0	2b 	+ 
	xor h			;20b1	ac 	. 
	ld c,b			;20b2	48 	H 
	dec hl			;20b3	2b 	+ 
	jr c,l20b8h		;20b4	38 02 	8 . 
	cpl			;20b6	2f 	/ 
	xor h			;20b7	ac 	. 
l20b8h:
	ld c,b			;20b8	48 	H 
	ld sp,l082ch		;20b9	31 2c 08 	1 , . 
	jr nc,l210eh		;20bc	30 50 	0 P 
	inc b			;20be	04 	. 
	ld (l0350h),a		;20bf	32 50 03 	2 P . 
	inc sp			;20c2	33 	3 
	inc l			;20c3	2c 	, 
	sub h			;20c4	94 	. 
	cp h			;20c5	bc 	. 
	jr c,$+4		;20c6	38 02 	8 . 
	cp h			;20c8	bc 	. 
	jr c,l210dh		;20c9	38 42 	8 B 
	ccf			;20cb	3f 	? 
	inc l			;20cc	2c 	, 
	jr $+67		;20cd	18 41 	. A 
	ld d,b			;20cf	50 	P 
	inc bc			;20d0	03 	. 
	call nz,sub_0238h		;20d1	c4 38 02 	. 8 . 
	call nz,04238h		;20d4	c4 38 42 	. 8 B 
	call nz,0172ch		;20d7	c4 2c 17 	. , . 
	ret z			;20da	c8 	. 
	cp b			;20db	b8 	. 
	djnz l20a6h		;20dc	10 c8 	. . 
	jr c,$+82		;20de	38 50 	8 P 
	ret z			;20e0	c8 	. 
	cp b			;20e1	b8 	. 
	sbc a,l			;20e2	9d 	. 
	ld c,d			;20e3	4a 	J 
	ld b,h			;20e4	44 	D 
	sbc a,l			;20e5	9d 	. 
	call z,04fc4h		;20e6	cc c4 4f 	. . O 
	call z,09d44h		;20e9	cc 44 9d 	. D . 
	call z,05038h		;20ec	cc 38 50 	. 8 P 
	call z,09db8h		;20ef	cc b8 9d 	. . . 
	adc a,0c4h		;20f2	ce c4 	. . 
	ld c,a			;20f4	4f 	O 
	adc a,044h		;20f5	ce 44 	. D 
	sbc a,l			;20f7	9d 	. 
	adc a,038h		;20f8	ce 38 	. 8 
	ld d,b			;20fa	50 	P 
	ret nc			;20fb	d0 	. 
	cp b			;20fc	b8 	. 
	ld c,a			;20fd	4f 	O 
	ret nc			;20fe	d0 	. 
	call z,0d087h		;20ff	cc 87 d0 	. . . 
	ld b,h			;2102	44 	D 
	ld d,b			;2103	50 	P 
	ret nc			;2104	d0 	. 
	ld b,h			;2105	44 	D 
	add a,a			;2106	87 	. 
	ld d,d			;2107	52 	R 
	ld b,h			;2108	44 	D 
	sbc a,l			;2109	9d 	. 
	ld d,d			;210a	52 	R 
	inc l			;210b	2c 	, 
	sub a			;210c	97 	. 
l210dh:
	rst 10h			;210d	d7 	. 
l210eh:
	call nz,0d70fh		;210e	c4 0f d7 	. . . 
	call nz,0d74fh		;2111	c4 4f d7 	. O . 
	call nz,0dd9dh		;2114	c4 9d dd 	. . . 
	ld b,h			;2117	44 	D 
	ld c,a			;2118	4f 	O 
	defb 0ddh,044h	;ld b,ixh		;2119	dd 44 	. D 
	sbc a,l			;211b	9d 	. 
	rst 18h			;211c	df 	. 
	call nz,0df4fh		;211d	c4 4f df 	. O . 
	ld b,h			;2120	44 	D 
l2121h:
	add a,a			;2121	87 	. 
	pop hl			;2122	e1 	. 
	ld b,h			;2123	44 	D 
	ld c,a			;2124	4f 	O 
	pop hl			;2125	e1 	. 
	call nz,06387h		;2126	c4 87 63 	. . c 
	ld b,h			;2129	44 	D 
	add a,a			;212a	87 	. 
	ld h,h			;212b	64 	d 
	inc l			;212c	2c 	, 
	ex af,af'			;212d	08 	. 
	ld l,d			;212e	6a 	j 
	jr c,l2133h		;212f	38 02 	8 . 
	ex de,hl			;2131	eb 	. 
	cp b			;2132	b8 	. 
l2133h:
	ld c,a			;2133	4f 	O 
	ex de,hl			;2134	eb 	. 
	cp b			;2135	b8 	. 
	sbc a,l			;2136	9d 	. 
	ex de,hl			;2137	eb 	. 
	call nz,0eb10h		;2138	c4 10 eb 	. . . 
	ld b,h			;213b	44 	D 
	ld d,b			;213c	50 	P 
	ex de,hl			;213d	eb 	. 
	call nz,0ef87h		;213e	c4 87 ef 	. . . 
	call nz,0ef4fh		;2141	c4 4f ef 	. O . 
	ld b,h			;2144	44 	D 
	add a,a			;2145	87 	. 
	ret p			;2146	f0 	. 
	cp b			;2147	b8 	. 
	djnz $-14		;2148	10 f0 	. . 
	jr c,l219ch		;214a	38 50 	8 P 
	ret p			;214c	f0 	. 
	call z,0f187h		;214d	cc 87 f1 	. . . 
l2150h:
	call nz,0f14fh		;2150	c4 4f f1 	. O . 
	ld b,h			;2153	44 	D 
	sbc a,l			;2154	9d 	. 
	jp p,05038h		;2155	f2 38 50 	. 8 P 
	jp p,09db8h		;2158	f2 b8 9d 	. . . 
	ld (hl),h			;215b	74 	t 
	jr c,l2163h		;215c	38 05 	8 . 
	ld (hl),h			;215e	74 	t 
	inc l			;215f	2c 	, 
	ld e,b			;2160	58 	X 
	ld a,b			;2161	78 	x 
	inc l			;2162	2c 	, 
l2163h:
	ex af,af'			;2163	08 	. 
	ld a,a			;2164	7f 	 
	ld bc,l002fh		;2165	01 2f 00 	. / . 
	dec bc			;2168	0b 	. 
	ld b,b			;2169	40 	@ 
	rla			;216a	17 	. 
	rrca			;216b	0f 	. 
	inc l			;216c	2c 	, 
	ex af,af'			;216d	08 	. 
	ld de,056ach		;216e	11 ac 56 	. . V 
	inc de			;2171	13 	. 
	inc l			;2172	2c 	, 
	ex af,af'			;2173	08 	. 
	ld a,(de)			;2174	1a 	. 
	inc l			;2175	2c 	, 
	ld d,01bh		;2176	16 1b 	. . 
l2178h:
	ld d,b			;2178	50 	P 
	inc b			;2179	04 	. 
	inc hl			;217a	23 	# 
	ld d,b			;217b	50 	P 
	jr $+39		;217c	18 25 	. % 
	ld l,087h		;217e	2e 87 	. . 
	daa			;2180	27 	' 
	jr c,l2189h		;2181	38 06 	8 . 
	jr z,l21bdh		;2183	28 38 	( 8 
	dec de			;2185	1b 	. 
	inc l			;2186	2c 	, 
	ld l,007h		;2187	2e 07 	. . 
l2189h:
	ld sp,l0554h		;2189	31 54 05 	1 T . 
	dec (hl)			;218c	35 	5 
	inc a			;218d	3c 	< 
	ld c,e			;218e	4b 	K 
	jr c,l21e5h		;218f	38 54 	8 T 
	inc b			;2191	04 	. 
	ccf			;2192	3f 	? 
	cp h			;2193	bc 	. 
	ld c,l			;2194	4d 	M 
	ld b,b			;2195	40 	@ 
	inc a			;2196	3c 	< 
	dec bc			;2197	0b 	. 
	ld b,e			;2198	43 	C 
	ld c,b			;2199	48 	H 
	inc bc			;219a	03 	. 
	ld c,e			;219b	4b 	K 
l219ch:
	inc a			;219c	3c 	< 
	dec bc			;219d	0b 	. 
	ld c,l			;219e	4d 	M 
	cp h			;219f	bc 	. 
	ld c,l			;21a0	4d 	M 
	ld d,a			;21a1	57 	W 
l21a2h:
	jr c,l21f1h		;21a2	38 4d 	8 M 
	jp c,00a3bh		;21a4	da 3b 0a 	. ; . 
	jp c,0513bh		;21a7	da 3b 51 	. ; Q 
	ld h,a			;21aa	67 	g 
	ld a,(06987h)		;21ab	3a 87 69 	: . i 
	inc a			;21ae	3c 	< 
	inc bc			;21af	03 	. 
	ld l,d			;21b0	6a 	j 
	ld c,b			;21b1	48 	H 
	sub e			;21b2	93 	. 
	ld l,d			;21b3	6a 	j 
	ld a,(06d07h)		;21b4	3a 07 6d 	: . m 
	ld c,b			;21b7	48 	H 
	sub e			;21b8	93 	. 
	ld l,l			;21b9	6d 	m 
	ld a,(07147h)		;21ba	3a 47 71 	: G q 
l21bdh:
	ld a,(07407h)		;21bd	3a 07 74 	: . t 
	ld a,(07647h)		;21c0	3a 47 76 	: G v 
	ld b,b			;21c3	40 	@ 
	inc bc			;21c4	03 	. 
	halt			;21c5	76 	v 
	jr c,l2150h		;21c6	38 88 	8 . 
	ld a,b			;21c8	78 	x 
	cp d			;21c9	ba 	. 
	ld b,a			;21ca	47 	G 
	ld a,a			;21cb	7f 	 
	ld bc,l013bh		;21cc	01 3b 01 	. ; . 
	rlca			;21cf	07 	. 
	ld b,b			;21d0	40 	@ 
	rla			;21d1	17 	. 
	inc c			;21d2	0c 	. 
	jr c,l21ebh		;21d3	38 16 	8 . 
	ld c,038h		;21d5	0e 38 	. 8 
	ld c,b			;21d7	48 	H 
	ld a,(de)			;21d8	1a 	. 
	jr c,l21e4h		;21d9	38 09 	8 . 
	dec de			;21db	1b 	. 
	ld h,b			;21dc	60 	` 
	dec b			;21dd	05 	. 
	inc e			;21de	1c 	. 
	ld d,b			;21df	50 	P 
	ld b,022h		;21e0	06 22 	. " 
	jr c,l21ech		;21e2	38 08 	8 . 
l21e4h:
	inc h			;21e4	24 	$ 
l21e5h:
	jr c,l223dh		;21e5	38 56 	8 V 
	ld h,050h		;21e7	26 50 	& P 
	inc bc			;21e9	03 	. 
	xor c			;21ea	a9 	. 
l21ebh:
	ld h,a			;21eb	67 	g 
l21ech:
	rrca			;21ec	0f 	. 
	dec l			;21ed	2d 	- 
	jr c,l2178h		;21ee	38 88 	8 . 
	cpl			;21f0	2f 	/ 
l21f1h:
	jr c,l21fbh		;21f1	38 08 	8 . 
	ld sp,04838h		;21f3	31 38 48 	1 8 H 
	or d			;21f6	b2 	. 
	jr c,l224bh		;21f7	38 52 	8 R 
	ld (hl),038h		;21f9	36 38 	6 8 
l21fbh:
	add hl,bc			;21fb	09 	. 
	ld b,b			;21fc	40 	@ 
	dec hl			;21fd	2b 	+ 
	ld e,c			;21fe	59 	Y 
	jp l192bh		;21ff	c3 2b 19 	. + . 
	jp l0e60h		;2202	c3 60 0e 	. ` . 
	ld c,h			;2205	4c 	L 
	cp b			;2206	b8 	. 
	inc c			;2207	0c 	. 
	ld c,(hl)			;2208	4e 	N 
	jr c,l225fh		;2209	38 54 	8 T 
	pop hl			;220b	e1 	. 
	ld l,b			;220c	68 	h 
	rrca			;220d	0f 	. 
	ld h,c			;220e	61 	a 
	ld h,(hl)			;220f	66 	f 
	ld c,a			;2210	4f 	O 
	ld h,(hl)			;2211	66 	f 
	ld h,(hl)			;2212	66 	f 
	rrca			;2213	0f 	. 
	ld l,h			;2214	6c 	l 
	ld d,b			;2215	50 	P 
	jr l2287h		;2216	18 6f 	. o 
l2218h:
	jr c,l21a2h		;2218	38 88 	8 . 
	ld (hl),c			;221a	71 	q 
	jr c,$-118		;221b	38 88 	8 . 
	ld (hl),a			;221d	77 	w 
	ld b,h			;221e	44 	D 
	ld b,078h		;221f	06 78 	. x 
	ld a,(07f02h)		;2221	3a 02 7f 	: .  
	ld bc,l0048h		;2224	01 48 00 	. H . 
	adc a,d			;2227	8a 	. 
	ld h,094h		;2228	26 94 	& . 
	adc a,d			;222a	8a 	. 
	ld d,(hl)			;222b	56 	V 
	ld d,h			;222c	54 	T 
	adc a,d			;222d	8a 	. 
	ld d,(hl)			;222e	56 	V 
l222fh:
	inc d			;222f	14 	. 
	sub c			;2230	91 	. 
	dec hl			;2231	2b 	+ 
	dec d			;2232	15 	. 
	sub c			;2233	91 	. 
	dec hl			;2234	2b 	+ 
	ld e,c			;2235	59 	Y 
	sub c			;2236	91 	. 
	xor h			;2237	ac 	. 
	sbc a,b			;2238	98 	. 
	sub c			;2239	91 	. 
	inc l			;223a	2c 	, 
sub_223bh:
	or 018h		;223b	f6 18 	. . 
l223dh:
	ld b,b			;223d	40 	@ 
	inc b			;223e	04 	. 
	sbc a,e			;223f	9b 	. 
l2240h:
	sub b			;2240	90 	. 
	adc a,d			;2241	8a 	. 
	dec de			;2242	1b 	. 
	djnz l222fh		;2243	10 ea 	. . 
	ld e,05ch		;2245	1e 5c 	. \ 
	ld b,l			;2247	45 	E 
	ld e,010h		;2248	1e 10 	. . 
	add hl,bc			;224a	09 	. 
l224bh:
	jr nz,$+18		;224b	20 10 	  . 
	call pe,sub_1024h		;224d	ec 24 10 	. $ . 
	ld c,c			;2250	49 	I 
	ld h,05ch		;2251	26 5c 	& \ 
	dec b			;2253	05 	. 
	jr z,l2266h		;2254	28 10 	( . 
	call pe,sub_102ah		;2256	ec 2a 10 	. * . 
	ld c,c			;2259	49 	I 
	inc (hl)			;225a	34 	4 
	ld e,h			;225b	5c 	\ 
l225ch:
	ld b,0b4h		;225c	06 b4 	. . 
	sub b			;225e	90 	. 
l225fh:
	adc a,c			;225f	89 	. 
	inc (hl)			;2260	34 	4 
	djnz $-21		;2261	10 e9 	. . 
	inc a			;2263	3c 	< 
	djnz l22afh		;2264	10 49 	. I 
l2266h:
	cp a			;2266	bf 	. 
	sub b			;2267	90 	. 
	ld c,c			;2268	49 	I 
	ccf			;2269	3f 	? 
	djnz $-117		;226a	10 89 	. . 
	pop bc			;226c	c1 	. 
	sub b			;226d	90 	. 
	adc a,d			;226e	8a 	. 
	ld b,c			;226f	41 	A 
	djnz l225ch		;2270	10 ea 	. . 
	ld b,c			;2272	41 	A 
	ld b,b			;2273	40 	@ 
	rlca			;2274	07 	. 
	pop bc			;2275	c1 	. 
	djnz $+76		;2276	10 4a 	. J 
	ld b,d			;2278	42 	B 
	ld c,b			;2279	48 	H 
	inc b			;227a	04 	. 
	call nz,l1401h		;227b	c4 01 14 	. . . 
	call nz,05401h		;227e	c4 01 54 	. . T 
	call nz,09401h		;2281	c4 01 94 	. . . 
	ld b,a			;2284	47 	G 
	ld d,b			;2285	50 	P 
	dec b			;2286	05 	. 
l2287h:
	ret z			;2287	c8 	. 
	inc l			;2288	2c 	, 
	ld d,(hl)			;2289	56 	V 
	ret z			;228a	c8 	. 
	inc l			;228b	2c 	, 
	ld d,048h		;228c	16 48 	. H 
	inc l			;228e	2c 	, 
	adc a,l			;228f	8d 	. 
	jp z,l0fach		;2290	ca ac 0f 	. . . 
	ld c,d			;2293	4a 	J 
	inc l			;2294	2c 	, 
	cpl			;2295	2f 	/ 
	ld c,h			;2296	4c 	L 
	inc l			;2297	2c 	, 
	adc a,l			;2298	8d 	. 
	call l0fach		;2299	cd ac 0f 	. . . 
	call sub_2fach		;229c	cd ac 2f 	. . / 
	call 04fach		;229f	cd ac 4f 	. . O 
	ld c,l			;22a2	4d 	M 
	inc l			;22a3	2c 	, 
	rst 28h			;22a4	ef 	. 
	ld h,c			;22a5	61 	a 
l22a6h:
	jr z,$+22		;22a6	28 14 	( . 
	ld l,c			;22a8	69 	i 
	daa			;22a9	27 	' 
	inc d			;22aa	14 	. 
	pop af			;22ab	f1 	. 
	ld h,014h		;22ac	26 14 	& . 
	pop af			;22ae	f1 	. 
l22afh:
	ld h,03ch		;22af	26 3c 	& < 
	pop af			;22b1	f1 	. 
	ld h,064h		;22b2	26 64 	& d 
	ld a,a			;22b4	7f 	 
	ld bc,0012fh		;22b5	01 2f 01 	. / . 
	add a,(hl)			;22b8	86 	. 
	jr nc,l22d2h		;22b9	30 17 	0 . 
l22bbh:
	ld c,010h		;22bb	0e 10 	. . 
	ld a,(bc)			;22bd	0a 	. 
	djnz l22d0h		;22be	10 10 	. . 
	call pe,09091h		;22c0	ec 91 90 	. . . 
	adc a,d			;22c3	8a 	. 
	ld de,0ea10h		;22c4	11 10 ea 	. . . 
	ld d,048h		;22c7	16 48 	. H 
l22c9h:
	inc b			;22c9	04 	. 
	sub a			;22ca	97 	. 
	sub b			;22cb	90 	. 
	adc a,e			;22cc	8b 	. 
	rla			;22cd	17 	. 
l22ceh:
	djnz l22bbh		;22ce	10 eb 	. . 
l22d0h:
	sbc a,d			;22d0	9a 	. 
	sub b			;22d1	90 	. 
l22d2h:
	ld a,(bc)			;22d2	0a 	. 
	sbc a,d			;22d3	9a 	. 
	sub b			;22d4	90 	. 
	ld hl,(0909ah)		;22d5	2a 9a 90 	* . . 
	ld c,d			;22d8	4a 	J 
	sbc a,d			;22d9	9a 	. 
	sub b			;22da	90 	. 
	adc a,d			;22db	8a 	. 
	ld a,(de)			;22dc	1a 	. 
	djnz l22c9h		;22dd	10 ea 	. . 
	dec de			;22df	1b 	. 
l22e0h:
	djnz l22ceh		;22e0	10 ec 	. . 
	ld a,(de)			;22e2	1a 	. 
	ld d,b			;22e3	50 	P 
	ld b,01eh		;22e4	06 1e 	. . 
	ld e,b			;22e6	58 	X 
	dec b			;22e7	05 	. 
	and b			;22e8	a0 	. 
	sub b			;22e9	90 	. 
	add hl,bc			;22ea	09 	. 
	and b			;22eb	a0 	. 
	sub b			;22ec	90 	. 
	add hl,hl			;22ed	29 	) 
	and b			;22ee	a0 	. 
	sub b			;22ef	90 	. 
	ld c,c			;22f0	49 	I 
	and b			;22f1	a0 	. 
	sub b			;22f2	90 	. 
	adc a,c			;22f3	89 	. 
	and b			;22f4	a0 	. 
l22f5h:
	djnz l22e0h		;22f5	10 e9 	. . 
	ld h,040h		;22f7	26 40 	& @ 
	inc b			;22f9	04 	. 
	daa			;22fa	27 	' 
	djnz l2287h		;22fb	10 8a 	. . 
	xor a			;22fd	af 	. 
	sub b			;22fe	90 	. 
	add hl,bc			;22ff	09 	. 
	xor a			;2300	af 	. 
	ld b,b			;2301	40 	@ 
	inc b			;2302	04 	. 
	ld (04a10h),a		;2303	32 10 4a 	2 . J 
	inc sp			;2306	33 	3 
	djnz l22f5h		;2307	10 ec 	. . 
	jr c,l231bh		;2309	38 10 	8 . 
	add hl,bc			;230b	09 	. 
	cp e			;230c	bb 	. 
l230dh:
	sub b			;230d	90 	. 
	ld a,(bc)			;230e	0a 	. 
	cp e			;230f	bb 	. 
	sub b			;2310	90 	. 
	ld hl,(090bbh)		;2311	2a bb 90 	* . . 
	ld c,d			;2314	4a 	J 
	dec sp			;2315	3b 	; 
	sub b			;2316	90 	. 
	jp pe,090bbh		;2317	ea bb 90 	. . . 
	adc a,d			;231a	8a 	. 
l231bh:
	ld c,e			;231b	4b 	K 
l231ch:
	dec sp			;231c	3b 	; 
	inc d			;231d	14 	. 
	ld c,h			;231e	4c 	L 
	djnz l230dh		;231f	10 ec 	. . 
	ld c,(hl)			;2321	4e 	N 
	ld d,b			;2322	50 	P 
	dec b			;2323	05 	. 
	rst 8			;2324	cf 	. 
	sub b			;2325	90 	. 
	add hl,bc			;2326	09 	. 
	rst 8			;2327	cf 	. 
	sub b			;2328	90 	. 
	add hl,hl			;2329	29 	) 
	rst 8			;232a	cf 	. 
	sub b			;232b	90 	. 
	ld c,c			;232c	49 	I 
	rst 8			;232d	cf 	. 
l232eh:
	sub b			;232e	90 	. 
	adc a,c			;232f	89 	. 
	rst 8			;2330	cf 	. 
l2331h:
	djnz l231ch		;2331	10 e9 	. . 
	ld h,e			;2333	63 	c 
	inc a			;2334	3c 	< 
	inc d			;2335	14 	. 
	ret pe			;2336	e8 	. 
	sub b			;2337	90 	. 
	add hl,bc			;2338	09 	. 
	ld l,b			;2339	68 	h 
	djnz l2385h		;233a	10 49 	. I 
	ld l,l			;233c	6d 	m 
	ld h,b			;233d	60 	` 
	ex af,af'			;233e	08 	. 
	ld l,a			;233f	6f 	o 
	djnz l232eh		;2340	10 ec 	. . 
	halt			;2342	76 	v 
	djnz l2331h		;2343	10 ec 	. . 
	ld a,e			;2345	7b 	{ 
	ld l,010h		;2346	2e 10 	. . 
	ld a,a			;2348	7f 	 
	ld bc,l002fh		;2349	01 2f 00 	. / . 
	ld (de),a			;234c	12 	. 
	dec sp			;234d	3b 	; 
	ld de,l2c1ah		;234e	11 1a 2c 	. . , 
	dec bc			;2351	0b 	. 
	sbc a,e			;2352	9b 	. 
	inc l			;2353	2c 	, 
	ld c,h			;2354	4c 	L 
	sbc a,e			;2355	9b 	. 
	inc l			;2356	2c 	, 
	adc a,h			;2357	8c 	. 
	ld e,02ch		;2358	1e 2c 	. , 
	ld d,h			;235a	54 	T 
	ld (l0250h),hl		;235b	22 50 02 	" P . 
	inc hl			;235e	23 	# 
	djnz l2368h		;235f	10 07 	. . 
	and l			;2361	a5 	. 
	ld d,b			;2362	50 	P 
	ld (bc),a			;2363	02 	. 
	and l			;2364	a5 	. 
	ld d,b			;2365	50 	P 
	add a,d			;2366	82 	. 
	and l			;2367	a5 	. 
l2368h:
	ld d,b			;2368	50 	P 
	jp po,l1025h		;2369	e2 25 10 	. % . 
	ret pe			;236c	e8 	. 
	and (hl)			;236d	a6 	. 
	djnz l2376h		;236e	10 06 	. . 
	and (hl)			;2370	a6 	. 
	djnz $-24		;2371	10 e6 	. . 
	jr z,l23c5h		;2373	28 50 	( P 
	ld (bc),a			;2375	02 	. 
l2376h:
	add hl,hl			;2376	29 	) 
	djnz l2380h		;2377	10 07 	. . 
	cpl			;2379	2f 	/ 
	djnz l2382h		;237a	10 06 	. . 
	or b			;237c	b0 	. 
	jr c,l2383h		;237d	38 04 	8 . 
	or h			;237f	b4 	. 
l2380h:
	ld d,b			;2380	50 	P 
	inc bc			;2381	03 	. 
l2382h:
	inc (hl)			;2382	34 	4 
l2383h:
	ld l,0efh		;2383	2e ef 	. . 
l2385h:
	cp e			;2385	bb 	. 
	ld d,b			;2386	50 	P 
	ld (bc),a			;2387	02 	. 
	ld b,c			;2388	41 	A 
	ld l,009h		;2389	2e 09 	. . 
	ld b,e			;238b	43 	C 
	ld l,009h		;238c	2e 09 	. . 
	ld b,l			;238e	45 	E 
	ld l,04ah		;238f	2e 4a 	. J 
	ld c,b			;2391	48 	H 
	ld l,00ah		;2392	2e 0a 	. . 
	srl b		;2394	cb 38 	. 8 
	inc b			;2396	04 	. 
	ld e,b			;2397	58 	X 
	ld (hl),c			;2398	71 	q 
	ld de,l1458h		;2399	11 58 14 	. X . 
	add a,l			;239c	85 	. 
	ld e,l			;239d	5d 	] 
	djnz $+10		;239e	10 08 	. . 
	sbc a,060h		;23a0	de 60 	. ` 
	inc bc			;23a2	03 	. 
	ld (hl),b			;23a3	70 	p 
	ld b,011h		;23a4	06 11 	. . 
	ld (hl),l			;23a6	75 	u 
	jr c,l23adh		;23a7	38 04 	8 . 
	ld a,a			;23a9	7f 	 
	ld bc,l022fh		;23aa	01 2f 02 	. / . 
l23adh:
	ld d,010h		;23ad	16 10 	. . 
	ld c,c			;23af	49 	I 
	add hl,de			;23b0	19 	. 
	ld (hl),c			;23b1	71 	q 
	inc d			;23b2	14 	. 
	inc h			;23b3	24 	$ 
	ld (hl),c			;23b4	71 	q 
	inc d			;23b5	14 	. 
	and h			;23b6	a4 	. 
l23b7h:
	ld e,h			;23b7	5c 	\ 
	inc b			;23b8	04 	. 
	ld (08910h),hl		;23b9	22 10 89 	" . . 
	ld sp,l143dh		;23bc	31 3d 14 	1 = . 
	add hl,sp			;23bf	39 	9 
	ld a,(bc)			;23c0	0a 	. 
	inc d			;23c1	14 	. 
	cp d			;23c2	ba 	. 
	sub b			;23c3	90 	. 
	ld c,c			;23c4	49 	I 
l23c5h:
	cp d			;23c5	ba 	. 
	sub b			;23c6	90 	. 
	adc a,c			;23c7	89 	. 
	ld a,(0e910h)		;23c8	3a 10 e9 	: . . 
	cp d			;23cb	ba 	. 
	ld e,b			;23cc	58 	X 
	dec b			;23cd	05 	. 
	ld c,c			;23ce	49 	I 
	ld (hl),c			;23cf	71 	q 
	inc d			;23d0	14 	. 
	ret			;23d1	c9 	. 
	ld e,h			;23d2	5c 	\ 
	inc b			;23d3	04 	. 
	ld d,e			;23d4	53 	S 
	ld d,h			;23d5	54 	T 
	ld de,03f60h		;23d6	11 60 3f 	. ` ? 
	inc d			;23d9	14 	. 
	ld l,c			;23da	69 	i 
	djnz $+22		;23db	10 14 	. . 
	ld h,b			;23dd	60 	` 
	djnz $-21		;23de	10 e9 	. . 
	call po,0933ch		;23e0	e4 3c 93 	. < . 
	call po,05254h		;23e3	e4 54 52 	. T R 
	rst 20h			;23e6	e7 	. 
	inc a			;23e7	3c 	< 
	sub e			;23e8	93 	. 
	rst 20h			;23e9	e7 	. 
	ld d,h			;23ea	54 	T 
	ld d,d			;23eb	52 	R 
	ld a,d			;23ec	7a 	z 
	ld l,003h		;23ed	2e 03 	. . 
	ld a,a			;23ef	7f 	 
	ld bc,l0030h		;23f0	01 30 00 	. 0 . 
	dec bc			;23f3	0b 	. 
	inc l			;23f4	2c 	, 
	rla			;23f5	17 	. 
	ld (de),a			;23f6	12 	. 
	inc l			;23f7	2c 	, 
	ld c,014h		;23f8	0e 14 	. . 
	jr c,l2401h		;23fa	38 05 	8 . 
	inc de			;23fc	13 	. 
	ld (de),a			;23fd	12 	. 
	adc a,e			;23fe	8b 	. 
	dec d			;23ff	15 	. 
	ld d,b			;2400	50 	P 
l2401h:
	ld b,096h		;2401	06 96 	. . 
	xor h			;2403	ac 	. 
	ld c,016h		;2404	0e 16 	. . 
	inc l			;2406	2c 	, 
	ld c,(hl)			;2407	4e 	N 
	add hl,de			;2408	19 	. 
	ld (de),a			;2409	12 	. 
	adc a,e			;240a	8b 	. 
	dec de			;240b	1b 	. 
	inc l			;240c	2c 	, 
	ld c,09fh		;240d	0e 9f 	. . 
	xor h			;240f	ac 	. 
	ld c,01fh		;2410	0e 1f 	. . 
	inc l			;2412	2c 	, 
	ld c,(hl)			;2413	4e 	N 
	and h			;2414	a4 	. 
	ld d,b			;2415	50 	P 
	ld b,0a4h		;2416	06 a4 	. . 
	ld d,b			;2418	50 	P 
	ld b,026h		;2419	06 26 	. & 
	ld d,b			;241b	50 	P 
	ld b,0a6h		;241c	06 a6 	. . 
	xor h			;241e	ac 	. 
	ld c,026h		;241f	0e 26 	. & 
	inc l			;2421	2c 	, 
	ld c,(hl)			;2422	4e 	N 
	jr z,l2451h		;2423	28 2c 	( , 
	ld c,0adh		;2425	0e ad 	. . 
	xor h			;2427	ac 	. 
	ld c,02dh		;2428	0e 2d 	. - 
	inc l			;242a	2c 	, 
l242bh:
	ld c,(hl)			;242b	4e 	N 
	dec l			;242c	2d 	- 
	ld (de),a			;242d	12 	. 
	adc a,e			;242e	8b 	. 
l242fh:
	jr nc,l2469h		;242f	30 38 	0 8 
	ex af,af'			;2431	08 	. 
	ld sp,l0e2ch		;2432	31 2c 0e 	1 , . 
	ld (08b12h),a		;2435	32 12 8b 	2 . . 
sub_2438h:
	dec (hl)			;2438	35 	5 
	ld d,b			;2439	50 	P 
	rlca			;243a	07 	. 
	scf			;243b	37 	7 
sub_243ch:
	inc l			;243c	2c 	, 
	add hl,de			;243d	19 	. 
	ld b,c			;243e	41 	A 
l243fh:
	ld (de),a			;243f	12 	. 
	dec bc			;2440	0b 	. 
	ld b,a			;2441	47 	G 
	ld d,b			;2442	50 	P 
	dec b			;2443	05 	. 
	ld c,c			;2444	49 	I 
	ld (de),a			;2445	12 	. 
	ld a,(bc)			;2446	0a 	. 
	ld c,l			;2447	4d 	M 
	ld h,b			;2448	60 	` 
	ld b,051h		;2449	06 51 	. Q 
	sub d			;244b	92 	. 
	add hl,bc			;244c	09 	. 
	ld d,l			;244d	55 	U 
	ld e,b			;244e	58 	X 
	ld b,059h		;244f	06 59 	. Y 
l2451h:
	ld (de),a			;2451	12 	. 
	ld a,(bc)			;2452	0a 	. 
	ld e,l			;2453	5d 	] 
l2454h:
	ld h,b			;2454	60 	` 
	ld b,064h		;2455	06 64 	. d 
	djnz $+24		;2457	10 16 	. . 
	ld h,(hl)			;2459	66 	f 
	ld b,b			;245a	40 	@ 
	ld b,l			;245b	45 	E 
	ld l,l			;245c	6d 	m 
	inc a			;245d	3c 	< 
	ld e,075h		;245e	1e 75 	. u 
	jr c,l246ah		;2460	38 08 	8 . 
	ld a,a			;2462	7f 	 
	ld bc,l0130h		;2463	01 30 01 	. 0 . 
	ld d,040h		;2466	16 40 	. @ 
	dec b			;2468	05 	. 
l2469h:
	ld a,(de)			;2469	1a 	. 
l246ah:
	ld c,b			;246a	48 	H 
	dec e			;246b	1d 	. 
	dec de			;246c	1b 	. 
	ld b,l			;246d	45 	E 
	ld d,02ah		;246e	16 2a 	. * 
	ld (hl),01ah		;2470	36 1a 	6 . 
	ld hl,(l1368h)		;2472	2a 68 13 	* h . 
	inc l			;2475	2c 	, 
	ld e,b			;2476	58 	X 
	ld b,02fh		;2477	06 2f 	. / 
	xor h			;2479	ac 	. 
	sbc a,e			;247a	9b 	. 
	jr nc,l24a9h		;247b	30 2c 	0 , 
	djnz l24b1h		;247d	10 32 	. 2 
	xor h			;247f	ac 	. 
	ld e,e			;2480	5b 	[ 
	inc sp			;2481	33 	3 
	xor h			;2482	ac 	. 
	sbc a,e			;2483	9b 	. 
	add hl,sp			;2484	39 	9 
	ld (de),a			;2485	12 	. 
	dec bc			;2486	0b 	. 
	dec sp			;2487	3b 	; 
	ld l,08fh		;2488	2e 8f 	. . 
	ld a,038h		;248a	3e 38 	> 8 
	dec b			;248c	05 	. 
	ccf			;248d	3f 	? 
	ld l,00fh		;248e	2e 0f 	. . 
	ld b,e			;2490	43 	C 
	ld l,00fh		;2491	2e 0f 	. . 
	ld b,a			;2493	47 	G 
	ld l,00fh		;2494	2e 0f 	. . 
	ld c,c			;2496	49 	I 
	ld d,b			;2497	50 	P 
	ld b,049h		;2498	06 49 	. I 
	ld l,092h		;249a	2e 92 	. . 
	ld c,e			;249c	4b 	K 
	jr c,$+10		;249d	38 08 	8 . 
	ld c,e			;249f	4b 	K 
	ld l,00fh		;24a0	2e 0f 	. . 
	ld c,a			;24a2	4f 	O 
	ld l,00fh		;24a3	2e 0f 	. . 
l24a5h:
	ld d,e			;24a5	53 	S 
	ld l,00fh		;24a6	2e 0f 	. . 
	ld d,l			;24a8	55 	U 
l24a9h:
	ld l,052h		;24a9	2e 52 	. R 
	ld d,a			;24ab	57 	W 
	ld l,00fh		;24ac	2e 0f 	. . 
	ld e,e			;24ae	5b 	[ 
	ld l,00fh		;24af	2e 0f 	. . 
l24b1h:
	ld e,h			;24b1	5c 	\ 
	jr c,$+7		;24b2	38 05 	8 . 
	ld e,a			;24b4	5f 	_ 
	ld l,00fh		;24b5	2e 0f 	. . 
	ld h,e			;24b7	63 	c 
	ld l,00fh		;24b8	2e 0f 	. . 
	ld h,h			;24ba	64 	d 
	jr c,l24c2h		;24bb	38 05 	8 . 
	ld h,a			;24bd	67 	g 
	inc l			;24be	2c 	, 
	dec c			;24bf	0d 	. 
	ld l,l			;24c0	6d 	m 
	ld d,b			;24c1	50 	P 
l24c2h:
	rlca			;24c2	07 	. 
	ld l,a			;24c3	6f 	o 
	inc l			;24c4	2c 	, 
	dec de			;24c5	1b 	. 
	ld (hl),e			;24c6	73 	s 
	inc l			;24c7	2c 	, 
	dec de			;24c8	1b 	. 
	ld a,c			;24c9	79 	y 
	inc (hl)			;24ca	34 	4 
	ld d,l			;24cb	55 	U 
	ld a,d			;24cc	7a 	z 
	ld e,b			;24cd	58 	X 
	ld d,h			;24ce	54 	T 
	ld a,l			;24cf	7d 	} 
	inc (hl)			;24d0	34 	4 
	ld d,l			;24d1	55 	U 
	ld a,a			;24d2	7f 	 
	ld bc,l0230h		;24d3	01 30 02 	. 0 . 
	rrca			;24d6	0f 	. 
	inc l			;24d7	2c 	, 
	ld de,l2c11h		;24d8	11 11 2c 	. . , 
	ld e,b			;24db	58 	X 
	dec d			;24dc	15 	. 
	jr c,$+10		;24dd	38 08 	8 . 
	ld d,0ach		;24df	16 ac 	. . 
	sub c			;24e1	91 	. 
	ld a,(de)			;24e2	1a 	. 
	ld (de),a			;24e3	12 	. 
	ld d,020h		;24e4	16 20 	.   
	jr c,$+96		;24e6	38 5e 	8 ^ 
	jr nz,$-108		;24e8	20 92 	  . 
	ld c,d			;24ea	4a 	J 
	inc hl			;24eb	23 	# 
	ld d,b			;24ec	50 	P 
	ld b,023h		;24ed	06 23 	. # 
	ld (de),a			;24ef	12 	. 
	ld a,(bc)			;24f0	0a 	. 
	add hl,hl			;24f1	29 	) 
	ld c,b			;24f2	48 	H 
	dec b			;24f3	05 	. 
	or e			;24f4	b3 	. 
	sub d			;24f5	92 	. 
	ld a,(bc)			;24f6	0a 	. 
	dec sp			;24f7	3b 	; 
	inc de			;24f8	13 	. 
	ld d,051h		;24f9	16 51 	. Q 
	daa			;24fb	27 	' 
	ld d,059h		;24fc	16 59 	. Y 
	ld (hl),h			;24fe	74 	t 
	ld d,061h		;24ff	16 61 	. a 
	ld d,b			;2501	50 	P 
	ld b,061h		;2502	06 61 	. a 
	xor h			;2504	ac 	. 
	ld c,(hl)			;2505	4e 	N 
	ld h,e			;2506	63 	c 
	jr c,l2511h		;2507	38 08 	8 . 
	ld h,h			;2509	64 	d 
	inc l			;250a	2c 	, 
	ld c,071h		;250b	0e 71 	. q 
	ld h,b			;250d	60 	` 
	rlca			;250e	07 	. 
	ld (hl),l			;250f	75 	u 
	ld (de),a			;2510	12 	. 
l2511h:
	add hl,bc			;2511	09 	. 
	ld a,a			;2512	7f 	 
	ld bc,l0330h		;2513	01 30 03 	. 0 . 
	ld b,030h		;2516	06 30 	. 0 
	inc e			;2518	1c 	. 
	inc de			;2519	13 	. 
	ld h,b			;251a	60 	` 
	ld d,015h		;251b	16 15 	. . 
	ret nc			;251d	d0 	. 
	dec b			;251e	05 	. 
	inc hl			;251f	23 	# 
	ld e,h			;2520	5c 	\ 
	ld b,023h		;2521	06 23 	. # 
	djnz l2531h		;2523	10 0c 	. . 
	ld sp,l0912h		;2525	31 12 09 	1 . . 
	ld c,e			;2528	4b 	K 
	djnz l2541h		;2529	10 16 	. . 
	ret nc			;252b	d0 	. 
	sub d			;252c	92 	. 
	ld a,(bc)			;252d	0a 	. 
	ld d,b			;252e	50 	P 
	ld (de),a			;252f	12 	. 
	ld c,d			;2530	4a 	J 
l2531h:
	ld e,h			;2531	5c 	\ 
	dec hl			;2532	2b 	+ 
l2533h:
	ld d,05ch		;2533	16 5c 	. \ 
	ld a,(bc)			;2535	0a 	. 
	ld d,05eh		;2536	16 5e 	. ^ 
	ld d,b			;2538	50 	P 
	dec e			;2539	1d 	. 
	ld (hl),c			;253a	71 	q 
	ld d,b			;253b	50 	P 
	ex af,af'			;253c	08 	. 
	ld (hl),h			;253d	74 	t 
	inc (hl)			;253e	34 	4 
	ex af,af'			;253f	08 	. 
l2540h:
	ld a,d			;2540	7a 	z 
l2541h:
	ld l,004h		;2541	2e 04 	. . 
	ld a,a			;2543	7f 	 
	ld bc,l002fh		;2544	01 2f 00 	. / . 
	ld a,(bc)			;2547	0a 	. 
	inc l			;2548	2c 	, 
l2549h:
	ex af,af'			;2549	08 	. 
	inc d			;254a	14 	. 
	dec h			;254b	25 	% 
	ld a,(bc)			;254c	0a 	. 
	dec d			;254d	15 	. 
	jr c,$+6		;254e	38 04 	8 . 
	ld d,036h		;2550	16 36 	. 6 
	dec bc			;2552	0b 	. 
	jr l258fh		;2553	18 3a 	. : 
	ld c,e			;2555	4b 	K 
	rra			;2556	1f 	. 
	ld a,04fh		;2557	3e 4f 	> O 
	sbc a,a			;2559	9f 	. 
	cp (hl)			;255a	be 	. 
	rrca			;255b	0f 	. 
	ld h,060h		;255c	26 60 	& ` 
	dec b			;255e	05 	. 
	daa			;255f	27 	' 
	jr c,l256dh		;2560	38 0b 	8 . 
	dec hl			;2562	2b 	+ 
	ret z			;2563	c8 	. 
	ld c,h			;2564	4c 	L 
	inc l			;2565	2c 	, 
	ld c,b			;2566	48 	H 
	ld c,l			;2567	4d 	M 
	dec l			;2568	2d 	- 
	ld c,b			;2569	48 	H 
	dec c			;256a	0d 	. 
	ld l,0cch		;256b	2e cc 	. . 
l256dh:
	inc c			;256d	0c 	. 
	cpl			;256e	2f 	/ 
	ld c,(hl)			;256f	4e 	N 
	inc c			;2570	0c 	. 
	jr nc,l2533h		;2571	30 c0 	0 . 
	ld c,l			;2573	4d 	M 
	ld sp,04d4ch		;2574	31 4c 4d 	1 L M 
	ld (hl),03eh		;2577	36 3e 	6 > 
	ld c,03bh		;2579	0e 3b 	. ; 
	ld d,b			;257b	50 	P 
	dec b			;257c	05 	. 
	ld b,a			;257d	47 	G 
	ld a,00eh		;257e	3e 0e 	> . 
	ld c,(hl)			;2580	4e 	N 
	ld e,b			;2581	58 	X 
	dec b			;2582	05 	. 
	ld c,a			;2583	4f 	O 
	ld a,04fh		;2584	3e 4f 	> O 
	ld d,a			;2586	57 	W 
	ld a,00eh		;2587	3e 0e 	> . 
	ld e,e			;2589	5b 	[ 
	inc a			;258a	3c 	< 
	inc b			;258b	04 	. 
	ld h,a			;258c	67 	g 
	jr c,l259fh		;258d	38 10 	8 . 
l258fh:
	ld l,b			;258f	68 	h 
	ld d,b			;2590	50 	P 
	ld b,06ah		;2591	06 6a 	. j 
	ld a,(06e50h)		;2593	3a 50 6e 	: P n 
	ld a,(07710h)		;2596	3a 10 77 	: . w 
	dec a			;2599	3d 	= 
	rrca			;259a	0f 	. 
	ld a,l			;259b	7d 	} 
	dec a			;259c	3d 	= 
	ld c,a			;259d	4f 	O 
	ld a,a			;259e	7f 	 
l259fh:
	ld bc,l013dh		;259f	01 3d 01 	. = . 
	dec c			;25a2	0d 	. 
	dec sp			;25a3	3b 	; 
	ex af,af'			;25a4	08 	. 
	inc d			;25a5	14 	. 
	jr c,l25b2h		;25a6	38 0a 	8 . 
	dec d			;25a8	15 	. 
	ld b,b			;25a9	40 	@ 
	inc b			;25aa	04 	. 
	dec d			;25ab	15 	. 
	dec a			;25ac	3d 	= 
	ld c,(hl)			;25ad	4e 	N 
	jr l2600h		;25ae	18 50 	. P 
	dec b			;25b0	05 	. 
	rla			;25b1	17 	. 
l25b2h:
	cp l			;25b2	bd 	. 
	rrca			;25b3	0f 	. 
	dec h			;25b4	25 	% 
	dec a			;25b5	3d 	= 
	ld c,(hl)			;25b6	4e 	N 
	jr z,l2609h		;25b7	28 50 	( P 
	ld b,02bh		;25b9	06 2b 	. + 
	ld d,h			;25bb	54 	T 
	dec b			;25bc	05 	. 
	dec l			;25bd	2d 	- 
	dec a			;25be	3d 	= 
	rrca			;25bf	0f 	. 
	ld l,040h		;25c0	2e 40 	. @ 
	inc b			;25c2	04 	. 
	scf			;25c3	37 	7 
	inc (hl)			;25c4	34 	4 
	ld (de),a			;25c5	12 	. 
	jr c,$+78		;25c6	38 4c 	8 L 
	inc b			;25c8	04 	. 
	ld a,04ch		;25c9	3e 4c 	> L 
	dec b			;25cb	05 	. 
	ld b,b			;25cc	40 	@ 
	ld c,h			;25cd	4c 	L 
	add hl,bc			;25ce	09 	. 
	ld b,e			;25cf	43 	C 
	inc (hl)			;25d0	34 	4 
	ld (de),a			;25d1	12 	. 
	ld b,(hl)			;25d2	46 	F 
	dec sp			;25d3	3b 	; 
	ld c,d			;25d4	4a 	J 
	ld b,a			;25d5	47 	G 
	ld (hl),050h		;25d6	36 50 	6 P 
	ld c,(hl)			;25d8	4e 	N 
	ld (hl),050h		;25d9	36 50 	6 P 
	ld d,e			;25db	53 	S 
	dec sp			;25dc	3b 	; 
	dec bc			;25dd	0b 	. 
	ld d,h			;25de	54 	T 
	dec a			;25df	3d 	= 
	ld d,b			;25e0	50 	P 
	ld e,h			;25e1	5c 	\ 
	dec sp			;25e2	3b 	; 
	dec bc			;25e3	0b 	. 
	ld e,(hl)			;25e4	5e 	^ 
	dec a			;25e5	3d 	= 
	djnz l2648h		;25e6	10 60 	. ` 
	ld a,(0630fh)		;25e8	3a 0f 63 	: . c 
	jr c,l25f1h		;25eb	38 04 	8 . 
	ld h,h			;25ed	64 	d 
	dec sp			;25ee	3b 	; 
	dec bc			;25ef	0b 	. 
	ld h,(hl)			;25f0	66 	f 
l25f1h:
	dec a			;25f1	3d 	= 
	djnz $+109		;25f2	10 6b 	. k 
	dec a			;25f4	3d 	= 
	ld c,(hl)			;25f5	4e 	N 
	ld l,h			;25f6	6c 	l 
	dec sp			;25f7	3b 	; 
	dec bc			;25f8	0b 	. 
	ld l,l			;25f9	6d 	m 
	ld e,b			;25fa	58 	X 
	dec b			;25fb	05 	. 
	ld (hl),b			;25fc	70 	p 
	ld b,b			;25fd	40 	@ 
	add hl,bc			;25fe	09 	. 
	ld (hl),l			;25ff	75 	u 
l2600h:
	ld d,b			;2600	50 	P 
	dec b			;2601	05 	. 
	ld (hl),l			;2602	75 	u 
	ld a,(0760bh)		;2603	3a 0b 76 	: . v 
	dec a			;2606	3d 	= 
	djnz l2688h		;2607	10 7f 	.  
l2609h:
	ld bc,l023ch		;2609	01 3c 02 	. < . 
	dec bc			;260c	0b 	. 
	jr c,l2617h		;260d	38 08 	8 . 
	rrca			;260f	0f 	. 
	add hl,sp			;2610	39 	9 
	ld d,b			;2611	50 	P 
	inc de			;2612	13 	. 
	ld (hl),050h		;2613	36 50 	6 P 
	inc d			;2615	14 	. 
	ld d,h			;2616	54 	T 
l2617h:
	dec b			;2617	05 	. 
	rla			;2618	17 	. 
	ld (hl),050h		;2619	36 50 	6 P 
	jr l266dh		;261b	18 50 	. P 
	dec b			;261d	05 	. 
	dec de			;261e	1b 	. 
	ld (hl),050h		;261f	36 50 	6 P 
	inc hl			;2621	23 	# 
	dec sp			;2622	3b 	; 
	dec bc			;2623	0b 	. 
	inc h			;2624	24 	$ 
	ld b,h			;2625	44 	D 
	add hl,bc			;2626	09 	. 
	dec hl			;2627	2b 	+ 
	ld d,h			;2628	54 	T 
	inc b			;2629	04 	. 
	dec hl			;262a	2b 	+ 
	dec sp			;262b	3b 	; 
	ld c,e			;262c	4b 	K 
	cpl			;262d	2f 	/ 
	add hl,sp			;262e	39 	9 
	dec d			;262f	15 	. 
	inc (hl)			;2630	34 	4 
	ld d,h			;2631	54 	T 
	dec b			;2632	05 	. 
	scf			;2633	37 	7 
	inc (hl)			;2634	34 	4 
	ld d,(hl)			;2635	56 	V 
	cp a			;2636	bf 	. 
	ld c,b			;2637	48 	H 
	rla			;2638	17 	. 
l2639h:
	ccf			;2639	3f 	? 
	ld (hl),015h		;263a	36 15 	6 . 
	ld b,e			;263c	43 	C 
	jr c,l2694h		;263d	38 55 	8 U 
	ld b,h			;263f	44 	D 
	ld d,b			;2640	50 	P 
	inc b			;2641	04 	. 
	ld b,a			;2642	47 	G 
l2643h:
	jr c,l269ah		;2643	38 55 	8 U 
	ld c,e			;2645	4b 	K 
	jr c,l269eh		;2646	38 56 	8 V 
l2648h:
	ret nc			;2648	d0 	. 
	ld (hl),010h		;2649	36 10 	6 . 
	ld d,h			;264b	54 	T 
	inc (hl)			;264c	34 	4 
	ld c,e			;264d	4b 	K 
	ld d,a			;264e	57 	W 
	inc (hl)			;264f	34 	4 
	ld (de),a			;2650	12 	. 
	ld e,e			;2651	5b 	[ 
	inc (hl)			;2652	34 	4 
	ld c,e			;2653	4b 	K 
	ld e,(hl)			;2654	5e 	^ 
	ld (hl),010h		;2655	36 10 	6 . 
	ld h,b			;2657	60 	` 
	ld d,b			;2658	50 	P 
	inc b			;2659	04 	. 
	ld h,e			;265a	63 	c 
	inc (hl)			;265b	34 	4 
	ld (de),a			;265c	12 	. 
	ret pe			;265d	e8 	. 
	ld (hl),010h		;265e	36 10 	6 . 
	ld l,b			;2660	68 	h 
	ld b,h			;2661	44 	D 
	ld d,a			;2662	57 	W 
	ld l,h			;2663	6c 	l 
	inc (hl)			;2664	34 	4 
	ld d,d			;2665	52 	R 
	ld l,a			;2666	6f 	o 
	inc (hl)			;2667	34 	4 
	ld (de),a			;2668	12 	. 
	ld (hl),a			;2669	77 	w 
	ld (hl),010h		;266a	36 10 	6 . 
	ld a,a			;266c	7f 	 
l266dh:
	ld bc,l0339h		;266d	01 39 03 	. 9 . 
	ld a,(bc)			;2670	0a 	. 
	inc (hl)			;2671	34 	4 
	jr l2683h		;2672	18 0f 	. . 
	inc (hl)			;2674	34 	4 
	dec bc			;2675	0b 	. 
l2676h:
	djnz l26ach		;2676	10 34 	. 4 
	dec bc			;2678	0b 	. 
	ld (de),a			;2679	12 	. 
	inc (hl)			;267a	34 	4 
	dec bc			;267b	0b 	. 
	inc de			;267c	13 	. 
	inc (hl)			;267d	34 	4 
	dec bc			;267e	0b 	. 
	rla			;267f	17 	. 
	inc sp			;2680	33 	3 
	ld d,d			;2681	52 	R 
	add hl,de			;2682	19 	. 
l2683h:
	inc (hl)			;2683	34 	4 
	ld d,d			;2684	52 	R 
	dec de			;2685	1b 	. 
	inc (hl)			;2686	34 	4 
	ld d,d			;2687	52 	R 
l2688h:
	dec e			;2688	1d 	. 
	inc (hl)			;2689	34 	4 
	ld d,d			;268a	52 	R 
	ld e,030h		;268b	1e 30 	. 0 
	ld e,01fh		;268d	1e 1f 	. . 
	dec (hl)			;268f	35 	5 
	ld (de),a			;2690	12 	. 
	ld hl,0123bh		;2691	21 3b 12 	! ; . 
l2694h:
	inc hl			;2694	23 	# 
	dec sp			;2695	3b 	; 
	ld (de),a			;2696	12 	. 
	dec h			;2697	25 	% 
	dec sp			;2698	3b 	; 
	ld (de),a			;2699	12 	. 
l269ah:
	dec hl			;269a	2b 	+ 
	dec a			;269b	3d 	= 
	ld d,b			;269c	50 	P 
	inc l			;269d	2c 	, 
l269eh:
	jr nc,l26beh		;269e	30 1e 	0 . 
	ld l,03dh		;26a0	2e 3d 	. = 
	ld d,b			;26a2	50 	P 
	inc sp			;26a3	33 	3 
	ld d,h			;26a4	54 	T 
	dec b			;26a5	05 	. 
	ld (01939h),a		;26a6	32 39 19 	2 9 . 
	ld (hl),039h		;26a9	36 39 	6 9 
	add hl,de			;26ab	19 	. 
l26ach:
	ld a,(01939h)		;26ac	3a 39 19 	: 9 . 
	ld a,039h		;26af	3e 39 	> 9 
	add hl,de			;26b1	19 	. 
	ld b,d			;26b2	42 	B 
	add hl,sp			;26b3	39 	9 
	ld a,(de)			;26b4	1a 	. 
	ld b,(hl)			;26b5	46 	F 
	add hl,sp			;26b6	39 	9 
	ld a,(de)			;26b7	1a 	. 
	ld c,d			;26b8	4a 	J 
	add hl,sp			;26b9	39 	9 
	ld a,(de)			;26ba	1a 	. 
	ld c,(hl)			;26bb	4e 	N 
	add hl,sp			;26bc	39 	9 
	ld a,(de)			;26bd	1a 	. 
l26beh:
	ld d,b			;26be	50 	P 
	jr nc,$+32		;26bf	30 1e 	0 . 
	ld d,d			;26c1	52 	R 
	inc (hl)			;26c2	34 	4 
	dec de			;26c3	1b 	. 
	ld d,(hl)			;26c4	56 	V 
	inc (hl)			;26c5	34 	4 
	dec de			;26c6	1b 	. 
	ld e,d			;26c7	5a 	Z 
	inc (hl)			;26c8	34 	4 
	dec de			;26c9	1b 	. 
	ld e,(hl)			;26ca	5e 	^ 
	inc (hl)			;26cb	34 	4 
	dec de			;26cc	1b 	. 
	ld h,d			;26cd	62 	b 
	inc (hl)			;26ce	34 	4 
	dec de			;26cf	1b 	. 
	ld h,(hl)			;26d0	66 	f 
	inc (hl)			;26d1	34 	4 
	ld e,e			;26d2	5b 	[ 
	ld (hl),b			;26d3	70 	p 
	ld d,b			;26d4	50 	P 
	rlca			;26d5	07 	. 
	ld (hl),h			;26d6	74 	t 
	ld d,b			;26d7	50 	P 
	add hl,bc			;26d8	09 	. 
	ld a,b			;26d9	78 	x 
	add hl,sp			;26da	39 	9 
	inc e			;26db	1c 	. 
	ld a,a			;26dc	7f 	 
	ld bc,l0030h		;26dd	01 30 00 	. 0 . 
	adc a,h			;26e0	8c 	. 
	inc l			;26e1	2c 	, 
	ld (02c0ch),hl		;26e2	22 0c 2c 	" . , 
	pop hl			;26e5	e1 	. 
	adc a,(hl)			;26e6	8e 	. 
	cp b			;26e7	b8 	. 
	inc bc			;26e8	03 	. 
	adc a,(hl)			;26e9	8e 	. 
	cp b			;26ea	b8 	. 
	inc hl			;26eb	23 	# 
	ld c,038h		;26ec	0e 38 	. 8 
	ld b,e			;26ee	43 	C 
	sub b			;26ef	90 	. 
	ld d,h			;26f0	54 	T 
	inc h			;26f1	24 	$ 
	sub c			;26f2	91 	. 
	cp b			;26f3	b8 	. 
	ld h,e			;26f4	63 	c 
	sub c			;26f5	91 	. 
	cp b			;26f6	b8 	. 
	add a,e			;26f7	83 	. 
	sub c			;26f8	91 	. 
	cp b			;26f9	b8 	. 
	and e			;26fa	a3 	. 
	ld de,0c338h		;26fb	11 38 c3 	. 8 . 
	sub e			;26fe	93 	. 
	ld b,(hl)			;26ff	46 	F 
	add a,l			;2700	85 	. 
	sub e			;2701	93 	. 
	ld b,(hl)			;2702	46 	F 
l2703h:
	push bc			;2703	c5 	. 
	sub h			;2704	94 	. 
	call z,09404h		;2705	cc 04 94 	. . . 
	call z,sub_1424h		;2708	cc 24 14 	. $ . 
	ld c,h			;270b	4c 	L 
	ld b,h			;270c	44 	D 
	ld d,02ch		;270d	16 2c 	. , 
	rst 20h			;270f	e7 	. 
l2710h:
	jr l274ah		;2710	18 38 	. 8 
	ex af,af'			;2712	08 	. 
	add hl,de			;2713	19 	. 
	jr c,$+8		;2714	38 06 	8 . 
	sbc a,h			;2716	9c 	. 
	xor h			;2717	ac 	. 
	and d			;2718	a2 	. 
	inc e			;2719	1c 	. 
	inc l			;271a	2c 	, 
	jp nz,0b49ch		;271b	c2 9c b4 	. . . 
	ex af,af'			;271e	08 	. 
	sbc a,h			;271f	9c 	. 
	or h			;2720	b4 	. 
	jr z,$+30		;2721	28 1c 	( . 
	inc (hl)			;2723	34 	4 
	ld c,b			;2724	48 	H 
	inc e			;2725	1c 	. 
	ld e,b			;2726	58 	X 
	and h			;2727	a4 	. 
	inc e			;2728	1c 	. 
	ld d,b			;2729	50 	P 
	add hl,bc			;272a	09 	. 
	sbc a,a			;272b	9f 	. 
	ld b,a			;272c	47 	G 
	add a,l			;272d	85 	. 
	sbc a,a			;272e	9f 	. 
	ld b,a			;272f	47 	G 
	push bc			;2730	c5 	. 
	jr nz,l276bh		;2731	20 38 	  8 
	ex af,af'			;2733	08 	. 
	and d			;2734	a2 	. 
	ld b,h			;2735	44 	D 
	ld a,(bc)			;2736	0a 	. 
	dec h			;2737	25 	% 
	inc (hl)			;2738	34 	4 
	xor b			;2739	a8 	. 
	and l			;273a	a5 	. 
	jp nc,0a504h		;273b	d2 04 a5 	. . . 
	jp nc,02524h		;273e	d2 24 25 	. $ % 
	ld d,d			;2741	52 	R 
l2742h:
	ld b,h			;2742	44 	D 
	daa			;2743	27 	' 
	inc l			;2744	2c 	, 
	ex de,hl			;2745	eb 	. 
	and a			;2746	a7 	. 
	ld l,06ch		;2747	2e 6c 	. l 
	and a			;2749	a7 	. 
l274ah:
	xor (hl)			;274a	ae 	. 
	inc l			;274b	2c 	, 
	xor c			;274c	a9 	. 
	ld l,06ch		;274d	2e 6c 	. l 
	xor c			;274f	a9 	. 
	xor (hl)			;2750	ae 	. 
	ld c,h			;2751	4c 	L 
	cpl			;2752	2f 	/ 
	ld l,00dh		;2753	2e 0d 	. . 
	or d			;2755	b2 	. 
	inc l			;2756	2c 	, 
	adc a,e			;2757	8b 	. 
	inc sp			;2758	33 	3 
	jr c,l2703h		;2759	38 a8 	8 . 
	or l			;275b	b5 	. 
	xor h			;275c	ac 	. 
	ld (bc),a			;275d	02 	. 
	or l			;275e	b5 	. 
	xor h			;275f	ac 	. 
	ld (0acb5h),hl		;2760	22 b5 ac 	" . . 
	ld b,d			;2763	42 	B 
	or l			;2764	b5 	. 
	xor h			;2765	ac 	. 
	ld h,d			;2766	62 	b 
	or l			;2767	b5 	. 
	xor h			;2768	ac 	. 
	add a,d			;2769	82 	. 
	or l			;276a	b5 	. 
l276bh:
	xor h			;276b	ac 	. 
	and d			;276c	a2 	. 
	dec (hl)			;276d	35 	5 
	inc l			;276e	2c 	, 
	jp nz,l3837h		;276f	c2 37 38 	. 7 8 
	adc a,b			;2772	88 	. 
	jr c,l27a1h		;2773	38 2c 	8 , 
	dec bc			;2775	0b 	. 
	jr c,l27c8h		;2776	38 50 	8 P 
	add hl,bc			;2778	09 	. 
	cp c			;2779	b9 	. 
	jr c,$+48		;277a	38 2e 	8 . 
	cp c			;277c	b9 	. 
	jr c,l278dh		;277d	38 0e 	8 . 
	cp d			;277f	ba 	. 
	ld b,b			;2780	40 	@ 
	ld l,a			;2781	6f 	o 
	ld b,b			;2782	40 	@ 
	inc l			;2783	2c 	, 
	ex de,hl			;2784	eb 	. 
	pop bc			;2785	c1 	. 
	inc l			;2786	2c 	, 
	ld l,e			;2787	6b 	k 
	jp nz,0433ch		;2788	c2 3c 43 	. < C 
	ld b,d			;278b	42 	B 
	ld c,b			;278c	48 	H 
l278dh:
	inc b			;278d	04 	. 
	jp nz,04bach		;278e	c2 ac 4b 	. . K 
	ld b,d			;2791	42 	B 
	inc l			;2792	2c 	, 
	and d			;2793	a2 	. 
	jp nz,l2b2ch		;2794	c2 2c 2b 	. , + 
	add a,03ch		;2797	c6 3c 	. < 
	ld b,e			;2799	43 	C 
	ld b,(hl)			;279a	46 	F 
	inc l			;279b	2c 	, 
	and d			;279c	a2 	. 
	add a,02ch		;279d	c6 2c 	. , 
	dec hl			;279f	2b 	+ 
	ld b,(hl)			;27a0	46 	F 
l27a1h:
	ld c,b			;27a1	48 	H 
	inc b			;27a2	04 	. 
	ld c,e			;27a3	4b 	K 
	ld c,b			;27a4	48 	H 
	inc b			;27a5	04 	. 
	ld c,e			;27a6	4b 	K 
	inc l			;27a7	2c 	, 
	and d			;27a8	a2 	. 
	srl h		;27a9	cb 3c 	. < 
	ld b,e			;27ab	43 	C 
	sra h		;27ac	cb 2c 	. , 
	dec hl			;27ae	2b 	+ 
	ld c,a			;27af	4f 	O 
	ld d,b			;27b0	50 	P 
	add hl,bc			;27b1	09 	. 
	ld d,b			;27b2	50 	P 
	inc l			;27b3	2c 	, 
	rst 20h			;27b4	e7 	. 
	ld d,c			;27b5	51 	Q 
	inc l			;27b6	2c 	, 
	dec bc			;27b7	0b 	. 
	ld d,h			;27b8	54 	T 
	inc (hl)			;27b9	34 	4 
	ex (sp),hl			;27ba	e3 	. 
	ld d,h			;27bb	54 	T 
	ld d,d			;27bc	52 	R 
	and h			;27bd	a4 	. 
	call nc,0cf40h		;27be	d4 40 cf 	. @ . 
	call nc,06fc0h		;27c1	d4 c0 6f 	. . o 
	ld e,e			;27c4	5b 	[ 
	inc l			;27c5	2c 	, 
	ex de,hl			;27c6	eb 	. 
	ld e,l			;27c7	5d 	] 
l27c8h:
	inc l			;27c8	2c 	, 
	ex de,hl			;27c9	eb 	. 
	ld e,l			;27ca	5d 	] 
	jr c,l27d3h		;27cb	38 06 	8 . 
	defb 0ddh,040h,06fh	;illegal sequence		;27cd	dd 40 6f 	. @ o 
	ld e,a			;27d0	5f 	_ 
	inc l			;27d1	2c 	, 
	ex de,hl			;27d2	eb 	. 
l27d3h:
	ret po			;27d3	e0 	. 
	ret nz			;27d4	c0 	. 
	cpl			;27d5	2f 	/ 
	ret po			;27d6	e0 	. 
	ld d,b			;27d7	50 	P 
	ld d,b			;27d8	50 	P 
	pop hl			;27d9	e1 	. 
	ret nz			;27da	c0 	. 
	cpl			;27db	2f 	/ 
	pop hl			;27dc	e1 	. 
	ld d,b			;27dd	50 	P 
	ld d,b			;27de	50 	P 
	ld h,e			;27df	63 	c 
	inc l			;27e0	2c 	, 
	xor e			;27e1	ab 	. 
	ex (sp),hl			;27e2	e3 	. 
	ret nz			;27e3	c0 	. 
	rrca			;27e4	0f 	. 
	ex (sp),hl			;27e5	e3 	. 
	ret nz			;27e6	c0 	. 
	cpl			;27e7	2f 	/ 
	ex (sp),hl			;27e8	e3 	. 
	ret nz			;27e9	c0 	. 
	ld c,a			;27ea	4f 	O 
	ex (sp),hl			;27eb	e3 	. 
	ret nz			;27ec	c0 	. 
	adc a,a			;27ed	8f 	. 
	ex (sp),hl			;27ee	e3 	. 
	ret nz			;27ef	c0 	. 
	xor a			;27f0	af 	. 
	ld h,e			;27f1	63 	c 
	ld b,b			;27f2	40 	@ 
	rst 8			;27f3	cf 	. 
	rst 20h			;27f4	e7 	. 
	ld b,b			;27f5	40 	@ 
	ld c,a			;27f6	4f 	O 
	rst 20h			;27f7	e7 	. 
	xor h			;27f8	ac 	. 
	xor e			;27f9	ab 	. 
	ld h,a			;27fa	67 	g 
	inc l			;27fb	2c 	, 
	set 4,a		;27fc	cb e7 	. . 
	ret nz			;27fe	c0 	. 
	rrca			;27ff	0f 	. 
	ld l,c			;2800	69 	i 
	ld d,b			;2801	50 	P 
l2802h:
	ld b,0e9h		;2802	06 e9 	. . 
	ld b,b			;2804	40 	@ 
	ld c,a			;2805	4f 	O 
	jp pe,04fc0h		;2806	ea c0 4f 	. . O 
	ld l,d			;2809	6a 	j 
	ld l,04dh		;280a	2e 4d 	. M 
	ex de,hl			;280c	eb 	. 
	ret nz			;280d	c0 	. 
	ld c,a			;280e	4f 	O 
	call pe,04f40h		;280f	ec 40 4f 	. @ O 
	ld l,c			;2812	69 	i 
	inc l			;2813	2c 	, 
	ld c,e			;2814	4b 	K 
	ld a,b			;2815	78 	x 
	ld d,b			;2816	50 	P 
	add hl,de			;2817	19 	. 
	ld a,h			;2818	7c 	| 
	inc l			;2819	2c 	, 
	ld de,l017fh		;281a	11 7f 01 	.  . 
	jr nc,l2830h		;281d	30 11 	0 . 
	adc a,b			;281f	88 	. 
	xor h			;2820	ac 	. 
	ld (de),a			;2821	12 	. 
	ex af,af'			;2822	08 	. 
	inc l			;2823	2c 	, 
	ld (l308dh),a		;2824	32 8d 30 	2 . 0 
	dec c			;2827	0d 	. 
	adc a,l			;2828	8d 	. 
	jr nc,l2858h		;2829	30 2d 	0 - 
	sbc a,d			;282b	9a 	. 
	inc l			;282c	2c 	, 
	jp z,l2c9dh		;282d	ca 9d 2c 	. . , 
l2830h:
	pop bc			;2830	c1 	. 
	jr nz,$+46		;2831	20 2c 	  , 
	ld l,d			;2833	6a 	j 
	jr nz,$+58		;2834	20 38 	  8 
	dec b			;2836	05 	. 
	inc h			;2837	24 	$ 
	inc l			;2838	2c 	, 
	ld a,(bc)			;2839	0a 	. 
	and l			;283a	a5 	. 
	ld c,b			;283b	48 	H 
	jp 0ac26h		;283c	c3 26 ac 	. & . 
	and c			;283f	a1 	. 
	ld h,02ch		;2840	26 2c 	& , 
	pop bc			;2842	c1 	. 
	xor b			;2843	a8 	. 
	ld b,(hl)			;2844	46 	F 
	add a,h			;2845	84 	. 
	jr z,l2898h		;2846	28 50 	( P 
	dec b			;2848	05 	. 
	ld hl,(l2a2ch)		;2849	2a 2c 2a 	* , * 
l284ch:
	dec l			;284c	2d 	- 
	ld d,b			;284d	50 	P 
	ex af,af'			;284e	08 	. 
	xor (hl)			;284f	ae 	. 
	inc l			;2850	2c 	, 
	ld (hl),e			;2851	73 	s 
	cpl			;2852	2f 	/ 
	inc l			;2853	2c 	, 
	jp pe,0acb0h		;2854	ea b0 ac 	. . . 
	ld (hl),e			;2857	73 	s 
l2858h:
	or c			;2858	b1 	. 
	ld b,b			;2859	40 	@ 
	jp 0acb1h		;285a	c3 b1 ac 	. . . 
	ld bc,0acb1h		;285d	01 b1 ac 	. . . 
	ld hl,0acb1h		;2860	21 b1 ac 	! . . 
	ld b,c			;2863	41 	A 
	or c			;2864	b1 	. 
	xor h			;2865	ac 	. 
	ld h,c			;2866	61 	a 
	or c			;2867	b1 	. 
	xor h			;2868	ac 	. 
	add a,c			;2869	81 	. 
	or c			;286a	b1 	. 
	xor h			;286b	ac 	. 
	and c			;286c	a1 	. 
	ld sp,0c12ch		;286d	31 2c c1 	1 , . 
	ld sp,l0538h		;2870	31 38 05 	1 8 . 
	inc sp			;2873	33 	3 
	inc l			;2874	2c 	, 
	jp pe,l2cb5h		;2875	ea b5 2c 	. . , 
	ld (hl),e			;2878	73 	s 
	or l			;2879	b5 	. 
	inc l			;287a	2c 	, 
	ld d,h			;287b	54 	T 
	or l			;287c	b5 	. 
	inc l			;287d	2c 	, 
	adc a,d			;287e	8a 	. 
	or (hl)			;287f	b6 	. 
	xor h			;2880	ac 	. 
	and c			;2881	a1 	. 
	ld (hl),02ch		;2882	36 2c 	6 , 
	pop bc			;2884	c1 	. 
	cp b			;2885	b8 	. 
	inc l			;2886	2c 	, 
	nop			;2887	00 	. 
	cp b			;2888	b8 	. 
	inc l			;2889	2c 	, 
	ld hl,(0acbah)		;288a	2a ba ac 	* . . 
	ld bc,0acbah		;288d	01 ba ac 	. . . 
	ld hl,0acbah		;2890	21 ba ac 	! . . 
	ld b,c			;2893	41 	A 
	cp d			;2894	ba 	. 
	xor h			;2895	ac 	. 
	ld h,c			;2896	61 	a 
	cp d			;2897	ba 	. 
l2898h:
	xor h			;2898	ac 	. 
	add a,c			;2899	81 	. 
	cp d			;289a	ba 	. 
	xor h			;289b	ac 	. 
	and c			;289c	a1 	. 
	ld a,(0c12ch)		;289d	3a 2c c1 	: , . 
	ld a,(l0538h)		;28a0	3a 38 05 	: 8 . 
	cp h			;28a3	bc 	. 
	inc l			;28a4	2c 	, 
	ld (hl),e			;28a5	73 	s 
	cp h			;28a6	bc 	. 
	inc l			;28a7	2c 	, 
	ld b,b			;28a8	40 	@ 
	ld a,050h		;28a9	3e 50 	> P 
	ex af,af'			;28ab	08 	. 
	ld b,c			;28ac	41 	A 
	inc l			;28ad	2c 	, 
	and c			;28ae	a1 	. 
	pop bc			;28af	c1 	. 
	ret nz			;28b0	c0 	. 
	ld l,(hl)			;28b1	6e 	n 
	ld b,c			;28b2	41 	A 
	jr c,l28bah		;28b3	38 05 	8 . 
	call nz,06e40h		;28b5	c4 40 6e 	. @ n 
	ld c,b			;28b8	48 	H 
	inc l			;28b9	2c 	, 
l28bah:
	and (hl)			;28ba	a6 	. 
	ld c,h			;28bb	4c 	L 
	inc l			;28bc	2c 	, 
	ld h,050h		;28bd	26 50 	& P 
	inc l			;28bf	2c 	, 
	add a,(hl)			;28c0	86 	. 
	jp nc,0844ah		;28c1	d2 4a 84 	. J . 
	ld d,h			;28c4	54 	T 
	inc l			;28c5	2c 	, 
	ld b,058h		;28c6	06 58 	. X 
	inc l			;28c8	2c 	, 
	and (hl)			;28c9	a6 	. 
	ld e,h			;28ca	5c 	\ 
	inc l			;28cb	2c 	, 
	or h			;28cc	b4 	. 
	rst 18h			;28cd	df 	. 
	xor h			;28ce	ac 	. 
	ld b,0dfh		;28cf	06 df 	. . 
	xor h			;28d1	ac 	. 
	ld h,0dfh		;28d2	26 df 	& . 
	xor h			;28d4	ac 	. 
	ld b,(hl)			;28d5	46 	F 
	rst 18h			;28d6	df 	. 
	xor h			;28d7	ac 	. 
	ld h,(hl)			;28d8	66 	f 
	rst 18h			;28d9	df 	. 
	xor h			;28da	ac 	. 
	add a,(hl)			;28db	86 	. 
	rst 18h			;28dc	df 	. 
	xor h			;28dd	ac 	. 
	and (hl)			;28de	a6 	. 
	ld e,a			;28df	5f 	_ 
	inc l			;28e0	2c 	, 
	add a,064h		;28e1	c6 64 	. d 
	jr c,l28eah		;28e3	38 05 	8 . 
	ld h,a			;28e5	67 	g 
	ld hl,(0671dh)		;28e6	2a 1d 67 	* . g 
	ld d,b			;28e9	50 	P 
l28eah:
	ex af,af'			;28ea	08 	. 
	ld l,c			;28eb	69 	i 
	inc l			;28ec	2c 	, 
	ld a,(bc)			;28ed	0a 	. 
	ld l,c			;28ee	69 	i 
	ld b,h			;28ef	44 	D 
	and d			;28f0	a2 	. 
	ld l,e			;28f1	6b 	k 
	inc l			;28f2	2c 	, 
	ld a,(bc)			;28f3	0a 	. 
	ld l,e			;28f4	6b 	k 
	ld c,b			;28f5	48 	H 
	and d			;28f6	a2 	. 
	defb 0edh;next byte illegal after ed		;28f7	ed 	. 
	inc l			;28f8	2c 	, 
	ld a,(bc)			;28f9	0a 	. 
	defb 0edh;next byte illegal after ed		;28fa	ed 	. 
	inc l			;28fb	2c 	, 
	ld c,d			;28fc	4a 	J 
	defb 0edh;next byte illegal after ed		;28fd	ed 	. 
	inc l			;28fe	2c 	, 
	ld (hl),0efh		;28ff	36 ef 	6 . 
	ld hl,(0efddh)		;2901	2a dd ef 	* . . 
	inc l			;2904	2c 	, 
	ld d,l			;2905	55 	U 
	ld (hl),d			;2906	72 	r 
	inc l			;2907	2c 	, 
	pop hl			;2908	e1 	. 
sub_2909h:
	di			;2909	f3 	. 
	inc a			;290a	3c 	< 
	ld l,c			;290b	69 	i 
	di			;290c	f3 	. 
	ld l,0cbh		;290d	2e cb 	. . 
	ld sp,hl			;290f	f9 	. 
l2910h:
	inc l			;2910	2c 	, 
	push de			;2911	d5 	. 
	ld a,a			;2912	7f 	 
	ld bc,l1830h		;2913	01 30 18 	. 0 . 
	dec d			;2916	15 	. 
	ld d,b			;2917	50 	P 
	add hl,bc			;2918	09 	. 
	sbc a,h			;2919	9c 	. 
	inc a			;291a	3c 	< 
	xor d			;291b	aa 	. 
	inc e			;291c	1c 	. 
	ld d,b			;291d	50 	P 
	add hl,bc			;291e	09 	. 
	ld hl,l0330h		;291f	21 30 03 	! 0 . 
	ld (l0638h),hl		;2922	22 38 06 	" 8 . 
l2925h:
	inc hl			;2925	23 	# 
	jr c,l2910h		;2926	38 e8 	8 . 
	dec h			;2928	25 	% 
	inc l			;2929	2c 	, 
	push af			;292a	f5 	. 
	and a			;292b	a7 	. 
	or b			;292c	b0 	. 
	inc bc			;292d	03 	. 
	and a			;292e	a7 	. 
	or b			;292f	b0 	. 
	inc hl			;2930	23 	# 
	and a			;2931	a7 	. 
	or b			;2932	b0 	. 
	ld b,e			;2933	43 	C 
	and a			;2934	a7 	. 
	or b			;2935	b0 	. 
	ld h,e			;2936	63 	c 
	and a			;2937	a7 	. 
	or b			;2938	b0 	. 
	add a,e			;2939	83 	. 
	and a			;293a	a7 	. 
	or b			;293b	b0 	. 
	and e			;293c	a3 	. 
	daa			;293d	27 	' 
	jr nc,$-59		;293e	30 c3 	0 . 
	daa			;2940	27 	' 
	inc a			;2941	3c 	< 
	xor b			;2942	a8 	. 
	dec hl			;2943	2b 	+ 
	jr nc,l2949h		;2944	30 03 	0 . 
	xor e			;2946	ab 	. 
	cp b			;2947	b8 	. 
	xor b			;2948	a8 	. 
l2949h:
	dec hl			;2949	2b 	+ 
	jr c,$-54		;294a	38 c8 	8 . 
	dec hl			;294c	2b 	+ 
	ld d,b			;294d	50 	P 
	ld b,02fh		;294e	06 2f 	. / 
	jr c,l2955h		;2950	38 03 	8 . 
	xor a			;2952	af 	. 
	cp l			;2953	bd 	. 
	xor b			;2954	a8 	. 
l2955h:
	cpl			;2955	2f 	/ 
	dec a			;2956	3d 	= 
	ret z			;2957	c8 	. 
	inc (hl)			;2958	34 	4 
	ld d,b			;2959	50 	P 
	add hl,bc			;295a	09 	. 
	jr c,l29a1h		;295b	38 44 	8 D 
	inc b			;295d	04 	. 
	add hl,sp			;295e	39 	9 
	jr c,l2967h		;295f	38 06 	8 . 
	ccf			;2961	3f 	? 
	ld b,h			;2962	44 	D 
	inc b			;2963	04 	. 
	ld b,e			;2964	43 	C 
	jr nc,l296fh		;2965	30 08 	0 . 
l2967h:
	ld b,a			;2967	47 	G 
	jr nc,l2972h		;2968	30 08 	0 . 
	ld b,a			;296a	47 	G 
	ld d,b			;296b	50 	P 
	ld b,04ch		;296c	06 4c 	. L 
	inc l			;296e	2c 	, 
l296fh:
	and d			;296f	a2 	. 
	ld d,b			;2970	50 	P 
	ld c,h			;2971	4c 	L 
l2972h:
	and h			;2972	a4 	. 
	ld d,d			;2973	52 	R 
	ld c,h			;2974	4c 	L 
	and h			;2975	a4 	. 
	ld d,l			;2976	55 	U 
	ld c,h			;2977	4c 	L 
	and h			;2978	a4 	. 
	ld d,a			;2979	57 	W 
	ld c,b			;297a	48 	H 
	and h			;297b	a4 	. 
	ld e,d			;297c	5a 	Z 
	ld b,h			;297d	44 	D 
	and h			;297e	a4 	. 
	call c,sub_04c2h		;297f	dc c2 04 	. . . 
	ld e,h			;2982	5c 	\ 
	ld b,d			;2983	42 	B 
	inc h			;2984	24 	$ 
	rst 18h			;2985	df 	. 
	jp nz,05f04h		;2986	c2 04 5f 	. . _ 
	ld b,d			;2989	42 	B 
	inc h			;298a	24 	$ 
	ld h,b			;298b	60 	` 
	inc l			;298c	2c 	, 
	dec a			;298d	3d 	= 
	ld h,d			;298e	62 	b 
	inc l			;298f	2c 	, 
	rst 20h			;2990	e7 	. 
	ld h,h			;2991	64 	d 
	inc l			;2992	2c 	, 
	ex de,hl			;2993	eb 	. 
	ld l,b			;2994	68 	h 
	inc l			;2995	2c 	, 
	rst 20h			;2996	e7 	. 
	ret pe			;2997	e8 	. 
	dec l			;2998	2d 	- 
	call z,sub_2ce8h		;2999	cc e8 2c 	. . , 
	dec e			;299c	1d 	. 
	ld l,a			;299d	6f 	o 
	inc l			;299e	2c 	, 
	ex de,hl			;299f	eb 	. 
	ld (hl),e			;29a0	73 	s 
l29a1h:
	inc l			;29a1	2c 	, 
	dec hl			;29a2	2b 	+ 
	di			;29a3	f3 	. 
	inc l			;29a4	2c 	, 
	xor e			;29a5	ab 	. 
	jp m,0962ch		;29a6	fa 2c 96 	. , . 
	jp m,0d62ch		;29a9	fa 2c d6 	. , . 
	ld a,a			;29ac	7f 	 
	ld bc,l1530h		;29ad	01 30 15 	. 0 . 
	dec c			;29b0	0d 	. 
	inc l			;29b1	2c 	, 
	jp pe,l2c8ch+1		;29b2	ea 8d 2c 	. . , 
	ld d,b			;29b5	50 	P 
	adc a,l			;29b6	8d 	. 
	inc l			;29b7	2c 	, 
	ld h,b			;29b8	60 	` 
	djnz l29e7h		;29b9	10 2c 	. , 
	jp pe,04c15h		;29bb	ea 15 4c 	. . L 
	ex af,af'			;29be	08 	. 
	ld d,038h		;29bf	16 38 	. 8 
	dec b			;29c1	05 	. 
	sbc a,d			;29c2	9a 	. 
	cp d			;29c3	ba 	. 
	ld b,(hl)			;29c4	46 	F 
l29c5h:
	sbc a,h			;29c5	9c 	. 
	ld (l1e80h),a		;29c6	32 80 1e 	2 . . 
	ld b,b			;29c9	40 	@ 
	dec b			;29ca	05 	. 
	and h			;29cb	a4 	. 
	cp h			;29cc	bc 	. 
	inc sp			;29cd	33 	3 
	inc h			;29ce	24 	$ 
	inc a			;29cf	3c 	< 
	ld d,e			;29d0	53 	S 
	inc h			;29d1	24 	$ 
	jr c,l29c5h		;29d2	38 f1 	8 . 
	and l			;29d4	a5 	. 
	scf			;29d5	37 	7 
	sla a		;29d6	cb 27 	. ' 
	scf			;29d8	37 	7 
	ld h,c			;29d9	61 	a 
	xor b			;29da	a8 	. 
	scf			;29db	37 	7 
	sra b		;29dc	cb 28 	. ( 
	scf			;29de	37 	7 
	ld c,h			;29df	4c 	L 
	xor d			;29e0	aa 	. 
	inc sp			;29e1	33 	3 
	ld l,h			;29e2	6c 	l 
	xor e			;29e3	ab 	. 
	jr nc,l2a32h		;29e4	30 4c 	0 L 
	or c			;29e6	b1 	. 
l29e7h:
	inc l			;29e7	2c 	, 
	ret nz			;29e8	c0 	. 
	ld sp,l0850h		;29e9	31 50 08 	1 P . 
	ld (hl),02ch		;29ec	36 2c 	6 , 
	ld a,(bc)			;29ee	0a 	. 
	scf			;29ef	37 	7 
	inc l			;29f0	2c 	, 
	xor d			;29f1	aa 	. 
	ld a,(l0a2ch)		;29f2	3a 2c 0a 	: , . 
	ld c,c			;29f5	49 	I 
	inc a			;29f6	3c 	< 
	jr l2a5ah		;29f7	18 61 	. a 
	ld (0640dh),a		;29f9	32 0d 64 	2 . d 
	jr nc,$-37		;29fc	30 d9 	0 . 
	ld (hl),d			;29fe	72 	r 
	dec hl			;29ff	2b 	+ 
	inc d			;2a00	14 	. 
	ld (hl),h			;2a01	74 	t 
	add hl,sp			;2a02	39 	9 
	inc b			;2a03	04 	. 
	ld a,b			;2a04	78 	x 
	ld c,a			;2a05	4f 	O 
	ld d,07fh		;2a06	16 7f 	.  
	ld bc,l0028h		;2a08	01 28 00 	. ( . 
	rrca			;2a0b	0f 	. 
	inc h			;2a0c	24 	$ 
	jr $+23		;2a0d	18 15 	. . 
	ld c,b			;2a0f	48 	H 
	ld b,01bh		;2a10	06 1b 	. . 
	ld c,b			;2a12	48 	H 
	ld a,(bc)			;2a13	0a 	. 
	jr nz,$+74		;2a14	20 48 	  H 
	ld b,027h		;2a16	06 27 	. ' 
	ld c,b			;2a18	48 	H 
	ld a,(bc)			;2a19	0a 	. 
	inc l			;2a1a	2c 	, 
	jr nc,$+10		;2a1b	30 08 	0 . 
	dec l			;2a1d	2d 	- 
	ld c,b			;2a1e	48 	H 
	ld a,(bc)			;2a1f	0a 	. 
	ld l,0a4h		;2a20	2e a4 	. . 
	dec bc			;2a22	0b 	. 
	ld (l0830h),a		;2a23	32 30 08 	2 0 . 
	ld (hl),0a6h		;2a26	36 a6 	6 . 
	ld c,(hl)			;2a28	4e 	N 
	add hl,sp			;2a29	39 	9 
	ld c,b			;2a2a	48 	H 
	ld a,(bc)			;2a2b	0a 	. 
l2a2ch:
	inc a			;2a2c	3c 	< 
	ld c,b			;2a2d	48 	H 
	ld a,(bc)			;2a2e	0a 	. 
	ccf			;2a2f	3f 	? 
	ld c,b			;2a30	48 	H 
	ld a,(bc)			;2a31	0a 	. 
l2a32h:
	ld b,c			;2a32	41 	A 
	jr nc,l2a3dh		;2a33	30 08 	0 . 
	ld b,a			;2a35	47 	G 
	inc h			;2a36	24 	$ 
	ld (de),a			;2a37	12 	. 
	ld c,c			;2a38	49 	I 
	ld c,b			;2a39	48 	H 
	ld b,04eh		;2a3a	06 4e 	. N 
	ld c,b			;2a3c	48 	H 
l2a3dh:
	ld c,d			;2a3d	4a 	J 
	ld d,c			;2a3e	51 	Q 
	inc h			;2a3f	24 	$ 
	ld (de),a			;2a40	12 	. 
	ld d,d			;2a41	52 	R 
	ld c,b			;2a42	48 	H 
	ld a,(bc)			;2a43	0a 	. 
	ld d,l			;2a44	55 	U 
	ret z			;2a45	c8 	. 
	ld a,(bc)			;2a46	0a 	. 
	ld e,h			;2a47	5c 	\ 
	ld c,b			;2a48	48 	H 
	ld b,05eh		;2a49	06 5e 	. ^ 
	inc h			;2a4b	24 	$ 
	ld d,c			;2a4c	51 	Q 
	ld e,a			;2a4d	5f 	_ 
	ld c,b			;2a4e	48 	H 
	ld a,(bc)			;2a4f	0a 	. 
	ld l,l			;2a50	6d 	m 
	ld h,00dh		;2a51	26 0d 	& . 
	push af			;2a53	f5 	. 
	and (hl)			;2a54	a6 	. 
	ld c,075h		;2a55	0e 75 	. u 
	ld h,04eh		;2a57	26 4e 	& N 
	ld a,b			;2a59	78 	x 
l2a5ah:
	ld c,b			;2a5a	48 	H 
l2a5bh:
	add hl,bc			;2a5b	09 	. 
	ld a,a			;2a5c	7f 	 
	ld bc,l0128h		;2a5d	01 28 01 	. ( . 
	rlca			;2a60	07 	. 
	inc h			;2a61	24 	$ 
	jr l2a77h		;2a62	18 13 	. . 
	inc h			;2a64	24 	$ 
	ld c,h			;2a65	4c 	L 
	dec d			;2a66	15 	. 
	ld c,b			;2a67	48 	H 
	ld b,017h		;2a68	06 17 	. . 
	inc h			;2a6a	24 	$ 
	ld c,h			;2a6b	4c 	L 
	ld a,(de)			;2a6c	1a 	. 
	ld c,b			;2a6d	48 	H 
	ld b,01bh		;2a6e	06 1b 	. . 
	inc h			;2a70	24 	$ 
	ld c,h			;2a71	4c 	L 
	rra			;2a72	1f 	. 
	inc h			;2a73	24 	$ 
	ld c,h			;2a74	4c 	L 
	inc hl			;2a75	23 	# 
	inc h			;2a76	24 	$ 
l2a77h:
	ld de,04826h		;2a77	11 26 48 	. & H 
	ld a,(bc)			;2a7a	0a 	. 
	daa			;2a7b	27 	' 
	inc h			;2a7c	24 	$ 
	inc c			;2a7d	0c 	. 
	dec hl			;2a7e	2b 	+ 
	inc h			;2a7f	24 	$ 
	ld de,l242fh		;2a80	11 2f 24 	. / $ 
	inc c			;2a83	0c 	. 
	ld (l0648h),a		;2a84	32 48 06 	2 H . 
	ld (hl),026h		;2a87	36 26 	6 & 
	ld a,(de)			;2a89	1a 	. 
	jr c,l2ab2h		;2a8a	38 26 	8 & 
	rrca			;2a8c	0f 	. 
	ld b,d			;2a8d	42 	B 
	jr nc,l2a98h		;2a8e	30 08 	0 . 
	ld c,b			;2a90	48 	H 
	ld e,b			;2a91	58 	X 
	ex af,af'			;2a92	08 	. 
	ld c,h			;2a93	4c 	L 
	ld e,b			;2a94	58 	X 
	ld d,04ch		;2a95	16 4c 	. L 
	ld c,(hl)			;2a97	4e 	N 
l2a98h:
	dec c			;2a98	0d 	. 
	ld d,c			;2a99	51 	Q 
	ld c,b			;2a9a	48 	H 
	dec b			;2a9b	05 	. 
	ld d,(hl)			;2a9c	56 	V 
	dec (hl)			;2a9d	35 	5 
	ld d,c			;2a9e	51 	Q 
	ld e,c			;2a9f	59 	Y 
	jr c,l2aa7h		;2aa0	38 05 	8 . 
	ld e,l			;2aa2	5d 	] 
	inc h			;2aa3	24 	$ 
	ld e,e			;2aa4	5b 	[ 
	ld h,e			;2aa5	63 	c 
	inc l			;2aa6	2c 	, 
l2aa7h:
	ld e,h			;2aa7	5c 	\ 
	ld l,d			;2aa8	6a 	j 
	ld b,b			;2aa9	40 	@ 
	dec b			;2aaa	05 	. 
	ld (hl),h			;2aab	74 	t 
	ld d,b			;2aac	50 	P 
	rlca			;2aad	07 	. 
	rst 30h			;2aae	f7 	. 
	xor h			;2aaf	ac 	. 
	inc c			;2ab0	0c 	. 
	ld (hl),a			;2ab1	77 	w 
l2ab2h:
	inc l			;2ab2	2c 	, 
	ld c,h			;2ab3	4c 	L 
	ld a,a			;2ab4	7f 	 
	ld bc,l0230h		;2ab5	01 30 02 	. 0 . 
	jr l2b1ah		;2ab8	18 60 	. ` 
	ld b,01eh		;2aba	06 1e 	. . 
l2abch:
	inc a			;2abc	3c 	< 
	jr l2adfh		;2abd	18 20 	.   
	ld h,b			;2abf	60 	` 
	ld b,022h		;2ac0	06 22 	. " 
	ld d,h			;2ac2	54 	T 
	ld d,l			;2ac3	55 	U 
	and l			;2ac4	a5 	. 
	call nc,02514h		;2ac5	d4 14 25 	. . % 
	ld d,h			;2ac8	54 	T 
	ld d,h			;2ac9	54 	T 
	jr z,$+66		;2aca	28 40 	( @ 
	ld b,02ch		;2acc	06 2c 	. , 
	ld b,b			;2ace	40 	@ 
	rlca			;2acf	07 	. 
	ld l,0d4h		;2ad0	2e d4 	. . 
	inc d			;2ad2	14 	. 
	ld (05554h),a		;2ad3	32 54 55 	2 T U 
	or (hl)			;2ad6	b6 	. 
	call nc,sub_3614h		;2ad7	d4 14 36 	. . 6 
	ld d,h			;2ada	54 	T 
	ld d,h			;2adb	54 	T 
	jr c,l2b06h		;2adc	38 28 	8 ( 
	ex af,af'			;2ade	08 	. 
l2adfh:
	ld a,(l14d4h)		;2adf	3a d4 14 	: . . 
	cp (hl)			;2ae2	be 	. 
	call nc,sub_3e14h		;2ae3	d4 14 3e 	. . > 
	ld d,h			;2ae6	54 	T 
	ld d,h			;2ae7	54 	T 
	ld b,d			;2ae8	42 	B 
	ld d,h			;2ae9	54 	T 
	ld d,l			;2aea	55 	U 
	ld b,a			;2aeb	47 	G 
	call nc,04714h		;2aec	d4 14 47 	. . G 
	jr nz,l2b3eh		;2aef	20 4d 	  M 
	ld c,b			;2af1	48 	H 
	inc e			;2af2	1c 	. 
	ld d,c			;2af3	51 	Q 
	ld c,d			;2af4	4a 	J 
	ld d,h			;2af5	54 	T 
	ld d,l			;2af6	55 	U 
	ld c,d			;2af7	4a 	J 
	inc e			;2af8	1c 	. 
	ld d,c			;2af9	51 	Q 
	ld c,h			;2afa	4c 	L 
	inc e			;2afb	1c 	. 
	rla			;2afc	17 	. 
	adc a,0d4h		;2afd	ce d4 	. . 
	inc d			;2aff	14 	. 
	ld c,(hl)			;2b00	4e 	N 
	ld d,h			;2b01	54 	T 
	ld d,h			;2b02	54 	T 
	ld d,d			;2b03	52 	R 
	ld d,h			;2b04	54 	T 
	ld d,l			;2b05	55 	U 
l2b06h:
	ld d,e			;2b06	53 	S 
	inc e			;2b07	1c 	. 
	ld (de),a			;2b08	12 	. 
	ld d,(hl)			;2b09	56 	V 
	call nc,05a14h		;2b0a	d4 14 5a 	. . Z 
	ld d,h			;2b0d	54 	T 
	ld d,l			;2b0e	55 	U 
	sbc a,0d4h		;2b0f	de d4 	. . 
	inc d			;2b11	14 	. 
	ld e,(hl)			;2b12	5e 	^ 
	ld d,h			;2b13	54 	T 
	ld d,h			;2b14	54 	T 
	ld h,d			;2b15	62 	b 
	call nc,06414h		;2b16	d4 14 64 	. . d 
	ld b,b			;2b19	40 	@ 
l2b1ah:
	ld b,0e6h		;2b1a	06 e6 	. . 
	call nc,06614h		;2b1c	d4 14 66 	. . f 
	ld d,h			;2b1f	54 	T 
	ld d,h			;2b20	54 	T 
	ld l,b			;2b21	68 	h 
	ld b,b			;2b22	40 	@ 
	rlca			;2b23	07 	. 
	ld l,d			;2b24	6a 	j 
	call nc,06c14h		;2b25	d4 14 6c 	. . l 
	ld b,b			;2b28	40 	@ 
	ld b,06fh		;2b29	06 6f 	. o 
	ld d,h			;2b2b	54 	T 
l2b2ch:
	ld d,l			;2b2c	55 	U 
	halt			;2b2d	76 	v 
	ld b,b			;2b2e	40 	@ 
	ld a,(bc)			;2b2f	0a 	. 
	ld a,a			;2b30	7f 	 
	ld bc,l0320h		;2b31	01 20 03 	.   . 
	dec bc			;2b34	0b 	. 
	inc e			;2b35	1c 	. 
	ld c,h			;2b36	4c 	L 
	rrca			;2b37	0f 	. 
	xor h			;2b38	ac 	. 
	ld c,h			;2b39	4c 	L 
	inc de			;2b3a	13 	. 
	jr z,l2b42h		;2b3b	28 05 	( . 
	rla			;2b3d	17 	. 
l2b3eh:
	ld a,00dh		;2b3e	3e 0d 	> . 
	add hl,de			;2b40	19 	. 
	ld c,b			;2b41	48 	H 
l2b42h:
	dec b			;2b42	05 	. 
	jr nz,l2b81h		;2b43	20 3c 	  < 
	ld d,c			;2b45	51 	Q 
	ld hl,l0548h		;2b46	21 48 05 	! H . 
	inc h			;2b49	24 	$ 
	or l			;2b4a	b5 	. 
	ld d,d			;2b4b	52 	R 
	add hl,hl			;2b4c	29 	) 
	ld c,h			;2b4d	4c 	L 
	ld c,(hl)			;2b4e	4e 	N 
	xor l			;2b4f	ad 	. 
	ld d,b			;2b50	50 	P 
	rlca			;2b51	07 	. 
	inc a			;2b52	3c 	< 
	ld c,h			;2b53	4c 	L 
	jr $+67		;2b54	18 41 	. A 
	ld c,l			;2b56	4d 	M 
	add hl,de			;2b57	19 	. 
	pop bc			;2b58	c1 	. 
	dec d			;2b59	15 	. 
	inc de			;2b5a	13 	. 
	pop bc			;2b5b	c1 	. 
	dec d			;2b5c	15 	. 
	ld d,e			;2b5d	53 	S 
	rst 8			;2b5e	cf 	. 
	or b			;2b5f	b0 	. 
	dec c			;2b60	0d 	. 
	ld c,a			;2b61	4f 	O 
	jr nc,$+79		;2b62	30 4d 	0 M 
	ld d,b			;2b64	50 	P 
	jr nc,l2bb5h		;2b65	30 4e 	0 N 
	ld d,a			;2b67	57 	W 
	ret nc			;2b68	d0 	. 
	ld c,d			;2b69	4a 	J 
	ld e,(hl)			;2b6a	5e 	^ 
	inc l			;2b6b	2c 	, 
	ld d,c			;2b6c	51 	Q 
	ld h,d			;2b6d	62 	b 
	ld d,b			;2b6e	50 	P 
	ld c,d			;2b6f	4a 	J 
	ld h,e			;2b70	63 	c 
l2b71h:
	call nc,0640ah		;2b71	d4 0a 64 	. . d 
	ld d,b			;2b74	50 	P 
	ld c,d			;2b75	4a 	J 
	ld h,(hl)			;2b76	66 	f 
	ld d,h			;2b77	54 	T 
	ld a,(bc)			;2b78	0a 	. 
	ld h,a			;2b79	67 	g 
	ret nc			;2b7a	d0 	. 
	ld c,d			;2b7b	4a 	J 
	ret pe			;2b7c	e8 	. 
	call nc,0680ah		;2b7d	d4 0a 68 	. . h 
	ld d,h			;2b80	54 	T 
l2b81h:
	ld c,d			;2b81	4a 	J 
	ld l,c			;2b82	69 	i 
	ret nc			;2b83	d0 	. 
	ld c,d			;2b84	4a 	J 
	ld (hl),c			;2b85	71 	q 
	ld c,b			;2b86	48 	H 
	add hl,bc			;2b87	09 	. 
	ld a,b			;2b88	78 	x 
	dec l			;2b89	2d 	- 
	inc b			;2b8a	04 	. 
	ld a,a			;2b8b	7f 	 
	ld bc,l0028h		;2b8c	01 28 00 	. ( . 
	rrca			;2b8f	0f 	. 
	inc h			;2b90	24 	$ 
	ld (bc),a			;2b91	02 	. 
	inc d			;2b92	14 	. 
	ld c,b			;2b93	48 	H 
	ld b,e			;2b94	43 	C 
	dec d			;2b95	15 	. 
	call nz,01701h		;2b96	c4 01 17 	. . . 
	ret z			;2b99	c8 	. 
	ld b,e			;2b9a	43 	C 
	jr l2be1h		;2b9b	18 44 	. D 
	ld bc,0c899h		;2b9d	01 99 c8 	. . . 
	inc bc			;2ba0	03 	. 
	add hl,de			;2ba1	19 	. 
	ld c,b			;2ba2	48 	H 
	ld b,e			;2ba3	43 	C 
	dec de			;2ba4	1b 	. 
	ld b,h			;2ba5	44 	D 
	ld bc,0489bh		;2ba6	01 9b 48 	. . H 
	inc bc			;2ba9	03 	. 
	ld e,048h		;2baa	1e 48 	. H 
	inc bc			;2bac	03 	. 
	and b			;2bad	a0 	. 
	ret z			;2bae	c8 	. 
	inc bc			;2baf	03 	. 
	jr nz,l2bfah		;2bb0	20 48 	  H 
	ld b,e			;2bb2	43 	C 
	inc hl			;2bb3	23 	# 
	ret z			;2bb4	c8 	. 
l2bb5h:
	inc bc			;2bb5	03 	. 
	jr z,l2be0h		;2bb6	28 28 	( ( 
	ld b,h			;2bb8	44 	D 
	ld hl,(04524h)		;2bb9	2a 24 45 	* $ E 
	jr z,$+70		;2bbc	28 44 	( D 
	ld bc,l242bh		;2bbe	01 2b 24 	. + $ 
	dec b			;2bc1	05 	. 
	ld l,0a4h		;2bc2	2e a4 	. . 
	dec b			;2bc4	05 	. 
	xor a			;2bc5	af 	. 
	ret z			;2bc6	c8 	. 
	inc bc			;2bc7	03 	. 
	cpl			;2bc8	2f 	/ 
	ld c,b			;2bc9	48 	H 
	ld b,e			;2bca	43 	C 
	jr nc,l2b71h		;2bcb	30 a4 	0 . 
	dec b			;2bcd	05 	. 
	inc (hl)			;2bce	34 	4 
	ld c,b			;2bcf	48 	H 
	inc bc			;2bd0	03 	. 
	scf			;2bd1	37 	7 
	ld c,b			;2bd2	48 	H 
	inc bc			;2bd3	03 	. 
	cp d			;2bd4	ba 	. 
	xor b			;2bd5	a8 	. 
	ld b,03ah		;2bd6	06 3a 	. : 
	jr z,l2c20h		;2bd8	28 46 	( F 
	inc a			;2bda	3c 	< 
	ld b,h			;2bdb	44 	D 
	ld bc,l243fh		;2bdc	01 3f 24 	. ? $ 
	rlca			;2bdf	07 	. 
l2be0h:
	ld b,c			;2be0	41 	A 
l2be1h:
	ret z			;2be1	c8 	. 
	ld b,e			;2be2	43 	C 
	ld b,e			;2be3	43 	C 
	and h			;2be4	a4 	. 
	rlca			;2be5	07 	. 
	ld b,l			;2be6	45 	E 
	ld b,h			;2be7	44 	D 
	ld b,e			;2be8	43 	C 
	rst 0			;2be9	c7 	. 
	and h			;2bea	a4 	. 
	rlca			;2beb	07 	. 
	ld b,a			;2bec	47 	G 
	inc h			;2bed	24 	$ 
	ld b,a			;2bee	47 	G 
	ld c,c			;2bef	49 	I 
	ld b,h			;2bf0	44 	D 
	ld b,e			;2bf1	43 	C 
	ld c,d			;2bf2	4a 	J 
	ld b,h			;2bf3	44 	D 
	ld bc,048cah		;2bf4	01 ca 48 	. . H 
	inc bc			;2bf7	03 	. 
	ld c,l			;2bf8	4d 	M 
	ld b,h			;2bf9	44 	D 
l2bfah:
	ld bc,048ceh		;2bfa	01 ce 48 	. . H 
	inc bc			;2bfd	03 	. 
	ld d,h			;2bfe	54 	T 
	ld b,h			;2bff	44 	D 
	ld bc,l2454h		;2c00	01 54 24 	. T $ 
	ld c,b			;2c03	48 	H 
	ld e,b			;2c04	58 	X 
	ld b,h			;2c05	44 	D 
	ld b,e			;2c06	43 	C 
	ld e,a			;2c07	5f 	_ 
	jr z,l2c0eh		;2c08	28 04 	( . 
	ld h,h			;2c0a	64 	d 
	jr nc,l2c16h		;2c0b	30 09 	0 . 
	rst 20h			;2c0d	e7 	. 
l2c0eh:
	xor b			;2c0e	a8 	. 
	inc b			;2c0f	04 	. 
	ld h,a			;2c10	67 	g 
l2c11h:
	jr z,l2c57h		;2c11	28 44 	( D 
	ld l,h			;2c13	6c 	l 
	ld b,h			;2c14	44 	D 
	ld a,(bc)			;2c15	0a 	. 
l2c16h:
	ld (hl),d			;2c16	72 	r 
	ld h,00bh		;2c17	26 0b 	& . 
	ld (hl),h			;2c19	74 	t 
l2c1ah:
	ld b,h			;2c1a	44 	D 
	ld bc,l2676h		;2c1b	01 76 26 	. v & 
	dec bc			;2c1e	0b 	. 
	ld a,d			;2c1f	7a 	z 
l2c20h:
	ld h,00bh		;2c20	26 0b 	& . 
	ld a,(hl)			;2c22	7e 	~ 
	ld h,04bh		;2c23	26 4b 	& K 
	ld a,a			;2c25	7f 	 
	ld bc,l0c28h		;2c26	01 28 0c 	. ( . 
	rlca			;2c29	07 	. 
	inc h			;2c2a	24 	$ 
	ld (bc),a			;2c2b	02 	. 
	add hl,de			;2c2c	19 	. 
	ld h,b			;2c2d	60 	` 
	inc b			;2c2e	04 	. 
	inc e			;2c2f	1c 	. 
	ld h,h			;2c30	64 	d 
	ld c,l			;2c31	4d 	M 
	inc h			;2c32	24 	$ 
	ld h,b			;2c33	60 	` 
	add hl,de			;2c34	19 	. 
	dec h			;2c35	25 	% 
	dec a			;2c36	3d 	= 
	ld c,(hl)			;2c37	4e 	N 
	ld hl,(04d38h)		;2c38	2a 38 4d 	* 8 M 
	ld hl,(l0fadh)		;2c3b	2a ad 0f 	* . . 
	inc l			;2c3e	2c 	, 
	ld d,b			;2c3f	50 	P 
	ld bc,l382ch		;2c40	01 2c 38 	. , 8 
	ld c,l			;2c43	4d 	M 
	ld l,038h		;2c44	2e 38 	. 8 
	ld c,l			;2c46	4d 	M 
	ld l,02dh		;2c47	2e 2d 	. - 
l2c49h:
	rrca			;2c49	0f 	. 
	ld (l0f2dh),a		;2c4a	32 2d 0f 	2 - . 
	jr c,l2c8ch		;2c4d	38 3d 	8 = 
	ld c,(hl)			;2c4f	4e 	N 
	jr c,l2c9ah		;2c50	38 48 	8 H 
	add hl,bc			;2c52	09 	. 
	ccf			;2c53	3f 	? 
	ld c,b			;2c54	48 	H 
	ld a,(de)			;2c55	1a 	. 
	ld b,h			;2c56	44 	D 
l2c57h:
	ld h,b			;2c57	60 	` 
	ld bc,l1dcfh		;2c58	01 cf 1d 	. . . 
	rlca			;2c5b	07 	. 
	ld c,a			;2c5c	4f 	O 
	dec e			;2c5d	1d 	. 
	ld c,(hl)			;2c5e	4e 	N 
	ld d,e			;2c5f	53 	S 
	ld b,b			;2c60	40 	@ 
	ld bc,l1b53h		;2c61	01 53 1b 	. S . 
	dec de			;2c64	1b 	. 
	push de			;2c65	d5 	. 
	ld d,b			;2c66	50 	P 
	djnz $+90		;2c67	10 58 	. X 
	ld a,044h		;2c69	3e 44 	> D 
	ld h,b			;2c6b	60 	` 
	ld h,b			;2c6c	60 	` 
	ld bc,06062h		;2c6d	01 62 60 	. b ` 
	ld bc,04064h		;2c70	01 64 40 	. d @ 
	ld a,(de)			;2c73	1a 	. 
	ld (hl),c			;2c74	71 	q 
	jr c,l2c91h		;2c75	38 1a 	8 . 
	ld (hl),c			;2c77	71 	q 
	dec l			;2c78	2d 	- 
	rlca			;2c79	07 	. 
	ld a,b			;2c7a	78 	x 
	dec a			;2c7b	3d 	= 
	ld c,(hl)			;2c7c	4e 	N 
	ld a,a			;2c7d	7f 	 
	ld bc,l123fh		;2c7e	01 3f 12 	. ? . 
	ld a,(bc)			;2c81	0a 	. 
	cp h			;2c82	bc 	. 
	ld d,e			;2c83	53 	S 
	ld c,03ch		;2c84	0e 3c 	. < 
	dec e			;2c86	1d 	. 
	ld de,l1dbbh		;2c87	11 bb 1d 	. . . 
	inc d			;2c8a	14 	. 
	ld b,b			;2c8b	40 	@ 
l2c8ch:
	ld bc,l3315h		;2c8c	01 15 33 	. . 3 
	dec e			;2c8f	1d 	. 
	inc e			;2c90	1c 	. 
l2c91h:
	ld c,b			;2c91	48 	H 
	ld a,(de)			;2c92	1a 	. 
	jr nz,$-49		;2c93	20 cd 	  . 
	ld d,e			;2c95	53 	S 
	inc h			;2c96	24 	$ 
	ld c,b			;2c97	48 	H 
	ld a,(de)			;2c98	1a 	. 
	daa			;2c99	27 	' 
l2c9ah:
	ld d,b			;2c9a	50 	P 
	inc b			;2c9b	04 	. 
	inc l			;2c9c	2c 	, 
l2c9dh:
	ld c,b			;2c9d	48 	H 
	ld a,(de)			;2c9e	1a 	. 
	inc sp			;2c9f	33 	3 
	dec h			;2ca0	25 	% 
	inc d			;2ca1	14 	. 
	scf			;2ca2	37 	7 
	dec h			;2ca3	25 	% 
	inc d			;2ca4	14 	. 
	ld a,(00958h)		;2ca5	3a 58 09 	: X . 
	ld b,e			;2ca8	43 	C 
	ld c,h			;2ca9	4c 	L 
	dec d			;2caa	15 	. 
	sra h		;2cab	cb 2c 	. , 
	ex af,af'			;2cad	08 	. 
	sra h		;2cae	cb 2c 	. , 
	ld c,(hl)			;2cb0	4e 	N 
	ld d,c			;2cb1	51 	Q 
	ld d,h			;2cb2	54 	T 
	inc bc			;2cb3	03 	. 
	ld d,h			;2cb4	54 	T 
l2cb5h:
	ld d,b			;2cb5	50 	P 
	ld bc,0d453h		;2cb6	01 53 d4 	. S . 
	inc bc			;2cb9	03 	. 
	ld d,(hl)			;2cba	56 	V 
	ld d,h			;2cbb	54 	T 
	ld b,e			;2cbc	43 	C 
	ld e,e			;2cbd	5b 	[ 
	ld e,b			;2cbe	58 	X 
	ld bc,0ec66h		;2cbf	01 66 ec 	. f . 
	ld b,e			;2cc2	43 	C 
	ld h,a			;2cc3	67 	g 
	ret pe			;2cc4	e8 	. 
	ld b,e			;2cc5	43 	C 
	ld l,c			;2cc6	69 	i 
	call pe,06a43h		;2cc7	ec 43 6a 	. C j 
	ret pe			;2cca	e8 	. 
	ld b,e			;2ccb	43 	C 
	ld l,e			;2ccc	6b 	k 
	call pe,07f03h		;2ccd	ec 03 7f 	. .  
	ld bc,l1642h		;2cd0	01 42 16 	. B . 
	ld a,(bc)			;2cd3	0a 	. 
	ld b,b			;2cd4	40 	@ 
	rla			;2cd5	17 	. 
	ld (de),a			;2cd6	12 	. 
	add hl,de			;2cd7	19 	. 
	inc d			;2cd8	14 	. 
	rla			;2cd9	17 	. 
	dec l			;2cda	2d 	- 
	ld b,l			;2cdb	45 	E 
	add hl,de			;2cdc	19 	. 
	dec l			;2cdd	2d 	- 
	rlca			;2cde	07 	. 
	dec de			;2cdf	1b 	. 
	ld b,b			;2ce0	40 	@ 
	ld bc,02d24h		;2ce1	01 24 2d 	. $ - 
	ld b,a			;2ce4	47 	G 
	inc h			;2ce5	24 	$ 
	ld d,h			;2ce6	54 	T 
	add hl,de			;2ce7	19 	. 
sub_2ce8h:
	add hl,hl			;2ce8	29 	) 
	ld l,047h		;2ce9	2e 47 	. G 
	cpl			;2ceb	2f 	/ 
	ld c,b			;2cec	48 	H 
	add hl,bc			;2ced	09 	. 
	or a			;2cee	b7 	. 
	dec l			;2cef	2d 	- 
	dec b			;2cf0	05 	. 
	or a			;2cf1	b7 	. 
	dec l			;2cf2	2d 	- 
	ld e,h			;2cf3	5c 	\ 
	inc a			;2cf4	3c 	< 
	dec l			;2cf5	2d 	- 
	ld b,a			;2cf6	47 	G 
	ccf			;2cf7	3f 	? 
	dec l			;2cf8	2d 	- 
	rlca			;2cf9	07 	. 
	ld b,h			;2cfa	44 	D 
	jr c,l2d17h		;2cfb	38 1a 	8 . 
	ld b,h			;2cfd	44 	D 
	dec l			;2cfe	2d 	- 
	ld c,(hl)			;2cff	4e 	N 
	ld c,h			;2d00	4c 	L 
	jr c,l2d1dh		;2d01	38 1a 	8 . 
	xor b			;2d03	a8 	. 
	dec a			;2d04	3d 	= 
	ld c,(hl)			;2d05	4e 	N 
	ld e,c			;2d06	59 	Y 
	ld (hl),e			;2d07	73 	s 
	inc d			;2d08	14 	. 
	ld h,d			;2d09	62 	b 
	ld b,b			;2d0a	40 	@ 
	add hl,bc			;2d0b	09 	. 
	ld h,d			;2d0c	62 	b 
	and h			;2d0d	a4 	. 
	rrca			;2d0e	0f 	. 
	ld h,(hl)			;2d0f	66 	f 
	inc h			;2d10	24 	$ 
	rrca			;2d11	0f 	. 
	jp pe,l0f24h		;2d12	ea 24 0f 	. $ . 
	ld l,d			;2d15	6a 	j 
	inc h			;2d16	24 	$ 
l2d17h:
	ld b,l			;2d17	45 	E 
	ld l,l			;2d18	6d 	m 
	ld c,b			;2d19	48 	H 
	ld a,(bc)			;2d1a	0a 	. 
	ld l,(hl)			;2d1b	6e 	n 
	inc h			;2d1c	24 	$ 
l2d1dh:
	rrca			;2d1d	0f 	. 
	ld a,b			;2d1e	78 	x 
	ld h,018h		;2d1f	26 18 	& . 
	ld a,a			;2d21	7f 	 
	ld bc,l0028h		;2d22	01 28 00 	. ( . 
	ld c,024h		;2d25	0e 24 	. $ 
	ld (bc),a			;2d27	02 	. 
	ld d,038h		;2d28	16 38 	. 8 
	inc bc			;2d2a	03 	. 
	and l			;2d2b	a5 	. 
l2d2ch:
	ret z			;2d2c	c8 	. 
	inc b			;2d2d	04 	. 
	and l			;2d2e	a5 	. 
	ret z			;2d2f	c8 	. 
	ld b,h			;2d30	44 	D 
	dec h			;2d31	25 	% 
	ld h,025h		;2d32	26 25 	& % 
	ld (l066fh),a		;2d34	32 6f 06 	2 o . 
	ld b,d			;2d37	42 	B 
	ld l,a			;2d38	6f 	o 
	ld b,049h		;2d39	06 49 	. I 
	inc h			;2d3b	24 	$ 
	ld e,h			;2d3c	5c 	\ 
	rst 8			;2d3d	cf 	. 
	inc h			;2d3e	24 	$ 
	add hl,hl			;2d3f	29 	) 
	ld e,c			;2d40	59 	Y 
	dec de			;2d41	1b 	. 
	ld b,059h		;2d42	06 59 	. Y 
	jr nc,l2d4dh		;2d44	30 07 	0 . 
	ld e,h			;2d46	5c 	\ 
	ld c,b			;2d47	48 	H 
	dec bc			;2d48	0b 	. 
	ld e,(hl)			;2d49	5e 	^ 
	jr nc,l2d53h		;2d4a	30 07 	0 . 
	ld e,a			;2d4c	5f 	_ 
l2d4dh:
	inc h			;2d4d	24 	$ 
	inc c			;2d4e	0c 	. 
	ld h,e			;2d4f	63 	c 
	ld c,b			;2d50	48 	H 
	ld c,l			;2d51	4d 	M 
	ex (sp),hl			;2d52	e3 	. 
l2d53h:
	cp b			;2d53	b8 	. 
	ld l,063h		;2d54	2e 63 	. c 
	jr c,l2da6h		;2d56	38 4e 	8 N 
	ld h,(hl)			;2d58	66 	f 
	jr c,l2d89h		;2d59	38 2e 	8 . 
	ld l,c			;2d5b	69 	i 
	ld c,b			;2d5c	48 	H 
	ld bc,04875h		;2d5d	01 75 48 	. u H 
	ld bc,0a6fbh		;2d60	01 fb a6 	. . . 
	dec h			;2d63	25 	% 
	ld a,e			;2d64	7b 	{ 
	ld h,045h		;2d65	26 45 	& E 
	ld a,h			;2d67	7c 	| 
	jr nc,$+5		;2d68	30 03 	0 . 
	ld a,a			;2d6a	7f 	 
	ld bc,l0e28h		;2d6b	01 28 0e 	. ( . 
	ld bc,l1d28h		;2d6e	01 28 1d 	. ( . 
	inc de			;2d71	13 	. 
	inc (hl)			;2d72	34 	4 
	dec b			;2d73	05 	. 
	jr l2dbeh		;2d74	18 48 	. H 
	rrca			;2d76	0f 	. 
	dec de			;2d77	1b 	. 
	ld b,h			;2d78	44 	D 
	ld bc,0451fh		;2d79	01 1f 45 	. . E 
	jr z,l2d9fh		;2d7c	28 21 	( ! 
	ld b,a			;2d7e	47 	G 
	jr nc,$+40		;2d7f	30 26 	0 & 
	ld b,l			;2d81	45 	E 
	jr z,l2d2ch		;2d82	28 a8 	( . 
	rst 0			;2d84	c7 	. 
	jr nc,l2dafh		;2d85	30 28 	0 ( 
	ld b,a			;2d87	47 	G 
	ld d,b			;2d88	50 	P 
l2d89h:
	dec hl			;2d89	2b 	+ 
	ld c,b			;2d8a	48 	H 
	inc h			;2d8b	24 	$ 
	ld (hl),048h		;2d8c	36 48 	6 H 
	nop			;2d8e	00 	. 
	jr c,l2dc5h		;2d8f	38 34 	8 4 
	ld d,c			;2d91	51 	Q 
	cp d			;2d92	ba 	. 
	ld c,b			;2d93	48 	H 
	rrca			;2d94	0f 	. 
	cp d			;2d95	ba 	. 
	ld c,b			;2d96	48 	H 
	cpl			;2d97	2f 	/ 
	ld b,e			;2d98	43 	C 
	jr nz,l2da0h		;2d99	20 05 	  . 
	ld b,a			;2d9b	47 	G 
	ld c,b			;2d9c	48 	H 
	nop			;2d9d	00 	. 
	ld c,c			;2d9e	49 	I 
l2d9fh:
	ld b,b			;2d9f	40 	@ 
l2da0h:
	ld h,0c9h		;2da0	26 c9 	& . 
	and l			;2da2	a5 	. 
	ld (de),a			;2da3	12 	. 
	ret			;2da4	c9 	. 
	and l			;2da5	a5 	. 
l2da6h:
	ld (l2549h),a		;2da6	32 49 25 	2 I % 
	ld d,d			;2da9	52 	R 
	ld c,e			;2daa	4b 	K 
	ld b,b			;2dab	40 	@ 
	ld (bc),a			;2dac	02 	. 
	ld c,e			;2dad	4b 	K 
	ld b,b			;2dae	40 	@ 
l2dafh:
	ld b,(hl)			;2daf	46 	F 
	ld c,e			;2db0	4b 	K 
	ld b,b			;2db1	40 	@ 
	ld b,d			;2db2	42 	B 
	ld c,e			;2db3	4b 	K 
	dec h			;2db4	25 	% 
	jr z,l2e05h		;2db5	28 4e 	( N 
	dec h			;2db7	25 	% 
	ld (de),a			;2db8	12 	. 
	ld d,b			;2db9	50 	P 
	dec h			;2dba	25 	% 
	ld (de),a			;2dbb	12 	. 
	ld d,e			;2dbc	53 	S 
	and l			;2dbd	a5 	. 
l2dbeh:
	jr z,l2e16h		;2dbe	28 56 	( V 
	dec h			;2dc0	25 	% 
	ld (l2a5bh),a		;2dc1	32 5b 2a 	2 [ * 
	ld c,b			;2dc4	48 	H 
l2dc5h:
	ld e,h			;2dc5	5c 	\ 
	ld d,b			;2dc6	50 	P 
	ld a,(bc)			;2dc7	0a 	. 
	ld h,d			;2dc8	62 	b 
l2dc9h:
	dec (hl)			;2dc9	35 	5 
	add hl,bc			;2dca	09 	. 
	ld h,(hl)			;2dcb	66 	f 
	or l			;2dcc	b5 	. 
	add hl,bc			;2dcd	09 	. 
	call pe,01c58h		;2dce	ec 58 1c 	. X . 
	call pe,sub_2058h		;2dd1	ec 58 20 	. X   
	call pe,04058h		;2dd4	ec 58 40 	. X @ 
	xor 0b5h		;2dd7	ee b5 	. . 
	jr z,l2dc9h		;2dd9	28 ee 	( . 
	dec (hl)			;2ddb	35 	5 
	ld d,e			;2ddc	53 	S 
	call p,sub_1135h		;2ddd	f4 35 11 	. 5 . 
l2de0h:
	call p,03135h		;2de0	f4 35 31 	. 5 1 
	ld (hl),h			;2de3	74 	t 
	scf			;2de4	37 	7 
	inc (hl)			;2de5	34 	4 
	ld a,b			;2de6	78 	x 
	scf			;2de7	37 	7 
	inc d			;2de8	14 	. 
	ld a,e			;2de9	7b 	{ 
	scf			;2dea	37 	7 
	dec de			;2deb	1b 	. 
	ld a,a			;2dec	7f 	 
	ld bc,l163ah		;2ded	01 3a 16 	. : . 
	inc c			;2df0	0c 	. 
	ld d,d			;2df1	52 	R 
	scf			;2df2	37 	7 
	ld (de),a			;2df3	12 	. 
	dec e			;2df4	1d 	. 
	ld b,09eh		;2df5	06 9e 	. . 
	push bc			;2df7	c5 	. 
	inc l			;2df8	2c 	, 
	ld e,045h		;2df9	1e 45 	. E 
	ld c,h			;2dfb	4c 	L 
	daa			;2dfc	27 	' 
	ld e,b			;2dfd	58 	X 
	ld bc,0b5a9h		;2dfe	01 a9 b5 	. . . 
	inc sp			;2e01	33 	3 
	add hl,hl			;2e02	29 	) 
	dec (hl)			;2e03	35 	5 
	ld d,e			;2e04	53 	S 
l2e05h:
	dec hl			;2e05	2b 	+ 
	dec (hl)			;2e06	35 	5 
	inc sp			;2e07	33 	3 
	ld l,035h		;2e08	2e 35 	. 5 
	inc sp			;2e0a	33 	3 
	inc sp			;2e0b	33 	3 
	ld e,b			;2e0c	58 	X 
	ld bc,0503bh		;2e0d	01 3b 50 	. ; P 
	rlca			;2e10	07 	. 
	ccf			;2e11	3f 	? 
	or l			;2e12	b5 	. 
	jr l2e56h		;2e13	18 41 	. A 
	dec (hl)			;2e15	35 	5 
l2e16h:
	inc sp			;2e16	33 	3 
	ld b,h			;2e17	44 	D 
	inc (hl)			;2e18	34 	4 
	jr l2de0h		;2e19	18 c5 	. . 
	or (hl)			;2e1b	b6 	. 
	dec h			;2e1c	25 	% 
	ld b,l			;2e1d	45 	E 
	ld (hl),045h		;2e1e	36 45 	6 E 
	ld c,(hl)			;2e20	4e 	N 
	ld e,h			;2e21	5c 	\ 
	ld bc,04050h		;2e22	01 50 40 	. P @ 
	rlca			;2e25	07 	. 
	jp nc,l2925h		;2e26	d2 25 29 	. % ) 
l2e29h:
	ld d,h			;2e29	54 	T 
	dec h			;2e2a	25 	% 
	inc c			;2e2b	0c 	. 
	rst 10h			;2e2c	d7 	. 
	ld b,h			;2e2d	44 	D 
	add hl,sp			;2e2e	39 	9 
	in a,(040h)		;2e2f	db 40 	. @ 
	ld bc,040dbh		;2e31	01 db 40 	. . @ 
	ld b,c			;2e34	41 	A 
	ld h,a			;2e35	67 	g 
	ld e,d			;2e36	5a 	Z 
	ld b,072h		;2e37	06 72 	. r 
	jr nz,l2e41h		;2e39	20 06 	  . 
	ld (hl),l			;2e3b	75 	u 
	ld c,b			;2e3c	48 	H 
	dec bc			;2e3d	0b 	. 
	ld a,h			;2e3e	7c 	| 
	jr nc,l2e66h		;2e3f	30 25 	0 % 
l2e41h:
	ld a,a			;2e41	7f 	 
	ld bc,l1830h		;2e42	01 30 18 	. 0 . 
	ld de,l162ch		;2e45	11 2c 16 	. , . 
	sub h			;2e48	94 	. 
	ld d,b			;2e49	50 	P 
	rla			;2e4a	17 	. 
	ld a,(de)			;2e4b	1a 	. 
	ld d,b			;2e4c	50 	P 
	jr nz,$+44		;2e4d	20 2a 	  * 
	ld l,c			;2e4f	69 	i 
	dec b			;2e50	05 	. 
	inc l			;2e51	2c 	, 
	ld d,b			;2e52	50 	P 
	ld b,e			;2e53	43 	C 
	jr c,l2eb9h		;2e54	38 63 	8 c 
l2e56h:
	dec b			;2e56	05 	. 
	ld b,e			;2e57	43 	C 
	inc l			;2e58	2c 	, 
	add hl,bc			;2e59	09 	. 
	ld d,h			;2e5a	54 	T 
	ld l,l			;2e5b	6d 	m 
	dec b			;2e5c	05 	. 
	ld h,d			;2e5d	62 	b 
	ld hl,07005h		;2e5e	21 05 70 	! . p 
	inc h			;2e61	24 	$ 
	ex af,af'			;2e62	08 	. 
	ld a,b			;2e63	78 	x 
	daa			;2e64	27 	' 
	ld a,(de)			;2e65	1a 	. 
l2e66h:
	ld a,a			;2e66	7f 	 
	ld bc,l0030h		;2e67	01 30 00 	. 0 . 
	dec bc			;2e6a	0b 	. 
	inc l			;2e6b	2c 	, 
	ld bc,05413h		;2e6c	01 13 54 	. . T 
	ld (bc),a			;2e6f	02 	. 
	ld (de),a			;2e70	12 	. 
	ld (l1404h),a		;2e71	32 04 14 	2 . . 
	ld b,b			;2e74	40 	@ 
	inc bc			;2e75	03 	. 
	rla			;2e76	17 	. 
	ld a,(l1804h)		;2e77	3a 04 18 	: . . 
	ld c,b			;2e7a	48 	H 
	inc bc			;2e7b	03 	. 
	inc e			;2e7c	1c 	. 
	ld c,b			;2e7d	48 	H 
	inc bc			;2e7e	03 	. 
	sbc a,l			;2e7f	9d 	. 
	cp l			;2e80	bd 	. 
	inc b			;2e81	04 	. 
	sbc a,l			;2e82	9d 	. 
	cp l			;2e83	bd 	. 
	ld b,h			;2e84	44 	D 
	dec e			;2e85	1d 	. 
	dec a			;2e86	3d 	= 
	add a,h			;2e87	84 	. 
	and b			;2e88	a0 	. 
	ld e,h			;2e89	5c 	\ 
	ld b,d			;2e8a	42 	B 
	and b			;2e8b	a0 	. 
	ld e,h			;2e8c	5c 	\ 
	ld e,0a0h		;2e8d	1e a0 	. . 
	ld e,h			;2e8f	5c 	\ 
	sbc a,(hl)			;2e90	9e 	. 
	ld (l053dh),hl		;2e91	22 3d 05 	" = . 
	ld (04640h),hl		;2e94	22 40 46 	" @ F 
	inc hl			;2e97	23 	# 
	ld c,b			;2e98	48 	H 
	ld b,a			;2e99	47 	G 
	inc hl			;2e9a	23 	# 
	ld e,b			;2e9b	58 	X 
	adc a,c			;2e9c	89 	. 
	inc h			;2e9d	24 	$ 
	ld b,b			;2e9e	40 	@ 
	ld c,d			;2e9f	4a 	J 
	inc (hl)			;2ea0	34 	4 
	ld b,b			;2ea1	40 	@ 
	dec bc			;2ea2	0b 	. 
	dec (hl)			;2ea3	35 	5 
	ld c,b			;2ea4	48 	H 
	inc bc			;2ea5	03 	. 
	ld b,b			;2ea6	40 	@ 
	ld h,b			;2ea7	60 	` 
	inc c			;2ea8	0c 	. 
	ret z			;2ea9	c8 	. 
	ld e,b			;2eaa	58 	X 
	ld e,(hl)			;2eab	5e 	^ 
	ret z			;2eac	c8 	. 
	ld e,b			;2ead	58 	X 
	ld (bc),a			;2eae	02 	. 
	ret z			;2eaf	c8 	. 
	ld e,b			;2eb0	58 	X 
	add a,d			;2eb1	82 	. 
	ld c,c			;2eb2	49 	I 
	dec l			;2eb3	2d 	- 
	dec c			;2eb4	0d 	. 
	ld c,(hl)			;2eb5	4e 	N 
	dec l			;2eb6	2d 	- 
	ld b,h			;2eb7	44 	D 
	ld d,c			;2eb8	51 	Q 
l2eb9h:
	ld c,b			;2eb9	48 	H 
	ld (bc),a			;2eba	02 	. 
	pop de			;2ebb	d1 	. 
	sbc a,l			;2ebc	9d 	. 
	dec c			;2ebd	0d 	. 
	pop de			;2ebe	d1 	. 
	sbc a,l			;2ebf	9d 	. 
	ld c,l			;2ec0	4d 	M 
l2ec1h:
	pop de			;2ec1	d1 	. 
	dec e			;2ec2	1d 	. 
	adc a,l			;2ec3	8d 	. 
	ld d,e			;2ec4	53 	S 
	inc e			;2ec5	1c 	. 
	add a,h			;2ec6	84 	. 
	ld d,e			;2ec7	53 	S 
	ld b,b			;2ec8	40 	@ 
	ld c,b			;2ec9	48 	H 
	ld d,h			;2eca	54 	T 
	ld b,b			;2ecb	40 	@ 
	adc a,b			;2ecc	88 	. 
	ld h,h			;2ecd	64 	d 
	rrca			;2ece	0f 	. 
	dec bc			;2ecf	0b 	. 
	push hl			;2ed0	e5 	. 
	inc e			;2ed1	1c 	. 
	inc e			;2ed2	1c 	. 
	ld h,l			;2ed3	65 	e 
	inc e			;2ed4	1c 	. 
	ld b,h			;2ed5	44 	D 
	ld h,(hl)			;2ed6	66 	f 
	ld b,b			;2ed7	40 	@ 
	inc bc			;2ed8	03 	. 
	ld l,h			;2ed9	6c 	l 
	ld e,b			;2eda	58 	X 
	inc bc			;2edb	03 	. 
	defb 0edh;next byte illegal after ed		;2edc	ed 	. 
	call z,0744dh		;2edd	cc 4d 74 	. M t 
	ld d,h			;2ee0	54 	T 
	inc c			;2ee1	0c 	. 
	ld (hl),l			;2ee2	75 	u 
	ld d,b			;2ee3	50 	P 
	ex af,af'			;2ee4	08 	. 
	ret m			;2ee5	f8 	. 
	inc l			;2ee6	2c 	, 
	ld de,05079h		;2ee7	11 79 50 	. y P 
	ex af,af'			;2eea	08 	. 
	ld a,a			;2eeb	7f 	 
	ld bc,l1230h		;2eec	01 30 12 	. 0 . 
	inc d			;2eef	14 	. 
	rrca			;2ef0	0f 	. 
	dec bc			;2ef1	0b 	. 
	inc e			;2ef2	1c 	. 
	ld c,h			;2ef3	4c 	L 
	inc de			;2ef4	13 	. 
	inc hl			;2ef5	23 	# 
	ld e,b			;2ef6	58 	X 
	inc bc			;2ef7	03 	. 
	dec hl			;2ef8	2b 	+ 
	ld e,h			;2ef9	5c 	\ 
	ld (bc),a			;2efa	02 	. 
	xor l			;2efb	ad 	. 
	cp l			;2efc	bd 	. 
	ld b,h			;2efd	44 	D 
	dec l			;2efe	2d 	- 
	dec a			;2eff	3d 	= 
	add a,h			;2f00	84 	. 
	ld l,03ch		;2f01	2e 3c 	. < 
	dec c			;2f03	0d 	. 
	jr nc,l2f33h		;2f04	30 2d 	0 - 
	sub h			;2f06	94 	. 
	jr nc,l2f59h		;2f07	30 50 	0 P 
	inc bc			;2f09	03 	. 
	or (hl)			;2f0a	b6 	. 
	cp b			;2f0b	b8 	. 
	inc b			;2f0c	04 	. 
	or (hl)			;2f0d	b6 	. 
	cp b			;2f0e	b8 	. 
	ld b,h			;2f0f	44 	D 
	ld (hl),038h		;2f10	36 38 	6 8 
	add a,h			;2f12	84 	. 
	jr c,l2ec1h		;2f13	38 ac 	8 . 
	dec c			;2f15	0d 	. 
	cp b			;2f16	b8 	. 
	xor h			;2f17	ac 	. 
	ld c,l			;2f18	4d 	M 
	jr c,l2f47h		;2f19	38 2c 	8 , 
	adc a,l			;2f1b	8d 	. 
	ld b,b			;2f1c	40 	@ 
	ld c,b			;2f1d	48 	H 
	inc bc			;2f1e	03 	. 
	ld d,h			;2f1f	54 	T 
	ld (hl),d			;2f20	72 	r 
	dec bc			;2f21	0b 	. 
	ld d,a			;2f22	57 	W 
	jr c,l2f27h		;2f23	38 02 	8 . 
	ld d,a			;2f25	57 	W 
	ld c,b			;2f26	48 	H 
l2f27h:
	inc bc			;2f27	03 	. 
	ld h,h			;2f28	64 	d 
	ld (06d16h),a		;2f29	32 16 6d 	2 . m 
	ld (0f516h),a		;2f2c	32 16 f5 	2 . . 
	dec l			;2f2f	2d 	- 
	ld e,h			;2f30	5c 	\ 
	push af			;2f31	f5 	. 
	dec l			;2f32	2d 	- 
l2f33h:
	inc b			;2f33	04 	. 
	push af			;2f34	f5 	. 
	dec l			;2f35	2d 	- 
	add a,h			;2f36	84 	. 
	ld a,a			;2f37	7f 	 
	ld bc,l1730h		;2f38	01 30 17 	. 0 . 
	adc a,b			;2f3b	88 	. 
	jr c,$+26		;2f3c	38 18 	8 . 
	add hl,bc			;2f3e	09 	. 
	inc l			;2f3f	2c 	, 
	add hl,de			;2f40	19 	. 
	ld (de),a			;2f41	12 	. 
	dec (hl)			;2f42	35 	5 
	dec bc			;2f43	0b 	. 
	ld (l0b32h),a		;2f44	32 32 0b 	2 2 . 
l2f47h:
	scf			;2f47	37 	7 
	ld d,b			;2f48	50 	P 
	adc a,b			;2f49	88 	. 
	ld b,h			;2f4a	44 	D 
	ld (0550bh),a		;2f4b	32 0b 55 	2 . U 
	ld (hl),b			;2f4e	70 	p 
	dec bc			;2f4f	0b 	. 
	ld e,b			;2f50	58 	X 
	ld d,b			;2f51	50 	P 
	ld c,b			;2f52	48 	H 
	ld h,h			;2f53	64 	d 
	ld hl,06c0bh		;2f54	21 0b 6c 	! . l 
	ld h,b			;2f57	60 	` 
	ld (bc),a			;2f58	02 	. 
l2f59h:
	ld (hl),c			;2f59	71 	q 
	ld b,h			;2f5a	44 	D 
	inc bc			;2f5b	03 	. 
	ld a,a			;2f5c	7f 	 
	ld bc,l1a3fh		;2f5d	01 3f 1a 	. ? . 
	adc a,c			;2f60	89 	. 
	xor l			;2f61	ad 	. 
	dec b			;2f62	05 	. 
	adc a,c			;2f63	89 	. 
	xor l			;2f64	ad 	. 
	ld b,l			;2f65	45 	E 
	add hl,bc			;2f66	09 	. 
	dec l			;2f67	2d 	- 
	add a,l			;2f68	85 	. 
	ld c,030h		;2f69	0e 30 	. 0 
	jr l2f7ch		;2f6b	18 0f 	. . 
	dec a			;2f6d	3d 	= 
	dec b			;2f6e	05 	. 
	dec d			;2f6f	15 	. 
	ld a,01dh		;2f70	3e 1d 	> . 
	sub a			;2f72	97 	. 
	ccf			;2f73	3f 	? 
	dec b			;2f74	05 	. 
	sub a			;2f75	97 	. 
	ccf			;2f76	3f 	? 
	ld b,l			;2f77	45 	E 
	sub (hl)			;2f78	96 	. 
	ccf			;2f79	3f 	? 
	sbc a,e			;2f7a	9b 	. 
	rra			;2f7b	1f 	. 
l2f7ch:
	ld c,l			;2f7c	4d 	M 
	dec b			;2f7d	05 	. 
	inc l			;2f7e	2c 	, 
	ld b,h			;2f7f	44 	D 
	dec bc			;2f80	0b 	. 
	inc a			;2f81	3c 	< 
	ld d,b			;2f82	50 	P 
	adc a,b			;2f83	88 	. 
	ld c,h			;2f84	4c 	L 
	ld b,h			;2f85	44 	D 
	dec bc			;2f86	0b 	. 
	ld e,h			;2f87	5c 	\ 
	ld b,h			;2f88	44 	D 
	dec bc			;2f89	0b 	. 
	ld e,a			;2f8a	5f 	_ 
	ld d,b			;2f8b	50 	P 
	ex af,af'			;2f8c	08 	. 
	ld l,h			;2f8d	6c 	l 
	dec a			;2f8e	3d 	= 
	add a,l			;2f8f	85 	. 
	ld a,b			;2f90	78 	x 
	cpl			;2f91	2f 	/ 
	rra			;2f92	1f 	. 
	ld a,a			;2f93	7f 	 
	ld bc,l002ch		;2f94	01 2c 00 	. , . 
	rla			;2f97	17 	. 
	ld a,002h		;2f98	3e 02 	> . 
	sbc a,b			;2f9a	98 	. 
	ld b,b			;2f9b	40 	@ 
	ld (0581bh),hl		;2f9c	22 1b 58 	" . X 
	ld hl,l3c1eh		;2f9f	21 1e 3c 	! . < 
	inc b			;2fa2	04 	. 
	ld hl,l2540h		;2fa3	21 40 25 	! @ % 
	inc hl			;2fa6	23 	# 
	jr z,l2fafh		;2fa7	28 06 	( . 
	and a			;2fa9	a7 	. 
	jr z,$+59		;2faa	28 39 	( 9 
sub_2fach:
	and a			;2fac	a7 	. 
	jr z,$+9		;2fad	28 07 	( . 
l2fafh:
	and a			;2faf	a7 	. 
	jr z,l2ff9h		;2fb0	28 47 	( G 
	jr z,$+74		;2fb2	28 48 	( H 
	ld bc,028aah		;2fb4	01 aa 28 	. . ( 
	rlca			;2fb7	07 	. 
	xor e			;2fb8	ab 	. 
	xor b			;2fb9	a8 	. 
	ld h,02bh		;2fba	26 2b 	& + 
	jr z,$+73		;2fbc	28 47 	( G 
	inc l			;2fbe	2c 	, 
	ld c,b			;2fbf	48 	H 
	ld bc,048b0h		;2fc0	01 b0 48 	. . H 
	add hl,hl			;2fc3	29 	) 
	ld sp,00a39h		;2fc4	31 39 0a 	1 9 . 
	inc (hl)			;2fc7	34 	4 
	jr c,l3015h		;2fc8	38 4b 	8 K 
	scf			;2fca	37 	7 
	ld e,d			;2fcb	5a 	Z 
	add hl,bc			;2fcc	09 	. 
	add hl,sp			;2fcd	39 	9 
	ld e,d			;2fce	5a 	Z 
	add hl,bc			;2fcf	09 	. 
	inc a			;2fd0	3c 	< 
	ld e,d			;2fd1	5a 	Z 
	add hl,hl			;2fd2	29 	) 
	ld a,05ah		;2fd3	3e 5a 	> Z 
	ld c,c			;2fd5	49 	I 
	ccf			;2fd6	3f 	? 
	ld e,d			;2fd7	5a 	Z 
	add hl,hl			;2fd8	29 	) 
	ld b,c			;2fd9	41 	A 
	ld e,d			;2fda	5a 	Z 
	add hl,hl			;2fdb	29 	) 
	ld b,c			;2fdc	41 	A 
	ld b,(hl)			;2fdd	46 	F 
	ld c,e			;2fde	4b 	K 
	add a,048h		;2fdf	c6 48 	. H 
	add hl,bc			;2fe1	09 	. 
	ld b,(hl)			;2fe2	46 	F 
	ld c,b			;2fe3	48 	H 
	ld hl,0484ah		;2fe4	21 4a 48 	! J H 
	inc l			;2fe7	2c 	, 
	adc a,058h		;2fe8	ce 58 	. X 
	inc l			;2fea	2c 	, 
	ld c,(hl)			;2feb	4e 	N 
	ld e,b			;2fec	58 	X 
	ld c,c			;2fed	49 	I 
	ld d,c			;2fee	51 	Q 
	ld d,a			;2fef	57 	W 
	dec bc			;2ff0	0b 	. 
	ld d,d			;2ff1	52 	R 
	ld e,b			;2ff2	58 	X 
	ld (bc),a			;2ff3	02 	. 
	ld e,b			;2ff4	58 	X 
	ld h,b			;2ff5	60 	` 
	ld bc,0445ah		;2ff6	01 5a 44 	. Z D 
l2ff9h:
	dec hl			;2ff9	2b 	+ 
	call c,sub_3c58h		;2ffa	dc 58 3c 	. X < 
	ld e,h			;2ffd	5c 	\ 
	ld e,b			;2ffe	58 	X 
	ld b,c			;2fff	41 	A 
	cp (ix+007h)		;3000	dd be 07 	. . . 
	cp (ix+027h)		;3003	dd be 27 	. . ' 
	ld e,l			;3006	5d 	] 
	ccf			;3007	3f 	? 
	ld b,a			;3008	47 	G 
	rst 18h			;3009	df 	. 
	ld c,b			;300a	48 	H 
	add hl,hl			;300b	29 	) 
	rst 18h			;300c	df 	. 
	jp z,0df0bh		;300d	ca 0b df 	. . . 
	jp z,05f2bh		;3010	ca 2b 5f 	. + _ 
l3013h:
	ld c,d			;3013	4a 	J 
	ld c,e			;3014	4b 	K 
l3015h:
	rst 20h			;3015	e7 	. 
	ld c,e			;3016	4b 	K 
	daa			;3017	27 	' 
	ld h,a			;3018	67 	g 
	ld c,e			;3019	4b 	K 
	ld b,(hl)			;301a	46 	F 
	ret pe			;301b	e8 	. 
	ld c,c			;301c	49 	I 
	rlca			;301d	07 	. 
	ld l,c			;301e	69 	i 
	ld b,a			;301f	47 	G 
	rlca			;3020	07 	. 
	jp pe,l0158h		;3021	ea 58 01 	. X . 
	ld l,d			;3024	6a 	j 
	ld h,b			;3025	60 	` 
	ld b,c			;3026	41 	A 
	call pe,02dc3h		;3027	ec c3 2d 	. . - 
	ld l,h			;302a	6c 	l 
	ld b,e			;302b	43 	C 
	ld c,l			;302c	4d 	M 
	ld (hl),b			;302d	70 	p 
	add hl,hl			;302e	29 	) 
	daa			;302f	27 	' 
	ld a,b			;3030	78 	x 
l3031h:
	jr nc,$+7		;3031	30 05 	0 . 
	ld a,b			;3033	78 	x 
	jr c,l307dh		;3034	38 47 	8 G 
	jp m,l2240h		;3036	fa 40 22 	. @ " 
	ld a,a			;3039	7f 	 
	ld bc,l0e3ch		;303a	01 3c 0e 	. < . 
	ex af,af'			;303d	08 	. 
	ld b,b			;303e	40 	@ 
	ld c,a			;303f	4f 	O 
	adc a,h			;3040	8c 	. 
	ld sp,08c27h		;3041	31 27 8c 	1 ' . 
	ld sp,l0e5bh		;3044	31 5b 0e 	1 [ . 
	inc (hl)			;3047	34 	4 
	jr z,l3059h		;3048	28 0f 	( . 
	dec sp			;304a	3b 	; 
	jr nc,l305eh		;304b	30 11 	0 . 
	scf			;304d	37 	7 
	ld c,e			;304e	4b 	K 
	inc de			;304f	13 	. 
	ld b,e			;3050	43 	C 
	jr nc,l3068h		;3051	30 15 	0 . 
	ccf			;3053	3f 	? 
l3054h:
	ld c,e			;3054	4b 	K 
	jr l30a0h		;3055	18 49 	. I 
	jr nc,$+28		;3057	30 1a 	0 . 
l3059h:
	ld c,e			;3059	4b 	K 
	ld (bc),a			;305a	02 	. 
	inc e			;305b	1c 	. 
	ld c,b			;305c	48 	H 
	ld c,e			;305d	4b 	K 
l305eh:
	rra			;305e	1f 	. 
	ld e,b			;305f	58 	X 
	ld c,e			;3060	4b 	K 
	jr nz,l30bbh		;3061	20 58 	  X 
	jr nc,$+36		;3063	30 22 	0 " 
	ld d,l			;3065	55 	U 
	rlca			;3066	07 	. 
	inc h			;3067	24 	$ 
l3068h:
	ld d,c			;3068	51 	Q 
	ld b,025h		;3069	06 25 	. % 
	ld c,a			;306b	4f 	O 
	ld b,(hl)			;306c	46 	F 
	add hl,hl			;306d	29 	) 
	ld b,a			;306e	47 	G 
	ld b,0ach		;306f	06 ac 	. . 
	pop bc			;3071	c1 	. 
	ld h,02ch		;3072	26 2c 	& , 
	ld b,c			;3074	41 	A 
	ld b,(hl)			;3075	46 	F 
	or c			;3076	b1 	. 
	ld b,a			;3077	47 	G 
	dec de			;3078	1b 	. 
	or c			;3079	b1 	. 
	ld b,a			;307a	47 	G 
	daa			;307b	27 	' 
	or c			;307c	b1 	. 
l307dh:
	ld b,a			;307d	47 	G 
	ld b,a			;307e	47 	G 
	jr c,$+75		;307f	38 49 	8 I 
	jr nc,l30bbh		;3081	30 38 	0 8 
	ld d,h			;3083	54 	T 
	rrca			;3084	0f 	. 
	ld a,(03045h)		;3085	3a 45 30 	: E 0 
	inc a			;3088	3c 	< 
	ld b,c			;3089	41 	A 
	jr nc,l30c8h		;308a	30 3c 	0 < 
	ld c,h			;308c	4c 	L 
l308dh:
	rrca			;308d	0f 	. 
	ld a,041h		;308e	3e 41 	> A 
	jr nc,l3054h		;3090	30 c2 	0 . 
	ret nc			;3092	d0 	. 
	dec hl			;3093	2b 	+ 
	ld b,d			;3094	42 	B 
	ld d,b			;3095	50 	P 
	ld c,e			;3096	4b 	K 
	ld b,l			;3097	45 	E 
	ld b,b			;3098	40 	@ 
	dec hl			;3099	2b 	+ 
	ld c,a			;309a	4f 	O 
	dec l			;309b	2d 	- 
	inc b			;309c	04 	. 
	ld d,e			;309d	53 	S 
	jr nc,l30c7h		;309e	30 27 	0 ' 
l30a0h:
	ld d,h			;30a0	54 	T 
	ld (0570dh),a		;30a1	32 0d 57 	2 . W 
	jr nc,$+41		;30a4	30 27 	0 ' 
	ret c			;30a6	d8 	. 
	ld (0580dh),a		;30a7	32 0d 58 	2 . X 
	jr nc,$+73		;30aa	30 47 	0 G 
	ret c			;30ac	d8 	. 
	or d			;30ad	b2 	. 
	dec l			;30ae	2d 	- 
	in a,(0b8h)		;30af	db b8 	. . 
	dec c			;30b1	0d 	. 
	in a,(0b8h)		;30b2	db b8 	. . 
	dec l			;30b4	2d 	- 
	ld e,e			;30b5	5b 	[ 
	jr c,$+79		;30b6	38 4d 	8 M 
	ld e,(hl)			;30b8	5e 	^ 
	dec sp			;30b9	3b 	; 
	daa			;30ba	27 	' 
l30bbh:
	ld (hl),d			;30bb	72 	r 
l30bch:
	ld l,034h		;30bc	2e 34 	. 4 
	call p,sub_0f40h		;30be	f4 40 0f 	. @ . 
	ld (hl),h			;30c1	74 	t 
	ld b,d			;30c2	42 	B 
	inc d			;30c3	14 	. 
	rst 30h			;30c4	f7 	. 
	ld b,d			;30c5	42 	B 
	inc d			;30c6	14 	. 
l30c7h:
	ld a,b			;30c7	78 	x 
l30c8h:
	ld b,b			;30c8	40 	@ 
	jr nc,l314ah		;30c9	30 7f 	0  
	ld bc,l1544h		;30cb	01 44 15 	. D . 
	sub c			;30ce	91 	. 
	ld b,h			;30cf	44 	D 
	jr z,$-108		;30d0	28 92 	( . 
	ld b,e			;30d2	43 	C 
	ld b,0a5h		;30d3	06 a5 	. . 
	ld c,c			;30d5	49 	I 
	inc b			;30d6	04 	. 
	dec h			;30d7	25 	% 
	ld c,c			;30d8	49 	I 
	ld e,d			;30d9	5a 	Z 
	and l			;30da	a5 	. 
	ld c,c			;30db	49 	I 
	inc h			;30dc	24 	$ 
	jr z,$+50		;30dd	28 30 	( 0 
	jr nc,l310bh		;30df	30 2a 	0 * 
	inc (hl)			;30e1	34 	4 
	jr nc,$-83		;30e2	30 ab 	0 . 
	add a,030h		;30e4	c6 30 	. 0 
	dec hl			;30e6	2b 	+ 
	ld b,(hl)			;30e7	46 	F 
	ld d,b			;30e8	50 	P 
	ld l,04bh		;30e9	2e 4b 	. K 
	rlca			;30eb	07 	. 
	jr nc,l311eh		;30ec	30 30 	0 0 
	jr nc,$+52		;30ee	30 32 	0 2 
	jr nc,$+50		;30f0	30 30 	0 0 
	ld (l015ch),a		;30f2	32 5c 01 	2 \ . 
	inc sp			;30f5	33 	3 
	ld b,b			;30f6	40 	@ 
	ld d,b			;30f7	50 	P 
	ld (hl),040h		;30f8	36 40 	6 @ 
	rlca			;30fa	07 	. 
	jr c,l312dh		;30fb	38 30 	8 0 
	jr nc,l3139h		;30fd	30 3a 	0 : 
	inc (hl)			;30ff	34 	4 
	jr nc,l313ch		;3100	30 3a 	0 : 
	ld e,b			;3102	58 	X 
	ld bc,04b3eh		;3103	01 3e 4b 	. > K 
	rlca			;3106	07 	. 
	ccf			;3107	3f 	? 
	ld l,030h		;3108	2e 30 	. 0 
	ld b,b			;310a	40 	@ 
l310bh:
	jr nc,$+50		;310b	30 30 	0 0 
	ld b,c			;310d	41 	A 
	ld sp,0c330h		;310e	31 30 c3 	1 0 . 
	ret nz			;3111	c0 	. 
	jr nc,$+69		;3112	30 43 	0 C 
	ld b,b			;3114	40 	@ 
	ld d,b			;3115	50 	P 
	ld b,(hl)			;3116	46 	F 
	ld b,b			;3117	40 	@ 
	rlca			;3118	07 	. 
	ld c,d			;3119	4a 	J 
	ld c,h			;311a	4c 	L 
	ld bc,l284ch		;311b	01 4c 28 	. L ( 
l311eh:
	jr nc,l316eh		;311e	30 4e 	0 N 
	inc l			;3120	2c 	, 
	jr nc,$+81		;3121	30 4f 	0 O 
	dec a			;3123	3d 	= 
	daa			;3124	27 	' 
	ret nc			;3125	d0 	. 
	ccf			;3126	3f 	? 
	ld b,056h		;3127	06 56 	. V 
	ld d,h			;3129	54 	T 
	ld bc,l3c55h		;312a	01 55 3c 	. U < 
l312dh:
	djnz $+89		;312d	10 57 	. W 
	ld a,010h		;312f	3e 10 	> . 
	jp c,l2643h		;3131	da 43 26 	. C & 
	call c,sub_0358h		;3134	dc 58 03 	. X . 
	ld h,a			;3137	67 	g 
	ld e,b			;3138	58 	X 
l3139h:
	ld bc,0486bh		;3139	01 6b 48 	. k H 
l313ch:
	ld bc,043eeh		;313c	01 ee 43 	. . C 
	ld b,06fh		;313f	06 6f 	. o 
	ld a,(0f501h)		;3141	3a 01 f5 	: . . 
	jr c,$+18		;3144	38 10 	8 . 
	ld sp,hl			;3146	f9 	. 
	add hl,hl			;3147	29 	) 
	daa			;3148	27 	' 
	ld a,a			;3149	7f 	 
l314ah:
	nop			;314a	00 	. 
	dec sp			;314b	3b 	; 
	ld d,009h		;314c	16 09 	. . 
	ld l,037h		;314e	2e 37 	. 7 
	ld de,l372fh+1		;3150	11 30 37 	. 0 7 
	sub e			;3153	93 	. 
	ld h,b			;3154	60 	` 
	ld bc,05096h		;3155	01 96 50 	. . P 
	add hl,bc			;3158	09 	. 
	add hl,de			;3159	19 	. 
	ld l,037h		;315a	2e 37 	. 7 
	sbc a,b			;315c	98 	. 
	ld d,h			;315d	54 	T 
	ld bc,0609eh		;315e	01 9e 60 	. . ` 
	inc c			;3161	0c 	. 
	ld hl,l372fh		;3162	21 2f 37 	! / 7 
	and e			;3165	a3 	. 
	ld h,b			;3166	60 	` 
	ld bc,050a4h		;3167	01 a4 50 	. . P 
	add hl,bc			;316a	09 	. 
	and (hl)			;316b	a6 	. 
	ld d,b			;316c	50 	P 
	add hl,bc			;316d	09 	. 
l316eh:
	xor b			;316e	a8 	. 
	ld d,h			;316f	54 	T 
	ld bc,l2e29h		;3170	01 29 2e 	. ) . 
	scf			;3173	37 	7 
	xor (hl)			;3174	ae 	. 
	ld d,b			;3175	50 	P 
	add hl,bc			;3176	09 	. 
	xor (hl)			;3177	ae 	. 
	ld b,b			;3178	40 	@ 
	inc c			;3179	0c 	. 
	or b			;317a	b0 	. 
	ld b,h			;317b	44 	D 
	ld bc,l3031h		;317c	01 31 30 	. 1 0 
	scf			;317f	37 	7 
	dec (hl)			;3180	35 	5 
	ld h,b			;3181	60 	` 
	ld e,b			;3182	58 	X 
	or (hl)			;3183	b6 	. 
	ld c,b			;3184	48 	H 
	ld h,036h		;3185	26 36 	& 6 
	ld c,b			;3187	48 	H 
	ld b,h			;3188	44 	D 
	cp b			;3189	b8 	. 
	ld b,h			;318a	44 	D 
	ld bc,l2639h		;318b	01 39 26 	. 9 & 
	scf			;318e	37 	7 
	ld b,l			;318f	45 	E 
	ld (hl),037h		;3190	36 37 	6 7 
	ld c,b			;3192	48 	H 
	jr z,l31bch		;3193	28 27 	( ' 
	ld c,d			;3195	4a 	J 
	jr z,l31bfh		;3196	28 27 	( ' 
	ld c,h			;3198	4c 	L 
	jr z,l31c2h		;3199	28 27 	( ' 
	ld c,(hl)			;319b	4e 	N 
	jr z,l31dbh		;319c	28 3d 	( = 
	ld c,a			;319e	4f 	O 
	jr c,l31ech		;319f	38 4b 	8 K 
	call nc,l0335h+1		;31a1	d4 36 03 	. 6 . 
	jp c,l30bch		;31a4	da bc 30 	. . 0 
	ld e,d			;31a7	5a 	Z 
	inc a			;31a8	3c 	< 
	ld d,b			;31a9	50 	P 
	defb 0ddh,058h,005h	;illegal sequence		;31aa	dd 58 05 	. X . 
	ld e,l			;31ad	5d 	] 
	ld e,b			;31ae	58 	X 
	ld b,l			;31af	45 	E 
	sbc a,0b0h		;31b0	de b0 	. . 
	jr nc,l3212h		;31b2	30 5e 	0 ^ 
	jr nc,l3206h		;31b4	30 50 	0 P 
	ld h,b			;31b6	60 	` 
	ld c,b			;31b7	48 	H 
	dec b			;31b8	05 	. 
	ld h,e			;31b9	63 	c 
	ld c,b			;31ba	48 	H 
	dec b			;31bb	05 	. 
l31bch:
	pop hl			;31bc	e1 	. 
	jr c,l31ceh		;31bd	38 0f 	8 . 
l31bfh:
	jp po,l0f38h		;31bf	e2 38 0f 	. 8 . 
l31c2h:
	ld h,d			;31c2	62 	b 
	jr nc,l3215h		;31c3	30 50 	0 P 
	ex de,hl			;31c5	eb 	. 
	dec sp			;31c6	3b 	; 
	djnz l3234h		;31c7	10 6b 	. k 
	ld a,(0734bh)		;31c9	3a 4b 73 	: K s 
	jr nc,l3219h		;31cc	30 4b 	0 K 
l31ceh:
	ld (hl),a			;31ce	77 	w 
	inc (hl)			;31cf	34 	4 
	ld (bc),a			;31d0	02 	. 
	ld a,e			;31d1	7b 	{ 
	ld (07f1eh),a		;31d2	32 1e 7f 	2 .  
	ld bc,l0028h		;31d5	01 28 00 	. ( . 
	sub l			;31d8	95 	. 
	ld b,b			;31d9	40 	@ 
	inc bc			;31da	03 	. 
l31dbh:
	sub l			;31db	95 	. 
	ld b,b			;31dc	40 	@ 
	sbc a,l			;31dd	9d 	. 
	rla			;31de	17 	. 
	ld e,(hl)			;31df	5e 	^ 
	jr $+32		;31e0	18 1e 	. . 
	inc (hl)			;31e2	34 	4 
l31e3h:
	inc b			;31e3	04 	. 
	jr nz,$-32		;31e4	20 de 	  . 
	jr l320ah		;31e6	18 22 	. " 
	ld h,08ch		;31e8	26 8c 	& . 
	inc h			;31ea	24 	$ 
	inc h			;31eb	24 	$ 
l31ech:
	add a,d			;31ec	82 	. 
	daa			;31ed	27 	' 
	ld h,08ch		;31ee	26 8c 	& . 
	jr z,l3232h		;31f0	28 40 	( @ 
	add hl,de			;31f2	19 	. 
	dec hl			;31f3	2b 	+ 
	ld e,(hl)			;31f4	5e 	^ 
	jr l322ah		;31f5	18 33 	. 3 
	ld b,b			;31f7	40 	@ 
	inc bc			;31f8	03 	. 
	inc (hl)			;31f9	34 	4 
	inc h			;31fa	24 	$ 
	ld (de),a			;31fb	12 	. 
	ld (hl),040h		;31fc	36 40 	6 @ 
	inc bc			;31fe	03 	. 
	ld (hl),024h		;31ff	36 24 	6 $ 
	sub d			;3201	92 	. 
	jr c,$+66		;3202	38 40 	8 @ 
	inc bc			;3204	03 	. 
	add hl,sp			;3205	39 	9 
l3206h:
	inc h			;3206	24 	$ 
	ld (de),a			;3207	12 	. 
	dec sp			;3208	3b 	; 
	ld e,(hl)			;3209	5e 	^ 
l320ah:
	sbc a,d			;320a	9a 	. 
	ld b,e			;320b	43 	C 
l320ch:
	sbc a,018h		;320c	de 18 	. . 
	ld b,e			;320e	43 	C 
	inc h			;320f	24 	$ 
	sub d			;3210	92 	. 
	ld b,l			;3211	45 	E 
l3212h:
	inc h			;3212	24 	$ 
	ld (de),a			;3213	12 	. 
	ld b,a			;3214	47 	G 
l3215h:
	ld e,(hl)			;3215	5e 	^ 
	sbc a,b			;3216	98 	. 
	ld c,c			;3217	49 	I 
	inc h			;3218	24 	$ 
l3219h:
	sub d			;3219	92 	. 
	ld c,e			;321a	4b 	K 
	inc h			;321b	24 	$ 
	ld (de),a			;321c	12 	. 
	ld c,e			;321d	4b 	K 
	sbc a,098h		;321e	de 98 	. . 
	ld c,(hl)			;3220	4e 	N 
	jr c,l3228h		;3221	38 05 	8 . 
	pop de			;3223	d1 	. 
	inc (hl)			;3224	34 	4 
	ld de,l3451h		;3225	11 51 34 	. Q 4 
l3228h:
	add a,(hl)			;3228	86 	. 
	ld d,h			;3229	54 	T 
l322ah:
	inc (hl)			;322a	34 	4 
	ld (de),a			;322b	12 	. 
	ld d,h			;322c	54 	T 
	ld c,b			;322d	48 	H 
	inc b			;322e	04 	. 
	ld e,e			;322f	5b 	[ 
	ld e,(hl)			;3230	5e 	^ 
	sbc a,b			;3231	98 	. 
l3232h:
	ld e,l			;3232	5d 	] 
	inc (hl)			;3233	34 	4 
l3234h:
	add a,a			;3234	87 	. 
	ld h,d			;3235	62 	b 
	ld c,h			;3236	4c 	L 
	dec b			;3237	05 	. 
	ld h,d			;3238	62 	b 
	inc h			;3239	24 	$ 
	sub d			;323a	92 	. 
	ld h,(hl)			;323b	66 	f 
	ld c,b			;323c	48 	H 
	dec b			;323d	05 	. 
	ld l,h			;323e	6c 	l 
	inc (hl)			;323f	34 	4 
	ld (de),a			;3240	12 	. 
	ld (hl),b			;3241	70 	p 
	call c,07218h		;3242	dc 18 72 	. . r 
	inc h			;3245	24 	$ 
	ld (de),a			;3246	12 	. 
	ld (hl),h			;3247	74 	t 
	inc h			;3248	24 	$ 
	ld (de),a			;3249	12 	. 
	ld a,b			;324a	78 	x 
	jr nc,l31e3h		;324b	30 96 	0 . 
	ld a,b			;324d	78 	x 
	ld l,h			;324e	6c 	l 
	jr l32cdh		;324f	18 7c 	. | 
	ld d,b			;3251	50 	P 
	dec b			;3252	05 	. 
	ld a,a			;3253	7f 	 
	ld bc,l0138h		;3254	01 38 01 	. 8 . 
	ld de,08ea5h		;3257	11 a5 8e 	. . . 
	inc de			;325a	13 	. 
	ld e,l			;325b	5d 	] 
	ld a,(de)			;325c	1a 	. 
	ld d,050h		;325d	16 50 	. P 
	inc bc			;325f	03 	. 
	inc e			;3260	1c 	. 
	ld e,l			;3261	5d 	] 
	ld a,(de)			;3262	1a 	. 
	jr nz,l3289h		;3263	20 24 	  $ 
	adc a,(hl)			;3265	8e 	. 
	inc hl			;3266	23 	# 
	ld e,l			;3267	5d 	] 
	ld a,(de)			;3268	1a 	. 
	inc h			;3269	24 	$ 
	inc h			;326a	24 	$ 
	adc a,(hl)			;326b	8e 	. 
	jr z,l3292h		;326c	28 24 	( $ 
	rlca			;326e	07 	. 
	inc l			;326f	2c 	, 
	and h			;3270	a4 	. 
	rlca			;3271	07 	. 
	xor h			;3272	ac 	. 
	ld b,b			;3273	40 	@ 
	add a,e			;3274	83 	. 
	dec l			;3275	2d 	- 
l3276h:
	jr z,l320ch		;3276	28 94 	( . 
	dec l			;3278	2d 	- 
	ld b,b			;3279	40 	@ 
	add hl,de			;327a	19 	. 
	xor a			;327b	af 	. 
	ld b,b			;327c	40 	@ 
	dec e			;327d	1d 	. 
	inc sp			;327e	33 	3 
	ld e,l			;327f	5d 	] 
	ld a,(de)			;3280	1a 	. 
	dec sp			;3281	3b 	; 
	inc h			;3282	24 	$ 
	ld b,0beh		;3283	06 be 	. . 
	inc h			;3285	24 	$ 
	ld (bc),a			;3286	02 	. 
	ld b,c			;3287	41 	A 
	ld b,b			;3288	40 	@ 
l3289h:
	inc bc			;3289	03 	. 
	ld b,h			;328a	44 	D 
	jr z,l3228h		;328b	28 9b 	( . 
	ld b,(hl)			;328d	46 	F 
	jr c,l3295h		;328e	38 05 	8 . 
	ld b,(hl)			;3290	46 	F 
	ld e,h			;3291	5c 	\ 
l3292h:
	sbc a,b			;3292	98 	. 
	ld c,l			;3293	4d 	M 
	or h			;3294	b4 	. 
l3295h:
	add a,a			;3295	87 	. 
	ld d,e			;3296	53 	S 
	ld c,b			;3297	48 	H 
	inc b			;3298	04 	. 
	exx			;3299	d9 	. 
	inc h			;329a	24 	$ 
	ld (de),a			;329b	12 	. 
	ld e,c			;329c	59 	Y 
	inc h			;329d	24 	$ 
	add a,a			;329e	87 	. 
	ld e,(hl)			;329f	5e 	^ 
	inc h			;32a0	24 	$ 
	sub c			;32a1	91 	. 
	ld (hl),e			;32a2	73 	s 
	ld l,d			;32a3	6a 	j 
	dec c			;32a4	0d 	. 
	ld a,h			;32a5	7c 	| 
	jr z,l32b8h		;32a6	28 10 	( . 
	ld a,a			;32a8	7f 	 
	ld bc,l0028h+1		;32a9	01 29 00 	. ) . 
	add hl,bc			;32ac	09 	. 
	dec (hl)			;32ad	35 	5 
	add a,(hl)			;32ae	86 	. 
	adc a,l			;32af	8d 	. 
	inc (hl)			;32b0	34 	4 
	djnz $-109		;32b1	10 91 	. . 
	inc (hl)			;32b3	34 	4 
	djnz l32c7h		;32b4	10 11 	. . 
	dec (hl)			;32b6	35 	5 
	add a,(hl)			;32b7	86 	. 
l32b8h:
	sbc a,c			;32b8	99 	. 
	ld b,e			;32b9	43 	C 
	ld c,019h		;32ba	0e 19 	. . 
	ld b,e			;32bc	43 	C 
	add a,a			;32bd	87 	. 
	ld l,030h		;32be	2e 30 	. 0 
	dec bc			;32c0	0b 	. 
	ld l,060h		;32c1	2e 60 	. ` 
	inc bc			;32c3	03 	. 
l32c4h:
	ld (hl),058h		;32c4	36 58 	6 X 
	inc d			;32c6	14 	. 
l32c7h:
	jr c,$+62		;32c7	38 3c 	8 < 
	sbc a,b			;32c9	98 	. 
	ld a,05dh		;32ca	3e 5d 	> ] 
	dec d			;32cc	15 	. 
l32cdh:
	ld c,l			;32cd	4d 	M 
	jr c,l32dfh		;32ce	38 0f 	8 . 
	ld d,c			;32d0	51 	Q 
	ld c,d			;32d1	4a 	J 
	sbc a,d			;32d2	9a 	. 
	ld d,l			;32d3	55 	U 
	jr c,l32e5h		;32d4	38 0f 	8 . 
	ld e,c			;32d6	59 	Y 
	ld c,c			;32d7	49 	I 
	sbc a,d			;32d8	9a 	. 
	ld e,l			;32d9	5d 	] 
	jr c,l32ebh		;32da	38 0f 	8 . 
	push hl			;32dc	e5 	. 
	ld b,b			;32dd	40 	@ 
	ld a,(bc)			;32de	0a 	. 
l32dfh:
	ld h,l			;32df	65 	e 
	jr c,l32f1h		;32e0	38 0f 	8 . 
	ret pe			;32e2	e8 	. 
	jr nz,l3276h		;32e3	20 91 	  . 
l32e5h:
	jp pe,l0b6eh		;32e5	ea 6e 0b 	. n . 
	ld l,a			;32e8	6f 	o 
	ld c,h			;32e9	4c 	L 
	sbc a,c			;32ea	99 	. 
l32ebh:
	ld (hl),c			;32eb	71 	q 
	inc e			;32ec	1c 	. 
	adc a,l			;32ed	8d 	. 
	ret p			;32ee	f0 	. 
	inc e			;32ef	1c 	. 
	rlca			;32f0	07 	. 
l32f1h:
	halt			;32f1	76 	v 
	ld e,l			;32f2	5d 	] 
	dec d			;32f3	15 	. 
	ld a,a			;32f4	7f 	 
	ld bc,l0130h		;32f5	01 30 01 	. 0 . 
	ld c,02ch		;32f8	0e 2c 	. , 
	djnz l3311h		;32fa	10 15 	. . 
	ld h,010h		;32fc	26 10 	& . 
	rla			;32fe	17 	. 
	ld c,b			;32ff	48 	H 
	adc a,c			;3300	89 	. 
	rla			;3301	17 	. 
	ld e,b			;3302	58 	X 
	inc bc			;3303	03 	. 
	ld e,024h		;3304	1e 24 	. $ 
	djnz l3327h		;3306	10 1f 	. . 
	ld c,b			;3308	48 	H 
	adc a,c			;3309	89 	. 
	rra			;330a	1f 	. 
	ld c,b			;330b	48 	H 
	inc bc			;330c	03 	. 
	ld h,034h		;330d	26 34 	& 4 
	djnz l3337h		;330f	10 26 	. & 
l3311h:
	ld e,b			;3311	58 	X 
	add hl,bc			;3312	09 	. 
	daa			;3313	27 	' 
	ld e,b			;3314	58 	X 
l3315h:
	inc bc			;3315	03 	. 
	xor b			;3316	a8 	. 
	inc h			;3317	24 	$ 
	djnz l32c4h		;3318	10 aa 	. . 
	inc h			;331a	24 	$ 
	djnz $+51		;331b	10 31 	. 1 
	jr nc,l3324h		;331d	30 05 	0 . 
	cp e			;331f	bb 	. 
	ld e,b			;3320	58 	X 
	ld a,(de)			;3321	1a 	. 
	ld (hl),044h		;3322	36 44 	6 D 
l3324h:
	adc a,h			;3324	8c 	. 
	ld a,044h		;3325	3e 44 	> D 
l3327h:
	adc a,h			;3327	8c 	. 
	ccf			;3328	3f 	? 
	ld l,h			;3329	6c 	l 
	sub l			;332a	95 	. 
	ld d,h			;332b	54 	T 
	ld c,b			;332c	48 	H 
	add a,h			;332d	84 	. 
	ld e,d			;332e	5a 	Z 
l332fh:
	ld b,b			;332f	40 	@ 
	inc b			;3330	04 	. 
	jp c,l1a4ch		;3331	da 4c 1a 	. L . 
l3334h:
	ld l,l			;3334	6d 	m 
	ld d,a			;3335	57 	W 
	dec bc			;3336	0b 	. 
l3337h:
	ld a,e			;3337	7b 	{ 
	ld h,01bh		;3338	26 1b 	& . 
	ld a,a			;333a	7f 	 
	ld bc,l002fh		;333b	01 2f 00 	. / . 
	inc c			;333e	0c 	. 
	inc l			;333f	2c 	, 
	ld bc,0ac8fh		;3340	01 8f ac 	. . . 
	ld (bc),a			;3343	02 	. 
	rrca			;3344	0f 	. 
	inc l			;3345	2c 	, 
	ld b,d			;3346	42 	B 
	ld (de),a			;3347	12 	. 
	inc l			;3348	2c 	, 
	ld (bc),a			;3349	02 	. 
	inc d			;334a	14 	. 
	ld d,b			;334b	50 	P 
	inc bc			;334c	03 	. 
	ld d,050h		;334d	16 50 	. P 
	inc b			;334f	04 	. 
	rla			;3350	17 	. 
	inc l			;3351	2c 	, 
	dec b			;3352	05 	. 
	ld a,(de)			;3353	1a 	. 
	xor h			;3354	ac 	. 
	ld b,01bh		;3355	06 1b 	. . 
	xor h			;3357	ac 	. 
	rla			;3358	17 	. 
	inc e			;3359	1c 	. 
	ld l,b			;335a	68 	h 
	ld e,d			;335b	5a 	Z 
	inc e			;335c	1c 	. 
	xor h			;335d	ac 	. 
	ld b,(hl)			;335e	46 	F 
	ld (l1848h),hl		;335f	22 48 18 	" H . 
	dec h			;3362	25 	% 
	ld d,h			;3363	54 	T 
	ld a,(bc)			;3364	0a 	. 
	jr z,l332fh		;3365	28 c8 	( . 
	add hl,bc			;3367	09 	. 
	xor c			;3368	a9 	. 
	call nc,sub_2909h		;3369	d4 09 29 	. . ) 
	ld d,h			;336c	54 	T 
	ld c,c			;336d	49 	I 
	dec hl			;336e	2b 	+ 
	ld d,h			;336f	54 	T 
	rlca			;3370	07 	. 
	dec (hl)			;3371	35 	5 
	ld e,b			;3372	58 	X 
	ex af,af'			;3373	08 	. 
	or l			;3374	b5 	. 
	ret z			;3375	c8 	. 
	add hl,bc			;3376	09 	. 
	dec (hl)			;3377	35 	5 
	ld c,b			;3378	48 	H 
	ld c,c			;3379	49 	I 
	ld (hl),054h		;337a	36 54 	6 T 
	add hl,bc			;337c	09 	. 
	scf			;337d	37 	7 
	ld e,b			;337e	58 	X 
	inc b			;337f	04 	. 
	or a			;3380	b7 	. 
	ret z			;3381	c8 	. 
	ld a,(bc)			;3382	0a 	. 
	scf			;3383	37 	7 
	ld c,b			;3384	48 	H 
	ld c,d			;3385	4a 	J 
	jr c,l33dch		;3386	38 54 	8 T 
	ld a,(bc)			;3388	0a 	. 
	ld a,(04954h)		;3389	3a 54 49 	: T I 
	dec sp			;338c	3b 	; 
	ret z			;338d	c8 	. 
	ld c,d			;338e	4a 	J 
	ld c,b			;338f	48 	H 
	xor h			;3390	ac 	. 
	ld (bc),a			;3391	02 	. 
	jp z,l1ae8h		;3392	ca e8 1a 	. . . 
	ld c,d			;3395	4a 	J 
	ld l,b			;3396	68 	h 
	ld e,d			;3397	5a 	Z 
	ld c,e			;3398	4b 	K 
	inc l			;3399	2c 	, 
	ld b,(hl)			;339a	46 	F 
	ld c,e			;339b	4b 	K 
	ld c,b			;339c	48 	H 
	rlca			;339d	07 	. 
	ld d,e			;339e	53 	S 
	ld l,01ch		;339f	2e 1c 	. . 
	ld d,l			;33a1	55 	U 
	ld l,00ch		;33a2	2e 0c 	. . 
	push de			;33a4	d5 	. 
	ld c,h			;33a5	4c 	L 
	dec c			;33a6	0d 	. 
	ld d,a			;33a7	57 	W 
	ld l,00ch		;33a8	2e 0c 	. . 
	ld e,d			;33aa	5a 	Z 
	ld l,00bh		;33ab	2e 0b 	. . 
	ld e,h			;33ad	5c 	\ 
	ld l,00ch		;33ae	2e 0c 	. . 
	ld h,a			;33b0	67 	g 
	jr c,l33bah		;33b1	38 07 	8 . 
	ld h,(hl)			;33b3	66 	f 
	ret nc			;33b4	d0 	. 
	ld c,d			;33b5	4a 	J 
	ld h,a			;33b6	67 	g 
	inc l			;33b7	2c 	, 
	ld b,(hl)			;33b8	46 	F 
	ld h,a			;33b9	67 	g 
l33bah:
	ret nz			;33ba	c0 	. 
	ld a,(bc)			;33bb	0a 	. 
	ld l,b			;33bc	68 	h 
	ld c,h			;33bd	4c 	L 
	add hl,bc			;33be	09 	. 
	ld l,d			;33bf	6a 	j 
	ld b,b			;33c0	40 	@ 
	add hl,bc			;33c1	09 	. 
	ld l,d			;33c2	6a 	j 
	call z,06c09h		;33c3	cc 09 6c 	. . l 
	ld b,b			;33c6	40 	@ 
	ld c,d			;33c7	4a 	J 
	ld l,h			;33c8	6c 	l 
	ld c,h			;33c9	4c 	L 
	ld c,c			;33ca	49 	I 
	ld l,(hl)			;33cb	6e 	n 
	ld b,b			;33cc	40 	@ 
	ld c,d			;33cd	4a 	J 
	ld l,a			;33ce	6f 	o 
	inc l			;33cf	2c 	, 
	ld b,d			;33d0	42 	B 
	ld (hl),c			;33d1	71 	q 
	jr c,l33ech		;33d2	38 18 	8 . 
	ld (hl),c			;33d4	71 	q 
	inc l			;33d5	2c 	, 
	ld b,(hl)			;33d6	46 	F 
	jp p,l1ae8h		;33d7	f2 e8 1a 	. . . 
	ld (hl),d			;33da	72 	r 
	ld l,b			;33db	68 	h 
l33dch:
	ld e,d			;33dc	5a 	Z 
	ld (hl),a			;33dd	77 	w 
	inc l			;33de	2c 	, 
	ld b,d			;33df	42 	B 
	ld a,d			;33e0	7a 	z 
	inc l			;33e1	2c 	, 
	ld b,(hl)			;33e2	46 	F 
	ld a,a			;33e3	7f 	 
	ld bc,l0f2dh+2		;33e4	01 2f 0f 	. / . 
	inc d			;33e7	14 	. 
	ld c,b			;33e8	48 	H 
	rlca			;33e9	07 	. 
	rla			;33ea	17 	. 
	ld e,h			;33eb	5c 	\ 
l33ech:
	djnz l3406h		;33ec	10 18 	. . 
	ld l,b			;33ee	68 	h 
	ld d,b			;33ef	50 	P 
	ld a,(de)			;33f0	1a 	. 
	ld e,h			;33f1	5c 	\ 
	ld d,b			;33f2	50 	P 
	dec de			;33f3	1b 	. 
	ld l,b			;33f4	68 	h 
	ld d,b			;33f5	50 	P 
	rra			;33f6	1f 	. 
	ld e,h			;33f7	5c 	\ 
	djnz l341bh		;33f8	10 21 	. ! 
	ld h,h			;33fa	64 	d 
	djnz $+37		;33fb	10 23 	. # 
	ret nc			;33fd	d0 	. 
	djnz l3425h		;33fe	10 25 	. % 
	ld e,h			;3400	5c 	\ 
	djnz l342ch		;3401	10 29 	. ) 
	ld b,b			;3403	40 	@ 
	jr l343ah		;3404	18 34 	. 4 
l3406h:
	jr c,$+26		;3406	38 18 	8 . 
	jr c,$+74		;3408	38 48 	8 H 
	ld a,(bc)			;340a	0a 	. 
	add hl,sp			;340b	39 	9 
	ld d,b			;340c	50 	P 
	add hl,bc			;340d	09 	. 
	ld a,(04a48h)		;340e	3a 48 4a 	: H J 
	dec sp			;3411	3b 	; 
	ld d,b			;3412	50 	P 
	ld c,c			;3413	49 	I 
	ld a,058h		;3414	3e 58 	> X 
	inc bc			;3416	03 	. 
	ld b,h			;3417	44 	D 
	ld c,b			;3418	48 	H 
	rlca			;3419	07 	. 
	ld b,h			;341a	44 	D 
l341bh:
	ld d,b			;341b	50 	P 
	ld d,b			;341c	50 	P 
	ld b,a			;341d	47 	G 
	ld d,h			;341e	54 	T 
	djnz l346ah		;341f	10 49 	. I 
	ld d,b			;3421	50 	P 
	djnz $+78		;3422	10 4c 	. L 
	ld e,b			;3424	58 	X 
l3425h:
	djnz l3474h		;3425	10 4d 	. M 
	ld c,b			;3427	48 	H 
	jr $+81		;3428	18 4f 	. O 
	ld b,h			;342a	44 	D 
	ld d,b			;342b	50 	P 
l342ch:
	ld d,d			;342c	52 	R 
	ld c,h			;342d	4c 	L 
	ld d,b			;342e	50 	P 
	ld d,h			;342f	54 	T 
	jr c,l344ah		;3430	38 18 	8 . 
	ld d,h			;3432	54 	T 
	ld c,b			;3433	48 	H 
	ld d,b			;3434	50 	P 
	ld d,(hl)			;3435	56 	V 
	ld d,b			;3436	50 	P 
	ld d,b			;3437	50 	P 
	ld e,b			;3438	58 	X 
	ld c,b			;3439	48 	H 
l343ah:
	ld d,b			;343a	50 	P 
	ld e,e			;343b	5b 	[ 
	ld d,b			;343c	50 	P 
	djnz l34a4h		;343d	10 65 	. e 
	ld e,b			;343f	58 	X 
	jr l342ch		;3440	18 ea 	. . 
	cp h			;3442	bc 	. 
	ld b,06ah		;3443	06 6a 	. j 
	inc a			;3445	3c 	< 
	ld b,(hl)			;3446	46 	F 
	ld l,l			;3447	6d 	m 
	ld c,b			;3448	48 	H 
	rlca			;3449	07 	. 
l344ah:
	ld (hl),b			;344a	70 	p 
	ld d,b			;344b	50 	P 
	inc bc			;344c	03 	. 
	ld a,b			;344d	78 	x 
	ld l,00ch		;344e	2e 0c 	. . 
	ld a,c			;3450	79 	y 
l3451h:
	ld l,00ch		;3451	2e 0c 	. . 
	ld a,e			;3453	7b 	{ 
	ld l,05ch		;3454	2e 5c 	. \ 
	ld a,l			;3456	7d 	} 
	ld l,b			;3457	68 	h 
	ld e,d			;3458	5a 	Z 
	ld a,a			;3459	7f 	 
	ld bc,l112fh		;345a	01 2f 11 	. / . 
	add hl,bc			;345d	09 	. 
	inc l			;345e	2c 	, 
	add hl,de			;345f	19 	. 
	dec c			;3460	0d 	. 
	inc l			;3461	2c 	, 
	ld (bc),a			;3462	02 	. 
	ld (de),a			;3463	12 	. 
	inc a			;3464	3c 	< 
	ld b,014h		;3465	06 14 	. . 
	ld d,h			;3467	54 	T 
	djnz $+23		;3468	10 15 	. . 
l346ah:
	ld c,b			;346a	48 	H 
	jr l3482h		;346b	18 15 	. . 
	ld c,b			;346d	48 	H 
	ld d,b			;346e	50 	P 
	ld d,054h		;346f	16 54 	. T 
	djnz l348dh		;3471	10 1a 	. . 
	inc l			;3473	2c 	, 
l3474h:
	ld b,01bh		;3474	06 1b 	. . 
	ld c,b			;3476	48 	H 
	rlca			;3477	07 	. 
	jr nz,l34e2h		;3478	20 68 	  h 
	ld a,(de)			;347a	1a 	. 
	inc h			;347b	24 	$ 
	ld l,00ch		;347c	2e 0c 	. . 
	ld h,02eh		;347e	26 2e 	& . 
	inc c			;3480	0c 	. 
	daa			;3481	27 	' 
l3482h:
	ld d,b			;3482	50 	P 
	inc bc			;3483	03 	. 
	dec l			;3484	2d 	- 
	ld l,00ch		;3485	2e 0c 	. . 
	cpl			;3487	2f 	/ 
	inc l			;3488	2c 	, 
	ld b,031h		;3489	06 31 	. 1 
	ld d,b			;348b	50 	P 
	ex af,af'			;348c	08 	. 
l348dh:
	ld sp,l022ch		;348d	31 2c 02 	1 , . 
	inc sp			;3490	33 	3 
	inc l			;3491	2c 	, 
	ld b,036h		;3492	06 36 	. 6 
	ld d,h			;3494	54 	T 
	ld c,c			;3495	49 	I 
	scf			;3496	37 	7 
	inc l			;3497	2c 	, 
	ld b,037h		;3498	06 37 	. 7 
	ld c,b			;349a	48 	H 
	add hl,bc			;349b	09 	. 
	jr c,l34f2h		;349c	38 54 	8 T 
	ld a,(bc)			;349e	0a 	. 
	ld a,(00738h)		;349f	3a 38 07 	: 8 . 
	add hl,sp			;34a2	39 	9 
	ld c,b			;34a3	48 	H 
l34a4h:
	ld a,(bc)			;34a4	0a 	. 
	dec sp			;34a5	3b 	; 
	ld d,h			;34a6	54 	T 
	ld c,c			;34a7	49 	I 
	inc a			;34a8	3c 	< 
	ld c,b			;34a9	48 	H 
	add hl,bc			;34aa	09 	. 
	ld b,b			;34ab	40 	@ 
	inc l			;34ac	2c 	, 
	dec b			;34ad	05 	. 
	ld b,e			;34ae	43 	C 
	inc l			;34af	2c 	, 
	ld b,044h		;34b0	06 44 	. D 
	jr c,l34bbh		;34b2	38 07 	8 . 
	ld b,a			;34b4	47 	G 
	inc l			;34b5	2c 	, 
	dec b			;34b6	05 	. 
	ld c,c			;34b7	49 	I 
	inc l			;34b8	2c 	, 
	ld b,04ah		;34b9	06 4a 	. J 
l34bbh:
	jr c,l34d5h		;34bb	38 18 	8 . 
	ld c,h			;34bd	4c 	L 
	ld l,b			;34be	68 	h 
	push de			;34bf	d5 	. 
	ld d,c			;34c0	51 	Q 
	inc a			;34c1	3c 	< 
	ld (bc),a			;34c2	02 	. 
	ld d,d			;34c3	52 	R 
	ld c,b			;34c4	48 	H 
	rlca			;34c5	07 	. 
	ld d,h			;34c6	54 	T 
	inc a			;34c7	3c 	< 
	ld b,055h		;34c8	06 55 	. U 
	ld c,b			;34ca	48 	H 
	add hl,bc			;34cb	09 	. 
	ld d,(hl)			;34cc	56 	V 
	ld d,h			;34cd	54 	T 
	ld a,(bc)			;34ce	0a 	. 
	ld d,a			;34cf	57 	W 
	ld c,b			;34d0	48 	H 
	add hl,bc			;34d1	09 	. 
	ld e,b			;34d2	58 	X 
	ld d,h			;34d3	54 	T 
	ld a,(bc)			;34d4	0a 	. 
l34d5h:
	ld e,c			;34d5	59 	Y 
	inc l			;34d6	2c 	, 
	ld (bc),a			;34d7	02 	. 
	ld e,d			;34d8	5a 	Z 
	ld c,b			;34d9	48 	H 
	ld c,d			;34da	4a 	J 
	ld e,e			;34db	5b 	[ 
	ld d,h			;34dc	54 	T 
	ld c,c			;34dd	49 	I 
	ld h,c			;34de	61 	a 
	inc (hl)			;34df	34 	4 
	ld (bc),a			;34e0	02 	. 
	ld h,e			;34e1	63 	c 
l34e2h:
	ld b,b			;34e2	40 	@ 
	ld c,d			;34e3	4a 	J 
	ld h,l			;34e4	65 	e 
	ld c,h			;34e5	4c 	L 
	ld a,(bc)			;34e6	0a 	. 
	ld h,(hl)			;34e7	66 	f 
	ld b,b			;34e8	40 	@ 
	add hl,bc			;34e9	09 	. 
	ld h,a			;34ea	67 	g 
	ld c,h			;34eb	4c 	L 
	add hl,bc			;34ec	09 	. 
	ld l,c			;34ed	69 	i 
	inc a			;34ee	3c 	< 
	ld (bc),a			;34ef	02 	. 
	ld l,e			;34f0	6b 	k 
	ld h,b			;34f1	60 	` 
l34f2h:
	ex af,af'			;34f2	08 	. 
	ld (hl),c			;34f3	71 	q 
	inc a			;34f4	3c 	< 
	ld (bc),a			;34f5	02 	. 
	ld (hl),h			;34f6	74 	t 
	inc a			;34f7	3c 	< 
	ld b,(hl)			;34f8	46 	F 
	ld a,b			;34f9	78 	x 
	ld d,b			;34fa	50 	P 
	ex af,af'			;34fb	08 	. 
	ld a,b			;34fc	78 	x 
	inc l			;34fd	2c 	, 
	ld (bc),a			;34fe	02 	. 
	ld a,a			;34ff	7f 	 
	ld bc,0122fh		;3500	01 2f 12 	. / . 
	rlca			;3503	07 	. 
	inc l			;3504	2c 	, 
	dec b			;3505	05 	. 
	inc c			;3506	0c 	. 
	ld d,b			;3507	50 	P 
	inc bc			;3508	03 	. 
	inc d			;3509	14 	. 
	ld l,b			;350a	68 	h 
	push de			;350b	d5 	. 
	inc d			;350c	14 	. 
	jr c,$+9		;350d	38 07 	8 . 
	ld e,054h		;350f	1e 54 	. T 
	djnz l3532h		;3511	10 1f 	. . 
	ld d,b			;3513	50 	P 
	ld a,(bc)			;3514	0a 	. 
	ld (l1054h),hl		;3515	22 54 10 	" T . 
	and d			;3518	a2 	. 
	ret nc			;3519	d0 	. 
	add hl,bc			;351a	09 	. 
	ld (04950h),hl		;351b	22 50 49 	" P I 
	inc hl			;351e	23 	# 
	ld d,b			;351f	50 	P 
	djnz $+46		;3520	10 2c 	. , 
	ld e,b			;3522	58 	X 
	inc b			;3523	04 	. 
	inc (hl)			;3524	34 	4 
	ld d,h			;3525	54 	T 
	add hl,bc			;3526	09 	. 
	or l			;3527	b5 	. 
	inc a			;3528	3c 	< 
	ld d,(hl)			;3529	56 	V 
	or a			;352a	b7 	. 
	call z,sub_3709h		;352b	cc 09 37 	. . 7 
	ld c,h			;352e	4c 	L 
	ld c,c			;352f	49 	I 
	add hl,sp			;3530	39 	9 
	ld d,h			;3531	54 	T 
l3532h:
	ld a,(bc)			;3532	0a 	. 
	inc a			;3533	3c 	< 
	ld c,h			;3534	4c 	L 
	ld a,(bc)			;3535	0a 	. 
	ld b,e			;3536	43 	C 
	ld e,b			;3537	58 	X 
	djnz l3595h		;3538	10 5b 	. [ 
	ld d,d			;353a	52 	R 
	inc de			;353b	13 	. 
	ld h,c			;353c	61 	a 
	jr nc,l355ch		;353d	30 1d 	0 . 
	ld h,c			;353f	61 	a 
	ld (hl),01bh		;3540	36 1b 	6 . 
	ld (hl),b			;3542	70 	p 
	dec hl			;3543	2b 	+ 
	inc d			;3544	14 	. 
	ld (hl),h			;3545	74 	t 
	ld e,a			;3546	5f 	_ 
	inc de			;3547	13 	. 
	ld (hl),a			;3548	77 	w 
	ld c,l			;3549	4d 	M 
	dec d			;354a	15 	. 
	ld a,a			;354b	7f 	 
	ld bc,l002fh		;354c	01 2f 00 	. / . 
	jr l3589h		;354f	18 38 	. 8 
	inc b			;3551	04 	. 
	jr l3582h		;3552	18 2e 	. . 
	dec bc			;3554	0b 	. 
	inc e			;3555	1c 	. 
	ret nc			;3556	d0 	. 
	jr l3579h		;3557	18 20 	.   
	ld l,00bh		;3559	2e 0b 	. . 
	inc h			;355b	24 	$ 
l355ch:
	ld d,b			;355c	50 	P 
	ex af,af'			;355d	08 	. 
	jr z,l358ch		;355e	28 2c 	( , 
	dec c			;3560	0d 	. 
	dec l			;3561	2d 	- 
	ld d,b			;3562	50 	P 
	jr l3593h		;3563	18 2e 	. . 
	ld d,b			;3565	50 	P 
	dec b			;3566	05 	. 
	jr nc,l35b5h		;3567	30 4c 	0 L 
	add hl,de			;3569	19 	. 
	ld (00738h),a		;356a	32 38 07 	2 8 . 
	inc (hl)			;356d	34 	4 
	call z,sub_3619h		;356e	cc 19 36 	. . 6 
	ld c,b			;3571	48 	H 
	rlca			;3572	07 	. 
	jr c,l35a1h		;3573	38 2c 	8 , 
	djnz l35b7h		;3575	10 40 	. @ 
	ld l,00bh		;3577	2e 0b 	. . 
l3579h:
	ld b,h			;3579	44 	D 
	ld d,b			;357a	50 	P 
	jr l35c5h		;357b	18 48 	. H 
	jr c,l3583h		;357d	38 04 	8 . 
	ld c,b			;357f	48 	H 
	ld c,h			;3580	4c 	L 
	add hl,de			;3581	19 	. 
l3582h:
	ld c,a			;3582	4f 	O 
l3583h:
	inc l			;3583	2c 	, 
	add hl,bc			;3584	09 	. 
	ld d,c			;3585	51 	Q 
	inc l			;3586	2c 	, 
	add hl,bc			;3587	09 	. 
	ld d,d			;3588	52 	R 
l3589h:
	xor h			;3589	ac 	. 
	djnz $+85		;358a	10 53 	. S 
l358ch:
	jr c,l3592h		;358c	38 04 	8 . 
	ld e,b			;358e	58 	X 
	inc l			;358f	2c 	, 
	add hl,bc			;3590	09 	. 
	ld e,e			;3591	5b 	[ 
l3592h:
	inc l			;3592	2c 	, 
l3593h:
	add hl,bc			;3593	09 	. 
l3594h:
	ld e,l			;3594	5d 	] 
l3595h:
	xor (hl)			;3595	ae 	. 
	dec bc			;3596	0b 	. 
	ld h,c			;3597	61 	a 
	ld d,b			;3598	50 	P 
	jr l35feh		;3599	18 63 	. c 
	ld d,b			;359b	50 	P 
	dec b			;359c	05 	. 
	ld h,l			;359d	65 	e 
	ret nc			;359e	d0 	. 
	jr $+106		;359f	18 68 	. h 
l35a1h:
	ld d,b			;35a1	50 	P 
	jr l360dh		;35a2	18 69 	. i 
	ret nc			;35a4	d0 	. 
	jr l3612h		;35a5	18 6b 	. k 
	ld d,b			;35a7	50 	P 
	ld b,06dh		;35a8	06 6d 	. m 
	ld c,h			;35aa	4c 	L 
	add hl,de			;35ab	19 	. 
	ld (hl),c			;35ac	71 	q 
	ld l,00bh		;35ad	2e 0b 	. . 
	ld (hl),c			;35af	71 	q 
	call z,07219h		;35b0	cc 19 72 	. . r 
	ld c,h			;35b3	4c 	L 
	add hl,de			;35b4	19 	. 
l35b5h:
	ld (hl),e			;35b5	73 	s 
	ld d,b			;35b6	50 	P 
l35b7h:
	ld b,074h		;35b7	06 74 	. t 
	ld l,00bh		;35b9	2e 0b 	. . 
	ld (hl),h			;35bb	74 	t 
	call z,07519h		;35bc	cc 19 75 	. . u 
	ld c,h			;35bf	4c 	L 
	add hl,de			;35c0	19 	. 
	ld (hl),l			;35c1	75 	u 
	jr c,l35c8h		;35c2	38 04 	8 . 
	ld a,a			;35c4	7f 	 
l35c5h:
	ld bc,0012fh		;35c5	01 2f 01 	. / . 
l35c8h:
	jr l3602h		;35c8	18 38 	. 8 
	inc b			;35ca	04 	. 
	add hl,de			;35cb	19 	. 
	inc l			;35cc	2c 	, 
	dec c			;35cd	0d 	. 
	dec e			;35ce	1d 	. 
	inc l			;35cf	2c 	, 
	djnz l35f1h		;35d0	10 1f 	. . 
	inc l			;35d2	2c 	, 
	add hl,bc			;35d3	09 	. 
	ld h,050h		;35d4	26 50 	& P 
	dec de			;35d6	1b 	. 
	add hl,hl			;35d7	29 	) 
	ld c,h			;35d8	4c 	L 
	rla			;35d9	17 	. 
	dec l			;35da	2d 	- 
	ld d,b			;35db	50 	P 
	inc e			;35dc	1c 	. 
	ld (l0650h),a		;35dd	32 50 06 	2 P . 
	inc sp			;35e0	33 	3 
	jr c,l35f9h		;35e1	38 16 	8 . 
	jr c,l3635h		;35e3	38 50 	8 P 
	dec de			;35e5	1b 	. 
	jr c,l3594h		;35e6	38 ac 	8 . 
	add hl,bc			;35e8	09 	. 
	ld a,(l0850h)		;35e9	3a 50 08 	: P . 
	dec sp			;35ec	3b 	; 
	ld c,h			;35ed	4c 	L 
	rla			;35ee	17 	. 
	dec sp			;35ef	3b 	; 
	xor h			;35f0	ac 	. 
l35f1h:
	add hl,bc			;35f1	09 	. 
	ld b,b			;35f2	40 	@ 
	inc l			;35f3	2c 	, 
	djnz l3637h		;35f4	10 41 	. A 
	ld d,b			;35f6	50 	P 
	ld b,047h		;35f7	06 47 	. G 
l35f9h:
	ld d,b			;35f9	50 	P 
	dec b			;35fa	05 	. 
	ld c,b			;35fb	48 	H 
	ld d,b			;35fc	50 	P 
	inc e			;35fd	1c 	. 
l35feh:
	ld d,(hl)			;35fe	56 	V 
	inc l			;35ff	2c 	, 
	rrca			;3600	0f 	. 
	ld e,b			;3601	58 	X 
l3602h:
	xor h			;3602	ac 	. 
	add hl,bc			;3603	09 	. 
	ld e,d			;3604	5a 	Z 
	xor h			;3605	ac 	. 
	add hl,bc			;3606	09 	. 
	ld e,e			;3607	5b 	[ 
	jr c,l3611h		;3608	38 07 	8 . 
	ld e,l			;360a	5d 	] 
	xor h			;360b	ac 	. 
	add hl,bc			;360c	09 	. 
l360dh:
	ld h,b			;360d	60 	` 
	ld d,b			;360e	50 	P 
	dec de			;360f	1b 	. 
	ld h,l			;3610	65 	e 
l3611h:
	ld c,h			;3611	4c 	L 
l3612h:
	rla			;3612	17 	. 
	ld l,b			;3613	68 	h 
sub_3614h:
	xor h			;3614	ac 	. 
	add hl,bc			;3615	09 	. 
	ld l,e			;3616	6b 	k 
	ld c,h			;3617	4c 	L 
	rla			;3618	17 	. 
sub_3619h:
	ld (hl),b			;3619	70 	p 
	inc l			;361a	2c 	, 
	djnz $+115		;361b	10 71 	. q 
	ld d,b			;361d	50 	P 
	dec b			;361e	05 	. 
	ld (hl),h			;361f	74 	t 
	inc l			;3620	2c 	, 
	djnz l369bh		;3621	10 78 	. x 
	ld (0781ch),a		;3623	32 1c 78 	2 . x 
	xor h			;3626	ac 	. 
	add hl,bc			;3627	09 	. 
	ld a,a			;3628	7f 	 
	ld bc,l022fh		;3629	01 2f 02 	. / . 
	dec bc			;362c	0b 	. 
	inc l			;362d	2c 	, 
	add hl,bc			;362e	09 	. 
	dec c			;362f	0d 	. 
	inc l			;3630	2c 	, 
	djnz l3649h		;3631	10 16 	. . 
	inc l			;3633	2c 	, 
	add hl,bc			;3634	09 	. 
l3635h:
	jr l3663h		;3635	18 2c 	. , 
l3637h:
	add hl,bc			;3637	09 	. 
	ld a,(de)			;3638	1a 	. 
	inc l			;3639	2c 	, 
	dec d			;363a	15 	. 
l363bh:
	ld hl,l18d0h		;363b	21 d0 18 	! . . 
	inc hl			;363e	23 	# 
	ld d,b			;363f	50 	P 
	jr l366bh		;3640	18 29 	. ) 
	ld d,b			;3642	50 	P 
	add hl,de			;3643	19 	. 
	dec hl			;3644	2b 	+ 
	ret nc			;3645	d0 	. 
	add hl,de			;3646	19 	. 
l3647h:
	jr nc,l3677h		;3647	30 2e 	0 . 
l3649h:
	dec bc			;3649	0b 	. 
	inc (hl)			;364a	34 	4 
	inc l			;364b	2c 	, 
	add hl,bc			;364c	09 	. 
l364dh:
	jr c,l367dh		;364d	38 2e 	8 . 
	dec bc			;364f	0b 	. 
	ld b,b			;3650	40 	@ 
	ld l,00bh		;3651	2e 0b 	. . 
	ld b,(hl)			;3653	46 	F 
	inc l			;3654	2c 	, 
	add hl,bc			;3655	09 	. 
	ld c,b			;3656	48 	H 
	inc l			;3657	2c 	, 
	add hl,bc			;3658	09 	. 
	ld d,c			;3659	51 	Q 
	ld d,b			;365a	50 	P 
	jr l36b0h		;365b	18 53 	. S 
	ld d,b			;365d	50 	P 
	jr l36b6h		;365e	18 56 	. V 
	ret nc			;3660	d0 	. 
	jr l36bbh		;3661	18 58 	. X 
l3663h:
	inc l			;3663	2c 	, 
	add hl,bc			;3664	09 	. 
	ld e,c			;3665	59 	Y 
	inc l			;3666	2c 	, 
	djnz l36cah		;3667	10 61 	. a 
	ld l,00bh		;3669	2e 0b 	. . 
l366bh:
	ld h,l			;366b	65 	e 
	ld c,h			;366c	4c 	L 
	add hl,de			;366d	19 	. 
	ld l,b			;366e	68 	h 
	call z,06919h		;366f	cc 19 69 	. . i 
	inc l			;3672	2c 	, 
	djnz l36e5h		;3673	10 70 	. p 
	inc l			;3675	2c 	, 
	add hl,bc			;3676	09 	. 
l3677h:
	ld (hl),c			;3677	71 	q 
	inc l			;3678	2c 	, 
	add hl,bc			;3679	09 	. 
	ld (hl),e			;367a	73 	s 
	xor h			;367b	ac 	. 
	add hl,bc			;367c	09 	. 
l367dh:
	ld a,a			;367d	7f 	 
	ld bc,l032fh		;367e	01 2f 03 	. / . 
	dec c			;3681	0d 	. 
	jr c,l368bh		;3682	38 07 	8 . 
	ld de,l1b32h		;3684	11 32 1b 	. 2 . 
	ld de,l174ch		;3687	11 4c 17 	. L . 
	inc d			;368a	14 	. 
l368bh:
	ld d,b			;368b	50 	P 
	inc e			;368c	1c 	. 
	jr l363bh		;368d	18 ac 	. . 
	add hl,bc			;368f	09 	. 
	ld a,(de)			;3690	1a 	. 
	xor h			;3691	ac 	. 
	add hl,bc			;3692	09 	. 
	ld hl,sub_09ach		;3693	21 ac 09 	! . . 
	ld hl,l0438h		;3696	21 38 04 	! 8 . 
	jr z,l3647h		;3699	28 ac 	( . 
l369bh:
	add hl,bc			;369b	09 	. 
	ld hl,(l102ch)		;369c	2a 2c 10 	* , . 
	jr nc,l364dh		;369f	30 ac 	0 . 
	add hl,bc			;36a1	09 	. 
	ld (sub_09ach),a		;36a2	32 ac 09 	2 . . 
	inc (hl)			;36a5	34 	4 
	xor h			;36a6	ac 	. 
	add hl,bc			;36a7	09 	. 
	dec (hl)			;36a8	35 	5 
	ld d,b			;36a9	50 	P 
	dec de			;36aa	1b 	. 
	dec sp			;36ab	3b 	; 
	ld c,h			;36ac	4c 	L 
	rla			;36ad	17 	. 
	ld b,b			;36ae	40 	@ 
	ld d,b			;36af	50 	P 
l36b0h:
	inc e			;36b0	1c 	. 
	ld b,b			;36b1	40 	@ 
	ld l,00bh		;36b2	2e 0b 	. . 
	ld b,(hl)			;36b4	46 	F 
	xor h			;36b5	ac 	. 
l36b6h:
	add hl,bc			;36b6	09 	. 
	ld c,b			;36b7	48 	H 
	xor h			;36b8	ac 	. 
	add hl,bc			;36b9	09 	. 
	ld d,c			;36ba	51 	Q 
l36bbh:
	ld c,h			;36bb	4c 	L 
	dec de			;36bc	1b 	. 
	ld d,e			;36bd	53 	S 
	ld c,h			;36be	4c 	L 
	rla			;36bf	17 	. 
	ld e,b			;36c0	58 	X 
	xor h			;36c1	ac 	. 
	add hl,bc			;36c2	09 	. 
	ld e,d			;36c3	5a 	Z 
	inc l			;36c4	2c 	, 
	djnz l3728h		;36c5	10 61 	. a 
	ld l,00bh		;36c7	2e 0b 	. . 
	ld h,l			;36c9	65 	e 
l36cah:
	ld c,h			;36ca	4c 	L 
	rla			;36cb	17 	. 
	ld l,c			;36cc	69 	i 
	inc l			;36cd	2c 	, 
	djnz l3740h		;36ce	10 70 	. p 
	ld c,h			;36d0	4c 	L 
	inc e			;36d1	1c 	. 
	ld (hl),b			;36d2	70 	p 
	xor h			;36d3	ac 	. 
	add hl,bc			;36d4	09 	. 
	ld a,b			;36d5	78 	x 
	ld l,01dh		;36d6	2e 1d 	. . 
	ld a,a			;36d8	7f 	 
	ld bc,l002fh		;36d9	01 2f 00 	. / . 
	dec bc			;36dc	0b 	. 
	inc l			;36dd	2c 	, 
	add hl,bc			;36de	09 	. 
	ld de,l0e68h		;36df	11 68 0e 	. h . 
	ld d,038h		;36e2	16 38 	. 8 
	rlca			;36e4	07 	. 
l36e5h:
	dec e			;36e5	1d 	. 
	ld l,00bh		;36e6	2e 0b 	. . 
	ld hl,l0850h		;36e8	21 50 08 	! P . 
	inc hl			;36eb	23 	# 
	inc l			;36ec	2c 	, 
	inc c			;36ed	0c 	. 
	dec h			;36ee	25 	% 
	ld l,b			;36ef	68 	h 
	ld c,02ah		;36f0	0e 2a 	. * 
	ld d,b			;36f2	50 	P 
	ex af,af'			;36f3	08 	. 
	dec l			;36f4	2d 	- 
	ld c,h			;36f5	4c 	L 
	dec c			;36f6	0d 	. 
	ld l,04ch		;36f7	2e 4c 	. L 
	dec c			;36f9	0d 	. 
	ld sp,l0fd0h		;36fa	31 d0 0f 	1 . . 
	inc sp			;36fd	33 	3 
	ret nc			;36fe	d0 	. 
	rrca			;36ff	0f 	. 
	dec (hl)			;3700	35 	5 
	ld l,b			;3701	68 	h 
	ld c,03ah		;3702	0e 3a 	. : 
	ld d,b			;3704	50 	P 
	dec b			;3705	05 	. 
	add hl,sp			;3706	39 	9 
	ld c,h			;3707	4c 	L 
	dec c			;3708	0d 	. 
sub_3709h:
	dec sp			;3709	3b 	; 
	ld d,b			;370a	50 	P 
	dec c			;370b	0d 	. 
	ld b,l			;370c	45 	E 
	ld l,b			;370d	68 	h 
	ld c,046h		;370e	0e 46 	. F 
	ld d,e			;3710	53 	S 
	ld de,l2c49h		;3711	11 49 2c 	. I , 
	inc c			;3714	0c 	. 
	ld c,l			;3715	4d 	M 
	ld c,b			;3716	48 	H 
	inc b			;3717	04 	. 
	ld d,c			;3718	51 	Q 
	ld l,b			;3719	68 	h 
	ld c,057h		;371a	0e 57 	. W 
	ld d,b			;371c	50 	P 
	dec c			;371d	0d 	. 
	ld e,c			;371e	59 	Y 
	call z,05d0fh		;371f	cc 0f 5d 	. . ] 
	xor (hl)			;3722	ae 	. 
	dec bc			;3723	0b 	. 
	ld e,a			;3724	5f 	_ 
	ld c,h			;3725	4c 	L 
	dec c			;3726	0d 	. 
	ld h,d			;3727	62 	b 
l3728h:
	ld d,b			;3728	50 	P 
l3729h:
	dec c			;3729	0d 	. 
l372ah:
	ld h,h			;372a	64 	d 
	ld c,h			;372b	4c 	L 
	dec c			;372c	0d 	. 
	ld h,a			;372d	67 	g 
	ld l,b			;372e	68 	h 
l372fh:
	ld c,06bh		;372f	0e 6b 	. k 
	inc l			;3731	2c 	, 
	inc c			;3732	0c 	. 
	ld l,h			;3733	6c 	l 
	ld d,b			;3734	50 	P 
	ld b,070h		;3735	06 70 	. p 
	ld d,b			;3737	50 	P 
	dec b			;3738	05 	. 
	ld (hl),d			;3739	72 	r 
	ld d,b			;373a	50 	P 
	ld b,075h		;373b	06 75 	. u 
	ld l,b			;373d	68 	h 
	ld c,076h		;373e	0e 76 	. v 
l3740h:
	ld c,b			;3740	48 	H 
	djnz l37bah		;3741	10 77 	. w 
	ld c,b			;3743	48 	H 
	djnz l37c5h		;3744	10 7f 	.  
	ld bc,0012fh		;3746	01 2f 01 	. / . 
	dec c			;3749	0d 	. 
	inc l			;374a	2c 	, 
	inc c			;374b	0c 	. 
	rrca			;374c	0f 	. 
	xor h			;374d	ac 	. 
	inc c			;374e	0c 	. 
	ld de,l0448h		;374f	11 48 04 	. H . 
	ld de,l0e68h		;3752	11 68 0e 	. h . 
	ld (de),a			;3755	12 	. 
	inc l			;3756	2c 	, 
	inc c			;3757	0c 	. 
	inc d			;3758	14 	. 
	ld c,b			;3759	48 	H 
	inc b			;375a	04 	. 
	jr nz,l3729h		;375b	20 cc 	  . 
	rrca			;375d	0f 	. 
	dec h			;375e	25 	% 
	ld l,b			;375f	68 	h 
	ld c,026h		;3760	0e 26 	. & 
	ld d,h			;3762	54 	T 
	ld de,04827h		;3763	11 27 48 	. ' H 
	djnz l3795h		;3766	10 2d 	. - 
	ld l,00bh		;3768	2e 0b 	. . 
	ld sp,l0e68h		;376a	31 68 0e 	1 h . 
	ld sp,l1048h		;376d	31 48 10 	1 H . 
	ld (hl),050h		;3770	36 50 	6 P 
	dec c			;3772	0d 	. 
	scf			;3773	37 	7 
	call z,sub_380dh		;3774	cc 0d 38 	. . 8 
	ld d,b			;3777	50 	P 
	dec c			;3778	0d 	. 
	ld a,(l0d50h)		;3779	3a 50 0d 	: P . 
	dec a			;377c	3d 	= 
	call z,03f0fh		;377d	cc 0f 3f 	. . ? 
	inc l			;3780	2c 	, 
	inc c			;3781	0c 	. 
	ld b,d			;3782	42 	B 
	jr c,l378ch		;3783	38 07 	8 . 
	ld b,e			;3785	43 	C 
	ld c,h			;3786	4c 	L 
	rrca			;3787	0f 	. 
	ld b,l			;3788	45 	E 
	ld c,b			;3789	48 	H 
	ld c,04ah		;378a	0e 4a 	. J 
l378ch:
	call z,04c0fh		;378c	cc 0f 4c 	. . L 
	ld c,b			;378f	48 	H 
	inc b			;3790	04 	. 
	ld c,l			;3791	4d 	M 
	inc l			;3792	2c 	, 
	inc c			;3793	0c 	. 
	ld d,b			;3794	50 	P 
l3795h:
	ld c,h			;3795	4c 	L 
	dec c			;3796	0d 	. 
	ld d,c			;3797	51 	Q 
	ret nc			;3798	d0 	. 
	dec c			;3799	0d 	. 
	ld d,d			;379a	52 	R 
	call z,0530dh		;379b	cc 0d 53 	. . S 
	ld d,b			;379e	50 	P 
	dec c			;379f	0d 	. 
	ld d,c			;37a0	51 	Q 
	ld d,b			;37a1	50 	P 
	dec b			;37a2	05 	. 
	ld e,c			;37a3	59 	Y 
	ld l,b			;37a4	68 	h 
	ld c,05dh		;37a5	0e 5d 	. ] 
	inc l			;37a7	2c 	, 
	inc c			;37a8	0c 	. 
	ld h,l			;37a9	65 	e 
	ld l,b			;37aa	68 	h 
	ld c,066h		;37ab	0e 66 	. f 
	ld d,l			;37ad	55 	U 
	ld de,0506bh		;37ae	11 6b 50 	. k P 
	dec b			;37b1	05 	. 
	ld l,(hl)			;37b2	6e 	n 
	ld c,b			;37b3	48 	H 
	inc b			;37b4	04 	. 
	ld l,a			;37b5	6f 	o 
	ld c,h			;37b6	4c 	L 
	dec c			;37b7	0d 	. 
	ld (hl),c			;37b8	71 	q 
	ld c,b			;37b9	48 	H 
l37bah:
	inc b			;37ba	04 	. 
	ld (hl),e			;37bb	73 	s 
	ld c,h			;37bc	4c 	L 
	ld c,079h		;37bd	0e 79 	. y 
	ld c,h			;37bf	4c 	L 
	rrca			;37c0	0f 	. 
	ld a,a			;37c1	7f 	 
	ld bc,l022fh		;37c2	01 2f 02 	. / . 
l37c5h:
	add hl,bc			;37c5	09 	. 
	ld l,b			;37c6	68 	h 
	ld c,00eh		;37c7	0e 0e 	. . 
	inc l			;37c9	2c 	, 
	add hl,bc			;37ca	09 	. 
	dec d			;37cb	15 	. 
	ld l,b			;37cc	68 	h 
	ld c,01ch		;37cd	0e 1c 	. . 
	ret z			;37cf	c8 	. 
	rrca			;37d0	0f 	. 
	ld e,0c8h		;37d1	1e c8 	. . 
	rrca			;37d3	0f 	. 
	jr nz,l3826h		;37d4	20 50 	  P 
	dec b			;37d6	05 	. 
	ld hl,l0e68h		;37d7	21 68 0e 	! h . 
	daa			;37da	27 	' 
	ld c,b			;37db	48 	H 
	inc b			;37dc	04 	. 
	jr z,l380bh		;37dd	28 2c 	( , 
	inc c			;37df	0c 	. 
	jr z,$+78		;37e0	28 4c 	( L 
	dec c			;37e2	0d 	. 
	add hl,hl			;37e3	29 	) 
	ld d,b			;37e4	50 	P 
	dec c			;37e5	0d 	. 
	add hl,sp			;37e6	39 	9 
	ld l,b			;37e7	68 	h 
	ld c,03ah		;37e8	0e 3a 	. : 
	ld d,l			;37ea	55 	U 
	ld de,0483ah		;37eb	11 3a 48 	. : H 
	djnz l382bh		;37ee	10 3b 	. ; 
	ld b,d			;37f0	42 	B 
	djnz l3834h		;37f1	10 41 	. A 
	ld c,b			;37f3	48 	H 
	inc b			;37f4	04 	. 
	ld b,h			;37f5	44 	D 
	ld c,b			;37f6	48 	H 
	inc b			;37f7	04 	. 
	ld c,b			;37f8	48 	H 
	ld l,00bh		;37f9	2e 0b 	. . 
	ld c,c			;37fb	49 	I 
	ld l,b			;37fc	68 	h 
	ld c,04fh		;37fd	0e 4f 	. O 
	inc l			;37ff	2c 	, 
	inc c			;3800	0c 	. 
	ld d,l			;3801	55 	U 
l3802h:
	ld l,b			;3802	68 	h 
	ld c,056h		;3803	0e 56 	. V 
	ld d,l			;3805	55 	U 
	ld de,06861h		;3806	11 61 68 	. a h 
	ld c,067h		;3809	0e 67 	. g 
l380bh:
	ld d,b			;380b	50 	P 
	rrca			;380c	0f 	. 
sub_380dh:
	ld l,c			;380d	69 	i 
	ld l,b			;380e	68 	h 
	ld c,06ah		;380f	0e 6a 	. j 
	ld d,l			;3811	55 	U 
	ld de,0686bh		;3812	11 6b 68 	. k h 
	ld c,071h		;3815	0e 71 	. q 
	ld l,b			;3817	68 	h 
	ld c,073h		;3818	0e 73 	. s 
	ld d,b			;381a	50 	P 
	dec b			;381b	05 	. 
	ld a,c			;381c	79 	y 
	ld c,h			;381d	4c 	L 
	rrca			;381e	0f 	. 
	ld a,e			;381f	7b 	{ 
	ld c,h			;3820	4c 	L 
	rrca			;3821	0f 	. 
	ld a,a			;3822	7f 	 
	ld bc,l032fh		;3823	01 2f 03 	. / . 
l3826h:
	add hl,bc			;3826	09 	. 
	ld l,b			;3827	68 	h 
	ld c,00fh		;3828	0e 0f 	. . 
	ld c,h			;382a	4c 	L 
l382bh:
	dec c			;382b	0d 	. 
l382ch:
	ld de,l0d50h		;382c	11 50 0d 	. P . 
	ld (de),a			;382f	12 	. 
	ld c,b			;3830	48 	H 
	inc b			;3831	04 	. 
	ld (de),a			;3832	12 	. 
	ld c,h			;3833	4c 	L 
l3834h:
	dec c			;3834	0d 	. 
	inc de			;3835	13 	. 
	ld c,b			;3836	48 	H 
l3837h:
	inc de			;3837	13 	. 
	dec d			;3838	15 	. 
	ld l,b			;3839	68 	h 
	ld c,01eh		;383a	0e 1e 	. . 
	jr c,l3843h		;383c	38 05 	8 . 
	ld hl,l0e68h		;383e	21 68 0e 	! h . 
	inc hl			;3841	23 	# 
	ld c,b			;3842	48 	H 
l3843h:
	inc b			;3843	04 	. 
	dec h			;3844	25 	% 
	inc l			;3845	2c 	, 
	inc c			;3846	0c 	. 
	add hl,hl			;3847	29 	) 
	ld l,b			;3848	68 	h 
	ld c,02bh		;3849	0e 2b 	. + 
	ld c,b			;384b	48 	H 
	inc b			;384c	04 	. 
	dec l			;384d	2d 	- 
	inc l			;384e	2c 	, 
	inc c			;384f	0c 	. 
	ld (l0650h),a		;3850	32 50 06 	2 P . 
	inc sp			;3853	33 	3 
	inc l			;3854	2c 	, 
	inc c			;3855	0c 	. 
	dec (hl)			;3856	35 	5 
	ld l,b			;3857	68 	h 
	ld c,039h		;3858	0e 39 	. 9 
	inc l			;385a	2c 	, 
	inc c			;385b	0c 	. 
	ld b,l			;385c	45 	E 
	ld l,b			;385d	68 	h 
	ld c,046h		;385e	0e 46 	. F 
	ld d,l			;3860	55 	U 
	ld de,05049h		;3861	11 49 50 	. I P 
	dec c			;3864	0d 	. 
	ld c,d			;3865	4a 	J 
	ld c,h			;3866	4c 	L 
	dec c			;3867	0d 	. 
	ld c,h			;3868	4c 	L 
	ret nc			;3869	d0 	. 
	dec c			;386a	0d 	. 
	ld d,c			;386b	51 	Q 
	ld l,b			;386c	68 	h 
	ld c,056h		;386d	0e 56 	. V 
	ld c,h			;386f	4c 	L 
	dec c			;3870	0d 	. 
	ld e,b			;3871	58 	X 
	ld d,b			;3872	50 	P 
	dec c			;3873	0d 	. 
	ld e,d			;3874	5a 	Z 
	ld c,h			;3875	4c 	L 
	dec c			;3876	0d 	. 
	ld e,h			;3877	5c 	\ 
	ld d,b			;3878	50 	P 
	dec c			;3879	0d 	. 
	ld e,(hl)			;387a	5e 	^ 
	ld c,h			;387b	4c 	L 
	dec c			;387c	0d 	. 
	ld h,c			;387d	61 	a 
	ld l,b			;387e	68 	h 
	ld c,065h		;387f	0e 65 	. e 
	inc l			;3881	2c 	, 
	inc c			;3882	0c 	. 
	ld h,a			;3883	67 	g 
	jr c,l388dh		;3884	38 07 	8 . 
	ld l,d			;3886	6a 	j 
	ld c,b			;3887	48 	H 
	inc b			;3888	04 	. 
	ld l,d			;3889	6a 	j 
	inc l			;388a	2c 	, 
	inc c			;388b	0c 	. 
	ld l,a			;388c	6f 	o 
l388dh:
	ld c,h			;388d	4c 	L 
	rrca			;388e	0f 	. 
	ld (hl),d			;388f	72 	r 
	inc l			;3890	2c 	, 
	inc d			;3891	14 	. 
	ld (hl),c			;3892	71 	q 
	ld c,h			;3893	4c 	L 
	rrca			;3894	0f 	. 
	ld a,b			;3895	78 	x 
	cpl			;3896	2f 	/ 
	dec d			;3897	15 	. 
	ld a,a			;3898	7f 	 
	ld bc,l002ch		;3899	01 2c 00 	. , . 
	ld de,00730h		;389c	11 30 07 	. 0 . 
	jr l38d1h		;389f	18 30 	. 0 
	rlca			;38a1	07 	. 
	dec e			;38a2	1d 	. 
	ld b,b			;38a3	40 	@ 
	ld a,(bc)			;38a4	0a 	. 
	dec e			;38a5	1d 	. 
	jr z,l38bch		;38a6	28 14 	( . 
	ld h,029h		;38a8	26 29 	& ) 
	dec d			;38aa	15 	. 
	jr z,l38d6h		;38ab	28 29 	( ) 
	dec d			;38ad	15 	. 
sub_38aeh:
	dec l			;38ae	2d 	- 
	add hl,hl			;38af	29 	) 
	add hl,bc			;38b0	09 	. 
	ld l,0abh		;38b1	2e ab 	. . 
	inc de			;38b3	13 	. 
	ld l,048h		;38b4	2e 48 	. H 
	ex af,af'			;38b6	08 	. 
	jr c,l38f9h		;38b7	38 40 	8 @ 
	inc b			;38b9	04 	. 
	jr c,$+66		;38ba	38 40 	8 @ 
l38bch:
	rrca			;38bc	0f 	. 
	add hl,sp			;38bd	39 	9 
	scf			;38be	37 	7 
	rla			;38bf	17 	. 
	ld b,c			;38c0	41 	A 
	cp e			;38c1	bb 	. 
	inc c			;38c2	0c 	. 
	ld b,(hl)			;38c3	46 	F 
	add hl,sp			;38c4	39 	9 
	add hl,bc			;38c5	09 	. 
	ld b,a			;38c6	47 	G 
	ld b,b			;38c7	40 	@ 
	inc b			;38c8	04 	. 
	ld b,a			;38c9	47 	G 
	ld a,(04b13h)		;38ca	3a 13 4b 	: . K 
	add hl,hl			;38cd	29 	) 
	add hl,bc			;38ce	09 	. 
	ld c,l			;38cf	4d 	M 
	ld c,b			;38d0	48 	H 
l38d1h:
	dec b			;38d1	05 	. 
	ld d,d			;38d2	52 	R 
	xor c			;38d3	a9 	. 
	add hl,bc			;38d4	09 	. 
	ld d,h			;38d5	54 	T 
l38d6h:
	jr nc,l38dch		;38d6	30 04 	0 . 
	ld d,l			;38d8	55 	U 
	add hl,hl			;38d9	29 	) 
	dec d			;38da	15 	. 
	ld e,d			;38db	5a 	Z 
l38dch:
	ld c,h			;38dc	4c 	L 
	djnz $+104		;38dd	10 66 	. f 
	ld a,(06813h)		;38df	3a 13 68 	: . h 
	ld b,b			;38e2	40 	@ 
	inc b			;38e3	04 	. 
	ld l,h			;38e4	6c 	l 
	ld b,b			;38e5	40 	@ 
	rlca			;38e6	07 	. 
	ld l,h			;38e7	6c 	l 
	ld b,h			;38e8	44 	D 
	ld a,(bc)			;38e9	0a 	. 
	ld l,l			;38ea	6d 	m 
	ld b,b			;38eb	40 	@ 
	dec bc			;38ec	0b 	. 
	ld (hl),c			;38ed	71 	q 
	ld b,b			;38ee	40 	@ 
	ld b,07fh		;38ef	06 7f 	.  
	ld bc,l012ch		;38f1	01 2c 01 	. , . 
	djnz l3922h		;38f4	10 2c 	. , 
	dec de			;38f6	1b 	. 
	inc de			;38f7	13 	. 
	ld d,b			;38f8	50 	P 
l38f9h:
	jr l390eh		;38f9	18 13 	. . 
	jr c,l390bh		;38fb	38 0e 	8 . 
	rra			;38fd	1f 	. 
	ld b,b			;38fe	40 	@ 
	inc b			;38ff	04 	. 
	inc hl			;3900	23 	# 
	ld c,h			;3901	4c 	L 
	jr $+39		;3902	18 25 	. % 
	xor c			;3904	a9 	. 
	add hl,bc			;3905	09 	. 
	ld h,050h		;3906	26 50 	& P 
	jr l3932h		;3908	18 28 	. ( 
	xor c			;390a	a9 	. 
l390bh:
	add hl,bc			;390b	09 	. 
	add hl,hl			;390c	29 	) 
	add hl,hl			;390d	29 	) 
l390eh:
	dec d			;390e	15 	. 
	cpl			;390f	2f 	/ 
	ld c,b			;3910	48 	H 
	add hl,de			;3911	19 	. 
	cpl			;3912	2f 	/ 
	ld hl,(l3013h)		;3913	2a 13 30 	* . 0 
	jr z,$+19		;3916	28 11 	( . 
	ld (l132ah),a		;3918	32 2a 13 	2 * . 
	jr c,$+66		;391b	38 40 	8 @ 
	inc b			;391d	04 	. 
	jr c,l3958h		;391e	38 38 	8 8 
	rla			;3920	17 	. 
	dec sp			;3921	3b 	; 
l3922h:
	jr c,l393bh		;3922	38 17 	8 . 
	ld b,a			;3924	47 	G 
	ld a,(04b0ch)		;3925	3a 0c 4b 	: . K 
	ld (06014h),a		;3928	32 14 60 	2 . ` 
	ld a,(06013h)		;392b	3a 13 60 	: . ` 
	ld b,b			;392e	40 	@ 
	inc b			;392f	04 	. 
	ld h,b			;3930	60 	` 
	add hl,sp			;3931	39 	9 
l3932h:
	dec d			;3932	15 	. 
	ld h,e			;3933	63 	c 
	inc (hl)			;3934	34 	4 
	dec d			;3935	15 	. 
	ld l,c			;3936	69 	i 
	add hl,sp			;3937	39 	9 
	add hl,bc			;3938	09 	. 
	ld l,a			;3939	6f 	o 
	add hl,sp			;393a	39 	9 
l393bh:
	add hl,bc			;393b	09 	. 
	ld (hl),l			;393c	75 	u 
	add hl,sp			;393d	39 	9 
	add hl,bc			;393e	09 	. 
	ld a,a			;393f	7f 	 
	ld bc,l022ch		;3940	01 2c 02 	. , . 
	ld (de),a			;3943	12 	. 
	jr nc,l3960h		;3944	30 1a 	0 . 
	rla			;3946	17 	. 
	ld a,(l200dh)		;3947	3a 0d 20 	: .   
	ld b,b			;394a	40 	@ 
	inc b			;394b	04 	. 
	inc h			;394c	24 	$ 
	ld b,b			;394d	40 	@ 
	inc b			;394e	04 	. 
	inc hl			;394f	23 	# 
	inc (hl)			;3950	34 	4 
	rla			;3951	17 	. 
	daa			;3952	27 	' 
	cp e			;3953	bb 	. 
	dec d			;3954	15 	. 
	jr z,l399fh		;3955	28 48 	( H 
	ex af,af'			;3957	08 	. 
l3958h:
	dec hl			;3958	2b 	+ 
	or e			;3959	b3 	. 
	add hl,bc			;395a	09 	. 
	inc l			;395b	2c 	, 
	ld sp,l3015h		;395c	31 15 30 	1 . 0 
	ld e,b			;395f	58 	X 
l3960h:
	dec b			;3960	05 	. 
	dec (hl)			;3961	35 	5 
	jr c,$+25		;3962	38 17 	8 . 
l3964h:
	inc a			;3964	3c 	< 
	ld e,b			;3965	58 	X 
	dec b			;3966	05 	. 
	ld b,l			;3967	45 	E 
	ld b,b			;3968	40 	@ 
	rla			;3969	17 	. 
	ld c,a			;396a	4f 	O 
	jr c,l3971h		;396b	38 04 	8 . 
l396dh:
	ld d,e			;396d	53 	S 
	inc l			;396e	2c 	, 
	inc b			;396f	04 	. 
	ld d,e			;3970	53 	S 
l3971h:
	ld sp,05515h		;3971	31 15 55 	1 . U 
	ld sp,05715h		;3974	31 15 57 	1 . W 
	or c			;3977	b1 	. 
	dec d			;3978	15 	. 
	ld e,d			;3979	5a 	Z 
	ld sp,05e15h		;397a	31 15 5e 	1 . ^ 
	ld c,b			;397d	48 	H 
l397eh:
	ex af,af'			;397e	08 	. 
	ld e,a			;397f	5f 	_ 
	pop bc			;3980	c1 	. 
	add hl,bc			;3981	09 	. 
	ld h,(hl)			;3982	66 	f 
	add hl,sp			;3983	39 	9 
	add hl,bc			;3984	09 	. 
	ld (hl),b			;3985	70 	p 
	inc a			;3986	3c 	< 
	inc b			;3987	04 	. 
l3988h:
	ld (hl),c			;3988	71 	q 
	jr c,l39a2h		;3989	38 17 	8 . 
	ld a,a			;398b	7f 	 
	ld bc,l032ch		;398c	01 2c 03 	. , . 
	dec de			;398f	1b 	. 
	ld b,h			;3990	44 	D 
	ld a,(bc)			;3991	0a 	. 
	rra			;3992	1f 	. 
	inc l			;3993	2c 	, 
	rlca			;3994	07 	. 
	inc hl			;3995	23 	# 
	ld d,h			;3996	54 	T 
	ld a,(bc)			;3997	0a 	. 
	dec hl			;3998	2b 	+ 
	ld b,h			;3999	44 	D 
	ld a,(bc)			;399a	0a 	. 
	inc l			;399b	2c 	, 
	ld c,b			;399c	48 	H 
	dec bc			;399d	0b 	. 
	cpl			;399e	2f 	/ 
l399fh:
	ld c,h			;399f	4c 	L 
	inc b			;39a0	04 	. 
	dec sp			;39a1	3b 	; 
l39a2h:
	ld b,h			;39a2	44 	D 
	dec bc			;39a3	0b 	. 
	dec sp			;39a4	3b 	; 
	ld d,b			;39a5	50 	P 
	ld a,(bc)			;39a6	0a 	. 
	ccf			;39a7	3f 	? 
	inc l			;39a8	2c 	, 
	rlca			;39a9	07 	. 
	ld b,l			;39aa	45 	E 
	xor c			;39ab	a9 	. 
	add hl,bc			;39ac	09 	. 
	ld c,c			;39ad	49 	I 
	jr c,l39c7h		;39ae	38 17 	8 . 
	ld c,l			;39b0	4d 	M 
l39b1h:
	ld b,h			;39b1	44 	D 
	inc b			;39b2	04 	. 
	ld c,(hl)			;39b3	4e 	N 
	inc a			;39b4	3c 	< 
	add hl,bc			;39b5	09 	. 
	ld d,c			;39b6	51 	Q 
	ld sp,05615h		;39b7	31 15 56 	1 . V 
l39bah:
	ld b,c			;39ba	41 	A 
	add hl,bc			;39bb	09 	. 
	ld e,d			;39bc	5a 	Z 
	ld c,b			;39bd	48 	H 
	inc b			;39be	04 	. 
	ld e,e			;39bf	5b 	[ 
	ld c,b			;39c0	48 	H 
	ld c,065h		;39c1	0e 65 	. e 
	ret nz			;39c3	c0 	. 
	ld a,(bc)			;39c4	0a 	. 
	ld l,b			;39c5	68 	h 
	pop bc			;39c6	c1 	. 
l39c7h:
	dec d			;39c7	15 	. 
	ld l,(hl)			;39c8	6e 	n 
	ld b,c			;39c9	41 	A 
	dec d			;39ca	15 	. 
	ld l,(hl)			;39cb	6e 	n 
	ld e,b			;39cc	58 	X 
	dec b			;39cd	05 	. 
	ld a,b			;39ce	78 	x 
	inc sp			;39cf	33 	3 
	inc de			;39d0	13 	. 
l39d1h:
	ld a,c			;39d1	79 	y 
	ld sp,07f16h		;39d2	31 16 7f 	1 .  
	add a,a			;39d5	87 	. 
	ld c,h			;39d6	4c 	L 
	dec b			;39d7	05 	. 
	adc a,b			;39d8	88 	. 
	ld c,h			;39d9	4c 	L 
	djnz l3964h		;39da	10 88 	. . 
	ld c,h			;39dc	4c 	L 
	inc e			;39dd	1c 	. 
	ex af,af'			;39de	08 	. 
	ld c,h			;39df	4c 	L 
	jr nz,l396dh		;39e0	20 8b 	  . 
	ld c,h			;39e2	4c 	L 
	inc b			;39e3	04 	. 
	adc a,e			;39e4	8b 	. 
	ld c,h			;39e5	4c 	L 
	ex af,af'			;39e6	08 	. 
	adc a,e			;39e7	8b 	. 
	ld c,h			;39e8	4c 	L 
	inc d			;39e9	14 	. 
	adc a,e			;39ea	8b 	. 
	ld c,h			;39eb	4c 	L 
	jr $+13		;39ec	18 0b 	. . 
	ld c,h			;39ee	4c 	L 
	jr nz,l397eh		;39ef	20 8d 	  . 
	ld c,h			;39f1	4c 	L 
	dec d			;39f2	15 	. 
l39f3h:
	adc a,(hl)			;39f3	8e 	. 
	ld c,h			;39f4	4c 	L 
	inc c			;39f5	0c 	. 
	adc a,(hl)			;39f6	8e 	. 
	ld c,h			;39f7	4c 	L 
	jr l3988h		;39f8	18 8e 	. . 
	ld c,h			;39fa	4c 	L 
	inc e			;39fb	1c 	. 
	adc a,(hl)			;39fc	8e 	. 
	ld c,h			;39fd	4c 	L 
	inc h			;39fe	24 	$ 
	sub h			;39ff	94 	. 
	ld c,h			;3a00	4c 	L 
	inc b			;3a01	04 	. 
	sub h			;3a02	94 	. 
	ld c,h			;3a03	4c 	L 
	inc c			;3a04	0c 	. 
	sub h			;3a05	94 	. 
	ld c,h			;3a06	4c 	L 
	inc d			;3a07	14 	. 
	inc d			;3a08	14 	. 
	ld c,h			;3a09	4c 	L 
l3a0ah:
	inc e			;3a0a	1c 	. 
	sub l			;3a0b	95 	. 
	ld b,h			;3a0c	44 	D 
	ld bc,04495h		;3a0d	01 95 44 	. . D 
	add hl,bc			;3a10	09 	. 
	ld d,044h		;3a11	16 44 	. D 
	ex af,af'			;3a13	08 	. 
	ld d,044h		;3a14	16 44 	. D 
	djnz l39b1h		;3a16	10 99 	. . 
	ld b,h			;3a18	44 	D 
	djnz l3a34h		;3a19	10 19 	. . 
	ld b,h			;3a1b	44 	D 
	jr l39bah		;3a1c	18 9c 	. . 
	ld d,h			;3a1e	54 	T 
	ld hl,0549ch		;3a1f	21 9c 54 	! . T 
	nop			;3a22	00 	. 
	sbc a,h			;3a23	9c 	. 
	ld d,h			;3a24	54 	T 
	inc b			;3a25	04 	. 
	sbc a,h			;3a26	9c 	. 
	ld d,h			;3a27	54 	T 
	ex af,af'			;3a28	08 	. 
	sbc a,h			;3a29	9c 	. 
	ld d,h			;3a2a	54 	T 
	inc c			;3a2b	0c 	. 
	sbc a,h			;3a2c	9c 	. 
	ld d,h			;3a2d	54 	T 
	inc d			;3a2e	14 	. 
	sbc a,h			;3a2f	9c 	. 
	ld d,h			;3a30	54 	T 
	jr l39d1h		;3a31	18 9e 	. . 
	ld b,b			;3a33	40 	@ 
l3a34h:
	nop			;3a34	00 	. 
	ld e,040h		;3a35	1e 40 	. @ 
	inc c			;3a37	0c 	. 
	ld (l0054h),hl		;3a38	22 54 00 	" T . 
	and h			;3a3b	a4 	. 
	ld d,b			;3a3c	50 	P 
	dec e			;3a3d	1d 	. 
	and h			;3a3e	a4 	. 
	ld d,b			;3a3f	50 	P 
	ld de,048a4h		;3a40	11 a4 48 	. . H 
	ex af,af'			;3a43	08 	. 
	and h			;3a44	a4 	. 
	ld c,b			;3a45	48 	H 
	inc d			;3a46	14 	. 
	and h			;3a47	a4 	. 
	ld c,b			;3a48	48 	H 
	jr l3a6fh		;3a49	18 24 	. $ 
	ld c,b			;3a4b	48 	H 
	jr nz,l39f3h		;3a4c	20 a5 	  . 
	ld e,h			;3a4e	5c 	\ 
	ld bc,05ca5h		;3a4f	01 a5 5c 	. . \ 
	dec d			;3a52	15 	. 
	and l			;3a53	a5 	. 
	ld e,h			;3a54	5c 	\ 
	dec c			;3a55	0d 	. 
	and l			;3a56	a5 	. 
	ld e,h			;3a57	5c 	\ 
	dec h			;3a58	25 	% 
	and (hl)			;3a59	a6 	. 
	ld e,b			;3a5a	58 	X 
	inc d			;3a5b	14 	. 
	and (hl)			;3a5c	a6 	. 
	ld e,h			;3a5d	5c 	\ 
	jr nz,l3a0ah		;3a5e	20 aa 	  . 
	ld b,h			;3a60	44 	D 
	nop			;3a61	00 	. 
	xor d			;3a62	aa 	. 
	ld b,h			;3a63	44 	D 
	inc b			;3a64	04 	. 
	ld hl,(l0c44h)		;3a65	2a 44 0c 	* D . 
	xor h			;3a68	ac 	. 
	ld c,h			;3a69	4c 	L 
	add hl,bc			;3a6a	09 	. 
	inc l			;3a6b	2c 	, 
	jr c,l3a76h		;3a6c	38 08 	8 . 
	or h			;3a6e	b4 	. 
l3a6fh:
	ld d,h			;3a6f	54 	T 
	ld hl,05cb4h		;3a70	21 b4 5c 	! . \ 
	add hl,de			;3a73	19 	. 
	or h			;3a74	b4 	. 
	ld d,h			;3a75	54 	T 
l3a76h:
	inc b			;3a76	04 	. 
	or h			;3a77	b4 	. 
	ld d,h			;3a78	54 	T 
	inc c			;3a79	0c 	. 
	or h			;3a7a	b4 	. 
	ld d,h			;3a7b	54 	T 
	djnz $-74		;3a7c	10 b4 	. . 
l3a7eh:
	ld d,h			;3a7e	54 	T 
	inc e			;3a7f	1c 	. 
	or h			;3a80	b4 	. 
	ld d,h			;3a81	54 	T 
	inc h			;3a82	24 	$ 
	or l			;3a83	b5 	. 
	ld d,h			;3a84	54 	T 
	dec c			;3a85	0d 	. 
	or (hl)			;3a86	b6 	. 
	ld d,h			;3a87	54 	T 
	inc b			;3a88	04 	. 
	or (hl)			;3a89	b6 	. 
	ld d,h			;3a8a	54 	T 
	ex af,af'			;3a8b	08 	. 
	or (hl)			;3a8c	b6 	. 
	ld d,h			;3a8d	54 	T 
	inc d			;3a8e	14 	. 
	ld (hl),054h		;3a8f	36 54 	6 T 
	jr nz,l3acch		;3a91	20 39 	  9 
l3a93h:
	ld d,h			;3a93	54 	T 
	inc b			;3a94	04 	. 
	cp h			;3a95	bc 	. 
	ld e,h			;3a96	5c 	\ 
	nop			;3a97	00 	. 
	inc a			;3a98	3c 	< 
	ld e,h			;3a99	5c 	\ 
	ex af,af'			;3a9a	08 	. 
	cp (hl)			;3a9b	be 	. 
	ld e,h			;3a9c	5c 	\ 
	nop			;3a9d	00 	. 
	cp (hl)			;3a9e	be 	. 
	ld e,h			;3a9f	5c 	\ 
	ex af,af'			;3aa0	08 	. 
	cp (hl)			;3aa1	be 	. 
	ld e,h			;3aa2	5c 	\ 
	inc c			;3aa3	0c 	. 
	ld a,05ch		;3aa4	3e 5c 	> \ 
	inc d			;3aa6	14 	. 
	cp (hl)			;3aa7	be 	. 
	ld e,h			;3aa8	5c 	\ 
	dec h			;3aa9	25 	% 
	pop bc			;3aaa	c1 	. 
	ld b,h			;3aab	44 	D 
	inc b			;3aac	04 	. 
	pop bc			;3aad	c1 	. 
	ld d,h			;3aae	54 	T 
	inc c			;3aaf	0c 	. 
	pop bc			;3ab0	c1 	. 
	ld d,h			;3ab1	54 	T 
	inc d			;3ab2	14 	. 
	pop bc			;3ab3	c1 	. 
	ld d,h			;3ab4	54 	T 
	inc e			;3ab5	1c 	. 
	pop bc			;3ab6	c1 	. 
	ld d,h			;3ab7	54 	T 
	jr nz,l3a7eh		;3ab8	20 c4 	  . 
	ld d,h			;3aba	54 	T 
	dec b			;3abb	05 	. 
	call nz,sub_1950h		;3abc	c4 50 19 	. P . 
	call nz,l0048h		;3abf	c4 48 00 	. H . 
	call nz,sub_0848h		;3ac2	c4 48 08 	. H . 
	call nz,l1048h		;3ac5	c4 48 10 	. H . 
	call nz,sub_1448h		;3ac8	c4 48 14 	. H . 
	ld b,h			;3acb	44 	D 
l3acch:
	ld c,b			;3acc	48 	H 
	jr nz,l3a93h		;3acd	20 c4 	  . 
	ld d,h			;3acf	54 	T 
	ld de,054c4h		;3ad0	11 c4 54 	. . T 
	dec e			;3ad3	1d 	. 
	rst 0			;3ad4	c7 	. 
	ld c,b			;3ad5	48 	H 
	nop			;3ad6	00 	. 
	rst 0			;3ad7	c7 	. 
	ld c,b			;3ad8	48 	H 
l3ad9h:
	ex af,af'			;3ad9	08 	. 
	rst 0			;3ada	c7 	. 
	ld c,b			;3adb	48 	H 
	inc c			;3adc	0c 	. 
	rst 0			;3add	c7 	. 
	ld c,b			;3ade	48 	H 
	inc d			;3adf	14 	. 
	rst 0			;3ae0	c7 	. 
	ld c,b			;3ae1	48 	H 
	inc e			;3ae2	1c 	. 
	rst 0			;3ae3	c7 	. 
	ld c,b			;3ae4	48 	H 
	inc h			;3ae5	24 	$ 
	call z,sub_0038h		;3ae6	cc 38 00 	. 8 . 
	call z,sub_1038h		;3ae9	cc 38 10 	. 8 . 
	call z,sub_1838h		;3aec	cc 38 18 	. 8 . 
	call z,sub_1c38h		;3aef	cc 38 1c 	. 8 . 
	call z,sub_2438h		;3af2	cc 38 24 	. 8 $ 
	ld c,(hl)			;3af5	4e 	N 
	ld c,h			;3af6	4c 	L 
	ex af,af'			;3af7	08 	. 
	ld c,(hl)			;3af8	4e 	N 
	ld c,h			;3af9	4c 	L 
	inc c			;3afa	0c 	. 
	ret nc			;3afb	d0 	. 
	ld c,h			;3afc	4c 	L 
	nop			;3afd	00 	. 
	pop de			;3afe	d1 	. 
	ld c,h			;3aff	4c 	L 
	inc c			;3b00	0c 	. 
	pop de			;3b01	d1 	. 
	ld c,h			;3b02	4c 	L 
	jr l3ad9h		;3b03	18 d4 	. . 
	ld c,h			;3b05	4c 	L 
	add hl,bc			;3b06	09 	. 
	ld d,h			;3b07	54 	T 
	ld b,h			;3b08	44 	D 
	ld hl,040d4h		;3b09	21 d4 40 	! . @ 
	add hl,de			;3b0c	19 	. 
	call nc,l0438h		;3b0d	d4 38 04 	. 8 . 
	call nc,sub_083ch		;3b10	d4 3c 08 	. < . 
	call nc,sub_1038h		;3b13	d4 38 10 	. 8 . 
	push de			;3b16	d5 	. 
	ld b,b			;3b17	40 	@ 
	ld bc,044d5h		;3b18	01 d5 44 	. . D 
	ld de,048d5h		;3b1b	11 d5 48 	. . H 
	dec e			;3b1e	1d 	. 
	push de			;3b1f	d5 	. 
	ld b,b			;3b20	40 	@ 
	dec b			;3b21	05 	. 
	push de			;3b22	d5 	. 
	jr c,l3b31h		;3b23	38 0c 	8 . 
	push de			;3b25	d5 	. 
	ld b,h			;3b26	44 	D 
	dec d			;3b27	15 	. 
	push de			;3b28	d5 	. 
	ld b,h			;3b29	44 	D 
	dec c			;3b2a	0d 	. 
	in a,(054h)		;3b2b	db 54 	. T 
	nop			;3b2d	00 	. 
	in a,(054h)		;3b2e	db 54 	. T 
	ex af,af'			;3b30	08 	. 
l3b31h:
	in a,(054h)		;3b31	db 54 	. T 
	inc c			;3b33	0c 	. 
	in a,(040h)		;3b34	db 40 	. @ 
	inc b			;3b36	04 	. 
	in a,(040h)		;3b37	db 40 	. @ 
	inc d			;3b39	14 	. 
	ld e,h			;3b3a	5c 	\ 
	ld d,(hl)			;3b3b	56 	V 
	ld (bc),a			;3b3c	02 	. 
	ld a,a			;3b3d	7f 	 
	jr nc,$+37		;3b3e	30 23 	0 # 
	inc (hl)			;3b40	34 	4 
	nop			;3b41	00 	. 
	jr nc,l3b46h		;3b42	30 02 	0 . 
	dec l			;3b44	2d 	- 
	nop			;3b45	00 	. 
l3b46h:
	jr nc,l3b48h		;3b46	30 00 	0 . 
l3b48h:
	jr nz,l3b4eh		;3b48	20 04 	  . 
	ld d,b			;3b4a	50 	P 
	inc b			;3b4b	04 	. 
	ld b,b			;3b4c	40 	@ 
	ld (bc),a			;3b4d	02 	. 
l3b4eh:
	dec hl			;3b4e	2b 	+ 
	nop			;3b4f	00 	. 
	dec hl			;3b50	2b 	+ 
	inc bc			;3b51	03 	. 
	ld h,b			;3b52	60 	` 
	inc bc			;3b53	03 	. 
	inc a			;3b54	3c 	< 
	inc bc			;3b55	03 	. 
	ld b,h			;3b56	44 	D 
	nop			;3b57	00 	. 
	dec l			;3b58	2d 	- 
	dec b			;3b59	05 	. 
	ld (hl),h			;3b5a	74 	t 
	dec bc			;3b5b	0b 	. 
	jr nz,$+19		;3b5c	20 11 	  . 
	inc l			;3b5e	2c 	, 
	dec b			;3b5f	05 	. 
	ld c,h			;3b60	4c 	L 
	dec b			;3b61	05 	. 
	jr nz,l3b64h		;3b62	20 00 	  . 
l3b64h:
	inc h			;3b64	24 	$ 
	dec b			;3b65	05 	. 
	jr nz,l3b6dh		;3b66	20 05 	  . 
	jr nc,l3b6eh		;3b68	30 04 	0 . 
	ld b,h			;3b6a	44 	D 
	inc b			;3b6b	04 	. 
	ld h,b			;3b6c	60 	` 
l3b6dh:
	inc b			;3b6d	04 	. 
l3b6eh:
	djnz l3b7ah		;3b6e	10 0a 	. . 
	inc l			;3b70	2c 	, 
	dec bc			;3b71	0b 	. 
	inc (hl)			;3b72	34 	4 
	add hl,bc			;3b73	09 	. 
	inc e			;3b74	1c 	. 
	ld sp,l0824h		;3b75	31 24 08 	1 $ . 
	inc l			;3b78	2c 	, 
	inc de			;3b79	13 	. 
l3b7ah:
	inc l			;3b7a	2c 	, 
	add hl,bc			;3b7b	09 	. 
	inc d			;3b7c	14 	. 
	ld de,l131ch		;3b7d	11 1c 13 	. . . 
	inc (hl)			;3b80	34 	4 
	djnz l3bc3h		;3b81	10 40 	. @ 
	djnz l3bc1h		;3b83	10 3c 	. < 
	djnz l3b97h		;3b85	10 10 	. . 
	ld de,l0a14h		;3b87	11 14 0a 	. . . 
	inc (hl)			;3b8a	34 	4 
	dec b			;3b8b	05 	. 
	inc (hl)			;3b8c	34 	4 
	ld (bc),a			;3b8d	02 	. 
	inc l			;3b8e	2c 	, 
	ld (bc),a			;3b8f	02 	. 
	inc l			;3b90	2c 	, 
	nop			;3b91	00 	. 
	ld d,h			;3b92	54 	T 
	nop			;3b93	00 	. 
	inc l			;3b94	2c 	, 
	inc bc			;3b95	03 	. 
	ld b,h			;3b96	44 	D 
l3b97h:
	dec b			;3b97	05 	. 
	inc (hl)			;3b98	34 	4 
	ld (l2218h),hl		;3b99	22 18 22 	" . " 
	inc l			;3b9c	2c 	, 
	ld (l1e2ch),hl		;3b9d	22 2c 1e 	" , . 
	inc h			;3ba0	24 	$ 
	ld (l102ch),hl		;3ba1	22 2c 10 	" , . 
	dec l			;3ba4	2d 	- 
	ld e,01ch		;3ba5	1e 1c 	. . 
	ld c,024h		;3ba7	0e 24 	. $ 
	djnz l3bc7h		;3ba9	10 1c 	. . 
	ld hl,(sub_0038h)		;3bab	2a 38 00 	* 8 . 
	ld d,h			;3bae	54 	T 
	inc b			;3baf	04 	. 
	inc h			;3bb0	24 	$ 
	ld hl,(l0134h)		;3bb1	2a 34 01 	* 4 . 
	jr nc,$+7		;3bb4	30 05 	0 . 
	jr nc,l3bb9h		;3bb6	30 01 	0 . 
	inc l			;3bb8	2c 	, 
l3bb9h:
	ld bc,l0244h		;3bb9	01 44 02 	. D . 
	ld b,h			;3bbc	44 	D 
	ld bc,l0f24h		;3bbd	01 24 0f 	. $ . 
	inc l			;3bc0	2c 	, 
l3bc1h:
	ld c,01ch		;3bc1	0e 1c 	. . 
l3bc3h:
	inc bc			;3bc3	03 	. 
	inc h			;3bc4	24 	$ 
	inc de			;3bc5	13 	. 
	inc (hl)			;3bc6	34 	4 
l3bc7h:
	inc de			;3bc7	13 	. 
	inc a			;3bc8	3c 	< 
	dec b			;3bc9	05 	. 
	inc d			;3bca	14 	. 
	jr $+46		;3bcb	18 2c 	. , 
	rla			;3bcd	17 	. 
	inc d			;3bce	14 	. 
	dec d			;3bcf	15 	. 
	inc l			;3bd0	2c 	, 
	ld a,(de)			;3bd1	1a 	. 
	inc h			;3bd2	24 	$ 
	dec d			;3bd3	15 	. 
	inc h			;3bd4	24 	$ 
	inc b			;3bd5	04 	. 
	ld e,h			;3bd6	5c 	\ 
	inc b			;3bd7	04 	. 
	ld h,h			;3bd8	64 	d 
	ld (de),a			;3bd9	12 	. 
	inc a			;3bda	3c 	< 
	add hl,bc			;3bdb	09 	. 
	inc l			;3bdc	2c 	, 
	rlca			;3bdd	07 	. 
	inc h			;3bde	24 	$ 
	add hl,bc			;3bdf	09 	. 
	inc (hl)			;3be0	34 	4 
	ex af,af'			;3be1	08 	. 
	ld d,b			;3be2	50 	P 
	inc b			;3be3	04 	. 
	inc h			;3be4	24 	$ 
	ld a,(de)			;3be5	1a 	. 
	inc h			;3be6	24 	$ 
	ld a,(de)			;3be7	1a 	. 
	inc h			;3be8	24 	$ 
	ld a,(de)			;3be9	1a 	. 
	inc (hl)			;3bea	34 	4 
	ld b,034h		;3beb	06 34 	. 4 
	ld e,03ch		;3bed	1e 3c 	. < 
	ld (bc),a			;3bef	02 	. 
	inc e			;3bf0	1c 	. 
	djnz l3c07h		;3bf1	10 14 	. . 
	ld c,048h		;3bf3	0e 48 	. H 
	djnz l3c13h		;3bf5	10 1c 	. . 
	inc l			;3bf7	2c 	, 
	jr l3c1bh		;3bf8	18 21 	. ! 
	inc h			;3bfa	24 	$ 
	nop			;3bfb	00 	. 
	inc h			;3bfc	24 	$ 
	dec hl			;3bfd	2b 	+ 
	inc h			;3bfe	24 	$ 
	nop			;3bff	00 	. 
l3c00h:
	jr c,$+18		;3c00	38 10 	8 . 
	inc e			;3c02	1c 	. 
	dec l			;3c03	2d 	- 
sub_3c04h:
	inc (hl)			;3c04	34 	4 
	ld l,03ch		;3c05	2e 3c 	. < 
l3c07h:
	ld l,048h		;3c07	2e 48 	. H 
	ld l,058h		;3c09	2e 58 	. X 
	inc hl			;3c0b	23 	# 
	ld b,b			;3c0c	40 	@ 
	add hl,hl			;3c0d	29 	) 
	jr z,l3c39h		;3c0e	28 29 	( ) 
	inc h			;3c10	24 	$ 
	ld l,02ch		;3c11	2e 2c 	. , 
l3c13h:
	ld hl,l1c23h+1		;3c13	21 24 1c 	! $ . 
	inc e			;3c16	1c 	. 
	inc e			;3c17	1c 	. 
	inc a			;3c18	3c 	< 
	inc de			;3c19	13 	. 
	inc (hl)			;3c1a	34 	4 
l3c1bh:
	ld hl,l0c1ch		;3c1b	21 1c 0c 	! . . 
l3c1eh:
	inc h			;3c1e	24 	$ 
	cpl			;3c1f	2f 	/ 
	ld d,b			;3c20	50 	P 
l3c21h:
	jr nc,$+30		;3c21	30 1c 	0 . 
	ld (l3334h),a		;3c23	32 34 33 	2 4 3 
	inc a			;3c26	3c 	< 
	inc (hl)			;3c27	34 	4 
	nop			;3c28	00 	. 
	dec (hl)			;3c29	35 	5 
	dec e			;3c2a	1d 	. 
	ld e,00fh		;3c2b	1e 0f 	. . 
	rlca			;3c2d	07 	. 
	ld c,00dh		;3c2e	0e 0d 	. . 
	ld h,035h		;3c30	26 35 	& 5 
l3c32h:
	inc hl			;3c32	23 	# 
	ld (hl),b			;3c33	70 	p 
	inc de			;3c34	13 	. 
	dec de			;3c35	1b 	. 
	ld b,01ch		;3c36	06 1c 	. . 
	ld e,b			;3c38	58 	X 
l3c39h:
	ld (bc),a			;3c39	02 	. 
	inc bc			;3c3a	03 	. 
	jr z,l3c4dh		;3c3b	28 10 	( . 
	ld de,0415eh		;3c3d	11 5e 41 	. ^ A 
	ld a,03dh		;3c40	3e 3d 	> = 
	inc b			;3c42	04 	. 
	dec d			;3c43	15 	. 
	inc c			;3c44	0c 	. 
	cpl			;3c45	2f 	/ 
	ld h,e			;3c46	63 	c 
	ld l,c			;3c47	69 	i 
	ld (hl),l			;3c48	75 	u 
	rra			;3c49	1f 	. 
	jr nz,l3c6dh		;3c4a	20 21 	  ! 
	rrca			;3c4c	0f 	. 
l3c4dh:
	rlca			;3c4d	07 	. 
	ld c,00dh		;3c4e	0e 0d 	. . 
	ld h,023h		;3c50	26 23 	& # 
	ld (l1b13h),hl		;3c52	22 13 1b 	" . . 
l3c55h:
	ld b,01ch		;3c55	06 1c 	. . 
	ld e,b			;3c57	58 	X 
sub_3c58h:
	jr z,$+18		;3c58	28 10 	( . 
	ld de,0415eh		;3c5a	11 5e 41 	. ^ A 
	ld a,03dh		;3c5d	3e 3d 	> = 
	inc b			;3c5f	04 	. 
	dec d			;3c60	15 	. 
	inc c			;3c61	0c 	. 
	cpl			;3c62	2f 	/ 
	ld h,e			;3c63	63 	c 
	ld (hl),h			;3c64	74 	t 
	dec e			;3c65	1d 	. 
	ld e,020h		;3c66	1e 20 	.   
	ld hl,l070fh		;3c68	21 0f 07 	! . . 
	ld c,00dh		;3c6b	0e 0d 	. . 
l3c6dh:
	inc c			;3c6d	0c 	. 
	ld b,h			;3c6e	44 	D 
	ld b,a			;3c6f	47 	G 
	ld c,a			;3c70	4f 	O 
	dec b			;3c71	05 	. 
	inc hl			;3c72	23 	# 
	ld e,(hl)			;3c73	5e 	^ 
	ld (05824h),hl		;3c74	22 24 58 	" $ X 
	ld (bc),a			;3c77	02 	. 
	inc bc			;3c78	03 	. 
	jr z,l3c8bh		;3c79	28 10 	( . 
	dec a			;3c7b	3d 	= 
	dec d			;3c7c	15 	. 
	inc b			;3c7d	04 	. 
	ld de,l0f1fh		;3c7e	11 1f 0f 	. . . 
	rlca			;3c81	07 	. 
	ld c,00dh		;3c82	0e 0d 	. . 
	ld b,h			;3c84	44 	D 
	ld b,a			;3c85	47 	G 
	ld c,a			;3c86	4f 	O 
	dec b			;3c87	05 	. 
	inc h			;3c88	24 	$ 
	jr c,l3c9eh		;3c89	38 13 	8 . 
l3c8bh:
	ld h,a			;3c8b	67 	g 
	dec de			;3c8c	1b 	. 
	ld b,01ch		;3c8d	06 1c 	. . 
	ld e,b			;3c8f	58 	X 
	jr z,l3cd0h		;3c90	28 3e 	( > 
	dec a			;3c92	3d 	= 
	inc hl			;3c93	23 	# 
	dec e			;3c94	1d 	. 
	ld e,01fh		;3c95	1e 1f 	. . 
	jr nz,l3cbah		;3c97	20 21 	  ! 
	rrca			;3c99	0f 	. 
	rlca			;3c9a	07 	. 
	ld c,00dh		;3c9b	0e 0d 	. . 
	ld b,h			;3c9d	44 	D 
l3c9eh:
	ld b,a			;3c9e	47 	G 
	ld c,a			;3c9f	4f 	O 
	dec b			;3ca0	05 	. 
	inc hl			;3ca1	23 	# 
	ld (hl),b			;3ca2	70 	p 
	inc h			;3ca3	24 	$ 
	inc de			;3ca4	13 	. 
	ld b,01ch		;3ca5	06 1c 	. . 
	ld e,b			;3ca7	58 	X 
	ld (bc),a			;3ca8	02 	. 
	inc bc			;3ca9	03 	. 
	jr z,$+19		;3caa	28 11 	( . 
	ld a,03dh		;3cac	3e 3d 	> = 
	cpl			;3cae	2f 	/ 
	inc b			;3caf	04 	. 
	dec d			;3cb0	15 	. 
	inc c			;3cb1	0c 	. 
	ld b,c			;3cb2	41 	A 
	ld h,e			;3cb3	63 	c 
	dec e			;3cb4	1d 	. 
	ld e,01fh		;3cb5	1e 1f 	. . 
	jr nz,l3cc8h		;3cb7	20 0f 	  . 
	rlca			;3cb9	07 	. 
l3cbah:
	ld c,00ch		;3cba	0e 0c 	. . 
	djnz l3ccbh		;3cbc	10 0d 	. . 
	ld (hl),h			;3cbe	74 	t 
	inc hl			;3cbf	23 	# 
	ld (bc),a			;3cc0	02 	. 
	inc bc			;3cc1	03 	. 
	dec de			;3cc2	1b 	. 
	inc e			;3cc3	1c 	. 
sub_3cc4h:
	ld h,037h		;3cc4	26 37 	& 7 
	inc b			;3cc6	04 	. 
	dec d			;3cc7	15 	. 
l3cc8h:
	ld h,a			;3cc8	67 	g 
	ld b,03eh		;3cc9	06 3e 	. > 
l3ccbh:
	ld e,b			;3ccb	58 	X 
	inc de			;3ccc	13 	. 
	ld h,h			;3ccd	64 	d 
	ld h,l			;3cce	65 	e 
	daa			;3ccf	27 	' 
l3cd0h:
	ld hl,0726dh		;3cd0	21 6d 72 	! m r 
	dec e			;3cd3	1d 	. 
	dec a			;3cd4	3d 	= 
	inc b			;3cd5	04 	. 
	ld c,b			;3cd6	48 	H 
	ld c,d			;3cd7	4a 	J 
	jr z,l3ce9h		;3cd8	28 0f 	( . 
	ld b,049h		;3cda	06 49 	. I 
	rlca			;3cdc	07 	. 
	ld e,b			;3cdd	58 	X 
	inc hl			;3cde	23 	# 
	jr c,l3d07h		;3cdf	38 26 	8 & 
	dec d			;3ce1	15 	. 
	inc bc			;3ce2	03 	. 
	ld (bc),a			;3ce3	02 	. 
	ld (de),a			;3ce4	12 	. 
	ld b,d			;3ce5	42 	B 
	ld (hl),b			;3ce6	70 	p 
	ld a,014h		;3ce7	3e 14 	> . 
l3ce9h:
	ld e,(hl)			;3ce9	5e 	^ 
	ld e,a			;3cea	5f 	_ 
	rra			;3ceb	1f 	. 
	dec c			;3cec	0d 	. 
	inc e			;3ced	1c 	. 
	cpl			;3cee	2f 	/ 
	inc h			;3cef	24 	$ 
	ld h,a			;3cf0	67 	g 
	dec a			;3cf1	3d 	= 
	inc b			;3cf2	04 	. 
	ld c,b			;3cf3	48 	H 
	ld c,d			;3cf4	4a 	J 
	jr z,$+17		;3cf5	28 0f 	( . 
	ld b,049h		;3cf7	06 49 	. I 
	rlca			;3cf9	07 	. 
	ld e,b			;3cfa	58 	X 
	inc hl			;3cfb	23 	# 
sub_3cfch:
	ld h,l			;3cfc	65 	e 
	ld h,015h		;3cfd	26 15 	& . 
	inc bc			;3cff	03 	. 
	ld (bc),a			;3d00	02 	. 
	ld (de),a			;3d01	12 	. 
	ld e,042h		;3d02	1e 42 	. B 
	ld (hl),b			;3d04	70 	p 
	ld a,014h		;3d05	3e 14 	> . 
l3d07h:
	ld e,(hl)			;3d07	5e 	^ 
	ld e,a			;3d08	5f 	_ 
	dec c			;3d09	0d 	. 
	inc e			;3d0a	1c 	. 
	inc sp			;3d0b	33 	3 
	jr nz,$+35		;3d0c	20 21 	  ! 
	cpl			;3d0e	2f 	/ 
	ld l,h			;3d0f	6c 	l 
	dec a			;3d10	3d 	= 
	inc b			;3d11	04 	. 
	ld c,b			;3d12	48 	H 
	ld c,d			;3d13	4a 	J 
	jr z,l3d25h		;3d14	28 0f 	( . 
	ld b,049h		;3d16	06 49 	. I 
	rlca			;3d18	07 	. 
	ld e,b			;3d19	58 	X 
	inc hl			;3d1a	23 	# 
	ld h,l			;3d1b	65 	e 
	ld h,015h		;3d1c	26 15 	& . 
	ld b,d			;3d1e	42 	B 
	ld a,05eh		;3d1f	3e 5e 	> ^ 
	ld e,a			;3d21	5f 	_ 
	dec c			;3d22	0d 	. 
	inc e			;3d23	1c 	. 
	inc sp			;3d24	33 	3 
l3d25h:
	jr nz,l3d48h		;3d25	20 21 	  ! 
	cpl			;3d27	2f 	/ 
	ld l,h			;3d28	6c 	l 
	ld l,(hl)			;3d29	6e 	n 
	ld c,01dh		;3d2a	0e 1d 	. . 
	ld e,01fh		;3d2c	1e 1f 	. . 
	jr nz,l3d51h		;3d2e	20 21 	  ! 
	rrca			;3d30	0f 	. 
	rlca			;3d31	07 	. 
	ld c,00dh		;3d32	0e 0d 	. . 
	inc c			;3d34	0c 	. 
	ld bc,l2742h		;3d35	01 42 27 	. B ' 
	dec de			;3d38	1b 	. 
	inc e			;3d39	1c 	. 
	inc (hl)			;3d3a	34 	4 
	scf			;3d3b	37 	7 
	inc hl			;3d3c	23 	# 
	inc b			;3d3d	04 	. 
	ld e,b			;3d3e	58 	X 
	dec h			;3d3f	25 	% 
	ld d,b			;3d40	50 	P 
	ld b,c			;3d41	41 	A 
	inc d			;3d42	14 	. 
	djnz $+42		;3d43	10 28 	. ( 
	ld h,006h		;3d45	26 06 	& . 
	dec a			;3d47	3d 	= 
l3d48h:
	cpl			;3d48	2f 	/ 
	dec e			;3d49	1d 	. 
	rlca			;3d4a	07 	. 
	ld de,l1b01h		;3d4b	11 01 1b 	. . . 
	inc hl			;3d4e	23 	# 
	inc e			;3d4f	1c 	. 
	inc b			;3d50	04 	. 
l3d51h:
	dec a			;3d51	3d 	= 
	dec c			;3d52	0d 	. 
	inc c			;3d53	0c 	. 
	ld h,01eh		;3d54	26 1e 	& . 
	ld b,c			;3d56	41 	A 
	ld b,027h		;3d57	06 27 	. ' 
	ld e,b			;3d59	58 	X 
	scf			;3d5a	37 	7 
	rra			;3d5b	1f 	. 
	ld (01528h),hl		;3d5c	22 28 15 	" ( . 
	jr nz,l3d73h		;3d5f	20 12 	  . 
	ld hl,00f0eh		;3d61	21 0e 0f 	! . . 
	cpl			;3d64	2f 	/ 
l3d65h:
	ld e,(hl)			;3d65	5e 	^ 
	ld (hl),b			;3d66	70 	p 
	dec e			;3d67	1d 	. 
	rlca			;3d68	07 	. 
	djnz l3d78h		;3d69	10 0d 	. . 
	ld bc,0281ch		;3d6b	01 1c 28 	. . ( 
	rrca			;3d6e	0f 	. 
	ld b,d			;3d6f	42 	B 
	inc hl			;3d70	23 	# 
	ld b,00eh		;3d71	06 0e 	. . 
l3d73h:
	inc b			;3d73	04 	. 
	ld (bc),a			;3d74	02 	. 
	inc bc			;3d75	03 	. 
	inc c			;3d76	0c 	. 
	ld b,c			;3d77	41 	A 
l3d78h:
	ld h,03dh		;3d78	26 3d 	& = 
	daa			;3d7a	27 	' 
	ld e,(hl)			;3d7b	5e 	^ 
	inc h			;3d7c	24 	$ 
	rra			;3d7d	1f 	. 
	dec d			;3d7e	15 	. 
	ld (l3e58h),hl		;3d7f	22 58 3e 	" X > 
	ld h,e			;3d82	63 	c 
	ld h,a			;3d83	67 	g 
	rlca			;3d84	07 	. 
	djnz l3d94h		;3d85	10 0d 	. . 
	ld bc,0281ch		;3d87	01 1c 28 	. . ( 
	rrca			;3d8a	0f 	. 
	ld b,d			;3d8b	42 	B 
	inc hl			;3d8c	23 	# 
	ld b,00eh		;3d8d	06 0e 	. . 
	inc b			;3d8f	04 	. 
	ld (bc),a			;3d90	02 	. 
	inc bc			;3d91	03 	. 
	ld e,00ch		;3d92	1e 0c 	. . 
l3d94h:
	ld h,03dh		;3d94	26 3d 	& = 
	daa			;3d96	27 	' 
	ld e,(hl)			;3d97	5e 	^ 
	inc h			;3d98	24 	$ 
	dec d			;3d99	15 	. 
	ld (sub_2058h),hl		;3d9a	22 58 20 	" X   
	ld a,021h		;3d9d	3e 21 	> ! 
	jr c,l3e04h		;3d9f	38 63 	8 c 
	ld (hl),e			;3da1	73 	s 
	dec e			;3da2	1d 	. 
	djnz $+9		;3da3	10 07 	. . 
	rrca			;3da5	0f 	. 
	inc hl			;3da6	23 	# 
	inc b			;3da7	04 	. 
	inc h			;3da8	24 	$ 
	inc bc			;3da9	03 	. 
	ld bc,l3802h		;3daa	01 02 38 	. . 8 
	jr z,$+16		;3dad	28 0e 	( . 
	ld b,014h		;3daf	06 14 	. . 
	inc c			;3db1	0c 	. 
	ld b,c			;3db2	41 	A 
	dec a			;3db3	3d 	= 
	ld e,011h		;3db4	1e 11 	. . 
	daa			;3db6	27 	' 
	dec de			;3db7	1b 	. 
	cpl			;3db8	2f 	/ 
	rra			;3db9	1f 	. 
	dec d			;3dba	15 	. 
	ld (de),a			;3dbb	12 	. 
	jr nz,l3e1dh		;3dbc	20 5f 	  _ 
	ld e,(hl)			;3dbe	5e 	^ 
	inc e			;3dbf	1c 	. 
	ld h,e			;3dc0	63 	c 
	ld hl,l071dh		;3dc1	21 1d 07 	! . . 
	inc e			;3dc4	1c 	. 
	inc (hl)			;3dc5	34 	4 
	djnz l3dd5h		;3dc6	10 0d 	. . 
	inc b			;3dc8	04 	. 
	inc hl			;3dc9	23 	# 
	dec d			;3dca	15 	. 
	ld (bc),a			;3dcb	02 	. 
	ld (l0306h),hl		;3dcc	22 06 03 	" . . 
	ld h,01eh		;3dcf	26 1e 	& . 
	ld b,c			;3dd1	41 	A 
	daa			;3dd2	27 	' 
	dec a			;3dd3	3d 	= 
	ld e,b			;3dd4	58 	X 
l3dd5h:
	scf			;3dd5	37 	7 
	ld h,l			;3dd6	65 	e 
	rra			;3dd7	1f 	. 
	jr nz,$+49		;3dd8	20 2f 	  / 
	ld c,h			;3dda	4c 	L 
	ld bc,05e13h		;3ddb	01 13 5e 	. . ^ 
	ld e,a			;3dde	5f 	_ 
	inc d			;3ddf	14 	. 
	ld hl,l071dh		;3de0	21 1d 07 	! . . 
	inc e			;3de3	1c 	. 
	inc (hl)			;3de4	34 	4 
	djnz l3df4h		;3de5	10 0d 	. . 
	inc b			;3de7	04 	. 
	inc hl			;3de8	23 	# 
	dec d			;3de9	15 	. 
	ld (bc),a			;3dea	02 	. 
	ld (l0306h),hl		;3deb	22 06 03 	" . . 
	ld h,01eh		;3dee	26 1e 	& . 
	ld b,c			;3df0	41 	A 
	daa			;3df1	27 	' 
	dec a			;3df2	3d 	= 
	ld e,b			;3df3	58 	X 
l3df4h:
	scf			;3df4	37 	7 
	ld h,l			;3df5	65 	e 
	cpl			;3df6	2f 	/ 
	ld c,h			;3df7	4c 	L 
	ld bc,05e13h		;3df8	01 13 5e 	. . ^ 
	ld e,a			;3dfb	5f 	_ 
	inc d			;3dfc	14 	. 
	ld h,e			;3dfd	63 	c 
	ld l,l			;3dfe	6d 	m 
	rra			;3dff	1f 	. 
l3e00h:
	jr nz,l3e12h		;3e00	20 10 	  . 
	rlca			;3e02	07 	. 
	rrca			;3e03	0f 	. 
l3e04h:
	dec c			;3e04	0d 	. 
	inc hl			;3e05	23 	# 
	inc b			;3e06	04 	. 
	inc bc			;3e07	03 	. 
	ld bc,l2802h		;3e08	01 02 28 	. . ( 
	ld b,014h		;3e0b	06 14 	. . 
	ld e,(hl)			;3e0d	5e 	^ 
	ld b,c			;3e0e	41 	A 
	daa			;3e0f	27 	' 
	cpl			;3e10	2f 	/ 
	ld (de),a			;3e11	12 	. 
l3e12h:
	inc e			;3e12	1c 	. 
	inc c			;3e13	0c 	. 
sub_3e14h:
	dec h			;3e14	25 	% 
	ld c,050h		;3e15	0e 50 	. P 
	ld c,c			;3e17	49 	I 
	ld e,b			;3e18	58 	X 
	ld c,d			;3e19	4a 	J 
	ld hl,l1d63h		;3e1a	21 63 1d 	! c . 
l3e1dh:
	ld e,010h		;3e1d	1e 10 	. . 
	rlca			;3e1f	07 	. 
l3e20h:
	rrca			;3e20	0f 	. 
l3e21h:
	dec c			;3e21	0d 	. 
	inc hl			;3e22	23 	# 
	inc b			;3e23	04 	. 
	inc h			;3e24	24 	$ 
	inc bc			;3e25	03 	. 
	ld bc,l3802h		;3e26	01 02 38 	. . 8 
	jr z,l3e31h		;3e29	28 06 	( . 
	inc d			;3e2b	14 	. 
	ld b,c			;3e2c	41 	A 
	dec a			;3e2d	3d 	= 
	daa			;3e2e	27 	' 
	dec de			;3e2f	1b 	. 
	dec d			;3e30	15 	. 
l3e31h:
	ld (de),a			;3e31	12 	. 
l3e32h:
	inc e			;3e32	1c 	. 
	inc c			;3e33	0c 	. 
	dec h			;3e34	25 	% 
	ld c,050h		;3e35	0e 50 	. P 
	ld c,c			;3e37	49 	I 
	ld c,d			;3e38	4a 	J 
	ld h,e			;3e39	63 	c 
	dec e			;3e3a	1d 	. 
	djnz $+41		;3e3b	10 27 	. ' 
	inc c			;3e3d	0c 	. 
	ld c,070h		;3e3e	0e 70 	. p 
	inc hl			;3e40	23 	# 
	dec c			;3e41	0d 	. 
	rlca			;3e42	07 	. 
	ld (bc),a			;3e43	02 	. 
	inc bc			;3e44	03 	. 
	inc h			;3e45	24 	$ 
	ld h,l			;3e46	65 	e 
	ld e,b			;3e47	58 	X 
	dec a			;3e48	3d 	= 
	ld e,030h		;3e49	1e 30 	. 0 
	rra			;3e4b	1f 	. 
	jr nz,$+42		;3e4c	20 28 	  ( 
	inc sp			;3e4e	33 	3 
	ld hl,l045eh		;3e4f	21 5e 04 	! ^ . 
	rrca			;3e52	0f 	. 
	inc de			;3e53	13 	. 
	ld d,l			;3e54	55 	U 
	dec d			;3e55	15 	. 
	ld h,h			;3e56	64 	d 
	ld l,a			;3e57	6f 	o 
l3e58h:
	dec e			;3e58	1d 	. 
	ld e,01fh		;3e59	1e 1f 	. . 
	jr nz,l3e6ch		;3e5b	20 0f 	  . 
	rlca			;3e5d	07 	. 
	ld c,00dh		;3e5e	0e 0d 	. . 
	inc c			;3e60	0c 	. 
	inc hl			;3e61	23 	# 
	ld (l1326h),hl		;3e62	22 26 13 	" & . 
	djnz l3e78h		;3e65	10 11 	. . 
	dec a			;3e67	3d 	= 
	inc b			;3e68	04 	. 
	dec d			;3e69	15 	. 
	cpl			;3e6a	2f 	/ 
	ld e,b			;3e6b	58 	X 
l3e6ch:
	jr z,l3ecch		;3e6c	28 5e 	( ^ 
	ld b,c			;3e6e	41 	A 
	dec sp			;3e6f	3b 	; 
	ld b,e			;3e70	43 	C 
	ld d,c			;3e71	51 	Q 
	ld d,d			;3e72	52 	R 
	ld d,(hl)			;3e73	56 	V 
	ld h,d			;3e74	62 	b 
	ld hl,l1e1dh		;3e75	21 1d 1e 	! . . 
l3e78h:
	rra			;3e78	1f 	. 
	jr nz,l3e8ah		;3e79	20 0f 	  . 
	rlca			;3e7b	07 	. 
	ld c,00dh		;3e7c	0e 0d 	. . 
	inc c			;3e7e	0c 	. 
	djnz l3e9ch		;3e7f	10 1b 	. . 
	inc e			;3e81	1c 	. 
	ld b,001h		;3e82	06 01 	. . 
	ld c,(hl)			;3e84	4e 	N 
	ld d,e			;3e85	53 	S 
	inc a			;3e86	3c 	< 
	jr z,$+54		;3e87	28 34 	( 4 
	ld e,b			;3e89	58 	X 
l3e8ah:
	dec a			;3e8a	3d 	= 
	ld hl,l1e1dh		;3e8b	21 1d 1e 	! . . 
	rra			;3e8e	1f 	. 
	jr nz,$+17		;3e8f	20 0f 	  . 
	rlca			;3e91	07 	. 
	ld c,00dh		;3e92	0e 0d 	. . 
	inc c			;3e94	0c 	. 
	inc hl			;3e95	23 	# 
	ld (bc),a			;3e96	02 	. 
	inc bc			;3e97	03 	. 
	dec de			;3e98	1b 	. 
	inc e			;3e99	1c 	. 
	scf			;3e9a	37 	7 
sub_3e9bh:
	ld b,c			;3e9b	41 	A 
l3e9ch:
	ld e,b			;3e9c	58 	X 
	dec a			;3e9d	3d 	= 
	add hl,sp			;3e9e	39 	9 
	ld a,(l2710h)		;3e9f	3a 10 27 	: . ' 
	ld hl,03046h		;3ea2	21 46 30 	! F 0 
l3ea5h:
	ld h,e			;3ea5	63 	c 
	halt			;3ea6	76 	v 
	ld (hl),a			;3ea7	77 	w 
	ld l,b			;3ea8	68 	h 
	ld b,b			;3ea9	40 	@ 
	jr z,$+8		;3eaa	28 06 	( . 
	inc c			;3eac	0c 	. 
	ld a,0ffh		;3ead	3e ff 	> . 
l3eafh:
	ld (hl),a			;3eaf	77 	w 
	add hl,de			;3eb0	19 	. 
	djnz l3eafh		;3eb1	10 fc 	. . 
	ret			;3eb3	c9 	. 
	res 1,(hl)		;3eb4	cb 8e 	. . 
	ld a,(0c134h)		;3eb6	3a 34 c1 	: 4 . 
	sub 00ch		;3eb9	d6 0c 	. . 
	ret z			;3ebb	c8 	. 
	jp nc,06483h		;3ebc	d2 83 64 	. . d 
	neg		;3ebf	ed 44 	. D 
	jp 06497h		;3ec1	c3 97 64 	. . d 
	ld a,(0c128h)		;3ec4	3a 28 c1 	: ( . 
	ld l,a			;3ec7	6f 	o 
	ld h,000h		;3ec8	26 00 	& . 
	ld a,007h		;3eca	3e 07 	> . 
l3ecch:
	call sub_0b09h		;3ecc	cd 09 0b 	. . . 
	ld de,08000h		;3ecf	11 00 80 	. . . 
	add hl,de			;3ed2	19 	. 
	ld a,(hl)			;3ed3	7e 	~ 
	ret			;3ed4	c9 	. 
	ld a,(0c170h)		;3ed5	3a 70 c1 	: p . 
	cp 030h		;3ed8	fe 30 	. 0 
	jr c,l3eeah		;3eda	38 0e 	8 . 
	ld hl,0c16ch		;3edc	21 6c c1 	! l . 
	set 6,(hl)		;3edf	cb f6 	. . 
	ld hl,0c131h		;3ee1	21 31 c1 	! 1 . 
	res 0,(hl)		;3ee4	cb 86 	. . 
	call sub_3e9bh		;3ee6	cd 9b 3e 	. . > 
	ret			;3ee9	c9 	. 
l3eeah:
	ex af,af'			;3eea	08 	. 
	ld a,(0c131h)		;3eeb	3a 31 c1 	: 1 . 
	rra			;3eee	1f 	. 
	ret nc			;3eef	d0 	. 
	ex af,af'			;3ef0	08 	. 
	add a,002h		;3ef1	c6 02 	. . 
	ld c,a			;3ef3	4f 	O 
	and 003h		;3ef4	e6 03 	. . 
	ret nz			;3ef6	c0 	. 
	bit 3,c		;3ef7	cb 59 	. Y 
	jp z,l3ea5h		;3ef9	ca a5 3e 	. . > 
	jp sub_3e9bh		;3efc	c3 9b 3e 	. . > 
	ld hl,(0cb3dh)		;3eff	2a 3d cb 	* = . 
	xor a			;3f02	af 	. 
	or l			;3f03	b5 	. 
	jr nz,l3f08h		;3f04	20 02 	  . 
	or h			;3f06	b4 	. 
	ret z			;3f07	c8 	. 
l3f08h:
	ld c,080h		;3f08	0e 80 	. . 
	rl l		;3f0a	cb 15 	. . 
	rl h		;3f0c	cb 14 	. . 
	rr c		;3f0e	cb 19 	. . 
	sra c		;3f10	cb 29 	. ) 
	ld a,(0cc00h)		;3f12	3a 00 cc 	: . . 
	add a,h			;3f15	84 	. 
	cp 0e0h		;3f16	fe e0 	. . 
	jr c,l3f1bh		;3f18	38 01 	8 . 
	add a,c			;3f1a	81 	. 
l3f1bh:
	ld (0cc00h),a		;3f1b	32 00 cc 	2 . . 
	ret			;3f1e	c9 	. 
	ld a,(0c11fh)		;3f1f	3a 1f c1 	: . . 
	and 03fh		;3f22	e6 3f 	. ? 
	ld c,a			;3f24	4f 	O 
	ld hl,0c174h		;3f25	21 74 c1 	! t . 
	ld a,(0c16ch)		;3f28	3a 6c c1 	: l . 
	rla			;3f2b	17 	. 
	jr c,l3f42h		;3f2c	38 14 	8 . 
	rla			;3f2e	17 	. 
	jr nc,l3f3eh		;3f2f	30 0d 	0 . 
	ld a,(0c178h)		;3f31	3a 78 c1 	: x . 
	bit 2,a		;3f34	cb 57 	. W 
	jr nz,l3f3eh		;3f36	20 06 	  . 
	ld a,(0cc30h)		;3f38	3a 30 cc 	: 0 . 
	rra			;3f3b	1f 	. 
	jr nc,l3f44h		;3f3c	30 06 	0 . 
l3f3eh:
	ld c,000h		;3f3e	0e 00 	. . 
	jr l3f44h		;3f40	18 02 	. . 
l3f42h:
	ld c,008h		;3f42	0e 08 	. . 
l3f44h:
	ld (hl),c			;3f44	71 	q 
	dec l			;3f45	2d 	- 
	ld a,c			;3f46	79 	y 
	xor 0ffh		;3f47	ee ff 	. . 
	or (hl)			;3f49	b6 	. 
	or 00fh		;3f4a	f6 0f 	. . 
	ld (hl),a			;3f4c	77 	w 
	ret			;3f4d	c9 	. 
	ld hl,0c173h		;3f4e	21 73 c1 	! s . 
	res 4,(hl)		;3f51	cb a6 	. . 
	ld hl,0c3a2h		;3f53	21 a2 c3 	! . . 
	bit 7,(hl)		;3f56	cb 7e 	. ~ 
	jr z,l3f62h		;3f58	28 08 	( . 
	ld hl,0c422h		;3f5a	21 22 c4 	! " . 
	bit 7,(hl)		;3f5d	cb 7e 	. ~ 
	jp nz,l3d65h		;3f5f	c2 65 3d 	. e = 
l3f62h:
	ld a,090h		;3f62	3e 90 	> . 
	call sub_0a8fh		;3f64	cd 8f 0a 	. . . 
	set 7,(hl)		;3f67	cb fe 	. . 
	ld hl,0c16bh		;3f69	21 6b c1 	! k . 
	set 1,(hl)		;3f6c	cb ce 	. . 
	ld hl,0c170h		;3f6e	21 70 c1 	! p . 
	ld (hl),000h		;3f71	36 00 	6 . 
	inc l			;3f73	2c 	, 
	ld (hl),014h		;3f74	36 14 	6 . 
	ld a,(0c16bh)		;3f76	3a 6b c1 	: k . 
	bit 2,a		;3f79	cb 57 	. W 
	jr nz,l3f85h		;3f7b	20 08 	  . 
	ld (hl),009h		;3f7d	36 09 	6 . 
	bit 3,a		;3f7f	cb 5f 	. _ 
	jr z,l3f85h		;3f81	28 02 	( . 
	ld (hl),00bh		;3f83	36 0b 	6 . 
l3f85h:
	ld a,(0c170h)		;3f85	3a 70 c1 	: p . 
	or a			;3f88	b7 	. 
	jp z,l3d65h		;3f89	ca 65 3d 	. e = 
	ld c,a			;3f8c	4f 	O 
	and 003h		;3f8d	e6 03 	. . 
	jp nz,l3d65h		;3f8f	c2 65 3d 	. e = 
	ld a,(0c16bh)		;3f92	3a 6b c1 	: k . 
	bit 2,a		;3f95	cb 57 	. W 
	jr nz,l3fa7h		;3f97	20 0e 	  . 
	bit 3,c		;3f99	cb 59 	. Y 
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
	ld hl,0098fh		;3fbd	21 8f 09 	! . . 
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
