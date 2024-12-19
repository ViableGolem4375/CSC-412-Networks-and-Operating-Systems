#include <iostream>
#include <fstream>
#include <string>
#include <vector>

// Function to read from standard input and write to standard output and files (taken as arguments). If not files are given, just write to stdout.
int main(int argc, char* argv[]) {
    std::string line;
    std::vector<std::ofstream> outfiles;

    // Open multiple files if filenames are provided as command-line arguments
    for (int i = 1; i < argc; ++i) {
        std::ofstream outfile(argv[i]);
        if (!outfile) {
            // Error message for if the file was invalid.
            std::cerr << "Error: Could not open file " << argv[i] << "." << std::endl;
        } else {
            outfiles.push_back(std::move(outfile));
        }
    }

    // While there are still files to read from, write to stdout.
    while (std::getline(std::cin, line)) {
        std::cout << line << std::endl; // Write to stdout
        for (auto& outfile : outfiles) {
            if (outfile.is_open()) {
                outfile << line << std::endl; // Write to each file
            }
        }
    }

    // Close all files
    for (auto& outfile : outfiles) {
        if (outfile.is_open()) {
            outfile.close();
        }
    }

    return 0;
}