#include <stdio.h>

// https://stackoverflow.com/questions/8011700/how-do-i-extract-specific-n-bits-of-a-32-bit-unsigned-integer-in-c
void main()
{
	unsigned char value;
	unsigned char mask;
	unsigned char X;
	unsigned char startBit;
	//unsigned char lastXbits;
	unsigned char isolatedXbits;

	value = 255;
	X = 3;
	startBit = 2;
	mask = ( ( 1 << X ) - 1 ) << startBit;
	isolatedXbits = value & mask;

	printf( "val	%d\n", value );
	printf( "start	%d\n", startBit );
	printf( "X	%d\n", X );
	
	printf( "res	%d\n", isolatedXbits );
	printf( "\n" );
	return;
}