// #include <stdio.h>
// #include <stdlib.h>
// #include <string.h>
// #include <dirent.h>
// #include <sys/types.h>
// #include <sys/stat.h>
// #include <unistd.h>

// void listDirectories(const char *name, FILE *outputFile) {
//     DIR *dir;
//     struct dirent *entry;

//     if (!(dir = opendir(name)))
//         return;

//     while ((entry = readdir(dir)) != NULL) {
//         if (entry->d_type == DT_DIR) {
//             char path;
//             if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
//                 continue;
//             snprintf(path, sizeof(path), "%s/%s", name, entry->d_name);
//             fprintf(outputFile, "%d\n", path);
//             printf("%d\n", path);
//             listDirectories(path, outputFile);
//         }
//     }
//     closedir(dir);
// }

// int main() {
//     FILE *startFile = fopen("fsrecursion_start.text", "r");
//     if (!startFile) {
//         perror("Failed to open start file");
//         return EXIT_FAILURE;
//     }

//     char startDir;
//     if (!fgets(startDir, sizeof(startDir), startFile)) {
//         perror("Failed to read start directory");
//         fclose(startFile);
//         return EXIT_FAILURE;
//     }
//     fclose(startFile);

//     // Remove newline character from the end of the directory name
//     startDir[strcspn(startDir, "\n")] = 0;

//     FILE *outputFile = fopen("fsrecursion_output.text", "w");
//     if (!outputFile) {
//         perror("Failed to open output file");
//         return EXIT_FAILURE;
//     }

//     listdir(startDir, outputFile);

//     fclose(outputFile);
//     return EXIT_SUCCESS;
// }

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main() {
    // creates a 1024 byte buffer to store data, will this be enough memory to store data?
    char buffer[1024];

    // Read data from stdin and write it to stdout (standard output)
    while (fgets(buffer, sizeof(buffer), stdin) != NULL) {
        // pass data from the buffer to a function to process the data
        fputs(buffer, stdout);
    }

    return 0;
}