#include <stdio.h>
#include "fio.h"

// open an existing file for reading
FILE* openFile(const char* filename) {
    FILE* file = fopen(filename, "r");
    if (file == NULL) {
        perror("Error opening file");
    }
    return file;
}

/* implement the two function below */

// create a new file for writing
FILE* createFile(const char* filename) { 
    // Open the file for writing (this will create the file if it doesn't exist)
    FILE* file = fopen(filename, "w");
    
    // Check if the file was created successfully
    if (file == NULL) {
        // If the file couldn't be created, print an error message
        perror("Error creating file");
        return NULL;
    }
    
    // Return the file pointer
    return file;
}

// write data to an open file
void writeToFile(FILE* file, const char* data) { 
    // Check if the file pointer and data are valid
    if (file == NULL || data == NULL) {
        perror("Invalid file pointer or data");
        return;
    }
    
    // Write the data to the file
    if (fprintf(file, "%s", data) < 0) {
        perror("Error writing to file");
    }
}
