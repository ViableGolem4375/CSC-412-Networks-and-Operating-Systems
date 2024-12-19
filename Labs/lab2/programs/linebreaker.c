#include <stdio.h>
#include <stdlib.h>
#include <string.h>

char* linebreaker(const char* input) {
    // calculate the maximum possible len of the result
    size_t maxLen = strlen(input) + 1;

    char* result = (char*)malloc(maxLen); // allocate memory for the result
    if (result == NULL) {
        fprintf(stderr, "ERROR: memory allocation failed in linebreaker.\n");
        exit(1);
    }

    /* This should be completely replaced in your assignment */
    /* This will make it so linebreaker just returns the input untouched */
    //putchar('\n');
    // TODO: is strcpy a safe function to use here? 
    // research a different "safe" function to use
    strncpy(result, input, maxLen - 1);
    result[maxLen - 1] = '\0';
    /********************************************************/

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
        char* result = linebreaker(buffer);
        fputs(result, stdout);
        free(result); // releases the memory allocated
    }

    return 0;
}