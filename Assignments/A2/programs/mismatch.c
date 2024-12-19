#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "../fio/fio.h"

#define BUFFER_SIZE 1024

// Function to read the dictionary file and store words in an array
char** read_dict(int* word_count) {
    // Read in the file.
    FILE *file;
    char filename[] = "unix_dict.text"; 
    file = openFile(filename);

    // Check to make sure the file actually exists.
    if (!file) {
        perror("Failed to open file");
        exit(EXIT_FAILURE);
    }

    char** dict = NULL;
    char buffer[BUFFER_SIZE];
    *word_count = 0;

    // This logic here populates an array with the contents of the dictionary file.
    while (fgets(buffer, sizeof(buffer), file)) {
        buffer[strcspn(buffer, "\n")] = '\0'; // Remove newline character
        dict = realloc(dict, (*word_count + 1) * sizeof(char*));
        dict[*word_count] = strdup(buffer);
        (*word_count)++;
    }

    fclose(file);
    return dict;
}

// Function to check if a word is in the dictionary
int is_in_dict(char** dict, int word_count, const char* word) {
    for (int i = 0; i < word_count; i++) {
        if (strcmp(dict[i], word) == 0) {
            return 1;
        }
    }
    return 0;
}

// Function to check if all words in a string are in the dictionary
int are_all_words_in_dict(char** dict, int word_count, const char* sentence) {
    char* buffer = strdup(sentence);
    char* word = strtok(buffer, " ");
    while (word != NULL) {
        if (!is_in_dict(dict, word_count, word)) {
            free(buffer);
            return 0;
        }
        word = strtok(NULL, " ");
    }
    free(buffer);
    return 1;
}

int main() {
    int word_count;
    char** dict = read_dict(&word_count);
    // creates a 1024 byte buffer to store data, will this be enough memory to store data?
    char buffer[1024];

    // Read data from stdin and write it to stdout (standard output)
    while (fgets(buffer, sizeof(buffer), stdin) != NULL) {
        // pass data from the buffer to a function to process the data
        //fputs(buffer, stdout);
        buffer[strcspn(buffer, "\n")] = '\0'; // Remove newline character
        if (!are_all_words_in_dict(dict, word_count, buffer)) {
            fputs(buffer, stdout);
            fputs("\n", stdout); // Add newline for better readability
        }
    }

    // Free allocated memory
    for (int i = 0; i < word_count; i++) {
        free(dict[i]);
    }
    free(dict);

    return 0;
}