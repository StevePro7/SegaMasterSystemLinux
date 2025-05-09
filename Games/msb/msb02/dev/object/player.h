#ifndef MSB_PLAYER_H
#define MSB_PLAYER_H

#define PLAYER_STATUS_IDDLE 0
#define PLAYER_STATUS_WALKING 1
#define PLAYER_STATUS_JUMPING 2
#define PLAYER_STATUS_CROUCHED 3

#define PLAYER_STATUS2_IDDLE 0
#define PLAYER_STATUS2_PUNCHING 1
#define PLAYER_STATUS2_HITTED 2

#include "../engine/spriteengine.h"

typedef struct {
	entity *entityreference;
	unsigned int vx;
	unsigned int vy;
	signed char xdirection;
	signed char ydirection;
	unsigned char status;
	unsigned char status2;
} player;

extern player player1;
extern player player2;

void add_player(unsigned char player_number);
void manage_input(unsigned int keys);
void manage_player_iddle_status(unsigned char player_number, unsigned int keys);
void manage_player_walking_status(unsigned char player_number, unsigned int keys);
void manage_player_jumping_status(unsigned char player_number, unsigned int keys);
void manage_player_crouched_status(unsigned char player_number, unsigned int keys);
void update_player_positions(signed char delta_x, signed char delta_y);
#endif //MSB_PLAYER_H