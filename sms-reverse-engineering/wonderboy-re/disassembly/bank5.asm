; z80dasm 1.1.5
; command line: z80dasm -a -l -t -g 0x0000 -o disassembly/bank5.asm disassembly/bank5.bin

	org	00000h

l0000h:
	nop			;0000	00 	. 
sub_0001h:
	ex af,af'			;0001	08 	. 
	rst 38h			;0002	ff 	. 
l0003h:
	nop			;0003	00 	. 
l0004h:
	ld bc,l3800h		;0004	01 00 38 	. . 8 
	pop af			;0007	f1 	. 
	ex de,hl			;0008	eb 	. 
	rst 28h			;0009	ef 	. 
	nop			;000a	00 	. 
	inc bc			;000b	03 	. 
	rst 38h			;000c	ff 	. 
	nop			;000d	00 	. 
	ex af,af'			;000e	08 	. 
l000fh:
	nop			;000f	00 	. 
	nop			;0010	00 	. 
	inc bc			;0011	03 	. 
	rst 38h			;0012	ff 	. 
	ccf			;0013	3f 	? 
	rlca			;0014	07 	. 
	nop			;0015	00 	. 
	inc bc			;0016	03 	. 
	nop			;0017	00 	. 
	nop			;0018	00 	. 
	ld bc,0f3ffh		;0019	01 ff f3 	. . . 
	ret nz			;001c	c0 	. 
	rst 38h			;001d	ff 	. 
sub_001eh:
	nop			;001e	00 	. 
sub_001fh:
	jr nz,l006bh		;001f	20 4a 	  J 
	jp c,0ffffh		;0021	da ff ff 	. . . 
	call m,sub_0300h		;0024	fc 00 03 	. . . 
	nop			;0027	00 	. 
	inc b			;0028	04 	. 
	add hl,hl			;0029	29 	) 
	di			;002a	f3 	. 
	nop			;002b	00 	. 
	ld bc,07effh		;002c	01 ff 7e 	. . ~ 
	jr l0031h		;002f	18 00 	. . 
l0031h:
	inc bc			;0031	03 	. 
	nop			;0032	00 	. 
	add hl,bc			;0033	09 	. 
	sbc a,000h		;0034	de 00 	. . 
	ld bc,073ffh		;0036	01 ff 73 	. . s 
	ld bc,l0100h		;0039	01 00 01 	. . . 
l003ch:
	nop			;003c	00 	. 
	ld (bc),a			;003d	02 	. 
	inc d			;003e	14 	. 
sub_003fh:
	ld l,l			;003f	6d 	m 
	pop af			;0040	f1 	. 
	cp l			;0041	bd 	. 
	nop			;0042	00 	. 
	ld b,0ffh		;0043	06 ff 	. . 
	rla			;0045	17 	. 
	inc d			;0046	14 	. 
	dec d			;0047	15 	. 
	nop			;0048	00 	. 
	inc b			;0049	04 	. 
	inc d			;004a	14 	. 
	rla			;004b	17 	. 
	nop			;004c	00 	. 
	ex af,af'			;004d	08 	. 
	inc d			;004e	14 	. 
	add a,a			;004f	87 	. 
	rst 38h			;0050	ff 	. 
l0051h:
	add a,e			;0051	83 	. 
	adc a,a			;0052	8f 	. 
	add a,e			;0053	83 	. 
	add a,a			;0054	87 	. 
	rst 38h			;0055	ff 	. 
	add a,e			;0056	83 	. 
	rst 8			;0057	cf 	. 
	rst 0			;0058	c7 	. 
	rst 18h			;0059	df 	. 
	rst 0			;005a	c7 	. 
	rst 8			;005b	cf 	. 
	rst 38h			;005c	ff 	. 
	add a,a			;005d	87 	. 
	sbc a,a			;005e	9f 	. 
	adc a,(hl)			;005f	8e 	. 
	add a,d			;0060	82 	. 
	add a,(hl)			;0061	86 	. 
	sbc a,(hl)			;0062	9e 	. 
	add a,d			;0063	82 	. 
	adc a,(hl)			;0064	8e 	. 
	rst 38h			;0065	ff 	. 
	add a,d			;0066	82 	. 
	rla			;0067	17 	. 
	nop			;0068	00 	. 
	rlca			;0069	07 	. 
	inc d			;006a	14 	. 
l006bh:
	nop			;006b	00 	. 
	dec b			;006c	05 	. 
	push bc			;006d	c5 	. 
	nop			;006e	00 	. 
	inc bc			;006f	03 	. 
	ld b,l			;0070	45 	E 
l0071h:
	nop			;0071	00 	. 
	ex af,af'			;0072	08 	. 
	ld b,b			;0073	40 	@ 
	nop			;0074	00 	. 
	ex af,af'			;0075	08 	. 
	ld b,l			;0076	45 	E 
	nop			;0077	00 	. 
	ex af,af'			;0078	08 	. 
	inc d			;0079	14 	. 
	jr nz,$+41		;007a	20 27 	  ' 
	ld a,0ffh		;007c	3e ff 	> . 
	inc a			;007e	3c 	< 
	ld a,000h		;007f	3e 00 	> . 
	inc bc			;0081	03 	. 
	ccf			;0082	3f 	? 
	cp a			;0083	bf 	. 
	sbc a,a			;0084	9f 	. 
	rst 38h			;0085	ff 	. 
	rst 18h			;0086	df 	. 
	rst 38h			;0087	ff 	. 
sub_0088h:
	sbc a,a			;0088	9f 	. 
	rra			;0089	1f 	. 
	push hl			;008a	e5 	. 
	nop			;008b	00 	. 
sub_008ch:
	rlca			;008c	07 	. 
	dec h			;008d	25 	% 
	nop			;008e	00 	. 
	inc bc			;008f	03 	. 
	ld a,a			;0090	7f 	 
	ld a,h			;0091	7c 	| 
	ld (hl),b			;0092	70 	p 
	nop			;0093	00 	. 
	inc bc			;0094	03 	. 
	ld b,b			;0095	40 	@ 
	nop			;0096	00 	. 
	ex af,af'			;0097	08 	. 
	nop			;0098	00 	. 
	rst 10h			;0099	d7 	. 
	call 0ddffh		;009a	cd ff dd 	. . . 
	sbc a,09fh		;009d	de 9f 	. . 
	rst 38h			;009f	ff 	. 
	adc a,a			;00a0	8f 	. 
	nop			;00a1	00 	. 
	ld bc,0e4ffh		;00a2	01 ff e4 	. . . 
	ret po			;00a5	e0 	. 
	pop hl			;00a6	e1 	. 
l00a7h:
	rst 20h			;00a7	e7 	. 
	pop hl			;00a8	e1 	. 
	rst 20h			;00a9	e7 	. 
	pop hl			;00aa	e1 	. 
	rst 8			;00ab	cf 	. 
	rst 38h			;00ac	ff 	. 
	rst 0			;00ad	c7 	. 
	ret po			;00ae	e0 	. 
	ret p			;00af	f0 	. 
	ret c			;00b0	d8 	. 
	call z,0e3c7h		;00b1	cc c7 e3 	. . . 
	and a			;00b4	a7 	. 
	and e			;00b5	a3 	. 
	jr nz,$+37		;00b6	20 23 	  # 
	rst 38h			;00b8	ff 	. 
	ld hl,l00e1h		;00b9	21 e1 00 	! . . 
	jr nz,$+1		;00bc	20 ff 	  . 
	sub a			;00be	97 	. 
	or l			;00bf	b5 	. 
sub_00c0h:
	or a			;00c0	b7 	. 
l00c1h:
	ld c,a			;00c1	4f 	O 
	sbc a,d			;00c2	9a 	. 
	call m,sub_2dc5h		;00c3	fc c5 2d 	. . - 
	ld h,h			;00c6	64 	d 
l00c7h:
	ld l,l			;00c7	6d 	m 
	and a			;00c8	a7 	. 
	or h			;00c9	b4 	. 
	cp e			;00ca	bb 	. 
	adc a,e			;00cb	8b 	. 
	sub 054h		;00cc	d6 54 	. T 
	ret			;00ce	c9 	. 
	ld bc,l00ffh		;00cf	01 ff 00 	. . . 
	ld bc,0ad07h		;00d2	01 07 ad 	. . . 
	ld e,a			;00d5	5f 	_ 
	push bc			;00d6	c5 	. 
	adc a,b			;00d7	88 	. 
	ld h,b			;00d8	60 	` 
	nop			;00d9	00 	. 
	ld bc,04000h		;00da	01 00 40 	. . @ 
	call p,0eebfh		;00dd	f4 bf ee 	. . . 
sub_00e0h:
	nop			;00e0	00 	. 
l00e1h:
	ex af,af'			;00e1	08 	. 
l00e2h:
	adc a,e			;00e2	8b 	. 
l00e3h:
	nop			;00e3	00 	. 
	ex af,af'			;00e4	08 	. 
sub_00e5h:
	add a,h			;00e5	84 	. 
	nop			;00e6	00 	. 
	inc b			;00e7	04 	. 
	adc a,e			;00e8	8b 	. 
	dec bc			;00e9	0b 	. 
	add a,a			;00ea	87 	. 
	rst 38h			;00eb	ff 	. 
	rst 38h			;00ec	ff 	. 
	rst 38h			;00ed	ff 	. 
	add a,h			;00ee	84 	. 
	sbc a,b			;00ef	98 	. 
sub_00f0h:
	adc a,(hl)			;00f0	8e 	. 
	rra			;00f1	1f 	. 
	nop			;00f2	00 	. 
	inc bc			;00f3	03 	. 
l00f4h:
	rst 38h			;00f4	ff 	. 
	nop			;00f5	00 	. 
	ex af,af'			;00f6	08 	. 
l00f7h:
	dec b			;00f7	05 	. 
sub_00f8h:
	nop			;00f8	00 	. 
sub_00f9h:
	ex af,af'			;00f9	08 	. 
	rst 38h			;00fa	ff 	. 
	nop			;00fb	00 	. 
l00fch:
	inc bc			;00fc	03 	. 
sub_00fdh:
	dec b			;00fd	05 	. 
sub_00feh:
	dec (hl)			;00fe	35 	5 
l00ffh:
	dec e			;00ff	1d 	. 
l0100h:
	nop			;0100	00 	. 
l0101h:
	ld bc,0feffh		;0101	01 ff fe 	. . . 
	nop			;0104	00 	. 
	add hl,bc			;0105	09 	. 
	rst 38h			;0106	ff 	. 
	nop			;0107	00 	. 
	ex af,af'			;0108	08 	. 
	cpl			;0109	2f 	/ 
	nop			;010a	00 	. 
	ex af,af'			;010b	08 	. 
	jp po,sub_0300h		;010c	e2 00 03 	. . . 
	rst 18h			;010f	df 	. 
	rst 10h			;0110	d7 	. 
	out (0f1h),a		;0111	d3 f1 	. . 
	jp (hl)			;0113	e9 	. 
	defb 0fdh,000h,008h	;illegal sequence		;0114	fd 00 08 	. . . 
	push bc			;0117	c5 	. 
	nop			;0118	00 	. 
	ex af,af'			;0119	08 	. 
	pop hl			;011a	e1 	. 
	rst 38h			;011b	ff 	. 
	rst 38h			;011c	ff 	. 
	ld a,a			;011d	7f 	 
	ccf			;011e	3f 	? 
	nop			;011f	00 	. 
	inc b			;0120	04 	. 
	cpl			;0121	2f 	/ 
	nop			;0122	00 	. 
	ex af,af'			;0123	08 	. 
	jp nz,l0800h		;0124	c2 00 08 	. . . 
	rla			;0127	17 	. 
	nop			;0128	00 	. 
	ex af,af'			;0129	08 	. 
	ld e,a			;012a	5f 	_ 
	ld sp,hl			;012b	f9 	. 
	rst 20h			;012c	e7 	. 
	adc a,a			;012d	8f 	. 
	ccf			;012e	3f 	? 
	nop			;012f	00 	. 
	ld bc,0fdffh		;0130	01 ff fd 	. . . 
	cp 000h		;0133	fe 00 	. . 
	ld bc,l00ffh		;0135	01 ff 00 	. . . 
	inc bc			;0138	03 	. 
	rra			;0139	1f 	. 
	ld h,e			;013a	63 	c 
	add a,c			;013b	81 	. 
	rst 20h			;013c	e7 	. 
	rst 38h			;013d	ff 	. 
	rst 38h			;013e	ff 	. 
	ei			;013f	fb 	. 
	rst 38h			;0140	ff 	. 
	ret p			;0141	f0 	. 
	rst 38h			;0142	ff 	. 
	ret nc			;0143	d0 	. 
	rst 38h			;0144	ff 	. 
	djnz $-14		;0145	10 f0 	. . 
	rst 38h			;0147	ff 	. 
	rst 38h			;0148	ff 	. 
	rst 28h			;0149	ef 	. 
	di			;014a	f3 	. 
	call m,l0100h		;014b	fc 00 01 	. . . 
	rst 38h			;014e	ff 	. 
	rra			;014f	1f 	. 
	pop hl			;0150	e1 	. 
	nop			;0151	00 	. 
	dec b			;0152	05 	. 
	rst 38h			;0153	ff 	. 
	rlca			;0154	07 	. 
	ret m			;0155	f8 	. 
	nop			;0156	00 	. 
	ld bc,0cfffh		;0157	01 ff cf 	. . . 
	add a,(hl)			;015a	86 	. 
	rst 38h			;015b	ff 	. 
	nop			;015c	00 	. 
	inc a			;015d	3c 	< 
	cp a			;015e	bf 	. 
	cp h			;015f	bc 	. 
	cp b			;0160	b8 	. 
	ccf			;0161	3f 	? 
	nop			;0162	00 	. 
	dec b			;0163	05 	. 
	rra			;0164	1f 	. 
	nop			;0165	00 	. 
	ld bc,l1fffh		;0166	01 ff 1f 	. . . 
	nop			;0169	00 	. 
	inc bc			;016a	03 	. 
	rst 38h			;016b	ff 	. 
	cp 0e0h		;016c	fe e0 	. . 
	inc bc			;016e	03 	. 
	rrca			;016f	0f 	. 
	nop			;0170	00 	. 
	ld bc,0fdffh		;0171	01 ff fd 	. . . 
	sub c			;0174	91 	. 
	add a,c			;0175	81 	. 
	add a,e			;0176	83 	. 
	adc a,a			;0177	8f 	. 
	add a,e			;0178	83 	. 
	add a,a			;0179	87 	. 
	add a,e			;017a	83 	. 
	nop			;017b	00 	. 
	ld de,0f8ffh		;017c	11 ff f8 	. . . 
	ret po			;017f	e0 	. 
	nop			;0180	00 	. 
	inc bc			;0181	03 	. 
	ret nz			;0182	c0 	. 
	ret po			;0183	e0 	. 
	ret p			;0184	f0 	. 
	cp 0f8h		;0185	fe f8 	. . 
	jr nc,l0199h		;0187	30 10 	0 . 
	ex af,af'			;0189	08 	. 
	djnz $+1		;018a	10 ff 	. . 
	nop			;018c	00 	. 
	ret z			;018d	c8 	. 
	add a,b			;018e	80 	. 
	rst 38h			;018f	ff 	. 
	nop			;0190	00 	. 
	rst 38h			;0191	ff 	. 
	add a,b			;0192	80 	. 
	ret p			;0193	f0 	. 
l0194h:
	nop			;0194	00 	. 
	ld bc,l00ffh		;0195	01 ff 00 	. . . 
	dec b			;0198	05 	. 
l0199h:
	nop			;0199	00 	. 
	jr nz,l0194h		;019a	20 f8 	  . 
	nop			;019c	00 	. 
	ld bc,l00ffh		;019d	01 ff 00 	. . . 
	ex af,af'			;01a0	08 	. 
	nop			;01a1	00 	. 
	nop			;01a2	00 	. 
	ld bc,l0fffh		;01a3	01 ff 0f 	. . . 
	inc bc			;01a6	03 	. 
	ld b,000h		;01a7	06 00 	. . 
	inc bc			;01a9	03 	. 
	inc b			;01aa	04 	. 
	ld (bc),a			;01ab	02 	. 
	nop			;01ac	00 	. 
	inc b			;01ad	04 	. 
	nop			;01ae	00 	. 
	rst 38h			;01af	ff 	. 
	djnz l01d2h		;01b0	10 20 	.   
	adc a,000h		;01b2	ce 00 	. . 
	ld b,000h		;01b4	06 00 	. . 
	ld bc,l000fh		;01b6	01 0f 00 	. . . 
	ld bc,0f8ffh		;01b9	01 ff f8 	. . . 
	add a,b			;01bc	80 	. 
	nop			;01bd	00 	. 
	dec b			;01be	05 	. 
	nop			;01bf	00 	. 
	nop			;01c0	00 	. 
	ld bc,07fffh		;01c1	01 ff 7f 	. .  
	nop			;01c4	00 	. 
	inc bc			;01c5	03 	. 
	rra			;01c6	1f 	. 
	inc hl			;01c7	23 	# 
	ld bc,l0600h		;01c8	01 00 06 	. . . 
	nop			;01cb	00 	. 
	ld b,b			;01cc	40 	@ 
	ret po			;01cd	e0 	. 
	ret m			;01ce	f8 	. 
	nop			;01cf	00 	. 
	inc b			;01d0	04 	. 
	nop			;01d1	00 	. 
l01d2h:
	ld (bc),a			;01d2	02 	. 
	add hl,bc			;01d3	09 	. 
	inc sp			;01d4	33 	3 
	nop			;01d5	00 	. 
	ld bc,0ffffh		;01d6	01 ff ff 	. . . 
	nop			;01d9	00 	. 
	ld (hl),b			;01da	70 	p 
	dec a			;01db	3d 	= 
	ld a,a			;01dc	7f 	 
	nop			;01dd	00 	. 
	inc bc			;01de	03 	. 
	rst 38h			;01df	ff 	. 
	nop			;01e0	00 	. 
	ld bc,l3800h		;01e1	01 00 38 	. . 8 
	pop af			;01e4	f1 	. 
	ex de,hl			;01e5	eb 	. 
	rst 28h			;01e6	ef 	. 
	nop			;01e7	00 	. 
	ld de,0fcffh		;01e8	11 ff fc 	. . . 
	ret p			;01eb	f0 	. 
	rlca			;01ec	07 	. 
	add hl,sp			;01ed	39 	9 
	ex af,af'			;01ee	08 	. 
	nop			;01ef	00 	. 
sub_01f0h:
	ld bc,l1400h		;01f0	01 00 14 	. . . 
	ld h,b			;01f3	60 	` 
	ld b,000h		;01f4	06 00 	. . 
	ld bc,l0000h		;01f6	01 00 00 	. . . 
	ld b,07fh		;01f9	06 7f 	.  
	ld b,a			;01fb	47 	G 
	ld b,b			;01fc	40 	@ 
	nop			;01fd	00 	. 
	inc bc			;01fe	03 	. 
l01ffh:
	rst 38h			;01ff	ff 	. 
l0200h:
	ret m			;0200	f8 	. 
	ret nz			;0201	c0 	. 
	rst 38h			;0202	ff 	. 
	nop			;0203	00 	. 
	ld h,000h		;0204	26 00 	& . 
	inc bc			;0206	03 	. 
	rst 38h			;0207	ff 	. 
	rrca			;0208	0f 	. 
	ret po			;0209	e0 	. 
	jr c,l0218h		;020a	38 0c 	8 . 
	ld e,000h		;020c	1e 00 	. . 
	ex af,af'			;020e	08 	. 
	jp po,l0800h		;020f	e2 00 08 	. . . 
	inc d			;0212	14 	. 
	nop			;0213	00 	. 
	dec b			;0214	05 	. 
	rst 38h			;0215	ff 	. 
	jr c,$+15		;0216	38 0d 	8 . 
l0218h:
	ld (0fbfeh),hl		;0218	22 fe fb 	" . . 
	call pe,0c6b1h		;021b	ec b1 c6 	. . . 
	dec e			;021e	1d 	. 
	in a,(0e6h)		;021f	db e6 	. . 
	nop			;0221	00 	. 
	inc b			;0222	04 	. 
	rst 38h			;0223	ff 	. 
	defb 0fdh,0f7h,0ech	;illegal sequence		;0224	fd f7 ec 	. . . 
	or c			;0227	b1 	. 
	nop			;0228	00 	. 
	ld bc,0f0ffh		;0229	01 ff f0 	. . . 
	sbc a,06fh		;022c	de 6f 	. o 
	and h			;022e	a4 	. 
	ld e,c			;022f	59 	Y 
	and d			;0230	a2 	. 
	ld h,c			;0231	61 	a 
	add a,019h		;0232	c6 19 	. . 
	ld h,e			;0234	63 	c 
	adc a,h			;0235	8c 	. 
	or b			;0236	b0 	. 
	pop hl			;0237	e1 	. 
	add a,(hl)			;0238	86 	. 
	rla			;0239	17 	. 
	call nz,0950ah		;023a	c4 0a 95 	. . . 
sub_023dh:
	dec l			;023d	2d 	- 
	ld e,d			;023e	5a 	Z 
	sbc a,d			;023f	9a 	. 
	or h			;0240	b4 	. 
	ld (hl),h			;0241	74 	t 
	nop			;0242	00 	. 
	ld bc,l0fffh		;0243	01 ff 0f 	. . . 
	ld b,e			;0246	43 	C 
	ld hl,06b82h		;0247	21 82 6b 	! . k 
	call nz,sub_0088h		;024a	c4 88 00 	. . . 
	inc b			;024d	04 	. 
	rst 38h			;024e	ff 	. 
	ld a,a			;024f	7f 	 
	ccf			;0250	3f 	? 
	rra			;0251	1f 	. 
	rst 8			;0252	cf 	. 
	ld h,d			;0253	62 	b 
	ld l,l			;0254	6d 	m 
	sub 031h		;0255	d6 31 	. 1 
	ex de,hl			;0257	eb 	. 
	ld e,b			;0258	58 	X 
	dec d			;0259	15 	. 
	ld (hl),h			;025a	74 	t 
	ld h,a			;025b	67 	g 
	ld de,046b8h		;025c	11 b8 46 	. . F 
	inc sp			;025f	33 	3 
	ret c			;0260	d8 	. 
	call z,sub_1737h		;0261	cc 37 17 	. 7 . 
	nop			;0264	00 	. 
	rlca			;0265	07 	. 
	inc d			;0266	14 	. 
	ret nz			;0267	c0 	. 
	jp 0c7c1h		;0268	c3 c1 c7 	. . . 
	jp 04341h		;026b	c3 41 43 	. A C 
	ld b,c			;026e	41 	A 
	nop			;026f	00 	. 
	inc b			;0270	04 	. 
	rst 38h			;0271	ff 	. 
	sbc a,a			;0272	9f 	. 
	pop hl			;0273	e1 	. 
	ld a,b			;0274	78 	x 
	inc bc			;0275	03 	. 
	nop			;0276	00 	. 
	ld b,0ffh		;0277	06 ff 	. . 
	rrca			;0279	0f 	. 
	nop			;027a	00 	. 
	ld bc,l0000h		;027b	01 00 00 	. . . 
	ex af,af'			;027e	08 	. 
	pop af			;027f	f1 	. 
	nop			;0280	00 	. 
	ex af,af'			;0281	08 	. 
	ld (hl),c			;0282	71 	q 
	nop			;0283	00 	. 
	ld a,(bc)			;0284	0a 	. 
	rst 38h			;0285	ff 	. 
	rst 30h			;0286	f7 	. 
	di			;0287	f3 	. 
	ld sp,hl			;0288	f9 	. 
	ret m			;0289	f8 	. 
	cp 0ffh		;028a	fe ff 	. . 
	rst 38h			;028c	ff 	. 
	cp 0fch		;028d	fe fc 	. . 
	ret m			;028f	f8 	. 
	pop hl			;0290	e1 	. 
	nop			;0291	00 	. 
	inc bc			;0292	03 	. 
	rst 38h			;0293	ff 	. 
	nop			;0294	00 	. 
	inc bc			;0295	03 	. 
	ld l,a			;0296	6f 	o 
	nop			;0297	00 	. 
	ld bc,0dfffh		;0298	01 ff df 	. . . 
	cp a			;029b	bf 	. 
	ld a,a			;029c	7f 	 
	nop			;029d	00 	. 
	ld bc,l07ffh		;029e	01 ff 07 	. . . 
	ret po			;02a1	e0 	. 
	defb 0fdh,006h,0e9h	;illegal sequence		;02a2	fd 06 e9 	. . . 
	ld (hl),0c9h		;02a5	36 c9 	6 . 
	dec (hl)			;02a7	35 	5 
	ret po			;02a8	e0 	. 
	pop de			;02a9	d1 	. 
	ld (l12cdh),hl		;02aa	22 cd 12 	" . . 
	inc h			;02ad	24 	$ 
	ret			;02ae	c9 	. 
	sub d			;02af	92 	. 
	nop			;02b0	00 	. 
	djnz $+1		;02b1	10 ff 	. . 
	rst 0			;02b3	c7 	. 
	ld d,078h		;02b4	16 78 	. x 
	jp po,l0701h		;02b6	e2 01 07 	. . . 
	ex af,af'			;02b9	08 	. 
	dec a			;02ba	3d 	= 
	ld (0e874h),hl		;02bb	22 74 e8 	" t . 
	adc a,b			;02be	88 	. 
	ld d,c			;02bf	51 	Q 
	out (0a7h),a		;02c0	d3 a7 	. . 
	call z,08844h		;02c2	cc 44 88 	. D . 
	ld c,070h		;02c5	0e 70 	. p 
	jr nc,l0311h		;02c7	30 48 	0 H 
	jr nz,l0344h		;02c9	20 79 	  y 
	ld bc,02047h		;02cb	01 47 20 	. G   
	ld b,c			;02ce	41 	A 
	ret nz			;02cf	c0 	. 
	ld h,b			;02d0	60 	` 
	nop			;02d1	00 	. 
	ld bc,01800h		;02d2	01 00 18 	. . . 
	jr nz,$-60		;02d5	20 c2 	  . 
	ret po			;02d7	e0 	. 
	nop			;02d8	00 	. 
	ld bc,0c000h		;02d9	01 00 c0 	. . . 
	nop			;02dc	00 	. 
	ld bc,08000h		;02dd	01 00 80 	. . . 
	nop			;02e0	00 	. 
	ld bc,l0400h		;02e1	01 00 04 	. . . 
	ld a,(l0608h)		;02e4	3a 08 06 	: . . 
	nop			;02e7	00 	. 
	ld bc,02300h		;02e8	01 00 23 	. . # 
	rst 38h			;02eb	ff 	. 
	nop			;02ec	00 	. 
	add hl,bc			;02ed	09 	. 
	add a,h			;02ee	84 	. 
	add a,d			;02ef	82 	. 
	ld d,c			;02f0	51 	Q 
	ld c,e			;02f1	4b 	K 
	ret pe			;02f2	e8 	. 
	dec h			;02f3	25 	% 
	or 018h		;02f4	f6 18 	. . 
	ret nz			;02f6	c0 	. 
	ld d,b			;02f7	50 	P 
	ld hl,0cb9ch		;02f8	21 9c cb 	! . . 
	sub 07ch		;02fb	d6 7c 	. | 
	rst 38h			;02fd	ff 	. 
	inc bc			;02fe	03 	. 
l02ffh:
	dec b			;02ff	05 	. 
sub_0300h:
	rla			;0300	17 	. 
sub_0301h:
	cp 074h		;0301	fe 74 	. t 
	ld e,b			;0303	58 	X 
	ret p			;0304	f0 	. 
l0305h:
	sbc a,b			;0305	98 	. 
	ld (hl),b			;0306	70 	p 
	jp nz,l0e81h		;0307	c2 81 0e 	. . . 
	inc b			;030a	04 	. 
	ex af,af'			;030b	08 	. 
	jr c,l030eh		;030c	38 00 	8 . 
l030eh:
	inc b			;030e	04 	. 
	rst 38h			;030f	ff 	. 
	pop af			;0310	f1 	. 
l0311h:
	ex (sp),hl			;0311	e3 	. 
	rst 0			;0312	c7 	. 
	nop			;0313	00 	. 
	inc bc			;0314	03 	. 
	rst 38h			;0315	ff 	. 
	rst 38h			;0316	ff 	. 
	cp 0ffh		;0317	fe ff 	. . 
	defb 0fdh,0ffh,0fch	;illegal sequence		;0319	fd ff fc 	. . . 
	nop			;031c	00 	. 
	ex af,af'			;031d	08 	. 
	rst 38h			;031e	ff 	. 
	cp 0beh		;031f	fe be 	. . 
	rst 18h			;0321	df 	. 
	nop			;0322	00 	. 
	ld bc,l00ffh		;0323	01 ff 00 	. . . 
	inc b			;0326	04 	. 
	rst 28h			;0327	ef 	. 
	cp a			;0328	bf 	. 
	ld a,a			;0329	7f 	 
	nop			;032a	00 	. 
	inc b			;032b	04 	. 
	rst 38h			;032c	ff 	. 
	call m,sub_3f71h		;032d	fc 71 3f 	. q ? 
	sbc a,a			;0330	9f 	. 
	adc a,a			;0331	8f 	. 
	rst 8			;0332	cf 	. 
	rst 38h			;0333	ff 	. 
	rst 20h			;0334	e7 	. 
	rst 38h			;0335	ff 	. 
	ex (sp),hl			;0336	e3 	. 
	inc bc			;0337	03 	. 
	rrca			;0338	0f 	. 
	dec de			;0339	1b 	. 
	rst 30h			;033a	f7 	. 
	rst 38h			;033b	ff 	. 
	rst 28h			;033c	ef 	. 
	rst 38h			;033d	ff 	. 
	rst 18h			;033e	df 	. 
sub_033fh:
	rst 20h			;033f	e7 	. 
	rst 0			;0340	c7 	. 
	sbc a,a			;0341	9f 	. 
	ld a,a			;0342	7f 	 
	nop			;0343	00 	. 
l0344h:
	ld bc,0c7ffh		;0344	01 ff c7 	. . . 
	ex (sp),hl			;0347	e3 	. 
	pop hl			;0348	e1 	. 
	nop			;0349	00 	. 
	ld bc,0e4ffh		;034a	01 ff e4 	. . . 
	ret po			;034d	e0 	. 
	pop hl			;034e	e1 	. 
	ex (sp),hl			;034f	e3 	. 
	pop hl			;0350	e1 	. 
	ex (sp),hl			;0351	e3 	. 
	pop hl			;0352	e1 	. 
	nop			;0353	00 	. 
	ld b,07fh		;0354	06 7f 	.  
	rst 38h			;0356	ff 	. 
	ld e,a			;0357	5f 	_ 
	nop			;0358	00 	. 
	inc bc			;0359	03 	. 
	ex (sp),hl			;035a	e3 	. 
	ret po			;035b	e0 	. 
	ex (sp),hl			;035c	e3 	. 
	nop			;035d	00 	. 
	inc bc			;035e	03 	. 
	pop hl			;035f	e1 	. 
	rst 38h			;0360	ff 	. 
	ld c,a			;0361	4f 	O 
	nop			;0362	00 	. 
	ld b,07fh		;0363	06 7f 	.  
	di			;0365	f3 	. 
	nop			;0366	00 	. 
	ld bc,003ffh		;0367	01 ff 03 	. . . 
	rra			;036a	1f 	. 
	ld a,a			;036b	7f 	 
	nop			;036c	00 	. 
	inc bc			;036d	03 	. 
	rst 38h			;036e	ff 	. 
	nop			;036f	00 	. 
	ex af,af'			;0370	08 	. 
	ld a,a			;0371	7f 	 
	ret nz			;0372	c0 	. 
	jp 0c7c1h		;0373	c3 c1 c7 	. . . 
	jp 0c3c1h		;0376	c3 c1 c3 	. . . 
	pop bc			;0379	c1 	. 
	nop			;037a	00 	. 
	ex af,af'			;037b	08 	. 
	ccf			;037c	3f 	? 
	add a,e			;037d	83 	. 
	adc a,a			;037e	8f 	. 
	add a,c			;037f	81 	. 
	nop			;0380	00 	. 
	inc bc			;0381	03 	. 
	add a,a			;0382	87 	. 
	add a,e			;0383	83 	. 
	adc a,a			;0384	8f 	. 
	nop			;0385	00 	. 
	ex af,af'			;0386	08 	. 
	ccf			;0387	3f 	? 
	add a,e			;0388	83 	. 
	add a,a			;0389	87 	. 
	add a,c			;038a	81 	. 
	add a,l			;038b	85 	. 
	inc bc			;038c	03 	. 
	rst 8			;038d	cf 	. 
	rst 38h			;038e	ff 	. 
	rst 38h			;038f	ff 	. 
	nop			;0390	00 	. 
	inc bc			;0391	03 	. 
	ccf			;0392	3f 	? 
	cp a			;0393	bf 	. 
	ccf			;0394	3f 	? 
	cp a			;0395	bf 	. 
	rst 38h			;0396	ff 	. 
	rst 38h			;0397	ff 	. 
	ld bc,033c1h		;0398	01 c1 33 	. . 3 
	set 4,a		;039b	cb e7 	. . 
	rst 0			;039d	c7 	. 
	rst 38h			;039e	ff 	. 
	ex (sp),hl			;039f	e3 	. 
	ccf			;03a0	3f 	? 
	dec a			;03a1	3d 	= 
	add hl,sp			;03a2	39 	9 
	ld (hl),e			;03a3	73 	s 
	ld a,a			;03a4	7f 	 
	nop			;03a5	00 	. 
	inc bc			;03a6	03 	. 
	rst 38h			;03a7	ff 	. 
	nop			;03a8	00 	. 
	inc bc			;03a9	03 	. 
	ex (sp),hl			;03aa	e3 	. 
	ld h,e			;03ab	63 	c 
	ld b,e			;03ac	43 	C 
	rst 0			;03ad	c7 	. 
	rst 8			;03ae	cf 	. 
	rra			;03af	1f 	. 
	nop			;03b0	00 	. 
	add hl,bc			;03b1	09 	. 
	rst 38h			;03b2	ff 	. 
	rst 38h			;03b3	ff 	. 
	cp 0fah		;03b4	fe fa 	. . 
	call m,0f8f0h		;03b6	fc f0 f8 	. . . 
	add a,c			;03b9	81 	. 
	nop			;03ba	00 	. 
	ld bc,l2000h		;03bb	01 00 20 	. .   
	inc c			;03be	0c 	. 
	nop			;03bf	00 	. 
	dec b			;03c0	05 	. 
	nop			;03c1	00 	. 
	nop			;03c2	00 	. 
	dec b			;03c3	05 	. 
	rst 38h			;03c4	ff 	. 
	rst 20h			;03c5	e7 	. 
	rst 8			;03c6	cf 	. 
	rst 18h			;03c7	df 	. 
	rst 8			;03c8	cf 	. 
	rst 20h			;03c9	e7 	. 
	nop			;03ca	00 	. 
	ld b,0ffh		;03cb	06 ff 	. . 
l03cdh:
	ret po			;03cd	e0 	. 
	ret nz			;03ce	c0 	. 
	ld e,061h		;03cf	1e 61 	. a 
	adc a,(hl)			;03d1	8e 	. 
	inc bc			;03d2	03 	. 
	ret z			;03d3	c8 	. 
	ld (hl),0e0h		;03d4	36 e0 	6 . 
	adc a,c			;03d6	89 	. 
	ld de,l32c1h		;03d7	11 c1 32 	. . 2 
	inc de			;03da	13 	. 
	ld c,(hl)			;03db	4e 	N 
	inc hl			;03dc	23 	# 
	ld b,b			;03dd	40 	@ 
	ld h,b			;03de	60 	` 
	add a,c			;03df	81 	. 
	call nz,l0400h		;03e0	c4 00 04 	. . . 
	nop			;03e3	00 	. 
	ld a,b			;03e4	78 	x 
	ld c,083h		;03e5	0e 83 	. . 
	ld b,a			;03e7	47 	G 
	add a,b			;03e8	80 	. 
	ret nz			;03e9	c0 	. 
	jr nc,l03ech		;03ea	30 00 	0 . 
l03ech:
	ld bc,0ff00h		;03ec	01 00 ff 	. . . 
	ld a,(bc)			;03ef	0a 	. 
	dec (hl)			;03f0	35 	5 
	ld c,083h		;03f1	0e 83 	. . 
	ret po			;03f3	e0 	. 
	ld h,e			;03f4	63 	c 
	ret nc			;03f5	d0 	. 
	call p,sub_023dh		;03f6	f4 3d 02 	. = . 
	rst 8			;03f9	cf 	. 
	jr nz,l03cdh		;03fa	20 d1 	  . 
	inc l			;03fc	2c 	, 
	jp 037ech		;03fd	c3 ec 37 	. . 7 
l0400h:
	dec c			;0400	0d 	. 
	jp 0fe30h		;0401	c3 30 fe 	. 0 . 
	inc bc			;0404	03 	. 
	nop			;0405	00 	. 
	ld bc,l3800h		;0406	01 00 38 	. . 8 
	ld c,03fh		;0409	0e 3f 	. ? 
	add a,b			;040b	80 	. 
	ld (hl),b			;040c	70 	p 
	ld c,0ffh		;040d	0e ff 	. . 
	nop			;040f	00 	. 
	add a,a			;0410	87 	. 
	ld (hl),b			;0411	70 	p 
	add a,03bh		;0412	c6 3b 	. ; 
	rst 0			;0414	c7 	. 
	ld a,b			;0415	78 	x 
	rrca			;0416	0f 	. 
	ld bc,l0100h		;0417	01 00 01 	. . . 
	rst 38h			;041a	ff 	. 
	rlca			;041b	07 	. 
	nop			;041c	00 	. 
	ld bc,06a00h		;041d	01 00 6a 	. . j 
	dec c			;0420	0d 	. 
	pop hl			;0421	e1 	. 
	cp 0c0h		;0422	fe c0 	. . 
	ret po			;0424	e0 	. 
	inc e			;0425	1c 	. 
	add a,e			;0426	83 	. 
	ld a,b			;0427	78 	x 
	rrca			;0428	0f 	. 
	inc bc			;0429	03 	. 
	ccf			;042a	3f 	? 
	nop			;042b	00 	. 
	ld bc,l3f00h		;042c	01 00 3f 	. . ? 
	nop			;042f	00 	. 
	ld bc,05500h		;0430	01 00 55 	. . U 
	dec a			;0433	3d 	= 
	ld d,h			;0434	54 	T 
	ret m			;0435	f8 	. 
	nop			;0436	00 	. 
	ld bc,l00ffh		;0437	01 ff 00 	. . . 
	ld bc,l0000h		;043a	01 00 00 	. . . 
	dec b			;043d	05 	. 
	rst 38h			;043e	ff 	. 
	ccf			;043f	3f 	? 
	inc bc			;0440	03 	. 
	nop			;0441	00 	. 
	ld bc,l0000h		;0442	01 00 00 	. . . 
	rlca			;0445	07 	. 
	jp po,0ff22h		;0446	e2 22 ff 	. " . 
	ld b,l			;0449	45 	E 
	nop			;044a	00 	. 
	ld b,0c5h		;044b	06 c5 	. . 
	rst 8			;044d	cf 	. 
	nop			;044e	00 	. 
	ld bc,0c0ffh		;044f	01 ff c0 	. . . 
	ret m			;0452	f8 	. 
	nop			;0453	00 	. 
	ld b,0ffh		;0454	06 ff 	. . 
	rrca			;0456	0f 	. 
	ld a,a			;0457	7f 	 
	nop			;0458	00 	. 
	ld bc,0c0ffh		;0459	01 ff c0 	. . . 
	nop			;045c	00 	. 
	ld bc,l0000h		;045d	01 00 00 	. . . 
	ld bc,l00ffh		;0460	01 ff 00 	. . . 
	inc bc			;0463	03 	. 
	rst 0			;0464	c7 	. 
	add a,0c2h		;0465	c6 c2 	. . 
	ex (sp),hl			;0467	e3 	. 
	di			;0468	f3 	. 
	ret m			;0469	f8 	. 
	nop			;046a	00 	. 
	ex af,af'			;046b	08 	. 
	rst 38h			;046c	ff 	. 
	call m,09cbch		;046d	fc bc 9c 	. . . 
	adc a,0feh		;0470	ce fe 	. . 
	nop			;0472	00 	. 
	inc bc			;0473	03 	. 
	rst 38h			;0474	ff 	. 
	rst 20h			;0475	e7 	. 
	ex (sp),hl			;0476	e3 	. 
	ld sp,hl			;0477	f9 	. 
	cp 000h		;0478	fe 00 	. . 
	ld bc,0e3ffh		;047a	01 ff e3 	. . . 
	rst 0			;047d	c7 	. 
	add a,a			;047e	87 	. 
	call m,0f9fdh		;047f	fc fd f9 	. . . 
	rst 38h			;0482	ff 	. 
	ei			;0483	fb 	. 
	rst 38h			;0484	ff 	. 
	ld sp,hl			;0485	f9 	. 
	ret m			;0486	f8 	. 
	add a,b			;0487	80 	. 
	add a,e			;0488	83 	. 
	call z,0e7d3h		;0489	cc d3 e7 	. . . 
	ex (sp),hl			;048c	e3 	. 
	rst 38h			;048d	ff 	. 
	rst 0			;048e	c7 	. 
	call m,0f1f9h		;048f	fc f9 f1 	. . . 
	di			;0492	f3 	. 
	rst 38h			;0493	ff 	. 
	rst 20h			;0494	e7 	. 
	rst 38h			;0495	ff 	. 
	rst 0			;0496	c7 	. 
	nop			;0497	00 	. 
	ld bc,0ffffh		;0498	01 ff ff 	. . . 
	ld a,a			;049b	7f 	 
	ld e,a			;049c	5f 	_ 
	ccf			;049d	3f 	? 
	rrca			;049e	0f 	. 
	rra			;049f	1f 	. 
	add a,c			;04a0	81 	. 
	nop			;04a1	00 	. 
	inc b			;04a2	04 	. 
	rla			;04a3	17 	. 
	nop			;04a4	00 	. 
	inc b			;04a5	04 	. 
	inc d			;04a6	14 	. 
	nop			;04a7	00 	. 
	nop			;04a8	00 	. 
	nop			;04a9	00 	. 
	ex af,af'			;04aa	08 	. 
	rst 38h			;04ab	ff 	. 
	nop			;04ac	00 	. 
	ld bc,l3000h		;04ad	01 00 30 	. . 0 
	ld (hl),c			;04b0	71 	q 
	ex de,hl			;04b1	eb 	. 
	rst 28h			;04b2	ef 	. 
	nop			;04b3	00 	. 
	inc bc			;04b4	03 	. 
	rst 38h			;04b5	ff 	. 
	nop			;04b6	00 	. 
	ld a,(bc)			;04b7	0a 	. 
	nop			;04b8	00 	. 
	ret nz			;04b9	c0 	. 
	jr c,l04c3h		;04ba	38 07 	8 . 
	nop			;04bc	00 	. 
	inc bc			;04bd	03 	. 
	nop			;04be	00 	. 
	nop			;04bf	00 	. 
	ld bc,0f3ffh		;04c0	01 ff f3 	. . . 
l04c3h:
	ret nz			;04c3	c0 	. 
	nop			;04c4	00 	. 
	dec b			;04c5	05 	. 
	nop			;04c6	00 	. 
	rst 38h			;04c7	ff 	. 
	rst 38h			;04c8	ff 	. 
	call m,sub_0500h		;04c9	fc 00 05 	. . . 
	nop			;04cc	00 	. 
	rst 38h			;04cd	ff 	. 
	rst 38h			;04ce	ff 	. 
	ld a,(hl)			;04cf	7e 	~ 
	jr l04d2h		;04d0	18 00 	. . 
l04d2h:
	inc b			;04d2	04 	. 
	nop			;04d3	00 	. 
	rst 38h			;04d4	ff 	. 
	rst 38h			;04d5	ff 	. 
	ld (hl),e			;04d6	73 	s 
	ld bc,l0400h		;04d7	01 00 04 	. . . 
	nop			;04da	00 	. 
	pop hl			;04db	e1 	. 
	cp b			;04dc	b8 	. 
	defb 0fdh,000h,006h	;illegal sequence		;04dd	fd 00 06 	. . . 
	rst 38h			;04e0	ff 	. 
	call m,sub_00fdh		;04e1	fc fd 00 	. . . 
	inc b			;04e4	04 	. 
	call m,l0100h		;04e5	fc 00 01 	. . . 
	rst 38h			;04e8	ff 	. 
	nop			;04e9	00 	. 
	ex af,af'			;04ea	08 	. 
	call m,0ff87h		;04eb	fc 87 ff 	. . . 
	add a,e			;04ee	83 	. 
	adc a,a			;04ef	8f 	. 
	add a,e			;04f0	83 	. 
	add a,a			;04f1	87 	. 
	rst 38h			;04f2	ff 	. 
	add a,e			;04f3	83 	. 
	ld c,(hl)			;04f4	4e 	N 
	ld b,(hl)			;04f5	46 	F 
	ld e,(hl)			;04f6	5e 	^ 
	ld b,(hl)			;04f7	46 	F 
	adc a,0ffh		;04f8	ce ff 	. . 
	add a,(hl)			;04fa	86 	. 
	sbc a,(hl)			;04fb	9e 	. 
	adc a,a			;04fc	8f 	. 
	add a,e			;04fd	83 	. 
	add a,a			;04fe	87 	. 
	sbc a,a			;04ff	9f 	. 
sub_0500h:
	add a,e			;0500	83 	. 
	adc a,a			;0501	8f 	. 
l0502h:
	rst 38h			;0502	ff 	. 
	add a,e			;0503	83 	. 
	nop			;0504	00 	. 
	ld bc,l00ffh		;0505	01 ff 00 	. . . 
	rlca			;0508	07 	. 
	call m,l0400h		;0509	fc 00 04 	. . . 
	ld b,l			;050c	45 	E 
	push bc			;050d	c5 	. 
	nop			;050e	00 	. 
	inc bc			;050f	03 	. 
	ld b,l			;0510	45 	E 
	nop			;0511	00 	. 
	ex af,af'			;0512	08 	. 
	ret nz			;0513	c0 	. 
	nop			;0514	00 	. 
	ex af,af'			;0515	08 	. 
	ld b,l			;0516	45 	E 
	nop			;0517	00 	. 
	ex af,af'			;0518	08 	. 
	call m,0e3e0h		;0519	fc e0 e3 	. . . 
	xor 0ffh		;051c	ee ff 	. . 
	call m,0fffeh		;051e	fc fe ff 	. . . 
	rst 38h			;0521	ff 	. 
	ret m			;0522	f8 	. 
	rst 38h			;0523	ff 	. 
	ld a,h			;0524	7c 	| 
	inc a			;0525	3c 	< 
	jr c,$+1		;0526	38 ff 	8 . 
	ld a,b			;0528	78 	x 
	call m,sub_00e5h		;0529	fc e5 00 	. . . 
	rlca			;052c	07 	. 
	dec h			;052d	25 	% 
	rst 38h			;052e	ff 	. 
	ret nz			;052f	c0 	. 
	jp 0f0cch		;0530	c3 cc f0 	. . . 
	nop			;0533	00 	. 
	inc bc			;0534	03 	. 
	ret nz			;0535	c0 	. 
	nop			;0536	00 	. 
	ex af,af'			;0537	08 	. 
	nop			;0538	00 	. 
	rst 10h			;0539	d7 	. 
	call 0ddffh		;053a	cd ff dd 	. . . 
	sbc a,09fh		;053d	de 9f 	. . 
	rst 38h			;053f	ff 	. 
	adc a,a			;0540	8f 	. 
	nop			;0541	00 	. 
	ld bc,0e4ffh		;0542	01 ff e4 	. . . 
	and b			;0545	a0 	. 
	ld hl,0a1a7h		;0546	21 a7 a1 	! . . 
	and a			;0549	a7 	. 
	and c			;054a	a1 	. 
	rst 8			;054b	cf 	. 
	rst 38h			;054c	ff 	. 
	ld b,a			;054d	47 	G 
	ld h,b			;054e	60 	` 
	ld (hl),b			;054f	70 	p 
	ld e,b			;0550	58 	X 
	ld c,h			;0551	4c 	L 
	ld b,a			;0552	47 	G 
	ex (sp),hl			;0553	e3 	. 
	and a			;0554	a7 	. 
	and e			;0555	a3 	. 
	jr nz,l057bh		;0556	20 23 	  # 
	rst 38h			;0558	ff 	. 
	ld hl,l00e1h		;0559	21 e1 00 	! . . 
	ld bc,sub_0300h		;055c	01 00 03 	. . . 
	ld e,0ffh		;055f	1e ff 	. . 
	call m,0f0f8h		;0561	fc f8 f0 	. . . 
	call m,sub_0301h		;0564	fc 01 03 	. . . 
	ld c,01eh		;0567	0e 1e 	. . 
	rst 38h			;0569	ff 	. 
	ccf			;056a	3f 	? 
	ld a,a			;056b	7f 	 
	rra			;056c	1f 	. 
	cp 000h		;056d	fe 00 	. . 
	ld bc,0feffh		;056f	01 ff fe 	. . . 
	nop			;0572	00 	. 
	inc b			;0573	04 	. 
	call m,0fff8h		;0574	fc f8 ff 	. . . 
	ccf			;0577	3f 	? 
	nop			;0578	00 	. 
	inc bc			;0579	03 	. 
	ld a,a			;057a	7f 	 
l057bh:
	rst 38h			;057b	ff 	. 
	rst 38h			;057c	ff 	. 
	ld a,a			;057d	7f 	 
	rst 38h			;057e	ff 	. 
	nop			;057f	00 	. 
	ex af,af'			;0580	08 	. 
	jr l05f3h		;0581	18 70 	. p 
	jr nz,l0585h		;0583	20 00 	  . 
l0585h:
	dec b			;0585	05 	. 
	nop			;0586	00 	. 
	ld bc,l0800h		;0587	01 00 08 	. . . 
	nop			;058a	00 	. 
	ld bc,0ad07h		;058b	01 07 ad 	. . . 
	ld e,a			;058e	5f 	_ 
	nop			;058f	00 	. 
l0590h:
	inc b			;0590	04 	. 
	nop			;0591	00 	. 
	ld b,b			;0592	40 	@ 
	call p,0eebfh		;0593	f4 bf ee 	. . . 
	nop			;0596	00 	. 
	ex af,af'			;0597	08 	. 
	adc a,e			;0598	8b 	. 
	nop			;0599	00 	. 
	ex af,af'			;059a	08 	. 
	rst 38h			;059b	ff 	. 
	nop			;059c	00 	. 
	dec b			;059d	05 	. 
	adc a,e			;059e	8b 	. 
	rst 8			;059f	cf 	. 
	nop			;05a0	00 	. 
	ld (de),a			;05a1	12 	. 
	rst 38h			;05a2	ff 	. 
	nop			;05a3	00 	. 
	ex af,af'			;05a4	08 	. 
	nop			;05a5	00 	. 
	nop			;05a6	00 	. 
	djnz $+1		;05a7	10 ff 	. . 
	nop			;05a9	00 	. 
	ex af,af'			;05aa	08 	. 
	ret m			;05ab	f8 	. 
	nop			;05ac	00 	. 
	ex af,af'			;05ad	08 	. 
	ld (sub_0300h),hl		;05ae	22 00 03 	" . . 
	ret po			;05b1	e0 	. 
	ret pe			;05b2	e8 	. 
	call pe,0f6eeh		;05b3	ec ee f6 	. . . 
	jp p,l0800h		;05b6	f2 00 08 	. . . 
	ld b,l			;05b9	45 	E 
	nop			;05ba	00 	. 
	ex af,af'			;05bb	08 	. 
	rst 38h			;05bc	ff 	. 
	nop			;05bd	00 	. 
	ex af,af'			;05be	08 	. 
	ret m			;05bf	f8 	. 
	nop			;05c0	00 	. 
	ex af,af'			;05c1	08 	. 
	rst 38h			;05c2	ff 	. 
	nop			;05c3	00 	. 
	ex af,af'			;05c4	08 	. 
	call m,l0800h		;05c5	fc 00 08 	. . . 
	ret p			;05c8	f0 	. 
	rlca			;05c9	07 	. 
	rra			;05ca	1f 	. 
	ld a,a			;05cb	7f 	 
	nop			;05cc	00 	. 
	dec b			;05cd	05 	. 
	rst 38h			;05ce	ff 	. 
l05cfh:
	rst 38h			;05cf	ff 	. 
	ret p			;05d0	f0 	. 
	call m,0fffeh		;05d1	fc fe ff 	. . . 
	rst 38h			;05d4	ff 	. 
	cp 0fch		;05d5	fe fc 	. . 
	ei			;05d7	fb 	. 
	rst 38h			;05d8	ff 	. 
	ret p			;05d9	f0 	. 
	rst 38h			;05da	ff 	. 
	ret nc			;05db	d0 	. 
	rst 38h			;05dc	ff 	. 
	djnz l05cfh		;05dd	10 f0 	. . 
	nop			;05df	00 	. 
	ex af,af'			;05e0	08 	. 
	rst 38h			;05e1	ff 	. 
	ret m			;05e2	f8 	. 
	cp 000h		;05e3	fe 00 	. . 
	ld b,0ffh		;05e5	06 ff 	. . 
	rst 8			;05e7	cf 	. 
	add a,(hl)			;05e8	86 	. 
	rst 38h			;05e9	ff 	. 
	nop			;05ea	00 	. 
	inc a			;05eb	3c 	< 
	nop			;05ec	00 	. 
	inc bc			;05ed	03 	. 
	cp a			;05ee	bf 	. 
	ccf			;05ef	3f 	? 
	rra			;05f0	1f 	. 
	inc e			;05f1	1c 	. 
	nop			;05f2	00 	. 
l05f3h:
	inc bc			;05f3	03 	. 
	djnz $+1		;05f4	10 ff 	. . 
	ret p			;05f6	f0 	. 
	rst 38h			;05f7	ff 	. 
	nop			;05f8	00 	. 
	add a,b			;05f9	80 	. 
	nop			;05fa	00 	. 
	dec b			;05fb	05 	. 
	rst 38h			;05fc	ff 	. 
	defb 0fdh,091h,081h	;illegal sequence		;05fd	fd 91 81 	. . . 
l0600h:
	add a,e			;0600	83 	. 
	adc a,a			;0601	8f 	. 
	add a,e			;0602	83 	. 
	add a,a			;0603	87 	. 
	add a,e			;0604	83 	. 
	rst 38h			;0605	ff 	. 
	rst 38h			;0606	ff 	. 
	ld a,a			;0607	7f 	 
l0608h:
	nop			;0608	00 	. 
	dec b			;0609	05 	. 
	nop			;060a	00 	. 
	nop			;060b	00 	. 
	ld bc,0f8ffh		;060c	01 ff f8 	. . . 
	add a,b			;060f	80 	. 
	nop			;0610	00 	. 
	ld b,000h		;0611	06 00 	. . 
	rlca			;0613	07 	. 
	rra			;0614	1f 	. 
	nop			;0615	00 	. 
	inc bc			;0616	03 	. 
	ccf			;0617	3f 	? 
	rra			;0618	1f 	. 
	rrca			;0619	0f 	. 
	ld bc,0cf07h		;061a	01 07 cf 	. . . 
	rst 28h			;061d	ef 	. 
	rst 30h			;061e	f7 	. 
	rst 28h			;061f	ef 	. 
	rst 38h			;0620	ff 	. 
	rst 38h			;0621	ff 	. 
	scf			;0622	37 	7 
	ld a,a			;0623	7f 	 
	rst 38h			;0624	ff 	. 
	rst 38h			;0625	ff 	. 
	rst 38h			;0626	ff 	. 
	ld a,a			;0627	7f 	 
	rrca			;0628	0f 	. 
	nop			;0629	00 	. 
	ld bc,l0000h		;062a	01 00 00 	. . . 
	dec b			;062d	05 	. 
	rst 38h			;062e	ff 	. 
	rst 18h			;062f	df 	. 
	rlca			;0630	07 	. 
	nop			;0631	00 	. 
	ld bc,l0000h		;0632	01 00 00 	. . . 
	ex af,af'			;0635	08 	. 
	rst 38h			;0636	ff 	. 
	nop			;0637	00 	. 
	ld bc,0f000h		;0638	01 00 f0 	. . . 
	call m,sub_00f9h		;063b	fc f9 00 	. . . 
	inc bc			;063e	03 	. 
	ei			;063f	fb 	. 
	defb 0fdh,000h,004h	;illegal sequence		;0640	fd 00 04 	. . . 
	rst 38h			;0643	ff 	. 
	rst 38h			;0644	ff 	. 
	rst 28h			;0645	ef 	. 
	rst 18h			;0646	df 	. 
	ld sp,l0600h		;0647	31 00 06 	1 . . 
	rst 38h			;064a	ff 	. 
	cp 0f0h		;064b	fe f0 	. . 
	nop			;064d	00 	. 
	ld bc,00700h		;064e	01 00 07 	. . . 
	ld a,a			;0651	7f 	 
	nop			;0652	00 	. 
	dec b			;0653	05 	. 
	rst 38h			;0654	ff 	. 
	nop			;0655	00 	. 
	ld bc,08000h		;0656	01 00 80 	. . . 
	nop			;0659	00 	. 
	inc bc			;065a	03 	. 
	ret po			;065b	e0 	. 
	call c,sub_00feh		;065c	dc fe 00 	. . . 
	ld b,0ffh		;065f	06 ff 	. . 
	cp a			;0661	bf 	. 
	rra			;0662	1f 	. 
	rlca			;0663	07 	. 
	nop			;0664	00 	. 
	inc b			;0665	04 	. 
	rst 38h			;0666	ff 	. 
	defb 0fdh,0f6h,0cch	;illegal sequence		;0667	fd f6 cc 	. . . 
	nop			;066a	00 	. 
	inc bc			;066b	03 	. 
	nop			;066c	00 	. 
	ld h,b			;066d	60 	` 
	jr c,l06edh		;066e	38 7d 	8 } 
	nop			;0670	00 	. 
	inc bc			;0671	03 	. 
	rst 38h			;0672	ff 	. 
	nop			;0673	00 	. 
	ld bc,l3000h		;0674	01 00 30 	. . 0 
	ld (hl),c			;0677	71 	q 
	ex de,hl			;0678	eb 	. 
	rst 28h			;0679	ef 	. 
	nop			;067a	00 	. 
	inc bc			;067b	03 	. 
	rst 38h			;067c	ff 	. 
	nop			;067d	00 	. 
	rlca			;067e	07 	. 
	nop			;067f	00 	. 
	ret m			;0680	f8 	. 
	nop			;0681	00 	. 
	dec b			;0682	05 	. 
	nop			;0683	00 	. 
	inc bc			;0684	03 	. 
	inc c			;0685	0c 	. 
	djnz l068fh		;0686	10 07 	. . 
	add hl,sp			;0688	39 	9 
	ex af,af'			;0689	08 	. 
	nop			;068a	00 	. 
	ld bc,l1400h		;068b	01 00 14 	. . . 
	ld h,b			;068e	60 	` 
l068fh:
	ld b,000h		;068f	06 00 	. . 
	ld bc,l0000h		;0691	01 00 00 	. . . 
	dec b			;0694	05 	. 
	ret nz			;0695	c0 	. 
	ret m			;0696	f8 	. 
	rst 0			;0697	c7 	. 
	ret nz			;0698	c0 	. 
	rst 38h			;0699	ff 	. 
	nop			;069a	00 	. 
	rlca			;069b	07 	. 
	jr c,$-62		;069c	38 c0 	8 . 
	rst 38h			;069e	ff 	. 
	nop			;069f	00 	. 
	ld h,0ffh		;06a0	26 ff 	& . 
	nop			;06a2	00 	. 
	ret p			;06a3	f0 	. 
	rrca			;06a4	0f 	. 
	ret po			;06a5	e0 	. 
	jr c,l06b6h		;06a6	38 0e 	8 . 
	ld e,000h		;06a8	1e 00 	. . 
	rlca			;06aa	07 	. 
	ld (l00e2h),hl		;06ab	22 e2 00 	" . . 
	ex af,af'			;06ae	08 	. 
	call m,sub_0300h		;06af	fc 00 03 	. . . 
	nop			;06b2	00 	. 
	ld bc,l38e7h		;06b3	01 e7 38 	. . 8 
l06b6h:
	dec c			;06b6	0d 	. 
	ld (l1b06h),hl		;06b7	22 06 1b 	" . . 
	ld l,h			;06ba	6c 	l 
	or c			;06bb	b1 	. 
	add a,01dh		;06bc	c6 1d 	. . 
	in a,(0e6h)		;06be	db e6 	. . 
	nop			;06c0	00 	. 
	inc bc			;06c1	03 	. 
	nop			;06c2	00 	. 
	inc bc			;06c3	03 	. 
	rrca			;06c4	0f 	. 
	rra			;06c5	1f 	. 
	ld a,h			;06c6	7c 	| 
	pop af			;06c7	f1 	. 
	rrca			;06c8	0f 	. 
	scf			;06c9	37 	7 
	rst 18h			;06ca	df 	. 
	rst 28h			;06cb	ef 	. 
sub_06cch:
	cp h			;06cc	bc 	. 
	ld a,c			;06cd	79 	y 
	jp po,0c7e1h		;06ce	e2 e1 c7 	. . . 
	dec de			;06d1	1b 	. 
	ld l,a			;06d2	6f 	o 
	cp h			;06d3	bc 	. 
	ret p			;06d4	f0 	. 
	pop hl			;06d5	e1 	. 
	add a,(hl)			;06d6	86 	. 
	rla			;06d7	17 	. 
	call nz,0950ah		;06d8	c4 0a 95 	. . . 
	dec l			;06db	2d 	- 
	ld e,d			;06dc	5a 	Z 
	cp d			;06dd	ba 	. 
	rst 38h			;06de	ff 	. 
	call p,08cf0h		;06df	f4 f0 8c 	. . . 
	jp nz,0ef33h		;06e2	c2 33 ef 	. 3 . 
	ld a,e			;06e5	7b 	{ 
	call z,sub_008ch		;06e6	cc 8c 00 	. . . 
	inc bc			;06e9	03 	. 
	nop			;06ea	00 	. 
	add a,b			;06eb	80 	. 
	ld b,b			;06ec	40 	@ 
l06edh:
	and b			;06ed	a0 	. 
	ld d,b			;06ee	50 	P 
	ret pe			;06ef	e8 	. 
	and 0efh		;06f0	e6 ef 	. . 
	rst 10h			;06f2	d7 	. 
	ld (hl),c			;06f3	71 	q 
	ex de,hl			;06f4	eb 	. 
	ld a,b			;06f5	78 	x 
	dec d			;06f6	15 	. 
	ld (hl),h			;06f7	74 	t 
	halt			;06f8	76 	v 
	add hl,de			;06f9	19 	. 
	cp (hl)			;06fa	be 	. 
	rst 0			;06fb	c7 	. 
	di			;06fc	f3 	. 
	ret m			;06fd	f8 	. 
	call m,sub_003fh		;06fe	fc 3f 00 	. ? . 
l0701h:
	ld bc,l00ffh		;0701	01 ff 00 	. . . 
	rlca			;0704	07 	. 
	call m,04340h		;0705	fc 40 43 	. @ C 
	ld b,c			;0708	41 	A 
	ld b,a			;0709	47 	G 
	jp 04341h		;070a	c3 41 43 	. A C 
	ld b,c			;070d	41 	A 
	rst 38h			;070e	ff 	. 
	nop			;070f	00 	. 
	add a,b			;0710	80 	. 
	ret po			;0711	e0 	. 
	sbc a,(hl)			;0712	9e 	. 
l0713h:
	pop hl			;0713	e1 	. 
	ld a,(hl)			;0714	7e 	~ 
	inc bc			;0715	03 	. 
	nop			;0716	00 	. 
	dec b			;0717	05 	. 
	nop			;0718	00 	. 
	ret p			;0719	f0 	. 
	rrca			;071a	0f 	. 
	ret p			;071b	f0 	. 
	nop			;071c	00 	. 
	ex af,af'			;071d	08 	. 
	ld de,l0800h		;071e	11 00 08 	. . . 
	ld a,a			;0721	7f 	 
	nop			;0722	00 	. 
	ex af,af'			;0723	08 	. 
	add a,b			;0724	80 	. 
	rst 38h			;0725	ff 	. 
	rst 38h			;0726	ff 	. 
	ld (hl),a			;0727	77 	w 
	inc sp			;0728	33 	3 
	add hl,de			;0729	19 	. 
	ex af,af'			;072a	08 	. 
	ld b,001h		;072b	06 01 	. . 
	nop			;072d	00 	. 
	ld bc,l0100h		;072e	01 00 01 	. . . 
	inc bc			;0731	03 	. 
	rlca			;0732	07 	. 
	ld e,0ffh		;0733	1e ff 	. . 
	nop			;0735	00 	. 
	ld bc,sub_0300h		;0736	01 00 03 	. . . 
	sbc a,a			;0739	9f 	. 
	rra			;073a	1f 	. 
	ccf			;073b	3f 	? 
	ld a,a			;073c	7f 	 
	rst 38h			;073d	ff 	. 
	rst 38h			;073e	ff 	. 
	rlca			;073f	07 	. 
	ret po			;0740	e0 	. 
	defb 0fdh,006h,0e9h	;illegal sequence		;0741	fd 06 e9 	. . . 
	ld (hl),0c9h		;0744	36 c9 	6 . 
	dec (hl)			;0746	35 	5 
l0747h:
	ret po			;0747	e0 	. 
	pop de			;0748	d1 	. 
	ld (l12cdh),hl		;0749	22 cd 12 	" . . 
	inc h			;074c	24 	$ 
	ret			;074d	c9 	. 
	sub d			;074e	92 	. 
	rst 38h			;074f	ff 	. 
	nop			;0750	00 	. 
	ld h,b			;0751	60 	` 
	jr c,$+127		;0752	38 7d 	8 } 
	nop			;0754	00 	. 
	inc bc			;0755	03 	. 
	rst 38h			;0756	ff 	. 
	nop			;0757	00 	. 
	ld bc,l3000h		;0758	01 00 30 	. . 0 
	ld (hl),c			;075b	71 	q 
	ex de,hl			;075c	eb 	. 
	rst 28h			;075d	ef 	. 
	nop			;075e	00 	. 
	inc bc			;075f	03 	. 
	rst 38h			;0760	ff 	. 
	rst 0			;0761	c7 	. 
	ld d,078h		;0762	16 78 	. x 
	jp po,l0701h		;0764	e2 01 07 	. . . 
	ex af,af'			;0767	08 	. 
	dec a			;0768	3d 	= 
	ld (0e874h),hl		;0769	22 74 e8 	" t . 
	adc a,c			;076c	89 	. 
	ld d,c			;076d	51 	Q 
	out (0a7h),a		;076e	d3 a7 	. . 
	call z,08844h		;0770	cc 44 88 	. D . 
	ld e,070h		;0773	1e 70 	. p 
	jr nc,$+106		;0775	30 68 	0 h 
	jr nz,$+123		;0777	20 79 	  y 
	ld bc,02047h		;0779	01 47 20 	. G   
	ld b,c			;077c	41 	A 
	ret nz			;077d	c0 	. 
	ld h,b			;077e	60 	` 
	nop			;077f	00 	. 
	ld bc,01800h		;0780	01 00 18 	. . . 
	jr nz,l0747h		;0783	20 c2 	  . 
	ret po			;0785	e0 	. 
	nop			;0786	00 	. 
	ld bc,0c000h		;0787	01 00 c0 	. . . 
	nop			;078a	00 	. 
	ld bc,08000h		;078b	01 00 80 	. . . 
	nop			;078e	00 	. 
	ld bc,l0400h		;078f	01 00 04 	. . . 
	ld a,(l0608h)		;0792	3a 08 06 	: . . 
	nop			;0795	00 	. 
	ld bc,02300h		;0796	01 00 23 	. . # 
	rst 38h			;0799	ff 	. 
	nop			;079a	00 	. 
	add hl,bc			;079b	09 	. 
	add a,h			;079c	84 	. 
	add a,d			;079d	82 	. 
	ld d,c			;079e	51 	Q 
	ld c,e			;079f	4b 	K 
	ret pe			;07a0	e8 	. 
	dec h			;07a1	25 	% 
	or 018h		;07a2	f6 18 	. . 
	ret nz			;07a4	c0 	. 
	ld d,b			;07a5	50 	P 
	ld hl,0cb9ch		;07a6	21 9c cb 	! . . 
	sub 07ch		;07a9	d6 7c 	. | 
	rst 38h			;07ab	ff 	. 
	inc bc			;07ac	03 	. 
	dec b			;07ad	05 	. 
	rla			;07ae	17 	. 
	cp 074h		;07af	fe 74 	. t 
	ld e,b			;07b1	58 	X 
	ret p			;07b2	f0 	. 
	sbc a,b			;07b3	98 	. 
	ld (hl),b			;07b4	70 	p 
	jp nz,l0e81h		;07b5	c2 81 0e 	. . . 
	inc b			;07b8	04 	. 
	ex af,af'			;07b9	08 	. 
	jr c,l07bch		;07ba	38 00 	8 . 
l07bch:
	inc b			;07bc	04 	. 
	nop			;07bd	00 	. 
	ld c,01ch		;07be	0e 1c 	. . 
	add hl,sp			;07c0	39 	9 
	rlca			;07c1	07 	. 
	inc bc			;07c2	03 	. 
	rlca			;07c3	07 	. 
	rst 38h			;07c4	ff 	. 
	rrca			;07c5	0f 	. 
	rst 38h			;07c6	ff 	. 
	ld e,0dfh		;07c7	1e df 	. . 
	nop			;07c9	00 	. 
	ld bc,l00ffh		;07ca	01 ff 00 	. . . 
	ex af,af'			;07cd	08 	. 
	nop			;07ce	00 	. 
	nop			;07cf	00 	. 
	ld bc,07fffh		;07d0	01 ff 7f 	. .  
	ccf			;07d3	3f 	? 
	nop			;07d4	00 	. 
	dec b			;07d5	05 	. 
	rra			;07d6	1f 	. 
	ret nz			;07d7	c0 	. 
	add a,b			;07d8	80 	. 
	nop			;07d9	00 	. 
	inc b			;07da	04 	. 
	nop			;07db	00 	. 
	inc bc			;07dc	03 	. 
	adc a,(hl)			;07dd	8e 	. 
	cp 0ffh		;07de	fe ff 	. . 
	ld a,(hl)			;07e0	7e 	~ 
	ccf			;07e1	3f 	? 
	nop			;07e2	00 	. 
	inc b			;07e3	04 	. 
	rra			;07e4	1f 	. 
	cp 0ffh		;07e5	fe ff 	. . 
	call m,0fff8h		;07e7	fc f8 ff 	. . . 
	ret p			;07ea	f0 	. 
	rst 38h			;07eb	ff 	. 
	ret po			;07ec	e0 	. 
	rra			;07ed	1f 	. 
	ld a,07eh		;07ee	3e 7e 	> ~ 
	call m,0fef8h		;07f0	fc f8 fe 	. . . 
	ld a,a			;07f3	7f 	 
	ccf			;07f4	3f 	? 
	nop			;07f5	00 	. 
	ld bc,0e4ffh		;07f6	01 ff e4 	. . . 
	jr nz,l081ch		;07f9	20 21 	  ! 
	inc hl			;07fb	23 	# 
	ld hl,02123h		;07fc	21 23 21 	! # ! 
l07ffh:
	nop			;07ff	00 	. 
l0800h:
	inc bc			;0800	03 	. 
	ld a,a			;0801	7f 	 
	rst 38h			;0802	ff 	. 
	rst 18h			;0803	df 	. 
l0804h:
	nop			;0804	00 	. 
	ld bc,0deffh		;0805	01 ff de 	. . . 
	call c,sub_0300h		;0808	dc 00 03 	. . . 
	inc hl			;080b	23 	# 
	jr nz,l0831h		;080c	20 23 	  # 
	nop			;080e	00 	. 
	inc bc			;080f	03 	. 
	ld hl,0c8cch		;0810	21 cc c8 	! . . 
	ret p			;0813	f0 	. 
	nop			;0814	00 	. 
	dec b			;0815	05 	. 
	ret nz			;0816	c0 	. 
	rrca			;0817	0f 	. 
	ccf			;0818	3f 	? 
	nop			;0819	00 	. 
	inc b			;081a	04 	. 
	rst 38h			;081b	ff 	. 
l081ch:
	call m,00900h		;081c	fc 00 09 	. . . 
	ret nz			;081f	c0 	. 
	ld b,b			;0820	40 	@ 
	ld b,e			;0821	43 	C 
	ld b,c			;0822	41 	A 
	ld b,a			;0823	47 	G 
	ld b,e			;0824	43 	C 
	ld b,c			;0825	41 	A 
	ld b,e			;0826	43 	C 
	ld b,c			;0827	41 	A 
	ret po			;0828	e0 	. 
	ex (sp),hl			;0829	e3 	. 
	xor 0ffh		;082a	ee ff 	. . 
	call m,0fffeh		;082c	fc fe ff 	. . . 
	rst 38h			;082f	ff 	. 
	add a,e			;0830	83 	. 
l0831h:
	adc a,a			;0831	8f 	. 
	add a,c			;0832	81 	. 
	nop			;0833	00 	. 
	inc bc			;0834	03 	. 
	add a,a			;0835	87 	. 
	add a,e			;0836	83 	. 
	adc a,a			;0837	8f 	. 
	nop			;0838	00 	. 
	ex af,af'			;0839	08 	. 
	rst 38h			;083a	ff 	. 
	add a,e			;083b	83 	. 
	add a,a			;083c	87 	. 
	add a,c			;083d	81 	. 
	rst 38h			;083e	ff 	. 
	add a,a			;083f	87 	. 
	rst 28h			;0840	ef 	. 
	nop			;0841	00 	. 
	inc c			;0842	0c 	. 
	rst 38h			;0843	ff 	. 
	cp 03eh		;0844	fe 3e 	. > 
	inc e			;0846	1c 	. 
	inc a			;0847	3c 	< 
	rst 38h			;0848	ff 	. 
	ld e,000h		;0849	1e 00 	. . 
	inc bc			;084b	03 	. 
	rst 38h			;084c	ff 	. 
	cp 0fch		;084d	fe fc 	. . 
	rst 38h			;084f	ff 	. 
	ret p			;0850	f0 	. 
	ret po			;0851	e0 	. 
	nop			;0852	00 	. 
	inc bc			;0853	03 	. 
	rra			;0854	1f 	. 
	sbc a,a			;0855	9f 	. 
	cp a			;0856	bf 	. 
	rst 38h			;0857	ff 	. 
	ccf			;0858	3f 	? 
	cp 0ffh		;0859	fe ff 	. . 
	ret po			;085b	e0 	. 
	rst 38h			;085c	ff 	. 
	ret nz			;085d	c0 	. 
	add a,b			;085e	80 	. 
	nop			;085f	00 	. 
	inc b			;0860	04 	. 
	nop			;0861	00 	. 
	rst 38h			;0862	ff 	. 
	ld bc,l0305h		;0863	01 05 03 	. . . 
	rrca			;0866	0f 	. 
	rlca			;0867	07 	. 
	ld a,a			;0868	7f 	 
	nop			;0869	00 	. 
	ld bc,l2000h		;086a	01 00 20 	. .   
	inc c			;086d	0c 	. 
	nop			;086e	00 	. 
	ld b,000h		;086f	06 00 	. . 
	rrca			;0871	0f 	. 
	ccf			;0872	3f 	? 
	ld a,b			;0873	78 	x 
	ld h,b			;0874	60 	` 
	ret c			;0875	d8 	. 
	or b			;0876	b0 	. 
	jr nz,l08a9h		;0877	20 30 	  0 
	sbc a,b			;0879	98 	. 
	ret po			;087a	e0 	. 
	ld a,b			;087b	78 	x 
	inc e			;087c	1c 	. 
	nop			;087d	00 	. 
	inc bc			;087e	03 	. 
	nop			;087f	00 	. 
l0880h:
	ret po			;0880	e0 	. 
	ret nz			;0881	c0 	. 
	ld e,061h		;0882	1e 61 	. a 
	adc a,(hl)			;0884	8e 	. 
	inc bc			;0885	03 	. 
	ret z			;0886	c8 	. 
	ld (hl),0e0h		;0887	36 e0 	6 . 
	adc a,c			;0889	89 	. 
	ld de,l32c1h		;088a	11 c1 32 	. . 2 
	sub e			;088d	93 	. 
	ld l,(hl)			;088e	6e 	n 
	inc sp			;088f	33 	3 
	ld b,b			;0890	40 	@ 
	ld h,b			;0891	60 	` 
	add a,c			;0892	81 	. 
	call nz,l0400h		;0893	c4 00 04 	. . . 
	nop			;0896	00 	. 
	ld a,h			;0897	7c 	| 
	ld c,083h		;0898	0e 83 	. . 
	ld b,a			;089a	47 	G 
	add a,b			;089b	80 	. 
	ret nz			;089c	c0 	. 
	jr nc,l089fh		;089d	30 00 	0 . 
l089fh:
	ld bc,l1a00h		;089f	01 00 1a 	. . . 
	ld a,(bc)			;08a2	0a 	. 
	dec a			;08a3	3d 	= 
	ld c,083h		;08a4	0e 83 	. . 
	pop hl			;08a6	e1 	. 
	ld h,e			;08a7	63 	c 
	ret nc			;08a8	d0 	. 
l08a9h:
	call m,sub_033fh		;08a9	fc 3f 03 	. ? . 
	rst 8			;08ac	cf 	. 
	jr nz,l0880h		;08ad	20 d1 	  . 
	call pe,0ecf3h		;08af	ec f3 ec 	. . . 
	scf			;08b2	37 	7 
	dec c			;08b3	0d 	. 
	jp 0fe30h		;08b4	c3 30 fe 	. 0 . 
	inc bc			;08b7	03 	. 
	nop			;08b8	00 	. 
	ld bc,l3c00h		;08b9	01 00 3c 	. . < 
	rrca			;08bc	0f 	. 
	ccf			;08bd	3f 	? 
	add a,b			;08be	80 	. 
	ld (hl),b			;08bf	70 	p 
	ld c,0ffh		;08c0	0e ff 	. . 
	nop			;08c2	00 	. 
	add a,a			;08c3	87 	. 
	ld (hl),b			;08c4	70 	p 
	add a,0fbh		;08c5	c6 fb 	. . 
	nop			;08c7	00 	. 
	ld bc,07fffh		;08c8	01 ff 7f 	. .  
	rrca			;08cb	0f 	. 
	ld bc,l0100h		;08cc	01 00 01 	. . . 
	rst 38h			;08cf	ff 	. 
	rlca			;08d0	07 	. 
	nop			;08d1	00 	. 
	ld bc,06a00h		;08d2	01 00 6a 	. . j 
	dec c			;08d5	0d 	. 
	pop hl			;08d6	e1 	. 
	cp 0c0h		;08d7	fe c0 	. . 
	ret po			;08d9	e0 	. 
	inc e			;08da	1c 	. 
	ex (sp),hl			;08db	e3 	. 
	ld a,h			;08dc	7c 	| 
	rrca			;08dd	0f 	. 
	inc bc			;08de	03 	. 
	ccf			;08df	3f 	? 
	nop			;08e0	00 	. 
	ld bc,l3f00h		;08e1	01 00 3f 	. . ? 
	nop			;08e4	00 	. 
	ld bc,05500h		;08e5	01 00 55 	. . U 
	dec a			;08e8	3d 	= 
	ld d,h			;08e9	54 	T 
	ret m			;08ea	f8 	. 
	nop			;08eb	00 	. 
	ld bc,l00ffh		;08ec	01 ff 00 	. . . 
	dec b			;08ef	05 	. 
	nop			;08f0	00 	. 
	ret nz			;08f1	c0 	. 
	inc a			;08f2	3c 	< 
	inc bc			;08f3	03 	. 
	nop			;08f4	00 	. 
	ld bc,l0000h		;08f5	01 00 00 	. . . 
	ld b,022h		;08f8	06 22 	. " 
	jp po,0ff22h		;08fa	e2 22 ff 	. " . 
	ld b,l			;08fd	45 	E 
	nop			;08fe	00 	. 
	ld b,0c5h		;08ff	06 c5 	. . 
	ret p			;0901	f0 	. 
	call m,l0400h		;0902	fc 00 04 	. . . 
	rst 38h			;0905	ff 	. 
	ccf			;0906	3f 	? 
	inc bc			;0907	03 	. 
	rst 38h			;0908	ff 	. 
	nop			;0909	00 	. 
	nop			;090a	00 	. 
	ld b,0ffh		;090b	06 ff 	. . 
	nop			;090d	00 	. 
	inc bc			;090e	03 	. 
	ret m			;090f	f8 	. 
	ld sp,hl			;0910	f9 	. 
	defb 0fdh,0ffh,0fch	;illegal sequence		;0911	fd ff fc 	. . . 
	ld a,a			;0914	7f 	 
	rst 38h			;0915	ff 	. 
	rlca			;0916	07 	. 
	rst 38h			;0917	ff 	. 
	inc bc			;0918	03 	. 
	ld bc,sub_0300h		;0919	01 00 03 	. . . 
	nop			;091c	00 	. 
	nop			;091d	00 	. 
	inc bc			;091e	03 	. 
	rst 38h			;091f	ff 	. 
	ld a,a			;0920	7f 	 
	ccf			;0921	3f 	? 
	rst 38h			;0922	ff 	. 
	rrca			;0923	0f 	. 
	rlca			;0924	07 	. 
	ret m			;0925	f8 	. 
	ld a,h			;0926	7c 	| 
	ld a,(hl)			;0927	7e 	~ 
	ccf			;0928	3f 	? 
	rra			;0929	1f 	. 
	ld a,a			;092a	7f 	 
	cp 0fch		;092b	fe fc 	. . 
	rra			;092d	1f 	. 
	rst 38h			;092e	ff 	. 
	ld a,03ch		;092f	3e 3c 	> < 
	inc e			;0931	1c 	. 
	rst 38h			;0932	ff 	. 
	ld e,03fh		;0933	1e 3f 	. ? 
	rst 38h			;0935	ff 	. 
	rst 38h			;0936	ff 	. 
	ld a,a			;0937	7f 	 
	ld a,h			;0938	7c 	| 
	jr c,$+62		;0939	38 3c 	8 < 
	rst 38h			;093b	ff 	. 
	ld a,b			;093c	78 	x 
	ld a,a			;093d	7f 	 
	rst 38h			;093e	ff 	. 
	ld a,(hl)			;093f	7e 	~ 
	call m,l0400h		;0940	fc 00 04 	. . . 
	ret m			;0943	f8 	. 
	nop			;0944	00 	. 
	ld bc,0ff00h		;0945	01 00 ff 	. . . 
	add a,b			;0948	80 	. 
	and b			;0949	a0 	. 
	ret nz			;094a	c0 	. 
	ret p			;094b	f0 	. 
	ret po			;094c	e0 	. 
	cp 000h		;094d	fe 00 	. . 
	inc bc			;094f	03 	. 
	call m,l0100h		;0950	fc 00 01 	. . . 
	rst 38h			;0953	ff 	. 
	nop			;0954	00 	. 
	inc b			;0955	04 	. 
	call m,l0000h		;0956	fc 00 00 	. . . 
	nop			;0959	00 	. 
	add hl,bc			;095a	09 	. 
	rst 38h			;095b	ff 	. 
	rst 0			;095c	c7 	. 
	ld c,014h		;095d	0e 14 	. . 
	djnz l0961h		;095f	10 00 	. . 
l0961h:
	inc bc			;0961	03 	. 
	nop			;0962	00 	. 
	nop			;0963	00 	. 
	djnz $+1		;0964	10 ff 	. . 
	ld a,a			;0966	7f 	 
	nop			;0967	00 	. 
	inc b			;0968	04 	. 
	rst 38h			;0969	ff 	. 
	rst 18h			;096a	df 	. 
	or l			;096b	b5 	. 
	dec h			;096c	25 	% 
	nop			;096d	00 	. 
	ld b,0ffh		;096e	06 ff 	. . 
	ei			;0970	fb 	. 
	sub 0f3h		;0971	d6 f3 	. . 
	nop			;0973	00 	. 
	ld b,0ffh		;0974	06 ff 	. . 
	or 0deh		;0976	f6 de 	. . 
	nop			;0978	00 	. 
	inc b			;0979	04 	. 
	rst 38h			;097a	ff 	. 
	defb 0fdh,0ebh,092h	;illegal sequence		;097b	fd eb 92 	. . . 
	adc a,a			;097e	8f 	. 
	jp nz,00080h		;097f	c2 80 00 	. . . 
	dec b			;0982	05 	. 
	nop			;0983	00 	. 
	rst 38h			;0984	ff 	. 
	rlca			;0985	07 	. 
	ld b,000h		;0986	06 00 	. . 
	dec c			;0988	0d 	. 
	rlca			;0989	07 	. 
	ld sp,hl			;098a	f9 	. 
	rst 38h			;098b	ff 	. 
	defb 0fdh,0f1h,0fdh	;illegal sequence		;098c	fd f1 fd 	. . . 
	ld sp,hl			;098f	f9 	. 
	rst 38h			;0990	ff 	. 
	defb 0fdh,0f3h,0fbh	;illegal sequence		;0991	fd f3 fb 	. . . 
	ex (sp),hl			;0994	e3 	. 
	ei			;0995	fb 	. 
	di			;0996	f3 	. 
	rst 38h			;0997	ff 	. 
	ei			;0998	fb 	. 
	ex (sp),hl			;0999	e3 	. 
	ret p			;099a	f0 	. 
	call m,0e0f8h		;099b	fc f8 e0 	. . . 
	call m,0fff0h		;099e	fc f0 ff 	. . . 
	call m,l0800h		;09a1	fc 00 08 	. . . 
	rlca			;09a4	07 	. 
	nop			;09a5	00 	. 
	ex af,af'			;09a6	08 	. 
	jp m,l0800h		;09a7	fa 00 08 	. . . 
	ld a,a			;09aa	7f 	 
	nop			;09ab	00 	. 
	ex af,af'			;09ac	08 	. 
	jp m,l0800h		;09ad	fa 00 08 	. . . 
	rlca			;09b0	07 	. 
	ccf			;09b1	3f 	? 
	jr c,$+35		;09b2	38 21 	8 ! 
	rst 38h			;09b4	ff 	. 
	inc hl			;09b5	23 	# 
	ld hl,l20ffh		;09b6	21 ff 20 	! .   
	rst 38h			;09b9	ff 	. 
	rrca			;09ba	0f 	. 
	rst 38h			;09bb	ff 	. 
	rlca			;09bc	07 	. 
	nop			;09bd	00 	. 
	inc bc			;09be	03 	. 
	rrca			;09bf	0f 	. 
	rlca			;09c0	07 	. 
	nop			;09c1	00 	. 
	ex af,af'			;09c2	08 	. 
	jp m,l0800h		;09c3	fa 00 08 	. . . 
	ld a,a			;09c6	7f 	 
	nop			;09c7	00 	. 
	add hl,bc			;09c8	09 	. 
	rst 38h			;09c9	ff 	. 
	rst 30h			;09ca	f7 	. 
	rst 38h			;09cb	ff 	. 
	rst 20h			;09cc	e7 	. 
	rst 38h			;09cd	ff 	. 
	ex (sp),hl			;09ce	e3 	. 
	di			;09cf	f3 	. 
	pop af			;09d0	f1 	. 
	nop			;09d1	00 	. 
	inc bc			;09d2	03 	. 
	rst 38h			;09d3	ff 	. 
	cp 0f8h		;09d4	fe f8 	. . 
	cp 0f8h		;09d6	fe f8 	. . 
	cp 0f1h		;09d8	fe f1 	. . 
	rst 38h			;09da	ff 	. 
	ret m			;09db	f8 	. 
	nop			;09dc	00 	. 
	dec b			;09dd	05 	. 
	rst 38h			;09de	ff 	. 
	call m,07c78h		;09df	fc 78 7c 	. x | 
	nop			;09e2	00 	. 
	ld bc,0fcffh		;09e3	01 ff fc 	. . . 
	nop			;09e6	00 	. 
	inc bc			;09e7	03 	. 
	cp 000h		;09e8	fe 00 	. . 
	ld bc,0f8ffh		;09ea	01 ff f8 	. . . 
	add a,c			;09ed	81 	. 
	inc bc			;09ee	03 	. 
	ld bc,00f07h		;09ef	01 07 0f 	. . . 
	inc bc			;09f2	03 	. 
	cp 0f8h		;09f3	fe f8 	. . 
	pop af			;09f5	f1 	. 
	pop bc			;09f6	c1 	. 
	rst 38h			;09f7	ff 	. 
	ret nz			;09f8	c0 	. 
	add a,b			;09f9	80 	. 
	ret po			;09fa	e0 	. 
	rst 38h			;09fb	ff 	. 
	nop			;09fc	00 	. 
	rst 38h			;09fd	ff 	. 
	ld bc,sub_0300h		;09fe	01 00 03 	. . . 
	inc bc			;0a01	03 	. 
l0a02h:
	rlca			;0a02	07 	. 
	rst 38h			;0a03	ff 	. 
	ret nz			;0a04	c0 	. 
	rst 38h			;0a05	ff 	. 
	add a,b			;0a06	80 	. 
	nop			;0a07	00 	. 
	inc bc			;0a08	03 	. 
	nop			;0a09	00 	. 
	add a,b			;0a0a	80 	. 
	ld l,b			;0a0b	68 	h 
	ld c,d			;0a0c	4a 	J 
	ld b,b			;0a0d	40 	@ 
	and b			;0a0e	a0 	. 
	dec b			;0a0f	05 	. 
	inc bc			;0a10	03 	. 
	ld a,(09bd2h)		;0a11	3a d2 9b 	: . . 
	sub d			;0a14	92 	. 
	ld e,b			;0a15	58 	X 
	ld c,d			;0a16	4a 	J 
	ld b,h			;0a17	44 	D 
	ld (hl),h			;0a18	74 	t 
	add hl,hl			;0a19	29 	) 
	xor e			;0a1a	ab 	. 
	ld (hl),0feh		;0a1b	36 fe 	6 . 
	nop			;0a1d	00 	. 
	ld b,0ffh		;0a1e	06 ff 	. . 
	ld a,(09f77h)		;0a20	3a 77 9f 	: w . 
	nop			;0a23	00 	. 
	dec b			;0a24	05 	. 
	rst 38h			;0a25	ff 	. 
	nop			;0a26	00 	. 
	ex af,af'			;0a27	08 	. 
	call p,l0800h		;0a28	f4 00 08 	. . . 
	nop			;0a2b	00 	. 
	nop			;0a2c	00 	. 
	inc b			;0a2d	04 	. 
	call p,sub_3074h		;0a2e	f4 74 30 	. t 0 
	nop			;0a31	00 	. 
	ld a,(bc)			;0a32	0a 	. 
	nop			;0a33	00 	. 
	nop			;0a34	00 	. 
	ex af,af'			;0a35	08 	. 
	ld bc,l0800h		;0a36	01 00 08 	. . . 
	rst 38h			;0a39	ff 	. 
	nop			;0a3a	00 	. 
	ld b,001h		;0a3b	06 01 	. . 
l0a3dh:
	nop			;0a3d	00 	. 
	ld a,(bc)			;0a3e	0a 	. 
	nop			;0a3f	00 	. 
	nop			;0a40	00 	. 
	ex af,af'			;0a41	08 	. 
	rrca			;0a42	0f 	. 
	nop			;0a43	00 	. 
	ex af,af'			;0a44	08 	. 
	defb 0fdh,000h,003h	;illegal sequence		;0a45	fd 00 03 	. . . 
	nop			;0a48	00 	. 
	ex af,af'			;0a49	08 	. 
	inc c			;0a4a	0c 	. 
	ld c,006h		;0a4b	0e 06 	. . 
	ld (bc),a			;0a4d	02 	. 
	nop			;0a4e	00 	. 
	ex af,af'			;0a4f	08 	. 
	jp m,l0800h		;0a50	fa 00 08 	. . . 
	nop			;0a53	00 	. 
	nop			;0a54	00 	. 
	ex af,af'			;0a55	08 	. 
	rrca			;0a56	0f 	. 
	nop			;0a57	00 	. 
	ex af,af'			;0a58	08 	. 
	nop			;0a59	00 	. 
	nop			;0a5a	00 	. 
	ex af,af'			;0a5b	08 	. 
	rlca			;0a5c	07 	. 
	nop			;0a5d	00 	. 
	ex af,af'			;0a5e	08 	. 
	rra			;0a5f	1f 	. 
	nop			;0a60	00 	. 
	inc b			;0a61	04 	. 
	nop			;0a62	00 	. 
	inc bc			;0a63	03 	. 
	inc c			;0a64	0c 	. 
	ld a,(hl)			;0a65	7e 	~ 
	nop			;0a66	00 	. 
	ld bc,l00ffh		;0a67	01 ff 00 	. . . 
	inc bc			;0a6a	03 	. 
	rra			;0a6b	1f 	. 
	ld h,e			;0a6c	63 	c 
	rst 38h			;0a6d	ff 	. 
	add a,c			;0a6e	81 	. 
	add a,e			;0a6f	83 	. 
	ld a,a			;0a70	7f 	 
	nop			;0a71	00 	. 
	inc bc			;0a72	03 	. 
	rst 38h			;0a73	ff 	. 
	rst 38h			;0a74	ff 	. 
	ccf			;0a75	3f 	? 
	nop			;0a76	00 	. 
	inc bc			;0a77	03 	. 
	rst 38h			;0a78	ff 	. 
	rst 38h			;0a79	ff 	. 
	nop			;0a7a	00 	. 
	ld h,b			;0a7b	60 	` 
	sub b			;0a7c	90 	. 
	inc c			;0a7d	0c 	. 
	inc bc			;0a7e	03 	. 
	nop			;0a7f	00 	. 
	ld bc,0e000h		;0a80	01 00 e0 	. . . 
	nop			;0a83	00 	. 
	ld b,000h		;0a84	06 00 	. . 
	ret m			;0a86	f8 	. 
	rra			;0a87	1f 	. 
	nop			;0a88	00 	. 
	inc b			;0a89	04 	. 
	rst 38h			;0a8a	ff 	. 
	jp sub_0300h		;0a8b	c3 00 03 	. . . 
	ld b,b			;0a8e	40 	@ 
	nop			;0a8f	00 	. 
	ld b,0ffh		;0a90	06 ff 	. . 
	rst 38h			;0a92	ff 	. 
	rra			;0a93	1f 	. 
	nop			;0a94	00 	. 
	rlca			;0a95	07 	. 
	nop			;0a96	00 	. 
	nop			;0a97	00 	. 
	inc b			;0a98	04 	. 
	rst 38h			;0a99	ff 	. 
	defb 0fdh,0f1h,0fdh	;illegal sequence		;0a9a	fd f1 fd 	. . . 
	ld sp,hl			;0a9d	f9 	. 
	defb 0fdh,000h,072h	;illegal sequence		;0a9e	fd 00 72 	. . r 
	rst 38h			;0aa1	ff 	. 
	adc a,a			;0aa2	8f 	. 
	jp nz,00080h		;0aa3	c2 80 00 	. . . 
	inc bc			;0aa6	03 	. 
	nop			;0aa7	00 	. 
	nop			;0aa8	00 	. 
	ld bc,0c7ffh		;0aa9	01 ff c7 	. . . 
	ld c,014h		;0aac	0e 14 	. . 
	djnz l0ab0h		;0aae	10 00 	. . 
l0ab0h:
	inc bc			;0ab0	03 	. 
	nop			;0ab1	00 	. 
	nop			;0ab2	00 	. 
	jr $+1		;0ab3	18 ff 	. . 
	nop			;0ab5	00 	. 
	ex af,af'			;0ab6	08 	. 
	ld a,a			;0ab7	7f 	 
	nop			;0ab8	00 	. 
	rlca			;0ab9	07 	. 
	rst 38h			;0aba	ff 	. 
	ld sp,hl			;0abb	f9 	. 
	nop			;0abc	00 	. 
	inc b			;0abd	04 	. 
	rst 38h			;0abe	ff 	. 
	rra			;0abf	1f 	. 
	rst 0			;0ac0	c7 	. 
	pop af			;0ac1	f1 	. 
	pop hl			;0ac2	e1 	. 
	nop			;0ac3	00 	. 
	ex af,af'			;0ac4	08 	. 
	defb 0fdh,000h,008h	;illegal sequence		;0ac5	fd 00 08 	. . . 
	rlca			;0ac8	07 	. 
	nop			;0ac9	00 	. 
	rlca			;0aca	07 	. 
	rst 38h			;0acb	ff 	. 
	rst 18h			;0acc	df 	. 
	nop			;0acd	00 	. 
	ld bc,0fcffh		;0ace	01 ff fc 	. . . 
	di			;0ad1	f3 	. 
	rst 8			;0ad2	cf 	. 
	ccf			;0ad3	3f 	? 
	cp 0fch		;0ad4	fe fc 	. . 
	ld sp,hl			;0ad6	f9 	. 
	nop			;0ad7	00 	. 
	inc b			;0ad8	04 	. 
	rst 38h			;0ad9	ff 	. 
	call m,0e3f0h		;0ada	fc f0 e3 	. . . 
	adc a,a			;0add	8f 	. 
	nop			;0ade	00 	. 
	ld bc,0f8ffh		;0adf	01 ff f8 	. . . 
	ret po			;0ae2	e0 	. 
	djnz l0b48h		;0ae3	10 63 	. c 
	add a,09fh		;0ae5	c6 9f 	. . 
	ld e,03eh		;0ae7	1e 3e 	. > 
	call m,0c3f0h		;0ae9	fc f0 c3 	. . . 
	rrca			;0aec	0f 	. 
	rra			;0aed	1f 	. 
	ld a,a			;0aee	7f 	 
	ret pe			;0aef	e8 	. 
	ccf			;0af0	3f 	? 
	defb 0fdh,07ah,0f2h	;illegal sequence		;0af1	fd 7a f2 	. z . 
	push hl			;0af4	e5 	. 
	push bc			;0af5	c5 	. 
	rst 38h			;0af6	ff 	. 
	dec bc			;0af7	0b 	. 
	nop			;0af8	00 	. 
	ld bc,07fffh		;0af9	01 ff 7f 	. .  
	ccf			;0afc	3f 	? 
	call 08410h		;0afd	cd 10 84 	. . . 
	inc sp			;0b00	33 	3 
	ld (hl),e			;0b01	73 	s 
	nop			;0b02	00 	. 
	dec b			;0b03	05 	. 
	rst 38h			;0b04	ff 	. 
	ld a,a			;0b05	7f 	 
	cp a			;0b06	bf 	. 
	rra			;0b07	1f 	. 
	add hl,sp			;0b08	39 	9 
	jr nc,$+58		;0b09	30 38 	0 8 
	sbc a,(hl)			;0b0b	9e 	. 
	inc e			;0b0c	1c 	. 
	adc a,a			;0b0d	8f 	. 
	xor 0ffh		;0b0e	ee ff 	. . 
	adc a,a			;0b10	8f 	. 
	rst 20h			;0b11	e7 	. 
	ld b,c			;0b12	41 	A 
	jr c,l0b31h		;0b13	38 1c 	8 . 
	rrca			;0b15	0f 	. 
	rlca			;0b16	07 	. 
	jp l0800h		;0b17	c3 00 08 	. . . 
	rlca			;0b1a	07 	. 
	nop			;0b1b	00 	. 
l0b1ch:
	ld bc,0fcffh		;0b1c	01 ff fc 	. . . 
	cp 0f8h		;0b1f	fe f8 	. . 
	call m,0fcfeh		;0b21	fc fe fc 	. . . 
	cp 000h		;0b24	fe 00 	. . 
	inc b			;0b26	04 	. 
	rst 38h			;0b27	ff 	. 
	ld a,a			;0b28	7f 	 
	rra			;0b29	1f 	. 
	add a,c			;0b2a	81 	. 
	call m,00700h		;0b2b	fc 00 07 	. . . 
	rst 38h			;0b2e	ff 	. 
	rrca			;0b2f	0f 	. 
	nop			;0b30	00 	. 
l0b31h:
	ex af,af'			;0b31	08 	. 
	cp 000h		;0b32	fe 00 	. . 
	ex af,af'			;0b34	08 	. 
	add a,b			;0b35	80 	. 
	nop			;0b36	00 	. 
	add hl,bc			;0b37	09 	. 
	rst 38h			;0b38	ff 	. 
	ld sp,hl			;0b39	f9 	. 
	ret m			;0b3a	f8 	. 
	call m,sub_00feh		;0b3b	fc fe 00 	. . . 
	inc bc			;0b3e	03 	. 
	rst 38h			;0b3f	ff 	. 
	nop			;0b40	00 	. 
	ld bc,l0100h		;0b41	01 00 01 	. . . 
	inc bc			;0b44	03 	. 
	rlca			;0b45	07 	. 
	ld e,000h		;0b46	1e 00 	. . 
l0b48h:
	inc bc			;0b48	03 	. 
	nop			;0b49	00 	. 
	nop			;0b4a	00 	. 
	inc bc			;0b4b	03 	. 
	add a,b			;0b4c	80 	. 
	nop			;0b4d	00 	. 
	dec b			;0b4e	05 	. 
	nop			;0b4f	00 	. 
	nop			;0b50	00 	. 
	ld bc,l1fffh		;0b51	01 ff 1f 	. . . 
	inc bc			;0b54	03 	. 
	nop			;0b55	00 	. 
	ld bc,0feffh		;0b56	01 ff fe 	. . . 
	ld sp,hl			;0b59	f9 	. 
	rst 30h			;0b5a	f7 	. 
	rst 8			;0b5b	cf 	. 
	nop			;0b5c	00 	. 
	ld bc,0efffh		;0b5d	01 ff ef 	. . . 
	rst 18h			;0b60	df 	. 
	ld a,0fdh		;0b61	3e fd 	> . 
	ei			;0b63	fb 	. 
	rst 30h			;0b64	f7 	. 
	rst 28h			;0b65	ef 	. 
	rst 38h			;0b66	ff 	. 
	rst 38h			;0b67	ff 	. 
	adc a,a			;0b68	8f 	. 
	jp nz,00080h		;0b69	c2 80 00 	. . . 
	inc bc			;0b6c	03 	. 
	nop			;0b6d	00 	. 
	nop			;0b6e	00 	. 
	ld bc,0c7ffh		;0b6f	01 ff c7 	. . . 
	ld c,014h		;0b72	0e 14 	. . 
	djnz l0b76h		;0b74	10 00 	. . 
l0b76h:
	inc bc			;0b76	03 	. 
	nop			;0b77	00 	. 
	ccf			;0b78	3f 	? 
	rst 38h			;0b79	ff 	. 
	rst 38h			;0b7a	ff 	. 
	defb 0fdh,0feh,0f8h	;illegal sequence		;0b7b	fd fe f8 	. . . 
	rst 30h			;0b7e	f7 	. 
	jp 08fdfh		;0b7f	c3 df 8f 	. . . 
	rra			;0b82	1f 	. 
	ld a,(hl)			;0b83	7e 	~ 
	cp 07ch		;0b84	fe 7c 	. | 
	ret m			;0b86	f8 	. 
	di			;0b87	f3 	. 
	ei			;0b88	fb 	. 
	rst 30h			;0b89	f7 	. 
	pop hl			;0b8a	e1 	. 
	adc a,a			;0b8b	8f 	. 
	rst 8			;0b8c	cf 	. 
	sub a			;0b8d	97 	. 
	rst 18h			;0b8e	df 	. 
	add a,a			;0b8f	87 	. 
	cp 0f8h		;0b90	fe f8 	. . 
	nop			;0b92	00 	. 
	ld bc,0feffh		;0b93	01 ff fe 	. . . 
	nop			;0b96	00 	. 
	inc b			;0b97	04 	. 
	rst 38h			;0b98	ff 	. 
	rst 18h			;0b99	df 	. 
	ccf			;0b9a	3f 	? 
	rra			;0b9b	1f 	. 
	nop			;0b9c	00 	. 
	ld bc,l3fffh		;0b9d	01 ff 3f 	. . ? 
	nop			;0ba0	00 	. 
	ld bc,07fffh		;0ba1	01 ff 7f 	. .  
	nop			;0ba4	00 	. 
	ld bc,0fbffh		;0ba5	01 ff fb 	. . . 
	push bc			;0ba8	c5 	. 
	rst 30h			;0ba9	f7 	. 
	ld sp,hl			;0baa	f9 	. 
	nop			;0bab	00 	. 
	ld bc,0dcffh		;0bac	01 ff dc 	. . . 
	rst 38h			;0baf	ff 	. 
	rst 38h			;0bb0	ff 	. 
	rst 30h			;0bb1	f7 	. 
	ld a,e			;0bb2	7b 	{ 
	ld a,l			;0bb3	7d 	} 
	cp (hl)			;0bb4	be 	. 
	cp h			;0bb5	bc 	. 
	rra			;0bb6	1f 	. 
	sbc a,00fh		;0bb7	de 0f 	. . 
	rst 20h			;0bb9	e7 	. 
	nop			;0bba	00 	. 
	inc bc			;0bbb	03 	. 
	rst 38h			;0bbc	ff 	. 
	ld a,a			;0bbd	7f 	 
	rst 38h			;0bbe	ff 	. 
	ccf			;0bbf	3f 	? 
	rst 18h			;0bc0	df 	. 
	nop			;0bc1	00 	. 
	ld a,(bc)			;0bc2	0a 	. 
	rst 38h			;0bc3	ff 	. 
	defb 0fdh,0feh,0f1h	;illegal sequence		;0bc4	fd fe f1 	. . . 
	ei			;0bc7	fb 	. 
	rst 38h			;0bc8	ff 	. 
	rst 30h			;0bc9	f7 	. 
	nop			;0bca	00 	. 
	inc b			;0bcb	04 	. 
	nop			;0bcc	00 	. 
	ld c,01ch		;0bcd	0e 1c 	. . 
	jr c,l0bd1h		;0bcf	38 00 	8 . 
l0bd1h:
	jr nz,l0bd3h		;0bd1	20 00 	  . 
l0bd3h:
	add a,b			;0bd3	80 	. 
	rlca			;0bd4	07 	. 
	nop			;0bd5	00 	. 
	inc bc			;0bd6	03 	. 
	inc bc			;0bd7	03 	. 
	nop			;0bd8	00 	. 
	inc b			;0bd9	04 	. 
	ld bc,04080h		;0bda	01 80 40 	. . @ 
	nop			;0bdd	00 	. 
	ld b,000h		;0bde	06 00 	. . 
	ld bc,003ffh		;0be0	01 ff 03 	. . . 
	ld c,a			;0be3	4f 	O 
	ccf			;0be4	3f 	? 
	rlca			;0be5	07 	. 
	inc bc			;0be6	03 	. 
	ld bc,sub_0300h		;0be7	01 00 03 	. . . 
	rst 38h			;0bea	ff 	. 
	cp 0fch		;0beb	fe fc 	. . 
	cp 0fch		;0bed	fe fc 	. . 
	cp 000h		;0bef	fe 00 	. . 
	ld bc,0ffffh		;0bf1	01 ff ff 	. . . 
	di			;0bf4	f3 	. 
	rst 38h			;0bf5	ff 	. 
	ld (hl),e			;0bf6	73 	s 
	rst 38h			;0bf7	ff 	. 
	ld h,e			;0bf8	63 	c 
	ld h,a			;0bf9	67 	g 
	nop			;0bfa	00 	. 
	inc bc			;0bfb	03 	. 
	call m,l0100h		;0bfc	fc 00 01 	. . . 
	rst 38h			;0bff	ff 	. 
	call m,sub_0300h		;0c00	fc 00 03 	. . . 
	cp 077h		;0c03	fe 77 	. w 
	nop			;0c05	00 	. 
	rlca			;0c06	07 	. 
	ld a,a			;0c07	7f 	 
	nop			;0c08	00 	. 
	dec b			;0c09	05 	. 
	nop			;0c0a	00 	. 
	inc bc			;0c0b	03 	. 
	ccf			;0c0c	3f 	? 
	nop			;0c0d	00 	. 
	ld bc,l00ffh		;0c0e	01 ff 00 	. . . 
	ex af,af'			;0c11	08 	. 
	ld a,a			;0c12	7f 	 
	nop			;0c13	00 	. 
	ld bc,0fcffh		;0c14	01 ff fc 	. . . 
	cp 0f8h		;0c17	fe f8 	. . 
	call m,0fcfeh		;0c19	fc fe fc 	. . . 
	cp 03fh		;0c1c	fe 3f 	. ? 
	jr c,l0c41h		;0c1e	38 21 	8 ! 
	rst 38h			;0c20	ff 	. 
	inc hl			;0c21	23 	# 
	ld hl,l20ffh		;0c22	21 ff 20 	! .   
	call m,0fef0h		;0c25	fc f0 fe 	. . . 
	nop			;0c28	00 	. 
	inc bc			;0c29	03 	. 
	ret m			;0c2a	f8 	. 
	call m,sub_00f0h		;0c2b	fc f0 00 	. . . 
	ex af,af'			;0c2e	08 	. 
	jr nz,$-2		;0c2f	20 fc 	  . 
	ret m			;0c31	f8 	. 
	cp 0f8h		;0c32	fe f8 	. . 
	ld a,b			;0c34	78 	x 
	djnz $+1		;0c35	10 ff 	. . 
	nop			;0c37	00 	. 
	nop			;0c38	00 	. 
	ld b,020h		;0c39	06 20 	.   
	rst 38h			;0c3b	ff 	. 
	nop			;0c3c	00 	. 
	ld bc,033c1h		;0c3d	01 c1 33 	. . 3 
	dec bc			;0c40	0b 	. 
l0c41h:
	rlca			;0c41	07 	. 
	daa			;0c42	27 	' 
	inc de			;0c43	13 	. 
	dec de			;0c44	1b 	. 
	rrca			;0c45	0f 	. 
	rst 38h			;0c46	ff 	. 
	ld de,0ff13h		;0c47	11 13 ff 	. . . 
	rra			;0c4a	1f 	. 
	rst 38h			;0c4b	ff 	. 
	ccf			;0c4c	3f 	? 
	nop			;0c4d	00 	. 
	inc bc			;0c4e	03 	. 
	add hl,de			;0c4f	19 	. 
	sub c			;0c50	91 	. 
	or c			;0c51	b1 	. 
	ld hl,sub_0301h		;0c52	21 01 03 	! . . 
	nop			;0c55	00 	. 
	inc bc			;0c56	03 	. 
	ld a,a			;0c57	7f 	 
	nop			;0c58	00 	. 
	dec b			;0c59	05 	. 
	rst 38h			;0c5a	ff 	. 
	nop			;0c5b	00 	. 
	ex af,af'			;0c5c	08 	. 
	nop			;0c5d	00 	. 
	nop			;0c5e	00 	. 
	ex af,af'			;0c5f	08 	. 
	rst 38h			;0c60	ff 	. 
	nop			;0c61	00 	. 
	dec b			;0c62	05 	. 
	nop			;0c63	00 	. 
	jr l0c96h		;0c64	18 30 	. 0 
	jr nz,$+50		;0c66	20 30 	  0 
	jr l0c6ah		;0c68	18 00 	. . 
l0c6ah:
	ld b,000h		;0c6a	06 00 	. . 
	rra			;0c6c	1f 	. 
	ccf			;0c6d	3f 	? 
	rst 38h			;0c6e	ff 	. 
	rst 38h			;0c6f	ff 	. 
	pop af			;0c70	f1 	. 
	call m,0c937h		;0c71	fc 37 c9 	. 7 . 
	rra			;0c74	1f 	. 
	halt			;0c75	76 	v 
	xor 0feh		;0c76	ee fe 	. . 
	defb 0fdh,07dh	;ld a,iyl		;0c78	fd 7d 	. } 
	sbc a,a			;0c7a	9f 	. 
	rst 8			;0c7b	cf 	. 
	cp a			;0c7c	bf 	. 
	sbc a,a			;0c7d	9f 	. 
	ld a,a			;0c7e	7f 	 
	ccf			;0c7f	3f 	? 
	nop			;0c80	00 	. 
	inc b			;0c81	04 	. 
	rst 38h			;0c82	ff 	. 
	add a,e			;0c83	83 	. 
	pop af			;0c84	f1 	. 
	call m,sub_00f8h		;0c85	fc f8 00 	. . . 
	inc b			;0c88	04 	. 
	rst 38h			;0c89	ff 	. 
	rst 20h			;0c8a	e7 	. 
	rst 30h			;0c8b	f7 	. 
	jp 0fcf1h		;0c8c	c3 f1 fc 	. . . 
	cp 0fch		;0c8f	fe fc 	. . 
	nop			;0c91	00 	. 
	ld bc,003ffh		;0c92	01 ff 03 	. . . 
	ret nz			;0c95	c0 	. 
l0c96h:
	call m,sub_00f0h		;0c96	fc f0 00 	. . . 
	ld bc,l3effh		;0c99	01 ff 3e 	. . > 
	rra			;0c9c	1f 	. 
	rrca			;0c9d	0f 	. 
	nop			;0c9e	00 	. 
	inc bc			;0c9f	03 	. 
	rst 38h			;0ca0	ff 	. 
	ccf			;0ca1	3f 	? 
	rst 8			;0ca2	cf 	. 
	ld bc,l00fch		;0ca3	01 fc 00 	. . . 
	ld bc,0c3ffh		;0ca6	01 ff c3 	. . . 
	ret p			;0ca9	f0 	. 
	ret nz			;0caa	c0 	. 
	nop			;0cab	00 	. 
	dec b			;0cac	05 	. 
	rst 38h			;0cad	ff 	. 
	ret m			;0cae	f8 	. 
	nop			;0caf	00 	. 
	ld bc,l3fffh		;0cb0	01 ff 3f 	. . ? 
	rlca			;0cb3	07 	. 
	nop			;0cb4	00 	. 
	ld bc,08000h		;0cb5	01 00 80 	. . . 
	ret p			;0cb8	f0 	. 
	cp 000h		;0cb9	fe 00 	. . 
	ld bc,0f800h		;0cbb	01 00 f8 	. . . 
	nop			;0cbe	00 	. 
	inc bc			;0cbf	03 	. 
	rst 38h			;0cc0	ff 	. 
	rra			;0cc1	1f 	. 
	ld bc,0ff3fh		;0cc2	01 3f ff 	. ? . 
	rst 38h			;0cc5	ff 	. 
	rra			;0cc6	1f 	. 
	add a,e			;0cc7	83 	. 
	ret p			;0cc8	f0 	. 
	call m,sub_00c0h		;0cc9	fc c0 00 	. . . 
	ld bc,0c0ffh		;0ccc	01 ff c0 	. . . 
	nop			;0ccf	00 	. 
	inc b			;0cd0	04 	. 
	rst 38h			;0cd1	ff 	. 
	rlca			;0cd2	07 	. 
	nop			;0cd3	00 	. 
	ld bc,l0000h		;0cd4	01 00 00 	. . . 
	add hl,bc			;0cd7	09 	. 
	rst 38h			;0cd8	ff 	. 
	nop			;0cd9	00 	. 
	ex af,af'			;0cda	08 	. 
	defb 0fdh,0ffh,0fah	;illegal sequence		;0cdb	fd ff fa 	. . . 
	nop			;0cde	00 	. 
	ld b,07ah		;0cdf	06 7a 	. z 
	nop			;0ce1	00 	. 
	dec b			;0ce2	05 	. 
	nop			;0ce3	00 	. 
	ret nz			;0ce4	c0 	. 
	call m,l0100h		;0ce5	fc 00 01 	. . . 
	rst 38h			;0ce8	ff 	. 
	nop			;0ce9	00 	. 
	rlca			;0cea	07 	. 
	nop			;0ceb	00 	. 
	nop			;0cec	00 	. 
	ld bc,l00ffh		;0ced	01 ff 00 	. . . 
	inc bc			;0cf0	03 	. 
	sbc a,b			;0cf1	98 	. 
	adc a,c			;0cf2	89 	. 
	adc a,l			;0cf3	8d 	. 
	add a,h			;0cf4	84 	. 
	add a,b			;0cf5	80 	. 
	ret nz			;0cf6	c0 	. 
	nop			;0cf7	00 	. 
	inc bc			;0cf8	03 	. 
	cp 000h		;0cf9	fe 00 	. . 
	dec b			;0cfb	05 	. 
	rst 38h			;0cfc	ff 	. 
	ret p			;0cfd	f0 	. 
	rst 38h			;0cfe	ff 	. 
	adc a,b			;0cff	88 	. 
sub_0d00h:
	ret z			;0d00	c8 	. 
	rst 38h			;0d01	ff 	. 
	ret m			;0d02	f8 	. 
	rst 38h			;0d03	ff 	. 
	call m,0ff80h		;0d04	fc 80 ff 	. . . 
	ret nz			;0d07	c0 	. 
	jp p,0e0fch		;0d08	f2 fc e0 	. . . 
	ret nz			;0d0b	c0 	. 
	add a,b			;0d0c	80 	. 
	rst 38h			;0d0d	ff 	. 
	ret p			;0d0e	f0 	. 
	rst 38h			;0d0f	ff 	. 
	ret po			;0d10	e0 	. 
	nop			;0d11	00 	. 
	inc bc			;0d12	03 	. 
	ret p			;0d13	f0 	. 
	ret po			;0d14	e0 	. 
	add a,b			;0d15	80 	. 
	add a,e			;0d16	83 	. 
	call z,0e0d0h		;0d17	cc d0 e0 	. . . 
	call po,0d8c8h		;0d1a	e4 c8 d8 	. . . 
	ret po			;0d1d	e0 	. 
	nop			;0d1e	00 	. 
	inc bc			;0d1f	03 	. 
	ret nz			;0d20	c0 	. 
	nop			;0d21	00 	. 
	inc b			;0d22	04 	. 
	add a,b			;0d23	80 	. 
	nop			;0d24	00 	. 
	ex af,af'			;0d25	08 	. 
	nop			;0d26	00 	. 
	nop			;0d27	00 	. 
	ex af,af'			;0d28	08 	. 
	rlca			;0d29	07 	. 
	nop			;0d2a	00 	. 
	nop			;0d2b	00 	. 
	nop			;0d2c	00 	. 
	ex af,af'			;0d2d	08 	. 
	rst 38h			;0d2e	ff 	. 
	nop			;0d2f	00 	. 
	ld bc,l3800h		;0d30	01 00 38 	. . 8 
	pop af			;0d33	f1 	. 
	ex de,hl			;0d34	eb 	. 
	rst 28h			;0d35	ef 	. 
	nop			;0d36	00 	. 
sub_0d37h:
	inc bc			;0d37	03 	. 
	rst 38h			;0d38	ff 	. 
	nop			;0d39	00 	. 
	ld a,(bc)			;0d3a	0a 	. 
	nop			;0d3b	00 	. 
	ret nz			;0d3c	c0 	. 
	jr c,l0d46h		;0d3d	38 07 	8 . 
	nop			;0d3f	00 	. 
	inc bc			;0d40	03 	. 
	nop			;0d41	00 	. 
	nop			;0d42	00 	. 
	ld bc,0f3ffh		;0d43	01 ff f3 	. . . 
l0d46h:
	ret nz			;0d46	c0 	. 
	nop			;0d47	00 	. 
	dec b			;0d48	05 	. 
	nop			;0d49	00 	. 
	rst 38h			;0d4a	ff 	. 
	rst 38h			;0d4b	ff 	. 
	call m,sub_0500h		;0d4c	fc 00 05 	. . . 
	nop			;0d4f	00 	. 
	rst 38h			;0d50	ff 	. 
	rst 38h			;0d51	ff 	. 
	ld a,(hl)			;0d52	7e 	~ 
	jr l0d55h		;0d53	18 00 	. . 
l0d55h:
	inc b			;0d55	04 	. 
	nop			;0d56	00 	. 
	rst 38h			;0d57	ff 	. 
	rst 38h			;0d58	ff 	. 
	ld (hl),e			;0d59	73 	s 
	ld bc,l0400h		;0d5a	01 00 04 	. . . 
	nop			;0d5d	00 	. 
	pop af			;0d5e	f1 	. 
	cp l			;0d5f	bd 	. 
	nop			;0d60	00 	. 
	ld b,0ffh		;0d61	06 ff 	. . 
	rlca			;0d63	07 	. 
	nop			;0d64	00 	. 
	ld b,004h		;0d65	06 04 	. . 
	rlca			;0d67	07 	. 
	nop			;0d68	00 	. 
	ex af,af'			;0d69	08 	. 
	inc b			;0d6a	04 	. 
	nop			;0d6b	00 	. 
	ex af,af'			;0d6c	08 	. 
	add a,c			;0d6d	81 	. 
	nop			;0d6e	00 	. 
	inc b			;0d6f	04 	. 
	ld b,d			;0d70	42 	B 
	jp nz,sub_0300h		;0d71	c2 00 03 	. . . 
	add a,d			;0d74	82 	. 
	nop			;0d75	00 	. 
	ex af,af'			;0d76	08 	. 
	add a,b			;0d77	80 	. 
	rlca			;0d78	07 	. 
	nop			;0d79	00 	. 
	rlca			;0d7a	07 	. 
	inc b			;0d7b	04 	. 
	nop			;0d7c	00 	. 
	inc b			;0d7d	04 	. 
	ld b,b			;0d7e	40 	@ 
	ret nz			;0d7f	c0 	. 
	nop			;0d80	00 	. 
	inc de			;0d81	13 	. 
	ld b,b			;0d82	40 	@ 
	nop			;0d83	00 	. 
	ex af,af'			;0d84	08 	. 
	inc b			;0d85	04 	. 
	jr nz,$+41		;0d86	20 27 	  ' 
	ld a,0ffh		;0d88	3e ff 	> . 
	inc a			;0d8a	3c 	< 
	ld a,0ffh		;0d8b	3e ff 	> . 
	ccf			;0d8d	3f 	? 
	ret m			;0d8e	f8 	. 
	nop			;0d8f	00 	. 
	inc bc			;0d90	03 	. 
	call m,sub_0300h		;0d91	fc 00 03 	. . . 
	ret m			;0d94	f8 	. 
	call m,sub_00e0h		;0d95	fc e0 00 	. . . 
	rlca			;0d98	07 	. 
	jr nz,$+1		;0d99	20 ff 	  . 
	ld b,b			;0d9b	40 	@ 
	ld b,e			;0d9c	43 	C 
	ld c,h			;0d9d	4c 	L 
	ld (hl),b			;0d9e	70 	p 
	nop			;0d9f	00 	. 
	inc bc			;0da0	03 	. 
	ld b,b			;0da1	40 	@ 
	nop			;0da2	00 	. 
	ex af,af'			;0da3	08 	. 
	nop			;0da4	00 	. 
	rst 10h			;0da5	d7 	. 
	nop			;0da6	00 	. 
	inc bc			;0da7	03 	. 
	push bc			;0da8	c5 	. 
	jp nz,083ffh		;0da9	c2 ff 83 	. . . 
	add a,c			;0dac	81 	. 
	nop			;0dad	00 	. 
	ld bc,0e4ffh		;0dae	01 ff e4 	. . . 
	and b			;0db1	a0 	. 
	jr nz,l0db4h		;0db2	20 00 	  . 
l0db4h:
	inc b			;0db4	04 	. 
	and b			;0db5	a0 	. 
	pop bc			;0db6	c1 	. 
	rst 38h			;0db7	ff 	. 
	ld b,b			;0db8	40 	@ 
	ld h,b			;0db9	60 	` 
	ld (hl),b			;0dba	70 	p 
	ld e,b			;0dbb	58 	X 
	ld c,h			;0dbc	4c 	L 
	ld b,a			;0dbd	47 	G 
	ret po			;0dbe	e0 	. 
	nop			;0dbf	00 	. 
	ld b,020h		;0dc0	06 20 	.   
	ret po			;0dc2	e0 	. 
	nop			;0dc3	00 	. 
	ld bc,00700h		;0dc4	01 00 07 	. . . 
	ld a,(hl)			;0dc7	7e 	~ 
	call m,0f8feh		;0dc8	fc fe f8 	. . . 
	ret p			;0dcb	f0 	. 
	call m,l0701h		;0dcc	fc 01 07 	. . . 
	ld c,03eh		;0dcf	0e 3e 	. > 
	rst 38h			;0dd1	ff 	. 
	ccf			;0dd2	3f 	? 
	ld a,a			;0dd3	7f 	 
	rra			;0dd4	1f 	. 
	rst 38h			;0dd5	ff 	. 
	rst 38h			;0dd6	ff 	. 
	rst 38h			;0dd7	ff 	. 
	cp 000h		;0dd8	fe 00 	. . 
	inc bc			;0dda	03 	. 
	call m,0fff8h		;0ddb	fc f8 ff 	. . . 
	ccf			;0dde	3f 	? 
	rst 38h			;0ddf	ff 	. 
	ld a,a			;0de0	7f 	 
	nop			;0de1	00 	. 
	inc bc			;0de2	03 	. 
	rst 38h			;0de3	ff 	. 
	ld a,a			;0de4	7f 	 
	jr nz,$+4		;0de5	20 02 	  . 
	ex af,af'			;0de7	08 	. 
	jr l0e5eh		;0de8	18 74 	. t 
	jr nz,l0e34h		;0dea	20 48 	  H 
	add a,b			;0dec	80 	. 
	ex af,af'			;0ded	08 	. 
	nop			;0dee	00 	. 
	ld bc,l1200h		;0def	01 00 12 	. . . 
	ld bc,l0100h		;0df2	01 00 01 	. . . 
	nop			;0df5	00 	. 
	djnz l0df8h		;0df6	10 00 	. . 
l0df8h:
	ld bc,08000h		;0df8	01 00 80 	. . . 
	nop			;0dfb	00 	. 
	inc b			;0dfc	04 	. 
	nop			;0dfd	00 	. 
	ld bc,0ad07h		;0dfe	01 07 ad 	. . . 
	ld e,a			;0e01	5f 	_ 
	nop			;0e02	00 	. 
	inc b			;0e03	04 	. 
	nop			;0e04	00 	. 
	ld b,b			;0e05	40 	@ 
	call p,0eebfh		;0e06	f4 bf ee 	. . . 
	nop			;0e09	00 	. 
	ex af,af'			;0e0a	08 	. 
	add a,b			;0e0b	80 	. 
	nop			;0e0c	00 	. 
	ex af,af'			;0e0d	08 	. 
	nop			;0e0e	00 	. 
	nop			;0e0f	00 	. 
	inc b			;0e10	04 	. 
	add a,b			;0e11	80 	. 
	add a,c			;0e12	81 	. 
	rst 8			;0e13	cf 	. 
	rst 38h			;0e14	ff 	. 
	rst 38h			;0e15	ff 	. 
	rst 38h			;0e16	ff 	. 
	nop			;0e17	00 	. 
	inc e			;0e18	1c 	. 
	rrca			;0e19	0f 	. 
	sbc a,a			;0e1a	9f 	. 
	nop			;0e1b	00 	. 
sub_0e1ch:
	inc bc			;0e1c	03 	. 
	rst 38h			;0e1d	ff 	. 
sub_0e1eh:
	nop			;0e1e	00 	. 
	ex af,af'			;0e1f	08 	. 
	ld bc,l0800h		;0e20	01 00 08 	. . . 
	nop			;0e23	00 	. 
	nop			;0e24	00 	. 
	inc bc			;0e25	03 	. 
	ld bc,09f39h		;0e26	01 39 9f 	. 9 . 
	nop			;0e29	00 	. 
	dec bc			;0e2a	0b 	. 
	rst 38h			;0e2b	ff 	. 
	nop			;0e2c	00 	. 
	ex af,af'			;0e2d	08 	. 
	ex af,af'			;0e2e	08 	. 
	nop			;0e2f	00 	. 
	ex af,af'			;0e30	08 	. 
	jr nz,l0e33h		;0e31	20 00 	  . 
l0e33h:
	ex af,af'			;0e33	08 	. 
l0e34h:
	rst 38h			;0e34	ff 	. 
	nop			;0e35	00 	. 
	ex af,af'			;0e36	08 	. 
	ld b,b			;0e37	40 	@ 
	nop			;0e38	00 	. 
	ex af,af'			;0e39	08 	. 
	nop			;0e3a	00 	. 
	nop			;0e3b	00 	. 
	ex af,af'			;0e3c	08 	. 
	ex af,af'			;0e3d	08 	. 
	nop			;0e3e	00 	. 
	ex af,af'			;0e3f	08 	. 
	nop			;0e40	00 	. 
	nop			;0e41	00 	. 
	ex af,af'			;0e42	08 	. 
	inc b			;0e43	04 	. 
	nop			;0e44	00 	. 
	ex af,af'			;0e45	08 	. 
	djnz l0e48h		;0e46	10 00 	. . 
l0e48h:
	ex af,af'			;0e48	08 	. 
l0e49h:
	rst 38h			;0e49	ff 	. 
	rst 38h			;0e4a	ff 	. 
	djnz l0e69h		;0e4b	10 1c 	. . 
	ld h,d			;0e4d	62 	b 
	rst 38h			;0e4e	ff 	. 
	add a,c			;0e4f	81 	. 
	add a,d			;0e50	82 	. 
	ld a,h			;0e51	7c 	| 
	ei			;0e52	fb 	. 
	rst 38h			;0e53	ff 	. 
	ret p			;0e54	f0 	. 
	nop			;0e55	00 	. 
	inc b			;0e56	04 	. 
	djnz l0e49h		;0e57	10 f0 	. . 
	nop			;0e59	00 	. 
	djnz $+1		;0e5a	10 ff 	. . 
	rst 8			;0e5c	cf 	. 
	add a,(hl)			;0e5d	86 	. 
l0e5eh:
	nop			;0e5e	00 	. 
	ld b,000h		;0e5f	06 00 	. . 
	ccf			;0e61	3f 	? 
	rra			;0e62	1f 	. 
	inc e			;0e63	1c 	. 
	nop			;0e64	00 	. 
	dec b			;0e65	05 	. 
	djnz l0e68h		;0e66	10 00 	. . 
l0e68h:
	ex af,af'			;0e68	08 	. 
l0e69h:
	rst 38h			;0e69	ff 	. 
	defb 0fdh,091h,000h	;illegal sequence		;0e6a	fd 91 00 	. . . 
	ld b,081h		;0e6d	06 81 	. . 
	rst 38h			;0e6f	ff 	. 
	rst 38h			;0e70	ff 	. 
	ld a,a			;0e71	7f 	 
	nop			;0e72	00 	. 
	dec b			;0e73	05 	. 
	nop			;0e74	00 	. 
	nop			;0e75	00 	. 
	ld bc,0f8ffh		;0e76	01 ff f8 	. . . 
	add a,b			;0e79	80 	. 
	nop			;0e7a	00 	. 
	ld b,000h		;0e7b	06 00 	. . 
	rlca			;0e7d	07 	. 
	rra			;0e7e	1f 	. 
	nop			;0e7f	00 	. 
	inc bc			;0e80	03 	. 
l0e81h:
	ccf			;0e81	3f 	? 
	rra			;0e82	1f 	. 
	rrca			;0e83	0f 	. 
	ld bc,0cf07h		;0e84	01 07 cf 	. . . 
	rst 28h			;0e87	ef 	. 
	rst 30h			;0e88	f7 	. 
	rst 28h			;0e89	ef 	. 
	rst 38h			;0e8a	ff 	. 
	rst 38h			;0e8b	ff 	. 
	scf			;0e8c	37 	7 
	ld a,a			;0e8d	7f 	 
	rst 38h			;0e8e	ff 	. 
	rst 38h			;0e8f	ff 	. 
	rst 38h			;0e90	ff 	. 
	ld a,a			;0e91	7f 	 
	rrca			;0e92	0f 	. 
	nop			;0e93	00 	. 
	ld bc,l0000h		;0e94	01 00 00 	. . . 
	dec b			;0e97	05 	. 
	rst 38h			;0e98	ff 	. 
	rst 18h			;0e99	df 	. 
	rlca			;0e9a	07 	. 
	nop			;0e9b	00 	. 
	ld bc,l0000h		;0e9c	01 00 00 	. . . 
	ex af,af'			;0e9f	08 	. 
	rst 38h			;0ea0	ff 	. 
	nop			;0ea1	00 	. 
	ld bc,0f000h		;0ea2	01 00 f0 	. . . 
	call m,sub_00f9h		;0ea5	fc f9 00 	. . . 
	inc bc			;0ea8	03 	. 
	ei			;0ea9	fb 	. 
	defb 0fdh,000h,004h	;illegal sequence		;0eaa	fd 00 04 	. . . 
	rst 38h			;0ead	ff 	. 
	rst 38h			;0eae	ff 	. 
	rst 28h			;0eaf	ef 	. 
	rst 18h			;0eb0	df 	. 
	ld sp,l0600h		;0eb1	31 00 06 	1 . . 
	rst 38h			;0eb4	ff 	. 
	cp 0f0h		;0eb5	fe f0 	. . 
	nop			;0eb7	00 	. 
	ld bc,00700h		;0eb8	01 00 07 	. . . 
	ld a,a			;0ebb	7f 	 
	nop			;0ebc	00 	. 
	dec b			;0ebd	05 	. 
	rst 38h			;0ebe	ff 	. 
	nop			;0ebf	00 	. 
	ld bc,08000h		;0ec0	01 00 80 	. . . 
	nop			;0ec3	00 	. 
	inc bc			;0ec4	03 	. 
	ret po			;0ec5	e0 	. 
	call c,sub_00feh		;0ec6	dc fe 00 	. . . 
	ld b,0ffh		;0ec9	06 ff 	. . 
	cp a			;0ecb	bf 	. 
	rra			;0ecc	1f 	. 
	rlca			;0ecd	07 	. 
	nop			;0ece	00 	. 
	inc b			;0ecf	04 	. 
	rst 38h			;0ed0	ff 	. 
	defb 0fdh,0f6h,0cch	;illegal sequence		;0ed1	fd f6 cc 	. . . 
	nop			;0ed4	00 	. 
	inc bc			;0ed5	03 	. 
	nop			;0ed6	00 	. 
	ld (hl),b			;0ed7	70 	p 
	dec a			;0ed8	3d 	= 
	ld a,a			;0ed9	7f 	 
	nop			;0eda	00 	. 
	inc bc			;0edb	03 	. 
	rst 38h			;0edc	ff 	. 
	nop			;0edd	00 	. 
	ld bc,l3800h		;0ede	01 00 38 	. . 8 
	pop af			;0ee1	f1 	. 
	ex de,hl			;0ee2	eb 	. 
	rst 28h			;0ee3	ef 	. 
	nop			;0ee4	00 	. 
	inc bc			;0ee5	03 	. 
	rst 38h			;0ee6	ff 	. 
	nop			;0ee7	00 	. 
	rlca			;0ee8	07 	. 
	nop			;0ee9	00 	. 
	ret m			;0eea	f8 	. 
	nop			;0eeb	00 	. 
	dec b			;0eec	05 	. 
	nop			;0eed	00 	. 
	inc bc			;0eee	03 	. 
	inc c			;0eef	0c 	. 
	djnz l0ef9h		;0ef0	10 07 	. . 
	add hl,sp			;0ef2	39 	9 
	ex af,af'			;0ef3	08 	. 
l0ef4h:
	nop			;0ef4	00 	. 
	ld bc,l1400h		;0ef5	01 00 14 	. . . 
	ld h,b			;0ef8	60 	` 
l0ef9h:
	ld b,000h		;0ef9	06 00 	. . 
	ld bc,l0000h		;0efb	01 00 00 	. . . 
sub_0efeh:
	dec b			;0efe	05 	. 
	ld b,b			;0eff	40 	@ 
l0f00h:
	ld a,b			;0f00	78 	x 
	ld b,a			;0f01	47 	G 
	ld b,b			;0f02	40 	@ 
l0f03h:
	rst 38h			;0f03	ff 	. 
	nop			;0f04	00 	. 
	rlca			;0f05	07 	. 
	jr c,$-62		;0f06	38 c0 	8 . 
	rst 38h			;0f08	ff 	. 
	nop			;0f09	00 	. 
	jr nz,$+1		;0f0a	20 ff 	  . 
	nop			;0f0c	00 	. 
	ret p			;0f0d	f0 	. 
	rrca			;0f0e	0f 	. 
	nop			;0f0f	00 	. 
	inc b			;0f10	04 	. 
	nop			;0f11	00 	. 
	nop			;0f12	00 	. 
	rlca			;0f13	07 	. 
	jr nz,$-30		;0f14	20 e0 	  . 
	nop			;0f16	00 	. 
	ex af,af'			;0f17	08 	. 
	inc b			;0f18	04 	. 
	nop			;0f19	00 	. 
	inc bc			;0f1a	03 	. 
	nop			;0f1b	00 	. 
	ld bc,l38e7h		;0f1c	01 e7 38 	. . 8 
	dec c			;0f1f	0d 	. 
	ld (bc),a			;0f20	02 	. 
	ld b,018h		;0f21	06 18 	. . 
	ld h,b			;0f23	60 	` 
	add a,c			;0f24	81 	. 
	ld b,01ch		;0f25	06 1c 	. . 
	ret c			;0f27	d8 	. 
	ret po			;0f28	e0 	. 
	nop			;0f29	00 	. 
	inc bc			;0f2a	03 	. 
	nop			;0f2b	00 	. 
	inc bc			;0f2c	03 	. 
	inc c			;0f2d	0c 	. 
	djnz l0f90h		;0f2e	10 60 	. ` 
	add a,c			;0f30	81 	. 
	rrca			;0f31	0f 	. 
	jr nc,l0ef4h		;0f32	30 c0 	0 . 
	nop			;0f34	00 	. 
	ld bc,l2000h		;0f35	01 00 20 	. .   
	ld b,b			;0f38	40 	@ 
	add a,d			;0f39	82 	. 
	nop			;0f3a	00 	. 
	ld bc,l0600h		;0f3b	01 00 06 	. . . 
	jr $+98		;0f3e	18 60 	. ` 
	add a,b			;0f40	80 	. 
	nop			;0f41	00 	. 
	ld bc,l0100h		;0f42	01 00 01 	. . . 
	ld b,000h		;0f45	06 00 	. . 
	ld bc,l0400h		;0f47	01 00 04 	. . . 
	ex af,af'			;0f4a	08 	. 
	djnz l0f6dh		;0f4b	10 20 	.   
	ld b,b			;0f4d	40 	@ 
	add a,b			;0f4e	80 	. 
	rst 38h			;0f4f	ff 	. 
	nop			;0f50	00 	. 
	ret p			;0f51	f0 	. 
	inc c			;0f52	0c 	. 
	ld a,(l0004h+1)		;0f53	3a 05 00 	: . . 
	rlca			;0f56	07 	. 
	nop			;0f57	00 	. 
	add a,b			;0f58	80 	. 
	ld b,b			;0f59	40 	@ 
	jr nz,l0f6ch		;0f5a	20 10 	  . 
	ex af,af'			;0f5c	08 	. 
	rst 38h			;0f5d	ff 	. 
	jr nz,$+1		;0f5e	20 ff 	  . 
	djnz $+1		;0f60	10 ff 	. . 
	ex af,af'			;0f62	08 	. 
	rst 38h			;0f63	ff 	. 
	inc b			;0f64	04 	. 
	ld b,001h		;0f65	06 01 	. . 
	rst 38h			;0f67	ff 	. 
	nop			;0f68	00 	. 
	djnz l0f73h		;0f69	10 08 	. . 
	inc b			;0f6b	04 	. 
l0f6ch:
	inc bc			;0f6c	03 	. 
l0f6dh:
	rlca			;0f6d	07 	. 
	nop			;0f6e	00 	. 
	rlca			;0f6f	07 	. 
	inc b			;0f70	04 	. 
	nop			;0f71	00 	. 
	inc b			;0f72	04 	. 
l0f73h:
	ld b,b			;0f73	40 	@ 
	ret nz			;0f74	c0 	. 
	nop			;0f75	00 	. 
	inc bc			;0f76	03 	. 
	ld b,b			;0f77	40 	@ 
	rst 38h			;0f78	ff 	. 
	nop			;0f79	00 	. 
	add a,b			;0f7a	80 	. 
	ret po			;0f7b	e0 	. 
	ld e,001h		;0f7c	1e 01 	. . 
	nop			;0f7e	00 	. 
	rlca			;0f7f	07 	. 
	nop			;0f80	00 	. 
	ret p			;0f81	f0 	. 
	rrca			;0f82	0f 	. 
	nop			;0f83	00 	. 
	ld bc,l0000h		;0f84	01 00 00 	. . . 
	ex af,af'			;0f87	08 	. 
	djnz l0f8ah		;0f88	10 00 	. . 
l0f8ah:
	ex af,af'			;0f8a	08 	. 
	nop			;0f8b	00 	. 
	nop			;0f8c	00 	. 
	ex af,af'			;0f8d	08 	. 
	add a,b			;0f8e	80 	. 
	nop			;0f8f	00 	. 
l0f90h:
	ld bc,0f9ffh		;0f90	01 ff f9 	. . . 
	ld (hl),b			;0f93	70 	p 
	jr nc,l0faeh		;0f94	30 18 	0 . 
	ex af,af'			;0f96	08 	. 
	ld b,001h		;0f97	06 01 	. . 
	nop			;0f99	00 	. 
	djnz $+1		;0f9a	10 ff 	. . 
	rlca			;0f9c	07 	. 
	nop			;0f9d	00 	. 
	ld bc,l0100h		;0f9e	01 00 01 	. . . 
	ld b,0e8h		;0fa1	06 e8 	. . 
	jr nc,$-61		;0fa3	30 c1 	0 . 
	dec b			;0fa5	05 	. 
	ret po			;0fa6	e0 	. 
	pop bc			;0fa7	c1 	. 
	ld (bc),a			;0fa8	02 	. 
	inc c			;0fa9	0c 	. 
	djnz l0fcch		;0faa	10 20 	.   
	pop bc			;0fac	c1 	. 
	add a,d			;0fad	82 	. 
l0faeh:
	rst 38h			;0fae	ff 	. 
	nop			;0faf	00 	. 
	ld (hl),b			;0fb0	70 	p 
	dec a			;0fb1	3d 	= 
	ld a,a			;0fb2	7f 	 
	nop			;0fb3	00 	. 
	inc bc			;0fb4	03 	. 
	rst 38h			;0fb5	ff 	. 
	nop			;0fb6	00 	. 
	ld bc,l3800h		;0fb7	01 00 38 	. . 8 
	pop af			;0fba	f1 	. 
	ex de,hl			;0fbb	eb 	. 
	rst 28h			;0fbc	ef 	. 
	nop			;0fbd	00 	. 
	inc bc			;0fbe	03 	. 
	rst 38h			;0fbf	ff 	. 
	rlca			;0fc0	07 	. 
	ld d,078h		;0fc1	16 78 	. x 
	ret po			;0fc3	e0 	. 
	nop			;0fc4	00 	. 
	inc bc			;0fc5	03 	. 
	nop			;0fc6	00 	. 
	ld bc,00402h		;0fc7	01 02 04 	. . . 
	rst 38h			;0fca	ff 	. 
	ex af,af'			;0fcb	08 	. 
l0fcch:
	rst 38h			;0fcc	ff 	. 
	ld d,b			;0fcd	50 	P 
	and b			;0fce	a0 	. 
	ret nz			;0fcf	c0 	. 
	ld b,b			;0fd0	40 	@ 
	add a,b			;0fd1	80 	. 
	nop			;0fd2	00 	. 
	dec b			;0fd3	05 	. 
	nop			;0fd4	00 	. 
	ld bc,l0100h		;0fd5	01 00 01 	. . . 
	nop			;0fd8	00 	. 
	ld b,b			;0fd9	40 	@ 
	jr nz,l101ch		;0fda	20 40 	  @ 
	ret nz			;0fdc	c0 	. 
	ld h,b			;0fdd	60 	` 
	nop			;0fde	00 	. 
	ld bc,01800h		;0fdf	01 00 18 	. . . 
	nop			;0fe2	00 	. 
	ld bc,l0200h		;0fe3	01 00 02 	. . . 
	nop			;0fe6	00 	. 
	ld c,000h		;0fe7	0e 00 	. . 
	ld bc,l00ffh		;0fe9	01 ff 00 	. . . 
	djnz $+1		;0fec	10 ff 	. . 
	ex af,af'			;0fee	08 	. 
	inc b			;0fef	04 	. 
	ld b,000h		;0ff0	06 00 	. . 
	ld bc,0c000h		;0ff2	01 00 c0 	. . . 
	ld d,b			;0ff5	50 	P 
	ld hl,l0b1ch		;0ff6	21 1c 0b 	! . . 
	ld d,05ch		;0ff9	16 5c 	. \ 
	rst 38h			;0ffb	ff 	. 
	inc bc			;0ffc	03 	. 
	dec b			;0ffd	05 	. 
	rla			;0ffe	17 	. 
l0fffh:
	cp 074h		;0fff	fe 74 	. t 
	ld e,b			;1001	58 	X 
	ret p			;1002	f0 	. 
	sbc a,b			;1003	98 	. 
	ld (hl),b			;1004	70 	p 
	ret nz			;1005	c0 	. 
	add a,b			;1006	80 	. 
	nop			;1007	00 	. 
	inc bc			;1008	03 	. 
	nop			;1009	00 	. 
	jr nc,l100ch		;100a	30 00 	0 . 
l100ch:
	jr z,$+1		;100c	28 ff 	( . 
	nop			;100e	00 	. 
	inc bc			;100f	03 	. 
	cp 000h		;1010	fe 00 	. . 
	ld c,0ffh		;1012	0e ff 	. . 
	rst 38h			;1014	ff 	. 
	cp 0fch		;1015	fe fc 	. . 
	ret m			;1017	f8 	. 
	cp 000h		;1018	fe 00 	. . 
	inc bc			;101a	03 	. 
	rst 38h			;101b	ff 	. 
l101ch:
	call po,l0600h		;101c	e4 00 06 	. . . 
	jr nz,l10a0h		;101f	20 7f 	   
	rst 38h			;1021	ff 	. 
	ld (hl),e			;1022	73 	s 
	rst 38h			;1023	ff 	. 
	ld d,e			;1024	53 	S 
	ld h,e			;1025	63 	c 
	ld b,d			;1026	42 	B 
	ld b,h			;1027	44 	D 
	nop			;1028	00 	. 
	ex af,af'			;1029	08 	. 
	jr nz,l1070h		;102a	20 44 	  D 
	ld c,b			;102c	48 	H 
	ld (hl),b			;102d	70 	p 
	nop			;102e	00 	. 
	dec b			;102f	05 	. 
	ld b,b			;1030	40 	@ 
	nop			;1031	00 	. 
	ld b,0ffh		;1032	06 ff 	. . 
	call m,sub_00c0h		;1034	fc c0 00 	. . . 
	djnz $+66		;1037	10 40 	. @ 
	jr nz,l1062h		;1039	20 27 	  ' 
	ld a,0ffh		;103b	3e ff 	> . 
	inc a			;103d	3c 	< 
	ld a,0ffh		;103e	3e ff 	> . 
	ccf			;1040	3f 	? 
	nop			;1041	00 	. 
	ex af,af'			;1042	08 	. 
	add a,b			;1043	80 	. 
	nop			;1044	00 	. 
	ex af,af'			;1045	08 	. 
	ccf			;1046	3f 	? 
	rst 38h			;1047	ff 	. 
	add a,b			;1048	80 	. 
	add a,c			;1049	81 	. 
	add a,e			;104a	83 	. 
	add a,a			;104b	87 	. 
	rst 28h			;104c	ef 	. 
	rst 38h			;104d	ff 	. 
	rst 38h			;104e	ff 	. 
	rst 38h			;104f	ff 	. 
	ccf			;1050	3f 	? 
	nop			;1051	00 	. 
	ld bc,0bfffh		;1052	01 ff bf 	. . . 
	ccf			;1055	3f 	? 
	cp a			;1056	bf 	. 
	nop			;1057	00 	. 
	inc b			;1058	04 	. 
	rst 38h			;1059	ff 	. 
	rst 38h			;105a	ff 	. 
	cp 0ffh		;105b	fe ff 	. . 
	call m,0feffh		;105d	fc ff fe 	. . . 
	nop			;1060	00 	. 
	inc bc			;1061	03 	. 
l1062h:
	rst 38h			;1062	ff 	. 
	cp 0fch		;1063	fe fc 	. . 
	rst 38h			;1065	ff 	. 
	ret p			;1066	f0 	. 
	ret po			;1067	e0 	. 
	nop			;1068	00 	. 
	rlca			;1069	07 	. 
	rst 38h			;106a	ff 	. 
	cp 0ffh		;106b	fe ff 	. . 
	ret po			;106d	e0 	. 
	rst 38h			;106e	ff 	. 
	ret nz			;106f	c0 	. 
l1070h:
	add a,b			;1070	80 	. 
	nop			;1071	00 	. 
	inc bc			;1072	03 	. 
	nop			;1073	00 	. 
	nop			;1074	00 	. 
	ex af,af'			;1075	08 	. 
	rst 38h			;1076	ff 	. 
	nop			;1077	00 	. 
	ld bc,l2000h		;1078	01 00 20 	. .   
	inc c			;107b	0c 	. 
	nop			;107c	00 	. 
	dec b			;107d	05 	. 
	nop			;107e	00 	. 
	nop			;107f	00 	. 
	djnz $+1		;1080	10 ff 	. . 
	rst 38h			;1082	ff 	. 
	nop			;1083	00 	. 
	ld e,061h		;1084	1e 61 	. a 
	add a,b			;1086	80 	. 
	nop			;1087	00 	. 
	ld b,000h		;1088	06 00 	. . 
	ret nz			;108a	c0 	. 
	jr nc,$+19		;108b	30 11 	0 . 
	ld c,003h		;108d	0e 03 	. . 
	rst 38h			;108f	ff 	. 
	nop			;1090	00 	. 
	ld bc,l0004h		;1091	01 04 00 	. . . 
	ld b,000h		;1094	06 00 	. . 
	add a,b			;1096	80 	. 
	ld b,b			;1097	40 	@ 
	add a,b			;1098	80 	. 
	ret nz			;1099	c0 	. 
	jr nc,l109ch		;109a	30 00 	0 . 
l109ch:
	ld bc,0ff00h		;109c	01 00 ff 	. . . 
	ld (bc),a			;109f	02 	. 
l10a0h:
	ld bc,l0100h		;10a0	01 00 01 	. . . 
	nop			;10a3	00 	. 
	add a,b			;10a4	80 	. 
	ret po			;10a5	e0 	. 
	ld h,b			;10a6	60 	` 
	ret nc			;10a7	d0 	. 
	nop			;10a8	00 	. 
	inc bc			;10a9	03 	. 
	nop			;10aa	00 	. 
	ret nz			;10ab	c0 	. 
	jr nz,l10beh		;10ac	20 10 	  . 
	inc c			;10ae	0c 	. 
	inc bc			;10af	03 	. 
	call pe,sub_0d37h		;10b0	ec 37 0d 	. 7 . 
	inc bc			;10b3	03 	. 
	nop			;10b4	00 	. 
	rlca			;10b5	07 	. 
	nop			;10b6	00 	. 
	add a,b			;10b7	80 	. 
	ld (hl),b			;10b8	70 	p 
	ld c,0ffh		;10b9	0e ff 	. . 
	nop			;10bb	00 	. 
	add a,b			;10bc	80 	. 
	ld (hl),b			;10bd	70 	p 
l10beh:
	ld b,003h		;10be	06 03 	. . 
	nop			;10c0	00 	. 
	rlca			;10c1	07 	. 
	nop			;10c2	00 	. 
	ld l,d			;10c3	6a 	j 
	dec c			;10c4	0d 	. 
	ld bc,l00ffh		;10c5	01 ff 00 	. . . 
	ret po			;10c8	e0 	. 
	inc e			;10c9	1c 	. 
	inc bc			;10ca	03 	. 
	nop			;10cb	00 	. 
	rlca			;10cc	07 	. 
	nop			;10cd	00 	. 
	ld d,l			;10ce	55 	U 
	dec a			;10cf	3d 	= 
	ld d,h			;10d0	54 	T 
	nop			;10d1	00 	. 
	rlca			;10d2	07 	. 
	nop			;10d3	00 	. 
	ret nz			;10d4	c0 	. 
	inc a			;10d5	3c 	< 
	inc bc			;10d6	03 	. 
	nop			;10d7	00 	. 
	ld bc,l0000h		;10d8	01 00 00 	. . . 
	ld b,020h		;10db	06 20 	.   
	ret po			;10dd	e0 	. 
	jr nz,$+1		;10de	20 ff 	  . 
	ld b,b			;10e0	40 	@ 
	nop			;10e1	00 	. 
	ld b,0c0h		;10e2	06 c0 	. . 
	nop			;10e4	00 	. 
	ld b,0ffh		;10e5	06 ff 	. . 
	ccf			;10e7	3f 	? 
	inc bc			;10e8	03 	. 
	nop			;10e9	00 	. 
	rrca			;10ea	0f 	. 
	rst 38h			;10eb	ff 	. 
	ld a,a			;10ec	7f 	 
	rst 38h			;10ed	ff 	. 
	rlca			;10ee	07 	. 
	rst 38h			;10ef	ff 	. 
	inc bc			;10f0	03 	. 
	ld bc,sub_0300h		;10f1	01 00 03 	. . . 
	nop			;10f4	00 	. 
	nop			;10f5	00 	. 
	inc bc			;10f6	03 	. 
	rst 38h			;10f7	ff 	. 
	ld a,a			;10f8	7f 	 
	ccf			;10f9	3f 	? 
	rst 38h			;10fa	ff 	. 
	rrca			;10fb	0f 	. 
	rlca			;10fc	07 	. 
	nop			;10fd	00 	. 
	ld bc,0ffffh		;10fe	01 ff ff 	. . . 
	ld a,a			;1101	7f 	 
	ccf			;1102	3f 	? 
	rra			;1103	1f 	. 
	ld a,a			;1104	7f 	 
	rst 38h			;1105	ff 	. 
	rst 38h			;1106	ff 	. 
	rra			;1107	1f 	. 
	nop			;1108	00 	. 
	inc bc			;1109	03 	. 
	ccf			;110a	3f 	? 
	nop			;110b	00 	. 
	inc bc			;110c	03 	. 
	rra			;110d	1f 	. 
	ccf			;110e	3f 	? 
	rst 38h			;110f	ff 	. 
	rst 38h			;1110	ff 	. 
	rst 38h			;1111	ff 	. 
	ld a,a			;1112	7f 	 
	rst 38h			;1113	ff 	. 
	ccf			;1114	3f 	? 
	nop			;1115	00 	. 
	dec b			;1116	05 	. 
	ld a,a			;1117	7f 	 
	nop			;1118	00 	. 
	dec c			;1119	0d 	. 
	rst 38h			;111a	ff 	. 
	nop			;111b	00 	. 
	inc bc			;111c	03 	. 
	inc b			;111d	04 	. 
	rlca			;111e	07 	. 
	nop			;111f	00 	. 
	inc b			;1120	04 	. 
	inc b			;1121	04 	. 
	nop			;1122	00 	. 
	nop			;1123	00 	. 
	nop			;1124	00 	. 
	ld bc,0bfffh		;1125	01 ff bf 	. . . 
	rst 38h			;1128	ff 	. 
	ld a,07fh		;1129	3e 7f 	>  
	scf			;112b	37 	7 
	or a			;112c	b7 	. 
	ei			;112d	fb 	. 
	nop			;112e	00 	. 
	ld bc,l00ffh		;112f	01 ff 00 	. . . 
	inc bc			;1132	03 	. 
	ld a,a			;1133	7f 	 
	rra			;1134	1f 	. 
	ccf			;1135	3f 	? 
	adc a,(hl)			;1136	8e 	. 
	ex (sp),hl			;1137	e3 	. 
	nop			;1138	00 	. 
	ld bc,0f9ffh		;1139	01 ff f9 	. . . 
	di			;113c	f3 	. 
	push hl			;113d	e5 	. 
	defb 0edh;next byte illegal after ed		;113e	ed 	. 
	call 09bdbh		;113f	cd db 9b 	. . . 
	nop			;1142	00 	. 
	ld bc,0dfffh		;1143	01 ff df 	. . . 
	add a,a			;1146	87 	. 
	jp l00e3h		;1147	c3 e3 00 	. . . 
	inc bc			;114a	03 	. 
	di			;114b	f3 	. 
	nop			;114c	00 	. 
	ld bc,0f1ffh		;114d	01 ff f1 	. . . 
	call po,0feeeh		;1150	e4 ee fe 	. . . 
	or 0e3h		;1153	f6 e3 	. . 
	inc hl			;1155	23 	# 
	nop			;1156	00 	. 
	ld bc,0efffh		;1157	01 ff ef 	. . . 
	nop			;115a	00 	. 
	inc bc			;115b	03 	. 
	ld c,a			;115c	4f 	O 
	sbc a,a			;115d	9f 	. 
	sbc a,(hl)			;115e	9e 	. 
	call z,sub_0300h		;115f	cc 00 03 	. . . 
	cp e			;1162	bb 	. 
	cp l			;1163	bd 	. 
	cp h			;1164	bc 	. 
	sbc a,(hl)			;1165	9e 	. 
	adc a,h			;1166	8c 	. 
	pop bc			;1167	c1 	. 
	rst 38h			;1168	ff 	. 
	di			;1169	f3 	. 
	rst 38h			;116a	ff 	. 
	rst 20h			;116b	e7 	. 
	rrca			;116c	0f 	. 
	rra			;116d	1f 	. 
	rrca			;116e	0f 	. 
	rst 38h			;116f	ff 	. 
	rst 38h			;1170	ff 	. 
	pop af			;1171	f1 	. 
	and 0c4h		;1172	e6 c4 	. . 
	call 0878dh		;1174	cd 8d 87 	. . . 
	ret nz			;1177	c0 	. 
	nop			;1178	00 	. 
	ld bc,l0fffh		;1179	01 ff 0f 	. . . 
	nop			;117c	00 	. 
	ld bc,0fbffh		;117d	01 ff fb 	. . . 
	rst 38h			;1180	ff 	. 
	defb 0fdh,007h,07fh	;illegal sequence		;1181	fd 07 7f 	. .  
	nop			;1184	00 	. 
	ld bc,0e4ffh		;1185	01 ff e4 	. . . 
	ret			;1188	c9 	. 
	in a,(0ffh)		;1189	db ff 	. . 
	sbc a,c			;118b	99 	. 
	call z,0cff0h		;118c	cc f0 cf 	. . . 
	ld (hl),a			;118f	77 	w 
	ei			;1190	fb 	. 
	nop			;1191	00 	. 
	inc bc			;1192	03 	. 
	ld sp,hl			;1193	f9 	. 
	inc bc			;1194	03 	. 
	nop			;1195	00 	. 
	ld bc,l00ffh		;1196	01 ff 00 	. . . 
	nop			;1199	00 	. 
	ld a,a			;119a	7f 	 
	rst 8			;119b	cf 	. 
	rst 38h			;119c	ff 	. 
	rst 0			;119d	c7 	. 
	adc a,c			;119e	89 	. 
	exx			;119f	d9 	. 
	ld sp,hl			;11a0	f9 	. 
	rst 38h			;11a1	ff 	. 
	rst 38h			;11a2	ff 	. 
	sbc a,b			;11a3	98 	. 
	add a,h			;11a4	84 	. 
	add a,d			;11a5	82 	. 
	pop hl			;11a6	e1 	. 
	pop bc			;11a7	c1 	. 
	di			;11a8	f3 	. 
	rst 38h			;11a9	ff 	. 
	rst 38h			;11aa	ff 	. 
	ld sp,hl			;11ab	f9 	. 
	di			;11ac	f3 	. 
	and 0eeh		;11ad	e6 ee 	. . 
	adc a,0dch		;11af	ce dc 	. . 
	sbc a,h			;11b1	9c 	. 
	rst 38h			;11b2	ff 	. 
	rst 38h			;11b3	ff 	. 
	ld a,a			;11b4	7f 	 
	ccf			;11b5	3f 	? 
	rra			;11b6	1f 	. 
	nop			;11b7	00 	. 
	inc bc			;11b8	03 	. 
	rrca			;11b9	0f 	. 
	rst 38h			;11ba	ff 	. 
	rst 38h			;11bb	ff 	. 
	dec sp			;11bc	3b 	; 
	ld sp,01911h		;11bd	31 11 19 	1 . . 
	inc a			;11c0	3c 	< 
	defb 0fdh,000h,001h	;illegal sequence		;11c1	fd 00 01 	. . . 
	rst 38h			;11c4	ff 	. 
	di			;11c5	f3 	. 
	nop			;11c6	00 	. 
	inc bc			;11c7	03 	. 
	pop af			;11c8	f1 	. 
	ex (sp),hl			;11c9	e3 	. 
	rst 20h			;11ca	e7 	. 
	nop			;11cb	00 	. 
	ld bc,l00ffh		;11cc	01 ff 00 	. . . 
	inc bc			;11cf	03 	. 
	cp h			;11d0	bc 	. 
	cp (hl)			;11d1	be 	. 
	cp a			;11d2	bf 	. 
	sbc a,(hl)			;11d3	9e 	. 
	adc a,h			;11d4	8c 	. 
	pop bc			;11d5	c1 	. 
	rst 38h			;11d6	ff 	. 
	rrca			;11d7	0f 	. 
	rst 38h			;11d8	ff 	. 
	rra			;11d9	1f 	. 
	rst 38h			;11da	ff 	. 
	rst 38h			;11db	ff 	. 
	rrca			;11dc	0f 	. 
	rst 38h			;11dd	ff 	. 
	rst 38h			;11de	ff 	. 
	pop af			;11df	f1 	. 
	rst 20h			;11e0	e7 	. 
	rst 0			;11e1	c7 	. 
	adc a,08eh		;11e2	ce 8e 	. . 
	add a,a			;11e4	87 	. 
	ret nz			;11e5	c0 	. 
	rst 38h			;11e6	ff 	. 
	rst 38h			;11e7	ff 	. 
	rst 38h			;11e8	ff 	. 
	rlca			;11e9	07 	. 
	rst 38h			;11ea	ff 	. 
	inc bc			;11eb	03 	. 
	nop			;11ec	00 	. 
	ld bc,07fffh		;11ed	01 ff 7f 	. .  
	nop			;11f0	00 	. 
	ld bc,0e7ffh		;11f1	01 ff e7 	. . . 
	adc a,0dch		;11f4	ce dc 	. . 
	rst 38h			;11f6	ff 	. 
	sbc a,(hl)			;11f7	9e 	. 
	rst 8			;11f8	cf 	. 
	ret p			;11f9	f0 	. 
	nop			;11fa	00 	. 
	ld bc,08fffh		;11fb	01 ff 8f 	. . . 
	nop			;11fe	00 	. 
l11ffh:
	inc b			;11ff	04 	. 
l1200h:
	rlca			;1200	07 	. 
	rst 38h			;1201	ff 	. 
	rst 38h			;1202	ff 	. 
	nop			;1203	00 	. 
	nop			;1204	00 	. 
	pop af			;1205	f1 	. 
	adc a,e			;1206	8b 	. 
	rst 38h			;1207	ff 	. 
	ld b,009h		;1208	06 09 	. . 
	ld de,0fbb1h		;120a	11 b1 fb 	. . . 
	rst 20h			;120d	e7 	. 
	jr $+6		;120e	18 04 	. . 
	ld (bc),a			;1210	02 	. 
	rst 38h			;1211	ff 	. 
	ld bc,0e382h		;1212	01 82 e3 	. . . 
	nop			;1215	00 	. 
	ld bc,0feffh		;1216	01 ff fe 	. . . 
	call m,0fff8h		;1219	fc f8 ff 	. . . 
	ret p			;121c	f0 	. 
	rst 38h			;121d	ff 	. 
	ret po			;121e	e0 	. 
	nop			;121f	00 	. 
	ld bc,l0fffh		;1220	01 ff 0f 	. . . 
	inc bc			;1223	03 	. 
	nop			;1224	00 	. 
	inc b			;1225	04 	. 
	ld bc,l0f03h		;1226	01 03 0f 	. . . 
	ret nc			;1229	d0 	. 
	rst 38h			;122a	ff 	. 
	jr nz,$+1		;122b	20 ff 	  . 
	djnz l124fh		;122d	10 20 	.   
	ld hl,0a21ch		;122f	21 1c a2 	! . . 
	nop			;1232	00 	. 
	inc bc			;1233	03 	. 
	ld b,c			;1234	41 	A 
	add a,e			;1235	83 	. 
	add a,(hl)			;1236	86 	. 
	call z,sub_0500h		;1237	cc 00 05 	. . . 
	ret nz			;123a	c0 	. 
	pop hl			;123b	e1 	. 
	di			;123c	f3 	. 
	nop			;123d	00 	. 
	ld bc,l00ffh		;123e	01 ff 00 	. . . 
	inc bc			;1241	03 	. 
	inc bc			;1242	03 	. 
	rst 38h			;1243	ff 	. 
	rlca			;1244	07 	. 
	rrca			;1245	0f 	. 
	nop			;1246	00 	. 
	inc bc			;1247	03 	. 
	rst 38h			;1248	ff 	. 
	cp 0ffh		;1249	fe ff 	. . 
	ret m			;124b	f8 	. 
	rst 38h			;124c	ff 	. 
	ret p			;124d	f0 	. 
	ret m			;124e	f8 	. 
l124fh:
	rst 38h			;124f	ff 	. 
	rst 38h			;1250	ff 	. 
	rlca			;1251	07 	. 
	rst 38h			;1252	ff 	. 
	inc bc			;1253	03 	. 
	rst 38h			;1254	ff 	. 
	ld bc,0ff03h		;1255	01 03 ff 	. . . 
	rst 38h			;1258	ff 	. 
	ret m			;1259	f8 	. 
	ret p			;125a	f0 	. 
	nop			;125b	00 	. 
	inc bc			;125c	03 	. 
	ret po			;125d	e0 	. 
	ret p			;125e	f0 	. 
	nop			;125f	00 	. 
	ld bc,087ffh		;1260	01 ff 87 	. . . 
	inc bc			;1263	03 	. 
	nop			;1264	00 	. 
	inc b			;1265	04 	. 
	ld bc,l0701h+2		;1266	01 03 07 	. . . 
	nop			;1269	00 	. 
	nop			;126a	00 	. 
	ld a,a			;126b	7f 	 
	nop			;126c	00 	. 
	djnz $+1		;126d	10 ff 	. . 
	ret m			;126f	f8 	. 
	ret p			;1270	f0 	. 
	rst 38h			;1271	ff 	. 
	ret po			;1272	e0 	. 
	rst 38h			;1273	ff 	. 
	ret nz			;1274	c0 	. 
	add a,b			;1275	80 	. 
	nop			;1276	00 	. 
	ld bc,l0fffh		;1277	01 ff 0f 	. . . 
	inc bc			;127a	03 	. 
	nop			;127b	00 	. 
	inc b			;127c	04 	. 
	ld bc,l0003h		;127d	01 03 00 	. . . 
l1280h:
	djnz $+1		;1280	10 ff 	. . 
	nop			;1282	00 	. 
	rlca			;1283	07 	. 
	add a,b			;1284	80 	. 
	pop bc			;1285	c1 	. 
	nop			;1286	00 	. 
	inc bc			;1287	03 	. 
	inc bc			;1288	03 	. 
	rst 38h			;1289	ff 	. 
	rlca			;128a	07 	. 
	rst 38h			;128b	ff 	. 
	rrca			;128c	0f 	. 
	rst 38h			;128d	ff 	. 
	rst 38h			;128e	ff 	. 
	ret p			;128f	f0 	. 
	ret po			;1290	e0 	. 
	rst 38h			;1291	ff 	. 
	ret nz			;1292	c0 	. 
	rst 38h			;1293	ff 	. 
	add a,b			;1294	80 	. 
	ret nz			;1295	c0 	. 
	nop			;1296	00 	. 
	ld bc,l07ffh		;1297	01 ff 07 	. . . 
	rst 38h			;129a	ff 	. 
	inc bc			;129b	03 	. 
	rst 38h			;129c	ff 	. 
	ld bc,07f03h		;129d	01 03 7f 	. .  
	nop			;12a0	00 	. 
	ld bc,0e0ffh		;12a1	01 ff e0 	. . . 
	rst 38h			;12a4	ff 	. 
	ret nz			;12a5	c0 	. 
	rst 38h			;12a6	ff 	. 
	add a,b			;12a7	80 	. 
	ret nz			;12a8	c0 	. 
	ret p			;12a9	f0 	. 
	add a,a			;12aa	87 	. 
	inc bc			;12ab	03 	. 
	nop			;12ac	00 	. 
	inc b			;12ad	04 	. 
	ld bc,l0701h+2		;12ae	01 03 07 	. . . 
	nop			;12b1	00 	. 
	nop			;12b2	00 	. 
	nop			;12b3	00 	. 
	nop			;12b4	00 	. 
	nop			;12b5	00 	. 
	nop			;12b6	00 	. 
	nop			;12b7	00 	. 
	nop			;12b8	00 	. 
	nop			;12b9	00 	. 
	nop			;12ba	00 	. 
	nop			;12bb	00 	. 
	nop			;12bc	00 	. 
	nop			;12bd	00 	. 
	nop			;12be	00 	. 
	nop			;12bf	00 	. 
	nop			;12c0	00 	. 
	nop			;12c1	00 	. 
	nop			;12c2	00 	. 
	nop			;12c3	00 	. 
	cp b			;12c4	b8 	. 
	rst 38h			;12c5	ff 	. 
	nop			;12c6	00 	. 
	ex af,af'			;12c7	08 	. 
	nop			;12c8	00 	. 
	nop			;12c9	00 	. 
	inc c			;12ca	0c 	. 
	rst 38h			;12cb	ff 	. 
	ret p			;12cc	f0 	. 
l12cdh:
	ret nz			;12cd	c0 	. 
	cp a			;12ce	bf 	. 
	nop			;12cf	00 	. 
	dec b			;12d0	05 	. 
	rst 38h			;12d1	ff 	. 
	call m,0f0f8h		;12d2	fc f8 f0 	. . . 
	ex (sp),hl			;12d5	e3 	. 
	nop			;12d6	00 	. 
	ld bc,0feffh		;12d7	01 ff fe 	. . . 
	ret nz			;12da	c0 	. 
	rst 38h			;12db	ff 	. 
	nop			;12dc	00 	. 
	rra			;12dd	1f 	. 
	nop			;12de	00 	. 
	ld b,0ffh		;12df	06 ff 	. . 
	ccf			;12e1	3f 	? 
	rrca			;12e2	0f 	. 
	add a,e			;12e3	83 	. 
	pop hl			;12e4	e1 	. 
	nop			;12e5	00 	. 
	ex af,af'			;12e6	08 	. 
	rst 38h			;12e7	ff 	. 
	ret p			;12e8	f0 	. 
	ld a,h			;12e9	7c 	| 
	inc a			;12ea	3c 	< 
	ld e,000h		;12eb	1e 00 	. . 
	dec b			;12ed	05 	. 
	rst 38h			;12ee	ff 	. 
	ld a,b			;12ef	78 	x 
	jr nz,$+1		;12f0	20 ff 	  . 
	nop			;12f2	00 	. 
	rst 38h			;12f3	ff 	. 
	add a,b			;12f4	80 	. 
	jp l0600h		;12f5	c3 00 06 	. . . 
	rst 38h			;12f8	ff 	. 
	call m,sub_00e0h		;12f9	fc e0 00 	. . . 
	ld b,0ffh		;12fc	06 ff 	. . 
	ccf			;12fe	3f 	? 
	rlca			;12ff	07 	. 
	nop			;1300	00 	. 
	inc b			;1301	04 	. 
	nop			;1302	00 	. 
	rlca			;1303	07 	. 
	rra			;1304	1f 	. 
	rst 38h			;1305	ff 	. 
	rst 38h			;1306	ff 	. 
	ld bc,sub_0300h		;1307	01 00 03 	. . . 
	nop			;130a	00 	. 
	ret po			;130b	e0 	. 
	nop			;130c	00 	. 
	inc bc			;130d	03 	. 
	rst 38h			;130e	ff 	. 
	add hl,sp			;130f	39 	9 
	ld a,03ch		;1310	3e 3c 	> < 
	ld e,c			;1312	59 	Y 
	inc bc			;1313	03 	. 
	rst 38h			;1314	ff 	. 
	rst 38h			;1315	ff 	. 
	rra			;1316	1f 	. 
	ret m			;1317	f8 	. 
	di			;1318	f3 	. 
	rst 38h			;1319	ff 	. 
	rst 30h			;131a	f7 	. 
	nop			;131b	00 	. 
	inc b			;131c	04 	. 
	ret po			;131d	e0 	. 
	nop			;131e	00 	. 
	ld bc,07fffh		;131f	01 ff 7f 	. .  
	rra			;1322	1f 	. 
	rrca			;1323	0f 	. 
	rlca			;1324	07 	. 
	add a,a			;1325	87 	. 
	jp 0e0e1h		;1326	c3 e1 e0 	. . . 
	ret p			;1329	f0 	. 
	rst 38h			;132a	ff 	. 
	ret m			;132b	f8 	. 
	rst 38h			;132c	ff 	. 
	rst 38h			;132d	ff 	. 
	ret m			;132e	f8 	. 
	di			;132f	f3 	. 
	rst 0			;1330	c7 	. 
	rst 8			;1331	cf 	. 
	sbc a,a			;1332	9f 	. 
	cp a			;1333	bf 	. 
	nop			;1334	00 	. 
	ld bc,0feffh		;1335	01 ff fe 	. . . 
	call m,sub_00f8h		;1338	fc f8 00 	. . . 
	ld bc,0fcffh		;133b	01 ff fc 	. . . 
	ret po			;133e	e0 	. 
	add a,b			;133f	80 	. 
	nop			;1340	00 	. 
	ld bc,sub_0300h		;1341	01 00 03 	. . . 
	rrca			;1344	0f 	. 
	rra			;1345	1f 	. 
	ret p			;1346	f0 	. 
	ret po			;1347	e0 	. 
	pop hl			;1348	e1 	. 
	rst 0			;1349	c7 	. 
	rst 18h			;134a	df 	. 
	cp a			;134b	bf 	. 
	rst 38h			;134c	ff 	. 
	rst 38h			;134d	ff 	. 
	ccf			;134e	3f 	? 
	nop			;134f	00 	. 
	rlca			;1350	07 	. 
	rst 38h			;1351	ff 	. 
	inc bc			;1352	03 	. 
	rrca			;1353	0f 	. 
	ccf			;1354	3f 	? 
	ld a,a			;1355	7f 	 
	nop			;1356	00 	. 
	inc b			;1357	04 	. 
	rst 38h			;1358	ff 	. 
	ex (sp),hl			;1359	e3 	. 
	rst 38h			;135a	ff 	. 
	rst 38h			;135b	ff 	. 
	call m,0d3e1h		;135c	fc e1 d3 	. . . 
	ex de,hl			;135f	eb 	. 
	pop de			;1360	d1 	. 
	nop			;1361	00 	. 
	ex af,af'			;1362	08 	. 
	rst 38h			;1363	ff 	. 
	ret pe			;1364	e8 	. 
	call nc,0f4e8h		;1365	d4 e8 f4 	. . . 
	jp pe,0faf5h		;1368	ea f5 fa 	. . . 
	nop			;136b	00 	. 
	ld bc,0d3ffh		;136c	01 ff d3 	. . . 
	and b			;136f	a0 	. 
	di			;1370	f3 	. 
	jp 0b161h		;1371	c3 61 b1 	. a . 
	or b			;1374	b0 	. 
	defb 0ddh,000h,001h	;illegal sequence		;1375	dd 00 01 	. . . 
	rst 38h			;1378	ff 	. 
	ld a,a			;1379	7f 	 
	ccf			;137a	3f 	? 
	and e			;137b	a3 	. 
	rst 38h			;137c	ff 	. 
	sub b			;137d	90 	. 
	jr nc,l13dch		;137e	30 5c 	0 \ 
	jp c,l0400h		;1380	da 00 04 	. . . 
	rra			;1383	1f 	. 
	ccf			;1384	3f 	? 
	cp a			;1385	bf 	. 
	nop			;1386	00 	. 
	ld bc,0beffh		;1387	01 ff be 	. . . 
	ld a,a			;138a	7f 	 
	nop			;138b	00 	. 
	ld b,0ffh		;138c	06 ff 	. . 
	ret p			;138e	f0 	. 
	ret m			;138f	f8 	. 
	call m,0ffffh		;1390	fc ff ff 	. . . 
	ld a,a			;1393	7f 	 
	rst 38h			;1394	ff 	. 
	ccf			;1395	3f 	? 
	nop			;1396	00 	. 
	ld bc,07fffh		;1397	01 ff 7f 	. .  
	rst 38h			;139a	ff 	. 
	ccf			;139b	3f 	? 
	sbc a,a			;139c	9f 	. 
	rst 18h			;139d	df 	. 
	rst 8			;139e	cf 	. 
	rst 28h			;139f	ef 	. 
	rst 38h			;13a0	ff 	. 
	rra			;13a1	1f 	. 
	sbc a,a			;13a2	9f 	. 
	rst 8			;13a3	cf 	. 
	rst 38h			;13a4	ff 	. 
	rst 28h			;13a5	ef 	. 
	rst 38h			;13a6	ff 	. 
	rst 38h			;13a7	ff 	. 
	rst 20h			;13a8	e7 	. 
	rst 30h			;13a9	f7 	. 
	rst 38h			;13aa	ff 	. 
	ei			;13ab	fb 	. 
	nop			;13ac	00 	. 
	inc b			;13ad	04 	. 
	rst 38h			;13ae	ff 	. 
	ret m			;13af	f8 	. 
	ret po			;13b0	e0 	. 
	adc a,a			;13b1	8f 	. 
	cp (hl)			;13b2	be 	. 
	add a,b			;13b3	80 	. 
	ret nz			;13b4	c0 	. 
	sbc a,a			;13b5	9f 	. 
	nop			;13b6	00 	. 
	ld bc,07fffh		;13b7	01 ff 7f 	. .  
	inc bc			;13ba	03 	. 
	ld sp,hl			;13bb	f9 	. 
	ld a,l			;13bc	7d 	} 
	dec c			;13bd	0d 	. 
	inc bc			;13be	03 	. 
	rst 38h			;13bf	ff 	. 
	rst 38h			;13c0	ff 	. 
	cp a			;13c1	bf 	. 
	add a,b			;13c2	80 	. 
	ld e,(hl)			;13c3	5e 	^ 
	rst 38h			;13c4	ff 	. 
	ld c,(hl)			;13c5	4e 	N 
	rst 38h			;13c6	ff 	. 
	ld b,(hl)			;13c7	46 	F 
	rst 38h			;13c8	ff 	. 
	ld b,0ffh		;13c9	06 ff 	. . 
	ld b,d			;13cb	42 	B 
	ld (0a2ffh),hl		;13cc	22 ff a2 	" . . 
	cp b			;13cf	b8 	. 
	add a,b			;13d0	80 	. 
	rst 0			;13d1	c7 	. 
	pop bc			;13d2	c1 	. 
	ret nz			;13d3	c0 	. 
	ret po			;13d4	e0 	. 
	ret p			;13d5	f0 	. 
	ld a,(hl)			;13d6	7e 	~ 
	ld a,a			;13d7	7f 	 
	scf			;13d8	37 	7 
	rst 20h			;13d9	e7 	. 
	rst 30h			;13da	f7 	. 
	ld h,a			;13db	67 	g 
l13dch:
	rrca			;13dc	0f 	. 
	rst 38h			;13dd	ff 	. 
	rra			;13de	1f 	. 
	ld a,a			;13df	7f 	 
	nop			;13e0	00 	. 
	ld bc,0ffffh		;13e1	01 ff ff 	. . . 
	rra			;13e4	1f 	. 
	inc a			;13e5	3c 	< 
	dec b			;13e6	05 	. 
	jp nz,l0100h		;13e7	c2 00 01 	. . . 
	rst 38h			;13ea	ff 	. 
	ret po			;13eb	e0 	. 
	rra			;13ec	1f 	. 
	nop			;13ed	00 	. 
	inc bc			;13ee	03 	. 
	cp a			;13ef	bf 	. 
	rst 38h			;13f0	ff 	. 
	rst 18h			;13f1	df 	. 
	rst 28h			;13f2	ef 	. 
	rst 30h			;13f3	f7 	. 
	ld sp,hl			;13f4	f9 	. 
	ld (hl),b			;13f5	70 	p 
	rst 20h			;13f6	e7 	. 
	adc a,a			;13f7	8f 	. 
	jp 0b9e0h		;13f8	c3 e0 b9 	. . . 
	rst 28h			;13fb	ef 	. 
	nop			;13fc	00 	. 
	ld bc,07fffh		;13fd	01 ff 7f 	. .  
l1400h:
	nop			;1400	00 	. 
	rlca			;1401	07 	. 
	rst 38h			;1402	ff 	. 
	ex (sp),hl			;1403	e3 	. 
	di			;1404	f3 	. 
	rst 30h			;1405	f7 	. 
	ld (hl),a			;1406	77 	w 
	ccf			;1407	3f 	? 
	sbc a,a			;1408	9f 	. 
	rst 18h			;1409	df 	. 
	rst 8			;140a	cf 	. 
	ret po			;140b	e0 	. 
	ret p			;140c	f0 	. 
	pop af			;140d	f1 	. 
	ei			;140e	fb 	. 
	cp e			;140f	bb 	. 
	cp a			;1410	bf 	. 
	rst 18h			;1411	df 	. 
	rst 8			;1412	cf 	. 
	rst 38h			;1413	ff 	. 
	rlca			;1414	07 	. 
	rrca			;1415	0f 	. 
	rra			;1416	1f 	. 
	rst 38h			;1417	ff 	. 
	rst 38h			;1418	ff 	. 
	rst 0			;1419	c7 	. 
	rrca			;141a	0f 	. 
	rst 20h			;141b	e7 	. 
	nop			;141c	00 	. 
	inc b			;141d	04 	. 
	rst 28h			;141e	ef 	. 
	rst 38h			;141f	ff 	. 
	ex (sp),hl			;1420	e3 	. 
	rst 30h			;1421	f7 	. 
	cp a			;1422	bf 	. 
	cp c			;1423	b9 	. 
	and c			;1424	a1 	. 
	add a,c			;1425	81 	. 
	add a,e			;1426	83 	. 
	rst 0			;1427	c7 	. 
	rst 38h			;1428	ff 	. 
	rst 38h			;1429	ff 	. 
	rst 18h			;142a	df 	. 
	rst 38h			;142b	ff 	. 
	rst 38h			;142c	ff 	. 
	rrca			;142d	0f 	. 
	rst 30h			;142e	f7 	. 
	rst 38h			;142f	ff 	. 
	di			;1430	f3 	. 
	in a,(000h)		;1431	db 00 	. . 
	ld bc,06fffh		;1433	01 ff 6f 	. . o 
	ei			;1436	fb 	. 
	nop			;1437	00 	. 
	ld bc,0b7ffh		;1438	01 ff b7 	. . . 
	cp 06fh		;143b	fe 6f 	. o 
	jp m,l0100h		;143d	fa 00 01 	. . . 
	rst 38h			;1440	ff 	. 
	xor 000h		;1441	ee 00 	. . 
	ld bc,07dffh		;1443	01 ff 7d 	. . } 
	nop			;1446	00 	. 
	ld bc,0f7ffh		;1447	01 ff f7 	. . . 
	cp (hl)			;144a	be 	. 
	ei			;144b	fb 	. 
	inc bc			;144c	03 	. 
	ld sp,hl			;144d	f9 	. 
	defb 0fdh,07ch	;ld a,iyh		;144e	fd 7c 	. | 
	ld a,0beh		;1450	3e be 	> . 
	sbc a,(hl)			;1452	9e 	. 
	adc a,a			;1453	8f 	. 
	nop			;1454	00 	. 
	ex af,af'			;1455	08 	. 
	rst 38h			;1456	ff 	. 
	ld a,a			;1457	7f 	 
	defb 0edh;next byte illegal after ed		;1458	ed 	. 
	rst 38h			;1459	ff 	. 
	rst 38h			;145a	ff 	. 
	cp e			;145b	bb 	. 
	nop			;145c	00 	. 
	ld bc,0edffh		;145d	01 ff ed 	. . . 
	nop			;1460	00 	. 
	ld bc,0deffh		;1461	01 ff de 	. . . 
	rst 38h			;1464	ff 	. 
	rst 38h			;1465	ff 	. 
	cp e			;1466	bb 	. 
	nop			;1467	00 	. 
	ld bc,0feffh		;1468	01 ff fe 	. . . 
	rst 28h			;146b	ef 	. 
	ld a,a			;146c	7f 	 
	pop bc			;146d	c1 	. 
	jp 0effeh		;146e	c3 fe ef 	. . . 
	nop			;1471	00 	. 
	inc c			;1472	0c 	. 
	rst 38h			;1473	ff 	. 
	cp e			;1474	bb 	. 
	ld l,a			;1475	6f 	o 
	scf			;1476	37 	7 
	ld e,000h		;1477	1e 00 	. . 
	inc b			;1479	04 	. 
	nop			;147a	00 	. 
	call 02fd3h		;147b	cd d3 2f 	. . / 
	ld e,000h		;147e	1e 00 	. . 
	inc b			;1480	04 	. 
	nop			;1481	00 	. 
	rst 10h			;1482	d7 	. 
	ld l,a			;1483	6f 	o 
	scf			;1484	37 	7 
	ld e,000h		;1485	1e 00 	. . 
	inc b			;1487	04 	. 
	nop			;1488	00 	. 
	or l			;1489	b5 	. 
	jp z,l1834h		;148a	ca 34 18 	. 4 . 
	nop			;148d	00 	. 
	inc b			;148e	04 	. 
	nop			;148f	00 	. 
	rst 38h			;1490	ff 	. 
	rst 38h			;1491	ff 	. 
	ccf			;1492	3f 	? 
	ld e,000h		;1493	1e 00 	. . 
	inc b			;1495	04 	. 
	nop			;1496	00 	. 
	rst 38h			;1497	ff 	. 
	rst 38h			;1498	ff 	. 
	ccf			;1499	3f 	? 
	ld e,000h		;149a	1e 00 	. . 
	inc b			;149c	04 	. 
	nop			;149d	00 	. 
	nop			;149e	00 	. 
	ld bc,07fffh		;149f	01 ff 7f 	. .  
	ccf			;14a2	3f 	? 
	ld e,000h		;14a3	1e 00 	. . 
	inc b			;14a5	04 	. 
	nop			;14a6	00 	. 
	nop			;14a7	00 	. 
	ld bc,0feffh		;14a8	01 ff fe 	. . . 
	inc a			;14ab	3c 	< 
	jr l14aeh		;14ac	18 00 	. . 
l14aeh:
	inc b			;14ae	04 	. 
	nop			;14af	00 	. 
	nop			;14b0	00 	. 
	ex af,af'			;14b1	08 	. 
	rst 38h			;14b2	ff 	. 
	cp a			;14b3	bf 	. 
	sbc a,a			;14b4	9f 	. 
	adc a,a			;14b5	8f 	. 
	nop			;14b6	00 	. 
	ld bc,0bfffh		;14b7	01 ff bf 	. . . 
	rrca			;14ba	0f 	. 
	rlca			;14bb	07 	. 
	nop			;14bc	00 	. 
	ld bc,0feffh		;14bd	01 ff fe 	. . . 
	rst 38h			;14c0	ff 	. 
	call m,l0100h		;14c1	fc 00 01 	. . . 
	rst 38h			;14c4	ff 	. 
	cp 0ffh		;14c5	fe ff 	. . 
	call m,l0100h		;14c7	fc 00 01 	. . . 
	rst 38h			;14ca	ff 	. 
	ld a,a			;14cb	7f 	 
	rra			;14cc	1f 	. 
	rrca			;14cd	0f 	. 
	nop			;14ce	00 	. 
	ld bc,07fffh		;14cf	01 ff 7f 	. .  
	rra			;14d2	1f 	. 
	rrca			;14d3	0f 	. 
	nop			;14d4	00 	. 
	ld bc,0fcffh		;14d5	01 ff fc 	. . . 
	cp 000h		;14d8	fe 00 	. . 
	ld b,0ffh		;14da	06 ff 	. . 
	ccf			;14dc	3f 	? 
	rrca			;14dd	0f 	. 
	add a,a			;14de	87 	. 
	nop			;14df	00 	. 
	ld bc,083ffh		;14e0	01 ff 83 	. . . 
	jp l00e3h		;14e3	c3 e3 00 	. . . 
	ld bc,l01ffh		;14e6	01 ff 01 	. . . 
	inc bc			;14e9	03 	. 
	rlca			;14ea	07 	. 
	ld e,000h		;14eb	1e 00 	. . 
	dec b			;14ed	05 	. 
	nop			;14ee	00 	. 
	add a,b			;14ef	80 	. 
	ld b,b			;14f0	40 	@ 
	jr nz,l14f3h		;14f1	20 00 	  . 
l14f3h:
	inc b			;14f3	04 	. 
	nop			;14f4	00 	. 
	ld (bc),a			;14f5	02 	. 
	rlca			;14f6	07 	. 
	ld c,000h		;14f7	0e 00 	. . 
	rlca			;14f9	07 	. 
	nop			;14fa	00 	. 
	add a,b			;14fb	80 	. 
	nop			;14fc	00 	. 
	dec b			;14fd	05 	. 
	nop			;14fe	00 	. 
	ex af,af'			;14ff	08 	. 
	inc e			;1500	1c 	. 
	ld a,(l0071h)		;1501	3a 71 00 	: q . 
	inc b			;1504	04 	. 
	nop			;1505	00 	. 
	nop			;1506	00 	. 
	dec (hl)			;1507	35 	5 
	rst 38h			;1508	ff 	. 
	rst 18h			;1509	df 	. 
	rst 8			;150a	cf 	. 
	rst 20h			;150b	e7 	. 
	nop			;150c	00 	. 
	rlca			;150d	07 	. 
	rst 38h			;150e	ff 	. 
	rst 18h			;150f	df 	. 
	nop			;1510	00 	. 
	inc bc			;1511	03 	. 
	rst 38h			;1512	ff 	. 
	ld (iy-071h),e		;1513	fd 73 8f 	. s . 
	rst 20h			;1516	e7 	. 
	di			;1517	f3 	. 
	rst 0			;1518	c7 	. 
	pop bc			;1519	c1 	. 
	ret nz			;151a	c0 	. 
	ret po			;151b	e0 	. 
	ret p			;151c	f0 	. 
	cp 0ffh		;151d	fe ff 	. . 
	rst 38h			;151f	ff 	. 
	cp 0fdh		;1520	fe fd 	. . 
	rst 38h			;1522	ff 	. 
	di			;1523	f3 	. 
	ret p			;1524	f0 	. 
	ret m			;1525	f8 	. 
	nop			;1526	00 	. 
	ld a,(bc)			;1527	0a 	. 
	rst 38h			;1528	ff 	. 
	rst 38h			;1529	ff 	. 
	ld a,a			;152a	7f 	 
	nop			;152b	00 	. 
	ld b,0ffh		;152c	06 ff 	. . 
	ccf			;152e	3f 	? 
	rst 38h			;152f	ff 	. 
	ld a,a			;1530	7f 	 
	nop			;1531	00 	. 
	inc bc			;1532	03 	. 
	call m,sub_0300h		;1533	fc 00 03 	. . . 
	cp 0ffh		;1536	fe ff 	. . 
	rst 38h			;1538	ff 	. 
	ccf			;1539	3f 	? 
	rlca			;153a	07 	. 
	ld bc,l1f0fh		;153b	01 0f 1f 	. . . 
	nop			;153e	00 	. 
	inc d			;153f	14 	. 
	rst 38h			;1540	ff 	. 
	ld a,a			;1541	7f 	 
	ccf			;1542	3f 	? 
	inc de			;1543	13 	. 
	ret p			;1544	f0 	. 
	rst 38h			;1545	ff 	. 
	ccf			;1546	3f 	? 
	cp a			;1547	bf 	. 
	cp e			;1548	bb 	. 
	defb 0fdh,0ffh,0ffh	;illegal sequence		;1549	fd ff ff 	. . . 
	ld bc,000dfh		;154c	01 df 00 	. . . 
	rrca			;154f	0f 	. 
	rst 38h			;1550	ff 	. 
	call m,0feffh		;1551	fc ff fe 	. . . 
	nop			;1554	00 	. 
	ld bc,l00ffh		;1555	01 ff 00 	. . . 
	inc b			;1558	04 	. 
	ld a,a			;1559	7f 	 
	cp 0f0h		;155a	fe f0 	. . 
	inc b			;155c	04 	. 
	ld e,0f7h		;155d	1e f7 	. . 
	adc a,a			;155f	8f 	. 
	ld (hl),c			;1560	71 	q 
	cp 000h		;1561	fe 00 	. . 
	ld bc,0feffh		;1563	01 ff fe 	. . . 
	nop			;1566	00 	. 
	rlca			;1567	07 	. 
	rst 38h			;1568	ff 	. 
	cp a			;1569	bf 	. 
	rst 18h			;156a	df 	. 
	nop			;156b	00 	. 
	inc bc			;156c	03 	. 
	rst 28h			;156d	ef 	. 
	rst 18h			;156e	df 	. 
	sbc a,a			;156f	9f 	. 
	pop af			;1570	f1 	. 
	ret p			;1571	f0 	. 
	add a,005h		;1572	c6 05 	. . 
	ld (bc),a			;1574	02 	. 
	rrca			;1575	0f 	. 
	cp 001h		;1576	fe 01 	. . 
	rst 8			;1578	cf 	. 
	jp l0100h		;1579	c3 00 01 	. . . 
	nop			;157c	00 	. 
	add a,b			;157d	80 	. 
	ld (hl),b			;157e	70 	p 
	adc a,(hl)			;157f	8e 	. 
	ld (hl),c			;1580	71 	q 
	cp 0f8h		;1581	fe f8 	. . 
	call m,0ffe0h		;1583	fc e0 ff 	. . . 
	nop			;1586	00 	. 
	rra			;1587	1f 	. 
	ret po			;1588	e0 	. 
	rra			;1589	1f 	. 
	ret m			;158a	f8 	. 
	ld bc,01805h		;158b	01 05 18 	. . . 
	ret po			;158e	e0 	. 
	inc e			;158f	1c 	. 
	ex (sp),hl			;1590	e3 	. 
	call m,sub_0500h		;1591	fc 00 05 	. . . 
	rst 38h			;1594	ff 	. 
	ex (sp),iy		;1595	fd e3 	. . 
	adc a,l			;1597	8d 	. 
	nop			;1598	00 	. 
	ld b,0ffh		;1599	06 ff 	. . 
	ei			;159b	fb 	. 
	rst 30h			;159c	f7 	. 
	nop			;159d	00 	. 
	ld b,000h		;159e	06 00 	. . 
	ret nz			;15a0	c0 	. 
	cp 0f7h		;15a1	fe f7 	. . 
	rst 38h			;15a3	ff 	. 
	rst 28h			;15a4	ef 	. 
	ld l,a			;15a5	6f 	o 
	add a,a			;15a6	87 	. 
	nop			;15a7	00 	. 
	ex af,af'			;15a8	08 	. 
	rst 38h			;15a9	ff 	. 
	cp 0ffh		;15aa	fe ff 	. . 
	defb 0fdh,000h,004h	;illegal sequence		;15ac	fd 00 04 	. . . 
	rst 38h			;15af	ff 	. 
	rra			;15b0	1f 	. 
	ex (sp),hl			;15b1	e3 	. 
	defb 0fdh,0feh,0fbh	;illegal sequence		;15b2	fd fe fb 	. . . 
	rst 30h			;15b5	f7 	. 
	nop			;15b6	00 	. 
	ld b,0ffh		;15b7	06 ff 	. . 
	cp 000h		;15b9	fe 00 	. . 
	ld hl,(0f3ffh)		;15bb	2a ff f3 	* . . 
	defb 0fdh,000h,003h	;illegal sequence		;15be	fd 00 03 	. . . 
	cp 0ffh		;15c1	fe ff 	. . 
	ret po			;15c3	e0 	. 
	call po,l0003h		;15c4	e4 03 00 	. . . 
	ld bc,l1f00h		;15c7	01 00 1f 	. . . 
l15cah:
	ret po			;15ca	e0 	. 
	rra			;15cb	1f 	. 
	nop			;15cc	00 	. 
	ld a,(bc)			;15cd	0a 	. 
	rst 38h			;15ce	ff 	. 
	rrca			;15cf	0f 	. 
	inc bc			;15d0	03 	. 
	ret p			;15d1	f0 	. 
	inc e			;15d2	1c 	. 
	ex (sp),hl			;15d3	e3 	. 
	call m,0c73fh		;15d4	fc 3f c7 	. ? . 
	ret po			;15d7	e0 	. 
	ret p			;15d8	f0 	. 
	ret m			;15d9	f8 	. 
	rst 38h			;15da	ff 	. 
	ld sp,hl			;15db	f9 	. 
	cp 0c0h		;15dc	fe c0 	. . 
	rrca			;15de	0f 	. 
	ccf			;15df	3f 	? 
	ld a,a			;15e0	7f 	 
	nop			;15e1	00 	. 
	inc c			;15e2	0c 	. 
	rst 38h			;15e3	ff 	. 
	rst 38h			;15e4	ff 	. 
	ld a,a			;15e5	7f 	 
	nop			;15e6	00 	. 
	inc bc			;15e7	03 	. 
	cp a			;15e8	bf 	. 
	ld a,a			;15e9	7f 	 
	rst 38h			;15ea	ff 	. 
	rst 38h			;15eb	ff 	. 
	rrca			;15ec	0f 	. 
	add a,c			;15ed	81 	. 
	ret po			;15ee	e0 	. 
	ret p			;15ef	f0 	. 
	ret m			;15f0	f8 	. 
	pop af			;15f1	f1 	. 
	rst 38h			;15f2	ff 	. 
	rst 38h			;15f3	ff 	. 
	ret po			;15f4	e0 	. 
	rrca			;15f5	0f 	. 
	ccf			;15f6	3f 	? 
	ld a,a			;15f7	7f 	 
	nop			;15f8	00 	. 
	rrca			;15f9	0f 	. 
	rst 38h			;15fa	ff 	. 
	rst 28h			;15fb	ef 	. 
	rst 18h			;15fc	df 	. 
	rst 38h			;15fd	ff 	. 
	cp a			;15fe	bf 	. 
	ld a,a			;15ff	7f 	 
	nop			;1600	00 	. 
	dec c			;1601	0d 	. 
	rst 38h			;1602	ff 	. 
	rst 38h			;1603	ff 	. 
	rst 30h			;1604	f7 	. 
	di			;1605	f3 	. 
	nop			;1606	00 	. 
	ex af,af'			;1607	08 	. 
	rst 38h			;1608	ff 	. 
	nop			;1609	00 	. 
	inc bc			;160a	03 	. 
	ei			;160b	fb 	. 
	nop			;160c	00 	. 
	dec hl			;160d	2b 	+ 
	rst 38h			;160e	ff 	. 
	cp 000h		;160f	fe 00 	. . 
	inc bc			;1611	03 	. 
	rst 38h			;1612	ff 	. 
	nop			;1613	00 	. 
	inc bc			;1614	03 	. 
	cp a			;1615	bf 	. 
	ccf			;1616	3f 	? 
	nop			;1617	00 	. 
	inc b			;1618	04 	. 
	rst 38h			;1619	ff 	. 
	ret nz			;161a	c0 	. 
	nop			;161b	00 	. 
	ld bc,l0100h		;161c	01 00 01 	. . . 
	rrca			;161f	0f 	. 
	cp 001h		;1620	fe 01 	. . 
	nop			;1622	00 	. 
	inc b			;1623	04 	. 
	rst 38h			;1624	ff 	. 
	cp 0fch		;1625	fe fc 	. . 
	rst 38h			;1627	ff 	. 
	nop			;1628	00 	. 
	jr c,l165eh		;1629	38 33 	8 3 
	ld (hl),a			;162b	77 	w 
	rst 30h			;162c	f7 	. 
	nop			;162d	00 	. 
	inc b			;162e	04 	. 
	ret po			;162f	e0 	. 
	jr c,l15cah		;1630	38 98 	8 . 
	call c,0cecch		;1632	dc cc ce 	. . . 
	ld h,a			;1635	67 	g 
	inc sp			;1636	33 	3 
	add hl,sp			;1637	39 	9 
	ld h,b			;1638	60 	` 
	ld (hl),b			;1639	70 	p 
	rst 38h			;163a	ff 	. 
	cp b			;163b	b8 	. 
	ld a,a			;163c	7f 	 
	rst 28h			;163d	ef 	. 
	ret nz			;163e	c0 	. 
	rst 8			;163f	cf 	. 
	add hl,sp			;1640	39 	9 
	ld a,03ch		;1641	3e 3c 	> < 
	ld e,c			;1643	59 	Y 
	inc bc			;1644	03 	. 
	nop			;1645	00 	. 
	ld bc,0feffh		;1646	01 ff fe 	. . . 
	ld d,001h		;1649	16 01 	. . 
	ret m			;164b	f8 	. 
	call m,03e7ch		;164c	fc 7c 3e 	. | > 
	cp (hl)			;164f	be 	. 
	sbc a,(hl)			;1650	9e 	. 
	adc a,a			;1651	8f 	. 
	and 000h		;1652	e6 00 	. . 
	inc b			;1654	04 	. 
	xor 0ffh		;1655	ee ff 	. . 
	jp po,0c1f3h		;1657	e2 f3 c1 	. . . 
	jp 0effeh		;165a	c3 fe ef 	. . . 
	ret p			;165d	f0 	. 
l165eh:
	add a,e			;165e	83 	. 
	rlca			;165f	07 	. 
	rrca			;1660	0f 	. 
	exx			;1661	d9 	. 
	defb 0fdh,0cdh,006h	;illegal sequence		;1662	fd cd 06 	. . . 
	push af			;1665	f5 	. 
	rst 38h			;1666	ff 	. 
	di			;1667	f3 	. 
	exx			;1668	d9 	. 
	rst 0			;1669	c7 	. 
	pop bc			;166a	c1 	. 
	ret nz			;166b	c0 	. 
	ret po			;166c	e0 	. 
	ret p			;166d	f0 	. 
	ld a,(hl)			;166e	7e 	~ 
	ld a,a			;166f	7f 	 
	scf			;1670	37 	7 
	xor 0f6h		;1671	ee f6 	. . 
	ld (hl),a			;1673	77 	w 
	dec (hl)			;1674	35 	5 
	ld (l0713h),a		;1675	32 13 07 	2 . . 
	call m,0e770h		;1678	fc 70 e7 	. p . 
	adc a,a			;167b	8f 	. 
	jp 0b8e0h		;167c	c3 e0 b8 	. . . 
	rst 28h			;167f	ef 	. 
	ccf			;1680	3f 	? 
	rrca			;1681	0f 	. 
	nop			;1682	00 	. 
	ld bc,0f0ffh		;1683	01 ff f0 	. . . 
	rst 38h			;1686	ff 	. 
	nop			;1687	00 	. 
	ld bc,sub_00feh		;1688	01 fe 00 	. . . 
	ld bc,l1fffh		;168b	01 ff 1f 	. . . 
	ld (hl),b			;168e	70 	p 
	rst 38h			;168f	ff 	. 
	nop			;1690	00 	. 
	ret m			;1691	f8 	. 
	ld a,a			;1692	7f 	 
	rst 20h			;1693	e7 	. 
	rra			;1694	1f 	. 
	inc b			;1695	04 	. 
	nop			;1696	00 	. 
	ld bc,l0f00h		;1697	01 00 0f 	. . . 
	rra			;169a	1f 	. 
	call m,0c3f9h		;169b	fc f9 c3 	. . . 
	rrca			;169e	0f 	. 
	rst 28h			;169f	ef 	. 
	pop hl			;16a0	e1 	. 
	defb 0fdh,001h,003h	;illegal sequence		;16a1	fd 01 03 	. . . 
	nop			;16a4	00 	. 
	ld bc,l3fffh		;16a5	01 ff 3f 	. . ? 
	call m,0b8bfh		;16a8	fc bf b8 	. . . 
	and b			;16ab	a0 	. 
	rst 38h			;16ac	ff 	. 
	add a,b			;16ad	80 	. 
	ret nz			;16ae	c0 	. 
	rst 0			;16af	c7 	. 
	nop			;16b0	00 	. 
	ld bc,006ffh		;16b1	01 ff 06 	. . . 
	add a,0e6h		;16b4	c6 e6 	. . 
	or 0feh		;16b6	f6 fe 	. . 
	nop			;16b8	00 	. 
	inc bc			;16b9	03 	. 
	rst 38h			;16ba	ff 	. 
	jp l00c7h		;16bb	c3 c7 00 	. . . 
	ld bc,07fffh		;16be	01 ff 7f 	. .  
	ccf			;16c1	3f 	? 
	ld a,a			;16c2	7f 	 
	nop			;16c3	00 	. 
	ld (de),a			;16c4	12 	. 
	rst 38h			;16c5	ff 	. 
	ld a,a			;16c6	7f 	 
	nop			;16c7	00 	. 
	inc bc			;16c8	03 	. 
	rst 38h			;16c9	ff 	. 
	ret p			;16ca	f0 	. 
	add a,b			;16cb	80 	. 
	nop			;16cc	00 	. 
	ld bc,0f000h		;16cd	01 00 f0 	. . . 
	ret m			;16d0	f8 	. 
	call m,0ddfdh		;16d1	fc fd dd 	. . . 
	cp e			;16d4	bb 	. 
	rst 38h			;16d5	ff 	. 
	rst 38h			;16d6	ff 	. 
	ret nz			;16d7	c0 	. 
	nop			;16d8	00 	. 
	nop			;16d9	00 	. 
	ret nz			;16da	c0 	. 
	ret po			;16db	e0 	. 
	rst 38h			;16dc	ff 	. 
	ret p			;16dd	f0 	. 
	nop			;16de	00 	. 
	inc b			;16df	04 	. 
	ret po			;16e0	e0 	. 
	nop			;16e1	00 	. 
	ld bc,0fcffh		;16e2	01 ff fc 	. . . 
	ret p			;16e5	f0 	. 
	ret po			;16e6	e0 	. 
	ret nz			;16e7	c0 	. 
	rst 38h			;16e8	ff 	. 
	add a,b			;16e9	80 	. 
	nop			;16ea	00 	. 
	ex af,af'			;16eb	08 	. 
	nop			;16ec	00 	. 
	inc bc			;16ed	03 	. 
	nop			;16ee	00 	. 
	ld b,000h		;16ef	06 00 	. . 
	rst 38h			;16f1	ff 	. 
	add a,b			;16f2	80 	. 
	nop			;16f3	00 	. 
	ld bc,l0fffh		;16f4	01 ff 0f 	. . . 
	inc bc			;16f7	03 	. 
	nop			;16f8	00 	. 
	dec b			;16f9	05 	. 
	nop			;16fa	00 	. 
	nop			;16fb	00 	. 
	ld bc,0feffh		;16fc	01 ff fe 	. . . 
	ret m			;16ff	f8 	. 
	ret p			;1700	f0 	. 
	ld h,b			;1701	60 	` 
	jr nz,l1704h		;1702	20 00 	  . 
l1704h:
	inc bc			;1704	03 	. 
	nop			;1705	00 	. 
	rst 38h			;1706	ff 	. 
	ld bc,l0701h+2		;1707	01 03 07 	. . . 
	rra			;170a	1f 	. 
	ld a,a			;170b	7f 	 
	rst 38h			;170c	ff 	. 
	rst 38h			;170d	ff 	. 
	call m,0e0f0h		;170e	fc f0 e0 	. . . 
	ret nz			;1711	c0 	. 
	rst 38h			;1712	ff 	. 
	add a,b			;1713	80 	. 
	nop			;1714	00 	. 
	ld bc,l0000h		;1715	01 00 00 	. . . 
	ld bc,l0fffh		;1718	01 ff 0f 	. . . 
	rst 38h			;171b	ff 	. 
	inc bc			;171c	03 	. 
	nop			;171d	00 	. 
	inc bc			;171e	03 	. 
	ld bc,l0100h		;171f	01 00 01 	. . . 
	nop			;1722	00 	. 
	ret po			;1723	e0 	. 
	rst 38h			;1724	ff 	. 
	ret p			;1725	f0 	. 
	call m,sub_0500h		;1726	fc 00 05 	. . . 
	rst 38h			;1729	ff 	. 
	rrca			;172a	0f 	. 
	inc bc			;172b	03 	. 
	nop			;172c	00 	. 
	dec b			;172d	05 	. 
	nop			;172e	00 	. 
	nop			;172f	00 	. 
	ld bc,l0fffh		;1730	01 ff 0f 	. . . 
	inc bc			;1733	03 	. 
	nop			;1734	00 	. 
	add hl,bc			;1735	09 	. 
	nop			;1736	00 	. 
sub_1737h:
	inc bc			;1737	03 	. 
	nop			;1738	00 	. 
	inc bc			;1739	03 	. 
	rst 38h			;173a	ff 	. 
	ld (bc),a			;173b	02 	. 
	rlca			;173c	07 	. 
	rra			;173d	1f 	. 
	ld a,a			;173e	7f 	 
	nop			;173f	00 	. 
	dec b			;1740	05 	. 
	rst 38h			;1741	ff 	. 
	cp 0f8h		;1742	fe f8 	. . 
	ret p			;1744	f0 	. 
	ld h,b			;1745	60 	` 
	jr nz,$+1		;1746	20 ff 	  . 
	nop			;1748	00 	. 
	nop			;1749	00 	. 
	ld bc,l0fffh		;174a	01 ff 0f 	. . . 
	rst 38h			;174d	ff 	. 
	inc bc			;174e	03 	. 
	ld bc,sub_0500h		;174f	01 00 05 	. . . 
	nop			;1752	00 	. 
	add a,b			;1753	80 	. 
	ret po			;1754	e0 	. 
	ret m			;1755	f8 	. 
	nop			;1756	00 	. 
	inc bc			;1757	03 	. 
	rst 38h			;1758	ff 	. 
	rst 38h			;1759	ff 	. 
	nop			;175a	00 	. 
	ld bc,l3f07h		;175b	01 07 3f 	. . ? 
	nop			;175e	00 	. 
	inc b			;175f	04 	. 
	rst 38h			;1760	ff 	. 
	cp 0f8h		;1761	fe f8 	. . 
	ret p			;1763	f0 	. 
	ld h,b			;1764	60 	` 
	jr nz,$+1		;1765	20 ff 	  . 
	nop			;1767	00 	. 
	nop			;1768	00 	. 
	ld bc,l0fffh		;1769	01 ff 0f 	. . . 
	rst 38h			;176c	ff 	. 
	inc bc			;176d	03 	. 
	ld bc,sub_0300h		;176e	01 00 03 	. . . 
	nop			;1771	00 	. 
	ld a,a			;1772	7f 	 
	nop			;1773	00 	. 
	rlca			;1774	07 	. 
	rst 38h			;1775	ff 	. 
	cp 0f8h		;1776	fe f8 	. . 
	ret p			;1778	f0 	. 
	rst 38h			;1779	ff 	. 
	ret po			;177a	e0 	. 
	nop			;177b	00 	. 
	inc bc			;177c	03 	. 
	ret nz			;177d	c0 	. 
	nop			;177e	00 	. 
	ex af,af'			;177f	08 	. 
	rst 38h			;1780	ff 	. 
	nop			;1781	00 	. 
	djnz l1784h		;1782	10 00 	. . 
l1784h:
	nop			;1784	00 	. 
	ld b,0ffh		;1785	06 ff 	. . 
	ret nz			;1787	c0 	. 
	cp 000h		;1788	fe 00 	. . 
	rlca			;178a	07 	. 
	rst 38h			;178b	ff 	. 
	call m,sub_0500h		;178c	fc 00 05 	. . . 
	rst 38h			;178f	ff 	. 
	ret po			;1790	e0 	. 
	rst 38h			;1791	ff 	. 
	nop			;1792	00 	. 
	nop			;1793	00 	. 
	ld b,0ffh		;1794	06 ff 	. . 
	ld a,a			;1796	7f 	 
	rra			;1797	1f 	. 
	nop			;1798	00 	. 
	ex af,af'			;1799	08 	. 
	rst 38h			;179a	ff 	. 
	adc a,a			;179b	8f 	. 
	jp 0f1e3h		;179c	c3 e3 f1 	. . . 
	jr l17a9h		;179f	18 08 	. . 
	inc b			;17a1	04 	. 
	call m,sub_0500h		;17a2	fc 00 05 	. . . 
	rst 38h			;17a5	ff 	. 
	rst 38h			;17a6	ff 	. 
	ld a,a			;17a7	7f 	 
	inc a			;17a8	3c 	< 
l17a9h:
	nop			;17a9	00 	. 
	inc d			;17aa	14 	. 
	rst 38h			;17ab	ff 	. 
	ret m			;17ac	f8 	. 
	ret po			;17ad	e0 	. 
	nop			;17ae	00 	. 
	ld bc,0fc00h		;17af	01 00 fc 	. . . 
	nop			;17b2	00 	. 
	inc b			;17b3	04 	. 
	rst 38h			;17b4	ff 	. 
	rra			;17b5	1f 	. 
	rst 38h			;17b6	ff 	. 
	nop			;17b7	00 	. 
	rra			;17b8	1f 	. 
	add hl,hl			;17b9	29 	) 
	ld a,03ch		;17ba	3e 3c 	> < 
	ld e,c			;17bc	59 	Y 
	inc bc			;17bd	03 	. 
	rrca			;17be	0f 	. 
	nop			;17bf	00 	. 
	ld bc,l1fffh		;17c0	01 ff 1f 	. . . 
	ret p			;17c3	f0 	. 
	ex (sp),hl			;17c4	e3 	. 
	and 0c7h		;17c5	e6 c7 	. . 
	nop			;17c7	00 	. 
	inc bc			;17c8	03 	. 
	add a,b			;17c9	80 	. 
	ret nz			;17ca	c0 	. 
	nop			;17cb	00 	. 
	dec b			;17cc	05 	. 
	rst 38h			;17cd	ff 	. 
	ld a,a			;17ce	7f 	 
	ccf			;17cf	3f 	? 
	rra			;17d0	1f 	. 
	rst 38h			;17d1	ff 	. 
	ret nz			;17d2	c0 	. 
	rst 38h			;17d3	ff 	. 
	ret po			;17d4	e0 	. 
	ret p			;17d5	f0 	. 
	nop			;17d6	00 	. 
	ld bc,0f0ffh		;17d7	01 ff f0 	. . . 
	jp 0f0f8h		;17da	c3 f8 f0 	. . . 
	rst 20h			;17dd	e7 	. 
	rst 18h			;17de	df 	. 
	nop			;17df	00 	. 
	inc b			;17e0	04 	. 
	rst 38h			;17e1	ff 	. 
	rrca			;17e2	0f 	. 
	nop			;17e3	00 	. 
	inc b			;17e4	04 	. 
	rst 38h			;17e5	ff 	. 
	call m,0e0f0h		;17e6	fc f0 e0 	. . . 
	rst 38h			;17e9	ff 	. 
	rst 38h			;17ea	ff 	. 
	cp 0f8h		;17eb	fe f8 	. . 
	ret po			;17ed	e0 	. 
	rst 0			;17ee	c7 	. 
	cp a			;17ef	bf 	. 
	nop			;17f0	00 	. 
	ld bc,0c0ffh		;17f1	01 ff c0 	. . . 
	inc bc			;17f4	03 	. 
	rrca			;17f5	0f 	. 
	ccf			;17f6	3f 	? 
	nop			;17f7	00 	. 
	inc b			;17f8	04 	. 
	rst 38h			;17f9	ff 	. 
	cp 0f2h		;17fa	fe f2 	. . 
	jp nz,0ff85h		;17fc	c2 85 ff 	. . . 
	ld c,01ch		;17ff	0e 1c 	. . 
	inc a			;1801	3c 	< 
	rra			;1802	1f 	. 
	inc a			;1803	3c 	< 
	jp sub_0500h		;1804	c3 00 05 	. . . 
	nop			;1807	00 	. 
	nop			;1808	00 	. 
	inc bc			;1809	03 	. 
	call m,0feffh		;180a	fc ff fe 	. . . 
	nop			;180d	00 	. 
	ld bc,0f8ffh		;180e	01 ff f8 	. . . 
	ret p			;1811	f0 	. 
	nop			;1812	00 	. 
	ld b,000h		;1813	06 00 	. . 
	ret nz			;1815	c0 	. 
	jr nc,l181bh		;1816	30 03 	0 . 
	rst 38h			;1818	ff 	. 
	nop			;1819	00 	. 
	add a,b			;181a	80 	. 
l181bh:
	ld b,b			;181b	40 	@ 
	rst 38h			;181c	ff 	. 
	jr nz,l182fh		;181d	20 10 	  . 
	nop			;181f	00 	. 
	ld bc,07fffh		;1820	01 ff 7f 	. .  
	rst 38h			;1823	ff 	. 
	ccf			;1824	3f 	? 
	nop			;1825	00 	. 
	inc bc			;1826	03 	. 
	rra			;1827	1f 	. 
	inc de			;1828	13 	. 
	nop			;1829	00 	. 
	inc bc			;182a	03 	. 
	djnz l1845h		;182b	10 18 	. . 
	rra			;182d	1f 	. 
	rst 38h			;182e	ff 	. 
l182fh:
	ccf			;182f	3f 	? 
	nop			;1830	00 	. 
	ld bc,l11ffh		;1831	01 ff 11 	. . . 
l1834h:
	djnz l1856h		;1834	10 20 	.   
	ld a,h			;1836	7c 	| 
	nop			;1837	00 	. 
	inc b			;1838	04 	. 
	rst 38h			;1839	ff 	. 
	rst 8			;183a	cf 	. 
	rst 20h			;183b	e7 	. 
	di			;183c	f3 	. 
	ret m			;183d	f8 	. 
	call m,sub_00feh		;183e	fc fe 00 	. . . 
	ld b,0ffh		;1841	06 ff 	. . 
	ld a,a			;1843	7f 	 
	rst 38h			;1844	ff 	. 
l1845h:
	ccf			;1845	3f 	? 
	sbc a,a			;1846	9f 	. 
	rst 38h			;1847	ff 	. 
	rst 38h			;1848	ff 	. 
	ld a,a			;1849	7f 	 
	ccf			;184a	3f 	? 
	sbc a,a			;184b	9f 	. 
	rst 18h			;184c	df 	. 
	rst 28h			;184d	ef 	. 
	nop			;184e	00 	. 
	ld bc,0dfffh		;184f	01 ff df 	. . . 
	rst 28h			;1852	ef 	. 
	rst 38h			;1853	ff 	. 
	rst 30h			;1854	f7 	. 
	rst 38h			;1855	ff 	. 
l1856h:
	ei			;1856	fb 	. 
	nop			;1857	00 	. 
	inc bc			;1858	03 	. 
	rst 38h			;1859	ff 	. 
	add a,b			;185a	80 	. 
	rrca			;185b	0f 	. 
	ld a,0ffh		;185c	3e ff 	> . 
	nop			;185e	00 	. 
	ret po			;185f	e0 	. 
	nop			;1860	00 	. 
	ld bc,08fffh		;1861	01 ff 8f 	. . . 
	ld bc,074f8h		;1864	01 f8 74 	. . t 
	inc c			;1867	0c 	. 
	rst 38h			;1868	ff 	. 
	ld bc,0ffffh		;1869	01 ff ff 	. . . 
	pop bc			;186c	c1 	. 
	sbc a,(hl)			;186d	9e 	. 
	adc a,d			;186e	8a 	. 
	adc a,(hl)			;186f	8e 	. 
	rst 38h			;1870	ff 	. 
	add a,(hl)			;1871	86 	. 
	rst 38h			;1872	ff 	. 
	add a,0ffh		;1873	c6 ff 	. . 
	add a,d			;1875	82 	. 
	nop			;1876	00 	. 
	inc bc			;1877	03 	. 
	jp nz,l00c1h		;1878	c2 c1 00 	. . . 
	ld bc,087ffh		;187b	01 ff 87 	. . . 
	add a,c			;187e	81 	. 
	nop			;187f	00 	. 
	inc bc			;1880	03 	. 
	add a,b			;1881	80 	. 
	ld b,b			;1882	40 	@ 
	inc a			;1883	3c 	< 
	daa			;1884	27 	' 
	rst 20h			;1885	e7 	. 
	sub a			;1886	97 	. 
	ld h,a			;1887	67 	g 
	rrca			;1888	0f 	. 
	rst 38h			;1889	ff 	. 
	rra			;188a	1f 	. 
	ld a,a			;188b	7f 	 
	nop			;188c	00 	. 
	ld bc,0f0ffh		;188d	01 ff f0 	. . . 
	nop			;1890	00 	. 
l1891h:
	rlca			;1891	07 	. 
	rst 38h			;1892	ff 	. 
	nop			;1893	00 	. 
	inc bc			;1894	03 	. 
l1895h:
	ret po			;1895	e0 	. 
	ret p			;1896	f0 	. 
	ld (hl),b			;1897	70 	p 
	jr c,$+33		;1898	38 1f 	8 . 
	rrca			;189a	0f 	. 
	ld h,b			;189b	60 	` 
	rst 0			;189c	c7 	. 
	rst 8			;189d	cf 	. 
	add a,e			;189e	83 	. 
	add a,b			;189f	80 	. 
	pop bc			;18a0	c1 	. 
	di			;18a1	f3 	. 
	nop			;18a2	00 	. 
	ld bc,07fffh		;18a3	01 ff 7f 	. .  
	nop			;18a6	00 	. 
	rlca			;18a7	07 	. 
	rst 38h			;18a8	ff 	. 
	defb 0ddh,0cdh,0e9h	;illegal sequence		;18a9	dd cd e9 	. . . 
	ex de,hl			;18ac	eb 	. 
	di			;18ad	f3 	. 
	ld (hl),h			;18ae	74 	t 
	rst 38h			;18af	ff 	. 
	jr c,l1891h		;18b0	38 df 	8 . 
	rst 8			;18b2	cf 	. 
	xor 0e4h		;18b3	ee e4 	. . 
	ld (hl),l			;18b5	75 	u 
	ld (hl),c			;18b6	71 	q 
	ld a,(l003ch)		;18b7	3a 3c 00 	: < . 
	inc b			;18ba	04 	. 
	rlca			;18bb	07 	. 
	rrca			;18bc	0f 	. 
	ld a,a			;18bd	7f 	 
	rst 0			;18be	c7 	. 
	rrca			;18bf	0f 	. 
	ld b,a			;18c0	47 	G 
	rst 38h			;18c1	ff 	. 
	ld c,a			;18c2	4f 	O 
	rst 38h			;18c3	ff 	. 
	adc a,a			;18c4	8f 	. 
	add a,e			;18c5	83 	. 
	ld b,e			;18c6	43 	C 
	ld b,a			;18c7	47 	G 
	ccf			;18c8	3f 	? 
	add hl,sp			;18c9	39 	9 
	ld hl,0ff01h		;18ca	21 01 ff 	! . . 
	inc bc			;18cd	03 	. 
	add a,a			;18ce	87 	. 
	ld a,a			;18cf	7f 	 
	rst 20h			;18d0	e7 	. 
	rst 38h			;18d1	ff 	. 
	rst 38h			;18d2	ff 	. 
	rrca			;18d3	0f 	. 
	rst 30h			;18d4	f7 	. 
	sub e			;18d5	93 	. 
	di			;18d6	f3 	. 
	in a,(000h)		;18d7	db 00 	. . 
	ld bc,09000h		;18d9	01 00 90 	. . . 
	inc b			;18dc	04 	. 
	nop			;18dd	00 	. 
	ld bc,04800h		;18de	01 00 48 	. . H 
	ld bc,l0590h		;18e1	01 90 05 	. . . 
	nop			;18e4	00 	. 
	ld bc,01100h		;18e5	01 00 11 	. . . 
	nop			;18e8	00 	. 
	ld bc,08200h		;18e9	01 00 82 	. . . 
	nop			;18ec	00 	. 
	ld bc,l0800h		;18ed	01 00 08 	. . . 
	ld b,c			;18f0	41 	A 
	inc b			;18f1	04 	. 
	inc bc			;18f2	03 	. 
	ld sp,hl			;18f3	f9 	. 
	call 0ff74h		;18f4	cd 74 ff 	. t . 
	ld a,01eh		;18f7	3e 1e 	> . 
	ld c,000h		;18f9	0e 00 	. . 
	ld b,0ffh		;18fb	06 ff 	. . 
	rst 38h			;18fd	ff 	. 
	ld a,a			;18fe	7f 	 
l18ffh:
	add a,b			;18ff	80 	. 
	ld (de),a			;1900	12 	. 
	rst 38h			;1901	ff 	. 
	nop			;1902	00 	. 
	ld b,h			;1903	44 	D 
	nop			;1904	00 	. 
	ld bc,l1200h		;1905	01 00 12 	. . . 
	nop			;1908	00 	. 
	ld bc,l2100h		;1909	01 00 21 	. . ! 
	rst 38h			;190c	ff 	. 
	nop			;190d	00 	. 
	ld b,h			;190e	44 	D 
	nop			;190f	00 	. 
	ld bc,l0100h		;1910	01 00 01 	. . . 
	djnz l1895h		;1913	10 80 	. . 
	nop			;1915	00 	. 
	ld bc,08000h		;1916	01 00 80 	. . . 
	add a,c			;1919	81 	. 
	rra			;191a	1f 	. 
	nop			;191b	00 	. 
	inc c			;191c	0c 	. 
	rst 38h			;191d	ff 	. 
	push bc			;191e	c5 	. 
	ld d,d			;191f	52 	R 
	dec l			;1920	2d 	- 
	ld a,(de)			;1921	1a 	. 
	nop			;1922	00 	. 
	inc b			;1923	04 	. 
	nop			;1924	00 	. 
	or e			;1925	b3 	. 
	xor 035h		;1926	ee 35 	. 5 
	ld a,(de)			;1928	1a 	. 
	nop			;1929	00 	. 
	inc b			;192a	04 	. 
	nop			;192b	00 	. 
	xor c			;192c	a9 	. 
	ld d,d			;192d	52 	R 
	dec l			;192e	2d 	- 
	ld a,(de)			;192f	1a 	. 
	nop			;1930	00 	. 
	inc b			;1931	04 	. 
	nop			;1932	00 	. 
	set 6,(hl)		;1933	cb f6 	. . 
	inc l			;1935	2c 	, 
	jr l1938h		;1936	18 00 	. . 
l1938h:
	inc b			;1938	04 	. 
	nop			;1939	00 	. 
	nop			;193a	00 	. 
	ld bc,0feffh		;193b	01 ff fe 	. . . 
	dec a			;193e	3d 	= 
	ld a,(de)			;193f	1a 	. 
	nop			;1940	00 	. 
	inc b			;1941	04 	. 
	nop			;1942	00 	. 
	nop			;1943	00 	. 
	ld bc,0feffh		;1944	01 ff fe 	. . . 
	dec a			;1947	3d 	= 
	ld a,(de)			;1948	1a 	. 
	nop			;1949	00 	. 
	inc b			;194a	04 	. 
	nop			;194b	00 	. 
	nop			;194c	00 	. 
	ld bc,07effh		;194d	01 ff 7e 	. . ~ 
	dec a			;1950	3d 	= 
	ld a,(de)			;1951	1a 	. 
	nop			;1952	00 	. 
	inc b			;1953	04 	. 
	nop			;1954	00 	. 
	nop			;1955	00 	. 
	ld bc,0feffh		;1956	01 ff fe 	. . . 
	inc a			;1959	3c 	< 
	jr l195ch		;195a	18 00 	. . 
l195ch:
	inc b			;195c	04 	. 
	nop			;195d	00 	. 
	nop			;195e	00 	. 
	inc bc			;195f	03 	. 
	ret p			;1960	f0 	. 
	nop			;1961	00 	. 
	ld bc,l00ffh		;1962	01 ff 00 	. . . 
	inc bc			;1965	03 	. 
	ret p			;1966	f0 	. 
	cp 03fh		;1967	fe 3f 	. ? 
	rra			;1969	1f 	. 
	rrca			;196a	0f 	. 
	add a,e			;196b	83 	. 
	ccf			;196c	3f 	? 
	rrca			;196d	0f 	. 
	rlca			;196e	07 	. 
	inc bc			;196f	03 	. 
	ret p			;1970	f0 	. 
	rst 38h			;1971	ff 	. 
	ret po			;1972	e0 	. 
	cp 000h		;1973	fe 00 	. . 
	inc bc			;1975	03 	. 
	ret po			;1976	e0 	. 
	call m,01f7fh		;1977	fc 7f 1f 	.  . 
	rrca			;197a	0f 	. 
	inc bc			;197b	03 	. 
	ld a,a			;197c	7f 	 
	rra			;197d	1f 	. 
	rrca			;197e	0f 	. 
	inc bc			;197f	03 	. 
	nop			;1980	00 	. 
	inc bc			;1981	03 	. 
	ret po			;1982	e0 	. 
	nop			;1983	00 	. 
	ld bc,l00ffh		;1984	01 ff 00 	. . . 
	inc b			;1987	04 	. 
	ret nz			;1988	c0 	. 
	ccf			;1989	3f 	? 
	rrca			;198a	0f 	. 
	rst 38h			;198b	ff 	. 
	rlca			;198c	07 	. 
	nop			;198d	00 	. 
	inc b			;198e	04 	. 
	inc bc			;198f	03 	. 
	ld bc,l0502h		;1990	01 02 05 	. . . 
	ld a,(de)			;1993	1a 	. 
	nop			;1994	00 	. 
	dec b			;1995	05 	. 
	nop			;1996	00 	. 
	add a,b			;1997	80 	. 
	ld b,b			;1998	40 	@ 
	jr nz,l199bh		;1999	20 00 	  . 
l199bh:
	inc b			;199b	04 	. 
	nop			;199c	00 	. 
	ld (bc),a			;199d	02 	. 
	dec b			;199e	05 	. 
	ld a,(bc)			;199f	0a 	. 
	nop			;19a0	00 	. 
	rlca			;19a1	07 	. 
	nop			;19a2	00 	. 
	add a,b			;19a3	80 	. 
	nop			;19a4	00 	. 
	dec b			;19a5	05 	. 
	nop			;19a6	00 	. 
	ex af,af'			;19a7	08 	. 
	inc d			;19a8	14 	. 
	ld hl,(l0051h)		;19a9	2a 51 00 	* Q . 
	ld a,(bc)			;19ac	0a 	. 
	nop			;19ad	00 	. 
	rst 38h			;19ae	ff 	. 
	ld bc,l00ffh		;19af	01 ff 00 	. . . 
	ld bc,l0f03h		;19b2	01 03 0f 	. . . 
	nop			;19b5	00 	. 
	inc bc			;19b6	03 	. 
	rst 38h			;19b7	ff 	. 
	ret nz			;19b8	c0 	. 
	rst 38h			;19b9	ff 	. 
	ret po			;19ba	e0 	. 
	ret m			;19bb	f8 	. 
	cp 000h		;19bc	fe 00 	. . 
	inc bc			;19be	03 	. 
	rst 38h			;19bf	ff 	. 
	rst 38h			;19c0	ff 	. 
	nop			;19c1	00 	. 
	ld (bc),a			;19c2	02 	. 
	ld b,01fh		;19c3	06 1f 	. . 
	nop			;19c5	00 	. 
	inc bc			;19c6	03 	. 
	rst 38h			;19c7	ff 	. 
	nop			;19c8	00 	. 
	inc b			;19c9	04 	. 
	nop			;19ca	00 	. 
	inc bc			;19cb	03 	. 
	nop			;19cc	00 	. 
	inc bc			;19cd	03 	. 
	rst 38h			;19ce	ff 	. 
	inc bc			;19cf	03 	. 
	rlca			;19d0	07 	. 
	rra			;19d1	1f 	. 
	ld a,a			;19d2	7f 	 
	nop			;19d3	00 	. 
	inc b			;19d4	04 	. 
	rst 38h			;19d5	ff 	. 
	jr nz,l1a38h		;19d6	20 60 	  ` 
	rst 38h			;19d8	ff 	. 
	ld b,b			;19d9	40 	@ 
	ld h,b			;19da	60 	` 
	ld a,c			;19db	79 	y 
	ccf			;19dc	3f 	? 
	nop			;19dd	00 	. 
	ld bc,l00ffh		;19de	01 ff 00 	. . . 
	inc b			;19e1	04 	. 
	nop			;19e2	00 	. 
	add a,b			;19e3	80 	. 
	ret nz			;19e4	c0 	. 
	ret po			;19e5	e0 	. 
	ret p			;19e6	f0 	. 
	rst 38h			;19e7	ff 	. 
	ld bc,l0f03h		;19e8	01 03 0f 	. . . 
	sbc a,(hl)			;19eb	9e 	. 
	call m,sub_3f7ch		;19ec	fc 7c 3f 	. | ? 
	add a,a			;19ef	87 	. 
	add a,c			;19f0	81 	. 
	nop			;19f1	00 	. 
	inc bc			;19f2	03 	. 
	add a,b			;19f3	80 	. 
	ret nz			;19f4	c0 	. 
	call m,l0100h		;19f5	fc 00 01 	. . . 
	rst 38h			;19f8	ff 	. 
	call m,0fff1h		;19f9	fc f1 ff 	. . . 
	ex (sp),hl			;19fc	e3 	. 
	rst 38h			;19fd	ff 	. 
	ret po			;19fe	e0 	. 
	ret p			;19ff	f0 	. 
l1a00h:
	nop			;1a00	00 	. 
	ld bc,l00ffh		;1a01	01 ff 00 	. . . 
	ld b,000h		;1a04	06 00 	. . 
	ld bc,0e007h		;1a06	01 07 e0 	. . . 
	ret nz			;1a09	c0 	. 
	nop			;1a0a	00 	. 
	inc bc			;1a0b	03 	. 
	add a,b			;1a0c	80 	. 
	ret nz			;1a0d	c0 	. 
	add a,b			;1a0e	80 	. 
	ret po			;1a0f	e0 	. 
	rrca			;1a10	0f 	. 
	rst 38h			;1a11	ff 	. 
	ccf			;1a12	3f 	? 
	nop			;1a13	00 	. 
	inc bc			;1a14	03 	. 
	ld a,h			;1a15	7c 	| 
	rst 38h			;1a16	ff 	. 
	ld a,(hl)			;1a17	7e 	~ 
	ret po			;1a18	e0 	. 
	cp 000h		;1a19	fe 00 	. . 
	ld bc,l3fffh		;1a1b	01 ff 3f 	. . ? 
	rlca			;1a1e	07 	. 
	ld bc,l1f0fh		;1a1f	01 0f 1f 	. . . 
	ld a,(hl)			;1a22	7e 	~ 
	ld a,a			;1a23	7f 	 
	nop			;1a24	00 	. 
	ld bc,0c3ffh		;1a25	01 ff c3 	. . . 
	add a,c			;1a28	81 	. 
	nop			;1a29	00 	. 
	dec b			;1a2a	05 	. 
	nop			;1a2b	00 	. 
	add a,b			;1a2c	80 	. 
	ret nz			;1a2d	c0 	. 
	ret po			;1a2e	e0 	. 
	ld h,b			;1a2f	60 	` 
	jr nc,$+18		;1a30	30 10 	0 . 
	nop			;1a32	00 	. 
	inc b			;1a33	04 	. 
	ld a,a			;1a34	7f 	 
	ccf			;1a35	3f 	? 
	inc bc			;1a36	03 	. 
	rst 38h			;1a37	ff 	. 
l1a38h:
	nop			;1a38	00 	. 
	rst 38h			;1a39	ff 	. 
	ccf			;1a3a	3f 	? 
	cp a			;1a3b	bf 	. 
	cp c			;1a3c	b9 	. 
	defb 0fdh,000h,001h	;illegal sequence		;1a3d	fd 00 01 	. . . 
	rst 38h			;1a40	ff 	. 
	ld bc,l0100h		;1a41	01 00 01 	. . . 
	nop			;1a44	00 	. 
	ld (hl),b			;1a45	70 	p 
	ld h,b			;1a46	60 	` 
	rst 38h			;1a47	ff 	. 
	ret nz			;1a48	c0 	. 
	rst 38h			;1a49	ff 	. 
	add a,b			;1a4a	80 	. 
	rst 38h			;1a4b	ff 	. 
	nop			;1a4c	00 	. 
	ld c,007h		;1a4d	0e 07 	. . 
	inc bc			;1a4f	03 	. 
	nop			;1a50	00 	. 
	inc bc			;1a51	03 	. 
	ld bc,l00ffh		;1a52	01 ff 00 	. . . 
	ret po			;1a55	e0 	. 
	rst 38h			;1a56	ff 	. 
	call m,sub_00feh		;1a57	fc fe 00 	. . . 
	inc b			;1a5a	04 	. 
	ld a,(hl)			;1a5b	7e 	~ 
	nop			;1a5c	00 	. 
	ex af,af'			;1a5d	08 	. 
	rst 38h			;1a5e	ff 	. 
	ld h,b			;1a5f	60 	` 
	inc bc			;1a60	03 	. 
	ld bc,sub_0500h		;1a61	01 00 05 	. . . 
	nop			;1a64	00 	. 
	pop bc			;1a65	c1 	. 
	pop hl			;1a66	e1 	. 
	ld (hl),c			;1a67	71 	q 
	nop			;1a68	00 	. 
	inc bc			;1a69	03 	. 
	ld a,b			;1a6a	78 	x 
	ret m			;1a6b	f8 	. 
	ret p			;1a6c	f0 	. 
	nop			;1a6d	00 	. 
	ex af,af'			;1a6e	08 	. 
	rst 38h			;1a6f	ff 	. 
	call m,00700h		;1a70	fc 00 07 	. . . 
	rst 38h			;1a73	ff 	. 
	rra			;1a74	1f 	. 
	nop			;1a75	00 	. 
	ex af,af'			;1a76	08 	. 
	rst 38h			;1a77	ff 	. 
	cp 000h		;1a78	fe 00 	. . 
	ld b,0ffh		;1a7a	06 ff 	. . 
	rst 38h			;1a7c	ff 	. 
	nop			;1a7d	00 	. 
	ld (bc),a			;1a7e	02 	. 
	ld b,00eh		;1a7f	06 0e 	. . 
	nop			;1a81	00 	. 
	inc bc			;1a82	03 	. 
	rst 38h			;1a83	ff 	. 
	add a,b			;1a84	80 	. 
	rst 38h			;1a85	ff 	. 
	nop			;1a86	00 	. 
	rst 38h			;1a87	ff 	. 
	ld (bc),a			;1a88	02 	. 
	ld c,01fh		;1a89	0e 1f 	. . 
	inc a			;1a8b	3c 	< 
	nop			;1a8c	00 	. 
	ex af,af'			;1a8d	08 	. 
	rst 38h			;1a8e	ff 	. 
	inc a			;1a8f	3c 	< 
	ld a,h			;1a90	7c 	| 
	ld a,b			;1a91	78 	x 
	rst 38h			;1a92	ff 	. 
	ret m			;1a93	f8 	. 
	call m,l030eh		;1a94	fc 0e 03 	. . . 
	nop			;1a97	00 	. 
	inc bc			;1a98	03 	. 
	nop			;1a99	00 	. 
	ld bc,0ff03h		;1a9a	01 03 ff 	. . . 
	rlca			;1a9d	07 	. 
	ld c,000h		;1a9e	0e 00 	. . 
	inc bc			;1aa0	03 	. 
	nop			;1aa1	00 	. 
	ret m			;1aa2	f8 	. 
	call m,09efeh		;1aa3	fc fe 9e 	. . . 
	inc bc			;1aa6	03 	. 
	ld c,00ch		;1aa7	0e 0c 	. . 
	rst 38h			;1aa9	ff 	. 
	jr l1abch		;1aaa	18 10 	. . 
	nop			;1aac	00 	. 
	inc bc			;1aad	03 	. 
	nop			;1aae	00 	. 
	rst 38h			;1aaf	ff 	. 
	inc bc			;1ab0	03 	. 
	rlca			;1ab1	07 	. 
	ld b,004h		;1ab2	06 04 	. . 
	rst 38h			;1ab4	ff 	. 
	ex af,af'			;1ab5	08 	. 
	nop			;1ab6	00 	. 
	rlca			;1ab7	07 	. 
	nop			;1ab8	00 	. 
	ld a,h			;1ab9	7c 	| 
	cp 0ffh		;1aba	fe ff 	. . 
l1abch:
	nop			;1abc	00 	. 
	add a,b			;1abd	80 	. 
	ld a,b			;1abe	78 	x 
	inc a			;1abf	3c 	< 
	ld c,0ffh		;1ac0	0e ff 	. . 
	ld b,0c7h		;1ac2	06 c7 	. . 
	add a,c			;1ac4	81 	. 
	ld bc,sub_0500h		;1ac5	01 00 05 	. . . 
	nop			;1ac8	00 	. 
	rst 38h			;1ac9	ff 	. 
	ld b,00ch		;1aca	06 0c 	. . 
	jr l1aeeh		;1acc	18 20 	.   
	nop			;1ace	00 	. 
	dec b			;1acf	05 	. 
	nop			;1ad0	00 	. 
	ld a,b			;1ad1	78 	x 
	ld e,00fh		;1ad2	1e 0f 	. . 
	rst 38h			;1ad4	ff 	. 
	inc bc			;1ad5	03 	. 
	ld bc,l0800h		;1ad6	01 00 08 	. . . 
	rst 38h			;1ad9	ff 	. 
	ld bc,l0400h		;1ada	01 00 04 	. . . 
	nop			;1add	00 	. 
	rlca			;1ade	07 	. 
	ld bc,l0100h		;1adf	01 00 01 	. . . 
	nop			;1ae2	00 	. 
	nop			;1ae3	00 	. 
	inc c			;1ae4	0c 	. 
	rst 38h			;1ae5	ff 	. 
	ld a,a			;1ae6	7f 	 
	rst 38h			;1ae7	ff 	. 
	rra			;1ae8	1f 	. 
	ccf			;1ae9	3f 	? 
	rst 38h			;1aea	ff 	. 
	rst 38h			;1aeb	ff 	. 
	ret m			;1aec	f8 	. 
	ret po			;1aed	e0 	. 
l1aeeh:
	ret m			;1aee	f8 	. 
	sbc a,h			;1aef	9c 	. 
	adc a,(hl)			;1af0	8e 	. 
	add a,(hl)			;1af1	86 	. 
	ld a,a			;1af2	7f 	 
	jp 0ff83h		;1af3	c3 83 ff 	. . . 
	ld bc,l0701h+2		;1af6	01 03 07 	. . . 
	nop			;1af9	00 	. 
	ld bc,0c700h		;1afa	01 00 c7 	. . . 
	rst 20h			;1afd	e7 	. 
	and 0e4h		;1afe	e6 e4 	. . 
	ret po			;1b00	e0 	. 
	ret nz			;1b01	c0 	. 
	rst 38h			;1b02	ff 	. 
	nop			;1b03	00 	. 
	nop			;1b04	00 	. 
	inc b			;1b05	04 	. 
l1b06h:
	rst 38h			;1b06	ff 	. 
	ld a,a			;1b07	7f 	 
	rst 38h			;1b08	ff 	. 
	ccf			;1b09	3f 	? 
	ld a,000h		;1b0a	3e 00 	> . 
	inc bc			;1b0c	03 	. 
	rst 38h			;1b0d	ff 	. 
	ret p			;1b0e	f0 	. 
	ret po			;1b0f	e0 	. 
	rst 38h			;1b10	ff 	. 
	add a,b			;1b11	80 	. 
	nop			;1b12	00 	. 
	ld bc,0f800h		;1b13	01 00 f8 	. . . 
	call m,sub_0e1eh		;1b16	fc 1e 0e 	. . . 
	rst 38h			;1b19	ff 	. 
	inc bc			;1b1a	03 	. 
	ld bc,0ff03h		;1b1b	01 03 ff 	. . . 
	nop			;1b1e	00 	. 
	inc e			;1b1f	1c 	. 
	rst 38h			;1b20	ff 	. 
	ld a,a			;1b21	7f 	 
	rst 38h			;1b22	ff 	. 
	pop hl			;1b23	e1 	. 
	ret nz			;1b24	c0 	. 
	ld a,(hl)			;1b25	7e 	~ 
l1b26h:
	rrca			;1b26	0f 	. 
	rlca			;1b27	07 	. 
	rst 38h			;1b28	ff 	. 
	nop			;1b29	00 	. 
	jr c,$+50		;1b2a	38 30 	8 0 
	ld (hl),b			;1b2c	70 	p 
	nop			;1b2d	00 	. 
	ld bc,0c000h		;1b2e	01 00 c0 	. . . 
	ret p			;1b31	f0 	. 
	ret m			;1b32	f8 	. 
	inc a			;1b33	3c 	< 
	rst 38h			;1b34	ff 	. 
	inc e			;1b35	1c 	. 
	ld e,0ffh		;1b36	1e ff 	. . 
	ld (hl),b			;1b38	70 	p 
	ld a,b			;1b39	78 	x 
	jr c,l1b7ah		;1b3a	38 3e 	8 > 
	ld e,007h		;1b3c	1e 07 	. . 
	nop			;1b3e	00 	. 
	ld bc,l1e00h		;1b3f	01 00 1e 	. . . 
	rst 38h			;1b42	ff 	. 
	ld a,07eh		;1b43	3e 7e 	> ~ 
	call nz,0e004h		;1b45	c4 04 e0 	. . . 
	rst 38h			;1b48	ff 	. 
	nop			;1b49	00 	. 
	rlca			;1b4a	07 	. 
	rra			;1b4b	1f 	. 
	inc a			;1b4c	3c 	< 
	jr nc,$+1		;1b4d	30 ff 	0 . 
	jr nz,$+1		;1b4f	20 ff 	  . 
	nop			;1b51	00 	. 
	ret nz			;1b52	c0 	. 
	ret p			;1b53	f0 	. 
	ld a,b			;1b54	78 	x 
	inc a			;1b55	3c 	< 
	inc c			;1b56	0c 	. 
	rst 38h			;1b57	ff 	. 
	inc b			;1b58	04 	. 
	nop			;1b59	00 	. 
	ld bc,l1c00h		;1b5a	01 00 1c 	. . . 
	ld a,07fh		;1b5d	3e 7f 	>  
	ld b,e			;1b5f	43 	C 
	rst 38h			;1b60	ff 	. 
	ld bc,l0100h		;1b61	01 00 01 	. . . 
	nop			;1b64	00 	. 
	inc b			;1b65	04 	. 
	nop			;1b66	00 	. 
	ld bc,l3000h		;1b67	01 00 30 	. . 0 
	ld a,h			;1b6a	7c 	| 
	ret m			;1b6b	f8 	. 
	ret nz			;1b6c	c0 	. 
	add a,b			;1b6d	80 	. 
	nop			;1b6e	00 	. 
	ld bc,00700h		;1b6f	01 00 07 	. . . 
	ld bc,sub_0300h		;1b72	01 00 03 	. . . 
	nop			;1b75	00 	. 
	ld bc,l0701h+2		;1b76	01 03 07 	. . . 
	inc bc			;1b79	03 	. 
l1b7ah:
	ret nz			;1b7a	c0 	. 
	rst 38h			;1b7b	ff 	. 
	ret po			;1b7c	e0 	. 
	rst 38h			;1b7d	ff 	. 
	ret p			;1b7e	f0 	. 
	ret po			;1b7f	e0 	. 
	add a,e			;1b80	83 	. 
	ret po			;1b81	e0 	. 
	nop			;1b82	00 	. 
	rlca			;1b83	07 	. 
	rst 38h			;1b84	ff 	. 
	nop			;1b85	00 	. 
	inc b			;1b86	04 	. 
	cp 0fch		;1b87	fe fc 	. . 
	nop			;1b89	00 	. 
	inc bc			;1b8a	03 	. 
	nop			;1b8b	00 	. 
	jr nc,$+37		;1b8c	30 23 	0 # 
	ld h,(hl)			;1b8e	66 	f 
	rst 0			;1b8f	c7 	. 
	nop			;1b90	00 	. 
	inc bc			;1b91	03 	. 
	add a,b			;1b92	80 	. 
	ret nz			;1b93	c0 	. 
	jr nc,l1b26h		;1b94	30 90 	0 . 
	ld d,b			;1b96	50 	P 
	rst 38h			;1b97	ff 	. 
	ret z			;1b98	c8 	. 
	ld h,h			;1b99	64 	d 
	inc sp			;1b9a	33 	3 
	add hl,sp			;1b9b	39 	9 
	rst 38h			;1b9c	ff 	. 
	ld b,b			;1b9d	40 	@ 
	rst 38h			;1b9e	ff 	. 
	and b			;1b9f	a0 	. 
	ld d,b			;1ba0	50 	P 
	ld c,a			;1ba1	4f 	O 
	add a,b			;1ba2	80 	. 
	adc a,a			;1ba3	8f 	. 
	add hl,hl			;1ba4	29 	) 
	ld a,03ch		;1ba5	3e 3c 	> < 
	ld e,c			;1ba7	59 	Y 
	inc bc			;1ba8	03 	. 
	ld c,0f8h		;1ba9	0e f8 	. . 
	jr l1badh		;1bab	18 00 	. . 
l1badh:
	ld bc,0f800h		;1bad	01 00 f8 	. . . 
	call z,0ff74h		;1bb0	cc 74 ff 	. t . 
	ld a,01eh		;1bb3	3e 1e 	> . 
	ld c,046h		;1bb5	0e 46 	. F 
	rst 38h			;1bb7	ff 	. 
	ld c,(hl)			;1bb8	4e 	N 
	rst 38h			;1bb9	ff 	. 
	adc a,(hl)			;1bba	8e 	. 
	add a,d			;1bbb	82 	. 
	ld b,d			;1bbc	42 	B 
	ld b,e			;1bbd	43 	C 
	nop			;1bbe	00 	. 
	ld bc,08000h		;1bbf	01 00 80 	. . . 
	add a,c			;1bc2	81 	. 
	rra			;1bc3	1f 	. 
	ret p			;1bc4	f0 	. 
	inc bc			;1bc5	03 	. 
	rlca			;1bc6	07 	. 
	rrca			;1bc7	0f 	. 
	pop hl			;1bc8	e1 	. 
	ld sp,hl			;1bc9	f9 	. 
	ret			;1bca	c9 	. 
	inc b			;1bcb	04 	. 
	or 092h		;1bcc	f6 92 	. . 
	di			;1bce	f3 	. 
	exx			;1bcf	d9 	. 
	add a,a			;1bd0	87 	. 
	add a,c			;1bd1	81 	. 
	nop			;1bd2	00 	. 
	inc bc			;1bd3	03 	. 
	add a,b			;1bd4	80 	. 
	ld b,b			;1bd5	40 	@ 
	inc a			;1bd6	3c 	< 
	daa			;1bd7	27 	' 
	call pe,07494h		;1bd8	ec 94 74 	. . t 
	ld (hl),033h		;1bdb	36 33 	6 3 
	inc de			;1bdd	13 	. 
	rlca			;1bde	07 	. 
	call m,0c760h		;1bdf	fc 60 c7 	. ` . 
	rst 8			;1be2	cf 	. 
	add a,e			;1be3	83 	. 
	add a,b			;1be4	80 	. 
	ret nz			;1be5	c0 	. 
	ret p			;1be6	f0 	. 
	ccf			;1be7	3f 	? 
	rrca			;1be8	0f 	. 
	nop			;1be9	00 	. 
	ld bc,0f0ffh		;1bea	01 ff f0 	. . . 
	nop			;1bed	00 	. 
	inc bc			;1bee	03 	. 
	nop			;1bef	00 	. 
	ld bc,l0100h		;1bf0	01 00 01 	. . . 
	rst 38h			;1bf3	ff 	. 
	rra			;1bf4	1f 	. 
	ld (hl),b			;1bf5	70 	p 
	nop			;1bf6	00 	. 
	inc bc			;1bf7	03 	. 
	nop			;1bf8	00 	. 
	add a,b			;1bf9	80 	. 
	nop			;1bfa	00 	. 
	ld bc,l18ffh		;1bfb	01 ff 18 	. . . 
	inc b			;1bfe	04 	. 
	rst 38h			;1bff	ff 	. 
l1c00h:
	nop			;1c00	00 	. 
	rlca			;1c01	07 	. 
	inc c			;1c02	0c 	. 
	ld a,c			;1c03	79 	y 
	jp 0ee0fh		;1c04	c3 0f ee 	. . . 
	and c			;1c07	a1 	. 
	defb 0fdh,001h,000h	;illegal sequence		;1c08	fd 01 00 	. . . 
	ld bc,l0100h		;1c0b	01 00 01 	. . . 
	nop			;1c0e	00 	. 
	ld bc,0c3ffh		;1c0f	01 ff c3 	. . . 
	ccf			;1c12	3f 	? 
	jr c,l1c35h		;1c13	38 20 	8   
	nop			;1c15	00 	. 
	inc bc			;1c16	03 	. 
	nop			;1c17	00 	. 
	add a,b			;1c18	80 	. 
	ld a,a			;1c19	7f 	 
	inc b			;1c1a	04 	. 
	call nz,0d222h		;1c1b	c4 22 d2 	. " . 
	jp pe,0fbf4h		;1c1e	ea f4 fb 	. . . 
	defb 0fdh,083h,084h	;illegal sequence		;1c21	fd 83 84 	. . . 
	ld c,e			;1c24	4b 	K 
	scf			;1c25	37 	7 
	cpl			;1c26	2f 	/ 
	ld e,a			;1c27	5f 	_ 
	rst 38h			;1c28	ff 	. 
	cp a			;1c29	bf 	. 
	defb 0fdh,000h,004h	;illegal sequence		;1c2a	fd 00 04 	. . . 
	cp 0ffh		;1c2d	fe ff 	. . 
	rst 38h			;1c2f	ff 	. 
	nop			;1c30	00 	. 
	ld bc,l0000h		;1c31	01 00 00 	. . . 
	rlca			;1c34	07 	. 
l1c35h:
	ld a,a			;1c35	7f 	 
	nop			;1c36	00 	. 
	ld bc,00700h		;1c37	01 00 07 	. . . 
	ld a,a			;1c3a	7f 	 
	rst 38h			;1c3b	ff 	. 
	rst 38h			;1c3c	ff 	. 
	ret p			;1c3d	f0 	. 
	add a,b			;1c3e	80 	. 
	nop			;1c3f	00 	. 
	ld bc,0f000h		;1c40	01 00 f0 	. . . 
	ret m			;1c43	f8 	. 
	call m,09dfdh		;1c44	fc fd 9d 	. . . 
	cp e			;1c47	bb 	. 
	nop			;1c48	00 	. 
	ld bc,0c0ffh		;1c49	01 ff c0 	. . . 
	nop			;1c4c	00 	. 
	ld bc,l0000h		;1c4d	01 00 00 	. . . 
	nop			;1c50	00 	. 
	ret nz			;1c51	c0 	. 
	ret po			;1c52	e0 	. 
	rst 38h			;1c53	ff 	. 
	ret p			;1c54	f0 	. 
	nop			;1c55	00 	. 
	inc b			;1c56	04 	. 
	ret po			;1c57	e0 	. 
	nop			;1c58	00 	. 
	ld bc,0fcffh		;1c59	01 ff fc 	. . . 
	ret p			;1c5c	f0 	. 
	ret po			;1c5d	e0 	. 
	ret nz			;1c5e	c0 	. 
	rst 38h			;1c5f	ff 	. 
	add a,b			;1c60	80 	. 
	nop			;1c61	00 	. 
	ex af,af'			;1c62	08 	. 
	nop			;1c63	00 	. 
	inc bc			;1c64	03 	. 
	nop			;1c65	00 	. 
	ld b,000h		;1c66	06 00 	. . 
	rst 38h			;1c68	ff 	. 
	add a,b			;1c69	80 	. 
	nop			;1c6a	00 	. 
	ld bc,l0fffh		;1c6b	01 ff 0f 	. . . 
	inc bc			;1c6e	03 	. 
	nop			;1c6f	00 	. 
	dec b			;1c70	05 	. 
	nop			;1c71	00 	. 
	nop			;1c72	00 	. 
	ld bc,0feffh		;1c73	01 ff fe 	. . . 
	ret m			;1c76	f8 	. 
	ret p			;1c77	f0 	. 
	ld h,b			;1c78	60 	` 
	jr nz,l1c7bh		;1c79	20 00 	  . 
l1c7bh:
	inc bc			;1c7b	03 	. 
	nop			;1c7c	00 	. 
	rst 38h			;1c7d	ff 	. 
	ld bc,l0701h+2		;1c7e	01 03 07 	. . . 
	rra			;1c81	1f 	. 
	ld a,a			;1c82	7f 	 
	rst 38h			;1c83	ff 	. 
	rst 38h			;1c84	ff 	. 
	call m,0e0f0h		;1c85	fc f0 e0 	. . . 
	ret nz			;1c88	c0 	. 
	rst 38h			;1c89	ff 	. 
	add a,b			;1c8a	80 	. 
	nop			;1c8b	00 	. 
	ld bc,l0000h		;1c8c	01 00 00 	. . . 
	ld bc,l0fffh		;1c8f	01 ff 0f 	. . . 
	rst 38h			;1c92	ff 	. 
	inc bc			;1c93	03 	. 
	nop			;1c94	00 	. 
	inc bc			;1c95	03 	. 
	ld bc,l0100h		;1c96	01 00 01 	. . . 
	nop			;1c99	00 	. 
	ret po			;1c9a	e0 	. 
	rst 38h			;1c9b	ff 	. 
sub_1c9ch:
	ret p			;1c9c	f0 	. 
	call m,sub_0500h		;1c9d	fc 00 05 	. . . 
	rst 38h			;1ca0	ff 	. 
	rrca			;1ca1	0f 	. 
	inc bc			;1ca2	03 	. 
	nop			;1ca3	00 	. 
	dec b			;1ca4	05 	. 
	nop			;1ca5	00 	. 
	nop			;1ca6	00 	. 
	ld bc,l0fffh		;1ca7	01 ff 0f 	. . . 
	inc bc			;1caa	03 	. 
	nop			;1cab	00 	. 
	add hl,bc			;1cac	09 	. 
	nop			;1cad	00 	. 
	inc bc			;1cae	03 	. 
	nop			;1caf	00 	. 
	inc bc			;1cb0	03 	. 
	rst 38h			;1cb1	ff 	. 
	ld (bc),a			;1cb2	02 	. 
	rlca			;1cb3	07 	. 
	rra			;1cb4	1f 	. 
	ld a,a			;1cb5	7f 	 
	nop			;1cb6	00 	. 
	dec b			;1cb7	05 	. 
	rst 38h			;1cb8	ff 	. 
	cp 0f8h		;1cb9	fe f8 	. . 
	ret p			;1cbb	f0 	. 
	ld h,b			;1cbc	60 	` 
	jr nz,$+1		;1cbd	20 ff 	  . 
	nop			;1cbf	00 	. 
	nop			;1cc0	00 	. 
	ld bc,l0fffh		;1cc1	01 ff 0f 	. . . 
	rst 38h			;1cc4	ff 	. 
	inc bc			;1cc5	03 	. 
	ld bc,sub_0500h		;1cc6	01 00 05 	. . . 
	nop			;1cc9	00 	. 
	add a,b			;1cca	80 	. 
	ret po			;1ccb	e0 	. 
	ret m			;1ccc	f8 	. 
	nop			;1ccd	00 	. 
	inc bc			;1cce	03 	. 
	rst 38h			;1ccf	ff 	. 
	rst 38h			;1cd0	ff 	. 
	nop			;1cd1	00 	. 
	ld bc,l3f07h		;1cd2	01 07 3f 	. . ? 
	nop			;1cd5	00 	. 
	inc b			;1cd6	04 	. 
	rst 38h			;1cd7	ff 	. 
	cp 0f8h		;1cd8	fe f8 	. . 
	ret p			;1cda	f0 	. 
	ld h,b			;1cdb	60 	` 
	jr nz,$+1		;1cdc	20 ff 	  . 
	nop			;1cde	00 	. 
	nop			;1cdf	00 	. 
	ld bc,l0fffh		;1ce0	01 ff 0f 	. . . 
	rst 38h			;1ce3	ff 	. 
	inc bc			;1ce4	03 	. 
	ld bc,sub_0300h		;1ce5	01 00 03 	. . . 
	nop			;1ce8	00 	. 
	ld a,a			;1ce9	7f 	 
	nop			;1cea	00 	. 
	rlca			;1ceb	07 	. 
	rst 38h			;1cec	ff 	. 
	cp 0f8h		;1ced	fe f8 	. . 
	ret p			;1cef	f0 	. 
	rst 38h			;1cf0	ff 	. 
	ret po			;1cf1	e0 	. 
	nop			;1cf2	00 	. 
	inc bc			;1cf3	03 	. 
	ret nz			;1cf4	c0 	. 
	nop			;1cf5	00 	. 
	ex af,af'			;1cf6	08 	. 
	rst 38h			;1cf7	ff 	. 
	nop			;1cf8	00 	. 
	djnz l1cfbh		;1cf9	10 00 	. . 
l1cfbh:
	nop			;1cfb	00 	. 
	inc b			;1cfc	04 	. 
	rst 38h			;1cfd	ff 	. 
	ret p			;1cfe	f0 	. 
	ret nz			;1cff	c0 	. 
	add a,b			;1d00	80 	. 
	cp 000h		;1d01	fe 00 	. . 
	inc b			;1d03	04 	. 
	rst 38h			;1d04	ff 	. 
	call m,0f0f8h		;1d05	fc f8 f0 	. . . 
	ret po			;1d08	e0 	. 
	nop			;1d09	00 	. 
	ld bc,0feffh		;1d0a	01 ff fe 	. . . 
	ret nz			;1d0d	c0 	. 
	nop			;1d0e	00 	. 
	dec b			;1d0f	05 	. 
	nop			;1d10	00 	. 
	nop			;1d11	00 	. 
	inc b			;1d12	04 	. 
	rst 38h			;1d13	ff 	. 
	ccf			;1d14	3f 	? 
	rrca			;1d15	0f 	. 
	inc bc			;1d16	03 	. 
	ld bc,l0800h		;1d17	01 00 08 	. . . 
	rst 38h			;1d1a	ff 	. 
	add a,b			;1d1b	80 	. 
	ld b,b			;1d1c	40 	@ 
	jr nz,$+18		;1d1d	20 10 	  . 
	jr l1d29h		;1d1f	18 08 	. . 
	inc b			;1d21	04 	. 
	call m,l0100h		;1d22	fc 00 01 	. . . 
	rst 38h			;1d25	ff 	. 
	ld a,b			;1d26	78 	x 
	jr nz,l1d29h		;1d27	20 00 	  . 
l1d29h:
	dec b			;1d29	05 	. 
	nop			;1d2a	00 	. 
	nop			;1d2b	00 	. 
	ld b,0ffh		;1d2c	06 ff 	. . 
	call m,sub_00e0h		;1d2e	fc e0 00 	. . . 
	ld b,0ffh		;1d31	06 ff 	. . 
	ccf			;1d33	3f 	? 
	rlca			;1d34	07 	. 
	nop			;1d35	00 	. 
	rlca			;1d36	07 	. 
	nop			;1d37	00 	. 
	call m,sub_0001h		;1d38	fc 01 00 	. . . 
	ld b,000h		;1d3b	06 00 	. . 
	rra			;1d3d	1f 	. 
	rst 0			;1d3e	c7 	. 
	pop bc			;1d3f	c1 	. 
	jp l00a7h		;1d40	c3 a7 00 	. . . 
	dec b			;1d43	05 	. 
	rst 38h			;1d44	ff 	. 
	call m,0f8ffh		;1d45	fc ff f8 	. . . 
	nop			;1d48	00 	. 
	dec b			;1d49	05 	. 
	rst 38h			;1d4a	ff 	. 
	ld a,a			;1d4b	7f 	 
	rra			;1d4c	1f 	. 
	rrca			;1d4d	0f 	. 
	rst 38h			;1d4e	ff 	. 
	rlca			;1d4f	07 	. 
	inc bc			;1d50	03 	. 
	ld bc,00700h		;1d51	01 00 07 	. . . 
	rst 38h			;1d54	ff 	. 
	call m,0c0ffh		;1d55	fc ff c0 	. . . 
	add a,a			;1d58	87 	. 
	sbc a,a			;1d59	9f 	. 
	nop			;1d5a	00 	. 
	ld bc,0feffh		;1d5b	01 ff fe 	. . . 
	call m,00ff8h		;1d5e	fc f8 0f 	. . . 
	call m,080e0h		;1d61	fc e0 80 	. . . 
	nop			;1d64	00 	. 
	inc b			;1d65	04 	. 
	nop			;1d66	00 	. 
	ret p			;1d67	f0 	. 
	rst 38h			;1d68	ff 	. 
	ret po			;1d69	e0 	. 
	rst 38h			;1d6a	ff 	. 
	ret nz			;1d6b	c0 	. 
	add a,a			;1d6c	87 	. 
	cp a			;1d6d	bf 	. 
	nop			;1d6e	00 	. 
	ld bc,l00ffh		;1d6f	01 ff 00 	. . . 
	ld bc,sub_0300h		;1d72	01 00 03 	. . . 
	rrca			;1d75	0f 	. 
	ccf			;1d76	3f 	? 
	nop			;1d77	00 	. 
	inc b			;1d78	04 	. 
	rst 38h			;1d79	ff 	. 
	nop			;1d7a	00 	. 
	inc bc			;1d7b	03 	. 
	ld (bc),a			;1d7c	02 	. 
	dec b			;1d7d	05 	. 
	rst 38h			;1d7e	ff 	. 
	rrca			;1d7f	0f 	. 
	rra			;1d80	1f 	. 
	ccf			;1d81	3f 	? 
	inc bc			;1d82	03 	. 
	ccf			;1d83	3f 	? 
	rst 38h			;1d84	ff 	. 
	rst 38h			;1d85	ff 	. 
	cp 0ffh		;1d86	fe ff 	. . 
	call m,sub_00feh		;1d88	fc fe 00 	. . . 
	ld (de),a			;1d8b	12 	. 
	rst 38h			;1d8c	ff 	. 
	rst 38h			;1d8d	ff 	. 
	call m,07efeh		;1d8e	fc fe 7e 	. . ~ 
	ld a,a			;1d91	7f 	 
	ccf			;1d92	3f 	? 
	nop			;1d93	00 	. 
	inc bc			;1d94	03 	. 
	rst 38h			;1d95	ff 	. 
	ld h,e			;1d96	63 	c 
	rst 38h			;1d97	ff 	. 
	ld (hl),b			;1d98	70 	p 
	rst 38h			;1d99	ff 	. 
	ret p			;1d9a	f0 	. 
	ccf			;1d9b	3f 	? 
	nop			;1d9c	00 	. 
	rlca			;1d9d	07 	. 
	rst 38h			;1d9e	ff 	. 
	rst 38h			;1d9f	ff 	. 
	ret p			;1da0	f0 	. 
	ret po			;1da1	e0 	. 
	call m,l0400h		;1da2	fc 00 04 	. . . 
	rst 38h			;1da5	ff 	. 
	ret nz			;1da6	c0 	. 
	ret po			;1da7	e0 	. 
	ret p			;1da8	f0 	. 
	ret m			;1da9	f8 	. 
	call m,0ff7eh		;1daa	fc 7e ff 	. ~ . 
	ccf			;1dad	3f 	? 
	nop			;1dae	00 	. 
	ld bc,07fffh		;1daf	01 ff 7f 	. .  
	rst 38h			;1db2	ff 	. 
	ccf			;1db3	3f 	? 
	rst 38h			;1db4	ff 	. 
	rra			;1db5	1f 	. 
	rrca			;1db6	0f 	. 
	adc a,a			;1db7	8f 	. 
	nop			;1db8	00 	. 
	inc bc			;1db9	03 	. 
	rra			;1dba	1f 	. 
	rrca			;1dbb	0f 	. 
	adc a,a			;1dbc	8f 	. 
	rst 8			;1dbd	cf 	. 
	rst 28h			;1dbe	ef 	. 
	nop			;1dbf	00 	. 
	ld bc,0c7ffh		;1dc0	01 ff c7 	. . . 
	rst 20h			;1dc3	e7 	. 
	rst 38h			;1dc4	ff 	. 
	di			;1dc5	f3 	. 
	rst 38h			;1dc6	ff 	. 
	ei			;1dc7	fb 	. 
	rst 38h			;1dc8	ff 	. 
	rst 38h			;1dc9	ff 	. 
	ret m			;1dca	f8 	. 
	nop			;1dcb	00 	. 
	ld bc,0f0ffh		;1dcc	01 ff f0 	. . . 
	pop bc			;1dcf	c1 	. 
	rst 38h			;1dd0	ff 	. 
	rst 38h			;1dd1	ff 	. 
	sbc a,a			;1dd2	9f 	. 
	nop			;1dd3	00 	. 
	ld bc,07fffh		;1dd4	01 ff 7f 	. .  
	nop			;1dd7	00 	. 
	ld bc,l07ffh		;1dd8	01 ff 07 	. . . 
	add a,e			;1ddb	83 	. 
	di			;1ddc	f3 	. 
	nop			;1ddd	00 	. 
	inc bc			;1dde	03 	. 
	rst 38h			;1ddf	ff 	. 
	cp a			;1de0	bf 	. 
	cp (hl)			;1de1	be 	. 
	ld h,c			;1de2	61 	a 
	rst 38h			;1de3	ff 	. 
	ld (hl),c			;1de4	71 	q 
	rst 38h			;1de5	ff 	. 
	ld a,c			;1de6	79 	y 
	rst 38h			;1de7	ff 	. 
	add hl,sp			;1de8	39 	9 
	rst 38h			;1de9	ff 	. 
	ld a,l			;1dea	7d 	} 
	dec a			;1deb	3d 	= 
	rst 38h			;1dec	ff 	. 
	cp l			;1ded	bd 	. 
	cp (hl)			;1dee	be 	. 
	add a,b			;1def	80 	. 
	ret m			;1df0	f8 	. 
	cp 000h		;1df1	fe 00 	. . 
	ld b,0ffh		;1df3	06 ff 	. . 
	rra			;1df5	1f 	. 
	rrca			;1df6	0f 	. 
	sbc a,a			;1df7	9f 	. 
	nop			;1df8	00 	. 
	dec b			;1df9	05 	. 
	rst 38h			;1dfa	ff 	. 
	rst 38h			;1dfb	ff 	. 
	ret po			;1dfc	e0 	. 
	rst 0			;1dfd	c7 	. 
	nop			;1dfe	00 	. 
	dec b			;1dff	05 	. 
l1e00h:
	rst 38h			;1e00	ff 	. 
	nop			;1e01	00 	. 
	inc bc			;1e02	03 	. 
	ld b,b			;1e03	40 	@ 
	rst 38h			;1e04	ff 	. 
	jr nz,l1e17h		;1e05	20 10 	  . 
	ex af,af'			;1e07	08 	. 
	ld b,000h		;1e08	06 00 	. . 
	ld bc,0f8ffh		;1e0a	01 ff f8 	. . . 
	or b			;1e0d	b0 	. 
	call m,l0100h		;1e0e	fc 00 01 	. . . 
	rst 38h			;1e11	ff 	. 
	cp a			;1e12	bf 	. 
	rst 28h			;1e13	ef 	. 
	nop			;1e14	00 	. 
	add hl,bc			;1e15	09 	. 
	rst 38h			;1e16	ff 	. 
l1e17h:
	rst 38h			;1e17	ff 	. 
	pop bc			;1e18	c1 	. 
	pop hl			;1e19	e1 	. 
	ld h,e			;1e1a	63 	c 
	inc sp			;1e1b	33 	3 
	sub a			;1e1c	97 	. 
	rst 18h			;1e1d	df 	. 
	rst 8			;1e1e	cf 	. 
	rst 38h			;1e1f	ff 	. 
	ret nz			;1e20	c0 	. 
	rst 38h			;1e21	ff 	. 
	ret po			;1e22	e0 	. 
	rst 38h			;1e23	ff 	. 
	or c			;1e24	b1 	. 
	in a,(0cfh)		;1e25	db cf 	. . 
	nop			;1e27	00 	. 
	rlca			;1e28	07 	. 
	rst 38h			;1e29	ff 	. 
	di			;1e2a	f3 	. 
	nop			;1e2b	00 	. 
	ld bc,0f7ffh		;1e2c	01 ff f7 	. . . 
	nop			;1e2f	00 	. 
	inc bc			;1e30	03 	. 
	di			;1e31	f3 	. 
	nop			;1e32	00 	. 
	inc bc			;1e33	03 	. 
	rst 38h			;1e34	ff 	. 
	pop bc			;1e35	c1 	. 
	rst 0			;1e36	c7 	. 
	rst 18h			;1e37	df 	. 
	nop			;1e38	00 	. 
	dec b			;1e39	05 	. 
	rst 38h			;1e3a	ff 	. 
	rst 18h			;1e3b	df 	. 
	nop			;1e3c	00 	. 
	inc bc			;1e3d	03 	. 
	rst 38h			;1e3e	ff 	. 
	nop			;1e3f	00 	. 
	inc bc			;1e40	03 	. 
	rrca			;1e41	0f 	. 
	daa			;1e42	27 	' 
	nop			;1e43	00 	. 
	ld bc,06fffh		;1e44	01 ff 6f 	. . o 
	ei			;1e47	fb 	. 
	nop			;1e48	00 	. 
	ld bc,0b7ffh		;1e49	01 ff b7 	. . . 
	cp 06fh		;1e4c	fe 6f 	. o 
	jp m,l0100h		;1e4e	fa 00 01 	. . . 
	rst 38h			;1e51	ff 	. 
	xor 000h		;1e52	ee 00 	. . 
	ld bc,07dffh		;1e54	01 ff 7d 	. . } 
	nop			;1e57	00 	. 
	ld bc,0f7ffh		;1e58	01 ff f7 	. . . 
	cp (hl)			;1e5b	be 	. 
	ei			;1e5c	fb 	. 
	nop			;1e5d	00 	. 
	ld bc,l07ffh		;1e5e	01 ff 07 	. . . 
	inc bc			;1e61	03 	. 
	add a,e			;1e62	83 	. 
	rst 38h			;1e63	ff 	. 
	pop bc			;1e64	c1 	. 
	pop hl			;1e65	e1 	. 
	pop af			;1e66	f1 	. 
	nop			;1e67	00 	. 
	ex af,af'			;1e68	08 	. 
	rst 38h			;1e69	ff 	. 
	ld a,a			;1e6a	7f 	 
	defb 0edh;next byte illegal after ed		;1e6b	ed 	. 
	rst 38h			;1e6c	ff 	. 
	rst 38h			;1e6d	ff 	. 
	cp e			;1e6e	bb 	. 
	nop			;1e6f	00 	. 
	ld bc,0edffh		;1e70	01 ff ed 	. . . 
	nop			;1e73	00 	. 
	ld bc,0deffh		;1e74	01 ff de 	. . . 
	rst 38h			;1e77	ff 	. 
	rst 38h			;1e78	ff 	. 
	cp e			;1e79	bb 	. 
	nop			;1e7a	00 	. 
	ld bc,0feffh		;1e7b	01 ff fe 	. . . 
	rst 28h			;1e7e	ef 	. 
	ld a,a			;1e7f	7f 	 
	rst 38h			;1e80	ff 	. 
	rst 38h			;1e81	ff 	. 
	cp 0efh		;1e82	fe ef 	. . 
	nop			;1e84	00 	. 
	inc c			;1e85	0c 	. 
	rst 38h			;1e86	ff 	. 
	cp e			;1e87	bb 	. 
	ld l,(hl)			;1e88	6e 	n 
	dec (hl)			;1e89	35 	5 
	ld a,(de)			;1e8a	1a 	. 
	nop			;1e8b	00 	. 
	inc b			;1e8c	04 	. 
	nop			;1e8d	00 	. 
	call sub_2dd2h		;1e8e	cd d2 2d 	. . - 
	ld a,(de)			;1e91	1a 	. 
	nop			;1e92	00 	. 
	inc b			;1e93	04 	. 
	nop			;1e94	00 	. 
	rst 10h			;1e95	d7 	. 
	ld l,(hl)			;1e96	6e 	n 
	dec (hl)			;1e97	35 	5 
	ld a,(de)			;1e98	1a 	. 
	nop			;1e99	00 	. 
	inc b			;1e9a	04 	. 
	nop			;1e9b	00 	. 
	or l			;1e9c	b5 	. 
	jp z,l1834h		;1e9d	ca 34 18 	. 4 . 
	nop			;1ea0	00 	. 
	inc b			;1ea1	04 	. 
	nop			;1ea2	00 	. 
	nop			;1ea3	00 	. 
	ld bc,0feffh		;1ea4	01 ff fe 	. . . 
	dec a			;1ea7	3d 	= 
	ld a,(de)			;1ea8	1a 	. 
	nop			;1ea9	00 	. 
	inc b			;1eaa	04 	. 
	nop			;1eab	00 	. 
	nop			;1eac	00 	. 
	ld bc,0feffh		;1ead	01 ff fe 	. . . 
	dec a			;1eb0	3d 	= 
	ld a,(de)			;1eb1	1a 	. 
	nop			;1eb2	00 	. 
	inc b			;1eb3	04 	. 
	nop			;1eb4	00 	. 
	nop			;1eb5	00 	. 
	ld bc,07effh		;1eb6	01 ff 7e 	. . ~ 
	dec a			;1eb9	3d 	= 
	ld a,(de)			;1eba	1a 	. 
	nop			;1ebb	00 	. 
	inc b			;1ebc	04 	. 
	nop			;1ebd	00 	. 
	nop			;1ebe	00 	. 
	ld bc,0feffh		;1ebf	01 ff fe 	. . . 
	inc a			;1ec2	3c 	< 
	jr l1ec5h		;1ec3	18 00 	. . 
l1ec5h:
	inc b			;1ec5	04 	. 
	nop			;1ec6	00 	. 
	nop			;1ec7	00 	. 
	ex af,af'			;1ec8	08 	. 
	rst 38h			;1ec9	ff 	. 
	jp 0f3e3h		;1eca	c3 e3 f3 	. . . 
	nop			;1ecd	00 	. 
	ld bc,0c3ffh		;1ece	01 ff c3 	. . . 
	di			;1ed1	f3 	. 
	ei			;1ed2	fb 	. 
	nop			;1ed3	00 	. 
	add hl,bc			;1ed4	09 	. 
	rst 38h			;1ed5	ff 	. 
	add a,e			;1ed6	83 	. 
	ex (sp),hl			;1ed7	e3 	. 
	di			;1ed8	f3 	. 
	nop			;1ed9	00 	. 
	ld bc,083ffh		;1eda	01 ff 83 	. . . 
	ex (sp),hl			;1edd	e3 	. 
	di			;1ede	f3 	. 
	nop			;1edf	00 	. 
	add hl,bc			;1ee0	09 	. 
	rst 38h			;1ee1	ff 	. 
	jp 0fbf3h		;1ee2	c3 f3 fb 	. . . 
	nop			;1ee5	00 	. 
	dec b			;1ee6	05 	. 
	rst 38h			;1ee7	ff 	. 
	ld bc,l0502h		;1ee8	01 02 05 	. . . 
	ld a,(de)			;1eeb	1a 	. 
	nop			;1eec	00 	. 
	dec b			;1eed	05 	. 
	nop			;1eee	00 	. 
	add a,b			;1eef	80 	. 
	ld b,b			;1ef0	40 	@ 
	jr nz,l1ef3h		;1ef1	20 00 	  . 
l1ef3h:
	inc b			;1ef3	04 	. 
	nop			;1ef4	00 	. 
	ld (bc),a			;1ef5	02 	. 
	dec b			;1ef6	05 	. 
	ld a,(bc)			;1ef7	0a 	. 
	nop			;1ef8	00 	. 
	rlca			;1ef9	07 	. 
	nop			;1efa	00 	. 
	add a,b			;1efb	80 	. 
	nop			;1efc	00 	. 
	dec b			;1efd	05 	. 
	nop			;1efe	00 	. 
	ex af,af'			;1eff	08 	. 
l1f00h:
	inc d			;1f00	14 	. 
	ld hl,(l0051h)		;1f01	2a 51 00 	* Q . 
	ld a,(bc)			;1f04	0a 	. 
	nop			;1f05	00 	. 
	rst 38h			;1f06	ff 	. 
l1f07h:
	ld bc,l00ffh		;1f07	01 ff 00 	. . . 
	ld bc,l0f03h		;1f0a	01 03 0f 	. . . 
	nop			;1f0d	00 	. 
	inc bc			;1f0e	03 	. 
l1f0fh:
	rst 38h			;1f0f	ff 	. 
	ret nz			;1f10	c0 	. 
	rst 38h			;1f11	ff 	. 
	ret po			;1f12	e0 	. 
	ret m			;1f13	f8 	. 
	cp 000h		;1f14	fe 00 	. . 
	inc bc			;1f16	03 	. 
	rst 38h			;1f17	ff 	. 
	rst 38h			;1f18	ff 	. 
	nop			;1f19	00 	. 
	ld (bc),a			;1f1a	02 	. 
	ld b,01fh		;1f1b	06 1f 	. . 
	nop			;1f1d	00 	. 
	inc bc			;1f1e	03 	. 
	rst 38h			;1f1f	ff 	. 
	nop			;1f20	00 	. 
	inc b			;1f21	04 	. 
	nop			;1f22	00 	. 
	inc bc			;1f23	03 	. 
	nop			;1f24	00 	. 
	inc bc			;1f25	03 	. 
	rst 38h			;1f26	ff 	. 
	inc bc			;1f27	03 	. 
	rlca			;1f28	07 	. 
	rra			;1f29	1f 	. 
	ld a,a			;1f2a	7f 	 
	nop			;1f2b	00 	. 
	inc b			;1f2c	04 	. 
	rst 38h			;1f2d	ff 	. 
	nop			;1f2e	00 	. 
	dec b			;1f2f	05 	. 
	nop			;1f30	00 	. 
	jr nz,l1f63h		;1f31	20 30 	  0 
	jr l1f35h		;1f33	18 00 	. . 
l1f35h:
	rlca			;1f35	07 	. 
	nop			;1f36	00 	. 
	jr nz,l1f39h		;1f37	20 00 	  . 
l1f39h:
	inc bc			;1f39	03 	. 
	nop			;1f3a	00 	. 
	ld (bc),a			;1f3b	02 	. 
	adc a,h			;1f3c	8c 	. 
	ld (hl),b			;1f3d	70 	p 
	jr l1f4ch		;1f3e	18 0c 	. . 
	ret m			;1f40	f8 	. 
	cp 000h		;1f41	fe 00 	. . 
	rlca			;1f43	07 	. 
	rst 38h			;1f44	ff 	. 
	cp 0ffh		;1f45	fe ff 	. . 
l1f47h:
	call m,l0400h		;1f47	fc 00 04 	. . . 
	rst 38h			;1f4a	ff 	. 
	nop			;1f4b	00 	. 
l1f4ch:
	ex af,af'			;1f4c	08 	. 
	nop			;1f4d	00 	. 
	rst 38h			;1f4e	ff 	. 
	add a,b			;1f4f	80 	. 
	nop			;1f50	00 	. 
	ld b,000h		;1f51	06 00 	. . 
	nop			;1f53	00 	. 
	inc bc			;1f54	03 	. 
	rst 38h			;1f55	ff 	. 
	nop			;1f56	00 	. 
	inc bc			;1f57	03 	. 
	call m,0feffh		;1f58	fc ff fe 	. . . 
	nop			;1f5b	00 	. 
	inc bc			;1f5c	03 	. 
	rst 38h			;1f5d	ff 	. 
	ccf			;1f5e	3f 	? 
	rlca			;1f5f	07 	. 
	ld bc,l1200h		;1f60	01 00 12 	. . . 
l1f63h:
	nop			;1f63	00 	. 
	nop			;1f64	00 	. 
	ex af,af'			;1f65	08 	. 
	rst 38h			;1f66	ff 	. 
	nop			;1f67	00 	. 
	ld bc,l0600h		;1f68	01 00 06 	. . . 
	adc a,a			;1f6b	8f 	. 
	adc a,c			;1f6c	89 	. 
	defb 0fdh,000h,003h	;illegal sequence		;1f6d	fd 00 03 	. . . 
	rst 38h			;1f70	ff 	. 
	jr nz,l1f73h		;1f71	20 00 	  . 
l1f73h:
	rrca			;1f73	0f 	. 
	nop			;1f74	00 	. 
	nop			;1f75	00 	. 
	inc b			;1f76	04 	. 
	rst 38h			;1f77	ff 	. 
	nop			;1f78	00 	. 
	inc b			;1f79	04 	. 
	ld a,a			;1f7a	7f 	 
	ld bc,l000fh		;1f7b	01 0f 00 	. . . 
	ld b,0ffh		;1f7e	06 ff 	. . 
	nop			;1f80	00 	. 
	ld bc,l0100h		;1f81	01 00 01 	. . . 
	nop			;1f84	00 	. 
	rlca			;1f85	07 	. 
	nop			;1f86	00 	. 
	ld b,b			;1f87	40 	@ 
	jr nz,l1f8ah		;1f88	20 00 	  . 
l1f8ah:
	inc bc			;1f8a	03 	. 
	djnz $+34		;1f8b	10 20 	.   
	ld h,b			;1f8d	60 	` 
	ld c,00fh		;1f8e	0e 0f 	. . 
	ccf			;1f90	3f 	? 
	nop			;1f91	00 	. 
	dec b			;1f92	05 	. 
	rst 38h			;1f93	ff 	. 
	jr nc,l1fd2h		;1f94	30 3c 	0 < 
	nop			;1f96	00 	. 
	ld b,0ffh		;1f97	06 ff 	. . 
	rlca			;1f99	07 	. 
	inc bc			;1f9a	03 	. 
	rra			;1f9b	1f 	. 
	nop			;1f9c	00 	. 
	dec b			;1f9d	05 	. 
	rst 38h			;1f9e	ff 	. 
	rlca			;1f9f	07 	. 
	rst 38h			;1fa0	ff 	. 
	cp 000h		;1fa1	fe 00 	. . 
	dec b			;1fa3	05 	. 
	rst 38h			;1fa4	ff 	. 
	nop			;1fa5	00 	. 
	dec b			;1fa6	05 	. 
	nop			;1fa7	00 	. 
	ld (bc),a			;1fa8	02 	. 
	inc e			;1fa9	1c 	. 
	ld (hl),d			;1faa	72 	r 
	nop			;1fab	00 	. 
	ld b,000h		;1fac	06 00 	. . 
	inc b			;1fae	04 	. 
	ex af,af'			;1faf	08 	. 
	nop			;1fb0	00 	. 
	ex af,af'			;1fb1	08 	. 
	rst 38h			;1fb2	ff 	. 
	ex af,af'			;1fb3	08 	. 
	rst 38h			;1fb4	ff 	. 
	djnz l1f47h		;1fb5	10 90 	. . 
	ld a,b			;1fb7	78 	x 
	nop			;1fb8	00 	. 
	ex af,af'			;1fb9	08 	. 
	nop			;1fba	00 	. 
	ld bc,l02ffh		;1fbb	01 ff 02 	. . . 
	nop			;1fbe	00 	. 
	inc b			;1fbf	04 	. 
	nop			;1fc0	00 	. 
	ret po			;1fc1	e0 	. 
	inc e			;1fc2	1c 	. 
	ld (bc),a			;1fc3	02 	. 
	ld bc,l0804h		;1fc4	01 04 08 	. . . 
	nop			;1fc7	00 	. 
	ld b,000h		;1fc8	06 00 	. . 
	ld bc,l2a00h		;1fca	01 00 2a 	. . * 
	nop			;1fcd	00 	. 
	inc c			;1fce	0c 	. 
	ld (bc),a			;1fcf	02 	. 
	nop			;1fd0	00 	. 
	inc bc			;1fd1	03 	. 
l1fd2h:
	ld bc,sub_0300h		;1fd2	01 00 03 	. . . 
	rra			;1fd5	1f 	. 
	nop			;1fd6	00 	. 
	dec b			;1fd7	05 	. 
	rst 38h			;1fd8	ff 	. 
	nop			;1fd9	00 	. 
	ld a,(bc)			;1fda	0a 	. 
	nop			;1fdb	00 	. 
	ret p			;1fdc	f0 	. 
	call m,sub_0500h		;1fdd	fc 00 05 	. . . 
	rst 38h			;1fe0	ff 	. 
	ccf			;1fe1	3f 	? 
	rra			;1fe2	1f 	. 
	rrca			;1fe3	0f 	. 
	rlca			;1fe4	07 	. 
	rst 38h			;1fe5	ff 	. 
	ld b,001h		;1fe6	06 01 	. . 
	nop			;1fe8	00 	. 
	ld bc,0f0ffh		;1fe9	01 ff f0 	. . . 
	ret nz			;1fec	c0 	. 
	add a,b			;1fed	80 	. 
	nop			;1fee	00 	. 
	inc c			;1fef	0c 	. 
	nop			;1ff0	00 	. 
	rst 38h			;1ff1	ff 	. 
	add a,b			;1ff2	80 	. 
	nop			;1ff3	00 	. 
	inc bc			;1ff4	03 	. 
	ld b,b			;1ff5	40 	@ 
	add a,b			;1ff6	80 	. 
	rst 38h			;1ff7	ff 	. 
	nop			;1ff8	00 	. 
	nop			;1ff9	00 	. 
	ld bc,07fffh		;1ffa	01 ff 7f 	. .  
	rra			;1ffd	1f 	. 
	rrca			;1ffe	0f 	. 
l1fffh:
	rlca			;1fff	07 	. 
l2000h:
	ld c,0ffh		;2000	0e ff 	. . 
	nop			;2002	00 	. 
	nop			;2003	00 	. 
	ld bc,0f0ffh		;2004	01 ff f0 	. . . 
	ret nz			;2007	c0 	. 
	add a,b			;2008	80 	. 
	nop			;2009	00 	. 
	rrca			;200a	0f 	. 
	nop			;200b	00 	. 
	djnz $+34		;200c	10 20 	.   
	rst 38h			;200e	ff 	. 
	ld b,b			;200f	40 	@ 
	add a,b			;2010	80 	. 
	nop			;2011	00 	. 
	dec c			;2012	0d 	. 
	nop			;2013	00 	. 
	rst 38h			;2014	ff 	. 
	ex af,af'			;2015	08 	. 
	inc c			;2016	0c 	. 
	nop			;2017	00 	. 
	ex af,af'			;2018	08 	. 
	nop			;2019	00 	. 
	nop			;201a	00 	. 
	inc bc			;201b	03 	. 
	inc b			;201c	04 	. 
	nop			;201d	00 	. 
	dec hl			;201e	2b 	+ 
	nop			;201f	00 	. 
	ld bc,sub_0300h		;2020	01 00 03 	. . . 
	nop			;2023	00 	. 
	nop			;2024	00 	. 
	inc bc			;2025	03 	. 
	ld b,b			;2026	40 	@ 
	ret nz			;2027	c0 	. 
	nop			;2028	00 	. 
	inc b			;2029	04 	. 
	nop			;202a	00 	. 
	ccf			;202b	3f 	? 
	nop			;202c	00 	. 
	ld c,0ffh		;202d	0e ff 	. . 
	call m,0f8ffh		;202f	fc ff f8 	. . . 
	nop			;2032	00 	. 
	dec b			;2033	05 	. 
	rst 38h			;2034	ff 	. 
	ld a,a			;2035	7f 	 
	nop			;2036	00 	. 
	inc bc			;2037	03 	. 
	ccf			;2038	3f 	? 
	sbc a,a			;2039	9f 	. 
	rst 8			;203a	cf 	. 
	rst 0			;203b	c7 	. 
	rst 38h			;203c	ff 	. 
	rst 38h			;203d	ff 	. 
	rst 38h			;203e	ff 	. 
	ld a,a			;203f	7f 	 
	nop			;2040	00 	. 
	inc bc			;2041	03 	. 
	rst 38h			;2042	ff 	. 
	ret p			;2043	f0 	. 
	rst 0			;2044	c7 	. 
	pop bc			;2045	c1 	. 
	jp l00a7h		;2046	c3 a7 00 	. . . 
	inc bc			;2049	03 	. 
	rst 38h			;204a	ff 	. 
	rst 30h			;204b	f7 	. 
	nop			;204c	00 	. 
	ld bc,l07ffh		;204d	01 ff 07 	. . . 
	inc bc			;2050	03 	. 
	add a,e			;2051	83 	. 
	rst 38h			;2052	ff 	. 
	pop bc			;2053	c1 	. 
	pop hl			;2054	e1 	. 
	pop af			;2055	f1 	. 
	ld sp,hl			;2056	f9 	. 
	nop			;2057	00 	. 
	inc b			;2058	04 	. 
	pop af			;2059	f1 	. 
	rst 38h			;205a	ff 	. 
	defb 0fdh,0fch,0ffh	;illegal sequence		;205b	fd fc ff 	. . . 
	rst 38h			;205e	ff 	. 
	cp 0efh		;205f	fe ef 	. . 
	nop			;2061	00 	. 
	ld bc,0fcffh		;2062	01 ff fc 	. . . 
	ret m			;2065	f8 	. 
	ret p			;2066	f0 	. 
	sbc a,0ffh		;2067	de ff 	. . 
	cp 000h		;2069	fe 00 	. . 
	ld bc,00dffh		;206b	01 ff 0d 	. . . 
	rst 38h			;206e	ff 	. 
	rrca			;206f	0f 	. 
	daa			;2070	27 	' 
	ret m			;2071	f8 	. 
	cp 000h		;2072	fe 00 	. . 
	ld b,0ffh		;2074	06 ff 	. . 
	rra			;2076	1f 	. 
	rrca			;2077	0f 	. 
	adc a,a			;2078	8f 	. 
	call 0efceh		;2079	cd ce ef 	. . . 
	nop			;207c	00 	. 
	inc bc			;207d	03 	. 
	rst 38h			;207e	ff 	. 
	ret m			;207f	f8 	. 
	or b			;2080	b0 	. 
	call m,l0100h		;2081	fc 00 01 	. . . 
	rst 38h			;2084	ff 	. 
	cp a			;2085	bf 	. 
	rst 28h			;2086	ef 	. 
	nop			;2087	00 	. 
	ld bc,0f0ffh		;2088	01 ff f0 	. . . 
	nop			;208b	00 	. 
	ld bc,l0f00h		;208c	01 00 0f 	. . . 
	nop			;208f	00 	. 
	inc bc			;2090	03 	. 
	rst 38h			;2091	ff 	. 
	cp 000h		;2092	fe 00 	. . 
	ld bc,0e0ffh		;2094	01 ff e0 	. . . 
	adc a,a			;2097	8f 	. 
	nop			;2098	00 	. 
	inc bc			;2099	03 	. 
	rst 38h			;209a	ff 	. 
	ld a,a			;209b	7f 	 
	rst 20h			;209c	e7 	. 
	nop			;209d	00 	. 
	ld bc,0fbffh		;209e	01 ff fb 	. . . 
	nop			;20a1	00 	. 
	inc b			;20a2	04 	. 
	rst 38h			;20a3	ff 	. 
	cp 0fch		;20a4	fe fc 	. . 
	ret p			;20a6	f0 	. 
	rst 38h			;20a7	ff 	. 
	rra			;20a8	1f 	. 
	inc bc			;20a9	03 	. 
	nop			;20aa	00 	. 
	inc bc			;20ab	03 	. 
	rst 38h			;20ac	ff 	. 
	ccf			;20ad	3f 	? 
	call m,0c7c0h		;20ae	fc c0 c7 	. . . 
	rst 18h			;20b1	df 	. 
	nop			;20b2	00 	. 
	ld b,0ffh		;20b3	06 ff 	. . 
	ccf			;20b5	3f 	? 
	rst 18h			;20b6	df 	. 
	rst 28h			;20b7	ef 	. 
	rst 30h			;20b8	f7 	. 
	ei			;20b9	fb 	. 
	ld a,(iy-004h)		;20ba	fd 7e fc 	. ~ . 
	ei			;20bd	fb 	. 
	rst 30h			;20be	f7 	. 
	rst 28h			;20bf	ef 	. 
	rst 18h			;20c0	df 	. 
	cp a			;20c1	bf 	. 
	ld a,a			;20c2	7f 	 
	ld a,(hl)			;20c3	7e 	~ 
	ld a,000h		;20c4	3e 00 	> . 
	inc b			;20c6	04 	. 
	rra			;20c7	1f 	. 
	nop			;20c8	00 	. 
	inc bc			;20c9	03 	. 
	rst 38h			;20ca	ff 	. 
	call m,l0400h		;20cb	fc 00 04 	. . . 
	ret m			;20ce	f8 	. 
	nop			;20cf	00 	. 
	rlca			;20d0	07 	. 
	rst 38h			;20d1	ff 	. 
	ret p			;20d2	f0 	. 
	add a,b			;20d3	80 	. 
	nop			;20d4	00 	. 
	inc bc			;20d5	03 	. 
	nop			;20d6	00 	. 
	ld h,b			;20d7	60 	` 
	pop af			;20d8	f1 	. 
	sub c			;20d9	91 	. 
	cp e			;20da	bb 	. 
	nop			;20db	00 	. 
	inc bc			;20dc	03 	. 
	rst 38h			;20dd	ff 	. 
	nop			;20de	00 	. 
	nop			;20df	00 	. 
	nop			;20e0	00 	. 
	cp b			;20e1	b8 	. 
	nop			;20e2	00 	. 
	nop			;20e3	00 	. 
	ex af,af'			;20e4	08 	. 
	rst 38h			;20e5	ff 	. 
	nop			;20e6	00 	. 
	dec bc			;20e7	0b 	. 
	nop			;20e8	00 	. 
	rrca			;20e9	0f 	. 
	ccf			;20ea	3f 	? 
	ld a,a			;20eb	7f 	 
	rst 38h			;20ec	ff 	. 
	rst 38h			;20ed	ff 	. 
	nop			;20ee	00 	. 
	inc bc			;20ef	03 	. 
	nop			;20f0	00 	. 
	inc bc			;20f1	03 	. 
	rlca			;20f2	07 	. 
	rrca			;20f3	0f 	. 
	rra			;20f4	1f 	. 
	ccf			;20f5	3f 	? 
	inc bc			;20f6	03 	. 
	ccf			;20f7	3f 	? 
	nop			;20f8	00 	. 
	ld b,0ffh		;20f9	06 ff 	. . 
	nop			;20fb	00 	. 
	inc bc			;20fc	03 	. 
	nop			;20fd	00 	. 
	ret nz			;20fe	c0 	. 
l20ffh:
	ret p			;20ff	f0 	. 
l2100h:
	call m,sub_00feh		;2100	fc fe 00 	. . . 
	ld de,087ffh		;2103	11 ff 87 	. . . 
	rst 18h			;2106	df 	. 
	nop			;2107	00 	. 
	ld b,0ffh		;2108	06 ff 	. . 
	nop			;210a	00 	. 
	dec b			;210b	05 	. 
	nop			;210c	00 	. 
	inc bc			;210d	03 	. 
	rra			;210e	1f 	. 
	nop			;210f	00 	. 
	ld bc,l00ffh		;2110	01 ff 00 	. . . 
	dec b			;2113	05 	. 
	nop			;2114	00 	. 
	ret nz			;2115	c0 	. 
	ret m			;2116	f8 	. 
	cp 000h		;2117	fe 00 	. . 
	djnz $+1		;2119	10 ff 	. . 
	ld bc,l00ffh		;211b	01 ff 00 	. . . 
	ld bc,0fc02h		;211e	01 02 fc 	. . . 
	ret m			;2121	f8 	. 
	jr l215ch		;2122	18 38 	. 8 
	jr nc,$+114		;2124	30 70 	0 p 
	ret p			;2126	f0 	. 
	nop			;2127	00 	. 
	inc b			;2128	04 	. 
	ret po			;2129	e0 	. 
	add a,b			;212a	80 	. 
	ret po			;212b	e0 	. 
l212ch:
	ret p			;212c	f0 	. 
	ret m			;212d	f8 	. 
	rst 38h			;212e	ff 	. 
	call m,sub_00feh		;212f	fc fe 00 	. . . 
	ld bc,060ffh		;2132	01 ff 60 	. . ` 
	ld (hl),b			;2135	70 	p 
	rst 38h			;2136	ff 	. 
	jr c,l2158h		;2137	38 1f 	8 . 
	rrca			;2139	0f 	. 
	jr c,l212ch		;213a	38 f0 	8 . 
	rst 38h			;213c	ff 	. 
	ld a,a			;213d	7f 	 
	nop			;213e	00 	. 
	ld bc,0f8ffh		;213f	01 ff f8 	. . . 
	ld h,c			;2142	61 	a 
	inc bc			;2143	03 	. 
	rlca			;2144	07 	. 
	rrca			;2145	0f 	. 
	rst 38h			;2146	ff 	. 
	rst 38h			;2147	ff 	. 
	ld a,a			;2148	7f 	 
	nop			;2149	00 	. 
	dec b			;214a	05 	. 
l214bh:
	rst 38h			;214b	ff 	. 
	rra			;214c	1f 	. 
	rst 38h			;214d	ff 	. 
	ccf			;214e	3f 	? 
	rst 38h			;214f	ff 	. 
	ld a,a			;2150	7f 	 
	nop			;2151	00 	. 
	ld bc,0f8ffh		;2152	01 ff f8 	. . . 
	ret nz			;2155	c0 	. 
	rst 38h			;2156	ff 	. 
	rst 38h			;2157	ff 	. 
l2158h:
	call m,0c0f0h		;2158	fc f0 c0 	. . . 
	nop			;215b	00 	. 
l215ch:
	inc bc			;215c	03 	. 
	nop			;215d	00 	. 
	nop			;215e	00 	. 
	dec bc			;215f	0b 	. 
	rst 38h			;2160	ff 	. 
	ret po			;2161	e0 	. 
	ret nz			;2162	c0 	. 
	nop			;2163	00 	. 
	inc bc			;2164	03 	. 
	add a,b			;2165	80 	. 
	rst 18h			;2166	df 	. 
	nop			;2167	00 	. 
	rlca			;2168	07 	. 
	rra			;2169	1f 	. 
	rst 38h			;216a	ff 	. 
	add a,b			;216b	80 	. 
	nop			;216c	00 	. 
	inc bc			;216d	03 	. 
	ret nz			;216e	c0 	. 
	ret po			;216f	e0 	. 
	ret p			;2170	f0 	. 
	nop			;2171	00 	. 
	ld bc,0c3ffh		;2172	01 ff c3 	. . . 
	and b			;2175	a0 	. 
	rst 38h			;2176	ff 	. 
	ret nz			;2177	c0 	. 
	ld b,b			;2178	40 	@ 
	rst 38h			;2179	ff 	. 
	jr nz,l218ch		;217a	20 10 	  . 
	ret po			;217c	e0 	. 
	ld b,b			;217d	40 	@ 
	inc a			;217e	3c 	< 
	ccf			;217f	3f 	? 
	nop			;2180	00 	. 
	inc b			;2181	04 	. 
	rra			;2182	1f 	. 
	djnz l219dh		;2183	10 18 	. . 
	nop			;2185	00 	. 
	inc bc			;2186	03 	. 
	rra			;2187	1f 	. 
	rst 38h			;2188	ff 	. 
	jr nz,l214bh		;2189	20 c0 	  . 
	rra			;218b	1f 	. 
l218ch:
	ccf			;218c	3f 	? 
	ld a,a			;218d	7f 	 
	rst 18h			;218e	df 	. 
	add a,e			;218f	83 	. 
	nop			;2190	00 	. 
	inc bc			;2191	03 	. 
	nop			;2192	00 	. 
	nop			;2193	00 	. 
	ld bc,l3fffh		;2194	01 ff 3f 	. . ? 
	rra			;2197	1f 	. 
	rrca			;2198	0f 	. 
	add a,a			;2199	87 	. 
	jp 0e0e1h		;219a	c3 e1 e0 	. . . 
l219dh:
	add a,b			;219d	80 	. 
	ret nz			;219e	c0 	. 
	rst 38h			;219f	ff 	. 
	ret po			;21a0	e0 	. 
	rst 38h			;21a1	ff 	. 
	ret p			;21a2	f0 	. 
	rst 38h			;21a3	ff 	. 
	ret m			;21a4	f8 	. 
	nop			;21a5	00 	. 
	inc bc			;21a6	03 	. 
	ret p			;21a7	f0 	. 
	rst 38h			;21a8	ff 	. 
	ret m			;21a9	f8 	. 
	ld a,b			;21aa	78 	x 
	jr c,l21c5h		;21ab	38 18 	8 . 
	ld a,h			;21ad	7c 	| 
	inc a			;21ae	3c 	< 
	rst 38h			;21af	ff 	. 
	ld e,0ffh		;21b0	1e ff 	. . 
	ld c,004h		;21b2	0e 04 	. . 
	nop			;21b4	00 	. 
	ld bc,0f800h		;21b5	01 00 f8 	. . . 
	ret po			;21b8	e0 	. 
	nop			;21b9	00 	. 
	inc bc			;21ba	03 	. 
	add a,b			;21bb	80 	. 
	ret nz			;21bc	c0 	. 
	sbc a,a			;21bd	9f 	. 
	nop			;21be	00 	. 
	ld bc,07fffh		;21bf	01 ff 7f 	. .  
	inc bc			;21c2	03 	. 
	nop			;21c3	00 	. 
	inc bc			;21c4	03 	. 
l21c5h:
	ld bc,0ff03h		;21c5	01 03 ff 	. . . 
	rst 38h			;21c8	ff 	. 
	cp a			;21c9	bf 	. 
	add a,b			;21ca	80 	. 
	nop			;21cb	00 	. 
	dec b			;21cc	05 	. 
	ld b,b			;21cd	40 	@ 
	rst 38h			;21ce	ff 	. 
	nop			;21cf	00 	. 
	rst 38h			;21d0	ff 	. 
	ld b,b			;21d1	40 	@ 
	jr nz,$+1		;21d2	20 ff 	  . 
	and b			;21d4	a0 	. 
	cp b			;21d5	b8 	. 
	add a,b			;21d6	80 	. 
	nop			;21d7	00 	. 
	inc bc			;21d8	03 	. 
	ret nz			;21d9	c0 	. 
	ret po			;21da	e0 	. 
	ret p			;21db	f0 	. 
	ld a,(hl)			;21dc	7e 	~ 
	ld a,a			;21dd	7f 	 
	scf			;21de	37 	7 
	nop			;21df	00 	. 
	inc bc			;21e0	03 	. 
	inc b			;21e1	04 	. 
	ex af,af'			;21e2	08 	. 
	rst 38h			;21e3	ff 	. 
	djnz l2246h		;21e4	10 60 	. ` 
	ret nz			;21e6	c0 	. 
	ret p			;21e7	f0 	. 
	nop			;21e8	00 	. 
	ld bc,0fbffh		;21e9	01 ff fb 	. . . 
	ret m			;21ec	f8 	. 
	inc a			;21ed	3c 	< 
	nop			;21ee	00 	. 
	inc bc			;21ef	03 	. 
	nop			;21f0	00 	. 
	nop			;21f1	00 	. 
	inc bc			;21f2	03 	. 
	ret po			;21f3	e0 	. 
	ret p			;21f4	f0 	. 
	ld (hl),b			;21f5	70 	p 
	jr c,l2217h		;21f6	38 1f 	8 . 
	rrca			;21f8	0f 	. 
	ld (hl),b			;21f9	70 	p 
	ret po			;21fa	e0 	. 
	add a,b			;21fb	80 	. 
	ret nz			;21fc	c0 	. 
	ret po			;21fd	e0 	. 
	cp c			;21fe	b9 	. 
	xor 03ch		;21ff	ee 3c 	. < 
	ld b,b			;2201	40 	@ 
	nop			;2202	00 	. 
	inc b			;2203	04 	. 
	add a,b			;2204	80 	. 
	nop			;2205	00 	. 
	inc bc			;2206	03 	. 
	nop			;2207	00 	. 
	nop			;2208	00 	. 
	inc bc			;2209	03 	. 
	rst 38h			;220a	ff 	. 
	ld a,a			;220b	7f 	 
	ccf			;220c	3f 	? 
	inc e			;220d	1c 	. 
	jr l2218h		;220e	18 08 	. . 
	nop			;2210	00 	. 
	inc b			;2211	04 	. 
	rst 38h			;2212	ff 	. 
	rst 38h			;2213	ff 	. 
	ccf			;2214	3f 	? 
	ld e,00ch		;2215	1e 0c 	. . 
l2217h:
	rst 38h			;2217	ff 	. 
l2218h:
	inc b			;2218	04 	. 
	inc c			;2219	0c 	. 
	inc e			;221a	1c 	. 
	rst 38h			;221b	ff 	. 
	ret m			;221c	f8 	. 
	call nz,0ff02h		;221d	c4 02 ff 	. . . 
	call po,sub_0500h		;2220	e4 00 05 	. . . 
	jp po,l00f4h		;2223	e2 f4 00 	. . . 
	inc b			;2226	04 	. 
	add a,c			;2227	81 	. 
	add a,d			;2228	82 	. 
	add a,0fch		;2229	c6 fc 	. . 
	ret m			;222b	f8 	. 
	call c,0f0f8h		;222c	dc f8 f0 	. . . 
	ex af,af'			;222f	08 	. 
	inc b			;2230	04 	. 
	nop			;2231	00 	. 
	inc bc			;2232	03 	. 
	ld (bc),a			;2233	02 	. 
	nop			;2234	00 	. 
	djnz l2237h		;2235	10 00 	. . 
l2237h:
	ld (bc),a			;2237	02 	. 
	rst 38h			;2238	ff 	. 
	ld bc,l00ffh		;2239	01 ff 00 	. . . 
	rst 38h			;223c	ff 	. 
	add a,b			;223d	80 	. 
	add a,c			;223e	81 	. 
	nop			;223f	00 	. 
	inc bc			;2240	03 	. 
	nop			;2241	00 	. 
	nop			;2242	00 	. 
	inc bc			;2243	03 	. 
	add a,b			;2244	80 	. 
	rst 38h			;2245	ff 	. 
l2246h:
	ret nz			;2246	c0 	. 
	nop			;2247	00 	. 
	djnz l224ah		;2248	10 00 	. . 
l224ah:
	pop bc			;224a	c1 	. 
	jp 0effeh		;224b	c3 fe ef 	. . . 
	ret p			;224e	f0 	. 
	nop			;224f	00 	. 
	inc bc			;2250	03 	. 
	nop			;2251	00 	. 
	ret nz			;2252	c0 	. 
	rst 38h			;2253	ff 	. 
	add a,b			;2254	80 	. 
	nop			;2255	00 	. 
	dec b			;2256	05 	. 
	nop			;2257	00 	. 
	add a,c			;2258	81 	. 
	jp nz,0f9e4h		;2259	c2 e4 f9 	. . . 
	nop			;225c	00 	. 
	inc b			;225d	04 	. 
	rst 38h			;225e	ff 	. 
	add a,c			;225f	81 	. 
	ld b,d			;2260	42 	B 
	call po,sub_00f9h		;2261	e4 f9 00 	. . . 
	inc b			;2264	04 	. 
	rst 38h			;2265	ff 	. 
	add a,c			;2266	81 	. 
	jp nz,0f9e4h		;2267	c2 e4 f9 	. . . 
	nop			;226a	00 	. 
	inc b			;226b	04 	. 
	rst 38h			;226c	ff 	. 
	add a,c			;226d	81 	. 
	ld b,e			;226e	43 	C 
	rst 20h			;226f	e7 	. 
	nop			;2270	00 	. 
	dec b			;2271	05 	. 
	rst 38h			;2272	ff 	. 
	add a,c			;2273	81 	. 
	ld b,d			;2274	42 	B 
	call po,sub_00f9h		;2275	e4 f9 00 	. . . 
	inc b			;2278	04 	. 
	rst 38h			;2279	ff 	. 
	add a,c			;227a	81 	. 
	ld b,d			;227b	42 	B 
	call po,sub_00f9h		;227c	e4 f9 00 	. . . 
	inc b			;227f	04 	. 
	rst 38h			;2280	ff 	. 
	add a,c			;2281	81 	. 
	jp nz,0f9e4h		;2282	c2 e4 f9 	. . . 
	nop			;2285	00 	. 
	inc b			;2286	04 	. 
	rst 38h			;2287	ff 	. 
	add a,c			;2288	81 	. 
	ld b,e			;2289	43 	C 
	rst 20h			;228a	e7 	. 
	nop			;228b	00 	. 
	dec b			;228c	05 	. 
	rst 38h			;228d	ff 	. 
	nop			;228e	00 	. 
	inc bc			;228f	03 	. 
	rra			;2290	1f 	. 
	rrca			;2291	0f 	. 
	nop			;2292	00 	. 
	inc bc			;2293	03 	. 
	rra			;2294	1f 	. 
	rrca			;2295	0f 	. 
	nop			;2296	00 	. 
	inc bc			;2297	03 	. 
	add a,d			;2298	82 	. 
	call m,0ff82h		;2299	fc 82 ff 	. . . 
	ld (bc),a			;229c	02 	. 
	call m,0ff3eh		;229d	fc 3e ff 	. > . 
	inc a			;22a0	3c 	< 
	rra			;22a1	1f 	. 
	ld a,0ffh		;22a2	3e ff 	> . 
	inc a			;22a4	3c 	< 
	rra			;22a5	1f 	. 
	nop			;22a6	00 	. 
	inc bc			;22a7	03 	. 
	ld (bc),a			;22a8	02 	. 
	call m,sub_0300h		;22a9	fc 00 03 	. . . 
	ld (bc),a			;22ac	02 	. 
	call m,sub_3e3ch		;22ad	fc 3c 3e 	. < > 
	rst 38h			;22b0	ff 	. 
	ccf			;22b1	3f 	? 
	ld a,b			;22b2	78 	x 
	ld a,(hl)			;22b3	7e 	~ 
	rst 38h			;22b4	ff 	. 
	ld a,a			;22b5	7f 	 
	rst 38h			;22b6	ff 	. 
	ld (bc),a			;22b7	02 	. 
	add a,d			;22b8	82 	. 
	call m,l02ffh		;22b9	fc ff 02 	. . . 
	add a,d			;22bc	82 	. 
	jp po,l0100h		;22bd	e2 00 01 	. . . 
	rst 38h			;22c0	ff 	. 
	cp 0fch		;22c1	fe fc 	. . 
	ld sp,hl			;22c3	f9 	. 
	nop			;22c4	00 	. 
	dec c			;22c5	0d 	. 
	rst 38h			;22c6	ff 	. 
	ld sp,iy		;22c7	fd f9 	. . 
	nop			;22c9	00 	. 
	ld c,0ffh		;22ca	0e ff 	. . 
	rst 30h			;22cc	f7 	. 
	rst 20h			;22cd	e7 	. 
	rst 8			;22ce	cf 	. 
	nop			;22cf	00 	. 
	inc b			;22d0	04 	. 
	rst 38h			;22d1	ff 	. 
	nop			;22d2	00 	. 
	jr nc,l22d5h		;22d3	30 00 	0 . 
l22d5h:
	jr nz,$+98		;22d5	20 60 	  ` 
	rst 38h			;22d7	ff 	. 
	ld b,b			;22d8	40 	@ 
	ld h,b			;22d9	60 	` 
	ld a,c			;22da	79 	y 
	ccf			;22db	3f 	? 
	nop			;22dc	00 	. 
	ld bc,l00ffh		;22dd	01 ff 00 	. . . 
	inc b			;22e0	04 	. 
	nop			;22e1	00 	. 
	add a,b			;22e2	80 	. 
	ret nz			;22e3	c0 	. 
	ret po			;22e4	e0 	. 
	ret p			;22e5	f0 	. 
	rst 38h			;22e6	ff 	. 
	ld bc,l0f03h		;22e7	01 03 0f 	. . . 
	sbc a,(hl)			;22ea	9e 	. 
	call m,sub_3f7ch		;22eb	fc 7c 3f 	. | ? 
	nop			;22ee	00 	. 
	inc bc			;22ef	03 	. 
	ret nz			;22f0	c0 	. 
	ret po			;22f1	e0 	. 
	ret p			;22f2	f0 	. 
	ld a,(hl)			;22f3	7e 	~ 
	ccf			;22f4	3f 	? 
	rlca			;22f5	07 	. 
	ld c,01ch		;22f6	0e 1c 	. . 
	nop			;22f8	00 	. 
	inc bc			;22f9	03 	. 
	jr nc,l2334h		;22fa	30 38 	0 8 
	rra			;22fc	1f 	. 
	rrca			;22fd	0f 	. 
	nop			;22fe	00 	. 
	ld b,000h		;22ff	06 00 	. . 
	ld bc,0e007h		;2301	01 07 e0 	. . . 
	ret nz			;2304	c0 	. 
	nop			;2305	00 	. 
	inc bc			;2306	03 	. 
	add a,b			;2307	80 	. 
	ret nz			;2308	c0 	. 
	add a,b			;2309	80 	. 
	ret po			;230a	e0 	. 
	ccf			;230b	3f 	? 
	rst 38h			;230c	ff 	. 
	ld a,a			;230d	7f 	 
	nop			;230e	00 	. 
	dec b			;230f	05 	. 
	rst 38h			;2310	ff 	. 
	cp 000h		;2311	fe 00 	. . 
	dec b			;2313	05 	. 
	rst 38h			;2314	ff 	. 
	ret p			;2315	f0 	. 
	ret po			;2316	e0 	. 
	ld a,(hl)			;2317	7e 	~ 
	ld a,a			;2318	7f 	 
	nop			;2319	00 	. 
	ld bc,0c3ffh		;231a	01 ff c3 	. . . 
	add a,c			;231d	81 	. 
	nop			;231e	00 	. 
	dec b			;231f	05 	. 
	nop			;2320	00 	. 
	add a,b			;2321	80 	. 
	ret nz			;2322	c0 	. 
	ret po			;2323	e0 	. 
	ld h,b			;2324	60 	` 
	jr nc,$+18		;2325	30 10 	0 . 
	nop			;2327	00 	. 
	inc b			;2328	04 	. 
	rst 38h			;2329	ff 	. 
	ld a,a			;232a	7f 	 
	ccf			;232b	3f 	? 
	inc de			;232c	13 	. 
	ret p			;232d	f0 	. 
	ret nz			;232e	c0 	. 
	add a,0cfh		;232f	c6 cf 	. . 
	call sub_0300h		;2331	cd 00 03 	. . . 
l2334h:
	rst 38h			;2334	ff 	. 
	ld bc,06070h		;2335	01 70 60 	. p ` 
	rst 38h			;2338	ff 	. 
	ret nz			;2339	c0 	. 
	rst 38h			;233a	ff 	. 
	add a,b			;233b	80 	. 
	rst 38h			;233c	ff 	. 
	nop			;233d	00 	. 
	ld c,007h		;233e	0e 07 	. . 
	inc bc			;2340	03 	. 
	nop			;2341	00 	. 
	inc bc			;2342	03 	. 
	ld bc,l00ffh		;2343	01 ff 00 	. . . 
	call m,0feffh		;2346	fc ff fe 	. . . 
	nop			;2349	00 	. 
	rlca			;234a	07 	. 
	rst 38h			;234b	ff 	. 
	ei			;234c	fb 	. 
	pop hl			;234d	e1 	. 
	nop			;234e	00 	. 
	inc b			;234f	04 	. 
	nop			;2350	00 	. 
	ld h,b			;2351	60 	` 
	inc bc			;2352	03 	. 
	ld bc,sub_0500h		;2353	01 00 05 	. . . 
	nop			;2356	00 	. 
	pop bc			;2357	c1 	. 
	pop hl			;2358	e1 	. 
	ld (hl),c			;2359	71 	q 
	nop			;235a	00 	. 
	inc bc			;235b	03 	. 
	ld a,b			;235c	78 	x 
	ret m			;235d	f8 	. 
	ret p			;235e	f0 	. 
	rst 38h			;235f	ff 	. 
	rst 38h			;2360	ff 	. 
	ld sp,hl			;2361	f9 	. 
	ret m			;2362	f8 	. 
	call m,0fff0h		;2363	fc f0 ff 	. . . 
	nop			;2366	00 	. 
	call m,0ffffh		;2367	fc ff ff 	. . . 
	ld a,a			;236a	7f 	 
	rrca			;236b	0f 	. 
	ld bc,l00ffh		;236c	01 ff 00 	. . . 
	rra			;236f	1f 	. 
	nop			;2370	00 	. 
	inc b			;2371	04 	. 
	rst 38h			;2372	ff 	. 
	ret po			;2373	e0 	. 
	rst 38h			;2374	ff 	. 
	nop			;2375	00 	. 
	nop			;2376	00 	. 
	ld bc,0feffh		;2377	01 ff fe 	. . . 
	ei			;237a	fb 	. 
	ex (sp),hl			;237b	e3 	. 
	rlca			;237c	07 	. 
	inc bc			;237d	03 	. 
	nop			;237e	00 	. 
	inc b			;237f	04 	. 
	nop			;2380	00 	. 
	ld (bc),a			;2381	02 	. 
	ld b,00eh		;2382	06 0e 	. . 
	nop			;2384	00 	. 
	inc bc			;2385	03 	. 
	rst 38h			;2386	ff 	. 
	add a,b			;2387	80 	. 
	rst 38h			;2388	ff 	. 
	nop			;2389	00 	. 
	rst 38h			;238a	ff 	. 
	ld (bc),a			;238b	02 	. 
	ld c,01fh		;238c	0e 1f 	. . 
	inc a			;238e	3c 	< 
	nop			;238f	00 	. 
	dec b			;2390	05 	. 
	rst 38h			;2391	ff 	. 
	ccf			;2392	3f 	? 
	ld bc,l0100h		;2393	01 00 01 	. . . 
	nop			;2396	00 	. 
	inc a			;2397	3c 	< 
	ld a,h			;2398	7c 	| 
	ld a,b			;2399	78 	x 
	rst 38h			;239a	ff 	. 
	ret m			;239b	f8 	. 
	call m,l030eh		;239c	fc 0e 03 	. . . 
	nop			;239f	00 	. 
	inc bc			;23a0	03 	. 
	nop			;23a1	00 	. 
	ld bc,0ff03h		;23a2	01 03 ff 	. . . 
	rlca			;23a5	07 	. 
	ld c,000h		;23a6	0e 00 	. . 
	inc bc			;23a8	03 	. 
	nop			;23a9	00 	. 
	ret m			;23aa	f8 	. 
	call m,09efeh		;23ab	fc fe 9e 	. . . 
	inc bc			;23ae	03 	. 
	ld c,00ch		;23af	0e 0c 	. . 
	rst 38h			;23b1	ff 	. 
	jr l23c4h		;23b2	18 10 	. . 
	nop			;23b4	00 	. 
	inc bc			;23b5	03 	. 
	nop			;23b6	00 	. 
	rst 38h			;23b7	ff 	. 
	inc bc			;23b8	03 	. 
	rlca			;23b9	07 	. 
	ld b,004h		;23ba	06 04 	. . 
	rst 38h			;23bc	ff 	. 
	ex af,af'			;23bd	08 	. 
	nop			;23be	00 	. 
	rlca			;23bf	07 	. 
	nop			;23c0	00 	. 
l23c1h:
	ld a,h			;23c1	7c 	| 
	cp 0ffh		;23c2	fe ff 	. . 
l23c4h:
	nop			;23c4	00 	. 
	add a,b			;23c5	80 	. 
	ld a,b			;23c6	78 	x 
	inc a			;23c7	3c 	< 
	ld c,0ffh		;23c8	0e ff 	. . 
	ld b,0c7h		;23ca	06 c7 	. . 
	add a,c			;23cc	81 	. 
	ld bc,sub_0500h		;23cd	01 00 05 	. . . 
	nop			;23d0	00 	. 
	rst 38h			;23d1	ff 	. 
	ld b,00ch		;23d2	06 0c 	. . 
	jr l23f6h		;23d4	18 20 	.   
	nop			;23d6	00 	. 
	dec b			;23d7	05 	. 
	nop			;23d8	00 	. 
	ld a,b			;23d9	78 	x 
	ld e,00fh		;23da	1e 0f 	. . 
	rst 38h			;23dc	ff 	. 
	inc bc			;23dd	03 	. 
	ld bc,0ffffh		;23de	01 ff ff 	. . . 
	ei			;23e1	fb 	. 
	call m,l0100h		;23e2	fc 00 01 	. . . 
	rst 38h			;23e5	ff 	. 
	ret po			;23e6	e0 	. 
	rst 38h			;23e7	ff 	. 
	nop			;23e8	00 	. 
	ld bc,l0400h		;23e9	01 00 04 	. . . 
	nop			;23ec	00 	. 
	rlca			;23ed	07 	. 
	ld bc,l0100h		;23ee	01 00 01 	. . . 
	nop			;23f1	00 	. 
	nop			;23f2	00 	. 
	inc b			;23f3	04 	. 
	rst 38h			;23f4	ff 	. 
	rrca			;23f5	0f 	. 
l23f6h:
	inc bc			;23f6	03 	. 
	rst 38h			;23f7	ff 	. 
	nop			;23f8	00 	. 
	ret nz			;23f9	c0 	. 
	ret m			;23fa	f8 	. 
	rst 38h			;23fb	ff 	. 
	rst 38h			;23fc	ff 	. 
	ld a,a			;23fd	7f 	 
	rst 38h			;23fe	ff 	. 
	rra			;23ff	1f 	. 
	rst 38h			;2400	ff 	. 
	ccf			;2401	3f 	? 
	nop			;2402	00 	. 
	ld bc,0f8ffh		;2403	01 ff f8 	. . . 
	ret po			;2406	e0 	. 
	ret m			;2407	f8 	. 
	sbc a,h			;2408	9c 	. 
	adc a,(hl)			;2409	8e 	. 
	add a,(hl)			;240a	86 	. 
	ld a,a			;240b	7f 	 
	jp 0ff83h		;240c	c3 83 ff 	. . . 
	ld bc,l0701h+2		;240f	01 03 07 	. . . 
	nop			;2412	00 	. 
	ld bc,0c700h		;2413	01 00 c7 	. . . 
	rst 20h			;2416	e7 	. 
	and 0e4h		;2417	e6 e4 	. . 
	ret po			;2419	e0 	. 
	ret nz			;241a	c0 	. 
	rst 38h			;241b	ff 	. 
	nop			;241c	00 	. 
	ret p			;241d	f0 	. 
	cp 0ffh		;241e	fe ff 	. . 
	rst 38h			;2420	ff 	. 
	ld a,a			;2421	7f 	 
	rst 38h			;2422	ff 	. 
	ccf			;2423	3f 	? 
	ld a,01fh		;2424	3e 1f 	> . 
	rst 38h			;2426	ff 	. 
	rst 38h			;2427	ff 	. 
	ret p			;2428	f0 	. 
	ret po			;2429	e0 	. 
	rst 38h			;242a	ff 	. 
	add a,b			;242b	80 	. 
	nop			;242c	00 	. 
	ld bc,0f800h		;242d	01 00 f8 	. . . 
	call m,sub_0e1eh		;2430	fc 1e 0e 	. . . 
	rst 38h			;2433	ff 	. 
	inc bc			;2434	03 	. 
	ld bc,0ff03h		;2435	01 03 ff 	. . . 
	nop			;2438	00 	. 
	inc e			;2439	1c 	. 
	rst 38h			;243a	ff 	. 
	ld a,a			;243b	7f 	 
	rst 38h			;243c	ff 	. 
	pop hl			;243d	e1 	. 
	ret nz			;243e	c0 	. 
	ld a,(hl)			;243f	7e 	~ 
	rrca			;2440	0f 	. 
	rlca			;2441	07 	. 
	rst 38h			;2442	ff 	. 
	nop			;2443	00 	. 
	jr c,$+50		;2444	38 30 	8 0 
	ld (hl),b			;2446	70 	p 
	nop			;2447	00 	. 
	ld bc,0c000h		;2448	01 00 c0 	. . . 
	ret p			;244b	f0 	. 
	ret m			;244c	f8 	. 
	inc a			;244d	3c 	< 
	rst 38h			;244e	ff 	. 
	inc e			;244f	1c 	. 
	ld e,0ffh		;2450	1e ff 	. . 
	ld (hl),b			;2452	70 	p 
	ld a,b			;2453	78 	x 
	jr c,l2494h		;2454	38 3e 	8 > 
	ld e,007h		;2456	1e 07 	. . 
	nop			;2458	00 	. 
	ld bc,l1e00h		;2459	01 00 1e 	. . . 
	rst 38h			;245c	ff 	. 
	ld a,07eh		;245d	3e 7e 	> ~ 
	call nz,0e004h		;245f	c4 04 e0 	. . . 
	rst 38h			;2462	ff 	. 
	nop			;2463	00 	. 
	rlca			;2464	07 	. 
	rra			;2465	1f 	. 
	inc a			;2466	3c 	< 
	jr nc,$+1		;2467	30 ff 	0 . 
	jr nz,$+1		;2469	20 ff 	  . 
	nop			;246b	00 	. 
	ret nz			;246c	c0 	. 
	ret p			;246d	f0 	. 
	ld a,b			;246e	78 	x 
	inc a			;246f	3c 	< 
	inc c			;2470	0c 	. 
	rst 38h			;2471	ff 	. 
	inc b			;2472	04 	. 
	nop			;2473	00 	. 
	ld bc,l1c00h		;2474	01 00 1c 	. . . 
	ld a,07fh		;2477	3e 7f 	>  
	ld b,e			;2479	43 	C 
	rst 38h			;247a	ff 	. 
	ld bc,l0100h		;247b	01 00 01 	. . . 
	nop			;247e	00 	. 
	inc b			;247f	04 	. 
	nop			;2480	00 	. 
	ld bc,l3000h		;2481	01 00 30 	. . 0 
	ld a,h			;2484	7c 	| 
	ret m			;2485	f8 	. 
	ret nz			;2486	c0 	. 
	add a,b			;2487	80 	. 
	nop			;2488	00 	. 
	ld bc,00700h		;2489	01 00 07 	. . . 
	ld bc,sub_0300h		;248c	01 00 03 	. . . 
	nop			;248f	00 	. 
	ld bc,l0701h+2		;2490	01 03 07 	. . . 
	inc bc			;2493	03 	. 
l2494h:
	ret nz			;2494	c0 	. 
	rst 38h			;2495	ff 	. 
	ret po			;2496	e0 	. 
	rst 38h			;2497	ff 	. 
	ret p			;2498	f0 	. 
	ret po			;2499	e0 	. 
	add a,e			;249a	83 	. 
	ret po			;249b	e0 	. 
	nop			;249c	00 	. 
	inc bc			;249d	03 	. 
	rst 38h			;249e	ff 	. 
	cp 0f0h		;249f	fe f0 	. . 
	rst 38h			;24a1	ff 	. 
	nop			;24a2	00 	. 
	nop			;24a3	00 	. 
	inc b			;24a4	04 	. 
	rst 38h			;24a5	ff 	. 
	cp 0fch		;24a6	fe fc 	. . 
	rst 38h			;24a8	ff 	. 
	nop			;24a9	00 	. 
	jr c,l24dch		;24aa	38 30 	8 0 
	ld (hl),b			;24ac	70 	p 
	ret p			;24ad	f0 	. 
	nop			;24ae	00 	. 
	inc b			;24af	04 	. 
	ret po			;24b0	e0 	. 
	jr c,$+26		;24b1	38 18 	8 . 
	inc e			;24b3	1c 	. 
	inc c			;24b4	0c 	. 
	ld c,007h		;24b5	0e 07 	. . 
	inc bc			;24b7	03 	. 
	ld bc,07060h		;24b8	01 60 70 	. ` p 
	rst 38h			;24bb	ff 	. 
	jr c,l253dh		;24bc	38 7f 	8  
	rst 28h			;24be	ef 	. 
	rst 38h			;24bf	ff 	. 
	ret nz			;24c0	c0 	. 
	ld bc,l00ffh		;24c1	01 ff 00 	. . . 
	ld bc,l0003h		;24c4	01 03 00 	. . . 
	ld bc,0feffh		;24c7	01 ff fe 	. . . 
	ld d,001h		;24ca	16 01 	. . 
	nop			;24cc	00 	. 
	inc b			;24cd	04 	. 
	nop			;24ce	00 	. 
	rst 38h			;24cf	ff 	. 
	add a,b			;24d0	80 	. 
	add a,c			;24d1	81 	. 
	nop			;24d2	00 	. 
	rlca			;24d3	07 	. 
	ret po			;24d4	e0 	. 
	ret p			;24d5	f0 	. 
	pop bc			;24d6	c1 	. 
	jp 0effeh		;24d7	c3 fe ef 	. . . 
	ret p			;24da	f0 	. 
	add a,b			;24db	80 	. 
l24dch:
	rst 38h			;24dc	ff 	. 
	nop			;24dd	00 	. 
	ret c			;24de	d8 	. 
	call m,sub_06cch		;24df	fc cc 06 	. . . 
	dec b			;24e2	05 	. 
	rst 38h			;24e3	ff 	. 
	inc bc			;24e4	03 	. 
	ld bc,sub_0300h		;24e5	01 00 03 	. . . 
	ret nz			;24e8	c0 	. 
	ret po			;24e9	e0 	. 
	ret p			;24ea	f0 	. 
	ld a,(hl)			;24eb	7e 	~ 
	ld a,a			;24ec	7f 	 
	scf			;24ed	37 	7 
	ld c,006h		;24ee	0e 06 	. . 
	rlca			;24f0	07 	. 
	dec b			;24f1	05 	. 
	ld (bc),a			;24f2	02 	. 
	inc bc			;24f3	03 	. 
	rlca			;24f4	07 	. 
	call m,0e070h		;24f5	fc 70 e0 	. p . 
	add a,b			;24f8	80 	. 
	ret nz			;24f9	c0 	. 
	ret po			;24fa	e0 	. 
	cp b			;24fb	b8 	. 
	rst 28h			;24fc	ef 	. 
	ccf			;24fd	3f 	? 
	nop			;24fe	00 	. 
	dec b			;24ff	05 	. 
l2500h:
	nop			;2500	00 	. 
	ld bc,sub_00feh		;2501	01 fe 00 	. . . 
	ld bc,l00ffh		;2504	01 ff 00 	. . . 
	inc b			;2507	04 	. 
	nop			;2508	00 	. 
	ret m			;2509	f8 	. 
	ld a,a			;250a	7f 	 
	rst 20h			;250b	e7 	. 
	rra			;250c	1f 	. 
	rst 38h			;250d	ff 	. 
	nop			;250e	00 	. 
	rrca			;250f	0f 	. 
	rra			;2510	1f 	. 
	call m,0c0f8h		;2511	fc f8 c0 	. . . 
	nop			;2514	00 	. 
	ld bc,l0f00h		;2515	01 00 0f 	. . . 
	nop			;2518	00 	. 
	inc bc			;2519	03 	. 
	ld bc,l0003h		;251a	01 03 00 	. . . 
	ld bc,l3fffh		;251d	01 ff 3f 	. . ? 
	call m,sub_0500h		;2520	fc 00 05 	. . . 
	add a,b			;2523	80 	. 
	ret nz			;2524	c0 	. 
	rst 0			;2525	c7 	. 
	nop			;2526	00 	. 
	ld bc,0ffffh		;2527	01 ff ff 	. . . 
	ld b,0c6h		;252a	06 c6 	. . 
	and 0f6h		;252c	e6 f6 	. . 
	ei			;252e	fb 	. 
	ld a,(iy-040h)		;252f	fd 7e c0 	. ~ . 
	jp 06ff7h		;2532	c3 f7 6f 	. . o 
	rra			;2535	1f 	. 
	ccf			;2536	3f 	? 
	ld a,a			;2537	7f 	 
	ld a,(hl)			;2538	7e 	~ 
	ld a,000h		;2539	3e 00 	> . 
	inc b			;253b	04 	. 
	rra			;253c	1f 	. 
l253dh:
	nop			;253d	00 	. 
	inc bc			;253e	03 	. 
	rst 38h			;253f	ff 	. 
	call m,l0400h		;2540	fc 00 04 	. . . 
	ret m			;2543	f8 	. 
	nop			;2544	00 	. 
	inc bc			;2545	03 	. 
	rst 38h			;2546	ff 	. 
	ld a,a			;2547	7f 	 
	nop			;2548	00 	. 
	ld b,0ffh		;2549	06 ff 	. . 
	rrca			;254b	0f 	. 
	rlca			;254c	07 	. 
	ld h,e			;254d	63 	c 
	di			;254e	f3 	. 
	or e			;254f	b3 	. 
	nop			;2550	00 	. 
	inc bc			;2551	03 	. 
	rst 38h			;2552	ff 	. 
	ret nz			;2553	c0 	. 
	nop			;2554	00 	. 
	nop			;2555	00 	. 
	nop			;2556	00 	. 
	inc bc			;2557	03 	. 
	add a,e			;2558	83 	. 
	rst 38h			;2559	ff 	. 
	add a,0cdh		;255a	c6 cd 	. . 
	jp c,l00f7h		;255c	da f7 00 	. . . 
	inc bc			;255f	03 	. 
	pop bc			;2560	c1 	. 
	ld h,e			;2561	63 	c 
	ex (sp),hl			;2562	e3 	. 
	inc sp			;2563	33 	3 
	in a,(06fh)		;2564	db 6f 	. o 
	ld sp,iy		;2566	fd f9 	. . 
	nop			;2568	00 	. 
	ld bc,0fdffh		;2569	01 ff fd 	. . . 
	cp 000h		;256c	fe 00 	. . 
	ld bc,0ffffh		;256e	01 ff ff 	. . . 
	cp 05fh		;2571	fe 5f 	. _ 
	nop			;2573	00 	. 
	ld bc,0ffffh		;2574	01 ff ff 	. . . 
	cp a			;2577	bf 	. 
	nop			;2578	00 	. 
	inc bc			;2579	03 	. 
	ld a,a			;257a	7f 	 
	nop			;257b	00 	. 
	ld de,04fffh		;257c	11 ff 4f 	. . O 
	ld h,a			;257f	67 	g 
	or 0fah		;2580	f6 fa 	. . 
	nop			;2582	00 	. 
	inc b			;2583	04 	. 
	rst 38h			;2584	ff 	. 
	call m,sub_3efeh		;2585	fc fe 3e 	. . > 
	call c,0f0ech		;2588	dc ec f0 	. . . 
	rst 38h			;258b	ff 	. 
	ld sp,hl			;258c	f9 	. 
	nop			;258d	00 	. 
	inc b			;258e	04 	. 
	cp a			;258f	bf 	. 
	nop			;2590	00 	. 
	inc bc			;2591	03 	. 
	ld a,a			;2592	7f 	 
	rst 38h			;2593	ff 	. 
	rst 38h			;2594	ff 	. 
	ld (hl),a			;2595	77 	w 
	rst 38h			;2596	ff 	. 
	rrca			;2597	0f 	. 
	rst 38h			;2598	ff 	. 
	rra			;2599	1f 	. 
	rst 38h			;259a	ff 	. 
	sbc a,a			;259b	9f 	. 
	ei			;259c	fb 	. 
	ld sp,hl			;259d	f9 	. 
	defb 0fdh,0fch,000h	;illegal sequence		;259e	fd fc 00 	. . . 
	inc bc			;25a1	03 	. 
	ret m			;25a2	f8 	. 
	or 0eeh		;25a3	f6 ee 	. . 
	rst 38h			;25a5	ff 	. 
	call m,0fffdh		;25a6	fc fd ff 	. . . 
	ld sp,hl			;25a9	f9 	. 
	pop af			;25aa	f1 	. 
	ex (sp),hl			;25ab	e3 	. 
	rst 18h			;25ac	df 	. 
	sbc a,a			;25ad	9f 	. 
	adc a,a			;25ae	8f 	. 
	rst 38h			;25af	ff 	. 
	rrca			;25b0	0f 	. 
	rst 38h			;25b1	ff 	. 
	rlca			;25b2	07 	. 
	ld bc,0e3efh		;25b3	01 ef e3 	. . . 
	nop			;25b6	00 	. 
	inc bc			;25b7	03 	. 
	pop hl			;25b8	e1 	. 
	ret po			;25b9	e0 	. 
	ret nz			;25ba	c0 	. 
	rst 38h			;25bb	ff 	. 
	nop			;25bc	00 	. 
	rst 38h			;25bd	ff 	. 
	add a,b			;25be	80 	. 
	ret nz			;25bf	c0 	. 
	ret p			;25c0	f0 	. 
	call m,0ffffh		;25c1	fc ff ff 	. . . 
	ld bc,l0502h		;25c4	01 02 05 	. . . 
	dec de			;25c7	1b 	. 
	rst 20h			;25c8	e7 	. 
	rra			;25c9	1f 	. 
	nop			;25ca	00 	. 
	dec b			;25cb	05 	. 
	rst 38h			;25cc	ff 	. 
	rst 38h			;25cd	ff 	. 
	ld a,a			;25ce	7f 	 
	ccf			;25cf	3f 	? 
	sbc a,a			;25d0	9f 	. 
	ret nz			;25d1	c0 	. 
	nop			;25d2	00 	. 
	ld bc,0fcffh		;25d3	01 ff fc 	. . . 
	ret p			;25d6	f0 	. 
	jp 087c7h		;25d7	c3 c7 87 	. . . 
	adc a,a			;25da	8f 	. 
	rst 38h			;25db	ff 	. 
	rrca			;25dc	0f 	. 
	add a,c			;25dd	81 	. 
	ret po			;25de	e0 	. 
	ret p			;25df	f0 	. 
	ret m			;25e0	f8 	. 
	ret p			;25e1	f0 	. 
	rst 20h			;25e2	e7 	. 
	rst 18h			;25e3	df 	. 
	ret po			;25e4	e0 	. 
	rrca			;25e5	0f 	. 
	ccf			;25e6	3f 	? 
	ld a,a			;25e7	7f 	 
	nop			;25e8	00 	. 
	ld bc,l1fffh		;25e9	01 ff 1f 	. . . 
	rst 28h			;25ec	ef 	. 
	rst 38h			;25ed	ff 	. 
	rst 38h			;25ee	ff 	. 
	ld b,000h		;25ef	06 00 	. . 
	inc bc			;25f1	03 	. 
	nop			;25f2	00 	. 
	ld bc,0e381h		;25f3	01 81 e3 	. . . 
	nop			;25f6	00 	. 
	ld bc,l18ffh		;25f7	01 ff 18 	. . . 
	rst 38h			;25fa	ff 	. 
	nop			;25fb	00 	. 
	add a,b			;25fc	80 	. 
	rst 38h			;25fd	ff 	. 
	ret nz			;25fe	c0 	. 
	ret po			;25ff	e0 	. 
	nop			;2600	00 	. 
	ld bc,006ffh		;2601	01 ff 06 	. . . 
	nop			;2604	00 	. 
	inc bc			;2605	03 	. 
	nop			;2606	00 	. 
	ld bc,0c181h		;2607	01 81 c1 	. . . 
	nop			;260a	00 	. 
	ld bc,l18ffh		;260b	01 ff 18 	. . . 
	rst 38h			;260e	ff 	. 
	nop			;260f	00 	. 
	add a,b			;2610	80 	. 
	rst 38h			;2611	ff 	. 
	ret nz			;2612	c0 	. 
	ret po			;2613	e0 	. 
	nop			;2614	00 	. 
	ld bc,0feffh		;2615	01 ff fe 	. . . 
	ret po			;2618	e0 	. 
	nop			;2619	00 	. 
	inc bc			;261a	03 	. 
	ret nz			;261b	c0 	. 
	add a,b			;261c	80 	. 
	add a,c			;261d	81 	. 
	nop			;261e	00 	. 
	ld bc,l1fffh		;261f	01 ff 1f 	. . . 
	rlca			;2622	07 	. 
	nop			;2623	00 	. 
	inc bc			;2624	03 	. 
	inc bc			;2625	03 	. 
	ld bc,l3f81h		;2626	01 81 3f 	. . ? 
	rst 0			;2629	c7 	. 
	ret po			;262a	e0 	. 
	ret p			;262b	f0 	. 
	ret m			;262c	f8 	. 
	ld sp,hl			;262d	f9 	. 
	ei			;262e	fb 	. 
	nop			;262f	00 	. 
	ld bc,0c0ffh		;2630	01 ff c0 	. . . 
	rrca			;2633	0f 	. 
	ccf			;2634	3f 	? 
	ld a,a			;2635	7f 	 
	nop			;2636	00 	. 
	inc b			;2637	04 	. 
	rst 38h			;2638	ff 	. 
	rlca			;2639	07 	. 
	add a,b			;263a	80 	. 
	di			;263b	f3 	. 
	call m,0f7f9h		;263c	fc f9 f7 	. . . 
	rst 28h			;263f	ef 	. 
	rst 18h			;2640	df 	. 
	nop			;2641	00 	. 
	ld bc,07fffh		;2642	01 ff 7f 	. .  
	add a,a			;2645	87 	. 
	ex (sp),hl			;2646	e3 	. 
	pop af			;2647	f1 	. 
	ld sp,hl			;2648	f9 	. 
	defb 0fdh,0fch,0c0h	;illegal sequence		;2649	fd fc c0 	. . . 
	ld e,07fh		;264c	1e 7f 	.  
	nop			;264e	00 	. 
	inc bc			;264f	03 	. 
	rst 38h			;2650	ff 	. 
	rst 18h			;2651	df 	. 
	cp a			;2652	bf 	. 
	nop			;2653	00 	. 
	ld bc,l00ffh		;2654	01 ff 00 	. . . 
	inc b			;2657	04 	. 
	add a,b			;2658	80 	. 
	nop			;2659	00 	. 
	inc bc			;265a	03 	. 
	rst 38h			;265b	ff 	. 
	nop			;265c	00 	. 
	nop			;265d	00 	. 
	nop			;265e	00 	. 
	inc bc			;265f	03 	. 
	defb 0fdh,0ffh,0fbh	;illegal sequence		;2660	fd ff fb 	. . . 
	or 0edh		;2663	f6 ed 	. . 
	ret c			;2665	d8 	. 
	nop			;2666	00 	. 
	inc bc			;2667	03 	. 
	cp a			;2668	bf 	. 
	rst 18h			;2669	df 	. 
	ld e,a			;266a	5f 	_ 
	rst 28h			;266b	ef 	. 
	scf			;266c	37 	7 
	sbc a,e			;266d	9b 	. 
	jp m,0fcfeh		;266e	fa fe fc 	. . . 
	cp 0fdh		;2671	fe fd 	. . 
	cp 0ffh		;2673	fe ff 	. . 
	rst 38h			;2675	ff 	. 
	cp a			;2676	bf 	. 
	rra			;2677	1f 	. 
	rst 38h			;2678	ff 	. 
	ld a,a			;2679	7f 	 
	cp a			;267a	bf 	. 
	rst 38h			;267b	ff 	. 
	rst 38h			;267c	ff 	. 
	ld a,a			;267d	7f 	 
	nop			;267e	00 	. 
	djnz $+1		;267f	10 ff 	. . 
	call m,sub_00fdh		;2681	fc fd 00 	. . . 
	ld bc,0dfffh		;2684	01 ff df 	. . . 
	rst 8			;2687	cf 	. 
	rst 20h			;2688	e7 	. 
	ex (sp),hl			;2689	e3 	. 
	ret p			;268a	f0 	. 
	rst 38h			;268b	ff 	. 
	rrca			;268c	0f 	. 
	rst 18h			;268d	df 	. 
	nop			;268e	00 	. 
	ld bc,07fffh		;268f	01 ff 7f 	. .  
	rst 38h			;2692	ff 	. 
	ccf			;2693	3f 	? 
	rra			;2694	1f 	. 
	rst 20h			;2695	e7 	. 
	call m,0fff8h		;2696	fc f8 ff 	. . . 
	ret p			;2699	f0 	. 
	nop			;269a	00 	. 
	inc bc			;269b	03 	. 
	ret po			;269c	e0 	. 
	ret p			;269d	f0 	. 
	ret m			;269e	f8 	. 
	call m,sub_0300h		;269f	fc 00 03 	. . . 
	rst 38h			;26a2	ff 	. 
	rst 38h			;26a3	ff 	. 
	call m,sub_001fh		;26a4	fc 1f 00 	. . . 
	inc b			;26a7	04 	. 
	rrca			;26a8	0f 	. 
	adc a,a			;26a9	8f 	. 
	sbc a,a			;26aa	9f 	. 
	rst 18h			;26ab	df 	. 
	nop			;26ac	00 	. 
	ld bc,0f7ffh		;26ad	01 ff f7 	. . . 
	rst 0			;26b0	c7 	. 
	ld c,a			;26b1	4f 	O 
	rst 8			;26b2	cf 	. 
	sbc a,a			;26b3	9f 	. 
	rst 38h			;26b4	ff 	. 
	rst 38h			;26b5	ff 	. 
	nop			;26b6	00 	. 
	inc b			;26b7	04 	. 
	ret m			;26b8	f8 	. 
	call m,sub_0300h		;26b9	fc 00 03 	. . . 
	rst 38h			;26bc	ff 	. 
	ccf			;26bd	3f 	? 
	nop			;26be	00 	. 
	inc bc			;26bf	03 	. 
	ld a,a			;26c0	7f 	 
	nop			;26c1	00 	. 
	inc d			;26c2	14 	. 
	rst 38h			;26c3	ff 	. 
	rst 38h			;26c4	ff 	. 
	nop			;26c5	00 	. 
	rst 38h			;26c6	ff 	. 
	add a,b			;26c7	80 	. 
	ret nz			;26c8	c0 	. 
	rst 20h			;26c9	e7 	. 
	ld a,a			;26ca	7f 	 
	cp a			;26cb	bf 	. 
	nop			;26cc	00 	. 
	dec b			;26cd	05 	. 
	rst 38h			;26ce	ff 	. 
	cp 0ffh		;26cf	fe ff 	. . 
	call m,l0400h		;26d1	fc 00 04 	. . . 
	rst 38h			;26d4	ff 	. 
	ld a,a			;26d5	7f 	 
	rst 38h			;26d6	ff 	. 
	ccf			;26d7	3f 	? 
	ld a,b			;26d8	78 	x 
	nop			;26d9	00 	. 
	inc bc			;26da	03 	. 
	rst 38h			;26db	ff 	. 
	ret p			;26dc	f0 	. 
	ret po			;26dd	e0 	. 
	ret m			;26de	f8 	. 
	call m,sub_001eh		;26df	fc 1e 00 	. . . 
	dec b			;26e2	05 	. 
	rst 38h			;26e3	ff 	. 
	cp 07eh		;26e4	fe 7e 	. ~ 
	sbc a,h			;26e6	9c 	. 
	nop			;26e7	00 	. 
	inc b			;26e8	04 	. 
	rst 38h			;26e9	ff 	. 
	ld a,a			;26ea	7f 	 
	rst 38h			;26eb	ff 	. 
	cp a			;26ec	bf 	. 
	sbc a,a			;26ed	9f 	. 
	nop			;26ee	00 	. 
	dec b			;26ef	05 	. 
	rst 38h			;26f0	ff 	. 
	cp 07eh		;26f1	fe 7e 	. ~ 
	cp (hl)			;26f3	be 	. 
	nop			;26f4	00 	. 
	inc b			;26f5	04 	. 
	rst 38h			;26f6	ff 	. 
	ld a,a			;26f7	7f 	 
	rst 38h			;26f8	ff 	. 
	cp a			;26f9	bf 	. 
	sbc a,a			;26fa	9f 	. 
	nop			;26fb	00 	. 
	rlca			;26fc	07 	. 
	rst 38h			;26fd	ff 	. 
	cp 000h		;26fe	fe 00 	. . 
	rlca			;2700	07 	. 
	rst 38h			;2701	ff 	. 
	ld a,a			;2702	7f 	 
	nop			;2703	00 	. 
	inc bc			;2704	03 	. 
	rst 38h			;2705	ff 	. 
	rst 38h			;2706	ff 	. 
	ld a,a			;2707	7f 	 
	rst 38h			;2708	ff 	. 
	ccf			;2709	3f 	? 
	ld a,0ffh		;270a	3e ff 	> . 
	rst 38h			;270c	ff 	. 
	ret m			;270d	f8 	. 
	ret po			;270e	e0 	. 
	ret nz			;270f	c0 	. 
	add a,b			;2710	80 	. 
	rst 38h			;2711	ff 	. 
	nop			;2712	00 	. 
	nop			;2713	00 	. 
	inc bc			;2714	03 	. 
	rst 38h			;2715	ff 	. 
	ccf			;2716	3f 	? 
	rrca			;2717	0f 	. 
	ld e,038h		;2718	1e 38 	. 8 
	jr nc,l271ch		;271a	30 00 	0 . 
l271ch:
	dec b			;271c	05 	. 
	rst 38h			;271d	ff 	. 
	ccf			;271e	3f 	? 
	rra			;271f	1f 	. 
	rrca			;2720	0f 	. 
	nop			;2721	00 	. 
	inc bc			;2722	03 	. 
	rst 38h			;2723	ff 	. 
	pop bc			;2724	c1 	. 
	rst 38h			;2725	ff 	. 
	nop			;2726	00 	. 
	inc a			;2727	3c 	< 
	ret p			;2728	f0 	. 
	nop			;2729	00 	. 
	ld bc,l00ffh		;272a	01 ff 00 	. . . 
	dec b			;272d	05 	. 
	add a,b			;272e	80 	. 
	rst 38h			;272f	ff 	. 
	rst 38h			;2730	ff 	. 
	nop			;2731	00 	. 
	nop			;2732	00 	. 
	nop			;2733	00 	. 
	inc bc			;2734	03 	. 
	add a,c			;2735	81 	. 
	rst 38h			;2736	ff 	. 
	jp nz,0cac5h		;2737	c2 c5 ca 	. . . 
	rst 10h			;273a	d7 	. 
	nop			;273b	00 	. 
	inc bc			;273c	03 	. 
	add a,c			;273d	81 	. 
	ld b,e			;273e	43 	C 
	jp 0d323h		;273f	c3 23 d3 	. # . 
	ld l,e			;2742	6b 	k 
	ld sp,iy		;2743	fd f9 	. . 
	nop			;2745	00 	. 
	ld bc,0fdffh		;2746	01 ff fd 	. . . 
	cp 000h		;2749	fe 00 	. . 
	ld bc,0ffffh		;274b	01 ff ff 	. . . 
	cp 05fh		;274e	fe 5f 	. _ 
	nop			;2750	00 	. 
	ld bc,0ffffh		;2751	01 ff ff 	. . . 
	cp a			;2754	bf 	. 
	nop			;2755	00 	. 
	inc bc			;2756	03 	. 
	ld a,a			;2757	7f 	 
	nop			;2758	00 	. 
	ld de,0b0ffh		;2759	11 ff b0 	. . . 
	sbc a,b			;275c	98 	. 
	add hl,bc			;275d	09 	. 
	dec b			;275e	05 	. 
	rst 38h			;275f	ff 	. 
	nop			;2760	00 	. 
	rst 38h			;2761	ff 	. 
	add a,b			;2762	80 	. 
	inc bc			;2763	03 	. 
	ld bc,l23c1h		;2764	01 c1 23 	. . # 
	inc de			;2767	13 	. 
	rrca			;2768	0f 	. 
	rst 38h			;2769	ff 	. 
	rlca			;276a	07 	. 
	nop			;276b	00 	. 
	inc b			;276c	04 	. 
	ret nz			;276d	c0 	. 
	nop			;276e	00 	. 
	inc bc			;276f	03 	. 
	add a,b			;2770	80 	. 
	rst 38h			;2771	ff 	. 
	nop			;2772	00 	. 
	adc a,b			;2773	88 	. 
	rst 38h			;2774	ff 	. 
	ret p			;2775	f0 	. 
	nop			;2776	00 	. 
	inc b			;2777	04 	. 
	ret po			;2778	e0 	. 
	rst 38h			;2779	ff 	. 
	rlca			;277a	07 	. 
	rst 38h			;277b	ff 	. 
	inc bc			;277c	03 	. 
	nop			;277d	00 	. 
	inc bc			;277e	03 	. 
	rlca			;277f	07 	. 
	add hl,bc			;2780	09 	. 
	ld de,sub_0300h		;2781	11 00 03 	. . . 
	inc bc			;2784	03 	. 
	rst 38h			;2785	ff 	. 
	rlca			;2786	07 	. 
	rrca			;2787	0f 	. 
	rra			;2788	1f 	. 
	rst 38h			;2789	ff 	. 
	ret po			;278a	e0 	. 
	nop			;278b	00 	. 
	inc bc			;278c	03 	. 
	ret p			;278d	f0 	. 
	rst 38h			;278e	ff 	. 
	ret m			;278f	f8 	. 
	cp 017h		;2790	fe 17 	. . 
	nop			;2792	00 	. 
	dec b			;2793	05 	. 
	rra			;2794	1f 	. 
	ccf			;2795	3f 	? 
	nop			;2796	00 	. 
	ld de,l00ffh		;2797	11 ff 00 	. . . 
	inc bc			;279a	03 	. 
	nop			;279b	00 	. 
	rst 38h			;279c	ff 	. 
	add a,b			;279d	80 	. 
	ret nz			;279e	c0 	. 
	ld h,b			;279f	60 	` 
	ccf			;27a0	3f 	? 
	nop			;27a1	00 	. 
	inc bc			;27a2	03 	. 
	rst 38h			;27a3	ff 	. 
	call m,0f8ffh		;27a4	fc ff f8 	. . . 
	rst 38h			;27a7	ff 	. 
	ret p			;27a8	f0 	. 
	nop			;27a9	00 	. 
	ld bc,07fffh		;27aa	01 ff 7f 	. .  
	rra			;27ad	1f 	. 
	rrca			;27ae	0f 	. 
	rlca			;27af	07 	. 
	rrca			;27b0	0f 	. 
	jr l27d3h		;27b1	18 20 	.   
	nop			;27b3	00 	. 
	ld bc,0f0ffh		;27b4	01 ff f0 	. . . 
	ret nz			;27b7	c0 	. 
	add a,b			;27b8	80 	. 
	nop			;27b9	00 	. 
	ld bc,0e000h		;27ba	01 00 e0 	. . . 
	djnz l27bfh		;27bd	10 00 	. . 
l27bfh:
	ld bc,l0000h		;27bf	01 00 00 	. . . 
	ld bc,006ffh		;27c2	01 ff 06 	. . . 
	nop			;27c5	00 	. 
	dec b			;27c6	05 	. 
	nop			;27c7	00 	. 
	add a,b			;27c8	80 	. 
	nop			;27c9	00 	. 
	ld bc,l18ffh		;27ca	01 ff 18 	. . . 
	nop			;27cd	00 	. 
	inc bc			;27ce	03 	. 
	nop			;27cf	00 	. 
	nop			;27d0	00 	. 
	inc bc			;27d1	03 	. 
	add a,b			;27d2	80 	. 
l27d3h:
	nop			;27d3	00 	. 
	ld bc,006ffh		;27d4	01 ff 06 	. . . 
	nop			;27d7	00 	. 
	dec b			;27d8	05 	. 
	nop			;27d9	00 	. 
	add a,b			;27da	80 	. 
	nop			;27db	00 	. 
	ld bc,l18ffh		;27dc	01 ff 18 	. . . 
	nop			;27df	00 	. 
	inc bc			;27e0	03 	. 
	nop			;27e1	00 	. 
	nop			;27e2	00 	. 
	inc bc			;27e3	03 	. 
	add a,b			;27e4	80 	. 
	nop			;27e5	00 	. 
	ld bc,0feffh		;27e6	01 ff fe 	. . . 
	ret po			;27e9	e0 	. 
	nop			;27ea	00 	. 
	inc bc			;27eb	03 	. 
	ret nz			;27ec	c0 	. 
	rst 38h			;27ed	ff 	. 
	add a,b			;27ee	80 	. 
	nop			;27ef	00 	. 
	ld bc,l1fffh		;27f0	01 ff 1f 	. . . 
	rlca			;27f3	07 	. 
	nop			;27f4	00 	. 
	inc bc			;27f5	03 	. 
	inc bc			;27f6	03 	. 
	rst 38h			;27f7	ff 	. 
	ld bc,l0100h		;27f8	01 00 01 	. . . 
	rst 38h			;27fb	ff 	. 
	ccf			;27fc	3f 	? 
	rra			;27fd	1f 	. 
	rrca			;27fe	0f 	. 
	rlca			;27ff	07 	. 
	ld b,004h		;2800	06 04 	. . 
	nop			;2802	00 	. 
	ld bc,l0000h		;2803	01 00 00 	. . . 
	ld bc,0f0ffh		;2806	01 ff f0 	. . . 
	ret nz			;2809	c0 	. 
	add a,b			;280a	80 	. 
	nop			;280b	00 	. 
	inc b			;280c	04 	. 
	nop			;280d	00 	. 
	nop			;280e	00 	. 
	ld bc,07fffh		;280f	01 ff 7f 	. .  
	inc c			;2812	0c 	. 
	inc bc			;2813	03 	. 
	ld b,008h		;2814	06 08 	. . 
	djnz l2838h		;2816	10 20 	.   
	rst 38h			;2818	ff 	. 
	rst 38h			;2819	ff 	. 
	ld a,a			;281a	7f 	 
	rra			;281b	1f 	. 
	rrca			;281c	0f 	. 
	rlca			;281d	07 	. 
	rst 38h			;281e	ff 	. 
	inc bc			;281f	03 	. 
	nop			;2820	00 	. 
	ld bc,0e1ffh		;2821	01 ff e1 	. . . 
	add a,b			;2824	80 	. 
	nop			;2825	00 	. 
	inc bc			;2826	03 	. 
	nop			;2827	00 	. 
	jr nz,l286ah		;2828	20 40 	  @ 
	add a,b			;282a	80 	. 
	nop			;282b	00 	. 
	rlca			;282c	07 	. 
	rst 38h			;282d	ff 	. 
	nop			;282e	00 	. 
	nop			;282f	00 	. 
	nop			;2830	00 	. 
	inc bc			;2831	03 	. 
	rst 38h			;2832	ff 	. 
	rst 38h			;2833	ff 	. 
	ld a,(hl)			;2834	7e 	~ 
	ld a,h			;2835	7c 	| 
	ld a,b			;2836	78 	x 
	ld (hl),b			;2837	70 	p 
l2838h:
	nop			;2838	00 	. 
	inc bc			;2839	03 	. 
	rst 38h			;283a	ff 	. 
	rst 38h			;283b	ff 	. 
	ld a,(hl)			;283c	7e 	~ 
	ld a,01eh		;283d	3e 1e 	> . 
	ld c,028h		;283f	0e 28 	. ( 
	ex af,af'			;2841	08 	. 
	nop			;2842	00 	. 
	inc bc			;2843	03 	. 
	inc b			;2844	04 	. 
	nop			;2845	00 	. 
	inc bc			;2846	03 	. 
	ld (bc),a			;2847	02 	. 
	inc d			;2848	14 	. 
	djnz l284bh		;2849	10 00 	. . 
l284bh:
	inc bc			;284b	03 	. 
	jr nz,l284eh		;284c	20 00 	  . 
l284eh:
	inc bc			;284e	03 	. 
	ld b,b			;284f	40 	@ 
	nop			;2850	00 	. 
	ex af,af'			;2851	08 	. 
	ld bc,l0800h		;2852	01 00 08 	. . . 
	add a,b			;2855	80 	. 
	call m,sub_00fdh		;2856	fc fd 00 	. . . 
	ld bc,0dfffh		;2859	01 ff df 	. . . 
	rst 8			;285c	cf 	. 
	rst 20h			;285d	e7 	. 
	ld h,e			;285e	63 	c 
	ld (hl),b			;285f	70 	p 
	rst 38h			;2860	ff 	. 
	rrca			;2861	0f 	. 
	rst 18h			;2862	df 	. 
	nop			;2863	00 	. 
	ld bc,07fffh		;2864	01 ff 7f 	. .  
	ccf			;2867	3f 	? 
	ld a,01eh		;2868	3e 1e 	> . 
l286ah:
	ld h,a			;286a	67 	g 
	ld a,h			;286b	7c 	| 
	ld a,b			;286c	78 	x 
	ld (hl),b			;286d	70 	p 
	ret p			;286e	f0 	. 
	nop			;286f	00 	. 
	inc bc			;2870	03 	. 
	ret po			;2871	e0 	. 
	ret p			;2872	f0 	. 
	ret m			;2873	f8 	. 
	call m,sub_0300h		;2874	fc 00 03 	. . . 
	rst 38h			;2877	ff 	. 
	rst 38h			;2878	ff 	. 
	ld a,h			;2879	7c 	| 
	inc e			;287a	1c 	. 
	rst 38h			;287b	ff 	. 
	ld c,0ffh		;287c	0e ff 	. . 
	rrca			;287e	0f 	. 
	adc a,a			;287f	8f 	. 
	sbc a,a			;2880	9f 	. 
	rst 18h			;2881	df 	. 
	nop			;2882	00 	. 
	ld bc,0f7ffh		;2883	01 ff f7 	. . . 
	rst 0			;2886	c7 	. 
	ld c,(hl)			;2887	4e 	N 
	adc a,09eh		;2888	ce 9e 	. . 
	cp 0fch		;288a	fe fc 	. . 
	jr c,$+1		;288c	38 ff 	8 . 
	ld a,b			;288e	78 	x 
	ret m			;288f	f8 	. 
	call m,sub_0300h		;2890	fc 00 03 	. . . 
	rst 38h			;2893	ff 	. 
	jr c,l2912h		;2894	38 7c 	8 | 
	rst 38h			;2896	ff 	. 
	ld a,(hl)			;2897	7e 	~ 
	cp 000h		;2898	fe 00 	. . 
	inc bc			;289a	03 	. 
	rst 38h			;289b	ff 	. 
	ld a,a			;289c	7f 	 
	rst 38h			;289d	ff 	. 
	ccf			;289e	3f 	? 
	rrca			;289f	0f 	. 
	inc bc			;28a0	03 	. 
	nop			;28a1	00 	. 
	inc bc			;28a2	03 	. 
	nop			;28a3	00 	. 
	cp 0fch		;28a4	fe fc 	. . 
	ret m			;28a6	f8 	. 
	ret po			;28a7	e0 	. 
	nop			;28a8	00 	. 
	ld b,000h		;28a9	06 00 	. . 
	rst 38h			;28ab	ff 	. 
	add a,b			;28ac	80 	. 
	ret nz			;28ad	c0 	. 
	rst 20h			;28ae	e7 	. 
	ld a,a			;28af	7f 	 
	cp a			;28b0	bf 	. 
	nop			;28b1	00 	. 
	ld bc,sub_0300h		;28b2	01 00 03 	. . . 
	rrca			;28b5	0f 	. 
	rst 38h			;28b6	ff 	. 
	ccf			;28b7	3f 	? 
	ld a,(hl)			;28b8	7e 	~ 
	ld a,h			;28b9	7c 	| 
	call m,0fef0h		;28ba	fc f0 fe 	. . . 
	rst 38h			;28bd	ff 	. 
	rst 38h			;28be	ff 	. 
	ld a,a			;28bf	7f 	 
	rst 38h			;28c0	ff 	. 
	ccf			;28c1	3f 	? 
	ld a,b			;28c2	78 	x 
	rra			;28c3	1f 	. 
	rst 38h			;28c4	ff 	. 
	rst 38h			;28c5	ff 	. 
	ret p			;28c6	f0 	. 
	ret po			;28c7	e0 	. 
	ret m			;28c8	f8 	. 
	call m,0f91eh		;28c9	fc 1e f9 	. . . 
	nop			;28cc	00 	. 
	rlca			;28cd	07 	. 
	rst 38h			;28ce	ff 	. 
	rst 20h			;28cf	e7 	. 
	nop			;28d0	00 	. 
	rla			;28d1	17 	. 
	rst 38h			;28d2	ff 	. 
	ld bc,l3f1fh		;28d3	01 1f 3f 	. . ? 
	nop			;28d6	00 	. 
	inc bc			;28d7	03 	. 
	ld a,a			;28d8	7f 	 
	rst 38h			;28d9	ff 	. 
	rst 38h			;28da	ff 	. 
	ret po			;28db	e0 	. 
	ret m			;28dc	f8 	. 
	call m,sub_0300h		;28dd	fc 00 03 	. . . 
	cp 0ffh		;28e0	fe ff 	. . 
	rst 38h			;28e2	ff 	. 
	ret nz			;28e3	c0 	. 
	ret m			;28e4	f8 	. 
	nop			;28e5	00 	. 
	ld bc,0ffffh		;28e6	01 ff ff 	. . . 
	ld a,a			;28e9	7f 	 
	rst 38h			;28ea	ff 	. 
	ccf			;28eb	3f 	? 
	ld a,03fh		;28ec	3e 3f 	> ? 
	nop			;28ee	00 	. 
	ld bc,0f8ffh		;28ef	01 ff f8 	. . . 
	ret po			;28f2	e0 	. 
	ret nz			;28f3	c0 	. 
	add a,b			;28f4	80 	. 
	rst 38h			;28f5	ff 	. 
	nop			;28f6	00 	. 
	ret m			;28f7	f8 	. 
	rst 38h			;28f8	ff 	. 
	rst 38h			;28f9	ff 	. 
	ccf			;28fa	3f 	? 
	rrca			;28fb	0f 	. 
	ld e,038h		;28fc	1e 38 	. 8 
	jr nc,l2900h		;28fe	30 00 	0 . 
l2900h:
	ld bc,08000h		;2900	01 00 80 	. . . 
	ret m			;2903	f8 	. 
	call m,sub_3efeh		;2904	fc fe 3e 	. . > 
	ld e,00fh		;2907	1e 0f 	. . 
	ccf			;2909	3f 	? 
	rst 38h			;290a	ff 	. 
	rst 38h			;290b	ff 	. 
	pop bc			;290c	c1 	. 
	rst 38h			;290d	ff 	. 
	nop			;290e	00 	. 
	inc a			;290f	3c 	< 
	ret p			;2910	f0 	. 
	nop			;2911	00 	. 
l2912h:
	dec b			;2912	05 	. 
	add a,b			;2913	80 	. 
	nop			;2914	00 	. 
	inc bc			;2915	03 	. 
	rst 38h			;2916	ff 	. 
	nop			;2917	00 	. 
	nop			;2918	00 	. 
	nop			;2919	00 	. 
	rlca			;291a	07 	. 
	rst 38h			;291b	ff 	. 
	rst 0			;291c	c7 	. 
	nop			;291d	00 	. 
	inc b			;291e	04 	. 
	rst 38h			;291f	ff 	. 
	rst 30h			;2920	f7 	. 
	rst 28h			;2921	ef 	. 
	rst 38h			;2922	ff 	. 
	rst 18h			;2923	df 	. 
	ld sp,hl			;2924	f9 	. 
	cp 07fh		;2925	fe 7f 	.  
	ccf			;2927	3f 	? 
	adc a,a			;2928	8f 	. 
	ret nz			;2929	c0 	. 
	ret p			;292a	f0 	. 
	nop			;292b	00 	. 
	inc bc			;292c	03 	. 
	rst 38h			;292d	ff 	. 
	cp 0ffh		;292e	fe ff 	. . 
	call m,sub_01f0h		;2930	fc f0 01 	. . . 
	inc bc			;2933	03 	. 
	nop			;2934	00 	. 
	ld bc,0f0ffh		;2935	01 ff f0 	. . . 
	cp 000h		;2938	fe 00 	. . 
	inc bc			;293a	03 	. 
	rst 38h			;293b	ff 	. 
	ld sp,hl			;293c	f9 	. 
l293dh:
	and (hl)			;293d	a6 	. 
	rst 38h			;293e	ff 	. 
	rst 38h			;293f	ff 	. 
	ld a,a			;2940	7f 	 
	rra			;2941	1f 	. 
	sbc a,a			;2942	9f 	. 
	rst 38h			;2943	ff 	. 
	cp a			;2944	bf 	. 
	nop			;2945	00 	. 
	ld bc,l0fffh		;2946	01 ff 0f 	. . . 
	rst 38h			;2949	ff 	. 
	ccf			;294a	3f 	? 
	ld a,a			;294b	7f 	 
	rra			;294c	1f 	. 
	add a,a			;294d	87 	. 
	ret nz			;294e	c0 	. 
	ret p			;294f	f0 	. 
	rst 38h			;2950	ff 	. 
	rst 38h			;2951	ff 	. 
	rst 28h			;2952	ef 	. 
	ex (sp),hl			;2953	e3 	. 
	pop bc			;2954	c1 	. 
	ex af,af'			;2955	08 	. 
	inc e			;2956	1c 	. 
	ld a,a			;2957	7f 	 
	add a,a			;2958	87 	. 
	di			;2959	f3 	. 
	ld sp,hl			;295a	f9 	. 
	call m,0fcfeh		;295b	fc fe fc 	. . . 
	rst 38h			;295e	ff 	. 
	ld sp,hl			;295f	f9 	. 
	nop			;2960	00 	. 
	inc b			;2961	04 	. 
	rst 38h			;2962	ff 	. 
	rst 38h			;2963	ff 	. 
	ld a,a			;2964	7f 	 
	rst 38h			;2965	ff 	. 
	rst 38h			;2966	ff 	. 
	rst 38h			;2967	ff 	. 
	ei			;2968	fb 	. 
	nop			;2969	00 	. 
	inc bc			;296a	03 	. 
	rst 38h			;296b	ff 	. 
	jr nz,l296eh		;296c	20 00 	  . 
l296eh:
	ld bc,08600h		;296e	01 00 86 	. . . 
	cp 0f0h		;2971	fe f0 	. . 
	nop			;2973	00 	. 
	ld bc,0fcffh		;2974	01 ff fc 	. . . 
	ret po			;2977	e0 	. 
	nop			;2978	00 	. 
	ld bc,l0100h		;2979	01 00 01 	. . . 
	rrca			;297c	0f 	. 
	call m,0e7fbh		;297d	fc fb e7 	. . . 
	rst 18h			;2980	df 	. 
	cp a			;2981	bf 	. 
	rst 38h			;2982	ff 	. 
	rst 38h			;2983	ff 	. 
	sbc a,a			;2984	9f 	. 
	ld a,a			;2985	7f 	 
	nop			;2986	00 	. 
	inc b			;2987	04 	. 
	rst 38h			;2988	ff 	. 
	dec a			;2989	3d 	= 
	sbc a,l			;298a	9d 	. 
	call 09f1fh		;298b	cd 1f 9f 	. . . 
	adc a,a			;298e	8f 	. 
	rst 8			;298f	cf 	. 
	adc a,a			;2990	8f 	. 
	ld (bc),a			;2991	02 	. 
	nop			;2992	00 	. 
	ld bc,0e000h		;2993	01 00 e0 	. . . 
	rst 38h			;2996	ff 	. 
	jp (hl)			;2997	e9 	. 
	pop de			;2998	d1 	. 
	add a,c			;2999	81 	. 
	jp l1f07h		;299a	c3 07 1f 	. . . 
	nop			;299d	00 	. 
	ld bc,l00ffh		;299e	01 ff 00 	. . . 
	nop			;29a1	00 	. 
	nop			;29a2	00 	. 
	ld bc,0fcffh		;29a3	01 ff fc 	. . . 
	ret p			;29a6	f0 	. 
	rst 38h			;29a7	ff 	. 
	ret po			;29a8	e0 	. 
	rst 38h			;29a9	ff 	. 
	ret nz			;29aa	c0 	. 
	ret m			;29ab	f8 	. 
	nop			;29ac	00 	. 
	ld bc,l3fffh		;29ad	01 ff 3f 	. . ? 
	ld c,004h		;29b0	0e 04 	. . 
	ex af,af'			;29b2	08 	. 
	djnz $+1		;29b3	10 ff 	. . 
	jr nz,l293dh		;29b5	20 86 	  . 
	ld bc,0c080h		;29b7	01 80 c0 	. . . 
	ret p			;29ba	f0 	. 
	nop			;29bb	00 	. 
	inc bc			;29bc	03 	. 
	rst 38h			;29bd	ff 	. 
	rst 38h			;29be	ff 	. 
	nop			;29bf	00 	. 
	ld bc,003ffh		;29c0	01 ff 03 	. . . 
	rrca			;29c3	0f 	. 
	nop			;29c4	00 	. 
	inc bc			;29c5	03 	. 
	rst 38h			;29c6	ff 	. 
	adc a,a			;29c7	8f 	. 
	ld bc,sub_0300h		;29c8	01 00 03 	. . . 
	nop			;29cb	00 	. 
l29cch:
	ld b,059h		;29cc	06 59 	. Y 
	nop			;29ce	00 	. 
	ld bc,0f8ffh		;29cf	01 ff f8 	. . . 
	rst 38h			;29d2	ff 	. 
	ret po			;29d3	e0 	. 
	ld h,b			;29d4	60 	` 
	rst 38h			;29d5	ff 	. 
	ld b,b			;29d6	40 	@ 
	nop			;29d7	00 	. 
	ld bc,0f000h		;29d8	01 00 f0 	. . . 
	rst 38h			;29db	ff 	. 
	ret nz			;29dc	c0 	. 
	add a,b			;29dd	80 	. 
	ret po			;29de	e0 	. 
	ret m			;29df	f8 	. 
	rst 38h			;29e0	ff 	. 
	rst 38h			;29e1	ff 	. 
	rst 38h			;29e2	ff 	. 
	nop			;29e3	00 	. 
	djnz l2a02h		;29e4	10 1c 	. . 
	ld a,000h		;29e6	3e 00 	> . 
	inc bc			;29e8	03 	. 
	rst 38h			;29e9	ff 	. 
	ld a,a			;29ea	7f 	 
	rrca			;29eb	0f 	. 
	rlca			;29ec	07 	. 
	inc bc			;29ed	03 	. 
	ld bc,0ff03h		;29ee	01 03 ff 	. . . 
	ld b,000h		;29f1	06 00 	. . 
	ld bc,0f8ffh		;29f3	01 ff f8 	. . . 
	ret po			;29f6	e0 	. 
	nop			;29f7	00 	. 
	inc bc			;29f8	03 	. 
	add a,b			;29f9	80 	. 
	rst 38h			;29fa	ff 	. 
	nop			;29fb	00 	. 
	rst 38h			;29fc	ff 	. 
	inc b			;29fd	04 	. 
	nop			;29fe	00 	. 
	inc bc			;29ff	03 	. 
l2a00h:
	nop			;2a00	00 	. 
	rst 18h			;2a01	df 	. 
l2a02h:
	rst 38h			;2a02	ff 	. 
	rst 38h			;2a03	ff 	. 
	ld bc,l000fh		;2a04	01 0f 00 	. . . 
	ld bc,sub_0300h		;2a07	01 00 03 	. . . 
	rra			;2a0a	1f 	. 
	nop			;2a0b	00 	. 
	inc b			;2a0c	04 	. 
	rst 38h			;2a0d	ff 	. 
	inc e			;2a0e	1c 	. 
	jr l2a31h		;2a0f	18 20 	.   
	ld b,b			;2a11	40 	@ 
	rst 38h			;2a12	ff 	. 
	nop			;2a13	00 	. 
	ld h,b			;2a14	60 	` 
	nop			;2a15	00 	. 
	ld bc,l1fffh		;2a16	01 ff 1f 	. . . 
	rlca			;2a19	07 	. 
	rst 38h			;2a1a	ff 	. 
	inc bc			;2a1b	03 	. 
	jp l3363h		;2a1c	c3 63 33 	. c 3 
	ret po			;2a1f	e0 	. 
	ld h,b			;2a20	60 	` 
	ld (hl),b			;2a21	70 	p 
	jr nc,$+114		;2a22	30 70 	0 p 
	defb 0fdh,0ffh,0ffh	;illegal sequence		;2a24	fd ff ff 	. . . 
	rst 38h			;2a27	ff 	. 
	rla			;2a28	17 	. 
	cpl			;2a29	2f 	/ 
	ld a,a			;2a2a	7f 	 
	ccf			;2a2b	3f 	? 
	nop			;2a2c	00 	. 
	inc bc			;2a2d	03 	. 
	rst 38h			;2a2e	ff 	. 
	nop			;2a2f	00 	. 
	nop			;2a30	00 	. 
l2a31h:
	nop			;2a31	00 	. 
	ld bc,0fcffh		;2a32	01 ff fc 	. . . 
	ret p			;2a35	f0 	. 
	rst 38h			;2a36	ff 	. 
	ret po			;2a37	e0 	. 
	rst 38h			;2a38	ff 	. 
	ret nz			;2a39	c0 	. 
	ret m			;2a3a	f8 	. 
	nop			;2a3b	00 	. 
	ld bc,l3fffh		;2a3c	01 ff 3f 	. . ? 
	ld c,004h		;2a3f	0e 04 	. . 
	ex af,af'			;2a41	08 	. 
	djnz $+1		;2a42	10 ff 	. . 
	jr nz,l29cch		;2a44	20 86 	  . 
	ld bc,0c080h		;2a46	01 80 c0 	. . . 
	ret p			;2a49	f0 	. 
	nop			;2a4a	00 	. 
	inc bc			;2a4b	03 	. 
	rst 38h			;2a4c	ff 	. 
	rst 38h			;2a4d	ff 	. 
	nop			;2a4e	00 	. 
	ld bc,003ffh		;2a4f	01 ff 03 	. . . 
	rrca			;2a52	0f 	. 
	nop			;2a53	00 	. 
	inc bc			;2a54	03 	. 
	rst 38h			;2a55	ff 	. 
	adc a,a			;2a56	8f 	. 
	ld bc,sub_0300h		;2a57	01 00 03 	. . . 
	nop			;2a5a	00 	. 
	ld b,059h		;2a5b	06 59 	. Y 
	nop			;2a5d	00 	. 
	ld bc,0f8ffh		;2a5e	01 ff f8 	. . . 
	rst 38h			;2a61	ff 	. 
	ret po			;2a62	e0 	. 
	ld h,b			;2a63	60 	` 
	rst 38h			;2a64	ff 	. 
	ld b,b			;2a65	40 	@ 
	nop			;2a66	00 	. 
	ld bc,0f000h		;2a67	01 00 f0 	. . . 
	rst 38h			;2a6a	ff 	. 
	ret nz			;2a6b	c0 	. 
	add a,b			;2a6c	80 	. 
	ret po			;2a6d	e0 	. 
	ret m			;2a6e	f8 	. 
	rst 38h			;2a6f	ff 	. 
	rst 38h			;2a70	ff 	. 
	rst 38h			;2a71	ff 	. 
	nop			;2a72	00 	. 
	djnz l2a91h		;2a73	10 1c 	. . 
	ld a,000h		;2a75	3e 00 	> . 
	inc bc			;2a77	03 	. 
	rst 38h			;2a78	ff 	. 
	ld a,a			;2a79	7f 	 
	rrca			;2a7a	0f 	. 
	rlca			;2a7b	07 	. 
	inc bc			;2a7c	03 	. 
	ld bc,0ff03h		;2a7d	01 03 ff 	. . . 
	ld b,000h		;2a80	06 00 	. . 
	ld bc,0f8ffh		;2a82	01 ff f8 	. . . 
	ret po			;2a85	e0 	. 
	nop			;2a86	00 	. 
	inc bc			;2a87	03 	. 
	add a,b			;2a88	80 	. 
	rst 38h			;2a89	ff 	. 
	nop			;2a8a	00 	. 
	rst 38h			;2a8b	ff 	. 
	inc b			;2a8c	04 	. 
	nop			;2a8d	00 	. 
	inc bc			;2a8e	03 	. 
	nop			;2a8f	00 	. 
	rst 18h			;2a90	df 	. 
l2a91h:
	rst 38h			;2a91	ff 	. 
	rst 38h			;2a92	ff 	. 
	ld bc,l000fh		;2a93	01 0f 00 	. . . 
	ld bc,sub_0300h		;2a96	01 00 03 	. . . 
	rra			;2a99	1f 	. 
	nop			;2a9a	00 	. 
	inc b			;2a9b	04 	. 
	rst 38h			;2a9c	ff 	. 
	inc e			;2a9d	1c 	. 
	jr l2ac0h		;2a9e	18 20 	.   
	ld b,b			;2aa0	40 	@ 
	rst 38h			;2aa1	ff 	. 
	nop			;2aa2	00 	. 
	ld h,b			;2aa3	60 	` 
	nop			;2aa4	00 	. 
	ld bc,l1fffh		;2aa5	01 ff 1f 	. . . 
	rlca			;2aa8	07 	. 
	rst 38h			;2aa9	ff 	. 
	inc bc			;2aaa	03 	. 
	jp l3363h		;2aab	c3 63 33 	. c 3 
	ret po			;2aae	e0 	. 
	ld h,b			;2aaf	60 	` 
	ld (hl),b			;2ab0	70 	p 
	jr nc,$+114		;2ab1	30 70 	0 p 
	defb 0fdh,0ffh,0ffh	;illegal sequence		;2ab3	fd ff ff 	. . . 
	rst 38h			;2ab6	ff 	. 
	rla			;2ab7	17 	. 
	cpl			;2ab8	2f 	/ 
	ld a,a			;2ab9	7f 	 
	ccf			;2aba	3f 	? 
	nop			;2abb	00 	. 
	inc bc			;2abc	03 	. 
	rst 38h			;2abd	ff 	. 
	nop			;2abe	00 	. 
	nop			;2abf	00 	. 
l2ac0h:
	nop			;2ac0	00 	. 
	rlca			;2ac1	07 	. 
	nop			;2ac2	00 	. 
	jr c,l2ac5h		;2ac3	38 00 	8 . 
l2ac5h:
	inc b			;2ac5	04 	. 
	nop			;2ac6	00 	. 
	ex af,af'			;2ac7	08 	. 
	djnz $+1		;2ac8	10 ff 	. . 
	jr nz,l2ad2h		;2aca	20 06 	  . 
	ld bc,04080h		;2acc	01 80 40 	. . @ 
	jr nc,l2ae0h		;2acf	30 0f 	0 . 
	nop			;2ad1	00 	. 
l2ad2h:
	inc b			;2ad2	04 	. 
	nop			;2ad3	00 	. 
	ld bc,003ffh		;2ad4	01 ff 03 	. . . 
	ld c,0fch		;2ad7	0e fc 	. . 
	rst 38h			;2ad9	ff 	. 
	nop			;2ada	00 	. 
	rrca			;2adb	0f 	. 
	ld bc,sub_0300h		;2adc	01 00 03 	. . . 
	nop			;2adf	00 	. 
l2ae0h:
	ld b,059h		;2ae0	06 59 	. Y 
	rst 38h			;2ae2	ff 	. 
	nop			;2ae3	00 	. 
	add a,b			;2ae4	80 	. 
	ret po			;2ae5	e0 	. 
	ld h,b			;2ae6	60 	` 
	rst 38h			;2ae7	ff 	. 
	ld b,b			;2ae8	40 	@ 
	nop			;2ae9	00 	. 
	ld bc,0f000h		;2aea	01 00 f0 	. . . 
	rst 38h			;2aed	ff 	. 
	ret nz			;2aee	c0 	. 
	add a,b			;2aef	80 	. 
	ld h,b			;2af0	60 	` 
	jr c,l2b02h		;2af1	38 0f 	8 . 
	nop			;2af3	00 	. 
	inc bc			;2af4	03 	. 
	nop			;2af5	00 	. 
	djnz l2b14h		;2af6	10 1c 	. . 
	ld (hl),0e3h		;2af8	36 e3 	6 . 
	add a,b			;2afa	80 	. 
	nop			;2afb	00 	. 
	ld bc,07800h		;2afc	01 00 78 	. . x 
	inc c			;2aff	0c 	. 
	ld b,003h		;2b00	06 03 	. . 
l2b02h:
	ld bc,0ff03h		;2b02	01 03 ff 	. . . 
	ld b,000h		;2b05	06 00 	. . 
	inc b			;2b07	04 	. 
	nop			;2b08	00 	. 
	rst 38h			;2b09	ff 	. 
	add a,b			;2b0a	80 	. 
	rst 38h			;2b0b	ff 	. 
	nop			;2b0c	00 	. 
	rst 38h			;2b0d	ff 	. 
	inc b			;2b0e	04 	. 
	nop			;2b0f	00 	. 
	inc bc			;2b10	03 	. 
	nop			;2b11	00 	. 
	rst 18h			;2b12	df 	. 
	ld a,c			;2b13	79 	y 
l2b14h:
	nop			;2b14	00 	. 
	ld bc,l0100h		;2b15	01 00 01 	. . . 
	rrca			;2b18	0f 	. 
	nop			;2b19	00 	. 
	ld bc,sub_0300h		;2b1a	01 00 03 	. . . 
	rra			;2b1d	1f 	. 
	cp 0f0h		;2b1e	fe f0 	. . 
	nop			;2b20	00 	. 
	ld bc,sub_0300h		;2b21	01 00 03 	. . . 
	inc b			;2b24	04 	. 
	jr l2b47h		;2b25	18 20 	.   
	ld b,b			;2b27	40 	@ 
	rst 38h			;2b28	ff 	. 
	nop			;2b29	00 	. 
	ld h,b			;2b2a	60 	` 
	add a,b			;2b2b	80 	. 
	nop			;2b2c	00 	. 
	inc b			;2b2d	04 	. 
	nop			;2b2e	00 	. 
	jp nz,l3262h		;2b2f	c2 62 32 	. b 2 
	ret po			;2b32	e0 	. 
	ld h,b			;2b33	60 	` 
	ld (hl),b			;2b34	70 	p 
	jr nc,l2ba7h		;2b35	30 70 	0 p 
	defb 0fdh,01fh,000h	;illegal sequence		;2b37	fd 1f 00 	. . . 
	ld bc,0ff00h		;2b3a	01 00 ff 	. . . 
	ld d,02eh		;2b3d	16 2e 	. . 
	ld a,h			;2b3f	7c 	| 
	jr c,$-30		;2b40	38 e0 	8 . 
	rst 38h			;2b42	ff 	. 
	nop			;2b43	00 	. 
	nop			;2b44	00 	. 
	nop			;2b45	00 	. 
	nop			;2b46	00 	. 
l2b47h:
	nop			;2b47	00 	. 
	nop			;2b48	00 	. 
	nop			;2b49	00 	. 
	nop			;2b4a	00 	. 
	nop			;2b4b	00 	. 
	nop			;2b4c	00 	. 
	nop			;2b4d	00 	. 
	nop			;2b4e	00 	. 
	rlca			;2b4f	07 	. 
	rst 38h			;2b50	ff 	. 
	defb 0fdh,000h,007h	;illegal sequence		;2b51	fd 00 07 	. . . 
	rst 38h			;2b54	ff 	. 
	ld a,a			;2b55	7f 	 
	nop			;2b56	00 	. 
	ex af,af'			;2b57	08 	. 
	cp 000h		;2b58	fe 00 	. . 
	ex af,af'			;2b5a	08 	. 
	cp a			;2b5b	bf 	. 
	nop			;2b5c	00 	. 
	ld bc,0ebffh		;2b5d	01 ff eb 	. . . 
	push af			;2b60	f5 	. 
	nop			;2b61	00 	. 
	dec b			;2b62	05 	. 
	sub 000h		;2b63	d6 00 	. . 
	inc b			;2b65	04 	. 
	rst 38h			;2b66	ff 	. 
	di			;2b67	f3 	. 
	nop			;2b68	00 	. 
	inc bc			;2b69	03 	. 
	push af			;2b6a	f5 	. 
	nop			;2b6b	00 	. 
	ex af,af'			;2b6c	08 	. 
	sub 0ffh		;2b6d	d6 ff 	. . 
	push af			;2b6f	f5 	. 
	push hl			;2b70	e5 	. 
	adc a,c			;2b71	89 	. 
	di			;2b72	f3 	. 
	add a,a			;2b73	87 	. 
	rst 38h			;2b74	ff 	. 
	rst 38h			;2b75	ff 	. 
	cp 000h		;2b76	fe 00 	. . 
	ld bc,0ffffh		;2b78	01 ff ff 	. . . 
	cp 000h		;2b7b	fe 00 	. . 
	inc b			;2b7d	04 	. 
	rst 38h			;2b7e	ff 	. 
	sbc a,a			;2b7f	9f 	. 
	ld b,b			;2b80	40 	@ 
	cp a			;2b81	bf 	. 
	ld a,a			;2b82	7f 	 
	nop			;2b83	00 	. 
	ld bc,l0000h		;2b84	01 00 00 	. . . 
	add hl,bc			;2b87	09 	. 
	rst 38h			;2b88	ff 	. 
	cp 0fbh		;2b89	fe fb 	. . 
	nop			;2b8b	00 	. 
	rlca			;2b8c	07 	. 
	rst 38h			;2b8d	ff 	. 
	ld a,a			;2b8e	7f 	 
	sub 076h		;2b8f	d6 76 	. v 
	rst 38h			;2b91	ff 	. 
	or 036h		;2b92	f6 36 	. 6 
	rst 38h			;2b94	ff 	. 
	or 0d6h		;2b95	f6 d6 	. . 
	nop			;2b97	00 	. 
	ex af,af'			;2b98	08 	. 
	rst 38h			;2b99	ff 	. 
	nop			;2b9a	00 	. 
	ex af,af'			;2b9b	08 	. 
	sub 000h		;2b9c	d6 00 	. . 
	djnz $+1		;2b9e	10 ff 	. . 
	cp a			;2ba0	bf 	. 
	sbc a,a			;2ba1	9f 	. 
	adc a,a			;2ba2	8f 	. 
	nop			;2ba3	00 	. 
	ld bc,0bfffh		;2ba4	01 ff bf 	. . . 
l2ba7h:
	rrca			;2ba7	0f 	. 
	rlca			;2ba8	07 	. 
	nop			;2ba9	00 	. 
	ld a,(bc)			;2baa	0a 	. 
	rst 38h			;2bab	ff 	. 
	rra			;2bac	1f 	. 
	rrca			;2bad	0f 	. 
	rst 38h			;2bae	ff 	. 
	rst 38h			;2baf	ff 	. 
	rra			;2bb0	1f 	. 
	rrca			;2bb1	0f 	. 
	rst 38h			;2bb2	ff 	. 
	rst 38h			;2bb3	ff 	. 
	ld a,a			;2bb4	7f 	 
	rst 38h			;2bb5	ff 	. 
	ccf			;2bb6	3f 	? 
	sbc a,a			;2bb7	9f 	. 
	rst 18h			;2bb8	df 	. 
	rst 8			;2bb9	cf 	. 
	rst 28h			;2bba	ef 	. 
	rst 20h			;2bbb	e7 	. 
	rst 30h			;2bbc	f7 	. 
	rst 38h			;2bbd	ff 	. 
	ei			;2bbe	fb 	. 
	nop			;2bbf	00 	. 
	inc c			;2bc0	0c 	. 
	rst 38h			;2bc1	ff 	. 
	ccf			;2bc2	3f 	? 
	adc a,a			;2bc3	8f 	. 
	add a,a			;2bc4	87 	. 
	nop			;2bc5	00 	. 
	ld bc,083ffh		;2bc6	01 ff 83 	. . . 
	jp 08300h		;2bc9	c3 00 83 	. . . 
	rst 38h			;2bcc	ff 	. 
	jp c,0eff7h		;2bcd	da f7 ef 	. . . 
	ld a,a			;2bd0	7f 	 
	push af			;2bd1	f5 	. 
	nop			;2bd2	00 	. 
	ld bc,0f7ffh		;2bd3	01 ff f7 	. . . 
	ei			;2bd6	fb 	. 
	rst 28h			;2bd7	ef 	. 
	ei			;2bd8	fb 	. 
	rst 28h			;2bd9	ef 	. 
	cp a			;2bda	bf 	. 
	rst 18h			;2bdb	df 	. 
	push af			;2bdc	f5 	. 
	nop			;2bdd	00 	. 
	ld bc,0dfffh		;2bde	01 ff df 	. . . 
	nop			;2be1	00 	. 
	ld bc,0bfffh		;2be2	01 ff bf 	. . . 
	rst 18h			;2be5	df 	. 
	ex de,hl			;2be6	eb 	. 
	nop			;2be7	00 	. 
	ld bc,0bdffh		;2be8	01 ff bd 	. . . 
	rst 38h			;2beb	ff 	. 
	rst 38h			;2bec	ff 	. 
	cp l			;2bed	bd 	. 
	rst 30h			;2bee	f7 	. 
	cp a			;2bef	bf 	. 
	xor 000h		;2bf0	ee 00 	. . 
	ld bc,0f7ffh		;2bf2	01 ff f7 	. . . 
	cp a			;2bf5	bf 	. 
	rst 38h			;2bf6	ff 	. 
	rst 38h			;2bf7	ff 	. 
	rst 30h			;2bf8	f7 	. 
	ei			;2bf9	fb 	. 
	nop			;2bfa	00 	. 
	inc c			;2bfb	0c 	. 
	in a,(0d3h)		;2bfc	db d3 	. . 
	and a			;2bfe	a7 	. 
	rst 0			;2bff	c7 	. 
	rrca			;2c00	0f 	. 
	rra			;2c01	1f 	. 
	nop			;2c02	00 	. 
	inc bc			;2c03	03 	. 
	rst 38h			;2c04	ff 	. 
	rst 38h			;2c05	ff 	. 
	rra			;2c06	1f 	. 
	sbc a,a			;2c07	9f 	. 
	rst 8			;2c08	cf 	. 
	rst 38h			;2c09	ff 	. 
	rst 28h			;2c0a	ef 	. 
	nop			;2c0b	00 	. 
	inc bc			;2c0c	03 	. 
	rst 38h			;2c0d	ff 	. 
	jp c,0eff7h		;2c0e	da f7 ef 	. . . 
	ld a,a			;2c11	7f 	 
	push af			;2c12	f5 	. 
	nop			;2c13	00 	. 
	ld bc,0f7ffh		;2c14	01 ff f7 	. . . 
	ei			;2c17	fb 	. 
	rst 28h			;2c18	ef 	. 
	ei			;2c19	fb 	. 
	rst 28h			;2c1a	ef 	. 
	cp a			;2c1b	bf 	. 
	rst 18h			;2c1c	df 	. 
	push af			;2c1d	f5 	. 
	nop			;2c1e	00 	. 
	ld bc,0dfffh		;2c1f	01 ff df 	. . . 
	nop			;2c22	00 	. 
	ld bc,0bfffh		;2c23	01 ff bf 	. . . 
	rst 18h			;2c26	df 	. 
	ex de,hl			;2c27	eb 	. 
	nop			;2c28	00 	. 
	ld bc,0bdffh		;2c29	01 ff bd 	. . . 
	rst 38h			;2c2c	ff 	. 
	rst 38h			;2c2d	ff 	. 
	cp l			;2c2e	bd 	. 
	rst 30h			;2c2f	f7 	. 
	cp a			;2c30	bf 	. 
	xor 000h		;2c31	ee 00 	. . 
	ld bc,0f7ffh		;2c33	01 ff f7 	. . . 
	cp a			;2c36	bf 	. 
	nop			;2c37	00 	. 
	ld bc,0daffh		;2c38	01 ff da 	. . . 
	rst 30h			;2c3b	f7 	. 
	rst 28h			;2c3c	ef 	. 
	ld a,a			;2c3d	7f 	 
	push af			;2c3e	f5 	. 
	nop			;2c3f	00 	. 
	ld bc,0f7ffh		;2c40	01 ff f7 	. . . 
	ei			;2c43	fb 	. 
	rst 28h			;2c44	ef 	. 
	ei			;2c45	fb 	. 
	rst 28h			;2c46	ef 	. 
	cp a			;2c47	bf 	. 
	rst 18h			;2c48	df 	. 
	push af			;2c49	f5 	. 
	nop			;2c4a	00 	. 
	ld bc,0dfffh		;2c4b	01 ff df 	. . . 
	nop			;2c4e	00 	. 
	ld bc,0bfffh		;2c4f	01 ff bf 	. . . 
	rst 18h			;2c52	df 	. 
	ex de,hl			;2c53	eb 	. 
	nop			;2c54	00 	. 
	ld bc,0bdffh		;2c55	01 ff bd 	. . . 
	rst 38h			;2c58	ff 	. 
	rst 38h			;2c59	ff 	. 
	cp l			;2c5a	bd 	. 
	rst 30h			;2c5b	f7 	. 
	cp a			;2c5c	bf 	. 
	xor 000h		;2c5d	ee 00 	. . 
	ld bc,0f7ffh		;2c5f	01 ff f7 	. . . 
	cp a			;2c62	bf 	. 
	ret m			;2c63	f8 	. 
	call m,l0600h		;2c64	fc 00 06 	. . . 
	rst 38h			;2c67	ff 	. 
	rst 38h			;2c68	ff 	. 
	ld bc,l0600h		;2c69	01 00 06 	. . . 
	rst 38h			;2c6c	ff 	. 
	nop			;2c6d	00 	. 
	rlca			;2c6e	07 	. 
	sub 000h		;2c6f	d6 00 	. . 
	add hl,bc			;2c71	09 	. 
	rst 38h			;2c72	ff 	. 
	nop			;2c73	00 	. 
	jr nz,l2c76h		;2c74	20 00 	  . 
l2c76h:
	nop			;2c76	00 	. 
	inc c			;2c77	0c 	. 
	rst 38h			;2c78	ff 	. 
	ret p			;2c79	f0 	. 
	ret nz			;2c7a	c0 	. 
	cp a			;2c7b	bf 	. 
	nop			;2c7c	00 	. 
	dec b			;2c7d	05 	. 
	rst 38h			;2c7e	ff 	. 
	call m,0f0f8h		;2c7f	fc f8 f0 	. . . 
	ex (sp),hl			;2c82	e3 	. 
	nop			;2c83	00 	. 
	ld bc,0feffh		;2c84	01 ff fe 	. . . 
	ret nz			;2c87	c0 	. 
	rst 38h			;2c88	ff 	. 
	nop			;2c89	00 	. 
	rra			;2c8a	1f 	. 
	nop			;2c8b	00 	. 
	ld b,0ffh		;2c8c	06 ff 	. . 
	ccf			;2c8e	3f 	? 
	rrca			;2c8f	0f 	. 
	add a,e			;2c90	83 	. 
	pop hl			;2c91	e1 	. 
	nop			;2c92	00 	. 
	ld b,0fbh		;2c93	06 fb 	. . 
	ld sp,hl			;2c95	f9 	. 
	ret m			;2c96	f8 	. 
	ret p			;2c97	f0 	. 
	ld a,h			;2c98	7c 	| 
	inc a			;2c99	3c 	< 
	ld e,000h		;2c9a	1e 00 	. . 
	dec b			;2c9c	05 	. 
	rst 38h			;2c9d	ff 	. 
	ld a,b			;2c9e	78 	x 
	jr nz,$+1		;2c9f	20 ff 	  . 
	nop			;2ca1	00 	. 
	rst 38h			;2ca2	ff 	. 
	add a,b			;2ca3	80 	. 
	jp l0600h		;2ca4	c3 00 06 	. . . 
	rst 38h			;2ca7	ff 	. 
	call m,sub_00e0h		;2ca8	fc e0 00 	. . . 
	ld b,0ffh		;2cab	06 ff 	. . 
	ccf			;2cad	3f 	? 
	rlca			;2cae	07 	. 
	nop			;2caf	00 	. 
	inc b			;2cb0	04 	. 
	nop			;2cb1	00 	. 
	rlca			;2cb2	07 	. 
	rra			;2cb3	1f 	. 
	rst 38h			;2cb4	ff 	. 
	rst 38h			;2cb5	ff 	. 
	ld bc,sub_0300h		;2cb6	01 00 03 	. . . 
	nop			;2cb9	00 	. 
	ret po			;2cba	e0 	. 
	nop			;2cbb	00 	. 
	inc bc			;2cbc	03 	. 
	rst 38h			;2cbd	ff 	. 
	nop			;2cbe	00 	. 
	dec b			;2cbf	05 	. 
	ld a,a			;2cc0	7f 	 
	ld bc,0ffffh		;2cc1	01 ff ff 	. . . 
	rst 10h			;2cc4	d7 	. 
	call nc,0dcdfh		;2cc5	d4 df dc 	. . . 
	rst 18h			;2cc8	df 	. 
	call c,0d7ffh		;2cc9	dc ff d7 	. . . 
	nop			;2ccc	00 	. 
	ld bc,07fffh		;2ccd	01 ff 7f 	. .  
	rra			;2cd0	1f 	. 
	rrca			;2cd1	0f 	. 
	rlca			;2cd2	07 	. 
	add a,a			;2cd3	87 	. 
	jp l00e1h		;2cd4	c3 e1 00 	. . . 
	ld bc,003ffh		;2cd7	01 ff 03 	. . . 
	nop			;2cda	00 	. 
	ld bc,l00ffh		;2cdb	01 ff 00 	. . . 
	ld bc,l0000h		;2cde	01 00 00 	. . . 
	ld bc,l00ffh		;2ce1	01 ff 00 	. . . 
	ld bc,0ff00h		;2ce4	01 00 ff 	. . . 
	rst 38h			;2ce7	ff 	. 
	rst 0			;2ce8	c7 	. 
	rst 8			;2ce9	cf 	. 
	sbc a,a			;2cea	9f 	. 
	cp a			;2ceb	bf 	. 
	nop			;2cec	00 	. 
	ld bc,0feffh		;2ced	01 ff fe 	. . . 
	call m,sub_00f8h		;2cf0	fc f8 00 	. . . 
	ld bc,0fcffh		;2cf3	01 ff fc 	. . . 
	ret po			;2cf6	e0 	. 
	add a,b			;2cf7	80 	. 
	nop			;2cf8	00 	. 
	ld bc,sub_0300h		;2cf9	01 00 03 	. . . 
	rrca			;2cfc	0f 	. 
	rra			;2cfd	1f 	. 
	ret p			;2cfe	f0 	. 
	ret po			;2cff	e0 	. 
	pop hl			;2d00	e1 	. 
	rst 0			;2d01	c7 	. 
	rst 18h			;2d02	df 	. 
	cp a			;2d03	bf 	. 
	rst 38h			;2d04	ff 	. 
	rst 38h			;2d05	ff 	. 
	ccf			;2d06	3f 	? 
	nop			;2d07	00 	. 
	rlca			;2d08	07 	. 
	rst 38h			;2d09	ff 	. 
	inc bc			;2d0a	03 	. 
	rrca			;2d0b	0f 	. 
	ccf			;2d0c	3f 	? 
	ld a,a			;2d0d	7f 	 
	nop			;2d0e	00 	. 
	inc b			;2d0f	04 	. 
	rst 38h			;2d10	ff 	. 
	ex (sp),hl			;2d11	e3 	. 
	rst 38h			;2d12	ff 	. 
	rst 38h			;2d13	ff 	. 
	call m,0d3e1h		;2d14	fc e1 d3 	. . . 
	ex de,hl			;2d17	eb 	. 
	pop de			;2d18	d1 	. 
	nop			;2d19	00 	. 
	ex af,af'			;2d1a	08 	. 
	rst 38h			;2d1b	ff 	. 
	ret pe			;2d1c	e8 	. 
	call nc,0f4e8h		;2d1d	d4 e8 f4 	. . . 
	jp pe,0faf5h		;2d20	ea f5 fa 	. . . 
	nop			;2d23	00 	. 
	ld bc,0d3ffh		;2d24	01 ff d3 	. . . 
	and b			;2d27	a0 	. 
	di			;2d28	f3 	. 
	jp 0b161h		;2d29	c3 61 b1 	. a . 
	or b			;2d2c	b0 	. 
	defb 0ddh,000h,001h	;illegal sequence		;2d2d	dd 00 01 	. . . 
	rst 38h			;2d30	ff 	. 
	ld a,a			;2d31	7f 	 
	ccf			;2d32	3f 	? 
	and e			;2d33	a3 	. 
	rst 38h			;2d34	ff 	. 
	sub b			;2d35	90 	. 
	jr nc,l2d94h		;2d36	30 5c 	0 \ 
	jp c,sub_0300h		;2d38	da 00 03 	. . . 
	rra			;2d3b	1f 	. 
	rst 38h			;2d3c	ff 	. 
	ccf			;2d3d	3f 	? 
	rst 38h			;2d3e	ff 	. 
	rst 38h			;2d3f	ff 	. 
	cp (hl)			;2d40	be 	. 
	ld a,a			;2d41	7f 	 
	nop			;2d42	00 	. 
	ld b,0ffh		;2d43	06 ff 	. . 
	ret p			;2d45	f0 	. 
	ret m			;2d46	f8 	. 
	call m,0ffffh		;2d47	fc ff ff 	. . . 
	ld a,a			;2d4a	7f 	 
	rst 38h			;2d4b	ff 	. 
	ccf			;2d4c	3f 	? 
	nop			;2d4d	00 	. 
	ld a,(bc)			;2d4e	0a 	. 
	nop			;2d4f	00 	. 
	add a,b			;2d50	80 	. 
	nop			;2d51	00 	. 
	ld bc,0ff00h		;2d52	01 00 ff 	. . . 
	add a,b			;2d55	80 	. 
	rst 38h			;2d56	ff 	. 
	nop			;2d57	00 	. 
	nop			;2d58	00 	. 
	ex af,af'			;2d59	08 	. 
	ld c,00fh		;2d5a	0e 0f 	. . 
	inc sp			;2d5c	33 	3 
	ld b,a			;2d5d	47 	G 
	ld c,a			;2d5e	4f 	O 
	adc a,a			;2d5f	8f 	. 
	rst 38h			;2d60	ff 	. 
	sbc a,(hl)			;2d61	9e 	. 
	sbc a,l			;2d62	9d 	. 
	nop			;2d63	00 	. 
	ld bc,0cfffh		;2d64	01 ff cf 	. . . 
	or b			;2d67	b0 	. 
	rst 38h			;2d68	ff 	. 
	ld b,b			;2d69	40 	@ 
	rst 38h			;2d6a	ff 	. 
	add a,b			;2d6b	80 	. 
	nop			;2d6c	00 	. 
	ld bc,0ff00h		;2d6d	01 00 ff 	. . . 
	rst 38h			;2d70	ff 	. 
	nop			;2d71	00 	. 
	ld b,000h		;2d72	06 00 	. . 
	ret m			;2d74	f8 	. 
	and 079h		;2d75	e6 79 	. y 
	dec e			;2d77	1d 	. 
	dec c			;2d78	0d 	. 
	nop			;2d79	00 	. 
	inc bc			;2d7a	03 	. 
	rrca			;2d7b	0f 	. 
	nop			;2d7c	00 	. 
	ret nz			;2d7d	c0 	. 
	rst 38h			;2d7e	ff 	. 
	nop			;2d7f	00 	. 
	jr nz,l2d82h		;2d80	20 00 	  . 
l2d82h:
	nop			;2d82	00 	. 
	jr c,$+1		;2d83	38 ff 	8 . 
	nop			;2d85	00 	. 
	nop			;2d86	00 	. 
	nop			;2d87	00 	. 
	djnz $+1		;2d88	10 ff 	. . 
	nop			;2d8a	00 	. 
	ex af,af'			;2d8b	08 	. 
	ld sp,hl			;2d8c	f9 	. 
	nop			;2d8d	00 	. 
	add hl,bc			;2d8e	09 	. 
	rst 38h			;2d8f	ff 	. 
	rst 18h			;2d90	df 	. 
	adc a,a			;2d91	8f 	. 
	nop			;2d92	00 	. 
	dec b			;2d93	05 	. 
l2d94h:
	dec hl			;2d94	2b 	+ 
	nop			;2d95	00 	. 
	dec b			;2d96	05 	. 
	rst 38h			;2d97	ff 	. 
	nop			;2d98	00 	. 
	inc bc			;2d99	03 	. 
	rst 28h			;2d9a	ef 	. 
	nop			;2d9b	00 	. 
	ex af,af'			;2d9c	08 	. 
	dec hl			;2d9d	2b 	+ 
	rst 28h			;2d9e	ef 	. 
	adc a,a			;2d9f	8f 	. 
	sbc a,a			;2da0	9f 	. 
	nop			;2da1	00 	. 
	dec b			;2da2	05 	. 
	rst 38h			;2da3	ff 	. 
	ld sp,hl			;2da4	f9 	. 
	ret m			;2da5	f8 	. 
	ld sp,hl			;2da6	f9 	. 
	defb 0fdh,0fch,0feh	;illegal sequence		;2da7	fd fc fe 	. . . 
	nop			;2daa	00 	. 
	inc b			;2dab	04 	. 
	rst 38h			;2dac	ff 	. 
	ld a,a			;2dad	7f 	 
	add a,b			;2dae	80 	. 
	nop			;2daf	00 	. 
	ld bc,l00ffh		;2db0	01 ff 00 	. . . 
l2db3h:
	ld bc,08000h		;2db3	01 00 80 	. . . 
	nop			;2db6	00 	. 
	rlca			;2db7	07 	. 
	rst 38h			;2db8	ff 	. 
	di			;2db9	f3 	. 
	push hl			;2dba	e5 	. 
	nop			;2dbb	00 	. 
	ex af,af'			;2dbc	08 	. 
	rst 38h			;2dbd	ff 	. 
	ex de,hl			;2dbe	eb 	. 
	xor e			;2dbf	ab 	. 
	in a,(01bh)		;2dc0	db 1b 	. . 
	in a,(01bh)		;2dc2	db 1b 	. . 
	dec hl			;2dc4	2b 	+ 
sub_2dc5h:
	ex de,hl			;2dc5	eb 	. 
	nop			;2dc6	00 	. 
	ex af,af'			;2dc7	08 	. 
	rst 38h			;2dc8	ff 	. 
	nop			;2dc9	00 	. 
	ex af,af'			;2dca	08 	. 
	dec hl			;2dcb	2b 	+ 
	nop			;2dcc	00 	. 
	ex af,af'			;2dcd	08 	. 
	rst 38h			;2dce	ff 	. 
	nop			;2dcf	00 	. 
	inc bc			;2dd0	03 	. 
	ret p			;2dd1	f0 	. 
sub_2dd2h:
	nop			;2dd2	00 	. 
	ld bc,l00ffh		;2dd3	01 ff 00 	. . . 
	inc bc			;2dd6	03 	. 
	ret p			;2dd7	f0 	. 
	nop			;2dd8	00 	. 
	ld bc,l3fffh		;2dd9	01 ff 3f 	. . ? 
	rra			;2ddc	1f 	. 
	rrca			;2ddd	0f 	. 
	add a,e			;2dde	83 	. 
	ccf			;2ddf	3f 	? 
	rrca			;2de0	0f 	. 
	rlca			;2de1	07 	. 
	inc bc			;2de2	03 	. 
	ret p			;2de3	f0 	. 
	rst 38h			;2de4	ff 	. 
	ret po			;2de5	e0 	. 
	nop			;2de6	00 	. 
	ld bc,l00ffh		;2de7	01 ff 00 	. . . 
	inc bc			;2dea	03 	. 
	ret po			;2deb	e0 	. 
	nop			;2dec	00 	. 
	ld bc,07fffh		;2ded	01 ff 7f 	. .  
	rra			;2df0	1f 	. 
	rrca			;2df1	0f 	. 
	add a,e			;2df2	83 	. 
	ld a,a			;2df3	7f 	 
	rra			;2df4	1f 	. 
	rrca			;2df5	0f 	. 
	jp l0400h		;2df6	c3 00 04 	. . . 
	rst 38h			;2df9	ff 	. 
	ld a,a			;2dfa	7f 	 
	rst 38h			;2dfb	ff 	. 
	ccf			;2dfc	3f 	? 
	sbc a,a			;2dfd	9f 	. 
	rst 18h			;2dfe	df 	. 
	rst 28h			;2dff	ef 	. 
	rst 38h			;2e00	ff 	. 
	rst 30h			;2e01	f7 	. 
	rst 38h			;2e02	ff 	. 
	ei			;2e03	fb 	. 
	rst 38h			;2e04	ff 	. 
	rst 38h			;2e05	ff 	. 
	nop			;2e06	00 	. 
	inc bc			;2e07	03 	. 
	ret po			;2e08	e0 	. 
	nop			;2e09	00 	. 
	ld bc,l00ffh		;2e0a	01 ff 00 	. . . 
	inc bc			;2e0d	03 	. 
	ret nz			;2e0e	c0 	. 
	nop			;2e0f	00 	. 
	ld bc,l3fffh		;2e10	01 ff 3f 	. . ? 
	rrca			;2e13	0f 	. 
	rlca			;2e14	07 	. 
	rst 0			;2e15	c7 	. 
	nop			;2e16	00 	. 
	inc bc			;2e17	03 	. 
	inc bc			;2e18	03 	. 
	rst 38h			;2e19	ff 	. 
	rst 38h			;2e1a	ff 	. 
	call m,0fff0h		;2e1b	fc f0 ff 	. . . 
	ret po			;2e1e	e0 	. 
	rst 38h			;2e1f	ff 	. 
	ret nz			;2e20	c0 	. 
	ret m			;2e21	f8 	. 
	nop			;2e22	00 	. 
	ld bc,l3fffh		;2e23	01 ff 3f 	. . ? 
	ld c,004h		;2e26	0e 04 	. . 
	ex af,af'			;2e28	08 	. 
	djnz $+1		;2e29	10 ff 	. . 
	jr nz,l2db3h		;2e2b	20 86 	  . 
	ld bc,l00ffh		;2e2d	01 ff 00 	. . . 
	add a,b			;2e30	80 	. 
	ret nz			;2e31	c0 	. 
	ret p			;2e32	f0 	. 
	nop			;2e33	00 	. 
	ld bc,l00ffh		;2e34	01 ff 00 	. . . 
	ld b,000h		;2e37	06 00 	. . 
	ld bc,l0003h		;2e39	01 03 00 	. . . 
	ld bc,081ffh		;2e3c	01 ff 81 	. . . 
	nop			;2e3f	00 	. 
	ld b,000h		;2e40	06 00 	. . 
	nop			;2e42	00 	. 
	ld bc,0f8ffh		;2e43	01 ff f8 	. . . 
	ret po			;2e46	e0 	. 
	rst 38h			;2e47	ff 	. 
	ld b,b			;2e48	40 	@ 
	rst 38h			;2e49	ff 	. 
	jr nz,l2e4ch		;2e4a	20 00 	  . 
l2e4ch:
	ld bc,l3000h		;2e4c	01 00 30 	. . 0 
	ld b,b			;2e4f	40 	@ 
	nop			;2e50	00 	. 
	inc b			;2e51	04 	. 
	add a,b			;2e52	80 	. 
	ret nz			;2e53	c0 	. 
	ret p			;2e54	f0 	. 
	nop			;2e55	00 	. 
	dec b			;2e56	05 	. 
	nop			;2e57	00 	. 
	ex af,af'			;2e58	08 	. 
	inc e			;2e59	1c 	. 
	ld a,a			;2e5a	7f 	 
	rlca			;2e5b	07 	. 
	inc bc			;2e5c	03 	. 
	rst 38h			;2e5d	ff 	. 
	ld bc,0ff02h		;2e5e	01 02 ff 	. . . 
	inc b			;2e61	04 	. 
	ex af,af'			;2e62	08 	. 
	nop			;2e63	00 	. 
	ld bc,0f0ffh		;2e64	01 ff f0 	. . . 
	ret nz			;2e67	c0 	. 
	add a,b			;2e68	80 	. 
	nop			;2e69	00 	. 
	inc b			;2e6a	04 	. 
	nop			;2e6b	00 	. 
	ex af,af'			;2e6c	08 	. 
	nop			;2e6d	00 	. 
	dec b			;2e6e	05 	. 
	nop			;2e6f	00 	. 
	inc bc			;2e70	03 	. 
	rrca			;2e71	0f 	. 
	nop			;2e72	00 	. 
	inc bc			;2e73	03 	. 
	nop			;2e74	00 	. 
	djnz l2e97h		;2e75	10 20 	.   
	ret nz			;2e77	c0 	. 
	nop			;2e78	00 	. 
	ld bc,0c000h		;2e79	01 00 c0 	. . . 
	nop			;2e7c	00 	. 
	ld bc,07fffh		;2e7d	01 ff 7f 	. .  
	rra			;2e80	1f 	. 
	ex af,af'			;2e81	08 	. 
	inc b			;2e82	04 	. 
	ld (bc),a			;2e83	02 	. 
	rst 38h			;2e84	ff 	. 
	ld bc,l0400h		;2e85	01 00 04 	. . . 
	rst 38h			;2e88	ff 	. 
	ccf			;2e89	3f 	? 
	rrca			;2e8a	0f 	. 
	rlca			;2e8b	07 	. 
	inc bc			;2e8c	03 	. 
	nop			;2e8d	00 	. 
	dec b			;2e8e	05 	. 
	nop			;2e8f	00 	. 
	ret nz			;2e90	c0 	. 
	jr nc,l2e93h		;2e91	30 00 	0 . 
l2e93h:
	ld bc,003ffh		;2e93	01 ff 03 	. . . 
	nop			;2e96	00 	. 
l2e97h:
	inc bc			;2e97	03 	. 
	ld bc,l0701h+2		;2e98	01 03 07 	. . . 
	rra			;2e9b	1f 	. 
	rst 38h			;2e9c	ff 	. 
	rst 38h			;2e9d	ff 	. 
	jp c,0eff7h		;2e9e	da f7 ef 	. . . 
	ld a,a			;2ea1	7f 	 
	push af			;2ea2	f5 	. 
	nop			;2ea3	00 	. 
	ld bc,0f7ffh		;2ea4	01 ff f7 	. . . 
	ei			;2ea7	fb 	. 
	rst 28h			;2ea8	ef 	. 
	ei			;2ea9	fb 	. 
	rst 28h			;2eaa	ef 	. 
	cp a			;2eab	bf 	. 
	rst 18h			;2eac	df 	. 
	push af			;2ead	f5 	. 
	nop			;2eae	00 	. 
	ld bc,0dfffh		;2eaf	01 ff df 	. . . 
	nop			;2eb2	00 	. 
	ld bc,0bfffh		;2eb3	01 ff bf 	. . . 
	rst 18h			;2eb6	df 	. 
	ex de,hl			;2eb7	eb 	. 
	nop			;2eb8	00 	. 
	ld bc,0bdffh		;2eb9	01 ff bd 	. . . 
	rst 38h			;2ebc	ff 	. 
	rst 38h			;2ebd	ff 	. 
	cp l			;2ebe	bd 	. 
	rst 30h			;2ebf	f7 	. 
	cp a			;2ec0	bf 	. 
	xor 000h		;2ec1	ee 00 	. . 
	ld bc,0f7ffh		;2ec3	01 ff f7 	. . . 
	cp a			;2ec6	bf 	. 
	rst 38h			;2ec7	ff 	. 
	rst 38h			;2ec8	ff 	. 
	sbc a,a			;2ec9	9f 	. 
	rrca			;2eca	0f 	. 
	nop			;2ecb	00 	. 
	inc c			;2ecc	0c 	. 
	cpl			;2ecd	2f 	/ 
	ccf			;2ece	3f 	? 
	ld a,e			;2ecf	7b 	{ 
	ei			;2ed0	fb 	. 
	rst 30h			;2ed1	f7 	. 
	rst 20h			;2ed2	e7 	. 
	rrca			;2ed3	0f 	. 
	ccf			;2ed4	3f 	? 
	nop			;2ed5	00 	. 
	inc bc			;2ed6	03 	. 
	rst 38h			;2ed7	ff 	. 
	ld a,a			;2ed8	7f 	 
	ccf			;2ed9	3f 	? 
	sbc a,a			;2eda	9f 	. 
	rst 18h			;2edb	df 	. 
	rst 28h			;2edc	ef 	. 
	rst 38h			;2edd	ff 	. 
	rst 38h			;2ede	ff 	. 
	jp c,0eff7h		;2edf	da f7 ef 	. . . 
	ld a,a			;2ee2	7f 	 
	push af			;2ee3	f5 	. 
	nop			;2ee4	00 	. 
	ld bc,0f7ffh		;2ee5	01 ff f7 	. . . 
	ei			;2ee8	fb 	. 
	rst 28h			;2ee9	ef 	. 
	ei			;2eea	fb 	. 
	rst 28h			;2eeb	ef 	. 
	cp a			;2eec	bf 	. 
	rst 18h			;2eed	df 	. 
	push af			;2eee	f5 	. 
	nop			;2eef	00 	. 
	ld bc,0dfffh		;2ef0	01 ff df 	. . . 
	nop			;2ef3	00 	. 
	ld bc,0bfffh		;2ef4	01 ff bf 	. . . 
	rst 18h			;2ef7	df 	. 
	ex de,hl			;2ef8	eb 	. 
	nop			;2ef9	00 	. 
	ld bc,0bdffh		;2efa	01 ff bd 	. . . 
	rst 38h			;2efd	ff 	. 
	rst 38h			;2efe	ff 	. 
	cp l			;2eff	bd 	. 
	rst 30h			;2f00	f7 	. 
	cp a			;2f01	bf 	. 
	xor 000h		;2f02	ee 00 	. . 
	ld bc,0f7ffh		;2f04	01 ff f7 	. . . 
	cp a			;2f07	bf 	. 
	nop			;2f08	00 	. 
	ld bc,0daffh		;2f09	01 ff da 	. . . 
	rst 30h			;2f0c	f7 	. 
	rst 28h			;2f0d	ef 	. 
	ld a,a			;2f0e	7f 	 
	push af			;2f0f	f5 	. 
	nop			;2f10	00 	. 
	ld bc,0f7ffh		;2f11	01 ff f7 	. . . 
	ei			;2f14	fb 	. 
	rst 28h			;2f15	ef 	. 
	ei			;2f16	fb 	. 
	rst 28h			;2f17	ef 	. 
	cp a			;2f18	bf 	. 
	rst 18h			;2f19	df 	. 
	push af			;2f1a	f5 	. 
	nop			;2f1b	00 	. 
	ld bc,0dfffh		;2f1c	01 ff df 	. . . 
	nop			;2f1f	00 	. 
	ld bc,0bfffh		;2f20	01 ff bf 	. . . 
	rst 18h			;2f23	df 	. 
	ex de,hl			;2f24	eb 	. 
	nop			;2f25	00 	. 
	ld bc,0bdffh		;2f26	01 ff bd 	. . . 
l2f29h:
	rst 38h			;2f29	ff 	. 
	rst 38h			;2f2a	ff 	. 
	cp l			;2f2b	bd 	. 
	rst 30h			;2f2c	f7 	. 
	cp a			;2f2d	bf 	. 
	xor 000h		;2f2e	ee 00 	. . 
	ld bc,0f7ffh		;2f30	01 ff f7 	. . . 
	cp a			;2f33	bf 	. 
	rst 30h			;2f34	f7 	. 
	ei			;2f35	fb 	. 
	cp 000h		;2f36	fe 00 	. . 
	rlca			;2f38	07 	. 
	rst 38h			;2f39	ff 	. 
	ld bc,sub_0500h		;2f3a	01 00 05 	. . . 
	rst 38h			;2f3d	ff 	. 
	nop			;2f3e	00 	. 
	rlca			;2f3f	07 	. 
	dec hl			;2f40	2b 	+ 
	nop			;2f41	00 	. 
	add hl,bc			;2f42	09 	. 
	rst 38h			;2f43	ff 	. 
	nop			;2f44	00 	. 
	jr nz,l2f47h		;2f45	20 00 	  . 
l2f47h:
	nop			;2f47	00 	. 
	ld c,0ffh		;2f48	0e ff 	. . 
	ret nz			;2f4a	c0 	. 
	cp 000h		;2f4b	fe 00 	. . 
	rlca			;2f4d	07 	. 
	rst 38h			;2f4e	ff 	. 
	call m,sub_0500h		;2f4f	fc 00 05 	. . . 
	rst 38h			;2f52	ff 	. 
	ret po			;2f53	e0 	. 
	rst 38h			;2f54	ff 	. 
	nop			;2f55	00 	. 
	nop			;2f56	00 	. 
	ld b,0ffh		;2f57	06 ff 	. . 
	ld a,a			;2f59	7f 	 
	rra			;2f5a	1f 	. 
	nop			;2f5b	00 	. 
	ld b,0e5h		;2f5c	06 e5 	. . 
	and 0f7h		;2f5e	e6 f7 	. . 
	adc a,a			;2f60	8f 	. 
	jp 0f1e3h		;2f61	c3 e3 f1 	. . . 
	jr l2f6eh		;2f64	18 08 	. . 
	inc b			;2f66	04 	. 
	call m,sub_0500h		;2f67	fc 00 05 	. . . 
	rst 38h			;2f6a	ff 	. 
	rst 38h			;2f6b	ff 	. 
	ld a,a			;2f6c	7f 	 
	inc a			;2f6d	3c 	< 
l2f6eh:
	nop			;2f6e	00 	. 
	inc d			;2f6f	14 	. 
	rst 38h			;2f70	ff 	. 
	ret m			;2f71	f8 	. 
	ret po			;2f72	e0 	. 
	nop			;2f73	00 	. 
	ld bc,0fc00h		;2f74	01 00 fc 	. . . 
	nop			;2f77	00 	. 
	inc b			;2f78	04 	. 
	rst 38h			;2f79	ff 	. 
	rra			;2f7a	1f 	. 
	rst 38h			;2f7b	ff 	. 
	nop			;2f7c	00 	. 
	rra			;2f7d	1f 	. 
	nop			;2f7e	00 	. 
	inc b			;2f7f	04 	. 
	rst 38h			;2f80	ff 	. 
	cp a			;2f81	bf 	. 
	rst 38h			;2f82	ff 	. 
	rst 38h			;2f83	ff 	. 
	ld bc,l2f29h		;2f84	01 29 2f 	. ) / 
	rst 38h			;2f87	ff 	. 
	dec hl			;2f88	2b 	+ 
	jr z,l2fb6h		;2f89	28 2b 	( + 
	inc l			;2f8b	2c 	, 
	dec hl			;2f8c	2b 	+ 
	nop			;2f8d	00 	. 
	dec b			;2f8e	05 	. 
	rst 38h			;2f8f	ff 	. 
	ld a,a			;2f90	7f 	 
	ccf			;2f91	3f 	? 
	rra			;2f92	1f 	. 
	cp 0fch		;2f93	fe fc 	. . 
	rst 38h			;2f95	ff 	. 
	rst 38h			;2f96	ff 	. 
	nop			;2f97	00 	. 
	ld bc,l0000h		;2f98	01 00 00 	. . . 
	ld bc,l00ffh		;2f9b	01 ff 00 	. . . 
	ld bc,l0000h		;2f9e	01 00 00 	. . . 
	ld bc,0f8ffh		;2fa1	01 ff f8 	. . . 
	ret p			;2fa4	f0 	. 
	rst 20h			;2fa5	e7 	. 
	rst 18h			;2fa6	df 	. 
	nop			;2fa7	00 	. 
	inc b			;2fa8	04 	. 
	rst 38h			;2fa9	ff 	. 
	rrca			;2faa	0f 	. 
	nop			;2fab	00 	. 
	inc b			;2fac	04 	. 
	rst 38h			;2fad	ff 	. 
	call m,0e0f0h		;2fae	fc f0 e0 	. . . 
	rst 38h			;2fb1	ff 	. 
	rst 38h			;2fb2	ff 	. 
	cp 0f8h		;2fb3	fe f8 	. . 
	ret po			;2fb5	e0 	. 
l2fb6h:
	rst 0			;2fb6	c7 	. 
	cp a			;2fb7	bf 	. 
	nop			;2fb8	00 	. 
	ld bc,0c0ffh		;2fb9	01 ff c0 	. . . 
	inc bc			;2fbc	03 	. 
	rrca			;2fbd	0f 	. 
	ccf			;2fbe	3f 	? 
	nop			;2fbf	00 	. 
	inc b			;2fc0	04 	. 
	rst 38h			;2fc1	ff 	. 
	cp 0f2h		;2fc2	fe f2 	. . 
	jp nz,0ff85h		;2fc4	c2 85 ff 	. . . 
	ld c,01ch		;2fc7	0e 1c 	. . 
	inc a			;2fc9	3c 	< 
	rra			;2fca	1f 	. 
	inc a			;2fcb	3c 	< 
	jp sub_0500h		;2fcc	c3 00 05 	. . . 
	nop			;2fcf	00 	. 
	nop			;2fd0	00 	. 
	inc bc			;2fd1	03 	. 
	call m,0feffh		;2fd2	fc ff fe 	. . . 
	nop			;2fd5	00 	. 
	ld bc,0f8ffh		;2fd6	01 ff f8 	. . . 
	ret p			;2fd9	f0 	. 
	nop			;2fda	00 	. 
	ld b,000h		;2fdb	06 00 	. . 
	ret nz			;2fdd	c0 	. 
	ccf			;2fde	3f 	? 
	inc bc			;2fdf	03 	. 
	rst 38h			;2fe0	ff 	. 
	nop			;2fe1	00 	. 
	add a,b			;2fe2	80 	. 
	ld b,b			;2fe3	40 	@ 
	rst 38h			;2fe4	ff 	. 
	jr nz,l2ff7h		;2fe5	20 10 	  . 
	nop			;2fe7	00 	. 
	ld bc,07fffh		;2fe8	01 ff 7f 	. .  
	rst 38h			;2feb	ff 	. 
	ccf			;2fec	3f 	? 
	nop			;2fed	00 	. 
	inc bc			;2fee	03 	. 
	rra			;2fef	1f 	. 
	inc de			;2ff0	13 	. 
	nop			;2ff1	00 	. 
	inc bc			;2ff2	03 	. 
	djnz l300dh		;2ff3	10 18 	. . 
	rst 38h			;2ff5	ff 	. 
	ccf			;2ff6	3f 	? 
l2ff7h:
	ld a,a			;2ff7	7f 	 
	nop			;2ff8	00 	. 
	ld bc,l11ffh		;2ff9	01 ff 11 	. . . 
	djnz $+34		;2ffc	10 20 	.   
	ld a,h			;2ffe	7c 	| 
	nop			;2fff	00 	. 
l3000h:
	inc b			;3000	04 	. 
	rst 38h			;3001	ff 	. 
	rst 8			;3002	cf 	. 
	rst 20h			;3003	e7 	. 
	di			;3004	f3 	. 
	ret m			;3005	f8 	. 
	call m,0fffeh		;3006	fc fe ff 	. . . 
	rst 38h			;3009	ff 	. 
	nop			;300a	00 	. 
	djnz l300dh		;300b	10 00 	. . 
l300dh:
	nop			;300d	00 	. 
	ex af,af'			;300e	08 	. 
	ld c,00fh		;300f	0e 0f 	. . 
	inc a			;3011	3c 	< 
	ld a,b			;3012	78 	x 
	ld (hl),b			;3013	70 	p 
	ret p			;3014	f0 	. 
	nop			;3015	00 	. 
	inc bc			;3016	03 	. 
	ret po			;3017	e0 	. 
	nop			;3018	00 	. 
	ld bc,l0fffh		;3019	01 ff 0f 	. . . 
	nop			;301c	00 	. 
	ld b,000h		;301d	06 00 	. . 
	rst 38h			;301f	ff 	. 
	rst 38h			;3020	ff 	. 
	nop			;3021	00 	. 
	ld b,000h		;3022	06 00 	. . 
	ret m			;3024	f8 	. 
	and 069h		;3025	e6 69 	. i 
	dec d			;3027	15 	. 
	dec b			;3028	05 	. 
	rst 38h			;3029	ff 	. 
	dec bc			;302a	0b 	. 
	rrca			;302b	0f 	. 
	ret nz			;302c	c0 	. 
	ret po			;302d	e0 	. 
	rst 38h			;302e	ff 	. 
	ret p			;302f	f0 	. 
	nop			;3030	00 	. 
	inc b			;3031	04 	. 
	ret po			;3032	e0 	. 
	nop			;3033	00 	. 
	ld bc,0fcffh		;3034	01 ff fc 	. . . 
	ret p			;3037	f0 	. 
	ret po			;3038	e0 	. 
	ret nz			;3039	c0 	. 
	rst 38h			;303a	ff 	. 
	add a,b			;303b	80 	. 
	nop			;303c	00 	. 
	ld bc,0e000h		;303d	01 00 e0 	. . . 
	rst 38h			;3040	ff 	. 
	ret p			;3041	f0 	. 
	call m,l0400h		;3042	fc 00 04 	. . . 
	rst 38h			;3045	ff 	. 
	nop			;3046	00 	. 
	ld b,000h		;3047	06 00 	. . 
	rst 38h			;3049	ff 	. 
	add a,b			;304a	80 	. 
	nop			;304b	00 	. 
	ld bc,l0fffh		;304c	01 ff 0f 	. . . 
	inc bc			;304f	03 	. 
	nop			;3050	00 	. 
	dec b			;3051	05 	. 
	nop			;3052	00 	. 
	nop			;3053	00 	. 
	ld bc,0feffh		;3054	01 ff fe 	. . . 
	ret m			;3057	f8 	. 
	ret p			;3058	f0 	. 
	ld h,b			;3059	60 	` 
	jr nz,l305ch		;305a	20 00 	  . 
l305ch:
	add hl,bc			;305c	09 	. 
	nop			;305d	00 	. 
	inc bc			;305e	03 	. 
	nop			;305f	00 	. 
	ld bc,0ff00h		;3060	01 00 ff 	. . . 
	ld bc,l0701h+2		;3063	01 03 07 	. . . 
	rra			;3066	1f 	. 
	ld a,a			;3067	7f 	 
	rst 38h			;3068	ff 	. 
	rst 38h			;3069	ff 	. 
	rrca			;306a	0f 	. 
	rst 38h			;306b	ff 	. 
	inc bc			;306c	03 	. 
	nop			;306d	00 	. 
	inc bc			;306e	03 	. 
	ld bc,l0100h		;306f	01 00 01 	. . . 
	nop			;3072	00 	. 
	ld (bc),a			;3073	02 	. 
sub_3074h:
	rlca			;3074	07 	. 
	rra			;3075	1f 	. 
	ld a,a			;3076	7f 	 
	nop			;3077	00 	. 
	inc b			;3078	04 	. 
	rst 38h			;3079	ff 	. 
	nop			;307a	00 	. 
	inc b			;307b	04 	. 
	nop			;307c	00 	. 
	inc bc			;307d	03 	. 
	nop			;307e	00 	. 
	inc b			;307f	04 	. 
	rst 38h			;3080	ff 	. 
	rrca			;3081	0f 	. 
	inc bc			;3082	03 	. 
	nop			;3083	00 	. 
	rlca			;3084	07 	. 
	nop			;3085	00 	. 
	add a,b			;3086	80 	. 
	ret po			;3087	e0 	. 
	ret m			;3088	f8 	. 
	nop			;3089	00 	. 
	inc bc			;308a	03 	. 
	rst 38h			;308b	ff 	. 
	rst 38h			;308c	ff 	. 
	nop			;308d	00 	. 
	ld bc,l3f07h		;308e	01 07 3f 	. . ? 
	nop			;3091	00 	. 
	inc b			;3092	04 	. 
	rst 38h			;3093	ff 	. 
	cp 0f8h		;3094	fe f8 	. . 
	ret p			;3096	f0 	. 
	ld h,b			;3097	60 	` 
	jr nz,$+1		;3098	20 ff 	  . 
	nop			;309a	00 	. 
	nop			;309b	00 	. 
	ld bc,l0fffh		;309c	01 ff 0f 	. . . 
	rst 38h			;309f	ff 	. 
	inc bc			;30a0	03 	. 
	ld bc,sub_0300h		;30a1	01 00 03 	. . . 
	nop			;30a4	00 	. 
	cp 0f8h		;30a5	fe f8 	. . 
	ret p			;30a7	f0 	. 
	rst 38h			;30a8	ff 	. 
	ret po			;30a9	e0 	. 
	nop			;30aa	00 	. 
	inc bc			;30ab	03 	. 
	ret nz			;30ac	c0 	. 
	nop			;30ad	00 	. 
	ex af,af'			;30ae	08 	. 
	nop			;30af	00 	. 
	ret nz			;30b0	c0 	. 
	rst 38h			;30b1	ff 	. 
	ret po			;30b2	e0 	. 
	ret m			;30b3	f8 	. 
	cp 000h		;30b4	fe 00 	. . 
	inc bc			;30b6	03 	. 
	rst 38h			;30b7	ff 	. 
	rst 38h			;30b8	ff 	. 
	nop			;30b9	00 	. 
	ld (bc),a			;30ba	02 	. 
	ld b,01fh		;30bb	06 1f 	. . 
	nop			;30bd	00 	. 
	inc bc			;30be	03 	. 
	rst 38h			;30bf	ff 	. 
	nop			;30c0	00 	. 
	ld c,000h		;30c1	0e 00 	. . 
	rst 38h			;30c3	ff 	. 
	ld bc,l0400h		;30c4	01 00 04 	. . . 
	nop			;30c7	00 	. 
	inc bc			;30c8	03 	. 
	nop			;30c9	00 	. 
	inc bc			;30ca	03 	. 
	rst 38h			;30cb	ff 	. 
	inc bc			;30cc	03 	. 
	rlca			;30cd	07 	. 
	rra			;30ce	1f 	. 
	ld a,a			;30cf	7f 	 
	nop			;30d0	00 	. 
	inc b			;30d1	04 	. 
	rst 38h			;30d2	ff 	. 
	nop			;30d3	00 	. 
	jr nz,l30d6h		;30d4	20 00 	  . 
l30d6h:
	ld a,a			;30d6	7f 	 
	nop			;30d7	00 	. 
	ex af,af'			;30d8	08 	. 
	rst 38h			;30d9	ff 	. 
	call m,0e0f0h		;30da	fc f0 e0 	. . . 
	ret nz			;30dd	c0 	. 
	rst 38h			;30de	ff 	. 
	add a,b			;30df	80 	. 
	nop			;30e0	00 	. 
	ld bc,l0000h		;30e1	01 00 00 	. . . 
	ld bc,l0fffh		;30e4	01 ff 0f 	. . . 
	inc bc			;30e7	03 	. 
	nop			;30e8	00 	. 
	dec b			;30e9	05 	. 
	nop			;30ea	00 	. 
	nop			;30eb	00 	. 
	ld bc,0feffh		;30ec	01 ff fe 	. . . 
	ret m			;30ef	f8 	. 
	ret p			;30f0	f0 	. 
	ld h,b			;30f1	60 	` 
	jr nz,$+1		;30f2	20 ff 	  . 
	nop			;30f4	00 	. 
	nop			;30f5	00 	. 
	ld bc,l0fffh		;30f6	01 ff 0f 	. . . 
	rst 38h			;30f9	ff 	. 
	inc bc			;30fa	03 	. 
	ld bc,sub_0500h		;30fb	01 00 05 	. . . 
	nop			;30fe	00 	. 
	ld bc,l0f03h		;30ff	01 03 0f 	. . . 
	nop			;3102	00 	. 
	dec bc			;3103	0b 	. 
	rst 38h			;3104	ff 	. 
	nop			;3105	00 	. 
	nop			;3106	00 	. 
	nop			;3107	00 	. 
	rlca			;3108	07 	. 
	rst 38h			;3109	ff 	. 
	call m,00700h		;310a	fc 00 07 	. . . 
	rst 38h			;310d	ff 	. 
	ld a,a			;310e	7f 	 
	nop			;310f	00 	. 
	ex af,af'			;3110	08 	. 
	ret m			;3111	f8 	. 
	nop			;3112	00 	. 
	ex af,af'			;3113	08 	. 
	ccf			;3114	3f 	? 
	nop			;3115	00 	. 
	ld bc,0c7ffh		;3116	01 ff c7 	. . . 
	adc a,c			;3119	89 	. 
	nop			;311a	00 	. 
	dec b			;311b	05 	. 
l311ch:
	ex af,af'			;311c	08 	. 
	nop			;311d	00 	. 
	inc b			;311e	04 	. 
	rst 38h			;311f	ff 	. 
	ei			;3120	fb 	. 
	nop			;3121	00 	. 
	inc bc			;3122	03 	. 
	pop hl			;3123	e1 	. 
	nop			;3124	00 	. 
	ex af,af'			;3125	08 	. 
	ex af,af'			;3126	08 	. 
	pop hl			;3127	e1 	. 
	nop			;3128	00 	. 
	inc bc			;3129	03 	. 
	add a,c			;312a	81 	. 
	adc a,e			;312b	8b 	. 
	add a,a			;312c	87 	. 
	rst 38h			;312d	ff 	. 
	rst 38h			;312e	ff 	. 
	nop			;312f	00 	. 
	inc bc			;3130	03 	. 
	ret m			;3131	f8 	. 
	rst 38h			;3132	ff 	. 
	call m,0fffeh		;3133	fc fe ff 	. . . 
	rst 38h			;3136	ff 	. 
	rra			;3137	1f 	. 
	add a,b			;3138	80 	. 
	ld b,b			;3139	40 	@ 
	nop			;313a	00 	. 
	inc bc			;313b	03 	. 
	nop			;313c	00 	. 
	add a,b			;313d	80 	. 
	nop			;313e	00 	. 
	rlca			;313f	07 	. 
	rst 38h			;3140	ff 	. 
	ret p			;3141	f0 	. 
	ret po			;3142	e0 	. 
	nop			;3143	00 	. 
	rlca			;3144	07 	. 
	rst 38h			;3145	ff 	. 
	ld a,a			;3146	7f 	 
	ret nz			;3147	c0 	. 
	jr nz,l314ah		;3148	20 00 	  . 
l314ah:
	inc b			;314a	04 	. 
	djnz l316dh		;314b	10 20 	.   
	ret nz			;314d	c0 	. 
	nop			;314e	00 	. 
	ex af,af'			;314f	08 	. 
	rst 38h			;3150	ff 	. 
	nop			;3151	00 	. 
	ex af,af'			;3152	08 	. 
	nop			;3153	00 	. 
	nop			;3154	00 	. 
	djnz $+1		;3155	10 ff 	. . 
	jp 0f3e3h		;3157	c3 e3 f3 	. . . 
	nop			;315a	00 	. 
	ld bc,0c3ffh		;315b	01 ff c3 	. . . 
	di			;315e	f3 	. 
	ei			;315f	fb 	. 
	nop			;3160	00 	. 
	add hl,bc			;3161	09 	. 
	rst 38h			;3162	ff 	. 
	add a,e			;3163	83 	. 
	ex (sp),hl			;3164	e3 	. 
	di			;3165	f3 	. 
	nop			;3166	00 	. 
	ld bc,083ffh		;3167	01 ff 83 	. . . 
	ex (sp),hl			;316a	e3 	. 
	di			;316b	f3 	. 
	rst 38h			;316c	ff 	. 
l316dh:
	rst 38h			;316d	ff 	. 
	ld a,a			;316e	7f 	 
	rst 38h			;316f	ff 	. 
	ccf			;3170	3f 	? 
	rst 38h			;3171	ff 	. 
	rra			;3172	1f 	. 
	rrca			;3173	0f 	. 
	adc a,a			;3174	8f 	. 
	rst 0			;3175	c7 	. 
	rst 20h			;3176	e7 	. 
	rst 38h			;3177	ff 	. 
	di			;3178	f3 	. 
	rst 38h			;3179	ff 	. 
	ei			;317a	fb 	. 
	nop			;317b	00 	. 
	ld a,(bc)			;317c	0a 	. 
	rst 38h			;317d	ff 	. 
	jp 0fbf3h		;317e	c3 f3 fb 	. . . 
	nop			;3181	00 	. 
	ld b,0ffh		;3182	06 ff 	. . 
	call m,0fff0h		;3184	fc f0 ff 	. . . 
	ret po			;3187	e0 	. 
	rst 38h			;3188	ff 	. 
	ret nz			;3189	c0 	. 
	ret m			;318a	f8 	. 
	nop			;318b	00 	. 
	ld bc,l3fffh		;318c	01 ff 3f 	. . ? 
l318fh:
	ld c,004h		;318f	0e 04 	. . 
	ex af,af'			;3191	08 	. 
	djnz $+1		;3192	10 ff 	. . 
	jr nz,l311ch		;3194	20 86 	  . 
	ld bc,l00ffh		;3196	01 ff 00 	. . . 
	add a,b			;3199	80 	. 
	ret nz			;319a	c0 	. 
	ret p			;319b	f0 	. 
	nop			;319c	00 	. 
	ld bc,l00ffh		;319d	01 ff 00 	. . . 
	ld b,000h		;31a0	06 00 	. . 
	ld bc,l0003h		;31a2	01 03 00 	. . . 
	ld bc,081ffh		;31a5	01 ff 81 	. . . 
	nop			;31a8	00 	. 
	ld b,000h		;31a9	06 00 	. . 
	nop			;31ab	00 	. 
	ld bc,0f8ffh		;31ac	01 ff f8 	. . . 
	ret po			;31af	e0 	. 
	rst 38h			;31b0	ff 	. 
	ld b,b			;31b1	40 	@ 
	rst 38h			;31b2	ff 	. 
	jr nz,l31b5h		;31b3	20 00 	  . 
l31b5h:
	ld bc,l3000h		;31b5	01 00 30 	. . 0 
	ld b,b			;31b8	40 	@ 
	nop			;31b9	00 	. 
	inc b			;31ba	04 	. 
	add a,b			;31bb	80 	. 
	ret nz			;31bc	c0 	. 
	ret p			;31bd	f0 	. 
	nop			;31be	00 	. 
	dec b			;31bf	05 	. 
	nop			;31c0	00 	. 
	ex af,af'			;31c1	08 	. 
	inc e			;31c2	1c 	. 
	ld a,a			;31c3	7f 	 
	rlca			;31c4	07 	. 
	inc bc			;31c5	03 	. 
	rst 38h			;31c6	ff 	. 
	ld bc,0ff02h		;31c7	01 02 ff 	. . . 
	inc b			;31ca	04 	. 
	ex af,af'			;31cb	08 	. 
	nop			;31cc	00 	. 
	ld bc,0f0ffh		;31cd	01 ff f0 	. . . 
	ret nz			;31d0	c0 	. 
	add a,b			;31d1	80 	. 
	nop			;31d2	00 	. 
	inc b			;31d3	04 	. 
	nop			;31d4	00 	. 
l31d5h:
	ex af,af'			;31d5	08 	. 
	nop			;31d6	00 	. 
	dec b			;31d7	05 	. 
	nop			;31d8	00 	. 
	inc bc			;31d9	03 	. 
	rrca			;31da	0f 	. 
	nop			;31db	00 	. 
	inc bc			;31dc	03 	. 
	nop			;31dd	00 	. 
	djnz l3200h		;31de	10 20 	.   
	ret nz			;31e0	c0 	. 
	nop			;31e1	00 	. 
	ld bc,0c000h		;31e2	01 00 c0 	. . . 
	nop			;31e5	00 	. 
	ld bc,07fffh		;31e6	01 ff 7f 	. .  
	rra			;31e9	1f 	. 
	ex af,af'			;31ea	08 	. 
	inc b			;31eb	04 	. 
	ld (bc),a			;31ec	02 	. 
	rst 38h			;31ed	ff 	. 
	ld bc,l0400h		;31ee	01 00 04 	. . . 
	rst 38h			;31f1	ff 	. 
	ccf			;31f2	3f 	? 
	rrca			;31f3	0f 	. 
	rlca			;31f4	07 	. 
	inc bc			;31f5	03 	. 
	nop			;31f6	00 	. 
	dec b			;31f7	05 	. 
	nop			;31f8	00 	. 
	ret nz			;31f9	c0 	. 
	jr nc,l31fch		;31fa	30 00 	0 . 
l31fch:
	ld bc,003ffh		;31fc	01 ff 03 	. . . 
	nop			;31ff	00 	. 
l3200h:
	inc bc			;3200	03 	. 
l3201h:
	ld bc,l0701h+2		;3201	01 03 07 	. . . 
	rra			;3204	1f 	. 
	nop			;3205	00 	. 
	ld bc,l00ffh		;3206	01 ff 00 	. . . 
	ld bc,l2500h		;3209	01 00 25 	. . % 
	ex af,af'			;320c	08 	. 
	djnz l318fh		;320d	10 80 	. . 
	ld a,(bc)			;320f	0a 	. 
	nop			;3210	00 	. 
	ld bc,l0800h		;3211	01 00 08 	. . . 
	inc b			;3214	04 	. 
	djnz l321bh		;3215	10 04 	. . 
	djnz $+66		;3217	10 40 	. @ 
	jr nz,l3225h		;3219	20 0a 	  . 
l321bh:
	nop			;321b	00 	. 
	ld bc,l2000h		;321c	01 00 20 	. .   
	nop			;321f	00 	. 
	ld bc,04000h		;3220	01 00 40 	. . @ 
	jr nz,l3239h		;3223	20 14 	  . 
l3225h:
	nop			;3225	00 	. 
	ld bc,04200h		;3226	01 00 42 	. . B 
	rst 38h			;3229	ff 	. 
	nop			;322a	00 	. 
	ld b,d			;322b	42 	B 
	ex af,af'			;322c	08 	. 
	ld b,b			;322d	40 	@ 
	ld de,l0100h		;322e	11 00 01 	. . . 
	nop			;3231	00 	. 
	ex af,af'			;3232	08 	. 
	ld b,b			;3233	40 	@ 
	rst 38h			;3234	ff 	. 
	rst 38h			;3235	ff 	. 
	add a,a			;3236	87 	. 
	nop			;3237	00 	. 
	dec c			;3238	0d 	. 
l3239h:
	inc bc			;3239	03 	. 
	dec bc			;323a	0b 	. 
	dec de			;323b	1b 	. 
	inc sp			;323c	33 	3 
	rst 20h			;323d	e7 	. 
	rlca			;323e	07 	. 
	rrca			;323f	0f 	. 
	ccf			;3240	3f 	? 
	nop			;3241	00 	. 
	ld bc,l00ffh		;3242	01 ff 00 	. . . 
	inc bc			;3245	03 	. 
	rra			;3246	1f 	. 
	rrca			;3247	0f 	. 
	adc a,a			;3248	8f 	. 
	rst 8			;3249	cf 	. 
	rst 28h			;324a	ef 	. 
	nop			;324b	00 	. 
	ld bc,l00ffh		;324c	01 ff 00 	. . . 
	ld bc,l2500h		;324f	01 00 25 	. . % 
	ex af,af'			;3252	08 	. 
	djnz l31d5h		;3253	10 80 	. . 
	ld a,(bc)			;3255	0a 	. 
	nop			;3256	00 	. 
	ld bc,l0800h		;3257	01 00 08 	. . . 
	inc b			;325a	04 	. 
	djnz l3261h		;325b	10 04 	. . 
	djnz l329fh		;325d	10 40 	. @ 
	jr nz,l326bh		;325f	20 0a 	  . 
l3261h:
	nop			;3261	00 	. 
l3262h:
	ld bc,l2000h		;3262	01 00 20 	. .   
	nop			;3265	00 	. 
	ld bc,04000h		;3266	01 00 40 	. . @ 
	jr nz,l327fh		;3269	20 14 	  . 
l326bh:
	nop			;326b	00 	. 
	ld bc,04200h		;326c	01 00 42 	. . B 
	rst 38h			;326f	ff 	. 
	nop			;3270	00 	. 
	ld b,d			;3271	42 	B 
	ex af,af'			;3272	08 	. 
	ld b,b			;3273	40 	@ 
	ld de,l0100h		;3274	11 00 01 	. . . 
	nop			;3277	00 	. 
	ex af,af'			;3278	08 	. 
	ld b,b			;3279	40 	@ 
	nop			;327a	00 	. 
	ld bc,l2500h		;327b	01 00 25 	. . % 
	ex af,af'			;327e	08 	. 
l327fh:
	djnz l3201h		;327f	10 80 	. . 
	ld a,(bc)			;3281	0a 	. 
	nop			;3282	00 	. 
	ld bc,l0800h		;3283	01 00 08 	. . . 
	inc b			;3286	04 	. 
	djnz l328dh		;3287	10 04 	. . 
	djnz $+66		;3289	10 40 	. @ 
	jr nz,l3297h		;328b	20 0a 	  . 
l328dh:
	nop			;328d	00 	. 
	ld bc,l2000h		;328e	01 00 20 	. .   
	nop			;3291	00 	. 
	ld bc,04000h		;3292	01 00 40 	. . @ 
	jr nz,l32abh		;3295	20 14 	  . 
l3297h:
	nop			;3297	00 	. 
	ld bc,04200h		;3298	01 00 42 	. . B 
	rst 38h			;329b	ff 	. 
	nop			;329c	00 	. 
	ld b,d			;329d	42 	B 
	ex af,af'			;329e	08 	. 
l329fh:
	ld b,b			;329f	40 	@ 
	ld de,l0100h		;32a0	11 00 01 	. . . 
	nop			;32a3	00 	. 
	ex af,af'			;32a4	08 	. 
	ld b,b			;32a5	40 	@ 
	ret p			;32a6	f0 	. 
	ret m			;32a7	f8 	. 
	cp 000h		;32a8	fe 00 	. . 
	dec b			;32aa	05 	. 
l32abh:
	rst 38h			;32ab	ff 	. 
	nop			;32ac	00 	. 
	inc bc			;32ad	03 	. 
	ld bc,sub_0500h		;32ae	01 00 05 	. . . 
	rst 38h			;32b1	ff 	. 
	nop			;32b2	00 	. 
	rlca			;32b3	07 	. 
	nop			;32b4	00 	. 
	nop			;32b5	00 	. 
	add hl,bc			;32b6	09 	. 
	rst 38h			;32b7	ff 	. 
	nop			;32b8	00 	. 
	jr nz,l32bbh		;32b9	20 00 	  . 
l32bbh:
	nop			;32bb	00 	. 
	inc c			;32bc	0c 	. 
	rst 38h			;32bd	ff 	. 
	ret p			;32be	f0 	. 
	ret nz			;32bf	c0 	. 
	add a,b			;32c0	80 	. 
l32c1h:
	cp 000h		;32c1	fe 00 	. . 
	inc b			;32c3	04 	. 
	rst 38h			;32c4	ff 	. 
	call m,0f0f8h		;32c5	fc f8 f0 	. . . 
	ret po			;32c8	e0 	. 
	nop			;32c9	00 	. 
	ld bc,0feffh		;32ca	01 ff fe 	. . . 
	ret nz			;32cd	c0 	. 
	nop			;32ce	00 	. 
	dec b			;32cf	05 	. 
	nop			;32d0	00 	. 
	nop			;32d1	00 	. 
	inc b			;32d2	04 	. 
	rst 38h			;32d3	ff 	. 
	ccf			;32d4	3f 	? 
	rrca			;32d5	0f 	. 
	inc bc			;32d6	03 	. 
	ld bc,00700h		;32d7	01 00 07 	. . . 
	ret po			;32da	e0 	. 
	ret p			;32db	f0 	. 
	add a,b			;32dc	80 	. 
	ld b,b			;32dd	40 	@ 
	jr nz,$+18		;32de	20 10 	  . 
	jr l32eah		;32e0	18 08 	. . 
	inc b			;32e2	04 	. 
	call m,l0100h		;32e3	fc 00 01 	. . . 
	rst 38h			;32e6	ff 	. 
	ld a,b			;32e7	78 	x 
	jr nz,l32eah		;32e8	20 00 	  . 
l32eah:
	dec b			;32ea	05 	. 
	nop			;32eb	00 	. 
	nop			;32ec	00 	. 
	ld b,0ffh		;32ed	06 ff 	. . 
	call m,sub_00e0h		;32ef	fc e0 00 	. . . 
	ld b,0ffh		;32f2	06 ff 	. . 
	ccf			;32f4	3f 	? 
	rlca			;32f5	07 	. 
	nop			;32f6	00 	. 
	rlca			;32f7	07 	. 
	nop			;32f8	00 	. 
	call m,sub_0001h		;32f9	fc 01 00 	. . . 
	ld b,000h		;32fc	06 00 	. . 
	rra			;32fe	1f 	. 
	nop			;32ff	00 	. 
	inc b			;3300	04 	. 
	ld a,a			;3301	7f 	 
	ccf			;3302	3f 	? 
	add a,c			;3303	81 	. 
	nop			;3304	00 	. 
	inc bc			;3305	03 	. 
	ld bc,l0804h		;3306	01 04 08 	. . . 
	add hl,bc			;3309	09 	. 
	rst 38h			;330a	ff 	. 
	ex af,af'			;330b	08 	. 
	inc b			;330c	04 	. 
	inc bc			;330d	03 	. 
	nop			;330e	00 	. 
	ld bc,07fffh		;330f	01 ff 7f 	. .  
	rra			;3312	1f 	. 
	rrca			;3313	0f 	. 
	rst 38h			;3314	ff 	. 
	rlca			;3315	07 	. 
	inc bc			;3316	03 	. 
	ld bc,0fffeh		;3317	01 fe ff 	. . . 
	nop			;331a	00 	. 
	nop			;331b	00 	. 
	ld bc,l00ffh		;331c	01 ff 00 	. . . 
	inc bc			;331f	03 	. 
	nop			;3320	00 	. 
	nop			;3321	00 	. 
	ld bc,0ffffh		;3322	01 ff ff 	. . . 
	ret nz			;3325	c0 	. 
	add a,a			;3326	87 	. 
	sbc a,a			;3327	9f 	. 
	nop			;3328	00 	. 
	ld bc,0feffh		;3329	01 ff fe 	. . . 
	call m,00ff8h		;332c	fc f8 0f 	. . . 
	call m,080e0h		;332f	fc e0 80 	. . . 
	nop			;3332	00 	. 
	inc b			;3333	04 	. 
	nop			;3334	00 	. 
	ret p			;3335	f0 	. 
	rst 38h			;3336	ff 	. 
	ret po			;3337	e0 	. 
	rst 38h			;3338	ff 	. 
	ret nz			;3339	c0 	. 
	add a,a			;333a	87 	. 
	cp a			;333b	bf 	. 
	nop			;333c	00 	. 
	ld bc,l00ffh		;333d	01 ff 00 	. . . 
	ld bc,sub_0300h		;3340	01 00 03 	. . . 
	rrca			;3343	0f 	. 
	ccf			;3344	3f 	? 
	nop			;3345	00 	. 
	inc b			;3346	04 	. 
	rst 38h			;3347	ff 	. 
	nop			;3348	00 	. 
	inc bc			;3349	03 	. 
	ld (bc),a			;334a	02 	. 
	dec b			;334b	05 	. 
	rst 38h			;334c	ff 	. 
	rrca			;334d	0f 	. 
	rra			;334e	1f 	. 
	ccf			;334f	3f 	? 
	inc bc			;3350	03 	. 
	ccf			;3351	3f 	? 
	rst 38h			;3352	ff 	. 
	rst 38h			;3353	ff 	. 
	cp 0ffh		;3354	fe ff 	. . 
	call m,sub_00feh		;3356	fc fe 00 	. . . 
	ld (de),a			;3359	12 	. 
	rst 38h			;335a	ff 	. 
	rst 38h			;335b	ff 	. 
	call m,07efeh		;335c	fc fe 7e 	. . ~ 
	ld a,a			;335f	7f 	 
	ccf			;3360	3f 	? 
	nop			;3361	00 	. 
	inc bc			;3362	03 	. 
l3363h:
	rst 38h			;3363	ff 	. 
	ld h,e			;3364	63 	c 
	rst 38h			;3365	ff 	. 
	ld (hl),b			;3366	70 	p 
	rst 38h			;3367	ff 	. 
	ret p			;3368	f0 	. 
	ccf			;3369	3f 	? 
	nop			;336a	00 	. 
	rlca			;336b	07 	. 
	rst 38h			;336c	ff 	. 
	rst 38h			;336d	ff 	. 
	ret p			;336e	f0 	. 
	ret po			;336f	e0 	. 
	call m,l0400h		;3370	fc 00 04 	. . . 
	rst 38h			;3373	ff 	. 
	ret nz			;3374	c0 	. 
	ret po			;3375	e0 	. 
	ret p			;3376	f0 	. 
	ret m			;3377	f8 	. 
	call m,0ff7eh		;3378	fc 7e ff 	. ~ . 
	ccf			;337b	3f 	? 
	nop			;337c	00 	. 
	djnz $+1		;337d	10 ff 	. . 
	nop			;337f	00 	. 
	ex af,af'			;3380	08 	. 
	pop af			;3381	f1 	. 
	nop			;3382	00 	. 
	ld bc,0f3ffh		;3383	01 ff f3 	. . . 
	rst 0			;3386	c7 	. 
	rst 8			;3387	cf 	. 
	adc a,a			;3388	8f 	. 
	nop			;3389	00 	. 
	inc bc			;338a	03 	. 
	sbc a,a			;338b	9f 	. 
	nop			;338c	00 	. 
	ld bc,0f0ffh		;338d	01 ff f0 	. . . 
	nop			;3390	00 	. 
	rlca			;3391	07 	. 
	rst 38h			;3392	ff 	. 
	nop			;3393	00 	. 
	ld bc,l0000h		;3394	01 00 00 	. . . 
	rlca			;3397	07 	. 
	rst 38h			;3398	ff 	. 
	rra			;3399	1f 	. 
	add a,a			;339a	87 	. 
	ex (sp),hl			;339b	e3 	. 
	di			;339c	f3 	. 
	nop			;339d	00 	. 
	inc bc			;339e	03 	. 
	pop af			;339f	f1 	. 
	ret nz			;33a0	c0 	. 
	ret po			;33a1	e0 	. 
	rst 38h			;33a2	ff 	. 
	ret p			;33a3	f0 	. 
	nop			;33a4	00 	. 
	inc b			;33a5	04 	. 
	ret po			;33a6	e0 	. 
	nop			;33a7	00 	. 
	ld bc,0fcffh		;33a8	01 ff fc 	. . . 
	ret p			;33ab	f0 	. 
	ret po			;33ac	e0 	. 
	ret nz			;33ad	c0 	. 
	rst 38h			;33ae	ff 	. 
	add a,b			;33af	80 	. 
	nop			;33b0	00 	. 
	ld bc,0e000h		;33b1	01 00 e0 	. . . 
	rst 38h			;33b4	ff 	. 
	ret p			;33b5	f0 	. 
	call m,l0400h		;33b6	fc 00 04 	. . . 
	rst 38h			;33b9	ff 	. 
	nop			;33ba	00 	. 
	ld b,000h		;33bb	06 00 	. . 
	rst 38h			;33bd	ff 	. 
	add a,b			;33be	80 	. 
	nop			;33bf	00 	. 
	ld bc,l0fffh		;33c0	01 ff 0f 	. . . 
	inc bc			;33c3	03 	. 
	nop			;33c4	00 	. 
	dec b			;33c5	05 	. 
	nop			;33c6	00 	. 
	nop			;33c7	00 	. 
	ld bc,0feffh		;33c8	01 ff fe 	. . . 
	ret m			;33cb	f8 	. 
	ret p			;33cc	f0 	. 
	ld h,b			;33cd	60 	` 
	jr nz,l33d0h		;33ce	20 00 	  . 
l33d0h:
	add hl,bc			;33d0	09 	. 
	nop			;33d1	00 	. 
	inc bc			;33d2	03 	. 
	nop			;33d3	00 	. 
	ld bc,0ff00h		;33d4	01 00 ff 	. . . 
	ld bc,l0701h+2		;33d7	01 03 07 	. . . 
	rra			;33da	1f 	. 
	ld a,a			;33db	7f 	 
	rst 38h			;33dc	ff 	. 
	rst 38h			;33dd	ff 	. 
	rrca			;33de	0f 	. 
	rst 38h			;33df	ff 	. 
	inc bc			;33e0	03 	. 
	nop			;33e1	00 	. 
	inc bc			;33e2	03 	. 
	ld bc,l0100h		;33e3	01 00 01 	. . . 
	nop			;33e6	00 	. 
	ld (bc),a			;33e7	02 	. 
	rlca			;33e8	07 	. 
	rra			;33e9	1f 	. 
	ld a,a			;33ea	7f 	 
	nop			;33eb	00 	. 
	inc b			;33ec	04 	. 
	rst 38h			;33ed	ff 	. 
	nop			;33ee	00 	. 
	inc b			;33ef	04 	. 
	nop			;33f0	00 	. 
	inc bc			;33f1	03 	. 
	nop			;33f2	00 	. 
	inc b			;33f3	04 	. 
	rst 38h			;33f4	ff 	. 
	rrca			;33f5	0f 	. 
	inc bc			;33f6	03 	. 
	nop			;33f7	00 	. 
	rlca			;33f8	07 	. 
	nop			;33f9	00 	. 
	add a,b			;33fa	80 	. 
	ret po			;33fb	e0 	. 
	ret m			;33fc	f8 	. 
	nop			;33fd	00 	. 
	inc bc			;33fe	03 	. 
	rst 38h			;33ff	ff 	. 
	rst 38h			;3400	ff 	. 
	nop			;3401	00 	. 
	ld bc,l3f07h		;3402	01 07 3f 	. . ? 
	nop			;3405	00 	. 
	inc b			;3406	04 	. 
	rst 38h			;3407	ff 	. 
	cp 0f8h		;3408	fe f8 	. . 
	ret p			;340a	f0 	. 
	ld h,b			;340b	60 	` 
	jr nz,$+1		;340c	20 ff 	  . 
	nop			;340e	00 	. 
	nop			;340f	00 	. 
	ld bc,l0fffh		;3410	01 ff 0f 	. . . 
	rst 38h			;3413	ff 	. 
	inc bc			;3414	03 	. 
	ld bc,sub_0300h		;3415	01 00 03 	. . . 
	nop			;3418	00 	. 
	cp 0f8h		;3419	fe f8 	. . 
	ret p			;341b	f0 	. 
	rst 38h			;341c	ff 	. 
	ret po			;341d	e0 	. 
	nop			;341e	00 	. 
	inc bc			;341f	03 	. 
	ret nz			;3420	c0 	. 
	nop			;3421	00 	. 
	ex af,af'			;3422	08 	. 
	nop			;3423	00 	. 
	ret nz			;3424	c0 	. 
	rst 38h			;3425	ff 	. 
	ret po			;3426	e0 	. 
	ret m			;3427	f8 	. 
	cp 000h		;3428	fe 00 	. . 
	inc bc			;342a	03 	. 
	rst 38h			;342b	ff 	. 
	rst 38h			;342c	ff 	. 
	nop			;342d	00 	. 
	ld (bc),a			;342e	02 	. 
	ld b,01fh		;342f	06 1f 	. . 
	nop			;3431	00 	. 
	inc bc			;3432	03 	. 
	rst 38h			;3433	ff 	. 
	nop			;3434	00 	. 
	ld c,000h		;3435	0e 00 	. . 
	rst 38h			;3437	ff 	. 
	ld bc,l0400h		;3438	01 00 04 	. . . 
	nop			;343b	00 	. 
	inc bc			;343c	03 	. 
	nop			;343d	00 	. 
	inc bc			;343e	03 	. 
	rst 38h			;343f	ff 	. 
	inc bc			;3440	03 	. 
	rlca			;3441	07 	. 
	rra			;3442	1f 	. 
	ld a,a			;3443	7f 	 
	nop			;3444	00 	. 
	inc b			;3445	04 	. 
	rst 38h			;3446	ff 	. 
	nop			;3447	00 	. 
	jr nz,l344ah		;3448	20 00 	  . 
l344ah:
	ld a,a			;344a	7f 	 
	nop			;344b	00 	. 
	ex af,af'			;344c	08 	. 
	rst 38h			;344d	ff 	. 
	call m,0e0f0h		;344e	fc f0 e0 	. . . 
	ret nz			;3451	c0 	. 
	rst 38h			;3452	ff 	. 
	add a,b			;3453	80 	. 
	nop			;3454	00 	. 
	ld bc,l0000h		;3455	01 00 00 	. . . 
	ld bc,l0fffh		;3458	01 ff 0f 	. . . 
	inc bc			;345b	03 	. 
	nop			;345c	00 	. 
	dec b			;345d	05 	. 
	nop			;345e	00 	. 
	nop			;345f	00 	. 
	ld bc,0feffh		;3460	01 ff fe 	. . . 
	ret m			;3463	f8 	. 
	ret p			;3464	f0 	. 
	ld h,b			;3465	60 	` 
	jr nz,$+1		;3466	20 ff 	  . 
	nop			;3468	00 	. 
	nop			;3469	00 	. 
	ld bc,l0fffh		;346a	01 ff 0f 	. . . 
	rst 38h			;346d	ff 	. 
	inc bc			;346e	03 	. 
	ld bc,sub_0500h		;346f	01 00 05 	. . . 
	nop			;3472	00 	. 
	ld bc,l0f03h		;3473	01 03 0f 	. . . 
	nop			;3476	00 	. 
	ld b,0ffh		;3477	06 ff 	. . 
	rst 30h			;3479	f7 	. 
	nop			;347a	00 	. 
	inc b			;347b	04 	. 
	rst 38h			;347c	ff 	. 
	nop			;347d	00 	. 
	nop			;347e	00 	. 
	nop			;347f	00 	. 
	ld b,000h		;3480	06 00 	. . 
	inc bc			;3482	03 	. 
	ld b,000h		;3483	06 00 	. . 
	inc bc			;3485	03 	. 
	nop			;3486	00 	. 
	nop			;3487	00 	. 
	inc bc			;3488	03 	. 
	ld bc,0c181h		;3489	01 81 c1 	. . . 
	nop			;348c	00 	. 
	ex af,af'			;348d	08 	. 
	rrca			;348e	0f 	. 
	nop			;348f	00 	. 
	ex af,af'			;3490	08 	. 
	ld h,c			;3491	61 	a 
	inc a			;3492	3c 	< 
	ld (hl),d			;3493	72 	r 
	di			;3494	f3 	. 
	nop			;3495	00 	. 
	dec b			;3496	05 	. 
	push af			;3497	f5 	. 
	nop			;3498	00 	. 
	inc bc			;3499	03 	. 
	nop			;349a	00 	. 
	adc a,h			;349b	8c 	. 
	sub (hl)			;349c	96 	. 
	nop			;349d	00 	. 
	inc bc			;349e	03 	. 
	cp e			;349f	bb 	. 
	nop			;34a0	00 	. 
	ex af,af'			;34a1	08 	. 
	push af			;34a2	f5 	. 
	nop			;34a3	00 	. 
	inc bc			;34a4	03 	. 
	ei			;34a5	fb 	. 
	rst 30h			;34a6	f7 	. 
	add a,(hl)			;34a7	86 	. 
	call m,080f8h		;34a8	fc f8 80 	. . . 
	nop			;34ab	00 	. 
	inc bc			;34ac	03 	. 
	rrca			;34ad	0f 	. 
	rst 38h			;34ae	ff 	. 
	rlca			;34af	07 	. 
	inc bc			;34b0	03 	. 
	ld bc,l0100h		;34b1	01 00 01 	. . . 
	nop			;34b4	00 	. 
	ld a,a			;34b5	7f 	 
	ccf			;34b6	3f 	? 
	add a,b			;34b7	80 	. 
	nop			;34b8	00 	. 
	inc b			;34b9	04 	. 
	rst 38h			;34ba	ff 	. 
	ld a,a			;34bb	7f 	 
	nop			;34bc	00 	. 
	dec b			;34bd	05 	. 
	nop			;34be	00 	. 
	rrca			;34bf	0f 	. 
	dec e			;34c0	1d 	. 
	ld a,000h		;34c1	3e 00 	> . 
	ld b,001h		;34c3	06 01 	. . 
	add a,c			;34c5	81 	. 
	pop bc			;34c6	c1 	. 
	rst 38h			;34c7	ff 	. 
	defb 0fdh,03dh,000h	;illegal sequence		;34c8	fd 3d 00 	. = . 
	dec b			;34cb	05 	. 
	defb 0fdh,000h,003h	;illegal sequence		;34cc	fd 00 03 	. . . 
	add a,b			;34cf	80 	. 
	nop			;34d0	00 	. 
	dec b			;34d1	05 	. 
	add a,c			;34d2	81 	. 
	nop			;34d3	00 	. 
	ex af,af'			;34d4	08 	. 
	defb 0fdh,000h,008h	;illegal sequence		;34d5	fd 00 08 	. . . 
	add a,c			;34d8	81 	. 
	nop			;34d9	00 	. 
	inc bc			;34da	03 	. 
	rra			;34db	1f 	. 
	rrca			;34dc	0f 	. 
	nop			;34dd	00 	. 
	inc bc			;34de	03 	. 
	rra			;34df	1f 	. 
	rrca			;34e0	0f 	. 
	nop			;34e1	00 	. 
	inc bc			;34e2	03 	. 
	add a,d			;34e3	82 	. 
	call m,0ff82h		;34e4	fc 82 ff 	. . . 
	ld (bc),a			;34e7	02 	. 
	call m,sub_0300h		;34e8	fc 00 03 	. . . 
	ccf			;34eb	3f 	? 
	rra			;34ec	1f 	. 
	nop			;34ed	00 	. 
	inc bc			;34ee	03 	. 
	ccf			;34ef	3f 	? 
	rra			;34f0	1f 	. 
	add a,d			;34f1	82 	. 
	rst 38h			;34f2	ff 	. 
	ld (bc),a			;34f3	02 	. 
	call m,0ff82h		;34f4	fc 82 ff 	. . . 
	ld (bc),a			;34f7	02 	. 
	call m,0c080h		;34f8	fc 80 c0 	. . . 
	rst 38h			;34fb	ff 	. 
	ret po			;34fc	e0 	. 
	rst 38h			;34fd	ff 	. 
	ret p			;34fe	f0 	. 
	rst 38h			;34ff	ff 	. 
	ret m			;3500	f8 	. 
	ld a,h			;3501	7c 	| 
	inc a			;3502	3c 	< 
	rst 38h			;3503	ff 	. 
	ld e,0ffh		;3504	1e ff 	. . 
	ld c,004h		;3506	0e 04 	. . 
	nop			;3508	00 	. 
	ld bc,l0000h		;3509	01 00 00 	. . . 
	inc b			;350c	04 	. 
	ccf			;350d	3f 	? 
	nop			;350e	00 	. 
	inc b			;350f	04 	. 
	ld a,a			;3510	7f 	 
	ld (bc),a			;3511	02 	. 
	rst 38h			;3512	ff 	. 
	add a,d			;3513	82 	. 
	call m,0c282h		;3514	fc 82 c2 	. . . 
	rst 38h			;3517	ff 	. 
	cp 000h		;3518	fe 00 	. . 
	add a,b			;351a	80 	. 
	nop			;351b	00 	. 
	rst 30h			;351c	f7 	. 
	ei			;351d	fb 	. 
	cp a			;351e	bf 	. 
	ex de,hl			;351f	eb 	. 
	nop			;3520	00 	. 
	ld bc,0dfffh		;3521	01 ff df 	. . . 
	ei			;3524	fb 	. 
	or a			;3525	b7 	. 
	nop			;3526	00 	. 
	ld bc,0afffh		;3527	01 ff af 	. . . 
	nop			;352a	00 	. 
	ld bc,07dffh		;352b	01 ff 7d 	. . } 
	cp a			;352e	bf 	. 
	nop			;352f	00 	. 
	ld bc,0b7ffh		;3530	01 ff b7 	. . . 
	rst 38h			;3533	ff 	. 
	rst 38h			;3534	ff 	. 
	defb 0fdh,0afh,0feh	;illegal sequence		;3535	fd af fe 	. . . 
	ld l,a			;3538	6f 	o 
	nop			;3539	00 	. 
	ld bc,0f5ffh		;353a	01 ff f5 	. . . 
	nop			;353d	00 	. 
	ld bc,0efffh		;353e	01 ff ef 	. . . 
	defb 0fdh,000h,001h	;illegal sequence		;3541	fd 00 01 	. . . 
	rst 38h			;3544	ff 	. 
	cp e			;3545	bb 	. 
	nop			;3546	00 	. 
	ld bc,0dfffh		;3547	01 ff df 	. . . 
	nop			;354a	00 	. 
	ld bc,0bdffh		;354b	01 ff bd 	. . . 
	nop			;354e	00 	. 
	ld bc,07800h		;354f	01 00 78 	. . x 
	call pe,sub_0d00h		;3552	ec 00 0d 	. . . 
	or 0e6h		;3555	f6 e6 	. . 
	add a,00eh		;3557	c6 0e 	. . 
	inc e			;3559	1c 	. 
	call m,0f0f8h		;355a	fc f8 f0 	. . . 
	ret nz			;355d	c0 	. 
	nop			;355e	00 	. 
	inc bc			;355f	03 	. 
	ret p			;3560	f0 	. 
	rst 38h			;3561	ff 	. 
	ret m			;3562	f8 	. 
	ld a,b			;3563	78 	x 
	jr c,l357eh		;3564	38 18 	8 . 
	rst 30h			;3566	f7 	. 
	ei			;3567	fb 	. 
	cp a			;3568	bf 	. 
	ex de,hl			;3569	eb 	. 
	nop			;356a	00 	. 
	ld bc,0dfffh		;356b	01 ff df 	. . . 
	ei			;356e	fb 	. 
	or a			;356f	b7 	. 
	nop			;3570	00 	. 
	ld bc,0afffh		;3571	01 ff af 	. . . 
	nop			;3574	00 	. 
	ld bc,07dffh		;3575	01 ff 7d 	. . } 
	cp a			;3578	bf 	. 
	nop			;3579	00 	. 
	ld bc,0b7ffh		;357a	01 ff b7 	. . . 
	rst 38h			;357d	ff 	. 
l357eh:
	rst 38h			;357e	ff 	. 
	defb 0fdh,0afh,0feh	;illegal sequence		;357f	fd af fe 	. . . 
	ld l,a			;3582	6f 	o 
	nop			;3583	00 	. 
	ld bc,0f5ffh		;3584	01 ff f5 	. . . 
	nop			;3587	00 	. 
	ld bc,0efffh		;3588	01 ff ef 	. . . 
	defb 0fdh,000h,001h	;illegal sequence		;358b	fd 00 01 	. . . 
	rst 38h			;358e	ff 	. 
	cp e			;358f	bb 	. 
	nop			;3590	00 	. 
	ld bc,0dfffh		;3591	01 ff df 	. . . 
	nop			;3594	00 	. 
	ld bc,0bdffh		;3595	01 ff bd 	. . . 
	rst 30h			;3598	f7 	. 
	ei			;3599	fb 	. 
	cp a			;359a	bf 	. 
	ex de,hl			;359b	eb 	. 
	nop			;359c	00 	. 
	ld bc,0dfffh		;359d	01 ff df 	. . . 
	ei			;35a0	fb 	. 
	or a			;35a1	b7 	. 
	nop			;35a2	00 	. 
	ld bc,0afffh		;35a3	01 ff af 	. . . 
	nop			;35a6	00 	. 
	ld bc,07dffh		;35a7	01 ff 7d 	. . } 
	cp a			;35aa	bf 	. 
	nop			;35ab	00 	. 
	ld bc,0b7ffh		;35ac	01 ff b7 	. . . 
	rst 38h			;35af	ff 	. 
	rst 38h			;35b0	ff 	. 
	defb 0fdh,0afh,0feh	;illegal sequence		;35b1	fd af fe 	. . . 
	ld l,a			;35b4	6f 	o 
	nop			;35b5	00 	. 
	ld bc,0f5ffh		;35b6	01 ff f5 	. . . 
	nop			;35b9	00 	. 
	ld bc,0efffh		;35ba	01 ff ef 	. . . 
	defb 0fdh,000h,001h	;illegal sequence		;35bd	fd 00 01 	. . . 
	rst 38h			;35c0	ff 	. 
	cp e			;35c1	bb 	. 
	nop			;35c2	00 	. 
	ld bc,0dfffh		;35c3	01 ff df 	. . . 
	nop			;35c6	00 	. 
	ld bc,0bdffh		;35c7	01 ff bd 	. . . 
	rra			;35ca	1f 	. 
	rrca			;35cb	0f 	. 
	rlca			;35cc	07 	. 
	ld bc,l0400h		;35cd	01 00 04 	. . . 
	nop			;35d0	00 	. 
	nop			;35d1	00 	. 
	inc b			;35d2	04 	. 
	rst 38h			;35d3	ff 	. 
	nop			;35d4	00 	. 
	inc b			;35d5	04 	. 
	ld bc,00700h		;35d6	01 00 07 	. . . 
	defb 0fdh,000h,001h	;illegal sequence		;35d9	fd 00 01 	. . . 
	rst 38h			;35dc	ff 	. 
	nop			;35dd	00 	. 
	ex af,af'			;35de	08 	. 
	add a,b			;35df	80 	. 
	nop			;35e0	00 	. 
	dec hl			;35e1	2b 	+ 
	nop			;35e2	00 	. 
	rrca			;35e3	0f 	. 
	ccf			;35e4	3f 	? 
	ld a,a			;35e5	7f 	 
	rst 38h			;35e6	ff 	. 
	rst 38h			;35e7	ff 	. 
	nop			;35e8	00 	. 
	inc bc			;35e9	03 	. 
	nop			;35ea	00 	. 
	inc bc			;35eb	03 	. 
	rlca			;35ec	07 	. 
	rrca			;35ed	0f 	. 
	rra			;35ee	1f 	. 
	ccf			;35ef	3f 	? 
	inc bc			;35f0	03 	. 
	ccf			;35f1	3f 	? 
	nop			;35f2	00 	. 
	ld b,0ffh		;35f3	06 ff 	. . 
	nop			;35f5	00 	. 
	inc bc			;35f6	03 	. 
	nop			;35f7	00 	. 
	ret nz			;35f8	c0 	. 
	ret p			;35f9	f0 	. 
	call m,sub_00feh		;35fa	fc fe 00 	. . . 
	ld bc,l00ffh		;35fd	01 ff 00 	. . . 
	ld b,03eh		;3600	06 3e 	. > 
	ccf			;3602	3f 	? 
	rra			;3603	1f 	. 
	nop			;3604	00 	. 
	ex af,af'			;3605	08 	. 
	rst 38h			;3606	ff 	. 
	add a,a			;3607	87 	. 
	rst 18h			;3608	df 	. 
	nop			;3609	00 	. 
	ld b,0ffh		;360a	06 ff 	. . 
	nop			;360c	00 	. 
	dec b			;360d	05 	. 
	nop			;360e	00 	. 
	inc bc			;360f	03 	. 
	rra			;3610	1f 	. 
	nop			;3611	00 	. 
	ld bc,l00ffh		;3612	01 ff 00 	. . . 
	dec b			;3615	05 	. 
	nop			;3616	00 	. 
	ret nz			;3617	c0 	. 
	ret m			;3618	f8 	. 
	cp 000h		;3619	fe 00 	. . 
	djnz $+1		;361b	10 ff 	. . 
	nop			;361d	00 	. 
	inc b			;361e	04 	. 
	pop bc			;361f	c1 	. 
	nop			;3620	00 	. 
	ld bc,07fffh		;3621	01 ff 7f 	. .  
	ld bc,sub_0300h		;3624	01 00 03 	. . . 
	rst 38h			;3627	ff 	. 
	call m,sub_00feh		;3628	fc fe 00 	. . . 
	inc b			;362b	04 	. 
	rst 38h			;362c	ff 	. 
	add a,b			;362d	80 	. 
	ret po			;362e	e0 	. 
	ret p			;362f	f0 	. 
	ret m			;3630	f8 	. 
	rst 38h			;3631	ff 	. 
	call m,sub_00feh		;3632	fc fe 00 	. . . 
	inc bc			;3635	03 	. 
	rst 38h			;3636	ff 	. 
	rst 38h			;3637	ff 	. 
	nop			;3638	00 	. 
	nop			;3639	00 	. 
	inc b			;363a	04 	. 
	rst 38h			;363b	ff 	. 
	rst 38h			;363c	ff 	. 
	ld a,a			;363d	7f 	 
	nop			;363e	00 	. 
	ld bc,0f8ffh		;363f	01 ff f8 	. . . 
	ld h,c			;3642	61 	a 
	inc bc			;3643	03 	. 
	rlca			;3644	07 	. 
	rrca			;3645	0f 	. 
	rst 38h			;3646	ff 	. 
	rst 38h			;3647	ff 	. 
	ld a,a			;3648	7f 	 
	nop			;3649	00 	. 
	dec b			;364a	05 	. 
	rst 38h			;364b	ff 	. 
	rra			;364c	1f 	. 
	rst 38h			;364d	ff 	. 
	ccf			;364e	3f 	? 
	rst 38h			;364f	ff 	. 
	ld a,a			;3650	7f 	 
	nop			;3651	00 	. 
	ld bc,0f8ffh		;3652	01 ff f8 	. . . 
	ret nz			;3655	c0 	. 
	rst 38h			;3656	ff 	. 
	rst 38h			;3657	ff 	. 
	call m,0c0f0h		;3658	fc f0 c0 	. . . 
	nop			;365b	00 	. 
	inc bc			;365c	03 	. 
	nop			;365d	00 	. 
	nop			;365e	00 	. 
	dec bc			;365f	0b 	. 
	rst 38h			;3660	ff 	. 
	ret po			;3661	e0 	. 
	ret nz			;3662	c0 	. 
	nop			;3663	00 	. 
	inc bc			;3664	03 	. 
	add a,b			;3665	80 	. 
	rst 18h			;3666	df 	. 
	nop			;3667	00 	. 
	rlca			;3668	07 	. 
	rra			;3669	1f 	. 
	rst 38h			;366a	ff 	. 
	add a,b			;366b	80 	. 
	nop			;366c	00 	. 
	inc bc			;366d	03 	. 
	ret nz			;366e	c0 	. 
	ret po			;366f	e0 	. 
	ret p			;3670	f0 	. 
	nop			;3671	00 	. 
	ld bc,0c3ffh		;3672	01 ff c3 	. . . 
	and b			;3675	a0 	. 
	rst 38h			;3676	ff 	. 
	ret nz			;3677	c0 	. 
	ld b,b			;3678	40 	@ 
	rst 38h			;3679	ff 	. 
	jr nz,l368ch		;367a	20 10 	  . 
	ret po			;367c	e0 	. 
	ld b,b			;367d	40 	@ 
	inc a			;367e	3c 	< 
	ccf			;367f	3f 	? 
	nop			;3680	00 	. 
	inc b			;3681	04 	. 
	rra			;3682	1f 	. 
	djnz l369dh		;3683	10 18 	. . 
	rst 38h			;3685	ff 	. 
	rra			;3686	1f 	. 
	ccf			;3687	3f 	? 
	jr nz,l36cah		;3688	20 40 	  @ 
	add a,b			;368a	80 	. 
	rra			;368b	1f 	. 
l368ch:
	ccf			;368c	3f 	? 
	ld a,a			;368d	7f 	 
	rst 18h			;368e	df 	. 
	add a,e			;368f	83 	. 
	nop			;3690	00 	. 
	inc bc			;3691	03 	. 
	nop			;3692	00 	. 
	nop			;3693	00 	. 
	ld bc,l3fffh		;3694	01 ff 3f 	. . ? 
	rra			;3697	1f 	. 
	rrca			;3698	0f 	. 
	add a,a			;3699	87 	. 
	jp 0e0e1h		;369a	c3 e1 e0 	. . . 
l369dh:
	nop			;369d	00 	. 
	jr l36a0h		;369e	18 00 	. . 
l36a0h:
	rrca			;36a0	0f 	. 
	inc sp			;36a1	33 	3 
	ld b,h			;36a2	44 	D 
	ld c,b			;36a3	48 	H 
	adc a,b			;36a4	88 	. 
	nop			;36a5	00 	. 
	inc bc			;36a6	03 	. 
	sub b			;36a7	90 	. 
	nop			;36a8	00 	. 
	ld bc,0c0ffh		;36a9	01 ff c0 	. . . 
	nop			;36ac	00 	. 
	ld b,000h		;36ad	06 00 	. . 
	nop			;36af	00 	. 
	ld bc,l00ffh		;36b0	01 ff 00 	. . . 
	rlca			;36b3	07 	. 
	nop			;36b4	00 	. 
	ret m			;36b5	f8 	. 
	ld b,000h		;36b6	06 00 	. . 
	ld b,001h		;36b8	06 01 	. . 
	nop			;36ba	00 	. 
	rst 38h			;36bb	ff 	. 
	nop			;36bc	00 	. 
	nop			;36bd	00 	. 
	add hl,de			;36be	19 	. 
	nop			;36bf	00 	. 
	nop			;36c0	00 	. 
	nop			;36c1	00 	. 
	nop			;36c2	00 	. 
	ld bc,0daffh		;36c3	01 ff da 	. . . 
	rst 30h			;36c6	f7 	. 
	rst 28h			;36c7	ef 	. 
	ld a,a			;36c8	7f 	 
	push af			;36c9	f5 	. 
l36cah:
	nop			;36ca	00 	. 
	ld bc,0f7ffh		;36cb	01 ff f7 	. . . 
	ei			;36ce	fb 	. 
	rst 28h			;36cf	ef 	. 
	ei			;36d0	fb 	. 
	rst 28h			;36d1	ef 	. 
	cp a			;36d2	bf 	. 
	rst 18h			;36d3	df 	. 
	push af			;36d4	f5 	. 
	nop			;36d5	00 	. 
	ld bc,0dfffh		;36d6	01 ff df 	. . . 
	nop			;36d9	00 	. 
	ld bc,0bfffh		;36da	01 ff bf 	. . . 
	rst 18h			;36dd	df 	. 
	ex de,hl			;36de	eb 	. 
	nop			;36df	00 	. 
	ld bc,0bdffh		;36e0	01 ff bd 	. . . 
	rst 38h			;36e3	ff 	. 
	rst 38h			;36e4	ff 	. 
	cp l			;36e5	bd 	. 
	rst 30h			;36e6	f7 	. 
	cp a			;36e7	bf 	. 
	xor 000h		;36e8	ee 00 	. . 
	ld bc,0f7ffh		;36ea	01 ff f7 	. . . 
	cp a			;36ed	bf 	. 
	nop			;36ee	00 	. 
	ld bc,0daffh		;36ef	01 ff da 	. . . 
	rst 30h			;36f2	f7 	. 
	rst 28h			;36f3	ef 	. 
	ld a,a			;36f4	7f 	 
	push af			;36f5	f5 	. 
	nop			;36f6	00 	. 
	ld bc,0f7ffh		;36f7	01 ff f7 	. . . 
	ei			;36fa	fb 	. 
	rst 28h			;36fb	ef 	. 
	ei			;36fc	fb 	. 
	rst 28h			;36fd	ef 	. 
	cp a			;36fe	bf 	. 
	rst 18h			;36ff	df 	. 
	push af			;3700	f5 	. 
	nop			;3701	00 	. 
	ld bc,0dfffh		;3702	01 ff df 	. . . 
	nop			;3705	00 	. 
	ld bc,0bfffh		;3706	01 ff bf 	. . . 
	rst 18h			;3709	df 	. 
	ex de,hl			;370a	eb 	. 
	nop			;370b	00 	. 
	ld bc,0bdffh		;370c	01 ff bd 	. . . 
	rst 38h			;370f	ff 	. 
	rst 38h			;3710	ff 	. 
	cp l			;3711	bd 	. 
	rst 30h			;3712	f7 	. 
	cp a			;3713	bf 	. 
	xor 000h		;3714	ee 00 	. . 
	ld bc,0f7ffh		;3716	01 ff f7 	. . . 
	cp a			;3719	bf 	. 
	nop			;371a	00 	. 
	ld bc,0daffh		;371b	01 ff da 	. . . 
	rst 30h			;371e	f7 	. 
	rst 28h			;371f	ef 	. 
	ld a,a			;3720	7f 	 
	push af			;3721	f5 	. 
	nop			;3722	00 	. 
	ld bc,0f7ffh		;3723	01 ff f7 	. . . 
	ei			;3726	fb 	. 
	rst 28h			;3727	ef 	. 
	ei			;3728	fb 	. 
	rst 28h			;3729	ef 	. 
l372ah:
	cp a			;372a	bf 	. 
	rst 18h			;372b	df 	. 
	push af			;372c	f5 	. 
	rst 38h			;372d	ff 	. 
	rst 38h			;372e	ff 	. 
	di			;372f	f3 	. 
	adc a,0ddh		;3730	ce dd 	. . 
	defb 0fdh,0ffh,0fah	;illegal sequence		;3732	fd ff fa 	. . . 
	ld (hl),l			;3735	75 	u 
	nop			;3736	00 	. 
	inc bc			;3737	03 	. 
	rst 38h			;3738	ff 	. 
	ld b,h			;3739	44 	D 
	ld e,e			;373a	5b 	[ 
	rst 38h			;373b	ff 	. 
	add a,b			;373c	80 	. 
	nop			;373d	00 	. 
	ld bc,l0000h		;373e	01 00 00 	. . . 
	inc b			;3741	04 	. 
	rst 38h			;3742	ff 	. 
	jp 0ff3ch		;3743	c3 3c ff 	. < . 
	nop			;3746	00 	. 
	nop			;3747	00 	. 
	ld bc,0e7ffh		;3748	01 ff e7 	. . . 
	ld a,c			;374b	79 	y 
	dec e			;374c	1d 	. 
	inc c			;374d	0c 	. 
	nop			;374e	00 	. 
	inc bc			;374f	03 	. 
	ld c,000h		;3750	0e 00 	. . 
	inc b			;3752	04 	. 
	rst 38h			;3753	ff 	. 
	ccf			;3754	3f 	? 
	rst 18h			;3755	df 	. 
	ld e,a			;3756	5f 	_ 
	cpl			;3757	2f 	/ 
	ld c,a			;3758	4f 	O 
	ld b,a			;3759	47 	G 
	ld c,a			;375a	4f 	O 
	rst 38h			;375b	ff 	. 
	cpl			;375c	2f 	/ 
	rst 38h			;375d	ff 	. 
	daa			;375e	27 	' 
	cpl			;375f	2f 	/ 
	rst 38h			;3760	ff 	. 
	ld (hl),l			;3761	75 	u 
	ld a,d			;3762	7a 	z 
	ld (hl),l			;3763	75 	u 
	rst 38h			;3764	ff 	. 
	ld a,d			;3765	7a 	z 
	rst 38h			;3766	ff 	. 
	ld (hl),l			;3767	75 	u 
	rst 38h			;3768	ff 	. 
	ld l,d			;3769	6a 	j 
	rst 38h			;376a	ff 	. 
	ld (hl),l			;376b	75 	u 
	ld l,d			;376c	6a 	j 
	nop			;376d	00 	. 
	inc bc			;376e	03 	. 
	ld (hl),l			;376f	75 	u 
	nop			;3770	00 	. 
	ld bc,0cfffh		;3771	01 ff cf 	. . . 
	sbc a,a			;3774	9f 	. 
	nop			;3775	00 	. 
	dec b			;3776	05 	. 
	cp a			;3777	bf 	. 
	nop			;3778	00 	. 
	ld a,(bc)			;3779	0a 	. 
	rst 38h			;377a	ff 	. 
	rst 38h			;377b	ff 	. 
	cp a			;377c	bf 	. 
	sbc a,a			;377d	9f 	. 
	add a,a			;377e	87 	. 
	ret nz			;377f	c0 	. 
	rst 38h			;3780	ff 	. 
	rst 38h			;3781	ff 	. 
	cp 000h		;3782	fe 00 	. . 
	dec b			;3784	05 	. 
	rst 38h			;3785	ff 	. 
	dec b			;3786	05 	. 
	nop			;3787	00 	. 
	nop			;3788	00 	. 
	nop			;3789	00 	. 
	ld bc,0daffh		;378a	01 ff da 	. . . 
	rst 30h			;378d	f7 	. 
	rst 28h			;378e	ef 	. 
	ld a,a			;378f	7f 	 
	push af			;3790	f5 	. 
	nop			;3791	00 	. 
	ld bc,0f7ffh		;3792	01 ff f7 	. . . 
	ei			;3795	fb 	. 
	rst 28h			;3796	ef 	. 
	ei			;3797	fb 	. 
	rst 28h			;3798	ef 	. 
	cp a			;3799	bf 	. 
	rst 18h			;379a	df 	. 
	push af			;379b	f5 	. 
	nop			;379c	00 	. 
	ld bc,0dfffh		;379d	01 ff df 	. . . 
	nop			;37a0	00 	. 
	ld bc,0bfffh		;37a1	01 ff bf 	. . . 
	rst 18h			;37a4	df 	. 
	ex de,hl			;37a5	eb 	. 
	nop			;37a6	00 	. 
	ld bc,0bdffh		;37a7	01 ff bd 	. . . 
l37aah:
	rst 38h			;37aa	ff 	. 
	rst 38h			;37ab	ff 	. 
	cp l			;37ac	bd 	. 
	rst 30h			;37ad	f7 	. 
	cp a			;37ae	bf 	. 
	xor 000h		;37af	ee 00 	. . 
	ld bc,0f7ffh		;37b1	01 ff f7 	. . . 
	cp a			;37b4	bf 	. 
	nop			;37b5	00 	. 
	ld bc,0daffh		;37b6	01 ff da 	. . . 
	rst 30h			;37b9	f7 	. 
	rst 28h			;37ba	ef 	. 
	ld a,a			;37bb	7f 	 
	push af			;37bc	f5 	. 
	nop			;37bd	00 	. 
	ld bc,0f7ffh		;37be	01 ff f7 	. . . 
	ei			;37c1	fb 	. 
	rst 28h			;37c2	ef 	. 
	ei			;37c3	fb 	. 
	rst 28h			;37c4	ef 	. 
	cp a			;37c5	bf 	. 
	rst 18h			;37c6	df 	. 
	push af			;37c7	f5 	. 
	nop			;37c8	00 	. 
	ld bc,0dfffh		;37c9	01 ff df 	. . . 
	nop			;37cc	00 	. 
	ld bc,0bfffh		;37cd	01 ff bf 	. . . 
	rst 18h			;37d0	df 	. 
	ex de,hl			;37d1	eb 	. 
	nop			;37d2	00 	. 
	ld bc,0bdffh		;37d3	01 ff bd 	. . . 
	rst 38h			;37d6	ff 	. 
	rst 38h			;37d7	ff 	. 
	cp l			;37d8	bd 	. 
	rst 30h			;37d9	f7 	. 
	cp a			;37da	bf 	. 
	xor 000h		;37db	ee 00 	. . 
	ld bc,0f7ffh		;37dd	01 ff f7 	. . . 
	cp a			;37e0	bf 	. 
	nop			;37e1	00 	. 
	ld bc,0daffh		;37e2	01 ff da 	. . . 
	rst 30h			;37e5	f7 	. 
	rst 28h			;37e6	ef 	. 
	ld a,a			;37e7	7f 	 
	push af			;37e8	f5 	. 
	nop			;37e9	00 	. 
	ld bc,0f7ffh		;37ea	01 ff f7 	. . . 
	ei			;37ed	fb 	. 
	rst 28h			;37ee	ef 	. 
	ei			;37ef	fb 	. 
	rst 28h			;37f0	ef 	. 
	cp a			;37f1	bf 	. 
	rst 18h			;37f2	df 	. 
	push af			;37f3	f5 	. 
	rst 38h			;37f4	ff 	. 
	rst 38h			;37f5	ff 	. 
l37f6h:
	call m,0e0f0h		;37f6	fc f0 e0 	. . . 
	nop			;37f9	00 	. 
	inc b			;37fa	04 	. 
	add a,b			;37fb	80 	. 
	nop			;37fc	00 	. 
	ld bc,l3fffh		;37fd	01 ff 3f 	. . ? 
l3800h:
	ld c,a			;3800	4f 	O 
	inc b			;3801	04 	. 
	dec de			;3802	1b 	. 
	nop			;3803	00 	. 
	inc bc			;3804	03 	. 
	nop			;3805	00 	. 
	nop			;3806	00 	. 
	inc b			;3807	04 	. 
	rst 38h			;3808	ff 	. 
	jp 0ff3ch		;3809	c3 3c ff 	. < . 
	nop			;380c	00 	. 
	nop			;380d	00 	. 
	ld bc,0e7ffh		;380e	01 ff e7 	. . . 
	ld l,c			;3811	69 	i 
	dec d			;3812	15 	. 
	inc b			;3813	04 	. 
	nop			;3814	00 	. 
	inc bc			;3815	03 	. 
	ld a,(bc)			;3816	0a 	. 
	rst 38h			;3817	ff 	. 
	rst 38h			;3818	ff 	. 
	rst 20h			;3819	e7 	. 
	di			;381a	f3 	. 
	dec sp			;381b	3b 	; 
sub_381ch:
	in a,(05bh)		;381c	db 5b 	. [ 
	dec hl			;381e	2b 	+ 
	ld c,a			;381f	4f 	O 
	ld b,a			;3820	47 	G 
	ld c,a			;3821	4f 	O 
l3822h:
	rst 38h			;3822	ff 	. 
	cpl			;3823	2f 	/ 
	rst 38h			;3824	ff 	. 
	daa			;3825	27 	' 
	cpl			;3826	2f 	/ 
	nop			;3827	00 	. 
	djnz l37aah		;3828	10 80 	. . 
	nop			;382a	00 	. 
	ld bc,0cfffh		;382b	01 ff cf 	. . . 
	sbc a,a			;382e	9f 	. 
	nop			;382f	00 	. 
	dec b			;3830	05 	. 
	cp a			;3831	bf 	. 
	nop			;3832	00 	. 
	ld a,(bc)			;3833	0a 	. 
	rst 38h			;3834	ff 	. 
	rst 38h			;3835	ff 	. 
	cp a			;3836	bf 	. 
	sbc a,a			;3837	9f 	. 
	add a,a			;3838	87 	. 
	ret nz			;3839	c0 	. 
	rst 38h			;383a	ff 	. 
	rst 38h			;383b	ff 	. 
	cp 000h		;383c	fe 00 	. . 
	dec b			;383e	05 	. 
	rst 38h			;383f	ff 	. 
	dec b			;3840	05 	. 
	nop			;3841	00 	. 
	nop			;3842	00 	. 
	nop			;3843	00 	. 
	ld bc,l2500h		;3844	01 00 25 	. . % 
	ex af,af'			;3847	08 	. 
	djnz $-126		;3848	10 80 	. . 
	ld a,(bc)			;384a	0a 	. 
	nop			;384b	00 	. 
	ld bc,l0800h		;384c	01 00 08 	. . . 
	inc b			;384f	04 	. 
	djnz l3856h		;3850	10 04 	. . 
	djnz l3894h		;3852	10 40 	. @ 
	jr nz,l3860h		;3854	20 0a 	  . 
l3856h:
	nop			;3856	00 	. 
	ld bc,l2000h		;3857	01 00 20 	. .   
	nop			;385a	00 	. 
	ld bc,04000h		;385b	01 00 40 	. . @ 
	jr nz,l3874h		;385e	20 14 	  . 
l3860h:
	nop			;3860	00 	. 
	ld bc,04200h		;3861	01 00 42 	. . B 
	rst 38h			;3864	ff 	. 
	nop			;3865	00 	. 
	ld b,d			;3866	42 	B 
	ex af,af'			;3867	08 	. 
	ld b,b			;3868	40 	@ 
	ld de,l0100h		;3869	11 00 01 	. . . 
	nop			;386c	00 	. 
	ex af,af'			;386d	08 	. 
	ld b,b			;386e	40 	@ 
	nop			;386f	00 	. 
	ld bc,l2500h		;3870	01 00 25 	. . % 
	ex af,af'			;3873	08 	. 
l3874h:
	djnz l37f6h		;3874	10 80 	. . 
	ld a,(bc)			;3876	0a 	. 
	nop			;3877	00 	. 
	ld bc,l0800h		;3878	01 00 08 	. . . 
	inc b			;387b	04 	. 
	djnz l3882h		;387c	10 04 	. . 
	djnz l38c0h		;387e	10 40 	. @ 
	jr nz,l388ch		;3880	20 0a 	  . 
l3882h:
	nop			;3882	00 	. 
	ld bc,l2000h		;3883	01 00 20 	. .   
	nop			;3886	00 	. 
	ld bc,04000h		;3887	01 00 40 	. . @ 
	jr nz,l38a0h		;388a	20 14 	  . 
l388ch:
	nop			;388c	00 	. 
	ld bc,04200h		;388d	01 00 42 	. . B 
	rst 38h			;3890	ff 	. 
	nop			;3891	00 	. 
	ld b,d			;3892	42 	B 
	ex af,af'			;3893	08 	. 
l3894h:
	ld b,b			;3894	40 	@ 
	ld de,l0100h		;3895	11 00 01 	. . . 
	nop			;3898	00 	. 
	ex af,af'			;3899	08 	. 
	ld b,b			;389a	40 	@ 
	nop			;389b	00 	. 
	ld bc,l2500h		;389c	01 00 25 	. . % 
	ex af,af'			;389f	08 	. 
l38a0h:
	djnz l3822h		;38a0	10 80 	. . 
	ld a,(bc)			;38a2	0a 	. 
	nop			;38a3	00 	. 
	ld bc,l0800h		;38a4	01 00 08 	. . . 
	inc b			;38a7	04 	. 
	djnz l38aeh		;38a8	10 04 	. . 
	djnz l38ech		;38aa	10 40 	. @ 
	jr nz,l38b8h		;38ac	20 0a 	  . 
l38aeh:
	nop			;38ae	00 	. 
	ld bc,l0000h		;38af	01 00 00 	. . . 
	ld bc,0f3ffh		;38b2	01 ff f3 	. . . 
	rst 8			;38b5	cf 	. 
	rst 18h			;38b6	df 	. 
	nop			;38b7	00 	. 
l38b8h:
	inc bc			;38b8	03 	. 
	rst 38h			;38b9	ff 	. 
	ld a,a			;38ba	7f 	 
	nop			;38bb	00 	. 
	ld bc,0c0ffh		;38bc	01 ff c0 	. . . 
	or b			;38bf	b0 	. 
l38c0h:
	ei			;38c0	fb 	. 
	call po,l0400h		;38c1	e4 00 04 	. . . 
	rst 38h			;38c4	ff 	. 
	nop			;38c5	00 	. 
	inc bc			;38c6	03 	. 
	nop			;38c7	00 	. 
	inc a			;38c8	3c 	< 
	jp sub_0300h		;38c9	c3 00 03 	. . . 
	rst 38h			;38cc	ff 	. 
	rra			;38cd	1f 	. 
	add a,a			;38ce	87 	. 
	ex (sp),hl			;38cf	e3 	. 
	di			;38d0	f3 	. 
	nop			;38d1	00 	. 
	inc bc			;38d2	03 	. 
	pop af			;38d3	f1 	. 
	nop			;38d4	00 	. 
	ld bc,l0fffh		;38d5	01 ff 0f 	. . . 
	rst 38h			;38d8	ff 	. 
	inc bc			;38d9	03 	. 
	pop bc			;38da	c1 	. 
	ld hl,0d1a1h		;38db	21 a1 d1 	! . . 
	or c			;38de	b1 	. 
	cp c			;38df	b9 	. 
	or c			;38e0	b1 	. 
	rst 38h			;38e1	ff 	. 
	pop de			;38e2	d1 	. 
	rst 38h			;38e3	ff 	. 
	exx			;38e4	d9 	. 
	pop de			;38e5	d1 	. 
	nop			;38e6	00 	. 
l38e7h:
	djnz l3968h		;38e7	10 7f 	.  
	ccf			;38e9	3f 	? 
	ld (hl),b			;38ea	70 	p 
	ret po			;38eb	e0 	. 
l38ech:
	nop			;38ec	00 	. 
	dec b			;38ed	05 	. 
	ret nz			;38ee	c0 	. 
	ret p			;38ef	f0 	. 
	inc e			;38f0	1c 	. 
	inc bc			;38f1	03 	. 
	nop			;38f2	00 	. 
	dec b			;38f3	05 	. 
	ld bc,0403fh		;38f4	01 3f 40 	. ? @ 
	rst 38h			;38f7	ff 	. 
sub_38f8h:
	ret nz			;38f8	c0 	. 
	ret po			;38f9	e0 	. 
	ret m			;38fa	f8 	. 
	ld a,a			;38fb	7f 	 
	ccf			;38fc	3f 	? 
	ret po			;38fd	e0 	. 
	dec e			;38fe	1d 	. 
	ld (bc),a			;38ff	02 	. 
	nop			;3900	00 	. 
	inc bc			;3901	03 	. 
	ld bc,0fe02h		;3902	01 02 fe 	. . . 
	nop			;3905	00 	. 
	nop			;3906	00 	. 
	rst 30h			;3907	f7 	. 
	ei			;3908	fb 	. 
	cp a			;3909	bf 	. 
	ex de,hl			;390a	eb 	. 
	nop			;390b	00 	. 
	ld bc,0dfffh		;390c	01 ff df 	. . . 
	ei			;390f	fb 	. 
	or a			;3910	b7 	. 
	nop			;3911	00 	. 
	ld bc,0afffh		;3912	01 ff af 	. . . 
	nop			;3915	00 	. 
	ld bc,07dffh		;3916	01 ff 7d 	. . } 
	cp a			;3919	bf 	. 
	nop			;391a	00 	. 
	ld bc,0b7ffh		;391b	01 ff b7 	. . . 
	rst 38h			;391e	ff 	. 
	rst 38h			;391f	ff 	. 
	defb 0fdh,0afh,0feh	;illegal sequence		;3920	fd af fe 	. . . 
	ld l,a			;3923	6f 	o 
	nop			;3924	00 	. 
	ld bc,0f5ffh		;3925	01 ff f5 	. . . 
	nop			;3928	00 	. 
	ld bc,0efffh		;3929	01 ff ef 	. . . 
	defb 0fdh,000h,001h	;illegal sequence		;392c	fd 00 01 	. . . 
	rst 38h			;392f	ff 	. 
	cp e			;3930	bb 	. 
	nop			;3931	00 	. 
	ld bc,0dfffh		;3932	01 ff df 	. . . 
	nop			;3935	00 	. 
	ld bc,0bdffh		;3936	01 ff bd 	. . . 
	rst 30h			;3939	f7 	. 
	ei			;393a	fb 	. 
	cp a			;393b	bf 	. 
	ex de,hl			;393c	eb 	. 
	nop			;393d	00 	. 
	ld bc,0dfffh		;393e	01 ff df 	. . . 
	ei			;3941	fb 	. 
	or a			;3942	b7 	. 
	nop			;3943	00 	. 
	ld bc,0afffh		;3944	01 ff af 	. . . 
	nop			;3947	00 	. 
	ld bc,07dffh		;3948	01 ff 7d 	. . } 
	cp a			;394b	bf 	. 
	nop			;394c	00 	. 
	ld bc,0b7ffh		;394d	01 ff b7 	. . . 
	rst 38h			;3950	ff 	. 
	rst 38h			;3951	ff 	. 
	defb 0fdh,0afh,0feh	;illegal sequence		;3952	fd af fe 	. . . 
	ld l,a			;3955	6f 	o 
	nop			;3956	00 	. 
	ld bc,0f5ffh		;3957	01 ff f5 	. . . 
	nop			;395a	00 	. 
	ld bc,0efffh		;395b	01 ff ef 	. . . 
	defb 0fdh,000h,001h	;illegal sequence		;395e	fd 00 01 	. . . 
	rst 38h			;3961	ff 	. 
	cp e			;3962	bb 	. 
	nop			;3963	00 	. 
	ld bc,0dfffh		;3964	01 ff df 	. . . 
	nop			;3967	00 	. 
l3968h:
	ld bc,0bdffh		;3968	01 ff bd 	. . . 
	rst 30h			;396b	f7 	. 
	ei			;396c	fb 	. 
	cp a			;396d	bf 	. 
	ex de,hl			;396e	eb 	. 
	nop			;396f	00 	. 
	ld bc,0dfffh		;3970	01 ff df 	. . . 
	ei			;3973	fb 	. 
	or a			;3974	b7 	. 
	nop			;3975	00 	. 
	ld bc,0afffh		;3976	01 ff af 	. . . 
	nop			;3979	00 	. 
	ld bc,07dffh		;397a	01 ff 7d 	. . } 
	cp a			;397d	bf 	. 
	nop			;397e	00 	. 
	ld bc,0b7ffh		;397f	01 ff b7 	. . . 
	nop			;3982	00 	. 
	ld bc,l0fffh		;3983	01 ff 0f 	. . . 
	inc sp			;3986	33 	3 
	ld c,l			;3987	4d 	M 
	ld e,d			;3988	5a 	Z 
	jp m,0f4ffh		;3989	fa ff f4 	. . . 
	ld l,b			;398c	68 	h 
	nop			;398d	00 	. 
	ld bc,l00ffh		;398e	01 ff 00 	. . . 
	rlca			;3991	07 	. 
	nop			;3992	00 	. 
	nop			;3993	00 	. 
	ld bc,l00ffh		;3994	01 ff 00 	. . . 
	rlca			;3997	07 	. 
	nop			;3998	00 	. 
	ret m			;3999	f8 	. 
	ld b,0ffh		;399a	06 ff 	. . 
	ld bc,l0400h		;399c	01 00 04 	. . . 
	nop			;399f	00 	. 
	ret p			;39a0	f0 	. 
	inc c			;39a1	0c 	. 
	rst 38h			;39a2	ff 	. 
	ld (bc),a			;39a3	02 	. 
	nop			;39a4	00 	. 
	inc c			;39a5	0c 	. 
	ld bc,068ffh		;39a6	01 ff 68 	. . h 
	ld (hl),h			;39a9	74 	t 
	ld l,b			;39aa	68 	h 
	rst 38h			;39ab	ff 	. 
	ld (hl),h			;39ac	74 	t 
	rst 38h			;39ad	ff 	. 
	ld l,b			;39ae	68 	h 
	rst 38h			;39af	ff 	. 
	ld d,b			;39b0	50 	P 
	rst 38h			;39b1	ff 	. 
	ld l,b			;39b2	68 	h 
	ld d,b			;39b3	50 	P 
	nop			;39b4	00 	. 
	inc bc			;39b5	03 	. 
	ld l,b			;39b6	68 	h 
	rst 38h			;39b7	ff 	. 
	rst 38h			;39b8	ff 	. 
	ret p			;39b9	f0 	. 
	call m,l0600h		;39ba	fc 00 06 	. . . 
	rst 38h			;39bd	ff 	. 
	ccf			;39be	3f 	? 
	rlca			;39bf	07 	. 
	add a,e			;39c0	83 	. 
	ex (sp),hl			;39c1	e3 	. 
	rst 38h			;39c2	ff 	. 
	di			;39c3	f3 	. 
	rst 38h			;39c4	ff 	. 
	rst 38h			;39c5	ff 	. 
	ret po			;39c6	e0 	. 
	nop			;39c7	00 	. 
	dec b			;39c8	05 	. 
	rst 38h			;39c9	ff 	. 
	defb 0fdh,000h,001h	;illegal sequence		;39ca	fd 00 01 	. . . 
	rst 38h			;39cd	ff 	. 
	rra			;39ce	1f 	. 
	inc bc			;39cf	03 	. 
	ex (sp),hl			;39d0	e3 	. 
	ei			;39d1	fb 	. 
	rst 38h			;39d2	ff 	. 
	rst 38h			;39d3	ff 	. 
	nop			;39d4	00 	. 
	nop			;39d5	00 	. 
	nop			;39d6	00 	. 
	nop			;39d7	00 	. 
	nop			;39d8	00 	. 
	nop			;39d9	00 	. 
	nop			;39da	00 	. 
	nop			;39db	00 	. 
	nop			;39dc	00 	. 
	nop			;39dd	00 	. 
	nop			;39de	00 	. 
	nop			;39df	00 	. 
	nop			;39e0	00 	. 
	nop			;39e1	00 	. 
	nop			;39e2	00 	. 
	nop			;39e3	00 	. 
	nop			;39e4	00 	. 
	nop			;39e5	00 	. 
	nop			;39e6	00 	. 
	rra			;39e7	1f 	. 
	dec de			;39e8	1b 	. 
	rlca			;39e9	07 	. 
	dec b			;39ea	05 	. 
	dec a			;39eb	3d 	= 
	ld a,(02030h)		;39ec	3a 30 20 	: 0   
	dec c			;39ef	0d 	. 
	ex af,af'			;39f0	08 	. 
	ex af,af'			;39f1	08 	. 
	rrca			;39f2	0f 	. 
	inc bc			;39f3	03 	. 
	ccf			;39f4	3f 	? 
	nop			;39f5	00 	. 
	nop			;39f6	00 	. 
	ccf			;39f7	3f 	? 
	ld bc,00b0fh		;39f8	01 0f 0b 	. . . 
	inc bc			;39fb	03 	. 
	djnz l3a37h		;39fc	10 39 	. 9 
	jr nc,l3a04h		;39fe	30 04 	0 . 
	ex af,af'			;3a00	08 	. 
	ld a,016h		;3a01	3e 16 	> . 
	ld (bc),a			;3a03	02 	. 
l3a04h:
	dec a			;3a04	3d 	= 
	nop			;3a05	00 	. 
	nop			;3a06	00 	. 
	ccf			;3a07	3f 	? 
	ld bc,00b0fh		;3a08	01 0f 0b 	. . . 
	inc bc			;3a0b	03 	. 
	djnz l3a47h		;3a0c	10 39 	. 9 
	jr nc,l3a14h		;3a0e	30 04 	0 . 
	ex af,af'			;3a10	08 	. 
	ld a,016h		;3a11	3e 16 	> . 
	ld (bc),a			;3a13	02 	. 
l3a14h:
	dec a			;3a14	3d 	= 
	nop			;3a15	00 	. 
	nop			;3a16	00 	. 
	rra			;3a17	1f 	. 
	dec de			;3a18	1b 	. 
	rlca			;3a19	07 	. 
	dec b			;3a1a	05 	. 
	dec a			;3a1b	3d 	= 
	ld a,(02030h)		;3a1c	3a 30 20 	: 0   
	dec c			;3a1f	0d 	. 
	ex af,af'			;3a20	08 	. 
	ex af,af'			;3a21	08 	. 
	rrca			;3a22	0f 	. 
	inc bc			;3a23	03 	. 
	ccf			;3a24	3f 	? 
	nop			;3a25	00 	. 
	nop			;3a26	00 	. 
	rra			;3a27	1f 	. 
	dec de			;3a28	1b 	. 
	rlca			;3a29	07 	. 
	dec b			;3a2a	05 	. 
	jr nc,l3a67h		;3a2b	30 3a 	0 : 
	jr nc,l3a4fh		;3a2d	30 20 	0   
	dec c			;3a2f	0d 	. 
	ex af,af'			;3a30	08 	. 
	ex af,af'			;3a31	08 	. 
	rrca			;3a32	0f 	. 
	inc bc			;3a33	03 	. 
	ccf			;3a34	3f 	? 
	nop			;3a35	00 	. 
	nop			;3a36	00 	. 
l3a37h:
	add hl,sp			;3a37	39 	9 
	dec bc			;3a38	0b 	. 
	rrca			;3a39	0f 	. 
	ld bc,l0a3dh		;3a3a	01 3d 0a 	. = . 
	jr nc,l3a5fh		;3a3d	30 20 	0   
	jr c,l3a46h		;3a3f	38 05 	8 . 
	dec de			;3a41	1b 	. 
	djnz $+33		;3a42	10 1f 	. . 
	ld b,000h		;3a44	06 00 	. . 
l3a46h:
	nop			;3a46	00 	. 
l3a47h:
	add hl,sp			;3a47	39 	9 
	dec bc			;3a48	0b 	. 
	rrca			;3a49	0f 	. 
	ld bc,l0a3dh		;3a4a	01 3d 0a 	. = . 
	jr nc,l3a6fh		;3a4d	30 20 	0   
l3a4fh:
	jr c,l3a56h		;3a4f	38 05 	8 . 
	dec de			;3a51	1b 	. 
	djnz $+33		;3a52	10 1f 	. . 
	ld b,000h		;3a54	06 00 	. . 
l3a56h:
	nop			;3a56	00 	. 
	add hl,sp			;3a57	39 	9 
	dec bc			;3a58	0b 	. 
	rrca			;3a59	0f 	. 
	ld bc,l0a3dh		;3a5a	01 3d 0a 	. = . 
	jr nc,$+34		;3a5d	30 20 	0   
l3a5fh:
	jr c,l3a66h		;3a5f	38 05 	8 . 
	dec de			;3a61	1b 	. 
	djnz l3a83h		;3a62	10 1f 	. . 
	ld b,000h		;3a64	06 00 	. . 
l3a66h:
	nop			;3a66	00 	. 
l3a67h:
	add hl,sp			;3a67	39 	9 
	dec bc			;3a68	0b 	. 
	rrca			;3a69	0f 	. 
	ld bc,l0a3dh		;3a6a	01 3d 0a 	. = . 
	jr nc,l3a8fh		;3a6d	30 20 	0   
l3a6fh:
	jr c,l3a76h		;3a6f	38 05 	8 . 
	dec de			;3a71	1b 	. 
	djnz $+33		;3a72	10 1f 	. . 
	ld b,000h		;3a74	06 00 	. . 
l3a76h:
	nop			;3a76	00 	. 
	ccf			;3a77	3f 	? 
	inc d			;3a78	14 	. 
	ld e,01ah		;3a79	1e 1a 	. . 
	jr z,l3a89h		;3a7b	28 0c 	( . 
	add hl,sp			;3a7d	39 	9 
	jr nc,l3a84h		;3a7e	30 04 	0 . 
	ex af,af'			;3a80	08 	. 
	ld a,(bc)			;3a81	0a 	. 
	ld a,(de)			;3a82	1a 	. 
l3a83h:
	dec d			;3a83	15 	. 
l3a84h:
	dec a			;3a84	3d 	= 
	nop			;3a85	00 	. 
	nop			;3a86	00 	. 
	add hl,sp			;3a87	39 	9 
	dec bc			;3a88	0b 	. 
l3a89h:
	rrca			;3a89	0f 	. 
	ld bc,l0a3dh		;3a8a	01 3d 0a 	. = . 
	jr nc,l3aafh		;3a8d	30 20 	0   
l3a8fh:
	jr c,l3a96h		;3a8f	38 05 	8 . 
	dec de			;3a91	1b 	. 
	djnz l3ab3h		;3a92	10 1f 	. . 
	ld b,000h		;3a94	06 00 	. . 
l3a96h:
	nop			;3a96	00 	. 
	ccf			;3a97	3f 	? 
	ld bc,00b0fh		;3a98	01 0f 0b 	. . . 
	inc bc			;3a9b	03 	. 
	djnz $+59		;3a9c	10 39 	. 9 
	jr nc,l3aa4h		;3a9e	30 04 	0 . 
	ex af,af'			;3aa0	08 	. 
	ld a,016h		;3aa1	3e 16 	> . 
	ld (bc),a			;3aa3	02 	. 
l3aa4h:
	dec a			;3aa4	3d 	= 
	nop			;3aa5	00 	. 
	nop			;3aa6	00 	. 
	rra			;3aa7	1f 	. 
	dec de			;3aa8	1b 	. 
	rlca			;3aa9	07 	. 
	dec b			;3aaa	05 	. 
	dec a			;3aab	3d 	= 
	ld a,(02030h)		;3aac	3a 30 20 	: 0   
l3aafh:
	dec c			;3aaf	0d 	. 
	ex af,af'			;3ab0	08 	. 
	ex af,af'			;3ab1	08 	. 
	rrca			;3ab2	0f 	. 
l3ab3h:
	inc bc			;3ab3	03 	. 
	ccf			;3ab4	3f 	? 
	nop			;3ab5	00 	. 
	nop			;3ab6	00 	. 
	ccf			;3ab7	3f 	? 
	dec bc			;3ab8	0b 	. 
	rrca			;3ab9	0f 	. 
	ld bc,l0a02h		;3aba	01 02 0a 	. . . 
	add hl,de			;3abd	19 	. 
	jr nc,l3ac4h		;3abe	30 04 	0 . 
	add hl,sp			;3ac0	39 	9 
	dec de			;3ac1	1b 	. 
	dec hl			;3ac2	2b 	+ 
	rra			;3ac3	1f 	. 
l3ac4h:
	ld b,000h		;3ac4	06 00 	. . 
	nop			;3ac6	00 	. 
	ccf			;3ac7	3f 	? 
	ld bc,00b0fh		;3ac8	01 0f 0b 	. . . 
	inc bc			;3acb	03 	. 
	inc c			;3acc	0c 	. 
	jr nz,l3affh		;3acd	20 30 	  0 
l3acfh:
	inc b			;3acf	04 	. 
	ex af,af'			;3ad0	08 	. 
	ld a,(bc)			;3ad1	0a 	. 
	ld b,002h		;3ad2	06 02 	. . 
	dec a			;3ad4	3d 	= 
	nop			;3ad5	00 	. 
	ld bc,08000h		;3ad6	01 00 80 	. . . 
	nop			;3ad9	00 	. 
	nop			;3ada	00 	. 
	nop			;3adb	00 	. 
	nop			;3adc	00 	. 
	nop			;3add	00 	. 
	ld e,b			;3ade	58 	X 
	ld h,000h		;3adf	26 00 	& . 
	ld (de),a			;3ae1	12 	. 
	add a,b			;3ae2	80 	. 
	nop			;3ae3	00 	. 
	nop			;3ae4	00 	. 
	nop			;3ae5	00 	. 
	nop			;3ae6	00 	. 
	nop			;3ae7	00 	. 
	ld e,b			;3ae8	58 	X 
	ld h,001h		;3ae9	26 01 	& . 
	nop			;3aeb	00 	. 
	nop			;3aec	00 	. 
	nop			;3aed	00 	. 
	add a,b			;3aee	80 	. 
	nop			;3aef	00 	. 
	nop			;3af0	00 	. 
	nop			;3af1	00 	. 
	ld c,b			;3af2	48 	H 
	ld h,001h		;3af3	26 01 	& . 
	nop			;3af5	00 	. 
	ld a,b			;3af6	78 	x 
	nop			;3af7	00 	. 
	nop			;3af8	00 	. 
	nop			;3af9	00 	. 
	nop			;3afa	00 	. 
	nop			;3afb	00 	. 
	add a,b			;3afc	80 	. 
	ld h,001h		;3afd	26 01 	& . 
l3affh:
	nop			;3aff	00 	. 
	adc a,b			;3b00	88 	. 
	rst 38h			;3b01	ff 	. 
	nop			;3b02	00 	. 
	nop			;3b03	00 	. 
	nop			;3b04	00 	. 
	nop			;3b05	00 	. 
	add a,b			;3b06	80 	. 
	ld h,080h		;3b07	26 80 	& . 
	ld (de),a			;3b09	12 	. 
	nop			;3b0a	00 	. 
	nop			;3b0b	00 	. 
	nop			;3b0c	00 	. 
	nop			;3b0d	00 	. 
	ret m			;3b0e	f8 	. 
	rst 38h			;3b0f	ff 	. 
	add a,b			;3b10	80 	. 
	ld h,001h		;3b11	26 01 	& . 
	nop			;3b13	00 	. 
	nop			;3b14	00 	. 
	nop			;3b15	00 	. 
	nop			;3b16	00 	. 
	nop			;3b17	00 	. 
	nop			;3b18	00 	. 
	nop			;3b19	00 	. 
	add a,b			;3b1a	80 	. 
	ld h,001h		;3b1b	26 01 	& . 
	nop			;3b1d	00 	. 
	add a,b			;3b1e	80 	. 
	nop			;3b1f	00 	. 
	nop			;3b20	00 	. 
	nop			;3b21	00 	. 
	nop			;3b22	00 	. 
	nop			;3b23	00 	. 
	ld e,b			;3b24	58 	X 
	jr z,l3b27h		;3b25	28 00 	( . 
l3b27h:
	ld (de),a			;3b27	12 	. 
	add a,b			;3b28	80 	. 
	nop			;3b29	00 	. 
	nop			;3b2a	00 	. 
	nop			;3b2b	00 	. 
	nop			;3b2c	00 	. 
	nop			;3b2d	00 	. 
	ld e,b			;3b2e	58 	X 
	jr z,l3b32h		;3b2f	28 01 	( . 
	nop			;3b31	00 	. 
l3b32h:
	nop			;3b32	00 	. 
	nop			;3b33	00 	. 
	add a,b			;3b34	80 	. 
	nop			;3b35	00 	. 
	nop			;3b36	00 	. 
	nop			;3b37	00 	. 
	ld c,b			;3b38	48 	H 
	jr z,l3b3ch		;3b39	28 01 	( . 
	nop			;3b3b	00 	. 
l3b3ch:
	ld a,b			;3b3c	78 	x 
	nop			;3b3d	00 	. 
	nop			;3b3e	00 	. 
	nop			;3b3f	00 	. 
	nop			;3b40	00 	. 
	nop			;3b41	00 	. 
	add a,b			;3b42	80 	. 
	jr z,l3b46h		;3b43	28 01 	( . 
	nop			;3b45	00 	. 
l3b46h:
	adc a,b			;3b46	88 	. 
	rst 38h			;3b47	ff 	. 
	nop			;3b48	00 	. 
	nop			;3b49	00 	. 
	nop			;3b4a	00 	. 
	nop			;3b4b	00 	. 
	add a,b			;3b4c	80 	. 
	jr z,l3acfh		;3b4d	28 80 	( . 
	ld (de),a			;3b4f	12 	. 
	nop			;3b50	00 	. 
	nop			;3b51	00 	. 
	nop			;3b52	00 	. 
	nop			;3b53	00 	. 
	ret m			;3b54	f8 	. 
	rst 38h			;3b55	ff 	. 
	add a,b			;3b56	80 	. 
	jr z,l3b5ah		;3b57	28 01 	( . 
	nop			;3b59	00 	. 
l3b5ah:
	nop			;3b5a	00 	. 
	nop			;3b5b	00 	. 
	nop			;3b5c	00 	. 
	nop			;3b5d	00 	. 
	nop			;3b5e	00 	. 
	nop			;3b5f	00 	. 
	add a,b			;3b60	80 	. 
	jr z,l3b64h		;3b61	28 01 	( . 
	nop			;3b63	00 	. 
l3b64h:
	add a,b			;3b64	80 	. 
	nop			;3b65	00 	. 
	nop			;3b66	00 	. 
	nop			;3b67	00 	. 
	nop			;3b68	00 	. 
	nop			;3b69	00 	. 
	ld e,b			;3b6a	58 	X 
	ld hl,(l1200h)		;3b6b	2a 00 12 	* . . 
	add a,b			;3b6e	80 	. 
	nop			;3b6f	00 	. 
	nop			;3b70	00 	. 
	nop			;3b71	00 	. 
	nop			;3b72	00 	. 
	nop			;3b73	00 	. 
	ld e,b			;3b74	58 	X 
	ld hl,(sub_0001h)		;3b75	2a 01 00 	* . . 
	nop			;3b78	00 	. 
	nop			;3b79	00 	. 
	add a,b			;3b7a	80 	. 
	nop			;3b7b	00 	. 
	nop			;3b7c	00 	. 
	nop			;3b7d	00 	. 
	ld c,h			;3b7e	4c 	L 
	ld hl,(sub_0001h)		;3b7f	2a 01 00 	* . . 
	ld a,b			;3b82	78 	x 
	nop			;3b83	00 	. 
	nop			;3b84	00 	. 
	nop			;3b85	00 	. 
	nop			;3b86	00 	. 
	nop			;3b87	00 	. 
	add a,b			;3b88	80 	. 
	ld hl,(sub_0001h)		;3b89	2a 01 00 	* . . 
	adc a,b			;3b8c	88 	. 
	rst 38h			;3b8d	ff 	. 
	nop			;3b8e	00 	. 
	nop			;3b8f	00 	. 
	nop			;3b90	00 	. 
	nop			;3b91	00 	. 
	add a,b			;3b92	80 	. 
	ld hl,(l1280h)		;3b93	2a 80 12 	* . . 
	nop			;3b96	00 	. 
	nop			;3b97	00 	. 
	nop			;3b98	00 	. 
	nop			;3b99	00 	. 
	ret m			;3b9a	f8 	. 
	rst 38h			;3b9b	ff 	. 
	add a,b			;3b9c	80 	. 
	ld hl,(sub_0001h)		;3b9d	2a 01 00 	* . . 
	nop			;3ba0	00 	. 
	nop			;3ba1	00 	. 
	nop			;3ba2	00 	. 
	nop			;3ba3	00 	. 
	nop			;3ba4	00 	. 
	nop			;3ba5	00 	. 
	add a,b			;3ba6	80 	. 
	ld hl,(sub_0001h)		;3ba7	2a 01 00 	* . . 
	add a,b			;3baa	80 	. 
	nop			;3bab	00 	. 
	nop			;3bac	00 	. 
	nop			;3bad	00 	. 
	nop			;3bae	00 	. 
	nop			;3baf	00 	. 
	ld e,b			;3bb0	58 	X 
	inc l			;3bb1	2c 	, 
	nop			;3bb2	00 	. 
	ld (de),a			;3bb3	12 	. 
	add a,b			;3bb4	80 	. 
	nop			;3bb5	00 	. 
	nop			;3bb6	00 	. 
	nop			;3bb7	00 	. 
	nop			;3bb8	00 	. 
	nop			;3bb9	00 	. 
	ld e,b			;3bba	58 	X 
	inc l			;3bbb	2c 	, 
	ld bc,l0000h		;3bbc	01 00 00 	. . . 
	nop			;3bbf	00 	. 
	add a,b			;3bc0	80 	. 
	nop			;3bc1	00 	. 
	nop			;3bc2	00 	. 
	nop			;3bc3	00 	. 
	ld c,b			;3bc4	48 	H 
	inc l			;3bc5	2c 	, 
	ld bc,07800h		;3bc6	01 00 78 	. . x 
	nop			;3bc9	00 	. 
	nop			;3bca	00 	. 
	nop			;3bcb	00 	. 
	nop			;3bcc	00 	. 
	nop			;3bcd	00 	. 
	add a,b			;3bce	80 	. 
	inc l			;3bcf	2c 	, 
	ld bc,08800h		;3bd0	01 00 88 	. . . 
	rst 38h			;3bd3	ff 	. 
	nop			;3bd4	00 	. 
	nop			;3bd5	00 	. 
	nop			;3bd6	00 	. 
	nop			;3bd7	00 	. 
	add a,b			;3bd8	80 	. 
	inc l			;3bd9	2c 	, 
	add a,b			;3bda	80 	. 
	ld (de),a			;3bdb	12 	. 
	nop			;3bdc	00 	. 
	nop			;3bdd	00 	. 
	nop			;3bde	00 	. 
	nop			;3bdf	00 	. 
	ret m			;3be0	f8 	. 
	rst 38h			;3be1	ff 	. 
	add a,b			;3be2	80 	. 
	inc l			;3be3	2c 	, 
	ld bc,l0000h		;3be4	01 00 00 	. . . 
l3be7h:
	nop			;3be7	00 	. 
	nop			;3be8	00 	. 
	nop			;3be9	00 	. 
	nop			;3bea	00 	. 
	nop			;3beb	00 	. 
	add a,b			;3bec	80 	. 
	inc l			;3bed	2c 	, 
	ld hl,08000h		;3bee	21 00 80 	! . . 
	nop			;3bf1	00 	. 
	nop			;3bf2	00 	. 
	nop			;3bf3	00 	. 
	nop			;3bf4	00 	. 
	nop			;3bf5	00 	. 
	ld e,b			;3bf6	58 	X 
	ld l,020h		;3bf7	2e 20 	.   
	ld (de),a			;3bf9	12 	. 
	add a,b			;3bfa	80 	. 
	nop			;3bfb	00 	. 
	nop			;3bfc	00 	. 
	nop			;3bfd	00 	. 
	nop			;3bfe	00 	. 
	nop			;3bff	00 	. 
l3c00h:
	ld e,b			;3c00	58 	X 
	ld l,021h		;3c01	2e 21 	. ! 
	nop			;3c03	00 	. 
	nop			;3c04	00 	. 
	nop			;3c05	00 	. 
	add a,b			;3c06	80 	. 
	nop			;3c07	00 	. 
	nop			;3c08	00 	. 
	nop			;3c09	00 	. 
	ld c,b			;3c0a	48 	H 
	ld l,021h		;3c0b	2e 21 	. ! 
	nop			;3c0d	00 	. 
	ld a,b			;3c0e	78 	x 
	nop			;3c0f	00 	. 
	nop			;3c10	00 	. 
	nop			;3c11	00 	. 
	nop			;3c12	00 	. 
	nop			;3c13	00 	. 
	add a,b			;3c14	80 	. 
	ld l,021h		;3c15	2e 21 	. ! 
	nop			;3c17	00 	. 
	adc a,b			;3c18	88 	. 
	rst 38h			;3c19	ff 	. 
	nop			;3c1a	00 	. 
	nop			;3c1b	00 	. 
	nop			;3c1c	00 	. 
	nop			;3c1d	00 	. 
	add a,b			;3c1e	80 	. 
	ld l,0a0h		;3c1f	2e a0 	. . 
	ld (de),a			;3c21	12 	. 
	nop			;3c22	00 	. 
	nop			;3c23	00 	. 
	nop			;3c24	00 	. 
	nop			;3c25	00 	. 
	ret m			;3c26	f8 	. 
	rst 38h			;3c27	ff 	. 
	add a,b			;3c28	80 	. 
	ld l,021h		;3c29	2e 21 	. ! 
	nop			;3c2b	00 	. 
	nop			;3c2c	00 	. 
	nop			;3c2d	00 	. 
	nop			;3c2e	00 	. 
	nop			;3c2f	00 	. 
	nop			;3c30	00 	. 
	nop			;3c31	00 	. 
	add a,b			;3c32	80 	. 
	ld l,001h		;3c33	2e 01 	. . 
	nop			;3c35	00 	. 
	add a,b			;3c36	80 	. 
	rst 38h			;3c37	ff 	. 
	nop			;3c38	00 	. 
	nop			;3c39	00 	. 
	nop			;3c3a	00 	. 
	nop			;3c3b	00 	. 
	ld e,b			;3c3c	58 	X 
	jr nc,l3c3fh		;3c3d	30 00 	0 . 
l3c3fh:
	ld (de),a			;3c3f	12 	. 
sub_3c40h:
	add a,b			;3c40	80 	. 
	rst 38h			;3c41	ff 	. 
	nop			;3c42	00 	. 
	nop			;3c43	00 	. 
	nop			;3c44	00 	. 
	nop			;3c45	00 	. 
	ld e,b			;3c46	58 	X 
	jr nc,l3c4ah		;3c47	30 01 	0 . 
	nop			;3c49	00 	. 
l3c4ah:
	nop			;3c4a	00 	. 
	nop			;3c4b	00 	. 
	add a,b			;3c4c	80 	. 
	nop			;3c4d	00 	. 
	nop			;3c4e	00 	. 
	nop			;3c4f	00 	. 
	ld c,b			;3c50	48 	H 
	jr nc,l3c54h		;3c51	30 01 	0 . 
	nop			;3c53	00 	. 
l3c54h:
	ld a,b			;3c54	78 	x 
	nop			;3c55	00 	. 
	nop			;3c56	00 	. 
	nop			;3c57	00 	. 
	nop			;3c58	00 	. 
	nop			;3c59	00 	. 
	add a,b			;3c5a	80 	. 
	jr nc,l3c5eh		;3c5b	30 01 	0 . 
	nop			;3c5d	00 	. 
l3c5eh:
	adc a,b			;3c5e	88 	. 
	rst 38h			;3c5f	ff 	. 
	nop			;3c60	00 	. 
	nop			;3c61	00 	. 
	nop			;3c62	00 	. 
	nop			;3c63	00 	. 
	add a,b			;3c64	80 	. 
	jr nc,l3be7h		;3c65	30 80 	0 . 
	ld (de),a			;3c67	12 	. 
	nop			;3c68	00 	. 
	nop			;3c69	00 	. 
	nop			;3c6a	00 	. 
	nop			;3c6b	00 	. 
	ret m			;3c6c	f8 	. 
	rst 38h			;3c6d	ff 	. 
	add a,b			;3c6e	80 	. 
	jr nc,l3c72h		;3c6f	30 01 	0 . 
	nop			;3c71	00 	. 
l3c72h:
	nop			;3c72	00 	. 
	nop			;3c73	00 	. 
	nop			;3c74	00 	. 
	nop			;3c75	00 	. 
	nop			;3c76	00 	. 
	nop			;3c77	00 	. 
	add a,b			;3c78	80 	. 
	jr nc,l3cbbh		;3c79	30 40 	0 @ 
	ld (de),a			;3c7b	12 	. 
	add a,b			;3c7c	80 	. 
	nop			;3c7d	00 	. 
	nop			;3c7e	00 	. 
	nop			;3c7f	00 	. 
	nop			;3c80	00 	. 
	nop			;3c81	00 	. 
	add a,b			;3c82	80 	. 
	ld hl,(01240h)		;3c83	2a 40 12 	* @ . 
	add a,b			;3c86	80 	. 
	nop			;3c87	00 	. 
	nop			;3c88	00 	. 
	nop			;3c89	00 	. 
	nop			;3c8a	00 	. 
	nop			;3c8b	00 	. 
	add a,b			;3c8c	80 	. 
	ld h,000h		;3c8d	26 00 	& . 
	ld (de),a			;3c8f	12 	. 
	nop			;3c90	00 	. 
	nop			;3c91	00 	. 
	add a,b			;3c92	80 	. 
	nop			;3c93	00 	. 
	nop			;3c94	00 	. 
	nop			;3c95	00 	. 
	jr nz,$+42		;3c96	20 28 	  ( 
	nop			;3c98	00 	. 
	ld (de),a			;3c99	12 	. 
	nop			;3c9a	00 	. 
	nop			;3c9b	00 	. 
	add a,b			;3c9c	80 	. 
	nop			;3c9d	00 	. 
	nop			;3c9e	00 	. 
	nop			;3c9f	00 	. 
	ld b,b			;3ca0	40 	@ 
	jr z,l3ca3h		;3ca1	28 00 	( . 
l3ca3h:
	ld (de),a			;3ca3	12 	. 
	nop			;3ca4	00 	. 
	nop			;3ca5	00 	. 
	add a,b			;3ca6	80 	. 
	nop			;3ca7	00 	. 
	nop			;3ca8	00 	. 
	nop			;3ca9	00 	. 
	jr nz,l3cd6h		;3caa	20 2a 	  * 
	ld bc,l0000h		;3cac	01 00 00 	. . . 
	nop			;3caf	00 	. 
	add a,b			;3cb0	80 	. 
	rst 38h			;3cb1	ff 	. 
	nop			;3cb2	00 	. 
	nop			;3cb3	00 	. 
	ld c,c			;3cb4	49 	I 
	ld hl,(sub_0001h)		;3cb5	2a 01 00 	* . . 
	add a,b			;3cb8	80 	. 
	rst 38h			;3cb9	ff 	. 
	nop			;3cba	00 	. 
l3cbbh:
	nop			;3cbb	00 	. 
	nop			;3cbc	00 	. 
	nop			;3cbd	00 	. 
	ld e,b			;3cbe	58 	X 
	ld h,000h		;3cbf	26 00 	& . 
	jr l3cc3h		;3cc1	18 00 	. . 
l3cc3h:
	nop			;3cc3	00 	. 
	add a,b			;3cc4	80 	. 
	nop			;3cc5	00 	. 
	nop			;3cc6	00 	. 
	nop			;3cc7	00 	. 
	ld b,b			;3cc8	40 	@ 
	jr z,l3ccch		;3cc9	28 01 	( . 
	ld (de),a			;3ccb	12 	. 
l3ccch:
	add a,b			;3ccc	80 	. 
	nop			;3ccd	00 	. 
	nop			;3cce	00 	. 
	nop			;3ccf	00 	. 
	nop			;3cd0	00 	. 
	nop			;3cd1	00 	. 
	ld e,b			;3cd2	58 	X 
	ld hl,(01800h)		;3cd3	2a 00 18 	* . . 
l3cd6h:
	nop			;3cd6	00 	. 
	nop			;3cd7	00 	. 
	add a,b			;3cd8	80 	. 
	nop			;3cd9	00 	. 
	nop			;3cda	00 	. 
	nop			;3cdb	00 	. 
	ld b,b			;3cdc	40 	@ 
	jr z,l3ce0h		;3cdd	28 01 	( . 
	nop			;3cdf	00 	. 
l3ce0h:
	nop			;3ce0	00 	. 
	nop			;3ce1	00 	. 
	add a,b			;3ce2	80 	. 
	nop			;3ce3	00 	. 
	nop			;3ce4	00 	. 
	nop			;3ce5	00 	. 
	ld a,026h		;3ce6	3e 26 	> & 
	ld bc,l0000h		;3ce8	01 00 00 	. . . 
	nop			;3ceb	00 	. 
	nop			;3cec	00 	. 
	nop			;3ced	00 	. 
	nop			;3cee	00 	. 
	nop			;3cef	00 	. 
	add a,b			;3cf0	80 	. 
	ld h,001h		;3cf1	26 01 	& . 
	ld (bc),a			;3cf3	02 	. 
	ld bc,l0101h+1		;3cf4	01 02 01 	. . . 
	ld (bc),a			;3cf7	02 	. 
	inc bc			;3cf8	03 	. 
	inc b			;3cf9	04 	. 
	nop			;3cfa	00 	. 
	dec b			;3cfb	05 	. 
	ld b,003h		;3cfc	06 03 	. . 
	inc b			;3cfe	04 	. 
	rlca			;3cff	07 	. 
	ex af,af'			;3d00	08 	. 
	add hl,bc			;3d01	09 	. 
	ld a,(bc)			;3d02	0a 	. 
	dec bc			;3d03	0b 	. 
	inc c			;3d04	0c 	. 
	dec c			;3d05	0d 	. 
	ld c,00fh		;3d06	0e 0f 	. . 
	djnz l3d1bh		;3d08	10 11 	. . 
	ld (de),a			;3d0a	12 	. 
	inc de			;3d0b	13 	. 
	inc d			;3d0c	14 	. 
	nop			;3d0d	00 	. 
	dec d			;3d0e	15 	. 
	ld d,013h		;3d0f	16 13 	. . 
	inc d			;3d11	14 	. 
	rla			;3d12	17 	. 
	jr l3d2eh		;3d13	18 19 	. . 
	ld a,(de)			;3d15	1a 	. 
	dec de			;3d16	1b 	. 
	inc e			;3d17	1c 	. 
	nop			;3d18	00 	. 
	nop			;3d19	00 	. 
	nop			;3d1a	00 	. 
l3d1bh:
	nop			;3d1b	00 	. 
	nop			;3d1c	00 	. 
	nop			;3d1d	00 	. 
	rra			;3d1e	1f 	. 
	ccf			;3d1f	3f 	? 
	nop			;3d20	00 	. 
	nop			;3d21	00 	. 
	nop			;3d22	00 	. 
	nop			;3d23	00 	. 
	nop			;3d24	00 	. 
	nop			;3d25	00 	. 
	rst 38h			;3d26	ff 	. 
	cp 000h		;3d27	fe 00 	. . 
	nop			;3d29	00 	. 
	nop			;3d2a	00 	. 
	nop			;3d2b	00 	. 
	nop			;3d2c	00 	. 
	nop			;3d2d	00 	. 
l3d2eh:
	nop			;3d2e	00 	. 
	ld bc,l0000h		;3d2f	01 00 00 	. . . 
	nop			;3d32	00 	. 
	nop			;3d33	00 	. 
	nop			;3d34	00 	. 
	nop			;3d35	00 	. 
	ret po			;3d36	e0 	. 
	ret po			;3d37	e0 	. 
	nop			;3d38	00 	. 
	nop			;3d39	00 	. 
	nop			;3d3a	00 	. 
	nop			;3d3b	00 	. 
	nop			;3d3c	00 	. 
	nop			;3d3d	00 	. 
	jr c,$+58		;3d3e	38 38 	8 8 
	nop			;3d40	00 	. 
	nop			;3d41	00 	. 
	nop			;3d42	00 	. 
	nop			;3d43	00 	. 
	nop			;3d44	00 	. 
	nop			;3d45	00 	. 
	rlca			;3d46	07 	. 
	rrca			;3d47	0f 	. 
	nop			;3d48	00 	. 
	nop			;3d49	00 	. 
	nop			;3d4a	00 	. 
	nop			;3d4b	00 	. 
	nop			;3d4c	00 	. 
	nop			;3d4d	00 	. 
	ccf			;3d4e	3f 	? 
	ccf			;3d4f	3f 	? 
	nop			;3d50	00 	. 
	nop			;3d51	00 	. 
	nop			;3d52	00 	. 
	nop			;3d53	00 	. 
	nop			;3d54	00 	. 
	nop			;3d55	00 	. 
	cp 0ffh		;3d56	fe ff 	. . 
	nop			;3d58	00 	. 
	nop			;3d59	00 	. 
	nop			;3d5a	00 	. 
	nop			;3d5b	00 	. 
	nop			;3d5c	00 	. 
	nop			;3d5d	00 	. 
	jr c,$+58		;3d5e	38 38 	8 8 
	nop			;3d60	00 	. 
	nop			;3d61	00 	. 
	nop			;3d62	00 	. 
	nop			;3d63	00 	. 
	nop			;3d64	00 	. 
	nop			;3d65	00 	. 
	rlca			;3d66	07 	. 
	inc e			;3d67	1c 	. 
	nop			;3d68	00 	. 
	nop			;3d69	00 	. 
	ccf			;3d6a	3f 	? 
	inc c			;3d6b	0c 	. 
	inc c			;3d6c	0c 	. 
	inc c			;3d6d	0c 	. 
	inc c			;3d6e	0c 	. 
	dec e			;3d6f	1d 	. 
	nop			;3d70	00 	. 
	nop			;3d71	00 	. 
	rst 38h			;3d72	ff 	. 
	call z,0cccch		;3d73	cc cc cc 	. . . 
	call z,038dch		;3d76	cc dc 38 	. . 8 
	ld (hl),b			;3d79	70 	p 
	ld a,a			;3d7a	7f 	 
	ccf			;3d7b	3f 	? 
	nop			;3d7c	00 	. 
	nop			;3d7d	00 	. 
	ld a,a			;3d7e	7f 	 
	rst 38h			;3d7f	ff 	. 
	nop			;3d80	00 	. 
	nop			;3d81	00 	. 
	call m,sub_0efeh		;3d82	fc fe 0e 	. . . 
	inc e			;3d85	1c 	. 
	call m,sub_38f8h		;3d86	fc f8 38 	. . 8 
	ld (hl),b			;3d89	70 	p 
	ld a,a			;3d8a	7f 	 
	ld a,a			;3d8b	7f 	 
	ret p			;3d8c	f0 	. 
	ret po			;3d8d	e0 	. 
	rst 38h			;3d8e	ff 	. 
	ld a,a			;3d8f	7f 	 
	nop			;3d90	00 	. 
	nop			;3d91	00 	. 
	cp 0fch		;3d92	fe fc 	. . 
	nop			;3d94	00 	. 
	nop			;3d95	00 	. 
	call m,sub_38f8h		;3d96	fc f8 38 	. . 8 
	ld (hl),b			;3d99	70 	p 
	ld (hl),b			;3d9a	70 	p 
	ld (hl),b			;3d9b	70 	p 
	ret po			;3d9c	e0 	. 
	ret po			;3d9d	e0 	. 
	rst 38h			;3d9e	ff 	. 
	ld a,a			;3d9f	7f 	 
	nop			;3da0	00 	. 
	nop			;3da1	00 	. 
	ld a,(hl)			;3da2	7e 	~ 
	call m,sub_381ch		;3da3	fc 1c 38 	. . 8 
	ret m			;3da6	f8 	. 
	ret p			;3da7	f0 	. 
	inc bc			;3da8	03 	. 
	rlca			;3da9	07 	. 
	ld c,01dh		;3daa	0e 1d 	. . 
	dec sp			;3dac	3b 	; 
	ld (hl),b			;3dad	70 	p 
	ret po			;3dae	e0 	. 
	ret nz			;3daf	c0 	. 
	ret p			;3db0	f0 	. 
	jr nc,l3debh		;3db1	30 38 	0 8 
	ret m			;3db3	f8 	. 
	call m,sub_0e1ch		;3db4	fc 1c 0e 	. . . 
	ld c,07ch		;3db7	0e 7c 	. | 
	ld a,h			;3db9	7c 	| 
	ld a,h			;3dba	7c 	| 
	halt			;3dbb	76 	v 
	rst 30h			;3dbc	f7 	. 
	rst 20h			;3dbd	e7 	. 
	ex (sp),hl			;3dbe	e3 	. 
	ex (sp),hl			;3dbf	e3 	. 
	ld e,03eh		;3dc0	1e 3e 	. > 
	ld a,(hl)			;3dc2	7e 	~ 
	xor 0deh		;3dc3	ee de 	. . 
	call c,sub_1c9ch		;3dc5	dc 9c 1c 	. . . 
	ld (hl),b			;3dc8	70 	p 
	ld (hl),b			;3dc9	70 	p 
	ld (hl),a			;3dca	77 	w 
	ld (hl),e			;3dcb	73 	s 
	pop af			;3dcc	f1 	. 
	ret po			;3dcd	e0 	. 
	ret po			;3dce	e0 	. 
	ret po			;3dcf	e0 	. 
	rlca			;3dd0	07 	. 
	ld c,0feh		;3dd1	0e fe 	. . 
	call m,0e0c0h		;3dd3	fc c0 e0 	. . . 
	ld (hl),b			;3dd6	70 	p 
	jr c,l3e51h		;3dd7	38 78 	8 x 
	ld (hl),c			;3dd9	71 	q 
	ld (hl),a			;3dda	77 	w 
	ld (hl),e			;3ddb	73 	s 
	pop af			;3ddc	f1 	. 
	ret po			;3ddd	e0 	. 
	ret po			;3dde	e0 	. 
	ret po			;3ddf	e0 	. 
	ld (hl),b			;3de0	70 	p 
	ret nz			;3de1	c0 	. 
	nop			;3de2	00 	. 
	add a,b			;3de3	80 	. 
	ret nz			;3de4	c0 	. 
	ret po			;3de5	e0 	. 
	ld a,b			;3de6	78 	x 
	inc e			;3de7	1c 	. 
	add hl,de			;3de8	19 	. 
	add hl,de			;3de9	19 	. 
	add hl,de			;3dea	19 	. 
l3debh:
	dec sp			;3deb	3b 	; 
	inc sp			;3dec	33 	3 
	inc sp			;3ded	33 	3 
	inc sp			;3dee	33 	3 
	rst 38h			;3def	ff 	. 
	sbc a,b			;3df0	98 	. 
	sbc a,b			;3df1	98 	. 
	sbc a,b			;3df2	98 	. 
	cp b			;3df3	b8 	. 
l3df4h:
	jr nc,l3e26h		;3df4	30 30 	0 0 
	jr nc,l3df4h		;3df6	30 fc 	0 . 
	ld c,000h		;3df8	0e 00 	. . 
	ld (bc),a			;3dfa	02 	. 
	ld (bc),a			;3dfb	02 	. 
	dec c			;3dfc	0d 	. 
	inc b			;3dfd	04 	. 
	rlca			;3dfe	07 	. 
	rlca			;3dff	07 	. 
	jr l3e12h		;3e00	18 10 	. . 
l3e02h:
	rla			;3e02	17 	. 
	rla			;3e03	17 	. 
	jr nz,l3e26h		;3e04	20 20 	    
	ccf			;3e06	3f 	? 
	ccf			;3e07	3f 	? 
	ld b,b			;3e08	40 	@ 
	ld b,b			;3e09	40 	@ 
	ld a,a			;3e0a	7f 	 
	ld a,a			;3e0b	7f 	 
	ccf			;3e0c	3f 	? 
	ccf			;3e0d	3f 	? 
	ccf			;3e0e	3f 	? 
	ccf			;3e0f	3f 	? 
	ld a,a			;3e10	7f 	 
	ld h,b			;3e11	60 	` 
l3e12h:
	ld b,b			;3e12	40 	@ 
	ld h,b			;3e13	60 	` 
	ccf			;3e14	3f 	? 
	jr nc,l3e37h		;3e15	30 20 	0   
	jr nc,$-30		;3e17	30 e0 	0 . 
	nop			;3e19	00 	. 
	jr nz,sub_3e3ch		;3e1a	20 20 	    
	ret p			;3e1c	f0 	. 
	ld b,b			;3e1d	40 	@ 
	ld d,b			;3e1e	50 	P 
	ld d,b			;3e1f	50 	P 
	ret nz			;3e20	c0 	. 
	nop			;3e21	00 	. 
	jr nc,l3e44h		;3e22	30 20 	0   
	jr nc,l3e26h		;3e24	30 00 	0 . 
l3e26h:
	ret p			;3e26	f0 	. 
	ret p			;3e27	f0 	. 
	ret m			;3e28	f8 	. 
	ld h,b			;3e29	60 	` 
	ret m			;3e2a	f8 	. 
	ret m			;3e2b	f8 	. 
	ret p			;3e2c	f0 	. 
	add a,b			;3e2d	80 	. 
	adc a,b			;3e2e	88 	. 
	add a,b			;3e2f	80 	. 
	ret m			;3e30	f8 	. 
	nop			;3e31	00 	. 
	jr l3e4ch		;3e32	18 18 	. . 
	jr z,l3e3eh		;3e34	28 08 	( . 
	ret m			;3e36	f8 	. 
l3e37h:
	ret m			;3e37	f8 	. 
	rra			;3e38	1f 	. 
	rra			;3e39	1f 	. 
	djnz l3e5bh		;3e3a	10 1f 	. . 
sub_3e3ch:
	ld e,a			;3e3c	5f 	_ 
	ld e,b			;3e3d	58 	X 
l3e3eh:
	ld h,b			;3e3e	60 	` 
	ld a,b			;3e3f	78 	x 
	ld e,a			;3e40	5f 	_ 
	ld d,b			;3e41	50 	P 
	ld h,b			;3e42	60 	` 
	ld (hl),b			;3e43	70 	p 
l3e44h:
	ld a,a			;3e44	7f 	 
	ld l,b			;3e45	68 	h 
	ld d,b			;3e46	50 	P 
	ld e,b			;3e47	58 	X 
	ld e,a			;3e48	5f 	_ 
	ld c,a			;3e49	4f 	O 
	ld (hl),b			;3e4a	70 	p 
	ld a,a			;3e4b	7f 	 
l3e4ch:
	cpl			;3e4c	2f 	/ 
	inc hl			;3e4d	23 	# 
	ccf			;3e4e	3f 	? 
	ccf			;3e4f	3f 	? 
	ld d,h			;3e50	54 	T 
l3e51h:
	ld d,h			;3e51	54 	T 
	ld l,a			;3e52	6f 	o 
	ld l,a			;3e53	6f 	o 
	dec sp			;3e54	3b 	; 
	dec sp			;3e55	3b 	; 
	dec sp			;3e56	3b 	; 
	dec sp			;3e57	3b 	; 
	xor b			;3e58	a8 	. 
	and b			;3e59	a0 	. 
	ld e,h			;3e5a	5c 	\ 
l3e5bh:
	ret c			;3e5b	d8 	. 
	call nz,sub_3c40h		;3e5c	c4 40 3c 	. @ < 
	ld a,h			;3e5f	7c 	| 
	ret c			;3e60	d8 	. 
	ret c			;3e61	d8 	. 
	halt			;3e62	76 	v 
	call p,0d0d2h		;3e63	f4 d2 d0 	. . . 
	ld a,(hl)			;3e66	7e 	~ 
	cp 0b6h		;3e67	fe b6 	. . 
	or h			;3e69	b4 	. 
	jp c,096dah		;3e6a	da da 96 	. . . 
l3e6dh:
	djnz l3e6dh		;3e6d	10 fe 	. . 
	cp 066h		;3e6f	fe 66 	. f 
	ld h,d			;3e71	62 	b 
	cp (hl)			;3e72	be 	. 
	cp (hl)			;3e73	be 	. 
	call m,0fcfch		;3e74	fc fc fc 	. . . 
	call m,0223bh		;3e77	fc 3b 22 	. ; " 
	ld hl,(l372ah)		;3e7a	2a 2a 37 	* * 7 
	nop			;3e7d	00 	. 
	inc c			;3e7e	0c 	. 
	inc c			;3e7f	0c 	. 
	ld h,e			;3e80	63 	c 
	ld b,b			;3e81	40 	@ 
	ld e,h			;3e82	5c 	\ 
	ld e,h			;3e83	5c 	\ 
	add a,b			;3e84	80 	. 
	add a,b			;3e85	80 	. 
	rst 38h			;3e86	ff 	. 
	rst 38h			;3e87	ff 	. 
	inc bc			;3e88	03 	. 
	ld bc,0ffffh		;3e89	01 ff ff 	. . . 
	rst 38h			;3e8c	ff 	. 
	cp 0feh		;3e8d	fe fe 	. . 
	cp 0ffh		;3e8f	fe ff 	. . 
	add a,b			;3e91	80 	. 
	nop			;3e92	00 	. 
	add a,b			;3e93	80 	. 
	call m,083e0h		;3e94	fc e0 83 	. . . 
	ex (sp),hl			;3e97	e3 	. 
	add a,b			;3e98	80 	. 
	nop			;3e99	00 	. 
	add a,b			;3e9a	80 	. 
	add a,b			;3e9b	80 	. 
	ret nz			;3e9c	c0 	. 
	nop			;3e9d	00 	. 
	ld b,b			;3e9e	40 	@ 
	ld b,b			;3e9f	40 	@ 
	jr z,l3ecah		;3ea0	28 28 	( ( 
	ret m			;3ea2	f8 	. 
	cp b			;3ea3	b8 	. 
	call po,0fc24h		;3ea4	e4 24 fc 	. $ . 
	call m,084ech		;3ea7	fc ec 84 	. . . 
	call m,0fcfch		;3eaa	fc fc fc 	. . . 
	inc d			;3ead	14 	. 
	inc l			;3eae	2c 	, 
	inc l			;3eaf	2c 	, 
	ret pe			;3eb0	e8 	. 
	ex af,af'			;3eb1	08 	. 
	ld a,b			;3eb2	78 	x 
	ld a,b			;3eb3	78 	x 
	sub b			;3eb4	90 	. 
	nop			;3eb5	00 	. 
	ret p			;3eb6	f0 	. 
	ret p			;3eb7	f0 	. 
	ld a,a			;3eb8	7f 	 
	ld a,h			;3eb9	7c 	| 
	ld (hl),b			;3eba	70 	p 
	ld a,h			;3ebb	7c 	| 
	ccf			;3ebc	3f 	? 
	jr z,$+50		;3ebd	28 30 	( 0 
	jr c,l3f00h		;3ebf	38 3f 	8 ? 
l3ec1h:
	jr z,l3ef3h		;3ec1	28 30 	( 0 
	jr c,l3ee4h		;3ec3	38 1f 	8 . 
	ld d,018h		;3ec5	16 18 	. . 
	ld e,00bh		;3ec7	1e 0b 	. . 
	add hl,bc			;3ec9	09 	. 
l3ecah:
	ld c,00bh		;3eca	0e 0b 	. . 
	rlca			;3ecc	07 	. 
	ld b,007h		;3ecd	06 07 	. . 
	rlca			;3ecf	07 	. 
	ld bc,l0101h		;3ed0	01 01 01 	. . . 
	ld bc,l0000h		;3ed3	01 00 00 	. . . 
	nop			;3ed6	00 	. 
	nop			;3ed7	00 	. 
	ret pe			;3ed8	e8 	. 
	jr nz,l3ef3h		;3ed9	20 18 	  . 
	jr l3ec1h		;3edb	18 e4 	. . 
	nop			;3edd	00 	. 
	inc e			;3ede	1c 	. 
	inc e			;3edf	1c 	. 
	ret pe			;3ee0	e8 	. 
	ex af,af'			;3ee1	08 	. 
l3ee2h:
	inc d			;3ee2	14 	. 
	inc d			;3ee3	14 	. 
l3ee4h:
	jp nc,l3e02h		;3ee4	d2 02 3e 	. . > 
	ld a,0eah		;3ee7	3e ea 	> . 
	add a,d			;3ee9	82 	. 
	ld a,(hl)			;3eea	7e 	~ 
	xor 0fdh		;3eeb	ee fd 	. . 
	ld sp,0ffffh		;3eed	31 ff ff 	1 . . 
	ld l,e			;3ef0	6b 	k 
	jr z,l3ee2h		;3ef1	28 ef 	( . 
l3ef3h:
	rst 28h			;3ef3	ef 	. 
	rst 20h			;3ef4	e7 	. 
	rst 20h			;3ef5	e7 	. 
	rst 20h			;3ef6	e7 	. 
	rst 20h			;3ef7	e7 	. 
	ld c,000h		;3ef8	0e 00 	. . 
	ld (bc),a			;3efa	02 	. 
	ld (bc),a			;3efb	02 	. 
	rrca			;3efc	0f 	. 
	inc b			;3efd	04 	. 
sub_3efeh:
	rlca			;3efe	07 	. 
l3effh:
	rlca			;3eff	07 	. 
l3f00h:
	jr l3f12h		;3f00	18 10 	. . 
	rla			;3f02	17 	. 
	rla			;3f03	17 	. 
	jr nz,l3f26h		;3f04	20 20 	    
	ccf			;3f06	3f 	? 
l3f07h:
	ccf			;3f07	3f 	? 
	ld b,b			;3f08	40 	@ 
	ld b,b			;3f09	40 	@ 
	ld a,a			;3f0a	7f 	 
	ld a,a			;3f0b	7f 	 
	ccf			;3f0c	3f 	? 
	ccf			;3f0d	3f 	? 
	ccf			;3f0e	3f 	? 
	ccf			;3f0f	3f 	? 
	ld a,a			;3f10	7f 	 
	ld h,b			;3f11	60 	` 
l3f12h:
	ld b,b			;3f12	40 	@ 
	ld h,b			;3f13	60 	` 
	ccf			;3f14	3f 	? 
	jr nc,l3f37h		;3f15	30 20 	0   
	jr nc,$-30		;3f17	30 e0 	0 . 
	nop			;3f19	00 	. 
	jr nz,l3f3ch		;3f1a	20 20 	    
	ret p			;3f1c	f0 	. 
	ld b,b			;3f1d	40 	@ 
	ld d,b			;3f1e	50 	P 
l3f1fh:
	ld d,b			;3f1f	50 	P 
	ret p			;3f20	f0 	. 
	nop			;3f21	00 	. 
	jr nz,l3f54h		;3f22	20 30 	  0 
	ld (hl),b			;3f24	70 	p 
	nop			;3f25	00 	. 
l3f26h:
	ret p			;3f26	f0 	. 
	ret p			;3f27	f0 	. 
	ret m			;3f28	f8 	. 
	ld h,b			;3f29	60 	` 
	ret m			;3f2a	f8 	. 
	ret m			;3f2b	f8 	. 
	ret m			;3f2c	f8 	. 
	add a,b			;3f2d	80 	. 
	add a,b			;3f2e	80 	. 
	adc a,b			;3f2f	88 	. 
	ret m			;3f30	f8 	. 
	nop			;3f31	00 	. 
	jr l3f4ch		;3f32	18 18 	. . 
	ret pe			;3f34	e8 	. 
	ex af,af'			;3f35	08 	. 
	ret m			;3f36	f8 	. 
l3f37h:
	ret m			;3f37	f8 	. 
	rra			;3f38	1f 	. 
	rra			;3f39	1f 	. 
	djnz l3f5bh		;3f3a	10 1f 	. . 
l3f3ch:
	ld a,a			;3f3c	7f 	 
	ld e,b			;3f3d	58 	X 
	ld h,b			;3f3e	60 	` 
	ld a,b			;3f3f	78 	x 
	ld a,a			;3f40	7f 	 
	ld d,b			;3f41	50 	P 
	ld h,b			;3f42	60 	` 
	ld (hl),b			;3f43	70 	p 
	ld e,a			;3f44	5f 	_ 
	ld l,b			;3f45	68 	h 
	ld d,b			;3f46	50 	P 
	ld a,b			;3f47	78 	x 
	ld a,a			;3f48	7f 	 
	ld c,a			;3f49	4f 	O 
	ld (hl),b			;3f4a	70 	p 
	ld a,a			;3f4b	7f 	 
l3f4ch:
	cpl			;3f4c	2f 	/ 
	inc hl			;3f4d	23 	# 
	ccf			;3f4e	3f 	? 
	ccf			;3f4f	3f 	? 
	ld h,h			;3f50	64 	d 
	ld d,h			;3f51	54 	T 
	ld l,a			;3f52	6f 	o 
	ld a,a			;3f53	7f 	 
l3f54h:
	dec sp			;3f54	3b 	; 
	dec sp			;3f55	3b 	; 
	dec sp			;3f56	3b 	; 
	dec sp			;3f57	3b 	; 
	call z,058a0h		;3f58	cc a0 58 	. . X 
l3f5bh:
	call m,040e4h		;3f5b	fc e4 40 	. . @ 
	inc a			;3f5e	3c 	< 
	ld a,h			;3f5f	7c 	| 
	jp p,074d8h		;3f60	f2 d8 74 	. . t 
	cp 0f2h		;3f63	fe f2 	. . 
	ret nc			;3f65	d0 	. 
	ld a,(hl)			;3f66	7e 	~ 
	cp 0d2h		;3f67	fe d2 	. . 
	or h			;3f69	b4 	. 
	jp c,0d6feh		;3f6a	da fe d6 	. . . 
l3f6dh:
	djnz l3f6dh		;3f6d	10 fe 	. . 
	cp 026h		;3f6f	fe 26 	. & 
sub_3f71h:
	ld h,d			;3f71	62 	b 
	cp (hl)			;3f72	be 	. 
	cp 0fch		;3f73	fe fc 	. . 
	call m,0fcfch		;3f75	fc fc fc 	. . . 
	rst 38h			;3f78	ff 	. 
	rst 38h			;3f79	ff 	. 
	rst 38h			;3f7a	ff 	. 
	rst 38h			;3f7b	ff 	. 
sub_3f7ch:
	rst 38h			;3f7c	ff 	. 
	rst 38h			;3f7d	ff 	. 
	rst 38h			;3f7e	ff 	. 
	rst 38h			;3f7f	ff 	. 
	rst 38h			;3f80	ff 	. 
l3f81h:
	rst 38h			;3f81	ff 	. 
	rst 38h			;3f82	ff 	. 
	rst 38h			;3f83	ff 	. 
	rst 38h			;3f84	ff 	. 
	rst 38h			;3f85	ff 	. 
	rst 38h			;3f86	ff 	. 
	rst 38h			;3f87	ff 	. 
	rst 38h			;3f88	ff 	. 
	rst 38h			;3f89	ff 	. 
	rst 38h			;3f8a	ff 	. 
	rst 38h			;3f8b	ff 	. 
	rst 38h			;3f8c	ff 	. 
	rst 38h			;3f8d	ff 	. 
	rst 38h			;3f8e	ff 	. 
	rst 38h			;3f8f	ff 	. 
	rst 38h			;3f90	ff 	. 
	rst 38h			;3f91	ff 	. 
	rst 38h			;3f92	ff 	. 
	rst 38h			;3f93	ff 	. 
	rst 38h			;3f94	ff 	. 
	rst 38h			;3f95	ff 	. 
	rst 38h			;3f96	ff 	. 
	rst 38h			;3f97	ff 	. 
	rst 38h			;3f98	ff 	. 
	rst 38h			;3f99	ff 	. 
	rst 38h			;3f9a	ff 	. 
	rst 38h			;3f9b	ff 	. 
	rst 38h			;3f9c	ff 	. 
	rst 38h			;3f9d	ff 	. 
	rst 38h			;3f9e	ff 	. 
	rst 38h			;3f9f	ff 	. 
	rst 38h			;3fa0	ff 	. 
	rst 38h			;3fa1	ff 	. 
	rst 38h			;3fa2	ff 	. 
	rst 38h			;3fa3	ff 	. 
	rst 38h			;3fa4	ff 	. 
	rst 38h			;3fa5	ff 	. 
	rst 38h			;3fa6	ff 	. 
	rst 38h			;3fa7	ff 	. 
	rst 38h			;3fa8	ff 	. 
	rst 38h			;3fa9	ff 	. 
	rst 38h			;3faa	ff 	. 
	rst 38h			;3fab	ff 	. 
	rst 38h			;3fac	ff 	. 
	rst 38h			;3fad	ff 	. 
	rst 38h			;3fae	ff 	. 
	rst 38h			;3faf	ff 	. 
	rst 38h			;3fb0	ff 	. 
	rst 38h			;3fb1	ff 	. 
	rst 38h			;3fb2	ff 	. 
	rst 38h			;3fb3	ff 	. 
	rst 38h			;3fb4	ff 	. 
	rst 38h			;3fb5	ff 	. 
	rst 38h			;3fb6	ff 	. 
	rst 38h			;3fb7	ff 	. 
	rst 38h			;3fb8	ff 	. 
	rst 38h			;3fb9	ff 	. 
	rst 38h			;3fba	ff 	. 
	rst 38h			;3fbb	ff 	. 
	rst 38h			;3fbc	ff 	. 
	rst 38h			;3fbd	ff 	. 
	rst 38h			;3fbe	ff 	. 
	rst 38h			;3fbf	ff 	. 
	rst 38h			;3fc0	ff 	. 
	rst 38h			;3fc1	ff 	. 
	rst 38h			;3fc2	ff 	. 
	rst 38h			;3fc3	ff 	. 
	rst 38h			;3fc4	ff 	. 
	rst 38h			;3fc5	ff 	. 
	rst 38h			;3fc6	ff 	. 
	rst 38h			;3fc7	ff 	. 
	rst 38h			;3fc8	ff 	. 
	rst 38h			;3fc9	ff 	. 
	rst 38h			;3fca	ff 	. 
	rst 38h			;3fcb	ff 	. 
	rst 38h			;3fcc	ff 	. 
	rst 38h			;3fcd	ff 	. 
	rst 38h			;3fce	ff 	. 
	rst 38h			;3fcf	ff 	. 
	rst 38h			;3fd0	ff 	. 
	rst 38h			;3fd1	ff 	. 
	rst 38h			;3fd2	ff 	. 
	rst 38h			;3fd3	ff 	. 
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
