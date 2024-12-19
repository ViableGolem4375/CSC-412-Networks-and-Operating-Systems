#include <iostream>
#include <fstream>
#include <string>
#include <deque>

// Function to print out the last 10 lines of files.
void print_last_10_lines(std::istream& input, const std::string& filename = "", bool multiple_files = false) {
    std::deque<std::string> lines;
    std::string line;
    // Read the first 10 lines.
    while (std::getline(input, line)) {
        if (lines.size() == 10) {
            lines.pop_front();
        }
        lines.push_back(line);
    }
    // Check to see if the filenames are empty before reading them for output.
    if (multiple_files && !filename.empty()) {
        std::cout << "==> " << filename << " <==" << std::endl;
    }
    for (const auto& l : lines) {
        std::cout << l << std::endl;
    }
}

int main(int argc, char* argv[]) {
    if (argc == 1) {
        // No files provided, read from stdin
        print_last_10_lines(std::cin);
    } 
    else {
        bool multiple_files = (argc > 2);
        bool valid_file_found = false;
        // Files provided, read the files via this for loop until no files remain.
        for (int i = 1; i < argc; ++i) {
            std::ifstream infile(argv[i]);
            if (!infile) {
                // Error message for if the file couldn't be opened.
                std::cerr << "tail: cannot open '" << argv[i] << "' for reading: No such file or directory" << std::endl;
            } 
            else {
                // If the file opened correctly, output the lines.
                valid_file_found = true;
                print_last_10_lines(infile, argv[i], multiple_files);
                infile.close();
                if (multiple_files && i < argc - 1) {
                    std::cout << std::endl; // Add a blank line between files
                }
            }
        }
        // If no valid files were found, read from stdin
        if (!valid_file_found) {
            print_last_10_lines(std::cin);
        }
    }
    return 0;
}