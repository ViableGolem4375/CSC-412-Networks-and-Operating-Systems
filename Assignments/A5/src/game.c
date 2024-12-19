#include "game.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <locale.h>

#include "linked_list.h"
#include "mbstrings.h"

// Global variable to store the last direction.
enum input_key last_direction = INPUT_RIGHT;
// This is a variable used as a secondary confirmation for board wraprarounds.
// There was an issue with erroneous game overs being triggered and this exists to force the game over from hitting a wall to not happen in these cases.
int checker = 0;

/** Updates the game by a single step, and modifies the game information
 * accordingly. Arguments:
 *  - cells: a pointer to the first integer in an array of integers representing
 *    each board cell.
 *  - width: width of the board.
 *  - height: height of the board.
 *  - snake_p: pointer to your snake struct (not used until part 2!)
 *  - input: the next input.
 *  - growing: 0 if the snake does not grow on eating, 1 if it does.
 */
void update(int* cells, size_t width, size_t height, snake_t* snake_p,
            enum input_key input, int growing) {
    // `update` should update the board, your snake's data, and global
    // variables representing game information to reflect new state. If in the
    // updated position, the snake runs into a wall or itself, it will not move
    // and global variable g_game_over will be 1. Otherwise, it will be moved
    // to the new position. If the snake eats food, the game score (`g_score`)
    // increases by 1. This function assumes that the board is surrounded by
    // walls, so it does not handle the case where a snake runs off the board.

    // Find the current position of the snake.
    int snake_pos = -1;
    for (size_t i = 0; i < width * height; ++i) {
        if (cells[i] == FLAG_SNAKE) {
            snake_pos = i;
            break;
        }
    }

    // If the snake is found, move it one cell to the right.
    if (snake_pos != -1) {
        // Calculate the new position.
        int new_pos = snake_pos;

        // Use the last direction if no new input is provided.
        if (input == INPUT_NONE) {
            input = last_direction;
        } else {
            last_direction = input;
        }

        // Calculate the new position based on the input direction.
        switch (input) {
            case INPUT_UP:
                new_pos -= width;
                 if (new_pos < 0) {
                    new_pos += width * height; // Wrap around to the bottom.
                     checker = 1;
                }
                else {
                    checker = 0;
                }
                break;
            case INPUT_DOWN:
                new_pos += width;
                if ((size_t)new_pos >= width * height) {
                    new_pos -= width * height;  // Wrap around to the top.
                    checker = 1;
                }
                else {
                    checker = 0;
                }
                break;
            case INPUT_LEFT:
                new_pos -= 1;
                if ((size_t)new_pos % width == width - 1 || new_pos < 0) {
                    new_pos += width; // Wrap around to the right.
                    checker = 1;
                }
                else {
                    checker = 0;
                }
                break;
            case INPUT_RIGHT:
                new_pos += 1;
                if ((size_t)new_pos % width == 0) {
                    new_pos -= width; // Wrap around to the left.
                    checker = 1;
                }
                else {
                    checker = 0;
                }
                break;
            default:
                break;
        }
        //checker = 0;

        //Check if the new position is out of bounds (hits a wall).
        if (cells[new_pos] == 4 && checker == 0) {
            g_game_over = 1;
            return;
        }

        // Check if the snake eats food.
        if (cells[new_pos] == FLAG_FOOD) {
            g_score += 1;
            if (growing) {
                // Snake growing logic goes here.
            }
            // Place new food on the board.
            place_food(cells, width, height);
        }

        // Update the board.
        cells[snake_pos] = FLAG_PLAIN_CELL; // Clear the old position
        cells[new_pos] = FLAG_SNAKE;        // Set the new position
    }
    
}

/** Sets a random space on the given board to food.
 * Arguments:
 *  - cells: a pointer to the first integer in an array of integers representing
 *    each board cell.
 *  - width: the width of the board
 *  - height: the height of the board
 */
void place_food(int* cells, size_t width, size_t height) {
    /* DO NOT MODIFY THIS FUNCTION */
    unsigned food_index = generate_index(width * height);
    if (*(cells + food_index) == FLAG_PLAIN_CELL) {
        *(cells + food_index) = FLAG_FOOD;
    } else {
        place_food(cells, width, height);
    }
    /* DO NOT MODIFY THIS FUNCTION */
}

/** Prompts the user for their name and saves it in the given buffer.
 * Arguments:
 *  - `write_into`: a pointer to the buffer to be written into.
 */
void read_name(char* write_into) {
    char buffer[100]; // Buffer to hold the user input.
    ssize_t bytes_read; // ssize_t to hold the number of bytes read for length calculating purposes.

    // Allocate memory for g_name.
    g_name = (char *)malloc(100 * sizeof(char));
    if (g_name == NULL) {
        perror("malloc");
        exit(EXIT_FAILURE);
    }

    // Set the locale to the user's default locale.
    // This is for reading in non-ASCII characters.
    setlocale(LC_ALL, "");

    // Main loop to read in the input character by character.
    while (1) {
        printf("Name > ");
        fflush(stdout);

        bytes_read = read(STDIN_FILENO, buffer, sizeof(buffer) - 1);

        // Triggers an error if the bytes are somehow negative.
        if (bytes_read < 0) {
            perror("read");
            continue;
        }

        // Null-terminate the buffer.
        buffer[bytes_read] = '\0';
        if (buffer[bytes_read - 1] == '\n') {
            buffer[bytes_read - 1] = '\0';
        }

        if (strlen(buffer) > 0) {
            strncpy(write_into, buffer, 100);
            strncpy(g_name, buffer, 100);  // Copy to the global variable.
            g_name_len = mbslen(g_name);  // Update the length of the name using mbslen.
            printf("%d", g_name_len);
            return;
        } else {
            // If the user entered nothing, print this.
            printf("Name Invalid: must be longer than 0 characters.\n");
        }
    }
}

/** Cleans up on game over — should free any allocated memory so that the
 * LeakSanitizer doesn't complain.
 * Arguments:
 *  - cells: a pointer to the first integer in an array of integers representing
 *    each board cell.
 *  - snake_p: a pointer to your snake struct. (not needed until part 2)
 */
void teardown(int* cells, snake_t* snake_p) {
    // Free the memory allocated for the cells.
    free(cells);

    // Free the memory allocated for the snake (if applicable) uncomment for part 2
    //if (snake_p != NULL) {
        // Assuming snake_t has dynamically allocated memory that needs to be freed
        // free(snake_p->some_pointer); // Example
    //}
}
