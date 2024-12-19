## My design document will follow a prototyping first approach.

## What parts did you try and implement first?

The first part of the assignment I tried to implement was tee.cpp, I decided to start here as this function was already partially complete from the previous lab which made it easier to get done.

From there I decided to move down the list of functions within the assignment handout, starting with head.cpp, then moving to pwd.cpp, then tail.cp, and finally wc.cpp. Once I had a good baseline for each of these functions, I moved on to writing the Makefile to make testing easier.

Once the Makefile was written, I decided to go through the .cpp programs and work out any formatting issues that had arose, and after that was done, the last thing I did was work on 412shell.cpp.

## What issues did you run into? Were certain parts difficult or appear  more time-consuming than initially expected?

The biggest issue that I ran into while working on assignment 3 was mostly just working through formatting problems on my different GNU utility programs. Due to how specific the autograder wanted the output to be, along with the number of different edge cases across the five programs, this ended up being a much more time consuming problem than I had expected originally.

Another thing which ended up causing me some difficulty was trying to get 412shell.cpp to work properly. Most notably, working with execv() ended up being more challenging than I had originally anticipated as my original plan for writing the do_fork() function involved usage of data types which do not function well with execv().

A third thing which caused me some issues was using the filepath import. as it turns out, this import was created in a later version of C++ which is not compatable with the autograder, causing any programs using it to not function correctly. This caused some difficulty as it resulted in having to redo parts of some of the GNU utilities to not use this import.

## Describe at least two areas you need to research to solve these  problems.

The first thing that I will need to do research into is how execv() works. I do understand how this plays into making the shell program operate, however previous to this assignment, this is not something I have worked with so I will need to do some research into how exactly it is used to make my shell program function.

Another thing I will need to do research into is reading bytes in C++. This is something I have not done in quite a long time and do not remember the specifics of, so in order to get my wc program to work I will need to do some research into how to get a byte count from input data.

A third thing I will have to research is different ways of obtaining file paths in C++. Notably since the filepath import causes some problems, I will have to research some different ways of going about solving this problem.

## Describe a plan for how can you can work through the assignment to  solve these problems.

The plan I have for working through this assignment is to get a basic working version of the five GNU utility programs first, then get the makefile written. Once this is done I will be able to test my GNU utilities more easily and I will be able to work through getting the program to pass all of the different edge case tests on Gradescope. Once I have got all of the GNU utilities set up, I will then try to get the shell program working.

## Provide a rough outline of the functions, data structures, and/or comments describing what you think you will need.

For this assignment , I will need 5 different programs (tee, head, tail, pwd, and wc), a Makefile capable of compiling them all, and a shell program capable of running them all.

The Makefile should be simple, I will just need to declare the compiler, flags, and programs at the top, and then have the programs compiled below, formatted like this:

tee: tee.o
	$(CXX) $(CXXFLAGS) -o $@ $^

Looking at the different tests on gradescope, for tee.cpp I will likely need to include some kind of if/else statement to check to see if the input file is valid or not, I will also need some logic to read through files in a loop in the case that there are multiple, I could do this with a while loop like the one below:

while (lines in the files) {
        Write to stdout
}

For head.cpp, I will likely need a helper function to read the forst 10 lines of files, within this helper function I will likely use some kind of looping structure like the one below to loop through the first 10 lines:

while (count < 10 && there are lines) {
        write the line
        increase count
}

Like tee.cpp, I will also need to have some checks to make sure the input files are valid and output an error message in the case that they aren't.

tail.cpp will likely be very similar to head.cpp as the basic premise of the program is the same, just instead of reading the first 10 lines, it's the last 10 lines, for this program I will likely be able to reuse most of the code, simply changing the looping logic to the one below:

while (count > 10 && there are lines) {
        write the line
        decrease the count
}

pwd.cpp should be a simple program to write, this program will likely work based off of an if/else statement which will check to see if the input file path is valid, and then provide an output message based on this, I could format this like the logic below:

if (file path is valid) {
    print the file path
}
else if (file path isn't valid) {
    print out the error message with the invalid file path
}

wc.cpp may be a bit more complex. I will likely try to include a helper function for actually reading the lines, words, and bytes from the input, within this helper function I could try to obtain the necessary data via a while loop like the one below:

while (input lines exist) {
    increase a line counter variable
    increase a byte counter variable <- this will likely need some additional logic to function
    increase a word counter variable
}

wc.cpp will also need some way of checking the input to detect whether it's from stdin or from a file, and from there be able to check whether the file(s) given are valid or not. This could be done by using some if/else statements to run through all possible options before outputting the data like the one below:

if (data from stdin) {
    print the stdin output message
}
else if (data not from stdin) {
    if (file valid) {
        print the file output message
    }
    else if (file not valid) {
        print invalid file message
    }
    else if (multiple files) {
        while (files) {
            if (file valid) {
                print the file output message
            }
            else if (file not valid) {
                print invalid file message
            }
        }
    }
}

Lastly, for 412shell.cpp (more specifically the do_fork() function), I will need to split this into 3 parts to complete the 3 TODOs in the comments. For the first part of the function I will need to use fork to create a chile process, this should be simple as I will just need to do something like 'fork_variable = fork();'

Next I will need to handle the child process case. This could be done by getting a list of the processes in an array/vector and then looping through them all by doing something like:

for (child processes) {
    run the process
}

Lastly I will need to handle the parent process case. Notably, I will need to use waitpid here to prevent an endless loop ocurring. Here I will likely implement this by using a simple if/else statement like the one below:

if (waitpid fails) {
    print error message
}
else {
    print the child exited message
}