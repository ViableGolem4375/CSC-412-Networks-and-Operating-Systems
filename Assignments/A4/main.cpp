//
//  main.cpp
//  inklings
//
//  Authors: Jean-Yves Hervé, Shaun Wallace, and Luis Hernandez
//

 /*-------------------------------------------------------------------------+
 |	A graphic front end for a grid+state simulation.						|
 |																			|
 |	This application simply creates a a colored grid and displays           |
 |  some state information in the terminal using ASCII art.			        |
 |	Only mess with this after everything else works and making a backup		|
 |	copy of your project.                                                   |
 |																			|
 |	Current Keyboard Events                                     			|
 |		- 'ESC' --> exit the application									|
 |		- 'r' --> add red ink												|
 |		- 'g' --> add green ink												|
 |		- 'b' --> add blue ink												|
 +-------------------------------------------------------------------------*/

#include <random>
#include <vector>
#include <cstdlib>
#include <ctime>
#include <iostream>
#include <thread>
#include <unistd.h>
#include <mutex>
#include <fstream>
#include <iomanip>
#include <sys/stat.h>
#include <chrono>

#include "ascii_art.h"

//==================================================================================
//	Function prototypes
//==================================================================================
void displayGridPane(void); // Function to display the grid pane
void displayStatePane(void); // Function to display the state pane
void initializeApplication(void); // Function to initialize the application
void threadFunction(InklingInfo* inkling); // Function for inkling thread behavior
void getNewDirection(InklingInfo* inkling); // Function to get a new direction for an inkling
bool checkIfInCorner(InklingInfo* inkling); // Function to check if an inkling is in a corner
void redColorThreadFunc(); // Function for red color producer thread
void greenColorThreadFunc(); // Function for green color producer thread
void blueColorThreadFunc(); // Function for blue color producer thread
bool checkEnoughInk(InklingInfo* inkling, int moveAmount); // Function to check if an inkling has enough ink for a move

//==================================================================================
//	Application-level global variables
//==================================================================================

//	The state grid and its dimensions
int** grid;
int NUM_ROWS, NUM_COLS;

//	the number of live threads (that haven't terminated yet)
int MAX_NUM_TRAVELER_THREADS;
int numLiveThreads = 0;

//vector to store each struct
std::vector<InklingInfo> info;
bool DRAW_COLORED_TRAVELER_HEADS = true;

//	the ink levels
int MAX_LEVEL = 50; // Maximum ink level
int MAX_ADD_INK = 10; // Maximum ink added at a time
int REFILL_INK = 10; // Amount of ink to refill
int redLevel = 20, greenLevel = 10, blueLevel = 40; // Initial ink levels for red, green, and blue

// create locks for color levels
std::mutex redLock; // Mutex for red ink level
std::mutex blueLock; // Mutex for blue ink level
std::mutex greenLock; // Mutex for green ink level
std::mutex blueCellLock; // Mutex for blue cell access
std::mutex redCellLock; // Mutex for red cell access
std::mutex greenCellLock; // Mutex for green cell access
std::mutex displayLock; // Mutex for synchronizing display functions

// ink producer sleep time (in microseconds)
// [min sleep time is arbitrary]
const int MIN_SLEEP_TIME = 30000; // 30000
int producerSleepTime = 100000; // 100000

// inkling sleep time (in microseconds)
int inklingSleepTime = 1000000; // 1000000


//==================================================================================
//	These are the functions that tie the simulation with the rendering.
//	Some parts are "don't touch."  Other parts need your help to ensure
//	that access to critical data and the ASCII art are properly synchronized
//==================================================================================

void displayGridPane(void) {
	//---------------------------------------------------------
	//	This is the call that writes ASCII art to render the grid.
	//
	//	It should be synchronized to prevent race conditions.
	//---------------------------------------------------------
	std::lock_guard<std::mutex> lock(displayLock); // Lock the mutex
    drawGridAndInklingsASCII(grid, NUM_ROWS, NUM_COLS, info); // Draw the grid and inklings
}

void displayStatePane(void) {
	//---------------------------------------------------------
	//	This is the call that updates state information
	//
	//	It should be synchronized to prevent race conditions.
	//---------------------------------------------------------
	std::lock_guard<std::mutex> lock(displayLock); // Lock the mutex
	drawState(numLiveThreads, redLevel, greenLevel, blueLevel); // Draw the state information
}

//------------------------------------------------------------------------
//	These are the functions that would be called by a inkling thread in
//	order to acquire red/green/blue ink to trace its trail.
//	You *must* synchronize access to the ink levels (C++ lock and unlock)
//------------------------------------------------------------------------
bool acquireRedInk(int theRed) {
	std::lock_guard<std::mutex> lock(redLock); // Lock the mutex
	bool ok = false;
	if (redLevel >= theRed)
	{
		redLevel -= theRed; // Deduct the required amount of red ink
		ok = true;
	}
	return ok;
}

bool acquireGreenInk(int theGreen) {
	std::lock_guard<std::mutex> lock(greenLock); // Lock the mutex
	bool ok = false;
	if (greenLevel >= theGreen)
	{
		greenLevel -= theGreen; // Deduct the required amount of green ink
		ok = true;
	}
	return ok;
}

bool acquireBlueInk(int theBlue) {
	std::lock_guard<std::mutex> lock(blueLock); // Lock the mutex
	bool ok = false;
	if (blueLevel >= theBlue)
	{
		blueLevel -= theBlue; // Deduct the required amount of blue ink
		ok = true;
	}
	return ok;
}


//------------------------------------------------------------------------
//	These are the functions that would be called by a producer thread in
//	order to refill the red/green/blue ink tanks.
//	You *must* synchronize access to the ink levels (C++ lock and unlock)
//------------------------------------------------------------------------
// You probably want to edit these...
bool refillRedInk(int theRed) {
	std::lock_guard<std::mutex> lock(redLock); // Lock the mutex
	bool ok = false;
	if (redLevel + theRed <= MAX_LEVEL)
	{
		redLevel += theRed; // Add the specified amount of red ink
		ok = true;
	}
	return ok;
}

bool refillGreenInk(int theGreen) {
	std::lock_guard<std::mutex> lock(greenLock); // Lock the mutex
	bool ok = false;
	if (greenLevel + theGreen <= MAX_LEVEL)
	{
		greenLevel += theGreen; // Add the specified amount of green ink
		ok = true;
	}
	return ok;
}

bool refillBlueInk(int theBlue) {
	std::lock_guard<std::mutex> lock(blueLock); // Lock the mutex
	bool ok = false;
	if (blueLevel + theBlue <= MAX_LEVEL)
	{
		blueLevel += theBlue; // Add the specified amount of blue ink
		ok = true;
	}
	return ok;
}

void speedupProducers(void) {
	// decrease sleep time by 20%, but don't get too small
	int newSleepTime = (8 * producerSleepTime) / 10;
	
	if (newSleepTime > MIN_SLEEP_TIME) {
		producerSleepTime = newSleepTime;
	}
}

void slowdownProducers(void) {
	// increase sleep time by 20%
	producerSleepTime = (12 * producerSleepTime) / 10;
}

void createLogFolder() {
    // Create a folder for log files with appropriate permissions
    const char* logFolder = "logFolder";
    mkdir(logFolder, 0755);
}

std::string getCurrentTime() {
    // Get the current time formatted as HH:MM:SS.mmm
    auto now = std::chrono::system_clock::now();
    auto in_time_t = std::chrono::system_clock::to_time_t(now);
    auto ms = std::chrono::duration_cast<std::chrono::milliseconds>(now.time_since_epoch()) % 1000;

    std::stringstream ss;
    ss << std::put_time(std::localtime(&in_time_t), "%H:%M:%S")
       << '.' << std::setfill('0') << std::setw(3) << ms.count();
    return ss.str();
}

void logInklingAction(const InklingInfo& inkling, const std::string& action) {
    // Log the action of an inkling to a file
    std::ofstream logFile;
    std::string fileName = "logFolder/inkling" + std::to_string(inkling.id) + ".txt";
    logFile.open(fileName, std::ios_base::app);
    logFile << getCurrentTime() << ",inkling" << inkling.id << ',' << inkling.color << ',' << action << '\n';
    logFile.close();
    chmod(fileName.c_str(), 0755); // Set file permissions to 0755
}


int main(int argc, char** argv) {
    // a try/catch block for debugging to catch weird errors in your code
    try {
        if (argc == 4) {
            // Parse command-line arguments for rows, columns, and threads
            int rows = std::stoi(argv[1]);
            int cols = std::stoi(argv[2]);
            int threads = std::stoi(argv[3]);

            // Validate the arguments
            if (rows >= 20 && cols >= 20 && threads >= 8) {
                NUM_ROWS = rows;
                NUM_COLS = cols;
                MAX_NUM_TRAVELER_THREADS = threads;
                numLiveThreads = threads;
            } else {
                throw std::invalid_argument("Invalid arguments: rows and cols must be >= 20, threads must be >= 8");
            }
        } else {
            // Default configuration if no arguments are provided
            std::cout << "No arguments provided, running with 8x8 grid and 4 threads.\n\tThis message will disappear in 2 seconds... \n";
            sleep(2);
            clearTerminal();
            NUM_ROWS = 8;
            NUM_COLS = 8;
            MAX_NUM_TRAVELER_THREADS = 4;
            numLiveThreads = 4;
        }

        // Initialize the front end and application
        initializeFrontEnd(argc, argv, displayGridPane, displayStatePane);
        initializeApplication();
        createLogFolder();

        // Create and detach producer threads for red, green, and blue ink
        std::thread redProducer(redColorThreadFunc);
        std::thread greenProducer(greenColorThreadFunc);
        std::thread blueProducer(blueColorThreadFunc);

        redProducer.detach();
        greenProducer.detach();
        blueProducer.detach();
        
        // Create and detach inkling threads
        std::vector<std::thread> inklingThreads;
        for (auto& inkling : info) {
            inklingThreads.emplace_back(threadFunction, &inkling);
        }

        for (auto& t : inklingThreads) {
            t.detach();
        }
        
        // Start the event loop
        myEventLoop(0);

        // Let the main thread sleep for 30 seconds before exiting
        std::this_thread::sleep_for(std::chrono::seconds(30));
        
    } catch (const std::invalid_argument& e) {
        std::cerr << "ERROR :: Invalid argument: " << e.what() << std::endl;
    } catch (const std::runtime_error& e) {
        std::cerr << "ERROR :: Runtime error: " << e.what() << std::endl;
    } catch (const std::exception& e) {
        std::cerr << "ERROR :: Unhandled exception: " << e.what() << std::endl;
    } catch (...) {
        std::cerr << "ERROR :: Unknown exception caught" << std::endl;
    }

    return 0;
}

void cleanupAndQuit(const std::string& msg) {
    // Display a quit message and clean up allocated resources
    std::cout << "Somebody called quits, goodbye sweet digital world, this was their message: \n" << msg;
	for (int i=0; i< NUM_ROWS; i++)
		delete []grid[i];
	delete []grid;

	// clear the inkling list
    exit(0);
}

void initializeApplication(void) {
	//	Allocate the grid
	grid = new int*[NUM_ROWS];
	for (int i=0; i<NUM_ROWS; i++)
		grid[i] = new int[NUM_COLS];
	
	//---------------------------------------------------------------
	//	The code block below to be replaced/removed
	//	I initialize the grid's pixels to have something to look at
	//---------------------------------------------------------------
	//	Random generator for the initial colors
	//	The initial cell color generation code should go away, but you
	//	should use tese for position and inkling type generation.
	std::random_device myRandDev;
	std::default_random_engine myEngine(myRandDev());
	
	for (int i=0; i<NUM_ROWS; i++) {
		for (int j=0; j<NUM_COLS; j++) {
			// Initialize the grid cells to 0
            grid[i][j] = 0;
		}
	}

	// Random generator for the initial positions and inkling types
    std::uniform_int_distribution<int> distRow(1, NUM_ROWS - 2);
    std::uniform_int_distribution<int> distCol(1, NUM_COLS - 2);
    std::uniform_int_distribution<int> distType(0, NUM_TRAV_TYPES - 1);

	// Initialize inklings at random locations on the grid
    for (int i = 0; i < MAX_NUM_TRAVELER_THREADS; ++i) {
        int x, y;
        do {
            x = distRow(myEngine);
            y = distCol(myEngine);
        } while (grid[x][y] != 0); // Ensure no two inklings start at the same location

		InklingType type = static_cast<InklingType>(distType(myEngine));
        InklingInfo inked = {type, x, y, EAST, true, 100, i}; // Initial direction set to EAST and ink level to 100
        info.push_back(inked);
        grid[x][y] = 1; // Mark the grid cell as occupied
    }
}

// Function executed by each inkling thread
void threadFunction(InklingInfo* inkling) {
    while (inkling->active) {
        // Check if the inkling is in a corner and get a new direction if needed
        if (checkIfInCorner(inkling)) {
            getNewDirection(inkling);
        }

        int moveAmount = 1;

        // Check if the inkling has enough ink to move
        if (checkEnoughInk(inkling, moveAmount)) {
            // Clear the current position
            //grid[inkling->row][inkling->col] = 0;
            std::string action = "move," + std::to_string(inkling->row) + "," + std::to_string(inkling->col);

            // Move the inkling in the current direction
            switch (inkling->dir) {
                case NORTH:
                    if (inkling->row > 0) inkling->row--;
                    break;
                case SOUTH:
                    if (inkling->row < NUM_ROWS - 1) inkling->row++;
                    break;
                case WEST:
                    if (inkling->col > 0) inkling->col--;
                    break;
                case EAST:
                    if (inkling->col < NUM_COLS - 1) inkling->col++;
                    break;
                default:
                    break;
            }

            // Mark the new position
            grid[inkling->row][inkling->col] = 1;
            logInklingAction(*inkling, action);
        } else {
            // If not enough ink, deactivate the inkling
            inkling->active = false;
            logInklingAction(*inkling, "terminate");
        }

        // Sleep for a specified time before the next move
        std::this_thread::sleep_for(std::chrono::microseconds(inklingSleepTime));
    }
}

// Function to get a new direction for an inkling
void getNewDirection(InklingInfo* inkling) {
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<int> dist(0, NUM_TRAVEL_DIRECTIONS - 1);
    inkling->dir = static_cast<TravelDirection>(dist(gen));

}

// Function to check if an inkling is in a corner
bool checkIfInCorner(InklingInfo* inkling) {
	return (inkling->row == 0 && inkling->col == 0) || 
           (inkling->row == 0 && inkling->col == NUM_COLS - 1) || 
           (inkling->row == NUM_ROWS - 1 && inkling->col == 0) || 
           (inkling->row == NUM_ROWS - 1 && inkling->col == NUM_COLS - 1);
}

// Function to check if an inkling has enough ink to move
bool checkEnoughInk(InklingInfo* inkling, int moveAmount) {
	std::lock_guard<std::mutex> lock(inkling->type == RED_TRAV ? redLock : 
                                     inkling->type == GREEN_TRAV ? greenLock : blueLock);
    if (inkling->inkLevel >= moveAmount) {
        inkling->inkLevel -= moveAmount;
        return true;
    }
    return false;
}

// Thread function for a red ink producer
void redColorThreadFunc() {
	while (true) {
        std::this_thread::sleep_for(std::chrono::microseconds(producerSleepTime));
        std::lock_guard<std::mutex> lock(redLock);
        if (redLevel < MAX_LEVEL) {
            redLevel += REFILL_INK;
        }
    }
}

// Thread function for a green ink producer
void greenColorThreadFunc() {
	while (true) {
        std::this_thread::sleep_for(std::chrono::microseconds(producerSleepTime));
        std::lock_guard<std::mutex> lock(greenLock);
        if (greenLevel < MAX_LEVEL) {
            greenLevel += REFILL_INK;
        }
    }
}

// Thread function for a blue ink producer
void blueColorThreadFunc() {
	while (true) {
        std::this_thread::sleep_for(std::chrono::microseconds(producerSleepTime));
        std::lock_guard<std::mutex> lock(blueLock);
        if (blueLevel < MAX_LEVEL) {
            blueLevel += REFILL_INK;
        }
    }
}