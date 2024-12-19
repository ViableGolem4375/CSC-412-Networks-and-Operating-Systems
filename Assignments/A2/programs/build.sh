#! /usr/bin/env bash

### compile all c code in the current directory

### Hints:
### how do you get the current directory in bash?
### how do you store the output of variables in bash?

# Get the full directory path
DIR=$(pwd)
TEST="fio"

# Find all C files in the directory
C_FILES=$(find "$DIR" -maxdepth 1 -name "*.c")

# Check if there are no C files
if [ -z "$C_FILES" ]; then
    echo "Oops, we found no C code in the directory: $DIR" >&2
    exit 1
fi

# Compile each C file
for FILE in $C_FILES; do
    # Extract the filename without extension
    FILENAME=$(basename "$FILE" .c)
    
    # Compile the C file
     gcc -o "$FILENAME" "$FILE" ../$TEST/$TEST.c

done