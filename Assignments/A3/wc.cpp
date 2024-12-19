#include <iostream>
#include <fstream>
#include <string>
#include <sstream>
#include <iomanip>
#include <cstdlib> // For realpath
#include <cstring> // For strerror
#include <unistd.h>
#include <limits.h>
#include <iostream>

// Function to get the line, word, and byte counts for some input.
void count_lines_words_bytes(std::istream& input, const std::string& source, size_t& total_lines, size_t& total_words, size_t& total_bytes) {
    // Variable declarations.
    std::string line;
    size_t line_count = 0;
    size_t word_count = 0;
    size_t byte_count = 0;

    // While there is still input to read from, cycle through it and count the number of lines, words, and bytes.
    while (std::getline(input, line)) {
        ++line_count;
        byte_count += line.size() + 1; // +1 for the newline character
        std::istringstream iss(line);
        std::string word;
        while (iss >> word) {
            ++word_count;
        }
    }

    // Total the values from the above loop.
    total_lines += line_count;
    total_words += word_count;
    total_bytes += byte_count;

    // Check to see if the input wasn't read from stdin, then output.
    if (source != "stdin") {
        std::cout << line_count << " " << word_count << " " << byte_count << " " << source << std::endl;
    }
}

int main(int argc, char* argv[]) {
    // Variable declarations.
    size_t total_lines = 0;
    size_t total_words = 0;
    size_t total_bytes = 0;
    bool multiple_files = (argc > 2);
    bool valid_file_found = false;

    if (argc == 1) {
        // No files provided, read from stdin
        count_lines_words_bytes(std::cin, "stdin", total_lines, total_words, total_bytes);
        std::cout << total_lines << " " << total_words << " " << total_bytes << " (stdin)" << std::endl;
    } 
    else {
        // Otherwise, read from files.
        for (int i = 1; i < argc; ++i) {
            std::ifstream infile(argv[i]);
            if (!infile) {
                // If the file is invalid, get the path.
                char path[PATH_MAX];
                ssize_t count = readlink("/proc/self/exe", path, PATH_MAX);
                if (count != -1) {
                    // Then output error message.
                    path[count] = '\0';
                    std::cerr << path << ": " << argv[i] << ": No such file or directory" << std::endl;
                } 
                else {
                    // Extra check to prevent strange behavior, this should not occur.
                    std::cerr << "Error reading symbolic link" << std::endl;
                }
            } 
            else {
                // Otherwise if the files are valid, output the lines, words, and bytes.
                valid_file_found = true;
                count_lines_words_bytes(infile, argv[i], total_lines, total_words, total_bytes);
                infile.close();
            }
        }
    }

    // Extra checks to format output properly in the case of multiple input files based on if there is an invalid file or not.
    if (multiple_files && valid_file_found) {
        std::cout << total_lines << " " << total_words << " " << total_bytes << " total" << std::endl;
    }
    else if (multiple_files && valid_file_found == false) {
        std::cout << total_lines << " " << total_words << " " << total_bytes << " total" << std::endl;
    }

    return 0;
}