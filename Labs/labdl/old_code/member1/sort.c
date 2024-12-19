#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>



// Inline function to swap two strings
//Ussing inline
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
 
                free(buffer); // KL added free of buffer on error
 
                exit(EXIT_FAILURE);
            }
        }
        
        //buffer[strcspn(buffer, "\n")] = '\0';
        // KL - replaced above line with extra error handeling below
        size_t position = strcspn(buffer, "\n");
        if(position < strlen(buffer)){
            buffer[position] = '\0';
        } else{
            perror("Unable to terminate string");
            free(buffer);
            exit(EXIT_FAILURE);
        }
        
        words[size] = strdup(buffer);
        if (words[size] == NULL) {
            perror("Unable to duplicate string");

            // KL - added loop to free words & buffer on error
            for (size_t i = 0; i < size-1; i++) {
                printf("%s\n", words[i]);
                free(words[i]);
            }
            free(words);
            free(buffer);
            // KL - end changes

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