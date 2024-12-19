#include <iostream>
#include <fstream>
#include <string>

int main(int argc, char* argv[]) {
    std::string line;
    std::ofstream outfile;

    // Check if a filename is provided as a command-line argument
    if (argc > 1) {
        outfile.open(argv[1]);
        if (!outfile) {
            std::cerr << "Error opening file: " << argv[1] << std::endl;
            return 1;
        }
    }

    while (std::getline(std::cin, line)) {
        std::cout << line << std::endl;
        if (outfile.is_open()) {
            outfile << line << std::endl; // Write to file if open
        }
    }

    // Close the file if it was opened
    if (outfile.is_open()) {
        outfile.close();
    }

    return 0;
}