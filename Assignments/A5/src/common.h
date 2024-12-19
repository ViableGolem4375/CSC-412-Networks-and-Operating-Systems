#ifndef COMMON_H
#define COMMON_H

#include <stddef.h>

// Let's see if we can keep this as simple as possible, lest we intimidate
// students looking through the provided code.

// Bitflags enable us to store cell data in integers!
#define FLAG_PLAIN_CELL 0b0001  // equals 1
#define FLAG_SNAKE 0b0010       // equals 2
#define FLAG_WALL 0b0100        // equals 4
#define FLAG_FOOD 0b1000        // equals 8

/**
 * Enumerated types, also known as "enums", are a way to create a set of named
 * constants! This enum represents the different possible inputs in our snake
 * game. The type corresponding to this enum is `enum input_key` and variables
 * of this type can take on the following values:
 * INPUT_UP, INPUT_DOWN, INPUT_LEFT, INPUT_RIGHT, and INPUT_NONE.
 */
enum input_key { INPUT_UP, INPUT_DOWN, INPUT_LEFT, INPUT_RIGHT, INPUT_NONE };

// TODO: declare global variables needed for your snake (as `extern`)! (part 1A)

// Enumeration to define the possible movement directions of the snake.
typedef enum {
    UP,
    DOWN,
    LEFT,
    RIGHT
} Direction;

extern int g_snake_length; // Global variable to hold the length of the snake.
extern int g_snake_pos_x; // Global variable to hold the x position of the snake.
extern int g_snake_pos_y; // Global variable to hold the y position of the snake.
extern Direction snake_move_dir; // Global variable to hold the current movement direction of the snake.

/** Global variables for game status.
 *
 * `g_` prefix used by convention to emphasize that these are global.
 *
 * You may need to add variables here in part 2 of the project!
 *
 * Variables:
 *  - g_game_over: 1 if game is over, 0 otherwise
 *  - g_score: current game score. Starts at 0. 1 point for every food eaten.
 */
extern int g_game_over;  // 1 if game is over, 0 otherwise
extern int g_score;      // game score: 1 point for every food eaten
extern int g_name_len; // Global variable to hold the length of the name given by the user.
extern char *g_name; // Global variable to hold the name given by the user.

/** Linked list node to store the position of each part of the snake.
 * Fields:
 *  - x: x-coordinate of the snake part
 *  - y: y-coordinate of the snake part
 *  - next: pointer to the next node in the list
 */
typedef struct snake_node {
    int x;
    int y;
    struct snake_node* next;
} snake_node_t;

/** Snake struct. This struct is not needed until part 2!
 * Fields:
 *  - head: The head of the snake.
 *  - length: The length of the snake.
 */
typedef struct snake {
    // TODO: Define your snake struct! (in 2A)
    // Store any necessary information about your snake here.
    snake_node_t* head;
    int length;
} snake_t;

void set_seed(unsigned seed);
unsigned generate_index(unsigned size);

#endif