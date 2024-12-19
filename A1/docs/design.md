## My design document will follow a prototyping first approach.

## What parts did you try and implement first?

The first part of the assignment that I tried to implement is one of the reverse-arr functions. I decided on attempting this first as getting one functioning reverse_arr function seemed to be the easiest part of the assignment to me. 

From then I tried to implement one of the reverse_str functions as this seemed like the natural next step after working on getting a working reverse_arr function.

After this I decided to work on getting build.sh working, and once the bash script was functioning as intended, I decided to work on the rest of the reverse_arr and reverse-str functions, as from this point now that I could easily run the program and since I already had one of each function working, it was just a matter of changing up the existing functions a bit to do the same job but a bit different.

The last thing I decided to implement was the if/else statement at the bottom of revtest.c I did this because to me it seemed like an easy ending point after all of the actual functionality work was completed.

## What issues did you run into? Were certain parts difficult or appear  more time-consuming than initially expected?

Two notable issues I ran into during my work on this assignment were getting my reverse_str functions to handle capital letters properly, and getting the if/else statement at the bottom of revtest.c to work properly. These two things ended up being much more difficult that I had originally anticipated as I ran into many different logic issues regarding handling capital letters, and the if/else was giving me a mysterious segfault error which took quite a long time to fix.

## Describe at least two areas you need to research to solve these  problems.

One area of research which I need to look into to solve these problems is understanding how to edit strings in C. Learning more about this also corresponds with the actual assignment as well because the logic needed to change a letter is similar to that of reversing a string.

Another area of research I need to look into to solve these problems is looking more into what can cause segfaults. Learning more about this can help solve any issues I am having with segfaults, like the one in revtest.c, along with help me to understand any future problems I may have with them.

## Describe a plan for how can you can work through the assignment to  solve these problems.

The plan I have for working through this assignment to solve any problems I have is to take it one step/problem at a time. Any time an issue arises where something is not working correctly/how I think it should, I will attempt to research the problem and see if there is any useful information on how to fix it from off of the internet. If In have exhausted all of the options I can think of, along with all of the options found off of the internet, I will then post a question related to my problem onto Edstem.

## Provide a rough outline of the functions, data structures, and/or  comments describing what you think you will need.

For this assignment, I will need 5 different reverse_arr functions, 5 different reverse_str functions, a bash script which can run revtest.c, and an if/else statement which will handle different input cases for running the program in revtest.c

I will try to format my different reverse functions similarly to this pseudocode, the functions will likely differ by having different looping methods to function:

void reverse_func(char** arr, int size) {
    // Variable declaration.
    // Variable declaration.

    // Some kind of loop logic here, different between functions.
}

Build.sh should be simple, as all I will need is to run the program using the '$@' identifier to run revtest.c using all arguments passed in.

Lastly, for the if/else portion to run the program, I'll probably need some kind of nested if/else statement type of logic to cover all of the necessary cases when running the program, this will look something like this pseudocode:

if (no arguments present) {
    // Run the tests.
}
else {
    if (one argument) {
        // Print USAGE and run the tests.
    }
    else if (bad input) {
        // Print error and quit.
    }
    else {
        // Reverse input array and print the output.
    }
}