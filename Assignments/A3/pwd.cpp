#include <iostream>
#include <unistd.h>
#include <limits.h>
#include <cstring>

// Function to print out the current/working directory.
int main() {
    // Get the file path for the output.
    char cwd[PATH_MAX];
    if (getcwd(cwd, sizeof(cwd)) != nullptr) {
        // Print out the file path if it's valid.
        std::cout << cwd << std::endl;
    } 
    else {
        // Get the file path for the output.
        char path[PATH_MAX];
        ssize_t count = readlink("/proc/self/exe", path, PATH_MAX);
        if (count != -1) {
            // Print out the invalid file path.
            path[count] = '\0';
            std::cerr << path << ": error: No such file or directory" << std::endl;
        }
        return 1;
    }
    return 0;
}