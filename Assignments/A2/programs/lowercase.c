#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

// This function reads in data from stdin, and goes character by character
// converting them to lowercase.
char* tolowercase(char* result) {
    // Check if the input text is valid
    if (result == NULL) {
        return NULL;
    }

    // Iterate through each character in the string
    for (char* p = result; *p != '\0'; p++) {
        // Convert the character to lowercase
        *p = tolower((unsigned char)*p);
    }

    // Return the modified string
    return result;
}

//These are just taking the data srom stdin and writing it to stdout.
int main() {
    // creates a 1024 byte buffer to store data, will this be enough memory to store data?
    char buffer[1024];

    // Read data from stdin and write it to stdout (standard output)
    while (fgets(buffer, sizeof(buffer), stdin) != NULL) {
        char* result = tolowercase(buffer);
        // pass data from the buffer to a function to process the data
        fputs(result, stdout);
    }

    return 0;
}