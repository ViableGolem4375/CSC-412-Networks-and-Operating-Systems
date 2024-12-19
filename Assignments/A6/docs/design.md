
## My design document will follow a planning first approach.

## My Plan

The first thing I plan on doing for this assignment is to read through the given code base, and then read through all of the given unit tests. Similarly to A4 and A5, I believe that reading through the code will give me a better understanding of what all of the different pieces are doing which in turn will make it easier to complete the different parts of the assignment.

From there I believe that looking into the different given tests will give me a good understanding of how it wants me to implement the different functions within the program. I will likely try to look through the tests in "chunks" starting with the relevant ones for part 1 of the assignment, the moving on to the relevant tests for part 2 and so on.

Once I have a good understanding of the code base and the given tests, I plan on working through the assignment step by step, starting with the first part on the assignment handout and working my way down. I believe this is the best way of going about completing the assignment as like was discussed in class, earlier test cases allow for functionality which will allow for later test cases to pass, so working through the assignment "in order" will prevent any strange behavior from occurring.

Once I get all of the basic tests working for the assignment, if there is time remaining I will work on the extra credit portion of the assignment. I see myself likely working through the writing portion of the extra credit first, then moving on to implementing drealloc(), and then fiunally if there is time I will attempt to implement the line number lookup.

## Two Areas That May be Time Consuming

Similarly to both A4 and A5, I expect that the most time consuming part of A6 will be understanding the code and autograder tests. Though this code base is smaller than the last two were, it still operates with a lot of moving parts, many of which are new to me so learning enough about the code I expect to be a time consuming process.

Another area I expect to be time consuming is underatanding boundary errors. This as a concept is very new to me and from looking through the assignment handout, it looks like this may be something which is very complex. As a result I will likely need to do a bit of research into how these work so that I can understand them well enough to implement a protection against them.

Lastly, I also expect the memory leak reporting to be a time consuming process. I believe this because simply keeping track of all of the different memory allocations and memory frees I will likely be using throughout this assignment seems like it may be a difficult task. As a result I expect to spend quite a bit of time trying to keep track of it all so that my implementation for this portion of the assignment works.

## Research Areas

One area I will need to do a bit of research into is boundary errors. As written above, these are a new concept to me, at least in the realm of programming. As a result I expect to spend a fair bit of time just looking into how these work and what causes them so that I can implement a solution that prevents them from occurring in order to pass the tests.

Another area I expect to have to do research into is C++ vs C style memory allocation. Reading through the assignment handout has made me aware that this will be necessary to pass the last few autograder tests. Since I am currently unsure of what the difference is between the two, I expect to be doing a bit of research into memory allocation in the two languages in order to make sure my implementation works with both.

Lastly, I expect to need to do some research into time efficient methods of working through each portion of the assignment. Considering test 34 has a performance metric it operates off of, I will need to make sure that all of my implementations for the functions in this assignment are as time efficient as possible, so I will need to look into different methods of accomplishing the goals within this assignment to find out what is the fastest way of accomplishing the task.

## Provide a rough outline of the functions, data structures, and/or comments describing what you think you will need.

### Memory Struct:

For this assignment, I believe it may be a good idea to define a struct which contains some necessary information that the different functions in the program will need. I will define the struct like below:

struct Mem {
    void* pointer; // A pointer variable to the allocated memory.
    size_t block_size; // Size of the block of memory.
    struct Mem* next; // A pointer variable to the next memory block in the list.
}

### Things I will need for get_statistics():

For the get_statistics function, I will likely use some variable declarations which are set to values retrieved by some helper functions. I will set up get_statistics like the code below:

    stats->nactive = get_active_allocations();
    stats->ntotal = get_total_allocations();
    stats->nfail = get_failed_allocations();
    stats->active_size = get_active_allocation_size();
    stats->total_size = get_total_allocation_size();
    stats->fail_size = get_failed_allocation_size();

And then for each of the "get" functions I will have an implementation something like this (the return value will change depending on the necessary value).:

size_t get_active_allocations() {
    // Return the current number of active allocations
    return active_allocations_count;
}

### Things I will need for dmalloc():

For dmalloc(), I will attempt to use an if statement to check for integer overflows, add the necessary information to the memory block, and then return base_malloc(sz) like the pseudocode below:

    if (// Logic to check for an overflow goes here.) {
        return NULL;
    }

    if (pointer variable here) {
        // Add the new memory block to the list here.
        // Then add new information about the block like this:
        block->ptr = ptr;
        // Repeat for different data fields.
    }

    return base_malloc(sz);

### Things I will need for dcalloc():

For dcalloc(), I will use a similar method to dmalloc() for handling integer overflows. I will use an if statement to check if one has occurred, and then utilize a pointer variable to step through the given memory and allocate the memory dynamically like in the pseudocode below:

    if (// Check for integer overflow here.) {
        return NULL;
    }

    void* ptr = dmalloc(// Include some necessary information here);
    if (ptr) {
        //memset function call here to allocate memory
    }
    return ptr;

### Things I will need for dfree():

For dfree(), I will attempt to use a while loop to go through the existing memory and free everything. From there I will have some cases that if reached, trigger an error message for cases like bad frees, double frees, and boundary write errors. This may look something like the pseudocode below:

    // Define some pointer variable here.
    while(pointer variable) {
        if(pointer has a next target to jump to) {
            // Implement memory freeing logic.
        }
        // Move the pointer.
    }

    // Insert some logic here to make it so if this is reached, errors trigger.
    // Logic for error 1
    fprintf("Error message for bad free.);
    // Logic for error 2
    fprintf("Error message for double free.);
    // Logic for error 3
    fprintf("Error message for boundary error.);

### Things I will need for print_leak_report():

For print_leak_report(), I will use the head pointer variable in the Mem struct to step through everything which has been allocated in the system. I will do this simething like the pseudocode below:

Mem* current = head;

while(current) {
    printf("A correctly formatted message here.")
    // Then move the pointer.
}