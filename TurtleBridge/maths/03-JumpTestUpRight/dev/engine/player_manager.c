#include "player_manager.h"

// Global variable.
struct_player_object global_player_object;

#define MAX_VELOCITY_X	5
#define MAX_VELOCITY_Y	17
#define MAX_GRAVITY_ZZ	8

static unsigned char velocityXgnd[ MAX_VELOCITY_X ] = { 1, 1, 1, 2, 2 };
static unsigned char velocityXair[ MAX_VELOCITY_X ] = { 1, 2, 2, 2, 3 };

static unsigned int velocityY[ MAX_VELOCITY_Y ] = { 2958, 2347, 1960, 1673, 1441, 1247, 1079, 930, 796, 675, 564, 461, 365, 276, 191, 112, 36 };
static unsigned int gravityZZ[ MAX_GRAVITY_ZZ ] = { 348, 522, 696, 870, 1044, 1219, 1393, 1408 };

void engine_player_manager_init()
{

}