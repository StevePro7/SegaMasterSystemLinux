#include <stdio.h>
#define UFIX(x)                ((unsigned char)((x)>>8))

void main()
{
	// Line:13
	// MaxJumper:02- Angle:45 Speed:30: HorzDist:92 VertDist:23 MaxFrames:54	boost	 BEST BEST			confirm jump makes 3x gaps	MIDD	4x gaps RGHT	2x gaps LEFT
	const signed int jump_array_01[] =
	{
		-743,-693,-643,-592,-542,-492,-442,-392,-342,-291,-241,-191,-141,-91,-40,10,60,110,160,210,261,311,361,411,461,511,562,612,662,712,762,813,863,913,963,1013,1063,1114,1164,1214,1264,1314,1364,1415,1465,1515,1565,1615,1666,1716,1766,1816,1866
	};
	// Line:40
	// MaxJumper:05- Angle:45 Speed:40: HorzDist:163 VertDist:41 MaxFrames:82	boost	BEST BEST BEST		confirm jump makes 6x gaps	MIDD	8x gaps RGHT	4x gaps LEFT
	const signed int jump_array_02[] =
	{
		-754,-726,-697,-669,-641,-613,-585,-556,-528,-500,-472,-443,-415,-387,-359,-331,-302,-274,-246,-218,-189,-161,-133,-105,-77,-48,-20,8,36,65,93,121,149,178,206,234,262,290,319,347,375,403,432,460,488,516,544,573,601,629,657,686,714,742,770,798,827,855,883,911,940,968,996,1024,1052,1081,1109,1137,1165,1194,1222,1250,1278,1306,1335,1363,1391,1419,1448,1476,1504
	};
	// Line:65
	// MaxJumper:09- Angle:45 Speed:55: HorzDist:309 VertDist:77 MaxFrames:134	boost	BEST BEST BEST		confirm jump makes 9x gaps	MIDD	12x gaps RGHT	6x gaps LEFT
	const signed int jump_array_03[] =
	{
		-761,-746,-731,-716,-701,-686,-671,-656,-641,-626,-611,-596,-581,-566,-552,-537,-522,-507,-492,-477,-462,-447,-432,-417,-402,-387,-372,-357,-343,-328,-313,-298,-283,-268,-253,-238,-223,-208,-193,-178,-163,-148,-134,-119,-104,-89,-74,-59,-44,-29,-14,1,16,31,46,61,75,90,105,120,135,150,165,180,195,210,225,240,255,270,284,299,314,329,344,359,374,389,404,419,434,449,464,479,493,508,523,538,553,568,583,598,613,628,643,658,673,688,702,717,732,747,762,777,792,807,822,837,852,867,882,897,911,926,941,956,971,986,1001,1016,1031,1046,1061,1076,1091,1106,1120,1135,1150,1165,1180,1195,1210
	};
	// Line:81
	// MaxJumper:13- Angle:40 Speed:65: HorzDist:425 VertDist:89 MaxFrames:178	boost	 BEST BEST BEST		confirm jump makes 12x gaps	MIDD	16x gaps RGHT	8x gaps LEFT
	const signed int jump_array_04[] =
	{
		-640,-631,-622,-613,-603,-594,-585,-576,-567,-558,-549,-540,-531,-521,-512,-503,-494,-485,-476,-467,-458,-449,-440,-430,-421,-412,-403,-394,-385,-376,-367,-358,-348,-339,-330,-321,-312,-303,-294,-285,-276,-266,-257,-248,-239,-230,-221,-212,-203,-194,-185,-175,-166,-157,-148,-139,-130,-121,-112,-103,-93,-84,-75,-66,-57,-48,-39,-30,-21,-11,-2,7,16,25,34,43,52,61,70,80,89,98,107,116,125,134,143,152,162,171,180,189,198,207,216,225,234,243,253,262,271,280,289,298,307,316,325,335,344,353,362,371,380,389,398,407,417,426,435,444,453,462,471,480,489,498,508,517,526,535,544,553,562,571,580,590,599,608,617,626,635,644,653,662,672,681,690,699,708,717,726,735,744,753,763,772,781,790,799,808,817,826,835,845,854,863,872,881,890,899,908,917,927,936,945,954,963
	};

	unsigned char posnY = 128;
	int leapY = posnY << 8;
	signed int deltaY = 0;
	unsigned char index = 0;
	unsigned char maxim = 178;

	printf( "jump_array '%d'\n", posnY );
	while( 1 )
	{
		if( index >= maxim )
		{
			break;
		}
		index++;
		deltaY = jump_array_04[ index ];
		leapY += deltaY;
		posnY = UFIX( leapY );
		printf( "jump_array '%d'\n", posnY );
		if( posnY >= 128 )
		{
			break;
		}
	}

	printf( "jump_array '%d'\n", posnY );
	printf( "jump_array '%d'\n", index );
	return;
}