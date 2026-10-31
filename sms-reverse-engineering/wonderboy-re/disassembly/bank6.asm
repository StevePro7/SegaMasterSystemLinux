; z80dasm 1.1.5
; command line: z80dasm -a -l -t -g 0x0000 -o disassembly/bank6.asm disassembly/bank6.bin

	org	00000h

l0000h:
	ld b,h			;0000	44 	D 
sub_0001h:
	nop			;0001	00 	. 
l0002h:
	ld bc,l0100h		;0002	01 00 01 	. . . 
	rra			;0005	1f 	. 
sub_0006h:
	ld l,a			;0006	6f 	o 
l0007h:
	push af			;0007	f5 	. 
	cp a			;0008	bf 	. 
	xor 0efh		;0009	ee ef 	. . 
	nop			;000b	00 	. 
	ld bc,0e5ffh		;000c	01 ff e5 	. . . 
l000fh:
	or l			;000f	b5 	. 
	ld c,l			;0010	4d 	M 
	ld a,(de)			;0011	1a 	. 
	call m,059c5h		;0012	fc c5 59 	. . Y 
	call z,0d62bh		;0015	cc 2b d6 	. + . 
	ld l,c			;0018	69 	i 
	sub l			;0019	95 	. 
	jp pe,0fda5h		;001a	ea a5 fd 	. . . 
	ld e,l			;001d	5d 	] 
	ld e,b			;001e	58 	X 
sub_001fh:
	ld d,b			;001f	50 	P 
	ld bc,0ad07h		;0020	01 07 ad 	. . . 
	ld e,a			;0023	5f 	_ 
	nop			;0024	00 	. 
	ld bc,0f3ffh		;0025	01 ff f3 	. . . 
l0028h:
	ret nz			;0028	c0 	. 
	rst 38h			;0029	ff 	. 
	nop			;002a	00 	. 
	jr nz,l0077h		;002b	20 4a 	  J 
	jp c,0ffffh		;002d	da ff ff 	. . . 
	call m,sub_0300h		;0030	fc 00 03 	. . . 
	nop			;0033	00 	. 
	inc b			;0034	04 	. 
	add hl,hl			;0035	29 	) 
	di			;0036	f3 	. 
	nop			;0037	00 	. 
	ld bc,07effh		;0038	01 ff 7e 	. . ~ 
	jr l003dh		;003b	18 00 	. . 
l003dh:
	inc bc			;003d	03 	. 
	nop			;003e	00 	. 
l003fh:
	add hl,bc			;003f	09 	. 
l0040h:
	sbc a,000h		;0040	de 00 	. . 
	ld bc,073ffh		;0042	01 ff 73 	. . s 
	ld bc,l0100h		;0045	01 00 01 	. . . 
	nop			;0048	00 	. 
	ld (bc),a			;0049	02 	. 
	inc d			;004a	14 	. 
	ld l,l			;004b	6d 	m 
	rst 30h			;004c	f7 	. 
	nop			;004d	00 	. 
	ld bc,0a7ffh		;004e	01 ff a7 	. . . 
	xor l			;0051	ad 	. 
	or d			;0052	b2 	. 
	ld e,b			;0053	58 	X 
	ccf			;0054	3f 	? 
	and e			;0055	a3 	. 
	nop			;0056	00 	. 
	ex af,af'			;0057	08 	. 
	nop			;0058	00 	. 
	cp a			;0059	bf 	. 
	cp d			;005a	ba 	. 
	ld a,(de)			;005b	1a 	. 
	ld a,(bc)			;005c	0a 	. 
	add a,b			;005d	80 	. 
	ret po			;005e	e0 	. 
	or l			;005f	b5 	. 
	jp m,041c9h		;0060	fa c9 41 	. . A 
	jr nz,$-42		;0063	20 d4 	  . 
	dec l			;0065	2d 	- 
	rst 30h			;0066	f7 	. 
	xor l			;0067	ad 	. 
	ld e,a			;0068	5f 	_ 
	rst 8			;0069	cf 	. 
	rst 0			;006a	c7 	. 
	rst 18h			;006b	df 	. 
	rst 0			;006c	c7 	. 
	rst 8			;006d	cf 	. 
	rst 38h			;006e	ff 	. 
	add a,a			;006f	87 	. 
	sbc a,a			;0070	9f 	. 
l0071h:
	adc a,(hl)			;0071	8e 	. 
	add a,d			;0072	82 	. 
	add a,(hl)			;0073	86 	. 
	sbc a,(hl)			;0074	9e 	. 
	add a,d			;0075	82 	. 
	adc a,(hl)			;0076	8e 	. 
l0077h:
	rst 38h			;0077	ff 	. 
	add a,d			;0078	82 	. 
	rst 38h			;0079	ff 	. 
	rst 38h			;007a	ff 	. 
	push hl			;007b	e5 	. 
	or a			;007c	b7 	. 
l007dh:
	ld c,a			;007d	4f 	O 
	ld a,(de)			;007e	1a 	. 
sub_007fh:
	call m,0ffc5h		;007f	fc c5 ff 	. . . 
	rst 38h			;0082	ff 	. 
	and a			;0083	a7 	. 
	defb 0edh;next byte illegal after ed		;0084	ed 	. 
	jp p,l3f58h		;0085	f2 58 3f 	. X ? 
	and e			;0088	a3 	. 
	ret nz			;0089	c0 	. 
	nop			;008a	00 	. 
	ld bc,0c0ffh		;008b	01 ff c0 	. . . 
	rst 38h			;008e	ff 	. 
	rst 38h			;008f	ff 	. 
	sub d			;0090	92 	. 
	nop			;0091	00 	. 
	ld bc,092ffh		;0092	01 ff 92 	. . . 
	scf			;0095	37 	7 
	nop			;0096	00 	. 
	ld bc,0e7ffh		;0097	01 ff e7 	. . . 
	rst 38h			;009a	ff 	. 
	rst 38h			;009b	ff 	. 
	rst 8			;009c	cf 	. 
	nop			;009d	00 	. 
	ld bc,0cfffh		;009e	01 ff cf 	. . . 
	rst 38h			;00a1	ff 	. 
	sub d			;00a2	92 	. 
	jp m,l0500h		;00a3	fa 00 05 	. . . 
	rst 38h			;00a6	ff 	. 
	rst 38h			;00a7	ff 	. 
	set 1,a		;00a8	cb cf 	. . 
	rst 28h			;00aa	ef 	. 
	nop			;00ab	00 	. 
	inc b			;00ac	04 	. 
	rst 38h			;00ad	ff 	. 
	ccf			;00ae	3f 	? 
	cp a			;00af	bf 	. 
	sbc a,a			;00b0	9f 	. 
	rst 38h			;00b1	ff 	. 
	rst 18h			;00b2	df 	. 
	rst 38h			;00b3	ff 	. 
l00b4h:
	sbc a,a			;00b4	9f 	. 
	rra			;00b5	1f 	. 
	nop			;00b6	00 	. 
	ex af,af'			;00b7	08 	. 
	nop			;00b8	00 	. 
	rst 38h			;00b9	ff 	. 
	rst 38h			;00ba	ff 	. 
	ret nz			;00bb	c0 	. 
	rst 0			;00bc	c7 	. 
l00bdh:
	ret z			;00bd	c8 	. 
	call c,0d1d3h		;00be	dc d3 d1 	. . . 
	nop			;00c1	00 	. 
	ex af,af'			;00c2	08 	. 
	rst 38h			;00c3	ff 	. 
	rst 10h			;00c4	d7 	. 
	call 0ddffh		;00c5	cd ff dd 	. . . 
l00c8h:
	sbc a,09fh		;00c8	de 9f 	. . 
	rst 38h			;00ca	ff 	. 
	adc a,a			;00cb	8f 	. 
	nop			;00cc	00 	. 
	ld bc,0e4ffh		;00cd	01 ff e4 	. . . 
	ret po			;00d0	e0 	. 
	pop hl			;00d1	e1 	. 
	rst 20h			;00d2	e7 	. 
	pop hl			;00d3	e1 	. 
	rst 20h			;00d4	e7 	. 
	pop hl			;00d5	e1 	. 
	rst 8			;00d6	cf 	. 
	rst 38h			;00d7	ff 	. 
	rst 0			;00d8	c7 	. 
	ret po			;00d9	e0 	. 
	ret p			;00da	f0 	. 
sub_00dbh:
	ret c			;00db	d8 	. 
sub_00dch:
	call z,0e3c7h		;00dc	cc c7 e3 	. . . 
l00dfh:
	and a			;00df	a7 	. 
sub_00e0h:
	and e			;00e0	a3 	. 
l00e1h:
	jr nz,$+37		;00e1	20 23 	  # 
l00e3h:
	rst 38h			;00e3	ff 	. 
	ld hl,l00e1h		;00e4	21 e1 00 	! . . 
l00e7h:
	jr nz,$+1		;00e7	20 ff 	  . 
	sub a			;00e9	97 	. 
	or l			;00ea	b5 	. 
	or a			;00eb	b7 	. 
	ld c,a			;00ec	4f 	O 
sub_00edh:
	sbc a,d			;00ed	9a 	. 
	call m,sub_2dc5h		;00ee	fc c5 2d 	. . - 
	ld h,h			;00f1	64 	d 
l00f2h:
	ld l,l			;00f2	6d 	m 
sub_00f3h:
	and a			;00f3	a7 	. 
	or h			;00f4	b4 	. 
	cp e			;00f5	bb 	. 
sub_00f6h:
	adc a,e			;00f6	8b 	. 
	sub 054h		;00f7	d6 54 	. T 
sub_00f9h:
	ret			;00f9	c9 	. 
	ld bc,l00fdh+2		;00fa	01 ff 00 	. . . 
l00fdh:
	ld bc,0ad07h		;00fd	01 07 ad 	. . . 
l0100h:
	ld e,a			;0100	5f 	_ 
	push bc			;0101	c5 	. 
	adc a,b			;0102	88 	. 
l0103h:
	ld h,b			;0103	60 	` 
	nop			;0104	00 	. 
	ld bc,04000h		;0105	01 00 40 	. . @ 
sub_0108h:
	call p,0eebfh		;0108	f4 bf ee 	. . . 
	nop			;010b	00 	. 
	ex af,af'			;010c	08 	. 
	adc a,e			;010d	8b 	. 
	nop			;010e	00 	. 
	ex af,af'			;010f	08 	. 
	add a,h			;0110	84 	. 
	nop			;0111	00 	. 
	inc b			;0112	04 	. 
	adc a,e			;0113	8b 	. 
	dec bc			;0114	0b 	. 
	add a,a			;0115	87 	. 
	rst 38h			;0116	ff 	. 
	rst 38h			;0117	ff 	. 
	rst 38h			;0118	ff 	. 
	add a,h			;0119	84 	. 
	sbc a,b			;011a	98 	. 
	adc a,(hl)			;011b	8e 	. 
	rra			;011c	1f 	. 
	nop			;011d	00 	. 
	inc bc			;011e	03 	. 
	rst 38h			;011f	ff 	. 
	nop			;0120	00 	. 
	ex af,af'			;0121	08 	. 
	dec b			;0122	05 	. 
	nop			;0123	00 	. 
	ex af,af'			;0124	08 	. 
	rst 38h			;0125	ff 	. 
	nop			;0126	00 	. 
	inc bc			;0127	03 	. 
	dec b			;0128	05 	. 
	dec (hl)			;0129	35 	5 
	dec e			;012a	1d 	. 
	nop			;012b	00 	. 
	ld bc,0feffh		;012c	01 ff fe 	. . . 
	nop			;012f	00 	. 
	add hl,bc			;0130	09 	. 
	rst 38h			;0131	ff 	. 
	nop			;0132	00 	. 
	ex af,af'			;0133	08 	. 
	cpl			;0134	2f 	/ 
	nop			;0135	00 	. 
	ex af,af'			;0136	08 	. 
	jp po,sub_0300h		;0137	e2 00 03 	. . . 
	rst 18h			;013a	df 	. 
	rst 10h			;013b	d7 	. 
	out (0f1h),a		;013c	d3 f1 	. . 
	jp (hl)			;013e	e9 	. 
	defb 0fdh,000h,008h	;illegal sequence		;013f	fd 00 08 	. . . 
	push bc			;0142	c5 	. 
l0143h:
	nop			;0143	00 	. 
	ex af,af'			;0144	08 	. 
	pop hl			;0145	e1 	. 
	rst 38h			;0146	ff 	. 
	rst 38h			;0147	ff 	. 
	ld a,a			;0148	7f 	 
	ccf			;0149	3f 	? 
	nop			;014a	00 	. 
	inc b			;014b	04 	. 
	cpl			;014c	2f 	/ 
	nop			;014d	00 	. 
	ex af,af'			;014e	08 	. 
	jp nz,l0800h		;014f	c2 00 08 	. . . 
	rla			;0152	17 	. 
	nop			;0153	00 	. 
	ex af,af'			;0154	08 	. 
	ld e,a			;0155	5f 	_ 
	ld sp,hl			;0156	f9 	. 
	rst 20h			;0157	e7 	. 
	adc a,a			;0158	8f 	. 
	ccf			;0159	3f 	? 
	nop			;015a	00 	. 
	ld bc,0fdffh		;015b	01 ff fd 	. . . 
	cp 000h		;015e	fe 00 	. . 
	ld bc,l00fdh+2		;0160	01 ff 00 	. . . 
	inc bc			;0163	03 	. 
	rra			;0164	1f 	. 
	ld h,e			;0165	63 	c 
	add a,c			;0166	81 	. 
	rst 20h			;0167	e7 	. 
	rst 38h			;0168	ff 	. 
	rst 38h			;0169	ff 	. 
	ei			;016a	fb 	. 
	rst 38h			;016b	ff 	. 
	ret p			;016c	f0 	. 
	rst 38h			;016d	ff 	. 
	ret nc			;016e	d0 	. 
	rst 38h			;016f	ff 	. 
	djnz $-14		;0170	10 f0 	. . 
	rst 38h			;0172	ff 	. 
	rst 38h			;0173	ff 	. 
	rst 28h			;0174	ef 	. 
	di			;0175	f3 	. 
	call m,l0100h		;0176	fc 00 01 	. . . 
	rst 38h			;0179	ff 	. 
	rra			;017a	1f 	. 
	pop hl			;017b	e1 	. 
	nop			;017c	00 	. 
	dec b			;017d	05 	. 
	rst 38h			;017e	ff 	. 
	rlca			;017f	07 	. 
	ret m			;0180	f8 	. 
	nop			;0181	00 	. 
	ld bc,0cfffh		;0182	01 ff cf 	. . . 
	add a,(hl)			;0185	86 	. 
	rst 38h			;0186	ff 	. 
	nop			;0187	00 	. 
	inc a			;0188	3c 	< 
	cp a			;0189	bf 	. 
	cp h			;018a	bc 	. 
	cp b			;018b	b8 	. 
	ccf			;018c	3f 	? 
	nop			;018d	00 	. 
	dec b			;018e	05 	. 
	rra			;018f	1f 	. 
	nop			;0190	00 	. 
	ld bc,01fffh		;0191	01 ff 1f 	. . . 
	nop			;0194	00 	. 
	inc bc			;0195	03 	. 
	rst 38h			;0196	ff 	. 
	cp 0e0h		;0197	fe e0 	. . 
	inc bc			;0199	03 	. 
	rrca			;019a	0f 	. 
	nop			;019b	00 	. 
	ld bc,0fdffh		;019c	01 ff fd 	. . . 
	sub c			;019f	91 	. 
	add a,c			;01a0	81 	. 
	add a,e			;01a1	83 	. 
	adc a,a			;01a2	8f 	. 
	add a,e			;01a3	83 	. 
	add a,a			;01a4	87 	. 
	add a,e			;01a5	83 	. 
	nop			;01a6	00 	. 
	ld de,l00fdh+2		;01a7	11 ff 00 	. . . 
	ld bc,0f300h		;01aa	01 00 f3 	. . . 
	rst 20h			;01ad	e7 	. 
	call sub_159eh		;01ae	cd 9e 15 	. . . 
	add hl,sp			;01b1	39 	9 
	nop			;01b2	00 	. 
	ld bc,090ffh		;01b3	01 ff 90 	. . . 
	ld (hl),a			;01b6	77 	w 
	adc a,b			;01b7	88 	. 
	rst 38h			;01b8	ff 	. 
	ld a,a			;01b9	7f 	 
	ret m			;01ba	f8 	. 
	rst 20h			;01bb	e7 	. 
	rst 28h			;01bc	ef 	. 
	inc sp			;01bd	33 	3 
	dec de			;01be	1b 	. 
	cpl			;01bf	2f 	/ 
	dec sp			;01c0	3b 	; 
	inc de			;01c1	13 	. 
	cpl			;01c2	2f 	/ 
	inc sp			;01c3	33 	3 
	sbc a,0dch		;01c4	de dc 	. . 
	cp h			;01c6	bc 	. 
	nop			;01c7	00 	. 
	inc bc			;01c8	03 	. 
	cp b			;01c9	b8 	. 
	call c,sub_00dbh		;01ca	dc db 00 	. . . 
	ld bc,l09ffh		;01cd	01 ff 09 	. . . 
	xor 011h		;01d0	ee 11 	. . 
	rst 38h			;01d2	ff 	. 
	cp 07fh		;01d3	fe 7f 	.  
	sbc a,a			;01d5	9f 	. 
	nop			;01d6	00 	. 
	ld bc,l03ffh		;01d7	01 ff 03 	. . . 
	call 0b1e5h		;01da	cd e5 b1 	. . . 
	ld a,c			;01dd	79 	y 
	xor c			;01de	a9 	. 
	sbc a,l			;01df	9d 	. 
l01e0h:
	rst 38h			;01e0	ff 	. 
	rst 28h			;01e1	ef 	. 
	rst 30h			;01e2	f7 	. 
	nop			;01e3	00 	. 
	inc bc			;01e4	03 	. 
	ld (hl),a			;01e5	77 	w 
	rst 38h			;01e6	ff 	. 
	rst 28h			;01e7	ef 	. 
	rst 30h			;01e8	f7 	. 
	call z,0f4d8h		;01e9	cc d8 f4 	. . . 
	call c,0f4c8h		;01ec	dc c8 f4 	. . . 
	call c,0b7feh		;01ef	dc fe b7 	. . . 
	exx			;01f2	d9 	. 
	rst 30h			;01f3	f7 	. 
	or a			;01f4	b7 	. 
	or (hl)			;01f5	b6 	. 
	ld a,d			;01f6	7a 	z 
	sbc a,c			;01f7	99 	. 
	rst 8			;01f8	cf 	. 
	jp pe,06bbbh		;01f9	ea bb 6b 	. . k 
	ld d,h			;01fc	54 	T 
	rst 20h			;01fd	e7 	. 
	and d			;01fe	a2 	. 
l01ffh:
	ex de,hl			;01ff	eb 	. 
l0200h:
	nop			;0200	00 	. 
l0201h:
	ld bc,0f2ffh		;0201	01 ff f2 	. . . 
	ei			;0204	fb 	. 
	ld a,a			;0205	7f 	 
	rst 38h			;0206	ff 	. 
	sbc a,d			;0207	9a 	. 
	jp c,0831ah		;0208	da 1a 83 	. . . 
	ld a,(hl)			;020b	7e 	~ 
	ld (hl),a			;020c	77 	w 
	nop			;020d	00 	. 
	ld bc,l00fdh+2		;020e	01 ff 00 	. . . 
	inc b			;0211	04 	. 
	cp d			;0212	ba 	. 
	cp 0afh		;0213	fe af 	. . 
	call pe,sub_0cd5h		;0215	ec d5 0c 	. . . 
	call pe,l0100h		;0218	ec 00 01 	. . . 
	nop			;021b	00 	. 
	jp (hl)			;021c	e9 	. 
	cp a			;021d	bf 	. 
	ld l,e			;021e	6b 	k 
	push de			;021f	d5 	. 
	cp c			;0220	b9 	. 
	xor c			;0221	a9 	. 
	xor e			;0222	ab 	. 
	or a			;0223	b7 	. 
	ld d,e			;0224	53 	S 
	ret nz			;0225	c0 	. 
	ccf			;0226	3f 	? 
	or (hl)			;0227	b6 	. 
	nop			;0228	00 	. 
	ld bc,l00fdh+2		;0229	01 ff 00 	. . . 
	inc b			;022c	04 	. 
	xor d			;022d	aa 	. 
	nop			;022e	00 	. 
	ld bc,l09ffh		;022f	01 ff 09 	. . . 
	out (0feh),a		;0232	d3 fe 	. . 
	sbc a,c			;0234	99 	. 
	sub e			;0235	93 	. 
	sub a			;0236	97 	. 
	sub b			;0237	90 	. 
	nop			;0238	00 	. 
	ld bc,0ecffh		;0239	01 ff ec 	. . . 
	defb 0edh;next byte illegal after ed		;023c	ed 	. 
	ld a,a			;023d	7f 	 
	dec (hl)			;023e	35 	5 
	or l			;023f	b5 	. 
	cp e			;0240	bb 	. 
	sbc a,a			;0241	9f 	. 
	nop			;0242	00 	. 
	ld bc,0ffffh		;0243	01 ff ff 	. . . 
	ld c,c			;0246	49 	I 
	nop			;0247	00 	. 
	ld bc,0a5ffh		;0248	01 ff a5 	. . . 
	or l			;024b	b5 	. 
	sbc a,0f7h		;024c	de f7 	. . 
	nop			;024e	00 	. 
	ld bc,l30ffh		;024f	01 ff 30 	. . 0 
	ret c			;0252	d8 	. 
	or e			;0253	b3 	. 
	scf			;0254	37 	7 
	nop			;0255	00 	. 
	inc bc			;0256	03 	. 
	ld h,a			;0257	67 	g 
	jp p,0b171h		;0258	f2 71 b1 	. q . 
	ld e,e			;025b	5b 	[ 
	cp e			;025c	bb 	. 
	inc bc			;025d	03 	. 
	ld d,024h		;025e	16 24 	. $ 
	nop			;0260	00 	. 
	ld bc,0ffffh		;0261	01 ff ff 	. . . 
	adc a,b			;0264	88 	. 
	nop			;0265	00 	. 
	ld bc,l14ffh		;0266	01 ff 14 	. . . 
	ld d,0f6h		;0269	16 f6 	. . 
	ei			;026b	fb 	. 
	nop			;026c	00 	. 
	ld bc,0ffffh		;026d	01 ff ff 	. . . 
	adc a,c			;0270	89 	. 
	nop			;0271	00 	. 
	ld bc,042ffh		;0272	01 ff 42 	. . B 
	jp nz,065b2h		;0275	c2 b2 65 	. . e 
	inc bc			;0278	03 	. 
	pop bc			;0279	c1 	. 
	rst 38h			;027a	ff 	. 
	adc a,c			;027b	89 	. 
	push de			;027c	d5 	. 
	cp 0edh		;027d	fe ed 	. . 
	add a,l			;027f	85 	. 
	nop			;0280	00 	. 
	ld bc,0cbffh		;0281	01 ff cb 	. . . 
	xor a			;0284	af 	. 
	ld (hl),e			;0285	73 	s 
	ld h,d			;0286	62 	b 
	or c			;0287	b1 	. 
	sub c			;0288	91 	. 
	ld c,b			;0289	48 	H 
	nop			;028a	00 	. 
	ld bc,080ffh		;028b	01 ff 80 	. . . 
	nop			;028e	00 	. 
	inc b			;028f	04 	. 
	ld a,a			;0290	7f 	 
	ccf			;0291	3f 	? 
	add a,b			;0292	80 	. 
	nop			;0293	00 	. 
	ld bc,l03ffh		;0294	01 ff 03 	. . . 
	nop			;0297	00 	. 
	inc b			;0298	04 	. 
	ld sp,iy		;0299	fd f9 	. . 
	inc bc			;029b	03 	. 
	cp 0c6h		;029c	fe c6 	. . 
	nop			;029e	00 	. 
	inc b			;029f	04 	. 
	ld h,(hl)			;02a0	66 	f 
	ld h,086h		;02a1	26 86 	& . 
	ccf			;02a3	3f 	? 
	inc hl			;02a4	23 	# 
	nop			;02a5	00 	. 
	inc b			;02a6	04 	. 
	dec l			;02a7	2d 	- 
	add hl,hl			;02a8	29 	) 
	inc hl			;02a9	23 	# 
	nop			;02aa	00 	. 
	ld bc,0fdffh		;02ab	01 ff fd 	. . . 
	ld (bc),a			;02ae	02 	. 
	pop af			;02af	f1 	. 
	add hl,bc			;02b0	09 	. 
	dec e			;02b1	1d 	. 
	push hl			;02b2	e5 	. 
	push bc			;02b3	c5 	. 
	ret po			;02b4	e0 	. 
	rst 28h			;02b5	ef 	. 
	defb 0fdh,0ffh,0fah	;illegal sequence		;02b6	fd ff fa 	. . . 
	cp 01eh		;02b9	fe 1e 	. . 
	xor (hl)			;02bb	ae 	. 
	di			;02bc	f3 	. 
	dec sp			;02bd	3b 	; 
	ld a,a			;02be	7f 	 
	ret nz			;02bf	c0 	. 
	cp a			;02c0	bf 	. 
	sbc a,a			;02c1	9f 	. 
	ret nz			;02c2	c0 	. 
	ld a,a			;02c3	7f 	 
	in a,(0efh)		;02c4	db ef 	. . 
	nop			;02c6	00 	. 
	ld bc,070ffh		;02c7	01 ff 70 	. . p 
	rst 38h			;02ca	ff 	. 
	xor a			;02cb	af 	. 
	ld (hl),b			;02cc	70 	p 
	nop			;02cd	00 	. 
	ld bc,05fffh		;02ce	01 ff 5f 	. . _ 
	cp a			;02d1	bf 	. 
	rst 38h			;02d2	ff 	. 
	rst 38h			;02d3	ff 	. 
	ld h,c			;02d4	61 	a 
	ld e,(hl)			;02d5	5e 	^ 
	rst 38h			;02d6	ff 	. 
	ld e,a			;02d7	5f 	_ 
	defb 0ddh,0dfh,0d7h	;illegal sequence		;02d8	dd df d7 	. . . 
	pop de			;02db	d1 	. 
	adc a,0c7h		;02dc	ce c7 	. . 
	and b			;02de	a0 	. 
	rst 18h			;02df	df 	. 
	ld a,a			;02e0	7f 	 
	cp a			;02e1	bf 	. 
	nop			;02e2	00 	. 
	ld bc,l07ffh		;02e3	01 ff 07 	. . . 
	rst 38h			;02e6	ff 	. 
	jp m,l0007h		;02e7	fa 07 00 	. . . 
	ld bc,0cfffh		;02ea	01 ff cf 	. . . 
	call c,sub_03feh		;02ed	dc fe 03 	. . . 
	ld sp,iy		;02f0	fd f9 	. . 
	inc bc			;02f2	03 	. 
	cp 000h		;02f3	fe 00 	. . 
	ex af,af'			;02f5	08 	. 
	pop af			;02f6	f1 	. 
	nop			;02f7	00 	. 
	ex af,af'			;02f8	08 	. 
	ld (hl),c			;02f9	71 	q 
	nop			;02fa	00 	. 
	ld a,(bc)			;02fb	0a 	. 
	rst 38h			;02fc	ff 	. 
	rst 30h			;02fd	f7 	. 
	di			;02fe	f3 	. 
	ld sp,hl			;02ff	f9 	. 
sub_0300h:
	ret m			;0300	f8 	. 
sub_0301h:
	cp 0ffh		;0301	fe ff 	. . 
	rst 38h			;0303	ff 	. 
	cp 0fch		;0304	fe fc 	. . 
	ret m			;0306	f8 	. 
	pop hl			;0307	e1 	. 
	nop			;0308	00 	. 
	inc bc			;0309	03 	. 
	rst 38h			;030a	ff 	. 
	nop			;030b	00 	. 
	inc bc			;030c	03 	. 
	ld l,a			;030d	6f 	o 
	nop			;030e	00 	. 
	ld bc,0dfffh		;030f	01 ff df 	. . . 
	cp a			;0312	bf 	. 
	ld a,a			;0313	7f 	 
	rst 38h			;0314	ff 	. 
	rst 38h			;0315	ff 	. 
	ld d,0d9h		;0316	16 d9 	. . 
	cp a			;0318	bf 	. 
	ld l,l			;0319	6d 	m 
	rst 38h			;031a	ff 	. 
	jp c,0ffffh		;031b	da ff ff 	. . . 
	ld d,d			;031e	52 	R 
	ld l,e			;031f	6b 	k 
	nop			;0320	00 	. 
	ld bc,029ffh		;0321	01 ff 29 	. . ) 
	rst 38h			;0324	ff 	. 
	ld d,c			;0325	51 	Q 
	nop			;0326	00 	. 
	ld (de),a			;0327	12 	. 
	rst 38h			;0328	ff 	. 
	ex af,af'			;0329	08 	. 
	ld a,(de)			;032a	1a 	. 
	nop			;032b	00 	. 
	ld bc,08affh		;032c	01 ff 8a 	. . . 
	rst 38h			;032f	ff 	. 
	ld b,l			;0330	45 	E 
	rst 38h			;0331	ff 	. 
	rst 38h			;0332	ff 	. 
	inc b			;0333	04 	. 
	ld b,a			;0334	47 	G 
	cp 053h		;0335	fe 53 	. S 
	rst 38h			;0337	ff 	. 
	add hl,hl			;0338	29 	) 
	nop			;0339	00 	. 
	ld bc,0faffh		;033a	01 ff fa 	. . . 
	sbc a,d			;033d	9a 	. 
	ld a,d			;033e	7a 	z 
	ld e,d			;033f	5a 	Z 
	ld a,a			;0340	7f 	 
	ld a,c			;0341	79 	y 
	ld a,l			;0342	7d 	} 
	adc a,a			;0343	8f 	. 
	nop			;0344	00 	. 
	inc b			;0345	04 	. 
	cp d			;0346	ba 	. 
	nop			;0347	00 	. 
	ld bc,l36ffh		;0348	01 ff 36 	. . 6 
	cp e			;034b	bb 	. 
	nop			;034c	00 	. 
	ld bc,0feffh		;034d	01 ff fe 	. . . 
	ld b,000h		;0350	06 00 	. . 
	dec b			;0352	05 	. 
	and 006h		;0353	e6 06 	. . 
	nop			;0355	00 	. 
	ex af,af'			;0356	08 	. 
	ld e,d			;0357	5a 	Z 
	nop			;0358	00 	. 
	inc b			;0359	04 	. 
	xor d			;035a	aa 	. 
	nop			;035b	00 	. 
	ld bc,l24ffh		;035c	01 ff 24 	. . $ 
	ld l,l			;035f	6d 	m 
	nop			;0360	00 	. 
	ld bc,09fffh		;0361	01 ff 9f 	. . . 
	sub e			;0364	93 	. 
	sbc a,l			;0365	9d 	. 
	sub l			;0366	95 	. 
	nop			;0367	00 	. 
	ld bc,093ffh		;0368	01 ff 93 	. . . 
	xor l			;036b	ad 	. 
	di			;036c	f3 	. 
	nop			;036d	00 	. 
	ex af,af'			;036e	08 	. 
	xor l			;036f	ad 	. 
	ccf			;0370	3f 	? 
	jr nz,l0373h		;0371	20 00 	  . 
l0373h:
	dec b			;0373	05 	. 
	cpl			;0374	2f 	/ 
	jr nz,l0377h		;0375	20 00 	  . 
l0377h:
	inc b			;0377	04 	. 
	rst 38h			;0378	ff 	. 
	pop af			;0379	f1 	. 
	ex (sp),hl			;037a	e3 	. 
	rst 0			;037b	c7 	. 
	nop			;037c	00 	. 
	inc bc			;037d	03 	. 
	rst 38h			;037e	ff 	. 
	rst 38h			;037f	ff 	. 
	cp 0ffh		;0380	fe ff 	. . 
	defb 0fdh,0ffh,0fch	;illegal sequence		;0382	fd ff fc 	. . . 
	nop			;0385	00 	. 
	ex af,af'			;0386	08 	. 
	rst 38h			;0387	ff 	. 
	cp 0beh		;0388	fe be 	. . 
	rst 18h			;038a	df 	. 
	nop			;038b	00 	. 
	ld bc,l00fdh+2		;038c	01 ff 00 	. . . 
	inc b			;038f	04 	. 
	rst 28h			;0390	ef 	. 
	cp a			;0391	bf 	. 
	ld a,a			;0392	7f 	 
	nop			;0393	00 	. 
	inc b			;0394	04 	. 
	rst 38h			;0395	ff 	. 
	call m,sub_3f71h		;0396	fc 71 3f 	. q ? 
	sbc a,a			;0399	9f 	. 
	adc a,a			;039a	8f 	. 
	rst 8			;039b	cf 	. 
	rst 38h			;039c	ff 	. 
	rst 20h			;039d	e7 	. 
	rst 38h			;039e	ff 	. 
	ex (sp),hl			;039f	e3 	. 
	inc bc			;03a0	03 	. 
	rrca			;03a1	0f 	. 
	dec de			;03a2	1b 	. 
	rst 30h			;03a3	f7 	. 
	rst 38h			;03a4	ff 	. 
	rst 28h			;03a5	ef 	. 
	rst 38h			;03a6	ff 	. 
	rst 18h			;03a7	df 	. 
	rst 20h			;03a8	e7 	. 
	rst 0			;03a9	c7 	. 
	sbc a,a			;03aa	9f 	. 
	ld a,a			;03ab	7f 	 
	nop			;03ac	00 	. 
	ld bc,0c7ffh		;03ad	01 ff c7 	. . . 
	ex (sp),hl			;03b0	e3 	. 
	pop hl			;03b1	e1 	. 
	nop			;03b2	00 	. 
	ld bc,0e4ffh		;03b3	01 ff e4 	. . . 
	ret po			;03b6	e0 	. 
	pop hl			;03b7	e1 	. 
	ex (sp),hl			;03b8	e3 	. 
	pop hl			;03b9	e1 	. 
	ex (sp),hl			;03ba	e3 	. 
	pop hl			;03bb	e1 	. 
	nop			;03bc	00 	. 
	ld b,07fh		;03bd	06 7f 	.  
	rst 38h			;03bf	ff 	. 
	ld e,a			;03c0	5f 	_ 
	nop			;03c1	00 	. 
	inc bc			;03c2	03 	. 
	ex (sp),hl			;03c3	e3 	. 
	ret po			;03c4	e0 	. 
	ex (sp),hl			;03c5	e3 	. 
	nop			;03c6	00 	. 
	inc bc			;03c7	03 	. 
	pop hl			;03c8	e1 	. 
	rst 38h			;03c9	ff 	. 
	ld c,a			;03ca	4f 	O 
	nop			;03cb	00 	. 
	ld b,07fh		;03cc	06 7f 	.  
	di			;03ce	f3 	. 
	nop			;03cf	00 	. 
	ld bc,l03ffh		;03d0	01 ff 03 	. . . 
	rra			;03d3	1f 	. 
	ld a,a			;03d4	7f 	 
	nop			;03d5	00 	. 
	inc bc			;03d6	03 	. 
	rst 38h			;03d7	ff 	. 
	nop			;03d8	00 	. 
	ex af,af'			;03d9	08 	. 
	ld a,a			;03da	7f 	 
	ret nz			;03db	c0 	. 
	jp 0c7c1h		;03dc	c3 c1 c7 	. . . 
	jp 0c3c1h		;03df	c3 c1 c3 	. . . 
	pop bc			;03e2	c1 	. 
	ccf			;03e3	3f 	? 
	dec a			;03e4	3d 	= 
	scf			;03e5	37 	7 
	nop			;03e6	00 	. 
	dec b			;03e7	05 	. 
	ccf			;03e8	3f 	? 
	add a,e			;03e9	83 	. 
	adc a,a			;03ea	8f 	. 
	add a,c			;03eb	81 	. 
	nop			;03ec	00 	. 
	inc bc			;03ed	03 	. 
	add a,a			;03ee	87 	. 
	add a,e			;03ef	83 	. 
	adc a,a			;03f0	8f 	. 
	nop			;03f1	00 	. 
	ex af,af'			;03f2	08 	. 
	ccf			;03f3	3f 	? 
	add a,e			;03f4	83 	. 
	add a,a			;03f5	87 	. 
	add a,c			;03f6	81 	. 
	add a,l			;03f7	85 	. 
	inc bc			;03f8	03 	. 
	rst 8			;03f9	cf 	. 
	rst 38h			;03fa	ff 	. 
	rst 38h			;03fb	ff 	. 
	nop			;03fc	00 	. 
	inc bc			;03fd	03 	. 
sub_03feh:
	ccf			;03fe	3f 	? 
l03ffh:
	cp a			;03ff	bf 	. 
l0400h:
	ccf			;0400	3f 	? 
	cp a			;0401	bf 	. 
	rst 38h			;0402	ff 	. 
	rst 38h			;0403	ff 	. 
	ld bc,l33c1h		;0404	01 c1 33 	. . 3 
	set 4,a		;0407	cb e7 	. . 
	rst 0			;0409	c7 	. 
	rst 38h			;040a	ff 	. 
	ex (sp),hl			;040b	e3 	. 
	ccf			;040c	3f 	? 
	dec a			;040d	3d 	= 
	add hl,sp			;040e	39 	9 
	ld (hl),e			;040f	73 	s 
	ld a,a			;0410	7f 	 
	nop			;0411	00 	. 
	inc bc			;0412	03 	. 
	rst 38h			;0413	ff 	. 
	nop			;0414	00 	. 
	inc bc			;0415	03 	. 
	ex (sp),hl			;0416	e3 	. 
	ld h,e			;0417	63 	c 
	ld b,e			;0418	43 	C 
	rst 0			;0419	c7 	. 
	rst 8			;041a	cf 	. 
	rra			;041b	1f 	. 
	nop			;041c	00 	. 
	add hl,bc			;041d	09 	. 
	rst 38h			;041e	ff 	. 
	rst 38h			;041f	ff 	. 
	cp 0fah		;0420	fe fa 	. . 
	call m,0f8f0h		;0422	fc f0 f8 	. . . 
	add a,c			;0425	81 	. 
	defb 0ddh,0fdh,0f5h	;illegal sequence		;0426	dd fd f5 	. . . 
	push bc			;0429	c5 	. 
	add hl,sp			;042a	39 	9 
	pop af			;042b	f1 	. 
	ld (bc),a			;042c	02 	. 
	defb 0fdh,000h,005h	;illegal sequence		;042d	fd 00 05 	. . . 
	rst 38h			;0430	ff 	. 
	rst 20h			;0431	e7 	. 
	rst 8			;0432	cf 	. 
	rst 18h			;0433	df 	. 
	rst 8			;0434	cf 	. 
	rst 20h			;0435	e7 	. 
	nop			;0436	00 	. 
	ld b,0ffh		;0437	06 ff 	. . 
	adc a,a			;0439	8f 	. 
	nop			;043a	00 	. 
	inc bc			;043b	03 	. 
	add a,a			;043c	87 	. 
	nop			;043d	00 	. 
	inc b			;043e	04 	. 
	adc a,a			;043f	8f 	. 
	nop			;0440	00 	. 
	inc bc			;0441	03 	. 
	add a,a			;0442	87 	. 
	ld h,a			;0443	67 	g 
	nop			;0444	00 	. 
	inc bc			;0445	03 	. 
	ld (hl),a			;0446	77 	w 
	ld h,a			;0447	67 	g 
	cp 0bbh		;0448	fe bb 	. . 
	sbc a,a			;044a	9f 	. 
	adc a,a			;044b	8f 	. 
	add a,d			;044c	82 	. 
	rst 38h			;044d	ff 	. 
	adc a,a			;044e	8f 	. 
	nop			;044f	00 	. 
	ld bc,l0fffh		;0450	01 ff 0f 	. . . 
	nop			;0453	00 	. 
	ld bc,0f7ffh		;0454	01 ff f7 	. . . 
	rst 0			;0457	c7 	. 
	rlca			;0458	07 	. 
	add a,a			;0459	87 	. 
	adc a,a			;045a	8f 	. 
	nop			;045b	00 	. 
	ld bc,l00fdh+2		;045c	01 ff 00 	. . . 
	inc bc			;045f	03 	. 
	add a,e			;0460	83 	. 
	rst 38h			;0461	ff 	. 
	or e			;0462	b3 	. 
	sbc a,a			;0463	9f 	. 
	adc a,a			;0464	8f 	. 
	jp 0ffefh		;0465	c3 ef ff 	. . . 
	rst 20h			;0468	e7 	. 
	ex de,hl			;0469	eb 	. 
	ei			;046a	fb 	. 
	rst 20h			;046b	e7 	. 
	rlca			;046c	07 	. 
	rst 20h			;046d	e7 	. 
	ret nz			;046e	c0 	. 
	adc a,a			;046f	8f 	. 
	sub l			;0470	95 	. 
	rst 18h			;0471	df 	. 
	push de			;0472	d5 	. 
	adc a,a			;0473	8f 	. 
	add a,a			;0474	87 	. 
	nop			;0475	00 	. 
	ld bc,077ffh		;0476	01 ff 77 	. . w 
	rst 30h			;0479	f7 	. 
	xor a			;047a	af 	. 
	nop			;047b	00 	. 
	ld bc,0afffh		;047c	01 ff af 	. . . 
	rst 30h			;047f	f7 	. 
	adc a,a			;0480	8f 	. 
	rst 38h			;0481	ff 	. 
	rst 38h			;0482	ff 	. 
	ret m			;0483	f8 	. 
	ret po			;0484	e0 	. 
	nop			;0485	00 	. 
	inc bc			;0486	03 	. 
	ret nz			;0487	c0 	. 
	ret po			;0488	e0 	. 
	ret p			;0489	f0 	. 
	cp 0f8h		;048a	fe f8 	. . 
	jr nc,l049eh		;048c	30 10 	0 . 
	ex af,af'			;048e	08 	. 
	djnz $+1		;048f	10 ff 	. . 
	nop			;0491	00 	. 
	ret z			;0492	c8 	. 
	add a,b			;0493	80 	. 
	rst 38h			;0494	ff 	. 
	nop			;0495	00 	. 
	rst 38h			;0496	ff 	. 
	add a,b			;0497	80 	. 
	ret p			;0498	f0 	. 
l0499h:
	nop			;0499	00 	. 
	ld bc,l00fdh+2		;049a	01 ff 00 	. . . 
	dec b			;049d	05 	. 
l049eh:
	nop			;049e	00 	. 
	jr nz,l0499h		;049f	20 f8 	  . 
	nop			;04a1	00 	. 
	ld bc,l00fdh+2		;04a2	01 ff 00 	. . . 
	ex af,af'			;04a5	08 	. 
	nop			;04a6	00 	. 
	nop			;04a7	00 	. 
	ld bc,l0fffh		;04a8	01 ff 0f 	. . . 
	inc bc			;04ab	03 	. 
	ld b,000h		;04ac	06 00 	. . 
	inc bc			;04ae	03 	. 
	inc b			;04af	04 	. 
	ld (bc),a			;04b0	02 	. 
	nop			;04b1	00 	. 
	inc b			;04b2	04 	. 
	nop			;04b3	00 	. 
	rst 38h			;04b4	ff 	. 
	djnz l04d7h		;04b5	10 20 	.   
	adc a,000h		;04b7	ce 00 	. . 
	ld b,000h		;04b9	06 00 	. . 
	ld bc,l000fh		;04bb	01 0f 00 	. . . 
	ld bc,0f8ffh		;04be	01 ff f8 	. . . 
	add a,b			;04c1	80 	. 
	nop			;04c2	00 	. 
	dec b			;04c3	05 	. 
	nop			;04c4	00 	. 
	nop			;04c5	00 	. 
	ld bc,07fffh		;04c6	01 ff 7f 	. .  
	nop			;04c9	00 	. 
	inc bc			;04ca	03 	. 
	rra			;04cb	1f 	. 
	inc hl			;04cc	23 	# 
	ld bc,00600h		;04cd	01 00 06 	. . . 
	nop			;04d0	00 	. 
	ld b,b			;04d1	40 	@ 
	ret po			;04d2	e0 	. 
	ret m			;04d3	f8 	. 
	nop			;04d4	00 	. 
	inc b			;04d5	04 	. 
	nop			;04d6	00 	. 
l04d7h:
	ld (bc),a			;04d7	02 	. 
	add hl,bc			;04d8	09 	. 
	inc sp			;04d9	33 	3 
	rst 38h			;04da	ff 	. 
	rst 38h			;04db	ff 	. 
	rst 0			;04dc	c7 	. 
	rst 30h			;04dd	f7 	. 
	defb 0fdh,000h,005h	;illegal sequence		;04de	fd 00 05 	. . . 
	rst 38h			;04e1	ff 	. 
	add a,c			;04e2	81 	. 
	nop			;04e3	00 	. 
	ld bc,0e1ffh		;04e4	01 ff e1 	. . . 
	ld a,a			;04e7	7f 	 
	exx			;04e8	d9 	. 
	nop			;04e9	00 	. 
	inc bc			;04ea	03 	. 
	rst 38h			;04eb	ff 	. 
	ld b,b			;04ec	40 	@ 
	nop			;04ed	00 	. 
	ld bc,l30ffh		;04ee	01 ff 30 	. . 0 
	cp 01fh		;04f1	fe 1f 	. . 
	nop			;04f3	00 	. 
sub_04f4h:
	inc bc			;04f4	03 	. 
	rst 38h			;04f5	ff 	. 
	rlca			;04f6	07 	. 
	nop			;04f7	00 	. 
	ld bc,07fffh		;04f8	01 ff 7f 	. .  
	nop			;04fb	00 	. 
	inc b			;04fc	04 	. 
	rst 38h			;04fd	ff 	. 
	push de			;04fe	d5 	. 
l04ffh:
	nop			;04ff	00 	. 
l0500h:
	ld bc,0ffffh		;0500	01 ff ff 	. . . 
	sub d			;0503	92 	. 
	nop			;0504	00 	. 
	ld bc,0e0ffh		;0505	01 ff e0 	. . . 
	nop			;0508	00 	. 
	ld bc,0c1ffh		;0509	01 ff c1 	. . . 
	ld (hl),a			;050c	77 	w 
	nop			;050d	00 	. 
	ld bc,0ffffh		;050e	01 ff ff 	. . . 
	rst 28h			;0511	ef 	. 
	nop			;0512	00 	. 
	ld bc,0cfffh		;0513	01 ff cf 	. . . 
	nop			;0516	00 	. 
	ld bc,0bfffh		;0517	01 ff bf 	. . . 
	pop af			;051a	f1 	. 
	cp l			;051b	bd 	. 
	nop			;051c	00 	. 
	ld b,0ffh		;051d	06 ff 	. . 
	add a,a			;051f	87 	. 
	rst 38h			;0520	ff 	. 
	add a,e			;0521	83 	. 
	adc a,a			;0522	8f 	. 
	add a,e			;0523	83 	. 
	add a,a			;0524	87 	. 
	rst 38h			;0525	ff 	. 
	add a,e			;0526	83 	. 
	nop			;0527	00 	. 
	inc bc			;0528	03 	. 
	add a,a			;0529	87 	. 
	cp 0bfh		;052a	fe bf 	. . 
	cp d			;052c	ba 	. 
	cp (hl)			;052d	be 	. 
	sbc a,(hl)			;052e	9e 	. 
	add a,a			;052f	87 	. 
	rra			;0530	1f 	. 
	ld h,a			;0531	67 	g 
	ld a,a			;0532	7f 	 
	nop			;0533	00 	. 
	ld bc,077ffh		;0534	01 ff 77 	. . w 
	ccf			;0537	3f 	? 
	rlca			;0538	07 	. 
	add a,(hl)			;0539	86 	. 
	nop			;053a	00 	. 
	inc bc			;053b	03 	. 
	add a,a			;053c	87 	. 
l053dh:
	add a,e			;053d	83 	. 
	add a,b			;053e	80 	. 
	adc a,a			;053f	8f 	. 
	nop			;0540	00 	. 
	ld bc,l07ffh		;0541	01 ff 07 	. . . 
	add a,a			;0544	87 	. 
	rst 0			;0545	c7 	. 
	sub a			;0546	97 	. 
	rlca			;0547	07 	. 
	add a,a			;0548	87 	. 
	rst 8			;0549	cf 	. 
	nop			;054a	00 	. 
	ld bc,0ffffh		;054b	01 ff ff 	. . . 
	add a,e			;054e	83 	. 
	sbc a,c			;054f	99 	. 
	or b			;0550	b0 	. 
	cp h			;0551	bc 	. 
	cp a			;0552	bf 	. 
	sub a			;0553	97 	. 
	sbc a,a			;0554	9f 	. 
	rst 28h			;0555	ef 	. 
	rst 20h			;0556	e7 	. 
	rst 0			;0557	c7 	. 
	inc bc			;0558	03 	. 
	inc sp			;0559	33 	3 
	di			;055a	f3 	. 
	rst 20h			;055b	e7 	. 
	nop			;055c	00 	. 
	ld bc,0bfffh		;055d	01 ff bf 	. . . 
	cp b			;0560	b8 	. 
	rst 38h			;0561	ff 	. 
	cp a			;0562	bf 	. 
	sbc a,a			;0563	9f 	. 
	add a,a			;0564	87 	. 
	add a,e			;0565	83 	. 
	rst 38h			;0566	ff 	. 
	rst 38h			;0567	ff 	. 
	sbc a,a			;0568	9f 	. 
	nop			;0569	00 	. 
	inc bc			;056a	03 	. 
	rst 38h			;056b	ff 	. 
	rst 20h			;056c	e7 	. 
	rst 8			;056d	cf 	. 
	nop			;056e	00 	. 
	ld bc,l00fdh+2		;056f	01 ff 00 	. . . 
	ex af,af'			;0572	08 	. 
	push bc			;0573	c5 	. 
	nop			;0574	00 	. 
	nop			;0575	00 	. 
	rst 38h			;0576	ff 	. 
	nop			;0577	00 	. 
	ld bc,06f1fh		;0578	01 1f 6f 	. . o 
	push af			;057b	f5 	. 
	cp a			;057c	bf 	. 
	xor 000h		;057d	ee 00 	. . 
	ld bc,0fcffh		;057f	01 ff fc 	. . . 
	ret po			;0582	e0 	. 
	adc a,b			;0583	88 	. 
	jr l05f6h		;0584	18 70 	. p 
	jr nz,l0588h		;0586	20 00 	  . 
l0588h:
	ld bc,05900h		;0588	01 00 59 	. . Y 
	call z,0d62bh		;058b	cc 2b d6 	. + . 
	ld l,c			;058e	69 	i 
	sub l			;058f	95 	. 
	jp pe,000a5h		;0590	ea a5 00 	. . . 
	inc b			;0593	04 	. 
	nop			;0594	00 	. 
	ld bc,0ad07h		;0595	01 07 ad 	. . . 
	ld e,a			;0598	5f 	_ 
	nop			;0599	00 	. 
	ld bc,0f3ffh		;059a	01 ff f3 	. . . 
l059dh:
	ret nz			;059d	c0 	. 
	nop			;059e	00 	. 
	dec b			;059f	05 	. 
	nop			;05a0	00 	. 
	rst 38h			;05a1	ff 	. 
	rst 38h			;05a2	ff 	. 
	call m,l0500h		;05a3	fc 00 05 	. . . 
	nop			;05a6	00 	. 
	rst 38h			;05a7	ff 	. 
	rst 38h			;05a8	ff 	. 
	ld a,(hl)			;05a9	7e 	~ 
	jr l05ach		;05aa	18 00 	. . 
l05ach:
	inc b			;05ac	04 	. 
	nop			;05ad	00 	. 
	rst 38h			;05ae	ff 	. 
	rst 38h			;05af	ff 	. 
	ld (hl),e			;05b0	73 	s 
	ld bc,l0400h		;05b1	01 00 04 	. . . 
	nop			;05b4	00 	. 
	nop			;05b5	00 	. 
	ld bc,l3fffh		;05b6	01 ff 3f 	. . ? 
	rlca			;05b9	07 	. 
	ld de,l0e18h		;05ba	11 18 0e 	. . . 
	inc b			;05bd	04 	. 
	nop			;05be	00 	. 
	dec c			;05bf	0d 	. 
	nop			;05c0	00 	. 
	add a,b			;05c1	80 	. 
	ret po			;05c2	e0 	. 
	or l			;05c3	b5 	. 
	jp m,040c0h		;05c4	fa c0 40 	. . @ 
	jr nz,l059dh		;05c7	20 d4 	  . 
	dec l			;05c9	2d 	- 
	rst 30h			;05ca	f7 	. 
	xor l			;05cb	ad 	. 
	ld e,a			;05cc	5f 	_ 
	ld c,(hl)			;05cd	4e 	N 
	ld b,(hl)			;05ce	46 	F 
	ld e,(hl)			;05cf	5e 	^ 
	ld b,(hl)			;05d0	46 	F 
	adc a,0ffh		;05d1	ce ff 	. . 
	add a,(hl)			;05d3	86 	. 
	sbc a,(hl)			;05d4	9e 	. 
	adc a,a			;05d5	8f 	. 
	add a,e			;05d6	83 	. 
	add a,a			;05d7	87 	. 
	sbc a,a			;05d8	9f 	. 
	add a,e			;05d9	83 	. 
	adc a,a			;05da	8f 	. 
	rst 38h			;05db	ff 	. 
	add a,e			;05dc	83 	. 
	nop			;05dd	00 	. 
	ld bc,0fcffh		;05de	01 ff fc 	. . . 
	ret po			;05e1	e0 	. 
	adc a,b			;05e2	88 	. 
	jr l0655h		;05e3	18 70 	. p 
	jr nz,l05e7h		;05e5	20 00 	  . 
l05e7h:
	ld bc,l0000h		;05e7	01 00 00 	. . . 
	ld bc,l3fffh		;05ea	01 ff 3f 	. . ? 
	rlca			;05ed	07 	. 
	ld de,l0e18h		;05ee	11 18 0e 	. . . 
	inc b			;05f1	04 	. 
	nop			;05f2	00 	. 
	ld bc,04000h		;05f3	01 00 40 	. . @ 
l05f6h:
	ld a,a			;05f6	7f 	 
	ld b,b			;05f7	40 	@ 
	ccf			;05f8	3f 	? 
	ld a,a			;05f9	7f 	 
	sub d			;05fa	92 	. 
	nop			;05fb	00 	. 
	ld bc,092ffh		;05fc	01 ff 92 	. . . 
	ld a,(0fafeh)		;05ff	3a fe fa 	: . . 
l0602h:
	call m,0f9feh		;0602	fc fe f9 	. . . 
	nop			;0605	00 	. 
	ld bc,0f9ffh		;0606	01 ff f9 	. . . 
	rst 38h			;0609	ff 	. 
	sub d			;060a	92 	. 
	jp p,l0500h		;060b	f2 00 05 	. . . 
	rst 38h			;060e	ff 	. 
	defb 0fdh,0bdh	;cp iyl		;060f	fd bd 	. . 
	rst 38h			;0611	ff 	. 
	defb 0fdh,0efh,0feh	;illegal sequence		;0612	fd ef fe 	. . . 
	rst 38h			;0615	ff 	. 
	rst 38h			;0616	ff 	. 
	ret m			;0617	f8 	. 
	rst 38h			;0618	ff 	. 
	ld a,h			;0619	7c 	| 
	inc a			;061a	3c 	< 
	jr c,$+1		;061b	38 ff 	8 . 
	ld a,b			;061d	78 	x 
	call m,sub_0a00h		;061e	fc 00 0a 	. . . 
	rst 38h			;0621	ff 	. 
	ret po			;0622	e0 	. 
	rst 8			;0623	cf 	. 
	nop			;0624	00 	. 
	inc b			;0625	04 	. 
	rst 18h			;0626	df 	. 
	nop			;0627	00 	. 
	ex af,af'			;0628	08 	. 
	rst 38h			;0629	ff 	. 
	rst 10h			;062a	d7 	. 
	call 0ddffh		;062b	cd ff dd 	. . . 
	sbc a,09fh		;062e	de 9f 	. . 
	rst 38h			;0630	ff 	. 
	adc a,a			;0631	8f 	. 
	nop			;0632	00 	. 
	ld bc,0e4ffh		;0633	01 ff e4 	. . . 
	and b			;0636	a0 	. 
	ld hl,0a1a7h		;0637	21 a7 a1 	! . . 
	and a			;063a	a7 	. 
	and c			;063b	a1 	. 
	rst 8			;063c	cf 	. 
	rst 38h			;063d	ff 	. 
	ld b,a			;063e	47 	G 
	ld h,b			;063f	60 	` 
	ld (hl),b			;0640	70 	p 
	ld e,b			;0641	58 	X 
	ld c,h			;0642	4c 	L 
	ld b,a			;0643	47 	G 
	ex (sp),hl			;0644	e3 	. 
	and a			;0645	a7 	. 
	and e			;0646	a3 	. 
	jr nz,l066ch		;0647	20 23 	  # 
	rst 38h			;0649	ff 	. 
	ld hl,l00e1h		;064a	21 e1 00 	! . . 
	ld bc,sub_0300h		;064d	01 00 03 	. . . 
	ld e,0ffh		;0650	1e ff 	. . 
	call m,0f0f8h		;0652	fc f8 f0 	. . . 
l0655h:
	call m,sub_0301h		;0655	fc 01 03 	. . . 
	ld c,01eh		;0658	0e 1e 	. . 
	rst 38h			;065a	ff 	. 
	ccf			;065b	3f 	? 
	ld a,a			;065c	7f 	 
	rra			;065d	1f 	. 
	cp 000h		;065e	fe 00 	. . 
	ld bc,0feffh		;0660	01 ff fe 	. . . 
	nop			;0663	00 	. 
	inc b			;0664	04 	. 
	call m,0fff8h		;0665	fc f8 ff 	. . . 
	ccf			;0668	3f 	? 
	nop			;0669	00 	. 
	inc bc			;066a	03 	. 
	ld a,a			;066b	7f 	 
l066ch:
	rst 38h			;066c	ff 	. 
	rst 38h			;066d	ff 	. 
	ld a,a			;066e	7f 	 
	rst 38h			;066f	ff 	. 
	nop			;0670	00 	. 
	ex af,af'			;0671	08 	. 
	jr l06e4h		;0672	18 70 	. p 
	jr nz,l0676h		;0674	20 00 	  . 
l0676h:
	dec b			;0676	05 	. 
	nop			;0677	00 	. 
	ld bc,l0800h		;0678	01 00 08 	. . . 
	nop			;067b	00 	. 
	ld bc,0ad07h		;067c	01 07 ad 	. . . 
	ld e,a			;067f	5f 	_ 
	nop			;0680	00 	. 
	inc b			;0681	04 	. 
	nop			;0682	00 	. 
	ld b,b			;0683	40 	@ 
	call p,0eebfh		;0684	f4 bf ee 	. . . 
	nop			;0687	00 	. 
	ex af,af'			;0688	08 	. 
	adc a,e			;0689	8b 	. 
	nop			;068a	00 	. 
	ex af,af'			;068b	08 	. 
	rst 38h			;068c	ff 	. 
	nop			;068d	00 	. 
	dec b			;068e	05 	. 
	adc a,e			;068f	8b 	. 
	rst 8			;0690	cf 	. 
	nop			;0691	00 	. 
	ld (de),a			;0692	12 	. 
	rst 38h			;0693	ff 	. 
	nop			;0694	00 	. 
	ex af,af'			;0695	08 	. 
	nop			;0696	00 	. 
	nop			;0697	00 	. 
	djnz $+1		;0698	10 ff 	. . 
	nop			;069a	00 	. 
	ex af,af'			;069b	08 	. 
	ret m			;069c	f8 	. 
	nop			;069d	00 	. 
	ex af,af'			;069e	08 	. 
	ld (sub_0300h),hl		;069f	22 00 03 	" . . 
	ret po			;06a2	e0 	. 
	ret pe			;06a3	e8 	. 
	call pe,0f6eeh		;06a4	ec ee f6 	. . . 
	jp p,l0800h		;06a7	f2 00 08 	. . . 
	ld b,l			;06aa	45 	E 
	nop			;06ab	00 	. 
	ex af,af'			;06ac	08 	. 
	rst 38h			;06ad	ff 	. 
	nop			;06ae	00 	. 
	ex af,af'			;06af	08 	. 
	ret m			;06b0	f8 	. 
	nop			;06b1	00 	. 
	ex af,af'			;06b2	08 	. 
	rst 38h			;06b3	ff 	. 
	nop			;06b4	00 	. 
	ex af,af'			;06b5	08 	. 
	call m,l0800h		;06b6	fc 00 08 	. . . 
	ret p			;06b9	f0 	. 
	rlca			;06ba	07 	. 
	rra			;06bb	1f 	. 
	ld a,a			;06bc	7f 	 
	nop			;06bd	00 	. 
	dec b			;06be	05 	. 
	rst 38h			;06bf	ff 	. 
l06c0h:
	rst 38h			;06c0	ff 	. 
	ret p			;06c1	f0 	. 
	call m,0fffeh		;06c2	fc fe ff 	. . . 
	rst 38h			;06c5	ff 	. 
	cp 0fch		;06c6	fe fc 	. . 
	ei			;06c8	fb 	. 
	rst 38h			;06c9	ff 	. 
	ret p			;06ca	f0 	. 
	rst 38h			;06cb	ff 	. 
	ret nc			;06cc	d0 	. 
	rst 38h			;06cd	ff 	. 
	djnz l06c0h		;06ce	10 f0 	. . 
	nop			;06d0	00 	. 
	ex af,af'			;06d1	08 	. 
	rst 38h			;06d2	ff 	. 
	ret m			;06d3	f8 	. 
	cp 000h		;06d4	fe 00 	. . 
	ld b,0ffh		;06d6	06 ff 	. . 
	rst 8			;06d8	cf 	. 
	add a,(hl)			;06d9	86 	. 
	rst 38h			;06da	ff 	. 
	nop			;06db	00 	. 
	inc a			;06dc	3c 	< 
	nop			;06dd	00 	. 
	inc bc			;06de	03 	. 
	cp a			;06df	bf 	. 
	ccf			;06e0	3f 	? 
	rra			;06e1	1f 	. 
	inc e			;06e2	1c 	. 
	nop			;06e3	00 	. 
l06e4h:
	inc bc			;06e4	03 	. 
	djnz $+1		;06e5	10 ff 	. . 
	ret p			;06e7	f0 	. 
	rst 38h			;06e8	ff 	. 
	nop			;06e9	00 	. 
	add a,b			;06ea	80 	. 
	nop			;06eb	00 	. 
	dec b			;06ec	05 	. 
	rst 38h			;06ed	ff 	. 
	defb 0fdh,091h,081h	;illegal sequence		;06ee	fd 91 81 	. . . 
	add a,e			;06f1	83 	. 
	adc a,a			;06f2	8f 	. 
	add a,e			;06f3	83 	. 
	add a,a			;06f4	87 	. 
	add a,e			;06f5	83 	. 
	rst 38h			;06f6	ff 	. 
	rst 38h			;06f7	ff 	. 
	ld a,a			;06f8	7f 	 
	nop			;06f9	00 	. 
	dec b			;06fa	05 	. 
	nop			;06fb	00 	. 
	nop			;06fc	00 	. 
	ld bc,0f8ffh		;06fd	01 ff f8 	. . . 
l0700h:
	add a,b			;0700	80 	. 
sub_0701h:
	nop			;0701	00 	. 
	dec b			;0702	05 	. 
l0703h:
	nop			;0703	00 	. 
	nop			;0704	00 	. 
	ld bc,07cffh		;0705	01 ff 7c 	. . | 
	di			;0708	f3 	. 
	rst 20h			;0709	e7 	. 
	rst 8			;070a	cf 	. 
	sbc a,a			;070b	9f 	. 
	rra			;070c	1f 	. 
	ccf			;070d	3f 	? 
	nop			;070e	00 	. 
	add hl,bc			;070f	09 	. 
	rst 38h			;0710	ff 	. 
	ccf			;0711	3f 	? 
	rra			;0712	1f 	. 
	rst 38h			;0713	ff 	. 
	ccf			;0714	3f 	? 
	rra			;0715	1f 	. 
	rst 38h			;0716	ff 	. 
	ccf			;0717	3f 	? 
	nop			;0718	00 	. 
l0719h:
	ld de,01fffh		;0719	11 ff 1f 	. . . 
	rst 8			;071c	cf 	. 
	rst 20h			;071d	e7 	. 
	di			;071e	f3 	. 
	ei			;071f	fb 	. 
	ld sp,hl			;0720	f9 	. 
	defb 0fdh,000h,009h	;illegal sequence		;0721	fd 00 09 	. . . 
	rst 38h			;0724	ff 	. 
	call m,0fff8h		;0725	fc f8 ff 	. . . 
	call m,0fff8h		;0728	fc f8 ff 	. . . 
	call m,l0100h		;072b	fc 00 01 	. . . 
	rst 38h			;072e	ff 	. 
	rst 30h			;072f	f7 	. 
	exx			;0730	d9 	. 
	rst 30h			;0731	f7 	. 
	rst 38h			;0732	ff 	. 
	or a			;0733	b7 	. 
	ld a,e			;0734	7b 	{ 
	sbc a,c			;0735	99 	. 
	rst 8			;0736	cf 	. 
	rst 38h			;0737	ff 	. 
	rst 38h			;0738	ff 	. 
	ex de,hl			;0739	eb 	. 
	rst 18h			;073a	df 	. 
	nop			;073b	00 	. 
	ld bc,0bfffh		;073c	01 ff bf 	. . . 
	rst 28h			;073f	ef 	. 
	nop			;0740	00 	. 
	ld bc,0f6ffh		;0741	01 ff f6 	. . . 
	ei			;0744	fb 	. 
	ld a,a			;0745	7f 	 
	rst 38h			;0746	ff 	. 
	sbc a,d			;0747	9a 	. 
	jp c,0bf1ah		;0748	da 1a bf 	. . . 
	nop			;074b	00 	. 
	ld bc,07fffh		;074c	01 ff 7f 	. .  
	nop			;074f	00 	. 
	ld bc,l00fdh+2		;0750	01 ff 00 	. . . 
	inc b			;0753	04 	. 
	cp e			;0754	bb 	. 
	cp 000h		;0755	fe 00 	. . 
	ld bc,0fcffh		;0757	01 ff fc 	. . . 
	rst 10h			;075a	d7 	. 
	rst 38h			;075b	ff 	. 
	rst 28h			;075c	ef 	. 
	rst 20h			;075d	e7 	. 
	rst 28h			;075e	ef 	. 
	cp a			;075f	bf 	. 
	nop			;0760	00 	. 
	ld bc,0d7ffh		;0761	01 ff d7 	. . . 
	nop			;0764	00 	. 
	inc bc			;0765	03 	. 
	cp e			;0766	bb 	. 
	or a			;0767	b7 	. 
	ld (hl),e			;0768	73 	s 
	rst 18h			;0769	df 	. 
	nop			;076a	00 	. 
	inc bc			;076b	03 	. 
	rst 38h			;076c	ff 	. 
	nop			;076d	00 	. 
	inc b			;076e	04 	. 
	cp e			;076f	bb 	. 
	nop			;0770	00 	. 
	ld bc,07fffh		;0771	01 ff 7f 	. .  
	rst 30h			;0774	f7 	. 
	cp 0b9h		;0775	fe b9 	. . 
	or e			;0777	b3 	. 
	or a			;0778	b7 	. 
	or b			;0779	b0 	. 
	nop			;077a	00 	. 
	ld bc,0ffffh		;077b	01 ff ff 	. . . 
	defb 0edh;next byte illegal after ed		;077e	ed 	. 
	ld a,a			;077f	7f 	 
	scf			;0780	37 	7 
	or a			;0781	b7 	. 
	cp e			;0782	bb 	. 
	sbc a,a			;0783	9f 	. 
	nop			;0784	00 	. 
	ld bc,0ffffh		;0785	01 ff ff 	. . . 
	ld l,l			;0788	6d 	m 
	nop			;0789	00 	. 
	ld bc,0ffffh		;078a	01 ff ff 	. . . 
	cp l			;078d	bd 	. 
	sbc a,0ffh		;078e	de ff 	. . 
	rst 38h			;0790	ff 	. 
	or h			;0791	b4 	. 
	in a,(0b3h)		;0792	db b3 	. . 
	scf			;0794	37 	7 
	nop			;0795	00 	. 
	inc bc			;0796	03 	. 
	ld h,a			;0797	67 	g 
	jp m,0b179h		;0798	fa 79 b1 	. y . 
	in a,(0fbh)		;079b	db fb 	. . 
	di			;079d	f3 	. 
	or 0f7h		;079e	f6 f7 	. . 
	nop			;07a0	00 	. 
	ld bc,0ffffh		;07a1	01 ff ff 	. . . 
	xor 000h		;07a4	ee 00 	. . 
	ld bc,l00fdh+2		;07a6	01 ff 00 	. . . 
	inc bc			;07a9	03 	. 
	rst 30h			;07aa	f7 	. 
	rst 38h			;07ab	ff 	. 
	rst 38h			;07ac	ff 	. 
	rst 38h			;07ad	ff 	. 
	rst 28h			;07ae	ef 	. 
	nop			;07af	00 	. 
	ld bc,0ffffh		;07b0	01 ff ff 	. . . 
	jp c,075bah		;07b3	da ba 75 	. . u 
	rlca			;07b6	07 	. 
	push af			;07b7	f5 	. 
	rst 38h			;07b8	ff 	. 
	ld sp,hl			;07b9	f9 	. 
	push af			;07ba	f5 	. 
	nop			;07bb	00 	. 
	ld bc,0edffh		;07bc	01 ff ed 	. . . 
	push af			;07bf	f5 	. 
	nop			;07c0	00 	. 
	ld bc,0dbffh		;07c1	01 ff db 	. . . 
	cp a			;07c4	bf 	. 
	ld a,e			;07c5	7b 	{ 
	ld a,d			;07c6	7a 	z 
	cp l			;07c7	bd 	. 
	sbc a,l			;07c8	9d 	. 
	call c,l0100h		;07c9	dc 00 01 	. . . 
	rst 38h			;07cc	ff 	. 
	cp a			;07cd	bf 	. 
	nop			;07ce	00 	. 
	inc b			;07cf	04 	. 
	ld a,a			;07d0	7f 	 
	ccf			;07d1	3f 	? 
	add a,b			;07d2	80 	. 
	nop			;07d3	00 	. 
	ld b,0ffh		;07d4	06 ff 	. . 
	ld sp,hl			;07d6	f9 	. 
	inc bc			;07d7	03 	. 
	cp 0f6h		;07d8	fe f6 	. . 
	nop			;07da	00 	. 
	inc b			;07db	04 	. 
	ld h,(hl)			;07dc	66 	f 
	ld h,086h		;07dd	26 86 	& . 
	ld a,a			;07df	7f 	 
	nop			;07e0	00 	. 
	dec b			;07e1	05 	. 
	ld l,a			;07e2	6f 	o 
	ld l,c			;07e3	69 	i 
	ld h,e			;07e4	63 	c 
	rst 38h			;07e5	ff 	. 
	rst 38h			;07e6	ff 	. 
	inc bc			;07e7	03 	. 
	ret m			;07e8	f8 	. 
	call m,sub_0300h		;07e9	fc 00 03 	. . . 
	ret m			;07ec	f8 	. 
	nop			;07ed	00 	. 
	ld bc,0efffh		;07ee	01 ff ef 	. . . 
	defb 0fdh,0fah,0fbh	;illegal sequence		;07f1	fd fa fb 	. . . 
	rst 38h			;07f4	ff 	. 
	rst 38h			;07f5	ff 	. 
	cp a			;07f6	bf 	. 
	nop			;07f7	00 	. 
	ld bc,l3fffh		;07f8	01 ff 3f 	. . ? 
	ld a,a			;07fb	7f 	 
	rst 18h			;07fc	df 	. 
	cp a			;07fd	bf 	. 
	sbc a,a			;07fe	9f 	. 
l07ffh:
	ret nz			;07ff	c0 	. 
l0800h:
	ld a,a			;0800	7f 	 
	in a,(0efh)		;0801	db ef 	. . 
l0803h:
	nop			;0803	00 	. 
	ld bc,0f7ffh		;0804	01 ff f7 	. . . 
	rst 38h			;0807	ff 	. 
	rst 28h			;0808	ef 	. 
	ld (hl),b			;0809	70 	p 
	nop			;080a	00 	. 
	dec b			;080b	05 	. 
	rst 38h			;080c	ff 	. 
	ld a,a			;080d	7f 	 
	nop			;080e	00 	. 
	inc bc			;080f	03 	. 
	rst 38h			;0810	ff 	. 
	nop			;0811	00 	. 
	dec b			;0812	05 	. 
	rst 18h			;0813	df 	. 
	ret z			;0814	c8 	. 
	rst 38h			;0815	ff 	. 
	ret po			;0816	e0 	. 
	nop			;0817	00 	. 
	inc bc			;0818	03 	. 
	rst 38h			;0819	ff 	. 
	rst 30h			;081a	f7 	. 
	rst 38h			;081b	ff 	. 
	ei			;081c	fb 	. 
	rlca			;081d	07 	. 
	rst 38h			;081e	ff 	. 
	rst 38h			;081f	ff 	. 
	call m,l00fdh+1		;0820	fc fe 00 	. . . 
	ld bc,0fdffh		;0823	01 ff fd 	. . . 
	ld sp,hl			;0826	f9 	. 
	inc bc			;0827	03 	. 
	cp 000h		;0828	fe 00 	. . 
	ex af,af'			;082a	08 	. 
	ld de,l0800h		;082b	11 00 08 	. . . 
	ld a,a			;082e	7f 	 
	nop			;082f	00 	. 
	ex af,af'			;0830	08 	. 
	add a,b			;0831	80 	. 
	rst 38h			;0832	ff 	. 
	rst 38h			;0833	ff 	. 
	ld (hl),a			;0834	77 	w 
	inc sp			;0835	33 	3 
	add hl,de			;0836	19 	. 
	ex af,af'			;0837	08 	. 
	ld b,001h		;0838	06 01 	. . 
	nop			;083a	00 	. 
	ld bc,l0100h		;083b	01 00 01 	. . . 
	inc bc			;083e	03 	. 
	rlca			;083f	07 	. 
	ld e,0ffh		;0840	1e ff 	. . 
	nop			;0842	00 	. 
	ld bc,sub_0300h		;0843	01 00 03 	. . . 
	sbc a,a			;0846	9f 	. 
	rra			;0847	1f 	. 
	ccf			;0848	3f 	? 
	ld a,a			;0849	7f 	 
	nop			;084a	00 	. 
	inc bc			;084b	03 	. 
	rst 38h			;084c	ff 	. 
	sub 0d9h		;084d	d6 d9 	. . 
	cp a			;084f	bf 	. 
	ld l,l			;0850	6d 	m 
	rst 38h			;0851	ff 	. 
	in a,(0ffh)		;0852	db ff 	. . 
	rst 38h			;0854	ff 	. 
	rst 18h			;0855	df 	. 
	ld l,a			;0856	6f 	o 
	nop			;0857	00 	. 
	ld bc,0efffh		;0858	01 ff ef 	. . . 
	rst 38h			;085b	ff 	. 
	rst 18h			;085c	df 	. 
	nop			;085d	00 	. 
	ld bc,0ffffh		;085e	01 ff ff 	. . . 
	nop			;0861	00 	. 
	ld h,b			;0862	60 	` 
	jr c,$+127		;0863	38 7d 	8 } 
	nop			;0865	00 	. 
	inc bc			;0866	03 	. 
	rst 38h			;0867	ff 	. 
	nop			;0868	00 	. 
	ld bc,l3000h		;0869	01 00 30 	. . 0 
	ld (hl),c			;086c	71 	q 
	ex de,hl			;086d	eb 	. 
	rst 28h			;086e	ef 	. 
	nop			;086f	00 	. 
	inc b			;0870	04 	. 
	rst 38h			;0871	ff 	. 
	cp 0beh		;0872	fe be 	. . 
	nop			;0874	00 	. 
	ld bc,0fbffh		;0875	01 ff fb 	. . . 
	rst 38h			;0878	ff 	. 
	ld a,l			;0879	7d 	} 
	rst 38h			;087a	ff 	. 
	rst 38h			;087b	ff 	. 
	defb 0ddh,0d7h,0feh	;illegal sequence		;087c	dd d7 fe 	. . . 
	rst 18h			;087f	df 	. 
	rst 38h			;0880	ff 	. 
	rst 28h			;0881	ef 	. 
	nop			;0882	00 	. 
	ld bc,0faffh		;0883	01 ff fa 	. . . 
	jp c,05a7ah		;0886	da 7a 5a 	. z Z 
	ld a,a			;0889	7f 	 
	ld a,e			;088a	7b 	{ 
	ld a,l			;088b	7d 	} 
	adc a,a			;088c	8f 	. 
	nop			;088d	00 	. 
	inc b			;088e	04 	. 
	cp e			;088f	bb 	. 
	nop			;0890	00 	. 
	ld bc,07fffh		;0891	01 ff 7f 	. .  
	cp a			;0894	bf 	. 
	nop			;0895	00 	. 
	ld bc,0feffh		;0896	01 ff fe 	. . . 
	or 000h		;0899	f6 00 	. . 
	dec b			;089b	05 	. 
	and 006h		;089c	e6 06 	. . 
	nop			;089e	00 	. 
	ex af,af'			;089f	08 	. 
	ld e,e			;08a0	5b 	[ 
	nop			;08a1	00 	. 
	inc b			;08a2	04 	. 
	cp e			;08a3	bb 	. 
	nop			;08a4	00 	. 
	inc b			;08a5	04 	. 
	rst 38h			;08a6	ff 	. 
	nop			;08a7	00 	. 
	inc bc			;08a8	03 	. 
	cp a			;08a9	bf 	. 
	or a			;08aa	b7 	. 
	rst 38h			;08ab	ff 	. 
	rst 38h			;08ac	ff 	. 
	defb 0fdh,0f3h,000h	;illegal sequence		;08ad	fd f3 00 	. . . 
	ex af,af'			;08b0	08 	. 
	cp a			;08b1	bf 	. 
	ld a,a			;08b2	7f 	 
	nop			;08b3	00 	. 
	ld b,06fh		;08b4	06 6f 	. o 
	ld h,b			;08b6	60 	` 
	nop			;08b7	00 	. 
	inc b			;08b8	04 	. 
	nop			;08b9	00 	. 
	ld c,01ch		;08ba	0e 1c 	. . 
	add hl,sp			;08bc	39 	9 
	rlca			;08bd	07 	. 
	inc bc			;08be	03 	. 
	rlca			;08bf	07 	. 
	rst 38h			;08c0	ff 	. 
	rrca			;08c1	0f 	. 
	rst 38h			;08c2	ff 	. 
	ld e,0dfh		;08c3	1e df 	. . 
	nop			;08c5	00 	. 
	ld bc,l00fdh+2		;08c6	01 ff 00 	. . . 
	ex af,af'			;08c9	08 	. 
	nop			;08ca	00 	. 
	nop			;08cb	00 	. 
	ld bc,07fffh		;08cc	01 ff 7f 	. .  
	ccf			;08cf	3f 	? 
	nop			;08d0	00 	. 
	dec b			;08d1	05 	. 
	rra			;08d2	1f 	. 
	ret nz			;08d3	c0 	. 
	add a,b			;08d4	80 	. 
	nop			;08d5	00 	. 
	inc b			;08d6	04 	. 
	nop			;08d7	00 	. 
	inc bc			;08d8	03 	. 
	adc a,(hl)			;08d9	8e 	. 
	cp 0ffh		;08da	fe ff 	. . 
	ld a,(hl)			;08dc	7e 	~ 
	ccf			;08dd	3f 	? 
	nop			;08de	00 	. 
	inc b			;08df	04 	. 
	rra			;08e0	1f 	. 
	cp 0ffh		;08e1	fe ff 	. . 
	call m,0fff8h		;08e3	fc f8 ff 	. . . 
	ret p			;08e6	f0 	. 
	rst 38h			;08e7	ff 	. 
	ret po			;08e8	e0 	. 
	rra			;08e9	1f 	. 
	ld a,07eh		;08ea	3e 7e 	> ~ 
	call m,0fef8h		;08ec	fc f8 fe 	. . . 
	ld a,a			;08ef	7f 	 
	ccf			;08f0	3f 	? 
	nop			;08f1	00 	. 
	ld bc,0e4ffh		;08f2	01 ff e4 	. . . 
	jr nz,l0918h		;08f5	20 21 	  ! 
	inc hl			;08f7	23 	# 
	ld hl,l2123h		;08f8	21 23 21 	! # ! 
	nop			;08fb	00 	. 
	inc bc			;08fc	03 	. 
	ld a,a			;08fd	7f 	 
	rst 38h			;08fe	ff 	. 
	rst 18h			;08ff	df 	. 
sub_0900h:
	nop			;0900	00 	. 
	ld bc,0deffh		;0901	01 ff de 	. . . 
	call c,sub_0300h		;0904	dc 00 03 	. . . 
	inc hl			;0907	23 	# 
	jr nz,l092dh		;0908	20 23 	  # 
	nop			;090a	00 	. 
	inc bc			;090b	03 	. 
	ld hl,0c8cch		;090c	21 cc c8 	! . . 
	ret p			;090f	f0 	. 
	nop			;0910	00 	. 
	dec b			;0911	05 	. 
	ret nz			;0912	c0 	. 
	rrca			;0913	0f 	. 
	ccf			;0914	3f 	? 
	nop			;0915	00 	. 
	inc b			;0916	04 	. 
	rst 38h			;0917	ff 	. 
l0918h:
	call m,sub_0900h		;0918	fc 00 09 	. . . 
	ret nz			;091b	c0 	. 
	ld b,b			;091c	40 	@ 
	ld b,e			;091d	43 	C 
	ld b,c			;091e	41 	A 
	ld b,a			;091f	47 	G 
	ld b,e			;0920	43 	C 
	ld b,c			;0921	41 	A 
	ld b,e			;0922	43 	C 
	ld b,c			;0923	41 	A 
	ret po			;0924	e0 	. 
	ex (sp),hl			;0925	e3 	. 
	xor 0ffh		;0926	ee ff 	. . 
	call m,0fffeh		;0928	fc fe ff 	. . . 
	rst 38h			;092b	ff 	. 
	add a,e			;092c	83 	. 
l092dh:
	adc a,a			;092d	8f 	. 
	add a,c			;092e	81 	. 
	nop			;092f	00 	. 
	inc bc			;0930	03 	. 
	add a,a			;0931	87 	. 
	add a,e			;0932	83 	. 
	adc a,a			;0933	8f 	. 
	nop			;0934	00 	. 
	ex af,af'			;0935	08 	. 
	rst 38h			;0936	ff 	. 
	add a,e			;0937	83 	. 
	add a,a			;0938	87 	. 
	add a,c			;0939	81 	. 
	rst 38h			;093a	ff 	. 
	add a,a			;093b	87 	. 
	rst 28h			;093c	ef 	. 
	nop			;093d	00 	. 
	inc c			;093e	0c 	. 
	rst 38h			;093f	ff 	. 
	cp 03eh		;0940	fe 3e 	. > 
	inc e			;0942	1c 	. 
	inc a			;0943	3c 	< 
	rst 38h			;0944	ff 	. 
	ld e,000h		;0945	1e 00 	. . 
	inc bc			;0947	03 	. 
	rst 38h			;0948	ff 	. 
	cp 0fch		;0949	fe fc 	. . 
	rst 38h			;094b	ff 	. 
	ret p			;094c	f0 	. 
	ret po			;094d	e0 	. 
	nop			;094e	00 	. 
	inc bc			;094f	03 	. 
	rra			;0950	1f 	. 
	sbc a,a			;0951	9f 	. 
	cp a			;0952	bf 	. 
	rst 38h			;0953	ff 	. 
	ccf			;0954	3f 	? 
	cp 0ffh		;0955	fe ff 	. . 
	ret po			;0957	e0 	. 
	rst 38h			;0958	ff 	. 
	ret nz			;0959	c0 	. 
	add a,b			;095a	80 	. 
	nop			;095b	00 	. 
	inc b			;095c	04 	. 
	nop			;095d	00 	. 
	rst 38h			;095e	ff 	. 
	ld bc,00305h		;095f	01 05 03 	. . . 
	rrca			;0962	0f 	. 
	rlca			;0963	07 	. 
	ld a,a			;0964	7f 	 
	call m,sub_0300h		;0965	fc 00 03 	. . . 
	ret m			;0968	f8 	. 
	call m,sub_0108h		;0969	fc 08 01 	. . . 
	inc bc			;096c	03 	. 
	nop			;096d	00 	. 
	ld bc,00f00h		;096e	01 00 0f 	. . . 
	ccf			;0971	3f 	? 
	ld a,b			;0972	78 	x 
	ld h,b			;0973	60 	` 
	ret c			;0974	d8 	. 
	or b			;0975	b0 	. 
	jr nz,l09a8h		;0976	20 30 	  0 
	sbc a,b			;0978	98 	. 
	ret po			;0979	e0 	. 
	ld a,b			;097a	78 	x 
	inc e			;097b	1c 	. 
	nop			;097c	00 	. 
	inc bc			;097d	03 	. 
	nop			;097e	00 	. 
	adc a,a			;097f	8f 	. 
	nop			;0980	00 	. 
	inc bc			;0981	03 	. 
	add a,a			;0982	87 	. 
	nop			;0983	00 	. 
	inc b			;0984	04 	. 
	adc a,a			;0985	8f 	. 
	nop			;0986	00 	. 
	ex af,af'			;0987	08 	. 
	ld sp,hl			;0988	f9 	. 
	nop			;0989	00 	. 
	ld bc,0bfffh		;098a	01 ff bf 	. . . 
	sbc a,a			;098d	9f 	. 
	adc a,a			;098e	8f 	. 
	add a,e			;098f	83 	. 
	rst 38h			;0990	ff 	. 
	adc a,a			;0991	8f 	. 
	ld a,a			;0992	7f 	 
	defb 0fdh,0b9h,000h	;illegal sequence		;0993	fd b9 00 	. . . 
	inc b			;0996	04 	. 
	ld sp,hl			;0997	f9 	. 
	di			;0998	f3 	. 
	cp 000h		;0999	fe 00 	. . 
	inc bc			;099b	03 	. 
	add a,e			;099c	83 	. 
	or a			;099d	b7 	. 
	cp a			;099e	bf 	. 
	sbc a,a			;099f	9f 	. 
	adc a,a			;09a0	8f 	. 
	ex (sp),hl			;09a1	e3 	. 
	di			;09a2	f3 	. 
	rst 38h			;09a3	ff 	. 
	ld sp,hl			;09a4	f9 	. 
	pop af			;09a5	f1 	. 
	rst 38h			;09a6	ff 	. 
	pop hl			;09a7	e1 	. 
l09a8h:
	rst 38h			;09a8	ff 	. 
	ld sp,hl			;09a9	f9 	. 
	ret po			;09aa	e0 	. 
	add a,b			;09ab	80 	. 
	adc a,a			;09ac	8f 	. 
	rst 38h			;09ad	ff 	. 
	rst 28h			;09ae	ef 	. 
	add a,b			;09af	80 	. 
	add a,a			;09b0	87 	. 
	ld a,a			;09b1	7f 	 
	ld a,c			;09b2	79 	y 
	add hl,bc			;09b3	09 	. 
	nop			;09b4	00 	. 
	inc bc			;09b5	03 	. 
	pop af			;09b6	f1 	. 
	add hl,bc			;09b7	09 	. 
	di			;09b8	f3 	. 
	cp 000h		;09b9	fe 00 	. . 
	ld bc,l0700h		;09bb	01 00 07 	. . . 
	rra			;09be	1f 	. 
	nop			;09bf	00 	. 
	inc bc			;09c0	03 	. 
	ccf			;09c1	3f 	? 
	rra			;09c2	1f 	. 
	rrca			;09c3	0f 	. 
	ld bc,0cf07h		;09c4	01 07 cf 	. . . 
	rst 28h			;09c7	ef 	. 
	rst 30h			;09c8	f7 	. 
	rst 28h			;09c9	ef 	. 
	rst 38h			;09ca	ff 	. 
	rst 38h			;09cb	ff 	. 
	scf			;09cc	37 	7 
	ld a,a			;09cd	7f 	 
	rst 38h			;09ce	ff 	. 
	rst 38h			;09cf	ff 	. 
	rst 38h			;09d0	ff 	. 
	ld a,a			;09d1	7f 	 
	rrca			;09d2	0f 	. 
	nop			;09d3	00 	. 
	ld bc,l0000h		;09d4	01 00 00 	. . . 
	dec b			;09d7	05 	. 
	rst 38h			;09d8	ff 	. 
	rst 18h			;09d9	df 	. 
	rlca			;09da	07 	. 
	nop			;09db	00 	. 
	ld bc,l0000h		;09dc	01 00 00 	. . . 
	ex af,af'			;09df	08 	. 
	rst 38h			;09e0	ff 	. 
	nop			;09e1	00 	. 
	ld bc,0f000h		;09e2	01 00 f0 	. . . 
	call m,sub_00f9h		;09e5	fc f9 00 	. . . 
	inc bc			;09e8	03 	. 
	ei			;09e9	fb 	. 
	defb 0fdh,000h,004h	;illegal sequence		;09ea	fd 00 04 	. . . 
	rst 38h			;09ed	ff 	. 
	rst 38h			;09ee	ff 	. 
	rst 28h			;09ef	ef 	. 
	rst 18h			;09f0	df 	. 
	ld sp,00600h		;09f1	31 00 06 	1 . . 
	rst 38h			;09f4	ff 	. 
	cp 0f0h		;09f5	fe f0 	. . 
	nop			;09f7	00 	. 
	ld bc,l0700h		;09f8	01 00 07 	. . . 
	ld a,a			;09fb	7f 	 
	nop			;09fc	00 	. 
	dec b			;09fd	05 	. 
	rst 38h			;09fe	ff 	. 
l09ffh:
	nop			;09ff	00 	. 
sub_0a00h:
	ld bc,08000h		;0a00	01 00 80 	. . . 
	nop			;0a03	00 	. 
	inc bc			;0a04	03 	. 
	ret po			;0a05	e0 	. 
	call c,l00fdh+1		;0a06	dc fe 00 	. . . 
	ld b,0ffh		;0a09	06 ff 	. . 
	cp a			;0a0b	bf 	. 
	rra			;0a0c	1f 	. 
	rlca			;0a0d	07 	. 
	nop			;0a0e	00 	. 
	inc b			;0a0f	04 	. 
	rst 38h			;0a10	ff 	. 
	defb 0fdh,0f6h,0cch	;illegal sequence		;0a11	fd f6 cc 	. . . 
	nop			;0a14	00 	. 
	ld bc,07f00h		;0a15	01 00 7f 	. .  
	cp a			;0a18	bf 	. 
	ld l,a			;0a19	6f 	o 
	dec de			;0a1a	1b 	. 
	ld b,001h		;0a1b	06 01 	. . 
	rst 38h			;0a1d	ff 	. 
	nop			;0a1e	00 	. 
	nop			;0a1f	00 	. 
	ld bc,081ffh		;0a20	01 ff 81 	. . . 
	nop			;0a23	00 	. 
	ld bc,0e1ffh		;0a24	01 ff e1 	. . . 
	nop			;0a27	00 	. 
	ld bc,0b9ffh		;0a28	01 ff b9 	. . . 
	ld a,a			;0a2b	7f 	 
	nop			;0a2c	00 	. 
	ld bc,l0000h		;0a2d	01 00 00 	. . . 
	ld bc,07fffh		;0a30	01 ff 7f 	. .  
	nop			;0a33	00 	. 
	ld bc,l3fffh		;0a34	01 ff 3f 	. . ? 
	nop			;0a37	00 	. 
	ld bc,l1dffh		;0a38	01 ff 1d 	. . . 
	cp 000h		;0a3b	fe 00 	. . 
	ld bc,0fe00h		;0a3d	01 00 fe 	. . . 
	ld sp,hl			;0a40	f9 	. 
	and 098h		;0a41	e6 98 	. . 
	ld h,b			;0a43	60 	` 
	add a,b			;0a44	80 	. 
	rst 38h			;0a45	ff 	. 
	nop			;0a46	00 	. 
	push de			;0a47	d5 	. 
	ld a,a			;0a48	7f 	 
	rst 38h			;0a49	ff 	. 
	sub d			;0a4a	92 	. 
	ld a,a			;0a4b	7f 	 
	jr nz,l0a8dh		;0a4c	20 3f 	  ? 
	ld b,c			;0a4e	41 	A 
	ld a,l			;0a4f	7d 	} 
	cp 0ffh		;0a50	fe ff 	. . 
	ld sp,hl			;0a52	f9 	. 
	cp 0f4h		;0a53	fe f4 	. . 
	call m,0e1c2h		;0a55	fc c2 e1 	. . . 
	cp b			;0a58	b8 	. 
	defb 0fdh,000h,005h	;illegal sequence		;0a59	fd 00 05 	. . . 
	rst 38h			;0a5c	ff 	. 
	add a,a			;0a5d	87 	. 
	rst 38h			;0a5e	ff 	. 
	add a,e			;0a5f	83 	. 
	adc a,a			;0a60	8f 	. 
	add a,e			;0a61	83 	. 
	add a,a			;0a62	87 	. 
	rst 38h			;0a63	ff 	. 
	add a,e			;0a64	83 	. 
	nop			;0a65	00 	. 
	inc bc			;0a66	03 	. 
	add a,a			;0a67	87 	. 
	nop			;0a68	00 	. 
	ld bc,l00fdh+2		;0a69	01 ff 00 	. . . 
	inc bc			;0a6c	03 	. 
	cp a			;0a6d	bf 	. 
	sbc a,a			;0a6e	9f 	. 
	ei			;0a6f	fb 	. 
	ld sp,iy		;0a70	fd f9 	. . 
	nop			;0a72	00 	. 
	ld bc,0ffffh		;0a73	01 ff ff 	. . . 
	defb 0fdh,0ffh,0f9h	;illegal sequence		;0a76	fd ff f9 	. . . 
	add a,a			;0a79	87 	. 
	add a,(hl)			;0a7a	86 	. 
	add a,l			;0a7b	85 	. 
	add a,(hl)			;0a7c	86 	. 
	add a,e			;0a7d	83 	. 
	add a,b			;0a7e	80 	. 
	adc a,a			;0a7f	8f 	. 
	ld a,a			;0a80	7f 	 
	ld sp,hl			;0a81	f9 	. 
	ld a,c			;0a82	79 	y 
	cp c			;0a83	b9 	. 
	ld a,c			;0a84	79 	y 
	rst 38h			;0a85	ff 	. 
	ld sp,hl			;0a86	f9 	. 
	di			;0a87	f3 	. 
	cp 0ffh		;0a88	fe ff 	. . 
	add a,e			;0a8a	83 	. 
	sbc a,l			;0a8b	9d 	. 
	rst 38h			;0a8c	ff 	. 
l0a8dh:
	cp (hl)			;0a8d	be 	. 
	cp a			;0a8e	bf 	. 
	sbc a,a			;0a8f	9f 	. 
	add a,a			;0a90	87 	. 
	di			;0a91	f3 	. 
	ld sp,hl			;0a92	f9 	. 
	pop bc			;0a93	c1 	. 
	ld bc,0f131h		;0a94	01 31 f1 	. 1 . 
	rst 38h			;0a97	ff 	. 
	pop hl			;0a98	e1 	. 
	sbc a,b			;0a99	98 	. 
	nop			;0a9a	00 	. 
	inc bc			;0a9b	03 	. 
	sbc a,a			;0a9c	9f 	. 
	add a,a			;0a9d	87 	. 
	add a,b			;0a9e	80 	. 
	add a,e			;0a9f	83 	. 
	ld a,a			;0aa0	7f 	 
	add hl,de			;0aa1	19 	. 
	nop			;0aa2	00 	. 
	inc bc			;0aa3	03 	. 
	ld sp,hl			;0aa4	f9 	. 
	pop hl			;0aa5	e1 	. 
	add hl,de			;0aa6	19 	. 
	di			;0aa7	f3 	. 
	cp 000h		;0aa8	fe 00 	. . 
	ex af,af'			;0aaa	08 	. 
	push bc			;0aab	c5 	. 
	nop			;0aac	00 	. 
	nop			;0aad	00 	. 
	cp e			;0aae	bb 	. 
	nop			;0aaf	00 	. 
	rlca			;0ab0	07 	. 
	rst 38h			;0ab1	ff 	. 
	adc a,a			;0ab2	8f 	. 
	cp h			;0ab3	bc 	. 
	jp m,0a2c2h		;0ab4	fa c2 a2 	. . . 
	add a,l			;0ab7	85 	. 
	inc bc			;0ab8	03 	. 
	ld a,(l0800h)		;0ab9	3a 00 08 	: . . 
	rst 38h			;0abc	ff 	. 
	ld (bc),a			;0abd	02 	. 
	and d			;0abe	a2 	. 
	and a			;0abf	a7 	. 
	xor a			;0ac0	af 	. 
	nop			;0ac1	00 	. 
	inc b			;0ac2	04 	. 
	rst 38h			;0ac3	ff 	. 
	ld a,a			;0ac4	7f 	 
	nop			;0ac5	00 	. 
	inc b			;0ac6	04 	. 
	rst 38h			;0ac7	ff 	. 
	rst 18h			;0ac8	df 	. 
	or l			;0ac9	b5 	. 
	dec h			;0aca	25 	% 
	nop			;0acb	00 	. 
	ld b,0ffh		;0acc	06 ff 	. . 
	ei			;0ace	fb 	. 
	sub 0f3h		;0acf	d6 f3 	. . 
	nop			;0ad1	00 	. 
	ld b,0ffh		;0ad2	06 ff 	. . 
	or 0deh		;0ad4	f6 de 	. . 
	nop			;0ad6	00 	. 
	inc b			;0ad7	04 	. 
	rst 38h			;0ad8	ff 	. 
	defb 0fdh,0ebh,092h	;illegal sequence		;0ad9	fd eb 92 	. . . 
	pop af			;0adc	f1 	. 
	dec a			;0add	3d 	= 
	ld e,a			;0ade	5f 	_ 
	ld b,e			;0adf	43 	C 
	ld b,l			;0ae0	45 	E 
	and c			;0ae1	a1 	. 
	ret nz			;0ae2	c0 	. 
	ld e,h			;0ae3	5c 	\ 
	nop			;0ae4	00 	. 
	ex af,af'			;0ae5	08 	. 
	rst 38h			;0ae6	ff 	. 
	ld b,b			;0ae7	40 	@ 
	ld b,l			;0ae8	45 	E 
	push hl			;0ae9	e5 	. 
	push af			;0aea	f5 	. 
	nop			;0aeb	00 	. 
	inc b			;0aec	04 	. 
	rst 38h			;0aed	ff 	. 
	or 0feh		;0aee	f6 fe 	. . 
	nop			;0af0	00 	. 
	ld b,0ffh		;0af1	06 ff 	. . 
	di			;0af3	f3 	. 
	ei			;0af4	fb 	. 
	ex (sp),hl			;0af5	e3 	. 
	ei			;0af6	fb 	. 
	di			;0af7	f3 	. 
	rst 38h			;0af8	ff 	. 
	ei			;0af9	fb 	. 
	ex (sp),hl			;0afa	e3 	. 
	ret p			;0afb	f0 	. 
	call m,0e0f8h		;0afc	fc f8 e0 	. . . 
	call m,0fff0h		;0aff	fc f0 ff 	. . . 
	call m,l0100h		;0b02	fc 00 01 	. . . 
	rst 38h			;0b05	ff 	. 
	call m,0c0fah		;0b06	fc fa c0 	. . . 
	and b			;0b09	a0 	. 
	add a,l			;0b0a	85 	. 
	inc bc			;0b0b	03 	. 
	ld a,(l0100h)		;0b0c	3a 00 01 	: . . 
	rst 38h			;0b0f	ff 	. 
	ccf			;0b10	3f 	? 
	ld e,a			;0b11	5f 	_ 
	inc bc			;0b12	03 	. 
	dec b			;0b13	05 	. 
	and c			;0b14	a1 	. 
	ret nz			;0b15	c0 	. 
	ld e,h			;0b16	5c 	\ 
	nop			;0b17	00 	. 
	ex af,af'			;0b18	08 	. 
	rst 38h			;0b19	ff 	. 
	jp l0100h		;0b1a	c3 00 01 	. . . 
	rst 38h			;0b1d	ff 	. 
	inc bc			;0b1e	03 	. 
	rst 38h			;0b1f	ff 	. 
	rst 38h			;0b20	ff 	. 
	ld c,c			;0b21	49 	I 
	nop			;0b22	00 	. 
	ld bc,049ffh		;0b23	01 ff 49 	. . I 
	nop			;0b26	00 	. 
	ld bc,0efffh		;0b27	01 ff ef 	. . . 
	dec b			;0b2a	05 	. 
	nop			;0b2b	00 	. 
	dec b			;0b2c	05 	. 
	nop			;0b2d	00 	. 
	ld c,c			;0b2e	49 	I 
	rst 38h			;0b2f	ff 	. 
	add hl,bc			;0b30	09 	. 
	rst 38h			;0b31	ff 	. 
	ld bc,sub_0300h		;0b32	01 00 03 	. . . 
	nop			;0b35	00 	. 
	rst 38h			;0b36	ff 	. 
	rrca			;0b37	0f 	. 
	rst 38h			;0b38	ff 	. 
	rlca			;0b39	07 	. 
	nop			;0b3a	00 	. 
	inc bc			;0b3b	03 	. 
	rrca			;0b3c	0f 	. 
	rlca			;0b3d	07 	. 
	nop			;0b3e	00 	. 
	ex af,af'			;0b3f	08 	. 
	nop			;0b40	00 	. 
	nop			;0b41	00 	. 
	ld bc,0c0ffh		;0b42	01 ff c0 	. . . 
	sbc a,a			;0b45	9f 	. 
	or b			;0b46	b0 	. 
	nop			;0b47	00 	. 
	inc b			;0b48	04 	. 
	and b			;0b49	a0 	. 
	nop			;0b4a	00 	. 
	add hl,bc			;0b4b	09 	. 
	rst 38h			;0b4c	ff 	. 
	rst 30h			;0b4d	f7 	. 
	rst 38h			;0b4e	ff 	. 
	rst 20h			;0b4f	e7 	. 
	rst 38h			;0b50	ff 	. 
	ex (sp),hl			;0b51	e3 	. 
	di			;0b52	f3 	. 
	pop af			;0b53	f1 	. 
	nop			;0b54	00 	. 
	inc bc			;0b55	03 	. 
	rst 38h			;0b56	ff 	. 
	cp 0f8h		;0b57	fe f8 	. . 
	cp 0f8h		;0b59	fe f8 	. . 
	cp 0f1h		;0b5b	fe f1 	. . 
	rst 38h			;0b5d	ff 	. 
	ret m			;0b5e	f8 	. 
	nop			;0b5f	00 	. 
	dec b			;0b60	05 	. 
	rst 38h			;0b61	ff 	. 
	call m,07c78h		;0b62	fc 78 7c 	. x | 
	nop			;0b65	00 	. 
	ld bc,0fcffh		;0b66	01 ff fc 	. . . 
	nop			;0b69	00 	. 
	inc bc			;0b6a	03 	. 
	cp 000h		;0b6b	fe 00 	. . 
	ld bc,0f8ffh		;0b6d	01 ff f8 	. . . 
	add a,c			;0b70	81 	. 
	inc bc			;0b71	03 	. 
	ld bc,l0f07h		;0b72	01 07 0f 	. . . 
	inc bc			;0b75	03 	. 
	cp 0f8h		;0b76	fe f8 	. . 
	pop af			;0b78	f1 	. 
	pop bc			;0b79	c1 	. 
	rst 38h			;0b7a	ff 	. 
	ret nz			;0b7b	c0 	. 
	add a,b			;0b7c	80 	. 
	ret po			;0b7d	e0 	. 
	rst 38h			;0b7e	ff 	. 
	nop			;0b7f	00 	. 
	rst 38h			;0b80	ff 	. 
	ld bc,sub_0300h		;0b81	01 00 03 	. . . 
	inc bc			;0b84	03 	. 
	rlca			;0b85	07 	. 
	rst 38h			;0b86	ff 	. 
	ret nz			;0b87	c0 	. 
	rst 38h			;0b88	ff 	. 
	add a,b			;0b89	80 	. 
	nop			;0b8a	00 	. 
	inc bc			;0b8b	03 	. 
	nop			;0b8c	00 	. 
	add a,b			;0b8d	80 	. 
	ld l,b			;0b8e	68 	h 
	ld c,d			;0b8f	4a 	J 
	ld b,b			;0b90	40 	@ 
	and b			;0b91	a0 	. 
	dec b			;0b92	05 	. 
	inc bc			;0b93	03 	. 
	ld a,(09bd2h)		;0b94	3a d2 9b 	: . . 
	sub d			;0b97	92 	. 
	ld e,b			;0b98	58 	X 
	ld c,d			;0b99	4a 	J 
	ld b,h			;0b9a	44 	D 
	ld (hl),h			;0b9b	74 	t 
	add hl,hl			;0b9c	29 	) 
	xor e			;0b9d	ab 	. 
	ld (hl),0feh		;0b9e	36 fe 	6 . 
	nop			;0ba0	00 	. 
	ld b,0ffh		;0ba1	06 ff 	. . 
	ld a,(09f77h)		;0ba3	3a 77 9f 	: w . 
	nop			;0ba6	00 	. 
	dec b			;0ba7	05 	. 
	rst 38h			;0ba8	ff 	. 
	nop			;0ba9	00 	. 
	ex af,af'			;0baa	08 	. 
	call p,l0800h		;0bab	f4 00 08 	. . . 
	nop			;0bae	00 	. 
	nop			;0baf	00 	. 
	inc b			;0bb0	04 	. 
	call p,sub_3074h		;0bb1	f4 74 30 	. t 0 
	nop			;0bb4	00 	. 
	ld a,(bc)			;0bb5	0a 	. 
	nop			;0bb6	00 	. 
	nop			;0bb7	00 	. 
	ex af,af'			;0bb8	08 	. 
	ld bc,l0800h		;0bb9	01 00 08 	. . . 
	rst 38h			;0bbc	ff 	. 
	nop			;0bbd	00 	. 
	ld b,001h		;0bbe	06 01 	. . 
	nop			;0bc0	00 	. 
	ld a,(bc)			;0bc1	0a 	. 
	nop			;0bc2	00 	. 
	nop			;0bc3	00 	. 
	ex af,af'			;0bc4	08 	. 
	rrca			;0bc5	0f 	. 
	nop			;0bc6	00 	. 
	ex af,af'			;0bc7	08 	. 
	defb 0fdh,000h,003h	;illegal sequence		;0bc8	fd 00 03 	. . . 
	nop			;0bcb	00 	. 
	ex af,af'			;0bcc	08 	. 
	inc c			;0bcd	0c 	. 
	ld c,006h		;0bce	0e 06 	. . 
	ld (bc),a			;0bd0	02 	. 
	nop			;0bd1	00 	. 
	ex af,af'			;0bd2	08 	. 
	jp m,l0800h		;0bd3	fa 00 08 	. . . 
	nop			;0bd6	00 	. 
	nop			;0bd7	00 	. 
	ex af,af'			;0bd8	08 	. 
	rrca			;0bd9	0f 	. 
	nop			;0bda	00 	. 
	ex af,af'			;0bdb	08 	. 
	nop			;0bdc	00 	. 
	nop			;0bdd	00 	. 
	ex af,af'			;0bde	08 	. 
	rlca			;0bdf	07 	. 
	nop			;0be0	00 	. 
	ex af,af'			;0be1	08 	. 
	rra			;0be2	1f 	. 
	nop			;0be3	00 	. 
	inc b			;0be4	04 	. 
	nop			;0be5	00 	. 
	inc bc			;0be6	03 	. 
	inc c			;0be7	0c 	. 
	ld a,(hl)			;0be8	7e 	~ 
	nop			;0be9	00 	. 
	ld bc,l00fdh+2		;0bea	01 ff 00 	. . . 
	inc bc			;0bed	03 	. 
	rra			;0bee	1f 	. 
	ld h,e			;0bef	63 	c 
	rst 38h			;0bf0	ff 	. 
	add a,c			;0bf1	81 	. 
	add a,e			;0bf2	83 	. 
	ld a,a			;0bf3	7f 	 
	nop			;0bf4	00 	. 
	inc bc			;0bf5	03 	. 
	rst 38h			;0bf6	ff 	. 
	rst 38h			;0bf7	ff 	. 
	ccf			;0bf8	3f 	? 
	nop			;0bf9	00 	. 
	inc bc			;0bfa	03 	. 
	rst 38h			;0bfb	ff 	. 
	rst 38h			;0bfc	ff 	. 
	nop			;0bfd	00 	. 
	ld h,b			;0bfe	60 	` 
	sub b			;0bff	90 	. 
	inc c			;0c00	0c 	. 
	inc bc			;0c01	03 	. 
	nop			;0c02	00 	. 
	ld bc,0e000h		;0c03	01 00 e0 	. . . 
sub_0c06h:
	nop			;0c06	00 	. 
	ld b,000h		;0c07	06 00 	. . 
	ret m			;0c09	f8 	. 
	rra			;0c0a	1f 	. 
	nop			;0c0b	00 	. 
	inc b			;0c0c	04 	. 
	rst 38h			;0c0d	ff 	. 
	jp sub_0300h		;0c0e	c3 00 03 	. . . 
	ld b,b			;0c11	40 	@ 
	nop			;0c12	00 	. 
	ld b,0ffh		;0c13	06 ff 	. . 
	rst 38h			;0c15	ff 	. 
	rra			;0c16	1f 	. 
	nop			;0c17	00 	. 
	rlca			;0c18	07 	. 
	nop			;0c19	00 	. 
	nop			;0c1a	00 	. 
	inc b			;0c1b	04 	. 
	rst 38h			;0c1c	ff 	. 
	defb 0fdh,0f1h,0fdh	;illegal sequence		;0c1d	fd f1 fd 	. . . 
	ld sp,hl			;0c20	f9 	. 
	defb 0fdh,000h,011h	;illegal sequence		;0c21	fd 00 11 	. . . 
	rst 38h			;0c24	ff 	. 
	ld a,h			;0c25	7c 	| 
	di			;0c26	f3 	. 
	rst 20h			;0c27	e7 	. 
	rst 8			;0c28	cf 	. 
	sbc a,a			;0c29	9f 	. 
	rra			;0c2a	1f 	. 
	ccf			;0c2b	3f 	? 
	nop			;0c2c	00 	. 
	add hl,bc			;0c2d	09 	. 
	rst 38h			;0c2e	ff 	. 
	ccf			;0c2f	3f 	? 
	rra			;0c30	1f 	. 
	rst 38h			;0c31	ff 	. 
	ccf			;0c32	3f 	? 
	rra			;0c33	1f 	. 
	rst 38h			;0c34	ff 	. 
	ccf			;0c35	3f 	? 
	nop			;0c36	00 	. 
	ld de,01fffh		;0c37	11 ff 1f 	. . . 
	rst 8			;0c3a	cf 	. 
	rst 20h			;0c3b	e7 	. 
	di			;0c3c	f3 	. 
	ei			;0c3d	fb 	. 
	ld sp,hl			;0c3e	f9 	. 
	defb 0fdh,000h,009h	;illegal sequence		;0c3f	fd 00 09 	. . . 
	rst 38h			;0c42	ff 	. 
	call m,0fff8h		;0c43	fc f8 ff 	. . . 
	call m,0fff8h		;0c46	fc f8 ff 	. . . 
	call m,l0100h		;0c49	fc 00 01 	. . . 
	rst 38h			;0c4c	ff 	. 
	rst 30h			;0c4d	f7 	. 
	exx			;0c4e	d9 	. 
	rst 30h			;0c4f	f7 	. 
	rst 38h			;0c50	ff 	. 
	or a			;0c51	b7 	. 
	ld a,e			;0c52	7b 	{ 
	sbc a,c			;0c53	99 	. 
	rst 8			;0c54	cf 	. 
	rst 38h			;0c55	ff 	. 
	rst 38h			;0c56	ff 	. 
	ex de,hl			;0c57	eb 	. 
	rst 18h			;0c58	df 	. 
	nop			;0c59	00 	. 
	ld bc,0bfffh		;0c5a	01 ff bf 	. . . 
	rst 28h			;0c5d	ef 	. 
	nop			;0c5e	00 	. 
	ld bc,0f6ffh		;0c5f	01 ff f6 	. . . 
	ei			;0c62	fb 	. 
	ld a,a			;0c63	7f 	 
	rst 38h			;0c64	ff 	. 
	sbc a,d			;0c65	9a 	. 
	jp c,0bf1ah		;0c66	da 1a bf 	. . . 
	nop			;0c69	00 	. 
	ld bc,07fffh		;0c6a	01 ff 7f 	. .  
	nop			;0c6d	00 	. 
	ld bc,l00fdh+2		;0c6e	01 ff 00 	. . . 
	inc b			;0c71	04 	. 
	cp e			;0c72	bb 	. 
	cp 000h		;0c73	fe 00 	. . 
	ld bc,0fcffh		;0c75	01 ff fc 	. . . 
	rst 10h			;0c78	d7 	. 
	rst 38h			;0c79	ff 	. 
	rst 28h			;0c7a	ef 	. 
	rst 20h			;0c7b	e7 	. 
	rst 28h			;0c7c	ef 	. 
	cp a			;0c7d	bf 	. 
	nop			;0c7e	00 	. 
	ld bc,0d7ffh		;0c7f	01 ff d7 	. . . 
	nop			;0c82	00 	. 
	inc bc			;0c83	03 	. 
	cp e			;0c84	bb 	. 
	or a			;0c85	b7 	. 
	ld (hl),e			;0c86	73 	s 
	rst 18h			;0c87	df 	. 
	nop			;0c88	00 	. 
	inc bc			;0c89	03 	. 
	rst 38h			;0c8a	ff 	. 
	nop			;0c8b	00 	. 
	inc b			;0c8c	04 	. 
	cp e			;0c8d	bb 	. 
	nop			;0c8e	00 	. 
	ld bc,07fffh		;0c8f	01 ff 7f 	. .  
	rst 30h			;0c92	f7 	. 
	cp 0b9h		;0c93	fe b9 	. . 
	or e			;0c95	b3 	. 
	or a			;0c96	b7 	. 
	or b			;0c97	b0 	. 
	nop			;0c98	00 	. 
	ld bc,0ffffh		;0c99	01 ff ff 	. . . 
	defb 0edh;next byte illegal after ed		;0c9c	ed 	. 
	ld a,a			;0c9d	7f 	 
	scf			;0c9e	37 	7 
	or a			;0c9f	b7 	. 
	cp e			;0ca0	bb 	. 
	sbc a,a			;0ca1	9f 	. 
	nop			;0ca2	00 	. 
	ld bc,0ffffh		;0ca3	01 ff ff 	. . . 
	ld l,l			;0ca6	6d 	m 
	nop			;0ca7	00 	. 
	ld bc,0ffffh		;0ca8	01 ff ff 	. . . 
	cp l			;0cab	bd 	. 
	sbc a,0ffh		;0cac	de ff 	. . 
	rst 38h			;0cae	ff 	. 
	or h			;0caf	b4 	. 
	in a,(0b3h)		;0cb0	db b3 	. . 
	scf			;0cb2	37 	7 
	nop			;0cb3	00 	. 
	inc bc			;0cb4	03 	. 
	ld h,a			;0cb5	67 	g 
	jp m,0b179h		;0cb6	fa 79 b1 	. y . 
	in a,(0fbh)		;0cb9	db fb 	. . 
	di			;0cbb	f3 	. 
	or 0f7h		;0cbc	f6 f7 	. . 
	nop			;0cbe	00 	. 
	ld bc,0ffffh		;0cbf	01 ff ff 	. . . 
	xor 000h		;0cc2	ee 00 	. . 
	ld bc,l00fdh+2		;0cc4	01 ff 00 	. . . 
	inc bc			;0cc7	03 	. 
	rst 30h			;0cc8	f7 	. 
	rst 38h			;0cc9	ff 	. 
	rst 38h			;0cca	ff 	. 
	rst 38h			;0ccb	ff 	. 
	rst 28h			;0ccc	ef 	. 
	nop			;0ccd	00 	. 
	ld bc,0ffffh		;0cce	01 ff ff 	. . . 
	jp c,075bah		;0cd1	da ba 75 	. . u 
	rlca			;0cd4	07 	. 
sub_0cd5h:
	push af			;0cd5	f5 	. 
	rst 38h			;0cd6	ff 	. 
	ld sp,hl			;0cd7	f9 	. 
	push af			;0cd8	f5 	. 
	nop			;0cd9	00 	. 
	ld bc,0edffh		;0cda	01 ff ed 	. . . 
	push af			;0cdd	f5 	. 
	nop			;0cde	00 	. 
	ld bc,0dbffh		;0cdf	01 ff db 	. . . 
	cp a			;0ce2	bf 	. 
	ld a,e			;0ce3	7b 	{ 
	ld a,d			;0ce4	7a 	z 
	cp l			;0ce5	bd 	. 
	sbc a,l			;0ce6	9d 	. 
	call c,l0100h		;0ce7	dc 00 01 	. . . 
	rst 38h			;0cea	ff 	. 
	cp a			;0ceb	bf 	. 
	nop			;0cec	00 	. 
	inc b			;0ced	04 	. 
	ld a,a			;0cee	7f 	 
	ccf			;0cef	3f 	? 
	add a,b			;0cf0	80 	. 
	nop			;0cf1	00 	. 
	ld b,0ffh		;0cf2	06 ff 	. . 
	ld sp,hl			;0cf4	f9 	. 
	inc bc			;0cf5	03 	. 
	cp 0f6h		;0cf6	fe f6 	. . 
	nop			;0cf8	00 	. 
	inc b			;0cf9	04 	. 
	ld h,(hl)			;0cfa	66 	f 
	ld h,086h		;0cfb	26 86 	& . 
	ld a,a			;0cfd	7f 	 
	nop			;0cfe	00 	. 
l0cffh:
	dec b			;0cff	05 	. 
	ld l,a			;0d00	6f 	o 
	ld l,c			;0d01	69 	i 
	ld h,e			;0d02	63 	c 
	nop			;0d03	00 	. 
	ld bc,l01ffh		;0d04	01 ff 01 	. . . 
	call m,sub_0006h		;0d07	fc 06 00 	. . . 
	inc b			;0d0a	04 	. 
	ld (bc),a			;0d0b	02 	. 
	nop			;0d0c	00 	. 
	ld bc,0efffh		;0d0d	01 ff ef 	. . . 
	defb 0fdh,0fah,0fbh	;illegal sequence		;0d10	fd fa fb 	. . . 
	rst 38h			;0d13	ff 	. 
	rst 38h			;0d14	ff 	. 
	cp a			;0d15	bf 	. 
	nop			;0d16	00 	. 
	ld bc,l3fffh		;0d17	01 ff 3f 	. . ? 
	ld a,a			;0d1a	7f 	 
	rst 18h			;0d1b	df 	. 
	cp a			;0d1c	bf 	. 
	sbc a,a			;0d1d	9f 	. 
	ret nz			;0d1e	c0 	. 
	ld a,a			;0d1f	7f 	 
	in a,(0efh)		;0d20	db ef 	. . 
	nop			;0d22	00 	. 
	ld bc,0f7ffh		;0d23	01 ff f7 	. . . 
	rst 38h			;0d26	ff 	. 
	rst 28h			;0d27	ef 	. 
	ld (hl),b			;0d28	70 	p 
	nop			;0d29	00 	. 
	dec b			;0d2a	05 	. 
	rst 38h			;0d2b	ff 	. 
	ld a,a			;0d2c	7f 	 
	nop			;0d2d	00 	. 
	inc bc			;0d2e	03 	. 
	rst 38h			;0d2f	ff 	. 
	nop			;0d30	00 	. 
	dec b			;0d31	05 	. 
	and b			;0d32	a0 	. 
	or b			;0d33	b0 	. 
	sbc a,a			;0d34	9f 	. 
	ret nz			;0d35	c0 	. 
	nop			;0d36	00 	. 
	inc bc			;0d37	03 	. 
	rst 38h			;0d38	ff 	. 
	rst 30h			;0d39	f7 	. 
	rst 38h			;0d3a	ff 	. 
	ei			;0d3b	fb 	. 
	rlca			;0d3c	07 	. 
	rst 38h			;0d3d	ff 	. 
	rst 38h			;0d3e	ff 	. 
	call m,l00fdh+1		;0d3f	fc fe 00 	. . . 
	ld bc,0fdffh		;0d42	01 ff fd 	. . . 
	ld sp,hl			;0d45	f9 	. 
	inc bc			;0d46	03 	. 
	nop			;0d47	00 	. 
	add hl,bc			;0d48	09 	. 
	cp 000h		;0d49	fe 00 	. . 
	ex af,af'			;0d4b	08 	. 
	add a,b			;0d4c	80 	. 
	nop			;0d4d	00 	. 
	add hl,bc			;0d4e	09 	. 
	rst 38h			;0d4f	ff 	. 
	ld sp,hl			;0d50	f9 	. 
	ret m			;0d51	f8 	. 
	call m,l00fdh+1		;0d52	fc fe 00 	. . . 
	inc bc			;0d55	03 	. 
	rst 38h			;0d56	ff 	. 
	nop			;0d57	00 	. 
	ld bc,l0100h		;0d58	01 00 01 	. . . 
	inc bc			;0d5b	03 	. 
	rlca			;0d5c	07 	. 
	ld e,000h		;0d5d	1e 00 	. . 
	inc bc			;0d5f	03 	. 
	nop			;0d60	00 	. 
	nop			;0d61	00 	. 
	inc bc			;0d62	03 	. 
	add a,b			;0d63	80 	. 
	nop			;0d64	00 	. 
	dec b			;0d65	05 	. 
	nop			;0d66	00 	. 
	nop			;0d67	00 	. 
	ld bc,0d6ffh		;0d68	01 ff d6 	. . . 
	exx			;0d6b	d9 	. 
	cp a			;0d6c	bf 	. 
	ld l,l			;0d6d	6d 	m 
	rst 38h			;0d6e	ff 	. 
	in a,(0ffh)		;0d6f	db ff 	. . 
	rst 38h			;0d71	ff 	. 
	rst 18h			;0d72	df 	. 
	ld l,a			;0d73	6f 	o 
	nop			;0d74	00 	. 
	ld bc,0efffh		;0d75	01 ff ef 	. . . 
	rst 38h			;0d78	ff 	. 
	rst 18h			;0d79	df 	. 
	nop			;0d7a	00 	. 
	inc bc			;0d7b	03 	. 
	rst 38h			;0d7c	ff 	. 
	adc a,a			;0d7d	8f 	. 
	jp nz,sub_007fh+1		;0d7e	c2 80 00 	. . . 
	inc bc			;0d81	03 	. 
	nop			;0d82	00 	. 
	nop			;0d83	00 	. 
	ld bc,0c7ffh		;0d84	01 ff c7 	. . . 
	ld c,014h		;0d87	0e 14 	. . 
	djnz l0d8bh		;0d89	10 00 	. . 
l0d8bh:
	inc bc			;0d8b	03 	. 
	nop			;0d8c	00 	. 
	nop			;0d8d	00 	. 
	ld bc,0feffh		;0d8e	01 ff fe 	. . . 
	cp (hl)			;0d91	be 	. 
	nop			;0d92	00 	. 
	ld bc,0fbffh		;0d93	01 ff fb 	. . . 
	rst 38h			;0d96	ff 	. 
	ld a,l			;0d97	7d 	} 
	rst 38h			;0d98	ff 	. 
	rst 38h			;0d99	ff 	. 
	defb 0ddh,0d7h,0feh	;illegal sequence		;0d9a	dd d7 fe 	. . . 
	rst 18h			;0d9d	df 	. 
	rst 38h			;0d9e	ff 	. 
	rst 28h			;0d9f	ef 	. 
	nop			;0da0	00 	. 
	ld bc,0faffh		;0da1	01 ff fa 	. . . 
	jp c,05a7ah		;0da4	da 7a 5a 	. z Z 
	ld a,a			;0da7	7f 	 
	ld a,e			;0da8	7b 	{ 
	ld a,l			;0da9	7d 	} 
	adc a,a			;0daa	8f 	. 
	nop			;0dab	00 	. 
	inc b			;0dac	04 	. 
	cp e			;0dad	bb 	. 
	nop			;0dae	00 	. 
	ld bc,07fffh		;0daf	01 ff 7f 	. .  
	cp a			;0db2	bf 	. 
	nop			;0db3	00 	. 
	ld bc,0feffh		;0db4	01 ff fe 	. . . 
	or 000h		;0db7	f6 00 	. . 
	dec b			;0db9	05 	. 
	and 006h		;0dba	e6 06 	. . 
	nop			;0dbc	00 	. 
	ex af,af'			;0dbd	08 	. 
	ld e,e			;0dbe	5b 	[ 
	nop			;0dbf	00 	. 
	inc b			;0dc0	04 	. 
	cp e			;0dc1	bb 	. 
	nop			;0dc2	00 	. 
	inc b			;0dc3	04 	. 
	rst 38h			;0dc4	ff 	. 
	nop			;0dc5	00 	. 
	inc bc			;0dc6	03 	. 
	cp a			;0dc7	bf 	. 
	or a			;0dc8	b7 	. 
	rst 38h			;0dc9	ff 	. 
	rst 38h			;0dca	ff 	. 
	defb 0fdh,0f3h,000h	;illegal sequence		;0dcb	fd f3 00 	. . . 
	ex af,af'			;0dce	08 	. 
	cp a			;0dcf	bf 	. 
	ld a,a			;0dd0	7f 	 
	nop			;0dd1	00 	. 
	ld b,06fh		;0dd2	06 6f 	. o 
	ld h,b			;0dd4	60 	` 
	nop			;0dd5	00 	. 
	inc b			;0dd6	04 	. 
	nop			;0dd7	00 	. 
	ld c,01ch		;0dd8	0e 1c 	. . 
	jr c,l0ddch		;0dda	38 00 	8 . 
l0ddch:
	jr nz,l0ddeh		;0ddc	20 00 	  . 
l0ddeh:
	add a,b			;0dde	80 	. 
	rlca			;0ddf	07 	. 
	nop			;0de0	00 	. 
	inc bc			;0de1	03 	. 
	inc bc			;0de2	03 	. 
	nop			;0de3	00 	. 
	inc b			;0de4	04 	. 
	ld bc,04080h		;0de5	01 80 40 	. . @ 
	nop			;0de8	00 	. 
	ld b,000h		;0de9	06 00 	. . 
	ld bc,l03ffh		;0deb	01 ff 03 	. . . 
	ld c,a			;0dee	4f 	O 
	ccf			;0def	3f 	? 
	rlca			;0df0	07 	. 
	inc bc			;0df1	03 	. 
	ld bc,sub_0300h		;0df2	01 00 03 	. . . 
	rst 38h			;0df5	ff 	. 
	cp 0fch		;0df6	fe fc 	. . 
	cp 0fch		;0df8	fe fc 	. . 
	cp 000h		;0dfa	fe 00 	. . 
	ld bc,0ffffh		;0dfc	01 ff ff 	. . . 
l0dffh:
	di			;0dff	f3 	. 
	rst 38h			;0e00	ff 	. 
	ld (hl),e			;0e01	73 	s 
	rst 38h			;0e02	ff 	. 
	ld h,e			;0e03	63 	c 
	ld h,a			;0e04	67 	g 
	nop			;0e05	00 	. 
	inc bc			;0e06	03 	. 
	call m,l0100h		;0e07	fc 00 01 	. . . 
	rst 38h			;0e0a	ff 	. 
	call m,sub_0300h		;0e0b	fc 00 03 	. . . 
	cp 077h		;0e0e	fe 77 	. w 
	nop			;0e10	00 	. 
	rlca			;0e11	07 	. 
	ld a,a			;0e12	7f 	 
	nop			;0e13	00 	. 
	dec b			;0e14	05 	. 
	nop			;0e15	00 	. 
	inc bc			;0e16	03 	. 
	ccf			;0e17	3f 	? 
l0e18h:
	nop			;0e18	00 	. 
	ld bc,l00fdh+2		;0e19	01 ff 00 	. . . 
	ex af,af'			;0e1c	08 	. 
	ld a,a			;0e1d	7f 	 
	nop			;0e1e	00 	. 
	ld bc,0fcffh		;0e1f	01 ff fc 	. . . 
	cp 0f8h		;0e22	fe f8 	. . 
	call m,0fcfeh		;0e24	fc fe fc 	. . . 
	cp 03fh		;0e27	fe 3f 	. ? 
	inc a			;0e29	3c 	< 
	ld sp,l23ffh		;0e2a	31 ff 23 	1 . # 
	ld hl,l20ffh		;0e2d	21 ff 20 	! .   
	call m,0fef0h		;0e30	fc f0 fe 	. . . 
	nop			;0e33	00 	. 
	inc bc			;0e34	03 	. 
	ret m			;0e35	f8 	. 
	call m,000f0h		;0e36	fc f0 00 	. . . 
	ex af,af'			;0e39	08 	. 
	jr nz,$-2		;0e3a	20 fc 	  . 
	ret m			;0e3c	f8 	. 
	cp 0f8h		;0e3d	fe f8 	. . 
	ld a,b			;0e3f	78 	x 
	djnz $+1		;0e40	10 ff 	. . 
	nop			;0e42	00 	. 
	nop			;0e43	00 	. 
	ld b,020h		;0e44	06 20 	.   
	rst 38h			;0e46	ff 	. 
	nop			;0e47	00 	. 
	ld bc,l33c1h		;0e48	01 c1 33 	. . 3 
	dec bc			;0e4b	0b 	. 
	rlca			;0e4c	07 	. 
	daa			;0e4d	27 	' 
	inc de			;0e4e	13 	. 
	dec de			;0e4f	1b 	. 
	rrca			;0e50	0f 	. 
	rst 38h			;0e51	ff 	. 
	ld de,0ff13h		;0e52	11 13 ff 	. . . 
	rra			;0e55	1f 	. 
	rst 38h			;0e56	ff 	. 
	ccf			;0e57	3f 	? 
	nop			;0e58	00 	. 
	inc bc			;0e59	03 	. 
	add hl,de			;0e5a	19 	. 
	sub c			;0e5b	91 	. 
	or c			;0e5c	b1 	. 
	ld hl,sub_0301h		;0e5d	21 01 03 	! . . 
	nop			;0e60	00 	. 
	inc bc			;0e61	03 	. 
	ld a,a			;0e62	7f 	 
	nop			;0e63	00 	. 
	dec b			;0e64	05 	. 
	rst 38h			;0e65	ff 	. 
	nop			;0e66	00 	. 
	ex af,af'			;0e67	08 	. 
	nop			;0e68	00 	. 
	nop			;0e69	00 	. 
	inc b			;0e6a	04 	. 
	ld (bc),a			;0e6b	02 	. 
	ld b,00eh		;0e6c	06 0e 	. . 
	defb 0fdh,003h,000h	;illegal sequence		;0e6e	fd 03 00 	. . . 
	dec b			;0e71	05 	. 
	nop			;0e72	00 	. 
	jr $+50		;0e73	18 30 	. 0 
	jr nz,l0ea7h		;0e75	20 30 	  0 
	jr l0e79h		;0e77	18 00 	. . 
l0e79h:
	ld b,000h		;0e79	06 00 	. . 
	ret p			;0e7b	f0 	. 
	rst 38h			;0e7c	ff 	. 
	ret m			;0e7d	f8 	. 
	rst 38h			;0e7e	ff 	. 
	cp 0ffh		;0e7f	fe ff 	. . 
	call m,sub_00f6h		;0e81	fc f6 00 	. . . 
	inc bc			;0e84	03 	. 
	ld bc,07161h		;0e85	01 61 71 	. a q 
	rst 38h			;0e88	ff 	. 
	ld sp,0b061h		;0e89	31 61 b0 	1 a . 
	in a,(0efh)		;0e8c	db ef 	. . 
	di			;0e8e	f3 	. 
	call m,0f0ffh		;0e8f	fc ff f0 	. . . 
	nop			;0e92	00 	. 
	ld bc,l0dffh		;0e93	01 ff 0d 	. . . 
	cp c			;0e96	b9 	. 
	pop af			;0e97	f1 	. 
	pop bc			;0e98	c1 	. 
	nop			;0e99	00 	. 
	inc bc			;0e9a	03 	. 
	ld bc,l0100h		;0e9b	01 00 01 	. . . 
	rst 38h			;0e9e	ff 	. 
	nop			;0e9f	00 	. 
	inc bc			;0ea0	03 	. 
	call m,0f2fah		;0ea1	fc fa f2 	. . . 
	call m,09cf0h		;0ea4	fc f0 9c 	. . . 
l0ea7h:
	nop			;0ea7	00 	. 
	inc bc			;0ea8	03 	. 
	ld bc,065ffh		;0ea9	01 ff 65 	. . e 
	add hl,sp			;0eac	39 	9 
	rst 38h			;0ead	ff 	. 
	ld bc,0ff9fh		;0eae	01 9f ff 	. . . 
	rst 38h			;0eb1	ff 	. 
	rst 38h			;0eb2	ff 	. 
	sbc a,a			;0eb3	9f 	. 
	nop			;0eb4	00 	. 
	ld bc,0f8ffh		;0eb5	01 ff f8 	. . . 
	nop			;0eb8	00 	. 
	ld bc,081ffh		;0eb9	01 ff 81 	. . . 
	pop af			;0ebc	f1 	. 
	nop			;0ebd	00 	. 
	inc bc			;0ebe	03 	. 
	ld sp,hl			;0ebf	f9 	. 
	pop af			;0ec0	f1 	. 
	ld bc,06200h		;0ec1	01 00 62 	. . b 
	rst 38h			;0ec4	ff 	. 
	add a,b			;0ec5	80 	. 
	rst 20h			;0ec6	e7 	. 
	ret m			;0ec7	f8 	. 
	cp 000h		;0ec8	fe 00 	. . 
	inc b			;0eca	04 	. 
	rst 38h			;0ecb	ff 	. 
	ld a,a			;0ecc	7f 	 
	nop			;0ecd	00 	. 
	ld bc,01fffh		;0ece	01 ff 1f 	. . . 
	ld a,a			;0ed1	7f 	 
	add a,a			;0ed2	87 	. 
	nop			;0ed3	00 	. 
	inc bc			;0ed4	03 	. 
	rst 38h			;0ed5	ff 	. 
	add a,b			;0ed6	80 	. 
	nop			;0ed7	00 	. 
	ld bc,0c0ffh		;0ed8	01 ff c0 	. . . 
	cp 0e1h		;0edb	fe e1 	. . 
	nop			;0edd	00 	. 
	inc bc			;0ede	03 	. 
	rst 38h			;0edf	ff 	. 
	ld bc,01fe7h		;0ee0	01 e7 1f 	. . . 
	ld a,a			;0ee3	7f 	 
	nop			;0ee4	00 	. 
	ld a,(bc)			;0ee5	0a 	. 
	rst 38h			;0ee6	ff 	. 
	cp 0d5h		;0ee7	fe d5 	. . 
	nop			;0ee9	00 	. 
	ld bc,0ffffh		;0eea	01 ff ff 	. . . 
	ld c,c			;0eed	49 	I 
	nop			;0eee	00 	. 
	ld bc,l07ffh		;0eef	01 ff 07 	. . . 
	nop			;0ef2	00 	. 
	ld bc,l03ffh		;0ef3	01 ff 03 	. . . 
	adc a,a			;0ef6	8f 	. 
	jp nz,sub_007fh+1		;0ef7	c2 80 00 	. . . 
	dec b			;0efa	05 	. 
	nop			;0efb	00 	. 
	ld sp,hl			;0efc	f9 	. 
	rst 38h			;0efd	ff 	. 
	defb 0fdh,0f1h,0fdh	;illegal sequence		;0efe	fd f1 fd 	. . . 
	ld sp,hl			;0f01	f9 	. 
	rst 38h			;0f02	ff 	. 
l0f03h:
	defb 0fdh,000h,003h	;illegal sequence		;0f03	fd 00 03 	. . . 
	ret m			;0f06	f8 	. 
l0f07h:
	cp 000h		;0f07	fe 00 	. . 
	ld bc,0feffh		;0f09	01 ff fe 	. . . 
	call c,sub_00e0h		;0f0c	dc e0 00 	. . . 
	inc bc			;0f0f	03 	. 
	ld bc,0fd7fh		;0f10	01 7f fd 	.  . 
	ld a,l			;0f13	7d 	} 
	add hl,sp			;0f14	39 	9 
	ld bc,0f9f8h		;0f15	01 f8 f9 	. . . 
	ei			;0f18	fb 	. 
	ld sp,hl			;0f19	f9 	. 
	call m,l0100h		;0f1a	fc 00 01 	. . . 
	rst 38h			;0f1d	ff 	. 
	ret p			;0f1e	f0 	. 
	nop			;0f1f	00 	. 
	ld bc,l01ffh		;0f20	01 ff 01 	. . . 
	add a,c			;0f23	81 	. 
	pop bc			;0f24	c1 	. 
	sub c			;0f25	91 	. 
	nop			;0f26	00 	. 
	inc bc			;0f27	03 	. 
	ld bc,l0100h		;0f28	01 00 01 	. . . 
	rst 38h			;0f2b	ff 	. 
	rst 38h			;0f2c	ff 	. 
	call m,0c1e2h		;0f2d	fc e2 c1 	. . . 
	call 0e2cch		;0f30	cd cc e2 	. . . 
	ret m			;0f33	f8 	. 
	rst 38h			;0f34	ff 	. 
	ld bc,0ff39h		;0f35	01 39 ff 	. 9 . 
	defb 0fdh,03dh,059h	;illegal sequence		;0f38	fd 3d 59 	. = Y 
	add hl,de			;0f3b	19 	. 
	nop			;0f3c	00 	. 
	ld b,0ffh		;0f3d	06 ff 	. . 
	call m,l0100h		;0f3f	fc 00 01 	. . . 
	rst 38h			;0f42	ff 	. 
	nop			;0f43	00 	. 
	inc b			;0f44	04 	. 
	ld sp,iy		;0f45	fd f9 	. . 
	pop hl			;0f47	e1 	. 
	ld bc,l0100h		;0f48	01 00 01 	. . . 
	rst 38h			;0f4b	ff 	. 
	nop			;0f4c	00 	. 
	ex af,af'			;0f4d	08 	. 
	ld a,d			;0f4e	7a 	z 
	nop			;0f4f	00 	. 
	nop			;0f50	00 	. 
	rst 38h			;0f51	ff 	. 
	nop			;0f52	00 	. 
	ld bc,06f1fh		;0f53	01 1f 6f 	. . o 
	push af			;0f56	f5 	. 
	cp a			;0f57	bf 	. 
	xor 000h		;0f58	ee 00 	. . 
	ld bc,0fcffh		;0f5a	01 ff fc 	. . . 
	jp po,01888h		;0f5d	e2 88 18 	. . . 
	ld (hl),h			;0f60	74 	t 
	jr nz,$+74		;0f61	20 48 	  H 
	ld e,c			;0f63	59 	Y 
	call z,0d62bh		;0f64	cc 2b d6 	. + . 
	ld l,c			;0f67	69 	i 
	sub l			;0f68	95 	. 
	jp pe,000a5h		;0f69	ea a5 00 	. . . 
	inc b			;0f6c	04 	. 
	nop			;0f6d	00 	. 
	ld bc,0ad07h		;0f6e	01 07 ad 	. . . 
	ld e,a			;0f71	5f 	_ 
	nop			;0f72	00 	. 
	ld bc,0f3ffh		;0f73	01 ff f3 	. . . 
	ret nz			;0f76	c0 	. 
l0f77h:
	nop			;0f77	00 	. 
	dec b			;0f78	05 	. 
	nop			;0f79	00 	. 
	rst 38h			;0f7a	ff 	. 
	rst 38h			;0f7b	ff 	. 
	call m,l0500h		;0f7c	fc 00 05 	. . . 
	nop			;0f7f	00 	. 
	rst 38h			;0f80	ff 	. 
	rst 38h			;0f81	ff 	. 
	ld a,(hl)			;0f82	7e 	~ 
	jr l0f85h		;0f83	18 00 	. . 
l0f85h:
	inc b			;0f85	04 	. 
	nop			;0f86	00 	. 
	rst 38h			;0f87	ff 	. 
	rst 38h			;0f88	ff 	. 
	ld (hl),e			;0f89	73 	s 
	ld bc,l0400h		;0f8a	01 00 04 	. . . 
	nop			;0f8d	00 	. 
	nop			;0f8e	00 	. 
	ld bc,l3fffh		;0f8f	01 ff 3f 	. . ? 
	ld b,a			;0f92	47 	G 
	ld de,l2e18h		;0f93	11 18 2e 	. . . 
	inc b			;0f96	04 	. 
	ld (de),a			;0f97	12 	. 
	nop			;0f98	00 	. 
	inc c			;0f99	0c 	. 
	nop			;0f9a	00 	. 
	add a,b			;0f9b	80 	. 
	ret po			;0f9c	e0 	. 
	or l			;0f9d	b5 	. 
	jp m,040c0h		;0f9e	fa c0 40 	. . @ 
	jr nz,l0f77h		;0fa1	20 d4 	  . 
	dec l			;0fa3	2d 	- 
	rst 30h			;0fa4	f7 	. 
	xor l			;0fa5	ad 	. 
	ld e,a			;0fa6	5f 	_ 
	nop			;0fa7	00 	. 
	inc b			;0fa8	04 	. 
	ld b,d			;0fa9	42 	B 
	jp nz,sub_0300h		;0faa	c2 00 03 	. . . 
	add a,d			;0fad	82 	. 
	nop			;0fae	00 	. 
	ex af,af'			;0faf	08 	. 
	add a,b			;0fb0	80 	. 
	nop			;0fb1	00 	. 
sub_0fb2h:
	ld bc,0fcffh		;0fb2	01 ff fc 	. . . 
	jp po,01888h		;0fb5	e2 88 18 	. . . 
	ld (hl),h			;0fb8	74 	t 
	jr nz,$+74		;0fb9	20 48 	  H 
	nop			;0fbb	00 	. 
	ld bc,l3fffh		;0fbc	01 ff 3f 	. . ? 
	ld b,a			;0fbf	47 	G 
	ld de,l2e18h		;0fc0	11 18 2e 	. . . 
	inc b			;0fc3	04 	. 
	ld (de),a			;0fc4	12 	. 
	ld b,b			;0fc5	40 	@ 
	ld a,a			;0fc6	7f 	 
	ld b,b			;0fc7	40 	@ 
	ccf			;0fc8	3f 	? 
	ld a,a			;0fc9	7f 	 
	sub d			;0fca	92 	. 
	nop			;0fcb	00 	. 
	ld bc,092ffh		;0fcc	01 ff 92 	. . . 
	ld (bc),a			;0fcf	02 	. 
	cp 002h		;0fd0	fe 02 	. . 
	call m,049feh		;0fd2	fc fe 49 	. . I 
	nop			;0fd5	00 	. 
	ld bc,049ffh		;0fd6	01 ff 49 	. . I 
	rst 38h			;0fd9	ff 	. 
	sub d			;0fda	92 	. 
	jp m,l0500h		;0fdb	fa 00 05 	. . . 
	rst 38h			;0fde	ff 	. 
	rst 38h			;0fdf	ff 	. 
	ld c,c			;0fe0	49 	I 
sub_0fe1h:
	call sub_00edh		;0fe1	cd ed 00 	. . . 
	inc b			;0fe4	04 	. 
	rst 38h			;0fe5	ff 	. 
	ret m			;0fe6	f8 	. 
	nop			;0fe7	00 	. 
	inc bc			;0fe8	03 	. 
	call m,sub_0300h		;0fe9	fc 00 03 	. . . 
	ret m			;0fec	f8 	. 
	call m,sub_0900h		;0fed	fc 00 09 	. . . 
	rst 38h			;0ff0	ff 	. 
	ret nz			;0ff1	c0 	. 
	nop			;0ff2	00 	. 
	ld b,080h		;0ff3	06 80 	. . 
	nop			;0ff5	00 	. 
	ex af,af'			;0ff6	08 	. 
	rst 38h			;0ff7	ff 	. 
l0ff8h:
	rst 10h			;0ff8	d7 	. 
	nop			;0ff9	00 	. 
	inc bc			;0ffa	03 	. 
	push bc			;0ffb	c5 	. 
	jp nz,083ffh		;0ffc	c2 ff 83 	. . . 
l0fffh:
	add a,c			;0fff	81 	. 
l1000h:
	nop			;1000	00 	. 
	ld bc,0e4ffh		;1001	01 ff e4 	. . . 
	and b			;1004	a0 	. 
	jr nz,l1007h		;1005	20 00 	  . 
l1007h:
	inc b			;1007	04 	. 
	and b			;1008	a0 	. 
	pop bc			;1009	c1 	. 
	rst 38h			;100a	ff 	. 
	ld b,b			;100b	40 	@ 
	ld h,b			;100c	60 	` 
	ld (hl),b			;100d	70 	p 
	ld e,b			;100e	58 	X 
	ld c,h			;100f	4c 	L 
	ld b,a			;1010	47 	G 
	ret po			;1011	e0 	. 
	nop			;1012	00 	. 
	ld b,020h		;1013	06 20 	.   
	ret po			;1015	e0 	. 
	nop			;1016	00 	. 
	ld bc,l0700h		;1017	01 00 07 	. . . 
	ld a,(hl)			;101a	7e 	~ 
	call m,0f8feh		;101b	fc fe f8 	. . . 
	ret p			;101e	f0 	. 
	call m,sub_0701h		;101f	fc 01 07 	. . . 
	ld c,03eh		;1022	0e 3e 	. > 
	rst 38h			;1024	ff 	. 
	ccf			;1025	3f 	? 
	ld a,a			;1026	7f 	 
	rra			;1027	1f 	. 
	rst 38h			;1028	ff 	. 
	rst 38h			;1029	ff 	. 
	rst 38h			;102a	ff 	. 
	cp 000h		;102b	fe 00 	. . 
	inc bc			;102d	03 	. 
	call m,0fff8h		;102e	fc f8 ff 	. . . 
	ccf			;1031	3f 	? 
	rst 38h			;1032	ff 	. 
	ld a,a			;1033	7f 	 
	nop			;1034	00 	. 
	inc bc			;1035	03 	. 
	rst 38h			;1036	ff 	. 
	ld a,a			;1037	7f 	 
	jr nz,$+4		;1038	20 02 	  . 
	ex af,af'			;103a	08 	. 
	jr l10b1h		;103b	18 74 	. t 
	jr nz,l1087h		;103d	20 48 	  H 
	add a,b			;103f	80 	. 
	ex af,af'			;1040	08 	. 
	nop			;1041	00 	. 
	ld bc,l1200h		;1042	01 00 12 	. . . 
	ld bc,l0100h		;1045	01 00 01 	. . . 
	nop			;1048	00 	. 
	djnz l104bh		;1049	10 00 	. . 
l104bh:
	ld bc,08000h		;104b	01 00 80 	. . . 
	nop			;104e	00 	. 
	inc b			;104f	04 	. 
	nop			;1050	00 	. 
	ld bc,0ad07h		;1051	01 07 ad 	. . . 
	ld e,a			;1054	5f 	_ 
	nop			;1055	00 	. 
	inc b			;1056	04 	. 
	nop			;1057	00 	. 
	ld b,b			;1058	40 	@ 
	call p,0eebfh		;1059	f4 bf ee 	. . . 
	nop			;105c	00 	. 
	ex af,af'			;105d	08 	. 
	add a,b			;105e	80 	. 
	nop			;105f	00 	. 
	ex af,af'			;1060	08 	. 
	nop			;1061	00 	. 
	nop			;1062	00 	. 
	inc b			;1063	04 	. 
	add a,b			;1064	80 	. 
	add a,c			;1065	81 	. 
	rst 8			;1066	cf 	. 
	rst 38h			;1067	ff 	. 
	rst 38h			;1068	ff 	. 
	rst 38h			;1069	ff 	. 
	nop			;106a	00 	. 
	inc e			;106b	1c 	. 
	rrca			;106c	0f 	. 
	sbc a,a			;106d	9f 	. 
	nop			;106e	00 	. 
	inc bc			;106f	03 	. 
	rst 38h			;1070	ff 	. 
	nop			;1071	00 	. 
	ex af,af'			;1072	08 	. 
	ld bc,l0800h		;1073	01 00 08 	. . . 
	nop			;1076	00 	. 
	nop			;1077	00 	. 
	inc bc			;1078	03 	. 
	ld bc,09f39h		;1079	01 39 9f 	. 9 . 
l107ch:
	nop			;107c	00 	. 
	dec bc			;107d	0b 	. 
	rst 38h			;107e	ff 	. 
	nop			;107f	00 	. 
	ex af,af'			;1080	08 	. 
	ex af,af'			;1081	08 	. 
	nop			;1082	00 	. 
	ex af,af'			;1083	08 	. 
	jr nz,l1086h		;1084	20 00 	  . 
l1086h:
	ex af,af'			;1086	08 	. 
l1087h:
	rst 38h			;1087	ff 	. 
	nop			;1088	00 	. 
	ex af,af'			;1089	08 	. 
	ld b,b			;108a	40 	@ 
	nop			;108b	00 	. 
	ex af,af'			;108c	08 	. 
	nop			;108d	00 	. 
	nop			;108e	00 	. 
	ex af,af'			;108f	08 	. 
	ex af,af'			;1090	08 	. 
	nop			;1091	00 	. 
	ex af,af'			;1092	08 	. 
	nop			;1093	00 	. 
	nop			;1094	00 	. 
	ex af,af'			;1095	08 	. 
	inc b			;1096	04 	. 
	nop			;1097	00 	. 
	ex af,af'			;1098	08 	. 
	djnz l109bh		;1099	10 00 	. . 
l109bh:
	ex af,af'			;109b	08 	. 
l109ch:
	rst 38h			;109c	ff 	. 
	rst 38h			;109d	ff 	. 
	djnz l10bch		;109e	10 1c 	. . 
	ld h,d			;10a0	62 	b 
	rst 38h			;10a1	ff 	. 
	add a,c			;10a2	81 	. 
	add a,d			;10a3	82 	. 
	ld a,h			;10a4	7c 	| 
	ei			;10a5	fb 	. 
	rst 38h			;10a6	ff 	. 
	ret p			;10a7	f0 	. 
	nop			;10a8	00 	. 
	inc b			;10a9	04 	. 
	djnz l109ch		;10aa	10 f0 	. . 
	nop			;10ac	00 	. 
	djnz $+1		;10ad	10 ff 	. . 
	rst 8			;10af	cf 	. 
	add a,(hl)			;10b0	86 	. 
l10b1h:
	nop			;10b1	00 	. 
	ld b,000h		;10b2	06 00 	. . 
	ccf			;10b4	3f 	? 
	rra			;10b5	1f 	. 
	inc e			;10b6	1c 	. 
	nop			;10b7	00 	. 
	dec b			;10b8	05 	. 
	djnz l10bbh		;10b9	10 00 	. . 
l10bbh:
	ex af,af'			;10bb	08 	. 
l10bch:
	rst 38h			;10bc	ff 	. 
	defb 0fdh,091h,000h	;illegal sequence		;10bd	fd 91 00 	. . . 
	ld b,081h		;10c0	06 81 	. . 
	rst 38h			;10c2	ff 	. 
	rst 38h			;10c3	ff 	. 
	ld a,a			;10c4	7f 	 
	nop			;10c5	00 	. 
	dec b			;10c6	05 	. 
	nop			;10c7	00 	. 
	nop			;10c8	00 	. 
	ld bc,0f8ffh		;10c9	01 ff f8 	. . . 
	add a,b			;10cc	80 	. 
	nop			;10cd	00 	. 
	dec b			;10ce	05 	. 
	nop			;10cf	00 	. 
	nop			;10d0	00 	. 
	ld bc,083ffh		;10d1	01 ff 83 	. . . 
	rrca			;10d4	0f 	. 
	inc e			;10d5	1c 	. 
	inc a			;10d6	3c 	< 
	ld (hl),d			;10d7	72 	r 
	pop af			;10d8	f1 	. 
	ex de,hl			;10d9	eb 	. 
	nop			;10da	00 	. 
	ld bc,090ffh		;10db	01 ff 90 	. . . 
	djnz l107ch		;10de	10 9c 	. . 
	ld a,a			;10e0	7f 	 
	ret m			;10e1	f8 	. 
	rst 20h			;10e2	e7 	. 
	rst 8			;10e3	cf 	. 
	rst 38h			;10e4	ff 	. 
	rst 20h			;10e5	e7 	. 
	nop			;10e6	00 	. 
	ld bc,0ffffh		;10e7	01 ff ff 	. . . 
	rst 20h			;10ea	e7 	. 
	rst 30h			;10eb	f7 	. 
	rst 28h			;10ec	ef 	. 
	rst 20h			;10ed	e7 	. 
	sbc a,(hl)			;10ee	9e 	. 
	cp h			;10ef	bc 	. 
	inc a			;10f0	3c 	< 
	ld a,b			;10f1	78 	x 
	ld a,c			;10f2	79 	y 
	add hl,sp			;10f3	39 	9 
	cp l			;10f4	bd 	. 
	sbc a,e			;10f5	9b 	. 
	nop			;10f6	00 	. 
	ld bc,l09ffh		;10f7	01 ff 09 	. . . 
	ex af,af'			;10fa	08 	. 
	add hl,sp			;10fb	39 	9 
	cp 07fh		;10fc	fe 7f 	.  
	rra			;10fe	1f 	. 
	rst 8			;10ff	cf 	. 
sub_1100h:
	nop			;1100	00 	. 
	ld bc,0e7ffh		;1101	01 ff e7 	. . . 
	di			;1104	f3 	. 
	add hl,sp			;1105	39 	9 
	dec a			;1106	3d 	= 
	ld c,l			;1107	4d 	M 
	adc a,a			;1108	8f 	. 
	rst 10h			;1109	d7 	. 
	rst 20h			;110a	e7 	. 
	rst 30h			;110b	f7 	. 
	di			;110c	f3 	. 
	rst 38h			;110d	ff 	. 
	ld a,e			;110e	7b 	{ 
	ld (hl),e			;110f	73 	s 
	rst 30h			;1110	f7 	. 
	rst 38h			;1111	ff 	. 
l1112h:
	rst 20h			;1112	e7 	. 
	rst 0			;1113	c7 	. 
	nop			;1114	00 	. 
	ld bc,0e7ffh		;1115	01 ff e7 	. . . 
	rst 0			;1118	c7 	. 
	rst 28h			;1119	ef 	. 
	rst 30h			;111a	f7 	. 
	rst 0			;111b	c7 	. 
	ret p			;111c	f0 	. 
	cp a			;111d	bf 	. 
	ld a,038h		;111e	3e 38 	> 8 
	rst 38h			;1120	ff 	. 
l1121h:
	ld a,b			;1121	78 	x 
	cp h			;1122	bc 	. 
	rst 38h			;1123	ff 	. 
	cp 0eah		;1124	fe ea 	. . 
	daa			;1126	27 	' 
	inc a			;1127	3c 	< 
	ld h,h			;1128	64 	d 
	ld b,d			;1129	42 	B 
	jp nz,0fef2h		;112a	c2 f2 fe 	. . . 
	ei			;112d	fb 	. 
	defb 0fdh,000h,001h	;illegal sequence		;112e	fd 00 01 	. . . 
	rst 38h			;1131	ff 	. 
	rst 38h			;1132	ff 	. 
	ld a,l			;1133	7d 	} 
	dec a			;1134	3d 	= 
	defb 0fdh,0cbh,07ch,0a4h	;res 4,(iy+07ch) & ld h,(iy+07ch)		;1135	fd cb 7c a4 	. . | . 
	nop			;1139	00 	. 
	ld bc,l00fdh+2		;113a	01 ff 00 	. . . 
	inc b			;113d	04 	. 
	call z,0a80bh		;113e	cc 0b a8 	. . . 
	rst 30h			;1141	f7 	. 
	add hl,sp			;1142	39 	9 
	sub c			;1143	91 	. 
	ld (hl),b			;1144	70 	p 
	sbc a,b			;1145	98 	. 
	ld a,c			;1146	79 	y 
	rst 8			;1147	cf 	. 
	ld l,e			;1148	6b 	k 
	ld sp,hl			;1149	f9 	. 
	nop			;114a	00 	. 
	inc bc			;114b	03 	. 
	call 09fd9h		;114c	cd d9 9f 	. . . 
	call po,0a43fh		;114f	e4 3f a4 	. ? . 
	nop			;1152	00 	. 
	ld bc,l00fdh+2		;1153	01 ff 00 	. . . 
	inc b			;1156	04 	. 
	call z,l0100h		;1157	cc 00 01 	. . . 
	rst 38h			;115a	ff 	. 
	sbc a,e			;115b	9b 	. 
	sbc a,c			;115c	99 	. 
	nop			;115d	00 	. 
	ld bc,0deffh		;115e	01 ff de 	. . . 
	call c,0dfd8h		;1161	dc d8 df 	. . . 
	nop			;1164	00 	. 
	ld bc,0ffffh		;1165	01 ff ff 	. . . 
	or 000h		;1168	f6 00 	. . 
	ld bc,0f9ffh		;116a	01 ff f9 	. . . 
	ld a,c			;116d	79 	y 
	ld a,h			;116e	7c 	| 
	rst 38h			;116f	ff 	. 
	rst 38h			;1170	ff 	. 
	rst 38h			;1171	ff 	. 
	sub d			;1172	92 	. 
	nop			;1173	00 	. 
	ld bc,0ffffh		;1174	01 ff ff 	. . . 
	add a,0ebh		;1177	c6 eb 	. . 
	rst 38h			;1179	ff 	. 
	rst 30h			;117a	f7 	. 
	ld a,e			;117b	7b 	{ 
	inc a			;117c	3c 	< 
	ld a,h			;117d	7c 	| 
	nop			;117e	00 	. 
	inc b			;117f	04 	. 
	ret m			;1180	f8 	. 
	rst 30h			;1181	f7 	. 
	cp 07eh		;1182	fe 7e 	. ~ 
	inc a			;1184	3c 	< 
	ld e,h			;1185	5c 	\ 
	inc c			;1186	0c 	. 
	rra			;1187	1f 	. 
	add hl,bc			;1188	09 	. 
	nop			;1189	00 	. 
	ld bc,0ffffh		;118a	01 ff ff 	. . . 
	ld de,l0100h		;118d	11 00 01 	. . . 
	rst 38h			;1190	ff 	. 
	rst 38h			;1191	ff 	. 
	jr $+30		;1192	18 1c 	. . 
	ld sp,hl			;1194	f9 	. 
	nop			;1195	00 	. 
	ld bc,0ffffh		;1196	01 ff ff 	. . . 
	ld de,l0100h		;1199	11 00 01 	. . . 
	rst 38h			;119c	ff 	. 
	rst 38h			;119d	ff 	. 
	ld h,a			;119e	67 	g 
	rst 0			;119f	c7 	. 
	adc a,a			;11a0	8f 	. 
	ei			;11a1	fb 	. 
	rra			;11a2	1f 	. 
	rst 38h			;11a3	ff 	. 
	rlca			;11a4	07 	. 
	dec bc			;11a5	0b 	. 
	djnz $-11		;11a6	10 f3 	. . 
	jp z,0e6fbh		;11a8	ca fb e6 	. . . 
	call nz,09786h		;11ab	c4 86 97 	. . . 
	jp 063e3h		;11ae	c3 e3 63 	. . c 
	nop			;11b1	00 	. 
	ld bc,0c0ffh		;11b2	01 ff c0 	. . . 
	nop			;11b5	00 	. 
	inc b			;11b6	04 	. 
	add a,b			;11b7	80 	. 
	ret nz			;11b8	c0 	. 
	rst 38h			;11b9	ff 	. 
	rst 38h			;11ba	ff 	. 
	rlca			;11bb	07 	. 
	inc bc			;11bc	03 	. 
	nop			;11bd	00 	. 
	inc bc			;11be	03 	. 
	ld bc,0ff07h		;11bf	01 07 ff 	. . . 
	rst 38h			;11c2	ff 	. 
	adc a,a			;11c3	8f 	. 
	nop			;11c4	00 	. 
	inc b			;11c5	04 	. 
	sbc a,a			;11c6	9f 	. 
	rst 18h			;11c7	df 	. 
	nop			;11c8	00 	. 
	ld bc,0bfffh		;11c9	01 ff bf 	. . . 
	or a			;11cc	b7 	. 
	or e			;11cd	b3 	. 
	nop			;11ce	00 	. 
	inc bc			;11cf	03 	. 
	or c			;11d0	b1 	. 
	or a			;11d1	b7 	. 
	cp a			;11d2	bf 	. 
	nop			;11d3	00 	. 
	ld bc,l01ffh		;11d4	01 ff 01 	. . . 
	nop			;11d7	00 	. 
	ld b,000h		;11d8	06 00 	. . 
	ret nc			;11da	d0 	. 
	ret p			;11db	f0 	. 
	nop			;11dc	00 	. 
	ld bc,0fdffh		;11dd	01 ff fd 	. . . 
	call m,038f8h		;11e0	fc f8 38 	. . 8 
	ret z			;11e3	c8 	. 
	rst 20h			;11e4	e7 	. 
	ex (sp),hl			;11e5	e3 	. 
	nop			;11e6	00 	. 
	ld bc,0e0ffh		;11e7	01 ff e0 	. . . 
	ret nz			;11ea	c0 	. 
	ret po			;11eb	e0 	. 
	rst 38h			;11ec	ff 	. 
	rst 38h			;11ed	ff 	. 
	call pe,sub_00f3h		;11ee	ec f3 00 	. . . 
	ld bc,0f9ffh		;11f1	01 ff f9 	. . . 
	rst 38h			;11f4	ff 	. 
	jr nc,$+1		;11f5	30 ff 	0 . 
	rst 38h			;11f7	ff 	. 
	ld c,a			;11f8	4f 	O 
	rra			;11f9	1f 	. 
	ccf			;11fa	3f 	? 
	nop			;11fb	00 	. 
	ld bc,0f9ffh		;11fc	01 ff f9 	. . . 
	ld c,h			;11ff	4c 	L 
l1200h:
	rst 38h			;1200	ff 	. 
	ld e,(hl)			;1201	5e 	^ 
	nop			;1202	00 	. 
	rlca			;1203	07 	. 
	add a,b			;1204	80 	. 
	ret nz			;1205	c0 	. 
	ld c,h			;1206	4c 	L 
	and c			;1207	a1 	. 
	nop			;1208	00 	. 
	ld bc,08fffh		;1209	01 ff 8f 	. . . 
	rst 38h			;120c	ff 	. 
	ld b,0ffh		;120d	06 ff 	. . 
	rst 38h			;120f	ff 	. 
	rst 20h			;1210	e7 	. 
	rst 0			;1211	c7 	. 
	nop			;1212	00 	. 
	ld bc,083ffh		;1213	01 ff 83 	. . . 
	inc bc			;1216	03 	. 
	rlca			;1217	07 	. 
	rst 38h			;1218	ff 	. 
	rst 38h			;1219	ff 	. 
	nop			;121a	00 	. 
	ex af,af'			;121b	08 	. 
	djnz l121eh		;121c	10 00 	. . 
l121eh:
	ex af,af'			;121e	08 	. 
	nop			;121f	00 	. 
	nop			;1220	00 	. 
	ex af,af'			;1221	08 	. 
	add a,b			;1222	80 	. 
	nop			;1223	00 	. 
	ld bc,0f9ffh		;1224	01 ff f9 	. . . 
	ld (hl),b			;1227	70 	p 
	jr nc,$+26		;1228	30 18 	0 . 
	ex af,af'			;122a	08 	. 
	ld b,001h		;122b	06 01 	. . 
	nop			;122d	00 	. 
	ld de,03bffh		;122e	11 ff 3b 	. . ; 
	ccf			;1231	3f 	? 
	ld a,a			;1232	7f 	 
	or 0ffh		;1233	f6 ff 	. . 
	call pe,0ffffh		;1235	ec ff ff 	. . . 
	ld h,b			;1238	60 	` 
	or d			;1239	b2 	. 
	nop			;123a	00 	. 
	ld bc,l31ffh		;123b	01 ff 31 	. . 1 
	ld h,c			;123e	61 	a 
	ld h,e			;123f	63 	c 
	nop			;1240	00 	. 
	ld bc,0ffffh		;1241	01 ff ff 	. . . 
	nop			;1244	00 	. 
	ld (hl),b			;1245	70 	p 
	dec a			;1246	3d 	= 
	ld a,a			;1247	7f 	 
	nop			;1248	00 	. 
	inc bc			;1249	03 	. 
	rst 38h			;124a	ff 	. 
	nop			;124b	00 	. 
	ld bc,03800h		;124c	01 00 38 	. . 8 
	pop af			;124f	f1 	. 
	ex de,hl			;1250	eb 	. 
	rst 28h			;1251	ef 	. 
	nop			;1252	00 	. 
	inc b			;1253	04 	. 
	rst 38h			;1254	ff 	. 
	sub e			;1255	93 	. 
	ld d,e			;1256	53 	S 
	nop			;1257	00 	. 
	ld bc,l0cffh		;1258	01 ff 0c 	. . . 
	add a,(hl)			;125b	86 	. 
	adc a,(hl)			;125c	8e 	. 
	rst 38h			;125d	ff 	. 
	rst 38h			;125e	ff 	. 
	ld h,(hl)			;125f	66 	f 
	ld l,h			;1260	6c 	l 
	nop			;1261	00 	. 
	ld bc,063ffh		;1262	01 ff 63 	. . c 
	ld sp,l0071h		;1265	31 71 00 	1 q . 
	ld bc,0fdffh		;1268	01 ff fd 	. . . 
	cp l			;126b	bd 	. 
	sbc a,l			;126c	9d 	. 
	cp l			;126d	bd 	. 
	nop			;126e	00 	. 
	ld bc,0fdffh		;126f	01 ff fd 	. . . 
	cp (hl)			;1272	be 	. 
	nop			;1273	00 	. 
	ld bc,l00fdh+2		;1274	01 ff 00 	. . . 
	inc b			;1277	04 	. 
	call z,l0100h		;1278	cc 00 01 	. . . 
	rst 38h			;127b	ff 	. 
	and h			;127c	a4 	. 
	jp nc,0ffffh		;127d	d2 ff ff 	. . . 
	rrca			;1280	0f 	. 
	nop			;1281	00 	. 
	dec b			;1282	05 	. 
	rra			;1283	1f 	. 
	nop			;1284	00 	. 
	ld bc,l00fdh+2		;1285	01 ff 00 	. . . 
	ex af,af'			;1288	08 	. 
	call pe,l0400h		;1289	ec 00 04 	. . . 
	call z,l0100h		;128c	cc 00 01 	. . . 
	rst 38h			;128f	ff 	. 
	add hl,bc			;1290	09 	. 
	ld c,c			;1291	49 	I 
	nop			;1292	00 	. 
	ld bc,0dfffh		;1293	01 ff df 	. . . 
	rst 10h			;1296	d7 	. 
	out (0d9h),a		;1297	d3 d9 	. . 
	inc iy		;1299	fd 23 	. # 
	cpl			;129b	2f 	/ 
	nop			;129c	00 	. 
	ld bc,l00fdh+2		;129d	01 ff 00 	. . . 
	ex af,af'			;12a0	08 	. 
	ret			;12a1	c9 	. 
	cp a			;12a2	bf 	. 
	nop			;12a3	00 	. 
	ld b,0b0h		;12a4	06 b0 	. . 
	cp a			;12a6	bf 	. 
	nop			;12a7	00 	. 
	jr z,$+1		;12a8	28 ff 	( . 
	nop			;12aa	00 	. 
	inc bc			;12ab	03 	. 
	cp 000h		;12ac	fe 00 	. . 
	ld c,0ffh		;12ae	0e ff 	. . 
	rst 38h			;12b0	ff 	. 
	cp 0fch		;12b1	fe fc 	. . 
	ret m			;12b3	f8 	. 
	cp 000h		;12b4	fe 00 	. . 
	inc bc			;12b6	03 	. 
	rst 38h			;12b7	ff 	. 
	call po,00600h		;12b8	e4 00 06 	. . . 
	jr nz,$+129		;12bb	20 7f 	   
	rst 38h			;12bd	ff 	. 
	ld (hl),e			;12be	73 	s 
	rst 38h			;12bf	ff 	. 
	ld d,e			;12c0	53 	S 
	ld h,e			;12c1	63 	c 
	ld b,d			;12c2	42 	B 
	ld b,h			;12c3	44 	D 
	nop			;12c4	00 	. 
	ex af,af'			;12c5	08 	. 
	jr nz,l130ch		;12c6	20 44 	  D 
	ld c,b			;12c8	48 	H 
	ld (hl),b			;12c9	70 	p 
	nop			;12ca	00 	. 
	dec b			;12cb	05 	. 
	ld b,b			;12cc	40 	@ 
	nop			;12cd	00 	. 
	ld b,0ffh		;12ce	06 ff 	. . 
	call m,000c0h		;12d0	fc c0 00 	. . . 
	djnz l1315h		;12d3	10 40 	. @ 
	jr nz,$+37		;12d5	20 23 	  # 
	ld l,0ffh		;12d7	2e ff 	. . 
	inc a			;12d9	3c 	< 
	ld a,0ffh		;12da	3e ff 	> . 
	ccf			;12dc	3f 	? 
	nop			;12dd	00 	. 
	ex af,af'			;12de	08 	. 
	add a,b			;12df	80 	. 
	nop			;12e0	00 	. 
	ex af,af'			;12e1	08 	. 
	ccf			;12e2	3f 	? 
	rst 38h			;12e3	ff 	. 
	add a,b			;12e4	80 	. 
	add a,c			;12e5	81 	. 
	add a,e			;12e6	83 	. 
	add a,a			;12e7	87 	. 
	rst 28h			;12e8	ef 	. 
	rst 38h			;12e9	ff 	. 
	rst 38h			;12ea	ff 	. 
	rst 38h			;12eb	ff 	. 
	ccf			;12ec	3f 	? 
	nop			;12ed	00 	. 
	ld bc,0bfffh		;12ee	01 ff bf 	. . . 
	ccf			;12f1	3f 	? 
	cp a			;12f2	bf 	. 
	nop			;12f3	00 	. 
	inc b			;12f4	04 	. 
	rst 38h			;12f5	ff 	. 
	rst 38h			;12f6	ff 	. 
	cp 0ffh		;12f7	fe ff 	. . 
	call m,0feffh		;12f9	fc ff fe 	. . . 
	nop			;12fc	00 	. 
	inc bc			;12fd	03 	. 
	rst 38h			;12fe	ff 	. 
l12ffh:
	cp 0fch		;12ff	fe fc 	. . 
	rst 38h			;1301	ff 	. 
	ret p			;1302	f0 	. 
	ret po			;1303	e0 	. 
	nop			;1304	00 	. 
	rlca			;1305	07 	. 
	rst 38h			;1306	ff 	. 
	cp 0ffh		;1307	fe ff 	. . 
	ret po			;1309	e0 	. 
	rst 38h			;130a	ff 	. 
	ret nz			;130b	c0 	. 
l130ch:
	add a,b			;130c	80 	. 
	nop			;130d	00 	. 
	inc bc			;130e	03 	. 
	nop			;130f	00 	. 
	nop			;1310	00 	. 
	ex af,af'			;1311	08 	. 
	rst 38h			;1312	ff 	. 
	nop			;1313	00 	. 
	inc b			;1314	04 	. 
l1315h:
	nop			;1315	00 	. 
	inc b			;1316	04 	. 
	ex af,af'			;1317	08 	. 
	ld bc,l0002h+1		;1318	01 03 00 	. . . 
	djnz $+1		;131b	10 ff 	. . 
	nop			;131d	00 	. 
	inc bc			;131e	03 	. 
	add a,b			;131f	80 	. 
	add a,(hl)			;1320	86 	. 
	adc a,(hl)			;1321	8e 	. 
	rst 38h			;1322	ff 	. 
	adc a,h			;1323	8c 	. 
	add a,(hl)			;1324	86 	. 
	nop			;1325	00 	. 
	inc bc			;1326	03 	. 
	ld bc,07161h		;1327	01 61 71 	. a q 
	rst 38h			;132a	ff 	. 
	ld sp,0b061h		;132b	31 61 b0 	1 a . 
	sbc a,e			;132e	9b 	. 
	adc a,a			;132f	8f 	. 
	add a,e			;1330	83 	. 
	nop			;1331	00 	. 
	inc bc			;1332	03 	. 
	add a,b			;1333	80 	. 
	ld a,a			;1334	7f 	 
	dec c			;1335	0d 	. 
	cp c			;1336	b9 	. 
	pop af			;1337	f1 	. 
	pop bc			;1338	c1 	. 
	nop			;1339	00 	. 
	inc bc			;133a	03 	. 
	ld bc,l00fdh+1		;133b	01 fe 00 	. . . 
	inc bc			;133e	03 	. 
	add a,b			;133f	80 	. 
	rst 38h			;1340	ff 	. 
	or d			;1341	b2 	. 
	sbc a,h			;1342	9c 	. 
	add a,b			;1343	80 	. 
	ret po			;1344	e0 	. 
	nop			;1345	00 	. 
	inc bc			;1346	03 	. 
	ld bc,061ffh		;1347	01 ff 61 	. . a 
	ld hl,sub_0701h		;134a	21 01 07 	! . . 
	ret po			;134d	e0 	. 
	adc a,a			;134e	8f 	. 
	sbc a,a			;134f	9f 	. 
	rst 38h			;1350	ff 	. 
	rst 38h			;1351	ff 	. 
	adc a,a			;1352	8f 	. 
	add a,b			;1353	80 	. 
	ld a,a			;1354	7f 	 
	rlca			;1355	07 	. 
	pop af			;1356	f1 	. 
	ld sp,hl			;1357	f9 	. 
	rst 38h			;1358	ff 	. 
	rst 38h			;1359	ff 	. 
	pop af			;135a	f1 	. 
	ld bc,l00fdh+1		;135b	01 fe 00 	. . . 
	ld bc,l0700h		;135e	01 00 07 	. . . 
	rra			;1361	1f 	. 
	nop			;1362	00 	. 
	inc bc			;1363	03 	. 
	ccf			;1364	3f 	? 
	rra			;1365	1f 	. 
	rrca			;1366	0f 	. 
	ld bc,0cf07h		;1367	01 07 cf 	. . . 
	rst 28h			;136a	ef 	. 
	rst 30h			;136b	f7 	. 
	rst 28h			;136c	ef 	. 
	rst 38h			;136d	ff 	. 
	rst 38h			;136e	ff 	. 
	scf			;136f	37 	7 
	ld a,a			;1370	7f 	 
	rst 38h			;1371	ff 	. 
	rst 38h			;1372	ff 	. 
	rst 38h			;1373	ff 	. 
	ld a,a			;1374	7f 	 
	rrca			;1375	0f 	. 
	nop			;1376	00 	. 
	ld bc,l0000h		;1377	01 00 00 	. . . 
	dec b			;137a	05 	. 
	rst 38h			;137b	ff 	. 
	rst 18h			;137c	df 	. 
	rlca			;137d	07 	. 
	nop			;137e	00 	. 
	ld bc,l0000h		;137f	01 00 00 	. . . 
	ex af,af'			;1382	08 	. 
	rst 38h			;1383	ff 	. 
	nop			;1384	00 	. 
	ld bc,0f000h		;1385	01 00 f0 	. . . 
	call m,sub_00f9h		;1388	fc f9 00 	. . . 
	inc bc			;138b	03 	. 
	ei			;138c	fb 	. 
	defb 0fdh,000h,004h	;illegal sequence		;138d	fd 00 04 	. . . 
	rst 38h			;1390	ff 	. 
	rst 38h			;1391	ff 	. 
	rst 28h			;1392	ef 	. 
	rst 18h			;1393	df 	. 
	ld sp,00600h		;1394	31 00 06 	1 . . 
	rst 38h			;1397	ff 	. 
	cp 0f0h		;1398	fe f0 	. . 
	nop			;139a	00 	. 
	ld bc,l0700h		;139b	01 00 07 	. . . 
	ld a,a			;139e	7f 	 
	nop			;139f	00 	. 
	dec b			;13a0	05 	. 
	rst 38h			;13a1	ff 	. 
	nop			;13a2	00 	. 
l13a3h:
	ld bc,08000h		;13a3	01 00 80 	. . . 
	nop			;13a6	00 	. 
	inc bc			;13a7	03 	. 
	ret po			;13a8	e0 	. 
	call c,l00fdh+1		;13a9	dc fe 00 	. . . 
	ld b,0ffh		;13ac	06 ff 	. . 
	cp a			;13ae	bf 	. 
	rra			;13af	1f 	. 
	rlca			;13b0	07 	. 
	nop			;13b1	00 	. 
	inc b			;13b2	04 	. 
	rst 38h			;13b3	ff 	. 
	defb 0fdh,0f6h,0cch	;illegal sequence		;13b4	fd f6 cc 	. . . 
	nop			;13b7	00 	. 
	ld bc,07f00h		;13b8	01 00 7f 	. .  
	add a,b			;13bb	80 	. 
	ld h,a			;13bc	67 	g 
	jr $+8		;13bd	18 06 	. . 
	ld bc,l00fdh+2		;13bf	01 ff 00 	. . . 
	nop			;13c2	00 	. 
	ld bc,l01ffh		;13c3	01 ff 01 	. . . 
	nop			;13c6	00 	. 
	ld bc,l01ffh		;13c7	01 ff 01 	. . . 
	ld a,a			;13ca	7f 	 
	add a,c			;13cb	81 	. 
	ld a,a			;13cc	7f 	 
	nop			;13cd	00 	. 
	ld bc,l0000h		;13ce	01 00 00 	. . . 
	ld bc,l00fdh+2		;13d1	01 ff 00 	. . . 
	ld bc,l0000h		;13d4	01 00 00 	. . . 
	ld bc,l00fdh+2		;13d7	01 ff 00 	. . . 
	ld bc,0fe00h		;13da	01 00 fe 	. . . 
	ld bc,l00fdh+1		;13dd	01 fe 00 	. . . 
	ld bc,0fe00h		;13e0	01 00 fe 	. . . 
	ld bc,018e6h		;13e3	01 e6 18 	. . . 
	ld h,b			;13e6	60 	` 
	add a,b			;13e7	80 	. 
	rst 38h			;13e8	ff 	. 
	nop			;13e9	00 	. 
	push de			;13ea	d5 	. 
	ld a,a			;13eb	7f 	 
	rst 38h			;13ec	ff 	. 
	sub d			;13ed	92 	. 
	ld a,a			;13ee	7f 	 
	jr nz,l1430h		;13ef	20 3f 	  ? 
	ld b,b			;13f1	40 	@ 
	ld d,l			;13f2	55 	U 
	cp 0ffh		;13f3	fe ff 	. . 
	ld c,c			;13f5	49 	I 
	cp 004h		;13f6	fe 04 	. . 
	call m,0f102h		;13f8	fc 02 f1 	. . . 
	cp l			;13fb	bd 	. 
	nop			;13fc	00 	. 
	ld b,0ffh		;13fd	06 ff 	. . 
	nop			;13ff	00 	. 
	ex af,af'			;1400	08 	. 
	add a,c			;1401	81 	. 
	nop			;1402	00 	. 
	inc bc			;1403	03 	. 
	add a,b			;1404	80 	. 
	cp 0bfh		;1405	fe bf 	. . 
	cp (hl)			;1407	be 	. 
	sbc a,h			;1408	9c 	. 
	add a,b			;1409	80 	. 
	nop			;140a	00 	. 
	inc bc			;140b	03 	. 
	ld bc,0fd7fh		;140c	01 7f fd 	.  . 
	ld a,l			;140f	7d 	} 
	add hl,sp			;1410	39 	9 
	ld bc,08180h		;1411	01 80 81 	. . . 
	add a,e			;1414	83 	. 
	add a,c			;1415	81 	. 
	nop			;1416	00 	. 
	inc bc			;1417	03 	. 
	add a,b			;1418	80 	. 
	ld a,a			;1419	7f 	 
	ld bc,0c181h		;141a	01 81 c1 	. . . 
	sub c			;141d	91 	. 
	nop			;141e	00 	. 
	inc bc			;141f	03 	. 
	ld bc,l00fdh+1		;1420	01 fe 00 	. . . 
	inc b			;1423	04 	. 
	add a,b			;1424	80 	. 
	rst 38h			;1425	ff 	. 
	adc a,h			;1426	8c 	. 
	add a,d			;1427	82 	. 
	sbc a,b			;1428	98 	. 
	rst 38h			;1429	ff 	. 
	ld bc,0ff39h		;142a	01 39 ff 	. 9 . 
	ld a,l			;142d	7d 	} 
	dec a			;142e	3d 	= 
	ld e,c			;142f	59 	Y 
l1430h:
	add hl,de			;1430	19 	. 
	nop			;1431	00 	. 
	inc b			;1432	04 	. 
	cp a			;1433	bf 	. 
	sbc a,a			;1434	9f 	. 
	add a,a			;1435	87 	. 
	add a,b			;1436	80 	. 
	ld a,a			;1437	7f 	 
	nop			;1438	00 	. 
	inc b			;1439	04 	. 
	ld sp,iy		;143a	fd f9 	. . 
	pop hl			;143c	e1 	. 
	ld bc,l00fdh+1		;143d	01 fe 00 	. . . 
	ex af,af'			;1440	08 	. 
	ret nz			;1441	c0 	. 
	nop			;1442	00 	. 
	nop			;1443	00 	. 
	nop			;1444	00 	. 
	ld bc,0bfffh		;1445	01 ff bf 	. . . 
	rst 38h			;1448	ff 	. 
	ld a,07fh		;1449	3e 7f 	>  
	scf			;144b	37 	7 
	or a			;144c	b7 	. 
	ei			;144d	fb 	. 
	nop			;144e	00 	. 
	ld bc,l00fdh+2		;144f	01 ff 00 	. . . 
	inc bc			;1452	03 	. 
	ld a,a			;1453	7f 	 
	rra			;1454	1f 	. 
	ccf			;1455	3f 	? 
	adc a,(hl)			;1456	8e 	. 
	ex (sp),hl			;1457	e3 	. 
	rst 38h			;1458	ff 	. 
	rst 38h			;1459	ff 	. 
	di			;145a	f3 	. 
	ex (sp),hl			;145b	e3 	. 
	rst 8			;145c	cf 	. 
	rst 18h			;145d	df 	. 
	rst 8			;145e	cf 	. 
	rst 0			;145f	c7 	. 
	rst 38h			;1460	ff 	. 
	rst 38h			;1461	ff 	. 
	rst 8			;1462	cf 	. 
	rst 0			;1463	c7 	. 
	di			;1464	f3 	. 
	ei			;1465	fb 	. 
	di			;1466	f3 	. 
	ex (sp),hl			;1467	e3 	. 
	nop			;1468	00 	. 
	ld bc,0f1ffh		;1469	01 ff f1 	. . . 
	call po,0feeeh		;146c	e4 ee fe 	. . . 
	or 0e3h		;146f	f6 e3 	. . 
	inc hl			;1471	23 	# 
	nop			;1472	00 	. 
	ld bc,0efffh		;1473	01 ff ef 	. . . 
	nop			;1476	00 	. 
	inc bc			;1477	03 	. 
	ld c,a			;1478	4f 	O 
	sbc a,a			;1479	9f 	. 
	sbc a,(hl)			;147a	9e 	. 
	call z,l0100h		;147b	cc 00 01 	. . . 
	rst 38h			;147e	ff 	. 
	pop af			;147f	f1 	. 
	call po,0feeeh		;1480	e4 ee fe 	. . . 
	or 0e3h		;1483	f6 e3 	. . 
	inc hl			;1485	23 	# 
	nop			;1486	00 	. 
	ld bc,0efffh		;1487	01 ff ef 	. . . 
	nop			;148a	00 	. 
	inc bc			;148b	03 	. 
	ld c,a			;148c	4f 	O 
	sbc a,a			;148d	9f 	. 
	sbc a,(hl)			;148e	9e 	. 
	call z,l0100h		;148f	cc 00 01 	. . . 
	nop			;1492	00 	. 
	ccf			;1493	3f 	? 
	ld h,d			;1494	62 	b 
	ld c,b			;1495	48 	H 
	ld h,e			;1496	63 	c 
	ld (hl),b			;1497	70 	p 
	ld c,(hl)			;1498	4e 	N 
	ccf			;1499	3f 	? 
	nop			;149a	00 	. 
	ld bc,0e000h		;149b	01 00 e0 	. . . 
	nop			;149e	00 	. 
	ld bc,06e00h		;149f	01 00 6e 	. . n 
	add a,d			;14a2	82 	. 
	ld a,(0feceh)		;14a3	3a ce fe 	: . . 
	rst 38h			;14a6	ff 	. 
	ld bc,06551h		;14a7	01 51 65 	. Q e 
	ld d,l			;14aa	55 	U 
	ld l,l			;14ab	6d 	m 
	ld (hl),l			;14ac	75 	u 
	dec a			;14ad	3d 	= 
	rst 38h			;14ae	ff 	. 
	add a,b			;14af	80 	. 
	and b			;14b0	a0 	. 
	or (hl)			;14b1	b6 	. 
	and d			;14b2	a2 	. 
	and (hl)			;14b3	a6 	. 
	xor (hl)			;14b4	ae 	. 
	sbc a,(hl)			;14b5	9e 	. 
	cp a			;14b6	bf 	. 
	sbc a,a			;14b7	9f 	. 
	rst 38h			;14b8	ff 	. 
	ret nz			;14b9	c0 	. 
	cp a			;14ba	bf 	. 
	nop			;14bb	00 	. 
	ld bc,07fffh		;14bc	01 ff 7f 	. .  
	nop			;14bf	00 	. 
	ld bc,0ff00h		;14c0	01 00 ff 	. . . 
	rst 38h			;14c3	ff 	. 
	rst 38h			;14c4	ff 	. 
	nop			;14c5	00 	. 
	nop			;14c6	00 	. 
	inc bc			;14c7	03 	. 
	rst 38h			;14c8	ff 	. 
	nop			;14c9	00 	. 
	ld bc,0c100h		;14ca	01 00 c1 	. . . 
	ret m			;14cd	f8 	. 
	rst 38h			;14ce	ff 	. 
	ld bc,000fch		;14cf	01 fc 00 	. . . 
	ld bc,0feffh		;14d2	01 ff fe 	. . . 
	rst 38h			;14d5	ff 	. 
	nop			;14d6	00 	. 
	ld (hl),b			;14d7	70 	p 
	add a,b			;14d8	80 	. 
	rst 28h			;14d9	ef 	. 
	sbc a,c			;14da	99 	. 
	or e			;14db	b3 	. 
	ret			;14dc	c9 	. 
	rst 38h			;14dd	ff 	. 
	rst 38h			;14de	ff 	. 
	rst 18h			;14df	df 	. 
	rst 0			;14e0	c7 	. 
	add a,a			;14e1	87 	. 
	add hl,bc			;14e2	09 	. 
	sbc a,c			;14e3	99 	. 
	ld sp,hl			;14e4	f9 	. 
	defb 0fdh,08fh,097h	;illegal sequence		;14e5	fd 8f 97 	. . . 
	cp a			;14e8	bf 	. 
	rst 18h			;14e9	df 	. 
	ld (hl),l			;14ea	75 	u 
	ld h,l			;14eb	65 	e 
	ld a,c			;14ec	79 	y 
	ld (hl),e			;14ed	73 	s 
	nop			;14ee	00 	. 
	ld bc,0f7ffh		;14ef	01 ff f7 	. . . 
	res 0,e		;14f2	cb 83 	. . 
	inc bc			;14f4	03 	. 
	inc de			;14f5	13 	. 
	inc bc			;14f6	03 	. 
	daa			;14f7	27 	' 
	ld c,a			;14f8	4f 	O 
	ld d,a			;14f9	57 	W 
	ld c,(hl)			;14fa	4e 	N 
	ld (bc),a			;14fb	02 	. 
	ld b,0cbh		;14fc	06 cb 	. . 
	push af			;14fe	f5 	. 
l14ffh:
	rst 38h			;14ff	ff 	. 
	rst 38h			;1500	ff 	. 
	ld sp,hl			;1501	f9 	. 
	di			;1502	f3 	. 
	push hl			;1503	e5 	. 
	defb 0edh;next byte illegal after ed		;1504	ed 	. 
	call 09bdbh		;1505	cd db 9b 	. . . 
	nop			;1508	00 	. 
	ld bc,0dfffh		;1509	01 ff df 	. . . 
	add a,a			;150c	87 	. 
	jp l00e3h		;150d	c3 e3 00 	. . . 
	inc bc			;1510	03 	. 
	di			;1511	f3 	. 
	nop			;1512	00 	. 
	inc bc			;1513	03 	. 
	cp e			;1514	bb 	. 
	cp l			;1515	bd 	. 
	cp h			;1516	bc 	. 
	sbc a,(hl)			;1517	9e 	. 
	adc a,h			;1518	8c 	. 
	pop bc			;1519	c1 	. 
	rst 38h			;151a	ff 	. 
	di			;151b	f3 	. 
	rst 38h			;151c	ff 	. 
	rst 20h			;151d	e7 	. 
	rrca			;151e	0f 	. 
	rra			;151f	1f 	. 
	rrca			;1520	0f 	. 
	rst 38h			;1521	ff 	. 
	rst 38h			;1522	ff 	. 
	pop af			;1523	f1 	. 
	and 0c4h		;1524	e6 c4 	. . 
	call 0878dh		;1526	cd 8d 87 	. . . 
	ret nz			;1529	c0 	. 
	nop			;152a	00 	. 
	ld bc,l0fffh		;152b	01 ff 0f 	. . . 
	nop			;152e	00 	. 
	ld bc,0fbffh		;152f	01 ff fb 	. . . 
	rst 38h			;1532	ff 	. 
	defb 0fdh,007h,07fh	;illegal sequence		;1533	fd 07 7f 	. .  
	nop			;1536	00 	. 
	ld bc,0e4ffh		;1537	01 ff e4 	. . . 
	ret			;153a	c9 	. 
	in a,(0ffh)		;153b	db ff 	. . 
	sbc a,c			;153d	99 	. 
	call z,0cff0h		;153e	cc f0 cf 	. . . 
	ld (hl),a			;1541	77 	w 
	ei			;1542	fb 	. 
	nop			;1543	00 	. 
	inc bc			;1544	03 	. 
	ld sp,hl			;1545	f9 	. 
	inc bc			;1546	03 	. 
	nop			;1547	00 	. 
	ld bc,0f1ffh		;1548	01 ff f1 	. . . 
	jp (hl)			;154b	e9 	. 
	defb 0fdh,0fbh,0aeh	;illegal sequence		;154c	fd fb ae 	. . . 
	and (hl)			;154f	a6 	. 
	sbc a,(hl)			;1550	9e 	. 
	adc a,0ffh		;1551	ce ff 	. . 
	rst 38h			;1553	ff 	. 
	ld sp,hl			;1554	f9 	. 
	ret p			;1555	f0 	. 
	sbc a,b			;1556	98 	. 
	sbc a,l			;1557	9d 	. 
	cp a			;1558	bf 	. 
	nop			;1559	00 	. 
	ld bc,0f2ffh		;155a	01 ff f2 	. . . 
	jp pe,040f2h		;155d	ea f2 40 	. . @ 
	ld h,b			;1560	60 	` 
	ld d,e			;1561	53 	S 
	xor a			;1562	af 	. 
	rst 38h			;1563	ff 	. 
	rst 38h			;1564	ff 	. 
	rst 28h			;1565	ef 	. 
	out (0c1h),a		;1566	d3 c1 	. . 
	ret nz			;1568	c0 	. 
	ret z			;1569	c8 	. 
	ret nz			;156a	c0 	. 
	call po,l0000h		;156b	e4 00 00 	. . . 
	ld a,a			;156e	7f 	 
	rst 8			;156f	cf 	. 
	rst 38h			;1570	ff 	. 
	rst 0			;1571	c7 	. 
	adc a,c			;1572	89 	. 
	exx			;1573	d9 	. 
	ld sp,hl			;1574	f9 	. 
	rst 38h			;1575	ff 	. 
	rst 38h			;1576	ff 	. 
	sbc a,b			;1577	98 	. 
	add a,h			;1578	84 	. 
	add a,d			;1579	82 	. 
	pop hl			;157a	e1 	. 
	pop bc			;157b	c1 	. 
	di			;157c	f3 	. 
	nop			;157d	00 	. 
	ld bc,l07ffh		;157e	01 ff 07 	. . . 
	inc e			;1581	1c 	. 
	inc a			;1582	3c 	< 
	ld a,l			;1583	7d 	} 
	ld (hl),c			;1584	71 	q 
	ret po			;1585	e0 	. 
	ret p			;1586	f0 	. 
	ei			;1587	fb 	. 
	ret po			;1588	e0 	. 
	jr c,$+62		;1589	38 3c 	8 < 
	cp (hl)			;158b	be 	. 
	adc a,(hl)			;158c	8e 	. 
	rlca			;158d	07 	. 
	rrca			;158e	0f 	. 
	rst 18h			;158f	df 	. 
	rst 38h			;1590	ff 	. 
	rst 38h			;1591	ff 	. 
	dec sp			;1592	3b 	; 
	ld sp,l1911h		;1593	31 11 19 	1 . . 
	inc a			;1596	3c 	< 
	defb 0fdh,000h,001h	;illegal sequence		;1597	fd 00 01 	. . . 
	rst 38h			;159a	ff 	. 
	di			;159b	f3 	. 
	nop			;159c	00 	. 
	inc bc			;159d	03 	. 
sub_159eh:
	pop af			;159e	f1 	. 
	ex (sp),hl			;159f	e3 	. 
	rst 20h			;15a0	e7 	. 
	nop			;15a1	00 	. 
	inc bc			;15a2	03 	. 
	rst 38h			;15a3	ff 	. 
	dec sp			;15a4	3b 	; 
	ld sp,l1911h		;15a5	31 11 19 	1 . . 
	inc a			;15a8	3c 	< 
	defb 0fdh,000h,001h	;illegal sequence		;15a9	fd 00 01 	. . . 
	rst 38h			;15ac	ff 	. 
	di			;15ad	f3 	. 
	nop			;15ae	00 	. 
	inc bc			;15af	03 	. 
	pop af			;15b0	f1 	. 
	ex (sp),hl			;15b1	e3 	. 
	rst 20h			;15b2	e7 	. 
	nop			;15b3	00 	. 
	ld bc,l00fdh+2		;15b4	01 ff 00 	. . . 
	ld bc,04000h		;15b7	01 00 40 	. . @ 
	ld a,l			;15ba	7d 	} 
	ld a,a			;15bb	7f 	 
	ld e,a			;15bc	5f 	_ 
	ld a,a			;15bd	7f 	 
	ld (hl),e			;15be	73 	s 
	ld a,a			;15bf	7f 	 
	nop			;15c0	00 	. 
	ld bc,l1e00h		;15c1	01 00 1e 	. . . 
	cp 0f8h		;15c4	fe f8 	. . 
	call m,0f0ech		;15c6	fc ec f0 	. . . 
	cp 001h		;15c9	fe 01 	. . 
	rst 38h			;15cb	ff 	. 
	ld a,l			;15cc	7d 	} 
	ld e,c			;15cd	59 	Y 
	ld l,c			;15ce	69 	i 
	ld a,c			;15cf	79 	y 
	ld c,c			;15d0	49 	I 
	ld a,l			;15d1	7d 	} 
	add a,b			;15d2	80 	. 
	rst 38h			;15d3	ff 	. 
	cp (hl)			;15d4	be 	. 
	xor h			;15d5	ac 	. 
	rst 38h			;15d6	ff 	. 
	cp h			;15d7	bc 	. 
	or b			;15d8	b0 	. 
	cp (hl)			;15d9	be 	. 
	ret nz			;15da	c0 	. 
	ret po			;15db	e0 	. 
	nop			;15dc	00 	. 
	inc b			;15dd	04 	. 
	rst 38h			;15de	ff 	. 
	ld a,a			;15df	7f 	 
	nop			;15e0	00 	. 
	inc bc			;15e1	03 	. 
	nop			;15e2	00 	. 
	nop			;15e3	00 	. 
	dec b			;15e4	05 	. 
	rst 38h			;15e5	ff 	. 
	nop			;15e6	00 	. 
	ld bc,l3f00h		;15e7	01 00 3f 	. . ? 
	rlca			;15ea	07 	. 
	rst 38h			;15eb	ff 	. 
	cp 0ffh		;15ec	fe ff 	. . 
	rst 38h			;15ee	ff 	. 
	cp 0ffh		;15ef	fe ff 	. . 
	nop			;15f1	00 	. 
	adc a,a			;15f2	8f 	. 
	nop			;15f3	00 	. 
	ld bc,0dcffh		;15f4	01 ff dc 	. . . 
	and 0feh		;15f7	e6 fe 	. . 
	or (hl)			;15f9	b6 	. 
	cp 0e0h		;15fa	fe e0 	. . 
	ret m			;15fc	f8 	. 
	call m,l00fdh+1		;15fd	fc fe 00 	. . . 
	inc b			;1600	04 	. 
	rst 38h			;1601	ff 	. 
	rst 38h			;1602	ff 	. 
	rlca			;1603	07 	. 
	rst 38h			;1604	ff 	. 
	dec b			;1605	05 	. 
	inc bc			;1606	03 	. 
	ld b,007h		;1607	06 07 	. . 
	rrca			;1609	0f 	. 
	nop			;160a	00 	. 
	ld bc,0f7ffh		;160b	01 ff f7 	. . . 
	res 0,e		;160e	cb 83 	. . 
	nop			;1610	00 	. 
	inc bc			;1611	03 	. 
	inc bc			;1612	03 	. 
	rst 38h			;1613	ff 	. 
	rlca			;1614	07 	. 
	dec b			;1615	05 	. 
	rlca			;1616	07 	. 
	rst 38h			;1617	ff 	. 
	inc bc			;1618	03 	. 
	set 6,l		;1619	cb f5 	. . 
	rst 38h			;161b	ff 	. 
	rst 38h			;161c	ff 	. 
	ld sp,hl			;161d	f9 	. 
	di			;161e	f3 	. 
	and 0eeh		;161f	e6 ee 	. . 
	adc a,0dch		;1621	ce dc 	. . 
	sbc a,h			;1623	9c 	. 
	rst 38h			;1624	ff 	. 
	rst 38h			;1625	ff 	. 
	ld a,a			;1626	7f 	 
	ccf			;1627	3f 	? 
	rra			;1628	1f 	. 
	nop			;1629	00 	. 
	inc bc			;162a	03 	. 
	rrca			;162b	0f 	. 
	nop			;162c	00 	. 
	inc bc			;162d	03 	. 
	cp h			;162e	bc 	. 
	cp (hl)			;162f	be 	. 
	cp a			;1630	bf 	. 
	sbc a,(hl)			;1631	9e 	. 
	adc a,h			;1632	8c 	. 
	pop bc			;1633	c1 	. 
	rst 38h			;1634	ff 	. 
	rrca			;1635	0f 	. 
	rst 38h			;1636	ff 	. 
	rra			;1637	1f 	. 
	rst 38h			;1638	ff 	. 
	rst 38h			;1639	ff 	. 
	rrca			;163a	0f 	. 
	rst 38h			;163b	ff 	. 
	rst 38h			;163c	ff 	. 
	pop af			;163d	f1 	. 
	rst 20h			;163e	e7 	. 
	rst 0			;163f	c7 	. 
	adc a,08eh		;1640	ce 8e 	. . 
	add a,a			;1642	87 	. 
	ret nz			;1643	c0 	. 
	rst 38h			;1644	ff 	. 
	rst 38h			;1645	ff 	. 
	rst 38h			;1646	ff 	. 
	rlca			;1647	07 	. 
	rst 38h			;1648	ff 	. 
	inc bc			;1649	03 	. 
	nop			;164a	00 	. 
	ld bc,07fffh		;164b	01 ff 7f 	. .  
	nop			;164e	00 	. 
	ld bc,0e7ffh		;164f	01 ff e7 	. . . 
	adc a,0dch		;1652	ce dc 	. . 
	rst 38h			;1654	ff 	. 
	sbc a,(hl)			;1655	9e 	. 
	rst 8			;1656	cf 	. 
	ret p			;1657	f0 	. 
	nop			;1658	00 	. 
	ld bc,08fffh		;1659	01 ff 8f 	. . . 
	nop			;165c	00 	. 
	inc b			;165d	04 	. 
	rlca			;165e	07 	. 
	rst 38h			;165f	ff 	. 
	rst 38h			;1660	ff 	. 
	rst 38h			;1661	ff 	. 
	ret po			;1662	e0 	. 
	rst 38h			;1663	ff 	. 
	and b			;1664	a0 	. 
	ret nz			;1665	c0 	. 
	ld h,b			;1666	60 	` 
	ret po			;1667	e0 	. 
	ret p			;1668	f0 	. 
	rlca			;1669	07 	. 
	rra			;166a	1f 	. 
	ccf			;166b	3f 	? 
	ld a,a			;166c	7f 	 
	nop			;166d	00 	. 
	inc b			;166e	04 	. 
	rst 38h			;166f	ff 	. 
	ret po			;1670	e0 	. 
	and b			;1671	a0 	. 
	ret po			;1672	e0 	. 
	rst 38h			;1673	ff 	. 
	ret nz			;1674	c0 	. 
	out (0afh),a		;1675	d3 af 	. . 
	rst 38h			;1677	ff 	. 
	rst 38h			;1678	ff 	. 
	rst 28h			;1679	ef 	. 
	out (0c1h),a		;167a	d3 c1 	. . 
	nop			;167c	00 	. 
	inc bc			;167d	03 	. 
	ret nz			;167e	c0 	. 
	ret po			;167f	e0 	. 
	nop			;1680	00 	. 
	nop			;1681	00 	. 
	pop af			;1682	f1 	. 
	adc a,e			;1683	8b 	. 
	rst 38h			;1684	ff 	. 
	ld b,009h		;1685	06 09 	. . 
	ld de,0fbb1h		;1687	11 b1 fb 	. . . 
	rst 20h			;168a	e7 	. 
	jr $+6		;168b	18 04 	. . 
	ld (bc),a			;168d	02 	. 
	rst 38h			;168e	ff 	. 
	ld bc,0e382h		;168f	01 82 e3 	. . . 
	nop			;1692	00 	. 
	ld bc,0fcffh		;1693	01 ff fc 	. . . 
	ret p			;1696	f0 	. 
	pop hl			;1697	e1 	. 
	pop bc			;1698	c1 	. 
	ret nz			;1699	c0 	. 
	add a,b			;169a	80 	. 
	add a,e			;169b	83 	. 
	nop			;169c	00 	. 
	ld bc,l3fffh		;169d	01 ff 3f 	. . ? 
	rrca			;16a0	0f 	. 
	add a,a			;16a1	87 	. 
	add a,e			;16a2	83 	. 
	inc bc			;16a3	03 	. 
	ld bc,00fc1h		;16a4	01 c1 0f 	. . . 
	ret nc			;16a7	d0 	. 
	rst 38h			;16a8	ff 	. 
	jr nz,$+1		;16a9	20 ff 	  . 
	djnz l16cdh		;16ab	10 20 	.   
	ld hl,0a21ch		;16ad	21 1c a2 	! . . 
	nop			;16b0	00 	. 
	inc bc			;16b1	03 	. 
	ld b,c			;16b2	41 	A 
	add a,e			;16b3	83 	. 
	add a,(hl)			;16b4	86 	. 
	call z,0d00fh		;16b5	cc 0f d0 	. . . 
	rst 38h			;16b8	ff 	. 
	jr nz,$+1		;16b9	20 ff 	  . 
	djnz l16ddh		;16bb	10 20 	.   
	ld hl,0a21ch		;16bd	21 1c a2 	! . . 
	nop			;16c0	00 	. 
	inc bc			;16c1	03 	. 
	ld b,c			;16c2	41 	A 
	add a,e			;16c3	83 	. 
	add a,(hl)			;16c4	86 	. 
	call z,l0100h		;16c5	cc 00 01 	. . . 
	rst 38h			;16c8	ff 	. 
	nop			;16c9	00 	. 
	rlca			;16ca	07 	. 
	add a,b			;16cb	80 	. 
	nop			;16cc	00 	. 
l16cdh:
	ld bc,01fffh		;16cd	01 ff 1f 	. . . 
	inc bc			;16d0	03 	. 
	nop			;16d1	00 	. 
	dec b			;16d2	05 	. 
	ld bc,l0100h		;16d3	01 00 01 	. . . 
	rst 38h			;16d6	ff 	. 
	cp a			;16d7	bf 	. 
	add a,a			;16d8	87 	. 
	nop			;16d9	00 	. 
	dec b			;16da	05 	. 
	add a,e			;16db	83 	. 
	nop			;16dc	00 	. 
l16ddh:
	ld bc,0dfffh		;16dd	01 ff df 	. . . 
	jp l0500h		;16e0	c3 00 05 	. . . 
	pop bc			;16e3	c1 	. 
	add a,b			;16e4	80 	. 
	nop			;16e5	00 	. 
	inc b			;16e6	04 	. 
	nop			;16e7	00 	. 
	add a,b			;16e8	80 	. 
	rst 38h			;16e9	ff 	. 
	rst 38h			;16ea	ff 	. 
	nop			;16eb	00 	. 
	ld b,000h		;16ec	06 00 	. . 
	rst 38h			;16ee	ff 	. 
	rst 38h			;16ef	ff 	. 
	ccf			;16f0	3f 	? 
	rlca			;16f1	07 	. 
	ld (bc),a			;16f2	02 	. 
	rst 38h			;16f3	ff 	. 
	nop			;16f4	00 	. 
	ld bc,sub_0300h		;16f5	01 00 03 	. . . 
	rst 38h			;16f8	ff 	. 
	rrca			;16f9	0f 	. 
	ld bc,l0500h		;16fa	01 00 05 	. . . 
	nop			;16fd	00 	. 
	ld a,a			;16fe	7f 	 
	sbc a,a			;16ff	9f 	. 
	rst 38h			;1700	ff 	. 
	rlca			;1701	07 	. 
	add hl,bc			;1702	09 	. 
	sub c			;1703	91 	. 
	or c			;1704	b1 	. 
	ld sp,hl			;1705	f9 	. 
	ld (hl),a			;1706	77 	w 
	ld l,a			;1707	6f 	o 
	ld b,l			;1708	45 	E 
	dec h			;1709	25 	% 
	adc a,c			;170a	89 	. 
	sbc a,h			;170b	9c 	. 
	add a,c			;170c	81 	. 
	add a,e			;170d	83 	. 
	nop			;170e	00 	. 
	inc b			;170f	04 	. 
	rst 38h			;1710	ff 	. 
	ei			;1711	fb 	. 
	rst 28h			;1712	ef 	. 
	nop			;1713	00 	. 
	ld bc,0dfffh		;1714	01 ff df 	. . . 
	or a			;1717	b7 	. 
	xor l			;1718	ad 	. 
	or (hl)			;1719	b6 	. 
	cp 0fah		;171a	fe fa 	. . 
	nop			;171c	00 	. 
	inc b			;171d	04 	. 
	rst 38h			;171e	ff 	. 
	cp 0fch		;171f	fe fc 	. . 
	ret m			;1721	f8 	. 
	rst 38h			;1722	ff 	. 
	ret p			;1723	f0 	. 
	rst 38h			;1724	ff 	. 
	ret po			;1725	e0 	. 
	nop			;1726	00 	. 
	ld bc,l0fffh		;1727	01 ff 0f 	. . . 
	inc bc			;172a	03 	. 
	nop			;172b	00 	. 
	inc b			;172c	04 	. 
	ld bc,l0002h+1		;172d	01 03 00 	. . . 
	dec b			;1730	05 	. 
	ret nz			;1731	c0 	. 
	pop hl			;1732	e1 	. 
	di			;1733	f3 	. 
	nop			;1734	00 	. 
	ld bc,l00fdh+2		;1735	01 ff 00 	. . . 
	inc bc			;1738	03 	. 
	inc bc			;1739	03 	. 
	rst 38h			;173a	ff 	. 
	rlca			;173b	07 	. 
	rrca			;173c	0f 	. 
	nop			;173d	00 	. 
	inc bc			;173e	03 	. 
	rst 38h			;173f	ff 	. 
	cp 0ffh		;1740	fe ff 	. . 
	ret m			;1742	f8 	. 
	rst 38h			;1743	ff 	. 
	ret p			;1744	f0 	. 
	ret m			;1745	f8 	. 
	rst 38h			;1746	ff 	. 
	rst 38h			;1747	ff 	. 
	rlca			;1748	07 	. 
	rst 38h			;1749	ff 	. 
	inc bc			;174a	03 	. 
	rst 38h			;174b	ff 	. 
	ld bc,0ff03h		;174c	01 03 ff 	. . . 
	rst 38h			;174f	ff 	. 
	ret m			;1750	f8 	. 
	ret p			;1751	f0 	. 
	nop			;1752	00 	. 
	inc bc			;1753	03 	. 
	ret po			;1754	e0 	. 
	ret p			;1755	f0 	. 
	nop			;1756	00 	. 
	ld bc,087ffh		;1757	01 ff 87 	. . . 
	inc bc			;175a	03 	. 
	nop			;175b	00 	. 
	inc b			;175c	04 	. 
	ld bc,l0703h		;175d	01 03 07 	. . . 
	xor 0f6h		;1760	ee f6 	. . 
	and d			;1762	a2 	. 
	and h			;1763	a4 	. 
	sub c			;1764	91 	. 
	add hl,sp			;1765	39 	9 
	add a,c			;1766	81 	. 
	pop bc			;1767	c1 	. 
	cp 0f9h		;1768	fe f9 	. . 
	rst 38h			;176a	ff 	. 
	ret po			;176b	e0 	. 
	sub b			;176c	90 	. 
	adc a,c			;176d	89 	. 
	adc a,l			;176e	8d 	. 
	sbc a,a			;176f	9f 	. 
	defb 0edh;next byte illegal after ed		;1770	ed 	. 
	or l			;1771	b5 	. 
	defb 0edh;next byte illegal after ed		;1772	ed 	. 
	ld a,a			;1773	7f 	 
	ld e,a			;1774	5f 	_ 
	ld a,a			;1775	7f 	 
	nop			;1776	00 	. 
	ld b,0ffh		;1777	06 ff 	. . 
	rst 18h			;1779	df 	. 
	rst 30h			;177a	f7 	. 
	nop			;177b	00 	. 
	ld bc,0fbffh		;177c	01 ff fb 	. . . 
	nop			;177f	00 	. 
l1780h:
	nop			;1780	00 	. 
	ld a,a			;1781	7f 	 
	nop			;1782	00 	. 
	rrca			;1783	0f 	. 
	rst 38h			;1784	ff 	. 
	rlca			;1785	07 	. 
	rra			;1786	1f 	. 
	ccf			;1787	3f 	? 
	rst 38h			;1788	ff 	. 
	ld a,a			;1789	7f 	 
	nop			;178a	00 	. 
	inc bc			;178b	03 	. 
	rst 38h			;178c	ff 	. 
	ret po			;178d	e0 	. 
	ret m			;178e	f8 	. 
	call m,0feffh		;178f	fc ff fe 	. . . 
	nop			;1792	00 	. 
	inc hl			;1793	23 	# 
	rst 38h			;1794	ff 	. 
	nop			;1795	00 	. 
	add hl,bc			;1796	09 	. 
	nop			;1797	00 	. 
	ld e,002h		;1798	1e 02 	. . 
	nop			;179a	00 	. 
	dec b			;179b	05 	. 
	nop			;179c	00 	. 
	ld bc,l053dh		;179d	01 3d 05 	. = . 
	nop			;17a0	00 	. 
	dec b			;17a1	05 	. 
	ld bc,09e80h		;17a2	01 80 9e 	. . . 
	add a,d			;17a5	82 	. 
	nop			;17a6	00 	. 
	ld b,080h		;17a7	06 80 	. . 
	nop			;17a9	00 	. 
	inc b			;17aa	04 	. 
	nop			;17ab	00 	. 
	add a,b			;17ac	80 	. 
	ld a,a			;17ad	7f 	 
	nop			;17ae	00 	. 
	rlca			;17af	07 	. 
	nop			;17b0	00 	. 
	nop			;17b1	00 	. 
	ld bc,l00fdh+2		;17b2	01 ff 00 	. . . 
	ld bc,l3f00h		;17b5	01 00 3f 	. . ? 
	rlca			;17b8	07 	. 
	ld (bc),a			;17b9	02 	. 
	rst 38h			;17ba	ff 	. 
	nop			;17bb	00 	. 
	ld bc,0fffeh		;17bc	01 fe ff 	. . . 
	nop			;17bf	00 	. 
	rrca			;17c0	0f 	. 
	ld bc,l0500h		;17c1	01 00 05 	. . . 
	nop			;17c4	00 	. 
	ret po			;17c5	e0 	. 
	ret m			;17c6	f8 	. 
	call m,l00fdh+1		;17c7	fc fe 00 	. . . 
	inc b			;17ca	04 	. 
	rst 38h			;17cb	ff 	. 
	nop			;17cc	00 	. 
	inc bc			;17cd	03 	. 
	rlca			;17ce	07 	. 
	rrca			;17cf	0f 	. 
	nop			;17d0	00 	. 
	inc bc			;17d1	03 	. 
	rlca			;17d2	07 	. 
	rrca			;17d3	0f 	. 
	nop			;17d4	00 	. 
	ld bc,0f7ffh		;17d5	01 ff f7 	. . . 
	res 0,e		;17d8	cb 83 	. . 
	nop			;17da	00 	. 
	inc bc			;17db	03 	. 
	inc bc			;17dc	03 	. 
	nop			;17dd	00 	. 
	inc b			;17de	04 	. 
	rlca			;17df	07 	. 
	rst 38h			;17e0	ff 	. 
	inc bc			;17e1	03 	. 
	set 6,l		;17e2	cb f5 	. . 
	rst 38h			;17e4	ff 	. 
	rst 38h			;17e5	ff 	. 
	ret m			;17e6	f8 	. 
	ret p			;17e7	f0 	. 
	rst 38h			;17e8	ff 	. 
	ret po			;17e9	e0 	. 
	rst 38h			;17ea	ff 	. 
	ret nz			;17eb	c0 	. 
	add a,b			;17ec	80 	. 
	nop			;17ed	00 	. 
	ld bc,l0fffh		;17ee	01 ff 0f 	. . . 
	inc bc			;17f1	03 	. 
	nop			;17f2	00 	. 
	inc b			;17f3	04 	. 
	ld bc,l0002h+1		;17f4	01 03 00 	. . . 
	rlca			;17f7	07 	. 
	add a,b			;17f8	80 	. 
	pop bc			;17f9	c1 	. 
	nop			;17fa	00 	. 
	inc bc			;17fb	03 	. 
	inc bc			;17fc	03 	. 
	rst 38h			;17fd	ff 	. 
	rlca			;17fe	07 	. 
	rst 38h			;17ff	ff 	. 
	rrca			;1800	0f 	. 
	rst 38h			;1801	ff 	. 
	rst 38h			;1802	ff 	. 
	ret p			;1803	f0 	. 
	ret po			;1804	e0 	. 
	rst 38h			;1805	ff 	. 
	ret nz			;1806	c0 	. 
	rst 38h			;1807	ff 	. 
	add a,b			;1808	80 	. 
	ret nz			;1809	c0 	. 
	nop			;180a	00 	. 
	ld bc,l07ffh		;180b	01 ff 07 	. . . 
	rst 38h			;180e	ff 	. 
	inc bc			;180f	03 	. 
	rst 38h			;1810	ff 	. 
	ld bc,07f03h		;1811	01 03 7f 	. .  
	nop			;1814	00 	. 
	ld bc,0e0ffh		;1815	01 ff e0 	. . . 
	rst 38h			;1818	ff 	. 
	ret nz			;1819	c0 	. 
	rst 38h			;181a	ff 	. 
	add a,b			;181b	80 	. 
	ret nz			;181c	c0 	. 
	ret p			;181d	f0 	. 
	add a,a			;181e	87 	. 
	inc bc			;181f	03 	. 
	nop			;1820	00 	. 
	inc b			;1821	04 	. 
	ld bc,l0703h		;1822	01 03 07 	. . . 
	nop			;1825	00 	. 
	inc bc			;1826	03 	. 
	ret po			;1827	e0 	. 
	ret p			;1828	f0 	. 
	nop			;1829	00 	. 
	inc bc			;182a	03 	. 
	ret po			;182b	e0 	. 
	ret p			;182c	f0 	. 
	rlca			;182d	07 	. 
	rra			;182e	1f 	. 
	ccf			;182f	3f 	? 
	ld a,a			;1830	7f 	 
l1831h:
	nop			;1831	00 	. 
	inc b			;1832	04 	. 
	rst 38h			;1833	ff 	. 
	nop			;1834	00 	. 
	inc bc			;1835	03 	. 
	ret po			;1836	e0 	. 
	rst 38h			;1837	ff 	. 
	ret nz			;1838	c0 	. 
	out (0afh),a		;1839	d3 af 	. . 
	rst 38h			;183b	ff 	. 
	rst 38h			;183c	ff 	. 
	rst 28h			;183d	ef 	. 
	out (0c1h),a		;183e	d3 c1 	. . 
	nop			;1840	00 	. 
	inc bc			;1841	03 	. 
	ret nz			;1842	c0 	. 
	ret po			;1843	e0 	. 
	nop			;1844	00 	. 
	nop			;1845	00 	. 
	rst 38h			;1846	ff 	. 
	rst 38h			;1847	ff 	. 
	ld sp,hl			;1848	f9 	. 
	ret p			;1849	f0 	. 
	sbc a,b			;184a	98 	. 
	sbc a,l			;184b	9d 	. 
	nop			;184c	00 	. 
	inc bc			;184d	03 	. 
	rst 38h			;184e	ff 	. 
	nop			;184f	00 	. 
	inc bc			;1850	03 	. 
	ld a,a			;1851	7f 	 
	rra			;1852	1f 	. 
	ccf			;1853	3f 	? 
	adc a,(hl)			;1854	8e 	. 
	ex (sp),hl			;1855	e3 	. 
	cp 0ffh		;1856	fe ff 	. . 
	pop hl			;1858	e1 	. 
	pop af			;1859	f1 	. 
	ret m			;185a	f8 	. 
	call m,0ffffh		;185b	fc ff ff 	. . . 
	ccf			;185e	3f 	? 
	ld (bc),a			;185f	02 	. 
	rst 38h			;1860	ff 	. 
	inc c			;1861	0c 	. 
	adc a,(hl)			;1862	8e 	. 
	sbc a,(hl)			;1863	9e 	. 
	sbc a,a			;1864	9f 	. 
	rst 38h			;1865	ff 	. 
	rst 38h			;1866	ff 	. 
	pop af			;1867	f1 	. 
	call po,0feeeh		;1868	e4 ee fe 	. . . 
	or 0e3h		;186b	f6 e3 	. . 
	inc hl			;186d	23 	# 
	nop			;186e	00 	. 
	ld bc,0efffh		;186f	01 ff ef 	. . . 
	nop			;1872	00 	. 
	inc bc			;1873	03 	. 
	ld c,a			;1874	4f 	O 
	sbc a,a			;1875	9f 	. 
	sbc a,(hl)			;1876	9e 	. 
	call z,sub_00f3h		;1877	cc f3 00 	. . . 
	ld bc,07fffh		;187a	01 ff 7f 	. .  
	sbc a,d			;187d	9a 	. 
	ld h,d			;187e	62 	b 
	dec sp			;187f	3b 	; 
	add a,a			;1880	87 	. 
	nop			;1881	00 	. 
	ld bc,0deffh		;1882	01 ff de 	. . . 
	nop			;1885	00 	. 
	ld bc,073ffh		;1886	01 ff 73 	. . s 
	ld de,l3010h		;1889	11 10 30 	. . 0 
	ret m			;188c	f8 	. 
	rst 38h			;188d	ff 	. 
	rst 38h			;188e	ff 	. 
	cp a			;188f	bf 	. 
	rst 38h			;1890	ff 	. 
	ld a,07fh		;1891	3e 7f 	>  
	scf			;1893	37 	7 
	or a			;1894	b7 	. 
	ei			;1895	fb 	. 
	nop			;1896	00 	. 
	ld bc,l00fdh+2		;1897	01 ff 00 	. . . 
	inc bc			;189a	03 	. 
	ld a,a			;189b	7f 	 
	rra			;189c	1f 	. 
	ccf			;189d	3f 	? 
	adc a,(hl)			;189e	8e 	. 
	ex (sp),hl			;189f	e3 	. 
	cp 0f2h		;18a0	fe f2 	. . 
	jp nc,07132h		;18a2	d2 32 71 	. 2 q 
	ld h,c			;18a5	61 	a 
	inc hl			;18a6	23 	# 
	nop			;18a7	00 	. 
	ld bc,07fffh		;18a8	01 ff 7f 	. .  
	ex (sp),hl			;18ab	e3 	. 
	ld a,d			;18ac	7a 	z 
	ld a,01eh		;18ad	3e 1e 	> . 
	inc e			;18af	1c 	. 
	call nz,0ffffh		;18b0	c4 ff ff 	. . . 
	pop af			;18b3	f1 	. 
	call po,0feeeh		;18b4	e4 ee fe 	. . . 
	or 0e3h		;18b7	f6 e3 	. . 
	inc hl			;18b9	23 	# 
	nop			;18ba	00 	. 
	ld bc,0dfffh		;18bb	01 ff df 	. . . 
	rst 0			;18be	c7 	. 
	add a,a			;18bf	87 	. 
	add hl,bc			;18c0	09 	. 
	sbc a,c			;18c1	99 	. 
	ld sp,hl			;18c2	f9 	. 
	defb 0fdh,0f3h,09eh	;illegal sequence		;18c3	fd f3 9e 	. . . 
	rst 38h			;18c6	ff 	. 
	rst 28h			;18c7	ef 	. 
	jp 0ff47h		;18c8	c3 47 ff 	. G . 
	rst 38h			;18cb	ff 	. 
	defb 0fdh,0dfh,0bfh	;illegal sequence		;18cc	fd df bf 	. . . 
	ccf			;18cf	3f 	? 
	rra			;18d0	1f 	. 
	nop			;18d1	00 	. 
	inc bc			;18d2	03 	. 
	rst 38h			;18d3	ff 	. 
	nop			;18d4	00 	. 
	nop			;18d5	00 	. 
	rlca			;18d6	07 	. 
	rra			;18d7	1f 	. 
	ccf			;18d8	3f 	? 
	ld a,a			;18d9	7f 	 
	nop			;18da	00 	. 
	dec b			;18db	05 	. 
	rst 38h			;18dc	ff 	. 
	sbc a,b			;18dd	98 	. 
	add a,h			;18de	84 	. 
	add a,d			;18df	82 	. 
	pop hl			;18e0	e1 	. 
	pop bc			;18e1	c1 	. 
	di			;18e2	f3 	. 
	nop			;18e3	00 	. 
	ld bc,07effh		;18e4	01 ff 7e 	. . ~ 
	ld h,c			;18e7	61 	a 
	ld hl,l1831h		;18e8	21 31 18 	! 1 . 
	inc c			;18eb	0c 	. 
	rlca			;18ec	07 	. 
	nop			;18ed	00 	. 
	ld bc,l3f00h		;18ee	01 00 3f 	. . ? 
	ld (bc),a			;18f1	02 	. 
	rst 38h			;18f2	ff 	. 
	inc c			;18f3	0c 	. 
	adc a,(hl)			;18f4	8e 	. 
	sbc a,(hl)			;18f5	9e 	. 
	sbc a,e			;18f6	9b 	. 
	ret p			;18f7	f0 	. 
	rst 38h			;18f8	ff 	. 
	rst 38h			;18f9	ff 	. 
	dec sp			;18fa	3b 	; 
	ld sp,l1911h		;18fb	31 11 19 	1 . . 
	inc a			;18fe	3c 	< 
	defb 0fdh,000h,001h	;illegal sequence		;18ff	fd 00 01 	. . . 
	rst 38h			;1902	ff 	. 
	di			;1903	f3 	. 
	nop			;1904	00 	. 
	inc bc			;1905	03 	. 
	pop af			;1906	f1 	. 
	ex (sp),hl			;1907	e3 	. 
	rst 20h			;1908	e7 	. 
	nop			;1909	00 	. 
	inc bc			;190a	03 	. 
	rst 38h			;190b	ff 	. 
	ld a,a			;190c	7f 	 
	sbc a,d			;190d	9a 	. 
	ld h,d			;190e	62 	b 
	dec sp			;190f	3b 	; 
	add a,a			;1910	87 	. 
l1911h:
	ret m			;1911	f8 	. 
	rst 38h			;1912	ff 	. 
	rst 38h			;1913	ff 	. 
	ld (hl),e			;1914	73 	s 
	ld de,l3010h		;1915	11 10 30 	. . 0 
	ret m			;1918	f8 	. 
	rrca			;1919	0f 	. 
	ld a,a			;191a	7f 	 
	rst 8			;191b	cf 	. 
	rst 38h			;191c	ff 	. 
	rst 0			;191d	c7 	. 
	adc a,c			;191e	89 	. 
	exx			;191f	d9 	. 
	ld sp,hl			;1920	f9 	. 
	rst 38h			;1921	ff 	. 
	rst 38h			;1922	ff 	. 
	sbc a,b			;1923	98 	. 
	add a,h			;1924	84 	. 
	add a,d			;1925	82 	. 
	pop hl			;1926	e1 	. 
	pop bc			;1927	c1 	. 
	di			;1928	f3 	. 
	nop			;1929	00 	. 
	ld bc,0feffh		;192a	01 ff fe 	. . . 
	jp p,l32d2h		;192d	f2 d2 32 	. . 2 
	ld (hl),c			;1930	71 	q 
	ld h,c			;1931	61 	a 
	inc hl			;1932	23 	# 
	cp 07fh		;1933	fe 7f 	.  
	ex (sp),hl			;1935	e3 	. 
	ld a,d			;1936	7a 	z 
	ld a,01eh		;1937	3e 1e 	> . 
	inc e			;1939	1c 	. 
	call nz,0ff7fh		;193a	c4 7f ff 	.  . 
	rst 38h			;193d	ff 	. 
	dec sp			;193e	3b 	; 
	ld sp,l1911h		;193f	31 11 19 	1 . . 
	inc a			;1942	3c 	< 
	defb 0fdh,0e0h,0f8h	;illegal sequence		;1943	fd e0 f8 	. . . 
	call m,l00fdh+1		;1946	fc fe 00 	. . . 
	dec b			;1949	05 	. 
l194ah:
	rst 38h			;194a	ff 	. 
	sbc a,(hl)			;194b	9e 	. 
	rst 38h			;194c	ff 	. 
	rst 28h			;194d	ef 	. 
	jp 0fc47h		;194e	c3 47 fc 	. G . 
	add a,b			;1951	80 	. 
	nop			;1952	00 	. 
	ld bc,0dfffh		;1953	01 ff df 	. . . 
	cp (hl)			;1956	be 	. 
	inc a			;1957	3c 	< 
	jr l194ah		;1958	18 f0 	. . 
	rst 38h			;195a	ff 	. 
	nop			;195b	00 	. 
	nop			;195c	00 	. 
	nop			;195d	00 	. 
	cp 0f9h		;195e	fe f9 	. . 
	rst 38h			;1960	ff 	. 
	ret po			;1961	e0 	. 
	sub b			;1962	90 	. 
	adc a,c			;1963	89 	. 
	adc a,l			;1964	8d 	. 
	rst 18h			;1965	df 	. 
	rst 20h			;1966	e7 	. 
	jr $+6		;1967	18 04 	. . 
	ld (bc),a			;1969	02 	. 
	rst 38h			;196a	ff 	. 
	ld bc,0e382h		;196b	01 82 e3 	. . . 
	nop			;196e	00 	. 
	ld a,(bc)			;196f	0a 	. 
	rst 38h			;1970	ff 	. 
	nop			;1971	00 	. 
	inc bc			;1972	03 	. 
	rst 30h			;1973	f7 	. 
	rst 28h			;1974	ef 	. 
	rst 38h			;1975	ff 	. 
	rst 38h			;1976	ff 	. 
	rrca			;1977	0f 	. 
	ret nc			;1978	d0 	. 
	rst 38h			;1979	ff 	. 
	jr nz,$+1		;197a	20 ff 	  . 
	djnz l199eh		;197c	10 20 	.   
	ld hl,0a21ch		;197e	21 1c a2 	! . . 
	nop			;1981	00 	. 
	inc bc			;1982	03 	. 
	ld b,c			;1983	41 	A 
	add a,e			;1984	83 	. 
	add a,(hl)			;1985	86 	. 
	call z,0fff3h		;1986	cc f3 ff 	. . . 
	rst 38h			;1989	ff 	. 
	ld a,a			;198a	7f 	 
	sbc a,a			;198b	9f 	. 
	rst 0			;198c	c7 	. 
	rst 38h			;198d	ff 	. 
	rst 38h			;198e	ff 	. 
	sbc a,000h		;198f	de 00 	. . 
	rlca			;1991	07 	. 
	rst 38h			;1992	ff 	. 
	pop af			;1993	f1 	. 
	adc a,e			;1994	8b 	. 
	rst 38h			;1995	ff 	. 
	ld b,009h		;1996	06 09 	. . 
	ld de,0fbb1h		;1998	11 b1 fb 	. . . 
	rst 20h			;199b	e7 	. 
	jr $+6		;199c	18 04 	. . 
l199eh:
	ld (bc),a			;199e	02 	. 
	rst 38h			;199f	ff 	. 
	ld bc,0e382h		;19a0	01 82 e3 	. . . 
	ld a,a			;19a3	7f 	 
	rst 38h			;19a4	ff 	. 
	rst 38h			;19a5	ff 	. 
	rst 18h			;19a6	df 	. 
	sbc a,a			;19a7	9f 	. 
	cp a			;19a8	bf 	. 
	nop			;19a9	00 	. 
	inc bc			;19aa	03 	. 
	rst 38h			;19ab	ff 	. 
	rra			;19ac	1f 	. 
	add a,a			;19ad	87 	. 
	jp 0e7e3h		;19ae	c3 e3 e7 	. . . 
	rst 38h			;19b1	ff 	. 
	rst 38h			;19b2	ff 	. 
	rrca			;19b3	0f 	. 
	ret nc			;19b4	d0 	. 
	rst 38h			;19b5	ff 	. 
	jr nz,$+1		;19b6	20 ff 	  . 
	djnz l19dah		;19b8	10 20 	.   
	ld hl,09f7fh		;19ba	21 7f 9f 	!  . 
	rst 38h			;19bd	ff 	. 
	rlca			;19be	07 	. 
	add hl,bc			;19bf	09 	. 
	sub c			;19c0	91 	. 
	or c			;19c1	b1 	. 
	ld sp,hl			;19c2	f9 	. 
	di			;19c3	f3 	. 
	nop			;19c4	00 	. 
	ld bc,l30ffh		;19c5	01 ff 30 	. . 0 
	ld sp,l007dh		;19c8	31 7d 00 	1 } . 
	inc bc			;19cb	03 	. 
	rst 38h			;19cc	ff 	. 
	defb 0fdh,0e7h,0c7h	;illegal sequence		;19cd	fd e7 c7 	. . . 
	rst 8			;19d0	cf 	. 
	nop			;19d1	00 	. 
	inc b			;19d2	04 	. 
	rst 38h			;19d3	ff 	. 
	nop			;19d4	00 	. 
	nop			;19d5	00 	. 
	rlca			;19d6	07 	. 
	rra			;19d7	1f 	. 
	ccf			;19d8	3f 	? 
	ld a,a			;19d9	7f 	 
l19dah:
	nop			;19da	00 	. 
	inc c			;19db	0c 	. 
	rst 38h			;19dc	ff 	. 
	ld a,(hl)			;19dd	7e 	~ 
	ld h,c			;19de	61 	a 
	ld hl,l1831h		;19df	21 31 18 	! 1 . 
	inc c			;19e2	0c 	. 
	rlca			;19e3	07 	. 
	nop			;19e4	00 	. 
	ld bc,l3f00h		;19e5	01 00 3f 	. . ? 
	ld (bc),a			;19e8	02 	. 
	rst 38h			;19e9	ff 	. 
	inc b			;19ea	04 	. 
	add a,(hl)			;19eb	86 	. 
	adc a,(hl)			;19ec	8e 	. 
	sbc a,e			;19ed	9b 	. 
	ret p			;19ee	f0 	. 
	nop			;19ef	00 	. 
	ld (de),a			;19f0	12 	. 
	rst 38h			;19f1	ff 	. 
	ld a,a			;19f2	7f 	 
	ld a,(de)			;19f3	1a 	. 
	ld (bc),a			;19f4	02 	. 
	inc bc			;19f5	03 	. 
	add a,a			;19f6	87 	. 
	ret m			;19f7	f8 	. 
	rst 38h			;19f8	ff 	. 
	rst 38h			;19f9	ff 	. 
	ld (hl),e			;19fa	73 	s 
	ld de,l3010h		;19fb	11 10 30 	. . 0 
	ret m			;19fe	f8 	. 
	rrca			;19ff	0f 	. 
	ld a,a			;1a00	7f 	 
	nop			;1a01	00 	. 
	rrca			;1a02	0f 	. 
	rst 38h			;1a03	ff 	. 
	cp 0f2h		;1a04	fe f2 	. . 
	jp nc,l1112h		;1a06	d2 12 11 	. . . 
	ld hl,0fe23h		;1a09	21 23 fe 	! # . 
	ld a,a			;1a0c	7f 	 
	inc bc			;1a0d	03 	. 
	nop			;1a0e	00 	. 
	inc bc			;1a0f	03 	. 
	ld (bc),a			;1a10	02 	. 
	inc b			;1a11	04 	. 
	call nz,sub_007fh		;1a12	c4 7f 00 	.  . 
l1a15h:
	ex af,af'			;1a15	08 	. 
	rst 38h			;1a16	ff 	. 
	ret po			;1a17	e0 	. 
	ret m			;1a18	f8 	. 
	call m,l00fdh+1		;1a19	fc fe 00 	. . . 
	dec b			;1a1c	05 	. 
l1a1dh:
	rst 38h			;1a1d	ff 	. 
	sbc a,(hl)			;1a1e	9e 	. 
	jr nz,l1a42h		;1a1f	20 21 	  ! 
	ld b,c			;1a21	41 	A 
	ld b,a			;1a22	47 	G 
	call m,sub_007fh+1		;1a23	fc 80 00 	. . . 
	ld bc,0c7ffh		;1a26	01 ff c7 	. . . 
	add a,(hl)			;1a29	86 	. 
	inc c			;1a2a	0c 	. 
	jr l1a1dh		;1a2b	18 f0 	. . 
	rst 38h			;1a2d	ff 	. 
	nop			;1a2e	00 	. 
	nop			;1a2f	00 	. 
	nop			;1a30	00 	. 
	nop			;1a31	00 	. 
	ld d,0ffh		;1a32	16 ff 	. . 
	ld (hl),a			;1a34	77 	w 
	cp e			;1a35	bb 	. 
	nop			;1a36	00 	. 
	inc bc			;1a37	03 	. 
	rst 38h			;1a38	ff 	. 
	sbc a,0bdh		;1a39	de bd 	. . 
	rst 38h			;1a3b	ff 	. 
	defb 0ddh,07dh	;ld a,ixl		;1a3c	dd 7d 	. } 
	nop			;1a3e	00 	. 
	inc bc			;1a3f	03 	. 
	rst 38h			;1a40	ff 	. 
	ld a,e			;1a41	7b 	{ 
l1a42h:
	cp l			;1a42	bd 	. 
	rst 38h			;1a43	ff 	. 
	cp e			;1a44	bb 	. 
	cp (hl)			;1a45	be 	. 
	nop			;1a46	00 	. 
	ld b,0ffh		;1a47	06 ff 	. . 
	xor 0ddh		;1a49	ee dd 	. . 
	nop			;1a4b	00 	. 
	ld de,0bfffh		;1a4c	11 ff bf 	. . . 
	ld a,l			;1a4f	7d 	} 
	ld h,h			;1a50	64 	d 
	rst 38h			;1a51	ff 	. 
	xor 0f7h		;1a52	ee f7 	. . 
	ld (hl),e			;1a54	73 	s 
	rst 28h			;1a55	ef 	. 
	rst 20h			;1a56	e7 	. 
	di			;1a57	f3 	. 
	pop af			;1a58	f1 	. 
	ld a,c			;1a59	79 	y 
	inc a			;1a5a	3c 	< 
	sbc a,(hl)			;1a5b	9e 	. 
	rst 18h			;1a5c	df 	. 
	ld sp,hl			;1a5d	f9 	. 
	defb 0fdh,0dch,0ech	;illegal sequence		;1a5e	fd dc ec 	. . . 
	ei			;1a61	fb 	. 
	rst 38h			;1a62	ff 	. 
	rst 38h			;1a63	ff 	. 
	defb 0fdh,0eeh,0b7h	;illegal sequence		;1a64	fd ee b7 	. . . 
	ld a,a			;1a67	7f 	 
	rst 38h			;1a68	ff 	. 
	rst 38h			;1a69	ff 	. 
	ret p			;1a6a	f0 	. 
	add a,d			;1a6b	82 	. 
	inc d			;1a6c	14 	. 
	ld (hl),a			;1a6d	77 	w 
	defb 0edh;next byte illegal after ed		;1a6e	ed 	. 
	cp 0ffh		;1a6f	fe ff 	. . 
	rst 38h			;1a71	ff 	. 
	rrca			;1a72	0f 	. 
	ld b,c			;1a73	41 	A 
	jr z,l1a15h		;1a74	28 9f 	( . 
	cp a			;1a76	bf 	. 
	dec sp			;1a77	3b 	; 
	scf			;1a78	37 	7 
	rst 18h			;1a79	df 	. 
	rst 38h			;1a7a	ff 	. 
	rst 38h			;1a7b	ff 	. 
	cp a			;1a7c	bf 	. 
	rst 30h			;1a7d	f7 	. 
	rst 20h			;1a7e	e7 	. 
	rst 8			;1a7f	cf 	. 
	adc a,a			;1a80	8f 	. 
	sbc a,(hl)			;1a81	9e 	. 
	inc a			;1a82	3c 	< 
	ld a,c			;1a83	79 	y 
	ei			;1a84	fb 	. 
	nop			;1a85	00 	. 
	ld bc,0fdffh		;1a86	01 ff fd 	. . . 
	cp (hl)			;1a89	be 	. 
	ld h,0ffh		;1a8a	26 ff 	& . 
	ld (hl),a			;1a8c	77 	w 
	rst 28h			;1a8d	ef 	. 
	adc a,000h		;1a8e	ce 00 	. . 
	nop			;1a90	00 	. 
	nop			;1a91	00 	. 
	rlca			;1a92	07 	. 
	nop			;1a93	00 	. 
	rrca			;1a94	0f 	. 
	nop			;1a95	00 	. 
	ld b,000h		;1a96	06 00 	. . 
	nop			;1a98	00 	. 
	ld bc,l23ffh		;1a99	01 ff 23 	. . # 
	nop			;1a9c	00 	. 
	inc b			;1a9d	04 	. 
	nop			;1a9e	00 	. 
	rrca			;1a9f	0f 	. 
	pop af			;1aa0	f1 	. 
	cp b			;1aa1	b8 	. 
	call c,l00fdh+2		;1aa2	dc ff 00 	. . . 
	ccf			;1aa5	3f 	? 
	rst 20h			;1aa6	e7 	. 
	add a,0eeh		;1aa7	c6 ee 	. . 
	ld l,(hl)			;1aa9	6e 	n 
	xor 0ffh		;1aaa	ee ff 	. . 
	nop			;1aac	00 	. 
	call m,063e7h		;1aad	fc e7 63 	. . c 
	ld (hl),a			;1ab0	77 	w 
	halt			;1ab1	76 	v 
	ld (hl),a			;1ab2	77 	w 
	nop			;1ab3	00 	. 
	inc b			;1ab4	04 	. 
	nop			;1ab5	00 	. 
	ret p			;1ab6	f0 	. 
	adc a,a			;1ab7	8f 	. 
	dec e			;1ab8	1d 	. 
	dec sp			;1ab9	3b 	; 
	nop			;1aba	00 	. 
	ld b,000h		;1abb	06 00 	. . 
	nop			;1abd	00 	. 
	ld bc,0c4ffh		;1abe	01 ff c4 	. . . 
	nop			;1ac1	00 	. 
	rlca			;1ac2	07 	. 
	nop			;1ac3	00 	. 
	ret p			;1ac4	f0 	. 
	ld a,a			;1ac5	7f 	 
	adc a,09eh		;1ac6	ce 9e 	. . 
	cp a			;1ac8	bf 	. 
	rst 38h			;1ac9	ff 	. 
	ld (hl),a			;1aca	77 	w 
	ld a,e			;1acb	7b 	{ 
	cp a			;1acc	bf 	. 
	ld (hl),c			;1acd	71 	q 
	ld a,b			;1ace	78 	x 
	inc a			;1acf	3c 	< 
	ld a,09eh		;1ad0	3e 9e 	> . 
	rst 8			;1ad2	cf 	. 
	rst 38h			;1ad3	ff 	. 
	rst 38h			;1ad4	ff 	. 
	sbc a,0ceh		;1ad5	de ce 	. . 
	ld l,a			;1ad7	6f 	o 
	rst 38h			;1ad8	ff 	. 
	ld a,a			;1ad9	7f 	 
	rst 38h			;1ada	ff 	. 
	rst 38h			;1adb	ff 	. 
	call m,07f77h		;1adc	fc 77 7f 	. w  
	nop			;1adf	00 	. 
	inc bc			;1ae0	03 	. 
	rst 38h			;1ae1	ff 	. 
	ret p			;1ae2	f0 	. 
	add a,b			;1ae3	80 	. 
	nop			;1ae4	00 	. 
	ld bc,0ee00h		;1ae5	01 00 ee 	. . . 
	cp 000h		;1ae8	fe 00 	. . 
	inc bc			;1aea	03 	. 
	rst 38h			;1aeb	ff 	. 
	rrca			;1aec	0f 	. 
	ld bc,l0100h		;1aed	01 00 01 	. . . 
	nop			;1af0	00 	. 
	ld a,e			;1af1	7b 	{ 
	ld (hl),e			;1af2	73 	s 
	or 0ffh		;1af3	f6 ff 	. . 
	cp 0ffh		;1af5	fe ff 	. . 
	rst 38h			;1af7	ff 	. 
	ccf			;1af8	3f 	? 
	adc a,(hl)			;1af9	8e 	. 
	ld e,03ch		;1afa	1e 3c 	. < 
	ld a,h			;1afc	7c 	| 
	ld a,c			;1afd	79 	y 
	di			;1afe	f3 	. 
	rst 38h			;1aff	ff 	. 
	rst 38h			;1b00	ff 	. 
	cp 073h		;1b01	fe 73 	. s 
	ld a,c			;1b03	79 	y 
	defb 0fdh,0ffh,0eeh	;illegal sequence		;1b04	fd ff ee 	. . . 
	sbc a,0fdh		;1b07	de fd 	. . 
	nop			;1b09	00 	. 
	nop			;1b0a	00 	. 
	nop			;1b0b	00 	. 
	ld c,0ffh		;1b0c	0e ff 	. . 
	ld (l0400h),ix		;1b0e	dd 22 00 04 	. " . . 
	rst 38h			;1b12	ff 	. 
	cp 0f1h		;1b13	fe f1 	. . 
	jr nz,l1b27h		;1b15	20 10 	  . 
	rst 38h			;1b17	ff 	. 
	rst 38h			;1b18	ff 	. 
	ei			;1b19	fb 	. 
	ld b,h			;1b1a	44 	D 
	add a,h			;1b1b	84 	. 
	adc a,b			;1b1c	88 	. 
	ex af,af'			;1b1d	08 	. 
	ld c,b			;1b1e	48 	H 
	rst 38h			;1b1f	ff 	. 
	rst 38h			;1b20	ff 	. 
	rst 18h			;1b21	df 	. 
	ld (l1121h),hl		;1b22	22 21 11 	" ! . 
	djnz l1b39h		;1b25	10 12 	. . 
l1b27h:
	nop			;1b27	00 	. 
	inc b			;1b28	04 	. 
	rst 38h			;1b29	ff 	. 
	ld a,a			;1b2a	7f 	 
	adc a,a			;1b2b	8f 	. 
	inc b			;1b2c	04 	. 
	ex af,af'			;1b2d	08 	. 
	nop			;1b2e	00 	. 
	ld b,0ffh		;1b2f	06 ff 	. . 
	cp e			;1b31	bb 	. 
	ld b,h			;1b32	44 	D 
	nop			;1b33	00 	. 
	ex af,af'			;1b34	08 	. 
	rst 38h			;1b35	ff 	. 
	pop af			;1b36	f1 	. 
	adc a,d			;1b37	8a 	. 
	inc e			;1b38	1c 	. 
l1b39h:
	inc h			;1b39	24 	$ 
	rst 38h			;1b3a	ff 	. 
	ld b,h			;1b3b	44 	D 
	ld b,d			;1b3c	42 	B 
	inc hl			;1b3d	23 	# 
	ld b,c			;1b3e	41 	A 
	ld b,b			;1b3f	40 	@ 
	rst 38h			;1b40	ff 	. 
	jr nz,l1b53h		;1b41	20 10 	  . 
	ex af,af'			;1b43	08 	. 
	inc e			;1b44	1c 	. 
	sbc a,a			;1b45	9f 	. 
	sub b			;1b46	90 	. 
	adc a,b			;1b47	88 	. 
	rst 38h			;1b48	ff 	. 
	ld c,b			;1b49	48 	H 
	ld d,c			;1b4a	51 	Q 
	ei			;1b4b	fb 	. 
	nop			;1b4c	00 	. 
	ld bc,0feffh		;1b4d	01 ff fe 	. . . 
	ld b,h			;1b50	44 	D 
	ld h,077h		;1b51	26 77 	& w 
l1b53h:
	nop			;1b53	00 	. 
	inc bc			;1b54	03 	. 
	rst 38h			;1b55	ff 	. 
	defb 0fdh,0ebh,022h	;illegal sequence		;1b56	fd eb 22 	. . " 
	ld h,h			;1b59	64 	d 
	xor 000h		;1b5a	ee 00 	. . 
	inc bc			;1b5c	03 	. 
	rst 38h			;1b5d	ff 	. 
	cp a			;1b5e	bf 	. 
	rst 10h			;1b5f	d7 	. 
	add hl,bc			;1b60	09 	. 
	ld de,l12ffh		;1b61	11 ff 12 	. . . 
	adc a,d			;1b64	8a 	. 
	rst 18h			;1b65	df 	. 
	nop			;1b66	00 	. 
	ld bc,07fffh		;1b67	01 ff 7f 	. .  
	add a,d			;1b6a	82 	. 
	ld (bc),a			;1b6b	02 	. 
	rst 38h			;1b6c	ff 	. 
	inc b			;1b6d	04 	. 
	ex af,af'			;1b6e	08 	. 
	djnz l1ba9h		;1b6f	10 38 	. 8 
	ld sp,hl			;1b71	f9 	. 
	adc a,a			;1b72	8f 	. 
	ld d,c			;1b73	51 	Q 
	jr c,l1b9ah		;1b74	38 24 	8 $ 
	rst 38h			;1b76	ff 	. 
	ld (0c442h),hl		;1b77	22 42 c4 	" B . 
	nop			;1b7a	00 	. 
	nop			;1b7b	00 	. 
	nop			;1b7c	00 	. 
	rlca			;1b7d	07 	. 
	nop			;1b7e	00 	. 
	rrca			;1b7f	0f 	. 
	nop			;1b80	00 	. 
	ld b,000h		;1b81	06 00 	. . 
	rst 38h			;1b83	ff 	. 
	rst 38h			;1b84	ff 	. 
	nop			;1b85	00 	. 
	inc b			;1b86	04 	. 
	nop			;1b87	00 	. 
	rrca			;1b88	0f 	. 
	nop			;1b89	00 	. 
	inc bc			;1b8a	03 	. 
	rst 38h			;1b8b	ff 	. 
	rst 38h			;1b8c	ff 	. 
	nop			;1b8d	00 	. 
	ccf			;1b8e	3f 	? 
	nop			;1b8f	00 	. 
	dec b			;1b90	05 	. 
	rst 38h			;1b91	ff 	. 
	rst 38h			;1b92	ff 	. 
	nop			;1b93	00 	. 
	call m,l0500h		;1b94	fc 00 05 	. . . 
	rst 38h			;1b97	ff 	. 
	nop			;1b98	00 	. 
	inc b			;1b99	04 	. 
l1b9ah:
	nop			;1b9a	00 	. 
	ret p			;1b9b	f0 	. 
	nop			;1b9c	00 	. 
	inc bc			;1b9d	03 	. 
	rst 38h			;1b9e	ff 	. 
	nop			;1b9f	00 	. 
	ld b,000h		;1ba0	06 00 	. . 
	rst 38h			;1ba2	ff 	. 
	rst 38h			;1ba3	ff 	. 
	nop			;1ba4	00 	. 
	rlca			;1ba5	07 	. 
	nop			;1ba6	00 	. 
	ret p			;1ba7	f0 	. 
	ld a,a			;1ba8	7f 	 
l1ba9h:
	nop			;1ba9	00 	. 
	ld d,0ffh		;1baa	16 ff 	. . 
	call m,l0500h		;1bac	fc 00 05 	. . . 
	rst 38h			;1baf	ff 	. 
	ret p			;1bb0	f0 	. 
	add a,b			;1bb1	80 	. 
	nop			;1bb2	00 	. 
	ld bc,l0000h		;1bb3	01 00 00 	. . . 
	dec b			;1bb6	05 	. 
	rst 38h			;1bb7	ff 	. 
	rrca			;1bb8	0f 	. 
	ld bc,l0100h		;1bb9	01 00 01 	. . . 
	nop			;1bbc	00 	. 
	nop			;1bbd	00 	. 
	rlca			;1bbe	07 	. 
	rst 38h			;1bbf	ff 	. 
	ccf			;1bc0	3f 	? 
	nop			;1bc1	00 	. 
	ex af,af'			;1bc2	08 	. 
	rst 38h			;1bc3	ff 	. 
	cp 000h		;1bc4	fe 00 	. . 
	rlca			;1bc6	07 	. 
	rst 38h			;1bc7	ff 	. 
	nop			;1bc8	00 	. 
	nop			;1bc9	00 	. 
	nop			;1bca	00 	. 
	ex af,af'			;1bcb	08 	. 
	nop			;1bcc	00 	. 
	nop			;1bcd	00 	. 
	add hl,bc			;1bce	09 	. 
	rst 38h			;1bcf	ff 	. 
	rst 18h			;1bd0	df 	. 
	nop			;1bd1	00 	. 
	inc b			;1bd2	04 	. 
	cp a			;1bd3	bf 	. 
	sbc a,c			;1bd4	99 	. 
	jp 07100h		;1bd5	c3 00 71 	. . q 
	rst 38h			;1bd8	ff 	. 
	rst 28h			;1bd9	ef 	. 
	nop			;1bda	00 	. 
	inc b			;1bdb	04 	. 
	rst 18h			;1bdc	df 	. 
	rst 8			;1bdd	cf 	. 
	ret po			;1bde	e0 	. 
	nop			;1bdf	00 	. 
	ld bc,0bfffh		;1be0	01 ff bf 	. . . 
	nop			;1be3	00 	. 
	inc b			;1be4	04 	. 
	ld a,a			;1be5	7f 	 
	add hl,sp			;1be6	39 	9 
	add a,e			;1be7	83 	. 
	nop			;1be8	00 	. 
	ld b,0ffh		;1be9	06 ff 	. . 
	di			;1beb	f3 	. 
	rlca			;1bec	07 	. 
	nop			;1bed	00 	. 
	ld bc,0bfffh		;1bee	01 ff bf 	. . . 
	nop			;1bf1	00 	. 
	inc b			;1bf2	04 	. 
	ld a,a			;1bf3	7f 	 
	ccf			;1bf4	3f 	? 
	add a,b			;1bf5	80 	. 
	nop			;1bf6	00 	. 
	ld b,0ffh		;1bf7	06 ff 	. . 
	ld sp,hl			;1bf9	f9 	. 
	inc bc			;1bfa	03 	. 
	nop			;1bfb	00 	. 
	rst 38h			;1bfc	ff 	. 
	rst 38h			;1bfd	ff 	. 
	nop			;1bfe	00 	. 
	ld sp,l30ffh		;1bff	31 ff 30 	1 . 0 
	djnz l1c1dh		;1c02	10 19 	. . 
	ccf			;1c04	3f 	? 
	rst 38h			;1c05	ff 	. 
	ld e,00fh		;1c06	1e 0f 	. . 
	rlca			;1c08	07 	. 
	ld a,h			;1c09	7c 	| 
	add a,(hl)			;1c0a	86 	. 
	ld bc,l0500h		;1c0b	01 00 05 	. . . 
	nop			;1c0e	00 	. 
	rlca			;1c0f	07 	. 
l1c10h:
	rst 38h			;1c10	ff 	. 
	inc bc			;1c11	03 	. 
	rst 38h			;1c12	ff 	. 
	ld bc,sub_0300h		;1c13	01 00 03 	. . . 
	nop			;1c16	00 	. 
	add a,b			;1c17	80 	. 
	ret nz			;1c18	c0 	. 
	pop hl			;1c19	e1 	. 
	cp 0f0h		;1c1a	fe f0 	. . 
	ret po			;1c1c	e0 	. 
l1c1dh:
	jr nz,l1c5bh		;1c1d	20 3c 	  < 
	ld bc,0fe03h		;1c1f	01 03 fe 	. . . 
	rst 38h			;1c22	ff 	. 
	inc e			;1c23	1c 	. 
	inc c			;1c24	0c 	. 
	inc b			;1c25	04 	. 
	inc e			;1c26	1c 	. 
	ret m			;1c27	f8 	. 
	nop			;1c28	00 	. 
	rlca			;1c29	07 	. 
	nop			;1c2a	00 	. 
	ccf			;1c2b	3f 	? 
	nop			;1c2c	00 	. 
	ld bc,l0fffh		;1c2d	01 ff 0f 	. . . 
	inc bc			;1c30	03 	. 
	nop			;1c31	00 	. 
	dec b			;1c32	05 	. 
	nop			;1c33	00 	. 
	ret p			;1c34	f0 	. 
	ret m			;1c35	f8 	. 
	call m,sub_04f4h		;1c36	fc f4 04 	. . . 
	ld b,00ch		;1c39	06 0c 	. . 
	nop			;1c3b	00 	. 
	ld bc,0fc00h		;1c3c	01 00 fc 	. . . 
	ld a,a			;1c3f	7f 	 
	rrca			;1c40	0f 	. 
	inc bc			;1c41	03 	. 
	rst 38h			;1c42	ff 	. 
	ld bc,l0100h		;1c43	01 00 01 	. . . 
	nop			;1c46	00 	. 
	daa			;1c47	27 	' 
	ld b,e			;1c48	43 	C 
	ld b,c			;1c49	41 	A 
	rst 38h			;1c4a	ff 	. 
	ret nz			;1c4b	c0 	. 
	and b			;1c4c	a0 	. 
	rst 38h			;1c4d	ff 	. 
	jr nz,l1c10h		;1c4e	20 c0 	  . 
	ret p			;1c50	f0 	. 
	ld a,h			;1c51	7c 	| 
	ld (bc),a			;1c52	02 	. 
	rst 38h			;1c53	ff 	. 
	nop			;1c54	00 	. 
	ld bc,0ff02h		;1c55	01 02 ff 	. . . 
	djnz l1c6dh		;1c58	10 13 	. . 
	inc a			;1c5a	3c 	< 
l1c5bh:
	ret po			;1c5b	e0 	. 
	add a,b			;1c5c	80 	. 
	rst 38h			;1c5d	ff 	. 
	nop			;1c5e	00 	. 
	ret nz			;1c5f	c0 	. 
	call m,l0100h		;1c60	fc 00 01 	. . . 
	rst 38h			;1c63	ff 	. 
	ld (hl),c			;1c64	71 	q 
	inc bc			;1c65	03 	. 
	rst 38h			;1c66	ff 	. 
	rlca			;1c67	07 	. 
	rrca			;1c68	0f 	. 
	ld e,071h		;1c69	1e 71 	. q 
	ret nz			;1c6b	c0 	. 
	rst 38h			;1c6c	ff 	. 
l1c6dh:
	add a,b			;1c6d	80 	. 
	ret po			;1c6e	e0 	. 
	ret m			;1c6f	f8 	. 
	cp 018h		;1c70	fe 18 	. . 
	rst 38h			;1c72	ff 	. 
	ret p			;1c73	f0 	. 
	djnz l1c76h		;1c74	10 00 	. . 
l1c76h:
	ld bc,01c00h		;1c76	01 00 1c 	. . . 
	ld a,01fh		;1c79	3e 1f 	> . 
	nop			;1c7b	00 	. 
	ld bc,l07ffh		;1c7c	01 ff 07 	. . . 
	nop			;1c7f	00 	. 
	dec b			;1c80	05 	. 
	nop			;1c81	00 	. 
	add a,b			;1c82	80 	. 
	ld b,00ch		;1c83	06 0c 	. . 
	inc e			;1c85	1c 	. 
	rst 38h			;1c86	ff 	. 
	ld a,h			;1c87	7c 	| 
	ld a,0ffh		;1c88	3e ff 	> . 
	rra			;1c8a	1f 	. 
	nop			;1c8b	00 	. 
	ex af,af'			;1c8c	08 	. 
	nop			;1c8d	00 	. 
	rrca			;1c8e	0f 	. 
	rlca			;1c8f	07 	. 
	inc bc			;1c90	03 	. 
	rst 38h			;1c91	ff 	. 
	nop			;1c92	00 	. 
	ld bc,l3f03h		;1c93	01 03 3f 	. . ? 
	nop			;1c96	00 	. 
	inc b			;1c97	04 	. 
	add a,b			;1c98	80 	. 
	rst 0			;1c99	c7 	. 
	ld sp,hl			;1c9a	f9 	. 
	ret p			;1c9b	f0 	. 
	ret po			;1c9c	e0 	. 
	rra			;1c9d	1f 	. 
	rlca			;1c9e	07 	. 
	rst 38h			;1c9f	ff 	. 
	inc bc			;1ca0	03 	. 
	rst 38h			;1ca1	ff 	. 
	ld bc,l00fdh+2		;1ca2	01 ff 00 	. . . 
	add a,b			;1ca5	80 	. 
	rst 38h			;1ca6	ff 	. 
	ret nz			;1ca7	c0 	. 
	ld (hl),b			;1ca8	70 	p 
	ld a,b			;1ca9	78 	x 
	ld h,b			;1caa	60 	` 
	rst 38h			;1cab	ff 	. 
	ld b,b			;1cac	40 	@ 
	nop			;1cad	00 	. 
	inc bc			;1cae	03 	. 
	nop			;1caf	00 	. 
	ld bc,0c482h		;1cb0	01 82 c4 	. . . 
	ret pe			;1cb3	e8 	. 
	ld (hl),b			;1cb4	70 	p 
	ld b,b			;1cb5	40 	@ 
	rst 38h			;1cb6	ff 	. 
	add a,b			;1cb7	80 	. 
	nop			;1cb8	00 	. 
	dec b			;1cb9	05 	. 
	nop			;1cba	00 	. 
	jp l0103h		;1cbb	c3 03 01 	. . . 
	nop			;1cbe	00 	. 
	dec b			;1cbf	05 	. 
	nop			;1cc0	00 	. 
	nop			;1cc1	00 	. 
	inc b			;1cc2	04 	. 
	ret nz			;1cc3	c0 	. 
l1cc4h:
	rst 38h			;1cc4	ff 	. 
	ret po			;1cc5	e0 	. 
	rst 38h			;1cc6	ff 	. 
	ld h,b			;1cc7	60 	` 
	nop			;1cc8	00 	. 
	ld b,000h		;1cc9	06 00 	. . 
	ld bc,02003h		;1ccb	01 03 20 	. .   
	rst 38h			;1cce	ff 	. 
	djnz l1ce4h		;1ccf	10 13 	. . 
	inc e			;1cd1	1c 	. 
	ld b,b			;1cd2	40 	@ 
	add a,b			;1cd3	80 	. 
	nop			;1cd4	00 	. 
	ld bc,07000h		;1cd5	01 00 70 	. . p 
	jr c,l1d19h		;1cd8	38 3f 	8 ? 
	ld e,00fh		;1cda	1e 0f 	. . 
	rlca			;1cdc	07 	. 
	inc bc			;1cdd	03 	. 
	nop			;1cde	00 	. 
	ld bc,l0700h		;1cdf	01 00 07 	. . . 
	jr l1cc4h		;1ce2	18 e0 	. . 
l1ce4h:
	rst 38h			;1ce4	ff 	. 
	nop			;1ce5	00 	. 
	add a,b			;1ce6	80 	. 
	ret po			;1ce7	e0 	. 
	ret p			;1ce8	f0 	. 
	nop			;1ce9	00 	. 
	inc bc			;1cea	03 	. 
	nop			;1ceb	00 	. 
	cp 03fh		;1cec	fe 3f 	. ? 
	rrca			;1cee	0f 	. 
	rlca			;1cef	07 	. 
	inc bc			;1cf0	03 	. 
	ld (hl),b			;1cf1	70 	p 
	rst 38h			;1cf2	ff 	. 
	jr nz,l1d35h		;1cf3	20 40 	  @ 
	ret nz			;1cf5	c0 	. 
	rst 38h			;1cf6	ff 	. 
	add a,b			;1cf7	80 	. 
	ret nz			;1cf8	c0 	. 
	inc c			;1cf9	0c 	. 
	jr l1d74h		;1cfa	18 78 	. x 
	ex af,af'			;1cfc	08 	. 
	inc b			;1cfd	04 	. 
	rst 38h			;1cfe	ff 	. 
	ld (bc),a			;1cff	02 	. 
	ld bc,l0800h		;1d00	01 00 08 	. . . 
	nop			;1d03	00 	. 
	rst 38h			;1d04	ff 	. 
	ld bc,l0500h		;1d05	01 00 05 	. . . 
	nop			;1d08	00 	. 
	ld bc,l00fdh+2		;1d09	01 ff 00 	. . . 
	add a,b			;1d0c	80 	. 
	sbc a,0e1h		;1d0d	de e1 	. . 
	nop			;1d0f	00 	. 
	inc bc			;1d10	03 	. 
	ret nz			;1d11	c0 	. 
	ld bc,l0700h		;1d12	01 00 07 	. . . 
	nop			;1d15	00 	. 
	rst 38h			;1d16	ff 	. 
	ret po			;1d17	e0 	. 
	ret p			;1d18	f0 	. 
l1d19h:
	ld a,a			;1d19	7f 	 
	ld a,b			;1d1a	78 	x 
	ld h,b			;1d1b	60 	` 
	jr nz,l1d5eh		;1d1c	20 40 	  @ 
	nop			;1d1e	00 	. 
	inc b			;1d1f	04 	. 
	nop			;1d20	00 	. 
	add a,e			;1d21	83 	. 
	ld e,h			;1d22	5c 	\ 
	jr c,$+26		;1d23	38 18 	8 . 
	rst 38h			;1d25	ff 	. 
	ld b,b			;1d26	40 	@ 
	ret nz			;1d27	c0 	. 
	ret po			;1d28	e0 	. 
	jr nz,l1d2bh		;1d29	20 00 	  . 
l1d2bh:
	inc bc			;1d2b	03 	. 
	djnz $+1		;1d2c	10 ff 	. . 
	ld bc,08303h		;1d2e	01 03 83 	. . . 
	ex (sp),hl			;1d31	e3 	. 
	ld a,a			;1d32	7f 	 
	rrca			;1d33	0f 	. 
	rlca			;1d34	07 	. 
l1d35h:
	add a,e			;1d35	83 	. 
	rst 38h			;1d36	ff 	. 
	add a,b			;1d37	80 	. 
	rst 38h			;1d38	ff 	. 
	nop			;1d39	00 	. 
	ld a,(hl)			;1d3a	7e 	~ 
	jp l0201h		;1d3b	c3 01 02 	. . . 
	rst 38h			;1d3e	ff 	. 
	nop			;1d3f	00 	. 
	inc bc			;1d40	03 	. 
	ccf			;1d41	3f 	? 
	ld sp,hl			;1d42	f9 	. 
	ret po			;1d43	e0 	. 
	jr nz,l1d47h		;1d44	20 01 	  . 
	inc bc			;1d46	03 	. 
l1d47h:
	inc c			;1d47	0c 	. 
	jr nc,$-30		;1d48	30 e0 	0 . 
	add a,b			;1d4a	80 	. 
	ret nz			;1d4b	c0 	. 
	ld h,e			;1d4c	63 	c 
	rst 38h			;1d4d	ff 	. 
	ret p			;1d4e	f0 	. 
	ld a,b			;1d4f	78 	x 
	inc a			;1d50	3c 	< 
	inc e			;1d51	1c 	. 
	ccf			;1d52	3f 	? 
	ret z			;1d53	c8 	. 
	rst 38h			;1d54	ff 	. 
	ex af,af'			;1d55	08 	. 
	inc c			;1d56	0c 	. 
	rlca			;1d57	07 	. 
	rrca			;1d58	0f 	. 
	ld de,0fe38h		;1d59	11 38 fe 	. 8 . 
	ld h,e			;1d5c	63 	c 
	nop			;1d5d	00 	. 
l1d5eh:
	ld bc,08000h		;1d5e	01 00 80 	. . . 
	ret nz			;1d61	c0 	. 
	ld a,a			;1d62	7f 	 
	jr nc,l1dc5h		;1d63	30 60 	0 ` 
	ld a,b			;1d65	78 	x 
	adc a,a			;1d66	8f 	. 
	ld b,c			;1d67	41 	A 
	pop bc			;1d68	c1 	. 
	add a,c			;1d69	81 	. 
	pop bc			;1d6a	c1 	. 
	ld (hl),c			;1d6b	71 	q 
	ld sp,08e19h		;1d6c	31 19 8e 	1 . . 
	nop			;1d6f	00 	. 
	inc b			;1d70	04 	. 
	nop			;1d71	00 	. 
	rst 38h			;1d72	ff 	. 
	add a,b			;1d73	80 	. 
l1d74h:
	rst 38h			;1d74	ff 	. 
	ret nz			;1d75	c0 	. 
	inc c			;1d76	0c 	. 
	djnz l1d9ah		;1d77	10 21 	. ! 
	rst 38h			;1d79	ff 	. 
	ld b,a			;1d7a	47 	G 
	ld c,h			;1d7b	4c 	L 
	adc a,h			;1d7c	8c 	. 
	sbc a,h			;1d7d	9c 	. 
	rst 38h			;1d7e	ff 	. 
	ret nz			;1d7f	c0 	. 
	pop bc			;1d80	c1 	. 
	nop			;1d81	00 	. 
	dec b			;1d82	05 	. 
	pop hl			;1d83	e1 	. 
	sbc a,(hl)			;1d84	9e 	. 
	sub (hl)			;1d85	96 	. 
	rst 38h			;1d86	ff 	. 
	inc sp			;1d87	33 	3 
	ld sp,061ffh		;1d88	31 ff 61 	1 . a 
	ld h,d			;1d8b	62 	b 
	nop			;1d8c	00 	. 
	ld bc,00f00h		;1d8d	01 00 0f 	. . . 
	nop			;1d90	00 	. 
	ld bc,0c3ffh		;1d91	01 ff c3 	. . . 
	nop			;1d94	00 	. 
	ld bc,l0000h		;1d95	01 00 00 	. . . 
	inc bc			;1d98	03 	. 
	inc b			;1d99	04 	. 
l1d9ah:
	nop			;1d9a	00 	. 
	ld bc,0c000h		;1d9b	01 00 c0 	. . . 
	cp 0c3h		;1d9e	fe c3 	. . 
	rst 38h			;1da0	ff 	. 
	adc a,b			;1da1	88 	. 
	rst 38h			;1da2	ff 	. 
	adc a,e			;1da3	8b 	. 
	nop			;1da4	00 	. 
	inc b			;1da5	04 	. 
	add hl,bc			;1da6	09 	. 
	rst 38h			;1da7	ff 	. 
	adc a,e			;1da8	8b 	. 
	sub e			;1da9	93 	. 
	rst 10h			;1daa	d7 	. 
	nop			;1dab	00 	. 
	inc bc			;1dac	03 	. 
	sub a			;1dad	97 	. 
	rst 38h			;1dae	ff 	. 
	xor a			;1daf	af 	. 
	nop			;1db0	00 	. 
	inc bc			;1db1	03 	. 
	rst 18h			;1db2	df 	. 
	pop af			;1db3	f1 	. 
	rst 38h			;1db4	ff 	. 
	jp p,0faffh		;1db5	f2 ff fa 	. . . 
	rst 38h			;1db8	ff 	. 
	ei			;1db9	fb 	. 
	sbc a,c			;1dba	99 	. 
	rst 38h			;1dbb	ff 	. 
	ld b,d			;1dbc	42 	B 
	nop			;1dbd	00 	. 
	inc bc			;1dbe	03 	. 
	jp po,0f3ffh		;1dbf	e2 ff f3 	. . . 
	pop af			;1dc2	f1 	. 
	adc a,c			;1dc3	89 	. 
	rst 38h			;1dc4	ff 	. 
l1dc5h:
	adc a,l			;1dc5	8d 	. 
	sbc a,l			;1dc6	9d 	. 
	defb 0ddh,0fdh,08fh	;illegal sequence		;1dc7	dd fd 8f 	. . . 
	inc bc			;1dca	03 	. 
	nop			;1dcb	00 	. 
	inc b			;1dcc	04 	. 
	ei			;1dcd	fb 	. 
	rst 38h			;1dce	ff 	. 
	rst 38h			;1dcf	ff 	. 
	ret nz			;1dd0	c0 	. 
	nop			;1dd1	00 	. 
	ld bc,0d700h		;1dd2	01 00 d7 	. . . 
	rst 30h			;1dd5	f7 	. 
	rst 20h			;1dd6	e7 	. 
	rst 38h			;1dd7	ff 	. 
	rst 28h			;1dd8	ef 	. 
	xor 0ech		;1dd9	ee ec 	. . 
	call m,l0400h		;1ddb	fc 00 04 	. . . 
	rst 38h			;1dde	ff 	. 
	rrca			;1ddf	0f 	. 
	rlca			;1de0	07 	. 
	inc bc			;1de1	03 	. 
	ld bc,l00fdh+1		;1de2	01 fe 00 	. . . 
	ld bc,0fcffh		;1de5	01 ff fc 	. . . 
	rst 38h			;1de8	ff 	. 
	ret m			;1de9	f8 	. 
	call m,0e167h		;1dea	fc 67 e1 	. g . 
	nop			;1ded	00 	. 
	ld bc,0f800h		;1dee	01 00 f8 	. . . 
	dec e			;1df1	1d 	. 
	rrca			;1df2	0f 	. 
	rlca			;1df3	07 	. 
	inc bc			;1df4	03 	. 
	rlca			;1df5	07 	. 
	call m,000f0h		;1df6	fc f0 00 	. . . 
	ld bc,0c3ffh		;1df9	01 ff c3 	. . . 
	add a,b			;1dfc	80 	. 
	nop			;1dfd	00 	. 
	dec b			;1dfe	05 	. 
l1dffh:
	nop			;1dff	00 	. 
l1e00h:
	ret p			;1e00	f0 	. 
	ld e,003h		;1e01	1e 03 	. . 
	nop			;1e03	00 	. 
	inc b			;1e04	04 	. 
	nop			;1e05	00 	. 
	rst 38h			;1e06	ff 	. 
	add a,b			;1e07	80 	. 
	ret nz			;1e08	c0 	. 
	ret m			;1e09	f8 	. 
	sbc a,a			;1e0a	9f 	. 
	inc bc			;1e0b	03 	. 
	rst 38h			;1e0c	ff 	. 
	ld bc,sub_0300h		;1e0d	01 00 03 	. . . 
	nop			;1e10	00 	. 
	rlca			;1e11	07 	. 
	ld sp,hl			;1e12	f9 	. 
	add a,b			;1e13	80 	. 
	rst 38h			;1e14	ff 	. 
	nop			;1e15	00 	. 
	rst 38h			;1e16	ff 	. 
	ld b,b			;1e17	40 	@ 
	ld h,b			;1e18	60 	` 
	ret p			;1e19	f0 	. 
	ret m			;1e1a	f8 	. 
	ld a,(hl)			;1e1b	7e 	~ 
	inc bc			;1e1c	03 	. 
	ld bc,l0002h+1		;1e1d	01 03 00 	. . . 
	dec b			;1e20	05 	. 
	ld bc,08703h		;1e21	01 03 87 	. . . 
	ld bc,01c03h		;1e24	01 03 1c 	. . . 
	ret m			;1e27	f8 	. 
	cp b			;1e28	b8 	. 
	ld b,001h		;1e29	06 01 	. . 
	nop			;1e2b	00 	. 
	ld bc,0cf00h		;1e2c	01 00 cf 	. . . 
	nop			;1e2f	00 	. 
	ld bc,l03ffh		;1e30	01 ff 03 	. . . 
	nop			;1e33	00 	. 
	inc bc			;1e34	03 	. 
	ld bc,06181h		;1e35	01 81 61 	. . a 
	nop			;1e38	00 	. 
	inc bc			;1e39	03 	. 
	ld bc,08c03h		;1e3a	01 03 8c 	. . . 
	ret p			;1e3d	f0 	. 
	ld (hl),b			;1e3e	70 	p 
	jr nz,$+1		;1e3f	20 ff 	  . 
	nop			;1e41	00 	. 
l1e42h:
	add a,b			;1e42	80 	. 
	ret po			;1e43	e0 	. 
	ld a,0ffh		;1e44	3e ff 	> . 
	inc bc			;1e46	03 	. 
	rlca			;1e47	07 	. 
	rst 38h			;1e48	ff 	. 
	jr nz,$+1		;1e49	20 ff 	  . 
	djnz l1e59h		;1e4b	10 0c 	. . 
	rst 38h			;1e4d	ff 	. 
	rlca			;1e4e	07 	. 
	rrca			;1e4f	0f 	. 
	ld b,008h		;1e50	06 08 	. . 
	djnz l1e84h		;1e52	10 30 	. 0 
	ld a,b			;1e54	78 	x 
	nop			;1e55	00 	. 
	ld bc,080ffh		;1e56	01 ff 80 	. . . 
l1e59h:
	nop			;1e59	00 	. 
	dec b			;1e5a	05 	. 
	nop			;1e5b	00 	. 
	jr c,l1e42h		;1e5c	38 e4 	8 . 
	add a,e			;1e5e	83 	. 
	ld bc,l0719h		;1e5f	01 19 07 	. . . 
	inc bc			;1e62	03 	. 
	rra			;1e63	1f 	. 
	inc hl			;1e64	23 	# 
	ld b,c			;1e65	41 	A 
	rst 38h			;1e66	ff 	. 
	add a,b			;1e67	80 	. 
	nop			;1e68	00 	. 
	inc bc			;1e69	03 	. 
	ld bc,l0602h		;1e6a	01 02 06 	. . . 
	nop			;1e6d	00 	. 
	ld bc,0e3ffh		;1e6e	01 ff e3 	. . . 
	ld b,b			;1e71	40 	@ 
	nop			;1e72	00 	. 
	dec b			;1e73	05 	. 
	nop			;1e74	00 	. 
	ret po			;1e75	e0 	. 
	inc e			;1e76	1c 	. 
	inc bc			;1e77	03 	. 
l1e78h:
	rst 38h			;1e78	ff 	. 
	ret nz			;1e79	c0 	. 
	nop			;1e7a	00 	. 
	inc bc			;1e7b	03 	. 
	add a,b			;1e7c	80 	. 
	ret nz			;1e7d	c0 	. 
	rst 38h			;1e7e	ff 	. 
	rst 38h			;1e7f	ff 	. 
	inc c			;1e80	0c 	. 
	nop			;1e81	00 	. 
	inc bc			;1e82	03 	. 
	ex af,af'			;1e83	08 	. 
l1e84h:
	inc e			;1e84	1c 	. 
	ccf			;1e85	3f 	? 
	rst 38h			;1e86	ff 	. 
	rst 38h			;1e87	ff 	. 
	jr nc,l1e8ah		;1e88	30 00 	0 . 
l1e8ah:
	inc b			;1e8a	04 	. 
	djnz l1ebdh		;1e8b	10 30 	. 0 
	ld a,a			;1e8d	7f 	 
	nop			;1e8e	00 	. 
	ld bc,l01ffh		;1e8f	01 ff 01 	. . . 
	rrca			;1e92	0f 	. 
	ld de,0ff10h		;1e93	11 10 ff 	. . . 
	jr nz,l1e78h		;1e96	20 e0 	  . 
	nop			;1e98	00 	. 
	ld bc,086ffh		;1e99	01 ff 86 	. . . 
	nop			;1e9c	00 	. 
	inc b			;1e9d	04 	. 
	ld (bc),a			;1e9e	02 	. 
	rlca			;1e9f	07 	. 
	rst 38h			;1ea0	ff 	. 
	rst 38h			;1ea1	ff 	. 
	nop			;1ea2	00 	. 
	ld b,000h		;1ea3	06 00 	. . 
	ret nz			;1ea5	c0 	. 
	nop			;1ea6	00 	. 
	ld bc,080ffh		;1ea7	01 ff 80 	. . . 
	ret po			;1eaa	e0 	. 
	djnz $+1		;1eab	10 ff 	. . 
	ex af,af'			;1ead	08 	. 
	inc b			;1eae	04 	. 
	rlca			;1eaf	07 	. 
	nop			;1eb0	00 	. 
	ld bc,l00fdh+2		;1eb1	01 ff 00 	. . . 
	dec b			;1eb4	05 	. 
	ld bc,l0002h+1		;1eb5	01 03 00 	. . . 
	inc bc			;1eb8	03 	. 
	rst 38h			;1eb9	ff 	. 
	ret nz			;1eba	c0 	. 
	add a,a			;1ebb	87 	. 
	add a,d			;1ebc	82 	. 
l1ebdh:
	adc a,b			;1ebd	88 	. 
	nop			;1ebe	00 	. 
	inc bc			;1ebf	03 	. 
	adc a,h			;1ec0	8c 	. 
	nop			;1ec1	00 	. 
	ld bc,l00fdh+2		;1ec2	01 ff 00 	. . . 
	ld bc,0ff00h		;1ec5	01 00 ff 	. . . 
	inc c			;1ec8	0c 	. 
	ld h,(hl)			;1ec9	66 	f 
	di			;1eca	f3 	. 
	or e			;1ecb	b3 	. 
	jp 08182h		;1ecc	c3 82 81 	. . . 
sub_1ecfh:
	rst 38h			;1ecf	ff 	. 
	adc a,h			;1ed0	8c 	. 
	rst 38h			;1ed1	ff 	. 
	add a,b			;1ed2	80 	. 
	ret nz			;1ed3	c0 	. 
	nop			;1ed4	00 	. 
	ld bc,07dffh		;1ed5	01 ff 7d 	. . } 
	inc a			;1ed8	3c 	< 
	cp c			;1ed9	b9 	. 
	sub e			;1eda	93 	. 
	inc de			;1edb	13 	. 
	rst 38h			;1edc	ff 	. 
	nop			;1edd	00 	. 
	rst 38h			;1ede	ff 	. 
	rst 38h			;1edf	ff 	. 
	nop			;1ee0	00 	. 
	ld bc,0c000h		;1ee1	01 00 c0 	. . . 
	sub e			;1ee4	93 	. 
	ld b,032h		;1ee5	06 32 	. 2 
	jr c,l1f26h		;1ee7	38 3d 	8 = 
	nop			;1ee9	00 	. 
	ld bc,l01ffh		;1eea	01 ff 01 	. . . 
	nop			;1eed	00 	. 
	ld bc,l3c00h		;1eee	01 00 3c 	. . < 
	inc c			;1ef1	0c 	. 
	ld h,b			;1ef2	60 	` 
	ld (hl),b			;1ef3	70 	p 
	or b			;1ef4	b0 	. 
	jr c,l1f09h		;1ef5	38 12 	8 . 
	adc a,0e6h		;1ef7	ce e6 	. . 
	nop			;1ef9	00 	. 
	inc bc			;1efa	03 	. 
	nop			;1efb	00 	. 
	nop			;1efc	00 	. 
	ld bc,080ffh		;1efd	01 ff 80 	. . . 
	call nz,064cch		;1f00	c4 cc 64 	. . d 
	rst 38h			;1f03	ff 	. 
	nop			;1f04	00 	. 
	ld bc,l0100h		;1f05	01 00 01 	. . . 
	rst 38h			;1f08	ff 	. 
l1f09h:
	cp a			;1f09	bf 	. 
	rra			;1f0a	1f 	. 
	nop			;1f0b	00 	. 
	inc b			;1f0c	04 	. 
	nop			;1f0d	00 	. 
	add a,b			;1f0e	80 	. 
	nop			;1f0f	00 	. 
	inc bc			;1f10	03 	. 
	rst 38h			;1f11	ff 	. 
	nop			;1f12	00 	. 
	dec b			;1f13	05 	. 
	nop			;1f14	00 	. 
	nop			;1f15	00 	. 
	inc bc			;1f16	03 	. 
	rst 38h			;1f17	ff 	. 
	rrca			;1f18	0f 	. 
	rst 38h			;1f19	ff 	. 
	rlca			;1f1a	07 	. 
	rst 38h			;1f1b	ff 	. 
	inc bc			;1f1c	03 	. 
	nop			;1f1d	00 	. 
	inc bc			;1f1e	03 	. 
	rst 38h			;1f1f	ff 	. 
	rra			;1f20	1f 	. 
	rst 38h			;1f21	ff 	. 
	rrca			;1f22	0f 	. 
	rst 38h			;1f23	ff 	. 
	rlca			;1f24	07 	. 
	rst 38h			;1f25	ff 	. 
l1f26h:
	rst 38h			;1f26	ff 	. 
	ret nz			;1f27	c0 	. 
	add a,b			;1f28	80 	. 
	adc a,a			;1f29	8f 	. 
	add a,b			;1f2a	80 	. 
	nop			;1f2b	00 	. 
	inc bc			;1f2c	03 	. 
	adc a,b			;1f2d	88 	. 
	nop			;1f2e	00 	. 
	ld bc,0ffffh		;1f2f	01 ff ff 	. . . 
	nop			;1f32	00 	. 
	nop			;1f33	00 	. 
	ld bc,l00fdh+2		;1f34	01 ff 00 	. . . 
	inc b			;1f37	04 	. 
	nop			;1f38	00 	. 
	nop			;1f39	00 	. 
	inc bc			;1f3a	03 	. 
	adc a,b			;1f3b	88 	. 
	add a,a			;1f3c	87 	. 
	rst 38h			;1f3d	ff 	. 
	add a,b			;1f3e	80 	. 
	ret nz			;1f3f	c0 	. 
	nop			;1f40	00 	. 
	ld bc,l00fdh+2		;1f41	01 ff 00 	. . . 
	inc bc			;1f44	03 	. 
	nop			;1f45	00 	. 
	nop			;1f46	00 	. 
	ld bc,l00fdh+2		;1f47	01 ff 00 	. . . 
	inc bc			;1f4a	03 	. 
	nop			;1f4b	00 	. 
	rst 38h			;1f4c	ff 	. 
	rst 38h			;1f4d	ff 	. 
	ld bc,0f402h		;1f4e	01 02 f4 	. . . 
	ex af,af'			;1f51	08 	. 
	nop			;1f52	00 	. 
	ld b,004h		;1f53	06 04 	. . 
	call p,l0002h+2		;1f55	f4 04 00 	. . . 
	ld bc,l0100h		;1f58	01 00 01 	. . . 
	nop			;1f5b	00 	. 
	ld bc,l00fdh+2		;1f5c	01 ff 00 	. . . 
	nop			;1f5f	00 	. 
	nop			;1f60	00 	. 
	ex af,af'			;1f61	08 	. 
	rst 38h			;1f62	ff 	. 
	ld bc,08981h		;1f63	01 81 89 	. . . 
	push bc			;1f66	c5 	. 
	pop hl			;1f67	e1 	. 
	add a,c			;1f68	81 	. 
	ld a,l			;1f69	7d 	} 
	rst 38h			;1f6a	ff 	. 
	rst 38h			;1f6b	ff 	. 
	jp l0400h		;1f6c	c3 00 04 	. . . 
	cp l			;1f6f	bd 	. 
	sbc a,c			;1f70	99 	. 
	jp l01ffh		;1f71	c3 ff 01 	. . . 
	add hl,bc			;1f74	09 	. 
	ld b,l			;1f75	45 	E 
	pop hl			;1f76	e1 	. 
	ld bc,l00fdh		;1f77	01 fd 00 	. . . 
	ld bc,07fffh		;1f7a	01 ff 7f 	. .  
	nop			;1f7d	00 	. 
	jr $+1		;1f7e	18 ff 	. . 
	rst 38h			;1f80	ff 	. 
	or e			;1f81	b3 	. 
	nop			;1f82	00 	. 
	inc c			;1f83	0c 	. 
	rst 38h			;1f84	ff 	. 
	ld (hl),a			;1f85	77 	w 
	nop			;1f86	00 	. 
	ld bc,l00fdh+2		;1f87	01 ff 00 	. . . 
	ld bc,l0000h		;1f8a	01 00 00 	. . . 
	dec b			;1f8d	05 	. 
	rst 38h			;1f8e	ff 	. 
	ld (hl),a			;1f8f	77 	w 
	nop			;1f90	00 	. 
	ld bc,0ffffh		;1f91	01 ff ff 	. . . 
	inc sp			;1f94	33 	3 
	nop			;1f95	00 	. 
	ld b,0ffh		;1f96	06 ff 	. . 
	rst 38h			;1f98	ff 	. 
	inc sp			;1f99	33 	3 
	nop			;1f9a	00 	. 
	ld b,0ffh		;1f9b	06 ff 	. . 
	nop			;1f9d	00 	. 
	ld bc,l0000h		;1f9e	01 00 00 	. . . 
	dec b			;1fa1	05 	. 
	rst 38h			;1fa2	ff 	. 
	ld (hl),a			;1fa3	77 	w 
	cp 001h		;1fa4	fe 01 	. . 
	nop			;1fa6	00 	. 
	inc bc			;1fa7	03 	. 
	rst 38h			;1fa8	ff 	. 
	defb 0fdh,0feh,0ffh	;illegal sequence		;1fa9	fd fe ff 	. . . 
	rst 38h			;1fac	ff 	. 
	rst 38h			;1fad	ff 	. 
	inc sp			;1fae	33 	3 
	nop			;1faf	00 	. 
	dec b			;1fb0	05 	. 
	rst 38h			;1fb1	ff 	. 
	ex (sp),hl			;1fb2	e3 	. 
	cp b			;1fb3	b8 	. 
	cp h			;1fb4	bc 	. 
	rst 38h			;1fb5	ff 	. 
	cp 000h		;1fb6	fe 00 	. . 
	inc bc			;1fb8	03 	. 
	rst 38h			;1fb9	ff 	. 
	rst 38h			;1fba	ff 	. 
	inc bc			;1fbb	03 	. 
	inc de			;1fbc	13 	. 
	adc a,e			;1fbd	8b 	. 
	jp 0fb03h		;1fbe	c3 03 fb 	. . . 
	rst 38h			;1fc1	ff 	. 
	rst 38h			;1fc2	ff 	. 
	ret po			;1fc3	e0 	. 
	nop			;1fc4	00 	. 
	inc b			;1fc5	04 	. 
	rst 18h			;1fc6	df 	. 
	rst 8			;1fc7	cf 	. 
	ret po			;1fc8	e0 	. 
	nop			;1fc9	00 	. 
	ld bc,083ffh		;1fca	01 ff 83 	. . . 
	nop			;1fcd	00 	. 
	inc b			;1fce	04 	. 
	ld a,l			;1fcf	7d 	} 
	add hl,sp			;1fd0	39 	9 
	add a,e			;1fd1	83 	. 
	nop			;1fd2	00 	. 
	ld bc,l07ffh		;1fd3	01 ff 07 	. . . 
	nop			;1fd6	00 	. 
	inc b			;1fd7	04 	. 
	ei			;1fd8	fb 	. 
	di			;1fd9	f3 	. 
	rlca			;1fda	07 	. 
	nop			;1fdb	00 	. 
	ld bc,080ffh		;1fdc	01 ff 80 	. . . 
	nop			;1fdf	00 	. 
	inc b			;1fe0	04 	. 
	ld a,a			;1fe1	7f 	 
	ccf			;1fe2	3f 	? 
	add a,b			;1fe3	80 	. 
	nop			;1fe4	00 	. 
	ld bc,l03ffh		;1fe5	01 ff 03 	. . . 
	nop			;1fe8	00 	. 
	inc b			;1fe9	04 	. 
	ld sp,iy		;1fea	fd f9 	. . 
	inc bc			;1fec	03 	. 
	nop			;1fed	00 	. 
	ld bc,08e00h		;1fee	01 00 8e 	. . . 
	add a,h			;1ff1	84 	. 
	rst 38h			;1ff2	ff 	. 
	and b			;1ff3	a0 	. 
	add a,b			;1ff4	80 	. 
	ld a,a			;1ff5	7f 	 
	nop			;1ff6	00 	. 
	add hl,bc			;1ff7	09 	. 
	rst 38h			;1ff8	ff 	. 
	nop			;1ff9	00 	. 
	ex af,af'			;1ffa	08 	. 
	ld (hl),a			;1ffb	77 	w 
	add a,0dfh		;1ffc	c6 df 	. . 
	cp 000h		;1ffe	fe 00 	. . 
	inc bc			;2000	03 	. 
	call m,0f5f4h		;2001	fc f4 f5 	. . . 
	ret nz			;2004	c0 	. 
	rst 18h			;2005	df 	. 
	rst 38h			;2006	ff 	. 
	rst 38h			;2007	ff 	. 
	rst 38h			;2008	ff 	. 
	defb 0fdh,0feh,000h	;illegal sequence		;2009	fd fe 00 	. . . 
	ld bc,037ffh		;200c	01 ff 37 	. . 7 
	nop			;200f	00 	. 
	inc bc			;2010	03 	. 
	rst 38h			;2011	ff 	. 
	rst 38h			;2012	ff 	. 
	ei			;2013	fb 	. 
	nop			;2014	00 	. 
	ld bc,07fffh		;2015	01 ff 7f 	. .  
	inc bc			;2018	03 	. 
	ei			;2019	fb 	. 
	nop			;201a	00 	. 
	inc b			;201b	04 	. 
	rst 38h			;201c	ff 	. 
	rst 18h			;201d	df 	. 
	nop			;201e	00 	. 
	ld bc,0c0ffh		;201f	01 ff c0 	. . . 
	nop			;2022	00 	. 
	ld bc,0efffh		;2023	01 ff ef 	. . . 
	nop			;2026	00 	. 
	ld bc,0f1ffh		;2027	01 ff f1 	. . . 
	ret nz			;202a	c0 	. 
	rst 38h			;202b	ff 	. 
	add a,b			;202c	80 	. 
	rst 38h			;202d	ff 	. 
	rst 38h			;202e	ff 	. 
	rst 30h			;202f	f7 	. 
	rst 20h			;2030	e7 	. 
	rst 28h			;2031	ef 	. 
	nop			;2032	00 	. 
	ld bc,0cfffh		;2033	01 ff cf 	. . . 
	di			;2036	f3 	. 
	nop			;2037	00 	. 
	inc b			;2038	04 	. 
	nop			;2039	00 	. 
	rst 38h			;203a	ff 	. 
	add a,b			;203b	80 	. 
	rst 38h			;203c	ff 	. 
	add a,c			;203d	81 	. 
	ld b,e			;203e	43 	C 
	ld e,b			;203f	58 	X 
	ld c,h			;2040	4c 	L 
	adc a,0f6h		;2041	ce f6 	. . 
	jp p,07770h		;2043	f2 70 77 	. p w 
	nop			;2046	00 	. 
	ex af,af'			;2047	08 	. 
	rst 38h			;2048	ff 	. 
	ret m			;2049	f8 	. 
	nop			;204a	00 	. 
	dec b			;204b	05 	. 
	rst 38h			;204c	ff 	. 
	rst 18h			;204d	df 	. 
	adc a,a			;204e	8f 	. 
	inc bc			;204f	03 	. 
	ld a,b			;2050	78 	x 
	call m,0e3f2h		;2051	fc f2 e3 	. . . 
	jp 081ffh		;2054	c3 ff 81 	. . . 
	ld a,e			;2057	7b 	{ 
	ld a,a			;2058	7f 	 
	rst 38h			;2059	ff 	. 
	rst 38h			;205a	ff 	. 
	rst 30h			;205b	f7 	. 
	ei			;205c	fb 	. 
	nop			;205d	00 	. 
	ld bc,0f7ffh		;205e	01 ff f7 	. . . 
	cp a			;2061	bf 	. 
	nop			;2062	00 	. 
	ld bc,0dfffh		;2063	01 ff df 	. . . 
	nop			;2066	00 	. 
	ld bc,0bfffh		;2067	01 ff bf 	. . . 
	ccf			;206a	3f 	? 
	rst 38h			;206b	ff 	. 
	rst 38h			;206c	ff 	. 
	rst 18h			;206d	df 	. 
	rst 20h			;206e	e7 	. 
	ld sp,hl			;206f	f9 	. 
	cp 0fbh		;2070	fe fb 	. . 
	nop			;2072	00 	. 
	inc bc			;2073	03 	. 
	rst 38h			;2074	ff 	. 
	cp l			;2075	bd 	. 
	nop			;2076	00 	. 
	inc b			;2077	04 	. 
	defb 0fdh,0fch,0feh	;illegal sequence		;2078	fd fc fe 	. . . 
	di			;207b	f3 	. 
	defb 0fdh,000h,001h	;illegal sequence		;207c	fd 00 01 	. . . 
	rst 38h			;207f	ff 	. 
	rst 0			;2080	c7 	. 
	add a,c			;2081	81 	. 
	add a,a			;2082	87 	. 
	adc a,c			;2083	89 	. 
	ex de,hl			;2084	eb 	. 
	nop			;2085	00 	. 
	ld bc,0c3ffh		;2086	01 ff c3 	. . . 
	inc a			;2089	3c 	< 
	ret po			;208a	e0 	. 
	add a,b			;208b	80 	. 
	pop hl			;208c	e1 	. 
	sub c			;208d	91 	. 
	rst 10h			;208e	d7 	. 
	sbc a,a			;208f	9f 	. 
	rst 38h			;2090	ff 	. 
	rst 38h			;2091	ff 	. 
	rst 18h			;2092	df 	. 
	rst 38h			;2093	ff 	. 
	in a,(0ddh)		;2094	db dd 	. . 
	rst 28h			;2096	ef 	. 
	ld l,a			;2097	6f 	o 
	add a,a			;2098	87 	. 
	dec de			;2099	1b 	. 
	ld a,e			;209a	7b 	{ 
	rst 38h			;209b	ff 	. 
	in a,(0b7h)		;209c	db b7 	. . 
	rst 20h			;209e	e7 	. 
	rst 28h			;209f	ef 	. 
	rst 18h			;20a0	df 	. 
	nop			;20a1	00 	. 
	rlca			;20a2	07 	. 
	rst 38h			;20a3	ff 	. 
	jp l0100h		;20a4	c3 00 01 	. . . 
	rst 38h			;20a7	ff 	. 
	ld (hl),e			;20a8	73 	s 
	ex (sp),hl			;20a9	e3 	. 
	jp 0ecc5h		;20aa	c3 c5 ec 	. . . 
	ld sp,hl			;20ad	f9 	. 
	jp m,0f3efh		;20ae	fa ef f3 	. . . 
	ei			;20b1	fb 	. 
	ld a,a			;20b2	7f 	 
	nop			;20b3	00 	. 
	inc bc			;20b4	03 	. 
	rst 38h			;20b5	ff 	. 
	ei			;20b6	fb 	. 
	or 0fch		;20b7	f6 fc 	. . 
	cp 0e6h		;20b9	fe e6 	. . 
	jp p,000f8h		;20bb	f2 f8 00 	. . . 
	ld bc,081ffh		;20be	01 ff 81 	. . . 
	rst 38h			;20c1	ff 	. 
	pop bc			;20c2	c1 	. 
	rst 38h			;20c3	ff 	. 
	pop de			;20c4	d1 	. 
	pop bc			;20c5	c1 	. 
	cp l			;20c6	bd 	. 
	nop			;20c7	00 	. 
	ld bc,0fcffh		;20c8	01 ff fc 	. . . 
	cp 000h		;20cb	fe 00 	. . 
	inc bc			;20cd	03 	. 
	rst 38h			;20ce	ff 	. 
	sbc a,000h		;20cf	de 00 	. . 
	ld bc,0fcffh		;20d1	01 ff fc 	. . . 
	pop bc			;20d4	c1 	. 
	rst 18h			;20d5	df 	. 
	rst 28h			;20d6	ef 	. 
	rst 30h			;20d7	f7 	. 
	nop			;20d8	00 	. 
	inc b			;20d9	04 	. 
	rst 38h			;20da	ff 	. 
	cp 000h		;20db	fe 00 	. . 
	inc bc			;20dd	03 	. 
	rst 38h			;20de	ff 	. 
	cp (hl)			;20df	be 	. 
	nop			;20e0	00 	. 
	inc b			;20e1	04 	. 
	rst 38h			;20e2	ff 	. 
	ld h,a			;20e3	67 	g 
	ld a,b			;20e4	78 	x 
	rst 38h			;20e5	ff 	. 
	ld a,a			;20e6	7f 	 
	ccf			;20e7	3f 	? 
	ld a,a			;20e8	7f 	 
	exx			;20e9	d9 	. 
	ei			;20ea	fb 	. 
	rst 20h			;20eb	e7 	. 
	rra			;20ec	1f 	. 
	nop			;20ed	00 	. 
	inc b			;20ee	04 	. 
	rst 38h			;20ef	ff 	. 
	rst 30h			;20f0	f7 	. 
	nop			;20f1	00 	. 
	inc bc			;20f2	03 	. 
	ld l,(hl)			;20f3	6e 	n 
	ld l,l			;20f4	6d 	m 
	in a,(000h)		;20f5	db 00 	. . 
	inc bc			;20f7	03 	. 
	rst 38h			;20f8	ff 	. 
	rst 38h			;20f9	ff 	. 
	and 0f6h		;20fa	e6 f6 	. . 
	ei			;20fc	fb 	. 
	rst 38h			;20fd	ff 	. 
	rst 38h			;20fe	ff 	. 
l20ffh:
	ret po			;20ff	e0 	. 
	nop			;2100	00 	. 
	ld bc,0f9ffh		;2101	01 ff f9 	. . . 
	defb 0fdh,0ffh,0bch	;illegal sequence		;2104	fd ff bc 	. . . 
	call c,0f8fch		;2107	dc fc f8 	. . . 
	ld l,c			;210a	69 	i 
	ret nz			;210b	c0 	. 
	ex (sp),hl			;210c	e3 	. 
	pop hl			;210d	e1 	. 
	rst 38h			;210e	ff 	. 
	ret pe			;210f	e8 	. 
	ret po			;2110	e0 	. 
	rst 18h			;2111	df 	. 
	nop			;2112	00 	. 
	ld bc,06fffh		;2113	01 ff 6f 	. . o 
	rst 30h			;2116	f7 	. 
	rst 28h			;2117	ef 	. 
	ld a,a			;2118	7f 	 
	rst 38h			;2119	ff 	. 
	rst 38h			;211a	ff 	. 
	nop			;211b	00 	. 
	ld bc,l0000h		;211c	01 00 00 	. . . 
	ld bc,l03ffh		;211f	01 ff 03 	. . . 
	ret m			;2122	f8 	. 
l2123h:
	call m,0feffh		;2123	fc ff fe 	. . . 
	nop			;2126	00 	. 
	ld bc,l03ffh		;2127	01 ff 03 	. . . 
	nop			;212a	00 	. 
	dec b			;212b	05 	. 
	rst 38h			;212c	ff 	. 
	rst 18h			;212d	df 	. 
	sbc a,a			;212e	9f 	. 
	rst 38h			;212f	ff 	. 
	ccf			;2130	3f 	? 
	call m,l00fdh+1		;2131	fc fe 00 	. . . 
	ld b,0ffh		;2134	06 ff 	. . 
	rst 38h			;2136	ff 	. 
	ccf			;2137	3f 	? 
	nop			;2138	00 	. 
	inc bc			;2139	03 	. 
	ld a,a			;213a	7f 	 
	nop			;213b	00 	. 
	dec bc			;213c	0b 	. 
	rst 38h			;213d	ff 	. 
	ld a,a			;213e	7f 	 
	ccf			;213f	3f 	? 
	nop			;2140	00 	. 
	dec c			;2141	0d 	. 
	rst 38h			;2142	ff 	. 
	call m,l0800h		;2143	fc 00 08 	. . . 
	rst 38h			;2146	ff 	. 
	ret m			;2147	f8 	. 
	ret p			;2148	f0 	. 
	ret m			;2149	f8 	. 
	rst 38h			;214a	ff 	. 
	call m,l00fdh		;214b	fc fd 00 	. . . 
	inc d			;214e	14 	. 
	rst 38h			;214f	ff 	. 
	rst 38h			;2150	ff 	. 
	cp 000h		;2151	fe 00 	. . 
	inc bc			;2153	03 	. 
	rst 38h			;2154	ff 	. 
	cp 000h		;2155	fe 00 	. . 
	ld bc,0f7ffh		;2157	01 ff f7 	. . . 
	di			;215a	f3 	. 
	ld a,a			;215b	7f 	 
	nop			;215c	00 	. 
	ld bc,08fffh		;215d	01 ff 8f 	. . . 
	rlca			;2160	07 	. 
	rrca			;2161	0f 	. 
	nop			;2162	00 	. 
	inc de			;2163	13 	. 
	rst 38h			;2164	ff 	. 
	rst 30h			;2165	f7 	. 
	di			;2166	f3 	. 
	call m,l00fdh+1		;2167	fc fe 00 	. . . 
	rlca			;216a	07 	. 
	rst 38h			;216b	ff 	. 
	ld a,a			;216c	7f 	 
	sbc a,a			;216d	9f 	. 
	cp 0fch		;216e	fe fc 	. . 
	inc e			;2170	1c 	. 
	ld a,h			;2171	7c 	| 
	call m,0fffeh		;2172	fc fe ff 	. . . 
	rst 38h			;2175	ff 	. 
	rrca			;2176	0f 	. 
	ccf			;2177	3f 	? 
	ld a,a			;2178	7f 	 
	nop			;2179	00 	. 
	rrca			;217a	0f 	. 
	rst 38h			;217b	ff 	. 
	sbc a,a			;217c	9f 	. 
	add a,a			;217d	87 	. 
	rst 0			;217e	c7 	. 
	nop			;217f	00 	. 
	dec bc			;2180	0b 	. 
	rst 38h			;2181	ff 	. 
	sbc a,a			;2182	9f 	. 
	rst 0			;2183	c7 	. 
	ret nz			;2184	c0 	. 
	ret p			;2185	f0 	. 
	nop			;2186	00 	. 
	ex af,af'			;2187	08 	. 
	rst 38h			;2188	ff 	. 
	cp a			;2189	bf 	. 
	rst 0			;218a	c7 	. 
	rst 28h			;218b	ef 	. 
	rst 30h			;218c	f7 	. 
	nop			;218d	00 	. 
	inc e			;218e	1c 	. 
	rst 38h			;218f	ff 	. 
	cp 0f8h		;2190	fe f8 	. . 
	pop bc			;2192	c1 	. 
	inc bc			;2193	03 	. 
	nop			;2194	00 	. 
	inc bc			;2195	03 	. 
	rst 38h			;2196	ff 	. 
	sbc a,a			;2197	9f 	. 
	rra			;2198	1f 	. 
	ld c,a			;2199	4f 	O 
	sbc a,a			;219a	9f 	. 
	ccf			;219b	3f 	? 
	rst 30h			;219c	f7 	. 
	ei			;219d	fb 	. 
	nop			;219e	00 	. 
	ld bc,0feffh		;219f	01 ff fe 	. . . 
	nop			;21a2	00 	. 
	ld b,0ffh		;21a3	06 ff 	. . 
	rst 28h			;21a5	ef 	. 
	rra			;21a6	1f 	. 
	ccf			;21a7	3f 	? 
	nop			;21a8	00 	. 
	djnz $+1		;21a9	10 ff 	. . 
	cp a			;21ab	bf 	. 
	sbc a,a			;21ac	9f 	. 
	ret nz			;21ad	c0 	. 
	inc c			;21ae	0c 	. 
	jr l2229h		;21af	18 78 	. x 
	ret m			;21b1	f8 	. 
	defb 0fdh,000h,003h	;illegal sequence		;21b2	fd 00 03 	. . . 
	rst 38h			;21b5	ff 	. 
	ccf			;21b6	3f 	? 
	ld a,a			;21b7	7f 	 
	nop			;21b8	00 	. 
	ld c,0ffh		;21b9	0e ff 	. . 
	ld a,a			;21bb	7f 	 
	ccf			;21bc	3f 	? 
	sbc a,a			;21bd	9f 	. 
	sbc a,000h		;21be	de 00 	. . 
	inc c			;21c0	0c 	. 
	rst 38h			;21c1	ff 	. 
	rst 38h			;21c2	ff 	. 
	ret po			;21c3	e0 	. 
	ret p			;21c4	f0 	. 
	nop			;21c5	00 	. 
	ex af,af'			;21c6	08 	. 
	rst 38h			;21c7	ff 	. 
	ccf			;21c8	3f 	? 
	adc a,a			;21c9	8f 	. 
	rst 18h			;21ca	df 	. 
	rst 38h			;21cb	ff 	. 
	rst 38h			;21cc	ff 	. 
	rst 38h			;21cd	ff 	. 
	rst 18h			;21ce	df 	. 
	rst 8			;21cf	cf 	. 
	rst 28h			;21d0	ef 	. 
	rst 20h			;21d1	e7 	. 
	rst 30h			;21d2	f7 	. 
	rst 38h			;21d3	ff 	. 
	di			;21d4	f3 	. 
	nop			;21d5	00 	. 
	ld bc,07fffh		;21d6	01 ff 7f 	. .  
	rra			;21d9	1f 	. 
	add a,a			;21da	87 	. 
	ex (sp),hl			;21db	e3 	. 
	nop			;21dc	00 	. 
	inc bc			;21dd	03 	. 
	rst 38h			;21de	ff 	. 
	sbc a,a			;21df	9f 	. 
	rst 38h			;21e0	ff 	. 
	cp a			;21e1	bf 	. 
	rra			;21e2	1f 	. 
	rrca			;21e3	0f 	. 
	ld a,a			;21e4	7f 	 
	nop			;21e5	00 	. 
	ld bc,07fffh		;21e6	01 ff 7f 	. .  
	rst 38h			;21e9	ff 	. 
	cp 07eh		;21ea	fe 7e 	. ~ 
	rst 38h			;21ec	ff 	. 
	ccf			;21ed	3f 	? 
	nop			;21ee	00 	. 
	inc bc			;21ef	03 	. 
	rst 38h			;21f0	ff 	. 
	nop			;21f1	00 	. 
	inc bc			;21f2	03 	. 
	ld a,a			;21f3	7f 	 
	ccf			;21f4	3f 	? 
	rst 28h			;21f5	ef 	. 
	add a,a			;21f6	87 	. 
	rst 0			;21f7	c7 	. 
	rst 20h			;21f8	e7 	. 
	rst 30h			;21f9	f7 	. 
	di			;21fa	f3 	. 
	ret m			;21fb	f8 	. 
	rst 38h			;21fc	ff 	. 
	call m,l0100h		;21fd	fc 00 01 	. . . 
	rst 38h			;2200	ff 	. 
	nop			;2201	00 	. 
	inc bc			;2202	03 	. 
	ret m			;2203	f8 	. 
	call m,l0100h		;2204	fc 00 01 	. . . 
	rst 38h			;2207	ff 	. 
	ld a,a			;2208	7f 	 
	nop			;2209	00 	. 
	inc bc			;220a	03 	. 
	rst 38h			;220b	ff 	. 
	ld a,a			;220c	7f 	 
	nop			;220d	00 	. 
	inc bc			;220e	03 	. 
	call m,0ffffh		;220f	fc ff ff 	. . . 
	ex (sp),hl			;2212	e3 	. 
	ld sp,hl			;2213	f9 	. 
	nop			;2214	00 	. 
	ld bc,07fffh		;2215	01 ff 7f 	. .  
	rst 38h			;2218	ff 	. 
	rst 38h			;2219	ff 	. 
	rst 38h			;221a	ff 	. 
	defb 0fdh,0f1h,0f9h	;illegal sequence		;221b	fd f1 f9 	. . . 
	nop			;221e	00 	. 
	add hl,bc			;221f	09 	. 
	rst 38h			;2220	ff 	. 
	di			;2221	f3 	. 
	rst 28h			;2222	ef 	. 
	rst 18h			;2223	df 	. 
	nop			;2224	00 	. 
	inc bc			;2225	03 	. 
	cp a			;2226	bf 	. 
	rst 38h			;2227	ff 	. 
	ld a,a			;2228	7f 	 
l2229h:
	rst 38h			;2229	ff 	. 
	rst 38h			;222a	ff 	. 
	nop			;222b	00 	. 
	ld b,0feh		;222c	06 fe 	. . 
	rst 38h			;222e	ff 	. 
	ld a,a			;222f	7f 	 
	nop			;2230	00 	. 
	dec b			;2231	05 	. 
	rst 38h			;2232	ff 	. 
	defb 0fdh,000h,005h	;illegal sequence		;2233	fd 00 05 	. . . 
	rst 38h			;2236	ff 	. 
	nop			;2237	00 	. 
	inc bc			;2238	03 	. 
	ei			;2239	fb 	. 
	nop			;223a	00 	. 
	inc b			;223b	04 	. 
	rst 38h			;223c	ff 	. 
	nop			;223d	00 	. 
	ld a,(bc)			;223e	0a 	. 
	rst 30h			;223f	f7 	. 
	nop			;2240	00 	. 
	dec b			;2241	05 	. 
	rst 28h			;2242	ef 	. 
	rst 38h			;2243	ff 	. 
	rst 18h			;2244	df 	. 
	nop			;2245	00 	. 
	inc bc			;2246	03 	. 
	rst 38h			;2247	ff 	. 
	cp 000h		;2248	fe 00 	. . 
	ld b,0fdh		;224a	06 fd 	. . 
	cp a			;224c	bf 	. 
	nop			;224d	00 	. 
	rlca			;224e	07 	. 
	defb 0fdh,0ffh,0ffh	;illegal sequence		;224f	fd ff ff 	. . . 
	cp a			;2252	bf 	. 
	xor a			;2253	af 	. 
	sbc a,a			;2254	9f 	. 
	rst 18h			;2255	df 	. 
	rst 38h			;2256	ff 	. 
	rst 38h			;2257	ff 	. 
	ld a,a			;2258	7f 	 
	nop			;2259	00 	. 
	ld b,0ffh		;225a	06 ff 	. . 
	ret nz			;225c	c0 	. 
	rrca			;225d	0f 	. 
	rst 38h			;225e	ff 	. 
	rst 28h			;225f	ef 	. 
	nop			;2260	00 	. 
	inc bc			;2261	03 	. 
	rst 38h			;2262	ff 	. 
	cp 0ffh		;2263	fe ff 	. . 
	call m,l0400h		;2265	fc 00 04 	. . . 
	rst 38h			;2268	ff 	. 
	ld a,a			;2269	7f 	 
	rst 38h			;226a	ff 	. 
	rst 38h			;226b	ff 	. 
	ld a,a			;226c	7f 	 
	cp 000h		;226d	fe 00 	. . 
	dec b			;226f	05 	. 
	rst 38h			;2270	ff 	. 
	ld a,a			;2271	7f 	 
	nop			;2272	00 	. 
	ld bc,01fffh		;2273	01 ff 1f 	. . . 
	nop			;2276	00 	. 
	ld b,0ffh		;2277	06 ff 	. . 
	call m,0ffffh		;2279	fc ff ff 	. . . 
	call m,sub_1100h		;227c	fc 00 11 	. . . 
	rst 38h			;227f	ff 	. 
	rst 20h			;2280	e7 	. 
	nop			;2281	00 	. 
	rlca			;2282	07 	. 
	rst 38h			;2283	ff 	. 
	cp 000h		;2284	fe 00 	. . 
	ex af,af'			;2286	08 	. 
	rst 38h			;2287	ff 	. 
	sbc a,a			;2288	9f 	. 
	nop			;2289	00 	. 
	ld c,0ffh		;228a	0e ff 	. . 
	ld a,a			;228c	7f 	 
	nop			;228d	00 	. 
	rla			;228e	17 	. 
	rst 38h			;228f	ff 	. 
	rst 18h			;2290	df 	. 
	nop			;2291	00 	. 
	jr $+1		;2292	18 ff 	. . 
	rst 18h			;2294	df 	. 
	nop			;2295	00 	. 
	djnz $+1		;2296	10 ff 	. . 
	call m,sub_0900h		;2298	fc 00 09 	. . . 
l229bh:
	rst 38h			;229b	ff 	. 
	rst 38h			;229c	ff 	. 
	ret nz			;229d	c0 	. 
	nop			;229e	00 	. 
	inc bc			;229f	03 	. 
	add a,b			;22a0	80 	. 
	ret nz			;22a1	c0 	. 
	rst 38h			;22a2	ff 	. 
	rst 38h			;22a3	ff 	. 
	inc e			;22a4	1c 	. 
	jr $+1		;22a5	18 ff 	. . 
	ld a,(de)			;22a7	1a 	. 
	ld a,03fh		;22a8	3e 3f 	> ? 
	rst 38h			;22aa	ff 	. 
	rst 38h			;22ab	ff 	. 
	ld (hl),b			;22ac	70 	p 
	nop			;22ad	00 	. 
	dec b			;22ae	05 	. 
	jr nc,l2330h		;22af	30 7f 	0  
	nop			;22b1	00 	. 
	ld bc,l01ffh		;22b2	01 ff 01 	. . . 
	rrca			;22b5	0f 	. 
	dec d			;22b6	15 	. 
	jr $+42		;22b7	18 28 	. ( 
	jr nz,l229bh		;22b9	20 e0 	  . 
	nop			;22bb	00 	. 
	ld bc,0feffh		;22bc	01 ff fe 	. . . 
	nop			;22bf	00 	. 
	inc b			;22c0	04 	. 
	ld b,007h		;22c1	06 07 	. . 
	rst 38h			;22c3	ff 	. 
	rst 38h			;22c4	ff 	. 
	nop			;22c5	00 	. 
	inc b			;22c6	04 	. 
	ld b,b			;22c7	40 	@ 
	jr nz,l22e2h		;22c8	20 18 	  . 
	ret nz			;22ca	c0 	. 
	nop			;22cb	00 	. 
	ld bc,08cffh		;22cc	01 ff 8c 	. . . 
	ret po			;22cf	e0 	. 
	ret p			;22d0	f0 	. 
	jr l22dbh		;22d1	18 08 	. . 
	inc b			;22d3	04 	. 
	rlca			;22d4	07 	. 
	nop			;22d5	00 	. 
	ld bc,l00fdh+2		;22d6	01 ff 00 	. . . 
	ld b,003h		;22d9	06 03 	. . 
l22dbh:
	nop			;22db	00 	. 
	inc bc			;22dc	03 	. 
	rst 38h			;22dd	ff 	. 
	rst 28h			;22de	ef 	. 
	rst 18h			;22df	df 	. 
	add a,0cbh		;22e0	c6 cb 	. . 
l22e2h:
	call 0ccffh		;22e2	cd ff cc 	. . . 
	rst 38h			;22e5	ff 	. 
	rst 38h			;22e6	ff 	. 
	ld a,l			;22e7	7d 	} 
	sub l			;22e8	95 	. 
	ld l,e			;22e9	6b 	k 
	rst 38h			;22ea	ff 	. 
	rst 30h			;22eb	f7 	. 
	ld a,a			;22ec	7f 	 
	sbc a,0c3h		;22ed	de c3 	. . 
	rst 38h			;22ef	ff 	. 
	call 0e1c0h		;22f0	cd c0 e1 	. . . 
	rst 38h			;22f3	ff 	. 
	rst 38h			;22f4	ff 	. 
	cp a			;22f5	bf 	. 
	ld e,l			;22f6	5d 	] 
	sbc a,d			;22f7	9a 	. 
	and l			;22f8	a5 	. 
	adc a,a			;22f9	8f 	. 
	ex af,af'			;22fa	08 	. 
	nop			;22fb	00 	. 
	inc b			;22fc	04 	. 
	rst 38h			;22fd	ff 	. 
	call nc,08eb7h		;22fe	d4 b7 8e 	. . . 
	ld a,(hl)			;2301	7e 	~ 
	ld a,h			;2302	7c 	| 
	ld a,l			;2303	7d 	} 
	rst 38h			;2304	ff 	. 
	rst 38h			;2305	ff 	. 
	ld bc,0750dh		;2306	01 0d 75 	. . u 
	rst 38h			;2309	ff 	. 
	defb 0fdh,0bdh	;cp iyl		;230a	fd bd 	. . 
	defb 0ddh,0a3h,0d6h	;illegal sequence		;230c	dd a3 d6 	. . . 
	jp pe,l04ffh		;230f	ea ff 04 	. . . 
	rst 38h			;2312	ff 	. 
	rst 38h			;2313	ff 	. 
	defb 0ddh,0fdh,04dh	;illegal sequence		;2314	dd fd 4d 	. . M 
	neg		;2317	ed 44 	. D 
	ld b,e			;2319	43 	C 
	rst 38h			;231a	ff 	. 
	rst 38h			;231b	ff 	. 
	add a,b			;231c	80 	. 
	nop			;231d	00 	. 
	dec b			;231e	05 	. 
	nop			;231f	00 	. 
	add a,b			;2320	80 	. 
	nop			;2321	00 	. 
	ld bc,l00fdh+2		;2322	01 ff 00 	. . . 
	rlca			;2325	07 	. 
	nop			;2326	00 	. 
	nop			;2327	00 	. 
	ld bc,l03ffh		;2328	01 ff 03 	. . . 
	nop			;232b	00 	. 
	dec b			;232c	05 	. 
	ld bc,l0002h+1		;232d	01 03 00 	. . . 
l2330h:
	ld bc,l07ffh		;2330	01 ff 07 	. . . 
	nop			;2333	00 	. 
	dec b			;2334	05 	. 
	inc bc			;2335	03 	. 
	rlca			;2336	07 	. 
	nop			;2337	00 	. 
	inc bc			;2338	03 	. 
	rst 38h			;2339	ff 	. 
	sbc a,a			;233a	9f 	. 
	adc a,a			;233b	8f 	. 
	adc a,b			;233c	88 	. 
	sbc a,a			;233d	9f 	. 
	rst 38h			;233e	ff 	. 
	sbc a,e			;233f	9b 	. 
	nop			;2340	00 	. 
	inc b			;2341	04 	. 
	rst 38h			;2342	ff 	. 
	nop			;2343	00 	. 
	ld bc,l0000h		;2344	01 00 00 	. . . 
	inc bc			;2347	03 	. 
	rst 38h			;2348	ff 	. 
	rst 38h			;2349	ff 	. 
	sbc a,e			;234a	9b 	. 
	sbc a,b			;234b	98 	. 
	adc a,a			;234c	8f 	. 
	add a,a			;234d	87 	. 
	add a,b			;234e	80 	. 
	ret nz			;234f	c0 	. 
	nop			;2350	00 	. 
	inc bc			;2351	03 	. 
	rst 38h			;2352	ff 	. 
	nop			;2353	00 	. 
	ld bc,0ff00h		;2354	01 00 ff 	. . . 
	rst 38h			;2357	ff 	. 
	rst 38h			;2358	ff 	. 
	nop			;2359	00 	. 
	nop			;235a	00 	. 
	inc bc			;235b	03 	. 
	rst 38h			;235c	ff 	. 
	defb 0fdh,0fbh,00fh	;illegal sequence		;235d	fd fb 0f 	. . . 
	nop			;2360	00 	. 
	dec b			;2361	05 	. 
	rst 30h			;2362	f7 	. 
	rla			;2363	17 	. 
	nop			;2364	00 	. 
	ld bc,0f7ffh		;2365	01 ff f7 	. . . 
	inc bc			;2368	03 	. 
	ld bc,l0100h		;2369	01 00 01 	. . . 
	rst 38h			;236c	ff 	. 
	nop			;236d	00 	. 
	nop			;236e	00 	. 
	nop			;236f	00 	. 
	ex af,af'			;2370	08 	. 
	rst 38h			;2371	ff 	. 
	ld bc,0ad9dh		;2372	01 9d ad 	. . . 
	push af			;2375	f5 	. 
	ei			;2376	fb 	. 
	adc a,a			;2377	8f 	. 
	ld a,l			;2378	7d 	} 
	rst 38h			;2379	ff 	. 
	rst 38h			;237a	ff 	. 
	res 7,l		;237b	cb bd 	. . 
	cp a			;237d	bf 	. 
	rst 38h			;237e	ff 	. 
	cp l			;237f	bd 	. 
	sbc a,c			;2380	99 	. 
	jp 01d01h		;2381	c3 01 1d 	. . . 
	dec l			;2384	2d 	- 
	ld (hl),l			;2385	75 	u 
	ei			;2386	fb 	. 
	rrca			;2387	0f 	. 
	defb 0fdh,000h,001h	;illegal sequence		;2388	fd 00 01 	. . . 
	rst 38h			;238b	ff 	. 
	ld a,a			;238c	7f 	 
	nop			;238d	00 	. 
	jr $+1		;238e	18 ff 	. . 
	rst 38h			;2390	ff 	. 
	rst 30h			;2391	f7 	. 
	nop			;2392	00 	. 
	ld c,0ffh		;2393	0e ff 	. . 
	nop			;2395	00 	. 
	ld bc,l0000h		;2396	01 00 00 	. . . 
	rlca			;2399	07 	. 
	rst 38h			;239a	ff 	. 
	rst 38h			;239b	ff 	. 
	ld a,e			;239c	7b 	{ 
	nop			;239d	00 	. 
	ld b,0ffh		;239e	06 ff 	. . 
	rst 38h			;23a0	ff 	. 
	cp e			;23a1	bb 	. 
	nop			;23a2	00 	. 
	ld b,0ffh		;23a3	06 ff 	. . 
	rra			;23a5	1f 	. 
	nop			;23a6	00 	. 
	dec b			;23a7	05 	. 
	rst 38h			;23a8	ff 	. 
	rst 30h			;23a9	f7 	. 
	nop			;23aa	00 	. 
	ld bc,0e1ffh		;23ab	01 ff e1 	. . . 
	nop			;23ae	00 	. 
	rlca			;23af	07 	. 
	rst 38h			;23b0	ff 	. 
	rst 38h			;23b1	ff 	. 
	ld (hl),a			;23b2	77 	w 
	nop			;23b3	00 	. 
	dec b			;23b4	05 	. 
	rst 38h			;23b5	ff 	. 
	di			;23b6	f3 	. 
	nop			;23b7	00 	. 
	rlca			;23b8	07 	. 
	rst 38h			;23b9	ff 	. 
	inc bc			;23ba	03 	. 
	dec sp			;23bb	3b 	; 
	ld e,e			;23bc	5b 	[ 
	ex de,hl			;23bd	eb 	. 
	rst 30h			;23be	f7 	. 
	rra			;23bf	1f 	. 
	ei			;23c0	fb 	. 
	rst 38h			;23c1	ff 	. 
	rst 38h			;23c2	ff 	. 
	rst 20h			;23c3	e7 	. 
	nop			;23c4	00 	. 
	inc b			;23c5	04 	. 
	rst 18h			;23c6	df 	. 
	rst 8			;23c7	cf 	. 
	ret po			;23c8	e0 	. 
	nop			;23c9	00 	. 
	ld bc,09bffh		;23ca	01 ff 9b 	. . . 
	ld a,l			;23cd	7d 	} 
	ld a,a			;23ce	7f 	 
	rst 38h			;23cf	ff 	. 
	ld a,l			;23d0	7d 	} 
	add hl,sp			;23d1	39 	9 
	add a,e			;23d2	83 	. 
	nop			;23d3	00 	. 
	ld bc,0f7ffh		;23d4	01 ff f7 	. . . 
	ei			;23d7	fb 	. 
	nop			;23d8	00 	. 
	ld bc,0ffffh		;23d9	01 ff ff 	. . . 
	ei			;23dc	fb 	. 
	di			;23dd	f3 	. 
	rlca			;23de	07 	. 
	nop			;23df	00 	. 
	ld bc,09fffh		;23e0	01 ff 9f 	. . . 
	nop			;23e3	00 	. 
	inc b			;23e4	04 	. 
	ld a,a			;23e5	7f 	 
	ccf			;23e6	3f 	? 
	add a,b			;23e7	80 	. 
	nop			;23e8	00 	. 
	ld bc,0fbffh		;23e9	01 ff fb 	. . . 
	defb 0fdh,000h,001h	;illegal sequence		;23ec	fd 00 01 	. . . 
	rst 38h			;23ef	ff 	. 
	rst 38h			;23f0	ff 	. 
	ld sp,iy		;23f1	fd f9 	. . 
	inc bc			;23f3	03 	. 
	ld h,b			;23f4	60 	` 
	xor 0b4h		;23f5	ee b4 	. . 
	cp b			;23f7	b8 	. 
	xor h			;23f8	ac 	. 
	add a,(hl)			;23f9	86 	. 
	ld a,a			;23fa	7f 	 
	nop			;23fb	00 	. 
	inc de			;23fc	13 	. 
	rst 38h			;23fd	ff 	. 
	nop			;23fe	00 	. 
l23ffh:
	inc b			;23ff	04 	. 
	cp 000h		;2400	fe 00 	. . 
	ld (de),a			;2402	12 	. 
	rst 38h			;2403	ff 	. 
	di			;2404	f3 	. 
	nop			;2405	00 	. 
	dec bc			;2406	0b 	. 
	rst 38h			;2407	ff 	. 
	di			;2408	f3 	. 
	call nz,0988ch		;2409	c4 8c 98 	. . . 
	rst 38h			;240c	ff 	. 
	rst 38h			;240d	ff 	. 
	rst 30h			;240e	f7 	. 
	rst 20h			;240f	e7 	. 
	rst 28h			;2410	ef 	. 
	nop			;2411	00 	. 
	ld bc,0cfffh		;2412	01 ff cf 	. . . 
	di			;2415	f3 	. 
	jr $+30		;2416	18 1c 	. . 
	rrca			;2418	0f 	. 
	rlca			;2419	07 	. 
	add a,b			;241a	80 	. 
	add a,e			;241b	83 	. 
	add a,a			;241c	87 	. 
	sbc a,a			;241d	9f 	. 
	out (000h),a		;241e	d3 00 	. . 
	dec b			;2420	05 	. 
	rst 38h			;2421	ff 	. 
	rst 38h			;2422	ff 	. 
	ld a,a			;2423	7f 	 
	nop			;2424	00 	. 
	ld c,0ffh		;2425	0e ff 	. . 
	rst 18h			;2427	df 	. 
	rst 8			;2428	cf 	. 
	di			;2429	f3 	. 
	rst 38h			;242a	ff 	. 
	rst 38h			;242b	ff 	. 
	ei			;242c	fb 	. 
	rst 38h			;242d	ff 	. 
	rst 38h			;242e	ff 	. 
	rst 38h			;242f	ff 	. 
	defb 0fdh,0fbh,000h	;illegal sequence		;2430	fd fb 00 	. . . 
	ld b,0ffh		;2433	06 ff 	. . 
	rst 30h			;2435	f7 	. 
	nop			;2436	00 	. 
	inc c			;2437	0c 	. 
	rst 38h			;2438	ff 	. 
	ei			;2439	fb 	. 
	nop			;243a	00 	. 
	ld a,(bc)			;243b	0a 	. 
	rst 38h			;243c	ff 	. 
	ei			;243d	fb 	. 
	defb 0fdh,000h,001h	;illegal sequence		;243e	fd 00 01 	. . . 
	rst 38h			;2441	ff 	. 
	rst 0			;2442	c7 	. 
	adc a,a			;2443	8f 	. 
	rst 38h			;2444	ff 	. 
	sbc a,a			;2445	9f 	. 
	rst 38h			;2446	ff 	. 
	rst 38h			;2447	ff 	. 
	rst 18h			;2448	df 	. 
	ccf			;2449	3f 	? 
	push hl			;244a	e5 	. 
	jp (hl)			;244b	e9 	. 
	rst 30h			;244c	f7 	. 
	exx			;244d	d9 	. 
	rst 38h			;244e	ff 	. 
	rst 18h			;244f	df 	. 
	nop			;2450	00 	. 
	inc bc			;2451	03 	. 
	rst 38h			;2452	ff 	. 
	rst 38h			;2453	ff 	. 
	ei			;2454	fb 	. 
	defb 0fdh,000h,001h	;illegal sequence		;2455	fd 00 01 	. . . 
	rst 38h			;2458	ff 	. 
	rst 28h			;2459	ef 	. 
	nop			;245a	00 	. 
	ld bc,0ffffh		;245b	01 ff ff 	. . . 
	ei			;245e	fb 	. 
	rst 38h			;245f	ff 	. 
	in a,(0b7h)		;2460	db b7 	. . 
	rst 20h			;2462	e7 	. 
	rst 28h			;2463	ef 	. 
	rst 18h			;2464	df 	. 
	nop			;2465	00 	. 
	add hl,bc			;2466	09 	. 
	rst 38h			;2467	ff 	. 
	ld a,e			;2468	7b 	{ 
	rst 38h			;2469	ff 	. 
	ei			;246a	fb 	. 
	nop			;246b	00 	. 
	inc bc			;246c	03 	. 
	rst 38h			;246d	ff 	. 
	cp 000h		;246e	fe 00 	. . 
	inc bc			;2470	03 	. 
	rst 38h			;2471	ff 	. 
	ld a,a			;2472	7f 	 
	nop			;2473	00 	. 
	dec bc			;2474	0b 	. 
	rst 38h			;2475	ff 	. 
	or c			;2476	b1 	. 
	defb 0fdh,0d9h,0ddh	;illegal sequence		;2477	fd d9 dd 	. . . 
	rst 10h			;247a	d7 	. 
	jp l00bdh		;247b	c3 bd 00 	. . . 
	ex af,af'			;247e	08 	. 
	rst 38h			;247f	ff 	. 
	cp 000h		;2480	fe 00 	. . 
	inc c			;2482	0c 	. 
	rst 38h			;2483	ff 	. 
	cp a			;2484	bf 	. 
	nop			;2485	00 	. 
	dec bc			;2486	0b 	. 
	rst 38h			;2487	ff 	. 
	ei			;2488	fb 	. 
	nop			;2489	00 	. 
	ld b,0ffh		;248a	06 ff 	. . 
	rst 30h			;248c	f7 	. 
	cp 0efh		;248d	fe ef 	. . 
	nop			;248f	00 	. 
	ld b,0ffh		;2490	06 ff 	. . 
	rst 38h			;2492	ff 	. 
	and 0f6h		;2493	e6 f6 	. . 
	ei			;2495	fb 	. 
	rst 38h			;2496	ff 	. 
	rst 38h			;2497	ff 	. 
	ret po			;2498	e0 	. 
	nop			;2499	00 	. 
	ld bc,0fdffh		;249a	01 ff fd 	. . . 
	nop			;249d	00 	. 
	ld bc,0ffffh		;249e	01 ff ff 	. . . 
	cp (hl)			;24a1	be 	. 
	sbc a,0ffh		;24a2	de ff 	. . 
	cp 069h		;24a4	fe 69 	. i 
	ret c			;24a6	d8 	. 
	ei			;24a7	fb 	. 
	defb 0edh;next byte illegal after ed		;24a8	ed 	. 
	xor 0ebh		;24a9	ee eb 	. . 
	pop hl			;24ab	e1 	. 
	rst 18h			;24ac	df 	. 
	nop			;24ad	00 	. 
	ld bc,06fffh		;24ae	01 ff 6f 	. . o 
	rst 30h			;24b1	f7 	. 
	rst 28h			;24b2	ef 	. 
	ld a,a			;24b3	7f 	 
	rst 38h			;24b4	ff 	. 
	rst 38h			;24b5	ff 	. 
	ld a,a			;24b6	7f 	 
	nop			;24b7	00 	. 
	ld bc,0f3ffh		;24b8	01 ff f3 	. . . 
	nop			;24bb	00 	. 
	dec b			;24bc	05 	. 
	rst 38h			;24bd	ff 	. 
	add a,e			;24be	83 	. 
	nop			;24bf	00 	. 
	ld bc,l3fffh		;24c0	01 ff 3f 	. . ? 
	rst 38h			;24c3	ff 	. 
	rra			;24c4	1f 	. 
	ccf			;24c5	3f 	? 
	daa			;24c6	27 	' 
	ld h,e			;24c7	63 	c 
	rst 38h			;24c8	ff 	. 
	pop bc			;24c9	c1 	. 
	nop			;24ca	00 	. 
	inc b			;24cb	04 	. 
	rst 38h			;24cc	ff 	. 
	cp 000h		;24cd	fe 00 	. . 
	inc bc			;24cf	03 	. 
	ret m			;24d0	f8 	. 
	rst 38h			;24d1	ff 	. 
	ret nz			;24d2	c0 	. 
	nop			;24d3	00 	. 
	inc b			;24d4	04 	. 
	add a,b			;24d5	80 	. 
	pop bc			;24d6	c1 	. 
	nop			;24d7	00 	. 
	ld bc,0f8ffh		;24d8	01 ff f8 	. . . 
	call m,sub_007fh		;24db	fc 7f 00 	.  . 
	dec b			;24de	05 	. 
	ccf			;24df	3f 	? 
	pop hl			;24e0	e1 	. 
	ei			;24e1	fb 	. 
	nop			;24e2	00 	. 
	ld bc,08fffh		;24e3	01 ff 8f 	. . . 
	nop			;24e6	00 	. 
	inc bc			;24e7	03 	. 
	rlca			;24e8	07 	. 
	rra			;24e9	1f 	. 
	cp 000h		;24ea	fe 00 	. . 
	inc bc			;24ec	03 	. 
	call m,0fff8h		;24ed	fc f8 ff 	. . . 
	ret p			;24f0	f0 	. 
	di			;24f1	f3 	. 
	inc hl			;24f2	23 	# 
	ret nz			;24f3	c0 	. 
	ret p			;24f4	f0 	. 
	call m,00600h		;24f5	fc 00 06 	. . . 
	rst 38h			;24f8	ff 	. 
	rrca			;24f9	0f 	. 
	rst 38h			;24fa	ff 	. 
	rlca			;24fb	07 	. 
	rst 38h			;24fc	ff 	. 
	add a,a			;24fd	87 	. 
	rrca			;24fe	0f 	. 
l24ffh:
	cp 0fch		;24ff	fe fc 	. . 
	add a,e			;2501	83 	. 
	ret p			;2502	f0 	. 
	call m,sub_0300h		;2503	fc 00 03 	. . . 
	cp 03bh		;2506	fe 3b 	. ; 
	ld a,h			;2508	7c 	| 
	cp 000h		;2509	fe 00 	. . 
	ld bc,07fffh		;250b	01 ff 7f 	. .  
	nop			;250e	00 	. 
	inc bc			;250f	03 	. 
	ccf			;2510	3f 	? 
	cp 03eh		;2511	fe 3e 	. > 
	rrca			;2513	0f 	. 
	inc bc			;2514	03 	. 
	nop			;2515	00 	. 
	ld bc,l0100h		;2516	01 00 01 	. . . 
	inc bc			;2519	03 	. 
	rlca			;251a	07 	. 
	nop			;251b	00 	. 
	inc bc			;251c	03 	. 
	rra			;251d	1f 	. 
	cp h			;251e	bc 	. 
	ret po			;251f	e0 	. 
	ret p			;2520	f0 	. 
	ret m			;2521	f8 	. 
	nop			;2522	00 	. 
	ld bc,0feffh		;2523	01 ff fe 	. . . 
	inc a			;2526	3c 	< 
	inc bc			;2527	03 	. 
	add a,c			;2528	81 	. 
	jp 08486h		;2529	c3 86 84 	. . . 
	adc a,b			;252c	88 	. 
	rra			;252d	1f 	. 
	ld a,a			;252e	7f 	 
	nop			;252f	00 	. 
	inc bc			;2530	03 	. 
	rst 38h			;2531	ff 	. 
	ld a,a			;2532	7f 	 
	rra			;2533	1f 	. 
	rlca			;2534	07 	. 
	sbc a,a			;2535	9f 	. 
	rst 38h			;2536	ff 	. 
	rst 38h			;2537	ff 	. 
	rra			;2538	1f 	. 
	rrca			;2539	0f 	. 
	inc bc			;253a	03 	. 
	ld bc,l01e0h		;253b	01 e0 01 	. . . 
	ret m			;253e	f8 	. 
	rst 38h			;253f	ff 	. 
	cp 0fch		;2540	fe fc 	. . 
	ret p			;2542	f0 	. 
	rst 38h			;2543	ff 	. 
	ret po			;2544	e0 	. 
	rlca			;2545	07 	. 
	rrca			;2546	0f 	. 
	rst 38h			;2547	ff 	. 
	rst 38h			;2548	ff 	. 
	adc a,a			;2549	8f 	. 
	jp 0e1ffh		;254a	c3 ff e1 	. . . 
	nop			;254d	00 	. 
	ex af,af'			;254e	08 	. 
	rst 38h			;254f	ff 	. 
	nop			;2550	00 	. 
	inc b			;2551	04 	. 
	ret p			;2552	f0 	. 
	ret po			;2553	e0 	. 
	pop bc			;2554	c1 	. 
	add a,e			;2555	83 	. 
	ccf			;2556	3f 	? 
	nop			;2557	00 	. 
	dec b			;2558	05 	. 
	rst 38h			;2559	ff 	. 
	cp 0ffh		;255a	fe ff 	. . 
	rst 38h			;255c	ff 	. 
	ret po			;255d	e0 	. 
	ret m			;255e	f8 	. 
	rst 38h			;255f	ff 	. 
	call m,l0400h		;2560	fc 00 04 	. . . 
	cp 0e0h		;2563	fe e0 	. . 
	ret m			;2565	f8 	. 
	nop			;2566	00 	. 
	ld bc,l00fdh+2		;2567	01 ff 00 	. . . 
	dec b			;256a	05 	. 
	ld a,a			;256b	7f 	 
	nop			;256c	00 	. 
	inc bc			;256d	03 	. 
	cp 0ffh		;256e	fe ff 	. . 
	rst 38h			;2570	ff 	. 
	ld a,a			;2571	7f 	 
	ccf			;2572	3f 	? 
	rra			;2573	1f 	. 
	ld a,a			;2574	7f 	 
	nop			;2575	00 	. 
	rlca			;2576	07 	. 
	rst 38h			;2577	ff 	. 
	ret nz			;2578	c0 	. 
	rst 38h			;2579	ff 	. 
	ret m			;257a	f8 	. 
	ret p			;257b	f0 	. 
	nop			;257c	00 	. 
	inc b			;257d	04 	. 
	ret po			;257e	e0 	. 
	nop			;257f	00 	. 
	ld bc,07fffh		;2580	01 ff 7f 	. .  
	rst 38h			;2583	ff 	. 
	ld a,(hl)			;2584	7e 	~ 
	nop			;2585	00 	. 
	inc bc			;2586	03 	. 
	ld a,03fh		;2587	3e 3f 	> ? 
	ret po			;2589	e0 	. 
	rst 38h			;258a	ff 	. 
	ret p			;258b	f0 	. 
	ret m			;258c	f8 	. 
	defb 0fdh,000h,003h	;illegal sequence		;258d	fd 00 03 	. . . 
	rst 38h			;2590	ff 	. 
	ccf			;2591	3f 	? 
	rst 38h			;2592	ff 	. 
	rra			;2593	1f 	. 
	ld a,a			;2594	7f 	 
	cp 000h		;2595	fe 00 	. . 
	inc bc			;2597	03 	. 
	rst 38h			;2598	ff 	. 
	rra			;2599	1f 	. 
	rrca			;259a	0f 	. 
	rlca			;259b	07 	. 
	inc bc			;259c	03 	. 
	ld bc,sub_0300h		;259d	01 00 03 	. . . 
	nop			;25a0	00 	. 
	nop			;25a1	00 	. 
	ld b,0ffh		;25a2	06 ff 	. . 
	ld a,a			;25a4	7f 	 
	rra			;25a5	1f 	. 
	ret po			;25a6	e0 	. 
	ret m			;25a7	f8 	. 
	rst 38h			;25a8	ff 	. 
	cp 007h		;25a9	fe 07 	. . 
	ld bc,0f0e0h		;25ab	01 e0 f0 	. . . 
	rra			;25ae	1f 	. 
	rst 38h			;25af	ff 	. 
	ccf			;25b0	3f 	? 
	ld a,a			;25b1	7f 	 
	nop			;25b2	00 	. 
	rlca			;25b3	07 	. 
	rst 38h			;25b4	ff 	. 
	rrca			;25b5	0f 	. 
	add a,a			;25b6	87 	. 
	ex (sp),hl			;25b7	e3 	. 
	di			;25b8	f3 	. 
	pop af			;25b9	f1 	. 
	nop			;25ba	00 	. 
	ex af,af'			;25bb	08 	. 
	rst 38h			;25bc	ff 	. 
	rst 38h			;25bd	ff 	. 
	ld sp,hl			;25be	f9 	. 
	nop			;25bf	00 	. 
	dec b			;25c0	05 	. 
	ret m			;25c1	f8 	. 
	defb 0fdh,000h,004h	;illegal sequence		;25c2	fd 00 04 	. . . 
	rst 38h			;25c5	ff 	. 
	ld sp,hl			;25c6	f9 	. 
	rst 38h			;25c7	ff 	. 
	ret m			;25c8	f8 	. 
	call m,l0800h		;25c9	fc 00 08 	. . . 
	ret m			;25cc	f8 	. 
	rst 38h			;25cd	ff 	. 
	ld a,a			;25ce	7f 	 
	nop			;25cf	00 	. 
	dec b			;25d0	05 	. 
	ccf			;25d1	3f 	? 
	ld a,a			;25d2	7f 	 
	ret p			;25d3	f0 	. 
	ret nz			;25d4	c0 	. 
	add a,b			;25d5	80 	. 
	ret nz			;25d6	c0 	. 
	di			;25d7	f3 	. 
	ld a,h			;25d8	7c 	| 
	ccf			;25d9	3f 	? 
	rra			;25da	1f 	. 
	rst 38h			;25db	ff 	. 
	ld a,a			;25dc	7f 	 
	rst 38h			;25dd	ff 	. 
	rst 38h			;25de	ff 	. 
	ccf			;25df	3f 	? 
	rra			;25e0	1f 	. 
	sbc a,a			;25e1	9f 	. 
	rst 18h			;25e2	df 	. 
	defb 0fdh,000h,003h	;illegal sequence		;25e3	fd 00 03 	. . . 
	rst 38h			;25e6	ff 	. 
	ld a,a			;25e7	7f 	 
	rrca			;25e8	0f 	. 
	rlca			;25e9	07 	. 
	inc bc			;25ea	03 	. 
	ret m			;25eb	f8 	. 
	rst 38h			;25ec	ff 	. 
	ret p			;25ed	f0 	. 
	rst 38h			;25ee	ff 	. 
	ret m			;25ef	f8 	. 
	cp 0c3h		;25f0	fe c3 	. . 
	pop bc			;25f2	c1 	. 
	jp 0fdf9h		;25f3	c3 f9 fd 	. . . 
	nop			;25f6	00 	. 
	inc bc			;25f7	03 	. 
	rst 38h			;25f8	ff 	. 
	call m,0fdf8h		;25f9	fc f8 fd 	. . . 
	nop			;25fc	00 	. 
	ld bc,0fcffh		;25fd	01 ff fc 	. . . 
	rst 38h			;2600	ff 	. 
	cp 0ffh		;2601	fe ff 	. . 
	rst 38h			;2603	ff 	. 
	ld a,a			;2604	7f 	 
	nop			;2605	00 	. 
	inc bc			;2606	03 	. 
	rra			;2607	1f 	. 
	rst 38h			;2608	ff 	. 
	rrca			;2609	0f 	. 
	ccf			;260a	3f 	? 
	rst 20h			;260b	e7 	. 
	rst 0			;260c	c7 	. 
	rrca			;260d	0f 	. 
	add a,a			;260e	87 	. 
	rst 0			;260f	c7 	. 
	ld sp,hl			;2610	f9 	. 
	ret p			;2611	f0 	. 
	ret m			;2612	f8 	. 
	cp 0f3h		;2613	fe f3 	. . 
	nop			;2615	00 	. 
	inc bc			;2616	03 	. 
	rst 38h			;2617	ff 	. 
	ld a,a			;2618	7f 	 
	ld a,07fh		;2619	3e 7f 	>  
	rst 38h			;261b	ff 	. 
	rst 38h			;261c	ff 	. 
	pop af			;261d	f1 	. 
	ld sp,hl			;261e	f9 	. 
	defb 0fdh,000h,001h	;illegal sequence		;261f	fd 00 01 	. . . 
	rst 38h			;2622	ff 	. 
	ld a,a			;2623	7f 	 
	cp a			;2624	bf 	. 
	rst 18h			;2625	df 	. 
	rst 38h			;2626	ff 	. 
	rst 38h			;2627	ff 	. 
	ld a,a			;2628	7f 	 
	rra			;2629	1f 	. 
	rrca			;262a	0f 	. 
	rst 38h			;262b	ff 	. 
	adc a,a			;262c	8f 	. 
	rst 38h			;262d	ff 	. 
	rst 0			;262e	c7 	. 
	nop			;262f	00 	. 
	ld bc,0feffh		;2630	01 ff fe 	. . . 
	ld sp,hl			;2633	f9 	. 
	rst 38h			;2634	ff 	. 
	rst 30h			;2635	f7 	. 
	rst 38h			;2636	ff 	. 
	call pe,sub_00dch		;2637	ec dc 00 	. . . 
	inc bc			;263a	03 	. 
	rst 0			;263b	c7 	. 
	rst 38h			;263c	ff 	. 
	rst 20h			;263d	e7 	. 
	nop			;263e	00 	. 
	inc bc			;263f	03 	. 
	ex (sp),hl			;2640	e3 	. 
	sbc a,0d6h		;2641	de d6 	. . 
	rst 38h			;2643	ff 	. 
	or e			;2644	b3 	. 
	scf			;2645	37 	7 
	rst 38h			;2646	ff 	. 
	ld h,a			;2647	67 	g 
	ld h,(hl)			;2648	66 	f 
	ret nz			;2649	c0 	. 
	rrca			;264a	0f 	. 
	nop			;264b	00 	. 
	ld bc,0c3ffh		;264c	01 ff c3 	. . . 
	jr nc,$-2		;264f	30 fc 	0 . 
	cp 07eh		;2651	fe 7e 	. ~ 
	rlca			;2653	07 	. 
	ret nz			;2654	c0 	. 
	cp 0c3h		;2655	fe c3 	. . 
	cp h			;2657	bc 	. 
	cp 000h		;2658	fe 00 	. . 
	ld bc,0fbffh		;265a	01 ff fb 	. . . 
	rst 38h			;265d	ff 	. 
	ld a,l			;265e	7d 	} 
	rst 38h			;265f	ff 	. 
	dec a			;2660	3d 	= 
	rst 38h			;2661	ff 	. 
	cp e			;2662	bb 	. 
	sbc a,e			;2663	9b 	. 
	rst 18h			;2664	df 	. 
	rst 38h			;2665	ff 	. 
	rst 30h			;2666	f7 	. 
	or a			;2667	b7 	. 
	rst 38h			;2668	ff 	. 
	xor a			;2669	af 	. 
	nop			;266a	00 	. 
	inc bc			;266b	03 	. 
	rst 38h			;266c	ff 	. 
	rst 38h			;266d	ff 	. 
	di			;266e	f3 	. 
	jp p,0faffh		;266f	f2 ff fa 	. . . 
	nop			;2672	00 	. 
	inc bc			;2673	03 	. 
	ei			;2674	fb 	. 
	ld b,(hl)			;2675	46 	F 
	ld c,(hl)			;2676	4e 	N 
	rst 38h			;2677	ff 	. 
	xor 0e6h		;2678	ee e6 	. . 
	nop			;267a	00 	. 
	inc bc			;267b	03 	. 
	rst 30h			;267c	f7 	. 
	ei			;267d	fb 	. 
	rst 38h			;267e	ff 	. 
	rst 38h			;267f	ff 	. 
	nop			;2680	00 	. 
	inc bc			;2681	03 	. 
	defb 0fdh,000h,005h	;illegal sequence		;2682	fd 00 05 	. . . 
	rst 38h			;2685	ff 	. 
	ei			;2686	fb 	. 
	nop			;2687	00 	. 
	inc b			;2688	04 	. 
	rst 38h			;2689	ff 	. 
	rst 18h			;268a	df 	. 
	nop			;268b	00 	. 
	ld bc,0f7ffh		;268c	01 ff f7 	. . . 
	rst 38h			;268f	ff 	. 
	rst 38h			;2690	ff 	. 
	rst 38h			;2691	ff 	. 
	rst 28h			;2692	ef 	. 
	nop			;2693	00 	. 
	dec b			;2694	05 	. 
	rst 38h			;2695	ff 	. 
	rst 8			;2696	cf 	. 
	ex (sp),hl			;2697	e3 	. 
	ld sp,hl			;2698	f9 	. 
	defb 0fdh,000h,006h	;illegal sequence		;2699	fd 00 06 	. . . 
	rst 38h			;269c	ff 	. 
	rst 20h			;269d	e7 	. 
	ld sp,0fffeh		;269e	31 fe ff 	1 . . 
	rst 38h			;26a1	ff 	. 
	rst 0			;26a2	c7 	. 
	pop bc			;26a3	c1 	. 
	pop hl			;26a4	e1 	. 
	rst 30h			;26a5	f7 	. 
	nop			;26a6	00 	. 
	ld bc,0f0ffh		;26a7	01 ff f0 	. . . 
	nop			;26aa	00 	. 
	ld bc,0c3ffh		;26ab	01 ff c3 	. . . 
	add a,b			;26ae	80 	. 
	nop			;26af	00 	. 
	dec b			;26b0	05 	. 
	nop			;26b1	00 	. 
	ret p			;26b2	f0 	. 
	cp 01fh		;26b3	fe 1f 	. . 
	inc bc			;26b5	03 	. 
	ld bc,l00fdh+2		;26b6	01 ff 00 	. . . 
	rst 38h			;26b9	ff 	. 
	add a,b			;26ba	80 	. 
	ret nz			;26bb	c0 	. 
	ret m			;26bc	f8 	. 
	cp a			;26bd	bf 	. 
	rlca			;26be	07 	. 
	inc bc			;26bf	03 	. 
	ld bc,sub_0300h		;26c0	01 00 03 	. . . 
	nop			;26c3	00 	. 
	rlca			;26c4	07 	. 
	ld sp,hl			;26c5	f9 	. 
	add a,b			;26c6	80 	. 
	rst 38h			;26c7	ff 	. 
	nop			;26c8	00 	. 
	rst 38h			;26c9	ff 	. 
	ld b,b			;26ca	40 	@ 
	ld h,b			;26cb	60 	` 
	ret p			;26cc	f0 	. 
	ret m			;26cd	f8 	. 
	cp 03fh		;26ce	fe 3f 	. ? 
	rst 38h			;26d0	ff 	. 
	rlca			;26d1	07 	. 
	rst 38h			;26d2	ff 	. 
	inc bc			;26d3	03 	. 
	nop			;26d4	00 	. 
	inc bc			;26d5	03 	. 
	ld bc,08703h		;26d6	01 03 87 	. . . 
	ld bc,01c03h		;26d9	01 03 1c 	. . . 
	rst 38h			;26dc	ff 	. 
	ret m			;26dd	f8 	. 
	ld a,007h		;26de	3e 07 	> . 
	ld bc,000cfh		;26e0	01 cf 00 	. . . 
	ld bc,l0fffh		;26e3	01 ff 0f 	. . . 
	nop			;26e6	00 	. 
	inc bc			;26e7	03 	. 
	ld bc,0e181h		;26e8	01 81 e1 	. . . 
	nop			;26eb	00 	. 
	inc bc			;26ec	03 	. 
	ld bc,08c03h		;26ed	01 03 8c 	. . . 
	rst 38h			;26f0	ff 	. 
	ret p			;26f1	f0 	. 
	ret po			;26f2	e0 	. 
	rst 38h			;26f3	ff 	. 
	nop			;26f4	00 	. 
	add a,b			;26f5	80 	. 
	ret po			;26f6	e0 	. 
	cp 01fh		;26f7	fe 1f 	. . 
	rst 38h			;26f9	ff 	. 
	rlca			;26fa	07 	. 
	rst 38h			;26fb	ff 	. 
	ld h,b			;26fc	60 	` 
	ld (hl),b			;26fd	70 	p 
	jr nc,l271ch		;26fe	30 1c 	0 . 
	rst 38h			;2700	ff 	. 
	rrca			;2701	0f 	. 
	ccf			;2702	3f 	? 
	ld b,008h		;2703	06 08 	. . 
	djnz l2737h		;2705	10 30 	. 0 
	ld a,b			;2707	78 	x 
	nop			;2708	00 	. 
	ld bc,080ffh		;2709	01 ff 80 	. . . 
	nop			;270c	00 	. 
l270dh:
	dec b			;270d	05 	. 
	nop			;270e	00 	. 
	jr c,l270dh		;270f	38 fc 	8 . 
	add a,a			;2711	87 	. 
	inc bc			;2712	03 	. 
	ld a,c			;2713	79 	y 
	rra			;2714	1f 	. 
	inc bc			;2715	03 	. 
	rra			;2716	1f 	. 
	cpl			;2717	2f 	/ 
	ld b,e			;2718	43 	C 
	add a,c			;2719	81 	. 
	add a,b			;271a	80 	. 
	nop			;271b	00 	. 
l271ch:
	inc bc			;271c	03 	. 
	ld bc,l0602h		;271d	01 02 06 	. . . 
	nop			;2720	00 	. 
	ld bc,0e3ffh		;2721	01 ff e3 	. . . 
	ld b,b			;2724	40 	@ 
	nop			;2725	00 	. 
	dec b			;2726	05 	. 
	nop			;2727	00 	. 
	ret po			;2728	e0 	. 
	call m,sub_001fh		;2729	fc 1f 00 	. . . 
	ex af,af'			;272c	08 	. 
	rst 38h			;272d	ff 	. 
	rst 38h			;272e	ff 	. 
	rst 28h			;272f	ef 	. 
	rst 38h			;2730	ff 	. 
	defb 0edh;next byte illegal after ed		;2731	ed 	. 
	defb 0ddh,000h,003h	;illegal sequence		;2732	dd 00 03 	. . . 
	rst 38h			;2735	ff 	. 
	cp a			;2736	bf 	. 
l2737h:
	nop			;2737	00 	. 
	inc b			;2738	04 	. 
	rst 18h			;2739	df 	. 
	nop			;273a	00 	. 
	dec b			;273b	05 	. 
	rst 38h			;273c	ff 	. 
	jp m,0f7ffh		;273d	fa ff f7 	. . . 
	nop			;2740	00 	. 
	inc bc			;2741	03 	. 
	rst 38h			;2742	ff 	. 
	rlca			;2743	07 	. 
	nop			;2744	00 	. 
	inc b			;2745	04 	. 
	ei			;2746	fb 	. 
	nop			;2747	00 	. 
	inc bc			;2748	03 	. 
	rst 38h			;2749	ff 	. 
	nop			;274a	00 	. 
	inc b			;274b	04 	. 
	cp a			;274c	bf 	. 
	rst 18h			;274d	df 	. 
	rst 20h			;274e	e7 	. 
	rst 38h			;274f	ff 	. 
	rst 38h			;2750	ff 	. 
	di			;2751	f3 	. 
	nop			;2752	00 	. 
	ld bc,01fffh		;2753	01 ff 1f 	. . . 
	rst 28h			;2756	ef 	. 
	nop			;2757	00 	. 
	inc b			;2758	04 	. 
	rst 38h			;2759	ff 	. 
	nop			;275a	00 	. 
	dec b			;275b	05 	. 
	defb 0fdh,000h,004h	;illegal sequence		;275c	fd 00 04 	. . . 
	rst 38h			;275f	ff 	. 
	ret p			;2760	f0 	. 
	rst 20h			;2761	e7 	. 
	ei			;2762	fb 	. 
	call m,l00fdh+1		;2763	fc fe 00 	. . . 
	inc bc			;2766	03 	. 
	rst 38h			;2767	ff 	. 
	nop			;2768	00 	. 
	ld bc,08e00h		;2769	01 00 8e 	. . . 
	ld l,(hl)			;276c	6e 	n 
	rst 30h			;276d	f7 	. 
	ei			;276e	fb 	. 
	cp e			;276f	bb 	. 
	jp 0fde3h		;2770	c3 e3 fd 	. . . 
	rst 38h			;2773	ff 	. 
	cp 000h		;2774	fe 00 	. . 
	ld bc,0feffh		;2776	01 ff fe 	. . . 
	rst 38h			;2779	ff 	. 
	rst 38h			;277a	ff 	. 
	ld a,l			;277b	7d 	} 
	cp (hl)			;277c	be 	. 
	defb 0fdh,0dbh,073h	;illegal sequence		;277d	fd db 73 	. . s 
	rst 30h			;2780	f7 	. 
	nop			;2781	00 	. 
	inc bc			;2782	03 	. 
	rst 38h			;2783	ff 	. 
	nop			;2784	00 	. 
	ld bc,0eb00h		;2785	01 00 eb 	. . . 
	in a,(077h)		;2788	db 77 	. w 
	or e			;278a	b3 	. 
	cp e			;278b	bb 	. 
	cp a			;278c	bf 	. 
	nop			;278d	00 	. 
	ld bc,l01ffh		;278e	01 ff 01 	. . . 
	rst 38h			;2791	ff 	. 
	cp 08eh		;2792	fe 8e 	. . 
	ld h,d			;2794	62 	b 
	ld (hl),d			;2795	72 	r 
	jp p,05e3ah		;2796	f2 3a 5e 	. : ^ 
	rst 28h			;2799	ef 	. 
	rst 30h			;279a	f7 	. 
	rst 38h			;279b	ff 	. 
	ei			;279c	fb 	. 
	rst 38h			;279d	ff 	. 
	rst 38h			;279e	ff 	. 
	and d			;279f	a2 	. 
	add a,0feh		;27a0	c6 fe 	. . 
	halt			;27a2	76 	v 
	cp e			;27a3	bb 	. 
	cp l			;27a4	bd 	. 
	rst 38h			;27a5	ff 	. 
	rst 38h			;27a6	ff 	. 
	add a,b			;27a7	80 	. 
	nop			;27a8	00 	. 
	inc bc			;27a9	03 	. 
	ret nz			;27aa	c0 	. 
	ret po			;27ab	e0 	. 
	nop			;27ac	00 	. 
	inc bc			;27ad	03 	. 
	rst 38h			;27ae	ff 	. 
	nop			;27af	00 	. 
	dec b			;27b0	05 	. 
	nop			;27b1	00 	. 
	nop			;27b2	00 	. 
	inc bc			;27b3	03 	. 
	rst 38h			;27b4	ff 	. 
	inc bc			;27b5	03 	. 
	nop			;27b6	00 	. 
	inc b			;27b7	04 	. 
	ld bc,0fff9h		;27b8	01 f9 ff 	. . . 
	rst 38h			;27bb	ff 	. 
	rlca			;27bc	07 	. 
	nop			;27bd	00 	. 
	inc b			;27be	04 	. 
	inc bc			;27bf	03 	. 
	di			;27c0	f3 	. 
	nop			;27c1	00 	. 
	inc bc			;27c2	03 	. 
	rst 38h			;27c3	ff 	. 
	ret nz			;27c4	c0 	. 
	ret po			;27c5	e0 	. 
	ret p			;27c6	f0 	. 
	nop			;27c7	00 	. 
	ld bc,0f8ffh		;27c8	01 ff f8 	. . . 
	nop			;27cb	00 	. 
	inc bc			;27cc	03 	. 
	rst 38h			;27cd	ff 	. 
	nop			;27ce	00 	. 
	inc bc			;27cf	03 	. 
	nop			;27d0	00 	. 
	nop			;27d1	00 	. 
	ld bc,l00fdh+2		;27d2	01 ff 00 	. . . 
	ld bc,l0000h		;27d5	01 00 00 	. . . 
	inc de			;27d8	13 	. 
	rst 38h			;27d9	ff 	. 
	ld bc,l0100h		;27da	01 00 01 	. . . 
	nop			;27dd	00 	. 
	inc b			;27de	04 	. 
	ret p			;27df	f0 	. 
	ex af,af'			;27e0	08 	. 
	nop			;27e1	00 	. 
	dec b			;27e2	05 	. 
	ret pe			;27e3	e8 	. 
	rst 38h			;27e4	ff 	. 
	ret m			;27e5	f8 	. 
	call m,0ffffh		;27e6	fc ff ff 	. . . 
	nop			;27e9	00 	. 
	nop			;27ea	00 	. 
	nop			;27eb	00 	. 
	ex af,af'			;27ec	08 	. 
	nop			;27ed	00 	. 
	add a,c			;27ee	81 	. 
	ld h,c			;27ef	61 	a 
	ld d,c			;27f0	51 	Q 
	add hl,bc			;27f1	09 	. 
	dec b			;27f2	05 	. 
	ld (hl),c			;27f3	71 	q 
	add a,e			;27f4	83 	. 
	rst 38h			;27f5	ff 	. 
	rst 38h			;27f6	ff 	. 
	di			;27f7	f3 	. 
	rst 38h			;27f8	ff 	. 
	pop bc			;27f9	c1 	. 
	rst 38h			;27fa	ff 	. 
	jp l00e7h		;27fb	c3 e7 00 	. . . 
	ld bc,l01ffh		;27fe	01 ff 01 	. . . 
	pop hl			;2801	e1 	. 
	pop de			;2802	d1 	. 
	adc a,c			;2803	89 	. 
	dec b			;2804	05 	. 
	pop af			;2805	f1 	. 
	inc bc			;2806	03 	. 
	nop			;2807	00 	. 
	ld b,0ffh		;2808	06 ff 	. . 
	ld a,a			;280a	7f 	 
	rrca			;280b	0f 	. 
	rst 38h			;280c	ff 	. 
	rst 38h			;280d	ff 	. 
	add a,b			;280e	80 	. 
	nop			;280f	00 	. 
	dec b			;2810	05 	. 
	rst 38h			;2811	ff 	. 
	ld d,d			;2812	52 	R 
	rst 8			;2813	cf 	. 
	rst 38h			;2814	ff 	. 
	di			;2815	f3 	. 
	nop			;2816	00 	. 
	ld bc,0e8ffh		;2817	01 ff e8 	. . . 
	nop			;281a	00 	. 
	inc b			;281b	04 	. 
	rst 38h			;281c	ff 	. 
	rst 38h			;281d	ff 	. 
	dec sp			;281e	3b 	; 
	nop			;281f	00 	. 
	ld bc,l00fdh+2		;2820	01 ff 00 	. . . 
	ld bc,l0000h		;2823	01 00 00 	. . . 
	ld bc,l00fdh+2		;2826	01 ff 00 	. . . 
	ld bc,0ff00h		;2829	01 00 ff 	. . . 
	rst 38h			;282c	ff 	. 
	nop			;282d	00 	. 
	ld bc,l0000h		;282e	01 00 00 	. . . 
	dec b			;2831	05 	. 
	rst 38h			;2832	ff 	. 
	ld (l0700h),hl		;2833	22 00 07 	" . . 
	rst 38h			;2836	ff 	. 
	ld (l0100h),hl		;2837	22 00 01 	" . . 
	rst 38h			;283a	ff 	. 
	rst 38h			;283b	ff 	. 
	or e			;283c	b3 	. 
	nop			;283d	00 	. 
	ld bc,l00fdh+2		;283e	01 ff 00 	. . . 
	ld bc,l0000h		;2841	01 00 00 	. . . 
	ld bc,l00fdh+2		;2844	01 ff 00 	. . . 
	ld bc,0ff00h		;2847	01 00 ff 	. . . 
	rst 38h			;284a	ff 	. 
	rst 38h			;284b	ff 	. 
	inc sp			;284c	33 	3 
	nop			;284d	00 	. 
	ld bc,l00fdh+2		;284e	01 ff 00 	. . . 
	ld bc,l0000h		;2851	01 00 00 	. . . 
	ld bc,l00fdh+2		;2854	01 ff 00 	. . . 
	ld bc,0ff00h		;2857	01 00 ff 	. . . 
	rst 38h			;285a	ff 	. 
	ret po			;285b	e0 	. 
	nop			;285c	00 	. 
	dec b			;285d	05 	. 
	rst 38h			;285e	ff 	. 
	inc hl			;285f	23 	# 
	cp 001h		;2860	fe 01 	. . 
	rst 38h			;2862	ff 	. 
	rst 38h			;2863	ff 	. 
	cp 0b0h		;2864	fe b0 	. . 
	add a,b			;2866	80 	. 
	rst 38h			;2867	ff 	. 
	rst 38h			;2868	ff 	. 
	rst 38h			;2869	ff 	. 
	cp e			;286a	bb 	. 
	nop			;286b	00 	. 
	ld bc,l00fdh+2		;286c	01 ff 00 	. . . 
	ld bc,l0000h		;286f	01 00 00 	. . . 
	ld bc,l00fdh+2		;2872	01 ff 00 	. . . 
	ld bc,l0000h		;2875	01 00 00 	. . . 
	ld bc,0e0ffh		;2878	01 ff e0 	. . . 
	jr nc,l28b1h		;287b	30 34 	0 4 
	jp m,l0100h		;287d	fa 00 01 	. . . 
	nop			;2880	00 	. 
	nop			;2881	00 	. 
	ld bc,l00fdh+2		;2882	01 ff 00 	. . . 
	ld bc,l0000h		;2885	01 00 00 	. . . 
	ld bc,l03ffh		;2888	01 ff 03 	. . . 
	jp l13a3h		;288b	c3 a3 13 	. . . 
	dec bc			;288e	0b 	. 
	ex (sp),hl			;288f	e3 	. 
	rlca			;2890	07 	. 
	rst 38h			;2891	ff 	. 
	rst 38h			;2892	ff 	. 
	ret m			;2893	f8 	. 
	nop			;2894	00 	. 
	inc b			;2895	04 	. 
	ret po			;2896	e0 	. 
	ret p			;2897	f0 	. 
	rst 38h			;2898	ff 	. 
	rst 38h			;2899	ff 	. 
	ex (sp),hl			;289a	e3 	. 
	rst 38h			;289b	ff 	. 
	add a,c			;289c	81 	. 
	rst 38h			;289d	ff 	. 
	add a,e			;289e	83 	. 
	rst 0			;289f	c7 	. 
	rst 38h			;28a0	ff 	. 
	rst 38h			;28a1	ff 	. 
	rlca			;28a2	07 	. 
	rst 38h			;28a3	ff 	. 
	inc bc			;28a4	03 	. 
	rst 38h			;28a5	ff 	. 
	rlca			;28a6	07 	. 
	rrca			;28a7	0f 	. 
	rst 38h			;28a8	ff 	. 
	rst 38h			;28a9	ff 	. 
	ret po			;28aa	e0 	. 
	nop			;28ab	00 	. 
	inc b			;28ac	04 	. 
	add a,b			;28ad	80 	. 
	ret nz			;28ae	c0 	. 
	rst 38h			;28af	ff 	. 
	rst 38h			;28b0	ff 	. 
l28b1h:
	inc bc			;28b1	03 	. 
	rst 38h			;28b2	ff 	. 
	ld bc,l03ffh		;28b3	01 ff 03 	. . . 
	rlca			;28b6	07 	. 
	nop			;28b7	00 	. 
	ld bc,080ffh		;28b8	01 ff 80 	. . . 
	ld de,0474bh		;28bb	11 4b 47 	. K G 
	ld d,e			;28be	53 	S 
	ld a,c			;28bf	79 	y 
	add a,b			;28c0	80 	. 
	nop			;28c1	00 	. 
	add hl,bc			;28c2	09 	. 
	rst 38h			;28c3	ff 	. 
	nop			;28c4	00 	. 
	ex af,af'			;28c5	08 	. 
	ld (08e06h),hl		;28c6	22 06 8e 	" . . 
	sbc a,(hl)			;28c9	9e 	. 
	sbc a,h			;28ca	9c 	. 
	rst 38h			;28cb	ff 	. 
	cp h			;28cc	bc 	. 
	or h			;28cd	b4 	. 
	push af			;28ce	f5 	. 
	nop			;28cf	00 	. 
	ld bc,09f00h		;28d0	01 00 9f 	. . . 
	rst 38h			;28d3	ff 	. 
	cp a			;28d4	bf 	. 
	ld sp,hl			;28d5	f9 	. 
	pop af			;28d6	f1 	. 
	rst 38h			;28d7	ff 	. 
	ret p			;28d8	f0 	. 
	dec (hl)			;28d9	35 	5 
	dec sp			;28da	3b 	; 
	cp e			;28db	bb 	. 
	nop			;28dc	00 	. 
	inc bc			;28dd	03 	. 
	ei			;28de	fb 	. 
	nop			;28df	00 	. 
	ld bc,07fffh		;28e0	01 ff 7f 	. .  
	nop			;28e3	00 	. 
	ld bc,08300h		;28e4	01 00 83 	. . . 
	adc a,a			;28e7	8f 	. 
	cp a			;28e8	bf 	. 
	cp 0fch		;28e9	fe fc 	. . 
	ret z			;28eb	c8 	. 
	sbc a,b			;28ec	98 	. 
	nop			;28ed	00 	. 
	ld bc,0f000h		;28ee	01 00 f0 	. . . 
	rst 20h			;28f1	e7 	. 
	add a,e			;28f2	83 	. 
	dec c			;28f3	0d 	. 
	jr c,$+114		;28f4	38 70 	8 p 
	ld h,b			;28f6	60 	` 
	or b			;28f7	b0 	. 
	ret p			;28f8	f0 	. 
	nop			;28f9	00 	. 
	inc bc			;28fa	03 	. 
l28fbh:
	ret m			;28fb	f8 	. 
	add a,b			;28fc	80 	. 
	jr nc,l28fbh		;28fd	30 fc 	0 . 
	rst 38h			;28ff	ff 	. 
	ret po			;2900	e0 	. 
	ret p			;2901	f0 	. 
	ret m			;2902	f8 	. 
	ld a,a			;2903	7f 	 
	ld a,h			;2904	7c 	| 
	ld a,b			;2905	78 	x 
	ld h,b			;2906	60 	` 
	rst 38h			;2907	ff 	. 
	ld b,b			;2908	40 	@ 
	ld b,h			;2909	44 	D 
	ld b,d			;290a	42 	B 
	nop			;290b	00 	. 
	inc bc			;290c	03 	. 
	ld d,b			;290d	50 	P 
	ld d,a			;290e	57 	W 
	nop			;290f	00 	. 
	ex af,af'			;2910	08 	. 
	ld d,d			;2911	52 	R 
	rst 38h			;2912	ff 	. 
	ld e,b			;2913	58 	X 
	ld e,a			;2914	5f 	_ 
	ld e,(hl)			;2915	5e 	^ 
	rst 38h			;2916	ff 	. 
	ld e,a			;2917	5f 	_ 
	rst 28h			;2918	ef 	. 
	cp a			;2919	bf 	. 
	rst 38h			;291a	ff 	. 
	nop			;291b	00 	. 
	inc e			;291c	1c 	. 
	ld (0c1e1h),a		;291d	32 e1 c1 	2 . . 
	add a,c			;2920	81 	. 
	ld bc,07874h		;2921	01 74 78 	. t x 
	ld a,03fh		;2924	3e 3f 	> ? 
	ld (hl),a			;2926	77 	w 
	ld h,e			;2927	63 	c 
	ld h,c			;2928	61 	a 
	ret m			;2929	f8 	. 
	ccf			;292a	3f 	? 
	add hl,hl			;292b	29 	) 
	ld c,c			;292c	49 	I 
	rst 20h			;292d	e7 	. 
	sub l			;292e	95 	. 
	inc c			;292f	0c 	. 
	sub d			;2930	92 	. 
	ex (sp),hl			;2931	e3 	. 
	inc e			;2932	1c 	. 
	add a,a			;2933	87 	. 
	pop bc			;2934	c1 	. 
	ret po			;2935	e0 	. 
	call m,09fbfh		;2936	fc bf 9f 	. . . 
	nop			;2939	00 	. 
	ld bc,095ffh		;293a	01 ff 95 	. . . 
	adc a,l			;293d	8d 	. 
	exx			;293e	d9 	. 
	ld sp,hl			;293f	f9 	. 
	ld a,c			;2940	79 	y 
	ret m			;2941	f8 	. 
	call m,0fef2h		;2942	fc f2 fe 	. . . 
	ld e,03fh		;2945	1e 3f 	. ? 
	ld d,c			;2947	51 	Q 
	rst 20h			;2948	e7 	. 
	jp (hl)			;2949	e9 	. 
	ld l,e			;294a	6b 	k 
	inc e			;294b	1c 	. 
	inc hl			;294c	23 	# 
	call c,090f8h		;294d	dc f8 90 	. . . 
	jp (hl)			;2950	e9 	. 
	sub a			;2951	97 	. 
	sub 018h		;2952	d6 18 	. . 
	ret nz			;2954	c0 	. 
	cp b			;2955	b8 	. 
	sub h			;2956	94 	. 
	rst 38h			;2957	ff 	. 
	sub e			;2958	93 	. 
	sbc a,c			;2959	99 	. 
	rst 8			;295a	cf 	. 
	ld l,b			;295b	68 	h 
	dec b			;295c	05 	. 
	dec de			;295d	1b 	. 
	ld (hl),e			;295e	73 	s 
	sub e			;295f	93 	. 
	sub d			;2960	92 	. 
	ld (hl),0e4h		;2961	36 e4 	6 . 
	inc l			;2963	2c 	, 
	cp a			;2964	bf 	. 
	jp p,0e6e2h		;2965	f2 e2 e6 	. . . 
	ld c,e			;2968	4b 	K 
	ld c,c			;2969	49 	I 
	and l			;296a	a5 	. 
	and d			;296b	a2 	. 
	inc bc			;296c	03 	. 
	ld c,093h		;296d	0e 93 	. . 
	ld h,c			;296f	61 	a 
	pop bc			;2970	c1 	. 
	add a,b			;2971	80 	. 
	ex af,af'			;2972	08 	. 
	add hl,de			;2973	19 	. 
	or e			;2974	b3 	. 
	cpl			;2975	2f 	/ 
	rst 38h			;2976	ff 	. 
	inc hl			;2977	23 	# 
	rst 38h			;2978	ff 	. 
	ld a,a			;2979	7f 	 
	rst 20h			;297a	e7 	. 
	jp 0f038h		;297b	c3 38 f0 	. 8 . 
	ret po			;297e	e0 	. 
	jp po,0e0ffh		;297f	e2 ff e0 	. . . 
	ret nz			;2982	c0 	. 
	nop			;2983	00 	. 
	ld bc,0c1ffh		;2984	01 ff c1 	. . . 
	add a,c			;2987	81 	. 
	and l			;2988	a5 	. 
	and c			;2989	a1 	. 
	xor c			;298a	a9 	. 
	cp l			;298b	bd 	. 
	jp l0100h		;298c	c3 00 01 	. . . 
	rst 38h			;298f	ff 	. 
	ret po			;2990	e0 	. 
	nop			;2991	00 	. 
	inc bc			;2992	03 	. 
	ret nz			;2993	c0 	. 
	ret po			;2994	e0 	. 
	ret nc			;2995	d0 	. 
	nop			;2996	00 	. 
	ld bc,0fcffh		;2997	01 ff fc 	. . . 
	ld bc,0a783h		;299a	01 83 a7 	. . . 
	or a			;299d	b7 	. 
	cp a			;299e	bf 	. 
	or a			;299f	b7 	. 
	adc a,a			;29a0	8f 	. 
	nop			;29a1	00 	. 
	ld bc,0f8ffh		;29a2	01 ff f8 	. . . 
	call m,08ec6h		;29a5	fc c6 8e 	. . . 
	add a,d			;29a8	82 	. 
	nop			;29a9	00 	. 
	ld bc,0c0ffh		;29aa	01 ff c0 	. . . 
	nop			;29ad	00 	. 
	ld bc,0fcffh		;29ae	01 ff fc 	. . . 
	ld b,a			;29b1	47 	G 
	ld h,b			;29b2	60 	` 
	jr c,$+41		;29b3	38 27 	8 ' 
	jr nz,l2a2fh		;29b5	20 78 	  x 
	sbc a,c			;29b7	99 	. 
	add hl,de			;29b8	19 	. 
	rst 20h			;29b9	e7 	. 
	ld b,01eh		;29ba	06 1e 	. . 
	jp p,l0f03h		;29bc	f2 03 0f 	. . . 
	and 048h		;29bf	e6 48 	. H 
	rst 38h			;29c1	ff 	. 
	ld c,h			;29c2	4c 	L 
	ld l,c			;29c3	69 	i 
	jp c,l0100h		;29c4	da 00 01 	. . . 
	rst 38h			;29c7	ff 	. 
	nop			;29c8	00 	. 
	ld bc,l0000h		;29c9	01 00 00 	. . . 
	ld bc,0ffffh		;29cc	01 ff ff 	. . . 
	push de			;29cf	d5 	. 
	xor l			;29d0	ad 	. 
	or 00bh		;29d1	f6 0b 	. . 
	nop			;29d3	00 	. 
	ld bc,01fffh		;29d4	01 ff 1f 	. . . 
	nop			;29d7	00 	. 
	ld bc,0ffffh		;29d8	01 ff ff 	. . . 
	ld bc,040ffh		;29db	01 ff 40 	. . @ 
	nop			;29de	00 	. 
	inc bc			;29df	03 	. 
	ret po			;29e0	e0 	. 
	ld l,c			;29e1	69 	i 
	ret po			;29e2	e0 	. 
	call nz,0d1d2h		;29e3	c4 d2 d1 	. . . 
	call nc,0e0deh		;29e6	d4 de e0 	. . . 
	nop			;29e9	00 	. 
	ld bc,047ffh		;29ea	01 ff 47 	. . G 
	call nz,0eedbh		;29ed	c4 db ee 	. . . 
	ld d,h			;29f0	54 	T 
	nop			;29f1	00 	. 
	ld bc,080ffh		;29f2	01 ff 80 	. . . 
	nop			;29f5	00 	. 
	ld bc,l00fdh+2		;29f6	01 ff 00 	. . . 
	ld bc,0c000h		;29f9	01 00 c0 	. . . 
	ld (hl),h			;29fc	74 	t 
	ld a,(sub_03feh)		;29fd	3a fe 03 	: . . 
	ld bc,l0100h		;2a00	01 00 01 	. . . 
	nop			;2a03	00 	. 
	ccf			;2a04	3f 	? 
	rst 38h			;2a05	ff 	. 
	rra			;2a06	1f 	. 
	ccf			;2a07	3f 	? 
	rst 38h			;2a08	ff 	. 
	rra			;2a09	1f 	. 
	rrca			;2a0a	0f 	. 
	rlca			;2a0b	07 	. 
	call m,0fffeh		;2a0c	fc fe ff 	. . . 
	rst 38h			;2a0f	ff 	. 
	cp 000h		;2a10	fe 00 	. . 
	inc bc			;2a12	03 	. 
	ret m			;2a13	f8 	. 
	rlca			;2a14	07 	. 
	rst 38h			;2a15	ff 	. 
	inc bc			;2a16	03 	. 
	rst 38h			;2a17	ff 	. 
	ld bc,0c180h		;2a18	01 80 c1 	. . . 
	nop			;2a1b	00 	. 
	ld bc,0f8ffh		;2a1c	01 ff f8 	. . . 
	call m,l0400h		;2a1f	fc 00 04 	. . . 
	rst 38h			;2a22	ff 	. 
	rst 38h			;2a23	ff 	. 
	ccf			;2a24	3f 	? 
	ld h,c			;2a25	61 	a 
	dec sp			;2a26	3b 	; 
	nop			;2a27	00 	. 
	ld bc,09fffh		;2a28	01 ff 9f 	. . . 
	rra			;2a2b	1f 	. 
	rrca			;2a2c	0f 	. 
	rlca			;2a2d	07 	. 
	rra			;2a2e	1f 	. 
l2a2fh:
	cp 000h		;2a2f	fe 00 	. . 
	inc bc			;2a31	03 	. 
	call m,000f8h		;2a32	fc f8 00 	. . . 
	inc bc			;2a35	03 	. 
	ret p			;2a36	f0 	. 
	ccf			;2a37	3f 	? 
	nop			;2a38	00 	. 
	rlca			;2a39	07 	. 
	rst 38h			;2a3a	ff 	. 
	ret m			;2a3b	f8 	. 
	ret p			;2a3c	f0 	. 
	ret m			;2a3d	f8 	. 
	call m,085f4h		;2a3e	fc f4 85 	. . . 
	add a,a			;2a41	87 	. 
	rrca			;2a42	0f 	. 
	cp 0fch		;2a43	fe fc 	. . 
	nop			;2a45	00 	. 
	dec b			;2a46	05 	. 
	rst 38h			;2a47	ff 	. 
	cp 03fh		;2a48	fe 3f 	. ? 
	ld a,a			;2a4a	7f 	 
	nop			;2a4b	00 	. 
	inc bc			;2a4c	03 	. 
	rst 38h			;2a4d	ff 	. 
	cp a			;2a4e	bf 	. 
	rst 38h			;2a4f	ff 	. 
	ccf			;2a50	3f 	? 
	rst 38h			;2a51	ff 	. 
	cp 07eh		;2a52	fe 7e 	. ~ 
	ld (bc),a			;2a54	02 	. 
	nop			;2a55	00 	. 
	ld bc,l0100h		;2a56	01 00 01 	. . . 
	inc bc			;2a59	03 	. 
	ld b,01fh		;2a5a	06 1f 	. . 
	rla			;2a5c	17 	. 
	inc de			;2a5d	13 	. 
	inc a			;2a5e	3c 	< 
	ret po			;2a5f	e0 	. 
	add a,b			;2a60	80 	. 
	nop			;2a61	00 	. 
	ld bc,00f00h		;2a62	01 00 0f 	. . . 
	cp 0fch		;2a65	fe fc 	. . 
	nop			;2a67	00 	. 
	ld bc,0f1ffh		;2a68	01 ff f1 	. . . 
	jp 087ffh		;2a6b	c3 ff 87 	. . . 
	adc a,a			;2a6e	8f 	. 
	rra			;2a6f	1f 	. 
	ld a,a			;2a70	7f 	 
	nop			;2a71	00 	. 
	ld b,0ffh		;2a72	06 ff 	. . 
	sbc a,a			;2a74	9f 	. 
	rst 38h			;2a75	ff 	. 
	rst 38h			;2a76	ff 	. 
	rla			;2a77	17 	. 
	inc bc			;2a78	03 	. 
	inc e			;2a79	1c 	. 
	ld a,000h		;2a7a	3e 00 	> . 
	inc bc			;2a7c	03 	. 
	rst 38h			;2a7d	ff 	. 
	rst 38h			;2a7e	ff 	. 
	cp 0fch		;2a7f	fe fc 	. . 
	ret p			;2a81	f0 	. 
	ld h,b			;2a82	60 	` 
	add a,b			;2a83	80 	. 
	ld b,00ch		;2a84	06 0c 	. . 
	inc e			;2a86	1c 	. 
	ld a,h			;2a87	7c 	| 
	call m,0fffeh		;2a88	fc fe ff 	. . . 
	rst 38h			;2a8b	ff 	. 
	rrca			;2a8c	0f 	. 
	ccf			;2a8d	3f 	? 
	ld a,a			;2a8e	7f 	 
	nop			;2a8f	00 	. 
	ld b,0ffh		;2a90	06 ff 	. . 
	rst 30h			;2a92	f7 	. 
	di			;2a93	f3 	. 
	ret p			;2a94	f0 	. 
	ret po			;2a95	e0 	. 
	pop bc			;2a96	c1 	. 
	add a,e			;2a97	83 	. 
	ccf			;2a98	3f 	? 
	rst 38h			;2a99	ff 	. 
	rst 38h			;2a9a	ff 	. 
	sbc a,a			;2a9b	9f 	. 
	add a,a			;2a9c	87 	. 
	rst 0			;2a9d	c7 	. 
	nop			;2a9e	00 	. 
	add hl,bc			;2a9f	09 	. 
	rst 38h			;2aa0	ff 	. 
	rst 38h			;2aa1	ff 	. 
	cp 080h		;2aa2	fe 80 	. . 
	rst 38h			;2aa4	ff 	. 
	ret nz			;2aa5	c0 	. 
	ld (hl),b			;2aa6	70 	p 
	nop			;2aa7	00 	. 
	inc b			;2aa8	04 	. 
	ld a,a			;2aa9	7f 	 
	nop			;2aaa	00 	. 
	inc bc			;2aab	03 	. 
	cp 000h		;2aac	fe 00 	. . 
	ld bc,0bfffh		;2aae	01 ff bf 	. . . 
	rst 0			;2ab1	c7 	. 
	rst 28h			;2ab2	ef 	. 
	ld (hl),a			;2ab3	77 	w 
	ld a,a			;2ab4	7f 	 
	nop			;2ab5	00 	. 
	rlca			;2ab6	07 	. 
	rst 38h			;2ab7	ff 	. 
	jp 0f9fbh		;2ab8	c3 fb f9 	. . . 
	ret p			;2abb	f0 	. 
	nop			;2abc	00 	. 
	inc b			;2abd	04 	. 
	ret po			;2abe	e0 	. 
	rst 38h			;2abf	ff 	. 
	rst 38h			;2ac0	ff 	. 
	nop			;2ac1	00 	. 
	inc b			;2ac2	04 	. 
	cp 07eh		;2ac3	fe 7e 	. ~ 
	ld a,a			;2ac5	7f 	 
	ret po			;2ac6	e0 	. 
	rst 38h			;2ac7	ff 	. 
	ret p			;2ac8	f0 	. 
	ret m			;2ac9	f8 	. 
	call m,0c1f8h		;2aca	fc f8 c1 	. . . 
	inc bc			;2acd	03 	. 
	ccf			;2ace	3f 	? 
	nop			;2acf	00 	. 
	inc bc			;2ad0	03 	. 
	rra			;2ad1	1f 	. 
	ld e,04fh		;2ad2	1e 4f 	. O 
	sbc a,a			;2ad4	9f 	. 
	ccf			;2ad5	3f 	? 
	ld (hl),a			;2ad6	77 	w 
	dec sp			;2ad7	3b 	; 
	ccf			;2ad8	3f 	? 
	ld e,00fh		;2ad9	1e 0f 	. . 
	rlca			;2adb	07 	. 
	inc bc			;2adc	03 	. 
	nop			;2add	00 	. 
	ld bc,0ff00h		;2ade	01 00 ff 	. . . 
	rst 38h			;2ae1	ff 	. 
	rst 28h			;2ae2	ef 	. 
	rra			;2ae3	1f 	. 
	ccf			;2ae4	3f 	? 
	nop			;2ae5	00 	. 
	inc bc			;2ae6	03 	. 
	rst 38h			;2ae7	ff 	. 
	ret po			;2ae8	e0 	. 
	ret m			;2ae9	f8 	. 
	rst 38h			;2aea	ff 	. 
	cp 03fh		;2aeb	fe 3f 	. ? 
	rrca			;2aed	0f 	. 
	rst 20h			;2aee	e7 	. 
	di			;2aef	f3 	. 
	ld a,a			;2af0	7f 	 
	rst 38h			;2af1	ff 	. 
	ccf			;2af2	3f 	? 
	ld a,a			;2af3	7f 	 
	nop			;2af4	00 	. 
	ld bc,0bfffh		;2af5	01 ff bf 	. . . 
	sbc a,a			;2af8	9f 	. 
	ret nz			;2af9	c0 	. 
	inc c			;2afa	0c 	. 
	jr l2b75h		;2afb	18 78 	. x 
	ex af,af'			;2afd	08 	. 
	add a,l			;2afe	85 	. 
	ex (sp),hl			;2aff	e3 	. 
	di			;2b00	f3 	. 
	pop af			;2b01	f1 	. 
	ccf			;2b02	3f 	? 
	ld a,a			;2b03	7f 	 
	nop			;2b04	00 	. 
	ld b,0ffh		;2b05	06 ff 	. . 
	rst 38h			;2b07	ff 	. 
	ld sp,hl			;2b08	f9 	. 
	nop			;2b09	00 	. 
	dec b			;2b0a	05 	. 
	ret m			;2b0b	f8 	. 
	defb 0fdh,07fh,03fh	;illegal sequence		;2b0c	fd 7f 3f 	.  ? 
	sbc a,a			;2b0f	9f 	. 
	sbc a,0f9h		;2b10	de f9 	. . 
	rst 38h			;2b12	ff 	. 
	ret m			;2b13	f8 	. 
	call m,sub_00f9h		;2b14	fc f9 00 	. . . 
	rlca			;2b17	07 	. 
	ret m			;2b18	f8 	. 
	rst 38h			;2b19	ff 	. 
	ret po			;2b1a	e0 	. 
	ret p			;2b1b	f0 	. 
	nop			;2b1c	00 	. 
	inc bc			;2b1d	03 	. 
	ld a,a			;2b1e	7f 	 
	ccf			;2b1f	3f 	? 
	ld a,a			;2b20	7f 	 
	ret p			;2b21	f0 	. 
	ret nz			;2b22	c0 	. 
	add a,b			;2b23	80 	. 
	nop			;2b24	00 	. 
	ld bc,08300h		;2b25	01 00 83 	. . . 
	ld e,h			;2b28	5c 	\ 
	ccf			;2b29	3f 	? 
	rra			;2b2a	1f 	. 
	rst 38h			;2b2b	ff 	. 
	ld e,a			;2b2c	5f 	_ 
	rst 8			;2b2d	cf 	. 
	rst 28h			;2b2e	ef 	. 
	daa			;2b2f	27 	' 
	rla			;2b30	17 	. 
	sub e			;2b31	93 	. 
	out (0fdh),a		;2b32	d3 fd 	. . 
	ld a,a			;2b34	7f 	 
	rra			;2b35	1f 	. 
	add a,a			;2b36	87 	. 
	ex (sp),hl			;2b37	e3 	. 
	ld a,a			;2b38	7f 	 
	rrca			;2b39	0f 	. 
	rlca			;2b3a	07 	. 
	sbc a,e			;2b3b	9b 	. 
	rst 38h			;2b3c	ff 	. 
	or b			;2b3d	b0 	. 
	jr l2b48h		;2b3e	18 08 	. . 
	ld a,(hl)			;2b40	7e 	~ 
	jp 0c241h		;2b41	c3 41 c2 	. A . 
	ret m			;2b44	f8 	. 
	ld a,h			;2b45	7c 	| 
	rst 38h			;2b46	ff 	. 
	ccf			;2b47	3f 	? 
l2b48h:
	nop			;2b48	00 	. 
	ld bc,0fcffh		;2b49	01 ff fc 	. . . 
	ret m			;2b4c	f8 	. 
	ld a,l			;2b4d	7d 	} 
	ld a,a			;2b4e	7f 	 
	ld a,h			;2b4f	7c 	| 
	ld a,0eeh		;2b50	3e ee 	> . 
	add a,a			;2b52	87 	. 
	rst 0			;2b53	c7 	. 
	ld h,a			;2b54	67 	g 
	rst 30h			;2b55	f7 	. 
	di			;2b56	f3 	. 
	ld a,b			;2b57	78 	x 
	inc a			;2b58	3c 	< 
	inc e			;2b59	1c 	. 
	ccf			;2b5a	3f 	? 
	ret pe			;2b5b	e8 	. 
	ret z			;2b5c	c8 	. 
	ex af,af'			;2b5d	08 	. 
	adc a,h			;2b5e	8c 	. 
	rst 0			;2b5f	c7 	. 
	ld a,a			;2b60	7f 	 
	pop af			;2b61	f1 	. 
	ret m			;2b62	f8 	. 
	cp 073h		;2b63	fe 73 	. s 
	nop			;2b65	00 	. 
	inc bc			;2b66	03 	. 
	call m,sub_3e7fh		;2b67	fc 7f 3e 	.  > 
	ld h,e			;2b6a	63 	c 
	ld sp,hl			;2b6b	f9 	. 
	nop			;2b6c	00 	. 
	ld bc,071ffh		;2b6d	01 ff 71 	. . q 
	ld sp,hl			;2b70	f9 	. 
	rst 38h			;2b71	ff 	. 
	defb 0fdh,07dh	;ld a,iyl		;2b72	fd 7d 	. } 
	or c			;2b74	b1 	. 
l2b75h:
	exx			;2b75	d9 	. 
	nop			;2b76	00 	. 
	ld bc,l00fdh+2		;2b77	01 ff 00 	. . . 
	ld bc,08000h		;2b7a	01 00 80 	. . . 
	ret po			;2b7d	e0 	. 
	nop			;2b7e	00 	. 
	inc bc			;2b7f	03 	. 
	ret p			;2b80	f0 	. 
	rst 38h			;2b81	ff 	. 
	ret m			;2b82	f8 	. 
	inc c			;2b83	0c 	. 
	ld de,0ff27h		;2b84	11 27 ff 	. ' . 
	ld c,a			;2b87	4f 	O 
	ld e,a			;2b88	5f 	_ 
	sbc a,a			;2b89	9f 	. 
	cp a			;2b8a	bf 	. 
	rst 38h			;2b8b	ff 	. 
	ret m			;2b8c	f8 	. 
	nop			;2b8d	00 	. 
	inc bc			;2b8e	03 	. 
	ld sp,hl			;2b8f	f9 	. 
	nop			;2b90	00 	. 
	inc bc			;2b91	03 	. 
	defb 0fdh,0ffh,0bfh	;illegal sequence		;2b92	fd ff bf 	. . . 
	rst 38h			;2b95	ff 	. 
	ld a,a			;2b96	7f 	 
	nop			;2b97	00 	. 
	inc bc			;2b98	03 	. 
	ld sp,hl			;2b99	f9 	. 
	ei			;2b9a	fb 	. 
	ccf			;2b9b	3f 	? 
	nop			;2b9c	00 	. 
	inc bc			;2b9d	03 	. 
	rst 38h			;2b9e	ff 	. 
	rst 8			;2b9f	cf 	. 
	rlca			;2ba0	07 	. 
	dec b			;2ba1	05 	. 
	add a,l			;2ba2	85 	. 
	ret m			;2ba3	f8 	. 
	nop			;2ba4	00 	. 
	inc bc			;2ba5	03 	. 
	rst 38h			;2ba6	ff 	. 
	res 1,c		;2ba7	cb 89 	. . 
	adc a,e			;2ba9	8b 	. 
	adc a,a			;2baa	8f 	. 
	rst 38h			;2bab	ff 	. 
	adc a,e			;2bac	8b 	. 
	rst 38h			;2bad	ff 	. 
	set 7,a		;2bae	cb ff 	. . 
	rst 8			;2bb0	cf 	. 
	rst 38h			;2bb1	ff 	. 
	rst 30h			;2bb2	f7 	. 
	rst 38h			;2bb3	ff 	. 
	sbc a,a			;2bb4	9f 	. 
	rst 18h			;2bb5	df 	. 
	rst 38h			;2bb6	ff 	. 
	rst 38h			;2bb7	ff 	. 
	nop			;2bb8	00 	. 
	inc bc			;2bb9	03 	. 
	rst 18h			;2bba	df 	. 
	defb 0fdh,0feh,000h	;illegal sequence		;2bbb	fd fe 00 	. . . 
	dec b			;2bbe	05 	. 
	rst 38h			;2bbf	ff 	. 
	cp l			;2bc0	bd 	. 
	ei			;2bc1	fb 	. 
	nop			;2bc2	00 	. 
	inc bc			;2bc3	03 	. 
	di			;2bc4	f3 	. 
	nop			;2bc5	00 	. 
	inc bc			;2bc6	03 	. 
	ei			;2bc7	fb 	. 
	ld sp,hl			;2bc8	f9 	. 
	defb 0fdh,0bdh	;cp iyl		;2bc9	fd bd 	. . 
	xor l			;2bcb	ad 	. 
	sbc a,a			;2bcc	9f 	. 
	rst 18h			;2bcd	df 	. 
	rst 38h			;2bce	ff 	. 
	rst 38h			;2bcf	ff 	. 
	ld a,a			;2bd0	7f 	 
	nop			;2bd1	00 	. 
	inc bc			;2bd2	03 	. 
	ei			;2bd3	fb 	. 
	nop			;2bd4	00 	. 
	inc bc			;2bd5	03 	. 
	rst 38h			;2bd6	ff 	. 
	ret nz			;2bd7	c0 	. 
	rrca			;2bd8	0f 	. 
	rst 38h			;2bd9	ff 	. 
	rst 30h			;2bda	f7 	. 
	nop			;2bdb	00 	. 
	inc bc			;2bdc	03 	. 
	rst 28h			;2bdd	ef 	. 
	cp 0ffh		;2bde	fe ff 	. . 
	call m,l0400h		;2be0	fc 00 04 	. . . 
	rst 38h			;2be3	ff 	. 
	ld c,a			;2be4	4f 	O 
	rst 20h			;2be5	e7 	. 
	ei			;2be6	fb 	. 
	ld a,l			;2be7	7d 	} 
	cp 000h		;2be8	fe 00 	. . 
	dec b			;2bea	05 	. 
	rst 38h			;2beb	ff 	. 
	ld h,a			;2bec	67 	g 
	pop af			;2bed	f1 	. 
	ld e,0ffh		;2bee	1e ff 	. . 
	rst 38h			;2bf0	ff 	. 
	rst 8			;2bf1	cf 	. 
	rst 0			;2bf2	c7 	. 
	ex (sp),hl			;2bf3	e3 	. 
	rst 30h			;2bf4	f7 	. 
	call m,sub_0a00h		;2bf5	fc 00 0a 	. . . 
	rst 38h			;2bf8	ff 	. 
	rra			;2bf9	1f 	. 
	ex (sp),hl			;2bfa	e3 	. 
	call m,l00fdh+1		;2bfb	fc fe 00 	. . . 
	ld b,0ffh		;2bfe	06 ff 	. . 
	rst 18h			;2c00	df 	. 
	ei			;2c01	fb 	. 
	defb 0fdh,000h,00eh	;illegal sequence		;2c02	fd 00 0e 	. . . 
	rst 38h			;2c05	ff 	. 
	ld a,a			;2c06	7f 	 
	jp 0fbf9h		;2c07	c3 f9 fb 	. . . 
	rst 38h			;2c0a	ff 	. 
	defb 0fdh,000h,009h	;illegal sequence		;2c0b	fd 00 09 	. . . 
	rst 38h			;2c0e	ff 	. 
	cp a			;2c0f	bf 	. 
	rst 0			;2c10	c7 	. 
	ld sp,hl			;2c11	f9 	. 
	cp 0ffh		;2c12	fe ff 	. . 
	rst 38h			;2c14	ff 	. 
	di			;2c15	f3 	. 
	nop			;2c16	00 	. 
	inc b			;2c17	04 	. 
	rst 38h			;2c18	ff 	. 
	ld a,a			;2c19	7f 	 
	nop			;2c1a	00 	. 
	ld b,0ffh		;2c1b	06 ff 	. . 
	ld a,a			;2c1d	7f 	 
	ccf			;2c1e	3f 	? 
	nop			;2c1f	00 	. 
	inc b			;2c20	04 	. 
	rst 38h			;2c21	ff 	. 
	ccf			;2c22	3f 	? 
	ex (sp),hl			;2c23	e3 	. 
	ei			;2c24	fb 	. 
	nop			;2c25	00 	. 
	ld bc,0ffffh		;2c26	01 ff ff 	. . . 
	cp a			;2c29	bf 	. 
	sbc a,a			;2c2a	9f 	. 
	rst 18h			;2c2b	df 	. 
	rst 28h			;2c2c	ef 	. 
	rst 38h			;2c2d	ff 	. 
	rst 30h			;2c2e	f7 	. 
	rst 8			;2c2f	cf 	. 
	nop			;2c30	00 	. 
	dec c			;2c31	0d 	. 
	rst 38h			;2c32	ff 	. 
	rst 20h			;2c33	e7 	. 
	ei			;2c34	fb 	. 
	defb 0fdh,09fh,0e7h	;illegal sequence		;2c35	fd 9f e7 	. . . 
	rst 38h			;2c38	ff 	. 
	rst 38h			;2c39	ff 	. 
	di			;2c3a	f3 	. 
	defb 0fdh,0feh,000h	;illegal sequence		;2c3b	fd fe 00 	. . . 
	rrca			;2c3e	0f 	. 
	rst 38h			;2c3f	ff 	. 
	rra			;2c40	1f 	. 
	ex (sp),hl			;2c41	e3 	. 
l2c42h:
	rst 38h			;2c42	ff 	. 
	ret nz			;2c43	c0 	. 
	nop			;2c44	00 	. 
	inc bc			;2c45	03 	. 
	add a,b			;2c46	80 	. 
	ret nz			;2c47	c0 	. 
	rst 38h			;2c48	ff 	. 
	rst 38h			;2c49	ff 	. 
	inc c			;2c4a	0c 	. 
	nop			;2c4b	00 	. 
	inc bc			;2c4c	03 	. 
	ex af,af'			;2c4d	08 	. 
	inc e			;2c4e	1c 	. 
	ccf			;2c4f	3f 	? 
	rst 38h			;2c50	ff 	. 
	rst 38h			;2c51	ff 	. 
	jr nc,l2c54h		;2c52	30 00 	0 . 
l2c54h:
	inc b			;2c54	04 	. 
	djnz $+50		;2c55	10 30 	. 0 
	ld a,a			;2c57	7f 	 
	nop			;2c58	00 	. 
	ld bc,l01ffh		;2c59	01 ff 01 	. . . 
	rrca			;2c5c	0f 	. 
	rst 38h			;2c5d	ff 	. 
	djnz $+1		;2c5e	10 ff 	. . 
	jr nz,l2c42h		;2c60	20 e0 	  . 
	nop			;2c62	00 	. 
	ld bc,006ffh		;2c63	01 ff 06 	. . . 
	nop			;2c66	00 	. 
	inc b			;2c67	04 	. 
	ld (bc),a			;2c68	02 	. 
	rlca			;2c69	07 	. 
	rst 38h			;2c6a	ff 	. 
	rst 38h			;2c6b	ff 	. 
	nop			;2c6c	00 	. 
	ld b,000h		;2c6d	06 00 	. . 
	ret nz			;2c6f	c0 	. 
	nop			;2c70	00 	. 
	ld bc,080ffh		;2c71	01 ff 80 	. . . 
	ret po			;2c74	e0 	. 
	djnz $+1		;2c75	10 ff 	. . 
	ex af,af'			;2c77	08 	. 
	inc b			;2c78	04 	. 
	rlca			;2c79	07 	. 
	nop			;2c7a	00 	. 
	ld bc,l00fdh+2		;2c7b	01 ff 00 	. . . 
	dec b			;2c7e	05 	. 
	ld bc,l0002h+1		;2c7f	01 03 00 	. . . 
	inc bc			;2c82	03 	. 
	rst 38h			;2c83	ff 	. 
	ret po			;2c84	e0 	. 
	rst 0			;2c85	c7 	. 
	jp nz,l00c8h		;2c86	c2 c8 00 	. . . 
	inc bc			;2c89	03 	. 
	call z,l0100h		;2c8a	cc 00 01 	. . . 
	rst 38h			;2c8d	ff 	. 
	nop			;2c8e	00 	. 
	ld bc,0ff00h		;2c8f	01 00 ff 	. . . 
	inc c			;2c92	0c 	. 
	ld h,a			;2c93	67 	g 
	di			;2c94	f3 	. 
	or e			;2c95	b3 	. 
	jp 0c1c2h		;2c96	c3 c2 c1 	. . . 
	rst 38h			;2c99	ff 	. 
	call z,0e0c0h		;2c9a	cc c0 e0 	. . . 
	rst 38h			;2c9d	ff 	. 
	rst 38h			;2c9e	ff 	. 
	ld a,l			;2c9f	7d 	} 
	inc a			;2ca0	3c 	< 
	cp c			;2ca1	b9 	. 
	sub e			;2ca2	93 	. 
	inc de			;2ca3	13 	. 
	nop			;2ca4	00 	. 
	ld bc,l0000h		;2ca5	01 00 00 	. . . 
	inc bc			;2ca8	03 	. 
	rst 38h			;2ca9	ff 	. 
	nop			;2caa	00 	. 
	ld bc,0c000h		;2cab	01 00 c0 	. . . 
	sub e			;2cae	93 	. 
	ld b,032h		;2caf	06 32 	. 2 
	jr c,l2cf0h		;2cb1	38 3d 	8 = 
	nop			;2cb3	00 	. 
	ld bc,l01ffh		;2cb4	01 ff 01 	. . . 
	nop			;2cb7	00 	. 
	ld bc,l3c00h		;2cb8	01 00 3c 	. . < 
	inc c			;2cbb	0c 	. 
	ld h,b			;2cbc	60 	` 
	ld (hl),b			;2cbd	70 	p 
	or b			;2cbe	b0 	. 
	jr c,l2cd3h		;2cbf	38 12 	8 . 
	adc a,0e6h		;2cc1	ce e6 	. . 
	rst 38h			;2cc3	ff 	. 
	nop			;2cc4	00 	. 
	rst 38h			;2cc5	ff 	. 
	rst 38h			;2cc6	ff 	. 
	add a,b			;2cc7	80 	. 
	call nz,064cch		;2cc8	c4 cc 64 	. . d 
	nop			;2ccb	00 	. 
	ld bc,l0100h		;2ccc	01 00 01 	. . . 
	nop			;2ccf	00 	. 
	inc de			;2cd0	13 	. 
	rst 38h			;2cd1	ff 	. 
	rst 20h			;2cd2	e7 	. 
l2cd3h:
	ei			;2cd3	fb 	. 
	nop			;2cd4	00 	. 
	ld b,0ffh		;2cd5	06 ff 	. . 
	rst 8			;2cd7	cf 	. 
	rst 30h			;2cd8	f7 	. 
	nop			;2cd9	00 	. 
	ld b,0ffh		;2cda	06 ff 	. . 
	ret nz			;2cdc	c0 	. 
	rst 38h			;2cdd	ff 	. 
	add a,b			;2cde	80 	. 
	adc a,b			;2cdf	88 	. 
	sbc a,b			;2ce0	98 	. 
	rst 38h			;2ce1	ff 	. 
	sbc a,e			;2ce2	9b 	. 
	nop			;2ce3	00 	. 
	ld bc,l00fdh+2		;2ce4	01 ff 00 	. . . 
	dec b			;2ce7	05 	. 
	nop			;2ce8	00 	. 
	rst 38h			;2ce9	ff 	. 
	rst 38h			;2cea	ff 	. 
	rst 38h			;2ceb	ff 	. 
	sbc a,e			;2cec	9b 	. 
	sbc a,b			;2ced	98 	. 
	adc a,a			;2cee	8f 	. 
	add a,a			;2cef	87 	. 
l2cf0h:
	add a,b			;2cf0	80 	. 
	ret nz			;2cf1	c0 	. 
	nop			;2cf2	00 	. 
	inc bc			;2cf3	03 	. 
	rst 38h			;2cf4	ff 	. 
	nop			;2cf5	00 	. 
	ld bc,0ff00h		;2cf6	01 00 ff 	. . . 
	rst 38h			;2cf9	ff 	. 
	rst 38h			;2cfa	ff 	. 
	nop			;2cfb	00 	. 
	rst 38h			;2cfc	ff 	. 
	rst 38h			;2cfd	ff 	. 
	ld bc,l0100h		;2cfe	01 00 01 	. . . 
	nop			;2d01	00 	. 
	inc b			;2d02	04 	. 
	rst 38h			;2d03	ff 	. 
	nop			;2d04	00 	. 
	nop			;2d05	00 	. 
	inc b			;2d06	04 	. 
	ret po			;2d07	e0 	. 
	nop			;2d08	00 	. 
	ld bc,0f800h		;2d09	01 00 f8 	. . . 
	ret p			;2d0c	f0 	. 
	nop			;2d0d	00 	. 
	ld bc,l0100h		;2d0e	01 00 01 	. . . 
	nop			;2d11	00 	. 
	ld bc,l00fdh+2		;2d12	01 ff 00 	. . . 
	nop			;2d15	00 	. 
	nop			;2d16	00 	. 
	ld bc,080ffh		;2d17	01 ff 80 	. . . 
	nop			;2d1a	00 	. 
	inc bc			;2d1b	03 	. 
	nop			;2d1c	00 	. 
	add a,b			;2d1d	80 	. 
	nop			;2d1e	00 	. 
	inc bc			;2d1f	03 	. 
	rst 38h			;2d20	ff 	. 
	rra			;2d21	1f 	. 
	djnz l2d24h		;2d22	10 00 	. . 
l2d24h:
	inc bc			;2d24	03 	. 
	nop			;2d25	00 	. 
	ret p			;2d26	f0 	. 
	nop			;2d27	00 	. 
	ld bc,0feffh		;2d28	01 ff fe 	. . . 
	call m,sub_0300h		;2d2b	fc 00 03 	. . . 
	nop			;2d2e	00 	. 
	ld bc,l0002h+1		;2d2f	01 03 00 	. . . 
	ld bc,l00fdh+2		;2d32	01 ff 00 	. . . 
	dec b			;2d35	05 	. 
	ld bc,0ffffh		;2d36	01 ff ff 	. . . 
	rra			;2d39	1f 	. 
	nop			;2d3a	00 	. 
	inc bc			;2d3b	03 	. 
	rst 38h			;2d3c	ff 	. 
	ret nz			;2d3d	c0 	. 
	rst 38h			;2d3e	ff 	. 
	add a,b			;2d3f	80 	. 
	ret nz			;2d40	c0 	. 
	nop			;2d41	00 	. 
	inc b			;2d42	04 	. 
	rst 38h			;2d43	ff 	. 
	nop			;2d44	00 	. 
	inc b			;2d45	04 	. 
	nop			;2d46	00 	. 
	nop			;2d47	00 	. 
	inc b			;2d48	04 	. 
	rst 38h			;2d49	ff 	. 
	inc bc			;2d4a	03 	. 
	ld bc,l0100h		;2d4b	01 00 01 	. . . 
	nop			;2d4e	00 	. 
	ld bc,l0100h		;2d4f	01 00 01 	. . . 
	rst 38h			;2d52	ff 	. 
	inc bc			;2d53	03 	. 
	rst 38h			;2d54	ff 	. 
	defb 0fdh,0bdh	;cp iyl		;2d55	fd bd 	. . 
	ld a,l			;2d57	7d 	} 
	defb 0ddh,0fdh,001h	;illegal sequence		;2d58	dd fd 01 	. . . 
	nop			;2d5b	00 	. 
	ld bc,l3f00h		;2d5c	01 00 3f 	. . ? 
	ld hl,(0150bh)		;2d5f	2a 0b 15 	* . . 
	add hl,bc			;2d62	09 	. 
	ld hl,(l00fdh+2)		;2d63	2a ff 00 	* . . 
	nop			;2d66	00 	. 
	ld bc,025ffh		;2d67	01 ff 25 	. . % 
	ld (hl),c			;2d6a	71 	q 
	xor a			;2d6b	af 	. 
	dec d			;2d6c	15 	. 
	ld hl,l00fdh+2		;2d6d	21 ff 00 	! . . 
	nop			;2d70	00 	. 
	ld bc,0ccffh		;2d71	01 ff cc 	. . . 
	cp d			;2d74	ba 	. 
	ld c,0bah		;2d75	0e ba 	. . 
	jr z,l2d79h		;2d77	28 00 	( . 
l2d79h:
	ld bc,l0700h		;2d79	01 00 07 	. . . 
	rst 38h			;2d7c	ff 	. 
	ei			;2d7d	fb 	. 
	ld a,e			;2d7e	7b 	{ 
	ei			;2d7f	fb 	. 
	cp e			;2d80	bb 	. 
	ei			;2d81	fb 	. 
	inc bc			;2d82	03 	. 
	ld a,a			;2d83	7f 	 
	nop			;2d84	00 	. 
	rlca			;2d85	07 	. 
	rst 38h			;2d86	ff 	. 
	cp 000h		;2d87	fe 00 	. . 
	ld c,0ffh		;2d89	0e ff 	. . 
	ld a,a			;2d8b	7f 	 
	nop			;2d8c	00 	. 
	rlca			;2d8d	07 	. 
	rst 38h			;2d8e	ff 	. 
	cp 000h		;2d8f	fe 00 	. . 
	nop			;2d91	00 	. 
	nop			;2d92	00 	. 
	jr nz,$+1		;2d93	20 ff 	  . 
	ret nz			;2d95	c0 	. 
	cp a			;2d96	bf 	. 
	nop			;2d97	00 	. 
	inc bc			;2d98	03 	. 
	rst 38h			;2d99	ff 	. 
	rst 38h			;2d9a	ff 	. 
	ret nz			;2d9b	c0 	. 
	nop			;2d9c	00 	. 
	ld bc,l00fdh+2		;2d9d	01 ff 00 	. . . 
	ld bc,l0000h		;2da0	01 00 00 	. . . 
	inc b			;2da3	04 	. 
	rst 38h			;2da4	ff 	. 
	rst 38h			;2da5	ff 	. 
	nop			;2da6	00 	. 
	nop			;2da7	00 	. 
	ld bc,l01ffh		;2da8	01 ff 01 	. . . 
	call m,0fffeh		;2dab	fc fe ff 	. . . 
	rst 38h			;2dae	ff 	. 
	inc bc			;2daf	03 	. 
	ld bc,l0100h		;2db0	01 00 01 	. . . 
	rst 38h			;2db3	ff 	. 
	inc bc			;2db4	03 	. 
	push hl			;2db5	e5 	. 
	ld sp,iy		;2db6	fd f9 	. . 
	nop			;2db8	00 	. 
	inc b			;2db9	04 	. 
	defb 0fdh,000h,001h	;illegal sequence		;2dba	fd 00 01 	. . . 
	nop			;2dbd	00 	. 
	nop			;2dbe	00 	. 
	rlca			;2dbf	07 	. 
	ld a,a			;2dc0	7f 	 
	nop			;2dc1	00 	. 
	ld bc,0e900h		;2dc2	01 00 e9 	. . . 
sub_2dc5h:
	cp 000h		;2dc5	fe 00 	. . 
	dec b			;2dc7	05 	. 
	rst 38h			;2dc8	ff 	. 
	nop			;2dc9	00 	. 
	ld bc,l0000h		;2dca	01 00 00 	. . . 
	rlca			;2dcd	07 	. 
	rst 38h			;2dce	ff 	. 
	rlca			;2dcf	07 	. 
	ld c,e			;2dd0	4b 	K 
	ei			;2dd1	fb 	. 
	di			;2dd2	f3 	. 
	nop			;2dd3	00 	. 
	inc b			;2dd4	04 	. 
	ei			;2dd5	fb 	. 
	nop			;2dd6	00 	. 
	ld bc,04000h		;2dd7	01 00 40 	. . @ 
	nop			;2dda	00 	. 
	ld b,080h		;2ddb	06 80 	. . 
	rst 38h			;2ddd	ff 	. 
	nop			;2dde	00 	. 
	djnz $+1		;2ddf	10 ff 	. . 
	inc b			;2de1	04 	. 
	nop			;2de2	00 	. 
	inc bc			;2de3	03 	. 
	nop			;2de4	00 	. 
	add a,b			;2de5	80 	. 
	rst 38h			;2de6	ff 	. 
	and b			;2de7	a0 	. 
	sub b			;2de8	90 	. 
	sbc a,b			;2de9	98 	. 
	add a,(hl)			;2dea	86 	. 
	ret nz			;2deb	c0 	. 
	ld a,a			;2dec	7f 	 
	nop			;2ded	00 	. 
	ld b,000h		;2dee	06 00 	. . 
	ld (bc),a			;2df0	02 	. 
	call m,l0000h		;2df1	fc 00 00 	. . . 
	nop			;2df4	00 	. 
	ld bc,0bfffh		;2df5	01 ff bf 	. . . 
	nop			;2df8	00 	. 
	inc bc			;2df9	03 	. 
	nop			;2dfa	00 	. 
	add a,b			;2dfb	80 	. 
	nop			;2dfc	00 	. 
	inc bc			;2dfd	03 	. 
	rst 38h			;2dfe	ff 	. 
	rst 18h			;2dff	df 	. 
	scf			;2e00	37 	7 
	rst 38h			;2e01	ff 	. 
	jr nz,l2e04h		;2e02	20 00 	  . 
l2e04h:
	ld bc,0f000h		;2e04	01 00 f0 	. . . 
	nop			;2e07	00 	. 
	ld bc,0feffh		;2e08	01 ff fe 	. . . 
	call m,0fff8h		;2e0b	fc f8 ff 	. . . 
	inc b			;2e0e	04 	. 
	dec b			;2e0f	05 	. 
	inc bc			;2e10	03 	. 
	nop			;2e11	00 	. 
	ld bc,0fdffh		;2e12	01 ff fd 	. . . 
	nop			;2e15	00 	. 
	inc bc			;2e16	03 	. 
	inc bc			;2e17	03 	. 
l2e18h:
	ld bc,0ffffh		;2e18	01 ff ff 	. . . 
	rra			;2e1b	1f 	. 
	nop			;2e1c	00 	. 
	ld bc,0c0ffh		;2e1d	01 ff c0 	. . . 
	add a,b			;2e20	80 	. 
	cp a			;2e21	bf 	. 
	nop			;2e22	00 	. 
	dec b			;2e23	05 	. 
	rst 38h			;2e24	ff 	. 
	rst 38h			;2e25	ff 	. 
	nop			;2e26	00 	. 
	nop			;2e27	00 	. 
	dec b			;2e28	05 	. 
	rst 38h			;2e29	ff 	. 
	di			;2e2a	f3 	. 
	inc bc			;2e2b	03 	. 
	nop			;2e2c	00 	. 
	ld bc,0fc00h		;2e2d	01 00 fc 	. . . 
	cp 000h		;2e30	fe 00 	. . 
	inc b			;2e32	04 	. 
	rst 38h			;2e33	ff 	. 
	nop			;2e34	00 	. 
	ld b,003h		;2e35	06 03 	. . 
	rst 38h			;2e37	ff 	. 
	rst 38h			;2e38	ff 	. 
	add a,b			;2e39	80 	. 
	ret nc			;2e3a	d0 	. 
	nop			;2e3b	00 	. 
	inc b			;2e3c	04 	. 
	ret nz			;2e3d	c0 	. 
	rst 38h			;2e3e	ff 	. 
	rst 38h			;2e3f	ff 	. 
	nop			;2e40	00 	. 
	ld bc,l0200h		;2e41	01 00 02 	. . . 
	rst 38h			;2e44	ff 	. 
	nop			;2e45	00 	. 
	add a,b			;2e46	80 	. 
	nop			;2e47	00 	. 
	ld bc,0fe00h		;2e48	01 00 fe 	. . . 
	nop			;2e4b	00 	. 
	ld bc,l00fdh+2		;2e4c	01 ff 00 	. . . 
	inc bc			;2e4f	03 	. 
	nop			;2e50	00 	. 
	ld bc,l0040h		;2e51	01 40 00 	. @ . 
	ld bc,0ff00h		;2e54	01 00 ff 	. . . 
	rst 38h			;2e57	ff 	. 
	nop			;2e58	00 	. 
	ld b,007h		;2e59	06 07 	. . 
	nop			;2e5b	00 	. 
	ld bc,l00fdh+2		;2e5c	01 ff 00 	. . . 
	ld bc,04000h		;2e5f	01 00 40 	. . @ 
	add a,b			;2e62	80 	. 
	add a,a			;2e63	87 	. 
	rst 38h			;2e64	ff 	. 
	add a,e			;2e65	83 	. 
	and c			;2e66	a1 	. 
	cp e			;2e67	bb 	. 
	ld c,001h		;2e68	0e 01 	. . 
	djnz $+1		;2e6a	10 ff 	. . 
	call p,0fff0h		;2e6c	f4 f0 ff 	. . . 
	ret m			;2e6f	f8 	. 
	nop			;2e70	00 	. 
	inc bc			;2e71	03 	. 
	cp a			;2e72	bf 	. 
	sbc a,(hl)			;2e73	9e 	. 
	cp a			;2e74	bf 	. 
	or a			;2e75	b7 	. 
	ret nz			;2e76	c0 	. 
	ld a,a			;2e77	7f 	 
	ret m			;2e78	f8 	. 
	ret c			;2e79	d8 	. 
	inc c			;2e7a	0c 	. 
	inc b			;2e7b	04 	. 
	ret nz			;2e7c	c0 	. 
	ret po			;2e7d	e0 	. 
	ld (bc),a			;2e7e	02 	. 
	call m,l0000h		;2e7f	fc 00 00 	. . . 
	nop			;2e82	00 	. 
	ld bc,0c0ffh		;2e83	01 ff c0 	. . . 
	nop			;2e86	00 	. 
	rlca			;2e87	07 	. 
	rst 38h			;2e88	ff 	. 
	ccf			;2e89	3f 	? 
	ret c			;2e8a	d8 	. 
	rst 38h			;2e8b	ff 	. 
	rst 18h			;2e8c	df 	. 
	nop			;2e8d	00 	. 
	dec b			;2e8e	05 	. 
	rst 38h			;2e8f	ff 	. 
	rlca			;2e90	07 	. 
	nop			;2e91	00 	. 
	inc bc			;2e92	03 	. 
	ei			;2e93	fb 	. 
	rst 38h			;2e94	ff 	. 
	rst 38h			;2e95	ff 	. 
	inc bc			;2e96	03 	. 
	nop			;2e97	00 	. 
	inc bc			;2e98	03 	. 
	defb 0fdh,000h,009h	;illegal sequence		;2e99	fd 00 09 	. . . 
	rst 38h			;2e9c	ff 	. 
	rst 38h			;2e9d	ff 	. 
	ret nz			;2e9e	c0 	. 
	nop			;2e9f	00 	. 
	ld b,0ffh		;2ea0	06 ff 	. . 
	rst 38h			;2ea2	ff 	. 
	nop			;2ea3	00 	. 
	nop			;2ea4	00 	. 
	ld bc,0f3ffh		;2ea5	01 ff f3 	. . . 
	nop			;2ea8	00 	. 
	ld bc,0feffh		;2ea9	01 ff fe 	. . . 
	rst 38h			;2eac	ff 	. 
	rst 38h			;2ead	ff 	. 
	inc bc			;2eae	03 	. 
	ld bc,l0100h		;2eaf	01 00 01 	. . . 
	rst 38h			;2eb2	ff 	. 
	inc bc			;2eb3	03 	. 
	ld bc,0b9f9h		;2eb4	01 f9 b9 	. . . 
	ld a,c			;2eb7	79 	y 
	exx			;2eb8	d9 	. 
	ld sp,hl			;2eb9	f9 	. 
	defb 0fdh,0ffh,000h	;illegal sequence		;2eba	fd ff 00 	. . . 
	ld a,d			;2ebd	7a 	z 
	ld c,d			;2ebe	4a 	J 
	ld d,l			;2ebf	55 	U 
	ld b,c			;2ec0	41 	A 
	ld l,d			;2ec1	6a 	j 
	ld a,a			;2ec2	7f 	 
	rst 38h			;2ec3	ff 	. 
	nop			;2ec4	00 	. 
	ld h,070h		;2ec5	26 70 	& p 
	xor (hl)			;2ec7	ae 	. 
	sub b			;2ec8	90 	. 
l2ec9h:
	jr nz,l2ec9h		;2ec9	20 fe 	  . 
	rst 38h			;2ecb	ff 	. 
	nop			;2ecc	00 	. 
	call z,sub_0fb2h		;2ecd	cc b2 0f 	. . . 
	jp pe,l0028h		;2ed0	ea 28 00 	. ( . 
	ld bc,l07ffh		;2ed3	01 ff 07 	. . . 
	inc bc			;2ed6	03 	. 
	di			;2ed7	f3 	. 
	ld (hl),e			;2ed8	73 	s 
	di			;2ed9	f3 	. 
	or e			;2eda	b3 	. 
	di			;2edb	f3 	. 
	ei			;2edc	fb 	. 
	nop			;2edd	00 	. 
	ld bc,080ffh		;2ede	01 ff 80 	. . . 
	rrca			;2ee1	0f 	. 
	nop			;2ee2	00 	. 
	inc bc			;2ee3	03 	. 
	nop			;2ee4	00 	. 
	rst 38h			;2ee5	ff 	. 
	ld b,b			;2ee6	40 	@ 
	pop af			;2ee7	f1 	. 
	ld (bc),a			;2ee8	02 	. 
	defb 0edh;next byte illegal after ed		;2ee9	ed 	. 
	rst 38h			;2eea	ff 	. 
	add hl,bc			;2eeb	09 	. 
	dec c			;2eec	0d 	. 
	rst 38h			;2eed	ff 	. 
	dec b			;2eee	05 	. 
	nop			;2eef	00 	. 
	inc bc			;2ef0	03 	. 
	ld b,b			;2ef1	40 	@ 
	ld h,b			;2ef2	60 	` 
	ld b,b			;2ef3	40 	@ 
	ld c,b			;2ef4	48 	H 
	ccf			;2ef5	3f 	? 
	add a,b			;2ef6	80 	. 
	rst 38h			;2ef7	ff 	. 
	dec b			;2ef8	05 	. 
	nop			;2ef9	00 	. 
	dec b			;2efa	05 	. 
	ld bc,l0002h+1		;2efb	01 03 00 	. . . 
	nop			;2efe	00 	. 
	ld a,a			;2eff	7f 	 
	nop			;2f00	00 	. 
	rlca			;2f01	07 	. 
	rst 38h			;2f02	ff 	. 
	cp 000h		;2f03	fe 00 	. . 
	ld c,0ffh		;2f05	0e ff 	. . 
	ld a,a			;2f07	7f 	 
	nop			;2f08	00 	. 
	rlca			;2f09	07 	. 
	rst 38h			;2f0a	ff 	. 
	cp 000h		;2f0b	fe 00 	. . 
	ld bc,07f00h		;2f0d	01 00 7f 	. .  
	nop			;2f10	00 	. 
	dec b			;2f11	05 	. 
	rst 38h			;2f12	ff 	. 
	rst 30h			;2f13	f7 	. 
	nop			;2f14	00 	. 
	ld bc,0fe00h		;2f15	01 00 fe 	. . . 
	nop			;2f18	00 	. 
	dec b			;2f19	05 	. 
	rst 38h			;2f1a	ff 	. 
	rst 38h			;2f1b	ff 	. 
	rst 30h			;2f1c	f7 	. 
	nop			;2f1d	00 	. 
	ld bc,0f3ffh		;2f1e	01 ff f3 	. . . 
	call m,sub_0300h		;2f21	fc 00 03 	. . . 
	rst 38h			;2f24	ff 	. 
	ld a,a			;2f25	7f 	 
	rst 30h			;2f26	f7 	. 
	nop			;2f27	00 	. 
	ld b,0ffh		;2f28	06 ff 	. . 
	cp 0d0h		;2f2a	fe d0 	. . 
	nop			;2f2c	00 	. 
	inc bc			;2f2d	03 	. 
	add a,b			;2f2e	80 	. 
	ret nz			;2f2f	c0 	. 
	rst 38h			;2f30	ff 	. 
l2f31h:
	rst 38h			;2f31	ff 	. 
	pop hl			;2f32	e1 	. 
	rra			;2f33	1f 	. 
	add hl,de			;2f34	19 	. 
	nop			;2f35	00 	. 
	inc bc			;2f36	03 	. 
	djnz l2f31h		;2f37	10 f8 	. . 
	nop			;2f39	00 	. 
	ld bc,01fffh		;2f3a	01 ff 1f 	. . . 
	call nz,sub_0300h		;2f3d	c4 00 03 	. . . 
	add a,b			;2f40	80 	. 
	ret nz			;2f41	c0 	. 
	nop			;2f42	00 	. 
	ld bc,07cffh		;2f43	01 ff 7c 	. . | 
	jr c,$+33		;2f46	38 1f 	8 . 
	inc e			;2f48	1c 	. 
	rst 38h			;2f49	ff 	. 
	djnz l2f7ch		;2f4a	10 30 	. 0 
	ret m			;2f4c	f8 	. 
	ld c,a			;2f4d	4f 	O 
	inc bc			;2f4e	03 	. 
	nop			;2f4f	00 	. 
	ld bc,0ffffh		;2f50	01 ff ff 	. . . 
	ld (bc),a			;2f53	02 	. 
	rst 38h			;2f54	ff 	. 
	inc bc			;2f55	03 	. 
	rlca			;2f56	07 	. 
	nop			;2f57	00 	. 
	ld bc,0feffh		;2f58	01 ff fe 	. . . 
	ld b,b			;2f5b	40 	@ 
	nop			;2f5c	00 	. 
	inc bc			;2f5d	03 	. 
	nop			;2f5e	00 	. 
	nop			;2f5f	00 	. 
	ld bc,0c1ffh		;2f60	01 ff c1 	. . . 
	inc b			;2f63	04 	. 
	nop			;2f64	00 	. 
	ld bc,l0000h		;2f65	01 00 00 	. . . 
	ld bc,0ffffh		;2f68	01 ff ff 	. . . 
	ld (bc),a			;2f6b	02 	. 
	rst 38h			;2f6c	ff 	. 
	inc bc			;2f6d	03 	. 
	rlca			;2f6e	07 	. 
	call m,040e0h		;2f6f	fc e0 40 	. . @ 
	nop			;2f72	00 	. 
	inc bc			;2f73	03 	. 
	nop			;2f74	00 	. 
	rst 38h			;2f75	ff 	. 
	rst 38h			;2f76	ff 	. 
	add a,e			;2f77	83 	. 
	ld bc,l0000h		;2f78	01 00 00 	. . . 
	nop			;2f7b	00 	. 
l2f7ch:
	ld bc,04000h		;2f7c	01 00 40 	. . @ 
	nop			;2f7f	00 	. 
	ld b,080h		;2f80	06 80 	. . 
	rst 38h			;2f82	ff 	. 
	nop			;2f83	00 	. 
	djnz $+1		;2f84	10 ff 	. . 
	inc b			;2f86	04 	. 
	nop			;2f87	00 	. 
	inc bc			;2f88	03 	. 
	nop			;2f89	00 	. 
	add a,b			;2f8a	80 	. 
	rst 38h			;2f8b	ff 	. 
	and b			;2f8c	a0 	. 
	sub b			;2f8d	90 	. 
	sbc a,b			;2f8e	98 	. 
	add a,(hl)			;2f8f	86 	. 
	ret nz			;2f90	c0 	. 
	ld a,a			;2f91	7f 	 
	nop			;2f92	00 	. 
	ld b,000h		;2f93	06 00 	. . 
	ld (bc),a			;2f95	02 	. 
	call m,l00fdh+2		;2f96	fc ff 00 	. . . 
	ld b,b			;2f99	40 	@ 
	rst 38h			;2f9a	ff 	. 
	add a,c			;2f9b	81 	. 
	add a,h			;2f9c	84 	. 
	rst 38h			;2f9d	ff 	. 
	add a,b			;2f9e	80 	. 
	nop			;2f9f	00 	. 
	dec b			;2fa0	05 	. 
	nop			;2fa1	00 	. 
	inc b			;2fa2	04 	. 
	rst 38h			;2fa3	ff 	. 
	nop			;2fa4	00 	. 
	nop			;2fa5	00 	. 
	inc bc			;2fa6	03 	. 
	and b			;2fa7	a0 	. 
	sbc a,b			;2fa8	98 	. 
	adc a,h			;2fa9	8c 	. 
	add a,d			;2faa	82 	. 
	ld b,b			;2fab	40 	@ 
	ccf			;2fac	3f 	? 
	nop			;2fad	00 	. 
	inc b			;2fae	04 	. 
	nop			;2faf	00 	. 
	add a,b			;2fb0	80 	. 
	nop			;2fb1	00 	. 
	ld bc,l0200h		;2fb2	01 00 02 	. . . 
	call m,l0100h		;2fb5	fc 00 01 	. . . 
	rst 38h			;2fb8	ff 	. 
	nop			;2fb9	00 	. 
	inc bc			;2fba	03 	. 
	add a,b			;2fbb	80 	. 
	ret nz			;2fbc	c0 	. 
	rst 38h			;2fbd	ff 	. 
	rst 38h			;2fbe	ff 	. 
	pop hl			;2fbf	e1 	. 
	rst 18h			;2fc0	df 	. 
	ccf			;2fc1	3f 	? 
	rst 38h			;2fc2	ff 	. 
	jr nc,l2fd5h		;2fc3	30 10 	0 . 
	ret m			;2fc5	f8 	. 
	nop			;2fc6	00 	. 
	inc bc			;2fc7	03 	. 
	rst 38h			;2fc8	ff 	. 
	nop			;2fc9	00 	. 
	inc bc			;2fca	03 	. 
	add a,b			;2fcb	80 	. 
	ret nz			;2fcc	c0 	. 
	nop			;2fcd	00 	. 
	ld bc,0fcffh		;2fce	01 ff fc 	. . . 
	ld a,c			;2fd1	79 	y 
	rst 18h			;2fd2	df 	. 
	ccf			;2fd3	3f 	? 
	nop			;2fd4	00 	. 
l2fd5h:
	inc bc			;2fd5	03 	. 
	jr nc,$-6		;2fd6	30 f8 	0 . 
	nop			;2fd8	00 	. 
	ld bc,l0fffh		;2fd9	01 ff 0f 	. . . 
	nop			;2fdc	00 	. 
	ld bc,0faffh		;2fdd	01 ff fa 	. . . 
	ld b,000h		;2fe0	06 00 	. . 
	inc bc			;2fe2	03 	. 
	rlca			;2fe3	07 	. 
	nop			;2fe4	00 	. 
	ld bc,0ffffh		;2fe5	01 ff ff 	. . . 
	cp 0ffh		;2fe8	fe ff 	. . 
	ld bc,l0100h		;2fea	01 00 01 	. . . 
	nop			;2fed	00 	. 
	nop			;2fee	00 	. 
	ld bc,0c1ffh		;2fef	01 ff c1 	. . . 
	rrca			;2ff2	0f 	. 
	djnz l2ff5h		;2ff3	10 00 	. . 
l2ff5h:
	ld bc,0faffh		;2ff5	01 ff fa 	. . . 
	ld b,000h		;2ff8	06 00 	. . 
	inc bc			;2ffa	03 	. 
	rlca			;2ffb	07 	. 
	call m,07ee3h		;2ffc	fc e3 7e 	. . ~ 
	rst 38h			;2fff	ff 	. 
l3000h:
	ld bc,l0100h		;3000	01 00 01 	. . . 
	nop			;3003	00 	. 
	nop			;3004	00 	. 
	inc bc			;3005	03 	. 
	rst 38h			;3006	ff 	. 
	inc bc			;3007	03 	. 
	nop			;3008	00 	. 
	nop			;3009	00 	. 
	nop			;300a	00 	. 
	ld bc,04000h		;300b	01 00 40 	. . @ 
	add a,b			;300e	80 	. 
	add a,a			;300f	87 	. 
l3010h:
	rst 38h			;3010	ff 	. 
	add a,e			;3011	83 	. 
	and c			;3012	a1 	. 
	cp e			;3013	bb 	. 
	ld c,001h		;3014	0e 01 	. . 
	djnz $+1		;3016	10 ff 	. . 
	call p,0fff0h		;3018	f4 f0 ff 	. . . 
	ret m			;301b	f8 	. 
	nop			;301c	00 	. 
	inc bc			;301d	03 	. 
	cp a			;301e	bf 	. 
	sbc a,(hl)			;301f	9e 	. 
	cp a			;3020	bf 	. 
l3021h:
	or a			;3021	b7 	. 
	ret nz			;3022	c0 	. 
	ld a,a			;3023	7f 	 
	ret m			;3024	f8 	. 
	ret c			;3025	d8 	. 
	inc c			;3026	0c 	. 
	inc b			;3027	04 	. 
	ret nz			;3028	c0 	. 
	ret po			;3029	e0 	. 
	ld (bc),a			;302a	02 	. 
	call m,l00fdh+2		;302b	fc ff 00 	. . . 
	ld b,a			;302e	47 	G 
	add a,c			;302f	81 	. 
	pop bc			;3030	c1 	. 
	call nz,0c0ffh		;3031	c4 ff c0 	. . . 
	nop			;3034	00 	. 
	ld bc,l0200h		;3035	01 00 02 	. . . 
	add a,c			;3038	81 	. 
	rst 38h			;3039	ff 	. 
	nop			;303a	00 	. 
	inc b			;303b	04 	. 
	rst 38h			;303c	ff 	. 
	nop			;303d	00 	. 
	nop			;303e	00 	. 
	inc bc			;303f	03 	. 
	ret po			;3040	e0 	. 
	ret c			;3041	d8 	. 
	call pe,07fc2h		;3042	ec c2 7f 	. .  
	ccf			;3045	3f 	? 
	nop			;3046	00 	. 
	inc b			;3047	04 	. 
	nop			;3048	00 	. 
	add a,b			;3049	80 	. 
	nop			;304a	00 	. 
	ld bc,0fa00h		;304b	01 00 fa 	. . . 
	call m,000c0h		;304e	fc c0 00 	. . . 
	ld b,0ffh		;3051	06 ff 	. . 
	cp 03fh		;3053	fe 3f 	. ? 
	ret c			;3055	d8 	. 
	rst 38h			;3056	ff 	. 
	rst 18h			;3057	df 	. 
	nop			;3058	00 	. 
	inc bc			;3059	03 	. 
	rst 38h			;305a	ff 	. 
	rra			;305b	1f 	. 
	ret nz			;305c	c0 	. 
	nop			;305d	00 	. 
	dec b			;305e	05 	. 
	rst 38h			;305f	ff 	. 
	ld a,a			;3060	7f 	 
	cp (hl)			;3061	be 	. 
	ccf			;3062	3f 	? 
	ret c			;3063	d8 	. 
	rst 38h			;3064	ff 	. 
	rst 18h			;3065	df 	. 
	rst 38h			;3066	ff 	. 
	rst 38h			;3067	ff 	. 
	rrca			;3068	0f 	. 
	di			;3069	f3 	. 
	nop			;306a	00 	. 
	ld bc,l07ffh		;306b	01 ff 07 	. . . 
	nop			;306e	00 	. 
	inc bc			;306f	03 	. 
	ei			;3070	fb 	. 
	nop			;3071	00 	. 
	inc bc			;3072	03 	. 
	rst 38h			;3073	ff 	. 
sub_3074h:
	ld bc,0feffh		;3074	01 ff fe 	. . . 
	nop			;3077	00 	. 
	inc bc			;3078	03 	. 
	rst 38h			;3079	ff 	. 
	ret p			;307a	f0 	. 
	rst 28h			;307b	ef 	. 
	nop			;307c	00 	. 
	ld bc,l07ffh		;307d	01 ff 07 	. . . 
	nop			;3080	00 	. 
	inc bc			;3081	03 	. 
	ei			;3082	fb 	. 
	rst 38h			;3083	ff 	. 
	rst 38h			;3084	ff 	. 
	call m,0ff81h		;3085	fc 81 ff 	. . . 
	cp 000h		;3088	fe 00 	. . 
	inc bc			;308a	03 	. 
	rst 38h			;308b	ff 	. 
	inc bc			;308c	03 	. 
	defb 0fdh,000h,000h	;illegal sequence		;308d	fd 00 00 	. . . 
	nop			;3090	00 	. 
	ld bc,080ffh		;3091	01 ff 80 	. . . 
	rrca			;3094	0f 	. 
	nop			;3095	00 	. 
	inc bc			;3096	03 	. 
	nop			;3097	00 	. 
	rst 38h			;3098	ff 	. 
	ld b,b			;3099	40 	@ 
	pop af			;309a	f1 	. 
	ld (bc),a			;309b	02 	. 
	defb 0edh;next byte illegal after ed		;309c	ed 	. 
	rst 38h			;309d	ff 	. 
	add hl,bc			;309e	09 	. 
	dec c			;309f	0d 	. 
	rst 38h			;30a0	ff 	. 
	dec b			;30a1	05 	. 
	nop			;30a2	00 	. 
	inc bc			;30a3	03 	. 
	ld b,b			;30a4	40 	@ 
	ld h,b			;30a5	60 	` 
	ld b,b			;30a6	40 	@ 
	ld c,b			;30a7	48 	H 
	ccf			;30a8	3f 	? 
	add a,b			;30a9	80 	. 
	rst 38h			;30aa	ff 	. 
	dec b			;30ab	05 	. 
	nop			;30ac	00 	. 
	dec b			;30ad	05 	. 
	ld bc,0ff03h		;30ae	01 03 ff 	. . . 
	rst 38h			;30b1	ff 	. 
	add a,b			;30b2	80 	. 
	ld b,0ffh		;30b3	06 ff 	. . 
	jr nz,l30e7h		;30b5	20 30 	  0 
	jr c,l30b9h		;30b7	38 00 	8 . 
l30b9h:
	ld bc,0fdffh		;30b9	01 ff fd 	. . . 
	nop			;30bc	00 	. 
	ld bc,0c700h		;30bd	01 00 c7 	. . . 
	call 0ff99h		;30c0	cd 99 ff 	. . . 
	dec c			;30c3	0d 	. 
	jr l30d6h		;30c4	18 10 	. . 
	inc e			;30c6	1c 	. 
	daa			;30c7	27 	' 
	inc de			;30c8	13 	. 
	dec e			;30c9	1d 	. 
	add a,b			;30ca	80 	. 
	ret nz			;30cb	c0 	. 
	rst 38h			;30cc	ff 	. 
	dec c			;30cd	0d 	. 
	rst 38h			;30ce	ff 	. 
	ld bc,0c141h		;30cf	01 41 c1 	. A . 
	ld bc,0c003h		;30d2	01 03 c0 	. . . 
	nop			;30d5	00 	. 
l30d6h:
	inc bc			;30d6	03 	. 
	add a,b			;30d7	80 	. 
	ret nz			;30d8	c0 	. 
	rst 38h			;30d9	ff 	. 
l30dah:
	rst 38h			;30da	ff 	. 
	ret po			;30db	e0 	. 
	rra			;30dc	1f 	. 
	jr l30dfh		;30dd	18 00 	. . 
l30dfh:
	inc bc			;30df	03 	. 
	djnz l30dah		;30e0	10 f8 	. . 
	nop			;30e2	00 	. 
	ld bc,01fffh		;30e3	01 ff 1f 	. . . 
	ret nz			;30e6	c0 	. 
l30e7h:
	nop			;30e7	00 	. 
	inc bc			;30e8	03 	. 
	add a,b			;30e9	80 	. 
	ret nz			;30ea	c0 	. 
	nop			;30eb	00 	. 
	ld bc,07cffh		;30ec	01 ff 7c 	. . | 
	jr c,$+33		;30ef	38 1f 	8 . 
	jr $+1		;30f1	18 ff 	. . 
	djnz $+50		;30f3	10 30 	. 0 
	ret m			;30f5	f8 	. 
	rrca			;30f6	0f 	. 
	inc bc			;30f7	03 	. 
	nop			;30f8	00 	. 
	ld bc,0ffffh		;30f9	01 ff ff 	. . . 
	ld (bc),a			;30fc	02 	. 
	rst 38h			;30fd	ff 	. 
	inc bc			;30fe	03 	. 
l30ffh:
	rlca			;30ff	07 	. 
	nop			;3100	00 	. 
	ld bc,0feffh		;3101	01 ff fe 	. . . 
	nop			;3104	00 	. 
	inc b			;3105	04 	. 
	nop			;3106	00 	. 
	nop			;3107	00 	. 
	ld bc,0c1ffh		;3108	01 ff c1 	. . . 
	rst 38h			;310b	ff 	. 
	nop			;310c	00 	. 
	nop			;310d	00 	. 
	ld bc,0ffffh		;310e	01 ff ff 	. . . 
	ld (bc),a			;3111	02 	. 
	rst 38h			;3112	ff 	. 
	inc bc			;3113	03 	. 
	rlca			;3114	07 	. 
	call m,sub_00e0h		;3115	fc e0 00 	. . . 
	inc b			;3118	04 	. 
	nop			;3119	00 	. 
	rst 38h			;311a	ff 	. 
	rst 38h			;311b	ff 	. 
	inc bc			;311c	03 	. 
	ld bc,l0000h		;311d	01 00 00 	. . . 
	nop			;3120	00 	. 
	ld b,b			;3121	40 	@ 
	nop			;3122	00 	. 
	nop			;3123	00 	. 
	ld bc,l00fdh+2		;3124	01 ff 00 	. . . 
	inc bc			;3127	03 	. 
	add a,b			;3128	80 	. 
	ret nz			;3129	c0 	. 
	nop			;312a	00 	. 
	ld bc,0dfffh		;312b	01 ff df 	. . . 
	ret nz			;312e	c0 	. 
	nop			;312f	00 	. 
	ld bc,l00fdh+2		;3130	01 ff 00 	. . . 
	inc b			;3133	04 	. 
	nop			;3134	00 	. 
	rst 38h			;3135	ff 	. 
	rst 38h			;3136	ff 	. 
	ld bc,0c0ffh		;3137	01 ff c0 	. . . 
	nop			;313a	00 	. 
	ld bc,0bfffh		;313b	01 ff bf 	. . . 
	rst 38h			;313e	ff 	. 
	add a,c			;313f	81 	. 
	add a,b			;3140	80 	. 
	nop			;3141	00 	. 
	ld bc,l01ffh		;3142	01 ff 01 	. . . 
	nop			;3145	00 	. 
	ld bc,l0000h		;3146	01 00 00 	. . . 
	ld bc,0bfffh		;3149	01 ff bf 	. . . 
	nop			;314c	00 	. 
	inc bc			;314d	03 	. 
	add a,b			;314e	80 	. 
	rst 38h			;314f	ff 	. 
	rst 38h			;3150	ff 	. 
	nop			;3151	00 	. 
	inc b			;3152	04 	. 
	nop			;3153	00 	. 
	nop			;3154	00 	. 
	ld bc,0bfffh		;3155	01 ff bf 	. . . 
	add a,b			;3158	80 	. 
	nop			;3159	00 	. 
	ld bc,0ffffh		;315a	01 ff ff 	. . . 
	inc bc			;315d	03 	. 
	ld bc,0ff03h		;315e	01 03 ff 	. . . 
	rst 38h			;3161	ff 	. 
	rlca			;3162	07 	. 
	rst 38h			;3163	ff 	. 
	add a,b			;3164	80 	. 
	rst 38h			;3165	ff 	. 
	rst 38h			;3166	ff 	. 
	rst 38h			;3167	ff 	. 
	inc bc			;3168	03 	. 
	ld bc,l0100h		;3169	01 00 01 	. . . 
	rst 38h			;316c	ff 	. 
	rlca			;316d	07 	. 
	inc bc			;316e	03 	. 
	nop			;316f	00 	. 
	ld bc,07fffh		;3170	01 ff 7f 	. .  
	rst 38h			;3173	ff 	. 
	inc bc			;3174	03 	. 
	ld bc,l0100h		;3175	01 00 01 	. . . 
	rst 38h			;3178	ff 	. 
	nop			;3179	00 	. 
	nop			;317a	00 	. 
	nop			;317b	00 	. 
	ld b,b			;317c	40 	@ 
	nop			;317d	00 	. 
	rst 38h			;317e	ff 	. 
	rst 38h			;317f	ff 	. 
	cp a			;3180	bf 	. 
	add a,b			;3181	80 	. 
	ret nz			;3182	c0 	. 
	rst 38h			;3183	ff 	. 
	rst 38h			;3184	ff 	. 
	rst 18h			;3185	df 	. 
	nop			;3186	00 	. 
	inc bc			;3187	03 	. 
	rst 38h			;3188	ff 	. 
	rst 38h			;3189	ff 	. 
	nop			;318a	00 	. 
	nop			;318b	00 	. 
	ld bc,0f9ffh		;318c	01 ff f9 	. . . 
	cp 0dfh		;318f	fe df 	. . 
	ret nz			;3191	c0 	. 
	nop			;3192	00 	. 
	ld bc,0f9ffh		;3193	01 ff f9 	. . . 
	cp (hl)			;3196	be 	. 
	cp a			;3197	bf 	. 
	add a,c			;3198	81 	. 
	rst 38h			;3199	ff 	. 
	rst 38h			;319a	ff 	. 
	ld bc,0ffffh		;319b	01 ff ff 	. . . 
	rst 38h			;319e	ff 	. 
	cp a			;319f	bf 	. 
	add a,b			;31a0	80 	. 
	nop			;31a1	00 	. 
	inc b			;31a2	04 	. 
	rst 38h			;31a3	ff 	. 
	rst 38h			;31a4	ff 	. 
	nop			;31a5	00 	. 
	rst 38h			;31a6	ff 	. 
	rst 38h			;31a7	ff 	. 
	cp a			;31a8	bf 	. 
	rst 20h			;31a9	e7 	. 
	nop			;31aa	00 	. 
	ld bc,0fdffh		;31ab	01 ff fd 	. . . 
	rst 38h			;31ae	ff 	. 
	inc bc			;31af	03 	. 
	nop			;31b0	00 	. 
	ld bc,0e7ffh		;31b1	01 ff e7 	. . . 
	ei			;31b4	fb 	. 
	cp a			;31b5	bf 	. 
	add a,b			;31b6	80 	. 
	nop			;31b7	00 	. 
	ld bc,0f3ffh		;31b8	01 ff f3 	. . . 
	defb 0fdh,000h,001h	;illegal sequence		;31bb	fd 00 01 	. . . 
	rst 38h			;31be	ff 	. 
	inc bc			;31bf	03 	. 
	rst 38h			;31c0	ff 	. 
	rst 38h			;31c1	ff 	. 
	rlca			;31c2	07 	. 
	nop			;31c3	00 	. 
	ld bc,0f3ffh		;31c4	01 ff f3 	. . . 
	ld a,l			;31c7	7d 	} 
	ld a,a			;31c8	7f 	 
	inc bc			;31c9	03 	. 
	nop			;31ca	00 	. 
	ld bc,l00fdh+2		;31cb	01 ff 00 	. . . 
	nop			;31ce	00 	. 
	nop			;31cf	00 	. 
	ld b,b			;31d0	40 	@ 
	nop			;31d1	00 	. 
	ret nz			;31d2	c0 	. 
	add a,b			;31d3	80 	. 
	ret nz			;31d4	c0 	. 
	nop			;31d5	00 	. 
	inc bc			;31d6	03 	. 
	rst 38h			;31d7	ff 	. 
	ret nz			;31d8	c0 	. 
	ret po			;31d9	e0 	. 
	nop			;31da	00 	. 
	inc bc			;31db	03 	. 
	nop			;31dc	00 	. 
	nop			;31dd	00 	. 
	inc bc			;31de	03 	. 
	rst 38h			;31df	ff 	. 
	rst 38h			;31e0	ff 	. 
	nop			;31e1	00 	. 
	ret po			;31e2	e0 	. 
	rst 38h			;31e3	ff 	. 
	rst 38h			;31e4	ff 	. 
	add a,b			;31e5	80 	. 
	rst 38h			;31e6	ff 	. 
	ret nz			;31e7	c0 	. 
	cp 000h		;31e8	fe 00 	. . 
	ld bc,l00fdh+2		;31ea	01 ff 00 	. . . 
	ld bc,0fe00h		;31ed	01 00 fe 	. . . 
	nop			;31f0	00 	. 
	ld bc,080ffh		;31f1	01 ff 80 	. . . 
	rst 38h			;31f4	ff 	. 
	ret nz			;31f5	c0 	. 
	rst 38h			;31f6	ff 	. 
	rst 38h			;31f7	ff 	. 
	nop			;31f8	00 	. 
	inc bc			;31f9	03 	. 
	nop			;31fa	00 	. 
	nop			;31fb	00 	. 
	inc bc			;31fc	03 	. 
	rst 38h			;31fd	ff 	. 
	add a,b			;31fe	80 	. 
l31ffh:
	ret nz			;31ff	c0 	. 
	inc bc			;3200	03 	. 
	rst 38h			;3201	ff 	. 
	ld bc,0fffdh		;3202	01 fd ff 	. . . 
	rst 38h			;3205	ff 	. 
	rst 38h			;3206	ff 	. 
	inc bc			;3207	03 	. 
	ret nz			;3208	c0 	. 
	rst 38h			;3209	ff 	. 
	rst 38h			;320a	ff 	. 
	nop			;320b	00 	. 
	inc bc			;320c	03 	. 
	ld bc,l00fdh		;320d	01 fd 00 	. . . 
	ld bc,l03ffh		;3210	01 ff 03 	. . . 
	ei			;3213	fb 	. 
	nop			;3214	00 	. 
	ld bc,l01ffh		;3215	01 ff 01 	. . . 
	rst 38h			;3218	ff 	. 
	add a,c			;3219	81 	. 
	defb 0fdh,000h,001h	;illegal sequence		;321a	fd 00 01 	. . . 
	rst 38h			;321d	ff 	. 
	nop			;321e	00 	. 
	nop			;321f	00 	. 
	nop			;3220	00 	. 
	ld b,b			;3221	40 	@ 
	nop			;3222	00 	. 
	ret nz			;3223	c0 	. 
	nop			;3224	00 	. 
	inc bc			;3225	03 	. 
	add a,b			;3226	80 	. 
	ret nz			;3227	c0 	. 
	nop			;3228	00 	. 
	ld bc,0ffffh		;3229	01 ff ff 	. . . 
	ret nz			;322c	c0 	. 
	nop			;322d	00 	. 
	dec b			;322e	05 	. 
	nop			;322f	00 	. 
	nop			;3230	00 	. 
	ld bc,0ffffh		;3231	01 ff ff 	. . . 
	nop			;3234	00 	. 
	rst 38h			;3235	ff 	. 
	ret nz			;3236	c0 	. 
	nop			;3237	00 	. 
	ld bc,l00fdh+2		;3238	01 ff 00 	. . . 
	inc b			;323b	04 	. 
	add a,b			;323c	80 	. 
	nop			;323d	00 	. 
	ld bc,0ffffh		;323e	01 ff ff 	. . . 
	nop			;3241	00 	. 
	nop			;3242	00 	. 
	ld bc,l00fdh+2		;3243	01 ff 00 	. . . 
	inc b			;3246	04 	. 
	add a,b			;3247	80 	. 
	nop			;3248	00 	. 
	ld bc,l00fdh+2		;3249	01 ff 00 	. . . 
	dec b			;324c	05 	. 
	nop			;324d	00 	. 
	nop			;324e	00 	. 
	ld bc,0ffffh		;324f	01 ff ff 	. . . 
	add a,b			;3252	80 	. 
	inc bc			;3253	03 	. 
	nop			;3254	00 	. 
	inc bc			;3255	03 	. 
	ld bc,l0002h+1		;3256	01 03 00 	. . . 
	ld bc,0ffffh		;3259	01 ff ff 	. . . 
	inc bc			;325c	03 	. 
	rst 38h			;325d	ff 	. 
	add a,b			;325e	80 	. 
	nop			;325f	00 	. 
	ld bc,l00fdh+2		;3260	01 ff 00 	. . . 
	inc b			;3263	04 	. 
	ld bc,l0100h		;3264	01 00 01 	. . . 
	rst 38h			;3267	ff 	. 
	rst 38h			;3268	ff 	. 
	inc bc			;3269	03 	. 
	nop			;326a	00 	. 
	ld bc,l00fdh+2		;326b	01 ff 00 	. . . 
	inc b			;326e	04 	. 
	ld bc,l0100h		;326f	01 00 01 	. . . 
	rst 38h			;3272	ff 	. 
	nop			;3273	00 	. 
	nop			;3274	00 	. 
	jr nz,l3288h		;3275	20 11 	  . 
	dec de			;3277	1b 	. 
	ld c,01eh		;3278	0e 1e 	. . 
	ld a,06fh		;327a	3e 6f 	> o 
	ld b,a			;327c	47 	G 
	jr nz,l32bbh		;327d	20 3c 	  < 
	ccf			;327f	3f 	? 
	ld l,a			;3280	6f 	o 
	ld b,e			;3281	43 	C 
	rst 38h			;3282	ff 	. 
	ld b,c			;3283	41 	A 
	ld b,b			;3284	40 	@ 
	rst 0			;3285	c7 	. 
	rst 38h			;3286	ff 	. 
	add a,e			;3287	83 	. 
l3288h:
	rst 38h			;3288	ff 	. 
	add a,c			;3289	81 	. 
	add a,b			;328a	80 	. 
	ret nz			;328b	c0 	. 
	ld b,b			;328c	40 	@ 
	ld h,b			;328d	60 	` 
	jr nc,l32ach		;328e	30 1c 	0 . 
	ld b,003h		;3290	06 03 	. . 
	nop			;3292	00 	. 
	ld bc,l0100h		;3293	01 00 01 	. . . 
	ld (bc),a			;3296	02 	. 
	ld b,0ffh		;3297	06 ff 	. . 
	inc c			;3299	0c 	. 
	ld a,h			;329a	7c 	| 
	call m,0ffbeh		;329b	fc be ff 	. . . 
	sbc a,a			;329e	9f 	. 
	rrca			;329f	0f 	. 
	dec de			;32a0	1b 	. 
	ld sp,0ff60h		;32a1	31 60 ff 	1 ` . 
	ld b,b			;32a4	40 	@ 
	ret nz			;32a5	c0 	. 
	add a,b			;32a6	80 	. 
	adc a,a			;32a7	8f 	. 
	add a,a			;32a8	87 	. 
	add a,e			;32a9	83 	. 
	ret nz			;32aa	c0 	. 
	ld b,b			;32ab	40 	@ 
l32ach:
	ld h,c			;32ac	61 	a 
	inc sp			;32ad	33 	3 
	rra			;32ae	1f 	. 
	nop			;32af	00 	. 
	inc b			;32b0	04 	. 
	add a,b			;32b1	80 	. 
	ret nz			;32b2	c0 	. 
	ld b,b			;32b3	40 	@ 
	ld h,c			;32b4	61 	a 
	inc hl			;32b5	23 	# 
	inc c			;32b6	0c 	. 
	inc e			;32b7	1c 	. 
	ld a,b			;32b8	78 	x 
	ret z			;32b9	c8 	. 
	add a,h			;32ba	84 	. 
l32bbh:
	rst 38h			;32bb	ff 	. 
	add a,d			;32bc	82 	. 
	add a,c			;32bd	81 	. 
	rst 38h			;32be	ff 	. 
	jr nz,l32e2h		;32bf	20 21 	  ! 
	inc sp			;32c1	33 	3 
	ld a,a			;32c2	7f 	 
	cp 08fh		;32c3	fe 8f 	. . 
	add a,a			;32c5	87 	. 
	rst 38h			;32c6	ff 	. 
	add a,c			;32c7	81 	. 
	ret nz			;32c8	c0 	. 
	ld b,b			;32c9	40 	@ 
	jr nz,l3308h		;32ca	20 3c 	  < 
	ld e,037h		;32cc	1e 37 	. 7 
	jp nz,040ffh		;32ce	c2 ff 40 	. . @ 
	ld h,e			;32d1	63 	c 
l32d2h:
	ccf			;32d2	3f 	? 
	add hl,de			;32d3	19 	. 
	jr nc,l32f6h		;32d4	30 20 	0   
	ld a,h			;32d6	7c 	| 
	ld b,002h		;32d7	06 02 	. . 
	inc bc			;32d9	03 	. 
	rst 38h			;32da	ff 	. 
	ld bc,l0602h+1		;32db	01 03 06 	. . . 
	jr l3350h		;32de	18 70 	. p 
	ret nz			;32e0	c0 	. 
	rst 38h			;32e1	ff 	. 
l32e2h:
	add a,b			;32e2	80 	. 
	ret po			;32e3	e0 	. 
	ret m			;32e4	f8 	. 
	call m,sub_0006h		;32e5	fc 06 00 	. . . 
	inc bc			;32e8	03 	. 
	call m,0fff4h		;32e9	fc f4 ff 	. . . 
	inc b			;32ec	04 	. 
l32edh:
	inc c			;32ed	0c 	. 
	cp 00eh		;32ee	fe 0e 	. . 
	rlca			;32f0	07 	. 
	inc bc			;32f1	03 	. 
	rst 38h			;32f2	ff 	. 
	ld bc,l0602h+1		;32f3	01 03 06 	. . . 
l32f6h:
	inc b			;32f6	04 	. 
	adc a,h			;32f7	8c 	. 
	ret c			;32f8	d8 	. 
	ld (hl),b			;32f9	70 	p 
	rst 38h			;32fa	ff 	. 
	ld b,b			;32fb	40 	@ 
	ld a,b			;32fc	78 	x 
	ld c,h			;32fd	4c 	L 
	inc c			;32fe	0c 	. 
	jr c,l32edh		;32ff	38 ec 	8 . 
	ld b,002h		;3301	06 02 	. . 
	add a,e			;3303	83 	. 
	pop hl			;3304	e1 	. 
	pop af			;3305	f1 	. 
	add a,082h		;3306	c6 82 	. . 
l3308h:
	add a,e			;3308	83 	. 
	nop			;3309	00 	. 
	inc bc			;330a	03 	. 
	ld bc,l0602h+1		;330b	01 03 06 	. . . 
	ld (hl),c			;330e	71 	q 
	rst 38h			;330f	ff 	. 
	ld hl,0c141h		;3310	21 41 c1 	! A . 
	rst 38h			;3313	ff 	. 
	add a,c			;3314	81 	. 
	pop bc			;3315	c1 	. 
	rst 38h			;3316	ff 	. 
	nop			;3317	00 	. 
	rra			;3318	1f 	. 
	ret p			;3319	f0 	. 
	rra			;331a	1f 	. 
	ret po			;331b	e0 	. 
	nop			;331c	00 	. 
	ld b,000h		;331d	06 00 	. . 
	rrca			;331f	0f 	. 
	ret m			;3320	f8 	. 
	rrca			;3321	0f 	. 
	ret p			;3322	f0 	. 
	nop			;3323	00 	. 
	ex af,af'			;3324	08 	. 
	nop			;3325	00 	. 
	inc a			;3326	3c 	< 
	rst 38h			;3327	ff 	. 
	nop			;3328	00 	. 
	inc bc			;3329	03 	. 
	cp 003h		;332a	fe 03 	. . 
	call m,l0100h		;332c	fc 00 01 	. . . 
	nop			;332f	00 	. 
	rst 38h			;3330	ff 	. 
	ld bc,08303h		;3331	01 03 83 	. . . 
	ex (sp),hl			;3334	e3 	. 
	ld a,a			;3335	7f 	 
	rrca			;3336	0f 	. 
	rlca			;3337	07 	. 
	add a,e			;3338	83 	. 
	rst 38h			;3339	ff 	. 
	add a,b			;333a	80 	. 
	rst 38h			;333b	ff 	. 
	nop			;333c	00 	. 
	ld a,(hl)			;333d	7e 	~ 
	jp l0201h		;333e	c3 01 02 	. . . 
	rst 38h			;3341	ff 	. 
	nop			;3342	00 	. 
	inc bc			;3343	03 	. 
	ccf			;3344	3f 	? 
	ld sp,hl			;3345	f9 	. 
	ret po			;3346	e0 	. 
	jr nz,l334ah		;3347	20 01 	  . 
	inc bc			;3349	03 	. 
l334ah:
	inc c			;334a	0c 	. 
	jr nc,$-30		;334b	30 e0 	0 . 
	add a,b			;334d	80 	. 
	ret nz			;334e	c0 	. 
	ld h,e			;334f	63 	c 
l3350h:
	rst 38h			;3350	ff 	. 
	ret p			;3351	f0 	. 
	ld a,b			;3352	78 	x 
	inc a			;3353	3c 	< 
	inc e			;3354	1c 	. 
	ccf			;3355	3f 	? 
	ret z			;3356	c8 	. 
	rst 38h			;3357	ff 	. 
	ex af,af'			;3358	08 	. 
	inc c			;3359	0c 	. 
	rlca			;335a	07 	. 
	rrca			;335b	0f 	. 
	ld de,0fe38h		;335c	11 38 fe 	. 8 . 
	ld h,e			;335f	63 	c 
	nop			;3360	00 	. 
	ld bc,08000h		;3361	01 00 80 	. . . 
	ret nz			;3364	c0 	. 
	ld a,a			;3365	7f 	 
	jr nc,$+98		;3366	30 60 	0 ` 
	ld a,b			;3368	78 	x 
	adc a,a			;3369	8f 	. 
	ld b,c			;336a	41 	A 
	pop bc			;336b	c1 	. 
	add a,c			;336c	81 	. 
	pop bc			;336d	c1 	. 
	ld (hl),c			;336e	71 	q 
	ld sp,08e19h		;336f	31 19 8e 	1 . . 
	nop			;3372	00 	. 
	rlca			;3373	07 	. 
	nop			;3374	00 	. 
	add a,b			;3375	80 	. 
	nop			;3376	00 	. 
	ex af,af'			;3377	08 	. 
	nop			;3378	00 	. 
	nop			;3379	00 	. 
	inc bc			;337a	03 	. 
	add a,b			;337b	80 	. 
	nop			;337c	00 	. 
	inc bc			;337d	03 	. 
	ld b,b			;337e	40 	@ 
	ld h,b			;337f	60 	` 
	inc b			;3380	04 	. 
	nop			;3381	00 	. 
	dec b			;3382	05 	. 
	nop			;3383	00 	. 
	ld bc,l0803h		;3384	01 03 08 	. . . 
	nop			;3387	00 	. 
	inc b			;3388	04 	. 
	nop			;3389	00 	. 
	rst 38h			;338a	ff 	. 
	ld bc,l0500h		;338b	01 00 05 	. . . 
	nop			;338e	00 	. 
	ret po			;338f	e0 	. 
	ret nz			;3390	c0 	. 
	add a,b			;3391	80 	. 
	nop			;3392	00 	. 
	ld bc,l1000h		;3393	01 00 10 	. . . 
	nop			;3396	00 	. 
	inc bc			;3397	03 	. 
	nop			;3398	00 	. 
	djnz l33c3h		;3399	10 28 	. ( 
	rst 38h			;339b	ff 	. 
	ld (bc),a			;339c	02 	. 
	nop			;339d	00 	. 
	ld bc,l1000h		;339e	01 00 10 	. . . 
	jr l33adh		;33a1	18 0a 	. . 
	djnz $+6		;33a3	10 04 	. . 
	ex af,af'			;33a5	08 	. 
	ret nz			;33a6	c0 	. 
	ld c,b			;33a7	48 	H 
	jr nc,l33bah		;33a8	30 10 	0 . 
	add hl,de			;33aa	19 	. 
	ccf			;33ab	3f 	? 
	rst 38h			;33ac	ff 	. 
l33adh:
	ld e,00fh		;33ad	1e 0f 	. . 
	rlca			;33af	07 	. 
	ld a,h			;33b0	7c 	| 
	add a,(hl)			;33b1	86 	. 
	ld bc,l0500h		;33b2	01 00 05 	. . . 
	nop			;33b5	00 	. 
	rlca			;33b6	07 	. 
	rst 38h			;33b7	ff 	. 
	inc bc			;33b8	03 	. 
	rst 38h			;33b9	ff 	. 
l33bah:
	ld bc,sub_0300h		;33ba	01 00 03 	. . . 
	nop			;33bd	00 	. 
	add a,b			;33be	80 	. 
	ret nz			;33bf	c0 	. 
	pop hl			;33c0	e1 	. 
l33c1h:
	cp 0f0h		;33c1	fe f0 	. . 
l33c3h:
	ret po			;33c3	e0 	. 
	jr nz,l3402h		;33c4	20 3c 	  < 
	ld bc,0fe03h		;33c6	01 03 fe 	. . . 
	rst 38h			;33c9	ff 	. 
	inc e			;33ca	1c 	. 
	inc c			;33cb	0c 	. 
	inc b			;33cc	04 	. 
	inc e			;33cd	1c 	. 
	ret m			;33ce	f8 	. 
	nop			;33cf	00 	. 
	rlca			;33d0	07 	. 
	nop			;33d1	00 	. 
	ccf			;33d2	3f 	? 
	nop			;33d3	00 	. 
	ld bc,l0fffh		;33d4	01 ff 0f 	. . . 
	inc bc			;33d7	03 	. 
	nop			;33d8	00 	. 
	dec b			;33d9	05 	. 
	nop			;33da	00 	. 
	ret p			;33db	f0 	. 
	ret m			;33dc	f8 	. 
	call m,sub_04f4h		;33dd	fc f4 04 	. . . 
	ld b,00ch		;33e0	06 0c 	. . 
	defb 0fdh,0ffh,0ffh	;illegal sequence		;33e2	fd ff ff 	. . . 
	jp m,0cacbh		;33e5	fa cb ca 	. . . 
	rst 38h			;33e8	ff 	. 
	set 6,b		;33e9	cb f0 	. . 
	adc a,(hl)			;33eb	8e 	. 
	ld bc,l0100h		;33ec	01 00 01 	. . . 
	nop			;33ef	00 	. 
	ret p			;33f0	f0 	. 
	rra			;33f1	1f 	. 
	ret p			;33f2	f0 	. 
	rrca			;33f3	0f 	. 
	nop			;33f4	00 	. 
	inc bc			;33f5	03 	. 
	set 1,d		;33f6	cb ca 	. . 
	set 5,(hl)		;33f8	cb ee 	. . 
	or 0feh		;33fa	f6 fe 	. . 
	add a,b			;33fc	80 	. 
	ret nz			;33fd	c0 	. 
	pop af			;33fe	f1 	. 
	rra			;33ff	1f 	. 
	ret p			;3400	f0 	. 
l3401h:
	rst 28h			;3401	ef 	. 
l3402h:
	jr nz,$+62		;3402	20 3c 	  < 
	rrca			;3404	0f 	. 
	ld e,0f8h		;3405	1e f8 	. . 
	jr l3425h		;3407	18 1c 	. . 
	rst 8			;3409	cf 	. 
	ld a,(hl)			;340a	7e 	~ 
	jp l0ff8h		;340b	c3 f8 0f 	. . . 
	ld bc,l0100h		;340e	01 00 01 	. . . 
	nop			;3411	00 	. 
	rrca			;3412	0f 	. 
	ret m			;3413	f8 	. 
	rrca			;3414	0f 	. 
	jp p,l003fh		;3415	f2 3f 00 	. ? . 
	ld bc,01fffh		;3418	01 ff 1f 	. . . 
	inc bc			;341b	03 	. 
	cp 003h		;341c	fe 03 	. . 
	call m,l0100h		;341e	fc 00 01 	. . . 
	nop			;3421	00 	. 
	inc b			;3422	04 	. 
	ret m			;3423	f8 	. 
	nop			;3424	00 	. 
l3425h:
	ld bc,0f0ffh		;3425	01 ff f0 	. . . 
	rra			;3428	1f 	. 
	call po,sub_0c06h		;3429	e4 06 0c 	. . . 
	nop			;342c	00 	. 
	ld bc,0fc00h		;342d	01 00 fc 	. . . 
	ld a,a			;3430	7f 	 
	rrca			;3431	0f 	. 
	inc bc			;3432	03 	. 
	rst 38h			;3433	ff 	. 
	ld bc,l0100h		;3434	01 00 01 	. . . 
	nop			;3437	00 	. 
	daa			;3438	27 	' 
	ld b,e			;3439	43 	C 
	ld b,c			;343a	41 	A 
	rst 38h			;343b	ff 	. 
	ret nz			;343c	c0 	. 
	and b			;343d	a0 	. 
	rst 38h			;343e	ff 	. 
	jr nz,l3401h		;343f	20 c0 	  . 
	ret p			;3441	f0 	. 
	ld a,h			;3442	7c 	| 
	ld (bc),a			;3443	02 	. 
	rst 38h			;3444	ff 	. 
	nop			;3445	00 	. 
	ld bc,0ff02h		;3446	01 02 ff 	. . . 
	djnz l345eh		;3449	10 13 	. . 
	inc a			;344b	3c 	< 
	ret po			;344c	e0 	. 
	add a,b			;344d	80 	. 
	rst 38h			;344e	ff 	. 
	nop			;344f	00 	. 
	ret nz			;3450	c0 	. 
	call m,l0100h		;3451	fc 00 01 	. . . 
	rst 38h			;3454	ff 	. 
	ld (hl),c			;3455	71 	q 
	inc bc			;3456	03 	. 
	rst 38h			;3457	ff 	. 
	rlca			;3458	07 	. 
	rrca			;3459	0f 	. 
	ld e,071h		;345a	1e 71 	. q 
	ret nz			;345c	c0 	. 
	rst 38h			;345d	ff 	. 
l345eh:
	add a,b			;345e	80 	. 
	ret po			;345f	e0 	. 
	ret m			;3460	f8 	. 
	cp 018h		;3461	fe 18 	. . 
	rst 38h			;3463	ff 	. 
	ret p			;3464	f0 	. 
	djnz l3467h		;3465	10 00 	. . 
l3467h:
	ld bc,01c00h		;3467	01 00 1c 	. . . 
	ld a,01fh		;346a	3e 1f 	> . 
	nop			;346c	00 	. 
	ld bc,l07ffh		;346d	01 ff 07 	. . . 
	nop			;3470	00 	. 
	dec b			;3471	05 	. 
	nop			;3472	00 	. 
	add a,b			;3473	80 	. 
	ld b,00ch		;3474	06 0c 	. . 
	inc e			;3476	1c 	. 
	rst 38h			;3477	ff 	. 
	ld a,h			;3478	7c 	| 
	ld a,0ffh		;3479	3e ff 	> . 
	rra			;347b	1f 	. 
	nop			;347c	00 	. 
	ex af,af'			;347d	08 	. 
	nop			;347e	00 	. 
	rrca			;347f	0f 	. 
	rlca			;3480	07 	. 
	inc bc			;3481	03 	. 
	rst 38h			;3482	ff 	. 
	nop			;3483	00 	. 
	ld bc,l3f03h		;3484	01 03 3f 	. . ? 
	nop			;3487	00 	. 
	inc b			;3488	04 	. 
	add a,b			;3489	80 	. 
	rst 0			;348a	c7 	. 
	ld sp,hl			;348b	f9 	. 
	ret p			;348c	f0 	. 
	ret po			;348d	e0 	. 
	rra			;348e	1f 	. 
	rlca			;348f	07 	. 
	rst 38h			;3490	ff 	. 
	inc bc			;3491	03 	. 
	rst 38h			;3492	ff 	. 
	ld bc,l00fdh+2		;3493	01 ff 00 	. . . 
	add a,b			;3496	80 	. 
	rst 38h			;3497	ff 	. 
	ret nz			;3498	c0 	. 
	ld (hl),b			;3499	70 	p 
	ld a,b			;349a	78 	x 
	ld h,b			;349b	60 	` 
	rst 38h			;349c	ff 	. 
	ld b,b			;349d	40 	@ 
	nop			;349e	00 	. 
	inc bc			;349f	03 	. 
	nop			;34a0	00 	. 
	ld bc,0c482h		;34a1	01 82 c4 	. . . 
	ret pe			;34a4	e8 	. 
	ld (hl),b			;34a5	70 	p 
	ld b,b			;34a6	40 	@ 
	rst 38h			;34a7	ff 	. 
	add a,b			;34a8	80 	. 
	nop			;34a9	00 	. 
	dec b			;34aa	05 	. 
	nop			;34ab	00 	. 
	jp l0103h		;34ac	c3 03 01 	. . . 
	nop			;34af	00 	. 
	dec b			;34b0	05 	. 
	nop			;34b1	00 	. 
	nop			;34b2	00 	. 
	inc b			;34b3	04 	. 
	ret nz			;34b4	c0 	. 
l34b5h:
	rst 38h			;34b5	ff 	. 
	ret po			;34b6	e0 	. 
	rst 38h			;34b7	ff 	. 
	ld h,b			;34b8	60 	` 
	nop			;34b9	00 	. 
	ld b,000h		;34ba	06 00 	. . 
	ld bc,02003h		;34bc	01 03 20 	. .   
	rst 38h			;34bf	ff 	. 
	djnz l34d5h		;34c0	10 13 	. . 
	inc e			;34c2	1c 	. 
	ld b,b			;34c3	40 	@ 
	add a,b			;34c4	80 	. 
	nop			;34c5	00 	. 
	ld bc,07000h		;34c6	01 00 70 	. . p 
	jr c,l350ah		;34c9	38 3f 	8 ? 
	ld e,00fh		;34cb	1e 0f 	. . 
	rlca			;34cd	07 	. 
	inc bc			;34ce	03 	. 
	nop			;34cf	00 	. 
	ld bc,l0700h		;34d0	01 00 07 	. . . 
	jr l34b5h		;34d3	18 e0 	. . 
l34d5h:
	rst 38h			;34d5	ff 	. 
	nop			;34d6	00 	. 
	add a,b			;34d7	80 	. 
	ret po			;34d8	e0 	. 
	ret p			;34d9	f0 	. 
	nop			;34da	00 	. 
	inc bc			;34db	03 	. 
	nop			;34dc	00 	. 
	cp 03fh		;34dd	fe 3f 	. ? 
	rrca			;34df	0f 	. 
	rlca			;34e0	07 	. 
	inc bc			;34e1	03 	. 
	ld (hl),b			;34e2	70 	p 
	rst 38h			;34e3	ff 	. 
	jr nz,l3526h		;34e4	20 40 	  @ 
	ret nz			;34e6	c0 	. 
	rst 38h			;34e7	ff 	. 
	add a,b			;34e8	80 	. 
	ret nz			;34e9	c0 	. 
	inc c			;34ea	0c 	. 
	jr l3565h		;34eb	18 78 	. x 
	ex af,af'			;34ed	08 	. 
	inc b			;34ee	04 	. 
	rst 38h			;34ef	ff 	. 
	ld (bc),a			;34f0	02 	. 
	ld bc,l0800h		;34f1	01 00 08 	. . . 
	nop			;34f4	00 	. 
	rst 38h			;34f5	ff 	. 
	ld bc,l0500h		;34f6	01 00 05 	. . . 
	nop			;34f9	00 	. 
	ld bc,l00fdh+2		;34fa	01 ff 00 	. . . 
	add a,b			;34fd	80 	. 
	sbc a,0e1h		;34fe	de e1 	. . 
	nop			;3500	00 	. 
	inc bc			;3501	03 	. 
l3502h:
	ret nz			;3502	c0 	. 
	ld bc,l0700h		;3503	01 00 07 	. . . 
	nop			;3506	00 	. 
	rst 38h			;3507	ff 	. 
	ret po			;3508	e0 	. 
	ret p			;3509	f0 	. 
l350ah:
	ld a,a			;350a	7f 	 
	ld a,b			;350b	78 	x 
	ld h,b			;350c	60 	` 
	jr nz,l354fh		;350d	20 40 	  @ 
	nop			;350f	00 	. 
	inc b			;3510	04 	. 
	nop			;3511	00 	. 
	add a,e			;3512	83 	. 
	ld e,h			;3513	5c 	\ 
	jr c,l352eh		;3514	38 18 	8 . 
	rst 38h			;3516	ff 	. 
	ld b,b			;3517	40 	@ 
	ret nz			;3518	c0 	. 
	ret po			;3519	e0 	. 
	jr nz,l351ch		;351a	20 00 	  . 
l351ch:
	inc bc			;351c	03 	. 
	djnz l3502h		;351d	10 e3 	. . 
	jp po,07cf6h		;351f	e2 f6 7c 	. . | 
	rst 38h			;3522	ff 	. 
	ld h,b			;3523	60 	` 
	jr nz,l3586h		;3524	20 60 	  ` 
l3526h:
	jr l3528h		;3526	18 00 	. . 
l3528h:
	inc bc			;3528	03 	. 
	ex af,af'			;3529	08 	. 
	jr $+18		;352a	18 10 	. . 
	cp 063h		;352c	fe 63 	. c 
l352eh:
	rst 38h			;352e	ff 	. 
	ld b,b			;352f	40 	@ 
	ret nz			;3530	c0 	. 
	ret po			;3531	e0 	. 
	jr nc,l3534h		;3532	30 00 	0 . 
l3534h:
	inc bc			;3534	03 	. 
	djnz $+67		;3535	10 41 	. A 
	pop bc			;3537	c1 	. 
	add a,c			;3538	81 	. 
	pop bc			;3539	c1 	. 
	ld (hl),c			;353a	71 	q 
	ld sp,0ce1bh		;353b	31 1b ce 	1 . . 
	call m,0ff06h		;353e	fc 06 ff 	. . . 
	ld (bc),a			;3541	02 	. 
	rrca			;3542	0f 	. 
	ret m			;3543	f8 	. 
	rrca			;3544	0f 	. 
	jp p,l0143h		;3545	f2 43 01 	. C . 
	nop			;3548	00 	. 
	ld bc,08000h		;3549	01 00 80 	. . . 
	and b			;354c	a0 	. 
	ret nz			;354d	c0 	. 
	ld (hl),b			;354e	70 	p 
l354fh:
	rra			;354f	1f 	. 
	inc b			;3550	04 	. 
	call p,l0100h		;3551	f4 00 01 	. . . 
	rst 38h			;3554	ff 	. 
	pop af			;3555	f1 	. 
	rra			;3556	1f 	. 
	jp po,sub_0c06h		;3557	e2 06 0c 	. . . 
	dec c			;355a	0d 	. 
	dec d			;355b	15 	. 
	ld bc,l00fdh+2		;355c	01 ff 00 	. . . 
	ld bc,07cc6h		;355f	01 c6 7c 	. . | 
	call m,0feffh		;3562	fc ff fe 	. . . 
l3565h:
	jp m,0cacbh		;3565	fa cb ca 	. . . 
	set 1,d		;3568	cb ca 	. . 
	nop			;356a	00 	. 
	inc b			;356b	04 	. 
	nop			;356c	00 	. 
	ret p			;356d	f0 	. 
	rra			;356e	1f 	. 
	ret p			;356f	f0 	. 
	rrca			;3570	0f 	. 
	rst 38h			;3571	ff 	. 
	jp z,0cacbh		;3572	ca cb ca 	. . . 
	set 5,(hl)		;3575	cb ee 	. . 
	or 0feh		;3577	f6 fe 	. . 
	rst 38h			;3579	ff 	. 
	nop			;357a	00 	. 
	ret p			;357b	f0 	. 
	rra			;357c	1f 	. 
	ret p			;357d	f0 	. 
	rrca			;357e	0f 	. 
	nop			;357f	00 	. 
	rlca			;3580	07 	. 
	nop			;3581	00 	. 
	jp 0c37eh		;3582	c3 7e c3 	. ~ . 
	nop			;3585	00 	. 
l3586h:
	nop			;3586	00 	. 
	ccf			;3587	3f 	? 
	rst 38h			;3588	ff 	. 
	rra			;3589	1f 	. 
	rrca			;358a	0f 	. 
	rra			;358b	1f 	. 
	ccf			;358c	3f 	? 
	ld a,a			;358d	7f 	 
	ld e,a			;358e	5f 	_ 
	cpl			;358f	2f 	/ 
	rst 38h			;3590	ff 	. 
	ccf			;3591	3f 	? 
	rst 38h			;3592	ff 	. 
	ld a,a			;3593	7f 	 
	rst 38h			;3594	ff 	. 
	ld e,a			;3595	5f 	_ 
	ld c,a			;3596	4f 	O 
	rst 18h			;3597	df 	. 
	nop			;3598	00 	. 
	dec b			;3599	05 	. 
	cp a			;359a	bf 	. 
	rst 18h			;359b	df 	. 
	ld b,a			;359c	47 	G 
	ld h,a			;359d	67 	g 
	ld sp,0061ch		;359e	31 1c 06 	1 . . 
	inc bc			;35a1	03 	. 
	nop			;35a2	00 	. 
	ld bc,l0100h		;35a3	01 00 01 	. . . 
	ld (bc),a			;35a6	02 	. 
	ld b,0ffh		;35a7	06 ff 	. . 
	inc c			;35a9	0c 	. 
	ld a,h			;35aa	7c 	| 
	call m,0fffeh		;35ab	fc fe ff 	. . . 
	rst 38h			;35ae	ff 	. 
	rrca			;35af	0f 	. 
	rra			;35b0	1f 	. 
	ccf			;35b1	3f 	? 
	nop			;35b2	00 	. 
	inc bc			;35b3	03 	. 
	ld a,a			;35b4	7f 	 
	nop			;35b5	00 	. 
	ld b,0ffh		;35b6	06 ff 	. . 
	rst 38h			;35b8	ff 	. 
	ld a,a			;35b9	7f 	 
	ccf			;35ba	3f 	? 
	rra			;35bb	1f 	. 
	rst 38h			;35bc	ff 	. 
	rst 38h			;35bd	ff 	. 
	rst 38h			;35be	ff 	. 
	cp a			;35bf	bf 	. 
	sbc a,048h		;35c0	de 48 	. H 
	ld h,c			;35c2	61 	a 
	inc hl			;35c3	23 	# 
	inc c			;35c4	0c 	. 
	inc e			;35c5	1c 	. 
	ld a,b			;35c6	78 	x 
	ret m			;35c7	f8 	. 
	defb 0fdh,000h,003h	;illegal sequence		;35c8	fd 00 03 	. . . 
	rst 38h			;35cb	ff 	. 
	rst 38h			;35cc	ff 	. 
	daa			;35cd	27 	' 
	inc hl			;35ce	23 	# 
	inc sp			;35cf	33 	3 
	ld a,a			;35d0	7f 	 
	cp 000h		;35d1	fe 00 	. . 
	dec b			;35d3	05 	. 
	rst 38h			;35d4	ff 	. 
	ld a,a			;35d5	7f 	 
	rst 38h			;35d6	ff 	. 
	ccf			;35d7	3f 	? 
	rra			;35d8	1f 	. 
	ccf			;35d9	3f 	? 
	cp 0ffh		;35da	fe ff 	. . 
	ld a,(hl)			;35dc	7e 	~ 
	ld a,a			;35dd	7f 	 
	ccf			;35de	3f 	? 
	rra			;35df	1f 	. 
	rst 38h			;35e0	ff 	. 
	ccf			;35e1	3f 	? 
	call m,0feffh		;35e2	fc ff fe 	. . . 
	nop			;35e5	00 	. 
	inc b			;35e6	04 	. 
	rst 38h			;35e7	ff 	. 
	cp 0f8h		;35e8	fe f8 	. . 
	ret p			;35ea	f0 	. 
	ret nz			;35eb	c0 	. 
	rst 38h			;35ec	ff 	. 
	add a,b			;35ed	80 	. 
	ret po			;35ee	e0 	. 
	ret m			;35ef	f8 	. 
	call m,l00fdh+1		;35f0	fc fe 00 	. . . 
	rlca			;35f3	07 	. 
	call m,0feffh		;35f4	fc ff fe 	. . . 
	nop			;35f7	00 	. 
	inc b			;35f8	04 	. 
	rst 38h			;35f9	ff 	. 
	ld a,a			;35fa	7f 	 
	ld e,00ch		;35fb	1e 0c 	. . 
	adc a,h			;35fd	8c 	. 
	ret c			;35fe	d8 	. 
	ret p			;35ff	f0 	. 
	rst 38h			;3600	ff 	. 
	ret nz			;3601	c0 	. 
	ret m			;3602	f8 	. 
	rst 38h			;3603	ff 	. 
	call m,0ecf8h		;3604	fc f8 ec 	. . . 
	ld e,03eh		;3607	1e 3e 	. > 
	nop			;3609	00 	. 
	inc bc			;360a	03 	. 
	rst 38h			;360b	ff 	. 
	rst 38h			;360c	ff 	. 
	cp 000h		;360d	fe 00 	. . 
	dec b			;360f	05 	. 
	rst 38h			;3610	ff 	. 
	cp 000h		;3611	fe 00 	. . 
	inc bc			;3613	03 	. 
	rst 38h			;3614	ff 	. 
	rst 38h			;3615	ff 	. 
	defb 0fdh,0bdh	;cp iyl		;3616	fd bd 	. . 
	sbc a,c			;3618	99 	. 
	pop bc			;3619	c1 	. 
	nop			;361a	00 	. 
	inc bc			;361b	03 	. 
	nop			;361c	00 	. 
	rrca			;361d	0f 	. 
	nop			;361e	00 	. 
	ld bc,0e0ffh		;361f	01 ff e0 	. . . 
	nop			;3622	00 	. 
	rlca			;3623	07 	. 
	nop			;3624	00 	. 
	rlca			;3625	07 	. 
	nop			;3626	00 	. 
	ld bc,0f0ffh		;3627	01 ff f0 	. . . 
	nop			;362a	00 	. 
	ex af,af'			;362b	08 	. 
	nop			;362c	00 	. 
	inc a			;362d	3c 	< 
	nop			;362e	00 	. 
	inc bc			;362f	03 	. 
	nop			;3630	00 	. 
	ld bc,l0100h		;3631	01 00 01 	. . . 
	rst 38h			;3634	ff 	. 
	call m,l0100h		;3635	fc 00 01 	. . . 
	nop			;3638	00 	. 
	nop			;3639	00 	. 
	ld bc,07fffh		;363a	01 ff 7f 	. .  
	rra			;363d	1f 	. 
	add a,a			;363e	87 	. 
	ex (sp),hl			;363f	e3 	. 
	nop			;3640	00 	. 
	inc bc			;3641	03 	. 
	rst 38h			;3642	ff 	. 
	sbc a,a			;3643	9f 	. 
	rst 38h			;3644	ff 	. 
	cp a			;3645	bf 	. 
	rra			;3646	1f 	. 
	rrca			;3647	0f 	. 
	ld a,a			;3648	7f 	 
	nop			;3649	00 	. 
	ld bc,07fffh		;364a	01 ff 7f 	. .  
	rst 38h			;364d	ff 	. 
	cp 07eh		;364e	fe 7e 	. ~ 
	rst 38h			;3650	ff 	. 
	ccf			;3651	3f 	? 
	nop			;3652	00 	. 
	inc bc			;3653	03 	. 
	rst 38h			;3654	ff 	. 
	nop			;3655	00 	. 
	inc bc			;3656	03 	. 
	ld a,a			;3657	7f 	 
	ccf			;3658	3f 	? 
	rst 28h			;3659	ef 	. 
	add a,a			;365a	87 	. 
	rst 0			;365b	c7 	. 
	rst 20h			;365c	e7 	. 
	rst 30h			;365d	f7 	. 
	di			;365e	f3 	. 
	ret m			;365f	f8 	. 
	rst 38h			;3660	ff 	. 
	call m,l0100h		;3661	fc 00 01 	. . . 
	rst 38h			;3664	ff 	. 
	nop			;3665	00 	. 
	inc bc			;3666	03 	. 
	ret m			;3667	f8 	. 
	call m,l0100h		;3668	fc 00 01 	. . . 
	rst 38h			;366b	ff 	. 
	ld a,a			;366c	7f 	 
	nop			;366d	00 	. 
	inc bc			;366e	03 	. 
	rst 38h			;366f	ff 	. 
	ld a,a			;3670	7f 	 
	nop			;3671	00 	. 
	inc bc			;3672	03 	. 
	call m,0ffffh		;3673	fc ff ff 	. . . 
	ex (sp),hl			;3676	e3 	. 
	ld sp,hl			;3677	f9 	. 
	nop			;3678	00 	. 
	ld bc,07fffh		;3679	01 ff 7f 	. .  
	rst 38h			;367c	ff 	. 
	rst 38h			;367d	ff 	. 
	rst 38h			;367e	ff 	. 
	defb 0fdh,0f1h,0f9h	;illegal sequence		;367f	fd f1 f9 	. . . 
	nop			;3682	00 	. 
	ld bc,l03ffh		;3683	01 ff 03 	. . . 
	rrca			;3686	0f 	. 
	rlca			;3687	07 	. 
	nop			;3688	00 	. 
	inc b			;3689	04 	. 
	rrca			;368a	0f 	. 
	adc a,a			;368b	8f 	. 
	add a,b			;368c	80 	. 
	ret po			;368d	e0 	. 
	rst 38h			;368e	ff 	. 
	ret p			;368f	f0 	. 
	rst 38h			;3690	ff 	. 
	ret m			;3691	f8 	. 
	call m,08ffeh		;3692	fc fe 8f 	. . . 
	rst 38h			;3695	ff 	. 
	add a,a			;3696	87 	. 
	rst 38h			;3697	ff 	. 
	jp 020c0h		;3698	c3 c0 20 	. .   
	jr l369dh		;369b	18 00 	. . 
l369dh:
	inc bc			;369d	03 	. 
	cp 0fch		;369e	fe fc 	. . 
	ret m			;36a0	f8 	. 
	ld bc,l0602h		;36a1	01 02 06 	. . . 
	nop			;36a4	00 	. 
	inc bc			;36a5	03 	. 
	nop			;36a6	00 	. 
	rst 38h			;36a7	ff 	. 
	ld bc,l03ffh		;36a8	01 ff 03 	. . . 
	rlca			;36ab	07 	. 
	rst 38h			;36ac	ff 	. 
	nop			;36ad	00 	. 
	ret nz			;36ae	c0 	. 
	ret po			;36af	e0 	. 
	rst 38h			;36b0	ff 	. 
	ret p			;36b1	f0 	. 
	rst 38h			;36b2	ff 	. 
	ret m			;36b3	f8 	. 
	dec bc			;36b4	0b 	. 
	ld bc,l3021h		;36b5	01 21 30 	. ! 0 
	jr l36e8h		;36b8	18 2e 	. . 
	add hl,bc			;36ba	09 	. 
	ld (de),a			;36bb	12 	. 
	nop			;36bc	00 	. 
	inc bc			;36bd	03 	. 
	call m,0f0fah		;36be	fc fa f0 	. . . 
	ld l,h			;36c1	6c 	l 
	jp z,l00b4h		;36c2	ca b4 00 	. . . 
	inc b			;36c5	04 	. 
	rst 38h			;36c6	ff 	. 
	rst 18h			;36c7	df 	. 
	sbc a,a			;36c8	9f 	. 
	rst 38h			;36c9	ff 	. 
	ccf			;36ca	3f 	? 
	call m,l00fdh+1		;36cb	fc fe 00 	. . . 
	ld b,0ffh		;36ce	06 ff 	. . 
	rst 38h			;36d0	ff 	. 
	ccf			;36d1	3f 	? 
	nop			;36d2	00 	. 
	inc bc			;36d3	03 	. 
	ld a,a			;36d4	7f 	 
	nop			;36d5	00 	. 
	dec bc			;36d6	0b 	. 
	rst 38h			;36d7	ff 	. 
	ld a,a			;36d8	7f 	 
	ccf			;36d9	3f 	? 
	nop			;36da	00 	. 
	dec c			;36db	0d 	. 
	rst 38h			;36dc	ff 	. 
	call m,l0800h		;36dd	fc 00 08 	. . . 
	rst 38h			;36e0	ff 	. 
	ret m			;36e1	f8 	. 
	ret p			;36e2	f0 	. 
	ret m			;36e3	f8 	. 
	rst 38h			;36e4	ff 	. 
	call m,0fffdh		;36e5	fc fd ff 	. . . 
l36e8h:
	rst 38h			;36e8	ff 	. 
	rst 20h			;36e9	e7 	. 
	in a,(0efh)		;36ea	db ef 	. . 
	nop			;36ec	00 	. 
	ld bc,0f6ffh		;36ed	01 ff f6 	. . . 
	nop			;36f0	00 	. 
	inc bc			;36f1	03 	. 
	rst 30h			;36f2	f7 	. 
	nop			;36f3	00 	. 
	inc b			;36f4	04 	. 
	rst 38h			;36f5	ff 	. 
	rrca			;36f6	0f 	. 
	ret po			;36f7	e0 	. 
	rst 38h			;36f8	ff 	. 
	rst 38h			;36f9	ff 	. 
	rst 38h			;36fa	ff 	. 
	rst 30h			;36fb	f7 	. 
	or 000h		;36fc	f6 00 	. . 
	inc bc			;36fe	03 	. 
l36ffh:
	rst 30h			;36ff	f7 	. 
	nop			;3700	00 	. 
	inc b			;3701	04 	. 
	rst 38h			;3702	ff 	. 
	rrca			;3703	0f 	. 
	ret po			;3704	e0 	. 
	nop			;3705	00 	. 
	add hl,bc			;3706	09 	. 
	rst 38h			;3707	ff 	. 
	inc a			;3708	3c 	< 
	add a,c			;3709	81 	. 
	nop			;370a	00 	. 
	dec b			;370b	05 	. 
	rst 38h			;370c	ff 	. 
	ret p			;370d	f0 	. 
	rlca			;370e	07 	. 
	nop			;370f	00 	. 
	ld bc,0feffh		;3710	01 ff fe 	. . . 
	nop			;3713	00 	. 
	inc bc			;3714	03 	. 
	rst 38h			;3715	ff 	. 
	call m,sub_0001h		;3716	fc 01 00 	. . . 
	inc bc			;3719	03 	. 
	rst 38h			;371a	ff 	. 
	call m,0e0f8h		;371b	fc f8 e0 	. . . 
	rrca			;371e	0f 	. 
	nop			;371f	00 	. 
	ld bc,0fdffh		;3720	01 ff fd 	. . . 
	nop			;3723	00 	. 
	inc d			;3724	14 	. 
	rst 38h			;3725	ff 	. 
	rst 38h			;3726	ff 	. 
	cp 000h		;3727	fe 00 	. . 
	inc bc			;3729	03 	. 
	rst 38h			;372a	ff 	. 
	cp 000h		;372b	fe 00 	. . 
	ld bc,0f7ffh		;372d	01 ff f7 	. . . 
	di			;3730	f3 	. 
	ld a,a			;3731	7f 	 
	nop			;3732	00 	. 
	ld bc,08fffh		;3733	01 ff 8f 	. . . 
	rlca			;3736	07 	. 
	rrca			;3737	0f 	. 
	nop			;3738	00 	. 
	inc de			;3739	13 	. 
	rst 38h			;373a	ff 	. 
	rst 30h			;373b	f7 	. 
	di			;373c	f3 	. 
	call m,l00fdh+1		;373d	fc fe 00 	. . . 
	rlca			;3740	07 	. 
	rst 38h			;3741	ff 	. 
	ld a,a			;3742	7f 	 
	sbc a,a			;3743	9f 	. 
	cp 0fch		;3744	fe fc 	. . 
	inc e			;3746	1c 	. 
	ld a,h			;3747	7c 	| 
	call m,0fffeh		;3748	fc fe ff 	. . . 
	rst 38h			;374b	ff 	. 
	rrca			;374c	0f 	. 
	ccf			;374d	3f 	? 
	ld a,a			;374e	7f 	 
	nop			;374f	00 	. 
	rrca			;3750	0f 	. 
	rst 38h			;3751	ff 	. 
	sbc a,a			;3752	9f 	. 
	add a,a			;3753	87 	. 
	rst 0			;3754	c7 	. 
	nop			;3755	00 	. 
	dec bc			;3756	0b 	. 
	rst 38h			;3757	ff 	. 
	sbc a,a			;3758	9f 	. 
	rst 0			;3759	c7 	. 
	ret nz			;375a	c0 	. 
	ret p			;375b	f0 	. 
	nop			;375c	00 	. 
	ex af,af'			;375d	08 	. 
	rst 38h			;375e	ff 	. 
	cp a			;375f	bf 	. 
	rst 0			;3760	c7 	. 
	rst 28h			;3761	ef 	. 
	rst 30h			;3762	f7 	. 
	nop			;3763	00 	. 
	inc e			;3764	1c 	. 
	rst 38h			;3765	ff 	. 
	cp 0f8h		;3766	fe f8 	. . 
	pop bc			;3768	c1 	. 
	inc bc			;3769	03 	. 
	nop			;376a	00 	. 
	inc bc			;376b	03 	. 
	rst 38h			;376c	ff 	. 
	sbc a,a			;376d	9f 	. 
	rra			;376e	1f 	. 
	ld c,a			;376f	4f 	O 
	sbc a,a			;3770	9f 	. 
	ccf			;3771	3f 	? 
	rst 30h			;3772	f7 	. 
	ei			;3773	fb 	. 
	nop			;3774	00 	. 
	ld bc,0feffh		;3775	01 ff fe 	. . . 
	nop			;3778	00 	. 
	ld b,0ffh		;3779	06 ff 	. . 
	rst 28h			;377b	ef 	. 
	rra			;377c	1f 	. 
	ccf			;377d	3f 	? 
	nop			;377e	00 	. 
	djnz $+1		;377f	10 ff 	. . 
	cp a			;3781	bf 	. 
	sbc a,a			;3782	9f 	. 
	ret nz			;3783	c0 	. 
	inc c			;3784	0c 	. 
	jr $+122		;3785	18 78 	. x 
	ret m			;3787	f8 	. 
	defb 0fdh,000h,003h	;illegal sequence		;3788	fd 00 03 	. . . 
	rst 38h			;378b	ff 	. 
	ccf			;378c	3f 	? 
	ld a,a			;378d	7f 	 
	nop			;378e	00 	. 
	ld c,0ffh		;378f	0e ff 	. . 
	ld a,a			;3791	7f 	 
	ccf			;3792	3f 	? 
	sbc a,a			;3793	9f 	. 
	sbc a,000h		;3794	de 00 	. . 
	inc c			;3796	0c 	. 
	rst 38h			;3797	ff 	. 
	rst 38h			;3798	ff 	. 
	ret po			;3799	e0 	. 
	ret p			;379a	f0 	. 
	nop			;379b	00 	. 
	ex af,af'			;379c	08 	. 
	rst 38h			;379d	ff 	. 
	ccf			;379e	3f 	? 
	adc a,a			;379f	8f 	. 
	rst 18h			;37a0	df 	. 
	rst 38h			;37a1	ff 	. 
	rst 38h			;37a2	ff 	. 
	rst 38h			;37a3	ff 	. 
	rst 18h			;37a4	df 	. 
	rst 8			;37a5	cf 	. 
	rst 28h			;37a6	ef 	. 
	rst 20h			;37a7	e7 	. 
	rst 30h			;37a8	f7 	. 
	rst 38h			;37a9	ff 	. 
	di			;37aa	f3 	. 
	ex (sp),hl			;37ab	e3 	. 
	jp po,0fcf6h		;37ac	e2 f6 fc 	. . . 
	nop			;37af	00 	. 
	inc b			;37b0	04 	. 
	ret po			;37b1	e0 	. 
	ret m			;37b2	f8 	. 
	rst 38h			;37b3	ff 	. 
	ld a,b			;37b4	78 	x 
	rst 38h			;37b5	ff 	. 
	ret m			;37b6	f8 	. 
	ret p			;37b7	f0 	. 
	cp 07fh		;37b8	fe 7f 	.  
	nop			;37ba	00 	. 
	inc bc			;37bb	03 	. 
	ret nz			;37bc	c0 	. 
	ret po			;37bd	e0 	. 
	nop			;37be	00 	. 
	inc b			;37bf	04 	. 
	ret p			;37c0	f0 	. 
	ld a,a			;37c1	7f 	 
	rst 38h			;37c2	ff 	. 
	rst 38h			;37c3	ff 	. 
	rst 38h			;37c4	ff 	. 
	defb 0fdh,0f1h,0fbh	;illegal sequence		;37c5	fd f1 fb 	. . . 
	cp 0fch		;37c8	fe fc 	. . 
	nop			;37ca	00 	. 
	inc bc			;37cb	03 	. 
	cp 0f0h		;37cc	fe f0 	. . 
	rlca			;37ce	07 	. 
	nop			;37cf	00 	. 
	ld bc,0feffh		;37d0	01 ff fe 	. . . 
	xor h			;37d3	ac 	. 
	jp m,l00dfh		;37d4	fa df 00 	. . . 
	ld bc,0deffh		;37d7	01 ff de 	. . . 
	nop			;37da	00 	. 
	ld bc,07fffh		;37db	01 ff 7f 	. .  
	rra			;37de	1f 	. 
	rst 38h			;37df	ff 	. 
	call m,sub_0fe1h		;37e0	fc e1 0f 	. . . 
	nop			;37e3	00 	. 
	ld bc,0ffffh		;37e4	01 ff ff 	. . . 
	cp 0fch		;37e7	fe fc 	. . 
	ret p			;37e9	f0 	. 
	ld l,d			;37ea	6a 	j 
	sbc a,0edh		;37eb	de ed 	. . 
	rst 38h			;37ed	ff 	. 
	rst 38h			;37ee	ff 	. 
	cp 07ch		;37ef	fe 7c 	. | 
	call po,0eedah		;37f1	e4 da ee 	. . . 
	cp 0f6h		;37f4	fe f6 	. . 
	rst 38h			;37f6	ff 	. 
	rst 30h			;37f7	f7 	. 
	or 000h		;37f8	f6 00 	. . 
	dec b			;37fa	05 	. 
	nop			;37fb	00 	. 
	ret po			;37fc	e0 	. 
	nop			;37fd	00 	. 
	ld bc,l0fffh		;37fe	01 ff 0f 	. . . 
	nop			;3801	00 	. 
	inc bc			;3802	03 	. 
	or 0ffh		;3803	f6 ff 	. . 
	rst 30h			;3805	f7 	. 
	or 0ffh		;3806	f6 ff 	. . 
	cp 000h		;3808	fe 00 	. . 
	inc bc			;380a	03 	. 
	nop			;380b	00 	. 
	ret po			;380c	e0 	. 
	nop			;380d	00 	. 
	ld bc,l0fffh		;380e	01 ff 0f 	. . . 
	nop			;3811	00 	. 
	ex af,af'			;3812	08 	. 
	nop			;3813	00 	. 
	add a,c			;3814	81 	. 
	nop			;3815	00 	. 
	ld bc,l00fdh+2		;3816	01 ff 00 	. . . 
	nop			;3819	00 	. 
	inc a			;381a	3c 	< 
	dec e			;381b	1d 	. 
	rra			;381c	1f 	. 
	rrca			;381d	0f 	. 
	rra			;381e	1f 	. 
	inc sp			;381f	33 	3 
	rst 38h			;3820	ff 	. 
	ld h,c			;3821	61 	a 
	ld a,03ch		;3822	3e 3c 	> < 
	inc sp			;3824	33 	3 
	ld (hl),b			;3825	70 	p 
	ld a,h			;3826	7c 	| 
	nop			;3827	00 	. 
	inc bc			;3828	03 	. 
	ld a,(hl)			;3829	7e 	~ 
	ret po			;382a	e0 	. 
	nop			;382b	00 	. 
	inc bc			;382c	03 	. 
	ret nz			;382d	c0 	. 
	ret po			;382e	e0 	. 
	ret p			;382f	f0 	. 
	nop			;3830	00 	. 
	ld bc,07fffh		;3831	01 ff 7f 	. .  
	ld a,(hl)			;3834	7e 	~ 
	ld a,01fh		;3835	3e 1f 	> . 
	rlca			;3837	07 	. 
	inc bc			;3838	03 	. 
	nop			;3839	00 	. 
	ld bc,l0100h		;383a	01 00 01 	. . . 
	inc bc			;383d	03 	. 
	rlca			;383e	07 	. 
	rst 38h			;383f	ff 	. 
	rrca			;3840	0f 	. 
	ld a,a			;3841	7f 	 
	rst 8			;3842	cf 	. 
	jp 0e1ffh		;3843	c3 ff e1 	. . . 
	inc c			;3846	0c 	. 
	jr l3881h		;3847	18 38 	. 8 
	ld (hl),b			;3849	70 	p 
	rst 38h			;384a	ff 	. 
	ld h,b			;384b	60 	` 
	rst 38h			;384c	ff 	. 
	ret po			;384d	e0 	. 
	nop			;384e	00 	. 
	inc b			;384f	04 	. 
	ret p			;3850	f0 	. 
	ld h,b			;3851	60 	` 
	ld h,c			;3852	61 	a 
	inc sp			;3853	33 	3 
	rra			;3854	1f 	. 
	ret po			;3855	e0 	. 
	rst 38h			;3856	ff 	. 
	ret p			;3857	f0 	. 
	ret m			;3858	f8 	. 
	defb 0fdh,0ffh,07fh	;illegal sequence		;3859	fd ff 7f 	. .  
	ccf			;385c	3f 	? 
	rrca			;385d	0f 	. 
	rra			;385e	1f 	. 
	ld a,a			;385f	7f 	 
	rst 8			;3860	cf 	. 
	add a,a			;3861	87 	. 
	ex (sp),hl			;3862	e3 	. 
	di			;3863	f3 	. 
	pop af			;3864	f1 	. 
	nop			;3865	00 	. 
	inc b			;3866	04 	. 
	ccf			;3867	3f 	? 
	ld a,a			;3868	7f 	 
	rst 8			;3869	cf 	. 
	add a,a			;386a	87 	. 
	jp 0f9ffh		;386b	c3 ff f9 	. . . 
	ret m			;386e	f8 	. 
	ld a,b			;386f	78 	x 
	jr c,l38aeh		;3870	38 3c 	8 < 
	ld e,03fh		;3872	1e 3f 	. ? 
	di			;3874	f3 	. 
	ld a,c			;3875	79 	y 
	ld a,l			;3876	7d 	} 
	ld a,a			;3877	7f 	 
	ccf			;3878	3f 	? 
l3879h:
	rra			;3879	1f 	. 
	inc a			;387a	3c 	< 
	jr c,l3879h		;387b	38 fc 	8 . 
	and 0f2h		;387d	e6 f2 	. . 
	ei			;387f	fb 	. 
	ld sp,hl			;3880	f9 	. 
l3881h:
	pop af			;3881	f1 	. 
	di			;3882	f3 	. 
	or 018h		;3883	f6 18 	. . 
	ld (hl),b			;3885	70 	p 
	ret nz			;3886	c0 	. 
	rst 38h			;3887	ff 	. 
	add a,b			;3888	80 	. 
	ret po			;3889	e0 	. 
	jr c,l3898h		;388a	38 0c 	8 . 
	cp 0fch		;388c	fe fc 	. . 
	inc c			;388e	0c 	. 
	rst 38h			;388f	ff 	. 
	inc b			;3890	04 	. 
	rst 38h			;3891	ff 	. 
	add a,h			;3892	84 	. 
	inc c			;3893	0c 	. 
	ld b,0f2h		;3894	06 f2 	. . 
	ei			;3896	fb 	. 
	pop af			;3897	f1 	. 
l3898h:
	ld sp,hl			;3898	f9 	. 
	pop af			;3899	f1 	. 
	ex (sp),hl			;389a	e3 	. 
	and 0f4h		;389b	e6 f4 	. . 
	ld a,h			;389d	7c 	| 
	ld a,b			;389e	78 	x 
	ld (hl),b			;389f	70 	p 
	rst 38h			;38a0	ff 	. 
	ld b,b			;38a1	40 	@ 
	ld a,b			;38a2	78 	x 
	ld c,h			;38a3	4c 	L 
	call m,0fcf8h		;38a4	fc f8 fc 	. . . 
	rst 38h			;38a7	ff 	. 
	cp 000h		;38a8	fe 00 	. . 
	ld bc,07fffh		;38aa	01 ff 7f 	. .  
	rra			;38ad	1f 	. 
l38aeh:
	and 0e2h		;38ae	e6 e2 	. . 
	ex (sp),hl			;38b0	e3 	. 
	nop			;38b1	00 	. 
	inc bc			;38b2	03 	. 
	pop af			;38b3	f1 	. 
	ei			;38b4	fb 	. 
	cp 01fh		;38b5	fe 1f 	. . 
	rst 38h			;38b7	ff 	. 
	ccf			;38b8	3f 	? 
	ld a,a			;38b9	7f 	 
	nop			;38ba	00 	. 
	inc b			;38bb	04 	. 
	rst 38h			;38bc	ff 	. 
	rst 38h			;38bd	ff 	. 
	nop			;38be	00 	. 
	ld c,0dfh		;38bf	0e df 	. . 
	nop			;38c1	00 	. 
	ld bc,0e0ffh		;38c2	01 ff e0 	. . . 
	nop			;38c5	00 	. 
	ld b,000h		;38c6	06 00 	. . 
	ld c,0cfh		;38c8	0e cf 	. . 
	nop			;38ca	00 	. 
	ld bc,0f0ffh		;38cb	01 ff f0 	. . . 
	nop			;38ce	00 	. 
	ex af,af'			;38cf	08 	. 
	nop			;38d0	00 	. 
	inc a			;38d1	3c 	< 
	rst 38h			;38d2	ff 	. 
	nop			;38d3	00 	. 
	ld (bc),a			;38d4	02 	. 
	ld (hl),e			;38d5	73 	s 
	nop			;38d6	00 	. 
	ld bc,0fcffh		;38d7	01 ff fc 	. . . 
	nop			;38da	00 	. 
	ld bc,0fd00h		;38db	01 00 fd 	. . . 
	nop			;38de	00 	. 
	inc bc			;38df	03 	. 
	rst 38h			;38e0	ff 	. 
	ld a,a			;38e1	7f 	 
	rrca			;38e2	0f 	. 
	rlca			;38e3	07 	. 
	inc bc			;38e4	03 	. 
	ret m			;38e5	f8 	. 
	rst 38h			;38e6	ff 	. 
	ret p			;38e7	f0 	. 
	rst 38h			;38e8	ff 	. 
	ret m			;38e9	f8 	. 
	cp 0c3h		;38ea	fe c3 	. . 
	pop bc			;38ec	c1 	. 
	jp 0fdf9h		;38ed	c3 f9 fd 	. . . 
	nop			;38f0	00 	. 
	inc bc			;38f1	03 	. 
	rst 38h			;38f2	ff 	. 
	call m,0fdf8h		;38f3	fc f8 fd 	. . . 
	nop			;38f6	00 	. 
	ld bc,0fcffh		;38f7	01 ff fc 	. . . 
	rst 38h			;38fa	ff 	. 
	cp 0ffh		;38fb	fe ff 	. . 
	rst 38h			;38fd	ff 	. 
	ld a,a			;38fe	7f 	 
	nop			;38ff	00 	. 
	inc bc			;3900	03 	. 
	rra			;3901	1f 	. 
	rst 38h			;3902	ff 	. 
	rrca			;3903	0f 	. 
	ccf			;3904	3f 	? 
	rst 20h			;3905	e7 	. 
	rst 0			;3906	c7 	. 
	rrca			;3907	0f 	. 
	add a,a			;3908	87 	. 
	rst 0			;3909	c7 	. 
	ld sp,hl			;390a	f9 	. 
	ret p			;390b	f0 	. 
	ret m			;390c	f8 	. 
	cp 0f3h		;390d	fe f3 	. . 
	nop			;390f	00 	. 
	inc bc			;3910	03 	. 
	rst 38h			;3911	ff 	. 
	ld a,a			;3912	7f 	 
	ld a,07fh		;3913	3e 7f 	>  
	rst 38h			;3915	ff 	. 
	rst 38h			;3916	ff 	. 
	pop af			;3917	f1 	. 
	ld sp,hl			;3918	f9 	. 
	defb 0fdh,000h,001h	;illegal sequence		;3919	fd 00 01 	. . . 
	rst 38h			;391c	ff 	. 
	ld a,a			;391d	7f 	 
	cp a			;391e	bf 	. 
	rst 18h			;391f	df 	. 
	nop			;3920	00 	. 
	ld bc,0ffffh		;3921	01 ff ff 	. . . 
	nop			;3924	00 	. 
	ld e,01fh		;3925	1e 1f 	. . 
	rst 38h			;3927	ff 	. 
	ccf			;3928	3f 	? 
	ld a,a			;3929	7f 	 
	nop			;392a	00 	. 
	ld bc,l00fdh+2		;392b	01 ff 00 	. . . 
	inc bc			;392e	03 	. 
	nop			;392f	00 	. 
	add a,b			;3930	80 	. 
	rst 38h			;3931	ff 	. 
	ret po			;3932	e0 	. 
	add a,b			;3933	80 	. 
	ld h,b			;3934	60 	` 
	nop			;3935	00 	. 
	inc bc			;3936	03 	. 
	rst 38h			;3937	ff 	. 
	nop			;3938	00 	. 
	inc bc			;3939	03 	. 
	ld a,a			;393a	7f 	 
	ccf			;393b	3f 	? 
	inc bc			;393c	03 	. 
	rst 38h			;393d	ff 	. 
	ret p			;393e	f0 	. 
	pop af			;393f	f1 	. 
	ex (sp),hl			;3940	e3 	. 
	rlca			;3941	07 	. 
	nop			;3942	00 	. 
	ld bc,0feffh		;3943	01 ff fe 	. . . 
	ret p			;3946	f0 	. 
	nop			;3947	00 	. 
	ld b,000h		;3948	06 00 	. . 
	ld bc,l0002h		;394a	01 02 00 	. . . 
	ld b,000h		;394d	06 00 	. . 
	djnz l3959h		;394f	10 08 	. . 
	rlca			;3951	07 	. 
	rrca			;3952	0f 	. 
	rst 38h			;3953	ff 	. 
	rra			;3954	1f 	. 
	rrca			;3955	0f 	. 
	inc bc			;3956	03 	. 
	rst 38h			;3957	ff 	. 
	nop			;3958	00 	. 
l3959h:
	inc c			;3959	0c 	. 
	and h			;395a	a4 	. 
	call p,0ffech		;395b	f4 ec ff 	. . . 
	ret m			;395e	f8 	. 
	ret p			;395f	f0 	. 
	nop			;3960	00 	. 
	ld bc,l3f00h		;3961	01 00 3f 	. . ? 
	rst 38h			;3964	ff 	. 
	rra			;3965	1f 	. 
	ccf			;3966	3f 	? 
	daa			;3967	27 	' 
	ld h,e			;3968	63 	c 
	rst 38h			;3969	ff 	. 
	pop bc			;396a	c1 	. 
	nop			;396b	00 	. 
	inc b			;396c	04 	. 
	rst 38h			;396d	ff 	. 
	cp 000h		;396e	fe 00 	. . 
	inc bc			;3970	03 	. 
	ret m			;3971	f8 	. 
	rst 38h			;3972	ff 	. 
	ret nz			;3973	c0 	. 
	nop			;3974	00 	. 
	inc b			;3975	04 	. 
	add a,b			;3976	80 	. 
	pop bc			;3977	c1 	. 
	nop			;3978	00 	. 
	ld bc,0f8ffh		;3979	01 ff f8 	. . . 
	call m,sub_007fh		;397c	fc 7f 00 	.  . 
	dec b			;397f	05 	. 
	ccf			;3980	3f 	? 
	pop hl			;3981	e1 	. 
	ei			;3982	fb 	. 
	nop			;3983	00 	. 
	ld bc,08fffh		;3984	01 ff 8f 	. . . 
	nop			;3987	00 	. 
	inc bc			;3988	03 	. 
	rlca			;3989	07 	. 
	rra			;398a	1f 	. 
	cp 000h		;398b	fe 00 	. . 
	inc bc			;398d	03 	. 
	call m,0fff8h		;398e	fc f8 ff 	. . . 
	ret p			;3991	f0 	. 
	di			;3992	f3 	. 
	inc hl			;3993	23 	# 
	ret nz			;3994	c0 	. 
	ret p			;3995	f0 	. 
	call m,00600h		;3996	fc 00 06 	. . . 
	rst 38h			;3999	ff 	. 
	rrca			;399a	0f 	. 
	rst 38h			;399b	ff 	. 
	rlca			;399c	07 	. 
	rst 38h			;399d	ff 	. 
	add a,a			;399e	87 	. 
	rrca			;399f	0f 	. 
	rst 10h			;39a0	d7 	. 
	and e			;39a1	a3 	. 
	rst 10h			;39a2	d7 	. 
	nop			;39a3	00 	. 
	inc bc			;39a4	03 	. 
	rst 38h			;39a5	ff 	. 
	rst 30h			;39a6	f7 	. 
	nop			;39a7	00 	. 
	dec b			;39a8	05 	. 
	rst 38h			;39a9	ff 	. 
	xor 0f6h		;39aa	ee f6 	. . 
	rst 38h			;39ac	ff 	. 
	rst 38h			;39ad	ff 	. 
	rst 38h			;39ae	ff 	. 
	cp 000h		;39af	fe 00 	. . 
	inc bc			;39b1	03 	. 
	rst 38h			;39b2	ff 	. 
	cp 0ffh		;39b3	fe ff 	. . 
	rst 38h			;39b5	ff 	. 
	ret m			;39b6	f8 	. 
	call m,0fecfh		;39b7	fc cf fe 	. . . 
	nop			;39ba	00 	. 
	ld bc,l00fdh+2		;39bb	01 ff 00 	. . . 
	inc bc			;39be	03 	. 
	ccf			;39bf	3f 	? 
	adc a,a			;39c0	8f 	. 
	rst 18h			;39c1	df 	. 
	nop			;39c2	00 	. 
	ld bc,l0fffh		;39c3	01 ff 0f 	. . . 
	rlca			;39c6	07 	. 
	add a,a			;39c7	87 	. 
	in a,(000h)		;39c8	db 00 	. . 
	inc bc			;39ca	03 	. 
	rst 38h			;39cb	ff 	. 
	defb 0fdh,0fch,0feh	;illegal sequence		;39cc	fd fc fe 	. . . 
	rst 8			;39cf	cf 	. 
	rst 38h			;39d0	ff 	. 
	rst 38h			;39d1	ff 	. 
	ccf			;39d2	3f 	? 
	ret nz			;39d3	c0 	. 
	ret po			;39d4	e0 	. 
	cp 073h		;39d5	fe 73 	. s 
	nop			;39d7	00 	. 
	dec b			;39d8	05 	. 
	rst 38h			;39d9	ff 	. 
	ld c,0dfh		;39da	0e df 	. . 
	nop			;39dc	00 	. 
	ld bc,0e7ffh		;39dd	01 ff e7 	. . . 
	add a,a			;39e0	87 	. 
	rrca			;39e1	0f 	. 
	cp 0fch		;39e2	fe fc 	. . 
	add a,e			;39e4	83 	. 
	ret p			;39e5	f0 	. 
	call m,sub_0300h		;39e6	fc 00 03 	. . . 
	cp 03bh		;39e9	fe 3b 	. ; 
	ld a,h			;39eb	7c 	| 
	cp 000h		;39ec	fe 00 	. . 
	ld bc,07fffh		;39ee	01 ff 7f 	. .  
	nop			;39f1	00 	. 
	inc bc			;39f2	03 	. 
	ccf			;39f3	3f 	? 
	cp 03eh		;39f4	fe 3e 	. > 
	rrca			;39f6	0f 	. 
	inc bc			;39f7	03 	. 
	nop			;39f8	00 	. 
	ld bc,l0100h		;39f9	01 00 01 	. . . 
	inc bc			;39fc	03 	. 
	rlca			;39fd	07 	. 
	nop			;39fe	00 	. 
	inc bc			;39ff	03 	. 
	rra			;3a00	1f 	. 
	cp h			;3a01	bc 	. 
	ret po			;3a02	e0 	. 
	ret p			;3a03	f0 	. 
	ret m			;3a04	f8 	. 
	nop			;3a05	00 	. 
	ld bc,0feffh		;3a06	01 ff fe 	. . . 
	inc a			;3a09	3c 	< 
	inc bc			;3a0a	03 	. 
	add a,c			;3a0b	81 	. 
	jp 08486h		;3a0c	c3 86 84 	. . . 
	adc a,b			;3a0f	88 	. 
	rra			;3a10	1f 	. 
	ld a,a			;3a11	7f 	 
	nop			;3a12	00 	. 
	inc bc			;3a13	03 	. 
	rst 38h			;3a14	ff 	. 
	ld a,a			;3a15	7f 	 
	rra			;3a16	1f 	. 
	rlca			;3a17	07 	. 
	sbc a,a			;3a18	9f 	. 
	rst 38h			;3a19	ff 	. 
	rst 38h			;3a1a	ff 	. 
	rra			;3a1b	1f 	. 
	rrca			;3a1c	0f 	. 
	inc bc			;3a1d	03 	. 
	ld bc,l01e0h		;3a1e	01 e0 01 	. . . 
	ret m			;3a21	f8 	. 
	rst 38h			;3a22	ff 	. 
	cp 0fch		;3a23	fe fc 	. . 
	ret p			;3a25	f0 	. 
	rst 38h			;3a26	ff 	. 
	ret po			;3a27	e0 	. 
	rlca			;3a28	07 	. 
	rrca			;3a29	0f 	. 
	rst 38h			;3a2a	ff 	. 
	rst 38h			;3a2b	ff 	. 
	adc a,a			;3a2c	8f 	. 
	jp 0e1ffh		;3a2d	c3 ff e1 	. . . 
	nop			;3a30	00 	. 
	ex af,af'			;3a31	08 	. 
	rst 38h			;3a32	ff 	. 
	nop			;3a33	00 	. 
	inc b			;3a34	04 	. 
	ret p			;3a35	f0 	. 
	ret po			;3a36	e0 	. 
	pop bc			;3a37	c1 	. 
	add a,e			;3a38	83 	. 
	ccf			;3a39	3f 	? 
	nop			;3a3a	00 	. 
	dec b			;3a3b	05 	. 
	rst 38h			;3a3c	ff 	. 
	cp 0ffh		;3a3d	fe ff 	. . 
	rst 38h			;3a3f	ff 	. 
	ret po			;3a40	e0 	. 
	ret m			;3a41	f8 	. 
	rst 38h			;3a42	ff 	. 
	call m,l0400h		;3a43	fc 00 04 	. . . 
	cp 0e0h		;3a46	fe e0 	. . 
	ret m			;3a48	f8 	. 
	nop			;3a49	00 	. 
	ld bc,l00fdh+2		;3a4a	01 ff 00 	. . . 
	dec b			;3a4d	05 	. 
	ld a,a			;3a4e	7f 	 
	nop			;3a4f	00 	. 
	inc bc			;3a50	03 	. 
	cp 0ffh		;3a51	fe ff 	. . 
	rst 38h			;3a53	ff 	. 
	ld a,a			;3a54	7f 	 
	ccf			;3a55	3f 	? 
	rra			;3a56	1f 	. 
	ld a,a			;3a57	7f 	 
	nop			;3a58	00 	. 
	rlca			;3a59	07 	. 
	rst 38h			;3a5a	ff 	. 
	ret nz			;3a5b	c0 	. 
	rst 38h			;3a5c	ff 	. 
	ret m			;3a5d	f8 	. 
	ret p			;3a5e	f0 	. 
	nop			;3a5f	00 	. 
	inc b			;3a60	04 	. 
	ret po			;3a61	e0 	. 
	nop			;3a62	00 	. 
	ld bc,07fffh		;3a63	01 ff 7f 	. .  
	rst 38h			;3a66	ff 	. 
	ld a,(hl)			;3a67	7e 	~ 
	nop			;3a68	00 	. 
	inc bc			;3a69	03 	. 
	ld a,03fh		;3a6a	3e 3f 	> ? 
	ret po			;3a6c	e0 	. 
	rst 38h			;3a6d	ff 	. 
	ret p			;3a6e	f0 	. 
	ret m			;3a6f	f8 	. 
	defb 0fdh,000h,003h	;illegal sequence		;3a70	fd 00 03 	. . . 
	rst 38h			;3a73	ff 	. 
	ccf			;3a74	3f 	? 
	rst 38h			;3a75	ff 	. 
	rra			;3a76	1f 	. 
	ld a,a			;3a77	7f 	 
	cp 000h		;3a78	fe 00 	. . 
	inc bc			;3a7a	03 	. 
	rst 38h			;3a7b	ff 	. 
	rra			;3a7c	1f 	. 
	rrca			;3a7d	0f 	. 
	rlca			;3a7e	07 	. 
	inc bc			;3a7f	03 	. 
	ld bc,sub_0300h		;3a80	01 00 03 	. . . 
	nop			;3a83	00 	. 
	nop			;3a84	00 	. 
	ld b,0ffh		;3a85	06 ff 	. . 
	ld a,a			;3a87	7f 	 
	rra			;3a88	1f 	. 
	ret po			;3a89	e0 	. 
	ret m			;3a8a	f8 	. 
	rst 38h			;3a8b	ff 	. 
	cp 007h		;3a8c	fe 07 	. . 
	ld bc,0f0e0h		;3a8e	01 e0 f0 	. . . 
	rra			;3a91	1f 	. 
	rst 38h			;3a92	ff 	. 
	ccf			;3a93	3f 	? 
	ld a,a			;3a94	7f 	 
	nop			;3a95	00 	. 
	rlca			;3a96	07 	. 
	rst 38h			;3a97	ff 	. 
	rrca			;3a98	0f 	. 
	add a,a			;3a99	87 	. 
	ex (sp),hl			;3a9a	e3 	. 
	di			;3a9b	f3 	. 
	pop af			;3a9c	f1 	. 
	nop			;3a9d	00 	. 
	ex af,af'			;3a9e	08 	. 
	rst 38h			;3a9f	ff 	. 
	rst 38h			;3aa0	ff 	. 
	ld sp,hl			;3aa1	f9 	. 
	nop			;3aa2	00 	. 
	dec b			;3aa3	05 	. 
	ret m			;3aa4	f8 	. 
	defb 0fdh,000h,004h	;illegal sequence		;3aa5	fd 00 04 	. . . 
	rst 38h			;3aa8	ff 	. 
	ld sp,hl			;3aa9	f9 	. 
	rst 38h			;3aaa	ff 	. 
	ret m			;3aab	f8 	. 
	call m,l0800h		;3aac	fc 00 08 	. . . 
	ret m			;3aaf	f8 	. 
	rst 38h			;3ab0	ff 	. 
	ld a,a			;3ab1	7f 	 
	nop			;3ab2	00 	. 
	dec b			;3ab3	05 	. 
	ccf			;3ab4	3f 	? 
	ld a,a			;3ab5	7f 	 
	ret p			;3ab6	f0 	. 
	ret nz			;3ab7	c0 	. 
	add a,b			;3ab8	80 	. 
	ret nz			;3ab9	c0 	. 
	di			;3aba	f3 	. 
	ld a,h			;3abb	7c 	| 
	ccf			;3abc	3f 	? 
	rra			;3abd	1f 	. 
	rst 38h			;3abe	ff 	. 
	ld a,a			;3abf	7f 	 
	rst 38h			;3ac0	ff 	. 
	rst 38h			;3ac1	ff 	. 
	ccf			;3ac2	3f 	? 
	rra			;3ac3	1f 	. 
	sbc a,a			;3ac4	9f 	. 
	rst 18h			;3ac5	df 	. 
	ld a,a			;3ac6	7f 	 
	ld a,(hl)			;3ac7	7e 	~ 
	ld a,03ch		;3ac8	3e 3c 	> < 
	nop			;3aca	00 	. 
	inc bc			;3acb	03 	. 
	jr nz,l3b2eh		;3acc	20 60 	  ` 
	ret c			;3ace	d8 	. 
	rst 38h			;3acf	ff 	. 
	ret z			;3ad0	c8 	. 
	rst 38h			;3ad1	ff 	. 
	ret m			;3ad2	f8 	. 
	ret p			;3ad3	f0 	. 
	cp 0f3h		;3ad4	fe f3 	. . 
	rst 38h			;3ad6	ff 	. 
	ld b,b			;3ad7	40 	@ 
	ret nz			;3ad8	c0 	. 
	ret po			;3ad9	e0 	. 
	jr nc,$+18		;3ada	30 10 	0 . 
	sub b			;3adc	90 	. 
	ret nc			;3add	d0 	. 
	pop af			;3ade	f1 	. 
	ld sp,hl			;3adf	f9 	. 
	defb 0fdh,000h,001h	;illegal sequence		;3ae0	fd 00 01 	. . . 
	rst 38h			;3ae3	ff 	. 
	ld a,a			;3ae4	7f 	 
	cp a			;3ae5	bf 	. 
	rst 18h			;3ae6	df 	. 
	cp 0fch		;3ae7	fe fc 	. . 
	add a,(hl)			;3ae9	86 	. 
	jp nz,l00f2h		;3aea	c2 f2 00 	. . . 
	ld bc,0cfffh		;3aed	01 ff cf 	. . . 
	nop			;3af0	00 	. 
	ld bc,0f2ffh		;3af1	01 ff f2 	. . . 
	in a,(0a7h)		;3af4	db a7 	. . 
	and e			;3af6	a3 	. 
	ret c			;3af7	d8 	. 
	rst 20h			;3af8	e7 	. 
	ret p			;3af9	f0 	. 
	ld a,a			;3afa	7f 	 
	rra			;3afb	1f 	. 
	rst 38h			;3afc	ff 	. 
	call m,0df0fh		;3afd	fc 0f df 	. . . 
	nop			;3b00	00 	. 
	ld bc,0e6ffh		;3b01	01 ff e6 	. . . 
	add a,(hl)			;3b04	86 	. 
	inc c			;3b05	0c 	. 
	sbc a,a			;3b06	9f 	. 
	cp a			;3b07	bf 	. 
	xor e			;3b08	ab 	. 
	sub e			;3b09	93 	. 
	ld b,l			;3b0a	45 	E 
	nop			;3b0b	00 	. 
	ld bc,0feffh		;3b0c	01 ff fe 	. . . 
	call m,0a2d4h		;3b0f	fc d4 a2 	. . . 
	sub 0feh		;3b12	d6 fe 	. . 
	rst 38h			;3b14	ff 	. 
	rst 38h			;3b15	ff 	. 
	rst 30h			;3b16	f7 	. 
	cp 000h		;3b17	fe 00 	. . 
	inc b			;3b19	04 	. 
	nop			;3b1a	00 	. 
	ret po			;3b1b	e0 	. 
	or 000h		;3b1c	f6 00 	. . 
	ld bc,l0fffh		;3b1e	01 ff 0f 	. . . 
	rst 38h			;3b21	ff 	. 
	cp 000h		;3b22	fe 00 	. . 
	inc bc			;3b24	03 	. 
	rst 38h			;3b25	ff 	. 
	nop			;3b26	00 	. 
	inc bc			;3b27	03 	. 
	cp 0ffh		;3b28	fe ff 	. . 
	nop			;3b2a	00 	. 
	ret nz			;3b2b	c0 	. 
	cp 000h		;3b2c	fe 00 	. . 
l3b2eh:
	ld bc,l0fffh		;3b2e	01 ff 0f 	. . . 
	nop			;3b31	00 	. 
	rlca			;3b32	07 	. 
	nop			;3b33	00 	. 
	add a,e			;3b34	83 	. 
	in a,(000h)		;3b35	db 00 	. . 
	ld bc,l00fdh+2		;3b37	01 ff 00 	. . . 
	nop			;3b3a	00 	. 
	call m,l00fdh		;3b3b	fc fd 00 	. . . 
	inc b			;3b3e	04 	. 
	rst 38h			;3b3f	ff 	. 
	rst 28h			;3b40	ef 	. 
	rst 0			;3b41	c7 	. 
	xor 0fch		;3b42	ee fc 	. . 
	nop			;3b44	00 	. 
	inc bc			;3b45	03 	. 
	rst 38h			;3b46	ff 	. 
	rst 38h			;3b47	ff 	. 
	rst 18h			;3b48	df 	. 
	adc a,0c7h		;3b49	ce c7 	. . 
	rst 38h			;3b4b	ff 	. 
	add a,e			;3b4c	83 	. 
	add a,c			;3b4d	81 	. 
	and c			;3b4e	a1 	. 
	or b			;3b4f	b0 	. 
	rst 18h			;3b50	df 	. 
	rst 0			;3b51	c7 	. 
	and 0f0h		;3b52	e6 f0 	. . 
	call m,l00fdh+1		;3b54	fc fe 00 	. . . 
	inc bc			;3b57	03 	. 
	rst 38h			;3b58	ff 	. 
	rst 38h			;3b59	ff 	. 
	cp 000h		;3b5a	fe 00 	. . 
	inc b			;3b5c	04 	. 
	call m,l00fdh+1		;3b5d	fc fe 00 	. . . 
	inc bc			;3b60	03 	. 
	rst 38h			;3b61	ff 	. 
	ei			;3b62	fb 	. 
	ld sp,hl			;3b63	f9 	. 
	ret p			;3b64	f0 	. 
	nop			;3b65	00 	. 
	inc b			;3b66	04 	. 
	ret po			;3b67	e0 	. 
	nop			;3b68	00 	. 
	ld bc,0f7ffh		;3b69	01 ff f7 	. . . 
	di			;3b6c	f3 	. 
	ret p			;3b6d	f0 	. 
	ret po			;3b6e	e0 	. 
	pop hl			;3b6f	e1 	. 
	di			;3b70	f3 	. 
	nop			;3b71	00 	. 
	ld bc,0e0ffh		;3b72	01 ff e0 	. . . 
	ret p			;3b75	f0 	. 
	or b			;3b76	b0 	. 
	cp b			;3b77	b8 	. 
	call c,0e1c8h		;3b78	dc c8 e1 	. . . 
	ex (sp),hl			;3b7b	e3 	. 
	rst 38h			;3b7c	ff 	. 
	call m,0c8f8h		;3b7d	fc f8 c8 	. . . 
	add a,l			;3b80	85 	. 
	ex (sp),hl			;3b81	e3 	. 
	di			;3b82	f3 	. 
	pop af			;3b83	f1 	. 
	rst 38h			;3b84	ff 	. 
	rst 20h			;3b85	e7 	. 
	ex (sp),hl			;3b86	e3 	. 
	di			;3b87	f3 	. 
	nop			;3b88	00 	. 
	ld bc,0feffh		;3b89	01 ff fe 	. . . 
	adc a,a			;3b8c	8f 	. 
	rst 0			;3b8d	c7 	. 
	rst 38h			;3b8e	ff 	. 
	ld sp,hl			;3b8f	f9 	. 
	nop			;3b90	00 	. 
	inc bc			;3b91	03 	. 
	ret m			;3b92	f8 	. 
	call m,l00fdh+1		;3b93	fc fe 00 	. . . 
	ld bc,0f2ffh		;3b96	01 ff f2 	. . . 
	ret m			;3b99	f8 	. 
	call m,sub_0300h		;3b9a	fc 00 03 	. . . 
	rst 38h			;3b9d	ff 	. 
	call m,000f8h		;3b9e	fc f8 00 	. . . 
	ld bc,0e7ffh		;3ba1	01 ff e7 	. . . 
	di			;3ba4	f3 	. 
	ei			;3ba5	fb 	. 
	ld sp,hl			;3ba6	f9 	. 
	pop af			;3ba7	f1 	. 
	di			;3ba8	f3 	. 
	rst 30h			;3ba9	f7 	. 
	rra			;3baa	1f 	. 
	ld a,a			;3bab	7f 	 
	nop			;3bac	00 	. 
	ld a,(bc)			;3bad	0a 	. 
	rst 38h			;3bae	ff 	. 
	rst 30h			;3baf	f7 	. 
	rst 38h			;3bb0	ff 	. 
	add a,a			;3bb1	87 	. 
	rrca			;3bb2	0f 	. 
	nop			;3bb3	00 	. 
	inc bc			;3bb4	03 	. 
	rst 38h			;3bb5	ff 	. 
	di			;3bb6	f3 	. 
	ld sp,hl			;3bb7	f9 	. 
	pop af			;3bb8	f1 	. 
	ld h,e			;3bb9	63 	c 
	rst 38h			;3bba	ff 	. 
	rlca			;3bbb	07 	. 
	adc a,a			;3bbc	8f 	. 
	rst 18h			;3bbd	df 	. 
	nop			;3bbe	00 	. 
	inc b			;3bbf	04 	. 
	ld a,a			;3bc0	7f 	 
	ld c,a			;3bc1	4f 	O 
	rst 38h			;3bc2	ff 	. 
	rst 38h			;3bc3	ff 	. 
	rst 28h			;3bc4	ef 	. 
	rra			;3bc5	1f 	. 
	ccf			;3bc6	3f 	? 
	nop			;3bc7	00 	. 
	inc bc			;3bc8	03 	. 
	rst 38h			;3bc9	ff 	. 
	rst 20h			;3bca	e7 	. 
	rst 38h			;3bcb	ff 	. 
	ex (sp),hl			;3bcc	e3 	. 
	nop			;3bcd	00 	. 
	inc bc			;3bce	03 	. 
	pop af			;3bcf	f1 	. 
	ei			;3bd0	fb 	. 
	nop			;3bd1	00 	. 
	ld bc,07fffh		;3bd2	01 ff 7f 	. .  
	rst 38h			;3bd5	ff 	. 
	ccf			;3bd6	3f 	? 
	ld a,l			;3bd7	7d 	} 
	defb 0fdh,0bdh	;cp iyl		;3bd8	fd bd 	. . 
	sbc a,c			;3bda	99 	. 
	pop bc			;3bdb	c1 	. 
	rst 38h			;3bdc	ff 	. 
	rst 38h			;3bdd	ff 	. 
	xor 0d0h		;3bde	ee d0 	. . 
	rra			;3be0	1f 	. 
	nop			;3be1	00 	. 
	rlca			;3be2	07 	. 
	rst 38h			;3be3	ff 	. 
	cp 0c8h		;3be4	fe c8 	. . 
	rrca			;3be6	0f 	. 
	nop			;3be7	00 	. 
	inc c			;3be8	0c 	. 
	rst 38h			;3be9	ff 	. 
	cp 072h		;3bea	fe 72 	. r 
	inc bc			;3bec	03 	. 
	rst 38h			;3bed	ff 	. 
	rst 38h			;3bee	ff 	. 
	defb 0fdh,07fh,01fh	;illegal sequence		;3bef	fd 7f 1f 	.  . 
	add a,a			;3bf2	87 	. 
	ex (sp),hl			;3bf3	e3 	. 
	ld a,a			;3bf4	7f 	 
	rrca			;3bf5	0f 	. 
	rlca			;3bf6	07 	. 
	sbc a,e			;3bf7	9b 	. 
	rst 38h			;3bf8	ff 	. 
	or b			;3bf9	b0 	. 
	jr l3c04h		;3bfa	18 08 	. . 
	ld a,(hl)			;3bfc	7e 	~ 
	jp 0c241h		;3bfd	c3 41 c2 	. A . 
l3c00h:
	ret m			;3c00	f8 	. 
	ld a,h			;3c01	7c 	| 
	rst 38h			;3c02	ff 	. 
	ccf			;3c03	3f 	? 
l3c04h:
	nop			;3c04	00 	. 
	ld bc,0fcffh		;3c05	01 ff fc 	. . . 
	ret m			;3c08	f8 	. 
	ld a,l			;3c09	7d 	} 
	ld a,a			;3c0a	7f 	 
	ld a,h			;3c0b	7c 	| 
	ld a,0eeh		;3c0c	3e ee 	> . 
	add a,a			;3c0e	87 	. 
	rst 0			;3c0f	c7 	. 
	ld h,a			;3c10	67 	g 
	rst 30h			;3c11	f7 	. 
	di			;3c12	f3 	. 
	ld a,b			;3c13	78 	x 
	inc a			;3c14	3c 	< 
	inc e			;3c15	1c 	. 
	ccf			;3c16	3f 	? 
	ret pe			;3c17	e8 	. 
	ret z			;3c18	c8 	. 
	ex af,af'			;3c19	08 	. 
	adc a,h			;3c1a	8c 	. 
	rst 0			;3c1b	c7 	. 
	ld a,a			;3c1c	7f 	 
	pop af			;3c1d	f1 	. 
	ret m			;3c1e	f8 	. 
	cp 073h		;3c1f	fe 73 	. s 
	nop			;3c21	00 	. 
	inc bc			;3c22	03 	. 
	call m,sub_3e7fh		;3c23	fc 7f 3e 	.  > 
	ld h,e			;3c26	63 	c 
	ld sp,hl			;3c27	f9 	. 
	nop			;3c28	00 	. 
	ld bc,071ffh		;3c29	01 ff 71 	. . q 
	ld sp,hl			;3c2c	f9 	. 
	rst 38h			;3c2d	ff 	. 
	defb 0fdh,07dh	;ld a,iyl		;3c2e	fd 7d 	. } 
	or c			;3c30	b1 	. 
	exx			;3c31	d9 	. 
	nop			;3c32	00 	. 
	ld bc,0fcffh		;3c33	01 ff fc 	. . . 
	ret p			;3c36	f0 	. 
	and 0efh		;3c37	e6 ef 	. . 
	rst 38h			;3c39	ff 	. 
	rst 8			;3c3a	cf 	. 
	rst 38h			;3c3b	ff 	. 
	adc a,a			;3c3c	8f 	. 
	ld a,a			;3c3d	7f 	 
	rra			;3c3e	1f 	. 
	rrca			;3c3f	0f 	. 
	adc a,a			;3c40	8f 	. 
	rst 38h			;3c41	ff 	. 
	rst 20h			;3c42	e7 	. 
	add a,e			;3c43	83 	. 
	ld h,c			;3c44	61 	a 
	adc a,a			;3c45	8f 	. 
	rst 38h			;3c46	ff 	. 
	add a,a			;3c47	87 	. 
	rst 38h			;3c48	ff 	. 
	jp 0a0c0h		;3c49	c3 c0 a0 	. . . 
	ret m			;3c4c	f8 	. 
	rst 38h			;3c4d	ff 	. 
	pop af			;3c4e	f1 	. 
	ret p			;3c4f	f0 	. 
	ret po			;3c50	e0 	. 
	nop			;3c51	00 	. 
	ld bc,l0100h		;3c52	01 00 01 	. . . 
	ld (bc),a			;3c55	02 	. 
	rlca			;3c56	07 	. 
	nop			;3c57	00 	. 
	inc bc			;3c58	03 	. 
	rst 38h			;3c59	ff 	. 
	cp 000h		;3c5a	fe 00 	. . 
	ld bc,0ffffh		;3c5c	01 ff ff 	. . . 
	defb 0fdh,0fah,0ffh	;illegal sequence		;3c5f	fd fa ff 	. . . 
	rst 38h			;3c62	ff 	. 
	ccf			;3c63	3f 	? 
	nop			;3c64	00 	. 
	ld bc,0cfffh		;3c65	01 ff cf 	. . . 
	adc a,a			;3c68	8f 	. 
	rla			;3c69	17 	. 
	rra			;3c6a	1f 	. 
	ei			;3c6b	fb 	. 
	pop af			;3c6c	f1 	. 
	pop hl			;3c6d	e1 	. 
	ret p			;3c6e	f0 	. 
	ret c			;3c6f	d8 	. 
	cp 0fdh		;3c70	fe fd 	. . 
	nop			;3c72	00 	. 
	ld bc,01fffh		;3c73	01 ff 1f 	. . . 
	cp a			;3c76	bf 	. 
	defb 0fdh,0fbh,0f3h	;illegal sequence		;3c77	fd fb f3 	. . . 
	ld l,a			;3c7a	6f 	o 
	rst 8			;3c7b	cf 	. 
	or a			;3c7c	b7 	. 
	ccf			;3c7d	3f 	? 
	rst 38h			;3c7e	ff 	. 
	rra			;3c7f	1f 	. 
	ccf			;3c80	3f 	? 
	rst 38h			;3c81	ff 	. 
	rra			;3c82	1f 	. 
	rrca			;3c83	0f 	. 
	rlca			;3c84	07 	. 
	call m,0fffeh		;3c85	fc fe ff 	. . . 
	rst 38h			;3c88	ff 	. 
	cp 000h		;3c89	fe 00 	. . 
	inc bc			;3c8b	03 	. 
	ret m			;3c8c	f8 	. 
	rlca			;3c8d	07 	. 
	rst 38h			;3c8e	ff 	. 
	inc bc			;3c8f	03 	. 
	rst 38h			;3c90	ff 	. 
	ld bc,0c180h		;3c91	01 80 c1 	. . . 
	nop			;3c94	00 	. 
	ld bc,0f8ffh		;3c95	01 ff f8 	. . . 
	call m,l0400h		;3c98	fc 00 04 	. . . 
	rst 38h			;3c9b	ff 	. 
	rst 38h			;3c9c	ff 	. 
	ccf			;3c9d	3f 	? 
	ld h,c			;3c9e	61 	a 
	dec sp			;3c9f	3b 	; 
	nop			;3ca0	00 	. 
	ld bc,09fffh		;3ca1	01 ff 9f 	. . . 
	rra			;3ca4	1f 	. 
	rrca			;3ca5	0f 	. 
	rlca			;3ca6	07 	. 
	rra			;3ca7	1f 	. 
	cp 000h		;3ca8	fe 00 	. . 
	inc bc			;3caa	03 	. 
	call m,000f8h		;3cab	fc f8 00 	. . . 
	inc bc			;3cae	03 	. 
	ret p			;3caf	f0 	. 
	ccf			;3cb0	3f 	? 
	nop			;3cb1	00 	. 
	rlca			;3cb2	07 	. 
	rst 38h			;3cb3	ff 	. 
	ret m			;3cb4	f8 	. 
	ret p			;3cb5	f0 	. 
	ret m			;3cb6	f8 	. 
	call m,085f4h		;3cb7	fc f4 85 	. . . 
	add a,a			;3cba	87 	. 
	rrca			;3cbb	0f 	. 
	rst 10h			;3cbc	d7 	. 
	and e			;3cbd	a3 	. 
	sub e			;3cbe	93 	. 
	add a,e			;3cbf	83 	. 
	adc a,e			;3cc0	8b 	. 
	adc a,d			;3cc1	8a 	. 
	add a,e			;3cc2	83 	. 
	adc a,e			;3cc3	8b 	. 
	nop			;3cc4	00 	. 
	inc b			;3cc5	04 	. 
	rst 38h			;3cc6	ff 	. 
	xor 016h		;3cc7	ee 16 	. . 
	ret p			;3cc9	f0 	. 
	nop			;3cca	00 	. 
	ld bc,l00fdh+2		;3ccb	01 ff 00 	. . . 
	inc bc			;3cce	03 	. 
	adc a,e			;3ccf	8b 	. 
	adc a,d			;3cd0	8a 	. 
	adc a,e			;3cd1	8b 	. 
	adc a,d			;3cd2	8a 	. 
	rst 0			;3cd3	c7 	. 
	nop			;3cd4	00 	. 
	ld bc,0f8ffh		;3cd5	01 ff f8 	. . . 
	call m,sub_1ecfh		;3cd8	fc cf 1e 	. . . 
	ret p			;3cdb	f0 	. 
	nop			;3cdc	00 	. 
	ld bc,0ffffh		;3cdd	01 ff ff 	. . . 
	ccf			;3ce0	3f 	? 
	adc a,a			;3ce1	8f 	. 
	rst 18h			;3ce2	df 	. 
	nop			;3ce3	00 	. 
	ld bc,0ffffh		;3ce4	01 ff ff 	. . . 
	rra			;3ce7	1f 	. 
	adc a,a			;3ce8	8f 	. 
	ld e,d			;3ce9	5a 	Z 
	jp 0ffffh		;3cea	c3 ff ff 	. . . 
	defb 0fdh,0fch,0feh	;illegal sequence		;3ced	fd fc fe 	. . . 
	ret z			;3cf0	c8 	. 
	rrca			;3cf1	0f 	. 
	cp 03fh		;3cf2	fe 3f 	. ? 
	rst 38h			;3cf4	ff 	. 
	rst 38h			;3cf5	ff 	. 
	cp 072h		;3cf6	fe 72 	. r 
	inc bc			;3cf8	03 	. 
	rst 38h			;3cf9	ff 	. 
	rst 38h			;3cfa	ff 	. 
	call m,0eef8h		;3cfb	fc f8 ee 	. . . 
	ret nc			;3cfe	d0 	. 
	rra			;3cff	1f 	. 
	push hl			;3d00	e5 	. 
	add a,a			;3d01	87 	. 
	rrca			;3d02	0f 	. 
	cp 0fch		;3d03	fe fc 	. . 
	nop			;3d05	00 	. 
	dec b			;3d06	05 	. 
	rst 38h			;3d07	ff 	. 
	cp 03fh		;3d08	fe 3f 	. ? 
	ld a,a			;3d0a	7f 	 
	nop			;3d0b	00 	. 
	inc bc			;3d0c	03 	. 
	rst 38h			;3d0d	ff 	. 
	cp a			;3d0e	bf 	. 
	rst 38h			;3d0f	ff 	. 
	ccf			;3d10	3f 	? 
	rst 38h			;3d11	ff 	. 
	cp 07eh		;3d12	fe 7e 	. ~ 
	ld (bc),a			;3d14	02 	. 
	nop			;3d15	00 	. 
	ld bc,l0100h		;3d16	01 00 01 	. . . 
	inc bc			;3d19	03 	. 
	ld b,01fh		;3d1a	06 1f 	. . 
	rla			;3d1c	17 	. 
	inc de			;3d1d	13 	. 
	inc a			;3d1e	3c 	< 
	ret po			;3d1f	e0 	. 
	add a,b			;3d20	80 	. 
	nop			;3d21	00 	. 
	ld bc,00f00h		;3d22	01 00 0f 	. . . 
	cp 0fch		;3d25	fe fc 	. . 
	nop			;3d27	00 	. 
	ld bc,0f1ffh		;3d28	01 ff f1 	. . . 
	jp 087ffh		;3d2b	c3 ff 87 	. . . 
	adc a,a			;3d2e	8f 	. 
	rra			;3d2f	1f 	. 
	ld a,a			;3d30	7f 	 
	nop			;3d31	00 	. 
	ld b,0ffh		;3d32	06 ff 	. . 
	sbc a,a			;3d34	9f 	. 
	rst 38h			;3d35	ff 	. 
	rst 38h			;3d36	ff 	. 
	rla			;3d37	17 	. 
	inc bc			;3d38	03 	. 
	inc e			;3d39	1c 	. 
	ld a,000h		;3d3a	3e 00 	> . 
	inc bc			;3d3c	03 	. 
	rst 38h			;3d3d	ff 	. 
	rst 38h			;3d3e	ff 	. 
	cp 0fch		;3d3f	fe fc 	. . 
	ret p			;3d41	f0 	. 
	ld h,b			;3d42	60 	` 
	add a,b			;3d43	80 	. 
	ld b,00ch		;3d44	06 0c 	. . 
	inc e			;3d46	1c 	. 
	ld a,h			;3d47	7c 	| 
	call m,0fffeh		;3d48	fc fe ff 	. . . 
	rst 38h			;3d4b	ff 	. 
	rrca			;3d4c	0f 	. 
	ccf			;3d4d	3f 	? 
	ld a,a			;3d4e	7f 	 
	nop			;3d4f	00 	. 
	ld b,0ffh		;3d50	06 ff 	. . 
	rst 30h			;3d52	f7 	. 
	di			;3d53	f3 	. 
	ret p			;3d54	f0 	. 
	ret po			;3d55	e0 	. 
	pop bc			;3d56	c1 	. 
	add a,e			;3d57	83 	. 
	ccf			;3d58	3f 	? 
	rst 38h			;3d59	ff 	. 
	rst 38h			;3d5a	ff 	. 
	sbc a,a			;3d5b	9f 	. 
	add a,a			;3d5c	87 	. 
	rst 0			;3d5d	c7 	. 
	nop			;3d5e	00 	. 
	add hl,bc			;3d5f	09 	. 
	rst 38h			;3d60	ff 	. 
	rst 38h			;3d61	ff 	. 
	cp 080h		;3d62	fe 80 	. . 
	rst 38h			;3d64	ff 	. 
	ret nz			;3d65	c0 	. 
	ld (hl),b			;3d66	70 	p 
	nop			;3d67	00 	. 
	inc b			;3d68	04 	. 
	ld a,a			;3d69	7f 	 
	nop			;3d6a	00 	. 
	inc bc			;3d6b	03 	. 
	cp 000h		;3d6c	fe 00 	. . 
	ld bc,0bfffh		;3d6e	01 ff bf 	. . . 
	rst 0			;3d71	c7 	. 
	rst 28h			;3d72	ef 	. 
	ld (hl),a			;3d73	77 	w 
	ld a,a			;3d74	7f 	 
	nop			;3d75	00 	. 
	rlca			;3d76	07 	. 
	rst 38h			;3d77	ff 	. 
	jp 0f9fbh		;3d78	c3 fb f9 	. . . 
	ret p			;3d7b	f0 	. 
	nop			;3d7c	00 	. 
	inc b			;3d7d	04 	. 
	ret po			;3d7e	e0 	. 
	rst 38h			;3d7f	ff 	. 
	rst 38h			;3d80	ff 	. 
	nop			;3d81	00 	. 
	inc b			;3d82	04 	. 
	cp 07eh		;3d83	fe 7e 	. ~ 
	ld a,a			;3d85	7f 	 
	ret po			;3d86	e0 	. 
	rst 38h			;3d87	ff 	. 
	ret p			;3d88	f0 	. 
	ret m			;3d89	f8 	. 
	call m,0c1f8h		;3d8a	fc f8 c1 	. . . 
	inc bc			;3d8d	03 	. 
	ccf			;3d8e	3f 	? 
	nop			;3d8f	00 	. 
	inc bc			;3d90	03 	. 
	rra			;3d91	1f 	. 
	ld e,04fh		;3d92	1e 4f 	. O 
	sbc a,a			;3d94	9f 	. 
	ccf			;3d95	3f 	? 
	ld (hl),a			;3d96	77 	w 
	dec sp			;3d97	3b 	; 
	ccf			;3d98	3f 	? 
	ld e,00fh		;3d99	1e 0f 	. . 
	rlca			;3d9b	07 	. 
	inc bc			;3d9c	03 	. 
	nop			;3d9d	00 	. 
	ld bc,0ff00h		;3d9e	01 00 ff 	. . . 
	rst 38h			;3da1	ff 	. 
	rst 28h			;3da2	ef 	. 
	rra			;3da3	1f 	. 
	ccf			;3da4	3f 	? 
	nop			;3da5	00 	. 
	inc bc			;3da6	03 	. 
	rst 38h			;3da7	ff 	. 
	ret po			;3da8	e0 	. 
	ret m			;3da9	f8 	. 
	rst 38h			;3daa	ff 	. 
	cp 03fh		;3dab	fe 3f 	. ? 
	rrca			;3dad	0f 	. 
	rst 20h			;3dae	e7 	. 
	di			;3daf	f3 	. 
	ld a,a			;3db0	7f 	 
	rst 38h			;3db1	ff 	. 
	ccf			;3db2	3f 	? 
	ld a,a			;3db3	7f 	 
	nop			;3db4	00 	. 
	ld bc,0bfffh		;3db5	01 ff bf 	. . . 
	sbc a,a			;3db8	9f 	. 
	ret nz			;3db9	c0 	. 
	inc c			;3dba	0c 	. 
	jr l3e35h		;3dbb	18 78 	. x 
	ex af,af'			;3dbd	08 	. 
	add a,l			;3dbe	85 	. 
	ex (sp),hl			;3dbf	e3 	. 
	di			;3dc0	f3 	. 
	pop af			;3dc1	f1 	. 
	ccf			;3dc2	3f 	? 
	ld a,a			;3dc3	7f 	 
	nop			;3dc4	00 	. 
	ld b,0ffh		;3dc5	06 ff 	. . 
	rst 38h			;3dc7	ff 	. 
	ld sp,hl			;3dc8	f9 	. 
	nop			;3dc9	00 	. 
	dec b			;3dca	05 	. 
	ret m			;3dcb	f8 	. 
	defb 0fdh,07fh,03fh	;illegal sequence		;3dcc	fd 7f 3f 	.  ? 
	sbc a,a			;3dcf	9f 	. 
	sbc a,0f9h		;3dd0	de f9 	. . 
	rst 38h			;3dd2	ff 	. 
	ret m			;3dd3	f8 	. 
	call m,sub_00f9h		;3dd4	fc f9 00 	. . . 
	rlca			;3dd7	07 	. 
	ret m			;3dd8	f8 	. 
	rst 38h			;3dd9	ff 	. 
	ret po			;3dda	e0 	. 
	ret p			;3ddb	f0 	. 
	nop			;3ddc	00 	. 
	inc bc			;3ddd	03 	. 
	ld a,a			;3dde	7f 	 
	ccf			;3ddf	3f 	? 
	ld a,a			;3de0	7f 	 
	ret p			;3de1	f0 	. 
	ret nz			;3de2	c0 	. 
	add a,b			;3de3	80 	. 
	nop			;3de4	00 	. 
	ld bc,08300h		;3de5	01 00 83 	. . . 
	ld e,h			;3de8	5c 	\ 
	ccf			;3de9	3f 	? 
	rra			;3dea	1f 	. 
	rst 38h			;3deb	ff 	. 
	ld e,a			;3dec	5f 	_ 
	rst 8			;3ded	cf 	. 
	rst 28h			;3dee	ef 	. 
	daa			;3def	27 	' 
	rla			;3df0	17 	. 
	sub e			;3df1	93 	. 
	out (0ffh),a		;3df2	d3 ff 	. . 
l3df4h:
	ex (sp),hl			;3df4	e3 	. 
	rst 30h			;3df5	f7 	. 
	nop			;3df6	00 	. 
	inc bc			;3df7	03 	. 
	ld a,a			;3df8	7f 	 
	ccf			;3df9	3f 	? 
	ld a,a			;3dfa	7f 	 
	rst 18h			;3dfb	df 	. 
	rst 38h			;3dfc	ff 	. 
	ld c,a			;3dfd	4f 	O 
	nop			;3dfe	00 	. 
	inc b			;3dff	04 	. 
	rst 38h			;3e00	ff 	. 
	ld (hl),e			;3e01	73 	s 
	rst 38h			;3e02	ff 	. 
	ld a,a			;3e03	7f 	 
	rst 38h			;3e04	ff 	. 
	rst 38h			;3e05	ff 	. 
	ccf			;3e06	3f 	? 
	rra			;3e07	1f 	. 
	sbc a,a			;3e08	9f 	. 
	rst 18h			;3e09	df 	. 
	ld (hl),c			;3e0a	71 	q 
	ld sp,hl			;3e0b	f9 	. 
	rst 38h			;3e0c	ff 	. 
	defb 0fdh,07dh	;ld a,iyl		;3e0d	fd 7d 	. } 
	or c			;3e0f	b1 	. 
	in a,(0ffh)		;3e10	db ff 	. . 
	rst 38h			;3e12	ff 	. 
	add a,a			;3e13	87 	. 
	jp sub_00f3h		;3e14	c3 f3 00 	. . . 
	ld bc,0c8ffh		;3e17	01 ff c8 	. . . 
	rrca			;3e1a	0f 	. 
	di			;3e1b	f3 	. 
	res 4,e		;3e1c	cb a3 	. . 
	add a,e			;3e1e	83 	. 
	ret c			;3e1f	d8 	. 
	and 0f0h		;3e20	e6 f0 	. . 
	nop			;3e22	00 	. 
	inc b			;3e23	04 	. 
	rst 38h			;3e24	ff 	. 
	rst 28h			;3e25	ef 	. 
	pop de			;3e26	d1 	. 
	rra			;3e27	1f 	. 
	rst 20h			;3e28	e7 	. 
	add a,a			;3e29	87 	. 
	rrca			;3e2a	0f 	. 
	sbc a,l			;3e2b	9d 	. 
	ccf			;3e2c	3f 	? 
	adc a,e			;3e2d	8b 	. 
	add a,c			;3e2e	81 	. 
	ld b,l			;3e2f	45 	E 
	rst 38h			;3e30	ff 	. 
	rst 38h			;3e31	ff 	. 
	ld a,a			;3e32	7f 	 
	rst 10h			;3e33	d7 	. 
	and e			;3e34	a3 	. 
l3e35h:
	sub e			;3e35	93 	. 
	add a,e			;3e36	83 	. 
	adc a,e			;3e37	8b 	. 
	adc a,d			;3e38	8a 	. 
	add a,e			;3e39	83 	. 
	adc a,e			;3e3a	8b 	. 
	nop			;3e3b	00 	. 
	inc b			;3e3c	04 	. 
	rst 38h			;3e3d	ff 	. 
	rst 28h			;3e3e	ef 	. 
	ld d,0f0h		;3e3f	16 f0 	. . 
	nop			;3e41	00 	. 
	ld bc,l00fdh+2		;3e42	01 ff 00 	. . . 
	inc bc			;3e45	03 	. 
	adc a,e			;3e46	8b 	. 
	adc a,d			;3e47	8a 	. 
	rst 38h			;3e48	ff 	. 
	adc a,e			;3e49	8b 	. 
	rst 0			;3e4a	c7 	. 
	nop			;3e4b	00 	. 
	inc bc			;3e4c	03 	. 
	rst 38h			;3e4d	ff 	. 
	rst 8			;3e4e	cf 	. 
	ld e,0f0h		;3e4f	1e f0 	. . 
	nop			;3e51	00 	. 
	ex af,af'			;3e52	08 	. 
	rst 38h			;3e53	ff 	. 
	cp a			;3e54	bf 	. 
	ld e,d			;3e55	5a 	Z 
	jp l0000h		;3e56	c3 00 00 	. . . 
	add a,b			;3e59	80 	. 
	rst 38h			;3e5a	ff 	. 
	ld a,a			;3e5b	7f 	 
	nop			;3e5c	00 	. 
	ld bc,0fdffh		;3e5d	01 ff fd 	. . . 
	ret p			;3e60	f0 	. 
	ret nz			;3e61	c0 	. 
	rst 0			;3e62	c7 	. 
	ld b,b			;3e63	40 	@ 
	rst 38h			;3e64	ff 	. 
	cp a			;3e65	bf 	. 
	rst 38h			;3e66	ff 	. 
	rst 38h			;3e67	ff 	. 
	cp 0ffh		;3e68	fe ff 	. . 
	jr c,l3df4h		;3e6a	38 88 	8 . 
	and d			;3e6c	a2 	. 
	add a,e			;3e6d	83 	. 
	ret c			;3e6e	d8 	. 
	add a,0f0h		;3e6f	c6 f0 	. . 
	ld a,a			;3e71	7f 	 
	rst 18h			;3e72	df 	. 
	ld (de),a			;3e73	12 	. 
	ld b,b			;3e74	40 	@ 
	ld d,h			;3e75	54 	T 
	cp b			;3e76	b8 	. 
	add hl,sp			;3e77	39 	9 
	cp 0efh		;3e78	fe ef 	. . 
	add a,e			;3e7a	83 	. 
	add a,b			;3e7b	80 	. 
	rst 38h			;3e7c	ff 	. 
	ld a,a			;3e7d	7f 	 
	nop			;3e7e	00 	. 
sub_3e7fh:
	ld bc,0bfffh		;3e7f	01 ff bf 	. . . 
	rra			;3e82	1f 	. 
	rlca			;3e83	07 	. 
	ex (sp),hl			;3e84	e3 	. 
l3e85h:
	add a,b			;3e85	80 	. 
	rst 38h			;3e86	ff 	. 
	ld a,a			;3e87	7f 	 
	nop			;3e88	00 	. 
	ld bc,0efffh		;3e89	01 ff ef 	. . . 
	rst 0			;3e8c	c7 	. 
	add hl,sp			;3e8d	39 	9 
	ld b,l			;3e8e	45 	E 
	ld (de),a			;3e8f	12 	. 
	jp z,l1780h		;3e90	ca 80 17 	. . . 
	ld h,a			;3e93	67 	g 
	rra			;3e94	1f 	. 
	defb 0fdh,0f0h,090h	;illegal sequence		;3e95	fd f0 90 	. . . 
	ld hl,(0818ah)		;3e98	2a 8a 81 	* . . 
	ld b,l			;3e9b	45 	E 
	rst 38h			;3e9c	ff 	. 
	rst 38h			;3e9d	ff 	. 
	ld a,l			;3e9e	7d 	} 
	nop			;3e9f	00 	. 
	nop			;3ea0	00 	. 
	nop			;3ea1	00 	. 
	inc b			;3ea2	04 	. 
	rst 38h			;3ea3	ff 	. 
	jp p,083c0h		;3ea4	f2 c0 83 	. . . 
	and b			;3ea7	a0 	. 
	nop			;3ea8	00 	. 
	inc b			;3ea9	04 	. 
	rst 38h			;3eaa	ff 	. 
	cp 038h		;3eab	fe 38 	. 8 
	djnz l3e85h		;3ead	10 d6 	. . 
	ld b,e			;3eaf	43 	C 
	ld bc,l0100h		;3eb0	01 00 01 	. . . 
	nop			;3eb3	00 	. 
	add a,b			;3eb4	80 	. 
	and b			;3eb5	a0 	. 
	ret nz			;3eb6	c0 	. 
	ld (hl),b			;3eb7	70 	p 
	rra			;3eb8	1f 	. 
	ld h,b			;3eb9	60 	` 
	rst 38h			;3eba	ff 	. 
	and c			;3ebb	a1 	. 
	djnz l3ed2h		;3ebc	10 14 	. . 
	jr c,$-16		;3ebe	38 ee 	8 . 
	add a,e			;3ec0	83 	. 
	nop			;3ec1	00 	. 
	inc b			;3ec2	04 	. 
	rst 38h			;3ec3	ff 	. 
	ld e,a			;3ec4	5f 	_ 
	rlca			;3ec5	07 	. 
	ld h,d			;3ec6	62 	b 
	ld a,(de)			;3ec7	1a 	. 
	nop			;3ec8	00 	. 
	inc b			;3ec9	04 	. 
	rst 38h			;3eca	ff 	. 
	rst 10h			;3ecb	d7 	. 
	ld bc,l0100h		;3ecc	01 00 01 	. . . 
	nop			;3ecf	00 	. 
	ld a,(de)			;3ed0	1a 	. 
	ld h,h			;3ed1	64 	d 
l3ed2h:
	inc d			;3ed2	14 	. 
	nop			;3ed3	00 	. 
	ld bc,08200h		;3ed4	01 00 82 	. . . 
	ld (bc),a			;3ed7	02 	. 
	daa			;3ed8	27 	' 
	dec e			;3ed9	1d 	. 
	ret p			;3eda	f0 	. 
	dec c			;3edb	0d 	. 
	dec d			;3edc	15 	. 
	ld bc,l00fdh+2		;3edd	01 ff 00 	. . . 
	ld bc,07cc7h		;3ee0	01 c7 7c 	. . | 
	nop			;3ee3	00 	. 
	nop			;3ee4	00 	. 
	call m,sub_0300h		;3ee5	fc 00 03 	. . . 
	rst 38h			;3ee8	ff 	. 
	defb 0fdh,000h,001h	;illegal sequence		;3ee9	fd 00 01 	. . . 
	rst 38h			;3eec	ff 	. 
	call m,0f9dfh		;3eed	fc df f9 	. . . 
	nop			;3ef0	00 	. 
	ld b,0ffh		;3ef1	06 ff 	. . 
	add hl,sp			;3ef3	39 	9 
	cp h			;3ef4	bc 	. 
	cp 0ffh		;3ef5	fe ff 	. . 
	rst 38h			;3ef7	ff 	. 
	rst 18h			;3ef8	df 	. 
	nop			;3ef9	00 	. 
	inc bc			;3efa	03 	. 
	rst 38h			;3efb	ff 	. 
	sbc a,a			;3efc	9f 	. 
	rst 38h			;3efd	ff 	. 
	ld e,(hl)			;3efe	5e 	^ 
	nop			;3eff	00 	. 
l3f00h:
	ld bc,0fbffh		;3f00	01 ff fb 	. . . 
l3f03h:
	nop			;3f03	00 	. 
	inc bc			;3f04	03 	. 
	rst 38h			;3f05	ff 	. 
	ld sp,hl			;3f06	f9 	. 
	nop			;3f07	00 	. 
	inc bc			;3f08	03 	. 
	rst 38h			;3f09	ff 	. 
	cp a			;3f0a	bf 	. 
	nop			;3f0b	00 	. 
	ld bc,09fffh		;3f0c	01 ff 9f 	. . . 
	rst 20h			;3f0f	e7 	. 
	ld sp,hl			;3f10	f9 	. 
	nop			;3f11	00 	. 
	inc bc			;3f12	03 	. 
	rst 38h			;3f13	ff 	. 
	rst 28h			;3f14	ef 	. 
	rst 38h			;3f15	ff 	. 
	rst 38h			;3f16	ff 	. 
	push hl			;3f17	e5 	. 
	sbc a,e			;3f18	9b 	. 
	ex de,hl			;3f19	eb 	. 
	nop			;3f1a	00 	. 
	ld bc,07fffh		;3f1b	01 ff 7f 	. .  
	nop			;3f1e	00 	. 
	ld bc,0dfffh		;3f1f	01 ff df 	. . . 
	rst 38h			;3f22	ff 	. 
	rst 38h			;3f23	ff 	. 
	jp p,0feeah		;3f24	f2 ea fe 	. . . 
	nop			;3f27	00 	. 
	dec b			;3f28	05 	. 
	rst 38h			;3f29	ff 	. 
	nop			;3f2a	00 	. 
	nop			;3f2b	00 	. 
	add a,b			;3f2c	80 	. 
	rst 38h			;3f2d	ff 	. 
	nop			;3f2e	00 	. 
	nop			;3f2f	00 	. 
	ld bc,0f0ffh		;3f30	01 ff f0 	. . . 
	ret nz			;3f33	c0 	. 
	adc a,h			;3f34	8c 	. 
	sbc a,b			;3f35	98 	. 
	ld b,b			;3f36	40 	@ 
	rst 38h			;3f37	ff 	. 
	add a,c			;3f38	81 	. 
	nop			;3f39	00 	. 
	ld bc,0feffh		;3f3a	01 ff fe 	. . . 
	jr c,$+1		;3f3d	38 ff 	8 . 
	ld de,05824h		;3f3f	11 24 58 	. $ X 
	ld e,h			;3f42	5c 	\ 
	and a			;3f43	a7 	. 
	sbc a,b			;3f44	98 	. 
	rst 8			;3f45	cf 	. 
	ld (hl),b			;3f46	70 	p 
	rra			;3f47	1f 	. 
	dec c			;3f48	0d 	. 
	rst 38h			;3f49	ff 	. 
	ld a,(bc)			;3f4a	0a 	. 
	ld d,l			;3f4b	55 	U 
	jp nc,0ee39h		;3f4c	d2 39 ee 	. 9 . 
	add a,e			;3f4f	83 	. 
	add a,b			;3f50	80 	. 
	rst 38h			;3f51	ff 	. 
	ld bc,l0100h		;3f52	01 00 01 	. . . 
	rst 38h			;3f55	ff 	. 
	rra			;3f56	1f 	. 
	rlca			;3f57	07 	. 
l3f58h:
	add a,d			;3f58	82 	. 
	ld (bc),a			;3f59	02 	. 
	add a,b			;3f5a	80 	. 
	rst 38h			;3f5b	ff 	. 
	ld bc,l0100h		;3f5c	01 00 01 	. . . 
	rst 38h			;3f5f	ff 	. 
	rst 0			;3f60	c7 	. 
	ld bc,l0100h		;3f61	01 00 01 	. . . 
	nop			;3f64	00 	. 
	and b			;3f65	a0 	. 
	adc a,c			;3f66	89 	. 
	ld hl,06a35h		;3f67	21 35 6a 	! 5 j 
	ld a,(de)			;3f6a	1a 	. 
	rst 0			;3f6b	c7 	. 
	dec e			;3f6c	1d 	. 
	ret p			;3f6d	f0 	. 
	ld h,b			;3f6e	60 	` 
	ld b,b			;3f6f	40 	@ 
	ld d,h			;3f70	54 	T 
sub_3f71h:
	ld l,h			;3f71	6c 	l 
	cp d			;3f72	ba 	. 
	ld bc,07cc7h		;3f73	01 c7 7c 	. . | 
	nop			;3f76	00 	. 
	nop			;3f77	00 	. 
	nop			;3f78	00 	. 
	nop			;3f79	00 	. 
	nop			;3f7a	00 	. 
	nop			;3f7b	00 	. 
	nop			;3f7c	00 	. 
	nop			;3f7d	00 	. 
	nop			;3f7e	00 	. 
	nop			;3f7f	00 	. 
	nop			;3f80	00 	. 
	nop			;3f81	00 	. 
	nop			;3f82	00 	. 
	nop			;3f83	00 	. 
	nop			;3f84	00 	. 
	nop			;3f85	00 	. 
	nop			;3f86	00 	. 
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
	ret po			;3fc0	e0 	. 
	ret po			;3fc1	e0 	. 
	nop			;3fc2	00 	. 
	nop			;3fc3	00 	. 
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
