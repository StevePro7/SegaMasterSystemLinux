; z80dasm 1.1.5
; command line: z80dasm -a -l -t -g 0x0000 -o disassembly/bank4.asm disassembly/bank4.bin

	org	00000h

l0000h:
	nop			;0000	00 	. 
l0001h:
	nop			;0001	00 	. 
l0002h:
	nop			;0002	00 	. 
	nop			;0003	00 	. 
l0004h:
	ld bc,l0101h		;0004	01 01 01 	. . . 
	ld bc,l0707h		;0007	01 07 07 	. . . 
	rlca			;000a	07 	. 
	rlca			;000b	07 	. 
	rrca			;000c	0f 	. 
	rrca			;000d	0f 	. 
l000eh:
	rrca			;000e	0f 	. 
	rrca			;000f	0f 	. 
	rra			;0010	1f 	. 
	rra			;0011	1f 	. 
	rra			;0012	1f 	. 
	rra			;0013	1f 	. 
	rra			;0014	1f 	. 
	rra			;0015	1f 	. 
	rra			;0016	1f 	. 
	ccf			;0017	3f 	? 
	daa			;0018	27 	' 
	daa			;0019	27 	' 
	daa			;001a	27 	' 
	ccf			;001b	3f 	? 
	ld (hl),d			;001c	72 	r 
l001dh:
	ld d,d			;001d	52 	R 
l001eh:
	ld d,d			;001e	52 	R 
	ld e,a			;001f	5f 	_ 
	ld a,h			;0020	7c 	| 
	ld a,h			;0021	7c 	| 
	ld a,h			;0022	7c 	| 
	ld a,h			;0023	7c 	| 
	rst 38h			;0024	ff 	. 
	rst 38h			;0025	ff 	. 
	rst 38h			;0026	ff 	. 
	rst 38h			;0027	ff 	. 
	rst 38h			;0028	ff 	. 
	di			;0029	f3 	. 
	di			;002a	f3 	. 
	di			;002b	f3 	. 
	rst 38h			;002c	ff 	. 
	ld sp,hl			;002d	f9 	. 
	ld sp,hl			;002e	f9 	. 
	ld sp,hl			;002f	f9 	. 
	rst 38h			;0030	ff 	. 
	rst 38h			;0031	ff 	. 
l0032h:
	rst 38h			;0032	ff 	. 
	rst 38h			;0033	ff 	. 
	add a,c			;0034	81 	. 
	add a,c			;0035	81 	. 
	add a,c			;0036	81 	. 
	rst 38h			;0037	ff 	. 
	rrca			;0038	0f 	. 
	rrca			;0039	0f 	. 
	rrca			;003a	0f 	. 
	rst 38h			;003b	ff 	. 
l003ch:
	rra			;003c	1f 	. 
	add hl,de			;003d	19 	. 
	add hl,de			;003e	19 	. 
l003fh:
	ld sp,hl			;003f	f9 	. 
l0040h:
	nop			;0040	00 	. 
	nop			;0041	00 	. 
	nop			;0042	00 	. 
	nop			;0043	00 	. 
	inc bc			;0044	03 	. 
	nop			;0045	00 	. 
	inc bc			;0046	03 	. 
	nop			;0047	00 	. 
	adc a,a			;0048	8f 	. 
	add a,e			;0049	83 	. 
	adc a,a			;004a	8f 	. 
	add a,e			;004b	83 	. 
	cp 0ceh		;004c	fe ce 	. . 
	cp 0ceh		;004e	fe ce 	. . 
	call m,0fcfch		;0050	fc fc fc 	. . . 
	call m,078f8h		;0053	fc f8 78 	. . x 
	ld a,b			;0056	78 	x 
	ld a,b			;0057	78 	x 
	ret m			;0058	f8 	. 
	ret m			;0059	f8 	. 
	ret m			;005a	f8 	. 
	ret m			;005b	f8 	. 
	ret p			;005c	f0 	. 
	ret p			;005d	f0 	. 
l005eh:
	ret p			;005e	f0 	. 
	ret p			;005f	f0 	. 
	ld a,d			;0060	7a 	z 
	ld d,d			;0061	52 	R 
	ld d,d			;0062	52 	R 
	ld d,a			;0063	57 	W 
	ld a,(hl)			;0064	7e 	~ 
	ld e,(hl)			;0065	5e 	^ 
	ld e,(hl)			;0066	5e 	^ 
	ld e,a			;0067	5f 	_ 
	ld a,(hl)			;0068	7e 	~ 
	ld l,(hl)			;0069	6e 	n 
	ld h,(hl)			;006a	66 	f 
	ld l,a			;006b	6f 	o 
	ccf			;006c	3f 	? 
	inc sp			;006d	33 	3 
	ccf			;006e	3f 	? 
	inc sp			;006f	33 	3 
	inc a			;0070	3c 	< 
	inc h			;0071	24 	$ 
	ccf			;0072	3f 	? 
	inc h			;0073	24 	$ 
	ld h,a			;0074	67 	g 
	ld b,a			;0075	47 	G 
	ld a,b			;0076	78 	x 
	ld b,b			;0077	40 	@ 
	ld l,a			;0078	6f 	o 
	ld c,c			;0079	49 	I 
	ld (hl),b			;007a	70 	p 
	ld b,b			;007b	40 	@ 
	call c,0e394h		;007c	dc 94 e3 	. . . 
	add a,b			;007f	80 	. 
	ld a,a			;0080	7f 	 
	ld e,e			;0081	5b 	[ 
	ld e,e			;0082	5b 	[ 
	in a,(0ffh)		;0083	db ff 	. . 
	di			;0085	f3 	. 
	di			;0086	f3 	. 
	di			;0087	f3 	. 
	rst 38h			;0088	ff 	. 
	add a,a			;0089	87 	. 
	add a,a			;008a	87 	. 
	add a,a			;008b	87 	. 
	ccf			;008c	3f 	? 
	ccf			;008d	3f 	? 
	rst 38h			;008e	ff 	. 
	ccf			;008f	3f 	? 
	adc a,a			;0090	8f 	. 
	adc a,a			;0091	8f 	. 
	rst 38h			;0092	ff 	. 
	adc a,a			;0093	8f 	. 
l0094h:
	rst 30h			;0094	f7 	. 
	rst 30h			;0095	f7 	. 
	rrca			;0096	0f 	. 
	rlca			;0097	07 	. 
	rlca			;0098	07 	. 
	rlca			;0099	07 	. 
	rst 38h			;009a	ff 	. 
	rlca			;009b	07 	. 
	ld a,a			;009c	7f 	 
	rlca			;009d	07 	. 
sub_009eh:
	rst 38h			;009e	ff 	. 
	rlca			;009f	07 	. 
	ret p			;00a0	f0 	. 
	ret p			;00a1	f0 	. 
	ret p			;00a2	f0 	. 
	ret p			;00a3	f0 	. 
	ret m			;00a4	f8 	. 
	ret m			;00a5	f8 	. 
	ret m			;00a6	f8 	. 
	ret m			;00a7	f8 	. 
	ret m			;00a8	f8 	. 
	ret m			;00a9	f8 	. 
	ret m			;00aa	f8 	. 
	ret m			;00ab	f8 	. 
	ret m			;00ac	f8 	. 
	ret m			;00ad	f8 	. 
	ret m			;00ae	f8 	. 
	ret m			;00af	f8 	. 
	ret m			;00b0	f8 	. 
	ret m			;00b1	f8 	. 
	ret m			;00b2	f8 	. 
	ret m			;00b3	f8 	. 
	ret m			;00b4	f8 	. 
	ret m			;00b5	f8 	. 
	ret m			;00b6	f8 	. 
	ret m			;00b7	f8 	. 
	ret m			;00b8	f8 	. 
	ret m			;00b9	f8 	. 
	ret m			;00ba	f8 	. 
	ret m			;00bb	f8 	. 
	call c,0dcdch		;00bc	dc dc dc 	. . . 
	call m,088d9h		;00bf	fc d9 88 	. . . 
	rst 20h			;00c2	e7 	. 
	add a,b			;00c3	80 	. 
	di			;00c4	f3 	. 
	or c			;00c5	b1 	. 
	rst 8			;00c6	cf 	. 
	add a,c			;00c7	81 	. 
	or 0b2h		;00c8	f6 b2 	. . 
	rst 8			;00ca	cf 	. 
	add a,d			;00cb	82 	. 
	push de			;00cc	d5 	. 
	sub h			;00cd	94 	. 
	rst 28h			;00ce	ef 	. 
	add a,l			;00cf	85 	. 
	ld l,a			;00d0	6f 	o 
	ld c,l			;00d1	4d 	M 
	ld (hl),a			;00d2	77 	w 
	ld b,a			;00d3	47 	G 
	ccf			;00d4	3f 	? 
	cpl			;00d5	2f 	/ 
	scf			;00d6	37 	7 
	daa			;00d7	27 	' 
	rra			;00d8	1f 	. 
	rra			;00d9	1f 	. 
	rla			;00da	17 	. 
	rla			;00db	17 	. 
	dec bc			;00dc	0b 	. 
l00ddh:
	dec bc			;00dd	0b 	. 
	dec bc			;00de	0b 	. 
	dec bc			;00df	0b 	. 
	rst 38h			;00e0	ff 	. 
	ld a,a			;00e1	7f 	 
	rst 38h			;00e2	ff 	. 
	ld a,a			;00e3	7f 	 
	adc a,l			;00e4	8d 	. 
	add a,l			;00e5	85 	. 
	defb 0fdh,08fh,03ch	;illegal sequence		;00e6	fd 8f 3c 	. . < 
	inc c			;00e9	0c 	. 
	call m,0f63fh		;00ea	fc 3f f6 	. ? . 
	ld (hl),0f6h		;00ed	36 f6 	6 . 
	rst 38h			;00ef	ff 	. 
sub_00f0h:
	jp m,0fafah		;00f0	fa fa fa 	. . . 
sub_00f3h:
	rst 38h			;00f3	ff 	. 
	ei			;00f4	fb 	. 
sub_00f5h:
	ei			;00f5	fb 	. 
	ei			;00f6	fb 	. 
	rst 38h			;00f7	ff 	. 
l00f8h:
	jp m,0fafah		;00f8	fa fa fa 	. . . 
	cp 0cch		;00fb	fe cc 	. . 
	call z,0cccch		;00fd	cc cc cc 	. . . 
l0100h:
	ld l,h			;0100	6c 	l 
l0101h:
	ld l,h			;0101	6c 	l 
	ld l,h			;0102	6c 	l 
l0103h:
	call m,06c6ch		;0103	fc 6c 6c 	. l l 
	ld l,h			;0106	6c 	l 
	call m,0a4a4h		;0107	fc a4 a4 	. . . 
	and h			;010a	a4 	. 
	call m,0a4a4h		;010b	fc a4 a4 	. . . 
l010eh:
	and h			;010e	a4 	. 
	call m,09292h		;010f	fc 92 92 	. . . 
	sub d			;0112	92 	. 
	cp 091h		;0113	fe 91 	. . 
	sub c			;0115	91 	. 
	sub c			;0116	91 	. 
	rst 38h			;0117	ff 	. 
	rst 8			;0118	cf 	. 
	rst 8			;0119	cf 	. 
	rst 8			;011a	cf 	. 
	rst 38h			;011b	ff 	. 
	ld a,b			;011c	78 	x 
	ld a,b			;011d	78 	x 
	ld a,b			;011e	78 	x 
	ld a,b			;011f	78 	x 
	ret nz			;0120	c0 	. 
	ret nz			;0121	c0 	. 
	nop			;0122	00 	. 
	ret nz			;0123	c0 	. 
	ld sp,hl			;0124	f9 	. 
	ld sp,hl			;0125	f9 	. 
	ld e,c			;0126	59 	Y 
	ld sp,hl			;0127	f9 	. 
	rst 38h			;0128	ff 	. 
	rst 38h			;0129	ff 	. 
	ld h,a			;012a	67 	g 
	rst 38h			;012b	ff 	. 
	cp 0feh		;012c	fe fe 	. . 
	ld (hl),d			;012e	72 	r 
	rst 38h			;012f	ff 	. 
	ld a,l			;0130	7d 	} 
	ld a,l			;0131	7d 	} 
	inc a			;0132	3c 	< 
	ld a,a			;0133	7f 	 
	ccf			;0134	3f 	? 
	ccf			;0135	3f 	? 
	inc e			;0136	1c 	. 
	dec a			;0137	3d 	= 
	rra			;0138	1f 	. 
	dec de			;0139	1b 	. 
	inc c			;013a	0c 	. 
	dec e			;013b	1d 	. 
	rra			;013c	1f 	. 
	dec de			;013d	1b 	. 
	inc c			;013e	0c 	. 
	dec e			;013f	1d 	. 
	ccf			;0140	3f 	? 
	ccf			;0141	3f 	? 
	ccf			;0142	3f 	? 
	ccf			;0143	3f 	? 
	rst 38h			;0144	ff 	. 
	rst 38h			;0145	ff 	. 
	rst 38h			;0146	ff 	. 
	rst 38h			;0147	ff 	. 
	rrca			;0148	0f 	. 
	rrca			;0149	0f 	. 
	rrca			;014a	0f 	. 
	rst 38h			;014b	ff 	. 
	rst 30h			;014c	f7 	. 
	rst 0			;014d	c7 	. 
	rlca			;014e	07 	. 
	rst 8			;014f	cf 	. 
	ei			;0150	fb 	. 
	rlc e		;0151	cb 03 	. . 
	rst 8			;0153	cf 	. 
	cp 03eh		;0154	fe 3e 	. > 
	ld b,03fh		;0156	06 3f 	. ? 
	rst 38h			;0158	ff 	. 
	ld a,b			;0159	78 	x 
	ld bc,0ff79h		;015a	01 79 ff 	. y . 
	call p,0f707h		;015d	f4 07 f7 	. . . 
	rrca			;0160	0f 	. 
	rrca			;0161	0f 	. 
	dec c			;0162	0d 	. 
	rrca			;0163	0f 	. 
	cp a			;0164	bf 	. 
	cp a			;0165	bf 	. 
	or d			;0166	b2 	. 
	cp a			;0167	bf 	. 
	rst 38h			;0168	ff 	. 
	rst 38h			;0169	ff 	. 
	adc a,0ffh		;016a	ce ff 	. . 
	cp 0feh		;016c	fe fe 	. . 
	sbc a,h			;016e	9c 	. 
	cp 0feh		;016f	fe fe 	. . 
	cp 0bch		;0171	fe bc 	. . 
	cp 07ch		;0173	fe 7c 	. | 
	ld a,h			;0175	7c 	| 
	ld a,b			;0176	78 	x 
	call m,sub_18d8h		;0177	fc d8 18 	. . . 
	ret nc			;017a	d0 	. 
	ret m			;017b	f8 	. 
	ret pe			;017c	e8 	. 
	ex af,af'			;017d	08 	. 
	ret pe			;017e	e8 	. 
	jr c,l019eh		;017f	38 1d 	8 . 
	add hl,de			;0181	19 	. 
	ld c,01ch		;0182	0e 1c 	. . 
	dec c			;0184	0d 	. 
	add hl,bc			;0185	09 	. 
	ld b,00ch		;0186	06 0c 	. . 
	ld c,00ch		;0188	0e 0c 	. . 
	rrca			;018a	0f 	. 
	ld c,01eh		;018b	0e 1e 	. . 
	inc e			;018d	1c 	. 
	rra			;018e	1f 	. 
	ld e,037h		;018f	1e 37 	. 7 
	inc (hl)			;0191	34 	4 
	scf			;0192	37 	7 
	ccf			;0193	3f 	? 
	ld l,a			;0194	6f 	o 
l0195h:
	ld l,d			;0195	6a 	j 
	ld h,e			;0196	63 	c 
	ld a,e			;0197	7b 	{ 
	ld l,a			;0198	6f 	o 
	ld l,e			;0199	6b 	k 
	ld h,e			;019a	63 	c 
	ld a,e			;019b	7b 	{ 
	ld e,a			;019c	5f 	_ 
	ld d,e			;019d	53 	S 
l019eh:
	ld b,e			;019e	43 	C 
	ld (hl),e			;019f	73 	s 
	rst 38h			;01a0	ff 	. 
	ret pe			;01a1	e8 	. 
	rrca			;01a2	0f 	. 
	call pe,0d3ffh		;01a3	ec ff d3 	. . . 
	rra			;01a6	1f 	. 
	in a,(0ffh)		;01a7	db ff 	. . 
	sub 01eh		;01a9	d6 1e 	. . 
	ld d,(hl)			;01ab	56 	V 
	rst 38h			;01ac	ff 	. 
	ei			;01ad	fb 	. 
	dec bc			;01ae	0b 	. 
	ld a,e			;01af	7b 	{ 
	ld a,(hl)			;01b0	7e 	~ 
	ld a,(hl)			;01b1	7e 	~ 
	adc a,(hl)			;01b2	8e 	. 
	ccf			;01b3	3f 	? 
	ld (hl),c			;01b4	71 	q 
	ld sp,l1f81h		;01b5	31 81 1f 	1 . . 
	cp (hl)			;01b8	be 	. 
	ld e,0c2h		;01b9	1e c2 	. . 
	adc a,a			;01bb	8f 	. 
	cp a			;01bc	bf 	. 
	inc e			;01bd	1c 	. 
	ret z			;01be	c8 	. 
	adc a,h			;01bf	8c 	. 
	call c,0dcdch		;01c0	dc dc dc 	. . . 
	call m,sub_1cdch		;01c3	fc dc 1c 	. . . 
	inc e			;01c6	1c 	. 
	inc a			;01c7	3c 	< 
	call c,05c5ch		;01c8	dc 5c 5c 	. \ \ 
	ld a,h			;01cb	7c 	| 
	cp (hl)			;01cc	be 	. 
	cp (hl)			;01cd	be 	. 
	cp (hl)			;01ce	be 	. 
	cp 07eh		;01cf	fe 7e 	. ~ 
	ld a,(hl)			;01d1	7e 	~ 
	ld a,(hl)			;01d2	7e 	~ 
	cp 0feh		;01d3	fe fe 	. . 
	cp 0feh		;01d5	fe fe 	. . 
	cp 03eh		;01d7	fe 3e 	. > 
	ld a,03eh		;01d9	3e 3e 	> > 
	cp 09fh		;01db	fe 9f 	. . 
	sbc a,a			;01dd	9f 	. 
	rra			;01de	1f 	. 
	rst 38h			;01df	ff 	. 
	ccf			;01e0	3f 	? 
	inc hl			;01e1	23 	# 
	inc hl			;01e2	23 	# 
	inc hl			;01e3	23 	# 
	ld e,a			;01e4	5f 	_ 
	ld b,l			;01e5	45 	E 
	ld b,l			;01e6	45 	E 
	ld h,l			;01e7	65 	e 
	cp a			;01e8	bf 	. 
	or (hl)			;01e9	b6 	. 
	add a,(hl)			;01ea	86 	. 
	or 0bfh		;01eb	f6 bf 	. . 
	and c			;01ed	a1 	. 
	sbc a,b			;01ee	98 	. 
	pop hl			;01ef	e1 	. 
	rst 38h			;01f0	ff 	. 
	ret c			;01f1	d8 	. 
	call m,07fd8h		;01f2	fc d8 7f 	. .  
	ld e,h			;01f5	5c 	\ 
	ld a,(hl)			;01f6	7e 	~ 
	ld e,h			;01f7	5c 	\ 
	rra			;01f8	1f 	. 
	ld (bc),a			;01f9	02 	. 
	rra			;01fa	1f 	. 
	ld e,003h		;01fb	1e 03 	. . 
	ld bc,l0303h		;01fd	01 03 03 	. . . 
	rst 18h			;0200	df 	. 
l0201h:
	dec de			;0201	1b 	. 
sub_0202h:
	ex de,hl			;0202	eb 	. 
	set 3,a		;0203	cb df 	. . 
	sub a			;0205	97 	. 
l0206h:
	rst 30h			;0206	f7 	. 
	rst 10h			;0207	d7 	. 
	rst 38h			;0208	ff 	. 
	rst 28h			;0209	ef 	. 
	call pe,0ffefh		;020a	ec ef ff 	. . . 
	ld a,(hl)			;020d	7e 	~ 
	ld bc,0ff7fh		;020e	01 7f ff 	.  . 
	cp l			;0211	bd 	. 
	inc bc			;0212	03 	. 
	cp a			;0213	bf 	. 
	rst 38h			;0214	ff 	. 
	inc hl			;0215	23 	# 
	rrca			;0216	0f 	. 
	inc hl			;0217	23 	# 
	rst 38h			;0218	ff 	. 
	inc c			;0219	0c 	. 
	sbc a,a			;021a	9f 	. 
	rrca			;021b	0f 	. 
	rst 38h			;021c	ff 	. 
	sub e			;021d	93 	. 
	rst 38h			;021e	ff 	. 
	sbc a,a			;021f	9f 	. 
	rst 28h			;0220	ef 	. 
	ld l,a			;0221	6f 	o 
	rrca			;0222	0f 	. 
	ld a,a			;0223	7f 	 
	rst 28h			;0224	ef 	. 
	ld l,a			;0225	6f 	o 
	rrca			;0226	0f 	. 
	ld a,a			;0227	7f 	 
	rst 8			;0228	cf 	. 
	rst 8			;0229	cf 	. 
	rrca			;022a	0f 	. 
	rst 38h			;022b	ff 	. 
	sbc a,a			;022c	9f 	. 
	rra			;022d	1f 	. 
	sbc a,a			;022e	9f 	. 
	rst 38h			;022f	ff 	. 
	cp 0beh		;0230	fe be 	. . 
	cp 0feh		;0232	fe fe 	. . 
	call m,0fcbch		;0234	fc bc fc 	. . . 
	call m,070f0h		;0237	fc f0 70 	. . p 
	ret p			;023a	f0 	. 
	ret p			;023b	f0 	. 
	ret nz			;023c	c0 	. 
	ret nz			;023d	c0 	. 
	ret nz			;023e	c0 	. 
	ret nz			;023f	c0 	. 
	ld c,00eh		;0240	0e 0e 	. . 
	ex af,af'			;0242	08 	. 
	ex af,af'			;0243	08 	. 
	rlca			;0244	07 	. 
	rlca			;0245	07 	. 
l0246h:
	ld b,006h		;0246	06 06 	. . 
	inc bc			;0248	03 	. 
	ld (bc),a			;0249	02 	. 
	inc bc			;024a	03 	. 
	inc bc			;024b	03 	. 
	ld bc,l0701h		;024c	01 01 07 	. . . 
	ld bc,l0004h		;024f	01 04 00 	. . . 
	dec bc			;0252	0b 	. 
	nop			;0253	00 	. 
	ld b,000h		;0254	06 00 	. . 
	add hl,de			;0256	19 	. 
	nop			;0257	00 	. 
	nop			;0258	00 	. 
	nop			;0259	00 	. 
	rra			;025a	1f 	. 
	nop			;025b	00 	. 
sub_025ch:
	ld e,00eh		;025c	1e 0e 	. . 
l025eh:
	cpl			;025e	2f 	/ 
	ld c,03ch		;025f	0e 3c 	. < 
	inc e			;0261	1c 	. 
	inc a			;0262	3c 	< 
	inc a			;0263	3c 	< 
	rst 38h			;0264	ff 	. 
	add a,e			;0265	83 	. 
	ld a,a			;0266	7f 	 
	ld a,a			;0267	7f 	 
	rst 38h			;0268	ff 	. 
	and c			;0269	a1 	. 
	sbc a,a			;026a	9f 	. 
	adc a,a			;026b	8f 	. 
	cp a			;026c	bf 	. 
	jr nc,l025eh		;026d	30 ef 	0 . 
	and e			;026f	a3 	. 
	rst 38h			;0270	ff 	. 
	ret m			;0271	f8 	. 
	rst 28h			;0272	ef 	. 
	ex de,hl			;0273	eb 	. 
	rst 38h			;0274	ff 	. 
	adc a,b			;0275	88 	. 
	rst 38h			;0276	ff 	. 
	jp (hl)			;0277	e9 	. 
	rst 38h			;0278	ff 	. 
	ld (hl),e			;0279	73 	s 
	rst 38h			;027a	ff 	. 
	ld (hl),e			;027b	73 	s 
	call m,0ff04h		;027c	fc 04 ff 	. . . 
	inc b			;027f	04 	. 
	nop			;0280	00 	. 
	nop			;0281	00 	. 
	nop			;0282	00 	. 
	nop			;0283	00 	. 
	nop			;0284	00 	. 
	nop			;0285	00 	. 
	nop			;0286	00 	. 
	nop			;0287	00 	. 
	add a,b			;0288	80 	. 
	add a,b			;0289	80 	. 
	add a,b			;028a	80 	. 
	add a,b			;028b	80 	. 
	ret nz			;028c	c0 	. 
	ret nz			;028d	c0 	. 
	ret nz			;028e	c0 	. 
	ret nz			;028f	c0 	. 
	ret po			;0290	e0 	. 
	ld h,b			;0291	60 	` 
	ret po			;0292	e0 	. 
	ret po			;0293	e0 	. 
	ret po			;0294	e0 	. 
	ret po			;0295	e0 	. 
	ret po			;0296	e0 	. 
	ret po			;0297	e0 	. 
	ld (hl),030h		;0298	36 30 	6 0 
	or 030h		;029a	f6 30 	. 0 
	cp a			;029c	bf 	. 
	djnz $+65		;029d	10 3f 	. ? 
	halt			;029f	76 	v 
	add hl,de			;02a0	19 	. 
	ld bc,l2106h+1		;02a1	01 07 21 	. . ! 
	ld c,00ch		;02a4	0e 0c 	. . 
	dec l			;02a6	2d 	- 
	inc e			;02a7	1c 	. 
	ld c,00ch		;02a8	0e 0c 	. . 
	dec l			;02aa	2d 	- 
	inc e			;02ab	1c 	. 
	nop			;02ac	00 	. 
	nop			;02ad	00 	. 
	ld sp,0520eh		;02ae	31 0e 52 	1 . R 
	ld b,d			;02b1	42 	B 
	ld l,a			;02b2	6f 	o 
	ld b,d			;02b3	42 	B 
	ld d,a			;02b4	57 	W 
	ld b,e			;02b5	43 	C 
	ld l,a			;02b6	6f 	o 
	ld b,e			;02b7	43 	C 
	rst 20h			;02b8	e7 	. 
	call po,0e4ffh		;02b9	e4 ff e4 	. . . 
	call p,0bff4h		;02bc	f4 f4 bf 	. . . 
	call p,sub_287bh		;02bf	f4 7b 28 	. { ( 
	call m,07768h		;02c2	fc 68 77 	. h w 
	ld (hl),0feh		;02c5	36 fe 	6 . 
	halt			;02c7	76 	v 
	rst 30h			;02c8	f7 	. 
	sub (hl)			;02c9	96 	. 
	ld a,(hl)			;02ca	7e 	~ 
	halt			;02cb	76 	v 
	cp b			;02cc	b8 	. 
	sub b			;02cd	90 	. 
	ld a,b			;02ce	78 	x 
	ccf			;02cf	3f 	? 
	cp a			;02d0	bf 	. 
	adc a,h			;02d1	8c 	. 
	ld a,a			;02d2	7f 	 
	inc a			;02d3	3c 	< 
	ccf			;02d4	3f 	? 
	ld e,0ffh		;02d5	1e ff 	. . 
	ld a,0ffh		;02d7	3e ff 	> . 
	di			;02d9	f3 	. 
	rst 38h			;02da	ff 	. 
	di			;02db	f3 	. 
	ld a,a			;02dc	7f 	 
	ld bc,l07ffh		;02dd	01 ff 07 	. . . 
	cp a			;02e0	bf 	. 
	ld d,03fh		;02e1	16 3f 	. ? 
	halt			;02e3	76 	v 
	cp a			;02e4	bf 	. 
	ld b,03fh		;02e5	06 3f 	. ? 
	ld a,(hl)			;02e7	7e 	~ 
	ld a,a			;02e8	7f 	 
	ld c,07fh		;02e9	0e 7f 	.  
	cp 0ffh		;02eb	fe ff 	. . 
	dec h			;02ed	25 	% 
	rst 38h			;02ee	ff 	. 
	defb 0fdh,0ffh,02dh	;illegal sequence		;02ef	fd ff 2d 	. . - 
	rst 38h			;02f2	ff 	. 
	defb 0fdh,0feh,03ah	;illegal sequence		;02f3	fd fe 3a 	. . : 
	cp 07ah		;02f6	fe 7a 	. z 
	cp 034h		;02f8	fe 34 	. 4 
sub_02fah:
	call m,0fc38h		;02fa	fc 38 fc 	. 8 . 
	ld (hl),h			;02fd	74 	t 
	call m,0fd76h		;02fe	fc 76 fd 	. v . 
	ld sp,hl			;0301	f9 	. 
	rst 38h			;0302	ff 	. 
l0303h:
	ld sp,hl			;0303	f9 	. 
	ei			;0304	fb 	. 
	jp m,0fa9eh		;0305	fa 9e fa 	. . . 
	ld a,l			;0308	7d 	} 
	ld a,b			;0309	78 	x 
	ld e,(hl)			;030a	5e 	^ 
	ld a,b			;030b	78 	x 
	rst 38h			;030c	ff 	. 
	cp 0f7h		;030d	fe f7 	. . 
l030fh:
	rst 38h			;030f	ff 	. 
	ld a,a			;0310	7f 	 
	ld a,a			;0311	7f 	 
	ld a,c			;0312	79 	y 
	ld a,a			;0313	7f 	 
	ccf			;0314	3f 	? 
	ccf			;0315	3f 	? 
	ld a,03fh		;0316	3e 3f 	> ? 
	rra			;0318	1f 	. 
	rra			;0319	1f 	. 
	rra			;031a	1f 	. 
	rra			;031b	1f 	. 
	inc bc			;031c	03 	. 
	inc bc			;031d	03 	. 
	inc bc			;031e	03 	. 
	inc bc			;031f	03 	. 
	rst 38h			;0320	ff 	. 
	ld sp,hl			;0321	f9 	. 
	rst 38h			;0322	ff 	. 
	ei			;0323	fb 	. 
	rst 38h			;0324	ff 	. 
	push af			;0325	f5 	. 
	rst 30h			;0326	f7 	. 
	rst 30h			;0327	f7 	. 
	rst 38h			;0328	ff 	. 
	add a,a			;0329	87 	. 
	rst 30h			;032a	f7 	. 
	or a			;032b	b7 	. 
	rst 38h			;032c	ff 	. 
	inc bc			;032d	03 	. 
	rst 38h			;032e	ff 	. 
	rst 38h			;032f	ff 	. 
	rst 38h			;0330	ff 	. 
	adc a,a			;0331	8f 	. 
	rst 38h			;0332	ff 	. 
	rst 38h			;0333	ff 	. 
	rst 38h			;0334	ff 	. 
	rst 38h			;0335	ff 	. 
	rst 38h			;0336	ff 	. 
	rst 38h			;0337	ff 	. 
	rst 38h			;0338	ff 	. 
	rst 38h			;0339	ff 	. 
	rst 38h			;033a	ff 	. 
	rst 38h			;033b	ff 	. 
	cp 0feh		;033c	fe fe 	. . 
	cp 0feh		;033e	fe fe 	. . 
	cp 07eh		;0340	fe 7e 	. ~ 
	cp 07eh		;0342	fe 7e 	. ~ 
	ret m			;0344	f8 	. 
	ret m			;0345	f8 	. 
	ret m			;0346	f8 	. 
	ret m			;0347	f8 	. 
	ret m			;0348	f8 	. 
	ret m			;0349	f8 	. 
	ret m			;034a	f8 	. 
	ret m			;034b	f8 	. 
	ret p			;034c	f0 	. 
	ret p			;034d	f0 	. 
	ret p			;034e	f0 	. 
	ret p			;034f	f0 	. 
	ret p			;0350	f0 	. 
	ret p			;0351	f0 	. 
	ret p			;0352	f0 	. 
	ret p			;0353	f0 	. 
	ret po			;0354	e0 	. 
	ret po			;0355	e0 	. 
	ret po			;0356	e0 	. 
	ret po			;0357	e0 	. 
	add a,b			;0358	80 	. 
	add a,b			;0359	80 	. 
	add a,b			;035a	80 	. 
	add a,b			;035b	80 	. 
	nop			;035c	00 	. 
	nop			;035d	00 	. 
	nop			;035e	00 	. 
	nop			;035f	00 	. 
	ld c,00eh		;0360	0e 0e 	. . 
	ld c,00eh		;0362	0e 0e 	. . 
	ld d,h			;0364	54 	T 
	ld e,h			;0365	5c 	\ 
	ld e,h			;0366	5c 	\ 
	ld e,h			;0367	5c 	\ 
	ld l,e			;0368	6b 	k 
	ld a,a			;0369	7f 	 
	ld a,a			;036a	7f 	 
	ld a,a			;036b	7f 	 
	ld e,h			;036c	5c 	\ 
l036dh:
	ld (hl),a			;036d	77 	w 
	ld (hl),a			;036e	77 	w 
	ld (hl),a			;036f	77 	w 
	ld e,h			;0370	5c 	\ 
	ld (hl),a			;0371	77 	w 
	ld (hl),a			;0372	77 	w 
	ld (hl),a			;0373	77 	w 
	ld e,(hl)			;0374	5e 	^ 
	ld (hl),a			;0375	77 	w 
	ld (hl),e			;0376	73 	s 
	ld (hl),a			;0377	77 	w 
	sbc a,(hl)			;0378	9e 	. 
	rst 30h			;0379	f7 	. 
	di			;037a	f3 	. 
	rst 30h			;037b	f7 	. 
	sbc a,a			;037c	9f 	. 
	or 0f3h		;037d	f6 f3 	. . 
	rst 30h			;037f	f7 	. 
	ld b,d			;0380	42 	B 
	ld b,d			;0381	42 	B 
	ld b,d			;0382	42 	B 
	ld b,d			;0383	42 	B 
	or a			;0384	b7 	. 
	rst 30h			;0385	f7 	. 
	rst 30h			;0386	f7 	. 
	rst 30h			;0387	f7 	. 
	add hl,bc			;0388	09 	. 
	rst 38h			;0389	ff 	. 
	rst 38h			;038a	ff 	. 
	rst 38h			;038b	ff 	. 
	jr nz,l036dh		;038c	20 df 	  . 
	rst 18h			;038e	df 	. 
	rst 18h			;038f	df 	. 
	ld h,b			;0390	60 	` 
	sbc a,a			;0391	9f 	. 
	sbc a,a			;0392	9f 	. 
	sbc a,a			;0393	9f 	. 
	ld b,b			;0394	40 	@ 
	cp a			;0395	bf 	. 
	cp a			;0396	bf 	. 
	cp a			;0397	bf 	. 
	nop			;0398	00 	. 
	rst 38h			;0399	ff 	. 
	rst 38h			;039a	ff 	. 
	rst 38h			;039b	ff 	. 
	ld bc,0fffeh		;039c	01 fe ff 	. . . 
	rst 38h			;039f	ff 	. 
	adc a,b			;03a0	88 	. 
	adc a,b			;03a1	88 	. 
	adc a,b			;03a2	88 	. 
	adc a,b			;03a3	88 	. 
	cp b			;03a4	b8 	. 
	cp b			;03a5	b8 	. 
	cp b			;03a6	b8 	. 
	cp b			;03a7	b8 	. 
	ret m			;03a8	f8 	. 
	ld e,b			;03a9	58 	X 
	ret m			;03aa	f8 	. 
	ret m			;03ab	f8 	. 
	dec a			;03ac	3d 	= 
	defb 0edh;next byte illegal after ed		;03ad	ed 	. 
	defb 0edh;next byte illegal after ed		;03ae	ed 	. 
	defb 0edh;next byte illegal after ed		;03af	ed 	. 
	ld a,l			;03b0	7d 	} 
	xor l			;03b1	ad 	. 
	defb 0edh;next byte illegal after ed		;03b2	ed 	. 
	ld sp,(0cfdfh)		;03b3	ed 7b df cf 	. { . . 
	rst 18h			;03b7	df 	. 
	ei			;03b8	fb 	. 
	ld e,l			;03b9	5d 	] 
	rst 8			;03ba	cf 	. 
	rst 18h			;03bb	df 	. 
	ei			;03bc	fb 	. 
	ld e,l			;03bd	5d 	] 
	rst 8			;03be	cf 	. 
	rst 18h			;03bf	df 	. 
	sbc a,a			;03c0	9f 	. 
	rst 28h			;03c1	ef 	. 
	rst 38h			;03c2	ff 	. 
	rst 38h			;03c3	ff 	. 
	rst 38h			;03c4	ff 	. 
	ret nc			;03c5	d0 	. 
	rst 38h			;03c6	ff 	. 
	ret p			;03c7	f0 	. 
	cp a			;03c8	bf 	. 
	ret m			;03c9	f8 	. 
	cp b			;03ca	b8 	. 
	cp b			;03cb	b8 	. 
	sbc a,a			;03cc	9f 	. 
	rst 38h			;03cd	ff 	. 
	sbc a,a			;03ce	9f 	. 
	sbc a,a			;03cf	9f 	. 
	or a			;03d0	b7 	. 
	defb 0fdh,0b5h	;or iyl		;03d1	fd b5 	. . 
	or l			;03d3	b5 	. 
	or e			;03d4	b3 	. 
	rst 38h			;03d5	ff 	. 
	or e			;03d6	b3 	. 
	or e			;03d7	b3 	. 
	or a			;03d8	b7 	. 
	cp b			;03d9	b8 	. 
	rst 30h			;03da	f7 	. 
	ret p			;03db	f0 	. 
	ld d,a			;03dc	57 	W 
	ld e,e			;03dd	5b 	[ 
	ld (hl),a			;03de	77 	w 
	ld (hl),e			;03df	73 	s 
	jp 0ffbdh		;03e0	c3 bd ff 	. . . 
	rst 38h			;03e3	ff 	. 
	rst 38h			;03e4	ff 	. 
	ld b,d			;03e5	42 	B 
	rst 38h			;03e6	ff 	. 
	ld a,(hl)			;03e7	7e 	~ 
	rst 38h			;03e8	ff 	. 
	inc a			;03e9	3c 	< 
	ld a,(hl)			;03ea	7e 	~ 
	inc a			;03eb	3c 	< 
sub_03ech:
	rst 28h			;03ec	ef 	. 
	ld d,e			;03ed	53 	S 
	ld l,a			;03ee	6f 	o 
	ld c,e			;03ef	4b 	K 
	rst 28h			;03f0	ef 	. 
	dec (hl)			;03f1	35 	5 
	dec l			;03f2	2d 	- 
	dec l			;03f3	2d 	- 
	rst 28h			;03f4	ef 	. 
	ex (sp),hl			;03f5	e3 	. 
	rst 38h			;03f6	ff 	. 
	rst 38h			;03f7	ff 	. 
	ld d,0e8h		;03f8	16 e8 	. . 
	rlca			;03fa	07 	. 
	rlca			;03fb	07 	. 
sub_03fch:
	or l			;03fc	b5 	. 
l03fdh:
	ld l,h			;03fd	6c 	l 
	and a			;03fe	a7 	. 
	ld h,0f2h		;03ff	26 f2 	& . 
l0401h:
	cp 0feh		;0401	fe fe 	. . 
	cp 0ffh		;0403	fe ff 	. . 
	dec bc			;0405	0b 	. 
l0406h:
	rst 38h			;0406	ff 	. 
	rrca			;0407	0f 	. 
	defb 0fdh,01fh,01dh	;illegal sequence		;0408	fd 1f 1d 	. . . 
	dec e			;040b	1d 	. 
sub_040ch:
	ld sp,hl			;040c	f9 	. 
	rra			;040d	1f 	. 
	add hl,de			;040e	19 	. 
	add hl,de			;040f	19 	. 
	defb 0edh;next byte illegal after ed		;0410	ed 	. 
	cpl			;0411	2f 	/ 
	dec a			;0412	3d 	= 
	dec a			;0413	3d 	= 
	call 0fdcfh		;0414	cd cf fd 	. . . 
	defb 0fdh,0edh,00fh	;illegal sequence		;0417	fd ed 0f 	. . . 
	defb 0fdh,01dh,0eah	;illegal sequence		;041a	fd 1d ea 	. . . 
	jp z,0defeh		;041d	ca fe de 	. . . 
	ld (hl),a			;0420	77 	w 
	ld a,e			;0421	7b 	{ 
	halt			;0422	76 	v 
	ld (hl),e			;0423	73 	s 
	daa			;0424	27 	' 
	ld hl,(l3236h)		;0425	2a 36 32 	* 6 2 
	daa			;0428	27 	' 
	ld hl,(l3236h)		;0429	2a 36 32 	* 6 2 
	inc de			;042c	13 	. 
	inc d			;042d	14 	. 
	ld a,(de)			;042e	1a 	. 
	jr $+11		;042f	18 09 	. . 
	ld a,(bc)			;0431	0a 	. 
	inc c			;0432	0c 	. 
	inc c			;0433	0c 	. 
	ld b,007h		;0434	06 07 	. . 
	ld b,006h		;0436	06 06 	. . 
	ld bc,l0101h		;0438	01 01 01 	. . . 
	ld bc,l0000h		;043b	01 00 00 	. . . 
	nop			;043e	00 	. 
	nop			;043f	00 	. 
	jp 0c3bdh		;0440	c3 bd c3 	. . . 
	add a,c			;0443	81 	. 
	rst 38h			;0444	ff 	. 
	jp 0c37eh		;0445	c3 7e c3 	. ~ . 
	rst 38h			;0448	ff 	. 
	in a,(05ah)		;0449	db 5a 	. Z 
	in a,(0ffh)		;044b	db ff 	. . 
	in a,(0dbh)		;044d	db db 	. . 
	in a,(0ffh)		;044f	db ff 	. . 
	inc a			;0451	3c 	< 
	rst 38h			;0452	ff 	. 
	inc a			;0453	3c 	< 
	inc a			;0454	3c 	< 
	ret nz			;0455	c0 	. 
	ccf			;0456	3f 	? 
	inc bc			;0457	03 	. 
	pop bc			;0458	c1 	. 
	pop af			;0459	f1 	. 
	rst 8			;045a	cf 	. 
	rst 8			;045b	cf 	. 
	ld a,03eh		;045c	3e 3e 	> > 
	ld a,03eh		;045e	3e 3e 	> > 
	call pe,07ccch		;0460	ec cc 7c 	. . | 
	call c,044e4h		;0463	dc e4 44 	. . D 
	ld a,h			;0466	7c 	| 
	ld e,h			;0467	5c 	\ 
	call po,07c44h		;0468	e4 44 7c 	. D | 
	ld e,h			;046b	5c 	\ 
	ret z			;046c	c8 	. 
	ex af,af'			;046d	08 	. 
	ld a,b			;046e	78 	x 
	jr c,l0401h		;046f	38 90 	8 . 
	djnz l04e3h		;0471	10 70 	. p 
	ld (hl),b			;0473	70 	p 
	ld h,b			;0474	60 	` 
	ld h,b			;0475	60 	` 
	ret po			;0476	e0 	. 
	ret po			;0477	e0 	. 
	add a,b			;0478	80 	. 
	add a,b			;0479	80 	. 
	add a,b			;047a	80 	. 
	add a,b			;047b	80 	. 
	nop			;047c	00 	. 
	nop			;047d	00 	. 
l047eh:
	nop			;047e	00 	. 
	nop			;047f	00 	. 
	nop			;0480	00 	. 
	nop			;0481	00 	. 
	nop			;0482	00 	. 
	nop			;0483	00 	. 
	nop			;0484	00 	. 
	nop			;0485	00 	. 
	nop			;0486	00 	. 
	nop			;0487	00 	. 
	ld bc,l0101h		;0488	01 01 01 	. . . 
	ld bc,08383h		;048b	01 83 83 	. . . 
	add a,d			;048e	82 	. 
	add a,d			;048f	82 	. 
	rst 0			;0490	c7 	. 
	rst 0			;0491	c7 	. 
	call nz,0afc4h		;0492	c4 c4 af 	. . . 
	rst 28h			;0495	ef 	. 
	xor b			;0496	a8 	. 
	ret pe			;0497	e8 	. 
	rst 10h			;0498	d7 	. 
	rst 38h			;0499	ff 	. 
	sub c			;049a	91 	. 
	cp c			;049b	b9 	. 
	ld l,a			;049c	6f 	o 
	ld a,a			;049d	7f 	 
	ld h,d			;049e	62 	b 
	ld (hl),e			;049f	73 	s 
	inc a			;04a0	3c 	< 
	inc a			;04a1	3c 	< 
	inc a			;04a2	3c 	< 
	inc a			;04a3	3c 	< 
	rst 38h			;04a4	ff 	. 
	jp 0ffc3h		;04a5	c3 c3 ff 	. . . 
	rlca			;04a8	07 	. 
	ld sp,hl			;04a9	f9 	. 
	ld bc,083ffh		;04aa	01 ff 83 	. . . 
	call m,07f00h		;04ad	fc 00 7f 	. .  
	ld a,c			;04b0	79 	y 
	cp 000h		;04b1	fe 00 	. . 
	add a,a			;04b3	87 	. 
	call m,07cffh		;04b4	fc ff 7c 	. . | 
	ld a,a			;04b7	7f 	 
	rst 38h			;04b8	ff 	. 
	rst 38h			;04b9	ff 	. 
	di			;04ba	f3 	. 
	rst 38h			;04bb	ff 	. 
	rst 38h			;04bc	ff 	. 
	rst 38h			;04bd	ff 	. 
	ld a,b			;04be	78 	x 
	rst 38h			;04bf	ff 	. 
	nop			;04c0	00 	. 
	nop			;04c1	00 	. 
	nop			;04c2	00 	. 
	nop			;04c3	00 	. 
	nop			;04c4	00 	. 
	nop			;04c5	00 	. 
	nop			;04c6	00 	. 
	nop			;04c7	00 	. 
	add a,b			;04c8	80 	. 
	add a,b			;04c9	80 	. 
	add a,b			;04ca	80 	. 
	add a,b			;04cb	80 	. 
	ret nz			;04cc	c0 	. 
	ret nz			;04cd	c0 	. 
	ret nz			;04ce	c0 	. 
	ret nz			;04cf	c0 	. 
	ex (sp),hl			;04d0	e3 	. 
	ld h,e			;04d1	63 	c 
	ld h,e			;04d2	63 	c 
	ex (sp),hl			;04d3	e3 	. 
	push af			;04d4	f5 	. 
	scf			;04d5	37 	7 
	dec (hl)			;04d6	35 	5 
	rst 30h			;04d7	f7 	. 
	ei			;04d8	fb 	. 
	dec a			;04d9	3d 	= 
	add hl,sp			;04da	39 	9 
	rst 38h			;04db	ff 	. 
	or 0dah		;04dc	f6 da 	. . 
	jp nc,06ffeh		;04de	d2 fe 6f 	. . o 
	ld a,a			;04e1	7f 	 
	ld h,h			;04e2	64 	d 
l04e3h:
	ld (hl),a			;04e3	77 	w 
	ld l,a			;04e4	6f 	o 
	ld a,(hl)			;04e5	7e 	~ 
	ld h,h			;04e6	64 	d 
	halt			;04e7	76 	v 
	ld l,e			;04e8	6b 	k 
	ld a,(hl)			;04e9	7e 	~ 
	ld h,b			;04ea	60 	` 
	halt			;04eb	76 	v 
	ld e,l			;04ec	5d 	] 
	ld a,a			;04ed	7f 	 
	ld b,b			;04ee	40 	@ 
	ld h,e			;04ef	63 	c 
	ld e,b			;04f0	58 	X 
	ld a,a			;04f1	7f 	 
	ld b,b			;04f2	40 	@ 
	ld h,a			;04f3	67 	g 
	ld d,a			;04f4	57 	W 
	ld a,a			;04f5	7f 	 
	ld b,b			;04f6	40 	@ 
	ld l,b			;04f7	68 	h 
sub_04f8h:
	rst 8			;04f8	cf 	. 
	rst 38h			;04f9	ff 	. 
	rst 0			;04fa	c7 	. 
	rst 30h			;04fb	f7 	. 
	rst 28h			;04fc	ef 	. 
	ret m			;04fd	f8 	. 
	rst 20h			;04fe	e7 	. 
	rst 30h			;04ff	f7 	. 
	adc a,a			;0500	8f 	. 
	adc a,h			;0501	8c 	. 
	adc a,h			;0502	8c 	. 
	call m,08ccfh		;0503	fc cf 8c 	. . . 
	adc a,h			;0506	8c 	. 
	cp h			;0507	bc 	. 
	rst 18h			;0508	df 	. 
	call c,0fcdch		;0509	dc dc fc 	. . . 
	rst 38h			;050c	ff 	. 
	ld a,c			;050d	79 	y 
	ld a,b			;050e	78 	x 
	ld a,c			;050f	79 	y 
	ld a,h			;0510	7c 	| 
	add a,e			;0511	83 	. 
	nop			;0512	00 	. 
	add a,e			;0513	83 	. 
	inc bc			;0514	03 	. 
	call m,0ff00h		;0515	fc 00 ff 	. . . 
	call z,sub_00f3h		;0518	cc f3 00 	. . . 
	ccf			;051b	3f 	? 
	di			;051c	f3 	. 
	rst 38h			;051d	ff 	. 
	jp 0fecfh		;051e	c3 cf fe 	. . . 
	cp 03eh		;0521	fe 3e 	. > 
	cp 0fah		;0523	fe fa 	. . 
	ld l,(hl)			;0525	6e 	n 
	ld a,(bc)			;0526	0a 	. 
	ld a,(hl)			;0527	7e 	~ 
	jp c,l0aeeh		;0528	da ee 0a 	. . . 
	cp 03ah		;052b	fe 3a 	. : 
	adc a,00ah		;052d	ce 0a 	. . 
	cp 0f6h		;052f	fe f6 	. . 
	ld c,006h		;0531	0e 06 	. . 
	cp 01eh		;0533	fe 1e 	. . 
	and 006h		;0535	e6 06 	. . 
	cp 0eeh		;0537	fe ee 	. . 
	or 0e6h		;0539	f6 e6 	. . 
	cp 0ech		;053b	fe ec 	. . 
	inc e			;053d	1c 	. 
	call pe,067fch		;053e	ec fc 67 	. . g 
	ld a,h			;0541	7c 	| 
	ld h,e			;0542	63 	c 
	ld a,b			;0543	78 	x 
	ex (sp),hl			;0544	e3 	. 
	rst 38h			;0545	ff 	. 
	pop hl			;0546	e1 	. 
	ld (iy+07fh),c		;0547	fd 71 7f 	. q  
	ld (hl),b			;054a	70 	p 
	ld a,(hl)			;054b	7e 	~ 
	jr c,$+65		;054c	38 3f 	8 ? 
	jr c,$+65		;054e	38 3f 	8 ? 
	ld e,01fh		;0550	1e 1f 	. . 
	ld e,01fh		;0552	1e 1f 	. . 
	rra			;0554	1f 	. 
	rra			;0555	1f 	. 
	rra			;0556	1f 	. 
	rra			;0557	1f 	. 
	rlca			;0558	07 	. 
	rlca			;0559	07 	. 
	rlca			;055a	07 	. 
	rlca			;055b	07 	. 
	ld (bc),a			;055c	02 	. 
	ld (bc),a			;055d	02 	. 
	ld (bc),a			;055e	02 	. 
	ld (bc),a			;055f	02 	. 
	rst 38h			;0560	ff 	. 
	inc a			;0561	3c 	< 
	rst 38h			;0562	ff 	. 
	rst 38h			;0563	ff 	. 
	rst 38h			;0564	ff 	. 
	nop			;0565	00 	. 
	rst 38h			;0566	ff 	. 
	inc a			;0567	3c 	< 
	rst 38h			;0568	ff 	. 
	in a,(0ffh)		;0569	db ff 	. . 
	rst 38h			;056b	ff 	. 
	call m,sub_3cffh		;056c	fc ff 3c 	. . < 
	ccf			;056f	3f 	? 
	inc sp			;0570	33 	3 
	call m,0cf00h		;0571	fc 00 cf 	. . . 
	rst 38h			;0574	ff 	. 
	ld bc,0ff01h		;0575	01 01 ff 	. . . 
	rst 38h			;0578	ff 	. 
	rst 10h			;0579	d7 	. 
	rst 10h			;057a	d7 	. 
	rst 38h			;057b	ff 	. 
	cp (hl)			;057c	be 	. 
	cp (hl)			;057d	be 	. 
	cp (hl)			;057e	be 	. 
	cp (hl)			;057f	be 	. 
	call c,0cc2ch		;0580	dc 2c cc 	. , . 
	inc a			;0583	3c 	< 
	cp h			;0584	bc 	. 
	ld e,h			;0585	5c 	\ 
	sbc a,h			;0586	9c 	. 
	ld a,h			;0587	7c 	| 
l0588h:
	ld a,h			;0588	7c 	| 
	sbc a,h			;0589	9c 	. 
	inc e			;058a	1c 	. 
	call m,sub_38f8h		;058b	fc f8 38 	. . 8 
	jr c,l0588h		;058e	38 f8 	8 . 
	ret m			;0590	f8 	. 
	cp b			;0591	b8 	. 
	cp b			;0592	b8 	. 
	ret m			;0593	f8 	. 
	ret m			;0594	f8 	. 
	ld a,b			;0595	78 	x 
	ld a,b			;0596	78 	x 
	ret m			;0597	f8 	. 
	ret p			;0598	f0 	. 
	ret p			;0599	f0 	. 
	ret p			;059a	f0 	. 
	ret p			;059b	f0 	. 
	ret nz			;059c	c0 	. 
	ret nz			;059d	c0 	. 
	ret nz			;059e	c0 	. 
	ret nz			;059f	c0 	. 
	nop			;05a0	00 	. 
	nop			;05a1	00 	. 
	nop			;05a2	00 	. 
l05a3h:
	nop			;05a3	00 	. 
	inc bc			;05a4	03 	. 
	inc bc			;05a5	03 	. 
	inc bc			;05a6	03 	. 
	inc bc			;05a7	03 	. 
	inc b			;05a8	04 	. 
	rlca			;05a9	07 	. 
	inc b			;05aa	04 	. 
	rlca			;05ab	07 	. 
	ld a,b			;05ac	78 	x 
	ld a,a			;05ad	7f 	 
	ld a,b			;05ae	78 	x 
	ld a,a			;05af	7f 	 
	ret c			;05b0	d8 	. 
	rst 8			;05b1	cf 	. 
	cp b			;05b2	b8 	. 
	sbc a,a			;05b3	9f 	. 
	ld (hl),b			;05b4	70 	p 
	ld (hl),e			;05b5	73 	s 
	ld a,h			;05b6	7c 	| 
	ld (hl),e			;05b7	73 	s 
	inc d			;05b8	14 	. 
	inc de			;05b9	13 	. 
	jr $+21		;05ba	18 13 	. . 
	inc b			;05bc	04 	. 
	rlca			;05bd	07 	. 
	ex af,af'			;05be	08 	. 
	inc de			;05bf	13 	. 
	ld a,h			;05c0	7c 	| 
	ld a,h			;05c1	7c 	| 
	ld a,h			;05c2	7c 	| 
	ld a,h			;05c3	7c 	| 
	rst 38h			;05c4	ff 	. 
	add a,e			;05c5	83 	. 
	add a,e			;05c6	83 	. 
	rst 38h			;05c7	ff 	. 
	or a			;05c8	b7 	. 
	ld c,b			;05c9	48 	H 
	nop			;05ca	00 	. 
	rst 38h			;05cb	ff 	. 
	dec hl			;05cc	2b 	+ 
	call nc,0ff00h		;05cd	d4 00 ff 	. . . 
	rra			;05d0	1f 	. 
	ret po			;05d1	e0 	. 
	nop			;05d2	00 	. 
	rst 38h			;05d3	ff 	. 
	inc hl			;05d4	23 	# 
	jp 0e01ch		;05d5	c3 1c e0 	. . . 
	ld c,b			;05d8	48 	H 
	adc a,b			;05d9	88 	. 
	jr nc,l05a3h		;05da	30 c7 	0 . 
	and (hl)			;05dc	a6 	. 
	ld h,046h		;05dd	26 46 	& F 
	sbc a,c			;05df	99 	. 
	nop			;05e0	00 	. 
	nop			;05e1	00 	. 
	nop			;05e2	00 	. 
	nop			;05e3	00 	. 
	ret nz			;05e4	c0 	. 
	ret nz			;05e5	c0 	. 
	ret nz			;05e6	c0 	. 
	ret nz			;05e7	c0 	. 
	ret p			;05e8	f0 	. 
	jr nc,l061bh		;05e9	30 30 	0 0 
	ret p			;05eb	f0 	. 
	rst 38h			;05ec	ff 	. 
	rra			;05ed	1f 	. 
	rra			;05ee	1f 	. 
	rst 38h			;05ef	ff 	. 
	push hl			;05f0	e5 	. 
	dec h			;05f1	25 	% 
	dec sp			;05f2	3b 	; 
	pop hl			;05f3	e1 	. 
	defb 0ddh,01dh,03fh	;illegal sequence		;05f4	dd 1d 3f 	. . ? 
	defb 0ddh,03ah,00ah	;illegal sequence		;05f7	dd 3a 0a 	. : . 
	ld c,0fah		;05fa	0e fa 	. . 
	ld a,d			;05fc	7a 	z 
	ld a,(bc)			;05fd	0a 	. 
	adc a,(hl)			;05fe	8e 	. 
	ld a,d			;05ff	7a 	z 
	ld (hl),037h		;0600	36 37 	6 7 
	jr nc,l062dh		;0602	30 29 	0 ) 
	ld a,(l383bh)		;0604	3a 3b 38 	: ; 8 
	dec (hl)			;0607	35 	5 
	ld a,02fh		;0608	3e 2f 	> / 
	inc l			;060a	2c 	, 
	dec l			;060b	2d 	- 
	inc l			;060c	2c 	, 
	inc h			;060d	24 	$ 
	scf			;060e	37 	7 
	inc h			;060f	24 	$ 
	ld a,b			;0610	78 	x 
	ld a,b			;0611	78 	x 
	ld a,a			;0612	7f 	 
	ld a,a			;0613	7f 	 
	rst 38h			;0614	ff 	. 
	rst 18h			;0615	df 	. 
	rst 8			;0616	cf 	. 
	rst 18h			;0617	df 	. 
	ret m			;0618	f8 	. 
	ret m			;0619	f8 	. 
	rst 28h			;061a	ef 	. 
l061bh:
	call m,0b7b7h		;061b	fc b7 b7 	. . . 
	rst 38h			;061e	ff 	. 
	or a			;061f	b7 	. 
	rst 38h			;0620	ff 	. 
	ld a,a			;0621	7f 	 
	ccf			;0622	3f 	? 
	add a,b			;0623	80 	. 
	cp 07eh		;0624	fe 7e 	. ~ 
	ld a,a			;0626	7f 	 
	cp a			;0627	bf 	. 
	ld a,(hl)			;0628	7e 	~ 
	ld h,b			;0629	60 	` 
	pop hl			;062a	e1 	. 
	ld h,c			;062b	61 	a 
	ld a,c			;062c	79 	y 
l062dh:
	ld sp,l37b7h		;062d	31 b7 37 	1 . 7 
	nop			;0630	00 	. 
	nop			;0631	00 	. 
	rst 38h			;0632	ff 	. 
	ret p			;0633	f0 	. 
	ld a,(hl)			;0634	7e 	~ 
	ld c,(hl)			;0635	4e 	N 
	add a,c			;0636	81 	. 
	nop			;0637	00 	. 
	ld a,h			;0638	7c 	| 
	ld h,h			;0639	64 	d 
	add a,e			;063a	83 	. 
	ld bc,08383h		;063b	01 83 83 	. . . 
	rst 38h			;063e	ff 	. 
	add a,e			;063f	83 	. 
	ld a,d			;0640	7a 	z 
	ld a,(de)			;0641	1a 	. 
	sbc a,(hl)			;0642	9e 	. 
	jp m,l1afah		;0643	fa fa 1a 	. . . 
	ld e,0fah		;0646	1e fa 	. . 
	ld (hl),016h		;0648	36 16 	6 . 
	sbc a,0f6h		;064a	de f6 	. . 
	ld l,006h		;064c	2e 06 	. . 
	sub 0eeh		;064e	d6 ee 	. . 
	cp h			;0650	bc 	. 
	adc a,b			;0651	88 	. 
	ret z			;0652	c8 	. 
	call m,094bch		;0653	fc bc 94 	. . . 
	call nc,0fefch		;0656	d4 fc fe 	. . . 
	xor d			;0659	aa 	. 
	xor d			;065a	aa 	. 
	cp 07fh		;065b	fe 7f 	.  
	daa			;065d	27 	' 
	and a			;065e	a7 	. 
	rst 38h			;065f	ff 	. 
	rst 38h			;0660	ff 	. 
	ret pe			;0661	e8 	. 
	rst 28h			;0662	ef 	. 
	rst 28h			;0663	ef 	. 
	ld a,a			;0664	7f 	 
	ld c,b			;0665	48 	H 
	ld l,a			;0666	6f 	o 
	ld l,a			;0667	6f 	o 
	ccf			;0668	3f 	? 
	jr nz,l06aah		;0669	20 3f 	  ? 
	inc a			;066b	3c 	< 
	rra			;066c	1f 	. 
	rra			;066d	1f 	. 
	rra			;066e	1f 	. 
	rra			;066f	1f 	. 
	ld h,026h		;0670	26 26 	& & 
	add hl,sp			;0672	39 	9 
	jr nc,l0695h		;0673	30 20 	0   
	jr nz,l06b6h		;0675	20 3f 	  ? 
	jr c,l0691h		;0677	38 18 	8 . 
	jr l069ah		;0679	18 1f 	. . 
	rra			;067b	1f 	. 
	rlca			;067c	07 	. 
	rlca			;067d	07 	. 
	rlca			;067e	07 	. 
	rlca			;067f	07 	. 
	rst 38h			;0680	ff 	. 
	ld a,h			;0681	7c 	| 
	ld a,a			;0682	7f 	 
	ld a,a			;0683	7f 	 
	rst 38h			;0684	ff 	. 
	ld b,b			;0685	40 	@ 
	ld a,a			;0686	7f 	 
	ld a,a			;0687	7f 	 
	rst 38h			;0688	ff 	. 
	rlca			;0689	07 	. 
	rst 38h			;068a	ff 	. 
l068bh:
	rrca			;068b	0f 	. 
sub_068ch:
	ret m			;068c	f8 	. 
	ret c			;068d	d8 	. 
	rst 38h			;068e	ff 	. 
	rst 18h			;068f	df 	. 
	daa			;0690	27 	' 
l0691h:
	jr nz,l068bh		;0691	20 f8 	  . 
	ccf			;0693	3f 	? 
	ld e,a			;0694	5f 	_ 
l0695h:
	dec bc			;0695	0b 	. 
	xor e			;0696	ab 	. 
	ld a,a			;0697	7f 	 
	rst 38h			;0698	ff 	. 
	ld d,l			;0699	55 	U 
l069ah:
	ld d,l			;069a	55 	U 
	rst 38h			;069b	ff 	. 
	call m,0fcfch		;069c	fc fc fc 	. . . 
	call m,095bfh		;069f	fc bf 95 	. . . 
	push de			;06a2	d5 	. 
	rst 38h			;06a3	ff 	. 
	cp a			;06a4	bf 	. 
	sub l			;06a5	95 	. 
	push de			;06a6	d5 	. 
	rst 38h			;06a7	ff 	. 
	ld a,a			;06a8	7f 	 
	inc hl			;06a9	23 	# 
l06aah:
	and e			;06aa	a3 	. 
	rst 38h			;06ab	ff 	. 
	cp 02eh		;06ac	fe 2e 	. . 
	ld l,0feh		;06ae	2e fe 	. . 
	call m,0d4d4h		;06b0	fc d4 d4 	. . . 
	call m,078f8h		;06b3	fc f8 78 	. . x 
l06b6h:
	ld a,b			;06b6	78 	x 
	ret m			;06b7	f8 	. 
	ret po			;06b8	e0 	. 
	ret po			;06b9	e0 	. 
	ret po			;06ba	e0 	. 
	ret po			;06bb	e0 	. 
	nop			;06bc	00 	. 
	nop			;06bd	00 	. 
	nop			;06be	00 	. 
	nop			;06bf	00 	. 
	ld bc,l0101h		;06c0	01 01 01 	. . . 
	ld bc,01b1bh		;06c3	01 1b 1b 	. . . 
	ld a,(de)			;06c6	1a 	. 
	ld a,(de)			;06c7	1a 	. 
	daa			;06c8	27 	' 
	ld h,03ch		;06c9	26 3c 	& < 
	inc h			;06cb	24 	$ 
	ld e,a			;06cc	5f 	_ 
	ld b,a			;06cd	47 	G 
	ld a,b			;06ce	78 	x 
	ld c,b			;06cf	48 	H 
	ld e,a			;06d0	5f 	_ 
	ld c,l			;06d1	4d 	M 
	ld a,b			;06d2	78 	x 
	ld c,b			;06d3	48 	H 
	cp a			;06d4	bf 	. 
	sbc a,l			;06d5	9d 	. 
	ret m			;06d6	f8 	. 
	sub b			;06d7	90 	. 
	or (hl)			;06d8	b6 	. 
	sub (hl)			;06d9	96 	. 
	push af			;06da	f5 	. 
	sbc a,b			;06db	98 	. 
	or e			;06dc	b3 	. 
	sub e			;06dd	93 	. 
	jp p,0f39ch		;06de	f2 9c f3 	. . . 
	di			;06e1	f3 	. 
	adc a,a			;06e2	8f 	. 
	add a,e			;06e3	83 	. 
	pop bc			;06e4	c1 	. 
	ret nz			;06e5	c0 	. 
	ccf			;06e6	3f 	? 
	nop			;06e7	00 	. 
	adc a,a			;06e8	8f 	. 
	add a,b			;06e9	80 	. 
	ld a,a			;06ea	7f 	 
	nop			;06eb	00 	. 
	sbc a,a			;06ec	9f 	. 
	add a,b			;06ed	80 	. 
	ld a,a			;06ee	7f 	 
	ld bc,l003fh		;06ef	01 3f 00 	. ? . 
	rst 38h			;06f2	ff 	. 
	inc bc			;06f3	03 	. 
	ccf			;06f4	3f 	? 
	ld bc,l06ffh		;06f5	01 ff 06 	. . . 
	ld a,006h		;06f8	3e 06 	> . 
l06fah:
	cp 009h		;06fa	fe 09 	. . 
	ld a,b			;06fc	78 	x 
	ex af,af'			;06fd	08 	. 
	ret m			;06fe	f8 	. 
l06ffh:
	rla			;06ff	17 	. 
	inc c			;0700	0c 	. 
l0701h:
	inc c			;0701	0c 	. 
	inc c			;0702	0c 	. 
	inc c			;0703	0c 	. 
	sub d			;0704	92 	. 
	sub d			;0705	92 	. 
l0706h:
	sbc a,(hl)			;0706	9e 	. 
l0707h:
	sub d			;0707	92 	. 
	jp (hl)			;0708	e9 	. 
	ld h,c			;0709	61 	a 
	rst 38h			;070a	ff 	. 
	ld h,c			;070b	61 	a 
	sbc a,l			;070c	9d 	. 
	ld bc,001ffh		;070d	01 ff 01 	. . . 
	defb 0fdh,001h,0ffh	;illegal sequence		;0710	fd 01 ff 	. . . 
	ld sp,hl			;0713	f9 	. 
	defb 0fdh,031h,0ffh	;illegal sequence		;0714	fd 31 ff 	. 1 . 
	defb 0fdh,0fch,078h	;illegal sequence		;0717	fd fc 78 	. . x 
	rst 38h			;071a	ff 	. 
	call m,078feh		;071b	fc fe 78 	. . x 
	rst 38h			;071e	ff 	. 
	call m,09dbdh		;071f	fc bd 9d 	. . . 
	sbc a,(iy-042h)		;0722	fd 9e be 	. . . 
	sbc a,d			;0725	9a 	. 
	jp p,0bebbh		;0726	f2 bb be 	. . . 
	sbc a,h			;0729	9c 	. 
	call p,07ebdh		;072a	f4 bd 7e 	. . ~ 
	inc d			;072d	14 	. 
	ld sp,hl			;072e	f9 	. 
	inc a			;072f	3c 	< 
	ld a,a			;0730	7f 	 
	rrca			;0731	0f 	. 
	cp 01eh		;0732	fe 1e 	. . 
	ld a,a			;0734	7f 	 
	inc c			;0735	0c 	. 
	rst 38h			;0736	ff 	. 
	rra			;0737	1f 	. 
	ld a,d			;0738	7a 	z 
	ld a,(de)			;0739	1a 	. 
	defb 0fdh,038h,074h	;illegal sequence		;073a	fd 38 74 	. 8 t 
	inc (hl)			;073d	34 	4 
	ei			;073e	fb 	. 
	jr nc,l07b8h		;073f	30 77 	0 w 
	rla			;0741	17 	. 
	rst 30h			;0742	f7 	. 
	rrca			;0743	0f 	. 
	ld l,a			;0744	6f 	o 
	inc c			;0745	0c 	. 
	ret pe			;0746	e8 	. 
	inc a			;0747	3c 	< 
	ld a,a			;0748	7f 	 
	inc e			;0749	1c 	. 
	push af			;074a	f5 	. 
	inc a			;074b	3c 	< 
	rst 38h			;074c	ff 	. 
	sub b			;074d	90 	. 
	ld h,e			;074e	63 	c 
	jr nc,l07d0h		;074f	30 7f 	0  
	nop			;0751	00 	. 
	rst 38h			;0752	ff 	. 
	nop			;0753	00 	. 
	rst 38h			;0754	ff 	. 
	nop			;0755	00 	. 
	rst 38h			;0756	ff 	. 
	sbc a,b			;0757	98 	. 
	rst 38h			;0758	ff 	. 
	ld h,b			;0759	60 	` 
	rst 38h			;075a	ff 	. 
	ld a,(hl)			;075b	7e 	~ 
	rst 38h			;075c	ff 	. 
	ld e,0ffh		;075d	1e ff 	. . 
	ccf			;075f	3f 	? 
	cp 038h		;0760	fe 38 	. 8 
	rst 38h			;0762	ff 	. 
	call m,03cfeh		;0763	fc fe 3c 	. . < 
	rst 38h			;0766	ff 	. 
	call m,03cfeh		;0767	fc fe 3c 	. . < 
	rst 38h			;076a	ff 	. 
	ld a,h			;076b	7c 	| 
	cp 03ch		;076c	fe 3c 	. < 
	rst 38h			;076e	ff 	. 
	call m,sub_18feh		;076f	fc fe 18 	. . . 
	rst 38h			;0772	ff 	. 
	ld a,h			;0773	7c 	| 
	cp 018h		;0774	fe 18 	. . 
	rst 38h			;0776	ff 	. 
	ld a,h			;0777	7c 	| 
	call m,0ff18h		;0778	fc 18 ff 	. . . 
	ld a,b			;077b	78 	x 
	add iy,sp		;077c	fd 39 	. 9 
	rst 38h			;077e	ff 	. 
	ld a,c			;077f	79 	y 
	ld (hl),a			;0780	77 	w 
	jr nc,$+1		;0781	30 ff 	0 . 
	scf			;0783	37 	7 
	ld a,e			;0784	7b 	{ 
	ld (de),a			;0785	12 	. 
	defb 0fdh,038h,075h	;illegal sequence		;0786	fd 38 75 	. 8 u 
	inc d			;0789	14 	. 
	ei			;078a	fb 	. 
	jr nc,$-9		;078b	30 f5 	0 . 
	sub h			;078d	94 	. 
	ei			;078e	fb 	. 
	or b			;078f	b0 	. 
	ld a,a			;0790	7f 	 
	ld c,b			;0791	48 	H 
	ld a,a			;0792	7f 	 
	ld e,a			;0793	5f 	_ 
	dec a			;0794	3d 	= 
	dec l			;0795	2d 	- 
	ld a,03ch		;0796	3e 3c 	> < 
	dec de			;0798	1b 	. 
	dec de			;0799	1b 	. 
	dec de			;079a	1b 	. 
	dec de			;079b	1b 	. 
	ex af,af'			;079c	08 	. 
	ex af,af'			;079d	08 	. 
	ex af,af'			;079e	08 	. 
	ex af,af'			;079f	08 	. 
	rst 38h			;07a0	ff 	. 
	inc e			;07a1	1c 	. 
	rst 38h			;07a2	ff 	. 
	ld a,a			;07a3	7f 	 
	rst 38h			;07a4	ff 	. 
	ret c			;07a5	d8 	. 
	rst 38h			;07a6	ff 	. 
	rst 38h			;07a7	ff 	. 
	rst 38h			;07a8	ff 	. 
	inc (hl)			;07a9	34 	4 
	rst 38h			;07aa	ff 	. 
	rst 38h			;07ab	ff 	. 
	rst 38h			;07ac	ff 	. 
	ld a,e			;07ad	7b 	{ 
	rst 38h			;07ae	ff 	. 
	rst 38h			;07af	ff 	. 
	rst 38h			;07b0	ff 	. 
	scf			;07b1	37 	7 
	rst 38h			;07b2	ff 	. 
	ld a,a			;07b3	7f 	 
	ld a,a			;07b4	7f 	 
	ld a,(l3fffh)		;07b5	3a ff 3f 	: . ? 
l07b8h:
	rst 38h			;07b8	ff 	. 
	ld c,0ffh		;07b9	0e ff 	. . 
	rst 8			;07bb	cf 	. 
	sbc a,e			;07bc	9b 	. 
	adc a,e			;07bd	8b 	. 
	ei			;07be	fb 	. 
	sbc a,e			;07bf	9b 	. 
	add iy,iy		;07c0	fd 29 	. ) 
	rst 38h			;07c2	ff 	. 
	ld sp,hl			;07c3	f9 	. 
	jp (iy)		;07c4	fd e9 	. . 
	rst 38h			;07c6	ff 	. 
	ld sp,hl			;07c7	f9 	. 
	jp m,0fec2h		;07c8	fa c2 fe 	. . . 
	jp p,0c2fah		;07cb	f2 fa c2 	. . . 
	cp 0f2h		;07ce	fe f2 	. . 
l07d0h:
	cp 066h		;07d0	fe 66 	. f 
	cp 0feh		;07d2	fe fe 	. . 
	call m,0fc74h		;07d4	fc 74 fc 	. t . 
	call m,0fcfch		;07d7	fc fc fc 	. . . 
	call m,sub_18fch		;07da	fc fc 18 	. . . 
	jr l07f7h		;07dd	18 18 	. . 
	jr $-126		;07df	18 80 	. . 
	add a,b			;07e1	80 	. 
	add a,b			;07e2	80 	. 
	add a,b			;07e3	80 	. 
	ret nz			;07e4	c0 	. 
	ret nz			;07e5	c0 	. 
	ret nz			;07e6	c0 	. 
	ret nz			;07e7	c0 	. 
	pop hl			;07e8	e1 	. 
	pop hl			;07e9	e1 	. 
	and c			;07ea	a1 	. 
	pop hl			;07eb	e1 	. 
	cp 0beh		;07ec	fe be 	. . 
	sbc a,(hl)			;07ee	9e 	. 
	cp a			;07ef	bf 	. 
	cp 09eh		;07f0	fe 9e 	. . 
	add a,(hl)			;07f2	86 	. 
	sbc a,a			;07f3	9f 	. 
	ld a,(hl)			;07f4	7e 	~ 
	ld c,(hl)			;07f5	4e 	N 
	ld b,d			;07f6	42 	B 
l07f7h:
	ld c,a			;07f7	4f 	O 
	ld a,(hl)			;07f8	7e 	~ 
	ld b,(hl)			;07f9	46 	F 
	ld b,d			;07fa	42 	B 
	ld b,a			;07fb	47 	G 
	cp h			;07fc	bc 	. 
	and h			;07fd	a4 	. 
	and h			;07fe	a4 	. 
l07ffh:
	and a			;07ff	a7 	. 
	inc a			;0800	3c 	< 
	inc a			;0801	3c 	< 
	inc a			;0802	3c 	< 
	inc a			;0803	3c 	< 
	ld a,(hl)			;0804	7e 	~ 
	ld a,(hl)			;0805	7e 	~ 
	ld l,(hl)			;0806	6e 	n 
	ld a,(hl)			;0807	7e 	~ 
	rst 38h			;0808	ff 	. 
l0809h:
	rst 28h			;0809	ef 	. 
	rst 8			;080a	cf 	. 
	rst 28h			;080b	ef 	. 
	ld a,(hl)			;080c	7e 	~ 
	ld a,a			;080d	7f 	 
	ld c,a			;080e	4f 	O 
	cp 07eh		;080f	fe 7e 	. ~ 
	ld a,a			;0811	7f 	 
	ld a,a			;0812	7f 	 
	cp 07eh		;0813	fe 7e 	. ~ 
	ld a,(hl)			;0815	7e 	~ 
	ld l,(hl)			;0816	6e 	n 
	rst 38h			;0817	ff 	. 
	ld a,(hl)			;0818	7e 	~ 
	ld a,(hl)			;0819	7e 	~ 
	ld l,(hl)			;081a	6e 	n 
	rst 38h			;081b	ff 	. 
	inc a			;081c	3c 	< 
	inc a			;081d	3c 	< 
	inc a			;081e	3c 	< 
	rst 38h			;081f	ff 	. 
	ld bc,l0101h		;0820	01 01 01 	. . . 
	ld bc,l0303h		;0823	01 03 03 	. . . 
	inc bc			;0826	03 	. 
	inc bc			;0827	03 	. 
	rlca			;0828	07 	. 
	dec b			;0829	05 	. 
	dec b			;082a	05 	. 
	dec b			;082b	05 	. 
	rst 38h			;082c	ff 	. 
	ei			;082d	fb 	. 
	ld sp,hl			;082e	f9 	. 
	ei			;082f	fb 	. 
	ld a,a			;0830	7f 	 
	jp 043c1h		;0831	c3 c1 43 	. . C 
	ld a,(hl)			;0834	7e 	~ 
	add a,0c2h		;0835	c6 c2 	. . 
	ld b,(hl)			;0837	46 	F 
	ld a,(hl)			;0838	7e 	~ 
	adc a,0c2h		;0839	ce c2 	. . 
	ld c,(hl)			;083b	4e 	N 
	dec a			;083c	3d 	= 
	push iy		;083d	fd e5 	. . 
	ccf			;083f	3f 	? 
	ret c			;0840	d8 	. 
l0841h:
	ret c			;0841	d8 	. 
	ret c			;0842	d8 	. 
	rst 38h			;0843	ff 	. 
	ret nz			;0844	c0 	. 
	rst 8			;0845	cf 	. 
	rst 8			;0846	cf 	. 
	rst 38h			;0847	ff 	. 
	and a			;0848	a7 	. 
	and b			;0849	a0 	. 
	and b			;084a	a0 	. 
	ret m			;084b	f8 	. 
	sub a			;084c	97 	. 
	sub e			;084d	93 	. 
	sub e			;084e	93 	. 
	ei			;084f	fb 	. 
	or e			;0850	b3 	. 
	or d			;0851	b2 	. 
	or d			;0852	b2 	. 
	cp 0b1h		;0853	fe b1 	. . 
	or c			;0855	b1 	. 
	or c			;0856	b1 	. 
	rst 38h			;0857	ff 	. 
	sub b			;0858	90 	. 
	sub b			;0859	90 	. 
	sub b			;085a	90 	. 
	rst 38h			;085b	ff 	. 
	ld h,b			;085c	60 	` 
	ld h,b			;085d	60 	` 
	ld h,b			;085e	60 	` 
	ld a,a			;085f	7f 	 
	inc a			;0860	3c 	< 
	inc a			;0861	3c 	< 
	inc a			;0862	3c 	< 
	rst 38h			;0863	ff 	. 
	jr l0841h		;0864	18 db 	. . 
	in a,(0ffh)		;0866	db ff 	. . 
	jp l2c2ch		;0868	c3 2c 2c 	. , , 
	inc (hl)			;086b	34 	4 
	rst 20h			;086c	e7 	. 
	dec bc			;086d	0b 	. 
	dec bc			;086e	0b 	. 
	inc de			;086f	13 	. 
	rst 20h			;0870	e7 	. 
	adc a,d			;0871	8a 	. 
	adc a,d			;0872	8a 	. 
	sub d			;0873	92 	. 
	rst 20h			;0874	e7 	. 
	sbc a,c			;0875	99 	. 
	sbc a,c			;0876	99 	. 
	add a,c			;0877	81 	. 
l0878h:
	inc a			;0878	3c 	< 
	ld a,(hl)			;0879	7e 	~ 
	ld a,(hl)			;087a	7e 	~ 
	add a,c			;087b	81 	. 
	ld a,(hl)			;087c	7e 	~ 
	rst 38h			;087d	ff 	. 
	rst 38h			;087e	ff 	. 
	inc h			;087f	24 	$ 
	dec de			;0880	1b 	. 
	ld a,e			;0881	7b 	{ 
	ld a,e			;0882	7b 	{ 
	sbc a,a			;0883	9f 	. 
	dec b			;0884	05 	. 
	push af			;0885	f5 	. 
	push af			;0886	f5 	. 
	rst 38h			;0887	ff 	. 
	jp (hl)			;0888	e9 	. 
	add hl,de			;0889	19 	. 
	add hl,de			;088a	19 	. 
	rrca			;088b	0f 	. 
	defb 0edh;next byte illegal after ed		;088c	ed 	. 
	sbc a,l			;088d	9d 	. 
	sbc a,l			;088e	9d 	. 
	adc a,a			;088f	8f 	. 
	call 09d9dh		;0890	cd 9d 9d 	. . . 
	xor a			;0893	af 	. 
	adc a,c			;0894	89 	. 
	sbc a,c			;0895	99 	. 
	sbc a,c			;0896	99 	. 
	rst 28h			;0897	ef 	. 
	ld b,07eh		;0898	06 7e 	. ~ 
	ld a,(hl)			;089a	7e 	~ 
	add a,(hl)			;089b	86 	. 
	ld (bc),a			;089c	02 	. 
	cp 0feh		;089d	fe fe 	. . 
	ld (bc),a			;089f	02 	. 
	ld b,b			;08a0	40 	@ 
	ld b,b			;08a1	40 	@ 
	ld b,b			;08a2	40 	@ 
	ld a,a			;08a3	7f 	 
	ld b,e			;08a4	43 	C 
	ld b,b			;08a5	40 	@ 
	ld b,e			;08a6	43 	C 
	ld a,h			;08a7	7c 	| 
	ld b,a			;08a8	47 	G 
	ld b,d			;08a9	42 	B 
	ld b,(hl)			;08aa	46 	F 
	ld a,d			;08ab	7a 	z 
	daa			;08ac	27 	' 
	ld (l3a26h),hl		;08ad	22 26 3a 	" & : 
	inc hl			;08b0	23 	# 
	jr nz,l08d5h		;08b1	20 22 	  " 
	inc a			;08b3	3c 	< 
	add hl,de			;08b4	19 	. 
	jr l08cfh		;08b5	18 18 	. . 
	ld e,007h		;08b7	1e 07 	. . 
	rlca			;08b9	07 	. 
	rlca			;08ba	07 	. 
	rlca			;08bb	07 	. 
	nop			;08bc	00 	. 
	nop			;08bd	00 	. 
	nop			;08be	00 	. 
	nop			;08bf	00 	. 
	ld a,(hl)			;08c0	7e 	~ 
	ld b,e			;08c1	43 	C 
	ld a,a			;08c2	7f 	 
	cp h			;08c3	bc 	. 
	rst 38h			;08c4	ff 	. 
	inc a			;08c5	3c 	< 
	rst 38h			;08c6	ff 	. 
	inc a			;08c7	3c 	< 
	rst 38h			;08c8	ff 	. 
	jp 0c37eh		;08c9	c3 7e c3 	. ~ . 
	jp 07ebdh		;08cc	c3 bd 7e 	. . ~ 
l08cfh:
	add a,c			;08cf	81 	. 
	add a,c			;08d0	81 	. 
	ld b,d			;08d1	42 	B 
	jp l3c3ch		;08d2	c3 3c 3c 	. < < 
l08d5h:
	inc a			;08d5	3c 	< 
	inc c			;08d6	0c 	. 
	rst 38h			;08d7	ff 	. 
	rst 38h			;08d8	ff 	. 
	rst 38h			;08d9	ff 	. 
	cp a			;08da	bf 	. 
	rst 38h			;08db	ff 	. 
	ld a,(hl)			;08dc	7e 	~ 
	ld a,(hl)			;08dd	7e 	~ 
	ld a,(hl)			;08de	7e 	~ 
	ld a,(hl)			;08df	7e 	~ 
	ld (bc),a			;08e0	02 	. 
	ld e,01eh		;08e1	1e 1e 	. . 
	jp po,l0ec2h		;08e3	e2 c2 0e 	. . . 
	adc a,032h		;08e6	ce 32 	. 2 
	jp po,06e4eh		;08e8	e2 4e 6e 	. N n 
	ld d,d			;08eb	52 	R 
	call po,06c4ch		;08ec	e4 4c 6c 	. L l 
	ld d,h			;08ef	54 	T 
	call nz,05c1ch		;08f0	c4 1c 5c 	. . \ 
	inc h			;08f3	24 	$ 
	sbc a,b			;08f4	98 	. 
	jr c,l092fh		;08f5	38 38 	8 8 
	ld e,b			;08f7	58 	X 
	ret po			;08f8	e0 	. 
	ret po			;08f9	e0 	. 
	ret po			;08fa	e0 	. 
	ret po			;08fb	e0 	. 
	nop			;08fc	00 	. 
	nop			;08fd	00 	. 
	nop			;08fe	00 	. 
	nop			;08ff	00 	. 
	nop			;0900	00 	. 
	nop			;0901	00 	. 
	ex af,af'			;0902	08 	. 
	nop			;0903	00 	. 
	rrca			;0904	0f 	. 
	rrca			;0905	0f 	. 
	rra			;0906	1f 	. 
	rrca			;0907	0f 	. 
	rra			;0908	1f 	. 
l0909h:
	rrca			;0909	0f 	. 
	ccf			;090a	3f 	? 
	jr l094ch		;090b	18 3f 	. ? 
l090dh:
	rra			;090d	1f 	. 
	ld a,a			;090e	7f 	 
	djnz l094eh		;090f	10 3d 	. = 
	dec e			;0911	1d 	. 
	ld a,l			;0912	7d 	} 
l0913h:
	ld (l3a7ah),a		;0913	32 7a 3a 	2 z : 
	jp m,07825h		;0916	fa 25 78 	. % x 
	jr c,l0913h		;0919	38 f8 	8 . 
	ld h,a			;091b	67 	g 
	ld (hl),c			;091c	71 	q 
	ld sp,06ff1h		;091d	31 f1 6f 	1 . o 
	call m,0fcfch		;0920	fc fc fc 	. . . 
	call m,0ebebh		;0923	fc eb eb 	. . . 
	ex de,hl			;0926	eb 	. 
	rla			;0927	17 	. 
	and h			;0928	a4 	. 
	and h			;0929	a4 	. 
	and h			;092a	a4 	. 
	ld e,a			;092b	5f 	_ 
	ld e,e			;092c	5b 	[ 
	ld e,e			;092d	5b 	[ 
	ld e,e			;092e	5b 	[ 
l092fh:
	cp h			;092f	bc 	. 
	dec (hl)			;0930	35 	5 
	dec (hl)			;0931	35 	5 
	dec (hl)			;0932	35 	5 
	jp m,04c5ch		;0933	fa 5c 4c 	. \ L 
	ld a,h			;0936	7c 	| 
	rst 8			;0937	cf 	. 
	cp a			;0938	bf 	. 
	add a,a			;0939	87 	. 
	rst 38h			;093a	ff 	. 
	sbc a,a			;093b	9f 	. 
	ccf			;093c	3f 	? 
	inc bc			;093d	03 	. 
	rst 38h			;093e	ff 	. 
	rra			;093f	1f 	. 
	ld b,b			;0940	40 	@ 
	ld b,b			;0941	40 	@ 
	ld (hl),b			;0942	70 	p 
	ld b,b			;0943	40 	@ 
	ld (hl),b			;0944	70 	p 
	ld b,b			;0945	40 	@ 
	ld a,b			;0946	78 	x 
	ld h,b			;0947	60 	` 
	ret p			;0948	f0 	. 
	ret po			;0949	e0 	. 
	ret m			;094a	f8 	. 
	ret p			;094b	f0 	. 
l094ch:
	ret m			;094c	f8 	. 
	ret p			;094d	f0 	. 
l094eh:
	call m,07cf8h		;094e	fc f8 7c 	. . | 
	ld (hl),b			;0951	70 	p 
	ld a,(hl)			;0952	7e 	~ 
	ret m			;0953	f8 	. 
	cp h			;0954	bc 	. 
	or b			;0955	b0 	. 
	cp (hl)			;0956	be 	. 
	ld a,b			;0957	78 	x 
	ld a,h			;0958	7c 	| 
	ld h,b			;0959	60 	` 
	ld a,(hl)			;095a	7e 	~ 
	or b			;095b	b0 	. 
	cp h			;095c	bc 	. 
	and b			;095d	a0 	. 
	cp (hl)			;095e	be 	. 
	ret p			;095f	f0 	. 
	halt			;0960	76 	v 
	halt			;0961	76 	v 
	ld (hl),a			;0962	77 	w 
	ld c,(hl)			;0963	4e 	N 
	and 0e6h		;0964	e6 e6 	. . 
	rst 20h			;0966	e7 	. 
	sbc a,(hl)			;0967	9e 	. 
	rst 28h			;0968	ef 	. 
	rst 28h			;0969	ef 	. 
	rst 28h			;096a	ef 	. 
	sbc a,a			;096b	9f 	. 
	rst 10h			;096c	d7 	. 
	rst 10h			;096d	d7 	. 
	in a,(0b7h)		;096e	db b7 	. . 
	push de			;0970	d5 	. 
	call nc,0b6d8h		;0971	d4 d8 b6 	. . . 
	in a,(0d8h)		;0974	db d8 	. . 
	call c,09fb8h		;0976	dc b8 9f 	. . . 
	sub a			;0979	97 	. 
	sbc a,a			;097a	9f 	. 
	rst 38h			;097b	ff 	. 
	rst 18h			;097c	df 	. 
	ret nc			;097d	d0 	. 
	rst 18h			;097e	df 	. 
	cp b			;097f	b8 	. 
	ld a,a			;0980	7f 	 
	rlca			;0981	07 	. 
	rst 38h			;0982	ff 	. 
l0983h:
	ccf			;0983	3f 	? 
	ld a,a			;0984	7f 	 
	ld e,0ffh		;0985	1e ff 	. . 
	ccf			;0987	3f 	? 
	ld a,a			;0988	7f 	 
	ccf			;0989	3f 	? 
	defb 0fdh,07fh,07fh	;illegal sequence		;098a	fd 7f 7f 	.   
	ld a,a			;098d	7f 	 
	pop af			;098e	f1 	. 
	ld a,a			;098f	7f 	 
	ld l,l			;0990	6d 	m 
	ld b,c			;0991	41 	A 
	jp 07351h		;0992	c3 51 73 	. Q s 
	ld b,d			;0995	42 	B 
	rst 8			;0996	cf 	. 
	ld b,e			;0997	43 	C 
	ld a,a			;0998	7f 	 
	ld a,h			;0999	7c 	| 
	rst 38h			;099a	ff 	. 
	ld a,a			;099b	7f 	 
	ld a,a			;099c	7f 	 
	ld (hl),b			;099d	70 	p 
	rst 38h			;099e	ff 	. 
	ld (hl),a			;099f	77 	w 
	cp 0f2h		;09a0	fe f2 	. . 
	cp 0fah		;09a2	fe fa 	. . 
	cp 0feh		;09a4	fe fe 	. . 
	cp 0feh		;09a6	fe fe 	. . 
	jp m,0fa7ah		;09a8	fa 7a fa 	. z . 
	cp 0dah		;09ab	fe da 	. . 
	ld e,d			;09ad	5a 	Z 
	jp c,0d5feh		;09ae	da fe d5 	. . . 
	ld d,l			;09b1	55 	U 
	push de			;09b2	d5 	. 
	rst 38h			;09b3	ff 	. 
	push de			;09b4	d5 	. 
	push de			;09b5	d5 	. 
	push de			;09b6	d5 	. 
	rst 38h			;09b7	ff 	. 
	exx			;09b8	d9 	. 
	exx			;09b9	d9 	. 
	exx			;09ba	d9 	. 
	rst 38h			;09bb	ff 	. 
	exx			;09bc	d9 	. 
	exx			;09bd	d9 	. 
	exx			;09be	d9 	. 
	rst 38h			;09bf	ff 	. 
	sbc a,(hl)			;09c0	9e 	. 
	sub b			;09c1	90 	. 
	sbc a,a			;09c2	9f 	. 
	ret m			;09c3	f8 	. 
	ld e,(hl)			;09c4	5e 	^ 
	ld d,b			;09c5	50 	P 
	ld e,a			;09c6	5f 	_ 
	ld a,b			;09c7	78 	x 
	ld e,a			;09c8	5f 	_ 
	ld d,c			;09c9	51 	Q 
	ld e,a			;09ca	5f 	_ 
	ld a,l			;09cb	7d 	} 
	ld c,a			;09cc	4f 	O 
	ld c,b			;09cd	48 	H 
	ld c,a			;09ce	4f 	O 
	ld a,l			;09cf	7d 	} 
	ld c,a			;09d0	4f 	O 
	ld c,e			;09d1	4b 	K 
	ld c,a			;09d2	4f 	O 
	ld a,a			;09d3	7f 	 
	cpl			;09d4	2f 	/ 
	jr z,l0a06h		;09d5	28 2f 	( / 
	inc a			;09d7	3c 	< 
	ccf			;09d8	3f 	? 
	inc a			;09d9	3c 	< 
	ccf			;09da	3f 	? 
	ccf			;09db	3f 	? 
	inc bc			;09dc	03 	. 
	inc bc			;09dd	03 	. 
	inc bc			;09de	03 	. 
	inc bc			;09df	03 	. 
	ccf			;09e0	3f 	? 
	add hl,sp			;09e1	39 	9 
	rst 38h			;09e2	ff 	. 
	ccf			;09e3	3f 	? 
	cp a			;09e4	bf 	. 
	sbc a,c			;09e5	99 	. 
	ld a,a			;09e6	7f 	 
	rra			;09e7	1f 	. 
	rst 38h			;09e8	ff 	. 
	ld sp,hl			;09e9	f9 	. 
	rst 38h			;09ea	ff 	. 
	rst 38h			;09eb	ff 	. 
	rst 38h			;09ec	ff 	. 
	pop af			;09ed	f1 	. 
	rst 38h			;09ee	ff 	. 
	rst 38h			;09ef	ff 	. 
	rst 38h			;09f0	ff 	. 
	defb 0fdh,0ffh,0ffh	;illegal sequence		;09f1	fd ff ff 	. . . 
	rst 38h			;09f4	ff 	. 
	inc bc			;09f5	03 	. 
	rst 38h			;09f6	ff 	. 
	rra			;09f7	1f 	. 
	rst 38h			;09f8	ff 	. 
	rra			;09f9	1f 	. 
	rst 38h			;09fa	ff 	. 
	ccf			;09fb	3f 	? 
	cp 0feh		;09fc	fe fe 	. . 
	cp 0feh		;09fe	fe fe 	. . 
	ld l,l			;0a00	6d 	m 
	ld l,l			;0a01	6d 	m 
	ld l,l			;0a02	6d 	m 
	rst 38h			;0a03	ff 	. 
	xor (hl)			;0a04	ae 	. 
	xor (hl)			;0a05	ae 	. 
l0a06h:
	xor (hl)			;0a06	ae 	. 
	cp 0a6h		;0a07	fe a6 	. . 
	and (hl)			;0a09	a6 	. 
	and (hl)			;0a0a	a6 	. 
	cp 033h		;0a0b	fe 33 	. 3 
	inc sp			;0a0d	33 	3 
l0a0eh:
	inc sp			;0a0e	33 	3 
	rst 38h			;0a0f	ff 	. 
	add hl,sp			;0a10	39 	9 
	add hl,sp			;0a11	39 	9 
	add hl,sp			;0a12	39 	9 
	rst 38h			;0a13	ff 	. 
	ld a,(l3a3ah)		;0a14	3a 3a 3a 	: : : 
	cp 0dch		;0a17	fe dc 	. . 
	call c,0fcdch		;0a19	dc dc fc 	. . . 
	ld (hl),b			;0a1c	70 	p 
	ld (hl),b			;0a1d	70 	p 
	ld (hl),b			;0a1e	70 	p 
	ld (hl),b			;0a1f	70 	p 
	jr $+26		;0a20	18 18 	. . 
	jr $+26		;0a22	18 18 	. . 
	inc d			;0a24	14 	. 
	inc d			;0a25	14 	. 
	inc e			;0a26	1c 	. 
	inc d			;0a27	14 	. 
	inc de			;0a28	13 	. 
	inc de			;0a29	13 	. 
	rra			;0a2a	1f 	. 
	inc de			;0a2b	13 	. 
	add hl,de			;0a2c	19 	. 
	add hl,de			;0a2d	19 	. 
	rra			;0a2e	1f 	. 
	add hl,de			;0a2f	19 	. 
	rra			;0a30	1f 	. 
	dec e			;0a31	1d 	. 
	rra			;0a32	1f 	. 
	dec e			;0a33	1d 	. 
	rra			;0a34	1f 	. 
	inc e			;0a35	1c 	. 
	rra			;0a36	1f 	. 
	inc e			;0a37	1c 	. 
	cpl			;0a38	2f 	/ 
	ld a,02fh		;0a39	3e 2f 	> / 
	ld a,028h		;0a3b	3e 28 	> ( 
	jr c,l0a67h		;0a3d	38 28 	8 ( 
	ccf			;0a3f	3f 	? 
	ld a,03eh		;0a40	3e 3e 	> > 
	ld a,03eh		;0a42	3e 3e 	> > 
	rst 0			;0a44	c7 	. 
	ld sp,hl			;0a45	f9 	. 
	pop bc			;0a46	c1 	. 
	rst 38h			;0a47	ff 	. 
	cpl			;0a48	2f 	/ 
	ret nc			;0a49	d0 	. 
	nop			;0a4a	00 	. 
	rst 18h			;0a4b	df 	. 
	ld c,a			;0a4c	4f 	O 
	or c			;0a4d	b1 	. 
	ld bc,05fbfh		;0a4e	01 bf 5f 	. . _ 
	and c			;0a51	a1 	. 
	ld bc,09fbfh		;0a52	01 bf 9f 	. . . 
	jp po,0ff83h		;0a55	e2 83 ff 	. . . 
	sbc a,h			;0a58	9c 	. 
	call pe,0ff8ch		;0a59	ec 8c ff 	. . . 
	ret c			;0a5c	d8 	. 
	ld (hl),b			;0a5d	70 	p 
	ret c			;0a5e	d8 	. 
	ld a,a			;0a5f	7f 	 
	ld c,00eh		;0a60	0e 0e 	. . 
	ld c,00eh		;0a62	0e 0e 	. . 
	jp nc,0ded2h		;0a64	d2 d2 de 	. . . 
l0a67h:
	jp nc,022eeh		;0a67	d2 ee 22 	. . " 
	ld a,0e6h		;0a6a	3e e6 	> . 
	call c,0fcc8h		;0a6c	dc c8 fc 	. . . 
	call z,sub_183ch		;0a6f	cc 3c 18 	. < . 
	call m,07e1ch		;0a72	fc 1c 7e 	. . ~ 
	ld a,(0be7eh)		;0a75	3a 7e be 	: ~ . 
	ld a,(hl)			;0a78	7e 	~ 
	ld a,(0fe7eh)		;0a79	3a 7e fe 	: ~ . 
	rst 38h			;0a7c	ff 	. 
	ld sp,07f79h		;0a7d	31 79 7f 	1 y  
	ld c,a			;0a80	4f 	O 
	ld (hl),b			;0a81	70 	p 
	ld b,b			;0a82	40 	@ 
	ld (hl),b			;0a83	70 	p 
	ld d,a			;0a84	57 	W 
	ld (hl),d			;0a85	72 	r 
	ld e,d			;0a86	5a 	Z 
	ld (hl),d			;0a87	72 	r 
	sub e			;0a88	93 	. 
	ret p			;0a89	f0 	. 
	sbc a,h			;0a8a	9c 	. 
	ret p			;0a8b	f0 	. 
	and c			;0a8c	a1 	. 
	ret po			;0a8d	e0 	. 
	cp a			;0a8e	bf 	. 
	ret po			;0a8f	e0 	. 
	and c			;0a90	a1 	. 
	ret po			;0a91	e0 	. 
	cp a			;0a92	bf 	. 
	ret po			;0a93	e0 	. 
	cp a			;0a94	bf 	. 
	ld sp,hl			;0a95	f9 	. 
	cp (hl)			;0a96	be 	. 
	ret m			;0a97	f8 	. 
	cp a			;0a98	bf 	. 
	rst 20h			;0a99	e7 	. 
	cp a			;0a9a	bf 	. 
	rst 38h			;0a9b	ff 	. 
	rst 38h			;0a9c	ff 	. 
	pop af			;0a9d	f1 	. 
	pop af			;0a9e	f1 	. 
	pop af			;0a9f	f1 	. 
	ld (hl),a			;0aa0	77 	w 
	jr nz,$+114		;0aa1	20 70 	  p 
	xor b			;0aa3	a8 	. 
	rst 18h			;0aa4	df 	. 
	inc b			;0aa5	04 	. 
	ld (hl),h			;0aa6	74 	t 
	inc b			;0aa7	04 	. 
	cp h			;0aa8	bc 	. 
	jr nz,l0afeh		;0aa9	20 53 	  S 
	nop			;0aab	00 	. 
	ld h,e			;0aac	63 	c 
	ld h,b			;0aad	60 	` 
	sbc a,a			;0aae	9f 	. 
	ld bc,0c0cfh		;0aaf	01 cf c0 	. . . 
	ccf			;0ab2	3f 	? 
	rlca			;0ab3	07 	. 
	adc a,a			;0ab4	8f 	. 
	add a,a			;0ab5	87 	. 
	ld a,a			;0ab6	7f 	 
	rlca			;0ab7	07 	. 
	rst 38h			;0ab8	ff 	. 
	call m,0fcfch		;0ab9	fc fc fc 	. . . 
	rst 38h			;0abc	ff 	. 
	inc sp			;0abd	33 	3 
	djnz l0af3h		;0abe	10 33 	. 3 
	rst 38h			;0ac0	ff 	. 
	ld sp,07f79h		;0ac1	31 79 7f 	1 y  
	ld a,a			;0ac4	7f 	 
	add hl,de			;0ac5	19 	. 
	ld sp,hl			;0ac6	f9 	. 
	ld a,a			;0ac7	7f 	 
	rst 38h			;0ac8	ff 	. 
	dec a			;0ac9	3d 	= 
	defb 0fdh,07fh,0ffh	;illegal sequence		;0aca	fd 7f ff 	.  . 
	dec e			;0acd	1d 	. 
	defb 0fdh,0ffh,0feh	;illegal sequence		;0ace	fd ff fe 	. . . 
	ld a,0feh		;0ad1	3e fe 	> . 
	cp 0ffh		;0ad3	fe ff 	. . 
	defb 0edh;next byte illegal after ed		;0ad5	ed 	. 
	defb 0fdh,0ffh,0ffh	;illegal sequence		;0ad6	fd ff ff 	. . . 
	ld a,c			;0ad9	79 	y 
	ld e,c			;0ada	59 	Y 
	ld a,a			;0adb	7f 	 
	rst 38h			;0adc	ff 	. 
	cp c			;0add	b9 	. 
	add hl,sp			;0ade	39 	9 
	cp a			;0adf	bf 	. 
	ld e,a			;0ae0	5f 	_ 
	ld e,l			;0ae1	5d 	] 
	ld b,c			;0ae2	41 	A 
	ld a,l			;0ae3	7d 	} 
	rst 38h			;0ae4	ff 	. 
	call m,0fcf8h		;0ae5	fc f8 fc 	. . . 
	and a			;0ae8	a7 	. 
	rst 20h			;0ae9	e7 	. 
	and b			;0aea	a0 	. 
	rst 38h			;0aeb	ff 	. 
	ld a,c			;0aec	79 	y 
	ld a,c			;0aed	79 	y 
l0aeeh:
	ld a,c			;0aee	79 	y 
	ld a,a			;0aef	7f 	 
	ld e,(hl)			;0af0	5e 	^ 
	ld a,(hl)			;0af1	7e 	~ 
	ld e,a			;0af2	5f 	_ 
l0af3h:
	ld a,(hl)			;0af3	7e 	~ 
	ld e,l			;0af4	5d 	] 
	ld l,h			;0af5	6c 	l 
	ld c,a			;0af6	4f 	O 
	ld a,h			;0af7	7c 	| 
	cpl			;0af8	2f 	/ 
	inc sp			;0af9	33 	3 
	inc hl			;0afa	23 	# 
	ccf			;0afb	3f 	? 
	inc e			;0afc	1c 	. 
	inc e			;0afd	1c 	. 
l0afeh:
	inc e			;0afe	1c 	. 
	inc e			;0aff	1c 	. 
l0b00h:
	rst 38h			;0b00	ff 	. 
	di			;0b01	f3 	. 
	pop af			;0b02	f1 	. 
	di			;0b03	f3 	. 
	rst 38h			;0b04	ff 	. 
	rst 20h			;0b05	e7 	. 
	ret po			;0b06	e0 	. 
	rst 20h			;0b07	e7 	. 
	pop bc			;0b08	c1 	. 
	ld b,c			;0b09	41 	A 
	ld b,b			;0b0a	40 	@ 
	ld a,a			;0b0b	7f 	 
	cp 0feh		;0b0c	fe fe 	. . 
	cp 0ffh		;0b0e	fe ff 	. . 
	rlca			;0b10	07 	. 
l0b11h:
	ld bc,001ffh		;0b11	01 ff 01 	. . . 
	rst 38h			;0b14	ff 	. 
	ld bc,l07ffh		;0b15	01 ff 07 	. . . 
	rst 38h			;0b18	ff 	. 
	adc a,a			;0b19	8f 	. 
	rst 38h			;0b1a	ff 	. 
	rst 38h			;0b1b	ff 	. 
	ld a,(hl)			;0b1c	7e 	~ 
	ld a,(hl)			;0b1d	7e 	~ 
	ld a,(hl)			;0b1e	7e 	~ 
	ld a,(hl)			;0b1f	7e 	~ 
	rst 28h			;0b20	ef 	. 
	ex de,hl			;0b21	eb 	. 
	adc a,e			;0b22	8b 	. 
	rst 38h			;0b23	ff 	. 
	rst 38h			;0b24	ff 	. 
	ei			;0b25	fb 	. 
	ld a,e			;0b26	7b 	{ 
	rst 38h			;0b27	ff 	. 
	adc a,0ceh		;0b28	ce ce 	. . 
	ld c,0feh		;0b2a	0e fe 	. . 
	cp 0fah		;0b2c	fe fa 	. . 
	ld a,d			;0b2e	7a 	z 
	cp 03eh		;0b2f	fe 3e 	. > 
	ld (0fe32h),a		;0b31	32 32 fe 	2 2 . 
	call m,0c4c4h		;0b34	fc c4 c4 	. . . 
	call m,098f8h		;0b37	fc f8 98 	. . . 
	sbc a,b			;0b3a	98 	. 
	ret m			;0b3b	f8 	. 
	ret po			;0b3c	e0 	. 
	ret po			;0b3d	e0 	. 
	ret po			;0b3e	e0 	. 
	ret po			;0b3f	e0 	. 
	rrca			;0b40	0f 	. 
	inc c			;0b41	0c 	. 
	rrca			;0b42	0f 	. 
	ld c,01fh		;0b43	0e 1f 	. . 
	ld e,013h		;0b45	1e 13 	. . 
	ld e,03fh		;0b47	1e 3f 	. ? 
	ld (hl),023h		;0b49	36 23 	6 # 
	scf			;0b4b	37 	7 
	ld a,a			;0b4c	7f 	 
	ld a,a			;0b4d	7f 	 
	ld e,a			;0b4e	5f 	_ 
	ld a,a			;0b4f	7f 	 
	ld l,c			;0b50	69 	i 
	ld a,c			;0b51	79 	y 
	ld l,c			;0b52	69 	i 
	ld l,a			;0b53	6f 	o 
	ld c,d			;0b54	4a 	J 
	ld l,d			;0b55	6a 	j 
	ld e,d			;0b56	5a 	Z 
	ld c,l			;0b57	4d 	M 
	ld c,d			;0b58	4a 	J 
	ld c,d			;0b59	4a 	J 
l0b5ah:
	ld a,d			;0b5a	7a 	z 
	ld c,l			;0b5b	4d 	M 
	ld c,e			;0b5c	4b 	K 
	ld c,e			;0b5d	4b 	K 
l0b5eh:
	ld a,e			;0b5e	7b 	{ 
	ld c,h			;0b5f	4c 	L 
	ret m			;0b60	f8 	. 
	ld h,b			;0b61	60 	` 
	ret c			;0b62	d8 	. 
	ld h,b			;0b63	60 	` 
	rst 38h			;0b64	ff 	. 
	ld h,b			;0b65	60 	` 
	rst 18h			;0b66	df 	. 
	ld h,b			;0b67	60 	` 
	ei			;0b68	fb 	. 
l0b69h:
	jr nc,l0b5ah		;0b69	30 ef 	0 . 
	jr nc,l0b69h		;0b6b	30 fc 	0 . 
	jr nc,l0b5eh		;0b6d	30 ef 	0 . 
	or b			;0b6f	b0 	. 
	cp 090h		;0b70	fe 90 	. . 
	rst 30h			;0b72	f7 	. 
	sub b			;0b73	90 	. 
	rst 38h			;0b74	ff 	. 
	adc a,b			;0b75	88 	. 
l0b76h:
	ei			;0b76	fb 	. 
	ret z			;0b77	c8 	. 
	ld a,a			;0b78	7f 	 
	ld b,b			;0b79	40 	@ 
	ld a,b			;0b7a	78 	x 
	ret m			;0b7b	f8 	. 
	ld a,a			;0b7c	7f 	 
	ld (hl),b			;0b7d	70 	p 
	ld (hl),b			;0b7e	70 	p 
	ret p			;0b7f	f0 	. 
	rrca			;0b80	0f 	. 
	ld bc,l010eh		;0b81	01 0e 01 	. . . 
	rst 30h			;0b84	f7 	. 
	inc bc			;0b85	03 	. 
	defb 0fdh,003h,0efh	;illegal sequence		;0b86	fd 03 ef 	. . . 
	ld (bc),a			;0b89	02 	. 
	ei			;0b8a	fb 	. 
	ld (bc),a			;0b8b	02 	. 
	sbc a,a			;0b8c	9f 	. 
	inc b			;0b8d	04 	. 
	rst 30h			;0b8e	f7 	. 
	inc b			;0b8f	04 	. 
	ccf			;0b90	3f 	? 
	ex af,af'			;0b91	08 	. 
	rst 28h			;0b92	ef 	. 
	ex af,af'			;0b93	08 	. 
	rst 38h			;0b94	ff 	. 
	djnz l0b76h		;0b95	10 df 	. . 
	inc de			;0b97	13 	. 
	rst 38h			;0b98	ff 	. 
	and e			;0b99	a3 	. 
	ccf			;0b9a	3f 	? 
	xor a			;0b9b	af 	. 
	cp 0efh		;0b9c	fe ef 	. . 
	rra			;0b9e	1f 	. 
	cp 0fbh		;0b9f	fe fb 	. . 
	ei			;0ba1	fb 	. 
	ei			;0ba2	fb 	. 
	ei			;0ba3	fb 	. 
	rst 38h			;0ba4	ff 	. 
	rrca			;0ba5	0f 	. 
	call m,0ffffh		;0ba6	fc ff ff 	. . . 
	inc e			;0ba9	1c 	. 
	ret m			;0baa	f8 	. 
	inc a			;0bab	3c 	< 
	rst 38h			;0bac	ff 	. 
	ld a,0f0h		;0bad	3e f0 	> . 
	cp 0ffh		;0baf	fe ff 	. . 
	ld a,a			;0bb1	7f 	 
	ret p			;0bb2	f0 	. 
	rst 38h			;0bb3	ff 	. 
	rst 38h			;0bb4	ff 	. 
	rst 38h			;0bb5	ff 	. 
	pop hl			;0bb6	e1 	. 
	rst 38h			;0bb7	ff 	. 
	cp 0feh		;0bb8	fe fe 	. . 
	rst 20h			;0bba	e7 	. 
	rst 38h			;0bbb	ff 	. 
	ret m			;0bbc	f8 	. 
	ret m			;0bbd	f8 	. 
	rst 38h			;0bbe	ff 	. 
	cp 080h		;0bbf	fe 80 	. . 
	add a,b			;0bc1	80 	. 
	add a,b			;0bc2	80 	. 
	add a,b			;0bc3	80 	. 
	ret po			;0bc4	e0 	. 
	ret po			;0bc5	e0 	. 
	ld h,b			;0bc6	60 	` 
	ret po			;0bc7	e0 	. 
	ret p			;0bc8	f0 	. 
	ld (hl),b			;0bc9	70 	p 
	djnz l0c3ch		;0bca	10 70 	. p 
	ret m			;0bcc	f8 	. 
	ld e,b			;0bcd	58 	X 
	ex af,af'			;0bce	08 	. 
	ld e,b			;0bcf	58 	X 
	call m,074fch		;0bd0	fc fc 74 	. . t 
	call m,0bc8ch		;0bd3	fc 8c bc 	. . . 
	call z,sub_068ch		;0bd6	cc 8c 06 	. . . 
	ld a,(hl)			;0bd9	7e 	~ 
	add a,(hl)			;0bda	86 	. 
	ld b,032h		;0bdb	06 32 	. 2 
	adc a,002h		;0bdd	ce 02 	. . 
	ld (bc),a			;0bdf	02 	. 
	inc hl			;0be0	23 	# 
	inc hl			;0be1	23 	# 
	inc sp			;0be2	33 	3 
	inc l			;0be3	2c 	, 
	dec hl			;0be4	2b 	+ 
	dec hl			;0be5	2b 	+ 
	dec sp			;0be6	3b 	; 
	inc l			;0be7	2c 	, 
	dec hl			;0be8	2b 	+ 
	dec hl			;0be9	2b 	+ 
	dec sp			;0bea	3b 	; 
	inc l			;0beb	2c 	, 
	dec hl			;0bec	2b 	+ 
	dec hl			;0bed	2b 	+ 
	dec sp			;0bee	3b 	; 
	inc l			;0bef	2c 	, 
	rla			;0bf0	17 	. 
	rla			;0bf1	17 	. 
	rla			;0bf2	17 	. 
	jr l0c0ch		;0bf3	18 17 	. . 
	rla			;0bf5	17 	. 
	rla			;0bf6	17 	. 
	jr l0c10h		;0bf7	18 17 	. . 
	rla			;0bf9	17 	. 
	rla			;0bfa	17 	. 
	jr l0c1ch		;0bfb	18 1f 	. . 
	rra			;0bfd	1f 	. 
	rra			;0bfe	1f 	. 
	djnz $-63		;0bff	10 bf 	. . 
	and l			;0c01	a5 	. 
	and l			;0c02	a5 	. 
l0c03h:
	ld h,l			;0c03	65 	e 
	sbc a,a			;0c04	9f 	. 
	adc a,l			;0c05	8d 	. 
	adc a,l			;0c06	8d 	. 
	ld l,l			;0c07	6d 	m 
l0c08h:
	sbc a,a			;0c08	9f 	. 
	adc a,l			;0c09	8d 	. 
	adc a,l			;0c0a	8d 	. 
	ld l,l			;0c0b	6d 	m 
l0c0ch:
	rst 18h			;0c0c	df 	. 
	ret			;0c0d	c9 	. 
	ret z			;0c0e	c8 	. 
	add hl,hl			;0c0f	29 	) 
l0c10h:
	rst 18h			;0c10	df 	. 
	pop bc			;0c11	c1 	. 
	ret nz			;0c12	c0 	. 
	ld hl,0e0efh		;0c13	21 ef e0 	! . . 
	ret po			;0c16	e0 	. 
	djnz l0c08h		;0c17	10 ef 	. . 
	jp pe,l1ae8h		;0c19	ea e8 1a 	. . . 
l0c1ch:
	rst 30h			;0c1c	f7 	. 
	rst 30h			;0c1d	f7 	. 
	rst 30h			;0c1e	f7 	. 
	rrca			;0c1f	0f 	. 
	defb 0fdh,0bfh,08fh	;illegal sequence		;0c20	fd bf 8f 	. . . 
	cp l			;0c23	bd 	. 
	call m,0cfffh		;0c24	fc ff cf 	. . . 
	call m,0fcfch		;0c27	fc fc fc 	. . . 
	call z,0fcffh		;0c2a	cc ff fc 	. . . 
	call m,0ff8ch		;0c2d	fc 8c ff 	. . . 
	call m,sub_0dfdh		;0c30	fc fd 0d 	. . . 
	cp 0f9h		;0c33	fe f9 	. . 
	ld sp,hl			;0c35	f9 	. 
	add hl,sp			;0c36	39 	9 
	rst 38h			;0c37	ff 	. 
	ex (sp),hl			;0c38	e3 	. 
	ex (sp),hl			;0c39	e3 	. 
	ex (sp),hl			;0c3a	e3 	. 
	rst 38h			;0c3b	ff 	. 
l0c3ch:
	add a,b			;0c3c	80 	. 
	add a,b			;0c3d	80 	. 
	add a,b			;0c3e	80 	. 
	rst 38h			;0c3f	ff 	. 
	call m,0fff8h		;0c40	fc f8 ff 	. . . 
	rst 38h			;0c43	ff 	. 
	ld a,(hl)			;0c44	7e 	~ 
	ret m			;0c45	f8 	. 
	rst 38h			;0c46	ff 	. 
	ld a,a			;0c47	7f 	 
	ld e,07ch		;0c48	1e 7c 	. | 
	ld a,a			;0c4a	7f 	 
	sbc a,a			;0c4b	9f 	. 
	ld a,07ch		;0c4c	3e 7c 	> | 
	ld a,a			;0c4e	7f 	 
	cp a			;0c4f	bf 	. 
	ld a,(hl)			;0c50	7e 	~ 
	cp 0ffh		;0c51	fe ff 	. . 
	ld a,a			;0c53	7f 	 
	rst 38h			;0c54	ff 	. 
	rst 38h			;0c55	ff 	. 
	rst 38h			;0c56	ff 	. 
	rst 38h			;0c57	ff 	. 
	sbc a,a			;0c58	9f 	. 
	rst 38h			;0c59	ff 	. 
	rst 38h			;0c5a	ff 	. 
	sbc a,a			;0c5b	9f 	. 
	ccf			;0c5c	3f 	? 
	rst 38h			;0c5d	ff 	. 
	rst 38h			;0c5e	ff 	. 
	ccf			;0c5f	3f 	? 
	rrca			;0c60	0f 	. 
	inc sp			;0c61	33 	3 
	jp l0983h		;0c62	c3 83 09 	. . . 
	scf			;0c65	37 	7 
	pop bc			;0c66	c1 	. 
	ld bc,06f11h		;0c67	01 11 6f 	. . o 
	add a,c			;0c6a	81 	. 
	ld bc,06f11h		;0c6b	01 11 6f 	. . o 
	add a,c			;0c6e	81 	. 
	ld bc,03e02h		;0c6f	01 02 3e 	. . > 
	jp nz,0c202h		;0c72	c2 02 c2 	. . . 
	cp 0c2h		;0c75	fe c2 	. . 
	jp nz,07e7eh		;0c77	c2 7e 7e 	. ~ ~ 
	ld a,(hl)			;0c7a	7e 	~ 
	cp (hl)			;0c7b	be 	. 
	ld a,d			;0c7c	7a 	z 
	ld l,d			;0c7d	6a 	j 
	ld l,d			;0c7e	6a 	j 
	add a,(hl)			;0c7f	86 	. 
	rra			;0c80	1f 	. 
	rra			;0c81	1f 	. 
	rra			;0c82	1f 	. 
	djnz l0ca4h		;0c83	10 1f 	. . 
	rra			;0c85	1f 	. 
	rra			;0c86	1f 	. 
	djnz $+25		;0c87	10 17 	. . 
	rla			;0c89	17 	. 
	rla			;0c8a	17 	. 
	jr $+21		;0c8b	18 13 	. . 
	inc de			;0c8d	13 	. 
	inc de			;0c8e	13 	. 
	inc e			;0c8f	1c 	. 
	dec c			;0c90	0d 	. 
	dec c			;0c91	0d 	. 
	dec c			;0c92	0d 	. 
	ld c,00ah		;0c93	0e 0a 	. . 
	ld a,(bc)			;0c95	0a 	. 
	ld c,00bh		;0c96	0e 0b 	. . 
	ld de,l1f11h		;0c98	11 11 1f 	. . . 
	ld de,l1010h		;0c9b	11 10 10 	. . . 
	rra			;0c9e	1f 	. 
	djnz $-2		;0c9f	10 fc 	. . 
	call m,sub_03fch		;0ca1	fc fc 03 	. . . 
l0ca4h:
	rst 38h			;0ca4	ff 	. 
	rst 38h			;0ca5	ff 	. 
	rst 38h			;0ca6	ff 	. 
	nop			;0ca7	00 	. 
	rst 38h			;0ca8	ff 	. 
	rst 38h			;0ca9	ff 	. 
	rst 38h			;0caa	ff 	. 
	nop			;0cab	00 	. 
	rst 38h			;0cac	ff 	. 
	rst 38h			;0cad	ff 	. 
	rst 38h			;0cae	ff 	. 
	nop			;0caf	00 	. 
	rst 38h			;0cb0	ff 	. 
	rst 38h			;0cb1	ff 	. 
	rst 38h			;0cb2	ff 	. 
	nop			;0cb3	00 	. 
	ld a,a			;0cb4	7f 	 
	ld a,a			;0cb5	7f 	 
	ld a,a			;0cb6	7f 	 
	add a,b			;0cb7	80 	. 
	ccf			;0cb8	3f 	? 
	ccf			;0cb9	3f 	? 
	ccf			;0cba	3f 	? 
	ret nz			;0cbb	c0 	. 
	set 1,e		;0cbc	cb cb 	. . 
	set 6,h		;0cbe	cb f4 	. . 
	ld a,b			;0cc0	78 	x 
	ld a,b			;0cc1	78 	x 
	ld a,b			;0cc2	78 	x 
	add a,a			;0cc3	87 	. 
	ret po			;0cc4	e0 	. 
	ret po			;0cc5	e0 	. 
	ret po			;0cc6	e0 	. 
	rra			;0cc7	1f 	. 
	ld c,00eh		;0cc8	0e 0e 	. . 
	ld c,0f1h		;0cca	0e f1 	. . 
	ret m			;0ccc	f8 	. 
	ret m			;0ccd	f8 	. 
	ret m			;0cce	f8 	. 
	rlca			;0ccf	07 	. 
	ret nz			;0cd0	c0 	. 
	jp l3cc3h		;0cd1	c3 c3 3c 	. . < 
	inc bc			;0cd4	03 	. 
	rrca			;0cd5	0f 	. 
	rrca			;0cd6	0f 	. 
	di			;0cd7	f3 	. 
	adc a,a			;0cd8	8f 	. 
	sbc a,a			;0cd9	9f 	. 
	sbc a,a			;0cda	9f 	. 
	ld l,a			;0cdb	6f 	o 
	in a,(0dfh)		;0cdc	db df 	. . 
	rst 18h			;0cde	df 	. 
	dec sp			;0cdf	3b 	; 
	rra			;0ce0	1f 	. 
	ccf			;0ce1	3f 	? 
	ccf			;0ce2	3f 	? 
	rst 18h			;0ce3	df 	. 
	ld c,01eh		;0ce4	0e 1e 	. . 
	rra			;0ce6	1f 	. 
	rst 28h			;0ce7	ef 	. 
	ld c,03eh		;0ce8	0e 3e 	. > 
	ccf			;0cea	3f 	? 
	rst 8			;0ceb	cf 	. 
	ld a,07eh		;0cec	3e 7e 	> ~ 
	ld a,a			;0cee	7f 	 
	cp a			;0cef	bf 	. 
	ld a,(hl)			;0cf0	7e 	~ 
	cp 0ffh		;0cf1	fe ff 	. . 
	ld a,a			;0cf3	7f 	 
	cp 0feh		;0cf4	fe fe 	. . 
	rst 38h			;0cf6	ff 	. 
	rst 38h			;0cf7	ff 	. 
	rst 38h			;0cf8	ff 	. 
	rst 38h			;0cf9	ff 	. 
	rst 38h			;0cfa	ff 	. 
	rst 38h			;0cfb	ff 	. 
l0cfch:
	ex (sp),hl			;0cfc	e3 	. 
	ex (sp),hl			;0cfd	e3 	. 
	rst 38h			;0cfe	ff 	. 
	rst 38h			;0cff	ff 	. 
	jp m,0fafah		;0d00	fa fa fa 	. . . 
	or 00eh		;0d03	f6 0e 	. . 
	ld c,0feh		;0d05	0e fe 	. . 
	adc a,(hl)			;0d07	8e 	. 
	ld bc,0c33dh		;0d08	01 3d c3 	. = . 
	inc bc			;0d0b	03 	. 
	ld bc,0c33dh		;0d0c	01 3d c3 	. = . 
	inc bc			;0d0f	03 	. 
	pop bc			;0d10	c1 	. 
	sbc a,l			;0d11	9d 	. 
	ex (sp),hl			;0d12	e3 	. 
	jp l0195h		;0d13	c3 95 01 	. . . 
	rst 38h			;0d16	ff 	. 
	rst 10h			;0d17	d7 	. 
	ld hl,(0fe02h)		;0d18	2a 02 fe 	* . . 
	jp m,0fcfch		;0d1b	fa fc fc 	. . . 
	call m,sub_18fch		;0d1e	fc fc 18 	. . . 
	jr l0d42h		;0d21	18 1f 	. . 
	jr l0d2dh		;0d23	18 08 	. . 
	ex af,af'			;0d25	08 	. 
	rrca			;0d26	0f 	. 
	ex af,af'			;0d27	08 	. 
	ex af,af'			;0d28	08 	. 
	add hl,bc			;0d29	09 	. 
	ld c,008h		;0d2a	0e 08 	. . 
	inc c			;0d2c	0c 	. 
l0d2dh:
	dec c			;0d2d	0d 	. 
	ld c,00ch		;0d2e	0e 0c 	. . 
	inc b			;0d30	04 	. 
	inc b			;0d31	04 	. 
	rlca			;0d32	07 	. 
	inc b			;0d33	04 	. 
	ld b,006h		;0d34	06 06 	. . 
	rlca			;0d36	07 	. 
	ld b,003h		;0d37	06 03 	. . 
	inc bc			;0d39	03 	. 
	inc bc			;0d3a	03 	. 
	inc bc			;0d3b	03 	. 
	ld bc,l0101h		;0d3c	01 01 01 	. . . 
	ld bc,l3c3ch		;0d3f	01 3c 3c 	. < < 
l0d42h:
	call m,0673fh		;0d42	fc 3f 67 	. ? g 
	sbc a,a			;0d45	9f 	. 
	rlca			;0d46	07 	. 
	rlca			;0d47	07 	. 
	ld h,c			;0d48	61 	a 
	sbc a,c			;0d49	99 	. 
	rlca			;0d4a	07 	. 
	inc bc			;0d4b	03 	. 
	ld b,b			;0d4c	40 	@ 
	cp b			;0d4d	b8 	. 
	rlca			;0d4e	07 	. 
	inc bc			;0d4f	03 	. 
	nop			;0d50	00 	. 
	ret m			;0d51	f8 	. 
	rlca			;0d52	07 	. 
	ld bc,0f800h		;0d53	01 00 f8 	. . . 
	rlca			;0d56	07 	. 
	ld bc,l3000h		;0d57	01 00 30 	. . 0 
	rst 8			;0d5a	cf 	. 
	inc bc			;0d5b	03 	. 
	add a,c			;0d5c	81 	. 
	add a,b			;0d5d	80 	. 
	rst 38h			;0d5e	ff 	. 
	add a,a			;0d5f	87 	. 
	ret m			;0d60	f8 	. 
	ld sp,hl			;0d61	f9 	. 
	ld sp,hl			;0d62	f9 	. 
	ld b,019h		;0d63	06 19 	. . 
	dec de			;0d65	1b 	. 
	dec de			;0d66	1b 	. 
	push hl			;0d67	e5 	. 
	add a,e			;0d68	83 	. 
	add a,a			;0d69	87 	. 
	add a,a			;0d6a	87 	. 
	ei			;0d6b	fb 	. 
	rst 0			;0d6c	c7 	. 
	rst 0			;0d6d	c7 	. 
	rst 0			;0d6e	c7 	. 
	rst 38h			;0d6f	ff 	. 
	rst 28h			;0d70	ef 	. 
	xor 0efh		;0d71	ee ef 	. . 
	rst 38h			;0d73	ff 	. 
	rst 38h			;0d74	ff 	. 
	ld a,(hl)			;0d75	7e 	~ 
	rst 38h			;0d76	ff 	. 
	rst 38h			;0d77	ff 	. 
	cp 074h		;0d78	fe 74 	. t 
	rst 38h			;0d7a	ff 	. 
	rst 38h			;0d7b	ff 	. 
	rst 38h			;0d7c	ff 	. 
	call po,0ffffh		;0d7d	e4 ff ff 	. . . 
	ret nz			;0d80	c0 	. 
	ret nz			;0d81	c0 	. 
	rst 38h			;0d82	ff 	. 
	rst 20h			;0d83	e7 	. 
	add a,b			;0d84	80 	. 
	adc a,(hl)			;0d85	8e 	. 
	pop af			;0d86	f1 	. 
	ret nz			;0d87	c0 	. 
	inc c			;0d88	0c 	. 
	inc de			;0d89	13 	. 
	ret po			;0d8a	e0 	. 
	ret nz			;0d8b	c0 	. 
	inc b			;0d8c	04 	. 
	dec de			;0d8d	1b 	. 
	ret po			;0d8e	e0 	. 
	add a,b			;0d8f	80 	. 
	nop			;0d90	00 	. 
	ccf			;0d91	3f 	? 
	ret nz			;0d92	c0 	. 
	add a,b			;0d93	80 	. 
	nop			;0d94	00 	. 
	ld a,0c1h		;0d95	3e c1 	> . 
	add a,b			;0d97	80 	. 
	nop			;0d98	00 	. 
	ld e,0e1h		;0d99	1e e1 	. . 
	ret nz			;0d9b	c0 	. 
	ld bc,0ff01h		;0d9c	01 01 ff 	. . . 
	pop hl			;0d9f	e1 	. 
	ld a,h			;0da0	7c 	| 
	ld b,h			;0da1	44 	D 
	call m,07ec4h		;0da2	fc c4 7e 	. . ~ 
	ld b,d			;0da5	42 	B 
	cp 042h		;0da6	fe 42 	. B 
	ld a,(hl)			;0da8	7e 	~ 
	ld b,d			;0da9	42 	B 
	cp 062h		;0daa	fe 62 	. b 
	ld a,a			;0dac	7f 	 
	ld b,c			;0dad	41 	A 
	rst 38h			;0dae	ff 	. 
	ld h,c			;0daf	61 	a 
	ld a,a			;0db0	7f 	 
	ld b,c			;0db1	41 	A 
	rst 38h			;0db2	ff 	. 
	ld (hl),c			;0db3	71 	q 
	rst 38h			;0db4	ff 	. 
	add a,c			;0db5	81 	. 
	rst 38h			;0db6	ff 	. 
	ld sp,hl			;0db7	f9 	. 
	cp 082h		;0db8	fe 82 	. . 
	cp 0dah		;0dba	fe da 	. . 
	call m,0fc04h		;0dbc	fc 04 fc 	. . . 
	call c,l0000h		;0dbf	dc 00 00 	. . . 
	nop			;0dc2	00 	. 
	nop			;0dc3	00 	. 
	nop			;0dc4	00 	. 
	nop			;0dc5	00 	. 
	nop			;0dc6	00 	. 
	nop			;0dc7	00 	. 
	ld bc,l0101h		;0dc8	01 01 01 	. . . 
	ld bc,l0706h		;0dcb	01 06 07 	. . . 
	ld b,006h		;0dce	06 06 	. . 
	ex af,af'			;0dd0	08 	. 
	dec bc			;0dd1	0b 	. 
	inc c			;0dd2	0c 	. 
	inc c			;0dd3	0c 	. 
	dec e			;0dd4	1d 	. 
	djnz l0de9h		;0dd5	10 12 	. . 
	ld (de),a			;0dd7	12 	. 
	ccf			;0dd8	3f 	? 
	inc h			;0dd9	24 	$ 
	inc h			;0dda	24 	$ 
	inc h			;0ddb	24 	$ 
	ccf			;0ddc	3f 	? 
	ccf			;0ddd	3f 	? 
	ccf			;0dde	3f 	? 
	ccf			;0ddf	3f 	? 
	dec e			;0de0	1d 	. 
	dec d			;0de1	15 	. 
	dec d			;0de2	15 	. 
	ex (sp),hl			;0de3	e3 	. 
	call m,0fcfch		;0de4	fc fc fc 	. . . 
	rst 38h			;0de7	ff 	. 
	rst 0			;0de8	c7 	. 
l0de9h:
	rst 0			;0de9	c7 	. 
	rst 38h			;0dea	ff 	. 
	rst 0			;0deb	c7 	. 
	nop			;0dec	00 	. 
	ret p			;0ded	f0 	. 
	rrca			;0dee	0f 	. 
	ld bc,0f800h		;0def	01 00 f8 	. . . 
	rlca			;0df2	07 	. 
	nop			;0df3	00 	. 
	add a,b			;0df4	80 	. 
	jr nc,l0e46h		;0df5	30 4f 	0 O 
	ld b,b			;0df7	40 	@ 
	ret nz			;0df8	c0 	. 
	ld b,b			;0df9	40 	@ 
	ld a,a			;0dfa	7f 	 
	ld a,a			;0dfb	7f 	 
	rst 38h			;0dfc	ff 	. 
sub_0dfdh:
	rst 38h			;0dfd	ff 	. 
	rst 38h			;0dfe	ff 	. 
	rst 38h			;0dff	ff 	. 
l0e00h:
	rst 38h			;0e00	ff 	. 
	jp po,0ffffh		;0e01	e2 ff ff 	. . . 
	inc a			;0e04	3c 	< 
	inc a			;0e05	3c 	< 
	inc a			;0e06	3c 	< 
	rst 38h			;0e07	ff 	. 
	jp 0c3c3h		;0e08	c3 c3 c3 	. . . 
	jp l2667h		;0e0b	c3 67 26 	. g & 
l0e0eh:
	rst 20h			;0e0e	e7 	. 
	rst 20h			;0e0f	e7 	. 
	ld h,004h		;0e10	26 04 	& . 
	rst 20h			;0e12	e7 	. 
	ld h,a			;0e13	67 	g 
	ld a,018h		;0e14	3e 18 	> . 
	rst 38h			;0e16	ff 	. 
	ld a,a			;0e17	7f 	 
	ld a,h			;0e18	7c 	| 
l0e19h:
	jr $+1		;0e19	18 ff 	. . 
	rst 38h			;0e1b	ff 	. 
	rst 20h			;0e1c	e7 	. 
	rst 20h			;0e1d	e7 	. 
	rst 20h			;0e1e	e7 	. 
	rst 20h			;0e1f	e7 	. 
	cp l			;0e20	bd 	. 
	dec (hl)			;0e21	35 	5 
l0e22h:
	push af			;0e22	f5 	. 
	jp l1f1fh		;0e23	c3 1f 1f 	. . . 
	rra			;0e26	1f 	. 
	rst 38h			;0e27	ff 	. 
	ex (sp),hl			;0e28	e3 	. 
	ex (sp),hl			;0e29	e3 	. 
	rst 38h			;0e2a	ff 	. 
	rst 38h			;0e2b	ff 	. 
	add a,b			;0e2c	80 	. 
	inc bc			;0e2d	03 	. 
	call m,sub_00f0h		;0e2e	fc f0 00 	. . . 
	rlca			;0e31	07 	. 
	ret m			;0e32	f8 	. 
	add a,b			;0e33	80 	. 
	ld bc,0fe00h		;0e34	01 00 fe 	. . . 
	ld (bc),a			;0e37	02 	. 
	inc bc			;0e38	03 	. 
	ld (bc),a			;0e39	02 	. 
	cp 0feh		;0e3a	fe fe 	. . 
	rst 38h			;0e3c	ff 	. 
	rst 38h			;0e3d	ff 	. 
	rst 38h			;0e3e	ff 	. 
	rst 38h			;0e3f	ff 	. 
	call m,0fc3ch		;0e40	fc 3c fc 	. < . 
	inc a			;0e43	3c 	< 
	ret nz			;0e44	c0 	. 
	ret nz			;0e45	c0 	. 
l0e46h:
	ret nz			;0e46	c0 	. 
	ret nz			;0e47	c0 	. 
	add a,b			;0e48	80 	. 
	add a,b			;0e49	80 	. 
	add a,b			;0e4a	80 	. 
	add a,b			;0e4b	80 	. 
	ld h,b			;0e4c	60 	` 
	ret po			;0e4d	e0 	. 
	ld h,b			;0e4e	60 	` 
	ld h,b			;0e4f	60 	` 
	djnz l0e22h		;0e50	10 d0 	. . 
	jr nc,l0e84h		;0e52	30 30 	0 0 
	or b			;0e54	b0 	. 
	nop			;0e55	00 	. 
	ld b,b			;0e56	40 	@ 
	ld b,b			;0e57	40 	@ 
	ret m			;0e58	f8 	. 
l0e59h:
	jr nz,l0e7bh		;0e59	20 20 	    
	jr nz,l0e59h		;0e5b	20 fc 	  . 
	call m,0fcfch		;0e5d	fc fc fc 	. . . 
	rlca			;0e60	07 	. 
	rlca			;0e61	07 	. 
	rlca			;0e62	07 	. 
	rlca			;0e63	07 	. 
	rrca			;0e64	0f 	. 
	rrca			;0e65	0f 	. 
	add hl,bc			;0e66	09 	. 
	rrca			;0e67	0f 	. 
	rra			;0e68	1f 	. 
	dec de			;0e69	1b 	. 
	ld de,l1f1bh		;0e6a	11 1b 1f 	. . . 
	rra			;0e6d	1f 	. 
	rra			;0e6e	1f 	. 
	rra			;0e6f	1f 	. 
	dec (hl)			;0e70	35 	5 
	dec a			;0e71	3d 	= 
	dec (hl)			;0e72	35 	5 
	scf			;0e73	37 	7 
	inc h			;0e74	24 	$ 
	inc (hl)			;0e75	34 	4 
	inc l			;0e76	2c 	, 
	daa			;0e77	27 	' 
	inc h			;0e78	24 	$ 
	inc h			;0e79	24 	$ 
l0e7ah:
	inc a			;0e7a	3c 	< 
l0e7bh:
	daa			;0e7b	27 	' 
	dec d			;0e7c	15 	. 
	dec d			;0e7d	15 	. 
l0e7eh:
	dec e			;0e7e	1d 	. 
	ld d,0f8h		;0e7f	16 f8 	. . 
	ld h,b			;0e81	60 	` 
	ret c			;0e82	d8 	. 
	ld h,b			;0e83	60 	` 
l0e84h:
	rst 38h			;0e84	ff 	. 
	ld h,b			;0e85	60 	` 
	rst 18h			;0e86	df 	. 
	ld h,b			;0e87	60 	` 
	ei			;0e88	fb 	. 
l0e89h:
	jr nc,l0e7ah		;0e89	30 ef 	0 . 
	jr nc,l0e89h		;0e8b	30 fc 	0 . 
	jr nc,l0e7eh		;0e8d	30 ef 	0 . 
	or b			;0e8f	b0 	. 
	cp 090h		;0e90	fe 90 	. . 
	rst 30h			;0e92	f7 	. 
	sub b			;0e93	90 	. 
	rst 38h			;0e94	ff 	. 
	adc a,b			;0e95	88 	. 
l0e96h:
	ei			;0e96	fb 	. 
	ret z			;0e97	c8 	. 
	ld a,a			;0e98	7f 	 
	ld b,b			;0e99	40 	@ 
	ld a,b			;0e9a	78 	x 
	ret m			;0e9b	f8 	. 
	ld a,a			;0e9c	7f 	 
	ld (hl),b			;0e9d	70 	p 
	ld (hl),b			;0e9e	70 	p 
	ret p			;0e9f	f0 	. 
	rrca			;0ea0	0f 	. 
	ld bc,l010eh		;0ea1	01 0e 01 	. . . 
	rst 30h			;0ea4	f7 	. 
	inc bc			;0ea5	03 	. 
	defb 0fdh,003h,0efh	;illegal sequence		;0ea6	fd 03 ef 	. . . 
	ld (bc),a			;0ea9	02 	. 
	ei			;0eaa	fb 	. 
	ld (bc),a			;0eab	02 	. 
	sbc a,a			;0eac	9f 	. 
	inc b			;0ead	04 	. 
	rst 30h			;0eae	f7 	. 
	inc b			;0eaf	04 	. 
	ccf			;0eb0	3f 	? 
	ex af,af'			;0eb1	08 	. 
	rst 28h			;0eb2	ef 	. 
	ex af,af'			;0eb3	08 	. 
	rst 38h			;0eb4	ff 	. 
	djnz l0e96h		;0eb5	10 df 	. . 
	inc de			;0eb7	13 	. 
	rst 38h			;0eb8	ff 	. 
	and e			;0eb9	a3 	. 
	ccf			;0eba	3f 	? 
	xor a			;0ebb	af 	. 
	cp 0efh		;0ebc	fe ef 	. . 
	rra			;0ebe	1f 	. 
	cp 0fbh		;0ebf	fe fb 	. . 
	ei			;0ec1	fb 	. 
l0ec2h:
	ei			;0ec2	fb 	. 
	ei			;0ec3	fb 	. 
	rst 38h			;0ec4	ff 	. 
	rrca			;0ec5	0f 	. 
	call m,0ffffh		;0ec6	fc ff ff 	. . . 
	inc e			;0ec9	1c 	. 
	ret m			;0eca	f8 	. 
	inc a			;0ecb	3c 	< 
	rst 38h			;0ecc	ff 	. 
	ld a,0f0h		;0ecd	3e f0 	> . 
	cp 0ffh		;0ecf	fe ff 	. . 
	ld a,a			;0ed1	7f 	 
	ret p			;0ed2	f0 	. 
	rst 38h			;0ed3	ff 	. 
	rst 38h			;0ed4	ff 	. 
	rst 38h			;0ed5	ff 	. 
	pop hl			;0ed6	e1 	. 
	rst 38h			;0ed7	ff 	. 
	cp 0feh		;0ed8	fe fe 	. . 
	rst 20h			;0eda	e7 	. 
	rst 38h			;0edb	ff 	. 
	ret m			;0edc	f8 	. 
	ret m			;0edd	f8 	. 
	rst 38h			;0ede	ff 	. 
	cp 080h		;0edf	fe 80 	. . 
	add a,b			;0ee1	80 	. 
	add a,b			;0ee2	80 	. 
	add a,b			;0ee3	80 	. 
	ret po			;0ee4	e0 	. 
	ret po			;0ee5	e0 	. 
	ld h,b			;0ee6	60 	` 
	ret po			;0ee7	e0 	. 
	ret p			;0ee8	f0 	. 
	ld (hl),b			;0ee9	70 	p 
	djnz l0f5ch		;0eea	10 70 	. p 
	ret m			;0eec	f8 	. 
	ld e,b			;0eed	58 	X 
	ex af,af'			;0eee	08 	. 
	ld e,b			;0eef	58 	X 
	call m,074fch		;0ef0	fc fc 74 	. . t 
	call m,0bc8ch		;0ef3	fc 8c bc 	. . . 
	call z,0048ch		;0ef6	cc 8c 04 	. . . 
	ld a,h			;0ef9	7c 	| 
	add a,h			;0efa	84 	. 
	inc b			;0efb	04 	. 
	inc (hl)			;0efc	34 	4 
	call z,00404h		;0efd	cc 04 04 	. . . 
	ld de,l1911h		;0f00	11 11 19 	. . . 
	ld d,00dh		;0f03	16 0d 	. . 
	dec c			;0f05	0d 	. 
	dec c			;0f06	0d 	. 
	ld c,007h		;0f07	0e 07 	. . 
	rlca			;0f09	07 	. 
	rlca			;0f0a	07 	. 
	inc b			;0f0b	04 	. 
	rlca			;0f0c	07 	. 
	rlca			;0f0d	07 	. 
l0f0eh:
	rlca			;0f0e	07 	. 
l0f0fh:
	inc b			;0f0f	04 	. 
	dec bc			;0f10	0b 	. 
	dec bc			;0f11	0b 	. 
	dec bc			;0f12	0b 	. 
	inc c			;0f13	0c 	. 
	dec bc			;0f14	0b 	. 
	dec bc			;0f15	0b 	. 
	dec bc			;0f16	0b 	. 
	inc c			;0f17	0c 	. 
	dec bc			;0f18	0b 	. 
	dec bc			;0f19	0b 	. 
	dec bc			;0f1a	0b 	. 
	inc c			;0f1b	0c 	. 
	rrca			;0f1c	0f 	. 
	rrca			;0f1d	0f 	. 
	rrca			;0f1e	0f 	. 
l0f1fh:
	ex af,af'			;0f1f	08 	. 
	cp a			;0f20	bf 	. 
	and l			;0f21	a5 	. 
	and l			;0f22	a5 	. 
	ld h,l			;0f23	65 	e 
	sbc a,a			;0f24	9f 	. 
	adc a,l			;0f25	8d 	. 
	adc a,l			;0f26	8d 	. 
	ld l,l			;0f27	6d 	m 
l0f28h:
	sbc a,a			;0f28	9f 	. 
	adc a,l			;0f29	8d 	. 
	adc a,l			;0f2a	8d 	. 
	ld l,l			;0f2b	6d 	m 
	rst 18h			;0f2c	df 	. 
	ret			;0f2d	c9 	. 
	ret z			;0f2e	c8 	. 
	add hl,hl			;0f2f	29 	) 
	rst 18h			;0f30	df 	. 
	pop bc			;0f31	c1 	. 
	ret nz			;0f32	c0 	. 
	ld hl,0e0efh		;0f33	21 ef e0 	! . . 
	ret po			;0f36	e0 	. 
	djnz l0f28h		;0f37	10 ef 	. . 
	jp pe,l1ae8h		;0f39	ea e8 1a 	. . . 
	rst 30h			;0f3c	f7 	. 
	rst 30h			;0f3d	f7 	. 
	rst 30h			;0f3e	f7 	. 
l0f3fh:
	rrca			;0f3f	0f 	. 
	defb 0fdh,0bfh,08fh	;illegal sequence		;0f40	fd bf 8f 	. . . 
	cp l			;0f43	bd 	. 
	rst 38h			;0f44	ff 	. 
	rst 38h			;0f45	ff 	. 
	rst 8			;0f46	cf 	. 
	rst 38h			;0f47	ff 	. 
	call m,0cdfdh		;0f48	fc fd cd 	. . . 
	cp 0fch		;0f4b	fe fc 	. . 
	defb 0fdh,08dh	;adc a,iyl		;0f4d	fd 8d 	. . 
	cp 0fdh		;0f4f	fe fd 	. . 
	defb 0fdh,00dh,0ffh	;illegal sequence		;0f51	fd 0d ff 	. . . 
	di			;0f54	f3 	. 
	di			;0f55	f3 	. 
	inc sp			;0f56	33 	3 
	rst 38h			;0f57	ff 	. 
	rst 28h			;0f58	ef 	. 
	rst 28h			;0f59	ef 	. 
	rst 28h			;0f5a	ef 	. 
	rst 38h			;0f5b	ff 	. 
l0f5ch:
	add a,b			;0f5c	80 	. 
	add a,e			;0f5d	83 	. 
l0f5eh:
	add a,e			;0f5e	83 	. 
	call m,0e0f0h		;0f5f	fc f0 e0 	. . . 
	rst 38h			;0f62	ff 	. 
	cp 0f8h		;0f63	fe f8 	. . 
	ret po			;0f65	e0 	. 
	rst 38h			;0f66	ff 	. 
	call m,0f178h		;0f67	fc 78 f1 	. x . 
	cp 07ch		;0f6a	fe 7c 	. | 
	ret m			;0f6c	f8 	. 
	pop af			;0f6d	f1 	. 
	cp 0fch		;0f6e	fe fc 	. . 
	ret m			;0f70	f8 	. 
	ret p			;0f71	f0 	. 
	rst 38h			;0f72	ff 	. 
	call m,0fcfch		;0f73	fc fc fc 	. . . 
l0f76h:
	rst 38h			;0f76	ff 	. 
	cp 037h		;0f77	fe 37 	. 7 
	rst 30h			;0f79	f7 	. 
	rst 30h			;0f7a	f7 	. 
	dec sp			;0f7b	3b 	; 
	ld (hl),a			;0f7c	77 	w 
	push af			;0f7d	f5 	. 
	push af			;0f7e	f5 	. 
	ld a,b			;0f7f	78 	x 
	inc (hl)			;0f80	34 	4 
	call z,00404h		;0f81	cc 04 04 	. . . 
	jr z,l0f5eh		;0f84	28 d8 	( . 
	ex af,af'			;0f86	08 	. 
	ex af,af'			;0f87	08 	. 
	ld c,b			;0f88	48 	H 
	cp b			;0f89	b8 	. 
	ex af,af'			;0f8a	08 	. 
	ex af,af'			;0f8b	08 	. 
	ld d,b			;0f8c	50 	P 
	or b			;0f8d	b0 	. 
	djnz l0fa0h		;0f8e	10 10 	. . 
	djnz $-14		;0f90	10 f0 	. . 
	djnz l0fa4h		;0f92	10 10 	. . 
	jr nz,l0f76h		;0f94	20 e0 	  . 
	jr nz,l0fb8h		;0f96	20 20 	    
	ret nz			;0f98	c0 	. 
	ret nz			;0f99	c0 	. 
	ret nz			;0f9a	c0 	. 
	ret nz			;0f9b	c0 	. 
	ld h,b			;0f9c	60 	` 
	ld h,b			;0f9d	60 	` 
	ld h,b			;0f9e	60 	` 
	ret po			;0f9f	e0 	. 
l0fa0h:
	rrca			;0fa0	0f 	. 
	rrca			;0fa1	0f 	. 
	rrca			;0fa2	0f 	. 
	ex af,af'			;0fa3	08 	. 
l0fa4h:
	rrca			;0fa4	0f 	. 
	rrca			;0fa5	0f 	. 
	rrca			;0fa6	0f 	. 
	ex af,af'			;0fa7	08 	. 
	dec bc			;0fa8	0b 	. 
	dec bc			;0fa9	0b 	. 
	dec bc			;0faa	0b 	. 
	inc c			;0fab	0c 	. 
	add hl,bc			;0fac	09 	. 
	add hl,bc			;0fad	09 	. 
	add hl,bc			;0fae	09 	. 
	ld c,004h		;0faf	0e 04 	. . 
	inc b			;0fb1	04 	. 
	inc b			;0fb2	04 	. 
	rlca			;0fb3	07 	. 
	ld a,(bc)			;0fb4	0a 	. 
	ld a,(bc)			;0fb5	0a 	. 
	ld c,00bh		;0fb6	0e 0b 	. . 
l0fb8h:
	ld de,l1f11h		;0fb8	11 11 1f 	. . . 
	ld de,l1010h		;0fbb	11 10 10 	. . . 
	rra			;0fbe	1f 	. 
	djnz $-2		;0fbf	10 fc 	. . 
	call m,sub_03fch		;0fc1	fc fc 03 	. . . 
	rst 38h			;0fc4	ff 	. 
	rst 38h			;0fc5	ff 	. 
	rst 38h			;0fc6	ff 	. 
	nop			;0fc7	00 	. 
	rst 38h			;0fc8	ff 	. 
	rst 38h			;0fc9	ff 	. 
	rst 38h			;0fca	ff 	. 
	nop			;0fcb	00 	. 
	rst 38h			;0fcc	ff 	. 
	rst 38h			;0fcd	ff 	. 
	rst 38h			;0fce	ff 	. 
	nop			;0fcf	00 	. 
	rst 38h			;0fd0	ff 	. 
	rst 38h			;0fd1	ff 	. 
	rst 38h			;0fd2	ff 	. 
	nop			;0fd3	00 	. 
	ld a,a			;0fd4	7f 	 
	ld a,a			;0fd5	7f 	 
	ld a,a			;0fd6	7f 	 
	add a,b			;0fd7	80 	. 
	ccf			;0fd8	3f 	? 
	ccf			;0fd9	3f 	? 
	ccf			;0fda	3f 	? 
	ret nz			;0fdb	c0 	. 
	adc a,e			;0fdc	8b 	. 
	adc a,e			;0fdd	8b 	. 
	adc a,e			;0fde	8b 	. 
	call p,sub_3d3ch		;0fdf	f4 3c 3d 	. < = 
	dec a			;0fe2	3d 	= 
	jp nz,0e3e1h		;0fe3	c2 e1 e3 	. . . 
	ex (sp),hl			;0fe6	e3 	. 
	dec e			;0fe7	1d 	. 
	add hl,de			;0fe8	19 	. 
	rra			;0fe9	1f 	. 
	rra			;0fea	1f 	. 
	pop hl			;0feb	e1 	. 
	di			;0fec	f3 	. 
	rst 30h			;0fed	f7 	. 
	rst 30h			;0fee	f7 	. 
	dec bc			;0fef	0b 	. 
	rst 8			;0ff0	cf 	. 
	rst 18h			;0ff1	df 	. 
	rst 18h			;0ff2	df 	. 
	cpl			;0ff3	2f 	/ 
	rrca			;0ff4	0f 	. 
	rra			;0ff5	1f 	. 
	rra			;0ff6	1f 	. 
	rst 28h			;0ff7	ef 	. 
	sbc a,a			;0ff8	9f 	. 
	cp a			;0ff9	bf 	. 
	cp a			;0ffa	bf 	. 
	ld e,a			;0ffb	5f 	_ 
	call p,0ffffh		;0ffc	f4 ff ff 	. . . 
	inc (hl)			;0fff	34 	4 
	rst 8			;1000	cf 	. 
	call 0fcfdh		;1001	cd fd fc 	. . . 
	add a,e			;1004	83 	. 
	add a,e			;1005	83 	. 
	rst 38h			;1006	ff 	. 
	ex (sp),hl			;1007	e3 	. 
	add a,b			;1008	80 	. 
	adc a,a			;1009	8f 	. 
	ret p			;100a	f0 	. 
	ret nz			;100b	c0 	. 
	add a,b			;100c	80 	. 
	adc a,a			;100d	8f 	. 
	ret p			;100e	f0 	. 
	ret nz			;100f	c0 	. 
l1010h:
	or b			;1010	b0 	. 
	and a			;1011	a7 	. 
l1012h:
	ret m			;1012	f8 	. 
	ret p			;1013	f0 	. 
	and l			;1014	a5 	. 
	add a,b			;1015	80 	. 
	rst 38h			;1016	ff 	. 
	push af			;1017	f5 	. 
	jp z,0ffc0h		;1018	ca c0 ff 	. . . 
	cp 0ffh		;101b	fe ff 	. . 
	rst 38h			;101d	ff 	. 
	rst 38h			;101e	ff 	. 
	rst 38h			;101f	ff 	. 
	ld h,b			;1020	60 	` 
	ld h,b			;1021	60 	` 
	ld h,b			;1022	60 	` 
	ret po			;1023	e0 	. 
	ret p			;1024	f0 	. 
	ret p			;1025	f0 	. 
	ret p			;1026	f0 	. 
	ret p			;1027	f0 	. 
	ld (hl),b			;1028	70 	p 
	ld d,b			;1029	50 	P 
	ret p			;102a	f0 	. 
	ret p			;102b	f0 	. 
	ld (hl),b			;102c	70 	p 
	ld d,b			;102d	50 	P 
	ret p			;102e	f0 	. 
	ret p			;102f	f0 	. 
	ld (hl),b			;1030	70 	p 
	ld d,b			;1031	50 	P 
	ret p			;1032	f0 	. 
	ret p			;1033	f0 	. 
	ld (hl),b			;1034	70 	p 
	ld d,b			;1035	50 	P 
	ret p			;1036	f0 	. 
	ret p			;1037	f0 	. 
	ret m			;1038	f8 	. 
	adc a,b			;1039	88 	. 
	ret m			;103a	f8 	. 
	ret pe			;103b	e8 	. 
	ret m			;103c	f8 	. 
	ret z			;103d	c8 	. 
	ret m			;103e	f8 	. 
	ret z			;103f	c8 	. 
	djnz l1053h		;1040	10 11 	. . 
	ld e,010h		;1042	1e 10 	. . 
	ld de,l1c12h		;1044	11 12 1c 	. . . 
	djnz l1052h		;1047	10 09 	. . 
	ld a,(bc)			;1049	0a 	. 
	inc c			;104a	0c 	. 
	ex af,af'			;104b	08 	. 
	add hl,bc			;104c	09 	. 
	ld a,(bc)			;104d	0a 	. 
	inc c			;104e	0c 	. 
	ex af,af'			;104f	08 	. 
	ex af,af'			;1050	08 	. 
	dec bc			;1051	0b 	. 
l1052h:
	inc c			;1052	0c 	. 
l1053h:
	ex af,af'			;1053	08 	. 
	ex af,af'			;1054	08 	. 
	dec bc			;1055	0b 	. 
	inc c			;1056	0c 	. 
	ex af,af'			;1057	08 	. 
	inc b			;1058	04 	. 
	inc b			;1059	04 	. 
	rlca			;105a	07 	. 
	inc b			;105b	04 	. 
	inc b			;105c	04 	. 
	inc b			;105d	04 	. 
	rlca			;105e	07 	. 
	inc b			;105f	04 	. 
	ld a,b			;1060	78 	x 
	ret m			;1061	f8 	. 
	ld a,b			;1062	78 	x 
	ld a,a			;1063	7f 	 
	sbc a,(hl)			;1064	9e 	. 
	ld a,(hl)			;1065	7e 	~ 
	ld e,01fh		;1066	1e 1f 	. . 
	add a,a			;1068	87 	. 
	ld h,e			;1069	63 	c 
	rra			;106a	1f 	. 
	rrca			;106b	0f 	. 
	inc bc			;106c	03 	. 
	pop hl			;106d	e1 	. 
	rra			;106e	1f 	. 
l106fh:
	rlca			;106f	07 	. 
	inc bc			;1070	03 	. 
	pop hl			;1071	e1 	. 
	rra			;1072	1f 	. 
	rlca			;1073	07 	. 
	inc bc			;1074	03 	. 
	pop hl			;1075	e1 	. 
	rra			;1076	1f 	. 
	rrca			;1077	0f 	. 
	rlca			;1078	07 	. 
	jp l0f3fh		;1079	c3 3f 0f 	. ? . 
	rlca			;107c	07 	. 
	inc bc			;107d	03 	. 
	rst 38h			;107e	ff 	. 
	rra			;107f	1f 	. 
	ret m			;1080	f8 	. 
	ret m			;1081	f8 	. 
	ret m			;1082	f8 	. 
	rlca			;1083	07 	. 
	jr l109eh		;1084	18 18 	. . 
	jr l106fh		;1086	18 e7 	. . 
	nop			;1088	00 	. 
	ld bc,0fe01h		;1089	01 01 fe 	. . . 
	add a,c			;108c	81 	. 
	add a,e			;108d	83 	. 
	add a,e			;108e	83 	. 
	defb 0fdh,0e7h,0e7h	;illegal sequence		;108f	fd e7 e7 	. . . 
	rst 20h			;1092	e7 	. 
	rst 38h			;1093	ff 	. 
	rst 38h			;1094	ff 	. 
	rst 18h			;1095	df 	. 
	rst 38h			;1096	ff 	. 
l1097h:
	rst 38h			;1097	ff 	. 
	rst 38h			;1098	ff 	. 
	add a,e			;1099	83 	. 
	rst 38h			;109a	ff 	. 
	rst 38h			;109b	ff 	. 
	rst 38h			;109c	ff 	. 
	pop bc			;109d	c1 	. 
l109eh:
	rst 38h			;109e	ff 	. 
	rst 38h			;109f	ff 	. 
	rra			;10a0	1f 	. 
	rst 38h			;10a1	ff 	. 
	rst 38h			;10a2	ff 	. 
	rra			;10a3	1f 	. 
	jr nc,l1097h		;10a4	30 f1 	0 . 
	cp 030h		;10a6	fe 30 	. 0 
	ret po			;10a8	e0 	. 
	rst 20h			;10a9	e7 	. 
	ret m			;10aa	f8 	. 
	ret p			;10ab	f0 	. 
	jp 0f0cch		;10ac	c3 cc f0 	. . . 
	ret po			;10af	e0 	. 
	pop bc			;10b0	c1 	. 
	adc a,(hl)			;10b1	8e 	. 
	ret p			;10b2	f0 	. 
	ret po			;10b3	e0 	. 
	add a,b			;10b4	80 	. 
	rrca			;10b5	0f 	. 
	ret p			;10b6	f0 	. 
	ret po			;10b7	e0 	. 
	ret nz			;10b8	c0 	. 
	rlca			;10b9	07 	. 
	ret m			;10ba	f8 	. 
	ret p			;10bb	f0 	. 
	ret po			;10bc	e0 	. 
	add a,b			;10bd	80 	. 
	rst 38h			;10be	ff 	. 
	ret m			;10bf	f8 	. 
	inc a			;10c0	3c 	< 
	inc h			;10c1	24 	$ 
	call m,sub_1ef4h		;10c2	fc f4 1e 	. . . 
	sub d			;10c5	92 	. 
	ld a,(hl)			;10c6	7e 	~ 
	ld e,d			;10c7	5a 	Z 
	ld e,092h		;10c8	1e 92 	. . 
	ld a,(hl)			;10ca	7e 	~ 
	ld e,d			;10cb	5a 	Z 
	rra			;10cc	1f 	. 
	sub c			;10cd	91 	. 
	ld a,a			;10ce	7f 	 
	ld e,c			;10cf	59 	Y 
	rra			;10d0	1f 	. 
	sub c			;10d1	91 	. 
	ld a,a			;10d2	7f 	 
	ld e,c			;10d3	59 	Y 
	ccf			;10d4	3f 	? 
	or c			;10d5	b1 	. 
	ld a,a			;10d6	7f 	 
	add hl,sp			;10d7	39 	9 
	ld a,0a2h		;10d8	3e a2 	> . 
	ld a,(hl)			;10da	7e 	~ 
	ld a,(0447ch)		;10db	3a 7c 44 	: | D 
	call m,sub_025ch		;10de	fc 5c 02 	. \ . 
	ld (bc),a			;10e1	02 	. 
	ld (bc),a			;10e2	02 	. 
	inc bc			;10e3	03 	. 
sub_10e4h:
	nop			;10e4	00 	. 
	nop			;10e5	00 	. 
	nop			;10e6	00 	. 
	nop			;10e7	00 	. 
	rlca			;10e8	07 	. 
	rlca			;10e9	07 	. 
	rlca			;10ea	07 	. 
	rlca			;10eb	07 	. 
	jr l110dh		;10ec	18 1f 	. . 
	jr l1108h		;10ee	18 18 	. . 
	jr nz,l1121h		;10f0	20 2f 	  / 
	jr nc,l1124h		;10f2	30 30 	0 0 
	halt			;10f4	76 	v 
	ld b,b			;10f5	40 	@ 
	ld c,c			;10f6	49 	I 
	ld c,c			;10f7	49 	I 
	rst 38h			;10f8	ff 	. 
	sub c			;10f9	91 	. 
	sub c			;10fa	91 	. 
	sub c			;10fb	91 	. 
	rst 38h			;10fc	ff 	. 
	rst 38h			;10fd	ff 	. 
	rst 38h			;10fe	ff 	. 
	rst 38h			;10ff	ff 	. 
	ld (hl),a			;1100	77 	w 
	ld d,e			;1101	53 	S 
	ld e,a			;1102	5f 	_ 
	adc a,a			;1103	8f 	. 
	pop af			;1104	f1 	. 
	pop af			;1105	f1 	. 
	pop af			;1106	f1 	. 
	rst 38h			;1107	ff 	. 
l1108h:
	ld e,01eh		;1108	1e 1e 	. . 
	cp 01eh		;110a	fe 1e 	. . 
	inc bc			;110c	03 	. 
l110dh:
	pop bc			;110d	c1 	. 
	ccf			;110e	3f 	? 
	rrca			;110f	0f 	. 
	ld bc,l1fe0h		;1110	01 e0 1f 	. . . 
	inc bc			;1113	03 	. 
	nop			;1114	00 	. 
	ret nz			;1115	c0 	. 
	ccf			;1116	3f 	? 
	inc bc			;1117	03 	. 
	ld bc,0ff00h		;1118	01 00 ff 	. . . 
	rlca			;111b	07 	. 
	rst 38h			;111c	ff 	. 
	rst 38h			;111d	ff 	. 
	rst 38h			;111e	ff 	. 
	rst 38h			;111f	ff 	. 
	rst 38h			;1120	ff 	. 
l1121h:
	pop af			;1121	f1 	. 
	rst 38h			;1122	ff 	. 
	rst 38h			;1123	ff 	. 
l1124h:
	rra			;1124	1f 	. 
	rra			;1125	1f 	. 
	rra			;1126	1f 	. 
	rra			;1127	1f 	. 
	nop			;1128	00 	. 
	nop			;1129	00 	. 
l112ah:
	nop			;112a	00 	. 
	nop			;112b	00 	. 
	nop			;112c	00 	. 
	nop			;112d	00 	. 
	nop			;112e	00 	. 
	nop			;112f	00 	. 
	add a,b			;1130	80 	. 
	add a,b			;1131	80 	. 
	add a,b			;1132	80 	. 
	add a,b			;1133	80 	. 
	pop bc			;1134	c1 	. 
	ld b,c			;1135	41 	A 
	pop bc			;1136	c1 	. 
	pop bc			;1137	c1 	. 
	pop bc			;1138	c1 	. 
	ld b,c			;1139	41 	A 
	pop bc			;113a	c1 	. 
	pop bc			;113b	c1 	. 
	add a,b			;113c	80 	. 
	add a,b			;113d	80 	. 
	add a,b			;113e	80 	. 
	add a,b			;113f	80 	. 
	ei			;1140	fb 	. 
	jp po,0fcfeh		;1141	e2 fe fc 	. . . 
	inc hl			;1144	23 	# 
	inc hl			;1145	23 	# 
	inc hl			;1146	23 	# 
	ccf			;1147	3f 	? 
	ld a,h			;1148	7c 	| 
	ld a,h			;1149	7c 	| 
	ld a,a			;114a	7f 	 
	ld a,(hl)			;114b	7e 	~ 
	ret po			;114c	e0 	. 
	add a,c			;114d	81 	. 
	cp 0fch		;114e	fe fc 	. . 
	ret nz			;1150	c0 	. 
	add a,e			;1151	83 	. 
	call m,080e0h		;1152	fc e0 80 	. . . 
	nop			;1155	00 	. 
	rst 38h			;1156	ff 	. 
	ret po			;1157	e0 	. 
	add a,b			;1158	80 	. 
	nop			;1159	00 	. 
	rst 38h			;115a	ff 	. 
	rst 38h			;115b	ff 	. 
	rst 38h			;115c	ff 	. 
	rst 38h			;115d	ff 	. 
	rst 38h			;115e	ff 	. 
	rst 38h			;115f	ff 	. 
	cp b			;1160	b8 	. 
	sbc a,b			;1161	98 	. 
	cp b			;1162	b8 	. 
	ld e,b			;1163	58 	X 
	ret p			;1164	f0 	. 
	ret p			;1165	f0 	. 
	ret p			;1166	f0 	. 
	ret p			;1167	f0 	. 
	nop			;1168	00 	. 
	ld h,b			;1169	60 	` 
	add a,b			;116a	80 	. 
	nop			;116b	00 	. 
	nop			;116c	00 	. 
	ret m			;116d	f8 	. 
	nop			;116e	00 	. 
	nop			;116f	00 	. 
	nop			;1170	00 	. 
	ret m			;1171	f8 	. 
	inc b			;1172	04 	. 
	inc b			;1173	04 	. 
	ld (hl),000h		;1174	36 00 	6 . 
	ret z			;1176	c8 	. 
	ld c,b			;1177	48 	H 
	ld a,a			;1178	7f 	 
	ld b,h			;1179	44 	D 
	call nz,0fec4h		;117a	c4 c4 fe 	. . . 
	cp 0feh		;117d	fe fe 	. . 
	cp 0fbh		;117f	fe fb 	. . 
	ei			;1181	fb 	. 
	ei			;1182	fb 	. 
	ei			;1183	fb 	. 
	call m,0ff0ch		;1184	fc 0c ff 	. . . 
	rst 38h			;1187	ff 	. 
	ret m			;1188	f8 	. 
	jr $+1		;1189	18 ff 	. . 
	ld a,0f8h		;118b	3e f8 	> . 
	ld sp,0fcfeh		;118d	31 fe fc 	1 . . 
	ret m			;1190	f8 	. 
	ld (hl),c			;1191	71 	q 
	cp 0fch		;1192	fe fc 	. . 
	ret m			;1194	f8 	. 
	ret p			;1195	f0 	. 
	rst 38h			;1196	ff 	. 
	call m,0f0fch		;1197	fc fc f0 	. . . 
	rst 38h			;119a	ff 	. 
	cp 0fch		;119b	fe fc 	. . 
	ret m			;119d	f8 	. 
	rst 38h			;119e	ff 	. 
	cp 0e0h		;119f	fe e0 	. . 
	ret po			;11a1	e0 	. 
	ret po			;11a2	e0 	. 
	ret po			;11a3	e0 	. 
	djnz l11b6h		;11a4	10 10 	. . 
	ret p			;11a6	f0 	. 
	ret p			;11a7	f0 	. 
	djnz $+18		;11a8	10 10 	. . 
	ret p			;11aa	f0 	. 
	djnz l11b5h		;11ab	10 08 	. . 
	ret m			;11ad	f8 	. 
	ex af,af'			;11ae	08 	. 
	ex af,af'			;11af	08 	. 
	ld l,h			;11b0	6c 	l 
	sbc a,h			;11b1	9c 	. 
	inc c			;11b2	0c 	. 
	inc c			;11b3	0c 	. 
	ld h,h			;11b4	64 	d 
l11b5h:
	sbc a,h			;11b5	9c 	. 
l11b6h:
	inc b			;11b6	04 	. 
	inc b			;11b7	04 	. 
	inc h			;11b8	24 	$ 
	call c,00404h		;11b9	dc 04 04 	. . . 
	inc b			;11bc	04 	. 
	call m,00404h		;11bd	fc 04 04 	. . . 
	call m,0fff8h		;11c0	fc f8 ff 	. . . 
	cp 0feh		;11c3	fe fe 	. . 
	cp 0ffh		;11c5	fe ff 	. . 
	rst 38h			;11c7	ff 	. 
	ld (hl),a			;11c8	77 	w 
	ld (hl),l			;11c9	75 	u 
	ld (hl),l			;11ca	75 	u 
	ld sp,hl			;11cb	f9 	. 
	rst 30h			;11cc	f7 	. 
	call p,0f8f4h		;11cd	f4 f4 f8 	. . . 
	rst 38h			;11d0	ff 	. 
	cp 0feh		;11d1	fe fe 	. . 
	cp 0f1h		;11d3	fe f1 	. . 
	pop hl			;11d5	e1 	. 
	rst 38h			;11d6	ff 	. 
	rst 38h			;11d7	ff 	. 
	ld h,b			;11d8	60 	` 
	ld b,(hl)			;11d9	46 	F 
	ld a,c			;11da	79 	y 
	ret p			;11db	f0 	. 
	ret nz			;11dc	c0 	. 
	add a,a			;11dd	87 	. 
	ret m			;11de	f8 	. 
	ret p			;11df	f0 	. 
	inc h			;11e0	24 	$ 
	call c,00404h		;11e1	dc 04 04 	. . . 
	ex af,af'			;11e4	08 	. 
	ld a,b			;11e5	78 	x 
	adc a,b			;11e6	88 	. 
	ex af,af'			;11e7	08 	. 
	ret z			;11e8	c8 	. 
	ret m			;11e9	f8 	. 
	ret z			;11ea	c8 	. 
	ret z			;11eb	c8 	. 
	or b			;11ec	b0 	. 
	or b			;11ed	b0 	. 
	or b			;11ee	b0 	. 
	ld (hl),b			;11ef	70 	p 
	or b			;11f0	b0 	. 
	or b			;11f1	b0 	. 
	or b			;11f2	b0 	. 
	ld (hl),b			;11f3	70 	p 
	ret po			;11f4	e0 	. 
	ret po			;11f5	e0 	. 
	ret po			;11f6	e0 	. 
	ret po			;11f7	e0 	. 
	ld b,b			;11f8	40 	@ 
	ld b,b			;11f9	40 	@ 
	ret nz			;11fa	c0 	. 
	ld b,b			;11fb	40 	@ 
	ld b,b			;11fc	40 	@ 
	ret nz			;11fd	c0 	. 
	ld b,b			;11fe	40 	@ 
	ld b,b			;11ff	40 	@ 
	ret nz			;1200	c0 	. 
	rrca			;1201	0f 	. 
	ret p			;1202	f0 	. 
	ret po			;1203	e0 	. 
	nop			;1204	00 	. 
	rra			;1205	1f 	. 
l1206h:
	ret po			;1206	e0 	. 
	ret nz			;1207	c0 	. 
	ld b,b			;1208	40 	@ 
	rst 18h			;1209	df 	. 
l120ah:
	ld h,b			;120a	60 	` 
	ld h,b			;120b	60 	` 
	ld c,c			;120c	49 	I 
	in a,(06dh)		;120d	db 6d 	. m 
	ld l,l			;120f	6d 	m 
	ld c,c			;1210	49 	I 
	ld e,e			;1211	5b 	[ 
	defb 0edh;next byte illegal after ed		;1212	ed 	. 
	defb 0edh;next byte illegal after ed		;1213	ed 	. 
	ret			;1214	c9 	. 
	in a,(0edh)		;1215	db ed 	. . 
	defb 0edh;next byte illegal after ed		;1217	ed 	. 
	call po,0f6edh		;1218	e4 ed f6 	. . . 
	or 0fch		;121b	f6 fc 	. . 
	defb 0fdh,0feh,0feh	;illegal sequence		;121d	fd fe fe 	. . . 
	nop			;1220	00 	. 
	ret nz			;1221	c0 	. 
	nop			;1222	00 	. 
	nop			;1223	00 	. 
	jr nz,l1206h		;1224	20 e0 	  . 
	jr nz,l1248h		;1226	20 20 	    
	jr nz,l120ah		;1228	20 e0 	  . 
	jr nz,l124ch		;122a	20 20 	    
	jr nz,l128eh		;122c	20 60 	  ` 
	and b			;122e	a0 	. 
	and b			;122f	a0 	. 
	jr nz,$+98		;1230	20 60 	  ` 
	and b			;1232	a0 	. 
	and b			;1233	a0 	. 
	sub b			;1234	90 	. 
	or b			;1235	b0 	. 
	ret nc			;1236	d0 	. 
	ret nc			;1237	d0 	. 
	ret p			;1238	f0 	. 
	ret p			;1239	f0 	. 
	ret p			;123a	f0 	. 
	ret p			;123b	f0 	. 
	ret m			;123c	f8 	. 
	adc a,b			;123d	88 	. 
	ret m			;123e	f8 	. 
	ret z			;123f	c8 	. 
	pop af			;1240	f1 	. 
	rst 30h			;1241	f7 	. 
	ld sp,hl			;1242	f9 	. 
	ld sp,hl			;1243	f9 	. 
	pop af			;1244	f1 	. 
	dec d			;1245	15 	. 
	ei			;1246	fb 	. 
	ei			;1247	fb 	. 
l1248h:
	ex (sp),hl			;1248	e3 	. 
	cpl			;1249	2f 	/ 
	di			;124a	f3 	. 
	inc sp			;124b	33 	3 
l124ch:
	ret nz			;124c	c0 	. 
	ld e,h			;124d	5c 	\ 
	ex (sp),hl			;124e	e3 	. 
	ex (sp),hl			;124f	e3 	. 
	add a,b			;1250	80 	. 
	sbc a,a			;1251	9f 	. 
	ret po			;1252	e0 	. 
	ret po			;1253	e0 	. 
	add a,b			;1254	80 	. 
	cp a			;1255	bf 	. 
	ret nz			;1256	c0 	. 
	ret nz			;1257	c0 	. 
	add a,b			;1258	80 	. 
	sbc a,e			;1259	9b 	. 
	call po,080e4h		;125a	e4 e4 80 	. . . 
	add a,a			;125d	87 	. 
	ret m			;125e	f8 	. 
	ret m			;125f	f8 	. 
	and d			;1260	a2 	. 
	xor (hl)			;1261	ae 	. 
	or d			;1262	b2 	. 
	or d			;1263	b2 	. 
	call nz,0e4deh		;1264	c4 de e4 	. . . 
	call po,03e08h		;1267	e4 08 3e 	. . > 
l126ah:
	ret z			;126a	c8 	. 
	ret z			;126b	c8 	. 
	djnz l126ah		;126c	10 fc 	. . 
	ld (de),a			;126e	12 	. 
	ld (de),a			;126f	12 	. 
	inc bc			;1270	03 	. 
	cp e			;1271	bb 	. 
	ld b,a			;1272	47 	G 
	ld b,a			;1273	47 	G 
	dec c			;1274	0d 	. 
	rst 28h			;1275	ef 	. 
	dec e			;1276	1d 	. 
	dec e			;1277	1d 	. 
	ld bc,l03fdh		;1278	01 fd 03 	. . . 
	inc bc			;127b	03 	. 
	ld (bc),a			;127c	02 	. 
	jp po,l1e1eh		;127d	e2 1e 1e 	. . . 
	ret po			;1280	e0 	. 
	rst 18h			;1281	df 	. 
	ret po			;1282	e0 	. 
	ret po			;1283	e0 	. 
	ret p			;1284	f0 	. 
	ret p			;1285	f0 	. 
	rst 38h			;1286	ff 	. 
	cp 05fh		;1287	fe 5f 	. _ 
	ld e,a			;1289	5f 	_ 
	ld e,a			;128a	5f 	_ 
	rst 28h			;128b	ef 	. 
	sbc a,0d2h		;128c	de d2 	. . 
l128eh:
	jp nc,0fee1h		;128e	d2 e1 fe 	. . . 
	jp p,0f1f2h		;1291	f2 f2 f1 	. . . 
	rst 28h			;1294	ef 	. 
	rst 8			;1295	cf 	. 
	rst 38h			;1296	ff 	. 
	rst 38h			;1297	ff 	. 
	ret po			;1298	e0 	. 
	rst 0			;1299	c7 	. 
	ret m			;129a	f8 	. 
	ret p			;129b	f0 	. 
	ret po			;129c	e0 	. 
	rst 0			;129d	c7 	. 
	ret m			;129e	f8 	. 
	ret p			;129f	f0 	. 
	inc e			;12a0	1c 	. 
	inc e			;12a1	1c 	. 
	call m,0f8fch		;12a2	fc fc f8 	. . . 
	ret pe			;12a5	e8 	. 
	ret m			;12a6	f8 	. 
	ret m			;12a7	f8 	. 
	ret m			;12a8	f8 	. 
	adc a,b			;12a9	88 	. 
	ret m			;12aa	f8 	. 
	ret m			;12ab	f8 	. 
	ret m			;12ac	f8 	. 
	adc a,b			;12ad	88 	. 
	ret m			;12ae	f8 	. 
	ret m			;12af	f8 	. 
	ret p			;12b0	f0 	. 
	sub b			;12b1	90 	. 
	ret p			;12b2	f0 	. 
	ret p			;12b3	f0 	. 
	ret p			;12b4	f0 	. 
	ret nc			;12b5	d0 	. 
	ret p			;12b6	f0 	. 
	ret p			;12b7	f0 	. 
	ld (hl),b			;12b8	70 	p 
	ld (hl),b			;12b9	70 	p 
	ret p			;12ba	f0 	. 
	ld (hl),b			;12bb	70 	p 
	ld (hl),b			;12bc	70 	p 
	ld (hl),b			;12bd	70 	p 
	ret p			;12be	f0 	. 
	ld (hl),b			;12bf	70 	p 
	pop bc			;12c0	c1 	. 
	adc a,(hl)			;12c1	8e 	. 
	ret p			;12c2	f0 	. 
	ret po			;12c3	e0 	. 
	ret nz			;12c4	c0 	. 
	adc a,a			;12c5	8f 	. 
	ret p			;12c6	f0 	. 
	ret po			;12c7	e0 	. 
	pop bc			;12c8	c1 	. 
	add a,(hl)			;12c9	86 	. 
	ret m			;12ca	f8 	. 
	ret p			;12cb	f0 	. 
	jp 0f884h		;12cc	c3 84 f8 	. . . 
	ret p			;12cf	f0 	. 
	ret po			;12d0	e0 	. 
	jp 0f8fch		;12d1	c3 fc f8 	. . . 
	ret p			;12d4	f0 	. 
	ret po			;12d5	e0 	. 
	rst 38h			;12d6	ff 	. 
	call m,0f1ffh		;12d7	fc ff f1 	. . . 
	rst 38h			;12da	ff 	. 
	rst 38h			;12db	ff 	. 
	rst 38h			;12dc	ff 	. 
	rst 38h			;12dd	ff 	. 
	rst 38h			;12de	ff 	. 
	rst 38h			;12df	ff 	. 
	jr nc,$-78		;12e0	30 b0 	0 . 
	ld (hl),b			;12e2	70 	p 
	jr nc,l1315h		;12e3	30 30 	0 0 
	or b			;12e5	b0 	. 
	ld (hl),b			;12e6	70 	p 
	jr nc,l1319h		;12e7	30 30 	0 0 
	or b			;12e9	b0 	. 
	ld (hl),b			;12ea	70 	p 
	jr nc,l1325h		;12eb	30 38 	0 8 
	xor b			;12ed	a8 	. 
	ld a,b			;12ee	78 	x 
	jr c,$+122		;12ef	38 78 	8 x 
	ld l,b			;12f1	68 	h 
	ret m			;12f2	f8 	. 
l12f3h:
	ld a,b			;12f3	78 	x 
	ret m			;12f4	f8 	. 
	ret z			;12f5	c8 	. 
	ret m			;12f6	f8 	. 
	ret m			;12f7	f8 	. 
	ret m			;12f8	f8 	. 
	adc a,b			;12f9	88 	. 
	ret m			;12fa	f8 	. 
	ret m			;12fb	f8 	. 
	ret m			;12fc	f8 	. 
	adc a,b			;12fd	88 	. 
	ret m			;12fe	f8 	. 
	ret z			;12ff	c8 	. 
	nop			;1300	00 	. 
	nop			;1301	00 	. 
	nop			;1302	00 	. 
	nop			;1303	00 	. 
	rlca			;1304	07 	. 
	nop			;1305	00 	. 
	rlca			;1306	07 	. 
	nop			;1307	00 	. 
	inc e			;1308	1c 	. 
	nop			;1309	00 	. 
	rra			;130a	1f 	. 
	djnz l133ch		;130b	10 2f 	. / 
	nop			;130d	00 	. 
	cpl			;130e	2f 	/ 
	daa			;130f	27 	' 
	ccf			;1310	3f 	? 
	inc bc			;1311	03 	. 
	inc a			;1312	3c 	< 
	jr z,l1392h		;1313	28 7d 	( } 
l1315h:
	inc b			;1315	04 	. 
	ld a,e			;1316	7b 	{ 
	ld d,c			;1317	51 	Q 
	ld (hl),d			;1318	72 	r 
l1319h:
	nop			;1319	00 	. 
	ld a,a			;131a	7f 	 
	ld d,b			;131b	50 	P 
	ld (hl),l			;131c	75 	u 
	ld bc,l147eh		;131d	01 7e 14 	. ~ . 
	nop			;1320	00 	. 
	nop			;1321	00 	. 
	nop			;1322	00 	. 
	nop			;1323	00 	. 
	ret po			;1324	e0 	. 
l1325h:
	nop			;1325	00 	. 
	ret po			;1326	e0 	. 
	ret po			;1327	e0 	. 
	ret c			;1328	d8 	. 
l1329h:
	nop			;1329	00 	. 
	ret c			;132a	d8 	. 
	nop			;132b	00 	. 
	call pe,0fc00h		;132c	ec 00 fc 	. . . 
	ret po			;132f	e0 	. 
	jr nc,l1332h		;1330	30 00 	0 . 
l1332h:
	ret m			;1332	f8 	. 
	djnz l12f3h		;1333	10 be 	. . 
	jr nz,l1315h		;1335	20 de 	  . 
	adc a,b			;1337	88 	. 
	ld e,(hl)			;1338	5e 	^ 
	djnz l1329h		;1339	10 ee 	. . 
	ex af,af'			;133b	08 	. 
l133ch:
	or (hl)			;133c	b6 	. 
	sub b			;133d	90 	. 
	ld l,(hl)			;133e	6e 	n 
	inc h			;133f	24 	$ 
	ld (hl),l			;1340	75 	u 
	inc b			;1341	04 	. 
	ld a,e			;1342	7b 	{ 
	nop			;1343	00 	. 
	inc (hl)			;1344	34 	4 
	inc b			;1345	04 	. 
	dec sp			;1346	3b 	; 
	djnz l13c4h		;1347	10 7b 	. { 
	ld bc,0127eh		;1349	01 7e 12 	. ~ . 
	cpl			;134c	2f 	/ 
	inc bc			;134d	03 	. 
	inc a			;134e	3c 	< 
	ex af,af'			;134f	08 	. 
	scf			;1350	37 	7 
	nop			;1351	00 	. 
	ccf			;1352	3f 	? 
	rlca			;1353	07 	. 
	rra			;1354	1f 	. 
	nop			;1355	00 	. 
	rra			;1356	1f 	. 
	rlca			;1357	07 	. 
	ld b,000h		;1358	06 00 	. . 
	rlca			;135a	07 	. 
	nop			;135b	00 	. 
	nop			;135c	00 	. 
	nop			;135d	00 	. 
	nop			;135e	00 	. 
	nop			;135f	00 	. 
	ld (hl),000h		;1360	36 00 	6 . 
	cp 024h		;1362	fe 24 	. $ 
	or 040h		;1364	f6 40 	. @ 
	cp (hl)			;1366	be 	. 
	inc h			;1367	24 	$ 
	and 0c0h		;1368	e6 c0 	. . 
	ld a,024h		;136a	3e 24 	> $ 
	call pe,07c80h		;136c	ec 80 7c 	. . | 
	ld b,b			;136f	40 	@ 
	call m,0fc00h		;1370	fc 00 fc 	. . . 
	sub h			;1373	94 	. 
	cp b			;1374	b8 	. 
	nop			;1375	00 	. 
	ret m			;1376	f8 	. 
l1377h:
	jr l13d9h		;1377	18 60 	. ` 
	nop			;1379	00 	. 
	ld h,b			;137a	60 	` 
	ld h,b			;137b	60 	` 
	nop			;137c	00 	. 
	nop			;137d	00 	. 
	nop			;137e	00 	. 
	nop			;137f	00 	. 
	nop			;1380	00 	. 
	nop			;1381	00 	. 
	nop			;1382	00 	. 
	nop			;1383	00 	. 
	rlca			;1384	07 	. 
	nop			;1385	00 	. 
	rlca			;1386	07 	. 
	rlca			;1387	07 	. 
	rra			;1388	1f 	. 
	nop			;1389	00 	. 
	rra			;138a	1f 	. 
	nop			;138b	00 	. 
	inc l			;138c	2c 	, 
	nop			;138d	00 	. 
	ccf			;138e	3f 	? 
	inc b			;138f	04 	. 
	add hl,sp			;1390	39 	9 
	nop			;1391	00 	. 
l1392h:
	ccf			;1392	3f 	? 
	ex af,af'			;1393	08 	. 
	ld (hl),a			;1394	77 	w 
	nop			;1395	00 	. 
	ld a,a			;1396	7f 	 
	inc de			;1397	13 	. 
	ld l,a			;1398	6f 	o 
	ld bc,l047eh		;1399	01 7e 04 	. ~ . 
	ld l,002h		;139c	2e 02 	. . 
	ld a,l			;139e	7d 	} 
	inc b			;139f	04 	. 
	nop			;13a0	00 	. 
	nop			;13a1	00 	. 
	nop			;13a2	00 	. 
	nop			;13a3	00 	. 
	call po,0e400h		;13a4	e4 00 e4 	. . . 
	nop			;13a7	00 	. 
	ret m			;13a8	f8 	. 
	nop			;13a9	00 	. 
	ret m			;13aa	f8 	. 
	ex af,af'			;13ab	08 	. 
	defb 0fdh,008h,0f5h	;illegal sequence		;13ac	fd 08 f5 	. . . 
	call po,sub_009eh		;13af	e4 9e 00 	. . . 
	cp 012h		;13b2	fe 12 	. . 
	adc a,000h		;13b4	ce 00 	. . 
	cp 0cah		;13b6	fe ca 	. . 
	cp d			;13b8	ba 	. 
	add a,b			;13b9	80 	. 
	ld a,(hl)			;13ba	7e 	~ 
	jr z,l1377h		;13bb	28 ba 	( . 
	jr nz,$-32		;13bd	20 de 	  . 
	adc a,b			;13bf	88 	. 
	ld h,a			;13c0	67 	g 
	ld (bc),a			;13c1	02 	. 
	ld a,l			;13c2	7d 	} 
	dec b			;13c3	05 	. 
l13c4h:
	ld a,l			;13c4	7d 	} 
	add hl,bc			;13c5	09 	. 
	halt			;13c6	76 	v 
	inc d			;13c7	14 	. 
	ld a,e			;13c8	7b 	{ 
	ex af,af'			;13c9	08 	. 
	ld (hl),a			;13ca	77 	w 
	inc de			;13cb	13 	. 
	rra			;13cc	1f 	. 
	rlca			;13cd	07 	. 
	jr c,l13d8h		;13ce	38 08 	8 . 
	cp a			;13d0	bf 	. 
	nop			;13d1	00 	. 
	cp a			;13d2	bf 	. 
	rlca			;13d3	07 	. 
	rla			;13d4	17 	. 
	nop			;13d5	00 	. 
	rra			;13d6	1f 	. 
	nop			;13d7	00 	. 
l13d8h:
	rla			;13d8	17 	. 
l13d9h:
	nop			;13d9	00 	. 
	rla			;13da	17 	. 
	nop			;13db	00 	. 
	nop			;13dc	00 	. 
l13ddh:
	nop			;13dd	00 	. 
	nop			;13de	00 	. 
	nop			;13df	00 	. 
	cp 0a0h		;13e0	fe a0 	. . 
	ld e,(hl)			;13e2	5e 	^ 
	ex af,af'			;13e3	08 	. 
	cp (hl)			;13e4	be 	. 
	and b			;13e5	a0 	. 
	ld e,(hl)			;13e6	5e 	^ 
	ex af,af'			;13e7	08 	. 
	ld e,000h		;13e8	1e 00 	. . 
	cp 008h		;13ea	fe 08 	. . 
	cp h			;13ec	bc 	. 
	add a,b			;13ed	80 	. 
	ld a,h			;13ee	7c 	| 
	djnz l13ddh		;13ef	10 ec 	. . 
	nop			;13f1	00 	. 
	call m,sub_18e0h		;13f2	fc e0 18 	. . . 
	nop			;13f5	00 	. 
	ret m			;13f6	f8 	. 
	nop			;13f7	00 	. 
	ret po			;13f8	e0 	. 
	nop			;13f9	00 	. 
	ret po			;13fa	e0 	. 
	nop			;13fb	00 	. 
	nop			;13fc	00 	. 
	nop			;13fd	00 	. 
	nop			;13fe	00 	. 
	nop			;13ff	00 	. 
	rrca			;1400	0f 	. 
	inc c			;1401	0c 	. 
	rrca			;1402	0f 	. 
	ld c,013h		;1403	0e 13 	. . 
	ld e,013h		;1405	1e 13 	. . 
	ld (de),a			;1407	12 	. 
	dec hl			;1408	2b 	+ 
	ld (hl),023h		;1409	36 23 	6 # 
	inc hl			;140b	23 	# 
	ld b,e			;140c	43 	C 
	ld e,a			;140d	5f 	_ 
	ld h,e			;140e	63 	c 
	ld h,e			;140f	63 	c 
	ld b,c			;1410	41 	A 
	ld d,e			;1411	53 	S 
	ld l,l			;1412	6d 	m 
	ld l,l			;1413	6d 	m 
sub_1414h:
	ld c,b			;1414	48 	H 
l1415h:
	ld e,e			;1415	5b 	[ 
	ld l,h			;1416	6c 	l 
	ld l,h			;1417	6c 	l 
	ld c,b			;1418	48 	H 
	ld e,e			;1419	5b 	[ 
l141ah:
	ld l,h			;141a	6c 	l 
	ld l,h			;141b	6c 	l 
	ld c,b			;141c	48 	H 
	ld c,e			;141d	4b 	K 
l141eh:
	ld a,h			;141e	7c 	| 
	ld a,h			;141f	7c 	| 
	ret m			;1420	f8 	. 
	ld h,b			;1421	60 	` 
	ret c			;1422	d8 	. 
	ld h,b			;1423	60 	` 
	rst 38h			;1424	ff 	. 
	ld h,b			;1425	60 	` 
	rst 18h			;1426	df 	. 
	ld h,b			;1427	60 	` 
	ei			;1428	fb 	. 
l1429h:
	jr nc,l141ah		;1429	30 ef 	0 . 
	jr nc,l1429h		;142b	30 fc 	0 . 
	jr nc,l141eh		;142d	30 ef 	0 . 
	or b			;142f	b0 	. 
	cp 090h		;1430	fe 90 	. . 
	rst 30h			;1432	f7 	. 
	sub b			;1433	90 	. 
	rst 38h			;1434	ff 	. 
	adc a,b			;1435	88 	. 
l1436h:
	ei			;1436	fb 	. 
	ret z			;1437	c8 	. 
	ld a,a			;1438	7f 	 
	ret nz			;1439	c0 	. 
	ld a,b			;143a	78 	x 
	ld a,b			;143b	78 	x 
	ld a,a			;143c	7f 	 
	ret p			;143d	f0 	. 
	ld (hl),b			;143e	70 	p 
	ld (hl),b			;143f	70 	p 
	rrca			;1440	0f 	. 
	ld bc,l010eh		;1441	01 0e 01 	. . . 
	rst 30h			;1444	f7 	. 
	inc bc			;1445	03 	. 
	defb 0fdh,003h,0efh	;illegal sequence		;1446	fd 03 ef 	. . . 
	ld (bc),a			;1449	02 	. 
	ei			;144a	fb 	. 
	ld (bc),a			;144b	02 	. 
	sbc a,a			;144c	9f 	. 
	inc b			;144d	04 	. 
	rst 30h			;144e	f7 	. 
	inc b			;144f	04 	. 
	ccf			;1450	3f 	? 
	ex af,af'			;1451	08 	. 
	rst 28h			;1452	ef 	. 
	ex af,af'			;1453	08 	. 
	rst 38h			;1454	ff 	. 
	djnz l1436h		;1455	10 df 	. . 
	inc de			;1457	13 	. 
	rst 38h			;1458	ff 	. 
	and e			;1459	a3 	. 
	ccf			;145a	3f 	? 
	xor a			;145b	af 	. 
	cp 0eeh		;145c	fe ee 	. . 
	rra			;145e	1f 	. 
	cp 0fbh		;145f	fe fb 	. . 
	ei			;1461	fb 	. 
	ei			;1462	fb 	. 
	ei			;1463	fb 	. 
	call m,0ff0ch		;1464	fc 0c ff 	. . . 
	call m,sub_1ff8h		;1467	fc f8 1f 	. . . 
	ret m			;146a	f8 	. 
	jr c,$-11		;146b	38 f3 	8 . 
	inc a			;146d	3c 	< 
	ret p			;146e	f0 	. 
	ret p			;146f	f0 	. 
	pop hl			;1470	e1 	. 
	ld a,(hl)			;1471	7e 	~ 
	ret po			;1472	e0 	. 
	ret po			;1473	e0 	. 
	ret nz			;1474	c0 	. 
	rst 38h			;1475	ff 	. 
	ret nz			;1476	c0 	. 
	ret nz			;1477	c0 	. 
	add a,b			;1478	80 	. 
	rst 38h			;1479	ff 	. 
	add a,b			;147a	80 	. 
	add a,b			;147b	80 	. 
	ld c,0f5h		;147c	0e f5 	. . 
l147eh:
	ld c,00eh		;147e	0e 0e 	. . 
	add a,b			;1480	80 	. 
	add a,b			;1481	80 	. 
	add a,b			;1482	80 	. 
	add a,b			;1483	80 	. 
	ld h,b			;1484	60 	` 
	ld h,b			;1485	60 	` 
	ret po			;1486	e0 	. 
	ld h,b			;1487	60 	` 
	djnz l141ah		;1488	10 90 	. . 
	ld (hl),b			;148a	70 	p 
	djnz l1415h		;148b	10 88 	. . 
	ld l,b			;148d	68 	h 
	jr l1498h		;148e	18 08 	. . 
	add a,h			;1490	84 	. 
	ld (hl),h			;1491	74 	t 
	inc c			;1492	0c 	. 
	inc b			;1493	04 	. 
	inc b			;1494	04 	. 
	call p,sub_040ch		;1495	f4 0c 04 	. . . 
l1498h:
	ld (bc),a			;1498	02 	. 
	jp m,l0206h		;1499	fa 06 02 	. . . 
	ld (006cah),a		;149c	32 ca 06 	2 . . 
	ld (bc),a			;149f	02 	. 
	add hl,hl			;14a0	29 	) 
	ld hl,(l383bh+1)		;14a1	2a 3c 38 	* < 8 
	djnz l14b9h		;14a4	10 13 	. . 
	inc e			;14a6	1c 	. 
	jr l14b9h		;14a7	18 10 	. . 
	inc de			;14a9	13 	. 
	inc e			;14aa	1c 	. 
	jr l14beh		;14ab	18 11 	. . 
	inc de			;14ad	13 	. 
	dec e			;14ae	1d 	. 
	add hl,de			;14af	19 	. 
	djnz l14c3h		;14b0	10 11 	. . 
	ld e,018h		;14b2	1e 18 	. . 
	djnz l14c6h		;14b4	10 10 	. . 
	rra			;14b6	1f 	. 
	inc e			;14b7	1c 	. 
	ex af,af'			;14b8	08 	. 
l14b9h:
	ex af,af'			;14b9	08 	. 
	rrca			;14ba	0f 	. 
	rrca			;14bb	0f 	. 
	rlca			;14bc	07 	. 
	rlca			;14bd	07 	. 
l14beh:
	rlca			;14be	07 	. 
	rlca			;14bf	07 	. 
	cp a			;14c0	bf 	. 
	ld h,l			;14c1	65 	e 
	dec h			;14c2	25 	% 
l14c3h:
	dec h			;14c3	25 	% 
	sbc a,a			;14c4	9f 	. 
	ld l,l			;14c5	6d 	m 
l14c6h:
	dec c			;14c6	0d 	. 
	dec c			;14c7	0d 	. 
	rra			;14c8	1f 	. 
	defb 0edh;next byte illegal after ed		;14c9	ed 	. 
	dec c			;14ca	0d 	. 
	dec c			;14cb	0d 	. 
	rra			;14cc	1f 	. 
	jp (hl)			;14cd	e9 	. 
	ex af,af'			;14ce	08 	. 
	add hl,bc			;14cf	09 	. 
	rra			;14d0	1f 	. 
	pop bc			;14d1	c1 	. 
	jr nz,l14d5h		;14d2	20 01 	  . 
	rrca			;14d4	0f 	. 
l14d5h:
	nop			;14d5	00 	. 
	ret p			;14d6	f0 	. 
	djnz l14f8h		;14d7	10 1f 	. . 
	ld a,(de)			;14d9	1a 	. 
	ret m			;14da	f8 	. 
	jp m,0ffe7h		;14db	fa e7 ff 	. . . 
	rst 20h			;14de	e7 	. 
	rst 20h			;14df	e7 	. 
	call m,08cbfh		;14e0	fc bf 8c 	. . . 
	cp h			;14e3	bc 	. 
	defb 0fdh,0feh,0cch	;illegal sequence		;14e4	fd fe cc 	. . . 
	call m,0fffch		;14e7	fc fc ff 	. . . 
	call z,0fcfch		;14ea	cc fc fc 	. . . 
	rst 38h			;14ed	ff 	. 
	adc a,h			;14ee	8c 	. 
	call m,0fffdh		;14ef	fc fd ff 	. . . 
	dec c			;14f2	0d 	. 
	defb 0fdh,0f8h,0f8h	;illegal sequence		;14f3	fd f8 f8 	. . . 
	ccf			;14f6	3f 	? 
	ret m			;14f7	f8 	. 
l14f8h:
	ret po			;14f8	e0 	. 
	ret po			;14f9	e0 	. 
	rst 38h			;14fa	ff 	. 
	rst 38h			;14fb	ff 	. 
	sbc a,a			;14fc	9f 	. 
	rst 38h			;14fd	ff 	. 
	sbc a,a			;14fe	9f 	. 
	sbc a,a			;14ff	9f 	. 
	adc a,(hl)			;1500	8e 	. 
	ld h,h			;1501	64 	d 
	rra			;1502	1f 	. 
	rra			;1503	1f 	. 
	add a,a			;1504	87 	. 
	ld h,d			;1505	62 	b 
	rra			;1506	1f 	. 
	rrca			;1507	0f 	. 
	rlca			;1508	07 	. 
	jp po,l0f1fh		;1509	e2 1f 0f 	. . . 
	rlca			;150c	07 	. 
l150dh:
	ex (sp),hl			;150d	e3 	. 
	rra			;150e	1f 	. 
	rrca			;150f	0f 	. 
	rrca			;1510	0f 	. 
	add a,a			;1511	87 	. 
	ld a,a			;1512	7f 	 
	rra			;1513	1f 	. 
	rra			;1514	1f 	. 
	dec c			;1515	0d 	. 
	rst 38h			;1516	ff 	. 
	ld a,a			;1517	7f 	 
	scf			;1518	37 	7 
	ld sp,0ffffh		;1519	31 ff ff 	1 . . 
	rst 20h			;151c	e7 	. 
	pop hl			;151d	e1 	. 
	rst 38h			;151e	ff 	. 
	rst 38h			;151f	ff 	. 
	inc de			;1520	13 	. 
	ex de,hl			;1521	eb 	. 
l1522h:
	rlca			;1522	07 	. 
	inc bc			;1523	03 	. 
	ld bc,0837dh		;1524	01 7d 83 	. } . 
	add a,c			;1527	81 	. 
	ld de,0836dh		;1528	11 6d 83 	. m . 
	add a,c			;152b	81 	. 
	sub c			;152c	91 	. 
	add hl,hl			;152d	29 	) 
	rst 0			;152e	c7 	. 
	pop bc			;152f	c1 	. 
	jp nz,0e69ah		;1530	c2 9a e6 	. . . 
	jp po,0dac2h		;1533	e2 c2 da 	. . . 
	and 0e2h		;1536	e6 e2 	. . 
	ld a,(hl)			;1538	7e 	~ 
	ld a,(hl)			;1539	7e 	~ 
	ld a,(hl)			;153a	7e 	~ 
	cp (hl)			;153b	be 	. 
	ld a,d			;153c	7a 	z 
	ld l,d			;153d	6a 	j 
	ld l,d			;153e	6a 	j 
	add a,(hl)			;153f	86 	. 
	inc b			;1540	04 	. 
	inc b			;1541	04 	. 
	rlca			;1542	07 	. 
	rlca			;1543	07 	. 
	rrca			;1544	0f 	. 
	rrca			;1545	0f 	. 
	rrca			;1546	0f 	. 
	rrca			;1547	0f 	. 
	ex af,af'			;1548	08 	. 
	rrca			;1549	0f 	. 
	rrca			;154a	0f 	. 
	ex af,af'			;154b	08 	. 
	rlca			;154c	07 	. 
	rlca			;154d	07 	. 
	rlca			;154e	07 	. 
	rlca			;154f	07 	. 
	rrca			;1550	0f 	. 
	rrca			;1551	0f 	. 
	inc c			;1552	0c 	. 
	inc c			;1553	0c 	. 
	dec bc			;1554	0b 	. 
	dec bc			;1555	0b 	. 
	ld c,00ah		;1556	0e 0a 	. . 
	ld de,l1f11h		;1558	11 11 1f 	. . . 
	ld de,l1010h		;155b	11 10 10 	. . . 
	rra			;155e	1f 	. 
	djnz l1561h		;155f	10 00 	. . 
l1561h:
	ccf			;1561	3f 	? 
	ret nz			;1562	c0 	. 
	nop			;1563	00 	. 
	add a,e			;1564	83 	. 
	sbc a,h			;1565	9c 	. 
	ret po			;1566	e0 	. 
	add a,b			;1567	80 	. 
	ld a,b			;1568	78 	x 
	rst 38h			;1569	ff 	. 
	ret m			;156a	f8 	. 
	ld a,b			;156b	78 	x 
	adc a,a			;156c	8f 	. 
	adc a,a			;156d	8f 	. 
	adc a,a			;156e	8f 	. 
	rst 30h			;156f	f7 	. 
	rst 38h			;1570	ff 	. 
	rst 38h			;1571	ff 	. 
	rst 38h			;1572	ff 	. 
	ret m			;1573	f8 	. 
	rst 38h			;1574	ff 	. 
	rst 38h			;1575	ff 	. 
	rst 20h			;1576	e7 	. 
	rst 20h			;1577	e7 	. 
	rst 38h			;1578	ff 	. 
	rst 38h			;1579	ff 	. 
	rst 0			;157a	c7 	. 
	rst 0			;157b	c7 	. 
	rst 38h			;157c	ff 	. 
	rst 38h			;157d	ff 	. 
	adc a,0ceh		;157e	ce ce 	. . 
	nop			;1580	00 	. 
	ret p			;1581	f0 	. 
	rrca			;1582	0f 	. 
	ld bc,0e101h		;1583	01 01 e1 	. . . 
	rra			;1586	1f 	. 
	rrca			;1587	0f 	. 
	ld e,0deh		;1588	1e de 	. . 
	ld a,01fh		;158a	3e 1f 	> . 
	rst 38h			;158c	ff 	. 
	rst 38h			;158d	ff 	. 
	rst 38h			;158e	ff 	. 
	pop hl			;158f	e1 	. 
	rst 38h			;1590	ff 	. 
	sbc a,a			;1591	9f 	. 
	sbc a,a			;1592	9f 	. 
	rra			;1593	1f 	. 
	rst 38h			;1594	ff 	. 
	rst 38h			;1595	ff 	. 
	ld sp,hl			;1596	f9 	. 
	ld sp,hl			;1597	f9 	. 
	rst 38h			;1598	ff 	. 
	rst 38h			;1599	ff 	. 
	add hl,sp			;159a	39 	9 
	add hl,sp			;159b	39 	9 
	rst 38h			;159c	ff 	. 
	rst 38h			;159d	ff 	. 
	add hl,sp			;159e	39 	9 
	add hl,sp			;159f	39 	9 
	rrca			;15a0	0f 	. 
	inc bc			;15a1	03 	. 
	rst 38h			;15a2	ff 	. 
	rst 38h			;15a3	ff 	. 
	cp 0feh		;15a4	fe fe 	. . 
	rst 38h			;15a6	ff 	. 
	rst 38h			;15a7	ff 	. 
	ld c,07eh		;15a8	0e 7e 	. ~ 
	ld a,a			;15aa	7f 	 
	adc a,a			;15ab	8f 	. 
	cp 0feh		;15ac	fe fe 	. . 
	rst 38h			;15ae	ff 	. 
	rst 38h			;15af	ff 	. 
	cp 0feh		;15b0	fe fe 	. . 
	sbc a,a			;15b2	9f 	. 
	sbc a,a			;15b3	9f 	. 
	cp 0feh		;15b4	fe fe 	. . 
	sbc a,a			;15b6	9f 	. 
	sbc a,a			;15b7	9f 	. 
	rst 38h			;15b8	ff 	. 
	rst 38h			;15b9	ff 	. 
	cp a			;15ba	bf 	. 
	cp a			;15bb	bf 	. 
	ex (sp),hl			;15bc	e3 	. 
	ex (sp),hl			;15bd	e3 	. 
	rst 38h			;15be	ff 	. 
	rst 38h			;15bf	ff 	. 
	jp m,0fafah		;15c0	fa fa fa 	. . . 
	or 00eh		;15c3	f6 0e 	. . 
	ld c,0feh		;15c5	0e fe 	. . 
	adc a,(hl)			;15c7	8e 	. 
	ld bc,0c33dh		;15c8	01 3d c3 	. = . 
	inc bc			;15cb	03 	. 
	ld bc,0c33dh		;15cc	01 3d c3 	. = . 
	inc bc			;15cf	03 	. 
	pop bc			;15d0	c1 	. 
	sbc a,l			;15d1	9d 	. 
	ex (sp),hl			;15d2	e3 	. 
	jp l0195h		;15d3	c3 95 01 	. . . 
	rst 38h			;15d6	ff 	. 
	rst 10h			;15d7	d7 	. 
	ld hl,(0fe02h)		;15d8	2a 02 fe 	* . . 
	jp m,0fcfch		;15db	fa fc fc 	. . . 
	call m,sub_18fch		;15de	fc fc 18 	. . . 
	jr l1602h		;15e1	18 1f 	. . 
	jr l15edh		;15e3	18 08 	. . 
	add hl,bc			;15e5	09 	. 
	ld c,008h		;15e6	0e 08 	. . 
	ex af,af'			;15e8	08 	. 
	add hl,bc			;15e9	09 	. 
	ld c,008h		;15ea	0e 08 	. . 
	inc c			;15ec	0c 	. 
l15edh:
	dec c			;15ed	0d 	. 
	ld c,00ch		;15ee	0e 0c 	. . 
	inc b			;15f0	04 	. 
	inc b			;15f1	04 	. 
	rlca			;15f2	07 	. 
	inc b			;15f3	04 	. 
	ld b,006h		;15f4	06 06 	. . 
	rlca			;15f6	07 	. 
	ld b,003h		;15f7	06 03 	. . 
	inc bc			;15f9	03 	. 
	inc bc			;15fa	03 	. 
	inc bc			;15fb	03 	. 
	ld bc,l0101h		;15fc	01 01 01 	. . . 
	ld bc,0ff3fh		;15ff	01 3f ff 	. ? . 
l1602h:
	ld a,03eh		;1602	3e 3e 	> > 
	ld h,a			;1604	67 	g 
	sbc a,a			;1605	9f 	. 
	rlca			;1606	07 	. 
	rlca			;1607	07 	. 
	ld h,c			;1608	61 	a 
	sbc a,c			;1609	99 	. 
	rlca			;160a	07 	. 
	inc bc			;160b	03 	. 
	ld b,b			;160c	40 	@ 
	cp b			;160d	b8 	. 
	rlca			;160e	07 	. 
	inc bc			;160f	03 	. 
	nop			;1610	00 	. 
	ret m			;1611	f8 	. 
	rlca			;1612	07 	. 
	ld bc,0f800h		;1613	01 00 f8 	. . . 
	rlca			;1616	07 	. 
	ld bc,l3000h		;1617	01 00 30 	. . 0 
	rst 8			;161a	cf 	. 
	inc bc			;161b	03 	. 
	add a,c			;161c	81 	. 
	add a,b			;161d	80 	. 
	rst 38h			;161e	ff 	. 
	add a,a			;161f	87 	. 
	rst 38h			;1620	ff 	. 
	rst 38h			;1621	ff 	. 
	ld (hl),e			;1622	73 	s 
	ld (hl),e			;1623	73 	s 
	rst 38h			;1624	ff 	. 
	rst 38h			;1625	ff 	. 
	ex (sp),hl			;1626	e3 	. 
	ex (sp),hl			;1627	e3 	. 
	rst 38h			;1628	ff 	. 
	rst 38h			;1629	ff 	. 
	rst 20h			;162a	e7 	. 
	rst 20h			;162b	e7 	. 
	rst 38h			;162c	ff 	. 
	rst 38h			;162d	ff 	. 
	rst 0			;162e	c7 	. 
	rst 0			;162f	c7 	. 
	rst 38h			;1630	ff 	. 
	cp 0efh		;1631	fe ef 	. . 
	rst 28h			;1633	ef 	. 
	rst 38h			;1634	ff 	. 
	ld a,(hl)			;1635	7e 	~ 
	rst 38h			;1636	ff 	. 
	rst 38h			;1637	ff 	. 
	cp 070h		;1638	fe 70 	. p 
	rst 38h			;163a	ff 	. 
	ei			;163b	fb 	. 
	rst 38h			;163c	ff 	. 
	ret po			;163d	e0 	. 
	rst 38h			;163e	ff 	. 
	pop af			;163f	f1 	. 
	ret nz			;1640	c0 	. 
	ret nz			;1641	c0 	. 
	rst 38h			;1642	ff 	. 
	rst 20h			;1643	e7 	. 
	add a,b			;1644	80 	. 
	adc a,(hl)			;1645	8e 	. 
	pop af			;1646	f1 	. 
	ret nz			;1647	c0 	. 
	inc c			;1648	0c 	. 
	inc de			;1649	13 	. 
	ret po			;164a	e0 	. 
	ret nz			;164b	c0 	. 
	inc b			;164c	04 	. 
	dec de			;164d	1b 	. 
	ret po			;164e	e0 	. 
	add a,b			;164f	80 	. 
	nop			;1650	00 	. 
	ccf			;1651	3f 	? 
	ret nz			;1652	c0 	. 
	add a,b			;1653	80 	. 
	nop			;1654	00 	. 
	ld a,0c1h		;1655	3e c1 	> . 
	add a,b			;1657	80 	. 
	nop			;1658	00 	. 
	ld e,0e1h		;1659	1e e1 	. . 
	ret nz			;165b	c0 	. 
	ld bc,0ff01h		;165c	01 01 ff 	. . . 
	pop hl			;165f	e1 	. 
	ld a,b			;1660	78 	x 
	ld c,b			;1661	48 	H 
	ret m			;1662	f8 	. 
	ret z			;1663	c8 	. 
	ld a,b			;1664	78 	x 
	ld c,b			;1665	48 	H 
	ret m			;1666	f8 	. 
	ld c,b			;1667	48 	H 
	ld a,h			;1668	7c 	| 
	ld b,h			;1669	44 	D 
	call m,07c64h		;166a	fc 64 7c 	. d | 
	ld b,h			;166d	44 	D 
	call m,07e64h		;166e	fc 64 7e 	. d ~ 
	ld b,d			;1671	42 	B 
	cp 072h		;1672	fe 72 	. r 
	cp 082h		;1674	fe 82 	. . 
	cp 0fah		;1676	fe fa 	. . 
	cp 082h		;1678	fe 82 	. . 
	cp 0dah		;167a	fe da 	. . 
	call m,0fc04h		;167c	fc 04 fc 	. . . 
	call c,l0000h		;167f	dc 00 00 	. . . 
	nop			;1682	00 	. 
	nop			;1683	00 	. 
	nop			;1684	00 	. 
	nop			;1685	00 	. 
	nop			;1686	00 	. 
	nop			;1687	00 	. 
	ld bc,l0101h		;1688	01 01 01 	. . . 
	ld bc,l0706h		;168b	01 06 07 	. . . 
	ld b,006h		;168e	06 06 	. . 
	ex af,af'			;1690	08 	. 
	dec bc			;1691	0b 	. 
	inc c			;1692	0c 	. 
	inc c			;1693	0c 	. 
	dec e			;1694	1d 	. 
	djnz l16a9h		;1695	10 12 	. . 
	ld (de),a			;1697	12 	. 
	ccf			;1698	3f 	? 
	inc h			;1699	24 	$ 
	inc h			;169a	24 	$ 
	inc h			;169b	24 	$ 
	ccf			;169c	3f 	? 
	ccf			;169d	3f 	? 
	ccf			;169e	3f 	? 
	ccf			;169f	3f 	? 
	dec e			;16a0	1d 	. 
	dec d			;16a1	15 	. 
	dec d			;16a2	15 	. 
	ex (sp),hl			;16a3	e3 	. 
	call m,0fcfch		;16a4	fc fc fc 	. . . 
	rst 38h			;16a7	ff 	. 
	rst 0			;16a8	c7 	. 
l16a9h:
	rst 0			;16a9	c7 	. 
	rst 38h			;16aa	ff 	. 
	rst 0			;16ab	c7 	. 
	nop			;16ac	00 	. 
	ret p			;16ad	f0 	. 
	rrca			;16ae	0f 	. 
	ld bc,0f800h		;16af	01 00 f8 	. . . 
	rlca			;16b2	07 	. 
	nop			;16b3	00 	. 
	add a,b			;16b4	80 	. 
	jr nc,l1706h		;16b5	30 4f 	0 O 
	ld b,b			;16b7	40 	@ 
	ret nz			;16b8	c0 	. 
	ld b,b			;16b9	40 	@ 
	ld a,a			;16ba	7f 	 
	ld a,a			;16bb	7f 	 
	rst 38h			;16bc	ff 	. 
	rst 38h			;16bd	ff 	. 
	rst 38h			;16be	ff 	. 
	rst 38h			;16bf	ff 	. 
	rst 38h			;16c0	ff 	. 
	jp po,0e3ffh		;16c1	e2 ff e3 	. . . 
	inc a			;16c4	3c 	< 
l16c5h:
	inc a			;16c5	3c 	< 
	inc a			;16c6	3c 	< 
	rst 38h			;16c7	ff 	. 
	jp 0c3c3h		;16c8	c3 c3 c3 	. . . 
	jp l2667h		;16cb	c3 67 26 	. g & 
	rst 20h			;16ce	e7 	. 
	rst 20h			;16cf	e7 	. 
	ld h,004h		;16d0	26 04 	& . 
	rst 20h			;16d2	e7 	. 
	ld h,a			;16d3	67 	g 
	ld a,018h		;16d4	3e 18 	> . 
	rst 38h			;16d6	ff 	. 
	ld a,a			;16d7	7f 	 
	ld a,h			;16d8	7c 	| 
	jr $+1		;16d9	18 ff 	. . 
	rst 38h			;16db	ff 	. 
	rst 20h			;16dc	e7 	. 
	rst 20h			;16dd	e7 	. 
	rst 20h			;16de	e7 	. 
	rst 20h			;16df	e7 	. 
	cp l			;16e0	bd 	. 
	dec (hl)			;16e1	35 	5 
l16e2h:
	push af			;16e2	f5 	. 
	jp l1f1fh		;16e3	c3 1f 1f 	. . . 
	rra			;16e6	1f 	. 
	rst 38h			;16e7	ff 	. 
	ex (sp),hl			;16e8	e3 	. 
	ex (sp),hl			;16e9	e3 	. 
	rst 38h			;16ea	ff 	. 
	rst 38h			;16eb	ff 	. 
	add a,b			;16ec	80 	. 
	inc bc			;16ed	03 	. 
	call m,sub_00f0h		;16ee	fc f0 00 	. . . 
	rlca			;16f1	07 	. 
	ret m			;16f2	f8 	. 
l16f3h:
	add a,b			;16f3	80 	. 
	ld bc,0fe00h		;16f4	01 00 fe 	. . . 
	ld (bc),a			;16f7	02 	. 
	inc bc			;16f8	03 	. 
	ld (bc),a			;16f9	02 	. 
	cp 0feh		;16fa	fe fe 	. . 
	rst 38h			;16fc	ff 	. 
	rst 38h			;16fd	ff 	. 
	rst 38h			;16fe	ff 	. 
	rst 38h			;16ff	ff 	. 
	ret p			;1700	f0 	. 
	jr nc,l16f3h		;1701	30 f0 	0 . 
	jr nc,l16c5h		;1703	30 c0 	0 . 
	ret nz			;1705	c0 	. 
l1706h:
	ret nz			;1706	c0 	. 
	ret nz			;1707	c0 	. 
	add a,b			;1708	80 	. 
	add a,b			;1709	80 	. 
	add a,b			;170a	80 	. 
	add a,b			;170b	80 	. 
	ld h,b			;170c	60 	` 
	ret po			;170d	e0 	. 
	ld h,b			;170e	60 	` 
	ld h,b			;170f	60 	` 
	djnz l16e2h		;1710	10 d0 	. . 
	jr nc,l1744h		;1712	30 30 	0 0 
	or b			;1714	b0 	. 
	nop			;1715	00 	. 
	ld b,b			;1716	40 	@ 
	ld b,b			;1717	40 	@ 
	ret m			;1718	f8 	. 
l1719h:
	jr nz,l173bh		;1719	20 20 	    
	jr nz,l1719h		;171b	20 fc 	  . 
	call m,0fcfch		;171d	fc fc fc 	. . . 
	rlca			;1720	07 	. 
	inc b			;1721	04 	. 
	rlca			;1722	07 	. 
	ld b,00fh		;1723	06 0f 	. . 
	ld a,(bc)			;1725	0a 	. 
	dec bc			;1726	0b 	. 
	ld c,01bh		;1727	0e 1b 	. . 
	ld d,013h		;1729	16 13 	. . 
	dec de			;172b	1b 	. 
	inc sp			;172c	33 	3 
	cpl			;172d	2f 	/ 
	inc hl			;172e	23 	# 
	inc sp			;172f	33 	3 
	ld sp,l2d23h		;1730	31 23 2d 	1 # - 
	dec a			;1733	3d 	= 
	jr c,l1759h		;1734	38 23 	8 # 
	inc h			;1736	24 	$ 
	inc a			;1737	3c 	< 
	inc e			;1738	1c 	. 
	rla			;1739	17 	. 
l173ah:
	inc d			;173a	14 	. 
l173bh:
	inc e			;173b	1c 	. 
	inc c			;173c	0c 	. 
	rrca			;173d	0f 	. 
l173eh:
	inc c			;173e	0c 	. 
	inc c			;173f	0c 	. 
	ret m			;1740	f8 	. 
	ld h,b			;1741	60 	` 
	ret c			;1742	d8 	. 
	ld h,b			;1743	60 	` 
l1744h:
	rst 38h			;1744	ff 	. 
	ld h,b			;1745	60 	` 
	rst 18h			;1746	df 	. 
	ld h,b			;1747	60 	` 
	ei			;1748	fb 	. 
l1749h:
	jr nc,l173ah		;1749	30 ef 	0 . 
	jr nc,l1749h		;174b	30 fc 	0 . 
	jr nc,l173eh		;174d	30 ef 	0 . 
	or b			;174f	b0 	. 
	cp 090h		;1750	fe 90 	. . 
	rst 30h			;1752	f7 	. 
	sub b			;1753	90 	. 
	rst 38h			;1754	ff 	. 
	adc a,b			;1755	88 	. 
l1756h:
	ei			;1756	fb 	. 
	ret z			;1757	c8 	. 
	ld a,a			;1758	7f 	 
l1759h:
	ret nz			;1759	c0 	. 
	ld a,b			;175a	78 	x 
	ld a,b			;175b	78 	x 
	ld a,a			;175c	7f 	 
	ret p			;175d	f0 	. 
	ld (hl),b			;175e	70 	p 
	ld (hl),b			;175f	70 	p 
	rrca			;1760	0f 	. 
	ld bc,l010eh		;1761	01 0e 01 	. . . 
	rst 30h			;1764	f7 	. 
	inc bc			;1765	03 	. 
	defb 0fdh,003h,0efh	;illegal sequence		;1766	fd 03 ef 	. . . 
	ld (bc),a			;1769	02 	. 
	ei			;176a	fb 	. 
	ld (bc),a			;176b	02 	. 
	sbc a,a			;176c	9f 	. 
	inc b			;176d	04 	. 
	rst 30h			;176e	f7 	. 
	inc b			;176f	04 	. 
	ccf			;1770	3f 	? 
	ex af,af'			;1771	08 	. 
	rst 28h			;1772	ef 	. 
	ex af,af'			;1773	08 	. 
	rst 38h			;1774	ff 	. 
	djnz l1756h		;1775	10 df 	. . 
	inc de			;1777	13 	. 
	rst 38h			;1778	ff 	. 
	and e			;1779	a3 	. 
	ccf			;177a	3f 	? 
	xor a			;177b	af 	. 
	cp 0eeh		;177c	fe ee 	. . 
	rra			;177e	1f 	. 
	cp 0fbh		;177f	fe fb 	. . 
	ei			;1781	fb 	. 
	ei			;1782	fb 	. 
	ei			;1783	fb 	. 
	call m,0ff0ch		;1784	fc 0c ff 	. . . 
	rst 38h			;1787	ff 	. 
	ret m			;1788	f8 	. 
	jr $+1		;1789	18 ff 	. . 
	jr c,$-14		;178b	38 f0 	8 . 
	ccf			;178d	3f 	? 
	ret p			;178e	f0 	. 
	ret p			;178f	f0 	. 
	pop hl			;1790	e1 	. 
	ld a,(hl)			;1791	7e 	~ 
	ret po			;1792	e0 	. 
	ret po			;1793	e0 	. 
	ret nz			;1794	c0 	. 
	rst 38h			;1795	ff 	. 
	ret nz			;1796	c0 	. 
	ret nz			;1797	c0 	. 
	add a,b			;1798	80 	. 
	rst 38h			;1799	ff 	. 
	add a,b			;179a	80 	. 
	add a,b			;179b	80 	. 
	nop			;179c	00 	. 
	rst 20h			;179d	e7 	. 
	jr l17a0h		;179e	18 00 	. . 
l17a0h:
	add a,b			;17a0	80 	. 
	add a,b			;17a1	80 	. 
	add a,b			;17a2	80 	. 
	add a,b			;17a3	80 	. 
	ld h,b			;17a4	60 	` 
	ld h,b			;17a5	60 	` 
	ret po			;17a6	e0 	. 
	ret po			;17a7	e0 	. 
	djnz $+18		;17a8	10 10 	. . 
	ret p			;17aa	f0 	. 
	ld (hl),b			;17ab	70 	p 
	ex af,af'			;17ac	08 	. 
	adc a,b			;17ad	88 	. 
	ld a,b			;17ae	78 	x 
	jr $-122		;17af	18 84 	. . 
	ld b,h			;17b1	44 	D 
	inc a			;17b2	3c 	< 
	inc c			;17b3	0c 	. 
	call nz,sub_1c24h		;17b4	c4 24 1c 	. $ . 
	inc c			;17b7	0c 	. 
	call nz,sub_1c24h		;17b8	c4 24 1c 	. $ . 
	inc c			;17bb	0c 	. 
	inc b			;17bc	04 	. 
	call po,l0c1ch		;17bd	e4 1c 0c 	. . . 
	dec b			;17c0	05 	. 
	ld b,004h		;17c1	06 04 	. . 
	inc b			;17c3	04 	. 
	ex af,af'			;17c4	08 	. 
	dec bc			;17c5	0b 	. 
	inc c			;17c6	0c 	. 
	ex af,af'			;17c7	08 	. 
	ex af,af'			;17c8	08 	. 
	dec bc			;17c9	0b 	. 
	inc c			;17ca	0c 	. 
	ex af,af'			;17cb	08 	. 
	ld a,(bc)			;17cc	0a 	. 
	dec bc			;17cd	0b 	. 
	ld c,00ah		;17ce	0e 0a 	. . 
	ex af,af'			;17d0	08 	. 
	add hl,bc			;17d1	09 	. 
	ld c,008h		;17d2	0e 08 	. . 
	ex af,af'			;17d4	08 	. 
	ex af,af'			;17d5	08 	. 
	rrca			;17d6	0f 	. 
	inc c			;17d7	0c 	. 
	inc b			;17d8	04 	. 
	inc b			;17d9	04 	. 
	rlca			;17da	07 	. 
	rlca			;17db	07 	. 
	rlca			;17dc	07 	. 
	rlca			;17dd	07 	. 
l17deh:
	rlca			;17de	07 	. 
	rlca			;17df	07 	. 
	cp a			;17e0	bf 	. 
	ld h,l			;17e1	65 	e 
	dec h			;17e2	25 	% 
	dec h			;17e3	25 	% 
	sbc a,a			;17e4	9f 	. 
	ld l,l			;17e5	6d 	m 
	dec c			;17e6	0d 	. 
	dec c			;17e7	0d 	. 
	rra			;17e8	1f 	. 
	defb 0edh;next byte illegal after ed		;17e9	ed 	. 
	dec c			;17ea	0d 	. 
	dec c			;17eb	0d 	. 
	rra			;17ec	1f 	. 
	jp (hl)			;17ed	e9 	. 
	ex af,af'			;17ee	08 	. 
	add hl,bc			;17ef	09 	. 
	rra			;17f0	1f 	. 
	pop bc			;17f1	c1 	. 
	jr nz,l17f5h		;17f2	20 01 	  . 
	rrca			;17f4	0f 	. 
l17f5h:
	nop			;17f5	00 	. 
	ret p			;17f6	f0 	. 
	djnz l1818h		;17f7	10 1f 	. . 
	ld a,(de)			;17f9	1a 	. 
	ret m			;17fa	f8 	. 
	jp m,0ffe7h		;17fb	fa e7 ff 	. . . 
	rst 20h			;17fe	e7 	. 
	rst 20h			;17ff	e7 	. 
	call m,08cbfh		;1800	fc bf 8c 	. . . 
	cp h			;1803	bc 	. 
	defb 0fdh,0feh,0cch	;illegal sequence		;1804	fd fe cc 	. . . 
	call m,0fffch		;1807	fc fc ff 	. . . 
	call z,0fcfch		;180a	cc fc fc 	. . . 
	rst 38h			;180d	ff 	. 
	adc a,h			;180e	8c 	. 
	call m,0fffch		;180f	fc fc ff 	. . . 
	inc c			;1812	0c 	. 
	call m,0f8f8h		;1813	fc f8 f8 	. . . 
	ccf			;1816	3f 	? 
	ret m			;1817	f8 	. 
l1818h:
	ret po			;1818	e0 	. 
	ret po			;1819	e0 	. 
	rst 38h			;181a	ff 	. 
	rst 38h			;181b	ff 	. 
	sbc a,a			;181c	9f 	. 
	rst 38h			;181d	ff 	. 
	sbc a,a			;181e	9f 	. 
	sbc a,a			;181f	9f 	. 
	jr nc,$-27		;1820	30 e3 	0 . 
	inc a			;1822	3c 	< 
l1823h:
	jr c,l1855h		;1823	38 30 	8 0 
	ex (sp),hl			;1825	e3 	. 
	inc a			;1826	3c 	< 
	jr c,l1841h		;1827	38 18 	8 . 
	pop de			;1829	d1 	. 
	ld a,01ch		;182a	3e 1c 	> . 
	jr $-109		;182c	18 91 	. . 
	ld a,(hl)			;182e	7e 	~ 
	inc a			;182f	3c 	< 
	sbc a,b			;1830	98 	. 
	sub c			;1831	91 	. 
	cp 0bch		;1832	fe bc 	. . 
	inc e			;1834	1c 	. 
	dec e			;1835	1d 	. 
	cp 07ch		;1836	fe 7c 	. | 
	scf			;1838	37 	7 
	scf			;1839	37 	7 
	rst 30h			;183a	f7 	. 
	ei			;183b	fb 	. 
sub_183ch:
	rst 30h			;183c	f7 	. 
	push af			;183d	f5 	. 
	push af			;183e	f5 	. 
	ret m			;183f	f8 	. 
	add a,h			;1840	84 	. 
l1841h:
	ld h,h			;1841	64 	d 
	inc e			;1842	1c 	. 
	inc c			;1843	0c 	. 
	adc a,b			;1844	88 	. 
	ld c,b			;1845	48 	H 
	jr c,l1860h		;1846	38 18 	8 . 
	ex af,af'			;1848	08 	. 
	ret z			;1849	c8 	. 
	jr c,l1864h		;184a	38 18 	8 . 
	djnz l17deh		;184c	10 90 	. . 
	ld (hl),b			;184e	70 	p 
	jr nc,l1861h		;184f	30 10 	0 . 
	sub b			;1851	90 	. 
	ld (hl),b			;1852	70 	p 
	jr nc,l1875h		;1853	30 20 	0   
l1855h:
	jr nz,$-30		;1855	20 e0 	  . 
	ld h,b			;1857	60 	` 
	ret nz			;1858	c0 	. 
	ret nz			;1859	c0 	. 
	ret nz			;185a	c0 	. 
	ret nz			;185b	c0 	. 
	ld h,b			;185c	60 	` 
	ld h,b			;185d	60 	` 
	ld h,b			;185e	60 	` 
	ret po			;185f	e0 	. 
l1860h:
	ld (bc),a			;1860	02 	. 
l1861h:
	ld (bc),a			;1861	02 	. 
	inc bc			;1862	03 	. 
	inc bc			;1863	03 	. 
l1864h:
	rlca			;1864	07 	. 
	rlca			;1865	07 	. 
	rlca			;1866	07 	. 
	rlca			;1867	07 	. 
	ex af,af'			;1868	08 	. 
	rrca			;1869	0f 	. 
	rrca			;186a	0f 	. 
	ex af,af'			;186b	08 	. 
	rlca			;186c	07 	. 
	rlca			;186d	07 	. 
	rlca			;186e	07 	. 
	rlca			;186f	07 	. 
	rrca			;1870	0f 	. 
	rrca			;1871	0f 	. 
	inc c			;1872	0c 	. 
	inc c			;1873	0c 	. 
	dec bc			;1874	0b 	. 
l1875h:
	dec bc			;1875	0b 	. 
	ld c,00ah		;1876	0e 0a 	. . 
	ld de,l1f11h		;1878	11 11 1f 	. . . 
	ld de,l1010h		;187b	11 10 10 	. . . 
	rra			;187e	1f 	. 
	djnz l1881h		;187f	10 00 	. . 
l1881h:
	ccf			;1881	3f 	? 
	ret nz			;1882	c0 	. 
	nop			;1883	00 	. 
	add a,e			;1884	83 	. 
	sbc a,h			;1885	9c 	. 
	ret po			;1886	e0 	. 
	add a,b			;1887	80 	. 
	ld a,b			;1888	78 	x 
	rst 38h			;1889	ff 	. 
	ret m			;188a	f8 	. 
	ld a,b			;188b	78 	x 
	adc a,a			;188c	8f 	. 
	adc a,a			;188d	8f 	. 
	adc a,a			;188e	8f 	. 
	rst 30h			;188f	f7 	. 
	rst 38h			;1890	ff 	. 
	rst 38h			;1891	ff 	. 
	rst 38h			;1892	ff 	. 
	ret m			;1893	f8 	. 
	rst 38h			;1894	ff 	. 
	rst 38h			;1895	ff 	. 
	rst 20h			;1896	e7 	. 
	rst 20h			;1897	e7 	. 
	rst 38h			;1898	ff 	. 
	rst 38h			;1899	ff 	. 
	rst 0			;189a	c7 	. 
	rst 0			;189b	c7 	. 
	rst 38h			;189c	ff 	. 
	rst 38h			;189d	ff 	. 
	adc a,0ceh		;189e	ce ce 	. . 
	nop			;18a0	00 	. 
	ret p			;18a1	f0 	. 
	rrca			;18a2	0f 	. 
	ld bc,0e101h		;18a3	01 01 e1 	. . . 
	rra			;18a6	1f 	. 
	rrca			;18a7	0f 	. 
	ld e,0deh		;18a8	1e de 	. . 
	ld a,01fh		;18aa	3e 1f 	> . 
	rst 38h			;18ac	ff 	. 
	rst 38h			;18ad	ff 	. 
	rst 38h			;18ae	ff 	. 
	pop hl			;18af	e1 	. 
	rst 38h			;18b0	ff 	. 
	sbc a,a			;18b1	9f 	. 
	sbc a,a			;18b2	9f 	. 
	rra			;18b3	1f 	. 
	rst 38h			;18b4	ff 	. 
	rst 38h			;18b5	ff 	. 
	ld sp,hl			;18b6	f9 	. 
	ld sp,hl			;18b7	f9 	. 
	rst 38h			;18b8	ff 	. 
	rst 38h			;18b9	ff 	. 
	add hl,sp			;18ba	39 	9 
	add hl,sp			;18bb	39 	9 
	rst 38h			;18bc	ff 	. 
	rst 38h			;18bd	ff 	. 
	add hl,sp			;18be	39 	9 
	add hl,sp			;18bf	39 	9 
	rst 8			;18c0	cf 	. 
	call 0fcfdh		;18c1	cd fd fc 	. . . 
	add a,e			;18c4	83 	. 
	add a,e			;18c5	83 	. 
	rst 38h			;18c6	ff 	. 
	ex (sp),hl			;18c7	e3 	. 
	add a,b			;18c8	80 	. 
	adc a,a			;18c9	8f 	. 
	ret p			;18ca	f0 	. 
	ret nz			;18cb	c0 	. 
	add a,b			;18cc	80 	. 
	adc a,a			;18cd	8f 	. 
	ret p			;18ce	f0 	. 
	ret nz			;18cf	c0 	. 
	or b			;18d0	b0 	. 
	and a			;18d1	a7 	. 
	ret m			;18d2	f8 	. 
	ret p			;18d3	f0 	. 
	and l			;18d4	a5 	. 
	add a,b			;18d5	80 	. 
	rst 38h			;18d6	ff 	. 
	push af			;18d7	f5 	. 
sub_18d8h:
	adc a,d			;18d8	8a 	. 
	add a,b			;18d9	80 	. 
	rst 38h			;18da	ff 	. 
	cp (hl)			;18db	be 	. 
	cp a			;18dc	bf 	. 
	cp a			;18dd	bf 	. 
	rst 38h			;18de	ff 	. 
	cp a			;18df	bf 	. 
sub_18e0h:
	ld h,b			;18e0	60 	` 
	ld h,b			;18e1	60 	` 
	ld h,b			;18e2	60 	` 
	ret po			;18e3	e0 	. 
	ret p			;18e4	f0 	. 
	ret p			;18e5	f0 	. 
	ret p			;18e6	f0 	. 
	ret p			;18e7	f0 	. 
	ld (hl),b			;18e8	70 	p 
	ld d,b			;18e9	50 	P 
	ret p			;18ea	f0 	. 
	ret p			;18eb	f0 	. 
	ld (hl),b			;18ec	70 	p 
	ld d,b			;18ed	50 	P 
	ret p			;18ee	f0 	. 
	ret p			;18ef	f0 	. 
	ld (hl),b			;18f0	70 	p 
	ld d,b			;18f1	50 	P 
	ret p			;18f2	f0 	. 
	ret p			;18f3	f0 	. 
	ld (hl),b			;18f4	70 	p 
	ld d,b			;18f5	50 	P 
	ret p			;18f6	f0 	. 
	ret p			;18f7	f0 	. 
sub_18f8h:
	ret m			;18f8	f8 	. 
	adc a,b			;18f9	88 	. 
	ret m			;18fa	f8 	. 
	ret pe			;18fb	e8 	. 
sub_18fch:
	ret m			;18fc	f8 	. 
	ret z			;18fd	c8 	. 
sub_18feh:
	ret m			;18fe	f8 	. 
	ret z			;18ff	c8 	. 
	djnz l1913h		;1900	10 11 	. . 
	ld e,010h		;1902	1e 10 	. . 
	ld de,l1c12h		;1904	11 12 1c 	. . . 
	djnz l1912h		;1907	10 09 	. . 
	ld a,(bc)			;1909	0a 	. 
	inc c			;190a	0c 	. 
	ex af,af'			;190b	08 	. 
	add hl,bc			;190c	09 	. 
	ld a,(bc)			;190d	0a 	. 
	inc c			;190e	0c 	. 
	ex af,af'			;190f	08 	. 
	ex af,af'			;1910	08 	. 
l1911h:
	dec bc			;1911	0b 	. 
l1912h:
	inc c			;1912	0c 	. 
l1913h:
	ex af,af'			;1913	08 	. 
	ex af,af'			;1914	08 	. 
	dec bc			;1915	0b 	. 
	inc c			;1916	0c 	. 
	ex af,af'			;1917	08 	. 
	inc b			;1918	04 	. 
	inc b			;1919	04 	. 
	rlca			;191a	07 	. 
	inc b			;191b	04 	. 
	inc b			;191c	04 	. 
l191dh:
	inc b			;191d	04 	. 
	rlca			;191e	07 	. 
l191fh:
	inc b			;191f	04 	. 
	ld a,a			;1920	7f 	 
	rst 38h			;1921	ff 	. 
	ld a,(hl)			;1922	7e 	~ 
	ld a,(hl)			;1923	7e 	~ 
	sbc a,a			;1924	9f 	. 
	ld a,a			;1925	7f 	 
	rra			;1926	1f 	. 
	rra			;1927	1f 	. 
	add a,a			;1928	87 	. 
	ld h,e			;1929	63 	c 
	rra			;192a	1f 	. 
	rrca			;192b	0f 	. 
	inc bc			;192c	03 	. 
	pop hl			;192d	e1 	. 
	rra			;192e	1f 	. 
	rlca			;192f	07 	. 
	inc bc			;1930	03 	. 
	pop hl			;1931	e1 	. 
	rra			;1932	1f 	. 
	rlca			;1933	07 	. 
	inc bc			;1934	03 	. 
	pop hl			;1935	e1 	. 
	rra			;1936	1f 	. 
	rrca			;1937	0f 	. 
	rlca			;1938	07 	. 
	jp l0f3fh		;1939	c3 3f 0f 	. ? . 
	rlca			;193c	07 	. 
	inc bc			;193d	03 	. 
	rst 38h			;193e	ff 	. 
	rra			;193f	1f 	. 
	rst 38h			;1940	ff 	. 
	rst 38h			;1941	ff 	. 
	ld (hl),e			;1942	73 	s 
	ld (hl),e			;1943	73 	s 
	rst 38h			;1944	ff 	. 
	rst 38h			;1945	ff 	. 
	ex (sp),hl			;1946	e3 	. 
	ex (sp),hl			;1947	e3 	. 
	rst 38h			;1948	ff 	. 
	rst 38h			;1949	ff 	. 
	rst 20h			;194a	e7 	. 
	rst 20h			;194b	e7 	. 
	rst 38h			;194c	ff 	. 
	rst 38h			;194d	ff 	. 
	rst 0			;194e	c7 	. 
	rst 0			;194f	c7 	. 
	rst 38h			;1950	ff 	. 
	rst 38h			;1951	ff 	. 
	rst 28h			;1952	ef 	. 
	rst 28h			;1953	ef 	. 
	rst 38h			;1954	ff 	. 
	ld a,l			;1955	7d 	} 
	rst 38h			;1956	ff 	. 
	defb 0fdh,0ffh,030h	;illegal sequence		;1957	fd ff 30 	. . 0 
	rst 38h			;195a	ff 	. 
	ret p			;195b	f0 	. 
	rst 38h			;195c	ff 	. 
	nop			;195d	00 	. 
	rst 38h			;195e	ff 	. 
	add a,b			;195f	80 	. 
	rst 38h			;1960	ff 	. 
	rst 38h			;1961	ff 	. 
	rst 38h			;1962	ff 	. 
	rst 38h			;1963	ff 	. 
	ret p			;1964	f0 	. 
	pop af			;1965	f1 	. 
	cp 0f0h		;1966	fe f0 	. . 
	ret po			;1968	e0 	. 
	rst 20h			;1969	e7 	. 
	ret m			;196a	f8 	. 
	ret p			;196b	f0 	. 
	jp 0f0cch		;196c	c3 cc f0 	. . . 
	ret po			;196f	e0 	. 
	pop bc			;1970	c1 	. 
	adc a,(hl)			;1971	8e 	. 
	ret p			;1972	f0 	. 
	ret po			;1973	e0 	. 
	add a,b			;1974	80 	. 
	rrca			;1975	0f 	. 
	ret p			;1976	f0 	. 
	ret po			;1977	e0 	. 
	ret nz			;1978	c0 	. 
	rlca			;1979	07 	. 
	ret m			;197a	f8 	. 
	ret p			;197b	f0 	. 
	ret po			;197c	e0 	. 
	nop			;197d	00 	. 
	rst 38h			;197e	ff 	. 
	ld a,b			;197f	78 	x 
	inc a			;1980	3c 	< 
	inc h			;1981	24 	$ 
	call m,sub_1ef4h		;1982	fc f4 1e 	. . . 
	sub d			;1985	92 	. 
	ld a,(hl)			;1986	7e 	~ 
	ld a,(0921eh)		;1987	3a 1e 92 	: . . 
	ld a,(hl)			;198a	7e 	~ 
	ld a,(0911fh)		;198b	3a 1f 91 	: . . 
	ld a,a			;198e	7f 	 
	add hl,sp			;198f	39 	9 
	rra			;1990	1f 	. 
	sub c			;1991	91 	. 
	ld a,a			;1992	7f 	 
	add hl,sp			;1993	39 	9 
	ccf			;1994	3f 	? 
	ld sp,079ffh		;1995	31 ff 79 	1 . y 
	ld a,022h		;1998	3e 22 	> " 
	cp 07ah		;199a	fe 7a 	. z 
	ld a,h			;199c	7c 	| 
	ld b,h			;199d	44 	D 
	call m,sub_025ch		;199e	fc 5c 02 	. \ . 
	ld (bc),a			;19a1	02 	. 
	ld (bc),a			;19a2	02 	. 
	inc bc			;19a3	03 	. 
	nop			;19a4	00 	. 
	nop			;19a5	00 	. 
	nop			;19a6	00 	. 
	nop			;19a7	00 	. 
	rlca			;19a8	07 	. 
	rlca			;19a9	07 	. 
	rlca			;19aa	07 	. 
	rlca			;19ab	07 	. 
	jr l19cdh		;19ac	18 1f 	. . 
	jr l19c8h		;19ae	18 18 	. . 
	jr nz,l19e1h		;19b0	20 2f 	  / 
	jr nc,l19e4h		;19b2	30 30 	0 0 
	halt			;19b4	76 	v 
	ld b,b			;19b5	40 	@ 
	ld c,c			;19b6	49 	I 
	ld c,c			;19b7	49 	I 
	rst 38h			;19b8	ff 	. 
	sub c			;19b9	91 	. 
	sub c			;19ba	91 	. 
	sub c			;19bb	91 	. 
	rst 38h			;19bc	ff 	. 
	rst 38h			;19bd	ff 	. 
	rst 38h			;19be	ff 	. 
	rst 38h			;19bf	ff 	. 
	ld (hl),a			;19c0	77 	w 
	ld d,e			;19c1	53 	S 
	ld e,a			;19c2	5f 	_ 
	adc a,a			;19c3	8f 	. 
	pop af			;19c4	f1 	. 
	pop af			;19c5	f1 	. 
	pop af			;19c6	f1 	. 
	rst 38h			;19c7	ff 	. 
l19c8h:
	ld e,01eh		;19c8	1e 1e 	. . 
	cp 01eh		;19ca	fe 1e 	. . 
	inc bc			;19cc	03 	. 
l19cdh:
	pop bc			;19cd	c1 	. 
	ccf			;19ce	3f 	? 
	rrca			;19cf	0f 	. 
	ld bc,l1fe0h		;19d0	01 e0 1f 	. . . 
	inc bc			;19d3	03 	. 
	nop			;19d4	00 	. 
	ret nz			;19d5	c0 	. 
	ccf			;19d6	3f 	? 
	inc bc			;19d7	03 	. 
	ld bc,0ff00h		;19d8	01 00 ff 	. . . 
	rlca			;19db	07 	. 
	rst 38h			;19dc	ff 	. 
	rst 38h			;19dd	ff 	. 
	rst 38h			;19de	ff 	. 
	rst 38h			;19df	ff 	. 
	rst 38h			;19e0	ff 	. 
l19e1h:
	pop hl			;19e1	e1 	. 
	rst 38h			;19e2	ff 	. 
	pop hl			;19e3	e1 	. 
l19e4h:
	rra			;19e4	1f 	. 
	rra			;19e5	1f 	. 
	rra			;19e6	1f 	. 
	rra			;19e7	1f 	. 
	nop			;19e8	00 	. 
	nop			;19e9	00 	. 
	nop			;19ea	00 	. 
	nop			;19eb	00 	. 
	nop			;19ec	00 	. 
	nop			;19ed	00 	. 
	nop			;19ee	00 	. 
	nop			;19ef	00 	. 
	add a,b			;19f0	80 	. 
	add a,b			;19f1	80 	. 
	add a,b			;19f2	80 	. 
	add a,b			;19f3	80 	. 
	pop bc			;19f4	c1 	. 
	ld b,c			;19f5	41 	A 
	pop bc			;19f6	c1 	. 
	pop bc			;19f7	c1 	. 
	pop bc			;19f8	c1 	. 
	ld b,c			;19f9	41 	A 
	pop bc			;19fa	c1 	. 
	pop bc			;19fb	c1 	. 
	add a,b			;19fc	80 	. 
	add a,b			;19fd	80 	. 
	add a,b			;19fe	80 	. 
	add a,b			;19ff	80 	. 
	ei			;1a00	fb 	. 
	jp po,0fcfeh		;1a01	e2 fe fc 	. . . 
	inc hl			;1a04	23 	# 
	inc hl			;1a05	23 	# 
	inc hl			;1a06	23 	# 
	ccf			;1a07	3f 	? 
	ld a,h			;1a08	7c 	| 
	ld a,h			;1a09	7c 	| 
	ld a,a			;1a0a	7f 	 
	ld a,(hl)			;1a0b	7e 	~ 
	ret po			;1a0c	e0 	. 
	add a,c			;1a0d	81 	. 
	cp 0fch		;1a0e	fe fc 	. . 
	ret nz			;1a10	c0 	. 
	add a,e			;1a11	83 	. 
	call m,080e0h		;1a12	fc e0 80 	. . . 
	nop			;1a15	00 	. 
	rst 38h			;1a16	ff 	. 
	ret po			;1a17	e0 	. 
	add a,b			;1a18	80 	. 
	nop			;1a19	00 	. 
	rst 38h			;1a1a	ff 	. 
	rst 38h			;1a1b	ff 	. 
	rst 38h			;1a1c	ff 	. 
	rst 38h			;1a1d	ff 	. 
	rst 38h			;1a1e	ff 	. 
	rst 38h			;1a1f	ff 	. 
	cp b			;1a20	b8 	. 
	sbc a,b			;1a21	98 	. 
	cp b			;1a22	b8 	. 
	ld e,b			;1a23	58 	X 
	ret p			;1a24	f0 	. 
	ret p			;1a25	f0 	. 
	ret p			;1a26	f0 	. 
	ret p			;1a27	f0 	. 
	nop			;1a28	00 	. 
	ld h,b			;1a29	60 	` 
	add a,b			;1a2a	80 	. 
	nop			;1a2b	00 	. 
	nop			;1a2c	00 	. 
	ret m			;1a2d	f8 	. 
	nop			;1a2e	00 	. 
	nop			;1a2f	00 	. 
	nop			;1a30	00 	. 
	ret m			;1a31	f8 	. 
	inc b			;1a32	04 	. 
	inc b			;1a33	04 	. 
	ld (hl),000h		;1a34	36 00 	6 . 
	ret z			;1a36	c8 	. 
	ld c,b			;1a37	48 	H 
	ld a,a			;1a38	7f 	 
	ld b,h			;1a39	44 	D 
	call nz,0fec4h		;1a3a	c4 c4 fe 	. . . 
	cp 0feh		;1a3d	fe fe 	. . 
	cp 0fbh		;1a3f	fe fb 	. . 
	ei			;1a41	fb 	. 
	ei			;1a42	fb 	. 
	ei			;1a43	fb 	. 
	call m,0ff0ch		;1a44	fc 0c ff 	. . . 
	rst 38h			;1a47	ff 	. 
	ret m			;1a48	f8 	. 
	jr $+1		;1a49	18 ff 	. . 
	ld a,0f8h		;1a4b	3e f8 	> . 
	ld sp,0fcfeh		;1a4d	31 fe fc 	1 . . 
	ret m			;1a50	f8 	. 
	ld (hl),c			;1a51	71 	q 
	cp 0fch		;1a52	fe fc 	. . 
	sbc a,b			;1a54	98 	. 
	ret nc			;1a55	d0 	. 
	cp a			;1a56	bf 	. 
	cp h			;1a57	bc 	. 
	inc e			;1a58	1c 	. 
	ret nc			;1a59	d0 	. 
	ccf			;1a5a	3f 	? 
	ld a,01ch		;1a5b	3e 1c 	> . 
	ret c			;1a5d	d8 	. 
	ccf			;1a5e	3f 	? 
	ld a,0e0h		;1a5f	3e e0 	> . 
	ret po			;1a61	e0 	. 
	ret po			;1a62	e0 	. 
	ret po			;1a63	e0 	. 
	djnz l1a76h		;1a64	10 10 	. . 
	ret p			;1a66	f0 	. 
	ret p			;1a67	f0 	. 
	djnz $+18		;1a68	10 10 	. . 
	ret p			;1a6a	f0 	. 
	djnz l1a75h		;1a6b	10 08 	. . 
	ret m			;1a6d	f8 	. 
	ex af,af'			;1a6e	08 	. 
	ex af,af'			;1a6f	08 	. 
	ld l,h			;1a70	6c 	l 
	sbc a,h			;1a71	9c 	. 
	inc c			;1a72	0c 	. 
	inc c			;1a73	0c 	. 
	ld h,h			;1a74	64 	d 
l1a75h:
	sbc a,h			;1a75	9c 	. 
l1a76h:
	inc b			;1a76	04 	. 
	inc b			;1a77	04 	. 
	inc h			;1a78	24 	$ 
	call c,00404h		;1a79	dc 04 04 	. . . 
	inc b			;1a7c	04 	. 
	call m,00404h		;1a7d	fc 04 04 	. . . 
	inc e			;1a80	1c 	. 
	ret c			;1a81	d8 	. 
	ccf			;1a82	3f 	? 
	ld a,01eh		;1a83	3e 1e 	> . 
	sbc a,03fh		;1a85	de 3f 	. ? 
	ccf			;1a87	3f 	? 
	scf			;1a88	37 	7 
	sub l			;1a89	95 	. 
	ld (hl),l			;1a8a	75 	u 
	ld a,c			;1a8b	79 	y 
	scf			;1a8c	37 	7 
	sub h			;1a8d	94 	. 
	ld (hl),h			;1a8e	74 	t 
	ld a,b			;1a8f	78 	x 
	ccf			;1a90	3f 	? 
	sbc a,(hl)			;1a91	9e 	. 
	ld a,(hl)			;1a92	7e 	~ 
	ld a,(hl)			;1a93	7e 	~ 
	ld (hl),c			;1a94	71 	q 
	ld hl,0ffffh		;1a95	21 ff ff 	! . . 
	ld h,b			;1a98	60 	` 
	ld b,(hl)			;1a99	46 	F 
	ld sp,hl			;1a9a	f9 	. 
	ret p			;1a9b	f0 	. 
	ret nz			;1a9c	c0 	. 
	add a,a			;1a9d	87 	. 
	ret m			;1a9e	f8 	. 
	ret p			;1a9f	f0 	. 
	inc h			;1aa0	24 	$ 
	call c,00404h		;1aa1	dc 04 04 	. . . 
	ex af,af'			;1aa4	08 	. 
	ld a,b			;1aa5	78 	x 
	adc a,b			;1aa6	88 	. 
	ex af,af'			;1aa7	08 	. 
	ret z			;1aa8	c8 	. 
	ret m			;1aa9	f8 	. 
	ret z			;1aaa	c8 	. 
	ret z			;1aab	c8 	. 
	or b			;1aac	b0 	. 
	or b			;1aad	b0 	. 
	or b			;1aae	b0 	. 
	ld (hl),b			;1aaf	70 	p 
	or b			;1ab0	b0 	. 
	or b			;1ab1	b0 	. 
	or b			;1ab2	b0 	. 
	ld (hl),b			;1ab3	70 	p 
	ret po			;1ab4	e0 	. 
	ret po			;1ab5	e0 	. 
	ret po			;1ab6	e0 	. 
	ret po			;1ab7	e0 	. 
	ld b,b			;1ab8	40 	@ 
	ld b,b			;1ab9	40 	@ 
	ret nz			;1aba	c0 	. 
	ld b,b			;1abb	40 	@ 
	ld b,b			;1abc	40 	@ 
	ret nz			;1abd	c0 	. 
	ld b,b			;1abe	40 	@ 
	ld b,b			;1abf	40 	@ 
	ret nz			;1ac0	c0 	. 
	rrca			;1ac1	0f 	. 
	ret p			;1ac2	f0 	. 
	ret po			;1ac3	e0 	. 
	nop			;1ac4	00 	. 
	rra			;1ac5	1f 	. 
l1ac6h:
	ret po			;1ac6	e0 	. 
	ret nz			;1ac7	c0 	. 
	ld b,b			;1ac8	40 	@ 
	rst 18h			;1ac9	df 	. 
l1acah:
	ld h,b			;1aca	60 	` 
	ld h,b			;1acb	60 	` 
	ld c,c			;1acc	49 	I 
	in a,(06dh)		;1acd	db 6d 	. m 
	ld l,l			;1acf	6d 	m 
	ld c,c			;1ad0	49 	I 
	ld e,e			;1ad1	5b 	[ 
	defb 0edh;next byte illegal after ed		;1ad2	ed 	. 
	defb 0edh;next byte illegal after ed		;1ad3	ed 	. 
	ret			;1ad4	c9 	. 
	in a,(0edh)		;1ad5	db ed 	. . 
	defb 0edh;next byte illegal after ed		;1ad7	ed 	. 
	call po,0f6edh		;1ad8	e4 ed f6 	. . . 
	or 0ffh		;1adb	f6 ff 	. . 
	rst 38h			;1add	ff 	. 
	rst 38h			;1ade	ff 	. 
	rst 38h			;1adf	ff 	. 
	nop			;1ae0	00 	. 
	ret nz			;1ae1	c0 	. 
	nop			;1ae2	00 	. 
	nop			;1ae3	00 	. 
	jr nz,l1ac6h		;1ae4	20 e0 	  . 
	jr nz,l1b08h		;1ae6	20 20 	    
l1ae8h:
	jr nz,l1acah		;1ae8	20 e0 	  . 
	jr nz,l1b0ch		;1aea	20 20 	    
	jr nz,l1b4eh		;1aec	20 60 	  ` 
	and b			;1aee	a0 	. 
	and b			;1aef	a0 	. 
	jr nz,l1b52h		;1af0	20 60 	  ` 
	and b			;1af2	a0 	. 
	and b			;1af3	a0 	. 
	sub b			;1af4	90 	. 
	or b			;1af5	b0 	. 
	ret nc			;1af6	d0 	. 
	ret nc			;1af7	d0 	. 
	ret p			;1af8	f0 	. 
	ret p			;1af9	f0 	. 
l1afah:
	ret p			;1afa	f0 	. 
	ret p			;1afb	f0 	. 
	ret m			;1afc	f8 	. 
	adc a,b			;1afd	88 	. 
	ret m			;1afe	f8 	. 
	ret z			;1aff	c8 	. 
	pop af			;1b00	f1 	. 
	rst 30h			;1b01	f7 	. 
	ld sp,hl			;1b02	f9 	. 
	ld sp,hl			;1b03	f9 	. 
	pop af			;1b04	f1 	. 
	dec d			;1b05	15 	. 
	ei			;1b06	fb 	. 
	ei			;1b07	fb 	. 
l1b08h:
	ex (sp),hl			;1b08	e3 	. 
	cpl			;1b09	2f 	/ 
	di			;1b0a	f3 	. 
	inc sp			;1b0b	33 	3 
l1b0ch:
	ret nz			;1b0c	c0 	. 
	ld e,h			;1b0d	5c 	\ 
	ex (sp),hl			;1b0e	e3 	. 
	ex (sp),hl			;1b0f	e3 	. 
	add a,b			;1b10	80 	. 
	sbc a,a			;1b11	9f 	. 
	ret po			;1b12	e0 	. 
	ret po			;1b13	e0 	. 
	add a,b			;1b14	80 	. 
	cp a			;1b15	bf 	. 
	ret nz			;1b16	c0 	. 
	ret nz			;1b17	c0 	. 
	add a,b			;1b18	80 	. 
	sbc a,e			;1b19	9b 	. 
	call po,080e4h		;1b1a	e4 e4 80 	. . . 
l1b1dh:
	add a,a			;1b1d	87 	. 
	ret m			;1b1e	f8 	. 
	ret m			;1b1f	f8 	. 
	and d			;1b20	a2 	. 
	xor (hl)			;1b21	ae 	. 
	or d			;1b22	b2 	. 
	or d			;1b23	b2 	. 
	call nz,0e4deh		;1b24	c4 de e4 	. . . 
	call po,03e08h		;1b27	e4 08 3e 	. . > 
l1b2ah:
	ret z			;1b2a	c8 	. 
	ret z			;1b2b	c8 	. 
	djnz l1b2ah		;1b2c	10 fc 	. . 
	ld (de),a			;1b2e	12 	. 
	ld (de),a			;1b2f	12 	. 
	inc bc			;1b30	03 	. 
	cp e			;1b31	bb 	. 
	ld b,a			;1b32	47 	G 
	ld b,a			;1b33	47 	G 
	dec c			;1b34	0d 	. 
	rst 28h			;1b35	ef 	. 
	dec e			;1b36	1d 	. 
	dec e			;1b37	1d 	. 
	ld bc,l03fdh		;1b38	01 fd 03 	. . . 
	inc bc			;1b3b	03 	. 
	ld (bc),a			;1b3c	02 	. 
	jp po,l1e1eh		;1b3d	e2 1e 1e 	. . . 
	ret po			;1b40	e0 	. 
	rst 18h			;1b41	df 	. 
	ret po			;1b42	e0 	. 
	ret po			;1b43	e0 	. 
	ld (hl),b			;1b44	70 	p 
	ld (hl),b			;1b45	70 	p 
	rst 38h			;1b46	ff 	. 
	cp 05fh		;1b47	fe 5f 	. _ 
	ld e,a			;1b49	5f 	_ 
	rst 18h			;1b4a	df 	. 
	rst 28h			;1b4b	ef 	. 
	ld e,(hl)			;1b4c	5e 	^ 
	ld (de),a			;1b4d	12 	. 
l1b4eh:
	jp nc,0fee1h		;1b4e	d2 e1 fe 	. . . 
	or d			;1b51	b2 	. 
l1b52h:
	jp p,0eff1h		;1b52	f2 f1 ef 	. . . 
	ld c,a			;1b55	4f 	O 
	rst 38h			;1b56	ff 	. 
	rst 38h			;1b57	ff 	. 
	ret po			;1b58	e0 	. 
	rst 0			;1b59	c7 	. 
	ret m			;1b5a	f8 	. 
	ret p			;1b5b	f0 	. 
	ret po			;1b5c	e0 	. 
	rst 0			;1b5d	c7 	. 
	ret m			;1b5e	f8 	. 
	ret p			;1b5f	f0 	. 
	inc e			;1b60	1c 	. 
	inc e			;1b61	1c 	. 
	call m,0f8fch		;1b62	fc fc f8 	. . . 
	ret pe			;1b65	e8 	. 
	ret m			;1b66	f8 	. 
	ret m			;1b67	f8 	. 
	ret m			;1b68	f8 	. 
	adc a,b			;1b69	88 	. 
	ret m			;1b6a	f8 	. 
	ret m			;1b6b	f8 	. 
	ret m			;1b6c	f8 	. 
	adc a,b			;1b6d	88 	. 
	ret m			;1b6e	f8 	. 
	ret m			;1b6f	f8 	. 
	ret p			;1b70	f0 	. 
	sub b			;1b71	90 	. 
	ret p			;1b72	f0 	. 
	ret p			;1b73	f0 	. 
	ret p			;1b74	f0 	. 
	ret nc			;1b75	d0 	. 
	ret p			;1b76	f0 	. 
	ret p			;1b77	f0 	. 
	ld (hl),b			;1b78	70 	p 
	ld (hl),b			;1b79	70 	p 
	ret p			;1b7a	f0 	. 
	ld (hl),b			;1b7b	70 	p 
	ld (hl),b			;1b7c	70 	p 
	ld (hl),b			;1b7d	70 	p 
	ret p			;1b7e	f0 	. 
	ld (hl),b			;1b7f	70 	p 
	pop bc			;1b80	c1 	. 
	adc a,(hl)			;1b81	8e 	. 
	ret p			;1b82	f0 	. 
	ret po			;1b83	e0 	. 
	ret nz			;1b84	c0 	. 
	adc a,a			;1b85	8f 	. 
	ret p			;1b86	f0 	. 
	ret po			;1b87	e0 	. 
	pop bc			;1b88	c1 	. 
	add a,(hl)			;1b89	86 	. 
	ret m			;1b8a	f8 	. 
	ret p			;1b8b	f0 	. 
	jp 0f884h		;1b8c	c3 84 f8 	. . . 
	ret p			;1b8f	f0 	. 
	ret po			;1b90	e0 	. 
	jp 0f8fch		;1b91	c3 fc f8 	. . . 
	ret p			;1b94	f0 	. 
	ret po			;1b95	e0 	. 
	rst 38h			;1b96	ff 	. 
	call m,0f1ffh		;1b97	fc ff f1 	. . . 
	rst 38h			;1b9a	ff 	. 
	rst 38h			;1b9b	ff 	. 
	rst 38h			;1b9c	ff 	. 
	rst 38h			;1b9d	ff 	. 
	rst 38h			;1b9e	ff 	. 
	rst 38h			;1b9f	ff 	. 
	jr nc,l1b52h		;1ba0	30 b0 	0 . 
	ld (hl),b			;1ba2	70 	p 
	jr nc,l1bd5h		;1ba3	30 30 	0 0 
	or b			;1ba5	b0 	. 
	ld (hl),b			;1ba6	70 	p 
	jr nc,l1bd9h		;1ba7	30 30 	0 0 
	or b			;1ba9	b0 	. 
	ld (hl),b			;1baa	70 	p 
	jr nc,l1be5h		;1bab	30 38 	0 8 
	xor b			;1bad	a8 	. 
	ld a,b			;1bae	78 	x 
	jr c,l1c29h		;1baf	38 78 	8 x 
	ld l,b			;1bb1	68 	h 
	ret m			;1bb2	f8 	. 
	ld a,b			;1bb3	78 	x 
	ret m			;1bb4	f8 	. 
	ret z			;1bb5	c8 	. 
	ret m			;1bb6	f8 	. 
	ret m			;1bb7	f8 	. 
	ret m			;1bb8	f8 	. 
	adc a,b			;1bb9	88 	. 
	ret m			;1bba	f8 	. 
	ret m			;1bbb	f8 	. 
	ret m			;1bbc	f8 	. 
	adc a,b			;1bbd	88 	. 
	ret m			;1bbe	f8 	. 
	ret z			;1bbf	c8 	. 
	nop			;1bc0	00 	. 
	nop			;1bc1	00 	. 
	nop			;1bc2	00 	. 
	nop			;1bc3	00 	. 
	nop			;1bc4	00 	. 
	nop			;1bc5	00 	. 
	nop			;1bc6	00 	. 
	nop			;1bc7	00 	. 
	nop			;1bc8	00 	. 
	nop			;1bc9	00 	. 
	nop			;1bca	00 	. 
	nop			;1bcb	00 	. 
	nop			;1bcc	00 	. 
	nop			;1bcd	00 	. 
	nop			;1bce	00 	. 
	nop			;1bcf	00 	. 
	nop			;1bd0	00 	. 
	nop			;1bd1	00 	. 
	nop			;1bd2	00 	. 
	nop			;1bd3	00 	. 
	nop			;1bd4	00 	. 
l1bd5h:
	nop			;1bd5	00 	. 
	nop			;1bd6	00 	. 
	nop			;1bd7	00 	. 
	nop			;1bd8	00 	. 
l1bd9h:
	nop			;1bd9	00 	. 
	nop			;1bda	00 	. 
	nop			;1bdb	00 	. 
	nop			;1bdc	00 	. 
	nop			;1bdd	00 	. 
	nop			;1bde	00 	. 
	nop			;1bdf	00 	. 
	ld bc,l0100h		;1be0	01 00 01 	. . . 
	nop			;1be3	00 	. 
	inc bc			;1be4	03 	. 
l1be5h:
	ld bc,l0002h		;1be5	01 02 00 	. . . 
	rlca			;1be8	07 	. 
	inc bc			;1be9	03 	. 
	inc b			;1bea	04 	. 
	nop			;1beb	00 	. 
	rrca			;1bec	0f 	. 
	rlca			;1bed	07 	. 
	ex af,af'			;1bee	08 	. 
	nop			;1bef	00 	. 
	rra			;1bf0	1f 	. 
	rrca			;1bf1	0f 	. 
	djnz l1bf4h		;1bf2	10 00 	. . 
l1bf4h:
	ccf			;1bf4	3f 	? 
	rra			;1bf5	1f 	. 
	jr nz,l1bf8h		;1bf6	20 00 	  . 
l1bf8h:
	ld a,a			;1bf8	7f 	 
	ccf			;1bf9	3f 	? 
	ld b,b			;1bfa	40 	@ 
	nop			;1bfb	00 	. 
	ei			;1bfc	fb 	. 
	ld a,e			;1bfd	7b 	{ 
	add a,b			;1bfe	80 	. 
	nop			;1bff	00 	. 
	nop			;1c00	00 	. 
	nop			;1c01	00 	. 
	nop			;1c02	00 	. 
sub_1c03h:
	nop			;1c03	00 	. 
	ld bc,l0100h		;1c04	01 00 01 	. . . 
	nop			;1c07	00 	. 
	inc bc			;1c08	03 	. 
	ld bc,l0002h		;1c09	01 02 00 	. . . 
sub_1c0ch:
	rlca			;1c0c	07 	. 
	inc bc			;1c0d	03 	. 
l1c0eh:
	inc b			;1c0e	04 	. 
	nop			;1c0f	00 	. 
	rrca			;1c10	0f 	. 
	rlca			;1c11	07 	. 
l1c12h:
	ex af,af'			;1c12	08 	. 
	nop			;1c13	00 	. 
	rra			;1c14	1f 	. 
	rrca			;1c15	0f 	. 
	djnz l1c18h		;1c16	10 00 	. . 
l1c18h:
	ccf			;1c18	3f 	? 
	rra			;1c19	1f 	. 
	jr nz,l1c1ch		;1c1a	20 00 	  . 
l1c1ch:
	ld a,a			;1c1c	7f 	 
l1c1dh:
	ccf			;1c1d	3f 	? 
	ld b,b			;1c1e	40 	@ 
	nop			;1c1f	00 	. 
	ld bc,l0100h		;1c20	01 00 01 	. . . 
l1c23h:
	nop			;1c23	00 	. 
sub_1c24h:
	inc bc			;1c24	03 	. 
	ld bc,l0002h		;1c25	01 02 00 	. . . 
	rlca			;1c28	07 	. 
l1c29h:
	inc bc			;1c29	03 	. 
	inc b			;1c2a	04 	. 
	nop			;1c2b	00 	. 
	rrca			;1c2c	0f 	. 
	rlca			;1c2d	07 	. 
	ex af,af'			;1c2e	08 	. 
	nop			;1c2f	00 	. 
	inc e			;1c30	1c 	. 
	inc c			;1c31	0c 	. 
	djnz l1c34h		;1c32	10 00 	. . 
l1c34h:
	jr c,l1c4eh		;1c34	38 18 	8 . 
	jr nz,l1c38h		;1c36	20 00 	  . 
l1c38h:
	ld h,b			;1c38	60 	` 
	jr nz,l1c7bh		;1c39	20 40 	  @ 
	nop			;1c3b	00 	. 
	nop			;1c3c	00 	. 
	nop			;1c3d	00 	. 
	nop			;1c3e	00 	. 
	nop			;1c3f	00 	. 
	di			;1c40	f3 	. 
	di			;1c41	f3 	. 
	nop			;1c42	00 	. 
	nop			;1c43	00 	. 
	ex (sp),hl			;1c44	e3 	. 
	ex (sp),hl			;1c45	e3 	. 
	nop			;1c46	00 	. 
	nop			;1c47	00 	. 
	add a,e			;1c48	83 	. 
	add a,e			;1c49	83 	. 
	nop			;1c4a	00 	. 
	nop			;1c4b	00 	. 
	inc bc			;1c4c	03 	. 
	inc bc			;1c4d	03 	. 
l1c4eh:
	nop			;1c4e	00 	. 
	nop			;1c4f	00 	. 
	inc bc			;1c50	03 	. 
	inc bc			;1c51	03 	. 
	nop			;1c52	00 	. 
	nop			;1c53	00 	. 
	inc bc			;1c54	03 	. 
	inc bc			;1c55	03 	. 
	nop			;1c56	00 	. 
	nop			;1c57	00 	. 
	ld (bc),a			;1c58	02 	. 
	ld (bc),a			;1c59	02 	. 
	nop			;1c5a	00 	. 
	nop			;1c5b	00 	. 
	nop			;1c5c	00 	. 
	nop			;1c5d	00 	. 
	nop			;1c5e	00 	. 
	nop			;1c5f	00 	. 
	rst 38h			;1c60	ff 	. 
	ld a,a			;1c61	7f 	 
	add a,b			;1c62	80 	. 
	nop			;1c63	00 	. 
sub_1c64h:
	rst 38h			;1c64	ff 	. 
	rst 38h			;1c65	ff 	. 
	nop			;1c66	00 	. 
	nop			;1c67	00 	. 
	call m,000fch		;1c68	fc fc 00 	. . . 
	nop			;1c6b	00 	. 
	ret p			;1c6c	f0 	. 
	ret p			;1c6d	f0 	. 
	nop			;1c6e	00 	. 
	nop			;1c6f	00 	. 
	ret nz			;1c70	c0 	. 
	ret nz			;1c71	c0 	. 
	nop			;1c72	00 	. 
	nop			;1c73	00 	. 
	nop			;1c74	00 	. 
	nop			;1c75	00 	. 
	nop			;1c76	00 	. 
	nop			;1c77	00 	. 
	nop			;1c78	00 	. 
	nop			;1c79	00 	. 
	nop			;1c7a	00 	. 
l1c7bh:
	nop			;1c7b	00 	. 
	nop			;1c7c	00 	. 
	nop			;1c7d	00 	. 
	nop			;1c7e	00 	. 
	nop			;1c7f	00 	. 
	nop			;1c80	00 	. 
	nop			;1c81	00 	. 
	nop			;1c82	00 	. 
	nop			;1c83	00 	. 
	nop			;1c84	00 	. 
	nop			;1c85	00 	. 
	nop			;1c86	00 	. 
	nop			;1c87	00 	. 
	nop			;1c88	00 	. 
	nop			;1c89	00 	. 
	nop			;1c8a	00 	. 
	nop			;1c8b	00 	. 
	nop			;1c8c	00 	. 
	nop			;1c8d	00 	. 
	nop			;1c8e	00 	. 
	nop			;1c8f	00 	. 
	nop			;1c90	00 	. 
	nop			;1c91	00 	. 
	nop			;1c92	00 	. 
	nop			;1c93	00 	. 
	nop			;1c94	00 	. 
	nop			;1c95	00 	. 
	nop			;1c96	00 	. 
	nop			;1c97	00 	. 
	nop			;1c98	00 	. 
	nop			;1c99	00 	. 
	nop			;1c9a	00 	. 
	nop			;1c9b	00 	. 
	nop			;1c9c	00 	. 
	nop			;1c9d	00 	. 
	nop			;1c9e	00 	. 
	nop			;1c9f	00 	. 
	ld bc,l0001h		;1ca0	01 01 00 	. . . 
	nop			;1ca3	00 	. 
	inc bc			;1ca4	03 	. 
	ld (bc),a			;1ca5	02 	. 
	ld bc,l0701h		;1ca6	01 01 07 	. . . 
	inc b			;1ca9	04 	. 
	inc bc			;1caa	03 	. 
	inc bc			;1cab	03 	. 
	rrca			;1cac	0f 	. 
	ex af,af'			;1cad	08 	. 
	rlca			;1cae	07 	. 
	rlca			;1caf	07 	. 
	rra			;1cb0	1f 	. 
	djnz l1cc2h		;1cb1	10 0f 	. . 
	rrca			;1cb3	0f 	. 
	ccf			;1cb4	3f 	? 
	jr nz,$+33		;1cb5	20 1f 	  . 
	rra			;1cb7	1f 	. 
	ld a,a			;1cb8	7f 	 
	ld b,b			;1cb9	40 	@ 
	ccf			;1cba	3f 	? 
	ccf			;1cbb	3f 	? 
	ei			;1cbc	fb 	. 
	add a,b			;1cbd	80 	. 
	ld a,e			;1cbe	7b 	{ 
	ld a,e			;1cbf	7b 	{ 
	nop			;1cc0	00 	. 
	nop			;1cc1	00 	. 
l1cc2h:
	nop			;1cc2	00 	. 
	nop			;1cc3	00 	. 
	ld bc,l0001h		;1cc4	01 01 00 	. . . 
	nop			;1cc7	00 	. 
	inc bc			;1cc8	03 	. 
	ld (bc),a			;1cc9	02 	. 
	ld bc,l0701h		;1cca	01 01 07 	. . . 
	inc b			;1ccd	04 	. 
	inc bc			;1cce	03 	. 
	inc bc			;1ccf	03 	. 
	rrca			;1cd0	0f 	. 
	ex af,af'			;1cd1	08 	. 
	rlca			;1cd2	07 	. 
	rlca			;1cd3	07 	. 
	rra			;1cd4	1f 	. 
	djnz l1ce6h		;1cd5	10 0f 	. . 
	rrca			;1cd7	0f 	. 
	ccf			;1cd8	3f 	? 
	jr nz,l1cfah		;1cd9	20 1f 	  . 
	rra			;1cdb	1f 	. 
sub_1cdch:
	ld a,a			;1cdc	7f 	 
	ld b,b			;1cdd	40 	@ 
	ccf			;1cde	3f 	? 
	ccf			;1cdf	3f 	? 
	ld bc,l0001h		;1ce0	01 01 00 	. . . 
	nop			;1ce3	00 	. 
	inc bc			;1ce4	03 	. 
	ld (bc),a			;1ce5	02 	. 
l1ce6h:
	ld bc,l0701h		;1ce6	01 01 07 	. . . 
	inc b			;1ce9	04 	. 
	inc bc			;1cea	03 	. 
	inc bc			;1ceb	03 	. 
	rrca			;1cec	0f 	. 
	ex af,af'			;1ced	08 	. 
	rlca			;1cee	07 	. 
	rlca			;1cef	07 	. 
	inc e			;1cf0	1c 	. 
	djnz l1cffh		;1cf1	10 0c 	. . 
	inc c			;1cf3	0c 	. 
	jr c,l1d16h		;1cf4	38 20 	8   
	jr l1d10h		;1cf6	18 18 	. . 
	ld h,b			;1cf8	60 	` 
	ld b,b			;1cf9	40 	@ 
l1cfah:
	jr nz,l1d1ch		;1cfa	20 20 	    
sub_1cfch:
	nop			;1cfc	00 	. 
	nop			;1cfd	00 	. 
	nop			;1cfe	00 	. 
l1cffh:
	nop			;1cff	00 	. 
	di			;1d00	f3 	. 
	nop			;1d01	00 	. 
	di			;1d02	f3 	. 
	di			;1d03	f3 	. 
	ex (sp),hl			;1d04	e3 	. 
	nop			;1d05	00 	. 
	ex (sp),hl			;1d06	e3 	. 
	ex (sp),hl			;1d07	e3 	. 
	add a,e			;1d08	83 	. 
	nop			;1d09	00 	. 
	add a,e			;1d0a	83 	. 
	add a,e			;1d0b	83 	. 
	inc bc			;1d0c	03 	. 
	nop			;1d0d	00 	. 
	inc bc			;1d0e	03 	. 
	inc bc			;1d0f	03 	. 
l1d10h:
	inc bc			;1d10	03 	. 
	nop			;1d11	00 	. 
	inc bc			;1d12	03 	. 
	inc bc			;1d13	03 	. 
	inc bc			;1d14	03 	. 
	nop			;1d15	00 	. 
l1d16h:
	inc bc			;1d16	03 	. 
	inc bc			;1d17	03 	. 
	ld (bc),a			;1d18	02 	. 
	nop			;1d19	00 	. 
	ld (bc),a			;1d1a	02 	. 
	ld (bc),a			;1d1b	02 	. 
l1d1ch:
	nop			;1d1c	00 	. 
	nop			;1d1d	00 	. 
	nop			;1d1e	00 	. 
	nop			;1d1f	00 	. 
	rst 38h			;1d20	ff 	. 
	add a,b			;1d21	80 	. 
	ld a,a			;1d22	7f 	 
	ld a,a			;1d23	7f 	 
	rst 38h			;1d24	ff 	. 
	nop			;1d25	00 	. 
	rst 38h			;1d26	ff 	. 
	rst 38h			;1d27	ff 	. 
	call m,0fc00h		;1d28	fc 00 fc 	. . . 
	call m,sub_00f0h		;1d2b	fc f0 00 	. . . 
	ret p			;1d2e	f0 	. 
	ret p			;1d2f	f0 	. 
	ret nz			;1d30	c0 	. 
	nop			;1d31	00 	. 
	ret nz			;1d32	c0 	. 
	ret nz			;1d33	c0 	. 
	nop			;1d34	00 	. 
	nop			;1d35	00 	. 
	nop			;1d36	00 	. 
	nop			;1d37	00 	. 
	nop			;1d38	00 	. 
	nop			;1d39	00 	. 
	nop			;1d3a	00 	. 
	nop			;1d3b	00 	. 
	nop			;1d3c	00 	. 
	nop			;1d3d	00 	. 
	nop			;1d3e	00 	. 
	nop			;1d3f	00 	. 
	dec b			;1d40	05 	. 
	sbc a,l			;1d41	9d 	. 
	cp b			;1d42	b8 	. 
	cp c			;1d43	b9 	. 
	cp h			;1d44	bc 	. 
	cp l			;1d45	bd 	. 
	ld b,09ah		;1d46	06 9a 	. . 
	sbc a,e			;1d48	9b 	. 
	cp d			;1d49	ba 	. 
	cp e			;1d4a	bb 	. 
	cp (hl)			;1d4b	be 	. 
	cp a			;1d4c	bf 	. 
	rlca			;1d4d	07 	. 
	ld a,c			;1d4e	79 	y 
	ld a,h			;1d4f	7c 	| 
	ld d,l			;1d50	55 	U 
	ld d,l			;1d51	55 	U 
	ret nz			;1d52	c0 	. 
	pop bc			;1d53	c1 	. 
	call nz,07b08h		;1d54	c4 08 7b 	. . { 
	ld a,(hl)			;1d57	7e 	~ 
	ld d,l			;1d58	55 	U 
	ld d,l			;1d59	55 	U 
	ld d,l			;1d5a	55 	U 
	jp 07fc6h		;1d5b	c3 c6 7f 	. .  
	ld c,060h		;1d5e	0e 60 	. ` 
	ld h,c			;1d60	61 	a 
	ld h,h			;1d61	64 	d 
	ld h,l			;1d62	65 	e 
	ld l,b			;1d63	68 	h 
	ld l,c			;1d64	69 	i 
	ld l,h			;1d65	6c 	l 
	ld l,l			;1d66	6d 	m 
	ld (hl),b			;1d67	70 	p 
	ld (hl),c			;1d68	71 	q 
	ld (hl),h			;1d69	74 	t 
	ld (hl),l			;1d6a	75 	u 
	ld a,b			;1d6b	78 	x 
	sbc a,a			;1d6c	9f 	. 
	dec c			;1d6d	0d 	. 
	ld h,d			;1d6e	62 	b 
	ld h,e			;1d6f	63 	c 
	ld h,(hl)			;1d70	66 	f 
	ld h,a			;1d71	67 	g 
	ld l,d			;1d72	6a 	j 
	ld l,e			;1d73	6b 	k 
	ld l,(hl)			;1d74	6e 	n 
	ld l,a			;1d75	6f 	o 
	ld (hl),d			;1d76	72 	r 
	ld (hl),e			;1d77	73 	s 
	halt			;1d78	76 	v 
	ld (hl),a			;1d79	77 	w 
	ld a,d			;1d7a	7a 	z 
	inc c			;1d7b	0c 	. 
	and b			;1d7c	a0 	. 
	and c			;1d7d	a1 	. 
	and h			;1d7e	a4 	. 
	and l			;1d7f	a5 	. 
	xor b			;1d80	a8 	. 
	xor c			;1d81	a9 	. 
	xor h			;1d82	ac 	. 
	xor l			;1d83	ad 	. 
	or b			;1d84	b0 	. 
	or c			;1d85	b1 	. 
	or h			;1d86	b4 	. 
	or l			;1d87	b5 	. 
	ld a,(de)			;1d88	1a 	. 
	rst 38h			;1d89	ff 	. 
	nop			;1d8a	00 	. 
	nop			;1d8b	00 	. 
	nop			;1d8c	00 	. 
	nop			;1d8d	00 	. 
	nop			;1d8e	00 	. 
	nop			;1d8f	00 	. 
	nop			;1d90	00 	. 
	and d			;1d91	a2 	. 
	and e			;1d92	a3 	. 
	and (hl)			;1d93	a6 	. 
	and a			;1d94	a7 	. 
	xor d			;1d95	aa 	. 
	xor e			;1d96	ab 	. 
	xor (hl)			;1d97	ae 	. 
	xor a			;1d98	af 	. 
	or d			;1d99	b2 	. 
	or e			;1d9a	b3 	. 
	or (hl)			;1d9b	b6 	. 
	or a			;1d9c	b7 	. 
	nop			;1d9d	00 	. 
	nop			;1d9e	00 	. 
	nop			;1d9f	00 	. 
	nop			;1da0	00 	. 
	nop			;1da1	00 	. 
	rst 38h			;1da2	ff 	. 
	dec de			;1da3	1b 	. 
	ret m			;1da4	f8 	. 
	ld sp,hl			;1da5	f9 	. 
	nop			;1da6	00 	. 
	nop			;1da7	00 	. 
	nop			;1da8	00 	. 
	nop			;1da9	00 	. 
	nop			;1daa	00 	. 
	ret po			;1dab	e0 	. 
	pop hl			;1dac	e1 	. 
	call po,0e8e5h		;1dad	e4 e5 e8 	. . . 
	jp (hl)			;1db0	e9 	. 
	call pe,0f0edh		;1db1	ec ed f0 	. . . 
	pop af			;1db4	f1 	. 
	call p,sub_00f5h		;1db5	f4 f5 00 	. . . 
	nop			;1db8	00 	. 
	nop			;1db9	00 	. 
	nop			;1dba	00 	. 
	nop			;1dbb	00 	. 
	ret m			;1dbc	f8 	. 
	ld sp,hl			;1dbd	f9 	. 
	rst 38h			;1dbe	ff 	. 
	dec de			;1dbf	1b 	. 
	jp m,0fdfbh		;1dc0	fa fb fd 	. . . 
	nop			;1dc3	00 	. 
	nop			;1dc4	00 	. 
	nop			;1dc5	00 	. 
	nop			;1dc6	00 	. 
	jp po,0e6e3h		;1dc7	e2 e3 e6 	. . . 
	rst 20h			;1dca	e7 	. 
	jp pe,0eeebh		;1dcb	ea eb ee 	. . . 
	rst 28h			;1dce	ef 	. 
	ld (hl),0f3h		;1dcf	36 f3 	6 . 
	or 0f7h		;1dd1	f6 f7 	. . 
	jp nz,l0000h		;1dd3	c2 00 00 	. . . 
	nop			;1dd6	00 	. 
	nop			;1dd7	00 	. 
	jp m,0fdfbh		;1dd8	fa fb fd 	. . . 
	inc e			;1ddb	1c 	. 
	call m,0dedch		;1ddc	fc dc de 	. . . 
	defb 0fdh,000h,000h	;illegal sequence		;1ddf	fd 00 00 	. . . 
	nop			;1de2	00 	. 
	nop			;1de3	00 	. 
	nop			;1de4	00 	. 
	push bc			;1de5	c5 	. 
	ret z			;1de6	c8 	. 
	ret			;1de7	c9 	. 
	call z,0d0cdh		;1de8	cc cd d0 	. . . 
	ld (hl),036h		;1deb	36 36 	6 6 
	ld (hl),0d1h		;1ded	36 d1 	6 . 
	ld (hl),0ddh		;1def	36 dd 	6 . 
	nop			;1df1	00 	. 
	nop			;1df2	00 	. 
	nop			;1df3	00 	. 
	call m,0dedch		;1df4	fc dc de 	. . . 
	defb 0fdh,01dh,0f8h	;illegal sequence		;1df7	fd 1d f8 	. . . 
	ld sp,hl			;1dfa	f9 	. 
	nop			;1dfb	00 	. 
	rst 38h			;1dfc	ff 	. 
	nop			;1dfd	00 	. 
	nop			;1dfe	00 	. 
	nop			;1dff	00 	. 
	nop			;1e00	00 	. 
	nop			;1e01	00 	. 
	rst 0			;1e02	c7 	. 
	jp z,0cecbh		;1e03	ca cb ce 	. . . 
	rst 8			;1e06	cf 	. 
	ret m			;1e07	f8 	. 
	ld sp,hl			;1e08	f9 	. 
	ld (hl),0d2h		;1e09	36 d2 	6 . 
	out (0f2h),a		;1e0b	d3 f2 	. . 
	rst 18h			;1e0d	df 	. 
	cp 000h		;1e0e	fe 00 	. . 
	nop			;1e10	00 	. 
l1e11h:
	rst 38h			;1e11	ff 	. 
	cp 0f8h		;1e12	fe f8 	. . 
	ld sp,hl			;1e14	f9 	. 
	rst 38h			;1e15	ff 	. 
	ld e,0ffh		;1e16	1e ff 	. . 
	jp m,0d4fbh		;1e18	fa fb d4 	. . . 
	push de			;1e1b	d5 	. 
	ret c			;1e1c	d8 	. 
	exx			;1e1d	d9 	. 
l1e1eh:
	call nc,0d8d5h		;1e1e	d4 d5 d8 	. . . 
	exx			;1e21	d9 	. 
	call nc,0d8d5h		;1e22	d4 d5 d8 	. . . 
	exx			;1e25	d9 	. 
	jp m,0d8fbh		;1e26	fa fb d8 	. . . 
	exx			;1e29	d9 	. 
	call nc,0d8d5h		;1e2a	d4 d5 d8 	. . . 
	exx			;1e2d	d9 	. 
	call nc,0d8d5h		;1e2e	d4 d5 d8 	. . . 
	exx			;1e31	d9 	. 
	jp m,0fdfbh		;1e32	fa fb fd 	. . . 
	ld e,0fch		;1e35	1e fc 	. . 
	call c,0d6deh		;1e37	dc de d6 	. . . 
	rst 10h			;1e3a	d7 	. 
	jp c,0d6dbh		;1e3b	da db d6 	. . . 
	rst 10h			;1e3e	d7 	. 
	jp c,0d6dbh		;1e3f	da db d6 	. . . 
	rst 10h			;1e42	d7 	. 
	jp c,0dcdbh		;1e43	da db dc 	. . . 
	sbc a,0dah		;1e46	de da 	. . 
	in a,(0d6h)		;1e48	db d6 	. . 
	rst 10h			;1e4a	d7 	. 
	jp c,0d6dbh		;1e4b	da db d6 	. . . 
	rst 10h			;1e4e	d7 	. 
	jp c,0dcdbh		;1e4f	da db dc 	. . . 
	sbc a,0fdh		;1e52	de fd 	. . 
	jr $+66		;1e54	18 40 	. @ 
	ld b,c			;1e56	41 	A 
	ld b,h			;1e57	44 	D 
	ld b,l			;1e58	45 	E 
	ld c,b			;1e59	48 	H 
	ld c,c			;1e5a	49 	I 
	ld c,h			;1e5b	4c 	L 
	ld c,l			;1e5c	4d 	M 
	ld d,b			;1e5d	50 	P 
	ld d,c			;1e5e	51 	Q 
	ld d,h			;1e5f	54 	T 
	ld b,l			;1e60	45 	E 
	ld d,b			;1e61	50 	P 
	dec l			;1e62	2d 	- 
	jr nc,$+51		;1e63	30 31 	0 1 
	ld d,b			;1e65	50 	P 
	dec l			;1e66	2d 	- 
	jr z,l1e92h		;1e67	28 29 	( ) 
	ld d,b			;1e69	50 	P 
	dec l			;1e6a	2d 	- 
	jr nz,l1e8eh		;1e6b	20 21 	  ! 
	jr l1eb1h		;1e6d	18 42 	. B 
	ld b,e			;1e6f	43 	C 
	ld b,(hl)			;1e70	46 	F 
	ld b,a			;1e71	47 	G 
	ld c,d			;1e72	4a 	J 
	ld c,e			;1e73	4b 	K 
	ld c,(hl)			;1e74	4e 	N 
	ld c,a			;1e75	4f 	O 
	sub b			;1e76	90 	. 
	ld d,e			;1e77	53 	S 
	ld d,(hl)			;1e78	56 	V 
	ld d,a			;1e79	57 	W 
	sub b			;1e7a	90 	. 
	cpl			;1e7b	2f 	/ 
	ld (09033h),a		;1e7c	32 33 90 	2 3 . 
	inc l			;1e7f	2c 	, 
	ld hl,(0902bh)		;1e80	2a 2b 90 	* + . 
	inc l			;1e83	2c 	, 
	ld (l1823h),hl		;1e84	22 23 18 	" # . 
	add a,b			;1e87	80 	. 
	add a,c			;1e88	81 	. 
	add a,h			;1e89	84 	. 
	add a,l			;1e8a	85 	. 
	adc a,b			;1e8b	88 	. 
	adc a,c			;1e8c	89 	. 
	adc a,h			;1e8d	8c 	. 
l1e8eh:
	adc a,l			;1e8e	8d 	. 
	sub b			;1e8f	90 	. 
	sub c			;1e90	91 	. 
	sub h			;1e91	94 	. 
l1e92h:
	sub l			;1e92	95 	. 
	sub b			;1e93	90 	. 
	dec (hl)			;1e94	35 	5 
	jr c,l1ed0h		;1e95	38 39 	8 9 
	sub b			;1e97	90 	. 
	ld l,024h		;1e98	2e 24 	. $ 
	dec h			;1e9a	25 	% 
	sub b			;1e9b	90 	. 
	ld l,01ch		;1e9c	2e 1c 	. . 
	dec e			;1e9e	1d 	. 
	jr $-124		;1e9f	18 82 	. . 
	add a,e			;1ea1	83 	. 
	add a,(hl)			;1ea2	86 	. 
	add a,a			;1ea3	87 	. 
	adc a,d			;1ea4	8a 	. 
	adc a,e			;1ea5	8b 	. 
	adc a,(hl)			;1ea6	8e 	. 
	adc a,a			;1ea7	8f 	. 
	sub d			;1ea8	92 	. 
	sub e			;1ea9	93 	. 
	sub (hl)			;1eaa	96 	. 
	sub a			;1eab	97 	. 
	sub d			;1eac	92 	. 
	scf			;1ead	37 	7 
	ld a,(0923bh)		;1eae	3a 3b 92 	: ; . 
l1eb1h:
	scf			;1eb1	37 	7 
	ld h,027h		;1eb2	26 27 	& ' 
	sub d			;1eb4	92 	. 
	inc (hl)			;1eb5	34 	4 
	ld e,01fh		;1eb6	1e 1f 	. . 
	inc c			;1eb8	0c 	. 
	ld d,b			;1eb9	50 	P 
	dec l			;1eba	2d 	- 
	jr nz,l1edeh		;1ebb	20 21 	  ! 
	ld c,b			;1ebd	48 	H 
	ld c,c			;1ebe	49 	I 
	ld c,h			;1ebf	4c 	L 
	ld c,l			;1ec0	4d 	M 
	ld e,b			;1ec1	58 	X 
	ld e,c			;1ec2	59 	Y 
	ld e,h			;1ec3	5c 	\ 
	ld e,l			;1ec4	5d 	] 
	inc c			;1ec5	0c 	. 
	sub b			;1ec6	90 	. 
	inc l			;1ec7	2c 	, 
	ld (04a23h),hl		;1ec8	22 23 4a 	" # J 
	ld c,e			;1ecb	4b 	K 
	ld c,(hl)			;1ecc	4e 	N 
	ld c,a			;1ecd	4f 	O 
	ld e,d			;1ece	5a 	Z 
	ld e,e			;1ecf	5b 	[ 
l1ed0h:
	ld e,(hl)			;1ed0	5e 	^ 
	ld e,a			;1ed1	5f 	_ 
	dec bc			;1ed2	0b 	. 
	sub b			;1ed3	90 	. 
	ld l,03ch		;1ed4	2e 3c 	. < 
	dec a			;1ed6	3d 	= 
	adc a,b			;1ed7	88 	. 
	adc a,c			;1ed8	89 	. 
	adc a,h			;1ed9	8c 	. 
	adc a,l			;1eda	8d 	. 
	sbc a,b			;1edb	98 	. 
	sbc a,c			;1edc	99 	. 
	sbc a,h			;1edd	9c 	. 
l1edeh:
	dec bc			;1ede	0b 	. 
	sub d			;1edf	92 	. 
	scf			;1ee0	37 	7 
	ld a,03fh		;1ee1	3e 3f 	> ? 
	adc a,d			;1ee3	8a 	. 
	adc a,e			;1ee4	8b 	. 
	adc a,(hl)			;1ee5	8e 	. 
	adc a,a			;1ee6	8f 	. 
	nop			;1ee7	00 	. 
	sub d			;1ee8	92 	. 
	sbc a,(hl)			;1ee9	9e 	. 
	jr l1ef7h		;1eea	18 0b 	. . 
	ld a,(bc)			;1eec	0a 	. 
	dec b			;1eed	05 	. 
	inc c			;1eee	0c 	. 
	nop			;1eef	00 	. 
	ld bc,l0b00h		;1ef0	01 00 0b 	. . . 
	dec d			;1ef3	15 	. 
sub_1ef4h:
	inc d			;1ef4	14 	. 
	ld d,000h		;1ef5	16 00 	. . 
l1ef7h:
	dec b			;1ef7	05 	. 
sub_1ef8h:
	rlca			;1ef8	07 	. 
	inc d			;1ef9	14 	. 
	inc de			;1efa	13 	. 
	rlca			;1efb	07 	. 
	nop			;1efc	00 	. 
	rrca			;1efd	0f 	. 
	ld a,(bc)			;1efe	0a 	. 
	rlca			;1eff	07 	. 
	rlca			;1f00	07 	. 
	jr l1f1ah		;1f01	18 17 	. . 
	ld (bc),a			;1f03	02 	. 
	jr l1f19h		;1f04	18 13 	. . 
	jr l1f13h		;1f06	18 0b 	. . 
	ld a,(bc)			;1f08	0a 	. 
	dec b			;1f09	05 	. 
	inc c			;1f0a	0c 	. 
	nop			;1f0b	00 	. 
	ld (bc),a			;1f0c	02 	. 
	nop			;1f0d	00 	. 
	dec bc			;1f0e	0b 	. 
	dec d			;1f0f	15 	. 
	inc d			;1f10	14 	. 
l1f11h:
	ld d,000h		;1f11	16 00 	. . 
l1f13h:
	dec b			;1f13	05 	. 
	rlca			;1f14	07 	. 
	inc d			;1f15	14 	. 
	inc de			;1f16	13 	. 
	rlca			;1f17	07 	. 
	nop			;1f18	00 	. 
l1f19h:
	rrca			;1f19	0f 	. 
l1f1ah:
	ld a,(bc)			;1f1a	0a 	. 
l1f1bh:
	rlca			;1f1b	07 	. 
	rlca			;1f1c	07 	. 
	jr l1f36h		;1f1d	18 17 	. . 
l1f1fh:
	inc d			;1f1f	14 	. 
	jr l1f35h		;1f20	18 13 	. . 
	dec c			;1f22	0d 	. 
	ld c,00dh		;1f23	0e 0d 	. . 
	rla			;1f25	17 	. 
	inc d			;1f26	14 	. 
	dec d			;1f27	15 	. 
	nop			;1f28	00 	. 
	ld c,014h		;1f29	0e 14 	. . 
	ld a,(de)			;1f2b	1a 	. 
	ld (de),a			;1f2c	12 	. 
	inc bc			;1f2d	03 	. 
	nop			;1f2e	00 	. 
	nop			;1f2f	00 	. 
	nop			;1f30	00 	. 
	nop			;1f31	00 	. 
	nop			;1f32	00 	. 
	nop			;1f33	00 	. 
	inc d			;1f34	14 	. 
l1f35h:
	nop			;1f35	00 	. 
l1f36h:
	nop			;1f36	00 	. 
	inc b			;1f37	04 	. 
	nop			;1f38	00 	. 
	dec b			;1f39	05 	. 
	ld (de),a			;1f3a	12 	. 
	ld c,014h		;1f3b	0e 14 	. . 
	ld a,l			;1f3d	7d 	} 
	dec de			;1f3e	1b 	. 
	dec b			;1f3f	05 	. 
	djnz l1f5bh		;1f40	10 19 	. . 
	dec bc			;1f42	0b 	. 
	dec de			;1f43	1b 	. 
	nop			;1f44	00 	. 
	ld bc,l0809h		;1f45	01 09 08 	. . . 
	ld d,d			;1f48	52 	R 
	ld a,(de)			;1f49	1a 	. 
	nop			;1f4a	00 	. 
	nop			;1f4b	00 	. 
	inc de			;1f4c	13 	. 
	ld (de),a			;1f4d	12 	. 
	dec bc			;1f4e	0b 	. 
	inc de			;1f4f	13 	. 
	jr l1f60h		;1f50	18 0e 	. . 
	inc de			;1f52	13 	. 
	inc d			;1f53	14 	. 
	ld a,(de)			;1f54	1a 	. 
	ld a,(de)			;1f55	1a 	. 
	ld (de),a			;1f56	12 	. 
	ld de,l0e00h		;1f57	11 00 0e 	. . . 
	inc d			;1f5a	14 	. 
l1f5bh:
	ld a,(de)			;1f5b	1a 	. 
	ld (de),a			;1f5c	12 	. 
	inc bc			;1f5d	03 	. 
	nop			;1f5e	00 	. 
	nop			;1f5f	00 	. 
l1f60h:
	nop			;1f60	00 	. 
	nop			;1f61	00 	. 
	nop			;1f62	00 	. 
	nop			;1f63	00 	. 
	inc e			;1f64	1c 	. 
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
	inc b			;1f6f	04 	. 
	nop			;1f70	00 	. 
	dec b			;1f71	05 	. 
	ld (de),a			;1f72	12 	. 
	ld c,014h		;1f73	0e 14 	. . 
	nop			;1f75	00 	. 
	ld bc,l0809h		;1f76	01 09 08 	. . . 
	ld b,000h		;1f79	06 00 	. . 
	nop			;1f7b	00 	. 
	nop			;1f7c	00 	. 
	nop			;1f7d	00 	. 
	nop			;1f7e	00 	. 
	nop			;1f7f	00 	. 
	nop			;1f80	00 	. 
l1f81h:
	jr nz,l1f83h		;1f81	20 00 	  . 
l1f83h:
	nop			;1f83	00 	. 
	nop			;1f84	00 	. 
	nop			;1f85	00 	. 
	nop			;1f86	00 	. 
	nop			;1f87	00 	. 
	nop			;1f88	00 	. 
	nop			;1f89	00 	. 
	nop			;1f8a	00 	. 
	nop			;1f8b	00 	. 
	nop			;1f8c	00 	. 
	nop			;1f8d	00 	. 
	nop			;1f8e	00 	. 
	nop			;1f8f	00 	. 
	nop			;1f90	00 	. 
	nop			;1f91	00 	. 
	nop			;1f92	00 	. 
	nop			;1f93	00 	. 
	nop			;1f94	00 	. 
	nop			;1f95	00 	. 
	nop			;1f96	00 	. 
	nop			;1f97	00 	. 
	nop			;1f98	00 	. 
	nop			;1f99	00 	. 
	nop			;1f9a	00 	. 
	nop			;1f9b	00 	. 
	nop			;1f9c	00 	. 
	nop			;1f9d	00 	. 
	nop			;1f9e	00 	. 
	nop			;1f9f	00 	. 
	nop			;1fa0	00 	. 
	nop			;1fa1	00 	. 
	add hl,bc			;1fa2	09 	. 
	rrca			;1fa3	0f 	. 
	dec d			;1fa4	15 	. 
	dec de			;1fa5	1b 	. 
	inc de			;1fa6	13 	. 
	nop			;1fa7	00 	. 
	dec e			;1fa8	1d 	. 
	inc h			;1fa9	24 	$ 
	inc de			;1faa	13 	. 
	jr nz,l1fb5h		;1fab	20 08 	  . 
	ld de,l1c1dh		;1fad	11 1d 1c 	. . . 
	ld (l1c0eh),hl		;1fb0	22 0e 1c 	" . . 
	dec bc			;1fb3	0b 	. 
	inc de			;1fb4	13 	. 
l1fb5h:
	rlca			;1fb5	07 	. 
	jr nz,l1fcbh		;1fb6	20 13 	  . 
	ld hl,l1522h		;1fb8	21 22 15 	! " . 
	jr nz,l1fdfh		;1fbb	20 22 	  " 
	jr l1fdeh		;1fbd	18 1f 	. . 
	rra			;1fbf	1f 	. 
	rra			;1fc0	1f 	. 
	jr nz,l2002h		;1fc1	20 3f 	  ? 
	ccf			;1fc3	3f 	? 
	ccf			;1fc4	3f 	? 
	jr nz,l2006h		;1fc5	20 3f 	  ? 
	dec (hl)			;1fc7	35 	5 
	ccf			;1fc8	3f 	? 
	ld c,b			;1fc9	48 	H 
	ld (hl),a			;1fca	77 	w 
l1fcbh:
	ld (hl),c			;1fcb	71 	q 
	ld a,a			;1fcc	7f 	 
	ld b,h			;1fcd	44 	D 
	ld a,e			;1fce	7b 	{ 
	ld a,e			;1fcf	7b 	{ 
	ld a,a			;1fd0	7f 	 
	ld d,e			;1fd1	53 	S 
	ld l,h			;1fd2	6c 	l 
	ld a,a			;1fd3	7f 	 
	ld l,h			;1fd4	6c 	l 
	adc a,(hl)			;1fd5	8e 	. 
	ret p			;1fd6	f0 	. 
	rst 38h			;1fd7	ff 	. 
	pop af			;1fd8	f1 	. 
	adc a,h			;1fd9	8c 	. 
	ret p			;1fda	f0 	. 
	rst 38h			;1fdb	ff 	. 
	di			;1fdc	f3 	. 
	nop			;1fdd	00 	. 
l1fdeh:
	ret nz			;1fde	c0 	. 
l1fdfh:
	ret nz			;1fdf	c0 	. 
l1fe0h:
	ret nz			;1fe0	c0 	. 
	nop			;1fe1	00 	. 
	ret p			;1fe2	f0 	. 
	ret p			;1fe3	f0 	. 
	ret p			;1fe4	f0 	. 
	nop			;1fe5	00 	. 
	ret m			;1fe6	f8 	. 
	ret m			;1fe7	f8 	. 
	ret m			;1fe8	f8 	. 
	nop			;1fe9	00 	. 
	call m,0fcfch		;1fea	fc fc fc 	. . . 
	ret nz			;1fed	c0 	. 
	inc a			;1fee	3c 	< 
	call m,0e03ch		;1fef	fc 3c e0 	. < . 
	ld e,0feh		;1ff2	1e fe 	. . 
	ld e,0d0h		;1ff4	1e d0 	. . 
l1ff6h:
	ld c,0feh		;1ff6	0e fe 	. . 
sub_1ff8h:
	ld l,0b4h		;1ff8	2e b4 	. . 
	ld a,(bc)			;1ffa	0a 	. 
	cp 04ah		;1ffb	fe 4a 	. J 
	or h			;1ffd	b4 	. 
	ret z			;1ffe	c8 	. 
	rst 38h			;1fff	ff 	. 
sub_2000h:
	res 2,l		;2000	cb 95 	. . 
l2002h:
	ret pe			;2002	e8 	. 
l2003h:
	or 0e2h		;2003	f6 e2 	. . 
	sub l			;2005	95 	. 
l2006h:
	jp pe,0e0f4h		;2006	ea f4 e0 	. . . 
	ld e,b			;2009	58 	X 
	ld h,e			;200a	63 	c 
	ld a,h			;200b	7c 	| 
	ld h,h			;200c	64 	d 
	jr c,$+37		;200d	38 23 	8 # 
	inc a			;200f	3c 	< 
	inc h			;2010	24 	$ 
l2011h:
	jr l202ch		;2011	18 19 	. . 
	ld e,01eh		;2013	1e 1e 	. . 
	djnz l2035h		;2015	10 1e 	. . 
	ld de,l2011h		;2017	11 11 20 	. .   
	ccf			;201a	3f 	? 
	jr nz,l2055h		;201b	20 38 	  8 
	call nc,sub_2c00h		;201d	d4 00 2c 	. . , 
l2020h:
	jr z,l1ff6h		;2020	28 d4 	( . 
	ld a,b			;2022	78 	x 
	ld d,h			;2023	54 	T 
	ld d,b			;2024	50 	P 
	ret nc			;2025	d0 	. 
	ld a,b			;2026	78 	x 
	ld d,b			;2027	50 	P 
	ld d,b			;2028	50 	P 
	nop			;2029	00 	. 
	ret m			;202a	f8 	. 
	nop			;202b	00 	. 
l202ch:
	nop			;202c	00 	. 
	jr nz,$-38		;202d	20 d8 	  . 
	jr nz,l2031h		;202f	20 00 	  . 
l2031h:
	jr nz,l2003h		;2031	20 d0 	  . 
	jr z,l203dh		;2033	28 08 	( . 
l2035h:
	nop			;2035	00 	. 
	nop			;2036	00 	. 
	ret p			;2037	f0 	. 
	ret p			;2038	f0 	. 
	nop			;2039	00 	. 
	ret po			;203a	e0 	. 
l203bh:
	nop			;203b	00 	. 
	nop			;203c	00 	. 
l203dh:
	ld b,b			;203d	40 	@ 
	ld c,a			;203e	4f 	O 
l203fh:
	ld (hl),b			;203f	70 	p 
	ld a,e			;2040	7b 	{ 
	ld b,h			;2041	44 	D 
	ld e,e			;2042	5b 	[ 
	ld h,b			;2043	60 	` 
	ld h,a			;2044	67 	g 
	ld b,b			;2045	40 	@ 
	ld e,a			;2046	5f 	_ 
	ld h,b			;2047	60 	` 
	ld h,e			;2048	63 	c 
	jr nz,l207ah		;2049	20 2f 	  / 
	jr nc,l207eh		;204b	30 31 	0 1 
	jr nc,l2076h		;204d	30 27 	0 ' 
	jr z,l2089h		;204f	28 38 	( 8 
	ld l,b			;2051	68 	h 
	ld d,e			;2052	53 	S 
	ld b,h			;2053	44 	D 
	ld a,l			;2054	7d 	} 
l2055h:
	ld h,h			;2055	64 	d 
	ld e,e			;2056	5b 	[ 
	ld b,b			;2057	40 	@ 
	ld a,a			;2058	7f 	 
	ret p			;2059	f0 	. 
	adc a,h			;205a	8c 	. 
	add a,e			;205b	83 	. 
	rst 38h			;205c	ff 	. 
	nop			;205d	00 	. 
	ret p			;205e	f0 	. 
	nop			;205f	00 	. 
	or b			;2060	b0 	. 
	nop			;2061	00 	. 
	ret p			;2062	f0 	. 
	nop			;2063	00 	. 
	ret p			;2064	f0 	. 
	nop			;2065	00 	. 
	ret po			;2066	e0 	. 
	nop			;2067	00 	. 
	ret po			;2068	e0 	. 
l2069h:
	nop			;2069	00 	. 
	ret p			;206a	f0 	. 
	nop			;206b	00 	. 
	ret p			;206c	f0 	. 
	nop			;206d	00 	. 
	ret m			;206e	f8 	. 
	nop			;206f	00 	. 
	ret m			;2070	f8 	. 
	jr nc,l203bh		;2071	30 c8 	0 . 
	nop			;2073	00 	. 
	ret p			;2074	f0 	. 
	ld h,b			;2075	60 	` 
l2076h:
	adc a,h			;2076	8c 	. 
	djnz l2069h		;2077	10 f0 	. . 
	nop			;2079	00 	. 
l207ah:
	adc a,h			;207a	8c 	. 
	ld (hl),b			;207b	70 	p 
	ret p			;207c	f0 	. 
	ret m			;207d	f8 	. 
l207eh:
	add a,e			;207e	83 	. 
	add a,h			;207f	84 	. 
	call m,06370h		;2080	fc 70 63 	. p c 
	ld l,h			;2083	6c 	l 
	ld a,h			;2084	7c 	| 
	djnz l209ah		;2085	10 13 	. . 
	inc e			;2087	1c 	. 
	inc e			;2088	1c 	. 
l2089h:
	djnz l209eh		;2089	10 13 	. . 
	inc e			;208b	1c 	. 
	inc e			;208c	1c 	. 
	djnz l20a2h		;208d	10 13 	. . 
	inc e			;208f	1c 	. 
	inc e			;2090	1c 	. 
	djnz $+21		;2091	10 13 	. . 
	inc e			;2093	1c 	. 
	inc e			;2094	1c 	. 
	ex af,af'			;2095	08 	. 
	add hl,bc			;2096	09 	. 
	ld c,00eh		;2097	0e 0e 	. . 
	rlca			;2099	07 	. 
l209ah:
	rlca			;209a	07 	. 
	rlca			;209b	07 	. 
	rlca			;209c	07 	. 
	ret nz			;209d	c0 	. 
l209eh:
	ld c,h			;209e	4c 	L 
	ld (hl),b			;209f	70 	p 
	ret p			;20a0	f0 	. 
	ret nz			;20a1	c0 	. 
l20a2h:
	add a,0f8h		;20a2	c6 f8 	. . 
	ret m			;20a4	f8 	. 
	jr nz,l20cdh		;20a5	20 26 	  & 
	jr c,l20e1h		;20a7	38 38 	8 8 
	inc e			;20a9	1c 	. 
	inc e			;20aa	1c 	. 
	inc e			;20ab	1c 	. 
	inc e			;20ac	1c 	. 
	nop			;20ad	00 	. 
	nop			;20ae	00 	. 
	nop			;20af	00 	. 
	nop			;20b0	00 	. 
	nop			;20b1	00 	. 
	add a,b			;20b2	80 	. 
	nop			;20b3	00 	. 
	nop			;20b4	00 	. 
	nop			;20b5	00 	. 
	add a,b			;20b6	80 	. 
	nop			;20b7	00 	. 
	nop			;20b8	00 	. 
	nop			;20b9	00 	. 
	nop			;20ba	00 	. 
	nop			;20bb	00 	. 
	nop			;20bc	00 	. 
	jr l20deh		;20bd	18 1f 	. . 
	rra			;20bf	1f 	. 
	rra			;20c0	1f 	. 
	jr nz,l2102h		;20c1	20 3f 	  ? 
	ccf			;20c3	3f 	? 
	ccf			;20c4	3f 	? 
	jr nz,l2106h		;20c5	20 3f 	  ? 
	ccf			;20c7	3f 	? 
	ccf			;20c8	3f 	? 
	ld c,b			;20c9	48 	H 
	ld (hl),a			;20ca	77 	w 
	ld l,e			;20cb	6b 	k 
	ld (hl),a			;20cc	77 	w 
l20cdh:
	ld d,b			;20cd	50 	P 
	ld l,a			;20ce	6f 	o 
	ld h,e			;20cf	63 	c 
	ld a,a			;20d0	7f 	 
	ld e,e			;20d1	5b 	[ 
	ld h,h			;20d2	64 	d 
	ld (hl),a			;20d3	77 	w 
	ld l,h			;20d4	6c 	l 
	adc a,(hl)			;20d5	8e 	. 
	ret p			;20d6	f0 	. 
	rst 38h			;20d7	ff 	. 
	pop af			;20d8	f1 	. 
	adc a,h			;20d9	8c 	. 
	ret p			;20da	f0 	. 
	rst 38h			;20db	ff 	. 
	di			;20dc	f3 	. 
	nop			;20dd	00 	. 
l20deh:
	ret nz			;20de	c0 	. 
	ret nz			;20df	c0 	. 
	ret nz			;20e0	c0 	. 
l20e1h:
	nop			;20e1	00 	. 
	ret p			;20e2	f0 	. 
	ret p			;20e3	f0 	. 
	ret p			;20e4	f0 	. 
	nop			;20e5	00 	. 
	ret m			;20e6	f8 	. 
	ret m			;20e7	f8 	. 
	ret m			;20e8	f8 	. 
	nop			;20e9	00 	. 
	call m,0fcfch		;20ea	fc fc fc 	. . . 
	ret nz			;20ed	c0 	. 
	inc a			;20ee	3c 	< 
	call m,0e03ch		;20ef	fc 3c e0 	. < . 
	ld e,0feh		;20f2	1e fe 	. . 
	ld e,0d0h		;20f4	1e d0 	. . 
l20f6h:
	ld c,0feh		;20f6	0e fe 	. . 
	ld l,0b4h		;20f8	2e b4 	. . 
	ld a,(bc)			;20fa	0a 	. 
	cp 04ah		;20fb	fe 4a 	. J 
	or h			;20fd	b4 	. 
	ret z			;20fe	c8 	. 
	rst 38h			;20ff	ff 	. 
	res 2,l		;2100	cb 95 	. . 
l2102h:
	ret pe			;2102	e8 	. 
	or 0e2h		;2103	f6 e2 	. . 
	sub l			;2105	95 	. 
l2106h:
	jp pe,0e0f4h		;2106	ea f4 e0 	. . . 
	ld e,b			;2109	58 	X 
	ld h,e			;210a	63 	c 
	ld a,h			;210b	7c 	| 
	ld h,h			;210c	64 	d 
	jr c,l2132h		;210d	38 23 	8 # 
	inc a			;210f	3c 	< 
	inc h			;2110	24 	$ 
	jr l212ch		;2111	18 19 	. . 
	ld e,01eh		;2113	1e 1e 	. . 
	djnz l2135h		;2115	10 1e 	. . 
	ld de,l2011h		;2117	11 11 20 	. .   
	ccf			;211a	3f 	? 
	jr nz,l2155h		;211b	20 38 	  8 
	call nc,sub_2c00h		;211d	d4 00 2c 	. . , 
	jr z,l20f6h		;2120	28 d4 	( . 
	ld a,b			;2122	78 	x 
	ld d,h			;2123	54 	T 
	ld d,b			;2124	50 	P 
	ret nc			;2125	d0 	. 
	ld a,b			;2126	78 	x 
	ld d,b			;2127	50 	P 
	ld d,b			;2128	50 	P 
	nop			;2129	00 	. 
	ret m			;212a	f8 	. 
	nop			;212b	00 	. 
l212ch:
	nop			;212c	00 	. 
	jr nz,$-38		;212d	20 d8 	  . 
	jr nz,l2131h		;212f	20 00 	  . 
l2131h:
	nop			;2131	00 	. 
l2132h:
	ret p			;2132	f0 	. 
	ex af,af'			;2133	08 	. 
	ex af,af'			;2134	08 	. 
l2135h:
	nop			;2135	00 	. 
	nop			;2136	00 	. 
	ret p			;2137	f0 	. 
	ret p			;2138	f0 	. 
	nop			;2139	00 	. 
	ret po			;213a	e0 	. 
	djnz l214dh		;213b	10 10 	. . 
	ld b,d			;213d	42 	B 
	ld a,l			;213e	7d 	} 
	ld b,b			;213f	40 	@ 
	ld b,a			;2140	47 	G 
	ld b,h			;2141	44 	D 
	ld a,e			;2142	7b 	{ 
	ld b,b			;2143	40 	@ 
	ld b,a			;2144	47 	G 
	adc a,b			;2145	88 	. 
	rst 30h			;2146	f7 	. 
	add a,b			;2147	80 	. 
	adc a,a			;2148	8f 	. 
	add a,b			;2149	80 	. 
	rst 38h			;214a	ff 	. 
	add a,b			;214b	80 	. 
	adc a,a			;214c	8f 	. 
l214dh:
	add a,b			;214d	80 	. 
	rst 38h			;214e	ff 	. 
	add a,b			;214f	80 	. 
	add a,a			;2150	87 	. 
	ld c,b			;2151	48 	H 
	ld (hl),a			;2152	77 	w 
	ld b,b			;2153	40 	@ 
	ld c,c			;2154	49 	I 
l2155h:
	ret p			;2155	f0 	. 
	add a,a			;2156	87 	. 
	adc a,b			;2157	88 	. 
	ret m			;2158	f8 	. 
l2159h:
	sub b			;2159	90 	. 
	di			;215a	f3 	. 
	sbc a,h			;215b	9c 	. 
	call m,0f800h		;215c	fc 00 f8 	. . . 
	nop			;215f	00 	. 
	and b			;2160	a0 	. 
	nop			;2161	00 	. 
	ret m			;2162	f8 	. 
	nop			;2163	00 	. 
l2164h:
	ret p			;2164	f0 	. 
	nop			;2165	00 	. 
	call m,0f000h		;2166	fc 00 f0 	. . . 
	djnz l2159h		;2169	10 ee 	. . 
	nop			;216b	00 	. 
	ret p			;216c	f0 	. 
	ex af,af'			;216d	08 	. 
	rst 30h			;216e	f7 	. 
	nop			;216f	00 	. 
	ret m			;2170	f8 	. 
	dec b			;2171	05 	. 
	ei			;2172	fb 	. 
	ld bc,082fdh		;2173	01 fd 82 	. . . 
	ld a,(hl)			;2176	7e 	~ 
	ld (bc),a			;2177	02 	. 
l2178h:
	cp 0c4h		;2178	fe c4 	. . 
	inc a			;217a	3c 	< 
	inc b			;217b	04 	. 
	call m,07270h		;217c	fc 70 72 	. p r 
	ld a,l			;217f	7d 	} 
	ld a,l			;2180	7d 	} 
	djnz $+21		;2181	10 13 	. . 
	inc e			;2183	1c 	. 
	inc e			;2184	1c 	. 
	djnz $+21		;2185	10 13 	. . 
	inc e			;2187	1c 	. 
	inc e			;2188	1c 	. 
	ex af,af'			;2189	08 	. 
	add hl,bc			;218a	09 	. 
	ld c,00eh		;218b	0e 0e 	. . 
	ld b,006h		;218d	06 06 	. . 
	rlca			;218f	07 	. 
	rlca			;2190	07 	. 
	ld (bc),a			;2191	02 	. 
	ld (bc),a			;2192	02 	. 
	inc bc			;2193	03 	. 
	inc bc			;2194	03 	. 
	ld bc,l0101h		;2195	01 01 01 	. . . 
	ld bc,l0000h		;2198	01 00 00 	. . . 
	nop			;219b	00 	. 
	nop			;219c	00 	. 
	jr c,$+26		;219d	38 18 	8 . 
	ret c			;219f	d8 	. 
	ret m			;21a0	f8 	. 
	nop			;21a1	00 	. 
	jr nz,l2164h		;21a2	20 c0 	  . 
	ret nz			;21a4	c0 	. 
	nop			;21a5	00 	. 
	and b			;21a6	a0 	. 
	ld b,b			;21a7	40 	@ 
	ld b,b			;21a8	40 	@ 
	nop			;21a9	00 	. 
	and b			;21aa	a0 	. 
	ld b,b			;21ab	40 	@ 
	ld b,b			;21ac	40 	@ 
	nop			;21ad	00 	. 
	ld h,b			;21ae	60 	` 
	add a,b			;21af	80 	. 
	add a,b			;21b0	80 	. 
	nop			;21b1	00 	. 
	ld (hl),b			;21b2	70 	p 
	add a,b			;21b3	80 	. 
	add a,b			;21b4	80 	. 
	nop			;21b5	00 	. 
	jr nc,l2178h		;21b6	30 c0 	0 . 
	ret nz			;21b8	c0 	. 
	ret po			;21b9	e0 	. 
	ret po			;21ba	e0 	. 
	ret po			;21bb	e0 	. 
	ret po			;21bc	e0 	. 
	ld b,000h		;21bd	06 00 	. . 
	nop			;21bf	00 	. 
	nop			;21c0	00 	. 
	rra			;21c1	1f 	. 
	ld d,016h		;21c2	16 16 	. . 
	ld d,01fh		;21c4	16 1f 	. . 
	inc d			;21c6	14 	. 
	inc d			;21c7	14 	. 
	inc d			;21c8	14 	. 
	ld l,a			;21c9	6f 	o 
	ld l,b			;21ca	68 	h 
	ld c,b			;21cb	48 	H 
	ld c,c			;21cc	49 	I 
	ld h,025h		;21cd	26 25 	& % 
	inc a			;21cf	3c 	< 
	daa			;21d0	27 	' 
	call c,09cdch		;21d1	dc dc 9c 	. . . 
	sbc a,a			;21d4	9f 	. 
	ld e,e			;21d5	5b 	[ 
	ld e,e			;21d6	5b 	[ 
	ld a,e			;21d7	7b 	{ 
	ld e,h			;21d8	5c 	\ 
	scf			;21d9	37 	7 
	dec (hl)			;21da	35 	5 
	dec (hl)			;21db	35 	5 
	jr c,$+50		;21dc	38 30 	8 0 
	nop			;21de	00 	. 
	nop			;21df	00 	. 
	nop			;21e0	00 	. 
	ret m			;21e1	f8 	. 
	or b			;21e2	b0 	. 
	or b			;21e3	b0 	. 
	or b			;21e4	b0 	. 
	ret m			;21e5	f8 	. 
	djnz l21f8h		;21e6	10 10 	. . 
	sub b			;21e8	90 	. 
	ld a,d			;21e9	7a 	z 
	adc a,d			;21ea	8a 	. 
	ex af,af'			;21eb	08 	. 
	ret z			;21ec	c8 	. 
	or d			;21ed	b2 	. 
	jp nc,0721eh		;21ee	d2 1e 72 	. . r 
	sbc a,l			;21f1	9d 	. 
	dec e			;21f2	1d 	. 
	inc e			;21f3	1c 	. 
	call m,0e9e9h		;21f4	fc e9 e9 	. . . 
	rst 28h			;21f7	ef 	. 
l21f8h:
	sbc a,c			;21f8	99 	. 
	or 0d6h		;21f9	f6 d6 	. . 
	sub 08eh		;21fb	d6 8e 	. . 
	ld e,a			;21fd	5f 	_ 
	ld e,l			;21fe	5d 	] 
	ld a,l			;21ff	7d 	} 
	ld d,b			;2200	50 	P 
	rst 38h			;2201	ff 	. 
	ld sp,hl			;2202	f9 	. 
	cp c			;2203	b9 	. 
	or b			;2204	b0 	. 
	ld e,a			;2205	5f 	_ 
	ld e,c			;2206	59 	Y 
	ld e,c			;2207	59 	Y 
	ld d,b			;2208	50 	P 
	ld e,01ah		;2209	1e 1a 	. . 
	ld a,(de)			;220b	1a 	. 
	ld de,l191dh		;220c	11 1d 19 	. . . 
	add hl,de			;220f	19 	. 
	inc de			;2210	13 	. 
	rra			;2211	1f 	. 
	ld e,01fh		;2212	1e 1f 	. . 
	inc de			;2214	13 	. 
	add hl,de			;2215	19 	. 
	add hl,de			;2216	19 	. 
	add hl,de			;2217	19 	. 
	dec d			;2218	15 	. 
	inc e			;2219	1c 	. 
	inc e			;221a	1c 	. 
	inc e			;221b	1c 	. 
	inc d			;221c	14 	. 
	ret m			;221d	f8 	. 
	ret c			;221e	d8 	. 
	call c,0fe80h		;221f	dc 80 fe 	. . . 
	adc a,0cch		;2222	ce cc 	. . 
	add a,h			;2224	84 	. 
	jp m,0cacah		;2225	fa ca ca 	. . . 
	add a,d			;2228	82 	. 
	cp b			;2229	b8 	. 
	xor b			;222a	a8 	. 
	xor b			;222b	a8 	. 
l222ch:
	ret nz			;222c	c0 	. 
	ret c			;222d	d8 	. 
	ld c,b			;222e	48 	H 
	ret z			;222f	c8 	. 
	ret po			;2230	e0 	. 
	ld a,b			;2231	78 	x 
	jr c,l222ch		;2232	38 f8 	8 . 
	ret po			;2234	e0 	. 
	ret z			;2235	c8 	. 
	ret z			;2236	c8 	. 
	ret z			;2237	c8 	. 
	ret nc			;2238	d0 	. 
	jr l2253h		;2239	18 18 	. . 
	jr l224dh		;223b	18 10 	. . 
	ld bc,l0101h		;223d	01 01 01 	. . . 
	ld bc,l0e0eh		;2240	01 0e 0e 	. . . 
	dec bc			;2243	0b 	. 
	ld a,(bc)			;2244	0a 	. 
	inc d			;2245	14 	. 
	inc d			;2246	14 	. 
	ld e,014h		;2247	1e 14 	. . 
	halt			;2249	76 	v 
	ld d,01eh		;224a	16 1e 	. . 
	rla			;224c	17 	. 
l224dh:
	defb 0fdh,04dh	;ld c,iyl		;224d	fd 4d 	. M 
	ld c,l			;224f	4d 	M 
	ld c,(hl)			;2250	4e 	N 
	ei			;2251	fb 	. 
	ld h,d			;2252	62 	b 
l2253h:
	ld h,d			;2253	62 	b 
	ld l,h			;2254	6c 	l 
	ld (hl),e			;2255	73 	s 
	dec bc			;2256	0b 	. 
	inc bc			;2257	03 	. 
	inc e			;2258	1c 	. 
	ld l,a			;2259	6f 	o 
	ld e,e			;225a	5b 	[ 
	ld b,e			;225b	43 	C 
	ld (hl),a			;225c	77 	w 
	add a,b			;225d	80 	. 
	add a,b			;225e	80 	. 
	nop			;225f	00 	. 
	nop			;2260	00 	. 
	ld h,b			;2261	60 	` 
	ld h,b			;2262	60 	` 
	ld b,b			;2263	40 	@ 
	ld b,b			;2264	40 	@ 
	and b			;2265	a0 	. 
	and b			;2266	a0 	. 
	ret po			;2267	e0 	. 
	and b			;2268	a0 	. 
	rst 38h			;2269	ff 	. 
	rst 38h			;226a	ff 	. 
	rst 38h			;226b	ff 	. 
	nop			;226c	00 	. 
	defb 0fdh,085h	;add a,iyl		;226d	fd 85 	. . 
	add a,l			;226f	85 	. 
	inc bc			;2270	03 	. 
	or 016h		;2271	f6 16 	. . 
	ld d,00eh		;2273	16 0e 	. . 
	xor 0eah		;2275	ee ea 	. . 
	xor 01eh		;2277	ee 1e 	. . 
	jp m,0fef2h		;2279	fa f2 fe 	. . . 
	cp 073h		;227c	fe 73 	. s 
	dec bc			;227e	0b 	. 
	inc bc			;227f	03 	. 
	inc e			;2280	1c 	. 
	ei			;2281	fb 	. 
	ld b,d			;2282	42 	B 
	ld b,d			;2283	42 	B 
	ld c,h			;2284	4c 	L 
	defb 0fdh,06dh	;ld iyl,iyl		;2285	fd 6d 	. m 
	ld l,l			;2287	6d 	m 
	ld l,(hl)			;2288	6e 	n 
	ld a,(hl)			;2289	7e 	~ 
	ld e,01eh		;228a	1e 1e 	. . 
	rra			;228c	1f 	. 
	ld (hl),l			;228d	75 	u 
	ld (hl),l			;228e	75 	u 
	ld a,a			;228f	7f 	 
	ld (hl),l			;2290	75 	u 
	ld d,016h		;2291	16 16 	. . 
	rra			;2293	1f 	. 
	ld d,00dh		;2294	16 0d 	. . 
	dec c			;2296	0d 	. 
	add hl,bc			;2297	09 	. 
	add hl,bc			;2298	09 	. 
	inc b			;2299	04 	. 
	inc b			;229a	04 	. 
	inc b			;229b	04 	. 
	inc b			;229c	04 	. 
	xor 0eah		;229d	ee ea 	. . 
	xor 01eh		;229f	ee 1e 	. . 
	call p,sub_1414h		;22a1	f4 14 14 	. . . 
	inc c			;22a4	0c 	. 
	defb 0fdh,085h	;add a,iyl		;22a5	fd 85 	. . 
	add a,l			;22a7	85 	. 
	inc bc			;22a8	03 	. 
	rst 38h			;22a9	ff 	. 
	rst 38h			;22aa	ff 	. 
	rst 38h			;22ab	ff 	. 
	nop			;22ac	00 	. 
	rst 38h			;22ad	ff 	. 
	rst 38h			;22ae	ff 	. 
	rst 38h			;22af	ff 	. 
	rst 38h			;22b0	ff 	. 
	ret nz			;22b1	c0 	. 
	ret nz			;22b2	c0 	. 
	ret po			;22b3	e0 	. 
	ret nz			;22b4	c0 	. 
	and b			;22b5	a0 	. 
	and b			;22b6	a0 	. 
	jr nz,l22d9h		;22b7	20 20 	    
	add a,b			;22b9	80 	. 
	add a,b			;22ba	80 	. 
	add a,b			;22bb	80 	. 
	add a,b			;22bc	80 	. 
	inc c			;22bd	0c 	. 
	inc c			;22be	0c 	. 
	ex af,af'			;22bf	08 	. 
	ex af,af'			;22c0	08 	. 
	dec (hl)			;22c1	35 	5 
	dec (hl)			;22c2	35 	5 
	daa			;22c3	27 	' 
	dec h			;22c4	25 	% 
	dec d			;22c5	15 	. 
	dec d			;22c6	15 	. 
	rra			;22c7	1f 	. 
	dec d			;22c8	15 	. 
	halt			;22c9	76 	v 
	ld d,01eh		;22ca	16 1e 	. . 
	rla			;22cc	17 	. 
	defb 0fdh,06dh	;ld iyl,iyl		;22cd	fd 6d 	. m 
	ld l,l			;22cf	6d 	m 
	ld l,(hl)			;22d0	6e 	n 
	ei			;22d1	fb 	. 
	ld b,d			;22d2	42 	B 
	ld b,d			;22d3	42 	B 
	ld c,h			;22d4	4c 	L 
	ld (hl),e			;22d5	73 	s 
	dec bc			;22d6	0b 	. 
	inc bc			;22d7	03 	. 
	inc e			;22d8	1c 	. 
l22d9h:
	ld l,a			;22d9	6f 	o 
	ld e,e			;22da	5b 	[ 
	ld b,e			;22db	43 	C 
	ld (hl),a			;22dc	77 	w 
	nop			;22dd	00 	. 
	nop			;22de	00 	. 
	nop			;22df	00 	. 
	nop			;22e0	00 	. 
	ret nz			;22e1	c0 	. 
	ret nz			;22e2	c0 	. 
	add a,b			;22e3	80 	. 
	add a,b			;22e4	80 	. 
	ld c,a			;22e5	4f 	O 
	ld c,a			;22e6	4f 	O 
	rst 8			;22e7	cf 	. 
	ld d,b			;22e8	50 	P 
	ld a,l			;22e9	7d 	} 
	ld (hl),c			;22ea	71 	q 
	ld (hl),c			;22eb	71 	q 
	add a,e			;22ec	83 	. 
	jp m,08282h		;22ed	fa 82 82 	. . . 
	ld b,0f4h		;22f0	06 f4 	. . 
	inc d			;22f2	14 	. 
	inc d			;22f3	14 	. 
	inc c			;22f4	0c 	. 
	cp 0f2h		;22f5	fe f2 	. . 
	cp 03eh		;22f7	fe 3e 	. > 
	jp p,0fee2h		;22f9	f2 e2 fe 	. . . 
	cp 073h		;22fc	fe 73 	. s 
	dec bc			;22fe	0b 	. 
	inc bc			;22ff	03 	. 
	inc e			;2300	1c 	. 
	ei			;2301	fb 	. 
	ld h,d			;2302	62 	b 
	ld h,d			;2303	62 	b 
	ld l,h			;2304	6c 	l 
	defb 0fdh,04dh	;ld c,iyl		;2305	fd 4d 	. M 
	ld c,l			;2307	4d 	M 
	ld c,(hl)			;2308	4e 	N 
	or 096h		;2309	f6 96 	. . 
	sbc a,(hl)			;230b	9e 	. 
	sub a			;230c	97 	. 
	ld (hl),a			;230d	77 	w 
	ld (hl),a			;230e	77 	w 
	ld a,a			;230f	7f 	 
	ld (hl),a			;2310	77 	w 
	dec a			;2311	3d 	= 
	dec a			;2312	3d 	= 
	cpl			;2313	2f 	/ 
	dec l			;2314	2d 	- 
	ld e,01eh		;2315	1e 1e 	. . 
	ld a,(de)			;2317	1a 	. 
	ld a,(de)			;2318	1a 	. 
	inc b			;2319	04 	. 
	inc b			;231a	04 	. 
	inc b			;231b	04 	. 
	inc b			;231c	04 	. 
	cp 0f2h		;231d	fe f2 	. . 
	cp 03eh		;231f	fe 3e 	. > 
	call p,sub_1414h		;2321	f4 14 14 	. . . 
	inc c			;2324	0c 	. 
	jp m,08282h		;2325	fa 82 82 	. . . 
	ld b,07dh		;2328	06 7d 	. } 
	ld (hl),c			;232a	71 	q 
	ld (hl),c			;232b	71 	q 
	add a,e			;232c	83 	. 
	rst 28h			;232d	ef 	. 
	rst 28h			;232e	ef 	. 
	rst 28h			;232f	ef 	. 
	ret p			;2330	f0 	. 
	rra			;2331	1f 	. 
	rra			;2332	1f 	. 
	sbc a,a			;2333	9f 	. 
	rra			;2334	1f 	. 
	ret nz			;2335	c0 	. 
	ret nz			;2336	c0 	. 
	add a,b			;2337	80 	. 
	add a,b			;2338	80 	. 
	ld b,b			;2339	40 	@ 
	ld b,b			;233a	40 	@ 
	ld b,b			;233b	40 	@ 
	ld b,b			;233c	40 	@ 
	jr c,l2377h		;233d	38 38 	8 8 
	jr c,$+42		;233f	38 28 	8 ( 
	dec (hl)			;2341	35 	5 
	dec (hl)			;2342	35 	5 
	dec (hl)			;2343	35 	5 
	dec l			;2344	2d 	- 
	dec sp			;2345	3b 	; 
	ld (l2733h),a		;2346	32 33 27 	2 3 ' 
	dec a			;2349	3d 	= 
	jr nc,l237dh		;234a	30 31 	0 1 
	inc hl			;234c	23 	# 
	cpl			;234d	2f 	/ 
	dec hl			;234e	2b 	+ 
	dec hl			;234f	2b 	+ 
	ld sp,l191fh		;2350	31 1f 19 	1 . . 
	add hl,de			;2353	19 	. 
	ld de,0d9dfh		;2354	11 df d9 	. . . 
	sbc a,c			;2357	99 	. 
	sub b			;2358	90 	. 
	ld d,a			;2359	57 	W 
	ld d,l			;235a	55 	U 
	ld (hl),l			;235b	75 	u 
	ld e,b			;235c	58 	X 
	inc c			;235d	0c 	. 
	inc c			;235e	0c 	. 
	inc c			;235f	0c 	. 
	ex af,af'			;2360	08 	. 
	call nc,0d4d4h		;2361	d4 d4 d4 	. . . 
	ret c			;2364	d8 	. 
	ld l,h			;2365	6c 	l 
	inc h			;2366	24 	$ 
	call po,05cf0h		;2367	e4 f0 5c 	. . \ 
	inc b			;236a	04 	. 
	call nz,0f8e0h		;236b	c4 e0 f8 	. . . 
	ld l,b			;236e	68 	h 
	ret pe			;236f	e8 	. 
	call nz,0c8f8h		;2370	c4 f8 c8 	. . . 
	ret z			;2373	c8 	. 
	ret nz			;2374	c0 	. 
	cp 0ceh		;2375	fe ce 	. . 
l2377h:
	call z,0f284h		;2377	cc 84 f2 	. . . 
	jp nc,08ad6h		;237a	d2 d6 8a 	. . . 
l237dh:
	scf			;237d	37 	7 
	dec (hl)			;237e	35 	5 
	dec (hl)			;237f	35 	5 
	jr c,l23ddh		;2380	38 5b 	8 [ 
	ld e,e			;2382	5b 	[ 
	ld a,e			;2383	7b 	{ 
	ld e,h			;2384	5c 	\ 
	call m,0bcfch		;2385	fc fc bc 	. . . 
	cp a			;2388	bf 	. 
	ld h,(hl)			;2389	66 	f 
	ld h,l			;238a	65 	e 
	ld a,h			;238b	7c 	| 
	ld h,a			;238c	67 	g 
	ld a,a			;238d	7f 	 
	ld a,b			;238e	78 	x 
	ld e,b			;238f	58 	X 
	ld e,c			;2390	59 	Y 
	ccf			;2391	3f 	? 
	jr nc,l23c4h		;2392	30 30 	0 0 
	jr nc,l23b5h		;2394	30 1f 	0 . 
	djnz l23aeh		;2396	10 16 	. . 
	ld d,00eh		;2398	16 0e 	. . 
	ex af,af'			;239a	08 	. 
	ex af,af'			;239b	08 	. 
	ex af,af'			;239c	08 	. 
	or 0d6h		;239d	f6 d6 	. . 
	sub 08eh		;239f	d6 8e 	. . 
	ret pe			;23a1	e8 	. 
	ret pe			;23a2	e8 	. 
	xor 098h		;23a3	ee 98 	. . 
	sbc a,a			;23a5	9f 	. 
	rra			;23a6	1f 	. 
	ld e,0feh		;23a7	1e fe 	. . 
	or c			;23a9	b1 	. 
	pop de			;23aa	d1 	. 
	dec e			;23ab	1d 	. 
	ld (hl),c			;23ac	71 	q 
	ld a,(hl)			;23ad	7e 	~ 
l23aeh:
	adc a,(hl)			;23ae	8e 	. 
	inc c			;23af	0c 	. 
	call z,sub_02fah		;23b0	cc fa 02 	. . . 
	ld (bc),a			;23b3	02 	. 
	add a,d			;23b4	82 	. 
l23b5h:
	ret m			;23b5	f8 	. 
	add a,b			;23b6	80 	. 
	or b			;23b7	b0 	. 
	or b			;23b8	b0 	. 
	jr nc,l23bbh		;23b9	30 00 	0 . 
l23bbh:
	nop			;23bb	00 	. 
	nop			;23bc	00 	. 
	ld b,b			;23bd	40 	@ 
	ld b,b			;23be	40 	@ 
	ld a,b			;23bf	78 	x 
	ld e,b			;23c0	58 	X 
	jr nc,l23e3h		;23c1	30 20 	0   
	inc a			;23c3	3c 	< 
l23c4h:
	inc (hl)			;23c4	34 	4 
	jr nc,l23e7h		;23c5	30 20 	0   
	ccf			;23c7	3f 	? 
	scf			;23c8	37 	7 
	ld a,(hl)			;23c9	7e 	~ 
	ld h,d			;23ca	62 	b 
	ld e,l			;23cb	5d 	] 
	ld e,l			;23cc	5d 	] 
	ld e,l			;23cd	5d 	] 
	ld e,h			;23ce	5c 	\ 
	ld h,e			;23cf	63 	c 
	ld b,c			;23d0	41 	A 
	cp a			;23d1	bf 	. 
	adc a,c			;23d2	89 	. 
	ret nz			;23d3	c0 	. 
	add a,b			;23d4	80 	. 
	or (hl)			;23d5	b6 	. 
	sub h			;23d6	94 	. 
	defb 0ddh,0d4h,088h	;illegal sequence		;23d7	dd d4 88 	. . . 
	add a,b			;23da	80 	. 
	rst 38h			;23db	ff 	. 
	ret z			;23dc	c8 	. 
l23ddh:
	ld l,020h		;23dd	2e 20 	.   
	ld a,02eh		;23df	3e 2e 	> . 
	djnz $+18		;23e1	10 10 	. . 
l23e3h:
	ld e,01ah		;23e3	1e 1a 	. . 
	ret nz			;23e5	c0 	. 
	nop			;23e6	00 	. 
l23e7h:
	cp 0fah		;23e7	fe fa 	. . 
	ld (bc),a			;23e9	02 	. 
	nop			;23ea	00 	. 
	cp 066h		;23eb	fe 66 	. f 
	ld (bc),a			;23ed	02 	. 
	ld (bc),a			;23ee	02 	. 
	cp 086h		;23ef	fe 86 	. . 
	sub d			;23f1	92 	. 
	djnz $-16		;23f2	10 ee 	. . 
	add a,d			;23f4	82 	. 
	cp h			;23f5	bc 	. 
	inc (hl)			;23f6	34 	4 
	jp nz,0fc82h		;23f7	c2 82 fc 	. . . 
	ld a,h			;23fa	7c 	| 
	add a,e			;23fb	83 	. 
	add a,d			;23fc	82 	. 
	ld b,c			;23fd	41 	A 
	ld b,c			;23fe	41 	A 
	ld a,a			;23ff	7f 	 
	ld h,c			;2400	61 	a 
	inc hl			;2401	23 	# 
	ld (03f3fh),hl		;2402	22 3f 3f 	" ? ? 
	rra			;2405	1f 	. 
	dec e			;2406	1d 	. 
	ld e,01eh		;2407	1e 1e 	. . 
	inc c			;2409	0c 	. 
	ex af,af'			;240a	08 	. 
	rrca			;240b	0f 	. 
	dec c			;240c	0d 	. 
	add hl,de			;240d	19 	. 
	djnz l242fh		;240e	10 1f 	. . 
	rra			;2410	1f 	. 
	ccf			;2411	3f 	? 
	jr nc,l2453h		;2412	30 3f 	0 ? 
	ccf			;2414	3f 	? 
	cpl			;2415	2f 	/ 
	ld hl,l2f3fh		;2416	21 3f 2f 	! ? / 
	ld e,01eh		;2419	1e 1e 	. . 
	ld e,01eh		;241b	1e 1e 	. . 
	ld hl,0df21h		;241d	21 21 df 	! ! . 
	add a,e			;2420	83 	. 
	ld (bc),a			;2421	02 	. 
	nop			;2422	00 	. 
	cp 046h		;2423	fe 46 	. F 
	add a,d			;2425	82 	. 
	ld (bc),a			;2426	02 	. 
	cp 0f6h		;2427	fe f6 	. . 
	jp po,0fe00h		;2429	e2 00 fe 	. . . 
	jp m,l00f8h		;242c	fa f8 00 	. . . 
l242fh:
	cp 0feh		;242f	fe fe 	. . 
	call m,0fff8h		;2431	fc f8 ff 	. . . 
	rst 38h			;2434	ff 	. 
	rla			;2435	17 	. 
	djnz $+33		;2436	10 1f 	. . 
	rla			;2438	17 	. 
	rrca			;2439	0f 	. 
	rrca			;243a	0f 	. 
	rrca			;243b	0f 	. 
	rrca			;243c	0f 	. 
	nop			;243d	00 	. 
	nop			;243e	00 	. 
	nop			;243f	00 	. 
	nop			;2440	00 	. 
	nop			;2441	00 	. 
	nop			;2442	00 	. 
	nop			;2443	00 	. 
	nop			;2444	00 	. 
	nop			;2445	00 	. 
	nop			;2446	00 	. 
	nop			;2447	00 	. 
	nop			;2448	00 	. 
	ld c,00eh		;2449	0e 0e 	. . 
	ld a,(bc)			;244b	0a 	. 
	ld a,(bc)			;244c	0a 	. 
	dec a			;244d	3d 	= 
	inc a			;244e	3c 	< 
	inc hl			;244f	23 	# 
	ld hl,0545ch		;2450	21 5c 54 	! \ T 
l2453h:
	ld (hl),e			;2453	73 	s 
	ld d,b			;2454	50 	P 
	call c,0e384h		;2455	dc 84 e3 	. . . 
	pop bc			;2458	c1 	. 
	ld b,b			;2459	40 	@ 
	ld b,b			;245a	40 	@ 
	ld a,a			;245b	7f 	 
	ld h,c			;245c	61 	a 
	nop			;245d	00 	. 
	nop			;245e	00 	. 
	nop			;245f	00 	. 
	nop			;2460	00 	. 
	nop			;2461	00 	. 
	nop			;2462	00 	. 
	nop			;2463	00 	. 
	nop			;2464	00 	. 
	nop			;2465	00 	. 
	nop			;2466	00 	. 
	nop			;2467	00 	. 
	nop			;2468	00 	. 
	and b			;2469	a0 	. 
	and b			;246a	a0 	. 
	ret nz			;246b	c0 	. 
	add a,b			;246c	80 	. 
	and c			;246d	a1 	. 
	and c			;246e	a1 	. 
	jp po,081a0h		;246f	e2 a0 81 	. . . 
	add a,c			;2472	81 	. 
	rst 38h			;2473	ff 	. 
	rst 20h			;2474	e7 	. 
	add a,d			;2475	82 	. 
	ld (bc),a			;2476	02 	. 
	cp 0feh		;2477	fe fe 	. . 
	cp 002h		;2479	fe 02 	. . 
	cp 0feh		;247b	fe fe 	. . 
	ld b,c			;247d	41 	A 
	ld b,b			;247e	40 	@ 
	ld a,a			;247f	7f 	 
	ld (hl),a			;2480	77 	w 
	ld (l3f22h),hl		;2481	22 22 3f 	" " ? 
	ccf			;2484	3f 	? 
	dec e			;2485	1d 	. 
	dec e			;2486	1d 	. 
	ld e,01eh		;2487	1e 1e 	. . 
	ld e,(hl)			;2489	5e 	^ 
	ld d,b			;248a	50 	P 
	ld a,a			;248b	7f 	 
	ld e,(hl)			;248c	5e 	^ 
	rst 8			;248d	cf 	. 
	call z,09fbfh		;248e	cc bf 9f 	. . . 
	ld (hl),e			;2491	73 	s 
	ld (hl),e			;2492	73 	s 
	ld (hl),e			;2493	73 	s 
	ld (hl),e			;2494	73 	s 
	nop			;2495	00 	. 
	nop			;2496	00 	. 
	nop			;2497	00 	. 
	nop			;2498	00 	. 
	nop			;2499	00 	. 
	nop			;249a	00 	. 
	nop			;249b	00 	. 
	nop			;249c	00 	. 
	ld h,020h		;249d	26 20 	&   
	sbc a,0c6h		;249f	de c6 	. . 
	ret p			;24a1	f0 	. 
	ret p			;24a2	f0 	. 
	rrca			;24a3	0f 	. 
	ld (bc),a			;24a4	02 	. 
	rst 30h			;24a5	f7 	. 
	ld sp,0070fh		;24a6	31 0f 07 	1 . . 
	adc a,0c6h		;24a9	ce c6 	. . 
	ld a,(hl)			;24ab	7e 	~ 
	ld e,(hl)			;24ac	5e 	^ 
	call m,0fc18h		;24ad	fc 18 fc 	. . . 
	call m,0e2f2h		;24b0	fc f2 e2 	. . . 
	call m,sub_1ef8h		;24b3	fc f8 1e 	. . . 
	ld e,01eh		;24b6	1e 1e 	. . 
	ld e,000h		;24b8	1e 00 	. . 
	nop			;24ba	00 	. 
	nop			;24bb	00 	. 
	nop			;24bc	00 	. 
	ld bc,l0101h		;24bd	01 01 01 	. . . 
	ld bc,l0a0eh		;24c0	01 0e 0a 	. . . 
	rrca			;24c3	0f 	. 
	dec bc			;24c4	0b 	. 
	inc b			;24c5	04 	. 
	inc b			;24c6	04 	. 
	rlca			;24c7	07 	. 
	ld b,014h		;24c8	06 14 	. . 
	inc d			;24ca	14 	. 
	rlca			;24cb	07 	. 
	ld b,014h		;24cc	06 14 	. . 
	inc d			;24ce	14 	. 
	rra			;24cf	1f 	. 
	ld d,00eh		;24d0	16 0e 	. . 
	ld c,00fh		;24d2	0e 0f 	. . 
sub_24d4h:
	rrca			;24d4	0f 	. 
	inc de			;24d5	13 	. 
	djnz l24f7h		;24d6	10 1f 	. . 
	rla			;24d8	17 	. 
	inc c			;24d9	0c 	. 
	ex af,af'			;24da	08 	. 
	rrca			;24db	0f 	. 
l24dch:
	ld c,080h		;24dc	0e 80 	. . 
	nop			;24de	00 	. 
	add a,b			;24df	80 	. 
	add a,b			;24e0	80 	. 
	jr nz,l2503h		;24e1	20 20 	    
	ret nz			;24e3	c0 	. 
	nop			;24e4	00 	. 
	ret p			;24e5	f0 	. 
	or b			;24e6	b0 	. 
	jr nz,l2509h		;24e7	20 20 	    
	ret p			;24e9	f0 	. 
	sub b			;24ea	90 	. 
	nop			;24eb	00 	. 
	nop			;24ec	00 	. 
	ld a,b			;24ed	78 	x 
	ld a,b			;24ee	78 	x 
	add a,b			;24ef	80 	. 
	nop			;24f0	00 	. 
	ex af,af'			;24f1	08 	. 
	ex af,af'			;24f2	08 	. 
	ret m			;24f3	f8 	. 
	ex af,af'			;24f4	08 	. 
	djnz l24f7h		;24f5	10 00 	. . 
l24f7h:
	ret p			;24f7	f0 	. 
	ret nc			;24f8	d0 	. 
	ret m			;24f9	f8 	. 
	jr l24dch		;24fa	18 e0 	. . 
	ret po			;24fc	e0 	. 
	ld b,004h		;24fd	06 04 	. . 
	rlca			;24ff	07 	. 
	rlca			;2500	07 	. 
	inc bc			;2501	03 	. 
	ld (bc),a			;2502	02 	. 
l2503h:
	inc bc			;2503	03 	. 
	inc bc			;2504	03 	. 
	inc de			;2505	13 	. 
	ld (de),a			;2506	12 	. 
	dec de			;2507	1b 	. 
	inc de			;2508	13 	. 
l2509h:
	dec de			;2509	1b 	. 
	ld (de),a			;250a	12 	. 
	rra			;250b	1f 	. 
	dec de			;250c	1b 	. 
	ex af,af'			;250d	08 	. 
	ex af,af'			;250e	08 	. 
	rrca			;250f	0f 	. 
	rrca			;2510	0f 	. 
	inc c			;2511	0c 	. 
	ex af,af'			;2512	08 	. 
	rrca			;2513	0f 	. 
	rrca			;2514	0f 	. 
	rlca			;2515	07 	. 
	inc b			;2516	04 	. 
	rlca			;2517	07 	. 
	rlca			;2518	07 	. 
	inc bc			;2519	03 	. 
	inc bc			;251a	03 	. 
	inc bc			;251b	03 	. 
	inc bc			;251c	03 	. 
	inc e			;251d	1c 	. 
	inc d			;251e	14 	. 
	ret po			;251f	e0 	. 
	nop			;2520	00 	. 
	inc c			;2521	0c 	. 
	inc c			;2522	0c 	. 
	ret p			;2523	f0 	. 
	add a,b			;2524	80 	. 
	inc b			;2525	04 	. 
	inc b			;2526	04 	. 
	ret m			;2527	f8 	. 
	add a,b			;2528	80 	. 
	inc b			;2529	04 	. 
	inc b			;252a	04 	. 
	ret m			;252b	f8 	. 
	add a,b			;252c	80 	. 
	inc b			;252d	04 	. 
	nop			;252e	00 	. 
	call m,l1c34h		;252f	fc 34 1c 	. 4 . 
	inc b			;2532	04 	. 
	rst 38h			;2533	ff 	. 
	cp 0fbh		;2534	fe fb 	. . 
	dec de			;2536	1b 	. 
	ei			;2537	fb 	. 
	ei			;2538	fb 	. 
	ret po			;2539	e0 	. 
	ret po			;253a	e0 	. 
	ret po			;253b	e0 	. 
	ret po			;253c	e0 	. 
l253dh:
	inc bc			;253d	03 	. 
	inc bc			;253e	03 	. 
	inc bc			;253f	03 	. 
	nop			;2540	00 	. 
	rra			;2541	1f 	. 
	rra			;2542	1f 	. 
	rra			;2543	1f 	. 
	nop			;2544	00 	. 
	ld a,a			;2545	7f 	 
	ld h,h			;2546	64 	d 
	ld h,h			;2547	64 	d 
	nop			;2548	00 	. 
	ld a,a			;2549	7f 	 
	ld b,h			;254a	44 	D 
	ld b,h			;254b	44 	D 
	nop			;254c	00 	. 
	rst 38h			;254d	ff 	. 
	adc a,b			;254e	88 	. 
	adc a,b			;254f	88 	. 
	nop			;2550	00 	. 
	rst 38h			;2551	ff 	. 
	cp b			;2552	b8 	. 
	cp b			;2553	b8 	. 
	nop			;2554	00 	. 
	rst 38h			;2555	ff 	. 
	ret			;2556	c9 	. 
	ret			;2557	c9 	. 
	nop			;2558	00 	. 
	rst 38h			;2559	ff 	. 
	pop bc			;255a	c1 	. 
	pop bc			;255b	c1 	. 
	nop			;255c	00 	. 
	ret po			;255d	e0 	. 
	ret po			;255e	e0 	. 
	ret po			;255f	e0 	. 
	nop			;2560	00 	. 
	ret m			;2561	f8 	. 
	ret m			;2562	f8 	. 
	ret m			;2563	f8 	. 
	nop			;2564	00 	. 
	call m,l3c3ch		;2565	fc 3c 3c 	. < < 
	nop			;2568	00 	. 
	call m,l1c1ch		;2569	fc 1c 1c 	. . . 
	nop			;256c	00 	. 
	cp 066h		;256d	fe 66 	. f 
	ld h,(hl)			;256f	66 	f 
	nop			;2570	00 	. 
	cp 086h		;2571	fe 86 	. . 
	add a,(hl)			;2573	86 	. 
	nop			;2574	00 	. 
	rst 38h			;2575	ff 	. 
	inc bc			;2576	03 	. 
	inc bc			;2577	03 	. 
	nop			;2578	00 	. 
	rst 38h			;2579	ff 	. 
	inc bc			;257a	03 	. 
	inc bc			;257b	03 	. 
	nop			;257c	00 	. 
	ld a,a			;257d	7f 	 
	ld a,h			;257e	7c 	| 
	ld a,h			;257f	7c 	| 
	nop			;2580	00 	. 
	ld a,a			;2581	7f 	 
	ld (hl),b			;2582	70 	p 
	ld (hl),b			;2583	70 	p 
	nop			;2584	00 	. 
	rst 38h			;2585	ff 	. 
	ret nz			;2586	c0 	. 
	ret nz			;2587	c0 	. 
	nop			;2588	00 	. 
	rst 38h			;2589	ff 	. 
	ret nz			;258a	c0 	. 
	ret nz			;258b	c0 	. 
	nop			;258c	00 	. 
	rst 38h			;258d	ff 	. 
	rst 0			;258e	c7 	. 
	rst 0			;258f	c7 	. 
	nop			;2590	00 	. 
	ld a,a			;2591	7f 	 
	ld a,a			;2592	7f 	 
	ld a,a			;2593	7f 	 
	nop			;2594	00 	. 
	ccf			;2595	3f 	? 
	ccf			;2596	3f 	? 
	ccf			;2597	3f 	? 
	nop			;2598	00 	. 
	dec de			;2599	1b 	. 
	dec de			;259a	1b 	. 
	dec de			;259b	1b 	. 
	nop			;259c	00 	. 
	rst 38h			;259d	ff 	. 
	inc bc			;259e	03 	. 
	inc bc			;259f	03 	. 
	nop			;25a0	00 	. 
	rst 38h			;25a1	ff 	. 
	inc bc			;25a2	03 	. 
	inc bc			;25a3	03 	. 
	nop			;25a4	00 	. 
	rst 38h			;25a5	ff 	. 
	inc bc			;25a6	03 	. 
	inc bc			;25a7	03 	. 
	nop			;25a8	00 	. 
	rst 38h			;25a9	ff 	. 
	rst 0			;25aa	c7 	. 
	rst 0			;25ab	c7 	. 
	nop			;25ac	00 	. 
	cp 08eh		;25ad	fe 8e 	. . 
	adc a,(hl)			;25af	8e 	. 
	nop			;25b0	00 	. 
	call m,07c7ch		;25b1	fc 7c 7c 	. | | 
	nop			;25b4	00 	. 
	ret p			;25b5	f0 	. 
	ret p			;25b6	f0 	. 
	ret p			;25b7	f0 	. 
	nop			;25b8	00 	. 
	ret nz			;25b9	c0 	. 
	ret nz			;25ba	c0 	. 
	ret nz			;25bb	c0 	. 
	nop			;25bc	00 	. 
	nop			;25bd	00 	. 
	nop			;25be	00 	. 
	nop			;25bf	00 	. 
	nop			;25c0	00 	. 
	nop			;25c1	00 	. 
	nop			;25c2	00 	. 
	nop			;25c3	00 	. 
	nop			;25c4	00 	. 
	nop			;25c5	00 	. 
	nop			;25c6	00 	. 
	nop			;25c7	00 	. 
	nop			;25c8	00 	. 
	inc bc			;25c9	03 	. 
	inc bc			;25ca	03 	. 
	inc bc			;25cb	03 	. 
	nop			;25cc	00 	. 
	rlca			;25cd	07 	. 
	ld b,006h		;25ce	06 06 	. . 
	nop			;25d0	00 	. 
	rrca			;25d1	0f 	. 
	inc c			;25d2	0c 	. 
	inc c			;25d3	0c 	. 
	nop			;25d4	00 	. 
	rra			;25d5	1f 	. 
	add hl,de			;25d6	19 	. 
	add hl,de			;25d7	19 	. 
	nop			;25d8	00 	. 
	rra			;25d9	1f 	. 
	add hl,de			;25da	19 	. 
	add hl,de			;25db	19 	. 
	nop			;25dc	00 	. 
	nop			;25dd	00 	. 
	nop			;25de	00 	. 
	nop			;25df	00 	. 
	nop			;25e0	00 	. 
	nop			;25e1	00 	. 
	nop			;25e2	00 	. 
	nop			;25e3	00 	. 
	nop			;25e4	00 	. 
	nop			;25e5	00 	. 
	nop			;25e6	00 	. 
	nop			;25e7	00 	. 
	nop			;25e8	00 	. 
	ret po			;25e9	e0 	. 
	ret po			;25ea	e0 	. 
	ret po			;25eb	e0 	. 
	nop			;25ec	00 	. 
	ret p			;25ed	f0 	. 
	ld (hl),b			;25ee	70 	p 
	ld (hl),b			;25ef	70 	p 
	nop			;25f0	00 	. 
	ret m			;25f1	f8 	. 
	ret m			;25f2	f8 	. 
	ret m			;25f3	f8 	. 
	nop			;25f4	00 	. 
	ret m			;25f5	f8 	. 
	adc a,b			;25f6	88 	. 
	adc a,b			;25f7	88 	. 
	nop			;25f8	00 	. 
	call m,l0c0ch		;25f9	fc 0c 0c 	. . . 
	nop			;25fc	00 	. 
	rra			;25fd	1f 	. 
	dec e			;25fe	1d 	. 
	dec e			;25ff	1d 	. 
	nop			;2600	00 	. 
	rra			;2601	1f 	. 
	ld (de),a			;2602	12 	. 
	ld (de),a			;2603	12 	. 
	nop			;2604	00 	. 
	rra			;2605	1f 	. 
	jr l2620h		;2606	18 18 	. . 
	nop			;2608	00 	. 
	rrca			;2609	0f 	. 
	inc c			;260a	0c 	. 
	inc c			;260b	0c 	. 
	nop			;260c	00 	. 
	inc bc			;260d	03 	. 
	inc bc			;260e	03 	. 
	inc bc			;260f	03 	. 
	nop			;2610	00 	. 
	nop			;2611	00 	. 
	nop			;2612	00 	. 
	nop			;2613	00 	. 
	nop			;2614	00 	. 
	nop			;2615	00 	. 
	nop			;2616	00 	. 
	nop			;2617	00 	. 
	nop			;2618	00 	. 
	nop			;2619	00 	. 
	nop			;261a	00 	. 
	nop			;261b	00 	. 
	nop			;261c	00 	. 
	call m,l0c0ch		;261d	fc 0c 0c 	. . . 
l2620h:
	nop			;2620	00 	. 
	call m,l2c2ch		;2621	fc 2c 2c 	. , , 
	nop			;2624	00 	. 
	call m,l0c0ch		;2625	fc 0c 0c 	. . . 
	nop			;2628	00 	. 
	ret m			;2629	f8 	. 
	ret c			;262a	d8 	. 
	ret c			;262b	d8 	. 
	nop			;262c	00 	. 
	ret p			;262d	f0 	. 
	ret p			;262e	f0 	. 
	ret p			;262f	f0 	. 
	nop			;2630	00 	. 
	nop			;2631	00 	. 
	nop			;2632	00 	. 
	nop			;2633	00 	. 
	nop			;2634	00 	. 
	nop			;2635	00 	. 
	nop			;2636	00 	. 
	nop			;2637	00 	. 
	nop			;2638	00 	. 
	nop			;2639	00 	. 
	nop			;263a	00 	. 
	nop			;263b	00 	. 
	nop			;263c	00 	. 
	nop			;263d	00 	. 
	nop			;263e	00 	. 
	nop			;263f	00 	. 
	nop			;2640	00 	. 
	ld bc,l0101h		;2641	01 01 01 	. . . 
	dec c			;2644	0d 	. 
	inc h			;2645	24 	$ 
	jr nz,l2668h		;2646	20 20 	    
	ld a,(l1012h)		;2648	3a 12 10 	: . . 
	djnz $+31		;264b	10 1d 	. . 
	inc c			;264d	0c 	. 
	inc c			;264e	0c 	. 
	inc c			;264f	0c 	. 
	rrca			;2650	0f 	. 
	ld (bc),a			;2651	02 	. 
	ld (bc),a			;2652	02 	. 
	ld (bc),a			;2653	02 	. 
	inc bc			;2654	03 	. 
	ld (bc),a			;2655	02 	. 
	ld (bc),a			;2656	02 	. 
	ld (bc),a			;2657	02 	. 
	ld a,e			;2658	7b 	{ 
	ld e,c			;2659	59 	Y 
	ld bc,0a501h		;265a	01 01 a5 	. . . 
	ld b,b			;265d	40 	@ 
	nop			;265e	00 	. 
	nop			;265f	00 	. 
	add a,b			;2660	80 	. 
	nop			;2661	00 	. 
	nop			;2662	00 	. 
	nop			;2663	00 	. 
	ret nz			;2664	c0 	. 
	ret z			;2665	c8 	. 
	ret nz			;2666	c0 	. 
l2667h:
	ret nz			;2667	c0 	. 
l2668h:
	call nc,04040h		;2668	d4 40 40 	. @ @ 
	ld b,b			;266b	40 	@ 
	ld a,h			;266c	7c 	| 
	ld e,h			;266d	5c 	\ 
	ld e,h			;266e	5c 	\ 
	ld e,h			;266f	5c 	\ 
	ld a,h			;2670	7c 	| 
	jr nz,l2693h		;2671	20 20 	    
	jr nz,l2695h		;2673	20 20 	    
	ld c,000h		;2675	0e 00 	. . 
	nop			;2677	00 	. 
	djnz l26bdh		;2678	10 43 	. C 
	ld b,b			;267a	40 	@ 
	ld b,b			;267b	40 	@ 
	ld a,h			;267c	7c 	| 
	inc b			;267d	04 	. 
	nop			;267e	00 	. 
	nop			;267f	00 	. 
	jp m,08080h		;2680	fa 80 80 	. . . 
	add a,b			;2683	80 	. 
	cp 078h		;2684	fe 78 	. x 
	ld a,b			;2686	78 	x 
	ld a,b			;2687	78 	x 
	ld a,a			;2688	7f 	 
	inc b			;2689	04 	. 
	inc b			;268a	04 	. 
	inc b			;268b	04 	. 
	rlca			;268c	07 	. 
	inc b			;268d	04 	. 
	inc b			;268e	04 	. 
	inc b			;268f	04 	. 
	rlca			;2690	07 	. 
	ld (bc),a			;2691	02 	. 
	ld (bc),a			;2692	02 	. 
l2693h:
	ld (bc),a			;2693	02 	. 
	inc bc			;2694	03 	. 
l2695h:
	ld (bc),a			;2695	02 	. 
	ld (bc),a			;2696	02 	. 
	ld (bc),a			;2697	02 	. 
	inc bc			;2698	03 	. 
	inc bc			;2699	03 	. 
	ld (bc),a			;269a	02 	. 
	ld (bc),a			;269b	02 	. 
	ld (bc),a			;269c	02 	. 
	add hl,sp			;269d	39 	9 
	jr c,l26d8h		;269e	38 38 	8 8 
	ld a,037h		;26a0	3e 37 	> 7 
	rlca			;26a2	07 	. 
	rlca			;26a3	07 	. 
	ld c,a			;26a4	4f 	O 
	jr l26a7h		;26a5	18 00 	. . 
l26a7h:
	nop			;26a7	00 	. 
	ret po			;26a8	e0 	. 
	adc a,b			;26a9	88 	. 
	ex af,af'			;26aa	08 	. 
	ex af,af'			;26ab	08 	. 
	ld a,b			;26ac	78 	x 
	ret p			;26ad	f0 	. 
	ld (hl),b			;26ae	70 	p 
	ld (hl),b			;26af	70 	p 
	ld (hl),b			;26b0	70 	p 
	nop			;26b1	00 	. 
	nop			;26b2	00 	. 
	nop			;26b3	00 	. 
	add a,b			;26b4	80 	. 
	nop			;26b5	00 	. 
	nop			;26b6	00 	. 
	nop			;26b7	00 	. 
	nop			;26b8	00 	. 
	nop			;26b9	00 	. 
	nop			;26ba	00 	. 
	nop			;26bb	00 	. 
	nop			;26bc	00 	. 
l26bdh:
	rlca			;26bd	07 	. 
	rlca			;26be	07 	. 
	rlca			;26bf	07 	. 
	rlca			;26c0	07 	. 
	dec de			;26c1	1b 	. 
	jr l26e3h		;26c2	18 1f 	. . 
	add hl,de			;26c4	19 	. 
	inc sp			;26c5	33 	3 
	jr nz,$+65		;26c6	20 3f 	  ? 
	ld sp,l203fh		;26c8	31 3f 20 	1 ?   
	ccf			;26cb	3f 	? 
	jr nc,l274dh		;26cc	30 7f 	0  
	ld d,e			;26ce	53 	S 
	ld a,a			;26cf	7f 	 
	ld (hl),e			;26d0	73 	s 
	ld e,h			;26d1	5c 	\ 
	ld d,h			;26d2	54 	T 
	ld a,a			;26d3	7f 	 
	ld d,h			;26d4	54 	T 
	ld l,e			;26d5	6b 	k 
	ld c,b			;26d6	48 	H 
	ld a,a			;26d7	7f 	 
l26d8h:
	ld c,b			;26d8	48 	H 
	ld l,a			;26d9	6f 	o 
	ld c,b			;26da	48 	H 
	ld a,a			;26db	7f 	 
	ld c,c			;26dc	49 	I 
	ret nz			;26dd	c0 	. 
	ret nz			;26de	c0 	. 
	ret nz			;26df	c0 	. 
	ret nz			;26e0	c0 	. 
	ret p			;26e1	f0 	. 
	ld (hl),b			;26e2	70 	p 
l26e3h:
	ret p			;26e3	f0 	. 
	ret p			;26e4	f0 	. 
	ret m			;26e5	f8 	. 
	ld a,b			;26e6	78 	x 
	ret m			;26e7	f8 	. 
	ret m			;26e8	f8 	. 
	call m,0fc9ch		;26e9	fc 9c fc 	. . . 
	call m,sub_1cfch		;26ec	fc fc 1c 	. . . 
	call m,0fefch		;26ef	fc fc fe 	. . . 
	sbc a,0feh		;26f2	de fe 	. . 
	cp 0feh		;26f4	fe fe 	. . 
	ld a,0feh		;26f6	3e fe 	> . 
	cp 0feh		;26f8	fe fe 	. . 
	ld c,0feh		;26fa	0e fe 	. . 
	cp 0efh		;26fc	fe ef 	. . 
	adc a,b			;26fe	88 	. 
	rst 38h			;26ff	ff 	. 
	ret			;2700	c9 	. 
l2701h:
	rst 38h			;2701	ff 	. 
	adc a,b			;2702	88 	. 
	rst 38h			;2703	ff 	. 
	set 7,a		;2704	cb ff 	. . 
	call p,0f7ffh		;2706	f4 ff f7 	. . . 
	rst 8			;2709	cf 	. 
	add a,l			;270a	85 	. 
	rst 38h			;270b	ff 	. 
	rst 0			;270c	c7 	. 
	cp a			;270d	bf 	. 
	add a,d			;270e	82 	. 
	rst 38h			;270f	ff 	. 
	add a,e			;2710	83 	. 
	rst 38h			;2711	ff 	. 
	add a,d			;2712	82 	. 
	rst 38h			;2713	ff 	. 
	add a,e			;2714	83 	. 
	ld a,a			;2715	7f 	 
	ld b,d			;2716	42 	B 
	ld a,a			;2717	7f 	 
	ld a,a			;2718	7f 	 
	ccf			;2719	3f 	? 
	ccf			;271a	3f 	? 
	ccf			;271b	3f 	? 
	ccf			;271c	3f 	? 
	rst 38h			;271d	ff 	. 
	rrca			;271e	0f 	. 
	rst 38h			;271f	ff 	. 
	rst 38h			;2720	ff 	. 
l2721h:
	rst 38h			;2721	ff 	. 
	rrca			;2722	0f 	. 
	rst 38h			;2723	ff 	. 
	rst 38h			;2724	ff 	. 
	rst 38h			;2725	ff 	. 
	ccf			;2726	3f 	? 
	rst 38h			;2727	ff 	. 
	rst 38h			;2728	ff 	. 
	rst 38h			;2729	ff 	. 
	rst 8			;272a	cf 	. 
	rst 38h			;272b	ff 	. 
	rst 38h			;272c	ff 	. 
	rst 38h			;272d	ff 	. 
	rra			;272e	1f 	. 
	rst 38h			;272f	ff 	. 
	rst 38h			;2730	ff 	. 
	rst 38h			;2731	ff 	. 
	rra			;2732	1f 	. 
l2733h:
	rst 38h			;2733	ff 	. 
	rst 38h			;2734	ff 	. 
	cp 0feh		;2735	fe fe 	. . 
	cp 0feh		;2737	fe fe 	. . 
	call m,0fcfch		;2739	fc fc fc 	. . . 
	call m,sub_0202h		;273c	fc 02 02 	. . . 
	inc bc			;273f	03 	. 
	ld (bc),a			;2740	02 	. 
	ld b,c			;2741	41 	A 
	ld h,c			;2742	61 	a 
	ld b,c			;2743	41 	A 
	ld b,c			;2744	41 	A 
	ld c,c			;2745	49 	I 
	ld c,l			;2746	4d 	M 
	ld l,c			;2747	69 	i 
l2748h:
	ld c,c			;2748	49 	I 
	inc h			;2749	24 	$ 
	inc h			;274a	24 	$ 
	scf			;274b	37 	7 
	inc h			;274c	24 	$ 
l274dh:
	sub (hl)			;274d	96 	. 
	ret nc			;274e	d0 	. 
	sbc a,a			;274f	9f 	. 
	sub (hl)			;2750	96 	. 
	ld l,h			;2751	6c 	l 
	ld l,d			;2752	6a 	j 
	ld a,l			;2753	7d 	} 
	ld l,l			;2754	6d 	m 
	ld hl,l3708h		;2755	21 08 37 	! . 7 
	scf			;2758	37 	7 
	adc a,b			;2759	88 	. 
	add a,c			;275a	81 	. 
	cp 0aah		;275b	fe aa 	. . 
	nop			;275d	00 	. 
	nop			;275e	00 	. 
	nop			;275f	00 	. 
	nop			;2760	00 	. 
	nop			;2761	00 	. 
	add a,b			;2762	80 	. 
	nop			;2763	00 	. 
	nop			;2764	00 	. 
	jr nz,l2797h		;2765	20 30 	  0 
	and b			;2767	a0 	. 
	jr nz,$-42		;2768	20 d4 	  . 
	ld d,(hl)			;276a	56 	V 
	call p,sub_24d4h		;276b	f4 d4 24 	. . $ 
	inc b			;276e	04 	. 
	or 0b4h		;276f	f6 b4 	. . 
	ld (de),a			;2771	12 	. 
	ld (bc),a			;2772	02 	. 
	cp 0f2h		;2773	fe f2 	. . 
	ld l,004h		;2775	2e 04 	. . 
	cp 07eh		;2777	fe 7e 	. ~ 
	adc a,b			;2779	88 	. 
	ld bc,0bafeh		;277a	01 fe ba 	. . . 
	call p,0ff80h		;277d	f4 80 ff 	. . . 
	rst 38h			;2780	ff 	. 
	ld l,e			;2781	6b 	k 
	ld h,c			;2782	61 	a 
	ld a,a			;2783	7f 	 
	ld a,a			;2784	7f 	 
	sbc a,a			;2785	9f 	. 
	sub b			;2786	90 	. 
	rst 38h			;2787	ff 	. 
	rst 18h			;2788	df 	. 
	ld a,e			;2789	7b 	{ 
	ld h,e			;278a	63 	c 
	ld a,a			;278b	7f 	 
	ld a,e			;278c	7b 	{ 
	ld (hl),a			;278d	77 	w 
	ld d,l			;278e	55 	U 
	ld a,a			;278f	7f 	 
	ld a,a			;2790	7f 	 
	ld l,a			;2791	6f 	o 
	ld a,a			;2792	7f 	 
	ld l,a			;2793	6f 	o 
	ld l,a			;2794	6f 	o 
	sub c			;2795	91 	. 
	sub c			;2796	91 	. 
l2797h:
	sub c			;2797	91 	. 
	sub c			;2798	91 	. 
	nop			;2799	00 	. 
	nop			;279a	00 	. 
	nop			;279b	00 	. 
	nop			;279c	00 	. 
	ld e,a			;279d	5f 	_ 
	ld b,c			;279e	41 	A 
	rst 38h			;279f	ff 	. 
	rst 38h			;27a0	ff 	. 
	jp nc,0fe42h		;27a1	d2 42 fe 	. B . 
	sub 0fch		;27a4	d6 fc 	. . 
	adc a,l			;27a6	8d 	. 
	cp 0fch		;27a7	fe fc 	. . 
	rst 10h			;27a9	d7 	. 
	add a,a			;27aa	87 	. 
	rst 38h			;27ab	ff 	. 
	rst 10h			;27ac	d7 	. 
	ld e,b			;27ad	58 	X 
	ld e,b			;27ae	58 	X 
	call m,06478h		;27af	fc 78 64 	. x d 
	ld h,h			;27b2	64 	d 
	call p,sub_10e4h		;27b3	f4 e4 10 	. . . 
	djnz l2748h		;27b6	10 90 	. . 
	djnz $-126		;27b8	10 80 	. . 
	add a,b			;27ba	80 	. 
	add a,b			;27bb	80 	. 
	add a,b			;27bc	80 	. 
	nop			;27bd	00 	. 
	nop			;27be	00 	. 
	nop			;27bf	00 	. 
	nop			;27c0	00 	. 
	nop			;27c1	00 	. 
	nop			;27c2	00 	. 
	add a,b			;27c3	80 	. 
	nop			;27c4	00 	. 
	jr nz,l27e7h		;27c5	20 20 	    
	ld (hl),b			;27c7	70 	p 
	ld (hl),b			;27c8	70 	p 
	ld h,c			;27c9	61 	a 
	dec h			;27ca	25 	% 
	ld (hl),c			;27cb	71 	q 
	ld (hl),c			;27cc	71 	q 
	ld e,d			;27cd	5a 	Z 
	ld a,(de)			;27ce	1a 	. 
	ld a,e			;27cf	7b 	{ 
	ld a,e			;27d0	7b 	{ 
	sbc a,a			;27d1	9f 	. 
	ld d,0ffh		;27d2	16 ff 	. . 
	rst 18h			;27d4	df 	. 
	ld l,e			;27d5	6b 	k 
	ld l,c			;27d6	69 	i 
	rst 38h			;27d7	ff 	. 
	rst 38h			;27d8	ff 	. 
	push af			;27d9	f5 	. 
	and c			;27da	a1 	. 
	rst 38h			;27db	ff 	. 
	rst 38h			;27dc	ff 	. 
	nop			;27dd	00 	. 
	nop			;27de	00 	. 
	nop			;27df	00 	. 
	nop			;27e0	00 	. 
	nop			;27e1	00 	. 
	nop			;27e2	00 	. 
	nop			;27e3	00 	. 
	nop			;27e4	00 	. 
	add a,b			;27e5	80 	. 
	ret nz			;27e6	c0 	. 
l27e7h:
	add a,b			;27e7	80 	. 
	add a,b			;27e8	80 	. 
	nop			;27e9	00 	. 
	jr nz,$-58		;27ea	20 c4 	  . 
	ret nz			;27ec	c0 	. 
	inc h			;27ed	24 	$ 
	ld d,h			;27ee	54 	T 
	adc a,h			;27ef	8c 	. 
	add a,h			;27f0	84 	. 
	inc e			;27f1	1c 	. 
	inc (hl)			;27f2	34 	4 
	sbc a,0dch		;27f3	de dc 	. . 
	di			;27f5	f3 	. 
	inc hl			;27f6	23 	# 
	cp 0f6h		;27f7	fe f6 	. . 
	rst 30h			;27f9	f7 	. 
	pop hl			;27fa	e1 	. 
	rst 38h			;27fb	ff 	. 
	rst 38h			;27fc	ff 	. 
	sbc a,e			;27fd	9b 	. 
	sub e			;27fe	93 	. 
	rst 38h			;27ff	ff 	. 
	cp a			;2800	bf 	. 
	ld l,l			;2801	6d 	m 
	ld b,l			;2802	45 	E 
	ld a,a			;2803	7f 	 
	ld a,a			;2804	7f 	 
	ld l,l			;2805	6d 	m 
	ld b,e			;2806	43 	C 
	defb 0fdh,0edh,0b6h	;illegal sequence		;2807	fd ed b6 	. . . 
	ret nc			;280a	d0 	. 
	cp a			;280b	bf 	. 
	or (hl)			;280c	b6 	. 
	ld l,l			;280d	6d 	m 
	ld h,h			;280e	64 	d 
	ld a,a			;280f	7f 	 
	ld a,l			;2810	7d 	} 
	ld e,e			;2811	5b 	[ 
	ld d,a			;2812	57 	W 
	ld a,e			;2813	7b 	{ 
	ld e,e			;2814	5b 	[ 
	ld c,l			;2815	4d 	M 
	ld l,l			;2816	6d 	m 
	ld c,l			;2817	4d 	M 
	ld c,l			;2818	4d 	M 
	and b			;2819	a0 	. 
	and b			;281a	a0 	. 
	and c			;281b	a1 	. 
	and b			;281c	a0 	. 
	ret pe			;281d	e8 	. 
	pop bc			;281e	c1 	. 
	cp 0fah		;281f	fe fa 	. . 
	ld l,(hl)			;2821	6e 	n 
	ld b,h			;2822	44 	D 
	rst 38h			;2823	ff 	. 
	ld a,(hl)			;2824	7e 	~ 
	sub e			;2825	93 	. 
	add a,e			;2826	83 	. 
	rst 38h			;2827	ff 	. 
	ei			;2828	fb 	. 
	and h			;2829	a4 	. 
	add a,h			;282a	84 	. 
	cp 0b4h		;282b	fe b4 	. . 
	call nc,0fc56h		;282d	d4 56 fc 	. V . 
	call c,0786ah		;2830	dc 6a 78 	. j x 
	xor 0eah		;2833	ee ea 	. . 
	ld d,l			;2835	55 	U 
	ld d,h			;2836	54 	T 
	rst 30h			;2837	f7 	. 
	push de			;2838	d5 	. 
	jp nz,0e3c2h		;2839	c2 c2 e3 	. . . 
	jp 0f787h		;283c	c3 87 f7 	. . . 
	rst 30h			;283f	f7 	. 
	adc a,b			;2840	88 	. 
	ld b,c			;2841	41 	A 
	ld h,b			;2842	60 	` 
	ld h,b			;2843	60 	` 
	ld e,(hl)			;2844	5e 	^ 
	ld hl,l3131h		;2845	21 31 31 	! 1 1 
	ld l,021h		;2848	2e 21 	. ! 
l284ah:
	add hl,sp			;284a	39 	9 
	add hl,sp			;284b	39 	9 
	ld h,010h		;284c	26 10 	& . 
	inc d			;284e	14 	. 
	inc d			;284f	14 	. 
	dec de			;2850	1b 	. 
	ld (de),a			;2851	12 	. 
	ld a,(de)			;2852	1a 	. 
	ld a,(de)			;2853	1a 	. 
	dec d			;2854	15 	. 
	ld a,(bc)			;2855	0a 	. 
l2856h:
	ld a,(bc)			;2856	0a 	. 
	ld a,(bc)			;2857	0a 	. 
	dec c			;2858	0d 	. 
	ex af,af'			;2859	08 	. 
	inc c			;285a	0c 	. 
	inc c			;285b	0c 	. 
	dec bc			;285c	0b 	. 
	ld e,a			;285d	5f 	_ 
	ld d,(hl)			;285e	56 	V 
	ld d,(hl)			;285f	56 	V 
	and b			;2860	a0 	. 
	ld (hl),d			;2861	72 	r 
	ld d,b			;2862	50 	P 
	ld d,b			;2863	50 	P 
	adc a,h			;2864	8c 	. 
	ld d,h			;2865	54 	T 
	ld b,b			;2866	40 	@ 
	ld b,b			;2867	40 	@ 
	xor b			;2868	a8 	. 
	call c,09898h		;2869	dc 98 98 	. . . 
	jr nz,l2856h		;286c	20 e8 	  . 
	ret pe			;286e	e8 	. 
	ret pe			;286f	e8 	. 
	djnz l28dah		;2870	10 68 	. h 
	ld c,b			;2872	48 	H 
	ld c,b			;2873	48 	H 
	sub b			;2874	90 	. 
	ret nc			;2875	d0 	. 
	ret nc			;2876	d0 	. 
	ret nc			;2877	d0 	. 
	jr nz,l284ah		;2878	20 d0 	  . 
	sub b			;287a	90 	. 
sub_287bh:
	sub b			;287b	90 	. 
	jr nz,l2882h		;287c	20 04 	  . 
	ld b,006h		;287e	06 06 	. . 
	dec b			;2880	05 	. 
	dec b			;2881	05 	. 
l2882h:
	dec b			;2882	05 	. 
	dec b			;2883	05 	. 
	ld b,004h		;2884	06 04 	. . 
	ld b,006h		;2886	06 06 	. . 
	dec b			;2888	05 	. 
	ld (bc),a			;2889	02 	. 
	ld (bc),a			;288a	02 	. 
	ld (bc),a			;288b	02 	. 
	inc bc			;288c	03 	. 
	ld (bc),a			;288d	02 	. 
	ld (bc),a			;288e	02 	. 
	ld (bc),a			;288f	02 	. 
	inc bc			;2890	03 	. 
	ld (bc),a			;2891	02 	. 
	inc bc			;2892	03 	. 
	inc bc			;2893	03 	. 
	ld (bc),a			;2894	02 	. 
	ld bc,l0101h		;2895	01 01 01 	. . . 
	ld bc,l0101h		;2898	01 01 01 	. . . 
	ld bc,0a001h		;289b	01 01 a0 	. . . 
	and b			;289e	a0 	. 
	and b			;289f	a0 	. 
	ld b,b			;28a0	40 	@ 
	jr nz,l28a3h		;28a1	20 00 	  . 
l28a3h:
	nop			;28a3	00 	. 
	ret nz			;28a4	c0 	. 
	and b			;28a5	a0 	. 
	add a,b			;28a6	80 	. 
	add a,b			;28a7	80 	. 
	ld b,b			;28a8	40 	@ 
	ret nz			;28a9	c0 	. 
	ld b,b			;28aa	40 	@ 
	ld b,b			;28ab	40 	@ 
	nop			;28ac	00 	. 
	ld b,b			;28ad	40 	@ 
	ld b,b			;28ae	40 	@ 
	ld b,b			;28af	40 	@ 
	add a,b			;28b0	80 	. 
	ret nz			;28b1	c0 	. 
	nop			;28b2	00 	. 
	nop			;28b3	00 	. 
	nop			;28b4	00 	. 
	add a,b			;28b5	80 	. 
	add a,b			;28b6	80 	. 
	add a,b			;28b7	80 	. 
	nop			;28b8	00 	. 
	add a,b			;28b9	80 	. 
	nop			;28ba	00 	. 
	nop			;28bb	00 	. 
	nop			;28bc	00 	. 
	ld (bc),a			;28bd	02 	. 
	ld (bc),a			;28be	02 	. 
	ld (bc),a			;28bf	02 	. 
	inc bc			;28c0	03 	. 
	ld (bc),a			;28c1	02 	. 
	ld (bc),a			;28c2	02 	. 
	ld (bc),a			;28c3	02 	. 
	inc bc			;28c4	03 	. 
	ld (bc),a			;28c5	02 	. 
	ld (bc),a			;28c6	02 	. 
	ld (bc),a			;28c7	02 	. 
	inc bc			;28c8	03 	. 
	inc bc			;28c9	03 	. 
	inc bc			;28ca	03 	. 
	inc bc			;28cb	03 	. 
	ld (bc),a			;28cc	02 	. 
	ld (bc),a			;28cd	02 	. 
	inc bc			;28ce	03 	. 
	inc bc			;28cf	03 	. 
	ld (bc),a			;28d0	02 	. 
	ld bc,l0101h		;28d1	01 01 01 	. . . 
	ld bc,08121h		;28d4	01 21 81 	. ! . 
	add a,c			;28d7	81 	. 
	ld b,c			;28d8	41 	A 
	ret pe			;28d9	e8 	. 
l28dah:
	ret po			;28da	e0 	. 
	ret po			;28db	e0 	. 
	ret nc			;28dc	d0 	. 
	nop			;28dd	00 	. 
	nop			;28de	00 	. 
	nop			;28df	00 	. 
	nop			;28e0	00 	. 
	nop			;28e1	00 	. 
	nop			;28e2	00 	. 
	nop			;28e3	00 	. 
	nop			;28e4	00 	. 
	add a,b			;28e5	80 	. 
	add a,b			;28e6	80 	. 
	add a,b			;28e7	80 	. 
	nop			;28e8	00 	. 
	ret nz			;28e9	c0 	. 
	ld b,b			;28ea	40 	@ 
	ld b,b			;28eb	40 	@ 
	nop			;28ec	00 	. 
	ld b,b			;28ed	40 	@ 
	nop			;28ee	00 	. 
	nop			;28ef	00 	. 
	and b			;28f0	a0 	. 
	add a,e			;28f1	83 	. 
	add a,e			;28f2	83 	. 
	add a,e			;28f3	83 	. 
	ld h,d			;28f4	62 	b 
	ld hl,(0e8e8h)		;28f5	2a e8 e8 	* . . 
	dec l			;28f8	2d 	- 
	push de			;28f9	d5 	. 
	pop de			;28fa	d1 	. 
	pop de			;28fb	d1 	. 
	in a,(036h)		;28fc	db 36 	. 6 
	inc (hl)			;28fe	34 	4 
	inc (hl)			;28ff	34 	4 
	jr c,l2910h		;2900	38 0e 	8 . 
	ld c,00eh		;2902	0e 0e 	. . 
	ld c,002h		;2904	0e 02 	. . 
	ld (bc),a			;2906	02 	. 
	ld (bc),a			;2907	02 	. 
	inc bc			;2908	03 	. 
	dec l			;2909	2d 	- 
	inc l			;290a	2c 	, 
	inc l			;290b	2c 	, 
	ld (hl),074h		;290c	36 74 	6 t 
	ld l,(hl)			;290e	6e 	n 
	ld l,(hl)			;290f	6e 	n 
l2910h:
	ld b,l			;2910	45 	E 
	adc a,l			;2911	8d 	. 
	rst 18h			;2912	df 	. 
	rst 18h			;2913	df 	. 
	xor h			;2914	ac 	. 
	ld (hl),h			;2915	74 	t 
	ld (hl),a			;2916	77 	w 
	ld (hl),a			;2917	77 	w 
	ld (hl),h			;2918	74 	t 
	inc bc			;2919	03 	. 
	inc bc			;291a	03 	. 
	inc bc			;291b	03 	. 
	inc bc			;291c	03 	. 
	jr z,l2941h		;291d	28 22 	( " 
	ld (06634h),hl		;291f	22 34 66 	" 4 f 
	ld a,(hl)			;2922	7e 	~ 
	ld a,(hl)			;2923	7e 	~ 
	ld b,d			;2924	42 	B 
	inc a			;2925	3c 	< 
	inc a			;2926	3c 	< 
	inc a			;2927	3c 	< 
	cp h			;2928	bc 	. 
	ret nz			;2929	c0 	. 
	ld b,b			;292a	40 	@ 
	ld b,b			;292b	40 	@ 
	nop			;292c	00 	. 
	ret z			;292d	c8 	. 
	ex af,af'			;292e	08 	. 
	ex af,af'			;292f	08 	. 
	inc l			;2930	2c 	, 
	ld b,(hl)			;2931	46 	F 
	ld a,(bc)			;2932	0a 	. 
	ld a,(bc)			;2933	0a 	. 
	and b			;2934	a0 	. 
	ex af,af'			;2935	08 	. 
	xor h			;2936	ac 	. 
	xor h			;2937	ac 	. 
	ld c,e			;2938	4b 	K 
	rst 20h			;2939	e7 	. 
	rst 20h			;293a	e7 	. 
	rst 20h			;293b	e7 	. 
	rst 20h			;293c	e7 	. 
	inc bc			;293d	03 	. 
	nop			;293e	00 	. 
	inc bc			;293f	03 	. 
	nop			;2940	00 	. 
l2941h:
	rra			;2941	1f 	. 
	djnz l2963h		;2942	10 1f 	. . 
	djnz l2985h		;2944	10 3f 	. ? 
	jr nz,l2987h		;2946	20 3f 	  ? 
	jr nz,$+129		;2948	20 7f 	   
	ld b,b			;294a	40 	@ 
	ld e,b			;294b	58 	X 
	ld e,b			;294c	58 	X 
	ld a,a			;294d	7f 	 
	ld b,b			;294e	40 	@ 
	ld d,b			;294f	50 	P 
	ld d,b			;2950	50 	P 
	ld a,a			;2951	7f 	 
	ld b,h			;2952	44 	D 
	ld b,h			;2953	44 	D 
	ld b,h			;2954	44 	D 
	rst 38h			;2955	ff 	. 
	add a,b			;2956	80 	. 
	ret m			;2957	f8 	. 
	and b			;2958	a0 	. 
	rst 38h			;2959	ff 	. 
	ld b,b			;295a	40 	@ 
	rst 38h			;295b	ff 	. 
	ld d,b			;295c	50 	P 
	ret po			;295d	e0 	. 
	nop			;295e	00 	. 
	ret po			;295f	e0 	. 
	nop			;2960	00 	. 
	sbc a,b			;2961	98 	. 
	nop			;2962	00 	. 
l2963h:
	ret m			;2963	f8 	. 
	nop			;2964	00 	. 
	call z,0f400h		;2965	cc 00 f4 	. . . 
	nop			;2968	00 	. 
	and 000h		;2969	e6 00 	. . 
	jp m,0f600h		;296b	fa 00 f6 	. . . 
	nop			;296e	00 	. 
	ld a,d			;296f	7a 	z 
	nop			;2970	00 	. 
	jp p,07e00h		;2971	f2 00 7e 	. . ~ 
	ld (bc),a			;2974	02 	. 
	or 000h		;2975	f6 00 	. . 
	cp 002h		;2977	fe 02 	. . 
	xor 000h		;2979	ee 00 	. . 
	cp 006h		;297b	fe 06 	. . 
	rst 38h			;297d	ff 	. 
	add a,b			;297e	80 	. 
	rst 38h			;297f	ff 	. 
	cp b			;2980	b8 	. 
	ld a,a			;2981	7f 	 
	ld h,b			;2982	60 	` 
	ld a,a			;2983	7f 	 
	ld a,a			;2984	7f 	 
l2985h:
	rra			;2985	1f 	. 
	inc e			;2986	1c 	. 
l2987h:
	rra			;2987	1f 	. 
	rra			;2988	1f 	. 
	rrca			;2989	0f 	. 
	ex af,af'			;298a	08 	. 
	rrca			;298b	0f 	. 
	ex af,af'			;298c	08 	. 
	rrca			;298d	0f 	. 
	ld a,(bc)			;298e	0a 	. 
	rrca			;298f	0f 	. 
	ld a,(bc)			;2990	0a 	. 
	rrca			;2991	0f 	. 
	ld a,(bc)			;2992	0a 	. 
	rrca			;2993	0f 	. 
	ld a,(bc)			;2994	0a 	. 
	rra			;2995	1f 	. 
	inc d			;2996	14 	. 
	rra			;2997	1f 	. 
	dec e			;2998	1d 	. 
	dec bc			;2999	0b 	. 
	add hl,bc			;299a	09 	. 
	dec bc			;299b	0b 	. 
	dec bc			;299c	0b 	. 
	cp 002h		;299d	fe 02 	. . 
	cp 00eh		;299f	fe 0e 	. . 
	call m,0fc04h		;29a1	fc 04 fc 	. . . 
	inc e			;29a4	1c 	. 
	ret m			;29a5	f8 	. 
	jr $-6		;29a6	18 f8 	. . 
	ret c			;29a8	d8 	. 
	ret p			;29a9	f0 	. 
	nop			;29aa	00 	. 
	ret p			;29ab	f0 	. 
	nop			;29ac	00 	. 
	ret p			;29ad	f0 	. 
	and b			;29ae	a0 	. 
	ret p			;29af	f0 	. 
	and b			;29b0	a0 	. 
	ret p			;29b1	f0 	. 
	and b			;29b2	a0 	. 
	ret p			;29b3	f0 	. 
	and b			;29b4	a0 	. 
	ret p			;29b5	f0 	. 
	sub b			;29b6	90 	. 
	ret m			;29b7	f8 	. 
	ret nc			;29b8	d0 	. 
	ret po			;29b9	e0 	. 
	ld b,b			;29ba	40 	@ 
	ret po			;29bb	e0 	. 
	ret po			;29bc	e0 	. 
	inc bc			;29bd	03 	. 
	nop			;29be	00 	. 
	inc bc			;29bf	03 	. 
	nop			;29c0	00 	. 
	rra			;29c1	1f 	. 
	djnz l29e3h		;29c2	10 1f 	. . 
	djnz l2a05h		;29c4	10 3f 	. ? 
	jr nz,l2a07h		;29c6	20 3f 	  ? 
	jr nz,l2a49h		;29c8	20 7f 	   
	ld b,b			;29ca	40 	@ 
l29cbh:
	ld a,c			;29cb	79 	y 
	ld a,b			;29cc	78 	x 
	ld a,a			;29cd	7f 	 
	ld b,b			;29ce	40 	@ 
	ld (hl),b			;29cf	70 	p 
	ld (hl),b			;29d0	70 	p 
	ld a,a			;29d1	7f 	 
	ld c,h			;29d2	4c 	L 
	ld c,h			;29d3	4c 	L 
	ld c,h			;29d4	4c 	L 
	rst 38h			;29d5	ff 	. 
	add a,b			;29d6	80 	. 
	pop af			;29d7	f1 	. 
	add a,b			;29d8	80 	. 
	rst 38h			;29d9	ff 	. 
	ld h,b			;29da	60 	` 
	rst 38h			;29db	ff 	. 
	ld l,h			;29dc	6c 	l 
	ret po			;29dd	e0 	. 
	nop			;29de	00 	. 
	ret po			;29df	e0 	. 
	nop			;29e0	00 	. 
	jr l29e3h		;29e1	18 00 	. . 
l29e3h:
	ret m			;29e3	f8 	. 
	nop			;29e4	00 	. 
	call z,0f400h		;29e5	cc 00 f4 	. . . 
	nop			;29e8	00 	. 
	and 000h		;29e9	e6 00 	. . 
	jp m,0f600h		;29eb	fa 00 f6 	. . . 
	nop			;29ee	00 	. 
	jp m,0f600h		;29ef	fa 00 f6 	. . . 
	nop			;29f2	00 	. 
	cp 000h		;29f3	fe 00 	. . 
	cp 000h		;29f5	fe 00 	. . 
	cp 002h		;29f7	fe 02 	. . 
	xor 000h		;29f9	ee 00 	. . 
	cp 006h		;29fb	fe 06 	. . 
	ld a,a			;29fd	7f 	 
	ld h,b			;29fe	60 	` 
	ld a,a			;29ff	7f 	 
	ld l,h			;2a00	6c 	l 
	ld a,a			;2a01	7f 	 
	nop			;2a02	00 	. 
	ld a,a			;2a03	7f 	 
	ld a,(hl)			;2a04	7e 	~ 
l2a05h:
	ld a,a			;2a05	7f 	 
	ld e,b			;2a06	58 	X 
l2a07h:
	ld a,a			;2a07	7f 	 
	ld e,a			;2a08	5f 	_ 
	ccf			;2a09	3f 	? 
	jr nz,l29cbh		;2a0a	20 bf 	  . 
	inc hl			;2a0c	23 	# 
	defb 0fdh,018h,0ffh	;illegal sequence		;2a0d	fd 18 ff 	. . . 
	inc e			;2a10	1c 	. 
	rst 38h			;2a11	ff 	. 
	push bc			;2a12	c5 	. 
	rst 38h			;2a13	ff 	. 
	push hl			;2a14	e5 	. 
	ccf			;2a15	3f 	? 
	add hl,sp			;2a16	39 	9 
	ccf			;2a17	3f 	? 
	dec a			;2a18	3d 	= 
	inc bc			;2a19	03 	. 
	ld bc,l0303h		;2a1a	01 03 03 	. . . 
	cp 002h		;2a1d	fe 02 	. . 
	cp 00eh		;2a1f	fe 0e 	. . 
	cp 004h		;2a21	fe 04 	. . 
	rst 38h			;2a23	ff 	. 
	inc e			;2a24	1c 	. 
	rst 38h			;2a25	ff 	. 
	add hl,de			;2a26	19 	. 
	rst 38h			;2a27	ff 	. 
	sbc a,c			;2a28	99 	. 
	cp 002h		;2a29	fe 02 	. . 
	rst 38h			;2a2b	ff 	. 
	ld (bc),a			;2a2c	02 	. 
	rst 38h			;2a2d	ff 	. 
	ld c,l			;2a2e	4d 	M 
	rst 38h			;2a2f	ff 	. 
	ld c,l			;2a30	4d 	M 
	cp 0a2h		;2a31	fe a2 	. . 
	cp 0a2h		;2a33	fe a2 	. . 
	ld e,h			;2a35	5c 	\ 
	inc c			;2a36	0c 	. 
	ld e,h			;2a37	5c 	\ 
	inc e			;2a38	1c 	. 
	ret po			;2a39	e0 	. 
	ld b,b			;2a3a	40 	@ 
l2a3bh:
	ret po			;2a3b	e0 	. 
	ld h,b			;2a3c	60 	` 
	rlca			;2a3d	07 	. 
	dec b			;2a3e	05 	. 
	rlca			;2a3f	07 	. 
	dec b			;2a40	05 	. 
	ccf			;2a41	3f 	? 
	ld a,(l3a3fh)		;2a42	3a 3f 3a 	: ? : 
	ld a,a			;2a45	7f 	 
	ld b,d			;2a46	42 	B 
	ld a,a			;2a47	7f 	 
	ld b,d			;2a48	42 	B 
l2a49h:
	rst 38h			;2a49	ff 	. 
	sbc a,d			;2a4a	9a 	. 
	rst 38h			;2a4b	ff 	. 
	sbc a,d			;2a4c	9a 	. 
	rst 38h			;2a4d	ff 	. 
	and b			;2a4e	a0 	. 
	rst 38h			;2a4f	ff 	. 
	and l			;2a50	a5 	. 
	ld a,a			;2a51	7f 	 
	ld c,h			;2a52	4c 	L 
	ld a,a			;2a53	7f 	 
	ld c,a			;2a54	4f 	O 
	ccf			;2a55	3f 	? 
	jr nc,$+65		;2a56	30 3f 	0 ? 
	inc a			;2a58	3c 	< 
	rst 38h			;2a59	ff 	. 
	add a,b			;2a5a	80 	. 
	rst 38h			;2a5b	ff 	. 
	and b			;2a5c	a0 	. 
	ret p			;2a5d	f0 	. 
	ld d,b			;2a5e	50 	P 
	ret p			;2a5f	f0 	. 
	ld d,b			;2a60	50 	P 
	call m,0fcach		;2a61	fc ac fc 	. . . 
	xor h			;2a64	ac 	. 
	cp 0a2h		;2a65	fe a2 	. . 
	cp 0a2h		;2a67	fe a2 	. . 
	rst 38h			;2a69	ff 	. 
	ld c,l			;2a6a	4d 	M 
	rst 38h			;2a6b	ff 	. 
	ld c,l			;2a6c	4d 	M 
	cp 002h		;2a6d	fe 02 	. . 
	rst 38h			;2a6f	ff 	. 
	ld (bc),a			;2a70	02 	. 
	rst 38h			;2a71	ff 	. 
	add hl,de			;2a72	19 	. 
	rst 38h			;2a73	ff 	. 
	ld a,c			;2a74	79 	y 
	sbc a,a			;2a75	9f 	. 
	inc b			;2a76	04 	. 
	rst 38h			;2a77	ff 	. 
	inc b			;2a78	04 	. 
	rst 28h			;2a79	ef 	. 
	inc bc			;2a7a	03 	. 
	rst 30h			;2a7b	f7 	. 
	inc bc			;2a7c	03 	. 
	rst 38h			;2a7d	ff 	. 
	ld b,b			;2a7e	40 	@ 
	ret m			;2a7f	f8 	. 
	ld d,b			;2a80	50 	P 
	rst 38h			;2a81	ff 	. 
	add a,l			;2a82	85 	. 
	push de			;2a83	d5 	. 
	sub l			;2a84	95 	. 
	ld a,a			;2a85	7f 	 
	ld b,d			;2a86	42 	B 
	ld b,d			;2a87	42 	B 
	ld b,d			;2a88	42 	B 
	ld a,a			;2a89	7f 	 
	ld b,l			;2a8a	45 	E 
	ld d,l			;2a8b	55 	U 
	ld d,l			;2a8c	55 	U 
	ld a,a			;2a8d	7f 	 
	ld b,b			;2a8e	40 	@ 
	ld a,b			;2a8f	78 	x 
	ld a,b			;2a90	78 	x 
	ccf			;2a91	3f 	? 
	jr nz,l2ad3h		;2a92	20 3f 	  ? 
	inc a			;2a94	3c 	< 
	rra			;2a95	1f 	. 
	djnz $+33		;2a96	10 1f 	. . 
	rra			;2a98	1f 	. 
	rrca			;2a99	0f 	. 
	inc c			;2a9a	0c 	. 
	rrca			;2a9b	0f 	. 
	rrca			;2a9c	0f 	. 
	or 000h		;2a9d	f6 00 	. . 
	jp m,0f200h		;2a9f	fa 00 f2 	. . . 
	nop			;2aa2	00 	. 
	ld a,(hl)			;2aa3	7e 	~ 
	nop			;2aa4	00 	. 
	jp m,07e00h		;2aa5	fa 00 7e 	. . ~ 
	ld (bc),a			;2aa8	02 	. 
	cp 000h		;2aa9	fe 00 	. . 
	ld a,(hl)			;2aab	7e 	~ 
	ld b,0feh		;2aac	06 fe 	. . 
	nop			;2aae	00 	. 
	cp 006h		;2aaf	fe 06 	. . 
	cp 002h		;2ab1	fe 02 	. . 
	cp 00eh		;2ab3	fe 0e 	. . 
	call m,0fc04h		;2ab5	fc 04 fc 	. . . 
	call m,sub_18f8h		;2ab8	fc f8 18 	. . . 
	ret m			;2abb	f8 	. 
	ret m			;2abc	f8 	. 
	ld a,a			;2abd	7f 	 
	ld b,b			;2abe	40 	@ 
	ld (hl),b			;2abf	70 	p 
	ld (hl),b			;2ac0	70 	p 
	ld a,a			;2ac1	7f 	 
	ld c,h			;2ac2	4c 	L 
	ld c,h			;2ac3	4c 	L 
	ld c,h			;2ac4	4c 	L 
	rst 38h			;2ac5	ff 	. 
	add a,b			;2ac6	80 	. 
	pop af			;2ac7	f1 	. 
	add a,b			;2ac8	80 	. 
	rst 38h			;2ac9	ff 	. 
	ld h,b			;2aca	60 	` 
	rst 38h			;2acb	ff 	. 
	ld l,h			;2acc	6c 	l 
	inc bc			;2acd	03 	. 
	inc bc			;2ace	03 	. 
	nop			;2acf	00 	. 
	nop			;2ad0	00 	. 
	inc bc			;2ad1	03 	. 
	inc bc			;2ad2	03 	. 
l2ad3h:
	nop			;2ad3	00 	. 
	nop			;2ad4	00 	. 
	rlca			;2ad5	07 	. 
	rlca			;2ad6	07 	. 
	nop			;2ad7	00 	. 
	nop			;2ad8	00 	. 
	rlca			;2ad9	07 	. 
	rlca			;2ada	07 	. 
	nop			;2adb	00 	. 
	nop			;2adc	00 	. 
	rrca			;2add	0f 	. 
	rrca			;2ade	0f 	. 
	nop			;2adf	00 	. 
	nop			;2ae0	00 	. 
	rrca			;2ae1	0f 	. 
	rrca			;2ae2	0f 	. 
	nop			;2ae3	00 	. 
	nop			;2ae4	00 	. 
	rra			;2ae5	1f 	. 
	rra			;2ae6	1f 	. 
	nop			;2ae7	00 	. 
	nop			;2ae8	00 	. 
	rra			;2ae9	1f 	. 
	ld e,001h		;2aea	1e 01 	. . 
	nop			;2aec	00 	. 
	cp 0fch		;2aed	fe fc 	. . 
	ld (bc),a			;2aef	02 	. 
	nop			;2af0	00 	. 
	call m,sub_04f8h		;2af1	fc f8 04 	. . . 
	nop			;2af4	00 	. 
	ret m			;2af5	f8 	. 
	ret p			;2af6	f0 	. 
	ex af,af'			;2af7	08 	. 
	nop			;2af8	00 	. 
	ret p			;2af9	f0 	. 
	ret po			;2afa	e0 	. 
	djnz l2afdh		;2afb	10 00 	. . 
l2afdh:
	ret po			;2afd	e0 	. 
	ret nz			;2afe	c0 	. 
	jr nz,l2b01h		;2aff	20 00 	  . 
l2b01h:
	ret nz			;2b01	c0 	. 
	add a,b			;2b02	80 	. 
	ld b,b			;2b03	40 	@ 
	nop			;2b04	00 	. 
	add a,b			;2b05	80 	. 
	nop			;2b06	00 	. 
	add a,b			;2b07	80 	. 
	nop			;2b08	00 	. 
	nop			;2b09	00 	. 
	nop			;2b0a	00 	. 
	nop			;2b0b	00 	. 
	nop			;2b0c	00 	. 
	ccf			;2b0d	3f 	? 
	ccf			;2b0e	3f 	? 
	nop			;2b0f	00 	. 
	nop			;2b10	00 	. 
	ld a,a			;2b11	7f 	 
	ld a,a			;2b12	7f 	 
	nop			;2b13	00 	. 
	nop			;2b14	00 	. 
	nop			;2b15	00 	. 
	nop			;2b16	00 	. 
	nop			;2b17	00 	. 
	nop			;2b18	00 	. 
	nop			;2b19	00 	. 
	nop			;2b1a	00 	. 
	nop			;2b1b	00 	. 
	nop			;2b1c	00 	. 
	ld bc,l0001h		;2b1d	01 01 00 	. . . 
	nop			;2b20	00 	. 
	inc bc			;2b21	03 	. 
	inc bc			;2b22	03 	. 
	nop			;2b23	00 	. 
	nop			;2b24	00 	. 
	rlca			;2b25	07 	. 
	rlca			;2b26	07 	. 
	nop			;2b27	00 	. 
	nop			;2b28	00 	. 
	rrca			;2b29	0f 	. 
	rrca			;2b2a	0f 	. 
	nop			;2b2b	00 	. 
	nop			;2b2c	00 	. 
	rst 38h			;2b2d	ff 	. 
	cp 001h		;2b2e	fe 01 	. . 
	nop			;2b30	00 	. 
	cp 0fch		;2b31	fe fc 	. . 
	ld (bc),a			;2b33	02 	. 
	nop			;2b34	00 	. 
	ld a,h			;2b35	7c 	| 
	ld a,b			;2b36	78 	x 
	inc b			;2b37	04 	. 
	nop			;2b38	00 	. 
	ret m			;2b39	f8 	. 
	ret p			;2b3a	f0 	. 
	ex af,af'			;2b3b	08 	. 
	nop			;2b3c	00 	. 
	ret p			;2b3d	f0 	. 
	ret po			;2b3e	e0 	. 
	djnz l2b41h		;2b3f	10 00 	. . 
l2b41h:
	ret po			;2b41	e0 	. 
	ret nz			;2b42	c0 	. 
	jr nz,l2b45h		;2b43	20 00 	  . 
l2b45h:
	ret nz			;2b45	c0 	. 
	add a,b			;2b46	80 	. 
	ld b,b			;2b47	40 	@ 
	nop			;2b48	00 	. 
	add a,b			;2b49	80 	. 
	nop			;2b4a	00 	. 
	add a,b			;2b4b	80 	. 
	nop			;2b4c	00 	. 
	rra			;2b4d	1f 	. 
	ld e,001h		;2b4e	1e 01 	. . 
	nop			;2b50	00 	. 
	ld a,03ch		;2b51	3e 3c 	> < 
	ld (bc),a			;2b53	02 	. 
	nop			;2b54	00 	. 
	ld a,a			;2b55	7f 	 
	ld a,a			;2b56	7f 	 
	nop			;2b57	00 	. 
	nop			;2b58	00 	. 
	rst 38h			;2b59	ff 	. 
	rst 38h			;2b5a	ff 	. 
	nop			;2b5b	00 	. 
	nop			;2b5c	00 	. 
	ld bc,l0001h		;2b5d	01 01 00 	. . . 
	nop			;2b60	00 	. 
	inc bc			;2b61	03 	. 
	inc bc			;2b62	03 	. 
	nop			;2b63	00 	. 
	nop			;2b64	00 	. 
	inc bc			;2b65	03 	. 
	inc bc			;2b66	03 	. 
	nop			;2b67	00 	. 
	nop			;2b68	00 	. 
	rlca			;2b69	07 	. 
	rlca			;2b6a	07 	. 
	nop			;2b6b	00 	. 
	nop			;2b6c	00 	. 
	nop			;2b6d	00 	. 
	nop			;2b6e	00 	. 
	nop			;2b6f	00 	. 
	nop			;2b70	00 	. 
	nop			;2b71	00 	. 
	nop			;2b72	00 	. 
	nop			;2b73	00 	. 
	nop			;2b74	00 	. 
	cp 0fch		;2b75	fe fc 	. . 
	ld (bc),a			;2b77	02 	. 
	nop			;2b78	00 	. 
	call m,sub_04f8h		;2b79	fc f8 04 	. . . 
	nop			;2b7c	00 	. 
	ret m			;2b7d	f8 	. 
	ret p			;2b7e	f0 	. 
	ex af,af'			;2b7f	08 	. 
	nop			;2b80	00 	. 
	ret p			;2b81	f0 	. 
	ret po			;2b82	e0 	. 
	djnz l2b85h		;2b83	10 00 	. . 
l2b85h:
	ret po			;2b85	e0 	. 
	ret nz			;2b86	c0 	. 
	jr nz,l2b89h		;2b87	20 00 	  . 
l2b89h:
	ret nz			;2b89	c0 	. 
	add a,b			;2b8a	80 	. 
	ld b,b			;2b8b	40 	@ 
	nop			;2b8c	00 	. 
	rlca			;2b8d	07 	. 
	rlca			;2b8e	07 	. 
	nop			;2b8f	00 	. 
	nop			;2b90	00 	. 
	rrca			;2b91	0f 	. 
	ld c,001h		;2b92	0e 01 	. . 
	nop			;2b94	00 	. 
	ld c,00ch		;2b95	0e 0c 	. . 
	ld (bc),a			;2b97	02 	. 
	nop			;2b98	00 	. 
	inc e			;2b99	1c 	. 
	jr l2ba0h		;2b9a	18 04 	. . 
	nop			;2b9c	00 	. 
	jr l2bafh		;2b9d	18 10 	. . 
	ex af,af'			;2b9f	08 	. 
l2ba0h:
	nop			;2ba0	00 	. 
	jr nc,l2bc3h		;2ba1	30 20 	0   
	djnz l2ba5h		;2ba3	10 00 	. . 
l2ba5h:
	jr nz,l2ba7h		;2ba5	20 00 	  . 
l2ba7h:
	jr nz,l2ba9h		;2ba7	20 00 	  . 
l2ba9h:
	nop			;2ba9	00 	. 
	nop			;2baa	00 	. 
	nop			;2bab	00 	. 
	nop			;2bac	00 	. 
	add a,b			;2bad	80 	. 
	nop			;2bae	00 	. 
l2bafh:
	add a,b			;2baf	80 	. 
	nop			;2bb0	00 	. 
	nop			;2bb1	00 	. 
	nop			;2bb2	00 	. 
	nop			;2bb3	00 	. 
	nop			;2bb4	00 	. 
	nop			;2bb5	00 	. 
	nop			;2bb6	00 	. 
	nop			;2bb7	00 	. 
	nop			;2bb8	00 	. 
	nop			;2bb9	00 	. 
	nop			;2bba	00 	. 
	nop			;2bbb	00 	. 
	nop			;2bbc	00 	. 
	nop			;2bbd	00 	. 
	nop			;2bbe	00 	. 
	nop			;2bbf	00 	. 
l2bc0h:
	nop			;2bc0	00 	. 
	nop			;2bc1	00 	. 
	nop			;2bc2	00 	. 
l2bc3h:
	nop			;2bc3	00 	. 
	nop			;2bc4	00 	. 
	nop			;2bc5	00 	. 
	nop			;2bc6	00 	. 
	nop			;2bc7	00 	. 
	nop			;2bc8	00 	. 
	nop			;2bc9	00 	. 
	nop			;2bca	00 	. 
	nop			;2bcb	00 	. 
	nop			;2bcc	00 	. 
	inc bc			;2bcd	03 	. 
	nop			;2bce	00 	. 
	inc bc			;2bcf	03 	. 
	nop			;2bd0	00 	. 
	inc bc			;2bd1	03 	. 
	nop			;2bd2	00 	. 
	inc bc			;2bd3	03 	. 
	nop			;2bd4	00 	. 
	rlca			;2bd5	07 	. 
	nop			;2bd6	00 	. 
	rlca			;2bd7	07 	. 
	nop			;2bd8	00 	. 
	rlca			;2bd9	07 	. 
	nop			;2bda	00 	. 
	rlca			;2bdb	07 	. 
l2bdch:
	nop			;2bdc	00 	. 
	rrca			;2bdd	0f 	. 
	nop			;2bde	00 	. 
	rrca			;2bdf	0f 	. 
	nop			;2be0	00 	. 
	rrca			;2be1	0f 	. 
	nop			;2be2	00 	. 
	rrca			;2be3	0f 	. 
	nop			;2be4	00 	. 
	rra			;2be5	1f 	. 
	nop			;2be6	00 	. 
	rra			;2be7	1f 	. 
	nop			;2be8	00 	. 
	rra			;2be9	1f 	. 
	ld bc,l001eh		;2bea	01 1e 00 	. . . 
	cp 002h		;2bed	fe 02 	. . 
	call m,0fc00h		;2bef	fc 00 fc 	. . . 
	inc b			;2bf2	04 	. 
	ret m			;2bf3	f8 	. 
	nop			;2bf4	00 	. 
	ret m			;2bf5	f8 	. 
	ex af,af'			;2bf6	08 	. 
	ret p			;2bf7	f0 	. 
	nop			;2bf8	00 	. 
	ret p			;2bf9	f0 	. 
	djnz l2bdch		;2bfa	10 e0 	. . 
	nop			;2bfc	00 	. 
	ret po			;2bfd	e0 	. 
	jr nz,l2bc0h		;2bfe	20 c0 	  . 
sub_2c00h:
	nop			;2c00	00 	. 
	ret nz			;2c01	c0 	. 
	ld b,b			;2c02	40 	@ 
	add a,b			;2c03	80 	. 
l2c04h:
	nop			;2c04	00 	. 
	add a,b			;2c05	80 	. 
	add a,b			;2c06	80 	. 
	nop			;2c07	00 	. 
	nop			;2c08	00 	. 
	nop			;2c09	00 	. 
	nop			;2c0a	00 	. 
	nop			;2c0b	00 	. 
	nop			;2c0c	00 	. 
	ccf			;2c0d	3f 	? 
	nop			;2c0e	00 	. 
	ccf			;2c0f	3f 	? 
	nop			;2c10	00 	. 
	ld a,a			;2c11	7f 	 
	nop			;2c12	00 	. 
	ld a,a			;2c13	7f 	 
	nop			;2c14	00 	. 
	nop			;2c15	00 	. 
	nop			;2c16	00 	. 
	nop			;2c17	00 	. 
	nop			;2c18	00 	. 
	nop			;2c19	00 	. 
	nop			;2c1a	00 	. 
	nop			;2c1b	00 	. 
	nop			;2c1c	00 	. 
	ld bc,l0100h		;2c1d	01 00 01 	. . . 
l2c20h:
	nop			;2c20	00 	. 
	inc bc			;2c21	03 	. 
	nop			;2c22	00 	. 
	inc bc			;2c23	03 	. 
	nop			;2c24	00 	. 
	rlca			;2c25	07 	. 
	nop			;2c26	00 	. 
	rlca			;2c27	07 	. 
	nop			;2c28	00 	. 
	rrca			;2c29	0f 	. 
	nop			;2c2a	00 	. 
	rrca			;2c2b	0f 	. 
l2c2ch:
	nop			;2c2c	00 	. 
	rst 38h			;2c2d	ff 	. 
	ld bc,000feh		;2c2e	01 fe 00 	. . . 
	cp 002h		;2c31	fe 02 	. . 
	call m,07c00h		;2c33	fc 00 7c 	. . | 
	inc b			;2c36	04 	. 
	ld a,b			;2c37	78 	x 
	nop			;2c38	00 	. 
	ret m			;2c39	f8 	. 
	ex af,af'			;2c3a	08 	. 
	ret p			;2c3b	f0 	. 
	nop			;2c3c	00 	. 
	ret p			;2c3d	f0 	. 
	djnz l2c20h		;2c3e	10 e0 	. . 
	nop			;2c40	00 	. 
	ret po			;2c41	e0 	. 
	jr nz,l2c04h		;2c42	20 c0 	  . 
	nop			;2c44	00 	. 
	ret nz			;2c45	c0 	. 
	ld b,b			;2c46	40 	@ 
	add a,b			;2c47	80 	. 
l2c48h:
	nop			;2c48	00 	. 
	add a,b			;2c49	80 	. 
	add a,b			;2c4a	80 	. 
	nop			;2c4b	00 	. 
	nop			;2c4c	00 	. 
	rra			;2c4d	1f 	. 
	ld bc,l001eh		;2c4e	01 1e 00 	. . . 
	ld a,002h		;2c51	3e 02 	> . 
	inc a			;2c53	3c 	< 
	nop			;2c54	00 	. 
	ld a,a			;2c55	7f 	 
	nop			;2c56	00 	. 
	ld a,a			;2c57	7f 	 
	nop			;2c58	00 	. 
	rst 38h			;2c59	ff 	. 
	nop			;2c5a	00 	. 
	rst 38h			;2c5b	ff 	. 
	nop			;2c5c	00 	. 
	ld bc,l0100h		;2c5d	01 00 01 	. . . 
	nop			;2c60	00 	. 
	inc bc			;2c61	03 	. 
	nop			;2c62	00 	. 
	inc bc			;2c63	03 	. 
l2c64h:
	nop			;2c64	00 	. 
	inc bc			;2c65	03 	. 
	nop			;2c66	00 	. 
	inc bc			;2c67	03 	. 
	nop			;2c68	00 	. 
	rlca			;2c69	07 	. 
	nop			;2c6a	00 	. 
	rlca			;2c6b	07 	. 
	nop			;2c6c	00 	. 
	nop			;2c6d	00 	. 
	nop			;2c6e	00 	. 
	nop			;2c6f	00 	. 
	nop			;2c70	00 	. 
	nop			;2c71	00 	. 
	nop			;2c72	00 	. 
	nop			;2c73	00 	. 
	nop			;2c74	00 	. 
	cp 002h		;2c75	fe 02 	. . 
	call m,0fc00h		;2c77	fc 00 fc 	. . . 
	inc b			;2c7a	04 	. 
	ret m			;2c7b	f8 	. 
	nop			;2c7c	00 	. 
	ret m			;2c7d	f8 	. 
	ex af,af'			;2c7e	08 	. 
	ret p			;2c7f	f0 	. 
	nop			;2c80	00 	. 
	ret p			;2c81	f0 	. 
	djnz l2c64h		;2c82	10 e0 	. . 
	nop			;2c84	00 	. 
	ret po			;2c85	e0 	. 
	jr nz,l2c48h		;2c86	20 c0 	  . 
	nop			;2c88	00 	. 
	ret nz			;2c89	c0 	. 
	ld b,b			;2c8a	40 	@ 
	add a,b			;2c8b	80 	. 
	nop			;2c8c	00 	. 
	rlca			;2c8d	07 	. 
	nop			;2c8e	00 	. 
	rlca			;2c8f	07 	. 
	nop			;2c90	00 	. 
	rrca			;2c91	0f 	. 
	ld bc,l000eh		;2c92	01 0e 00 	. . . 
	ld c,002h		;2c95	0e 02 	. . 
	inc c			;2c97	0c 	. 
	nop			;2c98	00 	. 
	inc e			;2c99	1c 	. 
	inc b			;2c9a	04 	. 
	jr l2c9dh		;2c9b	18 00 	. . 
l2c9dh:
	jr l2ca7h		;2c9d	18 08 	. . 
	djnz l2ca1h		;2c9f	10 00 	. . 
l2ca1h:
	jr nc,l2cb3h		;2ca1	30 10 	0 . 
	jr nz,l2ca5h		;2ca3	20 00 	  . 
l2ca5h:
	jr nz,l2cc7h		;2ca5	20 20 	    
l2ca7h:
	nop			;2ca7	00 	. 
	nop			;2ca8	00 	. 
	nop			;2ca9	00 	. 
	nop			;2caa	00 	. 
	nop			;2cab	00 	. 
	nop			;2cac	00 	. 
	add a,b			;2cad	80 	. 
	add a,b			;2cae	80 	. 
	nop			;2caf	00 	. 
	nop			;2cb0	00 	. 
	nop			;2cb1	00 	. 
	nop			;2cb2	00 	. 
l2cb3h:
	nop			;2cb3	00 	. 
	nop			;2cb4	00 	. 
	nop			;2cb5	00 	. 
	nop			;2cb6	00 	. 
	nop			;2cb7	00 	. 
	nop			;2cb8	00 	. 
	nop			;2cb9	00 	. 
	nop			;2cba	00 	. 
	nop			;2cbb	00 	. 
	nop			;2cbc	00 	. 
	nop			;2cbd	00 	. 
	nop			;2cbe	00 	. 
	nop			;2cbf	00 	. 
	nop			;2cc0	00 	. 
	nop			;2cc1	00 	. 
	nop			;2cc2	00 	. 
	nop			;2cc3	00 	. 
	nop			;2cc4	00 	. 
	nop			;2cc5	00 	. 
	nop			;2cc6	00 	. 
l2cc7h:
	nop			;2cc7	00 	. 
	nop			;2cc8	00 	. 
	nop			;2cc9	00 	. 
	nop			;2cca	00 	. 
	nop			;2ccb	00 	. 
	nop			;2ccc	00 	. 
	ld e,01eh		;2ccd	1e 1e 	. . 
	ld e,01eh		;2ccf	1e 1e 	. . 
	ccf			;2cd1	3f 	? 
	ccf			;2cd2	3f 	? 
	ld hl,l3e21h		;2cd3	21 21 3e 	! ! > 
	ld a,02eh		;2cd6	3e 2e 	> . 
	ld l,03eh		;2cd8	2e 3e 	. > 
	ld a,022h		;2cda	3e 22 	> " 
	ld (l1f1fh),hl		;2cdc	22 1f 1f 	" . . 
	dec e			;2cdf	1d 	. 
	dec e			;2ce0	1d 	. 
	ccf			;2ce1	3f 	? 
	ccf			;2ce2	3f 	? 
	dec l			;2ce3	2d 	- 
	dec l			;2ce4	2d 	- 
	ld e,01eh		;2ce5	1e 1e 	. . 
	ld (de),a			;2ce7	12 	. 
	ld (de),a			;2ce8	12 	. 
	inc c			;2ce9	0c 	. 
	inc c			;2cea	0c 	. 
	inc c			;2ceb	0c 	. 
	inc c			;2cec	0c 	. 
	jr nc,l2d1fh		;2ced	30 30 	0 0 
	jr nc,l2d21h		;2cef	30 30 	0 0 
	ld a,b			;2cf1	78 	x 
	ld a,b			;2cf2	78 	x 
	ld c,b			;2cf3	48 	H 
	ld c,b			;2cf4	48 	H 
	call m,0b4fch		;2cf5	fc fc b4 	. . . 
	or h			;2cf8	b4 	. 
	call m,0b4fch		;2cf9	fc fc b4 	. . . 
	or h			;2cfc	b4 	. 
	call m,0b4fch		;2cfd	fc fc b4 	. . . 
	or h			;2d00	b4 	. 
	call m,0b4fch		;2d01	fc fc b4 	. . . 
	or h			;2d04	b4 	. 
	ld a,b			;2d05	78 	x 
	ld a,b			;2d06	78 	x 
	ld c,b			;2d07	48 	H 
	ld c,b			;2d08	48 	H 
	jr nc,l2d3bh		;2d09	30 30 	0 0 
	jr nc,l2d3dh		;2d0b	30 30 	0 0 
	ld a,c			;2d0d	79 	y 
	ld a,c			;2d0e	79 	y 
	ld a,c			;2d0f	79 	y 
	ld a,c			;2d10	79 	y 
	rst 38h			;2d11	ff 	. 
	rst 38h			;2d12	ff 	. 
	add a,(hl)			;2d13	86 	. 
	add a,(hl)			;2d14	86 	. 
	rst 38h			;2d15	ff 	. 
	rst 38h			;2d16	ff 	. 
	cp l			;2d17	bd 	. 
	cp l			;2d18	bd 	. 
	rst 38h			;2d19	ff 	. 
	rst 38h			;2d1a	ff 	. 
	adc a,l			;2d1b	8d 	. 
	adc a,l			;2d1c	8d 	. 
	ld a,a			;2d1d	7f 	 
	ld a,a			;2d1e	7f 	 
l2d1fh:
	ld (hl),l			;2d1f	75 	u 
	ld (hl),l			;2d20	75 	u 
l2d21h:
	rst 38h			;2d21	ff 	. 
	rst 38h			;2d22	ff 	. 
l2d23h:
	or l			;2d23	b5 	. 
	or l			;2d24	b5 	. 
	ld a,e			;2d25	7b 	{ 
	ld a,e			;2d26	7b 	{ 
	ld c,d			;2d27	4a 	J 
	ld c,d			;2d28	4a 	J 
	ld sp,l3131h		;2d29	31 31 31 	1 1 1 
	ld sp,08c8ch		;2d2c	31 8c 8c 	1 . . 
	adc a,h			;2d2f	8c 	. 
	adc a,h			;2d30	8c 	. 
	sbc a,0deh		;2d31	de de 	. . 
	ld d,d			;2d33	52 	R 
	ld d,d			;2d34	52 	R 
	rst 38h			;2d35	ff 	. 
	rst 38h			;2d36	ff 	. 
	xor l			;2d37	ad 	. 
	xor l			;2d38	ad 	. 
	rst 38h			;2d39	ff 	. 
	rst 38h			;2d3a	ff 	. 
l2d3bh:
	xor l			;2d3b	ad 	. 
	xor l			;2d3c	ad 	. 
l2d3dh:
	rst 38h			;2d3d	ff 	. 
	rst 38h			;2d3e	ff 	. 
	xor l			;2d3f	ad 	. 
	xor l			;2d40	ad 	. 
	rst 38h			;2d41	ff 	. 
	rst 38h			;2d42	ff 	. 
	xor l			;2d43	ad 	. 
	xor l			;2d44	ad 	. 
	sbc a,0deh		;2d45	de de 	. . 
	ld d,d			;2d47	52 	R 
	ld d,d			;2d48	52 	R 
	adc a,h			;2d49	8c 	. 
	adc a,h			;2d4a	8c 	. 
	adc a,h			;2d4b	8c 	. 
	adc a,h			;2d4c	8c 	. 
	ld de,01111h		;2d4d	11 11 11 	. . . 
	ld de,l3b3bh		;2d50	11 3b 3b 	. ; ; 
	ld hl,(l3f2ah)		;2d53	2a 2a 3f 	* * ? 
	ccf			;2d56	3f 	? 
	dec l			;2d57	2d 	- 
	dec l			;2d58	2d 	- 
	ccf			;2d59	3f 	? 
	ccf			;2d5a	3f 	? 
	dec l			;2d5b	2d 	- 
	dec l			;2d5c	2d 	- 
	ccf			;2d5d	3f 	? 
	ccf			;2d5e	3f 	? 
	dec l			;2d5f	2d 	- 
	dec l			;2d60	2d 	- 
	ccf			;2d61	3f 	? 
	ccf			;2d62	3f 	? 
	dec l			;2d63	2d 	- 
	dec l			;2d64	2d 	- 
	dec sp			;2d65	3b 	; 
	dec sp			;2d66	3b 	; 
	ld hl,(l112ah)		;2d67	2a 2a 11 	* * . 
	ld de,01111h		;2d6a	11 11 11 	. . . 
	adc a,h			;2d6d	8c 	. 
	adc a,h			;2d6e	8c 	. 
	adc a,h			;2d6f	8c 	. 
	adc a,h			;2d70	8c 	. 
	sbc a,0deh		;2d71	de de 	. . 
	ld d,d			;2d73	52 	R 
	ld d,d			;2d74	52 	R 
	rst 38h			;2d75	ff 	. 
	rst 38h			;2d76	ff 	. 
	xor l			;2d77	ad 	. 
	xor l			;2d78	ad 	. 
	rst 38h			;2d79	ff 	. 
	rst 38h			;2d7a	ff 	. 
	xor l			;2d7b	ad 	. 
	xor l			;2d7c	ad 	. 
	rst 38h			;2d7d	ff 	. 
	rst 38h			;2d7e	ff 	. 
	xor l			;2d7f	ad 	. 
	xor l			;2d80	ad 	. 
	rst 38h			;2d81	ff 	. 
	rst 38h			;2d82	ff 	. 
	xor l			;2d83	ad 	. 
	xor l			;2d84	ad 	. 
	sbc a,0deh		;2d85	de de 	. . 
	ld d,d			;2d87	52 	R 
	ld d,d			;2d88	52 	R 
	adc a,h			;2d89	8c 	. 
	adc a,h			;2d8a	8c 	. 
	adc a,h			;2d8b	8c 	. 
	adc a,h			;2d8c	8c 	. 
	ld sp,l3131h		;2d8d	31 31 31 	1 1 1 
	ld sp,07b7bh		;2d90	31 7b 7b 	1 { { 
	ld c,d			;2d93	4a 	J 
	ld c,d			;2d94	4a 	J 
	rst 38h			;2d95	ff 	. 
	rst 38h			;2d96	ff 	. 
	or l			;2d97	b5 	. 
	or l			;2d98	b5 	. 
	ld a,a			;2d99	7f 	 
	ld a,a			;2d9a	7f 	 
	ld (hl),l			;2d9b	75 	u 
	ld (hl),l			;2d9c	75 	u 
	ccf			;2d9d	3f 	? 
	ccf			;2d9e	3f 	? 
	dec l			;2d9f	2d 	- 
	dec l			;2da0	2d 	- 
	ld a,a			;2da1	7f 	 
	ld a,a			;2da2	7f 	 
	ld e,l			;2da3	5d 	] 
	ld e,l			;2da4	5d 	] 
	rst 38h			;2da5	ff 	. 
	rst 38h			;2da6	ff 	. 
	add a,(hl)			;2da7	86 	. 
	add a,(hl)			;2da8	86 	. 
	ld a,c			;2da9	79 	y 
	ld a,c			;2daa	79 	y 
	ld a,c			;2dab	79 	y 
	ld a,c			;2dac	79 	y 
	adc a,h			;2dad	8c 	. 
	adc a,h			;2dae	8c 	. 
	adc a,h			;2daf	8c 	. 
	adc a,h			;2db0	8c 	. 
	sbc a,0deh		;2db1	de de 	. . 
	ld d,d			;2db3	52 	R 
	ld d,d			;2db4	52 	R 
	cp 0feh		;2db5	fe fe 	. . 
	xor h			;2db7	ac 	. 
	xor h			;2db8	ac 	. 
	cp 0feh		;2db9	fe fe 	. . 
	xor h			;2dbb	ac 	. 
	xor h			;2dbc	ac 	. 
	cp 0feh		;2dbd	fe fe 	. . 
	xor h			;2dbf	ac 	. 
	xor h			;2dc0	ac 	. 
	cp 0feh		;2dc1	fe fe 	. . 
	xor h			;2dc3	ac 	. 
	xor h			;2dc4	ac 	. 
	sbc a,0deh		;2dc5	de de 	. . 
	ld d,d			;2dc7	52 	R 
	ld d,d			;2dc8	52 	R 
	adc a,h			;2dc9	8c 	. 
	adc a,h			;2dca	8c 	. 
	adc a,h			;2dcb	8c 	. 
	adc a,h			;2dcc	8c 	. 
	inc c			;2dcd	0c 	. 
	inc c			;2dce	0c 	. 
	inc c			;2dcf	0c 	. 
	inc c			;2dd0	0c 	. 
	ld e,01eh		;2dd1	1e 1e 	. . 
	ld (de),a			;2dd3	12 	. 
	ld (de),a			;2dd4	12 	. 
	ccf			;2dd5	3f 	? 
	ccf			;2dd6	3f 	? 
	dec l			;2dd7	2d 	- 
	dec l			;2dd8	2d 	- 
	rra			;2dd9	1f 	. 
	rra			;2dda	1f 	. 
	dec e			;2ddb	1d 	. 
	dec e			;2ddc	1d 	. 
	rrca			;2ddd	0f 	. 
	rrca			;2dde	0f 	. 
	dec bc			;2ddf	0b 	. 
	dec bc			;2de0	0b 	. 
	ld e,01eh		;2de1	1e 1e 	. . 
	ld d,016h		;2de3	16 16 	. . 
	ld a,03eh		;2de5	3e 3e 	> > 
	jr nz,l2e09h		;2de7	20 20 	    
	ld a,03eh		;2de9	3e 3e 	> > 
	ld a,03eh		;2deb	3e 3e 	> > 
	jr nc,l2e1fh		;2ded	30 30 	0 0 
	jr nc,l2e21h		;2def	30 30 	0 0 
	ld a,b			;2df1	78 	x 
	ld a,b			;2df2	78 	x 
	ld c,b			;2df3	48 	H 
	ld c,b			;2df4	48 	H 
	call m,0b4fch		;2df5	fc fc b4 	. . . 
	or h			;2df8	b4 	. 
	call m,0b4fch		;2df9	fc fc b4 	. . . 
	or h			;2dfc	b4 	. 
	call m,0b4fch		;2dfd	fc fc b4 	. . . 
	or h			;2e00	b4 	. 
	call m,0b4fch		;2e01	fc fc b4 	. . . 
	or h			;2e04	b4 	. 
	ret m			;2e05	f8 	. 
	ret m			;2e06	f8 	. 
	ret z			;2e07	c8 	. 
	ret z			;2e08	c8 	. 
l2e09h:
	ld (hl),b			;2e09	70 	p 
	ld (hl),b			;2e0a	70 	p 
	ld (hl),b			;2e0b	70 	p 
	ld (hl),b			;2e0c	70 	p 
	ld c,00eh		;2e0d	0e 0e 	. . 
	ld c,00eh		;2e0f	0e 0e 	. . 
	ld c,00eh		;2e11	0e 0e 	. . 
	ld a,(bc)			;2e13	0a 	. 
	ld a,(bc)			;2e14	0a 	. 
	ld c,00eh		;2e15	0e 0e 	. . 
	ld a,(bc)			;2e17	0a 	. 
	ld a,(bc)			;2e18	0a 	. 
	ld c,00eh		;2e19	0e 0e 	. . 
	ld a,(bc)			;2e1b	0a 	. 
	ld a,(bc)			;2e1c	0a 	. 
	ld c,00eh		;2e1d	0e 0e 	. . 
l2e1fh:
	ld a,(bc)			;2e1f	0a 	. 
	ld a,(bc)			;2e20	0a 	. 
l2e21h:
	ld c,00eh		;2e21	0e 0e 	. . 
	ld a,(bc)			;2e23	0a 	. 
	ld a,(bc)			;2e24	0a 	. 
	ld c,00eh		;2e25	0e 0e 	. . 
	ld a,(bc)			;2e27	0a 	. 
	ld a,(bc)			;2e28	0a 	. 
	ld c,00eh		;2e29	0e 0e 	. . 
	ld c,00eh		;2e2b	0e 0e 	. . 
	ld (hl),b			;2e2d	70 	p 
	ld (hl),b			;2e2e	70 	p 
	ld (hl),b			;2e2f	70 	p 
	ld (hl),b			;2e30	70 	p 
	ret m			;2e31	f8 	. 
	ret m			;2e32	f8 	. 
	ret z			;2e33	c8 	. 
	ret z			;2e34	c8 	. 
	call m,0b4fch		;2e35	fc fc b4 	. . . 
	or h			;2e38	b4 	. 
	call m,0b4fch		;2e39	fc fc b4 	. . . 
	or h			;2e3c	b4 	. 
	call m,0b4fch		;2e3d	fc fc b4 	. . . 
	or h			;2e40	b4 	. 
	call m,0b4fch		;2e41	fc fc b4 	. . . 
	or h			;2e44	b4 	. 
	ret m			;2e45	f8 	. 
	ret m			;2e46	f8 	. 
	ret z			;2e47	c8 	. 
	ret z			;2e48	c8 	. 
	ld (hl),b			;2e49	70 	p 
	ld (hl),b			;2e4a	70 	p 
	ld (hl),b			;2e4b	70 	p 
	ld (hl),b			;2e4c	70 	p 
	ld (hl),e			;2e4d	73 	s 
	ld (hl),e			;2e4e	73 	s 
	ld (hl),e			;2e4f	73 	s 
	ld (hl),e			;2e50	73 	s 
	ld (hl),a			;2e51	77 	w 
	ld (hl),a			;2e52	77 	w 
	ld d,h			;2e53	54 	T 
	ld d,h			;2e54	54 	T 
	ld a,a			;2e55	7f 	 
	ld a,a			;2e56	7f 	 
	ld e,e			;2e57	5b 	[ 
	ld e,e			;2e58	5b 	[ 
	ld a,a			;2e59	7f 	 
	ld a,a			;2e5a	7f 	 
	ld e,e			;2e5b	5b 	[ 
	ld e,e			;2e5c	5b 	[ 
	ld a,a			;2e5d	7f 	 
	ld a,a			;2e5e	7f 	 
	ld e,e			;2e5f	5b 	[ 
	ld e,e			;2e60	5b 	[ 
	ld a,a			;2e61	7f 	 
	ld a,a			;2e62	7f 	 
	ld e,e			;2e63	5b 	[ 
	ld e,e			;2e64	5b 	[ 
	ld (hl),a			;2e65	77 	w 
	ld (hl),a			;2e66	77 	w 
	ld d,h			;2e67	54 	T 
	ld d,h			;2e68	54 	T 
	ld (hl),e			;2e69	73 	s 
	ld (hl),e			;2e6a	73 	s 
	ld (hl),e			;2e6b	73 	s 
	ld (hl),e			;2e6c	73 	s 
	jr l2e87h		;2e6d	18 18 	. . 
	jr l2e89h		;2e6f	18 18 	. . 
	cp l			;2e71	bd 	. 
	cp l			;2e72	bd 	. 
	and l			;2e73	a5 	. 
	and l			;2e74	a5 	. 
	rst 38h			;2e75	ff 	. 
	rst 38h			;2e76	ff 	. 
	ld e,d			;2e77	5a 	Z 
	ld e,d			;2e78	5a 	Z 
	rst 38h			;2e79	ff 	. 
	rst 38h			;2e7a	ff 	. 
	ld e,d			;2e7b	5a 	Z 
	ld e,d			;2e7c	5a 	Z 
	rst 38h			;2e7d	ff 	. 
	rst 38h			;2e7e	ff 	. 
	ld e,d			;2e7f	5a 	Z 
	ld e,d			;2e80	5a 	Z 
	rst 38h			;2e81	ff 	. 
	rst 38h			;2e82	ff 	. 
	ld e,d			;2e83	5a 	Z 
	ld e,d			;2e84	5a 	Z 
	cp l			;2e85	bd 	. 
	cp l			;2e86	bd 	. 
l2e87h:
	and l			;2e87	a5 	. 
	and l			;2e88	a5 	. 
l2e89h:
	jr l2ea3h		;2e89	18 18 	. . 
	jr l2ea5h		;2e8b	18 18 	. . 
	ret nz			;2e8d	c0 	. 
	ret nz			;2e8e	c0 	. 
	ret nz			;2e8f	c0 	. 
	ret nz			;2e90	c0 	. 
	ret po			;2e91	e0 	. 
	ret po			;2e92	e0 	. 
	jr nz,l2eb5h		;2e93	20 20 	    
	ret p			;2e95	f0 	. 
	ret p			;2e96	f0 	. 
	ret nc			;2e97	d0 	. 
	ret nc			;2e98	d0 	. 
	ret p			;2e99	f0 	. 
	ret p			;2e9a	f0 	. 
	ret nc			;2e9b	d0 	. 
	ret nc			;2e9c	d0 	. 
	ret p			;2e9d	f0 	. 
	ret p			;2e9e	f0 	. 
	ret nc			;2e9f	d0 	. 
	ret nc			;2ea0	d0 	. 
	ret p			;2ea1	f0 	. 
	ret p			;2ea2	f0 	. 
l2ea3h:
	ret nc			;2ea3	d0 	. 
	ret nc			;2ea4	d0 	. 
l2ea5h:
	ret po			;2ea5	e0 	. 
	ret po			;2ea6	e0 	. 
	jr nz,l2ec9h		;2ea7	20 20 	    
	ret nz			;2ea9	c0 	. 
	ret nz			;2eaa	c0 	. 
	ret nz			;2eab	c0 	. 
	ret nz			;2eac	c0 	. 
	nop			;2ead	00 	. 
	nop			;2eae	00 	. 
	nop			;2eaf	00 	. 
	nop			;2eb0	00 	. 
	nop			;2eb1	00 	. 
	nop			;2eb2	00 	. 
	nop			;2eb3	00 	. 
	nop			;2eb4	00 	. 
l2eb5h:
	ld bc,00f01h		;2eb5	01 01 0f 	. . . 
	ld bc,l0f0fh		;2eb8	01 0f 0f 	. . . 
	jp p,07f02h		;2ebb	f2 02 7f 	. .  
	ld a,a			;2ebe	7f 	 
	adc a,(hl)			;2ebf	8e 	. 
	ld c,0feh		;2ec0	0e fe 	. . 
	cp 0e1h		;2ec2	fe e1 	. . 
	ret po			;2ec4	e0 	. 
	dec sp			;2ec5	3b 	; 
	dec sp			;2ec6	3b 	; 
	ld l,l			;2ec7	6d 	m 
	add hl,hl			;2ec8	29 	) 
l2ec9h:
	dec sp			;2ec9	3b 	; 
	add hl,sp			;2eca	39 	9 
	ld c,h			;2ecb	4c 	L 
	ex af,af'			;2ecc	08 	. 
	nop			;2ecd	00 	. 
	nop			;2ece	00 	. 
	nop			;2ecf	00 	. 
	nop			;2ed0	00 	. 
	nop			;2ed1	00 	. 
	nop			;2ed2	00 	. 
	nop			;2ed3	00 	. 
	nop			;2ed4	00 	. 
	nop			;2ed5	00 	. 
	nop			;2ed6	00 	. 
	nop			;2ed7	00 	. 
	nop			;2ed8	00 	. 
	nop			;2ed9	00 	. 
	nop			;2eda	00 	. 
	nop			;2edb	00 	. 
	nop			;2edc	00 	. 
	add a,b			;2edd	80 	. 
	add a,b			;2ede	80 	. 
	add a,b			;2edf	80 	. 
	add a,b			;2ee0	80 	. 
	ret po			;2ee1	e0 	. 
	ret po			;2ee2	e0 	. 
	ld h,b			;2ee3	60 	` 
	ld h,b			;2ee4	60 	` 
	ld a,a			;2ee5	7f 	 
	ld a,a			;2ee6	7f 	 
	sbc a,h			;2ee7	9c 	. 
	inc e			;2ee8	1c 	. 
	sbc a,0deh		;2ee9	de de 	. . 
	pop hl			;2eeb	e1 	. 
	ret nz			;2eec	c0 	. 
	dec a			;2eed	3d 	= 
	inc l			;2eee	2c 	, 
	ld b,(hl)			;2eef	46 	F 
	inc b			;2ef0	04 	. 
	ld e,016h		;2ef1	1e 16 	. . 
	ld h,e			;2ef3	63 	c 
	ld (bc),a			;2ef4	02 	. 
	ld e,a			;2ef5	5f 	_ 
	ld e,a			;2ef6	5f 	_ 
	ld h,c			;2ef7	61 	a 
	ld b,c			;2ef8	41 	A 
	rrca			;2ef9	0f 	. 
	rrca			;2efa	0f 	. 
	ld sp,l2701h		;2efb	31 01 27 	1 . ' 
	daa			;2efe	27 	' 
	jr c,l2f21h		;2eff	38 20 	8   
	ld de,l1e11h		;2f01	11 11 1e 	. . . 
	djnz l2f12h		;2f04	10 0c 	. . 
	inc c			;2f06	0c 	. 
	rrca			;2f07	0f 	. 
	inc c			;2f08	0c 	. 
	inc bc			;2f09	03 	. 
	inc bc			;2f0a	03 	. 
	inc bc			;2f0b	03 	. 
	inc bc			;2f0c	03 	. 
	ret po			;2f0d	e0 	. 
	ret po			;2f0e	e0 	. 
	ld a,a			;2f0f	7f 	 
	ld h,b			;2f10	60 	` 
	ret p			;2f11	f0 	. 
l2f12h:
	ret p			;2f12	f0 	. 
	ld e,010h		;2f13	1e 10 	. . 
	ld a,h			;2f15	7c 	| 
	inc e			;2f16	1c 	. 
	adc a,(hl)			;2f17	8e 	. 
	inc c			;2f18	0c 	. 
	jr c,l2f53h		;2f19	38 38 	8 8 
	add a,000h		;2f1b	c6 00 	. . 
	add a,b			;2f1d	80 	. 
	add a,b			;2f1e	80 	. 
	ld a,h			;2f1f	7c 	| 
	nop			;2f20	00 	. 
l2f21h:
	call nz,07cc4h		;2f21	c4 c4 7c 	. . | 
	ld b,h			;2f24	44 	D 
	jr c,l2f5fh		;2f25	38 38 	8 8 
	ret m			;2f27	f8 	. 
	jr c,$-62		;2f28	38 c0 	8 . 
	ret nz			;2f2a	c0 	. 
	ret nz			;2f2b	c0 	. 
	ret nz			;2f2c	c0 	. 
	inc c			;2f2d	0c 	. 
	ex af,af'			;2f2e	08 	. 
	inc c			;2f2f	0c 	. 
	inc c			;2f30	0c 	. 
	rlca			;2f31	07 	. 
	inc b			;2f32	04 	. 
	rlca			;2f33	07 	. 
	rlca			;2f34	07 	. 
	inc bc			;2f35	03 	. 
	ld (bc),a			;2f36	02 	. 
	inc bc			;2f37	03 	. 
	inc bc			;2f38	03 	. 
	ld bc,l0002h		;2f39	01 02 00 	. . . 
	ld (bc),a			;2f3c	02 	. 
	jr $+9		;2f3d	18 07 	. . 
l2f3fh:
	nop			;2f3f	00 	. 
	rla			;2f40	17 	. 
	dec (hl)			;2f41	35 	5 
	ld a,(bc)			;2f42	0a 	. 
	nop			;2f43	00 	. 
	ld a,(l1c23h)		;2f44	3a 23 1c 	: # . 
	nop			;2f47	00 	. 
	dec a			;2f48	3d 	= 
	ld (hl),l			;2f49	75 	u 
	ld a,(bc)			;2f4a	0a 	. 
	nop			;2f4b	00 	. 
	ld a,d			;2f4c	7a 	z 
	ld b,b			;2f4d	40 	@ 
	nop			;2f4e	00 	. 
	ld h,b			;2f4f	60 	` 
	ld h,b			;2f50	60 	` 
	add a,b			;2f51	80 	. 
	nop			;2f52	00 	. 
l2f53h:
	add a,b			;2f53	80 	. 
	add a,b			;2f54	80 	. 
	nop			;2f55	00 	. 
	nop			;2f56	00 	. 
	add a,b			;2f57	80 	. 
	add a,b			;2f58	80 	. 
	ld b,b			;2f59	40 	@ 
	add a,b			;2f5a	80 	. 
	nop			;2f5b	00 	. 
	add a,b			;2f5c	80 	. 
	add a,b			;2f5d	80 	. 
l2f5eh:
	ld (hl),b			;2f5e	70 	p 
l2f5fh:
	nop			;2f5f	00 	. 
	ld (hl),b			;2f60	70 	p 
	ld d,b			;2f61	50 	P 
	xor b			;2f62	a8 	. 
	nop			;2f63	00 	. 
	xor b			;2f64	a8 	. 
	jr nz,l2f3fh		;2f65	20 d8 	  . 
	nop			;2f67	00 	. 
	ret c			;2f68	d8 	. 
	ld d,h			;2f69	54 	T 
	xor b			;2f6a	a8 	. 
	nop			;2f6b	00 	. 
	xor b			;2f6c	a8 	. 
	ld a,h			;2f6d	7c 	| 
	inc bc			;2f6e	03 	. 
	nop			;2f6f	00 	. 
	ld (hl),a			;2f70	77 	w 
	ld l,l			;2f71	6d 	m 
	ld (de),a			;2f72	12 	. 
	nop			;2f73	00 	. 
	ld a,d			;2f74	7a 	z 
	ld a,e			;2f75	7b 	{ 
	inc b			;2f76	04 	. 
	nop			;2f77	00 	. 
	ld a,l			;2f78	7d 	} 
	ld (hl),l			;2f79	75 	u 
	ld c,d			;2f7a	4a 	J 
	ld b,b			;2f7b	40 	@ 
	ld a,d			;2f7c	7a 	z 
	ld a,a			;2f7d	7f 	 
	ld b,b			;2f7e	40 	@ 
	ld b,b			;2f7f	40 	@ 
	ld a,a			;2f80	7f 	 
	ccf			;2f81	3f 	? 
	jr nz,l2fa4h		;2f82	20 20 	    
	ld a,01fh		;2f84	3e 1f 	> . 
	jr l2fa0h		;2f86	18 18 	. . 
	rra			;2f88	1f 	. 
	rlca			;2f89	07 	. 
	rlca			;2f8a	07 	. 
	rlca			;2f8b	07 	. 
	rlca			;2f8c	07 	. 
	ret z			;2f8d	c8 	. 
	inc (hl)			;2f8e	34 	4 
	nop			;2f8f	00 	. 
	ld (hl),h			;2f90	74 	t 
	ld d,b			;2f91	50 	P 
	xor h			;2f92	ac 	. 
	nop			;2f93	00 	. 
	xor h			;2f94	ac 	. 
	inc h			;2f95	24 	$ 
	ret c			;2f96	d8 	. 
	nop			;2f97	00 	. 
	call c,0a45ch		;2f98	dc 5c a4 	. \ . 
	inc b			;2f9b	04 	. 
	xor h			;2f9c	ac 	. 
	call nz,0043ch		;2f9d	c4 3c 04 	. < . 
l2fa0h:
	ld a,h			;2fa0	7c 	| 
	ret m			;2fa1	f8 	. 
	ex af,af'			;2fa2	08 	. 
	ex af,af'			;2fa3	08 	. 
l2fa4h:
	ret m			;2fa4	f8 	. 
	ret p			;2fa5	f0 	. 
	jr nc,l2fd8h		;2fa6	30 30 	0 0 
	ret p			;2fa8	f0 	. 
	ret nz			;2fa9	c0 	. 
	ret nz			;2faa	c0 	. 
	ret nz			;2fab	c0 	. 
	ret nz			;2fac	c0 	. 
	nop			;2fad	00 	. 
	nop			;2fae	00 	. 
	nop			;2faf	00 	. 
	nop			;2fb0	00 	. 
	nop			;2fb1	00 	. 
	nop			;2fb2	00 	. 
	nop			;2fb3	00 	. 
	nop			;2fb4	00 	. 
	nop			;2fb5	00 	. 
	ld (bc),a			;2fb6	02 	. 
	nop			;2fb7	00 	. 
	ld (bc),a			;2fb8	02 	. 
	ld bc,l0000h		;2fb9	01 00 00 	. . . 
	ld bc,l0c03h		;2fbc	01 03 0c 	. . . 
	nop			;2fbf	00 	. 
	rrca			;2fc0	0f 	. 
	rlca			;2fc1	07 	. 
	nop			;2fc2	00 	. 
	ld b,007h		;2fc3	06 07 	. . 
	dec e			;2fc5	1d 	. 
	ld (bc),a			;2fc6	02 	. 
	dec e			;2fc7	1d 	. 
	rlca			;2fc8	07 	. 
	ccf			;2fc9	3f 	? 
	nop			;2fca	00 	. 
	ccf			;2fcb	3f 	? 
	ld (l0000h),hl		;2fcc	22 00 00 	" . . 
	nop			;2fcf	00 	. 
	nop			;2fd0	00 	. 
	nop			;2fd1	00 	. 
	nop			;2fd2	00 	. 
	nop			;2fd3	00 	. 
	nop			;2fd4	00 	. 
	nop			;2fd5	00 	. 
	jr nc,l2fd8h		;2fd6	30 00 	0 . 
l2fd8h:
	jr nc,l2ffah		;2fd8	30 20 	0   
	nop			;2fda	00 	. 
	nop			;2fdb	00 	. 
	jr nz,l2f5eh		;2fdc	20 80 	  . 
	ld b,b			;2fde	40 	@ 
	nop			;2fdf	00 	. 
	ret nz			;2fe0	c0 	. 
	ret po			;2fe1	e0 	. 
	djnz l2fe4h		;2fe2	10 00 	. . 
l2fe4h:
	ret p			;2fe4	f0 	. 
	call m,0bc00h		;2fe5	fc 00 bc 	. . . 
	ret p			;2fe8	f0 	. 
	add a,020h		;2fe9	c6 20 	.   
	sbc a,060h		;2feb	de 60 	. ` 
	ld a,a			;2fed	7f 	 
	ld b,b			;2fee	40 	@ 
	ld a,a			;2fef	7f 	 
	ld h,b			;2ff0	60 	` 
	ld a,a			;2ff1	7f 	 
	ld b,b			;2ff2	40 	@ 
	ld a,a			;2ff3	7f 	 
	ld (hl),b			;2ff4	70 	p 
	ccf			;2ff5	3f 	? 
	jr nz,l3037h		;2ff6	20 3f 	  ? 
	jr c,l3039h		;2ff8	38 3f 	8 ? 
l2ffah:
	jr nz,l303bh		;2ffa	20 3f 	  ? 
	ld a,01fh		;2ffc	3e 1f 	> . 
	djnz l301fh		;2ffe	10 1f 	. . 
l3000h:
	rra			;3000	1f 	. 
	rrca			;3001	0f 	. 
	inc c			;3002	0c 	. 
	rrca			;3003	0f 	. 
	rrca			;3004	0f 	. 
	inc bc			;3005	03 	. 
	inc bc			;3006	03 	. 
	inc bc			;3007	03 	. 
	inc bc			;3008	03 	. 
	nop			;3009	00 	. 
	nop			;300a	00 	. 
	nop			;300b	00 	. 
	nop			;300c	00 	. 
	ld (hl),000h		;300d	36 00 	6 . 
	adc a,000h		;300f	ce 00 	. . 
	sub (hl)			;3011	96 	. 
	nop			;3012	00 	. 
	xor 006h		;3013	ee 06 	. . 
	call z,0fc00h		;3015	cc 00 fc 	. . . 
l3018h:
	inc b			;3018	04 	. 
	sbc a,h			;3019	9c 	. 
	nop			;301a	00 	. 
	call m,0fc0ch		;301b	fc 0c fc 	. . . 
	inc b			;301e	04 	. 
l301fh:
	call m,0f8fch		;301f	fc fc f8 	. . . 
	jr $-6		;3022	18 f8 	. . 
	ret m			;3024	f8 	. 
	ret po			;3025	e0 	. 
	ret po			;3026	e0 	. 
	ret po			;3027	e0 	. 
	ret po			;3028	e0 	. 
	nop			;3029	00 	. 
	nop			;302a	00 	. 
	nop			;302b	00 	. 
	nop			;302c	00 	. 
	ld bc,l0002h		;302d	01 02 00 	. . . 
	inc bc			;3030	03 	. 
	rlca			;3031	07 	. 
	ld bc,l0701h		;3032	01 01 07 	. . . 
	inc bc			;3035	03 	. 
	ld (bc),a			;3036	02 	. 
l3037h:
	ld (bc),a			;3037	02 	. 
	inc bc			;3038	03 	. 
l3039h:
	rlca			;3039	07 	. 
	nop			;303a	00 	. 
l303bh:
	rlca			;303b	07 	. 
	nop			;303c	00 	. 
	ex af,af'			;303d	08 	. 
l303eh:
	nop			;303e	00 	. 
	rrca			;303f	0f 	. 
	nop			;3040	00 	. 
	ld e,000h		;3041	1e 00 	. . 
	rra			;3043	1f 	. 
	djnz l3062h		;3044	10 1c 	. . 
	nop			;3046	00 	. 
	rra			;3047	1f 	. 
	djnz l3068h		;3048	10 1e 	. . 
	djnz l306bh		;304a	10 1f 	. . 
	jr l304eh		;304c	18 00 	. . 
l304eh:
	ld b,b			;304e	40 	@ 
	nop			;304f	00 	. 
	ld b,b			;3050	40 	@ 
	or b			;3051	b0 	. 
	nop			;3052	00 	. 
	nop			;3053	00 	. 
	or b			;3054	b0 	. 
	ld b,b			;3055	40 	@ 
	add a,b			;3056	80 	. 
	nop			;3057	00 	. 
	ret nz			;3058	c0 	. 
	ret po			;3059	e0 	. 
	nop			;305a	00 	. 
	ret po			;305b	e0 	. 
	nop			;305c	00 	. 
	ret p			;305d	f0 	. 
	ret nz			;305e	c0 	. 
	jr nc,l3061h		;305f	30 00 	0 . 
l3061h:
	ld l,b			;3061	68 	h 
l3062h:
	ld h,b			;3062	60 	` 
	sbc a,b			;3063	98 	. 
	nop			;3064	00 	. 
	ld a,b			;3065	78 	x 
	ex af,af'			;3066	08 	. 
	add a,b			;3067	80 	. 
l3068h:
	nop			;3068	00 	. 
	jr z,$+34		;3069	28 20 	(   
l306bh:
	ret c			;306b	d8 	. 
	nop			;306c	00 	. 
	ld e,010h		;306d	1e 10 	. . 
	rra			;306f	1f 	. 
	jr $+17		;3070	18 0f 	. . 
	ex af,af'			;3072	08 	. 
	rrca			;3073	0f 	. 
	inc c			;3074	0c 	. 
	rrca			;3075	0f 	. 
	ex af,af'			;3076	08 	. 
	rrca			;3077	0f 	. 
	inc c			;3078	0c 	. 
	rlca			;3079	07 	. 
	inc b			;307a	04 	. 
	rlca			;307b	07 	. 
	ld b,007h		;307c	06 07 	. . 
	inc b			;307e	04 	. 
	rlca			;307f	07 	. 
	ld b,003h		;3080	06 03 	. . 
	ld (bc),a			;3082	02 	. 
	inc bc			;3083	03 	. 
	inc bc			;3084	03 	. 
	inc bc			;3085	03 	. 
	ld (bc),a			;3086	02 	. 
	inc bc			;3087	03 	. 
	inc bc			;3088	03 	. 
	ld bc,l0101h		;3089	01 01 01 	. . . 
	ld bc,l0878h		;308c	01 78 08 	. x . 
	add a,b			;308f	80 	. 
	nop			;3090	00 	. 
	ld d,b			;3091	50 	P 
	ld b,b			;3092	40 	@ 
	or b			;3093	b0 	. 
	nop			;3094	00 	. 
	ld (hl),b			;3095	70 	p 
	djnz l3018h		;3096	10 80 	. . 
	nop			;3098	00 	. 
	jr nz,l309bh		;3099	20 00 	  . 
l309bh:
	ret po			;309b	e0 	. 
	nop			;309c	00 	. 
	ret po			;309d	e0 	. 
	jr nz,l30a0h		;309e	20 00 	  . 
l30a0h:
	nop			;30a0	00 	. 
	nop			;30a1	00 	. 
	nop			;30a2	00 	. 
	ret nz			;30a3	c0 	. 
	nop			;30a4	00 	. 
	ld b,b			;30a5	40 	@ 
	nop			;30a6	00 	. 
	ret nz			;30a7	c0 	. 
	nop			;30a8	00 	. 
	add a,b			;30a9	80 	. 
	nop			;30aa	00 	. 
	add a,b			;30ab	80 	. 
	add a,b			;30ac	80 	. 
	nop			;30ad	00 	. 
	ld e,000h		;30ae	1e 00 	. . 
	ld e,039h		;30b0	1e 39 	. 9 
	ld b,000h		;30b2	06 00 	. . 
	ccf			;30b4	3f 	? 
	ld b,000h		;30b5	06 00 	. . 
	nop			;30b7	00 	. 
	ld b,000h		;30b8	06 00 	. . 
	nop			;30ba	00 	. 
	nop			;30bb	00 	. 
	nop			;30bc	00 	. 
	inc bc			;30bd	03 	. 
	ld bc,l0303h		;30be	01 03 03 	. . . 
	rrca			;30c1	0f 	. 
	ld bc,l030fh		;30c2	01 0f 03 	. . . 
	dec e			;30c5	1d 	. 
	nop			;30c6	00 	. 
	rra			;30c7	1f 	. 
	inc c			;30c8	0c 	. 
	ld e,000h		;30c9	1e 00 	. . 
	rra			;30cb	1f 	. 
	jr l30eeh		;30cc	18 20 	.   
	nop			;30ce	00 	. 
	jr nz,$+34		;30cf	20 20 	    
	ret nz			;30d1	c0 	. 
	nop			;30d2	00 	. 
	ld b,b			;30d3	40 	@ 
	ret nz			;30d4	c0 	. 
	add a,b			;30d5	80 	. 
	nop			;30d6	00 	. 
	add a,b			;30d7	80 	. 
	add a,b			;30d8	80 	. 
	add a,b			;30d9	80 	. 
	nop			;30da	00 	. 
	add a,b			;30db	80 	. 
	add a,b			;30dc	80 	. 
	ret po			;30dd	e0 	. 
	nop			;30de	00 	. 
	ret po			;30df	e0 	. 
	add a,b			;30e0	80 	. 
	ret c			;30e1	d8 	. 
	nop			;30e2	00 	. 
	ret m			;30e3	f8 	. 
	ret nz			;30e4	c0 	. 
	and h			;30e5	a4 	. 
	nop			;30e6	00 	. 
	call c,07400h		;30e7	dc 00 74 	. . t 
	nop			;30ea	00 	. 
	adc a,h			;30eb	8c 	. 
	nop			;30ec	00 	. 
	ccf			;30ed	3f 	? 
l30eeh:
	jr nz,l312fh		;30ee	20 3f 	  ? 
	jr c,l3131h		;30f0	38 3f 	8 ? 
	jr nz,l3133h		;30f2	20 3f 	  ? 
	jr c,l3135h		;30f4	38 3f 	8 ? 
	jr nz,l3137h		;30f6	20 3f 	  ? 
	inc a			;30f8	3c 	< 
	rra			;30f9	1f 	. 
	djnz l311bh		;30fa	10 1f 	. . 
	inc e			;30fc	1c 	. 
	rra			;30fd	1f 	. 
	djnz l311fh		;30fe	10 1f 	. . 
	ld e,00fh		;3100	1e 0f 	. . 
	ex af,af'			;3102	08 	. 
	rrca			;3103	0f 	. 
	rrca			;3104	0f 	. 
	rlca			;3105	07 	. 
	ld b,007h		;3106	06 07 	. . 
	rlca			;3108	07 	. 
	ld bc,l0101h		;3109	01 01 01 	. . . 
	ld bc,l0094h		;310c	01 94 00 	. . . 
	call pe,0cc00h		;310f	ec 00 cc 	. . . 
	nop			;3112	00 	. 
	call m,09c00h		;3113	fc 00 9c 	. . . 
	nop			;3116	00 	. 
	call m,0980ch		;3117	fc 0c 98 	. . . 
l311ah:
	nop			;311a	00 	. 
l311bh:
	ret m			;311b	f8 	. 
	ex af,af'			;311c	08 	. 
	cp b			;311d	b8 	. 
	nop			;311e	00 	. 
l311fh:
	ret m			;311f	f8 	. 
	jr l311ah		;3120	18 f8 	. . 
	ex af,af'			;3122	08 	. 
	ret m			;3123	f8 	. 
	ret m			;3124	f8 	. 
	ret p			;3125	f0 	. 
	jr nc,$-14		;3126	30 f0 	0 . 
	ret p			;3128	f0 	. 
	ret nz			;3129	c0 	. 
	ret nz			;312a	c0 	. 
	ret nz			;312b	c0 	. 
	ret nz			;312c	c0 	. 
	nop			;312d	00 	. 
	nop			;312e	00 	. 
l312fh:
	nop			;312f	00 	. 
	nop			;3130	00 	. 
l3131h:
	nop			;3131	00 	. 
	nop			;3132	00 	. 
l3133h:
	nop			;3133	00 	. 
	nop			;3134	00 	. 
l3135h:
	nop			;3135	00 	. 
	nop			;3136	00 	. 
l3137h:
	nop			;3137	00 	. 
	ld bc,l0909h		;3138	01 09 09 	. . . 
	add hl,bc			;313b	09 	. 
	ld c,017h		;313c	0e 17 	. . 
	rla			;313e	17 	. 
	rla			;313f	17 	. 
	jr l3171h		;3140	18 2f 	. / 
	cpl			;3142	2f 	/ 
	cpl			;3143	2f 	/ 
	jr nc,l31a5h		;3144	30 5f 	0 _ 
	ld e,a			;3146	5f 	_ 
	ld e,a			;3147	5f 	_ 
	ld h,b			;3148	60 	` 
	ld d,e			;3149	53 	S 
	ld e,a			;314a	5f 	_ 
	ld e,a			;314b	5f 	_ 
	ld h,b			;314c	60 	` 
	nop			;314d	00 	. 
	nop			;314e	00 	. 
	nop			;314f	00 	. 
	nop			;3150	00 	. 
	nop			;3151	00 	. 
	nop			;3152	00 	. 
	nop			;3153	00 	. 
	nop			;3154	00 	. 
	nop			;3155	00 	. 
	nop			;3156	00 	. 
	nop			;3157	00 	. 
	ret p			;3158	f0 	. 
	ret p			;3159	f0 	. 
	ret p			;315a	f0 	. 
	ret p			;315b	f0 	. 
	ex af,af'			;315c	08 	. 
	ret m			;315d	f8 	. 
	adc a,b			;315e	88 	. 
	adc a,b			;315f	88 	. 
	inc b			;3160	04 	. 
	call m,0cccch		;3161	fc cc cc 	. . . 
	ld (bc),a			;3164	02 	. 
	cp 0f6h		;3165	fe f6 	. . 
	or 001h		;3167	f6 01 	. . 
	ld a,0feh		;3169	3e fe 	> . 
	cp 001h		;316b	fe 01 	. . 
	and e			;316d	a3 	. 
	cp a			;316e	bf 	. 
	cp a			;316f	bf 	. 
	ret nz			;3170	c0 	. 
l3171h:
	and e			;3171	a3 	. 
	cp a			;3172	bf 	. 
	cp a			;3173	bf 	. 
	ret nz			;3174	c0 	. 
	and a			;3175	a7 	. 
	cp a			;3176	bf 	. 
	cp a			;3177	bf 	. 
	ret nz			;3178	c0 	. 
	ld e,a			;3179	5f 	_ 
	ld e,a			;317a	5f 	_ 
	ld e,a			;317b	5f 	_ 
	ld h,b			;317c	60 	` 
	ld hl,(02a2ah)		;317d	2a 2a 2a 	* * * 
	dec (hl)			;3180	35 	5 
	ld hl,(l2020h)		;3181	2a 20 20 	*     
	dec (hl)			;3184	35 	5 
l3185h:
	dec d			;3185	15 	. 
	dec d			;3186	15 	. 
	dec d			;3187	15 	. 
	rra			;3188	1f 	. 
l3189h:
	ld a,(bc)			;3189	0a 	. 
	ld a,(bc)			;318a	0a 	. 
	ld a,(bc)			;318b	0a 	. 
	ld a,(bc)			;318c	0a 	. 
	ld e,0feh		;318d	1e fe 	. . 
	cp 001h		;318f	fe 01 	. . 
	ld c,0feh		;3191	0e fe 	. . 
	cp 001h		;3193	fe 01 	. . 
	sbc a,(hl)			;3195	9e 	. 
	cp 0feh		;3196	fe fe 	. . 
	ld bc,0fdfdh		;3198	01 fd fd 	. . . 
	defb 0fdh,003h,0c2h	;illegal sequence		;319b	fd 03 c2 	. . . 
	jp nz,03ec2h		;319e	c2 c2 3e 	. . > 
	call c,l1c1ch		;31a1	dc 1c 1c 	. . . 
	inc a			;31a4	3c 	< 
l31a5h:
	jr nz,l31c7h		;31a5	20 20 	    
	jr nz,l3189h		;31a7	20 e0 	  . 
	ret nz			;31a9	c0 	. 
	ret nz			;31aa	c0 	. 
	ret nz			;31ab	c0 	. 
	ret nz			;31ac	c0 	. 
	dec bc			;31ad	0b 	. 
	dec bc			;31ae	0b 	. 
	dec bc			;31af	0b 	. 
	inc b			;31b0	04 	. 
	nop			;31b1	00 	. 
	nop			;31b2	00 	. 
	nop			;31b3	00 	. 
	ld bc,06868h		;31b4	01 68 68 	. h h 
	ld l,b			;31b7	68 	h 
	rla			;31b8	17 	. 
	add a,e			;31b9	83 	. 
	inc bc			;31ba	03 	. 
	inc bc			;31bb	03 	. 
	inc e			;31bc	1c 	. 
	rrca			;31bd	0f 	. 
	rrca			;31be	0f 	. 
	rrca			;31bf	0f 	. 
	jr nc,l3221h		;31c0	30 5f 	0 _ 
	ld e,a			;31c2	5f 	_ 
	ld e,a			;31c3	5f 	_ 
	jr nz,l3185h		;31c4	20 bf 	  . 
	cp a			;31c6	bf 	. 
l31c7h:
	cp a			;31c7	bf 	. 
	ld b,b			;31c8	40 	@ 
	and (hl)			;31c9	a6 	. 
	cp a			;31ca	bf 	. 
	cp a			;31cb	bf 	. 
	ld b,b			;31cc	40 	@ 
	ld b,b			;31cd	40 	@ 
	nop			;31ce	00 	. 
l31cfh:
	nop			;31cf	00 	. 
	add a,b			;31d0	80 	. 
	inc h			;31d1	24 	$ 
	jr nz,l31f4h		;31d2	20 20 	    
	ret nc			;31d4	d0 	. 
	ld (de),a			;31d5	12 	. 
	ld (de),a			;31d6	12 	. 
	ld (de),a			;31d7	12 	. 
	ret pe			;31d8	e8 	. 
	jp po,0e2e2h		;31d9	e2 e2 e2 	. . . 
	jr l31cfh		;31dc	18 f1 	. . 
	ld de,00e11h		;31de	11 11 0e 	. . . 
	ld sp,hl			;31e1	f9 	. 
	sbc a,c			;31e2	99 	. 
	sbc a,c			;31e3	99 	. 
	ld b,0fch		;31e4	06 fc 	. . 
	call pe,sub_03ech		;31e6	ec ec 03 	. . . 
	ld a,l			;31e9	7d 	} 
	defb 0fdh,0fdh,002h	;illegal sequence		;31ea	fd fd 02 	. . . 
	ld b,(hl)			;31ed	46 	F 
	ld a,a			;31ee	7f 	 
	ld a,a			;31ef	7f 	 
	add a,b			;31f0	80 	. 
	ld b,(hl)			;31f1	46 	F 
	ld a,a			;31f2	7f 	 
	ld a,a			;31f3	7f 	 
l31f4h:
	nop			;31f4	00 	. 
	ld c,a			;31f5	4f 	O 
	ld a,a			;31f6	7f 	 
	ld a,a			;31f7	7f 	 
	add a,b			;31f8	80 	. 
	ccf			;31f9	3f 	? 
	ccf			;31fa	3f 	? 
	ccf			;31fb	3f 	? 
	ret nz			;31fc	c0 	. 
	sub l			;31fd	95 	. 
	sub l			;31fe	95 	. 
	sub l			;31ff	95 	. 
	ld hl,(08095h)		;3200	2a 95 80 	* . . 
	add a,b			;3203	80 	. 
	ld hl,(l0040h)		;3204	2a 40 00 	* @ . 
	nop			;3207	00 	. 
	rra			;3208	1f 	. 
	ld (bc),a			;3209	02 	. 
	ld (bc),a			;320a	02 	. 
	ld (bc),a			;320b	02 	. 
	ld bc,0fc3ch		;320c	01 3c fc 	. < . 
	call m,sub_1c03h		;320f	fc 03 1c 	. . . 
	call m,sub_03fch		;3212	fc fc 03 	. . . 
	inc a			;3215	3c 	< 
	call m,sub_02fah+2		;3216	fc fc 02 	. . . 
	ret m			;3219	f8 	. 
	ret m			;321a	f8 	. 
	ret m			;321b	f8 	. 
	ld b,081h		;321c	06 81 	. . 
	add a,b			;321e	80 	. 
	add a,b			;321f	80 	. 
	ld a,h			;3220	7c 	| 
l3221h:
	sub d			;3221	92 	. 
	ld (de),a			;3222	12 	. 
	ld (de),a			;3223	12 	. 
	ld l,l			;3224	6d 	m 
	inc c			;3225	0c 	. 
	inc c			;3226	0c 	. 
	inc c			;3227	0c 	. 
	sub b			;3228	90 	. 
	ret nz			;3229	c0 	. 
	ret nz			;322a	c0 	. 
	ret nz			;322b	c0 	. 
	jr nz,l323fh		;322c	20 11 	  . 
	ld bc,l0201h		;322e	01 01 02 	. . . 
	nop			;3231	00 	. 
	nop			;3232	00 	. 
	nop			;3233	00 	. 
	add hl,bc			;3234	09 	. 
	ld b,b			;3235	40 	@ 
l3236h:
	nop			;3236	00 	. 
	nop			;3237	00 	. 
	rla			;3238	17 	. 
	inc de			;3239	13 	. 
	inc de			;323a	13 	. 
	inc de			;323b	13 	. 
	adc a,h			;323c	8c 	. 
	adc a,a			;323d	8f 	. 
	adc a,a			;323e	8f 	. 
l323fh:
	adc a,a			;323f	8f 	. 
	jr nc,l32a1h		;3240	30 5f 	0 _ 
	ld e,e			;3242	5b 	[ 
	ld e,e			;3243	5b 	[ 
	and b			;3244	a0 	. 
	ccf			;3245	3f 	? 
	ccf			;3246	3f 	? 
	ccf			;3247	3f 	? 
	ld b,b			;3248	40 	@ 
	ld h,03fh		;3249	26 3f 	& ? 
	ccf			;324b	3f 	? 
	ld b,b			;324c	40 	@ 
	ld d,b			;324d	50 	P 
	ld b,b			;324e	40 	@ 
	ld b,b			;324f	40 	@ 
	and b			;3250	a0 	. 
	jp 0c2c2h		;3251	c3 c2 c2 	. . . 
	inc c			;3254	0c 	. 
	nop			;3255	00 	. 
	nop			;3256	00 	. 
	nop			;3257	00 	. 
	ret p			;3258	f0 	. 
	ret po			;3259	e0 	. 
	ret po			;325a	e0 	. 
	ret po			;325b	e0 	. 
	ld a,(de)			;325c	1a 	. 
	pop af			;325d	f1 	. 
	jr nc,$+50		;325e	30 30 	0 0 
	inc c			;3260	0c 	. 
	ret m			;3261	f8 	. 
	sbc a,b			;3262	98 	. 
	sbc a,b			;3263	98 	. 
	ld b,0fch		;3264	06 fc 	. . 
	call pe,002ech		;3266	ec ec 02 	. . . 
	ld a,l			;3269	7d 	} 
	call m,sub_02fah+2		;326a	fc fc 02 	. . . 
	ld b,(hl)			;326d	46 	F 
	ld a,a			;326e	7f 	 
	ld a,a			;326f	7f 	 
	add a,b			;3270	80 	. 
	ld b,(hl)			;3271	46 	F 
	ld a,a			;3272	7f 	 
	ld a,a			;3273	7f 	 
	add a,b			;3274	80 	. 
	ld c,a			;3275	4f 	O 
	ld a,a			;3276	7f 	 
	ld a,a			;3277	7f 	 
	add a,b			;3278	80 	. 
	cp a			;3279	bf 	. 
	cp a			;327a	bf 	. 
	cp a			;327b	bf 	. 
	ld b,b			;327c	40 	@ 
	dec d			;327d	15 	. 
	dec d			;327e	15 	. 
	dec d			;327f	15 	. 
	xor d			;3280	aa 	. 
	ld d,l			;3281	55 	U 
	ld b,b			;3282	40 	@ 
	ld b,b			;3283	40 	@ 
	ld hl,(l0000h)		;3284	2a 00 00 	* . . 
	nop			;3287	00 	. 
	ld e,a			;3288	5f 	_ 
	inc c			;3289	0c 	. 
	inc c			;328a	0c 	. 
	inc c			;328b	0c 	. 
	ld (0fe3eh),hl		;328c	22 3e fe 	" > . 
	cp 001h		;328f	fe 01 	. . 
	dec e			;3291	1d 	. 
	defb 0fdh,0fdh,002h	;illegal sequence		;3292	fd fd 02 	. . . 
	inc a			;3295	3c 	< 
	call m,sub_03fch		;3296	fc fc 03 	. . . 
	ret m			;3299	f8 	. 
	ret m			;329a	f8 	. 
	ret m			;329b	f8 	. 
	ld b,080h		;329c	06 80 	. . 
	add a,b			;329e	80 	. 
	add a,b			;329f	80 	. 
	ld a,l			;32a0	7d 	} 
l32a1h:
	sub (hl)			;32a1	96 	. 
	ld d,016h		;32a2	16 16 	. . 
	ld l,b			;32a4	68 	h 
	ld b,b			;32a5	40 	@ 
	ld b,b			;32a6	40 	@ 
	ld b,b			;32a7	40 	@ 
	and h			;32a8	a4 	. 
	rlca			;32a9	07 	. 
	ld b,006h		;32aa	06 06 	. . 
	djnz l32b5h		;32ac	10 07 	. . 
	rlca			;32ae	07 	. 
	rlca			;32af	07 	. 
	rlca			;32b0	07 	. 
	ex af,af'			;32b1	08 	. 
	rrca			;32b2	0f 	. 
	rrca			;32b3	0f 	. 
	rrca			;32b4	0f 	. 
l32b5h:
	djnz $+33		;32b5	10 1f 	. . 
l32b7h:
	rra			;32b7	1f 	. 
	rra			;32b8	1f 	. 
	inc a			;32b9	3c 	< 
	inc hl			;32ba	23 	# 
	ccf			;32bb	3f 	? 
	inc hl			;32bc	23 	# 
	rra			;32bd	1f 	. 
	djnz l32dfh		;32be	10 1f 	. . 
	djnz $+33		;32c0	10 1f 	. . 
	jr $+33		;32c2	18 1f 	. . 
	ld e,039h		;32c4	1e 39 	. 9 
	ld h,027h		;32c6	26 27 	& ' 
	daa			;32c8	27 	' 
	ld h,b			;32c9	60 	` 
	ld e,a			;32ca	5f 	_ 
	ld e,a			;32cb	5f 	_ 
	ld e,a			;32cc	5f 	_ 
	add a,b			;32cd	80 	. 
	add a,b			;32ce	80 	. 
	add a,b			;32cf	80 	. 
	add a,b			;32d0	80 	. 
	ld b,b			;32d1	40 	@ 
	ret nz			;32d2	c0 	. 
l32d3h:
	ret nz			;32d3	c0 	. 
	ret nz			;32d4	c0 	. 
	jr nz,l32b7h		;32d5	20 e0 	  . 
	ret po			;32d7	e0 	. 
	ret po			;32d8	e0 	. 
	jr c,l32d3h		;32d9	38 f8 	8 . 
	ret m			;32db	f8 	. 
	ret m			;32dc	f8 	. 
	ld (hl),h			;32dd	74 	t 
	xor h			;32de	ac 	. 
l32dfh:
	call pe,0faach		;32df	ec ac fa 	. . . 
	ld (hl),0f6h		;32e2	36 f6 	6 . 
	ld (hl),0fah		;32e4	36 fa 	6 . 
	ld h,(hl)			;32e6	66 	f 
	cp 066h		;32e7	fe 66 	. f 
	cp 0dah		;32e9	fe da 	. . 
	cp 0dah		;32eb	fe da 	. . 
	ld b,e			;32ed	43 	C 
	ld a,h			;32ee	7c 	| 
	ld a,a			;32ef	7f 	 
	ld a,h			;32f0	7c 	| 
	ld b,a			;32f1	47 	G 
	ld a,b			;32f2	78 	x 
	ld a,a			;32f3	7f 	 
	ld a,c			;32f4	79 	y 
	ld c,a			;32f5	4f 	O 
	ld (hl),d			;32f6	72 	r 
	ld a,a			;32f7	7f 	 
	ld (hl),d			;32f8	72 	r 
	ld e,a			;32f9	5f 	_ 
	ld h,(hl)			;32fa	66 	f 
	ld a,a			;32fb	7f 	 
	ld h,(hl)			;32fc	66 	f 
	dec sp			;32fd	3b 	; 
	ld hl,(l2a3bh)		;32fe	2a 3b 2a 	* ; * 
	ld de,01111h		;3301	11 11 11 	. . . 
	ld de,l0000h		;3304	11 00 00 	. . . 
	nop			;3307	00 	. 
	nop			;3308	00 	. 
	nop			;3309	00 	. 
	nop			;330a	00 	. 
	nop			;330b	00 	. 
	nop			;330c	00 	. 
	call po,0fc1ch		;330d	e4 1c fc 	. . . 
	call c,03ec2h		;3310	dc c2 3e 	. . > 
	cp 03eh		;3313	fe 3e 	. > 
	add a,d			;3315	82 	. 
l3316h:
	ld a,(hl)			;3316	7e 	~ 
	cp 07eh		;3317	fe 7e 	. ~ 
	add a,h			;3319	84 	. 
	ld a,h			;331a	7c 	| 
	call m,0d47ch		;331b	fc 7c d4 	. | . 
	inc l			;331e	2c 	, 
	call pe,0e82ch		;331f	ec 2c e8 	. , . 
	jr $-6		;3322	18 f8 	. . 
	jr l3316h		;3324	18 f0 	. . 
	or b			;3326	b0 	. 
l3327h:
	ret p			;3327	f0 	. 
	or b			;3328	b0 	. 
l3329h:
	ld b,b			;3329	40 	@ 
	ld b,b			;332a	40 	@ 
	ld b,b			;332b	40 	@ 
	ld b,b			;332c	40 	@ 
	rrca			;332d	0f 	. 
	rrca			;332e	0f 	. 
	rrca			;332f	0f 	. 
	rrca			;3330	0f 	. 
	inc e			;3331	1c 	. 
	dec de			;3332	1b 	. 
	jr $+33		;3333	18 1f 	. . 
	jr c,l336eh		;3335	38 37 	8 7 
	jr nc,l3378h		;3337	30 3f 	0 ? 
	jr c,l3362h		;3339	38 27 	8 ' 
	jr nz,l337ch		;333b	20 3f 	  ? 
	ld a,h			;333d	7c 	| 
	ld h,e			;333e	63 	c 
	ld h,b			;333f	60 	` 
	ld a,(hl)			;3340	7e 	~ 
	ld a,(hl)			;3341	7e 	~ 
	ld b,c			;3342	41 	A 
	ld b,b			;3343	40 	@ 
	ld a,(hl)			;3344	7e 	~ 
	ld a,h			;3345	7c 	| 
	ld b,e			;3346	43 	C 
	ld b,b			;3347	40 	@ 
	ld a,h			;3348	7c 	| 
	ld (hl),h			;3349	74 	t 
	ld c,a			;334a	4f 	O 
	ld b,h			;334b	44 	D 
	ld (hl),h			;334c	74 	t 
	ret po			;334d	e0 	. 
	ret po			;334e	e0 	. 
	ret po			;334f	e0 	. 
	ret po			;3350	e0 	. 
	ld (hl),b			;3351	70 	p 
	or b			;3352	b0 	. 
	jr nc,$-78		;3353	30 b0 	0 . 
	jr nc,l3327h		;3355	30 d0 	0 . 
	djnz l3329h		;3357	10 d0 	. . 
	jr l33d3h		;3359	18 78 	. x 
	sbc a,b			;335b	98 	. 
	ret m			;335c	f8 	. 
	ex af,af'			;335d	08 	. 
	ret m			;335e	f8 	. 
	ex af,af'			;335f	08 	. 
	jr c,l336ah		;3360	38 08 	8 . 
l3362h:
	ret m			;3362	f8 	. 
	ex af,af'			;3363	08 	. 
	jr c,l33aeh		;3364	38 48 	8 H 
	ret m			;3366	f8 	. 
	ld c,b			;3367	48 	H 
	ld e,b			;3368	58 	X 
	ld c,b			;3369	48 	H 
l336ah:
	ret m			;336a	f8 	. 
	ld c,b			;336b	48 	H 
	ld e,b			;336c	58 	X 
	ld (hl),b			;336d	70 	p 
l336eh:
	ld c,a			;336e	4f 	O 
	ld b,b			;336f	40 	@ 
	ld (hl),b			;3370	70 	p 
	ld (hl),b			;3371	70 	p 
	ld b,a			;3372	47 	G 
	ld c,b			;3373	48 	H 
	ld a,b			;3374	78 	x 
	ld (hl),b			;3375	70 	p 
	ld b,e			;3376	43 	C 
	ld c,h			;3377	4c 	L 
l3378h:
	ld a,h			;3378	7c 	| 
	ld a,a			;3379	7f 	 
	ld b,b			;337a	40 	@ 
	ld c,a			;337b	4f 	O 
l337ch:
	ld a,b			;337c	78 	x 
	ld a,a			;337d	7f 	 
	ld b,b			;337e	40 	@ 
	ld e,a			;337f	5f 	_ 
	ld a,b			;3380	78 	x 
	ld a,a			;3381	7f 	 
	ld b,d			;3382	42 	B 
	ld e,l			;3383	5d 	] 
	ld (hl),b			;3384	70 	p 
	ld a,a			;3385	7f 	 
	ld h,e			;3386	63 	c 
	ld a,h			;3387	7c 	| 
	ld (hl),b			;3388	70 	p 
	ccf			;3389	3f 	? 
	ld hl,l303eh		;338a	21 3e 30 	! > 0 
	ex af,af'			;338d	08 	. 
	ret m			;338e	f8 	. 
	ex af,af'			;338f	08 	. 
	jr l339ah		;3390	18 08 	. . 
	ret c			;3392	d8 	. 
	jr z,l33cdh		;3393	28 38 	( 8 
	ex af,af'			;3395	08 	. 
	sbc a,b			;3396	98 	. 
	ld l,b			;3397	68 	h 
	ld a,b			;3398	78 	x 
	ret m			;3399	f8 	. 
l339ah:
	ex af,af'			;339a	08 	. 
	ret z			;339b	c8 	. 
	ex af,af'			;339c	08 	. 
	ret m			;339d	f8 	. 
	ex af,af'			;339e	08 	. 
	ret z			;339f	c8 	. 
	ex af,af'			;33a0	08 	. 
	ret m			;33a1	f8 	. 
	adc a,b			;33a2	88 	. 
	ld c,b			;33a3	48 	H 
	ex af,af'			;33a4	08 	. 
	ret m			;33a5	f8 	. 
	adc a,b			;33a6	88 	. 
	ld a,b			;33a7	78 	x 
	ex af,af'			;33a8	08 	. 
	ret m			;33a9	f8 	. 
	ex af,af'			;33aa	08 	. 
	ret z			;33ab	c8 	. 
	ex af,af'			;33ac	08 	. 
	ccf			;33ad	3f 	? 
l33aeh:
	jr nz,$+65		;33ae	20 3f 	  ? 
	jr nc,l33f1h		;33b0	30 3f 	0 ? 
	jr nz,l33f3h		;33b2	20 3f 	  ? 
	jr nc,$+50		;33b4	30 30 	0 0 
	cpl			;33b6	2f 	/ 
	ccf			;33b7	3f 	? 
	ccf			;33b8	3f 	? 
	jr nc,l33eah		;33b9	30 2f 	0 / 
	ccf			;33bb	3f 	? 
	ccf			;33bc	3f 	? 
	jr nc,$+49		;33bd	30 2f 	0 / 
	ccf			;33bf	3f 	? 
	ccf			;33c0	3f 	? 
	jr nc,$+49		;33c1	30 2f 	0 / 
	ccf			;33c3	3f 	? 
	ccf			;33c4	3f 	? 
	jr l33deh		;33c5	18 17 	. . 
	rra			;33c7	1f 	. 
	rra			;33c8	1f 	. 
	rrca			;33c9	0f 	. 
	rrca			;33ca	0f 	. 
	rrca			;33cb	0f 	. 
	rrca			;33cc	0f 	. 
l33cdh:
	ret m			;33cd	f8 	. 
	ex af,af'			;33ce	08 	. 
	ret m			;33cf	f8 	. 
	ex af,af'			;33d0	08 	. 
	ret m			;33d1	f8 	. 
	ex af,af'			;33d2	08 	. 
l33d3h:
	ret m			;33d3	f8 	. 
	ex af,af'			;33d4	08 	. 
	ex af,af'			;33d5	08 	. 
	ret m			;33d6	f8 	. 
l33d7h:
	ret m			;33d7	f8 	. 
	ret m			;33d8	f8 	. 
	ex af,af'			;33d9	08 	. 
	ret m			;33da	f8 	. 
	ret m			;33db	f8 	. 
	ret m			;33dc	f8 	. 
	ex af,af'			;33dd	08 	. 
l33deh:
	ret m			;33de	f8 	. 
	ret m			;33df	f8 	. 
	ret m			;33e0	f8 	. 
	ex af,af'			;33e1	08 	. 
	ret m			;33e2	f8 	. 
	ret m			;33e3	f8 	. 
	ret m			;33e4	f8 	. 
	djnz l33d7h		;33e5	10 f0 	. . 
	ret p			;33e7	f0 	. 
	ret p			;33e8	f0 	. 
	ret po			;33e9	e0 	. 
l33eah:
	ret po			;33ea	e0 	. 
	ret po			;33eb	e0 	. 
	ret po			;33ec	e0 	. 
	ld hl,l0000h		;33ed	21 00 00 	! . . 
	nop			;33f0	00 	. 
l33f1h:
	jr nz,l33f3h		;33f1	20 00 	  . 
l33f3h:
	nop			;33f3	00 	. 
	nop			;33f4	00 	. 
	jr nz,l33f7h		;33f5	20 00 	  . 
l33f7h:
	nop			;33f7	00 	. 
	nop			;33f8	00 	. 
	add a,b			;33f9	80 	. 
	nop			;33fa	00 	. 
	nop			;33fb	00 	. 
	nop			;33fc	00 	. 
	inc b			;33fd	04 	. 
	nop			;33fe	00 	. 
	nop			;33ff	00 	. 
	nop			;3400	00 	. 
	ld (bc),a			;3401	02 	. 
	nop			;3402	00 	. 
	nop			;3403	00 	. 
	nop			;3404	00 	. 
	ld b,d			;3405	42 	B 
	nop			;3406	00 	. 
	nop			;3407	00 	. 
	nop			;3408	00 	. 
	ld b,b			;3409	40 	@ 
	nop			;340a	00 	. 
	nop			;340b	00 	. 
	nop			;340c	00 	. 
	nop			;340d	00 	. 
	nop			;340e	00 	. 
	ld bc,l0100h		;340f	01 00 01 	. . . 
	ld bc,l0103h		;3412	01 03 01 	. . . 
	ld (bc),a			;3415	02 	. 
	ld (bc),a			;3416	02 	. 
	ld b,002h		;3417	06 02 	. . 
	ld (bc),a			;3419	02 	. 
	ld (bc),a			;341a	02 	. 
	ld b,002h		;341b	06 02 	. . 
	ld e,01eh		;341d	1e 1e 	. . 
	ld e,01eh		;341f	1e 1e 	. . 
	ccf			;3421	3f 	? 
	ld hl,03f3fh		;3422	21 3f 3f 	! ? ? 
	ld a,a			;3425	7f 	 
	ld b,b			;3426	40 	@ 
	ld a,a			;3427	7f 	 
	ld (hl),c			;3428	71 	q 
	ld a,c			;3429	79 	y 
	ld b,(hl)			;342a	46 	F 
	ld a,a			;342b	7f 	 
	ld h,(hl)			;342c	66 	f 
	jr nc,l344fh		;342d	30 20 	0   
	ret nz			;342f	c0 	. 
	nop			;3430	00 	. 
	ret m			;3431	f8 	. 
	ret m			;3432	f8 	. 
	ret p			;3433	f0 	. 
	ret p			;3434	f0 	. 
	inc c			;3435	0c 	. 
	inc c			;3436	0c 	. 
	ex af,af'			;3437	08 	. 
	ex af,af'			;3438	08 	. 
	ld b,006h		;3439	06 06 	. . 
	inc b			;343b	04 	. 
	inc b			;343c	04 	. 
	add a,(hl)			;343d	86 	. 
	add a,(hl)			;343e	86 	. 
	inc b			;343f	04 	. 
	inc b			;3440	04 	. 
	add a,(hl)			;3441	86 	. 
	add a,(hl)			;3442	86 	. 
	call nz,0e484h		;3443	c4 84 e4 	. . . 
	ld h,h			;3446	64 	d 
	and 0e4h		;3447	e6 e4 	. . 
	call p,0f614h		;3449	f4 14 f6 	. . . 
	ld (hl),h			;344c	74 	t 
	or 089h		;344d	f6 89 	. . 
l344fh:
	rst 38h			;344f	ff 	. 
	ret			;3450	c9 	. 
	rst 38h			;3451	ff 	. 
	add a,b			;3452	80 	. 
	rst 38h			;3453	ff 	. 
	ret nz			;3454	c0 	. 
	rst 38h			;3455	ff 	. 
	add a,b			;3456	80 	. 
	rst 38h			;3457	ff 	. 
	ret po			;3458	e0 	. 
	ld a,a			;3459	7f 	 
	ld b,b			;345a	40 	@ 
	ld a,a			;345b	7f 	 
	ld (hl),b			;345c	70 	p 
	ccf			;345d	3f 	? 
	jr nz,l349fh		;345e	20 3f 	  ? 
	inc a			;3460	3c 	< 
	rra			;3461	1f 	. 
	jr l3483h		;3462	18 1f 	. . 
	rra			;3464	1f 	. 
	rlca			;3465	07 	. 
	ld b,007h		;3466	06 07 	. . 
	rlca			;3468	07 	. 
	ld bc,l0101h		;3469	01 01 01 	. . . 
	ld bc,l0cfch		;346c	01 fc 0c 	. . . 
	cp 03ch		;346f	fe 3c 	. < 
	ld a,h			;3471	7c 	| 
	sub h			;3472	94 	. 
	cp 0bch		;3473	fe bc 	. . 
	ret m			;3475	f8 	. 
	djnz $-2		;3476	10 fc 	. . 
	ld a,b			;3478	78 	x 
	or 022h		;3479	f6 22 	. " 
	cp 076h		;347b	fe 76 	. v 
	cp 022h		;347d	fe 22 	. " 
	cp 0f6h		;347f	fe f6 	. . 
	cp 042h		;3481	fe 42 	. B 
l3483h:
	cp 0f6h		;3483	fe f6 	. . 
	call m,0fc44h		;3485	fc 44 fc 	. D . 
	call pe,0f8f8h		;3488	ec f8 f8 	. . . 
	ret m			;348b	f8 	. 
	ret m			;348c	f8 	. 
	nop			;348d	00 	. 
	nop			;348e	00 	. 
	nop			;348f	00 	. 
	nop			;3490	00 	. 
	ld bc,l0101h		;3491	01 01 01 	. . . 
	ld bc,sub_0202h		;3494	01 02 02 	. . . 
	ld (bc),a			;3497	02 	. 
	ld (bc),a			;3498	02 	. 
	jr c,l34d3h		;3499	38 38 	8 8 
	jr c,l34d5h		;349b	38 38 	8 8 
	ld h,b			;349d	60 	` 
	ld b,b			;349e	40 	@ 
l349fh:
	ld h,b			;349f	60 	` 
	ld b,b			;34a0	40 	@ 
	ld b,b			;34a1	40 	@ 
	ld b,b			;34a2	40 	@ 
	ld b,b			;34a3	40 	@ 
	ld b,b			;34a4	40 	@ 
	ld b,b			;34a5	40 	@ 
	ld b,b			;34a6	40 	@ 
	ld b,b			;34a7	40 	@ 
	ld b,b			;34a8	40 	@ 
	ret nz			;34a9	c0 	. 
	add a,b			;34aa	80 	. 
	ret nz			;34ab	c0 	. 
	add a,b			;34ac	80 	. 
	nop			;34ad	00 	. 
	nop			;34ae	00 	. 
	nop			;34af	00 	. 
	nop			;34b0	00 	. 
	ret nz			;34b1	c0 	. 
	ret nz			;34b2	c0 	. 
	ret nz			;34b3	c0 	. 
	ret nz			;34b4	c0 	. 
	ld (hl),b			;34b5	70 	p 
	jr nc,l3528h		;34b6	30 70 	0 p 
	jr nc,l34d2h		;34b8	30 18 	0 . 
	ex af,af'			;34ba	08 	. 
	jr l34c5h		;34bb	18 08 	. . 
	inc c			;34bd	0c 	. 
	inc b			;34be	04 	. 
	inc c			;34bf	0c 	. 
	inc b			;34c0	04 	. 
	ld c,006h		;34c1	0e 06 	. . 
	ld c,006h		;34c3	0e 06 	. . 
l34c5h:
	rra			;34c5	1f 	. 
	rra			;34c6	1f 	. 
	rra			;34c7	1f 	. 
	rra			;34c8	1f 	. 
	ld h,l			;34c9	65 	e 
	ld a,e			;34ca	7b 	{ 
	ld a,e			;34cb	7b 	{ 
	ld a,e			;34cc	7b 	{ 
	ret nz			;34cd	c0 	. 
	add a,b			;34ce	80 	. 
	ret nz			;34cf	c0 	. 
	add a,b			;34d0	80 	. 
	rst 8			;34d1	cf 	. 
l34d2h:
	adc a,a			;34d2	8f 	. 
l34d3h:
	rst 8			;34d3	cf 	. 
	adc a,a			;34d4	8f 	. 
l34d5h:
	pop af			;34d5	f1 	. 
	rst 38h			;34d6	ff 	. 
	rst 38h			;34d7	ff 	. 
	rst 38h			;34d8	ff 	. 
	jp nc,0ededh		;34d9	d2 ed ed 	. . . 
	defb 0edh;next byte illegal after ed		;34dc	ed 	. 
	and (hl)			;34dd	a6 	. 
	exx			;34de	d9 	. 
	exx			;34df	d9 	. 
	exx			;34e0	d9 	. 
	call z,0f3f3h		;34e1	cc f3 f3 	. . . 
	di			;34e4	f3 	. 
	ld a,e			;34e5	7b 	{ 
	ld h,a			;34e6	67 	g 
	ld h,a			;34e7	67 	g 
	ld h,a			;34e8	67 	g 
	ld a,03eh		;34e9	3e 3e 	> > 
	ld a,03eh		;34eb	3e 3e 	> > 
	call 0f3f3h		;34ed	cd f3 f3 	. . . 
	di			;34f0	f3 	. 
	ld e,c			;34f1	59 	Y 
	ld h,a			;34f2	67 	g 
	rst 20h			;34f3	e7 	. 
	ld h,a			;34f4	67 	g 
	di			;34f5	f3 	. 
	rst 8			;34f6	cf 	. 
	rst 8			;34f7	cf 	. 
	rst 8			;34f8	cf 	. 
	xor 0feh		;34f9	ee fe 	. . 
	cp 0feh		;34fb	fe fe 	. . 
	cp b			;34fd	b8 	. 
	cp b			;34fe	b8 	. 
	cp b			;34ff	b8 	. 
	cp b			;3500	b8 	. 
	add a,b			;3501	80 	. 
	add a,b			;3502	80 	. 
	add a,b			;3503	80 	. 
	add a,b			;3504	80 	. 
	nop			;3505	00 	. 
	nop			;3506	00 	. 
	nop			;3507	00 	. 
	nop			;3508	00 	. 
	nop			;3509	00 	. 
	nop			;350a	00 	. 
	nop			;350b	00 	. 
	nop			;350c	00 	. 
	inc bc			;350d	03 	. 
	inc bc			;350e	03 	. 
	inc bc			;350f	03 	. 
	inc bc			;3510	03 	. 
	rrca			;3511	0f 	. 
	inc c			;3512	0c 	. 
	rrca			;3513	0f 	. 
	rrca			;3514	0f 	. 
	inc e			;3515	1c 	. 
	djnz l3537h		;3516	10 1f 	. . 
	inc e			;3518	1c 	. 
	dec sp			;3519	3b 	; 
	inc hl			;351a	23 	# 
	inc a			;351b	3c 	< 
	jr c,$+57		;351c	38 37 	8 7 
	daa			;351e	27 	' 
	jr c,l3551h		;351f	38 30 	8 0 
	ld l,a			;3521	6f 	o 
	ld c,h			;3522	4c 	L 
	ld (hl),d			;3523	72 	r 
l3524h:
	ld h,b			;3524	60 	` 
	ld l,a			;3525	6f 	o 
	ld c,h			;3526	4c 	L 
	ld (hl),c			;3527	71 	q 
l3528h:
	ld h,b			;3528	60 	` 
	ld l,a			;3529	6f 	o 
	ld c,e			;352a	4b 	K 
	ld (hl),b			;352b	70 	p 
	ld h,b			;352c	60 	` 
	ret nz			;352d	c0 	. 
	ret nz			;352e	c0 	. 
	ret nz			;352f	c0 	. 
	ret nz			;3530	c0 	. 
	ret p			;3531	f0 	. 
	jr nc,l3524h		;3532	30 f0 	0 . 
	ret p			;3534	f0 	. 
	jr c,$+10		;3535	38 08 	8 . 
l3537h:
	ret m			;3537	f8 	. 
	jr c,$-2		;3538	38 fc 	8 . 
	and h			;353a	a4 	. 
	inc e			;353b	1c 	. 
	inc e			;353c	1c 	. 
	call m,08c74h		;353d	fc 74 8c 	. t . 
	inc c			;3540	0c 	. 
	cp 062h		;3541	fe 62 	. b 
	add a,(hl)			;3543	86 	. 
	ld b,0feh		;3544	06 fe 	. . 
	ld b,d			;3546	42 	B 
	add a,(hl)			;3547	86 	. 
	ld b,0feh		;3548	06 fe 	. . 
	ld a,(bc)			;354a	0a 	. 
	add a,(hl)			;354b	86 	. 
	add a,(hl)			;354c	86 	. 
	ld l,a			;354d	6f 	o 
	ld c,a			;354e	4f 	O 
	ld (hl),b			;354f	70 	p 
	ld h,b			;3550	60 	` 
l3551h:
	scf			;3551	37 	7 
	ld h,038h		;3552	26 38 	& 8 
	jr nc,l3591h		;3554	30 3b 	0 ; 
	ld (l383bh+1),hl		;3556	22 3c 38 	" < 8 
	rra			;3559	1f 	. 
	djnz l357bh		;355a	10 1f 	. . 
	rra			;355c	1f 	. 
	rrca			;355d	0f 	. 
	dec bc			;355e	0b 	. 
	rrca			;355f	0f 	. 
	rrca			;3560	0f 	. 
	rrca			;3561	0f 	. 
	dec bc			;3562	0b 	. 
	ld c,00eh		;3563	0e 0e 	. . 
	rlca			;3565	07 	. 
	dec b			;3566	05 	. 
	ld b,006h		;3567	06 06 	. . 
	inc bc			;3569	03 	. 
	inc bc			;356a	03 	. 
	inc bc			;356b	03 	. 
	inc bc			;356c	03 	. 
	cp 01ah		;356d	fe 1a 	. . 
	ld b,006h		;356f	06 06 	. . 
	call m,00c34h		;3571	fc 34 0c 	. 4 . 
	inc c			;3574	0c 	. 
	call m,sub_1c64h		;3575	fc 64 1c 	. d . 
	inc e			;3578	1c 	. 
	ret m			;3579	f8 	. 
	ex af,af'			;357a	08 	. 
l357bh:
	ret m			;357b	f8 	. 
	ret m			;357c	f8 	. 
	ret p			;357d	f0 	. 
	ret nc			;357e	d0 	. 
	ret p			;357f	f0 	. 
	ret p			;3580	f0 	. 
	ret p			;3581	f0 	. 
	ret nc			;3582	d0 	. 
	ld (hl),b			;3583	70 	p 
	ld (hl),b			;3584	70 	p 
	ret po			;3585	e0 	. 
	and b			;3586	a0 	. 
	ld h,b			;3587	60 	` 
	ld h,b			;3588	60 	` 
	ret nz			;3589	c0 	. 
	ret nz			;358a	c0 	. 
	ret nz			;358b	c0 	. 
	ret nz			;358c	c0 	. 
	nop			;358d	00 	. 
	nop			;358e	00 	. 
	nop			;358f	00 	. 
	nop			;3590	00 	. 
l3591h:
	ld bc,l0101h		;3591	01 01 01 	. . . 
	ld bc,l0303h		;3594	01 03 03 	. . . 
	ld (bc),a			;3597	02 	. 
	ld (bc),a			;3598	02 	. 
	rlca			;3599	07 	. 
	rlca			;359a	07 	. 
	dec b			;359b	05 	. 
	dec b			;359c	05 	. 
	ld c,00eh		;359d	0e 0e 	. . 
	ld a,(bc)			;359f	0a 	. 
	ld a,(bc)			;35a0	0a 	. 
	rrca			;35a1	0f 	. 
	rrca			;35a2	0f 	. 
	dec bc			;35a3	0b 	. 
	dec bc			;35a4	0b 	. 
	inc e			;35a5	1c 	. 
	inc e			;35a6	1c 	. 
	rla			;35a7	17 	. 
	inc d			;35a8	14 	. 
	ccf			;35a9	3f 	? 
	ccf			;35aa	3f 	? 
	scf			;35ab	37 	7 
	scf			;35ac	37 	7 
	ld a,b			;35ad	78 	x 
	ld a,b			;35ae	78 	x 
	ld a,b			;35af	78 	x 
	ld a,b			;35b0	78 	x 
	call p,08cf4h		;35b1	f4 f4 8c 	. . . 
	add a,h			;35b4	84 	. 
	jp m,07efah		;35b5	fa fa 7e 	. . ~ 
	ld a,d			;35b8	7a 	z 
	add a,l			;35b9	85 	. 
	add a,l			;35ba	85 	. 
	add a,a			;35bb	87 	. 
	add a,l			;35bc	85 	. 
	ld a,l			;35bd	7d 	} 
	ld a,l			;35be	7d 	} 
	ld a,a			;35bf	7f 	 
	ld a,l			;35c0	7d 	} 
	add a,d			;35c1	82 	. 
	add a,d			;35c2	82 	. 
	cp 082h		;35c3	fe 82 	. . 
	ld a,h			;35c5	7c 	| 
	ld a,h			;35c6	7c 	| 
	call m,0807ch		;35c7	fc 7c 80 	. | . 
	add a,b			;35ca	80 	. 
	add a,b			;35cb	80 	. 
	add a,b			;35cc	80 	. 
	ld a,a			;35cd	7f 	 
	ld c,c			;35ce	49 	I 
	ld a,a			;35cf	7f 	 
	ld c,c			;35d0	49 	I 
	rst 38h			;35d1	ff 	. 
	add a,b			;35d2	80 	. 
	rst 38h			;35d3	ff 	. 
	add a,b			;35d4	80 	. 
	rst 38h			;35d5	ff 	. 
	add a,b			;35d6	80 	. 
	defb 0fdh,080h,0ffh	;illegal sequence		;35d7	fd 80 ff 	. . . 
	add a,b			;35da	80 	. 
	defb 0fdh,080h,07fh	;illegal sequence		;35db	fd 80 7f 	. .  
	ld b,c			;35de	41 	A 
	ld a,a			;35df	7f 	 
	ld b,c			;35e0	41 	A 
	ld a,022h		;35e1	3e 22 	> " 
	ld a,022h		;35e3	3e 22 	> " 
	inc e			;35e5	1c 	. 
	inc d			;35e6	14 	. 
	inc e			;35e7	1c 	. 
	inc d			;35e8	14 	. 
	ex af,af'			;35e9	08 	. 
	ex af,af'			;35ea	08 	. 
	ex af,af'			;35eb	08 	. 
	ex af,af'			;35ec	08 	. 
	nop			;35ed	00 	. 
	nop			;35ee	00 	. 
	nop			;35ef	00 	. 
	nop			;35f0	00 	. 
	add a,b			;35f1	80 	. 
	add a,b			;35f2	80 	. 
	add a,b			;35f3	80 	. 
	add a,b			;35f4	80 	. 
	add a,b			;35f5	80 	. 
	add a,b			;35f6	80 	. 
	add a,b			;35f7	80 	. 
	add a,b			;35f8	80 	. 
	add a,b			;35f9	80 	. 
	add a,b			;35fa	80 	. 
	add a,b			;35fb	80 	. 
	add a,b			;35fc	80 	. 
	nop			;35fd	00 	. 
	nop			;35fe	00 	. 
	nop			;35ff	00 	. 
	nop			;3600	00 	. 
	nop			;3601	00 	. 
	nop			;3602	00 	. 
	nop			;3603	00 	. 
	nop			;3604	00 	. 
	nop			;3605	00 	. 
	nop			;3606	00 	. 
	nop			;3607	00 	. 
	nop			;3608	00 	. 
	nop			;3609	00 	. 
	nop			;360a	00 	. 
	nop			;360b	00 	. 
	nop			;360c	00 	. 
	nop			;360d	00 	. 
	nop			;360e	00 	. 
	nop			;360f	00 	. 
	nop			;3610	00 	. 
	nop			;3611	00 	. 
	nop			;3612	00 	. 
	nop			;3613	00 	. 
	nop			;3614	00 	. 
	nop			;3615	00 	. 
	nop			;3616	00 	. 
	nop			;3617	00 	. 
	nop			;3618	00 	. 
	nop			;3619	00 	. 
	nop			;361a	00 	. 
	nop			;361b	00 	. 
	nop			;361c	00 	. 
	ld bc,l0101h		;361d	01 01 01 	. . . 
	ld bc,l0f0eh		;3620	01 0e 0f 	. . . 
	rrca			;3623	0f 	. 
	rrca			;3624	0f 	. 
	djnz l3645h		;3625	10 1e 	. . 
	rra			;3627	1f 	. 
	ld e,020h		;3628	1e 20 	.   
	ccf			;362a	3f 	? 
	ccf			;362b	3f 	? 
	ccf			;362c	3f 	? 
	nop			;362d	00 	. 
	nop			;362e	00 	. 
	nop			;362f	00 	. 
	nop			;3630	00 	. 
	jr $+26		;3631	18 18 	. . 
	jr l364dh		;3633	18 18 	. . 
	ld h,h			;3635	64 	d 
	ld a,h			;3636	7c 	| 
	ld a,h			;3637	7c 	| 
	ld a,h			;3638	7c 	| 
	add a,d			;3639	82 	. 
	and 0feh		;363a	e6 fe 	. . 
	and 001h		;363c	e6 01 	. . 
	add a,a			;363e	87 	. 
	rst 38h			;363f	ff 	. 
	add a,a			;3640	87 	. 
	dec b			;3641	05 	. 
	dec bc			;3642	0b 	. 
	ei			;3643	fb 	. 
	dec bc			;3644	0b 	. 
l3645h:
	dec b			;3645	05 	. 
	dec de			;3646	1b 	. 
	ei			;3647	fb 	. 
	dec de			;3648	1b 	. 
	ld bc,0ff3fh		;3649	01 3f ff 	. ? . 
	ccf			;364c	3f 	? 
l364dh:
	ld b,b			;364d	40 	@ 
	ld a,a			;364e	7f 	 
	ld a,a			;364f	7f 	 
	ld a,a			;3650	7f 	 
	ld d,b			;3651	50 	P 
	ld l,a			;3652	6f 	o 
	ld l,a			;3653	6f 	o 
	ld l,a			;3654	6f 	o 
	add a,c			;3655	81 	. 
	rst 38h			;3656	ff 	. 
	rst 38h			;3657	ff 	. 
	rst 38h			;3658	ff 	. 
	and b			;3659	a0 	. 
	rst 18h			;365a	df 	. 
	rst 18h			;365b	df 	. 
	rst 18h			;365c	df 	. 
	and b			;365d	a0 	. 
	rst 18h			;365e	df 	. 
	rst 18h			;365f	df 	. 
	rst 18h			;3660	df 	. 
	add a,c			;3661	81 	. 
	rst 38h			;3662	ff 	. 
	cp 0ffh		;3663	fe ff 	. . 
	ld a,a			;3665	7f 	 
	ld a,a			;3666	7f 	 
	ld b,c			;3667	41 	A 
	ld a,a			;3668	7f 	 
	ld a,03eh		;3669	3e 3e 	> > 
	ld a,03eh		;366b	3e 3e 	> > 
	pop bc			;366d	c1 	. 
	rst 38h			;366e	ff 	. 
	rst 38h			;366f	ff 	. 
	rst 38h			;3670	ff 	. 
	jp 0fdffh		;3671	c3 ff fd 	. . . 
	rst 38h			;3674	ff 	. 
	adc a,(hl)			;3675	8e 	. 
	cp 0f2h		;3676	fe f2 	. . 
	cp 03ch		;3678	fe 3c 	. < 
	call m,0fccch		;367a	fc cc fc 	. . . 
	ld (hl),b			;367d	70 	p 
	ret p			;367e	f0 	. 
	or b			;367f	b0 	. 
	ret p			;3680	f0 	. 
	ret nz			;3681	c0 	. 
	ret nz			;3682	c0 	. 
	ld b,b			;3683	40 	@ 
	ret nz			;3684	c0 	. 
	add a,b			;3685	80 	. 
	add a,b			;3686	80 	. 
	add a,b			;3687	80 	. 
	add a,b			;3688	80 	. 
	nop			;3689	00 	. 
	nop			;368a	00 	. 
	nop			;368b	00 	. 
	nop			;368c	00 	. 
	nop			;368d	00 	. 
	nop			;368e	00 	. 
	nop			;368f	00 	. 
	nop			;3690	00 	. 
	nop			;3691	00 	. 
	nop			;3692	00 	. 
	nop			;3693	00 	. 
	nop			;3694	00 	. 
	nop			;3695	00 	. 
	nop			;3696	00 	. 
	nop			;3697	00 	. 
	nop			;3698	00 	. 
	inc a			;3699	3c 	< 
	inc a			;369a	3c 	< 
	inc a			;369b	3c 	< 
	inc a			;369c	3c 	< 
	ld a,a			;369d	7f 	 
	ld b,e			;369e	43 	C 
	ld a,a			;369f	7f 	 
	ld b,e			;36a0	43 	C 
	rst 38h			;36a1	ff 	. 
	add a,c			;36a2	81 	. 
	or 080h		;36a3	f6 80 	. . 
	cp 080h		;36a5	fe 80 	. . 
	ei			;36a7	fb 	. 
	add a,b			;36a8	80 	. 
	rst 38h			;36a9	ff 	. 
	add a,c			;36aa	81 	. 
	ei			;36ab	fb 	. 
	add a,c			;36ac	81 	. 
	nop			;36ad	00 	. 
	nop			;36ae	00 	. 
	nop			;36af	00 	. 
	nop			;36b0	00 	. 
	nop			;36b1	00 	. 
	nop			;36b2	00 	. 
	nop			;36b3	00 	. 
	nop			;36b4	00 	. 
	nop			;36b5	00 	. 
	nop			;36b6	00 	. 
	nop			;36b7	00 	. 
	nop			;36b8	00 	. 
	nop			;36b9	00 	. 
	nop			;36ba	00 	. 
	nop			;36bb	00 	. 
	nop			;36bc	00 	. 
	ret p			;36bd	f0 	. 
	ret p			;36be	f0 	. 
	ret p			;36bf	f0 	. 
	ret p			;36c0	f0 	. 
	call m,l0cfch		;36c1	fc fc 0c 	. . . 
	inc c			;36c4	0c 	. 
	ld c,00eh		;36c5	0e 0e 	. . 
	jp p,0f702h		;36c7	f2 02 f7 	. . . 
	rst 30h			;36ca	f7 	. 
	ld sp,hl			;36cb	f9 	. 
	pop af			;36cc	f1 	. 
	rst 38h			;36cd	ff 	. 
	add a,c			;36ce	81 	. 
	rst 38h			;36cf	ff 	. 
	add a,c			;36d0	81 	. 
	ld a,(hl)			;36d1	7e 	~ 
	ld b,d			;36d2	42 	B 
	ld a,(hl)			;36d3	7e 	~ 
	ld b,d			;36d4	42 	B 
	daa			;36d5	27 	' 
	daa			;36d6	27 	' 
	dec sp			;36d7	3b 	; 
	inc hl			;36d8	23 	# 
	inc de			;36d9	13 	. 
	inc de			;36da	13 	. 
	inc e			;36db	1c 	. 
	djnz l36eah		;36dc	10 0c 	. . 
	inc c			;36de	0c 	. 
	rrca			;36df	0f 	. 
	inc c			;36e0	0c 	. 
	inc bc			;36e1	03 	. 
	inc bc			;36e2	03 	. 
	inc bc			;36e3	03 	. 
	inc bc			;36e4	03 	. 
	nop			;36e5	00 	. 
	nop			;36e6	00 	. 
	nop			;36e7	00 	. 
	nop			;36e8	00 	. 
	nop			;36e9	00 	. 
l36eah:
	nop			;36ea	00 	. 
	nop			;36eb	00 	. 
	nop			;36ec	00 	. 
	dec bc			;36ed	0b 	. 
	dec bc			;36ee	0b 	. 
	dec c			;36ef	0d 	. 
	add hl,bc			;36f0	09 	. 
	dec bc			;36f1	0b 	. 
	dec bc			;36f2	0b 	. 
	dec c			;36f3	0d 	. 
	add hl,bc			;36f4	09 	. 
	rst 30h			;36f5	f7 	. 
	rst 30h			;36f6	f7 	. 
	ld sp,hl			;36f7	f9 	. 
	pop af			;36f8	f1 	. 
	jp m,l06fah		;36f9	fa fa 06 	. . . 
	ld (bc),a			;36fc	02 	. 
	inc c			;36fd	0c 	. 
	inc c			;36fe	0c 	. 
	call m,0f00ch		;36ff	fc 0c f0 	. . . 
	ret p			;3702	f0 	. 
	ret p			;3703	f0 	. 
	ret p			;3704	f0 	. 
	nop			;3705	00 	. 
	nop			;3706	00 	. 
	nop			;3707	00 	. 
l3708h:
	nop			;3708	00 	. 
	nop			;3709	00 	. 
	nop			;370a	00 	. 
	nop			;370b	00 	. 
	nop			;370c	00 	. 
	inc a			;370d	3c 	< 
	inc a			;370e	3c 	< 
	inc a			;370f	3c 	< 
	inc a			;3710	3c 	< 
	ld b,e			;3711	43 	C 
	ld b,e			;3712	43 	C 
	ld a,a			;3713	7f 	 
	ld a,a			;3714	7f 	 
	ld e,h			;3715	5c 	\ 
	ld e,h			;3716	5c 	\ 
	ld h,e			;3717	63 	c 
	ld h,e			;3718	63 	c 
	ld d,b			;3719	50 	P 
	ld d,b			;371a	50 	P 
	ld l,a			;371b	6f 	o 
	ld h,a			;371c	67 	g 
	ld (l3f22h),hl		;371d	22 22 3f 	" " ? 
	ccf			;3720	3f 	? 
	inc hl			;3721	23 	# 
	ld hl,l3d3dh		;3722	21 3d 3d 	! = = 
	daa			;3725	27 	' 
	ld hl,l3939h		;3726	21 39 39 	! 9 9 
	scf			;3729	37 	7 
	jr nc,l3764h		;372a	30 38 	0 8 
	jr c,$+62		;372c	38 3c 	8 < 
	inc a			;372e	3c 	< 
	inc a			;372f	3c 	< 
	inc a			;3730	3c 	< 
	jp nz,0fec2h		;3731	c2 c2 fe 	. . . 
	cp 03ah		;3734	fe 3a 	. : 
	ld a,(0c6c6h)		;3736	3a c6 c6 	: . . 
	ld a,(bc)			;3739	0a 	. 
	ld a,(bc)			;373a	0a 	. 
	or 0e6h		;373b	f6 e6 	. . 
	ld b,h			;373d	44 	D 
	ld b,h			;373e	44 	D 
	call m,0c4fch		;373f	fc fc c4 	. . . 
	add a,h			;3742	84 	. 
	cp h			;3743	bc 	. 
	cp h			;3744	bc 	. 
	call po,09c84h		;3745	e4 84 9c 	. . . 
	sbc a,h			;3748	9c 	. 
	call pe,sub_1c0ch		;3749	ec 0c 1c 	. . . 
	inc e			;374c	1c 	. 
	ld c,e			;374d	4b 	K 
	ld c,b			;374e	48 	H 
	ld a,h			;374f	7c 	| 
	ld a,h			;3750	7c 	| 
	add a,h			;3751	84 	. 
	add a,h			;3752	84 	. 
	rst 38h			;3753	ff 	. 
	rst 38h			;3754	ff 	. 
	sbc a,a			;3755	9f 	. 
	sbc a,a			;3756	9f 	. 
	rst 38h			;3757	ff 	. 
	rst 38h			;3758	ff 	. 
	ld h,e			;3759	63 	c 
	ld h,b			;375a	60 	` 
	ld a,a			;375b	7f 	 
	ld a,h			;375c	7c 	| 
	ld c,c			;375d	49 	I 
	ld c,b			;375e	48 	H 
	ld (hl),a			;375f	77 	w 
	halt			;3760	76 	v 
	ld e,l			;3761	5d 	] 
	ld e,h			;3762	5c 	\ 
	ld h,e			;3763	63 	c 
l3764h:
	ld h,d			;3764	62 	b 
	cpl			;3765	2f 	/ 
	cpl			;3766	2f 	/ 
	scf			;3767	37 	7 
	scf			;3768	37 	7 
	jr $+26		;3769	18 18 	. . 
	jr l3785h		;376b	18 18 	. . 
	jp nc,l3e12h		;376d	d2 12 3e 	. . > 
	ld a,021h		;3770	3e 21 	> ! 
	ld hl,0ffffh		;3772	21 ff ff 	! . . 
	ld sp,hl			;3775	f9 	. 
	ld sp,hl			;3776	f9 	. 
	rst 38h			;3777	ff 	. 
	rst 38h			;3778	ff 	. 
	add a,006h		;3779	c6 06 	. . 
	cp 03eh		;377b	fe 3e 	. > 
	sub d			;377d	92 	. 
	ld (de),a			;377e	12 	. 
	xor 06eh		;377f	ee 6e 	. n 
	cp d			;3781	ba 	. 
	ld a,(046c6h)		;3782	3a c6 46 	: . F 
l3785h:
	call p,0ecf4h		;3785	f4 f4 ec 	. . . 
	call pe,l1818h		;3788	ec 18 18 	. . . 
	jr $+26		;378b	18 18 	. . 
	jr l37a7h		;378d	18 18 	. . 
	jr l37a9h		;378f	18 18 	. . 
	inc h			;3791	24 	$ 
	inc a			;3792	3c 	< 
	inc h			;3793	24 	$ 
	inc h			;3794	24 	$ 
	ld c,d			;3795	4a 	J 
	ld e,(hl)			;3796	5e 	^ 
	ld l,d			;3797	6a 	j 
	ld l,d			;3798	6a 	j 
	ld c,(hl)			;3799	4e 	N 
	ld e,(hl)			;379a	5e 	^ 
	ld l,(hl)			;379b	6e 	n 
	ld l,(hl)			;379c	6e 	n 
	daa			;379d	27 	' 
	cpl			;379e	2f 	/ 
	scf			;379f	37 	7 
	scf			;37a0	37 	7 
	inc de			;37a1	13 	. 
	ld (de),a			;37a2	12 	. 
	rra			;37a3	1f 	. 
	ld e,00fh		;37a4	1e 0f 	. . 
	ex af,af'			;37a6	08 	. 
l37a7h:
	rrca			;37a7	0f 	. 
l37a8h:
	inc c			;37a8	0c 	. 
l37a9h:
	rra			;37a9	1f 	. 
	djnz l37cbh		;37aa	10 1f 	. . 
	jr l37aeh		;37ac	18 00 	. . 
l37aeh:
	nop			;37ae	00 	. 
	nop			;37af	00 	. 
	nop			;37b0	00 	. 
	nop			;37b1	00 	. 
	nop			;37b2	00 	. 
	nop			;37b3	00 	. 
	nop			;37b4	00 	. 
	nop			;37b5	00 	. 
	nop			;37b6	00 	. 
l37b7h:
	nop			;37b7	00 	. 
	nop			;37b8	00 	. 
	nop			;37b9	00 	. 
l37bah:
	nop			;37ba	00 	. 
	nop			;37bb	00 	. 
	nop			;37bc	00 	. 
	ret nz			;37bd	c0 	. 
	ret nz			;37be	c0 	. 
	ret nz			;37bf	c0 	. 
	ret nz			;37c0	c0 	. 
	ret po			;37c1	e0 	. 
	ld h,b			;37c2	60 	` 
	ret po			;37c3	e0 	. 
	ld h,b			;37c4	60 	` 
	ret po			;37c5	e0 	. 
	jr nz,l37a8h		;37c6	20 e0 	  . 
	jr nz,l37bah		;37c8	20 f0 	  . 
	or b			;37ca	b0 	. 
l37cbh:
	ld (hl),b			;37cb	70 	p 
	jr nc,l380dh		;37cc	30 3f 	0 ? 
	inc h			;37ce	24 	$ 
	dec sp			;37cf	3b 	; 
	jr c,$+33		;37d0	38 1f 	8 . 
	djnz l37f3h		;37d2	10 1f 	. . 
	ld e,00fh		;37d4	1e 0f 	. . 
	add hl,bc			;37d6	09 	. 
	ld c,00eh		;37d7	0e 0e 	. . 
	rlca			;37d9	07 	. 
	ld b,007h		;37da	06 07 	. . 
	rlca			;37dc	07 	. 
	ld bc,l0101h		;37dd	01 01 01 	. . . 
l37e0h:
	ld bc,l0000h		;37e0	01 00 00 	. . . 
	nop			;37e3	00 	. 
	nop			;37e4	00 	. 
	nop			;37e5	00 	. 
	nop			;37e6	00 	. 
	nop			;37e7	00 	. 
	nop			;37e8	00 	. 
	nop			;37e9	00 	. 
	nop			;37ea	00 	. 
	nop			;37eb	00 	. 
	nop			;37ec	00 	. 
	ret p			;37ed	f0 	. 
l37eeh:
	djnz l37e0h		;37ee	10 f0 	. . 
	djnz $-14		;37f0	10 f0 	. . 
	ld d,b			;37f2	50 	P 
l37f3h:
	or b			;37f3	b0 	. 
	djnz l37eeh		;37f4	10 f8 	. . 
	ex af,af'			;37f6	08 	. 
	ret m			;37f7	f8 	. 
	ex af,af'			;37f8	08 	. 
	ret m			;37f9	f8 	. 
	ex af,af'			;37fa	08 	. 
	ret m			;37fb	f8 	. 
	adc a,b			;37fc	88 	. 
	cp h			;37fd	bc 	. 
	inc d			;37fe	14 	. 
	call pe,0fea4h		;37ff	ec a4 fe 	. . . 
	jp nz,0e2feh		;3802	c2 fe e2 	. . . 
	ld a,(l3e22h)		;3805	3a 22 3e 	: " > 
	ld a,01ch		;3808	3e 1c 	> . 
	ld e,01ch		;380a	1e 1c 	. . 
	inc e			;380c	1c 	. 
l380dh:
	nop			;380d	00 	. 
	nop			;380e	00 	. 
	nop			;380f	00 	. 
	nop			;3810	00 	. 
	ld b,006h		;3811	06 06 	. . 
	ld b,006h		;3813	06 06 	. . 
	dec bc			;3815	0b 	. 
	dec bc			;3816	0b 	. 
	dec c			;3817	0d 	. 
	add hl,bc			;3818	09 	. 
	dec bc			;3819	0b 	. 
	dec bc			;381a	0b 	. 
	dec c			;381b	0d 	. 
	add hl,bc			;381c	09 	. 
	dec bc			;381d	0b 	. 
	dec bc			;381e	0b 	. 
	inc c			;381f	0c 	. 
	ex af,af'			;3820	08 	. 
	inc de			;3821	13 	. 
	inc de			;3822	13 	. 
	inc e			;3823	1c 	. 
	djnz l3836h		;3824	10 10 	. . 
	djnz $+33		;3826	10 1f 	. . 
	djnz $+33		;3828	10 1f 	. . 
	ld e,016h		;382a	1e 16 	. . 
	ld e,000h		;382c	1e 00 	. . 
	nop			;382e	00 	. 
	nop			;382f	00 	. 
	nop			;3830	00 	. 
	nop			;3831	00 	. 
	nop			;3832	00 	. 
	nop			;3833	00 	. 
	nop			;3834	00 	. 
	ret nz			;3835	c0 	. 
l3836h:
	ret nz			;3836	c0 	. 
	ret nz			;3837	c0 	. 
	ret nz			;3838	c0 	. 
	ret po			;3839	e0 	. 
	ret po			;383a	e0 	. 
l383bh:
	jr nz,l385dh		;383b	20 20 	    
	ret p			;383d	f0 	. 
l383eh:
	ret p			;383e	f0 	. 
	ret nc			;383f	d0 	. 
	ret nc			;3840	d0 	. 
	cp b			;3841	b8 	. 
	cp b			;3842	b8 	. 
	xor b			;3843	a8 	. 
	xor b			;3844	a8 	. 
	call z,0f4cch		;3845	cc cc f4 	. . . 
	call nz,0cccch		;3848	c4 cc cc 	. . . 
	call p,sub_3fc4h		;384b	f4 c4 3f 	. . ? 
	ccf			;384e	3f 	? 
	cpl			;384f	2f 	/ 
	ccf			;3850	3f 	? 
	ld (hl),c			;3851	71 	q 
	ld d,b			;3852	50 	P 
	ld d,b			;3853	50 	P 
	ld e,(hl)			;3854	5e 	^ 
	pop hl			;3855	e1 	. 
	ret po			;3856	e0 	. 
	and b			;3857	a0 	. 
	cp 0e3h		;3858	fe e3 	. . 
	and b			;385a	a0 	. 
	and b			;385b	a0 	. 
	cp h			;385c	bc 	. 
l385dh:
	rst 30h			;385d	f7 	. 
	or b			;385e	b0 	. 
	or b			;385f	b0 	. 
	cp b			;3860	b8 	. 
	ld a,a			;3861	7f 	 
	ld e,a			;3862	5f 	_ 
	ld c,a			;3863	4f 	O 
	ld e,a			;3864	5f 	_ 
	ccf			;3865	3f 	? 
	ld (hl),030h		;3866	36 30 	6 0 
	ld (hl),00fh		;3868	36 0f 	6 . 
	rrca			;386a	0f 	. 
	rrca			;386b	0f 	. 
	rrca			;386c	0f 	. 
	ret m			;386d	f8 	. 
	ld a,b			;386e	78 	x 
	ld a,b			;386f	78 	x 
	ld a,b			;3870	78 	x 
	ret po			;3871	e0 	. 
	and b			;3872	a0 	. 
	and b			;3873	a0 	. 
	and b			;3874	a0 	. 
	ret p			;3875	f0 	. 
	ld d,b			;3876	50 	P 
	ld d,b			;3877	50 	P 
	ld d,b			;3878	50 	P 
	ret p			;3879	f0 	. 
	ld d,b			;387a	50 	P 
	ld d,b			;387b	50 	P 
	ld d,b			;387c	50 	P 
	ret p			;387d	f0 	. 
	ret nc			;387e	d0 	. 
	ret nc			;387f	d0 	. 
	ret nc			;3880	d0 	. 
	ret po			;3881	e0 	. 
	jr nz,l38a4h		;3882	20 20 	    
	jr nz,$-62		;3884	20 c0 	  . 
	ret nz			;3886	c0 	. 
	ret nz			;3887	c0 	. 
	ret nz			;3888	c0 	. 
	nop			;3889	00 	. 
	nop			;388a	00 	. 
	nop			;388b	00 	. 
	nop			;388c	00 	. 
	inc bc			;388d	03 	. 
	inc bc			;388e	03 	. 
	inc bc			;388f	03 	. 
	inc bc			;3890	03 	. 
	ld (bc),a			;3891	02 	. 
	ld (bc),a			;3892	02 	. 
	inc bc			;3893	03 	. 
	ld (bc),a			;3894	02 	. 
	ld (bc),a			;3895	02 	. 
	ld (bc),a			;3896	02 	. 
	inc bc			;3897	03 	. 
	ld (bc),a			;3898	02 	. 
	inc bc			;3899	03 	. 
	ld (bc),a			;389a	02 	. 
	inc bc			;389b	03 	. 
	ld (bc),a			;389c	02 	. 
	ld (bc),a			;389d	02 	. 
	ld (bc),a			;389e	02 	. 
	inc bc			;389f	03 	. 
	ld (bc),a			;38a0	02 	. 
	inc bc			;38a1	03 	. 
	ld (bc),a			;38a2	02 	. 
	inc bc			;38a3	03 	. 
l38a4h:
	ld (bc),a			;38a4	02 	. 
	inc bc			;38a5	03 	. 
	ld (bc),a			;38a6	02 	. 
	inc bc			;38a7	03 	. 
	ld (bc),a			;38a8	02 	. 
	inc bc			;38a9	03 	. 
	ld (bc),a			;38aa	02 	. 
	inc bc			;38ab	03 	. 
	ld (bc),a			;38ac	02 	. 
	cp 0feh		;38ad	fe fe 	. . 
	cp 0feh		;38af	fe fe 	. . 
	ld a,(de)			;38b1	1a 	. 
	ld a,(de)			;38b2	1a 	. 
	and 002h		;38b3	e6 02 	. . 
	ld a,(de)			;38b5	1a 	. 
	ld a,(de)			;38b6	1a 	. 
	and 002h		;38b7	e6 02 	. . 
	ld (bc),a			;38b9	02 	. 
	cp 0feh		;38ba	fe fe 	. . 
	cp 01ah		;38bc	fe 1a 	. . 
	ld a,(de)			;38be	1a 	. 
	and 002h		;38bf	e6 02 	. . 
	ld (bc),a			;38c1	02 	. 
	cp 0feh		;38c2	fe fe 	. . 
	cp 002h		;38c4	fe 02 	. . 
	cp 0feh		;38c6	fe fe 	. . 
	cp 002h		;38c8	fe 02 	. . 
	cp 0feh		;38ca	fe fe 	. . 
	cp 007h		;38cc	fe 07 	. . 
	ld b,007h		;38ce	06 07 	. . 
	ld b,01fh		;38d0	06 1f 	. . 
	jr $+33		;38d2	18 1f 	. . 
	jr l390eh		;38d4	18 38 	. 8 
	ccf			;38d6	3f 	? 
	daa			;38d7	27 	' 
	daa			;38d8	27 	' 
	ld a,b			;38d9	78 	x 
	ld a,a			;38da	7f 	 
	ld b,a			;38db	47 	G 
	ld b,a			;38dc	47 	G 
	sbc a,b			;38dd	98 	. 
	sbc a,a			;38de	9f 	. 
	rst 20h			;38df	e7 	. 
	add a,a			;38e0	87 	. 
	sub b			;38e1	90 	. 
	sbc a,a			;38e2	9f 	. 
	rst 28h			;38e3	ef 	. 
	adc a,a			;38e4	8f 	. 
	adc a,a			;38e5	8f 	. 
	add a,b			;38e6	80 	. 
	rst 38h			;38e7	ff 	. 
	add a,b			;38e8	80 	. 
	ld a,a			;38e9	7f 	 
	ld a,a			;38ea	7f 	 
	ld a,a			;38eb	7f 	 
	ld a,a			;38ec	7f 	 
	ld (bc),a			;38ed	02 	. 
	cp 0feh		;38ee	fe fe 	. . 
	cp 002h		;38f0	fe 02 	. . 
	cp 0feh		;38f2	fe fe 	. . 
	cp 002h		;38f4	fe 02 	. . 
	cp 0feh		;38f6	fe fe 	. . 
sub_38f8h:
	cp 00eh		;38f8	fe 0e 	. . 
	xor 0f2h		;38fa	ee f2 	. . 
	jp po,0ca0ah		;38fc	e2 0a ca 	. . . 
	or 0c2h		;38ff	f6 c2 	. . 
	inc b			;3901	04 	. 
	call nz,0c4fch		;3902	c4 fc c4 	. . . 
	ret z			;3905	c8 	. 
	ex af,af'			;3906	08 	. 
	ret m			;3907	f8 	. 
	ex af,af'			;3908	08 	. 
	ret p			;3909	f0 	. 
	ret p			;390a	f0 	. 
	ret p			;390b	f0 	. 
	ret p			;390c	f0 	. 
	ret c			;390d	d8 	. 
l390eh:
	ret c			;390e	d8 	. 
	nop			;390f	00 	. 
	nop			;3910	00 	. 
	ld h,l			;3911	65 	e 
	ld h,h			;3912	64 	d 
	nop			;3913	00 	. 
	nop			;3914	00 	. 
	dec d			;3915	15 	. 
	inc d			;3916	14 	. 
	inc b			;3917	04 	. 
	inc b			;3918	04 	. 
	jr c,l391bh		;3919	38 00 	8 . 
l391bh:
	ld l,000h		;391b	2e 00 	. . 
	ld (hl),l			;391d	75 	u 
	ld bc,l005eh		;391e	01 5e 00 	. ^ . 
	ld a,h			;3921	7c 	| 
	nop			;3922	00 	. 
	ld e,a			;3923	5f 	_ 
	djnz l39a5h		;3924	10 7f 	.  
	inc bc			;3926	03 	. 
	ld c,a			;3927	4f 	O 
	ld c,a			;3928	4f 	O 
	ld a,(hl)			;3929	7e 	~ 
	ld e,h			;392a	5c 	\ 
	ld e,a			;392b	5f 	_ 
	ld e,h			;392c	5c 	\ 
	nop			;392d	00 	. 
	nop			;392e	00 	. 
	nop			;392f	00 	. 
	nop			;3930	00 	. 
	nop			;3931	00 	. 
	nop			;3932	00 	. 
	nop			;3933	00 	. 
	nop			;3934	00 	. 
	jr l3937h		;3935	18 00 	. . 
l3937h:
	nop			;3937	00 	. 
	nop			;3938	00 	. 
l3939h:
	cp h			;3939	bc 	. 
	nop			;393a	00 	. 
	nop			;393b	00 	. 
	nop			;393c	00 	. 
	call m,l0000h		;393d	fc 00 00 	. . . 
	nop			;3940	00 	. 
	ld (hl),c			;3941	71 	q 
	ld bc,l0100h		;3942	01 00 01 	. . . 
	add a,a			;3945	87 	. 
	add a,a			;3946	87 	. 
	add a,b			;3947	80 	. 
	add a,a			;3948	87 	. 
	cp (hl)			;3949	be 	. 
	cp (hl)			;394a	be 	. 
	ret nz			;394b	c0 	. 
	cp (hl)			;394c	be 	. 
	ld hl,l2721h		;394d	21 21 27 	! ! ' 
	ld hl,00404h		;3950	21 04 04 	! . . 
	rlca			;3953	07 	. 
	inc b			;3954	04 	. 
	inc bc			;3955	03 	. 
	ld (bc),a			;3956	02 	. 
	inc bc			;3957	03 	. 
	inc bc			;3958	03 	. 
	ld (bc),a			;3959	02 	. 
	nop			;395a	00 	. 
	inc bc			;395b	03 	. 
	ld (bc),a			;395c	02 	. 
	ld bc,00300h		;395d	01 00 03 	. . . 
	nop			;3960	00 	. 
	dec b			;3961	05 	. 
	ld bc,l0406h		;3962	01 06 04 	. . . 
	inc bc			;3965	03 	. 
l3966h:
	nop			;3966	00 	. 
	rlca			;3967	07 	. 
l3968h:
	nop			;3968	00 	. 
	jr l396bh		;3969	18 00 	. . 
l396bh:
	rra			;396b	1f 	. 
	nop			;396c	00 	. 
	inc a			;396d	3c 	< 
	inc a			;396e	3c 	< 
	call m,0f03ch		;396f	fc 3c f0 	. < . 
	sub b			;3972	90 	. 
	ld (hl),b			;3973	70 	p 
	ld (hl),b			;3974	70 	p 
	ret z			;3975	c8 	. 
	ex af,af'			;3976	08 	. 
	ret m			;3977	f8 	. 
	ex af,af'			;3978	08 	. 
	ret m			;3979	f8 	. 
	ret z			;397a	c8 	. 
	jr c,l39b5h		;397b	38 38 	8 8 
	ret z			;397d	c8 	. 
	ex af,af'			;397e	08 	. 
	ret m			;397f	f8 	. 
	ex af,af'			;3980	08 	. 
	or b			;3981	b0 	. 
	sub b			;3982	90 	. 
	ld (hl),b			;3983	70 	p 
	jr nc,l3966h		;3984	30 e0 	0 . 
	jr nz,l3968h		;3986	20 e0 	  . 
	ret po			;3988	e0 	. 
	nop			;3989	00 	. 
	nop			;398a	00 	. 
	nop			;398b	00 	. 
	nop			;398c	00 	. 
	ret c			;398d	d8 	. 
	ret c			;398e	d8 	. 
	nop			;398f	00 	. 
	nop			;3990	00 	. 
	ld h,h			;3991	64 	d 
	ld h,h			;3992	64 	d 
	nop			;3993	00 	. 
	nop			;3994	00 	. 
	inc d			;3995	14 	. 
	inc d			;3996	14 	. 
	inc b			;3997	04 	. 
	inc b			;3998	04 	. 
	jr l399bh		;3999	18 00 	. . 
l399bh:
	ld l,000h		;399b	2e 00 	. . 
	ld (hl),l			;399d	75 	u 
	ld bc,l005eh		;399e	01 5e 00 	. ^ . 
	ld a,a			;39a1	7f 	 
	nop			;39a2	00 	. 
	ld e,(hl)			;39a3	5e 	^ 
	ld (de),a			;39a4	12 	. 
l39a5h:
	ld a,a			;39a5	7f 	 
	inc bc			;39a6	03 	. 
	ld c,a			;39a7	4f 	O 
	ld c,a			;39a8	4f 	O 
	ld a,(hl)			;39a9	7e 	~ 
	ld e,h			;39aa	5c 	\ 
	ld e,a			;39ab	5f 	_ 
	ld e,h			;39ac	5c 	\ 
	nop			;39ad	00 	. 
	nop			;39ae	00 	. 
	nop			;39af	00 	. 
	nop			;39b0	00 	. 
	nop			;39b1	00 	. 
	nop			;39b2	00 	. 
	nop			;39b3	00 	. 
	nop			;39b4	00 	. 
l39b5h:
	nop			;39b5	00 	. 
	nop			;39b6	00 	. 
	nop			;39b7	00 	. 
	nop			;39b8	00 	. 
	nop			;39b9	00 	. 
	nop			;39ba	00 	. 
	nop			;39bb	00 	. 
	nop			;39bc	00 	. 
	ld (hl),b			;39bd	70 	p 
	nop			;39be	00 	. 
	nop			;39bf	00 	. 
	nop			;39c0	00 	. 
	ret m			;39c1	f8 	. 
	nop			;39c2	00 	. 
	nop			;39c3	00 	. 
	nop			;39c4	00 	. 
	call m,0a0a0h		;39c5	fc a0 a0 	. . . 
	and b			;39c8	a0 	. 
	and b			;39c9	a0 	. 
	and b			;39ca	a0 	. 
	ret nz			;39cb	c0 	. 
	and b			;39cc	a0 	. 
	ld hl,l2721h		;39cd	21 21 27 	! ! ' 
	ld hl,00404h		;39d0	21 04 04 	! . . 
	rlca			;39d3	07 	. 
	inc b			;39d4	04 	. 
	inc bc			;39d5	03 	. 
	ld (bc),a			;39d6	02 	. 
	inc bc			;39d7	03 	. 
	inc bc			;39d8	03 	. 
	ld (bc),a			;39d9	02 	. 
	nop			;39da	00 	. 
	inc bc			;39db	03 	. 
	ld (bc),a			;39dc	02 	. 
	ld bc,00300h		;39dd	01 00 03 	. . . 
	nop			;39e0	00 	. 
	dec b			;39e1	05 	. 
	ld bc,l0406h		;39e2	01 06 04 	. . . 
	inc bc			;39e5	03 	. 
l39e6h:
	nop			;39e6	00 	. 
	rlca			;39e7	07 	. 
l39e8h:
	nop			;39e8	00 	. 
	jr l39ebh		;39e9	18 00 	. . 
l39ebh:
	rra			;39eb	1f 	. 
	nop			;39ec	00 	. 
	inc a			;39ed	3c 	< 
	inc a			;39ee	3c 	< 
	ret po			;39ef	e0 	. 
	inc a			;39f0	3c 	< 
	call m,0749ch		;39f1	fc 9c 74 	. . t 
	ld a,h			;39f4	7c 	| 
	ret z			;39f5	c8 	. 
	ex af,af'			;39f6	08 	. 
	ret m			;39f7	f8 	. 
	ex af,af'			;39f8	08 	. 
	ret m			;39f9	f8 	. 
	ret z			;39fa	c8 	. 
	jr c,l3a35h		;39fb	38 38 	8 8 
	ret z			;39fd	c8 	. 
	ex af,af'			;39fe	08 	. 
	ret m			;39ff	f8 	. 
	ex af,af'			;3a00	08 	. 
	or b			;3a01	b0 	. 
	sub b			;3a02	90 	. 
	ld (hl),b			;3a03	70 	p 
	jr nc,l39e6h		;3a04	30 e0 	0 . 
	jr nz,l39e8h		;3a06	20 e0 	  . 
	ret po			;3a08	e0 	. 
	nop			;3a09	00 	. 
	nop			;3a0a	00 	. 
	nop			;3a0b	00 	. 
	nop			;3a0c	00 	. 
	ld (bc),a			;3a0d	02 	. 
	ld (bc),a			;3a0e	02 	. 
	nop			;3a0f	00 	. 
	nop			;3a10	00 	. 
	inc b			;3a11	04 	. 
	inc b			;3a12	04 	. 
	ld bc,l0000h		;3a13	01 00 00 	. . . 
	nop			;3a16	00 	. 
	nop			;3a17	00 	. 
	nop			;3a18	00 	. 
	nop			;3a19	00 	. 
	nop			;3a1a	00 	. 
	nop			;3a1b	00 	. 
	nop			;3a1c	00 	. 
	nop			;3a1d	00 	. 
	nop			;3a1e	00 	. 
	nop			;3a1f	00 	. 
	nop			;3a20	00 	. 
	nop			;3a21	00 	. 
	nop			;3a22	00 	. 
	nop			;3a23	00 	. 
	nop			;3a24	00 	. 
	nop			;3a25	00 	. 
l3a26h:
	nop			;3a26	00 	. 
	nop			;3a27	00 	. 
	nop			;3a28	00 	. 
	nop			;3a29	00 	. 
	nop			;3a2a	00 	. 
	nop			;3a2b	00 	. 
	nop			;3a2c	00 	. 
	jr nz,l3a4fh		;3a2d	20 20 	    
	nop			;3a2f	00 	. 
	nop			;3a30	00 	. 
l3a31h:
	ld b,e			;3a31	43 	C 
	ld b,b			;3a32	40 	@ 
	djnz l3a35h		;3a33	10 00 	. . 
l3a35h:
	ld a,(bc)			;3a35	0a 	. 
	ex af,af'			;3a36	08 	. 
	add a,b			;3a37	80 	. 
	nop			;3a38	00 	. 
	ld c,e			;3a39	4b 	K 
l3a3ah:
	ld c,c			;3a3a	49 	I 
	jr c,l3a46h		;3a3b	38 09 	8 . 
	rst 38h			;3a3d	ff 	. 
	dec b			;3a3e	05 	. 
l3a3fh:
	cp b			;3a3f	b8 	. 
	dec b			;3a40	05 	. 
	rst 28h			;3a41	ef 	. 
	dec b			;3a42	05 	. 
	cp b			;3a43	b8 	. 
	dec b			;3a44	05 	. 
	rst 30h			;3a45	f7 	. 
l3a46h:
	rlca			;3a46	07 	. 
	cp b			;3a47	b8 	. 
	or a			;3a48	b7 	. 
	ld c,a			;3a49	4f 	O 
	rrca			;3a4a	0f 	. 
	cp b			;3a4b	b8 	. 
	dec bc			;3a4c	0b 	. 
	nop			;3a4d	00 	. 
	nop			;3a4e	00 	. 
l3a4fh:
	nop			;3a4f	00 	. 
	nop			;3a50	00 	. 
	ld bc,l0100h		;3a51	01 00 01 	. . . 
	nop			;3a54	00 	. 
	ld bc,l0100h		;3a55	01 00 01 	. . . 
	nop			;3a58	00 	. 
	inc bc			;3a59	03 	. 
	inc bc			;3a5a	03 	. 
	ld (bc),a			;3a5b	02 	. 
	ld (bc),a			;3a5c	02 	. 
	inc bc			;3a5d	03 	. 
	ld (bc),a			;3a5e	02 	. 
	inc bc			;3a5f	03 	. 
	inc bc			;3a60	03 	. 
	inc bc			;3a61	03 	. 
	ld (bc),a			;3a62	02 	. 
	inc bc			;3a63	03 	. 
	inc bc			;3a64	03 	. 
	ld bc,l0101h		;3a65	01 01 01 	. . . 
	ld bc,l0000h		;3a68	01 00 00 	. . . 
	nop			;3a6b	00 	. 
	nop			;3a6c	00 	. 
	rst 30h			;3a6d	f7 	. 
	or a			;3a6e	b7 	. 
	cp c			;3a6f	b9 	. 
	or c			;3a70	b1 	. 
	ld h,a			;3a71	67 	g 
	ld h,b			;3a72	60 	` 
	ld a,a			;3a73	7f 	 
	ld h,h			;3a74	64 	d 
	dec a			;3a75	3d 	= 
	ld hl,l383eh		;3a76	21 3e 38 	! > 8 
	rla			;3a79	17 	. 
l3a7ah:
	inc bc			;3a7a	03 	. 
	sbc a,h			;3a7b	9c 	. 
	djnz l3a31h		;3a7c	10 b3 	. . 
	nop			;3a7e	00 	. 
	rst 38h			;3a7f	ff 	. 
	or c			;3a80	b1 	. 
	defb 0edh;next byte illegal after ed		;3a81	ed 	. 
	push bc			;3a82	c5 	. 
	dec sp			;3a83	3b 	; 
	ld bc,l0246h		;3a84	01 46 02 	. F . 
	cp 046h		;3a87	fe 46 	. F 
	call m,0fcfch		;3a89	fc fc fc 	. . . 
	call m,04242h		;3a8c	fc 42 42 	. B B 
	ld b,d			;3a8f	42 	B 
	nop			;3a90	00 	. 
	nop			;3a91	00 	. 
	nop			;3a92	00 	. 
	nop			;3a93	00 	. 
	ld d,d			;3a94	52 	R 
	nop			;3a95	00 	. 
	nop			;3a96	00 	. 
	nop			;3a97	00 	. 
	ei			;3a98	fb 	. 
	ld (bc),a			;3a99	02 	. 
	ld (0c930h),a		;3a9a	32 30 c9 	2 0 . 
	nop			;3a9d	00 	. 
	ld (hl),c			;3a9e	71 	q 
	ld d,c			;3a9f	51 	Q 
	xor h			;3aa0	ac 	. 
	nop			;3aa1	00 	. 
	ld a,b			;3aa2	78 	x 
	ld c,b			;3aa3	48 	H 
	or a			;3aa4	b7 	. 
	ld bc,04979h		;3aa5	01 79 49 	. y I 
	or (hl)			;3aa8	b6 	. 
	ld bc,0457dh		;3aa9	01 7d 45 	. } E 
	cp d			;3aac	ba 	. 
	ld b,d			;3aad	42 	B 
	ld b,d			;3aae	42 	B 
	ld b,d			;3aaf	42 	B 
	nop			;3ab0	00 	. 
	nop			;3ab1	00 	. 
	nop			;3ab2	00 	. 
	nop			;3ab3	00 	. 
	ld c,d			;3ab4	4a 	J 
	nop			;3ab5	00 	. 
	nop			;3ab6	00 	. 
	nop			;3ab7	00 	. 
	rst 18h			;3ab8	df 	. 
	ld b,b			;3ab9	40 	@ 
	ld c,h			;3aba	4c 	L 
	inc c			;3abb	0c 	. 
	sub e			;3abc	93 	. 
	nop			;3abd	00 	. 
	adc a,(hl)			;3abe	8e 	. 
	adc a,d			;3abf	8a 	. 
	dec (hl)			;3ac0	35 	5 
	nop			;3ac1	00 	. 
	ld e,012h		;3ac2	1e 12 	. . 
	defb 0edh;next byte illegal after ed		;3ac4	ed 	. 
	add a,b			;3ac5	80 	. 
	sbc a,(hl)			;3ac6	9e 	. 
	sub d			;3ac7	92 	. 
	ld l,l			;3ac8	6d 	m 
	add a,b			;3ac9	80 	. 
	cp (hl)			;3aca	be 	. 
	and d			;3acb	a2 	. 
	ld e,l			;3acc	5d 	] 
	ld bc,0457dh		;3acd	01 7d 45 	. } E 
	cp d			;3ad0	ba 	. 
	ld bc,l253dh		;3ad1	01 3d 25 	. = % 
	jp c,l3e00h		;3ad4	da 00 3e 	. . > 
	ld (l00ddh),hl		;3ad7	22 dd 00 	" . . 
	jr l3adch		;3ada	18 00 	. . 
l3adch:
	ld a,c			;3adc	79 	y 
	nop			;3add	00 	. 
	jr l3af8h		;3ade	18 18 	. . 
	ld h,b			;3ae0	60 	` 
	nop			;3ae1	00 	. 
	nop			;3ae2	00 	. 
	nop			;3ae3	00 	. 
	jr nz,l3ae6h		;3ae4	20 00 	  . 
l3ae6h:
	nop			;3ae6	00 	. 
	nop			;3ae7	00 	. 
	jr nz,l3aeah		;3ae8	20 00 	  . 
l3aeah:
	nop			;3aea	00 	. 
	nop			;3aeb	00 	. 
	nop			;3aec	00 	. 
	add a,b			;3aed	80 	. 
	cp (hl)			;3aee	be 	. 
	and d			;3aef	a2 	. 
	ld e,l			;3af0	5d 	] 
	add a,b			;3af1	80 	. 
	cp h			;3af2	bc 	. 
	and h			;3af3	a4 	. 
	ld e,e			;3af4	5b 	[ 
	nop			;3af5	00 	. 
	ld a,h			;3af6	7c 	| 
	ld b,h			;3af7	44 	D 
l3af8h:
	cp e			;3af8	bb 	. 
	nop			;3af9	00 	. 
	jr l3afch		;3afa	18 00 	. . 
l3afch:
	sbc a,(hl)			;3afc	9e 	. 
	nop			;3afd	00 	. 
	jr l3b18h		;3afe	18 18 	. . 
	ld b,000h		;3b00	06 00 	. . 
	nop			;3b02	00 	. 
	nop			;3b03	00 	. 
	inc b			;3b04	04 	. 
	nop			;3b05	00 	. 
	nop			;3b06	00 	. 
	nop			;3b07	00 	. 
	inc b			;3b08	04 	. 
	nop			;3b09	00 	. 
	nop			;3b0a	00 	. 
	nop			;3b0b	00 	. 
	nop			;3b0c	00 	. 
	ld (bc),a			;3b0d	02 	. 
	ld (bc),a			;3b0e	02 	. 
	ld (bc),a			;3b0f	02 	. 
	nop			;3b10	00 	. 
	djnz $+18		;3b11	10 10 	. . 
	djnz l3b18h		;3b13	10 03 	. . 
	ld (bc),a			;3b15	02 	. 
	ld (bc),a			;3b16	02 	. 
	nop			;3b17	00 	. 
l3b18h:
	ld sp,l0100h		;3b18	31 00 01 	1 . . 
	ld bc,l003ch		;3b1b	01 3c 00 	. < . 
	ex af,af'			;3b1e	08 	. 
	ex af,af'			;3b1f	08 	. 
	scf			;3b20	37 	7 
	ld bc,00d0dh		;3b21	01 0d 0d 	. . . 
	ld (00d01h),a		;3b24	32 01 0d 	2 . . 
	add hl,bc			;3b27	09 	. 
	ld (hl),001h		;3b28	36 01 	6 . 
	dec c			;3b2a	0d 	. 
	add hl,bc			;3b2b	09 	. 
	ld (hl),040h		;3b2c	36 40 	6 @ 
	ld b,b			;3b2e	40 	@ 
	ld b,b			;3b2f	40 	@ 
	nop			;3b30	00 	. 
	ex af,af'			;3b31	08 	. 
	ex af,af'			;3b32	08 	. 
	ex af,af'			;3b33	08 	. 
	ret nz			;3b34	c0 	. 
	ld b,b			;3b35	40 	@ 
	ld b,b			;3b36	40 	@ 
	nop			;3b37	00 	. 
	adc a,h			;3b38	8c 	. 
	nop			;3b39	00 	. 
	add a,b			;3b3a	80 	. 
l3b3bh:
	add a,b			;3b3b	80 	. 
	inc a			;3b3c	3c 	< 
	nop			;3b3d	00 	. 
	djnz l3b50h		;3b3e	10 10 	. . 
	call pe,0b080h		;3b40	ec 80 b0 	. . . 
	or b			;3b43	b0 	. 
	ld c,h			;3b44	4c 	L 
	add a,b			;3b45	80 	. 
	or b			;3b46	b0 	. 
	sub b			;3b47	90 	. 
	ld l,h			;3b48	6c 	l 
	add a,b			;3b49	80 	. 
	or b			;3b4a	b0 	. 
	sub b			;3b4b	90 	. 
	ld l,h			;3b4c	6c 	l 
	ld bc,l090dh		;3b4d	01 0d 09 	. . . 
l3b50h:
	ld (hl),000h		;3b50	36 00 	6 . 
	inc c			;3b52	0c 	. 
	ex af,af'			;3b53	08 	. 
	scf			;3b54	37 	7 
	nop			;3b55	00 	. 
	inc b			;3b56	04 	. 
	nop			;3b57	00 	. 
	dec e			;3b58	1d 	. 
	nop			;3b59	00 	. 
	inc b			;3b5a	04 	. 
	nop			;3b5b	00 	. 
	inc e			;3b5c	1c 	. 
	nop			;3b5d	00 	. 
	nop			;3b5e	00 	. 
	nop			;3b5f	00 	. 
	ex af,af'			;3b60	08 	. 
	nop			;3b61	00 	. 
	nop			;3b62	00 	. 
	nop			;3b63	00 	. 
	ex af,af'			;3b64	08 	. 
	nop			;3b65	00 	. 
	nop			;3b66	00 	. 
	nop			;3b67	00 	. 
	inc b			;3b68	04 	. 
	nop			;3b69	00 	. 
	nop			;3b6a	00 	. 
	nop			;3b6b	00 	. 
	inc b			;3b6c	04 	. 
	add a,b			;3b6d	80 	. 
	or b			;3b6e	b0 	. 
	sub b			;3b6f	90 	. 
	ld l,h			;3b70	6c 	l 
	nop			;3b71	00 	. 
	jr nc,l3b84h		;3b72	30 10 	0 . 
	call pe,sub_2000h		;3b74	ec 00 20 	. .   
	nop			;3b77	00 	. 
	cp b			;3b78	b8 	. 
	nop			;3b79	00 	. 
	jr nz,l3b7ch		;3b7a	20 00 	  . 
l3b7ch:
	jr c,l3b7eh		;3b7c	38 00 	8 . 
l3b7eh:
	nop			;3b7e	00 	. 
	nop			;3b7f	00 	. 
	djnz l3b82h		;3b80	10 00 	. . 
l3b82h:
	nop			;3b82	00 	. 
	nop			;3b83	00 	. 
l3b84h:
	djnz l3b86h		;3b84	10 00 	. . 
l3b86h:
	nop			;3b86	00 	. 
	nop			;3b87	00 	. 
	jr nz,l3b8ah		;3b88	20 00 	  . 
l3b8ah:
	nop			;3b8a	00 	. 
	nop			;3b8b	00 	. 
	jr nz,l3bd0h		;3b8c	20 42 	  B 
	nop			;3b8e	00 	. 
	nop			;3b8f	00 	. 
	nop			;3b90	00 	. 
	ld d,d			;3b91	52 	R 
	ld b,d			;3b92	42 	B 
	nop			;3b93	00 	. 
	ld b,d			;3b94	42 	B 
	ei			;3b95	fb 	. 
	ld (hl),e			;3b96	73 	s 
	nop			;3b97	00 	. 
	ld (hl),e			;3b98	73 	s 
	xor c			;3b99	a9 	. 
	xor c			;3b9a	a9 	. 
	nop			;3b9b	00 	. 
	xor c			;3b9c	a9 	. 
	cp l			;3b9d	bd 	. 
	cp c			;3b9e	b9 	. 
	nop			;3b9f	00 	. 
	cp c			;3ba0	b9 	. 
	and a			;3ba1	a7 	. 
	and (hl)			;3ba2	a6 	. 
	nop			;3ba3	00 	. 
	and (hl)			;3ba4	a6 	. 
	and e			;3ba5	a3 	. 
	and d			;3ba6	a2 	. 
l3ba7h:
	nop			;3ba7	00 	. 
	and d			;3ba8	a2 	. 
	and e			;3ba9	a3 	. 
	and d			;3baa	a2 	. 
	nop			;3bab	00 	. 
	and d			;3bac	a2 	. 
	ld b,d			;3bad	42 	B 
	nop			;3bae	00 	. 
	nop			;3baf	00 	. 
	nop			;3bb0	00 	. 
	ld c,d			;3bb1	4a 	J 
	nop			;3bb2	00 	. 
	nop			;3bb3	00 	. 
	nop			;3bb4	00 	. 
	rst 18h			;3bb5	df 	. 
	ld a,(bc)			;3bb6	0a 	. 
	nop			;3bb7	00 	. 
	ld a,(bc)			;3bb8	0a 	. 
	sub l			;3bb9	95 	. 
	inc b			;3bba	04 	. 
	nop			;3bbb	00 	. 
	inc b			;3bbc	04 	. 
	cp l			;3bbd	bd 	. 
	djnz l3bc0h		;3bbe	10 00 	. . 
l3bc0h:
	djnz l3ba7h		;3bc0	10 e5 	. . 
	ld h,b			;3bc2	60 	` 
	nop			;3bc3	00 	. 
	ld h,b			;3bc4	60 	` 
	push bc			;3bc5	c5 	. 
	ld b,b			;3bc6	40 	@ 
	nop			;3bc7	00 	. 
	ld b,b			;3bc8	40 	@ 
	push bc			;3bc9	c5 	. 
	ld b,b			;3bca	40 	@ 
	nop			;3bcb	00 	. 
	ld b,b			;3bcc	40 	@ 
	and e			;3bcd	a3 	. 
	and d			;3bce	a2 	. 
	nop			;3bcf	00 	. 
l3bd0h:
	and d			;3bd0	a2 	. 
	and e			;3bd1	a3 	. 
	and d			;3bd2	a2 	. 
	nop			;3bd3	00 	. 
	and d			;3bd4	a2 	. 
	and a			;3bd5	a7 	. 
	and (hl)			;3bd6	a6 	. 
	nop			;3bd7	00 	. 
	and (hl)			;3bd8	a6 	. 
	defb 0edh;next byte illegal after ed		;3bd9	ed 	. 
	defb 0edh;next byte illegal after ed		;3bda	ed 	. 
	nop			;3bdb	00 	. 
	defb 0edh;next byte illegal after ed		;3bdc	ed 	. 
	ret c			;3bdd	d8 	. 
	ret c			;3bde	d8 	. 
	nop			;3bdf	00 	. 
	ret c			;3be0	d8 	. 
	ld a,b			;3be1	78 	x 
	ld a,b			;3be2	78 	x 
	nop			;3be3	00 	. 
	ld a,b			;3be4	78 	x 
	ld h,b			;3be5	60 	` 
	ld h,b			;3be6	60 	` 
	nop			;3be7	00 	. 
	ld h,b			;3be8	60 	` 
	jr nz,l3bebh		;3be9	20 00 	  . 
l3bebh:
	nop			;3beb	00 	. 
	nop			;3bec	00 	. 
	push bc			;3bed	c5 	. 
	ld b,b			;3bee	40 	@ 
	nop			;3bef	00 	. 
	ld b,b			;3bf0	40 	@ 
	push bc			;3bf1	c5 	. 
	ld b,b			;3bf2	40 	@ 
	nop			;3bf3	00 	. 
	ld b,b			;3bf4	40 	@ 
	rst 20h			;3bf5	e7 	. 
	ld b,b			;3bf6	40 	@ 
	nop			;3bf7	00 	. 
	ld b,b			;3bf8	40 	@ 
	or e			;3bf9	b3 	. 
	and c			;3bfa	a1 	. 
	nop			;3bfb	00 	. 
	and c			;3bfc	a1 	. 
	ld a,(de)			;3bfd	1a 	. 
	nop			;3bfe	00 	. 
	nop			;3bff	00 	. 
	nop			;3c00	00 	. 
	ld e,018h		;3c01	1e 18 	. . 
	nop			;3c03	00 	. 
	jr l3c0ch		;3c04	18 06 	. . 
	ld (bc),a			;3c06	02 	. 
	nop			;3c07	00 	. 
	ld (bc),a			;3c08	02 	. 
	inc b			;3c09	04 	. 
	nop			;3c0a	00 	. 
	nop			;3c0b	00 	. 
l3c0ch:
	nop			;3c0c	00 	. 
	ld bc,l0100h		;3c0d	01 00 01 	. . . 
	nop			;3c10	00 	. 
	ld (bc),a			;3c11	02 	. 
	nop			;3c12	00 	. 
	ld (bc),a			;3c13	02 	. 
	nop			;3c14	00 	. 
	ld d,000h		;3c15	16 00 	. . 
	ld d,000h		;3c17	16 00 	. . 
	ld l,000h		;3c19	2e 00 	. . 
	ld l,000h		;3c1b	2e 00 	. . 
	ld l,l			;3c1d	6d 	m 
	nop			;3c1e	00 	. 
	ld l,a			;3c1f	6f 	o 
	nop			;3c20	00 	. 
	ld a,e			;3c21	7b 	{ 
	nop			;3c22	00 	. 
	ld a,a			;3c23	7f 	 
	nop			;3c24	00 	. 
	ld sp,hl			;3c25	f9 	. 
	nop			;3c26	00 	. 
	rst 38h			;3c27	ff 	. 
	nop			;3c28	00 	. 
	ret pe			;3c29	e8 	. 
	nop			;3c2a	00 	. 
	rst 38h			;3c2b	ff 	. 
	nop			;3c2c	00 	. 
	ld h,b			;3c2d	60 	` 
	nop			;3c2e	00 	. 
	ld h,b			;3c2f	60 	` 
	nop			;3c30	00 	. 
	ld c,h			;3c31	4c 	L 
	nop			;3c32	00 	. 
	ld c,h			;3c33	4c 	L 
	nop			;3c34	00 	. 
	ret c			;3c35	d8 	. 
	nop			;3c36	00 	. 
	ret c			;3c37	d8 	. 
	nop			;3c38	00 	. 
	ret m			;3c39	f8 	. 
	nop			;3c3a	00 	. 
	ret m			;3c3b	f8 	. 
l3c3ch:
	nop			;3c3c	00 	. 
	cp h			;3c3d	bc 	. 
	nop			;3c3e	00 	. 
	call m,07d00h		;3c3f	fc 00 7d 	. . } 
	nop			;3c42	00 	. 
	defb 0fdh,000h,067h	;illegal sequence		;3c43	fd 00 67 	. . g 
	nop			;3c46	00 	. 
	rst 38h			;3c47	ff 	. 
	nop			;3c48	00 	. 
	rrca			;3c49	0f 	. 
	nop			;3c4a	00 	. 
	rst 38h			;3c4b	ff 	. 
	nop			;3c4c	00 	. 
	ret pe			;3c4d	e8 	. 
	nop			;3c4e	00 	. 
	rst 38h			;3c4f	ff 	. 
	nop			;3c50	00 	. 
	pop hl			;3c51	e1 	. 
	ld bc,000feh		;3c52	01 fe 00 	. . . 
	ex (sp),hl			;3c55	e3 	. 
	inc bc			;3c56	03 	. 
	call m,0e700h		;3c57	fc 00 e7 	. . . 
	ld b,0f8h		;3c5a	06 f8 	. . 
	nop			;3c5c	00 	. 
	ld h,a			;3c5d	67 	g 
	ld b,078h		;3c5e	06 78 	. x 
	nop			;3c60	00 	. 
	ld (hl),e			;3c61	73 	s 
	inc bc			;3c62	03 	. 
	ld a,h			;3c63	7c 	| 
	nop			;3c64	00 	. 
	dec a			;3c65	3d 	= 
	nop			;3c66	00 	. 
	ccf			;3c67	3f 	? 
	ld (bc),a			;3c68	02 	. 
	ld a,(bc)			;3c69	0a 	. 
	nop			;3c6a	00 	. 
	rrca			;3c6b	0f 	. 
	dec b			;3c6c	05 	. 
	dec c			;3c6d	0d 	. 
	nop			;3c6e	00 	. 
	rst 38h			;3c6f	ff 	. 
	nop			;3c70	00 	. 
	add a,l			;3c71	85 	. 
	add a,b			;3c72	80 	. 
	ld a,a			;3c73	7f 	 
	nop			;3c74	00 	. 
	jp l3fc0h		;3c75	c3 c0 3f 	. . ? 
	nop			;3c78	00 	. 
	and 060h		;3c79	e6 60 	. ` 
	ld e,000h		;3c7b	1e 00 	. . 
	and 060h		;3c7d	e6 60 	. ` 
	ld e,000h		;3c7f	1e 00 	. . 
	call z,03cc0h		;3c81	cc c0 3c 	. . < 
	nop			;3c84	00 	. 
	ld a,b			;3c85	78 	x 
	nop			;3c86	00 	. 
	ret m			;3c87	f8 	. 
	add a,b			;3c88	80 	. 
	and b			;3c89	a0 	. 
	nop			;3c8a	00 	. 
	ret po			;3c8b	e0 	. 
	ld b,b			;3c8c	40 	@ 
	ld b,d			;3c8d	42 	B 
	nop			;3c8e	00 	. 
	ld b,d			;3c8f	42 	B 
	nop			;3c90	00 	. 
	add hl,sp			;3c91	39 	9 
	nop			;3c92	00 	. 
	add hl,sp			;3c93	39 	9 
	nop			;3c94	00 	. 
	dec e			;3c95	1d 	. 
	nop			;3c96	00 	. 
	dec e			;3c97	1d 	. 
	nop			;3c98	00 	. 
	rra			;3c99	1f 	. 
	nop			;3c9a	00 	. 
	rra			;3c9b	1f 	. 
	nop			;3c9c	00 	. 
	ld e,a			;3c9d	5f 	_ 
	nop			;3c9e	00 	. 
	ld e,a			;3c9f	5f 	_ 
	nop			;3ca0	00 	. 
	or a			;3ca1	b7 	. 
	nop			;3ca2	00 	. 
	cp a			;3ca3	bf 	. 
	nop			;3ca4	00 	. 
	or c			;3ca5	b1 	. 
	nop			;3ca6	00 	. 
	cp a			;3ca7	bf 	. 
	nop			;3ca8	00 	. 
	ld sp,hl			;3ca9	f9 	. 
	nop			;3caa	00 	. 
	rst 38h			;3cab	ff 	. 
	nop			;3cac	00 	. 
	jr nz,l3cafh		;3cad	20 00 	  . 
l3cafh:
	jr nz,l3cb1h		;3caf	20 00 	  . 
l3cb1h:
	or b			;3cb1	b0 	. 
	nop			;3cb2	00 	. 
	or b			;3cb3	b0 	. 
	nop			;3cb4	00 	. 
	ret c			;3cb5	d8 	. 
	nop			;3cb6	00 	. 
	ret c			;3cb7	d8 	. 
	nop			;3cb8	00 	. 
	jp c,0da00h		;3cb9	da 00 da 	. . . 
	nop			;3cbc	00 	. 
	cp 000h		;3cbd	fe 00 	. . 
	cp 000h		;3cbf	fe 00 	. . 
	ld a,(hl)			;3cc1	7e 	~ 
	nop			;3cc2	00 	. 
l3cc3h:
	cp 000h		;3cc3	fe 00 	. . 
	xor (hl)			;3cc5	ae 	. 
	nop			;3cc6	00 	. 
	cp 000h		;3cc7	fe 00 	. . 
	dec (hl)			;3cc9	35 	5 
	nop			;3cca	00 	. 
	defb 0fdh,000h,0f8h	;illegal sequence		;3ccb	fd 00 f8 	. . . 
	nop			;3cce	00 	. 
	rst 38h			;3ccf	ff 	. 
	nop			;3cd0	00 	. 
	jp z,0fd02h		;3cd1	ca 02 fd 	. . . 
	nop			;3cd4	00 	. 
	ex (sp),hl			;3cd5	e3 	. 
	inc bc			;3cd6	03 	. 
	call m,06300h		;3cd7	fc 00 63 	. . c 
	ld (bc),a			;3cda	02 	. 
	ld a,h			;3cdb	7c 	| 
	nop			;3cdc	00 	. 
	ld (hl),e			;3cdd	73 	s 
	ld (bc),a			;3cde	02 	. 
	ld a,h			;3cdf	7c 	| 
	nop			;3ce0	00 	. 
	add hl,sp			;3ce1	39 	9 
	nop			;3ce2	00 	. 
	ld a,000h		;3ce3	3e 00 	> . 
	dec e			;3ce5	1d 	. 
	nop			;3ce6	00 	. 
	rra			;3ce7	1f 	. 
	nop			;3ce8	00 	. 
	ld a,(bc)			;3ce9	0a 	. 
	nop			;3cea	00 	. 
	rrca			;3ceb	0f 	. 
	dec b			;3cec	05 	. 
	daa			;3ced	27 	' 
	nop			;3cee	00 	. 
	rst 38h			;3cef	ff 	. 
	nop			;3cf0	00 	. 
	rrca			;3cf1	0f 	. 
	nop			;3cf2	00 	. 
	rst 38h			;3cf3	ff 	. 
	nop			;3cf4	00 	. 
	xor l			;3cf5	ad 	. 
	and b			;3cf6	a0 	. 
	ld e,a			;3cf7	5f 	_ 
	nop			;3cf8	00 	. 
	jp l3fc0h		;3cf9	c3 c0 3f 	. . ? 
	nop			;3cfc	00 	. 
	adc a,040h		;3cfd	ce 40 	. @ 
sub_3cffh:
	ld a,000h		;3cff	3e 00 	> . 
	sbc a,040h		;3d01	de 40 	. @ 
	ld a,000h		;3d03	3e 00 	> . 
	ld a,h			;3d05	7c 	| 
	nop			;3d06	00 	. 
	call m,0a000h		;3d07	fc 00 a0 	. . . 
	nop			;3d0a	00 	. 
	ret po			;3d0b	e0 	. 
	ld b,b			;3d0c	40 	@ 
	rrca			;3d0d	0f 	. 
	nop			;3d0e	00 	. 
	nop			;3d0f	00 	. 
	nop			;3d10	00 	. 
	rra			;3d11	1f 	. 
	nop			;3d12	00 	. 
	nop			;3d13	00 	. 
	nop			;3d14	00 	. 
	ccf			;3d15	3f 	? 
	nop			;3d16	00 	. 
	nop			;3d17	00 	. 
	nop			;3d18	00 	. 
	ld a,a			;3d19	7f 	 
	nop			;3d1a	00 	. 
	nop			;3d1b	00 	. 
	nop			;3d1c	00 	. 
	ld a,a			;3d1d	7f 	 
	nop			;3d1e	00 	. 
	nop			;3d1f	00 	. 
	nop			;3d20	00 	. 
	rst 38h			;3d21	ff 	. 
	nop			;3d22	00 	. 
	nop			;3d23	00 	. 
	nop			;3d24	00 	. 
	rst 38h			;3d25	ff 	. 
	nop			;3d26	00 	. 
	nop			;3d27	00 	. 
	nop			;3d28	00 	. 
	rst 38h			;3d29	ff 	. 
	jr c,l3d64h		;3d2a	38 38 	8 8 
	nop			;3d2c	00 	. 
	ret nz			;3d2d	c0 	. 
	ret nz			;3d2e	c0 	. 
	ret nz			;3d2f	c0 	. 
	nop			;3d30	00 	. 
	di			;3d31	f3 	. 
	jr nc,l3d64h		;3d32	30 30 	0 0 
	nop			;3d34	00 	. 
	rst 38h			;3d35	ff 	. 
	inc e			;3d36	1c 	. 
	inc e			;3d37	1c 	. 
	nop			;3d38	00 	. 
	rst 38h			;3d39	ff 	. 
	ex af,af'			;3d3a	08 	. 
	ex af,af'			;3d3b	08 	. 
sub_3d3ch:
	nop			;3d3c	00 	. 
l3d3dh:
	rst 38h			;3d3d	ff 	. 
	djnz l3d50h		;3d3e	10 10 	. . 
	nop			;3d40	00 	. 
	rst 38h			;3d41	ff 	. 
	jr nc,l3d74h		;3d42	30 30 	0 0 
	nop			;3d44	00 	. 
	rst 38h			;3d45	ff 	. 
	jr nz,l3d68h		;3d46	20 20 	    
	nop			;3d48	00 	. 
	rst 38h			;3d49	ff 	. 
	jr nz,l3d6ch		;3d4a	20 20 	    
	nop			;3d4c	00 	. 
	call m,l1c1ch		;3d4d	fc 1c 1c 	. . . 
l3d50h:
	nop			;3d50	00 	. 
	rst 38h			;3d51	ff 	. 
	rlca			;3d52	07 	. 
	rlca			;3d53	07 	. 
	nop			;3d54	00 	. 
	rst 38h			;3d55	ff 	. 
	ld bc,l0001h		;3d56	01 01 00 	. . . 
	rst 38h			;3d59	ff 	. 
	nop			;3d5a	00 	. 
	nop			;3d5b	00 	. 
	nop			;3d5c	00 	. 
	rst 38h			;3d5d	ff 	. 
	nop			;3d5e	00 	. 
	nop			;3d5f	00 	. 
	nop			;3d60	00 	. 
	rst 38h			;3d61	ff 	. 
	nop			;3d62	00 	. 
	nop			;3d63	00 	. 
l3d64h:
	nop			;3d64	00 	. 
	rst 38h			;3d65	ff 	. 
	ld b,006h		;3d66	06 06 	. . 
l3d68h:
	nop			;3d68	00 	. 
	rst 38h			;3d69	ff 	. 
	ld e,c			;3d6a	59 	Y 
	ld e,c			;3d6b	59 	Y 
l3d6ch:
	nop			;3d6c	00 	. 
	rlca			;3d6d	07 	. 
	nop			;3d6e	00 	. 
	nop			;3d6f	00 	. 
	nop			;3d70	00 	. 
	rrca			;3d71	0f 	. 
	nop			;3d72	00 	. 
	nop			;3d73	00 	. 
l3d74h:
	nop			;3d74	00 	. 
	rst 18h			;3d75	df 	. 
	ret nz			;3d76	c0 	. 
	ret nz			;3d77	c0 	. 
	nop			;3d78	00 	. 
	rst 38h			;3d79	ff 	. 
	ret nz			;3d7a	c0 	. 
	ret nz			;3d7b	c0 	. 
	nop			;3d7c	00 	. 
	rst 38h			;3d7d	ff 	. 
	ret nz			;3d7e	c0 	. 
	ret nz			;3d7f	c0 	. 
	nop			;3d80	00 	. 
	rst 38h			;3d81	ff 	. 
	ld b,e			;3d82	43 	C 
	ld b,e			;3d83	43 	C 
	nop			;3d84	00 	. 
	rst 38h			;3d85	ff 	. 
	ld b,006h		;3d86	06 06 	. . 
	nop			;3d88	00 	. 
	rst 38h			;3d89	ff 	. 
	inc b			;3d8a	04 	. 
	inc b			;3d8b	04 	. 
	nop			;3d8c	00 	. 
	ret m			;3d8d	f8 	. 
	jr c,l3dc8h		;3d8e	38 38 	8 8 
	nop			;3d90	00 	. 
	call m,00404h		;3d91	fc 04 04 	. . . 
	nop			;3d94	00 	. 
	rst 38h			;3d95	ff 	. 
	inc bc			;3d96	03 	. 
	inc bc			;3d97	03 	. 
	nop			;3d98	00 	. 
	rst 38h			;3d99	ff 	. 
	ld h,c			;3d9a	61 	a 
	ld h,c			;3d9b	61 	a 
	nop			;3d9c	00 	. 
	rst 38h			;3d9d	ff 	. 
	pop bc			;3d9e	c1 	. 
	pop bc			;3d9f	c1 	. 
	nop			;3da0	00 	. 
	rst 38h			;3da1	ff 	. 
	add a,e			;3da2	83 	. 
	add a,e			;3da3	83 	. 
	nop			;3da4	00 	. 
	rst 38h			;3da5	ff 	. 
	ld b,006h		;3da6	06 06 	. . 
	nop			;3da8	00 	. 
	rst 38h			;3da9	ff 	. 
	inc b			;3daa	04 	. 
	inc b			;3dab	04 	. 
	nop			;3dac	00 	. 
	rrca			;3dad	0f 	. 
	nop			;3dae	00 	. 
	nop			;3daf	00 	. 
	nop			;3db0	00 	. 
	rra			;3db1	1f 	. 
	nop			;3db2	00 	. 
	nop			;3db3	00 	. 
	nop			;3db4	00 	. 
	rst 38h			;3db5	ff 	. 
	ret nz			;3db6	c0 	. 
	ret nz			;3db7	c0 	. 
	nop			;3db8	00 	. 
	rst 38h			;3db9	ff 	. 
	add a,b			;3dba	80 	. 
	add a,b			;3dbb	80 	. 
	nop			;3dbc	00 	. 
	rst 38h			;3dbd	ff 	. 
	add a,b			;3dbe	80 	. 
	add a,b			;3dbf	80 	. 
	nop			;3dc0	00 	. 
	rst 38h			;3dc1	ff 	. 
	nop			;3dc2	00 	. 
	nop			;3dc3	00 	. 
	nop			;3dc4	00 	. 
	rst 38h			;3dc5	ff 	. 
	nop			;3dc6	00 	. 
	nop			;3dc7	00 	. 
l3dc8h:
	nop			;3dc8	00 	. 
	rst 38h			;3dc9	ff 	. 
	nop			;3dca	00 	. 
	nop			;3dcb	00 	. 
	nop			;3dcc	00 	. 
	jp 0c3c3h		;3dcd	c3 c3 c3 	. . . 
	nop			;3dd0	00 	. 
	rst 30h			;3dd1	f7 	. 
	inc (hl)			;3dd2	34 	4 
	inc (hl)			;3dd3	34 	4 
	nop			;3dd4	00 	. 
	rst 38h			;3dd5	ff 	. 
	jr l3df0h		;3dd6	18 18 	. . 
	nop			;3dd8	00 	. 
	rst 38h			;3dd9	ff 	. 
	inc hl			;3dda	23 	# 
	inc hl			;3ddb	23 	# 
	nop			;3ddc	00 	. 
	rst 38h			;3ddd	ff 	. 
	ld b,b			;3dde	40 	@ 
	ld b,b			;3ddf	40 	@ 
	nop			;3de0	00 	. 
	rst 38h			;3de1	ff 	. 
	nop			;3de2	00 	. 
	nop			;3de3	00 	. 
	nop			;3de4	00 	. 
	rst 38h			;3de5	ff 	. 
	nop			;3de6	00 	. 
	nop			;3de7	00 	. 
	nop			;3de8	00 	. 
	rst 38h			;3de9	ff 	. 
	ld b,b			;3dea	40 	@ 
	ld b,b			;3deb	40 	@ 
	nop			;3dec	00 	. 
	add a,b			;3ded	80 	. 
	add a,b			;3dee	80 	. 
	add a,b			;3def	80 	. 
l3df0h:
	nop			;3df0	00 	. 
	ret po			;3df1	e0 	. 
	ld h,b			;3df2	60 	` 
	ld h,b			;3df3	60 	` 
	nop			;3df4	00 	. 
	ret m			;3df5	f8 	. 
	jr l3e10h		;3df6	18 18 	. . 
	nop			;3df8	00 	. 
	call m,08c8ch		;3df9	fc 8c 8c 	. . . 
	nop			;3dfc	00 	. 
	call m,0c4c4h		;3dfd	fc c4 c4 	. . . 
l3e00h:
	nop			;3e00	00 	. 
	cp 066h		;3e01	fe 66 	. f 
	ld h,(hl)			;3e03	66 	f 
	nop			;3e04	00 	. 
	cp 022h		;3e05	fe 22 	. " 
	ld (0fe00h),hl		;3e07	22 00 fe 	" . . 
	ld (l0032h),a		;3e0a	32 32 00 	2 2 . 
	rst 38h			;3e0d	ff 	. 
	ld c,a			;3e0e	4f 	O 
	ld c,a			;3e0f	4f 	O 
l3e10h:
	nop			;3e10	00 	. 
	rst 38h			;3e11	ff 	. 
l3e12h:
	add a,b			;3e12	80 	. 
	add a,b			;3e13	80 	. 
	nop			;3e14	00 	. 
	rst 38h			;3e15	ff 	. 
	add a,b			;3e16	80 	. 
	add a,b			;3e17	80 	. 
	nop			;3e18	00 	. 
	ld a,a			;3e19	7f 	 
	ret po			;3e1a	e0 	. 
	ret po			;3e1b	e0 	. 
	nop			;3e1c	00 	. 
	ccf			;3e1d	3f 	? 
	ld a,h			;3e1e	7c 	| 
	ld a,h			;3e1f	7c 	| 
	nop			;3e20	00 	. 
l3e21h:
	rrca			;3e21	0f 	. 
l3e22h:
	ccf			;3e22	3f 	? 
	ccf			;3e23	3f 	? 
	nop			;3e24	00 	. 
	nop			;3e25	00 	. 
	rrca			;3e26	0f 	. 
	rrca			;3e27	0f 	. 
	nop			;3e28	00 	. 
	nop			;3e29	00 	. 
	nop			;3e2a	00 	. 
	nop			;3e2b	00 	. 
	nop			;3e2c	00 	. 
	rst 38h			;3e2d	ff 	. 
	inc e			;3e2e	1c 	. 
	inc e			;3e2f	1c 	. 
	nop			;3e30	00 	. 
	rst 38h			;3e31	ff 	. 
	add a,a			;3e32	87 	. 
	add a,a			;3e33	87 	. 
	nop			;3e34	00 	. 
	rst 38h			;3e35	ff 	. 
	ld b,e			;3e36	43 	C 
	ld b,e			;3e37	43 	C 
	nop			;3e38	00 	. 
	rst 38h			;3e39	ff 	. 
	inc bc			;3e3a	03 	. 
	inc bc			;3e3b	03 	. 
	nop			;3e3c	00 	. 
	rst 38h			;3e3d	ff 	. 
	rrca			;3e3e	0f 	. 
	rrca			;3e3f	0f 	. 
	nop			;3e40	00 	. 
	cp 0ffh		;3e41	fe ff 	. . 
	rst 38h			;3e43	ff 	. 
	nop			;3e44	00 	. 
	call m,0fefeh		;3e45	fc fe fe 	. . . 
	nop			;3e48	00 	. 
	nop			;3e49	00 	. 
	call m,000fch		;3e4a	fc fc 00 	. . . 
	rst 38h			;3e4d	ff 	. 
	ret p			;3e4e	f0 	. 
	ret p			;3e4f	f0 	. 
	nop			;3e50	00 	. 
	rst 38h			;3e51	ff 	. 
	ret nz			;3e52	c0 	. 
	ret nz			;3e53	c0 	. 
	nop			;3e54	00 	. 
	rst 38h			;3e55	ff 	. 
	ret nz			;3e56	c0 	. 
	ret nz			;3e57	c0 	. 
	nop			;3e58	00 	. 
	rst 38h			;3e59	ff 	. 
	pop af			;3e5a	f1 	. 
	pop af			;3e5b	f1 	. 
	nop			;3e5c	00 	. 
	ld a,a			;3e5d	7f 	 
	rst 38h			;3e5e	ff 	. 
	rst 38h			;3e5f	ff 	. 
	nop			;3e60	00 	. 
	ccf			;3e61	3f 	? 
	ld a,a			;3e62	7f 	 
	ld a,a			;3e63	7f 	 
	nop			;3e64	00 	. 
	rrca			;3e65	0f 	. 
	ccf			;3e66	3f 	? 
	ccf			;3e67	3f 	? 
	nop			;3e68	00 	. 
	nop			;3e69	00 	. 
	rrca			;3e6a	0f 	. 
	rrca			;3e6b	0f 	. 
	nop			;3e6c	00 	. 
	rst 38h			;3e6d	ff 	. 
	nop			;3e6e	00 	. 
	nop			;3e6f	00 	. 
	nop			;3e70	00 	. 
	rst 38h			;3e71	ff 	. 
	djnz l3e84h		;3e72	10 10 	. . 
	nop			;3e74	00 	. 
	rst 38h			;3e75	ff 	. 
	inc a			;3e76	3c 	< 
	inc a			;3e77	3c 	< 
	nop			;3e78	00 	. 
	rst 38h			;3e79	ff 	. 
	cp 0feh		;3e7a	fe fe 	. . 
	nop			;3e7c	00 	. 
	rst 30h			;3e7d	f7 	. 
	rst 38h			;3e7e	ff 	. 
	rst 38h			;3e7f	ff 	. 
	nop			;3e80	00 	. 
	ex (sp),hl			;3e81	e3 	. 
	rst 30h			;3e82	f7 	. 
	rst 30h			;3e83	f7 	. 
l3e84h:
	nop			;3e84	00 	. 
	add a,b			;3e85	80 	. 
	ex (sp),hl			;3e86	e3 	. 
	ex (sp),hl			;3e87	e3 	. 
	nop			;3e88	00 	. 
	nop			;3e89	00 	. 
	add a,b			;3e8a	80 	. 
	add a,b			;3e8b	80 	. 
	nop			;3e8c	00 	. 
	rst 38h			;3e8d	ff 	. 
	inc c			;3e8e	0c 	. 
	inc c			;3e8f	0c 	. 
	nop			;3e90	00 	. 
	rst 38h			;3e91	ff 	. 
	ex af,af'			;3e92	08 	. 
	ex af,af'			;3e93	08 	. 
	nop			;3e94	00 	. 
	rst 38h			;3e95	ff 	. 
	nop			;3e96	00 	. 
	nop			;3e97	00 	. 
	nop			;3e98	00 	. 
	rst 38h			;3e99	ff 	. 
	add a,c			;3e9a	81 	. 
	add a,c			;3e9b	81 	. 
	nop			;3e9c	00 	. 
	rst 38h			;3e9d	ff 	. 
	rst 38h			;3e9e	ff 	. 
	rst 38h			;3e9f	ff 	. 
	nop			;3ea0	00 	. 
	rst 38h			;3ea1	ff 	. 
	rst 38h			;3ea2	ff 	. 
	rst 38h			;3ea3	ff 	. 
	nop			;3ea4	00 	. 
	ld a,c			;3ea5	79 	y 
	rst 38h			;3ea6	ff 	. 
	rst 38h			;3ea7	ff 	. 
	nop			;3ea8	00 	. 
	nop			;3ea9	00 	. 
	ld a,c			;3eaa	79 	y 
	ld a,c			;3eab	79 	y 
	nop			;3eac	00 	. 
	rst 38h			;3ead	ff 	. 
	jr nc,l3ee0h		;3eae	30 30 	0 0 
	nop			;3eb0	00 	. 
	rst 38h			;3eb1	ff 	. 
	ret nz			;3eb2	c0 	. 
	ret nz			;3eb3	c0 	. 
	nop			;3eb4	00 	. 
	rst 38h			;3eb5	ff 	. 
	add a,b			;3eb6	80 	. 
	add a,b			;3eb7	80 	. 
	nop			;3eb8	00 	. 
	rst 38h			;3eb9	ff 	. 
	nop			;3eba	00 	. 
	nop			;3ebb	00 	. 
	nop			;3ebc	00 	. 
	rst 38h			;3ebd	ff 	. 
	ld bc,l0001h		;3ebe	01 01 00 	. . . 
	cp 0ffh		;3ec1	fe ff 	. . 
	rst 38h			;3ec3	ff 	. 
	nop			;3ec4	00 	. 
	ret p			;3ec5	f0 	. 
	cp 0feh		;3ec6	fe fe 	. . 
	nop			;3ec8	00 	. 
	nop			;3ec9	00 	. 
	ret p			;3eca	f0 	. 
	ret p			;3ecb	f0 	. 
	nop			;3ecc	00 	. 
	rst 38h			;3ecd	ff 	. 
	ret po			;3ece	e0 	. 
	ret po			;3ecf	e0 	. 
	nop			;3ed0	00 	. 
	rst 38h			;3ed1	ff 	. 
	jr nz,$+34		;3ed2	20 20 	    
	nop			;3ed4	00 	. 
	rst 38h			;3ed5	ff 	. 
	djnz l3ee8h		;3ed6	10 10 	. . 
	nop			;3ed8	00 	. 
	rst 38h			;3ed9	ff 	. 
	djnz l3eech		;3eda	10 10 	. . 
	nop			;3edc	00 	. 
	rst 38h			;3edd	ff 	. 
	jr nc,$+50		;3ede	30 30 	0 0 
l3ee0h:
	nop			;3ee0	00 	. 
	rst 38h			;3ee1	ff 	. 
	rst 38h			;3ee2	ff 	. 
	rst 38h			;3ee3	ff 	. 
	nop			;3ee4	00 	. 
	rra			;3ee5	1f 	. 
	rst 38h			;3ee6	ff 	. 
	rst 38h			;3ee7	ff 	. 
l3ee8h:
	nop			;3ee8	00 	. 
	nop			;3ee9	00 	. 
	rra			;3eea	1f 	. 
	rra			;3eeb	1f 	. 
l3eech:
	nop			;3eec	00 	. 
	cp 032h		;3eed	fe 32 	. 2 
	ld (0fe00h),a		;3eef	32 00 fe 	2 . . 
	ld (l0032h),a		;3ef2	32 32 00 	2 2 . 
	cp 026h		;3ef5	fe 26 	. & 
	ld h,000h		;3ef7	26 00 	& . 
	call m,06e6eh		;3ef9	fc 6e 6e 	. n n 
	nop			;3efc	00 	. 
	ret m			;3efd	f8 	. 
	call m,000fch		;3efe	fc fc 00 	. . . 
	ret po			;3f01	e0 	. 
	ret m			;3f02	f8 	. 
	ret m			;3f03	f8 	. 
	nop			;3f04	00 	. 
	nop			;3f05	00 	. 
	ret po			;3f06	e0 	. 
	ret po			;3f07	e0 	. 
	nop			;3f08	00 	. 
	nop			;3f09	00 	. 
	nop			;3f0a	00 	. 
	nop			;3f0b	00 	. 
	nop			;3f0c	00 	. 
	dec l			;3f0d	2d 	- 
	ld (l150dh),hl		;3f0e	22 0d 15 	" . . 
	inc e			;3f11	1c 	. 
	add hl,de			;3f12	19 	. 
	nop			;3f13	00 	. 
	rla			;3f14	17 	. 
	dec e			;3f15	1d 	. 
	dec bc			;3f16	0b 	. 
	nop			;3f17	00 	. 
	inc d			;3f18	14 	. 
	dec e			;3f19	1d 	. 
	jr nz,l3f1ch		;3f1a	20 00 	  . 
l3f1ch:
	jr nz,l3f2ch		;3f1c	20 0e 	  . 
	ld hl,l0e19h		;3f1e	21 19 0e 	! . . 
	inc e			;3f21	1c 	. 
l3f22h:
	rrca			;3f22	0f 	. 
	nop			;3f23	00 	. 
	rla			;3f24	17 	. 
	dec e			;3f25	1d 	. 
	dec bc			;3f26	0b 	. 
	jr nz,l3f29h		;3f27	20 00 	  . 
l3f29h:
	ld a,(de)			;3f29	1a 	. 
l3f2ah:
	ld c,014h		;3f2a	0e 14 	. . 
l3f2ch:
	inc de			;3f2c	13 	. 
	nop			;3f2d	00 	. 
	ld (l001dh),hl		;3f2e	22 1d 00 	" . . 
	jr nz,l3f46h		;3f31	20 13 	  . 
	ld hl,l0b11h		;3f33	21 11 0b 	! . . 
	inc de			;3f36	13 	. 
	nop			;3f37	00 	. 
	dec de			;3f38	1b 	. 
	inc de			;3f39	13 	. 
	add hl,de			;3f3a	19 	. 
	ld (l1b1dh),hl		;3f3b	22 1d 1b 	" . . 
	ld (l1b1dh),hl		;3f3e	22 1d 1b 	" . . 
	nop			;3f41	00 	. 
	ld c,000h		;3f42	0e 00 	. . 
	ld a,(de)			;3f44	1a 	. 
	dec e			;3f45	1d 	. 
l3f46h:
	inc h			;3f46	24 	$ 
	inc de			;3f47	13 	. 
	nop			;3f48	00 	. 
	rla			;3f49	17 	. 
	dec e			;3f4a	1d 	. 
	dec bc			;3f4b	0b 	. 
	nop			;3f4c	00 	. 
	ld hl,l001dh		;3f4d	21 1d 00 	! . . 
	dec de			;3f50	1b 	. 
	dec bc			;3f51	0b 	. 
	ld de,0ee0dh		;3f52	11 0d ee 	. . . 
	nop			;3f55	00 	. 
	xor 000h		;3f56	ee 00 	. . 
	xor 000h		;3f58	ee 00 	. . 
	xor 000h		;3f5a	ee 00 	. . 
	xor 000h		;3f5c	ee 00 	. . 
	xor 000h		;3f5e	ee 00 	. . 
	xor 000h		;3f60	ee 00 	. . 
	xor 000h		;3f62	ee 00 	. . 
	xor 000h		;3f64	ee 00 	. . 
	xor 000h		;3f66	ee 00 	. . 
	xor 000h		;3f68	ee 00 	. . 
	xor 000h		;3f6a	ee 00 	. . 
	xor 000h		;3f6c	ee 00 	. . 
	xor 000h		;3f6e	ee 00 	. . 
	nop			;3f70	00 	. 
	nop			;3f71	00 	. 
	nop			;3f72	00 	. 
	nop			;3f73	00 	. 
	ret po			;3f74	e0 	. 
	nop			;3f75	00 	. 
	ret po			;3f76	e0 	. 
	nop			;3f77	00 	. 
	ret po			;3f78	e0 	. 
	nop			;3f79	00 	. 
	ret po			;3f7a	e0 	. 
	nop			;3f7b	00 	. 
	ret po			;3f7c	e0 	. 
	nop			;3f7d	00 	. 
	ret po			;3f7e	e0 	. 
	nop			;3f7f	00 	. 
	ret po			;3f80	e0 	. 
	nop			;3f81	00 	. 
	ret po			;3f82	e0 	. 
	nop			;3f83	00 	. 
	ret po			;3f84	e0 	. 
	nop			;3f85	00 	. 
	ret po			;3f86	e0 	. 
	nop			;3f87	00 	. 
	ret po			;3f88	e0 	. 
	nop			;3f89	00 	. 
	ret po			;3f8a	e0 	. 
	nop			;3f8b	00 	. 
	ret po			;3f8c	e0 	. 
	nop			;3f8d	00 	. 
	ret po			;3f8e	e0 	. 
	nop			;3f8f	00 	. 
	nop			;3f90	00 	. 
	nop			;3f91	00 	. 
	nop			;3f92	00 	. 
	nop			;3f93	00 	. 
	xor 0eeh		;3f94	ee ee 	. . 
	nop			;3f96	00 	. 
	nop			;3f97	00 	. 
	xor 0eeh		;3f98	ee ee 	. . 
	nop			;3f9a	00 	. 
	nop			;3f9b	00 	. 
	xor 0eeh		;3f9c	ee ee 	. . 
	nop			;3f9e	00 	. 
	nop			;3f9f	00 	. 
	xor 0eeh		;3fa0	ee ee 	. . 
	nop			;3fa2	00 	. 
	nop			;3fa3	00 	. 
	xor 0eeh		;3fa4	ee ee 	. . 
	nop			;3fa6	00 	. 
	nop			;3fa7	00 	. 
	xor 0eeh		;3fa8	ee ee 	. . 
	nop			;3faa	00 	. 
	nop			;3fab	00 	. 
	xor 0eeh		;3fac	ee ee 	. . 
	nop			;3fae	00 	. 
	nop			;3faf	00 	. 
	nop			;3fb0	00 	. 
	nop			;3fb1	00 	. 
	nop			;3fb2	00 	. 
	nop			;3fb3	00 	. 
	ret po			;3fb4	e0 	. 
	ret po			;3fb5	e0 	. 
	nop			;3fb6	00 	. 
	nop			;3fb7	00 	. 
	ret po			;3fb8	e0 	. 
	ret po			;3fb9	e0 	. 
	nop			;3fba	00 	. 
	nop			;3fbb	00 	. 
	ret po			;3fbc	e0 	. 
	ret po			;3fbd	e0 	. 
	nop			;3fbe	00 	. 
	nop			;3fbf	00 	. 
l3fc0h:
	ret po			;3fc0	e0 	. 
	ret po			;3fc1	e0 	. 
	nop			;3fc2	00 	. 
	nop			;3fc3	00 	. 
sub_3fc4h:
	ret po			;3fc4	e0 	. 
	ret po			;3fc5	e0 	. 
	nop			;3fc6	00 	. 
	nop			;3fc7	00 	. 
	ret po			;3fc8	e0 	. 
	ret po			;3fc9	e0 	. 
	nop			;3fca	00 	. 
	nop			;3fcb	00 	. 
	ret po			;3fcc	e0 	. 
	ret po			;3fcd	e0 	. 
	nop			;3fce	00 	. 
	nop			;3fcf	00 	. 
	nop			;3fd0	00 	. 
	nop			;3fd1	00 	. 
	nop			;3fd2	00 	. 
	nop			;3fd3	00 	. 
	rst 38h			;3fd4	ff 	. 
	rst 38h			;3fd5	ff 	. 
	rst 38h			;3fd6	ff 	. 
	rst 38h			;3fd7	ff 	. 
	rst 38h			;3fd8	ff 	. 
	rst 38h			;3fd9	ff 	. 
	rst 38h			;3fda	ff 	. 
	rst 38h			;3fdb	ff 	. 
	rst 38h			;3fdc	ff 	. 
	rst 38h			;3fdd	ff 	. 
	rst 38h			;3fde	ff 	. 
	rst 38h			;3fdf	ff 	. 
	rst 38h			;3fe0	ff 	. 
	rst 38h			;3fe1	ff 	. 
	rst 38h			;3fe2	ff 	. 
	rst 38h			;3fe3	ff 	. 
	rst 38h			;3fe4	ff 	. 
	rst 38h			;3fe5	ff 	. 
	rst 38h			;3fe6	ff 	. 
	rst 38h			;3fe7	ff 	. 
	rst 38h			;3fe8	ff 	. 
	rst 38h			;3fe9	ff 	. 
	rst 38h			;3fea	ff 	. 
	rst 38h			;3feb	ff 	. 
	rst 38h			;3fec	ff 	. 
	rst 38h			;3fed	ff 	. 
	rst 38h			;3fee	ff 	. 
	rst 38h			;3fef	ff 	. 
	rst 38h			;3ff0	ff 	. 
	rst 38h			;3ff1	ff 	. 
	rst 38h			;3ff2	ff 	. 
	rst 38h			;3ff3	ff 	. 
	rst 38h			;3ff4	ff 	. 
	rst 38h			;3ff5	ff 	. 
	rst 38h			;3ff6	ff 	. 
	rst 38h			;3ff7	ff 	. 
	rst 38h			;3ff8	ff 	. 
	rst 38h			;3ff9	ff 	. 
	rst 38h			;3ffa	ff 	. 
	rst 38h			;3ffb	ff 	. 
	rst 38h			;3ffc	ff 	. 
	rst 38h			;3ffd	ff 	. 
	rst 38h			;3ffe	ff 	. 
l3fffh:
	rst 38h			;3fff	ff 	. 
