## Change 1: Improvements to ascii_art.cpp

### Proposed Change Summary

During my work on assignment 4, I noticed some small problems with the way ascii_art was written. I noticed a lack of consistent error handling within the program, along with a lack of thread safety in the program, and some things that could result in worse performance within the drawing functions.

Noting this, I decided to implement improvements in these two areas to handle edge cases better and have better thread safety throughout the program.

### Describing the Problem

Issue: The original ascii_art.cpp code had various small issues, including a lack of error handling, performance issues, and various thread safety problems.

Steps to Reproduce:

1. Compile the original code using a C++ compiler (e.g., g++ ascii_art.cpp -o ascii_art).

2. Run the program and interact with the ASCII art GUI.

3. Observe potential runtime issues such as race conditions, improper terminal handling, and performance bottlenecks.

The lack of error handling and thread safety problems are consistent when the program is run.

### Describing the Solution

Approach:

1. Error Handling: Add robust error handling, especially for file operations and system calls.

2. Thread Safety: Ensure all shared resources are properly protected by mutexes to avoid race conditions.

3. Performance Optimization: Optimize the drawing functions to reduce flickering and improve performance.

Benefits to These Changes:

- Reliability: Improved error handling and thread safety make the program more robust.

- Performance: Optimizations lead to smoother execution and better user experience.

Code Changes:

- Error Handling: Added try-catch blocks and error messages for file operations and system calls.

- Thread Safety: Used mutexes to protect shared resources and prevent race conditions.

- Performance Optimization: Improved the drawing functions to minimize terminal flickering.

Data Structures and Algorithms Used:

- Mutexes: Used to ensure thread safety.

- Improved Looping Logic: used within drawGridAndInklingsASCII for better performance.

### Testing

Testing Steps:

1. Compile the Code: Ensure the code compiles without errors using a C++ compiler (e.g., g++ ascii_art.cpp -o ascii_art).

2. Run the Program: Execute the program and interact with the ASCII art GUI.

3. Functionality Testing: Test all keyboard inputs (e.g., ESC key, ‘r’, ‘g’, ‘b’, ‘<’, ‘>’) to ensure they work as expected.

4. Thread Safety Testing: Run the program in a multi-threaded environment and observe for any race conditions or crashes.

5. Performance Testing: Monitor the terminal for flickering and ensure smooth updates.

## Change 2: Adding Additional Error Handling to main.cpp

### Proposed Change Summary

While I was working through finishing the main function within main.cpp, I noticed that there were some potential edge cases which could occur during run time that would cause problems if they were triggered.

As a result of this discovery, I decided to implement additional, improved error handling within the main function to avoid these issues.

### Describing the Problem

Issue: The original code lacked comprehensive exception handling, which could lead to unhandled exceptions causing the program to crash unexpectedly. 

Steps to Reproduce:

1. Compile the original code using a C++ compiler (e.g., g++ ascii_art.cpp -o ascii_art).

2. Run the program using invalid command line arguments, or run the program without creating a directory for various files.

The errors were not consistently the same; they varied depending on the specific issue encountered during execution.

### Describing the Solution

Approach: 

1. Add error handling to the main function.

2. This includes handling exceptions such as std::invalid_argument or std::runtime_error

3. Implement the error handling within a try/catch block.

Benefits:

- Avoids random crashing when running the program.

- Provides better explanations when things do go wrong.

- Protects from erroneous input to the program.

Code Changes:

- Exception Handling: Added try-catch blocks in the main function to handle different types of exceptions (std::invalid_argument, std::runtime_error, and std::exception). This ensures that any unexpected errors are caught and handled appropriately.

- Error Messages: Improved error messages found in the code.

Data Structures and Algorithms Used:

- Exception Handling: Applied standard C++ exception handling mechanisms to catch and manage errors.

- Try/Catch Block: used a try/catch block to contain the error handling mechanisms and apply them if and when necessary.

### Testing

Testing Steps:

1. Compile the original code using a C++ compiler (e.g., g++ ascii_art.cpp -o ascii_art).

2. Test command line arguments, try running with a valid input (e.g. ./inklings 20 20 8) and also try running with an invalid input (e.g. ./inklings 10 10 5) and make sure the output is correct.

3. Simulate runtime errors, this can be done by modifying the createLogFolder() function to use an invalid folder name, then test to make sure the exception is handled properly by main.