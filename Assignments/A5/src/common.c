#include "common.h"

#include <stdlib.h>

// TODO: define global variables needed for your snake! (part 1A)
int g_snake_length; // Global variable to hold the length of the snake.
int g_snake_pos_x; // Global variable to hold the x position of the snake.
int g_snake_pos_y; // Global variable to hold the y position of the snake.
int g_food_position[2]; // Global variable to hold the position of food on the game board.
Direction g_snake_move_dir; // Global variable to hold the current movement direction of the snake.

// Definition of global variables for game status.
int g_game_over;
int g_score;
int g_name_len;
char *g_name;

/** Sets the seed for random number generation.
 * Arguments:
 *  - `seed`: the seed.
 */
void set_seed(unsigned seed) {
    /* DO NOT MODIFY THIS FUNCTION */
    srand(seed);
    /* DO NOT MODIFY THIS FUNCTION */
}

/** Returns a random index in [0, size)
 * Arguments:
 *  - `size`: the upper bound for the generated value (exclusive).
 */
unsigned generate_index(unsigned size) {
    /* DO NOT MODIFY THIS FUNCTION */
    return rand() % size;
    /* DO NOT MODIFY THIS FUNCTION */
}
