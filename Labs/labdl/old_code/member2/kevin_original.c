#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Function converts spaces in the input string to newline characters.
// Input: The input string containing spaces to be converted.
// Returns: A new string with spaces replaced by newline characters.
char* makewords(const char* input) {
    // Calculate the maximum possible length of the result
    // The length of the input string plus one for the null terminator
    size_t maxLen = strlen(input) + 1;

    // Allocate memory for the result string
    char* result = (char*)malloc(maxLen);
    // Check if memory allocation was successful
    if (result == NULL) {
        // If memory allocation fails, print an error message and exit
        fprintf(stderr, "ERROR: memory allocation failed in makewords for result.\n");
        exit(1);
    }

    int i = 0; // Index for input string
    int j = 0; // Index for result string

    // Go through the input string until, we reach the null terminator
    while (input[i] != '\0') {
        // If there's a space, replace it with a newline character in the result
        if (input[i] == ' ') {
            result[j++] = '\n';
            i++;
        } else {
            // Otherwise, copy the character from input to result
            result[j++] = input[i++];
        }
    }

    // Null-terminate the result string
    result[j] = '\0';

    // Return the result string
    return result;
}

int main() {
    // Create a 1024 byte buffer to store data read from stdin
    // This buffer size should be sufficient for most input cases
    char buffer[1024];

    // Read data from stdin and write it to stdout (standard output)
    while (fgets(buffer, sizeof(buffer), stdin) != NULL) {
        // pass data from the buffer to a function convert spaces to linebreaks
        // call makewords to convert spaces to newlines
        char* result = makewords(buffer); 
        // output the result to stdout
        fputs(result, stdout);
        free(result); // releases the memory allocated for result
    }

    //we don't close the file
    return 0;
}