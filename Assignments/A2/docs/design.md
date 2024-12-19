## My design document will follow a prototyping first approach.

## What parts did you try and implement first?

The first part of the assignment that I tried to implement were the parts which came from lab 2 (build.sh, sentence.c, and makewords.c). I decided to implement these first since it would be a simple copy + paste for the most part, and it gave a good entry point for working on the assignment.

Next I decided to get unix_demo.sh working so that I could test the output for all of my different programs once I had them written.

From there I decided to work on getting all of the C programs written and implemented. I worked down the list first working on lowercase.c, then moving to sort.c, then unique.c, and then mismatch.c.

After I had a basic implementation of all of the C programs, I then decided to work on getting the bash script equivalents to the C programs written. Once again I worked down the list starting with sentence.sh, the moving to makewords.sh, then to lowercase.sh, then sort.sh, then unique.sh, and finally mismatch.sh.

## What issues did you run into? Were certain parts difficult or appear  more time-consuming than initially expected?

The most notable problem which I ran into while working on the assignment was getting sort.c and mismatch.c to function correctly. As a result of the way that I decided to implement these programs (by using delimiters to tokenize the input for use in an array), this resulted in the main functions not being able to run the code properly. As a result, a great deal of time was spent working on redoing the main functions to allow these two programs to work.

Another problem which I ran into while working on the assignment was trying to get mismatch.c and mismatch.sh to work properly. These two programs ended up being more complicated to get to work than I had originally anticipated and ended up taking quite a while to finish.

A last, more minor problem I ran into was trying to format outputs from all of my different programs correctly. Very frequently I was ending up woth problems where I had empty spaces appearing in places they shouldn't have been, so more time than I would have expected was spent on cleaning up output to be the same between the C programs and bash scripts.

## Describe at least two areas you need to research to solve these  problems.

One thing I will need to do a lot of research on for this assignment is delimiters/tokenizing strings. My initial research on how to write programs like sort and mismatch showed me that using delimiters to tokenize a string is a good way of going about solving the problem, however before this assignment I have never used either of these things before and have no idea how they work. As a result, this is something I will need to do a lot of research into to ensure I know what I am doing when I implement the programs.

Another area which I will need to research for this assignment is arrays and how to work with them. I mostly forsee needing to do research into taking input data to read into an array, and then being able to take the data within the array (after performing some kind of action) and then outputting it in string format. This information will likely be useful all throughout the assignment for getting the different programs to output data correctly.

## Describe a plan for how can you can work through the assignment to  solve these problems.

The plan I have for working through the assignment is to start with the easy parts, and then move to the harder parts. Once everything which is very simple and can be done very easily is complete, I will move on to the things which I believe I will have trouble understanding. From there I will likely do a lot of basic test implementations of pieces of the program involving things I do not yet understand. if all else fails, I will then ask a question to the course staff on Edstem.

## Provide a rough outline of the functions, data structures, and/or comments describing what you think you will need.

For this assignment I will need 6 different programs, each with a C and bash iteration (sentence, makewords, lowercase, sort, unique, and mismatch). I will also need a build.sh script to build all of the programs, and I will need a unix_demo.sh script to run all of the programs.

unix_demo.sh should be simple as this script is mostly outlined within the assignment handout, I will just need to run build.sh, and have the two lines of code which run all of my C/bash programs via piping.

build.sh will likely need a way of getting the file directory path. It will need some kind of check to make sure there are C files, likely using an if statement like this one:

if (no C files) {
    echo "Oops, we found no C code in the directory: FILE_PATH"
}

I will then need to compile all of the C files. This could be done via a looping structure like the one below:

for AMOUNT_OF_C_FILES {
    compile C file
}

sentence will need to read in a file using a line like 'file = openFile(filename);' (or filename="unix_sentence.text" for bash) It will then need to print out the contents of the file, this could be done via a looping structure like the one below:

while (file has contents on the current line) {
    print the current line to stdout
}

makewords will need to be able to insert a new line between all of the words in the input. This could be done via a looping structure like the one below:

for (input size) {
    if (current element of array is a space) {
        replace empty space with a new line
    }
}

lowercase should be a simple implementation. This will work by using a looping structure to go through each individual character from the input and set it to be lowercase using something like the loop below:

for (characters in the input) {
    change character to lowercase
}

sort will need a few different pieces to function. The first thing I will need is some kind of sorting logic. I will likely start with using bubble sort like the function below due to its easy implementation (just so that I can get something that works), however since this is a very slow algorithm I expect this to change to a different algorithm for the final implementation.

void bubble_sort(input array, count) {
    for (int i = 0; i < count - 1; i++) {
        for (int j = 0; j < count - i - 1; j++) {
            if (not alphabetical) {
                swap the words
            }
        }
    }
}

I will also need something in order to read the input into this algorithm for sorting. I will try to implement this via using delimiters to tokenize the input string and insert the data into an array. I will do this by using strdup and strtok to tokenize the input.

unique will need to have a function which is capable of checking the input to remove any duplicate words, this could be done by using a looping structure like the one below to remove duplicates by running through the input and populating an array with words it has not seen yet:

for (count = 0; things in input; count++) {
    for (count2 = 0; count2 < unique words found; count2++) {
        if (words are the same) {
            its a duplicate, don't add to array
        }
    }
    if (not a duplicate) {
        add to the array for output
    }
}

mismatch will first need a few different functions. It will need a function which reads in the dictionary file and inserts the data within into an array, this will be used to compare the input to the dictionary.

mismatch will also need to have a function which will check the input versus the dictionary, this could be done via a simple for loop like the one below:

for (counter variable < number of words) {
    if (current word is in dictionary) {
        its a word
    }
    else {
        its not a word
    }
}

That function will likely need to be used in another function which takes in the input from stdin. This function will use the same tokenizing logic from sort to put the input data into an array for comparison, and then run the above loop on the input data, it will then output anything it found which was not a word.

All of the C versions of these programs will also need to have logic within main to output the data to stdout. This will likely be done by doing something like 'fputs(output_from_program, stdout)' within the while loop from the stencil code.