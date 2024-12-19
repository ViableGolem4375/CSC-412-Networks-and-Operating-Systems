## My design document will follow a planning first approach.

## My Plan

The first thing I plan on getting done for this assignment, similarly to A4, is to read through the given code base and try to understand what all of the different pieces do and how they interact with each other. I expect this to be as useful as it was to me in A4 as it will give me a better understanding of how to go about implementing the missing pieces to obtain a functional game of Snake.

Once I have a good understanding of how the code is working and what everything does, I plan on working through the assignment test case by test case until everything works. I believe this is the best way of going about completing the assignment as due to the way the assignment is structured, earlier test cases allow for functionality which will allow for later test cases to pass, this means that making sure I work through them in order will also make sure that everything is working the way it's supposed to.

Once I get all of the test cases for the basic game of Snake to pass, I will begin working on part 3 of the assignment. Considering this part of the assignment is separate from the rest, it will probably be a good thing to work on last as it does not block progress on anything else and will likely also be easier to work through once I have the best understanding of the cose base possible.

Lastly, if I have the time upon completion of the assignment, I will work on the extra credit portion of the assignment. This part seems to be that it needs to be done last due to needing a functional game of Snake to build upon for improvements. Currently I plan on attempting to create a custom level, along with defining behavior when the snake hits the edge of the board for the extra credit portion.

## Two Areas That May be Time Consuming

The first area which I expect to be time consuming, again similarly to A4, is understanding the code. This is a large code base with a lot of different moving parts, so understanding what each piece does well enough to implement new functionality may be difficult.

The second area I expect to be time consuming is understanding how to work with UTF-8 encoding for part 3 of the assignment. This is something I am almost entirely unfamiliar with and from my brief research done for A1, I recall this being something which was complicated and that I did not understand fully. As a result, I will likely experience some difficulty with this part of the assignment.

Another thing which will likely be difficult is the board decompression portion of the assignment. I expect this to be difficult as similarly to UTF-8 encoding, I am entirely unfamiliar with this process, so figuring out how to implement this functionality will be a learning experience.

## Research Areas

One area I will need to research for this assignment is how to work with UTF-8 encoding. As stated previously, this is something I am unfamiliar with, and given that there is a significant portion of the assignment which deals with this, I will likely be spending a great deal of time trying to understand how this process works.

Another area I expect to have to do research into is run length encoding. Like UTF-8 encoding, this is also a process I am almost entirely unfamiliar with and from my understanding given by the assignment handout, this is potentially a very open ended problem to work through. So noting these things I will likely be spending the majority of my research time on this part of the assignment.

Lastly, I expect to have to do some research into functions like malloc, calloc and other similar things. These types of functions are something I am still not entirely confident in using and they seem to play a large role in this assignment. Given this I expect to need to do a bit of research into how to properly and effectively use these functions to allow for full functionality.

## Provide a rough outline of the functions, data structures, and/or comments describing what you think you will need.

### Things I will need for game.c

One thing I will need is to implement logic within the update() function to actually update the game state. This could be done by using a switch statement like the one below to update the game state based on a user's input:

int new_x = snake_p->head->x;
int new_y = snake_p->head->y;

switch (input) {
        case UP: new_y--; break;
        case DOWN: new_y++; break;
        case LEFT: new_x--; break;
        case RIGHT: new_x++; break;
    }

I will also need to write some logic for read_name() to be able to read in user input and store it for later use, I could do this by using fgets() to get the string from the user and then I could store it into a buffer by using the write_into() function.

Within teardown() I will need to implement logic to clean up any memory being used upon a game over. This could be done by using a while loop to iterate through the snake parts and free them from memory like the loop below:

free(pieces of the game board)

while (current_snake_segment !- NULL) {
    current_snake_segment* next = current ->next;
    free(current);
    current = next;
}

### Things I will need for game_setup.c:

For the initialize_game() function, I will oikely use an if/else statement along with the other functions within the file to initialize the game. This could be done something like the logic below:

if (no board is present) {
    initialize_default_board()
}
else {
    decompress_board_str()
}

Within decompress_board_str(), my current plan for going about this is to use a switch statement to set certain characters to mean certain things, for example something like this:

switch(the type of the character) {
    case SOMETHING HERE:
        make this an empty space
    case ANOTHER CHARACTER:
        make this a wall
    etc.
        SOMETHING HERE
    etc.
}

### Things I will need for snake.c:

Within snake.c, I will need logic to add to the main function to allow the game loop to function. I could do this by using a while loop to loop through the different functions which allow the game to function. I could do this something like the loop below:

while (game isn't over) {

    // get user input at some point in here

    render(game info put into here);
    if (game over triggered) {
        end the game
    }
}

### Things I will need for linked_list.c:

For this file, I will need to copy over my linked list program from the double link lab. My implementation acheieved fill functionality for the lab, so I should be able to move it over into this assignment seamlessly.

### Things I will need for mbstrings.c:

For the mbslen() function within this program, I will need to work with UTF-8 encoding, to do this I believe I could use an if/else statement to get the number of bytes within a character and then insert that data into a length variable. This if statement could look something like the one below:

while (there are bytes) {
    if (byte <= a value) {
        bytes +=1;
    }
    else if (byte <= a bigger value) {
        bytes += 2;
    }
    etc. {

    }
    length++;
}

### Things I will need for common.c:

For this program, I will need some global variables defined within it. These are the current variables I believe I will need for this assignment:

int game_over; // Checks for a game over
int score; // Holds the score value.
int snake_length; // Holds the snake length value.
int snake_pos_x // Holds the x position of snake pieces.
int snake_pos_y // Holds the y position of snake pieces.
int snake_direction; // Holds the value for what direction the snake is moving.
int board_width; // Holds the value for board width.
int board_height; // Holds the value for board height.

### Things I will need for common.h:

Within common.h, I will need to populate the snake struct with variables to allow it to function. I believe it will need the following variables given to it.

typedef struct snake {
    int snake_pos_x;
    int snake_pos_y;
    int snake_direction;
    int snake_length;
} snake_t;