#include <stdio.h>
#include <stdlib.h>

/*
    this is the main function. It takes in the command line arguments.
*/
int main(int argc, char *argv[]) {
    for (int i = 1; i < argc; i++) {
        printf("%s\n", argv[i]);
    }

}