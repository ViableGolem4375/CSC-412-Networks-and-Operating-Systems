
## Post Implementation Review

## What didn't change between my design document and my final implementation?

My final implementation is quite similar to what I had outlined within my design document. All of the helper functions and most of the looping logic I had outlined in the design document ended up working the way I had expected it to and was implemented in the final version of my program.

The basic concept for my do_fork() program was also used in my final implementation with using fork() being as simple as I had thought it'd be, and the basic structure for handline the child and parent cases being used.

My design for the Makefile was also implemented essentially exactly as I had outlined in the design document.

## What worked?

Most of my basic looping and function structure ended up working out for me as far as the different programs went, all of this generally worked as I had hoped it would at the beginning of the assignment.

My outlines for helper functions and different ways of going about solving the problems outlines by the assignment handout all generally worked out the way I had hoped that they would. I also was able to use a lot of my concepts for handling the various edge cases which I had outlined. The general idea of using if/else statements to run through all of the possible outcomes worked out wuite well.

## What didn't work?

What didn't work out as well as I'd hoped was my original way of reading file paths for my GNU utilities. I had originally decided to hte the filepath import for this purpose, however this caused issues when running the programs through the autograder due to version problems where this wasn't available in the version of C++ the autograder is running, as a result I had to use a different method of getting the file path for these programs.

Another thing which didn't work out so well was my usage of execv(). Unknown to me at the beginning of the assignment, execv() cannot handle using vectors/arrays as input. This resulted in having to redo a portion of the do_fork() program in order for it to not cause a great deal of errors upon running.

## What changed?

As outlined above, one thing that changed was my method of obtaining file directories as using the filepath import was definitely not working properly. Instead of using filepath, I ended up using PATH_MAX to obtain the file path and then formatting it for output correctly using readlink. Doing so this way fixed the version problems I was experiencing previously.

Another thing that changed, also outlined above, was my method of handling the child case within do_fork() as my original implementation involved trying to insert a vector into execv() which caused a lot of data type mismatch errors to occur, as a result I ended up needing to rewrite this part of the function a bit to ensure this did not occur.

## What research was needed and what difficulties did I have?

Most of the research time spent on this assignment was done on reading file paths in C++. This was the case as because of filepath not working (which was the first thing my research found), I needed to look into different ways of obtaining file paths. While overall not to complicated, there was certainly a bit of difficulty involved with trying a few different implementatons until something worked.

I also had to do research into execv() and what the function does and how to use it. I needed this research in order to get the child case within do_fork() to work. Further beyond this, I needed to do research into data types within execv() as my original idea of reading a vector into execv did not work as I had anticipated, resulting in more loking into how data goes through this function being neeeded.

Lastly, I did need to do a slight amount of research into reading bytes from input in C++. This ended up being quite simple to do with text as input as all I needed to do was get the line size and add 1 for the new line character which will in effect equal the number of bytes.

## How long did this assignment take?

Including all parts of this assignment (excluding what I had done in lab 3), from the GNU utilities, to the Makefile, to the shell program, writing portion, and code cleanup, I spent approximately 10 hours on this assignment.