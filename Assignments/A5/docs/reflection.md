## Post Implementation Review

## Partner Review

Partner Name - Kevin Lattuada

Partner Rating - 5

I think my partner did a great job working with me on this assignment. He was able to get everything required for the assignment done on time for me to be able to read through and understand it, and his work on the pro Han Unification side of the assignment was very informative.

## What didn't change between my design document and my final implementation?

A lot of what I had outlined in my initial design document ended up being used in my final implementation. Firstly, my plan for the update function within game.c worked the way I had hoped it would. Utilizing a switch statement to handle snake movement directions worked quite well for handling updating the game state. Part of my teardown function from initial planning also worked well as simply calling free(cells) worked well to ensure memory wasn't left dangling.

For game_setup.c, my initial design for initialize_game was implemented almost exactly according to my design document. Using a simple if/else statement to handle what function is called worked for handling input to the program. My plan for decompress_board_str was also implemented (albeit much more complex than my original design), but using a switch statement to handle dealing with the different characters within the board strings worked the way I had hoped it to within my final implementation of the function.

For snake.c, my idea of using a while loop that uses the game over variable to handle running the game worked the way I had hoped it would, along with triggering the game over upon the loop's termination.

linked_list.c also was implemented according to my design document as expected since this part of the assignment passed all tests within the lab previously.

My ideas for global variables within common.c/common.h were also implemented according to my original design, I ended up with variables which hold the snake's position and length in my final implementation.

## What worked?

As outlined above, a lot of that I had initially outlined within my design document worked well within my final implementation. Using switch statements within update to handle snake movement was a success along with my method of freeing board cells from memory, using an if/else to handle initializing the game also worked very well. Using a loop connected to the game over variable to handle the main game loop functioned as I had hoped, and linked_list and my global variabled were implemented exactly according to my design document.

## What didn't work?

One thing that didn't work so well was my plan for the read_name function within game.c Originally I had planned to use fgets() to get the user's input and store it using write_into(). This did not work well at all as this was unable to work with counting bytes properly causing almost every test to fail for name input due to it thinking the length was always 0.

Another thing which did not work so well was my way of handling snake growth/length within update/teardown, the way I was attempting to utilize the linked list here was causing a great deal of problems regarding segmentation faults and I haven't managed to get this part implemented and working correctly as of yet.

One other thing which didn't work out for me was my original design for the mbslen() function. Initially I had planned on Using a while loop which ran while the string had bytes present, and then within that while loop I was going to check byte lengths and then perform some kind of conversion. This did not work at all like I had hoped and just didn't give me the behavior I was hoping for.

## What changed?

The first main thing that changed is that within read_name instead of using fgets()/rwrite_into(), my final implementation of the function uses strncpy() to read the input into a buffer, and obtains the length by using mbslen(). This new solution handles lengths in bytes correctly allowing it to pass the autograder tests.

Another thing which changed was my implementation of mbslen(). My final implementation of this function uses a while loop which runs while a pointer variable has new bytes to move to, and within that while loop I use the mbrtowc() function to convert the input characters to a wide character.

## What research was needed and what difficulties did I have?

Most of my research within this assignment, as I had originally expected, was focused on encoding methods for board strings and how to handle non-ASCII character inputs. I had to do a lot of looking into how to handle converting a string into something else for decompress_board_str as while my idea of using a switch statement for conversions worked well, I still needed to handle working that idea into the function to make it work properly.

I also needed to do research into methods of dealing with non-ASCII characters within user input. Like I had expected, this was a complex thing to figure out, so I needed to look into a lot of different methods of accomplishing the task to find the right one to get the function working.

Something which caused me difficulty within the assignment was trying to get snake growing to work correctly. Trying to refactor my existing code and make it work with a linked list to handle growing the snake eneded up being more complicated than I had originally expected and is something I have still not got figured out.

## How long did this assignment take?

Including all parts of this assigmnent, from the different functions, to the design document/self reflection document, to the writing portion of part 3, I spent approximately 15 hours on this assignment.