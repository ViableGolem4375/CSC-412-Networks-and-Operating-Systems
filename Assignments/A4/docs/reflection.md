## Post Implementation Review

## Partner Review

Partner Rating - 5

Me and my partner for this assignment mostly worked on this assignment on our own, we had made contact once or twice to talk some things over about the assignment and share ideas. Throughout those meetings I thought my partner was helpful and informative and I found that he aided in my completion of assignment 4.

## What didn't change between my design document and my final implementation?

Some things from my design document did get used within my implementation, I did make more use of the InklingInfo struct, however with more variables added within to allow for more functionality throughout the program, like adding an id for use in the log files and some variables to track whether the inkling is live or not.

Another thing which stayed the same from my design document to my final implementation is my implementations for the color thread functions. My idea to use an if statement to check if the ink was less than the max, ans if so to refill it worked well, along with my creation of the mutex before hand.

Lastly, my implementation of the try/catch statement within ascii_art.cpp worked well. This allowed for a better deactivation of raw mode like I had expected it to, so this implementation stayed basically the same from my design document to my final implementation.

## What worked?

Most of my basic implementation parts of the unimplemented functions ended up working out for me. My outlines for the thread functions worked out quite well along with my understanding of using the InklingInfo struct to do more with the program.

## What didn't work?

What didn't work out so well was my ideas for improving upon existing functions. The idea of converting the grid to a vector based design did not work out so well due to conflicts with other functions, along with the idea to use a queue based system for commands within ascii_art.cpp

Another thing which didn't work out so well is my implementation of threadFunction() as there is an issue with creating the inklings which I have not been able to fix properly as they do not seem to be able to move around the grid as they should.

## What changed?

My final implementation of the program differs somewhat from my initial concepts in the design document. Firstly, I did not end up converting the grid to be vector based. I did attempt to do this, however it ended up causing conflicts with other functions which I did not anticipate and fixing this problem would have been more complicated than it was worth, so I chose to leave the grid implementation as is. 

I also did not end up using the queue concept from my design document, as the commands seemed to be reading in fine as is, so I chose to leave the old implementation alone.

## What research was needed and what difficulties did I have?

As I had expected, I spent a bit of time on researching mutexes and how they operate within a program to best use them effectively. This was expected as I had never worked with mutexes before so it was an entirely new concept to me which I needed to fully understand to do the assignment.

I also had to do research into how to work with ASCII art GUIs, also like I had expected. This was not too complicated to figure out, however some research into the looping structure that the code is using was necessary to figure out how to work with the GUI and make improvements to it.

I did also have to do a lot of research into a lot of different error codes throughout this assignment. These ranged from various variable/function declaration issues, to linker errors, to MakeFile errors, among various other things. Looking through these errors was a major part of working through this assignment for me as they ended up being very frequent with how large this code base is.

## How long did this assignment take?

Including all parts of this assignment, from finishing main.cpp, to the writing portion of the assignment, to the code improvements, I spent approximately 20 hours on this assignment.