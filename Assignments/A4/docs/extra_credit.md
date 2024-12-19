## Change 3: Improved GUI

### Proposed Change Summary

While working through the assignment, I had noticed that the existing GUI that was created was not the greatest and often looked very messy while the program was running, noting this, I decided it would be a good idea to go about improving the GUI to look cleaner.

### Describing the Problem

Issue: The original GUi was messy and hard to read, this resulted in a harder time working through the assignment and trying to figure out what I was looking at during testing.

Steps to Reproduce:

1. Compile the original code using a C++ compiler (e.g., g++ ascii_art.cpp -o ascii_art).

2. Run the program and interact with the ASCII art GUI.

3. Observe the GUI and make sure it displays properly.

The GUI and all of its problems do display consistently.

### Describing the Solution

Approach:

1. Change the visuals of the GUI to enable for more readability.

2. Add borders to the grid to allow for better readability.

Benefits to These Changes:

- Readability: The GUI becomes neater and easier to read which makes using the program easier.

- Easier Testing: With the better visuals, testing changes becomes easier as seeing what is happening within the program becomes an easier task.

Code Changes:

- Addition of a border around the grid for a cleaner look.

Data Structures and Algorithms Used:

- Additions to the existing for loop within ght grid drawing function.

### Testing

1. Compile the Code: Ensure the code compiles without errors using a C++ compiler (e.g., g++ ascii_art.cpp -o ascii_art).

2. Run the Program: Execute the program and interact with the ASCII art GUI, ensure that the GUI displays correctly with the added changes.