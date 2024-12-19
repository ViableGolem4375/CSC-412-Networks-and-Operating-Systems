## Post Implementation Review

## What didn't change between my design document and my final implementation?

Quite a few things from my initial planning phase ended up being used in my final implementation. Firstly, my idea of using a struct to hold information about the memory block ended up working fairly well. This allowed me to easily keep track of the size of the memory block without needing to mess around with global variables.

Another thing which didn't change from my design document is my get_statistics function. This was implemented almost exactly according to my planning, only that the final implementation includes print outs for the heap max and heap min.

The basic idea for my dmalloc function also didn't change from my design document and final implementation. The structure of using an if statement to check for an overflow, and then use another if statement linked to the pointer variable to perform the necessary operations worked well. My final implementation was a lot more complex then the design document version however.

The same logic for dmalloc also worked well for dcalloc. Using the same idea of an if statement to check for an overflow error, and then using another if statement to perform any necessary operations ended up working how I'd hoped it would just like for dmalloc.

## What worked?

As I had outlined in the section above, a lot of what I had outlined in my design document worked fairly well within my final implementation. The if statements in dmalloc and dcalloc worked as well as I'd hoped. My get_statistics function was almost implemented exactly according to my design document, and the idea of using a struct to keep track of memory block data ended up being helpful.

## What didn't work?

One thing which did not work very well was my original idea for dfree. Originally I had planned on using a while loop to move through the allocated pointers and free them, along with adding some error checking in the case it ran into problems. This did not work very well as I did not realize that it already was looping through this function externally when necessary, this caused various problems with this implementation causing it to have to be rewritten entirely differently.

Another thing that didn't work so well was the original information I had planned to put into the memory block struct. Much of this ended up being entirely unnecessary, so the only thing which was needed for my final implementation was a size variable tp keep track of how big the memory block is.

A last thing which didn't work so well was implementing get functions for the get_statistics function. I had originally planned to use some helper functions to get the values for this function to then print out. While this did work the way I had intended, it made the code look incredibly messy when implemented resulting in me making changes.

## What changed?

The first thing which changed is my implementation of dfree. Instead of my original idea involving a while loop, my current implementation uses a set of quite a few if statements to check for various error cases (e.g. double free, not allocated, etc.) and then if none of those cases are triggered, it will perform the necessary memory freeing operations.

Another thing which changed is me memory block struct. The final implementation of this only contains a size variable to be used for various purposes within the other functions. The other planned variables for this struct ended up being not necessary for the function of the program, so I removed them entirely.

Lastly, the originally planned helper functions for get_statistics were also cut out enirely. Instead of using helper functions, I simply used some variable declarations at the top of the program, and then had get_statistics use the stats pointer to assign the variables with values. This ended up working just as well and made the code look a lot cleaner, hence my decision to change this.

## What research was needed and what difficulties did I have?

As I had expected, I did need to do research into not only boundary errors, but also overflow errors. Researching these and how to go about checking for them was where the bulk of my research for this assignment was done as it was necessary for several different parts of the assignment. This is also where most of my difficulties lied as well, as even after all of the research I have done, a lot of the error checking parts of the assignment still do not work as intended and cause some odd behavior, or just do not work at all.

Another more minor area I had to do research into was working with pointers. Considering these were so omnipresent within this assignment, I did need to do a bit of looking into specifics of how they work as a memory refresher. This was not overly complicated, however it did take a bit of time to wrap my head around for me to be able to complete the assignment.

## How long did this assignment take?

Including all parts of this assigmnent, from the different functions, to the design document/self reflection document, to the extra credit part of the assignment, I spent approximately 10 hours on this assignment.