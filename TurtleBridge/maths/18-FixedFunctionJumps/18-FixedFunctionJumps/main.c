#include <stdio.h>
#define UFIX(x)                ((unsigned char)((x)>>8))

void main()
{
	const signed int jump_array_01[] =
	{
		-743,-693,-643,-592,-542,-492,-442,-392,-342,-291,-241,-191,-141,-91,-40,10,60,110,160,210,261,311,361,411,461,511,562,612,662,712,762,813,863,913,963,1013,1063,1114,1164,1214,1264,1314,1364,1415,1465,1515,1565,1615,1666,1716,1766,1816,1866
	};

	unsigned char posnY = 128;
	int leapY = posnY << 8;
	signed int deltaY = 0;
	unsigned char index = 0;
	unsigned char maxim = 54;

	printf( "jump_array_01 '%d'\n", posnY );
	while( 1 )
	{
		if( index >= maxim )
		{
			break;
		}
		index++;
		deltaY = jump_array_01[ index ];
		leapY += deltaY;
		posnY = UFIX( leapY );
		printf( "jump_array_01 '%d'\n", posnY );
		if( posnY >= 128 )
		{
			break;
		}
	}

	printf( "jump_array_01 '%d'\n", posnY );
	printf( "jump_array_01 '%d'\n", index );
	return;
}