#include "../fio/fio.h"
#include <stdio.h>
#include <stdlib.h>

// Function to read in a file called unix_sentence.text
int main() { 
    FILE *file;
    char filename[] = "unix_sentence.text"; 
    char buffer[1024]; // buffer to store data

    // open the file using the local fio library
    file = openFile(filename);

    // Read and print the contents of the file
    while (fgets(buffer, sizeof(buffer), file) != NULL) {
        // put file contents (buffer) into stdout
        fputs(buffer, stdout);
    }

    // Close the file
    fclose(file);

    return 0;
}