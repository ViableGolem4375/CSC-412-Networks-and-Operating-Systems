#include "game_setup.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Some handy dandy macros for decompression
#define E_CAP_HEX 0x45
#define E_LOW_HEX 0x65
#define S_CAP_HEX 0x53
#define S_LOW_HEX 0x73
#define W_CAP_HEX 0x57
#define W_LOW_HEX 0x77
#define DIGIT_START 0x30
#define DIGIT_END 0x39

/** Initializes the board with walls around the edge of the board.
 *
 * Modifies values pointed to by cells_p, width_p, and height_p and initializes
 * cells array to reflect this default board.
 *
 * Returns INIT_SUCCESS to indicate that it was successful.
 *
 * Arguments:
 *  - cells_p: a pointer to a memory location where a pointer to the first
 *             element in a newly initialized array of cells should be stored.
 *  - width_p: a pointer to a memory location where the newly initialized
 *             width should be stored.
 *  - height_p: a pointer to a memory location where the newly initialized
 *              height should be stored.
 */
enum board_init_status initialize_default_board(int** cells_p, size_t* width_p,
                                                size_t* height_p) {
    *width_p = 20;
    *height_p = 10;
    int* cells = malloc(20 * 10 * sizeof(int));
    *cells_p = cells;
    for (int i = 0; i < 20 * 10; i++) {
        cells[i] = FLAG_PLAIN_CELL;
    }

    // Set edge cells!
    // Top and bottom edges:
    for (int i = 0; i < 20; ++i) {
        cells[i] = FLAG_WALL;
        cells[i + (20 * (10 - 1))] = FLAG_WALL;
    }
    // Left and right edges:
    for (int i = 0; i < 10; ++i) {
        cells[i * 20] = FLAG_WALL;
        cells[i * 20 + 20 - 1] = FLAG_WALL;
    }

    // Add snake
    cells[20 * 2 + 2] = FLAG_SNAKE;

    return INIT_SUCCESS;
}

// Error handling function
// enum board_init_status handle_error(enum board_init_status status) {
//     if (status != INIT_SUCCESS) {
//         //fprintf(stderr, "Error: %d\n", status);
//         //exit(status);
//         return status;
//     }
//     return INIT_SUCCESS;
// }

/** Initialize variables relevant to the game board.
 * Arguments:
 *  - cells_p: a pointer to a memory location where a pointer to the first
 *             element in a newly initialized array of cells should be stored.
 *  - width_p: a pointer to a memory location where the newly initialized
 *             width should be stored.
 *  - height_p: a pointer to a memory location where the newly initialized
 *              height should be stored.
 *  - snake_p: a pointer to your snake struct (not used until part 2!)
 *  - board_rep: a string representing the initial board. May be NULL for
 * default board.
 */
enum board_init_status initialize_game(int** cells_p, size_t* width_p,
                                       size_t* height_p, snake_t* snake_p,
                                       char* board_rep) {
    enum board_init_status status; // enum to hold the status of the game for error handling.
    if (board_rep == NULL) {
        // If no specified board string is present, load default board.
        status = initialize_default_board(cells_p, width_p, height_p);
    } else {
        // If there is a specified board string, load the decompression function.
        status = decompress_board_str(cells_p, width_p, height_p, snake_p, board_rep);
        if (status != INIT_SUCCESS) {
            return status;  // Return the error code if decompression fails
        }
    }
    // After loading the board, place food on the board.
    place_food(*cells_p, *width_p, *height_p);

    // Return success if the board was initialized.
    return INIT_SUCCESS;
}

/** Takes in a string `compressed` and initializes values pointed to by
 * cells_p, width_p, and height_p accordingly. Arguments:
 *      - cells_p: a pointer to the pointer representing the cells array
 *                 that we would like to initialize.
 *      - width_p: a pointer to the width variable we'd like to initialize.
 *      - height_p: a pointer to the height variable we'd like to initialize.
 *      - snake_p: a pointer to your snake struct (not used until part 2!)
 *      - compressed: a string that contains the representation of the board.
 * Note: We assume that the string will be of the following form:
 * B24x80|E5W2E73|E5W2S1E72... To read it, we scan the string row-by-row
 * (delineated by the `|` character), and read out a letter (E, S or W) a number
 * of times dictated by the number that follows the letter.
 */
enum board_init_status decompress_board_str(int** cells_p, size_t* width_p,
                                            size_t* height_p, snake_t* snake_p,
                                            char* compressed) {
    // Parse the board dimensions from the compressed string.
    int height, width;
    if (sscanf(compressed, "B%dx%d|", &height, &width) != 2) {
        // Return EXIT_FAILURE if dimensions are not correctly parsed.
        return EXIT_FAILURE;
    }
    *width_p = width;
    *height_p = height;

    // Count the number of pipe and snake characters in the string.
    // This is done to check and see if there are not enough rows present as the pipe characters directly correlate to the number of rows.
    // Also counts the number of snake characters present, if it is not exactly 1 it will trigger an error code within an if statement below.
    int pipe_count = 0;
    int snake_count = 0;
    for (char* ptr = compressed; *ptr != '\0'; ++ptr) {
        if (*ptr == '|') {
            pipe_count++;
        }
        if (*ptr == 'S') {
            snake_count++;
        }
    }

    // Allocate memory for the board cells.
    int* cells = malloc(height * width * sizeof(int));
    if (cells == NULL) {
        // Return EXIT_FAILURE if memory allocation fails.
        return EXIT_FAILURE;
    }
    *cells_p = cells;

    // Check if the number of pipes matches the height of the board.
    if (pipe_count != height) {
        return INIT_ERR_INCORRECT_DIMENSIONS;
    }

    // Check if there is exactly one snake character.
    if (snake_count != 1) {
        return INIT_ERR_WRONG_SNAKE_NUM;
    }

    // Initialize the board with empty cells.
    for (int i = 0; i < height * width; i++) {
        cells[i] = FLAG_PLAIN_CELL;
    }

    // Parse the board rows.
    char* row_str = strchr(compressed, '|') + 1;
    for (int row = 0; row < height; row++) {
        int col = 0;
        int row_sum = 0;
        while (*row_str != '|' && *row_str != '\0') {
            char cell_type = *row_str++;
            int count = 0;
            while (*row_str >= '0' && *row_str <= '9') {
                count = count * 10 + (*row_str++ - '0');
            }
            // Secondary check for too many snake characters.
            // Handles 2 adjacent snakes by making sure the number after a snake character in the string is 1.
            if (cell_type == 'S' && count != 1) {
                return INIT_ERR_WRONG_SNAKE_NUM;
            }
            row_sum += count;
            int flag;
            switch (cell_type) {
                case 'W':
                    flag = FLAG_WALL;
                    break;
                case 'E':
                    flag = FLAG_PLAIN_CELL;
                    break;
                case 'S':
                    flag = FLAG_SNAKE;
                    break;
                default:
                    // Return bad character error code if this is reached.
                    return INIT_ERR_BAD_CHAR;
            }
            for (int i = 0; i < count; i++) {
                cells[row * width + col++] = flag;
            }
        }
        // Checks to see if any of the rows are too long or too short by comparing a row_sum variable to the calculated width of the board.
        if (row_sum != width) {
            return INIT_ERR_INCORRECT_DIMENSIONS;
        }
        row_str++;
    }
    // Return success if the board is correctly initialized.
    return INIT_SUCCESS;
}
