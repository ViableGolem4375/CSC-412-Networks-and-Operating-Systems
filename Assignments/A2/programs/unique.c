#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdbool.h>

// // Function to remove duplicate words
// void removedupes(char *words[], int count, char *result[]) {
//     // Looping logic to traverse the array.
//     int unique_count = 0;
//     for (int i = 0; i < count; i++) {
//         int is_duplicate = 0;
//         for (int j = 0; j < unique_count; j++) {
//             if (strcmp(words[i], result[j]) == 0) {
//                 is_duplicate = 1;
//                 break;
//             }
//         }
//         if (!is_duplicate) {
//             result[unique_count] = words[i];
//             unique_count++;
//         }
//     }
//     result[unique_count] = NULL; // Mark the end of the unique words
// }

// int main() {
//     char *words[100];
//     char buffer[100];
//     int count = 0;

//     // Read words from standard input
//     while (scanf("%99s", buffer) != EOF) {
//         words[count] = strdup(buffer);
//         count++;
//     }

//     // Array to store unique words
//     char *unique_words[100];

//     // Remove duplicates
//     removedupes(words, count, unique_words);

//     // Print the unique words
//     for (int i = 0; unique_words[i] != NULL; i++) {
//         printf("%s\n", unique_words[i]);
//         free(unique_words[i]); // Free the duplicated strings from memory
//     }

//     return 0;
// }

// Hash function for strings
unsigned long hash(char *str) {
    unsigned long hash = 5381;
    int c;
    while ((c = *str++))
        hash = ((hash << 5) + hash) + c; // hash * 33 + c
    return hash;
}

// Function to remove duplicate words using a hash set
void removedupes(char *words[], int count, char *result[], int *unique_count) {
    unsigned long *hash_set = calloc(count, sizeof(unsigned long));
    if (hash_set == NULL) {
        perror("Unable to allocate memory for hash set");
        exit(EXIT_FAILURE);
    }

    *unique_count = 0;
    for (int i = 0; i < count; i++) {
        unsigned long word_hash = hash(words[i]);
        bool is_duplicate = false;
        for (int j = 0; j < *unique_count; j++) {
            if (hash_set[j] == word_hash && strcmp(words[i], result[j]) == 0) {
                is_duplicate = true;
                break;
            }
        }
        if (!is_duplicate) {
            result[*unique_count] = words[i];
            hash_set[*unique_count] = word_hash;
            (*unique_count)++;
        }
    }
    free(hash_set);
    result[*unique_count] = NULL; // Mark the end of the unique words
}

int main() {
    char **words = NULL;
    size_t size = 0;
    size_t capacity = 100; // Start with a larger capacity
    char *buffer = NULL;
    size_t bufsize = 0;

    words = malloc(capacity * sizeof(char*));
    if (words == NULL) {
        perror("Unable to allocate memory");
        exit(EXIT_FAILURE);
    }

    // Read words from standard input
    while (getline(&buffer, &bufsize, stdin) != -1) {
        if (size >= capacity) {
            capacity *= 2;
            words = realloc(words, capacity * sizeof(char*));
            if (words == NULL) {
                perror("Unable to reallocate memory");
                exit(EXIT_FAILURE);
            }
        }
        buffer[strcspn(buffer, "\n")] = '\0'; // Remove newline character
        words[size] = strdup(buffer);
        if (words[size] == NULL) {
            perror("Unable to duplicate string");
            exit(EXIT_FAILURE);
        }
        size++;
    }
    free(buffer);

    // Array to store unique words
    char **unique_words = malloc(size * sizeof(char*));
    if (unique_words == NULL) {
        perror("Unable to allocate memory for unique words");
        exit(EXIT_FAILURE);
    }

    int unique_count;
    // Remove duplicates
    removedupes(words, size, unique_words, &unique_count);

    // Print the unique words
    for (int i = 0; i < unique_count; i++) {
        printf("%s\n", unique_words[i]);
        free(unique_words[i]); // Free the duplicated strings from memory
    }
    free(unique_words);
    free(words);

    return 0;
}