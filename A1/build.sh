#! /usr/bin/env bash

# build the test program revtest
build() {
    gcc -Wall -Werror revtest.c reverse.c -o revtest
}

# TODO: call the build function 
# (HINT: lookup how to call bash functions)
build

# TODO: run the revtest program with all arguments passed
    # ./build.sh 2 hello world 
### would be the same as 
    # ./revtest 2 hello world
# if [ $# -lt 1 ]; then
#     echo "Usage: $0 <arguments>"
#     exit 1
# fi

# Statement to run the program.
./revtest "$@"
