#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

// Function to swap two strings
// This is a helper function used within the functions below.
// void swap(char** a, char** b) {
//     char* temp = *a;
//     *a = *b;
//     *b = temp;
// }

// // Function to partition the array for quicksort
// int partition(char *array[], int low, int high) {
//     char* pivot = array[high];
//     int i = low - 1;

//     // For loop to create the partitions.
//     for (int j = low; j < high; j++) {
//         if (strcmp(array[j], pivot) < 0) {
//             i++;
//             swap(&array[i], &array[j]);
//         }
//     }

//     // swap called here
//     swap(&array[i + 1], &array[high]);
//     return i + 1;
// }

// // Function to perform quicksort on an array of strings
// void quick_sort(char *array[], int low, int high) {
//     if (low < high) {
//         int pi = partition(array, low, high);
//         quick_sort(array, low, pi - 1);
//         quick_sort(array, pi + 1, high);
//     }
// }

// // Function to sort words from a buffer
// char* sortwords(char *buffer) {
//     char *words[100];
//     int count = 0;
//     char *token = strtok(buffer, " \n");

//     // Tokenize the input buffer into words
//     while (token != NULL) {
//         words[count] = strdup(token);
//         count++;
//         token = strtok(NULL, " \n");
//     }

//     quick_sort(words, 0, count - 1);

//     // Create a result buffer to store the sorted words
//     static char result[1024];
//     result[0] = '\0'; // Initialize the result buffer

//     // Concatenate sorted words into the result buffer
//     for (int i = 0; i < count; i++) {
//         strcat(result, words[i]);
//         strcat(result, "\n");
//         free(words[i]);
//     }

//     return result;
// }

// int main() {
//     // Declare the words array.
//     char *words[100];
//     char buffer[100];
//     int count = 0;

//     // Read words from standard input
//     while (scanf("%99s", buffer) != EOF) {
//         words[count] = strdup(buffer);
//         count++;
//     }

//     // Sort the words using bubble sort
//     quick_sort(words, 0, count - 1);

//     // Print the sorted words
//     for (int i = 0; i < count; i++) {
//         printf("%s\n", words[i]);
//         free(words[i]);
//     }

//     return 0;
// }

// Inline function to swap two strings
static inline void swap(char** a, char** b) {
    char* temp = *a;
    *a = *b;
    *b = temp;
}

// Function to partition the array for quicksort
int partition(char *array[], int low, int high) {
    char* pivot = array[high];
    int i = low - 1;

    for (int j = low; j < high; j++) {
        if (strcmp(array[j], pivot) < 0) {
            i++;
            swap(&array[i], &array[j]);
        }
    }
    swap(&array[i + 1], &array[high]);
    return i + 1;
}

// Function to perform quicksort on an array of strings
void quick_sort(char *array[], int low, int high) {
    if (low < high) {
        int pi = partition(array, low, high);
        quick_sort(array, low, pi - 1);
        quick_sort(array, pi + 1, high);
    }
}

int main() {
    char **words = NULL;
    size_t size = 0;
    size_t capacity = 100;  // Start with a larger capacity
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

    // Sort the words using quicksort
    quick_sort(words, 0, size - 1);

    // Print the sorted words
    for (size_t i = 0; i < size; i++) {
        printf("%s\n", words[i]);
        free(words[i]);
    }
    free(words);

    return 0;
}