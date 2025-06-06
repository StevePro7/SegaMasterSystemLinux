#include "player.h"
#include "playercharacter.h"
#include "montylib.h"
#include "../banks/bank2.h"
#include "../banks/bank3.h"
#include "../banks/bank4.h"
#include "../engine/soundengine.h"
#include "../../lib/SMSlib.h"
#include <stdbool.h>

player player1;
player player2;

void add_player(unsigned char player_number) {
	player* playerpointer; 
	if(player_number == 1) {
		initEngine();
		playerpointer = &player1;
	} else {
		playerpointer = &player2;
	}
	if(playerpointer->entityreference == 0) {
		playerpointer->vx = 0;
		playerpointer->vy = 0;
		playerpointer->xdirection = 1;
		playerpointer->ydirection = 1;
		playerpointer->entityreference = addEntity(&player_character, 32, 100);
		playerpointer->status = PLAYER_STATUS_IDDLE;
		playerpointer->status2 = PLAYER_STATUS2_IDDLE;
	}
}

void manage_input(unsigned int keys) {
	switch(player1.status) {
		case PLAYER_STATUS_IDDLE:
			manage_player_iddle_status(1, keys);
			break;
		case PLAYER_STATUS_WALKING:
			manage_player_walking_status(1, keys);
			break;
		case PLAYER_STATUS_JUMPING:
			manage_player_jumping_status(1, keys);
			break;
		case PLAYER_STATUS_CROUCHED:
			manage_player_crouched_status(1, keys);
			break;
		default:
			break;
	}
	if(player2.entityreference != 0) {
		switch(player2.status) {
			case PLAYER_STATUS_IDDLE:
				manage_player_iddle_status(2, keys);
				break;
			case PLAYER_STATUS_WALKING:
				manage_player_walking_status(2, keys);
				break;
			case PLAYER_STATUS_JUMPING:
				manage_player_jumping_status(2, keys);
				break;
			case PLAYER_STATUS_CROUCHED:
				manage_player_crouched_status(2, keys);
				break;
			default:
				break;
		}	
	}
}

void manage_player_iddle_status(unsigned char player_number, unsigned int keys) {
	if(player_number == 1) {
		if(player1.status2 == PLAYER_STATUS2_PUNCHING) {
			if(isAnimationEnded(player1.entityreference->entityIndex)) {
				player1.status2 = PLAYER_STATUS2_IDDLE;
				play_punch_sound2();
				setAnimation(player1.entityreference->entityIndex,0);
			} else if(isFrameEnded(player1.entityreference->entityIndex) && !(keys & PORT_A_KEY_1)) {
				player1.status2 = PLAYER_STATUS2_IDDLE;
				play_punch_sound2();
				setAnimation(player1.entityreference->entityIndex,0);
			}
		} else {
			if(keys & PORT_A_KEY_RIGHT) {
				player1.status = PLAYER_STATUS_WALKING;
				player1.vx = CHAR2UFIX(1);
				player1.xdirection = 1;
				player1.entityreference->direction = RIGHT_DIRECTION;
			} else if(keys & PORT_A_KEY_LEFT) {
				player1.status = PLAYER_STATUS_WALKING;
				player1.vx = CHAR2UFIX(1);
				player1.xdirection = -1;
				player1.entityreference->direction = LEFT_DIRECTION;
			} else if(keys & PORT_A_KEY_UP) {
				player1.status = PLAYER_STATUS_WALKING;
				player1.vy = CHAR2UFIX(1);
				player1.ydirection = -1;
			} else if(keys & PORT_A_KEY_DOWN) {
				if(keys & PORT_A_KEY_1) {
					player1.status = PLAYER_STATUS_CROUCHED;
					setAnimation(player1.entityreference->entityIndex,6);
				} else {
					player1.status = PLAYER_STATUS_WALKING;
					player1.vy = CHAR2UFIX(1);
					player1.ydirection = 1;	
				}
			} else if((keys & PORT_A_KEY_1) && player1.status2 == PLAYER_STATUS2_IDDLE) {
				player1.status2 = PLAYER_STATUS2_PUNCHING;
				setAnimation(player1.entityreference->entityIndex,3);
				play_punch_sound1();

			} else if(keys & PORT_A_KEY_2) {
				player1.status = PLAYER_STATUS_JUMPING;
				player1.vy = CHAR2UFIX(3);
				player1.ydirection = -1;
			}	
		}
		
	} else {
		if(player2.status2 == PLAYER_STATUS2_PUNCHING) {
			if(isAnimationEnded(player2.entityreference->entityIndex)) {
				player2.status2 = PLAYER_STATUS2_IDDLE;
				setAnimation(player2.entityreference->entityIndex,0);
				play_punch_sound2();
			} else if(isFrameEnded(player2.entityreference->entityIndex) && !(keys & PORT_B_KEY_1)) {
				player2.status2 = PLAYER_STATUS2_IDDLE;
				play_punch_sound2();
				setAnimation(player2.entityreference->entityIndex,0);
			}
		} else {
			if(keys & PORT_B_KEY_RIGHT) {
				player2.status = PLAYER_STATUS_WALKING;
				player2.vx = CHAR2UFIX(1);
				player2.xdirection = 1;
				player2.entityreference->direction = RIGHT_DIRECTION;
			} else if(keys & PORT_B_KEY_LEFT) {
				player2.status = PLAYER_STATUS_WALKING;
				player2.vx = CHAR2UFIX(1);
				player2.xdirection = -1;
				player2.entityreference->direction = LEFT_DIRECTION;
			} else if(keys & PORT_B_KEY_UP) {
				player2.status = PLAYER_STATUS_WALKING;
				player2.vy = CHAR2UFIX(1);
				player2.ydirection = -1;
			} else if(keys & PORT_B_KEY_DOWN) {
				if(keys & PORT_B_KEY_1) {
					player2.status = PLAYER_STATUS_CROUCHED;
					setAnimation(player2.entityreference->entityIndex,6);
				} else {
					player2.status = PLAYER_STATUS_WALKING;
					player2.vy = CHAR2UFIX(1);
					player2.ydirection = 1;	
				}
			}else if((keys & PORT_B_KEY_1) && player2.status2 == PLAYER_STATUS2_IDDLE) {
				player2.status2 = PLAYER_STATUS2_PUNCHING;
				setAnimation(player2.entityreference->entityIndex,3);
				play_punch_sound1();
			} else if(keys & PORT_B_KEY_2) {
				player2.status = PLAYER_STATUS_JUMPING;
				player2.vy = CHAR2UFIX(3);
				player2.ydirection = -1;
			}
		}
	}
}

void manage_player_walking_status(unsigned char player_number, unsigned int keys) {
	if(player_number == 1) {
		if(player1.status2 == PLAYER_STATUS2_PUNCHING) {
			if(keys & PORT_A_KEY_DOWN) {
				player1.status = PLAYER_STATUS_CROUCHED;
				setAnimation(player1.entityreference->entityIndex,7);
				player1.vy = 0;
			} else {
				if(isAnimationEnded(player1.entityreference->entityIndex)) {
					player1.status2 = PLAYER_STATUS2_IDDLE;
					player1.status = PLAYER_STATUS_IDDLE;
					player1.vx = 0;
					setAnimation(player1.entityreference->entityIndex,0);
					play_punch_sound2();
				} else if(isFrameEnded(player1.entityreference->entityIndex) && !(keys & PORT_A_KEY_1)) {
					player1.status2 = PLAYER_STATUS2_IDDLE;
					player1.status = PLAYER_STATUS_IDDLE;
					player1.vx = 0;
					play_punch_sound2();
					setAnimation(player1.entityreference->entityIndex,0);
				}
			}
		} else {
			if(keys & PORT_A_KEY_RIGHT) {
				if(isAnimationEnded(player1.entityreference->entityIndex)) {
					setAnimation(player1.entityreference->entityIndex,2);	
				}
				if(player1.xdirection == -1) {
					forceReload(player1.entityreference->entityIndex);
				}
				player1.xdirection = 1;
				player1.entityreference->direction = RIGHT_DIRECTION;
			} else if(keys & PORT_A_KEY_LEFT) {
				if(isAnimationEnded(player1.entityreference->entityIndex)) {
					setAnimation(player1.entityreference->entityIndex,2);
				}
				if(player1.xdirection == 1) {
					forceReload(player1.entityreference->entityIndex);
				}
				player1.xdirection = -1;
				player1.entityreference->direction = LEFT_DIRECTION;
			} else {
				if(isFrameEnded(player1.entityreference->entityIndex)) {
					player1.vx = 0;
				}
			}
			if(keys & PORT_A_KEY_UP) {
				if(isAnimationEnded(player1.entityreference->entityIndex)) {
					setAnimation(player1.entityreference->entityIndex,2);	
				}
				player1.vy = CHAR2UFIX(1);
				player1.ydirection = -1;
			} else if(keys & PORT_A_KEY_DOWN) {
				if(isAnimationEnded(player1.entityreference->entityIndex)) {
					setAnimation(player1.entityreference->entityIndex,2);	
				}
				player1.vy = CHAR2UFIX(1);
				player1.ydirection = 1;
			} else {
				if(isFrameEnded(player1.entityreference->entityIndex)) {
					player1.vy = 0;
				}
			}

			if(player1.vx == 0 && player1.vy == 0) {
				setAnimation(player1.entityreference->entityIndex,0);
				player1.status = PLAYER_STATUS_IDDLE;
			}
			if(keys & PORT_A_KEY_2) {
				player1.status = PLAYER_STATUS_JUMPING;
				player1.vy = CHAR2UFIX(3);
				player1.ydirection = -1;
			}
			if((keys & PORT_A_KEY_1) && player1.status2 == PLAYER_STATUS2_IDDLE) {
				player1.status2 = PLAYER_STATUS2_PUNCHING;
				setAnimation(player1.entityreference->entityIndex,3);
				play_punch_sound1();
			}
		}
	} else {
		if(player2.status2 == PLAYER_STATUS2_PUNCHING) {
			if(keys & PORT_B_KEY_DOWN) {
				player2.status = PLAYER_STATUS_CROUCHED;
				setAnimation(player2.entityreference->entityIndex,7);
				player2.vy = 0;
			} else {
				if(isAnimationEnded(player2.entityreference->entityIndex)) {
					player2.status2 = PLAYER_STATUS2_IDDLE;
					player2.status = PLAYER_STATUS_IDDLE;
					player2.vx = 0;
					setAnimation(player2.entityreference->entityIndex,0);
					play_punch_sound2();
				} else if(isFrameEnded(player2.entityreference->entityIndex) && !(keys & PORT_B_KEY_1)) {
					player2.status2 = PLAYER_STATUS2_IDDLE;
					player2.status = PLAYER_STATUS_IDDLE;
					player2.vx = 0;
					play_punch_sound2();
					setAnimation(player2.entityreference->entityIndex,0);
				}
			}
		} else {
			if(keys & PORT_B_KEY_RIGHT) {
				if(isAnimationEnded(player2.entityreference->entityIndex)) {
					setAnimation(player2.entityreference->entityIndex,2);	
				}
				if(player2.xdirection == -1) {
					forceReload(player2.entityreference->entityIndex);
				}
				player2.xdirection = 1;
				player2.entityreference->direction = RIGHT_DIRECTION;
			} else if(keys & PORT_B_KEY_LEFT) {
				if(isAnimationEnded(player2.entityreference->entityIndex)) {
					setAnimation(player2.entityreference->entityIndex,2);
				}
				if(player2.xdirection == 1) {
					forceReload(player2.entityreference->entityIndex);
				}
				player2.xdirection = -1;
				player2.entityreference->direction = LEFT_DIRECTION;
			} else {
				if(isFrameEnded(player2.entityreference->entityIndex)) {
					player2.vx = 0;
				}
			}
			if(keys & PORT_B_KEY_UP) {
				if(isAnimationEnded(player2.entityreference->entityIndex)) {
					setAnimation(player2.entityreference->entityIndex,2);	
				}
				player2.vy = CHAR2UFIX(1);
				player2.ydirection = -1;
			} else if(keys & PORT_B_KEY_DOWN) {
				if(isAnimationEnded(player2.entityreference->entityIndex)) {
					setAnimation(player2.entityreference->entityIndex,2);	
				}
				player2.vy = CHAR2UFIX(1);
				player2.ydirection = 1;
			} else {
				if(isFrameEnded(player2.entityreference->entityIndex)) {
					player2.vy = 0;
				}
			}
			if(player2.vx == 0 && player2.vy == 0) {
				setAnimation(player2.entityreference->entityIndex,0);
				player2.status = PLAYER_STATUS_IDDLE;
			}
			if(keys & PORT_B_KEY_2) {
				player2.status = PLAYER_STATUS_JUMPING;
				player2.vy = CHAR2UFIX(3);
				player2.ydirection = -1;
			}
			if((keys & PORT_B_KEY_1) && player2.status2 == PLAYER_STATUS2_IDDLE) {
				player2.status2 = PLAYER_STATUS2_PUNCHING;
				setAnimation(player2.entityreference->entityIndex,3);
				play_punch_sound1();
			}
		}
	}
}

void manage_player_jumping_status(unsigned char player_number, unsigned int keys) {
	if(player_number == 1) {
		if(keys & PORT_A_KEY_RIGHT) {
			if(player1.xdirection == -1) {
				forceReload(player1.entityreference->entityIndex);
			}
			player1.xdirection = 1;
			player1.entityreference->direction = RIGHT_DIRECTION;
			player1.vx = CHAR2UFIX(1);
		} else if(keys & PORT_A_KEY_LEFT) {
			if(player1.xdirection == 1) {
				forceReload(player1.entityreference->entityIndex);
			}
			player1.xdirection = -1;
			player1.entityreference->direction = LEFT_DIRECTION;
			player1.vx = CHAR2UFIX(1);
		} else {
			if(isAnimationEnded(player1.entityreference->entityIndex)) {
				player1.vx = 0;
			}
		}
		if(isAnimationEnded(player1.entityreference->entityIndex)) {
			setAnimation(player1.entityreference->entityIndex,4);	
		}
		if(player1.ydirection == -1) {
			player1.vy = player1.vy - 32;	
		} else {
			player1.vy = player1.vy + 32;
		}
		
		if(player1.vy == 0) {
			player1.ydirection = 1;	
		}
		if(player1.vy >= CHAR2UFIX(3)) {
			setAnimation(player1.entityreference->entityIndex,0);
			player1.status = PLAYER_STATUS_IDDLE;
			player1.status2 = PLAYER_STATUS2_IDDLE;
			player1.vx = 0;
			player1.vy = 0;
		}
		if((keys & PORT_A_KEY_1) && player1.status2 == PLAYER_STATUS2_IDDLE) {
			player1.status2 = PLAYER_STATUS2_PUNCHING;
			setAnimation(player1.entityreference->entityIndex,5);
			play_punch_sound1();
		}
	} else {
		if(keys & PORT_B_KEY_RIGHT) {
			if(player2.xdirection == -1) {
				forceReload(player2.entityreference->entityIndex);
			}
			player2.xdirection = 1;
			player2.entityreference->direction = RIGHT_DIRECTION;
			player2.vx = CHAR2UFIX(1);
		} else if(keys & PORT_B_KEY_LEFT) {
			if(player2.xdirection == 1) {
				forceReload(player2.entityreference->entityIndex);
			}
			player2.xdirection = -1;
			player2.entityreference->direction = LEFT_DIRECTION;
			player2.vx = CHAR2UFIX(1);
		} else {
			if(isAnimationEnded(player2.entityreference->entityIndex)) {
				player2.vx = 0;
			}
		}
		if(isAnimationEnded(player2.entityreference->entityIndex)) {
			setAnimation(player2.entityreference->entityIndex,4);	
		}
		if(player2.ydirection == -1) {
			player2.vy = player2.vy - 32;	
		} else {
			player2.vy = player2.vy + 32;
		}
		
		if(player2.vy == 0) {
			player2.ydirection = 1;	
		}
		if(player2.vy >= CHAR2UFIX(3)) {
			setAnimation(player2.entityreference->entityIndex,0);
			player2.status = PLAYER_STATUS_IDDLE;
			player2.status2 = PLAYER_STATUS2_IDDLE;
			player2.vx = 0;
			player2.vy = 0;
		}
		if((keys & PORT_B_KEY_1) && player2.status2 == PLAYER_STATUS2_IDDLE) {
			player2.status2 = PLAYER_STATUS2_PUNCHING;
			setAnimation(player2.entityreference->entityIndex,5);
			play_punch_sound1();
		}
	}
}

void manage_player_crouched_status(unsigned char player_number, unsigned int keys) {
	if(player_number == 1) {
		if(player1.status2 == PLAYER_STATUS2_PUNCHING) {
			if(isAnimationEnded(player1.entityreference->entityIndex)) {
				player1.status2 = PLAYER_STATUS2_IDDLE;
				setAnimation(player1.entityreference->entityIndex,6);
				player1.vx = 0;
				player1.vy = 0;
			}
		} else {
			if(!(keys & PORT_A_KEY_DOWN)) {
				if(isAnimationEnded(player1.entityreference->entityIndex)) {
					setAnimation(player1.entityreference->entityIndex,0);
					player1.status = PLAYER_STATUS_IDDLE;
				}
			} else {
				if(keys & PORT_A_KEY_1) {
					player1.status2 = PLAYER_STATUS2_PUNCHING;
					setAnimation(player1.entityreference->entityIndex,7);
					play_punch_sound1();
				}
			}	
		}
	} else {
		if(player2.status2 == PLAYER_STATUS2_PUNCHING) {
			if(isAnimationEnded(player2.entityreference->entityIndex)) {
				player2.status2 = PLAYER_STATUS2_IDDLE;
				setAnimation(player2.entityreference->entityIndex,6);
				player2.vx = 0;
				player2.vy = 0;
			}
		} else {
			if(!(keys & PORT_B_KEY_DOWN)) {
				if(isAnimationEnded(player2.entityreference->entityIndex)) {
					setAnimation(player2.entityreference->entityIndex,0);
					player2.status = PLAYER_STATUS_IDDLE;
				}
			} else {
				if(keys & PORT_B_KEY_1) {
					player2.status2 = PLAYER_STATUS2_PUNCHING;
					setAnimation(player2.entityreference->entityIndex,7);
					play_punch_sound1();
				}
			}	
		}
	}	
}

void update_player_positions(signed char delta_x, signed char delta_y)
{
	delta_y += 0;
	if(delta_x != 0) {
		move_entity(player1.entityreference->entityIndex, 0, UFIX2CHAR(player1.vy)*player1.ydirection);	
	} else {
		move_entity(player1.entityreference->entityIndex, UFIX2CHAR(player1.vx)*player1.xdirection, UFIX2CHAR(player1.vy)*player1.ydirection);	
	}
	
	if(player1.entityreference->py > 160) {
		player1.entityreference->py = 160;
	} else if(player1.entityreference->py < 68 && player1.status != PLAYER_STATUS_JUMPING) {
		player1.entityreference->py = 68;
	}
	if(player1.entityreference->px < 12) {
		player1.entityreference->px = 12;
	} else if(player1.entityreference->px > 240) {
		player1.entityreference->px = 240;
	}

	move_entity(player2.entityreference->entityIndex, UFIX2CHAR(player2.vx)*player2.xdirection + (delta_x * -1), UFIX2CHAR(player2.vy)*player2.ydirection);
		
	if(player2.entityreference->py > 160) {
		player2.entityreference->py = 160;
	} else if(player2.entityreference->py < 68 && player2.status != PLAYER_STATUS_JUMPING) {
		player2.entityreference->py = 68;
	}
	if(player2.entityreference->px < 12) {
		player2.entityreference->px = 12;
	} else if(player2.entityreference->px > 240) {
		player2.entityreference->px = 240;
	}
}