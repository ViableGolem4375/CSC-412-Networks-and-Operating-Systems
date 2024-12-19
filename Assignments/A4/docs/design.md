## My design document will follow a planning first approach.

## My Plan

The first thing I plan on starting with for this assignment is just to read through the provided code base and try to get a really strong understanding of what each part is doing and how it interacts with the rest of the program at large. I believe this will be useful as it will aid in my understanding of what the problems are with the given code and how to fix them effectively. This will also include a test submission to Gradescope without any changes to see what the tests look like.

Once I understand how the code works, I will attempt to complete part 2 of the assignment where I implement the inklings as multiple threads. I believe this is a good thing to get done before everything else as making sure the basic functionality of the code is working will make any potential improvements much easier, along with also maybe allowing for completion of two things at once due to a change made for part 2 also applying as an improvement for part 4.

Next I will attempt to get the log file creating done, this seems like it will be a logical next step after getting the threads portion done as from there it should not be too complicated to create files to store data I have already been using.

Lastly I will attempt to implement the program improvements. This seems like a good thing to do after all of the functionality parts are complete as by then I will have a better understanding of how the code is operating due to working with it for so long, along with it being easier to make improvements on code which actually functions correctly.

## Two Areas That May be Time Consuming

The first area which I expect to be time consuming is just understanding the code. This is a much larger codebase than I am used to working with on a regular basis, so wrapping my head around it may be a challenge, along with knowing that the code given has intentional issues which may make it even harder to understand.

The second area I expect to be time consuming is understanding how to implement and work with threads within a program. Threads are something completely new to me as a whole, so my knowledge on them is limited to just what was discussed in class. I expect this to make it the hardest part of the assignment for me to understand and get working.

## Research Areas

One area I expect to have to do research into is threads, given that they are a major part of the assignment ans that my understanding of them is quite limited, this will likely be the area which I have to do the most research into throughout this assignment in order to understand how they work and how to implement them within the context of the inklings.

Another area I expect to have to do research into is working with ASCII art GUIs. This is something I have had limited experience with so far and while conceptually it is not very complex, it's something I have done very little of which will likely make it a main focus of my research.

I also will likely need to do a bit research into function safety and how it relates to keeping the program running. I believe this will be a necessary research topic because in order to make sure it passes the necessary tests, I will need to look through the code base and find out what is unsafe and causing problems, since this is something I am not the most familiar with, I will need to do a bit of looking into how things can be unsafe and what they may be.

## Provide a rough outline of the functions, data structures, and/or comments describing what you think you will need.

### Things I will need for main.cpp

One thing I will likely need to do is build a struct for a information about the inklings within main. The struct will contain all of the information about its position, color, etc. it will likely look something like this:

struct InklingInfo {
    int color;
    int x, y;
    int direction;
    bool active;
    int inkLevel;
};

Another thing I will likely need to do is replace the grid which is currently made up of raw pointers with a vector based grid. I could do this with a line like this:

std::vector<std::vector<int>> grid;

For threadFunction within main, I will attempt to use a while loop to move the inkling around the grid. It will likely look something like this:

while (inkling is active) {
    // move the inkling
}

// afterwards sleep the thread for some time

For the three color thread functions, I intend to use a while loop with a conditional if statement within to fill up the ink tanks. I will do this by utilizing mutexes within the while loop to ensure nothing conflicts, it will likely look something like this:

while (somevariable = true) {
    // sleep the thread

    // create the mutex
    if (inklevel < max>) {
        // fill the ink
    }
}

The above logic should be easily applicable to all three functions, I will just need to edit the if statement to fill the correct ink tank.

### Things I will need for ascii_art.cpp

One thing I will likely need to add is a better way to manage commands the program reads in. A way I could go about this is by implementing a queue to read the commands in. I will attempt to keep this queue thread-safe by implementing a mutex within the queue, it will look something like the below pseudocode.

// create the queue here
// create a mutex here

void enqueue(command) {
    // activate mutex
    queue.push(command);
}

void dequeue() {
    // activate mutex
    // wait
    // set command to the front of the queue
    // pop off the queue
    // return the command
}

Another thing I could add to ascii_art.cpp is better disabling of raw mode within the keyListener() function. I will attempt to do this by using a try/catch statement within the function like the one below.

void keyListener() {
    enableRawMode();
    try {
        char c;
        c = std::cin.get();
        myKeyboard(c);
    } catch (// add condition here) {
        disableRawMode();
        throw;
    }
    disableRawMode();
}

