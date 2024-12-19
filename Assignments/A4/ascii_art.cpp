//
//  ascii_art.cpp
//
//  Authors: Jean-Yves Hervé, Shaun Wallace, and Luis Hernandez
//

#include <iostream>
#include <vector>
#include <cstring>
#include <cstdlib>
#include <fstream>
#include <string>
#include <map>
#include <chrono>
#include <thread>
#include <functional>
#include <termios.h>
#include <fcntl.h>
#include <stdio.h>
#include <unistd.h>
#include <mutex>
#include <atomic>

#include "ascii_art.h"

//---------------------------------------------------------------------------
//  Global Variables and Constants
//---------------------------------------------------------------------------
std::mutex mtx; // Mutex for synchronizing access to shared resources
std::string pipePath = "/tmp/my_pipe"; // Path to the named pipe
static unsigned int numPipesOpen = 0; // Number of open pipes
static int pipe_fd; // File descriptor for the pipe

// External variables defined elsewhere
extern bool DRAW_COLORED_TRAVELER_HEADS;
extern int inklingSleepTime;
extern int MAX_LEVEL;
extern int MAX_ADD_INK;
extern int MAX_NUM_TRAVELER_THREADS;
extern int producerSleepTime;

// Function pointers for display functions
void (*gridDisplayFunc)(void);
void (*stateDisplayFunc)(void);

//---------------------------------------------------------------------------
//  Function Prototypes
//---------------------------------------------------------------------------
bool acquireRedInk(int theRed);
bool acquireGreenInk(int theGreen);
bool acquireBlueInk(int theBlue);
bool refillRedInk(int theRed);
bool refillGreenInk(int theGreen);
bool refillBlueInk(int theBlue);

void fillTank(int y, int LEVEL_WIDTH);
void myKeyboard(unsigned char c);
void myEventLoop(int val);
void setTextColor(TextColor color);
void resetTextColor();
void print();
template <typename T, typename... Args>
void print(const T& first, const Args&... rest);
void printCell();
template <typename T, typename... Args>
void printCell(const T& first, const Args&... rest);
void clearTerminal();
void drawGridAndInklingsASCII(int** grid, int numRows, int numCols, std::vector<InklingInfo>& inklingList);
void drawState(int numLiveThreads, int redLevel, int greenLevel, int blueLevel);
void updateTerminal();
void enableRawMode();
void disableRawMode();
void keyListener();
void customTimerFunc(int milliseconds, std::function<void(int)> func, int val);
void initializeFrontEnd(int argc, char** argv, void (*gridDisplayCB)(void), void (*stateDisplayCB)(void));

//---------------------------------------------------------------------------
//  Function Definitions
//---------------------------------------------------------------------------

// Set the text color in the terminal
void setTextColor(TextColor color) {
    std::cout << "\033[" << static_cast<int>(color) << "m";
}

// Reset the text color to default
void resetTextColor() {
    setTextColor(TextColor::DEFAULT);
}

// Print a newline and reset text color
void print() {
    resetTextColor();
    std::cout << std::endl;
}

// Print a series of arguments with optional text color
template <typename T, typename... Args>
void print(const T& first, const Args&... rest) {
    if constexpr (std::is_same_v<T, TextColor>) {
        setTextColor(first);
    } else {
        std::cout << first;
    }
    print(rest...);
}

// Reset text color for cell printing
void printCell() {
    resetTextColor();
}

// Print a cell with optional text color
template <typename T, typename... Args>
void printCell(const T& first, const Args&... rest) {
    if constexpr (std::is_same_v<T, TextColor>) {
        setTextColor(first);
    } else {
        std::cout << first;
    }
    printCell(rest...);
}

// Clear the terminal screen
void clearTerminal() {
    std::cout << "\033[H\033[J";
}

// Draw the grid and inklings in ASCII art
void drawGridAndInklingsASCII(int** grid, int numRows, int numCols, std::vector<InklingInfo>& inklingList) {
    // Draw top border
    std::cout << " ";
    for (int col = 0; col < numCols; ++col) {
        std::cout << "---";
    }
    std::cout << "-" << std::endl;

    for (int row = 0; row < numRows; ++row) {
        // Draw left border
        std::cout << "|";
        for (int col = 0; col < numCols; ++col) {
            bool inklingFound = false;
            // Check if there is an inkling in this grid spot
            for (auto& inkling : inklingList) {
                if (inkling.isLive && row == inkling.row && col == inkling.col) {
                    switch (inkling.type) {
                        case RED_TRAV:
                            printCell(TextColor::RED, "[", iconDirections[inkling.dir], "]");
                            break;
                        case GREEN_TRAV:
                            printCell(TextColor::GREEN, "[", iconDirections[inkling.dir], "]");
                            break;
                        case BLUE_TRAV:
                            printCell(TextColor::BLUE, "[", iconDirections[inkling.dir], "]");
                            break;
                    }
                    inklingFound = true;
                    break;
                }
            }
            if (!inklingFound) {
                printCell(TextColor::BLACK, "[ ]");
            }
        }
        // Draw right border
        std::cout << "|" << std::endl;
    }

    // Draw bottom border
    std::cout << " ";
    for (int col = 0; col < numCols; ++col) {
        std::cout << "---";
    }
    std::cout << "-" << std::endl;
}

// Placeholder function for filling the tank
void fillTank(int y, int LEVEL_WIDTH) {
    print("fillTank", y, LEVEL_WIDTH);
}

// Draw the state of the grid
void drawState(int numLiveThreads, int redLevel, int greenLevel, int blueLevel) {
    print(TextColor::BLACK, "Ink Tank Levels, the MAX is: ", MAX_LEVEL);
    print(TextColor::RED, "Red: ", redLevel, TextColor::GREEN, " Green: ", greenLevel, TextColor::BLUE, " Blue: ", blueLevel);
    print("Live Threads: ", numLiveThreads);
    print();

    if (numLiveThreads == 0) {
        cleanupAndQuit("drawState calling it quits, no threads left...");
    }
}

// Update the terminal display
void updateTerminal() {
    try {
        clearTerminal();
        gridDisplayFunc();
        stateDisplayFunc();
    } catch (const std::exception& e) {
        std::cerr << "ERROR: updateTerminal caught exception: " << e.what() << std::endl;
    } catch (...) {
        std::cerr << "ERROR: updateTerminal caught an unknown exception" << std::endl;
    }
}

// Enable raw mode for terminal input
void enableRawMode() {
    termios term;
    tcgetattr(STDIN_FILENO, &term);
    term.c_lflag &= ~(ICANON | ECHO);
    tcsetattr(STDIN_FILENO, TCSANOW, &term);
}

// Disable raw mode for terminal input
void disableRawMode() {
    termios term;
    tcgetattr(STDIN_FILENO, &term);
    term.c_lflag |= ICANON | ECHO;
    tcsetattr(STDIN_FILENO, TCSANOW, &term);
}

// Listen for keyboard input in raw mode
void keyListener() {
    // Try/catch block to check for erroneous inputs
    try {
        enableRawMode();
        char c;
        while (true) {
            c = std::cin.get();
            if (c == 27) { // ESC key to exit
                break;
            }
            myKeyboard(c);
        }
        disableRawMode();
    } catch (const std::exception& e) {
        std::cerr << "Exception in keyListener: " << e.what() << std::endl;
        disableRawMode();
    } catch (...) {
        std::cerr << "Unknown exception in keyListener" << std::endl;
        disableRawMode();
    }
}

// Handle keyboard input
void myKeyboard(unsigned char c) {
    bool ok = false;
    switch (c) {
        case 27: // ESC key
            cleanupAndQuit("I see you pressed ESC, game over...");
            break;
        case '<':
            slowdownProducers();
            break;
        case '>':
            speedupProducers();
            break;
        case 'r':
            ok = refillRedInk(MAX_ADD_INK);
            break;
        case '+':
            if (inklingSleepTime - 100000 > 0) {
                inklingSleepTime -= 100000;
            }
            break;
        case '-':
            if (inklingSleepTime + 100000 < 2147483647) {
                inklingSleepTime += 100000;
            }
            break;
        case 'g':
            ok = refillGreenInk(MAX_ADD_INK);
            break;
        case 'b':
            ok = refillBlueInk(MAX_ADD_INK);
            break;
        default:
            ok = true;
            break;
    }

    if (!ok) {
        // print a message maybe?
    }
}

// Custom timer function to execute a callback after a specified delay
void customTimerFunc(int milliseconds, std::function<void(int)> func, int val) {
    std::thread([=]() {
        try {
            // Sleep for the specified duration
            std::this_thread::sleep_for(std::chrono::milliseconds(milliseconds));
            // Execute the callback function with the provided value
            func(val);
        } catch (const std::exception& e) {
            std::cerr << "ERROR darn :: customTimerFunc :: exception in thread: " << e.what() << std::endl;
        } catch (...) {
            std::cerr << "ERROR ah fudge :: customTimerFunc :: unknown exception in thread" << std::endl;
        }
    }).detach(); // Detach the thread to run independently
}

// Main event loop function
void myEventLoop(int val) {
    // Update the terminal display
    updateTerminal();

    // Start a thread to listen for keyboard input
    std::thread listenerThread(keyListener);
    listenerThread.detach();

    // Static atomic variable to track recursion depth
    static std::atomic<int> recursiveDepth = 0;

    {
        std::lock_guard<std::mutex> lock(mtx);
        // Limit recursion depth to prevent stack overflow
        if (recursiveDepth >= 5) {
            return;
        }
        ++recursiveDepth;
    }

    // Schedule the next call to myEventLoop after 1 second
    customTimerFunc(1000, myEventLoop, val);

    {
        std::lock_guard<std::mutex> lock(mtx);
        --recursiveDepth;
    }

    // Sleep for 1 second before continuing
    std::this_thread::sleep_for(std::chrono::seconds(1));

    // Check if the named pipe exists
    if (access(pipePath.c_str(), F_OK) == 0) {
        // Open the pipe if it's not already open
        if (numPipesOpen == 0) {
            pipe_fd = open(pipePath.c_str(), O_RDONLY | O_NONBLOCK);
            numPipesOpen++;
        }

        // Read commands from the pipe
        if (pipe_fd > 0) {
            char command;
            int bytes_read = read(pipe_fd, &command, sizeof(command));
            if (bytes_read > 0) {
                myKeyboard(command); // Handle the command
            }
        }
    }
}

// Initialize the front end with display callback functions
void initializeFrontEnd(int argc, char** argv, void (*gridDisplayCB)(void), void (*stateDisplayCB)(void)) {
    gridDisplayFunc = gridDisplayCB; // Set the grid display callback
    stateDisplayFunc = stateDisplayCB; // Set the state display callback
    updateTerminal(); // Initial update of the terminal display
}