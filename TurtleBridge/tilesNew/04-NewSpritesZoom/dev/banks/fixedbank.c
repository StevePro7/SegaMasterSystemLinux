const unsigned char sea_tiles_array[] =
{
	66, 66, 67, 68, 66, 66, 67, 68, 66, 66, 67, 68, 66, 66, 67, 68, 66, 66, 67, 68, 66, 66, 67, 68, 66, 66, 67, 68, 66, 66, 67, 68,
	65, 65, 65, 73, 65, 65, 65, 73, 65, 65, 65, 73, 65, 65, 65, 73, 65, 65, 65, 73, 65, 65, 65, 73, 65, 65, 65, 73, 65, 65, 65, 73,
	65, 69, 70, 65, 65, 69, 70, 65, 65, 69, 70, 65, 65, 69, 70, 65, 65, 69, 70, 65, 65, 69, 70, 65, 65, 69, 70, 65, 65, 69, 70, 65,
};

const unsigned char section01_array[] =
{
	74,74,74,74,74,74,74,74,74,74,74,74,74,74,74,74,
	75,76,77,78,79,80,77,78,79,80,77,78,79,80,77,78,
	81,82,83,84,85,86,87,84,85,86,87,84,85,86,87,84,
	64,64,88,89,90,91,92,89,90,91,92,89,90,91,92,89,
	64,64,81,93,94,95,96,97,98,95,96,97,98,95,96,97,
	64,64,64,64,99,80,77,78,79,80,77,78,79,80,77,78,
	64,64,64,64,100,86,87,84,85,86,87,84,85,86,87,84,
	64,64,64,64,101,91,92,89,90,91,92,89,90,91,92,89,
	64,64,64,64,102,95,103,104,98,95,103,104,98,95,103,104,
	105,105,105,105,106,107,108,109,110,107,108,109,110,107,108,109,
};
const unsigned char section01b_array[] =
{
	74,74,74,74,74,74,74,74,74,74,74,74,74,74,74,74,
	75,76,77,78,79,80,77,78,79,80,77,78,79,80,77,78,
	81,82,83,84,85,86,87,84,85,86,87,84,85,86,87,84,
	64,64,88,89,90,91,92,89,90,91,92,89,90,91,92,89,
	64,64,81,93,94,95,96,97,98,95,96,97,98,95,96,97,
	105,105,105,109,110,107,108,109,110,107,108,109,110,107,108,109,
};
const unsigned char section02_array[] =
{
	111,112,112,113,112,113,112,113,112,113,112,113,112,114,113,115,
	116,117,117,118,117,118,117,118,117,118,117,118,117,118,118,119,
	120,121,122,123,121,124,122,123,121,124,122,123,121,124,123,125,
	126,127,128,129,126,127,128,129,126,127,128,129,126,127,128,129,
};
const unsigned char section02b_array[] =
{
	111,112,112,113,112,113,112,113,112,113,113,115,
	116,117,117,118,117,118,117,118,117,118,118,119,
	120,121,122,123,121,124,122,123,121,124,123,125,
	126,127,128,129,126,127,128,129,126,127,128,129,
};

//const unsigned char section02b_array[] =
//{
//	111,112,112,113,112,115,
//	116,117,117,118,117,119,
//	120,121,122,123,121,125,
//	126,127,128,129,126,129,
//};


const unsigned char section03_array[] =
{
	64,130,131,132,133,134,64,64,
	135,136,137,138,139,140,141,132,
	142,143,144,145,146,147,148,149,
	150,151,152,153,154,155,156,157,
	64,64,158,159,64,64,64,64,
	64,64,158,159,64,64,64,64,
	64,64,158,159,64,64,64,64,
	64,64,158,159,64,64,64,64,
	64,64,160,161,64,64,64,64,
	64,64,162,163,64,64,64,64,
};

const unsigned char cloud01_array[] =
{
	164,165,166,167,
	168,169,169,170,
	171,172,173,64,
};
const unsigned char cloud02_array[] =
{
	174,175,176,177,178,179,
	180,169,169,169,181,182,
	183,184,185,186,187,188,
};

const unsigned char sea_turtleA1_array[] =
{
	189,190,191,64,
	192,193,194,195,
	196,197,198,199,
};
const unsigned char sea_turtleA2_array[] =
{
	189,190,191,64,
	200,193,201,202,
	203,197,198,204,
};
const unsigned char sea_turtleA3_array[] =
{
	205,206,207,68,
	208,193,209,210,
	203,197,198,204,
};

const unsigned char sea_turtleB1_array[] =
{
	211,212,213,64,
	214,215,216,217,
	218,219,220,221,
};
const unsigned char sea_turtleB2_array[] =
{
	211,212,213,64,
	222,215,223,224,
	218,219,220,225,
};
const unsigned char sea_turtleB3_array[] =
{
	226,227,228,68,
	229,215,230,231,
	218,219,220,225,
};

const unsigned char fly_turtle01_array[] =
{
	189,232,191,64,
	192,233,194,195,
	234,235,236,237,
};
const unsigned char fly_turtle02_array[] =
{
	189,238,191,64,
	192,239,194,195,
	234,235,236,237,
};

const unsigned char sign_numb_array[] =
{
	240,241,242,
	243,244,245,
	64,246,64,
};
const unsigned char sign_goal_array[] =
{
	247,248,249,
	250,251,252,
	253,254,255,
};



// NEW
const unsigned char empty_sector_array[] = { 0 };

const unsigned char wave_equator_array[] =
{
	66,66,67,68,
	65,65,65,73,
	65,69,70,65,
	70,65,65,69,
	65,73,65,65,
};

const unsigned char large_ground_array[] =
{
	74,74,74,74,74,74,74,74,74,74,74,74,
	75,76,77,78,79,80,77,78,79,80,77,78,
	81,82,83,84,85,86,87,84,85,86,87,84,
	64,64,88,89,90,91,92,89,90,91,92,89,
	64,64,81,93,94,95,96,97,98,95,96,97,
	64,64,64,64,99,80,77,78,79,80,77,78,
	64,64,64,64,100,86,87,84,85,86,87,84,
	64,64,64,64,101,91,92,89,90,91,92,89,
	64,64,64,64,102,95,103,104,98,95,103,104,
	105,105,105,105,106,107,108,109,110,107,108,109,
};

const unsigned char small_ground_array[] =
{
	74,74,74,74,74,74,74,74,74,74,74,74,
	75,76,77,78,79,80,77,78,79,80,77,78,
	81,82,83,84,85,86,87,84,85,86,87,84,
	64,64,88,89,90,91,92,89,90,91,92,89,
	64,64,81,93,94,95,96,97,98,95,96,97,
	105,105,105,109,110,107,108,109,110,107,108,109,
};
const unsigned char earth_ground_array[] =
{
	111,112,112,113,112,114,113,115,
	116,117,117,118,117,118,118,119,
	120,121,122,123,121,124,123,125,
	126,127,128,129,126,127,128,129,
};

const unsigned char diver_turtle_array[] = 
{
	189,190,191,64,
	192,193,194,195,
	196,197,198,199,

	200,201,202,64,
	203,204,205,206,
	207,208,209,210,

	189,190,191,64,
	211,193,212,213,
	214,197,198,215,

	200,201,202,64,
	216,204,217,218,
	207,208,209,219,
};

const unsigned char hover_turtle_array[] = 
{
	189,190,191,64,
	192,193,194,195,
	220,221,222,223,

	200,201,202,64,
	203,204,205,206,
	224,225,226,227,
};

const unsigned char flyer_turtle_array[] = 
{
	189,228,191,64,
	192,229,194,195,
	220,221,222,223,

	189,230,191,64,
	192,231,194,195,
	220,221,222,223,
};

const unsigned char trees_planeB_array[] =
{
	64,130,131,132,133,134,64,64,
	135,136,137,138,139,140,141,132,
	142,143,144,145,146,147,148,149,
	150,151,152,153,154,155,156,157,
	64,64,158,159,64,64,64,64,
	64,64,158,159,64,64,64,64,
	64,64,158,159,64,64,64,64,
	64,64,158,159,64,64,64,64,
	64,64,160,161,64,64,64,64,
	64,64,162,163,64,64,64,64,
};

const unsigned char sign_sendAll_array[] =
{
	232,233,234,
	235,236,237,
	64,238,64,
};
const unsigned char sign_goalAll_array[] =
{
	239,240,241,
	242,243,244,
	245,246,247,
};

const unsigned char cloud_largeC_array[] =
{
	174,175,176,177,178,179,
	180,169,169,169,181,182,
	183,184,185,186,187,188,
};

const unsigned char cloud_smallC_array[] = 
{
	164,165,166,167,
	168,169,169,170,
	171,172,173,64,
};