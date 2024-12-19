## Post Implementation Review

## What changed between my design document and my final implementation?

My final implementation and design document actually are fairly close to each other. My formatting of the different reverse functions mostly looks like my pseudocode version, somewhat differing for the two recursive functions, and with the addition of some logic for handling capital letters in the reverse-str functions (along with some additional helper functions).

My bash script follows my design document exactly, simply using the '$@' identifier to run the program properly which works as I expecte it to.

The program running if/else statement in revtest.c also looks similar to my design document pseudocode. It follows the same basic structure as the pseudocode version (that being a nested if/else statement) only with some additional logic implemented to make sure it works correctly.

## What worked?

What worked well for me was mainly the basic function structure I had outlined, along with my idea for the bash script. All of this generally worked as I had hoped it would at the beginning of the assignment.

My outline for the if/else at the bottom of revtest.c also worked fairly well structurally as the general idea of using a nested if/else statement did what I had expected it to.

## What didn't work?

What didn't work so well for me was my original reverse_str functions. When I had first written a semi-functional reverse_str function, I had not implemented any type of logic for dealing with capital letters in the tests. This ended up being a somewhat time consuming process to fix as my outline for how I was making these functions did not contain any kind of logic for dealing with this.

Another thing which didn't work so well was that my functions currently have an issue with handling leading + trailing spaces. The functions don't seem to handle this input properly as instead of the spaces being reversed correctly, one extra space gets moved from the back to the front.

## What changed?

One thing which changed between my design document and final implementation was the writing of a helper function to deal with capital letters. Due to the fact that my reverse-str functions did not originally contain any logic for dealing with this, I ended up having to write a helper function to deal with the capitals externally and then call that within the reverse_str functions.

Another thing that changed was my implementation of recursive functions. These did not follow my original pseudocode very closely as the implementation had to be somewhat different to handle the recursion aspect of the functions.

## What research was needed and what difficulties did I have?

A lot of my time spent researching on this assignment was done on segfaults and how 'argc' works in C. Notably I was experiencing a lot of difficulty fixing a segfault error which was appearing somewhere in my code. At first it appeared that it was occurring somewhere in reverse_str_4 (as this is where gradescope simply stopped running tests), however this ended up not being the case as throughout some debugging I had found that it was my implementation of the if/else within revtest.c which caused the problem as due to a misunderstanding of how argc works, I had written my check for no arguments incorrectly which resulted in a segfault.

I also needed to do some research on strings in C both to get my reverse_str functions implemented correctly, and to work out the logic for handing capital letters. This caused a minor amount of difficulty when completing the assignment mostly just due to me needing to refrech myself to how C operates.

## How long did this assignment take?

Including all parts of the assignment from reverse functions, to bash, to the if/else, to the writing portion and code cleanup, I spent approximately 11 hours completing this assignment.