; z80dasm 1.1.5
; command line: z80dasm -a -l -t -g 0x0000 -o disassembly/bank7.asm disassembly/bank7.bin

	org	00000h

l0000h:
	nop			;0000	00 	. 
	ld bc,l0405h		;0001	01 05 04 	. . . 
	ld (bc),a			;0004	02 	. 
l0005h:
	ld b,007h		;0005	06 07 	. . 
	inc b			;0007	04 	. 
	ex af,af'			;0008	08 	. 
	inc bc			;0009	03 	. 
	ld bc,l0c03h+1		;000a	01 04 0c 	. . . 
	ld b,00eh		;000d	06 0e 	. . 
	dec bc			;000f	0b 	. 
	nop			;0010	00 	. 
	add hl,bc			;0011	09 	. 
	ld a,(bc)			;0012	0a 	. 
	inc b			;0013	04 	. 
	ld (bc),a			;0014	02 	. 
	rlca			;0015	07 	. 
	ex af,af'			;0016	08 	. 
	inc b			;0017	04 	. 
	ld bc,l0905h		;0018	01 05 09 	. . . 
	inc b			;001b	04 	. 
	dec c			;001c	0d 	. 
	nop			;001d	00 	. 
	inc bc			;001e	03 	. 
	dec bc			;001f	0b 	. 
	ld a,(bc)			;0020	0a 	. 
	ld (bc),a			;0021	02 	. 
	rlca			;0022	07 	. 
l0023h:
	inc b			;0023	04 	. 
	add hl,bc			;0024	09 	. 
	ld bc,00408h		;0025	01 08 04 	. . . 
	dec bc			;0028	0b 	. 
	nop			;0029	00 	. 
	nop			;002a	00 	. 
	ld bc,l0302h		;002b	01 02 03 	. . . 
	inc b			;002e	04 	. 
	ld (de),a			;002f	12 	. 
	inc de			;0030	13 	. 
l0031h:
	inc c			;0031	0c 	. 
	dec d			;0032	15 	. 
	ld d,017h		;0033	16 17 	. . 
l0035h:
	dec e			;0035	1d 	. 
	ld e,01fh		;0036	1e 1f 	. . 
l0038h:
	jr nz,l003ah		;0038	20 00 	  . 
l003ah:
	nop			;003a	00 	. 
	inc d			;003b	14 	. 
	dec b			;003c	05 	. 
	ld b,018h		;003d	06 18 	. . 
	rlca			;003f	07 	. 
	add hl,de			;0040	19 	. 
	ld b,008h		;0041	06 08 	. . 
	djnz l0056h		;0043	10 11 	. . 
	ld b,01ah		;0045	06 1a 	. . 
	dec de			;0047	1b 	. 
	inc e			;0048	1c 	. 
	djnz $+18		;0049	10 10 	. . 
	djnz $+18		;004b	10 10 	. . 
	add hl,bc			;004d	09 	. 
	add hl,bc			;004e	09 	. 
	add hl,bc			;004f	09 	. 
	add hl,bc			;0050	09 	. 
	rlca			;0051	07 	. 
	rlca			;0052	07 	. 
	rlca			;0053	07 	. 
	rlca			;0054	07 	. 
	ld a,(bc)			;0055	0a 	. 
l0056h:
	ld a,(bc)			;0056	0a 	. 
	ld a,(bc)			;0057	0a 	. 
	ld a,(bc)			;0058	0a 	. 
	dec c			;0059	0d 	. 
	ld c,00dh		;005a	0e 0d 	. . 
	ld c,00fh		;005c	0e 0f 	. . 
	rrca			;005e	0f 	. 
	rrca			;005f	0f 	. 
	rrca			;0060	0f 	. 
	dec bc			;0061	0b 	. 
	dec bc			;0062	0b 	. 
	dec bc			;0063	0b 	. 
	dec bc			;0064	0b 	. 
	and a			;0065	a7 	. 
	add a,b			;0066	80 	. 
	rst 20h			;0067	e7 	. 
	add a,b			;0068	80 	. 
	pop af			;0069	f1 	. 
	add a,b			;006a	80 	. 
	inc bc			;006b	03 	. 
l006ch:
	add a,c			;006c	81 	. 
	rrca			;006d	0f 	. 
	add a,c			;006e	81 	. 
	dec d			;006f	15 	. 
	add a,c			;0070	81 	. 
	dec h			;0071	25 	% 
	add a,c			;0072	81 	. 
	daa			;0073	27 	' 
	add a,c			;0074	81 	. 
	add hl,hl			;0075	29 	) 
	add a,c			;0076	81 	. 
	cpl			;0077	2f 	/ 
	add a,c			;0078	81 	. 
	ld sp,l3381h		;0079	31 81 33 	1 . 3 
l007ch:
	add a,c			;007c	81 	. 
	ld (hl),e			;007d	73 	s 
	add a,c			;007e	81 	. 
	ld a,c			;007f	79 	y 
	add a,c			;0080	81 	. 
	cp c			;0081	b9 	. 
	add a,c			;0082	81 	. 
	ld sp,hl			;0083	f9 	. 
	add a,c			;0084	81 	. 
	ei			;0085	fb 	. 
	add a,c			;0086	81 	. 
	defb 0fdh,081h,003h	;illegal sequence		;0087	fd 81 03 	. . . 
	add a,d			;008a	82 	. 
	dec c			;008b	0d 	. 
	add a,d			;008c	82 	. 
	inc de			;008d	13 	. 
	add a,d			;008e	82 	. 
	dec a			;008f	3d 	= 
	add a,d			;0090	82 	. 
	ld b,e			;0091	43 	C 
	add a,d			;0092	82 	. 
	ld e,e			;0093	5b 	[ 
	add a,d			;0094	82 	. 
	ld h,c			;0095	61 	a 
	add a,d			;0096	82 	. 
	ld h,a			;0097	67 	g 
	add a,d			;0098	82 	. 
	ld l,l			;0099	6d 	m 
	add a,d			;009a	82 	. 
	ld a,b			;009b	78 	x 
	add a,d			;009c	82 	. 
	adc a,e			;009d	8b 	. 
	add a,d			;009e	82 	. 
	and l			;009f	a5 	. 
	add a,d			;00a0	82 	. 
	cp c			;00a1	b9 	. 
	add a,d			;00a2	82 	. 
	pop bc			;00a3	c1 	. 
	add a,d			;00a4	82 	. 
	call sub_0282h		;00a5	cd 82 02 	. . . 
	inc bc			;00a8	03 	. 
	nop			;00a9	00 	. 
	ld bc,l0302h		;00aa	01 02 03 	. . . 
	nop			;00ad	00 	. 
	ld bc,l0302h		;00ae	01 02 03 	. . . 
	nop			;00b1	00 	. 
	ld bc,l0102h		;00b2	01 02 01 	. . . 
	ld (bc),a			;00b5	02 	. 
	inc bc			;00b6	03 	. 
	nop			;00b7	00 	. 
	inc bc			;00b8	03 	. 
	nop			;00b9	00 	. 
	inc bc			;00ba	03 	. 
	nop			;00bb	00 	. 
	inc bc			;00bc	03 	. 
	nop			;00bd	00 	. 
	inc bc			;00be	03 	. 
	nop			;00bf	00 	. 
	ld bc,l0302h		;00c0	01 02 03 	. . . 
	nop			;00c3	00 	. 
	inc bc			;00c4	03 	. 
	nop			;00c5	00 	. 
l00c6h:
	ld bc,l0302h		;00c6	01 02 03 	. . . 
	nop			;00c9	00 	. 
	inc bc			;00ca	03 	. 
	nop			;00cb	00 	. 
	inc bc			;00cc	03 	. 
	nop			;00cd	00 	. 
	ld bc,l0102h		;00ce	01 02 01 	. . . 
	ld (bc),a			;00d1	02 	. 
	inc bc			;00d2	03 	. 
	nop			;00d3	00 	. 
	ld bc,l0302h		;00d4	01 02 03 	. . . 
	nop			;00d7	00 	. 
	inc bc			;00d8	03 	. 
	nop			;00d9	00 	. 
	ld bc,l0302h		;00da	01 02 03 	. . . 
	nop			;00dd	00 	. 
	inc bc			;00de	03 	. 
	nop			;00df	00 	. 
	ld bc,l0302h		;00e0	01 02 03 	. . . 
	nop			;00e3	00 	. 
	inc bc			;00e4	03 	. 
	nop			;00e5	00 	. 
l00e6h:
	ld bc,08606h		;00e6	01 06 86 	. . . 
	inc b			;00e9	04 	. 
	adc a,l			;00ea	8d 	. 
	ld b,085h		;00eb	06 85 	. . 
	dec b			;00ed	05 	. 
l00eeh:
	sub a			;00ee	97 	. 
	ex af,af'			;00ef	08 	. 
	adc a,h			;00f0	8c 	. 
	ex af,af'			;00f1	08 	. 
	adc a,b			;00f2	88 	. 
l00f3h:
	rlca			;00f3	07 	. 
	add a,c			;00f4	81 	. 
	ex af,af'			;00f5	08 	. 
l00f6h:
	adc a,b			;00f6	88 	. 
	rlca			;00f7	07 	. 
	add a,d			;00f8	82 	. 
sub_00f9h:
	ex af,af'			;00f9	08 	. 
	adc a,b			;00fa	88 	. 
	rlca			;00fb	07 	. 
	add a,e			;00fc	83 	. 
	ex af,af'			;00fd	08 	. 
l00feh:
	add a,a			;00fe	87 	. 
l00ffh:
	rlca			;00ff	07 	. 
sub_0100h:
	adc a,e			;0100	8b 	. 
l0101h:
	ex af,af'			;0101	08 	. 
l0102h:
	add a,a			;0102	87 	. 
sub_0103h:
	dec c			;0103	0d 	. 
sub_0104h:
	add a,a			;0104	87 	. 
	ld c,083h		;0105	0e 83 	. . 
l0107h:
	dec c			;0107	0d 	. 
sub_0108h:
	sub a			;0108	97 	. 
l0109h:
	ld c,087h		;0109	0e 87 	. . 
	dec c			;010b	0d 	. 
	sub c			;010c	91 	. 
	ld c,081h		;010d	0e 81 	. . 
	ld c,083h		;010f	0e 83 	. . 
	dec c			;0111	0d 	. 
sub_0112h:
	or b			;0112	b0 	. 
	ld c,08ah		;0113	0e 8a 	. . 
	ld b,08bh		;0115	06 8b 	. . 
	dec b			;0117	05 	. 
	add a,e			;0118	83 	. 
	rlca			;0119	07 	. 
	add a,a			;011a	87 	. 
	ld b,095h		;011b	06 95 	. . 
	rlca			;011d	07 	. 
	add a,c			;011e	81 	. 
	rrca			;011f	0f 	. 
	adc a,c			;0120	89 	. 
	ld de,l1081h		;0121	11 81 10 	. . . 
	add a,e			;0124	83 	. 
	ld a,(bc)			;0125	0a 	. 
	cp a			;0126	bf 	. 
	ld e,0bfh		;0127	1e bf 	. . 
	ld a,(bc)			;0129	0a 	. 
	adc a,e			;012a	8b 	. 
	dec bc			;012b	0b 	. 
	sbc a,e			;012c	9b 	. 
	inc c			;012d	0c 	. 
	sub a			;012e	97 	. 
	dec e			;012f	1d 	. 
	cp a			;0130	bf 	. 
	ld a,(de)			;0131	1a 	. 
	cp a			;0132	bf 	. 
	dec de			;0133	1b 	. 
	inc e			;0134	1c 	. 
	dec de			;0135	1b 	. 
	inc e			;0136	1c 	. 
	dec de			;0137	1b 	. 
	inc e			;0138	1c 	. 
	dec de			;0139	1b 	. 
	inc e			;013a	1c 	. 
	dec de			;013b	1b 	. 
	inc e			;013c	1c 	. 
l013dh:
	dec de			;013d	1b 	. 
	inc e			;013e	1c 	. 
l013fh:
	dec de			;013f	1b 	. 
	inc e			;0140	1c 	. 
	dec de			;0141	1b 	. 
	inc e			;0142	1c 	. 
	dec de			;0143	1b 	. 
	inc e			;0144	1c 	. 
	dec de			;0145	1b 	. 
	inc e			;0146	1c 	. 
	dec de			;0147	1b 	. 
	inc e			;0148	1c 	. 
	dec de			;0149	1b 	. 
	inc e			;014a	1c 	. 
	dec de			;014b	1b 	. 
	inc e			;014c	1c 	. 
	dec de			;014d	1b 	. 
	inc e			;014e	1c 	. 
	dec de			;014f	1b 	. 
	inc e			;0150	1c 	. 
	dec de			;0151	1b 	. 
	inc e			;0152	1c 	. 
	dec de			;0153	1b 	. 
	inc e			;0154	1c 	. 
	dec de			;0155	1b 	. 
	inc e			;0156	1c 	. 
	dec de			;0157	1b 	. 
	inc e			;0158	1c 	. 
	dec de			;0159	1b 	. 
	inc e			;015a	1c 	. 
	dec de			;015b	1b 	. 
	inc e			;015c	1c 	. 
	dec de			;015d	1b 	. 
	inc e			;015e	1c 	. 
	dec de			;015f	1b 	. 
	inc e			;0160	1c 	. 
	dec de			;0161	1b 	. 
	inc e			;0162	1c 	. 
	dec de			;0163	1b 	. 
	inc e			;0164	1c 	. 
	dec de			;0165	1b 	. 
	inc e			;0166	1c 	. 
	dec de			;0167	1b 	. 
	inc e			;0168	1c 	. 
	dec de			;0169	1b 	. 
	inc e			;016a	1c 	. 
	dec de			;016b	1b 	. 
	inc e			;016c	1c 	. 
	dec de			;016d	1b 	. 
	inc e			;016e	1c 	. 
	dec de			;016f	1b 	. 
	inc e			;0170	1c 	. 
	dec de			;0171	1b 	. 
	inc e			;0172	1c 	. 
	ld c,09fh		;0173	0e 9f 	. . 
	dec c			;0175	0d 	. 
	sub l			;0176	95 	. 
	ld c,089h		;0177	0e 89 	. . 
	ld (de),a			;0179	12 	. 
	inc de			;017a	13 	. 
	inc d			;017b	14 	. 
	dec d			;017c	15 	. 
	ld (de),a			;017d	12 	. 
	inc de			;017e	13 	. 
	inc d			;017f	14 	. 
	dec d			;0180	15 	. 
	ld (de),a			;0181	12 	. 
	inc de			;0182	13 	. 
l0183h:
	inc d			;0183	14 	. 
	dec d			;0184	15 	. 
	ld (de),a			;0185	12 	. 
	inc de			;0186	13 	. 
	inc d			;0187	14 	. 
	dec d			;0188	15 	. 
	ld (de),a			;0189	12 	. 
	inc de			;018a	13 	. 
	inc d			;018b	14 	. 
	dec d			;018c	15 	. 
	ld (de),a			;018d	12 	. 
	inc de			;018e	13 	. 
	inc d			;018f	14 	. 
	dec d			;0190	15 	. 
	ld (de),a			;0191	12 	. 
	inc de			;0192	13 	. 
	inc d			;0193	14 	. 
	dec d			;0194	15 	. 
	ld (de),a			;0195	12 	. 
	inc de			;0196	13 	. 
	inc d			;0197	14 	. 
	dec d			;0198	15 	. 
	ld (de),a			;0199	12 	. 
	inc de			;019a	13 	. 
	inc d			;019b	14 	. 
	dec d			;019c	15 	. 
	ld (de),a			;019d	12 	. 
	inc de			;019e	13 	. 
	inc d			;019f	14 	. 
	dec d			;01a0	15 	. 
	ld (de),a			;01a1	12 	. 
	inc de			;01a2	13 	. 
	inc d			;01a3	14 	. 
	dec d			;01a4	15 	. 
	ld (de),a			;01a5	12 	. 
	inc de			;01a6	13 	. 
	inc d			;01a7	14 	. 
	dec d			;01a8	15 	. 
	ld (de),a			;01a9	12 	. 
	inc de			;01aa	13 	. 
	inc d			;01ab	14 	. 
	dec d			;01ac	15 	. 
	ld (de),a			;01ad	12 	. 
	inc de			;01ae	13 	. 
	inc d			;01af	14 	. 
	dec d			;01b0	15 	. 
	ld (de),a			;01b1	12 	. 
	inc de			;01b2	13 	. 
	inc d			;01b3	14 	. 
	dec d			;01b4	15 	. 
	ld (de),a			;01b5	12 	. 
	inc de			;01b6	13 	. 
	inc d			;01b7	14 	. 
	dec d			;01b8	15 	. 
	ld (de),a			;01b9	12 	. 
	ld d,017h		;01ba	16 17 	. . 
	jr l01d4h		;01bc	18 16 	. . 
	rla			;01be	17 	. 
	jr l01d7h		;01bf	18 16 	. . 
	rla			;01c1	17 	. 
	jr l01dah		;01c2	18 16 	. . 
	rla			;01c4	17 	. 
	jr l01ddh		;01c5	18 16 	. . 
	rla			;01c7	17 	. 
	jr l01e0h		;01c8	18 16 	. . 
	rla			;01ca	17 	. 
	jr l01e3h		;01cb	18 16 	. . 
	rla			;01cd	17 	. 
	jr l01e6h		;01ce	18 16 	. . 
	rla			;01d0	17 	. 
	jr l01e9h		;01d1	18 16 	. . 
	rla			;01d3	17 	. 
l01d4h:
	jr l01ech		;01d4	18 16 	. . 
	rla			;01d6	17 	. 
l01d7h:
	jr l01efh		;01d7	18 16 	. . 
	rla			;01d9	17 	. 
l01dah:
	jr l01f2h		;01da	18 16 	. . 
	rla			;01dc	17 	. 
l01ddh:
	jr l01f5h		;01dd	18 16 	. . 
	rla			;01df	17 	. 
l01e0h:
	jr l01f8h		;01e0	18 16 	. . 
	rla			;01e2	17 	. 
l01e3h:
	jr l01fbh		;01e3	18 16 	. . 
	rla			;01e5	17 	. 
l01e6h:
	jr l01feh		;01e6	18 16 	. . 
	rla			;01e8	17 	. 
l01e9h:
	jr l0201h		;01e9	18 16 	. . 
	rla			;01eb	17 	. 
l01ech:
	jr $+24		;01ec	18 16 	. . 
	rla			;01ee	17 	. 
l01efh:
	jr l0207h		;01ef	18 16 	. . 
	rla			;01f1	17 	. 
l01f2h:
	jr l020ah		;01f2	18 16 	. . 
	rla			;01f4	17 	. 
l01f5h:
	jr l020dh		;01f5	18 16 	. . 
	rla			;01f7	17 	. 
l01f8h:
	jr l0213h		;01f8	18 19 	. . 
	cp a			;01fa	bf 	. 
l01fbh:
	inc c			;01fb	0c 	. 
	cp a			;01fc	bf 	. 
sub_01fdh:
	inc c			;01fd	0c 	. 
l01feh:
	sub e			;01fe	93 	. 
	dec bc			;01ff	0b 	. 
	sub a			;0200	97 	. 
l0201h:
	ld a,(bc)			;0201	0a 	. 
	sub e			;0202	93 	. 
	ld c,087h		;0203	0e 87 	. . 
	dec c			;0205	0d 	. 
	add a,e			;0206	83 	. 
l0207h:
	ld c,09bh		;0207	0e 9b 	. . 
	dec c			;0209	0d 	. 
l020ah:
	sub e			;020a	93 	. 
	ld c,083h		;020b	0e 83 	. . 
l020dh:
	ld c,087h		;020d	0e 87 	. . 
	dec c			;020f	0d 	. 
	xor a			;0210	af 	. 
	ld c,087h		;0211	0e 87 	. . 
l0213h:
	nop			;0213	00 	. 
	ld bc,l0302h		;0214	01 02 03 	. . . 
	nop			;0217	00 	. 
	ld bc,l0302h		;0218	01 02 03 	. . . 
	nop			;021b	00 	. 
	inc bc			;021c	03 	. 
	nop			;021d	00 	. 
	ld bc,l0302h		;021e	01 02 03 	. . . 
	nop			;0221	00 	. 
l0222h:
	ld bc,l0301h		;0222	01 01 03 	. . . 
	nop			;0225	00 	. 
	inc bc			;0226	03 	. 
	nop			;0227	00 	. 
	inc bc			;0228	03 	. 
	nop			;0229	00 	. 
	inc bc			;022a	03 	. 
	nop			;022b	00 	. 
	ld bc,l0302h		;022c	01 02 03 	. . . 
	nop			;022f	00 	. 
	inc bc			;0230	03 	. 
	nop			;0231	00 	. 
	ld bc,l0302h		;0232	01 02 03 	. . . 
	nop			;0235	00 	. 
	inc bc			;0236	03 	. 
	nop			;0237	00 	. 
	inc bc			;0238	03 	. 
	nop			;0239	00 	. 
	ld bc,09706h		;023a	01 06 97 	. . . 
	ld c,087h		;023d	0e 87 	. . 
	dec c			;023f	0d 	. 
	adc a,a			;0240	8f 	. 
	ld c,0a7h		;0241	0e a7 	. . 
	ld c,08bh		;0243	0e 8b 	. . 
	dec c			;0245	0d 	. 
	add a,e			;0246	83 	. 
	ld c,083h		;0247	0e 83 	. . 
	dec c			;0249	0d 	. 
	add a,e			;024a	83 	. 
	ld c,083h		;024b	0e 83 	. . 
	dec c			;024d	0d 	. 
	add a,l			;024e	85 	. 
	ld c,085h		;024f	0e 85 	. . 
	dec c			;0251	0d 	. 
	add a,a			;0252	87 	. 
	ld c,083h		;0253	0e 83 	. . 
	dec c			;0255	0d 	. 
	add a,e			;0256	83 	. 
	dec c			;0257	0d 	. 
	add a,e			;0258	83 	. 
	ld c,083h		;0259	0e 83 	. . 
	ld c,083h		;025b	0e 83 	. . 
	dec c			;025d	0d 	. 
	or c			;025e	b1 	. 
	ld c,089h		;025f	0e 89 	. . 
	ld a,(bc)			;0261	0a 	. 
	and e			;0262	a3 	. 
	dec bc			;0263	0b 	. 
	sub a			;0264	97 	. 
	ld e,083h		;0265	1e 83 	. . 
	ld e,093h		;0267	1e 93 	. . 
	dec bc			;0269	0b 	. 
	adc a,e			;026a	8b 	. 
	ld a,(bc)			;026b	0a 	. 
	sbc a,a			;026c	9f 	. 
	ld a,(bc)			;026d	0a 	. 
	adc a,e			;026e	8b 	. 
	dec bc			;026f	0b 	. 
	add a,e			;0270	83 	. 
	rra			;0271	1f 	. 
	sbc a,h			;0272	9c 	. 
	ld (l2021h),hl		;0273	22 21 20 	" !   
	rra			;0276	1f 	. 
	adc a,a			;0277	8f 	. 
	rra			;0278	1f 	. 
	ld (l2021h),hl		;0279	22 21 20 	" !   
	rra			;027c	1f 	. 
	ld (l2021h),hl		;027d	22 21 20 	" !   
	rra			;0280	1f 	. 
	xor h			;0281	ac 	. 
sub_0282h:
	ld (l2021h),hl		;0282	22 21 20 	" !   
	rra			;0285	1f 	. 
	ld (l2021h),hl		;0286	22 21 20 	" !   
	rra			;0289	1f 	. 
	add a,e			;028a	83 	. 
	rra			;028b	1f 	. 
	sub h			;028c	94 	. 
	ld (l2021h),hl		;028d	22 21 20 	" !   
	rra			;0290	1f 	. 
	ld (l2021h),hl		;0291	22 21 20 	" !   
	rra			;0294	1f 	. 
	ld (l2021h),hl		;0295	22 21 20 	" !   
	rra			;0298	1f 	. 
	sub b			;0299	90 	. 
	ld (l2021h),hl		;029a	22 21 20 	" !   
	rra			;029d	1f 	. 
	ld (l2021h),hl		;029e	22 21 20 	" !   
l02a1h:
	rra			;02a1	1f 	. 
	add a,e			;02a2	83 	. 
	dec bc			;02a3	0b 	. 
	add a,e			;02a4	83 	. 
	rlca			;02a5	07 	. 
	adc a,e			;02a6	8b 	. 
	dec b			;02a7	05 	. 
	add a,e			;02a8	83 	. 
	rlca			;02a9	07 	. 
	add a,a			;02aa	87 	. 
	dec b			;02ab	05 	. 
	add a,e			;02ac	83 	. 
	rlca			;02ad	07 	. 
	add a,e			;02ae	83 	. 
	dec b			;02af	05 	. 
	adc a,e			;02b0	8b 	. 
	rlca			;02b1	07 	. 
	add a,e			;02b2	83 	. 
	add hl,bc			;02b3	09 	. 
	add a,e			;02b4	83 	. 
	rlca			;02b5	07 	. 
	add a,e			;02b6	83 	. 
	dec b			;02b7	05 	. 
	add a,a			;02b8	87 	. 
	dec b			;02b9	05 	. 
	sub a			;02ba	97 	. 
	add hl,bc			;02bb	09 	. 
	adc a,a			;02bc	8f 	. 
	dec b			;02bd	05 	. 
	sub e			;02be	93 	. 
	rlca			;02bf	07 	. 
	add a,e			;02c0	83 	. 
	rlca			;02c1	07 	. 
l02c2h:
	add a,a			;02c2	87 	. 
	add hl,bc			;02c3	09 	. 
	add a,a			;02c4	87 	. 
	dec b			;02c5	05 	. 
l02c6h:
	add a,a			;02c6	87 	. 
	add hl,bc			;02c7	09 	. 
	add a,a			;02c8	87 	. 
	rlca			;02c9	07 	. 
	add a,a			;02ca	87 	. 
	add hl,bc			;02cb	09 	. 
	sub a			;02cc	97 	. 
	add hl,bc			;02cd	09 	. 
	adc a,a			;02ce	8f 	. 
	dec b			;02cf	05 	. 
	add a,a			;02d0	87 	. 
	add hl,bc			;02d1	09 	. 
	and e			;02d2	a3 	. 
	rlca			;02d3	07 	. 
	add a,e			;02d4	83 	. 
	ex (sp),hl			;02d5	e3 	. 
	add a,e			;02d6	83 	. 
	call po,0e883h		;02d7	e4 83 e8 	. . . 
	add a,e			;02da	83 	. 
	ld c,h			;02db	4c 	L 
	add a,h			;02dc	84 	. 
	sub l			;02dd	95 	. 
	add a,h			;02de	84 	. 
	exx			;02df	d9 	. 
	add a,h			;02e0	84 	. 
	dec h			;02e1	25 	% 
	add a,l			;02e2	85 	. 
	ld d,l			;02e3	55 	U 
	add a,l			;02e4	85 	. 
	xor d			;02e5	aa 	. 
	add a,l			;02e6	85 	. 
	jp c,0fa85h		;02e7	da 85 fa 	. . . 
	add a,l			;02ea	85 	. 
	ld b,d			;02eb	42 	B 
	add a,(hl)			;02ec	86 	. 
	sbc a,a			;02ed	9f 	. 
	add a,(hl)			;02ee	86 	. 
	ei			;02ef	fb 	. 
	add a,(hl)			;02f0	86 	. 
	ld b,a			;02f1	47 	G 
	add a,a			;02f2	87 	. 
	sub e			;02f3	93 	. 
	add a,a			;02f4	87 	. 
	call nc,0d587h		;02f5	d4 87 d5 	. . . 
	add a,a			;02f8	87 	. 
	sub 087h		;02f9	d6 87 	. . 
	jp pe,05387h		;02fb	ea 87 53 	. . S 
	adc a,b			;02fe	88 	. 
	ld e,b			;02ff	58 	X 
l0300h:
	adc a,b			;0300	88 	. 
l0301h:
	ld a,b			;0301	78 	x 
l0302h:
	adc a,b			;0302	88 	. 
	and b			;0303	a0 	. 
	adc a,b			;0304	88 	. 
	call 0d288h		;0305	cd 88 d2 	. . . 
	adc a,b			;0308	88 	. 
	ld (bc),a			;0309	02 	. 
	adc a,c			;030a	89 	. 
	ld b,d			;030b	42 	B 
	adc a,c			;030c	89 	. 
	ld h,a			;030d	67 	g 
	adc a,c			;030e	89 	. 
	add a,e			;030f	83 	. 
	adc a,c			;0310	89 	. 
	xor e			;0311	ab 	. 
	adc a,c			;0312	89 	. 
	rst 30h			;0313	f7 	. 
	adc a,c			;0314	89 	. 
	jr c,l02a1h		;0315	38 8a 	8 . 
	ld d,h			;0317	54 	T 
	adc a,d			;0318	8a 	. 
	add a,b			;0319	80 	. 
	adc a,d			;031a	8a 	. 
	or h			;031b	b4 	. 
	adc a,d			;031c	8a 	. 
	push af			;031d	f5 	. 
	adc a,d			;031e	8a 	. 
	ld c,c			;031f	49 	I 
	adc a,e			;0320	8b 	. 
	cp c			;0321	b9 	. 
	adc a,e			;0322	8b 	. 
	dec a			;0323	3d 	= 
	adc a,h			;0324	8c 	. 
	add a,08ch		;0325	c6 8c 	. . 
	ld (de),a			;0327	12 	. 
	adc a,l			;0328	8d 	. 
	ld (hl),d			;0329	72 	r 
	adc a,l			;032a	8d 	. 
	jp nc,l2f8dh		;032b	d2 8d 2f 	. . / 
	adc a,(hl)			;032e	8e 	. 
	ld d,e			;032f	53 	S 
	adc a,(hl)			;0330	8e 	. 
	sub a			;0331	97 	. 
	adc a,(hl)			;0332	8e 	. 
	rst 8			;0333	cf 	. 
	adc a,(hl)			;0334	8e 	. 
	jr l02c6h		;0335	18 8f 	. . 
	add hl,de			;0337	19 	. 
	adc a,a			;0338	8f 	. 
	add hl,sp			;0339	39 	9 
	adc a,a			;033a	8f 	. 
	ld a,08fh		;033b	3e 8f 	> . 
	ld e,a			;033d	5f 	_ 
	adc a,a			;033e	8f 	. 
	ld a,e			;033f	7b 	{ 
	adc a,a			;0340	8f 	. 
	sub a			;0341	97 	. 
	adc a,a			;0342	8f 	. 
	cp e			;0343	bb 	. 
	adc a,a			;0344	8f 	. 
	call c,0488fh		;0345	dc 8f 48 	. . H 
	sub b			;0348	90 	. 
	ret nz			;0349	c0 	. 
	sub b			;034a	90 	. 
	ld e,b			;034b	58 	X 
	sub c			;034c	91 	. 
	dec c			;034d	0d 	. 
	sub d			;034e	92 	. 
	ld d,e			;034f	53 	S 
	sub d			;0350	92 	. 
	ld d,a			;0351	57 	W 
	sub d			;0352	92 	. 
	ld e,e			;0353	5b 	[ 
	sub d			;0354	92 	. 
	ld (hl),e			;0355	73 	s 
	sub d			;0356	92 	. 
	add a,e			;0357	83 	. 
	sub d			;0358	92 	. 
	sub c			;0359	91 	. 
	sub d			;035a	92 	. 
	or e			;035b	b3 	. 
	sub d			;035c	92 	. 
	push bc			;035d	c5 	. 
	sub d			;035e	92 	. 
	inc sp			;035f	33 	3 
	sub e			;0360	93 	. 
	scf			;0361	37 	7 
	sub e			;0362	93 	. 
	dec sp			;0363	3b 	; 
	sub e			;0364	93 	. 
	ld b,c			;0365	41 	A 
	sub e			;0366	93 	. 
	ld b,a			;0367	47 	G 
	sub e			;0368	93 	. 
	ld h,l			;0369	65 	e 
	sub e			;036a	93 	. 
	add a,e			;036b	83 	. 
	sub e			;036c	93 	. 
l036dh:
	sub c			;036d	91 	. 
	sub e			;036e	93 	. 
	add a,e			;036f	83 	. 
	sub h			;0370	94 	. 
	defb 0ddh,094h	;sub ixh		;0371	dd 94 	. . 
	push hl			;0373	e5 	. 
	sub h			;0374	94 	. 
	daa			;0375	27 	' 
	sub l			;0376	95 	. 
	ld l,c			;0377	69 	i 
	sub l			;0378	95 	. 
	cp a			;0379	bf 	. 
	sub l			;037a	95 	. 
	pop de			;037b	d1 	. 
	sub l			;037c	95 	. 
	rrca			;037d	0f 	. 
	sub (hl)			;037e	96 	. 
	add hl,sp			;037f	39 	9 
	sub (hl)			;0380	96 	. 
	ld h,e			;0381	63 	c 
	sub (hl)			;0382	96 	. 
	pop de			;0383	d1 	. 
	sub (hl)			;0384	96 	. 
	exx			;0385	d9 	. 
	sub (hl)			;0386	96 	. 
	rst 30h			;0387	f7 	. 
	sub (hl)			;0388	96 	. 
	ex af,af'			;0389	08 	. 
	sub a			;038a	97 	. 
	jp z,0dc97h		;038b	ca 97 dc 	. . . 
	sub a			;038e	97 	. 
	jp nz,0cb98h		;038f	c2 98 cb 	. . . 
	sbc a,b			;0392	98 	. 
	ex de,hl			;0393	eb 	. 
	sbc a,b			;0394	98 	. 
	defb 0fdh,098h,007h	;illegal sequence		;0395	fd 98 07 	. . . 
	sbc a,c			;0398	99 	. 
	dec e			;0399	1d 	. 
	sbc a,c			;039a	99 	. 
	cpl			;039b	2f 	/ 
	sbc a,c			;039c	99 	. 
	ld b,c			;039d	41 	A 
	sbc a,c			;039e	99 	. 
	ld e,e			;039f	5b 	[ 
	sbc a,c			;03a0	99 	. 
	ld (hl),l			;03a1	75 	u 
	sbc a,c			;03a2	99 	. 
	ld h,a			;03a3	67 	g 
	sbc a,d			;03a4	9a 	. 
	add a,c			;03a5	81 	. 
	sbc a,d			;03a6	9a 	. 
	ld h,e			;03a7	63 	c 
	sbc a,e			;03a8	9b 	. 
	add a,l			;03a9	85 	. 
	sbc a,e			;03aa	9b 	. 
	and a			;03ab	a7 	. 
	sbc a,e			;03ac	9b 	. 
	cp c			;03ad	b9 	. 
	sbc a,e			;03ae	9b 	. 
	in a,(09bh)		;03af	db 9b 	. . 
	defb 0fdh,09bh,01bh	;illegal sequence		;03b1	fd 9b 1b 	. . . 
	sbc a,h			;03b4	9c 	. 
	inc l			;03b5	2c 	, 
	sbc a,h			;03b6	9c 	. 
	ld b,(hl)			;03b7	46 	F 
	sbc a,h			;03b8	9c 	. 
	sub b			;03b9	90 	. 
	sbc a,h			;03ba	9c 	. 
	and d			;03bb	a2 	. 
	sbc a,h			;03bc	9c 	. 
	call po,0269ch		;03bd	e4 9c 26 	. . & 
	sbc a,l			;03c0	9d 	. 
	ld c,b			;03c1	48 	H 
	sbc a,l			;03c2	9d 	. 
	ld e,(hl)			;03c3	5e 	^ 
	sbc a,l			;03c4	9d 	. 
	ld l,h			;03c5	6c 	l 
l03c6h:
	sbc a,l			;03c6	9d 	. 
	ld (hl),d			;03c7	72 	r 
	sbc a,l			;03c8	9d 	. 
	add a,h			;03c9	84 	. 
	sbc a,l			;03ca	9d 	. 
	or 09dh		;03cb	f6 9d 	. . 
	jr c,l036dh		;03cd	38 9e 	8 . 
	cp d			;03cf	ba 	. 
	sbc a,(hl)			;03d0	9e 	. 
	call z,0d29eh		;03d1	cc 9e d2 	. . . 
	sbc a,(hl)			;03d4	9e 	. 
	jp z,0ca97h		;03d5	ca 97 ca 	. . . 
	sub a			;03d8	97 	. 
	jp z,0ca97h		;03d9	ca 97 ca 	. . . 
	sub a			;03dc	97 	. 
	jp z,0ca97h		;03dd	ca 97 ca 	. . . 
	sub a			;03e0	97 	. 
	jp z,0ff97h		;03e1	ca 97 ff 	. . . 
	call m,sub_0100h		;03e4	fc 00 01 	. . . 
	nop			;03e7	00 	. 
	nop			;03e8	00 	. 
	djnz l03ech		;03e9	10 01 	. . 
	add hl,bc			;03eb	09 	. 
l03ech:
	ld (de),a			;03ec	12 	. 
	dec b			;03ed	05 	. 
	ld bc,l1c05h		;03ee	01 05 1c 	. . . 
	djnz l03f4h		;03f1	10 01 	. . 
	ld a,(bc)			;03f3	0a 	. 
l03f4h:
	ld e,007h		;03f4	1e 07 	. . 
	ld bc,l2001h		;03f6	01 01 20 	. .   
	ld b,001h		;03f9	06 01 	. . 
	inc bc			;03fb	03 	. 
	ld (l0107h),hl		;03fc	22 07 01 	" . . 
l03ffh:
	ld (bc),a			;03ff	02 	. 
	ld h,00bh		;0400	26 0b 	& . 
	ld bc,l2801h		;0402	01 01 28 	. . ( 
l0405h:
	ld a,(bc)			;0405	0a 	. 
	ld bc,l2a04h		;0406	01 04 2a 	. . * 
	dec bc			;0409	0b 	. 
	ld bc,l3202h		;040a	01 02 32 	. . 2 
	dec bc			;040d	0b 	. 
	ld bc,l3401h		;040e	01 01 34 	. . 4 
	ld a,(bc)			;0411	0a 	. 
	ld bc,l3604h		;0412	01 04 36 	. . 6 
	dec bc			;0415	0b 	. 
	ld bc,l3c02h		;0416	01 02 3c 	. . < 
	rlca			;0419	07 	. 
	ld bc,l3e01h		;041a	01 01 3e 	. . > 
	ld b,001h		;041d	06 01 	. . 
	inc bc			;041f	03 	. 
	ld b,b			;0420	40 	@ 
	rlca			;0421	07 	. 
	ld bc,04602h		;0422	01 02 46 	. . F 
	dec bc			;0425	0b 	. 
	ld bc,04801h		;0426	01 01 48 	. . H 
	ld a,(bc)			;0429	0a 	. 
	ld bc,04a04h		;042a	01 04 4a 	. . J 
	dec bc			;042d	0b 	. 
	ld bc,05302h		;042e	01 02 53 	. . S 
	djnz l0434h		;0431	10 01 	. . 
	add hl,bc			;0433	09 	. 
l0434h:
	ld d,(hl)			;0434	56 	V 
	inc bc			;0435	03 	. 
	ld bc,06005h		;0436	01 05 60 	. . ` 
	rrca			;0439	0f 	. 
	ld bc,06c08h		;043a	01 08 6c 	. . l 
	add a,c			;043d	81 	. 
	inc c			;043e	0c 	. 
	ld b,086h		;043f	06 86 	. . 
	ld bc,00501h		;0441	01 01 05 	. . . 
	call nc,sub_0103h		;0444	d4 03 01 	. . . 
	dec b			;0447	05 	. 
	and 004h		;0448	e6 04 	. . 
	ld bc,00605h		;044a	01 05 06 	. . . 
	ld bc,00501h		;044d	01 01 05 	. . . 
	ld d,002h		;0450	16 02 	. . 
	ld bc,l2305h		;0452	01 05 23 	. . # 
	rrca			;0455	0f 	. 
	ld bc,l250bh		;0456	01 0b 25 	. . % 
	ld bc,00501h		;0459	01 01 05 	. . . 
	inc l			;045c	2c 	, 
	rrca			;045d	0f 	. 
	ld bc,l360ch		;045e	01 0c 36 	. . 6 
	ld (bc),a			;0461	02 	. 
	ld bc,04605h		;0462	01 05 46 	. . F 
	inc bc			;0465	03 	. 
sub_0466h:
	ld bc,04f05h		;0466	01 05 4f 	. . O 
	rrca			;0469	0f 	. 
	ld bc,05c0bh		;046a	01 0b 5c 	. . \ 
	rrca			;046d	0f 	. 
	ld bc,06c0ch		;046e	01 0c 6c 	. . l 
	ld bc,00501h		;0471	01 01 05 	. . . 
	ld a,a			;0474	7f 	 
	rrca			;0475	0f 	. 
	ld bc,0900bh		;0476	01 0b 90 	. . . 
	rrca			;0479	0f 	. 
	ld bc,0920ch		;047a	01 0c 92 	. . . 
	ld bc,00501h		;047d	01 01 05 	. . . 
	xor a			;0480	af 	. 
	rrca			;0481	0f 	. 
	ld bc,0b40bh		;0482	01 0b b4 	. . . 
	add hl,bc			;0485	09 	. 
	ld bc,0d807h		;0486	01 07 d8 	. . . 
	add hl,bc			;0489	09 	. 
	ld bc,0e007h		;048a	01 07 e0 	. . . 
	rrca			;048d	0f 	. 
	ld bc,0f20ch		;048e	01 0c f2 	. . . 
	ld bc,00501h		;0491	01 01 05 	. . . 
	rst 38h			;0494	ff 	. 
	nop			;0495	00 	. 
	inc c			;0496	0c 	. 
	ld bc,l201eh		;0497	01 1e 20 	. .   
	ld (de),a			;049a	12 	. 
	ld bc,02e12h		;049b	01 12 2e 	. . . 
	ld (de),a			;049e	12 	. 
	ld bc,l341bh		;049f	01 1b 34 	. . 4 
	ld c,001h		;04a2	0e 01 	. . 
	rra			;04a4	1f 	. 
	ld b,b			;04a5	40 	@ 
	djnz l04a9h		;04a6	10 01 	. . 
	rra			;04a8	1f 	. 
l04a9h:
	ld c,h			;04a9	4c 	L 
	inc c			;04aa	0c 	. 
	ld bc,0581fh		;04ab	01 1f 58 	. . X 
	djnz l04b1h		;04ae	10 01 	. . 
	rra			;04b0	1f 	. 
l04b1h:
	ld h,h			;04b1	64 	d 
	inc c			;04b2	0c 	. 
	ld bc,0701fh		;04b3	01 1f 70 	. . p 
	djnz l04b9h		;04b6	10 01 	. . 
	rra			;04b8	1f 	. 
l04b9h:
	ld a,d			;04b9	7a 	z 
	dec b			;04ba	05 	. 
	ld bc,07c1dh		;04bb	01 1d 7c 	. . | 
	inc c			;04be	0c 	. 
	ld bc,0901fh		;04bf	01 1f 90 	. . . 
	ld (de),a			;04c2	12 	. 
	ld bc,0ae12h		;04c3	01 12 ae 	. . . 
	ld (de),a			;04c6	12 	. 
	ld bc,0b41bh		;04c7	01 1b b4 	. . . 
	ld c,001h		;04ca	0e 01 	. . 
	rra			;04cc	1f 	. 
	cp h			;04cd	bc 	. 
	ld b,001h		;04ce	06 01 	. . 
	dec e			;04d0	1d 	. 
	call po,0010eh		;04d1	e4 0e 01 	. . . 
	rra			;04d4	1f 	. 
	ret m			;04d5	f8 	. 
	ld (de),a			;04d6	12 	. 
	ld bc,l0e12h		;04d7	01 12 0e 	. . . 
	ld (de),a			;04da	12 	. 
	ld bc,l141bh		;04db	01 1b 14 	. . . 
	inc de			;04de	13 	. 
	ld bc,l201fh		;04df	01 1f 20 	. .   
	rrca			;04e2	0f 	. 
	ld bc,l2c1fh		;04e3	01 1f 2c 	. . , 
	inc de			;04e6	13 	. 
	ld bc,l381fh		;04e7	01 1f 38 	. . 8 
	rrca			;04ea	0f 	. 
	ld bc,0441fh		;04eb	01 1f 44 	. . D 
	inc de			;04ee	13 	. 
	ld bc,0501fh		;04ef	01 1f 50 	. . P 
	rrca			;04f2	0f 	. 
	ld bc,05c1fh		;04f3	01 1f 5c 	. . \ 
	inc de			;04f6	13 	. 
	ld bc,0681fh		;04f7	01 1f 68 	. . h 
	rrca			;04fa	0f 	. 
	ld bc,0741fh		;04fb	01 1f 74 	. . t 
l04feh:
	inc de			;04fe	13 	. 
	ld bc,0801fh		;04ff	01 1f 80 	. . . 
	rrca			;0502	0f 	. 
	ld bc,08c1fh		;0503	01 1f 8c 	. . . 
	inc de			;0506	13 	. 
	ld bc,0941fh		;0507	01 1f 94 	. . . 
	inc b			;050a	04 	. 
	ld bc,0a41ch		;050b	01 1c a4 	. . . 
	inc de			;050e	13 	. 
	ld bc,0b01fh		;050f	01 1f b0 	. . . 
	rrca			;0512	0f 	. 
	ld bc,0bc1fh		;0513	01 1f bc 	. . . 
	inc de			;0516	13 	. 
	ld bc,0c41fh		;0517	01 1f c4 	. . . 
	dec b			;051a	05 	. 
	ld bc,0d41dh		;051b	01 1d d4 	. . . 
	ld (de),a			;051e	12 	. 
	ld bc,0fc12h		;051f	01 12 fc 	. . . 
	ex af,af'			;0522	08 	. 
	ld bc,01e11h		;0523	01 11 1e 	. . . 
	ld (de),a			;0526	12 	. 
	ld bc,l301bh		;0527	01 1b 30 	. . 0 
	ld (de),a			;052a	12 	. 
	ld bc,06e12h		;052b	01 12 6e 	. . n 
	ex af,af'			;052e	08 	. 
	ld bc,08e11h		;052f	01 11 8e 	. . . 
	ex af,af'			;0532	08 	. 
l0533h:
	ld bc,09e11h		;0533	01 11 9e 	. . . 
	ld (de),a			;0536	12 	. 
	ld bc,0a41bh		;0537	01 1b a4 	. . . 
	ld c,001h		;053a	0e 01 	. . 
	rra			;053c	1f 	. 
	xor h			;053d	ac 	. 
	inc b			;053e	04 	. 
	ld bc,0bc1dh		;053f	01 1d bc 	. . . 
	ld a,(bc)			;0542	0a 	. 
	ld bc,0c81fh		;0543	01 1f c8 	. . . 
	dec c			;0546	0d 	. 
	ld bc,0d41fh		;0547	01 1f d4 	. . . 
	ex af,af'			;054a	08 	. 
	ld bc,0ea1fh		;054b	01 1f ea 	. . . 
	inc b			;054e	04 	. 
	ld bc,0f01dh		;054f	01 1d f0 	. . . 
	ld (de),a			;0552	12 	. 
	ld bc,l0e12h		;0553	01 12 0e 	. . . 
	ex af,af'			;0556	08 	. 
	ld bc,01e11h		;0557	01 11 1e 	. . . 
	ld (de),a			;055a	12 	. 
	ld bc,0241bh		;055b	01 1b 24 	. . $ 
	djnz l0561h		;055e	10 01 	. . 
	rra			;0560	1f 	. 
l0561h:
	inc l			;0561	2c 	, 
	inc b			;0562	04 	. 
	ld bc,l361dh		;0563	01 1d 36 	. . 6 
	inc bc			;0566	03 	. 
	ld bc,l3c1ch		;0567	01 1c 3c 	. . < 
	ex af,af'			;056a	08 	. 
	ld bc,0441fh		;056b	01 1f 44 	. . D 
	inc b			;056e	04 	. 
	ld bc,0541dh		;056f	01 1d 54 	. . T 
	dec bc			;0572	0b 	. 
	ld bc,0681fh		;0573	01 1f 68 	. . h 
	inc b			;0576	04 	. 
	ld bc,0741dh		;0577	01 1d 74 	. . t 
	dec b			;057a	05 	. 
	ld bc,0841ch		;057b	01 1c 84 	. . . 
	ld c,001h		;057e	0e 01 	. . 
	rra			;0580	1f 	. 
	adc a,h			;0581	8c 	. 
	inc b			;0582	04 	. 
	ld bc,0981dh		;0583	01 1d 98 	. . . 
	dec b			;0586	05 	. 
	ld bc,0a01ch		;0587	01 1c a0 	. . . 
	inc c			;058a	0c 	. 
	ld bc,0a81fh		;058b	01 1f a8 	. . . 
	dec b			;058e	05 	. 
	ld bc,0aa1dh		;058f	01 1d aa 	. . . 
	djnz l0595h		;0592	10 01 	. . 
	rra			;0594	1f 	. 
l0595h:
	or h			;0595	b4 	. 
	inc c			;0596	0c 	. 
	ld bc,0c81fh		;0597	01 1f c8 	. . . 
	inc b			;059a	04 	. 
	ld bc,0d81dh		;059b	01 1d d8 	. . . 
	dec b			;059e	05 	. 
	ld bc,0e01ch		;059f	01 1c e0 	. . . 
	ld (de),a			;05a2	12 	. 
	ld bc,0f412h		;05a3	01 12 f4 	. . . 
	nop			;05a6	00 	. 
	ld bc,0ff20h		;05a7	01 20 ff 	.   . 
	inc b			;05aa	04 	. 
	ex af,af'			;05ab	08 	. 
	ld bc,07e11h		;05ac	01 11 7e 	. . ~ 
	ld (de),a			;05af	12 	. 
	ld bc,0801bh		;05b0	01 1b 80 	. . . 
	inc b			;05b3	04 	. 
	ld bc,0881dh		;05b4	01 1d 88 	. . . 
	djnz l05bah		;05b7	10 01 	. . 
	rra			;05b9	1f 	. 
l05bah:
	sub b			;05ba	90 	. 
	dec b			;05bb	05 	. 
	ld bc,0981ch		;05bc	01 1c 98 	. . . 
	ld c,001h		;05bf	0e 01 	. . 
l05c1h:
	rra			;05c1	1f 	. 
	xor b			;05c2	a8 	. 
	djnz l05c6h		;05c3	10 01 	. . 
	rra			;05c5	1f 	. 
l05c6h:
	or b			;05c6	b0 	. 
	dec b			;05c7	05 	. 
	ld bc,0b81ch		;05c8	01 1c b8 	. . . 
	ld c,001h		;05cb	0e 01 	. . 
	rra			;05cd	1f 	. 
	ret nz			;05ce	c0 	. 
	dec b			;05cf	05 	. 
	ld bc,0d01dh		;05d0	01 1d d0 	. . . 
	inc b			;05d3	04 	. 
	ld bc,0d81ch		;05d4	01 1c d8 	. . . 
	ld (de),a			;05d7	12 	. 
	ld bc,l1e12h		;05d8	01 12 1e 	. . . 
	ld (de),a			;05db	12 	. 
	ld bc,0221bh		;05dc	01 1b 22 	. . " 
	inc b			;05df	04 	. 
	ld bc,l281dh		;05e0	01 1d 28 	. . ( 
	djnz l05e6h		;05e3	10 01 	. . 
	rra			;05e5	1f 	. 
l05e6h:
	ld (hl),004h		;05e6	36 04 	6 . 
l05e8h:
	ld bc,0431ch		;05e8	01 1c 43 	. . C 
	inc b			;05eb	04 	. 
	ld bc,0481dh		;05ec	01 1d 48 	. . H 
	ld a,(bc)			;05ef	0a 	. 
	ld bc,0541fh		;05f0	01 1f 54 	. . T 
	inc b			;05f3	04 	. 
	ld bc,0601ch		;05f4	01 1c 60 	. . ` 
	ld (de),a			;05f7	12 	. 
	ld bc,02e12h		;05f8	01 12 2e 	. . . 
	ld (de),a			;05fb	12 	. 
	ld bc,l341bh		;05fc	01 1b 34 	. . 4 
	inc b			;05ff	04 	. 
	ld bc,0401ch		;0600	01 1c 40 	. . @ 
	ld (de),a			;0603	12 	. 
	ld bc,04e12h		;0604	01 12 4e 	. . N 
	ld (de),a			;0607	12 	. 
	ld bc,0541bh		;0608	01 1b 54 	. . T 
	ld c,001h		;060b	0e 01 	. . 
	rra			;060d	1f 	. 
	ld h,b			;060e	60 	` 
	ld (de),a			;060f	12 	. 
	ld bc,06e12h		;0610	01 12 6e 	. . n 
	ld (de),a			;0613	12 	. 
	ld bc,0751bh		;0614	01 1b 75 	. . u 
	dec b			;0617	05 	. 
	ld bc,0881ch		;0618	01 1c 88 	. . . 
	ld (de),a			;061b	12 	. 
	ld bc,09e12h		;061c	01 12 9e 	. . . 
	ld (de),a			;061f	12 	. 
	ld bc,0a81bh		;0620	01 1b a8 	. . . 
	ld b,001h		;0623	06 01 	. . 
l0625h:
	dec e			;0625	1d 	. 
	or (hl)			;0626	b6 	. 
	dec b			;0627	05 	. 
	ld bc,0c01ch		;0628	01 1c c0 	. . . 
	ld (de),a			;062b	12 	. 
	ld bc,0ce12h		;062c	01 12 ce 	. . . 
	ld (de),a			;062f	12 	. 
	ld bc,0d41bh		;0630	01 1b d4 	. . . 
	inc c			;0633	0c 	. 
	ld bc,0e01fh		;0634	01 1f e0 	. . . 
	ld c,001h		;0637	0e 01 	. . 
	rra			;0639	1f 	. 
	ret pe			;063a	e8 	. 
	dec b			;063b	05 	. 
	ld bc,0f01dh		;063c	01 1d f0 	. . . 
	ld (de),a			;063f	12 	. 
	ld bc,l0e12h		;0640	01 12 0e 	. . . 
	ld (de),a			;0643	12 	. 
	ld bc,l181bh		;0644	01 1b 18 	. . . 
	ld c,001h		;0647	0e 01 	. . 
	rra			;0649	1f 	. 
	jr nz,$+7		;064a	20 05 	  . 
	ld bc,l301dh		;064c	01 1d 30 	. . 0 
	inc b			;064f	04 	. 
	ld bc,l381ch		;0650	01 1c 38 	. . 8 
	ld c,001h		;0653	0e 01 	. . 
	rra			;0655	1f 	. 
	ld b,d			;0656	42 	B 
	ld b,001h		;0657	06 01 	. . 
	dec e			;0659	1d 	. 
	ld c,b			;065a	48 	H 
	inc c			;065b	0c 	. 
	ld bc,0501fh		;065c	01 1f 50 	. . P 
	dec b			;065f	05 	. 
	ld bc,0581ch		;0660	01 1c 58 	. . X 
	djnz l0666h		;0663	10 01 	. . 
	rra			;0665	1f 	. 
l0666h:
	ld h,d			;0666	62 	b 
	dec b			;0667	05 	. 
	ld bc,0681dh		;0668	01 1d 68 	. . h 
	ld c,001h		;066b	0e 01 	. . 
	rra			;066d	1f 	. 
	ld (hl),b			;066e	70 	p 
	dec b			;066f	05 	. 
	ld bc,0781ch		;0670	01 1c 78 	. . x 
	inc de			;0673	13 	. 
	ld bc,0821fh		;0674	01 1f 82 	. . . 
	dec b			;0677	05 	. 
	ld bc,0881dh		;0678	01 1d 88 	. . . 
	ld c,001h		;067b	0e 01 	. . 
	rra			;067d	1f 	. 
	sub b			;067e	90 	. 
	ld b,001h		;067f	06 01 	. . 
	inc e			;0681	1c 	. 
	and d			;0682	a2 	. 
	dec b			;0683	05 	. 
	ld bc,0a81dh		;0684	01 1d a8 	. . . 
	inc de			;0687	13 	. 
	ld bc,0b41fh		;0688	01 1f b4 	. . . 
	dec b			;068b	05 	. 
	ld bc,0c41ch		;068c	01 1c c4 	. . . 
	ld b,001h		;068f	06 01 	. . 
	rra			;0691	1f 	. 
	call z,sub_0104h		;0692	cc 04 01 	. . . 
	dec e			;0695	1d 	. 
	ret c			;0696	d8 	. 
	ld (de),a			;0697	12 	. 
	ld bc,0f412h		;0698	01 12 f4 	. . . 
	nop			;069b	00 	. 
	ld bc,0ff20h		;069c	01 20 ff 	.   . 
	nop			;069f	00 	. 
	ld (l3909h),a		;06a0	32 09 39 	2 . 9 
	ex af,af'			;06a3	08 	. 
	dec b			;06a4	05 	. 
	ld bc,l1805h		;06a5	01 05 18 	. . . 
	inc b			;06a8	04 	. 
	ld bc,02405h		;06a9	01 05 24 	. . $ 
	rrca			;06ac	0f 	. 
	ld bc,l2808h		;06ad	01 08 28 	. . ( 
	dec b			;06b0	05 	. 
	ld bc,l3005h		;06b1	01 05 30 	. . 0 
	add a,c			;06b4	81 	. 
	ld (bc),a			;06b5	02 	. 
	ld b,038h		;06b6	06 38 	. 8 
	dec b			;06b8	05 	. 
	ld bc,04005h		;06b9	01 05 40 	. . @ 
	ld l,008h		;06bc	2e 08 	. . 
	add hl,sp			;06be	39 	9 
	ld c,b			;06bf	48 	H 
	ld b,001h		;06c0	06 01 	. . 
	dec b			;06c2	05 	. 
	ld e,b			;06c3	58 	X 
	inc b			;06c4	04 	. 
	ld bc,06005h		;06c5	01 05 60 	. . ` 
	add a,c			;06c8	81 	. 
	ld (bc),a			;06c9	02 	. 
	ld b,064h		;06ca	06 64 	. d 
	dec b			;06cc	05 	. 
	ld bc,07005h		;06cd	01 05 70 	. . p 
	ld l,004h		;06d0	2e 04 	. . 
	add hl,sp			;06d2	39 	9 
	ld a,h			;06d3	7c 	| 
	dec b			;06d4	05 	. 
	ld bc,08005h		;06d5	01 05 80 	. . . 
	add a,c			;06d8	81 	. 
	ld b,006h		;06d9	06 06 	. . 
	sub b			;06db	90 	. 
	ld b,001h		;06dc	06 01 	. . 
	dec b			;06de	05 	. 
	or b			;06df	b0 	. 
	ld l,004h		;06e0	2e 04 	. . 
	add hl,sp			;06e2	39 	9 
	or h			;06e3	b4 	. 
	ld b,001h		;06e4	06 01 	. . 
	dec b			;06e6	05 	. 
	ret nz			;06e7	c0 	. 
	add a,d			;06e8	82 	. 
	ld (bc),a			;06e9	02 	. 
	ccf			;06ea	3f 	? 
	call nz,00106h		;06eb	c4 06 01 	. . . 
	dec b			;06ee	05 	. 
	ret nc			;06ef	d0 	. 
	jr nc,$+6		;06f0	30 04 	0 . 
	add hl,sp			;06f2	39 	9 
	ret c			;06f3	d8 	. 
	dec b			;06f4	05 	. 
	ld bc,0e005h		;06f5	01 05 e0 	. . . 
	add a,c			;06f8	81 	. 
	inc b			;06f9	04 	. 
	ld b,000h		;06fa	06 00 	. . 
	add a,c			;06fc	81 	. 
	inc c			;06fd	0c 	. 
	ld b,008h		;06fe	06 08 	. . 
	dec b			;0700	05 	. 
	ld bc,l1805h		;0701	01 05 18 	. . . 
l0704h:
	ld b,001h		;0704	06 01 	. . 
	dec b			;0706	05 	. 
	jr z,l070dh		;0707	28 04 	( . 
	ld bc,03805h		;0709	01 05 38 	. . 8 
	dec b			;070c	05 	. 
l070dh:
	ld bc,04805h		;070d	01 05 48 	. . H 
	dec b			;0710	05 	. 
	ld bc,05805h		;0711	01 05 58 	. . X 
	ld b,001h		;0714	06 01 	. . 
	dec b			;0716	05 	. 
	ld h,b			;0717	60 	` 
	add a,d			;0718	82 	. 
	ex af,af'			;0719	08 	. 
	ccf			;071a	3f 	? 
	ld l,b			;071b	68 	h 
	dec b			;071c	05 	. 
	ld bc,07805h		;071d	01 05 78 	. . x 
	ld b,001h		;0720	06 01 	. . 
	dec b			;0722	05 	. 
	adc a,b			;0723	88 	. 
	dec b			;0724	05 	. 
	ld bc,09805h		;0725	01 05 98 	. . . 
	inc b			;0728	04 	. 
	ld bc,0a005h		;0729	01 05 a0 	. . . 
	add a,c			;072c	81 	. 
	ld a,(bc)			;072d	0a 	. 
	ld b,0a8h		;072e	06 a8 	. . 
	dec b			;0730	05 	. 
	ld bc,0b805h		;0731	01 05 b8 	. . . 
	ld b,001h		;0734	06 01 	. . 
	dec b			;0736	05 	. 
	ret z			;0737	c8 	. 
	ld b,001h		;0738	06 01 	. . 
	dec b			;073a	05 	. 
	ret c			;073b	d8 	. 
	dec b			;073c	05 	. 
	ld bc,0e805h		;073d	01 05 e8 	. . . 
	ld b,001h		;0740	06 01 	. . 
	dec b			;0742	05 	. 
	ret p			;0743	f0 	. 
	ld l,004h		;0744	2e 04 	. . 
	add hl,sp			;0746	39 	9 
	nop			;0747	00 	. 
	cpl			;0748	2f 	/ 
	ex af,af'			;0749	08 	. 
	add hl,sp			;074a	39 	9 
	ex af,af'			;074b	08 	. 
	dec b			;074c	05 	. 
	ld bc,l1805h		;074d	01 05 18 	. . . 
	dec b			;0750	05 	. 
	ld bc,l2005h		;0751	01 05 20 	. .   
	add a,d			;0754	82 	. 
	inc b			;0755	04 	. 
	ccf			;0756	3f 	? 
	jr z,$+8		;0757	28 06 	( . 
	ld bc,03805h		;0759	01 05 38 	. . 8 
	dec b			;075c	05 	. 
	ld bc,04005h		;075d	01 05 40 	. . @ 
	add a,c			;0760	81 	. 
	inc b			;0761	04 	. 
	ld b,048h		;0762	06 48 	. H 
	dec b			;0764	05 	. 
	ld bc,05805h		;0765	01 05 58 	. . X 
	ld b,001h		;0768	06 01 	. . 
	dec b			;076a	05 	. 
	ld h,b			;076b	60 	` 
	add a,d			;076c	82 	. 
	inc b			;076d	04 	. 
	ccf			;076e	3f 	? 
	ld l,b			;076f	68 	h 
	dec b			;0770	05 	. 
	ld bc,07805h		;0771	01 05 78 	. . x 
	ld b,001h		;0774	06 01 	. . 
	dec b			;0776	05 	. 
	add a,b			;0777	80 	. 
	jr nc,l0782h		;0778	30 08 	0 . 
	add hl,sp			;077a	39 	9 
	adc a,b			;077b	88 	. 
	dec b			;077c	05 	. 
	ld bc,09805h		;077d	01 05 98 	. . . 
	ld b,001h		;0780	06 01 	. . 
l0782h:
	dec b			;0782	05 	. 
	and b			;0783	a0 	. 
	add a,d			;0784	82 	. 
	inc c			;0785	0c 	. 
	ccf			;0786	3f 	? 
	xor b			;0787	a8 	. 
	dec b			;0788	05 	. 
	ld bc,0b805h		;0789	01 05 b8 	. . . 
	ld b,001h		;078c	06 01 	. . 
	dec b			;078e	05 	. 
	ret z			;078f	c8 	. 
	dec b			;0790	05 	. 
	ld bc,l0005h		;0791	01 05 00 	. . . 
	add a,d			;0794	82 	. 
	ex af,af'			;0795	08 	. 
	ccf			;0796	3f 	? 
	ex af,af'			;0797	08 	. 
	dec b			;0798	05 	. 
	ld bc,l1805h		;0799	01 05 18 	. . . 
	ld b,001h		;079c	06 01 	. . 
	dec b			;079e	05 	. 
	jr z,l07a5h		;079f	28 04 	( . 
	ld bc,04005h		;07a1	01 05 40 	. . @ 
	add a,c			;07a4	81 	. 
l07a5h:
	inc b			;07a5	04 	. 
	ld b,048h		;07a6	06 48 	. H 
	dec b			;07a8	05 	. 
	ld bc,06005h		;07a9	01 05 60 	. . ` 
	add a,d			;07ac	82 	. 
	ld (de),a			;07ad	12 	. 
	ccf			;07ae	3f 	? 
	ld (hl),b			;07af	70 	p 
	dec b			;07b0	05 	. 
	ld bc,08005h		;07b1	01 05 80 	. . . 
	ld b,001h		;07b4	06 01 	. . 
	dec b			;07b6	05 	. 
l07b7h:
	sub b			;07b7	90 	. 
	dec b			;07b8	05 	. 
	ld bc,0a005h		;07b9	01 05 a0 	. . . 
	ld b,001h		;07bc	06 01 	. . 
	dec b			;07be	05 	. 
	or b			;07bf	b0 	. 
	dec b			;07c0	05 	. 
	ld bc,0c005h		;07c1	01 05 c0 	. . . 
	ld b,001h		;07c4	06 01 	. . 
	dec b			;07c6	05 	. 
	ret nc			;07c7	d0 	. 
	dec b			;07c8	05 	. 
	ld bc,0e005h		;07c9	01 05 e0 	. . . 
	ld b,001h		;07cc	06 01 	. . 
	dec b			;07ce	05 	. 
	ret p			;07cf	f0 	. 
	jr nc,l07d6h		;07d0	30 04 	0 . 
	add hl,sp			;07d2	39 	9 
	rst 38h			;07d3	ff 	. 
	rst 38h			;07d4	ff 	. 
	rst 38h			;07d5	ff 	. 
l07d6h:
	sbc a,h			;07d6	9c 	. 
	nop			;07d7	00 	. 
	ld bc,0a000h		;07d8	01 00 a0 	. . . 
	djnz l07deh		;07db	10 01 	. . 
	add hl,bc			;07dd	09 	. 
l07deh:
	xor b			;07de	a8 	. 
	ld (bc),a			;07df	02 	. 
	ld bc,0c205h		;07e0	01 05 c2 	. . . 
	ld bc,00501h		;07e3	01 01 05 	. . . 
	call pe,l0102h		;07e6	ec 02 01 	. . . 
	dec b			;07e9	05 	. 
	inc b			;07ea	04 	. 
	ld (bc),a			;07eb	02 	. 
	ld bc,l1605h		;07ec	01 05 16 	. . . 
	ld bc,00501h		;07ef	01 01 05 	. . . 
	inc h			;07f2	24 	$ 
	rrca			;07f3	0f 	. 
	ld bc,l2808h		;07f4	01 08 28 	. . ( 
	dec b			;07f7	05 	. 
	ld bc,l3005h		;07f8	01 05 30 	. . 0 
	add a,c			;07fb	81 	. 
	ld (bc),a			;07fc	02 	. 
	ld b,038h		;07fd	06 38 	. 8 
	ld b,001h		;07ff	06 01 	. . 
	dec b			;0801	05 	. 
	ld b,b			;0802	40 	@ 
	ld l,004h		;0803	2e 04 	. . 
	add hl,sp			;0805	39 	9 
	ld c,b			;0806	48 	H 
	dec b			;0807	05 	. 
l0808h:
	ld bc,05005h		;0808	01 05 50 	. . P 
	rrca			;080b	0f 	. 
	ld bc,0581ah		;080c	01 1a 58 	. . X 
	ld b,001h		;080f	06 01 	. . 
	dec b			;0811	05 	. 
	ld e,h			;0812	5c 	\ 
	ld (l3901h),a		;0813	32 01 39 	2 . 9 
	ld h,(hl)			;0816	66 	f 
	ld (bc),a			;0817	02 	. 
	ld bc,07205h		;0818	01 05 72 	. . r 
	ld bc,00501h		;081b	01 01 05 	. . . 
	add a,b			;081e	80 	. 
	rrca			;081f	0f 	. 
	ld bc,08c08h		;0820	01 08 8c 	. . . 
	ld c,001h		;0823	0e 01 	. . 
l0825h:
	jr l07b7h		;0825	18 90 	. . 
	ld c,001h		;0827	0e 01 	. . 
	add hl,de			;0829	19 	. 
	sub h			;082a	94 	. 
	rrca			;082b	0f 	. 
	ld bc,0a41ah		;082c	01 1a a4 	. . . 
	ld bc,00501h		;082f	01 01 05 	. . . 
	cp b			;0832	b8 	. 
	ld bc,00501h		;0833	01 01 05 	. . . 
	jp nz,sub_0104h		;0836	c2 04 01 	. . . 
	dec d			;0839	15 	. 
	rrc b		;083a	cb 08 	. . 
	ld bc,0d216h		;083c	01 16 d2 	. . . 
	inc b			;083f	04 	. 
	ld bc,0da15h		;0840	01 15 da 	. . . 
	ex af,af'			;0843	08 	. 
	ld bc,0e016h		;0844	01 16 e0 	. . . 
	inc b			;0847	04 	. 
	ld bc,0ea15h		;0848	01 15 ea 	. . . 
	ex af,af'			;084b	08 	. 
	ld bc,0f216h		;084c	01 16 f2 	. . . 
	nop			;084f	00 	. 
	ld bc,0ff17h		;0850	01 17 ff 	. . . 
	nop			;0853	00 	. 
	inc (hl)			;0854	34 	4 
	ld b,b			;0855	40 	@ 
	ld a,(l00ffh)		;0856	3a ff 00 	: . . 
	inc (hl)			;0859	34 	4 
	jr nz,l0896h		;085a	20 3a 	  : 
	add a,h			;085c	84 	. 
	djnz l0860h		;085d	10 01 	. . 
	cpl			;085f	2f 	/ 
l0860h:
	sub b			;0860	90 	. 
	inc l			;0861	2c 	, 
	inc b			;0862	04 	. 
	dec sp			;0863	3b 	; 
	and b			;0864	a0 	. 
	jr nc,l086bh		;0865	30 04 	0 . 
	dec sp			;0867	3b 	; 
	or b			;0868	b0 	. 
	inc (hl)			;0869	34 	4 
	ex af,af'			;086a	08 	. 
l086bh:
	dec sp			;086b	3b 	; 
	ret nz			;086c	c0 	. 
	add a,d			;086d	82 	. 
	ld bc,0d414h		;086e	01 14 d4 	. . . 
	djnz l0874h		;0871	10 01 	. . 
	dec a			;0873	3d 	= 
l0874h:
	ret po			;0874	e0 	. 
	ld (l3c10h),a		;0875	32 10 3c 	2 . < 
	nop			;0878	00 	. 
	ld (l3c10h),a		;0879	32 10 3c 	2 . < 
	jr nz,l08ach		;087c	20 2e 	  . 
	djnz $+62		;087e	10 3c 	. < 
	ld b,b			;0880	40 	@ 
	ld (hl),060h		;0881	36 60 	6 ` 
	inc a			;0883	3c 	< 
	ld b,b			;0884	40 	@ 
	ld b,l			;0885	45 	E 
	ld h,b			;0886	60 	` 
	ld b,e			;0887	43 	C 
	add a,b			;0888	80 	. 
	ld a,(bc)			;0889	0a 	. 
	ld bc,0a035h		;088a	01 35 a0 	. 5 . 
	ld a,(bc)			;088d	0a 	. 
	ld bc,0b435h		;088e	01 35 b4 	. 5 . 
	ld a,(bc)			;0891	0a 	. 
l0892h:
	ld bc,0ba35h		;0892	01 35 ba 	. 5 . 
	ld a,(bc)			;0895	0a 	. 
l0896h:
	ld bc,0c835h		;0896	01 35 c8 	. 5 . 
	ld a,(bc)			;0899	0a 	. 
	ld bc,0f235h		;089a	01 35 f2 	. 5 . 
	ld a,(bc)			;089d	0a 	. 
	ld bc,l0035h		;089e	01 35 00 	. 5 . 
	ld (hl),010h		;08a1	36 10 	6 . 
	inc a			;08a3	3c 	< 
	nop			;08a4	00 	. 
	ld b,l			;08a5	45 	E 
	djnz l08ebh		;08a6	10 43 	. C 
	jr nz,$+52		;08a8	20 32 	  2 
	ex af,af'			;08aa	08 	. 
	inc a			;08ab	3c 	< 
l08ach:
	ld h,006h		;08ac	26 06 	& . 
	ld bc,03035h		;08ae	01 35 30 	. 5 0 
	ld l,010h		;08b1	2e 10 	. . 
	inc a			;08b3	3c 	< 
	ld b,b			;08b4	40 	@ 
	add a,d			;08b5	82 	. 
	ld (bc),a			;08b6	02 	. 
	jr c,l0901h		;08b7	38 48 	8 H 
	inc bc			;08b9	03 	. 
	ld bc,05035h		;08ba	01 35 50 	. 5 P 
	dec l			;08bd	2d 	- 
	ex af,af'			;08be	08 	. 
	inc a			;08bf	3c 	< 
	ld h,h			;08c0	64 	d 
	inc c			;08c1	0c 	. 
	ld bc,0703dh		;08c2	01 3d 70 	. = p 
	ld hl,(l3b04h)		;08c5	2a 04 3b 	* . ; 
	sub b			;08c8	90 	. 
	ld (l3a1ch),a		;08c9	32 1c 3a 	2 . : 
	rst 38h			;08cc	ff 	. 
	nop			;08cd	00 	. 
	inc (hl)			;08ce	34 	4 
	ld b,b			;08cf	40 	@ 
	ld a,(l00ffh)		;08d0	3a ff 00 	: . . 
	inc (hl)			;08d3	34 	4 
	ex af,af'			;08d4	08 	. 
	ld a,(01024h)		;08d5	3a 24 10 	: $ . 
	ld bc,0302fh		;08d8	01 2f 30 	. / 0 
	ld hl,(l3b04h)		;08db	2a 04 3b 	* . ; 
	ld b,b			;08de	40 	@ 
	ld l,004h		;08df	2e 04 	. . 
	dec sp			;08e1	3b 	; 
	ld d,b			;08e2	50 	P 
	ld (l3b08h),a		;08e3	32 08 3b 	2 . ; 
	ld (hl),b			;08e6	70 	p 
	ld l,008h		;08e7	2e 08 	. . 
	dec sp			;08e9	3b 	; 
	sub b			;08ea	90 	. 
l08ebh:
	ld (hl),008h		;08eb	36 08 	6 . 
	dec sp			;08ed	3b 	; 
	or b			;08ee	b0 	. 
	ld l,004h		;08ef	2e 04 	. . 
	dec sp			;08f1	3b 	; 
	ret nz			;08f2	c0 	. 
	ld (l3b04h),a		;08f3	32 04 3b 	2 . ; 
	ret nc			;08f6	d0 	. 
	ld (hl),004h		;08f7	36 04 	6 . 
	dec sp			;08f9	3b 	; 
	ret po			;08fa	e0 	. 
	ld (l3b04h),a		;08fb	32 04 3b 	2 . ; 
	ret p			;08fe	f0 	. 
	ld l,004h		;08ff	2e 04 	. . 
l0901h:
	dec sp			;0901	3b 	; 
	nop			;0902	00 	. 
	ld l,004h		;0903	2e 04 	. . 
l0905h:
	dec sp			;0905	3b 	; 
	nop			;0906	00 	. 
	add a,d			;0907	82 	. 
	ld (bc),a			;0908	02 	. 
	inc de			;0909	13 	. 
	djnz l0939h		;090a	10 2d 	. - 
	ex af,af'			;090c	08 	. 
	dec sp			;090d	3b 	; 
	jr nz,l0892h		;090e	20 82 	  . 
	ld (bc),a			;0910	02 	. 
	inc de			;0911	13 	. 
	jr nc,$+47		;0912	30 2d 	0 - 
	inc b			;0914	04 	. 
	dec sp			;0915	3b 	; 
	ld b,b			;0916	40 	@ 
	add a,d			;0917	82 	. 
	ld b,013h		;0918	06 13 	. . 
	ld b,b			;091a	40 	@ 
	ld hl,(l3b04h)		;091b	2a 04 3b 	* . ; 
	ld d,b			;091e	50 	P 
	add hl,hl			;091f	29 	) 
	inc b			;0920	04 	. 
	dec sp			;0921	3b 	; 
	ld a,b			;0922	78 	x 
	ld hl,(l3b06h)		;0923	2a 06 3b 	* . ; 
	add a,b			;0926	80 	. 
	add a,d			;0927	82 	. 
	ld (bc),a			;0928	02 	. 
	inc de			;0929	13 	. 
	sub b			;092a	90 	. 
	ld sp,l3b08h		;092b	31 08 3b 	1 . ; 
	or h			;092e	b4 	. 
	djnz l0932h		;092f	10 01 	. . 
	dec a			;0931	3d 	= 
l0932h:
	ret nz			;0932	c0 	. 
	ld hl,(l3b08h)		;0933	2a 08 3b 	* . ; 
	ret po			;0936	e0 	. 
	ld l,004h		;0937	2e 04 	. . 
l0939h:
	dec sp			;0939	3b 	; 
	ret p			;093a	f0 	. 
	add a,d			;093b	82 	. 
	ld (bc),a			;093c	02 	. 
	inc d			;093d	14 	. 
	ret p			;093e	f0 	. 
	ld (l3b04h),a		;093f	32 04 3b 	2 . ; 
	nop			;0942	00 	. 
	add a,d			;0943	82 	. 
	inc b			;0944	04 	. 
	inc d			;0945	14 	. 
	nop			;0946	00 	. 
	ld l,004h		;0947	2e 04 	. . 
	dec sp			;0949	3b 	; 
	djnz $+49		;094a	10 2f 	. / 
	inc b			;094c	04 	. 
	dec sp			;094d	3b 	; 
	jr nc,l0982h		;094e	30 32 	0 2 
	inc c			;0950	0c 	. 
	dec sp			;0951	3b 	; 
	ld d,b			;0952	50 	P 
	add a,d			;0953	82 	. 
	ld (bc),a			;0954	02 	. 
	inc d			;0955	14 	. 
	ld h,b			;0956	60 	` 
	scf			;0957	37 	7 
	inc b			;0958	04 	. 
	dec sp			;0959	3b 	; 
	ld (hl),b			;095a	70 	p 
	ld (l3b08h),a		;095b	32 08 3b 	2 . ; 
	sub b			;095e	90 	. 
	ld l,008h		;095f	2e 08 	. . 
	dec sp			;0961	3b 	; 
	ret nz			;0962	c0 	. 
	inc (hl)			;0963	34 	4 
	djnz l09a0h		;0964	10 3a 	. : 
	rst 38h			;0966	ff 	. 
	nop			;0967	00 	. 
	inc (hl)			;0968	34 	4 
	ld c,03ah		;0969	0e 3a 	. : 
	ld b,b			;096b	40 	@ 
	inc (hl)			;096c	34 	4 
	ex af,af'			;096d	08 	. 
	ld a,(03470h)		;096e	3a 70 34 	: p 4 
	inc b			;0971	04 	. 
	ld a,(03490h)		;0972	3a 90 34 	: . 4 
	ex af,af'			;0975	08 	. 
	ld a,(l34c0h)		;0976	3a c0 34 	: . 4 
	inc b			;0979	04 	. 
	ld a,(l34d8h)		;097a	3a d8 34 	: . 4 
	inc b			;097d	04 	. 
	ld a,(l34f0h)		;097e	3a f0 34 	: . 4 
	inc b			;0981	04 	. 
l0982h:
	ld a,(03400h)		;0982	3a 00 34 	: . 4 
	ex af,af'			;0985	08 	. 
	ld a,(l2c30h)		;0986	3a 30 2c 	: 0 , 
	inc c			;0989	0c 	. 
	dec sp			;098a	3b 	; 
	ld h,h			;098b	64 	d 
	nop			;098c	00 	. 
	ld bc,0683eh		;098d	01 3e 68 	. > h 
	djnz l0993h		;0990	10 01 	. . 
	dec a			;0992	3d 	= 
l0993h:
	ld (hl),b			;0993	70 	p 
	jr nc,l099ah		;0994	30 04 	0 . 
	dec sp			;0996	3b 	; 
	sub b			;0997	90 	. 
	inc (hl)			;0998	34 	4 
	inc e			;0999	1c 	. 
l099ah:
	dec sp			;099a	3b 	; 
	sub h			;099b	94 	. 
	inc b			;099c	04 	. 
	ld bc,0b03eh		;099d	01 3e b0 	. > . 
l09a0h:
	add a,d			;09a0	82 	. 
	ld (bc),a			;09a1	02 	. 
	inc d			;09a2	14 	. 
	call nz,sub_0100h		;09a3	c4 00 01 	. . . 
	ld a,0f0h		;09a6	3e f0 	> . 
	nop			;09a8	00 	. 
	ld bc,0003eh		;09a9	01 3e 00 	. > . 
	add a,d			;09ac	82 	. 
	inc b			;09ad	04 	. 
	inc d			;09ae	14 	. 
	nop			;09af	00 	. 
	jr nc,l09bah		;09b0	30 08 	0 . 
	dec sp			;09b2	3b 	; 
	inc h			;09b3	24 	$ 
	inc b			;09b4	04 	. 
	ld bc,l303eh		;09b5	01 3e 30 	. > 0 
	inc l			;09b8	2c 	, 
	inc b			;09b9	04 	. 
l09bah:
	dec sp			;09ba	3b 	; 
	ld b,h			;09bb	44 	D 
	inc c			;09bc	0c 	. 
	ld bc,0503dh		;09bd	01 3d 50 	. = P 
l09c0h:
	jr nc,$+7		;09c0	30 05 	0 . 
	dec sp			;09c2	3b 	; 
	ld d,h			;09c3	54 	T 
	nop			;09c4	00 	. 
	ld bc,06c3eh		;09c5	01 3e 6c 	. > l 
	jr nc,l09cch		;09c8	30 02 	0 . 
	dec sp			;09ca	3b 	; 
	ld a,h			;09cb	7c 	| 
l09cch:
	jr nc,$+7		;09cc	30 05 	0 . 
	dec sp			;09ce	3b 	; 
	add a,h			;09cf	84 	. 
	nop			;09d0	00 	. 
	ld bc,0943eh		;09d1	01 3e 94 	. > . 
	ld (de),a			;09d4	12 	. 
	ld bc,0a03dh		;09d5	01 3d a0 	. = . 
	inc (hl)			;09d8	34 	4 
	inc b			;09d9	04 	. 
	dec sp			;09da	3b 	; 
	or h			;09db	b4 	. 
	inc b			;09dc	04 	. 
	ld bc,0b43eh		;09dd	01 3e b4 	. > . 
	dec d			;09e0	15 	. 
	ld bc,0c03dh		;09e1	01 3d c0 	. = . 
	inc d			;09e4	14 	. 
	ld bc,0d03dh		;09e5	01 3d d0 	. = . 
	add a,h			;09e8	84 	. 
	inc b			;09e9	04 	. 
	ld b,b			;09ea	40 	@ 
	ret c			;09eb	d8 	. 
	inc de			;09ec	13 	. 
	ld bc,0e43dh		;09ed	01 3d e4 	. = . 
	inc b			;09f0	04 	. 
	ld bc,0f03eh		;09f1	01 3e f0 	. > . 
	inc sp			;09f4	33 	3 
	inc b			;09f5	04 	. 
	dec sp			;09f6	3b 	; 
	nop			;09f7	00 	. 
	ld (l3b04h+1),a		;09f8	32 05 3b 	2 . ; 
	inc d			;09fb	14 	. 
	inc b			;09fc	04 	. 
	ld bc,l1c3eh		;09fd	01 3e 1c 	. > . 
	ld (l3b04h+1),a		;0a00	32 05 3b 	2 . ; 
	jr c,l0a17h		;0a03	38 12 	8 . 
	ld bc,0403dh		;0a05	01 3d 40 	. = @ 
	inc d			;0a08	14 	. 
	ld bc,0443dh		;0a09	01 3d 44 	. = D 
	inc b			;0a0c	04 	. 
	ld bc,0483eh		;0a0d	01 3e 48 	. > H 
	ld d,001h		;0a10	16 01 	. . 
	dec a			;0a12	3d 	= 
	ld d,b			;0a13	50 	P 
	add a,h			;0a14	84 	. 
	ld b,040h		;0a15	06 40 	. @ 
l0a17h:
	ld h,b			;0a17	60 	` 
	dec d			;0a18	15 	. 
	ld bc,0743dh		;0a19	01 3d 74 	. = t 
	ex af,af'			;0a1c	08 	. 
	ld bc,0803eh		;0a1d	01 3e 80 	. > . 
	inc sp			;0a20	33 	3 
	ex af,af'			;0a21	08 	. 
	dec sp			;0a22	3b 	; 
	and h			;0a23	a4 	. 
	inc b			;0a24	04 	. 
	ld bc,0b83eh		;0a25	01 3e b8 	. > . 
	inc d			;0a28	14 	. 
	ld bc,0c03dh		;0a29	01 3d c0 	. = . 
	add a,h			;0a2c	84 	. 
	inc b			;0a2d	04 	. 
	ld b,b			;0a2e	40 	@ 
	call nc,sub_0108h		;0a2f	d4 08 01 	. . . 
	ld a,0e0h		;0a32	3e e0 	> . 
	dec (hl)			;0a34	35 	5 
	ex af,af'			;0a35	08 	. 
	dec sp			;0a36	3b 	; 
	rst 38h			;0a37	ff 	. 
	nop			;0a38	00 	. 
	ld (l3b18h),a		;0a39	32 18 3b 	2 . ; 
	jr nz,l09c0h		;0a3c	20 82 	  . 
	ld (bc),a			;0a3e	02 	. 
	inc d			;0a3f	14 	. 
	ld a,b			;0a40	78 	x 
	ld l,006h		;0a41	2e 06 	. . 
	dec sp			;0a43	3b 	; 
l0a44h:
	sub b			;0a44	90 	. 
	ld (l3b04h),a		;0a45	32 04 3b 	2 . ; 
	and b			;0a48	a0 	. 
	ld (hl),00ch		;0a49	36 0c 	6 . 
	dec sp			;0a4b	3b 	; 
	ret nc			;0a4c	d0 	. 
	ld hl,(l3b04h)		;0a4d	2a 04 3b 	* . ; 
	ret po			;0a50	e0 	. 
	ld (l3b08h),a		;0a51	32 08 3b 	2 . ; 
	nop			;0a54	00 	. 
	ld (l3b04h),a		;0a55	32 04 3b 	2 . ; 
	jr l0a8ch		;0a58	18 32 	. 2 
	ld (bc),a			;0a5a	02 	. 
	dec sp			;0a5b	3b 	; 
	jr c,$+44		;0a5c	38 2a 	8 * 
	ld b,03bh		;0a5e	06 3b 	. ; 
	ld d,b			;0a60	50 	P 
	ld l,004h		;0a61	2e 04 	. . 
	dec sp			;0a63	3b 	; 
	ld h,b			;0a64	60 	` 
	ld (l3b04h),a		;0a65	32 04 3b 	2 . ; 
	ld h,b			;0a68	60 	` 
	add a,d			;0a69	82 	. 
	ex af,af'			;0a6a	08 	. 
	inc d			;0a6b	14 	. 
	ld (hl),b			;0a6c	70 	p 
	inc sp			;0a6d	33 	3 
	inc b			;0a6e	04 	. 
	dec sp			;0a6f	3b 	; 
	add a,b			;0a70	80 	. 
	inc sp			;0a71	33 	3 
	ex af,af'			;0a72	08 	. 
	dec sp			;0a73	3b 	; 
	and b			;0a74	a0 	. 
	scf			;0a75	37 	7 
	inc b			;0a76	04 	. 
	dec sp			;0a77	3b 	; 
	or b			;0a78	b0 	. 
	ld hl,(l3b04h)		;0a79	2a 04 3b 	* . ; 
	ret pe			;0a7c	e8 	. 
	ld (l3b06h),a		;0a7d	32 06 3b 	2 . ; 
	nop			;0a80	00 	. 
	ld (l3b08h),a		;0a81	32 08 3b 	2 . ; 
	jr c,l0a96h		;0a84	38 10 	8 . 
	ld bc,0403dh		;0a86	01 3d 40 	. = @ 
	add a,d			;0a89	82 	. 
	ld (bc),a			;0a8a	02 	. 
	inc de			;0a8b	13 	. 
l0a8ch:
	ld c,b			;0a8c	48 	H 
	ld de,03d01h		;0a8d	11 01 3d 	. . = 
	ld e,b			;0a90	58 	X 
	ld (de),a			;0a91	12 	. 
	ld bc,0603dh		;0a92	01 3d 60 	. = ` 
	add a,d			;0a95	82 	. 
l0a96h:
	ld (bc),a			;0a96	02 	. 
	inc de			;0a97	13 	. 
	ld a,b			;0a98	78 	x 
	ld (de),a			;0a99	12 	. 
	ld bc,0803dh		;0a9a	01 3d 80 	. = . 
	add a,d			;0a9d	82 	. 
	ld (bc),a			;0a9e	02 	. 
	inc de			;0a9f	13 	. 
	cp b			;0aa0	b8 	. 
	ld c,001h		;0aa1	0e 01 	. . 
	dec a			;0aa3	3d 	= 
	ret nz			;0aa4	c0 	. 
	add a,d			;0aa5	82 	. 
	ld (bc),a			;0aa6	02 	. 
	inc de			;0aa7	13 	. 
	ret po			;0aa8	e0 	. 
	ld l,004h		;0aa9	2e 04 	. . 
	dec sp			;0aab	3b 	; 
	ret p			;0aac	f0 	. 
	add a,d			;0aad	82 	. 
	ld (bc),a			;0aae	02 	. 
	inc de			;0aaf	13 	. 
	ret p			;0ab0	f0 	. 
	ld hl,(l3b04h)		;0ab1	2a 04 3b 	* . ; 
	nop			;0ab4	00 	. 
	add a,d			;0ab5	82 	. 
	ld (bc),a			;0ab6	02 	. 
	inc de			;0ab7	13 	. 
	nop			;0ab8	00 	. 
	ld l,008h		;0ab9	2e 08 	. . 
	dec sp			;0abb	3b 	; 
	jr nz,$+48		;0abc	20 2e 	  . 
	inc b			;0abe	04 	. 
	dec sp			;0abf	3b 	; 
	jr nz,l0a44h		;0ac0	20 82 	  . 
	ld (bc),a			;0ac2	02 	. 
	inc de			;0ac3	13 	. 
	jr nc,l0af3h		;0ac4	30 2d 	0 - 
	inc b			;0ac6	04 	. 
	dec sp			;0ac7	3b 	; 
	ld b,b			;0ac8	40 	@ 
	add a,d			;0ac9	82 	. 
	inc b			;0aca	04 	. 
	inc de			;0acb	13 	. 
	ld b,b			;0acc	40 	@ 
	ld hl,(l3b04h)		;0acd	2a 04 3b 	* . ; 
	ld l,b			;0ad0	68 	h 
	djnz l0ad4h		;0ad1	10 01 	. . 
	dec a			;0ad3	3d 	= 
l0ad4h:
	ld a,b			;0ad4	78 	x 
	ld c,001h		;0ad5	0e 01 	. . 
	dec a			;0ad7	3d 	= 
	adc a,b			;0ad8	88 	. 
	djnz l0adch		;0ad9	10 01 	. . 
	dec a			;0adb	3d 	= 
l0adch:
	sub b			;0adc	90 	. 
	add a,d			;0add	82 	. 
	ld (bc),a			;0ade	02 	. 
	inc de			;0adf	13 	. 
	xor b			;0ae0	a8 	. 
	djnz l0ae4h		;0ae1	10 01 	. . 
	dec a			;0ae3	3d 	= 
l0ae4h:
	or b			;0ae4	b0 	. 
	add a,d			;0ae5	82 	. 
	ld (bc),a			;0ae6	02 	. 
	inc de			;0ae7	13 	. 
	ret z			;0ae8	c8 	. 
	ld (de),a			;0ae9	12 	. 
	ld bc,0d83dh		;0aea	01 3d d8 	. = . 
	ld l,00ah		;0aed	2e 0a 	. . 
	dec sp			;0aef	3b 	; 
	ret po			;0af0	e0 	. 
	add a,d			;0af1	82 	. 
	ld (bc),a			;0af2	02 	. 
l0af3h:
	inc de			;0af3	13 	. 
	rst 38h			;0af4	ff 	. 
	nop			;0af5	00 	. 
	inc sp			;0af6	33 	3 
	ex af,af'			;0af7	08 	. 
	ld b,c			;0af8	41 	A 
	ex af,af'			;0af9	08 	. 
	inc b			;0afa	04 	. 
	ld bc,01533h		;0afb	01 33 15 	. 3 . 
	ld (bc),a			;0afe	02 	. 
	ld bc,l2032h		;0aff	01 32 20 	. 2   
	cpl			;0b02	2f 	/ 
	inc b			;0b03	04 	. 
	ld b,c			;0b04	41 	A 
	jr nc,$-125		;0b05	30 81 	0 . 
	ld (bc),a			;0b07	02 	. 
	jr nc,l0b3ah		;0b08	30 30 	0 0 
	dec hl			;0b0a	2b 	+ 
	inc b			;0b0b	04 	. 
	ld b,c			;0b0c	41 	A 
	ld b,b			;0b0d	40 	@ 
	ld (04108h),a		;0b0e	32 08 41 	2 . A 
	ld b,(hl)			;0b11	46 	F 
	inc b			;0b12	04 	. 
	ld bc,05232h		;0b13	01 32 52 	. 2 R 
	dec b			;0b16	05 	. 
	ld bc,06033h		;0b17	01 33 60 	. 3 ` 
	cpl			;0b1a	2f 	/ 
	inc b			;0b1b	04 	. 
	ld b,c			;0b1c	41 	A 
	ld (hl),b			;0b1d	70 	p 
	add a,c			;0b1e	81 	. 
	ld c,030h		;0b1f	0e 30 	. 0 
	ld (hl),b			;0b21	70 	p 
	dec hl			;0b22	2b 	+ 
	inc b			;0b23	04 	. 
	ld b,c			;0b24	41 	A 
	add a,b			;0b25	80 	. 
	ld hl,(04104h)		;0b26	2a 04 41 	* . A 
	sub b			;0b29	90 	. 
	ld hl,(04102h)		;0b2a	2a 02 41 	* . A 
	sbc a,b			;0b2d	98 	. 
	jr z,l0b32h		;0b2e	28 02 	( . 
	ld b,c			;0b30	41 	A 
	and b			;0b31	a0 	. 
l0b32h:
	ld h,008h		;0b32	26 08 	& . 
	ld b,c			;0b34	41 	A 
	ret nz			;0b35	c0 	. 
	ld hl,(04102h)		;0b36	2a 02 41 	* . A 
	ret z			;0b39	c8 	. 
l0b3ah:
	jr z,$+8		;0b3a	28 06 	( . 
	ld b,c			;0b3c	41 	A 
	ret po			;0b3d	e0 	. 
	ld (04104h),a		;0b3e	32 04 41 	2 . A 
	and 004h		;0b41	e6 04 	. . 
	ld bc,0f032h		;0b43	01 32 f0 	. 2 . 
	cpl			;0b46	2f 	/ 
	inc b			;0b47	04 	. 
	ld b,c			;0b48	41 	A 
	nop			;0b49	00 	. 
	cpl			;0b4a	2f 	/ 
	ex af,af'			;0b4b	08 	. 
	ld b,c			;0b4c	41 	A 
	ld a,(bc)			;0b4d	0a 	. 
	inc b			;0b4e	04 	. 
	ld bc,l1033h		;0b4f	01 33 10 	. 3 . 
	add a,c			;0b52	81 	. 
	inc b			;0b53	04 	. 
	jr nc,l0b76h		;0b54	30 20 	0   
	ld l,002h		;0b56	2e 02 	. . 
	ld b,c			;0b58	41 	A 
	jr z,l0b87h		;0b59	28 2c 	( , 
	ld (bc),a			;0b5b	02 	. 
	ld b,c			;0b5c	41 	A 
	jr nc,$+44		;0b5d	30 2a 	0 * 
	inc b			;0b5f	04 	. 
	ld b,c			;0b60	41 	A 
	ld (hl),004h		;0b61	36 04 	6 . 
	ld bc,04032h		;0b63	01 32 40 	. 2 @ 
	add a,c			;0b66	81 	. 
	rlca			;0b67	07 	. 
	jr nc,$+66		;0b68	30 40 	0 @ 
	daa			;0b6a	27 	' 
	ex af,af'			;0b6b	08 	. 
	ld b,c			;0b6c	41 	A 
	ld h,b			;0b6d	60 	` 
	ld hl,(04104h)		;0b6e	2a 04 41 	* . A 
	ld (hl),b			;0b71	70 	p 
	ld hl,(04104h)		;0b72	2a 04 41 	* . A 
	ld a,b			;0b75	78 	x 
l0b76h:
	inc bc			;0b76	03 	. 
	ld bc,08033h		;0b77	01 33 80 	. 3 . 
	add hl,hl			;0b7a	29 	) 
	ld (bc),a			;0b7b	02 	. 
	ld b,c			;0b7c	41 	A 
	adc a,b			;0b7d	88 	. 
	dec l			;0b7e	2d 	- 
	ld (bc),a			;0b7f	02 	. 
	ld b,c			;0b80	41 	A 
	adc a,h			;0b81	8c 	. 
	inc bc			;0b82	03 	. 
	ld bc,09033h		;0b83	01 33 90 	. 3 . 
	add a,c			;0b86	81 	. 
l0b87h:
	ld (bc),a			;0b87	02 	. 
	ld sp,l3190h		;0b88	31 90 31 	1 . 1 
	ld (bc),a			;0b8b	02 	. 
	ld b,c			;0b8c	41 	A 
	sbc a,b			;0b8d	98 	. 
	inc (hl)			;0b8e	34 	4 
	ld c,041h		;0b8f	0e 41 	. A 
	and h			;0b91	a4 	. 
	inc b			;0b92	04 	. 
	ld bc,0b033h		;0b93	01 33 b0 	. 3 . 
	add a,c			;0b96	81 	. 
	ld (bc),a			;0b97	02 	. 
	ld sp,l03c6h		;0b98	31 c6 03 	1 . . 
	ld bc,0d033h		;0b9b	01 33 d0 	. 3 . 
	add a,c			;0b9e	81 	. 
	ld (bc),a			;0b9f	02 	. 
	ld sp,l31d0h		;0ba0	31 d0 31 	1 . 1 
	ld (bc),a			;0ba3	02 	. 
	ld b,c			;0ba4	41 	A 
	ret c			;0ba5	d8 	. 
	inc (hl)			;0ba6	34 	4 
	ld b,041h		;0ba7	06 41 	. A 
	and 004h		;0ba9	e6 04 	. . 
	ld bc,0f032h		;0bab	01 32 f0 	. 2 . 
	add a,c			;0bae	81 	. 
	ld (bc),a			;0baf	02 	. 
	jr nc,$-14		;0bb0	30 f0 	0 . 
	dec l			;0bb2	2d 	- 
	ld (bc),a			;0bb3	02 	. 
	ld b,c			;0bb4	41 	A 
	ret m			;0bb5	f8 	. 
	ld hl,(04102h)		;0bb6	2a 02 41 	* . A 
	nop			;0bb9	00 	. 
	dec l			;0bba	2d 	- 
	ex af,af'			;0bbb	08 	. 
	ld b,c			;0bbc	41 	A 
	dec b			;0bbd	05 	. 
	inc b			;0bbe	04 	. 
	ld bc,l1033h		;0bbf	01 33 10 	. 3 . 
	add a,c			;0bc2	81 	. 
	ld (bc),a			;0bc3	02 	. 
	jr nc,l0be6h		;0bc4	30 20 	0   
	add a,c			;0bc6	81 	. 
	ex af,af'			;0bc7	08 	. 
	ld sp,l2c20h		;0bc8	31 20 2c 	1   , 
	inc b			;0bcb	04 	. 
	ld b,c			;0bcc	41 	A 
	jr nc,$+48		;0bcd	30 2e 	0 . 
	ld (bc),a			;0bcf	02 	. 
	ld b,c			;0bd0	41 	A 
	jr c,l0c03h		;0bd1	38 30 	8 0 
	ld b,041h		;0bd3	06 41 	. A 
	ld d,b			;0bd5	50 	P 
	ld (04102h),a		;0bd6	32 02 41 	2 . A 
	ld e,b			;0bd9	58 	X 
	inc l			;0bda	2c 	, 
	ld (bc),a			;0bdb	02 	. 
	ld b,c			;0bdc	41 	A 
	ld h,b			;0bdd	60 	` 
	ld (04102h),a		;0bde	32 02 41 	2 . A 
	ld h,(hl)			;0be1	66 	f 
	inc b			;0be2	04 	. 
	ld bc,06832h		;0be3	01 32 68 	. 2 h 
l0be6h:
	dec l			;0be6	2d 	- 
	ld (bc),a			;0be7	02 	. 
	ld b,c			;0be8	41 	A 
	ld (hl),b			;0be9	70 	p 
	add a,c			;0bea	81 	. 
	ld (bc),a			;0beb	02 	. 
	ld sp,l3170h		;0bec	31 70 31 	1 p 1 
	ld (bc),a			;0bef	02 	. 
	ld b,c			;0bf0	41 	A 
	ld a,b			;0bf1	78 	x 
	inc l			;0bf2	2c 	, 
	ld (bc),a			;0bf3	02 	. 
	ld b,c			;0bf4	41 	A 
	add a,b			;0bf5	80 	. 
	ld (04102h),a		;0bf6	32 02 41 	2 . A 
	add a,a			;0bf9	87 	. 
	inc bc			;0bfa	03 	. 
	ld bc,08833h		;0bfb	01 33 88 	. 3 . 
	dec l			;0bfe	2d 	- 
	ld (bc),a			;0bff	02 	. 
	ld b,c			;0c00	41 	A 
	sub b			;0c01	90 	. 
	add a,c			;0c02	81 	. 
l0c03h:
	ld b,031h		;0c03	06 31 	. 1 
	sub b			;0c05	90 	. 
	ld sp,04102h		;0c06	31 02 41 	1 . A 
	sbc a,b			;0c09	98 	. 
	inc (hl)			;0c0a	34 	4 
	ld (bc),a			;0c0b	02 	. 
	ld b,c			;0c0c	41 	A 
	and b			;0c0d	a0 	. 
	ld l,002h		;0c0e	2e 02 	. . 
	ld b,c			;0c10	41 	A 
	xor b			;0c11	a8 	. 
	jr nc,$+8		;0c12	30 06 	0 . 
	ld b,c			;0c14	41 	A 
	ret nz			;0c15	c0 	. 
	ld l,002h		;0c16	2e 02 	. . 
	ld b,c			;0c18	41 	A 
	jp nz,sub_0103h		;0c19	c2 03 01 	. . . 
	inc sp			;0c1c	33 	3 
	ret z			;0c1d	c8 	. 
	add a,c			;0c1e	81 	. 
	inc bc			;0c1f	03 	. 
	ld sp,l31c8h		;0c20	31 c8 31 	1 . 1 
	ld (bc),a			;0c23	02 	. 
	ld b,c			;0c24	41 	A 
	ret nc			;0c25	d0 	. 
	inc (hl)			;0c26	34 	4 
	ld (bc),a			;0c27	02 	. 
	ld b,c			;0c28	41 	A 
	ret c			;0c29	d8 	. 
	ld l,002h		;0c2a	2e 02 	. . 
	ld b,c			;0c2c	41 	A 
	ret po			;0c2d	e0 	. 
	jr nc,$+6		;0c2e	30 04 	0 . 
	ld b,c			;0c30	41 	A 
	and 004h		;0c31	e6 04 	. . 
	ld bc,0f032h		;0c33	01 32 f0 	. 2 . 
	add a,c			;0c36	81 	. 
	ld (bc),a			;0c37	02 	. 
	ld sp,l33f0h		;0c38	31 f0 33 	1 . 3 
	inc b			;0c3b	04 	. 
	ld b,c			;0c3c	41 	A 
	nop			;0c3d	00 	. 
	add a,c			;0c3e	81 	. 
	ld bc,l0031h		;0c3f	01 31 00 	. 1 . 
	cpl			;0c42	2f 	/ 
	inc b			;0c43	04 	. 
	ld b,c			;0c44	41 	A 
	djnz $+51		;0c45	10 31 	. 1 
	ld (bc),a			;0c47	02 	. 
	ld b,c			;0c48	41 	A 
	ld de,sub_0104h		;0c49	11 04 01 	. . . 
	inc sp			;0c4c	33 	3 
	jr $+47		;0c4d	18 2d 	. - 
	ld (bc),a			;0c4f	02 	. 
	ld b,c			;0c50	41 	A 
	jr nz,$-125		;0c51	20 81 	  . 
	ld (bc),a			;0c53	02 	. 
	ld sp,l3120h		;0c54	31 20 31 	1   1 
	ld (bc),a			;0c57	02 	. 
	ld b,c			;0c58	41 	A 
	jr z,$+46		;0c59	28 2c 	( , 
	ld (bc),a			;0c5b	02 	. 
	ld b,c			;0c5c	41 	A 
	jr nc,l0c91h		;0c5d	30 32 	0 2 
	ld (bc),a			;0c5f	02 	. 
	ld b,c			;0c60	41 	A 
	ld sp,sub_0104h		;0c61	31 04 01 	1 . . 
	ld (02d38h),a		;0c64	32 38 2d 	2 8 - 
	ld (bc),a			;0c67	02 	. 
	ld b,c			;0c68	41 	A 
	ld b,b			;0c69	40 	@ 
	add a,c			;0c6a	81 	. 
	ld (bc),a			;0c6b	02 	. 
	ld sp,l3140h		;0c6c	31 40 31 	1 @ 1 
	ld (bc),a			;0c6f	02 	. 
	ld b,c			;0c70	41 	A 
	ld c,b			;0c71	48 	H 
	inc l			;0c72	2c 	, 
	ld (bc),a			;0c73	02 	. 
	ld b,c			;0c74	41 	A 
	ld d,b			;0c75	50 	P 
	ld (04102h),a		;0c76	32 02 41 	2 . A 
	ld d,c			;0c79	51 	Q 
	inc bc			;0c7a	03 	. 
	ld bc,05833h		;0c7b	01 33 58 	. 3 X 
	dec l			;0c7e	2d 	- 
	ld (bc),a			;0c7f	02 	. 
	ld b,c			;0c80	41 	A 
	ld h,b			;0c81	60 	` 
	add a,c			;0c82	81 	. 
	ld bc,06031h		;0c83	01 31 60 	. 1 ` 
	ld sp,04102h		;0c86	31 02 41 	1 . A 
	ld l,b			;0c89	68 	h 
	inc l			;0c8a	2c 	, 
	ld (bc),a			;0c8b	02 	. 
	ld b,c			;0c8c	41 	A 
	ld (hl),b			;0c8d	70 	p 
	inc sp			;0c8e	33 	3 
	ld (bc),a			;0c8f	02 	. 
	ld b,c			;0c90	41 	A 
l0c91h:
	ld a,b			;0c91	78 	x 
	cpl			;0c92	2f 	/ 
	ld b,041h		;0c93	06 41 	. A 
	adc a,b			;0c95	88 	. 
	inc bc			;0c96	03 	. 
	ld bc,09032h		;0c97	01 32 90 	. 2 . 
	inc sp			;0c9a	33 	3 
	inc b			;0c9b	04 	. 
	ld b,c			;0c9c	41 	A 
	sub (hl)			;0c9d	96 	. 
	inc b			;0c9e	04 	. 
	ld bc,0a033h		;0c9f	01 33 a0 	. 3 . 
	add a,c			;0ca2	81 	. 
	ld bc,0a030h		;0ca3	01 30 a0 	. 0 . 
	cpl			;0ca6	2f 	/ 
	ld (bc),a			;0ca7	02 	. 
l0ca8h:
	ld b,c			;0ca8	41 	A 
	xor b			;0ca9	a8 	. 
	add a,c			;0caa	81 	. 
	ld (bc),a			;0cab	02 	. 
	ld sp,02ca8h		;0cac	31 a8 2c 	1 . , 
	ld (bc),a			;0caf	02 	. 
	ld b,c			;0cb0	41 	A 
	or b			;0cb1	b0 	. 
	jr nc,l0cb6h		;0cb2	30 02 	0 . 
	ld b,c			;0cb4	41 	A 
	cp b			;0cb5	b8 	. 
l0cb6h:
	ld (04106h),a		;0cb6	32 06 41 	2 . A 
	ret nc			;0cb9	d0 	. 
	dec l			;0cba	2d 	- 
	inc c			;0cbb	0c 	. 
	ld b,c			;0cbc	41 	A 
	ret nc			;0cbd	d0 	. 
	add a,c			;0cbe	81 	. 
	ld (bc),a			;0cbf	02 	. 
	jr nc,l0ca8h		;0cc0	30 e6 	0 . 
	inc b			;0cc2	04 	. 
	ld bc,0ff32h		;0cc3	01 32 ff 	. 2 . 
	nop			;0cc6	00 	. 
	ld b,e			;0cc7	43 	C 
	ld a,b			;0cc8	78 	x 
	ld b,e			;0cc9	43 	C 
	nop			;0cca	00 	. 
	inc (hl)			;0ccb	34 	4 
	ld d,b			;0ccc	50 	P 
	inc a			;0ccd	3c 	< 
	ld (bc),a			;0cce	02 	. 
	ex af,af'			;0ccf	08 	. 
	ld bc,l2035h		;0cd0	01 35 20 	. 5   
	ex af,af'			;0cd3	08 	. 
	ld bc,l2935h		;0cd4	01 35 29 	. 5 ) 
	ex af,af'			;0cd7	08 	. 
	ld bc,04235h		;0cd8	01 35 42 	. 5 B 
	ex af,af'			;0cdb	08 	. 
	ld bc,04c35h		;0cdc	01 35 4c 	. 5 L 
	ex af,af'			;0cdf	08 	. 
	ld bc,06235h		;0ce0	01 35 62 	. 5 b 
	ex af,af'			;0ce3	08 	. 
	ld bc,06c35h		;0ce4	01 35 6c 	. 5 l 
	ex af,af'			;0ce7	08 	. 
	ld bc,08235h		;0ce8	01 35 82 	. 5 . 
	ex af,af'			;0ceb	08 	. 
	ld bc,08c35h		;0cec	01 35 8c 	. 5 . 
	ex af,af'			;0cef	08 	. 
	ld bc,0a035h		;0cf0	01 35 a0 	. 5 . 
	jr nc,$+18		;0cf3	30 10 	0 . 
	inc a			;0cf5	3c 	< 
	or (hl)			;0cf6	b6 	. 
	inc b			;0cf7	04 	. 
	ld bc,0c035h		;0cf8	01 35 c0 	. 5 . 
	inc (hl)			;0cfb	34 	4 
	ex af,af'			;0cfc	08 	. 
	inc a			;0cfd	3c 	< 
	ret nc			;0cfe	d0 	. 
	jr nc,l0d09h		;0cff	30 08 	0 . 
	inc a			;0d01	3c 	< 
	sub 004h		;0d02	d6 04 	. . 
	ld bc,0e035h		;0d04	01 35 e0 	. 5 . 
	inc (hl)			;0d07	34 	4 
	ex af,af'			;0d08	08 	. 
l0d09h:
	inc a			;0d09	3c 	< 
	ret p			;0d0a	f0 	. 
	jr nc,l0d15h		;0d0b	30 08 	0 . 
	inc a			;0d0d	3c 	< 
	or 004h		;0d0e	f6 04 	. . 
	ld bc,l0035h		;0d10	01 35 00 	. 5 . 
	jr nc,l0d25h		;0d13	30 10 	0 . 
l0d15h:
	inc a			;0d15	3c 	< 
	ld d,004h		;0d16	16 04 	. . 
	ld bc,l2035h		;0d18	01 35 20 	. 5   
	ld b,e			;0d1b	43 	C 
	jr c,l0d61h		;0d1c	38 43 	8 C 
	jr nz,l0d54h		;0d1e	20 34 	  4 
	jr nz,l0d5eh		;0d20	20 3c 	  < 
	ld (sub_0108h),hl		;0d22	22 08 01 	" . . 
l0d25h:
	dec (hl)			;0d25	35 	5 
	ld (hl),008h		;0d26	36 08 	6 . 
	ld bc,04235h		;0d28	01 35 42 	. 5 B 
	ex af,af'			;0d2b	08 	. 
	ld bc,05635h		;0d2c	01 35 56 	. 5 V 
	ex af,af'			;0d2f	08 	. 
	ld bc,06835h		;0d30	01 35 68 	. 5 h 
	inc (hl)			;0d33	34 	4 
	inc c			;0d34	0c 	. 
	inc a			;0d35	3c 	< 
	ld (hl),h			;0d36	74 	t 
	ex af,af'			;0d37	08 	. 
	ld bc,08835h		;0d38	01 35 88 	. 5 . 
	inc (hl)			;0d3b	34 	4 
	inc b			;0d3c	04 	. 
	inc a			;0d3d	3c 	< 
	sub b			;0d3e	90 	. 
	jr nc,$+10		;0d3f	30 08 	0 . 
	inc a			;0d41	3c 	< 
	sub (hl)			;0d42	96 	. 
	inc b			;0d43	04 	. 
	ld bc,0a435h		;0d44	01 35 a4 	. 5 . 
	inc c			;0d47	0c 	. 
	ld bc,0b036h		;0d48	01 36 b0 	. 6 . 
	ld b,e			;0d4b	43 	C 
	djnz l0d91h		;0d4c	10 43 	. C 
	or b			;0d4e	b0 	. 
	inc (hl)			;0d4f	34 	4 
	ex af,af'			;0d50	08 	. 
	inc a			;0d51	3c 	< 
	cp c			;0d52	b9 	. 
	ex af,af'			;0d53	08 	. 
l0d54h:
	ld bc,0c435h		;0d54	01 35 c4 	. 5 . 
	inc de			;0d57	13 	. 
	ld bc,0d036h		;0d58	01 36 d0 	. 6 . 
	inc (hl)			;0d5b	34 	4 
	inc b			;0d5c	04 	. 
	inc a			;0d5d	3c 	< 
l0d5eh:
	ret c			;0d5e	d8 	. 
	jr nc,$+6		;0d5f	30 04 	0 . 
l0d61h:
	inc a			;0d61	3c 	< 
	exx			;0d62	d9 	. 
	inc b			;0d63	04 	. 
	ld bc,0e035h		;0d64	01 35 e0 	. 5 . 
	ld b,e			;0d67	43 	C 
	djnz $+69		;0d68	10 43 	. C 
	ret p			;0d6a	f0 	. 
	inc (hl)			;0d6b	34 	4 
	ex af,af'			;0d6c	08 	. 
	inc a			;0d6d	3c 	< 
	ld sp,hl			;0d6e	f9 	. 
	ex af,af'			;0d6f	08 	. 
	ld bc,l0035h		;0d70	01 35 00 	. 5 . 
	ld b,e			;0d73	43 	C 
	ex af,af'			;0d74	08 	. 
	ld b,e			;0d75	43 	C 
	nop			;0d76	00 	. 
	inc (hl)			;0d77	34 	4 
	ex af,af'			;0d78	08 	. 
	inc a			;0d79	3c 	< 
	inc b			;0d7a	04 	. 
	ex af,af'			;0d7b	08 	. 
	ld bc,l1035h		;0d7c	01 35 10 	. 5 . 
	jr nc,l0d91h		;0d7f	30 10 	0 . 
	inc a			;0d81	3c 	< 
	inc d			;0d82	14 	. 
	inc b			;0d83	04 	. 
	ld bc,l2535h		;0d84	01 35 25 	. 5 % 
	inc b			;0d87	04 	. 
	ld bc,03035h		;0d88	01 35 30 	. 5 0 
	add a,d			;0d8b	82 	. 
	inc bc			;0d8c	03 	. 
	jr c,l0dbfh		;0d8d	38 30 	8 0 
	inc l			;0d8f	2c 	, 
	ex af,af'			;0d90	08 	. 
l0d91h:
	inc a			;0d91	3c 	< 
	ld b,h			;0d92	44 	D 
	ld c,001h		;0d93	0e 01 	. . 
	ld (hl),050h		;0d95	36 50 	6 P 
	dec c			;0d97	0d 	. 
	ld bc,06c36h		;0d98	01 36 6c 	. 6 l 
	ld c,001h		;0d9b	0e 01 	. . 
	ld (hl),078h		;0d9d	36 78 	6 x 
	ld b,e			;0d9f	43 	C 
	inc b			;0da0	04 	. 
	ld b,e			;0da1	43 	C 
	ld a,b			;0da2	78 	x 
	ld (l3c04h),a		;0da3	32 04 3c 	2 . < 
	add a,b			;0da6	80 	. 
	ld l,008h		;0da7	2e 08 	. . 
	inc a			;0da9	3c 	< 
	add a,b			;0daa	80 	. 
	ld (bc),a			;0dab	02 	. 
	ld bc,09035h		;0dac	01 35 90 	. 5 . 
	ld b,e			;0daf	43 	C 
	jr nc,$+69		;0db0	30 43 	0 C 
	sbc a,b			;0db2	98 	. 
	ld (l3c04h),a		;0db3	32 04 3c 	2 . < 
	xor b			;0db6	a8 	. 
	ld (l3c04h),a		;0db7	32 04 3c 	2 . < 
	cp b			;0dba	b8 	. 
	ld (l3c04h),a		;0dbb	32 04 3c 	2 . < 
	ret z			;0dbe	c8 	. 
l0dbfh:
	ld (l3c04h),a		;0dbf	32 04 3c 	2 . < 
	ret po			;0dc2	e0 	. 
	ld (hl),008h		;0dc3	36 08 	6 . 
	inc a			;0dc5	3c 	< 
	jp po,l0109h+1		;0dc6	e2 0a 01 	. . . 
	dec (hl)			;0dc9	35 	5 
	ret p			;0dca	f0 	. 
	ld (l3c08h),a		;0dcb	32 08 3c 	2 . < 
	pop af			;0dce	f1 	. 
	ld b,001h		;0dcf	06 01 	. . 
	dec (hl)			;0dd1	35 	5 
	nop			;0dd2	00 	. 
	ld (l3c10h),a		;0dd3	32 10 3c 	2 . < 
	ld bc,00106h		;0dd6	01 06 01 	. . . 
	dec (hl)			;0dd9	35 	5 
	jr nz,l0d5eh		;0dda	20 82 	  . 
	inc bc			;0ddc	03 	. 
	scf			;0ddd	37 	7 
	jr nz,$+56		;0dde	20 36 	  6 
	ex af,af'			;0de0	08 	. 
	inc a			;0de1	3c 	< 
	dec h			;0de2	25 	% 
	add hl,bc			;0de3	09 	. 
	ld bc,03035h		;0de4	01 35 30 	. 5 0 
	scf			;0de7	37 	7 
	ex af,af'			;0de8	08 	. 
	inc a			;0de9	3c 	< 
	inc (hl)			;0dea	34 	4 
	ld a,(bc)			;0deb	0a 	. 
	ld bc,04035h		;0dec	01 35 40 	. 5 @ 
	jr nc,l0df9h		;0def	30 08 	0 . 
	inc a			;0df1	3c 	< 
	ld b,h			;0df2	44 	D 
	inc b			;0df3	04 	. 
	ld bc,05035h		;0df4	01 35 50 	. 5 P 
	inc (hl)			;0df7	34 	4 
	ex af,af'			;0df8	08 	. 
l0df9h:
	inc a			;0df9	3c 	< 
	ld d,(hl)			;0dfa	56 	V 
	ex af,af'			;0dfb	08 	. 
	ld bc,06035h		;0dfc	01 35 60 	. 5 ` 
	jr nc,l0e09h		;0dff	30 08 	0 . 
	inc a			;0e01	3c 	< 
	ld h,h			;0e02	64 	d 
	inc b			;0e03	04 	. 
	ld bc,07035h		;0e04	01 35 70 	. 5 p 
	inc l			;0e07	2c 	, 
	ex af,af'			;0e08	08 	. 
l0e09h:
	inc a			;0e09	3c 	< 
	add a,b			;0e0a	80 	. 
	jr z,$+10		;0e0b	28 08 	( . 
	inc a			;0e0d	3c 	< 
	sbc a,b			;0e0e	98 	. 
	inc l			;0e0f	2c 	, 
	inc b			;0e10	04 	. 
	inc a			;0e11	3c 	< 
l0e12h:
	sbc a,c			;0e12	99 	. 
	nop			;0e13	00 	. 
	ld bc,0a835h		;0e14	01 35 a8 	. 5 . 
	jr nc,$+6		;0e17	30 04 	0 . 
	inc a			;0e19	3c 	< 
	or b			;0e1a	b0 	. 
	ld b,e			;0e1b	43 	C 
	jr z,l0e61h		;0e1c	28 43 	( C 
	cp b			;0e1e	b8 	. 
	inc (hl)			;0e1f	34 	4 
	inc b			;0e20	04 	. 
	inc a			;0e21	3c 	< 
	ret z			;0e22	c8 	. 
l0e23h:
	ld (de),a			;0e23	12 	. 
	ld bc,0f036h		;0e24	01 36 f0 	. 6 . 
	inc (hl)			;0e27	34 	4 
	ex af,af'			;0e28	08 	. 
	inc a			;0e29	3c 	< 
	call p,sub_0108h		;0e2a	f4 08 01 	. . . 
	dec (hl)			;0e2d	35 	5 
	rst 38h			;0e2e	ff 	. 
	nop			;0e2f	00 	. 
	ld (de),a			;0e30	12 	. 
	rrca			;0e31	0f 	. 
	add hl,hl			;0e32	29 	) 
	dec sp			;0e33	3b 	; 
	ld (de),a			;0e34	12 	. 
	ld bc,0442bh		;0e35	01 2b 44 	. + D 
	ld c,001h		;0e38	0e 01 	. . 
	daa			;0e3a	27 	' 
	ld d,h			;0e3b	54 	T 
	ld (de),a			;0e3c	12 	. 
	ld bc,06427h		;0e3d	01 27 64 	. ' d 
	djnz l0e43h		;0e40	10 01 	. . 
	daa			;0e42	27 	' 
l0e43h:
	ld (hl),h			;0e43	74 	t 
	ld c,001h		;0e44	0e 01 	. . 
	daa			;0e46	27 	' 
	add a,h			;0e47	84 	. 
	ld c,001h		;0e48	0e 01 	. . 
	daa			;0e4a	27 	' 
	sub b			;0e4b	90 	. 
	ld (de),a			;0e4c	12 	. 
	ld bc,09428h		;0e4d	01 28 94 	. ( . 
	ld (de),a			;0e50	12 	. 
	dec de			;0e51	1b 	. 
	add hl,hl			;0e52	29 	) 
	nop			;0e53	00 	. 
	ld (de),a			;0e54	12 	. 
	inc bc			;0e55	03 	. 
	add hl,hl			;0e56	29 	) 
	dec bc			;0e57	0b 	. 
	ld (de),a			;0e58	12 	. 
	ld bc,l182bh		;0e59	01 2b 18 	. + . 
	djnz l0e5fh		;0e5c	10 01 	. . 
	daa			;0e5e	27 	' 
l0e5fh:
	jr z,$+16		;0e5f	28 0e 	( . 
l0e61h:
	ld bc,l3827h		;0e61	01 27 38 	. ' 8 
	inc c			;0e64	0c 	. 
	ld bc,04827h		;0e65	01 27 48 	. ' H 
	djnz l0e6bh		;0e68	10 01 	. . 
	daa			;0e6a	27 	' 
l0e6bh:
	ld e,b			;0e6b	58 	X 
	inc d			;0e6c	14 	. 
	ld bc,06827h		;0e6d	01 27 68 	. ' h 
	ld (de),a			;0e70	12 	. 
	ld bc,07827h		;0e71	01 27 78 	. ' x 
	djnz l0e77h		;0e74	10 01 	. . 
	daa			;0e76	27 	' 
l0e77h:
	adc a,b			;0e77	88 	. 
	ld c,001h		;0e78	0e 01 	. . 
	daa			;0e7a	27 	' 
	sbc a,b			;0e7b	98 	. 
	ld (de),a			;0e7c	12 	. 
	ld bc,0a827h		;0e7d	01 27 a8 	. ' . 
	ld (de),a			;0e80	12 	. 
	ld bc,0b827h		;0e81	01 27 b8 	. ' . 
	djnz l0e87h		;0e84	10 01 	. . 
	daa			;0e86	27 	' 
l0e87h:
	ret nz			;0e87	c0 	. 
	ld a,(bc)			;0e88	0a 	. 
	ld bc,0d027h		;0e89	01 27 d0 	. ' . 
	ld c,001h		;0e8c	0e 01 	. . 
	daa			;0e8e	27 	' 
	ret po			;0e8f	e0 	. 
	ld (de),a			;0e90	12 	. 
	ld bc,0e428h		;0e91	01 28 e4 	. ( . 
	ld (de),a			;0e94	12 	. 
	rlca			;0e95	07 	. 
	add hl,hl			;0e96	29 	) 
	nop			;0e97	00 	. 
	ld (de),a			;0e98	12 	. 
	rlca			;0e99	07 	. 
	add hl,hl			;0e9a	29 	) 
	inc e			;0e9b	1c 	. 
	ld (de),a			;0e9c	12 	. 
	ld bc,0242bh		;0e9d	01 2b 24 	. + $ 
	ld c,001h		;0ea0	0e 01 	. . 
	daa			;0ea2	27 	' 
	inc (hl)			;0ea3	34 	4 
	ld (de),a			;0ea4	12 	. 
	ld bc,04027h		;0ea5	01 27 40 	. ' @ 
	ld (de),a			;0ea8	12 	. 
	ld bc,04428h		;0ea9	01 28 44 	. ( D 
	ld (de),a			;0eac	12 	. 
	ld d,029h		;0ead	16 29 	. ) 
	sbc a,h			;0eaf	9c 	. 
	ld (de),a			;0eb0	12 	. 
	ld bc,0a42bh		;0eb1	01 2b a4 	. + . 
	ld c,001h		;0eb4	0e 01 	. . 
	daa			;0eb6	27 	' 
	or h			;0eb7	b4 	. 
	ld (de),a			;0eb8	12 	. 
	ld bc,0c427h		;0eb9	01 27 c4 	. ' . 
	djnz l0ebfh		;0ebc	10 01 	. . 
	daa			;0ebe	27 	' 
l0ebfh:
	call nc,0010eh		;0ebf	d4 0e 01 	. . . 
	daa			;0ec2	27 	' 
	call po,0010eh		;0ec3	e4 0e 01 	. . . 
	daa			;0ec6	27 	' 
	ret p			;0ec7	f0 	. 
	ld (de),a			;0ec8	12 	. 
	ld bc,0f428h		;0ec9	01 28 f4 	. ( . 
	ld (de),a			;0ecc	12 	. 
	inc bc			;0ecd	03 	. 
	add hl,hl			;0ece	29 	) 
	nop			;0ecf	00 	. 
	ld (de),a			;0ed0	12 	. 
	rlca			;0ed1	07 	. 
	add hl,hl			;0ed2	29 	) 
	inc e			;0ed3	1c 	. 
	ld (de),a			;0ed4	12 	. 
	ld bc,l282bh		;0ed5	01 2b 28 	. + ( 
	ld (de),a			;0ed8	12 	. 
	ld bc,l3827h		;0ed9	01 27 38 	. ' 8 
	djnz l0edfh		;0edc	10 01 	. . 
	daa			;0ede	27 	' 
l0edfh:
	ld c,b			;0edf	48 	H 
	ld c,001h		;0ee0	0e 01 	. . 
	daa			;0ee2	27 	' 
	ld e,b			;0ee3	58 	X 
	ld (de),a			;0ee4	12 	. 
	ld bc,06827h		;0ee5	01 27 68 	. ' h 
	ld c,001h		;0ee8	0e 01 	. . 
	daa			;0eea	27 	' 
	ld a,b			;0eeb	78 	x 
	ld c,001h		;0eec	0e 01 	. . 
	daa			;0eee	27 	' 
	adc a,b			;0eef	88 	. 
	ld c,001h		;0ef0	0e 01 	. . 
	daa			;0ef2	27 	' 
	sbc a,b			;0ef3	98 	. 
	ld (de),a			;0ef4	12 	. 
	ld bc,0a827h		;0ef5	01 27 a8 	. ' . 
	ld (de),a			;0ef8	12 	. 
	ld bc,0c027h		;0ef9	01 27 c0 	. ' . 
	ld (de),a			;0efc	12 	. 
	ld bc,0c028h		;0efd	01 28 c0 	. ( . 
	nop			;0f00	00 	. 
	ld bc,0c428h		;0f01	01 28 c4 	. ( . 
	ld (de),a			;0f04	12 	. 
	ex af,af'			;0f05	08 	. 
	add hl,hl			;0f06	29 	) 
	call nz,00800h		;0f07	c4 00 08 	. . . 
	add hl,hl			;0f0a	29 	) 
	call po,sub_0100h		;0f0b	e4 00 01 	. . . 
	dec hl			;0f0e	2b 	+ 
	call po,sub_0112h		;0f0f	e4 12 01 	. . . 
	dec hl			;0f12	2b 	+ 
	ret p			;0f13	f0 	. 
	ld a,(bc)			;0f14	0a 	. 
	ld bc,0ff2ch		;0f15	01 2c ff 	. , . 
	rst 38h			;0f18	ff 	. 
	inc b			;0f19	04 	. 
	nop			;0f1a	00 	. 
	ld bc,l300dh		;0f1b	01 0d 30 	. . 0 
	inc b			;0f1e	04 	. 
	ld bc,0500fh		;0f1f	01 0f 50 	. . P 
	dec b			;0f22	05 	. 
	ld bc,0700fh		;0f23	01 0f 70 	. . p 
	inc b			;0f26	04 	. 
	ld bc,08c0fh		;0f27	01 0f 8c 	. . . 
	inc b			;0f2a	04 	. 
	ld bc,0b00fh		;0f2b	01 0f b0 	. . . 
	inc b			;0f2e	04 	. 
	ld bc,0d00fh		;0f2f	01 0f d0 	. . . 
	dec b			;0f32	05 	. 
	ld bc,0fc0fh		;0f33	01 0f fc 	. . . 
	nop			;0f36	00 	. 
	ld bc,0000eh		;0f37	01 0e 00 	. . . 
	ld a,(bc)			;0f3a	0a 	. 
	ld bc,0ff21h		;0f3b	01 21 ff 	. ! . 
	inc b			;0f3e	04 	. 
	nop			;0f3f	00 	. 
	ld bc,l300dh		;0f40	01 0d 30 	. . 0 
	inc b			;0f43	04 	. 
	ld bc,0400fh		;0f44	01 0f 40 	. . @ 
	inc b			;0f47	04 	. 
	ld bc,0500fh		;0f48	01 0f 50 	. . P 
	inc b			;0f4b	04 	. 
	ld bc,0700fh		;0f4c	01 0f 70 	. . p 
	dec b			;0f4f	05 	. 
	ld bc,0900fh		;0f50	01 0f 90 	. . . 
	inc b			;0f53	04 	. 
	ld bc,0b00fh		;0f54	01 0f b0 	. . . 
	inc b			;0f57	04 	. 
	ld bc,0d00fh		;0f58	01 0f d0 	. . . 
	dec b			;0f5b	05 	. 
	ld bc,0ff0fh		;0f5c	01 0f ff 	. . . 
	inc hl			;0f5f	23 	# 
	nop			;0f60	00 	. 
	ld bc,04b2ah		;0f61	01 2a 4b 	. * K 
	nop			;0f64	00 	. 
	ld bc,06b2ah		;0f65	01 2a 6b 	. * k 
	nop			;0f68	00 	. 
	ld bc,08b2ah		;0f69	01 2a 8b 	. * . 
	nop			;0f6c	00 	. 
	ld bc,0a310h		;0f6d	01 10 a3 	. . . 
	nop			;0f70	00 	. 
	ld bc,0cf2ah		;0f71	01 2a cf 	. * . 
	nop			;0f74	00 	. 
	ld bc,0eb2ah		;0f75	01 2a eb 	. * . 
	nop			;0f78	00 	. 
	ld bc,l232ah		;0f79	01 2a 23 	. * # 
	nop			;0f7c	00 	. 
	ld bc,04b2ah		;0f7d	01 2a 4b 	. * K 
	nop			;0f80	00 	. 
	ld bc,06310h		;0f81	01 10 63 	. . c 
	nop			;0f84	00 	. 
	ld bc,08b2ah		;0f85	01 2a 8b 	. * . 
	nop			;0f88	00 	. 
	ld bc,0b32ah		;0f89	01 2a b3 	. * . 
	nop			;0f8c	00 	. 
	ld bc,0cb2ah		;0f8d	01 2a cb 	. * . 
	nop			;0f90	00 	. 
	ld bc,0e710h		;0f91	01 10 e7 	. . . 
	nop			;0f94	00 	. 
	ld bc,l132ah		;0f95	01 2a 13 	. * . 
	nop			;0f98	00 	. 
	ld bc,l2b2ah		;0f99	01 2a 2b 	. * + 
	nop			;0f9c	00 	. 
	ld bc,0432ah		;0f9d	01 2a 43 	. * C 
	nop			;0fa0	00 	. 
	ld bc,0732ah		;0fa1	01 2a 73 	. * s 
	nop			;0fa4	00 	. 
	ld bc,09310h		;0fa5	01 10 93 	. . . 
	nop			;0fa8	00 	. 
	ld bc,0ab2ah		;0fa9	01 2a ab 	. * . 
	nop			;0fac	00 	. 
	ld bc,0c310h		;0fad	01 10 c3 	. . . 
	nop			;0fb0	00 	. 
	ld bc,0d32ah		;0fb1	01 2a d3 	. * . 
	nop			;0fb4	00 	. 
	ld bc,0e310h		;0fb5	01 10 e3 	. . . 
	nop			;0fb8	00 	. 
	ld bc,l132ah		;0fb9	01 2a 13 	. * . 
	nop			;0fbc	00 	. 
	ld bc,l2b2ah		;0fbd	01 2a 2b 	. * + 
	nop			;0fc0	00 	. 
	ld bc,0432ah		;0fc1	01 2a 43 	. * C 
	nop			;0fc4	00 	. 
	ld bc,0532ah		;0fc5	01 2a 53 	. * S 
	nop			;0fc8	00 	. 
	ld bc,06b2ah		;0fc9	01 2a 6b 	. * k 
	nop			;0fcc	00 	. 
	ld bc,08b2ah		;0fcd	01 2a 8b 	. * . 
	nop			;0fd0	00 	. 
	ld bc,0a310h		;0fd1	01 10 a3 	. . . 
	nop			;0fd4	00 	. 
	ld bc,0c32ah		;0fd5	01 2a c3 	. * . 
	nop			;0fd8	00 	. 
	ld bc,0ff2ah		;0fd9	01 2a ff 	. * . 
	nop			;0fdc	00 	. 
	inc sp			;0fdd	33 	3 
	inc e			;0fde	1c 	. 
	ld b,d			;0fdf	42 	B 
	ld (bc),a			;0fe0	02 	. 
	add hl,bc			;0fe1	09 	. 
	ld bc,00424h		;0fe2	01 24 04 	. $ . 
	add hl,bc			;0fe5	09 	. 
	ld bc,l0625h		;0fe6	01 25 06 	. % . 
	add hl,bc			;0fe9	09 	. 
	ld bc,02626h		;0fea	01 26 26 	. & & 
	inc b			;0fed	04 	. 
	ld bc,l3823h		;0fee	01 23 38 	. # 8 
	dec c			;0ff1	0d 	. 
	ld bc,04c22h		;0ff2	01 22 4c 	. " L 
	dec c			;0ff5	0d 	. 
	ld bc,05622h		;0ff6	01 22 56 	. " V 
	inc bc			;0ff9	03 	. 
	ld bc,07023h		;0ffa	01 23 70 	. # p 
	cpl			;0ffd	2f 	/ 
	ex af,af'			;0ffe	08 	. 
	ld b,d			;0fff	42 	B 
l1000h:
	ld (hl),b			;1000	70 	p 
	add hl,bc			;1001	09 	. 
	ld bc,08422h		;1002	01 22 84 	. " . 
	inc bc			;1005	03 	. 
	ld bc,09023h		;1006	01 23 90 	. # . 
	inc sp			;1009	33 	3 
	ex af,af'			;100a	08 	. 
	ld b,d			;100b	42 	B 
	sub h			;100c	94 	. 
	dec c			;100d	0d 	. 
	ld bc,09a22h		;100e	01 22 9a 	. " . 
	dec c			;1011	0d 	. 
	ld bc,0a222h		;1012	01 22 a2 	. " . 
	dec c			;1015	0d 	. 
	ld bc,0a822h		;1016	01 22 a8 	. " . 
l1019h:
	dec c			;1019	0d 	. 
	ld bc,0b022h		;101a	01 22 b0 	. " . 
	cpl			;101d	2f 	/ 
	ex af,af'			;101e	08 	. 
	ld b,d			;101f	42 	B 
	or h			;1020	b4 	. 
	ld (bc),a			;1021	02 	. 
	ld bc,0c623h		;1022	01 23 c6 	. # . 
	dec b			;1025	05 	. 
	ld bc,0c824h		;1026	01 24 c8 	. $ . 
	dec b			;1029	05 	. 
	ld bc,0ca25h		;102a	01 25 ca 	. % . 
	dec b			;102d	05 	. 
	ld bc,0d026h		;102e	01 26 d0 	. & . 
	inc sp			;1031	33 	3 
	inc c			;1032	0c 	. 
l1033h:
	ld b,d			;1033	42 	B 
	ret po			;1034	e0 	. 
l1035h:
	inc b			;1035	04 	. 
	ld bc,0e823h		;1036	01 23 e8 	. # . 
	dec c			;1039	0d 	. 
	ld bc,0f422h		;103a	01 22 f4 	. " . 
	add hl,bc			;103d	09 	. 
	ld bc,0f624h		;103e	01 24 f6 	. $ . 
	add hl,bc			;1041	09 	. 
	ld bc,0f825h		;1042	01 25 f8 	. % . 
	add hl,bc			;1045	09 	. 
	ld bc,00026h		;1046	01 26 00 	. & . 
	inc sp			;1049	33 	3 
	inc c			;104a	0c 	. 
	ld b,d			;104b	42 	B 
	inc b			;104c	04 	. 
	inc bc			;104d	03 	. 
	ld bc,01023h		;104e	01 23 10 	. # . 
	add a,c			;1051	81 	. 
	ld (bc),a			;1052	02 	. 
	ld l,02bh		;1053	2e 2b 	. + 
	add hl,bc			;1055	09 	. 
	ld bc,03022h		;1056	01 22 30 	. " 0 
	inc sp			;1059	33 	3 
	djnz l109eh		;105a	10 42 	. B 
	ld (hl),004h		;105c	36 04 	6 . 
	ld bc,04823h		;105e	01 23 48 	. # H 
	add hl,bc			;1061	09 	. 
	ld bc,04a24h		;1062	01 24 4a 	. $ J 
	add hl,bc			;1065	09 	. 
	ld bc,04c25h		;1066	01 25 4c 	. % L 
	add hl,bc			;1069	09 	. 
	ld bc,05426h		;106a	01 26 54 	. & T 
	add hl,bc			;106d	09 	. 
	ld bc,05624h		;106e	01 24 56 	. $ V 
	add hl,bc			;1071	09 	. 
	ld bc,05825h		;1072	01 25 58 	. % X 
l1075h:
	add hl,bc			;1075	09 	. 
	ld bc,06426h		;1076	01 26 64 	. & d 
	inc b			;1079	04 	. 
	ld bc,07023h		;107a	01 23 70 	. # p 
	cpl			;107d	2f 	/ 
	ex af,af'			;107e	08 	. 
	ld b,d			;107f	42 	B 
	ld (hl),b			;1080	70 	p 
l1081h:
	add hl,bc			;1081	09 	. 
	ld bc,08022h		;1082	01 22 80 	. " . 
	add a,c			;1085	81 	. 
	inc b			;1086	04 	. 
	jr nc,l1019h		;1087	30 90 	0 . 
	ld l,004h		;1089	2e 04 	. . 
	ld b,d			;108b	42 	B 
	and b			;108c	a0 	. 
	ld l,00ch		;108d	2e 0c 	. . 
	ld b,d			;108f	42 	B 
	and h			;1090	a4 	. 
	inc b			;1091	04 	. 
	ld bc,0b023h		;1092	01 23 b0 	. # . 
	dec b			;1095	05 	. 
	ld bc,0b224h		;1096	01 24 b2 	. $ . 
	dec b			;1099	05 	. 
	ld bc,0b425h		;109a	01 25 b4 	. % . 
	dec b			;109d	05 	. 
l109eh:
	ld bc,0c026h		;109e	01 26 c0 	. & . 
	add a,c			;10a1	81 	. 
	ld (bc),a			;10a2	02 	. 
	jr nc,l1075h		;10a3	30 d0 	0 . 
	ld l,008h		;10a5	2e 08 	. . 
	ld b,d			;10a7	42 	B 
	jp nc,l0109h		;10a8	d2 09 01 	. . . 
	ld (l05e8h),hl		;10ab	22 e8 05 	" . . 
	ld bc,0ea24h		;10ae	01 24 ea 	. $ . 
	dec b			;10b1	05 	. 
	ld bc,0ec25h		;10b2	01 25 ec 	. % . 
	dec b			;10b5	05 	. 
	ld bc,0f026h		;10b6	01 26 f0 	. & . 
	inc sp			;10b9	33 	3 
	inc b			;10ba	04 	. 
	ld b,d			;10bb	42 	B 
	or 002h		;10bc	f6 02 	. . 
	ld bc,l0023h		;10be	01 23 00 	. # . 
	inc sp			;10c1	33 	3 
	ex af,af'			;10c2	08 	. 
	ld b,d			;10c3	42 	B 
	ld (bc),a			;10c4	02 	. 
	inc b			;10c5	04 	. 
	ld bc,l0e23h		;10c6	01 23 0e 	. # . 
	dec c			;10c9	0d 	. 
	ld bc,01422h		;10ca	01 22 14 	. " . 
	dec c			;10cd	0d 	. 
	ld bc,01a22h		;10ce	01 22 1a 	. " . 
	dec c			;10d1	0d 	. 
	ld bc,l2022h		;10d2	01 22 20 	. "   
	add a,c			;10d5	81 	. 
	ld (bc),a			;10d6	02 	. 
	jr nc,l10f9h		;10d7	30 20 	0   
	cpl			;10d9	2f 	/ 
	inc b			;10da	04 	. 
	ld b,d			;10db	42 	B 
	jr nc,$+48		;10dc	30 2e 	0 . 
	ex af,af'			;10de	08 	. 
	ld b,d			;10df	42 	B 
	inc (hl)			;10e0	34 	4 
	inc bc			;10e1	03 	. 
	ld bc,04023h		;10e2	01 23 40 	. # @ 
	add a,c			;10e5	81 	. 
	inc b			;10e6	04 	. 
	jr nc,l1139h		;10e7	30 50 	0 P 
	ld l,004h		;10e9	2e 04 	. . 
	ld b,d			;10eb	42 	B 
sub_10ech:
	ld h,b			;10ec	60 	` 
	ld l,004h		;10ed	2e 04 	. . 
	ld b,d			;10ef	42 	B 
	ld h,d			;10f0	62 	b 
	inc bc			;10f1	03 	. 
	ld bc,07023h		;10f2	01 23 70 	. # p 
	dec (hl)			;10f5	35 	5 
	inc b			;10f6	04 	. 
	ld b,d			;10f7	42 	B 
	ld (hl),b			;10f8	70 	p 
l10f9h:
	add a,c			;10f9	81 	. 
	ld (bc),a			;10fa	02 	. 
	ld l,080h		;10fb	2e 80 	. . 
	ld l,004h		;10fd	2e 04 	. . 
	ld b,d			;10ff	42 	B 
	add a,h			;1100	84 	. 
	inc bc			;1101	03 	. 
	ld bc,08624h		;1102	01 24 86 	. $ . 
	inc bc			;1105	03 	. 
	ld bc,08825h		;1106	01 25 88 	. % . 
	inc bc			;1109	03 	. 
	ld bc,09026h		;110a	01 26 90 	. & . 
	ld sp,04202h		;110d	31 02 42 	1 . B 
	sub (hl)			;1110	96 	. 
l1111h:
	ld (bc),a			;1111	02 	. 
	ld bc,09823h		;1112	01 23 98 	. # . 
	dec (hl)			;1115	35 	5 
	ld (bc),a			;1116	02 	. 
	ld b,d			;1117	42 	B 
	and b			;1118	a0 	. 
	ld sp,04208h		;1119	31 08 42 	1 . B 
	xor d			;111c	aa 	. 
	dec bc			;111d	0b 	. 
	ld bc,0b422h		;111e	01 22 b4 	. " . 
	ld (bc),a			;1121	02 	. 
	ld bc,0c023h		;1122	01 23 c0 	. # . 
	add a,c			;1125	81 	. 
	ld bc,0c030h		;1126	01 30 c0 	. 0 . 
	dec l			;1129	2d 	- 
	inc b			;112a	04 	. 
	ld b,d			;112b	42 	B 
	ret z			;112c	c8 	. 
	inc b			;112d	04 	. 
	ld bc,0ca24h		;112e	01 24 ca 	. $ . 
	dec b			;1131	05 	. 
	ld bc,0cc25h		;1132	01 25 cc 	. % . 
	dec b			;1135	05 	. 
	ld bc,0d026h		;1136	01 26 d0 	. & . 
l1139h:
	inc sp			;1139	33 	3 
	inc b			;113a	04 	. 
	ld b,d			;113b	42 	B 
	ret c			;113c	d8 	. 
	dec c			;113d	0d 	. 
	ld bc,0e022h		;113e	01 22 e0 	. " . 
	cpl			;1141	2f 	/ 
	inc b			;1142	04 	. 
	ld b,d			;1143	42 	B 
	push hl			;1144	e5 	. 
	dec b			;1145	05 	. 
	ld bc,0f023h		;1146	01 23 f0 	. # . 
	inc sp			;1149	33 	3 
	inc b			;114a	04 	. 
	ld b,d			;114b	42 	B 
	or 009h		;114c	f6 09 	. . 
	ld bc,0f824h		;114e	01 24 f8 	. $ . 
	add hl,bc			;1151	09 	. 
	ld bc,0fa25h		;1152	01 25 fa 	. % . 
	add hl,bc			;1155	09 	. 
	ld bc,00026h		;1156	01 26 00 	. & . 
	inc sp			;1159	33 	3 
	ex af,af'			;115a	08 	. 
	ld b,d			;115b	42 	B 
	inc b			;115c	04 	. 
	add hl,bc			;115d	09 	. 
	ld bc,00624h		;115e	01 24 06 	. $ . 
	add hl,bc			;1161	09 	. 
	ld bc,l0825h		;1162	01 25 08 	. % . 
	add hl,bc			;1165	09 	. 
	ld bc,l1226h		;1166	01 26 12 	. & . 
	add hl,bc			;1169	09 	. 
	ld bc,01424h		;116a	01 24 14 	. $ . 
	add hl,bc			;116d	09 	. 
	ld bc,l1625h		;116e	01 25 16 	. % . 
	add hl,bc			;1171	09 	. 
	ld bc,02026h		;1172	01 26 20 	. &   
	add a,c			;1175	81 	. 
	ld bc,l2030h		;1176	01 30 20 	. 0   
	cpl			;1179	2f 	/ 
	ld (bc),a			;117a	02 	. 
	ld b,d			;117b	42 	B 
	jr z,l11aah		;117c	28 2c 	( , 
	ld (bc),a			;117e	02 	. 
	ld b,d			;117f	42 	B 
	ld hl,(l0107h)		;1180	2a 07 01 	* . . 
	ld (l3530h),hl		;1183	22 30 35 	" 0 5 
	ld (bc),a			;1186	02 	. 
	ld b,d			;1187	42 	B 
	jr c,$+51		;1188	38 31 	8 1 
	ld (bc),a			;118a	02 	. 
	ld b,d			;118b	42 	B 
	add hl,sp			;118c	39 	9 
	dec bc			;118d	0b 	. 
	ld bc,04022h		;118e	01 22 40 	. " @ 
	add a,c			;1191	81 	. 
	inc b			;1192	04 	. 
	ld l,040h		;1193	2e 40 	. @ 
	dec (hl)			;1195	35 	5 
	ld (bc),a			;1196	02 	. 
	ld b,d			;1197	42 	B 
	ld c,b			;1198	48 	H 
	jr nc,l119dh		;1199	30 02 	0 . 
	ld b,d			;119b	42 	B 
	ld d,b			;119c	50 	P 
l119dh:
	dec (hl)			;119d	35 	5 
	ld (bc),a			;119e	02 	. 
	ld b,d			;119f	42 	B 
	ld e,b			;11a0	58 	X 
	cpl			;11a1	2f 	/ 
	ld (bc),a			;11a2	02 	. 
	ld b,d			;11a3	42 	B 
	ld h,b			;11a4	60 	` 
	ld sp,04202h		;11a5	31 02 42 	1 . B 
	ld l,b			;11a8	68 	h 
	inc l			;11a9	2c 	, 
l11aah:
	ld (bc),a			;11aa	02 	. 
	ld b,d			;11ab	42 	B 
	ld l,h			;11ac	6c 	l 
	inc bc			;11ad	03 	. 
	ld bc,07023h		;11ae	01 23 70 	. # p 
l11b1h:
	dec (hl)			;11b1	35 	5 
	ld (bc),a			;11b2	02 	. 
	ld b,d			;11b3	42 	B 
	ld a,b			;11b4	78 	x 
	ld sp,04202h		;11b5	31 02 42 	1 . B 
	ld a,b			;11b8	78 	x 
	rlca			;11b9	07 	. 
	ld bc,07a24h		;11ba	01 24 7a 	. $ z 
	rlca			;11bd	07 	. 
	ld bc,07c25h		;11be	01 25 7c 	. % | 
	rlca			;11c1	07 	. 
	ld bc,08026h		;11c2	01 26 80 	. & . 
	add a,c			;11c5	81 	. 
	ld bc,0802eh		;11c6	01 2e 80 	. . . 
	dec (hl)			;11c9	35 	5 
	inc b			;11ca	04 	. 
	ld b,d			;11cb	42 	B 
	sub b			;11cc	90 	. 
	cpl			;11cd	2f 	/ 
	inc b			;11ce	04 	. 
	ld b,d			;11cf	42 	B 
	sub d			;11d0	92 	. 
	add hl,bc			;11d1	09 	. 
	ld bc,09822h		;11d2	01 22 98 	. " . 
	add a,c			;11d5	81 	. 
	ld bc,0a02eh		;11d6	01 2e a0 	. . . 
	ld (04202h),a		;11d9	32 02 42 	2 . B 
	xor b			;11dc	a8 	. 
	dec l			;11dd	2d 	- 
	inc b			;11de	04 	. 
	ld b,d			;11df	42 	B 
	xor b			;11e0	a8 	. 
	ld bc,l2301h		;11e1	01 01 23 	. . # 
	cp b			;11e4	b8 	. 
	inc b			;11e5	04 	. 
	ld bc,0b823h		;11e6	01 23 b8 	. # . 
	ld sp,04202h		;11e9	31 02 42 	1 . B 
	ret nz			;11ec	c0 	. 
	add a,c			;11ed	81 	. 
	ld (bc),a			;11ee	02 	. 
	jr nc,l11b1h		;11ef	30 c0 	0 . 
	dec l			;11f1	2d 	- 
	inc b			;11f2	04 	. 
	ld b,d			;11f3	42 	B 
	ret nc			;11f4	d0 	. 
	inc l			;11f5	2c 	, 
	inc c			;11f6	0c 	. 
	ld b,d			;11f7	42 	B 
	call nc,sub_0103h		;11f8	d4 03 01 	. . . 
	inc h			;11fb	24 	$ 
	sub 003h		;11fc	d6 03 	. . 
	ld bc,0d825h		;11fe	01 25 d8 	. % . 
	inc bc			;1201	03 	. 
	ld bc,0e026h		;1202	01 26 e0 	. & . 
	add a,c			;1205	81 	. 
	inc bc			;1206	03 	. 
	jr nc,$-4		;1207	30 fa 	0 . 
	dec c			;1209	0d 	. 
	ld bc,0ff22h		;120a	01 22 ff 	. " . 
	ld de,07a04h		;120d	11 04 7a 	. . z 
	ld a,d			;1210	7a 	z 
	sub d			;1211	92 	. 
	ld a,d			;1212	7a 	z 
	ld a,d			;1213	7a 	z 
	ld a,d			;1214	7a 	z 
	inc a			;1215	3c 	< 
	add hl,hl			;1216	29 	) 
	add hl,hl			;1217	29 	) 
	add hl,hl			;1218	29 	) 
	add hl,hl			;1219	29 	) 
	add hl,hl			;121a	29 	) 
	add hl,hl			;121b	29 	) 
	add hl,hl			;121c	29 	) 
	add hl,hl			;121d	29 	) 
	inc e			;121e	1c 	. 
	dec hl			;121f	2b 	+ 
	ld a,d			;1220	7a 	z 
	ld a,d			;1221	7a 	z 
	sub e			;1222	93 	. 
	ld a,d			;1223	7a 	z 
	ld a,d			;1224	7a 	z 
	sub b			;1225	90 	. 
l1226h:
	add a,h			;1226	84 	. 
	add hl,hl			;1227	29 	) 
	add hl,hl			;1228	29 	) 
	add hl,hl			;1229	29 	) 
	add hl,hl			;122a	29 	) 
	add hl,hl			;122b	29 	) 
	add hl,hl			;122c	29 	) 
	add hl,hl			;122d	29 	) 
	add hl,hl			;122e	29 	) 
	add hl,hl			;122f	29 	) 
	ld l,l			;1230	6d 	m 
	inc d			;1231	14 	. 
	ld a,l			;1232	7d 	} 
	ld a,a			;1233	7f 	 
	adc a,h			;1234	8c 	. 
	adc a,(hl)			;1235	8e 	. 
	adc a,l			;1236	8d 	. 
	adc a,a			;1237	8f 	. 
	add hl,hl			;1238	29 	) 
	add hl,hl			;1239	29 	) 
	add hl,hl			;123a	29 	) 
	add hl,hl			;123b	29 	) 
	add hl,hl			;123c	29 	) 
	add hl,hl			;123d	29 	) 
	add hl,hl			;123e	29 	) 
	add hl,hl			;123f	29 	) 
	add hl,hl			;1240	29 	) 
	ld l,h			;1241	6c 	l 
	add hl,hl			;1242	29 	) 
	add hl,hl			;1243	29 	) 
	add hl,hl			;1244	29 	) 
	add hl,hl			;1245	29 	) 
	add hl,hl			;1246	29 	) 
	add hl,hl			;1247	29 	) 
	add hl,hl			;1248	29 	) 
	add hl,hl			;1249	29 	) 
	add hl,hl			;124a	29 	) 
	add hl,hl			;124b	29 	) 
	add hl,hl			;124c	29 	) 
	add hl,hl			;124d	29 	) 
	add hl,hl			;124e	29 	) 
	add hl,hl			;124f	29 	) 
	add hl,hl			;1250	29 	) 
	add hl,hl			;1251	29 	) 
	ld l,l			;1252	6d 	m 
	ld bc,0a802h		;1253	01 02 a8 	. . . 
	xor c			;1256	a9 	. 
	ld bc,0aa02h		;1257	01 02 aa 	. . . 
	xor e			;125a	ab 	. 
	dec bc			;125b	0b 	. 
	ld (bc),a			;125c	02 	. 
	xor h			;125d	ac 	. 
	or h			;125e	b4 	. 
	or (hl)			;125f	b6 	. 
	or b			;1260	b0 	. 
	or d			;1261	b2 	. 
	sub h			;1262	94 	. 
	sub (hl)			;1263	96 	. 
	sbc a,b			;1264	98 	. 
	sbc a,d			;1265	9a 	. 
	djnz l127ah		;1266	10 12 	. . 
	xor l			;1268	ad 	. 
	or l			;1269	b5 	. 
	or a			;126a	b7 	. 
	or c			;126b	b1 	. 
	or e			;126c	b3 	. 
	sub l			;126d	95 	. 
	sub a			;126e	97 	. 
	sbc a,c			;126f	99 	. 
	sbc a,e			;1270	9b 	. 
	ld de,00713h		;1271	11 13 07 	. . . 
	ld (bc),a			;1274	02 	. 
	xor h			;1275	ac 	. 
	or h			;1276	b4 	. 
	or (hl)			;1277	b6 	. 
	sub h			;1278	94 	. 
	sub (hl)			;1279	96 	. 
l127ah:
	djnz l128eh		;127a	10 12 	. . 
	xor l			;127c	ad 	. 
	or l			;127d	b5 	. 
	or a			;127e	b7 	. 
	sub l			;127f	95 	. 
	sub a			;1280	97 	. 
	ld de,l0213h		;1281	11 13 02 	. . . 
	ld b,09ch		;1284	06 9c 	. . 
	sbc a,(hl)			;1286	9e 	. 
	sbc a,l			;1287	9d 	. 
	sbc a,a			;1288	9f 	. 
	and b			;1289	a0 	. 
	and d			;128a	a2 	. 
	and c			;128b	a1 	. 
	and e			;128c	a3 	. 
	and h			;128d	a4 	. 
l128eh:
	and (hl)			;128e	a6 	. 
	and l			;128f	a5 	. 
	and a			;1290	a7 	. 
	cp 008h		;1291	fe 08 	. . 
	add hl,hl			;1293	29 	) 
	add hl,hl			;1294	29 	) 
	add hl,hl			;1295	29 	) 
	add hl,hl			;1296	29 	) 
	add hl,hl			;1297	29 	) 
	add hl,hl			;1298	29 	) 
	add hl,hl			;1299	29 	) 
	add hl,hl			;129a	29 	) 
	add hl,hl			;129b	29 	) 
	add hl,hl			;129c	29 	) 
	add hl,hl			;129d	29 	) 
	add hl,hl			;129e	29 	) 
	add hl,hl			;129f	29 	) 
	add hl,hl			;12a0	29 	) 
	add hl,hl			;12a1	29 	) 
	add hl,hl			;12a2	29 	) 
	add hl,hl			;12a3	29 	) 
	add hl,hl			;12a4	29 	) 
	add hl,hl			;12a5	29 	) 
	add hl,hl			;12a6	29 	) 
	add hl,hl			;12a7	29 	) 
	add hl,hl			;12a8	29 	) 
	add hl,hl			;12a9	29 	) 
	add hl,hl			;12aa	29 	) 
	add hl,hl			;12ab	29 	) 
	add hl,hl			;12ac	29 	) 
	add hl,hl			;12ad	29 	) 
	add hl,hl			;12ae	29 	) 
	add hl,hl			;12af	29 	) 
	add hl,hl			;12b0	29 	) 
	add hl,hl			;12b1	29 	) 
	add hl,hl			;12b2	29 	) 
	ld (bc),a			;12b3	02 	. 
	ex af,af'			;12b4	08 	. 
	ret po			;12b5	e0 	. 
	jp po,0e3e1h		;12b6	e2 e1 e3 	. . . 
	call po,0e5e6h		;12b9	e4 e6 e5 	. . . 
	rst 20h			;12bc	e7 	. 
	ret pe			;12bd	e8 	. 
	jp pe,0ebe9h		;12be	ea e9 eb 	. . . 
	call pe,0edeeh		;12c1	ec ee ed 	. . . 
	rst 28h			;12c4	ef 	. 
	add hl,bc			;12c5	09 	. 
	inc c			;12c6	0c 	. 
	add hl,hl			;12c7	29 	) 
	add hl,hl			;12c8	29 	) 
	ret p			;12c9	f0 	. 
	ret m			;12ca	f8 	. 
	ld c,003h		;12cb	0e 03 	. . 
	call nc,0d8d6h		;12cd	d4 d6 d8 	. . . 
	add hl,hl			;12d0	29 	) 
	add hl,hl			;12d1	29 	) 
	pop af			;12d2	f1 	. 
	ld sp,hl			;12d3	f9 	. 
	ld hl,0d523h		;12d4	21 23 d5 	! # . 
	rst 10h			;12d7	d7 	. 
	exx			;12d8	d9 	. 
	add hl,hl			;12d9	29 	) 
	add hl,hl			;12da	29 	) 
	jp p,020fah		;12db	f2 fa 20 	. .   
	ld (0dad8h),hl		;12de	22 d8 da 	" . . 
	sub 029h		;12e1	d6 29 	. ) 
	add hl,hl			;12e3	29 	) 
	di			;12e4	f3 	. 
	ei			;12e5	fb 	. 
	ld hl,0d900h		;12e6	21 00 d9 	! . . 
	in a,(0d7h)		;12e9	db d7 	. . 
	add hl,hl			;12eb	29 	) 
	ret p			;12ec	f0 	. 
	ret m			;12ed	f8 	. 
	ld c,003h		;12ee	0e 03 	. . 
	call nc,0d8d6h		;12f0	d4 d6 d8 	. . . 
	jp c,0f129h		;12f3	da 29 f1 	. ) . 
	ld sp,hl			;12f6	f9 	. 
	ld hl,0d523h		;12f7	21 23 d5 	! # . 
	rst 10h			;12fa	d7 	. 
	exx			;12fb	d9 	. 
	in a,(029h)		;12fc	db 29 	. ) 
	jp p,020fah		;12fe	f2 fa 20 	. .   
	ld (0dad8h),hl		;1301	22 d8 da 	" . . 
	sub 0d4h		;1304	d6 d4 	. . 
	add hl,hl			;1306	29 	) 
	di			;1307	f3 	. 
	ei			;1308	fb 	. 
	ld hl,0d900h		;1309	21 00 d9 	! . . 
	in a,(0d7h)		;130c	db d7 	. . 
	push de			;130e	d5 	. 
	ret p			;130f	f0 	. 
	ret m			;1310	f8 	. 
	ld c,003h		;1311	0e 03 	. . 
	call nc,0d8d6h		;1313	d4 d6 d8 	. . . 
	jp c,0f1d4h		;1316	da d4 f1 	. . . 
	ld sp,hl			;1319	f9 	. 
	ld hl,0d523h		;131a	21 23 d5 	! # . 
	rst 10h			;131d	d7 	. 
	exx			;131e	d9 	. 
	in a,(0d5h)		;131f	db d5 	. . 
	jp p,020fah		;1321	f2 fa 20 	. .   
	ld (0dad8h),hl		;1324	22 d8 da 	" . . 
	sub 0d4h		;1327	d6 d4 	. . 
	ret c			;1329	d8 	. 
l132ah:
	di			;132a	f3 	. 
	ei			;132b	fb 	. 
	ld hl,0d900h		;132c	21 00 d9 	! . . 
	in a,(0d7h)		;132f	db d7 	. . 
	push de			;1331	d5 	. 
	exx			;1332	d9 	. 
	ld (bc),a			;1333	02 	. 
	ld bc,l1e1ch		;1334	01 1c 1e 	. . . 
	ld (bc),a			;1337	02 	. 
	ld bc,l1f1dh		;1338	01 1d 1f 	. . . 
	inc b			;133b	04 	. 
	ld bc,0d2d0h		;133c	01 d0 d2 	. . . 
	pop de			;133f	d1 	. 
	out (004h),a		;1340	d3 04 	. . 
	ld bc,0dfddh		;1342	01 dd df 	. . . 
	call c,l07deh		;1345	dc de 07 	. . . 
	inc b			;1348	04 	. 
	ld a,d			;1349	7a 	z 
	ld a,d			;134a	7a 	z 
	sub d			;134b	92 	. 
	ld a,d			;134c	7a 	z 
	ld a,d			;134d	7a 	z 
	ld a,d			;134e	7a 	z 
	inc a			;134f	3c 	< 
	ld a,d			;1350	7a 	z 
	ld a,d			;1351	7a 	z 
	sub e			;1352	93 	. 
	ld a,d			;1353	7a 	z 
	ld a,d			;1354	7a 	z 
	sub b			;1355	90 	. 
	add a,h			;1356	84 	. 
	inc d			;1357	14 	. 
	ld a,l			;1358	7d 	} 
	ld a,a			;1359	7f 	 
	adc a,h			;135a	8c 	. 
	adc a,(hl)			;135b	8e 	. 
	adc a,l			;135c	8d 	. 
	adc a,a			;135d	8f 	. 
	add hl,hl			;135e	29 	) 
	add hl,hl			;135f	29 	) 
	add hl,hl			;1360	29 	) 
	add hl,hl			;1361	29 	) 
	add hl,hl			;1362	29 	) 
	add hl,hl			;1363	29 	) 
	add hl,hl			;1364	29 	) 
	rlca			;1365	07 	. 
	inc b			;1366	04 	. 
	add hl,hl			;1367	29 	) 
	add hl,hl			;1368	29 	) 
	add hl,hl			;1369	29 	) 
	add hl,hl			;136a	29 	) 
	add hl,hl			;136b	29 	) 
	add hl,hl			;136c	29 	) 
	add hl,hl			;136d	29 	) 
	xor c			;136e	a9 	. 
	xor e			;136f	ab 	. 
	xor b			;1370	a8 	. 
	xor d			;1371	aa 	. 
	and l			;1372	a5 	. 
	and a			;1373	a7 	. 
	and (hl)			;1374	a6 	. 
	ld a,d			;1375	7a 	z 
	ld a,d			;1376	7a 	z 
	ld a,d			;1377	7a 	z 
	ld a,d			;1378	7a 	z 
	ld a,d			;1379	7a 	z 
	xor h			;137a	ac 	. 
	and e			;137b	a3 	. 
	ld a,d			;137c	7a 	z 
	ld a,d			;137d	7a 	z 
	ld a,d			;137e	7a 	z 
	ld a,d			;137f	7a 	z 
	ld a,d			;1380	7a 	z 
	ld a,d			;1381	7a 	z 
	and h			;1382	a4 	. 
	ld (bc),a			;1383	02 	. 
	ld b,040h		;1384	06 40 	. @ 
	ld b,d			;1386	42 	B 
	ld b,c			;1387	41 	A 
	ld b,e			;1388	43 	C 
	ld b,h			;1389	44 	D 
	ld b,(hl)			;138a	46 	F 
	ld b,l			;138b	45 	E 
	ld b,a			;138c	47 	G 
	ld c,b			;138d	48 	H 
	ld c,d			;138e	4a 	J 
	ld c,c			;138f	49 	I 
	ld c,e			;1390	4b 	K 
	jr l139dh		;1391	18 0a 	. . 
	ld de,05813h		;1393	11 13 58 	. . X 
	ld e,d			;1396	5a 	Z 
	ld e,c			;1397	59 	Y 
	ld e,b			;1398	58 	X 
	inc c			;1399	0c 	. 
	ld c,00dh		;139a	0e 0d 	. . 
	rrca			;139c	0f 	. 
l139dh:
	djnz l13b1h		;139d	10 12 	. . 
	ld de,05813h		;139f	11 13 58 	. . X 
	ld e,d			;13a2	5a 	Z 
	ld e,h			;13a3	5c 	\ 
	ld e,(hl)			;13a4	5e 	^ 
	push bc			;13a5	c5 	. 
	ld e,a			;13a6	5f 	_ 
	dec c			;13a7	0d 	. 
	rrca			;13a8	0f 	. 
	djnz l13bdh		;13a9	10 12 	. . 
	ld d,016h		;13ab	16 16 	. . 
	ld d,016h		;13ad	16 16 	. . 
	ld d,016h		;13af	16 16 	. . 
l13b1h:
	ld d,016h		;13b1	16 16 	. . 
	ld d,016h		;13b3	16 16 	. . 
	ld d,016h		;13b5	16 16 	. . 
	ld d,016h		;13b7	16 16 	. . 
	ld d,016h		;13b9	16 16 	. . 
	ld h,b			;13bb	60 	` 
	ld h,d			;13bc	62 	b 
l13bdh:
	ld d,016h		;13bd	16 16 	. . 
	ld d,016h		;13bf	16 16 	. . 
	ld d,016h		;13c1	16 16 	. . 
	ld d,016h		;13c3	16 16 	. . 
	ld d,016h		;13c5	16 16 	. . 
	ld d,016h		;13c7	16 16 	. . 
	ld d,016h		;13c9	16 16 	. . 
	ld d,016h		;13cb	16 16 	. . 
	ld d,016h		;13cd	16 16 	. . 
	jr nz,l13f3h		;13cf	20 22 	  " 
	ld d,016h		;13d1	16 16 	. . 
	ld h,c			;13d3	61 	a 
	ld h,e			;13d4	63 	c 
	ld d,016h		;13d5	16 16 	. . 
	ld d,016h		;13d7	16 16 	. . 
	ld d,016h		;13d9	16 16 	. . 
	ld d,024h		;13db	16 24 	. $ 
	ld h,016h		;13dd	26 16 	& . 
	ld d,016h		;13df	16 16 	. . 
	ld d,016h		;13e1	16 16 	. . 
	ld d,016h		;13e3	16 16 	. . 
	ld d,016h		;13e5	16 16 	. . 
	ld hl,01623h		;13e7	21 23 16 	! # . 
	ld d,064h		;13ea	16 64 	. d 
	rla			;13ec	17 	. 
	ld d,016h		;13ed	16 16 	. . 
	ld d,016h		;13ef	16 16 	. . 
	ld d,016h		;13f1	16 16 	. . 
l13f3h:
	ld d,025h		;13f3	16 25 	. % 
	daa			;13f5	27 	' 
	ld d,016h		;13f6	16 16 	. . 
	ld d,016h		;13f8	16 16 	. . 
	ld d,016h		;13fa	16 16 	. . 
	ld d,016h		;13fc	16 16 	. . 
	ld d,016h		;13fe	16 16 	. . 
	ld d,016h		;1400	16 16 	. . 
	ld d,015h		;1402	16 15 	. . 
	inc d			;1404	14 	. 
	ld d,016h		;1405	16 16 	. . 
	ld d,016h		;1407	16 16 	. . 
	ld d,016h		;1409	16 16 	. . 
	ld d,016h		;140b	16 16 	. . 
	ld d,016h		;140d	16 16 	. . 
	ld d,016h		;140f	16 16 	. . 
	ld d,016h		;1411	16 16 	. . 
	ld d,024h		;1413	16 24 	. $ 
	ld h,016h		;1415	26 16 	& . 
	ld d,016h		;1417	16 16 	. . 
	ld d,016h		;1419	16 16 	. . 
l141bh:
	ld h,b			;141b	60 	` 
	ld h,d			;141c	62 	b 
	ld d,016h		;141d	16 16 	. . 
	ld d,016h		;141f	16 16 	. . 
	ld d,016h		;1421	16 16 	. . 
	ld d,016h		;1423	16 16 	. . 
	ld d,016h		;1425	16 16 	. . 
	ld d,020h		;1427	16 20 	.   
	ld (01616h),hl		;1429	22 16 16 	" . . 
	dec h			;142c	25 	% 
	daa			;142d	27 	' 
	ld d,016h		;142e	16 16 	. . 
	ld d,016h		;1430	16 16 	. . 
	ld d,061h		;1432	16 61 	. a 
	ld h,e			;1434	63 	c 
	ld d,016h		;1435	16 16 	. . 
	ld d,016h		;1437	16 16 	. . 
	ld d,016h		;1439	16 16 	. . 
	ld d,016h		;143b	16 16 	. . 
	ld d,016h		;143d	16 16 	. . 
	ld d,021h		;143f	16 21 	. ! 
	inc hl			;1441	23 	# 
	ld d,016h		;1442	16 16 	. . 
	ld d,016h		;1444	16 16 	. . 
	ld d,016h		;1446	16 16 	. . 
	ld d,016h		;1448	16 16 	. . 
	ld d,064h		;144a	16 64 	. d 
	rla			;144c	17 	. 
	ld d,016h		;144d	16 16 	. . 
	ld d,016h		;144f	16 16 	. . 
	ld d,016h		;1451	16 16 	. . 
	ld d,016h		;1453	16 16 	. . 
	ld d,016h		;1455	16 16 	. . 
	ld d,016h		;1457	16 16 	. . 
	ld d,016h		;1459	16 16 	. . 
	ld d,016h		;145b	16 16 	. . 
	ld d,016h		;145d	16 16 	. . 
	ld d,016h		;145f	16 16 	. . 
	ld d,016h		;1461	16 16 	. . 
	dec d			;1463	15 	. 
	inc d			;1464	14 	. 
	ld d,016h		;1465	16 16 	. . 
	ld d,016h		;1467	16 16 	. . 
	ld d,016h		;1469	16 16 	. . 
	dec b			;146b	05 	. 
	rlca			;146c	07 	. 
	ex af,af'			;146d	08 	. 
	ld a,(bc)			;146e	0a 	. 
	add hl,bc			;146f	09 	. 
	dec bc			;1470	0b 	. 
	nop			;1471	00 	. 
	ld (bc),a			;1472	02 	. 
	ld bc,00403h		;1473	01 03 04 	. . . 
	ld b,005h		;1476	06 05 	. . 
	rlca			;1478	07 	. 
	ex af,af'			;1479	08 	. 
	ld a,(bc)			;147a	0a 	. 
	jr nc,l14afh		;147b	30 32 	0 2 
	ret nz			;147d	c0 	. 
	ld e,l			;147e	5d 	] 
	ld bc,00403h		;147f	01 03 04 	. . . 
	ld b,00bh		;1482	06 0b 	. . 
	ex af,af'			;1484	08 	. 
	ld d,01ah		;1485	16 1a 	. . 
	jr z,l14b3h		;1487	28 2a 	( * 
	ld d,016h		;1489	16 16 	. . 
	ld d,016h		;148b	16 16 	. . 
	ld d,016h		;148d	16 16 	. . 
	call nc,sub_1b19h		;148f	d4 19 1b 	. . . 
	add hl,hl			;1492	29 	) 
	dec hl			;1493	2b 	+ 
	ld d,016h		;1494	16 16 	. . 
	ld d,016h		;1496	16 16 	. . 
	ld d,016h		;1498	16 16 	. . 
	push de			;149a	d5 	. 
	inc e			;149b	1c 	. 
	ld e,02ch		;149c	1e 2c 	. , 
	ld l,058h		;149e	2e 58 	. X 
	ld e,b			;14a0	58 	X 
	ld e,b			;14a1	58 	X 
	ld e,b			;14a2	58 	X 
	ld e,d			;14a3	5a 	Z 
	ld e,h			;14a4	5c 	\ 
	sub 016h		;14a5	d6 16 	. . 
	rra			;14a7	1f 	. 
	dec l			;14a8	2d 	- 
	cpl			;14a9	2f 	/ 
	ld e,c			;14aa	59 	Y 
	ld e,c			;14ab	59 	Y 
	ld e,c			;14ac	59 	Y 
	ld e,c			;14ad	59 	Y 
	ld e,e			;14ae	5b 	[ 
l14afh:
	ld e,l			;14af	5d 	] 
	rst 10h			;14b0	d7 	. 
	jr nz,l14d5h		;14b1	20 22 	  " 
l14b3h:
	jr nc,l14e7h		;14b3	30 32 	0 2 
	ld d,016h		;14b5	16 16 	. . 
	ld d,016h		;14b7	16 16 	. . 
	ld d,016h		;14b9	16 16 	. . 
	call nc,sub_2321h		;14bb	d4 21 23 	. ! # 
	ld sp,01633h		;14be	31 33 16 	1 3 . 
	ld d,016h		;14c1	16 16 	. . 
	ld d,016h		;14c3	16 16 	. . 
	ld d,0d5h		;14c5	16 d5 	. . 
	ld d,026h		;14c7	16 26 	. & 
	inc (hl)			;14c9	34 	4 
	ld (hl),016h		;14ca	36 16 	6 . 
	ld d,016h		;14cc	16 16 	. . 
	ld d,016h		;14ce	16 16 	. . 
	ld d,0d4h		;14d0	16 d4 	. . 
	ld d,016h		;14d2	16 16 	. . 
	dec (hl)			;14d4	35 	5 
l14d5h:
	scf			;14d5	37 	7 
	ld d,016h		;14d6	16 16 	. . 
	ld d,016h		;14d8	16 16 	. . 
	ld d,016h		;14da	16 16 	. . 
	push de			;14dc	d5 	. 
	inc bc			;14dd	03 	. 
	ld (bc),a			;14de	02 	. 
	ret c			;14df	d8 	. 
	ret nz			;14e0	c0 	. 
	jp nz,042d4h		;14e1	c2 d4 42 	. . B 
	ld c,b			;14e4	48 	H 
	cp 008h		;14e5	fe 08 	. . 
l14e7h:
	sbc a,l			;14e7	9d 	. 
	sbc a,l			;14e8	9d 	. 
	sbc a,(hl)			;14e9	9e 	. 
	sbc a,h			;14ea	9c 	. 
	sbc a,l			;14eb	9d 	. 
	sbc a,l			;14ec	9d 	. 
	sbc a,(hl)			;14ed	9e 	. 
	sbc a,h			;14ee	9c 	. 
	sbc a,l			;14ef	9d 	. 
	sbc a,l			;14f0	9d 	. 
	sbc a,(hl)			;14f1	9e 	. 
	sbc a,h			;14f2	9c 	. 
	sbc a,l			;14f3	9d 	. 
	sbc a,l			;14f4	9d 	. 
	sbc a,(hl)			;14f5	9e 	. 
	sbc a,h			;14f6	9c 	. 
	sbc a,l			;14f7	9d 	. 
	sbc a,l			;14f8	9d 	. 
	sbc a,(hl)			;14f9	9e 	. 
	sbc a,h			;14fa	9c 	. 
	sbc a,l			;14fb	9d 	. 
	sbc a,l			;14fc	9d 	. 
	sbc a,(hl)			;14fd	9e 	. 
	sbc a,h			;14fe	9c 	. 
	sbc a,l			;14ff	9d 	. 
	sbc a,l			;1500	9d 	. 
	sbc a,(hl)			;1501	9e 	. 
	sbc a,h			;1502	9c 	. 
	sbc a,l			;1503	9d 	. 
	sbc a,l			;1504	9d 	. 
	sbc a,(hl)			;1505	9e 	. 
	sbc a,h			;1506	9c 	. 
	sbc a,(hl)			;1507	9e 	. 
	sbc a,h			;1508	9c 	. 
	sbc a,l			;1509	9d 	. 
	sbc a,l			;150a	9d 	. 
	sbc a,(hl)			;150b	9e 	. 
	sbc a,h			;150c	9c 	. 
	sbc a,l			;150d	9d 	. 
	sbc a,l			;150e	9d 	. 
	sbc a,(hl)			;150f	9e 	. 
	sbc a,h			;1510	9c 	. 
	sbc a,l			;1511	9d 	. 
	sbc a,l			;1512	9d 	. 
	sbc a,(hl)			;1513	9e 	. 
	sbc a,h			;1514	9c 	. 
	sbc a,l			;1515	9d 	. 
	sbc a,l			;1516	9d 	. 
	sbc a,(hl)			;1517	9e 	. 
	sbc a,h			;1518	9c 	. 
	sbc a,l			;1519	9d 	. 
	sbc a,l			;151a	9d 	. 
	sbc a,(hl)			;151b	9e 	. 
	sbc a,h			;151c	9c 	. 
	sbc a,l			;151d	9d 	. 
	sbc a,l			;151e	9d 	. 
	sbc a,(hl)			;151f	9e 	. 
	sbc a,h			;1520	9c 	. 
	sbc a,l			;1521	9d 	. 
	sbc a,l			;1522	9d 	. 
	sbc a,(hl)			;1523	9e 	. 
	sbc a,h			;1524	9c 	. 
	sbc a,l			;1525	9d 	. 
	sbc a,l			;1526	9d 	. 
	ld (bc),a			;1527	02 	. 
	ex af,af'			;1528	08 	. 
	jp z,0c9cah		;1529	ca ca c9 	. . . 
	ret z			;152c	c8 	. 
	jp z,0c9cah		;152d	ca ca c9 	. . . 
	ret z			;1530	c8 	. 
	jp z,0c9cah		;1531	ca ca c9 	. . . 
	ret z			;1534	c8 	. 
	jp z,0c9cah		;1535	ca ca c9 	. . . 
	ret z			;1538	c8 	. 
	jp z,0c9cah		;1539	ca ca c9 	. . . 
	ret z			;153c	c8 	. 
	jp z,0c9cah		;153d	ca ca c9 	. . . 
	ret z			;1540	c8 	. 
	jp z,0c9cah		;1541	ca ca c9 	. . . 
	ret z			;1544	c8 	. 
	jp z,0c9cah		;1545	ca ca c9 	. . . 
	ret z			;1548	c8 	. 
	ret			;1549	c9 	. 
	ret z			;154a	c8 	. 
	jp z,0c9cah		;154b	ca ca c9 	. . . 
	ret z			;154e	c8 	. 
	jp z,0c9cah		;154f	ca ca c9 	. . . 
	ret z			;1552	c8 	. 
	jp z,0c9cah		;1553	ca ca c9 	. . . 
	ret z			;1556	c8 	. 
	jp z,0c9cah		;1557	ca ca c9 	. . . 
	ret z			;155a	c8 	. 
	jp z,0c9cah		;155b	ca ca c9 	. . . 
	ret z			;155e	c8 	. 
	jp z,0c9cah		;155f	ca ca c9 	. . . 
	ret z			;1562	c8 	. 
	jp z,0c9cah		;1563	ca ca c9 	. . . 
	ret z			;1566	c8 	. 
	jp z,00ecah		;1567	ca ca 0e 	. . . 
	ld b,017h		;156a	06 17 	. . 
	ld e,b			;156c	58 	X 
	ld e,c			;156d	59 	Y 
	ld e,b			;156e	58 	X 
	ld e,c			;156f	59 	Y 
	ld e,b			;1570	58 	X 
	ld e,c			;1571	59 	Y 
	ld e,b			;1572	58 	X 
	ld e,c			;1573	59 	Y 
	ld e,b			;1574	58 	X 
	ld e,c			;1575	59 	Y 
	ld e,b			;1576	58 	X 
	ld e,c			;1577	59 	Y 
	ld e,b			;1578	58 	X 
	ld d,b			;1579	50 	P 
	ld d,d			;157a	52 	R 
	ld c,b			;157b	48 	H 
	ld c,d			;157c	4a 	J 
	ld (hl),b			;157d	70 	p 
	ld (hl),d			;157e	72 	r 
	ld e,d			;157f	5a 	Z 
	ld (hl),d			;1580	72 	r 
	ld e,d			;1581	5a 	Z 
	ld (hl),d			;1582	72 	r 
	ld e,d			;1583	5a 	Z 
	ld (hl),d			;1584	72 	r 
	ld e,d			;1585	5a 	Z 
	ld l,d			;1586	6a 	j 
	ld d,c			;1587	51 	Q 
	ld d,e			;1588	53 	S 
	ld c,c			;1589	49 	I 
	ld c,e			;158a	4b 	K 
	ld (hl),c			;158b	71 	q 
	ld (hl),e			;158c	73 	s 
	ld (hl),e			;158d	73 	s 
	ld (hl),e			;158e	73 	s 
	ld (hl),e			;158f	73 	s 
	ld (hl),e			;1590	73 	s 
	ld (hl),e			;1591	73 	s 
	ld (hl),e			;1592	73 	s 
	ld (hl),e			;1593	73 	s 
	ld l,e			;1594	6b 	k 
	ld d,h			;1595	54 	T 
	ld d,(hl)			;1596	56 	V 
	ld c,h			;1597	4c 	L 
	ld c,(hl)			;1598	4e 	N 
	ld (hl),h			;1599	74 	t 
	halt			;159a	76 	v 
	halt			;159b	76 	v 
	halt			;159c	76 	v 
	halt			;159d	76 	v 
	halt			;159e	76 	v 
	halt			;159f	76 	v 
	halt			;15a0	76 	v 
	halt			;15a1	76 	v 
	ld l,(hl)			;15a2	6e 	n 
	ld d,l			;15a3	55 	U 
	ld d,a			;15a4	57 	W 
	ld c,l			;15a5	4d 	M 
	ld c,a			;15a6	4f 	O 
	ld (hl),l			;15a7	75 	u 
	ld (hl),a			;15a8	77 	w 
	ld e,e			;15a9	5b 	[ 
	ld (hl),a			;15aa	77 	w 
	ld e,e			;15ab	5b 	[ 
	ld (hl),a			;15ac	77 	w 
	ld e,e			;15ad	5b 	[ 
	ld (hl),a			;15ae	77 	w 
	ld e,e			;15af	5b 	[ 
	ld l,a			;15b0	6f 	o 
	rla			;15b1	17 	. 
	ld e,c			;15b2	59 	Y 
	ld e,b			;15b3	58 	X 
	ld e,c			;15b4	59 	Y 
	ld e,b			;15b5	58 	X 
	ld e,c			;15b6	59 	Y 
	ld e,b			;15b7	58 	X 
	ld e,c			;15b8	59 	Y 
	ld e,b			;15b9	58 	X 
	ld e,c			;15ba	59 	Y 
	ld e,b			;15bb	58 	X 
	ld e,c			;15bc	59 	Y 
	ld e,b			;15bd	58 	X 
	ld e,c			;15be	59 	Y 
	inc b			;15bf	04 	. 
	inc b			;15c0	04 	. 
	ld b,b			;15c1	40 	@ 
	ld b,d			;15c2	42 	B 
	ld b,d			;15c3	42 	B 
	ld e,(hl)			;15c4	5e 	^ 
	ld b,c			;15c5	41 	A 
	ld b,e			;15c6	43 	C 
	ld e,l			;15c7	5d 	] 
	ld e,a			;15c8	5f 	_ 
	ld b,h			;15c9	44 	D 
	ld b,(hl)			;15ca	46 	F 
	ld h,b			;15cb	60 	` 
	ld h,d			;15cc	62 	b 
	ld b,l			;15cd	45 	E 
	ld b,a			;15ce	47 	G 
	ld b,a			;15cf	47 	G 
	ld h,e			;15d0	63 	c 
	ld a,(bc)			;15d1	0a 	. 
	ld b,017h		;15d2	06 17 	. . 
	ld e,b			;15d4	58 	X 
	ld e,c			;15d5	59 	Y 
	ld e,b			;15d6	58 	X 
	ld e,c			;15d7	59 	Y 
	ld e,b			;15d8	58 	X 
	ld e,c			;15d9	59 	Y 
	ld e,b			;15da	58 	X 
	ld e,c			;15db	59 	Y 
	ld e,b			;15dc	58 	X 
	ld d,b			;15dd	50 	P 
	ld d,d			;15de	52 	R 
	ld c,b			;15df	48 	H 
	ld c,d			;15e0	4a 	J 
	ld (hl),b			;15e1	70 	p 
	ld (hl),d			;15e2	72 	r 
	ld e,d			;15e3	5a 	Z 
	ld (hl),d			;15e4	72 	r 
	ld e,d			;15e5	5a 	Z 
	ld l,d			;15e6	6a 	j 
	ld d,c			;15e7	51 	Q 
	ld d,e			;15e8	53 	S 
	ld c,c			;15e9	49 	I 
	ld c,e			;15ea	4b 	K 
	ld (hl),c			;15eb	71 	q 
	ld (hl),e			;15ec	73 	s 
	ld (hl),e			;15ed	73 	s 
	ld (hl),e			;15ee	73 	s 
	ld (hl),e			;15ef	73 	s 
	ld l,e			;15f0	6b 	k 
	ld d,h			;15f1	54 	T 
	ld d,(hl)			;15f2	56 	V 
	ld c,h			;15f3	4c 	L 
	ld c,(hl)			;15f4	4e 	N 
	ld (hl),h			;15f5	74 	t 
	halt			;15f6	76 	v 
	halt			;15f7	76 	v 
	halt			;15f8	76 	v 
	halt			;15f9	76 	v 
	ld l,(hl)			;15fa	6e 	n 
	ld d,l			;15fb	55 	U 
	ld d,a			;15fc	57 	W 
	ld c,l			;15fd	4d 	M 
	ld c,a			;15fe	4f 	O 
	ld (hl),l			;15ff	75 	u 
	ld (hl),a			;1600	77 	w 
	ld e,e			;1601	5b 	[ 
	ld (hl),a			;1602	77 	w 
	ld e,e			;1603	5b 	[ 
l1604h:
	ld l,a			;1604	6f 	o 
l1605h:
	rla			;1605	17 	. 
	ld e,c			;1606	59 	Y 
	ld e,b			;1607	58 	X 
	ld e,c			;1608	59 	Y 
	ld e,b			;1609	58 	X 
	ld e,c			;160a	59 	Y 
	ld e,b			;160b	58 	X 
	ld e,c			;160c	59 	Y 
	ld e,b			;160d	58 	X 
	ld e,c			;160e	59 	Y 
	ld a,(bc)			;160f	0a 	. 
	inc b			;1610	04 	. 
	ret p			;1611	f0 	. 
	ret m			;1612	f8 	. 
	ld c,003h		;1613	0e 03 	. . 
	call nc,0d8d6h		;1615	d4 d6 d8 	. . . 
	jp c,0d6d4h		;1618	da d4 d6 	. . . 
	pop af			;161b	f1 	. 
	ld sp,hl			;161c	f9 	. 
	ld hl,0d523h		;161d	21 23 d5 	! # . 
	rst 10h			;1620	d7 	. 
	exx			;1621	d9 	. 
	in a,(0d5h)		;1622	db d5 	. . 
	rst 10h			;1624	d7 	. 
l1625h:
	jp p,020fah		;1625	f2 fa 20 	. .   
	ld (0dad8h),hl		;1628	22 d8 da 	" . . 
	call nc,0d8d6h		;162b	d4 d6 d8 	. . . 
	jp c,0fbf3h		;162e	da f3 fb 	. . . 
	ld hl,0d900h		;1631	21 00 d9 	! . . 
	in a,(0d5h)		;1634	db d5 	. . 
	rst 10h			;1636	d7 	. 
	exx			;1637	d9 	. 
	in a,(00ah)		;1638	db 0a 	. . 
	inc b			;163a	04 	. 
	call p,sub_20fch		;163b	f4 fc 20 	. .   
	dec bc			;163e	0b 	. 
	call nc,0d8d6h		;163f	d4 d6 d8 	. . . 
	jp c,0d6d4h		;1642	da d4 d6 	. . . 
	push af			;1645	f5 	. 
	ld iy,0d523h		;1646	fd 21 23 d5 	. ! # . 
	rst 10h			;164a	d7 	. 
	exx			;164b	d9 	. 
	in a,(0d5h)		;164c	db d5 	. . 
	rst 10h			;164e	d7 	. 
	or 0feh		;164f	f6 fe 	. . 
	jr nz,l1675h		;1651	20 22 	  " 
	ret c			;1653	d8 	. 
	jp c,0d6d4h		;1654	da d4 d6 	. . . 
	ret c			;1657	d8 	. 
	jp c,0fff7h		;1658	da f7 ff 	. . . 
	rrca			;165b	0f 	. 
	ld a,(bc)			;165c	0a 	. 
	exx			;165d	d9 	. 
	in a,(0d5h)		;165e	db d5 	. . 
	rst 10h			;1660	d7 	. 
	exx			;1661	d9 	. 
	in a,(009h)		;1662	db 09 	. . 
	inc c			;1664	0c 	. 
	call p,sub_20fch		;1665	f4 fc 20 	. .   
	dec bc			;1668	0b 	. 
	call nc,0d8d6h		;1669	d4 d6 d8 	. . . 
	jp c,0f5d4h		;166c	da d4 f5 	. . . 
	ld iy,0d523h		;166f	fd 21 23 d5 	. ! # . 
	rst 10h			;1673	d7 	. 
	exx			;1674	d9 	. 
l1675h:
	in a,(0d5h)		;1675	db d5 	. . 
	or 0feh		;1677	f6 fe 	. . 
	jr nz,$+36		;1679	20 22 	  " 
	ret c			;167b	d8 	. 
	jp c,0d6d4h		;167c	da d4 d6 	. . . 
	ret c			;167f	d8 	. 
	rst 30h			;1680	f7 	. 
	rst 38h			;1681	ff 	. 
	rrca			;1682	0f 	. 
	ld a,(bc)			;1683	0a 	. 
	exx			;1684	d9 	. 
	in a,(0d5h)		;1685	db d5 	. . 
	rst 10h			;1687	d7 	. 
	exx			;1688	d9 	. 
	add hl,hl			;1689	29 	) 
	call p,sub_20fch		;168a	f4 fc 20 	. .   
	dec bc			;168d	0b 	. 
	call nc,0d8d6h		;168e	d4 d6 d8 	. . . 
	jp c,0f529h		;1691	da 29 f5 	. ) . 
	ld iy,0d523h		;1694	fd 21 23 d5 	. ! # . 
	rst 10h			;1698	d7 	. 
	exx			;1699	d9 	. 
	in a,(029h)		;169a	db 29 	. ) 
	or 0feh		;169c	f6 fe 	. . 
	jr nz,$+36		;169e	20 22 	  " 
	ret c			;16a0	d8 	. 
	jp c,0d6d4h		;16a1	da d4 d6 	. . . 
	add hl,hl			;16a4	29 	) 
	rst 30h			;16a5	f7 	. 
	rst 38h			;16a6	ff 	. 
	rrca			;16a7	0f 	. 
	ld a,(bc)			;16a8	0a 	. 
	exx			;16a9	d9 	. 
	in a,(0d5h)		;16aa	db d5 	. . 
	rst 10h			;16ac	d7 	. 
	add hl,hl			;16ad	29 	) 
	add hl,hl			;16ae	29 	) 
	call p,sub_20fch		;16af	f4 fc 20 	. .   
	dec bc			;16b2	0b 	. 
	call nc,0d8d6h		;16b3	d4 d6 d8 	. . . 
	add hl,hl			;16b6	29 	) 
	add hl,hl			;16b7	29 	) 
	push af			;16b8	f5 	. 
	ld iy,0d523h		;16b9	fd 21 23 d5 	. ! # . 
	rst 10h			;16bd	d7 	. 
	exx			;16be	d9 	. 
	add hl,hl			;16bf	29 	) 
	add hl,hl			;16c0	29 	) 
	or 0feh		;16c1	f6 fe 	. . 
	jr nz,l16e7h		;16c3	20 22 	  " 
	ret c			;16c5	d8 	. 
sub_16c6h:
	jp c,l29d4h		;16c6	da d4 29 	. . ) 
	add hl,hl			;16c9	29 	) 
	rst 30h			;16ca	f7 	. 
	rst 38h			;16cb	ff 	. 
	rrca			;16cc	0f 	. 
	ld a,(bc)			;16cd	0a 	. 
	exx			;16ce	d9 	. 
	in a,(0d5h)		;16cf	db d5 	. . 
	inc bc			;16d1	03 	. 
	ld (bc),a			;16d2	02 	. 
	push de			;16d3	d5 	. 
	ld b,e			;16d4	43 	C 
	ld c,l			;16d5	4d 	M 
	exx			;16d6	d9 	. 
	pop bc			;16d7	c1 	. 
	jp l0704h		;16d8	c3 04 07 	. . . 
	ld bc,00003h		;16db	01 03 00 	. . . 
	add hl,bc			;16de	09 	. 
	inc b			;16df	04 	. 
	jr $+26		;16e0	18 18 	. . 
	inc c			;16e2	0c 	. 
	dec b			;16e3	05 	. 
	jr $+26		;16e4	18 18 	. . 
	dec c			;16e6	0d 	. 
l16e7h:
	ex af,af'			;16e7	08 	. 
	jr l1702h		;16e8	18 18 	. . 
l16eah:
	djnz l1702h		;16ea	10 16 	. . 
	dec bc			;16ec	0b 	. 
	jr l1700h		;16ed	18 11 	. . 
	ld d,00eh		;16ef	16 0e 	. . 
	ld (bc),a			;16f1	02 	. 
	inc d			;16f2	14 	. 
	ld d,00fh		;16f3	16 0f 	. . 
	ld b,016h		;16f5	06 16 	. . 
	inc bc			;16f7	03 	. 
	dec b			;16f8	05 	. 
	ld d,015h		;16f9	16 15 	. . 
	ld h,l			;16fb	65 	e 
	rlca			;16fc	07 	. 
	jr l1765h		;16fd	18 66 	. f 
	ld a,(bc)			;16ff	0a 	. 
l1700h:
	jr l1769h		;1700	18 67 	. g 
l1702h:
	ld (de),a			;1702	12 	. 
	ld h,e			;1703	63 	c 
	ld l,b			;1704	68 	h 
	inc de			;1705	13 	. 
	ld h,h			;1706	64 	d 
	ld d,00ch		;1707	16 0c 	. . 
	djnz l16eah		;1709	10 df 	. . 
	and h			;170b	a4 	. 
	and (hl)			;170c	a6 	. 
	xor h			;170d	ac 	. 
	xor (hl)			;170e	ae 	. 
	and h			;170f	a4 	. 
	and (hl)			;1710	a6 	. 
	xor h			;1711	ac 	. 
	xor (hl)			;1712	ae 	. 
l1713h:
	ld d,b			;1713	50 	P 
	ld e,a			;1714	5f 	_ 
	rla			;1715	17 	. 
	rst 18h			;1716	df 	. 
	and l			;1717	a5 	. 
	and a			;1718	a7 	. 
	xor l			;1719	ad 	. 
	xor a			;171a	af 	. 
	and l			;171b	a5 	. 
	and a			;171c	a7 	. 
	xor l			;171d	ad 	. 
	xor (hl)			;171e	ae 	. 
	ld d,c			;171f	51 	Q 
	ld h,d			;1720	62 	b 
	rla			;1721	17 	. 
	rst 18h			;1722	df 	. 
	xor b			;1723	a8 	. 
	xor d			;1724	aa 	. 
	or b			;1725	b0 	. 
	or d			;1726	b2 	. 
	xor b			;1727	a8 	. 
	xor d			;1728	aa 	. 
	or b			;1729	b0 	. 
	or d			;172a	b2 	. 
	ld d,d			;172b	52 	R 
	rla			;172c	17 	. 
	ld h,d			;172d	62 	b 
	rst 18h			;172e	df 	. 
	xor c			;172f	a9 	. 
	xor e			;1730	ab 	. 
	or c			;1731	b1 	. 
	or e			;1732	b3 	. 
	xor c			;1733	a9 	. 
	xor e			;1734	ab 	. 
	or c			;1735	b1 	. 
	or e			;1736	b3 	. 
	ld d,e			;1737	53 	S 
	ld e,(hl)			;1738	5e 	^ 
	rla			;1739	17 	. 
	rst 18h			;173a	df 	. 
	and h			;173b	a4 	. 
	and (hl)			;173c	a6 	. 
	xor h			;173d	ac 	. 
	xor (hl)			;173e	ae 	. 
	and h			;173f	a4 	. 
	and (hl)			;1740	a6 	. 
	xor h			;1741	ac 	. 
	xor (hl)			;1742	ae 	. 
	ld d,b			;1743	50 	P 
	ld e,a			;1744	5f 	_ 
	rla			;1745	17 	. 
	rst 18h			;1746	df 	. 
	and l			;1747	a5 	. 
	and a			;1748	a7 	. 
	xor l			;1749	ad 	. 
	xor a			;174a	af 	. 
	and l			;174b	a5 	. 
	and a			;174c	a7 	. 
	xor l			;174d	ad 	. 
	xor (hl)			;174e	ae 	. 
	ld d,c			;174f	51 	Q 
	ld h,d			;1750	62 	b 
	rla			;1751	17 	. 
	rst 18h			;1752	df 	. 
	xor b			;1753	a8 	. 
	xor d			;1754	aa 	. 
	or b			;1755	b0 	. 
	or d			;1756	b2 	. 
	xor b			;1757	a8 	. 
	xor d			;1758	aa 	. 
	or b			;1759	b0 	. 
	or d			;175a	b2 	. 
	ld d,d			;175b	52 	R 
	rla			;175c	17 	. 
	ld h,d			;175d	62 	b 
	rst 18h			;175e	df 	. 
	xor c			;175f	a9 	. 
	xor e			;1760	ab 	. 
	or c			;1761	b1 	. 
	or e			;1762	b3 	. 
	xor c			;1763	a9 	. 
	xor e			;1764	ab 	. 
l1765h:
	or c			;1765	b1 	. 
	or e			;1766	b3 	. 
	ld d,e			;1767	53 	S 
	ld e,(hl)			;1768	5e 	^ 
l1769h:
	rla			;1769	17 	. 
	rst 18h			;176a	df 	. 
	and h			;176b	a4 	. 
	and (hl)			;176c	a6 	. 
	xor h			;176d	ac 	. 
	xor (hl)			;176e	ae 	. 
	and h			;176f	a4 	. 
	and (hl)			;1770	a6 	. 
	xor h			;1771	ac 	. 
	xor (hl)			;1772	ae 	. 
	ld d,b			;1773	50 	P 
	ld e,a			;1774	5f 	_ 
	rla			;1775	17 	. 
	rst 18h			;1776	df 	. 
	and l			;1777	a5 	. 
	and a			;1778	a7 	. 
	xor l			;1779	ad 	. 
	xor a			;177a	af 	. 
	and l			;177b	a5 	. 
	and a			;177c	a7 	. 
	xor l			;177d	ad 	. 
	xor (hl)			;177e	ae 	. 
	ld d,c			;177f	51 	Q 
l1780h:
	ld h,d			;1780	62 	b 
	rla			;1781	17 	. 
	rst 18h			;1782	df 	. 
	xor b			;1783	a8 	. 
	xor d			;1784	aa 	. 
	or b			;1785	b0 	. 
	or d			;1786	b2 	. 
	xor b			;1787	a8 	. 
	xor d			;1788	aa 	. 
	or b			;1789	b0 	. 
	or d			;178a	b2 	. 
	ld d,d			;178b	52 	R 
	rla			;178c	17 	. 
	ld h,d			;178d	62 	b 
	rst 18h			;178e	df 	. 
	xor c			;178f	a9 	. 
	xor e			;1790	ab 	. 
	or c			;1791	b1 	. 
	or e			;1792	b3 	. 
	ld b,l			;1793	45 	E 
	ld b,a			;1794	47 	G 
	ld b,h			;1795	44 	D 
	ld b,(hl)			;1796	46 	F 
	ld d,e			;1797	53 	S 
	ld e,(hl)			;1798	5e 	^ 
	rla			;1799	17 	. 
	rst 18h			;179a	df 	. 
	and h			;179b	a4 	. 
	and (hl)			;179c	a6 	. 
	inc a			;179d	3c 	< 
	ld b,b			;179e	40 	@ 
	ld d,016h		;179f	16 16 	. . 
	ld d,016h		;17a1	16 16 	. . 
	ld d,h			;17a3	54 	T 
	ld e,a			;17a4	5f 	_ 
	rla			;17a5	17 	. 
	rst 18h			;17a6	df 	. 
	and l			;17a7	a5 	. 
	inc h			;17a8	24 	$ 
	dec a			;17a9	3d 	= 
	ld b,c			;17aa	41 	A 
	ld d,016h		;17ab	16 16 	. . 
	ld d,016h		;17ad	16 16 	. . 
	ld d,h			;17af	54 	T 
	ld e,a			;17b0	5f 	_ 
	rla			;17b1	17 	. 
	rst 18h			;17b2	df 	. 
	ld c,d			;17b3	4a 	J 
	ld c,(hl)			;17b4	4e 	N 
	ld d,016h		;17b5	16 16 	. . 
	ld d,016h		;17b7	16 16 	. . 
	ld d,016h		;17b9	16 16 	. . 
	ld d,h			;17bb	54 	T 
	ld e,a			;17bc	5f 	_ 
	rla			;17bd	17 	. 
	rst 18h			;17be	df 	. 
	ld c,e			;17bf	4b 	K 
	ld c,a			;17c0	4f 	O 
	ld d,016h		;17c1	16 16 	. . 
	ld d,016h		;17c3	16 16 	. . 
	ld d,016h		;17c5	16 16 	. . 
	ld d,h			;17c7	54 	T 
	ld e,a			;17c8	5f 	_ 
	rla			;17c9	17 	. 
l17cah:
	ld (bc),a			;17ca	02 	. 
	ex af,af'			;17cb	08 	. 
	ret po			;17cc	e0 	. 
	jp po,0e3e1h		;17cd	e2 e1 e3 	. . . 
	call po,0e5e6h		;17d0	e4 e6 e5 	. . . 
	rst 20h			;17d3	e7 	. 
	ret pe			;17d4	e8 	. 
	jp pe,0ebe9h		;17d5	ea e9 eb 	. . . 
	call pe,0edeeh		;17d8	ec ee ed 	. . . 
	rst 28h			;17db	ef 	. 
	inc de			;17dc	13 	. 
	inc c			;17dd	0c 	. 
	ld l,h			;17de	6c 	l 
	ld l,l			;17df	6d 	m 
	dec h			;17e0	25 	% 
	daa			;17e1	27 	' 
	ld l,h			;17e2	6c 	l 
	ld l,l			;17e3	6d 	m 
	dec h			;17e4	25 	% 
	daa			;17e5	27 	' 
	ld l,h			;17e6	6c 	l 
	ld l,l			;17e7	6d 	m 
	dec h			;17e8	25 	% 
	daa			;17e9	27 	' 
	ld l,h			;17ea	6c 	l 
	ld l,l			;17eb	6d 	m 
	dec h			;17ec	25 	% 
	daa			;17ed	27 	' 
	ld l,h			;17ee	6c 	l 
	ld l,l			;17ef	6d 	m 
	sub 0adh		;17f0	d6 ad 	. . 
	xor a			;17f2	af 	. 
	and l			;17f3	a5 	. 
	and a			;17f4	a7 	. 
	xor l			;17f5	ad 	. 
	xor a			;17f6	af 	. 
	and l			;17f7	a5 	. 
	and a			;17f8	a7 	. 
	xor l			;17f9	ad 	. 
	xor a			;17fa	af 	. 
	and l			;17fb	a5 	. 
	and a			;17fc	a7 	. 
	xor l			;17fd	ad 	. 
	xor a			;17fe	af 	. 
	and l			;17ff	a5 	. 
	and a			;1800	a7 	. 
	xor l			;1801	ad 	. 
	xor a			;1802	af 	. 
	rst 10h			;1803	d7 	. 
	or b			;1804	b0 	. 
l1805h:
	or d			;1805	b2 	. 
	xor b			;1806	a8 	. 
	xor d			;1807	aa 	. 
	or b			;1808	b0 	. 
	or d			;1809	b2 	. 
	xor b			;180a	a8 	. 
	xor d			;180b	aa 	. 
l180ch:
	or b			;180c	b0 	. 
	or d			;180d	b2 	. 
	xor b			;180e	a8 	. 
	xor d			;180f	aa 	. 
	or b			;1810	b0 	. 
	or d			;1811	b2 	. 
	xor b			;1812	a8 	. 
	xor d			;1813	aa 	. 
	or b			;1814	b0 	. 
	or d			;1815	b2 	. 
	sub 0b1h		;1816	d6 b1 	. . 
	or e			;1818	b3 	. 
	xor c			;1819	a9 	. 
	xor e			;181a	ab 	. 
l181bh:
	or c			;181b	b1 	. 
	or e			;181c	b3 	. 
	xor c			;181d	a9 	. 
	xor e			;181e	ab 	. 
	ld (hl),b			;181f	70 	p 
	ld (hl),h			;1820	74 	t 
	xor c			;1821	a9 	. 
	xor e			;1822	ab 	. 
	or c			;1823	b1 	. 
	or e			;1824	b3 	. 
	xor c			;1825	a9 	. 
	xor e			;1826	ab 	. 
	or c			;1827	b1 	. 
	or e			;1828	b3 	. 
	rst 10h			;1829	d7 	. 
	xor h			;182a	ac 	. 
l182bh:
	xor (hl)			;182b	ae 	. 
	and h			;182c	a4 	. 
	and (hl)			;182d	a6 	. 
	xor h			;182e	ac 	. 
	xor (hl)			;182f	ae 	. 
	and h			;1830	a4 	. 
	and (hl)			;1831	a6 	. 
	ld (hl),c			;1832	71 	q 
	ld (hl),l			;1833	75 	u 
	and h			;1834	a4 	. 
	jr c,l1871h		;1835	38 3a 	8 : 
	dec sp			;1837	3b 	; 
	ld a,(l3a3bh)		;1838	3a 3b 3a 	: ; : 
	dec sp			;183b	3b 	; 
	sub 0adh		;183c	d6 ad 	. . 
	xor a			;183e	af 	. 
	and l			;183f	a5 	. 
	and a			;1840	a7 	. 
	xor l			;1841	ad 	. 
	xor a			;1842	af 	. 
	and l			;1843	a5 	. 
	and a			;1844	a7 	. 
	or h			;1845	b4 	. 
	or (hl)			;1846	b6 	. 
	and l			;1847	a5 	. 
	add hl,sp			;1848	39 	9 
	dec e			;1849	1d 	. 
	dec e			;184a	1d 	. 
	dec e			;184b	1d 	. 
	dec e			;184c	1d 	. 
	dec e			;184d	1d 	. 
	dec e			;184e	1d 	. 
	rst 10h			;184f	d7 	. 
	or b			;1850	b0 	. 
	or d			;1851	b2 	. 
	xor b			;1852	a8 	. 
	xor d			;1853	aa 	. 
	or b			;1854	b0 	. 
	or d			;1855	b2 	. 
	xor b			;1856	a8 	. 
	xor d			;1857	aa 	. 
	or b			;1858	b0 	. 
	or d			;1859	b2 	. 
	xor b			;185a	a8 	. 
	jr c,l187ah		;185b	38 1d 	8 . 
	dec e			;185d	1d 	. 
	dec e			;185e	1d 	. 
	dec e			;185f	1d 	. 
	dec e			;1860	1d 	. 
	dec e			;1861	1d 	. 
	sub 0b1h		;1862	d6 b1 	. . 
	or e			;1864	b3 	. 
	xor c			;1865	a9 	. 
	xor e			;1866	ab 	. 
	or c			;1867	b1 	. 
	or e			;1868	b3 	. 
	xor c			;1869	a9 	. 
	xor e			;186a	ab 	. 
	or c			;186b	b1 	. 
	or e			;186c	b3 	. 
	xor c			;186d	a9 	. 
	add hl,sp			;186e	39 	9 
	dec e			;186f	1d 	. 
	dec e			;1870	1d 	. 
l1871h:
	dec e			;1871	1d 	. 
	dec e			;1872	1d 	. 
	dec e			;1873	1d 	. 
	dec e			;1874	1d 	. 
	rst 10h			;1875	d7 	. 
	xor h			;1876	ac 	. 
	xor (hl)			;1877	ae 	. 
	and h			;1878	a4 	. 
	and (hl)			;1879	a6 	. 
l187ah:
	xor h			;187a	ac 	. 
	xor (hl)			;187b	ae 	. 
	and h			;187c	a4 	. 
	and (hl)			;187d	a6 	. 
	or l			;187e	b5 	. 
	or a			;187f	b7 	. 
	and h			;1880	a4 	. 
	jr c,l18a0h		;1881	38 1d 	8 . 
	dec e			;1883	1d 	. 
	dec e			;1884	1d 	. 
	dec e			;1885	1d 	. 
	dec e			;1886	1d 	. 
	dec e			;1887	1d 	. 
	sub 0adh		;1888	d6 ad 	. . 
	xor a			;188a	af 	. 
	and l			;188b	a5 	. 
	and a			;188c	a7 	. 
	xor l			;188d	ad 	. 
	xor a			;188e	af 	. 
	and l			;188f	a5 	. 
	and a			;1890	a7 	. 
	cp b			;1891	b8 	. 
	cp c			;1892	b9 	. 
	and l			;1893	a5 	. 
	add hl,sp			;1894	39 	9 
	ld a,(l3a3bh)		;1895	3a 3b 3a 	: ; : 
	dec sp			;1898	3b 	; 
	ld a,(0d73bh)		;1899	3a 3b d7 	: ; . 
	or b			;189c	b0 	. 
	or d			;189d	b2 	. 
	xor b			;189e	a8 	. 
	xor d			;189f	aa 	. 
l18a0h:
	or b			;18a0	b0 	. 
	or d			;18a1	b2 	. 
	xor b			;18a2	a8 	. 
	xor d			;18a3	aa 	. 
	ld a,b			;18a4	78 	x 
	and e			;18a5	a3 	. 
	xor b			;18a6	a8 	. 
	xor d			;18a7	aa 	. 
	or b			;18a8	b0 	. 
	or d			;18a9	b2 	. 
	xor b			;18aa	a8 	. 
	xor d			;18ab	aa 	. 
	or b			;18ac	b0 	. 
	or d			;18ad	b2 	. 
	sub 0b1h		;18ae	d6 b1 	. . 
	or e			;18b0	b3 	. 
	xor c			;18b1	a9 	. 
	xor e			;18b2	ab 	. 
	or c			;18b3	b1 	. 
	or e			;18b4	b3 	. 
	xor c			;18b5	a9 	. 
	xor e			;18b6	ab 	. 
	or c			;18b7	b1 	. 
	or e			;18b8	b3 	. 
	xor c			;18b9	a9 	. 
	xor e			;18ba	ab 	. 
	or c			;18bb	b1 	. 
	or e			;18bc	b3 	. 
	xor c			;18bd	a9 	. 
	xor e			;18be	ab 	. 
	or c			;18bf	b1 	. 
	or e			;18c0	b3 	. 
	rst 10h			;18c1	d7 	. 
	rlca			;18c2	07 	. 
	ld bc,06a4eh		;18c3	01 4e 6a 	. N j 
	ld l,(hl)			;18c6	6e 	n 
	ld (hl),e			;18c7	73 	s 
	rla			;18c8	17 	. 
	rla			;18c9	17 	. 
	ld c,h			;18ca	4c 	L 
	ld b,005h		;18cb	06 05 	. . 
	nop			;18cd	00 	. 
	ld (bc),a			;18ce	02 	. 
	ex af,af'			;18cf	08 	. 
	ld a,(bc)			;18d0	0a 	. 
	ld b,l			;18d1	45 	E 
	jr c,l18d5h		;18d2	38 01 	8 . 
	inc bc			;18d4	03 	. 
l18d5h:
	add hl,bc			;18d5	09 	. 
	dec bc			;18d6	0b 	. 
	ld c,h			;18d7	4c 	L 
	add hl,sp			;18d8	39 	9 
	inc b			;18d9	04 	. 
	ld b,00ch		;18da	06 0c 	. . 
	ld c,04dh		;18dc	0e 4d 	. M 
	ld a,(l0704h+1)		;18de	3a 05 07 	: . . 
	dec c			;18e1	0d 	. 
	rrca			;18e2	0f 	. 
	ld c,a			;18e3	4f 	O 
	dec sp			;18e4	3b 	; 
	ld b,b			;18e5	40 	@ 
	ld b,b			;18e6	40 	@ 
	inc l			;18e7	2c 	, 
	dec l			;18e8	2d 	- 
	ld l,040h		;18e9	2e 40 	. @ 
	ld (bc),a			;18eb	02 	. 
	ex af,af'			;18ec	08 	. 
	jr l1909h		;18ed	18 1a 	. . 
	add hl,de			;18ef	19 	. 
	dec de			;18f0	1b 	. 
	inc e			;18f1	1c 	. 
	ld e,01dh		;18f2	1e 1d 	. . 
	rra			;18f4	1f 	. 
	jr nz,$+36		;18f5	20 22 	  " 
	ld hl,02423h		;18f7	21 23 24 	! # $ 
	ld h,025h		;18fa	26 25 	& % 
	daa			;18fc	27 	' 
	inc b			;18fd	04 	. 
	ld (bc),a			;18fe	02 	. 
	ld b,b			;18ff	40 	@ 
	ld b,d			;1900	42 	B 
	ld d,b			;1901	50 	P 
	ld d,d			;1902	52 	R 
	ld b,c			;1903	41 	A 
	ld b,e			;1904	43 	C 
	ld d,c			;1905	51 	Q 
	ld d,e			;1906	53 	S 
	ld a,(bc)			;1907	0a 	. 
	ld (bc),a			;1908	02 	. 
l1909h:
	ld b,h			;1909	44 	D 
	ld b,(hl)			;190a	46 	F 
	ld d,h			;190b	54 	T 
	ld d,(hl)			;190c	56 	V 
	djnz l191fh		;190d	10 10 	. . 
	djnz l1921h		;190f	10 10 	. . 
	ld (de),a			;1911	12 	. 
	ld d,040h		;1912	16 40 	. @ 
	ld b,a			;1914	47 	G 
	ld d,l			;1915	55 	U 
	ld d,a			;1916	57 	W 
	ld de,l1111h		;1917	11 11 11 	. . . 
	ld de,l1713h		;191a	11 13 17 	. . . 
	inc b			;191d	04 	. 
	inc b			;191e	04 	. 
l191fh:
	ld c,b			;191f	48 	H 
	ld c,d			;1920	4a 	J 
l1921h:
	ld e,b			;1921	58 	X 
	ld e,d			;1922	5a 	Z 
	ld c,c			;1923	49 	I 
	ld c,e			;1924	4b 	K 
	ld e,c			;1925	59 	Y 
	ld e,e			;1926	5b 	[ 
	ld b,b			;1927	40 	@ 
	ld c,(hl)			;1928	4e 	N 
	ld e,h			;1929	5c 	\ 
	cpl			;192a	2f 	/ 
	ld b,b			;192b	40 	@ 
	ld b,b			;192c	40 	@ 
	inc d			;192d	14 	. 
	dec d			;192e	15 	. 
	ld (bc),a			;192f	02 	. 
	ex af,af'			;1930	08 	. 
	ret po			;1931	e0 	. 
	jp po,0e3e1h		;1932	e2 e1 e3 	. . . 
	call po,0e5e6h		;1935	e4 e6 e5 	. . . 
	rst 20h			;1938	e7 	. 
	ret pe			;1939	e8 	. 
	jp pe,0ebe9h		;193a	ea e9 eb 	. . . 
	call pe,0edeeh		;193d	ec ee ed 	. . . 
	rst 28h			;1940	ef 	. 
	ld b,004h		;1941	06 04 	. . 
	pop de			;1943	d1 	. 
	add a,0c8h		;1944	c6 c8 	. . 
	ret			;1946	c9 	. 
	call z,0deceh		;1947	cc ce de 	. . . 
	ld l,a			;194a	6f 	o 
	add a,c			;194b	81 	. 
	add a,e			;194c	83 	. 
	add a,b			;194d	80 	. 
	add a,d			;194e	82 	. 
	jp c,08472h		;194f	da 72 84 	. r . 
	add a,(hl)			;1952	86 	. 
	ld l,c			;1953	69 	i 
	ld a,h			;1954	7c 	| 
	in a,(073h)		;1955	db 73 	. s 
	add a,l			;1957	85 	. 
	add a,a			;1958	87 	. 
	ld l,d			;1959	6a 	j 
	ld a,l			;195a	7d 	} 
	ld b,004h		;195b	06 04 	. . 
	jp nc,08876h		;195d	d2 76 88 	. v . 
	adc a,d			;1960	8a 	. 
	ld l,e			;1961	6b 	k 
	ld a,(hl)			;1962	7e 	~ 
	out (077h),a		;1963	d3 77 	. w 
	adc a,c			;1965	89 	. 
	adc a,e			;1966	8b 	. 
	ld l,(hl)			;1967	6e 	n 
	ld a,a			;1968	7f 	 
	jp c,09892h		;1969	da 92 98 	. . . 
	sbc a,d			;196c	9a 	. 
	and b			;196d	a0 	. 
	and d			;196e	a2 	. 
	in a,(093h)		;196f	db 93 	. . 
	sbc a,c			;1971	99 	. 
	sbc a,e			;1972	9b 	. 
	and c			;1973	a1 	. 
	ld a,c			;1974	79 	y 
	jr l1981h		;1975	18 0a 	. . 
	ld de,05813h		;1977	11 13 58 	. . X 
	ld e,d			;197a	5a 	Z 
	ld e,c			;197b	59 	Y 
	ld e,b			;197c	58 	X 
	inc c			;197d	0c 	. 
	ld c,00dh		;197e	0e 0d 	. . 
	rrca			;1980	0f 	. 
l1981h:
	djnz l1995h		;1981	10 12 	. . 
	ld de,05813h		;1983	11 13 58 	. . X 
	ld e,d			;1986	5a 	Z 
	ld e,h			;1987	5c 	\ 
	ld e,(hl)			;1988	5e 	^ 
	push bc			;1989	c5 	. 
	ld e,a			;198a	5f 	_ 
	dec c			;198b	0d 	. 
	rrca			;198c	0f 	. 
	djnz l19a1h		;198d	10 12 	. . 
	ld d,016h		;198f	16 16 	. . 
	ld d,016h		;1991	16 16 	. . 
	ld d,016h		;1993	16 16 	. . 
l1995h:
	ld d,016h		;1995	16 16 	. . 
	ld d,016h		;1997	16 16 	. . 
	ld d,016h		;1999	16 16 	. . 
	ld d,016h		;199b	16 16 	. . 
	ld d,016h		;199d	16 16 	. . 
	ld h,b			;199f	60 	` 
	ld h,d			;19a0	62 	b 
l19a1h:
	ret nz			;19a1	c0 	. 
	jp nz,01616h		;19a2	c2 16 16 	. . . 
	ld d,016h		;19a5	16 16 	. . 
	ld d,016h		;19a7	16 16 	. . 
	ld d,016h		;19a9	16 16 	. . 
	ld d,016h		;19ab	16 16 	. . 
	ld d,016h		;19ad	16 16 	. . 
	ld d,016h		;19af	16 16 	. . 
	ld d,016h		;19b1	16 16 	. . 
	jr nz,$+36		;19b3	20 22 	  " 
	ld d,016h		;19b5	16 16 	. . 
	ld h,c			;19b7	61 	a 
	ld h,e			;19b8	63 	c 
	pop bc			;19b9	c1 	. 
	jp 01616h		;19ba	c3 16 16 	. . . 
	ld d,016h		;19bd	16 16 	. . 
	ld d,024h		;19bf	16 24 	. $ 
	ld h,016h		;19c1	26 16 	& . 
	ld d,016h		;19c3	16 16 	. . 
	ld d,016h		;19c5	16 16 	. . 
	ld d,016h		;19c7	16 16 	. . 
	ld d,016h		;19c9	16 16 	. . 
	ld hl,01623h		;19cb	21 23 16 	! # . 
	ld d,064h		;19ce	16 64 	. d 
	rla			;19d0	17 	. 
	call nz,sub_16c6h		;19d1	c4 c6 16 	. . . 
	ld d,016h		;19d4	16 16 	. . 
	ld d,016h		;19d6	16 16 	. . 
	dec h			;19d8	25 	% 
	daa			;19d9	27 	' 
	ld d,016h		;19da	16 16 	. . 
	ld d,016h		;19dc	16 16 	. . 
	ld d,016h		;19de	16 16 	. . 
	ld d,016h		;19e0	16 16 	. . 
	ld d,016h		;19e2	16 16 	. . 
	ld d,016h		;19e4	16 16 	. . 
	ld d,015h		;19e6	16 15 	. . 
	inc d			;19e8	14 	. 
	push bc			;19e9	c5 	. 
	rst 0			;19ea	c7 	. 
	ld d,016h		;19eb	16 16 	. . 
	ld d,016h		;19ed	16 16 	. . 
	ld d,016h		;19ef	16 16 	. . 
	ld d,016h		;19f1	16 16 	. . 
	ld d,016h		;19f3	16 16 	. . 
	ld d,016h		;19f5	16 16 	. . 
	ld d,024h		;19f7	16 24 	. $ 
	ld h,016h		;19f9	26 16 	& . 
	ld d,016h		;19fb	16 16 	. . 
	ld d,016h		;19fd	16 16 	. . 
	ld h,b			;19ff	60 	` 
	ld h,d			;1a00	62 	b 
	ret nz			;1a01	c0 	. 
	jp nz,01616h		;1a02	c2 16 16 	. . . 
	ld d,016h		;1a05	16 16 	. . 
	ld d,016h		;1a07	16 16 	. . 
	ld d,016h		;1a09	16 16 	. . 
	ld d,020h		;1a0b	16 20 	.   
	ld (01616h),hl		;1a0d	22 16 16 	" . . 
	dec h			;1a10	25 	% 
	daa			;1a11	27 	' 
	ld d,016h		;1a12	16 16 	. . 
	ld d,016h		;1a14	16 16 	. . 
	ld d,061h		;1a16	16 61 	. a 
	ld h,e			;1a18	63 	c 
	pop bc			;1a19	c1 	. 
	jp 01616h		;1a1a	c3 16 16 	. . . 
	ld d,016h		;1a1d	16 16 	. . 
	ld d,016h		;1a1f	16 16 	. . 
	ld d,016h		;1a21	16 16 	. . 
	ld d,021h		;1a23	16 21 	. ! 
	inc hl			;1a25	23 	# 
	ld d,016h		;1a26	16 16 	. . 
	ld d,016h		;1a28	16 16 	. . 
	ld d,016h		;1a2a	16 16 	. . 
	ld d,016h		;1a2c	16 16 	. . 
	ld d,064h		;1a2e	16 64 	. d 
	rla			;1a30	17 	. 
	call nz,sub_16c6h		;1a31	c4 c6 16 	. . . 
	ld d,016h		;1a34	16 16 	. . 
	ld d,016h		;1a36	16 16 	. . 
	ld d,016h		;1a38	16 16 	. . 
	ld d,016h		;1a3a	16 16 	. . 
	ld d,016h		;1a3c	16 16 	. . 
	ld d,016h		;1a3e	16 16 	. . 
	ld d,016h		;1a40	16 16 	. . 
	ld d,016h		;1a42	16 16 	. . 
	ld d,016h		;1a44	16 16 	. . 
	ld d,015h		;1a46	16 15 	. . 
	inc d			;1a48	14 	. 
	push bc			;1a49	c5 	. 
	rst 0			;1a4a	c7 	. 
	ld d,016h		;1a4b	16 16 	. . 
	ld d,016h		;1a4d	16 16 	. . 
	dec b			;1a4f	05 	. 
	rlca			;1a50	07 	. 
	ex af,af'			;1a51	08 	. 
	ld a,(bc)			;1a52	0a 	. 
	add hl,bc			;1a53	09 	. 
	dec bc			;1a54	0b 	. 
	nop			;1a55	00 	. 
	ld (bc),a			;1a56	02 	. 
	ld bc,00403h		;1a57	01 03 04 	. . . 
	ld b,005h		;1a5a	06 05 	. . 
	rlca			;1a5c	07 	. 
	ex af,af'			;1a5d	08 	. 
	ld a,(bc)			;1a5e	0a 	. 
	jr nc,l1a93h		;1a5f	30 32 	0 2 
	ret nz			;1a61	c0 	. 
	ld e,l			;1a62	5d 	] 
	ld bc,00403h		;1a63	01 03 04 	. . . 
	ld b,006h		;1a66	06 06 	. . 
	inc b			;1a68	04 	. 
	jp nc,09c96h		;1a69	d2 96 9c 	. . . 
	sbc a,(hl)			;1a6c	9e 	. 
	ld a,e			;1a6d	7b 	{ 
	ld a,0d3h		;1a6e	3e d3 	> . 
	sub a			;1a70	97 	. 
	sbc a,l			;1a71	9d 	. 
	sbc a,a			;1a72	9f 	. 
	ccf			;1a73	3f 	? 
	adc a,a			;1a74	8f 	. 
	call c,08c7ah		;1a75	dc 7a 8c 	. z . 
	adc a,(hl)			;1a78	8e 	. 
	ld a,e			;1a79	7b 	{ 
	adc a,l			;1a7a	8d 	. 
	defb 0ddh,0d0h,0cah	;illegal sequence		;1a7b	dd d0 ca 	. . . 
	set 1,l		;1a7e	cb cd 	. . 
	rst 8			;1a80	cf 	. 
	ld c,010h		;1a81	0e 10 	. . 
	pop de			;1a83	d1 	. 
	add a,0c8h		;1a84	c6 c8 	. . 
	ret			;1a86	c9 	. 
	ret z			;1a87	c8 	. 
	ret			;1a88	c9 	. 
	ret z			;1a89	c8 	. 
	ret			;1a8a	c9 	. 
	ret z			;1a8b	c8 	. 
	ret			;1a8c	c9 	. 
	ret z			;1a8d	c8 	. 
	ret			;1a8e	c9 	. 
	call z,0deceh		;1a8f	cc ce de 	. . . 
	ld l,a			;1a92	6f 	o 
l1a93h:
	add a,c			;1a93	81 	. 
	add a,e			;1a94	83 	. 
	add a,c			;1a95	81 	. 
	add a,e			;1a96	83 	. 
	add a,c			;1a97	81 	. 
	add a,e			;1a98	83 	. 
	add a,c			;1a99	81 	. 
	add a,e			;1a9a	83 	. 
	add a,c			;1a9b	81 	. 
	add a,e			;1a9c	83 	. 
	add a,b			;1a9d	80 	. 
	add a,d			;1a9e	82 	. 
	jp c,08472h		;1a9f	da 72 84 	. r . 
	add a,(hl)			;1aa2	86 	. 
	sbc a,b			;1aa3	98 	. 
	sbc a,d			;1aa4	9a 	. 
	adc a,b			;1aa5	88 	. 
	adc a,d			;1aa6	8a 	. 
	sbc a,h			;1aa7	9c 	. 
	sbc a,(hl)			;1aa8	9e 	. 
	add a,h			;1aa9	84 	. 
	add a,(hl)			;1aaa	86 	. 
	ld l,c			;1aab	69 	i 
	ld a,h			;1aac	7c 	| 
	in a,(073h)		;1aad	db 73 	. s 
	add a,l			;1aaf	85 	. 
	add a,a			;1ab0	87 	. 
	sbc a,c			;1ab1	99 	. 
	sbc a,e			;1ab2	9b 	. 
	adc a,c			;1ab3	89 	. 
	adc a,e			;1ab4	8b 	. 
	sbc a,l			;1ab5	9d 	. 
	sbc a,a			;1ab6	9f 	. 
	add a,l			;1ab7	85 	. 
	add a,a			;1ab8	87 	. 
	ld l,d			;1ab9	6a 	j 
	ld a,l			;1aba	7d 	} 
	jp nc,08876h		;1abb	d2 76 88 	. v . 
	adc a,d			;1abe	8a 	. 
	sbc a,h			;1abf	9c 	. 
	sbc a,(hl)			;1ac0	9e 	. 
	add a,h			;1ac1	84 	. 
	add a,(hl)			;1ac2	86 	. 
	sbc a,b			;1ac3	98 	. 
	sbc a,d			;1ac4	9a 	. 
	adc a,b			;1ac5	88 	. 
	adc a,d			;1ac6	8a 	. 
	ld l,e			;1ac7	6b 	k 
	ld a,(hl)			;1ac8	7e 	~ 
	out (077h),a		;1ac9	d3 77 	. w 
	adc a,c			;1acb	89 	. 
	adc a,e			;1acc	8b 	. 
	sbc a,l			;1acd	9d 	. 
	sbc a,a			;1ace	9f 	. 
	add a,l			;1acf	85 	. 
	add a,a			;1ad0	87 	. 
	sbc a,c			;1ad1	99 	. 
	sbc a,e			;1ad2	9b 	. 
	adc a,c			;1ad3	89 	. 
	adc a,e			;1ad4	8b 	. 
	ld l,(hl)			;1ad5	6e 	n 
	ld a,a			;1ad6	7f 	 
	jp c,09892h		;1ad7	da 92 98 	. . . 
	sbc a,d			;1ada	9a 	. 
	adc a,b			;1adb	88 	. 
	adc a,d			;1adc	8a 	. 
	sbc a,h			;1add	9c 	. 
	sbc a,(hl)			;1ade	9e 	. 
	add a,h			;1adf	84 	. 
	add a,(hl)			;1ae0	86 	. 
	sbc a,b			;1ae1	98 	. 
	sbc a,d			;1ae2	9a 	. 
	and b			;1ae3	a0 	. 
	and d			;1ae4	a2 	. 
	in a,(093h)		;1ae5	db 93 	. . 
	sbc a,c			;1ae7	99 	. 
	sbc a,e			;1ae8	9b 	. 
	adc a,c			;1ae9	89 	. 
	adc a,e			;1aea	8b 	. 
	sbc a,l			;1aeb	9d 	. 
	sbc a,a			;1aec	9f 	. 
	add a,l			;1aed	85 	. 
	add a,a			;1aee	87 	. 
	sbc a,c			;1aef	99 	. 
	sbc a,e			;1af0	9b 	. 
	and c			;1af1	a1 	. 
	ld a,c			;1af2	79 	y 
	jp nc,09c96h		;1af3	d2 96 9c 	. . . 
	sbc a,(hl)			;1af6	9e 	. 
	add a,h			;1af7	84 	. 
	add a,(hl)			;1af8	86 	. 
	sbc a,b			;1af9	98 	. 
	sbc a,d			;1afa	9a 	. 
	adc a,b			;1afb	88 	. 
	adc a,d			;1afc	8a 	. 
	sbc a,h			;1afd	9c 	. 
	sbc a,(hl)			;1afe	9e 	. 
	ld a,e			;1aff	7b 	{ 
	ld a,0d3h		;1b00	3e d3 	> . 
	sub a			;1b02	97 	. 
	sbc a,l			;1b03	9d 	. 
	sbc a,a			;1b04	9f 	. 
	add a,l			;1b05	85 	. 
	add a,a			;1b06	87 	. 
	sbc a,c			;1b07	99 	. 
	sbc a,e			;1b08	9b 	. 
	adc a,c			;1b09	89 	. 
	adc a,e			;1b0a	8b 	. 
	sbc a,l			;1b0b	9d 	. 
	sbc a,a			;1b0c	9f 	. 
	ccf			;1b0d	3f 	? 
	adc a,a			;1b0e	8f 	. 
	jp c,08472h		;1b0f	da 72 84 	. r . 
	add a,(hl)			;1b12	86 	. 
	sbc a,b			;1b13	98 	. 
	sbc a,d			;1b14	9a 	. 
	adc a,b			;1b15	88 	. 
	adc a,d			;1b16	8a 	. 
	sbc a,h			;1b17	9c 	. 
	sbc a,(hl)			;1b18	9e 	. 
sub_1b19h:
	add a,h			;1b19	84 	. 
	add a,(hl)			;1b1a	86 	. 
	ld l,c			;1b1b	69 	i 
	ld a,h			;1b1c	7c 	| 
	in a,(073h)		;1b1d	db 73 	. s 
	add a,l			;1b1f	85 	. 
	add a,a			;1b20	87 	. 
	sbc a,c			;1b21	99 	. 
	sbc a,e			;1b22	9b 	. 
	adc a,c			;1b23	89 	. 
	adc a,e			;1b24	8b 	. 
	sbc a,l			;1b25	9d 	. 
	sbc a,a			;1b26	9f 	. 
	add a,l			;1b27	85 	. 
	add a,a			;1b28	87 	. 
	ld l,d			;1b29	6a 	j 
	ld a,l			;1b2a	7d 	} 
	jp nc,08876h		;1b2b	d2 76 88 	. v . 
	adc a,d			;1b2e	8a 	. 
	sbc a,h			;1b2f	9c 	. 
	sbc a,(hl)			;1b30	9e 	. 
	add a,h			;1b31	84 	. 
	add a,(hl)			;1b32	86 	. 
	sbc a,b			;1b33	98 	. 
	sbc a,d			;1b34	9a 	. 
	adc a,b			;1b35	88 	. 
	adc a,d			;1b36	8a 	. 
	ld l,e			;1b37	6b 	k 
	ld a,(hl)			;1b38	7e 	~ 
	out (077h),a		;1b39	d3 77 	. w 
	adc a,c			;1b3b	89 	. 
	adc a,e			;1b3c	8b 	. 
	sbc a,l			;1b3d	9d 	. 
	sbc a,a			;1b3e	9f 	. 
	add a,l			;1b3f	85 	. 
	add a,a			;1b40	87 	. 
	sbc a,c			;1b41	99 	. 
	sbc a,e			;1b42	9b 	. 
	adc a,c			;1b43	89 	. 
	adc a,e			;1b44	8b 	. 
	ld l,(hl)			;1b45	6e 	n 
	ld a,a			;1b46	7f 	 
	jp c,09892h		;1b47	da 92 98 	. . . 
	sbc a,d			;1b4a	9a 	. 
	adc a,b			;1b4b	88 	. 
	adc a,d			;1b4c	8a 	. 
	sbc a,h			;1b4d	9c 	. 
	sbc a,(hl)			;1b4e	9e 	. 
	add a,h			;1b4f	84 	. 
	add a,(hl)			;1b50	86 	. 
	sbc a,b			;1b51	98 	. 
	sbc a,d			;1b52	9a 	. 
	and b			;1b53	a0 	. 
	and d			;1b54	a2 	. 
	in a,(093h)		;1b55	db 93 	. . 
	sbc a,c			;1b57	99 	. 
	sbc a,e			;1b58	9b 	. 
	adc a,c			;1b59	89 	. 
	adc a,e			;1b5a	8b 	. 
	sbc a,l			;1b5b	9d 	. 
	sbc a,a			;1b5c	9f 	. 
	add a,l			;1b5d	85 	. 
	add a,a			;1b5e	87 	. 
	sbc a,c			;1b5f	99 	. 
	sbc a,e			;1b60	9b 	. 
	and c			;1b61	a1 	. 
	ld a,c			;1b62	79 	y 
	cp 008h		;1b63	fe 08 	. . 
	ld b,b			;1b65	40 	@ 
	ld b,b			;1b66	40 	@ 
	ld b,b			;1b67	40 	@ 
	ld b,b			;1b68	40 	@ 
	ld b,b			;1b69	40 	@ 
	ld b,b			;1b6a	40 	@ 
	ld b,b			;1b6b	40 	@ 
	ld b,b			;1b6c	40 	@ 
	ld b,b			;1b6d	40 	@ 
	ld b,b			;1b6e	40 	@ 
	ld b,b			;1b6f	40 	@ 
	ld b,b			;1b70	40 	@ 
	ld b,b			;1b71	40 	@ 
	ld b,b			;1b72	40 	@ 
	ld b,b			;1b73	40 	@ 
	ld b,b			;1b74	40 	@ 
	ld b,b			;1b75	40 	@ 
	ld b,b			;1b76	40 	@ 
	ld b,b			;1b77	40 	@ 
	ld b,b			;1b78	40 	@ 
	ld b,b			;1b79	40 	@ 
	ld b,b			;1b7a	40 	@ 
	ld b,b			;1b7b	40 	@ 
	ld b,b			;1b7c	40 	@ 
	ld b,b			;1b7d	40 	@ 
	ld b,b			;1b7e	40 	@ 
	ld b,b			;1b7f	40 	@ 
	ld b,b			;1b80	40 	@ 
	ld b,b			;1b81	40 	@ 
	ld b,b			;1b82	40 	@ 
	ld b,b			;1b83	40 	@ 
	ld b,b			;1b84	40 	@ 
	ld (bc),a			;1b85	02 	. 
	ex af,af'			;1b86	08 	. 
	push bc			;1b87	c5 	. 
	pop bc			;1b88	c1 	. 
	ret			;1b89	c9 	. 
	call nz,0c7c3h		;1b8a	c4 c3 c7 	. . . 
	jp 0c5c2h		;1b8d	c3 c2 c5 	. . . 
	pop bc			;1b90	c1 	. 
	ret			;1b91	c9 	. 
	call nz,0c7c3h		;1b92	c4 c3 c7 	. . . 
	jp 0c5c2h		;1b95	c3 c2 c5 	. . . 
	pop bc			;1b98	c1 	. 
	ret			;1b99	c9 	. 
	call nz,0c7c3h		;1b9a	c4 c3 c7 	. . . 
	jp 0c5c2h		;1b9d	c3 c2 c5 	. . . 
	pop bc			;1ba0	c1 	. 
	ret			;1ba1	c9 	. 
	call nz,0c7c3h		;1ba2	c4 c3 c7 	. . . 
	jp l02c2h		;1ba5	c3 c2 02 	. . . 
	ex af,af'			;1ba8	08 	. 
	ret pe			;1ba9	e8 	. 
	adc a,h			;1baa	8c 	. 
	jp (hl)			;1bab	e9 	. 
	adc a,l			;1bac	8d 	. 
	call pe,0ed90h		;1bad	ec 90 ed 	. . . 
	sub c			;1bb0	91 	. 
	jp pe,0eb8eh		;1bb1	ea 8e eb 	. . . 
	adc a,a			;1bb4	8f 	. 
	xor 092h		;1bb5	ee 92 	. . 
	rst 28h			;1bb7	ef 	. 
	sub e			;1bb8	93 	. 
	cp 008h		;1bb9	fe 08 	. . 
	ld b,b			;1bbb	40 	@ 
	ld b,b			;1bbc	40 	@ 
	ld b,b			;1bbd	40 	@ 
	ld b,b			;1bbe	40 	@ 
	ld b,b			;1bbf	40 	@ 
	ld b,b			;1bc0	40 	@ 
	ld b,b			;1bc1	40 	@ 
	ld b,b			;1bc2	40 	@ 
	ld b,b			;1bc3	40 	@ 
	ld b,b			;1bc4	40 	@ 
	ld b,b			;1bc5	40 	@ 
	ld b,b			;1bc6	40 	@ 
	ld b,b			;1bc7	40 	@ 
	ld b,b			;1bc8	40 	@ 
	ld b,b			;1bc9	40 	@ 
	ld b,b			;1bca	40 	@ 
	ld b,b			;1bcb	40 	@ 
	ld b,b			;1bcc	40 	@ 
	ld b,b			;1bcd	40 	@ 
	ld b,b			;1bce	40 	@ 
	ld b,b			;1bcf	40 	@ 
	ld b,b			;1bd0	40 	@ 
	ld b,b			;1bd1	40 	@ 
	ld b,b			;1bd2	40 	@ 
	ld b,b			;1bd3	40 	@ 
	ld b,b			;1bd4	40 	@ 
	ld b,b			;1bd5	40 	@ 
	ld b,b			;1bd6	40 	@ 
	ld b,b			;1bd7	40 	@ 
	ld b,b			;1bd8	40 	@ 
	ld b,b			;1bd9	40 	@ 
	ld b,b			;1bda	40 	@ 
	ld (bc),a			;1bdb	02 	. 
	ex af,af'			;1bdc	08 	. 
	rst 8			;1bdd	cf 	. 
	pop de			;1bde	d1 	. 
	ld e,l			;1bdf	5d 	] 
	ld e,l			;1be0	5d 	] 
	rst 8			;1be1	cf 	. 
	pop de			;1be2	d1 	. 
	ld e,l			;1be3	5d 	] 
	ld e,l			;1be4	5d 	] 
	rst 8			;1be5	cf 	. 
	pop de			;1be6	d1 	. 
	ld e,l			;1be7	5d 	] 
	ld e,l			;1be8	5d 	] 
	rst 8			;1be9	cf 	. 
	pop de			;1bea	d1 	. 
	ld e,l			;1beb	5d 	] 
	ld e,l			;1bec	5d 	] 
	rst 8			;1bed	cf 	. 
	pop de			;1bee	d1 	. 
	ld e,l			;1bef	5d 	] 
	ld e,l			;1bf0	5d 	] 
	rst 8			;1bf1	cf 	. 
	pop de			;1bf2	d1 	. 
	ld e,l			;1bf3	5d 	] 
	ld e,l			;1bf4	5d 	] 
	rst 8			;1bf5	cf 	. 
	pop de			;1bf6	d1 	. 
	ld e,l			;1bf7	5d 	] 
	ld e,l			;1bf8	5d 	] 
	rst 8			;1bf9	cf 	. 
	pop de			;1bfa	d1 	. 
	ld e,l			;1bfb	5d 	] 
	ld e,l			;1bfc	5d 	] 
	inc b			;1bfd	04 	. 
	rlca			;1bfe	07 	. 
	ld h,l			;1bff	65 	e 
	ld h,a			;1c00	67 	g 
	ld h,h			;1c01	64 	d 
	ld h,(hl)			;1c02	66 	f 
	ld l,b			;1c03	68 	h 
	ld (hl),l			;1c04	75 	u 
l1c05h:
	ld (hl),l			;1c05	75 	u 
	ld l,(hl)			;1c06	6e 	n 
l1c07h:
	ld l,c			;1c07	69 	i 
	ld (hl),l			;1c08	75 	u 
	ld (hl),l			;1c09	75 	u 
	ld l,l			;1c0a	6d 	m 
	ld l,h			;1c0b	6c 	l 
	ld (hl),l			;1c0c	75 	u 
	ld (hl),l			;1c0d	75 	u 
	ld (hl),b			;1c0e	70 	p 
	ld b,b			;1c0f	40 	@ 
	ld l,a			;1c10	6f 	o 
	ld (hl),l			;1c11	75 	u 
	ld (hl),c			;1c12	71 	q 
	ld b,b			;1c13	40 	@ 
	ld (hl),d			;1c14	72 	r 
	ld l,d			;1c15	6a 	j 
	add a,b			;1c16	80 	. 
	ld b,b			;1c17	40 	@ 
	ld (hl),e			;1c18	73 	s 
	ld l,e			;1c19	6b 	k 
	ld b,b			;1c1a	40 	@ 
	inc bc			;1c1b	03 	. 
	dec b			;1c1c	05 	. 
	ld b,b			;1c1d	40 	@ 
	ld (hl),h			;1c1e	74 	t 
	halt			;1c1f	76 	v 
	add a,c			;1c20	81 	. 
	ld (hl),l			;1c21	75 	u 
	ld (hl),a			;1c22	77 	w 
	add a,d			;1c23	82 	. 
	ld (hl),l			;1c24	75 	u 
	ld a,d			;1c25	7a 	z 
	add a,e			;1c26	83 	. 
	ld a,c			;1c27	79 	y 
	ld a,e			;1c28	7b 	{ 
	add a,h			;1c29	84 	. 
	add a,l			;1c2a	85 	. 
	ld b,b			;1c2b	40 	@ 
	ld b,004h		;1c2c	06 04 	. . 
	ld h,b			;1c2e	60 	` 
	ret nc			;1c2f	d0 	. 
	pop de			;1c30	d1 	. 
	ret nc			;1c31	d0 	. 
	pop de			;1c32	d1 	. 
	ret nc			;1c33	d0 	. 
	ld h,c			;1c34	61 	a 
	ld e,(hl)			;1c35	5e 	^ 
	ld e,l			;1c36	5d 	] 
	ld e,l			;1c37	5d 	] 
	ld e,l			;1c38	5d 	] 
	ld e,l			;1c39	5d 	] 
	ld h,d			;1c3a	62 	b 
	ld e,l			;1c3b	5d 	] 
	ld e,l			;1c3c	5d 	] 
	ld e,l			;1c3d	5d 	] 
l1c3eh:
	ld e,l			;1c3e	5d 	] 
	ld e,l			;1c3f	5d 	] 
	ld h,e			;1c40	63 	c 
	rst 8			;1c41	cf 	. 
	rst 8			;1c42	cf 	. 
	rst 8			;1c43	cf 	. 
	rst 8			;1c44	cf 	. 
	rst 8			;1c45	cf 	. 
	inc c			;1c46	0c 	. 
	ld b,003h		;1c47	06 03 	. . 
	ld a,(de)			;1c49	1a 	. 
	inc h			;1c4a	24 	$ 
	ld h,003h		;1c4b	26 03 	& . 
	ld (l1604h),a		;1c4d	32 04 16 	2 . . 
	inc bc			;1c50	03 	. 
	ld d,003h		;1c51	16 03 	. . 
	ld b,019h		;1c53	06 19 	. . 
	dec de			;1c55	1b 	. 
	dec h			;1c56	25 	% 
	daa			;1c57	27 	' 
	ld sp,l0533h		;1c58	31 33 05 	1 3 . 
	ld hl,l2121h		;1c5b	21 21 21 	! ! ! 
	ld hl,l1c07h		;1c5e	21 07 1c 	! . . 
	ld e,028h		;1c61	1e 28 	. ( 
	ld hl,(l3634h)		;1c63	2a 34 36 	* 4 6 
	ex af,af'			;1c66	08 	. 
	jr $+26		;1c67	18 18 	. . 
	jr $+26		;1c69	18 18 	. . 
	ld a,(bc)			;1c6b	0a 	. 
	dec e			;1c6c	1d 	. 
	rra			;1c6d	1f 	. 
	add hl,hl			;1c6e	29 	) 
	dec hl			;1c6f	2b 	+ 
	dec (hl)			;1c70	35 	5 
	scf			;1c71	37 	7 
	add hl,bc			;1c72	09 	. 
	jr $+26		;1c73	18 18 	. . 
	jr $+26		;1c75	18 18 	. . 
	dec bc			;1c77	0b 	. 
	jr nz,$+36		;1c78	20 22 	  " 
	inc l			;1c7a	2c 	, 
	ld l,038h		;1c7b	2e 38 	. 8 
	ld a,(l180ch)		;1c7d	3a 0c 18 	: . . 
	jr l1c9ah		;1c80	18 18 	. . 
	jr l1c92h		;1c82	18 0e 	. . 
	ld d,023h		;1c84	16 23 	. # 
	dec l			;1c86	2d 	- 
	cpl			;1c87	2f 	/ 
	ld d,03bh		;1c88	16 3b 	. ; 
	dec c			;1c8a	0d 	. 
	inc bc			;1c8b	03 	. 
	ld d,003h		;1c8c	16 03 	. . 
	ld d,00fh		;1c8e	16 0f 	. . 
	ld (bc),a			;1c90	02 	. 
	ex af,af'			;1c91	08 	. 
l1c92h:
	ret po			;1c92	e0 	. 
	jp po,0e3e1h		;1c93	e2 e1 e3 	. . . 
	call po,0e5e6h		;1c96	e4 e6 e5 	. . . 
	rst 20h			;1c99	e7 	. 
l1c9ah:
	ret po			;1c9a	e0 	. 
	jp po,0e3e1h		;1c9b	e2 e1 e3 	. . . 
	call po,0e5e6h		;1c9e	e4 e6 e5 	. . . 
	rst 20h			;1ca1	e7 	. 
	ld (bc),a			;1ca2	02 	. 
	ex af,af'			;1ca3	08 	. 
	call 0cdcch		;1ca4	cd cc cd 	. . . 
	call z,0cccdh		;1ca7	cc cd cc 	. . . 
	call 0cdcch		;1caa	cd cc cd 	. . . 
	call z,0cccdh		;1cad	cc cd cc 	. . . 
	call 0cdcch		;1cb0	cd cc cd 	. . . 
	call z,0cccdh		;1cb3	cc cd cc 	. . . 
	call 0cdcch		;1cb6	cd cc cd 	. . . 
	call z,0cccdh		;1cb9	cc cd cc 	. . . 
	call 0cdcch		;1cbc	cd cc cd 	. . . 
	call z,0cccdh		;1cbf	cc cd cc 	. . . 
	call 0cfcch		;1cc2	cd cc cf 	. . . 
	adc a,0cfh		;1cc5	ce cf 	. . 
	adc a,0cfh		;1cc7	ce cf 	. . 
	adc a,0cfh		;1cc9	ce cf 	. . 
	adc a,0cfh		;1ccb	ce cf 	. . 
	adc a,0cfh		;1ccd	ce cf 	. . 
	adc a,0cfh		;1ccf	ce cf 	. . 
	adc a,0cfh		;1cd1	ce cf 	. . 
	adc a,0cfh		;1cd3	ce cf 	. . 
	adc a,0cfh		;1cd5	ce cf 	. . 
	adc a,0cfh		;1cd7	ce cf 	. . 
	adc a,0cfh		;1cd9	ce cf 	. . 
	adc a,0cfh		;1cdb	ce cf 	. . 
	adc a,0cfh		;1cdd	ce cf 	. . 
	adc a,0cfh		;1cdf	ce cf 	. . 
	adc a,0cfh		;1ce1	ce cf 	. . 
	adc a,0feh		;1ce3	ce fe 	. . 
	ex af,af'			;1ce5	08 	. 
	ld d,003h		;1ce6	16 03 	. . 
	ld d,003h		;1ce8	16 03 	. . 
	ld d,003h		;1cea	16 03 	. . 
	ld d,003h		;1cec	16 03 	. . 
	ld d,003h		;1cee	16 03 	. . 
	ld d,003h		;1cf0	16 03 	. . 
	ld d,003h		;1cf2	16 03 	. . 
	ld d,003h		;1cf4	16 03 	. . 
	ld d,003h		;1cf6	16 03 	. . 
	ld d,003h		;1cf8	16 03 	. . 
	ld d,003h		;1cfa	16 03 	. . 
	ld d,003h		;1cfc	16 03 	. . 
	ld d,003h		;1cfe	16 03 	. . 
	ld d,003h		;1d00	16 03 	. . 
	ld d,003h		;1d02	16 03 	. . 
	ld d,003h		;1d04	16 03 	. . 
	inc bc			;1d06	03 	. 
	ld d,003h		;1d07	16 03 	. . 
	ld d,003h		;1d09	16 03 	. . 
	ld d,003h		;1d0b	16 03 	. . 
	ld d,003h		;1d0d	16 03 	. . 
	ld d,003h		;1d0f	16 03 	. . 
	ld d,003h		;1d11	16 03 	. . 
	ld d,003h		;1d13	16 03 	. . 
	ld d,003h		;1d15	16 03 	. . 
	ld d,003h		;1d17	16 03 	. . 
	ld d,003h		;1d19	16 03 	. . 
	ld d,003h		;1d1b	16 03 	. . 
l1d1dh:
	ld d,003h		;1d1d	16 03 	. . 
	ld d,003h		;1d1f	16 03 	. . 
	ld d,003h		;1d21	16 03 	. . 
	ld d,003h		;1d23	16 03 	. . 
	ld d,084h		;1d25	16 84 	. . 
	inc b			;1d27	04 	. 
	ret nz			;1d28	c0 	. 
	inc b			;1d29	04 	. 
	jr nz,l1d4eh		;1d2a	20 22 	  " 
	call nc,0d8d6h		;1d2c	d4 d6 d8 	. . . 
	jp c,l05c1h		;1d2f	da c1 05 	. . . 
	ld hl,0d523h		;1d32	21 23 d5 	! # . 
	rst 10h			;1d35	d7 	. 
	exx			;1d36	d9 	. 
	in a,(0c4h)		;1d37	db c4 	. . 
	ld b,020h		;1d39	06 20 	.   
	ld (0dad8h),hl		;1d3b	22 d8 da 	" . . 
	call nc,0c5d6h		;1d3e	d4 d6 c5 	. . . 
	rlca			;1d41	07 	. 
	ld hl,0d923h		;1d42	21 23 d9 	! # . 
	in a,(0d5h)		;1d45	db d5 	. . 
	rst 10h			;1d47	d7 	. 
	ld d,h			;1d48	54 	T 
	inc b			;1d49	04 	. 
	ret nz			;1d4a	c0 	. 
	ld a,h			;1d4b	7c 	| 
	ld a,(hl)			;1d4c	7e 	~ 
	add a,h			;1d4d	84 	. 
l1d4eh:
	add a,(hl)			;1d4e	86 	. 
	pop bc			;1d4f	c1 	. 
	ld a,l			;1d50	7d 	} 
	ld a,a			;1d51	7f 	 
	add a,l			;1d52	85 	. 
	add a,a			;1d53	87 	. 
	jp nz,08280h		;1d54	c2 80 82 	. . . 
	adc a,b			;1d57	88 	. 
	adc a,d			;1d58	8a 	. 
	jp 08381h		;1d59	c3 81 83 	. . . 
	adc a,c			;1d5c	89 	. 
	adc a,e			;1d5d	8b 	. 
	ld (0c504h),a		;1d5e	32 04 c5 	2 . . 
	ret z			;1d61	c8 	. 
	jp z,0cac5h		;1d62	ca c5 ca 	. . . 
	ret			;1d65	c9 	. 
	push bc			;1d66	c5 	. 
	jp z,0c5c8h		;1d67	ca c8 c5 	. . . 
	ret			;1d6a	c9 	. 
	jp z,l0222h		;1d6b	ca 22 02 	. " . 
	call z,0cdceh		;1d6e	cc ce cd 	. . . 
	rst 8			;1d71	cf 	. 
	ld (bc),a			;1d72	02 	. 
	ex af,af'			;1d73	08 	. 
	ret m			;1d74	f8 	. 
	jp m,0fbf9h		;1d75	fa f9 fb 	. . . 
	call m,0f9feh		;1d78	fc fe f9 	. . . 
	ei			;1d7b	fb 	. 
	call m,0f9feh		;1d7c	fc fe f9 	. . . 
	ei			;1d7f	fb 	. 
	call m,0fdfeh		;1d80	fc fe fd 	. . . 
	rst 38h			;1d83	ff 	. 
	ld c,008h		;1d84	0e 08 	. . 
	and c			;1d86	a1 	. 
	and e			;1d87	a3 	. 
	sub h			;1d88	94 	. 
	sub (hl)			;1d89	96 	. 
	and c			;1d8a	a1 	. 
	and e			;1d8b	a3 	. 
	sub h			;1d8c	94 	. 
	sub (hl)			;1d8d	96 	. 
	and c			;1d8e	a1 	. 
	and e			;1d8f	a3 	. 
	sub h			;1d90	94 	. 
	sub (hl)			;1d91	96 	. 
	and c			;1d92	a1 	. 
	and e			;1d93	a3 	. 
	and h			;1d94	a4 	. 
	and l			;1d95	a5 	. 
	sub l			;1d96	95 	. 
	sub a			;1d97	97 	. 
	and h			;1d98	a4 	. 
	and l			;1d99	a5 	. 
	sub l			;1d9a	95 	. 
	sub a			;1d9b	97 	. 
	and h			;1d9c	a4 	. 
	and l			;1d9d	a5 	. 
	sub l			;1d9e	95 	. 
	sub a			;1d9f	97 	. 
	and h			;1da0	a4 	. 
	and l			;1da1	a5 	. 
	sub h			;1da2	94 	. 
	sub (hl)			;1da3	96 	. 
	sbc a,b			;1da4	98 	. 
	sbc a,d			;1da5	9a 	. 
	sub h			;1da6	94 	. 
	sub (hl)			;1da7	96 	. 
	sbc a,b			;1da8	98 	. 
	sbc a,d			;1da9	9a 	. 
	sub h			;1daa	94 	. 
	sub (hl)			;1dab	96 	. 
	sbc a,b			;1dac	98 	. 
	sbc a,d			;1dad	9a 	. 
	sub h			;1dae	94 	. 
	sub (hl)			;1daf	96 	. 
	sub l			;1db0	95 	. 
	sub a			;1db1	97 	. 
	sbc a,c			;1db2	99 	. 
	sbc a,e			;1db3	9b 	. 
	sub l			;1db4	95 	. 
	sub a			;1db5	97 	. 
	sbc a,c			;1db6	99 	. 
	sbc a,e			;1db7	9b 	. 
	sub l			;1db8	95 	. 
	sub a			;1db9	97 	. 
	sbc a,c			;1dba	99 	. 
	sbc a,e			;1dbb	9b 	. 
	sub l			;1dbc	95 	. 
	sub a			;1dbd	97 	. 
	sbc a,b			;1dbe	98 	. 
	sbc a,d			;1dbf	9a 	. 
	sub h			;1dc0	94 	. 
	sub (hl)			;1dc1	96 	. 
	sbc a,b			;1dc2	98 	. 
	sbc a,d			;1dc3	9a 	. 
	sub h			;1dc4	94 	. 
	sub (hl)			;1dc5	96 	. 
	sbc a,b			;1dc6	98 	. 
	sbc a,d			;1dc7	9a 	. 
	sub h			;1dc8	94 	. 
	sub (hl)			;1dc9	96 	. 
	sbc a,b			;1dca	98 	. 
	sbc a,d			;1dcb	9a 	. 
	sbc a,c			;1dcc	99 	. 
	sbc a,e			;1dcd	9b 	. 
	sub l			;1dce	95 	. 
	sub a			;1dcf	97 	. 
	sbc a,c			;1dd0	99 	. 
	sbc a,e			;1dd1	9b 	. 
	sub l			;1dd2	95 	. 
	sub a			;1dd3	97 	. 
	sbc a,c			;1dd4	99 	. 
	sbc a,e			;1dd5	9b 	. 
	sub l			;1dd6	95 	. 
	sub a			;1dd7	97 	. 
	sbc a,c			;1dd8	99 	. 
	sbc a,e			;1dd9	9b 	. 
	and b			;1dda	a0 	. 
	and d			;1ddb	a2 	. 
	sbc a,b			;1ddc	98 	. 
	sbc a,d			;1ddd	9a 	. 
	and b			;1dde	a0 	. 
	and d			;1ddf	a2 	. 
	sbc a,b			;1de0	98 	. 
	sbc a,d			;1de1	9a 	. 
	and b			;1de2	a0 	. 
	and d			;1de3	a2 	. 
	sbc a,b			;1de4	98 	. 
	sbc a,d			;1de5	9a 	. 
	and b			;1de6	a0 	. 
	and d			;1de7	a2 	. 
	and c			;1de8	a1 	. 
	and e			;1de9	a3 	. 
	sbc a,c			;1dea	99 	. 
	sbc a,e			;1deb	9b 	. 
	and c			;1dec	a1 	. 
	and e			;1ded	a3 	. 
	sbc a,c			;1dee	99 	. 
	sbc a,e			;1def	9b 	. 
	and c			;1df0	a1 	. 
	and e			;1df1	a3 	. 
	sbc a,c			;1df2	99 	. 
	sbc a,e			;1df3	9b 	. 
	and c			;1df4	a1 	. 
	and e			;1df5	a3 	. 
	ld (bc),a			;1df6	02 	. 
	ex af,af'			;1df7	08 	. 
	in a,(0d6h)		;1df8	db d6 	. . 
	rst 10h			;1dfa	d7 	. 
	jp c,0d6dbh		;1dfb	da db d6 	. . . 
	rst 10h			;1dfe	d7 	. 
	jp c,0d6dbh		;1dff	da db d6 	. . . 
l1e02h:
	rst 10h			;1e02	d7 	. 
	jp c,0d6dbh		;1e03	da db d6 	. . . 
	rst 10h			;1e06	d7 	. 
	jp c,0d6dbh		;1e07	da db d6 	. . . 
	rst 10h			;1e0a	d7 	. 
	jp c,0d6dbh		;1e0b	da db d6 	. . . 
	rst 10h			;1e0e	d7 	. 
	jp c,0d6dbh		;1e0f	da db d6 	. . . 
l1e12h:
	rst 10h			;1e12	d7 	. 
	jp c,0d6dbh		;1e13	da db d6 	. . . 
	rst 10h			;1e16	d7 	. 
	jp c,0d4d9h		;1e17	da d9 d4 	. . . 
	push de			;1e1a	d5 	. 
	ret c			;1e1b	d8 	. 
l1e1ch:
	exx			;1e1c	d9 	. 
	call nc,0d8d5h		;1e1d	d4 d5 d8 	. . . 
	exx			;1e20	d9 	. 
	call nc,0d8d5h		;1e21	d4 d5 d8 	. . . 
	exx			;1e24	d9 	. 
	call nc,0d8d5h		;1e25	d4 d5 d8 	. . . 
	exx			;1e28	d9 	. 
	call nc,0d8d5h		;1e29	d4 d5 d8 	. . . 
	exx			;1e2c	d9 	. 
	call nc,0d8d5h		;1e2d	d4 d5 d8 	. . . 
	exx			;1e30	d9 	. 
	call nc,0d8d5h		;1e31	d4 d5 d8 	. . . 
	exx			;1e34	d9 	. 
	call nc,0d8d5h		;1e35	d4 d5 d8 	. . . 
	ld (bc),a			;1e38	02 	. 
	ex af,af'			;1e39	08 	. 
	and c			;1e3a	a1 	. 
	and c			;1e3b	a1 	. 
	and h			;1e3c	a4 	. 
	and b			;1e3d	a0 	. 
	and c			;1e3e	a1 	. 
	and c			;1e3f	a1 	. 
	and h			;1e40	a4 	. 
	and b			;1e41	a0 	. 
	and c			;1e42	a1 	. 
	and c			;1e43	a1 	. 
	and h			;1e44	a4 	. 
	and b			;1e45	a0 	. 
	and c			;1e46	a1 	. 
	and c			;1e47	a1 	. 
	and h			;1e48	a4 	. 
	and b			;1e49	a0 	. 
	and c			;1e4a	a1 	. 
	and c			;1e4b	a1 	. 
	and h			;1e4c	a4 	. 
	and b			;1e4d	a0 	. 
	and c			;1e4e	a1 	. 
	and c			;1e4f	a1 	. 
	and h			;1e50	a4 	. 
	and b			;1e51	a0 	. 
	and c			;1e52	a1 	. 
	and c			;1e53	a1 	. 
	and h			;1e54	a4 	. 
	and b			;1e55	a0 	. 
	and c			;1e56	a1 	. 
	and c			;1e57	a1 	. 
	and h			;1e58	a4 	. 
	and b			;1e59	a0 	. 
	and e			;1e5a	a3 	. 
	and e			;1e5b	a3 	. 
	and l			;1e5c	a5 	. 
	and d			;1e5d	a2 	. 
	and e			;1e5e	a3 	. 
	and e			;1e5f	a3 	. 
	and l			;1e60	a5 	. 
	and d			;1e61	a2 	. 
	and e			;1e62	a3 	. 
	and e			;1e63	a3 	. 
	and l			;1e64	a5 	. 
	and d			;1e65	a2 	. 
	and e			;1e66	a3 	. 
	and e			;1e67	a3 	. 
	and l			;1e68	a5 	. 
	and d			;1e69	a2 	. 
	and e			;1e6a	a3 	. 
	and e			;1e6b	a3 	. 
	and l			;1e6c	a5 	. 
	and d			;1e6d	a2 	. 
	and e			;1e6e	a3 	. 
	and e			;1e6f	a3 	. 
	and l			;1e70	a5 	. 
	and d			;1e71	a2 	. 
	and e			;1e72	a3 	. 
	and e			;1e73	a3 	. 
	and l			;1e74	a5 	. 
	and d			;1e75	a2 	. 
	and e			;1e76	a3 	. 
	and e			;1e77	a3 	. 
	and l			;1e78	a5 	. 
	and d			;1e79	a2 	. 
	and h			;1e7a	a4 	. 
	and b			;1e7b	a0 	. 
	and c			;1e7c	a1 	. 
	and c			;1e7d	a1 	. 
	and h			;1e7e	a4 	. 
	and b			;1e7f	a0 	. 
	and c			;1e80	a1 	. 
	and c			;1e81	a1 	. 
	and h			;1e82	a4 	. 
	and b			;1e83	a0 	. 
	and c			;1e84	a1 	. 
	and c			;1e85	a1 	. 
	and h			;1e86	a4 	. 
	and b			;1e87	a0 	. 
	and c			;1e88	a1 	. 
	and c			;1e89	a1 	. 
	and h			;1e8a	a4 	. 
	and b			;1e8b	a0 	. 
	and c			;1e8c	a1 	. 
	and c			;1e8d	a1 	. 
	and h			;1e8e	a4 	. 
	and b			;1e8f	a0 	. 
	and c			;1e90	a1 	. 
	and c			;1e91	a1 	. 
	and h			;1e92	a4 	. 
	and b			;1e93	a0 	. 
	and c			;1e94	a1 	. 
	and c			;1e95	a1 	. 
	and h			;1e96	a4 	. 
	and b			;1e97	a0 	. 
	and c			;1e98	a1 	. 
	and c			;1e99	a1 	. 
	and l			;1e9a	a5 	. 
	and d			;1e9b	a2 	. 
	and e			;1e9c	a3 	. 
	and e			;1e9d	a3 	. 
	and l			;1e9e	a5 	. 
	and d			;1e9f	a2 	. 
	and e			;1ea0	a3 	. 
	and e			;1ea1	a3 	. 
	and l			;1ea2	a5 	. 
	and d			;1ea3	a2 	. 
	and e			;1ea4	a3 	. 
	and e			;1ea5	a3 	. 
	and l			;1ea6	a5 	. 
	and d			;1ea7	a2 	. 
	and e			;1ea8	a3 	. 
	and e			;1ea9	a3 	. 
	and l			;1eaa	a5 	. 
	and d			;1eab	a2 	. 
	and e			;1eac	a3 	. 
	and e			;1ead	a3 	. 
	and l			;1eae	a5 	. 
	and d			;1eaf	a2 	. 
	and e			;1eb0	a3 	. 
	and e			;1eb1	a3 	. 
	and l			;1eb2	a5 	. 
	and d			;1eb3	a2 	. 
	and e			;1eb4	a3 	. 
	and e			;1eb5	a3 	. 
	and l			;1eb6	a5 	. 
	and d			;1eb7	a2 	. 
	and e			;1eb8	a3 	. 
	and e			;1eb9	a3 	. 
	ld b,d			;1eba	42 	B 
	inc b			;1ebb	04 	. 
	jp z,0d1d0h		;1ebc	ca d0 d1 	. . . 
	ret nc			;1ebf	d0 	. 
	bit 3,(hl)		;1ec0	cb 5e 	. ^ 
	ld e,l			;1ec2	5d 	] 
	ld e,l			;1ec3	5d 	] 
	call z,05d5dh		;1ec4	cc 5d 5d 	. ] ] 
	ld e,l			;1ec7	5d 	] 
	adc a,0cfh		;1ec8	ce cf 	. . 
	rst 8			;1eca	cf 	. 
	rst 8			;1ecb	cf 	. 
	ld de,0c804h		;1ecc	11 04 c8 	. . . 
	add a,0c7h		;1ecf	c6 c7 	. . 
	ret			;1ed1	c9 	. 
	ld (0ce02h),hl		;1ed2	22 02 ce 	" . . 
	call z,0cdcfh		;1ed5	cc cf cd 	. . . 
	ld a,d			;1ed8	7a 	z 
	ld a,d			;1ed9	7a 	z 
	sub d			;1eda	92 	. 
	ld a,d			;1edb	7a 	z 
	ld a,d			;1edc	7a 	z 
	ld a,d			;1edd	7a 	z 
	inc a			;1ede	3c 	< 
	ld h,a			;1edf	67 	g 
	add hl,hl			;1ee0	29 	) 
	add hl,hl			;1ee1	29 	) 
	add hl,hl			;1ee2	29 	) 
	add hl,hl			;1ee3	29 	) 
	inc e			;1ee4	1c 	. 
	dec hl			;1ee5	2b 	+ 
	dec hl			;1ee6	2b 	+ 
	dec hl			;1ee7	2b 	+ 
	dec hl			;1ee8	2b 	+ 
	dec hl			;1ee9	2b 	+ 
	ret nz			;1eea	c0 	. 
	inc b			;1eeb	04 	. 
	jr nz,l1f10h		;1eec	20 22 	  " 
	call nc,07ad6h		;1eee	d4 d6 7a 	. . z 
l1ef1h:
	ld a,d			;1ef1	7a 	z 
	sub e			;1ef2	93 	. 
	ld a,b			;1ef3	78 	x 
	ld a,d			;1ef4	7a 	z 
	ld l,b			;1ef5	68 	h 
	dec (hl)			;1ef6	35 	5 
	scf			;1ef7	37 	7 
	ld h,h			;1ef8	64 	d 
	dec l			;1ef9	2d 	- 
	dec l			;1efa	2d 	- 
	cpl			;1efb	2f 	/ 
	cpl			;1efc	2f 	/ 
	cp b			;1efd	b8 	. 
	inc h			;1efe	24 	$ 
	inc h			;1eff	24 	$ 
l1f00h:
	ld h,02bh		;1f00	26 2b 	& + 
	pop bc			;1f02	c1 	. 
	dec b			;1f03	05 	. 
	ld hl,0d523h		;1f04	21 23 d5 	! # . 
	rst 10h			;1f07	d7 	. 
	ld a,d			;1f08	7a 	z 
	ld a,d			;1f09	7a 	z 
	ld a,d			;1f0a	7a 	z 
	ld a,c			;1f0b	79 	y 
	ld a,e			;1f0c	7b 	{ 
	ld l,c			;1f0d	69 	i 
	jr c,l1f4ah		;1f0e	38 3a 	8 : 
l1f10h:
	ld h,l			;1f10	65 	e 
	jr nc,l1f43h		;1f11	30 30 	0 0 
	jr nc,l1f47h		;1f13	30 32 	0 2 
	ld (l2525h),a		;1f15	32 25 25 	2 % % 
	daa			;1f18	27 	' 
	dec hl			;1f19	2b 	+ 
	call nz,sub_2006h		;1f1a	c4 06 20 	. .   
l1f1dh:
	ld (0dad8h),hl		;1f1d	22 d8 da 	" . . 
	ld a,d			;1f20	7a 	z 
	ld a,d			;1f21	7a 	z 
	ld a,d			;1f22	7a 	z 
	ld a,h			;1f23	7c 	| 
	ld a,(hl)			;1f24	7e 	~ 
	ld l,039h		;1f25	2e 39 	. 9 
	dec sp			;1f27	3b 	; 
	inc (hl)			;1f28	34 	4 
	ld (hl),031h		;1f29	36 31 	6 1 
	inc sp			;1f2b	33 	3 
	inc sp			;1f2c	33 	3 
	inc sp			;1f2d	33 	3 
	jr z,l1f58h		;1f2e	28 28 	( ( 
	ld hl,(0c52bh)		;1f30	2a 2b c5 	* + . 
	rlca			;1f33	07 	. 
	ld hl,0d923h		;1f34	21 23 d9 	! # . 
	in a,(07ah)		;1f37	db 7a 	. z 
	ld a,d			;1f39	7a 	z 
	sub d			;1f3a	92 	. 
	ld a,d			;1f3b	7a 	z 
	ld a,d			;1f3c	7a 	z 
	ld a,d			;1f3d	7a 	z 
	inc a			;1f3e	3c 	< 
	ld a,029h		;1f3f	3e 29 	> ) 
	add hl,hl			;1f41	29 	) 
	add hl,hl			;1f42	29 	) 
l1f43h:
	add hl,hl			;1f43	29 	) 
	add hl,hl			;1f44	29 	) 
	add hl,hl			;1f45	29 	) 
	ld l,h			;1f46	6c 	l 
l1f47h:
	dec hl			;1f47	2b 	+ 
	dec hl			;1f48	2b 	+ 
	dec hl			;1f49	2b 	+ 
l1f4ah:
	ret nz			;1f4a	c0 	. 
	inc b			;1f4b	04 	. 
	jr nz,l1f70h		;1f4c	20 22 	  " 
	call nc,07ad6h		;1f4e	d4 d6 7a 	. . z 
	ld a,d			;1f51	7a 	z 
	sub e			;1f52	93 	. 
	ld a,b			;1f53	78 	x 
	ld a,d			;1f54	7a 	z 
	ld l,b			;1f55	68 	h 
	dec (hl)			;1f56	35 	5 
	add a,b			;1f57	80 	. 
l1f58h:
	add a,d			;1f58	82 	. 
	add a,(hl)			;1f59	86 	. 
	add a,(hl)			;1f5a	86 	. 
	add a,(hl)			;1f5b	86 	. 
	adc a,b			;1f5c	88 	. 
	adc a,b			;1f5d	88 	. 
	adc a,b			;1f5e	88 	. 
	adc a,b			;1f5f	88 	. 
	adc a,d			;1f60	8a 	. 
	dec hl			;1f61	2b 	+ 
	pop bc			;1f62	c1 	. 
	dec b			;1f63	05 	. 
	ld hl,0d523h		;1f64	21 23 d5 	! # . 
	rst 10h			;1f67	d7 	. 
	ld a,d			;1f68	7a 	z 
	ld a,d			;1f69	7a 	z 
	ld a,d			;1f6a	7a 	z 
	ld a,c			;1f6b	79 	y 
	ld a,e			;1f6c	7b 	{ 
	ld l,c			;1f6d	69 	i 
	jr c,l1ef1h		;1f6e	38 81 	8 . 
l1f70h:
	add a,e			;1f70	83 	. 
	add a,l			;1f71	85 	. 
	add a,l			;1f72	85 	. 
	add a,l			;1f73	85 	. 
	add a,l			;1f74	85 	. 
	add a,a			;1f75	87 	. 
	adc a,c			;1f76	89 	. 
	adc a,c			;1f77	89 	. 
	adc a,e			;1f78	8b 	. 
	dec hl			;1f79	2b 	+ 
	call nz,sub_2006h		;1f7a	c4 06 20 	. .   
	ld (0dad8h),hl		;1f7d	22 d8 da 	" . . 
	ld a,d			;1f80	7a 	z 
	ld a,d			;1f81	7a 	z 
	ld a,d			;1f82	7a 	z 
	ld a,h			;1f83	7c 	| 
	ld a,(hl)			;1f84	7e 	~ 
	ld l,039h		;1f85	2e 39 	. 9 
	dec a			;1f87	3d 	= 
	dec c			;1f88	0d 	. 
	dec c			;1f89	0d 	. 
	dec c			;1f8a	0d 	. 
	dec c			;1f8b	0d 	. 
	dec c			;1f8c	0d 	. 
	adc a,d			;1f8d	8a 	. 
	dec hl			;1f8e	2b 	+ 
	dec hl			;1f8f	2b 	+ 
	dec hl			;1f90	2b 	+ 
	dec hl			;1f91	2b 	+ 
	push bc			;1f92	c5 	. 
	rlca			;1f93	07 	. 
	ld hl,0d923h		;1f94	21 23 d9 	! # . 
	in a,(07ah)		;1f97	db 7a 	. z 
	ld a,d			;1f99	7a 	z 
	sub d			;1f9a	92 	. 
	ld a,d			;1f9b	7a 	z 
	ld a,d			;1f9c	7a 	z 
	ld a,d			;1f9d	7a 	z 
	inc a			;1f9e	3c 	< 
	ld h,a			;1f9f	67 	g 
	ld h,(hl)			;1fa0	66 	f 
	ld h,(hl)			;1fa1	66 	f 
	add a,l			;1fa2	85 	. 
	add a,l			;1fa3	85 	. 
	add a,a			;1fa4	87 	. 
	adc a,e			;1fa5	8b 	. 
	dec hl			;1fa6	2b 	+ 
	dec hl			;1fa7	2b 	+ 
	dec hl			;1fa8	2b 	+ 
	dec hl			;1fa9	2b 	+ 
	ret nz			;1faa	c0 	. 
	inc b			;1fab	04 	. 
	jr nz,l1fd0h		;1fac	20 22 	  " 
	call nc,07ad6h		;1fae	d4 d6 7a 	. . z 
l1fb1h:
	ld a,d			;1fb1	7a 	z 
	sub e			;1fb2	93 	. 
	ld a,b			;1fb3	78 	x 
	ld a,d			;1fb4	7a 	z 
	ld l,b			;1fb5	68 	h 
	dec (hl)			;1fb6	35 	5 
	scf			;1fb7	37 	7 
	ld h,h			;1fb8	64 	d 
	dec l			;1fb9	2d 	- 
	dec l			;1fba	2d 	- 
	cpl			;1fbb	2f 	/ 
	cpl			;1fbc	2f 	/ 
	inc h			;1fbd	24 	$ 
	inc h			;1fbe	24 	$ 
	ld h,02bh		;1fbf	26 2b 	& + 
	dec hl			;1fc1	2b 	+ 
	pop bc			;1fc2	c1 	. 
	dec b			;1fc3	05 	. 
	ld hl,0d523h		;1fc4	21 23 d5 	! # . 
	rst 10h			;1fc7	d7 	. 
	ld a,d			;1fc8	7a 	z 
	ld a,d			;1fc9	7a 	z 
	ld a,d			;1fca	7a 	z 
	ld a,c			;1fcb	79 	y 
	ld a,e			;1fcc	7b 	{ 
	ld l,c			;1fcd	69 	i 
	jr c,l200ah		;1fce	38 3a 	8 : 
l1fd0h:
	ld h,l			;1fd0	65 	e 
	jr nc,l2003h		;1fd1	30 30 	0 0 
	ld (l2532h),a		;1fd3	32 32 25 	2 2 % 
	dec h			;1fd6	25 	% 
	daa			;1fd7	27 	' 
	dec hl			;1fd8	2b 	+ 
	dec hl			;1fd9	2b 	+ 
	call nz,sub_2006h		;1fda	c4 06 20 	. .   
	ld (0dad8h),hl		;1fdd	22 d8 da 	" . . 
	ld a,d			;1fe0	7a 	z 
	ld a,d			;1fe1	7a 	z 
	ld a,d			;1fe2	7a 	z 
	ld a,h			;1fe3	7c 	| 
	ld a,(hl)			;1fe4	7e 	~ 
	ld l,039h		;1fe5	2e 39 	. 9 
	dec sp			;1fe7	3b 	; 
	ld (hl),031h		;1fe8	36 31 	6 1 
	inc sp			;1fea	33 	3 
	inc sp			;1feb	33 	3 
	inc sp			;1fec	33 	3 
	jr z,l2017h		;1fed	28 28 	( ( 
	ld hl,(l2b2bh)		;1fef	2a 2b 2b 	* + + 
	push bc			;1ff2	c5 	. 
	rlca			;1ff3	07 	. 
	ld hl,0d923h		;1ff4	21 23 d9 	! # . 
	in a,(07ah)		;1ff7	db 7a 	. z 
	ld a,d			;1ff9	7a 	z 
	sub d			;1ffa	92 	. 
	ld a,d			;1ffb	7a 	z 
	ld a,d			;1ffc	7a 	z 
	ld a,d			;1ffd	7a 	z 
	inc a			;1ffe	3c 	< 
sub_1fffh:
	jr l201bh		;1fff	18 1a 	. . 
l2001h:
	inc c			;2001	0c 	. 
	xor a			;2002	af 	. 
l2003h:
	xor a			;2003	af 	. 
	dec c			;2004	0d 	. 
l2005h:
	dec c			;2005	0d 	. 
sub_2006h:
	xor (hl)			;2006	ae 	. 
	dec hl			;2007	2b 	+ 
	dec hl			;2008	2b 	+ 
	dec hl			;2009	2b 	+ 
l200ah:
	ret nz			;200a	c0 	. 
	inc b			;200b	04 	. 
	jr nz,l2030h		;200c	20 22 	  " 
	call nc,07ad6h		;200e	d4 d6 7a 	. . z 
	ld a,d			;2011	7a 	z 
	sub e			;2012	93 	. 
	ld a,b			;2013	78 	x 
	ld a,d			;2014	7a 	z 
	ld l,b			;2015	68 	h 
	dec (hl)			;2016	35 	5 
l2017h:
	add hl,de			;2017	19 	. 
	dec de			;2018	1b 	. 
	add a,(hl)			;2019	86 	. 
	add a,(hl)			;201a	86 	. 
l201bh:
	adc a,b			;201b	88 	. 
	adc a,b			;201c	88 	. 
	adc a,b			;201d	88 	. 
l201eh:
	adc a,b			;201e	88 	. 
l201fh:
	adc a,d			;201f	8a 	. 
	dec hl			;2020	2b 	+ 
l2021h:
	dec hl			;2021	2b 	+ 
l2022h:
	pop bc			;2022	c1 	. 
	dec b			;2023	05 	. 
	ld hl,0d523h		;2024	21 23 d5 	! # . 
	rst 10h			;2027	d7 	. 
	ld a,d			;2028	7a 	z 
	ld a,d			;2029	7a 	z 
	ld a,d			;202a	7a 	z 
	ld a,c			;202b	79 	y 
	ld a,e			;202c	7b 	{ 
	ld l,c			;202d	69 	i 
	jr c,l1fb1h		;202e	38 81 	8 . 
l2030h:
	add a,e			;2030	83 	. 
	add a,l			;2031	85 	. 
l2032h:
	add a,l			;2032	85 	. 
	add a,l			;2033	85 	. 
	add a,a			;2034	87 	. 
l2035h:
	adc a,c			;2035	89 	. 
	adc a,c			;2036	89 	. 
	adc a,e			;2037	8b 	. 
	dec hl			;2038	2b 	+ 
	dec hl			;2039	2b 	+ 
	call nz,sub_2006h		;203a	c4 06 20 	. .   
	ld (0dad8h),hl		;203d	22 d8 da 	" . . 
	ld a,d			;2040	7a 	z 
	ld a,d			;2041	7a 	z 
	ld a,d			;2042	7a 	z 
	ld a,h			;2043	7c 	| 
	ld a,(hl)			;2044	7e 	~ 
	ld l,039h		;2045	2e 39 	. 9 
	add hl,hl			;2047	29 	) 
	add hl,hl			;2048	29 	) 
	add hl,hl			;2049	29 	) 
	add hl,hl			;204a	29 	) 
	add hl,hl			;204b	29 	) 
	ld l,h			;204c	6c 	l 
	dec hl			;204d	2b 	+ 
	dec hl			;204e	2b 	+ 
	dec hl			;204f	2b 	+ 
	dec hl			;2050	2b 	+ 
	dec hl			;2051	2b 	+ 
	push bc			;2052	c5 	. 
	rlca			;2053	07 	. 
	ld hl,0d923h		;2054	21 23 d9 	! # . 
	in a,(029h)		;2057	db 29 	. ) 
	add hl,hl			;2059	29 	) 
	add hl,hl			;205a	29 	) 
	add hl,hl			;205b	29 	) 
	add hl,hl			;205c	29 	) 
	add hl,hl			;205d	29 	) 
	add hl,hl			;205e	29 	) 
	add hl,hl			;205f	29 	) 
	add hl,hl			;2060	29 	) 
	add hl,hl			;2061	29 	) 
	add hl,hl			;2062	29 	) 
	add hl,hl			;2063	29 	) 
	add hl,hl			;2064	29 	) 
	add hl,hl			;2065	29 	) 
	add hl,hl			;2066	29 	) 
	add hl,hl			;2067	29 	) 
	ld l,h			;2068	6c 	l 
	dec hl			;2069	2b 	+ 
	ret nz			;206a	c0 	. 
	inc b			;206b	04 	. 
	jr nz,l2090h		;206c	20 22 	  " 
	call nc,sub_29d6h		;206e	d4 d6 29 	. . ) 
	add hl,hl			;2071	29 	) 
	add hl,hl			;2072	29 	) 
	add hl,hl			;2073	29 	) 
	add hl,hl			;2074	29 	) 
	add hl,hl			;2075	29 	) 
	add hl,hl			;2076	29 	) 
	add hl,hl			;2077	29 	) 
	add hl,hl			;2078	29 	) 
	add hl,hl			;2079	29 	) 
	add hl,hl			;207a	29 	) 
	add hl,hl			;207b	29 	) 
	add hl,hl			;207c	29 	) 
	add hl,hl			;207d	29 	) 
	add hl,hl			;207e	29 	) 
	add hl,hl			;207f	29 	) 
	ld l,l			;2080	6d 	m 
	dec hl			;2081	2b 	+ 
	pop bc			;2082	c1 	. 
	dec b			;2083	05 	. 
	ld hl,0d523h		;2084	21 23 d5 	! # . 
	rst 10h			;2087	d7 	. 
	add hl,hl			;2088	29 	) 
	add hl,hl			;2089	29 	) 
	add hl,hl			;208a	29 	) 
	add hl,hl			;208b	29 	) 
	add hl,hl			;208c	29 	) 
	add hl,hl			;208d	29 	) 
	add hl,hl			;208e	29 	) 
	add hl,hl			;208f	29 	) 
l2090h:
	add hl,hl			;2090	29 	) 
	add hl,hl			;2091	29 	) 
	add hl,hl			;2092	29 	) 
	add hl,hl			;2093	29 	) 
	add hl,hl			;2094	29 	) 
	add hl,hl			;2095	29 	) 
	add hl,hl			;2096	29 	) 
	add hl,hl			;2097	29 	) 
	ld l,h			;2098	6c 	l 
	dec hl			;2099	2b 	+ 
	call nz,sub_2006h		;209a	c4 06 20 	. .   
	ld (0dad8h),hl		;209d	22 d8 da 	" . . 
	add hl,hl			;20a0	29 	) 
	add hl,hl			;20a1	29 	) 
	add hl,hl			;20a2	29 	) 
	add hl,hl			;20a3	29 	) 
	add hl,hl			;20a4	29 	) 
	add hl,hl			;20a5	29 	) 
	add hl,hl			;20a6	29 	) 
	add hl,hl			;20a7	29 	) 
	add hl,hl			;20a8	29 	) 
	add hl,hl			;20a9	29 	) 
	add hl,hl			;20aa	29 	) 
	add hl,hl			;20ab	29 	) 
	add hl,hl			;20ac	29 	) 
	add hl,hl			;20ad	29 	) 
	add hl,hl			;20ae	29 	) 
	add hl,hl			;20af	29 	) 
	ld l,l			;20b0	6d 	m 
	dec hl			;20b1	2b 	+ 
	push bc			;20b2	c5 	. 
	rlca			;20b3	07 	. 
	ld hl,0d923h		;20b4	21 23 d9 	! # . 
	in a,(029h)		;20b7	db 29 	. ) 
	add hl,hl			;20b9	29 	) 
	add hl,hl			;20ba	29 	) 
	add hl,hl			;20bb	29 	) 
	add hl,hl			;20bc	29 	) 
	add hl,hl			;20bd	29 	) 
	add hl,hl			;20be	29 	) 
	add hl,hl			;20bf	29 	) 
	add hl,hl			;20c0	29 	) 
	add hl,hl			;20c1	29 	) 
	add hl,hl			;20c2	29 	) 
	add hl,hl			;20c3	29 	) 
sub_20c4h:
	add hl,hl			;20c4	29 	) 
	add hl,hl			;20c5	29 	) 
	ret p			;20c6	f0 	. 
	ret m			;20c7	f8 	. 
	ld c,003h		;20c8	0e 03 	. . 
	call nc,0d8d6h		;20ca	d4 d6 d8 	. . . 
	jp c,0d6d4h		;20cd	da d4 d6 	. . . 
	add hl,hl			;20d0	29 	) 
	add hl,hl			;20d1	29 	) 
	add hl,hl			;20d2	29 	) 
	add hl,hl			;20d3	29 	) 
	add hl,hl			;20d4	29 	) 
	add hl,hl			;20d5	29 	) 
	add hl,hl			;20d6	29 	) 
	add hl,hl			;20d7	29 	) 
	add hl,hl			;20d8	29 	) 
	add hl,hl			;20d9	29 	) 
	add hl,hl			;20da	29 	) 
	add hl,hl			;20db	29 	) 
	add hl,hl			;20dc	29 	) 
	add hl,hl			;20dd	29 	) 
	pop af			;20de	f1 	. 
	ld sp,hl			;20df	f9 	. 
	ld hl,0d523h		;20e0	21 23 d5 	! # . 
	rst 10h			;20e3	d7 	. 
	exx			;20e4	d9 	. 
	in a,(0d5h)		;20e5	db d5 	. . 
	rst 10h			;20e7	d7 	. 
	add hl,hl			;20e8	29 	) 
	add hl,hl			;20e9	29 	) 
	add hl,hl			;20ea	29 	) 
	add hl,hl			;20eb	29 	) 
	add hl,hl			;20ec	29 	) 
	add hl,hl			;20ed	29 	) 
l20eeh:
	add hl,hl			;20ee	29 	) 
	add hl,hl			;20ef	29 	) 
	add hl,hl			;20f0	29 	) 
	add hl,hl			;20f1	29 	) 
	add hl,hl			;20f2	29 	) 
	add hl,hl			;20f3	29 	) 
	add hl,hl			;20f4	29 	) 
	add hl,hl			;20f5	29 	) 
	jp p,020fah		;20f6	f2 fa 20 	. .   
	ld (0dad8h),hl		;20f9	22 d8 da 	" . . 
sub_20fch:
	call nc,0d8d6h		;20fc	d4 d6 d8 	. . . 
	jp c,l2929h		;20ff	da 29 29 	. ) ) 
	add hl,hl			;2102	29 	) 
	add hl,hl			;2103	29 	) 
	add hl,hl			;2104	29 	) 
	add hl,hl			;2105	29 	) 
sub_2106h:
	add hl,hl			;2106	29 	) 
	add hl,hl			;2107	29 	) 
	add hl,hl			;2108	29 	) 
	add hl,hl			;2109	29 	) 
	add hl,hl			;210a	29 	) 
	add hl,hl			;210b	29 	) 
	add hl,hl			;210c	29 	) 
	add hl,hl			;210d	29 	) 
	di			;210e	f3 	. 
	ei			;210f	fb 	. 
	ld hl,0d900h		;2110	21 00 d9 	! . . 
	in a,(0d5h)		;2113	db d5 	. . 
	rst 10h			;2115	d7 	. 
	exx			;2116	d9 	. 
	in a,(029h)		;2117	db 29 	. ) 
	add hl,hl			;2119	29 	) 
	add hl,hl			;211a	29 	) 
	add hl,hl			;211b	29 	) 
	add hl,hl			;211c	29 	) 
	add hl,hl			;211d	29 	) 
	add hl,hl			;211e	29 	) 
	add hl,hl			;211f	29 	) 
	add hl,hl			;2120	29 	) 
l2121h:
	add hl,hl			;2121	29 	) 
	add hl,hl			;2122	29 	) 
	add hl,hl			;2123	29 	) 
	add hl,hl			;2124	29 	) 
	add hl,hl			;2125	29 	) 
	add hl,hl			;2126	29 	) 
	add hl,hl			;2127	29 	) 
	add hl,hl			;2128	29 	) 
	add hl,hl			;2129	29 	) 
	ret nz			;212a	c0 	. 
	inc b			;212b	04 	. 
	jr nz,l2150h		;212c	20 22 	  " 
	call nc,sub_29d6h		;212e	d4 d6 29 	. . ) 
	add hl,hl			;2131	29 	) 
	add hl,hl			;2132	29 	) 
	add hl,hl			;2133	29 	) 
	add hl,hl			;2134	29 	) 
	add hl,hl			;2135	29 	) 
	add hl,hl			;2136	29 	) 
	add hl,hl			;2137	29 	) 
	add hl,hl			;2138	29 	) 
	add hl,hl			;2139	29 	) 
	add hl,hl			;213a	29 	) 
	add hl,hl			;213b	29 	) 
	add hl,hl			;213c	29 	) 
	add hl,hl			;213d	29 	) 
	add hl,hl			;213e	29 	) 
	add hl,hl			;213f	29 	) 
	add hl,hl			;2140	29 	) 
	add hl,hl			;2141	29 	) 
	pop bc			;2142	c1 	. 
	dec b			;2143	05 	. 
	ld hl,0d523h		;2144	21 23 d5 	! # . 
	rst 10h			;2147	d7 	. 
	add hl,hl			;2148	29 	) 
	add hl,hl			;2149	29 	) 
	add hl,hl			;214a	29 	) 
	add hl,hl			;214b	29 	) 
	add hl,hl			;214c	29 	) 
	add hl,hl			;214d	29 	) 
	add hl,hl			;214e	29 	) 
	add hl,hl			;214f	29 	) 
l2150h:
	add hl,hl			;2150	29 	) 
	add hl,hl			;2151	29 	) 
	add hl,hl			;2152	29 	) 
	add hl,hl			;2153	29 	) 
	add hl,hl			;2154	29 	) 
	add hl,hl			;2155	29 	) 
	add hl,hl			;2156	29 	) 
	add hl,hl			;2157	29 	) 
	add hl,hl			;2158	29 	) 
	add hl,hl			;2159	29 	) 
	call nz,sub_2006h		;215a	c4 06 20 	. .   
	ld (0dad8h),hl		;215d	22 d8 da 	" . . 
	add hl,hl			;2160	29 	) 
	add hl,hl			;2161	29 	) 
	add hl,hl			;2162	29 	) 
	add hl,hl			;2163	29 	) 
	add hl,hl			;2164	29 	) 
	add hl,hl			;2165	29 	) 
	add hl,hl			;2166	29 	) 
	add hl,hl			;2167	29 	) 
	add hl,hl			;2168	29 	) 
	add hl,hl			;2169	29 	) 
	add hl,hl			;216a	29 	) 
	add hl,hl			;216b	29 	) 
	add hl,hl			;216c	29 	) 
	add hl,hl			;216d	29 	) 
	add hl,hl			;216e	29 	) 
	add hl,hl			;216f	29 	) 
	add hl,hl			;2170	29 	) 
	add hl,hl			;2171	29 	) 
	push bc			;2172	c5 	. 
	rlca			;2173	07 	. 
	ld hl,0d923h		;2174	21 23 d9 	! # . 
	in a,(029h)		;2177	db 29 	. ) 
	add hl,hl			;2179	29 	) 
	add hl,hl			;217a	29 	) 
	add hl,hl			;217b	29 	) 
	add hl,hl			;217c	29 	) 
	add hl,hl			;217d	29 	) 
	add hl,hl			;217e	29 	) 
	add hl,hl			;217f	29 	) 
	add hl,hl			;2180	29 	) 
	add hl,hl			;2181	29 	) 
	add hl,hl			;2182	29 	) 
	add hl,hl			;2183	29 	) 
	add hl,hl			;2184	29 	) 
	add hl,hl			;2185	29 	) 
	add hl,hl			;2186	29 	) 
	add hl,hl			;2187	29 	) 
	add hl,hl			;2188	29 	) 
	add hl,hl			;2189	29 	) 
	add hl,hl			;218a	29 	) 
	add hl,hl			;218b	29 	) 
	add hl,hl			;218c	29 	) 
	add hl,hl			;218d	29 	) 
	add hl,hl			;218e	29 	) 
	add hl,hl			;218f	29 	) 
	add hl,hl			;2190	29 	) 
	add hl,hl			;2191	29 	) 
	add hl,hl			;2192	29 	) 
	add hl,hl			;2193	29 	) 
	add hl,hl			;2194	29 	) 
	add hl,hl			;2195	29 	) 
	add hl,hl			;2196	29 	) 
	add hl,hl			;2197	29 	) 
	add hl,hl			;2198	29 	) 
	add hl,hl			;2199	29 	) 
	add hl,hl			;219a	29 	) 
	add hl,hl			;219b	29 	) 
	add hl,hl			;219c	29 	) 
	add hl,hl			;219d	29 	) 
	add hl,hl			;219e	29 	) 
	add hl,hl			;219f	29 	) 
	add hl,hl			;21a0	29 	) 
	add hl,hl			;21a1	29 	) 
	add hl,hl			;21a2	29 	) 
	add hl,hl			;21a3	29 	) 
	add hl,hl			;21a4	29 	) 
	add hl,hl			;21a5	29 	) 
	add hl,hl			;21a6	29 	) 
	add hl,hl			;21a7	29 	) 
	add hl,hl			;21a8	29 	) 
	add hl,hl			;21a9	29 	) 
	add hl,hl			;21aa	29 	) 
	add hl,hl			;21ab	29 	) 
	add hl,hl			;21ac	29 	) 
	add hl,hl			;21ad	29 	) 
	add hl,hl			;21ae	29 	) 
	add hl,hl			;21af	29 	) 
	add hl,hl			;21b0	29 	) 
	add hl,hl			;21b1	29 	) 
	add hl,hl			;21b2	29 	) 
	add hl,hl			;21b3	29 	) 
	add hl,hl			;21b4	29 	) 
	add hl,hl			;21b5	29 	) 
	add hl,hl			;21b6	29 	) 
	add hl,hl			;21b7	29 	) 
	add hl,hl			;21b8	29 	) 
	add hl,hl			;21b9	29 	) 
	add hl,hl			;21ba	29 	) 
	add hl,hl			;21bb	29 	) 
	add hl,hl			;21bc	29 	) 
	add hl,hl			;21bd	29 	) 
	add hl,hl			;21be	29 	) 
	add hl,hl			;21bf	29 	) 
	add hl,hl			;21c0	29 	) 
	add hl,hl			;21c1	29 	) 
	add hl,hl			;21c2	29 	) 
	add hl,hl			;21c3	29 	) 
	add hl,hl			;21c4	29 	) 
	add hl,hl			;21c5	29 	) 
	add hl,hl			;21c6	29 	) 
	add hl,hl			;21c7	29 	) 
	add hl,hl			;21c8	29 	) 
	add hl,hl			;21c9	29 	) 
	add hl,hl			;21ca	29 	) 
	add hl,hl			;21cb	29 	) 
	add hl,hl			;21cc	29 	) 
	add hl,hl			;21cd	29 	) 
	add hl,hl			;21ce	29 	) 
	add hl,hl			;21cf	29 	) 
	add hl,hl			;21d0	29 	) 
	add hl,hl			;21d1	29 	) 
	add hl,hl			;21d2	29 	) 
	add hl,hl			;21d3	29 	) 
	add hl,hl			;21d4	29 	) 
	add hl,hl			;21d5	29 	) 
	add hl,hl			;21d6	29 	) 
	add hl,hl			;21d7	29 	) 
	add hl,hl			;21d8	29 	) 
	add hl,hl			;21d9	29 	) 
	add hl,hl			;21da	29 	) 
	add hl,hl			;21db	29 	) 
	add hl,hl			;21dc	29 	) 
	add hl,hl			;21dd	29 	) 
	add hl,hl			;21de	29 	) 
	add hl,hl			;21df	29 	) 
	add hl,hl			;21e0	29 	) 
	add hl,hl			;21e1	29 	) 
	add hl,hl			;21e2	29 	) 
	add hl,hl			;21e3	29 	) 
	add hl,hl			;21e4	29 	) 
	add hl,hl			;21e5	29 	) 
	add hl,hl			;21e6	29 	) 
	ret nz			;21e7	c0 	. 
	inc b			;21e8	04 	. 
	jr nz,l220dh		;21e9	20 22 	  " 
	call nc,0d4d6h		;21eb	d4 d6 d4 	. . . 
	sub 0d4h		;21ee	d6 d4 	. . 
	add hl,hl			;21f0	29 	) 
	add hl,hl			;21f1	29 	) 
	add hl,hl			;21f2	29 	) 
	add hl,hl			;21f3	29 	) 
	add hl,hl			;21f4	29 	) 
	add hl,hl			;21f5	29 	) 
	add hl,hl			;21f6	29 	) 
	add hl,hl			;21f7	29 	) 
	add hl,hl			;21f8	29 	) 
	add hl,hl			;21f9	29 	) 
	add hl,hl			;21fa	29 	) 
	add hl,hl			;21fb	29 	) 
	add hl,hl			;21fc	29 	) 
	add hl,hl			;21fd	29 	) 
	add hl,hl			;21fe	29 	) 
	pop bc			;21ff	c1 	. 
	dec b			;2200	05 	. 
	ld hl,0d523h		;2201	21 23 d5 	! # . 
	rst 10h			;2204	d7 	. 
	push de			;2205	d5 	. 
	rst 10h			;2206	d7 	. 
	push de			;2207	d5 	. 
	add hl,hl			;2208	29 	) 
	add hl,hl			;2209	29 	) 
	add hl,hl			;220a	29 	) 
	add hl,hl			;220b	29 	) 
	add hl,hl			;220c	29 	) 
l220dh:
	add hl,hl			;220d	29 	) 
	add hl,hl			;220e	29 	) 
	add hl,hl			;220f	29 	) 
	add hl,hl			;2210	29 	) 
	add hl,hl			;2211	29 	) 
	add hl,hl			;2212	29 	) 
	add hl,hl			;2213	29 	) 
	add hl,hl			;2214	29 	) 
	add hl,hl			;2215	29 	) 
	add hl,hl			;2216	29 	) 
	call nz,sub_2006h		;2217	c4 06 20 	. .   
	ld (0dad8h),hl		;221a	22 d8 da 	" . . 
	ret c			;221d	d8 	. 
	jp c,l29d8h		;221e	da d8 29 	. . ) 
	add hl,hl			;2221	29 	) 
	add hl,hl			;2222	29 	) 
	add hl,hl			;2223	29 	) 
	add hl,hl			;2224	29 	) 
	add hl,hl			;2225	29 	) 
	add hl,hl			;2226	29 	) 
	add hl,hl			;2227	29 	) 
	add hl,hl			;2228	29 	) 
	add hl,hl			;2229	29 	) 
	add hl,hl			;222a	29 	) 
	add hl,hl			;222b	29 	) 
	add hl,hl			;222c	29 	) 
	add hl,hl			;222d	29 	) 
	add hl,hl			;222e	29 	) 
	push bc			;222f	c5 	. 
	rlca			;2230	07 	. 
	ld hl,0d923h		;2231	21 23 d9 	! # . 
	in a,(0d9h)		;2234	db d9 	. . 
	in a,(0d9h)		;2236	db d9 	. . 
	add hl,hl			;2238	29 	) 
	add hl,hl			;2239	29 	) 
	add hl,hl			;223a	29 	) 
	add hl,hl			;223b	29 	) 
	add hl,hl			;223c	29 	) 
	add hl,hl			;223d	29 	) 
	add hl,hl			;223e	29 	) 
	add hl,hl			;223f	29 	) 
	add hl,hl			;2240	29 	) 
	add hl,hl			;2241	29 	) 
	add hl,hl			;2242	29 	) 
	add hl,hl			;2243	29 	) 
	add hl,hl			;2244	29 	) 
	add hl,hl			;2245	29 	) 
	add hl,hl			;2246	29 	) 
	call p,sub_20fch		;2247	f4 fc 20 	. .   
	dec bc			;224a	0b 	. 
	call nc,0d8d6h		;224b	d4 d6 d8 	. . . 
	jp c,l29d4h		;224e	da d4 29 	. . ) 
	add hl,hl			;2251	29 	) 
	add hl,hl			;2252	29 	) 
	add hl,hl			;2253	29 	) 
	add hl,hl			;2254	29 	) 
	add hl,hl			;2255	29 	) 
	add hl,hl			;2256	29 	) 
	add hl,hl			;2257	29 	) 
	add hl,hl			;2258	29 	) 
	add hl,hl			;2259	29 	) 
	add hl,hl			;225a	29 	) 
	add hl,hl			;225b	29 	) 
	add hl,hl			;225c	29 	) 
	add hl,hl			;225d	29 	) 
	add hl,hl			;225e	29 	) 
	push af			;225f	f5 	. 
	ld iy,0d523h		;2260	fd 21 23 d5 	. ! # . 
	rst 10h			;2264	d7 	. 
	exx			;2265	d9 	. 
	in a,(0d5h)		;2266	db d5 	. . 
	add hl,hl			;2268	29 	) 
	add hl,hl			;2269	29 	) 
	add hl,hl			;226a	29 	) 
	add hl,hl			;226b	29 	) 
	add hl,hl			;226c	29 	) 
	add hl,hl			;226d	29 	) 
	add hl,hl			;226e	29 	) 
	add hl,hl			;226f	29 	) 
	add hl,hl			;2270	29 	) 
	add hl,hl			;2271	29 	) 
	add hl,hl			;2272	29 	) 
	add hl,hl			;2273	29 	) 
	add hl,hl			;2274	29 	) 
	add hl,hl			;2275	29 	) 
	add hl,hl			;2276	29 	) 
	or 0feh		;2277	f6 fe 	. . 
	jr nz,l229dh		;2279	20 22 	  " 
	ret c			;227b	d8 	. 
	jp c,0d6d4h		;227c	da d4 d6 	. . . 
	ret c			;227f	d8 	. 
	add hl,hl			;2280	29 	) 
	add hl,hl			;2281	29 	) 
	add hl,hl			;2282	29 	) 
	add hl,hl			;2283	29 	) 
	add hl,hl			;2284	29 	) 
	add hl,hl			;2285	29 	) 
	add hl,hl			;2286	29 	) 
	add hl,hl			;2287	29 	) 
	add hl,hl			;2288	29 	) 
	add hl,hl			;2289	29 	) 
	add hl,hl			;228a	29 	) 
	add hl,hl			;228b	29 	) 
	add hl,hl			;228c	29 	) 
	add hl,hl			;228d	29 	) 
	add hl,hl			;228e	29 	) 
	rst 30h			;228f	f7 	. 
	rst 38h			;2290	ff 	. 
	rrca			;2291	0f 	. 
	ld a,(bc)			;2292	0a 	. 
	exx			;2293	d9 	. 
	in a,(0d5h)		;2294	db d5 	. . 
	rst 10h			;2296	d7 	. 
	exx			;2297	d9 	. 
	nop			;2298	00 	. 
	nop			;2299	00 	. 
	ld l,h			;229a	6c 	l 
	ld l,(hl)			;229b	6e 	n 
	ld (hl),h			;229c	74 	t 
l229dh:
	halt			;229d	76 	v 
	ld h,h			;229e	64 	d 
	ld h,(hl)			;229f	66 	f 
	inc a			;22a0	3c 	< 
	ld a,044h		;22a1	3e 44 	> D 
	ld b,(hl)			;22a3	46 	F 
	ld c,h			;22a4	4c 	L 
	ld c,(hl)			;22a5	4e 	N 
	ld d,h			;22a6	54 	T 
	ld d,(hl)			;22a7	56 	V 
	ld e,h			;22a8	5c 	\ 
	ld e,(hl)			;22a9	5e 	^ 
	ld h,h			;22aa	64 	d 
	ld h,(hl)			;22ab	66 	f 
	inc a			;22ac	3c 	< 
	ld a,044h		;22ad	3e 44 	> D 
	ld b,(hl)			;22af	46 	F 
	nop			;22b0	00 	. 
	nop			;22b1	00 	. 
	ld l,l			;22b2	6d 	m 
	ld l,a			;22b3	6f 	o 
	ld (hl),l			;22b4	75 	u 
	ld (hl),a			;22b5	77 	w 
	ld h,l			;22b6	65 	e 
	ld h,a			;22b7	67 	g 
	dec a			;22b8	3d 	= 
	ccf			;22b9	3f 	? 
	ld b,l			;22ba	45 	E 
	ld b,a			;22bb	47 	G 
	ld c,l			;22bc	4d 	M 
	ld c,a			;22bd	4f 	O 
	ld d,l			;22be	55 	U 
	ld d,a			;22bf	57 	W 
	ld e,l			;22c0	5d 	] 
	ld e,a			;22c1	5f 	_ 
	ld h,l			;22c2	65 	e 
	ld h,a			;22c3	67 	g 
	dec a			;22c4	3d 	= 
	ccf			;22c5	3f 	? 
	ld b,l			;22c6	45 	E 
	ld b,a			;22c7	47 	G 
	nop			;22c8	00 	. 
	nop			;22c9	00 	. 
	ld (hl),b			;22ca	70 	p 
	ld (hl),d			;22cb	72 	r 
	ld a,b			;22cc	78 	x 
	ld a,d			;22cd	7a 	z 
	ld l,b			;22ce	68 	h 
	ld l,d			;22cf	6a 	j 
	ld b,b			;22d0	40 	@ 
	ld b,d			;22d1	42 	B 
	ld c,b			;22d2	48 	H 
	ld c,d			;22d3	4a 	J 
	ld d,b			;22d4	50 	P 
	ld d,d			;22d5	52 	R 
	ld e,b			;22d6	58 	X 
	ld e,d			;22d7	5a 	Z 
	ld h,b			;22d8	60 	` 
	ld h,d			;22d9	62 	b 
	ld l,b			;22da	68 	h 
	ld l,d			;22db	6a 	j 
	ld b,b			;22dc	40 	@ 
	ld b,d			;22dd	42 	B 
	ld c,b			;22de	48 	H 
	ld c,d			;22df	4a 	J 
	nop			;22e0	00 	. 
	nop			;22e1	00 	. 
	ld (hl),c			;22e2	71 	q 
	ld (hl),e			;22e3	73 	s 
	ld a,c			;22e4	79 	y 
	ld a,e			;22e5	7b 	{ 
	ld l,c			;22e6	69 	i 
	ld l,e			;22e7	6b 	k 
	ld b,c			;22e8	41 	A 
	ld b,e			;22e9	43 	C 
	ld c,c			;22ea	49 	I 
	ld c,e			;22eb	4b 	K 
	ld d,c			;22ec	51 	Q 
	ld d,e			;22ed	53 	S 
	ld e,c			;22ee	59 	Y 
	ld e,e			;22ef	5b 	[ 
	ld h,c			;22f0	61 	a 
	ld h,e			;22f1	63 	c 
	ld l,c			;22f2	69 	i 
	ld l,e			;22f3	6b 	k 
	ld b,c			;22f4	41 	A 
	ld b,e			;22f5	43 	C 
	ld c,c			;22f6	49 	I 
	ld c,e			;22f7	4b 	K 
	rla			;22f8	17 	. 
	rla			;22f9	17 	. 
	rla			;22fa	17 	. 
	rla			;22fb	17 	. 
	rla			;22fc	17 	. 
	rla			;22fd	17 	. 
	rla			;22fe	17 	. 
	rla			;22ff	17 	. 
	rla			;2300	17 	. 
l2301h:
	rla			;2301	17 	. 
	rla			;2302	17 	. 
	rla			;2303	17 	. 
	rla			;2304	17 	. 
l2305h:
	rla			;2305	17 	. 
	rla			;2306	17 	. 
	rla			;2307	17 	. 
	rla			;2308	17 	. 
	rla			;2309	17 	. 
	rla			;230a	17 	. 
	rla			;230b	17 	. 
	rla			;230c	17 	. 
	rla			;230d	17 	. 
	rla			;230e	17 	. 
	rla			;230f	17 	. 
	rla			;2310	17 	. 
	rla			;2311	17 	. 
	rla			;2312	17 	. 
	rla			;2313	17 	. 
	rla			;2314	17 	. 
	rla			;2315	17 	. 
	rla			;2316	17 	. 
	rla			;2317	17 	. 
	rla			;2318	17 	. 
	rla			;2319	17 	. 
	rla			;231a	17 	. 
	rla			;231b	17 	. 
	rla			;231c	17 	. 
	rla			;231d	17 	. 
	rla			;231e	17 	. 
	rla			;231f	17 	. 
	rla			;2320	17 	. 
sub_2321h:
	rla			;2321	17 	. 
	rla			;2322	17 	. 
	rla			;2323	17 	. 
	rla			;2324	17 	. 
	rla			;2325	17 	. 
	rla			;2326	17 	. 
	rla			;2327	17 	. 
	rla			;2328	17 	. 
	rla			;2329	17 	. 
l232ah:
	rla			;232a	17 	. 
	rla			;232b	17 	. 
	rla			;232c	17 	. 
	rla			;232d	17 	. 
	rla			;232e	17 	. 
	rla			;232f	17 	. 
	rla			;2330	17 	. 
	rla			;2331	17 	. 
	rla			;2332	17 	. 
	rla			;2333	17 	. 
	rla			;2334	17 	. 
	rla			;2335	17 	. 
	rla			;2336	17 	. 
	rla			;2337	17 	. 
	rla			;2338	17 	. 
	rla			;2339	17 	. 
	rla			;233a	17 	. 
	rla			;233b	17 	. 
	rla			;233c	17 	. 
	rla			;233d	17 	. 
	rla			;233e	17 	. 
	rla			;233f	17 	. 
	rla			;2340	17 	. 
	rla			;2341	17 	. 
	rla			;2342	17 	. 
	rla			;2343	17 	. 
	rla			;2344	17 	. 
	rla			;2345	17 	. 
	rla			;2346	17 	. 
	rla			;2347	17 	. 
	rla			;2348	17 	. 
	rla			;2349	17 	. 
	rla			;234a	17 	. 
	rla			;234b	17 	. 
	rla			;234c	17 	. 
	rla			;234d	17 	. 
	rla			;234e	17 	. 
	rla			;234f	17 	. 
	rla			;2350	17 	. 
	rla			;2351	17 	. 
	rla			;2352	17 	. 
	rla			;2353	17 	. 
	rla			;2354	17 	. 
	rla			;2355	17 	. 
	rla			;2356	17 	. 
	rla			;2357	17 	. 
	sbc a,h			;2358	9c 	. 
	sbc a,l			;2359	9d 	. 
	sbc a,h			;235a	9c 	. 
	sbc a,l			;235b	9d 	. 
	sbc a,h			;235c	9c 	. 
	sbc a,l			;235d	9d 	. 
	sbc a,h			;235e	9c 	. 
	sbc a,l			;235f	9d 	. 
	sbc a,h			;2360	9c 	. 
	sbc a,l			;2361	9d 	. 
	sbc a,h			;2362	9c 	. 
	sbc a,l			;2363	9d 	. 
	sbc a,h			;2364	9c 	. 
	sbc a,l			;2365	9d 	. 
	sbc a,h			;2366	9c 	. 
	sbc a,l			;2367	9d 	. 
	sbc a,h			;2368	9c 	. 
	sbc a,l			;2369	9d 	. 
	sbc a,h			;236a	9c 	. 
	sbc a,l			;236b	9d 	. 
	sbc a,h			;236c	9c 	. 
	sbc a,l			;236d	9d 	. 
	sbc a,h			;236e	9c 	. 
	sbc a,l			;236f	9d 	. 
	sbc a,l			;2370	9d 	. 
	sbc a,(hl)			;2371	9e 	. 
	sbc a,l			;2372	9d 	. 
	sbc a,(hl)			;2373	9e 	. 
	sbc a,l			;2374	9d 	. 
	sbc a,(hl)			;2375	9e 	. 
	sbc a,l			;2376	9d 	. 
	sbc a,(hl)			;2377	9e 	. 
	sbc a,l			;2378	9d 	. 
	sbc a,(hl)			;2379	9e 	. 
	sbc a,l			;237a	9d 	. 
	sbc a,(hl)			;237b	9e 	. 
	sbc a,l			;237c	9d 	. 
	sbc a,(hl)			;237d	9e 	. 
	sbc a,l			;237e	9d 	. 
	sbc a,(hl)			;237f	9e 	. 
	sbc a,l			;2380	9d 	. 
	sbc a,(hl)			;2381	9e 	. 
	sbc a,l			;2382	9d 	. 
	sbc a,(hl)			;2383	9e 	. 
	sbc a,l			;2384	9d 	. 
	sbc a,(hl)			;2385	9e 	. 
	sbc a,l			;2386	9d 	. 
	sbc a,(hl)			;2387	9e 	. 
	sbc a,l			;2388	9d 	. 
	sbc a,h			;2389	9c 	. 
	sbc a,l			;238a	9d 	. 
	sbc a,h			;238b	9c 	. 
	sbc a,l			;238c	9d 	. 
	sbc a,h			;238d	9c 	. 
	sbc a,l			;238e	9d 	. 
	sbc a,h			;238f	9c 	. 
	sbc a,l			;2390	9d 	. 
	sbc a,h			;2391	9c 	. 
	sbc a,l			;2392	9d 	. 
	sbc a,h			;2393	9c 	. 
	sbc a,l			;2394	9d 	. 
	sbc a,h			;2395	9c 	. 
	sbc a,l			;2396	9d 	. 
	sbc a,h			;2397	9c 	. 
	sbc a,l			;2398	9d 	. 
	sbc a,h			;2399	9c 	. 
	sbc a,l			;239a	9d 	. 
	sbc a,h			;239b	9c 	. 
	sbc a,l			;239c	9d 	. 
	sbc a,h			;239d	9c 	. 
	sbc a,l			;239e	9d 	. 
	sbc a,h			;239f	9c 	. 
	sbc a,(hl)			;23a0	9e 	. 
	sbc a,l			;23a1	9d 	. 
	sbc a,(hl)			;23a2	9e 	. 
	sbc a,l			;23a3	9d 	. 
	sbc a,(hl)			;23a4	9e 	. 
	sbc a,l			;23a5	9d 	. 
	sbc a,(hl)			;23a6	9e 	. 
	sbc a,l			;23a7	9d 	. 
	sbc a,(hl)			;23a8	9e 	. 
	sbc a,l			;23a9	9d 	. 
	sbc a,(hl)			;23aa	9e 	. 
	sbc a,l			;23ab	9d 	. 
	sbc a,(hl)			;23ac	9e 	. 
	sbc a,l			;23ad	9d 	. 
	sbc a,(hl)			;23ae	9e 	. 
	sbc a,l			;23af	9d 	. 
	sbc a,(hl)			;23b0	9e 	. 
	sbc a,l			;23b1	9d 	. 
	sbc a,(hl)			;23b2	9e 	. 
	sbc a,l			;23b3	9d 	. 
	sbc a,(hl)			;23b4	9e 	. 
	sbc a,l			;23b5	9d 	. 
	sbc a,(hl)			;23b6	9e 	. 
	sbc a,l			;23b7	9d 	. 
	ld d,016h		;23b8	16 16 	. . 
	ld d,016h		;23ba	16 16 	. . 
	ld d,016h		;23bc	16 16 	. . 
	ld d,016h		;23be	16 16 	. . 
	ld d,016h		;23c0	16 16 	. . 
	ld d,016h		;23c2	16 16 	. . 
	ld d,016h		;23c4	16 16 	. . 
	ld d,016h		;23c6	16 16 	. . 
	ld d,016h		;23c8	16 16 	. . 
	ld d,016h		;23ca	16 16 	. . 
	ld d,054h		;23cc	16 54 	. T 
	ld e,a			;23ce	5f 	_ 
	rla			;23cf	17 	. 
	ld d,016h		;23d0	16 16 	. . 
	ld d,016h		;23d2	16 16 	. . 
	ld d,016h		;23d4	16 16 	. . 
	ld d,016h		;23d6	16 16 	. . 
	ld d,016h		;23d8	16 16 	. . 
	ld d,016h		;23da	16 16 	. . 
	ld d,016h		;23dc	16 16 	. . 
	ld d,016h		;23de	16 16 	. . 
	ld d,016h		;23e0	16 16 	. . 
	ld d,016h		;23e2	16 16 	. . 
	ld d,055h		;23e4	16 55 	. U 
	rla			;23e6	17 	. 
	rla			;23e7	17 	. 
	ld d,016h		;23e8	16 16 	. . 
	ld d,016h		;23ea	16 16 	. . 
	ld d,016h		;23ec	16 16 	. . 
	ld d,016h		;23ee	16 16 	. . 
	ld d,016h		;23f0	16 16 	. . 
	ld d,016h		;23f2	16 16 	. . 
	ld d,016h		;23f4	16 16 	. . 
	ld d,016h		;23f6	16 16 	. . 
	ld d,016h		;23f8	16 16 	. . 
	ld d,016h		;23fa	16 16 	. . 
	ld d,056h		;23fc	16 56 	. V 
	rla			;23fe	17 	. 
	ld h,d			;23ff	62 	b 
	ld d,016h		;2400	16 16 	. . 
	ld d,016h		;2402	16 16 	. . 
	ld d,016h		;2404	16 16 	. . 
	ld d,016h		;2406	16 16 	. . 
	ld d,016h		;2408	16 16 	. . 
	ld d,016h		;240a	16 16 	. . 
	ld d,016h		;240c	16 16 	. . 
	ld d,016h		;240e	16 16 	. . 
	ld d,016h		;2410	16 16 	. . 
	ld d,016h		;2412	16 16 	. . 
	ld d,057h		;2414	16 57 	. W 
	ld e,(hl)			;2416	5e 	^ 
	rla			;2417	17 	. 
	ld d,016h		;2418	16 16 	. . 
	ld d,016h		;241a	16 16 	. . 
	ld d,016h		;241c	16 16 	. . 
	ld d,016h		;241e	16 16 	. . 
	ld d,016h		;2420	16 16 	. . 
	ld d,016h		;2422	16 16 	. . 
	ld d,016h		;2424	16 16 	. . 
	ld d,016h		;2426	16 16 	. . 
	ld d,016h		;2428	16 16 	. . 
	call nc,04842h		;242a	d4 42 48 	. B H 
	ld d,b			;242d	50 	P 
	ld e,a			;242e	5f 	_ 
	rla			;242f	17 	. 
	ld d,016h		;2430	16 16 	. . 
	ld d,016h		;2432	16 16 	. . 
	ld d,016h		;2434	16 16 	. . 
	ld d,016h		;2436	16 16 	. . 
	ld d,016h		;2438	16 16 	. . 
	ld d,016h		;243a	16 16 	. . 
	ld d,016h		;243c	16 16 	. . 
	ld d,016h		;243e	16 16 	. . 
	ld d,016h		;2440	16 16 	. . 
	push de			;2442	d5 	. 
	ld b,e			;2443	43 	C 
	ld c,c			;2444	49 	I 
	ld d,c			;2445	51 	Q 
	ld h,d			;2446	62 	b 
	rla			;2447	17 	. 
	ld d,016h		;2448	16 16 	. . 
	ld d,016h		;244a	16 16 	. . 
	ld d,016h		;244c	16 16 	. . 
	ld d,016h		;244e	16 16 	. . 
	ld d,016h		;2450	16 16 	. . 
	ld d,016h		;2452	16 16 	. . 
	ld d,016h		;2454	16 16 	. . 
	ld d,016h		;2456	16 16 	. . 
	ld d,016h		;2458	16 16 	. . 
	call nc,04c42h		;245a	d4 42 4c 	. B L 
	ld d,d			;245d	52 	R 
	rla			;245e	17 	. 
	ld h,d			;245f	62 	b 
	ld d,016h		;2460	16 16 	. . 
	ld d,016h		;2462	16 16 	. . 
	ld d,016h		;2464	16 16 	. . 
	ld d,016h		;2466	16 16 	. . 
	ld d,016h		;2468	16 16 	. . 
	ld d,016h		;246a	16 16 	. . 
	ld d,016h		;246c	16 16 	. . 
	ld d,016h		;246e	16 16 	. . 
	ld d,016h		;2470	16 16 	. . 
	push de			;2472	d5 	. 
	ld b,e			;2473	43 	C 
	ld c,l			;2474	4d 	M 
	ld d,e			;2475	53 	S 
	ld e,(hl)			;2476	5e 	^ 
	rla			;2477	17 	. 
	ld d,061h		;2478	16 61 	. a 
	ld d,061h		;247a	16 61 	. a 
	rla			;247c	17 	. 
	ld e,b			;247d	58 	X 
	ld e,c			;247e	59 	Y 
	ld e,b			;247f	58 	X 
	ld e,c			;2480	59 	Y 
	ld e,b			;2481	58 	X 
	ld e,c			;2482	59 	Y 
	ld e,b			;2483	58 	X 
	ld e,c			;2484	59 	Y 
	ld e,b			;2485	58 	X 
	ld e,c			;2486	59 	Y 
	ld e,b			;2487	58 	X 
	ld e,c			;2488	59 	Y 
	ld e,b			;2489	58 	X 
	call 0c9c8h		;248a	cd c8 c9 	. . . 
	ret z			;248d	c8 	. 
	ret			;248e	c9 	. 
	ret z			;248f	c8 	. 
	ld e,h			;2490	5c 	\ 
	sub c			;2491	91 	. 
	ld e,h			;2492	5c 	\ 
	sub c			;2493	91 	. 
	rla			;2494	17 	. 
	ld e,c			;2495	59 	Y 
	ld e,b			;2496	58 	X 
	ld e,c			;2497	59 	Y 
	ld e,b			;2498	58 	X 
	ld e,c			;2499	59 	Y 
	ld e,b			;249a	58 	X 
	ld e,c			;249b	59 	Y 
	ld e,b			;249c	58 	X 
	ld e,c			;249d	59 	Y 
	ld e,b			;249e	58 	X 
	ld e,c			;249f	59 	Y 
	ld e,b			;24a0	58 	X 
	ld e,c			;24a1	59 	Y 
l24a2h:
	call 0c8c9h		;24a2	cd c9 c8 	. . . 
	ret			;24a5	c9 	. 
	ret z			;24a6	c8 	. 
	ret			;24a7	c9 	. 
	ld d,061h		;24a8	16 61 	. a 
	ld d,061h		;24aa	16 61 	. a 
	rla			;24ac	17 	. 
	ld e,b			;24ad	58 	X 
	ld e,c			;24ae	59 	Y 
	ld e,b			;24af	58 	X 
	ld e,c			;24b0	59 	Y 
	ld e,b			;24b1	58 	X 
	ld e,c			;24b2	59 	Y 
	ld e,b			;24b3	58 	X 
	ld e,c			;24b4	59 	Y 
	ld e,b			;24b5	58 	X 
	ld e,c			;24b6	59 	Y 
	ld e,b			;24b7	58 	X 
	ld e,c			;24b8	59 	Y 
	ld e,b			;24b9	58 	X 
	call 0c9c8h		;24ba	cd c8 c9 	. . . 
	ret z			;24bd	c8 	. 
	ret			;24be	c9 	. 
	ret z			;24bf	c8 	. 
	ld e,h			;24c0	5c 	\ 
	sub c			;24c1	91 	. 
	ld e,h			;24c2	5c 	\ 
	sub c			;24c3	91 	. 
	rla			;24c4	17 	. 
	ld e,c			;24c5	59 	Y 
	ld e,b			;24c6	58 	X 
	ld e,c			;24c7	59 	Y 
	ld e,b			;24c8	58 	X 
	ld e,c			;24c9	59 	Y 
	ld e,b			;24ca	58 	X 
	ld e,c			;24cb	59 	Y 
	ld e,b			;24cc	58 	X 
	ld e,c			;24cd	59 	Y 
	ld e,b			;24ce	58 	X 
	ld e,c			;24cf	59 	Y 
	ld e,b			;24d0	58 	X 
	ld e,c			;24d1	59 	Y 
	call 0c8c9h		;24d2	cd c9 c8 	. . . 
	ret			;24d5	c9 	. 
	ret z			;24d6	c8 	. 
	ret			;24d7	c9 	. 
	rla			;24d8	17 	. 
	ld e,b			;24d9	58 	X 
	ld e,c			;24da	59 	Y 
	ld e,b			;24db	58 	X 
	ld e,c			;24dc	59 	Y 
	ld e,b			;24dd	58 	X 
	ld e,c			;24de	59 	Y 
	ld e,b			;24df	58 	X 
	ld e,c			;24e0	59 	Y 
	ld e,b			;24e1	58 	X 
	call 0c9c8h		;24e2	cd c8 c9 	. . . 
	ret z			;24e5	c8 	. 
	ret			;24e6	c9 	. 
	ret z			;24e7	c8 	. 
	ret			;24e8	c9 	. 
	ret z			;24e9	c8 	. 
	ret			;24ea	c9 	. 
	ret z			;24eb	c8 	. 
	ret			;24ec	c9 	. 
	ret z			;24ed	c8 	. 
	ret			;24ee	c9 	. 
	ret z			;24ef	c8 	. 
	rla			;24f0	17 	. 
	ld e,c			;24f1	59 	Y 
	ld e,b			;24f2	58 	X 
	ld e,c			;24f3	59 	Y 
	ld e,b			;24f4	58 	X 
	ld e,c			;24f5	59 	Y 
	ld e,b			;24f6	58 	X 
	ld e,c			;24f7	59 	Y 
	ld e,b			;24f8	58 	X 
	ld e,c			;24f9	59 	Y 
	call 0c8c9h		;24fa	cd c9 c8 	. . . 
	ret			;24fd	c9 	. 
	ret z			;24fe	c8 	. 
	ret			;24ff	c9 	. 
	ret z			;2500	c8 	. 
	ret			;2501	c9 	. 
	ret z			;2502	c8 	. 
	ret			;2503	c9 	. 
	ret z			;2504	c8 	. 
	ret			;2505	c9 	. 
	ret z			;2506	c8 	. 
	ret			;2507	c9 	. 
	rla			;2508	17 	. 
	ld e,b			;2509	58 	X 
	ld e,c			;250a	59 	Y 
l250bh:
	ld e,b			;250b	58 	X 
	ld e,c			;250c	59 	Y 
	ld e,b			;250d	58 	X 
	ld e,c			;250e	59 	Y 
	ld e,b			;250f	58 	X 
	ld e,c			;2510	59 	Y 
	ld e,b			;2511	58 	X 
	call 0c9c8h		;2512	cd c8 c9 	. . . 
	ret z			;2515	c8 	. 
	ret			;2516	c9 	. 
	ret z			;2517	c8 	. 
	ret			;2518	c9 	. 
	ret z			;2519	c8 	. 
	ret			;251a	c9 	. 
	ret z			;251b	c8 	. 
	ret			;251c	c9 	. 
	ret z			;251d	c8 	. 
	ret			;251e	c9 	. 
	ret z			;251f	c8 	. 
	rla			;2520	17 	. 
	ld e,c			;2521	59 	Y 
	ld e,b			;2522	58 	X 
	ld e,c			;2523	59 	Y 
	ld e,b			;2524	58 	X 
l2525h:
	ld e,c			;2525	59 	Y 
	ld e,b			;2526	58 	X 
	ld e,c			;2527	59 	Y 
	ld e,b			;2528	58 	X 
	ld e,c			;2529	59 	Y 
	call 0c8c9h		;252a	cd c9 c8 	. . . 
	ret			;252d	c9 	. 
	ret z			;252e	c8 	. 
	ret			;252f	c9 	. 
	ret z			;2530	c8 	. 
	ret			;2531	c9 	. 
l2532h:
	ret z			;2532	c8 	. 
	ret			;2533	c9 	. 
	ret z			;2534	c8 	. 
l2535h:
	ret			;2535	c9 	. 
	ret z			;2536	c8 	. 
	ret			;2537	c9 	. 
	ld d,061h		;2538	16 61 	. a 
	ld d,061h		;253a	16 61 	. a 
	rla			;253c	17 	. 
	ld e,b			;253d	58 	X 
	ld e,c			;253e	59 	Y 
	ld e,b			;253f	58 	X 
	ld e,c			;2540	59 	Y 
	ld e,b			;2541	58 	X 
	ld e,c			;2542	59 	Y 
	ld e,b			;2543	58 	X 
	ld e,c			;2544	59 	Y 
	ld e,b			;2545	58 	X 
	ld e,c			;2546	59 	Y 
	ld e,b			;2547	58 	X 
	ld e,c			;2548	59 	Y 
	ld e,b			;2549	58 	X 
	ld e,c			;254a	59 	Y 
	ld e,b			;254b	58 	X 
	ld e,c			;254c	59 	Y 
	ld e,b			;254d	58 	X 
	ld e,c			;254e	59 	Y 
	ld e,b			;254f	58 	X 
	ld e,h			;2550	5c 	\ 
	sub c			;2551	91 	. 
	ld e,h			;2552	5c 	\ 
	sub c			;2553	91 	. 
	rla			;2554	17 	. 
	ld e,c			;2555	59 	Y 
	ld e,b			;2556	58 	X 
	ld e,c			;2557	59 	Y 
	ld e,b			;2558	58 	X 
	ld e,c			;2559	59 	Y 
	ld e,b			;255a	58 	X 
	ld e,c			;255b	59 	Y 
	ld e,b			;255c	58 	X 
	ld e,c			;255d	59 	Y 
	ld e,b			;255e	58 	X 
	ld e,c			;255f	59 	Y 
	ld e,b			;2560	58 	X 
	ld e,c			;2561	59 	Y 
	ld e,b			;2562	58 	X 
	ld e,c			;2563	59 	Y 
	ld e,b			;2564	58 	X 
	ld e,c			;2565	59 	Y 
	ld e,b			;2566	58 	X 
	ld e,c			;2567	59 	Y 
	ld d,061h		;2568	16 61 	. a 
	ld d,061h		;256a	16 61 	. a 
	rla			;256c	17 	. 
	ld e,b			;256d	58 	X 
	ld e,c			;256e	59 	Y 
	ld e,b			;256f	58 	X 
	ld e,c			;2570	59 	Y 
	ld e,b			;2571	58 	X 
	ld e,c			;2572	59 	Y 
	ld e,b			;2573	58 	X 
	ld e,c			;2574	59 	Y 
	ld e,b			;2575	58 	X 
	ld e,c			;2576	59 	Y 
	ld e,b			;2577	58 	X 
	ld e,c			;2578	59 	Y 
	ld e,b			;2579	58 	X 
	ld e,c			;257a	59 	Y 
	ld e,b			;257b	58 	X 
	ld e,c			;257c	59 	Y 
	ld e,b			;257d	58 	X 
	ld e,c			;257e	59 	Y 
	ld e,b			;257f	58 	X 
	ld e,h			;2580	5c 	\ 
	sub c			;2581	91 	. 
	ld e,h			;2582	5c 	\ 
	sub c			;2583	91 	. 
	rla			;2584	17 	. 
	ld e,c			;2585	59 	Y 
	ld e,b			;2586	58 	X 
	ld e,c			;2587	59 	Y 
	ld e,b			;2588	58 	X 
	ld e,c			;2589	59 	Y 
	ld e,b			;258a	58 	X 
	ld e,c			;258b	59 	Y 
	ld e,b			;258c	58 	X 
	ld e,c			;258d	59 	Y 
	ld e,b			;258e	58 	X 
	ld e,c			;258f	59 	Y 
	ld e,b			;2590	58 	X 
	ld e,c			;2591	59 	Y 
	ld e,b			;2592	58 	X 
	ld e,c			;2593	59 	Y 
	ld e,b			;2594	58 	X 
	ld e,c			;2595	59 	Y 
	ld e,b			;2596	58 	X 
	ld e,c			;2597	59 	Y 
	ld a,d			;2598	7a 	z 
	ld a,d			;2599	7a 	z 
	sub d			;259a	92 	. 
	ld a,d			;259b	7a 	z 
	ld a,d			;259c	7a 	z 
	ld a,d			;259d	7a 	z 
	inc a			;259e	3c 	< 
	ld h,a			;259f	67 	g 
	add hl,hl			;25a0	29 	) 
	add hl,hl			;25a1	29 	) 
	add hl,hl			;25a2	29 	) 
	and b			;25a3	a0 	. 
	ld l,(hl)			;25a4	6e 	n 
	ld c,l			;25a5	4d 	M 
	dec hl			;25a6	2b 	+ 
	dec hl			;25a7	2b 	+ 
	dec hl			;25a8	2b 	+ 
	dec hl			;25a9	2b 	+ 
	ret nz			;25aa	c0 	. 
	inc b			;25ab	04 	. 
	jr nz,l25d0h		;25ac	20 22 	  " 
	jp nz,07ac6h		;25ae	c2 c6 7a 	. . z 
l25b1h:
	ld a,d			;25b1	7a 	z 
	sub e			;25b2	93 	. 
	ld a,b			;25b3	78 	x 
	ld a,d			;25b4	7a 	z 
	ld l,b			;25b5	68 	h 
	dec (hl)			;25b6	35 	5 
	scf			;25b7	37 	7 
	ld h,h			;25b8	64 	d 
	dec l			;25b9	2d 	- 
	dec l			;25ba	2d 	- 
	and c			;25bb	a1 	. 
	ld de,l24a2h		;25bc	11 a2 24 	. . $ 
	inc h			;25bf	24 	$ 
	ld h,02bh		;25c0	26 2b 	& + 
	pop bc			;25c2	c1 	. 
	dec b			;25c3	05 	. 
	ld hl,0c323h		;25c4	21 23 c3 	! # . 
	rst 0			;25c7	c7 	. 
	ld a,d			;25c8	7a 	z 
	ld a,d			;25c9	7a 	z 
	ld a,d			;25ca	7a 	z 
	ld a,c			;25cb	79 	y 
	ld a,e			;25cc	7b 	{ 
	ld l,c			;25cd	69 	i 
	jr c,l260ah		;25ce	38 3a 	8 : 
l25d0h:
	ld h,l			;25d0	65 	e 
	jr nc,l2603h		;25d1	30 30 	0 0 
	jr nc,l2607h		;25d3	30 32 	0 2 
	ld (l2525h),a		;25d5	32 25 25 	2 % % 
	daa			;25d8	27 	' 
	dec hl			;25d9	2b 	+ 
	call nz,sub_2006h		;25da	c4 06 20 	. .   
	ld (0cac8h),hl		;25dd	22 c8 ca 	" . . 
	ld a,d			;25e0	7a 	z 
	ld a,d			;25e1	7a 	z 
	ld a,d			;25e2	7a 	z 
	ld a,h			;25e3	7c 	| 
	ld a,(hl)			;25e4	7e 	~ 
	ld l,039h		;25e5	2e 39 	. 9 
	dec sp			;25e7	3b 	; 
	inc (hl)			;25e8	34 	4 
	ld (hl),031h		;25e9	36 31 	6 1 
	xor l			;25eb	ad 	. 
	ld d,l			;25ec	55 	U 
	ld d,l			;25ed	55 	U 
	jr z,l2618h		;25ee	28 28 	( ( 
	ld hl,(0c52bh)		;25f0	2a 2b c5 	* + . 
	rlca			;25f3	07 	. 
	ld hl,0c923h		;25f4	21 23 c9 	! # . 
	bit 7,d		;25f7	cb 7a 	. z 
	ld a,d			;25f9	7a 	z 
	sub d			;25fa	92 	. 
	ld a,d			;25fb	7a 	z 
	ld a,d			;25fc	7a 	z 
	ld a,d			;25fd	7a 	z 
	inc a			;25fe	3c 	< 
	ld a,029h		;25ff	3e 29 	> ) 
	add hl,hl			;2601	29 	) 
	add hl,hl			;2602	29 	) 
l2603h:
	inc bc			;2603	03 	. 
	rla			;2604	17 	. 
	rla			;2605	17 	. 
	ld c,h			;2606	4c 	L 
l2607h:
	dec hl			;2607	2b 	+ 
	dec hl			;2608	2b 	+ 
	dec hl			;2609	2b 	+ 
l260ah:
	ret nz			;260a	c0 	. 
	inc b			;260b	04 	. 
	jr nz,l2630h		;260c	20 22 	  " 
	jp nz,07ac6h		;260e	c2 c6 7a 	. . z 
	ld a,d			;2611	7a 	z 
	sub e			;2612	93 	. 
	ld a,b			;2613	78 	x 
	ld a,d			;2614	7a 	z 
	ld l,b			;2615	68 	h 
	dec (hl)			;2616	35 	5 
	add a,b			;2617	80 	. 
l2618h:
	add a,d			;2618	82 	. 
	add a,(hl)			;2619	86 	. 
	add a,(hl)			;261a	86 	. 
	ld h,c			;261b	61 	a 
	adc a,b			;261c	88 	. 
	adc a,b			;261d	88 	. 
	adc a,b			;261e	88 	. 
	adc a,b			;261f	88 	. 
	adc a,d			;2620	8a 	. 
	dec hl			;2621	2b 	+ 
	pop bc			;2622	c1 	. 
	dec b			;2623	05 	. 
	ld hl,0c323h		;2624	21 23 c3 	! # . 
	rst 0			;2627	c7 	. 
	ld a,d			;2628	7a 	z 
	ld a,d			;2629	7a 	z 
	ld a,d			;262a	7a 	z 
	ld a,c			;262b	79 	y 
	ld a,e			;262c	7b 	{ 
	ld l,c			;262d	69 	i 
	jr c,l25b1h		;262e	38 81 	8 . 
l2630h:
	add a,e			;2630	83 	. 
	add a,l			;2631	85 	. 
	add a,l			;2632	85 	. 
	ld d,010h		;2633	16 10 	. . 
	inc de			;2635	13 	. 
	adc a,c			;2636	89 	. 
	adc a,c			;2637	89 	. 
	adc a,e			;2638	8b 	. 
	dec hl			;2639	2b 	+ 
	call nz,sub_2006h		;263a	c4 06 20 	. .   
	ld (0cac8h),hl		;263d	22 c8 ca 	" . . 
	ld a,d			;2640	7a 	z 
	ld a,d			;2641	7a 	z 
	ld a,d			;2642	7a 	z 
	ld a,h			;2643	7c 	| 
	ld a,(hl)			;2644	7e 	~ 
	ld l,039h		;2645	2e 39 	. 9 
	dec a			;2647	3d 	= 
	dec c			;2648	0d 	. 
	dec c			;2649	0d 	. 
	dec c			;264a	0d 	. 
	dec c			;264b	0d 	. 
	dec c			;264c	0d 	. 
	adc a,d			;264d	8a 	. 
	dec hl			;264e	2b 	+ 
	dec hl			;264f	2b 	+ 
	dec hl			;2650	2b 	+ 
	dec hl			;2651	2b 	+ 
	push bc			;2652	c5 	. 
	rlca			;2653	07 	. 
	ld hl,0c923h		;2654	21 23 c9 	! # . 
	bit 7,d		;2657	cb 7a 	. z 
	ld a,d			;2659	7a 	z 
	sub d			;265a	92 	. 
	ld a,d			;265b	7a 	z 
	ld a,d			;265c	7a 	z 
	ld a,d			;265d	7a 	z 
	inc a			;265e	3c 	< 
	ld h,a			;265f	67 	g 
	ld h,(hl)			;2660	66 	f 
	ld h,(hl)			;2661	66 	f 
	ld d,c			;2662	51 	Q 
	djnz l2678h		;2663	10 13 	. . 
	adc a,e			;2665	8b 	. 
	dec hl			;2666	2b 	+ 
	dec hl			;2667	2b 	+ 
	dec hl			;2668	2b 	+ 
	dec hl			;2669	2b 	+ 
	ret nz			;266a	c0 	. 
	inc b			;266b	04 	. 
	jr nz,l2690h		;266c	20 22 	  " 
	jp nz,07ac6h		;266e	c2 c6 7a 	. . z 
l2671h:
	ld a,d			;2671	7a 	z 
	sub e			;2672	93 	. 
	ld a,b			;2673	78 	x 
	ld a,d			;2674	7a 	z 
	ld l,b			;2675	68 	h 
	dec (hl)			;2676	35 	5 
	scf			;2677	37 	7 
l2678h:
	ld h,h			;2678	64 	d 
	dec l			;2679	2d 	- 
	ld d,h			;267a	54 	T 
	ld de,02411h		;267b	11 11 24 	. . $ 
	inc h			;267e	24 	$ 
	ld h,02bh		;267f	26 2b 	& + 
	dec hl			;2681	2b 	+ 
	pop bc			;2682	c1 	. 
	dec b			;2683	05 	. 
	ld hl,0c323h		;2684	21 23 c3 	! # . 
	rst 0			;2687	c7 	. 
	ld a,d			;2688	7a 	z 
	ld a,d			;2689	7a 	z 
	ld a,d			;268a	7a 	z 
	ld a,c			;268b	79 	y 
	ld a,e			;268c	7b 	{ 
	ld l,c			;268d	69 	i 
	jr c,l26cah		;268e	38 3a 	8 : 
l2690h:
	ld h,l			;2690	65 	e 
	jr nc,l26c3h		;2691	30 30 	0 0 
	ld (l2532h),a		;2693	32 32 25 	2 2 % 
	dec h			;2696	25 	% 
	daa			;2697	27 	' 
	dec hl			;2698	2b 	+ 
	dec hl			;2699	2b 	+ 
	call nz,sub_2006h		;269a	c4 06 20 	. .   
	ld (0cac8h),hl		;269d	22 c8 ca 	" . . 
	ld a,d			;26a0	7a 	z 
	ld a,d			;26a1	7a 	z 
	ld a,d			;26a2	7a 	z 
	ld a,h			;26a3	7c 	| 
	ld a,(hl)			;26a4	7e 	~ 
	ld l,039h		;26a5	2e 39 	. 9 
	dec sp			;26a7	3b 	; 
	ld (hl),031h		;26a8	36 31 	6 1 
	inc sp			;26aa	33 	3 
	ld c,012h		;26ab	0e 12 	. . 
	jr z,l26d7h		;26ad	28 28 	( ( 
	ld hl,(l2b2bh)		;26af	2a 2b 2b 	* + + 
	push bc			;26b2	c5 	. 
	rlca			;26b3	07 	. 
	ld hl,0c923h		;26b4	21 23 c9 	! # . 
	bit 7,d		;26b7	cb 7a 	. z 
	ld a,d			;26b9	7a 	z 
	sub d			;26ba	92 	. 
	ld a,d			;26bb	7a 	z 
	ld a,d			;26bc	7a 	z 
	ld a,d			;26bd	7a 	z 
	inc a			;26be	3c 	< 
	jr l26dbh		;26bf	18 1a 	. . 
	inc c			;26c1	0c 	. 
	dec bc			;26c2	0b 	. 
l26c3h:
	dec bc			;26c3	0b 	. 
	dec c			;26c4	0d 	. 
	dec c			;26c5	0d 	. 
	ld c,h			;26c6	4c 	L 
	dec hl			;26c7	2b 	+ 
	dec hl			;26c8	2b 	+ 
	dec hl			;26c9	2b 	+ 
l26cah:
	ret nz			;26ca	c0 	. 
	inc b			;26cb	04 	. 
	jr nz,l26f0h		;26cc	20 22 	  " 
	jp nz,07ac6h		;26ce	c2 c6 7a 	. . z 
	ld a,d			;26d1	7a 	z 
	sub e			;26d2	93 	. 
	ld a,b			;26d3	78 	x 
	ld a,d			;26d4	7a 	z 
	ld l,b			;26d5	68 	h 
	dec (hl)			;26d6	35 	5 
l26d7h:
	add hl,de			;26d7	19 	. 
	dec de			;26d8	1b 	. 
	add a,(hl)			;26d9	86 	. 
	add a,(hl)			;26da	86 	. 
l26dbh:
	adc a,b			;26db	88 	. 
	adc a,b			;26dc	88 	. 
	adc a,b			;26dd	88 	. 
	adc a,b			;26de	88 	. 
	adc a,d			;26df	8a 	. 
	dec hl			;26e0	2b 	+ 
	dec hl			;26e1	2b 	+ 
	call nz,sub_2106h		;26e2	c4 06 21 	. . ! 
	inc hl			;26e5	23 	# 
	jp 07ac7h		;26e6	c3 c7 7a 	. . z 
	ld a,d			;26e9	7a 	z 
	ld a,d			;26ea	7a 	z 
	ld a,c			;26eb	79 	y 
	ld a,e			;26ec	7b 	{ 
	ld l,c			;26ed	69 	i 
	jr c,l2671h		;26ee	38 81 	8 . 
l26f0h:
	add a,e			;26f0	83 	. 
	add a,l			;26f1	85 	. 
	add a,l			;26f2	85 	. 
	ld d,010h		;26f3	16 10 	. . 
	inc de			;26f5	13 	. 
	adc a,c			;26f6	89 	. 
	adc a,e			;26f7	8b 	. 
	dec hl			;26f8	2b 	+ 
	dec hl			;26f9	2b 	+ 
	call nz,sub_2006h		;26fa	c4 06 20 	. .   
	ld (0cac8h),hl		;26fd	22 c8 ca 	" . . 
	ld a,d			;2700	7a 	z 
	ld a,d			;2701	7a 	z 
	ld a,d			;2702	7a 	z 
	ld a,h			;2703	7c 	| 
	ld a,(hl)			;2704	7e 	~ 
	ld l,039h		;2705	2e 39 	. 9 
	add hl,hl			;2707	29 	) 
	add hl,hl			;2708	29 	) 
	add hl,hl			;2709	29 	) 
	add hl,hl			;270a	29 	) 
	inc bc			;270b	03 	. 
	rla			;270c	17 	. 
	ld c,h			;270d	4c 	L 
	dec hl			;270e	2b 	+ 
	dec hl			;270f	2b 	+ 
	dec hl			;2710	2b 	+ 
	dec hl			;2711	2b 	+ 
	push bc			;2712	c5 	. 
	rlca			;2713	07 	. 
	ld hl,0c923h		;2714	21 23 c9 	! # . 
	sra c		;2717	cb 29 	. ) 
	add hl,hl			;2719	29 	) 
	add hl,hl			;271a	29 	) 
	add hl,hl			;271b	29 	) 
	add hl,hl			;271c	29 	) 
	add hl,hl			;271d	29 	) 
	add hl,hl			;271e	29 	) 
	add hl,hl			;271f	29 	) 
	add hl,hl			;2720	29 	) 
	add hl,hl			;2721	29 	) 
	ld c,(hl)			;2722	4e 	N 
	ld l,d			;2723	6a 	j 
	ld l,(hl)			;2724	6e 	n 
	ld d,b			;2725	50 	P 
	rla			;2726	17 	. 
	rla			;2727	17 	. 
	ld c,l			;2728	4d 	M 
	dec hl			;2729	2b 	+ 
	ret nz			;272a	c0 	. 
	inc b			;272b	04 	. 
	jr nz,l2750h		;272c	20 22 	  " 
	jp nz,l29c6h		;272e	c2 c6 29 	. . ) 
	add hl,hl			;2731	29 	) 
	add hl,hl			;2732	29 	) 
	add hl,hl			;2733	29 	) 
	add hl,hl			;2734	29 	) 
	add hl,hl			;2735	29 	) 
	add hl,hl			;2736	29 	) 
	add hl,hl			;2737	29 	) 
	add hl,hl			;2738	29 	) 
	add hl,hl			;2739	29 	) 
	ld c,a			;273a	4f 	O 
	ld l,e			;273b	6b 	k 
	ld l,a			;273c	6f 	o 
	ld (hl),e			;273d	73 	s 
	rla			;273e	17 	. 
	rla			;273f	17 	. 
	ld c,h			;2740	4c 	L 
	dec hl			;2741	2b 	+ 
	pop bc			;2742	c1 	. 
	dec b			;2743	05 	. 
	ld hl,0c323h		;2744	21 23 c3 	! # . 
	rst 0			;2747	c7 	. 
	add hl,hl			;2748	29 	) 
	add hl,hl			;2749	29 	) 
	add hl,hl			;274a	29 	) 
	add hl,hl			;274b	29 	) 
	add hl,hl			;274c	29 	) 
	add hl,hl			;274d	29 	) 
	add hl,hl			;274e	29 	) 
	add hl,hl			;274f	29 	) 
l2750h:
	add hl,hl			;2750	29 	) 
	add hl,hl			;2751	29 	) 
	ld d,d			;2752	52 	R 
	ld (hl),b			;2753	70 	p 
	ld (hl),d			;2754	72 	r 
	rla			;2755	17 	. 
	rla			;2756	17 	. 
	rla			;2757	17 	. 
	ld c,l			;2758	4d 	M 
	dec hl			;2759	2b 	+ 
	call nz,sub_2006h		;275a	c4 06 20 	. .   
	ld (0cac8h),hl		;275d	22 c8 ca 	" . . 
	add hl,hl			;2760	29 	) 
	add hl,hl			;2761	29 	) 
	add hl,hl			;2762	29 	) 
	add hl,hl			;2763	29 	) 
	add hl,hl			;2764	29 	) 
	add hl,hl			;2765	29 	) 
	add hl,hl			;2766	29 	) 
	add hl,hl			;2767	29 	) 
	add hl,hl			;2768	29 	) 
	add hl,hl			;2769	29 	) 
	ld d,e			;276a	53 	S 
	ld (hl),c			;276b	71 	q 
	ld (hl),e			;276c	73 	s 
	ld d,b			;276d	50 	P 
	rla			;276e	17 	. 
	rla			;276f	17 	. 
	ld c,h			;2770	4c 	L 
	dec hl			;2771	2b 	+ 
	push bc			;2772	c5 	. 
	rlca			;2773	07 	. 
	ld hl,0c923h		;2774	21 23 c9 	! # . 
	sra c		;2777	cb 29 	. ) 
	add hl,hl			;2779	29 	) 
	add hl,hl			;277a	29 	) 
	add hl,hl			;277b	29 	) 
	add hl,hl			;277c	29 	) 
	add hl,hl			;277d	29 	) 
	add hl,hl			;277e	29 	) 
	add hl,hl			;277f	29 	) 
	add hl,hl			;2780	29 	) 
	add hl,hl			;2781	29 	) 
	ld d,(hl)			;2782	56 	V 
	ld (hl),h			;2783	74 	t 
	halt			;2784	76 	v 
	rla			;2785	17 	. 
	ld d,b			;2786	50 	P 
	rla			;2787	17 	. 
	ld c,l			;2788	4d 	M 
	dec hl			;2789	2b 	+ 
	ret nz			;278a	c0 	. 
	inc b			;278b	04 	. 
	jr nz,l27b0h		;278c	20 22 	  " 
	jp nz,l29c6h		;278e	c2 c6 29 	. . ) 
	add hl,hl			;2791	29 	) 
	add hl,hl			;2792	29 	) 
	add hl,hl			;2793	29 	) 
	add hl,hl			;2794	29 	) 
	add hl,hl			;2795	29 	) 
	add hl,hl			;2796	29 	) 
	add hl,hl			;2797	29 	) 
	add hl,hl			;2798	29 	) 
	add hl,hl			;2799	29 	) 
	ld d,a			;279a	57 	W 
	ld (hl),l			;279b	75 	u 
	ld (hl),a			;279c	77 	w 
	ld (hl),e			;279d	73 	s 
	rla			;279e	17 	. 
	rla			;279f	17 	. 
	ld c,h			;27a0	4c 	L 
	dec hl			;27a1	2b 	+ 
	pop bc			;27a2	c1 	. 
	dec b			;27a3	05 	. 
	ld hl,0c323h		;27a4	21 23 c3 	! # . 
	rst 0			;27a7	c7 	. 
	add hl,hl			;27a8	29 	) 
	add hl,hl			;27a9	29 	) 
	add hl,hl			;27aa	29 	) 
	add hl,hl			;27ab	29 	) 
	add hl,hl			;27ac	29 	) 
	add hl,hl			;27ad	29 	) 
	add hl,hl			;27ae	29 	) 
	add hl,hl			;27af	29 	) 
l27b0h:
	add hl,hl			;27b0	29 	) 
	ld e,b			;27b1	58 	X 
	ld e,d			;27b2	5a 	Z 
	sub h			;27b3	94 	. 
	sub (hl)			;27b4	96 	. 
	rla			;27b5	17 	. 
	rla			;27b6	17 	. 
	rla			;27b7	17 	. 
	ld c,l			;27b8	4d 	M 
	dec hl			;27b9	2b 	+ 
	call nz,sub_2006h		;27ba	c4 06 20 	. .   
	ld (0cac8h),hl		;27bd	22 c8 ca 	" . . 
	add hl,hl			;27c0	29 	) 
	add hl,hl			;27c1	29 	) 
	add hl,hl			;27c2	29 	) 
	add hl,hl			;27c3	29 	) 
	add hl,hl			;27c4	29 	) 
	add hl,hl			;27c5	29 	) 
	add hl,hl			;27c6	29 	) 
	add hl,hl			;27c7	29 	) 
	add hl,hl			;27c8	29 	) 
	ld e,c			;27c9	59 	Y 
	ld e,e			;27ca	5b 	[ 
	sub l			;27cb	95 	. 
	sub a			;27cc	97 	. 
	ld d,b			;27cd	50 	P 
	rla			;27ce	17 	. 
	rla			;27cf	17 	. 
	ld c,h			;27d0	4c 	L 
	dec hl			;27d1	2b 	+ 
	push bc			;27d2	c5 	. 
	rlca			;27d3	07 	. 
	ld hl,0c923h		;27d4	21 23 c9 	! # . 
	sra c		;27d7	cb 29 	. ) 
	add hl,hl			;27d9	29 	) 
	add hl,hl			;27da	29 	) 
	add hl,hl			;27db	29 	) 
	add hl,hl			;27dc	29 	) 
	add hl,hl			;27dd	29 	) 
	add hl,hl			;27de	29 	) 
	add hl,hl			;27df	29 	) 
	add hl,hl			;27e0	29 	) 
	ld e,h			;27e1	5c 	\ 
	ld e,(hl)			;27e2	5e 	^ 
	sbc a,b			;27e3	98 	. 
	sbc a,d			;27e4	9a 	. 
	rla			;27e5	17 	. 
	ld d,b			;27e6	50 	P 
	rla			;27e7	17 	. 
	ld c,l			;27e8	4d 	M 
	dec hl			;27e9	2b 	+ 
	ret nz			;27ea	c0 	. 
	inc b			;27eb	04 	. 
	jr nz,l2810h		;27ec	20 22 	  " 
	jp nz,l29c6h		;27ee	c2 c6 29 	. . ) 
	add hl,hl			;27f1	29 	) 
	add hl,hl			;27f2	29 	) 
	add hl,hl			;27f3	29 	) 
	add hl,hl			;27f4	29 	) 
	add hl,hl			;27f5	29 	) 
	add hl,hl			;27f6	29 	) 
	add hl,hl			;27f7	29 	) 
	add hl,hl			;27f8	29 	) 
	ld e,l			;27f9	5d 	] 
	ld e,a			;27fa	5f 	_ 
	sbc a,c			;27fb	99 	. 
	sbc a,e			;27fc	9b 	. 
	sub c			;27fd	91 	. 
	rla			;27fe	17 	. 
	rla			;27ff	17 	. 
	ld c,h			;2800	4c 	L 
l2801h:
	dec hl			;2801	2b 	+ 
	pop bc			;2802	c1 	. 
	dec b			;2803	05 	. 
	ld hl,0c323h		;2804	21 23 c3 	! # . 
	rst 0			;2807	c7 	. 
l2808h:
	add hl,hl			;2808	29 	) 
	add hl,hl			;2809	29 	) 
	add hl,hl			;280a	29 	) 
	add hl,hl			;280b	29 	) 
	add hl,hl			;280c	29 	) 
	add hl,hl			;280d	29 	) 
	add hl,hl			;280e	29 	) 
	add hl,hl			;280f	29 	) 
l2810h:
	add hl,hl			;2810	29 	) 
	add hl,hl			;2811	29 	) 
	ld h,d			;2812	62 	b 
	sbc a,h			;2813	9c 	. 
	sbc a,(hl)			;2814	9e 	. 
	rla			;2815	17 	. 
	rla			;2816	17 	. 
	rla			;2817	17 	. 
	ld c,l			;2818	4d 	M 
	dec hl			;2819	2b 	+ 
	call nz,sub_2006h		;281a	c4 06 20 	. .   
l281dh:
	ld (0cac8h),hl		;281d	22 c8 ca 	" . . 
	add hl,hl			;2820	29 	) 
	add hl,hl			;2821	29 	) 
	add hl,hl			;2822	29 	) 
	add hl,hl			;2823	29 	) 
	add hl,hl			;2824	29 	) 
	add hl,hl			;2825	29 	) 
	add hl,hl			;2826	29 	) 
	add hl,hl			;2827	29 	) 
	add hl,hl			;2828	29 	) 
	add hl,hl			;2829	29 	) 
	ld h,e			;282a	63 	c 
l282bh:
	sbc a,l			;282b	9d 	. 
	sbc a,a			;282c	9f 	. 
	ld (hl),e			;282d	73 	s 
	rla			;282e	17 	. 
	rla			;282f	17 	. 
	ld c,h			;2830	4c 	L 
	dec hl			;2831	2b 	+ 
	push bc			;2832	c5 	. 
	rlca			;2833	07 	. 
	ld hl,0c923h		;2834	21 23 c9 	! # . 
	bit 1,b		;2837	cb 48 	. H 
	ld c,d			;2839	4a 	J 
	ld d,b			;283a	50 	P 
	ld d,d			;283b	52 	R 
	jr l2858h		;283c	18 1a 	. . 
	jr z,l286ah		;283e	28 2a 	( * 
	jr c,$+60		;2840	38 3a 	8 : 
	ld b,b			;2842	40 	@ 
	ld b,d			;2843	42 	B 
	ld c,b			;2844	48 	H 
	ld c,d			;2845	4a 	J 
	ld d,b			;2846	50 	P 
	ld d,d			;2847	52 	R 
	jr nc,$+52		;2848	30 32 	0 2 
	ret nz			;284a	c0 	. 
	jp nz,l3a38h		;284b	c2 38 3a 	. 8 : 
	ld b,b			;284e	40 	@ 
	ld b,d			;284f	42 	B 
	ld c,c			;2850	49 	I 
	ld c,e			;2851	4b 	K 
	ld d,c			;2852	51 	Q 
	ld d,e			;2853	53 	S 
	add hl,de			;2854	19 	. 
	dec de			;2855	1b 	. 
	add hl,hl			;2856	29 	) 
	dec hl			;2857	2b 	+ 
l2858h:
	add hl,sp			;2858	39 	9 
	dec sp			;2859	3b 	; 
	ld b,c			;285a	41 	A 
	ld b,e			;285b	43 	C 
	ld c,c			;285c	49 	I 
	ld c,e			;285d	4b 	K 
	ld d,c			;285e	51 	Q 
	ld d,e			;285f	53 	S 
	ld sp,0c133h		;2860	31 33 c1 	1 3 . 
	jp 03b39h		;2863	c3 39 3b 	. 9 ; 
	ld b,c			;2866	41 	A 
	ld b,e			;2867	43 	C 
	ld c,h			;2868	4c 	L 
	ld c,(hl)			;2869	4e 	N 
l286ah:
	ld d,h			;286a	54 	T 
	ld d,(hl)			;286b	56 	V 
	inc e			;286c	1c 	. 
	ld e,02ch		;286d	1e 2c 	. , 
	ld l,03ch		;286f	2e 3c 	. < 
	ld a,044h		;2871	3e 44 	> D 
	ld b,(hl)			;2873	46 	F 
	ld c,h			;2874	4c 	L 
	ld c,(hl)			;2875	4e 	N 
	ld d,h			;2876	54 	T 
	ld d,(hl)			;2877	56 	V 
	inc (hl)			;2878	34 	4 
	ld (hl),0c4h		;2879	36 c4 	6 . 
	add a,03ch		;287b	c6 3c 	. < 
	ld a,044h		;287d	3e 44 	> D 
	ld b,(hl)			;287f	46 	F 
	ld c,l			;2880	4d 	M 
	ld c,a			;2881	4f 	O 
	ld d,l			;2882	55 	U 
	ld d,a			;2883	57 	W 
	dec e			;2884	1d 	. 
	rra			;2885	1f 	. 
	dec l			;2886	2d 	- 
	cpl			;2887	2f 	/ 
	dec a			;2888	3d 	= 
	ccf			;2889	3f 	? 
	ld b,l			;288a	45 	E 
	ld b,a			;288b	47 	G 
	ld c,l			;288c	4d 	M 
	ld c,a			;288d	4f 	O 
	ld d,l			;288e	55 	U 
	ld d,a			;288f	57 	W 
	dec (hl)			;2890	35 	5 
	scf			;2891	37 	7 
	push bc			;2892	c5 	. 
	rst 0			;2893	c7 	. 
	dec a			;2894	3d 	= 
	ccf			;2895	3f 	? 
	ld b,l			;2896	45 	E 
	ld b,a			;2897	47 	G 
	ld d,016h		;2898	16 16 	. . 
	ld d,016h		;289a	16 16 	. . 
	ld d,016h		;289c	16 16 	. . 
	ld d,016h		;289e	16 16 	. . 
	ld d,016h		;28a0	16 16 	. . 
	ld d,016h		;28a2	16 16 	. . 
	ld d,016h		;28a4	16 16 	. . 
	ld d,016h		;28a6	16 16 	. . 
	ld d,016h		;28a8	16 16 	. . 
	ld d,016h		;28aa	16 16 	. . 
	ld d,016h		;28ac	16 16 	. . 
	ld d,016h		;28ae	16 16 	. . 
	ld d,016h		;28b0	16 16 	. . 
	ld d,016h		;28b2	16 16 	. . 
	ld d,016h		;28b4	16 16 	. . 
	ld d,016h		;28b6	16 16 	. . 
	ld d,016h		;28b8	16 16 	. . 
	ld d,016h		;28ba	16 16 	. . 
	ld d,016h		;28bc	16 16 	. . 
	ld d,016h		;28be	16 16 	. . 
	ld d,016h		;28c0	16 16 	. . 
	ld d,016h		;28c2	16 16 	. . 
	ld d,016h		;28c4	16 16 	. . 
	ld d,016h		;28c6	16 16 	. . 
	ld d,016h		;28c8	16 16 	. . 
	ld d,016h		;28ca	16 16 	. . 
	ld d,016h		;28cc	16 16 	. . 
	ld d,016h		;28ce	16 16 	. . 
	ld d,016h		;28d0	16 16 	. . 
	ld d,016h		;28d2	16 16 	. . 
	ld d,016h		;28d4	16 16 	. . 
	ld d,016h		;28d6	16 16 	. . 
	ld d,016h		;28d8	16 16 	. . 
	ld d,016h		;28da	16 16 	. . 
	ld d,016h		;28dc	16 16 	. . 
	ld d,016h		;28de	16 16 	. . 
	ld d,016h		;28e0	16 16 	. . 
	ld d,016h		;28e2	16 16 	. . 
	ld d,016h		;28e4	16 16 	. . 
	ld d,016h		;28e6	16 16 	. . 
	ld d,016h		;28e8	16 16 	. . 
	ld d,016h		;28ea	16 16 	. . 
	ld d,016h		;28ec	16 16 	. . 
	ld d,016h		;28ee	16 16 	. . 
	ld d,016h		;28f0	16 16 	. . 
	ld d,016h		;28f2	16 16 	. . 
	ld d,016h		;28f4	16 16 	. . 
	ld d,016h		;28f6	16 16 	. . 
	ld b,b			;28f8	40 	@ 
	ld b,b			;28f9	40 	@ 
	ld b,b			;28fa	40 	@ 
	ld b,b			;28fb	40 	@ 
	ld b,b			;28fc	40 	@ 
	ld b,b			;28fd	40 	@ 
	ld b,b			;28fe	40 	@ 
	ld b,b			;28ff	40 	@ 
	ld b,b			;2900	40 	@ 
	ld b,b			;2901	40 	@ 
	ld b,b			;2902	40 	@ 
	ld b,b			;2903	40 	@ 
	ld b,b			;2904	40 	@ 
	ld b,b			;2905	40 	@ 
	ld b,b			;2906	40 	@ 
	ld b,b			;2907	40 	@ 
	ld b,b			;2908	40 	@ 
	ld b,b			;2909	40 	@ 
	ld b,b			;290a	40 	@ 
	ld b,b			;290b	40 	@ 
	ld b,b			;290c	40 	@ 
	ld b,b			;290d	40 	@ 
	ld b,b			;290e	40 	@ 
	ld b,b			;290f	40 	@ 
	ld b,b			;2910	40 	@ 
	add a,(hl)			;2911	86 	. 
	ld b,b			;2912	40 	@ 
	ld b,b			;2913	40 	@ 
	ld b,b			;2914	40 	@ 
	ld b,b			;2915	40 	@ 
	ld b,b			;2916	40 	@ 
	ld b,b			;2917	40 	@ 
	ld b,b			;2918	40 	@ 
	ld b,b			;2919	40 	@ 
	ld b,b			;291a	40 	@ 
	ld b,b			;291b	40 	@ 
	ld b,b			;291c	40 	@ 
	ld b,b			;291d	40 	@ 
	ld b,b			;291e	40 	@ 
	ld b,b			;291f	40 	@ 
	ld b,b			;2920	40 	@ 
	ld b,b			;2921	40 	@ 
	ld b,b			;2922	40 	@ 
	ld b,b			;2923	40 	@ 
	ld b,b			;2924	40 	@ 
	ld b,b			;2925	40 	@ 
	ld b,b			;2926	40 	@ 
	ld b,b			;2927	40 	@ 
	ld b,b			;2928	40 	@ 
l2929h:
	ld b,b			;2929	40 	@ 
	ld b,b			;292a	40 	@ 
	ld b,b			;292b	40 	@ 
	ld b,b			;292c	40 	@ 
	ld b,b			;292d	40 	@ 
	ld b,b			;292e	40 	@ 
	ld b,b			;292f	40 	@ 
	add a,(hl)			;2930	86 	. 
	ld b,b			;2931	40 	@ 
	ld b,b			;2932	40 	@ 
	ld b,b			;2933	40 	@ 
	ld b,b			;2934	40 	@ 
l2935h:
	ld b,b			;2935	40 	@ 
	ld b,b			;2936	40 	@ 
	ld b,b			;2937	40 	@ 
	ld b,b			;2938	40 	@ 
	ld b,b			;2939	40 	@ 
	ld b,b			;293a	40 	@ 
	ld b,b			;293b	40 	@ 
	ld b,b			;293c	40 	@ 
	ld b,b			;293d	40 	@ 
	ld b,b			;293e	40 	@ 
	ld b,b			;293f	40 	@ 
	ld b,b			;2940	40 	@ 
	ld b,b			;2941	40 	@ 
	ld b,b			;2942	40 	@ 
	ld b,b			;2943	40 	@ 
	ld b,b			;2944	40 	@ 
	ld b,b			;2945	40 	@ 
	ld b,b			;2946	40 	@ 
	ld b,b			;2947	40 	@ 
	ld b,b			;2948	40 	@ 
	ld b,b			;2949	40 	@ 
	ld b,b			;294a	40 	@ 
	ld b,b			;294b	40 	@ 
	ld b,b			;294c	40 	@ 
	ld b,b			;294d	40 	@ 
	ld b,b			;294e	40 	@ 
	ld b,b			;294f	40 	@ 
	ld b,b			;2950	40 	@ 
	ld b,b			;2951	40 	@ 
	ld b,b			;2952	40 	@ 
	add a,(hl)			;2953	86 	. 
	ld b,b			;2954	40 	@ 
	ld b,b			;2955	40 	@ 
	ld b,b			;2956	40 	@ 
	ld b,b			;2957	40 	@ 
	ld b,b			;2958	40 	@ 
	ld b,b			;2959	40 	@ 
	ld b,b			;295a	40 	@ 
	ld b,b			;295b	40 	@ 
	ld b,b			;295c	40 	@ 
	ld b,b			;295d	40 	@ 
	ld b,b			;295e	40 	@ 
	ld b,b			;295f	40 	@ 
	ld b,b			;2960	40 	@ 
	ld b,b			;2961	40 	@ 
	ld b,b			;2962	40 	@ 
	ld b,b			;2963	40 	@ 
	ld b,b			;2964	40 	@ 
	ld b,b			;2965	40 	@ 
	ld b,b			;2966	40 	@ 
	ld b,b			;2967	40 	@ 
	ld b,b			;2968	40 	@ 
	ld b,b			;2969	40 	@ 
	ld b,b			;296a	40 	@ 
	ld b,b			;296b	40 	@ 
	ld b,b			;296c	40 	@ 
	ld b,b			;296d	40 	@ 
	ld b,b			;296e	40 	@ 
	ld b,b			;296f	40 	@ 
	ld b,b			;2970	40 	@ 
	ld b,b			;2971	40 	@ 
	ld b,b			;2972	40 	@ 
	ld b,b			;2973	40 	@ 
	ld b,b			;2974	40 	@ 
	ld b,b			;2975	40 	@ 
	ld b,b			;2976	40 	@ 
	ld b,b			;2977	40 	@ 
	ld b,b			;2978	40 	@ 
	ld b,b			;2979	40 	@ 
	ld b,b			;297a	40 	@ 
	ld b,b			;297b	40 	@ 
	ld b,b			;297c	40 	@ 
	ld b,b			;297d	40 	@ 
	ld b,b			;297e	40 	@ 
	add a,(hl)			;297f	86 	. 
	ld b,b			;2980	40 	@ 
	ld b,b			;2981	40 	@ 
	ld b,b			;2982	40 	@ 
	ld b,b			;2983	40 	@ 
	ld b,b			;2984	40 	@ 
	ld b,b			;2985	40 	@ 
	ld b,b			;2986	40 	@ 
	ld b,b			;2987	40 	@ 
	ld b,b			;2988	40 	@ 
	ld b,b			;2989	40 	@ 
	ld b,b			;298a	40 	@ 
	ld b,b			;298b	40 	@ 
	add a,(hl)			;298c	86 	. 
	ld b,b			;298d	40 	@ 
	ld b,b			;298e	40 	@ 
	ld b,b			;298f	40 	@ 
	ld b,b			;2990	40 	@ 
	ld b,b			;2991	40 	@ 
	ld b,b			;2992	40 	@ 
	ld b,b			;2993	40 	@ 
	ld b,b			;2994	40 	@ 
	ld b,b			;2995	40 	@ 
	ld b,b			;2996	40 	@ 
	ld b,b			;2997	40 	@ 
	ld b,b			;2998	40 	@ 
	ld b,b			;2999	40 	@ 
	ld b,b			;299a	40 	@ 
	ld b,b			;299b	40 	@ 
	ld b,b			;299c	40 	@ 
	ld b,b			;299d	40 	@ 
	ld b,b			;299e	40 	@ 
	ld b,b			;299f	40 	@ 
	ld b,b			;29a0	40 	@ 
	ld b,b			;29a1	40 	@ 
	ld b,b			;29a2	40 	@ 
	ld b,b			;29a3	40 	@ 
	ld b,b			;29a4	40 	@ 
	ld b,b			;29a5	40 	@ 
	ld b,b			;29a6	40 	@ 
	ld b,b			;29a7	40 	@ 
	ld b,b			;29a8	40 	@ 
	ld b,b			;29a9	40 	@ 
	ld b,b			;29aa	40 	@ 
	ld b,b			;29ab	40 	@ 
	ld b,b			;29ac	40 	@ 
	ld b,b			;29ad	40 	@ 
	ld b,b			;29ae	40 	@ 
	ld b,b			;29af	40 	@ 
	ld b,b			;29b0	40 	@ 
	ld b,b			;29b1	40 	@ 
	ld b,b			;29b2	40 	@ 
	ld b,b			;29b3	40 	@ 
	ld b,b			;29b4	40 	@ 
	ld b,b			;29b5	40 	@ 
	ld b,b			;29b6	40 	@ 
	ld b,b			;29b7	40 	@ 
	ld b,b			;29b8	40 	@ 
	ld b,b			;29b9	40 	@ 
	ld b,b			;29ba	40 	@ 
	ld b,b			;29bb	40 	@ 
	ld b,b			;29bc	40 	@ 
	ld b,b			;29bd	40 	@ 
	ld b,b			;29be	40 	@ 
	ld b,b			;29bf	40 	@ 
	ld b,b			;29c0	40 	@ 
	ld b,b			;29c1	40 	@ 
	ld b,b			;29c2	40 	@ 
	ld b,b			;29c3	40 	@ 
	ld b,b			;29c4	40 	@ 
	ld b,b			;29c5	40 	@ 
l29c6h:
	ld b,b			;29c6	40 	@ 
	ld b,b			;29c7	40 	@ 
	ld b,b			;29c8	40 	@ 
	ld b,b			;29c9	40 	@ 
	ld b,b			;29ca	40 	@ 
	ld b,b			;29cb	40 	@ 
	ld b,b			;29cc	40 	@ 
	ld b,b			;29cd	40 	@ 
	ld b,b			;29ce	40 	@ 
	ld b,b			;29cf	40 	@ 
	ld b,b			;29d0	40 	@ 
	ld b,b			;29d1	40 	@ 
	ld b,b			;29d2	40 	@ 
	ld b,b			;29d3	40 	@ 
l29d4h:
	ld b,b			;29d4	40 	@ 
	ld b,b			;29d5	40 	@ 
sub_29d6h:
	ld b,b			;29d6	40 	@ 
	ld b,b			;29d7	40 	@ 
l29d8h:
	ld b,b			;29d8	40 	@ 
	ld b,b			;29d9	40 	@ 
	ld b,b			;29da	40 	@ 
	ld b,b			;29db	40 	@ 
	ld b,b			;29dc	40 	@ 
	ld b,b			;29dd	40 	@ 
	ld b,b			;29de	40 	@ 
	ld b,b			;29df	40 	@ 
	ld b,b			;29e0	40 	@ 
	ld b,b			;29e1	40 	@ 
	ld b,b			;29e2	40 	@ 
	ld b,b			;29e3	40 	@ 
	ld b,b			;29e4	40 	@ 
	ld b,b			;29e5	40 	@ 
	ld b,b			;29e6	40 	@ 
	ld b,b			;29e7	40 	@ 
	ld b,b			;29e8	40 	@ 
	ld b,b			;29e9	40 	@ 
	ld b,b			;29ea	40 	@ 
	ld b,b			;29eb	40 	@ 
	ld b,b			;29ec	40 	@ 
	ld b,b			;29ed	40 	@ 
	ld b,b			;29ee	40 	@ 
	ld b,b			;29ef	40 	@ 
	ld b,b			;29f0	40 	@ 
	ld b,b			;29f1	40 	@ 
	ld b,b			;29f2	40 	@ 
	ld b,b			;29f3	40 	@ 
	ld b,b			;29f4	40 	@ 
	ld b,b			;29f5	40 	@ 
	ld b,b			;29f6	40 	@ 
	ld b,b			;29f7	40 	@ 
	ld b,b			;29f8	40 	@ 
	ld b,b			;29f9	40 	@ 
	ld b,b			;29fa	40 	@ 
	ld b,b			;29fb	40 	@ 
	ld b,b			;29fc	40 	@ 
	ld b,b			;29fd	40 	@ 
	ld b,b			;29fe	40 	@ 
	ld b,b			;29ff	40 	@ 
	ld b,b			;2a00	40 	@ 
	ld b,b			;2a01	40 	@ 
	ld b,b			;2a02	40 	@ 
	ld b,b			;2a03	40 	@ 
l2a04h:
	ld b,b			;2a04	40 	@ 
	ld b,b			;2a05	40 	@ 
	ld b,b			;2a06	40 	@ 
	ld b,b			;2a07	40 	@ 
	ld b,b			;2a08	40 	@ 
	ld b,b			;2a09	40 	@ 
	ld b,b			;2a0a	40 	@ 
	ld b,b			;2a0b	40 	@ 
	ld b,b			;2a0c	40 	@ 
	ld b,b			;2a0d	40 	@ 
	ld b,b			;2a0e	40 	@ 
	ld b,b			;2a0f	40 	@ 
	ld b,b			;2a10	40 	@ 
	ld b,b			;2a11	40 	@ 
	ld b,b			;2a12	40 	@ 
	ld b,b			;2a13	40 	@ 
	ld b,b			;2a14	40 	@ 
	ld b,b			;2a15	40 	@ 
	ld b,b			;2a16	40 	@ 
	ld b,b			;2a17	40 	@ 
	ld d,003h		;2a18	16 03 	. . 
	ld d,003h		;2a1a	16 03 	. . 
	ld d,003h		;2a1c	16 03 	. . 
	ld d,003h		;2a1e	16 03 	. . 
	ld d,003h		;2a20	16 03 	. . 
	ld d,003h		;2a22	16 03 	. . 
	ld d,003h		;2a24	16 03 	. . 
	ld d,003h		;2a26	16 03 	. . 
	ld d,003h		;2a28	16 03 	. . 
	ld d,003h		;2a2a	16 03 	. . 
	ld d,003h		;2a2c	16 03 	. . 
	ld d,003h		;2a2e	16 03 	. . 
	inc bc			;2a30	03 	. 
	ld d,003h		;2a31	16 03 	. . 
	ld d,003h		;2a33	16 03 	. . 
	ld d,003h		;2a35	16 03 	. . 
	ld d,003h		;2a37	16 03 	. . 
	ld d,003h		;2a39	16 03 	. . 
	ld d,003h		;2a3b	16 03 	. . 
	ld d,003h		;2a3d	16 03 	. . 
	ld d,003h		;2a3f	16 03 	. . 
	ld d,003h		;2a41	16 03 	. . 
	ld d,003h		;2a43	16 03 	. . 
	ld d,003h		;2a45	16 03 	. . 
	ld d,016h		;2a47	16 16 	. . 
	inc bc			;2a49	03 	. 
	ld d,003h		;2a4a	16 03 	. . 
	ld d,003h		;2a4c	16 03 	. . 
	ld d,003h		;2a4e	16 03 	. . 
	ld d,003h		;2a50	16 03 	. . 
	ld d,003h		;2a52	16 03 	. . 
	ld d,003h		;2a54	16 03 	. . 
	ld d,003h		;2a56	16 03 	. . 
	ld d,003h		;2a58	16 03 	. . 
	ld d,003h		;2a5a	16 03 	. . 
	ld d,003h		;2a5c	16 03 	. . 
	ld d,003h		;2a5e	16 03 	. . 
	inc bc			;2a60	03 	. 
	ld d,003h		;2a61	16 03 	. . 
	ld d,003h		;2a63	16 03 	. . 
	ld d,003h		;2a65	16 03 	. . 
	ld d,003h		;2a67	16 03 	. . 
	ld d,003h		;2a69	16 03 	. . 
	ld d,003h		;2a6b	16 03 	. . 
	ld d,003h		;2a6d	16 03 	. . 
	ld d,003h		;2a6f	16 03 	. . 
	ld d,003h		;2a71	16 03 	. . 
	ld d,003h		;2a73	16 03 	. . 
	ld d,003h		;2a75	16 03 	. . 
	ld d,0a1h		;2a77	16 a1 	. . 
	and e			;2a79	a3 	. 
	and b			;2a7a	a0 	. 
	and d			;2a7b	a2 	. 
	and c			;2a7c	a1 	. 
	and e			;2a7d	a3 	. 
	and b			;2a7e	a0 	. 
	and d			;2a7f	a2 	. 
	and c			;2a80	a1 	. 
	and e			;2a81	a3 	. 
	and b			;2a82	a0 	. 
	and d			;2a83	a2 	. 
	and c			;2a84	a1 	. 
	and e			;2a85	a3 	. 
	and b			;2a86	a0 	. 
	and d			;2a87	a2 	. 
	and c			;2a88	a1 	. 
	and e			;2a89	a3 	. 
	and b			;2a8a	a0 	. 
	and d			;2a8b	a2 	. 
	and c			;2a8c	a1 	. 
	and e			;2a8d	a3 	. 
	and b			;2a8e	a0 	. 
	and d			;2a8f	a2 	. 
	and h			;2a90	a4 	. 
	and l			;2a91	a5 	. 
	and c			;2a92	a1 	. 
	and e			;2a93	a3 	. 
	and h			;2a94	a4 	. 
	and l			;2a95	a5 	. 
	and c			;2a96	a1 	. 
	and e			;2a97	a3 	. 
	and h			;2a98	a4 	. 
	and l			;2a99	a5 	. 
	and c			;2a9a	a1 	. 
	and e			;2a9b	a3 	. 
	and h			;2a9c	a4 	. 
	and l			;2a9d	a5 	. 
	and c			;2a9e	a1 	. 
	and e			;2a9f	a3 	. 
	and h			;2aa0	a4 	. 
	and l			;2aa1	a5 	. 
	and c			;2aa2	a1 	. 
	and e			;2aa3	a3 	. 
	and h			;2aa4	a4 	. 
	and l			;2aa5	a5 	. 
	and c			;2aa6	a1 	. 
	and e			;2aa7	a3 	. 
	and b			;2aa8	a0 	. 
	and d			;2aa9	a2 	. 
	and c			;2aaa	a1 	. 
	and e			;2aab	a3 	. 
	and b			;2aac	a0 	. 
	and d			;2aad	a2 	. 
	and c			;2aae	a1 	. 
	and e			;2aaf	a3 	. 
	and b			;2ab0	a0 	. 
	and d			;2ab1	a2 	. 
	and c			;2ab2	a1 	. 
	and e			;2ab3	a3 	. 
	and b			;2ab4	a0 	. 
	and d			;2ab5	a2 	. 
	and c			;2ab6	a1 	. 
	and e			;2ab7	a3 	. 
	and b			;2ab8	a0 	. 
	and d			;2ab9	a2 	. 
	and c			;2aba	a1 	. 
	and e			;2abb	a3 	. 
	and b			;2abc	a0 	. 
	and d			;2abd	a2 	. 
	and c			;2abe	a1 	. 
	and e			;2abf	a3 	. 
	and c			;2ac0	a1 	. 
	and e			;2ac1	a3 	. 
	and h			;2ac2	a4 	. 
	and l			;2ac3	a5 	. 
	and c			;2ac4	a1 	. 
	and e			;2ac5	a3 	. 
	and h			;2ac6	a4 	. 
	and l			;2ac7	a5 	. 
	and c			;2ac8	a1 	. 
	and e			;2ac9	a3 	. 
	and h			;2aca	a4 	. 
	and l			;2acb	a5 	. 
	and c			;2acc	a1 	. 
	and e			;2acd	a3 	. 
	and h			;2ace	a4 	. 
	and l			;2acf	a5 	. 
	and c			;2ad0	a1 	. 
	and e			;2ad1	a3 	. 
	and h			;2ad2	a4 	. 
	and l			;2ad3	a5 	. 
	and c			;2ad4	a1 	. 
	and e			;2ad5	a3 	. 
	and h			;2ad6	a4 	. 
	and l			;2ad7	a5 	. 
	and d			;2ad8	a2 	. 
	and c			;2ad9	a1 	. 
	and e			;2ada	a3 	. 
	and b			;2adb	a0 	. 
	and d			;2adc	a2 	. 
	and c			;2add	a1 	. 
	and e			;2ade	a3 	. 
	and b			;2adf	a0 	. 
	and d			;2ae0	a2 	. 
	and c			;2ae1	a1 	. 
	and e			;2ae2	a3 	. 
	and b			;2ae3	a0 	. 
	and d			;2ae4	a2 	. 
	and c			;2ae5	a1 	. 
	and e			;2ae6	a3 	. 
	and b			;2ae7	a0 	. 
	and d			;2ae8	a2 	. 
	and c			;2ae9	a1 	. 
	and e			;2aea	a3 	. 
	and b			;2aeb	a0 	. 
	and d			;2aec	a2 	. 
	and c			;2aed	a1 	. 
	and e			;2aee	a3 	. 
	and b			;2aef	a0 	. 
	and e			;2af0	a3 	. 
	and h			;2af1	a4 	. 
	and l			;2af2	a5 	. 
	and c			;2af3	a1 	. 
	and e			;2af4	a3 	. 
	and h			;2af5	a4 	. 
	and l			;2af6	a5 	. 
	and c			;2af7	a1 	. 
	and e			;2af8	a3 	. 
	and h			;2af9	a4 	. 
	and l			;2afa	a5 	. 
	and c			;2afb	a1 	. 
	and e			;2afc	a3 	. 
	and h			;2afd	a4 	. 
	and l			;2afe	a5 	. 
	and c			;2aff	a1 	. 
	and e			;2b00	a3 	. 
	and h			;2b01	a4 	. 
	and l			;2b02	a5 	. 
	and c			;2b03	a1 	. 
	and e			;2b04	a3 	. 
	and h			;2b05	a4 	. 
	and l			;2b06	a5 	. 
	and c			;2b07	a1 	. 
	and e			;2b08	a3 	. 
	and b			;2b09	a0 	. 
	and d			;2b0a	a2 	. 
	and c			;2b0b	a1 	. 
	and e			;2b0c	a3 	. 
	and b			;2b0d	a0 	. 
	and d			;2b0e	a2 	. 
	and c			;2b0f	a1 	. 
	and e			;2b10	a3 	. 
	and b			;2b11	a0 	. 
	and d			;2b12	a2 	. 
	and c			;2b13	a1 	. 
	and e			;2b14	a3 	. 
	and b			;2b15	a0 	. 
	and d			;2b16	a2 	. 
	and c			;2b17	a1 	. 
	and e			;2b18	a3 	. 
	and b			;2b19	a0 	. 
	and d			;2b1a	a2 	. 
	and c			;2b1b	a1 	. 
	and e			;2b1c	a3 	. 
	and b			;2b1d	a0 	. 
	and d			;2b1e	a2 	. 
	and c			;2b1f	a1 	. 
	and l			;2b20	a5 	. 
	and c			;2b21	a1 	. 
	and e			;2b22	a3 	. 
	and h			;2b23	a4 	. 
	and l			;2b24	a5 	. 
	and c			;2b25	a1 	. 
	and e			;2b26	a3 	. 
	and h			;2b27	a4 	. 
	and l			;2b28	a5 	. 
	and c			;2b29	a1 	. 
l2b2ah:
	and e			;2b2a	a3 	. 
l2b2bh:
	and h			;2b2b	a4 	. 
	and l			;2b2c	a5 	. 
	and c			;2b2d	a1 	. 
	and e			;2b2e	a3 	. 
	and h			;2b2f	a4 	. 
	and l			;2b30	a5 	. 
	and c			;2b31	a1 	. 
	and e			;2b32	a3 	. 
	and h			;2b33	a4 	. 
	and l			;2b34	a5 	. 
	and c			;2b35	a1 	. 
	and e			;2b36	a3 	. 
	and h			;2b37	a4 	. 
	and b			;2b38	a0 	. 
	and d			;2b39	a2 	. 
	and c			;2b3a	a1 	. 
	and e			;2b3b	a3 	. 
	and b			;2b3c	a0 	. 
	and d			;2b3d	a2 	. 
	and c			;2b3e	a1 	. 
	and e			;2b3f	a3 	. 
	and b			;2b40	a0 	. 
	and d			;2b41	a2 	. 
	and c			;2b42	a1 	. 
	and e			;2b43	a3 	. 
	and b			;2b44	a0 	. 
	and d			;2b45	a2 	. 
	and c			;2b46	a1 	. 
	and e			;2b47	a3 	. 
	and b			;2b48	a0 	. 
	and d			;2b49	a2 	. 
	and c			;2b4a	a1 	. 
	and e			;2b4b	a3 	. 
	and b			;2b4c	a0 	. 
	and d			;2b4d	a2 	. 
	and c			;2b4e	a1 	. 
	and e			;2b4f	a3 	. 
	and c			;2b50	a1 	. 
	and e			;2b51	a3 	. 
	and h			;2b52	a4 	. 
	and l			;2b53	a5 	. 
	and c			;2b54	a1 	. 
	and e			;2b55	a3 	. 
	and h			;2b56	a4 	. 
	and l			;2b57	a5 	. 
	and c			;2b58	a1 	. 
	and e			;2b59	a3 	. 
	and h			;2b5a	a4 	. 
	and l			;2b5b	a5 	. 
	and c			;2b5c	a1 	. 
	and e			;2b5d	a3 	. 
	and h			;2b5e	a4 	. 
	and l			;2b5f	a5 	. 
	and c			;2b60	a1 	. 
	and e			;2b61	a3 	. 
	and h			;2b62	a4 	. 
	and l			;2b63	a5 	. 
	and c			;2b64	a1 	. 
	and e			;2b65	a3 	. 
	and h			;2b66	a4 	. 
	and l			;2b67	a5 	. 
	and c			;2b68	a1 	. 
	and e			;2b69	a3 	. 
	and b			;2b6a	a0 	. 
	and d			;2b6b	a2 	. 
	and c			;2b6c	a1 	. 
	and e			;2b6d	a3 	. 
	and b			;2b6e	a0 	. 
	and d			;2b6f	a2 	. 
	and c			;2b70	a1 	. 
	and e			;2b71	a3 	. 
	and b			;2b72	a0 	. 
	and d			;2b73	a2 	. 
	and c			;2b74	a1 	. 
	and e			;2b75	a3 	. 
	and b			;2b76	a0 	. 
	and d			;2b77	a2 	. 
	and c			;2b78	a1 	. 
	and e			;2b79	a3 	. 
	and b			;2b7a	a0 	. 
	and d			;2b7b	a2 	. 
	and c			;2b7c	a1 	. 
	and e			;2b7d	a3 	. 
	and b			;2b7e	a0 	. 
	and d			;2b7f	a2 	. 
	and h			;2b80	a4 	. 
	and l			;2b81	a5 	. 
	and c			;2b82	a1 	. 
	and e			;2b83	a3 	. 
	and h			;2b84	a4 	. 
	and l			;2b85	a5 	. 
	and c			;2b86	a1 	. 
	and e			;2b87	a3 	. 
	and h			;2b88	a4 	. 
	and l			;2b89	a5 	. 
	and c			;2b8a	a1 	. 
	and e			;2b8b	a3 	. 
	and h			;2b8c	a4 	. 
	and l			;2b8d	a5 	. 
	and c			;2b8e	a1 	. 
	and e			;2b8f	a3 	. 
	and h			;2b90	a4 	. 
	and l			;2b91	a5 	. 
	and c			;2b92	a1 	. 
	and e			;2b93	a3 	. 
	and h			;2b94	a4 	. 
	and l			;2b95	a5 	. 
	and c			;2b96	a1 	. 
	and e			;2b97	a3 	. 
	and e			;2b98	a3 	. 
	and b			;2b99	a0 	. 
	and d			;2b9a	a2 	. 
	and c			;2b9b	a1 	. 
	and e			;2b9c	a3 	. 
	and b			;2b9d	a0 	. 
	and d			;2b9e	a2 	. 
	and c			;2b9f	a1 	. 
	and e			;2ba0	a3 	. 
	and b			;2ba1	a0 	. 
	and d			;2ba2	a2 	. 
	and c			;2ba3	a1 	. 
	and e			;2ba4	a3 	. 
	and b			;2ba5	a0 	. 
	and d			;2ba6	a2 	. 
	and c			;2ba7	a1 	. 
	and e			;2ba8	a3 	. 
	and b			;2ba9	a0 	. 
	and d			;2baa	a2 	. 
	and c			;2bab	a1 	. 
	and e			;2bac	a3 	. 
	and b			;2bad	a0 	. 
	and d			;2bae	a2 	. 
	and c			;2baf	a1 	. 
	and l			;2bb0	a5 	. 
	and c			;2bb1	a1 	. 
	and e			;2bb2	a3 	. 
	and h			;2bb3	a4 	. 
	and l			;2bb4	a5 	. 
	and c			;2bb5	a1 	. 
	and e			;2bb6	a3 	. 
	and h			;2bb7	a4 	. 
	and l			;2bb8	a5 	. 
	and c			;2bb9	a1 	. 
	and e			;2bba	a3 	. 
	and h			;2bbb	a4 	. 
	and l			;2bbc	a5 	. 
	and c			;2bbd	a1 	. 
	and e			;2bbe	a3 	. 
	and h			;2bbf	a4 	. 
	and l			;2bc0	a5 	. 
	and c			;2bc1	a1 	. 
	and e			;2bc2	a3 	. 
	and h			;2bc3	a4 	. 
	and l			;2bc4	a5 	. 
	and c			;2bc5	a1 	. 
	and e			;2bc6	a3 	. 
	and h			;2bc7	a4 	. 
	and d			;2bc8	a2 	. 
	and c			;2bc9	a1 	. 
	and e			;2bca	a3 	. 
	and b			;2bcb	a0 	. 
	and d			;2bcc	a2 	. 
	and c			;2bcd	a1 	. 
	and e			;2bce	a3 	. 
	and b			;2bcf	a0 	. 
	and d			;2bd0	a2 	. 
	and c			;2bd1	a1 	. 
	and e			;2bd2	a3 	. 
	and b			;2bd3	a0 	. 
	and d			;2bd4	a2 	. 
	and c			;2bd5	a1 	. 
	and e			;2bd6	a3 	. 
	and b			;2bd7	a0 	. 
	and d			;2bd8	a2 	. 
	and c			;2bd9	a1 	. 
	and e			;2bda	a3 	. 
	and b			;2bdb	a0 	. 
	and d			;2bdc	a2 	. 
	and c			;2bdd	a1 	. 
	and e			;2bde	a3 	. 
	and b			;2bdf	a0 	. 
	and e			;2be0	a3 	. 
	and h			;2be1	a4 	. 
	and l			;2be2	a5 	. 
	and c			;2be3	a1 	. 
	and e			;2be4	a3 	. 
	and h			;2be5	a4 	. 
	and l			;2be6	a5 	. 
	and c			;2be7	a1 	. 
	and e			;2be8	a3 	. 
	and h			;2be9	a4 	. 
	and l			;2bea	a5 	. 
	and c			;2beb	a1 	. 
	and e			;2bec	a3 	. 
	and h			;2bed	a4 	. 
	and l			;2bee	a5 	. 
	and c			;2bef	a1 	. 
	and e			;2bf0	a3 	. 
	and h			;2bf1	a4 	. 
	and l			;2bf2	a5 	. 
	and c			;2bf3	a1 	. 
	and e			;2bf4	a3 	. 
	and h			;2bf5	a4 	. 
	and l			;2bf6	a5 	. 
	and c			;2bf7	a1 	. 
	nop			;2bf8	00 	. 
	nop			;2bf9	00 	. 
	nop			;2bfa	00 	. 
	nop			;2bfb	00 	. 
	nop			;2bfc	00 	. 
	nop			;2bfd	00 	. 
	nop			;2bfe	00 	. 
	nop			;2bff	00 	. 
	nop			;2c00	00 	. 
	nop			;2c01	00 	. 
	nop			;2c02	00 	. 
	nop			;2c03	00 	. 
	rlca			;2c04	07 	. 
	rlca			;2c05	07 	. 
	rlca			;2c06	07 	. 
	rlca			;2c07	07 	. 
	rra			;2c08	1f 	. 
	rra			;2c09	1f 	. 
	jr l2c24h		;2c0a	18 18 	. . 
	jr c,l2c46h		;2c0c	38 38 	8 8 
	daa			;2c0e	27 	' 
	jr nz,$+99		;2c0f	20 61 	  a 
	ld h,c			;2c11	61 	a 
	ld e,a			;2c12	5f 	_ 
	ld b,c			;2c13	41 	A 
	ld e,h			;2c14	5c 	\ 
	ld e,h			;2c15	5c 	\ 
	ld a,a			;2c16	7f 	 
	ld e,h			;2c17	5c 	\ 
	ld a,(l3e22h)		;2c18	3a 22 3e 	: " > 
	ld (04f7fh),hl		;2c1b	22 7f 4f 	"  O 
	ld a,a			;2c1e	7f 	 
l2c1fh:
	ld a,a			;2c1f	7f 	 
l2c20h:
	rst 38h			;2c20	ff 	. 
	rst 38h			;2c21	ff 	. 
	ret p			;2c22	f0 	. 
	ret p			;2c23	f0 	. 
l2c24h:
	ret p			;2c24	f0 	. 
	ret p			;2c25	f0 	. 
	rrca			;2c26	0f 	. 
	nop			;2c27	00 	. 
	ld bc,0ff01h		;2c28	01 01 ff 	. . . 
	ld bc,l1d1dh		;2c2b	01 1d 1d 	. . . 
	rst 38h			;2c2e	ff 	. 
	dec e			;2c2f	1d 	. 
l2c30h:
	push de			;2c30	d5 	. 
	push de			;2c31	d5 	. 
	rst 38h			;2c32	ff 	. 
	push de			;2c33	d5 	. 
	sub l			;2c34	95 	. 
	sub l			;2c35	95 	. 
	rst 38h			;2c36	ff 	. 
	sub l			;2c37	95 	. 
	inc a			;2c38	3c 	< 
	inc a			;2c39	3c 	< 
	inc a			;2c3a	3c 	< 
	inc a			;2c3b	3c 	< 
	cp 0feh		;2c3c	fe fe 	. . 
	jp nz,0c3c2h		;2c3e	c2 c2 c3 	. . . 
	jp l013dh		;2c41	c3 3d 01 	. = . 
	rra			;2c44	1f 	. 
	rra			;2c45	1f 	. 
l2c46h:
	defb 0fdh,01dh,0cbh	;illegal sequence		;2c46	fd 1d cb 	. . . 
	set 7,l		;2c49	cb fd 	. . 
	ret			;2c4b	c9 	. 
	ld c,e			;2c4c	4b 	K 
	ld c,e			;2c4d	4b 	K 
	defb 0fdh,049h,08bh	;illegal sequence		;2c4e	fd 49 8b 	. I . 
	adc a,e			;2c51	8b 	. 
	defb 0fdh,089h,04bh	;illegal sequence		;2c52	fd 89 4b 	. . K 
	ld c,e			;2c55	4b 	K 
	defb 0fdh,049h,050h	;illegal sequence		;2c56	fd 49 50 	. I P 
	ld d,b			;2c59	50 	P 
	ld a,a			;2c5a	7f 	 
	ld d,b			;2c5b	50 	P 
	ld e,h			;2c5c	5c 	\ 
	ld e,h			;2c5d	5c 	\ 
	ld a,a			;2c5e	7f 	 
	ld e,h			;2c5f	5c 	\ 
	ld b,h			;2c60	44 	D 
	ld b,h			;2c61	44 	D 
	ld a,a			;2c62	7f 	 
	ld b,h			;2c63	44 	D 
	ld e,h			;2c64	5c 	\ 
	ld e,h			;2c65	5c 	\ 
	ld a,a			;2c66	7f 	 
	ld e,h			;2c67	5c 	\ 
	ld b,b			;2c68	40 	@ 
	ld b,b			;2c69	40 	@ 
	ld a,a			;2c6a	7f 	 
	ld b,b			;2c6b	40 	@ 
	jr nc,l2c8eh		;2c6c	30 20 	0   
	ccf			;2c6e	3f 	? 
	jr nc,l2c90h		;2c6f	30 1f 	0 . 
	djnz l2c92h		;2c71	10 1f 	. . 
	rra			;2c73	1f 	. 
	rrca			;2c74	0f 	. 
	rrca			;2c75	0f 	. 
	rrca			;2c76	0f 	. 
	rrca			;2c77	0f 	. 
	sbc a,l			;2c78	9d 	. 
	sbc a,l			;2c79	9d 	. 
	rst 38h			;2c7a	ff 	. 
	sbc a,l			;2c7b	9d 	. 
	sub h			;2c7c	94 	. 
	sub h			;2c7d	94 	. 
	rst 38h			;2c7e	ff 	. 
	sub h			;2c7f	94 	. 
	add a,b			;2c80	80 	. 
	add a,b			;2c81	80 	. 
	rst 38h			;2c82	ff 	. 
	add a,b			;2c83	80 	. 
	nop			;2c84	00 	. 
	nop			;2c85	00 	. 
	rst 38h			;2c86	ff 	. 
	nop			;2c87	00 	. 
	ld bc,0ff00h		;2c88	01 00 ff 	. . . 
	ld bc,l013fh		;2c8b	01 3f 01 	. ? . 
l2c8eh:
	rst 38h			;2c8e	ff 	. 
	ccf			;2c8f	3f 	? 
l2c90h:
	cp 03eh		;2c90	fe 3e 	. > 
l2c92h:
	cp 0feh		;2c92	fe fe 	. . 
	jp m,0fee2h		;2c94	fa e2 fe 	. . . 
	jp p,04343h		;2c97	f2 43 43 	. C C 
	defb 0fdh,041h,003h	;illegal sequence		;2c9a	fd 41 03 	. A . 
	inc bc			;2c9d	03 	. 
	defb 0fdh,001h,006h	;illegal sequence		;2c9e	fd 01 06 	. . . 
	ld (bc),a			;2ca1	02 	. 
	cp 006h		;2ca2	fe 06 	. . 
	inc e			;2ca4	1c 	. 
	inc b			;2ca5	04 	. 
	call m,0f81ch		;2ca6	fc 1c f8 	. . . 
	jr $-6		;2ca9	18 f8 	. . 
	ret m			;2cab	f8 	. 
	ret po			;2cac	e0 	. 
	ret po			;2cad	e0 	. 
	ret po			;2cae	e0 	. 
	ret po			;2caf	e0 	. 
	nop			;2cb0	00 	. 
	nop			;2cb1	00 	. 
	nop			;2cb2	00 	. 
	nop			;2cb3	00 	. 
	nop			;2cb4	00 	. 
	nop			;2cb5	00 	. 
	nop			;2cb6	00 	. 
	nop			;2cb7	00 	. 
	ld a,d			;2cb8	7a 	z 
	ld h,d			;2cb9	62 	b 
	ld a,(hl)			;2cba	7e 	~ 
	ld (hl),d			;2cbb	72 	r 
	ld a,d			;2cbc	7a 	z 
	ld h,d			;2cbd	62 	b 
	ld a,(hl)			;2cbe	7e 	~ 
	ld (hl),d			;2cbf	72 	r 
	ld a,d			;2cc0	7a 	z 
	ld h,d			;2cc1	62 	b 
	ld a,(hl)			;2cc2	7e 	~ 
	ld (hl),d			;2cc3	72 	r 
	ld a,d			;2cc4	7a 	z 
	ld h,d			;2cc5	62 	b 
	ld a,(hl)			;2cc6	7e 	~ 
	ld (hl),d			;2cc7	72 	r 
	ld a,d			;2cc8	7a 	z 
	ld h,d			;2cc9	62 	b 
	ld a,(hl)			;2cca	7e 	~ 
	ld (hl),d			;2ccb	72 	r 
	ld a,d			;2ccc	7a 	z 
	ld h,d			;2ccd	62 	b 
	ld a,(hl)			;2cce	7e 	~ 
	ld (hl),d			;2ccf	72 	r 
	inc a			;2cd0	3c 	< 
	inc (hl)			;2cd1	34 	4 
	inc a			;2cd2	3c 	< 
	inc a			;2cd3	3c 	< 
	jr l2ceeh		;2cd4	18 18 	. . 
	jr $+26		;2cd6	18 18 	. . 
	nop			;2cd8	00 	. 
	nop			;2cd9	00 	. 
	nop			;2cda	00 	. 
	nop			;2cdb	00 	. 
	nop			;2cdc	00 	. 
	nop			;2cdd	00 	. 
	nop			;2cde	00 	. 
	nop			;2cdf	00 	. 
	nop			;2ce0	00 	. 
	nop			;2ce1	00 	. 
	nop			;2ce2	00 	. 
	nop			;2ce3	00 	. 
	rlca			;2ce4	07 	. 
	rlca			;2ce5	07 	. 
	rlca			;2ce6	07 	. 
	rlca			;2ce7	07 	. 
	rra			;2ce8	1f 	. 
	rra			;2ce9	1f 	. 
	jr l2d04h		;2cea	18 18 	. . 
	jr c,l2d26h		;2cec	38 38 	8 8 
l2ceeh:
	daa			;2cee	27 	' 
	jr nz,l2d51h		;2cef	20 60 	  ` 
	ld b,b			;2cf1	40 	@ 
	ld a,a			;2cf2	7f 	 
	ld h,b			;2cf3	60 	` 
	ld h,b			;2cf4	60 	` 
	ld b,b			;2cf5	40 	@ 
	ld a,a			;2cf6	7f 	 
	ld h,b			;2cf7	60 	` 
	ld a,(l3e22h)		;2cf8	3a 22 3e 	: " > 
	ld (04f7fh),hl		;2cfb	22 7f 4f 	"  O 
	ld a,a			;2cfe	7f 	 
	ld l,a			;2cff	6f 	o 
	rst 38h			;2d00	ff 	. 
	rst 38h			;2d01	ff 	. 
	ret p			;2d02	f0 	. 
	ret p			;2d03	f0 	. 
l2d04h:
	ret p			;2d04	f0 	. 
	ret p			;2d05	f0 	. 
	rrca			;2d06	0f 	. 
	nop			;2d07	00 	. 
	ld a,(hl)			;2d08	7e 	~ 
	ld a,(hl)			;2d09	7e 	~ 
	rst 38h			;2d0a	ff 	. 
	ld a,(hl)			;2d0b	7e 	~ 
	rst 38h			;2d0c	ff 	. 
	rst 38h			;2d0d	ff 	. 
	rst 38h			;2d0e	ff 	. 
	rst 38h			;2d0f	ff 	. 
	rst 8			;2d10	cf 	. 
	rst 8			;2d11	cf 	. 
	rst 38h			;2d12	ff 	. 
	rst 8			;2d13	cf 	. 
	rra			;2d14	1f 	. 
	rra			;2d15	1f 	. 
	rst 38h			;2d16	ff 	. 
	rra			;2d17	1f 	. 
	inc a			;2d18	3c 	< 
	inc a			;2d19	3c 	< 
	inc a			;2d1a	3c 	< 
	inc a			;2d1b	3c 	< 
	cp 0feh		;2d1c	fe fe 	. . 
	jp nz,0c3c2h		;2d1e	c2 c2 c3 	. . . 
	jp l013dh		;2d21	c3 3d 01 	. = . 
	inc bc			;2d24	03 	. 
	inc bc			;2d25	03 	. 
l2d26h:
	defb 0fdh,001h,002h	;illegal sequence		;2d26	fd 01 02 	. . . 
	ld (bc),a			;2d29	02 	. 
	cp 002h		;2d2a	fe 02 	. . 
	inc c			;2d2c	0c 	. 
	nop			;2d2d	00 	. 
	call m,sub_3e0ch		;2d2e	fc 0c 3e 	. . > 
	ld c,0feh		;2d31	0e fe 	. . 
	ld a,03fh		;2d33	3e 3f 	> ? 
	ccf			;2d35	3f 	? 
	pop af			;2d36	f1 	. 
	ld sp,04066h		;2d37	31 66 40 	1 f @ 
	ld a,a			;2d3a	7f 	 
	ld h,b			;2d3b	60 	` 
	ld a,026h		;2d3c	3e 26 	> & 
	ccf			;2d3e	3f 	? 
	ld h,038h		;2d3f	26 38 	& 8 
	jr c,l2d82h		;2d41	38 3f 	8 ? 
	jr c,l2da5h		;2d43	38 60 	8 ` 
	ld b,b			;2d45	40 	@ 
	ld a,a			;2d46	7f 	 
	ld h,b			;2d47	60 	` 
	ld h,b			;2d48	60 	` 
	ld b,b			;2d49	40 	@ 
	ld a,a			;2d4a	7f 	 
	ld h,b			;2d4b	60 	` 
	jr nc,l2d6eh		;2d4c	30 20 	0   
	ccf			;2d4e	3f 	? 
	jr nc,l2d70h		;2d4f	30 1f 	0 . 
l2d51h:
	djnz l2d72h		;2d51	10 1f 	. . 
	rra			;2d53	1f 	. 
	rrca			;2d54	0f 	. 
	rrca			;2d55	0f 	. 
	rrca			;2d56	0f 	. 
	rrca			;2d57	0f 	. 
	ld a,03eh		;2d58	3e 3e 	> > 
	rst 38h			;2d5a	ff 	. 
	ld a,070h		;2d5b	3e 70 	> p 
	ld (hl),b			;2d5d	70 	p 
	rst 38h			;2d5e	ff 	. 
	ld (hl),b			;2d5f	70 	p 
	rst 38h			;2d60	ff 	. 
	rst 38h			;2d61	ff 	. 
	rst 38h			;2d62	ff 	. 
	rst 38h			;2d63	ff 	. 
	rst 38h			;2d64	ff 	. 
	rst 38h			;2d65	ff 	. 
	rst 38h			;2d66	ff 	. 
	rst 38h			;2d67	ff 	. 
	ld bc,0ff00h		;2d68	01 00 ff 	. . . 
	ld bc,l013fh		;2d6b	01 3f 01 	. ? . 
l2d6eh:
	rst 38h			;2d6e	ff 	. 
	ccf			;2d6f	3f 	? 
l2d70h:
	cp 03eh		;2d70	fe 3e 	. > 
l2d72h:
	cp 0feh		;2d72	fe fe 	. . 
	jp m,0fee2h		;2d74	fa e2 fe 	. . . 
	jp p,l3333h		;2d77	f2 33 33 	. 3 3 
	call 00601h		;2d7a	cd 01 06 	. . . 
	ld b,0fah		;2d7d	06 fa 	. . 
	ld (bc),a			;2d7f	02 	. 
	ld b,006h		;2d80	06 06 	. . 
l2d82h:
	jp m,l1e02h		;2d82	fa 02 1e 	. . . 
	ld (bc),a			;2d85	02 	. 
	cp 01eh		;2d86	fe 1e 	. . 
	call m,0fc1ch		;2d88	fc 1c fc 	. . . 
	call m,0e0e0h		;2d8b	fc e0 e0 	. . . 
	ret po			;2d8e	e0 	. 
	ret po			;2d8f	e0 	. 
	nop			;2d90	00 	. 
	nop			;2d91	00 	. 
	nop			;2d92	00 	. 
	nop			;2d93	00 	. 
	nop			;2d94	00 	. 
	nop			;2d95	00 	. 
	nop			;2d96	00 	. 
	nop			;2d97	00 	. 
	ld a,d			;2d98	7a 	z 
	ld h,d			;2d99	62 	b 
	ld a,(hl)			;2d9a	7e 	~ 
	ld (hl),d			;2d9b	72 	r 
	ld a,d			;2d9c	7a 	z 
	ld h,d			;2d9d	62 	b 
	ld a,(hl)			;2d9e	7e 	~ 
	ld (hl),d			;2d9f	72 	r 
	ld a,d			;2da0	7a 	z 
	ld h,d			;2da1	62 	b 
	ld a,(hl)			;2da2	7e 	~ 
	ld (hl),d			;2da3	72 	r 
	ld a,d			;2da4	7a 	z 
l2da5h:
	ld h,d			;2da5	62 	b 
	ld a,(hl)			;2da6	7e 	~ 
	ld (hl),d			;2da7	72 	r 
	ld a,d			;2da8	7a 	z 
	ld h,d			;2da9	62 	b 
	ld a,(hl)			;2daa	7e 	~ 
	ld (hl),d			;2dab	72 	r 
	ld a,d			;2dac	7a 	z 
	ld h,d			;2dad	62 	b 
	ld a,(hl)			;2dae	7e 	~ 
	ld (hl),d			;2daf	72 	r 
	inc a			;2db0	3c 	< 
	inc (hl)			;2db1	34 	4 
	inc a			;2db2	3c 	< 
	inc a			;2db3	3c 	< 
	jr l2dceh		;2db4	18 18 	. . 
	jr $+26		;2db6	18 18 	. . 
	nop			;2db8	00 	. 
	nop			;2db9	00 	. 
	nop			;2dba	00 	. 
	nop			;2dbb	00 	. 
	nop			;2dbc	00 	. 
	nop			;2dbd	00 	. 
	nop			;2dbe	00 	. 
	nop			;2dbf	00 	. 
	nop			;2dc0	00 	. 
	nop			;2dc1	00 	. 
	nop			;2dc2	00 	. 
	nop			;2dc3	00 	. 
	rlca			;2dc4	07 	. 
	rlca			;2dc5	07 	. 
	rlca			;2dc6	07 	. 
	rlca			;2dc7	07 	. 
	rra			;2dc8	1f 	. 
	rra			;2dc9	1f 	. 
	jr l2de4h		;2dca	18 18 	. . 
	jr c,l2e06h		;2dcc	38 38 	8 8 
l2dceh:
	daa			;2dce	27 	' 
	jr nz,l2e31h		;2dcf	20 60 	  ` 
	ld b,b			;2dd1	40 	@ 
	ld a,a			;2dd2	7f 	 
	ld h,b			;2dd3	60 	` 
	ld h,b			;2dd4	60 	` 
	ld b,b			;2dd5	40 	@ 
	ld a,a			;2dd6	7f 	 
	ld h,b			;2dd7	60 	` 
	ld a,(l3e22h)		;2dd8	3a 22 3e 	: " > 
	ld (04f7fh),hl		;2ddb	22 7f 4f 	"  O 
	ld a,a			;2dde	7f 	 
	ld l,a			;2ddf	6f 	o 
	rst 38h			;2de0	ff 	. 
	rst 38h			;2de1	ff 	. 
	ret p			;2de2	f0 	. 
	ret p			;2de3	f0 	. 
l2de4h:
	ret p			;2de4	f0 	. 
	ret p			;2de5	f0 	. 
	rrca			;2de6	0f 	. 
	nop			;2de7	00 	. 
	ld a,(hl)			;2de8	7e 	~ 
	ld a,(hl)			;2de9	7e 	~ 
	rst 38h			;2dea	ff 	. 
	ld a,(hl)			;2deb	7e 	~ 
	rst 38h			;2dec	ff 	. 
	rst 38h			;2ded	ff 	. 
	rst 38h			;2dee	ff 	. 
	rst 38h			;2def	ff 	. 
	rst 0			;2df0	c7 	. 
	rst 0			;2df1	c7 	. 
	rst 38h			;2df2	ff 	. 
	rst 0			;2df3	c7 	. 
	ld a,03eh		;2df4	3e 3e 	> > 
	rst 38h			;2df6	ff 	. 
	ld a,03ch		;2df7	3e 3c 	> < 
	inc a			;2df9	3c 	< 
	inc a			;2dfa	3c 	< 
	inc a			;2dfb	3c 	< 
	cp 0feh		;2dfc	fe fe 	. . 
	jp nz,0c3c2h		;2dfe	c2 c2 c3 	. . . 
	jp l013dh		;2e01	c3 3d 01 	. = . 
	inc bc			;2e04	03 	. 
	inc bc			;2e05	03 	. 
l2e06h:
	defb 0fdh,001h,002h	;illegal sequence		;2e06	fd 01 02 	. . . 
	ld (bc),a			;2e09	02 	. 
	cp 002h		;2e0a	fe 02 	. . 
	inc c			;2e0c	0c 	. 
	nop			;2e0d	00 	. 
	call m,sub_3e0ch		;2e0e	fc 0c 3e 	. . > 
	ld c,0feh		;2e11	0e fe 	. . 
	ld a,03fh		;2e13	3e 3f 	> ? 
	ccf			;2e15	3f 	? 
	pop af			;2e16	f1 	. 
	ld sp,04066h		;2e17	31 66 40 	1 f @ 
	ld a,a			;2e1a	7f 	 
	ld h,b			;2e1b	60 	` 
	ld a,026h		;2e1c	3e 26 	> & 
	ccf			;2e1e	3f 	? 
	ld h,038h		;2e1f	26 38 	& 8 
	jr c,l2e62h		;2e21	38 3f 	8 ? 
	jr c,l2e85h		;2e23	38 60 	8 ` 
	ld b,b			;2e25	40 	@ 
	ld a,a			;2e26	7f 	 
	ld h,b			;2e27	60 	` 
	ld h,b			;2e28	60 	` 
	ld b,b			;2e29	40 	@ 
	ld a,a			;2e2a	7f 	 
	ld h,b			;2e2b	60 	` 
	jr nc,l2e4eh		;2e2c	30 20 	0   
	ccf			;2e2e	3f 	? 
	jr nc,l2e50h		;2e2f	30 1f 	0 . 
l2e31h:
	djnz l2e52h		;2e31	10 1f 	. . 
	rra			;2e33	1f 	. 
	rrca			;2e34	0f 	. 
	rrca			;2e35	0f 	. 
	rrca			;2e36	0f 	. 
	rrca			;2e37	0f 	. 
	ld a,03eh		;2e38	3e 3e 	> > 
	rst 38h			;2e3a	ff 	. 
	ld a,0c7h		;2e3b	3e c7 	> . 
	rst 0			;2e3d	c7 	. 
	rst 38h			;2e3e	ff 	. 
	rst 0			;2e3f	c7 	. 
	rst 38h			;2e40	ff 	. 
	rst 38h			;2e41	ff 	. 
	rst 38h			;2e42	ff 	. 
	rst 38h			;2e43	ff 	. 
	ld a,(hl)			;2e44	7e 	~ 
	ld a,(hl)			;2e45	7e 	~ 
	rst 38h			;2e46	ff 	. 
	ld a,(hl)			;2e47	7e 	~ 
	ld bc,0ff00h		;2e48	01 00 ff 	. . . 
	ld bc,l013fh		;2e4b	01 3f 01 	. ? . 
l2e4eh:
	rst 38h			;2e4e	ff 	. 
	ccf			;2e4f	3f 	? 
l2e50h:
	cp 03eh		;2e50	fe 3e 	. > 
l2e52h:
	cp 0feh		;2e52	fe fe 	. . 
	jp m,0fee2h		;2e54	fa e2 fe 	. . . 
	jp p,l3333h		;2e57	f2 33 33 	. 3 3 
	call 00601h		;2e5a	cd 01 06 	. . . 
	ld b,0fah		;2e5d	06 fa 	. . 
	ld (bc),a			;2e5f	02 	. 
	ld b,006h		;2e60	06 06 	. . 
l2e62h:
	jp m,l1e02h		;2e62	fa 02 1e 	. . . 
	ld (bc),a			;2e65	02 	. 
	cp 01eh		;2e66	fe 1e 	. . 
	call m,0fc1ch		;2e68	fc 1c fc 	. . . 
	call m,0e0e0h		;2e6b	fc e0 e0 	. . . 
	ret po			;2e6e	e0 	. 
	ret po			;2e6f	e0 	. 
	nop			;2e70	00 	. 
	nop			;2e71	00 	. 
	nop			;2e72	00 	. 
	nop			;2e73	00 	. 
	nop			;2e74	00 	. 
	nop			;2e75	00 	. 
	nop			;2e76	00 	. 
	nop			;2e77	00 	. 
	ld a,d			;2e78	7a 	z 
	ld h,d			;2e79	62 	b 
	ld a,(hl)			;2e7a	7e 	~ 
	ld (hl),d			;2e7b	72 	r 
	ld a,d			;2e7c	7a 	z 
	ld h,d			;2e7d	62 	b 
	ld a,(hl)			;2e7e	7e 	~ 
	ld (hl),d			;2e7f	72 	r 
	ld a,d			;2e80	7a 	z 
	ld h,d			;2e81	62 	b 
	ld a,(hl)			;2e82	7e 	~ 
	ld (hl),d			;2e83	72 	r 
	ld a,d			;2e84	7a 	z 
l2e85h:
	ld h,d			;2e85	62 	b 
	ld a,(hl)			;2e86	7e 	~ 
	ld (hl),d			;2e87	72 	r 
	ld a,d			;2e88	7a 	z 
	ld h,d			;2e89	62 	b 
	ld a,(hl)			;2e8a	7e 	~ 
	ld (hl),d			;2e8b	72 	r 
	ld a,d			;2e8c	7a 	z 
	ld h,d			;2e8d	62 	b 
	ld a,(hl)			;2e8e	7e 	~ 
	ld (hl),d			;2e8f	72 	r 
	inc a			;2e90	3c 	< 
	inc (hl)			;2e91	34 	4 
	inc a			;2e92	3c 	< 
	inc a			;2e93	3c 	< 
	jr l2eaeh		;2e94	18 18 	. . 
	jr $+26		;2e96	18 18 	. . 
	nop			;2e98	00 	. 
	nop			;2e99	00 	. 
	nop			;2e9a	00 	. 
	nop			;2e9b	00 	. 
	nop			;2e9c	00 	. 
	nop			;2e9d	00 	. 
	nop			;2e9e	00 	. 
	nop			;2e9f	00 	. 
	nop			;2ea0	00 	. 
	nop			;2ea1	00 	. 
	nop			;2ea2	00 	. 
	nop			;2ea3	00 	. 
	rlca			;2ea4	07 	. 
	rlca			;2ea5	07 	. 
	rlca			;2ea6	07 	. 
	rlca			;2ea7	07 	. 
	rra			;2ea8	1f 	. 
	rra			;2ea9	1f 	. 
	jr l2ec4h		;2eaa	18 18 	. . 
	jr c,l2ee6h		;2eac	38 38 	8 8 
l2eaeh:
	daa			;2eae	27 	' 
	jr nz,l2f11h		;2eaf	20 60 	  ` 
	ld b,b			;2eb1	40 	@ 
	ld a,a			;2eb2	7f 	 
	ld h,b			;2eb3	60 	` 
	ld h,b			;2eb4	60 	` 
	ld b,b			;2eb5	40 	@ 
	ld a,a			;2eb6	7f 	 
	ld h,b			;2eb7	60 	` 
	ld a,(l3e22h)		;2eb8	3a 22 3e 	: " > 
	ld (04f7fh),hl		;2ebb	22 7f 4f 	"  O 
	ld a,a			;2ebe	7f 	 
	ld l,a			;2ebf	6f 	o 
	rst 38h			;2ec0	ff 	. 
	rst 38h			;2ec1	ff 	. 
	ret p			;2ec2	f0 	. 
	ret p			;2ec3	f0 	. 
l2ec4h:
	ret p			;2ec4	f0 	. 
	ret p			;2ec5	f0 	. 
	rrca			;2ec6	0f 	. 
	nop			;2ec7	00 	. 
	ld c,00eh		;2ec8	0e 0e 	. . 
	rst 38h			;2eca	ff 	. 
	ld c,01eh		;2ecb	0e 1e 	. . 
	ld e,0ffh		;2ecd	1e ff 	. . 
	ld e,036h		;2ecf	1e 36 	. 6 
	ld (hl),0ffh		;2ed1	36 ff 	6 . 
	ld (hl),066h		;2ed3	36 66 	6 f 
	ld h,(hl)			;2ed5	66 	f 
	rst 38h			;2ed6	ff 	. 
	ld h,(hl)			;2ed7	66 	f 
	inc a			;2ed8	3c 	< 
	inc a			;2ed9	3c 	< 
	inc a			;2eda	3c 	< 
	inc a			;2edb	3c 	< 
	cp 0feh		;2edc	fe fe 	. . 
	jp nz,0c3c2h		;2ede	c2 c2 c3 	. . . 
	jp l013dh		;2ee1	c3 3d 01 	. = . 
	inc bc			;2ee4	03 	. 
	inc bc			;2ee5	03 	. 
l2ee6h:
	defb 0fdh,001h,002h	;illegal sequence		;2ee6	fd 01 02 	. . . 
	ld (bc),a			;2ee9	02 	. 
	cp 002h		;2eea	fe 02 	. . 
	inc c			;2eec	0c 	. 
	nop			;2eed	00 	. 
	call m,sub_3e0ch		;2eee	fc 0c 3e 	. . > 
	ld c,0feh		;2ef1	0e fe 	. . 
	ld a,03fh		;2ef3	3e 3f 	> ? 
	ccf			;2ef5	3f 	? 
	pop af			;2ef6	f1 	. 
	ld sp,04066h		;2ef7	31 66 40 	1 f @ 
	ld a,a			;2efa	7f 	 
	ld h,b			;2efb	60 	` 
	ld a,026h		;2efc	3e 26 	> & 
	ccf			;2efe	3f 	? 
	ld h,038h		;2eff	26 38 	& 8 
	jr c,l2f42h		;2f01	38 3f 	8 ? 
	jr c,l2f65h		;2f03	38 60 	8 ` 
	ld b,b			;2f05	40 	@ 
	ld a,a			;2f06	7f 	 
	ld h,b			;2f07	60 	` 
	ld h,b			;2f08	60 	` 
	ld b,b			;2f09	40 	@ 
	ld a,a			;2f0a	7f 	 
	ld h,b			;2f0b	60 	` 
	jr nc,l2f2eh		;2f0c	30 20 	0   
	ccf			;2f0e	3f 	? 
	jr nc,l2f30h		;2f0f	30 1f 	0 . 
l2f11h:
	djnz l2f32h		;2f11	10 1f 	. . 
	rra			;2f13	1f 	. 
	rrca			;2f14	0f 	. 
	rrca			;2f15	0f 	. 
	rrca			;2f16	0f 	. 
	rrca			;2f17	0f 	. 
	and 0e6h		;2f18	e6 e6 	. . 
	rst 38h			;2f1a	ff 	. 
	and 0ffh		;2f1b	e6 ff 	. . 
	rst 38h			;2f1d	ff 	. 
	rst 38h			;2f1e	ff 	. 
	rst 38h			;2f1f	ff 	. 
	rst 38h			;2f20	ff 	. 
	rst 38h			;2f21	ff 	. 
	rst 38h			;2f22	ff 	. 
	rst 38h			;2f23	ff 	. 
	ld b,006h		;2f24	06 06 	. . 
	rst 38h			;2f26	ff 	. 
	ld b,001h		;2f27	06 01 	. . 
	nop			;2f29	00 	. 
	rst 38h			;2f2a	ff 	. 
	ld bc,l013fh		;2f2b	01 3f 01 	. ? . 
l2f2eh:
	rst 38h			;2f2e	ff 	. 
	ccf			;2f2f	3f 	? 
l2f30h:
	cp 03eh		;2f30	fe 3e 	. > 
l2f32h:
	cp 0feh		;2f32	fe fe 	. . 
	jp m,0fee2h		;2f34	fa e2 fe 	. . . 
	jp p,l3333h		;2f37	f2 33 33 	. 3 3 
	call 00601h		;2f3a	cd 01 06 	. . . 
	ld b,0fah		;2f3d	06 fa 	. . 
	ld (bc),a			;2f3f	02 	. 
	ld b,006h		;2f40	06 06 	. . 
l2f42h:
	jp m,l1e02h		;2f42	fa 02 1e 	. . . 
	ld (bc),a			;2f45	02 	. 
	cp 01eh		;2f46	fe 1e 	. . 
	call m,0fc1ch		;2f48	fc 1c fc 	. . . 
	call m,0e0e0h		;2f4b	fc e0 e0 	. . . 
	ret po			;2f4e	e0 	. 
	ret po			;2f4f	e0 	. 
	nop			;2f50	00 	. 
	nop			;2f51	00 	. 
	nop			;2f52	00 	. 
	nop			;2f53	00 	. 
	nop			;2f54	00 	. 
	nop			;2f55	00 	. 
	nop			;2f56	00 	. 
	nop			;2f57	00 	. 
	ld a,d			;2f58	7a 	z 
	ld h,d			;2f59	62 	b 
	ld a,(hl)			;2f5a	7e 	~ 
	ld (hl),d			;2f5b	72 	r 
	ld a,d			;2f5c	7a 	z 
	ld h,d			;2f5d	62 	b 
	ld a,(hl)			;2f5e	7e 	~ 
	ld (hl),d			;2f5f	72 	r 
	ld a,d			;2f60	7a 	z 
	ld h,d			;2f61	62 	b 
	ld a,(hl)			;2f62	7e 	~ 
	ld (hl),d			;2f63	72 	r 
	ld a,d			;2f64	7a 	z 
l2f65h:
	ld h,d			;2f65	62 	b 
	ld a,(hl)			;2f66	7e 	~ 
	ld (hl),d			;2f67	72 	r 
	ld a,d			;2f68	7a 	z 
	ld h,d			;2f69	62 	b 
	ld a,(hl)			;2f6a	7e 	~ 
	ld (hl),d			;2f6b	72 	r 
	ld a,d			;2f6c	7a 	z 
	ld h,d			;2f6d	62 	b 
	ld a,(hl)			;2f6e	7e 	~ 
	ld (hl),d			;2f6f	72 	r 
	inc a			;2f70	3c 	< 
	inc (hl)			;2f71	34 	4 
	inc a			;2f72	3c 	< 
	inc a			;2f73	3c 	< 
	jr l2f8eh		;2f74	18 18 	. . 
	jr l2f90h		;2f76	18 18 	. . 
	nop			;2f78	00 	. 
	nop			;2f79	00 	. 
	nop			;2f7a	00 	. 
	nop			;2f7b	00 	. 
	ld (bc),a			;2f7c	02 	. 
	ld (bc),a			;2f7d	02 	. 
	ld (bc),a			;2f7e	02 	. 
	ld (bc),a			;2f7f	02 	. 
	dec b			;2f80	05 	. 
	rlca			;2f81	07 	. 
	dec b			;2f82	05 	. 
	rlca			;2f83	07 	. 
	ld a,(l3a3dh)		;2f84	3a 3d 3a 	: = : 
	dec a			;2f87	3d 	= 
	ld d,a			;2f88	57 	W 
	ld l,d			;2f89	6a 	j 
	ld d,l			;2f8a	55 	U 
	ld l,b			;2f8b	68 	h 
	ld a,e			;2f8c	7b 	{ 
l2f8dh:
	ld d,h			;2f8d	54 	T 
l2f8eh:
	ld l,d			;2f8e	6a 	j 
	ld b,l			;2f8f	45 	E 
l2f90h:
	rst 18h			;2f90	df 	. 
	and a			;2f91	a7 	. 
	ret nc			;2f92	d0 	. 
	xor b			;2f93	a8 	. 
	ret m			;2f94	f8 	. 
	ret z			;2f95	c8 	. 
	and a			;2f96	a7 	. 
	sub b			;2f97	90 	. 
	ld e,c			;2f98	59 	Y 
	ld e,c			;2f99	59 	Y 
	ld e,c			;2f9a	59 	Y 
	ld e,c			;2f9b	59 	Y 
	and (hl)			;2f9c	a6 	. 
	rst 20h			;2f9d	e7 	. 
	cp (hl)			;2f9e	be 	. 
	rst 20h			;2f9f	e7 	. 
	ld d,l			;2fa0	55 	U 
	xor d			;2fa1	aa 	. 
	ld d,l			;2fa2	55 	U 
	xor d			;2fa3	aa 	. 
	rst 38h			;2fa4	ff 	. 
	ld b,h			;2fa5	44 	D 
	xor d			;2fa6	aa 	. 
	ld de,0936dh		;2fa7	11 6d 93 	. m . 
	ld b,h			;2faa	44 	D 
	cp d			;2fab	ba 	. 
	ret p			;2fac	f0 	. 
	or b			;2fad	b0 	. 
	rrca			;2fae	0f 	. 
	ld b,b			;2faf	40 	@ 
	nop			;2fb0	00 	. 
	nop			;2fb1	00 	. 
	rst 38h			;2fb2	ff 	. 
	nop			;2fb3	00 	. 
	rlca			;2fb4	07 	. 
	rlca			;2fb5	07 	. 
	ei			;2fb6	fb 	. 
	inc bc			;2fb7	03 	. 
	ret nc			;2fb8	d0 	. 
	ret nc			;2fb9	d0 	. 
	ret nc			;2fba	d0 	. 
	ret nc			;2fbb	d0 	. 
	xor b			;2fbc	a8 	. 
	ld a,b			;2fbd	78 	x 
	xor b			;2fbe	a8 	. 
	ld a,b			;2fbf	78 	x 
	sub 0aeh		;2fc0	d6 ae 	. . 
	ld d,(hl)			;2fc2	56 	V 
	ld l,0fbh		;2fc3	2e fb 	. . 
	dec d			;2fc5	15 	. 
	xor e			;2fc6	ab 	. 
	ld b,l			;2fc7	45 	E 
	rst 38h			;2fc8	ff 	. 
	ld b,e			;2fc9	43 	C 
	dec d			;2fca	15 	. 
	xor c			;2fcb	a9 	. 
	rlca			;2fcc	07 	. 
	add hl,bc			;2fcd	09 	. 
	di			;2fce	f3 	. 
	dec c			;2fcf	0d 	. 
	dec a			;2fd0	3d 	= 
	ccf			;2fd1	3f 	? 
	pop hl			;2fd2	e1 	. 
	inc hl			;2fd3	23 	# 
	rst 38h			;2fd4	ff 	. 
	ld sp,hl			;2fd5	f9 	. 
	inc hl			;2fd6	23 	# 
	dec h			;2fd7	25 	% 
	ret nz			;2fd8	c0 	. 
	and b			;2fd9	a0 	. 
	rst 18h			;2fda	df 	. 
	and b			;2fdb	a0 	. 
	ld a,a			;2fdc	7f 	 
	ld e,a			;2fdd	5f 	_ 
	ld c,(hl)			;2fde	4e 	N 
	ld l,(hl)			;2fdf	6e 	n 
	rst 18h			;2fe0	df 	. 
	sbc a,a			;2fe1	9f 	. 
	ret p			;2fe2	f0 	. 
	sub b			;2fe3	90 	. 
	ld e,a			;2fe4	5f 	_ 
	ld e,a			;2fe5	5f 	_ 
	halt			;2fe6	76 	v 
	ld d,(hl)			;2fe7	56 	V 
	cp a			;2fe8	bf 	. 
	rst 18h			;2fe9	df 	. 
	sub d			;2fea	92 	. 
	jp p,09fdfh		;2feb	f2 df 9f 	. . . 
	jp p,07f92h		;2fee	f2 92 7f 	. .  
	ld e,a			;2ff1	5f 	_ 
	ld l,(hl)			;2ff2	6e 	n 
	ld l,(hl)			;2ff3	6e 	n 
	or b			;2ff4	b0 	. 
	ret nz			;2ff5	c0 	. 
	cp a			;2ff6	bf 	. 
	ret nc			;2ff7	d0 	. 
	rst 38h			;2ff8	ff 	. 
	rst 38h			;2ff9	ff 	. 
	ld h,h			;2ffa	64 	d 
	ld h,h			;2ffb	64 	d 
	rst 38h			;2ffc	ff 	. 
	rst 38h			;2ffd	ff 	. 
	sub h			;2ffe	94 	. 
	sub h			;2fff	94 	. 
	rst 38h			;3000	ff 	. 
	rst 38h			;3001	ff 	. 
	sub a			;3002	97 	. 
	sub a			;3003	97 	. 
	rst 38h			;3004	ff 	. 
l3005h:
	rst 38h			;3005	ff 	. 
	sub h			;3006	94 	. 
	sub h			;3007	94 	. 
	rst 38h			;3008	ff 	. 
	rst 38h			;3009	ff 	. 
	sub h			;300a	94 	. 
	sub h			;300b	94 	. 
	ret m			;300c	f8 	. 
l300dh:
	ret m			;300d	f8 	. 
	ld h,a			;300e	67 	g 
	ld h,b			;300f	60 	` 
	ld bc,0ff00h		;3010	01 00 ff 	. . . 
	nop			;3013	00 	. 
	cpl			;3014	2f 	/ 
	ld de,l34eah		;3015	11 ea 34 	. . 4 
	rst 38h			;3018	ff 	. 
	ei			;3019	fb 	. 
	and l			;301a	a5 	. 
l301bh:
	and c			;301b	a1 	. 
	ei			;301c	fb 	. 
l301dh:
	defb 0fdh,0a3h,0a5h	;illegal sequence		;301d	fd a3 a5 	. . . 
	rst 38h			;3020	ff 	. 
	defb 0fdh,0a1h,0a3h	;illegal sequence		;3021	fd a1 a3 	. . . 
	rst 38h			;3024	ff 	. 
	rst 38h			;3025	ff 	. 
	cp l			;3026	bd 	. 
	cp l			;3027	bd 	. 
	jp 0bbc5h		;3028	c3 c5 bb 	. . . 
	add a,l			;302b	85 	. 
	ld d,00ah		;302c	16 0a 	. . 
	and 01ah		;302e	e6 1a 	. . 
	rst 18h			;3030	df 	. 
	dec h			;3031	25 	% 
	ld e,e			;3032	5b 	[ 
	pop hl			;3033	e1 	. 
	cp 012h		;3034	fe 12 	. . 
	xor (hl)			;3036	ae 	. 
	ld b,d			;3037	42 	B 
	defb 0fdh,0a2h,0d5h	;illegal sequence		;3038	fd a2 d5 	. . . 
	adc a,e			;303b	8b 	. 
	ld a,a			;303c	7f 	 
	ld b,h			;303d	44 	D 
l303eh:
	ld l,d			;303e	6a 	j 
	ld d,c			;303f	51 	Q 
	scf			;3040	37 	7 
	add hl,sp			;3041	39 	9 
	dec (hl)			;3042	35 	5 
	dec sp			;3043	3b 	; 
	ld c,00eh		;3044	0e 0e 	. . 
	ld c,00eh		;3046	0e 0e 	. . 
	nop			;3048	00 	. 
	nop			;3049	00 	. 
	nop			;304a	00 	. 
	nop			;304b	00 	. 
	nop			;304c	00 	. 
	nop			;304d	00 	. 
	nop			;304e	00 	. 
	nop			;304f	00 	. 
	nop			;3050	00 	. 
	nop			;3051	00 	. 
	nop			;3052	00 	. 
	nop			;3053	00 	. 
	nop			;3054	00 	. 
	nop			;3055	00 	. 
	nop			;3056	00 	. 
	nop			;3057	00 	. 
	ld a,l			;3058	7d 	} 
	adc a,d			;3059	8a 	. 
	ld d,l			;305a	55 	U 
	and d			;305b	a2 	. 
	cp 043h		;305c	fe 43 	. C 
	xor d			;305e	aa 	. 
	rla			;305f	17 	. 
	ld e,a			;3060	5f 	_ 
	or a			;3061	b7 	. 
	ld d,a			;3062	57 	W 
	cp a			;3063	bf 	. 
	jp m,0feeah		;3064	fa ea fe 	. . . 
	jp m,0627ah		;3067	fa 7a 62 	. z b 
	ld a,(hl)			;306a	7e 	~ 
	ld (hl),d			;306b	72 	r 
	ld a,d			;306c	7a 	z 
	ld h,d			;306d	62 	b 
	ld a,(hl)			;306e	7e 	~ 
	ld (hl),d			;306f	72 	r 
	inc a			;3070	3c 	< 
	inc (hl)			;3071	34 	4 
	inc a			;3072	3c 	< 
	inc a			;3073	3c 	< 
	jr l308eh		;3074	18 18 	. . 
	jr l3090h		;3076	18 18 	. . 
	or (hl)			;3078	b6 	. 
	ld c,d			;3079	4a 	J 
	ld (de),a			;307a	12 	. 
	xor 0fch		;307b	ee fc 	. . 
	ld l,h			;307d	6c 	l 
	ld l,h			;307e	6c 	l 
	call m,09090h		;307f	fc 90 90 	. . . 
	sub b			;3082	90 	. 
	sub b			;3083	90 	. 
	nop			;3084	00 	. 
	nop			;3085	00 	. 
l3086h:
	nop			;3086	00 	. 
	nop			;3087	00 	. 
	nop			;3088	00 	. 
	nop			;3089	00 	. 
	nop			;308a	00 	. 
	nop			;308b	00 	. 
	nop			;308c	00 	. 
	nop			;308d	00 	. 
l308eh:
	nop			;308e	00 	. 
	nop			;308f	00 	. 
l3090h:
	nop			;3090	00 	. 
	nop			;3091	00 	. 
	nop			;3092	00 	. 
	nop			;3093	00 	. 
	nop			;3094	00 	. 
	nop			;3095	00 	. 
	nop			;3096	00 	. 
	nop			;3097	00 	. 
	djnz l30aah		;3098	10 10 	. . 
	cpl			;309a	2f 	/ 
	nop			;309b	00 	. 
	rst 38h			;309c	ff 	. 
	add a,b			;309d	80 	. 
	rst 38h			;309e	ff 	. 
	rst 38h			;309f	ff 	. 
	rst 38h			;30a0	ff 	. 
	add a,b			;30a1	80 	. 
	rst 38h			;30a2	ff 	. 
	rst 38h			;30a3	ff 	. 
	rst 38h			;30a4	ff 	. 
	add a,b			;30a5	80 	. 
	rst 38h			;30a6	ff 	. 
	rst 38h			;30a7	ff 	. 
	ld a,a			;30a8	7f 	 
	ld b,b			;30a9	40 	@ 
l30aah:
	ld a,a			;30aa	7f 	 
	ld a,a			;30ab	7f 	 
	ccf			;30ac	3f 	? 
	ccf			;30ad	3f 	? 
	ccf			;30ae	3f 	? 
	ccf			;30af	3f 	? 
	rra			;30b0	1f 	. 
	rra			;30b1	1f 	. 
	rra			;30b2	1f 	. 
	rra			;30b3	1f 	. 
	rra			;30b4	1f 	. 
	ld de,01e1eh		;30b5	11 1e 1e 	. . . 
	jr nz,l30bah		;30b8	20 00 	  . 
l30bah:
	ret po			;30ba	e0 	. 
	jr nz,l3086h		;30bb	20 c9 	  . 
	add hl,bc			;30bd	09 	. 
	xor 0c8h		;30be	ee c8 	. . 
	rst 18h			;30c0	df 	. 
	djnz $+1		;30c1	10 ff 	. . 
	rst 18h			;30c3	df 	. 
	rst 18h			;30c4	df 	. 
	djnz $+1		;30c5	10 ff 	. . 
	rst 18h			;30c7	df 	. 
	rst 38h			;30c8	ff 	. 
	djnz $+1		;30c9	10 ff 	. . 
	rst 38h			;30cb	ff 	. 
	rst 38h			;30cc	ff 	. 
	ret m			;30cd	f8 	. 
	rst 38h			;30ce	ff 	. 
	rst 38h			;30cf	ff 	. 
	rst 38h			;30d0	ff 	. 
	rst 38h			;30d1	ff 	. 
	rst 38h			;30d2	ff 	. 
	rst 38h			;30d3	ff 	. 
	rra			;30d4	1f 	. 
	rra			;30d5	1f 	. 
	rst 38h			;30d6	ff 	. 
	rra			;30d7	1f 	. 
	ld bc,l0101h		;30d8	01 01 01 	. . . 
	ld bc,l0207h		;30db	01 07 02 	. . . 
	rst 38h			;30de	ff 	. 
	rlca			;30df	07 	. 
	ei			;30e0	fb 	. 
	ld (bc),a			;30e1	02 	. 
	rst 38h			;30e2	ff 	. 
	ei			;30e3	fb 	. 
	ei			;30e4	fb 	. 
	inc bc			;30e5	03 	. 
	rst 38h			;30e6	ff 	. 
	ei			;30e7	fb 	. 
	ei			;30e8	fb 	. 
	inc bc			;30e9	03 	. 
	rst 38h			;30ea	ff 	. 
	ei			;30eb	fb 	. 
	rst 38h			;30ec	ff 	. 
	rlca			;30ed	07 	. 
	rst 38h			;30ee	ff 	. 
	rst 38h			;30ef	ff 	. 
	rst 38h			;30f0	ff 	. 
	rst 38h			;30f1	ff 	. 
	rst 38h			;30f2	ff 	. 
	rst 38h			;30f3	ff 	. 
	rst 38h			;30f4	ff 	. 
	cp 0ffh		;30f5	fe ff 	. . 
	rst 38h			;30f7	ff 	. 
	ld b,c			;30f8	41 	A 
	ld b,b			;30f9	40 	@ 
	cp a			;30fa	bf 	. 
	ld bc,l00feh		;30fb	01 fe 00 	. . . 
	rst 38h			;30fe	ff 	. 
	cp 0feh		;30ff	fe fe 	. . 
	nop			;3101	00 	. 
	rst 38h			;3102	ff 	. 
	cp 0ffh		;3103	fe ff 	. . 
	nop			;3105	00 	. 
	rst 38h			;3106	ff 	. 
	rst 38h			;3107	ff 	. 
	rst 38h			;3108	ff 	. 
l3109h:
	rst 38h			;3109	ff 	. 
	rst 38h			;310a	ff 	. 
	rst 38h			;310b	ff 	. 
	rst 38h			;310c	ff 	. 
	pop bc			;310d	c1 	. 
	rst 38h			;310e	ff 	. 
	rst 38h			;310f	ff 	. 
	call p,0fb04h		;3110	f4 04 fb 	. . . 
	ret p			;3113	f0 	. 
	rst 28h			;3114	ef 	. 
	nop			;3115	00 	. 
	rst 38h			;3116	ff 	. 
	rst 28h			;3117	ef 	. 
	ld b,h			;3118	44 	D 
	ld b,h			;3119	44 	D 
	ld a,e			;311a	7b 	{ 
	ld b,b			;311b	40 	@ 
	rst 38h			;311c	ff 	. 
	add a,b			;311d	80 	. 
	rst 38h			;311e	ff 	. 
	rst 38h			;311f	ff 	. 
l3120h:
	rst 38h			;3120	ff 	. 
	add a,b			;3121	80 	. 
	rst 38h			;3122	ff 	. 
	rst 38h			;3123	ff 	. 
	rst 38h			;3124	ff 	. 
	add a,b			;3125	80 	. 
	rst 38h			;3126	ff 	. 
	rst 38h			;3127	ff 	. 
	rst 38h			;3128	ff 	. 
	ret nz			;3129	c0 	. 
	rst 38h			;312a	ff 	. 
	rst 38h			;312b	ff 	. 
	rst 38h			;312c	ff 	. 
	rst 38h			;312d	ff 	. 
	rst 38h			;312e	ff 	. 
	rst 38h			;312f	ff 	. 
	ld a,a			;3130	7f 	 
	ld a,h			;3131	7c 	| 
	rst 38h			;3132	ff 	. 
	ld a,a			;3133	7f 	 
	cp (hl)			;3134	be 	. 
	jr c,$+1		;3135	38 ff 	8 . 
	cp (hl)			;3137	be 	. 
	jr nz,l313ah		;3138	20 00 	  . 
l313ah:
	ret po			;313a	e0 	. 
	jr nz,l3109h		;313b	20 cc 	  . 
	inc c			;313d	0c 	. 
	ex de,hl			;313e	eb 	. 
	ret z			;313f	c8 	. 
l3140h:
	rst 18h			;3140	df 	. 
	djnz $+1		;3141	10 ff 	. . 
	rst 18h			;3143	df 	. 
	rst 18h			;3144	df 	. 
	djnz $+1		;3145	10 ff 	. . 
	rst 18h			;3147	df 	. 
	rst 38h			;3148	ff 	. 
	jr nc,$+1		;3149	30 ff 	0 . 
	rst 38h			;314b	ff 	. 
	rst 38h			;314c	ff 	. 
	ret m			;314d	f8 	. 
	rst 38h			;314e	ff 	. 
	rst 38h			;314f	ff 	. 
	ld c,a			;3150	4f 	O 
	ld c,a			;3151	4f 	O 
	cp a			;3152	bf 	. 
	rrca			;3153	0f 	. 
	di			;3154	f3 	. 
	inc bc			;3155	03 	. 
	rst 38h			;3156	ff 	. 
	di			;3157	f3 	. 
	ld bc,l0101h		;3158	01 01 01 	. . . 
	ld bc,l0207h		;315b	01 07 02 	. . . 
	rst 38h			;315e	ff 	. 
	rlca			;315f	07 	. 
	ei			;3160	fb 	. 
	ld (bc),a			;3161	02 	. 
	rst 38h			;3162	ff 	. 
	ei			;3163	fb 	. 
	ei			;3164	fb 	. 
	inc bc			;3165	03 	. 
	rst 38h			;3166	ff 	. 
	ei			;3167	fb 	. 
	ei			;3168	fb 	. 
	inc bc			;3169	03 	. 
	rst 38h			;316a	ff 	. 
	ei			;316b	fb 	. 
	rst 38h			;316c	ff 	. 
	rlca			;316d	07 	. 
	rst 38h			;316e	ff 	. 
	rst 38h			;316f	ff 	. 
l3170h:
	rst 38h			;3170	ff 	. 
	call m,0ffffh		;3171	fc ff ff 	. . . 
	call m,0ffe0h		;3174	fc e0 ff 	. . . 
	call m,040c1h		;3177	fc c1 40 	. . @ 
	cp a			;317a	bf 	. 
	add a,c			;317b	81 	. 
	cp 000h		;317c	fe 00 	. . 
	rst 38h			;317e	ff 	. 
	cp 0feh		;317f	fe fe 	. . 
	nop			;3181	00 	. 
	rst 38h			;3182	ff 	. 
	cp 0ffh		;3183	fe ff 	. . 
	nop			;3185	00 	. 
	rst 38h			;3186	ff 	. 
	rst 38h			;3187	ff 	. 
	rst 38h			;3188	ff 	. 
	rst 38h			;3189	ff 	. 
	rst 38h			;318a	ff 	. 
	rst 38h			;318b	ff 	. 
	cp 0feh		;318c	fe fe 	. . 
	cp 0feh		;318e	fe fe 	. . 
l3190h:
	add a,d			;3190	82 	. 
	add a,d			;3191	82 	. 
	ld a,(hl)			;3192	7e 	~ 
	ld (bc),a			;3193	02 	. 
	defb 0fdh,001h,0ffh	;illegal sequence		;3194	fd 01 ff 	. . . 
	defb 0fdh,03fh,020h	;illegal sequence		;3197	fd 3f 20 	. ?   
	ccf			;319a	3f 	? 
	ccf			;319b	3f 	? 
	ccf			;319c	3f 	? 
	jr nz,l31deh		;319d	20 3f 	  ? 
	ccf			;319f	3f 	? 
	ld a,a			;31a0	7f 	 
	ld b,b			;31a1	40 	@ 
	ld a,a			;31a2	7f 	 
	ld a,a			;31a3	7f 	 
	ld a,a			;31a4	7f 	 
	ld b,b			;31a5	40 	@ 
	ld a,a			;31a6	7f 	 
	ld a,a			;31a7	7f 	 
	ld a,a			;31a8	7f 	 
	ld b,b			;31a9	40 	@ 
	ld a,a			;31aa	7f 	 
	ld a,a			;31ab	7f 	 
	ccf			;31ac	3f 	? 
	jr nz,l31eeh		;31ad	20 3f 	  ? 
	ccf			;31af	3f 	? 
	rra			;31b0	1f 	. 
	rra			;31b1	1f 	. 
	rra			;31b2	1f 	. 
	rra			;31b3	1f 	. 
	nop			;31b4	00 	. 
	nop			;31b5	00 	. 
	nop			;31b6	00 	. 
	nop			;31b7	00 	. 
	rst 28h			;31b8	ef 	. 
	inc c			;31b9	0c 	. 
	rst 38h			;31ba	ff 	. 
	rst 28h			;31bb	ef 	. 
	rst 28h			;31bc	ef 	. 
	ex af,af'			;31bd	08 	. 
	rst 38h			;31be	ff 	. 
	rst 28h			;31bf	ef 	. 
	defb 0edh;next byte illegal after ed		;31c0	ed 	. 
	ex af,af'			;31c1	08 	. 
	rst 38h			;31c2	ff 	. 
	defb 0edh;next byte illegal after ed		;31c3	ed 	. 
	defb 0edh;next byte illegal after ed		;31c4	ed 	. 
	ex af,af'			;31c5	08 	. 
	rst 38h			;31c6	ff 	. 
	defb 0edh;next byte illegal after ed		;31c7	ed 	. 
l31c8h:
	defb 0ddh,01ch,0ffh	;illegal sequence		;31c8	dd 1c ff 	. . . 
	defb 0ddh,0f3h,033h	;illegal sequence		;31cb	dd f3 33 	. . 3 
	di			;31ce	f3 	. 
	di			;31cf	f3 	. 
l31d0h:
	ret po			;31d0	e0 	. 
	ret po			;31d1	e0 	. 
	ret po			;31d2	e0 	. 
	ret po			;31d3	e0 	. 
	nop			;31d4	00 	. 
	nop			;31d5	00 	. 
	nop			;31d6	00 	. 
	nop			;31d7	00 	. 
	add a,a			;31d8	87 	. 
	add a,(hl)			;31d9	86 	. 
	ld a,a			;31da	7f 	 
	rlca			;31db	07 	. 
	ei			;31dc	fb 	. 
	ld (bc),a			;31dd	02 	. 
l31deh:
	rst 38h			;31de	ff 	. 
	ei			;31df	fb 	. 
	ei			;31e0	fb 	. 
	ld (bc),a			;31e1	02 	. 
	rst 38h			;31e2	ff 	. 
	ei			;31e3	fb 	. 
	ei			;31e4	fb 	. 
	ld (bc),a			;31e5	02 	. 
	rst 38h			;31e6	ff 	. 
	ei			;31e7	fb 	. 
	ei			;31e8	fb 	. 
	ld (bc),a			;31e9	02 	. 
	rst 38h			;31ea	ff 	. 
	ei			;31eb	fb 	. 
	rst 38h			;31ec	ff 	. 
	rlca			;31ed	07 	. 
l31eeh:
	rst 38h			;31ee	ff 	. 
	rst 38h			;31ef	ff 	. 
	rst 38h			;31f0	ff 	. 
	rst 38h			;31f1	ff 	. 
	rst 38h			;31f2	ff 	. 
	rst 38h			;31f3	ff 	. 
	nop			;31f4	00 	. 
	nop			;31f5	00 	. 
	nop			;31f6	00 	. 
	nop			;31f7	00 	. 
	cp a			;31f8	bf 	. 
	nop			;31f9	00 	. 
	rst 38h			;31fa	ff 	. 
	cp a			;31fb	bf 	. 
	cp a			;31fc	bf 	. 
	nop			;31fd	00 	. 
	rst 38h			;31fe	ff 	. 
	cp a			;31ff	bf 	. 
	cp a			;3200	bf 	. 
	nop			;3201	00 	. 
l3202h:
	rst 38h			;3202	ff 	. 
	cp a			;3203	bf 	. 
	cp a			;3204	bf 	. 
	nop			;3205	00 	. 
	rst 38h			;3206	ff 	. 
	cp a			;3207	bf 	. 
	rst 18h			;3208	df 	. 
	nop			;3209	00 	. 
	rst 38h			;320a	ff 	. 
	rst 18h			;320b	df 	. 
	rst 20h			;320c	e7 	. 
	nop			;320d	00 	. 
	rst 38h			;320e	ff 	. 
	rst 20h			;320f	e7 	. 
	rst 38h			;3210	ff 	. 
	ret nz			;3211	c0 	. 
	rst 38h			;3212	ff 	. 
	rst 38h			;3213	ff 	. 
	rst 38h			;3214	ff 	. 
	rst 38h			;3215	ff 	. 
	rst 38h			;3216	ff 	. 
	rst 38h			;3217	ff 	. 
	cp a			;3218	bf 	. 
	jr nc,$+1		;3219	30 ff 	0 . 
	cp a			;321b	bf 	. 
	rst 18h			;321c	df 	. 
	djnz $+1		;321d	10 ff 	. . 
	rst 18h			;321f	df 	. 
	rst 18h			;3220	df 	. 
	djnz $+1		;3221	10 ff 	. . 
	rst 18h			;3223	df 	. 
	rst 18h			;3224	df 	. 
	djnz $+1		;3225	10 ff 	. . 
	rst 18h			;3227	df 	. 
	rst 18h			;3228	df 	. 
	djnz $+1		;3229	10 ff 	. . 
	rst 18h			;322b	df 	. 
	rst 38h			;322c	ff 	. 
	jr nc,$+1		;322d	30 ff 	0 . 
	rst 38h			;322f	ff 	. 
	rst 18h			;3230	df 	. 
	ld e,a			;3231	5f 	_ 
	rst 18h			;3232	df 	. 
	rst 18h			;3233	df 	. 
	add a,b			;3234	80 	. 
	add a,b			;3235	80 	. 
	add a,b			;3236	80 	. 
	add a,b			;3237	80 	. 
	rst 38h			;3238	ff 	. 
	ld bc,0ffffh		;3239	01 ff ff 	. . . 
	rst 38h			;323c	ff 	. 
	rrca			;323d	0f 	. 
	rst 38h			;323e	ff 	. 
	rst 38h			;323f	ff 	. 
	ei			;3240	fb 	. 
	ld de,0fafeh		;3241	11 fe fa 	. . . 
	rst 30h			;3244	f7 	. 
	djnz $+1		;3245	10 ff 	. . 
	rst 30h			;3247	f7 	. 
	rst 30h			;3248	f7 	. 
	jr nz,$+1		;3249	20 ff 	  . 
	rst 30h			;324b	f7 	. 
	rst 38h			;324c	ff 	. 
	jr nz,$+1		;324d	20 ff 	  . 
	rst 38h			;324f	ff 	. 
	rst 38h			;3250	ff 	. 
	ret po			;3251	e0 	. 
	rst 38h			;3252	ff 	. 
	rst 38h			;3253	ff 	. 
	ld a,a			;3254	7f 	 
	ld a,a			;3255	7f 	 
	ld a,a			;3256	7f 	 
	ld a,a			;3257	7f 	 
	di			;3258	f3 	. 
	add a,b			;3259	80 	. 
	rst 38h			;325a	ff 	. 
	di			;325b	f3 	. 
	rst 38h			;325c	ff 	. 
	ret po			;325d	e0 	. 
	rst 38h			;325e	ff 	. 
	rst 38h			;325f	ff 	. 
	rra			;3260	1f 	. 
	djnz $+1		;3261	10 ff 	. . 
	rra			;3263	1f 	. 
	rst 28h			;3264	ef 	. 
	ex af,af'			;3265	08 	. 
	rst 38h			;3266	ff 	. 
	rst 28h			;3267	ef 	. 
	rst 38h			;3268	ff 	. 
	ex af,af'			;3269	08 	. 
	rst 38h			;326a	ff 	. 
	rst 38h			;326b	ff 	. 
	rst 38h			;326c	ff 	. 
	inc b			;326d	04 	. 
	rst 38h			;326e	ff 	. 
	rst 38h			;326f	ff 	. 
	rst 38h			;3270	ff 	. 
	rlca			;3271	07 	. 
	rst 38h			;3272	ff 	. 
	rst 38h			;3273	ff 	. 
	call m,0fcfch		;3274	fc fc fc 	. . . 
	call m,sub_01fdh		;3277	fc fd 01 	. . . 
	rst 38h			;327a	ff 	. 
	defb 0fdh,0fdh,001h	;illegal sequence		;327b	fd fd 01 	. . . 
	rst 38h			;327e	ff 	. 
	defb 0fdh,0fdh,001h	;illegal sequence		;327f	fd fd 01 	. . . 
	rst 38h			;3282	ff 	. 
	defb 0fdh,0fdh,001h	;illegal sequence		;3283	fd fd 01 	. . . 
	rst 38h			;3286	ff 	. 
	defb 0fdh,0fdh,001h	;illegal sequence		;3287	fd fd 01 	. . . 
	rst 38h			;328a	ff 	. 
	defb 0fdh,0ffh,003h	;illegal sequence		;328b	fd ff 03 	. . . 
	rst 38h			;328e	ff 	. 
	rst 38h			;328f	ff 	. 
	cp 0feh		;3290	fe fe 	. . 
	cp 0feh		;3292	fe fe 	. . 
	nop			;3294	00 	. 
	nop			;3295	00 	. 
	nop			;3296	00 	. 
	nop			;3297	00 	. 
	rst 38h			;3298	ff 	. 
	rst 38h			;3299	ff 	. 
	ret nz			;329a	c0 	. 
	ret nz			;329b	c0 	. 
	add a,b			;329c	80 	. 
	add a,b			;329d	80 	. 
	rst 38h			;329e	ff 	. 
	add a,b			;329f	80 	. 
	ret nz			;32a0	c0 	. 
	add a,b			;32a1	80 	. 
	rst 38h			;32a2	ff 	. 
	ret nz			;32a3	c0 	. 
	rst 38h			;32a4	ff 	. 
	add a,b			;32a5	80 	. 
	rst 38h			;32a6	ff 	. 
	rst 38h			;32a7	ff 	. 
	rst 38h			;32a8	ff 	. 
	ret nz			;32a9	c0 	. 
	rst 38h			;32aa	ff 	. 
	rst 38h			;32ab	ff 	. 
	rst 38h			;32ac	ff 	. 
	rst 38h			;32ad	ff 	. 
	rst 38h			;32ae	ff 	. 
	rst 38h			;32af	ff 	. 
	rst 18h			;32b0	df 	. 
	rst 18h			;32b1	df 	. 
	ret po			;32b2	e0 	. 
	ret nz			;32b3	c0 	. 
	ret po			;32b4	e0 	. 
	ret nz			;32b5	c0 	. 
	rst 38h			;32b6	ff 	. 
	ret po			;32b7	e0 	. 
	rst 38h			;32b8	ff 	. 
	rst 38h			;32b9	ff 	. 
	nop			;32ba	00 	. 
	nop			;32bb	00 	. 
	nop			;32bc	00 	. 
	nop			;32bd	00 	. 
	rst 38h			;32be	ff 	. 
	nop			;32bf	00 	. 
	nop			;32c0	00 	. 
	nop			;32c1	00 	. 
	rst 38h			;32c2	ff 	. 
	nop			;32c3	00 	. 
	rst 38h			;32c4	ff 	. 
	nop			;32c5	00 	. 
	rst 38h			;32c6	ff 	. 
	rst 38h			;32c7	ff 	. 
	rst 38h			;32c8	ff 	. 
	nop			;32c9	00 	. 
	rst 38h			;32ca	ff 	. 
	rst 38h			;32cb	ff 	. 
	rst 38h			;32cc	ff 	. 
	rst 38h			;32cd	ff 	. 
	rst 38h			;32ce	ff 	. 
	rst 38h			;32cf	ff 	. 
	rst 38h			;32d0	ff 	. 
	ld sp,hl			;32d1	f9 	. 
	nop			;32d2	00 	. 
	nop			;32d3	00 	. 
	ld bc,0fe00h		;32d4	01 00 fe 	. . . 
	nop			;32d7	00 	. 
	rst 38h			;32d8	ff 	. 
	rst 38h			;32d9	ff 	. 
	nop			;32da	00 	. 
	nop			;32db	00 	. 
	nop			;32dc	00 	. 
	nop			;32dd	00 	. 
	rst 38h			;32de	ff 	. 
	nop			;32df	00 	. 
	nop			;32e0	00 	. 
	nop			;32e1	00 	. 
	rst 38h			;32e2	ff 	. 
	nop			;32e3	00 	. 
	rst 38h			;32e4	ff 	. 
	nop			;32e5	00 	. 
	rst 38h			;32e6	ff 	. 
	rst 38h			;32e7	ff 	. 
	rst 38h			;32e8	ff 	. 
	nop			;32e9	00 	. 
	rst 38h			;32ea	ff 	. 
	rst 38h			;32eb	ff 	. 
	rst 38h			;32ec	ff 	. 
	rst 38h			;32ed	ff 	. 
	rst 38h			;32ee	ff 	. 
	rst 38h			;32ef	ff 	. 
	cp a			;32f0	bf 	. 
	cp a			;32f1	bf 	. 
	ret nz			;32f2	c0 	. 
	add a,b			;32f3	80 	. 
	ret nz			;32f4	c0 	. 
	add a,b			;32f5	80 	. 
	rst 38h			;32f6	ff 	. 
	ret nz			;32f7	c0 	. 
	rst 38h			;32f8	ff 	. 
	rst 38h			;32f9	ff 	. 
	nop			;32fa	00 	. 
	nop			;32fb	00 	. 
	nop			;32fc	00 	. 
	nop			;32fd	00 	. 
	rst 38h			;32fe	ff 	. 
	nop			;32ff	00 	. 
	nop			;3300	00 	. 
	nop			;3301	00 	. 
	rst 38h			;3302	ff 	. 
	nop			;3303	00 	. 
	rst 38h			;3304	ff 	. 
	nop			;3305	00 	. 
	rst 38h			;3306	ff 	. 
	rst 38h			;3307	ff 	. 
	rst 38h			;3308	ff 	. 
	nop			;3309	00 	. 
	rst 38h			;330a	ff 	. 
	rst 38h			;330b	ff 	. 
	rst 38h			;330c	ff 	. 
	rst 38h			;330d	ff 	. 
	rst 38h			;330e	ff 	. 
	rst 38h			;330f	ff 	. 
	rst 38h			;3310	ff 	. 
	ld sp,hl			;3311	f9 	. 
	nop			;3312	00 	. 
	nop			;3313	00 	. 
	ld bc,0fe00h		;3314	01 00 fe 	. . . 
	nop			;3317	00 	. 
	rst 38h			;3318	ff 	. 
	rst 38h			;3319	ff 	. 
	nop			;331a	00 	. 
	nop			;331b	00 	. 
	nop			;331c	00 	. 
	nop			;331d	00 	. 
	rst 38h			;331e	ff 	. 
	nop			;331f	00 	. 
	nop			;3320	00 	. 
	nop			;3321	00 	. 
	rst 38h			;3322	ff 	. 
	nop			;3323	00 	. 
	rst 38h			;3324	ff 	. 
	nop			;3325	00 	. 
	rst 38h			;3326	ff 	. 
	rst 38h			;3327	ff 	. 
	rst 38h			;3328	ff 	. 
	nop			;3329	00 	. 
	rst 38h			;332a	ff 	. 
	rst 38h			;332b	ff 	. 
	rst 38h			;332c	ff 	. 
	rst 38h			;332d	ff 	. 
	rst 38h			;332e	ff 	. 
	rst 38h			;332f	ff 	. 
	cp a			;3330	bf 	. 
	cp a			;3331	bf 	. 
	ret nz			;3332	c0 	. 
l3333h:
	add a,b			;3333	80 	. 
	ret nz			;3334	c0 	. 
	add a,b			;3335	80 	. 
	rst 38h			;3336	ff 	. 
	ret nz			;3337	c0 	. 
	rst 38h			;3338	ff 	. 
	rst 38h			;3339	ff 	. 
	nop			;333a	00 	. 
	nop			;333b	00 	. 
	nop			;333c	00 	. 
	nop			;333d	00 	. 
	rst 38h			;333e	ff 	. 
	nop			;333f	00 	. 
	nop			;3340	00 	. 
	nop			;3341	00 	. 
	rst 38h			;3342	ff 	. 
	nop			;3343	00 	. 
	rst 38h			;3344	ff 	. 
	nop			;3345	00 	. 
	rst 38h			;3346	ff 	. 
	rst 38h			;3347	ff 	. 
	rst 38h			;3348	ff 	. 
	nop			;3349	00 	. 
	rst 38h			;334a	ff 	. 
	rst 38h			;334b	ff 	. 
	rst 38h			;334c	ff 	. 
	rst 38h			;334d	ff 	. 
	rst 38h			;334e	ff 	. 
	rst 38h			;334f	ff 	. 
	rst 38h			;3350	ff 	. 
	ld sp,hl			;3351	f9 	. 
	nop			;3352	00 	. 
	nop			;3353	00 	. 
	ld bc,0fe00h		;3354	01 00 fe 	. . . 
	nop			;3357	00 	. 
	rst 38h			;3358	ff 	. 
	rst 38h			;3359	ff 	. 
	nop			;335a	00 	. 
	nop			;335b	00 	. 
	nop			;335c	00 	. 
	nop			;335d	00 	. 
	rst 38h			;335e	ff 	. 
	nop			;335f	00 	. 
	nop			;3360	00 	. 
	nop			;3361	00 	. 
	rst 38h			;3362	ff 	. 
	nop			;3363	00 	. 
	rst 38h			;3364	ff 	. 
	nop			;3365	00 	. 
	rst 38h			;3366	ff 	. 
	rst 38h			;3367	ff 	. 
	rst 38h			;3368	ff 	. 
	nop			;3369	00 	. 
	rst 38h			;336a	ff 	. 
	rst 38h			;336b	ff 	. 
	rst 38h			;336c	ff 	. 
	rst 38h			;336d	ff 	. 
	rst 38h			;336e	ff 	. 
	rst 38h			;336f	ff 	. 
	cp a			;3370	bf 	. 
	cp a			;3371	bf 	. 
	ret nz			;3372	c0 	. 
	add a,b			;3373	80 	. 
	ret nz			;3374	c0 	. 
	add a,b			;3375	80 	. 
	rst 38h			;3376	ff 	. 
	ret nz			;3377	c0 	. 
	rst 38h			;3378	ff 	. 
	rst 20h			;3379	e7 	. 
	inc bc			;337a	03 	. 
	inc bc			;337b	03 	. 
	inc bc			;337c	03 	. 
	inc bc			;337d	03 	. 
	defb 0fdh,001h,003h	;illegal sequence		;337e	fd 01 03 	. . . 
l3381h:
	ld bc,sub_01fdh		;3381	01 fd 01 	. . . 
	defb 0fdh,001h,0ffh	;illegal sequence		;3384	fd 01 ff 	. . . 
	defb 0fdh,0ffh,003h	;illegal sequence		;3387	fd ff 03 	. . . 
	rst 38h			;338a	ff 	. 
	rst 38h			;338b	ff 	. 
	rst 38h			;338c	ff 	. 
	rst 38h			;338d	ff 	. 
	rst 38h			;338e	ff 	. 
	rst 38h			;338f	ff 	. 
	rst 38h			;3390	ff 	. 
	rst 20h			;3391	e7 	. 
	inc bc			;3392	03 	. 
	inc bc			;3393	03 	. 
	rlca			;3394	07 	. 
	inc bc			;3395	03 	. 
	ei			;3396	fb 	. 
	inc bc			;3397	03 	. 
	ret po			;3398	e0 	. 
	ret nz			;3399	c0 	. 
	rst 38h			;339a	ff 	. 
	ret po			;339b	e0 	. 
	rst 38h			;339c	ff 	. 
	ret nz			;339d	c0 	. 
	rst 38h			;339e	ff 	. 
	rst 38h			;339f	ff 	. 
	rst 38h			;33a0	ff 	. 
	rst 38h			;33a1	ff 	. 
	rst 38h			;33a2	ff 	. 
	rst 38h			;33a3	ff 	. 
	cp a			;33a4	bf 	. 
	cp c			;33a5	b9 	. 
	ret nz			;33a6	c0 	. 
	add a,b			;33a7	80 	. 
	pop bc			;33a8	c1 	. 
	add a,b			;33a9	80 	. 
	cp 0c0h		;33aa	fe c0 	. . 
	pop bc			;33ac	c1 	. 
	add a,c			;33ad	81 	. 
	cp 0c0h		;33ae	fe c0 	. . 
	cp 080h		;33b0	fe 80 	. . 
	rst 38h			;33b2	ff 	. 
	cp 0ffh		;33b3	fe ff 	. . 
	rst 38h			;33b5	ff 	. 
	rst 38h			;33b6	ff 	. 
	rst 38h			;33b7	ff 	. 
	ld bc,0fe01h		;33b8	01 01 fe 	. . . 
	nop			;33bb	00 	. 
	cp 000h		;33bc	fe 00 	. . 
	rst 38h			;33be	ff 	. 
	cp 0ffh		;33bf	fe ff 	. . 
	rst 38h			;33c1	ff 	. 
	rst 38h			;33c2	ff 	. 
	rst 38h			;33c3	ff 	. 
	cp a			;33c4	bf 	. 
	cp a			;33c5	bf 	. 
	ret nz			;33c6	c0 	. 
	add a,b			;33c7	80 	. 
	ret nz			;33c8	c0 	. 
	add a,b			;33c9	80 	. 
	rst 38h			;33ca	ff 	. 
	ret nz			;33cb	c0 	. 
	ret nz			;33cc	c0 	. 
	add a,b			;33cd	80 	. 
	rst 38h			;33ce	ff 	. 
	ret nz			;33cf	c0 	. 
	rst 38h			;33d0	ff 	. 
	add a,b			;33d1	80 	. 
	rst 38h			;33d2	ff 	. 
	rst 38h			;33d3	ff 	. 
	rst 38h			;33d4	ff 	. 
	rst 38h			;33d5	ff 	. 
	rst 38h			;33d6	ff 	. 
	rst 38h			;33d7	ff 	. 
	ret nz			;33d8	c0 	. 
	add a,b			;33d9	80 	. 
	rst 38h			;33da	ff 	. 
	ret nz			;33db	c0 	. 
	rst 38h			;33dc	ff 	. 
	add a,b			;33dd	80 	. 
	rst 38h			;33de	ff 	. 
	rst 38h			;33df	ff 	. 
	rst 38h			;33e0	ff 	. 
	rst 38h			;33e1	ff 	. 
	rst 38h			;33e2	ff 	. 
	rst 38h			;33e3	ff 	. 
	rst 38h			;33e4	ff 	. 
	ld sp,hl			;33e5	f9 	. 
	nop			;33e6	00 	. 
	nop			;33e7	00 	. 
	ld bc,0fe00h		;33e8	01 00 fe 	. . . 
	nop			;33eb	00 	. 
	ld bc,0fe01h		;33ec	01 01 fe 	. . . 
	nop			;33ef	00 	. 
l33f0h:
	cp 000h		;33f0	fe 00 	. . 
	rst 38h			;33f2	ff 	. 
	cp 0ffh		;33f3	fe ff 	. . 
	rst 38h			;33f5	ff 	. 
	rst 38h			;33f6	ff 	. 
	rst 38h			;33f7	ff 	. 
	ld bc,0fe01h		;33f8	01 01 fe 	. . . 
	nop			;33fb	00 	. 
	cp 000h		;33fc	fe 00 	. . 
	rst 38h			;33fe	ff 	. 
	cp 0ffh		;33ff	fe ff 	. . 
l3401h:
	rst 38h			;3401	ff 	. 
	rst 38h			;3402	ff 	. 
	rst 38h			;3403	ff 	. 
	cp a			;3404	bf 	. 
	cp a			;3405	bf 	. 
	ret nz			;3406	c0 	. 
	add a,b			;3407	80 	. 
	ret nz			;3408	c0 	. 
	add a,b			;3409	80 	. 
	rst 38h			;340a	ff 	. 
	ret nz			;340b	c0 	. 
	ret nz			;340c	c0 	. 
	add a,b			;340d	80 	. 
	rst 38h			;340e	ff 	. 
	ret nz			;340f	c0 	. 
	rst 38h			;3410	ff 	. 
	add a,b			;3411	80 	. 
	rst 38h			;3412	ff 	. 
	rst 38h			;3413	ff 	. 
	rst 38h			;3414	ff 	. 
	rst 38h			;3415	ff 	. 
	rst 38h			;3416	ff 	. 
	rst 38h			;3417	ff 	. 
	ret nz			;3418	c0 	. 
	add a,b			;3419	80 	. 
	rst 38h			;341a	ff 	. 
l341bh:
	ret nz			;341b	c0 	. 
	rst 38h			;341c	ff 	. 
	add a,b			;341d	80 	. 
	rst 38h			;341e	ff 	. 
	rst 38h			;341f	ff 	. 
	rst 38h			;3420	ff 	. 
	rst 38h			;3421	ff 	. 
	rst 38h			;3422	ff 	. 
	rst 38h			;3423	ff 	. 
	rst 38h			;3424	ff 	. 
	ld sp,hl			;3425	f9 	. 
	nop			;3426	00 	. 
	nop			;3427	00 	. 
	ld bc,0fe00h		;3428	01 00 fe 	. . . 
	nop			;342b	00 	. 
	ld bc,0fe01h		;342c	01 01 fe 	. . . 
	nop			;342f	00 	. 
	cp 000h		;3430	fe 00 	. . 
	rst 38h			;3432	ff 	. 
	cp 0ffh		;3433	fe ff 	. . 
	rst 38h			;3435	ff 	. 
	rst 38h			;3436	ff 	. 
	rst 38h			;3437	ff 	. 
	ld bc,0fe01h		;3438	01 01 fe 	. . . 
	nop			;343b	00 	. 
	cp 000h		;343c	fe 00 	. . 
	rst 38h			;343e	ff 	. 
	cp 0ffh		;343f	fe ff 	. . 
	rst 38h			;3441	ff 	. 
	rst 38h			;3442	ff 	. 
	rst 38h			;3443	ff 	. 
	cp a			;3444	bf 	. 
	cp a			;3445	bf 	. 
	ret nz			;3446	c0 	. 
	add a,b			;3447	80 	. 
	ret nz			;3448	c0 	. 
	add a,b			;3449	80 	. 
	rst 38h			;344a	ff 	. 
	ret nz			;344b	c0 	. 
	ret nz			;344c	c0 	. 
	add a,b			;344d	80 	. 
	rst 38h			;344e	ff 	. 
	ret nz			;344f	c0 	. 
	rst 38h			;3450	ff 	. 
	add a,b			;3451	80 	. 
	rst 38h			;3452	ff 	. 
	rst 38h			;3453	ff 	. 
	rst 38h			;3454	ff 	. 
	rst 38h			;3455	ff 	. 
	rst 38h			;3456	ff 	. 
	rst 38h			;3457	ff 	. 
	ret nz			;3458	c0 	. 
	add a,b			;3459	80 	. 
	rst 38h			;345a	ff 	. 
	ret nz			;345b	c0 	. 
	rst 38h			;345c	ff 	. 
	add a,b			;345d	80 	. 
	rst 38h			;345e	ff 	. 
	rst 38h			;345f	ff 	. 
	rst 38h			;3460	ff 	. 
	rst 38h			;3461	ff 	. 
	rst 38h			;3462	ff 	. 
	rst 38h			;3463	ff 	. 
	rst 38h			;3464	ff 	. 
	di			;3465	f3 	. 
	ld bc,l0301h		;3466	01 01 03 	. . . 
	ld bc,sub_01fdh		;3469	01 fd 01 	. . . 
	inc bc			;346c	03 	. 
	inc bc			;346d	03 	. 
	defb 0fdh,001h,0fdh	;illegal sequence		;346e	fd 01 fd 	. . . 
	ld bc,0fdffh		;3471	01 ff fd 	. . . 
	rst 38h			;3474	ff 	. 
	rst 38h			;3475	ff 	. 
	rst 38h			;3476	ff 	. 
	rst 38h			;3477	ff 	. 
	rlca			;3478	07 	. 
	rlca			;3479	07 	. 
	ei			;347a	fb 	. 
	inc bc			;347b	03 	. 
	ei			;347c	fb 	. 
	inc bc			;347d	03 	. 
	rst 38h			;347e	ff 	. 
	ei			;347f	fb 	. 
	rst 38h			;3480	ff 	. 
	rst 38h			;3481	ff 	. 
	rst 38h			;3482	ff 	. 
	rst 38h			;3483	ff 	. 
	ld a,a			;3484	7f 	 
	ld (hl),e			;3485	73 	s 
	add a,c			;3486	81 	. 
	ld bc,l0183h		;3487	01 83 01 	. . . 
	defb 0fdh,081h,083h	;illegal sequence		;348a	fd 81 83 	. . . 
	inc bc			;348d	03 	. 
	defb 0fdh,081h,0fdh	;illegal sequence		;348e	fd 81 fd 	. . . 
	ld bc,0fdffh		;3491	01 ff fd 	. . . 
	rst 38h			;3494	ff 	. 
	rst 38h			;3495	ff 	. 
	rst 38h			;3496	ff 	. 
	rst 38h			;3497	ff 	. 
	add a,e			;3498	83 	. 
	rst 38h			;3499	ff 	. 
	add a,b			;349a	80 	. 
	call m,0807fh		;349b	fc 7f 80 	.  . 
	nop			;349e	00 	. 
	rst 38h			;349f	ff 	. 
	ld a,a			;34a0	7f 	 
	add a,b			;34a1	80 	. 
	nop			;34a2	00 	. 
	rst 38h			;34a3	ff 	. 
	rst 38h			;34a4	ff 	. 
	rst 38h			;34a5	ff 	. 
	rst 38h			;34a6	ff 	. 
	rst 38h			;34a7	ff 	. 
	defb 0fdh,0f0h,0ffh	;illegal sequence		;34a8	fd f0 ff 	. . . 
	defb 0fdh,0f0h,0c0h	;illegal sequence		;34ab	fd f0 c0 	. . . 
	rst 38h			;34ae	ff 	. 
	rst 38h			;34af	ff 	. 
	ret nz			;34b0	c0 	. 
	adc a,h			;34b1	8c 	. 
	di			;34b2	f3 	. 
	ret p			;34b3	f0 	. 
	rst 0			;34b4	c7 	. 
	sbc a,b			;34b5	98 	. 
	rst 20h			;34b6	e7 	. 
	rst 0			;34b7	c7 	. 
	ld b,(hl)			;34b8	46 	F 
	rst 38h			;34b9	ff 	. 
	ld b,b			;34ba	40 	@ 
	ld sp,hl			;34bb	f9 	. 
	cp a			;34bc	bf 	. 
	pop bc			;34bd	c1 	. 
	add a,c			;34be	81 	. 
	rst 38h			;34bf	ff 	. 
l34c0h:
	cp a			;34c0	bf 	. 
	pop bc			;34c1	c1 	. 
	add a,c			;34c2	81 	. 
	rst 38h			;34c3	ff 	. 
	rst 38h			;34c4	ff 	. 
	rst 38h			;34c5	ff 	. 
	rst 38h			;34c6	ff 	. 
	rst 38h			;34c7	ff 	. 
	rst 38h			;34c8	ff 	. 
	cp 0ffh		;34c9	fe ff 	. . 
	rst 38h			;34cb	ff 	. 
	cp 038h		;34cc	fe 38 	. 8 
	rst 38h			;34ce	ff 	. 
	rst 38h			;34cf	ff 	. 
	jr c,l34e2h		;34d0	38 10 	8 . 
	rst 38h			;34d2	ff 	. 
	cp 038h		;34d3	fe 38 	. 8 
	ld de,l38feh		;34d5	11 fe 38 	. . 8 
l34d8h:
	add a,(hl)			;34d8	86 	. 
	rst 38h			;34d9	ff 	. 
	add a,b			;34da	80 	. 
	ld sp,hl			;34db	f9 	. 
	ld a,a			;34dc	7f 	 
	add a,c			;34dd	81 	. 
	ld bc,07fffh		;34de	01 ff 7f 	. .  
	add a,c			;34e1	81 	. 
l34e2h:
	ld bc,0ffffh		;34e2	01 ff ff 	. . . 
	rst 38h			;34e5	ff 	. 
	rst 38h			;34e6	ff 	. 
	rst 38h			;34e7	ff 	. 
	cp a			;34e8	bf 	. 
	rra			;34e9	1f 	. 
l34eah:
	rst 38h			;34ea	ff 	. 
	cp a			;34eb	bf 	. 
	rra			;34ec	1f 	. 
	rlca			;34ed	07 	. 
	rst 38h			;34ee	ff 	. 
	rst 38h			;34ef	ff 	. 
l34f0h:
	rlca			;34f0	07 	. 
	add a,d			;34f1	82 	. 
	ld a,a			;34f2	7f 	 
	rra			;34f3	1f 	. 
	ex (sp),hl			;34f4	e3 	. 
	ld (bc),a			;34f5	02 	. 
	rst 38h			;34f6	ff 	. 
	rst 20h			;34f7	e7 	. 
	add a,(hl)			;34f8	86 	. 
	rst 38h			;34f9	ff 	. 
	add a,b			;34fa	80 	. 
	ld sp,hl			;34fb	f9 	. 
	ld a,a			;34fc	7f 	 
	add a,c			;34fd	81 	. 
	ld bc,07fffh		;34fe	01 ff 7f 	. .  
	add a,c			;3501	81 	. 
	ld bc,0ffffh		;3502	01 ff ff 	. . . 
	rst 38h			;3505	ff 	. 
	rst 38h			;3506	ff 	. 
	rst 38h			;3507	ff 	. 
	rst 28h			;3508	ef 	. 
	rst 0			;3509	c7 	. 
	rst 38h			;350a	ff 	. 
	rst 28h			;350b	ef 	. 
	rst 0			;350c	c7 	. 
	ld bc,0ffffh		;350d	01 ff ff 	. . . 
	add hl,sp			;3510	39 	9 
	nop			;3511	00 	. 
	rst 38h			;3512	ff 	. 
	rst 38h			;3513	ff 	. 
	ld b,l			;3514	45 	E 
	and b			;3515	a0 	. 
	ld e,a			;3516	5f 	_ 
	ld b,l			;3517	45 	E 
	add a,e			;3518	83 	. 
	rst 38h			;3519	ff 	. 
	add a,b			;351a	80 	. 
	call m,0807fh		;351b	fc 7f 80 	.  . 
	nop			;351e	00 	. 
	rst 38h			;351f	ff 	. 
	ld a,a			;3520	7f 	 
	add a,b			;3521	80 	. 
	nop			;3522	00 	. 
	rst 38h			;3523	ff 	. 
	rst 38h			;3524	ff 	. 
	rst 38h			;3525	ff 	. 
	rst 38h			;3526	ff 	. 
	rst 38h			;3527	ff 	. 
	defb 0fdh,0f0h,0ffh	;illegal sequence		;3528	fd f0 ff 	. . . 
	defb 0fdh,0f0h,0c0h	;illegal sequence		;352b	fd f0 c0 	. . . 
	rst 38h			;352e	ff 	. 
	rst 38h			;352f	ff 	. 
l3530h:
	ret nz			;3530	c0 	. 
	adc a,h			;3531	8c 	. 
	di			;3532	f3 	. 
	ret p			;3533	f0 	. 
	rst 0			;3534	c7 	. 
	sbc a,b			;3535	98 	. 
	rst 20h			;3536	e7 	. 
	rst 0			;3537	c7 	. 
	ld b,(hl)			;3538	46 	F 
	rst 38h			;3539	ff 	. 
	ld b,b			;353a	40 	@ 
	ld sp,hl			;353b	f9 	. 
	cp a			;353c	bf 	. 
	pop bc			;353d	c1 	. 
	add a,c			;353e	81 	. 
	rst 38h			;353f	ff 	. 
	cp a			;3540	bf 	. 
	pop bc			;3541	c1 	. 
	add a,c			;3542	81 	. 
	rst 38h			;3543	ff 	. 
	rst 38h			;3544	ff 	. 
	rst 38h			;3545	ff 	. 
	rst 38h			;3546	ff 	. 
	rst 38h			;3547	ff 	. 
	rst 38h			;3548	ff 	. 
	cp 0ffh		;3549	fe ff 	. . 
	rst 38h			;354b	ff 	. 
	cp 038h		;354c	fe 38 	. 8 
	rst 38h			;354e	ff 	. 
	rst 38h			;354f	ff 	. 
	jr c,l3562h		;3550	38 10 	8 . 
	rst 38h			;3552	ff 	. 
	cp 038h		;3553	fe 38 	. 8 
	ld de,l38feh		;3555	11 fe 38 	. . 8 
	add a,(hl)			;3558	86 	. 
	rst 38h			;3559	ff 	. 
	add a,b			;355a	80 	. 
	ld sp,hl			;355b	f9 	. 
	ld a,a			;355c	7f 	 
	add a,c			;355d	81 	. 
	ld bc,07fffh		;355e	01 ff 7f 	. .  
	add a,c			;3561	81 	. 
l3562h:
	ld bc,0ffffh		;3562	01 ff ff 	. . . 
	rst 38h			;3565	ff 	. 
	rst 38h			;3566	ff 	. 
	rst 38h			;3567	ff 	. 
	cp a			;3568	bf 	. 
	rra			;3569	1f 	. 
	rst 38h			;356a	ff 	. 
	cp a			;356b	bf 	. 
	rra			;356c	1f 	. 
	rlca			;356d	07 	. 
	rst 38h			;356e	ff 	. 
	rst 38h			;356f	ff 	. 
	rlca			;3570	07 	. 
	add a,d			;3571	82 	. 
	ld a,a			;3572	7f 	 
	rra			;3573	1f 	. 
	ex (sp),hl			;3574	e3 	. 
	ld (bc),a			;3575	02 	. 
	rst 38h			;3576	ff 	. 
	rst 20h			;3577	e7 	. 
	add a,(hl)			;3578	86 	. 
	rst 38h			;3579	ff 	. 
	add a,b			;357a	80 	. 
	ld sp,hl			;357b	f9 	. 
	ld a,a			;357c	7f 	 
	add a,c			;357d	81 	. 
	ld bc,07fffh		;357e	01 ff 7f 	. .  
	add a,c			;3581	81 	. 
	ld bc,0ffffh		;3582	01 ff ff 	. . . 
	rst 38h			;3585	ff 	. 
	rst 38h			;3586	ff 	. 
	rst 38h			;3587	ff 	. 
	rst 28h			;3588	ef 	. 
	rst 0			;3589	c7 	. 
	rst 38h			;358a	ff 	. 
	rst 28h			;358b	ef 	. 
	rst 0			;358c	c7 	. 
	ld bc,0ffffh		;358d	01 ff ff 	. . . 
	add hl,sp			;3590	39 	9 
	nop			;3591	00 	. 
	rst 38h			;3592	ff 	. 
	rst 38h			;3593	ff 	. 
	ld b,l			;3594	45 	E 
	and b			;3595	a0 	. 
	ld e,a			;3596	5f 	_ 
	ld b,l			;3597	45 	E 
	adc a,b			;3598	88 	. 
	inc h			;3599	24 	$ 
	in a,(098h)		;359a	db 98 	. . 
	and d			;359c	a2 	. 
	ld e,b			;359d	58 	X 
	and a			;359e	a7 	. 
	and (hl)			;359f	a6 	. 
	add a,e			;35a0	83 	. 
	ld e,h			;35a1	5c 	\ 
	and e			;35a2	a3 	. 
	and e			;35a3	a3 	. 
	ret c			;35a4	d8 	. 
	and a			;35a5	a7 	. 
	ret c			;35a6	d8 	. 
	ret c			;35a7	d8 	. 
	add a,098h		;35a8	c6 98 	. . 
	rst 20h			;35aa	e7 	. 
	rst 0			;35ab	c7 	. 
	ret p			;35ac	f0 	. 
	rst 8			;35ad	cf 	. 
	ret p			;35ae	f0 	. 
	ret p			;35af	f0 	. 
	ld a,a			;35b0	7f 	 
	ld (hl),b			;35b1	70 	p 
	ld a,a			;35b2	7f 	 
	ld a,a			;35b3	7f 	 
	rra			;35b4	1f 	. 
	rra			;35b5	1f 	. 
	rra			;35b6	1f 	. 
	rra			;35b7	1f 	. 
	ld (de),a			;35b8	12 	. 
	dec c			;35b9	0d 	. 
	jp p,04092h		;35ba	f2 92 40 	. . @ 
	ld a,(bc)			;35bd	0a 	. 
	push af			;35be	f5 	. 
	ld d,h			;35bf	54 	T 
	ld d,h			;35c0	54 	T 
	ld a,(bc)			;35c1	0a 	. 
	push af			;35c2	f5 	. 
	ld d,h			;35c3	54 	T 
	cp b			;35c4	b8 	. 
	ld d,l			;35c5	55 	U 
	cp d			;35c6	ba 	. 
	cp d			;35c7	ba 	. 
	add hl,sp			;35c8	39 	9 
	jp nc,l393dh		;35c9	d2 3d 39 	. = 9 
	cp 039h		;35cc	fe 39 	. 9 
	cp 0feh		;35ce	fe fe 	. . 
	rst 28h			;35d0	ef 	. 
	xor 0efh		;35d1	ee ef 	. . 
	rst 28h			;35d3	ef 	. 
	add a,e			;35d4	83 	. 
	add a,e			;35d5	83 	. 
	add a,e			;35d6	83 	. 
	add a,e			;35d7	83 	. 
	ld (de),a			;35d8	12 	. 
	adc a,c			;35d9	89 	. 
	halt			;35da	76 	v 
	ld (de),a			;35db	12 	. 
	jp z,0de21h		;35dc	ca 21 de 	. ! . 
	jp z,03580h		;35df	ca 80 35 	. . 5 
	jp z,l17cah		;35e2	ca ca 17 	. . . 
	ld l,d			;35e5	6a 	j 
	sub a			;35e6	97 	. 
	rla			;35e7	17 	. 
	ld h,a			;35e8	67 	g 
	ld a,(de)			;35e9	1a 	. 
	rst 20h			;35ea	e7 	. 
	rst 20h			;35eb	e7 	. 
	rra			;35ec	1f 	. 
	rst 0			;35ed	c7 	. 
	ccf			;35ee	3f 	? 
	rra			;35ef	1f 	. 
	defb 0fdh,01dh,0fdh	;illegal sequence		;35f0	fd 1d fd 	. . . 
	defb 0fdh,0f0h,0f0h	;illegal sequence		;35f3	fd f0 f0 	. . . 
	ret p			;35f6	f0 	. 
	ret p			;35f7	f0 	. 
	sub b			;35f8	90 	. 
	ld h,b			;35f9	60 	` 
	sbc a,a			;35fa	9f 	. 
	sub d			;35fb	92 	. 
	ld hl,(0bf40h)		;35fc	2a 40 bf 	* @ . 
	xor d			;35ff	aa 	. 
	adc a,d			;3600	8a 	. 
	ld d,h			;3601	54 	T 
	xor e			;3602	ab 	. 
	xor d			;3603	aa 	. 
l3604h:
	add a,c			;3604	81 	. 
	ld l,h			;3605	6c 	l 
	sub e			;3606	93 	. 
	sub e			;3607	93 	. 
	ld b,l			;3608	45 	E 
	cp d			;3609	ba 	. 
	ld b,l			;360a	45 	E 
	ld b,l			;360b	45 	E 
l360ch:
	rst 38h			;360c	ff 	. 
	ld bc,0ffffh		;360d	01 ff ff 	. . . 
	rst 38h			;3610	ff 	. 
	rst 0			;3611	c7 	. 
	rst 38h			;3612	ff 	. 
	rst 38h			;3613	ff 	. 
	ld a,h			;3614	7c 	| 
	ld a,h			;3615	7c 	| 
	ld a,h			;3616	7c 	| 
	ld a,h			;3617	7c 	| 
	adc a,b			;3618	88 	. 
	inc h			;3619	24 	$ 
	in a,(098h)		;361a	db 98 	. . 
	and d			;361c	a2 	. 
l361dh:
	ld e,b			;361d	58 	X 
	and a			;361e	a7 	. 
	and (hl)			;361f	a6 	. 
	add a,e			;3620	83 	. 
	ld e,h			;3621	5c 	\ 
	and e			;3622	a3 	. 
	and e			;3623	a3 	. 
	ret c			;3624	d8 	. 
	and a			;3625	a7 	. 
	ret c			;3626	d8 	. 
	ret c			;3627	d8 	. 
	add a,098h		;3628	c6 98 	. . 
	rst 20h			;362a	e7 	. 
	rst 0			;362b	c7 	. 
	ret p			;362c	f0 	. 
	rst 8			;362d	cf 	. 
	ret p			;362e	f0 	. 
	ret p			;362f	f0 	. 
	ld a,a			;3630	7f 	 
	ld (hl),b			;3631	70 	p 
	ld a,a			;3632	7f 	 
	ld a,a			;3633	7f 	 
l3634h:
	rra			;3634	1f 	. 
	rra			;3635	1f 	. 
	rra			;3636	1f 	. 
	rra			;3637	1f 	. 
	ld (de),a			;3638	12 	. 
	dec c			;3639	0d 	. 
	jp p,04092h		;363a	f2 92 40 	. . @ 
	ld a,(bc)			;363d	0a 	. 
	push af			;363e	f5 	. 
	ld d,h			;363f	54 	T 
	ld d,h			;3640	54 	T 
	ld a,(bc)			;3641	0a 	. 
	push af			;3642	f5 	. 
	ld d,h			;3643	54 	T 
	cp b			;3644	b8 	. 
	ld d,l			;3645	55 	U 
	cp d			;3646	ba 	. 
	cp d			;3647	ba 	. 
	add hl,sp			;3648	39 	9 
	jp nc,l393dh		;3649	d2 3d 39 	. = 9 
	cp 039h		;364c	fe 39 	. 9 
	cp 0feh		;364e	fe fe 	. . 
	rst 28h			;3650	ef 	. 
	xor 0efh		;3651	ee ef 	. . 
	rst 28h			;3653	ef 	. 
	add a,e			;3654	83 	. 
	add a,e			;3655	83 	. 
	add a,e			;3656	83 	. 
	add a,e			;3657	83 	. 
	ld (de),a			;3658	12 	. 
	adc a,c			;3659	89 	. 
	halt			;365a	76 	v 
	ld (de),a			;365b	12 	. 
	jp z,0de21h		;365c	ca 21 de 	. ! . 
	jp z,03580h		;365f	ca 80 35 	. . 5 
	jp z,l17cah		;3662	ca ca 17 	. . . 
	ld l,d			;3665	6a 	j 
	sub a			;3666	97 	. 
	rla			;3667	17 	. 
	ld h,a			;3668	67 	g 
	ld a,(de)			;3669	1a 	. 
	rst 20h			;366a	e7 	. 
	rst 20h			;366b	e7 	. 
	rra			;366c	1f 	. 
	rst 0			;366d	c7 	. 
	ccf			;366e	3f 	? 
	rra			;366f	1f 	. 
	defb 0fdh,01dh,0fdh	;illegal sequence		;3670	fd 1d fd 	. . . 
	defb 0fdh,0f0h,0f0h	;illegal sequence		;3673	fd f0 f0 	. . . 
	ret p			;3676	f0 	. 
	ret p			;3677	f0 	. 
	sub b			;3678	90 	. 
	ld h,b			;3679	60 	` 
	sbc a,a			;367a	9f 	. 
	sub d			;367b	92 	. 
	ld hl,(0bf40h)		;367c	2a 40 bf 	* @ . 
	xor d			;367f	aa 	. 
	adc a,d			;3680	8a 	. 
	ld d,h			;3681	54 	T 
	xor e			;3682	ab 	. 
	xor d			;3683	aa 	. 
	add a,c			;3684	81 	. 
	ld l,h			;3685	6c 	l 
	sub e			;3686	93 	. 
	sub e			;3687	93 	. 
	ld b,l			;3688	45 	E 
	cp d			;3689	ba 	. 
	ld b,l			;368a	45 	E 
	ld b,l			;368b	45 	E 
	rst 38h			;368c	ff 	. 
	ld bc,0ffffh		;368d	01 ff ff 	. . . 
	rst 38h			;3690	ff 	. 
	rst 0			;3691	c7 	. 
	rst 38h			;3692	ff 	. 
	rst 38h			;3693	ff 	. 
	ld a,h			;3694	7c 	| 
	ld a,h			;3695	7c 	| 
	ld a,h			;3696	7c 	| 
	ld a,h			;3697	7c 	| 
	nop			;3698	00 	. 
	nop			;3699	00 	. 
	nop			;369a	00 	. 
	ld a,a			;369b	7f 	 
	ccf			;369c	3f 	? 
	ld b,b			;369d	40 	@ 
	ld b,b			;369e	40 	@ 
	add a,b			;369f	80 	. 
	ld (hl),b			;36a0	70 	p 
	add a,b			;36a1	80 	. 
	add a,b			;36a2	80 	. 
	rrca			;36a3	0f 	. 
	ld a,a			;36a4	7f 	 
	add a,a			;36a5	87 	. 
	add a,a			;36a6	87 	. 
	nop			;36a7	00 	. 
	ld a,a			;36a8	7f 	 
	add a,e			;36a9	83 	. 
	add a,e			;36aa	83 	. 
	nop			;36ab	00 	. 
	ld a,a			;36ac	7f 	 
	add a,e			;36ad	83 	. 
	add a,e			;36ae	83 	. 
	nop			;36af	00 	. 
	ccf			;36b0	3f 	? 
	and c			;36b1	a1 	. 
	and c			;36b2	a1 	. 
	ld b,b			;36b3	40 	@ 
	ccf			;36b4	3f 	? 
	cp e			;36b5	bb 	. 
	cp e			;36b6	bb 	. 
	ld b,b			;36b7	40 	@ 
	ld c,00eh		;36b8	0e 0e 	. . 
	ld c,0f0h		;36ba	0e f0 	. . 
l36bch:
	defb 0fdh,001h,001h	;illegal sequence		;36bc	fd 01 01 	. . . 
	ld (bc),a			;36bf	02 	. 
	ld (bc),a			;36c0	02 	. 
	djnz l36d3h		;36c1	10 10 	. . 
	defb 0edh;next byte illegal after ed		;36c3	ed 	. 
	jp p,0f4f4h		;36c4	f2 f4 f4 	. . . 
	add hl,bc			;36c7	09 	. 
	jp p,0f4f4h		;36c8	f2 f4 f4 	. . . 
	add hl,bc			;36cb	09 	. 
l36cch:
	jp p,0f0f0h		;36cc	f2 f0 f0 	. . . 
	dec c			;36cf	0d 	. 
	jp m,0f8f8h		;36d0	fa f8 f8 	. . . 
l36d3h:
	dec b			;36d3	05 	. 
	jp m,0f8f8h		;36d4	fa f8 f8 	. . . 
	dec b			;36d7	05 	. 
	nop			;36d8	00 	. 
	ld a,a			;36d9	7f 	 
	ld a,a			;36da	7f 	 
	nop			;36db	00 	. 
	nop			;36dc	00 	. 
	add a,b			;36dd	80 	. 
	add a,b			;36de	80 	. 
	ld a,a			;36df	7f 	 
	ld a,a			;36e0	7f 	 
	ld b,a			;36e1	47 	G 
	ld b,a			;36e2	47 	G 
	add a,b			;36e3	80 	. 
	ld sp,hl			;36e4	f9 	. 
	add a,c			;36e5	81 	. 
	add a,c			;36e6	81 	. 
	ld b,0dfh		;36e7	06 df 	. . 
	pop bc			;36e9	c1 	. 
	pop bc			;36ea	c1 	. 
	jr nz,l36cch		;36eb	20 df 	  . 
	call nz,sub_20c4h		;36ed	c4 c4 20 	. .   
	rst 8			;36f0	cf 	. 
	ret nz			;36f1	c0 	. 
	ret nz			;36f2	c0 	. 
	jr nc,l36bch		;36f3	30 c7 	0 . 
	ret z			;36f5	c8 	. 
	ret z			;36f6	c8 	. 
	jr nc,l36f9h		;36f7	30 00 	0 . 
l36f9h:
	cp 0feh		;36f9	fe fe 	. . 
	nop			;36fb	00 	. 
	ld (bc),a			;36fc	02 	. 
	inc bc			;36fd	03 	. 
	inc bc			;36fe	03 	. 
	call m,081ffh		;36ff	fc ff 81 	. . . 
	add a,c			;3702	81 	. 
	nop			;3703	00 	. 
	jr c,l3706h		;3704	38 00 	8 . 
l3706h:
	nop			;3706	00 	. 
	rst 0			;3707	c7 	. 
	ld (l0000h),a		;3708	32 00 00 	2 . . 
	call sub_0466h		;370b	cd 66 04 	. f . 
	inc b			;370e	04 	. 
	sbc a,c			;370f	99 	. 
	jp p,l0000h		;3710	f2 00 00 	. . . 
	dec c			;3713	0d 	. 
	jp p,l0808h		;3714	f2 08 08 	. . . 
	dec b			;3717	05 	. 
	nop			;3718	00 	. 
	nop			;3719	00 	. 
	nop			;371a	00 	. 
	ld a,a			;371b	7f 	 
	ccf			;371c	3f 	? 
	ld b,b			;371d	40 	@ 
	ld b,b			;371e	40 	@ 
	add a,b			;371f	80 	. 
	ld (hl),b			;3720	70 	p 
	add a,b			;3721	80 	. 
	add a,b			;3722	80 	. 
	rrca			;3723	0f 	. 
	ld a,a			;3724	7f 	 
	add a,a			;3725	87 	. 
	add a,a			;3726	87 	. 
	nop			;3727	00 	. 
	ld a,a			;3728	7f 	 
	add a,e			;3729	83 	. 
	add a,e			;372a	83 	. 
	nop			;372b	00 	. 
	ld a,a			;372c	7f 	 
	add a,e			;372d	83 	. 
	add a,e			;372e	83 	. 
	nop			;372f	00 	. 
	ccf			;3730	3f 	? 
	and c			;3731	a1 	. 
	and c			;3732	a1 	. 
	ld b,b			;3733	40 	@ 
	ccf			;3734	3f 	? 
	cp e			;3735	bb 	. 
	cp e			;3736	bb 	. 
	ld b,b			;3737	40 	@ 
	ld c,00eh		;3738	0e 0e 	. . 
	ld c,0f0h		;373a	0e f0 	. . 
l373ch:
	defb 0fdh,001h,001h	;illegal sequence		;373c	fd 01 01 	. . . 
	ld (bc),a			;373f	02 	. 
	ld (bc),a			;3740	02 	. 
	djnz l3753h		;3741	10 10 	. . 
	defb 0edh;next byte illegal after ed		;3743	ed 	. 
	jp p,0f4f4h		;3744	f2 f4 f4 	. . . 
	add hl,bc			;3747	09 	. 
	jp p,0f4f4h		;3748	f2 f4 f4 	. . . 
	add hl,bc			;374b	09 	. 
l374ch:
	jp p,0f0f0h		;374c	f2 f0 f0 	. . . 
	dec c			;374f	0d 	. 
	jp m,0f8f8h		;3750	fa f8 f8 	. . . 
l3753h:
	dec b			;3753	05 	. 
	jp m,0f8f8h		;3754	fa f8 f8 	. . . 
	dec b			;3757	05 	. 
	nop			;3758	00 	. 
	ld a,a			;3759	7f 	 
	ld a,a			;375a	7f 	 
	nop			;375b	00 	. 
	nop			;375c	00 	. 
	add a,b			;375d	80 	. 
	add a,b			;375e	80 	. 
	ld a,a			;375f	7f 	 
	ld a,a			;3760	7f 	 
	ld b,a			;3761	47 	G 
	ld b,a			;3762	47 	G 
	add a,b			;3763	80 	. 
	ld sp,hl			;3764	f9 	. 
	add a,c			;3765	81 	. 
	add a,c			;3766	81 	. 
	ld b,0dfh		;3767	06 df 	. . 
	pop bc			;3769	c1 	. 
	pop bc			;376a	c1 	. 
	jr nz,l374ch		;376b	20 df 	  . 
	call nz,sub_20c4h		;376d	c4 c4 20 	. .   
	rst 8			;3770	cf 	. 
	ret nz			;3771	c0 	. 
	ret nz			;3772	c0 	. 
	jr nc,l373ch		;3773	30 c7 	0 . 
	ret z			;3775	c8 	. 
	ret z			;3776	c8 	. 
	jr nc,l3779h		;3777	30 00 	0 . 
l3779h:
	cp 0feh		;3779	fe fe 	. . 
	nop			;377b	00 	. 
	ld (bc),a			;377c	02 	. 
	inc bc			;377d	03 	. 
	inc bc			;377e	03 	. 
	call m,081ffh		;377f	fc ff 81 	. . . 
	add a,c			;3782	81 	. 
	nop			;3783	00 	. 
	jr c,l3786h		;3784	38 00 	8 . 
l3786h:
	nop			;3786	00 	. 
	rst 0			;3787	c7 	. 
	ld (l0000h),a		;3788	32 00 00 	2 . . 
	call sub_0466h		;378b	cd 66 04 	. f . 
	inc b			;378e	04 	. 
	sbc a,c			;378f	99 	. 
	jp p,l0000h		;3790	f2 00 00 	. . . 
	dec c			;3793	0d 	. 
	jp p,l0808h		;3794	f2 08 08 	. . . 
	dec b			;3797	05 	. 
	ccf			;3798	3f 	? 
	cp a			;3799	bf 	. 
	cp a			;379a	bf 	. 
	ld b,b			;379b	40 	@ 
	rra			;379c	1f 	. 
	cp a			;379d	bf 	. 
	cp a			;379e	bf 	. 
	ld b,b			;379f	40 	@ 
	rra			;37a0	1f 	. 
	cp a			;37a1	bf 	. 
	cp a			;37a2	bf 	. 
	ld b,b			;37a3	40 	@ 
	rrca			;37a4	0f 	. 
	sbc a,(hl)			;37a5	9e 	. 
	sbc a,(hl)			;37a6	9e 	. 
	ld h,b			;37a7	60 	` 
	daa			;37a8	27 	' 
	cp a			;37a9	bf 	. 
	cp a			;37aa	bf 	. 
	ld b,b			;37ab	40 	@ 
	ld sp,0b7b7h		;37ac	31 b7 b7 	1 . . 
	ld c,b			;37af	48 	H 
	nop			;37b0	00 	. 
	ret nz			;37b1	c0 	. 
	ret nz			;37b2	c0 	. 
	ccf			;37b3	3f 	? 
	nop			;37b4	00 	. 
	ld a,a			;37b5	7f 	 
	ld a,a			;37b6	7f 	 
	nop			;37b7	00 	. 
	jp m,0f8f8h		;37b8	fa f8 f8 	. . . 
	dec b			;37bb	05 	. 
	jp m,0d8d8h		;37bc	fa d8 d8 	. . . 
	dec b			;37bf	05 	. 
	cp 00ch		;37c0	fe 0c 	. . 
	inc c			;37c2	0c 	. 
	ld bc,l04feh		;37c3	01 fe 04 	. . . 
	inc b			;37c6	04 	. 
	ld bc,0c0feh		;37c7	01 fe c0 	. . . 
	ret nz			;37ca	c0 	. 
	ld bc,0e0feh		;37cb	01 fe e0 	. . . 
	ret po			;37ce	e0 	. 
	ld bc,002fch		;37cf	01 fc 02 	. . . 
	ld (bc),a			;37d2	02 	. 
	ld bc,0fc00h		;37d3	01 00 fc 	. . . 
	call m,0e702h		;37d6	fc 02 e7 	. . . 
	ret pe			;37d9	e8 	. 
	ret pe			;37da	e8 	. 
	djnz $-15		;37db	10 ef 	. . 
	ret po			;37dd	e0 	. 
	ret po			;37de	e0 	. 
	djnz $-27		;37df	10 e3 	. . 
	call pe,sub_10ech		;37e1	ec ec 10 	. . . 
	ret c			;37e4	d8 	. 
	in a,(0dbh)		;37e5	db db 	. . 
	inc h			;37e7	24 	$ 
	call pe,0ecech		;37e8	ec ec ec 	. . . 
	inc de			;37eb	13 	. 
	jp po,0c2c2h		;37ec	e2 c2 c2 	. . . 
	dec e			;37ef	1d 	. 
	ld a,a			;37f0	7f 	 
	ld a,a			;37f1	7f 	 
	ld a,a			;37f2	7f 	 
	add a,b			;37f3	80 	. 
	ccf			;37f4	3f 	? 
	ccf			;37f5	3f 	? 
	ccf			;37f6	3f 	? 
	ld b,b			;37f7	40 	@ 
	jp p,l0808h		;37f8	f2 08 08 	. . . 
	dec b			;37fb	05 	. 
	jp p,l0000h		;37fc	f2 00 00 	. . . 
	dec c			;37ff	0d 	. 
	cp 000h		;3800	fe 00 	. . 
	nop			;3802	00 	. 
	ld bc,l00feh		;3803	01 fe 00 	. . . 
	nop			;3806	00 	. 
	ld bc,080beh		;3807	01 be 80 	. . . 
	add a,b			;380a	80 	. 
	ld b,c			;380b	41 	A 
	ld a,000h		;380c	3e 00 	> . 
	nop			;380e	00 	. 
	pop bc			;380f	c1 	. 
	cp 0fah		;3810	fe fa 	. . 
	jp m,0fc01h		;3812	fa 01 fc 	. . . 
	call m,002fch		;3815	fc fc 02 	. . . 
	ccf			;3818	3f 	? 
	cp a			;3819	bf 	. 
	cp a			;381a	bf 	. 
	ld b,b			;381b	40 	@ 
l381ch:
	rra			;381c	1f 	. 
	cp a			;381d	bf 	. 
	cp a			;381e	bf 	. 
l381fh:
	ld b,b			;381f	40 	@ 
	rra			;3820	1f 	. 
	cp a			;3821	bf 	. 
	cp a			;3822	bf 	. 
l3823h:
	ld b,b			;3823	40 	@ 
	rrca			;3824	0f 	. 
	sbc a,(hl)			;3825	9e 	. 
	sbc a,(hl)			;3826	9e 	. 
l3827h:
	ld h,b			;3827	60 	` 
	daa			;3828	27 	' 
	cp a			;3829	bf 	. 
	cp a			;382a	bf 	. 
	ld b,b			;382b	40 	@ 
	ld sp,0b7b7h		;382c	31 b7 b7 	1 . . 
	ld c,b			;382f	48 	H 
	nop			;3830	00 	. 
	ret nz			;3831	c0 	. 
	ret nz			;3832	c0 	. 
	ccf			;3833	3f 	? 
	nop			;3834	00 	. 
	ld a,a			;3835	7f 	 
	ld a,a			;3836	7f 	 
	nop			;3837	00 	. 
	jp m,0f8f8h		;3838	fa f8 f8 	. . . 
	dec b			;383b	05 	. 
	jp m,0d8d8h		;383c	fa d8 d8 	. . . 
	dec b			;383f	05 	. 
	cp 00ch		;3840	fe 0c 	. . 
	inc c			;3842	0c 	. 
	ld bc,l04feh		;3843	01 fe 04 	. . . 
	inc b			;3846	04 	. 
	ld bc,0c0feh		;3847	01 fe c0 	. . . 
	ret nz			;384a	c0 	. 
	ld bc,0e0feh		;384b	01 fe e0 	. . . 
	ret po			;384e	e0 	. 
	ld bc,002fch		;384f	01 fc 02 	. . . 
	ld (bc),a			;3852	02 	. 
	ld bc,0fc00h		;3853	01 00 fc 	. . . 
	call m,0e702h		;3856	fc 02 e7 	. . . 
	ret pe			;3859	e8 	. 
	ret pe			;385a	e8 	. 
	djnz $-15		;385b	10 ef 	. . 
	ret po			;385d	e0 	. 
	ret po			;385e	e0 	. 
	djnz $-27		;385f	10 e3 	. . 
	call pe,sub_10ech		;3861	ec ec 10 	. . . 
	ret c			;3864	d8 	. 
	in a,(0dbh)		;3865	db db 	. . 
	inc h			;3867	24 	$ 
	call pe,0ecech		;3868	ec ec ec 	. . . 
	inc de			;386b	13 	. 
	jp po,0c2c2h		;386c	e2 c2 c2 	. . . 
	dec e			;386f	1d 	. 
	ld a,a			;3870	7f 	 
	ld a,a			;3871	7f 	 
	ld a,a			;3872	7f 	 
	add a,b			;3873	80 	. 
	ccf			;3874	3f 	? 
	ccf			;3875	3f 	? 
	ccf			;3876	3f 	? 
	ld b,b			;3877	40 	@ 
	jp p,l0808h		;3878	f2 08 08 	. . . 
	dec b			;387b	05 	. 
	jp p,l0000h		;387c	f2 00 00 	. . . 
	dec c			;387f	0d 	. 
	cp 000h		;3880	fe 00 	. . 
	nop			;3882	00 	. 
	ld bc,l00feh		;3883	01 fe 00 	. . . 
	nop			;3886	00 	. 
	ld bc,080beh		;3887	01 be 80 	. . . 
	add a,b			;388a	80 	. 
	ld b,c			;388b	41 	A 
	ld a,000h		;388c	3e 00 	> . 
	nop			;388e	00 	. 
	pop bc			;388f	c1 	. 
	cp 0fah		;3890	fe fa 	. . 
	jp m,0fc01h		;3892	fa 01 fc 	. . . 
	call m,002fch		;3895	fc fc 02 	. . . 
	rlca			;3898	07 	. 
	rlca			;3899	07 	. 
	rlca			;389a	07 	. 
	rlca			;389b	07 	. 
	rra			;389c	1f 	. 
	add hl,de			;389d	19 	. 
	add hl,de			;389e	19 	. 
	rra			;389f	1f 	. 
	add hl,sp			;38a0	39 	9 
	ld h,020h		;38a1	26 20 	&   
	ccf			;38a3	3f 	? 
	ld (hl),b			;38a4	70 	p 
	ld l,a			;38a5	6f 	o 
	ld h,b			;38a6	60 	` 
	ld a,a			;38a7	7f 	 
	sbc a,b			;38a8	98 	. 
	rst 30h			;38a9	f7 	. 
	sub b			;38aa	90 	. 
	rst 38h			;38ab	ff 	. 
	sbc a,l			;38ac	9d 	. 
	ex de,hl			;38ad	eb 	. 
	adc a,c			;38ae	89 	. 
	rst 38h			;38af	ff 	. 
	rst 38h			;38b0	ff 	. 
	adc a,l			;38b1	8d 	. 
	adc a,l			;38b2	8d 	. 
	rst 38h			;38b3	ff 	. 
	rst 38h			;38b4	ff 	. 
	rst 18h			;38b5	df 	. 
	rst 18h			;38b6	df 	. 
	rst 38h			;38b7	ff 	. 
	rst 20h			;38b8	e7 	. 
	rst 20h			;38b9	e7 	. 
	rst 20h			;38ba	e7 	. 
	rst 20h			;38bb	e7 	. 
	sbc a,b			;38bc	98 	. 
	ld a,a			;38bd	7f 	 
	jr $+1		;38be	18 ff 	. . 
	add a,h			;38c0	84 	. 
	ld a,a			;38c1	7f 	 
	inc b			;38c2	04 	. 
	rst 38h			;38c3	ff 	. 
	add a,d			;38c4	82 	. 
	ld a,a			;38c5	7f 	 
	ld (bc),a			;38c6	02 	. 
	rst 38h			;38c7	ff 	. 
	pop hl			;38c8	e1 	. 
	rra			;38c9	1f 	. 
	ld bc,0c1ffh		;38ca	01 ff c1 	. . . 
	ccf			;38cd	3f 	? 
	ld bc,0f3ffh		;38ce	01 ff f3 	. . . 
	adc a,(hl)			;38d1	8e 	. 
	add a,d			;38d2	82 	. 
	rst 38h			;38d3	ff 	. 
	rst 38h			;38d4	ff 	. 
	ex (sp),hl			;38d5	e3 	. 
	ex (sp),hl			;38d6	e3 	. 
	rst 38h			;38d7	ff 	. 
	rrca			;38d8	0f 	. 
	rrca			;38d9	0f 	. 
	rrca			;38da	0f 	. 
	rrca			;38db	0f 	. 
	rst 18h			;38dc	df 	. 
	ret nc			;38dd	d0 	. 
	ret nc			;38de	d0 	. 
	rst 18h			;38df	df 	. 
	dec sp			;38e0	3b 	; 
	call po,0ff20h		;38e1	e4 20 ff 	.   . 
	ld sp,l20eeh		;38e4	31 ee 20 	1 .   
	rst 38h			;38e7	ff 	. 
	ld de,010feh		;38e8	11 fe 10 	. . . 
	rst 38h			;38eb	ff 	. 
	add hl,de			;38ec	19 	. 
	or 010h		;38ed	f6 10 	. . 
	rst 38h			;38ef	ff 	. 
	inc a			;38f0	3c 	< 
	ex (sp),hl			;38f1	e3 	. 
	jr nz,$+1		;38f2	20 ff 	  . 
	inc iy		;38f4	fd 23 	. # 
	ld hl,01cffh		;38f6	21 ff 1c 	! . . 
	inc e			;38f9	1c 	. 
	inc e			;38fa	1c 	. 
	inc e			;38fb	1c 	. 
	or d			;38fc	b2 	. 
	xor (hl)			;38fd	ae 	. 
l38feh:
	and d			;38fe	a2 	. 
	cp (hl)			;38ff	be 	. 
	pop af			;3900	f1 	. 
l3901h:
	ld c,a			;3901	4f 	O 
	ld b,c			;3902	41 	A 
	rst 38h			;3903	ff 	. 
	pop af			;3904	f1 	. 
	ld c,a			;3905	4f 	O 
	ld b,c			;3906	41 	A 
	rst 38h			;3907	ff 	. 
	pop af			;3908	f1 	. 
l3909h:
	ld c,a			;3909	4f 	O 
	ld b,c			;390a	41 	A 
	rst 38h			;390b	ff 	. 
	ex (sp),hl			;390c	e3 	. 
	sbc a,a			;390d	9f 	. 
	add a,e			;390e	83 	. 
	rst 38h			;390f	ff 	. 
	rst 20h			;3910	e7 	. 
	sbc a,(hl)			;3911	9e 	. 
	add a,(hl)			;3912	86 	. 
	rst 38h			;3913	ff 	. 
	rst 38h			;3914	ff 	. 
	call z,0ffcch		;3915	cc cc ff 	. . . 
	ld (hl),c			;3918	71 	q 
	ld (hl),c			;3919	71 	q 
	ld (hl),c			;391a	71 	q 
	ld (hl),c			;391b	71 	q 
	rst 8			;391c	cf 	. 
	cp a			;391d	bf 	. 
	adc a,a			;391e	8f 	. 
	rst 38h			;391f	ff 	. 
	rst 0			;3920	c7 	. 
	ld a,006h		;3921	3e 06 	> . 
	rst 38h			;3923	ff 	. 
	rst 0			;3924	c7 	. 
	ld a,006h		;3925	3e 06 	> . 
	rst 38h			;3927	ff 	. 
	adc a,c			;3928	89 	. 
	ld a,a			;3929	7f 	 
	add hl,bc			;392a	09 	. 
	rst 38h			;392b	ff 	. 
	exx			;392c	d9 	. 
	scf			;392d	37 	7 
	ld de,0f9ffh		;392e	11 ff f9 	. . . 
	or a			;3931	b7 	. 
	or c			;3932	b1 	. 
	rst 38h			;3933	ff 	. 
	rst 38h			;3934	ff 	. 
	ei			;3935	fb 	. 
	ei			;3936	fb 	. 
	rst 38h			;3937	ff 	. 
	rst 20h			;3938	e7 	. 
	rst 20h			;3939	e7 	. 
	rst 20h			;393a	e7 	. 
	rst 20h			;393b	e7 	. 
	sbc a,b			;393c	98 	. 
l393dh:
	ld a,a			;393d	7f 	 
	jr $+1		;393e	18 ff 	. . 
	add a,h			;3940	84 	. 
	ld a,a			;3941	7f 	 
	inc b			;3942	04 	. 
	rst 38h			;3943	ff 	. 
	add a,d			;3944	82 	. 
	ld a,a			;3945	7f 	 
	ld (bc),a			;3946	02 	. 
	rst 38h			;3947	ff 	. 
	pop hl			;3948	e1 	. 
	rra			;3949	1f 	. 
	ld bc,0c1ffh		;394a	01 ff c1 	. . . 
	ccf			;394d	3f 	? 
	ld bc,0f3ffh		;394e	01 ff f3 	. . . 
	adc a,(hl)			;3951	8e 	. 
	add a,d			;3952	82 	. 
	rst 38h			;3953	ff 	. 
	rst 38h			;3954	ff 	. 
	ex (sp),hl			;3955	e3 	. 
	ex (sp),hl			;3956	e3 	. 
	rst 38h			;3957	ff 	. 
	rrca			;3958	0f 	. 
	rrca			;3959	0f 	. 
	rrca			;395a	0f 	. 
	rrca			;395b	0f 	. 
	rst 18h			;395c	df 	. 
	ret nc			;395d	d0 	. 
	ret nc			;395e	d0 	. 
	rst 18h			;395f	df 	. 
	dec sp			;3960	3b 	; 
	call po,0ff20h		;3961	e4 20 ff 	.   . 
	ld sp,l20eeh		;3964	31 ee 20 	1 .   
	rst 38h			;3967	ff 	. 
	ld de,010feh		;3968	11 fe 10 	. . . 
	rst 38h			;396b	ff 	. 
	add hl,de			;396c	19 	. 
	or 010h		;396d	f6 10 	. . 
	rst 38h			;396f	ff 	. 
	inc a			;3970	3c 	< 
	ex (sp),hl			;3971	e3 	. 
	jr nz,$+1		;3972	20 ff 	  . 
	inc iy		;3974	fd 23 	. # 
	ld hl,060ffh		;3976	21 ff 60 	! . ` 
	ld h,b			;3979	60 	` 
	ld h,b			;397a	60 	` 
	ld h,b			;397b	60 	` 
	ret c			;397c	d8 	. 
	cp b			;397d	b8 	. 
	sbc a,b			;397e	98 	. 
	ret m			;397f	f8 	. 
	call nz,0043ch		;3980	c4 3c 04 	. < . 
	call m,07e86h		;3983	fc 86 7e 	. . ~ 
	ld b,0feh		;3986	06 fe 	. . 
	add hl,bc			;3988	09 	. 
	rst 38h			;3989	ff 	. 
	add hl,bc			;398a	09 	. 
	rst 38h			;398b	ff 	. 
	sbc a,c			;398c	99 	. 
	rst 30h			;398d	f7 	. 
	sub c			;398e	91 	. 
	rst 38h			;398f	ff 	. 
	ld sp,hl			;3990	f9 	. 
	or a			;3991	b7 	. 
	or c			;3992	b1 	. 
	rst 38h			;3993	ff 	. 
	defb 0fdh,0fbh,0f9h	;illegal sequence		;3994	fd fb f9 	. . . 
	rst 38h			;3997	ff 	. 
	ld a,a			;3998	7f 	 
	ld a,(hl)			;3999	7e 	~ 
	ld a,a			;399a	7f 	 
	ld a,a			;399b	7f 	 
	ld a,a			;399c	7f 	 
	ld h,c			;399d	61 	a 
	ld a,a			;399e	7f 	 
	ld a,a			;399f	7f 	 
	ccf			;39a0	3f 	? 
	ld hl,l3f3fh		;39a1	21 3f 3f 	! ? ? 
	ccf			;39a4	3f 	? 
	ld sp,l3f3fh		;39a5	31 3f 3f 	1 ? ? 
	rra			;39a8	1f 	. 
	jr l39cah		;39a9	18 1f 	. . 
	rra			;39ab	1f 	. 
	rrca			;39ac	0f 	. 
	inc c			;39ad	0c 	. 
	rrca			;39ae	0f 	. 
	rrca			;39af	0f 	. 
	rlca			;39b0	07 	. 
	rlca			;39b1	07 	. 
	rlca			;39b2	07 	. 
	rlca			;39b3	07 	. 
	nop			;39b4	00 	. 
	nop			;39b5	00 	. 
	nop			;39b6	00 	. 
	nop			;39b7	00 	. 
	rst 38h			;39b8	ff 	. 
	ccf			;39b9	3f 	? 
	rst 38h			;39ba	ff 	. 
	rst 38h			;39bb	ff 	. 
	rst 38h			;39bc	ff 	. 
	ld (bc),a			;39bd	02 	. 
	rst 38h			;39be	ff 	. 
	rst 38h			;39bf	ff 	. 
	rst 30h			;39c0	f7 	. 
	inc b			;39c1	04 	. 
	rst 38h			;39c2	ff 	. 
	rst 38h			;39c3	ff 	. 
	rst 30h			;39c4	f7 	. 
	inc b			;39c5	04 	. 
	rst 38h			;39c6	ff 	. 
	rst 38h			;39c7	ff 	. 
	rst 30h			;39c8	f7 	. 
	add a,(hl)			;39c9	86 	. 
l39cah:
	rst 38h			;39ca	ff 	. 
	rst 38h			;39cb	ff 	. 
	rst 28h			;39cc	ef 	. 
	adc a,(hl)			;39cd	8e 	. 
	rst 38h			;39ce	ff 	. 
	rst 38h			;39cf	ff 	. 
	ei			;39d0	fb 	. 
	sbc a,e			;39d1	9b 	. 
	ei			;39d2	fb 	. 
	ei			;39d3	fb 	. 
	ret p			;39d4	f0 	. 
	ret p			;39d5	f0 	. 
	ret p			;39d6	f0 	. 
	ret p			;39d7	f0 	. 
	rst 38h			;39d8	ff 	. 
	di			;39d9	f3 	. 
	di			;39da	f3 	. 
	rst 38h			;39db	ff 	. 
	rst 38h			;39dc	ff 	. 
	rst 38h			;39dd	ff 	. 
	rst 38h			;39de	ff 	. 
	rst 38h			;39df	ff 	. 
	rst 38h			;39e0	ff 	. 
	ld a,a			;39e1	7f 	 
	rst 38h			;39e2	ff 	. 
	rst 38h			;39e3	ff 	. 
	ld a,a			;39e4	7f 	 
	ld a,(de)			;39e5	1a 	. 
	rst 38h			;39e6	ff 	. 
	rst 38h			;39e7	ff 	. 
	sbc a,a			;39e8	9f 	. 
	ld (bc),a			;39e9	02 	. 
	rst 38h			;39ea	ff 	. 
	rst 38h			;39eb	ff 	. 
	rst 0			;39ec	c7 	. 
	inc bc			;39ed	03 	. 
	rst 38h			;39ee	ff 	. 
	rst 38h			;39ef	ff 	. 
	rst 38h			;39f0	ff 	. 
	add a,a			;39f1	87 	. 
	rst 38h			;39f2	ff 	. 
	rst 38h			;39f3	ff 	. 
	ret m			;39f4	f8 	. 
	ret m			;39f5	f8 	. 
	ret m			;39f6	f8 	. 
	ret m			;39f7	f8 	. 
	rst 38h			;39f8	ff 	. 
	sbc a,0deh		;39f9	de de 	. . 
	rst 38h			;39fb	ff 	. 
	rst 38h			;39fc	ff 	. 
	rst 38h			;39fd	ff 	. 
	rst 38h			;39fe	ff 	. 
	rst 38h			;39ff	ff 	. 
	rst 38h			;3a00	ff 	. 
	ld (hl),e			;3a01	73 	s 
	rst 38h			;3a02	ff 	. 
	rst 38h			;3a03	ff 	. 
	rst 38h			;3a04	ff 	. 
	ld de,0ffffh		;3a05	11 ff ff 	. . . 
	rst 38h			;3a08	ff 	. 
	djnz $+1		;3a09	10 ff 	. . 
	rst 38h			;3a0b	ff 	. 
	rst 38h			;3a0c	ff 	. 
	jr nc,$+1		;3a0d	30 ff 	0 . 
	rst 38h			;3a0f	ff 	. 
	rst 38h			;3a10	ff 	. 
	ret m			;3a11	f8 	. 
	rst 38h			;3a12	ff 	. 
	rst 38h			;3a13	ff 	. 
	rrca			;3a14	0f 	. 
	rrca			;3a15	0f 	. 
	rrca			;3a16	0f 	. 
	rrca			;3a17	0f 	. 
	ld a,a			;3a18	7f 	 
	ld a,(hl)			;3a19	7e 	~ 
	ld a,a			;3a1a	7f 	 
	ld a,a			;3a1b	7f 	 
l3a1ch:
	rst 38h			;3a1c	ff 	. 
	jp p,0ffffh		;3a1d	f2 ff ff 	. . . 
	rst 38h			;3a20	ff 	. 
	jp nc,0ffffh		;3a21	d2 ff ff 	. . . 
	rst 18h			;3a24	df 	. 
	ld (de),a			;3a25	12 	. 
	rst 38h			;3a26	ff 	. 
	rst 38h			;3a27	ff 	. 
	sbc a,a			;3a28	9f 	. 
	ld de,0ffffh		;3a29	11 ff ff 	. . . 
	cp a			;3a2c	bf 	. 
	ld hl,0ffffh		;3a2d	21 ff ff 	! . . 
	rst 38h			;3a30	ff 	. 
	inc hl			;3a31	23 	# 
	rst 38h			;3a32	ff 	. 
	rst 38h			;3a33	ff 	. 
	cp 0feh		;3a34	fe fe 	. . 
	cp 0feh		;3a36	fe fe 	. . 
l3a38h:
	rst 38h			;3a38	ff 	. 
	ld a,a			;3a39	7f 	 
	rst 38h			;3a3a	ff 	. 
l3a3bh:
	rst 38h			;3a3b	ff 	. 
	rra			;3a3c	1f 	. 
l3a3dh:
	inc bc			;3a3d	03 	. 
	rst 38h			;3a3e	ff 	. 
	rst 38h			;3a3f	ff 	. 
	add a,a			;3a40	87 	. 
	ld (bc),a			;3a41	02 	. 
	rst 38h			;3a42	ff 	. 
	rst 38h			;3a43	ff 	. 
	jp 0ff02h		;3a44	c3 02 ff 	. . . 
	rst 38h			;3a47	ff 	. 
	ex (sp),hl			;3a48	e3 	. 
	ld (bc),a			;3a49	02 	. 
	rst 38h			;3a4a	ff 	. 
	rst 38h			;3a4b	ff 	. 
	rst 20h			;3a4c	e7 	. 
	inc b			;3a4d	04 	. 
	rst 38h			;3a4e	ff 	. 
	rst 38h			;3a4f	ff 	. 
	rst 38h			;3a50	ff 	. 
	call nz,0ffffh		;3a51	c4 ff ff 	. . . 
	ld a,a			;3a54	7f 	 
	ld a,a			;3a55	7f 	 
	ld a,a			;3a56	7f 	 
	ld a,a			;3a57	7f 	 
	rst 38h			;3a58	ff 	. 
	di			;3a59	f3 	. 
	di			;3a5a	f3 	. 
	rst 38h			;3a5b	ff 	. 
	rst 38h			;3a5c	ff 	. 
	sbc a,(hl)			;3a5d	9e 	. 
	rst 38h			;3a5e	ff 	. 
	rst 38h			;3a5f	ff 	. 
	jr nc,l3a82h		;3a60	30 20 	0   
	rst 38h			;3a62	ff 	. 
	rst 38h			;3a63	ff 	. 
	ld sp,0ff21h		;3a64	31 21 ff 	1 ! . 
	rst 38h			;3a67	ff 	. 
	ld a,l			;3a68	7d 	} 
	ld b,c			;3a69	41 	A 
	rst 38h			;3a6a	ff 	. 
	rst 38h			;3a6b	ff 	. 
	rst 38h			;3a6c	ff 	. 
	ld b,a			;3a6d	47 	G 
	rst 38h			;3a6e	ff 	. 
	rst 38h			;3a6f	ff 	. 
	call m,0fcfch		;3a70	fc fc fc 	. . . 
	call m,08080h		;3a73	fc 80 80 	. . . 
	add a,b			;3a76	80 	. 
	add a,b			;3a77	80 	. 
	rst 38h			;3a78	ff 	. 
	defb 0fdh,0fdh,0ffh	;illegal sequence		;3a79	fd fd ff 	. . . 
	rst 20h			;3a7c	e7 	. 
	rst 0			;3a7d	c7 	. 
	rst 38h			;3a7e	ff 	. 
	rst 38h			;3a7f	ff 	. 
	add a,086h		;3a80	c6 86 	. . 
l3a82h:
	cp 0feh		;3a82	fe fe 	. . 
	call z,0fc0ch		;3a84	cc 0c fc 	. . . 
	call m,018f8h		;3a87	fc f8 18 	. . . 
	ret m			;3a8a	f8 	. 
	ret m			;3a8b	f8 	. 
	ret p			;3a8c	f0 	. 
	ret p			;3a8d	f0 	. 
	ret p			;3a8e	f0 	. 
	ret p			;3a8f	f0 	. 
	nop			;3a90	00 	. 
	nop			;3a91	00 	. 
	nop			;3a92	00 	. 
	nop			;3a93	00 	. 
	nop			;3a94	00 	. 
	nop			;3a95	00 	. 
	nop			;3a96	00 	. 
	nop			;3a97	00 	. 
	add a,000h		;3a98	c6 00 	. . 
	nop			;3a9a	00 	. 
	ld hl,l00e6h		;3a9b	21 e6 00 	! . . 
	nop			;3a9e	00 	. 
	ld de,l00f6h		;3a9f	11 f6 00 	. . . 
	nop			;3aa2	00 	. 
	add hl,bc			;3aa3	09 	. 
	cp 000h		;3aa4	fe 00 	. . 
	nop			;3aa6	00 	. 
	ld bc,l00eeh		;3aa7	01 ee 00 	. . . 
	nop			;3aaa	00 	. 
	ld de,l00e6h		;3aab	11 e6 00 	. . . 
	nop			;3aae	00 	. 
	ld de,000e2h		;3aaf	11 e2 00 	. . . 
	nop			;3ab2	00 	. 
	ld de,l0000h		;3ab3	11 00 00 	. . . 
	nop			;3ab6	00 	. 
	nop			;3ab7	00 	. 
	ld a,h			;3ab8	7c 	| 
	nop			;3ab9	00 	. 
	nop			;3aba	00 	. 
	ld (bc),a			;3abb	02 	. 
	and 000h		;3abc	e6 00 	. . 
	nop			;3abe	00 	. 
	add hl,de			;3abf	19 	. 
	and 000h		;3ac0	e6 00 	. . 
	nop			;3ac2	00 	. 
	ld de,l00e6h		;3ac3	11 e6 00 	. . . 
	nop			;3ac6	00 	. 
	ld de,l00e6h		;3ac7	11 e6 00 	. . . 
	nop			;3aca	00 	. 
	ld de,l00e6h		;3acb	11 e6 00 	. . . 
	nop			;3ace	00 	. 
	ld de,l007ch		;3acf	11 7c 00 	. | . 
	nop			;3ad2	00 	. 
	ld (bc),a			;3ad3	02 	. 
	nop			;3ad4	00 	. 
	nop			;3ad5	00 	. 
	nop			;3ad6	00 	. 
	nop			;3ad7	00 	. 
	add a,000h		;3ad8	c6 00 	. . 
	nop			;3ada	00 	. 
	ld hl,l00c6h		;3adb	21 c6 00 	! . . 
	nop			;3ade	00 	. 
	ld hl,l00c6h		;3adf	21 c6 00 	! . . 
	nop			;3ae2	00 	. 
	ld hl,l00c6h		;3ae3	21 c6 00 	! . . 
	nop			;3ae6	00 	. 
	ld hl,l00c6h		;3ae7	21 c6 00 	! . . 
	nop			;3aea	00 	. 
	ld hl,l006ch		;3aeb	21 6c 00 	! l . 
	nop			;3aee	00 	. 
	ld (de),a			;3aef	12 	. 
	jr c,l3af2h		;3af0	38 00 	8 . 
l3af2h:
	nop			;3af2	00 	. 
	inc b			;3af3	04 	. 
	nop			;3af4	00 	. 
	nop			;3af5	00 	. 
	nop			;3af6	00 	. 
	nop			;3af7	00 	. 
	jr c,l3afah		;3af8	38 00 	8 . 
l3afah:
	nop			;3afa	00 	. 
	inc b			;3afb	04 	. 
	jr c,l3afeh		;3afc	38 00 	8 . 
l3afeh:
	nop			;3afe	00 	. 
	inc b			;3aff	04 	. 
	jr c,l3b02h		;3b00	38 00 	8 . 
l3b02h:
	nop			;3b02	00 	. 
	inc b			;3b03	04 	. 
l3b04h:
	jr c,l3b06h		;3b04	38 00 	8 . 
l3b06h:
	nop			;3b06	00 	. 
	inc b			;3b07	04 	. 
l3b08h:
	jr c,l3b0ah		;3b08	38 00 	8 . 
l3b0ah:
	nop			;3b0a	00 	. 
	inc b			;3b0b	04 	. 
	jr c,l3b0eh		;3b0c	38 00 	8 . 
l3b0eh:
	nop			;3b0e	00 	. 
	inc b			;3b0f	04 	. 
	jr c,l3b12h		;3b10	38 00 	8 . 
l3b12h:
	nop			;3b12	00 	. 
	inc b			;3b13	04 	. 
	nop			;3b14	00 	. 
	nop			;3b15	00 	. 
	nop			;3b16	00 	. 
	nop			;3b17	00 	. 
l3b18h:
	cp 000h		;3b18	fe 00 	. . 
	nop			;3b1a	00 	. 
	ld bc,l00feh		;3b1b	01 fe 00 	. . . 
	nop			;3b1e	00 	. 
	ld bc,l0038h		;3b1f	01 38 00 	. 8 . 
	nop			;3b22	00 	. 
	ld b,038h		;3b23	06 38 	. 8 
	nop			;3b25	00 	. 
	nop			;3b26	00 	. 
	inc b			;3b27	04 	. 
	jr c,l3b2ah		;3b28	38 00 	8 . 
l3b2ah:
	nop			;3b2a	00 	. 
	inc b			;3b2b	04 	. 
	jr c,l3b2eh		;3b2c	38 00 	8 . 
l3b2eh:
	nop			;3b2e	00 	. 
	inc b			;3b2f	04 	. 
	jr c,l3b32h		;3b30	38 00 	8 . 
l3b32h:
	nop			;3b32	00 	. 
	inc b			;3b33	04 	. 
	nop			;3b34	00 	. 
	nop			;3b35	00 	. 
	nop			;3b36	00 	. 
	nop			;3b37	00 	. 
	jr c,l3b3ah		;3b38	38 00 	8 . 
l3b3ah:
	nop			;3b3a	00 	. 
	inc b			;3b3b	04 	. 
	ld h,h			;3b3c	64 	d 
l3b3dh:
	nop			;3b3d	00 	. 
	nop			;3b3e	00 	. 
	ld a,(de)			;3b3f	1a 	. 
	and 000h		;3b40	e6 00 	. . 
	nop			;3b42	00 	. 
	ld de,l00e6h		;3b43	11 e6 00 	. . . 
	nop			;3b46	00 	. 
	ld de,l00feh		;3b47	11 fe 00 	. . . 
	nop			;3b4a	00 	. 
	ld bc,l00e6h		;3b4b	01 e6 00 	. . . 
	nop			;3b4e	00 	. 
	add hl,de			;3b4f	19 	. 
	and 000h		;3b50	e6 00 	. . 
	nop			;3b52	00 	. 
	ld de,l0000h		;3b53	11 00 00 	. . . 
	nop			;3b56	00 	. 
	nop			;3b57	00 	. 
	ret po			;3b58	e0 	. 
	nop			;3b59	00 	. 
	nop			;3b5a	00 	. 
	djnz l3b3dh		;3b5b	10 e0 	. . 
	nop			;3b5d	00 	. 
	nop			;3b5e	00 	. 
	djnz $-30		;3b5f	10 e0 	. . 
	nop			;3b61	00 	. 
	nop			;3b62	00 	. 
	djnz $-30		;3b63	10 e0 	. . 
	nop			;3b65	00 	. 
	nop			;3b66	00 	. 
	djnz $-30		;3b67	10 e0 	. . 
	nop			;3b69	00 	. 
	nop			;3b6a	00 	. 
	djnz $-30		;3b6b	10 e0 	. . 
	nop			;3b6d	00 	. 
	nop			;3b6e	00 	. 
l3b6fh:
	djnz l3b6fh		;3b6f	10 fe 	. . 
	nop			;3b71	00 	. 
	nop			;3b72	00 	. 
	ld bc,l0000h		;3b73	01 00 00 	. . . 
	nop			;3b76	00 	. 
	nop			;3b77	00 	. 
	jr c,l3b7ah		;3b78	38 00 	8 . 
l3b7ah:
	nop			;3b7a	00 	. 
	inc b			;3b7b	04 	. 
	jr c,l3b7eh		;3b7c	38 00 	8 . 
l3b7eh:
	nop			;3b7e	00 	. 
	inc b			;3b7f	04 	. 
	jr c,l3b82h		;3b80	38 00 	8 . 
l3b82h:
	nop			;3b82	00 	. 
	inc b			;3b83	04 	. 
	jr c,l3b86h		;3b84	38 00 	8 . 
l3b86h:
	nop			;3b86	00 	. 
	inc b			;3b87	04 	. 
	jr c,l3b8ah		;3b88	38 00 	8 . 
l3b8ah:
	nop			;3b8a	00 	. 
	inc b			;3b8b	04 	. 
	jr c,l3b8eh		;3b8c	38 00 	8 . 
l3b8eh:
	nop			;3b8e	00 	. 
	inc b			;3b8f	04 	. 
	jr c,l3b92h		;3b90	38 00 	8 . 
l3b92h:
	nop			;3b92	00 	. 
	inc b			;3b93	04 	. 
	nop			;3b94	00 	. 
	nop			;3b95	00 	. 
	nop			;3b96	00 	. 
	nop			;3b97	00 	. 
	cp 000h		;3b98	fe 00 	. . 
	nop			;3b9a	00 	. 
	ld bc,l00feh		;3b9b	01 fe 00 	. . . 
	nop			;3b9e	00 	. 
	ld bc,l0038h		;3b9f	01 38 00 	. 8 . 
	nop			;3ba2	00 	. 
	ld b,038h		;3ba3	06 38 	. 8 
	nop			;3ba5	00 	. 
	nop			;3ba6	00 	. 
	inc b			;3ba7	04 	. 
	jr c,l3baah		;3ba8	38 00 	8 . 
l3baah:
	nop			;3baa	00 	. 
	inc b			;3bab	04 	. 
	jr c,l3baeh		;3bac	38 00 	8 . 
l3baeh:
	nop			;3bae	00 	. 
	inc b			;3baf	04 	. 
	jr c,l3bb2h		;3bb0	38 00 	8 . 
l3bb2h:
	nop			;3bb2	00 	. 
	inc b			;3bb3	04 	. 
	nop			;3bb4	00 	. 
	nop			;3bb5	00 	. 
	nop			;3bb6	00 	. 
	nop			;3bb7	00 	. 
	add a,000h		;3bb8	c6 00 	. . 
	nop			;3bba	00 	. 
	ld hl,l00c6h		;3bbb	21 c6 00 	! . . 
	nop			;3bbe	00 	. 
	ld hl,l00feh		;3bbf	21 fe 00 	! . . 
	nop			;3bc2	00 	. 
	ld bc,l007ch		;3bc3	01 7c 00 	. | . 
	nop			;3bc6	00 	. 
	ld (bc),a			;3bc7	02 	. 
	jr c,l3bcah		;3bc8	38 00 	8 . 
l3bcah:
	nop			;3bca	00 	. 
	inc b			;3bcb	04 	. 
	jr c,l3bceh		;3bcc	38 00 	8 . 
l3bceh:
	nop			;3bce	00 	. 
	inc b			;3bcf	04 	. 
	jr c,l3bd2h		;3bd0	38 00 	8 . 
l3bd2h:
	nop			;3bd2	00 	. 
	inc b			;3bd3	04 	. 
	nop			;3bd4	00 	. 
	nop			;3bd5	00 	. 
	nop			;3bd6	00 	. 
	nop			;3bd7	00 	. 
	ccf			;3bd8	3f 	? 
	ld a,a			;3bd9	7f 	 
	nop			;3bda	00 	. 
	ld bc,0f1ffh		;3bdb	01 ff f1 	. . . 
	ret p			;3bde	f0 	. 
	ret m			;3bdf	f8 	. 
	rst 38h			;3be0	ff 	. 
	rst 38h			;3be1	ff 	. 
	rst 8			;3be2	cf 	. 
	rst 28h			;3be3	ef 	. 
	nop			;3be4	00 	. 
	ld bc,0ffffh		;3be5	01 ff ff 	. . . 
	rst 30h			;3be8	f7 	. 
	rlca			;3be9	07 	. 
	rst 0			;3bea	c7 	. 
	rst 20h			;3beb	e7 	. 
	ld a,a			;3bec	7f 	 
	ld bc,0f0ffh		;3bed	01 ff f0 	. . . 
	ld sp,hl			;3bf0	f9 	. 
	nop			;3bf1	00 	. 
	ld bc,07fffh		;3bf2	01 ff 7f 	. .  
	ccf			;3bf5	3f 	? 
	nop			;3bf6	00 	. 
	ld b,0f7h		;3bf7	06 f7 	. . 
	ex (sp),hl			;3bf9	e3 	. 
	pop bc			;3bfa	c1 	. 
	nop			;3bfb	00 	. 
	inc bc			;3bfc	03 	. 
	rst 18h			;3bfd	df 	. 
	nop			;3bfe	00 	. 
	dec b			;3bff	05 	. 
	adc a,a			;3c00	8f 	. 
	nop			;3c01	00 	. 
l3c02h:
	inc bc			;3c02	03 	. 
	cp a			;3c03	bf 	. 
l3c04h:
	nop			;3c04	00 	. 
	inc b			;3c05	04 	. 
	ld e,01fh		;3c06	1e 1f 	. . 
l3c08h:
	nop			;3c08	00 	. 
	inc b			;3c09	04 	. 
	adc a,a			;3c0a	8f 	. 
	rst 18h			;3c0b	df 	. 
	nop			;3c0c	00 	. 
	ld bc,0feffh		;3c0d	01 ff fe 	. . . 
l3c10h:
	call m,sub_1fffh		;3c10	fc ff 1f 	. . . 
	nop			;3c13	00 	. 
	inc bc			;3c14	03 	. 
	ld e,000h		;3c15	1e 00 	. . 
	inc bc			;3c17	03 	. 
	ccf			;3c18	3f 	? 
	di			;3c19	f3 	. 
	ei			;3c1a	fb 	. 
	nop			;3c1b	00 	. 
l3c1ch:
	ld bc,07dffh		;3c1c	01 ff 7d 	. . } 
	rst 38h			;3c1f	ff 	. 
	dec a			;3c20	3d 	= 
	ld a,l			;3c21	7d 	} 
	defb 0fdh,000h,003h	;illegal sequence		;3c22	fd 00 03 	. . . 
	rst 38h			;3c25	ff 	. 
	ex (sp),hl			;3c26	e3 	. 
	ret po			;3c27	e0 	. 
	rst 20h			;3c28	e7 	. 
	rst 38h			;3c29	ff 	. 
	rst 38h			;3c2a	ff 	. 
	ld sp,hl			;3c2b	f9 	. 
	pop af			;3c2c	f1 	. 
	nop			;3c2d	00 	. 
	inc bc			;3c2e	03 	. 
	ld bc,l0300h		;3c2f	01 00 03 	. . . 
	inc bc			;3c32	03 	. 
	nop			;3c33	00 	. 
	ld bc,0e7ffh		;3c34	01 ff e7 	. . . 
	ret po			;3c37	e0 	. 
	rst 38h			;3c38	ff 	. 
	ex (sp),hl			;3c39	e3 	. 
	nop			;3c3a	00 	. 
	inc bc			;3c3b	03 	. 
	rst 38h			;3c3c	ff 	. 
	nop			;3c3d	00 	. 
	inc bc			;3c3e	03 	. 
	rst 18h			;3c3f	df 	. 
	rst 8			;3c40	cf 	. 
	rrca			;3c41	0f 	. 
	nop			;3c42	00 	. 
	inc bc			;3c43	03 	. 
	adc a,a			;3c44	8f 	. 
	ret m			;3c45	f8 	. 
	call m,sub_3efeh		;3c46	fc fe 3e 	. . > 
	rst 38h			;3c49	ff 	. 
	ld e,03eh		;3c4a	1e 3e 	. > 
	cp 0ffh		;3c4c	fe ff 	. . 
	adc a,a			;3c4e	8f 	. 
	rrca			;3c4f	0f 	. 
	rst 38h			;3c50	ff 	. 
	rst 8			;3c51	cf 	. 
	nop			;3c52	00 	. 
	inc bc			;3c53	03 	. 
	rst 18h			;3c54	df 	. 
	rst 38h			;3c55	ff 	. 
	call m,sub_3e3ch		;3c56	fc 3c 3e 	. < > 
	ld e,09fh		;3c59	1e 9f 	. . 
	rst 38h			;3c5b	ff 	. 
	adc a,a			;3c5c	8f 	. 
	nop			;3c5d	00 	. 
	nop			;3c5e	00 	. 
	ccf			;3c5f	3f 	? 
	ld a,a			;3c60	7f 	 
	ld sp,hl			;3c61	f9 	. 
	rst 38h			;3c62	ff 	. 
	ret p			;3c63	f0 	. 
	ret m			;3c64	f8 	. 
	rst 38h			;3c65	ff 	. 
	nop			;3c66	00 	. 
	rst 8			;3c67	cf 	. 
	rst 28h			;3c68	ef 	. 
	rst 38h			;3c69	ff 	. 
	rst 30h			;3c6a	f7 	. 
	rst 38h			;3c6b	ff 	. 
	rlca			;3c6c	07 	. 
	rst 38h			;3c6d	ff 	. 
	nop			;3c6e	00 	. 
	ld bc,sub_0100h		;3c6f	01 00 01 	. . . 
	nop			;3c72	00 	. 
	rst 38h			;3c73	ff 	. 
	ret p			;3c74	f0 	. 
	ld sp,hl			;3c75	f9 	. 
	ld a,a			;3c76	7f 	 
	ccf			;3c77	3f 	? 
	nop			;3c78	00 	. 
	ld bc,l0000h		;3c79	01 00 00 	. . . 
	dec b			;3c7c	05 	. 
	rst 30h			;3c7d	f7 	. 
	ex (sp),hl			;3c7e	e3 	. 
	pop bc			;3c7f	c1 	. 
	nop			;3c80	00 	. 
	ld bc,0ff00h		;3c81	01 00 ff 	. . . 
	rst 18h			;3c84	df 	. 
	nop			;3c85	00 	. 
	inc b			;3c86	04 	. 
	adc a,a			;3c87	8f 	. 
	rst 38h			;3c88	ff 	. 
	nop			;3c89	00 	. 
	rst 38h			;3c8a	ff 	. 
	cp a			;3c8b	bf 	. 
	nop			;3c8c	00 	. 
	inc b			;3c8d	04 	. 
	ld e,0ffh		;3c8e	1e ff 	. . 
	nop			;3c90	00 	. 
	nop			;3c91	00 	. 
	inc b			;3c92	04 	. 
	adc a,a			;3c93	8f 	. 
	rst 18h			;3c94	df 	. 
	cp 0fch		;3c95	fe fc 	. . 
	nop			;3c97	00 	. 
	ld bc,l1f00h		;3c98	01 00 1f 	. . . 
	nop			;3c9b	00 	. 
	inc b			;3c9c	04 	. 
	ld e,0ffh		;3c9d	1e ff 	. . 
	ccf			;3c9f	3f 	? 
	nop			;3ca0	00 	. 
	ld bc,0f300h		;3ca1	01 00 f3 	. . . 
	ei			;3ca4	fb 	. 
	ld a,l			;3ca5	7d 	} 
	nop			;3ca6	00 	. 
	inc bc			;3ca7	03 	. 
	dec a			;3ca8	3d 	= 
	rst 38h			;3ca9	ff 	. 
	nop			;3caa	00 	. 
	rst 38h			;3cab	ff 	. 
	rst 38h			;3cac	ff 	. 
	ex (sp),hl			;3cad	e3 	. 
	rst 38h			;3cae	ff 	. 
	ret po			;3caf	e0 	. 
	rst 20h			;3cb0	e7 	. 
	rst 38h			;3cb1	ff 	. 
	nop			;3cb2	00 	. 
	pop af			;3cb3	f1 	. 
	nop			;3cb4	00 	. 
	inc b			;3cb5	04 	. 
	ld bc,l03ffh		;3cb6	01 ff 03 	. . . 
	nop			;3cb9	00 	. 
	ld bc,0e700h		;3cba	01 00 e7 	. . . 
	rst 38h			;3cbd	ff 	. 
	ret po			;3cbe	e0 	. 
	rst 38h			;3cbf	ff 	. 
	ex (sp),hl			;3cc0	e3 	. 
	rst 38h			;3cc1	ff 	. 
	rst 38h			;3cc2	ff 	. 
	nop			;3cc3	00 	. 
	ld bc,0ff00h		;3cc4	01 00 ff 	. . . 
	rst 18h			;3cc7	df 	. 
	rst 8			;3cc8	cf 	. 
	rst 38h			;3cc9	ff 	. 
	rrca			;3cca	0f 	. 
	adc a,a			;3ccb	8f 	. 
	rst 38h			;3ccc	ff 	. 
	nop			;3ccd	00 	. 
	ret m			;3cce	f8 	. 
	call m,0003eh		;3ccf	fc 3e 00 	. > . 
	inc bc			;3cd2	03 	. 
	ld e,0ffh		;3cd3	1e ff 	. . 
	nop			;3cd5	00 	. 
	adc a,a			;3cd6	8f 	. 
	rst 38h			;3cd7	ff 	. 
	rrca			;3cd8	0f 	. 
	rst 38h			;3cd9	ff 	. 
	rst 8			;3cda	cf 	. 
	rst 38h			;3cdb	ff 	. 
	rst 18h			;3cdc	df 	. 
	nop			;3cdd	00 	. 
	ld bc,0f800h		;3cde	01 00 f8 	. . . 
	rst 38h			;3ce1	ff 	. 
	inc a			;3ce2	3c 	< 
	rst 38h			;3ce3	ff 	. 
	ld e,0ffh		;3ce4	1e ff 	. . 
	adc a,a			;3ce6	8f 	. 
	nop			;3ce7	00 	. 
	ld bc,l0000h		;3ce8	01 00 00 	. . . 
	nop			;3ceb	00 	. 
	rst 38h			;3cec	ff 	. 
	nop			;3ced	00 	. 
	ld b,001h		;3cee	06 01 	. . 
	nop			;3cf0	00 	. 
	inc bc			;3cf1	03 	. 
	nop			;3cf2	00 	. 
	add a,b			;3cf3	80 	. 
	rst 38h			;3cf4	ff 	. 
	nop			;3cf5	00 	. 
	ex af,af'			;3cf6	08 	. 
	nop			;3cf7	00 	. 
	ld bc,0f000h		;3cf8	01 00 f0 	. . . 
	nop			;3cfb	00 	. 
	inc bc			;3cfc	03 	. 
	nop			;3cfd	00 	. 
	ld a,(hl)			;3cfe	7e 	~ 
	ld bc,l0300h		;3cff	01 00 03 	. . . 
l3d02h:
	nop			;3d02	00 	. 
	add a,b			;3d03	80 	. 
	ld b,b			;3d04	40 	@ 
	ccf			;3d05	3f 	? 
	nop			;3d06	00 	. 
	dec b			;3d07	05 	. 
	nop			;3d08	00 	. 
	inc d			;3d09	14 	. 
	ld (0ffc1h),hl		;3d0a	22 c1 ff 	" . . 
	nop			;3d0d	00 	. 
	ld d,b			;3d0e	50 	P 
	nop			;3d0f	00 	. 
	rlca			;3d10	07 	. 
	nop			;3d11	00 	. 
	and c			;3d12	a1 	. 
	nop			;3d13	00 	. 
	ld a,(bc)			;3d14	0a 	. 
	nop			;3d15	00 	. 
	ld bc,0fc02h		;3d16	01 02 fc 	. . . 
	nop			;3d19	00 	. 
	ld bc,sub_0100h		;3d1a	01 00 01 	. . . 
	nop			;3d1d	00 	. 
	dec b			;3d1e	05 	. 
	nop			;3d1f	00 	. 
	ccf			;3d20	3f 	? 
	rst 38h			;3d21	ff 	. 
	nop			;3d22	00 	. 
	add a,d			;3d23	82 	. 
	ld b,b			;3d24	40 	@ 
	nop			;3d25	00 	. 
	inc bc			;3d26	03 	. 
	nop			;3d27	00 	. 
	inc b			;3d28	04 	. 
	rst 38h			;3d29	ff 	. 
	nop			;3d2a	00 	. 
	inc e			;3d2b	1c 	. 
	inc bc			;3d2c	03 	. 
	nop			;3d2d	00 	. 
	inc b			;3d2e	04 	. 
	nop			;3d2f	00 	. 
	ex af,af'			;3d30	08 	. 
	ret p			;3d31	f0 	. 
	nop			;3d32	00 	. 
	dec b			;3d33	05 	. 
	nop			;3d34	00 	. 
	inc bc			;3d35	03 	. 
	jr l3d3fh		;3d36	18 07 	. . 
	nop			;3d38	00 	. 
	dec b			;3d39	05 	. 
	nop			;3d3a	00 	. 
	nop			;3d3b	00 	. 
	ld bc,0ffffh		;3d3c	01 ff ff 	. . . 
l3d3fh:
	nop			;3d3f	00 	. 
	djnz l3d02h		;3d40	10 c0 	. . 
	nop			;3d42	00 	. 
	ld b,000h		;3d43	06 00 	. . 
	ret nz			;3d45	c0 	. 
	jr nz,l3d48h		;3d46	20 00 	  . 
l3d48h:
	inc bc			;3d48	03 	. 
	nop			;3d49	00 	. 
	ld (bc),a			;3d4a	02 	. 
	nop			;3d4b	00 	. 
	ld bc,08000h		;3d4c	01 00 80 	. . . 
	nop			;3d4f	00 	. 
	dec b			;3d50	05 	. 
	nop			;3d51	00 	. 
	rst 18h			;3d52	df 	. 
	inc b			;3d53	04 	. 
	ret nz			;3d54	c0 	. 
	nop			;3d55	00 	. 
	ld bc,sub_1fffh+1		;3d56	01 00 20 	. .   
	nop			;3d59	00 	. 
	ld bc,l1000h		;3d5a	01 00 10 	. . . 
	nop			;3d5d	00 	. 
	ld bc,08f00h		;3d5e	01 00 8f 	. . . 
	nop			;3d61	00 	. 
	nop			;3d62	00 	. 
	nop			;3d63	00 	. 
	add a,b			;3d64	80 	. 
	nop			;3d65	00 	. 
	nop			;3d66	00 	. 
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
l3e01h:
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
sub_3e0ch:
	rst 38h			;3e0c	ff 	. 
	defb 0fdh,07dh	;ld a,iyl		;3e0d	fd 7d 	. } 
	or c			;3e0f	b1 	. 
	in a,(0ffh)		;3e10	db ff 	. . 
	rst 38h			;3e12	ff 	. 
	add a,a			;3e13	87 	. 
	jp l00f3h		;3e14	c3 f3 00 	. . . 
	ld bc,0c8ffh		;3e17	01 ff c8 	. . . 
	rrca			;3e1a	0f 	. 
	di			;3e1b	f3 	. 
	res 4,e		;3e1c	cb a3 	. . 
	add a,e			;3e1e	83 	. 
	ret c			;3e1f	d8 	. 
	and 0f0h		;3e20	e6 f0 	. . 
l3e22h:
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
sub_3e3ch:
	inc b			;3e3c	04 	. 
	rst 38h			;3e3d	ff 	. 
	rst 28h			;3e3e	ef 	. 
	ld d,0f0h		;3e3f	16 f0 	. . 
	nop			;3e41	00 	. 
	ld bc,l00ffh		;3e42	01 ff 00 	. . . 
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
	ld bc,sub_0100h		;3eb0	01 00 01 	. . . 
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
	ld bc,sub_0100h		;3ecc	01 00 01 	. . . 
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
	ld bc,l00ffh		;3edd	01 ff 00 	. . . 
	ld bc,07cc7h		;3ee0	01 c7 7c 	. . | 
	nop			;3ee3	00 	. 
	nop			;3ee4	00 	. 
	call m,l0300h		;3ee5	fc 00 03 	. . . 
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
sub_3efeh:
	ld e,(hl)			;3efe	5e 	^ 
	nop			;3eff	00 	. 
	ld bc,0fbffh		;3f00	01 ff fb 	. . . 
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
l3f3fh:
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
	ld bc,sub_0100h		;3f52	01 00 01 	. . . 
	rst 38h			;3f55	ff 	. 
	rra			;3f56	1f 	. 
	rlca			;3f57	07 	. 
	add a,d			;3f58	82 	. 
	ld (bc),a			;3f59	02 	. 
	add a,b			;3f5a	80 	. 
	rst 38h			;3f5b	ff 	. 
	ld bc,sub_0100h		;3f5c	01 00 01 	. . . 
	rst 38h			;3f5f	ff 	. 
	rst 0			;3f60	c7 	. 
	ld bc,sub_0100h		;3f61	01 00 01 	. . . 
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
	rst 38h			;3fff	ff 	. 
