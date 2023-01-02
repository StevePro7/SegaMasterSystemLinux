#ifndef _INPUT_MANAGER_H_
#define _INPUT_MANAGER_H_

// Public method.
void engine_input_manager_update();
//TODO - replace all the input to use this API instead!
//unsigned char engine_input_manager_hold( unsigned char data );
//unsigned char engine_input_manager_move( unsigned char data );

// Public methods HOLD.
unsigned char engine_input_manager_hold_up();
unsigned char engine_input_manager_hold_down();
unsigned char engine_input_manager_hold_left();
unsigned char engine_input_manager_hold_right();
unsigned char engine_input_manager_hold_fire1();
unsigned char engine_input_manager_hold_fire2();

// Public methods MOVE.
unsigned char engine_input_manager_move_up();
unsigned char engine_input_manager_move_down();
unsigned char engine_input_manager_move_left();
unsigned char engine_input_manager_move_right();
unsigned char engine_input_manager_move_fire1();
unsigned char engine_input_manager_move_fire2();

#endif//_INPUT_MANAGER_H_