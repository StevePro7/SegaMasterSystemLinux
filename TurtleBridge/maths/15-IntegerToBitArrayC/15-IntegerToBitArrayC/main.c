#include <stdio.h>

// https://stackoverflow.com/questions/8011700/how-do-i-extract-specific-n-bits-of-a-32-bit-unsigned-integer-in-c
void main()
{
	unsigned char value;
	unsigned char mask;
	unsigned char X;
	//unsigned char startBit;
	unsigned char lastXbits;

	value = 255;
	X = 3;
	mask = ( 1 << X ) - 1;
	lastXbits = value & mask;

	printf( "X	%d\n", X );
	printf( "val	%d\n", value );
	printf( "bits	%d\n", lastXbits );
	printf( "\n" );
	return;
}