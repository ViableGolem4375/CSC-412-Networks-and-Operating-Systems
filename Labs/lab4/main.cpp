#include <iostream>
#include <fstream>
#include <thread>
#include <vector>
#include <random>
#include <sys/stat.h>
#include <sys/types.h>
#include <unistd.h>
#include <fcntl.h>

std::string directoryName = "logFolder";

void threadFunc(int num){
    // calculate the factorial of num
    unsigned long long factorial = 1;
    for (int i = 1; i <= num; ++i) {
        factorial *= i;
    }

    // create a file with the proper permissions
    std::string filename = directoryName + "/thread" + std::to_string(num) + ".txt";
    int fileDescriptor = open(filename.c_str(), O_WRONLY | O_CREAT, 0755);
    if (fileDescriptor < 0) {
        std::cerr << "Error creating file: " << filename << std::endl;
        return;
    }

    // write the information to the file and then close the file
    std::ofstream file(filename);
    if (file.is_open()) {
        file << "This thread's value is " << num << "." << "\n";
        file << "The factorial of " << num << " is " << factorial << "." << std::endl;
        file.close();
    } else {
        std::cerr << "Unable to open file: " << filename << std::endl;
    }

    // set the file permissions
    chmod(filename.c_str(), 0755);

    close(fileDescriptor);
}

int genRandNumber(int min, int max) {
    // use std::random_device to obtain a seed
    std::random_device rd;

    // use the random device to seed a random number engine
    std::mt19937 gen(rd());

    // define the range [min, max]
    std::uniform_int_distribution<> dis(min, max);

    // generate and return the random number
    return dis(gen);
}

// we are not using  char* argv[], to avoid warnings we use char**
int main(int argc, char**) {
    // generate random number using genRandNumber
    int randomNum = genRandNumber(1, 10);

    // check for arguments
    if (argc > 1) {
        std::cout << "You silly rabbit, this program accepts no arguments; running with 3 threads." << std::endl;

        // create the directory (0755 are the permissions)
        const char* dirName = "logFolder";
        struct stat info;
        if (stat(dirName, &info) != 0) {
            // Directory does not exist, create it
            if (mkdir(dirName, 0755) != 0) {
                std::cerr << "Error creating directory: " << dirName << std::endl;
                return 1;
            }
        } else if (!(info.st_mode & S_IFDIR)) {
            // Path exists but is not a directory
            std::cerr << "Path exists but is not a directory: " << dirName << std::endl;
            return 1;
        }

        // create exactly 3 threads
        std::vector<std::thread> threadList;
        for (int i = 1; i <= 3; ++i) {
            threadList.emplace_back(threadFunc, i);
        }

        // wait for all threads to complete
        for (auto& th : threadList) {
            th.join();
        }

        return 1;
    }

    // create the directory (0755 are the permissions)
    const char* dirName = "logFolder";
    struct stat info;
    if (stat(dirName, &info) != 0) {
        // Directory does not exist, create it
        if (mkdir(dirName, 0755) != 0) {
            std::cerr << "Error creating directory: " << dirName << std::endl;
            return 1;
        }
    } else if (!(info.st_mode & S_IFDIR)) {
        // Path exists but is not a directory
        std::cerr << "Path exists but is not a directory: " << dirName << std::endl;
        return 1;
    }

    // create the proper amount of threads
    // pass all required information to the threads
    std::vector<std::thread> threadList;
    for (int i = 1; i <= randomNum; ++i) {
        threadList.emplace_back(threadFunc, i);
    }

    // wait for all threads to complete
    for (auto& th : threadList) {
        th.join();
    }

    return 0;
}