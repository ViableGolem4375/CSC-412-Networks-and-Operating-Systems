## Post Implementation Review

## What didn't change between my design document and my final implementation?

My final implementation uses quite a bit from my initial concepts within the design document. Most of the basic looping structure I outlined ended up being implemented like how I had outlined it (though mostly with some extra logic added to make it function).

build.sh was implemented very similar to my design document using both pieces almost exactly according to my concept, along with unix_demo.sh being essentially the same as my concept from the design document.

I also did end up starting with bubble sort for my sort programs which I used during testing, and like I mentioned in the design document, I did end up swapping to quick sort for the final implementation as though the implementation of it is more complex, it is significantly faster than bubble sort.

## What worked?

Most of my basic looping and function structure ended up working out for me as far as the different programs went, all of this generally worked as I had hoped it would at the beginning of the assignment.

My outlines for build.sh and unix_demo.sh also worked quite well according to my outlines from the design document, my ides of looping through any C files I had found worked out quite well for build.sh and unix_demo.sh ended up being as simple as I had thought it would be.

## What didn't work?

What didn't work so well was my original implementations of sort and unique. My implementations of these programs did not work so well with the main functions I had, which ended up with me having to rewrite the main functions within these two program's C variants to make it work correctly. This ended up being a very time consuming process to fix as I was already in the middle of trying to understand delimiters and tokenizing strings.

Another thing which didn't work so well was my original implementation of mismatch. This program ended up requiring more logic and helper functions than I had originally anticipated it needing. This resulted in more time being used than I had expected needing on this part of the assignment.

## What changed?

As outlined above, one thing that changed dramatically was my main functions within sort.c and unique.c. The original implementation of these had looping logic which did not mesh well with my implementations of the programs, resulting in extremely strange outputs from these programs during testing.

mismatch also changed quite a bit with some additional helper functions/logic needing to be added to allow for reading in the data properly and outputting it in the correct format.

My sorting logic also changed (as I had expected it to) from bubble sort to quick sort. I did this change to allow for faster forting of the list of words as bubble sort is extremely slow and was resulting in losing points due to the slow speed.

## What research was needed and what difficulties did I have?

Most of my research time on this assignment was spent looking into how delimiters work and how to use them to tokenize a string. This was done so that I could read in some text and put it into an array word by word. This ended up being somewhat simple by the end of my research, but as I had never worked with these things before it was quite confusing understanding how to use this at the start.

I also had to do some research into putting data into arrays and taking it out. I needed to research this so that I could make sure my input was usable within the programs, and my output was formatted properly to be used by the next program. This is something I hadn't done in a long time in C and something I hadn't done ever in bash, so while I did learn fairly quickly, it still took a bit to wrap my head around all of the syntax required.

Lastly, I had to do a bit of research into sorting algorithm implementations and running times. This was just done to make sure I could get sort working properly, and later on make sure I had the fastest possible implementation of sort.

## How long did this assignment take?

Including all parts of this assignment (excluding what I had done in lab 2) from the C programs, to the bash scripts, writing portion, and code cleanup, I spent approximately 20 hours on this assignment.