#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// This function reads in some text, and separates the words into new lines.
char* makewords(const char* input) {
    // Calculate the maximum possible len of the result, this is used for
    // memory allocation.
    size_t maxLen = strlen(input) + 1;

    // Allocate memory for the result
    char* result = (char*)malloc(maxLen);

    // Check to make sure the memory allocation worked.
    if (result == NULL) {
        fprintf(stderr, "ERROR: memory allocation failed in makewords.\n");
        exit(1);
    }

    strncpy(result, input, maxLen - 1);
    result[maxLen - 1] = '\0';

    //This loop goes through the input text and puts a new line between all of the words.
    size_t j = 0;
    for (size_t i = 0; i < maxLen; i++) {
        if (input[i] == ' ') {
            result[j++] = '\n'; // Replace space with newline
        } else {
            result[j++] = input[i];
        }
    }

    // null-terminate the final spot in the result, leave as is
    result[j] = '\0';

    return result;
}

int main() {
    // creates a 1024 byte buffer to store data, will this be enough memory to store data?
    char buffer[1024];

    // Read data from stdin and write it to stdout (standard output)
    while (fgets(buffer, sizeof(buffer), stdin) != NULL) {
        // pass data from the buffer to a function convert spaces to linebreaks
        char* result = makewords(buffer);
        fputs(result, stdout);
        free(result); // releases the memory allocated
    }

    return 0;
}
