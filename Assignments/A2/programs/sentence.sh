#! /usr/bin/env bash

# Function to read in a file called unix_sentence.text

filename="unix_sentence.text"

# Check if the file exists
if [[ ! -f "$filename" ]]; then
    echo "File not found!"
    exit 1
fi

# Read all lines into an array
mapfile -t lines < "$filename"

# Print each line with a newline except for the last one
for ((i = 0; i < ${#lines[@]}; i++)); do
    if (( i < ${#lines[@]} - 1 )); then
        printf "%s\n" "${lines[i]}"
    else
        printf "%s" "${lines[i]}"
    fi
done