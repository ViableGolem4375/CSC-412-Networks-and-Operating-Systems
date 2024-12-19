#ifndef COMMON_H
#define COMMON_H

#include <iostream>
#include <cstring>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <unistd.h>

#define PORT 8080 // Define the port number for communication.

// Function to check command-line arguments.
// Exits the program with a funny message if any arguments are provided.
void checkargs(int argc, const char *argv[]) {
    if (argc > 1) {
        std::cerr << "You naughty little elf, this program takes no command-line arguments. :/" << std::endl;
        for (int i = 0; i < argc; ++i) {
            std::cout << "\targument " << i << ": " << argv[i] << std::endl;
        }
        exit(1);
    }
}

// Function to print an error message and exit the program.
void pserror(const char *msg) {
    perror(msg);
    exit(EXIT_FAILURE);
}

#endif // COMMON_H